; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97958 () Bool)

(assert start!97958)

(declare-fun b_free!23623 () Bool)

(declare-fun b_next!23623 () Bool)

(assert (=> start!97958 (= b_free!23623 (not b_next!23623))))

(declare-fun tp!83574 () Bool)

(declare-fun b_and!38051 () Bool)

(assert (=> start!97958 (= tp!83574 b_and!38051)))

(declare-fun b!1121826 () Bool)

(declare-fun res!749534 () Bool)

(declare-fun e!638752 () Bool)

(assert (=> b!1121826 (=> (not res!749534) (not e!638752))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121826 (= res!749534 (validMask!0 mask!1564))))

(declare-fun b!1121827 () Bool)

(declare-fun e!638758 () Bool)

(declare-fun e!638755 () Bool)

(assert (=> b!1121827 (= e!638758 (not e!638755))))

(declare-fun res!749538 () Bool)

(assert (=> b!1121827 (=> res!749538 e!638755)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121827 (= res!749538 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73132 0))(
  ( (array!73133 (arr!35215 (Array (_ BitVec 32) (_ BitVec 64))) (size!35752 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73132)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121827 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36731 0))(
  ( (Unit!36732) )
))
(declare-fun lt!498476 () Unit!36731)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73132 (_ BitVec 64) (_ BitVec 32)) Unit!36731)

(assert (=> b!1121827 (= lt!498476 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1121828 () Bool)

(declare-fun res!749533 () Bool)

(assert (=> b!1121828 (=> (not res!749533) (not e!638758))))

(declare-fun lt!498478 () array!73132)

(declare-datatypes ((List!24644 0))(
  ( (Nil!24641) (Cons!24640 (h!25849 (_ BitVec 64)) (t!35266 List!24644)) )
))
(declare-fun arrayNoDuplicates!0 (array!73132 (_ BitVec 32) List!24644) Bool)

(assert (=> b!1121828 (= res!749533 (arrayNoDuplicates!0 lt!498478 #b00000000000000000000000000000000 Nil!24641))))

(declare-fun b!1121829 () Bool)

(declare-fun res!749527 () Bool)

(assert (=> b!1121829 (=> (not res!749527) (not e!638752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73132 (_ BitVec 32)) Bool)

(assert (=> b!1121829 (= res!749527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!42665 0))(
  ( (V!42666 (val!14133 Int)) )
))
(declare-datatypes ((tuple2!17806 0))(
  ( (tuple2!17807 (_1!8913 (_ BitVec 64)) (_2!8913 V!42665)) )
))
(declare-datatypes ((List!24645 0))(
  ( (Nil!24642) (Cons!24641 (h!25850 tuple2!17806) (t!35267 List!24645)) )
))
(declare-datatypes ((ListLongMap!15787 0))(
  ( (ListLongMap!15788 (toList!7909 List!24645)) )
))
(declare-fun call!47153 () ListLongMap!15787)

(declare-fun call!47152 () ListLongMap!15787)

(declare-fun e!638751 () Bool)

(declare-fun b!1121830 () Bool)

(declare-fun -!1073 (ListLongMap!15787 (_ BitVec 64)) ListLongMap!15787)

(assert (=> b!1121830 (= e!638751 (= call!47152 (-!1073 call!47153 k!934)))))

(declare-fun b!1121831 () Bool)

(declare-fun e!638753 () Bool)

(assert (=> b!1121831 (= e!638755 e!638753)))

(declare-fun res!749535 () Bool)

(assert (=> b!1121831 (=> res!749535 e!638753)))

(assert (=> b!1121831 (= res!749535 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42665)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498477 () ListLongMap!15787)

(declare-fun minValue!944 () V!42665)

(declare-datatypes ((ValueCell!13367 0))(
  ( (ValueCellFull!13367 (v!16767 V!42665)) (EmptyCell!13367) )
))
(declare-datatypes ((array!73134 0))(
  ( (array!73135 (arr!35216 (Array (_ BitVec 32) ValueCell!13367)) (size!35753 (_ BitVec 32))) )
))
(declare-fun lt!498480 () array!73134)

(declare-fun getCurrentListMapNoExtraKeys!4370 (array!73132 array!73134 (_ BitVec 32) (_ BitVec 32) V!42665 V!42665 (_ BitVec 32) Int) ListLongMap!15787)

(assert (=> b!1121831 (= lt!498477 (getCurrentListMapNoExtraKeys!4370 lt!498478 lt!498480 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73134)

(declare-fun dynLambda!2469 (Int (_ BitVec 64)) V!42665)

(assert (=> b!1121831 (= lt!498480 (array!73135 (store (arr!35216 _values!996) i!673 (ValueCellFull!13367 (dynLambda!2469 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35753 _values!996)))))

(declare-fun lt!498475 () ListLongMap!15787)

(assert (=> b!1121831 (= lt!498475 (getCurrentListMapNoExtraKeys!4370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121832 () Bool)

(declare-fun res!749536 () Bool)

(assert (=> b!1121832 (=> (not res!749536) (not e!638752))))

(assert (=> b!1121832 (= res!749536 (and (= (size!35753 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35752 _keys!1208) (size!35753 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47149 () Bool)

(assert (=> bm!47149 (= call!47153 (getCurrentListMapNoExtraKeys!4370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121833 () Bool)

(declare-fun res!749530 () Bool)

(assert (=> b!1121833 (=> (not res!749530) (not e!638752))))

(assert (=> b!1121833 (= res!749530 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24641))))

(declare-fun b!1121834 () Bool)

(declare-fun e!638756 () Bool)

(declare-fun e!638759 () Bool)

(declare-fun mapRes!44047 () Bool)

(assert (=> b!1121834 (= e!638756 (and e!638759 mapRes!44047))))

(declare-fun condMapEmpty!44047 () Bool)

(declare-fun mapDefault!44047 () ValueCell!13367)

