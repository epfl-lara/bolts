; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101504 () Bool)

(assert start!101504)

(declare-fun b_free!26285 () Bool)

(declare-fun b_next!26285 () Bool)

(assert (=> start!101504 (= b_free!26285 (not b_next!26285))))

(declare-fun tp!91890 () Bool)

(declare-fun b_and!43769 () Bool)

(assert (=> start!101504 (= tp!91890 b_and!43769)))

(declare-fun mapIsEmpty!48370 () Bool)

(declare-fun mapRes!48370 () Bool)

(assert (=> mapIsEmpty!48370 mapRes!48370))

(declare-fun b!1219529 () Bool)

(declare-fun res!810106 () Bool)

(declare-fun e!692490 () Bool)

(assert (=> b!1219529 (=> (not res!810106) (not e!692490))))

(declare-datatypes ((array!78730 0))(
  ( (array!78731 (arr!37992 (Array (_ BitVec 32) (_ BitVec 64))) (size!38529 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78730)

(declare-datatypes ((List!26965 0))(
  ( (Nil!26962) (Cons!26961 (h!28170 (_ BitVec 64)) (t!40237 List!26965)) )
))
(declare-fun arrayNoDuplicates!0 (array!78730 (_ BitVec 32) List!26965) Bool)

(assert (=> b!1219529 (= res!810106 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26962))))

(declare-fun b!1219530 () Bool)

(declare-fun e!692493 () Bool)

(declare-fun e!692489 () Bool)

(assert (=> b!1219530 (= e!692493 e!692489)))

(declare-fun res!810107 () Bool)

(assert (=> b!1219530 (=> res!810107 e!692489)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1219530 (= res!810107 (not (= (select (arr!37992 _keys!1208) from!1455) k!934)))))

(declare-fun e!692486 () Bool)

(assert (=> b!1219530 e!692486))

(declare-fun res!810108 () Bool)

(assert (=> b!1219530 (=> (not res!810108) (not e!692486))))

(declare-datatypes ((V!46445 0))(
  ( (V!46446 (val!15551 Int)) )
))
(declare-fun lt!554463 () V!46445)

(declare-datatypes ((ValueCell!14785 0))(
  ( (ValueCellFull!14785 (v!18209 V!46445)) (EmptyCell!14785) )
))
(declare-datatypes ((array!78732 0))(
  ( (array!78733 (arr!37993 (Array (_ BitVec 32) ValueCell!14785)) (size!38530 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78732)

(declare-datatypes ((tuple2!20146 0))(
  ( (tuple2!20147 (_1!10083 (_ BitVec 64)) (_2!10083 V!46445)) )
))
(declare-datatypes ((List!26966 0))(
  ( (Nil!26963) (Cons!26962 (h!28171 tuple2!20146) (t!40238 List!26966)) )
))
(declare-datatypes ((ListLongMap!18127 0))(
  ( (ListLongMap!18128 (toList!9079 List!26966)) )
))
(declare-fun lt!554462 () ListLongMap!18127)

(declare-fun lt!554467 () ListLongMap!18127)

(declare-fun +!4056 (ListLongMap!18127 tuple2!20146) ListLongMap!18127)

(declare-fun get!19416 (ValueCell!14785 V!46445) V!46445)

(assert (=> b!1219530 (= res!810108 (= lt!554462 (+!4056 lt!554467 (tuple2!20147 (select (arr!37992 _keys!1208) from!1455) (get!19416 (select (arr!37993 _values!996) from!1455) lt!554463)))))))

(declare-fun b!1219531 () Bool)

(declare-fun res!810104 () Bool)

(assert (=> b!1219531 (=> (not res!810104) (not e!692490))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219531 (= res!810104 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38529 _keys!1208))))))

(declare-fun b!1219532 () Bool)

(declare-fun e!692485 () Bool)

(declare-fun tp_is_empty!30989 () Bool)

(assert (=> b!1219532 (= e!692485 tp_is_empty!30989)))

(declare-fun b!1219533 () Bool)

(declare-fun res!810099 () Bool)

(declare-fun e!692488 () Bool)

(assert (=> b!1219533 (=> (not res!810099) (not e!692488))))

(declare-fun lt!554461 () array!78730)

(assert (=> b!1219533 (= res!810099 (arrayNoDuplicates!0 lt!554461 #b00000000000000000000000000000000 Nil!26962))))

(declare-fun b!1219534 () Bool)

(declare-fun res!810112 () Bool)

(assert (=> b!1219534 (=> (not res!810112) (not e!692490))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1219534 (= res!810112 (and (= (size!38530 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38529 _keys!1208) (size!38530 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219535 () Bool)

(declare-fun res!810109 () Bool)

(assert (=> b!1219535 (=> (not res!810109) (not e!692490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78730 (_ BitVec 32)) Bool)

(assert (=> b!1219535 (= res!810109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219536 () Bool)

(declare-fun e!692494 () Bool)

(assert (=> b!1219536 (= e!692486 e!692494)))

(declare-fun res!810103 () Bool)

(assert (=> b!1219536 (=> res!810103 e!692494)))

(assert (=> b!1219536 (= res!810103 (not (= (select (arr!37992 _keys!1208) from!1455) k!934)))))

(declare-fun b!1219537 () Bool)

(declare-fun e!692496 () Bool)

(assert (=> b!1219537 (= e!692496 tp_is_empty!30989)))

(declare-fun res!810111 () Bool)

(assert (=> start!101504 (=> (not res!810111) (not e!692490))))

(assert (=> start!101504 (= res!810111 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38529 _keys!1208))))))

(assert (=> start!101504 e!692490))

(assert (=> start!101504 tp_is_empty!30989))

(declare-fun array_inv!28826 (array!78730) Bool)

(assert (=> start!101504 (array_inv!28826 _keys!1208)))

(assert (=> start!101504 true))

(assert (=> start!101504 tp!91890))

(declare-fun e!692491 () Bool)

(declare-fun array_inv!28827 (array!78732) Bool)

(assert (=> start!101504 (and (array_inv!28827 _values!996) e!692491)))

(declare-fun b!1219538 () Bool)

(assert (=> b!1219538 (= e!692491 (and e!692485 mapRes!48370))))

(declare-fun condMapEmpty!48370 () Bool)

(declare-fun mapDefault!48370 () ValueCell!14785)

