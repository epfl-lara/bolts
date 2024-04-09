; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100536 () Bool)

(assert start!100536)

(declare-fun b_free!25823 () Bool)

(declare-fun b_next!25823 () Bool)

(assert (=> start!100536 (= b_free!25823 (not b_next!25823))))

(declare-fun tp!90460 () Bool)

(declare-fun b_and!42547 () Bool)

(assert (=> start!100536 (= tp!90460 b_and!42547)))

(declare-datatypes ((V!45829 0))(
  ( (V!45830 (val!15320 Int)) )
))
(declare-datatypes ((tuple2!19752 0))(
  ( (tuple2!19753 (_1!9886 (_ BitVec 64)) (_2!9886 V!45829)) )
))
(declare-datatypes ((List!26586 0))(
  ( (Nil!26583) (Cons!26582 (h!27791 tuple2!19752) (t!39396 List!26586)) )
))
(declare-datatypes ((ListLongMap!17733 0))(
  ( (ListLongMap!17734 (toList!8882 List!26586)) )
))
(declare-fun call!57297 () ListLongMap!17733)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!57298 () ListLongMap!17733)

(declare-fun e!681776 () Bool)

(declare-fun b!1200468 () Bool)

(declare-fun -!1809 (ListLongMap!17733 (_ BitVec 64)) ListLongMap!17733)

(assert (=> b!1200468 (= e!681776 (= call!57297 (-!1809 call!57298 k!934)))))

(declare-fun mapNonEmpty!47633 () Bool)

(declare-fun mapRes!47633 () Bool)

(declare-fun tp!90459 () Bool)

(declare-fun e!681773 () Bool)

(assert (=> mapNonEmpty!47633 (= mapRes!47633 (and tp!90459 e!681773))))

(declare-datatypes ((ValueCell!14554 0))(
  ( (ValueCellFull!14554 (v!17959 V!45829)) (EmptyCell!14554) )
))
(declare-fun mapValue!47633 () ValueCell!14554)

(declare-fun mapRest!47633 () (Array (_ BitVec 32) ValueCell!14554))

(declare-datatypes ((array!77808 0))(
  ( (array!77809 (arr!37545 (Array (_ BitVec 32) ValueCell!14554)) (size!38082 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77808)

(declare-fun mapKey!47633 () (_ BitVec 32))

(assert (=> mapNonEmpty!47633 (= (arr!37545 _values!996) (store mapRest!47633 mapKey!47633 mapValue!47633))))

(declare-fun b!1200470 () Bool)

(declare-fun res!799211 () Bool)

(declare-fun e!681781 () Bool)

(assert (=> b!1200470 (=> (not res!799211) (not e!681781))))

(declare-datatypes ((array!77810 0))(
  ( (array!77811 (arr!37546 (Array (_ BitVec 32) (_ BitVec 64))) (size!38083 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77810)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77810 (_ BitVec 32)) Bool)

(assert (=> b!1200470 (= res!799211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!45829)

(declare-fun bm!57294 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45829)

(declare-fun getCurrentListMapNoExtraKeys!5295 (array!77810 array!77808 (_ BitVec 32) (_ BitVec 32) V!45829 V!45829 (_ BitVec 32) Int) ListLongMap!17733)

(assert (=> bm!57294 (= call!57298 (getCurrentListMapNoExtraKeys!5295 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200471 () Bool)

(assert (=> b!1200471 (= e!681776 (= call!57297 call!57298))))

(declare-fun b!1200472 () Bool)

(declare-fun res!799212 () Bool)

(assert (=> b!1200472 (=> (not res!799212) (not e!681781))))

(assert (=> b!1200472 (= res!799212 (and (= (size!38082 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38083 _keys!1208) (size!38082 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200473 () Bool)

(declare-fun e!681778 () Bool)

(declare-fun e!681777 () Bool)

(assert (=> b!1200473 (= e!681778 (and e!681777 mapRes!47633))))

(declare-fun condMapEmpty!47633 () Bool)

(declare-fun mapDefault!47633 () ValueCell!14554)

