; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42522 () Bool)

(assert start!42522)

(declare-fun b_free!11969 () Bool)

(declare-fun b_next!11969 () Bool)

(assert (=> start!42522 (= b_free!11969 (not b_next!11969))))

(declare-fun tp!41944 () Bool)

(declare-fun b_and!20455 () Bool)

(assert (=> start!42522 (= tp!41944 b_and!20455)))

(declare-fun b!474186 () Bool)

(declare-fun res!283309 () Bool)

(declare-fun e!278329 () Bool)

(assert (=> b!474186 (=> (not res!283309) (not e!278329))))

(declare-datatypes ((array!30511 0))(
  ( (array!30512 (arr!14671 (Array (_ BitVec 32) (_ BitVec 64))) (size!15023 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30511)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30511 (_ BitVec 32)) Bool)

(assert (=> b!474186 (= res!283309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474187 () Bool)

(declare-fun res!283310 () Bool)

(assert (=> b!474187 (=> (not res!283310) (not e!278329))))

(declare-datatypes ((List!8997 0))(
  ( (Nil!8994) (Cons!8993 (h!9849 (_ BitVec 64)) (t!14977 List!8997)) )
))
(declare-fun arrayNoDuplicates!0 (array!30511 (_ BitVec 32) List!8997) Bool)

(assert (=> b!474187 (= res!283310 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8994))))

(declare-fun b!474188 () Bool)

(declare-fun e!278331 () Bool)

(assert (=> b!474188 (= e!278329 (not e!278331))))

(declare-fun res!283307 () Bool)

(assert (=> b!474188 (=> res!283307 e!278331)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474188 (= res!283307 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18967 0))(
  ( (V!18968 (val!6743 Int)) )
))
(declare-datatypes ((tuple2!8886 0))(
  ( (tuple2!8887 (_1!4453 (_ BitVec 64)) (_2!4453 V!18967)) )
))
(declare-datatypes ((List!8998 0))(
  ( (Nil!8995) (Cons!8994 (h!9850 tuple2!8886) (t!14978 List!8998)) )
))
(declare-datatypes ((ListLongMap!7813 0))(
  ( (ListLongMap!7814 (toList!3922 List!8998)) )
))
(declare-fun lt!216023 () ListLongMap!7813)

(declare-fun lt!216024 () ListLongMap!7813)

(assert (=> b!474188 (= lt!216023 lt!216024)))

(declare-fun minValueBefore!38 () V!18967)

(declare-fun zeroValue!794 () V!18967)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13967 0))(
  ( (Unit!13968) )
))
(declare-fun lt!216020 () Unit!13967)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6355 0))(
  ( (ValueCellFull!6355 (v!9031 V!18967)) (EmptyCell!6355) )
))
(declare-datatypes ((array!30513 0))(
  ( (array!30514 (arr!14672 (Array (_ BitVec 32) ValueCell!6355)) (size!15024 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30513)

(declare-fun minValueAfter!38 () V!18967)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!271 (array!30511 array!30513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18967 V!18967 V!18967 V!18967 (_ BitVec 32) Int) Unit!13967)

(assert (=> b!474188 (= lt!216020 (lemmaNoChangeToArrayThenSameMapNoExtras!271 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2076 (array!30511 array!30513 (_ BitVec 32) (_ BitVec 32) V!18967 V!18967 (_ BitVec 32) Int) ListLongMap!7813)

(assert (=> b!474188 (= lt!216024 (getCurrentListMapNoExtraKeys!2076 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474188 (= lt!216023 (getCurrentListMapNoExtraKeys!2076 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21811 () Bool)

(declare-fun mapRes!21811 () Bool)

(assert (=> mapIsEmpty!21811 mapRes!21811))

(declare-fun b!474189 () Bool)

(declare-fun e!278333 () Bool)

(declare-fun tp_is_empty!13397 () Bool)

(assert (=> b!474189 (= e!278333 tp_is_empty!13397)))

(declare-fun b!474190 () Bool)

(declare-fun res!283306 () Bool)

(assert (=> b!474190 (=> (not res!283306) (not e!278329))))

(assert (=> b!474190 (= res!283306 (and (= (size!15024 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15023 _keys!1025) (size!15024 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474191 () Bool)

(declare-fun e!278330 () Bool)

(declare-fun e!278328 () Bool)

(assert (=> b!474191 (= e!278330 (and e!278328 mapRes!21811))))

(declare-fun condMapEmpty!21811 () Bool)

(declare-fun mapDefault!21811 () ValueCell!6355)

