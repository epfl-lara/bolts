; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107276 () Bool)

(assert start!107276)

(declare-fun mapIsEmpty!50974 () Bool)

(declare-fun mapRes!50974 () Bool)

(assert (=> mapIsEmpty!50974 mapRes!50974))

(declare-fun b!1271085 () Bool)

(declare-fun e!724775 () Bool)

(assert (=> b!1271085 (= e!724775 false)))

(declare-fun lt!574766 () Bool)

(declare-datatypes ((array!83071 0))(
  ( (array!83072 (arr!40068 (Array (_ BitVec 32) (_ BitVec 64))) (size!40605 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83071)

(declare-datatypes ((List!28678 0))(
  ( (Nil!28675) (Cons!28674 (h!29883 (_ BitVec 64)) (t!42214 List!28678)) )
))
(declare-fun arrayNoDuplicates!0 (array!83071 (_ BitVec 32) List!28678) Bool)

(assert (=> b!1271085 (= lt!574766 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28675))))

(declare-fun res!845806 () Bool)

(assert (=> start!107276 (=> (not res!845806) (not e!724775))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107276 (= res!845806 (validMask!0 mask!1730))))

(assert (=> start!107276 e!724775))

(declare-datatypes ((V!49099 0))(
  ( (V!49100 (val!16539 Int)) )
))
(declare-datatypes ((ValueCell!15611 0))(
  ( (ValueCellFull!15611 (v!19174 V!49099)) (EmptyCell!15611) )
))
(declare-datatypes ((array!83073 0))(
  ( (array!83074 (arr!40069 (Array (_ BitVec 32) ValueCell!15611)) (size!40606 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83073)

(declare-fun e!724778 () Bool)

(declare-fun array_inv!30421 (array!83073) Bool)

(assert (=> start!107276 (and (array_inv!30421 _values!1134) e!724778)))

(assert (=> start!107276 true))

(declare-fun array_inv!30422 (array!83071) Bool)

(assert (=> start!107276 (array_inv!30422 _keys!1364)))

(declare-fun b!1271086 () Bool)

(declare-fun e!724774 () Bool)

(declare-fun tp_is_empty!32929 () Bool)

(assert (=> b!1271086 (= e!724774 tp_is_empty!32929)))

(declare-fun b!1271087 () Bool)

(declare-fun res!845807 () Bool)

(assert (=> b!1271087 (=> (not res!845807) (not e!724775))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271087 (= res!845807 (and (= (size!40606 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40605 _keys!1364) (size!40606 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271088 () Bool)

(assert (=> b!1271088 (= e!724778 (and e!724774 mapRes!50974))))

(declare-fun condMapEmpty!50974 () Bool)

(declare-fun mapDefault!50974 () ValueCell!15611)

