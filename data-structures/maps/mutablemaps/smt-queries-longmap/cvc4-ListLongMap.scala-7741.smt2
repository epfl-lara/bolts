; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97230 () Bool)

(assert start!97230)

(declare-fun mapIsEmpty!42955 () Bool)

(declare-fun mapRes!42955 () Bool)

(assert (=> mapIsEmpty!42955 mapRes!42955))

(declare-fun b!1105747 () Bool)

(declare-fun res!737934 () Bool)

(declare-fun e!631096 () Bool)

(assert (=> b!1105747 (=> (not res!737934) (not e!631096))))

(declare-datatypes ((array!71722 0))(
  ( (array!71723 (arr!34510 (Array (_ BitVec 32) (_ BitVec 64))) (size!35047 (_ BitVec 32))) )
))
(declare-fun lt!495338 () array!71722)

(declare-datatypes ((List!24200 0))(
  ( (Nil!24197) (Cons!24196 (h!25405 (_ BitVec 64)) (t!34472 List!24200)) )
))
(declare-fun arrayNoDuplicates!0 (array!71722 (_ BitVec 32) List!24200) Bool)

(assert (=> b!1105747 (= res!737934 (arrayNoDuplicates!0 lt!495338 #b00000000000000000000000000000000 Nil!24197))))

(declare-fun b!1105748 () Bool)

(declare-fun res!737930 () Bool)

(declare-fun e!631092 () Bool)

(assert (=> b!1105748 (=> (not res!737930) (not e!631092))))

(declare-fun _keys!1208 () array!71722)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41693 0))(
  ( (V!41694 (val!13769 Int)) )
))
(declare-datatypes ((ValueCell!13003 0))(
  ( (ValueCellFull!13003 (v!16403 V!41693)) (EmptyCell!13003) )
))
(declare-datatypes ((array!71724 0))(
  ( (array!71725 (arr!34511 (Array (_ BitVec 32) ValueCell!13003)) (size!35048 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71724)

(assert (=> b!1105748 (= res!737930 (and (= (size!35048 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35047 _keys!1208) (size!35048 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105749 () Bool)

(declare-fun e!631093 () Bool)

(declare-fun tp_is_empty!27425 () Bool)

(assert (=> b!1105749 (= e!631093 tp_is_empty!27425)))

(declare-fun b!1105750 () Bool)

(declare-fun res!737928 () Bool)

(assert (=> b!1105750 (=> (not res!737928) (not e!631092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105750 (= res!737928 (validMask!0 mask!1564))))

(declare-fun b!1105751 () Bool)

(declare-fun res!737935 () Bool)

(assert (=> b!1105751 (=> (not res!737935) (not e!631092))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105751 (= res!737935 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!42955 () Bool)

(declare-fun tp!81876 () Bool)

(assert (=> mapNonEmpty!42955 (= mapRes!42955 (and tp!81876 e!631093))))

(declare-fun mapValue!42955 () ValueCell!13003)

(declare-fun mapRest!42955 () (Array (_ BitVec 32) ValueCell!13003))

(declare-fun mapKey!42955 () (_ BitVec 32))

(assert (=> mapNonEmpty!42955 (= (arr!34511 _values!996) (store mapRest!42955 mapKey!42955 mapValue!42955))))

(declare-fun res!737931 () Bool)

(assert (=> start!97230 (=> (not res!737931) (not e!631092))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97230 (= res!737931 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35047 _keys!1208))))))

(assert (=> start!97230 e!631092))

(declare-fun array_inv!26420 (array!71722) Bool)

(assert (=> start!97230 (array_inv!26420 _keys!1208)))

(assert (=> start!97230 true))

(declare-fun e!631095 () Bool)

(declare-fun array_inv!26421 (array!71724) Bool)

(assert (=> start!97230 (and (array_inv!26421 _values!996) e!631095)))

(declare-fun b!1105752 () Bool)

(declare-fun e!631094 () Bool)

(assert (=> b!1105752 (= e!631094 tp_is_empty!27425)))

(declare-fun b!1105753 () Bool)

(assert (=> b!1105753 (= e!631095 (and e!631094 mapRes!42955))))

(declare-fun condMapEmpty!42955 () Bool)

(declare-fun mapDefault!42955 () ValueCell!13003)

