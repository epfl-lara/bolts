; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41660 () Bool)

(assert start!41660)

(declare-fun b_free!11305 () Bool)

(declare-fun b_next!11305 () Bool)

(assert (=> start!41660 (= b_free!11305 (not b_next!11305))))

(declare-fun tp!39916 () Bool)

(declare-fun b_and!19671 () Bool)

(assert (=> start!41660 (= tp!39916 b_and!19671)))

(declare-fun res!278010 () Bool)

(declare-fun e!271684 () Bool)

(assert (=> start!41660 (=> (not res!278010) (not e!271684))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41660 (= res!278010 (validMask!0 mask!1365))))

(assert (=> start!41660 e!271684))

(declare-fun tp_is_empty!12733 () Bool)

(assert (=> start!41660 tp_is_empty!12733))

(assert (=> start!41660 tp!39916))

(assert (=> start!41660 true))

(declare-datatypes ((array!29207 0))(
  ( (array!29208 (arr!14031 (Array (_ BitVec 32) (_ BitVec 64))) (size!14383 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29207)

(declare-fun array_inv!10116 (array!29207) Bool)

(assert (=> start!41660 (array_inv!10116 _keys!1025)))

(declare-datatypes ((V!18083 0))(
  ( (V!18084 (val!6411 Int)) )
))
(declare-datatypes ((ValueCell!6023 0))(
  ( (ValueCellFull!6023 (v!8694 V!18083)) (EmptyCell!6023) )
))
(declare-datatypes ((array!29209 0))(
  ( (array!29210 (arr!14032 (Array (_ BitVec 32) ValueCell!6023)) (size!14384 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29209)

(declare-fun e!271682 () Bool)

(declare-fun array_inv!10117 (array!29209) Bool)

(assert (=> start!41660 (and (array_inv!10117 _values!833) e!271682)))

(declare-fun b!464939 () Bool)

(declare-fun res!278008 () Bool)

(assert (=> b!464939 (=> (not res!278008) (not e!271684))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464939 (= res!278008 (and (= (size!14384 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14383 _keys!1025) (size!14384 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464940 () Bool)

(declare-fun e!271685 () Bool)

(assert (=> b!464940 (= e!271685 tp_is_empty!12733)))

(declare-fun b!464941 () Bool)

(declare-fun e!271683 () Bool)

(assert (=> b!464941 (= e!271683 tp_is_empty!12733)))

(declare-fun b!464942 () Bool)

(declare-fun res!278007 () Bool)

(assert (=> b!464942 (=> (not res!278007) (not e!271684))))

(declare-datatypes ((List!8504 0))(
  ( (Nil!8501) (Cons!8500 (h!9356 (_ BitVec 64)) (t!14460 List!8504)) )
))
(declare-fun arrayNoDuplicates!0 (array!29207 (_ BitVec 32) List!8504) Bool)

(assert (=> b!464942 (= res!278007 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8501))))

(declare-fun mapIsEmpty!20779 () Bool)

(declare-fun mapRes!20779 () Bool)

(assert (=> mapIsEmpty!20779 mapRes!20779))

(declare-fun b!464943 () Bool)

(declare-fun res!278009 () Bool)

(assert (=> b!464943 (=> (not res!278009) (not e!271684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29207 (_ BitVec 32)) Bool)

(assert (=> b!464943 (= res!278009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464944 () Bool)

(assert (=> b!464944 (= e!271684 (not true))))

(declare-datatypes ((tuple2!8380 0))(
  ( (tuple2!8381 (_1!4200 (_ BitVec 64)) (_2!4200 V!18083)) )
))
(declare-datatypes ((List!8505 0))(
  ( (Nil!8502) (Cons!8501 (h!9357 tuple2!8380) (t!14461 List!8505)) )
))
(declare-datatypes ((ListLongMap!7307 0))(
  ( (ListLongMap!7308 (toList!3669 List!8505)) )
))
(declare-fun lt!209980 () ListLongMap!7307)

(declare-fun lt!209979 () ListLongMap!7307)

(assert (=> b!464944 (= lt!209980 lt!209979)))

(declare-fun minValueBefore!38 () V!18083)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13459 0))(
  ( (Unit!13460) )
))
(declare-fun lt!209978 () Unit!13459)

(declare-fun zeroValue!794 () V!18083)

(declare-fun minValueAfter!38 () V!18083)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!32 (array!29207 array!29209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18083 V!18083 V!18083 V!18083 (_ BitVec 32) Int) Unit!13459)

(assert (=> b!464944 (= lt!209978 (lemmaNoChangeToArrayThenSameMapNoExtras!32 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1837 (array!29207 array!29209 (_ BitVec 32) (_ BitVec 32) V!18083 V!18083 (_ BitVec 32) Int) ListLongMap!7307)

(assert (=> b!464944 (= lt!209979 (getCurrentListMapNoExtraKeys!1837 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464944 (= lt!209980 (getCurrentListMapNoExtraKeys!1837 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20779 () Bool)

(declare-fun tp!39915 () Bool)

(assert (=> mapNonEmpty!20779 (= mapRes!20779 (and tp!39915 e!271685))))

(declare-fun mapRest!20779 () (Array (_ BitVec 32) ValueCell!6023))

(declare-fun mapKey!20779 () (_ BitVec 32))

(declare-fun mapValue!20779 () ValueCell!6023)

(assert (=> mapNonEmpty!20779 (= (arr!14032 _values!833) (store mapRest!20779 mapKey!20779 mapValue!20779))))

(declare-fun b!464945 () Bool)

(assert (=> b!464945 (= e!271682 (and e!271683 mapRes!20779))))

(declare-fun condMapEmpty!20779 () Bool)

(declare-fun mapDefault!20779 () ValueCell!6023)

