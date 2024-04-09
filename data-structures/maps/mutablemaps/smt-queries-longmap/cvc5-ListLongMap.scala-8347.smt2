; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101668 () Bool)

(assert start!101668)

(declare-fun b_free!26353 () Bool)

(declare-fun b_next!26353 () Bool)

(assert (=> start!101668 (= b_free!26353 (not b_next!26353))))

(declare-fun tp!92103 () Bool)

(declare-fun b_and!43959 () Bool)

(assert (=> start!101668 (= tp!92103 b_and!43959)))

(declare-fun b!1222101 () Bool)

(declare-fun e!694086 () Bool)

(declare-fun e!694087 () Bool)

(assert (=> b!1222101 (= e!694086 e!694087)))

(declare-fun res!812038 () Bool)

(assert (=> b!1222101 (=> res!812038 e!694087)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222101 (= res!812038 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46537 0))(
  ( (V!46538 (val!15585 Int)) )
))
(declare-fun zeroValue!944 () V!46537)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14819 0))(
  ( (ValueCellFull!14819 (v!18247 V!46537)) (EmptyCell!14819) )
))
(declare-datatypes ((array!78872 0))(
  ( (array!78873 (arr!38060 (Array (_ BitVec 32) ValueCell!14819)) (size!38597 (_ BitVec 32))) )
))
(declare-fun lt!555941 () array!78872)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46537)

(declare-datatypes ((tuple2!20210 0))(
  ( (tuple2!20211 (_1!10115 (_ BitVec 64)) (_2!10115 V!46537)) )
))
(declare-datatypes ((List!27025 0))(
  ( (Nil!27022) (Cons!27021 (h!28230 tuple2!20210) (t!40365 List!27025)) )
))
(declare-datatypes ((ListLongMap!18191 0))(
  ( (ListLongMap!18192 (toList!9111 List!27025)) )
))
(declare-fun lt!555934 () ListLongMap!18191)

(declare-datatypes ((array!78874 0))(
  ( (array!78875 (arr!38061 (Array (_ BitVec 32) (_ BitVec 64))) (size!38598 (_ BitVec 32))) )
))
(declare-fun lt!555939 () array!78874)

(declare-fun getCurrentListMapNoExtraKeys!5509 (array!78874 array!78872 (_ BitVec 32) (_ BitVec 32) V!46537 V!46537 (_ BitVec 32) Int) ListLongMap!18191)

(assert (=> b!1222101 (= lt!555934 (getCurrentListMapNoExtraKeys!5509 lt!555939 lt!555941 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78872)

(declare-fun lt!555943 () V!46537)

(assert (=> b!1222101 (= lt!555941 (array!78873 (store (arr!38060 _values!996) i!673 (ValueCellFull!14819 lt!555943)) (size!38597 _values!996)))))

(declare-fun dynLambda!3407 (Int (_ BitVec 64)) V!46537)

(assert (=> b!1222101 (= lt!555943 (dynLambda!3407 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78874)

(declare-fun lt!555936 () ListLongMap!18191)

(assert (=> b!1222101 (= lt!555936 (getCurrentListMapNoExtraKeys!5509 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222102 () Bool)

(declare-fun e!694082 () Bool)

(declare-fun tp_is_empty!31057 () Bool)

(assert (=> b!1222102 (= e!694082 tp_is_empty!31057)))

(declare-fun b!1222103 () Bool)

(declare-fun res!812053 () Bool)

(declare-fun e!694081 () Bool)

(assert (=> b!1222103 (=> (not res!812053) (not e!694081))))

(assert (=> b!1222103 (= res!812053 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38598 _keys!1208))))))

(declare-fun b!1222104 () Bool)

(declare-fun e!694089 () Bool)

(assert (=> b!1222104 (= e!694089 (not e!694086))))

(declare-fun res!812050 () Bool)

(assert (=> b!1222104 (=> res!812050 e!694086)))

(assert (=> b!1222104 (= res!812050 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222104 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40392 0))(
  ( (Unit!40393) )
))
(declare-fun lt!555940 () Unit!40392)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78874 (_ BitVec 64) (_ BitVec 32)) Unit!40392)

(assert (=> b!1222104 (= lt!555940 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222105 () Bool)

(declare-fun e!694083 () Bool)

(declare-fun mapRes!48481 () Bool)

(assert (=> b!1222105 (= e!694083 (and e!694082 mapRes!48481))))

(declare-fun condMapEmpty!48481 () Bool)

(declare-fun mapDefault!48481 () ValueCell!14819)

