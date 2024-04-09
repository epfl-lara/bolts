; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97970 () Bool)

(assert start!97970)

(declare-fun b_free!23635 () Bool)

(declare-fun b_next!23635 () Bool)

(assert (=> start!97970 (= b_free!23635 (not b_next!23635))))

(declare-fun tp!83609 () Bool)

(declare-fun b_and!38075 () Bool)

(assert (=> start!97970 (= tp!83609 b_and!38075)))

(declare-fun b!1122155 () Bool)

(declare-fun e!638930 () Bool)

(assert (=> b!1122155 (= e!638930 true)))

(declare-datatypes ((V!42681 0))(
  ( (V!42682 (val!14139 Int)) )
))
(declare-fun zeroValue!944 () V!42681)

(declare-fun lt!498596 () Bool)

(declare-datatypes ((array!73156 0))(
  ( (array!73157 (arr!35227 (Array (_ BitVec 32) (_ BitVec 64))) (size!35764 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73156)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13373 0))(
  ( (ValueCellFull!13373 (v!16773 V!42681)) (EmptyCell!13373) )
))
(declare-datatypes ((array!73158 0))(
  ( (array!73159 (arr!35228 (Array (_ BitVec 32) ValueCell!13373)) (size!35765 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73158)

(declare-fun minValue!944 () V!42681)

(declare-datatypes ((tuple2!17818 0))(
  ( (tuple2!17819 (_1!8919 (_ BitVec 64)) (_2!8919 V!42681)) )
))
(declare-datatypes ((List!24656 0))(
  ( (Nil!24653) (Cons!24652 (h!25861 tuple2!17818) (t!35290 List!24656)) )
))
(declare-datatypes ((ListLongMap!15799 0))(
  ( (ListLongMap!15800 (toList!7915 List!24656)) )
))
(declare-fun contains!6436 (ListLongMap!15799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4376 (array!73156 array!73158 (_ BitVec 32) (_ BitVec 32) V!42681 V!42681 (_ BitVec 32) Int) ListLongMap!15799)

(assert (=> b!1122155 (= lt!498596 (contains!6436 (getCurrentListMapNoExtraKeys!4376 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1122156 () Bool)

(declare-fun res!749761 () Bool)

(declare-fun e!638929 () Bool)

(assert (=> b!1122156 (=> (not res!749761) (not e!638929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73156 (_ BitVec 32)) Bool)

(assert (=> b!1122156 (= res!749761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!47188 () ListLongMap!15799)

(declare-fun e!638931 () Bool)

(declare-fun b!1122157 () Bool)

(declare-fun call!47189 () ListLongMap!15799)

(declare-fun -!1078 (ListLongMap!15799 (_ BitVec 64)) ListLongMap!15799)

(assert (=> b!1122157 (= e!638931 (= call!47188 (-!1078 call!47189 k!934)))))

(declare-fun b!1122158 () Bool)

(declare-fun res!749765 () Bool)

(assert (=> b!1122158 (=> (not res!749765) (not e!638929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122158 (= res!749765 (validKeyInArray!0 k!934))))

(declare-fun b!1122159 () Bool)

(assert (=> b!1122159 (= e!638931 (= call!47188 call!47189))))

(declare-fun b!1122160 () Bool)

(declare-fun res!749758 () Bool)

(assert (=> b!1122160 (=> (not res!749758) (not e!638929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122160 (= res!749758 (validMask!0 mask!1564))))

(declare-fun b!1122161 () Bool)

(declare-fun e!638932 () Bool)

(assert (=> b!1122161 (= e!638929 e!638932)))

(declare-fun res!749766 () Bool)

(assert (=> b!1122161 (=> (not res!749766) (not e!638932))))

(declare-fun lt!498600 () array!73156)

(assert (=> b!1122161 (= res!749766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498600 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122161 (= lt!498600 (array!73157 (store (arr!35227 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35764 _keys!1208)))))

(declare-fun bm!47185 () Bool)

(assert (=> bm!47185 (= call!47189 (getCurrentListMapNoExtraKeys!4376 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122162 () Bool)

(declare-fun e!638926 () Bool)

(declare-fun e!638925 () Bool)

(declare-fun mapRes!44065 () Bool)

(assert (=> b!1122162 (= e!638926 (and e!638925 mapRes!44065))))

(declare-fun condMapEmpty!44065 () Bool)

(declare-fun mapDefault!44065 () ValueCell!13373)

