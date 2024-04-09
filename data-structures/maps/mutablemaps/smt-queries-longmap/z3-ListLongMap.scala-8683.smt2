; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105534 () Bool)

(assert start!105534)

(declare-fun b_free!27135 () Bool)

(declare-fun b_next!27135 () Bool)

(assert (=> start!105534 (= b_free!27135 (not b_next!27135))))

(declare-fun tp!94922 () Bool)

(declare-fun b_and!45001 () Bool)

(assert (=> start!105534 (= tp!94922 b_and!45001)))

(declare-fun b!1256798 () Bool)

(declare-fun e!714587 () Bool)

(declare-fun e!714588 () Bool)

(declare-fun mapRes!49843 () Bool)

(assert (=> b!1256798 (= e!714587 (and e!714588 mapRes!49843))))

(declare-fun condMapEmpty!49843 () Bool)

(declare-datatypes ((V!48081 0))(
  ( (V!48082 (val!16081 Int)) )
))
(declare-datatypes ((ValueCell!15255 0))(
  ( (ValueCellFull!15255 (v!18782 V!48081)) (EmptyCell!15255) )
))
(declare-datatypes ((array!81709 0))(
  ( (array!81710 (arr!39408 (Array (_ BitVec 32) ValueCell!15255)) (size!39945 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81709)

(declare-fun mapDefault!49843 () ValueCell!15255)

(assert (=> b!1256798 (= condMapEmpty!49843 (= (arr!39408 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15255)) mapDefault!49843)))))

(declare-fun b!1256799 () Bool)

(declare-fun res!837899 () Bool)

(declare-fun e!714590 () Bool)

(assert (=> b!1256799 (=> (not res!837899) (not e!714590))))

(declare-datatypes ((array!81711 0))(
  ( (array!81712 (arr!39409 (Array (_ BitVec 32) (_ BitVec 64))) (size!39946 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81711)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81711 (_ BitVec 32)) Bool)

(assert (=> b!1256799 (= res!837899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256800 () Bool)

(declare-fun res!837901 () Bool)

(assert (=> b!1256800 (=> (not res!837901) (not e!714590))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256800 (= res!837901 (and (= (size!39945 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39946 _keys!1118) (size!39945 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256801 () Bool)

(declare-fun res!837898 () Bool)

(assert (=> b!1256801 (=> (not res!837898) (not e!714590))))

(declare-datatypes ((List!28163 0))(
  ( (Nil!28160) (Cons!28159 (h!29368 (_ BitVec 64)) (t!41659 List!28163)) )
))
(declare-fun arrayNoDuplicates!0 (array!81711 (_ BitVec 32) List!28163) Bool)

(assert (=> b!1256801 (= res!837898 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28160))))

(declare-fun mapNonEmpty!49843 () Bool)

(declare-fun tp!94923 () Bool)

(declare-fun e!714593 () Bool)

(assert (=> mapNonEmpty!49843 (= mapRes!49843 (and tp!94923 e!714593))))

(declare-fun mapValue!49843 () ValueCell!15255)

(declare-fun mapKey!49843 () (_ BitVec 32))

(declare-fun mapRest!49843 () (Array (_ BitVec 32) ValueCell!15255))

(assert (=> mapNonEmpty!49843 (= (arr!39408 _values!914) (store mapRest!49843 mapKey!49843 mapValue!49843))))

(declare-fun b!1256802 () Bool)

(declare-fun e!714592 () Bool)

(assert (=> b!1256802 (= e!714592 true)))

(declare-datatypes ((tuple2!20930 0))(
  ( (tuple2!20931 (_1!10475 (_ BitVec 64)) (_2!10475 V!48081)) )
))
(declare-datatypes ((List!28164 0))(
  ( (Nil!28161) (Cons!28160 (h!29369 tuple2!20930) (t!41660 List!28164)) )
))
(declare-datatypes ((ListLongMap!18815 0))(
  ( (ListLongMap!18816 (toList!9423 List!28164)) )
))
(declare-fun lt!568347 () ListLongMap!18815)

(declare-fun -!2099 (ListLongMap!18815 (_ BitVec 64)) ListLongMap!18815)

(assert (=> b!1256802 (= (-!2099 lt!568347 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568347)))

(declare-datatypes ((Unit!41818 0))(
  ( (Unit!41819) )
))
(declare-fun lt!568348 () Unit!41818)

(declare-fun removeNotPresentStillSame!132 (ListLongMap!18815 (_ BitVec 64)) Unit!41818)

(assert (=> b!1256802 (= lt!568348 (removeNotPresentStillSame!132 lt!568347 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!837903 () Bool)

(assert (=> start!105534 (=> (not res!837903) (not e!714590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105534 (= res!837903 (validMask!0 mask!1466))))

(assert (=> start!105534 e!714590))

(assert (=> start!105534 true))

(assert (=> start!105534 tp!94922))

(declare-fun tp_is_empty!32037 () Bool)

(assert (=> start!105534 tp_is_empty!32037))

(declare-fun array_inv!29967 (array!81711) Bool)

(assert (=> start!105534 (array_inv!29967 _keys!1118)))

(declare-fun array_inv!29968 (array!81709) Bool)

(assert (=> start!105534 (and (array_inv!29968 _values!914) e!714587)))

(declare-fun mapIsEmpty!49843 () Bool)

(assert (=> mapIsEmpty!49843 mapRes!49843))

(declare-fun b!1256803 () Bool)

(declare-fun e!714591 () Bool)

(assert (=> b!1256803 (= e!714590 (not e!714591))))

(declare-fun res!837902 () Bool)

(assert (=> b!1256803 (=> res!837902 e!714591)))

(assert (=> b!1256803 (= res!837902 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568344 () ListLongMap!18815)

(declare-fun lt!568346 () ListLongMap!18815)

(assert (=> b!1256803 (= lt!568344 lt!568346)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48081)

(declare-fun zeroValue!871 () V!48081)

(declare-fun minValueBefore!43 () V!48081)

(declare-fun lt!568345 () Unit!41818)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1095 (array!81711 array!81709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48081 V!48081 V!48081 V!48081 (_ BitVec 32) Int) Unit!41818)

(assert (=> b!1256803 (= lt!568345 (lemmaNoChangeToArrayThenSameMapNoExtras!1095 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5777 (array!81711 array!81709 (_ BitVec 32) (_ BitVec 32) V!48081 V!48081 (_ BitVec 32) Int) ListLongMap!18815)

(assert (=> b!1256803 (= lt!568346 (getCurrentListMapNoExtraKeys!5777 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256803 (= lt!568344 (getCurrentListMapNoExtraKeys!5777 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256804 () Bool)

(assert (=> b!1256804 (= e!714593 tp_is_empty!32037)))

(declare-fun b!1256805 () Bool)

(assert (=> b!1256805 (= e!714588 tp_is_empty!32037)))

(declare-fun b!1256806 () Bool)

(assert (=> b!1256806 (= e!714591 e!714592)))

(declare-fun res!837900 () Bool)

(assert (=> b!1256806 (=> res!837900 e!714592)))

(declare-fun contains!7578 (ListLongMap!18815 (_ BitVec 64)) Bool)

(assert (=> b!1256806 (= res!837900 (contains!7578 lt!568347 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4582 (array!81711 array!81709 (_ BitVec 32) (_ BitVec 32) V!48081 V!48081 (_ BitVec 32) Int) ListLongMap!18815)

(assert (=> b!1256806 (= lt!568347 (getCurrentListMap!4582 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105534 res!837903) b!1256800))

(assert (= (and b!1256800 res!837901) b!1256799))

(assert (= (and b!1256799 res!837899) b!1256801))

(assert (= (and b!1256801 res!837898) b!1256803))

(assert (= (and b!1256803 (not res!837902)) b!1256806))

(assert (= (and b!1256806 (not res!837900)) b!1256802))

(assert (= (and b!1256798 condMapEmpty!49843) mapIsEmpty!49843))

(assert (= (and b!1256798 (not condMapEmpty!49843)) mapNonEmpty!49843))

(get-info :version)

(assert (= (and mapNonEmpty!49843 ((_ is ValueCellFull!15255) mapValue!49843)) b!1256804))

(assert (= (and b!1256798 ((_ is ValueCellFull!15255) mapDefault!49843)) b!1256805))

(assert (= start!105534 b!1256798))

(declare-fun m!1157473 () Bool)

(assert (=> b!1256799 m!1157473))

(declare-fun m!1157475 () Bool)

(assert (=> mapNonEmpty!49843 m!1157475))

(declare-fun m!1157477 () Bool)

(assert (=> b!1256802 m!1157477))

(declare-fun m!1157479 () Bool)

(assert (=> b!1256802 m!1157479))

(declare-fun m!1157481 () Bool)

(assert (=> b!1256801 m!1157481))

(declare-fun m!1157483 () Bool)

(assert (=> b!1256806 m!1157483))

(declare-fun m!1157485 () Bool)

(assert (=> b!1256806 m!1157485))

(declare-fun m!1157487 () Bool)

(assert (=> start!105534 m!1157487))

(declare-fun m!1157489 () Bool)

(assert (=> start!105534 m!1157489))

(declare-fun m!1157491 () Bool)

(assert (=> start!105534 m!1157491))

(declare-fun m!1157493 () Bool)

(assert (=> b!1256803 m!1157493))

(declare-fun m!1157495 () Bool)

(assert (=> b!1256803 m!1157495))

(declare-fun m!1157497 () Bool)

(assert (=> b!1256803 m!1157497))

(check-sat (not start!105534) (not b!1256806) b_and!45001 (not b!1256799) (not mapNonEmpty!49843) (not b!1256803) (not b!1256802) tp_is_empty!32037 (not b!1256801) (not b_next!27135))
(check-sat b_and!45001 (not b_next!27135))
