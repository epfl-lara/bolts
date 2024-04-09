; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97788 () Bool)

(assert start!97788)

(declare-fun b_free!23453 () Bool)

(declare-fun b_next!23453 () Bool)

(assert (=> start!97788 (= b_free!23453 (not b_next!23453))))

(declare-fun tp!83063 () Bool)

(declare-fun b_and!37749 () Bool)

(assert (=> start!97788 (= tp!83063 b_and!37749)))

(declare-fun b!1117902 () Bool)

(declare-fun e!636822 () Bool)

(declare-fun e!636819 () Bool)

(assert (=> b!1117902 (= e!636822 (not e!636819))))

(declare-fun res!746648 () Bool)

(assert (=> b!1117902 (=> res!746648 e!636819)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117902 (= res!746648 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72798 0))(
  ( (array!72799 (arr!35048 (Array (_ BitVec 32) (_ BitVec 64))) (size!35585 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72798)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117902 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36601 0))(
  ( (Unit!36602) )
))
(declare-fun lt!497362 () Unit!36601)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72798 (_ BitVec 64) (_ BitVec 32)) Unit!36601)

(assert (=> b!1117902 (= lt!497362 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1117903 () Bool)

(declare-fun e!636823 () Bool)

(assert (=> b!1117903 (= e!636823 e!636822)))

(declare-fun res!746657 () Bool)

(assert (=> b!1117903 (=> (not res!746657) (not e!636822))))

(declare-fun lt!497364 () array!72798)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72798 (_ BitVec 32)) Bool)

(assert (=> b!1117903 (= res!746657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497364 mask!1564))))

(assert (=> b!1117903 (= lt!497364 (array!72799 (store (arr!35048 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35585 _keys!1208)))))

(declare-fun b!1117905 () Bool)

(declare-fun res!746649 () Bool)

(assert (=> b!1117905 (=> (not res!746649) (not e!636823))))

(assert (=> b!1117905 (= res!746649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117906 () Bool)

(declare-fun res!746656 () Bool)

(assert (=> b!1117906 (=> (not res!746656) (not e!636823))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42437 0))(
  ( (V!42438 (val!14048 Int)) )
))
(declare-datatypes ((ValueCell!13282 0))(
  ( (ValueCellFull!13282 (v!16682 V!42437)) (EmptyCell!13282) )
))
(declare-datatypes ((array!72800 0))(
  ( (array!72801 (arr!35049 (Array (_ BitVec 32) ValueCell!13282)) (size!35586 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72800)

(assert (=> b!1117906 (= res!746656 (and (= (size!35586 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35585 _keys!1208) (size!35586 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117907 () Bool)

(declare-fun res!746655 () Bool)

(assert (=> b!1117907 (=> (not res!746655) (not e!636823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117907 (= res!746655 (validMask!0 mask!1564))))

(declare-fun b!1117908 () Bool)

(declare-fun res!746651 () Bool)

(assert (=> b!1117908 (=> (not res!746651) (not e!636822))))

(declare-datatypes ((List!24508 0))(
  ( (Nil!24505) (Cons!24504 (h!25713 (_ BitVec 64)) (t!34996 List!24508)) )
))
(declare-fun arrayNoDuplicates!0 (array!72798 (_ BitVec 32) List!24508) Bool)

(assert (=> b!1117908 (= res!746651 (arrayNoDuplicates!0 lt!497364 #b00000000000000000000000000000000 Nil!24505))))

(declare-fun b!1117909 () Bool)

(assert (=> b!1117909 (= e!636819 true)))

(declare-fun zeroValue!944 () V!42437)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17674 0))(
  ( (tuple2!17675 (_1!8847 (_ BitVec 64)) (_2!8847 V!42437)) )
))
(declare-datatypes ((List!24509 0))(
  ( (Nil!24506) (Cons!24505 (h!25714 tuple2!17674) (t!34997 List!24509)) )
))
(declare-datatypes ((ListLongMap!15655 0))(
  ( (ListLongMap!15656 (toList!7843 List!24509)) )
))
(declare-fun lt!497363 () ListLongMap!15655)

(declare-fun minValue!944 () V!42437)

(declare-fun getCurrentListMapNoExtraKeys!4304 (array!72798 array!72800 (_ BitVec 32) (_ BitVec 32) V!42437 V!42437 (_ BitVec 32) Int) ListLongMap!15655)

(assert (=> b!1117909 (= lt!497363 (getCurrentListMapNoExtraKeys!4304 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117910 () Bool)

(declare-fun res!746650 () Bool)

(assert (=> b!1117910 (=> (not res!746650) (not e!636823))))

(assert (=> b!1117910 (= res!746650 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24505))))

(declare-fun b!1117904 () Bool)

(declare-fun res!746652 () Bool)

(assert (=> b!1117904 (=> (not res!746652) (not e!636823))))

(assert (=> b!1117904 (= res!746652 (= (select (arr!35048 _keys!1208) i!673) k!934))))

(declare-fun res!746658 () Bool)

(assert (=> start!97788 (=> (not res!746658) (not e!636823))))

(assert (=> start!97788 (= res!746658 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35585 _keys!1208))))))

(assert (=> start!97788 e!636823))

(declare-fun tp_is_empty!27983 () Bool)

(assert (=> start!97788 tp_is_empty!27983))

(declare-fun array_inv!26794 (array!72798) Bool)

(assert (=> start!97788 (array_inv!26794 _keys!1208)))

(assert (=> start!97788 true))

(assert (=> start!97788 tp!83063))

(declare-fun e!636820 () Bool)

(declare-fun array_inv!26795 (array!72800) Bool)

(assert (=> start!97788 (and (array_inv!26795 _values!996) e!636820)))

(declare-fun b!1117911 () Bool)

(declare-fun e!636821 () Bool)

(assert (=> b!1117911 (= e!636821 tp_is_empty!27983)))

(declare-fun mapIsEmpty!43792 () Bool)

(declare-fun mapRes!43792 () Bool)

(assert (=> mapIsEmpty!43792 mapRes!43792))

(declare-fun b!1117912 () Bool)

(declare-fun res!746654 () Bool)

(assert (=> b!1117912 (=> (not res!746654) (not e!636823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117912 (= res!746654 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43792 () Bool)

(declare-fun tp!83064 () Bool)

(declare-fun e!636818 () Bool)

(assert (=> mapNonEmpty!43792 (= mapRes!43792 (and tp!83064 e!636818))))

(declare-fun mapRest!43792 () (Array (_ BitVec 32) ValueCell!13282))

(declare-fun mapValue!43792 () ValueCell!13282)

(declare-fun mapKey!43792 () (_ BitVec 32))

(assert (=> mapNonEmpty!43792 (= (arr!35049 _values!996) (store mapRest!43792 mapKey!43792 mapValue!43792))))

(declare-fun b!1117913 () Bool)

(assert (=> b!1117913 (= e!636818 tp_is_empty!27983)))

(declare-fun b!1117914 () Bool)

(declare-fun res!746653 () Bool)

(assert (=> b!1117914 (=> (not res!746653) (not e!636823))))

(assert (=> b!1117914 (= res!746653 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35585 _keys!1208))))))

(declare-fun b!1117915 () Bool)

(assert (=> b!1117915 (= e!636820 (and e!636821 mapRes!43792))))

(declare-fun condMapEmpty!43792 () Bool)

(declare-fun mapDefault!43792 () ValueCell!13282)

