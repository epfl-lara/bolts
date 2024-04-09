; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42482 () Bool)

(assert start!42482)

(declare-fun b_free!11929 () Bool)

(declare-fun b_next!11929 () Bool)

(assert (=> start!42482 (= b_free!11929 (not b_next!11929))))

(declare-fun tp!41824 () Bool)

(declare-fun b_and!20415 () Bool)

(assert (=> start!42482 (= tp!41824 b_and!20415)))

(declare-fun b!473706 () Bool)

(declare-fun e!277968 () Bool)

(assert (=> b!473706 (= e!277968 true)))

(declare-datatypes ((V!18915 0))(
  ( (V!18916 (val!6723 Int)) )
))
(declare-datatypes ((tuple2!8856 0))(
  ( (tuple2!8857 (_1!4438 (_ BitVec 64)) (_2!4438 V!18915)) )
))
(declare-datatypes ((List!8965 0))(
  ( (Nil!8962) (Cons!8961 (h!9817 tuple2!8856) (t!14945 List!8965)) )
))
(declare-datatypes ((ListLongMap!7783 0))(
  ( (ListLongMap!7784 (toList!3907 List!8965)) )
))
(declare-fun lt!215540 () ListLongMap!7783)

(declare-fun lt!215543 () tuple2!8856)

(declare-fun minValueBefore!38 () V!18915)

(declare-fun +!1713 (ListLongMap!7783 tuple2!8856) ListLongMap!7783)

(assert (=> b!473706 (= (+!1713 lt!215540 lt!215543) (+!1713 (+!1713 lt!215540 (tuple2!8857 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215543))))

(declare-fun minValueAfter!38 () V!18915)

(assert (=> b!473706 (= lt!215543 (tuple2!8857 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13937 0))(
  ( (Unit!13938) )
))
(declare-fun lt!215541 () Unit!13937)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!150 (ListLongMap!7783 (_ BitVec 64) V!18915 V!18915) Unit!13937)

(assert (=> b!473706 (= lt!215541 (addSameAsAddTwiceSameKeyDiffValues!150 lt!215540 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215539 () ListLongMap!7783)

(declare-fun zeroValue!794 () V!18915)

(assert (=> b!473706 (= lt!215540 (+!1713 lt!215539 (tuple2!8857 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215542 () ListLongMap!7783)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30433 0))(
  ( (array!30434 (arr!14632 (Array (_ BitVec 32) (_ BitVec 64))) (size!14984 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30433)

(declare-datatypes ((ValueCell!6335 0))(
  ( (ValueCellFull!6335 (v!9011 V!18915)) (EmptyCell!6335) )
))
(declare-datatypes ((array!30435 0))(
  ( (array!30436 (arr!14633 (Array (_ BitVec 32) ValueCell!6335)) (size!14985 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30435)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2250 (array!30433 array!30435 (_ BitVec 32) (_ BitVec 32) V!18915 V!18915 (_ BitVec 32) Int) ListLongMap!7783)

(assert (=> b!473706 (= lt!215542 (getCurrentListMap!2250 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215544 () ListLongMap!7783)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473706 (= lt!215544 (getCurrentListMap!2250 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473707 () Bool)

(declare-fun res!283009 () Bool)

(declare-fun e!277972 () Bool)

(assert (=> b!473707 (=> (not res!283009) (not e!277972))))

(assert (=> b!473707 (= res!283009 (and (= (size!14985 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14984 _keys!1025) (size!14985 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21751 () Bool)

(declare-fun mapRes!21751 () Bool)

(assert (=> mapIsEmpty!21751 mapRes!21751))

(declare-fun b!473708 () Bool)

(declare-fun e!277969 () Bool)

(declare-fun tp_is_empty!13357 () Bool)

(assert (=> b!473708 (= e!277969 tp_is_empty!13357)))

(declare-fun b!473709 () Bool)

(assert (=> b!473709 (= e!277972 (not e!277968))))

(declare-fun res!283007 () Bool)

(assert (=> b!473709 (=> res!283007 e!277968)))

(assert (=> b!473709 (= res!283007 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215538 () ListLongMap!7783)

(assert (=> b!473709 (= lt!215539 lt!215538)))

(declare-fun lt!215545 () Unit!13937)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!259 (array!30433 array!30435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18915 V!18915 V!18915 V!18915 (_ BitVec 32) Int) Unit!13937)

(assert (=> b!473709 (= lt!215545 (lemmaNoChangeToArrayThenSameMapNoExtras!259 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2064 (array!30433 array!30435 (_ BitVec 32) (_ BitVec 32) V!18915 V!18915 (_ BitVec 32) Int) ListLongMap!7783)

(assert (=> b!473709 (= lt!215538 (getCurrentListMapNoExtraKeys!2064 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473709 (= lt!215539 (getCurrentListMapNoExtraKeys!2064 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473710 () Bool)

(declare-fun e!277971 () Bool)

(assert (=> b!473710 (= e!277971 (and e!277969 mapRes!21751))))

(declare-fun condMapEmpty!21751 () Bool)

(declare-fun mapDefault!21751 () ValueCell!6335)

