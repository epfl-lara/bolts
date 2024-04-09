; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101582 () Bool)

(assert start!101582)

(declare-fun b_free!26333 () Bool)

(declare-fun b_next!26333 () Bool)

(assert (=> start!101582 (= b_free!26333 (not b_next!26333))))

(declare-fun tp!92037 () Bool)

(declare-fun b_and!43883 () Bool)

(assert (=> start!101582 (= tp!92037 b_and!43883)))

(declare-fun b!1221105 () Bool)

(declare-fun e!693468 () Bool)

(declare-fun tp_is_empty!31037 () Bool)

(assert (=> b!1221105 (= e!693468 tp_is_empty!31037)))

(declare-fun b!1221106 () Bool)

(declare-fun e!693469 () Bool)

(declare-fun e!693471 () Bool)

(assert (=> b!1221106 (= e!693469 e!693471)))

(declare-fun res!811338 () Bool)

(assert (=> b!1221106 (=> res!811338 e!693471)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1221106 (= res!811338 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46509 0))(
  ( (V!46510 (val!15575 Int)) )
))
(declare-fun zeroValue!944 () V!46509)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20192 0))(
  ( (tuple2!20193 (_1!10106 (_ BitVec 64)) (_2!10106 V!46509)) )
))
(declare-datatypes ((List!27008 0))(
  ( (Nil!27005) (Cons!27004 (h!28213 tuple2!20192) (t!40328 List!27008)) )
))
(declare-datatypes ((ListLongMap!18173 0))(
  ( (ListLongMap!18174 (toList!9102 List!27008)) )
))
(declare-fun lt!555397 () ListLongMap!18173)

(declare-fun minValue!944 () V!46509)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14809 0))(
  ( (ValueCellFull!14809 (v!18234 V!46509)) (EmptyCell!14809) )
))
(declare-datatypes ((array!78828 0))(
  ( (array!78829 (arr!38040 (Array (_ BitVec 32) ValueCell!14809)) (size!38577 (_ BitVec 32))) )
))
(declare-fun lt!555396 () array!78828)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78830 0))(
  ( (array!78831 (arr!38041 (Array (_ BitVec 32) (_ BitVec 64))) (size!38578 (_ BitVec 32))) )
))
(declare-fun lt!555398 () array!78830)

(declare-fun getCurrentListMapNoExtraKeys!5500 (array!78830 array!78828 (_ BitVec 32) (_ BitVec 32) V!46509 V!46509 (_ BitVec 32) Int) ListLongMap!18173)

(assert (=> b!1221106 (= lt!555397 (getCurrentListMapNoExtraKeys!5500 lt!555398 lt!555396 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555392 () V!46509)

(declare-fun _values!996 () array!78828)

(assert (=> b!1221106 (= lt!555396 (array!78829 (store (arr!38040 _values!996) i!673 (ValueCellFull!14809 lt!555392)) (size!38577 _values!996)))))

(declare-fun dynLambda!3401 (Int (_ BitVec 64)) V!46509)

(assert (=> b!1221106 (= lt!555392 (dynLambda!3401 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78830)

(declare-fun lt!555393 () ListLongMap!18173)

(assert (=> b!1221106 (= lt!555393 (getCurrentListMapNoExtraKeys!5500 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221107 () Bool)

(declare-fun e!693459 () Bool)

(declare-fun e!693465 () Bool)

(declare-fun mapRes!48445 () Bool)

(assert (=> b!1221107 (= e!693459 (and e!693465 mapRes!48445))))

(declare-fun condMapEmpty!48445 () Bool)

(declare-fun mapDefault!48445 () ValueCell!14809)

