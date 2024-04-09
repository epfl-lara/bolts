; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35106 () Bool)

(assert start!35106)

(declare-fun b_free!7743 () Bool)

(declare-fun b_next!7743 () Bool)

(assert (=> start!35106 (= b_free!7743 (not b_next!7743))))

(declare-fun tp!26814 () Bool)

(declare-fun b_and!14995 () Bool)

(assert (=> start!35106 (= tp!26814 b_and!14995)))

(declare-fun b!351589 () Bool)

(declare-fun res!195043 () Bool)

(declare-fun e!215325 () Bool)

(assert (=> b!351589 (=> (not res!195043) (not e!215325))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351589 (= res!195043 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!13020 () Bool)

(declare-fun mapRes!13020 () Bool)

(assert (=> mapIsEmpty!13020 mapRes!13020))

(declare-fun b!351590 () Bool)

(declare-fun res!195044 () Bool)

(assert (=> b!351590 (=> (not res!195044) (not e!215325))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11237 0))(
  ( (V!11238 (val!3892 Int)) )
))
(declare-fun zeroValue!1467 () V!11237)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3504 0))(
  ( (ValueCellFull!3504 (v!6077 V!11237)) (EmptyCell!3504) )
))
(declare-datatypes ((array!18935 0))(
  ( (array!18936 (arr!8968 (Array (_ BitVec 32) ValueCell!3504)) (size!9320 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18935)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11237)

(declare-datatypes ((array!18937 0))(
  ( (array!18938 (arr!8969 (Array (_ BitVec 32) (_ BitVec 64))) (size!9321 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18937)

(declare-datatypes ((tuple2!5608 0))(
  ( (tuple2!5609 (_1!2814 (_ BitVec 64)) (_2!2814 V!11237)) )
))
(declare-datatypes ((List!5245 0))(
  ( (Nil!5242) (Cons!5241 (h!6097 tuple2!5608) (t!10395 List!5245)) )
))
(declare-datatypes ((ListLongMap!4535 0))(
  ( (ListLongMap!4536 (toList!2283 List!5245)) )
))
(declare-fun contains!2350 (ListLongMap!4535 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1800 (array!18937 array!18935 (_ BitVec 32) (_ BitVec 32) V!11237 V!11237 (_ BitVec 32) Int) ListLongMap!4535)

(assert (=> b!351590 (= res!195044 (not (contains!2350 (getCurrentListMap!1800 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!351591 () Bool)

(declare-fun e!215321 () Bool)

(declare-fun e!215322 () Bool)

(assert (=> b!351591 (= e!215321 (and e!215322 mapRes!13020))))

(declare-fun condMapEmpty!13020 () Bool)

(declare-fun mapDefault!13020 () ValueCell!3504)

(assert (=> b!351591 (= condMapEmpty!13020 (= (arr!8968 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3504)) mapDefault!13020)))))

(declare-fun b!351592 () Bool)

(declare-fun tp_is_empty!7695 () Bool)

(assert (=> b!351592 (= e!215322 tp_is_empty!7695)))

(declare-fun res!195041 () Bool)

(assert (=> start!35106 (=> (not res!195041) (not e!215325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35106 (= res!195041 (validMask!0 mask!2385))))

(assert (=> start!35106 e!215325))

(assert (=> start!35106 true))

(assert (=> start!35106 tp_is_empty!7695))

(assert (=> start!35106 tp!26814))

(declare-fun array_inv!6610 (array!18935) Bool)

(assert (=> start!35106 (and (array_inv!6610 _values!1525) e!215321)))

(declare-fun array_inv!6611 (array!18937) Bool)

(assert (=> start!35106 (array_inv!6611 _keys!1895)))

(declare-fun b!351593 () Bool)

(declare-fun res!195040 () Bool)

(assert (=> b!351593 (=> (not res!195040) (not e!215325))))

(declare-datatypes ((List!5246 0))(
  ( (Nil!5243) (Cons!5242 (h!6098 (_ BitVec 64)) (t!10396 List!5246)) )
))
(declare-fun arrayNoDuplicates!0 (array!18937 (_ BitVec 32) List!5246) Bool)

(assert (=> b!351593 (= res!195040 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5243))))

(declare-fun b!351594 () Bool)

(declare-fun res!195037 () Bool)

(declare-fun e!215324 () Bool)

(assert (=> b!351594 (=> (not res!195037) (not e!215324))))

(declare-fun arrayContainsKey!0 (array!18937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351594 (= res!195037 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!13020 () Bool)

(declare-fun tp!26813 () Bool)

(declare-fun e!215323 () Bool)

(assert (=> mapNonEmpty!13020 (= mapRes!13020 (and tp!26813 e!215323))))

(declare-fun mapKey!13020 () (_ BitVec 32))

(declare-fun mapRest!13020 () (Array (_ BitVec 32) ValueCell!3504))

(declare-fun mapValue!13020 () ValueCell!3504)

(assert (=> mapNonEmpty!13020 (= (arr!8968 _values!1525) (store mapRest!13020 mapKey!13020 mapValue!13020))))

(declare-fun b!351595 () Bool)

(assert (=> b!351595 (= e!215323 tp_is_empty!7695)))

(declare-fun b!351596 () Bool)

(assert (=> b!351596 (= e!215324 (not true))))

(assert (=> b!351596 false))

(declare-datatypes ((Unit!10859 0))(
  ( (Unit!10860) )
))
(declare-fun lt!164934 () Unit!10859)

(declare-fun lemmaArrayContainsKeyThenInListMap!325 (array!18937 array!18935 (_ BitVec 32) (_ BitVec 32) V!11237 V!11237 (_ BitVec 64) (_ BitVec 32) Int) Unit!10859)

(declare-fun arrayScanForKey!0 (array!18937 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351596 (= lt!164934 (lemmaArrayContainsKeyThenInListMap!325 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(declare-fun b!351597 () Bool)

(declare-fun res!195038 () Bool)

(assert (=> b!351597 (=> (not res!195038) (not e!215325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18937 (_ BitVec 32)) Bool)

(assert (=> b!351597 (= res!195038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351598 () Bool)

(declare-fun res!195042 () Bool)

(assert (=> b!351598 (=> (not res!195042) (not e!215325))))

(assert (=> b!351598 (= res!195042 (and (= (size!9320 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9321 _keys!1895) (size!9320 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351599 () Bool)

(assert (=> b!351599 (= e!215325 e!215324)))

(declare-fun res!195039 () Bool)

(assert (=> b!351599 (=> (not res!195039) (not e!215324))))

(declare-datatypes ((SeekEntryResult!3448 0))(
  ( (MissingZero!3448 (index!15971 (_ BitVec 32))) (Found!3448 (index!15972 (_ BitVec 32))) (Intermediate!3448 (undefined!4260 Bool) (index!15973 (_ BitVec 32)) (x!34991 (_ BitVec 32))) (Undefined!3448) (MissingVacant!3448 (index!15974 (_ BitVec 32))) )
))
(declare-fun lt!164933 () SeekEntryResult!3448)

(get-info :version)

(assert (=> b!351599 (= res!195039 (and (not ((_ is Found!3448) lt!164933)) (not ((_ is MissingZero!3448) lt!164933)) ((_ is MissingVacant!3448) lt!164933)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18937 (_ BitVec 32)) SeekEntryResult!3448)

(assert (=> b!351599 (= lt!164933 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(assert (= (and start!35106 res!195041) b!351598))

(assert (= (and b!351598 res!195042) b!351597))

(assert (= (and b!351597 res!195038) b!351593))

(assert (= (and b!351593 res!195040) b!351589))

(assert (= (and b!351589 res!195043) b!351590))

(assert (= (and b!351590 res!195044) b!351599))

(assert (= (and b!351599 res!195039) b!351594))

(assert (= (and b!351594 res!195037) b!351596))

(assert (= (and b!351591 condMapEmpty!13020) mapIsEmpty!13020))

(assert (= (and b!351591 (not condMapEmpty!13020)) mapNonEmpty!13020))

(assert (= (and mapNonEmpty!13020 ((_ is ValueCellFull!3504) mapValue!13020)) b!351595))

(assert (= (and b!351591 ((_ is ValueCellFull!3504) mapDefault!13020)) b!351592))

(assert (= start!35106 b!351591))

(declare-fun m!351461 () Bool)

(assert (=> b!351589 m!351461))

(declare-fun m!351463 () Bool)

(assert (=> b!351594 m!351463))

(declare-fun m!351465 () Bool)

(assert (=> b!351599 m!351465))

(declare-fun m!351467 () Bool)

(assert (=> mapNonEmpty!13020 m!351467))

(declare-fun m!351469 () Bool)

(assert (=> start!35106 m!351469))

(declare-fun m!351471 () Bool)

(assert (=> start!35106 m!351471))

(declare-fun m!351473 () Bool)

(assert (=> start!35106 m!351473))

(declare-fun m!351475 () Bool)

(assert (=> b!351597 m!351475))

(declare-fun m!351477 () Bool)

(assert (=> b!351593 m!351477))

(declare-fun m!351479 () Bool)

(assert (=> b!351590 m!351479))

(assert (=> b!351590 m!351479))

(declare-fun m!351481 () Bool)

(assert (=> b!351590 m!351481))

(declare-fun m!351483 () Bool)

(assert (=> b!351596 m!351483))

(assert (=> b!351596 m!351483))

(declare-fun m!351485 () Bool)

(assert (=> b!351596 m!351485))

(check-sat (not b!351594) (not mapNonEmpty!13020) (not b!351599) (not b!351590) (not b_next!7743) b_and!14995 (not b!351596) (not b!351597) tp_is_empty!7695 (not start!35106) (not b!351589) (not b!351593))
(check-sat b_and!14995 (not b_next!7743))
