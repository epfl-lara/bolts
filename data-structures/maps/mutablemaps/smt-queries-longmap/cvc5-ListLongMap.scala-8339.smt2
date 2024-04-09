; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101554 () Bool)

(assert start!101554)

(declare-fun b_free!26305 () Bool)

(declare-fun b_next!26305 () Bool)

(assert (=> start!101554 (= b_free!26305 (not b_next!26305))))

(declare-fun tp!91953 () Bool)

(declare-fun b_and!43827 () Bool)

(assert (=> start!101554 (= tp!91953 b_and!43827)))

(declare-fun b!1220271 () Bool)

(declare-fun e!692956 () Bool)

(declare-fun e!692958 () Bool)

(assert (=> b!1220271 (= e!692956 e!692958)))

(declare-fun res!810644 () Bool)

(assert (=> b!1220271 (=> res!810644 e!692958)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1220271 (= res!810644 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46473 0))(
  ( (V!46474 (val!15561 Int)) )
))
(declare-fun zeroValue!944 () V!46473)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20166 0))(
  ( (tuple2!20167 (_1!10093 (_ BitVec 64)) (_2!10093 V!46473)) )
))
(declare-datatypes ((List!26985 0))(
  ( (Nil!26982) (Cons!26981 (h!28190 tuple2!20166) (t!40277 List!26985)) )
))
(declare-datatypes ((ListLongMap!18147 0))(
  ( (ListLongMap!18148 (toList!9089 List!26985)) )
))
(declare-fun lt!554889 () ListLongMap!18147)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78772 0))(
  ( (array!78773 (arr!38012 (Array (_ BitVec 32) (_ BitVec 64))) (size!38549 (_ BitVec 32))) )
))
(declare-fun lt!554886 () array!78772)

(declare-datatypes ((ValueCell!14795 0))(
  ( (ValueCellFull!14795 (v!18220 V!46473)) (EmptyCell!14795) )
))
(declare-datatypes ((array!78774 0))(
  ( (array!78775 (arr!38013 (Array (_ BitVec 32) ValueCell!14795)) (size!38550 (_ BitVec 32))) )
))
(declare-fun lt!554892 () array!78774)

(declare-fun minValue!944 () V!46473)

(declare-fun getCurrentListMapNoExtraKeys!5488 (array!78772 array!78774 (_ BitVec 32) (_ BitVec 32) V!46473 V!46473 (_ BitVec 32) Int) ListLongMap!18147)

(assert (=> b!1220271 (= lt!554889 (getCurrentListMapNoExtraKeys!5488 lt!554886 lt!554892 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78774)

(declare-fun lt!554891 () V!46473)

(assert (=> b!1220271 (= lt!554892 (array!78775 (store (arr!38013 _values!996) i!673 (ValueCellFull!14795 lt!554891)) (size!38550 _values!996)))))

(declare-fun dynLambda!3390 (Int (_ BitVec 64)) V!46473)

(assert (=> b!1220271 (= lt!554891 (dynLambda!3390 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78772)

(declare-fun lt!554894 () ListLongMap!18147)

(assert (=> b!1220271 (= lt!554894 (getCurrentListMapNoExtraKeys!5488 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220272 () Bool)

(declare-fun e!692957 () Bool)

(declare-fun e!692951 () Bool)

(assert (=> b!1220272 (= e!692957 e!692951)))

(declare-fun res!810645 () Bool)

(assert (=> b!1220272 (=> (not res!810645) (not e!692951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78772 (_ BitVec 32)) Bool)

(assert (=> b!1220272 (= res!810645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554886 mask!1564))))

(assert (=> b!1220272 (= lt!554886 (array!78773 (store (arr!38012 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38549 _keys!1208)))))

(declare-fun mapNonEmpty!48403 () Bool)

(declare-fun mapRes!48403 () Bool)

(declare-fun tp!91952 () Bool)

(declare-fun e!692950 () Bool)

(assert (=> mapNonEmpty!48403 (= mapRes!48403 (and tp!91952 e!692950))))

(declare-fun mapRest!48403 () (Array (_ BitVec 32) ValueCell!14795))

(declare-fun mapValue!48403 () ValueCell!14795)

(declare-fun mapKey!48403 () (_ BitVec 32))

(assert (=> mapNonEmpty!48403 (= (arr!38013 _values!996) (store mapRest!48403 mapKey!48403 mapValue!48403))))

(declare-fun b!1220273 () Bool)

(declare-fun res!810653 () Bool)

(assert (=> b!1220273 (=> (not res!810653) (not e!692957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220273 (= res!810653 (validMask!0 mask!1564))))

(declare-fun b!1220274 () Bool)

(declare-fun e!692949 () Bool)

(declare-fun tp_is_empty!31009 () Bool)

(assert (=> b!1220274 (= e!692949 tp_is_empty!31009)))

(declare-fun b!1220275 () Bool)

(declare-fun e!692954 () Bool)

(declare-fun e!692953 () Bool)

(assert (=> b!1220275 (= e!692954 e!692953)))

(declare-fun res!810647 () Bool)

(assert (=> b!1220275 (=> res!810647 e!692953)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1220275 (= res!810647 (not (= (select (arr!38012 _keys!1208) from!1455) k!934)))))

(declare-fun b!1220276 () Bool)

(declare-fun res!810659 () Bool)

(assert (=> b!1220276 (=> (not res!810659) (not e!692957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220276 (= res!810659 (validKeyInArray!0 k!934))))

(declare-fun b!1220277 () Bool)

(declare-fun res!810651 () Bool)

(assert (=> b!1220277 (=> (not res!810651) (not e!692957))))

(assert (=> b!1220277 (= res!810651 (= (select (arr!38012 _keys!1208) i!673) k!934))))

(declare-fun b!1220278 () Bool)

(assert (=> b!1220278 (= e!692951 (not e!692956))))

(declare-fun res!810655 () Bool)

(assert (=> b!1220278 (=> res!810655 e!692956)))

(assert (=> b!1220278 (= res!810655 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220278 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40350 0))(
  ( (Unit!40351) )
))
(declare-fun lt!554893 () Unit!40350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78772 (_ BitVec 64) (_ BitVec 32)) Unit!40350)

(assert (=> b!1220278 (= lt!554893 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220279 () Bool)

(declare-fun res!810649 () Bool)

(assert (=> b!1220279 (=> (not res!810649) (not e!692957))))

(assert (=> b!1220279 (= res!810649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220280 () Bool)

(declare-fun e!692948 () Bool)

(declare-fun e!692952 () Bool)

(assert (=> b!1220280 (= e!692948 e!692952)))

(declare-fun res!810646 () Bool)

(assert (=> b!1220280 (=> res!810646 e!692952)))

(assert (=> b!1220280 (= res!810646 (not (= (select (arr!38012 _keys!1208) from!1455) k!934)))))

(assert (=> b!1220280 e!692954))

(declare-fun res!810654 () Bool)

(assert (=> b!1220280 (=> (not res!810654) (not e!692954))))

(declare-fun lt!554884 () ListLongMap!18147)

(declare-fun +!4064 (ListLongMap!18147 tuple2!20166) ListLongMap!18147)

(declare-fun get!19434 (ValueCell!14795 V!46473) V!46473)

(assert (=> b!1220280 (= res!810654 (= lt!554889 (+!4064 lt!554884 (tuple2!20167 (select (arr!38012 _keys!1208) from!1455) (get!19434 (select (arr!38013 _values!996) from!1455) lt!554891)))))))

(declare-fun b!1220281 () Bool)

(assert (=> b!1220281 (= e!692953 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220282 () Bool)

(declare-fun e!692955 () Bool)

(assert (=> b!1220282 (= e!692955 (and e!692949 mapRes!48403))))

(declare-fun condMapEmpty!48403 () Bool)

(declare-fun mapDefault!48403 () ValueCell!14795)

