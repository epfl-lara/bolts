; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133588 () Bool)

(assert start!133588)

(declare-fun b_free!31973 () Bool)

(declare-fun b_next!31973 () Bool)

(assert (=> start!133588 (= b_free!31973 (not b_next!31973))))

(declare-fun tp!113044 () Bool)

(declare-fun b_and!51467 () Bool)

(assert (=> start!133588 (= tp!113044 b_and!51467)))

(declare-fun b!1561257 () Bool)

(declare-fun e!870074 () Bool)

(assert (=> b!1561257 (= e!870074 (not true))))

(declare-datatypes ((V!59725 0))(
  ( (V!59726 (val!19403 Int)) )
))
(declare-fun lt!671118 () V!59725)

(declare-datatypes ((tuple2!25208 0))(
  ( (tuple2!25209 (_1!12614 (_ BitVec 64)) (_2!12614 V!59725)) )
))
(declare-datatypes ((List!36586 0))(
  ( (Nil!36583) (Cons!36582 (h!38029 tuple2!25208) (t!51356 List!36586)) )
))
(declare-datatypes ((ListLongMap!22655 0))(
  ( (ListLongMap!22656 (toList!11343 List!36586)) )
))
(declare-fun lt!671117 () ListLongMap!22655)

(declare-datatypes ((array!103949 0))(
  ( (array!103950 (arr!50162 (Array (_ BitVec 32) (_ BitVec 64))) (size!50713 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103949)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10263 (ListLongMap!22655 (_ BitVec 64)) Bool)

(declare-fun +!4998 (ListLongMap!22655 tuple2!25208) ListLongMap!22655)

(assert (=> b!1561257 (not (contains!10263 (+!4998 lt!671117 (tuple2!25209 (select (arr!50162 _keys!637) from!782) lt!671118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51860 0))(
  ( (Unit!51861) )
))
(declare-fun lt!671116 () Unit!51860)

(declare-fun addStillNotContains!534 (ListLongMap!22655 (_ BitVec 64) V!59725 (_ BitVec 64)) Unit!51860)

(assert (=> b!1561257 (= lt!671116 (addStillNotContains!534 lt!671117 (select (arr!50162 _keys!637) from!782) lt!671118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18289 0))(
  ( (ValueCellFull!18289 (v!22152 V!59725)) (EmptyCell!18289) )
))
(declare-datatypes ((array!103951 0))(
  ( (array!103952 (arr!50163 (Array (_ BitVec 32) ValueCell!18289)) (size!50714 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103951)

(declare-fun get!26228 (ValueCell!18289 V!59725) V!59725)

(declare-fun dynLambda!3887 (Int (_ BitVec 64)) V!59725)

(assert (=> b!1561257 (= lt!671118 (get!26228 (select (arr!50163 _values!487) from!782) (dynLambda!3887 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59725)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59725)

(declare-fun getCurrentListMapNoExtraKeys!6704 (array!103949 array!103951 (_ BitVec 32) (_ BitVec 32) V!59725 V!59725 (_ BitVec 32) Int) ListLongMap!22655)

(assert (=> b!1561257 (= lt!671117 (getCurrentListMapNoExtraKeys!6704 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561258 () Bool)

(declare-fun res!1067603 () Bool)

(assert (=> b!1561258 (=> (not res!1067603) (not e!870074))))

(assert (=> b!1561258 (= res!1067603 (and (= (size!50714 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50713 _keys!637) (size!50714 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561259 () Bool)

(declare-fun res!1067601 () Bool)

(assert (=> b!1561259 (=> (not res!1067601) (not e!870074))))

(assert (=> b!1561259 (= res!1067601 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50713 _keys!637)) (bvslt from!782 (size!50713 _keys!637))))))

(declare-fun b!1561260 () Bool)

(declare-fun e!870075 () Bool)

(declare-fun e!870076 () Bool)

(declare-fun mapRes!59334 () Bool)

(assert (=> b!1561260 (= e!870075 (and e!870076 mapRes!59334))))

(declare-fun condMapEmpty!59334 () Bool)

(declare-fun mapDefault!59334 () ValueCell!18289)

