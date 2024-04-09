; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5908 () Bool)

(assert start!5908)

(declare-fun b_free!1381 () Bool)

(declare-fun b_next!1381 () Bool)

(assert (=> start!5908 (= b_free!1381 (not b_next!1381))))

(declare-fun tp!5759 () Bool)

(declare-fun b_and!2421 () Bool)

(assert (=> start!5908 (= tp!5759 b_and!2421)))

(declare-fun b!41463 () Bool)

(declare-fun e!26268 () Bool)

(assert (=> b!41463 (= e!26268 true)))

(declare-fun lt!16337 () Bool)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2623 0))(
  ( (array!2624 (arr!1255 (Array (_ BitVec 32) (_ BitVec 64))) (size!1407 (_ BitVec 32))) )
))
(declare-fun lt!16338 () array!2623)

(declare-datatypes ((V!2121 0))(
  ( (V!2122 (val!924 Int)) )
))
(declare-datatypes ((tuple2!1506 0))(
  ( (tuple2!1507 (_1!763 (_ BitVec 64)) (_2!763 V!2121)) )
))
(declare-datatypes ((List!1086 0))(
  ( (Nil!1083) (Cons!1082 (h!1659 tuple2!1506) (t!3971 List!1086)) )
))
(declare-datatypes ((ListLongMap!1087 0))(
  ( (ListLongMap!1088 (toList!559 List!1086)) )
))
(declare-fun lt!16341 () ListLongMap!1087)

(declare-datatypes ((ValueCell!638 0))(
  ( (ValueCellFull!638 (v!2007 V!2121)) (EmptyCell!638) )
))
(declare-datatypes ((array!2625 0))(
  ( (array!2626 (arr!1256 (Array (_ BitVec 32) ValueCell!638)) (size!1408 (_ BitVec 32))) )
))
(declare-fun lt!16342 () array!2625)

(declare-fun lt!16336 () V!2121)

(declare-fun contains!525 (ListLongMap!1087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!317 (array!2623 array!2625 (_ BitVec 32) (_ BitVec 32) V!2121 V!2121 (_ BitVec 32) Int) ListLongMap!1087)

(declare-fun head!854 (List!1086) tuple2!1506)

(assert (=> b!41463 (= lt!16337 (contains!525 (getCurrentListMap!317 lt!16338 lt!16342 mask!853 #b00000000000000000000000000000000 lt!16336 lt!16336 #b00000000000000000000000000000000 defaultEntry!470) (_1!763 (head!854 (toList!559 lt!16341)))))))

(declare-fun b!41460 () Bool)

(declare-fun e!26267 () Bool)

(assert (=> b!41460 (= e!26267 (not e!26268))))

(declare-fun res!24612 () Bool)

(assert (=> b!41460 (=> res!24612 e!26268)))

(assert (=> b!41460 (= res!24612 (= lt!16341 (ListLongMap!1088 Nil!1083)))))

(declare-datatypes ((LongMapFixedSize!256 0))(
  ( (LongMapFixedSize!257 (defaultEntry!1818 Int) (mask!5221 (_ BitVec 32)) (extraKeys!1709 (_ BitVec 32)) (zeroValue!1736 V!2121) (minValue!1736 V!2121) (_size!177 (_ BitVec 32)) (_keys!3325 array!2623) (_values!1801 array!2625) (_vacant!177 (_ BitVec 32))) )
))
(declare-fun map!707 (LongMapFixedSize!256) ListLongMap!1087)

(assert (=> b!41460 (= lt!16341 (map!707 (LongMapFixedSize!257 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16336 lt!16336 #b00000000000000000000000000000000 lt!16338 lt!16342 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1087 0))(
  ( (Nil!1084) (Cons!1083 (h!1660 (_ BitVec 64)) (t!3972 List!1087)) )
))
(declare-fun arrayNoDuplicates!0 (array!2623 (_ BitVec 32) List!1087) Bool)

(assert (=> b!41460 (arrayNoDuplicates!0 lt!16338 #b00000000000000000000000000000000 Nil!1084)))

(declare-datatypes ((Unit!1013 0))(
  ( (Unit!1014) )
))
(declare-fun lt!16340 () Unit!1013)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2623 (_ BitVec 32) (_ BitVec 32) List!1087) Unit!1013)

(assert (=> b!41460 (= lt!16340 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16338 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2623 (_ BitVec 32)) Bool)

(assert (=> b!41460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16338 mask!853)))

(declare-fun lt!16339 () Unit!1013)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2623 (_ BitVec 32) (_ BitVec 32)) Unit!1013)

(assert (=> b!41460 (= lt!16339 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16338 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2623 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41460 (= (arrayCountValidKeys!0 lt!16338 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16335 () Unit!1013)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2623 (_ BitVec 32) (_ BitVec 32)) Unit!1013)

(assert (=> b!41460 (= lt!16335 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16338 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41460 (= lt!16342 (array!2626 ((as const (Array (_ BitVec 32) ValueCell!638)) EmptyCell!638) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41460 (= lt!16338 (array!2624 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!199 (Int (_ BitVec 64)) V!2121)

(assert (=> b!41460 (= lt!16336 (dynLambda!199 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41462 () Bool)

(declare-fun res!24610 () Bool)

(assert (=> b!41462 (=> res!24610 e!26268)))

(assert (=> b!41462 (= res!24610 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41461 () Bool)

(declare-fun res!24611 () Bool)

(assert (=> b!41461 (=> res!24611 e!26268)))

(declare-fun isEmpty!244 (List!1086) Bool)

(assert (=> b!41461 (= res!24611 (isEmpty!244 (toList!559 lt!16341)))))

(declare-fun res!24613 () Bool)

(assert (=> start!5908 (=> (not res!24613) (not e!26267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5908 (= res!24613 (validMask!0 mask!853))))

(assert (=> start!5908 e!26267))

(assert (=> start!5908 true))

(assert (=> start!5908 tp!5759))

(assert (= (and start!5908 res!24613) b!41460))

(assert (= (and b!41460 (not res!24612)) b!41461))

(assert (= (and b!41461 (not res!24611)) b!41462))

(assert (= (and b!41462 (not res!24610)) b!41463))

(declare-fun b_lambda!2125 () Bool)

(assert (=> (not b_lambda!2125) (not b!41460)))

(declare-fun t!3970 () Bool)

(declare-fun tb!871 () Bool)

(assert (=> (and start!5908 (= defaultEntry!470 defaultEntry!470) t!3970) tb!871))

(declare-fun result!1485 () Bool)

(declare-fun tp_is_empty!1771 () Bool)

(assert (=> tb!871 (= result!1485 tp_is_empty!1771)))

(assert (=> b!41460 t!3970))

(declare-fun b_and!2423 () Bool)

(assert (= b_and!2421 (and (=> t!3970 result!1485) b_and!2423)))

(declare-fun m!34721 () Bool)

(assert (=> b!41463 m!34721))

(declare-fun m!34723 () Bool)

(assert (=> b!41463 m!34723))

(assert (=> b!41463 m!34721))

(declare-fun m!34725 () Bool)

(assert (=> b!41463 m!34725))

(declare-fun m!34727 () Bool)

(assert (=> b!41460 m!34727))

(declare-fun m!34729 () Bool)

(assert (=> b!41460 m!34729))

(declare-fun m!34731 () Bool)

(assert (=> b!41460 m!34731))

(declare-fun m!34733 () Bool)

(assert (=> b!41460 m!34733))

(declare-fun m!34735 () Bool)

(assert (=> b!41460 m!34735))

(declare-fun m!34737 () Bool)

(assert (=> b!41460 m!34737))

(declare-fun m!34739 () Bool)

(assert (=> b!41460 m!34739))

(declare-fun m!34741 () Bool)

(assert (=> b!41460 m!34741))

(declare-fun m!34743 () Bool)

(assert (=> b!41461 m!34743))

(declare-fun m!34745 () Bool)

(assert (=> start!5908 m!34745))

(push 1)

(assert (not b!41460))

(assert (not b!41463))

(assert b_and!2423)

(assert (not start!5908))

(assert (not b_lambda!2125))

(assert (not b!41461))

(assert tp_is_empty!1771)

(assert (not b_next!1381))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2423)

(assert (not b_next!1381))

(check-sat)

(pop 1)

