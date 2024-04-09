; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6470 () Bool)

(assert start!6470)

(declare-fun b_free!1499 () Bool)

(declare-fun b_next!1499 () Bool)

(assert (=> start!6470 (= b_free!1499 (not b_next!1499))))

(declare-fun tp!5936 () Bool)

(declare-fun b_and!2657 () Bool)

(assert (=> start!6470 (= tp!5936 b_and!2657)))

(declare-fun res!25549 () Bool)

(declare-fun e!27273 () Bool)

(assert (=> start!6470 (=> (not res!25549) (not e!27273))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6470 (= res!25549 (validMask!0 mask!853))))

(assert (=> start!6470 e!27273))

(assert (=> start!6470 true))

(assert (=> start!6470 tp!5936))

(declare-fun b!43021 () Bool)

(assert (=> b!43021 (= e!27273 (not true))))

(declare-datatypes ((V!2305 0))(
  ( (V!2306 (val!983 Int)) )
))
(declare-fun lt!18349 () V!2305)

(declare-datatypes ((tuple2!1624 0))(
  ( (tuple2!1625 (_1!822 (_ BitVec 64)) (_2!822 V!2305)) )
))
(declare-datatypes ((List!1210 0))(
  ( (Nil!1207) (Cons!1206 (h!1783 tuple2!1624) (t!4213 List!1210)) )
))
(declare-datatypes ((ListLongMap!1205 0))(
  ( (ListLongMap!1206 (toList!618 List!1210)) )
))
(declare-fun lt!18348 () ListLongMap!1205)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2919 0))(
  ( (array!2920 (arr!1403 (Array (_ BitVec 32) (_ BitVec 64))) (size!1588 (_ BitVec 32))) )
))
(declare-fun lt!18347 () array!2919)

(declare-datatypes ((ValueCell!697 0))(
  ( (ValueCellFull!697 (v!2072 V!2305)) (EmptyCell!697) )
))
(declare-datatypes ((array!2921 0))(
  ( (array!2922 (arr!1404 (Array (_ BitVec 32) ValueCell!697)) (size!1589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!374 0))(
  ( (LongMapFixedSize!375 (defaultEntry!1880 Int) (mask!5427 (_ BitVec 32)) (extraKeys!1771 (_ BitVec 32)) (zeroValue!1798 V!2305) (minValue!1798 V!2305) (_size!236 (_ BitVec 32)) (_keys!3429 array!2919) (_values!1863 array!2921) (_vacant!236 (_ BitVec 32))) )
))
(declare-fun map!832 (LongMapFixedSize!374) ListLongMap!1205)

(assert (=> b!43021 (= lt!18348 (map!832 (LongMapFixedSize!375 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18349 lt!18349 #b00000000000000000000000000000000 lt!18347 (array!2922 ((as const (Array (_ BitVec 32) ValueCell!697)) EmptyCell!697) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1211 0))(
  ( (Nil!1208) (Cons!1207 (h!1784 (_ BitVec 64)) (t!4214 List!1211)) )
))
(declare-fun arrayNoDuplicates!0 (array!2919 (_ BitVec 32) List!1211) Bool)

(assert (=> b!43021 (arrayNoDuplicates!0 lt!18347 #b00000000000000000000000000000000 Nil!1208)))

(declare-datatypes ((Unit!1197 0))(
  ( (Unit!1198) )
))
(declare-fun lt!18345 () Unit!1197)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2919 (_ BitVec 32) (_ BitVec 32) List!1211) Unit!1197)

(assert (=> b!43021 (= lt!18345 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18347 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2919 (_ BitVec 32)) Bool)

(assert (=> b!43021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18347 mask!853)))

(declare-fun lt!18344 () Unit!1197)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2919 (_ BitVec 32) (_ BitVec 32)) Unit!1197)

(assert (=> b!43021 (= lt!18344 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18347 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2919 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43021 (= (arrayCountValidKeys!0 lt!18347 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18346 () Unit!1197)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2919 (_ BitVec 32) (_ BitVec 32)) Unit!1197)

(assert (=> b!43021 (= lt!18346 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18347 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43021 (= lt!18347 (array!2920 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!258 (Int (_ BitVec 64)) V!2305)

(assert (=> b!43021 (= lt!18349 (dynLambda!258 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6470 res!25549) b!43021))

(declare-fun b_lambda!2261 () Bool)

(assert (=> (not b_lambda!2261) (not b!43021)))

(declare-fun t!4212 () Bool)

(declare-fun tb!989 () Bool)

(assert (=> (and start!6470 (= defaultEntry!470 defaultEntry!470) t!4212) tb!989))

(declare-fun result!1721 () Bool)

(declare-fun tp_is_empty!1889 () Bool)

(assert (=> tb!989 (= result!1721 tp_is_empty!1889)))

(assert (=> b!43021 t!4212))

(declare-fun b_and!2659 () Bool)

(assert (= b_and!2657 (and (=> t!4212 result!1721) b_and!2659)))

(declare-fun m!36929 () Bool)

(assert (=> start!6470 m!36929))

(declare-fun m!36931 () Bool)

(assert (=> b!43021 m!36931))

(declare-fun m!36933 () Bool)

(assert (=> b!43021 m!36933))

(declare-fun m!36935 () Bool)

(assert (=> b!43021 m!36935))

(declare-fun m!36937 () Bool)

(assert (=> b!43021 m!36937))

(declare-fun m!36939 () Bool)

(assert (=> b!43021 m!36939))

(declare-fun m!36941 () Bool)

(assert (=> b!43021 m!36941))

(declare-fun m!36943 () Bool)

(assert (=> b!43021 m!36943))

(declare-fun m!36945 () Bool)

(assert (=> b!43021 m!36945))

(push 1)

(assert (not b_lambda!2261))

(assert b_and!2659)

(assert (not b!43021))

(assert (not b_next!1499))

(assert (not start!6470))

(assert tp_is_empty!1889)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2659)

(assert (not b_next!1499))

(check-sat)

(pop 1)

