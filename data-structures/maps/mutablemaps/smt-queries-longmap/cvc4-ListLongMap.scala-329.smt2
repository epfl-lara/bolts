; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6038 () Bool)

(assert start!6038)

(declare-fun b_free!1439 () Bool)

(declare-fun b_next!1439 () Bool)

(assert (=> start!6038 (= b_free!1439 (not b_next!1439))))

(declare-fun tp!5846 () Bool)

(declare-fun b_and!2537 () Bool)

(assert (=> start!6038 (= tp!5846 b_and!2537)))

(declare-fun b!42019 () Bool)

(declare-fun e!26567 () Bool)

(declare-fun e!26568 () Bool)

(assert (=> b!42019 (= e!26567 (not e!26568))))

(declare-fun res!25021 () Bool)

(assert (=> b!42019 (=> res!25021 e!26568)))

(declare-datatypes ((V!2197 0))(
  ( (V!2198 (val!953 Int)) )
))
(declare-datatypes ((tuple2!1564 0))(
  ( (tuple2!1565 (_1!792 (_ BitVec 64)) (_2!792 V!2197)) )
))
(declare-datatypes ((List!1144 0))(
  ( (Nil!1141) (Cons!1140 (h!1717 tuple2!1564) (t!4087 List!1144)) )
))
(declare-datatypes ((ListLongMap!1145 0))(
  ( (ListLongMap!1146 (toList!588 List!1144)) )
))
(declare-fun lt!17123 () ListLongMap!1145)

(assert (=> b!42019 (= res!25021 (= lt!17123 (ListLongMap!1146 Nil!1141)))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-datatypes ((array!2739 0))(
  ( (array!2740 (arr!1313 (Array (_ BitVec 32) (_ BitVec 64))) (size!1471 (_ BitVec 32))) )
))
(declare-fun lt!17127 () array!2739)

(declare-datatypes ((ValueCell!667 0))(
  ( (ValueCellFull!667 (v!2036 V!2197)) (EmptyCell!667) )
))
(declare-datatypes ((array!2741 0))(
  ( (array!2742 (arr!1314 (Array (_ BitVec 32) ValueCell!667)) (size!1472 (_ BitVec 32))) )
))
(declare-fun lt!17126 () array!2741)

(declare-fun lt!17120 () V!2197)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!314 0))(
  ( (LongMapFixedSize!315 (defaultEntry!1850 Int) (mask!5280 (_ BitVec 32)) (extraKeys!1741 (_ BitVec 32)) (zeroValue!1768 V!2197) (minValue!1768 V!2197) (_size!206 (_ BitVec 32)) (_keys!3363 array!2739) (_values!1833 array!2741) (_vacant!206 (_ BitVec 32))) )
))
(declare-fun map!754 (LongMapFixedSize!314) ListLongMap!1145)

(assert (=> b!42019 (= lt!17123 (map!754 (LongMapFixedSize!315 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17120 lt!17120 #b00000000000000000000000000000000 lt!17127 lt!17126 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1145 0))(
  ( (Nil!1142) (Cons!1141 (h!1718 (_ BitVec 64)) (t!4088 List!1145)) )
))
(declare-fun arrayNoDuplicates!0 (array!2739 (_ BitVec 32) List!1145) Bool)

(assert (=> b!42019 (arrayNoDuplicates!0 lt!17127 #b00000000000000000000000000000000 Nil!1142)))

(declare-datatypes ((Unit!1071 0))(
  ( (Unit!1072) )
))
(declare-fun lt!17125 () Unit!1071)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2739 (_ BitVec 32) (_ BitVec 32) List!1145) Unit!1071)

(assert (=> b!42019 (= lt!17125 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17127 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2739 (_ BitVec 32)) Bool)

(assert (=> b!42019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17127 mask!853)))

(declare-fun lt!17124 () Unit!1071)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2739 (_ BitVec 32) (_ BitVec 32)) Unit!1071)

(assert (=> b!42019 (= lt!17124 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17127 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2739 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42019 (= (arrayCountValidKeys!0 lt!17127 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17121 () Unit!1071)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2739 (_ BitVec 32) (_ BitVec 32)) Unit!1071)

(assert (=> b!42019 (= lt!17121 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17127 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42019 (= lt!17126 (array!2742 ((as const (Array (_ BitVec 32) ValueCell!667)) EmptyCell!667) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42019 (= lt!17127 (array!2740 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!228 (Int (_ BitVec 64)) V!2197)

(assert (=> b!42019 (= lt!17120 (dynLambda!228 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42022 () Bool)

(declare-fun e!26566 () Bool)

(declare-fun lt!17128 () tuple2!1564)

(declare-fun arrayContainsKey!0 (array!2739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42022 (= e!26566 (arrayContainsKey!0 lt!17127 (_1!792 lt!17128) #b00000000000000000000000000000000))))

(declare-fun b!42021 () Bool)

(assert (=> b!42021 (= e!26568 true)))

(assert (=> b!42021 e!26566))

(declare-fun res!25023 () Bool)

(assert (=> b!42021 (=> (not res!25023) (not e!26566))))

(assert (=> b!42021 (= res!25023 (and (not (= (_1!792 lt!17128) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!792 lt!17128) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!17122 () Unit!1071)

(declare-fun lemmaKeyInListMapIsInArray!101 (array!2739 array!2741 (_ BitVec 32) (_ BitVec 32) V!2197 V!2197 (_ BitVec 64) Int) Unit!1071)

(assert (=> b!42021 (= lt!17122 (lemmaKeyInListMapIsInArray!101 lt!17127 lt!17126 mask!853 #b00000000000000000000000000000000 lt!17120 lt!17120 (_1!792 lt!17128) defaultEntry!470))))

(declare-fun head!883 (List!1144) tuple2!1564)

(assert (=> b!42021 (= lt!17128 (head!883 (toList!588 lt!17123)))))

(declare-fun b!42020 () Bool)

(declare-fun res!25022 () Bool)

(assert (=> b!42020 (=> res!25022 e!26568)))

(declare-fun isEmpty!273 (List!1144) Bool)

(assert (=> b!42020 (= res!25022 (isEmpty!273 (toList!588 lt!17123)))))

(declare-fun res!25024 () Bool)

(assert (=> start!6038 (=> (not res!25024) (not e!26567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6038 (= res!25024 (validMask!0 mask!853))))

(assert (=> start!6038 e!26567))

(assert (=> start!6038 true))

(assert (=> start!6038 tp!5846))

(assert (= (and start!6038 res!25024) b!42019))

(assert (= (and b!42019 (not res!25021)) b!42020))

(assert (= (and b!42020 (not res!25022)) b!42021))

(assert (= (and b!42021 res!25023) b!42022))

(declare-fun b_lambda!2189 () Bool)

(assert (=> (not b_lambda!2189) (not b!42019)))

(declare-fun t!4086 () Bool)

(declare-fun tb!929 () Bool)

(assert (=> (and start!6038 (= defaultEntry!470 defaultEntry!470) t!4086) tb!929))

(declare-fun result!1601 () Bool)

(declare-fun tp_is_empty!1829 () Bool)

(assert (=> tb!929 (= result!1601 tp_is_empty!1829)))

(assert (=> b!42019 t!4086))

(declare-fun b_and!2539 () Bool)

(assert (= b_and!2537 (and (=> t!4086 result!1601) b_and!2539)))

(declare-fun m!35565 () Bool)

(assert (=> b!42019 m!35565))

(declare-fun m!35567 () Bool)

(assert (=> b!42019 m!35567))

(declare-fun m!35569 () Bool)

(assert (=> b!42019 m!35569))

(declare-fun m!35571 () Bool)

(assert (=> b!42019 m!35571))

(declare-fun m!35573 () Bool)

(assert (=> b!42019 m!35573))

(declare-fun m!35575 () Bool)

(assert (=> b!42019 m!35575))

(declare-fun m!35577 () Bool)

(assert (=> b!42019 m!35577))

(declare-fun m!35579 () Bool)

(assert (=> b!42019 m!35579))

(declare-fun m!35581 () Bool)

(assert (=> start!6038 m!35581))

(declare-fun m!35583 () Bool)

(assert (=> b!42022 m!35583))

(declare-fun m!35585 () Bool)

(assert (=> b!42021 m!35585))

(declare-fun m!35587 () Bool)

(assert (=> b!42021 m!35587))

(declare-fun m!35589 () Bool)

(assert (=> b!42020 m!35589))

(push 1)

(assert tp_is_empty!1829)

(assert (not b_lambda!2189))

(assert (not start!6038))

(assert (not b!42020))

(assert b_and!2539)

(assert (not b_next!1439))

(assert (not b!42021))

(assert (not b!42019))

(assert (not b!42022))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2539)

(assert (not b_next!1439))

(check-sat)

(pop 1)

