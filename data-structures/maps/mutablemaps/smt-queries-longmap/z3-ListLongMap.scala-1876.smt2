; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33700 () Bool)

(assert start!33700)

(declare-fun b_free!6927 () Bool)

(declare-fun b_next!6927 () Bool)

(assert (=> start!33700 (= b_free!6927 (not b_next!6927))))

(declare-fun tp!24285 () Bool)

(declare-fun b_and!14125 () Bool)

(assert (=> start!33700 (= tp!24285 b_and!14125)))

(declare-fun b!334597 () Bool)

(declare-fun e!205391 () Bool)

(declare-fun tp_is_empty!6879 () Bool)

(assert (=> b!334597 (= e!205391 tp_is_empty!6879)))

(declare-fun b!334598 () Bool)

(declare-fun res!184591 () Bool)

(declare-fun e!205390 () Bool)

(assert (=> b!334598 (=> (not res!184591) (not e!205390))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334598 (= res!184591 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!11715 () Bool)

(declare-fun mapRes!11715 () Bool)

(assert (=> mapIsEmpty!11715 mapRes!11715))

(declare-fun b!334599 () Bool)

(declare-fun e!205389 () Bool)

(declare-fun e!205392 () Bool)

(assert (=> b!334599 (= e!205389 e!205392)))

(declare-fun res!184598 () Bool)

(assert (=> b!334599 (=> (not res!184598) (not e!205392))))

(declare-datatypes ((SeekEntryResult!3179 0))(
  ( (MissingZero!3179 (index!14895 (_ BitVec 32))) (Found!3179 (index!14896 (_ BitVec 32))) (Intermediate!3179 (undefined!3991 Bool) (index!14897 (_ BitVec 32)) (x!33364 (_ BitVec 32))) (Undefined!3179) (MissingVacant!3179 (index!14898 (_ BitVec 32))) )
))
(declare-fun lt!159560 () SeekEntryResult!3179)

(declare-datatypes ((array!17343 0))(
  ( (array!17344 (arr!8199 (Array (_ BitVec 32) (_ BitVec 64))) (size!8551 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17343)

(get-info :version)

(assert (=> b!334599 (= res!184598 (and ((_ is Found!3179) lt!159560) (= (select (arr!8199 _keys!1895) (index!14896 lt!159560)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17343 (_ BitVec 32)) SeekEntryResult!3179)

(assert (=> b!334599 (= lt!159560 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334600 () Bool)

(declare-fun e!205386 () Bool)

(assert (=> b!334600 (= e!205386 tp_is_empty!6879)))

(declare-fun b!334601 () Bool)

(assert (=> b!334601 (= e!205392 (not true))))

(declare-datatypes ((V!10149 0))(
  ( (V!10150 (val!3484 Int)) )
))
(declare-datatypes ((tuple2!5062 0))(
  ( (tuple2!5063 (_1!2541 (_ BitVec 64)) (_2!2541 V!10149)) )
))
(declare-datatypes ((List!4704 0))(
  ( (Nil!4701) (Cons!4700 (h!5556 tuple2!5062) (t!9800 List!4704)) )
))
(declare-datatypes ((ListLongMap!3989 0))(
  ( (ListLongMap!3990 (toList!2010 List!4704)) )
))
(declare-fun lt!159559 () ListLongMap!3989)

(declare-fun contains!2050 (ListLongMap!3989 (_ BitVec 64)) Bool)

(assert (=> b!334601 (contains!2050 lt!159559 (select (arr!8199 _keys!1895) (index!14896 lt!159560)))))

(declare-fun zeroValue!1467 () V!10149)

(declare-datatypes ((Unit!10408 0))(
  ( (Unit!10409) )
))
(declare-fun lt!159558 () Unit!10408)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3096 0))(
  ( (ValueCellFull!3096 (v!5642 V!10149)) (EmptyCell!3096) )
))
(declare-datatypes ((array!17345 0))(
  ( (array!17346 (arr!8200 (Array (_ BitVec 32) ValueCell!3096)) (size!8552 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17345)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10149)

(declare-fun lemmaValidKeyInArrayIsInListMap!150 (array!17343 array!17345 (_ BitVec 32) (_ BitVec 32) V!10149 V!10149 (_ BitVec 32) Int) Unit!10408)

(assert (=> b!334601 (= lt!159558 (lemmaValidKeyInArrayIsInListMap!150 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14896 lt!159560) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334601 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159561 () Unit!10408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17343 (_ BitVec 64) (_ BitVec 32)) Unit!10408)

(assert (=> b!334601 (= lt!159561 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14896 lt!159560)))))

(declare-fun b!334602 () Bool)

(declare-fun res!184597 () Bool)

(assert (=> b!334602 (=> (not res!184597) (not e!205390))))

(assert (=> b!334602 (= res!184597 (and (= (size!8552 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8551 _keys!1895) (size!8552 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334603 () Bool)

(declare-fun res!184596 () Bool)

(assert (=> b!334603 (=> (not res!184596) (not e!205390))))

(declare-datatypes ((List!4705 0))(
  ( (Nil!4702) (Cons!4701 (h!5557 (_ BitVec 64)) (t!9801 List!4705)) )
))
(declare-fun arrayNoDuplicates!0 (array!17343 (_ BitVec 32) List!4705) Bool)

(assert (=> b!334603 (= res!184596 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4702))))

(declare-fun mapNonEmpty!11715 () Bool)

(declare-fun tp!24284 () Bool)

(assert (=> mapNonEmpty!11715 (= mapRes!11715 (and tp!24284 e!205391))))

(declare-fun mapKey!11715 () (_ BitVec 32))

(declare-fun mapValue!11715 () ValueCell!3096)

(declare-fun mapRest!11715 () (Array (_ BitVec 32) ValueCell!3096))

(assert (=> mapNonEmpty!11715 (= (arr!8200 _values!1525) (store mapRest!11715 mapKey!11715 mapValue!11715))))

(declare-fun b!334604 () Bool)

(declare-fun res!184592 () Bool)

(assert (=> b!334604 (=> (not res!184592) (not e!205392))))

(assert (=> b!334604 (= res!184592 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14896 lt!159560)))))

(declare-fun b!334605 () Bool)

(declare-fun e!205387 () Bool)

(assert (=> b!334605 (= e!205387 (and e!205386 mapRes!11715))))

(declare-fun condMapEmpty!11715 () Bool)

(declare-fun mapDefault!11715 () ValueCell!3096)

(assert (=> b!334605 (= condMapEmpty!11715 (= (arr!8200 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3096)) mapDefault!11715)))))

(declare-fun res!184595 () Bool)

(assert (=> start!33700 (=> (not res!184595) (not e!205390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33700 (= res!184595 (validMask!0 mask!2385))))

(assert (=> start!33700 e!205390))

(assert (=> start!33700 true))

(assert (=> start!33700 tp_is_empty!6879))

(assert (=> start!33700 tp!24285))

(declare-fun array_inv!6084 (array!17345) Bool)

(assert (=> start!33700 (and (array_inv!6084 _values!1525) e!205387)))

(declare-fun array_inv!6085 (array!17343) Bool)

(assert (=> start!33700 (array_inv!6085 _keys!1895)))

(declare-fun b!334606 () Bool)

(declare-fun res!184593 () Bool)

(assert (=> b!334606 (=> (not res!184593) (not e!205390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17343 (_ BitVec 32)) Bool)

(assert (=> b!334606 (= res!184593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334607 () Bool)

(assert (=> b!334607 (= e!205390 e!205389)))

(declare-fun res!184594 () Bool)

(assert (=> b!334607 (=> (not res!184594) (not e!205389))))

(assert (=> b!334607 (= res!184594 (not (contains!2050 lt!159559 k0!1348)))))

(declare-fun getCurrentListMap!1533 (array!17343 array!17345 (_ BitVec 32) (_ BitVec 32) V!10149 V!10149 (_ BitVec 32) Int) ListLongMap!3989)

(assert (=> b!334607 (= lt!159559 (getCurrentListMap!1533 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(assert (= (and start!33700 res!184595) b!334602))

(assert (= (and b!334602 res!184597) b!334606))

(assert (= (and b!334606 res!184593) b!334603))

(assert (= (and b!334603 res!184596) b!334598))

(assert (= (and b!334598 res!184591) b!334607))

(assert (= (and b!334607 res!184594) b!334599))

(assert (= (and b!334599 res!184598) b!334604))

(assert (= (and b!334604 res!184592) b!334601))

(assert (= (and b!334605 condMapEmpty!11715) mapIsEmpty!11715))

(assert (= (and b!334605 (not condMapEmpty!11715)) mapNonEmpty!11715))

(assert (= (and mapNonEmpty!11715 ((_ is ValueCellFull!3096) mapValue!11715)) b!334597))

(assert (= (and b!334605 ((_ is ValueCellFull!3096) mapDefault!11715)) b!334600))

(assert (= start!33700 b!334605))

(declare-fun m!338653 () Bool)

(assert (=> b!334607 m!338653))

(declare-fun m!338655 () Bool)

(assert (=> b!334607 m!338655))

(declare-fun m!338657 () Bool)

(assert (=> mapNonEmpty!11715 m!338657))

(declare-fun m!338659 () Bool)

(assert (=> b!334606 m!338659))

(declare-fun m!338661 () Bool)

(assert (=> b!334599 m!338661))

(declare-fun m!338663 () Bool)

(assert (=> b!334599 m!338663))

(declare-fun m!338665 () Bool)

(assert (=> b!334598 m!338665))

(declare-fun m!338667 () Bool)

(assert (=> start!33700 m!338667))

(declare-fun m!338669 () Bool)

(assert (=> start!33700 m!338669))

(declare-fun m!338671 () Bool)

(assert (=> start!33700 m!338671))

(declare-fun m!338673 () Bool)

(assert (=> b!334601 m!338673))

(declare-fun m!338675 () Bool)

(assert (=> b!334601 m!338675))

(assert (=> b!334601 m!338661))

(assert (=> b!334601 m!338661))

(declare-fun m!338677 () Bool)

(assert (=> b!334601 m!338677))

(declare-fun m!338679 () Bool)

(assert (=> b!334601 m!338679))

(declare-fun m!338681 () Bool)

(assert (=> b!334604 m!338681))

(declare-fun m!338683 () Bool)

(assert (=> b!334603 m!338683))

(check-sat (not b!334604) (not b!334607) (not b!334599) (not b!334598) (not b!334603) tp_is_empty!6879 (not mapNonEmpty!11715) (not start!33700) b_and!14125 (not b_next!6927) (not b!334606) (not b!334601))
(check-sat b_and!14125 (not b_next!6927))
