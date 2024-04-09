; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105906 () Bool)

(assert start!105906)

(declare-fun b_free!27411 () Bool)

(declare-fun b_next!27411 () Bool)

(assert (=> start!105906 (= b_free!27411 (not b_next!27411))))

(declare-fun tp!95765 () Bool)

(declare-fun b_and!45329 () Bool)

(assert (=> start!105906 (= tp!95765 b_and!45329)))

(declare-fun b!1260965 () Bool)

(declare-fun e!717652 () Bool)

(declare-fun tp_is_empty!32313 () Bool)

(assert (=> b!1260965 (= e!717652 tp_is_empty!32313)))

(declare-fun b!1260966 () Bool)

(declare-fun res!840382 () Bool)

(declare-fun e!717651 () Bool)

(assert (=> b!1260966 (=> (not res!840382) (not e!717651))))

(declare-datatypes ((array!82231 0))(
  ( (array!82232 (arr!39664 (Array (_ BitVec 32) (_ BitVec 64))) (size!40201 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82231)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82231 (_ BitVec 32)) Bool)

(assert (=> b!1260966 (= res!840382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260967 () Bool)

(declare-fun res!840379 () Bool)

(assert (=> b!1260967 (=> (not res!840379) (not e!717651))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48449 0))(
  ( (V!48450 (val!16219 Int)) )
))
(declare-datatypes ((ValueCell!15393 0))(
  ( (ValueCellFull!15393 (v!18923 V!48449)) (EmptyCell!15393) )
))
(declare-datatypes ((array!82233 0))(
  ( (array!82234 (arr!39665 (Array (_ BitVec 32) ValueCell!15393)) (size!40202 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82233)

(assert (=> b!1260967 (= res!840379 (and (= (size!40202 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40201 _keys!1118) (size!40202 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50272 () Bool)

(declare-fun mapRes!50272 () Bool)

(declare-fun tp!95766 () Bool)

(assert (=> mapNonEmpty!50272 (= mapRes!50272 (and tp!95766 e!717652))))

(declare-fun mapRest!50272 () (Array (_ BitVec 32) ValueCell!15393))

(declare-fun mapKey!50272 () (_ BitVec 32))

(declare-fun mapValue!50272 () ValueCell!15393)

(assert (=> mapNonEmpty!50272 (= (arr!39665 _values!914) (store mapRest!50272 mapKey!50272 mapValue!50272))))

(declare-fun b!1260969 () Bool)

(declare-fun e!717655 () Bool)

(assert (=> b!1260969 (= e!717655 tp_is_empty!32313)))

(declare-fun mapIsEmpty!50272 () Bool)

(assert (=> mapIsEmpty!50272 mapRes!50272))

(declare-fun res!840380 () Bool)

(assert (=> start!105906 (=> (not res!840380) (not e!717651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105906 (= res!840380 (validMask!0 mask!1466))))

(assert (=> start!105906 e!717651))

(assert (=> start!105906 true))

(assert (=> start!105906 tp!95765))

(assert (=> start!105906 tp_is_empty!32313))

(declare-fun array_inv!30147 (array!82231) Bool)

(assert (=> start!105906 (array_inv!30147 _keys!1118)))

(declare-fun e!717654 () Bool)

(declare-fun array_inv!30148 (array!82233) Bool)

(assert (=> start!105906 (and (array_inv!30148 _values!914) e!717654)))

(declare-fun b!1260968 () Bool)

(assert (=> b!1260968 (= e!717651 false)))

(declare-datatypes ((tuple2!21134 0))(
  ( (tuple2!21135 (_1!10577 (_ BitVec 64)) (_2!10577 V!48449)) )
))
(declare-datatypes ((List!28357 0))(
  ( (Nil!28354) (Cons!28353 (h!29562 tuple2!21134) (t!41863 List!28357)) )
))
(declare-datatypes ((ListLongMap!19019 0))(
  ( (ListLongMap!19020 (toList!9525 List!28357)) )
))
(declare-fun lt!571457 () ListLongMap!19019)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48449)

(declare-fun zeroValue!871 () V!48449)

(declare-fun getCurrentListMapNoExtraKeys!5866 (array!82231 array!82233 (_ BitVec 32) (_ BitVec 32) V!48449 V!48449 (_ BitVec 32) Int) ListLongMap!19019)

(assert (=> b!1260968 (= lt!571457 (getCurrentListMapNoExtraKeys!5866 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571456 () ListLongMap!19019)

(declare-fun minValueBefore!43 () V!48449)

(assert (=> b!1260968 (= lt!571456 (getCurrentListMapNoExtraKeys!5866 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260970 () Bool)

(declare-fun res!840381 () Bool)

(assert (=> b!1260970 (=> (not res!840381) (not e!717651))))

(declare-datatypes ((List!28358 0))(
  ( (Nil!28355) (Cons!28354 (h!29563 (_ BitVec 64)) (t!41864 List!28358)) )
))
(declare-fun arrayNoDuplicates!0 (array!82231 (_ BitVec 32) List!28358) Bool)

(assert (=> b!1260970 (= res!840381 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28355))))

(declare-fun b!1260971 () Bool)

(assert (=> b!1260971 (= e!717654 (and e!717655 mapRes!50272))))

(declare-fun condMapEmpty!50272 () Bool)

(declare-fun mapDefault!50272 () ValueCell!15393)

(assert (=> b!1260971 (= condMapEmpty!50272 (= (arr!39665 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15393)) mapDefault!50272)))))

(assert (= (and start!105906 res!840380) b!1260967))

(assert (= (and b!1260967 res!840379) b!1260966))

(assert (= (and b!1260966 res!840382) b!1260970))

(assert (= (and b!1260970 res!840381) b!1260968))

(assert (= (and b!1260971 condMapEmpty!50272) mapIsEmpty!50272))

(assert (= (and b!1260971 (not condMapEmpty!50272)) mapNonEmpty!50272))

(get-info :version)

(assert (= (and mapNonEmpty!50272 ((_ is ValueCellFull!15393) mapValue!50272)) b!1260965))

(assert (= (and b!1260971 ((_ is ValueCellFull!15393) mapDefault!50272)) b!1260969))

(assert (= start!105906 b!1260971))

(declare-fun m!1161723 () Bool)

(assert (=> start!105906 m!1161723))

(declare-fun m!1161725 () Bool)

(assert (=> start!105906 m!1161725))

(declare-fun m!1161727 () Bool)

(assert (=> start!105906 m!1161727))

(declare-fun m!1161729 () Bool)

(assert (=> b!1260966 m!1161729))

(declare-fun m!1161731 () Bool)

(assert (=> b!1260970 m!1161731))

(declare-fun m!1161733 () Bool)

(assert (=> b!1260968 m!1161733))

(declare-fun m!1161735 () Bool)

(assert (=> b!1260968 m!1161735))

(declare-fun m!1161737 () Bool)

(assert (=> mapNonEmpty!50272 m!1161737))

(check-sat (not mapNonEmpty!50272) tp_is_empty!32313 b_and!45329 (not b_next!27411) (not b!1260970) (not b!1260968) (not b!1260966) (not start!105906))
(check-sat b_and!45329 (not b_next!27411))
