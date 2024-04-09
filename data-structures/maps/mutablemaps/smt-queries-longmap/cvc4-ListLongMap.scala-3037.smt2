; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42608 () Bool)

(assert start!42608)

(declare-fun b_free!12035 () Bool)

(declare-fun b_next!12035 () Bool)

(assert (=> start!42608 (= b_free!12035 (not b_next!12035))))

(declare-fun tp!42144 () Bool)

(declare-fun b_and!20533 () Bool)

(assert (=> start!42608 (= tp!42144 b_and!20533)))

(declare-fun b!475061 () Bool)

(declare-fun e!278937 () Bool)

(assert (=> b!475061 (= e!278937 false)))

(declare-datatypes ((V!19055 0))(
  ( (V!19056 (val!6776 Int)) )
))
(declare-fun zeroValue!794 () V!19055)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8932 0))(
  ( (tuple2!8933 (_1!4476 (_ BitVec 64)) (_2!4476 V!19055)) )
))
(declare-datatypes ((List!9044 0))(
  ( (Nil!9041) (Cons!9040 (h!9896 tuple2!8932) (t!15026 List!9044)) )
))
(declare-datatypes ((ListLongMap!7859 0))(
  ( (ListLongMap!7860 (toList!3945 List!9044)) )
))
(declare-fun lt!216386 () ListLongMap!7859)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30635 0))(
  ( (array!30636 (arr!14732 (Array (_ BitVec 32) (_ BitVec 64))) (size!15084 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30635)

(declare-datatypes ((ValueCell!6388 0))(
  ( (ValueCellFull!6388 (v!9065 V!19055)) (EmptyCell!6388) )
))
(declare-datatypes ((array!30637 0))(
  ( (array!30638 (arr!14733 (Array (_ BitVec 32) ValueCell!6388)) (size!15085 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30637)

(declare-fun minValueAfter!38 () V!19055)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2099 (array!30635 array!30637 (_ BitVec 32) (_ BitVec 32) V!19055 V!19055 (_ BitVec 32) Int) ListLongMap!7859)

(assert (=> b!475061 (= lt!216386 (getCurrentListMapNoExtraKeys!2099 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19055)

(declare-fun lt!216387 () ListLongMap!7859)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475061 (= lt!216387 (getCurrentListMapNoExtraKeys!2099 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475062 () Bool)

(declare-fun res!283782 () Bool)

(assert (=> b!475062 (=> (not res!283782) (not e!278937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30635 (_ BitVec 32)) Bool)

(assert (=> b!475062 (= res!283782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21913 () Bool)

(declare-fun mapRes!21913 () Bool)

(declare-fun tp!42145 () Bool)

(declare-fun e!278939 () Bool)

(assert (=> mapNonEmpty!21913 (= mapRes!21913 (and tp!42145 e!278939))))

(declare-fun mapKey!21913 () (_ BitVec 32))

(declare-fun mapRest!21913 () (Array (_ BitVec 32) ValueCell!6388))

(declare-fun mapValue!21913 () ValueCell!6388)

(assert (=> mapNonEmpty!21913 (= (arr!14733 _values!833) (store mapRest!21913 mapKey!21913 mapValue!21913))))

(declare-fun b!475063 () Bool)

(declare-fun res!283785 () Bool)

(assert (=> b!475063 (=> (not res!283785) (not e!278937))))

(assert (=> b!475063 (= res!283785 (and (= (size!15085 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15084 _keys!1025) (size!15085 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475064 () Bool)

(declare-fun e!278940 () Bool)

(declare-fun e!278941 () Bool)

(assert (=> b!475064 (= e!278940 (and e!278941 mapRes!21913))))

(declare-fun condMapEmpty!21913 () Bool)

(declare-fun mapDefault!21913 () ValueCell!6388)

