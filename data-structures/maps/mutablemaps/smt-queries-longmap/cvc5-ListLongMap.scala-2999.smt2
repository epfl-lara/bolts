; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42306 () Bool)

(assert start!42306)

(declare-fun b_free!11803 () Bool)

(declare-fun b_next!11803 () Bool)

(assert (=> start!42306 (= b_free!11803 (not b_next!11803))))

(declare-fun tp!41436 () Bool)

(declare-fun b_and!20259 () Bool)

(assert (=> start!42306 (= tp!41436 b_and!20259)))

(declare-fun b!471787 () Bool)

(declare-fun res!281900 () Bool)

(declare-fun e!276580 () Bool)

(assert (=> b!471787 (=> (not res!281900) (not e!276580))))

(declare-datatypes ((array!30185 0))(
  ( (array!30186 (arr!14511 (Array (_ BitVec 32) (_ BitVec 64))) (size!14863 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30185)

(declare-datatypes ((List!8870 0))(
  ( (Nil!8867) (Cons!8866 (h!9722 (_ BitVec 64)) (t!14844 List!8870)) )
))
(declare-fun arrayNoDuplicates!0 (array!30185 (_ BitVec 32) List!8870) Bool)

(assert (=> b!471787 (= res!281900 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8867))))

(declare-fun b!471788 () Bool)

(declare-fun res!281903 () Bool)

(assert (=> b!471788 (=> (not res!281903) (not e!276580))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18747 0))(
  ( (V!18748 (val!6660 Int)) )
))
(declare-datatypes ((ValueCell!6272 0))(
  ( (ValueCellFull!6272 (v!8947 V!18747)) (EmptyCell!6272) )
))
(declare-datatypes ((array!30187 0))(
  ( (array!30188 (arr!14512 (Array (_ BitVec 32) ValueCell!6272)) (size!14864 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30187)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!471788 (= res!281903 (and (= (size!14864 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14863 _keys!1025) (size!14864 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21553 () Bool)

(declare-fun mapRes!21553 () Bool)

(declare-fun tp!41437 () Bool)

(declare-fun e!276579 () Bool)

(assert (=> mapNonEmpty!21553 (= mapRes!21553 (and tp!41437 e!276579))))

(declare-fun mapRest!21553 () (Array (_ BitVec 32) ValueCell!6272))

(declare-fun mapValue!21553 () ValueCell!6272)

(declare-fun mapKey!21553 () (_ BitVec 32))

(assert (=> mapNonEmpty!21553 (= (arr!14512 _values!833) (store mapRest!21553 mapKey!21553 mapValue!21553))))

(declare-fun b!471789 () Bool)

(declare-fun e!276582 () Bool)

(declare-fun tp_is_empty!13231 () Bool)

(assert (=> b!471789 (= e!276582 tp_is_empty!13231)))

(declare-fun b!471790 () Bool)

(assert (=> b!471790 (= e!276580 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!14863 _keys!1025)))))))

(declare-datatypes ((tuple2!8754 0))(
  ( (tuple2!8755 (_1!4387 (_ BitVec 64)) (_2!4387 V!18747)) )
))
(declare-datatypes ((List!8871 0))(
  ( (Nil!8868) (Cons!8867 (h!9723 tuple2!8754) (t!14845 List!8871)) )
))
(declare-datatypes ((ListLongMap!7681 0))(
  ( (ListLongMap!7682 (toList!3856 List!8871)) )
))
(declare-fun lt!214084 () ListLongMap!7681)

(declare-fun lt!214086 () ListLongMap!7681)

(assert (=> b!471790 (= lt!214084 lt!214086)))

(declare-fun minValueBefore!38 () V!18747)

(declare-datatypes ((Unit!13838 0))(
  ( (Unit!13839) )
))
(declare-fun lt!214085 () Unit!13838)

(declare-fun zeroValue!794 () V!18747)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18747)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!213 (array!30185 array!30187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18747 V!18747 V!18747 V!18747 (_ BitVec 32) Int) Unit!13838)

(assert (=> b!471790 (= lt!214085 (lemmaNoChangeToArrayThenSameMapNoExtras!213 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2018 (array!30185 array!30187 (_ BitVec 32) (_ BitVec 32) V!18747 V!18747 (_ BitVec 32) Int) ListLongMap!7681)

(assert (=> b!471790 (= lt!214086 (getCurrentListMapNoExtraKeys!2018 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471790 (= lt!214084 (getCurrentListMapNoExtraKeys!2018 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281901 () Bool)

(assert (=> start!42306 (=> (not res!281901) (not e!276580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42306 (= res!281901 (validMask!0 mask!1365))))

(assert (=> start!42306 e!276580))

(assert (=> start!42306 tp_is_empty!13231))

(assert (=> start!42306 tp!41436))

(assert (=> start!42306 true))

(declare-fun array_inv!10472 (array!30185) Bool)

(assert (=> start!42306 (array_inv!10472 _keys!1025)))

(declare-fun e!276583 () Bool)

(declare-fun array_inv!10473 (array!30187) Bool)

(assert (=> start!42306 (and (array_inv!10473 _values!833) e!276583)))

(declare-fun b!471791 () Bool)

(assert (=> b!471791 (= e!276579 tp_is_empty!13231)))

(declare-fun mapIsEmpty!21553 () Bool)

(assert (=> mapIsEmpty!21553 mapRes!21553))

(declare-fun b!471792 () Bool)

(declare-fun res!281902 () Bool)

(assert (=> b!471792 (=> (not res!281902) (not e!276580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30185 (_ BitVec 32)) Bool)

(assert (=> b!471792 (= res!281902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471793 () Bool)

(assert (=> b!471793 (= e!276583 (and e!276582 mapRes!21553))))

(declare-fun condMapEmpty!21553 () Bool)

(declare-fun mapDefault!21553 () ValueCell!6272)

