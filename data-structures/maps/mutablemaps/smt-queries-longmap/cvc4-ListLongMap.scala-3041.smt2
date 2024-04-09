; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42662 () Bool)

(assert start!42662)

(declare-fun b_free!12059 () Bool)

(declare-fun b_next!12059 () Bool)

(assert (=> start!42662 (= b_free!12059 (not b_next!12059))))

(declare-fun tp!42223 () Bool)

(declare-fun b_and!20577 () Bool)

(assert (=> start!42662 (= tp!42223 b_and!20577)))

(declare-fun res!284060 () Bool)

(declare-fun e!279311 () Bool)

(assert (=> start!42662 (=> (not res!284060) (not e!279311))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42662 (= res!284060 (validMask!0 mask!1365))))

(assert (=> start!42662 e!279311))

(declare-fun tp_is_empty!13487 () Bool)

(assert (=> start!42662 tp_is_empty!13487))

(assert (=> start!42662 tp!42223))

(assert (=> start!42662 true))

(declare-datatypes ((array!30683 0))(
  ( (array!30684 (arr!14754 (Array (_ BitVec 32) (_ BitVec 64))) (size!15106 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30683)

(declare-fun array_inv!10632 (array!30683) Bool)

(assert (=> start!42662 (array_inv!10632 _keys!1025)))

(declare-datatypes ((V!19087 0))(
  ( (V!19088 (val!6788 Int)) )
))
(declare-datatypes ((ValueCell!6400 0))(
  ( (ValueCellFull!6400 (v!9078 V!19087)) (EmptyCell!6400) )
))
(declare-datatypes ((array!30685 0))(
  ( (array!30686 (arr!14755 (Array (_ BitVec 32) ValueCell!6400)) (size!15107 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30685)

(declare-fun e!279308 () Bool)

(declare-fun array_inv!10633 (array!30685) Bool)

(assert (=> start!42662 (and (array_inv!10633 _values!833) e!279308)))

(declare-fun b!475599 () Bool)

(declare-fun e!279310 () Bool)

(assert (=> b!475599 (= e!279311 (not e!279310))))

(declare-fun res!284059 () Bool)

(assert (=> b!475599 (=> res!284059 e!279310)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475599 (= res!284059 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8950 0))(
  ( (tuple2!8951 (_1!4485 (_ BitVec 64)) (_2!4485 V!19087)) )
))
(declare-datatypes ((List!9060 0))(
  ( (Nil!9057) (Cons!9056 (h!9912 tuple2!8950) (t!15046 List!9060)) )
))
(declare-datatypes ((ListLongMap!7877 0))(
  ( (ListLongMap!7878 (toList!3954 List!9060)) )
))
(declare-fun lt!216707 () ListLongMap!7877)

(declare-fun lt!216705 () ListLongMap!7877)

(assert (=> b!475599 (= lt!216707 lt!216705)))

(declare-fun minValueBefore!38 () V!19087)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun zeroValue!794 () V!19087)

(declare-datatypes ((Unit!13987 0))(
  ( (Unit!13988) )
))
(declare-fun lt!216704 () Unit!13987)

(declare-fun minValueAfter!38 () V!19087)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!278 (array!30683 array!30685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19087 V!19087 V!19087 V!19087 (_ BitVec 32) Int) Unit!13987)

(assert (=> b!475599 (= lt!216704 (lemmaNoChangeToArrayThenSameMapNoExtras!278 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2107 (array!30683 array!30685 (_ BitVec 32) (_ BitVec 32) V!19087 V!19087 (_ BitVec 32) Int) ListLongMap!7877)

(assert (=> b!475599 (= lt!216705 (getCurrentListMapNoExtraKeys!2107 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475599 (= lt!216707 (getCurrentListMapNoExtraKeys!2107 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475600 () Bool)

(declare-fun res!284057 () Bool)

(assert (=> b!475600 (=> (not res!284057) (not e!279311))))

(assert (=> b!475600 (= res!284057 (and (= (size!15107 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15106 _keys!1025) (size!15107 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21955 () Bool)

(declare-fun mapRes!21955 () Bool)

(declare-fun tp!42222 () Bool)

(declare-fun e!279313 () Bool)

(assert (=> mapNonEmpty!21955 (= mapRes!21955 (and tp!42222 e!279313))))

(declare-fun mapKey!21955 () (_ BitVec 32))

(declare-fun mapRest!21955 () (Array (_ BitVec 32) ValueCell!6400))

(declare-fun mapValue!21955 () ValueCell!6400)

(assert (=> mapNonEmpty!21955 (= (arr!14755 _values!833) (store mapRest!21955 mapKey!21955 mapValue!21955))))

(declare-fun b!475601 () Bool)

(declare-fun e!279309 () Bool)

(assert (=> b!475601 (= e!279309 tp_is_empty!13487)))

(declare-fun b!475602 () Bool)

(assert (=> b!475602 (= e!279313 tp_is_empty!13487)))

(declare-fun b!475603 () Bool)

(assert (=> b!475603 (= e!279308 (and e!279309 mapRes!21955))))

(declare-fun condMapEmpty!21955 () Bool)

(declare-fun mapDefault!21955 () ValueCell!6400)

