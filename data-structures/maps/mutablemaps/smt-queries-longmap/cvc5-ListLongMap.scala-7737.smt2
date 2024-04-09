; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97202 () Bool)

(assert start!97202)

(declare-fun b!1105201 () Bool)

(declare-fun res!737510 () Bool)

(declare-fun e!630840 () Bool)

(assert (=> b!1105201 (=> (not res!737510) (not e!630840))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71668 0))(
  ( (array!71669 (arr!34483 (Array (_ BitVec 32) (_ BitVec 64))) (size!35020 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71668)

(assert (=> b!1105201 (= res!737510 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35020 _keys!1208))))))

(declare-fun b!1105202 () Bool)

(declare-fun e!630845 () Bool)

(declare-fun tp_is_empty!27397 () Bool)

(assert (=> b!1105202 (= e!630845 tp_is_empty!27397)))

(declare-fun b!1105203 () Bool)

(declare-fun res!737513 () Bool)

(assert (=> b!1105203 (=> (not res!737513) (not e!630840))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105203 (= res!737513 (validMask!0 mask!1564))))

(declare-fun b!1105204 () Bool)

(declare-fun res!737515 () Bool)

(assert (=> b!1105204 (=> (not res!737515) (not e!630840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71668 (_ BitVec 32)) Bool)

(assert (=> b!1105204 (= res!737515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!42913 () Bool)

(declare-fun mapRes!42913 () Bool)

(declare-fun tp!81834 () Bool)

(declare-fun e!630843 () Bool)

(assert (=> mapNonEmpty!42913 (= mapRes!42913 (and tp!81834 e!630843))))

(declare-datatypes ((V!41657 0))(
  ( (V!41658 (val!13755 Int)) )
))
(declare-datatypes ((ValueCell!12989 0))(
  ( (ValueCellFull!12989 (v!16389 V!41657)) (EmptyCell!12989) )
))
(declare-datatypes ((array!71670 0))(
  ( (array!71671 (arr!34484 (Array (_ BitVec 32) ValueCell!12989)) (size!35021 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71670)

(declare-fun mapRest!42913 () (Array (_ BitVec 32) ValueCell!12989))

(declare-fun mapValue!42913 () ValueCell!12989)

(declare-fun mapKey!42913 () (_ BitVec 32))

(assert (=> mapNonEmpty!42913 (= (arr!34484 _values!996) (store mapRest!42913 mapKey!42913 mapValue!42913))))

(declare-fun b!1105205 () Bool)

(declare-fun e!630844 () Bool)

(assert (=> b!1105205 (= e!630844 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105205 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36201 0))(
  ( (Unit!36202) )
))
(declare-fun lt!495254 () Unit!36201)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71668 (_ BitVec 64) (_ BitVec 32)) Unit!36201)

(assert (=> b!1105205 (= lt!495254 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!737517 () Bool)

(assert (=> start!97202 (=> (not res!737517) (not e!630840))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97202 (= res!737517 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35020 _keys!1208))))))

(assert (=> start!97202 e!630840))

(declare-fun array_inv!26404 (array!71668) Bool)

(assert (=> start!97202 (array_inv!26404 _keys!1208)))

(assert (=> start!97202 true))

(declare-fun e!630842 () Bool)

(declare-fun array_inv!26405 (array!71670) Bool)

(assert (=> start!97202 (and (array_inv!26405 _values!996) e!630842)))

(declare-fun b!1105206 () Bool)

(assert (=> b!1105206 (= e!630842 (and e!630845 mapRes!42913))))

(declare-fun condMapEmpty!42913 () Bool)

(declare-fun mapDefault!42913 () ValueCell!12989)

