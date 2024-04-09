; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70122 () Bool)

(assert start!70122)

(declare-fun b_free!12519 () Bool)

(declare-fun b_next!12519 () Bool)

(assert (=> start!70122 (= b_free!12519 (not b_next!12519))))

(declare-fun tp!44271 () Bool)

(declare-fun b_and!21309 () Bool)

(assert (=> start!70122 (= tp!44271 b_and!21309)))

(declare-fun b!814445 () Bool)

(declare-fun res!556385 () Bool)

(declare-fun e!451518 () Bool)

(assert (=> b!814445 (=> (not res!556385) (not e!451518))))

(declare-datatypes ((array!44644 0))(
  ( (array!44645 (arr!21378 (Array (_ BitVec 32) (_ BitVec 64))) (size!21799 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44644)

(declare-datatypes ((List!15267 0))(
  ( (Nil!15264) (Cons!15263 (h!16392 (_ BitVec 64)) (t!21592 List!15267)) )
))
(declare-fun arrayNoDuplicates!0 (array!44644 (_ BitVec 32) List!15267) Bool)

(assert (=> b!814445 (= res!556385 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15264))))

(declare-fun mapNonEmpty!22924 () Bool)

(declare-fun mapRes!22924 () Bool)

(declare-fun tp!44272 () Bool)

(declare-fun e!451517 () Bool)

(assert (=> mapNonEmpty!22924 (= mapRes!22924 (and tp!44272 e!451517))))

(declare-fun mapKey!22924 () (_ BitVec 32))

(declare-datatypes ((V!23973 0))(
  ( (V!23974 (val!7162 Int)) )
))
(declare-datatypes ((ValueCell!6699 0))(
  ( (ValueCellFull!6699 (v!9585 V!23973)) (EmptyCell!6699) )
))
(declare-fun mapValue!22924 () ValueCell!6699)

(declare-datatypes ((array!44646 0))(
  ( (array!44647 (arr!21379 (Array (_ BitVec 32) ValueCell!6699)) (size!21800 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44646)

(declare-fun mapRest!22924 () (Array (_ BitVec 32) ValueCell!6699))

(assert (=> mapNonEmpty!22924 (= (arr!21379 _values!788) (store mapRest!22924 mapKey!22924 mapValue!22924))))

(declare-fun b!814446 () Bool)

(declare-fun e!451519 () Bool)

(declare-fun e!451516 () Bool)

(assert (=> b!814446 (= e!451519 (and e!451516 mapRes!22924))))

(declare-fun condMapEmpty!22924 () Bool)

(declare-fun mapDefault!22924 () ValueCell!6699)

(assert (=> b!814446 (= condMapEmpty!22924 (= (arr!21379 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6699)) mapDefault!22924)))))

(declare-fun b!814448 () Bool)

(assert (=> b!814448 (= e!451518 (not true))))

(declare-datatypes ((tuple2!9394 0))(
  ( (tuple2!9395 (_1!4707 (_ BitVec 64)) (_2!4707 V!23973)) )
))
(declare-datatypes ((List!15268 0))(
  ( (Nil!15265) (Cons!15264 (h!16393 tuple2!9394) (t!21593 List!15268)) )
))
(declare-datatypes ((ListLongMap!8231 0))(
  ( (ListLongMap!8232 (toList!4131 List!15268)) )
))
(declare-fun lt!364634 () ListLongMap!8231)

(declare-fun lt!364632 () ListLongMap!8231)

(assert (=> b!814448 (= lt!364634 lt!364632)))

(declare-fun zeroValueBefore!34 () V!23973)

(declare-datatypes ((Unit!27718 0))(
  ( (Unit!27719) )
))
(declare-fun lt!364633 () Unit!27718)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23973)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!23973)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!296 (array!44644 array!44646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23973 V!23973 V!23973 V!23973 (_ BitVec 32) Int) Unit!27718)

(assert (=> b!814448 (= lt!364633 (lemmaNoChangeToArrayThenSameMapNoExtras!296 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2180 (array!44644 array!44646 (_ BitVec 32) (_ BitVec 32) V!23973 V!23973 (_ BitVec 32) Int) ListLongMap!8231)

(assert (=> b!814448 (= lt!364632 (getCurrentListMapNoExtraKeys!2180 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814448 (= lt!364634 (getCurrentListMapNoExtraKeys!2180 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814449 () Bool)

(declare-fun res!556383 () Bool)

(assert (=> b!814449 (=> (not res!556383) (not e!451518))))

(assert (=> b!814449 (= res!556383 (and (= (size!21800 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21799 _keys!976) (size!21800 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814450 () Bool)

(declare-fun res!556384 () Bool)

(assert (=> b!814450 (=> (not res!556384) (not e!451518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44644 (_ BitVec 32)) Bool)

(assert (=> b!814450 (= res!556384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556382 () Bool)

(assert (=> start!70122 (=> (not res!556382) (not e!451518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70122 (= res!556382 (validMask!0 mask!1312))))

(assert (=> start!70122 e!451518))

(declare-fun tp_is_empty!14229 () Bool)

(assert (=> start!70122 tp_is_empty!14229))

(declare-fun array_inv!17083 (array!44644) Bool)

(assert (=> start!70122 (array_inv!17083 _keys!976)))

(assert (=> start!70122 true))

(declare-fun array_inv!17084 (array!44646) Bool)

(assert (=> start!70122 (and (array_inv!17084 _values!788) e!451519)))

(assert (=> start!70122 tp!44271))

(declare-fun b!814447 () Bool)

(assert (=> b!814447 (= e!451516 tp_is_empty!14229)))

(declare-fun mapIsEmpty!22924 () Bool)

(assert (=> mapIsEmpty!22924 mapRes!22924))

(declare-fun b!814451 () Bool)

(assert (=> b!814451 (= e!451517 tp_is_empty!14229)))

(assert (= (and start!70122 res!556382) b!814449))

(assert (= (and b!814449 res!556383) b!814450))

(assert (= (and b!814450 res!556384) b!814445))

(assert (= (and b!814445 res!556385) b!814448))

(assert (= (and b!814446 condMapEmpty!22924) mapIsEmpty!22924))

(assert (= (and b!814446 (not condMapEmpty!22924)) mapNonEmpty!22924))

(get-info :version)

(assert (= (and mapNonEmpty!22924 ((_ is ValueCellFull!6699) mapValue!22924)) b!814451))

(assert (= (and b!814446 ((_ is ValueCellFull!6699) mapDefault!22924)) b!814447))

(assert (= start!70122 b!814446))

(declare-fun m!756329 () Bool)

(assert (=> mapNonEmpty!22924 m!756329))

(declare-fun m!756331 () Bool)

(assert (=> start!70122 m!756331))

(declare-fun m!756333 () Bool)

(assert (=> start!70122 m!756333))

(declare-fun m!756335 () Bool)

(assert (=> start!70122 m!756335))

(declare-fun m!756337 () Bool)

(assert (=> b!814450 m!756337))

(declare-fun m!756339 () Bool)

(assert (=> b!814448 m!756339))

(declare-fun m!756341 () Bool)

(assert (=> b!814448 m!756341))

(declare-fun m!756343 () Bool)

(assert (=> b!814448 m!756343))

(declare-fun m!756345 () Bool)

(assert (=> b!814445 m!756345))

(check-sat (not start!70122) (not b!814445) (not b!814450) (not mapNonEmpty!22924) tp_is_empty!14229 b_and!21309 (not b!814448) (not b_next!12519))
(check-sat b_and!21309 (not b_next!12519))
