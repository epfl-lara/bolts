; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34522 () Bool)

(assert start!34522)

(declare-fun b_free!7437 () Bool)

(declare-fun b_next!7437 () Bool)

(assert (=> start!34522 (= b_free!7437 (not b_next!7437))))

(declare-fun tp!25857 () Bool)

(declare-fun b_and!14663 () Bool)

(assert (=> start!34522 (= tp!25857 b_and!14663)))

(declare-fun b!344744 () Bool)

(declare-fun e!211321 () Bool)

(declare-fun tp_is_empty!7389 () Bool)

(assert (=> b!344744 (= e!211321 tp_is_empty!7389)))

(declare-fun res!190780 () Bool)

(declare-fun e!211322 () Bool)

(assert (=> start!34522 (=> (not res!190780) (not e!211322))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34522 (= res!190780 (validMask!0 mask!2385))))

(assert (=> start!34522 e!211322))

(assert (=> start!34522 true))

(assert (=> start!34522 tp_is_empty!7389))

(assert (=> start!34522 tp!25857))

(declare-datatypes ((V!10829 0))(
  ( (V!10830 (val!3739 Int)) )
))
(declare-datatypes ((ValueCell!3351 0))(
  ( (ValueCellFull!3351 (v!5911 V!10829)) (EmptyCell!3351) )
))
(declare-datatypes ((array!18333 0))(
  ( (array!18334 (arr!8680 (Array (_ BitVec 32) ValueCell!3351)) (size!9032 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18333)

(declare-fun e!211320 () Bool)

(declare-fun array_inv!6420 (array!18333) Bool)

(assert (=> start!34522 (and (array_inv!6420 _values!1525) e!211320)))

(declare-datatypes ((array!18335 0))(
  ( (array!18336 (arr!8681 (Array (_ BitVec 32) (_ BitVec 64))) (size!9033 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18335)

(declare-fun array_inv!6421 (array!18335) Bool)

(assert (=> start!34522 (array_inv!6421 _keys!1895)))

(declare-fun mapNonEmpty!12522 () Bool)

(declare-fun mapRes!12522 () Bool)

(declare-fun tp!25856 () Bool)

(assert (=> mapNonEmpty!12522 (= mapRes!12522 (and tp!25856 e!211321))))

(declare-fun mapRest!12522 () (Array (_ BitVec 32) ValueCell!3351))

(declare-fun mapKey!12522 () (_ BitVec 32))

(declare-fun mapValue!12522 () ValueCell!3351)

(assert (=> mapNonEmpty!12522 (= (arr!8680 _values!1525) (store mapRest!12522 mapKey!12522 mapValue!12522))))

(declare-fun b!344745 () Bool)

(declare-fun e!211319 () Bool)

(assert (=> b!344745 (= e!211319 tp_is_empty!7389)))

(declare-fun b!344746 () Bool)

(assert (=> b!344746 (= e!211320 (and e!211319 mapRes!12522))))

(declare-fun condMapEmpty!12522 () Bool)

(declare-fun mapDefault!12522 () ValueCell!3351)

(assert (=> b!344746 (= condMapEmpty!12522 (= (arr!8680 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3351)) mapDefault!12522)))))

(declare-fun b!344747 () Bool)

(declare-fun res!190783 () Bool)

(assert (=> b!344747 (=> (not res!190783) (not e!211322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18335 (_ BitVec 32)) Bool)

(assert (=> b!344747 (= res!190783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344748 () Bool)

(declare-fun res!190784 () Bool)

(assert (=> b!344748 (=> (not res!190784) (not e!211322))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344748 (= res!190784 (validKeyInArray!0 k0!1348))))

(declare-fun b!344749 () Bool)

(declare-fun res!190781 () Bool)

(assert (=> b!344749 (=> (not res!190781) (not e!211322))))

(declare-fun zeroValue!1467 () V!10829)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10829)

(declare-datatypes ((tuple2!5398 0))(
  ( (tuple2!5399 (_1!2709 (_ BitVec 64)) (_2!2709 V!10829)) )
))
(declare-datatypes ((List!5045 0))(
  ( (Nil!5042) (Cons!5041 (h!5897 tuple2!5398) (t!10169 List!5045)) )
))
(declare-datatypes ((ListLongMap!4325 0))(
  ( (ListLongMap!4326 (toList!2178 List!5045)) )
))
(declare-fun contains!2232 (ListLongMap!4325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1698 (array!18335 array!18333 (_ BitVec 32) (_ BitVec 32) V!10829 V!10829 (_ BitVec 32) Int) ListLongMap!4325)

(assert (=> b!344749 (= res!190781 (not (contains!2232 (getCurrentListMap!1698 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12522 () Bool)

(assert (=> mapIsEmpty!12522 mapRes!12522))

(declare-fun b!344750 () Bool)

(declare-fun res!190779 () Bool)

(assert (=> b!344750 (=> (not res!190779) (not e!211322))))

(assert (=> b!344750 (= res!190779 (and (= (size!9032 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9033 _keys!1895) (size!9032 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344751 () Bool)

(declare-fun res!190782 () Bool)

(assert (=> b!344751 (=> (not res!190782) (not e!211322))))

(declare-datatypes ((List!5046 0))(
  ( (Nil!5043) (Cons!5042 (h!5898 (_ BitVec 64)) (t!10170 List!5046)) )
))
(declare-fun arrayNoDuplicates!0 (array!18335 (_ BitVec 32) List!5046) Bool)

(assert (=> b!344751 (= res!190782 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5043))))

(declare-fun b!344752 () Bool)

(assert (=> b!344752 (= e!211322 false)))

(declare-datatypes ((SeekEntryResult!3343 0))(
  ( (MissingZero!3343 (index!15551 (_ BitVec 32))) (Found!3343 (index!15552 (_ BitVec 32))) (Intermediate!3343 (undefined!4155 Bool) (index!15553 (_ BitVec 32)) (x!34348 (_ BitVec 32))) (Undefined!3343) (MissingVacant!3343 (index!15554 (_ BitVec 32))) )
))
(declare-fun lt!162690 () SeekEntryResult!3343)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18335 (_ BitVec 32)) SeekEntryResult!3343)

(assert (=> b!344752 (= lt!162690 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(assert (= (and start!34522 res!190780) b!344750))

(assert (= (and b!344750 res!190779) b!344747))

(assert (= (and b!344747 res!190783) b!344751))

(assert (= (and b!344751 res!190782) b!344748))

(assert (= (and b!344748 res!190784) b!344749))

(assert (= (and b!344749 res!190781) b!344752))

(assert (= (and b!344746 condMapEmpty!12522) mapIsEmpty!12522))

(assert (= (and b!344746 (not condMapEmpty!12522)) mapNonEmpty!12522))

(get-info :version)

(assert (= (and mapNonEmpty!12522 ((_ is ValueCellFull!3351) mapValue!12522)) b!344744))

(assert (= (and b!344746 ((_ is ValueCellFull!3351) mapDefault!12522)) b!344745))

(assert (= start!34522 b!344746))

(declare-fun m!346277 () Bool)

(assert (=> b!344749 m!346277))

(assert (=> b!344749 m!346277))

(declare-fun m!346279 () Bool)

(assert (=> b!344749 m!346279))

(declare-fun m!346281 () Bool)

(assert (=> mapNonEmpty!12522 m!346281))

(declare-fun m!346283 () Bool)

(assert (=> start!34522 m!346283))

(declare-fun m!346285 () Bool)

(assert (=> start!34522 m!346285))

(declare-fun m!346287 () Bool)

(assert (=> start!34522 m!346287))

(declare-fun m!346289 () Bool)

(assert (=> b!344752 m!346289))

(declare-fun m!346291 () Bool)

(assert (=> b!344751 m!346291))

(declare-fun m!346293 () Bool)

(assert (=> b!344747 m!346293))

(declare-fun m!346295 () Bool)

(assert (=> b!344748 m!346295))

(check-sat (not mapNonEmpty!12522) (not start!34522) (not b!344752) (not b!344751) (not b!344749) (not b!344747) tp_is_empty!7389 (not b!344748) b_and!14663 (not b_next!7437))
(check-sat b_and!14663 (not b_next!7437))
