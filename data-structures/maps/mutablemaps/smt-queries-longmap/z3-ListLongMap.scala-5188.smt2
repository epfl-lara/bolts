; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70154 () Bool)

(assert start!70154)

(declare-fun b_free!12537 () Bool)

(declare-fun b_next!12537 () Bool)

(assert (=> start!70154 (= b_free!12537 (not b_next!12537))))

(declare-fun tp!44328 () Bool)

(declare-fun b_and!21335 () Bool)

(assert (=> start!70154 (= tp!44328 b_and!21335)))

(declare-fun b!814719 () Bool)

(declare-fun e!451710 () Bool)

(declare-fun tp_is_empty!14247 () Bool)

(assert (=> b!814719 (= e!451710 tp_is_empty!14247)))

(declare-fun mapNonEmpty!22954 () Bool)

(declare-fun mapRes!22954 () Bool)

(declare-fun tp!44329 () Bool)

(assert (=> mapNonEmpty!22954 (= mapRes!22954 (and tp!44329 e!451710))))

(declare-datatypes ((V!23997 0))(
  ( (V!23998 (val!7171 Int)) )
))
(declare-datatypes ((ValueCell!6708 0))(
  ( (ValueCellFull!6708 (v!9594 V!23997)) (EmptyCell!6708) )
))
(declare-datatypes ((array!44682 0))(
  ( (array!44683 (arr!21396 (Array (_ BitVec 32) ValueCell!6708)) (size!21817 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44682)

(declare-fun mapValue!22954 () ValueCell!6708)

(declare-fun mapRest!22954 () (Array (_ BitVec 32) ValueCell!6708))

(declare-fun mapKey!22954 () (_ BitVec 32))

(assert (=> mapNonEmpty!22954 (= (arr!21396 _values!788) (store mapRest!22954 mapKey!22954 mapValue!22954))))

(declare-fun mapIsEmpty!22954 () Bool)

(assert (=> mapIsEmpty!22954 mapRes!22954))

(declare-fun b!814720 () Bool)

(declare-fun res!556522 () Bool)

(declare-fun e!451708 () Bool)

(assert (=> b!814720 (=> (not res!556522) (not e!451708))))

(declare-datatypes ((array!44684 0))(
  ( (array!44685 (arr!21397 (Array (_ BitVec 32) (_ BitVec 64))) (size!21818 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44684)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44684 (_ BitVec 32)) Bool)

(assert (=> b!814720 (= res!556522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814721 () Bool)

(declare-fun e!451707 () Bool)

(declare-fun e!451709 () Bool)

(assert (=> b!814721 (= e!451707 (and e!451709 mapRes!22954))))

(declare-fun condMapEmpty!22954 () Bool)

(declare-fun mapDefault!22954 () ValueCell!6708)

(assert (=> b!814721 (= condMapEmpty!22954 (= (arr!21396 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6708)) mapDefault!22954)))))

(declare-fun b!814722 () Bool)

(assert (=> b!814722 (= e!451708 (not true))))

(declare-datatypes ((tuple2!9408 0))(
  ( (tuple2!9409 (_1!4714 (_ BitVec 64)) (_2!4714 V!23997)) )
))
(declare-datatypes ((List!15280 0))(
  ( (Nil!15277) (Cons!15276 (h!16405 tuple2!9408) (t!21607 List!15280)) )
))
(declare-datatypes ((ListLongMap!8245 0))(
  ( (ListLongMap!8246 (toList!4138 List!15280)) )
))
(declare-fun lt!364754 () ListLongMap!8245)

(declare-fun lt!364753 () ListLongMap!8245)

(assert (=> b!814722 (= lt!364754 lt!364753)))

(declare-datatypes ((Unit!27732 0))(
  ( (Unit!27733) )
))
(declare-fun lt!364755 () Unit!27732)

(declare-fun zeroValueBefore!34 () V!23997)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23997)

(declare-fun minValue!754 () V!23997)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!303 (array!44684 array!44682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23997 V!23997 V!23997 V!23997 (_ BitVec 32) Int) Unit!27732)

(assert (=> b!814722 (= lt!364755 (lemmaNoChangeToArrayThenSameMapNoExtras!303 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2187 (array!44684 array!44682 (_ BitVec 32) (_ BitVec 32) V!23997 V!23997 (_ BitVec 32) Int) ListLongMap!8245)

(assert (=> b!814722 (= lt!364753 (getCurrentListMapNoExtraKeys!2187 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814722 (= lt!364754 (getCurrentListMapNoExtraKeys!2187 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814723 () Bool)

(declare-fun res!556524 () Bool)

(assert (=> b!814723 (=> (not res!556524) (not e!451708))))

(declare-datatypes ((List!15281 0))(
  ( (Nil!15278) (Cons!15277 (h!16406 (_ BitVec 64)) (t!21608 List!15281)) )
))
(declare-fun arrayNoDuplicates!0 (array!44684 (_ BitVec 32) List!15281) Bool)

(assert (=> b!814723 (= res!556524 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15278))))

(declare-fun b!814724 () Bool)

(assert (=> b!814724 (= e!451709 tp_is_empty!14247)))

(declare-fun res!556521 () Bool)

(assert (=> start!70154 (=> (not res!556521) (not e!451708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70154 (= res!556521 (validMask!0 mask!1312))))

(assert (=> start!70154 e!451708))

(assert (=> start!70154 tp_is_empty!14247))

(declare-fun array_inv!17097 (array!44684) Bool)

(assert (=> start!70154 (array_inv!17097 _keys!976)))

(assert (=> start!70154 true))

(declare-fun array_inv!17098 (array!44682) Bool)

(assert (=> start!70154 (and (array_inv!17098 _values!788) e!451707)))

(assert (=> start!70154 tp!44328))

(declare-fun b!814725 () Bool)

(declare-fun res!556523 () Bool)

(assert (=> b!814725 (=> (not res!556523) (not e!451708))))

(assert (=> b!814725 (= res!556523 (and (= (size!21817 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21818 _keys!976) (size!21817 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70154 res!556521) b!814725))

(assert (= (and b!814725 res!556523) b!814720))

(assert (= (and b!814720 res!556522) b!814723))

(assert (= (and b!814723 res!556524) b!814722))

(assert (= (and b!814721 condMapEmpty!22954) mapIsEmpty!22954))

(assert (= (and b!814721 (not condMapEmpty!22954)) mapNonEmpty!22954))

(get-info :version)

(assert (= (and mapNonEmpty!22954 ((_ is ValueCellFull!6708) mapValue!22954)) b!814719))

(assert (= (and b!814721 ((_ is ValueCellFull!6708) mapDefault!22954)) b!814724))

(assert (= start!70154 b!814721))

(declare-fun m!756557 () Bool)

(assert (=> b!814722 m!756557))

(declare-fun m!756559 () Bool)

(assert (=> b!814722 m!756559))

(declare-fun m!756561 () Bool)

(assert (=> b!814722 m!756561))

(declare-fun m!756563 () Bool)

(assert (=> mapNonEmpty!22954 m!756563))

(declare-fun m!756565 () Bool)

(assert (=> b!814723 m!756565))

(declare-fun m!756567 () Bool)

(assert (=> b!814720 m!756567))

(declare-fun m!756569 () Bool)

(assert (=> start!70154 m!756569))

(declare-fun m!756571 () Bool)

(assert (=> start!70154 m!756571))

(declare-fun m!756573 () Bool)

(assert (=> start!70154 m!756573))

(check-sat (not mapNonEmpty!22954) b_and!21335 (not b!814722) (not b!814723) tp_is_empty!14247 (not start!70154) (not b!814720) (not b_next!12537))
(check-sat b_and!21335 (not b_next!12537))
