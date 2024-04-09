; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105440 () Bool)

(assert start!105440)

(declare-fun b_free!27063 () Bool)

(declare-fun b_next!27063 () Bool)

(assert (=> start!105440 (= b_free!27063 (not b_next!27063))))

(declare-fun tp!94704 () Bool)

(declare-fun b_and!44919 () Bool)

(assert (=> start!105440 (= tp!94704 b_and!44919)))

(declare-fun b!1255669 () Bool)

(declare-fun e!713733 () Bool)

(declare-fun tp_is_empty!31965 () Bool)

(assert (=> b!1255669 (= e!713733 tp_is_empty!31965)))

(declare-fun b!1255670 () Bool)

(declare-fun e!713736 () Bool)

(declare-fun e!713734 () Bool)

(declare-fun mapRes!49732 () Bool)

(assert (=> b!1255670 (= e!713736 (and e!713734 mapRes!49732))))

(declare-fun condMapEmpty!49732 () Bool)

(declare-datatypes ((V!47985 0))(
  ( (V!47986 (val!16045 Int)) )
))
(declare-datatypes ((ValueCell!15219 0))(
  ( (ValueCellFull!15219 (v!18745 V!47985)) (EmptyCell!15219) )
))
(declare-datatypes ((array!81563 0))(
  ( (array!81564 (arr!39336 (Array (_ BitVec 32) ValueCell!15219)) (size!39873 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81563)

(declare-fun mapDefault!49732 () ValueCell!15219)

(assert (=> b!1255670 (= condMapEmpty!49732 (= (arr!39336 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15219)) mapDefault!49732)))))

(declare-fun b!1255671 () Bool)

(declare-fun res!837191 () Bool)

(declare-fun e!713732 () Bool)

(assert (=> b!1255671 (=> (not res!837191) (not e!713732))))

(declare-datatypes ((array!81565 0))(
  ( (array!81566 (arr!39337 (Array (_ BitVec 32) (_ BitVec 64))) (size!39874 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81565)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81565 (_ BitVec 32)) Bool)

(assert (=> b!1255671 (= res!837191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255672 () Bool)

(assert (=> b!1255672 (= e!713734 tp_is_empty!31965)))

(declare-fun b!1255673 () Bool)

(declare-fun e!713735 () Bool)

(assert (=> b!1255673 (= e!713732 (not e!713735))))

(declare-fun res!837190 () Bool)

(assert (=> b!1255673 (=> res!837190 e!713735)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255673 (= res!837190 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20868 0))(
  ( (tuple2!20869 (_1!10444 (_ BitVec 64)) (_2!10444 V!47985)) )
))
(declare-datatypes ((List!28106 0))(
  ( (Nil!28103) (Cons!28102 (h!29311 tuple2!20868) (t!41600 List!28106)) )
))
(declare-datatypes ((ListLongMap!18753 0))(
  ( (ListLongMap!18754 (toList!9392 List!28106)) )
))
(declare-fun lt!567682 () ListLongMap!18753)

(declare-fun lt!567680 () ListLongMap!18753)

(assert (=> b!1255673 (= lt!567682 lt!567680)))

(declare-datatypes ((Unit!41756 0))(
  ( (Unit!41757) )
))
(declare-fun lt!567683 () Unit!41756)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47985)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47985)

(declare-fun minValueBefore!43 () V!47985)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1069 (array!81565 array!81563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47985 V!47985 V!47985 V!47985 (_ BitVec 32) Int) Unit!41756)

(assert (=> b!1255673 (= lt!567683 (lemmaNoChangeToArrayThenSameMapNoExtras!1069 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5751 (array!81565 array!81563 (_ BitVec 32) (_ BitVec 32) V!47985 V!47985 (_ BitVec 32) Int) ListLongMap!18753)

(assert (=> b!1255673 (= lt!567680 (getCurrentListMapNoExtraKeys!5751 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255673 (= lt!567682 (getCurrentListMapNoExtraKeys!5751 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255674 () Bool)

(declare-fun e!713731 () Bool)

(assert (=> b!1255674 (= e!713735 e!713731)))

(declare-fun res!837193 () Bool)

(assert (=> b!1255674 (=> res!837193 e!713731)))

(declare-fun lt!567684 () ListLongMap!18753)

(declare-fun contains!7551 (ListLongMap!18753 (_ BitVec 64)) Bool)

(assert (=> b!1255674 (= res!837193 (contains!7551 lt!567684 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4556 (array!81565 array!81563 (_ BitVec 32) (_ BitVec 32) V!47985 V!47985 (_ BitVec 32) Int) ListLongMap!18753)

(assert (=> b!1255674 (= lt!567684 (getCurrentListMap!4556 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837194 () Bool)

(assert (=> start!105440 (=> (not res!837194) (not e!713732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105440 (= res!837194 (validMask!0 mask!1466))))

(assert (=> start!105440 e!713732))

(assert (=> start!105440 true))

(assert (=> start!105440 tp!94704))

(assert (=> start!105440 tp_is_empty!31965))

(declare-fun array_inv!29917 (array!81565) Bool)

(assert (=> start!105440 (array_inv!29917 _keys!1118)))

(declare-fun array_inv!29918 (array!81563) Bool)

(assert (=> start!105440 (and (array_inv!29918 _values!914) e!713736)))

(declare-fun b!1255675 () Bool)

(declare-fun res!837189 () Bool)

(assert (=> b!1255675 (=> (not res!837189) (not e!713732))))

(declare-datatypes ((List!28107 0))(
  ( (Nil!28104) (Cons!28103 (h!29312 (_ BitVec 64)) (t!41601 List!28107)) )
))
(declare-fun arrayNoDuplicates!0 (array!81565 (_ BitVec 32) List!28107) Bool)

(assert (=> b!1255675 (= res!837189 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28104))))

(declare-fun mapNonEmpty!49732 () Bool)

(declare-fun tp!94703 () Bool)

(assert (=> mapNonEmpty!49732 (= mapRes!49732 (and tp!94703 e!713733))))

(declare-fun mapRest!49732 () (Array (_ BitVec 32) ValueCell!15219))

(declare-fun mapKey!49732 () (_ BitVec 32))

(declare-fun mapValue!49732 () ValueCell!15219)

(assert (=> mapNonEmpty!49732 (= (arr!39336 _values!914) (store mapRest!49732 mapKey!49732 mapValue!49732))))

(declare-fun mapIsEmpty!49732 () Bool)

(assert (=> mapIsEmpty!49732 mapRes!49732))

(declare-fun b!1255676 () Bool)

(declare-fun res!837192 () Bool)

(assert (=> b!1255676 (=> (not res!837192) (not e!713732))))

(assert (=> b!1255676 (= res!837192 (and (= (size!39873 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39874 _keys!1118) (size!39873 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255677 () Bool)

(assert (=> b!1255677 (= e!713731 true)))

(declare-fun -!2076 (ListLongMap!18753 (_ BitVec 64)) ListLongMap!18753)

(assert (=> b!1255677 (= (-!2076 lt!567684 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567684)))

(declare-fun lt!567681 () Unit!41756)

(declare-fun removeNotPresentStillSame!109 (ListLongMap!18753 (_ BitVec 64)) Unit!41756)

(assert (=> b!1255677 (= lt!567681 (removeNotPresentStillSame!109 lt!567684 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!105440 res!837194) b!1255676))

(assert (= (and b!1255676 res!837192) b!1255671))

(assert (= (and b!1255671 res!837191) b!1255675))

(assert (= (and b!1255675 res!837189) b!1255673))

(assert (= (and b!1255673 (not res!837190)) b!1255674))

(assert (= (and b!1255674 (not res!837193)) b!1255677))

(assert (= (and b!1255670 condMapEmpty!49732) mapIsEmpty!49732))

(assert (= (and b!1255670 (not condMapEmpty!49732)) mapNonEmpty!49732))

(get-info :version)

(assert (= (and mapNonEmpty!49732 ((_ is ValueCellFull!15219) mapValue!49732)) b!1255669))

(assert (= (and b!1255670 ((_ is ValueCellFull!15219) mapDefault!49732)) b!1255672))

(assert (= start!105440 b!1255670))

(declare-fun m!1156411 () Bool)

(assert (=> b!1255674 m!1156411))

(declare-fun m!1156413 () Bool)

(assert (=> b!1255674 m!1156413))

(declare-fun m!1156415 () Bool)

(assert (=> start!105440 m!1156415))

(declare-fun m!1156417 () Bool)

(assert (=> start!105440 m!1156417))

(declare-fun m!1156419 () Bool)

(assert (=> start!105440 m!1156419))

(declare-fun m!1156421 () Bool)

(assert (=> mapNonEmpty!49732 m!1156421))

(declare-fun m!1156423 () Bool)

(assert (=> b!1255673 m!1156423))

(declare-fun m!1156425 () Bool)

(assert (=> b!1255673 m!1156425))

(declare-fun m!1156427 () Bool)

(assert (=> b!1255673 m!1156427))

(declare-fun m!1156429 () Bool)

(assert (=> b!1255677 m!1156429))

(declare-fun m!1156431 () Bool)

(assert (=> b!1255677 m!1156431))

(declare-fun m!1156433 () Bool)

(assert (=> b!1255675 m!1156433))

(declare-fun m!1156435 () Bool)

(assert (=> b!1255671 m!1156435))

(check-sat (not mapNonEmpty!49732) (not b!1255671) (not b!1255675) (not b_next!27063) (not b!1255673) b_and!44919 (not b!1255677) tp_is_empty!31965 (not b!1255674) (not start!105440))
(check-sat b_and!44919 (not b_next!27063))
