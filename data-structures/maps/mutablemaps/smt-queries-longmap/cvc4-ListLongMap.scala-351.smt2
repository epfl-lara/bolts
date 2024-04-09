; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6458 () Bool)

(assert start!6458)

(declare-fun b_free!1487 () Bool)

(declare-fun b_next!1487 () Bool)

(assert (=> start!6458 (= b_free!1487 (not b_next!1487))))

(declare-fun tp!5918 () Bool)

(declare-fun b_and!2633 () Bool)

(assert (=> start!6458 (= tp!5918 b_and!2633)))

(declare-fun res!25531 () Bool)

(declare-fun e!27255 () Bool)

(assert (=> start!6458 (=> (not res!25531) (not e!27255))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6458 (= res!25531 (validMask!0 mask!853))))

(assert (=> start!6458 e!27255))

(assert (=> start!6458 true))

(assert (=> start!6458 tp!5918))

(declare-fun b!42991 () Bool)

(assert (=> b!42991 (= e!27255 (not true))))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2895 0))(
  ( (array!2896 (arr!1391 (Array (_ BitVec 32) (_ BitVec 64))) (size!1576 (_ BitVec 32))) )
))
(declare-fun lt!18237 () array!2895)

(declare-datatypes ((V!2289 0))(
  ( (V!2290 (val!977 Int)) )
))
(declare-datatypes ((tuple2!1612 0))(
  ( (tuple2!1613 (_1!816 (_ BitVec 64)) (_2!816 V!2289)) )
))
(declare-datatypes ((List!1198 0))(
  ( (Nil!1195) (Cons!1194 (h!1771 tuple2!1612) (t!4189 List!1198)) )
))
(declare-datatypes ((ListLongMap!1193 0))(
  ( (ListLongMap!1194 (toList!612 List!1198)) )
))
(declare-fun lt!18239 () ListLongMap!1193)

(declare-fun lt!18240 () V!2289)

(declare-datatypes ((ValueCell!691 0))(
  ( (ValueCellFull!691 (v!2066 V!2289)) (EmptyCell!691) )
))
(declare-datatypes ((array!2897 0))(
  ( (array!2898 (arr!1392 (Array (_ BitVec 32) ValueCell!691)) (size!1577 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!362 0))(
  ( (LongMapFixedSize!363 (defaultEntry!1874 Int) (mask!5417 (_ BitVec 32)) (extraKeys!1765 (_ BitVec 32)) (zeroValue!1792 V!2289) (minValue!1792 V!2289) (_size!230 (_ BitVec 32)) (_keys!3423 array!2895) (_values!1857 array!2897) (_vacant!230 (_ BitVec 32))) )
))
(declare-fun map!822 (LongMapFixedSize!362) ListLongMap!1193)

(assert (=> b!42991 (= lt!18239 (map!822 (LongMapFixedSize!363 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18240 lt!18240 #b00000000000000000000000000000000 lt!18237 (array!2898 ((as const (Array (_ BitVec 32) ValueCell!691)) EmptyCell!691) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1199 0))(
  ( (Nil!1196) (Cons!1195 (h!1772 (_ BitVec 64)) (t!4190 List!1199)) )
))
(declare-fun arrayNoDuplicates!0 (array!2895 (_ BitVec 32) List!1199) Bool)

(assert (=> b!42991 (arrayNoDuplicates!0 lt!18237 #b00000000000000000000000000000000 Nil!1196)))

(declare-datatypes ((Unit!1185 0))(
  ( (Unit!1186) )
))
(declare-fun lt!18241 () Unit!1185)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2895 (_ BitVec 32) (_ BitVec 32) List!1199) Unit!1185)

(assert (=> b!42991 (= lt!18241 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18237 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2895 (_ BitVec 32)) Bool)

(assert (=> b!42991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18237 mask!853)))

(declare-fun lt!18238 () Unit!1185)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2895 (_ BitVec 32) (_ BitVec 32)) Unit!1185)

(assert (=> b!42991 (= lt!18238 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18237 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2895 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42991 (= (arrayCountValidKeys!0 lt!18237 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18236 () Unit!1185)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2895 (_ BitVec 32) (_ BitVec 32)) Unit!1185)

(assert (=> b!42991 (= lt!18236 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18237 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42991 (= lt!18237 (array!2896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!252 (Int (_ BitVec 64)) V!2289)

(assert (=> b!42991 (= lt!18240 (dynLambda!252 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6458 res!25531) b!42991))

(declare-fun b_lambda!2249 () Bool)

(assert (=> (not b_lambda!2249) (not b!42991)))

(declare-fun t!4188 () Bool)

(declare-fun tb!977 () Bool)

(assert (=> (and start!6458 (= defaultEntry!470 defaultEntry!470) t!4188) tb!977))

(declare-fun result!1697 () Bool)

(declare-fun tp_is_empty!1877 () Bool)

(assert (=> tb!977 (= result!1697 tp_is_empty!1877)))

(assert (=> b!42991 t!4188))

(declare-fun b_and!2635 () Bool)

(assert (= b_and!2633 (and (=> t!4188 result!1697) b_and!2635)))

(declare-fun m!36821 () Bool)

(assert (=> start!6458 m!36821))

(declare-fun m!36823 () Bool)

(assert (=> b!42991 m!36823))

(declare-fun m!36825 () Bool)

(assert (=> b!42991 m!36825))

(declare-fun m!36827 () Bool)

(assert (=> b!42991 m!36827))

(declare-fun m!36829 () Bool)

(assert (=> b!42991 m!36829))

(declare-fun m!36831 () Bool)

(assert (=> b!42991 m!36831))

(declare-fun m!36833 () Bool)

(assert (=> b!42991 m!36833))

(declare-fun m!36835 () Bool)

(assert (=> b!42991 m!36835))

(declare-fun m!36837 () Bool)

(assert (=> b!42991 m!36837))

(push 1)

(assert tp_is_empty!1877)

(assert (not b!42991))

(assert (not b_lambda!2249))

(assert (not start!6458))

(assert (not b_next!1487))

(assert b_and!2635)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2635)

(assert (not b_next!1487))

(check-sat)

(pop 1)

