; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5902 () Bool)

(assert start!5902)

(declare-fun b_free!1375 () Bool)

(declare-fun b_next!1375 () Bool)

(assert (=> start!5902 (= b_free!1375 (not b_next!1375))))

(declare-fun tp!5750 () Bool)

(declare-fun b_and!2409 () Bool)

(assert (=> start!5902 (= tp!5750 b_and!2409)))

(declare-fun b!41419 () Bool)

(declare-fun res!24577 () Bool)

(declare-fun e!26250 () Bool)

(assert (=> b!41419 (=> res!24577 e!26250)))

(declare-datatypes ((V!2113 0))(
  ( (V!2114 (val!921 Int)) )
))
(declare-datatypes ((tuple2!1500 0))(
  ( (tuple2!1501 (_1!760 (_ BitVec 64)) (_2!760 V!2113)) )
))
(declare-datatypes ((List!1080 0))(
  ( (Nil!1077) (Cons!1076 (h!1653 tuple2!1500) (t!3959 List!1080)) )
))
(declare-datatypes ((ListLongMap!1081 0))(
  ( (ListLongMap!1082 (toList!556 List!1080)) )
))
(declare-fun lt!16269 () ListLongMap!1081)

(declare-fun isEmpty!241 (List!1080) Bool)

(assert (=> b!41419 (= res!24577 (isEmpty!241 (toList!556 lt!16269)))))

(declare-fun res!24575 () Bool)

(declare-fun e!26249 () Bool)

(assert (=> start!5902 (=> (not res!24575) (not e!26249))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5902 (= res!24575 (validMask!0 mask!853))))

(assert (=> start!5902 e!26249))

(assert (=> start!5902 true))

(assert (=> start!5902 tp!5750))

(declare-fun b!41421 () Bool)

(assert (=> b!41421 (= e!26250 true)))

(declare-datatypes ((ValueCell!635 0))(
  ( (ValueCellFull!635 (v!2004 V!2113)) (EmptyCell!635) )
))
(declare-datatypes ((array!2611 0))(
  ( (array!2612 (arr!1249 (Array (_ BitVec 32) ValueCell!635)) (size!1401 (_ BitVec 32))) )
))
(declare-fun lt!16267 () array!2611)

(declare-fun lt!16263 () Bool)

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!16268 () V!2113)

(declare-datatypes ((array!2613 0))(
  ( (array!2614 (arr!1250 (Array (_ BitVec 32) (_ BitVec 64))) (size!1402 (_ BitVec 32))) )
))
(declare-fun lt!16264 () array!2613)

(declare-fun contains!522 (ListLongMap!1081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!314 (array!2613 array!2611 (_ BitVec 32) (_ BitVec 32) V!2113 V!2113 (_ BitVec 32) Int) ListLongMap!1081)

(declare-fun head!851 (List!1080) tuple2!1500)

(assert (=> b!41421 (= lt!16263 (contains!522 (getCurrentListMap!314 lt!16264 lt!16267 mask!853 #b00000000000000000000000000000000 lt!16268 lt!16268 #b00000000000000000000000000000000 defaultEntry!470) (_1!760 (head!851 (toList!556 lt!16269)))))))

(declare-fun b!41420 () Bool)

(declare-fun res!24576 () Bool)

(assert (=> b!41420 (=> res!24576 e!26250)))

(assert (=> b!41420 (= res!24576 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41418 () Bool)

(assert (=> b!41418 (= e!26249 (not e!26250))))

(declare-fun res!24574 () Bool)

(assert (=> b!41418 (=> res!24574 e!26250)))

(assert (=> b!41418 (= res!24574 (= lt!16269 (ListLongMap!1082 Nil!1077)))))

(declare-datatypes ((LongMapFixedSize!250 0))(
  ( (LongMapFixedSize!251 (defaultEntry!1815 Int) (mask!5216 (_ BitVec 32)) (extraKeys!1706 (_ BitVec 32)) (zeroValue!1733 V!2113) (minValue!1733 V!2113) (_size!174 (_ BitVec 32)) (_keys!3322 array!2613) (_values!1798 array!2611) (_vacant!174 (_ BitVec 32))) )
))
(declare-fun map!702 (LongMapFixedSize!250) ListLongMap!1081)

(assert (=> b!41418 (= lt!16269 (map!702 (LongMapFixedSize!251 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16268 lt!16268 #b00000000000000000000000000000000 lt!16264 lt!16267 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1081 0))(
  ( (Nil!1078) (Cons!1077 (h!1654 (_ BitVec 64)) (t!3960 List!1081)) )
))
(declare-fun arrayNoDuplicates!0 (array!2613 (_ BitVec 32) List!1081) Bool)

(assert (=> b!41418 (arrayNoDuplicates!0 lt!16264 #b00000000000000000000000000000000 Nil!1078)))

(declare-datatypes ((Unit!1007 0))(
  ( (Unit!1008) )
))
(declare-fun lt!16265 () Unit!1007)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2613 (_ BitVec 32) (_ BitVec 32) List!1081) Unit!1007)

(assert (=> b!41418 (= lt!16265 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16264 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2613 (_ BitVec 32)) Bool)

(assert (=> b!41418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16264 mask!853)))

(declare-fun lt!16270 () Unit!1007)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2613 (_ BitVec 32) (_ BitVec 32)) Unit!1007)

(assert (=> b!41418 (= lt!16270 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16264 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2613 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41418 (= (arrayCountValidKeys!0 lt!16264 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16266 () Unit!1007)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2613 (_ BitVec 32) (_ BitVec 32)) Unit!1007)

(assert (=> b!41418 (= lt!16266 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16264 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41418 (= lt!16267 (array!2612 ((as const (Array (_ BitVec 32) ValueCell!635)) EmptyCell!635) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41418 (= lt!16264 (array!2614 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!196 (Int (_ BitVec 64)) V!2113)

(assert (=> b!41418 (= lt!16268 (dynLambda!196 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5902 res!24575) b!41418))

(assert (= (and b!41418 (not res!24574)) b!41419))

(assert (= (and b!41419 (not res!24577)) b!41420))

(assert (= (and b!41420 (not res!24576)) b!41421))

(declare-fun b_lambda!2119 () Bool)

(assert (=> (not b_lambda!2119) (not b!41418)))

(declare-fun t!3958 () Bool)

(declare-fun tb!865 () Bool)

(assert (=> (and start!5902 (= defaultEntry!470 defaultEntry!470) t!3958) tb!865))

(declare-fun result!1473 () Bool)

(declare-fun tp_is_empty!1765 () Bool)

(assert (=> tb!865 (= result!1473 tp_is_empty!1765)))

(assert (=> b!41418 t!3958))

(declare-fun b_and!2411 () Bool)

(assert (= b_and!2409 (and (=> t!3958 result!1473) b_and!2411)))

(declare-fun m!34643 () Bool)

(assert (=> b!41419 m!34643))

(declare-fun m!34645 () Bool)

(assert (=> start!5902 m!34645))

(declare-fun m!34647 () Bool)

(assert (=> b!41421 m!34647))

(declare-fun m!34649 () Bool)

(assert (=> b!41421 m!34649))

(assert (=> b!41421 m!34647))

(declare-fun m!34651 () Bool)

(assert (=> b!41421 m!34651))

(declare-fun m!34653 () Bool)

(assert (=> b!41418 m!34653))

(declare-fun m!34655 () Bool)

(assert (=> b!41418 m!34655))

(declare-fun m!34657 () Bool)

(assert (=> b!41418 m!34657))

(declare-fun m!34659 () Bool)

(assert (=> b!41418 m!34659))

(declare-fun m!34661 () Bool)

(assert (=> b!41418 m!34661))

(declare-fun m!34663 () Bool)

(assert (=> b!41418 m!34663))

(declare-fun m!34665 () Bool)

(assert (=> b!41418 m!34665))

(declare-fun m!34667 () Bool)

(assert (=> b!41418 m!34667))

(push 1)

(assert (not b!41421))

(assert b_and!2411)

(assert (not b!41419))

(assert (not b!41418))

(assert (not start!5902))

(assert (not b_next!1375))

(assert tp_is_empty!1765)

(assert (not b_lambda!2119))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2411)

(assert (not b_next!1375))

(check-sat)

(pop 1)

