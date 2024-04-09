; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42064 () Bool)

(assert start!42064)

(declare-fun b_free!11609 () Bool)

(declare-fun b_next!11609 () Bool)

(assert (=> start!42064 (= b_free!11609 (not b_next!11609))))

(declare-fun tp!40845 () Bool)

(declare-fun b_and!20037 () Bool)

(assert (=> start!42064 (= tp!40845 b_and!20037)))

(declare-fun b!469346 () Bool)

(declare-fun res!280542 () Bool)

(declare-fun e!274848 () Bool)

(assert (=> b!469346 (=> (not res!280542) (not e!274848))))

(declare-datatypes ((array!29809 0))(
  ( (array!29810 (arr!14326 (Array (_ BitVec 32) (_ BitVec 64))) (size!14678 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29809)

(declare-datatypes ((List!8731 0))(
  ( (Nil!8728) (Cons!8727 (h!9583 (_ BitVec 64)) (t!14699 List!8731)) )
))
(declare-fun arrayNoDuplicates!0 (array!29809 (_ BitVec 32) List!8731) Bool)

(assert (=> b!469346 (= res!280542 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8728))))

(declare-fun res!280544 () Bool)

(assert (=> start!42064 (=> (not res!280544) (not e!274848))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42064 (= res!280544 (validMask!0 mask!1365))))

(assert (=> start!42064 e!274848))

(declare-fun tp_is_empty!13037 () Bool)

(assert (=> start!42064 tp_is_empty!13037))

(assert (=> start!42064 tp!40845))

(assert (=> start!42064 true))

(declare-fun array_inv!10332 (array!29809) Bool)

(assert (=> start!42064 (array_inv!10332 _keys!1025)))

(declare-datatypes ((V!18487 0))(
  ( (V!18488 (val!6563 Int)) )
))
(declare-datatypes ((ValueCell!6175 0))(
  ( (ValueCellFull!6175 (v!8849 V!18487)) (EmptyCell!6175) )
))
(declare-datatypes ((array!29811 0))(
  ( (array!29812 (arr!14327 (Array (_ BitVec 32) ValueCell!6175)) (size!14679 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29811)

(declare-fun e!274850 () Bool)

(declare-fun array_inv!10333 (array!29811) Bool)

(assert (=> start!42064 (and (array_inv!10333 _values!833) e!274850)))

(declare-fun b!469347 () Bool)

(declare-fun e!274852 () Bool)

(assert (=> b!469347 (= e!274852 tp_is_empty!13037)))

(declare-fun b!469348 () Bool)

(declare-fun e!274849 () Bool)

(assert (=> b!469348 (= e!274849 true)))

(declare-datatypes ((tuple2!8612 0))(
  ( (tuple2!8613 (_1!4316 (_ BitVec 64)) (_2!4316 V!18487)) )
))
(declare-datatypes ((List!8732 0))(
  ( (Nil!8729) (Cons!8728 (h!9584 tuple2!8612) (t!14700 List!8732)) )
))
(declare-datatypes ((ListLongMap!7539 0))(
  ( (ListLongMap!7540 (toList!3785 List!8732)) )
))
(declare-fun lt!212766 () ListLongMap!7539)

(declare-fun lt!212761 () tuple2!8612)

(declare-fun minValueBefore!38 () V!18487)

(declare-fun +!1673 (ListLongMap!7539 tuple2!8612) ListLongMap!7539)

(assert (=> b!469348 (= (+!1673 lt!212766 lt!212761) (+!1673 (+!1673 lt!212766 (tuple2!8613 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212761))))

(declare-fun minValueAfter!38 () V!18487)

(assert (=> b!469348 (= lt!212761 (tuple2!8613 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13694 0))(
  ( (Unit!13695) )
))
(declare-fun lt!212760 () Unit!13694)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!114 (ListLongMap!7539 (_ BitVec 64) V!18487 V!18487) Unit!13694)

(assert (=> b!469348 (= lt!212760 (addSameAsAddTwiceSameKeyDiffValues!114 lt!212766 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212765 () ListLongMap!7539)

(declare-fun zeroValue!794 () V!18487)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2195 (array!29809 array!29811 (_ BitVec 32) (_ BitVec 32) V!18487 V!18487 (_ BitVec 32) Int) ListLongMap!7539)

(assert (=> b!469348 (= lt!212765 (getCurrentListMap!2195 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212763 () ListLongMap!7539)

(assert (=> b!469348 (= lt!212763 (getCurrentListMap!2195 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21253 () Bool)

(declare-fun mapRes!21253 () Bool)

(declare-fun tp!40846 () Bool)

(declare-fun e!274851 () Bool)

(assert (=> mapNonEmpty!21253 (= mapRes!21253 (and tp!40846 e!274851))))

(declare-fun mapRest!21253 () (Array (_ BitVec 32) ValueCell!6175))

(declare-fun mapValue!21253 () ValueCell!6175)

(declare-fun mapKey!21253 () (_ BitVec 32))

(assert (=> mapNonEmpty!21253 (= (arr!14327 _values!833) (store mapRest!21253 mapKey!21253 mapValue!21253))))

(declare-fun mapIsEmpty!21253 () Bool)

(assert (=> mapIsEmpty!21253 mapRes!21253))

(declare-fun b!469349 () Bool)

(declare-fun res!280543 () Bool)

(assert (=> b!469349 (=> (not res!280543) (not e!274848))))

(assert (=> b!469349 (= res!280543 (and (= (size!14679 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14678 _keys!1025) (size!14679 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469350 () Bool)

(declare-fun res!280545 () Bool)

(assert (=> b!469350 (=> (not res!280545) (not e!274848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29809 (_ BitVec 32)) Bool)

(assert (=> b!469350 (= res!280545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469351 () Bool)

(assert (=> b!469351 (= e!274850 (and e!274852 mapRes!21253))))

(declare-fun condMapEmpty!21253 () Bool)

(declare-fun mapDefault!21253 () ValueCell!6175)

