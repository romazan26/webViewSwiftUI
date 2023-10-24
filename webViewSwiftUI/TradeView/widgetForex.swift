//
//  widgetForex.swift
//  webViewSwiftUI
//
//  Created by Роман on 24.10.2023.
//

import Foundation

enum widgetForex {
    static let htmlString = """
<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container" style="height:100%;width:100%">
  <div id="tradingview_dcc9b" style="height:calc(100% - 32px);width:100%"></div>
  <div class="tradingview-widget-copyright"><a href="https://ru.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Следите за рынками на TradingView</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "BITSTAMP:BTCUSD",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "1",
  "locale": "ru",
  "enable_publishing": false,
  "hide_top_toolbar": true,
  "hide_legend": true,
  "allow_symbol_change": true,
  "save_image": false,
  "container_id": "tradingview_dcc9b"
}
  );
  </script>
</div>
<!-- TradingView Widget END -->
"""
}
