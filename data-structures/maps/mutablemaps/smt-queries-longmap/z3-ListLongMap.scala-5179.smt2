; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70086 () Bool)

(assert start!70086)

(declare-fun b_free!12483 () Bool)

(declare-fun b_next!12483 () Bool)

(assert (=> start!70086 (= b_free!12483 (not b_next!12483))))

(declare-fun tp!44164 () Bool)

(declare-fun b_and!21273 () Bool)

(assert (=> start!70086 (= tp!44164 b_and!21273)))

(declare-fun b!814067 () Bool)

(declare-fun e!451250 () Bool)

(declare-fun tp_is_empty!14193 () Bool)

(assert (=> b!814067 (= e!451250 tp_is_empty!14193)))

(declare-fun b!814068 () Bool)

(declare-fun res!556167 () Bool)

(declare-fun e!451249 () Bool)

(assert (=> b!814068 (=> (not res!556167) (not e!451249))))

(declare-datatypes ((array!44574 0))(
  ( (array!44575 (arr!21343 (Array (_ BitVec 32) (_ BitVec 64))) (size!21764 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44574)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23925 0))(
  ( (V!23926 (val!7144 Int)) )
))
(declare-datatypes ((ValueCell!6681 0))(
  ( (ValueCellFull!6681 (v!9567 V!23925)) (EmptyCell!6681) )
))
(declare-datatypes ((array!44576 0))(
  ( (array!44577 (arr!21344 (Array (_ BitVec 32) ValueCell!6681)) (size!21765 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44576)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814068 (= res!556167 (and (= (size!21765 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21764 _keys!976) (size!21765 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814069 () Bool)

(declare-fun res!556168 () Bool)

(assert (=> b!814069 (=> (not res!556168) (not e!451249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44574 (_ BitVec 32)) Bool)

(assert (=> b!814069 (= res!556168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556166 () Bool)

(assert (=> start!70086 (=> (not res!556166) (not e!451249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70086 (= res!556166 (validMask!0 mask!1312))))

(assert (=> start!70086 e!451249))

(assert (=> start!70086 tp_is_empty!14193))

(declare-fun array_inv!17061 (array!44574) Bool)

(assert (=> start!70086 (array_inv!17061 _keys!976)))

(assert (=> start!70086 true))

(declare-fun e!451248 () Bool)

(declare-fun array_inv!17062 (array!44576) Bool)

(assert (=> start!70086 (and (array_inv!17062 _values!788) e!451248)))

(assert (=> start!70086 tp!44164))

(declare-fun mapNonEmpty!22870 () Bool)

(declare-fun mapRes!22870 () Bool)

(declare-fun tp!44163 () Bool)

(declare-fun e!451247 () Bool)

(assert (=> mapNonEmpty!22870 (= mapRes!22870 (and tp!44163 e!451247))))

(declare-fun mapRest!22870 () (Array (_ BitVec 32) ValueCell!6681))

(declare-fun mapKey!22870 () (_ BitVec 32))

(declare-fun mapValue!22870 () ValueCell!6681)

(assert (=> mapNonEmpty!22870 (= (arr!21344 _values!788) (store mapRest!22870 mapKey!22870 mapValue!22870))))

(declare-fun b!814070 () Bool)

(assert (=> b!814070 (= e!451247 tp_is_empty!14193)))

(declare-fun b!814071 () Bool)

(assert (=> b!814071 (= e!451249 (not true))))

(declare-datatypes ((tuple2!9368 0))(
  ( (tuple2!9369 (_1!4694 (_ BitVec 64)) (_2!4694 V!23925)) )
))
(declare-datatypes ((List!15242 0))(
  ( (Nil!15239) (Cons!15238 (h!16367 tuple2!9368) (t!21567 List!15242)) )
))
(declare-datatypes ((ListLongMap!8205 0))(
  ( (ListLongMap!8206 (toList!4118 List!15242)) )
))
(declare-fun lt!364471 () ListLongMap!8205)

(declare-fun lt!364472 () ListLongMap!8205)

(assert (=> b!814071 (= lt!364471 lt!364472)))

(declare-fun zeroValueBefore!34 () V!23925)

(declare-fun zeroValueAfter!34 () V!23925)

(declare-fun minValue!754 () V!23925)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27692 0))(
  ( (Unit!27693) )
))
(declare-fun lt!364470 () Unit!27692)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!283 (array!44574 array!44576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23925 V!23925 V!23925 V!23925 (_ BitVec 32) Int) Unit!27692)

(assert (=> b!814071 (= lt!364470 (lemmaNoChangeToArrayThenSameMapNoExtras!283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2167 (array!44574 array!44576 (_ BitVec 32) (_ BitVec 32) V!23925 V!23925 (_ BitVec 32) Int) ListLongMap!8205)

(assert (=> b!814071 (= lt!364472 (getCurrentListMapNoExtraKeys!2167 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814071 (= lt!364471 (getCurrentListMapNoExtraKeys!2167 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22870 () Bool)

(assert (=> mapIsEmpty!22870 mapRes!22870))

(declare-fun b!814072 () Bool)

(declare-fun res!556169 () Bool)

(assert (=> b!814072 (=> (not res!556169) (not e!451249))))

(declare-datatypes ((List!15243 0))(
  ( (Nil!15240) (Cons!15239 (h!16368 (_ BitVec 64)) (t!21568 List!15243)) )
))
(declare-fun arrayNoDuplicates!0 (array!44574 (_ BitVec 32) List!15243) Bool)

(assert (=> b!814072 (= res!556169 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15240))))

(declare-fun b!814073 () Bool)

(assert (=> b!814073 (= e!451248 (and e!451250 mapRes!22870))))

(declare-fun condMapEmpty!22870 () Bool)

(declare-fun mapDefault!22870 () ValueCell!6681)

(assert (=> b!814073 (= condMapEmpty!22870 (= (arr!21344 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6681)) mapDefault!22870)))))

(assert (= (and start!70086 res!556166) b!814068))

(assert (= (and b!814068 res!556167) b!814069))

(assert (= (and b!814069 res!556168) b!814072))

(assert (= (and b!814072 res!556169) b!814071))

(assert (= (and b!814073 condMapEmpty!22870) mapIsEmpty!22870))

(assert (= (and b!814073 (not condMapEmpty!22870)) mapNonEmpty!22870))

(get-info :version)

(assert (= (and mapNonEmpty!22870 ((_ is ValueCellFull!6681) mapValue!22870)) b!814070))

(assert (= (and b!814073 ((_ is ValueCellFull!6681) mapDefault!22870)) b!814067))

(assert (= start!70086 b!814073))

(declare-fun m!756005 () Bool)

(assert (=> b!814069 m!756005))

(declare-fun m!756007 () Bool)

(assert (=> b!814072 m!756007))

(declare-fun m!756009 () Bool)

(assert (=> start!70086 m!756009))

(declare-fun m!756011 () Bool)

(assert (=> start!70086 m!756011))

(declare-fun m!756013 () Bool)

(assert (=> start!70086 m!756013))

(declare-fun m!756015 () Bool)

(assert (=> b!814071 m!756015))

(declare-fun m!756017 () Bool)

(assert (=> b!814071 m!756017))

(declare-fun m!756019 () Bool)

(assert (=> b!814071 m!756019))

(declare-fun m!756021 () Bool)

(assert (=> mapNonEmpty!22870 m!756021))

(check-sat b_and!21273 tp_is_empty!14193 (not b_next!12483) (not start!70086) (not b!814069) (not b!814072) (not mapNonEmpty!22870) (not b!814071))
(check-sat b_and!21273 (not b_next!12483))
