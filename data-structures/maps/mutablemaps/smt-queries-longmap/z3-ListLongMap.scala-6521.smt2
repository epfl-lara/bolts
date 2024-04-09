; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82996 () Bool)

(assert start!82996)

(declare-fun b_free!19095 () Bool)

(declare-fun b_next!19095 () Bool)

(assert (=> start!82996 (= b_free!19095 (not b_next!19095))))

(declare-fun tp!66415 () Bool)

(declare-fun b_and!30601 () Bool)

(assert (=> start!82996 (= tp!66415 b_and!30601)))

(declare-fun b!968274 () Bool)

(declare-fun res!648348 () Bool)

(declare-fun e!545691 () Bool)

(assert (=> b!968274 (=> (not res!648348) (not e!545691))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34187 0))(
  ( (V!34188 (val!11002 Int)) )
))
(declare-datatypes ((ValueCell!10470 0))(
  ( (ValueCellFull!10470 (v!13560 V!34187)) (EmptyCell!10470) )
))
(declare-datatypes ((array!59857 0))(
  ( (array!59858 (arr!28793 (Array (_ BitVec 32) ValueCell!10470)) (size!29273 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59857)

(declare-datatypes ((array!59859 0))(
  ( (array!59860 (arr!28794 (Array (_ BitVec 32) (_ BitVec 64))) (size!29274 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59859)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!968274 (= res!648348 (and (= (size!29273 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29274 _keys!1686) (size!29273 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34849 () Bool)

(declare-fun mapRes!34849 () Bool)

(declare-fun tp!66414 () Bool)

(declare-fun e!545690 () Bool)

(assert (=> mapNonEmpty!34849 (= mapRes!34849 (and tp!66414 e!545690))))

(declare-fun mapRest!34849 () (Array (_ BitVec 32) ValueCell!10470))

(declare-fun mapKey!34849 () (_ BitVec 32))

(declare-fun mapValue!34849 () ValueCell!10470)

(assert (=> mapNonEmpty!34849 (= (arr!28793 _values!1400) (store mapRest!34849 mapKey!34849 mapValue!34849))))

(declare-fun b!968275 () Bool)

(declare-fun res!648351 () Bool)

(assert (=> b!968275 (=> (not res!648351) (not e!545691))))

(declare-datatypes ((List!20116 0))(
  ( (Nil!20113) (Cons!20112 (h!21274 (_ BitVec 64)) (t!28487 List!20116)) )
))
(declare-fun arrayNoDuplicates!0 (array!59859 (_ BitVec 32) List!20116) Bool)

(assert (=> b!968275 (= res!648351 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20113))))

(declare-fun b!968276 () Bool)

(declare-fun res!648353 () Bool)

(assert (=> b!968276 (=> (not res!648353) (not e!545691))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!968276 (= res!648353 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29274 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29274 _keys!1686))))))

(declare-fun res!648347 () Bool)

(assert (=> start!82996 (=> (not res!648347) (not e!545691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82996 (= res!648347 (validMask!0 mask!2110))))

(assert (=> start!82996 e!545691))

(assert (=> start!82996 true))

(declare-fun e!545692 () Bool)

(declare-fun array_inv!22185 (array!59857) Bool)

(assert (=> start!82996 (and (array_inv!22185 _values!1400) e!545692)))

(declare-fun array_inv!22186 (array!59859) Bool)

(assert (=> start!82996 (array_inv!22186 _keys!1686)))

(assert (=> start!82996 tp!66415))

(declare-fun tp_is_empty!21903 () Bool)

(assert (=> start!82996 tp_is_empty!21903))

(declare-fun b!968277 () Bool)

(declare-fun e!545688 () Bool)

(assert (=> b!968277 (= e!545688 tp_is_empty!21903)))

(declare-fun b!968278 () Bool)

(declare-fun res!648352 () Bool)

(assert (=> b!968278 (=> (not res!648352) (not e!545691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59859 (_ BitVec 32)) Bool)

(assert (=> b!968278 (= res!648352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!968279 () Bool)

(declare-fun res!648350 () Bool)

(assert (=> b!968279 (=> (not res!648350) (not e!545691))))

(assert (=> b!968279 (= res!648350 (bvsle from!2084 newFrom!159))))

(declare-fun mapIsEmpty!34849 () Bool)

(assert (=> mapIsEmpty!34849 mapRes!34849))

(declare-fun b!968280 () Bool)

(declare-fun res!648346 () Bool)

(assert (=> b!968280 (=> (not res!648346) (not e!545691))))

(declare-fun minValue!1342 () V!34187)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34187)

(declare-datatypes ((tuple2!14246 0))(
  ( (tuple2!14247 (_1!7133 (_ BitVec 64)) (_2!7133 V!34187)) )
))
(declare-datatypes ((List!20117 0))(
  ( (Nil!20114) (Cons!20113 (h!21275 tuple2!14246) (t!28488 List!20117)) )
))
(declare-datatypes ((ListLongMap!12957 0))(
  ( (ListLongMap!12958 (toList!6494 List!20117)) )
))
(declare-fun contains!5545 (ListLongMap!12957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3679 (array!59859 array!59857 (_ BitVec 32) (_ BitVec 32) V!34187 V!34187 (_ BitVec 32) Int) ListLongMap!12957)

(assert (=> b!968280 (= res!648346 (contains!5545 (getCurrentListMap!3679 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28794 _keys!1686) i!803)))))

(declare-fun b!968281 () Bool)

(assert (=> b!968281 (= e!545690 tp_is_empty!21903)))

(declare-fun b!968282 () Bool)

(assert (=> b!968282 (= e!545691 (not (contains!5545 (getCurrentListMap!3679 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28794 _keys!1686) i!803))))))

(declare-fun b!968283 () Bool)

(assert (=> b!968283 (= e!545692 (and e!545688 mapRes!34849))))

(declare-fun condMapEmpty!34849 () Bool)

(declare-fun mapDefault!34849 () ValueCell!10470)

(assert (=> b!968283 (= condMapEmpty!34849 (= (arr!28793 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10470)) mapDefault!34849)))))

(declare-fun b!968284 () Bool)

(declare-fun res!648349 () Bool)

(assert (=> b!968284 (=> (not res!648349) (not e!545691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968284 (= res!648349 (validKeyInArray!0 (select (arr!28794 _keys!1686) i!803)))))

(assert (= (and start!82996 res!648347) b!968274))

(assert (= (and b!968274 res!648348) b!968278))

(assert (= (and b!968278 res!648352) b!968275))

(assert (= (and b!968275 res!648351) b!968276))

(assert (= (and b!968276 res!648353) b!968284))

(assert (= (and b!968284 res!648349) b!968280))

(assert (= (and b!968280 res!648346) b!968279))

(assert (= (and b!968279 res!648350) b!968282))

(assert (= (and b!968283 condMapEmpty!34849) mapIsEmpty!34849))

(assert (= (and b!968283 (not condMapEmpty!34849)) mapNonEmpty!34849))

(get-info :version)

(assert (= (and mapNonEmpty!34849 ((_ is ValueCellFull!10470) mapValue!34849)) b!968281))

(assert (= (and b!968283 ((_ is ValueCellFull!10470) mapDefault!34849)) b!968277))

(assert (= start!82996 b!968283))

(declare-fun m!896731 () Bool)

(assert (=> b!968282 m!896731))

(declare-fun m!896733 () Bool)

(assert (=> b!968282 m!896733))

(assert (=> b!968282 m!896731))

(assert (=> b!968282 m!896733))

(declare-fun m!896735 () Bool)

(assert (=> b!968282 m!896735))

(declare-fun m!896737 () Bool)

(assert (=> start!82996 m!896737))

(declare-fun m!896739 () Bool)

(assert (=> start!82996 m!896739))

(declare-fun m!896741 () Bool)

(assert (=> start!82996 m!896741))

(declare-fun m!896743 () Bool)

(assert (=> mapNonEmpty!34849 m!896743))

(declare-fun m!896745 () Bool)

(assert (=> b!968278 m!896745))

(declare-fun m!896747 () Bool)

(assert (=> b!968280 m!896747))

(assert (=> b!968280 m!896733))

(assert (=> b!968280 m!896747))

(assert (=> b!968280 m!896733))

(declare-fun m!896749 () Bool)

(assert (=> b!968280 m!896749))

(assert (=> b!968284 m!896733))

(assert (=> b!968284 m!896733))

(declare-fun m!896751 () Bool)

(assert (=> b!968284 m!896751))

(declare-fun m!896753 () Bool)

(assert (=> b!968275 m!896753))

(check-sat (not b!968275) b_and!30601 (not b!968280) (not start!82996) (not b_next!19095) tp_is_empty!21903 (not b!968282) (not b!968278) (not mapNonEmpty!34849) (not b!968284))
(check-sat b_and!30601 (not b_next!19095))
