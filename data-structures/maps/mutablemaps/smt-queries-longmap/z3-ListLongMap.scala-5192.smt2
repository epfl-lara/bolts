; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70178 () Bool)

(assert start!70178)

(declare-fun b_free!12561 () Bool)

(declare-fun b_next!12561 () Bool)

(assert (=> start!70178 (= b_free!12561 (not b_next!12561))))

(declare-fun tp!44400 () Bool)

(declare-fun b_and!21359 () Bool)

(assert (=> start!70178 (= tp!44400 b_and!21359)))

(declare-fun b!814971 () Bool)

(declare-fun res!556666 () Bool)

(declare-fun e!451889 () Bool)

(assert (=> b!814971 (=> (not res!556666) (not e!451889))))

(declare-datatypes ((array!44730 0))(
  ( (array!44731 (arr!21420 (Array (_ BitVec 32) (_ BitVec 64))) (size!21841 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44730)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24029 0))(
  ( (V!24030 (val!7183 Int)) )
))
(declare-datatypes ((ValueCell!6720 0))(
  ( (ValueCellFull!6720 (v!9606 V!24029)) (EmptyCell!6720) )
))
(declare-datatypes ((array!44732 0))(
  ( (array!44733 (arr!21421 (Array (_ BitVec 32) ValueCell!6720)) (size!21842 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44732)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814971 (= res!556666 (and (= (size!21842 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21841 _keys!976) (size!21842 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814972 () Bool)

(declare-fun e!451886 () Bool)

(declare-fun tp_is_empty!14271 () Bool)

(assert (=> b!814972 (= e!451886 tp_is_empty!14271)))

(declare-fun res!556668 () Bool)

(assert (=> start!70178 (=> (not res!556668) (not e!451889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70178 (= res!556668 (validMask!0 mask!1312))))

(assert (=> start!70178 e!451889))

(assert (=> start!70178 tp_is_empty!14271))

(declare-fun array_inv!17119 (array!44730) Bool)

(assert (=> start!70178 (array_inv!17119 _keys!976)))

(assert (=> start!70178 true))

(declare-fun e!451888 () Bool)

(declare-fun array_inv!17120 (array!44732) Bool)

(assert (=> start!70178 (and (array_inv!17120 _values!788) e!451888)))

(assert (=> start!70178 tp!44400))

(declare-fun mapNonEmpty!22990 () Bool)

(declare-fun mapRes!22990 () Bool)

(declare-fun tp!44401 () Bool)

(assert (=> mapNonEmpty!22990 (= mapRes!22990 (and tp!44401 e!451886))))

(declare-fun mapRest!22990 () (Array (_ BitVec 32) ValueCell!6720))

(declare-fun mapValue!22990 () ValueCell!6720)

(declare-fun mapKey!22990 () (_ BitVec 32))

(assert (=> mapNonEmpty!22990 (= (arr!21421 _values!788) (store mapRest!22990 mapKey!22990 mapValue!22990))))

(declare-fun b!814973 () Bool)

(declare-fun res!556667 () Bool)

(assert (=> b!814973 (=> (not res!556667) (not e!451889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44730 (_ BitVec 32)) Bool)

(assert (=> b!814973 (= res!556667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814974 () Bool)

(declare-fun res!556665 () Bool)

(assert (=> b!814974 (=> (not res!556665) (not e!451889))))

(declare-datatypes ((List!15303 0))(
  ( (Nil!15300) (Cons!15299 (h!16428 (_ BitVec 64)) (t!21630 List!15303)) )
))
(declare-fun arrayNoDuplicates!0 (array!44730 (_ BitVec 32) List!15303) Bool)

(assert (=> b!814974 (= res!556665 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15300))))

(declare-fun mapIsEmpty!22990 () Bool)

(assert (=> mapIsEmpty!22990 mapRes!22990))

(declare-fun b!814975 () Bool)

(declare-fun e!451887 () Bool)

(assert (=> b!814975 (= e!451888 (and e!451887 mapRes!22990))))

(declare-fun condMapEmpty!22990 () Bool)

(declare-fun mapDefault!22990 () ValueCell!6720)

(assert (=> b!814975 (= condMapEmpty!22990 (= (arr!21421 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6720)) mapDefault!22990)))))

(declare-fun b!814976 () Bool)

(assert (=> b!814976 (= e!451889 (not true))))

(declare-datatypes ((tuple2!9430 0))(
  ( (tuple2!9431 (_1!4725 (_ BitVec 64)) (_2!4725 V!24029)) )
))
(declare-datatypes ((List!15304 0))(
  ( (Nil!15301) (Cons!15300 (h!16429 tuple2!9430) (t!21631 List!15304)) )
))
(declare-datatypes ((ListLongMap!8267 0))(
  ( (ListLongMap!8268 (toList!4149 List!15304)) )
))
(declare-fun lt!364863 () ListLongMap!8267)

(declare-fun lt!364862 () ListLongMap!8267)

(assert (=> b!814976 (= lt!364863 lt!364862)))

(declare-fun zeroValueBefore!34 () V!24029)

(declare-fun zeroValueAfter!34 () V!24029)

(declare-fun minValue!754 () V!24029)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27754 0))(
  ( (Unit!27755) )
))
(declare-fun lt!364861 () Unit!27754)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!314 (array!44730 array!44732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24029 V!24029 V!24029 V!24029 (_ BitVec 32) Int) Unit!27754)

(assert (=> b!814976 (= lt!364861 (lemmaNoChangeToArrayThenSameMapNoExtras!314 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2198 (array!44730 array!44732 (_ BitVec 32) (_ BitVec 32) V!24029 V!24029 (_ BitVec 32) Int) ListLongMap!8267)

(assert (=> b!814976 (= lt!364862 (getCurrentListMapNoExtraKeys!2198 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814976 (= lt!364863 (getCurrentListMapNoExtraKeys!2198 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814977 () Bool)

(assert (=> b!814977 (= e!451887 tp_is_empty!14271)))

(assert (= (and start!70178 res!556668) b!814971))

(assert (= (and b!814971 res!556666) b!814973))

(assert (= (and b!814973 res!556667) b!814974))

(assert (= (and b!814974 res!556665) b!814976))

(assert (= (and b!814975 condMapEmpty!22990) mapIsEmpty!22990))

(assert (= (and b!814975 (not condMapEmpty!22990)) mapNonEmpty!22990))

(get-info :version)

(assert (= (and mapNonEmpty!22990 ((_ is ValueCellFull!6720) mapValue!22990)) b!814972))

(assert (= (and b!814975 ((_ is ValueCellFull!6720) mapDefault!22990)) b!814977))

(assert (= start!70178 b!814975))

(declare-fun m!756773 () Bool)

(assert (=> b!814976 m!756773))

(declare-fun m!756775 () Bool)

(assert (=> b!814976 m!756775))

(declare-fun m!756777 () Bool)

(assert (=> b!814976 m!756777))

(declare-fun m!756779 () Bool)

(assert (=> b!814973 m!756779))

(declare-fun m!756781 () Bool)

(assert (=> mapNonEmpty!22990 m!756781))

(declare-fun m!756783 () Bool)

(assert (=> b!814974 m!756783))

(declare-fun m!756785 () Bool)

(assert (=> start!70178 m!756785))

(declare-fun m!756787 () Bool)

(assert (=> start!70178 m!756787))

(declare-fun m!756789 () Bool)

(assert (=> start!70178 m!756789))

(check-sat (not b!814973) tp_is_empty!14271 (not b_next!12561) (not mapNonEmpty!22990) (not b!814974) (not b!814976) b_and!21359 (not start!70178))
(check-sat b_and!21359 (not b_next!12561))
