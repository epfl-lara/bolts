; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43296 () Bool)

(assert start!43296)

(declare-fun b_free!12155 () Bool)

(declare-fun b_next!12155 () Bool)

(assert (=> start!43296 (= b_free!12155 (not b_next!12155))))

(declare-fun tp!42736 () Bool)

(declare-fun b_and!20925 () Bool)

(assert (=> start!43296 (= tp!42736 b_and!20925)))

(declare-fun b!479399 () Bool)

(declare-fun res!286034 () Bool)

(declare-fun e!282072 () Bool)

(assert (=> b!479399 (=> (not res!286034) (not e!282072))))

(declare-datatypes ((array!30971 0))(
  ( (array!30972 (arr!14889 (Array (_ BitVec 32) (_ BitVec 64))) (size!15247 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30971)

(declare-datatypes ((List!9138 0))(
  ( (Nil!9135) (Cons!9134 (h!9990 (_ BitVec 64)) (t!15352 List!9138)) )
))
(declare-fun arrayNoDuplicates!0 (array!30971 (_ BitVec 32) List!9138) Bool)

(assert (=> b!479399 (= res!286034 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9135))))

(declare-fun mapIsEmpty!22198 () Bool)

(declare-fun mapRes!22198 () Bool)

(assert (=> mapIsEmpty!22198 mapRes!22198))

(declare-fun b!479400 () Bool)

(declare-fun e!282073 () Bool)

(declare-fun tp_is_empty!13667 () Bool)

(assert (=> b!479400 (= e!282073 tp_is_empty!13667)))

(declare-fun b!479402 () Bool)

(declare-fun res!286033 () Bool)

(assert (=> b!479402 (=> (not res!286033) (not e!282072))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19293 0))(
  ( (V!19294 (val!6881 Int)) )
))
(declare-datatypes ((ValueCell!6472 0))(
  ( (ValueCellFull!6472 (v!9166 V!19293)) (EmptyCell!6472) )
))
(declare-datatypes ((array!30973 0))(
  ( (array!30974 (arr!14890 (Array (_ BitVec 32) ValueCell!6472)) (size!15248 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30973)

(assert (=> b!479402 (= res!286033 (and (= (size!15248 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15247 _keys!1874) (size!15248 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479403 () Bool)

(declare-fun e!282069 () Bool)

(assert (=> b!479403 (= e!282069 tp_is_empty!13667)))

(declare-fun b!479404 () Bool)

(declare-fun res!286035 () Bool)

(assert (=> b!479404 (=> (not res!286035) (not e!282072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30971 (_ BitVec 32)) Bool)

(assert (=> b!479404 (= res!286035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479401 () Bool)

(assert (=> b!479401 (= e!282072 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!217847 () Bool)

(declare-fun zeroValue!1458 () V!19293)

(declare-fun minValue!1458 () V!19293)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9026 0))(
  ( (tuple2!9027 (_1!4523 (_ BitVec 64)) (_2!4523 V!19293)) )
))
(declare-datatypes ((List!9139 0))(
  ( (Nil!9136) (Cons!9135 (h!9991 tuple2!9026) (t!15353 List!9139)) )
))
(declare-datatypes ((ListLongMap!7953 0))(
  ( (ListLongMap!7954 (toList!3992 List!9139)) )
))
(declare-fun contains!2599 (ListLongMap!7953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2284 (array!30971 array!30973 (_ BitVec 32) (_ BitVec 32) V!19293 V!19293 (_ BitVec 32) Int) ListLongMap!7953)

(assert (=> b!479401 (= lt!217847 (contains!2599 (getCurrentListMap!2284 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun res!286032 () Bool)

(assert (=> start!43296 (=> (not res!286032) (not e!282072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43296 (= res!286032 (validMask!0 mask!2352))))

(assert (=> start!43296 e!282072))

(assert (=> start!43296 true))

(assert (=> start!43296 tp_is_empty!13667))

(declare-fun e!282070 () Bool)

(declare-fun array_inv!10724 (array!30973) Bool)

(assert (=> start!43296 (and (array_inv!10724 _values!1516) e!282070)))

(assert (=> start!43296 tp!42736))

(declare-fun array_inv!10725 (array!30971) Bool)

(assert (=> start!43296 (array_inv!10725 _keys!1874)))

(declare-fun b!479405 () Bool)

(assert (=> b!479405 (= e!282070 (and e!282073 mapRes!22198))))

(declare-fun condMapEmpty!22198 () Bool)

(declare-fun mapDefault!22198 () ValueCell!6472)

