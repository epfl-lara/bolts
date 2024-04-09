; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35404 () Bool)

(assert start!35404)

(declare-fun mapIsEmpty!13281 () Bool)

(declare-fun mapRes!13281 () Bool)

(assert (=> mapIsEmpty!13281 mapRes!13281))

(declare-fun b!354147 () Bool)

(declare-fun e!217051 () Bool)

(declare-fun tp_is_empty!7849 () Bool)

(assert (=> b!354147 (= e!217051 tp_is_empty!7849)))

(declare-fun b!354148 () Bool)

(declare-fun res!196390 () Bool)

(declare-fun e!217055 () Bool)

(assert (=> b!354148 (=> (not res!196390) (not e!217055))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19255 0))(
  ( (array!19256 (arr!9118 (Array (_ BitVec 32) (_ BitVec 64))) (size!9470 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19255)

(declare-datatypes ((V!11443 0))(
  ( (V!11444 (val!3969 Int)) )
))
(declare-datatypes ((ValueCell!3581 0))(
  ( (ValueCellFull!3581 (v!6159 V!11443)) (EmptyCell!3581) )
))
(declare-datatypes ((array!19257 0))(
  ( (array!19258 (arr!9119 (Array (_ BitVec 32) ValueCell!3581)) (size!9471 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19257)

(assert (=> b!354148 (= res!196390 (and (= (size!9471 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9470 _keys!1456) (size!9471 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!196388 () Bool)

(assert (=> start!35404 (=> (not res!196388) (not e!217055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35404 (= res!196388 (validMask!0 mask!1842))))

(assert (=> start!35404 e!217055))

(assert (=> start!35404 true))

(declare-fun e!217053 () Bool)

(declare-fun array_inv!6712 (array!19257) Bool)

(assert (=> start!35404 (and (array_inv!6712 _values!1208) e!217053)))

(declare-fun array_inv!6713 (array!19255) Bool)

(assert (=> start!35404 (array_inv!6713 _keys!1456)))

(declare-fun b!354149 () Bool)

(declare-fun e!217052 () Bool)

(assert (=> b!354149 (= e!217052 tp_is_empty!7849)))

(declare-fun mapNonEmpty!13281 () Bool)

(declare-fun tp!27177 () Bool)

(assert (=> mapNonEmpty!13281 (= mapRes!13281 (and tp!27177 e!217052))))

(declare-fun mapKey!13281 () (_ BitVec 32))

(declare-fun mapValue!13281 () ValueCell!3581)

(declare-fun mapRest!13281 () (Array (_ BitVec 32) ValueCell!3581))

(assert (=> mapNonEmpty!13281 (= (arr!9119 _values!1208) (store mapRest!13281 mapKey!13281 mapValue!13281))))

(declare-fun b!354150 () Bool)

(assert (=> b!354150 (= e!217053 (and e!217051 mapRes!13281))))

(declare-fun condMapEmpty!13281 () Bool)

(declare-fun mapDefault!13281 () ValueCell!3581)

