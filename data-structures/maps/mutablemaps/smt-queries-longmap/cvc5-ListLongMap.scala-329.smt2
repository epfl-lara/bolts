; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6034 () Bool)

(assert start!6034)

(declare-fun b_free!1435 () Bool)

(declare-fun b_next!1435 () Bool)

(assert (=> start!6034 (= b_free!1435 (not b_next!1435))))

(declare-fun tp!5840 () Bool)

(declare-fun b_and!2529 () Bool)

(assert (=> start!6034 (= tp!5840 b_and!2529)))

(declare-fun res!24998 () Bool)

(declare-fun e!26549 () Bool)

(assert (=> start!6034 (=> (not res!24998) (not e!26549))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6034 (= res!24998 (validMask!0 mask!853))))

(assert (=> start!6034 e!26549))

(assert (=> start!6034 true))

(assert (=> start!6034 tp!5840))

(declare-fun b!41991 () Bool)

(declare-fun e!26548 () Bool)

(assert (=> b!41991 (= e!26549 (not e!26548))))

(declare-fun res!24997 () Bool)

(assert (=> b!41991 (=> res!24997 e!26548)))

(declare-datatypes ((V!2193 0))(
  ( (V!2194 (val!951 Int)) )
))
(declare-datatypes ((tuple2!1560 0))(
  ( (tuple2!1561 (_1!790 (_ BitVec 64)) (_2!790 V!2193)) )
))
(declare-datatypes ((List!1140 0))(
  ( (Nil!1137) (Cons!1136 (h!1713 tuple2!1560) (t!4079 List!1140)) )
))
(declare-datatypes ((ListLongMap!1141 0))(
  ( (ListLongMap!1142 (toList!586 List!1140)) )
))
(declare-fun lt!17069 () ListLongMap!1141)

(assert (=> b!41991 (= res!24997 (= lt!17069 (ListLongMap!1142 Nil!1137)))))

(declare-fun lt!17074 () V!2193)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!665 0))(
  ( (ValueCellFull!665 (v!2034 V!2193)) (EmptyCell!665) )
))
(declare-datatypes ((array!2731 0))(
  ( (array!2732 (arr!1309 (Array (_ BitVec 32) ValueCell!665)) (size!1467 (_ BitVec 32))) )
))
(declare-fun lt!17070 () array!2731)

(declare-datatypes ((array!2733 0))(
  ( (array!2734 (arr!1310 (Array (_ BitVec 32) (_ BitVec 64))) (size!1468 (_ BitVec 32))) )
))
(declare-fun lt!17066 () array!2733)

(declare-datatypes ((LongMapFixedSize!310 0))(
  ( (LongMapFixedSize!311 (defaultEntry!1848 Int) (mask!5278 (_ BitVec 32)) (extraKeys!1739 (_ BitVec 32)) (zeroValue!1766 V!2193) (minValue!1766 V!2193) (_size!204 (_ BitVec 32)) (_keys!3361 array!2733) (_values!1831 array!2731) (_vacant!204 (_ BitVec 32))) )
))
(declare-fun map!752 (LongMapFixedSize!310) ListLongMap!1141)

(assert (=> b!41991 (= lt!17069 (map!752 (LongMapFixedSize!311 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17074 lt!17074 #b00000000000000000000000000000000 lt!17066 lt!17070 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1141 0))(
  ( (Nil!1138) (Cons!1137 (h!1714 (_ BitVec 64)) (t!4080 List!1141)) )
))
(declare-fun arrayNoDuplicates!0 (array!2733 (_ BitVec 32) List!1141) Bool)

(assert (=> b!41991 (arrayNoDuplicates!0 lt!17066 #b00000000000000000000000000000000 Nil!1138)))

(declare-datatypes ((Unit!1067 0))(
  ( (Unit!1068) )
))
(declare-fun lt!17071 () Unit!1067)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2733 (_ BitVec 32) (_ BitVec 32) List!1141) Unit!1067)

(assert (=> b!41991 (= lt!17071 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17066 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2733 (_ BitVec 32)) Bool)

(assert (=> b!41991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17066 mask!853)))

(declare-fun lt!17068 () Unit!1067)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2733 (_ BitVec 32) (_ BitVec 32)) Unit!1067)

(assert (=> b!41991 (= lt!17068 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17066 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2733 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41991 (= (arrayCountValidKeys!0 lt!17066 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17073 () Unit!1067)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2733 (_ BitVec 32) (_ BitVec 32)) Unit!1067)

(assert (=> b!41991 (= lt!17073 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17066 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41991 (= lt!17070 (array!2732 ((as const (Array (_ BitVec 32) ValueCell!665)) EmptyCell!665) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41991 (= lt!17066 (array!2734 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!226 (Int (_ BitVec 64)) V!2193)

(assert (=> b!41991 (= lt!17074 (dynLambda!226 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41992 () Bool)

(declare-fun res!25000 () Bool)

(assert (=> b!41992 (=> res!25000 e!26548)))

(declare-fun isEmpty!271 (List!1140) Bool)

(assert (=> b!41992 (= res!25000 (isEmpty!271 (toList!586 lt!17069)))))

(declare-fun b!41994 () Bool)

(declare-fun e!26550 () Bool)

(declare-fun lt!17067 () tuple2!1560)

(declare-fun arrayContainsKey!0 (array!2733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!41994 (= e!26550 (arrayContainsKey!0 lt!17066 (_1!790 lt!17067) #b00000000000000000000000000000000))))

(declare-fun b!41993 () Bool)

(assert (=> b!41993 (= e!26548 true)))

(assert (=> b!41993 e!26550))

(declare-fun res!24999 () Bool)

(assert (=> b!41993 (=> (not res!24999) (not e!26550))))

(assert (=> b!41993 (= res!24999 (and (not (= (_1!790 lt!17067) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!790 lt!17067) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!17072 () Unit!1067)

(declare-fun lemmaKeyInListMapIsInArray!99 (array!2733 array!2731 (_ BitVec 32) (_ BitVec 32) V!2193 V!2193 (_ BitVec 64) Int) Unit!1067)

(assert (=> b!41993 (= lt!17072 (lemmaKeyInListMapIsInArray!99 lt!17066 lt!17070 mask!853 #b00000000000000000000000000000000 lt!17074 lt!17074 (_1!790 lt!17067) defaultEntry!470))))

(declare-fun head!881 (List!1140) tuple2!1560)

(assert (=> b!41993 (= lt!17067 (head!881 (toList!586 lt!17069)))))

(assert (= (and start!6034 res!24998) b!41991))

(assert (= (and b!41991 (not res!24997)) b!41992))

(assert (= (and b!41992 (not res!25000)) b!41993))

(assert (= (and b!41993 res!24999) b!41994))

(declare-fun b_lambda!2185 () Bool)

(assert (=> (not b_lambda!2185) (not b!41991)))

(declare-fun t!4078 () Bool)

(declare-fun tb!925 () Bool)

(assert (=> (and start!6034 (= defaultEntry!470 defaultEntry!470) t!4078) tb!925))

(declare-fun result!1593 () Bool)

(declare-fun tp_is_empty!1825 () Bool)

(assert (=> tb!925 (= result!1593 tp_is_empty!1825)))

(assert (=> b!41991 t!4078))

(declare-fun b_and!2531 () Bool)

(assert (= b_and!2529 (and (=> t!4078 result!1593) b_and!2531)))

(declare-fun m!35513 () Bool)

(assert (=> b!41994 m!35513))

(declare-fun m!35515 () Bool)

(assert (=> b!41993 m!35515))

(declare-fun m!35517 () Bool)

(assert (=> b!41993 m!35517))

(declare-fun m!35519 () Bool)

(assert (=> b!41991 m!35519))

(declare-fun m!35521 () Bool)

(assert (=> b!41991 m!35521))

(declare-fun m!35523 () Bool)

(assert (=> b!41991 m!35523))

(declare-fun m!35525 () Bool)

(assert (=> b!41991 m!35525))

(declare-fun m!35527 () Bool)

(assert (=> b!41991 m!35527))

(declare-fun m!35529 () Bool)

(assert (=> b!41991 m!35529))

(declare-fun m!35531 () Bool)

(assert (=> b!41991 m!35531))

(declare-fun m!35533 () Bool)

(assert (=> b!41991 m!35533))

(declare-fun m!35535 () Bool)

(assert (=> b!41992 m!35535))

(declare-fun m!35537 () Bool)

(assert (=> start!6034 m!35537))

(push 1)

(assert (not b!41992))

(assert tp_is_empty!1825)

(assert (not b_lambda!2185))

(assert (not start!6034))

(assert (not b!41993))

(assert b_and!2531)

(assert (not b_next!1435))

(assert (not b!41994))

(assert (not b!41991))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2531)

(assert (not b_next!1435))

(check-sat)

(pop 1)

