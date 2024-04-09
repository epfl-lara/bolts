; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35384 () Bool)

(assert start!35384)

(declare-fun b!353967 () Bool)

(declare-fun res!196298 () Bool)

(declare-fun e!216903 () Bool)

(assert (=> b!353967 (=> (not res!196298) (not e!216903))))

(declare-datatypes ((array!19215 0))(
  ( (array!19216 (arr!9098 (Array (_ BitVec 32) (_ BitVec 64))) (size!9450 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19215)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19215 (_ BitVec 32)) Bool)

(assert (=> b!353967 (= res!196298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13251 () Bool)

(declare-fun mapRes!13251 () Bool)

(declare-fun tp!27147 () Bool)

(declare-fun e!216905 () Bool)

(assert (=> mapNonEmpty!13251 (= mapRes!13251 (and tp!27147 e!216905))))

(declare-fun mapKey!13251 () (_ BitVec 32))

(declare-datatypes ((V!11415 0))(
  ( (V!11416 (val!3959 Int)) )
))
(declare-datatypes ((ValueCell!3571 0))(
  ( (ValueCellFull!3571 (v!6149 V!11415)) (EmptyCell!3571) )
))
(declare-fun mapRest!13251 () (Array (_ BitVec 32) ValueCell!3571))

(declare-fun mapValue!13251 () ValueCell!3571)

(declare-datatypes ((array!19217 0))(
  ( (array!19218 (arr!9099 (Array (_ BitVec 32) ValueCell!3571)) (size!9451 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19217)

(assert (=> mapNonEmpty!13251 (= (arr!9099 _values!1208) (store mapRest!13251 mapKey!13251 mapValue!13251))))

(declare-fun res!196299 () Bool)

(assert (=> start!35384 (=> (not res!196299) (not e!216903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35384 (= res!196299 (validMask!0 mask!1842))))

(assert (=> start!35384 e!216903))

(assert (=> start!35384 true))

(declare-fun e!216901 () Bool)

(declare-fun array_inv!6694 (array!19217) Bool)

(assert (=> start!35384 (and (array_inv!6694 _values!1208) e!216901)))

(declare-fun array_inv!6695 (array!19215) Bool)

(assert (=> start!35384 (array_inv!6695 _keys!1456)))

(declare-fun b!353968 () Bool)

(declare-fun res!196300 () Bool)

(assert (=> b!353968 (=> (not res!196300) (not e!216903))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353968 (= res!196300 (and (= (size!9451 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9450 _keys!1456) (size!9451 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353969 () Bool)

(declare-fun e!216902 () Bool)

(declare-fun tp_is_empty!7829 () Bool)

(assert (=> b!353969 (= e!216902 tp_is_empty!7829)))

(declare-fun b!353970 () Bool)

(assert (=> b!353970 (= e!216905 tp_is_empty!7829)))

(declare-fun mapIsEmpty!13251 () Bool)

(assert (=> mapIsEmpty!13251 mapRes!13251))

(declare-fun b!353971 () Bool)

(assert (=> b!353971 (= e!216901 (and e!216902 mapRes!13251))))

(declare-fun condMapEmpty!13251 () Bool)

(declare-fun mapDefault!13251 () ValueCell!3571)

