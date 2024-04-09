; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111900 () Bool)

(assert start!111900)

(declare-fun b_free!30463 () Bool)

(declare-fun b_next!30463 () Bool)

(assert (=> start!111900 (= b_free!30463 (not b_next!30463))))

(declare-fun tp!106870 () Bool)

(declare-fun b_and!49031 () Bool)

(assert (=> start!111900 (= tp!106870 b_and!49031)))

(declare-fun b!1325282 () Bool)

(declare-fun res!879657 () Bool)

(declare-fun e!755543 () Bool)

(assert (=> b!1325282 (=> (not res!879657) (not e!755543))))

(declare-datatypes ((array!89435 0))(
  ( (array!89436 (arr!43186 (Array (_ BitVec 32) (_ BitVec 64))) (size!43737 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89435)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53481 0))(
  ( (V!53482 (val!18216 Int)) )
))
(declare-datatypes ((ValueCell!17243 0))(
  ( (ValueCellFull!17243 (v!20847 V!53481)) (EmptyCell!17243) )
))
(declare-datatypes ((array!89437 0))(
  ( (array!89438 (arr!43187 (Array (_ BitVec 32) ValueCell!17243)) (size!43738 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89437)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325282 (= res!879657 (and (= (size!43738 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43737 _keys!1609) (size!43738 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325283 () Bool)

(declare-fun e!755545 () Bool)

(declare-fun tp_is_empty!36283 () Bool)

(assert (=> b!1325283 (= e!755545 tp_is_empty!36283)))

(declare-fun b!1325284 () Bool)

(declare-fun e!755542 () Bool)

(assert (=> b!1325284 (= e!755542 tp_is_empty!36283)))

(declare-fun b!1325285 () Bool)

(declare-fun res!879654 () Bool)

(assert (=> b!1325285 (=> (not res!879654) (not e!755543))))

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1325285 (= res!879654 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43737 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325286 () Bool)

(declare-fun res!879656 () Bool)

(assert (=> b!1325286 (=> (not res!879656) (not e!755543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325286 (= res!879656 (validKeyInArray!0 (select (arr!43186 _keys!1609) from!2000)))))

(declare-fun b!1325287 () Bool)

(declare-fun res!879660 () Bool)

(assert (=> b!1325287 (=> (not res!879660) (not e!755543))))

(assert (=> b!1325287 (= res!879660 (not (= (select (arr!43186 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1325288 () Bool)

(assert (=> b!1325288 (= e!755543 false)))

(declare-fun zeroValue!1279 () V!53481)

(declare-fun minValue!1279 () V!53481)

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589711 () Bool)

(declare-datatypes ((tuple2!23644 0))(
  ( (tuple2!23645 (_1!11832 (_ BitVec 64)) (_2!11832 V!53481)) )
))
(declare-datatypes ((List!30813 0))(
  ( (Nil!30810) (Cons!30809 (h!32018 tuple2!23644) (t!44754 List!30813)) )
))
(declare-datatypes ((ListLongMap!21313 0))(
  ( (ListLongMap!21314 (toList!10672 List!30813)) )
))
(declare-fun contains!8765 (ListLongMap!21313 (_ BitVec 64)) Bool)

(declare-fun +!4588 (ListLongMap!21313 tuple2!23644) ListLongMap!21313)

(declare-fun getCurrentListMapNoExtraKeys!6306 (array!89435 array!89437 (_ BitVec 32) (_ BitVec 32) V!53481 V!53481 (_ BitVec 32) Int) ListLongMap!21313)

(declare-fun get!21793 (ValueCell!17243 V!53481) V!53481)

(declare-fun dynLambda!3625 (Int (_ BitVec 64)) V!53481)

(assert (=> b!1325288 (= lt!589711 (contains!8765 (+!4588 (+!4588 (+!4588 (getCurrentListMapNoExtraKeys!6306 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23645 (select (arr!43186 _keys!1609) from!2000) (get!21793 (select (arr!43187 _values!1337) from!2000) (dynLambda!3625 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164))))

(declare-fun res!879658 () Bool)

(assert (=> start!111900 (=> (not res!879658) (not e!755543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111900 (= res!879658 (validMask!0 mask!2019))))

(assert (=> start!111900 e!755543))

(declare-fun array_inv!32541 (array!89435) Bool)

(assert (=> start!111900 (array_inv!32541 _keys!1609)))

(assert (=> start!111900 true))

(assert (=> start!111900 tp_is_empty!36283))

(declare-fun e!755541 () Bool)

(declare-fun array_inv!32542 (array!89437) Bool)

(assert (=> start!111900 (and (array_inv!32542 _values!1337) e!755541)))

(assert (=> start!111900 tp!106870))

(declare-fun b!1325289 () Bool)

(declare-fun res!879653 () Bool)

(assert (=> b!1325289 (=> (not res!879653) (not e!755543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89435 (_ BitVec 32)) Bool)

(assert (=> b!1325289 (= res!879653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325290 () Bool)

(declare-fun mapRes!56076 () Bool)

(assert (=> b!1325290 (= e!755541 (and e!755542 mapRes!56076))))

(declare-fun condMapEmpty!56076 () Bool)

(declare-fun mapDefault!56076 () ValueCell!17243)

