; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6044 () Bool)

(assert start!6044)

(declare-fun b_free!1445 () Bool)

(declare-fun b_next!1445 () Bool)

(assert (=> start!6044 (= b_free!1445 (not b_next!1445))))

(declare-fun tp!5855 () Bool)

(declare-fun b_and!2549 () Bool)

(assert (=> start!6044 (= tp!5855 b_and!2549)))

(declare-fun b!42063 () Bool)

(declare-datatypes ((Unit!1081 0))(
  ( (Unit!1082) )
))
(declare-fun e!26594 () Unit!1081)

(declare-fun Unit!1083 () Unit!1081)

(assert (=> b!42063 (= e!26594 Unit!1083)))

(declare-fun res!25042 () Bool)

(declare-fun e!26593 () Bool)

(assert (=> start!6044 (=> (not res!25042) (not e!26593))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6044 (= res!25042 (validMask!0 mask!853))))

(assert (=> start!6044 e!26593))

(assert (=> start!6044 true))

(assert (=> start!6044 tp!5855))

(declare-fun b!42061 () Bool)

(assert (=> b!42061 (= e!26593 (not true))))

(declare-fun lt!17236 () Bool)

(declare-datatypes ((array!2751 0))(
  ( (array!2752 (arr!1319 (Array (_ BitVec 32) (_ BitVec 64))) (size!1477 (_ BitVec 32))) )
))
(declare-datatypes ((V!2205 0))(
  ( (V!2206 (val!956 Int)) )
))
(declare-datatypes ((ValueCell!670 0))(
  ( (ValueCellFull!670 (v!2039 V!2205)) (EmptyCell!670) )
))
(declare-datatypes ((array!2753 0))(
  ( (array!2754 (arr!1320 (Array (_ BitVec 32) ValueCell!670)) (size!1478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!320 0))(
  ( (LongMapFixedSize!321 (defaultEntry!1853 Int) (mask!5285 (_ BitVec 32)) (extraKeys!1744 (_ BitVec 32)) (zeroValue!1771 V!2205) (minValue!1771 V!2205) (_size!209 (_ BitVec 32)) (_keys!3366 array!2751) (_values!1836 array!2753) (_vacant!209 (_ BitVec 32))) )
))
(declare-fun lt!17244 () LongMapFixedSize!320)

(declare-fun valid!127 (LongMapFixedSize!320) Bool)

(assert (=> b!42061 (= lt!17236 (valid!127 lt!17244))))

(declare-fun lt!17240 () Unit!1081)

(assert (=> b!42061 (= lt!17240 e!26594)))

(declare-fun c!5263 () Bool)

(declare-datatypes ((tuple2!1570 0))(
  ( (tuple2!1571 (_1!795 (_ BitVec 64)) (_2!795 V!2205)) )
))
(declare-datatypes ((List!1150 0))(
  ( (Nil!1147) (Cons!1146 (h!1723 tuple2!1570) (t!4099 List!1150)) )
))
(declare-datatypes ((ListLongMap!1151 0))(
  ( (ListLongMap!1152 (toList!591 List!1150)) )
))
(declare-fun lt!17233 () ListLongMap!1151)

(assert (=> b!42061 (= c!5263 (not (= lt!17233 (ListLongMap!1152 Nil!1147))))))

(declare-fun map!759 (LongMapFixedSize!320) ListLongMap!1151)

(assert (=> b!42061 (= lt!17233 (map!759 lt!17244))))

(declare-fun lt!17238 () array!2751)

(declare-datatypes ((List!1151 0))(
  ( (Nil!1148) (Cons!1147 (h!1724 (_ BitVec 64)) (t!4100 List!1151)) )
))
(declare-fun arrayNoDuplicates!0 (array!2751 (_ BitVec 32) List!1151) Bool)

(assert (=> b!42061 (arrayNoDuplicates!0 lt!17238 #b00000000000000000000000000000000 Nil!1148)))

(declare-fun lt!17242 () Unit!1081)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2751 (_ BitVec 32) (_ BitVec 32) List!1151) Unit!1081)

(assert (=> b!42061 (= lt!17242 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17238 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2751 (_ BitVec 32)) Bool)

(assert (=> b!42061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17238 mask!853)))

(declare-fun lt!17234 () Unit!1081)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2751 (_ BitVec 32) (_ BitVec 32)) Unit!1081)

(assert (=> b!42061 (= lt!17234 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17238 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2751 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42061 (= (arrayCountValidKeys!0 lt!17238 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17243 () Unit!1081)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2751 (_ BitVec 32) (_ BitVec 32)) Unit!1081)

(assert (=> b!42061 (= lt!17243 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17238 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!17245 () V!2205)

(declare-fun lt!17235 () array!2753)

(assert (=> b!42061 (= lt!17244 (LongMapFixedSize!321 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17245 lt!17245 #b00000000000000000000000000000000 lt!17238 lt!17235 #b00000000000000000000000000000000))))

(assert (=> b!42061 (= lt!17235 (array!2754 ((as const (Array (_ BitVec 32) ValueCell!670)) EmptyCell!670) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42061 (= lt!17238 (array!2752 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!231 (Int (_ BitVec 64)) V!2205)

(assert (=> b!42061 (= lt!17245 (dynLambda!231 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42062 () Bool)

(declare-fun Unit!1084 () Unit!1081)

(assert (=> b!42062 (= e!26594 Unit!1084)))

(declare-fun lt!17239 () tuple2!1570)

(declare-fun head!886 (List!1150) tuple2!1570)

(assert (=> b!42062 (= lt!17239 (head!886 (toList!591 lt!17233)))))

(declare-fun lt!17241 () Unit!1081)

(declare-fun lemmaKeyInListMapIsInArray!104 (array!2751 array!2753 (_ BitVec 32) (_ BitVec 32) V!2205 V!2205 (_ BitVec 64) Int) Unit!1081)

(assert (=> b!42062 (= lt!17241 (lemmaKeyInListMapIsInArray!104 lt!17238 lt!17235 mask!853 #b00000000000000000000000000000000 lt!17245 lt!17245 (_1!795 lt!17239) defaultEntry!470))))

(declare-fun res!25041 () Bool)

(assert (=> b!42062 (= res!25041 (and (not (= (_1!795 lt!17239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!795 lt!17239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!26595 () Bool)

(assert (=> b!42062 (=> (not res!25041) (not e!26595))))

(assert (=> b!42062 e!26595))

(declare-fun lt!17237 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2751 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42062 (= lt!17237 (arrayScanForKey!0 lt!17238 (_1!795 lt!17239) #b00000000000000000000000000000000))))

(assert (=> b!42062 false))

(declare-fun b!42064 () Bool)

(declare-fun arrayContainsKey!0 (array!2751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42064 (= e!26595 (arrayContainsKey!0 lt!17238 (_1!795 lt!17239) #b00000000000000000000000000000000))))

(assert (= (and start!6044 res!25042) b!42061))

(assert (= (and b!42061 c!5263) b!42062))

(assert (= (and b!42061 (not c!5263)) b!42063))

(assert (= (and b!42062 res!25041) b!42064))

(declare-fun b_lambda!2195 () Bool)

(assert (=> (not b_lambda!2195) (not b!42061)))

(declare-fun t!4098 () Bool)

(declare-fun tb!935 () Bool)

(assert (=> (and start!6044 (= defaultEntry!470 defaultEntry!470) t!4098) tb!935))

(declare-fun result!1613 () Bool)

(declare-fun tp_is_empty!1835 () Bool)

(assert (=> tb!935 (= result!1613 tp_is_empty!1835)))

(assert (=> b!42061 t!4098))

(declare-fun b_and!2551 () Bool)

(assert (= b_and!2549 (and (=> t!4098 result!1613) b_and!2551)))

(declare-fun m!35647 () Bool)

(assert (=> start!6044 m!35647))

(declare-fun m!35649 () Bool)

(assert (=> b!42061 m!35649))

(declare-fun m!35651 () Bool)

(assert (=> b!42061 m!35651))

(declare-fun m!35653 () Bool)

(assert (=> b!42061 m!35653))

(declare-fun m!35655 () Bool)

(assert (=> b!42061 m!35655))

(declare-fun m!35657 () Bool)

(assert (=> b!42061 m!35657))

(declare-fun m!35659 () Bool)

(assert (=> b!42061 m!35659))

(declare-fun m!35661 () Bool)

(assert (=> b!42061 m!35661))

(declare-fun m!35663 () Bool)

(assert (=> b!42061 m!35663))

(declare-fun m!35665 () Bool)

(assert (=> b!42061 m!35665))

(declare-fun m!35667 () Bool)

(assert (=> b!42062 m!35667))

(declare-fun m!35669 () Bool)

(assert (=> b!42062 m!35669))

(declare-fun m!35671 () Bool)

(assert (=> b!42062 m!35671))

(declare-fun m!35673 () Bool)

(assert (=> b!42064 m!35673))

(push 1)

(assert b_and!2551)

(assert (not b_next!1445))

(assert tp_is_empty!1835)

(assert (not b!42062))

(assert (not b!42064))

(assert (not b_lambda!2195))

(assert (not b!42061))

(assert (not start!6044))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2551)

(assert (not b_next!1445))

(check-sat)

(pop 1)

