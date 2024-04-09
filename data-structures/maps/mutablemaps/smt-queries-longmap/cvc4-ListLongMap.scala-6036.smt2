; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78148 () Bool)

(assert start!78148)

(declare-fun b_free!16631 () Bool)

(declare-fun b_next!16631 () Bool)

(assert (=> start!78148 (= b_free!16631 (not b_next!16631))))

(declare-fun tp!58167 () Bool)

(declare-fun b_and!27223 () Bool)

(assert (=> start!78148 (= tp!58167 b_and!27223)))

(declare-fun b!911617 () Bool)

(declare-fun e!511339 () Bool)

(declare-fun tp_is_empty!19049 () Bool)

(assert (=> b!911617 (= e!511339 tp_is_empty!19049)))

(declare-fun b!911618 () Bool)

(declare-fun res!615124 () Bool)

(declare-fun e!511337 () Bool)

(assert (=> b!911618 (=> (not res!615124) (not e!511337))))

(declare-datatypes ((array!54106 0))(
  ( (array!54107 (arr!26004 (Array (_ BitVec 32) (_ BitVec 64))) (size!26464 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54106)

(declare-datatypes ((List!18372 0))(
  ( (Nil!18369) (Cons!18368 (h!19514 (_ BitVec 64)) (t!25967 List!18372)) )
))
(declare-fun arrayNoDuplicates!0 (array!54106 (_ BitVec 32) List!18372) Bool)

(assert (=> b!911618 (= res!615124 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18369))))

(declare-fun b!911619 () Bool)

(declare-fun e!511336 () Bool)

(assert (=> b!911619 (= e!511336 tp_is_empty!19049)))

(declare-fun mapNonEmpty!30298 () Bool)

(declare-fun mapRes!30298 () Bool)

(declare-fun tp!58168 () Bool)

(assert (=> mapNonEmpty!30298 (= mapRes!30298 (and tp!58168 e!511336))))

(declare-fun mapKey!30298 () (_ BitVec 32))

(declare-datatypes ((V!30363 0))(
  ( (V!30364 (val!9575 Int)) )
))
(declare-datatypes ((ValueCell!9043 0))(
  ( (ValueCellFull!9043 (v!12085 V!30363)) (EmptyCell!9043) )
))
(declare-fun mapRest!30298 () (Array (_ BitVec 32) ValueCell!9043))

(declare-fun mapValue!30298 () ValueCell!9043)

(declare-datatypes ((array!54108 0))(
  ( (array!54109 (arr!26005 (Array (_ BitVec 32) ValueCell!9043)) (size!26465 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54108)

(assert (=> mapNonEmpty!30298 (= (arr!26005 _values!1152) (store mapRest!30298 mapKey!30298 mapValue!30298))))

(declare-fun b!911620 () Bool)

(declare-fun res!615125 () Bool)

(assert (=> b!911620 (=> (not res!615125) (not e!511337))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!911620 (= res!615125 (and (= (size!26465 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26464 _keys!1386) (size!26465 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!615126 () Bool)

(assert (=> start!78148 (=> (not res!615126) (not e!511337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78148 (= res!615126 (validMask!0 mask!1756))))

(assert (=> start!78148 e!511337))

(declare-fun e!511338 () Bool)

(declare-fun array_inv!20308 (array!54108) Bool)

(assert (=> start!78148 (and (array_inv!20308 _values!1152) e!511338)))

(assert (=> start!78148 tp!58167))

(assert (=> start!78148 true))

(assert (=> start!78148 tp_is_empty!19049))

(declare-fun array_inv!20309 (array!54106) Bool)

(assert (=> start!78148 (array_inv!20309 _keys!1386)))

(declare-fun b!911621 () Bool)

(assert (=> b!911621 (= e!511337 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30363)

(declare-fun lt!410452 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30363)

(declare-datatypes ((tuple2!12528 0))(
  ( (tuple2!12529 (_1!6274 (_ BitVec 64)) (_2!6274 V!30363)) )
))
(declare-datatypes ((List!18373 0))(
  ( (Nil!18370) (Cons!18369 (h!19515 tuple2!12528) (t!25968 List!18373)) )
))
(declare-datatypes ((ListLongMap!11239 0))(
  ( (ListLongMap!11240 (toList!5635 List!18373)) )
))
(declare-fun contains!4645 (ListLongMap!11239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2865 (array!54106 array!54108 (_ BitVec 32) (_ BitVec 32) V!30363 V!30363 (_ BitVec 32) Int) ListLongMap!11239)

(assert (=> b!911621 (= lt!410452 (contains!4645 (getCurrentListMap!2865 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911622 () Bool)

(declare-fun res!615127 () Bool)

(assert (=> b!911622 (=> (not res!615127) (not e!511337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54106 (_ BitVec 32)) Bool)

(assert (=> b!911622 (= res!615127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911623 () Bool)

(assert (=> b!911623 (= e!511338 (and e!511339 mapRes!30298))))

(declare-fun condMapEmpty!30298 () Bool)

(declare-fun mapDefault!30298 () ValueCell!9043)

