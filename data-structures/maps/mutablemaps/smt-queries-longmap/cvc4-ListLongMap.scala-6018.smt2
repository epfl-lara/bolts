; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78008 () Bool)

(assert start!78008)

(declare-fun b_free!16523 () Bool)

(declare-fun b_next!16523 () Bool)

(assert (=> start!78008 (= b_free!16523 (not b_next!16523))))

(declare-fun tp!57838 () Bool)

(declare-fun b_and!27111 () Bool)

(assert (=> start!78008 (= tp!57838 b_and!27111)))

(declare-fun mapNonEmpty!30130 () Bool)

(declare-fun mapRes!30130 () Bool)

(declare-fun tp!57837 () Bool)

(declare-fun e!510384 () Bool)

(assert (=> mapNonEmpty!30130 (= mapRes!30130 (and tp!57837 e!510384))))

(declare-datatypes ((V!30219 0))(
  ( (V!30220 (val!9521 Int)) )
))
(declare-datatypes ((ValueCell!8989 0))(
  ( (ValueCellFull!8989 (v!12029 V!30219)) (EmptyCell!8989) )
))
(declare-datatypes ((array!53892 0))(
  ( (array!53893 (arr!25899 (Array (_ BitVec 32) ValueCell!8989)) (size!26359 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53892)

(declare-fun mapValue!30130 () ValueCell!8989)

(declare-fun mapKey!30130 () (_ BitVec 32))

(declare-fun mapRest!30130 () (Array (_ BitVec 32) ValueCell!8989))

(assert (=> mapNonEmpty!30130 (= (arr!25899 _values!1152) (store mapRest!30130 mapKey!30130 mapValue!30130))))

(declare-fun mapIsEmpty!30130 () Bool)

(assert (=> mapIsEmpty!30130 mapRes!30130))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53894 0))(
  ( (array!53895 (arr!25900 (Array (_ BitVec 32) (_ BitVec 64))) (size!26360 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53894)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun b!910245 () Bool)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun e!510383 () Bool)

(assert (=> b!910245 (= e!510383 (and (= (select (arr!25900 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!26360 _keys!1386))))))

(declare-fun b!910246 () Bool)

(declare-fun res!614371 () Bool)

(assert (=> b!910246 (=> (not res!614371) (not e!510383))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53894 (_ BitVec 32)) Bool)

(assert (=> b!910246 (= res!614371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!614368 () Bool)

(assert (=> start!78008 (=> (not res!614368) (not e!510383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78008 (= res!614368 (validMask!0 mask!1756))))

(assert (=> start!78008 e!510383))

(declare-fun e!510386 () Bool)

(declare-fun array_inv!20232 (array!53892) Bool)

(assert (=> start!78008 (and (array_inv!20232 _values!1152) e!510386)))

(assert (=> start!78008 tp!57838))

(assert (=> start!78008 true))

(declare-fun tp_is_empty!18941 () Bool)

(assert (=> start!78008 tp_is_empty!18941))

(declare-fun array_inv!20233 (array!53894) Bool)

(assert (=> start!78008 (array_inv!20233 _keys!1386)))

(declare-fun b!910247 () Bool)

(declare-fun res!614369 () Bool)

(assert (=> b!910247 (=> (not res!614369) (not e!510383))))

(assert (=> b!910247 (= res!614369 (and (= (size!26359 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26360 _keys!1386) (size!26359 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910248 () Bool)

(declare-fun e!510385 () Bool)

(assert (=> b!910248 (= e!510386 (and e!510385 mapRes!30130))))

(declare-fun condMapEmpty!30130 () Bool)

(declare-fun mapDefault!30130 () ValueCell!8989)

