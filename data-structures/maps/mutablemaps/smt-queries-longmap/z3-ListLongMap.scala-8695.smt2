; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105628 () Bool)

(assert start!105628)

(declare-fun b_free!27207 () Bool)

(declare-fun b_next!27207 () Bool)

(assert (=> start!105628 (= b_free!27207 (not b_next!27207))))

(declare-fun tp!95142 () Bool)

(declare-fun b_and!45083 () Bool)

(assert (=> start!105628 (= tp!95142 b_and!45083)))

(declare-fun b!1257791 () Bool)

(declare-fun res!838472 () Bool)

(declare-fun e!715307 () Bool)

(assert (=> b!1257791 (=> (not res!838472) (not e!715307))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81845 0))(
  ( (array!81846 (arr!39475 (Array (_ BitVec 32) (_ BitVec 64))) (size!40012 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81845)

(declare-datatypes ((V!48177 0))(
  ( (V!48178 (val!16117 Int)) )
))
(declare-datatypes ((ValueCell!15291 0))(
  ( (ValueCellFull!15291 (v!18819 V!48177)) (EmptyCell!15291) )
))
(declare-datatypes ((array!81847 0))(
  ( (array!81848 (arr!39476 (Array (_ BitVec 32) ValueCell!15291)) (size!40013 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81847)

(assert (=> b!1257791 (= res!838472 (and (= (size!40013 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40012 _keys!1118) (size!40013 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257792 () Bool)

(declare-fun e!715311 () Bool)

(declare-fun tp_is_empty!32109 () Bool)

(assert (=> b!1257792 (= e!715311 tp_is_empty!32109)))

(declare-fun mapNonEmpty!49954 () Bool)

(declare-fun mapRes!49954 () Bool)

(declare-fun tp!95141 () Bool)

(declare-fun e!715309 () Bool)

(assert (=> mapNonEmpty!49954 (= mapRes!49954 (and tp!95141 e!715309))))

(declare-fun mapValue!49954 () ValueCell!15291)

(declare-fun mapKey!49954 () (_ BitVec 32))

(declare-fun mapRest!49954 () (Array (_ BitVec 32) ValueCell!15291))

(assert (=> mapNonEmpty!49954 (= (arr!39476 _values!914) (store mapRest!49954 mapKey!49954 mapValue!49954))))

(declare-fun b!1257793 () Bool)

(assert (=> b!1257793 (= e!715309 tp_is_empty!32109)))

(declare-fun res!838473 () Bool)

(assert (=> start!105628 (=> (not res!838473) (not e!715307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105628 (= res!838473 (validMask!0 mask!1466))))

(assert (=> start!105628 e!715307))

(assert (=> start!105628 true))

(assert (=> start!105628 tp!95142))

(assert (=> start!105628 tp_is_empty!32109))

(declare-fun array_inv!30017 (array!81845) Bool)

(assert (=> start!105628 (array_inv!30017 _keys!1118)))

(declare-fun e!715310 () Bool)

(declare-fun array_inv!30018 (array!81847) Bool)

(assert (=> start!105628 (and (array_inv!30018 _values!914) e!715310)))

(declare-fun b!1257794 () Bool)

(declare-fun res!838474 () Bool)

(assert (=> b!1257794 (=> (not res!838474) (not e!715307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81845 (_ BitVec 32)) Bool)

(assert (=> b!1257794 (= res!838474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257795 () Bool)

(declare-fun res!838471 () Bool)

(assert (=> b!1257795 (=> (not res!838471) (not e!715307))))

(declare-datatypes ((List!28215 0))(
  ( (Nil!28212) (Cons!28211 (h!29420 (_ BitVec 64)) (t!41713 List!28215)) )
))
(declare-fun arrayNoDuplicates!0 (array!81845 (_ BitVec 32) List!28215) Bool)

(assert (=> b!1257795 (= res!838471 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28212))))

(declare-fun b!1257796 () Bool)

(assert (=> b!1257796 (= e!715310 (and e!715311 mapRes!49954))))

(declare-fun condMapEmpty!49954 () Bool)

(declare-fun mapDefault!49954 () ValueCell!15291)

(assert (=> b!1257796 (= condMapEmpty!49954 (= (arr!39476 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15291)) mapDefault!49954)))))

(declare-fun mapIsEmpty!49954 () Bool)

(assert (=> mapIsEmpty!49954 mapRes!49954))

(declare-fun b!1257797 () Bool)

(assert (=> b!1257797 (= e!715307 (not true))))

(declare-datatypes ((tuple2!20984 0))(
  ( (tuple2!20985 (_1!10502 (_ BitVec 64)) (_2!10502 V!48177)) )
))
(declare-datatypes ((List!28216 0))(
  ( (Nil!28213) (Cons!28212 (h!29421 tuple2!20984) (t!41714 List!28216)) )
))
(declare-datatypes ((ListLongMap!18869 0))(
  ( (ListLongMap!18870 (toList!9450 List!28216)) )
))
(declare-fun lt!568873 () ListLongMap!18869)

(declare-fun lt!568872 () ListLongMap!18869)

(assert (=> b!1257797 (= lt!568873 lt!568872)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41874 0))(
  ( (Unit!41875) )
))
(declare-fun lt!568874 () Unit!41874)

(declare-fun minValueAfter!43 () V!48177)

(declare-fun zeroValue!871 () V!48177)

(declare-fun minValueBefore!43 () V!48177)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1120 (array!81845 array!81847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48177 V!48177 V!48177 V!48177 (_ BitVec 32) Int) Unit!41874)

(assert (=> b!1257797 (= lt!568874 (lemmaNoChangeToArrayThenSameMapNoExtras!1120 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5802 (array!81845 array!81847 (_ BitVec 32) (_ BitVec 32) V!48177 V!48177 (_ BitVec 32) Int) ListLongMap!18869)

(assert (=> b!1257797 (= lt!568872 (getCurrentListMapNoExtraKeys!5802 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257797 (= lt!568873 (getCurrentListMapNoExtraKeys!5802 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105628 res!838473) b!1257791))

(assert (= (and b!1257791 res!838472) b!1257794))

(assert (= (and b!1257794 res!838474) b!1257795))

(assert (= (and b!1257795 res!838471) b!1257797))

(assert (= (and b!1257796 condMapEmpty!49954) mapIsEmpty!49954))

(assert (= (and b!1257796 (not condMapEmpty!49954)) mapNonEmpty!49954))

(get-info :version)

(assert (= (and mapNonEmpty!49954 ((_ is ValueCellFull!15291) mapValue!49954)) b!1257793))

(assert (= (and b!1257796 ((_ is ValueCellFull!15291) mapDefault!49954)) b!1257792))

(assert (= start!105628 b!1257796))

(declare-fun m!1158359 () Bool)

(assert (=> b!1257794 m!1158359))

(declare-fun m!1158361 () Bool)

(assert (=> start!105628 m!1158361))

(declare-fun m!1158363 () Bool)

(assert (=> start!105628 m!1158363))

(declare-fun m!1158365 () Bool)

(assert (=> start!105628 m!1158365))

(declare-fun m!1158367 () Bool)

(assert (=> b!1257797 m!1158367))

(declare-fun m!1158369 () Bool)

(assert (=> b!1257797 m!1158369))

(declare-fun m!1158371 () Bool)

(assert (=> b!1257797 m!1158371))

(declare-fun m!1158373 () Bool)

(assert (=> mapNonEmpty!49954 m!1158373))

(declare-fun m!1158375 () Bool)

(assert (=> b!1257795 m!1158375))

(check-sat (not b!1257797) (not mapNonEmpty!49954) (not b!1257795) (not b!1257794) b_and!45083 tp_is_empty!32109 (not start!105628) (not b_next!27207))
(check-sat b_and!45083 (not b_next!27207))
