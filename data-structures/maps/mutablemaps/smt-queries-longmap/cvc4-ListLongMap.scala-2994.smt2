; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42280 () Bool)

(assert start!42280)

(declare-fun b_free!11777 () Bool)

(declare-fun b_next!11777 () Bool)

(assert (=> start!42280 (= b_free!11777 (not b_next!11777))))

(declare-fun tp!41358 () Bool)

(declare-fun b_and!20233 () Bool)

(assert (=> start!42280 (= tp!41358 b_and!20233)))

(declare-fun mapNonEmpty!21514 () Bool)

(declare-fun mapRes!21514 () Bool)

(declare-fun tp!41359 () Bool)

(declare-fun e!276385 () Bool)

(assert (=> mapNonEmpty!21514 (= mapRes!21514 (and tp!41359 e!276385))))

(declare-datatypes ((V!18711 0))(
  ( (V!18712 (val!6647 Int)) )
))
(declare-datatypes ((ValueCell!6259 0))(
  ( (ValueCellFull!6259 (v!8934 V!18711)) (EmptyCell!6259) )
))
(declare-datatypes ((array!30137 0))(
  ( (array!30138 (arr!14487 (Array (_ BitVec 32) ValueCell!6259)) (size!14839 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30137)

(declare-fun mapRest!21514 () (Array (_ BitVec 32) ValueCell!6259))

(declare-fun mapValue!21514 () ValueCell!6259)

(declare-fun mapKey!21514 () (_ BitVec 32))

(assert (=> mapNonEmpty!21514 (= (arr!14487 _values!833) (store mapRest!21514 mapKey!21514 mapValue!21514))))

(declare-fun b!471514 () Bool)

(declare-fun res!281747 () Bool)

(declare-fun e!276386 () Bool)

(assert (=> b!471514 (=> (not res!281747) (not e!276386))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30139 0))(
  ( (array!30140 (arr!14488 (Array (_ BitVec 32) (_ BitVec 64))) (size!14840 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30139)

(assert (=> b!471514 (= res!281747 (and (= (size!14839 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14840 _keys!1025) (size!14839 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471515 () Bool)

(declare-fun e!276387 () Bool)

(declare-fun tp_is_empty!13205 () Bool)

(assert (=> b!471515 (= e!276387 tp_is_empty!13205)))

(declare-fun b!471516 () Bool)

(declare-fun res!281746 () Bool)

(assert (=> b!471516 (=> (not res!281746) (not e!276386))))

(declare-datatypes ((List!8850 0))(
  ( (Nil!8847) (Cons!8846 (h!9702 (_ BitVec 64)) (t!14824 List!8850)) )
))
(declare-fun arrayNoDuplicates!0 (array!30139 (_ BitVec 32) List!8850) Bool)

(assert (=> b!471516 (= res!281746 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8847))))

(declare-fun b!471517 () Bool)

(assert (=> b!471517 (= e!276386 (not true))))

(declare-datatypes ((tuple2!8732 0))(
  ( (tuple2!8733 (_1!4376 (_ BitVec 64)) (_2!4376 V!18711)) )
))
(declare-datatypes ((List!8851 0))(
  ( (Nil!8848) (Cons!8847 (h!9703 tuple2!8732) (t!14825 List!8851)) )
))
(declare-datatypes ((ListLongMap!7659 0))(
  ( (ListLongMap!7660 (toList!3845 List!8851)) )
))
(declare-fun lt!213968 () ListLongMap!7659)

(declare-fun lt!213969 () ListLongMap!7659)

(assert (=> b!471517 (= lt!213968 lt!213969)))

(declare-fun minValueBefore!38 () V!18711)

(declare-fun zeroValue!794 () V!18711)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18711)

(declare-datatypes ((Unit!13816 0))(
  ( (Unit!13817) )
))
(declare-fun lt!213967 () Unit!13816)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!202 (array!30139 array!30137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18711 V!18711 V!18711 V!18711 (_ BitVec 32) Int) Unit!13816)

(assert (=> b!471517 (= lt!213967 (lemmaNoChangeToArrayThenSameMapNoExtras!202 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2007 (array!30139 array!30137 (_ BitVec 32) (_ BitVec 32) V!18711 V!18711 (_ BitVec 32) Int) ListLongMap!7659)

(assert (=> b!471517 (= lt!213969 (getCurrentListMapNoExtraKeys!2007 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471517 (= lt!213968 (getCurrentListMapNoExtraKeys!2007 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21514 () Bool)

(assert (=> mapIsEmpty!21514 mapRes!21514))

(declare-fun res!281744 () Bool)

(assert (=> start!42280 (=> (not res!281744) (not e!276386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42280 (= res!281744 (validMask!0 mask!1365))))

(assert (=> start!42280 e!276386))

(assert (=> start!42280 tp_is_empty!13205))

(assert (=> start!42280 tp!41358))

(assert (=> start!42280 true))

(declare-fun array_inv!10454 (array!30139) Bool)

(assert (=> start!42280 (array_inv!10454 _keys!1025)))

(declare-fun e!276384 () Bool)

(declare-fun array_inv!10455 (array!30137) Bool)

(assert (=> start!42280 (and (array_inv!10455 _values!833) e!276384)))

(declare-fun b!471518 () Bool)

(assert (=> b!471518 (= e!276385 tp_is_empty!13205)))

(declare-fun b!471519 () Bool)

(assert (=> b!471519 (= e!276384 (and e!276387 mapRes!21514))))

(declare-fun condMapEmpty!21514 () Bool)

(declare-fun mapDefault!21514 () ValueCell!6259)

