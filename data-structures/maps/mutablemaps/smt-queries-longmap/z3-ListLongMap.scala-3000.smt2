; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42328 () Bool)

(assert start!42328)

(declare-fun b_free!11811 () Bool)

(declare-fun b_next!11811 () Bool)

(assert (=> start!42328 (= b_free!11811 (not b_next!11811))))

(declare-fun tp!41464 () Bool)

(declare-fun b_and!20275 () Bool)

(assert (=> start!42328 (= tp!41464 b_and!20275)))

(declare-fun b!471961 () Bool)

(declare-fun e!276703 () Bool)

(declare-fun e!276702 () Bool)

(assert (=> b!471961 (= e!276703 (not e!276702))))

(declare-fun res!281984 () Bool)

(assert (=> b!471961 (=> res!281984 e!276702)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!471961 (= res!281984 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18757 0))(
  ( (V!18758 (val!6664 Int)) )
))
(declare-datatypes ((tuple2!8762 0))(
  ( (tuple2!8763 (_1!4391 (_ BitVec 64)) (_2!4391 V!18757)) )
))
(declare-datatypes ((List!8878 0))(
  ( (Nil!8875) (Cons!8874 (h!9730 tuple2!8762) (t!14854 List!8878)) )
))
(declare-datatypes ((ListLongMap!7689 0))(
  ( (ListLongMap!7690 (toList!3860 List!8878)) )
))
(declare-fun lt!214168 () ListLongMap!7689)

(declare-fun lt!214167 () ListLongMap!7689)

(assert (=> b!471961 (= lt!214168 lt!214167)))

(declare-fun minValueBefore!38 () V!18757)

(declare-fun zeroValue!794 () V!18757)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30203 0))(
  ( (array!30204 (arr!14519 (Array (_ BitVec 32) (_ BitVec 64))) (size!14871 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30203)

(declare-datatypes ((ValueCell!6276 0))(
  ( (ValueCellFull!6276 (v!8951 V!18757)) (EmptyCell!6276) )
))
(declare-datatypes ((array!30205 0))(
  ( (array!30206 (arr!14520 (Array (_ BitVec 32) ValueCell!6276)) (size!14872 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30205)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13846 0))(
  ( (Unit!13847) )
))
(declare-fun lt!214165 () Unit!13846)

(declare-fun minValueAfter!38 () V!18757)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!217 (array!30203 array!30205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18757 V!18757 V!18757 V!18757 (_ BitVec 32) Int) Unit!13846)

(assert (=> b!471961 (= lt!214165 (lemmaNoChangeToArrayThenSameMapNoExtras!217 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2022 (array!30203 array!30205 (_ BitVec 32) (_ BitVec 32) V!18757 V!18757 (_ BitVec 32) Int) ListLongMap!7689)

(assert (=> b!471961 (= lt!214167 (getCurrentListMapNoExtraKeys!2022 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471961 (= lt!214168 (getCurrentListMapNoExtraKeys!2022 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471962 () Bool)

(declare-fun res!281988 () Bool)

(assert (=> b!471962 (=> (not res!281988) (not e!276703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30203 (_ BitVec 32)) Bool)

(assert (=> b!471962 (= res!281988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471963 () Bool)

(declare-fun res!281987 () Bool)

(assert (=> b!471963 (=> (not res!281987) (not e!276703))))

(declare-datatypes ((List!8879 0))(
  ( (Nil!8876) (Cons!8875 (h!9731 (_ BitVec 64)) (t!14855 List!8879)) )
))
(declare-fun arrayNoDuplicates!0 (array!30203 (_ BitVec 32) List!8879) Bool)

(assert (=> b!471963 (= res!281987 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8876))))

(declare-fun mapIsEmpty!21568 () Bool)

(declare-fun mapRes!21568 () Bool)

(assert (=> mapIsEmpty!21568 mapRes!21568))

(declare-fun b!471965 () Bool)

(declare-fun e!276700 () Bool)

(declare-fun tp_is_empty!13239 () Bool)

(assert (=> b!471965 (= e!276700 tp_is_empty!13239)))

(declare-fun b!471966 () Bool)

(declare-fun res!281985 () Bool)

(assert (=> b!471966 (=> (not res!281985) (not e!276703))))

(assert (=> b!471966 (= res!281985 (and (= (size!14872 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14871 _keys!1025) (size!14872 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21568 () Bool)

(declare-fun tp!41463 () Bool)

(declare-fun e!276699 () Bool)

(assert (=> mapNonEmpty!21568 (= mapRes!21568 (and tp!41463 e!276699))))

(declare-fun mapValue!21568 () ValueCell!6276)

(declare-fun mapKey!21568 () (_ BitVec 32))

(declare-fun mapRest!21568 () (Array (_ BitVec 32) ValueCell!6276))

(assert (=> mapNonEmpty!21568 (= (arr!14520 _values!833) (store mapRest!21568 mapKey!21568 mapValue!21568))))

(declare-fun b!471967 () Bool)

(assert (=> b!471967 (= e!276699 tp_is_empty!13239)))

(declare-fun b!471968 () Bool)

(assert (=> b!471968 (= e!276702 true)))

(declare-fun lt!214166 () ListLongMap!7689)

(declare-fun getCurrentListMap!2208 (array!30203 array!30205 (_ BitVec 32) (_ BitVec 32) V!18757 V!18757 (_ BitVec 32) Int) ListLongMap!7689)

(assert (=> b!471968 (= lt!214166 (getCurrentListMap!2208 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471964 () Bool)

(declare-fun e!276701 () Bool)

(assert (=> b!471964 (= e!276701 (and e!276700 mapRes!21568))))

(declare-fun condMapEmpty!21568 () Bool)

(declare-fun mapDefault!21568 () ValueCell!6276)

(assert (=> b!471964 (= condMapEmpty!21568 (= (arr!14520 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6276)) mapDefault!21568)))))

(declare-fun res!281986 () Bool)

(assert (=> start!42328 (=> (not res!281986) (not e!276703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42328 (= res!281986 (validMask!0 mask!1365))))

(assert (=> start!42328 e!276703))

(assert (=> start!42328 tp_is_empty!13239))

(assert (=> start!42328 tp!41464))

(assert (=> start!42328 true))

(declare-fun array_inv!10476 (array!30203) Bool)

(assert (=> start!42328 (array_inv!10476 _keys!1025)))

(declare-fun array_inv!10477 (array!30205) Bool)

(assert (=> start!42328 (and (array_inv!10477 _values!833) e!276701)))

(assert (= (and start!42328 res!281986) b!471966))

(assert (= (and b!471966 res!281985) b!471962))

(assert (= (and b!471962 res!281988) b!471963))

(assert (= (and b!471963 res!281987) b!471961))

(assert (= (and b!471961 (not res!281984)) b!471968))

(assert (= (and b!471964 condMapEmpty!21568) mapIsEmpty!21568))

(assert (= (and b!471964 (not condMapEmpty!21568)) mapNonEmpty!21568))

(get-info :version)

(assert (= (and mapNonEmpty!21568 ((_ is ValueCellFull!6276) mapValue!21568)) b!471967))

(assert (= (and b!471964 ((_ is ValueCellFull!6276) mapDefault!21568)) b!471965))

(assert (= start!42328 b!471964))

(declare-fun m!454017 () Bool)

(assert (=> b!471968 m!454017))

(declare-fun m!454019 () Bool)

(assert (=> start!42328 m!454019))

(declare-fun m!454021 () Bool)

(assert (=> start!42328 m!454021))

(declare-fun m!454023 () Bool)

(assert (=> start!42328 m!454023))

(declare-fun m!454025 () Bool)

(assert (=> b!471963 m!454025))

(declare-fun m!454027 () Bool)

(assert (=> b!471962 m!454027))

(declare-fun m!454029 () Bool)

(assert (=> mapNonEmpty!21568 m!454029))

(declare-fun m!454031 () Bool)

(assert (=> b!471961 m!454031))

(declare-fun m!454033 () Bool)

(assert (=> b!471961 m!454033))

(declare-fun m!454035 () Bool)

(assert (=> b!471961 m!454035))

(check-sat tp_is_empty!13239 (not b!471963) (not mapNonEmpty!21568) (not b_next!11811) (not b!471962) b_and!20275 (not b!471968) (not b!471961) (not start!42328))
(check-sat b_and!20275 (not b_next!11811))
