; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5898 () Bool)

(assert start!5898)

(declare-fun b_free!1371 () Bool)

(declare-fun b_next!1371 () Bool)

(assert (=> start!5898 (= b_free!1371 (not b_next!1371))))

(declare-fun tp!5744 () Bool)

(declare-fun b_and!2401 () Bool)

(assert (=> start!5898 (= tp!5744 b_and!2401)))

(declare-fun res!24556 () Bool)

(declare-fun e!26237 () Bool)

(assert (=> start!5898 (=> (not res!24556) (not e!26237))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5898 (= res!24556 (validMask!0 mask!853))))

(assert (=> start!5898 e!26237))

(assert (=> start!5898 true))

(assert (=> start!5898 tp!5744))

(declare-fun b!41394 () Bool)

(declare-fun e!26238 () Bool)

(assert (=> b!41394 (= e!26237 (not e!26238))))

(declare-fun res!24555 () Bool)

(assert (=> b!41394 (=> res!24555 e!26238)))

(declare-datatypes ((V!2107 0))(
  ( (V!2108 (val!919 Int)) )
))
(declare-datatypes ((tuple2!1496 0))(
  ( (tuple2!1497 (_1!758 (_ BitVec 64)) (_2!758 V!2107)) )
))
(declare-datatypes ((List!1076 0))(
  ( (Nil!1073) (Cons!1072 (h!1649 tuple2!1496) (t!3951 List!1076)) )
))
(declare-datatypes ((ListLongMap!1077 0))(
  ( (ListLongMap!1078 (toList!554 List!1076)) )
))
(declare-fun lt!16227 () ListLongMap!1077)

(assert (=> b!41394 (= res!24555 (= lt!16227 (ListLongMap!1078 Nil!1073)))))

(declare-datatypes ((array!2603 0))(
  ( (array!2604 (arr!1245 (Array (_ BitVec 32) (_ BitVec 64))) (size!1397 (_ BitVec 32))) )
))
(declare-fun lt!16228 () array!2603)

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!16223 () V!2107)

(declare-datatypes ((ValueCell!633 0))(
  ( (ValueCellFull!633 (v!2002 V!2107)) (EmptyCell!633) )
))
(declare-datatypes ((array!2605 0))(
  ( (array!2606 (arr!1246 (Array (_ BitVec 32) ValueCell!633)) (size!1398 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!246 0))(
  ( (LongMapFixedSize!247 (defaultEntry!1813 Int) (mask!5212 (_ BitVec 32)) (extraKeys!1704 (_ BitVec 32)) (zeroValue!1731 V!2107) (minValue!1731 V!2107) (_size!172 (_ BitVec 32)) (_keys!3320 array!2603) (_values!1796 array!2605) (_vacant!172 (_ BitVec 32))) )
))
(declare-fun map!698 (LongMapFixedSize!246) ListLongMap!1077)

(assert (=> b!41394 (= lt!16227 (map!698 (LongMapFixedSize!247 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16223 lt!16223 #b00000000000000000000000000000000 lt!16228 (array!2606 ((as const (Array (_ BitVec 32) ValueCell!633)) EmptyCell!633) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1077 0))(
  ( (Nil!1074) (Cons!1073 (h!1650 (_ BitVec 64)) (t!3952 List!1077)) )
))
(declare-fun arrayNoDuplicates!0 (array!2603 (_ BitVec 32) List!1077) Bool)

(assert (=> b!41394 (arrayNoDuplicates!0 lt!16228 #b00000000000000000000000000000000 Nil!1074)))

(declare-datatypes ((Unit!1003 0))(
  ( (Unit!1004) )
))
(declare-fun lt!16224 () Unit!1003)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2603 (_ BitVec 32) (_ BitVec 32) List!1077) Unit!1003)

(assert (=> b!41394 (= lt!16224 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16228 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2603 (_ BitVec 32)) Bool)

(assert (=> b!41394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16228 mask!853)))

(declare-fun lt!16225 () Unit!1003)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2603 (_ BitVec 32) (_ BitVec 32)) Unit!1003)

(assert (=> b!41394 (= lt!16225 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16228 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2603 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41394 (= (arrayCountValidKeys!0 lt!16228 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16226 () Unit!1003)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2603 (_ BitVec 32) (_ BitVec 32)) Unit!1003)

(assert (=> b!41394 (= lt!16226 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16228 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41394 (= lt!16228 (array!2604 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!194 (Int (_ BitVec 64)) V!2107)

(assert (=> b!41394 (= lt!16223 (dynLambda!194 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41395 () Bool)

(declare-fun res!24554 () Bool)

(assert (=> b!41395 (=> res!24554 e!26238)))

(declare-fun isEmpty!239 (List!1076) Bool)

(assert (=> b!41395 (= res!24554 (isEmpty!239 (toList!554 lt!16227)))))

(declare-fun b!41396 () Bool)

(assert (=> b!41396 (= e!26238 (not (= (toList!554 lt!16227) Nil!1073)))))

(assert (= (and start!5898 res!24556) b!41394))

(assert (= (and b!41394 (not res!24555)) b!41395))

(assert (= (and b!41395 (not res!24554)) b!41396))

(declare-fun b_lambda!2115 () Bool)

(assert (=> (not b_lambda!2115) (not b!41394)))

(declare-fun t!3950 () Bool)

(declare-fun tb!861 () Bool)

(assert (=> (and start!5898 (= defaultEntry!470 defaultEntry!470) t!3950) tb!861))

(declare-fun result!1465 () Bool)

(declare-fun tp_is_empty!1761 () Bool)

(assert (=> tb!861 (= result!1465 tp_is_empty!1761)))

(assert (=> b!41394 t!3950))

(declare-fun b_and!2403 () Bool)

(assert (= b_and!2401 (and (=> t!3950 result!1465) b_and!2403)))

(declare-fun m!34603 () Bool)

(assert (=> start!5898 m!34603))

(declare-fun m!34605 () Bool)

(assert (=> b!41394 m!34605))

(declare-fun m!34607 () Bool)

(assert (=> b!41394 m!34607))

(declare-fun m!34609 () Bool)

(assert (=> b!41394 m!34609))

(declare-fun m!34611 () Bool)

(assert (=> b!41394 m!34611))

(declare-fun m!34613 () Bool)

(assert (=> b!41394 m!34613))

(declare-fun m!34615 () Bool)

(assert (=> b!41394 m!34615))

(declare-fun m!34617 () Bool)

(assert (=> b!41394 m!34617))

(declare-fun m!34619 () Bool)

(assert (=> b!41394 m!34619))

(declare-fun m!34621 () Bool)

(assert (=> b!41395 m!34621))

(check-sat (not b_lambda!2115) (not b!41394) (not b!41395) tp_is_empty!1761 (not b_next!1371) (not start!5898) b_and!2403)
(check-sat b_and!2403 (not b_next!1371))
