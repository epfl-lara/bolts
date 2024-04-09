; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42560 () Bool)

(assert start!42560)

(declare-fun b_free!11987 () Bool)

(declare-fun b_next!11987 () Bool)

(assert (=> start!42560 (= b_free!11987 (not b_next!11987))))

(declare-fun tp!42001 () Bool)

(declare-fun b_and!20485 () Bool)

(assert (=> start!42560 (= tp!42001 b_and!20485)))

(declare-fun mapIsEmpty!21841 () Bool)

(declare-fun mapRes!21841 () Bool)

(assert (=> mapIsEmpty!21841 mapRes!21841))

(declare-fun b!474557 () Bool)

(declare-fun e!278581 () Bool)

(declare-fun tp_is_empty!13415 () Bool)

(assert (=> b!474557 (= e!278581 tp_is_empty!13415)))

(declare-fun mapNonEmpty!21841 () Bool)

(declare-fun tp!42000 () Bool)

(declare-fun e!278577 () Bool)

(assert (=> mapNonEmpty!21841 (= mapRes!21841 (and tp!42000 e!278577))))

(declare-datatypes ((V!18991 0))(
  ( (V!18992 (val!6752 Int)) )
))
(declare-datatypes ((ValueCell!6364 0))(
  ( (ValueCellFull!6364 (v!9041 V!18991)) (EmptyCell!6364) )
))
(declare-datatypes ((array!30549 0))(
  ( (array!30550 (arr!14689 (Array (_ BitVec 32) ValueCell!6364)) (size!15041 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30549)

(declare-fun mapKey!21841 () (_ BitVec 32))

(declare-fun mapRest!21841 () (Array (_ BitVec 32) ValueCell!6364))

(declare-fun mapValue!21841 () ValueCell!6364)

(assert (=> mapNonEmpty!21841 (= (arr!14689 _values!833) (store mapRest!21841 mapKey!21841 mapValue!21841))))

(declare-fun res!283494 () Bool)

(declare-fun e!278579 () Bool)

(assert (=> start!42560 (=> (not res!283494) (not e!278579))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42560 (= res!283494 (validMask!0 mask!1365))))

(assert (=> start!42560 e!278579))

(assert (=> start!42560 tp_is_empty!13415))

(assert (=> start!42560 tp!42001))

(assert (=> start!42560 true))

(declare-datatypes ((array!30551 0))(
  ( (array!30552 (arr!14690 (Array (_ BitVec 32) (_ BitVec 64))) (size!15042 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30551)

(declare-fun array_inv!10584 (array!30551) Bool)

(assert (=> start!42560 (array_inv!10584 _keys!1025)))

(declare-fun e!278578 () Bool)

(declare-fun array_inv!10585 (array!30549) Bool)

(assert (=> start!42560 (and (array_inv!10585 _values!833) e!278578)))

(declare-fun b!474558 () Bool)

(declare-fun res!283496 () Bool)

(assert (=> b!474558 (=> (not res!283496) (not e!278579))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474558 (= res!283496 (and (= (size!15041 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15042 _keys!1025) (size!15041 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474559 () Bool)

(declare-fun res!283495 () Bool)

(assert (=> b!474559 (=> (not res!283495) (not e!278579))))

(declare-datatypes ((List!9012 0))(
  ( (Nil!9009) (Cons!9008 (h!9864 (_ BitVec 64)) (t!14994 List!9012)) )
))
(declare-fun arrayNoDuplicates!0 (array!30551 (_ BitVec 32) List!9012) Bool)

(assert (=> b!474559 (= res!283495 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9009))))

(declare-fun b!474560 () Bool)

(declare-fun res!283497 () Bool)

(assert (=> b!474560 (=> (not res!283497) (not e!278579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30551 (_ BitVec 32)) Bool)

(assert (=> b!474560 (= res!283497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474561 () Bool)

(assert (=> b!474561 (= e!278578 (and e!278581 mapRes!21841))))

(declare-fun condMapEmpty!21841 () Bool)

(declare-fun mapDefault!21841 () ValueCell!6364)

