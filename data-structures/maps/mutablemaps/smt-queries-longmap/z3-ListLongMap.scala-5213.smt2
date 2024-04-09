; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70336 () Bool)

(assert start!70336)

(declare-fun b_free!12687 () Bool)

(declare-fun b_next!12687 () Bool)

(assert (=> start!70336 (= b_free!12687 (not b_next!12687))))

(declare-fun tp!44785 () Bool)

(declare-fun b_and!21505 () Bool)

(assert (=> start!70336 (= tp!44785 b_and!21505)))

(declare-fun mapNonEmpty!23185 () Bool)

(declare-fun mapRes!23185 () Bool)

(declare-fun tp!44784 () Bool)

(declare-fun e!453148 () Bool)

(assert (=> mapNonEmpty!23185 (= mapRes!23185 (and tp!44784 e!453148))))

(declare-datatypes ((V!24197 0))(
  ( (V!24198 (val!7246 Int)) )
))
(declare-datatypes ((ValueCell!6783 0))(
  ( (ValueCellFull!6783 (v!9670 V!24197)) (EmptyCell!6783) )
))
(declare-fun mapRest!23185 () (Array (_ BitVec 32) ValueCell!6783))

(declare-fun mapKey!23185 () (_ BitVec 32))

(declare-datatypes ((array!44972 0))(
  ( (array!44973 (arr!21539 (Array (_ BitVec 32) ValueCell!6783)) (size!21960 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44972)

(declare-fun mapValue!23185 () ValueCell!6783)

(assert (=> mapNonEmpty!23185 (= (arr!21539 _values!788) (store mapRest!23185 mapKey!23185 mapValue!23185))))

(declare-fun b!816712 () Bool)

(declare-fun tp_is_empty!14397 () Bool)

(assert (=> b!816712 (= e!453148 tp_is_empty!14397)))

(declare-fun mapIsEmpty!23185 () Bool)

(assert (=> mapIsEmpty!23185 mapRes!23185))

(declare-fun b!816713 () Bool)

(declare-fun e!453147 () Bool)

(declare-fun e!453145 () Bool)

(assert (=> b!816713 (= e!453147 (not e!453145))))

(declare-fun res!557684 () Bool)

(assert (=> b!816713 (=> res!557684 e!453145)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816713 (= res!557684 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9526 0))(
  ( (tuple2!9527 (_1!4773 (_ BitVec 64)) (_2!4773 V!24197)) )
))
(declare-datatypes ((List!15396 0))(
  ( (Nil!15393) (Cons!15392 (h!16521 tuple2!9526) (t!21727 List!15396)) )
))
(declare-datatypes ((ListLongMap!8363 0))(
  ( (ListLongMap!8364 (toList!4197 List!15396)) )
))
(declare-fun lt!365888 () ListLongMap!8363)

(declare-fun lt!365892 () ListLongMap!8363)

(assert (=> b!816713 (= lt!365888 lt!365892)))

(declare-fun zeroValueBefore!34 () V!24197)

(declare-datatypes ((Unit!27846 0))(
  ( (Unit!27847) )
))
(declare-fun lt!365890 () Unit!27846)

(declare-datatypes ((array!44974 0))(
  ( (array!44975 (arr!21540 (Array (_ BitVec 32) (_ BitVec 64))) (size!21961 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44974)

(declare-fun zeroValueAfter!34 () V!24197)

(declare-fun minValue!754 () V!24197)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!359 (array!44974 array!44972 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24197 V!24197 V!24197 V!24197 (_ BitVec 32) Int) Unit!27846)

(assert (=> b!816713 (= lt!365890 (lemmaNoChangeToArrayThenSameMapNoExtras!359 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2243 (array!44974 array!44972 (_ BitVec 32) (_ BitVec 32) V!24197 V!24197 (_ BitVec 32) Int) ListLongMap!8363)

(assert (=> b!816713 (= lt!365892 (getCurrentListMapNoExtraKeys!2243 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816713 (= lt!365888 (getCurrentListMapNoExtraKeys!2243 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816714 () Bool)

(assert (=> b!816714 (= e!453145 true)))

(declare-fun lt!365891 () ListLongMap!8363)

(declare-fun getCurrentListMap!2382 (array!44974 array!44972 (_ BitVec 32) (_ BitVec 32) V!24197 V!24197 (_ BitVec 32) Int) ListLongMap!8363)

(assert (=> b!816714 (= lt!365891 (getCurrentListMap!2382 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365889 () ListLongMap!8363)

(declare-fun +!1781 (ListLongMap!8363 tuple2!9526) ListLongMap!8363)

(assert (=> b!816714 (= lt!365889 (+!1781 (getCurrentListMap!2382 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816715 () Bool)

(declare-fun e!453146 () Bool)

(assert (=> b!816715 (= e!453146 tp_is_empty!14397)))

(declare-fun b!816716 () Bool)

(declare-fun e!453149 () Bool)

(assert (=> b!816716 (= e!453149 (and e!453146 mapRes!23185))))

(declare-fun condMapEmpty!23185 () Bool)

(declare-fun mapDefault!23185 () ValueCell!6783)

(assert (=> b!816716 (= condMapEmpty!23185 (= (arr!21539 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6783)) mapDefault!23185)))))

(declare-fun b!816717 () Bool)

(declare-fun res!557685 () Bool)

(assert (=> b!816717 (=> (not res!557685) (not e!453147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44974 (_ BitVec 32)) Bool)

(assert (=> b!816717 (= res!557685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!557687 () Bool)

(assert (=> start!70336 (=> (not res!557687) (not e!453147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70336 (= res!557687 (validMask!0 mask!1312))))

(assert (=> start!70336 e!453147))

(assert (=> start!70336 tp_is_empty!14397))

(declare-fun array_inv!17205 (array!44974) Bool)

(assert (=> start!70336 (array_inv!17205 _keys!976)))

(assert (=> start!70336 true))

(declare-fun array_inv!17206 (array!44972) Bool)

(assert (=> start!70336 (and (array_inv!17206 _values!788) e!453149)))

(assert (=> start!70336 tp!44785))

(declare-fun b!816718 () Bool)

(declare-fun res!557686 () Bool)

(assert (=> b!816718 (=> (not res!557686) (not e!453147))))

(assert (=> b!816718 (= res!557686 (and (= (size!21960 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21961 _keys!976) (size!21960 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816719 () Bool)

(declare-fun res!557683 () Bool)

(assert (=> b!816719 (=> (not res!557683) (not e!453147))))

(declare-datatypes ((List!15397 0))(
  ( (Nil!15394) (Cons!15393 (h!16522 (_ BitVec 64)) (t!21728 List!15397)) )
))
(declare-fun arrayNoDuplicates!0 (array!44974 (_ BitVec 32) List!15397) Bool)

(assert (=> b!816719 (= res!557683 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15394))))

(assert (= (and start!70336 res!557687) b!816718))

(assert (= (and b!816718 res!557686) b!816717))

(assert (= (and b!816717 res!557685) b!816719))

(assert (= (and b!816719 res!557683) b!816713))

(assert (= (and b!816713 (not res!557684)) b!816714))

(assert (= (and b!816716 condMapEmpty!23185) mapIsEmpty!23185))

(assert (= (and b!816716 (not condMapEmpty!23185)) mapNonEmpty!23185))

(get-info :version)

(assert (= (and mapNonEmpty!23185 ((_ is ValueCellFull!6783) mapValue!23185)) b!816712))

(assert (= (and b!816716 ((_ is ValueCellFull!6783) mapDefault!23185)) b!816715))

(assert (= start!70336 b!816716))

(declare-fun m!758437 () Bool)

(assert (=> mapNonEmpty!23185 m!758437))

(declare-fun m!758439 () Bool)

(assert (=> b!816713 m!758439))

(declare-fun m!758441 () Bool)

(assert (=> b!816713 m!758441))

(declare-fun m!758443 () Bool)

(assert (=> b!816713 m!758443))

(declare-fun m!758445 () Bool)

(assert (=> start!70336 m!758445))

(declare-fun m!758447 () Bool)

(assert (=> start!70336 m!758447))

(declare-fun m!758449 () Bool)

(assert (=> start!70336 m!758449))

(declare-fun m!758451 () Bool)

(assert (=> b!816714 m!758451))

(declare-fun m!758453 () Bool)

(assert (=> b!816714 m!758453))

(assert (=> b!816714 m!758453))

(declare-fun m!758455 () Bool)

(assert (=> b!816714 m!758455))

(declare-fun m!758457 () Bool)

(assert (=> b!816719 m!758457))

(declare-fun m!758459 () Bool)

(assert (=> b!816717 m!758459))

(check-sat (not mapNonEmpty!23185) (not b!816713) (not b!816717) (not b!816714) tp_is_empty!14397 (not b!816719) (not b_next!12687) (not start!70336) b_and!21505)
(check-sat b_and!21505 (not b_next!12687))
