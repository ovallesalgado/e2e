import { Given } from '@cucumber/cucumber'
import {
    navigateToPage,
    currentPathMatchesPageId    
} from '../support/navigation-behavior';
import { PageId } from '../env/global';
import { waitFor } from '../support/wait-for-behavior';

Given(
    /^I am on the "([^"]*)" page$/,
    async function(pageId: PageId) {
        const {
            screen: { page },
            globalVariables,
            globalConfig,
        } = this;

        console.log(`I am on the ${pageId} page`);

        globalVariables.currentScreen = pageId;

        await navigateToPage(page, pageId, globalConfig);

        await waitFor(() => currentPathMatchesPageId(page, pageId, globalConfig));

    }
)