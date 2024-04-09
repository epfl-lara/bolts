; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99784 () Bool)

(assert start!99784)

(declare-fun b_free!25327 () Bool)

(declare-fun b_next!25327 () Bool)

(assert (=> start!99784 (= b_free!25327 (not b_next!25327))))

(declare-fun tp!88695 () Bool)

(declare-fun b_and!41535 () Bool)

(assert (=> start!99784 (= tp!88695 b_and!41535)))

(declare-fun b!1184359 () Bool)

(declare-fun res!787317 () Bool)

(declare-fun e!673428 () Bool)

(assert (=> b!1184359 (=> (not res!787317) (not e!673428))))

(declare-datatypes ((array!76482 0))(
  ( (array!76483 (arr!36887 (Array (_ BitVec 32) (_ BitVec 64))) (size!37424 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76482)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44937 0))(
  ( (V!44938 (val!14985 Int)) )
))
(declare-datatypes ((ValueCell!14219 0))(
  ( (ValueCellFull!14219 (v!17624 V!44937)) (EmptyCell!14219) )
))
(declare-datatypes ((array!76484 0))(
  ( (array!76485 (arr!36888 (Array (_ BitVec 32) ValueCell!14219)) (size!37425 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76484)

(assert (=> b!1184359 (= res!787317 (and (= (size!37425 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37424 _keys!1208) (size!37425 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184360 () Bool)

(declare-fun res!787311 () Bool)

(assert (=> b!1184360 (=> (not res!787311) (not e!673428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76482 (_ BitVec 32)) Bool)

(assert (=> b!1184360 (= res!787311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184361 () Bool)

(declare-fun res!787307 () Bool)

(assert (=> b!1184361 (=> (not res!787307) (not e!673428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184361 (= res!787307 (validMask!0 mask!1564))))

(declare-fun b!1184362 () Bool)

(declare-fun res!787304 () Bool)

(assert (=> b!1184362 (=> (not res!787304) (not e!673428))))

(declare-datatypes ((List!26099 0))(
  ( (Nil!26096) (Cons!26095 (h!27304 (_ BitVec 64)) (t!38425 List!26099)) )
))
(declare-fun arrayNoDuplicates!0 (array!76482 (_ BitVec 32) List!26099) Bool)

(assert (=> b!1184362 (= res!787304 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26096))))

(declare-fun b!1184363 () Bool)

(declare-fun res!787306 () Bool)

(assert (=> b!1184363 (=> (not res!787306) (not e!673428))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184363 (= res!787306 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37424 _keys!1208))))))

(declare-fun b!1184364 () Bool)

(declare-fun res!787312 () Bool)

(assert (=> b!1184364 (=> (not res!787312) (not e!673428))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1184364 (= res!787312 (= (select (arr!36887 _keys!1208) i!673) k!934))))

(declare-fun b!1184365 () Bool)

(declare-fun e!673426 () Bool)

(declare-fun e!673425 () Bool)

(assert (=> b!1184365 (= e!673426 e!673425)))

(declare-fun res!787313 () Bool)

(assert (=> b!1184365 (=> res!787313 e!673425)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1184365 (= res!787313 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44937)

(declare-fun lt!537025 () array!76482)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19336 0))(
  ( (tuple2!19337 (_1!9678 (_ BitVec 64)) (_2!9678 V!44937)) )
))
(declare-datatypes ((List!26100 0))(
  ( (Nil!26097) (Cons!26096 (h!27305 tuple2!19336) (t!38426 List!26100)) )
))
(declare-datatypes ((ListLongMap!17317 0))(
  ( (ListLongMap!17318 (toList!8674 List!26100)) )
))
(declare-fun lt!537032 () ListLongMap!17317)

(declare-fun minValue!944 () V!44937)

(declare-fun lt!537024 () array!76484)

(declare-fun getCurrentListMapNoExtraKeys!5094 (array!76482 array!76484 (_ BitVec 32) (_ BitVec 32) V!44937 V!44937 (_ BitVec 32) Int) ListLongMap!17317)

(assert (=> b!1184365 (= lt!537032 (getCurrentListMapNoExtraKeys!5094 lt!537025 lt!537024 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537027 () V!44937)

(assert (=> b!1184365 (= lt!537024 (array!76485 (store (arr!36888 _values!996) i!673 (ValueCellFull!14219 lt!537027)) (size!37425 _values!996)))))

(declare-fun dynLambda!3058 (Int (_ BitVec 64)) V!44937)

(assert (=> b!1184365 (= lt!537027 (dynLambda!3058 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!537036 () ListLongMap!17317)

(assert (=> b!1184365 (= lt!537036 (getCurrentListMapNoExtraKeys!5094 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!787308 () Bool)

(assert (=> start!99784 (=> (not res!787308) (not e!673428))))

(assert (=> start!99784 (= res!787308 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37424 _keys!1208))))))

(assert (=> start!99784 e!673428))

(declare-fun tp_is_empty!29857 () Bool)

(assert (=> start!99784 tp_is_empty!29857))

(declare-fun array_inv!28032 (array!76482) Bool)

(assert (=> start!99784 (array_inv!28032 _keys!1208)))

(assert (=> start!99784 true))

(assert (=> start!99784 tp!88695))

(declare-fun e!673423 () Bool)

(declare-fun array_inv!28033 (array!76484) Bool)

(assert (=> start!99784 (and (array_inv!28033 _values!996) e!673423)))

(declare-fun b!1184366 () Bool)

(declare-fun e!673418 () Bool)

(declare-fun e!673429 () Bool)

(assert (=> b!1184366 (= e!673418 e!673429)))

(declare-fun res!787305 () Bool)

(assert (=> b!1184366 (=> res!787305 e!673429)))

(assert (=> b!1184366 (= res!787305 (not (= (select (arr!36887 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184367 () Bool)

(declare-fun e!673419 () Bool)

(declare-fun mapRes!46613 () Bool)

(assert (=> b!1184367 (= e!673423 (and e!673419 mapRes!46613))))

(declare-fun condMapEmpty!46613 () Bool)

(declare-fun mapDefault!46613 () ValueCell!14219)

