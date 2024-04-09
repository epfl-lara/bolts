; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97782 () Bool)

(assert start!97782)

(declare-fun b_free!23447 () Bool)

(declare-fun b_next!23447 () Bool)

(assert (=> start!97782 (= b_free!23447 (not b_next!23447))))

(declare-fun tp!83046 () Bool)

(declare-fun b_and!37743 () Bool)

(assert (=> start!97782 (= tp!83046 b_and!37743)))

(declare-fun b!1117776 () Bool)

(declare-fun res!746554 () Bool)

(declare-fun e!636760 () Bool)

(assert (=> b!1117776 (=> (not res!746554) (not e!636760))))

(declare-datatypes ((array!72786 0))(
  ( (array!72787 (arr!35042 (Array (_ BitVec 32) (_ BitVec 64))) (size!35579 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72786)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42429 0))(
  ( (V!42430 (val!14045 Int)) )
))
(declare-datatypes ((ValueCell!13279 0))(
  ( (ValueCellFull!13279 (v!16679 V!42429)) (EmptyCell!13279) )
))
(declare-datatypes ((array!72788 0))(
  ( (array!72789 (arr!35043 (Array (_ BitVec 32) ValueCell!13279)) (size!35580 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72788)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117776 (= res!746554 (and (= (size!35580 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35579 _keys!1208) (size!35580 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117777 () Bool)

(declare-fun res!746552 () Bool)

(assert (=> b!1117777 (=> (not res!746552) (not e!636760))))

(declare-datatypes ((List!24503 0))(
  ( (Nil!24500) (Cons!24499 (h!25708 (_ BitVec 64)) (t!34991 List!24503)) )
))
(declare-fun arrayNoDuplicates!0 (array!72786 (_ BitVec 32) List!24503) Bool)

(assert (=> b!1117777 (= res!746552 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24500))))

(declare-fun mapIsEmpty!43783 () Bool)

(declare-fun mapRes!43783 () Bool)

(assert (=> mapIsEmpty!43783 mapRes!43783))

(declare-fun b!1117778 () Bool)

(declare-fun res!746551 () Bool)

(declare-fun e!636759 () Bool)

(assert (=> b!1117778 (=> (not res!746551) (not e!636759))))

(declare-fun lt!497336 () array!72786)

(assert (=> b!1117778 (= res!746551 (arrayNoDuplicates!0 lt!497336 #b00000000000000000000000000000000 Nil!24500))))

(declare-fun b!1117779 () Bool)

(declare-fun e!636756 () Bool)

(declare-fun tp_is_empty!27977 () Bool)

(assert (=> b!1117779 (= e!636756 tp_is_empty!27977)))

(declare-fun b!1117780 () Bool)

(declare-fun res!746556 () Bool)

(assert (=> b!1117780 (=> (not res!746556) (not e!636760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72786 (_ BitVec 32)) Bool)

(assert (=> b!1117780 (= res!746556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117781 () Bool)

(declare-fun res!746553 () Bool)

(assert (=> b!1117781 (=> (not res!746553) (not e!636760))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1117781 (= res!746553 (= (select (arr!35042 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43783 () Bool)

(declare-fun tp!83045 () Bool)

(declare-fun e!636761 () Bool)

(assert (=> mapNonEmpty!43783 (= mapRes!43783 (and tp!83045 e!636761))))

(declare-fun mapKey!43783 () (_ BitVec 32))

(declare-fun mapRest!43783 () (Array (_ BitVec 32) ValueCell!13279))

(declare-fun mapValue!43783 () ValueCell!13279)

(assert (=> mapNonEmpty!43783 (= (arr!35043 _values!996) (store mapRest!43783 mapKey!43783 mapValue!43783))))

(declare-fun b!1117782 () Bool)

(declare-fun e!636755 () Bool)

(assert (=> b!1117782 (= e!636755 true)))

(declare-fun zeroValue!944 () V!42429)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42429)

(declare-datatypes ((tuple2!17668 0))(
  ( (tuple2!17669 (_1!8844 (_ BitVec 64)) (_2!8844 V!42429)) )
))
(declare-datatypes ((List!24504 0))(
  ( (Nil!24501) (Cons!24500 (h!25709 tuple2!17668) (t!34992 List!24504)) )
))
(declare-datatypes ((ListLongMap!15649 0))(
  ( (ListLongMap!15650 (toList!7840 List!24504)) )
))
(declare-fun lt!497337 () ListLongMap!15649)

(declare-fun getCurrentListMapNoExtraKeys!4301 (array!72786 array!72788 (_ BitVec 32) (_ BitVec 32) V!42429 V!42429 (_ BitVec 32) Int) ListLongMap!15649)

(assert (=> b!1117782 (= lt!497337 (getCurrentListMapNoExtraKeys!4301 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117784 () Bool)

(assert (=> b!1117784 (= e!636759 (not e!636755))))

(declare-fun res!746558 () Bool)

(assert (=> b!1117784 (=> res!746558 e!636755)))

(assert (=> b!1117784 (= res!746558 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117784 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36595 0))(
  ( (Unit!36596) )
))
(declare-fun lt!497335 () Unit!36595)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72786 (_ BitVec 64) (_ BitVec 32)) Unit!36595)

(assert (=> b!1117784 (= lt!497335 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1117785 () Bool)

(declare-fun res!746557 () Bool)

(assert (=> b!1117785 (=> (not res!746557) (not e!636760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117785 (= res!746557 (validKeyInArray!0 k!934))))

(declare-fun b!1117786 () Bool)

(declare-fun res!746549 () Bool)

(assert (=> b!1117786 (=> (not res!746549) (not e!636760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117786 (= res!746549 (validMask!0 mask!1564))))

(declare-fun b!1117787 () Bool)

(declare-fun res!746550 () Bool)

(assert (=> b!1117787 (=> (not res!746550) (not e!636760))))

(assert (=> b!1117787 (= res!746550 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35579 _keys!1208))))))

(declare-fun b!1117788 () Bool)

(assert (=> b!1117788 (= e!636760 e!636759)))

(declare-fun res!746559 () Bool)

(assert (=> b!1117788 (=> (not res!746559) (not e!636759))))

(assert (=> b!1117788 (= res!746559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497336 mask!1564))))

(assert (=> b!1117788 (= lt!497336 (array!72787 (store (arr!35042 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35579 _keys!1208)))))

(declare-fun b!1117789 () Bool)

(declare-fun e!636757 () Bool)

(assert (=> b!1117789 (= e!636757 (and e!636756 mapRes!43783))))

(declare-fun condMapEmpty!43783 () Bool)

(declare-fun mapDefault!43783 () ValueCell!13279)

