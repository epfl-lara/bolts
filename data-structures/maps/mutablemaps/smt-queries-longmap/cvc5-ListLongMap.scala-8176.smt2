; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99958 () Bool)

(assert start!99958)

(declare-fun b_free!25501 () Bool)

(declare-fun b_next!25501 () Bool)

(assert (=> start!99958 (= b_free!25501 (not b_next!25501))))

(declare-fun tp!89218 () Bool)

(declare-fun b_and!41883 () Bool)

(assert (=> start!99958 (= tp!89218 b_and!41883)))

(declare-fun b!1189383 () Bool)

(declare-fun e!676260 () Bool)

(declare-fun e!676261 () Bool)

(assert (=> b!1189383 (= e!676260 e!676261)))

(declare-fun res!790997 () Bool)

(assert (=> b!1189383 (=> res!790997 e!676261)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189383 (= res!790997 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45169 0))(
  ( (V!45170 (val!15072 Int)) )
))
(declare-fun zeroValue!944 () V!45169)

(declare-datatypes ((array!76828 0))(
  ( (array!76829 (arr!37060 (Array (_ BitVec 32) (_ BitVec 64))) (size!37597 (_ BitVec 32))) )
))
(declare-fun lt!541020 () array!76828)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19488 0))(
  ( (tuple2!19489 (_1!9754 (_ BitVec 64)) (_2!9754 V!45169)) )
))
(declare-datatypes ((List!26248 0))(
  ( (Nil!26245) (Cons!26244 (h!27453 tuple2!19488) (t!38748 List!26248)) )
))
(declare-datatypes ((ListLongMap!17469 0))(
  ( (ListLongMap!17470 (toList!8750 List!26248)) )
))
(declare-fun lt!541018 () ListLongMap!17469)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45169)

(declare-datatypes ((ValueCell!14306 0))(
  ( (ValueCellFull!14306 (v!17711 V!45169)) (EmptyCell!14306) )
))
(declare-datatypes ((array!76830 0))(
  ( (array!76831 (arr!37061 (Array (_ BitVec 32) ValueCell!14306)) (size!37598 (_ BitVec 32))) )
))
(declare-fun lt!541015 () array!76830)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5164 (array!76828 array!76830 (_ BitVec 32) (_ BitVec 32) V!45169 V!45169 (_ BitVec 32) Int) ListLongMap!17469)

(assert (=> b!1189383 (= lt!541018 (getCurrentListMapNoExtraKeys!5164 lt!541020 lt!541015 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76830)

(declare-fun dynLambda!3116 (Int (_ BitVec 64)) V!45169)

(assert (=> b!1189383 (= lt!541015 (array!76831 (store (arr!37061 _values!996) i!673 (ValueCellFull!14306 (dynLambda!3116 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37598 _values!996)))))

(declare-fun _keys!1208 () array!76828)

(declare-fun lt!541017 () ListLongMap!17469)

(assert (=> b!1189383 (= lt!541017 (getCurrentListMapNoExtraKeys!5164 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46874 () Bool)

(declare-fun mapRes!46874 () Bool)

(assert (=> mapIsEmpty!46874 mapRes!46874))

(declare-fun b!1189384 () Bool)

(declare-fun res!790999 () Bool)

(declare-fun e!676259 () Bool)

(assert (=> b!1189384 (=> (not res!790999) (not e!676259))))

(declare-datatypes ((List!26249 0))(
  ( (Nil!26246) (Cons!26245 (h!27454 (_ BitVec 64)) (t!38749 List!26249)) )
))
(declare-fun arrayNoDuplicates!0 (array!76828 (_ BitVec 32) List!26249) Bool)

(assert (=> b!1189384 (= res!790999 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26246))))

(declare-fun res!791003 () Bool)

(assert (=> start!99958 (=> (not res!791003) (not e!676259))))

(assert (=> start!99958 (= res!791003 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37597 _keys!1208))))))

(assert (=> start!99958 e!676259))

(declare-fun tp_is_empty!30031 () Bool)

(assert (=> start!99958 tp_is_empty!30031))

(declare-fun array_inv!28158 (array!76828) Bool)

(assert (=> start!99958 (array_inv!28158 _keys!1208)))

(assert (=> start!99958 true))

(assert (=> start!99958 tp!89218))

(declare-fun e!676255 () Bool)

(declare-fun array_inv!28159 (array!76830) Bool)

(assert (=> start!99958 (and (array_inv!28159 _values!996) e!676255)))

(declare-fun b!1189385 () Bool)

(declare-fun e!676258 () Bool)

(assert (=> b!1189385 (= e!676258 tp_is_empty!30031)))

(declare-fun b!1189386 () Bool)

(declare-fun e!676256 () Bool)

(assert (=> b!1189386 (= e!676259 e!676256)))

(declare-fun res!791002 () Bool)

(assert (=> b!1189386 (=> (not res!791002) (not e!676256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76828 (_ BitVec 32)) Bool)

(assert (=> b!1189386 (= res!791002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541020 mask!1564))))

(assert (=> b!1189386 (= lt!541020 (array!76829 (store (arr!37060 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37597 _keys!1208)))))

(declare-fun b!1189387 () Bool)

(declare-fun e!676257 () Bool)

(assert (=> b!1189387 (= e!676257 tp_is_empty!30031)))

(declare-fun mapNonEmpty!46874 () Bool)

(declare-fun tp!89217 () Bool)

(assert (=> mapNonEmpty!46874 (= mapRes!46874 (and tp!89217 e!676257))))

(declare-fun mapRest!46874 () (Array (_ BitVec 32) ValueCell!14306))

(declare-fun mapValue!46874 () ValueCell!14306)

(declare-fun mapKey!46874 () (_ BitVec 32))

(assert (=> mapNonEmpty!46874 (= (arr!37061 _values!996) (store mapRest!46874 mapKey!46874 mapValue!46874))))

(declare-fun b!1189388 () Bool)

(declare-fun res!791006 () Bool)

(assert (=> b!1189388 (=> (not res!791006) (not e!676259))))

(assert (=> b!1189388 (= res!791006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189389 () Bool)

(assert (=> b!1189389 (= e!676256 (not e!676260))))

(declare-fun res!791005 () Bool)

(assert (=> b!1189389 (=> res!791005 e!676260)))

(assert (=> b!1189389 (= res!791005 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189389 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39392 0))(
  ( (Unit!39393) )
))
(declare-fun lt!541016 () Unit!39392)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76828 (_ BitVec 64) (_ BitVec 32)) Unit!39392)

(assert (=> b!1189389 (= lt!541016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189390 () Bool)

(declare-fun res!791008 () Bool)

(assert (=> b!1189390 (=> (not res!791008) (not e!676259))))

(assert (=> b!1189390 (= res!791008 (and (= (size!37598 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37597 _keys!1208) (size!37598 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189391 () Bool)

(assert (=> b!1189391 (= e!676255 (and e!676258 mapRes!46874))))

(declare-fun condMapEmpty!46874 () Bool)

(declare-fun mapDefault!46874 () ValueCell!14306)

