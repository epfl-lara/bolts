; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5916 () Bool)

(assert start!5916)

(declare-fun b_free!1389 () Bool)

(declare-fun b_next!1389 () Bool)

(assert (=> start!5916 (= b_free!1389 (not b_next!1389))))

(declare-fun tp!5771 () Bool)

(declare-fun b_and!2437 () Bool)

(assert (=> start!5916 (= tp!5771 b_and!2437)))

(declare-fun b!41519 () Bool)

(declare-fun e!26291 () Bool)

(assert (=> b!41519 (= e!26291 true)))

(declare-fun lt!16433 () Bool)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2131 0))(
  ( (V!2132 (val!928 Int)) )
))
(declare-datatypes ((ValueCell!642 0))(
  ( (ValueCellFull!642 (v!2011 V!2131)) (EmptyCell!642) )
))
(declare-datatypes ((array!2639 0))(
  ( (array!2640 (arr!1263 (Array (_ BitVec 32) ValueCell!642)) (size!1415 (_ BitVec 32))) )
))
(declare-fun lt!16434 () array!2639)

(declare-datatypes ((tuple2!1514 0))(
  ( (tuple2!1515 (_1!767 (_ BitVec 64)) (_2!767 V!2131)) )
))
(declare-datatypes ((List!1094 0))(
  ( (Nil!1091) (Cons!1090 (h!1667 tuple2!1514) (t!3987 List!1094)) )
))
(declare-datatypes ((ListLongMap!1095 0))(
  ( (ListLongMap!1096 (toList!563 List!1094)) )
))
(declare-fun lt!16432 () ListLongMap!1095)

(declare-fun lt!16431 () V!2131)

(declare-datatypes ((array!2641 0))(
  ( (array!2642 (arr!1264 (Array (_ BitVec 32) (_ BitVec 64))) (size!1416 (_ BitVec 32))) )
))
(declare-fun lt!16436 () array!2641)

(declare-fun contains!529 (ListLongMap!1095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!321 (array!2641 array!2639 (_ BitVec 32) (_ BitVec 32) V!2131 V!2131 (_ BitVec 32) Int) ListLongMap!1095)

(declare-fun head!858 (List!1094) tuple2!1514)

(assert (=> b!41519 (= lt!16433 (contains!529 (getCurrentListMap!321 lt!16436 lt!16434 mask!853 #b00000000000000000000000000000000 lt!16431 lt!16431 #b00000000000000000000000000000000 defaultEntry!470) (_1!767 (head!858 (toList!563 lt!16432)))))))

(declare-fun b!41518 () Bool)

(declare-fun res!24658 () Bool)

(assert (=> b!41518 (=> res!24658 e!26291)))

(assert (=> b!41518 (= res!24658 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41516 () Bool)

(declare-fun e!26292 () Bool)

(assert (=> b!41516 (= e!26292 (not e!26291))))

(declare-fun res!24660 () Bool)

(assert (=> b!41516 (=> res!24660 e!26291)))

(assert (=> b!41516 (= res!24660 (= lt!16432 (ListLongMap!1096 Nil!1091)))))

(declare-datatypes ((LongMapFixedSize!264 0))(
  ( (LongMapFixedSize!265 (defaultEntry!1822 Int) (mask!5227 (_ BitVec 32)) (extraKeys!1713 (_ BitVec 32)) (zeroValue!1740 V!2131) (minValue!1740 V!2131) (_size!181 (_ BitVec 32)) (_keys!3329 array!2641) (_values!1805 array!2639) (_vacant!181 (_ BitVec 32))) )
))
(declare-fun map!713 (LongMapFixedSize!264) ListLongMap!1095)

(assert (=> b!41516 (= lt!16432 (map!713 (LongMapFixedSize!265 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16431 lt!16431 #b00000000000000000000000000000000 lt!16436 lt!16434 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1095 0))(
  ( (Nil!1092) (Cons!1091 (h!1668 (_ BitVec 64)) (t!3988 List!1095)) )
))
(declare-fun arrayNoDuplicates!0 (array!2641 (_ BitVec 32) List!1095) Bool)

(assert (=> b!41516 (arrayNoDuplicates!0 lt!16436 #b00000000000000000000000000000000 Nil!1092)))

(declare-datatypes ((Unit!1021 0))(
  ( (Unit!1022) )
))
(declare-fun lt!16438 () Unit!1021)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2641 (_ BitVec 32) (_ BitVec 32) List!1095) Unit!1021)

(assert (=> b!41516 (= lt!16438 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16436 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2641 (_ BitVec 32)) Bool)

(assert (=> b!41516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16436 mask!853)))

(declare-fun lt!16435 () Unit!1021)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2641 (_ BitVec 32) (_ BitVec 32)) Unit!1021)

(assert (=> b!41516 (= lt!16435 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16436 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2641 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41516 (= (arrayCountValidKeys!0 lt!16436 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16437 () Unit!1021)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2641 (_ BitVec 32) (_ BitVec 32)) Unit!1021)

(assert (=> b!41516 (= lt!16437 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16436 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41516 (= lt!16434 (array!2640 ((as const (Array (_ BitVec 32) ValueCell!642)) EmptyCell!642) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41516 (= lt!16436 (array!2642 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!203 (Int (_ BitVec 64)) V!2131)

(assert (=> b!41516 (= lt!16431 (dynLambda!203 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!24661 () Bool)

(assert (=> start!5916 (=> (not res!24661) (not e!26292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5916 (= res!24661 (validMask!0 mask!853))))

(assert (=> start!5916 e!26292))

(assert (=> start!5916 true))

(assert (=> start!5916 tp!5771))

(declare-fun b!41517 () Bool)

(declare-fun res!24659 () Bool)

(assert (=> b!41517 (=> res!24659 e!26291)))

(declare-fun isEmpty!248 (List!1094) Bool)

(assert (=> b!41517 (= res!24659 (isEmpty!248 (toList!563 lt!16432)))))

(assert (= (and start!5916 res!24661) b!41516))

(assert (= (and b!41516 (not res!24660)) b!41517))

(assert (= (and b!41517 (not res!24659)) b!41518))

(assert (= (and b!41518 (not res!24658)) b!41519))

(declare-fun b_lambda!2133 () Bool)

(assert (=> (not b_lambda!2133) (not b!41516)))

(declare-fun t!3986 () Bool)

(declare-fun tb!879 () Bool)

(assert (=> (and start!5916 (= defaultEntry!470 defaultEntry!470) t!3986) tb!879))

(declare-fun result!1501 () Bool)

(declare-fun tp_is_empty!1779 () Bool)

(assert (=> tb!879 (= result!1501 tp_is_empty!1779)))

(assert (=> b!41516 t!3986))

(declare-fun b_and!2439 () Bool)

(assert (= b_and!2437 (and (=> t!3986 result!1501) b_and!2439)))

(declare-fun m!34825 () Bool)

(assert (=> b!41519 m!34825))

(declare-fun m!34827 () Bool)

(assert (=> b!41519 m!34827))

(assert (=> b!41519 m!34825))

(declare-fun m!34829 () Bool)

(assert (=> b!41519 m!34829))

(declare-fun m!34831 () Bool)

(assert (=> b!41516 m!34831))

(declare-fun m!34833 () Bool)

(assert (=> b!41516 m!34833))

(declare-fun m!34835 () Bool)

(assert (=> b!41516 m!34835))

(declare-fun m!34837 () Bool)

(assert (=> b!41516 m!34837))

(declare-fun m!34839 () Bool)

(assert (=> b!41516 m!34839))

(declare-fun m!34841 () Bool)

(assert (=> b!41516 m!34841))

(declare-fun m!34843 () Bool)

(assert (=> b!41516 m!34843))

(declare-fun m!34845 () Bool)

(assert (=> b!41516 m!34845))

(declare-fun m!34847 () Bool)

(assert (=> start!5916 m!34847))

(declare-fun m!34849 () Bool)

(assert (=> b!41517 m!34849))

(check-sat (not b_next!1389) (not b_lambda!2133) (not b!41517) b_and!2439 tp_is_empty!1779 (not b!41516) (not b!41519) (not start!5916))
(check-sat b_and!2439 (not b_next!1389))
