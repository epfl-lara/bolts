; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70240 () Bool)

(assert start!70240)

(declare-fun b_free!12609 () Bool)

(declare-fun b_next!12609 () Bool)

(assert (=> start!70240 (= b_free!12609 (not b_next!12609))))

(declare-fun tp!44548 () Bool)

(declare-fun b_and!21415 () Bool)

(assert (=> start!70240 (= tp!44548 b_and!21415)))

(declare-fun b!815592 () Bool)

(declare-fun e!452335 () Bool)

(declare-fun tp_is_empty!14319 () Bool)

(assert (=> b!815592 (= e!452335 tp_is_empty!14319)))

(declare-fun mapIsEmpty!23065 () Bool)

(declare-fun mapRes!23065 () Bool)

(assert (=> mapIsEmpty!23065 mapRes!23065))

(declare-fun b!815593 () Bool)

(declare-fun res!557018 () Bool)

(declare-fun e!452333 () Bool)

(assert (=> b!815593 (=> (not res!557018) (not e!452333))))

(declare-datatypes ((array!44826 0))(
  ( (array!44827 (arr!21467 (Array (_ BitVec 32) (_ BitVec 64))) (size!21888 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44826)

(declare-datatypes ((List!15341 0))(
  ( (Nil!15338) (Cons!15337 (h!16466 (_ BitVec 64)) (t!21670 List!15341)) )
))
(declare-fun arrayNoDuplicates!0 (array!44826 (_ BitVec 32) List!15341) Bool)

(assert (=> b!815593 (= res!557018 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15338))))

(declare-fun b!815594 () Bool)

(declare-fun e!452336 () Bool)

(assert (=> b!815594 (= e!452336 true)))

(declare-datatypes ((V!24093 0))(
  ( (V!24094 (val!7207 Int)) )
))
(declare-fun zeroValueAfter!34 () V!24093)

(declare-fun minValue!754 () V!24093)

(declare-datatypes ((ValueCell!6744 0))(
  ( (ValueCellFull!6744 (v!9630 V!24093)) (EmptyCell!6744) )
))
(declare-datatypes ((array!44828 0))(
  ( (array!44829 (arr!21468 (Array (_ BitVec 32) ValueCell!6744)) (size!21889 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44828)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9470 0))(
  ( (tuple2!9471 (_1!4745 (_ BitVec 64)) (_2!4745 V!24093)) )
))
(declare-datatypes ((List!15342 0))(
  ( (Nil!15339) (Cons!15338 (h!16467 tuple2!9470) (t!21671 List!15342)) )
))
(declare-datatypes ((ListLongMap!8307 0))(
  ( (ListLongMap!8308 (toList!4169 List!15342)) )
))
(declare-fun lt!365185 () ListLongMap!8307)

(declare-fun getCurrentListMap!2360 (array!44826 array!44828 (_ BitVec 32) (_ BitVec 32) V!24093 V!24093 (_ BitVec 32) Int) ListLongMap!8307)

(assert (=> b!815594 (= lt!365185 (getCurrentListMap!2360 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365183 () ListLongMap!8307)

(declare-fun zeroValueBefore!34 () V!24093)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun +!1759 (ListLongMap!8307 tuple2!9470) ListLongMap!8307)

(assert (=> b!815594 (= lt!365183 (+!1759 (getCurrentListMap!2360 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9471 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815595 () Bool)

(declare-fun res!557016 () Bool)

(assert (=> b!815595 (=> (not res!557016) (not e!452333))))

(assert (=> b!815595 (= res!557016 (and (= (size!21889 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21888 _keys!976) (size!21889 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815596 () Bool)

(assert (=> b!815596 (= e!452333 (not e!452336))))

(declare-fun res!557020 () Bool)

(assert (=> b!815596 (=> res!557020 e!452336)))

(assert (=> b!815596 (= res!557020 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365181 () ListLongMap!8307)

(declare-fun lt!365182 () ListLongMap!8307)

(assert (=> b!815596 (= lt!365181 lt!365182)))

(declare-datatypes ((Unit!27794 0))(
  ( (Unit!27795) )
))
(declare-fun lt!365184 () Unit!27794)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!334 (array!44826 array!44828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24093 V!24093 V!24093 V!24093 (_ BitVec 32) Int) Unit!27794)

(assert (=> b!815596 (= lt!365184 (lemmaNoChangeToArrayThenSameMapNoExtras!334 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2218 (array!44826 array!44828 (_ BitVec 32) (_ BitVec 32) V!24093 V!24093 (_ BitVec 32) Int) ListLongMap!8307)

(assert (=> b!815596 (= lt!365182 (getCurrentListMapNoExtraKeys!2218 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815596 (= lt!365181 (getCurrentListMapNoExtraKeys!2218 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815597 () Bool)

(declare-fun e!452337 () Bool)

(declare-fun e!452334 () Bool)

(assert (=> b!815597 (= e!452337 (and e!452334 mapRes!23065))))

(declare-fun condMapEmpty!23065 () Bool)

(declare-fun mapDefault!23065 () ValueCell!6744)

(assert (=> b!815597 (= condMapEmpty!23065 (= (arr!21468 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6744)) mapDefault!23065)))))

(declare-fun b!815598 () Bool)

(declare-fun res!557017 () Bool)

(assert (=> b!815598 (=> (not res!557017) (not e!452333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44826 (_ BitVec 32)) Bool)

(assert (=> b!815598 (= res!557017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!557019 () Bool)

(assert (=> start!70240 (=> (not res!557019) (not e!452333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70240 (= res!557019 (validMask!0 mask!1312))))

(assert (=> start!70240 e!452333))

(assert (=> start!70240 tp_is_empty!14319))

(declare-fun array_inv!17157 (array!44826) Bool)

(assert (=> start!70240 (array_inv!17157 _keys!976)))

(assert (=> start!70240 true))

(declare-fun array_inv!17158 (array!44828) Bool)

(assert (=> start!70240 (and (array_inv!17158 _values!788) e!452337)))

(assert (=> start!70240 tp!44548))

(declare-fun b!815599 () Bool)

(assert (=> b!815599 (= e!452334 tp_is_empty!14319)))

(declare-fun mapNonEmpty!23065 () Bool)

(declare-fun tp!44547 () Bool)

(assert (=> mapNonEmpty!23065 (= mapRes!23065 (and tp!44547 e!452335))))

(declare-fun mapKey!23065 () (_ BitVec 32))

(declare-fun mapValue!23065 () ValueCell!6744)

(declare-fun mapRest!23065 () (Array (_ BitVec 32) ValueCell!6744))

(assert (=> mapNonEmpty!23065 (= (arr!21468 _values!788) (store mapRest!23065 mapKey!23065 mapValue!23065))))

(assert (= (and start!70240 res!557019) b!815595))

(assert (= (and b!815595 res!557016) b!815598))

(assert (= (and b!815598 res!557017) b!815593))

(assert (= (and b!815593 res!557018) b!815596))

(assert (= (and b!815596 (not res!557020)) b!815594))

(assert (= (and b!815597 condMapEmpty!23065) mapIsEmpty!23065))

(assert (= (and b!815597 (not condMapEmpty!23065)) mapNonEmpty!23065))

(get-info :version)

(assert (= (and mapNonEmpty!23065 ((_ is ValueCellFull!6744) mapValue!23065)) b!815592))

(assert (= (and b!815597 ((_ is ValueCellFull!6744) mapDefault!23065)) b!815599))

(assert (= start!70240 b!815597))

(declare-fun m!757331 () Bool)

(assert (=> b!815598 m!757331))

(declare-fun m!757333 () Bool)

(assert (=> b!815593 m!757333))

(declare-fun m!757335 () Bool)

(assert (=> b!815596 m!757335))

(declare-fun m!757337 () Bool)

(assert (=> b!815596 m!757337))

(declare-fun m!757339 () Bool)

(assert (=> b!815596 m!757339))

(declare-fun m!757341 () Bool)

(assert (=> start!70240 m!757341))

(declare-fun m!757343 () Bool)

(assert (=> start!70240 m!757343))

(declare-fun m!757345 () Bool)

(assert (=> start!70240 m!757345))

(declare-fun m!757347 () Bool)

(assert (=> mapNonEmpty!23065 m!757347))

(declare-fun m!757349 () Bool)

(assert (=> b!815594 m!757349))

(declare-fun m!757351 () Bool)

(assert (=> b!815594 m!757351))

(assert (=> b!815594 m!757351))

(declare-fun m!757353 () Bool)

(assert (=> b!815594 m!757353))

(check-sat (not b!815594) tp_is_empty!14319 (not b!815593) b_and!21415 (not start!70240) (not b_next!12609) (not b!815596) (not mapNonEmpty!23065) (not b!815598))
(check-sat b_and!21415 (not b_next!12609))
