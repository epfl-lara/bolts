; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100508 () Bool)

(assert start!100508)

(declare-fun b_free!25795 () Bool)

(declare-fun b_next!25795 () Bool)

(assert (=> start!100508 (= b_free!25795 (not b_next!25795))))

(declare-fun tp!90376 () Bool)

(declare-fun b_and!42491 () Bool)

(assert (=> start!100508 (= tp!90376 b_and!42491)))

(declare-fun b!1199828 () Bool)

(declare-fun e!681464 () Bool)

(declare-fun e!681466 () Bool)

(assert (=> b!1199828 (= e!681464 e!681466)))

(declare-fun res!798740 () Bool)

(assert (=> b!1199828 (=> (not res!798740) (not e!681466))))

(declare-datatypes ((array!77754 0))(
  ( (array!77755 (arr!37518 (Array (_ BitVec 32) (_ BitVec 64))) (size!38055 (_ BitVec 32))) )
))
(declare-fun lt!543839 () array!77754)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77754 (_ BitVec 32)) Bool)

(assert (=> b!1199828 (= res!798740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543839 mask!1564))))

(declare-fun _keys!1208 () array!77754)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199828 (= lt!543839 (array!77755 (store (arr!37518 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38055 _keys!1208)))))

(declare-fun b!1199829 () Bool)

(declare-fun res!798748 () Bool)

(assert (=> b!1199829 (=> (not res!798748) (not e!681464))))

(assert (=> b!1199829 (= res!798748 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38055 _keys!1208))))))

(declare-fun b!1199830 () Bool)

(declare-fun res!798743 () Bool)

(assert (=> b!1199830 (=> (not res!798743) (not e!681464))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45793 0))(
  ( (V!45794 (val!15306 Int)) )
))
(declare-datatypes ((ValueCell!14540 0))(
  ( (ValueCellFull!14540 (v!17945 V!45793)) (EmptyCell!14540) )
))
(declare-datatypes ((array!77756 0))(
  ( (array!77757 (arr!37519 (Array (_ BitVec 32) ValueCell!14540)) (size!38056 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77756)

(assert (=> b!1199830 (= res!798743 (and (= (size!38056 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38055 _keys!1208) (size!38056 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!798741 () Bool)

(assert (=> start!100508 (=> (not res!798741) (not e!681464))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100508 (= res!798741 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38055 _keys!1208))))))

(assert (=> start!100508 e!681464))

(declare-fun tp_is_empty!30499 () Bool)

(assert (=> start!100508 tp_is_empty!30499))

(declare-fun array_inv!28494 (array!77754) Bool)

(assert (=> start!100508 (array_inv!28494 _keys!1208)))

(assert (=> start!100508 true))

(assert (=> start!100508 tp!90376))

(declare-fun e!681467 () Bool)

(declare-fun array_inv!28495 (array!77756) Bool)

(assert (=> start!100508 (and (array_inv!28495 _values!996) e!681467)))

(declare-fun b!1199831 () Bool)

(declare-fun e!681465 () Bool)

(assert (=> b!1199831 (= e!681465 true)))

(declare-fun zeroValue!944 () V!45793)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19732 0))(
  ( (tuple2!19733 (_1!9876 (_ BitVec 64)) (_2!9876 V!45793)) )
))
(declare-datatypes ((List!26565 0))(
  ( (Nil!26562) (Cons!26561 (h!27770 tuple2!19732) (t!39347 List!26565)) )
))
(declare-datatypes ((ListLongMap!17713 0))(
  ( (ListLongMap!17714 (toList!8872 List!26565)) )
))
(declare-fun lt!543838 () ListLongMap!17713)

(declare-fun minValue!944 () V!45793)

(declare-fun getCurrentListMapNoExtraKeys!5285 (array!77754 array!77756 (_ BitVec 32) (_ BitVec 32) V!45793 V!45793 (_ BitVec 32) Int) ListLongMap!17713)

(declare-fun dynLambda!3216 (Int (_ BitVec 64)) V!45793)

(assert (=> b!1199831 (= lt!543838 (getCurrentListMapNoExtraKeys!5285 lt!543839 (array!77757 (store (arr!37519 _values!996) i!673 (ValueCellFull!14540 (dynLambda!3216 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38056 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543841 () ListLongMap!17713)

(assert (=> b!1199831 (= lt!543841 (getCurrentListMapNoExtraKeys!5285 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199832 () Bool)

(assert (=> b!1199832 (= e!681466 (not e!681465))))

(declare-fun res!798749 () Bool)

(assert (=> b!1199832 (=> res!798749 e!681465)))

(assert (=> b!1199832 (= res!798749 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199832 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39712 0))(
  ( (Unit!39713) )
))
(declare-fun lt!543840 () Unit!39712)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77754 (_ BitVec 64) (_ BitVec 32)) Unit!39712)

(assert (=> b!1199832 (= lt!543840 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1199833 () Bool)

(declare-fun e!681468 () Bool)

(assert (=> b!1199833 (= e!681468 tp_is_empty!30499)))

(declare-fun b!1199834 () Bool)

(declare-fun res!798742 () Bool)

(assert (=> b!1199834 (=> (not res!798742) (not e!681464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199834 (= res!798742 (validKeyInArray!0 k!934))))

(declare-fun b!1199835 () Bool)

(declare-fun res!798746 () Bool)

(assert (=> b!1199835 (=> (not res!798746) (not e!681464))))

(declare-datatypes ((List!26566 0))(
  ( (Nil!26563) (Cons!26562 (h!27771 (_ BitVec 64)) (t!39348 List!26566)) )
))
(declare-fun arrayNoDuplicates!0 (array!77754 (_ BitVec 32) List!26566) Bool)

(assert (=> b!1199835 (= res!798746 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26563))))

(declare-fun b!1199836 () Bool)

(declare-fun res!798744 () Bool)

(assert (=> b!1199836 (=> (not res!798744) (not e!681466))))

(assert (=> b!1199836 (= res!798744 (arrayNoDuplicates!0 lt!543839 #b00000000000000000000000000000000 Nil!26563))))

(declare-fun mapNonEmpty!47591 () Bool)

(declare-fun mapRes!47591 () Bool)

(declare-fun tp!90375 () Bool)

(assert (=> mapNonEmpty!47591 (= mapRes!47591 (and tp!90375 e!681468))))

(declare-fun mapRest!47591 () (Array (_ BitVec 32) ValueCell!14540))

(declare-fun mapKey!47591 () (_ BitVec 32))

(declare-fun mapValue!47591 () ValueCell!14540)

(assert (=> mapNonEmpty!47591 (= (arr!37519 _values!996) (store mapRest!47591 mapKey!47591 mapValue!47591))))

(declare-fun b!1199837 () Bool)

(declare-fun res!798747 () Bool)

(assert (=> b!1199837 (=> (not res!798747) (not e!681464))))

(assert (=> b!1199837 (= res!798747 (= (select (arr!37518 _keys!1208) i!673) k!934))))

(declare-fun b!1199838 () Bool)

(declare-fun e!681463 () Bool)

(assert (=> b!1199838 (= e!681463 tp_is_empty!30499)))

(declare-fun b!1199839 () Bool)

(assert (=> b!1199839 (= e!681467 (and e!681463 mapRes!47591))))

(declare-fun condMapEmpty!47591 () Bool)

(declare-fun mapDefault!47591 () ValueCell!14540)

