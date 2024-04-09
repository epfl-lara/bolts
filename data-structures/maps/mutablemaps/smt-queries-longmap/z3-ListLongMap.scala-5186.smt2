; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70128 () Bool)

(assert start!70128)

(declare-fun b_free!12525 () Bool)

(declare-fun b_next!12525 () Bool)

(assert (=> start!70128 (= b_free!12525 (not b_next!12525))))

(declare-fun tp!44289 () Bool)

(declare-fun b_and!21315 () Bool)

(assert (=> start!70128 (= tp!44289 b_and!21315)))

(declare-fun b!814508 () Bool)

(declare-fun e!451564 () Bool)

(declare-fun tp_is_empty!14235 () Bool)

(assert (=> b!814508 (= e!451564 tp_is_empty!14235)))

(declare-fun b!814509 () Bool)

(declare-fun res!556420 () Bool)

(declare-fun e!451561 () Bool)

(assert (=> b!814509 (=> (not res!556420) (not e!451561))))

(declare-datatypes ((array!44656 0))(
  ( (array!44657 (arr!21384 (Array (_ BitVec 32) (_ BitVec 64))) (size!21805 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44656)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23981 0))(
  ( (V!23982 (val!7165 Int)) )
))
(declare-datatypes ((ValueCell!6702 0))(
  ( (ValueCellFull!6702 (v!9588 V!23981)) (EmptyCell!6702) )
))
(declare-datatypes ((array!44658 0))(
  ( (array!44659 (arr!21385 (Array (_ BitVec 32) ValueCell!6702)) (size!21806 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44658)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814509 (= res!556420 (and (= (size!21806 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21805 _keys!976) (size!21806 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814510 () Bool)

(declare-fun res!556418 () Bool)

(assert (=> b!814510 (=> (not res!556418) (not e!451561))))

(declare-datatypes ((List!15271 0))(
  ( (Nil!15268) (Cons!15267 (h!16396 (_ BitVec 64)) (t!21596 List!15271)) )
))
(declare-fun arrayNoDuplicates!0 (array!44656 (_ BitVec 32) List!15271) Bool)

(assert (=> b!814510 (= res!556418 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15268))))

(declare-fun b!814511 () Bool)

(declare-fun res!556421 () Bool)

(assert (=> b!814511 (=> (not res!556421) (not e!451561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44656 (_ BitVec 32)) Bool)

(assert (=> b!814511 (= res!556421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814512 () Bool)

(declare-fun e!451563 () Bool)

(assert (=> b!814512 (= e!451563 tp_is_empty!14235)))

(declare-fun mapIsEmpty!22933 () Bool)

(declare-fun mapRes!22933 () Bool)

(assert (=> mapIsEmpty!22933 mapRes!22933))

(declare-fun mapNonEmpty!22933 () Bool)

(declare-fun tp!44290 () Bool)

(assert (=> mapNonEmpty!22933 (= mapRes!22933 (and tp!44290 e!451564))))

(declare-fun mapValue!22933 () ValueCell!6702)

(declare-fun mapKey!22933 () (_ BitVec 32))

(declare-fun mapRest!22933 () (Array (_ BitVec 32) ValueCell!6702))

(assert (=> mapNonEmpty!22933 (= (arr!21385 _values!788) (store mapRest!22933 mapKey!22933 mapValue!22933))))

(declare-fun res!556419 () Bool)

(assert (=> start!70128 (=> (not res!556419) (not e!451561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70128 (= res!556419 (validMask!0 mask!1312))))

(assert (=> start!70128 e!451561))

(assert (=> start!70128 tp_is_empty!14235))

(declare-fun array_inv!17089 (array!44656) Bool)

(assert (=> start!70128 (array_inv!17089 _keys!976)))

(assert (=> start!70128 true))

(declare-fun e!451562 () Bool)

(declare-fun array_inv!17090 (array!44658) Bool)

(assert (=> start!70128 (and (array_inv!17090 _values!788) e!451562)))

(assert (=> start!70128 tp!44289))

(declare-fun b!814513 () Bool)

(assert (=> b!814513 (= e!451561 (not true))))

(declare-datatypes ((tuple2!9398 0))(
  ( (tuple2!9399 (_1!4709 (_ BitVec 64)) (_2!4709 V!23981)) )
))
(declare-datatypes ((List!15272 0))(
  ( (Nil!15269) (Cons!15268 (h!16397 tuple2!9398) (t!21597 List!15272)) )
))
(declare-datatypes ((ListLongMap!8235 0))(
  ( (ListLongMap!8236 (toList!4133 List!15272)) )
))
(declare-fun lt!364661 () ListLongMap!8235)

(declare-fun lt!364659 () ListLongMap!8235)

(assert (=> b!814513 (= lt!364661 lt!364659)))

(declare-fun zeroValueBefore!34 () V!23981)

(declare-fun zeroValueAfter!34 () V!23981)

(declare-fun minValue!754 () V!23981)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27722 0))(
  ( (Unit!27723) )
))
(declare-fun lt!364660 () Unit!27722)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!298 (array!44656 array!44658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23981 V!23981 V!23981 V!23981 (_ BitVec 32) Int) Unit!27722)

(assert (=> b!814513 (= lt!364660 (lemmaNoChangeToArrayThenSameMapNoExtras!298 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2182 (array!44656 array!44658 (_ BitVec 32) (_ BitVec 32) V!23981 V!23981 (_ BitVec 32) Int) ListLongMap!8235)

(assert (=> b!814513 (= lt!364659 (getCurrentListMapNoExtraKeys!2182 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814513 (= lt!364661 (getCurrentListMapNoExtraKeys!2182 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814514 () Bool)

(assert (=> b!814514 (= e!451562 (and e!451563 mapRes!22933))))

(declare-fun condMapEmpty!22933 () Bool)

(declare-fun mapDefault!22933 () ValueCell!6702)

(assert (=> b!814514 (= condMapEmpty!22933 (= (arr!21385 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6702)) mapDefault!22933)))))

(assert (= (and start!70128 res!556419) b!814509))

(assert (= (and b!814509 res!556420) b!814511))

(assert (= (and b!814511 res!556421) b!814510))

(assert (= (and b!814510 res!556418) b!814513))

(assert (= (and b!814514 condMapEmpty!22933) mapIsEmpty!22933))

(assert (= (and b!814514 (not condMapEmpty!22933)) mapNonEmpty!22933))

(get-info :version)

(assert (= (and mapNonEmpty!22933 ((_ is ValueCellFull!6702) mapValue!22933)) b!814508))

(assert (= (and b!814514 ((_ is ValueCellFull!6702) mapDefault!22933)) b!814512))

(assert (= start!70128 b!814514))

(declare-fun m!756383 () Bool)

(assert (=> mapNonEmpty!22933 m!756383))

(declare-fun m!756385 () Bool)

(assert (=> b!814513 m!756385))

(declare-fun m!756387 () Bool)

(assert (=> b!814513 m!756387))

(declare-fun m!756389 () Bool)

(assert (=> b!814513 m!756389))

(declare-fun m!756391 () Bool)

(assert (=> b!814511 m!756391))

(declare-fun m!756393 () Bool)

(assert (=> start!70128 m!756393))

(declare-fun m!756395 () Bool)

(assert (=> start!70128 m!756395))

(declare-fun m!756397 () Bool)

(assert (=> start!70128 m!756397))

(declare-fun m!756399 () Bool)

(assert (=> b!814510 m!756399))

(check-sat (not mapNonEmpty!22933) b_and!21315 (not b!814510) (not b_next!12525) (not start!70128) (not b!814513) tp_is_empty!14235 (not b!814511))
(check-sat b_and!21315 (not b_next!12525))
