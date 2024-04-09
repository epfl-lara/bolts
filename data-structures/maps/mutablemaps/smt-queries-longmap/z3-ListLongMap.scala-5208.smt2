; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70306 () Bool)

(assert start!70306)

(declare-fun b_free!12657 () Bool)

(declare-fun b_next!12657 () Bool)

(assert (=> start!70306 (= b_free!12657 (not b_next!12657))))

(declare-fun tp!44695 () Bool)

(declare-fun b_and!21475 () Bool)

(assert (=> start!70306 (= tp!44695 b_and!21475)))

(declare-fun b!816352 () Bool)

(declare-fun e!452879 () Bool)

(declare-fun tp_is_empty!14367 () Bool)

(assert (=> b!816352 (= e!452879 tp_is_empty!14367)))

(declare-fun b!816353 () Bool)

(declare-fun e!452877 () Bool)

(declare-fun e!452880 () Bool)

(declare-fun mapRes!23140 () Bool)

(assert (=> b!816353 (= e!452877 (and e!452880 mapRes!23140))))

(declare-fun condMapEmpty!23140 () Bool)

(declare-datatypes ((V!24157 0))(
  ( (V!24158 (val!7231 Int)) )
))
(declare-datatypes ((ValueCell!6768 0))(
  ( (ValueCellFull!6768 (v!9655 V!24157)) (EmptyCell!6768) )
))
(declare-datatypes ((array!44914 0))(
  ( (array!44915 (arr!21510 (Array (_ BitVec 32) ValueCell!6768)) (size!21931 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44914)

(declare-fun mapDefault!23140 () ValueCell!6768)

(assert (=> b!816353 (= condMapEmpty!23140 (= (arr!21510 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6768)) mapDefault!23140)))))

(declare-fun mapNonEmpty!23140 () Bool)

(declare-fun tp!44694 () Bool)

(assert (=> mapNonEmpty!23140 (= mapRes!23140 (and tp!44694 e!452879))))

(declare-fun mapRest!23140 () (Array (_ BitVec 32) ValueCell!6768))

(declare-fun mapValue!23140 () ValueCell!6768)

(declare-fun mapKey!23140 () (_ BitVec 32))

(assert (=> mapNonEmpty!23140 (= (arr!21510 _values!788) (store mapRest!23140 mapKey!23140 mapValue!23140))))

(declare-fun b!816354 () Bool)

(declare-fun e!452878 () Bool)

(declare-fun e!452875 () Bool)

(assert (=> b!816354 (= e!452878 (not e!452875))))

(declare-fun res!557459 () Bool)

(assert (=> b!816354 (=> res!557459 e!452875)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816354 (= res!557459 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9502 0))(
  ( (tuple2!9503 (_1!4761 (_ BitVec 64)) (_2!4761 V!24157)) )
))
(declare-datatypes ((List!15372 0))(
  ( (Nil!15369) (Cons!15368 (h!16497 tuple2!9502) (t!21703 List!15372)) )
))
(declare-datatypes ((ListLongMap!8339 0))(
  ( (ListLongMap!8340 (toList!4185 List!15372)) )
))
(declare-fun lt!365666 () ListLongMap!8339)

(declare-fun lt!365663 () ListLongMap!8339)

(assert (=> b!816354 (= lt!365666 lt!365663)))

(declare-fun zeroValueBefore!34 () V!24157)

(declare-datatypes ((array!44916 0))(
  ( (array!44917 (arr!21511 (Array (_ BitVec 32) (_ BitVec 64))) (size!21932 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44916)

(declare-fun zeroValueAfter!34 () V!24157)

(declare-fun minValue!754 () V!24157)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27826 0))(
  ( (Unit!27827) )
))
(declare-fun lt!365665 () Unit!27826)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!349 (array!44916 array!44914 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24157 V!24157 V!24157 V!24157 (_ BitVec 32) Int) Unit!27826)

(assert (=> b!816354 (= lt!365665 (lemmaNoChangeToArrayThenSameMapNoExtras!349 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2233 (array!44916 array!44914 (_ BitVec 32) (_ BitVec 32) V!24157 V!24157 (_ BitVec 32) Int) ListLongMap!8339)

(assert (=> b!816354 (= lt!365663 (getCurrentListMapNoExtraKeys!2233 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816354 (= lt!365666 (getCurrentListMapNoExtraKeys!2233 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816355 () Bool)

(assert (=> b!816355 (= e!452875 true)))

(declare-fun lt!365667 () ListLongMap!8339)

(declare-fun getCurrentListMap!2372 (array!44916 array!44914 (_ BitVec 32) (_ BitVec 32) V!24157 V!24157 (_ BitVec 32) Int) ListLongMap!8339)

(assert (=> b!816355 (= lt!365667 (getCurrentListMap!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365664 () ListLongMap!8339)

(declare-fun +!1771 (ListLongMap!8339 tuple2!9502) ListLongMap!8339)

(assert (=> b!816355 (= lt!365664 (+!1771 (getCurrentListMap!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9503 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun res!557461 () Bool)

(assert (=> start!70306 (=> (not res!557461) (not e!452878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70306 (= res!557461 (validMask!0 mask!1312))))

(assert (=> start!70306 e!452878))

(assert (=> start!70306 tp_is_empty!14367))

(declare-fun array_inv!17187 (array!44916) Bool)

(assert (=> start!70306 (array_inv!17187 _keys!976)))

(assert (=> start!70306 true))

(declare-fun array_inv!17188 (array!44914) Bool)

(assert (=> start!70306 (and (array_inv!17188 _values!788) e!452877)))

(assert (=> start!70306 tp!44695))

(declare-fun b!816356 () Bool)

(assert (=> b!816356 (= e!452880 tp_is_empty!14367)))

(declare-fun b!816357 () Bool)

(declare-fun res!557462 () Bool)

(assert (=> b!816357 (=> (not res!557462) (not e!452878))))

(assert (=> b!816357 (= res!557462 (and (= (size!21931 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21932 _keys!976) (size!21931 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816358 () Bool)

(declare-fun res!557460 () Bool)

(assert (=> b!816358 (=> (not res!557460) (not e!452878))))

(declare-datatypes ((List!15373 0))(
  ( (Nil!15370) (Cons!15369 (h!16498 (_ BitVec 64)) (t!21704 List!15373)) )
))
(declare-fun arrayNoDuplicates!0 (array!44916 (_ BitVec 32) List!15373) Bool)

(assert (=> b!816358 (= res!557460 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15370))))

(declare-fun b!816359 () Bool)

(declare-fun res!557458 () Bool)

(assert (=> b!816359 (=> (not res!557458) (not e!452878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44916 (_ BitVec 32)) Bool)

(assert (=> b!816359 (= res!557458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23140 () Bool)

(assert (=> mapIsEmpty!23140 mapRes!23140))

(assert (= (and start!70306 res!557461) b!816357))

(assert (= (and b!816357 res!557462) b!816359))

(assert (= (and b!816359 res!557458) b!816358))

(assert (= (and b!816358 res!557460) b!816354))

(assert (= (and b!816354 (not res!557459)) b!816355))

(assert (= (and b!816353 condMapEmpty!23140) mapIsEmpty!23140))

(assert (= (and b!816353 (not condMapEmpty!23140)) mapNonEmpty!23140))

(get-info :version)

(assert (= (and mapNonEmpty!23140 ((_ is ValueCellFull!6768) mapValue!23140)) b!816352))

(assert (= (and b!816353 ((_ is ValueCellFull!6768) mapDefault!23140)) b!816356))

(assert (= start!70306 b!816353))

(declare-fun m!758077 () Bool)

(assert (=> b!816355 m!758077))

(declare-fun m!758079 () Bool)

(assert (=> b!816355 m!758079))

(assert (=> b!816355 m!758079))

(declare-fun m!758081 () Bool)

(assert (=> b!816355 m!758081))

(declare-fun m!758083 () Bool)

(assert (=> b!816359 m!758083))

(declare-fun m!758085 () Bool)

(assert (=> b!816358 m!758085))

(declare-fun m!758087 () Bool)

(assert (=> start!70306 m!758087))

(declare-fun m!758089 () Bool)

(assert (=> start!70306 m!758089))

(declare-fun m!758091 () Bool)

(assert (=> start!70306 m!758091))

(declare-fun m!758093 () Bool)

(assert (=> mapNonEmpty!23140 m!758093))

(declare-fun m!758095 () Bool)

(assert (=> b!816354 m!758095))

(declare-fun m!758097 () Bool)

(assert (=> b!816354 m!758097))

(declare-fun m!758099 () Bool)

(assert (=> b!816354 m!758099))

(check-sat tp_is_empty!14367 (not start!70306) b_and!21475 (not b_next!12657) (not b!816359) (not b!816354) (not b!816358) (not b!816355) (not mapNonEmpty!23140))
(check-sat b_and!21475 (not b_next!12657))
