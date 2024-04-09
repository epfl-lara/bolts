; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41862 () Bool)

(assert start!41862)

(declare-fun b_free!11457 () Bool)

(declare-fun b_next!11457 () Bool)

(assert (=> start!41862 (= b_free!11457 (not b_next!11457))))

(declare-fun tp!40380 () Bool)

(declare-fun b_and!19855 () Bool)

(assert (=> start!41862 (= tp!40380 b_and!19855)))

(declare-fun b!467150 () Bool)

(declare-fun res!279276 () Bool)

(declare-fun e!273258 () Bool)

(assert (=> b!467150 (=> (not res!279276) (not e!273258))))

(declare-datatypes ((array!29505 0))(
  ( (array!29506 (arr!14177 (Array (_ BitVec 32) (_ BitVec 64))) (size!14529 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29505)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29505 (_ BitVec 32)) Bool)

(assert (=> b!467150 (= res!279276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!279279 () Bool)

(assert (=> start!41862 (=> (not res!279279) (not e!273258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41862 (= res!279279 (validMask!0 mask!1365))))

(assert (=> start!41862 e!273258))

(declare-fun tp_is_empty!12885 () Bool)

(assert (=> start!41862 tp_is_empty!12885))

(assert (=> start!41862 tp!40380))

(assert (=> start!41862 true))

(declare-fun array_inv!10222 (array!29505) Bool)

(assert (=> start!41862 (array_inv!10222 _keys!1025)))

(declare-datatypes ((V!18285 0))(
  ( (V!18286 (val!6487 Int)) )
))
(declare-datatypes ((ValueCell!6099 0))(
  ( (ValueCellFull!6099 (v!8772 V!18285)) (EmptyCell!6099) )
))
(declare-datatypes ((array!29507 0))(
  ( (array!29508 (arr!14178 (Array (_ BitVec 32) ValueCell!6099)) (size!14530 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29507)

(declare-fun e!273261 () Bool)

(declare-fun array_inv!10223 (array!29507) Bool)

(assert (=> start!41862 (and (array_inv!10223 _values!833) e!273261)))

(declare-fun b!467151 () Bool)

(declare-fun res!279277 () Bool)

(assert (=> b!467151 (=> (not res!279277) (not e!273258))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467151 (= res!279277 (and (= (size!14530 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14529 _keys!1025) (size!14530 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467152 () Bool)

(declare-fun e!273260 () Bool)

(declare-fun mapRes!21016 () Bool)

(assert (=> b!467152 (= e!273261 (and e!273260 mapRes!21016))))

(declare-fun condMapEmpty!21016 () Bool)

(declare-fun mapDefault!21016 () ValueCell!6099)

(assert (=> b!467152 (= condMapEmpty!21016 (= (arr!14178 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6099)) mapDefault!21016)))))

(declare-fun b!467153 () Bool)

(declare-fun res!279278 () Bool)

(assert (=> b!467153 (=> (not res!279278) (not e!273258))))

(declare-datatypes ((List!8618 0))(
  ( (Nil!8615) (Cons!8614 (h!9470 (_ BitVec 64)) (t!14580 List!8618)) )
))
(declare-fun arrayNoDuplicates!0 (array!29505 (_ BitVec 32) List!8618) Bool)

(assert (=> b!467153 (= res!279278 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8615))))

(declare-fun b!467154 () Bool)

(assert (=> b!467154 (= e!273258 (not true))))

(declare-datatypes ((tuple2!8504 0))(
  ( (tuple2!8505 (_1!4262 (_ BitVec 64)) (_2!4262 V!18285)) )
))
(declare-datatypes ((List!8619 0))(
  ( (Nil!8616) (Cons!8615 (h!9471 tuple2!8504) (t!14581 List!8619)) )
))
(declare-datatypes ((ListLongMap!7431 0))(
  ( (ListLongMap!7432 (toList!3731 List!8619)) )
))
(declare-fun lt!211271 () ListLongMap!7431)

(declare-fun lt!211272 () ListLongMap!7431)

(assert (=> b!467154 (= lt!211271 lt!211272)))

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueBefore!38 () V!18285)

(declare-datatypes ((Unit!13583 0))(
  ( (Unit!13584) )
))
(declare-fun lt!211270 () Unit!13583)

(declare-fun zeroValue!794 () V!18285)

(declare-fun minValueAfter!38 () V!18285)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!92 (array!29505 array!29507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18285 V!18285 V!18285 V!18285 (_ BitVec 32) Int) Unit!13583)

(assert (=> b!467154 (= lt!211270 (lemmaNoChangeToArrayThenSameMapNoExtras!92 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1897 (array!29505 array!29507 (_ BitVec 32) (_ BitVec 32) V!18285 V!18285 (_ BitVec 32) Int) ListLongMap!7431)

(assert (=> b!467154 (= lt!211272 (getCurrentListMapNoExtraKeys!1897 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467154 (= lt!211271 (getCurrentListMapNoExtraKeys!1897 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21016 () Bool)

(declare-fun tp!40381 () Bool)

(declare-fun e!273259 () Bool)

(assert (=> mapNonEmpty!21016 (= mapRes!21016 (and tp!40381 e!273259))))

(declare-fun mapRest!21016 () (Array (_ BitVec 32) ValueCell!6099))

(declare-fun mapValue!21016 () ValueCell!6099)

(declare-fun mapKey!21016 () (_ BitVec 32))

(assert (=> mapNonEmpty!21016 (= (arr!14178 _values!833) (store mapRest!21016 mapKey!21016 mapValue!21016))))

(declare-fun b!467155 () Bool)

(assert (=> b!467155 (= e!273260 tp_is_empty!12885)))

(declare-fun b!467156 () Bool)

(assert (=> b!467156 (= e!273259 tp_is_empty!12885)))

(declare-fun mapIsEmpty!21016 () Bool)

(assert (=> mapIsEmpty!21016 mapRes!21016))

(assert (= (and start!41862 res!279279) b!467151))

(assert (= (and b!467151 res!279277) b!467150))

(assert (= (and b!467150 res!279276) b!467153))

(assert (= (and b!467153 res!279278) b!467154))

(assert (= (and b!467152 condMapEmpty!21016) mapIsEmpty!21016))

(assert (= (and b!467152 (not condMapEmpty!21016)) mapNonEmpty!21016))

(get-info :version)

(assert (= (and mapNonEmpty!21016 ((_ is ValueCellFull!6099) mapValue!21016)) b!467156))

(assert (= (and b!467152 ((_ is ValueCellFull!6099) mapDefault!21016)) b!467155))

(assert (= start!41862 b!467152))

(declare-fun m!449351 () Bool)

(assert (=> start!41862 m!449351))

(declare-fun m!449353 () Bool)

(assert (=> start!41862 m!449353))

(declare-fun m!449355 () Bool)

(assert (=> start!41862 m!449355))

(declare-fun m!449357 () Bool)

(assert (=> mapNonEmpty!21016 m!449357))

(declare-fun m!449359 () Bool)

(assert (=> b!467150 m!449359))

(declare-fun m!449361 () Bool)

(assert (=> b!467153 m!449361))

(declare-fun m!449363 () Bool)

(assert (=> b!467154 m!449363))

(declare-fun m!449365 () Bool)

(assert (=> b!467154 m!449365))

(declare-fun m!449367 () Bool)

(assert (=> b!467154 m!449367))

(check-sat (not start!41862) (not b!467153) (not b!467154) tp_is_empty!12885 (not b!467150) (not mapNonEmpty!21016) b_and!19855 (not b_next!11457))
(check-sat b_and!19855 (not b_next!11457))
