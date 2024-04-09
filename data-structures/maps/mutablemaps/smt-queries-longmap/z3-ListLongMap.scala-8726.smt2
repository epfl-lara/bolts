; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105888 () Bool)

(assert start!105888)

(declare-fun b_free!27393 () Bool)

(declare-fun b_next!27393 () Bool)

(assert (=> start!105888 (= b_free!27393 (not b_next!27393))))

(declare-fun tp!95711 () Bool)

(declare-fun b_and!45311 () Bool)

(assert (=> start!105888 (= tp!95711 b_and!45311)))

(declare-fun b!1260776 () Bool)

(declare-fun res!840274 () Bool)

(declare-fun e!717516 () Bool)

(assert (=> b!1260776 (=> (not res!840274) (not e!717516))))

(declare-datatypes ((array!82195 0))(
  ( (array!82196 (arr!39646 (Array (_ BitVec 32) (_ BitVec 64))) (size!40183 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82195)

(declare-datatypes ((List!28342 0))(
  ( (Nil!28339) (Cons!28338 (h!29547 (_ BitVec 64)) (t!41848 List!28342)) )
))
(declare-fun arrayNoDuplicates!0 (array!82195 (_ BitVec 32) List!28342) Bool)

(assert (=> b!1260776 (= res!840274 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28339))))

(declare-fun b!1260777 () Bool)

(assert (=> b!1260777 (= e!717516 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48425 0))(
  ( (V!48426 (val!16210 Int)) )
))
(declare-fun minValueAfter!43 () V!48425)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48425)

(declare-datatypes ((ValueCell!15384 0))(
  ( (ValueCellFull!15384 (v!18914 V!48425)) (EmptyCell!15384) )
))
(declare-datatypes ((array!82197 0))(
  ( (array!82198 (arr!39647 (Array (_ BitVec 32) ValueCell!15384)) (size!40184 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82197)

(declare-datatypes ((tuple2!21120 0))(
  ( (tuple2!21121 (_1!10570 (_ BitVec 64)) (_2!10570 V!48425)) )
))
(declare-datatypes ((List!28343 0))(
  ( (Nil!28340) (Cons!28339 (h!29548 tuple2!21120) (t!41849 List!28343)) )
))
(declare-datatypes ((ListLongMap!19005 0))(
  ( (ListLongMap!19006 (toList!9518 List!28343)) )
))
(declare-fun lt!571402 () ListLongMap!19005)

(declare-fun getCurrentListMapNoExtraKeys!5859 (array!82195 array!82197 (_ BitVec 32) (_ BitVec 32) V!48425 V!48425 (_ BitVec 32) Int) ListLongMap!19005)

(assert (=> b!1260777 (= lt!571402 (getCurrentListMapNoExtraKeys!5859 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571403 () ListLongMap!19005)

(declare-fun minValueBefore!43 () V!48425)

(assert (=> b!1260777 (= lt!571403 (getCurrentListMapNoExtraKeys!5859 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260778 () Bool)

(declare-fun res!840272 () Bool)

(assert (=> b!1260778 (=> (not res!840272) (not e!717516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82195 (_ BitVec 32)) Bool)

(assert (=> b!1260778 (= res!840272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260779 () Bool)

(declare-fun res!840271 () Bool)

(assert (=> b!1260779 (=> (not res!840271) (not e!717516))))

(assert (=> b!1260779 (= res!840271 (and (= (size!40184 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40183 _keys!1118) (size!40184 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50245 () Bool)

(declare-fun mapRes!50245 () Bool)

(assert (=> mapIsEmpty!50245 mapRes!50245))

(declare-fun res!840273 () Bool)

(assert (=> start!105888 (=> (not res!840273) (not e!717516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105888 (= res!840273 (validMask!0 mask!1466))))

(assert (=> start!105888 e!717516))

(assert (=> start!105888 true))

(assert (=> start!105888 tp!95711))

(declare-fun tp_is_empty!32295 () Bool)

(assert (=> start!105888 tp_is_empty!32295))

(declare-fun array_inv!30133 (array!82195) Bool)

(assert (=> start!105888 (array_inv!30133 _keys!1118)))

(declare-fun e!717517 () Bool)

(declare-fun array_inv!30134 (array!82197) Bool)

(assert (=> start!105888 (and (array_inv!30134 _values!914) e!717517)))

(declare-fun mapNonEmpty!50245 () Bool)

(declare-fun tp!95712 () Bool)

(declare-fun e!717518 () Bool)

(assert (=> mapNonEmpty!50245 (= mapRes!50245 (and tp!95712 e!717518))))

(declare-fun mapValue!50245 () ValueCell!15384)

(declare-fun mapKey!50245 () (_ BitVec 32))

(declare-fun mapRest!50245 () (Array (_ BitVec 32) ValueCell!15384))

(assert (=> mapNonEmpty!50245 (= (arr!39647 _values!914) (store mapRest!50245 mapKey!50245 mapValue!50245))))

(declare-fun b!1260780 () Bool)

(declare-fun e!717520 () Bool)

(assert (=> b!1260780 (= e!717517 (and e!717520 mapRes!50245))))

(declare-fun condMapEmpty!50245 () Bool)

(declare-fun mapDefault!50245 () ValueCell!15384)

(assert (=> b!1260780 (= condMapEmpty!50245 (= (arr!39647 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15384)) mapDefault!50245)))))

(declare-fun b!1260781 () Bool)

(assert (=> b!1260781 (= e!717520 tp_is_empty!32295)))

(declare-fun b!1260782 () Bool)

(assert (=> b!1260782 (= e!717518 tp_is_empty!32295)))

(assert (= (and start!105888 res!840273) b!1260779))

(assert (= (and b!1260779 res!840271) b!1260778))

(assert (= (and b!1260778 res!840272) b!1260776))

(assert (= (and b!1260776 res!840274) b!1260777))

(assert (= (and b!1260780 condMapEmpty!50245) mapIsEmpty!50245))

(assert (= (and b!1260780 (not condMapEmpty!50245)) mapNonEmpty!50245))

(get-info :version)

(assert (= (and mapNonEmpty!50245 ((_ is ValueCellFull!15384) mapValue!50245)) b!1260782))

(assert (= (and b!1260780 ((_ is ValueCellFull!15384) mapDefault!50245)) b!1260781))

(assert (= start!105888 b!1260780))

(declare-fun m!1161579 () Bool)

(assert (=> mapNonEmpty!50245 m!1161579))

(declare-fun m!1161581 () Bool)

(assert (=> start!105888 m!1161581))

(declare-fun m!1161583 () Bool)

(assert (=> start!105888 m!1161583))

(declare-fun m!1161585 () Bool)

(assert (=> start!105888 m!1161585))

(declare-fun m!1161587 () Bool)

(assert (=> b!1260776 m!1161587))

(declare-fun m!1161589 () Bool)

(assert (=> b!1260777 m!1161589))

(declare-fun m!1161591 () Bool)

(assert (=> b!1260777 m!1161591))

(declare-fun m!1161593 () Bool)

(assert (=> b!1260778 m!1161593))

(check-sat (not b!1260778) (not b_next!27393) (not mapNonEmpty!50245) (not start!105888) (not b!1260776) b_and!45311 (not b!1260777) tp_is_empty!32295)
(check-sat b_and!45311 (not b_next!27393))
