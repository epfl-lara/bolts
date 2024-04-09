; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70458 () Bool)

(assert start!70458)

(declare-fun b_free!12777 () Bool)

(declare-fun b_next!12777 () Bool)

(assert (=> start!70458 (= b_free!12777 (not b_next!12777))))

(declare-fun tp!45060 () Bool)

(declare-fun b_and!21615 () Bool)

(assert (=> start!70458 (= tp!45060 b_and!21615)))

(declare-fun b!817980 () Bool)

(declare-fun res!558390 () Bool)

(declare-fun e!454040 () Bool)

(assert (=> b!817980 (=> (not res!558390) (not e!454040))))

(declare-datatypes ((array!45148 0))(
  ( (array!45149 (arr!21625 (Array (_ BitVec 32) (_ BitVec 64))) (size!22046 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45148)

(declare-datatypes ((List!15461 0))(
  ( (Nil!15458) (Cons!15457 (h!16586 (_ BitVec 64)) (t!21796 List!15461)) )
))
(declare-fun arrayNoDuplicates!0 (array!45148 (_ BitVec 32) List!15461) Bool)

(assert (=> b!817980 (= res!558390 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15458))))

(declare-fun b!817981 () Bool)

(declare-fun res!558393 () Bool)

(assert (=> b!817981 (=> (not res!558393) (not e!454040))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24317 0))(
  ( (V!24318 (val!7291 Int)) )
))
(declare-datatypes ((ValueCell!6828 0))(
  ( (ValueCellFull!6828 (v!9716 V!24317)) (EmptyCell!6828) )
))
(declare-datatypes ((array!45150 0))(
  ( (array!45151 (arr!21626 (Array (_ BitVec 32) ValueCell!6828)) (size!22047 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45150)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817981 (= res!558393 (and (= (size!22047 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22046 _keys!976) (size!22047 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817982 () Bool)

(declare-fun e!454043 () Bool)

(assert (=> b!817982 (= e!454040 (not e!454043))))

(declare-fun res!558391 () Bool)

(assert (=> b!817982 (=> res!558391 e!454043)))

(assert (=> b!817982 (= res!558391 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9596 0))(
  ( (tuple2!9597 (_1!4808 (_ BitVec 64)) (_2!4808 V!24317)) )
))
(declare-datatypes ((List!15462 0))(
  ( (Nil!15459) (Cons!15458 (h!16587 tuple2!9596) (t!21797 List!15462)) )
))
(declare-datatypes ((ListLongMap!8433 0))(
  ( (ListLongMap!8434 (toList!4232 List!15462)) )
))
(declare-fun lt!366523 () ListLongMap!8433)

(declare-fun lt!366522 () ListLongMap!8433)

(assert (=> b!817982 (= lt!366523 lt!366522)))

(declare-fun zeroValueBefore!34 () V!24317)

(declare-datatypes ((Unit!27916 0))(
  ( (Unit!27917) )
))
(declare-fun lt!366525 () Unit!27916)

(declare-fun zeroValueAfter!34 () V!24317)

(declare-fun minValue!754 () V!24317)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!393 (array!45148 array!45150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24317 V!24317 V!24317 V!24317 (_ BitVec 32) Int) Unit!27916)

(assert (=> b!817982 (= lt!366525 (lemmaNoChangeToArrayThenSameMapNoExtras!393 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2277 (array!45148 array!45150 (_ BitVec 32) (_ BitVec 32) V!24317 V!24317 (_ BitVec 32) Int) ListLongMap!8433)

(assert (=> b!817982 (= lt!366522 (getCurrentListMapNoExtraKeys!2277 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817982 (= lt!366523 (getCurrentListMapNoExtraKeys!2277 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23326 () Bool)

(declare-fun mapRes!23326 () Bool)

(declare-fun tp!45061 () Bool)

(declare-fun e!454039 () Bool)

(assert (=> mapNonEmpty!23326 (= mapRes!23326 (and tp!45061 e!454039))))

(declare-fun mapRest!23326 () (Array (_ BitVec 32) ValueCell!6828))

(declare-fun mapValue!23326 () ValueCell!6828)

(declare-fun mapKey!23326 () (_ BitVec 32))

(assert (=> mapNonEmpty!23326 (= (arr!21626 _values!788) (store mapRest!23326 mapKey!23326 mapValue!23326))))

(declare-fun res!558392 () Bool)

(assert (=> start!70458 (=> (not res!558392) (not e!454040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70458 (= res!558392 (validMask!0 mask!1312))))

(assert (=> start!70458 e!454040))

(declare-fun tp_is_empty!14487 () Bool)

(assert (=> start!70458 tp_is_empty!14487))

(declare-fun array_inv!17269 (array!45148) Bool)

(assert (=> start!70458 (array_inv!17269 _keys!976)))

(assert (=> start!70458 true))

(declare-fun e!454044 () Bool)

(declare-fun array_inv!17270 (array!45150) Bool)

(assert (=> start!70458 (and (array_inv!17270 _values!788) e!454044)))

(assert (=> start!70458 tp!45060))

(declare-fun b!817983 () Bool)

(declare-fun e!454042 () Bool)

(assert (=> b!817983 (= e!454042 tp_is_empty!14487)))

(declare-fun b!817984 () Bool)

(assert (=> b!817984 (= e!454044 (and e!454042 mapRes!23326))))

(declare-fun condMapEmpty!23326 () Bool)

(declare-fun mapDefault!23326 () ValueCell!6828)

(assert (=> b!817984 (= condMapEmpty!23326 (= (arr!21626 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6828)) mapDefault!23326)))))

(declare-fun b!817985 () Bool)

(declare-fun res!558394 () Bool)

(assert (=> b!817985 (=> (not res!558394) (not e!454040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45148 (_ BitVec 32)) Bool)

(assert (=> b!817985 (= res!558394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23326 () Bool)

(assert (=> mapIsEmpty!23326 mapRes!23326))

(declare-fun b!817986 () Bool)

(assert (=> b!817986 (= e!454043 true)))

(declare-fun lt!366524 () ListLongMap!8433)

(declare-fun getCurrentListMap!2393 (array!45148 array!45150 (_ BitVec 32) (_ BitVec 32) V!24317 V!24317 (_ BitVec 32) Int) ListLongMap!8433)

(assert (=> b!817986 (= lt!366524 (getCurrentListMap!2393 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817987 () Bool)

(assert (=> b!817987 (= e!454039 tp_is_empty!14487)))

(assert (= (and start!70458 res!558392) b!817981))

(assert (= (and b!817981 res!558393) b!817985))

(assert (= (and b!817985 res!558394) b!817980))

(assert (= (and b!817980 res!558390) b!817982))

(assert (= (and b!817982 (not res!558391)) b!817986))

(assert (= (and b!817984 condMapEmpty!23326) mapIsEmpty!23326))

(assert (= (and b!817984 (not condMapEmpty!23326)) mapNonEmpty!23326))

(get-info :version)

(assert (= (and mapNonEmpty!23326 ((_ is ValueCellFull!6828) mapValue!23326)) b!817987))

(assert (= (and b!817984 ((_ is ValueCellFull!6828) mapDefault!23326)) b!817983))

(assert (= start!70458 b!817984))

(declare-fun m!759539 () Bool)

(assert (=> start!70458 m!759539))

(declare-fun m!759541 () Bool)

(assert (=> start!70458 m!759541))

(declare-fun m!759543 () Bool)

(assert (=> start!70458 m!759543))

(declare-fun m!759545 () Bool)

(assert (=> b!817986 m!759545))

(declare-fun m!759547 () Bool)

(assert (=> b!817985 m!759547))

(declare-fun m!759549 () Bool)

(assert (=> mapNonEmpty!23326 m!759549))

(declare-fun m!759551 () Bool)

(assert (=> b!817980 m!759551))

(declare-fun m!759553 () Bool)

(assert (=> b!817982 m!759553))

(declare-fun m!759555 () Bool)

(assert (=> b!817982 m!759555))

(declare-fun m!759557 () Bool)

(assert (=> b!817982 m!759557))

(check-sat (not b!817982) b_and!21615 (not b_next!12777) (not mapNonEmpty!23326) (not start!70458) (not b!817980) (not b!817986) (not b!817985) tp_is_empty!14487)
(check-sat b_and!21615 (not b_next!12777))
