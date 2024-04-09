; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34840 () Bool)

(assert start!34840)

(declare-fun b_free!7617 () Bool)

(declare-fun b_next!7617 () Bool)

(assert (=> start!34840 (= b_free!7617 (not b_next!7617))))

(declare-fun tp!26418 () Bool)

(declare-fun b_and!14857 () Bool)

(assert (=> start!34840 (= tp!26418 b_and!14857)))

(declare-fun b!348537 () Bool)

(declare-fun e!213534 () Bool)

(declare-fun e!213538 () Bool)

(assert (=> b!348537 (= e!213534 e!213538)))

(declare-fun res!193191 () Bool)

(assert (=> b!348537 (=> (not res!193191) (not e!213538))))

(declare-datatypes ((SeekEntryResult!3410 0))(
  ( (MissingZero!3410 (index!15819 (_ BitVec 32))) (Found!3410 (index!15820 (_ BitVec 32))) (Intermediate!3410 (undefined!4222 Bool) (index!15821 (_ BitVec 32)) (x!34725 (_ BitVec 32))) (Undefined!3410) (MissingVacant!3410 (index!15822 (_ BitVec 32))) )
))
(declare-fun lt!163892 () SeekEntryResult!3410)

(get-info :version)

(assert (=> b!348537 (= res!193191 (and (not ((_ is Found!3410) lt!163892)) ((_ is MissingZero!3410) lt!163892)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18691 0))(
  ( (array!18692 (arr!8852 (Array (_ BitVec 32) (_ BitVec 64))) (size!9204 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18691)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18691 (_ BitVec 32)) SeekEntryResult!3410)

(assert (=> b!348537 (= lt!163892 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348538 () Bool)

(declare-fun e!213537 () Bool)

(declare-fun tp_is_empty!7569 () Bool)

(assert (=> b!348538 (= e!213537 tp_is_empty!7569)))

(declare-fun b!348539 () Bool)

(declare-fun res!193190 () Bool)

(assert (=> b!348539 (=> (not res!193190) (not e!213538))))

(declare-fun arrayContainsKey!0 (array!18691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348539 (= res!193190 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12813 () Bool)

(declare-fun mapRes!12813 () Bool)

(declare-fun tp!26417 () Bool)

(declare-fun e!213535 () Bool)

(assert (=> mapNonEmpty!12813 (= mapRes!12813 (and tp!26417 e!213535))))

(declare-datatypes ((V!11069 0))(
  ( (V!11070 (val!3829 Int)) )
))
(declare-datatypes ((ValueCell!3441 0))(
  ( (ValueCellFull!3441 (v!6008 V!11069)) (EmptyCell!3441) )
))
(declare-fun mapRest!12813 () (Array (_ BitVec 32) ValueCell!3441))

(declare-datatypes ((array!18693 0))(
  ( (array!18694 (arr!8853 (Array (_ BitVec 32) ValueCell!3441)) (size!9205 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18693)

(declare-fun mapKey!12813 () (_ BitVec 32))

(declare-fun mapValue!12813 () ValueCell!3441)

(assert (=> mapNonEmpty!12813 (= (arr!8853 _values!1525) (store mapRest!12813 mapKey!12813 mapValue!12813))))

(declare-fun b!348540 () Bool)

(declare-fun res!193194 () Bool)

(assert (=> b!348540 (=> (not res!193194) (not e!213534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18691 (_ BitVec 32)) Bool)

(assert (=> b!348540 (= res!193194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348541 () Bool)

(declare-fun res!193195 () Bool)

(assert (=> b!348541 (=> (not res!193195) (not e!213534))))

(declare-fun zeroValue!1467 () V!11069)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11069)

(declare-datatypes ((tuple2!5528 0))(
  ( (tuple2!5529 (_1!2774 (_ BitVec 64)) (_2!2774 V!11069)) )
))
(declare-datatypes ((List!5169 0))(
  ( (Nil!5166) (Cons!5165 (h!6021 tuple2!5528) (t!10307 List!5169)) )
))
(declare-datatypes ((ListLongMap!4455 0))(
  ( (ListLongMap!4456 (toList!2243 List!5169)) )
))
(declare-fun contains!2304 (ListLongMap!4455 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1760 (array!18691 array!18693 (_ BitVec 32) (_ BitVec 32) V!11069 V!11069 (_ BitVec 32) Int) ListLongMap!4455)

(assert (=> b!348541 (= res!193195 (not (contains!2304 (getCurrentListMap!1760 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348542 () Bool)

(declare-fun e!213536 () Bool)

(assert (=> b!348542 (= e!213536 (and e!213537 mapRes!12813))))

(declare-fun condMapEmpty!12813 () Bool)

(declare-fun mapDefault!12813 () ValueCell!3441)

(assert (=> b!348542 (= condMapEmpty!12813 (= (arr!8853 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3441)) mapDefault!12813)))))

(declare-fun res!193192 () Bool)

(assert (=> start!34840 (=> (not res!193192) (not e!213534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34840 (= res!193192 (validMask!0 mask!2385))))

(assert (=> start!34840 e!213534))

(assert (=> start!34840 true))

(assert (=> start!34840 tp_is_empty!7569))

(assert (=> start!34840 tp!26418))

(declare-fun array_inv!6530 (array!18693) Bool)

(assert (=> start!34840 (and (array_inv!6530 _values!1525) e!213536)))

(declare-fun array_inv!6531 (array!18691) Bool)

(assert (=> start!34840 (array_inv!6531 _keys!1895)))

(declare-fun b!348543 () Bool)

(declare-fun res!193193 () Bool)

(assert (=> b!348543 (=> (not res!193193) (not e!213534))))

(assert (=> b!348543 (= res!193193 (and (= (size!9205 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9204 _keys!1895) (size!9205 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348544 () Bool)

(declare-fun res!193189 () Bool)

(assert (=> b!348544 (=> (not res!193189) (not e!213534))))

(declare-datatypes ((List!5170 0))(
  ( (Nil!5167) (Cons!5166 (h!6022 (_ BitVec 64)) (t!10308 List!5170)) )
))
(declare-fun arrayNoDuplicates!0 (array!18691 (_ BitVec 32) List!5170) Bool)

(assert (=> b!348544 (= res!193189 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5167))))

(declare-fun b!348545 () Bool)

(declare-fun res!193188 () Bool)

(assert (=> b!348545 (=> (not res!193188) (not e!213534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348545 (= res!193188 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12813 () Bool)

(assert (=> mapIsEmpty!12813 mapRes!12813))

(declare-fun b!348546 () Bool)

(assert (=> b!348546 (= e!213538 false)))

(declare-fun lt!163893 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18691 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348546 (= lt!163893 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348547 () Bool)

(assert (=> b!348547 (= e!213535 tp_is_empty!7569)))

(assert (= (and start!34840 res!193192) b!348543))

(assert (= (and b!348543 res!193193) b!348540))

(assert (= (and b!348540 res!193194) b!348544))

(assert (= (and b!348544 res!193189) b!348545))

(assert (= (and b!348545 res!193188) b!348541))

(assert (= (and b!348541 res!193195) b!348537))

(assert (= (and b!348537 res!193191) b!348539))

(assert (= (and b!348539 res!193190) b!348546))

(assert (= (and b!348542 condMapEmpty!12813) mapIsEmpty!12813))

(assert (= (and b!348542 (not condMapEmpty!12813)) mapNonEmpty!12813))

(assert (= (and mapNonEmpty!12813 ((_ is ValueCellFull!3441) mapValue!12813)) b!348547))

(assert (= (and b!348542 ((_ is ValueCellFull!3441) mapDefault!12813)) b!348538))

(assert (= start!34840 b!348542))

(declare-fun m!349269 () Bool)

(assert (=> b!348537 m!349269))

(declare-fun m!349271 () Bool)

(assert (=> b!348545 m!349271))

(declare-fun m!349273 () Bool)

(assert (=> b!348540 m!349273))

(declare-fun m!349275 () Bool)

(assert (=> b!348541 m!349275))

(assert (=> b!348541 m!349275))

(declare-fun m!349277 () Bool)

(assert (=> b!348541 m!349277))

(declare-fun m!349279 () Bool)

(assert (=> b!348546 m!349279))

(declare-fun m!349281 () Bool)

(assert (=> mapNonEmpty!12813 m!349281))

(declare-fun m!349283 () Bool)

(assert (=> b!348544 m!349283))

(declare-fun m!349285 () Bool)

(assert (=> start!34840 m!349285))

(declare-fun m!349287 () Bool)

(assert (=> start!34840 m!349287))

(declare-fun m!349289 () Bool)

(assert (=> start!34840 m!349289))

(declare-fun m!349291 () Bool)

(assert (=> b!348539 m!349291))

(check-sat (not b!348541) (not b!348539) (not b!348546) (not start!34840) (not b!348540) (not b!348545) (not b!348544) b_and!14857 (not b_next!7617) tp_is_empty!7569 (not b!348537) (not mapNonEmpty!12813))
(check-sat b_and!14857 (not b_next!7617))
