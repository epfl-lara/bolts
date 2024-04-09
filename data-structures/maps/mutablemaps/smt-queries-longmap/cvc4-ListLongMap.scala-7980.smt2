; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98760 () Bool)

(assert start!98760)

(declare-fun b_free!24329 () Bool)

(declare-fun b_next!24329 () Bool)

(assert (=> start!98760 (= b_free!24329 (not b_next!24329))))

(declare-fun tp!85698 () Bool)

(declare-fun b_and!39521 () Bool)

(assert (=> start!98760 (= tp!85698 b_and!39521)))

(declare-fun b!1150082 () Bool)

(declare-fun c!113770 () Bool)

(declare-fun lt!514548 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1150082 (= c!113770 (and (not lt!514548) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37737 0))(
  ( (Unit!37738) )
))
(declare-fun e!654176 () Unit!37737)

(declare-fun e!654180 () Unit!37737)

(assert (=> b!1150082 (= e!654176 e!654180)))

(declare-fun res!765124 () Bool)

(declare-fun e!654179 () Bool)

(assert (=> start!98760 (=> (not res!765124) (not e!654179))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74522 0))(
  ( (array!74523 (arr!35908 (Array (_ BitVec 32) (_ BitVec 64))) (size!36445 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74522)

(assert (=> start!98760 (= res!765124 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36445 _keys!1208))))))

(assert (=> start!98760 e!654179))

(declare-fun tp_is_empty!28859 () Bool)

(assert (=> start!98760 tp_is_empty!28859))

(declare-fun array_inv!27380 (array!74522) Bool)

(assert (=> start!98760 (array_inv!27380 _keys!1208)))

(assert (=> start!98760 true))

(assert (=> start!98760 tp!85698))

(declare-datatypes ((V!43605 0))(
  ( (V!43606 (val!14486 Int)) )
))
(declare-datatypes ((ValueCell!13720 0))(
  ( (ValueCellFull!13720 (v!17124 V!43605)) (EmptyCell!13720) )
))
(declare-datatypes ((array!74524 0))(
  ( (array!74525 (arr!35909 (Array (_ BitVec 32) ValueCell!13720)) (size!36446 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74524)

(declare-fun e!654192 () Bool)

(declare-fun array_inv!27381 (array!74524) Bool)

(assert (=> start!98760 (and (array_inv!27381 _values!996) e!654192)))

(declare-fun e!654182 () Bool)

(declare-fun b!1150083 () Bool)

(declare-datatypes ((tuple2!18462 0))(
  ( (tuple2!18463 (_1!9241 (_ BitVec 64)) (_2!9241 V!43605)) )
))
(declare-datatypes ((List!25255 0))(
  ( (Nil!25252) (Cons!25251 (h!26460 tuple2!18462) (t!36583 List!25255)) )
))
(declare-datatypes ((ListLongMap!16443 0))(
  ( (ListLongMap!16444 (toList!8237 List!25255)) )
))
(declare-fun call!53495 () ListLongMap!16443)

(declare-fun call!53489 () ListLongMap!16443)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1324 (ListLongMap!16443 (_ BitVec 64)) ListLongMap!16443)

(assert (=> b!1150083 (= e!654182 (= call!53489 (-!1324 call!53495 k!934)))))

(declare-fun b!1150084 () Bool)

(declare-fun e!654184 () Bool)

(assert (=> b!1150084 (= e!654184 true)))

(declare-fun e!654189 () Bool)

(assert (=> b!1150084 e!654189))

(declare-fun res!765122 () Bool)

(assert (=> b!1150084 (=> (not res!765122) (not e!654189))))

(declare-fun lt!514556 () ListLongMap!16443)

(declare-fun lt!514549 () ListLongMap!16443)

(assert (=> b!1150084 (= res!765122 (= lt!514556 lt!514549))))

(declare-fun lt!514551 () ListLongMap!16443)

(assert (=> b!1150084 (= lt!514556 (-!1324 lt!514551 k!934))))

(declare-fun lt!514550 () V!43605)

(declare-fun +!3574 (ListLongMap!16443 tuple2!18462) ListLongMap!16443)

(assert (=> b!1150084 (= (-!1324 (+!3574 lt!514549 (tuple2!18463 (select (arr!35908 _keys!1208) from!1455) lt!514550)) (select (arr!35908 _keys!1208) from!1455)) lt!514549)))

(declare-fun lt!514557 () Unit!37737)

(declare-fun addThenRemoveForNewKeyIsSame!173 (ListLongMap!16443 (_ BitVec 64) V!43605) Unit!37737)

(assert (=> b!1150084 (= lt!514557 (addThenRemoveForNewKeyIsSame!173 lt!514549 (select (arr!35908 _keys!1208) from!1455) lt!514550))))

(declare-fun lt!514545 () V!43605)

(declare-fun get!18303 (ValueCell!13720 V!43605) V!43605)

(assert (=> b!1150084 (= lt!514550 (get!18303 (select (arr!35909 _values!996) from!1455) lt!514545))))

(declare-fun lt!514541 () Unit!37737)

(declare-fun e!654188 () Unit!37737)

(assert (=> b!1150084 (= lt!514541 e!654188)))

(declare-fun c!113772 () Bool)

(declare-fun contains!6732 (ListLongMap!16443 (_ BitVec 64)) Bool)

(assert (=> b!1150084 (= c!113772 (contains!6732 lt!514549 k!934))))

(declare-fun zeroValue!944 () V!43605)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43605)

(declare-fun getCurrentListMapNoExtraKeys!4678 (array!74522 array!74524 (_ BitVec 32) (_ BitVec 32) V!43605 V!43605 (_ BitVec 32) Int) ListLongMap!16443)

(assert (=> b!1150084 (= lt!514549 (getCurrentListMapNoExtraKeys!4678 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!654185 () Bool)

(declare-fun b!1150085 () Bool)

(declare-fun arrayContainsKey!0 (array!74522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150085 (= e!654185 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!53486 () Bool)

(declare-fun call!53493 () Bool)

(declare-fun call!53496 () Bool)

(assert (=> bm!53486 (= call!53493 call!53496)))

(declare-fun b!1150086 () Bool)

(declare-fun res!765119 () Bool)

(assert (=> b!1150086 (=> (not res!765119) (not e!654179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150086 (= res!765119 (validKeyInArray!0 k!934))))

(declare-fun b!1150087 () Bool)

(declare-fun e!654178 () Bool)

(declare-fun mapRes!45113 () Bool)

(assert (=> b!1150087 (= e!654192 (and e!654178 mapRes!45113))))

(declare-fun condMapEmpty!45113 () Bool)

(declare-fun mapDefault!45113 () ValueCell!13720)

