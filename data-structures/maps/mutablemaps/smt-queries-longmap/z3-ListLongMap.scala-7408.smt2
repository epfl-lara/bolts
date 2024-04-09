; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94278 () Bool)

(assert start!94278)

(declare-fun b_free!21627 () Bool)

(declare-fun b_next!21627 () Bool)

(assert (=> start!94278 (= b_free!21627 (not b_next!21627))))

(declare-fun tp!76320 () Bool)

(declare-fun b_and!34405 () Bool)

(assert (=> start!94278 (= tp!76320 b_and!34405)))

(declare-fun b!1065727 () Bool)

(declare-fun e!607656 () Bool)

(declare-fun e!607653 () Bool)

(assert (=> b!1065727 (= e!607656 (not e!607653))))

(declare-fun res!711457 () Bool)

(assert (=> b!1065727 (=> res!711457 e!607653)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065727 (= res!711457 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39051 0))(
  ( (V!39052 (val!12769 Int)) )
))
(declare-datatypes ((tuple2!16272 0))(
  ( (tuple2!16273 (_1!8146 (_ BitVec 64)) (_2!8146 V!39051)) )
))
(declare-datatypes ((List!22870 0))(
  ( (Nil!22867) (Cons!22866 (h!24075 tuple2!16272) (t!32196 List!22870)) )
))
(declare-datatypes ((ListLongMap!14253 0))(
  ( (ListLongMap!14254 (toList!7142 List!22870)) )
))
(declare-fun lt!470167 () ListLongMap!14253)

(declare-fun lt!470168 () ListLongMap!14253)

(assert (=> b!1065727 (= lt!470167 lt!470168)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39051)

(declare-datatypes ((Unit!34946 0))(
  ( (Unit!34947) )
))
(declare-fun lt!470166 () Unit!34946)

(declare-datatypes ((ValueCell!12015 0))(
  ( (ValueCellFull!12015 (v!15382 V!39051)) (EmptyCell!12015) )
))
(declare-datatypes ((array!67832 0))(
  ( (array!67833 (arr!32615 (Array (_ BitVec 32) ValueCell!12015)) (size!33152 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67832)

(declare-fun minValue!907 () V!39051)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39051)

(declare-datatypes ((array!67834 0))(
  ( (array!67835 (arr!32616 (Array (_ BitVec 32) (_ BitVec 64))) (size!33153 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67834)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!729 (array!67834 array!67832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39051 V!39051 V!39051 V!39051 (_ BitVec 32) Int) Unit!34946)

(assert (=> b!1065727 (= lt!470166 (lemmaNoChangeToArrayThenSameMapNoExtras!729 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3690 (array!67834 array!67832 (_ BitVec 32) (_ BitVec 32) V!39051 V!39051 (_ BitVec 32) Int) ListLongMap!14253)

(assert (=> b!1065727 (= lt!470168 (getCurrentListMapNoExtraKeys!3690 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065727 (= lt!470167 (getCurrentListMapNoExtraKeys!3690 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065728 () Bool)

(declare-fun e!607654 () Bool)

(declare-fun tp_is_empty!25437 () Bool)

(assert (=> b!1065728 (= e!607654 tp_is_empty!25437)))

(declare-fun b!1065729 () Bool)

(assert (=> b!1065729 (= e!607653 true)))

(declare-fun lt!470169 () ListLongMap!14253)

(declare-fun lt!470165 () ListLongMap!14253)

(declare-fun -!605 (ListLongMap!14253 (_ BitVec 64)) ListLongMap!14253)

(assert (=> b!1065729 (= lt!470169 (-!605 lt!470165 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470163 () ListLongMap!14253)

(assert (=> b!1065729 (= (-!605 lt!470163 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470167)))

(declare-fun lt!470164 () Unit!34946)

(declare-fun addThenRemoveForNewKeyIsSame!14 (ListLongMap!14253 (_ BitVec 64) V!39051) Unit!34946)

(assert (=> b!1065729 (= lt!470164 (addThenRemoveForNewKeyIsSame!14 lt!470167 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470170 () ListLongMap!14253)

(assert (=> b!1065729 (and (= lt!470165 lt!470163) (= lt!470170 lt!470168))))

(declare-fun +!3096 (ListLongMap!14253 tuple2!16272) ListLongMap!14253)

(assert (=> b!1065729 (= lt!470163 (+!3096 lt!470167 (tuple2!16273 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4059 (array!67834 array!67832 (_ BitVec 32) (_ BitVec 32) V!39051 V!39051 (_ BitVec 32) Int) ListLongMap!14253)

(assert (=> b!1065729 (= lt!470170 (getCurrentListMap!4059 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065729 (= lt!470165 (getCurrentListMap!4059 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065730 () Bool)

(declare-fun e!607657 () Bool)

(declare-fun e!607655 () Bool)

(declare-fun mapRes!39841 () Bool)

(assert (=> b!1065730 (= e!607657 (and e!607655 mapRes!39841))))

(declare-fun condMapEmpty!39841 () Bool)

(declare-fun mapDefault!39841 () ValueCell!12015)

(assert (=> b!1065730 (= condMapEmpty!39841 (= (arr!32615 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12015)) mapDefault!39841)))))

(declare-fun b!1065731 () Bool)

(declare-fun res!711455 () Bool)

(assert (=> b!1065731 (=> (not res!711455) (not e!607656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67834 (_ BitVec 32)) Bool)

(assert (=> b!1065731 (= res!711455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065732 () Bool)

(declare-fun res!711454 () Bool)

(assert (=> b!1065732 (=> (not res!711454) (not e!607656))))

(declare-datatypes ((List!22871 0))(
  ( (Nil!22868) (Cons!22867 (h!24076 (_ BitVec 64)) (t!32197 List!22871)) )
))
(declare-fun arrayNoDuplicates!0 (array!67834 (_ BitVec 32) List!22871) Bool)

(assert (=> b!1065732 (= res!711454 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22868))))

(declare-fun b!1065733 () Bool)

(declare-fun res!711458 () Bool)

(assert (=> b!1065733 (=> (not res!711458) (not e!607656))))

(assert (=> b!1065733 (= res!711458 (and (= (size!33152 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33153 _keys!1163) (size!33152 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39841 () Bool)

(declare-fun tp!76319 () Bool)

(assert (=> mapNonEmpty!39841 (= mapRes!39841 (and tp!76319 e!607654))))

(declare-fun mapKey!39841 () (_ BitVec 32))

(declare-fun mapRest!39841 () (Array (_ BitVec 32) ValueCell!12015))

(declare-fun mapValue!39841 () ValueCell!12015)

(assert (=> mapNonEmpty!39841 (= (arr!32615 _values!955) (store mapRest!39841 mapKey!39841 mapValue!39841))))

(declare-fun res!711456 () Bool)

(assert (=> start!94278 (=> (not res!711456) (not e!607656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94278 (= res!711456 (validMask!0 mask!1515))))

(assert (=> start!94278 e!607656))

(assert (=> start!94278 true))

(assert (=> start!94278 tp_is_empty!25437))

(declare-fun array_inv!25094 (array!67832) Bool)

(assert (=> start!94278 (and (array_inv!25094 _values!955) e!607657)))

(assert (=> start!94278 tp!76320))

(declare-fun array_inv!25095 (array!67834) Bool)

(assert (=> start!94278 (array_inv!25095 _keys!1163)))

(declare-fun mapIsEmpty!39841 () Bool)

(assert (=> mapIsEmpty!39841 mapRes!39841))

(declare-fun b!1065734 () Bool)

(assert (=> b!1065734 (= e!607655 tp_is_empty!25437)))

(assert (= (and start!94278 res!711456) b!1065733))

(assert (= (and b!1065733 res!711458) b!1065731))

(assert (= (and b!1065731 res!711455) b!1065732))

(assert (= (and b!1065732 res!711454) b!1065727))

(assert (= (and b!1065727 (not res!711457)) b!1065729))

(assert (= (and b!1065730 condMapEmpty!39841) mapIsEmpty!39841))

(assert (= (and b!1065730 (not condMapEmpty!39841)) mapNonEmpty!39841))

(get-info :version)

(assert (= (and mapNonEmpty!39841 ((_ is ValueCellFull!12015) mapValue!39841)) b!1065728))

(assert (= (and b!1065730 ((_ is ValueCellFull!12015) mapDefault!39841)) b!1065734))

(assert (= start!94278 b!1065730))

(declare-fun m!984405 () Bool)

(assert (=> b!1065731 m!984405))

(declare-fun m!984407 () Bool)

(assert (=> b!1065732 m!984407))

(declare-fun m!984409 () Bool)

(assert (=> start!94278 m!984409))

(declare-fun m!984411 () Bool)

(assert (=> start!94278 m!984411))

(declare-fun m!984413 () Bool)

(assert (=> start!94278 m!984413))

(declare-fun m!984415 () Bool)

(assert (=> mapNonEmpty!39841 m!984415))

(declare-fun m!984417 () Bool)

(assert (=> b!1065729 m!984417))

(declare-fun m!984419 () Bool)

(assert (=> b!1065729 m!984419))

(declare-fun m!984421 () Bool)

(assert (=> b!1065729 m!984421))

(declare-fun m!984423 () Bool)

(assert (=> b!1065729 m!984423))

(declare-fun m!984425 () Bool)

(assert (=> b!1065729 m!984425))

(declare-fun m!984427 () Bool)

(assert (=> b!1065729 m!984427))

(declare-fun m!984429 () Bool)

(assert (=> b!1065727 m!984429))

(declare-fun m!984431 () Bool)

(assert (=> b!1065727 m!984431))

(declare-fun m!984433 () Bool)

(assert (=> b!1065727 m!984433))

(check-sat (not b!1065732) b_and!34405 (not mapNonEmpty!39841) (not b_next!21627) (not b!1065727) (not start!94278) (not b!1065731) tp_is_empty!25437 (not b!1065729))
(check-sat b_and!34405 (not b_next!21627))
