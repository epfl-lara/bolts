; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42298 () Bool)

(assert start!42298)

(declare-fun b_free!11795 () Bool)

(declare-fun b_next!11795 () Bool)

(assert (=> start!42298 (= b_free!11795 (not b_next!11795))))

(declare-fun tp!41412 () Bool)

(declare-fun b_and!20251 () Bool)

(assert (=> start!42298 (= tp!41412 b_and!20251)))

(declare-fun b!471703 () Bool)

(declare-fun res!281854 () Bool)

(declare-fun e!276521 () Bool)

(assert (=> b!471703 (=> (not res!281854) (not e!276521))))

(declare-datatypes ((array!30169 0))(
  ( (array!30170 (arr!14503 (Array (_ BitVec 32) (_ BitVec 64))) (size!14855 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30169)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30169 (_ BitVec 32)) Bool)

(assert (=> b!471703 (= res!281854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471704 () Bool)

(declare-fun res!281853 () Bool)

(assert (=> b!471704 (=> (not res!281853) (not e!276521))))

(declare-datatypes ((List!8862 0))(
  ( (Nil!8859) (Cons!8858 (h!9714 (_ BitVec 64)) (t!14836 List!8862)) )
))
(declare-fun arrayNoDuplicates!0 (array!30169 (_ BitVec 32) List!8862) Bool)

(assert (=> b!471704 (= res!281853 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8859))))

(declare-fun mapIsEmpty!21541 () Bool)

(declare-fun mapRes!21541 () Bool)

(assert (=> mapIsEmpty!21541 mapRes!21541))

(declare-fun res!281852 () Bool)

(assert (=> start!42298 (=> (not res!281852) (not e!276521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42298 (= res!281852 (validMask!0 mask!1365))))

(assert (=> start!42298 e!276521))

(declare-fun tp_is_empty!13223 () Bool)

(assert (=> start!42298 tp_is_empty!13223))

(assert (=> start!42298 tp!41412))

(assert (=> start!42298 true))

(declare-fun array_inv!10464 (array!30169) Bool)

(assert (=> start!42298 (array_inv!10464 _keys!1025)))

(declare-datatypes ((V!18735 0))(
  ( (V!18736 (val!6656 Int)) )
))
(declare-datatypes ((ValueCell!6268 0))(
  ( (ValueCellFull!6268 (v!8943 V!18735)) (EmptyCell!6268) )
))
(declare-datatypes ((array!30171 0))(
  ( (array!30172 (arr!14504 (Array (_ BitVec 32) ValueCell!6268)) (size!14856 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30171)

(declare-fun e!276523 () Bool)

(declare-fun array_inv!10465 (array!30171) Bool)

(assert (=> start!42298 (and (array_inv!10465 _values!833) e!276523)))

(declare-fun b!471705 () Bool)

(declare-fun e!276520 () Bool)

(assert (=> b!471705 (= e!276520 tp_is_empty!13223)))

(declare-fun mapNonEmpty!21541 () Bool)

(declare-fun tp!41413 () Bool)

(assert (=> mapNonEmpty!21541 (= mapRes!21541 (and tp!41413 e!276520))))

(declare-fun mapRest!21541 () (Array (_ BitVec 32) ValueCell!6268))

(declare-fun mapKey!21541 () (_ BitVec 32))

(declare-fun mapValue!21541 () ValueCell!6268)

(assert (=> mapNonEmpty!21541 (= (arr!14504 _values!833) (store mapRest!21541 mapKey!21541 mapValue!21541))))

(declare-fun b!471706 () Bool)

(assert (=> b!471706 (= e!276521 (not true))))

(declare-datatypes ((tuple2!8746 0))(
  ( (tuple2!8747 (_1!4383 (_ BitVec 64)) (_2!4383 V!18735)) )
))
(declare-datatypes ((List!8863 0))(
  ( (Nil!8860) (Cons!8859 (h!9715 tuple2!8746) (t!14837 List!8863)) )
))
(declare-datatypes ((ListLongMap!7673 0))(
  ( (ListLongMap!7674 (toList!3852 List!8863)) )
))
(declare-fun lt!214050 () ListLongMap!7673)

(declare-fun lt!214049 () ListLongMap!7673)

(assert (=> b!471706 (= lt!214050 lt!214049)))

(declare-fun zeroValue!794 () V!18735)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18735)

(declare-datatypes ((Unit!13830 0))(
  ( (Unit!13831) )
))
(declare-fun lt!214048 () Unit!13830)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18735)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!209 (array!30169 array!30171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18735 V!18735 V!18735 V!18735 (_ BitVec 32) Int) Unit!13830)

(assert (=> b!471706 (= lt!214048 (lemmaNoChangeToArrayThenSameMapNoExtras!209 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2014 (array!30169 array!30171 (_ BitVec 32) (_ BitVec 32) V!18735 V!18735 (_ BitVec 32) Int) ListLongMap!7673)

(assert (=> b!471706 (= lt!214049 (getCurrentListMapNoExtraKeys!2014 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471706 (= lt!214050 (getCurrentListMapNoExtraKeys!2014 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471707 () Bool)

(declare-fun res!281855 () Bool)

(assert (=> b!471707 (=> (not res!281855) (not e!276521))))

(assert (=> b!471707 (= res!281855 (and (= (size!14856 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14855 _keys!1025) (size!14856 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471708 () Bool)

(declare-fun e!276519 () Bool)

(assert (=> b!471708 (= e!276523 (and e!276519 mapRes!21541))))

(declare-fun condMapEmpty!21541 () Bool)

(declare-fun mapDefault!21541 () ValueCell!6268)

