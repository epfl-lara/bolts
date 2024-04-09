; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97950 () Bool)

(assert start!97950)

(declare-fun b_free!23615 () Bool)

(declare-fun b_next!23615 () Bool)

(assert (=> start!97950 (= b_free!23615 (not b_next!23615))))

(declare-fun tp!83550 () Bool)

(declare-fun b_and!38035 () Bool)

(assert (=> start!97950 (= tp!83550 b_and!38035)))

(declare-datatypes ((V!42653 0))(
  ( (V!42654 (val!14129 Int)) )
))
(declare-fun zeroValue!944 () V!42653)

(declare-datatypes ((array!73116 0))(
  ( (array!73117 (arr!35207 (Array (_ BitVec 32) (_ BitVec 64))) (size!35744 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73116)

(declare-fun lt!498404 () array!73116)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13363 0))(
  ( (ValueCellFull!13363 (v!16763 V!42653)) (EmptyCell!13363) )
))
(declare-datatypes ((array!73118 0))(
  ( (array!73119 (arr!35208 (Array (_ BitVec 32) ValueCell!13363)) (size!35745 (_ BitVec 32))) )
))
(declare-fun lt!498407 () array!73118)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17798 0))(
  ( (tuple2!17799 (_1!8909 (_ BitVec 64)) (_2!8909 V!42653)) )
))
(declare-datatypes ((List!24636 0))(
  ( (Nil!24633) (Cons!24632 (h!25841 tuple2!17798) (t!35250 List!24636)) )
))
(declare-datatypes ((ListLongMap!15779 0))(
  ( (ListLongMap!15780 (toList!7905 List!24636)) )
))
(declare-fun call!47129 () ListLongMap!15779)

(declare-fun c!109373 () Bool)

(declare-fun _values!996 () array!73118)

(declare-fun minValue!944 () V!42653)

(declare-fun bm!47125 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4366 (array!73116 array!73118 (_ BitVec 32) (_ BitVec 32) V!42653 V!42653 (_ BitVec 32) Int) ListLongMap!15779)

(assert (=> bm!47125 (= call!47129 (getCurrentListMapNoExtraKeys!4366 (ite c!109373 _keys!1208 lt!498404) (ite c!109373 _values!996 lt!498407) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47128 () ListLongMap!15779)

(declare-fun e!638645 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1121614 () Bool)

(declare-fun -!1070 (ListLongMap!15779 (_ BitVec 64)) ListLongMap!15779)

(assert (=> b!1121614 (= e!638645 (= call!47128 (-!1070 call!47129 k!934)))))

(declare-fun b!1121615 () Bool)

(declare-fun res!749383 () Bool)

(declare-fun e!638650 () Bool)

(assert (=> b!1121615 (=> (not res!749383) (not e!638650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73116 (_ BitVec 32)) Bool)

(assert (=> b!1121615 (= res!749383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121616 () Bool)

(declare-fun res!749388 () Bool)

(assert (=> b!1121616 (=> (not res!749388) (not e!638650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121616 (= res!749388 (validMask!0 mask!1564))))

(declare-fun b!1121617 () Bool)

(declare-fun e!638649 () Bool)

(declare-fun tp_is_empty!28145 () Bool)

(assert (=> b!1121617 (= e!638649 tp_is_empty!28145)))

(declare-fun b!1121618 () Bool)

(declare-fun e!638644 () Bool)

(declare-fun e!638646 () Bool)

(assert (=> b!1121618 (= e!638644 (not e!638646))))

(declare-fun res!749386 () Bool)

(assert (=> b!1121618 (=> res!749386 e!638646)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121618 (= res!749386 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121618 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36725 0))(
  ( (Unit!36726) )
))
(declare-fun lt!498406 () Unit!36725)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73116 (_ BitVec 64) (_ BitVec 32)) Unit!36725)

(assert (=> b!1121618 (= lt!498406 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1121619 () Bool)

(declare-fun res!749387 () Bool)

(assert (=> b!1121619 (=> (not res!749387) (not e!638650))))

(assert (=> b!1121619 (= res!749387 (= (select (arr!35207 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!44035 () Bool)

(declare-fun mapRes!44035 () Bool)

(declare-fun tp!83549 () Bool)

(declare-fun e!638648 () Bool)

(assert (=> mapNonEmpty!44035 (= mapRes!44035 (and tp!83549 e!638648))))

(declare-fun mapKey!44035 () (_ BitVec 32))

(declare-fun mapRest!44035 () (Array (_ BitVec 32) ValueCell!13363))

(declare-fun mapValue!44035 () ValueCell!13363)

(assert (=> mapNonEmpty!44035 (= (arr!35208 _values!996) (store mapRest!44035 mapKey!44035 mapValue!44035))))

(declare-fun b!1121620 () Bool)

(declare-fun res!749393 () Bool)

(assert (=> b!1121620 (=> (not res!749393) (not e!638650))))

(declare-datatypes ((List!24637 0))(
  ( (Nil!24634) (Cons!24633 (h!25842 (_ BitVec 64)) (t!35251 List!24637)) )
))
(declare-fun arrayNoDuplicates!0 (array!73116 (_ BitVec 32) List!24637) Bool)

(assert (=> b!1121620 (= res!749393 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24634))))

(declare-fun b!1121621 () Bool)

(declare-fun res!749390 () Bool)

(assert (=> b!1121621 (=> (not res!749390) (not e!638644))))

(assert (=> b!1121621 (= res!749390 (arrayNoDuplicates!0 lt!498404 #b00000000000000000000000000000000 Nil!24634))))

(declare-fun b!1121622 () Bool)

(declare-fun res!749391 () Bool)

(assert (=> b!1121622 (=> (not res!749391) (not e!638650))))

(assert (=> b!1121622 (= res!749391 (and (= (size!35745 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35744 _keys!1208) (size!35745 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121623 () Bool)

(declare-fun res!749394 () Bool)

(assert (=> b!1121623 (=> (not res!749394) (not e!638650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121623 (= res!749394 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44035 () Bool)

(assert (=> mapIsEmpty!44035 mapRes!44035))

(declare-fun b!1121624 () Bool)

(declare-fun e!638647 () Bool)

(assert (=> b!1121624 (= e!638647 true)))

(assert (=> b!1121624 e!638645))

(assert (=> b!1121624 (= c!109373 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498403 () Unit!36725)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!325 (array!73116 array!73118 (_ BitVec 32) (_ BitVec 32) V!42653 V!42653 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36725)

(assert (=> b!1121624 (= lt!498403 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!325 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121625 () Bool)

(declare-fun res!749385 () Bool)

(assert (=> b!1121625 (=> (not res!749385) (not e!638650))))

(assert (=> b!1121625 (= res!749385 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35744 _keys!1208))))))

(declare-fun b!1121626 () Bool)

(assert (=> b!1121626 (= e!638648 tp_is_empty!28145)))

(declare-fun res!749389 () Bool)

(assert (=> start!97950 (=> (not res!749389) (not e!638650))))

(assert (=> start!97950 (= res!749389 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35744 _keys!1208))))))

(assert (=> start!97950 e!638650))

(assert (=> start!97950 tp_is_empty!28145))

(declare-fun array_inv!26912 (array!73116) Bool)

(assert (=> start!97950 (array_inv!26912 _keys!1208)))

(assert (=> start!97950 true))

(assert (=> start!97950 tp!83550))

(declare-fun e!638643 () Bool)

(declare-fun array_inv!26913 (array!73118) Bool)

(assert (=> start!97950 (and (array_inv!26913 _values!996) e!638643)))

(declare-fun b!1121627 () Bool)

(assert (=> b!1121627 (= e!638650 e!638644)))

(declare-fun res!749392 () Bool)

(assert (=> b!1121627 (=> (not res!749392) (not e!638644))))

(assert (=> b!1121627 (= res!749392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498404 mask!1564))))

(assert (=> b!1121627 (= lt!498404 (array!73117 (store (arr!35207 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35744 _keys!1208)))))

(declare-fun b!1121628 () Bool)

(assert (=> b!1121628 (= e!638646 e!638647)))

(declare-fun res!749384 () Bool)

(assert (=> b!1121628 (=> res!749384 e!638647)))

(assert (=> b!1121628 (= res!749384 (not (= from!1455 i!673)))))

(declare-fun lt!498405 () ListLongMap!15779)

(assert (=> b!1121628 (= lt!498405 (getCurrentListMapNoExtraKeys!4366 lt!498404 lt!498407 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2465 (Int (_ BitVec 64)) V!42653)

(assert (=> b!1121628 (= lt!498407 (array!73119 (store (arr!35208 _values!996) i!673 (ValueCellFull!13363 (dynLambda!2465 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35745 _values!996)))))

(declare-fun lt!498408 () ListLongMap!15779)

(assert (=> b!1121628 (= lt!498408 (getCurrentListMapNoExtraKeys!4366 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121629 () Bool)

(assert (=> b!1121629 (= e!638643 (and e!638649 mapRes!44035))))

(declare-fun condMapEmpty!44035 () Bool)

(declare-fun mapDefault!44035 () ValueCell!13363)

