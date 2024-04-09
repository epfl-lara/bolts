; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70434 () Bool)

(assert start!70434)

(declare-fun b_free!12753 () Bool)

(declare-fun b_next!12753 () Bool)

(assert (=> start!70434 (= b_free!12753 (not b_next!12753))))

(declare-fun tp!44988 () Bool)

(declare-fun b_and!21591 () Bool)

(assert (=> start!70434 (= tp!44988 b_and!21591)))

(declare-fun b!817692 () Bool)

(declare-fun e!453828 () Bool)

(declare-fun tp_is_empty!14463 () Bool)

(assert (=> b!817692 (= e!453828 tp_is_empty!14463)))

(declare-fun b!817693 () Bool)

(declare-fun e!453826 () Bool)

(assert (=> b!817693 (= e!453826 tp_is_empty!14463)))

(declare-fun res!558212 () Bool)

(declare-fun e!453823 () Bool)

(assert (=> start!70434 (=> (not res!558212) (not e!453823))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70434 (= res!558212 (validMask!0 mask!1312))))

(assert (=> start!70434 e!453823))

(assert (=> start!70434 tp_is_empty!14463))

(declare-datatypes ((array!45102 0))(
  ( (array!45103 (arr!21602 (Array (_ BitVec 32) (_ BitVec 64))) (size!22023 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45102)

(declare-fun array_inv!17253 (array!45102) Bool)

(assert (=> start!70434 (array_inv!17253 _keys!976)))

(assert (=> start!70434 true))

(declare-datatypes ((V!24285 0))(
  ( (V!24286 (val!7279 Int)) )
))
(declare-datatypes ((ValueCell!6816 0))(
  ( (ValueCellFull!6816 (v!9704 V!24285)) (EmptyCell!6816) )
))
(declare-datatypes ((array!45104 0))(
  ( (array!45105 (arr!21603 (Array (_ BitVec 32) ValueCell!6816)) (size!22024 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45104)

(declare-fun e!453825 () Bool)

(declare-fun array_inv!17254 (array!45104) Bool)

(assert (=> start!70434 (and (array_inv!17254 _values!788) e!453825)))

(assert (=> start!70434 tp!44988))

(declare-fun b!817694 () Bool)

(declare-fun mapRes!23290 () Bool)

(assert (=> b!817694 (= e!453825 (and e!453828 mapRes!23290))))

(declare-fun condMapEmpty!23290 () Bool)

(declare-fun mapDefault!23290 () ValueCell!6816)

(assert (=> b!817694 (= condMapEmpty!23290 (= (arr!21603 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6816)) mapDefault!23290)))))

(declare-fun b!817695 () Bool)

(declare-fun e!453824 () Bool)

(assert (=> b!817695 (= e!453824 true)))

(declare-fun zeroValueBefore!34 () V!24285)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24285)

(declare-datatypes ((tuple2!9574 0))(
  ( (tuple2!9575 (_1!4797 (_ BitVec 64)) (_2!4797 V!24285)) )
))
(declare-datatypes ((List!15442 0))(
  ( (Nil!15439) (Cons!15438 (h!16567 tuple2!9574) (t!21777 List!15442)) )
))
(declare-datatypes ((ListLongMap!8411 0))(
  ( (ListLongMap!8412 (toList!4221 List!15442)) )
))
(declare-fun lt!366379 () ListLongMap!8411)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2386 (array!45102 array!45104 (_ BitVec 32) (_ BitVec 32) V!24285 V!24285 (_ BitVec 32) Int) ListLongMap!8411)

(assert (=> b!817695 (= lt!366379 (getCurrentListMap!2386 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23290 () Bool)

(declare-fun tp!44989 () Bool)

(assert (=> mapNonEmpty!23290 (= mapRes!23290 (and tp!44989 e!453826))))

(declare-fun mapValue!23290 () ValueCell!6816)

(declare-fun mapRest!23290 () (Array (_ BitVec 32) ValueCell!6816))

(declare-fun mapKey!23290 () (_ BitVec 32))

(assert (=> mapNonEmpty!23290 (= (arr!21603 _values!788) (store mapRest!23290 mapKey!23290 mapValue!23290))))

(declare-fun b!817696 () Bool)

(declare-fun res!558211 () Bool)

(assert (=> b!817696 (=> (not res!558211) (not e!453823))))

(declare-datatypes ((List!15443 0))(
  ( (Nil!15440) (Cons!15439 (h!16568 (_ BitVec 64)) (t!21778 List!15443)) )
))
(declare-fun arrayNoDuplicates!0 (array!45102 (_ BitVec 32) List!15443) Bool)

(assert (=> b!817696 (= res!558211 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15440))))

(declare-fun mapIsEmpty!23290 () Bool)

(assert (=> mapIsEmpty!23290 mapRes!23290))

(declare-fun b!817697 () Bool)

(declare-fun res!558213 () Bool)

(assert (=> b!817697 (=> (not res!558213) (not e!453823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45102 (_ BitVec 32)) Bool)

(assert (=> b!817697 (= res!558213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817698 () Bool)

(assert (=> b!817698 (= e!453823 (not e!453824))))

(declare-fun res!558210 () Bool)

(assert (=> b!817698 (=> res!558210 e!453824)))

(assert (=> b!817698 (= res!558210 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366380 () ListLongMap!8411)

(declare-fun lt!366381 () ListLongMap!8411)

(assert (=> b!817698 (= lt!366380 lt!366381)))

(declare-fun zeroValueAfter!34 () V!24285)

(declare-datatypes ((Unit!27894 0))(
  ( (Unit!27895) )
))
(declare-fun lt!366378 () Unit!27894)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!382 (array!45102 array!45104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24285 V!24285 V!24285 V!24285 (_ BitVec 32) Int) Unit!27894)

(assert (=> b!817698 (= lt!366378 (lemmaNoChangeToArrayThenSameMapNoExtras!382 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2266 (array!45102 array!45104 (_ BitVec 32) (_ BitVec 32) V!24285 V!24285 (_ BitVec 32) Int) ListLongMap!8411)

(assert (=> b!817698 (= lt!366381 (getCurrentListMapNoExtraKeys!2266 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817698 (= lt!366380 (getCurrentListMapNoExtraKeys!2266 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817699 () Bool)

(declare-fun res!558214 () Bool)

(assert (=> b!817699 (=> (not res!558214) (not e!453823))))

(assert (=> b!817699 (= res!558214 (and (= (size!22024 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22023 _keys!976) (size!22024 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70434 res!558212) b!817699))

(assert (= (and b!817699 res!558214) b!817697))

(assert (= (and b!817697 res!558213) b!817696))

(assert (= (and b!817696 res!558211) b!817698))

(assert (= (and b!817698 (not res!558210)) b!817695))

(assert (= (and b!817694 condMapEmpty!23290) mapIsEmpty!23290))

(assert (= (and b!817694 (not condMapEmpty!23290)) mapNonEmpty!23290))

(get-info :version)

(assert (= (and mapNonEmpty!23290 ((_ is ValueCellFull!6816) mapValue!23290)) b!817693))

(assert (= (and b!817694 ((_ is ValueCellFull!6816) mapDefault!23290)) b!817692))

(assert (= start!70434 b!817694))

(declare-fun m!759299 () Bool)

(assert (=> b!817696 m!759299))

(declare-fun m!759301 () Bool)

(assert (=> mapNonEmpty!23290 m!759301))

(declare-fun m!759303 () Bool)

(assert (=> b!817697 m!759303))

(declare-fun m!759305 () Bool)

(assert (=> b!817698 m!759305))

(declare-fun m!759307 () Bool)

(assert (=> b!817698 m!759307))

(declare-fun m!759309 () Bool)

(assert (=> b!817698 m!759309))

(declare-fun m!759311 () Bool)

(assert (=> b!817695 m!759311))

(declare-fun m!759313 () Bool)

(assert (=> start!70434 m!759313))

(declare-fun m!759315 () Bool)

(assert (=> start!70434 m!759315))

(declare-fun m!759317 () Bool)

(assert (=> start!70434 m!759317))

(check-sat (not b!817695) (not mapNonEmpty!23290) (not b!817696) tp_is_empty!14463 (not start!70434) (not b_next!12753) (not b!817697) b_and!21591 (not b!817698))
(check-sat b_and!21591 (not b_next!12753))
