; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42574 () Bool)

(assert start!42574)

(declare-fun b_free!12001 () Bool)

(declare-fun b_next!12001 () Bool)

(assert (=> start!42574 (= b_free!12001 (not b_next!12001))))

(declare-fun tp!42042 () Bool)

(declare-fun b_and!20499 () Bool)

(assert (=> start!42574 (= tp!42042 b_and!20499)))

(declare-fun b!474704 () Bool)

(declare-fun res!283580 () Bool)

(declare-fun e!278682 () Bool)

(assert (=> b!474704 (=> (not res!283580) (not e!278682))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30577 0))(
  ( (array!30578 (arr!14703 (Array (_ BitVec 32) (_ BitVec 64))) (size!15055 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30577)

(declare-datatypes ((V!19011 0))(
  ( (V!19012 (val!6759 Int)) )
))
(declare-datatypes ((ValueCell!6371 0))(
  ( (ValueCellFull!6371 (v!9048 V!19011)) (EmptyCell!6371) )
))
(declare-datatypes ((array!30579 0))(
  ( (array!30580 (arr!14704 (Array (_ BitVec 32) ValueCell!6371)) (size!15056 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30579)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474704 (= res!283580 (and (= (size!15056 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15055 _keys!1025) (size!15056 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21862 () Bool)

(declare-fun mapRes!21862 () Bool)

(declare-fun tp!42043 () Bool)

(declare-fun e!278684 () Bool)

(assert (=> mapNonEmpty!21862 (= mapRes!21862 (and tp!42043 e!278684))))

(declare-fun mapKey!21862 () (_ BitVec 32))

(declare-fun mapRest!21862 () (Array (_ BitVec 32) ValueCell!6371))

(declare-fun mapValue!21862 () ValueCell!6371)

(assert (=> mapNonEmpty!21862 (= (arr!14704 _values!833) (store mapRest!21862 mapKey!21862 mapValue!21862))))

(declare-fun b!474705 () Bool)

(assert (=> b!474705 (= e!278682 false)))

(declare-datatypes ((tuple2!8910 0))(
  ( (tuple2!8911 (_1!4465 (_ BitVec 64)) (_2!4465 V!19011)) )
))
(declare-datatypes ((List!9023 0))(
  ( (Nil!9020) (Cons!9019 (h!9875 tuple2!8910) (t!15005 List!9023)) )
))
(declare-datatypes ((ListLongMap!7837 0))(
  ( (ListLongMap!7838 (toList!3934 List!9023)) )
))
(declare-fun lt!216284 () ListLongMap!7837)

(declare-fun zeroValue!794 () V!19011)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!19011)

(declare-fun getCurrentListMapNoExtraKeys!2088 (array!30577 array!30579 (_ BitVec 32) (_ BitVec 32) V!19011 V!19011 (_ BitVec 32) Int) ListLongMap!7837)

(assert (=> b!474705 (= lt!216284 (getCurrentListMapNoExtraKeys!2088 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19011)

(declare-fun lt!216285 () ListLongMap!7837)

(assert (=> b!474705 (= lt!216285 (getCurrentListMapNoExtraKeys!2088 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474706 () Bool)

(declare-fun e!278685 () Bool)

(declare-fun tp_is_empty!13429 () Bool)

(assert (=> b!474706 (= e!278685 tp_is_empty!13429)))

(declare-fun b!474707 () Bool)

(assert (=> b!474707 (= e!278684 tp_is_empty!13429)))

(declare-fun b!474708 () Bool)

(declare-fun e!278683 () Bool)

(assert (=> b!474708 (= e!278683 (and e!278685 mapRes!21862))))

(declare-fun condMapEmpty!21862 () Bool)

(declare-fun mapDefault!21862 () ValueCell!6371)

