; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70056 () Bool)

(assert start!70056)

(declare-fun b_free!12453 () Bool)

(declare-fun b_next!12453 () Bool)

(assert (=> start!70056 (= b_free!12453 (not b_next!12453))))

(declare-fun tp!44074 () Bool)

(declare-fun b_and!21243 () Bool)

(assert (=> start!70056 (= tp!44074 b_and!21243)))

(declare-fun b!813752 () Bool)

(declare-fun e!451023 () Bool)

(declare-fun e!451021 () Bool)

(declare-fun mapRes!22825 () Bool)

(assert (=> b!813752 (= e!451023 (and e!451021 mapRes!22825))))

(declare-fun condMapEmpty!22825 () Bool)

(declare-datatypes ((V!23885 0))(
  ( (V!23886 (val!7129 Int)) )
))
(declare-datatypes ((ValueCell!6666 0))(
  ( (ValueCellFull!6666 (v!9552 V!23885)) (EmptyCell!6666) )
))
(declare-datatypes ((array!44516 0))(
  ( (array!44517 (arr!21314 (Array (_ BitVec 32) ValueCell!6666)) (size!21735 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44516)

(declare-fun mapDefault!22825 () ValueCell!6666)

(assert (=> b!813752 (= condMapEmpty!22825 (= (arr!21314 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6666)) mapDefault!22825)))))

(declare-fun b!813753 () Bool)

(declare-fun tp_is_empty!14163 () Bool)

(assert (=> b!813753 (= e!451021 tp_is_empty!14163)))

(declare-fun b!813754 () Bool)

(declare-fun e!451022 () Bool)

(assert (=> b!813754 (= e!451022 false)))

(declare-datatypes ((array!44518 0))(
  ( (array!44519 (arr!21315 (Array (_ BitVec 32) (_ BitVec 64))) (size!21736 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44518)

(declare-datatypes ((tuple2!9344 0))(
  ( (tuple2!9345 (_1!4682 (_ BitVec 64)) (_2!4682 V!23885)) )
))
(declare-datatypes ((List!15221 0))(
  ( (Nil!15218) (Cons!15217 (h!16346 tuple2!9344) (t!21546 List!15221)) )
))
(declare-datatypes ((ListLongMap!8181 0))(
  ( (ListLongMap!8182 (toList!4106 List!15221)) )
))
(declare-fun lt!364375 () ListLongMap!8181)

(declare-fun zeroValueAfter!34 () V!23885)

(declare-fun minValue!754 () V!23885)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2155 (array!44518 array!44516 (_ BitVec 32) (_ BitVec 32) V!23885 V!23885 (_ BitVec 32) Int) ListLongMap!8181)

(assert (=> b!813754 (= lt!364375 (getCurrentListMapNoExtraKeys!2155 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23885)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364376 () ListLongMap!8181)

(assert (=> b!813754 (= lt!364376 (getCurrentListMapNoExtraKeys!2155 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813755 () Bool)

(declare-fun res!555988 () Bool)

(assert (=> b!813755 (=> (not res!555988) (not e!451022))))

(assert (=> b!813755 (= res!555988 (and (= (size!21735 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21736 _keys!976) (size!21735 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813756 () Bool)

(declare-fun res!555986 () Bool)

(assert (=> b!813756 (=> (not res!555986) (not e!451022))))

(declare-datatypes ((List!15222 0))(
  ( (Nil!15219) (Cons!15218 (h!16347 (_ BitVec 64)) (t!21547 List!15222)) )
))
(declare-fun arrayNoDuplicates!0 (array!44518 (_ BitVec 32) List!15222) Bool)

(assert (=> b!813756 (= res!555986 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15219))))

(declare-fun b!813757 () Bool)

(declare-fun e!451025 () Bool)

(assert (=> b!813757 (= e!451025 tp_is_empty!14163)))

(declare-fun res!555987 () Bool)

(assert (=> start!70056 (=> (not res!555987) (not e!451022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70056 (= res!555987 (validMask!0 mask!1312))))

(assert (=> start!70056 e!451022))

(assert (=> start!70056 tp_is_empty!14163))

(declare-fun array_inv!17047 (array!44518) Bool)

(assert (=> start!70056 (array_inv!17047 _keys!976)))

(assert (=> start!70056 true))

(declare-fun array_inv!17048 (array!44516) Bool)

(assert (=> start!70056 (and (array_inv!17048 _values!788) e!451023)))

(assert (=> start!70056 tp!44074))

(declare-fun mapNonEmpty!22825 () Bool)

(declare-fun tp!44073 () Bool)

(assert (=> mapNonEmpty!22825 (= mapRes!22825 (and tp!44073 e!451025))))

(declare-fun mapValue!22825 () ValueCell!6666)

(declare-fun mapRest!22825 () (Array (_ BitVec 32) ValueCell!6666))

(declare-fun mapKey!22825 () (_ BitVec 32))

(assert (=> mapNonEmpty!22825 (= (arr!21314 _values!788) (store mapRest!22825 mapKey!22825 mapValue!22825))))

(declare-fun mapIsEmpty!22825 () Bool)

(assert (=> mapIsEmpty!22825 mapRes!22825))

(declare-fun b!813758 () Bool)

(declare-fun res!555989 () Bool)

(assert (=> b!813758 (=> (not res!555989) (not e!451022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44518 (_ BitVec 32)) Bool)

(assert (=> b!813758 (= res!555989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70056 res!555987) b!813755))

(assert (= (and b!813755 res!555988) b!813758))

(assert (= (and b!813758 res!555989) b!813756))

(assert (= (and b!813756 res!555986) b!813754))

(assert (= (and b!813752 condMapEmpty!22825) mapIsEmpty!22825))

(assert (= (and b!813752 (not condMapEmpty!22825)) mapNonEmpty!22825))

(get-info :version)

(assert (= (and mapNonEmpty!22825 ((_ is ValueCellFull!6666) mapValue!22825)) b!813757))

(assert (= (and b!813752 ((_ is ValueCellFull!6666) mapDefault!22825)) b!813753))

(assert (= start!70056 b!813752))

(declare-fun m!755763 () Bool)

(assert (=> mapNonEmpty!22825 m!755763))

(declare-fun m!755765 () Bool)

(assert (=> start!70056 m!755765))

(declare-fun m!755767 () Bool)

(assert (=> start!70056 m!755767))

(declare-fun m!755769 () Bool)

(assert (=> start!70056 m!755769))

(declare-fun m!755771 () Bool)

(assert (=> b!813758 m!755771))

(declare-fun m!755773 () Bool)

(assert (=> b!813756 m!755773))

(declare-fun m!755775 () Bool)

(assert (=> b!813754 m!755775))

(declare-fun m!755777 () Bool)

(assert (=> b!813754 m!755777))

(check-sat b_and!21243 (not mapNonEmpty!22825) (not b!813754) (not start!70056) (not b!813756) (not b_next!12453) (not b!813758) tp_is_empty!14163)
(check-sat b_and!21243 (not b_next!12453))
