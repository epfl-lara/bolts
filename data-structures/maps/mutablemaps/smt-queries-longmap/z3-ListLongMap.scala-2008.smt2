; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35038 () Bool)

(assert start!35038)

(declare-fun b_free!7719 () Bool)

(declare-fun b_next!7719 () Bool)

(assert (=> start!35038 (= b_free!7719 (not b_next!7719))))

(declare-fun tp!26735 () Bool)

(declare-fun b_and!14967 () Bool)

(assert (=> start!35038 (= tp!26735 b_and!14967)))

(declare-fun b!350904 () Bool)

(declare-fun res!194638 () Bool)

(declare-fun e!214917 () Bool)

(assert (=> b!350904 (=> (not res!194638) (not e!214917))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!11205 0))(
  ( (V!11206 (val!3880 Int)) )
))
(declare-fun zeroValue!1467 () V!11205)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3492 0))(
  ( (ValueCellFull!3492 (v!6063 V!11205)) (EmptyCell!3492) )
))
(declare-datatypes ((array!18887 0))(
  ( (array!18888 (arr!8946 (Array (_ BitVec 32) ValueCell!3492)) (size!9298 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18887)

(declare-datatypes ((array!18889 0))(
  ( (array!18890 (arr!8947 (Array (_ BitVec 32) (_ BitVec 64))) (size!9299 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18889)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11205)

(declare-datatypes ((tuple2!5592 0))(
  ( (tuple2!5593 (_1!2806 (_ BitVec 64)) (_2!2806 V!11205)) )
))
(declare-datatypes ((List!5230 0))(
  ( (Nil!5227) (Cons!5226 (h!6082 tuple2!5592) (t!10376 List!5230)) )
))
(declare-datatypes ((ListLongMap!4519 0))(
  ( (ListLongMap!4520 (toList!2275 List!5230)) )
))
(declare-fun contains!2340 (ListLongMap!4519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1792 (array!18889 array!18887 (_ BitVec 32) (_ BitVec 32) V!11205 V!11205 (_ BitVec 32) Int) ListLongMap!4519)

(assert (=> b!350904 (= res!194638 (not (contains!2340 (getCurrentListMap!1792 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350905 () Bool)

(declare-fun res!194641 () Bool)

(assert (=> b!350905 (=> (not res!194641) (not e!214917))))

(assert (=> b!350905 (= res!194641 (and (= (size!9298 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9299 _keys!1895) (size!9298 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12978 () Bool)

(declare-fun mapRes!12978 () Bool)

(declare-fun tp!26736 () Bool)

(declare-fun e!214916 () Bool)

(assert (=> mapNonEmpty!12978 (= mapRes!12978 (and tp!26736 e!214916))))

(declare-fun mapValue!12978 () ValueCell!3492)

(declare-fun mapKey!12978 () (_ BitVec 32))

(declare-fun mapRest!12978 () (Array (_ BitVec 32) ValueCell!3492))

(assert (=> mapNonEmpty!12978 (= (arr!8946 _values!1525) (store mapRest!12978 mapKey!12978 mapValue!12978))))

(declare-fun b!350906 () Bool)

(declare-fun res!194639 () Bool)

(declare-fun e!214914 () Bool)

(assert (=> b!350906 (=> (not res!194639) (not e!214914))))

(declare-fun arrayContainsKey!0 (array!18889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350906 (= res!194639 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350907 () Bool)

(declare-fun tp_is_empty!7671 () Bool)

(assert (=> b!350907 (= e!214916 tp_is_empty!7671)))

(declare-fun b!350908 () Bool)

(declare-fun e!214915 () Bool)

(declare-fun e!214918 () Bool)

(assert (=> b!350908 (= e!214915 (and e!214918 mapRes!12978))))

(declare-fun condMapEmpty!12978 () Bool)

(declare-fun mapDefault!12978 () ValueCell!3492)

(assert (=> b!350908 (= condMapEmpty!12978 (= (arr!8946 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3492)) mapDefault!12978)))))

(declare-fun b!350909 () Bool)

(assert (=> b!350909 (= e!214918 tp_is_empty!7671)))

(declare-fun b!350910 () Bool)

(declare-fun res!194640 () Bool)

(assert (=> b!350910 (=> (not res!194640) (not e!214917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350910 (= res!194640 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12978 () Bool)

(assert (=> mapIsEmpty!12978 mapRes!12978))

(declare-fun b!350911 () Bool)

(declare-fun res!194637 () Bool)

(assert (=> b!350911 (=> (not res!194637) (not e!214917))))

(declare-datatypes ((List!5231 0))(
  ( (Nil!5228) (Cons!5227 (h!6083 (_ BitVec 64)) (t!10377 List!5231)) )
))
(declare-fun arrayNoDuplicates!0 (array!18889 (_ BitVec 32) List!5231) Bool)

(assert (=> b!350911 (= res!194637 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5228))))

(declare-fun b!350912 () Bool)

(assert (=> b!350912 (= e!214917 e!214914)))

(declare-fun res!194636 () Bool)

(assert (=> b!350912 (=> (not res!194636) (not e!214914))))

(declare-datatypes ((SeekEntryResult!3442 0))(
  ( (MissingZero!3442 (index!15947 (_ BitVec 32))) (Found!3442 (index!15948 (_ BitVec 32))) (Intermediate!3442 (undefined!4254 Bool) (index!15949 (_ BitVec 32)) (x!34933 (_ BitVec 32))) (Undefined!3442) (MissingVacant!3442 (index!15950 (_ BitVec 32))) )
))
(declare-fun lt!164663 () SeekEntryResult!3442)

(get-info :version)

(assert (=> b!350912 (= res!194636 (and (not ((_ is Found!3442) lt!164663)) (not ((_ is MissingZero!3442) lt!164663)) ((_ is MissingVacant!3442) lt!164663)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18889 (_ BitVec 32)) SeekEntryResult!3442)

(assert (=> b!350912 (= lt!164663 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!194643 () Bool)

(assert (=> start!35038 (=> (not res!194643) (not e!214917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35038 (= res!194643 (validMask!0 mask!2385))))

(assert (=> start!35038 e!214917))

(assert (=> start!35038 true))

(assert (=> start!35038 tp_is_empty!7671))

(assert (=> start!35038 tp!26735))

(declare-fun array_inv!6596 (array!18887) Bool)

(assert (=> start!35038 (and (array_inv!6596 _values!1525) e!214915)))

(declare-fun array_inv!6597 (array!18889) Bool)

(assert (=> start!35038 (array_inv!6597 _keys!1895)))

(declare-fun b!350913 () Bool)

(declare-fun res!194642 () Bool)

(assert (=> b!350913 (=> (not res!194642) (not e!214917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18889 (_ BitVec 32)) Bool)

(assert (=> b!350913 (= res!194642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350914 () Bool)

(assert (=> b!350914 (= e!214914 false)))

(declare-fun lt!164664 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18889 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350914 (= lt!164664 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!35038 res!194643) b!350905))

(assert (= (and b!350905 res!194641) b!350913))

(assert (= (and b!350913 res!194642) b!350911))

(assert (= (and b!350911 res!194637) b!350910))

(assert (= (and b!350910 res!194640) b!350904))

(assert (= (and b!350904 res!194638) b!350912))

(assert (= (and b!350912 res!194636) b!350906))

(assert (= (and b!350906 res!194639) b!350914))

(assert (= (and b!350908 condMapEmpty!12978) mapIsEmpty!12978))

(assert (= (and b!350908 (not condMapEmpty!12978)) mapNonEmpty!12978))

(assert (= (and mapNonEmpty!12978 ((_ is ValueCellFull!3492) mapValue!12978)) b!350907))

(assert (= (and b!350908 ((_ is ValueCellFull!3492) mapDefault!12978)) b!350909))

(assert (= start!35038 b!350908))

(declare-fun m!350961 () Bool)

(assert (=> b!350906 m!350961))

(declare-fun m!350963 () Bool)

(assert (=> b!350910 m!350963))

(declare-fun m!350965 () Bool)

(assert (=> b!350911 m!350965))

(declare-fun m!350967 () Bool)

(assert (=> mapNonEmpty!12978 m!350967))

(declare-fun m!350969 () Bool)

(assert (=> b!350914 m!350969))

(declare-fun m!350971 () Bool)

(assert (=> b!350912 m!350971))

(declare-fun m!350973 () Bool)

(assert (=> b!350913 m!350973))

(declare-fun m!350975 () Bool)

(assert (=> b!350904 m!350975))

(assert (=> b!350904 m!350975))

(declare-fun m!350977 () Bool)

(assert (=> b!350904 m!350977))

(declare-fun m!350979 () Bool)

(assert (=> start!35038 m!350979))

(declare-fun m!350981 () Bool)

(assert (=> start!35038 m!350981))

(declare-fun m!350983 () Bool)

(assert (=> start!35038 m!350983))

(check-sat (not b!350911) tp_is_empty!7671 (not b!350912) (not b_next!7719) (not mapNonEmpty!12978) (not start!35038) (not b!350910) (not b!350904) (not b!350913) (not b!350914) b_and!14967 (not b!350906))
(check-sat b_and!14967 (not b_next!7719))
