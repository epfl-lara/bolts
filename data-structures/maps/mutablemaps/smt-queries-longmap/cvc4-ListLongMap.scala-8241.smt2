; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100434 () Bool)

(assert start!100434)

(declare-fun b_free!25721 () Bool)

(declare-fun b_next!25721 () Bool)

(assert (=> start!100434 (= b_free!25721 (not b_next!25721))))

(declare-fun tp!90154 () Bool)

(declare-fun b_and!42351 () Bool)

(assert (=> start!100434 (= tp!90154 b_and!42351)))

(declare-fun b!1198208 () Bool)

(declare-fun res!797523 () Bool)

(declare-fun e!680689 () Bool)

(assert (=> b!1198208 (=> (not res!797523) (not e!680689))))

(declare-datatypes ((array!77612 0))(
  ( (array!77613 (arr!37447 (Array (_ BitVec 32) (_ BitVec 64))) (size!37984 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77612)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77612 (_ BitVec 32)) Bool)

(assert (=> b!1198208 (= res!797523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198209 () Bool)

(declare-fun e!680691 () Bool)

(declare-fun e!680687 () Bool)

(assert (=> b!1198209 (= e!680691 (not e!680687))))

(declare-fun res!797527 () Bool)

(assert (=> b!1198209 (=> res!797527 e!680687)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198209 (= res!797527 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198209 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39660 0))(
  ( (Unit!39661) )
))
(declare-fun lt!543405 () Unit!39660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77612 (_ BitVec 64) (_ BitVec 32)) Unit!39660)

(assert (=> b!1198209 (= lt!543405 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198210 () Bool)

(declare-fun res!797528 () Bool)

(assert (=> b!1198210 (=> (not res!797528) (not e!680689))))

(declare-datatypes ((List!26508 0))(
  ( (Nil!26505) (Cons!26504 (h!27713 (_ BitVec 64)) (t!39222 List!26508)) )
))
(declare-fun arrayNoDuplicates!0 (array!77612 (_ BitVec 32) List!26508) Bool)

(assert (=> b!1198210 (= res!797528 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26505))))

(declare-fun b!1198211 () Bool)

(declare-fun e!680690 () Bool)

(declare-fun tp_is_empty!30425 () Bool)

(assert (=> b!1198211 (= e!680690 tp_is_empty!30425)))

(declare-fun b!1198212 () Bool)

(declare-fun e!680692 () Bool)

(assert (=> b!1198212 (= e!680692 tp_is_empty!30425)))

(declare-fun b!1198213 () Bool)

(declare-fun res!797522 () Bool)

(assert (=> b!1198213 (=> (not res!797522) (not e!680689))))

(assert (=> b!1198213 (= res!797522 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37984 _keys!1208))))))

(declare-fun b!1198214 () Bool)

(declare-fun res!797519 () Bool)

(assert (=> b!1198214 (=> (not res!797519) (not e!680689))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45693 0))(
  ( (V!45694 (val!15269 Int)) )
))
(declare-datatypes ((ValueCell!14503 0))(
  ( (ValueCellFull!14503 (v!17908 V!45693)) (EmptyCell!14503) )
))
(declare-datatypes ((array!77614 0))(
  ( (array!77615 (arr!37448 (Array (_ BitVec 32) ValueCell!14503)) (size!37985 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77614)

(assert (=> b!1198214 (= res!797519 (and (= (size!37985 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37984 _keys!1208) (size!37985 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!797529 () Bool)

(assert (=> start!100434 (=> (not res!797529) (not e!680689))))

(assert (=> start!100434 (= res!797529 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37984 _keys!1208))))))

(assert (=> start!100434 e!680689))

(assert (=> start!100434 tp_is_empty!30425))

(declare-fun array_inv!28444 (array!77612) Bool)

(assert (=> start!100434 (array_inv!28444 _keys!1208)))

(assert (=> start!100434 true))

(assert (=> start!100434 tp!90154))

(declare-fun e!680686 () Bool)

(declare-fun array_inv!28445 (array!77614) Bool)

(assert (=> start!100434 (and (array_inv!28445 _values!996) e!680686)))

(declare-fun b!1198215 () Bool)

(assert (=> b!1198215 (= e!680689 e!680691)))

(declare-fun res!797524 () Bool)

(assert (=> b!1198215 (=> (not res!797524) (not e!680691))))

(declare-fun lt!543404 () array!77612)

(assert (=> b!1198215 (= res!797524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543404 mask!1564))))

(assert (=> b!1198215 (= lt!543404 (array!77613 (store (arr!37447 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37984 _keys!1208)))))

(declare-fun mapNonEmpty!47480 () Bool)

(declare-fun mapRes!47480 () Bool)

(declare-fun tp!90153 () Bool)

(assert (=> mapNonEmpty!47480 (= mapRes!47480 (and tp!90153 e!680692))))

(declare-fun mapRest!47480 () (Array (_ BitVec 32) ValueCell!14503))

(declare-fun mapValue!47480 () ValueCell!14503)

(declare-fun mapKey!47480 () (_ BitVec 32))

(assert (=> mapNonEmpty!47480 (= (arr!37448 _values!996) (store mapRest!47480 mapKey!47480 mapValue!47480))))

(declare-fun b!1198216 () Bool)

(assert (=> b!1198216 (= e!680687 true)))

(declare-fun zeroValue!944 () V!45693)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19682 0))(
  ( (tuple2!19683 (_1!9851 (_ BitVec 64)) (_2!9851 V!45693)) )
))
(declare-datatypes ((List!26509 0))(
  ( (Nil!26506) (Cons!26505 (h!27714 tuple2!19682) (t!39223 List!26509)) )
))
(declare-datatypes ((ListLongMap!17663 0))(
  ( (ListLongMap!17664 (toList!8847 List!26509)) )
))
(declare-fun lt!543406 () ListLongMap!17663)

(declare-fun minValue!944 () V!45693)

(declare-fun getCurrentListMapNoExtraKeys!5260 (array!77612 array!77614 (_ BitVec 32) (_ BitVec 32) V!45693 V!45693 (_ BitVec 32) Int) ListLongMap!17663)

(assert (=> b!1198216 (= lt!543406 (getCurrentListMapNoExtraKeys!5260 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198217 () Bool)

(declare-fun res!797526 () Bool)

(assert (=> b!1198217 (=> (not res!797526) (not e!680689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198217 (= res!797526 (validMask!0 mask!1564))))

(declare-fun b!1198218 () Bool)

(declare-fun res!797525 () Bool)

(assert (=> b!1198218 (=> (not res!797525) (not e!680689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198218 (= res!797525 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47480 () Bool)

(assert (=> mapIsEmpty!47480 mapRes!47480))

(declare-fun b!1198219 () Bool)

(declare-fun res!797521 () Bool)

(assert (=> b!1198219 (=> (not res!797521) (not e!680689))))

(assert (=> b!1198219 (= res!797521 (= (select (arr!37447 _keys!1208) i!673) k!934))))

(declare-fun b!1198220 () Bool)

(declare-fun res!797520 () Bool)

(assert (=> b!1198220 (=> (not res!797520) (not e!680691))))

(assert (=> b!1198220 (= res!797520 (arrayNoDuplicates!0 lt!543404 #b00000000000000000000000000000000 Nil!26505))))

(declare-fun b!1198221 () Bool)

(assert (=> b!1198221 (= e!680686 (and e!680690 mapRes!47480))))

(declare-fun condMapEmpty!47480 () Bool)

(declare-fun mapDefault!47480 () ValueCell!14503)

