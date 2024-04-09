; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5930 () Bool)

(assert start!5930)

(declare-fun b_free!1403 () Bool)

(declare-fun b_next!1403 () Bool)

(assert (=> start!5930 (= b_free!1403 (not b_next!1403))))

(declare-fun tp!5792 () Bool)

(declare-fun b_and!2465 () Bool)

(assert (=> start!5930 (= tp!5792 b_and!2465)))

(declare-fun b!41614 () Bool)

(declare-fun e!26334 () Bool)

(declare-fun e!26333 () Bool)

(assert (=> b!41614 (= e!26334 (not e!26333))))

(declare-fun res!24745 () Bool)

(assert (=> b!41614 (=> res!24745 e!26333)))

(declare-datatypes ((V!2149 0))(
  ( (V!2150 (val!935 Int)) )
))
(declare-datatypes ((tuple2!1528 0))(
  ( (tuple2!1529 (_1!774 (_ BitVec 64)) (_2!774 V!2149)) )
))
(declare-datatypes ((List!1108 0))(
  ( (Nil!1105) (Cons!1104 (h!1681 tuple2!1528) (t!4015 List!1108)) )
))
(declare-datatypes ((ListLongMap!1109 0))(
  ( (ListLongMap!1110 (toList!570 List!1108)) )
))
(declare-fun lt!16605 () ListLongMap!1109)

(assert (=> b!41614 (= res!24745 (= lt!16605 (ListLongMap!1110 Nil!1105)))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun lt!16603 () V!2149)

(declare-datatypes ((array!2667 0))(
  ( (array!2668 (arr!1277 (Array (_ BitVec 32) (_ BitVec 64))) (size!1429 (_ BitVec 32))) )
))
(declare-fun lt!16604 () array!2667)

(declare-datatypes ((ValueCell!649 0))(
  ( (ValueCellFull!649 (v!2018 V!2149)) (EmptyCell!649) )
))
(declare-datatypes ((array!2669 0))(
  ( (array!2670 (arr!1278 (Array (_ BitVec 32) ValueCell!649)) (size!1430 (_ BitVec 32))) )
))
(declare-fun lt!16600 () array!2669)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!278 0))(
  ( (LongMapFixedSize!279 (defaultEntry!1829 Int) (mask!5238 (_ BitVec 32)) (extraKeys!1720 (_ BitVec 32)) (zeroValue!1747 V!2149) (minValue!1747 V!2149) (_size!188 (_ BitVec 32)) (_keys!3336 array!2667) (_values!1812 array!2669) (_vacant!188 (_ BitVec 32))) )
))
(declare-fun map!724 (LongMapFixedSize!278) ListLongMap!1109)

(assert (=> b!41614 (= lt!16605 (map!724 (LongMapFixedSize!279 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16603 lt!16603 #b00000000000000000000000000000000 lt!16604 lt!16600 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1109 0))(
  ( (Nil!1106) (Cons!1105 (h!1682 (_ BitVec 64)) (t!4016 List!1109)) )
))
(declare-fun arrayNoDuplicates!0 (array!2667 (_ BitVec 32) List!1109) Bool)

(assert (=> b!41614 (arrayNoDuplicates!0 lt!16604 #b00000000000000000000000000000000 Nil!1106)))

(declare-datatypes ((Unit!1035 0))(
  ( (Unit!1036) )
))
(declare-fun lt!16601 () Unit!1035)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2667 (_ BitVec 32) (_ BitVec 32) List!1109) Unit!1035)

(assert (=> b!41614 (= lt!16601 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2667 (_ BitVec 32)) Bool)

(assert (=> b!41614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16604 mask!853)))

(declare-fun lt!16599 () Unit!1035)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2667 (_ BitVec 32) (_ BitVec 32)) Unit!1035)

(assert (=> b!41614 (= lt!16599 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16604 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2667 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41614 (= (arrayCountValidKeys!0 lt!16604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16602 () Unit!1035)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2667 (_ BitVec 32) (_ BitVec 32)) Unit!1035)

(assert (=> b!41614 (= lt!16602 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41614 (= lt!16600 (array!2670 ((as const (Array (_ BitVec 32) ValueCell!649)) EmptyCell!649) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41614 (= lt!16604 (array!2668 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!210 (Int (_ BitVec 64)) V!2149)

(assert (=> b!41614 (= lt!16603 (dynLambda!210 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41615 () Bool)

(declare-fun res!24742 () Bool)

(assert (=> b!41615 (=> res!24742 e!26333)))

(declare-fun isEmpty!255 (List!1108) Bool)

(assert (=> b!41615 (= res!24742 (isEmpty!255 (toList!570 lt!16605)))))

(declare-fun b!41617 () Bool)

(assert (=> b!41617 (= e!26333 true)))

(declare-fun lt!16606 () Bool)

(declare-fun contains!536 (ListLongMap!1109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!328 (array!2667 array!2669 (_ BitVec 32) (_ BitVec 32) V!2149 V!2149 (_ BitVec 32) Int) ListLongMap!1109)

(declare-fun head!865 (List!1108) tuple2!1528)

(assert (=> b!41617 (= lt!16606 (contains!536 (getCurrentListMap!328 lt!16604 lt!16600 mask!853 #b00000000000000000000000000000000 lt!16603 lt!16603 #b00000000000000000000000000000000 defaultEntry!470) (_1!774 (head!865 (toList!570 lt!16605)))))))

(declare-fun b!41616 () Bool)

(declare-fun res!24743 () Bool)

(assert (=> b!41616 (=> res!24743 e!26333)))

(assert (=> b!41616 (= res!24743 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24744 () Bool)

(assert (=> start!5930 (=> (not res!24744) (not e!26334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5930 (= res!24744 (validMask!0 mask!853))))

(assert (=> start!5930 e!26334))

(assert (=> start!5930 true))

(assert (=> start!5930 tp!5792))

(assert (= (and start!5930 res!24744) b!41614))

(assert (= (and b!41614 (not res!24745)) b!41615))

(assert (= (and b!41615 (not res!24742)) b!41616))

(assert (= (and b!41616 (not res!24743)) b!41617))

(declare-fun b_lambda!2147 () Bool)

(assert (=> (not b_lambda!2147) (not b!41614)))

(declare-fun t!4014 () Bool)

(declare-fun tb!893 () Bool)

(assert (=> (and start!5930 (= defaultEntry!470 defaultEntry!470) t!4014) tb!893))

(declare-fun result!1529 () Bool)

(declare-fun tp_is_empty!1793 () Bool)

(assert (=> tb!893 (= result!1529 tp_is_empty!1793)))

(assert (=> b!41614 t!4014))

(declare-fun b_and!2467 () Bool)

(assert (= b_and!2465 (and (=> t!4014 result!1529) b_and!2467)))

(declare-fun m!35007 () Bool)

(assert (=> b!41614 m!35007))

(declare-fun m!35009 () Bool)

(assert (=> b!41614 m!35009))

(declare-fun m!35011 () Bool)

(assert (=> b!41614 m!35011))

(declare-fun m!35013 () Bool)

(assert (=> b!41614 m!35013))

(declare-fun m!35015 () Bool)

(assert (=> b!41614 m!35015))

(declare-fun m!35017 () Bool)

(assert (=> b!41614 m!35017))

(declare-fun m!35019 () Bool)

(assert (=> b!41614 m!35019))

(declare-fun m!35021 () Bool)

(assert (=> b!41614 m!35021))

(declare-fun m!35023 () Bool)

(assert (=> b!41615 m!35023))

(declare-fun m!35025 () Bool)

(assert (=> b!41617 m!35025))

(declare-fun m!35027 () Bool)

(assert (=> b!41617 m!35027))

(assert (=> b!41617 m!35025))

(declare-fun m!35029 () Bool)

(assert (=> b!41617 m!35029))

(declare-fun m!35031 () Bool)

(assert (=> start!5930 m!35031))

(push 1)

(assert tp_is_empty!1793)

(assert (not b!41615))

(assert (not b!41617))

(assert (not start!5930))

(assert (not b!41614))

(assert (not b_lambda!2147))

(assert (not b_next!1403))

(assert b_and!2467)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2467)

(assert (not b_next!1403))

