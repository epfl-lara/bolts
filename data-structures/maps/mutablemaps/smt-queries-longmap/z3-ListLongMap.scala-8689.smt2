; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105592 () Bool)

(assert start!105592)

(declare-fun b_free!27171 () Bool)

(declare-fun b_next!27171 () Bool)

(assert (=> start!105592 (= b_free!27171 (not b_next!27171))))

(declare-fun tp!95034 () Bool)

(declare-fun b_and!45047 () Bool)

(assert (=> start!105592 (= tp!95034 b_and!45047)))

(declare-fun res!838255 () Bool)

(declare-fun e!715039 () Bool)

(assert (=> start!105592 (=> (not res!838255) (not e!715039))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105592 (= res!838255 (validMask!0 mask!1466))))

(assert (=> start!105592 e!715039))

(assert (=> start!105592 true))

(assert (=> start!105592 tp!95034))

(declare-fun tp_is_empty!32073 () Bool)

(assert (=> start!105592 tp_is_empty!32073))

(declare-datatypes ((array!81781 0))(
  ( (array!81782 (arr!39443 (Array (_ BitVec 32) (_ BitVec 64))) (size!39980 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81781)

(declare-fun array_inv!29993 (array!81781) Bool)

(assert (=> start!105592 (array_inv!29993 _keys!1118)))

(declare-datatypes ((V!48129 0))(
  ( (V!48130 (val!16099 Int)) )
))
(declare-datatypes ((ValueCell!15273 0))(
  ( (ValueCellFull!15273 (v!18801 V!48129)) (EmptyCell!15273) )
))
(declare-datatypes ((array!81783 0))(
  ( (array!81784 (arr!39444 (Array (_ BitVec 32) ValueCell!15273)) (size!39981 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81783)

(declare-fun e!715040 () Bool)

(declare-fun array_inv!29994 (array!81783) Bool)

(assert (=> start!105592 (and (array_inv!29994 _values!914) e!715040)))

(declare-fun b!1257413 () Bool)

(declare-fun e!715037 () Bool)

(assert (=> b!1257413 (= e!715037 tp_is_empty!32073)))

(declare-fun b!1257414 () Bool)

(declare-fun res!838258 () Bool)

(assert (=> b!1257414 (=> (not res!838258) (not e!715039))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257414 (= res!838258 (and (= (size!39981 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39980 _keys!1118) (size!39981 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257415 () Bool)

(declare-fun res!838257 () Bool)

(assert (=> b!1257415 (=> (not res!838257) (not e!715039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81781 (_ BitVec 32)) Bool)

(assert (=> b!1257415 (= res!838257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257416 () Bool)

(declare-fun e!715038 () Bool)

(declare-fun mapRes!49900 () Bool)

(assert (=> b!1257416 (= e!715040 (and e!715038 mapRes!49900))))

(declare-fun condMapEmpty!49900 () Bool)

(declare-fun mapDefault!49900 () ValueCell!15273)

(assert (=> b!1257416 (= condMapEmpty!49900 (= (arr!39444 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15273)) mapDefault!49900)))))

(declare-fun b!1257417 () Bool)

(assert (=> b!1257417 (= e!715038 tp_is_empty!32073)))

(declare-fun b!1257418 () Bool)

(assert (=> b!1257418 (= e!715039 (not true))))

(declare-datatypes ((tuple2!20960 0))(
  ( (tuple2!20961 (_1!10490 (_ BitVec 64)) (_2!10490 V!48129)) )
))
(declare-datatypes ((List!28190 0))(
  ( (Nil!28187) (Cons!28186 (h!29395 tuple2!20960) (t!41688 List!28190)) )
))
(declare-datatypes ((ListLongMap!18845 0))(
  ( (ListLongMap!18846 (toList!9438 List!28190)) )
))
(declare-fun lt!568711 () ListLongMap!18845)

(declare-fun lt!568710 () ListLongMap!18845)

(assert (=> b!1257418 (= lt!568711 lt!568710)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48129)

(declare-datatypes ((Unit!41850 0))(
  ( (Unit!41851) )
))
(declare-fun lt!568712 () Unit!41850)

(declare-fun zeroValue!871 () V!48129)

(declare-fun minValueBefore!43 () V!48129)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1108 (array!81781 array!81783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48129 V!48129 V!48129 V!48129 (_ BitVec 32) Int) Unit!41850)

(assert (=> b!1257418 (= lt!568712 (lemmaNoChangeToArrayThenSameMapNoExtras!1108 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5790 (array!81781 array!81783 (_ BitVec 32) (_ BitVec 32) V!48129 V!48129 (_ BitVec 32) Int) ListLongMap!18845)

(assert (=> b!1257418 (= lt!568710 (getCurrentListMapNoExtraKeys!5790 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257418 (= lt!568711 (getCurrentListMapNoExtraKeys!5790 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49900 () Bool)

(assert (=> mapIsEmpty!49900 mapRes!49900))

(declare-fun b!1257419 () Bool)

(declare-fun res!838256 () Bool)

(assert (=> b!1257419 (=> (not res!838256) (not e!715039))))

(declare-datatypes ((List!28191 0))(
  ( (Nil!28188) (Cons!28187 (h!29396 (_ BitVec 64)) (t!41689 List!28191)) )
))
(declare-fun arrayNoDuplicates!0 (array!81781 (_ BitVec 32) List!28191) Bool)

(assert (=> b!1257419 (= res!838256 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28188))))

(declare-fun mapNonEmpty!49900 () Bool)

(declare-fun tp!95033 () Bool)

(assert (=> mapNonEmpty!49900 (= mapRes!49900 (and tp!95033 e!715037))))

(declare-fun mapKey!49900 () (_ BitVec 32))

(declare-fun mapValue!49900 () ValueCell!15273)

(declare-fun mapRest!49900 () (Array (_ BitVec 32) ValueCell!15273))

(assert (=> mapNonEmpty!49900 (= (arr!39444 _values!914) (store mapRest!49900 mapKey!49900 mapValue!49900))))

(assert (= (and start!105592 res!838255) b!1257414))

(assert (= (and b!1257414 res!838258) b!1257415))

(assert (= (and b!1257415 res!838257) b!1257419))

(assert (= (and b!1257419 res!838256) b!1257418))

(assert (= (and b!1257416 condMapEmpty!49900) mapIsEmpty!49900))

(assert (= (and b!1257416 (not condMapEmpty!49900)) mapNonEmpty!49900))

(get-info :version)

(assert (= (and mapNonEmpty!49900 ((_ is ValueCellFull!15273) mapValue!49900)) b!1257413))

(assert (= (and b!1257416 ((_ is ValueCellFull!15273) mapDefault!49900)) b!1257417))

(assert (= start!105592 b!1257416))

(declare-fun m!1158035 () Bool)

(assert (=> b!1257419 m!1158035))

(declare-fun m!1158037 () Bool)

(assert (=> b!1257418 m!1158037))

(declare-fun m!1158039 () Bool)

(assert (=> b!1257418 m!1158039))

(declare-fun m!1158041 () Bool)

(assert (=> b!1257418 m!1158041))

(declare-fun m!1158043 () Bool)

(assert (=> mapNonEmpty!49900 m!1158043))

(declare-fun m!1158045 () Bool)

(assert (=> start!105592 m!1158045))

(declare-fun m!1158047 () Bool)

(assert (=> start!105592 m!1158047))

(declare-fun m!1158049 () Bool)

(assert (=> start!105592 m!1158049))

(declare-fun m!1158051 () Bool)

(assert (=> b!1257415 m!1158051))

(check-sat (not mapNonEmpty!49900) (not b!1257415) (not b_next!27171) tp_is_empty!32073 (not start!105592) b_and!45047 (not b!1257418) (not b!1257419))
(check-sat b_and!45047 (not b_next!27171))
