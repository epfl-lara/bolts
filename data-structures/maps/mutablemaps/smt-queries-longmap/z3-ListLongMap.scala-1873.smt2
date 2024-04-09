; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33682 () Bool)

(assert start!33682)

(declare-fun b_free!6909 () Bool)

(declare-fun b_next!6909 () Bool)

(assert (=> start!33682 (= b_free!6909 (not b_next!6909))))

(declare-fun tp!24231 () Bool)

(declare-fun b_and!14107 () Bool)

(assert (=> start!33682 (= tp!24231 b_and!14107)))

(declare-fun res!184375 () Bool)

(declare-fun e!205223 () Bool)

(assert (=> start!33682 (=> (not res!184375) (not e!205223))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33682 (= res!184375 (validMask!0 mask!2385))))

(assert (=> start!33682 e!205223))

(assert (=> start!33682 true))

(declare-fun tp_is_empty!6861 () Bool)

(assert (=> start!33682 tp_is_empty!6861))

(assert (=> start!33682 tp!24231))

(declare-datatypes ((V!10125 0))(
  ( (V!10126 (val!3475 Int)) )
))
(declare-datatypes ((ValueCell!3087 0))(
  ( (ValueCellFull!3087 (v!5633 V!10125)) (EmptyCell!3087) )
))
(declare-datatypes ((array!17309 0))(
  ( (array!17310 (arr!8182 (Array (_ BitVec 32) ValueCell!3087)) (size!8534 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17309)

(declare-fun e!205219 () Bool)

(declare-fun array_inv!6074 (array!17309) Bool)

(assert (=> start!33682 (and (array_inv!6074 _values!1525) e!205219)))

(declare-datatypes ((array!17311 0))(
  ( (array!17312 (arr!8183 (Array (_ BitVec 32) (_ BitVec 64))) (size!8535 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17311)

(declare-fun array_inv!6075 (array!17311) Bool)

(assert (=> start!33682 (array_inv!6075 _keys!1895)))

(declare-fun b!334300 () Bool)

(declare-fun res!184378 () Bool)

(assert (=> b!334300 (=> (not res!184378) (not e!205223))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334300 (= res!184378 (and (= (size!8534 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8535 _keys!1895) (size!8534 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334301 () Bool)

(declare-fun e!205220 () Bool)

(assert (=> b!334301 (= e!205220 (not true))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334301 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3173 0))(
  ( (MissingZero!3173 (index!14871 (_ BitVec 32))) (Found!3173 (index!14872 (_ BitVec 32))) (Intermediate!3173 (undefined!3985 Bool) (index!14873 (_ BitVec 32)) (x!33334 (_ BitVec 32))) (Undefined!3173) (MissingVacant!3173 (index!14874 (_ BitVec 32))) )
))
(declare-fun lt!159494 () SeekEntryResult!3173)

(declare-datatypes ((Unit!10400 0))(
  ( (Unit!10401) )
))
(declare-fun lt!159495 () Unit!10400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17311 (_ BitVec 64) (_ BitVec 32)) Unit!10400)

(assert (=> b!334301 (= lt!159495 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14872 lt!159494)))))

(declare-fun b!334302 () Bool)

(declare-fun res!184377 () Bool)

(assert (=> b!334302 (=> (not res!184377) (not e!205223))))

(declare-datatypes ((List!4691 0))(
  ( (Nil!4688) (Cons!4687 (h!5543 (_ BitVec 64)) (t!9787 List!4691)) )
))
(declare-fun arrayNoDuplicates!0 (array!17311 (_ BitVec 32) List!4691) Bool)

(assert (=> b!334302 (= res!184377 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4688))))

(declare-fun b!334303 () Bool)

(declare-fun e!205222 () Bool)

(assert (=> b!334303 (= e!205222 tp_is_empty!6861)))

(declare-fun b!334304 () Bool)

(declare-fun res!184376 () Bool)

(assert (=> b!334304 (=> (not res!184376) (not e!205220))))

(assert (=> b!334304 (= res!184376 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14872 lt!159494)))))

(declare-fun b!334305 () Bool)

(declare-fun e!205224 () Bool)

(assert (=> b!334305 (= e!205224 tp_is_empty!6861)))

(declare-fun b!334306 () Bool)

(assert (=> b!334306 (= e!205223 e!205220)))

(declare-fun res!184381 () Bool)

(assert (=> b!334306 (=> (not res!184381) (not e!205220))))

(get-info :version)

(assert (=> b!334306 (= res!184381 (and ((_ is Found!3173) lt!159494) (= (select (arr!8183 _keys!1895) (index!14872 lt!159494)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17311 (_ BitVec 32)) SeekEntryResult!3173)

(assert (=> b!334306 (= lt!159494 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334307 () Bool)

(declare-fun res!184380 () Bool)

(assert (=> b!334307 (=> (not res!184380) (not e!205223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17311 (_ BitVec 32)) Bool)

(assert (=> b!334307 (= res!184380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11688 () Bool)

(declare-fun mapRes!11688 () Bool)

(declare-fun tp!24230 () Bool)

(assert (=> mapNonEmpty!11688 (= mapRes!11688 (and tp!24230 e!205222))))

(declare-fun mapRest!11688 () (Array (_ BitVec 32) ValueCell!3087))

(declare-fun mapValue!11688 () ValueCell!3087)

(declare-fun mapKey!11688 () (_ BitVec 32))

(assert (=> mapNonEmpty!11688 (= (arr!8182 _values!1525) (store mapRest!11688 mapKey!11688 mapValue!11688))))

(declare-fun b!334308 () Bool)

(declare-fun res!184382 () Bool)

(assert (=> b!334308 (=> (not res!184382) (not e!205223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334308 (= res!184382 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!11688 () Bool)

(assert (=> mapIsEmpty!11688 mapRes!11688))

(declare-fun b!334309 () Bool)

(assert (=> b!334309 (= e!205219 (and e!205224 mapRes!11688))))

(declare-fun condMapEmpty!11688 () Bool)

(declare-fun mapDefault!11688 () ValueCell!3087)

(assert (=> b!334309 (= condMapEmpty!11688 (= (arr!8182 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3087)) mapDefault!11688)))))

(declare-fun b!334310 () Bool)

(declare-fun res!184379 () Bool)

(assert (=> b!334310 (=> (not res!184379) (not e!205223))))

(declare-fun zeroValue!1467 () V!10125)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10125)

(declare-datatypes ((tuple2!5050 0))(
  ( (tuple2!5051 (_1!2535 (_ BitVec 64)) (_2!2535 V!10125)) )
))
(declare-datatypes ((List!4692 0))(
  ( (Nil!4689) (Cons!4688 (h!5544 tuple2!5050) (t!9788 List!4692)) )
))
(declare-datatypes ((ListLongMap!3977 0))(
  ( (ListLongMap!3978 (toList!2004 List!4692)) )
))
(declare-fun contains!2044 (ListLongMap!3977 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1527 (array!17311 array!17309 (_ BitVec 32) (_ BitVec 32) V!10125 V!10125 (_ BitVec 32) Int) ListLongMap!3977)

(assert (=> b!334310 (= res!184379 (not (contains!2044 (getCurrentListMap!1527 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!33682 res!184375) b!334300))

(assert (= (and b!334300 res!184378) b!334307))

(assert (= (and b!334307 res!184380) b!334302))

(assert (= (and b!334302 res!184377) b!334308))

(assert (= (and b!334308 res!184382) b!334310))

(assert (= (and b!334310 res!184379) b!334306))

(assert (= (and b!334306 res!184381) b!334304))

(assert (= (and b!334304 res!184376) b!334301))

(assert (= (and b!334309 condMapEmpty!11688) mapIsEmpty!11688))

(assert (= (and b!334309 (not condMapEmpty!11688)) mapNonEmpty!11688))

(assert (= (and mapNonEmpty!11688 ((_ is ValueCellFull!3087) mapValue!11688)) b!334303))

(assert (= (and b!334309 ((_ is ValueCellFull!3087) mapDefault!11688)) b!334305))

(assert (= start!33682 b!334309))

(declare-fun m!338397 () Bool)

(assert (=> mapNonEmpty!11688 m!338397))

(declare-fun m!338399 () Bool)

(assert (=> b!334307 m!338399))

(declare-fun m!338401 () Bool)

(assert (=> b!334310 m!338401))

(assert (=> b!334310 m!338401))

(declare-fun m!338403 () Bool)

(assert (=> b!334310 m!338403))

(declare-fun m!338405 () Bool)

(assert (=> b!334304 m!338405))

(declare-fun m!338407 () Bool)

(assert (=> b!334301 m!338407))

(declare-fun m!338409 () Bool)

(assert (=> b!334301 m!338409))

(declare-fun m!338411 () Bool)

(assert (=> b!334306 m!338411))

(declare-fun m!338413 () Bool)

(assert (=> b!334306 m!338413))

(declare-fun m!338415 () Bool)

(assert (=> start!33682 m!338415))

(declare-fun m!338417 () Bool)

(assert (=> start!33682 m!338417))

(declare-fun m!338419 () Bool)

(assert (=> start!33682 m!338419))

(declare-fun m!338421 () Bool)

(assert (=> b!334302 m!338421))

(declare-fun m!338423 () Bool)

(assert (=> b!334308 m!338423))

(check-sat b_and!14107 (not b_next!6909) (not b!334301) (not b!334308) (not b!334307) (not b!334304) (not mapNonEmpty!11688) (not b!334302) (not b!334306) (not start!33682) (not b!334310) tp_is_empty!6861)
(check-sat b_and!14107 (not b_next!6909))
