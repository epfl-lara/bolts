; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42096 () Bool)

(assert start!42096)

(declare-fun b_free!11641 () Bool)

(declare-fun b_next!11641 () Bool)

(assert (=> start!42096 (= b_free!11641 (not b_next!11641))))

(declare-fun tp!40941 () Bool)

(declare-fun b_and!20069 () Bool)

(assert (=> start!42096 (= tp!40941 b_and!20069)))

(declare-fun res!280784 () Bool)

(declare-fun e!275139 () Bool)

(assert (=> start!42096 (=> (not res!280784) (not e!275139))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42096 (= res!280784 (validMask!0 mask!1365))))

(assert (=> start!42096 e!275139))

(declare-fun tp_is_empty!13069 () Bool)

(assert (=> start!42096 tp_is_empty!13069))

(assert (=> start!42096 tp!40941))

(assert (=> start!42096 true))

(declare-datatypes ((array!29871 0))(
  ( (array!29872 (arr!14357 (Array (_ BitVec 32) (_ BitVec 64))) (size!14709 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29871)

(declare-fun array_inv!10354 (array!29871) Bool)

(assert (=> start!42096 (array_inv!10354 _keys!1025)))

(declare-datatypes ((V!18531 0))(
  ( (V!18532 (val!6579 Int)) )
))
(declare-datatypes ((ValueCell!6191 0))(
  ( (ValueCellFull!6191 (v!8865 V!18531)) (EmptyCell!6191) )
))
(declare-datatypes ((array!29873 0))(
  ( (array!29874 (arr!14358 (Array (_ BitVec 32) ValueCell!6191)) (size!14710 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29873)

(declare-fun e!275136 () Bool)

(declare-fun array_inv!10355 (array!29873) Bool)

(assert (=> start!42096 (and (array_inv!10355 _values!833) e!275136)))

(declare-fun mapNonEmpty!21301 () Bool)

(declare-fun mapRes!21301 () Bool)

(declare-fun tp!40942 () Bool)

(declare-fun e!275137 () Bool)

(assert (=> mapNonEmpty!21301 (= mapRes!21301 (and tp!40942 e!275137))))

(declare-fun mapRest!21301 () (Array (_ BitVec 32) ValueCell!6191))

(declare-fun mapValue!21301 () ValueCell!6191)

(declare-fun mapKey!21301 () (_ BitVec 32))

(assert (=> mapNonEmpty!21301 (= (arr!14358 _values!833) (store mapRest!21301 mapKey!21301 mapValue!21301))))

(declare-fun b!469730 () Bool)

(declare-fun res!280783 () Bool)

(assert (=> b!469730 (=> (not res!280783) (not e!275139))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!469730 (= res!280783 (and (= (size!14710 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14709 _keys!1025) (size!14710 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469731 () Bool)

(declare-fun e!275135 () Bool)

(assert (=> b!469731 (= e!275135 tp_is_empty!13069)))

(declare-fun b!469732 () Bool)

(assert (=> b!469732 (= e!275137 tp_is_empty!13069)))

(declare-fun b!469733 () Bool)

(declare-fun e!275140 () Bool)

(assert (=> b!469733 (= e!275139 (not e!275140))))

(declare-fun res!280782 () Bool)

(assert (=> b!469733 (=> res!280782 e!275140)))

(assert (=> b!469733 (= res!280782 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8636 0))(
  ( (tuple2!8637 (_1!4328 (_ BitVec 64)) (_2!4328 V!18531)) )
))
(declare-datatypes ((List!8755 0))(
  ( (Nil!8752) (Cons!8751 (h!9607 tuple2!8636) (t!14723 List!8755)) )
))
(declare-datatypes ((ListLongMap!7563 0))(
  ( (ListLongMap!7564 (toList!3797 List!8755)) )
))
(declare-fun lt!213100 () ListLongMap!7563)

(declare-fun lt!213098 () ListLongMap!7563)

(assert (=> b!469733 (= lt!213100 lt!213098)))

(declare-fun minValueBefore!38 () V!18531)

(declare-fun zeroValue!794 () V!18531)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13718 0))(
  ( (Unit!13719) )
))
(declare-fun lt!213102 () Unit!13718)

(declare-fun minValueAfter!38 () V!18531)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!154 (array!29871 array!29873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18531 V!18531 V!18531 V!18531 (_ BitVec 32) Int) Unit!13718)

(assert (=> b!469733 (= lt!213102 (lemmaNoChangeToArrayThenSameMapNoExtras!154 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1959 (array!29871 array!29873 (_ BitVec 32) (_ BitVec 32) V!18531 V!18531 (_ BitVec 32) Int) ListLongMap!7563)

(assert (=> b!469733 (= lt!213098 (getCurrentListMapNoExtraKeys!1959 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469733 (= lt!213100 (getCurrentListMapNoExtraKeys!1959 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21301 () Bool)

(assert (=> mapIsEmpty!21301 mapRes!21301))

(declare-fun b!469734 () Bool)

(declare-fun res!280785 () Bool)

(assert (=> b!469734 (=> (not res!280785) (not e!275139))))

(declare-datatypes ((List!8756 0))(
  ( (Nil!8753) (Cons!8752 (h!9608 (_ BitVec 64)) (t!14724 List!8756)) )
))
(declare-fun arrayNoDuplicates!0 (array!29871 (_ BitVec 32) List!8756) Bool)

(assert (=> b!469734 (= res!280785 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8753))))

(declare-fun b!469735 () Bool)

(declare-fun res!280786 () Bool)

(assert (=> b!469735 (=> (not res!280786) (not e!275139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29871 (_ BitVec 32)) Bool)

(assert (=> b!469735 (= res!280786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469736 () Bool)

(assert (=> b!469736 (= e!275136 (and e!275135 mapRes!21301))))

(declare-fun condMapEmpty!21301 () Bool)

(declare-fun mapDefault!21301 () ValueCell!6191)

