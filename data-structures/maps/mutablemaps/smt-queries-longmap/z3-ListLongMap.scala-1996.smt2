; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34914 () Bool)

(assert start!34914)

(declare-fun b_free!7647 () Bool)

(declare-fun b_next!7647 () Bool)

(assert (=> start!34914 (= b_free!7647 (not b_next!7647))))

(declare-fun tp!26514 () Bool)

(declare-fun b_and!14891 () Bool)

(assert (=> start!34914 (= tp!26514 b_and!14891)))

(declare-fun b!349321 () Bool)

(declare-fun e!213995 () Bool)

(declare-fun tp_is_empty!7599 () Bool)

(assert (=> b!349321 (= e!213995 tp_is_empty!7599)))

(declare-fun mapIsEmpty!12864 () Bool)

(declare-fun mapRes!12864 () Bool)

(assert (=> mapIsEmpty!12864 mapRes!12864))

(declare-fun mapNonEmpty!12864 () Bool)

(declare-fun tp!26513 () Bool)

(assert (=> mapNonEmpty!12864 (= mapRes!12864 (and tp!26513 e!213995))))

(declare-datatypes ((V!11109 0))(
  ( (V!11110 (val!3844 Int)) )
))
(declare-datatypes ((ValueCell!3456 0))(
  ( (ValueCellFull!3456 (v!6025 V!11109)) (EmptyCell!3456) )
))
(declare-datatypes ((array!18753 0))(
  ( (array!18754 (arr!8881 (Array (_ BitVec 32) ValueCell!3456)) (size!9233 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18753)

(declare-fun mapRest!12864 () (Array (_ BitVec 32) ValueCell!3456))

(declare-fun mapValue!12864 () ValueCell!3456)

(declare-fun mapKey!12864 () (_ BitVec 32))

(assert (=> mapNonEmpty!12864 (= (arr!8881 _values!1525) (store mapRest!12864 mapKey!12864 mapValue!12864))))

(declare-fun b!349323 () Bool)

(declare-fun e!213997 () Bool)

(assert (=> b!349323 (= e!213997 (not true))))

(assert (=> b!349323 false))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11109)

(declare-datatypes ((Unit!10814 0))(
  ( (Unit!10815) )
))
(declare-fun lt!164181 () Unit!10814)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18755 0))(
  ( (array!18756 (arr!8882 (Array (_ BitVec 32) (_ BitVec 64))) (size!9234 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18755)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11109)

(declare-fun lemmaArrayContainsKeyThenInListMap!316 (array!18755 array!18753 (_ BitVec 32) (_ BitVec 32) V!11109 V!11109 (_ BitVec 64) (_ BitVec 32) Int) Unit!10814)

(declare-fun arrayScanForKey!0 (array!18755 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349323 (= lt!164181 (lemmaArrayContainsKeyThenInListMap!316 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(declare-fun b!349324 () Bool)

(declare-fun e!213996 () Bool)

(assert (=> b!349324 (= e!213996 e!213997)))

(declare-fun res!193668 () Bool)

(assert (=> b!349324 (=> (not res!193668) (not e!213997))))

(declare-datatypes ((SeekEntryResult!3420 0))(
  ( (MissingZero!3420 (index!15859 (_ BitVec 32))) (Found!3420 (index!15860 (_ BitVec 32))) (Intermediate!3420 (undefined!4232 Bool) (index!15861 (_ BitVec 32)) (x!34795 (_ BitVec 32))) (Undefined!3420) (MissingVacant!3420 (index!15862 (_ BitVec 32))) )
))
(declare-fun lt!164180 () SeekEntryResult!3420)

(get-info :version)

(assert (=> b!349324 (= res!193668 (and (not ((_ is Found!3420) lt!164180)) ((_ is MissingZero!3420) lt!164180)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18755 (_ BitVec 32)) SeekEntryResult!3420)

(assert (=> b!349324 (= lt!164180 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!349325 () Bool)

(declare-fun res!193666 () Bool)

(assert (=> b!349325 (=> (not res!193666) (not e!213996))))

(declare-datatypes ((List!5189 0))(
  ( (Nil!5186) (Cons!5185 (h!6041 (_ BitVec 64)) (t!10331 List!5189)) )
))
(declare-fun arrayNoDuplicates!0 (array!18755 (_ BitVec 32) List!5189) Bool)

(assert (=> b!349325 (= res!193666 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5186))))

(declare-fun b!349326 () Bool)

(declare-fun e!213999 () Bool)

(assert (=> b!349326 (= e!213999 tp_is_empty!7599)))

(declare-fun b!349327 () Bool)

(declare-fun res!193662 () Bool)

(assert (=> b!349327 (=> (not res!193662) (not e!213996))))

(assert (=> b!349327 (= res!193662 (and (= (size!9233 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9234 _keys!1895) (size!9233 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349328 () Bool)

(declare-fun res!193663 () Bool)

(assert (=> b!349328 (=> (not res!193663) (not e!213996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18755 (_ BitVec 32)) Bool)

(assert (=> b!349328 (= res!193663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349329 () Bool)

(declare-fun e!214000 () Bool)

(assert (=> b!349329 (= e!214000 (and e!213999 mapRes!12864))))

(declare-fun condMapEmpty!12864 () Bool)

(declare-fun mapDefault!12864 () ValueCell!3456)

(assert (=> b!349329 (= condMapEmpty!12864 (= (arr!8881 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3456)) mapDefault!12864)))))

(declare-fun b!349322 () Bool)

(declare-fun res!193667 () Bool)

(assert (=> b!349322 (=> (not res!193667) (not e!213996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349322 (= res!193667 (validKeyInArray!0 k0!1348))))

(declare-fun res!193665 () Bool)

(assert (=> start!34914 (=> (not res!193665) (not e!213996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34914 (= res!193665 (validMask!0 mask!2385))))

(assert (=> start!34914 e!213996))

(assert (=> start!34914 true))

(assert (=> start!34914 tp_is_empty!7599))

(assert (=> start!34914 tp!26514))

(declare-fun array_inv!6550 (array!18753) Bool)

(assert (=> start!34914 (and (array_inv!6550 _values!1525) e!214000)))

(declare-fun array_inv!6551 (array!18755) Bool)

(assert (=> start!34914 (array_inv!6551 _keys!1895)))

(declare-fun b!349330 () Bool)

(declare-fun res!193661 () Bool)

(assert (=> b!349330 (=> (not res!193661) (not e!213996))))

(declare-datatypes ((tuple2!5550 0))(
  ( (tuple2!5551 (_1!2785 (_ BitVec 64)) (_2!2785 V!11109)) )
))
(declare-datatypes ((List!5190 0))(
  ( (Nil!5187) (Cons!5186 (h!6042 tuple2!5550) (t!10332 List!5190)) )
))
(declare-datatypes ((ListLongMap!4477 0))(
  ( (ListLongMap!4478 (toList!2254 List!5190)) )
))
(declare-fun contains!2317 (ListLongMap!4477 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1771 (array!18755 array!18753 (_ BitVec 32) (_ BitVec 32) V!11109 V!11109 (_ BitVec 32) Int) ListLongMap!4477)

(assert (=> b!349330 (= res!193661 (not (contains!2317 (getCurrentListMap!1771 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!349331 () Bool)

(declare-fun res!193664 () Bool)

(assert (=> b!349331 (=> (not res!193664) (not e!213997))))

(declare-fun arrayContainsKey!0 (array!18755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349331 (= res!193664 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34914 res!193665) b!349327))

(assert (= (and b!349327 res!193662) b!349328))

(assert (= (and b!349328 res!193663) b!349325))

(assert (= (and b!349325 res!193666) b!349322))

(assert (= (and b!349322 res!193667) b!349330))

(assert (= (and b!349330 res!193661) b!349324))

(assert (= (and b!349324 res!193668) b!349331))

(assert (= (and b!349331 res!193664) b!349323))

(assert (= (and b!349329 condMapEmpty!12864) mapIsEmpty!12864))

(assert (= (and b!349329 (not condMapEmpty!12864)) mapNonEmpty!12864))

(assert (= (and mapNonEmpty!12864 ((_ is ValueCellFull!3456) mapValue!12864)) b!349321))

(assert (= (and b!349329 ((_ is ValueCellFull!3456) mapDefault!12864)) b!349326))

(assert (= start!34914 b!349329))

(declare-fun m!349841 () Bool)

(assert (=> b!349330 m!349841))

(assert (=> b!349330 m!349841))

(declare-fun m!349843 () Bool)

(assert (=> b!349330 m!349843))

(declare-fun m!349845 () Bool)

(assert (=> start!34914 m!349845))

(declare-fun m!349847 () Bool)

(assert (=> start!34914 m!349847))

(declare-fun m!349849 () Bool)

(assert (=> start!34914 m!349849))

(declare-fun m!349851 () Bool)

(assert (=> b!349324 m!349851))

(declare-fun m!349853 () Bool)

(assert (=> b!349322 m!349853))

(declare-fun m!349855 () Bool)

(assert (=> b!349323 m!349855))

(assert (=> b!349323 m!349855))

(declare-fun m!349857 () Bool)

(assert (=> b!349323 m!349857))

(declare-fun m!349859 () Bool)

(assert (=> b!349325 m!349859))

(declare-fun m!349861 () Bool)

(assert (=> b!349331 m!349861))

(declare-fun m!349863 () Bool)

(assert (=> b!349328 m!349863))

(declare-fun m!349865 () Bool)

(assert (=> mapNonEmpty!12864 m!349865))

(check-sat (not b!349323) (not b!349330) b_and!14891 tp_is_empty!7599 (not mapNonEmpty!12864) (not b!349324) (not start!34914) (not b!349325) (not b!349322) (not b!349331) (not b!349328) (not b_next!7647))
(check-sat b_and!14891 (not b_next!7647))
