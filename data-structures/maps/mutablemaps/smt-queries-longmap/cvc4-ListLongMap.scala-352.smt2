; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6464 () Bool)

(assert start!6464)

(declare-fun b_free!1493 () Bool)

(declare-fun b_next!1493 () Bool)

(assert (=> start!6464 (= b_free!1493 (not b_next!1493))))

(declare-fun tp!5927 () Bool)

(declare-fun b_and!2645 () Bool)

(assert (=> start!6464 (= tp!5927 b_and!2645)))

(declare-fun res!25540 () Bool)

(declare-fun e!27264 () Bool)

(assert (=> start!6464 (=> (not res!25540) (not e!27264))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6464 (= res!25540 (validMask!0 mask!853))))

(assert (=> start!6464 e!27264))

(assert (=> start!6464 true))

(assert (=> start!6464 tp!5927))

(declare-fun b!43006 () Bool)

(assert (=> b!43006 (= e!27264 (not true))))

(declare-datatypes ((V!2297 0))(
  ( (V!2298 (val!980 Int)) )
))
(declare-fun lt!18294 () V!2297)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2907 0))(
  ( (array!2908 (arr!1397 (Array (_ BitVec 32) (_ BitVec 64))) (size!1582 (_ BitVec 32))) )
))
(declare-fun lt!18293 () array!2907)

(declare-datatypes ((tuple2!1618 0))(
  ( (tuple2!1619 (_1!819 (_ BitVec 64)) (_2!819 V!2297)) )
))
(declare-datatypes ((List!1204 0))(
  ( (Nil!1201) (Cons!1200 (h!1777 tuple2!1618) (t!4201 List!1204)) )
))
(declare-datatypes ((ListLongMap!1199 0))(
  ( (ListLongMap!1200 (toList!615 List!1204)) )
))
(declare-fun lt!18290 () ListLongMap!1199)

(declare-datatypes ((ValueCell!694 0))(
  ( (ValueCellFull!694 (v!2069 V!2297)) (EmptyCell!694) )
))
(declare-datatypes ((array!2909 0))(
  ( (array!2910 (arr!1398 (Array (_ BitVec 32) ValueCell!694)) (size!1583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!368 0))(
  ( (LongMapFixedSize!369 (defaultEntry!1877 Int) (mask!5422 (_ BitVec 32)) (extraKeys!1768 (_ BitVec 32)) (zeroValue!1795 V!2297) (minValue!1795 V!2297) (_size!233 (_ BitVec 32)) (_keys!3426 array!2907) (_values!1860 array!2909) (_vacant!233 (_ BitVec 32))) )
))
(declare-fun map!827 (LongMapFixedSize!368) ListLongMap!1199)

(assert (=> b!43006 (= lt!18290 (map!827 (LongMapFixedSize!369 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18294 lt!18294 #b00000000000000000000000000000000 lt!18293 (array!2910 ((as const (Array (_ BitVec 32) ValueCell!694)) EmptyCell!694) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1205 0))(
  ( (Nil!1202) (Cons!1201 (h!1778 (_ BitVec 64)) (t!4202 List!1205)) )
))
(declare-fun arrayNoDuplicates!0 (array!2907 (_ BitVec 32) List!1205) Bool)

(assert (=> b!43006 (arrayNoDuplicates!0 lt!18293 #b00000000000000000000000000000000 Nil!1202)))

(declare-datatypes ((Unit!1191 0))(
  ( (Unit!1192) )
))
(declare-fun lt!18291 () Unit!1191)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2907 (_ BitVec 32) (_ BitVec 32) List!1205) Unit!1191)

(assert (=> b!43006 (= lt!18291 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2907 (_ BitVec 32)) Bool)

(assert (=> b!43006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18293 mask!853)))

(declare-fun lt!18292 () Unit!1191)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2907 (_ BitVec 32) (_ BitVec 32)) Unit!1191)

(assert (=> b!43006 (= lt!18292 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18293 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2907 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43006 (= (arrayCountValidKeys!0 lt!18293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18295 () Unit!1191)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2907 (_ BitVec 32) (_ BitVec 32)) Unit!1191)

(assert (=> b!43006 (= lt!18295 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43006 (= lt!18293 (array!2908 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!255 (Int (_ BitVec 64)) V!2297)

(assert (=> b!43006 (= lt!18294 (dynLambda!255 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6464 res!25540) b!43006))

(declare-fun b_lambda!2255 () Bool)

(assert (=> (not b_lambda!2255) (not b!43006)))

(declare-fun t!4200 () Bool)

(declare-fun tb!983 () Bool)

(assert (=> (and start!6464 (= defaultEntry!470 defaultEntry!470) t!4200) tb!983))

(declare-fun result!1709 () Bool)

(declare-fun tp_is_empty!1883 () Bool)

(assert (=> tb!983 (= result!1709 tp_is_empty!1883)))

(assert (=> b!43006 t!4200))

(declare-fun b_and!2647 () Bool)

(assert (= b_and!2645 (and (=> t!4200 result!1709) b_and!2647)))

(declare-fun m!36875 () Bool)

(assert (=> start!6464 m!36875))

(declare-fun m!36877 () Bool)

(assert (=> b!43006 m!36877))

(declare-fun m!36879 () Bool)

(assert (=> b!43006 m!36879))

(declare-fun m!36881 () Bool)

(assert (=> b!43006 m!36881))

(declare-fun m!36883 () Bool)

(assert (=> b!43006 m!36883))

(declare-fun m!36885 () Bool)

(assert (=> b!43006 m!36885))

(declare-fun m!36887 () Bool)

(assert (=> b!43006 m!36887))

(declare-fun m!36889 () Bool)

(assert (=> b!43006 m!36889))

(declare-fun m!36891 () Bool)

(assert (=> b!43006 m!36891))

(push 1)

(assert tp_is_empty!1883)

(assert (not start!6464))

(assert (not b_next!1493))

(assert b_and!2647)

(assert (not b_lambda!2255))

(assert (not b!43006))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2647)

(assert (not b_next!1493))

(check-sat)

(pop 1)

