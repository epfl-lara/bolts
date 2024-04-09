; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6040 () Bool)

(assert start!6040)

(declare-fun b_free!1441 () Bool)

(declare-fun b_next!1441 () Bool)

(assert (=> start!6040 (= b_free!1441 (not b_next!1441))))

(declare-fun tp!5849 () Bool)

(declare-fun b_and!2541 () Bool)

(assert (=> start!6040 (= tp!5849 b_and!2541)))

(declare-fun b!42034 () Bool)

(declare-datatypes ((Unit!1073 0))(
  ( (Unit!1074) )
))
(declare-fun e!26575 () Unit!1073)

(declare-fun Unit!1075 () Unit!1073)

(assert (=> b!42034 (= e!26575 Unit!1075)))

(declare-datatypes ((V!2201 0))(
  ( (V!2202 (val!954 Int)) )
))
(declare-datatypes ((tuple2!1566 0))(
  ( (tuple2!1567 (_1!793 (_ BitVec 64)) (_2!793 V!2201)) )
))
(declare-fun lt!17164 () tuple2!1566)

(declare-datatypes ((List!1146 0))(
  ( (Nil!1143) (Cons!1142 (h!1719 tuple2!1566) (t!4091 List!1146)) )
))
(declare-datatypes ((ListLongMap!1147 0))(
  ( (ListLongMap!1148 (toList!589 List!1146)) )
))
(declare-fun lt!17157 () ListLongMap!1147)

(declare-fun head!884 (List!1146) tuple2!1566)

(assert (=> b!42034 (= lt!17164 (head!884 (toList!589 lt!17157)))))

(declare-fun lt!17166 () Unit!1073)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun lt!17163 () V!2201)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!668 0))(
  ( (ValueCellFull!668 (v!2037 V!2201)) (EmptyCell!668) )
))
(declare-datatypes ((array!2743 0))(
  ( (array!2744 (arr!1315 (Array (_ BitVec 32) ValueCell!668)) (size!1473 (_ BitVec 32))) )
))
(declare-fun lt!17159 () array!2743)

(declare-datatypes ((array!2745 0))(
  ( (array!2746 (arr!1316 (Array (_ BitVec 32) (_ BitVec 64))) (size!1474 (_ BitVec 32))) )
))
(declare-fun lt!17158 () array!2745)

(declare-fun lemmaKeyInListMapIsInArray!102 (array!2745 array!2743 (_ BitVec 32) (_ BitVec 32) V!2201 V!2201 (_ BitVec 64) Int) Unit!1073)

(assert (=> b!42034 (= lt!17166 (lemmaKeyInListMapIsInArray!102 lt!17158 lt!17159 mask!853 #b00000000000000000000000000000000 lt!17163 lt!17163 (_1!793 lt!17164) defaultEntry!470))))

(declare-fun res!25029 () Bool)

(assert (=> b!42034 (= res!25029 (and (not (= (_1!793 lt!17164) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!793 lt!17164) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!26576 () Bool)

(assert (=> b!42034 (=> (not res!25029) (not e!26576))))

(assert (=> b!42034 e!26576))

(declare-fun lt!17167 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2745 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42034 (= lt!17167 (arrayScanForKey!0 lt!17158 (_1!793 lt!17164) #b00000000000000000000000000000000))))

(assert (=> b!42034 false))

(declare-fun b!42035 () Bool)

(declare-fun Unit!1076 () Unit!1073)

(assert (=> b!42035 (= e!26575 Unit!1076)))

(declare-fun res!25030 () Bool)

(declare-fun e!26577 () Bool)

(assert (=> start!6040 (=> (not res!25030) (not e!26577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6040 (= res!25030 (validMask!0 mask!853))))

(assert (=> start!6040 e!26577))

(assert (=> start!6040 true))

(assert (=> start!6040 tp!5849))

(declare-fun b!42033 () Bool)

(assert (=> b!42033 (= e!26577 (not true))))

(declare-fun lt!17155 () Bool)

(declare-datatypes ((LongMapFixedSize!316 0))(
  ( (LongMapFixedSize!317 (defaultEntry!1851 Int) (mask!5283 (_ BitVec 32)) (extraKeys!1742 (_ BitVec 32)) (zeroValue!1769 V!2201) (minValue!1769 V!2201) (_size!207 (_ BitVec 32)) (_keys!3364 array!2745) (_values!1834 array!2743) (_vacant!207 (_ BitVec 32))) )
))
(declare-fun lt!17160 () LongMapFixedSize!316)

(declare-fun valid!125 (LongMapFixedSize!316) Bool)

(assert (=> b!42033 (= lt!17155 (valid!125 lt!17160))))

(declare-fun lt!17165 () Unit!1073)

(assert (=> b!42033 (= lt!17165 e!26575)))

(declare-fun c!5257 () Bool)

(assert (=> b!42033 (= c!5257 (not (= lt!17157 (ListLongMap!1148 Nil!1143))))))

(declare-fun map!757 (LongMapFixedSize!316) ListLongMap!1147)

(assert (=> b!42033 (= lt!17157 (map!757 lt!17160))))

(declare-datatypes ((List!1147 0))(
  ( (Nil!1144) (Cons!1143 (h!1720 (_ BitVec 64)) (t!4092 List!1147)) )
))
(declare-fun arrayNoDuplicates!0 (array!2745 (_ BitVec 32) List!1147) Bool)

(assert (=> b!42033 (arrayNoDuplicates!0 lt!17158 #b00000000000000000000000000000000 Nil!1144)))

(declare-fun lt!17156 () Unit!1073)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2745 (_ BitVec 32) (_ BitVec 32) List!1147) Unit!1073)

(assert (=> b!42033 (= lt!17156 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17158 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2745 (_ BitVec 32)) Bool)

(assert (=> b!42033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17158 mask!853)))

(declare-fun lt!17162 () Unit!1073)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2745 (_ BitVec 32) (_ BitVec 32)) Unit!1073)

(assert (=> b!42033 (= lt!17162 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17158 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2745 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42033 (= (arrayCountValidKeys!0 lt!17158 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17161 () Unit!1073)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2745 (_ BitVec 32) (_ BitVec 32)) Unit!1073)

(assert (=> b!42033 (= lt!17161 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17158 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42033 (= lt!17160 (LongMapFixedSize!317 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17163 lt!17163 #b00000000000000000000000000000000 lt!17158 lt!17159 #b00000000000000000000000000000000))))

(assert (=> b!42033 (= lt!17159 (array!2744 ((as const (Array (_ BitVec 32) ValueCell!668)) EmptyCell!668) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42033 (= lt!17158 (array!2746 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!229 (Int (_ BitVec 64)) V!2201)

(assert (=> b!42033 (= lt!17163 (dynLambda!229 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42036 () Bool)

(declare-fun arrayContainsKey!0 (array!2745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42036 (= e!26576 (arrayContainsKey!0 lt!17158 (_1!793 lt!17164) #b00000000000000000000000000000000))))

(assert (= (and start!6040 res!25030) b!42033))

(assert (= (and b!42033 c!5257) b!42034))

(assert (= (and b!42033 (not c!5257)) b!42035))

(assert (= (and b!42034 res!25029) b!42036))

(declare-fun b_lambda!2191 () Bool)

(assert (=> (not b_lambda!2191) (not b!42033)))

(declare-fun t!4090 () Bool)

(declare-fun tb!931 () Bool)

(assert (=> (and start!6040 (= defaultEntry!470 defaultEntry!470) t!4090) tb!931))

(declare-fun result!1605 () Bool)

(declare-fun tp_is_empty!1831 () Bool)

(assert (=> tb!931 (= result!1605 tp_is_empty!1831)))

(assert (=> b!42033 t!4090))

(declare-fun b_and!2543 () Bool)

(assert (= b_and!2541 (and (=> t!4090 result!1605) b_and!2543)))

(declare-fun m!35591 () Bool)

(assert (=> b!42034 m!35591))

(declare-fun m!35593 () Bool)

(assert (=> b!42034 m!35593))

(declare-fun m!35595 () Bool)

(assert (=> b!42034 m!35595))

(declare-fun m!35597 () Bool)

(assert (=> start!6040 m!35597))

(declare-fun m!35599 () Bool)

(assert (=> b!42033 m!35599))

(declare-fun m!35601 () Bool)

(assert (=> b!42033 m!35601))

(declare-fun m!35603 () Bool)

(assert (=> b!42033 m!35603))

(declare-fun m!35605 () Bool)

(assert (=> b!42033 m!35605))

(declare-fun m!35607 () Bool)

(assert (=> b!42033 m!35607))

(declare-fun m!35609 () Bool)

(assert (=> b!42033 m!35609))

(declare-fun m!35611 () Bool)

(assert (=> b!42033 m!35611))

(declare-fun m!35613 () Bool)

(assert (=> b!42033 m!35613))

(declare-fun m!35615 () Bool)

(assert (=> b!42033 m!35615))

(declare-fun m!35617 () Bool)

(assert (=> b!42036 m!35617))

(push 1)

(assert b_and!2543)

(assert tp_is_empty!1831)

(assert (not b!42036))

(assert (not b!42033))

(assert (not start!6040))

(assert (not b_lambda!2191))

(assert (not b_next!1441))

(assert (not b!42034))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2543)

(assert (not b_next!1441))

(check-sat)

(pop 1)

