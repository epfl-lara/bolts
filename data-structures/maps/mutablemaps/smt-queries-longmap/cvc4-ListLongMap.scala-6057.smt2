; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78420 () Bool)

(assert start!78420)

(declare-fun b_free!16757 () Bool)

(declare-fun b_next!16757 () Bool)

(assert (=> start!78420 (= b_free!16757 (not b_next!16757))))

(declare-fun tp!58560 () Bool)

(declare-fun b_and!27395 () Bool)

(assert (=> start!78420 (= tp!58560 b_and!27395)))

(declare-fun b!914329 () Bool)

(declare-fun e!512961 () Bool)

(declare-fun tp_is_empty!19175 () Bool)

(assert (=> b!914329 (= e!512961 tp_is_empty!19175)))

(declare-fun b!914331 () Bool)

(declare-fun e!512962 () Bool)

(assert (=> b!914331 (= e!512962 false)))

(declare-datatypes ((V!30531 0))(
  ( (V!30532 (val!9638 Int)) )
))
(declare-datatypes ((ValueCell!9106 0))(
  ( (ValueCellFull!9106 (v!12154 V!30531)) (EmptyCell!9106) )
))
(declare-datatypes ((array!54356 0))(
  ( (array!54357 (arr!26125 (Array (_ BitVec 32) ValueCell!9106)) (size!26585 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54356)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30531)

(declare-datatypes ((array!54358 0))(
  ( (array!54359 (arr!26126 (Array (_ BitVec 32) (_ BitVec 64))) (size!26586 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54358)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30531)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!411434 () Bool)

(declare-datatypes ((tuple2!12626 0))(
  ( (tuple2!12627 (_1!6323 (_ BitVec 64)) (_2!6323 V!30531)) )
))
(declare-datatypes ((List!18464 0))(
  ( (Nil!18461) (Cons!18460 (h!19606 tuple2!12626) (t!26083 List!18464)) )
))
(declare-datatypes ((ListLongMap!11337 0))(
  ( (ListLongMap!11338 (toList!5684 List!18464)) )
))
(declare-fun contains!4699 (ListLongMap!11337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2913 (array!54358 array!54356 (_ BitVec 32) (_ BitVec 32) V!30531 V!30531 (_ BitVec 32) Int) ListLongMap!11337)

(assert (=> b!914331 (= lt!411434 (contains!4699 (getCurrentListMap!2913 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!914332 () Bool)

(declare-fun e!512960 () Bool)

(assert (=> b!914332 (= e!512960 tp_is_empty!19175)))

(declare-fun b!914333 () Bool)

(declare-fun res!616738 () Bool)

(assert (=> b!914333 (=> (not res!616738) (not e!512962))))

(declare-datatypes ((List!18465 0))(
  ( (Nil!18462) (Cons!18461 (h!19607 (_ BitVec 64)) (t!26084 List!18465)) )
))
(declare-fun arrayNoDuplicates!0 (array!54358 (_ BitVec 32) List!18465) Bool)

(assert (=> b!914333 (= res!616738 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18462))))

(declare-fun b!914334 () Bool)

(declare-fun res!616739 () Bool)

(assert (=> b!914334 (=> (not res!616739) (not e!512962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54358 (_ BitVec 32)) Bool)

(assert (=> b!914334 (= res!616739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30501 () Bool)

(declare-fun mapRes!30501 () Bool)

(assert (=> mapIsEmpty!30501 mapRes!30501))

(declare-fun res!616737 () Bool)

(assert (=> start!78420 (=> (not res!616737) (not e!512962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78420 (= res!616737 (validMask!0 mask!1756))))

(assert (=> start!78420 e!512962))

(declare-fun e!512958 () Bool)

(declare-fun array_inv!20392 (array!54356) Bool)

(assert (=> start!78420 (and (array_inv!20392 _values!1152) e!512958)))

(assert (=> start!78420 tp!58560))

(assert (=> start!78420 true))

(assert (=> start!78420 tp_is_empty!19175))

(declare-fun array_inv!20393 (array!54358) Bool)

(assert (=> start!78420 (array_inv!20393 _keys!1386)))

(declare-fun b!914330 () Bool)

(assert (=> b!914330 (= e!512958 (and e!512961 mapRes!30501))))

(declare-fun condMapEmpty!30501 () Bool)

(declare-fun mapDefault!30501 () ValueCell!9106)

