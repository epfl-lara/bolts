; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34218 () Bool)

(assert start!34218)

(declare-fun b_free!7233 () Bool)

(declare-fun b_next!7233 () Bool)

(assert (=> start!34218 (= b_free!7233 (not b_next!7233))))

(declare-fun tp!25233 () Bool)

(declare-fun b_and!14451 () Bool)

(assert (=> start!34218 (= tp!25233 b_and!14451)))

(declare-fun b!340985 () Bool)

(declare-fun res!188529 () Bool)

(declare-fun e!209146 () Bool)

(assert (=> b!340985 (=> (not res!188529) (not e!209146))))

(declare-datatypes ((array!17935 0))(
  ( (array!17936 (arr!8485 (Array (_ BitVec 32) (_ BitVec 64))) (size!8837 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17935)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17935 (_ BitVec 32)) Bool)

(assert (=> b!340985 (= res!188529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!188527 () Bool)

(assert (=> start!34218 (=> (not res!188527) (not e!209146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34218 (= res!188527 (validMask!0 mask!2385))))

(assert (=> start!34218 e!209146))

(assert (=> start!34218 true))

(declare-fun tp_is_empty!7185 () Bool)

(assert (=> start!34218 tp_is_empty!7185))

(assert (=> start!34218 tp!25233))

(declare-datatypes ((V!10557 0))(
  ( (V!10558 (val!3637 Int)) )
))
(declare-datatypes ((ValueCell!3249 0))(
  ( (ValueCellFull!3249 (v!5805 V!10557)) (EmptyCell!3249) )
))
(declare-datatypes ((array!17937 0))(
  ( (array!17938 (arr!8486 (Array (_ BitVec 32) ValueCell!3249)) (size!8838 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17937)

(declare-fun e!209151 () Bool)

(declare-fun array_inv!6276 (array!17937) Bool)

(assert (=> start!34218 (and (array_inv!6276 _values!1525) e!209151)))

(declare-fun array_inv!6277 (array!17935) Bool)

(assert (=> start!34218 (array_inv!6277 _keys!1895)))

(declare-fun b!340986 () Bool)

(declare-fun res!188525 () Bool)

(declare-fun e!209149 () Bool)

(assert (=> b!340986 (=> (not res!188525) (not e!209149))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340986 (= res!188525 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12204 () Bool)

(declare-fun mapRes!12204 () Bool)

(assert (=> mapIsEmpty!12204 mapRes!12204))

(declare-fun b!340987 () Bool)

(assert (=> b!340987 (= e!209149 false)))

(declare-fun lt!161685 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17935 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340987 (= lt!161685 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340988 () Bool)

(assert (=> b!340988 (= e!209146 e!209149)))

(declare-fun res!188524 () Bool)

(assert (=> b!340988 (=> (not res!188524) (not e!209149))))

(declare-datatypes ((SeekEntryResult!3275 0))(
  ( (MissingZero!3275 (index!15279 (_ BitVec 32))) (Found!3275 (index!15280 (_ BitVec 32))) (Intermediate!3275 (undefined!4087 Bool) (index!15281 (_ BitVec 32)) (x!33968 (_ BitVec 32))) (Undefined!3275) (MissingVacant!3275 (index!15282 (_ BitVec 32))) )
))
(declare-fun lt!161684 () SeekEntryResult!3275)

(get-info :version)

(assert (=> b!340988 (= res!188524 (and (not ((_ is Found!3275) lt!161684)) (not ((_ is MissingZero!3275) lt!161684)) ((_ is MissingVacant!3275) lt!161684)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17935 (_ BitVec 32)) SeekEntryResult!3275)

(assert (=> b!340988 (= lt!161684 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340989 () Bool)

(declare-fun res!188526 () Bool)

(assert (=> b!340989 (=> (not res!188526) (not e!209146))))

(declare-datatypes ((List!4902 0))(
  ( (Nil!4899) (Cons!4898 (h!5754 (_ BitVec 64)) (t!10018 List!4902)) )
))
(declare-fun arrayNoDuplicates!0 (array!17935 (_ BitVec 32) List!4902) Bool)

(assert (=> b!340989 (= res!188526 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4899))))

(declare-fun b!340990 () Bool)

(declare-fun e!209147 () Bool)

(assert (=> b!340990 (= e!209151 (and e!209147 mapRes!12204))))

(declare-fun condMapEmpty!12204 () Bool)

(declare-fun mapDefault!12204 () ValueCell!3249)

(assert (=> b!340990 (= condMapEmpty!12204 (= (arr!8486 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3249)) mapDefault!12204)))))

(declare-fun b!340991 () Bool)

(declare-fun res!188530 () Bool)

(assert (=> b!340991 (=> (not res!188530) (not e!209146))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340991 (= res!188530 (and (= (size!8838 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8837 _keys!1895) (size!8838 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340992 () Bool)

(assert (=> b!340992 (= e!209147 tp_is_empty!7185)))

(declare-fun mapNonEmpty!12204 () Bool)

(declare-fun tp!25232 () Bool)

(declare-fun e!209148 () Bool)

(assert (=> mapNonEmpty!12204 (= mapRes!12204 (and tp!25232 e!209148))))

(declare-fun mapKey!12204 () (_ BitVec 32))

(declare-fun mapValue!12204 () ValueCell!3249)

(declare-fun mapRest!12204 () (Array (_ BitVec 32) ValueCell!3249))

(assert (=> mapNonEmpty!12204 (= (arr!8486 _values!1525) (store mapRest!12204 mapKey!12204 mapValue!12204))))

(declare-fun b!340993 () Bool)

(declare-fun res!188528 () Bool)

(assert (=> b!340993 (=> (not res!188528) (not e!209146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340993 (= res!188528 (validKeyInArray!0 k0!1348))))

(declare-fun b!340994 () Bool)

(assert (=> b!340994 (= e!209148 tp_is_empty!7185)))

(declare-fun b!340995 () Bool)

(declare-fun res!188531 () Bool)

(assert (=> b!340995 (=> (not res!188531) (not e!209146))))

(declare-fun zeroValue!1467 () V!10557)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10557)

(declare-datatypes ((tuple2!5258 0))(
  ( (tuple2!5259 (_1!2639 (_ BitVec 64)) (_2!2639 V!10557)) )
))
(declare-datatypes ((List!4903 0))(
  ( (Nil!4900) (Cons!4899 (h!5755 tuple2!5258) (t!10019 List!4903)) )
))
(declare-datatypes ((ListLongMap!4185 0))(
  ( (ListLongMap!4186 (toList!2108 List!4903)) )
))
(declare-fun contains!2158 (ListLongMap!4185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1628 (array!17935 array!17937 (_ BitVec 32) (_ BitVec 32) V!10557 V!10557 (_ BitVec 32) Int) ListLongMap!4185)

(assert (=> b!340995 (= res!188531 (not (contains!2158 (getCurrentListMap!1628 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34218 res!188527) b!340991))

(assert (= (and b!340991 res!188530) b!340985))

(assert (= (and b!340985 res!188529) b!340989))

(assert (= (and b!340989 res!188526) b!340993))

(assert (= (and b!340993 res!188528) b!340995))

(assert (= (and b!340995 res!188531) b!340988))

(assert (= (and b!340988 res!188524) b!340986))

(assert (= (and b!340986 res!188525) b!340987))

(assert (= (and b!340990 condMapEmpty!12204) mapIsEmpty!12204))

(assert (= (and b!340990 (not condMapEmpty!12204)) mapNonEmpty!12204))

(assert (= (and mapNonEmpty!12204 ((_ is ValueCellFull!3249) mapValue!12204)) b!340994))

(assert (= (and b!340990 ((_ is ValueCellFull!3249) mapDefault!12204)) b!340992))

(assert (= start!34218 b!340990))

(declare-fun m!343527 () Bool)

(assert (=> b!340988 m!343527))

(declare-fun m!343529 () Bool)

(assert (=> b!340989 m!343529))

(declare-fun m!343531 () Bool)

(assert (=> b!340987 m!343531))

(declare-fun m!343533 () Bool)

(assert (=> b!340995 m!343533))

(assert (=> b!340995 m!343533))

(declare-fun m!343535 () Bool)

(assert (=> b!340995 m!343535))

(declare-fun m!343537 () Bool)

(assert (=> b!340985 m!343537))

(declare-fun m!343539 () Bool)

(assert (=> start!34218 m!343539))

(declare-fun m!343541 () Bool)

(assert (=> start!34218 m!343541))

(declare-fun m!343543 () Bool)

(assert (=> start!34218 m!343543))

(declare-fun m!343545 () Bool)

(assert (=> b!340986 m!343545))

(declare-fun m!343547 () Bool)

(assert (=> mapNonEmpty!12204 m!343547))

(declare-fun m!343549 () Bool)

(assert (=> b!340993 m!343549))

(check-sat (not b!340985) (not b_next!7233) (not b!340988) tp_is_empty!7185 (not b!340993) (not start!34218) b_and!14451 (not mapNonEmpty!12204) (not b!340987) (not b!340995) (not b!340989) (not b!340986))
(check-sat b_and!14451 (not b_next!7233))
