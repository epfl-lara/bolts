; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42216 () Bool)

(assert start!42216)

(declare-fun b_free!11727 () Bool)

(declare-fun b_next!11727 () Bool)

(assert (=> start!42216 (= b_free!11727 (not b_next!11727))))

(declare-fun tp!41205 () Bool)

(declare-fun b_and!20175 () Bool)

(assert (=> start!42216 (= tp!41205 b_and!20175)))

(declare-fun b!470904 () Bool)

(declare-fun e!275955 () Bool)

(declare-fun tp_is_empty!13155 () Bool)

(assert (=> b!470904 (= e!275955 tp_is_empty!13155)))

(declare-fun b!470905 () Bool)

(declare-fun e!275957 () Bool)

(assert (=> b!470905 (= e!275957 tp_is_empty!13155)))

(declare-fun b!470906 () Bool)

(declare-fun res!281416 () Bool)

(declare-fun e!275954 () Bool)

(assert (=> b!470906 (=> (not res!281416) (not e!275954))))

(declare-datatypes ((array!30039 0))(
  ( (array!30040 (arr!14439 (Array (_ BitVec 32) (_ BitVec 64))) (size!14791 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30039)

(declare-datatypes ((List!8811 0))(
  ( (Nil!8808) (Cons!8807 (h!9663 (_ BitVec 64)) (t!14783 List!8811)) )
))
(declare-fun arrayNoDuplicates!0 (array!30039 (_ BitVec 32) List!8811) Bool)

(assert (=> b!470906 (= res!281416 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8808))))

(declare-fun mapIsEmpty!21436 () Bool)

(declare-fun mapRes!21436 () Bool)

(assert (=> mapIsEmpty!21436 mapRes!21436))

(declare-fun mapNonEmpty!21436 () Bool)

(declare-fun tp!41206 () Bool)

(assert (=> mapNonEmpty!21436 (= mapRes!21436 (and tp!41206 e!275955))))

(declare-datatypes ((V!18645 0))(
  ( (V!18646 (val!6622 Int)) )
))
(declare-datatypes ((ValueCell!6234 0))(
  ( (ValueCellFull!6234 (v!8909 V!18645)) (EmptyCell!6234) )
))
(declare-fun mapRest!21436 () (Array (_ BitVec 32) ValueCell!6234))

(declare-datatypes ((array!30041 0))(
  ( (array!30042 (arr!14440 (Array (_ BitVec 32) ValueCell!6234)) (size!14792 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30041)

(declare-fun mapKey!21436 () (_ BitVec 32))

(declare-fun mapValue!21436 () ValueCell!6234)

(assert (=> mapNonEmpty!21436 (= (arr!14440 _values!833) (store mapRest!21436 mapKey!21436 mapValue!21436))))

(declare-fun b!470907 () Bool)

(assert (=> b!470907 (= e!275954 (not true))))

(declare-datatypes ((tuple2!8690 0))(
  ( (tuple2!8691 (_1!4355 (_ BitVec 64)) (_2!4355 V!18645)) )
))
(declare-datatypes ((List!8812 0))(
  ( (Nil!8809) (Cons!8808 (h!9664 tuple2!8690) (t!14784 List!8812)) )
))
(declare-datatypes ((ListLongMap!7617 0))(
  ( (ListLongMap!7618 (toList!3824 List!8812)) )
))
(declare-fun lt!213702 () ListLongMap!7617)

(declare-fun lt!213704 () ListLongMap!7617)

(assert (=> b!470907 (= lt!213702 lt!213704)))

(declare-fun zeroValue!794 () V!18645)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18645)

(declare-datatypes ((Unit!13774 0))(
  ( (Unit!13775) )
))
(declare-fun lt!213703 () Unit!13774)

(declare-fun minValueAfter!38 () V!18645)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!181 (array!30039 array!30041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18645 V!18645 V!18645 V!18645 (_ BitVec 32) Int) Unit!13774)

(assert (=> b!470907 (= lt!213703 (lemmaNoChangeToArrayThenSameMapNoExtras!181 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1986 (array!30039 array!30041 (_ BitVec 32) (_ BitVec 32) V!18645 V!18645 (_ BitVec 32) Int) ListLongMap!7617)

(assert (=> b!470907 (= lt!213704 (getCurrentListMapNoExtraKeys!1986 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470907 (= lt!213702 (getCurrentListMapNoExtraKeys!1986 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281414 () Bool)

(assert (=> start!42216 (=> (not res!281414) (not e!275954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42216 (= res!281414 (validMask!0 mask!1365))))

(assert (=> start!42216 e!275954))

(assert (=> start!42216 tp_is_empty!13155))

(assert (=> start!42216 tp!41205))

(assert (=> start!42216 true))

(declare-fun array_inv!10418 (array!30039) Bool)

(assert (=> start!42216 (array_inv!10418 _keys!1025)))

(declare-fun e!275958 () Bool)

(declare-fun array_inv!10419 (array!30041) Bool)

(assert (=> start!42216 (and (array_inv!10419 _values!833) e!275958)))

(declare-fun b!470908 () Bool)

(declare-fun res!281415 () Bool)

(assert (=> b!470908 (=> (not res!281415) (not e!275954))))

(assert (=> b!470908 (= res!281415 (and (= (size!14792 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14791 _keys!1025) (size!14792 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470909 () Bool)

(declare-fun res!281413 () Bool)

(assert (=> b!470909 (=> (not res!281413) (not e!275954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30039 (_ BitVec 32)) Bool)

(assert (=> b!470909 (= res!281413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470910 () Bool)

(assert (=> b!470910 (= e!275958 (and e!275957 mapRes!21436))))

(declare-fun condMapEmpty!21436 () Bool)

(declare-fun mapDefault!21436 () ValueCell!6234)

(assert (=> b!470910 (= condMapEmpty!21436 (= (arr!14440 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6234)) mapDefault!21436)))))

(assert (= (and start!42216 res!281414) b!470908))

(assert (= (and b!470908 res!281415) b!470909))

(assert (= (and b!470909 res!281413) b!470906))

(assert (= (and b!470906 res!281416) b!470907))

(assert (= (and b!470910 condMapEmpty!21436) mapIsEmpty!21436))

(assert (= (and b!470910 (not condMapEmpty!21436)) mapNonEmpty!21436))

(get-info :version)

(assert (= (and mapNonEmpty!21436 ((_ is ValueCellFull!6234) mapValue!21436)) b!470904))

(assert (= (and b!470910 ((_ is ValueCellFull!6234) mapDefault!21436)) b!470905))

(assert (= start!42216 b!470910))

(declare-fun m!453127 () Bool)

(assert (=> start!42216 m!453127))

(declare-fun m!453129 () Bool)

(assert (=> start!42216 m!453129))

(declare-fun m!453131 () Bool)

(assert (=> start!42216 m!453131))

(declare-fun m!453133 () Bool)

(assert (=> b!470906 m!453133))

(declare-fun m!453135 () Bool)

(assert (=> mapNonEmpty!21436 m!453135))

(declare-fun m!453137 () Bool)

(assert (=> b!470909 m!453137))

(declare-fun m!453139 () Bool)

(assert (=> b!470907 m!453139))

(declare-fun m!453141 () Bool)

(assert (=> b!470907 m!453141))

(declare-fun m!453143 () Bool)

(assert (=> b!470907 m!453143))

(check-sat (not b_next!11727) (not b!470907) (not b!470909) tp_is_empty!13155 (not mapNonEmpty!21436) b_and!20175 (not b!470906) (not start!42216))
(check-sat b_and!20175 (not b_next!11727))
