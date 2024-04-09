; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78562 () Bool)

(assert start!78562)

(declare-fun res!617250 () Bool)

(declare-fun e!513771 () Bool)

(assert (=> start!78562 (=> (not res!617250) (not e!513771))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78562 (= res!617250 (validMask!0 mask!1881))))

(assert (=> start!78562 e!513771))

(assert (=> start!78562 true))

(declare-datatypes ((V!30639 0))(
  ( (V!30640 (val!9678 Int)) )
))
(declare-datatypes ((ValueCell!9146 0))(
  ( (ValueCellFull!9146 (v!12196 V!30639)) (EmptyCell!9146) )
))
(declare-datatypes ((array!54514 0))(
  ( (array!54515 (arr!26198 (Array (_ BitVec 32) ValueCell!9146)) (size!26658 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54514)

(declare-fun e!513773 () Bool)

(declare-fun array_inv!20436 (array!54514) Bool)

(assert (=> start!78562 (and (array_inv!20436 _values!1231) e!513773)))

(declare-datatypes ((array!54516 0))(
  ( (array!54517 (arr!26199 (Array (_ BitVec 32) (_ BitVec 64))) (size!26659 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54516)

(declare-fun array_inv!20437 (array!54516) Bool)

(assert (=> start!78562 (array_inv!20437 _keys!1487)))

(declare-fun mapNonEmpty!30639 () Bool)

(declare-fun mapRes!30639 () Bool)

(declare-fun tp!58707 () Bool)

(declare-fun e!513774 () Bool)

(assert (=> mapNonEmpty!30639 (= mapRes!30639 (and tp!58707 e!513774))))

(declare-fun mapRest!30639 () (Array (_ BitVec 32) ValueCell!9146))

(declare-fun mapValue!30639 () ValueCell!9146)

(declare-fun mapKey!30639 () (_ BitVec 32))

(assert (=> mapNonEmpty!30639 (= (arr!26198 _values!1231) (store mapRest!30639 mapKey!30639 mapValue!30639))))

(declare-fun b!915348 () Bool)

(declare-fun res!617252 () Bool)

(assert (=> b!915348 (=> (not res!617252) (not e!513771))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915348 (= res!617252 (and (= (size!26658 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26659 _keys!1487) (size!26658 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915349 () Bool)

(declare-fun tp_is_empty!19255 () Bool)

(assert (=> b!915349 (= e!513774 tp_is_empty!19255)))

(declare-fun b!915350 () Bool)

(declare-fun res!617251 () Bool)

(assert (=> b!915350 (=> (not res!617251) (not e!513771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54516 (_ BitVec 32)) Bool)

(assert (=> b!915350 (= res!617251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30639 () Bool)

(assert (=> mapIsEmpty!30639 mapRes!30639))

(declare-fun b!915351 () Bool)

(assert (=> b!915351 (= e!513771 false)))

(declare-fun lt!411627 () Bool)

(declare-datatypes ((List!18484 0))(
  ( (Nil!18481) (Cons!18480 (h!19626 (_ BitVec 64)) (t!26105 List!18484)) )
))
(declare-fun arrayNoDuplicates!0 (array!54516 (_ BitVec 32) List!18484) Bool)

(assert (=> b!915351 (= lt!411627 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18481))))

(declare-fun b!915352 () Bool)

(declare-fun e!513772 () Bool)

(assert (=> b!915352 (= e!513773 (and e!513772 mapRes!30639))))

(declare-fun condMapEmpty!30639 () Bool)

(declare-fun mapDefault!30639 () ValueCell!9146)

