; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34816 () Bool)

(assert start!34816)

(declare-fun b_free!7593 () Bool)

(declare-fun b_next!7593 () Bool)

(assert (=> start!34816 (= b_free!7593 (not b_next!7593))))

(declare-fun tp!26345 () Bool)

(declare-fun b_and!14833 () Bool)

(assert (=> start!34816 (= tp!26345 b_and!14833)))

(declare-fun b!348141 () Bool)

(declare-fun res!192903 () Bool)

(declare-fun e!213321 () Bool)

(assert (=> b!348141 (=> (not res!192903) (not e!213321))))

(declare-datatypes ((array!18643 0))(
  ( (array!18644 (arr!8828 (Array (_ BitVec 32) (_ BitVec 64))) (size!9180 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18643)

(declare-datatypes ((List!5153 0))(
  ( (Nil!5150) (Cons!5149 (h!6005 (_ BitVec 64)) (t!10291 List!5153)) )
))
(declare-fun arrayNoDuplicates!0 (array!18643 (_ BitVec 32) List!5153) Bool)

(assert (=> b!348141 (= res!192903 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5150))))

(declare-fun b!348143 () Bool)

(declare-fun e!213320 () Bool)

(declare-fun tp_is_empty!7545 () Bool)

(assert (=> b!348143 (= e!213320 tp_is_empty!7545)))

(declare-fun b!348144 () Bool)

(declare-fun res!192905 () Bool)

(assert (=> b!348144 (=> (not res!192905) (not e!213321))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18643 (_ BitVec 32)) Bool)

(assert (=> b!348144 (= res!192905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348145 () Bool)

(declare-fun e!213319 () Bool)

(assert (=> b!348145 (= e!213319 false)))

(declare-fun lt!163820 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18643 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348145 (= lt!163820 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12777 () Bool)

(declare-fun mapRes!12777 () Bool)

(declare-fun tp!26346 () Bool)

(assert (=> mapNonEmpty!12777 (= mapRes!12777 (and tp!26346 e!213320))))

(declare-datatypes ((V!11037 0))(
  ( (V!11038 (val!3817 Int)) )
))
(declare-datatypes ((ValueCell!3429 0))(
  ( (ValueCellFull!3429 (v!5996 V!11037)) (EmptyCell!3429) )
))
(declare-fun mapValue!12777 () ValueCell!3429)

(declare-datatypes ((array!18645 0))(
  ( (array!18646 (arr!8829 (Array (_ BitVec 32) ValueCell!3429)) (size!9181 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18645)

(declare-fun mapRest!12777 () (Array (_ BitVec 32) ValueCell!3429))

(declare-fun mapKey!12777 () (_ BitVec 32))

(assert (=> mapNonEmpty!12777 (= (arr!8829 _values!1525) (store mapRest!12777 mapKey!12777 mapValue!12777))))

(declare-fun mapIsEmpty!12777 () Bool)

(assert (=> mapIsEmpty!12777 mapRes!12777))

(declare-fun b!348146 () Bool)

(declare-fun res!192902 () Bool)

(assert (=> b!348146 (=> (not res!192902) (not e!213319))))

(declare-fun arrayContainsKey!0 (array!18643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348146 (= res!192902 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348147 () Bool)

(declare-fun res!192907 () Bool)

(assert (=> b!348147 (=> (not res!192907) (not e!213321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348147 (= res!192907 (validKeyInArray!0 k0!1348))))

(declare-fun b!348148 () Bool)

(declare-fun res!192906 () Bool)

(assert (=> b!348148 (=> (not res!192906) (not e!213321))))

(declare-fun zeroValue!1467 () V!11037)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11037)

(declare-datatypes ((tuple2!5510 0))(
  ( (tuple2!5511 (_1!2765 (_ BitVec 64)) (_2!2765 V!11037)) )
))
(declare-datatypes ((List!5154 0))(
  ( (Nil!5151) (Cons!5150 (h!6006 tuple2!5510) (t!10292 List!5154)) )
))
(declare-datatypes ((ListLongMap!4437 0))(
  ( (ListLongMap!4438 (toList!2234 List!5154)) )
))
(declare-fun contains!2295 (ListLongMap!4437 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1751 (array!18643 array!18645 (_ BitVec 32) (_ BitVec 32) V!11037 V!11037 (_ BitVec 32) Int) ListLongMap!4437)

(assert (=> b!348148 (= res!192906 (not (contains!2295 (getCurrentListMap!1751 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348149 () Bool)

(declare-fun e!213322 () Bool)

(assert (=> b!348149 (= e!213322 tp_is_empty!7545)))

(declare-fun res!192901 () Bool)

(assert (=> start!34816 (=> (not res!192901) (not e!213321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34816 (= res!192901 (validMask!0 mask!2385))))

(assert (=> start!34816 e!213321))

(assert (=> start!34816 true))

(assert (=> start!34816 tp_is_empty!7545))

(assert (=> start!34816 tp!26345))

(declare-fun e!213318 () Bool)

(declare-fun array_inv!6520 (array!18645) Bool)

(assert (=> start!34816 (and (array_inv!6520 _values!1525) e!213318)))

(declare-fun array_inv!6521 (array!18643) Bool)

(assert (=> start!34816 (array_inv!6521 _keys!1895)))

(declare-fun b!348142 () Bool)

(assert (=> b!348142 (= e!213318 (and e!213322 mapRes!12777))))

(declare-fun condMapEmpty!12777 () Bool)

(declare-fun mapDefault!12777 () ValueCell!3429)

(assert (=> b!348142 (= condMapEmpty!12777 (= (arr!8829 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3429)) mapDefault!12777)))))

(declare-fun b!348150 () Bool)

(assert (=> b!348150 (= e!213321 e!213319)))

(declare-fun res!192900 () Bool)

(assert (=> b!348150 (=> (not res!192900) (not e!213319))))

(declare-datatypes ((SeekEntryResult!3402 0))(
  ( (MissingZero!3402 (index!15787 (_ BitVec 32))) (Found!3402 (index!15788 (_ BitVec 32))) (Intermediate!3402 (undefined!4214 Bool) (index!15789 (_ BitVec 32)) (x!34685 (_ BitVec 32))) (Undefined!3402) (MissingVacant!3402 (index!15790 (_ BitVec 32))) )
))
(declare-fun lt!163821 () SeekEntryResult!3402)

(get-info :version)

(assert (=> b!348150 (= res!192900 (and (not ((_ is Found!3402) lt!163821)) ((_ is MissingZero!3402) lt!163821)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18643 (_ BitVec 32)) SeekEntryResult!3402)

(assert (=> b!348150 (= lt!163821 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348151 () Bool)

(declare-fun res!192904 () Bool)

(assert (=> b!348151 (=> (not res!192904) (not e!213321))))

(assert (=> b!348151 (= res!192904 (and (= (size!9181 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9180 _keys!1895) (size!9181 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34816 res!192901) b!348151))

(assert (= (and b!348151 res!192904) b!348144))

(assert (= (and b!348144 res!192905) b!348141))

(assert (= (and b!348141 res!192903) b!348147))

(assert (= (and b!348147 res!192907) b!348148))

(assert (= (and b!348148 res!192906) b!348150))

(assert (= (and b!348150 res!192900) b!348146))

(assert (= (and b!348146 res!192902) b!348145))

(assert (= (and b!348142 condMapEmpty!12777) mapIsEmpty!12777))

(assert (= (and b!348142 (not condMapEmpty!12777)) mapNonEmpty!12777))

(assert (= (and mapNonEmpty!12777 ((_ is ValueCellFull!3429) mapValue!12777)) b!348143))

(assert (= (and b!348142 ((_ is ValueCellFull!3429) mapDefault!12777)) b!348149))

(assert (= start!34816 b!348142))

(declare-fun m!348981 () Bool)

(assert (=> b!348148 m!348981))

(assert (=> b!348148 m!348981))

(declare-fun m!348983 () Bool)

(assert (=> b!348148 m!348983))

(declare-fun m!348985 () Bool)

(assert (=> b!348150 m!348985))

(declare-fun m!348987 () Bool)

(assert (=> b!348144 m!348987))

(declare-fun m!348989 () Bool)

(assert (=> b!348145 m!348989))

(declare-fun m!348991 () Bool)

(assert (=> b!348141 m!348991))

(declare-fun m!348993 () Bool)

(assert (=> b!348147 m!348993))

(declare-fun m!348995 () Bool)

(assert (=> start!34816 m!348995))

(declare-fun m!348997 () Bool)

(assert (=> start!34816 m!348997))

(declare-fun m!348999 () Bool)

(assert (=> start!34816 m!348999))

(declare-fun m!349001 () Bool)

(assert (=> b!348146 m!349001))

(declare-fun m!349003 () Bool)

(assert (=> mapNonEmpty!12777 m!349003))

(check-sat (not b!348144) (not mapNonEmpty!12777) tp_is_empty!7545 (not b!348150) (not b!348141) b_and!14833 (not b!348146) (not b!348145) (not start!34816) (not b!348148) (not b!348147) (not b_next!7593))
(check-sat b_and!14833 (not b_next!7593))
