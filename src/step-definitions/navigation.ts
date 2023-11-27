import { Given } from '@cucumber/cucumber'
import { navigateToPage, currentPathMatchesPageId } from '../support/navigation-behavior';
import { PageId } from '../env/global';
import { waitFor } from '../support/wait-for-behavior';
import { ScenarioWorld } from './setup/world';

Given(
    /^I am on the "([^"]*)" page$/,
    async function(pageId: PageId) {
        const {
            screen: { page },
            globalConfig,
        } = this;

        console.log(`I am on the ${pageId} page`);

        await navigateToPage(page, pageId, globalConfig);

        await waitFor(() => currentPathMatchesPageId(page, pageId, globalConfig));

    }
)

Given(
    /^I am directed to the "([^"]*)" page$/,
    async function (this: ScenarioWorld, pageId: PageId) {
        const {
            screen: { page },
            globalConfig,
        } = this;

        console.log(`I am directed to the ${pageId} page`);

        await waitFor(() => currentPathMatchesPageId(page, pageId, globalConfig));
    }
);