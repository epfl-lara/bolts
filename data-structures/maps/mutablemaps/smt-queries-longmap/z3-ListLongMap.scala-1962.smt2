; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34528 () Bool)

(assert start!34528)

(declare-fun b_free!7443 () Bool)

(declare-fun b_next!7443 () Bool)

(assert (=> start!34528 (= b_free!7443 (not b_next!7443))))

(declare-fun tp!25874 () Bool)

(declare-fun b_and!14669 () Bool)

(assert (=> start!34528 (= tp!25874 b_and!14669)))

(declare-fun b!344825 () Bool)

(declare-fun res!190834 () Bool)

(declare-fun e!211364 () Bool)

(assert (=> b!344825 (=> (not res!190834) (not e!211364))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10837 0))(
  ( (V!10838 (val!3742 Int)) )
))
(declare-fun zeroValue!1467 () V!10837)

(declare-datatypes ((ValueCell!3354 0))(
  ( (ValueCellFull!3354 (v!5914 V!10837)) (EmptyCell!3354) )
))
(declare-datatypes ((array!18345 0))(
  ( (array!18346 (arr!8686 (Array (_ BitVec 32) ValueCell!3354)) (size!9038 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18345)

(declare-datatypes ((array!18347 0))(
  ( (array!18348 (arr!8687 (Array (_ BitVec 32) (_ BitVec 64))) (size!9039 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18347)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10837)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5402 0))(
  ( (tuple2!5403 (_1!2711 (_ BitVec 64)) (_2!2711 V!10837)) )
))
(declare-datatypes ((List!5050 0))(
  ( (Nil!5047) (Cons!5046 (h!5902 tuple2!5402) (t!10174 List!5050)) )
))
(declare-datatypes ((ListLongMap!4329 0))(
  ( (ListLongMap!4330 (toList!2180 List!5050)) )
))
(declare-fun contains!2234 (ListLongMap!4329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1700 (array!18347 array!18345 (_ BitVec 32) (_ BitVec 32) V!10837 V!10837 (_ BitVec 32) Int) ListLongMap!4329)

(assert (=> b!344825 (= res!190834 (not (contains!2234 (getCurrentListMap!1700 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344826 () Bool)

(declare-fun res!190838 () Bool)

(assert (=> b!344826 (=> (not res!190838) (not e!211364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344826 (= res!190838 (validKeyInArray!0 k0!1348))))

(declare-fun b!344827 () Bool)

(assert (=> b!344827 (= e!211364 false)))

(declare-datatypes ((SeekEntryResult!3346 0))(
  ( (MissingZero!3346 (index!15563 (_ BitVec 32))) (Found!3346 (index!15564 (_ BitVec 32))) (Intermediate!3346 (undefined!4158 Bool) (index!15565 (_ BitVec 32)) (x!34359 (_ BitVec 32))) (Undefined!3346) (MissingVacant!3346 (index!15566 (_ BitVec 32))) )
))
(declare-fun lt!162699 () SeekEntryResult!3346)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18347 (_ BitVec 32)) SeekEntryResult!3346)

(assert (=> b!344827 (= lt!162699 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12531 () Bool)

(declare-fun mapRes!12531 () Bool)

(assert (=> mapIsEmpty!12531 mapRes!12531))

(declare-fun b!344828 () Bool)

(declare-fun res!190833 () Bool)

(assert (=> b!344828 (=> (not res!190833) (not e!211364))))

(assert (=> b!344828 (= res!190833 (and (= (size!9038 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9039 _keys!1895) (size!9038 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344829 () Bool)

(declare-fun e!211367 () Bool)

(declare-fun tp_is_empty!7395 () Bool)

(assert (=> b!344829 (= e!211367 tp_is_empty!7395)))

(declare-fun mapNonEmpty!12531 () Bool)

(declare-fun tp!25875 () Bool)

(declare-fun e!211368 () Bool)

(assert (=> mapNonEmpty!12531 (= mapRes!12531 (and tp!25875 e!211368))))

(declare-fun mapRest!12531 () (Array (_ BitVec 32) ValueCell!3354))

(declare-fun mapValue!12531 () ValueCell!3354)

(declare-fun mapKey!12531 () (_ BitVec 32))

(assert (=> mapNonEmpty!12531 (= (arr!8686 _values!1525) (store mapRest!12531 mapKey!12531 mapValue!12531))))

(declare-fun b!344830 () Bool)

(assert (=> b!344830 (= e!211368 tp_is_empty!7395)))

(declare-fun b!344831 () Bool)

(declare-fun res!190835 () Bool)

(assert (=> b!344831 (=> (not res!190835) (not e!211364))))

(declare-datatypes ((List!5051 0))(
  ( (Nil!5048) (Cons!5047 (h!5903 (_ BitVec 64)) (t!10175 List!5051)) )
))
(declare-fun arrayNoDuplicates!0 (array!18347 (_ BitVec 32) List!5051) Bool)

(assert (=> b!344831 (= res!190835 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5048))))

(declare-fun res!190837 () Bool)

(assert (=> start!34528 (=> (not res!190837) (not e!211364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34528 (= res!190837 (validMask!0 mask!2385))))

(assert (=> start!34528 e!211364))

(assert (=> start!34528 true))

(assert (=> start!34528 tp_is_empty!7395))

(assert (=> start!34528 tp!25874))

(declare-fun e!211366 () Bool)

(declare-fun array_inv!6424 (array!18345) Bool)

(assert (=> start!34528 (and (array_inv!6424 _values!1525) e!211366)))

(declare-fun array_inv!6425 (array!18347) Bool)

(assert (=> start!34528 (array_inv!6425 _keys!1895)))

(declare-fun b!344832 () Bool)

(assert (=> b!344832 (= e!211366 (and e!211367 mapRes!12531))))

(declare-fun condMapEmpty!12531 () Bool)

(declare-fun mapDefault!12531 () ValueCell!3354)

(assert (=> b!344832 (= condMapEmpty!12531 (= (arr!8686 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3354)) mapDefault!12531)))))

(declare-fun b!344833 () Bool)

(declare-fun res!190836 () Bool)

(assert (=> b!344833 (=> (not res!190836) (not e!211364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18347 (_ BitVec 32)) Bool)

(assert (=> b!344833 (= res!190836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34528 res!190837) b!344828))

(assert (= (and b!344828 res!190833) b!344833))

(assert (= (and b!344833 res!190836) b!344831))

(assert (= (and b!344831 res!190835) b!344826))

(assert (= (and b!344826 res!190838) b!344825))

(assert (= (and b!344825 res!190834) b!344827))

(assert (= (and b!344832 condMapEmpty!12531) mapIsEmpty!12531))

(assert (= (and b!344832 (not condMapEmpty!12531)) mapNonEmpty!12531))

(get-info :version)

(assert (= (and mapNonEmpty!12531 ((_ is ValueCellFull!3354) mapValue!12531)) b!344830))

(assert (= (and b!344832 ((_ is ValueCellFull!3354) mapDefault!12531)) b!344829))

(assert (= start!34528 b!344832))

(declare-fun m!346337 () Bool)

(assert (=> b!344831 m!346337))

(declare-fun m!346339 () Bool)

(assert (=> mapNonEmpty!12531 m!346339))

(declare-fun m!346341 () Bool)

(assert (=> b!344833 m!346341))

(declare-fun m!346343 () Bool)

(assert (=> start!34528 m!346343))

(declare-fun m!346345 () Bool)

(assert (=> start!34528 m!346345))

(declare-fun m!346347 () Bool)

(assert (=> start!34528 m!346347))

(declare-fun m!346349 () Bool)

(assert (=> b!344826 m!346349))

(declare-fun m!346351 () Bool)

(assert (=> b!344825 m!346351))

(assert (=> b!344825 m!346351))

(declare-fun m!346353 () Bool)

(assert (=> b!344825 m!346353))

(declare-fun m!346355 () Bool)

(assert (=> b!344827 m!346355))

(check-sat (not start!34528) (not b!344826) (not b!344825) (not b!344827) (not b_next!7443) (not b!344831) (not b!344833) tp_is_empty!7395 (not mapNonEmpty!12531) b_and!14669)
(check-sat b_and!14669 (not b_next!7443))
