; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5938 () Bool)

(assert start!5938)

(declare-fun b_free!1411 () Bool)

(declare-fun b_next!1411 () Bool)

(assert (=> start!5938 (= b_free!1411 (not b_next!1411))))

(declare-fun tp!5804 () Bool)

(declare-fun b_and!2481 () Bool)

(assert (=> start!5938 (= tp!5804 b_and!2481)))

(declare-fun b!41671 () Bool)

(declare-fun res!24790 () Bool)

(declare-fun e!26357 () Bool)

(assert (=> b!41671 (=> res!24790 e!26357)))

(declare-datatypes ((V!2161 0))(
  ( (V!2162 (val!939 Int)) )
))
(declare-datatypes ((tuple2!1536 0))(
  ( (tuple2!1537 (_1!778 (_ BitVec 64)) (_2!778 V!2161)) )
))
(declare-datatypes ((List!1116 0))(
  ( (Nil!1113) (Cons!1112 (h!1689 tuple2!1536) (t!4031 List!1116)) )
))
(declare-datatypes ((ListLongMap!1117 0))(
  ( (ListLongMap!1118 (toList!574 List!1116)) )
))
(declare-fun lt!16700 () ListLongMap!1117)

(declare-fun isEmpty!259 (List!1116) Bool)

(assert (=> b!41671 (= res!24790 (isEmpty!259 (toList!574 lt!16700)))))

(declare-fun b!41672 () Bool)

(declare-fun res!24791 () Bool)

(assert (=> b!41672 (=> res!24791 e!26357)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41672 (= res!24791 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24793 () Bool)

(declare-fun e!26358 () Bool)

(assert (=> start!5938 (=> (not res!24793) (not e!26358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5938 (= res!24793 (validMask!0 mask!853))))

(assert (=> start!5938 e!26358))

(assert (=> start!5938 true))

(assert (=> start!5938 tp!5804))

(declare-fun b!41673 () Bool)

(assert (=> b!41673 (= e!26357 true)))

(declare-fun lt!16701 () Bool)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!653 0))(
  ( (ValueCellFull!653 (v!2022 V!2161)) (EmptyCell!653) )
))
(declare-datatypes ((array!2683 0))(
  ( (array!2684 (arr!1285 (Array (_ BitVec 32) ValueCell!653)) (size!1437 (_ BitVec 32))) )
))
(declare-fun lt!16698 () array!2683)

(declare-fun lt!16696 () V!2161)

(declare-datatypes ((array!2685 0))(
  ( (array!2686 (arr!1286 (Array (_ BitVec 32) (_ BitVec 64))) (size!1438 (_ BitVec 32))) )
))
(declare-fun lt!16699 () array!2685)

(declare-fun contains!540 (ListLongMap!1117 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!332 (array!2685 array!2683 (_ BitVec 32) (_ BitVec 32) V!2161 V!2161 (_ BitVec 32) Int) ListLongMap!1117)

(declare-fun head!869 (List!1116) tuple2!1536)

(assert (=> b!41673 (= lt!16701 (contains!540 (getCurrentListMap!332 lt!16699 lt!16698 mask!853 #b00000000000000000000000000000000 lt!16696 lt!16696 #b00000000000000000000000000000000 defaultEntry!470) (_1!778 (head!869 (toList!574 lt!16700)))))))

(declare-fun b!41670 () Bool)

(assert (=> b!41670 (= e!26358 (not e!26357))))

(declare-fun res!24792 () Bool)

(assert (=> b!41670 (=> res!24792 e!26357)))

(assert (=> b!41670 (= res!24792 (= lt!16700 (ListLongMap!1118 Nil!1113)))))

(declare-datatypes ((LongMapFixedSize!286 0))(
  ( (LongMapFixedSize!287 (defaultEntry!1833 Int) (mask!5246 (_ BitVec 32)) (extraKeys!1724 (_ BitVec 32)) (zeroValue!1751 V!2161) (minValue!1751 V!2161) (_size!192 (_ BitVec 32)) (_keys!3340 array!2685) (_values!1816 array!2683) (_vacant!192 (_ BitVec 32))) )
))
(declare-fun map!732 (LongMapFixedSize!286) ListLongMap!1117)

(assert (=> b!41670 (= lt!16700 (map!732 (LongMapFixedSize!287 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16696 lt!16696 #b00000000000000000000000000000000 lt!16699 lt!16698 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1117 0))(
  ( (Nil!1114) (Cons!1113 (h!1690 (_ BitVec 64)) (t!4032 List!1117)) )
))
(declare-fun arrayNoDuplicates!0 (array!2685 (_ BitVec 32) List!1117) Bool)

(assert (=> b!41670 (arrayNoDuplicates!0 lt!16699 #b00000000000000000000000000000000 Nil!1114)))

(declare-datatypes ((Unit!1043 0))(
  ( (Unit!1044) )
))
(declare-fun lt!16697 () Unit!1043)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2685 (_ BitVec 32) (_ BitVec 32) List!1117) Unit!1043)

(assert (=> b!41670 (= lt!16697 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16699 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2685 (_ BitVec 32)) Bool)

(assert (=> b!41670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16699 mask!853)))

(declare-fun lt!16702 () Unit!1043)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2685 (_ BitVec 32) (_ BitVec 32)) Unit!1043)

(assert (=> b!41670 (= lt!16702 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16699 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2685 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41670 (= (arrayCountValidKeys!0 lt!16699 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16695 () Unit!1043)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2685 (_ BitVec 32) (_ BitVec 32)) Unit!1043)

(assert (=> b!41670 (= lt!16695 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16699 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41670 (= lt!16698 (array!2684 ((as const (Array (_ BitVec 32) ValueCell!653)) EmptyCell!653) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41670 (= lt!16699 (array!2686 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!214 (Int (_ BitVec 64)) V!2161)

(assert (=> b!41670 (= lt!16696 (dynLambda!214 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5938 res!24793) b!41670))

(assert (= (and b!41670 (not res!24792)) b!41671))

(assert (= (and b!41671 (not res!24790)) b!41672))

(assert (= (and b!41672 (not res!24791)) b!41673))

(declare-fun b_lambda!2155 () Bool)

(assert (=> (not b_lambda!2155) (not b!41670)))

(declare-fun t!4030 () Bool)

(declare-fun tb!901 () Bool)

(assert (=> (and start!5938 (= defaultEntry!470 defaultEntry!470) t!4030) tb!901))

(declare-fun result!1545 () Bool)

(declare-fun tp_is_empty!1801 () Bool)

(assert (=> tb!901 (= result!1545 tp_is_empty!1801)))

(assert (=> b!41670 t!4030))

(declare-fun b_and!2483 () Bool)

(assert (= b_and!2481 (and (=> t!4030 result!1545) b_and!2483)))

(declare-fun m!35111 () Bool)

(assert (=> b!41671 m!35111))

(declare-fun m!35113 () Bool)

(assert (=> start!5938 m!35113))

(declare-fun m!35115 () Bool)

(assert (=> b!41673 m!35115))

(declare-fun m!35117 () Bool)

(assert (=> b!41673 m!35117))

(assert (=> b!41673 m!35115))

(declare-fun m!35119 () Bool)

(assert (=> b!41673 m!35119))

(declare-fun m!35121 () Bool)

(assert (=> b!41670 m!35121))

(declare-fun m!35123 () Bool)

(assert (=> b!41670 m!35123))

(declare-fun m!35125 () Bool)

(assert (=> b!41670 m!35125))

(declare-fun m!35127 () Bool)

(assert (=> b!41670 m!35127))

(declare-fun m!35129 () Bool)

(assert (=> b!41670 m!35129))

(declare-fun m!35131 () Bool)

(assert (=> b!41670 m!35131))

(declare-fun m!35133 () Bool)

(assert (=> b!41670 m!35133))

(declare-fun m!35135 () Bool)

(assert (=> b!41670 m!35135))

(push 1)

(assert (not start!5938))

(assert (not b!41670))

(assert b_and!2483)

(assert (not b!41673))

(assert (not b_lambda!2155))

(assert tp_is_empty!1801)

(assert (not b_next!1411))

(assert (not b!41671))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2483)

(assert (not b_next!1411))

(check-sat)

(pop 1)

