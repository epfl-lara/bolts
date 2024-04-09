; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101512 () Bool)

(assert start!101512)

(declare-fun b_free!26293 () Bool)

(declare-fun b_next!26293 () Bool)

(assert (=> start!101512 (= b_free!26293 (not b_next!26293))))

(declare-fun tp!91914 () Bool)

(declare-fun b_and!43785 () Bool)

(assert (=> start!101512 (= tp!91914 b_and!43785)))

(declare-fun mapIsEmpty!48382 () Bool)

(declare-fun mapRes!48382 () Bool)

(assert (=> mapIsEmpty!48382 mapRes!48382))

(declare-fun b!1219765 () Bool)

(declare-fun e!692633 () Bool)

(declare-fun e!692635 () Bool)

(assert (=> b!1219765 (= e!692633 e!692635)))

(declare-fun res!810291 () Bool)

(assert (=> b!1219765 (=> res!810291 e!692635)))

(declare-datatypes ((array!78746 0))(
  ( (array!78747 (arr!38000 (Array (_ BitVec 32) (_ BitVec 64))) (size!38537 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78746)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1219765 (= res!810291 (not (= (select (arr!38000 _keys!1208) from!1455) k!934)))))

(declare-fun b!1219766 () Bool)

(declare-fun e!692634 () Bool)

(declare-fun e!692630 () Bool)

(assert (=> b!1219766 (= e!692634 e!692630)))

(declare-fun res!810293 () Bool)

(assert (=> b!1219766 (=> (not res!810293) (not e!692630))))

(declare-fun lt!554594 () array!78746)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78746 (_ BitVec 32)) Bool)

(assert (=> b!1219766 (= res!810293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554594 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219766 (= lt!554594 (array!78747 (store (arr!38000 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38537 _keys!1208)))))

(declare-fun b!1219767 () Bool)

(declare-fun arrayContainsKey!0 (array!78746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219767 (= e!692635 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219768 () Bool)

(declare-fun e!692629 () Bool)

(declare-fun e!692639 () Bool)

(assert (=> b!1219768 (= e!692629 e!692639)))

(declare-fun res!810304 () Bool)

(assert (=> b!1219768 (=> res!810304 e!692639)))

(assert (=> b!1219768 (= res!810304 (not (= (select (arr!38000 _keys!1208) from!1455) k!934)))))

(assert (=> b!1219768 e!692633))

(declare-fun res!810302 () Bool)

(assert (=> b!1219768 (=> (not res!810302) (not e!692633))))

(declare-datatypes ((V!46457 0))(
  ( (V!46458 (val!15555 Int)) )
))
(declare-fun lt!554601 () V!46457)

(declare-datatypes ((ValueCell!14789 0))(
  ( (ValueCellFull!14789 (v!18213 V!46457)) (EmptyCell!14789) )
))
(declare-datatypes ((array!78748 0))(
  ( (array!78749 (arr!38001 (Array (_ BitVec 32) ValueCell!14789)) (size!38538 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78748)

(declare-datatypes ((tuple2!20154 0))(
  ( (tuple2!20155 (_1!10087 (_ BitVec 64)) (_2!10087 V!46457)) )
))
(declare-datatypes ((List!26973 0))(
  ( (Nil!26970) (Cons!26969 (h!28178 tuple2!20154) (t!40253 List!26973)) )
))
(declare-datatypes ((ListLongMap!18135 0))(
  ( (ListLongMap!18136 (toList!9083 List!26973)) )
))
(declare-fun lt!554600 () ListLongMap!18135)

(declare-fun lt!554597 () ListLongMap!18135)

(declare-fun +!4058 (ListLongMap!18135 tuple2!20154) ListLongMap!18135)

(declare-fun get!19422 (ValueCell!14789 V!46457) V!46457)

(assert (=> b!1219768 (= res!810302 (= lt!554597 (+!4058 lt!554600 (tuple2!20155 (select (arr!38000 _keys!1208) from!1455) (get!19422 (select (arr!38001 _values!996) from!1455) lt!554601)))))))

(declare-fun b!1219769 () Bool)

(declare-fun res!810299 () Bool)

(assert (=> b!1219769 (=> (not res!810299) (not e!692630))))

(declare-datatypes ((List!26974 0))(
  ( (Nil!26971) (Cons!26970 (h!28179 (_ BitVec 64)) (t!40254 List!26974)) )
))
(declare-fun arrayNoDuplicates!0 (array!78746 (_ BitVec 32) List!26974) Bool)

(assert (=> b!1219769 (= res!810299 (arrayNoDuplicates!0 lt!554594 #b00000000000000000000000000000000 Nil!26971))))

(declare-fun b!1219770 () Bool)

(declare-fun res!810303 () Bool)

(assert (=> b!1219770 (=> (not res!810303) (not e!692634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219770 (= res!810303 (validMask!0 mask!1564))))

(declare-fun b!1219771 () Bool)

(assert (=> b!1219771 (= e!692639 true)))

(assert (=> b!1219771 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!40340 0))(
  ( (Unit!40341) )
))
(declare-fun lt!554593 () Unit!40340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78746 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40340)

(assert (=> b!1219771 (= lt!554593 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219772 () Bool)

(declare-fun res!810300 () Bool)

(assert (=> b!1219772 (=> (not res!810300) (not e!692634))))

(assert (=> b!1219772 (= res!810300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!810292 () Bool)

(assert (=> start!101512 (=> (not res!810292) (not e!692634))))

(assert (=> start!101512 (= res!810292 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38537 _keys!1208))))))

(assert (=> start!101512 e!692634))

(declare-fun tp_is_empty!30997 () Bool)

(assert (=> start!101512 tp_is_empty!30997))

(declare-fun array_inv!28832 (array!78746) Bool)

(assert (=> start!101512 (array_inv!28832 _keys!1208)))

(assert (=> start!101512 true))

(assert (=> start!101512 tp!91914))

(declare-fun e!692632 () Bool)

(declare-fun array_inv!28833 (array!78748) Bool)

(assert (=> start!101512 (and (array_inv!28833 _values!996) e!692632)))

(declare-fun b!1219773 () Bool)

(declare-fun res!810295 () Bool)

(assert (=> b!1219773 (=> (not res!810295) (not e!692634))))

(assert (=> b!1219773 (= res!810295 (= (select (arr!38000 _keys!1208) i!673) k!934))))

(declare-fun b!1219774 () Bool)

(declare-fun e!692636 () Bool)

(assert (=> b!1219774 (= e!692636 tp_is_empty!30997)))

(declare-fun b!1219775 () Bool)

(declare-fun e!692640 () Bool)

(assert (=> b!1219775 (= e!692630 (not e!692640))))

(declare-fun res!810290 () Bool)

(assert (=> b!1219775 (=> res!810290 e!692640)))

(assert (=> b!1219775 (= res!810290 (bvsgt from!1455 i!673))))

(assert (=> b!1219775 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!554602 () Unit!40340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78746 (_ BitVec 64) (_ BitVec 32)) Unit!40340)

(assert (=> b!1219775 (= lt!554602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219776 () Bool)

(declare-fun res!810294 () Bool)

(assert (=> b!1219776 (=> (not res!810294) (not e!692634))))

(assert (=> b!1219776 (= res!810294 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38537 _keys!1208))))))

(declare-fun b!1219777 () Bool)

(declare-fun e!692638 () Bool)

(assert (=> b!1219777 (= e!692632 (and e!692638 mapRes!48382))))

(declare-fun condMapEmpty!48382 () Bool)

(declare-fun mapDefault!48382 () ValueCell!14789)

