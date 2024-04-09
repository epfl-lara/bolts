; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97362 () Bool)

(assert start!97362)

(declare-fun b_free!23297 () Bool)

(declare-fun b_next!23297 () Bool)

(assert (=> start!97362 (= b_free!23297 (not b_next!23297))))

(declare-fun tp!82190 () Bool)

(declare-fun b_and!37447 () Bool)

(assert (=> start!97362 (= tp!82190 b_and!37447)))

(declare-datatypes ((V!41869 0))(
  ( (V!41870 (val!13835 Int)) )
))
(declare-datatypes ((tuple2!17554 0))(
  ( (tuple2!17555 (_1!8787 (_ BitVec 64)) (_2!8787 V!41869)) )
))
(declare-datatypes ((List!24290 0))(
  ( (Nil!24287) (Cons!24286 (h!25495 tuple2!17554) (t!34640 List!24290)) )
))
(declare-datatypes ((ListLongMap!15535 0))(
  ( (ListLongMap!15536 (toList!7783 List!24290)) )
))
(declare-fun call!46589 () ListLongMap!15535)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!632525 () Bool)

(declare-fun b!1108769 () Bool)

(declare-fun call!46588 () ListLongMap!15535)

(declare-fun -!1014 (ListLongMap!15535 (_ BitVec 64)) ListLongMap!15535)

(assert (=> b!1108769 (= e!632525 (= call!46588 (-!1014 call!46589 k!934)))))

(declare-fun b!1108770 () Bool)

(declare-fun e!632524 () Bool)

(declare-fun e!632530 () Bool)

(assert (=> b!1108770 (= e!632524 e!632530)))

(declare-fun res!740028 () Bool)

(assert (=> b!1108770 (=> (not res!740028) (not e!632530))))

(declare-datatypes ((array!71982 0))(
  ( (array!71983 (arr!34640 (Array (_ BitVec 32) (_ BitVec 64))) (size!35177 (_ BitVec 32))) )
))
(declare-fun lt!495852 () array!71982)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71982 (_ BitVec 32)) Bool)

(assert (=> b!1108770 (= res!740028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495852 mask!1564))))

(declare-fun _keys!1208 () array!71982)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108770 (= lt!495852 (array!71983 (store (arr!34640 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35177 _keys!1208)))))

(declare-fun b!1108771 () Bool)

(declare-fun res!740031 () Bool)

(assert (=> b!1108771 (=> (not res!740031) (not e!632524))))

(assert (=> b!1108771 (= res!740031 (= (select (arr!34640 _keys!1208) i!673) k!934))))

(declare-fun b!1108772 () Bool)

(declare-fun res!740024 () Bool)

(assert (=> b!1108772 (=> (not res!740024) (not e!632524))))

(declare-datatypes ((List!24291 0))(
  ( (Nil!24288) (Cons!24287 (h!25496 (_ BitVec 64)) (t!34641 List!24291)) )
))
(declare-fun arrayNoDuplicates!0 (array!71982 (_ BitVec 32) List!24291) Bool)

(assert (=> b!1108772 (= res!740024 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24288))))

(declare-fun b!1108773 () Bool)

(declare-fun res!740032 () Bool)

(assert (=> b!1108773 (=> (not res!740032) (not e!632524))))

(assert (=> b!1108773 (= res!740032 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35177 _keys!1208))))))

(declare-fun b!1108774 () Bool)

(declare-fun e!632528 () Bool)

(assert (=> b!1108774 (= e!632530 (not e!632528))))

(declare-fun res!740025 () Bool)

(assert (=> b!1108774 (=> res!740025 e!632528)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1108774 (= res!740025 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35177 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108774 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36317 0))(
  ( (Unit!36318) )
))
(declare-fun lt!495851 () Unit!36317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71982 (_ BitVec 64) (_ BitVec 32)) Unit!36317)

(assert (=> b!1108774 (= lt!495851 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108775 () Bool)

(declare-fun res!740026 () Bool)

(assert (=> b!1108775 (=> (not res!740026) (not e!632524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108775 (= res!740026 (validMask!0 mask!1564))))

(declare-fun b!1108776 () Bool)

(declare-fun e!632527 () Bool)

(declare-fun tp_is_empty!27557 () Bool)

(assert (=> b!1108776 (= e!632527 tp_is_empty!27557)))

(declare-fun b!1108777 () Bool)

(declare-fun res!740027 () Bool)

(assert (=> b!1108777 (=> (not res!740027) (not e!632530))))

(assert (=> b!1108777 (= res!740027 (arrayNoDuplicates!0 lt!495852 #b00000000000000000000000000000000 Nil!24288))))

(declare-fun res!740033 () Bool)

(assert (=> start!97362 (=> (not res!740033) (not e!632524))))

(assert (=> start!97362 (= res!740033 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35177 _keys!1208))))))

(assert (=> start!97362 e!632524))

(assert (=> start!97362 tp_is_empty!27557))

(declare-fun array_inv!26522 (array!71982) Bool)

(assert (=> start!97362 (array_inv!26522 _keys!1208)))

(assert (=> start!97362 true))

(assert (=> start!97362 tp!82190))

(declare-datatypes ((ValueCell!13069 0))(
  ( (ValueCellFull!13069 (v!16469 V!41869)) (EmptyCell!13069) )
))
(declare-datatypes ((array!71984 0))(
  ( (array!71985 (arr!34641 (Array (_ BitVec 32) ValueCell!13069)) (size!35178 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71984)

(declare-fun e!632529 () Bool)

(declare-fun array_inv!26523 (array!71984) Bool)

(assert (=> start!97362 (and (array_inv!26523 _values!996) e!632529)))

(declare-fun b!1108778 () Bool)

(declare-fun res!740034 () Bool)

(assert (=> b!1108778 (=> (not res!740034) (not e!632524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108778 (= res!740034 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43153 () Bool)

(declare-fun mapRes!43153 () Bool)

(assert (=> mapIsEmpty!43153 mapRes!43153))

(declare-fun b!1108779 () Bool)

(assert (=> b!1108779 (= e!632525 (= call!46588 call!46589))))

(declare-fun mapNonEmpty!43153 () Bool)

(declare-fun tp!82191 () Bool)

(declare-fun e!632526 () Bool)

(assert (=> mapNonEmpty!43153 (= mapRes!43153 (and tp!82191 e!632526))))

(declare-fun mapValue!43153 () ValueCell!13069)

(declare-fun mapKey!43153 () (_ BitVec 32))

(declare-fun mapRest!43153 () (Array (_ BitVec 32) ValueCell!13069))

(assert (=> mapNonEmpty!43153 (= (arr!34641 _values!996) (store mapRest!43153 mapKey!43153 mapValue!43153))))

(declare-fun zeroValue!944 () V!41869)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46585 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41869)

(declare-fun getCurrentListMapNoExtraKeys!4249 (array!71982 array!71984 (_ BitVec 32) (_ BitVec 32) V!41869 V!41869 (_ BitVec 32) Int) ListLongMap!15535)

(declare-fun dynLambda!2373 (Int (_ BitVec 64)) V!41869)

(assert (=> bm!46585 (= call!46588 (getCurrentListMapNoExtraKeys!4249 lt!495852 (array!71985 (store (arr!34641 _values!996) i!673 (ValueCellFull!13069 (dynLambda!2373 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35178 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108780 () Bool)

(declare-fun res!740030 () Bool)

(assert (=> b!1108780 (=> (not res!740030) (not e!632524))))

(assert (=> b!1108780 (= res!740030 (and (= (size!35178 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35177 _keys!1208) (size!35178 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108781 () Bool)

(assert (=> b!1108781 (= e!632529 (and e!632527 mapRes!43153))))

(declare-fun condMapEmpty!43153 () Bool)

(declare-fun mapDefault!43153 () ValueCell!13069)

