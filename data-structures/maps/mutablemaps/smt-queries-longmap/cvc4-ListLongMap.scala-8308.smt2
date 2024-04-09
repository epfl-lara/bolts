; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101236 () Bool)

(assert start!101236)

(declare-fun b_free!26123 () Bool)

(declare-fun b_next!26123 () Bool)

(assert (=> start!101236 (= b_free!26123 (not b_next!26123))))

(declare-fun tp!91391 () Bool)

(declare-fun b_and!43373 () Bool)

(assert (=> start!101236 (= tp!91391 b_and!43373)))

(declare-fun b!1214904 () Bool)

(declare-fun e!689923 () Bool)

(declare-fun tp_is_empty!30827 () Bool)

(assert (=> b!1214904 (= e!689923 tp_is_empty!30827)))

(declare-fun b!1214905 () Bool)

(declare-fun e!689925 () Bool)

(assert (=> b!1214905 (= e!689925 true)))

(declare-datatypes ((V!46229 0))(
  ( (V!46230 (val!15470 Int)) )
))
(declare-fun zeroValue!944 () V!46229)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78408 0))(
  ( (array!78409 (arr!37835 (Array (_ BitVec 32) (_ BitVec 64))) (size!38372 (_ BitVec 32))) )
))
(declare-fun lt!552428 () array!78408)

(declare-datatypes ((ValueCell!14704 0))(
  ( (ValueCellFull!14704 (v!18124 V!46229)) (EmptyCell!14704) )
))
(declare-datatypes ((array!78410 0))(
  ( (array!78411 (arr!37836 (Array (_ BitVec 32) ValueCell!14704)) (size!38373 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78410)

(declare-fun minValue!944 () V!46229)

(declare-datatypes ((tuple2!20024 0))(
  ( (tuple2!20025 (_1!10022 (_ BitVec 64)) (_2!10022 V!46229)) )
))
(declare-datatypes ((List!26843 0))(
  ( (Nil!26840) (Cons!26839 (h!28048 tuple2!20024) (t!39953 List!26843)) )
))
(declare-datatypes ((ListLongMap!18005 0))(
  ( (ListLongMap!18006 (toList!9018 List!26843)) )
))
(declare-fun lt!552430 () ListLongMap!18005)

(declare-fun getCurrentListMapNoExtraKeys!5423 (array!78408 array!78410 (_ BitVec 32) (_ BitVec 32) V!46229 V!46229 (_ BitVec 32) Int) ListLongMap!18005)

(declare-fun dynLambda!3332 (Int (_ BitVec 64)) V!46229)

(assert (=> b!1214905 (= lt!552430 (getCurrentListMapNoExtraKeys!5423 lt!552428 (array!78411 (store (arr!37836 _values!996) i!673 (ValueCellFull!14704 (dynLambda!3332 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38373 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78408)

(declare-fun lt!552431 () ListLongMap!18005)

(assert (=> b!1214905 (= lt!552431 (getCurrentListMapNoExtraKeys!5423 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214906 () Bool)

(declare-fun res!806702 () Bool)

(declare-fun e!689924 () Bool)

(assert (=> b!1214906 (=> (not res!806702) (not e!689924))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1214906 (= res!806702 (= (select (arr!37835 _keys!1208) i!673) k!934))))

(declare-fun b!1214907 () Bool)

(declare-fun res!806700 () Bool)

(assert (=> b!1214907 (=> (not res!806700) (not e!689924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214907 (= res!806700 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!48115 () Bool)

(declare-fun mapRes!48115 () Bool)

(assert (=> mapIsEmpty!48115 mapRes!48115))

(declare-fun b!1214908 () Bool)

(declare-fun res!806709 () Bool)

(assert (=> b!1214908 (=> (not res!806709) (not e!689924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214908 (= res!806709 (validMask!0 mask!1564))))

(declare-fun b!1214909 () Bool)

(declare-fun e!689921 () Bool)

(declare-fun e!689922 () Bool)

(assert (=> b!1214909 (= e!689921 (and e!689922 mapRes!48115))))

(declare-fun condMapEmpty!48115 () Bool)

(declare-fun mapDefault!48115 () ValueCell!14704)

