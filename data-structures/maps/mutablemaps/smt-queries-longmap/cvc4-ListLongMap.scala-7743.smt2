; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97242 () Bool)

(assert start!97242)

(declare-fun b!1105981 () Bool)

(declare-fun res!738113 () Bool)

(declare-fun e!631204 () Bool)

(assert (=> b!1105981 (=> (not res!738113) (not e!631204))))

(declare-datatypes ((array!71746 0))(
  ( (array!71747 (arr!34522 (Array (_ BitVec 32) (_ BitVec 64))) (size!35059 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71746)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71746 (_ BitVec 32)) Bool)

(assert (=> b!1105981 (= res!738113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105982 () Bool)

(declare-fun res!738117 () Bool)

(assert (=> b!1105982 (=> (not res!738117) (not e!631204))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105982 (= res!738117 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35059 _keys!1208))))))

(declare-fun b!1105983 () Bool)

(declare-fun res!738116 () Bool)

(assert (=> b!1105983 (=> (not res!738116) (not e!631204))))

(declare-datatypes ((List!24206 0))(
  ( (Nil!24203) (Cons!24202 (h!25411 (_ BitVec 64)) (t!34478 List!24206)) )
))
(declare-fun arrayNoDuplicates!0 (array!71746 (_ BitVec 32) List!24206) Bool)

(assert (=> b!1105983 (= res!738116 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24203))))

(declare-fun res!738109 () Bool)

(assert (=> start!97242 (=> (not res!738109) (not e!631204))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97242 (= res!738109 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35059 _keys!1208))))))

(assert (=> start!97242 e!631204))

(declare-fun array_inv!26430 (array!71746) Bool)

(assert (=> start!97242 (array_inv!26430 _keys!1208)))

(assert (=> start!97242 true))

(declare-datatypes ((V!41709 0))(
  ( (V!41710 (val!13775 Int)) )
))
(declare-datatypes ((ValueCell!13009 0))(
  ( (ValueCellFull!13009 (v!16409 V!41709)) (EmptyCell!13009) )
))
(declare-datatypes ((array!71748 0))(
  ( (array!71749 (arr!34523 (Array (_ BitVec 32) ValueCell!13009)) (size!35060 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71748)

(declare-fun e!631205 () Bool)

(declare-fun array_inv!26431 (array!71748) Bool)

(assert (=> start!97242 (and (array_inv!26431 _values!996) e!631205)))

(declare-fun mapNonEmpty!42973 () Bool)

(declare-fun mapRes!42973 () Bool)

(declare-fun tp!81894 () Bool)

(declare-fun e!631200 () Bool)

(assert (=> mapNonEmpty!42973 (= mapRes!42973 (and tp!81894 e!631200))))

(declare-fun mapKey!42973 () (_ BitVec 32))

(declare-fun mapValue!42973 () ValueCell!13009)

(declare-fun mapRest!42973 () (Array (_ BitVec 32) ValueCell!13009))

(assert (=> mapNonEmpty!42973 (= (arr!34523 _values!996) (store mapRest!42973 mapKey!42973 mapValue!42973))))

(declare-fun b!1105984 () Bool)

(declare-fun e!631203 () Bool)

(assert (=> b!1105984 (= e!631205 (and e!631203 mapRes!42973))))

(declare-fun condMapEmpty!42973 () Bool)

(declare-fun mapDefault!42973 () ValueCell!13009)

