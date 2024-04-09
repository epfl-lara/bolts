; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99812 () Bool)

(assert start!99812)

(declare-fun b_free!25355 () Bool)

(declare-fun b_next!25355 () Bool)

(assert (=> start!99812 (= b_free!25355 (not b_next!25355))))

(declare-fun tp!88780 () Bool)

(declare-fun b_and!41591 () Bool)

(assert (=> start!99812 (= tp!88780 b_and!41591)))

(declare-fun mapIsEmpty!46655 () Bool)

(declare-fun mapRes!46655 () Bool)

(assert (=> mapIsEmpty!46655 mapRes!46655))

(declare-fun b!1185227 () Bool)

(declare-fun res!787945 () Bool)

(declare-fun e!673925 () Bool)

(assert (=> b!1185227 (=> (not res!787945) (not e!673925))))

(declare-datatypes ((array!76538 0))(
  ( (array!76539 (arr!36915 (Array (_ BitVec 32) (_ BitVec 64))) (size!37452 (_ BitVec 32))) )
))
(declare-fun lt!537824 () array!76538)

(declare-datatypes ((List!26123 0))(
  ( (Nil!26120) (Cons!26119 (h!27328 (_ BitVec 64)) (t!38477 List!26123)) )
))
(declare-fun arrayNoDuplicates!0 (array!76538 (_ BitVec 32) List!26123) Bool)

(assert (=> b!1185227 (= res!787945 (arrayNoDuplicates!0 lt!537824 #b00000000000000000000000000000000 Nil!26120))))

(declare-fun b!1185228 () Bool)

(declare-fun res!787940 () Bool)

(declare-fun e!673927 () Bool)

(assert (=> b!1185228 (=> (not res!787940) (not e!673927))))

(declare-fun _keys!1208 () array!76538)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76538 (_ BitVec 32)) Bool)

(assert (=> b!1185228 (= res!787940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185229 () Bool)

(declare-fun res!787935 () Bool)

(assert (=> b!1185229 (=> (not res!787935) (not e!673927))))

(assert (=> b!1185229 (= res!787935 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26120))))

(declare-fun b!1185230 () Bool)

(declare-fun res!787943 () Bool)

(assert (=> b!1185230 (=> (not res!787943) (not e!673927))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44973 0))(
  ( (V!44974 (val!14999 Int)) )
))
(declare-datatypes ((ValueCell!14233 0))(
  ( (ValueCellFull!14233 (v!17638 V!44973)) (EmptyCell!14233) )
))
(declare-datatypes ((array!76540 0))(
  ( (array!76541 (arr!36916 (Array (_ BitVec 32) ValueCell!14233)) (size!37453 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76540)

(assert (=> b!1185230 (= res!787943 (and (= (size!37453 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37452 _keys!1208) (size!37453 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!673926 () Bool)

(declare-fun b!1185231 () Bool)

(declare-fun arrayContainsKey!0 (array!76538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185231 (= e!673926 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185232 () Bool)

(declare-datatypes ((Unit!39183 0))(
  ( (Unit!39184) )
))
(declare-fun e!673928 () Unit!39183)

(declare-fun Unit!39185 () Unit!39183)

(assert (=> b!1185232 (= e!673928 Unit!39185)))

(declare-fun b!1185233 () Bool)

(declare-fun res!787947 () Bool)

(assert (=> b!1185233 (=> (not res!787947) (not e!673927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185233 (= res!787947 (validKeyInArray!0 k!934))))

(declare-fun b!1185234 () Bool)

(assert (=> b!1185234 (= e!673927 e!673925)))

(declare-fun res!787944 () Bool)

(assert (=> b!1185234 (=> (not res!787944) (not e!673925))))

(assert (=> b!1185234 (= res!787944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537824 mask!1564))))

(assert (=> b!1185234 (= lt!537824 (array!76539 (store (arr!36915 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37452 _keys!1208)))))

(declare-fun res!787936 () Bool)

(assert (=> start!99812 (=> (not res!787936) (not e!673927))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99812 (= res!787936 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37452 _keys!1208))))))

(assert (=> start!99812 e!673927))

(declare-fun tp_is_empty!29885 () Bool)

(assert (=> start!99812 tp_is_empty!29885))

(declare-fun array_inv!28054 (array!76538) Bool)

(assert (=> start!99812 (array_inv!28054 _keys!1208)))

(assert (=> start!99812 true))

(assert (=> start!99812 tp!88780))

(declare-fun e!673929 () Bool)

(declare-fun array_inv!28055 (array!76540) Bool)

(assert (=> start!99812 (and (array_inv!28055 _values!996) e!673929)))

(declare-fun b!1185235 () Bool)

(declare-fun res!787942 () Bool)

(assert (=> b!1185235 (=> (not res!787942) (not e!673927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185235 (= res!787942 (validMask!0 mask!1564))))

(declare-fun b!1185236 () Bool)

(declare-fun e!673923 () Bool)

(assert (=> b!1185236 (= e!673923 e!673926)))

(declare-fun res!787937 () Bool)

(assert (=> b!1185236 (=> res!787937 e!673926)))

(assert (=> b!1185236 (= res!787937 (not (= (select (arr!36915 _keys!1208) from!1455) k!934)))))

(declare-fun mapNonEmpty!46655 () Bool)

(declare-fun tp!88779 () Bool)

(declare-fun e!673930 () Bool)

(assert (=> mapNonEmpty!46655 (= mapRes!46655 (and tp!88779 e!673930))))

(declare-fun mapValue!46655 () ValueCell!14233)

(declare-fun mapRest!46655 () (Array (_ BitVec 32) ValueCell!14233))

(declare-fun mapKey!46655 () (_ BitVec 32))

(assert (=> mapNonEmpty!46655 (= (arr!36916 _values!996) (store mapRest!46655 mapKey!46655 mapValue!46655))))

(declare-fun b!1185237 () Bool)

(declare-fun e!673922 () Bool)

(assert (=> b!1185237 (= e!673922 true)))

(declare-datatypes ((tuple2!19362 0))(
  ( (tuple2!19363 (_1!9691 (_ BitVec 64)) (_2!9691 V!44973)) )
))
(declare-datatypes ((List!26124 0))(
  ( (Nil!26121) (Cons!26120 (h!27329 tuple2!19362) (t!38478 List!26124)) )
))
(declare-datatypes ((ListLongMap!17343 0))(
  ( (ListLongMap!17344 (toList!8687 List!26124)) )
))
(declare-fun lt!537818 () ListLongMap!17343)

(declare-fun lt!537833 () ListLongMap!17343)

(declare-fun -!1673 (ListLongMap!17343 (_ BitVec 64)) ListLongMap!17343)

(assert (=> b!1185237 (= (-!1673 lt!537818 k!934) lt!537833)))

(declare-fun lt!537823 () Unit!39183)

(declare-fun lt!537817 () V!44973)

(declare-fun lt!537830 () ListLongMap!17343)

(declare-fun addRemoveCommutativeForDiffKeys!184 (ListLongMap!17343 (_ BitVec 64) V!44973 (_ BitVec 64)) Unit!39183)

(assert (=> b!1185237 (= lt!537823 (addRemoveCommutativeForDiffKeys!184 lt!537830 (select (arr!36915 _keys!1208) from!1455) lt!537817 k!934))))

(declare-fun lt!537821 () ListLongMap!17343)

(declare-fun lt!537822 () ListLongMap!17343)

(declare-fun lt!537819 () ListLongMap!17343)

(assert (=> b!1185237 (and (= lt!537821 lt!537818) (= lt!537819 lt!537822))))

(declare-fun lt!537832 () tuple2!19362)

(declare-fun +!3894 (ListLongMap!17343 tuple2!19362) ListLongMap!17343)

(assert (=> b!1185237 (= lt!537818 (+!3894 lt!537830 lt!537832))))

(assert (=> b!1185237 (not (= (select (arr!36915 _keys!1208) from!1455) k!934))))

(declare-fun lt!537829 () Unit!39183)

(assert (=> b!1185237 (= lt!537829 e!673928)))

(declare-fun c!117104 () Bool)

(assert (=> b!1185237 (= c!117104 (= (select (arr!36915 _keys!1208) from!1455) k!934))))

(assert (=> b!1185237 e!673923))

(declare-fun res!787948 () Bool)

(assert (=> b!1185237 (=> (not res!787948) (not e!673923))))

(declare-fun lt!537826 () ListLongMap!17343)

(assert (=> b!1185237 (= res!787948 (= lt!537826 lt!537833))))

(assert (=> b!1185237 (= lt!537833 (+!3894 lt!537819 lt!537832))))

(assert (=> b!1185237 (= lt!537832 (tuple2!19363 (select (arr!36915 _keys!1208) from!1455) lt!537817))))

(declare-fun lt!537825 () V!44973)

(declare-fun get!18934 (ValueCell!14233 V!44973) V!44973)

(assert (=> b!1185237 (= lt!537817 (get!18934 (select (arr!36916 _values!996) from!1455) lt!537825))))

(declare-fun b!1185238 () Bool)

(declare-fun e!673931 () Bool)

(assert (=> b!1185238 (= e!673931 tp_is_empty!29885)))

(declare-fun b!1185239 () Bool)

(declare-fun e!673933 () Bool)

(assert (=> b!1185239 (= e!673925 (not e!673933))))

(declare-fun res!787938 () Bool)

(assert (=> b!1185239 (=> res!787938 e!673933)))

(assert (=> b!1185239 (= res!787938 (bvsgt from!1455 i!673))))

(assert (=> b!1185239 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!537831 () Unit!39183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76538 (_ BitVec 64) (_ BitVec 32)) Unit!39183)

(assert (=> b!1185239 (= lt!537831 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185240 () Bool)

(declare-fun e!673924 () Bool)

(assert (=> b!1185240 (= e!673924 e!673922)))

(declare-fun res!787939 () Bool)

(assert (=> b!1185240 (=> res!787939 e!673922)))

(assert (=> b!1185240 (= res!787939 (not (validKeyInArray!0 (select (arr!36915 _keys!1208) from!1455))))))

(assert (=> b!1185240 (= lt!537822 lt!537819)))

(assert (=> b!1185240 (= lt!537819 (-!1673 lt!537830 k!934))))

(declare-fun zeroValue!944 () V!44973)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44973)

(declare-fun lt!537828 () array!76540)

(declare-fun getCurrentListMapNoExtraKeys!5106 (array!76538 array!76540 (_ BitVec 32) (_ BitVec 32) V!44973 V!44973 (_ BitVec 32) Int) ListLongMap!17343)

(assert (=> b!1185240 (= lt!537822 (getCurrentListMapNoExtraKeys!5106 lt!537824 lt!537828 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185240 (= lt!537830 (getCurrentListMapNoExtraKeys!5106 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537820 () Unit!39183)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!888 (array!76538 array!76540 (_ BitVec 32) (_ BitVec 32) V!44973 V!44973 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39183)

(assert (=> b!1185240 (= lt!537820 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185241 () Bool)

(assert (=> b!1185241 (= e!673930 tp_is_empty!29885)))

(declare-fun b!1185242 () Bool)

(declare-fun res!787941 () Bool)

(assert (=> b!1185242 (=> (not res!787941) (not e!673927))))

(assert (=> b!1185242 (= res!787941 (= (select (arr!36915 _keys!1208) i!673) k!934))))

(declare-fun b!1185243 () Bool)

(assert (=> b!1185243 (= e!673929 (and e!673931 mapRes!46655))))

(declare-fun condMapEmpty!46655 () Bool)

(declare-fun mapDefault!46655 () ValueCell!14233)

