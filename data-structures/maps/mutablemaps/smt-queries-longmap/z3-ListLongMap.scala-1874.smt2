; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33688 () Bool)

(assert start!33688)

(declare-fun b_free!6915 () Bool)

(declare-fun b_next!6915 () Bool)

(assert (=> start!33688 (= b_free!6915 (not b_next!6915))))

(declare-fun tp!24249 () Bool)

(declare-fun b_and!14113 () Bool)

(assert (=> start!33688 (= tp!24249 b_and!14113)))

(declare-fun b!334399 () Bool)

(declare-fun e!205276 () Bool)

(assert (=> b!334399 (= e!205276 (not true))))

(declare-datatypes ((array!17321 0))(
  ( (array!17322 (arr!8188 (Array (_ BitVec 32) (_ BitVec 64))) (size!8540 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17321)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334399 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3175 0))(
  ( (MissingZero!3175 (index!14879 (_ BitVec 32))) (Found!3175 (index!14880 (_ BitVec 32))) (Intermediate!3175 (undefined!3987 Bool) (index!14881 (_ BitVec 32)) (x!33344 (_ BitVec 32))) (Undefined!3175) (MissingVacant!3175 (index!14882 (_ BitVec 32))) )
))
(declare-fun lt!159513 () SeekEntryResult!3175)

(declare-datatypes ((Unit!10402 0))(
  ( (Unit!10403) )
))
(declare-fun lt!159512 () Unit!10402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17321 (_ BitVec 64) (_ BitVec 32)) Unit!10402)

(assert (=> b!334399 (= lt!159512 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14880 lt!159513)))))

(declare-fun b!334400 () Bool)

(declare-fun res!184451 () Bool)

(declare-fun e!205274 () Bool)

(assert (=> b!334400 (=> (not res!184451) (not e!205274))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10133 0))(
  ( (V!10134 (val!3478 Int)) )
))
(declare-datatypes ((ValueCell!3090 0))(
  ( (ValueCellFull!3090 (v!5636 V!10133)) (EmptyCell!3090) )
))
(declare-datatypes ((array!17323 0))(
  ( (array!17324 (arr!8189 (Array (_ BitVec 32) ValueCell!3090)) (size!8541 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17323)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334400 (= res!184451 (and (= (size!8541 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8540 _keys!1895) (size!8541 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334401 () Bool)

(assert (=> b!334401 (= e!205274 e!205276)))

(declare-fun res!184448 () Bool)

(assert (=> b!334401 (=> (not res!184448) (not e!205276))))

(get-info :version)

(assert (=> b!334401 (= res!184448 (and ((_ is Found!3175) lt!159513) (= (select (arr!8188 _keys!1895) (index!14880 lt!159513)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17321 (_ BitVec 32)) SeekEntryResult!3175)

(assert (=> b!334401 (= lt!159513 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334402 () Bool)

(declare-fun res!184452 () Bool)

(assert (=> b!334402 (=> (not res!184452) (not e!205274))))

(declare-datatypes ((List!4695 0))(
  ( (Nil!4692) (Cons!4691 (h!5547 (_ BitVec 64)) (t!9791 List!4695)) )
))
(declare-fun arrayNoDuplicates!0 (array!17321 (_ BitVec 32) List!4695) Bool)

(assert (=> b!334402 (= res!184452 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4692))))

(declare-fun b!334403 () Bool)

(declare-fun res!184453 () Bool)

(assert (=> b!334403 (=> (not res!184453) (not e!205274))))

(declare-fun zeroValue!1467 () V!10133)

(declare-fun minValue!1467 () V!10133)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5054 0))(
  ( (tuple2!5055 (_1!2537 (_ BitVec 64)) (_2!2537 V!10133)) )
))
(declare-datatypes ((List!4696 0))(
  ( (Nil!4693) (Cons!4692 (h!5548 tuple2!5054) (t!9792 List!4696)) )
))
(declare-datatypes ((ListLongMap!3981 0))(
  ( (ListLongMap!3982 (toList!2006 List!4696)) )
))
(declare-fun contains!2046 (ListLongMap!3981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1529 (array!17321 array!17323 (_ BitVec 32) (_ BitVec 32) V!10133 V!10133 (_ BitVec 32) Int) ListLongMap!3981)

(assert (=> b!334403 (= res!184453 (not (contains!2046 (getCurrentListMap!1529 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!184449 () Bool)

(assert (=> start!33688 (=> (not res!184449) (not e!205274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33688 (= res!184449 (validMask!0 mask!2385))))

(assert (=> start!33688 e!205274))

(assert (=> start!33688 true))

(declare-fun tp_is_empty!6867 () Bool)

(assert (=> start!33688 tp_is_empty!6867))

(assert (=> start!33688 tp!24249))

(declare-fun e!205277 () Bool)

(declare-fun array_inv!6076 (array!17323) Bool)

(assert (=> start!33688 (and (array_inv!6076 _values!1525) e!205277)))

(declare-fun array_inv!6077 (array!17321) Bool)

(assert (=> start!33688 (array_inv!6077 _keys!1895)))

(declare-fun b!334404 () Bool)

(declare-fun res!184454 () Bool)

(assert (=> b!334404 (=> (not res!184454) (not e!205274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17321 (_ BitVec 32)) Bool)

(assert (=> b!334404 (= res!184454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334405 () Bool)

(declare-fun e!205275 () Bool)

(assert (=> b!334405 (= e!205275 tp_is_empty!6867)))

(declare-fun b!334406 () Bool)

(declare-fun e!205273 () Bool)

(assert (=> b!334406 (= e!205273 tp_is_empty!6867)))

(declare-fun b!334407 () Bool)

(declare-fun res!184447 () Bool)

(assert (=> b!334407 (=> (not res!184447) (not e!205274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334407 (= res!184447 (validKeyInArray!0 k0!1348))))

(declare-fun b!334408 () Bool)

(declare-fun res!184450 () Bool)

(assert (=> b!334408 (=> (not res!184450) (not e!205276))))

(assert (=> b!334408 (= res!184450 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14880 lt!159513)))))

(declare-fun mapNonEmpty!11697 () Bool)

(declare-fun mapRes!11697 () Bool)

(declare-fun tp!24248 () Bool)

(assert (=> mapNonEmpty!11697 (= mapRes!11697 (and tp!24248 e!205275))))

(declare-fun mapKey!11697 () (_ BitVec 32))

(declare-fun mapRest!11697 () (Array (_ BitVec 32) ValueCell!3090))

(declare-fun mapValue!11697 () ValueCell!3090)

(assert (=> mapNonEmpty!11697 (= (arr!8189 _values!1525) (store mapRest!11697 mapKey!11697 mapValue!11697))))

(declare-fun mapIsEmpty!11697 () Bool)

(assert (=> mapIsEmpty!11697 mapRes!11697))

(declare-fun b!334409 () Bool)

(assert (=> b!334409 (= e!205277 (and e!205273 mapRes!11697))))

(declare-fun condMapEmpty!11697 () Bool)

(declare-fun mapDefault!11697 () ValueCell!3090)

(assert (=> b!334409 (= condMapEmpty!11697 (= (arr!8189 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3090)) mapDefault!11697)))))

(assert (= (and start!33688 res!184449) b!334400))

(assert (= (and b!334400 res!184451) b!334404))

(assert (= (and b!334404 res!184454) b!334402))

(assert (= (and b!334402 res!184452) b!334407))

(assert (= (and b!334407 res!184447) b!334403))

(assert (= (and b!334403 res!184453) b!334401))

(assert (= (and b!334401 res!184448) b!334408))

(assert (= (and b!334408 res!184450) b!334399))

(assert (= (and b!334409 condMapEmpty!11697) mapIsEmpty!11697))

(assert (= (and b!334409 (not condMapEmpty!11697)) mapNonEmpty!11697))

(assert (= (and mapNonEmpty!11697 ((_ is ValueCellFull!3090) mapValue!11697)) b!334405))

(assert (= (and b!334409 ((_ is ValueCellFull!3090) mapDefault!11697)) b!334406))

(assert (= start!33688 b!334409))

(declare-fun m!338481 () Bool)

(assert (=> b!334399 m!338481))

(declare-fun m!338483 () Bool)

(assert (=> b!334399 m!338483))

(declare-fun m!338485 () Bool)

(assert (=> b!334404 m!338485))

(declare-fun m!338487 () Bool)

(assert (=> start!33688 m!338487))

(declare-fun m!338489 () Bool)

(assert (=> start!33688 m!338489))

(declare-fun m!338491 () Bool)

(assert (=> start!33688 m!338491))

(declare-fun m!338493 () Bool)

(assert (=> b!334401 m!338493))

(declare-fun m!338495 () Bool)

(assert (=> b!334401 m!338495))

(declare-fun m!338497 () Bool)

(assert (=> b!334402 m!338497))

(declare-fun m!338499 () Bool)

(assert (=> b!334408 m!338499))

(declare-fun m!338501 () Bool)

(assert (=> b!334403 m!338501))

(assert (=> b!334403 m!338501))

(declare-fun m!338503 () Bool)

(assert (=> b!334403 m!338503))

(declare-fun m!338505 () Bool)

(assert (=> b!334407 m!338505))

(declare-fun m!338507 () Bool)

(assert (=> mapNonEmpty!11697 m!338507))

(check-sat (not b!334402) (not b!334408) (not b!334403) (not b!334404) (not b!334407) (not start!33688) (not b!334401) (not b!334399) (not b_next!6915) (not mapNonEmpty!11697) tp_is_empty!6867 b_and!14113)
(check-sat b_and!14113 (not b_next!6915))
