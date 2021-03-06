=begin
#BitMEX API

### REST API for the BitMEX Trading Platform  [Changelog](/app/apiChangelog)  ----  #### Getting Started   ##### Fetching Data  All REST endpoints are documented below. You can try out any query right from this interface.  Most table queries accept `count`, `start`, and `reverse` params. Set `reverse=true` to get rows newest-first.  Additional documentation regarding filters, timestamps, and authentication is available in [the main API documentation](https://www.bitmex.com/app/restAPI).  *All* table data is available via the [Websocket](/app/wsAPI). We highly recommend using the socket if you want to have the quickest possible data without being subject to ratelimits.  ##### Return Types  By default, all data is returned as JSON. Send `?_format=csv` to get CSV data or `?_format=xml` to get XML data.  ##### Trade Data Queries  *This is only a small subset of what is available, to get you started.*  Fill in the parameters and click the `Try it out!` button to try any of these queries.  * [Pricing Data](#!/Quote/Quote_get)  * [Trade Data](#!/Trade/Trade_get)  * [OrderBook Data](#!/OrderBook/OrderBook_getL2)  * [Settlement Data](#!/Settlement/Settlement_get)  * [Exchange Statistics](#!/Stats/Stats_history)  Every function of the BitMEX.com platform is exposed here and documented. Many more functions are available.  ---  ## All API Endpoints  Click to expand a section. 

OpenAPI spec version: 1.2.0
Contact: support@bitmex.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwaggerClient

  class Position
    attr_accessor :account

    attr_accessor :symbol

    attr_accessor :currency

    attr_accessor :underlying

    attr_accessor :quote_currency

    attr_accessor :commission

    attr_accessor :init_margin_req

    attr_accessor :maint_margin_req

    attr_accessor :risk_limit

    attr_accessor :leverage

    attr_accessor :cross_margin

    attr_accessor :deleverage_percentile

    attr_accessor :rebalanced_pnl

    attr_accessor :prev_realised_pnl

    attr_accessor :prev_unrealised_pnl

    attr_accessor :prev_close_price

    attr_accessor :opening_timestamp

    attr_accessor :opening_qty

    attr_accessor :opening_cost

    attr_accessor :opening_comm

    attr_accessor :open_order_buy_qty

    attr_accessor :open_order_buy_cost

    attr_accessor :open_order_buy_premium

    attr_accessor :open_order_sell_qty

    attr_accessor :open_order_sell_cost

    attr_accessor :open_order_sell_premium

    attr_accessor :exec_buy_qty

    attr_accessor :exec_buy_cost

    attr_accessor :exec_sell_qty

    attr_accessor :exec_sell_cost

    attr_accessor :exec_qty

    attr_accessor :exec_cost

    attr_accessor :exec_comm

    attr_accessor :current_timestamp

    attr_accessor :current_qty

    attr_accessor :current_cost

    attr_accessor :current_comm

    attr_accessor :realised_cost

    attr_accessor :unrealised_cost

    attr_accessor :gross_open_cost

    attr_accessor :gross_open_premium

    attr_accessor :gross_exec_cost

    attr_accessor :is_open

    attr_accessor :mark_price

    attr_accessor :mark_value

    attr_accessor :risk_value

    attr_accessor :home_notional

    attr_accessor :foreign_notional

    attr_accessor :pos_state

    attr_accessor :pos_cost

    attr_accessor :pos_cost2

    attr_accessor :pos_cross

    attr_accessor :pos_init

    attr_accessor :pos_comm

    attr_accessor :pos_loss

    attr_accessor :pos_margin

    attr_accessor :pos_maint

    attr_accessor :pos_allowance

    attr_accessor :taxable_margin

    attr_accessor :init_margin

    attr_accessor :maint_margin

    attr_accessor :session_margin

    attr_accessor :target_excess_margin

    attr_accessor :var_margin

    attr_accessor :realised_gross_pnl

    attr_accessor :realised_tax

    attr_accessor :realised_pnl

    attr_accessor :unrealised_gross_pnl

    attr_accessor :long_bankrupt

    attr_accessor :short_bankrupt

    attr_accessor :tax_base

    attr_accessor :indicative_tax_rate

    attr_accessor :indicative_tax

    attr_accessor :unrealised_tax

    attr_accessor :unrealised_pnl

    attr_accessor :unrealised_pnl_pcnt

    attr_accessor :unrealised_roe_pcnt

    attr_accessor :simple_qty

    attr_accessor :simple_cost

    attr_accessor :simple_value

    attr_accessor :simple_pnl

    attr_accessor :simple_pnl_pcnt

    attr_accessor :avg_cost_price

    attr_accessor :avg_entry_price

    attr_accessor :break_even_price

    attr_accessor :margin_call_price

    attr_accessor :liquidation_price

    attr_accessor :bankrupt_price

    attr_accessor :timestamp

    attr_accessor :last_price

    attr_accessor :last_value


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'symbol' => :'symbol',
        :'currency' => :'currency',
        :'underlying' => :'underlying',
        :'quote_currency' => :'quoteCurrency',
        :'commission' => :'commission',
        :'init_margin_req' => :'initMarginReq',
        :'maint_margin_req' => :'maintMarginReq',
        :'risk_limit' => :'riskLimit',
        :'leverage' => :'leverage',
        :'cross_margin' => :'crossMargin',
        :'deleverage_percentile' => :'deleveragePercentile',
        :'rebalanced_pnl' => :'rebalancedPnl',
        :'prev_realised_pnl' => :'prevRealisedPnl',
        :'prev_unrealised_pnl' => :'prevUnrealisedPnl',
        :'prev_close_price' => :'prevClosePrice',
        :'opening_timestamp' => :'openingTimestamp',
        :'opening_qty' => :'openingQty',
        :'opening_cost' => :'openingCost',
        :'opening_comm' => :'openingComm',
        :'open_order_buy_qty' => :'openOrderBuyQty',
        :'open_order_buy_cost' => :'openOrderBuyCost',
        :'open_order_buy_premium' => :'openOrderBuyPremium',
        :'open_order_sell_qty' => :'openOrderSellQty',
        :'open_order_sell_cost' => :'openOrderSellCost',
        :'open_order_sell_premium' => :'openOrderSellPremium',
        :'exec_buy_qty' => :'execBuyQty',
        :'exec_buy_cost' => :'execBuyCost',
        :'exec_sell_qty' => :'execSellQty',
        :'exec_sell_cost' => :'execSellCost',
        :'exec_qty' => :'execQty',
        :'exec_cost' => :'execCost',
        :'exec_comm' => :'execComm',
        :'current_timestamp' => :'currentTimestamp',
        :'current_qty' => :'currentQty',
        :'current_cost' => :'currentCost',
        :'current_comm' => :'currentComm',
        :'realised_cost' => :'realisedCost',
        :'unrealised_cost' => :'unrealisedCost',
        :'gross_open_cost' => :'grossOpenCost',
        :'gross_open_premium' => :'grossOpenPremium',
        :'gross_exec_cost' => :'grossExecCost',
        :'is_open' => :'isOpen',
        :'mark_price' => :'markPrice',
        :'mark_value' => :'markValue',
        :'risk_value' => :'riskValue',
        :'home_notional' => :'homeNotional',
        :'foreign_notional' => :'foreignNotional',
        :'pos_state' => :'posState',
        :'pos_cost' => :'posCost',
        :'pos_cost2' => :'posCost2',
        :'pos_cross' => :'posCross',
        :'pos_init' => :'posInit',
        :'pos_comm' => :'posComm',
        :'pos_loss' => :'posLoss',
        :'pos_margin' => :'posMargin',
        :'pos_maint' => :'posMaint',
        :'pos_allowance' => :'posAllowance',
        :'taxable_margin' => :'taxableMargin',
        :'init_margin' => :'initMargin',
        :'maint_margin' => :'maintMargin',
        :'session_margin' => :'sessionMargin',
        :'target_excess_margin' => :'targetExcessMargin',
        :'var_margin' => :'varMargin',
        :'realised_gross_pnl' => :'realisedGrossPnl',
        :'realised_tax' => :'realisedTax',
        :'realised_pnl' => :'realisedPnl',
        :'unrealised_gross_pnl' => :'unrealisedGrossPnl',
        :'long_bankrupt' => :'longBankrupt',
        :'short_bankrupt' => :'shortBankrupt',
        :'tax_base' => :'taxBase',
        :'indicative_tax_rate' => :'indicativeTaxRate',
        :'indicative_tax' => :'indicativeTax',
        :'unrealised_tax' => :'unrealisedTax',
        :'unrealised_pnl' => :'unrealisedPnl',
        :'unrealised_pnl_pcnt' => :'unrealisedPnlPcnt',
        :'unrealised_roe_pcnt' => :'unrealisedRoePcnt',
        :'simple_qty' => :'simpleQty',
        :'simple_cost' => :'simpleCost',
        :'simple_value' => :'simpleValue',
        :'simple_pnl' => :'simplePnl',
        :'simple_pnl_pcnt' => :'simplePnlPcnt',
        :'avg_cost_price' => :'avgCostPrice',
        :'avg_entry_price' => :'avgEntryPrice',
        :'break_even_price' => :'breakEvenPrice',
        :'margin_call_price' => :'marginCallPrice',
        :'liquidation_price' => :'liquidationPrice',
        :'bankrupt_price' => :'bankruptPrice',
        :'timestamp' => :'timestamp',
        :'last_price' => :'lastPrice',
        :'last_value' => :'lastValue'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'Float',
        :'symbol' => :'String',
        :'currency' => :'String',
        :'underlying' => :'String',
        :'quote_currency' => :'String',
        :'commission' => :'Float',
        :'init_margin_req' => :'Float',
        :'maint_margin_req' => :'Float',
        :'risk_limit' => :'Float',
        :'leverage' => :'Float',
        :'cross_margin' => :'BOOLEAN',
        :'deleverage_percentile' => :'Float',
        :'rebalanced_pnl' => :'Float',
        :'prev_realised_pnl' => :'Float',
        :'prev_unrealised_pnl' => :'Float',
        :'prev_close_price' => :'Float',
        :'opening_timestamp' => :'Date',
        :'opening_qty' => :'Float',
        :'opening_cost' => :'Float',
        :'opening_comm' => :'Float',
        :'open_order_buy_qty' => :'Float',
        :'open_order_buy_cost' => :'Float',
        :'open_order_buy_premium' => :'Float',
        :'open_order_sell_qty' => :'Float',
        :'open_order_sell_cost' => :'Float',
        :'open_order_sell_premium' => :'Float',
        :'exec_buy_qty' => :'Float',
        :'exec_buy_cost' => :'Float',
        :'exec_sell_qty' => :'Float',
        :'exec_sell_cost' => :'Float',
        :'exec_qty' => :'Float',
        :'exec_cost' => :'Float',
        :'exec_comm' => :'Float',
        :'current_timestamp' => :'Date',
        :'current_qty' => :'Float',
        :'current_cost' => :'Float',
        :'current_comm' => :'Float',
        :'realised_cost' => :'Float',
        :'unrealised_cost' => :'Float',
        :'gross_open_cost' => :'Float',
        :'gross_open_premium' => :'Float',
        :'gross_exec_cost' => :'Float',
        :'is_open' => :'BOOLEAN',
        :'mark_price' => :'Float',
        :'mark_value' => :'Float',
        :'risk_value' => :'Float',
        :'home_notional' => :'Float',
        :'foreign_notional' => :'Float',
        :'pos_state' => :'String',
        :'pos_cost' => :'Float',
        :'pos_cost2' => :'Float',
        :'pos_cross' => :'Float',
        :'pos_init' => :'Float',
        :'pos_comm' => :'Float',
        :'pos_loss' => :'Float',
        :'pos_margin' => :'Float',
        :'pos_maint' => :'Float',
        :'pos_allowance' => :'Float',
        :'taxable_margin' => :'Float',
        :'init_margin' => :'Float',
        :'maint_margin' => :'Float',
        :'session_margin' => :'Float',
        :'target_excess_margin' => :'Float',
        :'var_margin' => :'Float',
        :'realised_gross_pnl' => :'Float',
        :'realised_tax' => :'Float',
        :'realised_pnl' => :'Float',
        :'unrealised_gross_pnl' => :'Float',
        :'long_bankrupt' => :'Float',
        :'short_bankrupt' => :'Float',
        :'tax_base' => :'Float',
        :'indicative_tax_rate' => :'Float',
        :'indicative_tax' => :'Float',
        :'unrealised_tax' => :'Float',
        :'unrealised_pnl' => :'Float',
        :'unrealised_pnl_pcnt' => :'Float',
        :'unrealised_roe_pcnt' => :'Float',
        :'simple_qty' => :'Float',
        :'simple_cost' => :'Float',
        :'simple_value' => :'Float',
        :'simple_pnl' => :'Float',
        :'simple_pnl_pcnt' => :'Float',
        :'avg_cost_price' => :'Float',
        :'avg_entry_price' => :'Float',
        :'break_even_price' => :'Float',
        :'margin_call_price' => :'Float',
        :'liquidation_price' => :'Float',
        :'bankrupt_price' => :'Float',
        :'timestamp' => :'Date',
        :'last_price' => :'Float',
        :'last_value' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'underlying')
        self.underlying = attributes[:'underlying']
      end

      if attributes.has_key?(:'quoteCurrency')
        self.quote_currency = attributes[:'quoteCurrency']
      end

      if attributes.has_key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.has_key?(:'initMarginReq')
        self.init_margin_req = attributes[:'initMarginReq']
      end

      if attributes.has_key?(:'maintMarginReq')
        self.maint_margin_req = attributes[:'maintMarginReq']
      end

      if attributes.has_key?(:'riskLimit')
        self.risk_limit = attributes[:'riskLimit']
      end

      if attributes.has_key?(:'leverage')
        self.leverage = attributes[:'leverage']
      end

      if attributes.has_key?(:'crossMargin')
        self.cross_margin = attributes[:'crossMargin']
      end

      if attributes.has_key?(:'deleveragePercentile')
        self.deleverage_percentile = attributes[:'deleveragePercentile']
      end

      if attributes.has_key?(:'rebalancedPnl')
        self.rebalanced_pnl = attributes[:'rebalancedPnl']
      end

      if attributes.has_key?(:'prevRealisedPnl')
        self.prev_realised_pnl = attributes[:'prevRealisedPnl']
      end

      if attributes.has_key?(:'prevUnrealisedPnl')
        self.prev_unrealised_pnl = attributes[:'prevUnrealisedPnl']
      end

      if attributes.has_key?(:'prevClosePrice')
        self.prev_close_price = attributes[:'prevClosePrice']
      end

      if attributes.has_key?(:'openingTimestamp')
        self.opening_timestamp = attributes[:'openingTimestamp']
      end

      if attributes.has_key?(:'openingQty')
        self.opening_qty = attributes[:'openingQty']
      end

      if attributes.has_key?(:'openingCost')
        self.opening_cost = attributes[:'openingCost']
      end

      if attributes.has_key?(:'openingComm')
        self.opening_comm = attributes[:'openingComm']
      end

      if attributes.has_key?(:'openOrderBuyQty')
        self.open_order_buy_qty = attributes[:'openOrderBuyQty']
      end

      if attributes.has_key?(:'openOrderBuyCost')
        self.open_order_buy_cost = attributes[:'openOrderBuyCost']
      end

      if attributes.has_key?(:'openOrderBuyPremium')
        self.open_order_buy_premium = attributes[:'openOrderBuyPremium']
      end

      if attributes.has_key?(:'openOrderSellQty')
        self.open_order_sell_qty = attributes[:'openOrderSellQty']
      end

      if attributes.has_key?(:'openOrderSellCost')
        self.open_order_sell_cost = attributes[:'openOrderSellCost']
      end

      if attributes.has_key?(:'openOrderSellPremium')
        self.open_order_sell_premium = attributes[:'openOrderSellPremium']
      end

      if attributes.has_key?(:'execBuyQty')
        self.exec_buy_qty = attributes[:'execBuyQty']
      end

      if attributes.has_key?(:'execBuyCost')
        self.exec_buy_cost = attributes[:'execBuyCost']
      end

      if attributes.has_key?(:'execSellQty')
        self.exec_sell_qty = attributes[:'execSellQty']
      end

      if attributes.has_key?(:'execSellCost')
        self.exec_sell_cost = attributes[:'execSellCost']
      end

      if attributes.has_key?(:'execQty')
        self.exec_qty = attributes[:'execQty']
      end

      if attributes.has_key?(:'execCost')
        self.exec_cost = attributes[:'execCost']
      end

      if attributes.has_key?(:'execComm')
        self.exec_comm = attributes[:'execComm']
      end

      if attributes.has_key?(:'currentTimestamp')
        self.current_timestamp = attributes[:'currentTimestamp']
      end

      if attributes.has_key?(:'currentQty')
        self.current_qty = attributes[:'currentQty']
      end

      if attributes.has_key?(:'currentCost')
        self.current_cost = attributes[:'currentCost']
      end

      if attributes.has_key?(:'currentComm')
        self.current_comm = attributes[:'currentComm']
      end

      if attributes.has_key?(:'realisedCost')
        self.realised_cost = attributes[:'realisedCost']
      end

      if attributes.has_key?(:'unrealisedCost')
        self.unrealised_cost = attributes[:'unrealisedCost']
      end

      if attributes.has_key?(:'grossOpenCost')
        self.gross_open_cost = attributes[:'grossOpenCost']
      end

      if attributes.has_key?(:'grossOpenPremium')
        self.gross_open_premium = attributes[:'grossOpenPremium']
      end

      if attributes.has_key?(:'grossExecCost')
        self.gross_exec_cost = attributes[:'grossExecCost']
      end

      if attributes.has_key?(:'isOpen')
        self.is_open = attributes[:'isOpen']
      end

      if attributes.has_key?(:'markPrice')
        self.mark_price = attributes[:'markPrice']
      end

      if attributes.has_key?(:'markValue')
        self.mark_value = attributes[:'markValue']
      end

      if attributes.has_key?(:'riskValue')
        self.risk_value = attributes[:'riskValue']
      end

      if attributes.has_key?(:'homeNotional')
        self.home_notional = attributes[:'homeNotional']
      end

      if attributes.has_key?(:'foreignNotional')
        self.foreign_notional = attributes[:'foreignNotional']
      end

      if attributes.has_key?(:'posState')
        self.pos_state = attributes[:'posState']
      end

      if attributes.has_key?(:'posCost')
        self.pos_cost = attributes[:'posCost']
      end

      if attributes.has_key?(:'posCost2')
        self.pos_cost2 = attributes[:'posCost2']
      end

      if attributes.has_key?(:'posCross')
        self.pos_cross = attributes[:'posCross']
      end

      if attributes.has_key?(:'posInit')
        self.pos_init = attributes[:'posInit']
      end

      if attributes.has_key?(:'posComm')
        self.pos_comm = attributes[:'posComm']
      end

      if attributes.has_key?(:'posLoss')
        self.pos_loss = attributes[:'posLoss']
      end

      if attributes.has_key?(:'posMargin')
        self.pos_margin = attributes[:'posMargin']
      end

      if attributes.has_key?(:'posMaint')
        self.pos_maint = attributes[:'posMaint']
      end

      if attributes.has_key?(:'posAllowance')
        self.pos_allowance = attributes[:'posAllowance']
      end

      if attributes.has_key?(:'taxableMargin')
        self.taxable_margin = attributes[:'taxableMargin']
      end

      if attributes.has_key?(:'initMargin')
        self.init_margin = attributes[:'initMargin']
      end

      if attributes.has_key?(:'maintMargin')
        self.maint_margin = attributes[:'maintMargin']
      end

      if attributes.has_key?(:'sessionMargin')
        self.session_margin = attributes[:'sessionMargin']
      end

      if attributes.has_key?(:'targetExcessMargin')
        self.target_excess_margin = attributes[:'targetExcessMargin']
      end

      if attributes.has_key?(:'varMargin')
        self.var_margin = attributes[:'varMargin']
      end

      if attributes.has_key?(:'realisedGrossPnl')
        self.realised_gross_pnl = attributes[:'realisedGrossPnl']
      end

      if attributes.has_key?(:'realisedTax')
        self.realised_tax = attributes[:'realisedTax']
      end

      if attributes.has_key?(:'realisedPnl')
        self.realised_pnl = attributes[:'realisedPnl']
      end

      if attributes.has_key?(:'unrealisedGrossPnl')
        self.unrealised_gross_pnl = attributes[:'unrealisedGrossPnl']
      end

      if attributes.has_key?(:'longBankrupt')
        self.long_bankrupt = attributes[:'longBankrupt']
      end

      if attributes.has_key?(:'shortBankrupt')
        self.short_bankrupt = attributes[:'shortBankrupt']
      end

      if attributes.has_key?(:'taxBase')
        self.tax_base = attributes[:'taxBase']
      end

      if attributes.has_key?(:'indicativeTaxRate')
        self.indicative_tax_rate = attributes[:'indicativeTaxRate']
      end

      if attributes.has_key?(:'indicativeTax')
        self.indicative_tax = attributes[:'indicativeTax']
      end

      if attributes.has_key?(:'unrealisedTax')
        self.unrealised_tax = attributes[:'unrealisedTax']
      end

      if attributes.has_key?(:'unrealisedPnl')
        self.unrealised_pnl = attributes[:'unrealisedPnl']
      end

      if attributes.has_key?(:'unrealisedPnlPcnt')
        self.unrealised_pnl_pcnt = attributes[:'unrealisedPnlPcnt']
      end

      if attributes.has_key?(:'unrealisedRoePcnt')
        self.unrealised_roe_pcnt = attributes[:'unrealisedRoePcnt']
      end

      if attributes.has_key?(:'simpleQty')
        self.simple_qty = attributes[:'simpleQty']
      end

      if attributes.has_key?(:'simpleCost')
        self.simple_cost = attributes[:'simpleCost']
      end

      if attributes.has_key?(:'simpleValue')
        self.simple_value = attributes[:'simpleValue']
      end

      if attributes.has_key?(:'simplePnl')
        self.simple_pnl = attributes[:'simplePnl']
      end

      if attributes.has_key?(:'simplePnlPcnt')
        self.simple_pnl_pcnt = attributes[:'simplePnlPcnt']
      end

      if attributes.has_key?(:'avgCostPrice')
        self.avg_cost_price = attributes[:'avgCostPrice']
      end

      if attributes.has_key?(:'avgEntryPrice')
        self.avg_entry_price = attributes[:'avgEntryPrice']
      end

      if attributes.has_key?(:'breakEvenPrice')
        self.break_even_price = attributes[:'breakEvenPrice']
      end

      if attributes.has_key?(:'marginCallPrice')
        self.margin_call_price = attributes[:'marginCallPrice']
      end

      if attributes.has_key?(:'liquidationPrice')
        self.liquidation_price = attributes[:'liquidationPrice']
      end

      if attributes.has_key?(:'bankruptPrice')
        self.bankrupt_price = attributes[:'bankruptPrice']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'lastPrice')
        self.last_price = attributes[:'lastPrice']
      end

      if attributes.has_key?(:'lastValue')
        self.last_value = attributes[:'lastValue']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.nil?
      return false if @symbol.nil?
      return false if @currency.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          symbol == o.symbol &&
          currency == o.currency &&
          underlying == o.underlying &&
          quote_currency == o.quote_currency &&
          commission == o.commission &&
          init_margin_req == o.init_margin_req &&
          maint_margin_req == o.maint_margin_req &&
          risk_limit == o.risk_limit &&
          leverage == o.leverage &&
          cross_margin == o.cross_margin &&
          deleverage_percentile == o.deleverage_percentile &&
          rebalanced_pnl == o.rebalanced_pnl &&
          prev_realised_pnl == o.prev_realised_pnl &&
          prev_unrealised_pnl == o.prev_unrealised_pnl &&
          prev_close_price == o.prev_close_price &&
          opening_timestamp == o.opening_timestamp &&
          opening_qty == o.opening_qty &&
          opening_cost == o.opening_cost &&
          opening_comm == o.opening_comm &&
          open_order_buy_qty == o.open_order_buy_qty &&
          open_order_buy_cost == o.open_order_buy_cost &&
          open_order_buy_premium == o.open_order_buy_premium &&
          open_order_sell_qty == o.open_order_sell_qty &&
          open_order_sell_cost == o.open_order_sell_cost &&
          open_order_sell_premium == o.open_order_sell_premium &&
          exec_buy_qty == o.exec_buy_qty &&
          exec_buy_cost == o.exec_buy_cost &&
          exec_sell_qty == o.exec_sell_qty &&
          exec_sell_cost == o.exec_sell_cost &&
          exec_qty == o.exec_qty &&
          exec_cost == o.exec_cost &&
          exec_comm == o.exec_comm &&
          current_timestamp == o.current_timestamp &&
          current_qty == o.current_qty &&
          current_cost == o.current_cost &&
          current_comm == o.current_comm &&
          realised_cost == o.realised_cost &&
          unrealised_cost == o.unrealised_cost &&
          gross_open_cost == o.gross_open_cost &&
          gross_open_premium == o.gross_open_premium &&
          gross_exec_cost == o.gross_exec_cost &&
          is_open == o.is_open &&
          mark_price == o.mark_price &&
          mark_value == o.mark_value &&
          risk_value == o.risk_value &&
          home_notional == o.home_notional &&
          foreign_notional == o.foreign_notional &&
          pos_state == o.pos_state &&
          pos_cost == o.pos_cost &&
          pos_cost2 == o.pos_cost2 &&
          pos_cross == o.pos_cross &&
          pos_init == o.pos_init &&
          pos_comm == o.pos_comm &&
          pos_loss == o.pos_loss &&
          pos_margin == o.pos_margin &&
          pos_maint == o.pos_maint &&
          pos_allowance == o.pos_allowance &&
          taxable_margin == o.taxable_margin &&
          init_margin == o.init_margin &&
          maint_margin == o.maint_margin &&
          session_margin == o.session_margin &&
          target_excess_margin == o.target_excess_margin &&
          var_margin == o.var_margin &&
          realised_gross_pnl == o.realised_gross_pnl &&
          realised_tax == o.realised_tax &&
          realised_pnl == o.realised_pnl &&
          unrealised_gross_pnl == o.unrealised_gross_pnl &&
          long_bankrupt == o.long_bankrupt &&
          short_bankrupt == o.short_bankrupt &&
          tax_base == o.tax_base &&
          indicative_tax_rate == o.indicative_tax_rate &&
          indicative_tax == o.indicative_tax &&
          unrealised_tax == o.unrealised_tax &&
          unrealised_pnl == o.unrealised_pnl &&
          unrealised_pnl_pcnt == o.unrealised_pnl_pcnt &&
          unrealised_roe_pcnt == o.unrealised_roe_pcnt &&
          simple_qty == o.simple_qty &&
          simple_cost == o.simple_cost &&
          simple_value == o.simple_value &&
          simple_pnl == o.simple_pnl &&
          simple_pnl_pcnt == o.simple_pnl_pcnt &&
          avg_cost_price == o.avg_cost_price &&
          avg_entry_price == o.avg_entry_price &&
          break_even_price == o.break_even_price &&
          margin_call_price == o.margin_call_price &&
          liquidation_price == o.liquidation_price &&
          bankrupt_price == o.bankrupt_price &&
          timestamp == o.timestamp &&
          last_price == o.last_price &&
          last_value == o.last_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account, symbol, currency, underlying, quote_currency, commission, init_margin_req, maint_margin_req, risk_limit, leverage, cross_margin, deleverage_percentile, rebalanced_pnl, prev_realised_pnl, prev_unrealised_pnl, prev_close_price, opening_timestamp, opening_qty, opening_cost, opening_comm, open_order_buy_qty, open_order_buy_cost, open_order_buy_premium, open_order_sell_qty, open_order_sell_cost, open_order_sell_premium, exec_buy_qty, exec_buy_cost, exec_sell_qty, exec_sell_cost, exec_qty, exec_cost, exec_comm, current_timestamp, current_qty, current_cost, current_comm, realised_cost, unrealised_cost, gross_open_cost, gross_open_premium, gross_exec_cost, is_open, mark_price, mark_value, risk_value, home_notional, foreign_notional, pos_state, pos_cost, pos_cost2, pos_cross, pos_init, pos_comm, pos_loss, pos_margin, pos_maint, pos_allowance, taxable_margin, init_margin, maint_margin, session_margin, target_excess_margin, var_margin, realised_gross_pnl, realised_tax, realised_pnl, unrealised_gross_pnl, long_bankrupt, short_bankrupt, tax_base, indicative_tax_rate, indicative_tax, unrealised_tax, unrealised_pnl, unrealised_pnl_pcnt, unrealised_roe_pcnt, simple_qty, simple_cost, simple_value, simple_pnl, simple_pnl_pcnt, avg_cost_price, avg_entry_price, break_even_price, margin_call_price, liquidation_price, bankrupt_price, timestamp, last_price, last_value].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
