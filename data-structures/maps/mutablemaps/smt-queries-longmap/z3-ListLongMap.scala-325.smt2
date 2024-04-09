; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5940 () Bool)

(assert start!5940)

(declare-fun b_free!1413 () Bool)

(declare-fun b_next!1413 () Bool)

(assert (=> start!5940 (= b_free!1413 (not b_next!1413))))

(declare-fun tp!5807 () Bool)

(declare-fun b_and!2485 () Bool)

(assert (=> start!5940 (= tp!5807 b_and!2485)))

(declare-fun res!24804 () Bool)

(declare-fun e!26364 () Bool)

(assert (=> start!5940 (=> (not res!24804) (not e!26364))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5940 (= res!24804 (validMask!0 mask!853))))

(assert (=> start!5940 e!26364))

(assert (=> start!5940 true))

(assert (=> start!5940 tp!5807))

(declare-fun b!41684 () Bool)

(declare-fun e!26363 () Bool)

(assert (=> b!41684 (= e!26364 (not e!26363))))

(declare-fun res!24802 () Bool)

(assert (=> b!41684 (=> res!24802 e!26363)))

(declare-datatypes ((V!2163 0))(
  ( (V!2164 (val!940 Int)) )
))
(declare-datatypes ((tuple2!1538 0))(
  ( (tuple2!1539 (_1!779 (_ BitVec 64)) (_2!779 V!2163)) )
))
(declare-datatypes ((List!1118 0))(
  ( (Nil!1115) (Cons!1114 (h!1691 tuple2!1538) (t!4035 List!1118)) )
))
(declare-datatypes ((ListLongMap!1119 0))(
  ( (ListLongMap!1120 (toList!575 List!1118)) )
))
(declare-fun lt!16725 () ListLongMap!1119)

(assert (=> b!41684 (= res!24802 (= lt!16725 (ListLongMap!1120 Nil!1115)))))

(declare-datatypes ((array!2687 0))(
  ( (array!2688 (arr!1287 (Array (_ BitVec 32) (_ BitVec 64))) (size!1439 (_ BitVec 32))) )
))
(declare-fun lt!16720 () array!2687)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!654 0))(
  ( (ValueCellFull!654 (v!2023 V!2163)) (EmptyCell!654) )
))
(declare-datatypes ((array!2689 0))(
  ( (array!2690 (arr!1288 (Array (_ BitVec 32) ValueCell!654)) (size!1440 (_ BitVec 32))) )
))
(declare-fun lt!16722 () array!2689)

(declare-fun lt!16721 () V!2163)

(declare-datatypes ((LongMapFixedSize!288 0))(
  ( (LongMapFixedSize!289 (defaultEntry!1834 Int) (mask!5247 (_ BitVec 32)) (extraKeys!1725 (_ BitVec 32)) (zeroValue!1752 V!2163) (minValue!1752 V!2163) (_size!193 (_ BitVec 32)) (_keys!3341 array!2687) (_values!1817 array!2689) (_vacant!193 (_ BitVec 32))) )
))
(declare-fun map!733 (LongMapFixedSize!288) ListLongMap!1119)

(assert (=> b!41684 (= lt!16725 (map!733 (LongMapFixedSize!289 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16721 lt!16721 #b00000000000000000000000000000000 lt!16720 lt!16722 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1119 0))(
  ( (Nil!1116) (Cons!1115 (h!1692 (_ BitVec 64)) (t!4036 List!1119)) )
))
(declare-fun arrayNoDuplicates!0 (array!2687 (_ BitVec 32) List!1119) Bool)

(assert (=> b!41684 (arrayNoDuplicates!0 lt!16720 #b00000000000000000000000000000000 Nil!1116)))

(declare-datatypes ((Unit!1045 0))(
  ( (Unit!1046) )
))
(declare-fun lt!16719 () Unit!1045)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2687 (_ BitVec 32) (_ BitVec 32) List!1119) Unit!1045)

(assert (=> b!41684 (= lt!16719 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16720 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2687 (_ BitVec 32)) Bool)

(assert (=> b!41684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16720 mask!853)))

(declare-fun lt!16726 () Unit!1045)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2687 (_ BitVec 32) (_ BitVec 32)) Unit!1045)

(assert (=> b!41684 (= lt!16726 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16720 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2687 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41684 (= (arrayCountValidKeys!0 lt!16720 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16723 () Unit!1045)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2687 (_ BitVec 32) (_ BitVec 32)) Unit!1045)

(assert (=> b!41684 (= lt!16723 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16720 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41684 (= lt!16722 (array!2690 ((as const (Array (_ BitVec 32) ValueCell!654)) EmptyCell!654) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41684 (= lt!16720 (array!2688 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!215 (Int (_ BitVec 64)) V!2163)

(assert (=> b!41684 (= lt!16721 (dynLambda!215 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41687 () Bool)

(assert (=> b!41687 (= e!26363 true)))

(declare-fun lt!16724 () Bool)

(declare-fun contains!541 (ListLongMap!1119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!333 (array!2687 array!2689 (_ BitVec 32) (_ BitVec 32) V!2163 V!2163 (_ BitVec 32) Int) ListLongMap!1119)

(declare-fun head!870 (List!1118) tuple2!1538)

(assert (=> b!41687 (= lt!16724 (contains!541 (getCurrentListMap!333 lt!16720 lt!16722 mask!853 #b00000000000000000000000000000000 lt!16721 lt!16721 #b00000000000000000000000000000000 defaultEntry!470) (_1!779 (head!870 (toList!575 lt!16725)))))))

(declare-fun b!41685 () Bool)

(declare-fun res!24803 () Bool)

(assert (=> b!41685 (=> res!24803 e!26363)))

(declare-fun isEmpty!260 (List!1118) Bool)

(assert (=> b!41685 (= res!24803 (isEmpty!260 (toList!575 lt!16725)))))

(declare-fun b!41686 () Bool)

(declare-fun res!24805 () Bool)

(assert (=> b!41686 (=> res!24805 e!26363)))

(assert (=> b!41686 (= res!24805 (bvslt mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!5940 res!24804) b!41684))

(assert (= (and b!41684 (not res!24802)) b!41685))

(assert (= (and b!41685 (not res!24803)) b!41686))

(assert (= (and b!41686 (not res!24805)) b!41687))

(declare-fun b_lambda!2157 () Bool)

(assert (=> (not b_lambda!2157) (not b!41684)))

(declare-fun t!4034 () Bool)

(declare-fun tb!903 () Bool)

(assert (=> (and start!5940 (= defaultEntry!470 defaultEntry!470) t!4034) tb!903))

(declare-fun result!1549 () Bool)

(declare-fun tp_is_empty!1803 () Bool)

(assert (=> tb!903 (= result!1549 tp_is_empty!1803)))

(assert (=> b!41684 t!4034))

(declare-fun b_and!2487 () Bool)

(assert (= b_and!2485 (and (=> t!4034 result!1549) b_and!2487)))

(declare-fun m!35137 () Bool)

(assert (=> start!5940 m!35137))

(declare-fun m!35139 () Bool)

(assert (=> b!41684 m!35139))

(declare-fun m!35141 () Bool)

(assert (=> b!41684 m!35141))

(declare-fun m!35143 () Bool)

(assert (=> b!41684 m!35143))

(declare-fun m!35145 () Bool)

(assert (=> b!41684 m!35145))

(declare-fun m!35147 () Bool)

(assert (=> b!41684 m!35147))

(declare-fun m!35149 () Bool)

(assert (=> b!41684 m!35149))

(declare-fun m!35151 () Bool)

(assert (=> b!41684 m!35151))

(declare-fun m!35153 () Bool)

(assert (=> b!41684 m!35153))

(declare-fun m!35155 () Bool)

(assert (=> b!41687 m!35155))

(declare-fun m!35157 () Bool)

(assert (=> b!41687 m!35157))

(assert (=> b!41687 m!35155))

(declare-fun m!35159 () Bool)

(assert (=> b!41687 m!35159))

(declare-fun m!35161 () Bool)

(assert (=> b!41685 m!35161))

(check-sat (not b!41685) (not b!41684) tp_is_empty!1803 b_and!2487 (not b_next!1413) (not b_lambda!2157) (not b!41687) (not start!5940))
(check-sat b_and!2487 (not b_next!1413))
