; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97238 () Bool)

(assert start!97238)

(declare-fun b!1105903 () Bool)

(declare-fun res!738053 () Bool)

(declare-fun e!631164 () Bool)

(assert (=> b!1105903 (=> (not res!738053) (not e!631164))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71738 0))(
  ( (array!71739 (arr!34518 (Array (_ BitVec 32) (_ BitVec 64))) (size!35055 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71738)

(assert (=> b!1105903 (= res!738053 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35055 _keys!1208))))))

(declare-fun b!1105904 () Bool)

(declare-fun res!738048 () Bool)

(assert (=> b!1105904 (=> (not res!738048) (not e!631164))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105904 (= res!738048 (validKeyInArray!0 k!934))))

(declare-fun b!1105905 () Bool)

(declare-fun res!738055 () Bool)

(declare-fun e!631169 () Bool)

(assert (=> b!1105905 (=> (not res!738055) (not e!631169))))

(declare-fun lt!495362 () array!71738)

(declare-datatypes ((List!24204 0))(
  ( (Nil!24201) (Cons!24200 (h!25409 (_ BitVec 64)) (t!34476 List!24204)) )
))
(declare-fun arrayNoDuplicates!0 (array!71738 (_ BitVec 32) List!24204) Bool)

(assert (=> b!1105905 (= res!738055 (arrayNoDuplicates!0 lt!495362 #b00000000000000000000000000000000 Nil!24201))))

(declare-fun mapIsEmpty!42967 () Bool)

(declare-fun mapRes!42967 () Bool)

(assert (=> mapIsEmpty!42967 mapRes!42967))

(declare-fun b!1105906 () Bool)

(declare-fun res!738052 () Bool)

(assert (=> b!1105906 (=> (not res!738052) (not e!631164))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41705 0))(
  ( (V!41706 (val!13773 Int)) )
))
(declare-datatypes ((ValueCell!13007 0))(
  ( (ValueCellFull!13007 (v!16407 V!41705)) (EmptyCell!13007) )
))
(declare-datatypes ((array!71740 0))(
  ( (array!71741 (arr!34519 (Array (_ BitVec 32) ValueCell!13007)) (size!35056 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71740)

(assert (=> b!1105906 (= res!738052 (and (= (size!35056 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35055 _keys!1208) (size!35056 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105907 () Bool)

(assert (=> b!1105907 (= e!631164 e!631169)))

(declare-fun res!738050 () Bool)

(assert (=> b!1105907 (=> (not res!738050) (not e!631169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71738 (_ BitVec 32)) Bool)

(assert (=> b!1105907 (= res!738050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495362 mask!1564))))

(assert (=> b!1105907 (= lt!495362 (array!71739 (store (arr!34518 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35055 _keys!1208)))))

(declare-fun mapNonEmpty!42967 () Bool)

(declare-fun tp!81888 () Bool)

(declare-fun e!631167 () Bool)

(assert (=> mapNonEmpty!42967 (= mapRes!42967 (and tp!81888 e!631167))))

(declare-fun mapRest!42967 () (Array (_ BitVec 32) ValueCell!13007))

(declare-fun mapKey!42967 () (_ BitVec 32))

(declare-fun mapValue!42967 () ValueCell!13007)

(assert (=> mapNonEmpty!42967 (= (arr!34519 _values!996) (store mapRest!42967 mapKey!42967 mapValue!42967))))

(declare-fun b!1105908 () Bool)

(declare-fun e!631166 () Bool)

(declare-fun tp_is_empty!27433 () Bool)

(assert (=> b!1105908 (= e!631166 tp_is_empty!27433)))

(declare-fun b!1105909 () Bool)

(declare-fun res!738057 () Bool)

(assert (=> b!1105909 (=> (not res!738057) (not e!631164))))

(assert (=> b!1105909 (= res!738057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105910 () Bool)

(assert (=> b!1105910 (= e!631169 (not true))))

(declare-fun arrayContainsKey!0 (array!71738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105910 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36227 0))(
  ( (Unit!36228) )
))
(declare-fun lt!495363 () Unit!36227)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71738 (_ BitVec 64) (_ BitVec 32)) Unit!36227)

(assert (=> b!1105910 (= lt!495363 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105911 () Bool)

(declare-fun res!738056 () Bool)

(assert (=> b!1105911 (=> (not res!738056) (not e!631164))))

(assert (=> b!1105911 (= res!738056 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24201))))

(declare-fun b!1105912 () Bool)

(declare-fun res!738049 () Bool)

(assert (=> b!1105912 (=> (not res!738049) (not e!631164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105912 (= res!738049 (validMask!0 mask!1564))))

(declare-fun b!1105913 () Bool)

(declare-fun e!631168 () Bool)

(assert (=> b!1105913 (= e!631168 (and e!631166 mapRes!42967))))

(declare-fun condMapEmpty!42967 () Bool)

(declare-fun mapDefault!42967 () ValueCell!13007)

