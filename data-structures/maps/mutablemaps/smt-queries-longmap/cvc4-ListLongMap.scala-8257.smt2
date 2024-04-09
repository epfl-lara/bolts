; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100530 () Bool)

(assert start!100530)

(declare-fun b_free!25817 () Bool)

(declare-fun b_next!25817 () Bool)

(assert (=> start!100530 (= b_free!25817 (not b_next!25817))))

(declare-fun tp!90442 () Bool)

(declare-fun b_and!42535 () Bool)

(assert (=> start!100530 (= tp!90442 b_and!42535)))

(declare-fun mapNonEmpty!47624 () Bool)

(declare-fun mapRes!47624 () Bool)

(declare-fun tp!90441 () Bool)

(declare-fun e!681700 () Bool)

(assert (=> mapNonEmpty!47624 (= mapRes!47624 (and tp!90441 e!681700))))

(declare-datatypes ((V!45821 0))(
  ( (V!45822 (val!15317 Int)) )
))
(declare-datatypes ((ValueCell!14551 0))(
  ( (ValueCellFull!14551 (v!17956 V!45821)) (EmptyCell!14551) )
))
(declare-fun mapValue!47624 () ValueCell!14551)

(declare-fun mapKey!47624 () (_ BitVec 32))

(declare-datatypes ((array!77796 0))(
  ( (array!77797 (arr!37539 (Array (_ BitVec 32) ValueCell!14551)) (size!38076 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77796)

(declare-fun mapRest!47624 () (Array (_ BitVec 32) ValueCell!14551))

(assert (=> mapNonEmpty!47624 (= (arr!37539 _values!996) (store mapRest!47624 mapKey!47624 mapValue!47624))))

(declare-datatypes ((array!77798 0))(
  ( (array!77799 (arr!37540 (Array (_ BitVec 32) (_ BitVec 64))) (size!38077 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77798)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1200312 () Bool)

(declare-fun e!681697 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200312 (= e!681697 (or (not (= from!1455 i!673)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!38077 _keys!1208)) (bvslt (bvsub (size!38077 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (bvsub (size!38077 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!45821)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19746 0))(
  ( (tuple2!19747 (_1!9883 (_ BitVec 64)) (_2!9883 V!45821)) )
))
(declare-datatypes ((List!26580 0))(
  ( (Nil!26577) (Cons!26576 (h!27785 tuple2!19746) (t!39384 List!26580)) )
))
(declare-datatypes ((ListLongMap!17727 0))(
  ( (ListLongMap!17728 (toList!8879 List!26580)) )
))
(declare-fun lt!543972 () ListLongMap!17727)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45821)

(declare-fun lt!543973 () array!77798)

(declare-fun getCurrentListMapNoExtraKeys!5292 (array!77798 array!77796 (_ BitVec 32) (_ BitVec 32) V!45821 V!45821 (_ BitVec 32) Int) ListLongMap!17727)

(declare-fun dynLambda!3223 (Int (_ BitVec 64)) V!45821)

(assert (=> b!1200312 (= lt!543972 (getCurrentListMapNoExtraKeys!5292 lt!543973 (array!77797 (store (arr!37539 _values!996) i!673 (ValueCellFull!14551 (dynLambda!3223 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38076 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543970 () ListLongMap!17727)

(assert (=> b!1200312 (= lt!543970 (getCurrentListMapNoExtraKeys!5292 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200314 () Bool)

(declare-fun e!681698 () Bool)

(declare-fun tp_is_empty!30521 () Bool)

(assert (=> b!1200314 (= e!681698 tp_is_empty!30521)))

(declare-fun b!1200315 () Bool)

(declare-fun res!799110 () Bool)

(declare-fun e!681699 () Bool)

(assert (=> b!1200315 (=> (not res!799110) (not e!681699))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200315 (= res!799110 (validKeyInArray!0 k!934))))

(declare-fun b!1200316 () Bool)

(declare-fun res!799113 () Bool)

(assert (=> b!1200316 (=> (not res!799113) (not e!681699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77798 (_ BitVec 32)) Bool)

(assert (=> b!1200316 (= res!799113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47624 () Bool)

(assert (=> mapIsEmpty!47624 mapRes!47624))

(declare-fun b!1200317 () Bool)

(declare-fun res!799104 () Bool)

(assert (=> b!1200317 (=> (not res!799104) (not e!681699))))

(declare-datatypes ((List!26581 0))(
  ( (Nil!26578) (Cons!26577 (h!27786 (_ BitVec 64)) (t!39385 List!26581)) )
))
(declare-fun arrayNoDuplicates!0 (array!77798 (_ BitVec 32) List!26581) Bool)

(assert (=> b!1200317 (= res!799104 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26578))))

(declare-fun b!1200318 () Bool)

(declare-fun e!681694 () Bool)

(assert (=> b!1200318 (= e!681694 (and e!681698 mapRes!47624))))

(declare-fun condMapEmpty!47624 () Bool)

(declare-fun mapDefault!47624 () ValueCell!14551)

