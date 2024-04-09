; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34958 () Bool)

(assert start!34958)

(declare-fun b_free!7665 () Bool)

(declare-fun b_next!7665 () Bool)

(assert (=> start!34958 (= b_free!7665 (not b_next!7665))))

(declare-fun tp!26571 () Bool)

(declare-fun b_and!14911 () Bool)

(assert (=> start!34958 (= tp!26571 b_and!14911)))

(declare-fun mapNonEmpty!12894 () Bool)

(declare-fun mapRes!12894 () Bool)

(declare-fun tp!26570 () Bool)

(declare-fun e!214279 () Bool)

(assert (=> mapNonEmpty!12894 (= mapRes!12894 (and tp!26570 e!214279))))

(declare-fun mapKey!12894 () (_ BitVec 32))

(declare-datatypes ((V!11133 0))(
  ( (V!11134 (val!3853 Int)) )
))
(declare-datatypes ((ValueCell!3465 0))(
  ( (ValueCellFull!3465 (v!6035 V!11133)) (EmptyCell!3465) )
))
(declare-datatypes ((array!18787 0))(
  ( (array!18788 (arr!8897 (Array (_ BitVec 32) ValueCell!3465)) (size!9249 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18787)

(declare-fun mapValue!12894 () ValueCell!3465)

(declare-fun mapRest!12894 () (Array (_ BitVec 32) ValueCell!3465))

(assert (=> mapNonEmpty!12894 (= (arr!8897 _values!1525) (store mapRest!12894 mapKey!12894 mapValue!12894))))

(declare-fun b!349798 () Bool)

(declare-fun e!214284 () Bool)

(declare-fun tp_is_empty!7617 () Bool)

(assert (=> b!349798 (= e!214284 tp_is_empty!7617)))

(declare-fun res!193923 () Bool)

(declare-fun e!214282 () Bool)

(assert (=> start!34958 (=> (not res!193923) (not e!214282))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34958 (= res!193923 (validMask!0 mask!2385))))

(assert (=> start!34958 e!214282))

(assert (=> start!34958 true))

(assert (=> start!34958 tp_is_empty!7617))

(assert (=> start!34958 tp!26571))

(declare-fun e!214285 () Bool)

(declare-fun array_inv!6556 (array!18787) Bool)

(assert (=> start!34958 (and (array_inv!6556 _values!1525) e!214285)))

(declare-datatypes ((array!18789 0))(
  ( (array!18790 (arr!8898 (Array (_ BitVec 32) (_ BitVec 64))) (size!9250 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18789)

(declare-fun array_inv!6557 (array!18789) Bool)

(assert (=> start!34958 (array_inv!6557 _keys!1895)))

(declare-fun b!349799 () Bool)

(declare-fun e!214281 () Bool)

(assert (=> b!349799 (= e!214281 false)))

(declare-datatypes ((Unit!10835 0))(
  ( (Unit!10836) )
))
(declare-fun lt!164377 () Unit!10835)

(declare-fun e!214280 () Unit!10835)

(assert (=> b!349799 (= lt!164377 e!214280)))

(declare-fun c!53270 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349799 (= c!53270 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!349800 () Bool)

(assert (=> b!349800 (= e!214285 (and e!214284 mapRes!12894))))

(declare-fun condMapEmpty!12894 () Bool)

(declare-fun mapDefault!12894 () ValueCell!3465)

(assert (=> b!349800 (= condMapEmpty!12894 (= (arr!8897 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3465)) mapDefault!12894)))))

(declare-fun b!349801 () Bool)

(declare-fun res!193924 () Bool)

(assert (=> b!349801 (=> (not res!193924) (not e!214282))))

(declare-fun zeroValue!1467 () V!11133)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11133)

(declare-datatypes ((tuple2!5560 0))(
  ( (tuple2!5561 (_1!2790 (_ BitVec 64)) (_2!2790 V!11133)) )
))
(declare-datatypes ((List!5199 0))(
  ( (Nil!5196) (Cons!5195 (h!6051 tuple2!5560) (t!10343 List!5199)) )
))
(declare-datatypes ((ListLongMap!4487 0))(
  ( (ListLongMap!4488 (toList!2259 List!5199)) )
))
(declare-fun contains!2323 (ListLongMap!4487 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1776 (array!18789 array!18787 (_ BitVec 32) (_ BitVec 32) V!11133 V!11133 (_ BitVec 32) Int) ListLongMap!4487)

(assert (=> b!349801 (= res!193924 (not (contains!2323 (getCurrentListMap!1776 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!349802 () Bool)

(declare-fun res!193927 () Bool)

(assert (=> b!349802 (=> (not res!193927) (not e!214282))))

(declare-datatypes ((List!5200 0))(
  ( (Nil!5197) (Cons!5196 (h!6052 (_ BitVec 64)) (t!10344 List!5200)) )
))
(declare-fun arrayNoDuplicates!0 (array!18789 (_ BitVec 32) List!5200) Bool)

(assert (=> b!349802 (= res!193927 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5197))))

(declare-fun b!349803 () Bool)

(declare-fun Unit!10837 () Unit!10835)

(assert (=> b!349803 (= e!214280 Unit!10837)))

(declare-fun lt!164379 () Unit!10835)

(declare-fun lemmaArrayContainsKeyThenInListMap!322 (array!18789 array!18787 (_ BitVec 32) (_ BitVec 32) V!11133 V!11133 (_ BitVec 64) (_ BitVec 32) Int) Unit!10835)

(declare-fun arrayScanForKey!0 (array!18789 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349803 (= lt!164379 (lemmaArrayContainsKeyThenInListMap!322 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349803 false))

(declare-fun b!349804 () Bool)

(assert (=> b!349804 (= e!214279 tp_is_empty!7617)))

(declare-fun mapIsEmpty!12894 () Bool)

(assert (=> mapIsEmpty!12894 mapRes!12894))

(declare-fun b!349805 () Bool)

(declare-fun res!193928 () Bool)

(assert (=> b!349805 (=> (not res!193928) (not e!214282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18789 (_ BitVec 32)) Bool)

(assert (=> b!349805 (= res!193928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349806 () Bool)

(declare-fun res!193926 () Bool)

(assert (=> b!349806 (=> (not res!193926) (not e!214282))))

(assert (=> b!349806 (= res!193926 (and (= (size!9249 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9250 _keys!1895) (size!9249 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349807 () Bool)

(declare-fun Unit!10838 () Unit!10835)

(assert (=> b!349807 (= e!214280 Unit!10838)))

(declare-fun b!349808 () Bool)

(declare-fun res!193929 () Bool)

(assert (=> b!349808 (=> (not res!193929) (not e!214282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349808 (= res!193929 (validKeyInArray!0 k0!1348))))

(declare-fun b!349809 () Bool)

(assert (=> b!349809 (= e!214282 e!214281)))

(declare-fun res!193925 () Bool)

(assert (=> b!349809 (=> (not res!193925) (not e!214281))))

(declare-datatypes ((SeekEntryResult!3426 0))(
  ( (MissingZero!3426 (index!15883 (_ BitVec 32))) (Found!3426 (index!15884 (_ BitVec 32))) (Intermediate!3426 (undefined!4238 Bool) (index!15885 (_ BitVec 32)) (x!34835 (_ BitVec 32))) (Undefined!3426) (MissingVacant!3426 (index!15886 (_ BitVec 32))) )
))
(declare-fun lt!164378 () SeekEntryResult!3426)

(get-info :version)

(assert (=> b!349809 (= res!193925 (and (not ((_ is Found!3426) lt!164378)) ((_ is MissingZero!3426) lt!164378)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18789 (_ BitVec 32)) SeekEntryResult!3426)

(assert (=> b!349809 (= lt!164378 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(assert (= (and start!34958 res!193923) b!349806))

(assert (= (and b!349806 res!193926) b!349805))

(assert (= (and b!349805 res!193928) b!349802))

(assert (= (and b!349802 res!193927) b!349808))

(assert (= (and b!349808 res!193929) b!349801))

(assert (= (and b!349801 res!193924) b!349809))

(assert (= (and b!349809 res!193925) b!349799))

(assert (= (and b!349799 c!53270) b!349803))

(assert (= (and b!349799 (not c!53270)) b!349807))

(assert (= (and b!349800 condMapEmpty!12894) mapIsEmpty!12894))

(assert (= (and b!349800 (not condMapEmpty!12894)) mapNonEmpty!12894))

(assert (= (and mapNonEmpty!12894 ((_ is ValueCellFull!3465) mapValue!12894)) b!349804))

(assert (= (and b!349800 ((_ is ValueCellFull!3465) mapDefault!12894)) b!349798))

(assert (= start!34958 b!349800))

(declare-fun m!350183 () Bool)

(assert (=> b!349803 m!350183))

(assert (=> b!349803 m!350183))

(declare-fun m!350185 () Bool)

(assert (=> b!349803 m!350185))

(declare-fun m!350187 () Bool)

(assert (=> b!349805 m!350187))

(declare-fun m!350189 () Bool)

(assert (=> b!349799 m!350189))

(declare-fun m!350191 () Bool)

(assert (=> b!349802 m!350191))

(declare-fun m!350193 () Bool)

(assert (=> b!349801 m!350193))

(assert (=> b!349801 m!350193))

(declare-fun m!350195 () Bool)

(assert (=> b!349801 m!350195))

(declare-fun m!350197 () Bool)

(assert (=> start!34958 m!350197))

(declare-fun m!350199 () Bool)

(assert (=> start!34958 m!350199))

(declare-fun m!350201 () Bool)

(assert (=> start!34958 m!350201))

(declare-fun m!350203 () Bool)

(assert (=> b!349808 m!350203))

(declare-fun m!350205 () Bool)

(assert (=> b!349809 m!350205))

(declare-fun m!350207 () Bool)

(assert (=> mapNonEmpty!12894 m!350207))

(check-sat (not b!349801) (not mapNonEmpty!12894) (not b!349808) (not b!349805) b_and!14911 (not b!349799) (not b!349802) tp_is_empty!7617 (not b!349809) (not start!34958) (not b!349803) (not b_next!7665))
(check-sat b_and!14911 (not b_next!7665))
