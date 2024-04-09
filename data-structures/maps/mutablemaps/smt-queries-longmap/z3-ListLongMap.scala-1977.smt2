; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34734 () Bool)

(assert start!34734)

(declare-fun b_free!7533 () Bool)

(declare-fun b_next!7533 () Bool)

(assert (=> start!34734 (= b_free!7533 (not b_next!7533))))

(declare-fun tp!26162 () Bool)

(declare-fun b_and!14771 () Bool)

(assert (=> start!34734 (= tp!26162 b_and!14771)))

(declare-fun b!347007 () Bool)

(declare-fun res!192120 () Bool)

(declare-fun e!212647 () Bool)

(assert (=> b!347007 (=> (not res!192120) (not e!212647))))

(declare-datatypes ((array!18527 0))(
  ( (array!18528 (arr!8771 (Array (_ BitVec 32) (_ BitVec 64))) (size!9123 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18527)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18527 (_ BitVec 32)) Bool)

(assert (=> b!347007 (= res!192120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347008 () Bool)

(declare-fun e!212646 () Bool)

(declare-fun e!212644 () Bool)

(declare-fun mapRes!12684 () Bool)

(assert (=> b!347008 (= e!212646 (and e!212644 mapRes!12684))))

(declare-fun condMapEmpty!12684 () Bool)

(declare-datatypes ((V!10957 0))(
  ( (V!10958 (val!3787 Int)) )
))
(declare-datatypes ((ValueCell!3399 0))(
  ( (ValueCellFull!3399 (v!5965 V!10957)) (EmptyCell!3399) )
))
(declare-datatypes ((array!18529 0))(
  ( (array!18530 (arr!8772 (Array (_ BitVec 32) ValueCell!3399)) (size!9124 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18529)

(declare-fun mapDefault!12684 () ValueCell!3399)

(assert (=> b!347008 (= condMapEmpty!12684 (= (arr!8772 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3399)) mapDefault!12684)))))

(declare-fun res!192119 () Bool)

(assert (=> start!34734 (=> (not res!192119) (not e!212647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34734 (= res!192119 (validMask!0 mask!2385))))

(assert (=> start!34734 e!212647))

(assert (=> start!34734 true))

(declare-fun tp_is_empty!7485 () Bool)

(assert (=> start!34734 tp_is_empty!7485))

(assert (=> start!34734 tp!26162))

(declare-fun array_inv!6482 (array!18529) Bool)

(assert (=> start!34734 (and (array_inv!6482 _values!1525) e!212646)))

(declare-fun array_inv!6483 (array!18527) Bool)

(assert (=> start!34734 (array_inv!6483 _keys!1895)))

(declare-fun b!347009 () Bool)

(declare-fun res!192118 () Bool)

(assert (=> b!347009 (=> (not res!192118) (not e!212647))))

(declare-datatypes ((List!5111 0))(
  ( (Nil!5108) (Cons!5107 (h!5963 (_ BitVec 64)) (t!10247 List!5111)) )
))
(declare-fun arrayNoDuplicates!0 (array!18527 (_ BitVec 32) List!5111) Bool)

(assert (=> b!347009 (= res!192118 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5108))))

(declare-fun b!347010 () Bool)

(declare-fun res!192122 () Bool)

(assert (=> b!347010 (=> (not res!192122) (not e!212647))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347010 (= res!192122 (validKeyInArray!0 k0!1348))))

(declare-fun b!347011 () Bool)

(assert (=> b!347011 (= e!212644 tp_is_empty!7485)))

(declare-fun b!347012 () Bool)

(declare-fun e!212645 () Bool)

(assert (=> b!347012 (= e!212645 tp_is_empty!7485)))

(declare-fun b!347013 () Bool)

(declare-fun res!192123 () Bool)

(assert (=> b!347013 (=> (not res!192123) (not e!212647))))

(declare-fun zeroValue!1467 () V!10957)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10957)

(declare-datatypes ((tuple2!5466 0))(
  ( (tuple2!5467 (_1!2743 (_ BitVec 64)) (_2!2743 V!10957)) )
))
(declare-datatypes ((List!5112 0))(
  ( (Nil!5109) (Cons!5108 (h!5964 tuple2!5466) (t!10248 List!5112)) )
))
(declare-datatypes ((ListLongMap!4393 0))(
  ( (ListLongMap!4394 (toList!2212 List!5112)) )
))
(declare-fun contains!2272 (ListLongMap!4393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1732 (array!18527 array!18529 (_ BitVec 32) (_ BitVec 32) V!10957 V!10957 (_ BitVec 32) Int) ListLongMap!4393)

(assert (=> b!347013 (= res!192123 (not (contains!2272 (getCurrentListMap!1732 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12684 () Bool)

(declare-fun tp!26163 () Bool)

(assert (=> mapNonEmpty!12684 (= mapRes!12684 (and tp!26163 e!212645))))

(declare-fun mapValue!12684 () ValueCell!3399)

(declare-fun mapKey!12684 () (_ BitVec 32))

(declare-fun mapRest!12684 () (Array (_ BitVec 32) ValueCell!3399))

(assert (=> mapNonEmpty!12684 (= (arr!8772 _values!1525) (store mapRest!12684 mapKey!12684 mapValue!12684))))

(declare-fun b!347014 () Bool)

(declare-fun res!192121 () Bool)

(assert (=> b!347014 (=> (not res!192121) (not e!212647))))

(assert (=> b!347014 (= res!192121 (and (= (size!9124 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9123 _keys!1895) (size!9124 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12684 () Bool)

(assert (=> mapIsEmpty!12684 mapRes!12684))

(declare-fun b!347015 () Bool)

(declare-fun e!212649 () Bool)

(assert (=> b!347015 (= e!212649 (not true))))

(declare-fun arrayContainsKey!0 (array!18527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347015 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3378 0))(
  ( (MissingZero!3378 (index!15691 (_ BitVec 32))) (Found!3378 (index!15692 (_ BitVec 32))) (Intermediate!3378 (undefined!4190 Bool) (index!15693 (_ BitVec 32)) (x!34571 (_ BitVec 32))) (Undefined!3378) (MissingVacant!3378 (index!15694 (_ BitVec 32))) )
))
(declare-fun lt!163469 () SeekEntryResult!3378)

(declare-datatypes ((Unit!10772 0))(
  ( (Unit!10773) )
))
(declare-fun lt!163470 () Unit!10772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18527 (_ BitVec 64) (_ BitVec 32)) Unit!10772)

(assert (=> b!347015 (= lt!163470 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15692 lt!163469)))))

(declare-fun b!347016 () Bool)

(declare-fun res!192125 () Bool)

(assert (=> b!347016 (=> (not res!192125) (not e!212649))))

(assert (=> b!347016 (= res!192125 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15692 lt!163469)))))

(declare-fun b!347017 () Bool)

(assert (=> b!347017 (= e!212647 e!212649)))

(declare-fun res!192124 () Bool)

(assert (=> b!347017 (=> (not res!192124) (not e!212649))))

(get-info :version)

(assert (=> b!347017 (= res!192124 (and ((_ is Found!3378) lt!163469) (= (select (arr!8771 _keys!1895) (index!15692 lt!163469)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18527 (_ BitVec 32)) SeekEntryResult!3378)

(assert (=> b!347017 (= lt!163469 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(assert (= (and start!34734 res!192119) b!347014))

(assert (= (and b!347014 res!192121) b!347007))

(assert (= (and b!347007 res!192120) b!347009))

(assert (= (and b!347009 res!192118) b!347010))

(assert (= (and b!347010 res!192122) b!347013))

(assert (= (and b!347013 res!192123) b!347017))

(assert (= (and b!347017 res!192124) b!347016))

(assert (= (and b!347016 res!192125) b!347015))

(assert (= (and b!347008 condMapEmpty!12684) mapIsEmpty!12684))

(assert (= (and b!347008 (not condMapEmpty!12684)) mapNonEmpty!12684))

(assert (= (and mapNonEmpty!12684 ((_ is ValueCellFull!3399) mapValue!12684)) b!347012))

(assert (= (and b!347008 ((_ is ValueCellFull!3399) mapDefault!12684)) b!347011))

(assert (= start!34734 b!347008))

(declare-fun m!348015 () Bool)

(assert (=> start!34734 m!348015))

(declare-fun m!348017 () Bool)

(assert (=> start!34734 m!348017))

(declare-fun m!348019 () Bool)

(assert (=> start!34734 m!348019))

(declare-fun m!348021 () Bool)

(assert (=> b!347016 m!348021))

(declare-fun m!348023 () Bool)

(assert (=> b!347010 m!348023))

(declare-fun m!348025 () Bool)

(assert (=> b!347013 m!348025))

(assert (=> b!347013 m!348025))

(declare-fun m!348027 () Bool)

(assert (=> b!347013 m!348027))

(declare-fun m!348029 () Bool)

(assert (=> mapNonEmpty!12684 m!348029))

(declare-fun m!348031 () Bool)

(assert (=> b!347009 m!348031))

(declare-fun m!348033 () Bool)

(assert (=> b!347017 m!348033))

(declare-fun m!348035 () Bool)

(assert (=> b!347017 m!348035))

(declare-fun m!348037 () Bool)

(assert (=> b!347007 m!348037))

(declare-fun m!348039 () Bool)

(assert (=> b!347015 m!348039))

(declare-fun m!348041 () Bool)

(assert (=> b!347015 m!348041))

(check-sat (not b!347007) (not b!347009) (not b!347013) (not mapNonEmpty!12684) b_and!14771 (not start!34734) (not b!347010) (not b!347015) (not b!347017) (not b!347016) (not b_next!7533) tp_is_empty!7485)
(check-sat b_and!14771 (not b_next!7533))
