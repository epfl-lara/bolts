; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34846 () Bool)

(assert start!34846)

(declare-fun b_free!7623 () Bool)

(declare-fun b_next!7623 () Bool)

(assert (=> start!34846 (= b_free!7623 (not b_next!7623))))

(declare-fun tp!26436 () Bool)

(declare-fun b_and!14863 () Bool)

(assert (=> start!34846 (= tp!26436 b_and!14863)))

(declare-fun b!348636 () Bool)

(declare-fun res!193264 () Bool)

(declare-fun e!213591 () Bool)

(assert (=> b!348636 (=> (not res!193264) (not e!213591))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11077 0))(
  ( (V!11078 (val!3832 Int)) )
))
(declare-datatypes ((ValueCell!3444 0))(
  ( (ValueCellFull!3444 (v!6011 V!11077)) (EmptyCell!3444) )
))
(declare-datatypes ((array!18703 0))(
  ( (array!18704 (arr!8858 (Array (_ BitVec 32) ValueCell!3444)) (size!9210 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18703)

(declare-datatypes ((array!18705 0))(
  ( (array!18706 (arr!8859 (Array (_ BitVec 32) (_ BitVec 64))) (size!9211 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18705)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348636 (= res!193264 (and (= (size!9210 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9211 _keys!1895) (size!9210 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348637 () Bool)

(declare-fun e!213588 () Bool)

(declare-fun e!213590 () Bool)

(declare-fun mapRes!12822 () Bool)

(assert (=> b!348637 (= e!213588 (and e!213590 mapRes!12822))))

(declare-fun condMapEmpty!12822 () Bool)

(declare-fun mapDefault!12822 () ValueCell!3444)

(assert (=> b!348637 (= condMapEmpty!12822 (= (arr!8858 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3444)) mapDefault!12822)))))

(declare-fun b!348638 () Bool)

(declare-fun e!213592 () Bool)

(assert (=> b!348638 (= e!213591 e!213592)))

(declare-fun res!193260 () Bool)

(assert (=> b!348638 (=> (not res!193260) (not e!213592))))

(declare-datatypes ((SeekEntryResult!3412 0))(
  ( (MissingZero!3412 (index!15827 (_ BitVec 32))) (Found!3412 (index!15828 (_ BitVec 32))) (Intermediate!3412 (undefined!4224 Bool) (index!15829 (_ BitVec 32)) (x!34735 (_ BitVec 32))) (Undefined!3412) (MissingVacant!3412 (index!15830 (_ BitVec 32))) )
))
(declare-fun lt!163910 () SeekEntryResult!3412)

(get-info :version)

(assert (=> b!348638 (= res!193260 (and (not ((_ is Found!3412) lt!163910)) ((_ is MissingZero!3412) lt!163910)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18705 (_ BitVec 32)) SeekEntryResult!3412)

(assert (=> b!348638 (= lt!163910 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12822 () Bool)

(assert (=> mapIsEmpty!12822 mapRes!12822))

(declare-fun b!348639 () Bool)

(declare-fun tp_is_empty!7575 () Bool)

(assert (=> b!348639 (= e!213590 tp_is_empty!7575)))

(declare-fun b!348640 () Bool)

(declare-fun res!193263 () Bool)

(assert (=> b!348640 (=> (not res!193263) (not e!213591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348640 (= res!193263 (validKeyInArray!0 k0!1348))))

(declare-fun b!348641 () Bool)

(assert (=> b!348641 (= e!213592 false)))

(declare-fun lt!163911 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18705 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348641 (= lt!163911 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348642 () Bool)

(declare-fun res!193266 () Bool)

(assert (=> b!348642 (=> (not res!193266) (not e!213591))))

(declare-fun zeroValue!1467 () V!11077)

(declare-fun minValue!1467 () V!11077)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5532 0))(
  ( (tuple2!5533 (_1!2776 (_ BitVec 64)) (_2!2776 V!11077)) )
))
(declare-datatypes ((List!5174 0))(
  ( (Nil!5171) (Cons!5170 (h!6026 tuple2!5532) (t!10312 List!5174)) )
))
(declare-datatypes ((ListLongMap!4459 0))(
  ( (ListLongMap!4460 (toList!2245 List!5174)) )
))
(declare-fun contains!2306 (ListLongMap!4459 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1762 (array!18705 array!18703 (_ BitVec 32) (_ BitVec 32) V!11077 V!11077 (_ BitVec 32) Int) ListLongMap!4459)

(assert (=> b!348642 (= res!193266 (not (contains!2306 (getCurrentListMap!1762 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!193262 () Bool)

(assert (=> start!34846 (=> (not res!193262) (not e!213591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34846 (= res!193262 (validMask!0 mask!2385))))

(assert (=> start!34846 e!213591))

(assert (=> start!34846 true))

(assert (=> start!34846 tp_is_empty!7575))

(assert (=> start!34846 tp!26436))

(declare-fun array_inv!6534 (array!18703) Bool)

(assert (=> start!34846 (and (array_inv!6534 _values!1525) e!213588)))

(declare-fun array_inv!6535 (array!18705) Bool)

(assert (=> start!34846 (array_inv!6535 _keys!1895)))

(declare-fun b!348643 () Bool)

(declare-fun res!193265 () Bool)

(assert (=> b!348643 (=> (not res!193265) (not e!213592))))

(declare-fun arrayContainsKey!0 (array!18705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348643 (= res!193265 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348644 () Bool)

(declare-fun res!193267 () Bool)

(assert (=> b!348644 (=> (not res!193267) (not e!213591))))

(declare-datatypes ((List!5175 0))(
  ( (Nil!5172) (Cons!5171 (h!6027 (_ BitVec 64)) (t!10313 List!5175)) )
))
(declare-fun arrayNoDuplicates!0 (array!18705 (_ BitVec 32) List!5175) Bool)

(assert (=> b!348644 (= res!193267 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5172))))

(declare-fun mapNonEmpty!12822 () Bool)

(declare-fun tp!26435 () Bool)

(declare-fun e!213593 () Bool)

(assert (=> mapNonEmpty!12822 (= mapRes!12822 (and tp!26435 e!213593))))

(declare-fun mapKey!12822 () (_ BitVec 32))

(declare-fun mapRest!12822 () (Array (_ BitVec 32) ValueCell!3444))

(declare-fun mapValue!12822 () ValueCell!3444)

(assert (=> mapNonEmpty!12822 (= (arr!8858 _values!1525) (store mapRest!12822 mapKey!12822 mapValue!12822))))

(declare-fun b!348645 () Bool)

(assert (=> b!348645 (= e!213593 tp_is_empty!7575)))

(declare-fun b!348646 () Bool)

(declare-fun res!193261 () Bool)

(assert (=> b!348646 (=> (not res!193261) (not e!213591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18705 (_ BitVec 32)) Bool)

(assert (=> b!348646 (= res!193261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34846 res!193262) b!348636))

(assert (= (and b!348636 res!193264) b!348646))

(assert (= (and b!348646 res!193261) b!348644))

(assert (= (and b!348644 res!193267) b!348640))

(assert (= (and b!348640 res!193263) b!348642))

(assert (= (and b!348642 res!193266) b!348638))

(assert (= (and b!348638 res!193260) b!348643))

(assert (= (and b!348643 res!193265) b!348641))

(assert (= (and b!348637 condMapEmpty!12822) mapIsEmpty!12822))

(assert (= (and b!348637 (not condMapEmpty!12822)) mapNonEmpty!12822))

(assert (= (and mapNonEmpty!12822 ((_ is ValueCellFull!3444) mapValue!12822)) b!348645))

(assert (= (and b!348637 ((_ is ValueCellFull!3444) mapDefault!12822)) b!348639))

(assert (= start!34846 b!348637))

(declare-fun m!349341 () Bool)

(assert (=> b!348643 m!349341))

(declare-fun m!349343 () Bool)

(assert (=> b!348642 m!349343))

(assert (=> b!348642 m!349343))

(declare-fun m!349345 () Bool)

(assert (=> b!348642 m!349345))

(declare-fun m!349347 () Bool)

(assert (=> b!348641 m!349347))

(declare-fun m!349349 () Bool)

(assert (=> b!348638 m!349349))

(declare-fun m!349351 () Bool)

(assert (=> b!348646 m!349351))

(declare-fun m!349353 () Bool)

(assert (=> b!348640 m!349353))

(declare-fun m!349355 () Bool)

(assert (=> b!348644 m!349355))

(declare-fun m!349357 () Bool)

(assert (=> mapNonEmpty!12822 m!349357))

(declare-fun m!349359 () Bool)

(assert (=> start!34846 m!349359))

(declare-fun m!349361 () Bool)

(assert (=> start!34846 m!349361))

(declare-fun m!349363 () Bool)

(assert (=> start!34846 m!349363))

(check-sat (not b!348643) (not b!348642) (not start!34846) (not b!348640) (not b!348638) (not mapNonEmpty!12822) (not b_next!7623) (not b!348644) b_and!14863 tp_is_empty!7575 (not b!348641) (not b!348646))
(check-sat b_and!14863 (not b_next!7623))
