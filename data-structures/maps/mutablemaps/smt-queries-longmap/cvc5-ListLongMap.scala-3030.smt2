; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42562 () Bool)

(assert start!42562)

(declare-fun b_free!11989 () Bool)

(declare-fun b_next!11989 () Bool)

(assert (=> start!42562 (= b_free!11989 (not b_next!11989))))

(declare-fun tp!42006 () Bool)

(declare-fun b_and!20487 () Bool)

(assert (=> start!42562 (= tp!42006 b_and!20487)))

(declare-fun res!283506 () Bool)

(declare-fun e!278594 () Bool)

(assert (=> start!42562 (=> (not res!283506) (not e!278594))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42562 (= res!283506 (validMask!0 mask!1365))))

(assert (=> start!42562 e!278594))

(declare-fun tp_is_empty!13417 () Bool)

(assert (=> start!42562 tp_is_empty!13417))

(assert (=> start!42562 tp!42006))

(assert (=> start!42562 true))

(declare-datatypes ((array!30553 0))(
  ( (array!30554 (arr!14691 (Array (_ BitVec 32) (_ BitVec 64))) (size!15043 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30553)

(declare-fun array_inv!10586 (array!30553) Bool)

(assert (=> start!42562 (array_inv!10586 _keys!1025)))

(declare-datatypes ((V!18995 0))(
  ( (V!18996 (val!6753 Int)) )
))
(declare-datatypes ((ValueCell!6365 0))(
  ( (ValueCellFull!6365 (v!9042 V!18995)) (EmptyCell!6365) )
))
(declare-datatypes ((array!30555 0))(
  ( (array!30556 (arr!14692 (Array (_ BitVec 32) ValueCell!6365)) (size!15044 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30555)

(declare-fun e!278592 () Bool)

(declare-fun array_inv!10587 (array!30555) Bool)

(assert (=> start!42562 (and (array_inv!10587 _values!833) e!278592)))

(declare-fun b!474578 () Bool)

(declare-fun res!283508 () Bool)

(assert (=> b!474578 (=> (not res!283508) (not e!278594))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474578 (= res!283508 (and (= (size!15044 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15043 _keys!1025) (size!15044 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474579 () Bool)

(declare-fun res!283507 () Bool)

(assert (=> b!474579 (=> (not res!283507) (not e!278594))))

(declare-datatypes ((List!9013 0))(
  ( (Nil!9010) (Cons!9009 (h!9865 (_ BitVec 64)) (t!14995 List!9013)) )
))
(declare-fun arrayNoDuplicates!0 (array!30553 (_ BitVec 32) List!9013) Bool)

(assert (=> b!474579 (= res!283507 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9010))))

(declare-fun b!474580 () Bool)

(declare-fun e!278593 () Bool)

(assert (=> b!474580 (= e!278593 tp_is_empty!13417)))

(declare-fun mapIsEmpty!21844 () Bool)

(declare-fun mapRes!21844 () Bool)

(assert (=> mapIsEmpty!21844 mapRes!21844))

(declare-fun b!474581 () Bool)

(assert (=> b!474581 (= e!278594 false)))

(declare-fun zeroValue!794 () V!18995)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8900 0))(
  ( (tuple2!8901 (_1!4460 (_ BitVec 64)) (_2!4460 V!18995)) )
))
(declare-datatypes ((List!9014 0))(
  ( (Nil!9011) (Cons!9010 (h!9866 tuple2!8900) (t!14996 List!9014)) )
))
(declare-datatypes ((ListLongMap!7827 0))(
  ( (ListLongMap!7828 (toList!3929 List!9014)) )
))
(declare-fun lt!216249 () ListLongMap!7827)

(declare-fun minValueAfter!38 () V!18995)

(declare-fun getCurrentListMapNoExtraKeys!2083 (array!30553 array!30555 (_ BitVec 32) (_ BitVec 32) V!18995 V!18995 (_ BitVec 32) Int) ListLongMap!7827)

(assert (=> b!474581 (= lt!216249 (getCurrentListMapNoExtraKeys!2083 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18995)

(declare-fun lt!216248 () ListLongMap!7827)

(assert (=> b!474581 (= lt!216248 (getCurrentListMapNoExtraKeys!2083 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474582 () Bool)

(declare-fun res!283509 () Bool)

(assert (=> b!474582 (=> (not res!283509) (not e!278594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30553 (_ BitVec 32)) Bool)

(assert (=> b!474582 (= res!283509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474583 () Bool)

(declare-fun e!278595 () Bool)

(assert (=> b!474583 (= e!278595 tp_is_empty!13417)))

(declare-fun b!474584 () Bool)

(assert (=> b!474584 (= e!278592 (and e!278593 mapRes!21844))))

(declare-fun condMapEmpty!21844 () Bool)

(declare-fun mapDefault!21844 () ValueCell!6365)

