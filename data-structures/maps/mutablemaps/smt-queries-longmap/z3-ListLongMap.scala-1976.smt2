; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34728 () Bool)

(assert start!34728)

(declare-fun b_free!7527 () Bool)

(declare-fun b_next!7527 () Bool)

(assert (=> start!34728 (= b_free!7527 (not b_next!7527))))

(declare-fun tp!26145 () Bool)

(declare-fun b_and!14765 () Bool)

(assert (=> start!34728 (= tp!26145 b_and!14765)))

(declare-fun mapNonEmpty!12675 () Bool)

(declare-fun mapRes!12675 () Bool)

(declare-fun tp!26144 () Bool)

(declare-fun e!212591 () Bool)

(assert (=> mapNonEmpty!12675 (= mapRes!12675 (and tp!26144 e!212591))))

(declare-datatypes ((V!10949 0))(
  ( (V!10950 (val!3784 Int)) )
))
(declare-datatypes ((ValueCell!3396 0))(
  ( (ValueCellFull!3396 (v!5962 V!10949)) (EmptyCell!3396) )
))
(declare-fun mapRest!12675 () (Array (_ BitVec 32) ValueCell!3396))

(declare-datatypes ((array!18515 0))(
  ( (array!18516 (arr!8765 (Array (_ BitVec 32) ValueCell!3396)) (size!9117 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18515)

(declare-fun mapKey!12675 () (_ BitVec 32))

(declare-fun mapValue!12675 () ValueCell!3396)

(assert (=> mapNonEmpty!12675 (= (arr!8765 _values!1525) (store mapRest!12675 mapKey!12675 mapValue!12675))))

(declare-fun b!346908 () Bool)

(declare-fun res!192048 () Bool)

(declare-fun e!212593 () Bool)

(assert (=> b!346908 (=> (not res!192048) (not e!212593))))

(declare-datatypes ((array!18517 0))(
  ( (array!18518 (arr!8766 (Array (_ BitVec 32) (_ BitVec 64))) (size!9118 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18517)

(declare-datatypes ((List!5107 0))(
  ( (Nil!5104) (Cons!5103 (h!5959 (_ BitVec 64)) (t!10243 List!5107)) )
))
(declare-fun arrayNoDuplicates!0 (array!18517 (_ BitVec 32) List!5107) Bool)

(assert (=> b!346908 (= res!192048 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5104))))

(declare-fun res!192050 () Bool)

(assert (=> start!34728 (=> (not res!192050) (not e!212593))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34728 (= res!192050 (validMask!0 mask!2385))))

(assert (=> start!34728 e!212593))

(assert (=> start!34728 true))

(declare-fun tp_is_empty!7479 () Bool)

(assert (=> start!34728 tp_is_empty!7479))

(assert (=> start!34728 tp!26145))

(declare-fun e!212590 () Bool)

(declare-fun array_inv!6478 (array!18515) Bool)

(assert (=> start!34728 (and (array_inv!6478 _values!1525) e!212590)))

(declare-fun array_inv!6479 (array!18517) Bool)

(assert (=> start!34728 (array_inv!6479 _keys!1895)))

(declare-fun b!346909 () Bool)

(declare-fun res!192051 () Bool)

(assert (=> b!346909 (=> (not res!192051) (not e!212593))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346909 (= res!192051 (validKeyInArray!0 k0!1348))))

(declare-fun b!346910 () Bool)

(declare-fun res!192046 () Bool)

(assert (=> b!346910 (=> (not res!192046) (not e!212593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18517 (_ BitVec 32)) Bool)

(assert (=> b!346910 (= res!192046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346911 () Bool)

(declare-fun e!212594 () Bool)

(assert (=> b!346911 (= e!212594 (not true))))

(declare-fun arrayContainsKey!0 (array!18517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346911 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3375 0))(
  ( (MissingZero!3375 (index!15679 (_ BitVec 32))) (Found!3375 (index!15680 (_ BitVec 32))) (Intermediate!3375 (undefined!4187 Bool) (index!15681 (_ BitVec 32)) (x!34560 (_ BitVec 32))) (Undefined!3375) (MissingVacant!3375 (index!15682 (_ BitVec 32))) )
))
(declare-fun lt!163451 () SeekEntryResult!3375)

(declare-datatypes ((Unit!10768 0))(
  ( (Unit!10769) )
))
(declare-fun lt!163452 () Unit!10768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18517 (_ BitVec 64) (_ BitVec 32)) Unit!10768)

(assert (=> b!346911 (= lt!163452 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15680 lt!163451)))))

(declare-fun b!346912 () Bool)

(declare-fun e!212592 () Bool)

(assert (=> b!346912 (= e!212590 (and e!212592 mapRes!12675))))

(declare-fun condMapEmpty!12675 () Bool)

(declare-fun mapDefault!12675 () ValueCell!3396)

(assert (=> b!346912 (= condMapEmpty!12675 (= (arr!8765 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3396)) mapDefault!12675)))))

(declare-fun b!346913 () Bool)

(assert (=> b!346913 (= e!212592 tp_is_empty!7479)))

(declare-fun b!346914 () Bool)

(declare-fun res!192049 () Bool)

(assert (=> b!346914 (=> (not res!192049) (not e!212593))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346914 (= res!192049 (and (= (size!9117 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9118 _keys!1895) (size!9117 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346915 () Bool)

(declare-fun res!192047 () Bool)

(assert (=> b!346915 (=> (not res!192047) (not e!212594))))

(assert (=> b!346915 (= res!192047 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15680 lt!163451)))))

(declare-fun mapIsEmpty!12675 () Bool)

(assert (=> mapIsEmpty!12675 mapRes!12675))

(declare-fun b!346916 () Bool)

(assert (=> b!346916 (= e!212593 e!212594)))

(declare-fun res!192052 () Bool)

(assert (=> b!346916 (=> (not res!192052) (not e!212594))))

(get-info :version)

(assert (=> b!346916 (= res!192052 (and ((_ is Found!3375) lt!163451) (= (select (arr!8766 _keys!1895) (index!15680 lt!163451)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18517 (_ BitVec 32)) SeekEntryResult!3375)

(assert (=> b!346916 (= lt!163451 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346917 () Bool)

(assert (=> b!346917 (= e!212591 tp_is_empty!7479)))

(declare-fun b!346918 () Bool)

(declare-fun res!192053 () Bool)

(assert (=> b!346918 (=> (not res!192053) (not e!212593))))

(declare-fun zeroValue!1467 () V!10949)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10949)

(declare-datatypes ((tuple2!5460 0))(
  ( (tuple2!5461 (_1!2740 (_ BitVec 64)) (_2!2740 V!10949)) )
))
(declare-datatypes ((List!5108 0))(
  ( (Nil!5105) (Cons!5104 (h!5960 tuple2!5460) (t!10244 List!5108)) )
))
(declare-datatypes ((ListLongMap!4387 0))(
  ( (ListLongMap!4388 (toList!2209 List!5108)) )
))
(declare-fun contains!2269 (ListLongMap!4387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1729 (array!18517 array!18515 (_ BitVec 32) (_ BitVec 32) V!10949 V!10949 (_ BitVec 32) Int) ListLongMap!4387)

(assert (=> b!346918 (= res!192053 (not (contains!2269 (getCurrentListMap!1729 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34728 res!192050) b!346914))

(assert (= (and b!346914 res!192049) b!346910))

(assert (= (and b!346910 res!192046) b!346908))

(assert (= (and b!346908 res!192048) b!346909))

(assert (= (and b!346909 res!192051) b!346918))

(assert (= (and b!346918 res!192053) b!346916))

(assert (= (and b!346916 res!192052) b!346915))

(assert (= (and b!346915 res!192047) b!346911))

(assert (= (and b!346912 condMapEmpty!12675) mapIsEmpty!12675))

(assert (= (and b!346912 (not condMapEmpty!12675)) mapNonEmpty!12675))

(assert (= (and mapNonEmpty!12675 ((_ is ValueCellFull!3396) mapValue!12675)) b!346917))

(assert (= (and b!346912 ((_ is ValueCellFull!3396) mapDefault!12675)) b!346913))

(assert (= start!34728 b!346912))

(declare-fun m!347931 () Bool)

(assert (=> b!346909 m!347931))

(declare-fun m!347933 () Bool)

(assert (=> b!346916 m!347933))

(declare-fun m!347935 () Bool)

(assert (=> b!346916 m!347935))

(declare-fun m!347937 () Bool)

(assert (=> b!346908 m!347937))

(declare-fun m!347939 () Bool)

(assert (=> mapNonEmpty!12675 m!347939))

(declare-fun m!347941 () Bool)

(assert (=> start!34728 m!347941))

(declare-fun m!347943 () Bool)

(assert (=> start!34728 m!347943))

(declare-fun m!347945 () Bool)

(assert (=> start!34728 m!347945))

(declare-fun m!347947 () Bool)

(assert (=> b!346910 m!347947))

(declare-fun m!347949 () Bool)

(assert (=> b!346911 m!347949))

(declare-fun m!347951 () Bool)

(assert (=> b!346911 m!347951))

(declare-fun m!347953 () Bool)

(assert (=> b!346918 m!347953))

(assert (=> b!346918 m!347953))

(declare-fun m!347955 () Bool)

(assert (=> b!346918 m!347955))

(declare-fun m!347957 () Bool)

(assert (=> b!346915 m!347957))

(check-sat (not start!34728) (not b!346910) (not b!346911) (not b!346918) (not mapNonEmpty!12675) (not b!346915) (not b!346909) (not b!346908) b_and!14765 (not b_next!7527) (not b!346916) tp_is_empty!7479)
(check-sat b_and!14765 (not b_next!7527))
