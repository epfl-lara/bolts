; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100548 () Bool)

(assert start!100548)

(declare-fun b_free!25835 () Bool)

(declare-fun b_next!25835 () Bool)

(assert (=> start!100548 (= b_free!25835 (not b_next!25835))))

(declare-fun tp!90495 () Bool)

(declare-fun b_and!42571 () Bool)

(assert (=> start!100548 (= tp!90495 b_and!42571)))

(declare-fun b!1200819 () Bool)

(declare-fun res!799463 () Bool)

(declare-fun e!681969 () Bool)

(assert (=> b!1200819 (=> (not res!799463) (not e!681969))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200819 (= res!799463 (validMask!0 mask!1564))))

(declare-fun b!1200820 () Bool)

(declare-fun e!681966 () Bool)

(declare-fun e!681965 () Bool)

(assert (=> b!1200820 (= e!681966 e!681965)))

(declare-fun res!799461 () Bool)

(assert (=> b!1200820 (=> res!799461 e!681965)))

(declare-datatypes ((V!45845 0))(
  ( (V!45846 (val!15326 Int)) )
))
(declare-datatypes ((tuple2!19764 0))(
  ( (tuple2!19765 (_1!9892 (_ BitVec 64)) (_2!9892 V!45845)) )
))
(declare-datatypes ((List!26597 0))(
  ( (Nil!26594) (Cons!26593 (h!27802 tuple2!19764) (t!39419 List!26597)) )
))
(declare-datatypes ((ListLongMap!17745 0))(
  ( (ListLongMap!17746 (toList!8888 List!26597)) )
))
(declare-fun lt!544161 () ListLongMap!17745)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6891 (ListLongMap!17745 (_ BitVec 64)) Bool)

(assert (=> b!1200820 (= res!799461 (not (contains!6891 lt!544161 k!934)))))

(declare-fun zeroValue!944 () V!45845)

(declare-datatypes ((array!77832 0))(
  ( (array!77833 (arr!37557 (Array (_ BitVec 32) (_ BitVec 64))) (size!38094 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77832)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14560 0))(
  ( (ValueCellFull!14560 (v!17965 V!45845)) (EmptyCell!14560) )
))
(declare-datatypes ((array!77834 0))(
  ( (array!77835 (arr!37558 (Array (_ BitVec 32) ValueCell!14560)) (size!38095 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77834)

(declare-fun minValue!944 () V!45845)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5301 (array!77832 array!77834 (_ BitVec 32) (_ BitVec 32) V!45845 V!45845 (_ BitVec 32) Int) ListLongMap!17745)

(assert (=> b!1200820 (= lt!544161 (getCurrentListMapNoExtraKeys!5301 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200821 () Bool)

(declare-fun res!799465 () Bool)

(assert (=> b!1200821 (=> (not res!799465) (not e!681969))))

(declare-datatypes ((List!26598 0))(
  ( (Nil!26595) (Cons!26594 (h!27803 (_ BitVec 64)) (t!39420 List!26598)) )
))
(declare-fun arrayNoDuplicates!0 (array!77832 (_ BitVec 32) List!26598) Bool)

(assert (=> b!1200821 (= res!799465 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26595))))

(declare-fun b!1200822 () Bool)

(declare-fun res!799472 () Bool)

(assert (=> b!1200822 (=> (not res!799472) (not e!681969))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200822 (= res!799472 (= (select (arr!37557 _keys!1208) i!673) k!934))))

(declare-fun b!1200823 () Bool)

(declare-fun e!681963 () Bool)

(declare-fun call!57333 () ListLongMap!17745)

(declare-fun call!57334 () ListLongMap!17745)

(assert (=> b!1200823 (= e!681963 (= call!57333 call!57334))))

(declare-fun bm!57330 () Bool)

(declare-fun lt!544158 () array!77834)

(declare-fun lt!544162 () array!77832)

(assert (=> bm!57330 (= call!57333 (getCurrentListMapNoExtraKeys!5301 lt!544162 lt!544158 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200824 () Bool)

(declare-fun e!681970 () Bool)

(declare-fun e!681961 () Bool)

(declare-fun mapRes!47651 () Bool)

(assert (=> b!1200824 (= e!681970 (and e!681961 mapRes!47651))))

(declare-fun condMapEmpty!47651 () Bool)

(declare-fun mapDefault!47651 () ValueCell!14560)

