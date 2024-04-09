; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41880 () Bool)

(assert start!41880)

(declare-fun b_free!11475 () Bool)

(declare-fun b_next!11475 () Bool)

(assert (=> start!41880 (= b_free!11475 (not b_next!11475))))

(declare-fun tp!40434 () Bool)

(declare-fun b_and!19873 () Bool)

(assert (=> start!41880 (= tp!40434 b_and!19873)))

(declare-fun res!279386 () Bool)

(declare-fun e!273397 () Bool)

(assert (=> start!41880 (=> (not res!279386) (not e!273397))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41880 (= res!279386 (validMask!0 mask!1365))))

(assert (=> start!41880 e!273397))

(declare-fun tp_is_empty!12903 () Bool)

(assert (=> start!41880 tp_is_empty!12903))

(assert (=> start!41880 tp!40434))

(assert (=> start!41880 true))

(declare-datatypes ((array!29541 0))(
  ( (array!29542 (arr!14195 (Array (_ BitVec 32) (_ BitVec 64))) (size!14547 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29541)

(declare-fun array_inv!10236 (array!29541) Bool)

(assert (=> start!41880 (array_inv!10236 _keys!1025)))

(declare-datatypes ((V!18309 0))(
  ( (V!18310 (val!6496 Int)) )
))
(declare-datatypes ((ValueCell!6108 0))(
  ( (ValueCellFull!6108 (v!8781 V!18309)) (EmptyCell!6108) )
))
(declare-datatypes ((array!29543 0))(
  ( (array!29544 (arr!14196 (Array (_ BitVec 32) ValueCell!6108)) (size!14548 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29543)

(declare-fun e!273394 () Bool)

(declare-fun array_inv!10237 (array!29543) Bool)

(assert (=> start!41880 (and (array_inv!10237 _values!833) e!273394)))

(declare-fun b!467339 () Bool)

(declare-fun res!279385 () Bool)

(assert (=> b!467339 (=> (not res!279385) (not e!273397))))

(declare-datatypes ((List!8631 0))(
  ( (Nil!8628) (Cons!8627 (h!9483 (_ BitVec 64)) (t!14593 List!8631)) )
))
(declare-fun arrayNoDuplicates!0 (array!29541 (_ BitVec 32) List!8631) Bool)

(assert (=> b!467339 (= res!279385 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8628))))

(declare-fun b!467340 () Bool)

(declare-fun res!279384 () Bool)

(assert (=> b!467340 (=> (not res!279384) (not e!273397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29541 (_ BitVec 32)) Bool)

(assert (=> b!467340 (= res!279384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467341 () Bool)

(assert (=> b!467341 (= e!273397 (not true))))

(declare-datatypes ((tuple2!8516 0))(
  ( (tuple2!8517 (_1!4268 (_ BitVec 64)) (_2!4268 V!18309)) )
))
(declare-datatypes ((List!8632 0))(
  ( (Nil!8629) (Cons!8628 (h!9484 tuple2!8516) (t!14594 List!8632)) )
))
(declare-datatypes ((ListLongMap!7443 0))(
  ( (ListLongMap!7444 (toList!3737 List!8632)) )
))
(declare-fun lt!211353 () ListLongMap!7443)

(declare-fun lt!211351 () ListLongMap!7443)

(assert (=> b!467341 (= lt!211353 lt!211351)))

(declare-datatypes ((Unit!13595 0))(
  ( (Unit!13596) )
))
(declare-fun lt!211352 () Unit!13595)

(declare-fun minValueBefore!38 () V!18309)

(declare-fun zeroValue!794 () V!18309)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18309)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!98 (array!29541 array!29543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18309 V!18309 V!18309 V!18309 (_ BitVec 32) Int) Unit!13595)

(assert (=> b!467341 (= lt!211352 (lemmaNoChangeToArrayThenSameMapNoExtras!98 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1903 (array!29541 array!29543 (_ BitVec 32) (_ BitVec 32) V!18309 V!18309 (_ BitVec 32) Int) ListLongMap!7443)

(assert (=> b!467341 (= lt!211351 (getCurrentListMapNoExtraKeys!1903 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467341 (= lt!211353 (getCurrentListMapNoExtraKeys!1903 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21043 () Bool)

(declare-fun mapRes!21043 () Bool)

(declare-fun tp!40435 () Bool)

(declare-fun e!273393 () Bool)

(assert (=> mapNonEmpty!21043 (= mapRes!21043 (and tp!40435 e!273393))))

(declare-fun mapKey!21043 () (_ BitVec 32))

(declare-fun mapRest!21043 () (Array (_ BitVec 32) ValueCell!6108))

(declare-fun mapValue!21043 () ValueCell!6108)

(assert (=> mapNonEmpty!21043 (= (arr!14196 _values!833) (store mapRest!21043 mapKey!21043 mapValue!21043))))

(declare-fun b!467342 () Bool)

(declare-fun e!273396 () Bool)

(assert (=> b!467342 (= e!273396 tp_is_empty!12903)))

(declare-fun b!467343 () Bool)

(declare-fun res!279387 () Bool)

(assert (=> b!467343 (=> (not res!279387) (not e!273397))))

(assert (=> b!467343 (= res!279387 (and (= (size!14548 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14547 _keys!1025) (size!14548 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467344 () Bool)

(assert (=> b!467344 (= e!273394 (and e!273396 mapRes!21043))))

(declare-fun condMapEmpty!21043 () Bool)

(declare-fun mapDefault!21043 () ValueCell!6108)

(assert (=> b!467344 (= condMapEmpty!21043 (= (arr!14196 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6108)) mapDefault!21043)))))

(declare-fun b!467345 () Bool)

(assert (=> b!467345 (= e!273393 tp_is_empty!12903)))

(declare-fun mapIsEmpty!21043 () Bool)

(assert (=> mapIsEmpty!21043 mapRes!21043))

(assert (= (and start!41880 res!279386) b!467343))

(assert (= (and b!467343 res!279387) b!467340))

(assert (= (and b!467340 res!279384) b!467339))

(assert (= (and b!467339 res!279385) b!467341))

(assert (= (and b!467344 condMapEmpty!21043) mapIsEmpty!21043))

(assert (= (and b!467344 (not condMapEmpty!21043)) mapNonEmpty!21043))

(get-info :version)

(assert (= (and mapNonEmpty!21043 ((_ is ValueCellFull!6108) mapValue!21043)) b!467345))

(assert (= (and b!467344 ((_ is ValueCellFull!6108) mapDefault!21043)) b!467342))

(assert (= start!41880 b!467344))

(declare-fun m!449513 () Bool)

(assert (=> start!41880 m!449513))

(declare-fun m!449515 () Bool)

(assert (=> start!41880 m!449515))

(declare-fun m!449517 () Bool)

(assert (=> start!41880 m!449517))

(declare-fun m!449519 () Bool)

(assert (=> b!467341 m!449519))

(declare-fun m!449521 () Bool)

(assert (=> b!467341 m!449521))

(declare-fun m!449523 () Bool)

(assert (=> b!467341 m!449523))

(declare-fun m!449525 () Bool)

(assert (=> mapNonEmpty!21043 m!449525))

(declare-fun m!449527 () Bool)

(assert (=> b!467340 m!449527))

(declare-fun m!449529 () Bool)

(assert (=> b!467339 m!449529))

(check-sat (not mapNonEmpty!21043) (not start!41880) (not b!467339) tp_is_empty!12903 (not b!467341) (not b_next!11475) (not b!467340) b_and!19873)
(check-sat b_and!19873 (not b_next!11475))
