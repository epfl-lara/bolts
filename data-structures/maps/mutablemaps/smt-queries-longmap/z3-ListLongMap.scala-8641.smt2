; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105202 () Bool)

(assert start!105202)

(declare-fun b_free!26883 () Bool)

(declare-fun b_next!26883 () Bool)

(assert (=> start!105202 (= b_free!26883 (not b_next!26883))))

(declare-fun tp!94154 () Bool)

(declare-fun b_and!44707 () Bool)

(assert (=> start!105202 (= tp!94154 b_and!44707)))

(declare-fun b!1253119 () Bool)

(declare-fun e!711886 () Bool)

(declare-fun tp_is_empty!31785 () Bool)

(assert (=> b!1253119 (= e!711886 tp_is_empty!31785)))

(declare-fun b!1253120 () Bool)

(declare-fun e!711887 () Bool)

(declare-fun e!711883 () Bool)

(declare-fun mapRes!49453 () Bool)

(assert (=> b!1253120 (= e!711887 (and e!711883 mapRes!49453))))

(declare-fun condMapEmpty!49453 () Bool)

(declare-datatypes ((V!47745 0))(
  ( (V!47746 (val!15955 Int)) )
))
(declare-datatypes ((ValueCell!15129 0))(
  ( (ValueCellFull!15129 (v!18653 V!47745)) (EmptyCell!15129) )
))
(declare-datatypes ((array!81211 0))(
  ( (array!81212 (arr!39163 (Array (_ BitVec 32) ValueCell!15129)) (size!39700 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81211)

(declare-fun mapDefault!49453 () ValueCell!15129)

(assert (=> b!1253120 (= condMapEmpty!49453 (= (arr!39163 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15129)) mapDefault!49453)))))

(declare-fun b!1253121 () Bool)

(declare-fun res!835710 () Bool)

(declare-fun e!711884 () Bool)

(assert (=> b!1253121 (=> (not res!835710) (not e!711884))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81213 0))(
  ( (array!81214 (arr!39164 (Array (_ BitVec 32) (_ BitVec 64))) (size!39701 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81213)

(assert (=> b!1253121 (= res!835710 (and (= (size!39700 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39701 _keys!1118) (size!39700 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253122 () Bool)

(declare-fun e!711885 () Bool)

(assert (=> b!1253122 (= e!711885 true)))

(declare-fun lt!565695 () Bool)

(declare-datatypes ((tuple2!20734 0))(
  ( (tuple2!20735 (_1!10377 (_ BitVec 64)) (_2!10377 V!47745)) )
))
(declare-datatypes ((List!27981 0))(
  ( (Nil!27978) (Cons!27977 (h!29186 tuple2!20734) (t!41469 List!27981)) )
))
(declare-datatypes ((ListLongMap!18619 0))(
  ( (ListLongMap!18620 (toList!9325 List!27981)) )
))
(declare-fun lt!565700 () ListLongMap!18619)

(declare-fun contains!7538 (ListLongMap!18619 (_ BitVec 64)) Bool)

(assert (=> b!1253122 (= lt!565695 (contains!7538 lt!565700 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!711882 () Bool)

(assert (=> b!1253122 e!711882))

(declare-fun res!835711 () Bool)

(assert (=> b!1253122 (=> (not res!835711) (not e!711882))))

(declare-fun lt!565696 () ListLongMap!18619)

(declare-fun minValueBefore!43 () V!47745)

(declare-fun +!4130 (ListLongMap!18619 tuple2!20734) ListLongMap!18619)

(assert (=> b!1253122 (= res!835711 (= lt!565696 (+!4130 lt!565700 (tuple2!20735 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47745)

(declare-fun zeroValue!871 () V!47745)

(declare-fun lt!565698 () ListLongMap!18619)

(declare-fun getCurrentListMap!4517 (array!81213 array!81211 (_ BitVec 32) (_ BitVec 32) V!47745 V!47745 (_ BitVec 32) Int) ListLongMap!18619)

(assert (=> b!1253122 (= lt!565698 (getCurrentListMap!4517 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253122 (= lt!565696 (getCurrentListMap!4517 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49453 () Bool)

(declare-fun tp!94155 () Bool)

(assert (=> mapNonEmpty!49453 (= mapRes!49453 (and tp!94155 e!711886))))

(declare-fun mapValue!49453 () ValueCell!15129)

(declare-fun mapKey!49453 () (_ BitVec 32))

(declare-fun mapRest!49453 () (Array (_ BitVec 32) ValueCell!15129))

(assert (=> mapNonEmpty!49453 (= (arr!39163 _values!914) (store mapRest!49453 mapKey!49453 mapValue!49453))))

(declare-fun b!1253124 () Bool)

(declare-fun res!835708 () Bool)

(assert (=> b!1253124 (=> (not res!835708) (not e!711884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81213 (_ BitVec 32)) Bool)

(assert (=> b!1253124 (= res!835708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253125 () Bool)

(assert (=> b!1253125 (= e!711884 (not e!711885))))

(declare-fun res!835709 () Bool)

(assert (=> b!1253125 (=> res!835709 e!711885)))

(assert (=> b!1253125 (= res!835709 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565699 () ListLongMap!18619)

(assert (=> b!1253125 (= lt!565700 lt!565699)))

(declare-datatypes ((Unit!41620 0))(
  ( (Unit!41621) )
))
(declare-fun lt!565697 () Unit!41620)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1012 (array!81213 array!81211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47745 V!47745 V!47745 V!47745 (_ BitVec 32) Int) Unit!41620)

(assert (=> b!1253125 (= lt!565697 (lemmaNoChangeToArrayThenSameMapNoExtras!1012 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5694 (array!81213 array!81211 (_ BitVec 32) (_ BitVec 32) V!47745 V!47745 (_ BitVec 32) Int) ListLongMap!18619)

(assert (=> b!1253125 (= lt!565699 (getCurrentListMapNoExtraKeys!5694 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253125 (= lt!565700 (getCurrentListMapNoExtraKeys!5694 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253126 () Bool)

(declare-fun res!835712 () Bool)

(assert (=> b!1253126 (=> (not res!835712) (not e!711884))))

(declare-datatypes ((List!27982 0))(
  ( (Nil!27979) (Cons!27978 (h!29187 (_ BitVec 64)) (t!41470 List!27982)) )
))
(declare-fun arrayNoDuplicates!0 (array!81213 (_ BitVec 32) List!27982) Bool)

(assert (=> b!1253126 (= res!835712 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27979))))

(declare-fun b!1253123 () Bool)

(assert (=> b!1253123 (= e!711882 (= lt!565698 lt!565699))))

(declare-fun res!835707 () Bool)

(assert (=> start!105202 (=> (not res!835707) (not e!711884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105202 (= res!835707 (validMask!0 mask!1466))))

(assert (=> start!105202 e!711884))

(assert (=> start!105202 true))

(assert (=> start!105202 tp!94154))

(assert (=> start!105202 tp_is_empty!31785))

(declare-fun array_inv!29799 (array!81213) Bool)

(assert (=> start!105202 (array_inv!29799 _keys!1118)))

(declare-fun array_inv!29800 (array!81211) Bool)

(assert (=> start!105202 (and (array_inv!29800 _values!914) e!711887)))

(declare-fun mapIsEmpty!49453 () Bool)

(assert (=> mapIsEmpty!49453 mapRes!49453))

(declare-fun b!1253127 () Bool)

(assert (=> b!1253127 (= e!711883 tp_is_empty!31785)))

(assert (= (and start!105202 res!835707) b!1253121))

(assert (= (and b!1253121 res!835710) b!1253124))

(assert (= (and b!1253124 res!835708) b!1253126))

(assert (= (and b!1253126 res!835712) b!1253125))

(assert (= (and b!1253125 (not res!835709)) b!1253122))

(assert (= (and b!1253122 res!835711) b!1253123))

(assert (= (and b!1253120 condMapEmpty!49453) mapIsEmpty!49453))

(assert (= (and b!1253120 (not condMapEmpty!49453)) mapNonEmpty!49453))

(get-info :version)

(assert (= (and mapNonEmpty!49453 ((_ is ValueCellFull!15129) mapValue!49453)) b!1253119))

(assert (= (and b!1253120 ((_ is ValueCellFull!15129) mapDefault!49453)) b!1253127))

(assert (= start!105202 b!1253120))

(declare-fun m!1153649 () Bool)

(assert (=> b!1253126 m!1153649))

(declare-fun m!1153651 () Bool)

(assert (=> b!1253125 m!1153651))

(declare-fun m!1153653 () Bool)

(assert (=> b!1253125 m!1153653))

(declare-fun m!1153655 () Bool)

(assert (=> b!1253125 m!1153655))

(declare-fun m!1153657 () Bool)

(assert (=> b!1253124 m!1153657))

(declare-fun m!1153659 () Bool)

(assert (=> b!1253122 m!1153659))

(declare-fun m!1153661 () Bool)

(assert (=> b!1253122 m!1153661))

(declare-fun m!1153663 () Bool)

(assert (=> b!1253122 m!1153663))

(declare-fun m!1153665 () Bool)

(assert (=> b!1253122 m!1153665))

(declare-fun m!1153667 () Bool)

(assert (=> mapNonEmpty!49453 m!1153667))

(declare-fun m!1153669 () Bool)

(assert (=> start!105202 m!1153669))

(declare-fun m!1153671 () Bool)

(assert (=> start!105202 m!1153671))

(declare-fun m!1153673 () Bool)

(assert (=> start!105202 m!1153673))

(check-sat (not b!1253124) (not b!1253122) (not b!1253126) (not mapNonEmpty!49453) b_and!44707 (not b_next!26883) (not b!1253125) (not start!105202) tp_is_empty!31785)
(check-sat b_and!44707 (not b_next!26883))
