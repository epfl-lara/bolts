; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34308 () Bool)

(assert start!34308)

(declare-fun b_free!7275 () Bool)

(declare-fun b_next!7275 () Bool)

(assert (=> start!34308 (= b_free!7275 (not b_next!7275))))

(declare-fun tp!25365 () Bool)

(declare-fun b_and!14497 () Bool)

(assert (=> start!34308 (= tp!25365 b_and!14497)))

(declare-fun res!189103 () Bool)

(declare-fun e!209737 () Bool)

(assert (=> start!34308 (=> (not res!189103) (not e!209737))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34308 (= res!189103 (validMask!0 mask!2385))))

(assert (=> start!34308 e!209737))

(assert (=> start!34308 true))

(declare-fun tp_is_empty!7227 () Bool)

(assert (=> start!34308 tp_is_empty!7227))

(assert (=> start!34308 tp!25365))

(declare-datatypes ((V!10613 0))(
  ( (V!10614 (val!3658 Int)) )
))
(declare-datatypes ((ValueCell!3270 0))(
  ( (ValueCellFull!3270 (v!5828 V!10613)) (EmptyCell!3270) )
))
(declare-datatypes ((array!18023 0))(
  ( (array!18024 (arr!8527 (Array (_ BitVec 32) ValueCell!3270)) (size!8879 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18023)

(declare-fun e!209742 () Bool)

(declare-fun array_inv!6308 (array!18023) Bool)

(assert (=> start!34308 (and (array_inv!6308 _values!1525) e!209742)))

(declare-datatypes ((array!18025 0))(
  ( (array!18026 (arr!8528 (Array (_ BitVec 32) (_ BitVec 64))) (size!8880 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18025)

(declare-fun array_inv!6309 (array!18025) Bool)

(assert (=> start!34308 (array_inv!6309 _keys!1895)))

(declare-fun b!341988 () Bool)

(declare-datatypes ((Unit!10635 0))(
  ( (Unit!10636) )
))
(declare-fun e!209741 () Unit!10635)

(declare-fun Unit!10637 () Unit!10635)

(assert (=> b!341988 (= e!209741 Unit!10637)))

(declare-fun mapIsEmpty!12273 () Bool)

(declare-fun mapRes!12273 () Bool)

(assert (=> mapIsEmpty!12273 mapRes!12273))

(declare-fun b!341989 () Bool)

(declare-fun res!189102 () Bool)

(assert (=> b!341989 (=> (not res!189102) (not e!209737))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341989 (= res!189102 (and (= (size!8879 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8880 _keys!1895) (size!8879 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341990 () Bool)

(declare-fun e!209739 () Bool)

(assert (=> b!341990 (= e!209742 (and e!209739 mapRes!12273))))

(declare-fun condMapEmpty!12273 () Bool)

(declare-fun mapDefault!12273 () ValueCell!3270)

(assert (=> b!341990 (= condMapEmpty!12273 (= (arr!8527 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3270)) mapDefault!12273)))))

(declare-fun b!341991 () Bool)

(declare-fun res!189099 () Bool)

(assert (=> b!341991 (=> (not res!189099) (not e!209737))))

(declare-datatypes ((List!4932 0))(
  ( (Nil!4929) (Cons!4928 (h!5784 (_ BitVec 64)) (t!10052 List!4932)) )
))
(declare-fun arrayNoDuplicates!0 (array!18025 (_ BitVec 32) List!4932) Bool)

(assert (=> b!341991 (= res!189099 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4929))))

(declare-fun b!341992 () Bool)

(declare-fun e!209738 () Bool)

(assert (=> b!341992 (= e!209738 false)))

(declare-fun lt!162046 () Unit!10635)

(assert (=> b!341992 (= lt!162046 e!209741)))

(declare-fun c!52715 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341992 (= c!52715 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341993 () Bool)

(assert (=> b!341993 (= e!209737 e!209738)))

(declare-fun res!189101 () Bool)

(assert (=> b!341993 (=> (not res!189101) (not e!209738))))

(declare-datatypes ((SeekEntryResult!3291 0))(
  ( (MissingZero!3291 (index!15343 (_ BitVec 32))) (Found!3291 (index!15344 (_ BitVec 32))) (Intermediate!3291 (undefined!4103 Bool) (index!15345 (_ BitVec 32)) (x!34060 (_ BitVec 32))) (Undefined!3291) (MissingVacant!3291 (index!15346 (_ BitVec 32))) )
))
(declare-fun lt!162048 () SeekEntryResult!3291)

(get-info :version)

(assert (=> b!341993 (= res!189101 (and (not ((_ is Found!3291) lt!162048)) (not ((_ is MissingZero!3291) lt!162048)) ((_ is MissingVacant!3291) lt!162048)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18025 (_ BitVec 32)) SeekEntryResult!3291)

(assert (=> b!341993 (= lt!162048 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341994 () Bool)

(assert (=> b!341994 (= e!209739 tp_is_empty!7227)))

(declare-fun mapNonEmpty!12273 () Bool)

(declare-fun tp!25364 () Bool)

(declare-fun e!209740 () Bool)

(assert (=> mapNonEmpty!12273 (= mapRes!12273 (and tp!25364 e!209740))))

(declare-fun mapRest!12273 () (Array (_ BitVec 32) ValueCell!3270))

(declare-fun mapValue!12273 () ValueCell!3270)

(declare-fun mapKey!12273 () (_ BitVec 32))

(assert (=> mapNonEmpty!12273 (= (arr!8527 _values!1525) (store mapRest!12273 mapKey!12273 mapValue!12273))))

(declare-fun b!341995 () Bool)

(declare-fun res!189104 () Bool)

(assert (=> b!341995 (=> (not res!189104) (not e!209737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18025 (_ BitVec 32)) Bool)

(assert (=> b!341995 (= res!189104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341996 () Bool)

(declare-fun res!189100 () Bool)

(assert (=> b!341996 (=> (not res!189100) (not e!209737))))

(declare-fun zeroValue!1467 () V!10613)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10613)

(declare-datatypes ((tuple2!5290 0))(
  ( (tuple2!5291 (_1!2655 (_ BitVec 64)) (_2!2655 V!10613)) )
))
(declare-datatypes ((List!4933 0))(
  ( (Nil!4930) (Cons!4929 (h!5785 tuple2!5290) (t!10053 List!4933)) )
))
(declare-datatypes ((ListLongMap!4217 0))(
  ( (ListLongMap!4218 (toList!2124 List!4933)) )
))
(declare-fun contains!2176 (ListLongMap!4217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1644 (array!18025 array!18023 (_ BitVec 32) (_ BitVec 32) V!10613 V!10613 (_ BitVec 32) Int) ListLongMap!4217)

(assert (=> b!341996 (= res!189100 (not (contains!2176 (getCurrentListMap!1644 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!341997 () Bool)

(declare-fun res!189098 () Bool)

(assert (=> b!341997 (=> (not res!189098) (not e!209737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341997 (= res!189098 (validKeyInArray!0 k0!1348))))

(declare-fun b!341998 () Bool)

(declare-fun Unit!10638 () Unit!10635)

(assert (=> b!341998 (= e!209741 Unit!10638)))

(declare-fun lt!162047 () Unit!10635)

(declare-fun lemmaArrayContainsKeyThenInListMap!296 (array!18025 array!18023 (_ BitVec 32) (_ BitVec 32) V!10613 V!10613 (_ BitVec 64) (_ BitVec 32) Int) Unit!10635)

(declare-fun arrayScanForKey!0 (array!18025 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341998 (= lt!162047 (lemmaArrayContainsKeyThenInListMap!296 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341998 false))

(declare-fun b!341999 () Bool)

(assert (=> b!341999 (= e!209740 tp_is_empty!7227)))

(assert (= (and start!34308 res!189103) b!341989))

(assert (= (and b!341989 res!189102) b!341995))

(assert (= (and b!341995 res!189104) b!341991))

(assert (= (and b!341991 res!189099) b!341997))

(assert (= (and b!341997 res!189098) b!341996))

(assert (= (and b!341996 res!189100) b!341993))

(assert (= (and b!341993 res!189101) b!341992))

(assert (= (and b!341992 c!52715) b!341998))

(assert (= (and b!341992 (not c!52715)) b!341988))

(assert (= (and b!341990 condMapEmpty!12273) mapIsEmpty!12273))

(assert (= (and b!341990 (not condMapEmpty!12273)) mapNonEmpty!12273))

(assert (= (and mapNonEmpty!12273 ((_ is ValueCellFull!3270) mapValue!12273)) b!341999))

(assert (= (and b!341990 ((_ is ValueCellFull!3270) mapDefault!12273)) b!341994))

(assert (= start!34308 b!341990))

(declare-fun m!344255 () Bool)

(assert (=> b!341993 m!344255))

(declare-fun m!344257 () Bool)

(assert (=> start!34308 m!344257))

(declare-fun m!344259 () Bool)

(assert (=> start!34308 m!344259))

(declare-fun m!344261 () Bool)

(assert (=> start!34308 m!344261))

(declare-fun m!344263 () Bool)

(assert (=> mapNonEmpty!12273 m!344263))

(declare-fun m!344265 () Bool)

(assert (=> b!341997 m!344265))

(declare-fun m!344267 () Bool)

(assert (=> b!341996 m!344267))

(assert (=> b!341996 m!344267))

(declare-fun m!344269 () Bool)

(assert (=> b!341996 m!344269))

(declare-fun m!344271 () Bool)

(assert (=> b!341991 m!344271))

(declare-fun m!344273 () Bool)

(assert (=> b!341998 m!344273))

(assert (=> b!341998 m!344273))

(declare-fun m!344275 () Bool)

(assert (=> b!341998 m!344275))

(declare-fun m!344277 () Bool)

(assert (=> b!341995 m!344277))

(declare-fun m!344279 () Bool)

(assert (=> b!341992 m!344279))

(check-sat (not b!341993) (not b_next!7275) (not mapNonEmpty!12273) (not b!341995) (not b!341991) b_and!14497 (not b!341998) (not b!341996) tp_is_empty!7227 (not b!341997) (not start!34308) (not b!341992))
(check-sat b_and!14497 (not b_next!7275))
