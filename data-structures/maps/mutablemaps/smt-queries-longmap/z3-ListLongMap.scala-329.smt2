; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6036 () Bool)

(assert start!6036)

(declare-fun b_free!1437 () Bool)

(declare-fun b_next!1437 () Bool)

(assert (=> start!6036 (= b_free!1437 (not b_next!1437))))

(declare-fun tp!5843 () Bool)

(declare-fun b_and!2533 () Bool)

(assert (=> start!6036 (= tp!5843 b_and!2533)))

(declare-fun res!25010 () Bool)

(declare-fun e!26557 () Bool)

(assert (=> start!6036 (=> (not res!25010) (not e!26557))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6036 (= res!25010 (validMask!0 mask!853))))

(assert (=> start!6036 e!26557))

(assert (=> start!6036 true))

(assert (=> start!6036 tp!5843))

(declare-fun b!42006 () Bool)

(declare-fun res!25012 () Bool)

(declare-fun e!26559 () Bool)

(assert (=> b!42006 (=> res!25012 e!26559)))

(declare-datatypes ((V!2195 0))(
  ( (V!2196 (val!952 Int)) )
))
(declare-datatypes ((tuple2!1562 0))(
  ( (tuple2!1563 (_1!791 (_ BitVec 64)) (_2!791 V!2195)) )
))
(declare-datatypes ((List!1142 0))(
  ( (Nil!1139) (Cons!1138 (h!1715 tuple2!1562) (t!4083 List!1142)) )
))
(declare-datatypes ((ListLongMap!1143 0))(
  ( (ListLongMap!1144 (toList!587 List!1142)) )
))
(declare-fun lt!17096 () ListLongMap!1143)

(declare-fun isEmpty!272 (List!1142) Bool)

(assert (=> b!42006 (= res!25012 (isEmpty!272 (toList!587 lt!17096)))))

(declare-fun b!42007 () Bool)

(assert (=> b!42007 (= e!26559 true)))

(declare-fun e!26558 () Bool)

(assert (=> b!42007 e!26558))

(declare-fun res!25009 () Bool)

(assert (=> b!42007 (=> (not res!25009) (not e!26558))))

(declare-fun lt!17100 () tuple2!1562)

(assert (=> b!42007 (= res!25009 (and (not (= (_1!791 lt!17100) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!791 lt!17100) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((ValueCell!666 0))(
  ( (ValueCellFull!666 (v!2035 V!2195)) (EmptyCell!666) )
))
(declare-datatypes ((array!2735 0))(
  ( (array!2736 (arr!1311 (Array (_ BitVec 32) ValueCell!666)) (size!1469 (_ BitVec 32))) )
))
(declare-fun lt!17095 () array!2735)

(declare-datatypes ((array!2737 0))(
  ( (array!2738 (arr!1312 (Array (_ BitVec 32) (_ BitVec 64))) (size!1470 (_ BitVec 32))) )
))
(declare-fun lt!17098 () array!2737)

(declare-fun lt!17097 () V!2195)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((Unit!1069 0))(
  ( (Unit!1070) )
))
(declare-fun lt!17093 () Unit!1069)

(declare-fun lemmaKeyInListMapIsInArray!100 (array!2737 array!2735 (_ BitVec 32) (_ BitVec 32) V!2195 V!2195 (_ BitVec 64) Int) Unit!1069)

(assert (=> b!42007 (= lt!17093 (lemmaKeyInListMapIsInArray!100 lt!17098 lt!17095 mask!853 #b00000000000000000000000000000000 lt!17097 lt!17097 (_1!791 lt!17100) defaultEntry!470))))

(declare-fun head!882 (List!1142) tuple2!1562)

(assert (=> b!42007 (= lt!17100 (head!882 (toList!587 lt!17096)))))

(declare-fun b!42005 () Bool)

(assert (=> b!42005 (= e!26557 (not e!26559))))

(declare-fun res!25011 () Bool)

(assert (=> b!42005 (=> res!25011 e!26559)))

(assert (=> b!42005 (= res!25011 (= lt!17096 (ListLongMap!1144 Nil!1139)))))

(declare-datatypes ((LongMapFixedSize!312 0))(
  ( (LongMapFixedSize!313 (defaultEntry!1849 Int) (mask!5279 (_ BitVec 32)) (extraKeys!1740 (_ BitVec 32)) (zeroValue!1767 V!2195) (minValue!1767 V!2195) (_size!205 (_ BitVec 32)) (_keys!3362 array!2737) (_values!1832 array!2735) (_vacant!205 (_ BitVec 32))) )
))
(declare-fun map!753 (LongMapFixedSize!312) ListLongMap!1143)

(assert (=> b!42005 (= lt!17096 (map!753 (LongMapFixedSize!313 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17097 lt!17097 #b00000000000000000000000000000000 lt!17098 lt!17095 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1143 0))(
  ( (Nil!1140) (Cons!1139 (h!1716 (_ BitVec 64)) (t!4084 List!1143)) )
))
(declare-fun arrayNoDuplicates!0 (array!2737 (_ BitVec 32) List!1143) Bool)

(assert (=> b!42005 (arrayNoDuplicates!0 lt!17098 #b00000000000000000000000000000000 Nil!1140)))

(declare-fun lt!17094 () Unit!1069)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2737 (_ BitVec 32) (_ BitVec 32) List!1143) Unit!1069)

(assert (=> b!42005 (= lt!17094 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17098 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2737 (_ BitVec 32)) Bool)

(assert (=> b!42005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17098 mask!853)))

(declare-fun lt!17101 () Unit!1069)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2737 (_ BitVec 32) (_ BitVec 32)) Unit!1069)

(assert (=> b!42005 (= lt!17101 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17098 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2737 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42005 (= (arrayCountValidKeys!0 lt!17098 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17099 () Unit!1069)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2737 (_ BitVec 32) (_ BitVec 32)) Unit!1069)

(assert (=> b!42005 (= lt!17099 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17098 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42005 (= lt!17095 (array!2736 ((as const (Array (_ BitVec 32) ValueCell!666)) EmptyCell!666) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42005 (= lt!17098 (array!2738 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!227 (Int (_ BitVec 64)) V!2195)

(assert (=> b!42005 (= lt!17097 (dynLambda!227 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42008 () Bool)

(declare-fun arrayContainsKey!0 (array!2737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42008 (= e!26558 (arrayContainsKey!0 lt!17098 (_1!791 lt!17100) #b00000000000000000000000000000000))))

(assert (= (and start!6036 res!25010) b!42005))

(assert (= (and b!42005 (not res!25011)) b!42006))

(assert (= (and b!42006 (not res!25012)) b!42007))

(assert (= (and b!42007 res!25009) b!42008))

(declare-fun b_lambda!2187 () Bool)

(assert (=> (not b_lambda!2187) (not b!42005)))

(declare-fun t!4082 () Bool)

(declare-fun tb!927 () Bool)

(assert (=> (and start!6036 (= defaultEntry!470 defaultEntry!470) t!4082) tb!927))

(declare-fun result!1597 () Bool)

(declare-fun tp_is_empty!1827 () Bool)

(assert (=> tb!927 (= result!1597 tp_is_empty!1827)))

(assert (=> b!42005 t!4082))

(declare-fun b_and!2535 () Bool)

(assert (= b_and!2533 (and (=> t!4082 result!1597) b_and!2535)))

(declare-fun m!35539 () Bool)

(assert (=> b!42007 m!35539))

(declare-fun m!35541 () Bool)

(assert (=> b!42007 m!35541))

(declare-fun m!35543 () Bool)

(assert (=> start!6036 m!35543))

(declare-fun m!35545 () Bool)

(assert (=> b!42005 m!35545))

(declare-fun m!35547 () Bool)

(assert (=> b!42005 m!35547))

(declare-fun m!35549 () Bool)

(assert (=> b!42005 m!35549))

(declare-fun m!35551 () Bool)

(assert (=> b!42005 m!35551))

(declare-fun m!35553 () Bool)

(assert (=> b!42005 m!35553))

(declare-fun m!35555 () Bool)

(assert (=> b!42005 m!35555))

(declare-fun m!35557 () Bool)

(assert (=> b!42005 m!35557))

(declare-fun m!35559 () Bool)

(assert (=> b!42005 m!35559))

(declare-fun m!35561 () Bool)

(assert (=> b!42006 m!35561))

(declare-fun m!35563 () Bool)

(assert (=> b!42008 m!35563))

(check-sat (not b_next!1437) (not b!42007) (not b!42008) (not b!42006) (not b_lambda!2187) b_and!2535 (not b!42005) tp_is_empty!1827 (not start!6036))
(check-sat b_and!2535 (not b_next!1437))
