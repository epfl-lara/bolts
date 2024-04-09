; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42198 () Bool)

(assert start!42198)

(declare-fun b_free!11709 () Bool)

(declare-fun b_next!11709 () Bool)

(assert (=> start!42198 (= b_free!11709 (not b_next!11709))))

(declare-fun tp!41151 () Bool)

(declare-fun b_and!20157 () Bool)

(assert (=> start!42198 (= tp!41151 b_and!20157)))

(declare-fun b!470715 () Bool)

(declare-fun e!275822 () Bool)

(declare-fun tp_is_empty!13137 () Bool)

(assert (=> b!470715 (= e!275822 tp_is_empty!13137)))

(declare-fun b!470716 () Bool)

(declare-fun e!275823 () Bool)

(declare-fun e!275820 () Bool)

(declare-fun mapRes!21409 () Bool)

(assert (=> b!470716 (= e!275823 (and e!275820 mapRes!21409))))

(declare-fun condMapEmpty!21409 () Bool)

(declare-datatypes ((V!18621 0))(
  ( (V!18622 (val!6613 Int)) )
))
(declare-datatypes ((ValueCell!6225 0))(
  ( (ValueCellFull!6225 (v!8900 V!18621)) (EmptyCell!6225) )
))
(declare-datatypes ((array!30003 0))(
  ( (array!30004 (arr!14421 (Array (_ BitVec 32) ValueCell!6225)) (size!14773 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30003)

(declare-fun mapDefault!21409 () ValueCell!6225)

(assert (=> b!470716 (= condMapEmpty!21409 (= (arr!14421 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6225)) mapDefault!21409)))))

(declare-fun mapNonEmpty!21409 () Bool)

(declare-fun tp!41152 () Bool)

(assert (=> mapNonEmpty!21409 (= mapRes!21409 (and tp!41152 e!275822))))

(declare-fun mapRest!21409 () (Array (_ BitVec 32) ValueCell!6225))

(declare-fun mapValue!21409 () ValueCell!6225)

(declare-fun mapKey!21409 () (_ BitVec 32))

(assert (=> mapNonEmpty!21409 (= (arr!14421 _values!833) (store mapRest!21409 mapKey!21409 mapValue!21409))))

(declare-fun b!470717 () Bool)

(declare-fun e!275819 () Bool)

(assert (=> b!470717 (= e!275819 (not true))))

(declare-datatypes ((tuple2!8678 0))(
  ( (tuple2!8679 (_1!4349 (_ BitVec 64)) (_2!4349 V!18621)) )
))
(declare-datatypes ((List!8800 0))(
  ( (Nil!8797) (Cons!8796 (h!9652 tuple2!8678) (t!14772 List!8800)) )
))
(declare-datatypes ((ListLongMap!7605 0))(
  ( (ListLongMap!7606 (toList!3818 List!8800)) )
))
(declare-fun lt!213621 () ListLongMap!7605)

(declare-fun lt!213622 () ListLongMap!7605)

(assert (=> b!470717 (= lt!213621 lt!213622)))

(declare-fun minValueBefore!38 () V!18621)

(declare-fun zeroValue!794 () V!18621)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13762 0))(
  ( (Unit!13763) )
))
(declare-fun lt!213623 () Unit!13762)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30005 0))(
  ( (array!30006 (arr!14422 (Array (_ BitVec 32) (_ BitVec 64))) (size!14774 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30005)

(declare-fun minValueAfter!38 () V!18621)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!175 (array!30005 array!30003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18621 V!18621 V!18621 V!18621 (_ BitVec 32) Int) Unit!13762)

(assert (=> b!470717 (= lt!213623 (lemmaNoChangeToArrayThenSameMapNoExtras!175 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1980 (array!30005 array!30003 (_ BitVec 32) (_ BitVec 32) V!18621 V!18621 (_ BitVec 32) Int) ListLongMap!7605)

(assert (=> b!470717 (= lt!213622 (getCurrentListMapNoExtraKeys!1980 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470717 (= lt!213621 (getCurrentListMapNoExtraKeys!1980 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21409 () Bool)

(assert (=> mapIsEmpty!21409 mapRes!21409))

(declare-fun b!470719 () Bool)

(assert (=> b!470719 (= e!275820 tp_is_empty!13137)))

(declare-fun b!470720 () Bool)

(declare-fun res!281307 () Bool)

(assert (=> b!470720 (=> (not res!281307) (not e!275819))))

(declare-datatypes ((List!8801 0))(
  ( (Nil!8798) (Cons!8797 (h!9653 (_ BitVec 64)) (t!14773 List!8801)) )
))
(declare-fun arrayNoDuplicates!0 (array!30005 (_ BitVec 32) List!8801) Bool)

(assert (=> b!470720 (= res!281307 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8798))))

(declare-fun b!470721 () Bool)

(declare-fun res!281306 () Bool)

(assert (=> b!470721 (=> (not res!281306) (not e!275819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30005 (_ BitVec 32)) Bool)

(assert (=> b!470721 (= res!281306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!281305 () Bool)

(assert (=> start!42198 (=> (not res!281305) (not e!275819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42198 (= res!281305 (validMask!0 mask!1365))))

(assert (=> start!42198 e!275819))

(assert (=> start!42198 tp_is_empty!13137))

(assert (=> start!42198 tp!41151))

(assert (=> start!42198 true))

(declare-fun array_inv!10408 (array!30005) Bool)

(assert (=> start!42198 (array_inv!10408 _keys!1025)))

(declare-fun array_inv!10409 (array!30003) Bool)

(assert (=> start!42198 (and (array_inv!10409 _values!833) e!275823)))

(declare-fun b!470718 () Bool)

(declare-fun res!281308 () Bool)

(assert (=> b!470718 (=> (not res!281308) (not e!275819))))

(assert (=> b!470718 (= res!281308 (and (= (size!14773 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14774 _keys!1025) (size!14773 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42198 res!281305) b!470718))

(assert (= (and b!470718 res!281308) b!470721))

(assert (= (and b!470721 res!281306) b!470720))

(assert (= (and b!470720 res!281307) b!470717))

(assert (= (and b!470716 condMapEmpty!21409) mapIsEmpty!21409))

(assert (= (and b!470716 (not condMapEmpty!21409)) mapNonEmpty!21409))

(get-info :version)

(assert (= (and mapNonEmpty!21409 ((_ is ValueCellFull!6225) mapValue!21409)) b!470715))

(assert (= (and b!470716 ((_ is ValueCellFull!6225) mapDefault!21409)) b!470719))

(assert (= start!42198 b!470716))

(declare-fun m!452965 () Bool)

(assert (=> mapNonEmpty!21409 m!452965))

(declare-fun m!452967 () Bool)

(assert (=> start!42198 m!452967))

(declare-fun m!452969 () Bool)

(assert (=> start!42198 m!452969))

(declare-fun m!452971 () Bool)

(assert (=> start!42198 m!452971))

(declare-fun m!452973 () Bool)

(assert (=> b!470720 m!452973))

(declare-fun m!452975 () Bool)

(assert (=> b!470721 m!452975))

(declare-fun m!452977 () Bool)

(assert (=> b!470717 m!452977))

(declare-fun m!452979 () Bool)

(assert (=> b!470717 m!452979))

(declare-fun m!452981 () Bool)

(assert (=> b!470717 m!452981))

(check-sat (not b!470721) tp_is_empty!13137 (not start!42198) (not b!470717) (not mapNonEmpty!21409) (not b_next!11709) (not b!470720) b_and!20157)
(check-sat b_and!20157 (not b_next!11709))
