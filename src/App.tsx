import React from "react";
import Livery, { LiveryWebView } from "@exmg/livery-react-native";

const FRONTEND_ORIGIN = "https://client.test.demo.getplaytrivia.com";

export default () => (
  <LiveryWebView
    url={FRONTEND_ORIGIN}
    originWhitelist={[FRONTEND_ORIGIN]}
    style={{ flex: 1 }}
  />
);
