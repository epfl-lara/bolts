; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98184 () Bool)

(assert start!98184)

(declare-fun b_free!23849 () Bool)

(declare-fun b_next!23849 () Bool)

(assert (=> start!98184 (= b_free!23849 (not b_next!23849))))

(declare-fun tp!84252 () Bool)

(declare-fun b_and!38503 () Bool)

(assert (=> start!98184 (= tp!84252 b_and!38503)))

(declare-fun b!1128345 () Bool)

(declare-fun e!642229 () Bool)

(declare-fun e!642225 () Bool)

(assert (=> b!1128345 (= e!642229 e!642225)))

(declare-fun res!754133 () Bool)

(assert (=> b!1128345 (=> (not res!754133) (not e!642225))))

(declare-datatypes ((array!73578 0))(
  ( (array!73579 (arr!35438 (Array (_ BitVec 32) (_ BitVec 64))) (size!35975 (_ BitVec 32))) )
))
(declare-fun lt!500914 () array!73578)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73578 (_ BitVec 32)) Bool)

(assert (=> b!1128345 (= res!754133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500914 mask!1564))))

(declare-fun _keys!1208 () array!73578)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128345 (= lt!500914 (array!73579 (store (arr!35438 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35975 _keys!1208)))))

(declare-fun b!1128346 () Bool)

(declare-fun res!754132 () Bool)

(assert (=> b!1128346 (=> (not res!754132) (not e!642229))))

(declare-datatypes ((List!24839 0))(
  ( (Nil!24836) (Cons!24835 (h!26044 (_ BitVec 64)) (t!35687 List!24839)) )
))
(declare-fun arrayNoDuplicates!0 (array!73578 (_ BitVec 32) List!24839) Bool)

(assert (=> b!1128346 (= res!754132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24836))))

(declare-fun b!1128347 () Bool)

(declare-fun e!642233 () Bool)

(declare-fun tp_is_empty!28379 () Bool)

(assert (=> b!1128347 (= e!642233 tp_is_empty!28379)))

(declare-fun res!754131 () Bool)

(assert (=> start!98184 (=> (not res!754131) (not e!642229))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98184 (= res!754131 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35975 _keys!1208))))))

(assert (=> start!98184 e!642229))

(assert (=> start!98184 tp_is_empty!28379))

(declare-fun array_inv!27056 (array!73578) Bool)

(assert (=> start!98184 (array_inv!27056 _keys!1208)))

(assert (=> start!98184 true))

(assert (=> start!98184 tp!84252))

(declare-datatypes ((V!42965 0))(
  ( (V!42966 (val!14246 Int)) )
))
(declare-datatypes ((ValueCell!13480 0))(
  ( (ValueCellFull!13480 (v!16880 V!42965)) (EmptyCell!13480) )
))
(declare-datatypes ((array!73580 0))(
  ( (array!73581 (arr!35439 (Array (_ BitVec 32) ValueCell!13480)) (size!35976 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73580)

(declare-fun e!642232 () Bool)

(declare-fun array_inv!27057 (array!73580) Bool)

(assert (=> start!98184 (and (array_inv!27057 _values!996) e!642232)))

(declare-fun b!1128348 () Bool)

(declare-fun e!642226 () Bool)

(declare-fun e!642230 () Bool)

(assert (=> b!1128348 (= e!642226 e!642230)))

(declare-fun res!754130 () Bool)

(assert (=> b!1128348 (=> res!754130 e!642230)))

(assert (=> b!1128348 (= res!754130 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42965)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18018 0))(
  ( (tuple2!18019 (_1!9019 (_ BitVec 64)) (_2!9019 V!42965)) )
))
(declare-datatypes ((List!24840 0))(
  ( (Nil!24837) (Cons!24836 (h!26045 tuple2!18018) (t!35688 List!24840)) )
))
(declare-datatypes ((ListLongMap!15999 0))(
  ( (ListLongMap!16000 (toList!8015 List!24840)) )
))
(declare-fun lt!500913 () ListLongMap!15999)

(declare-fun minValue!944 () V!42965)

(declare-fun lt!500915 () array!73580)

(declare-fun getCurrentListMapNoExtraKeys!4470 (array!73578 array!73580 (_ BitVec 32) (_ BitVec 32) V!42965 V!42965 (_ BitVec 32) Int) ListLongMap!15999)

(assert (=> b!1128348 (= lt!500913 (getCurrentListMapNoExtraKeys!4470 lt!500914 lt!500915 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2548 (Int (_ BitVec 64)) V!42965)

(assert (=> b!1128348 (= lt!500915 (array!73581 (store (arr!35439 _values!996) i!673 (ValueCellFull!13480 (dynLambda!2548 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35976 _values!996)))))

(declare-fun lt!500919 () ListLongMap!15999)

(assert (=> b!1128348 (= lt!500919 (getCurrentListMapNoExtraKeys!4470 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128349 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!47831 () ListLongMap!15999)

(declare-fun e!642227 () Bool)

(declare-fun call!47830 () ListLongMap!15999)

(declare-fun -!1150 (ListLongMap!15999 (_ BitVec 64)) ListLongMap!15999)

(assert (=> b!1128349 (= e!642227 (= call!47831 (-!1150 call!47830 k!934)))))

(declare-fun b!1128350 () Bool)

(declare-fun e!642224 () Bool)

(declare-fun mapRes!44386 () Bool)

(assert (=> b!1128350 (= e!642232 (and e!642224 mapRes!44386))))

(declare-fun condMapEmpty!44386 () Bool)

(declare-fun mapDefault!44386 () ValueCell!13480)

