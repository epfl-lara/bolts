; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97326 () Bool)

(assert start!97326)

(declare-fun b_free!23261 () Bool)

(declare-fun b_next!23261 () Bool)

(assert (=> start!97326 (= b_free!23261 (not b_next!23261))))

(declare-fun tp!82082 () Bool)

(declare-fun b_and!37371 () Bool)

(assert (=> start!97326 (= tp!82082 b_and!37371)))

(declare-fun b!1107845 () Bool)

(declare-fun res!739435 () Bool)

(declare-fun e!632080 () Bool)

(assert (=> b!1107845 (=> (not res!739435) (not e!632080))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107845 (= res!739435 (validKeyInArray!0 k!934))))

(declare-fun res!739440 () Bool)

(assert (=> start!97326 (=> (not res!739440) (not e!632080))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71910 0))(
  ( (array!71911 (arr!34604 (Array (_ BitVec 32) (_ BitVec 64))) (size!35141 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71910)

(assert (=> start!97326 (= res!739440 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35141 _keys!1208))))))

(assert (=> start!97326 e!632080))

(declare-fun tp_is_empty!27521 () Bool)

(assert (=> start!97326 tp_is_empty!27521))

(declare-fun array_inv!26496 (array!71910) Bool)

(assert (=> start!97326 (array_inv!26496 _keys!1208)))

(assert (=> start!97326 true))

(assert (=> start!97326 tp!82082))

(declare-datatypes ((V!41821 0))(
  ( (V!41822 (val!13817 Int)) )
))
(declare-datatypes ((ValueCell!13051 0))(
  ( (ValueCellFull!13051 (v!16451 V!41821)) (EmptyCell!13051) )
))
(declare-datatypes ((array!71912 0))(
  ( (array!71913 (arr!34605 (Array (_ BitVec 32) ValueCell!13051)) (size!35142 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71912)

(declare-fun e!632086 () Bool)

(declare-fun array_inv!26497 (array!71912) Bool)

(assert (=> start!97326 (and (array_inv!26497 _values!996) e!632086)))

(declare-fun b!1107846 () Bool)

(declare-fun res!739434 () Bool)

(assert (=> b!1107846 (=> (not res!739434) (not e!632080))))

(declare-datatypes ((List!24261 0))(
  ( (Nil!24258) (Cons!24257 (h!25466 (_ BitVec 64)) (t!34575 List!24261)) )
))
(declare-fun arrayNoDuplicates!0 (array!71910 (_ BitVec 32) List!24261) Bool)

(assert (=> b!1107846 (= res!739434 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24258))))

(declare-fun b!1107847 () Bool)

(declare-fun e!632087 () Bool)

(assert (=> b!1107847 (= e!632080 e!632087)))

(declare-fun res!739432 () Bool)

(assert (=> b!1107847 (=> (not res!739432) (not e!632087))))

(declare-fun lt!495690 () array!71910)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71910 (_ BitVec 32)) Bool)

(assert (=> b!1107847 (= res!739432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495690 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107847 (= lt!495690 (array!71911 (store (arr!34604 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35141 _keys!1208)))))

(declare-fun b!1107848 () Bool)

(declare-fun res!739430 () Bool)

(assert (=> b!1107848 (=> (not res!739430) (not e!632087))))

(assert (=> b!1107848 (= res!739430 (arrayNoDuplicates!0 lt!495690 #b00000000000000000000000000000000 Nil!24258))))

(declare-fun b!1107849 () Bool)

(declare-fun res!739437 () Bool)

(assert (=> b!1107849 (=> (not res!739437) (not e!632080))))

(assert (=> b!1107849 (= res!739437 (= (select (arr!34604 _keys!1208) i!673) k!934))))

(declare-fun b!1107850 () Bool)

(declare-fun res!739436 () Bool)

(assert (=> b!1107850 (=> (not res!739436) (not e!632080))))

(assert (=> b!1107850 (= res!739436 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35141 _keys!1208))))))

(declare-fun zeroValue!944 () V!41821)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46477 () Bool)

(declare-fun minValue!944 () V!41821)

(declare-datatypes ((tuple2!17524 0))(
  ( (tuple2!17525 (_1!8772 (_ BitVec 64)) (_2!8772 V!41821)) )
))
(declare-datatypes ((List!24262 0))(
  ( (Nil!24259) (Cons!24258 (h!25467 tuple2!17524) (t!34576 List!24262)) )
))
(declare-datatypes ((ListLongMap!15505 0))(
  ( (ListLongMap!15506 (toList!7768 List!24262)) )
))
(declare-fun call!46481 () ListLongMap!15505)

(declare-fun getCurrentListMapNoExtraKeys!4236 (array!71910 array!71912 (_ BitVec 32) (_ BitVec 32) V!41821 V!41821 (_ BitVec 32) Int) ListLongMap!15505)

(assert (=> bm!46477 (= call!46481 (getCurrentListMapNoExtraKeys!4236 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107851 () Bool)

(declare-fun e!632083 () Bool)

(declare-fun mapRes!43099 () Bool)

(assert (=> b!1107851 (= e!632086 (and e!632083 mapRes!43099))))

(declare-fun condMapEmpty!43099 () Bool)

(declare-fun mapDefault!43099 () ValueCell!13051)

