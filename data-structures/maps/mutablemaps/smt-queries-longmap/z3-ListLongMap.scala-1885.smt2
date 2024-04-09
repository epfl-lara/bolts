; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33754 () Bool)

(assert start!33754)

(declare-fun b_free!6981 () Bool)

(declare-fun b_next!6981 () Bool)

(assert (=> start!33754 (= b_free!6981 (not b_next!6981))))

(declare-fun tp!24447 () Bool)

(declare-fun b_and!14179 () Bool)

(assert (=> start!33754 (= tp!24447 b_and!14179)))

(declare-fun b!335488 () Bool)

(declare-fun e!205953 () Bool)

(declare-fun e!205955 () Bool)

(declare-fun mapRes!11796 () Bool)

(assert (=> b!335488 (= e!205953 (and e!205955 mapRes!11796))))

(declare-fun condMapEmpty!11796 () Bool)

(declare-datatypes ((V!10221 0))(
  ( (V!10222 (val!3511 Int)) )
))
(declare-datatypes ((ValueCell!3123 0))(
  ( (ValueCellFull!3123 (v!5669 V!10221)) (EmptyCell!3123) )
))
(declare-datatypes ((array!17445 0))(
  ( (array!17446 (arr!8250 (Array (_ BitVec 32) ValueCell!3123)) (size!8602 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17445)

(declare-fun mapDefault!11796 () ValueCell!3123)

(assert (=> b!335488 (= condMapEmpty!11796 (= (arr!8250 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3123)) mapDefault!11796)))))

(declare-fun b!335489 () Bool)

(declare-fun tp_is_empty!6933 () Bool)

(assert (=> b!335489 (= e!205955 tp_is_empty!6933)))

(declare-fun b!335490 () Bool)

(declare-fun res!185244 () Bool)

(declare-fun e!205956 () Bool)

(assert (=> b!335490 (=> (not res!185244) (not e!205956))))

(declare-datatypes ((array!17447 0))(
  ( (array!17448 (arr!8251 (Array (_ BitVec 32) (_ BitVec 64))) (size!8603 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17447)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17447 (_ BitVec 32)) Bool)

(assert (=> b!335490 (= res!185244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!185243 () Bool)

(assert (=> start!33754 (=> (not res!185243) (not e!205956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33754 (= res!185243 (validMask!0 mask!2385))))

(assert (=> start!33754 e!205956))

(assert (=> start!33754 true))

(assert (=> start!33754 tp_is_empty!6933))

(assert (=> start!33754 tp!24447))

(declare-fun array_inv!6116 (array!17445) Bool)

(assert (=> start!33754 (and (array_inv!6116 _values!1525) e!205953)))

(declare-fun array_inv!6117 (array!17447) Bool)

(assert (=> start!33754 (array_inv!6117 _keys!1895)))

(declare-fun mapNonEmpty!11796 () Bool)

(declare-fun tp!24446 () Bool)

(declare-fun e!205954 () Bool)

(assert (=> mapNonEmpty!11796 (= mapRes!11796 (and tp!24446 e!205954))))

(declare-fun mapValue!11796 () ValueCell!3123)

(declare-fun mapRest!11796 () (Array (_ BitVec 32) ValueCell!3123))

(declare-fun mapKey!11796 () (_ BitVec 32))

(assert (=> mapNonEmpty!11796 (= (arr!8250 _values!1525) (store mapRest!11796 mapKey!11796 mapValue!11796))))

(declare-fun b!335491 () Bool)

(declare-fun res!185240 () Bool)

(declare-fun e!205957 () Bool)

(assert (=> b!335491 (=> (not res!185240) (not e!205957))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3199 0))(
  ( (MissingZero!3199 (index!14975 (_ BitVec 32))) (Found!3199 (index!14976 (_ BitVec 32))) (Intermediate!3199 (undefined!4011 Bool) (index!14977 (_ BitVec 32)) (x!33456 (_ BitVec 32))) (Undefined!3199) (MissingVacant!3199 (index!14978 (_ BitVec 32))) )
))
(declare-fun lt!159883 () SeekEntryResult!3199)

(declare-fun arrayContainsKey!0 (array!17447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335491 (= res!185240 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14976 lt!159883)))))

(declare-fun b!335492 () Bool)

(assert (=> b!335492 (= e!205954 tp_is_empty!6933)))

(declare-fun mapIsEmpty!11796 () Bool)

(assert (=> mapIsEmpty!11796 mapRes!11796))

(declare-fun b!335493 () Bool)

(declare-fun res!185245 () Bool)

(assert (=> b!335493 (=> (not res!185245) (not e!205956))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335493 (= res!185245 (and (= (size!8602 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8603 _keys!1895) (size!8602 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335494 () Bool)

(declare-fun res!185239 () Bool)

(assert (=> b!335494 (=> (not res!185239) (not e!205956))))

(declare-datatypes ((List!4740 0))(
  ( (Nil!4737) (Cons!4736 (h!5592 (_ BitVec 64)) (t!9836 List!4740)) )
))
(declare-fun arrayNoDuplicates!0 (array!17447 (_ BitVec 32) List!4740) Bool)

(assert (=> b!335494 (= res!185239 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4737))))

(declare-fun b!335495 () Bool)

(declare-fun res!185241 () Bool)

(assert (=> b!335495 (=> (not res!185241) (not e!205956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335495 (= res!185241 (validKeyInArray!0 k0!1348))))

(declare-fun b!335496 () Bool)

(declare-fun e!205958 () Bool)

(assert (=> b!335496 (= e!205958 e!205957)))

(declare-fun res!185242 () Bool)

(assert (=> b!335496 (=> (not res!185242) (not e!205957))))

(get-info :version)

(assert (=> b!335496 (= res!185242 (and ((_ is Found!3199) lt!159883) (= (select (arr!8251 _keys!1895) (index!14976 lt!159883)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17447 (_ BitVec 32)) SeekEntryResult!3199)

(assert (=> b!335496 (= lt!159883 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335497 () Bool)

(assert (=> b!335497 (= e!205956 e!205958)))

(declare-fun res!185246 () Bool)

(assert (=> b!335497 (=> (not res!185246) (not e!205958))))

(declare-datatypes ((tuple2!5100 0))(
  ( (tuple2!5101 (_1!2560 (_ BitVec 64)) (_2!2560 V!10221)) )
))
(declare-datatypes ((List!4741 0))(
  ( (Nil!4738) (Cons!4737 (h!5593 tuple2!5100) (t!9837 List!4741)) )
))
(declare-datatypes ((ListLongMap!4027 0))(
  ( (ListLongMap!4028 (toList!2029 List!4741)) )
))
(declare-fun lt!159885 () ListLongMap!4027)

(declare-fun contains!2069 (ListLongMap!4027 (_ BitVec 64)) Bool)

(assert (=> b!335497 (= res!185246 (not (contains!2069 lt!159885 k0!1348)))))

(declare-fun zeroValue!1467 () V!10221)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10221)

(declare-fun getCurrentListMap!1549 (array!17447 array!17445 (_ BitVec 32) (_ BitVec 32) V!10221 V!10221 (_ BitVec 32) Int) ListLongMap!4027)

(assert (=> b!335497 (= lt!159885 (getCurrentListMap!1549 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335498 () Bool)

(assert (=> b!335498 (= e!205957 (not true))))

(assert (=> b!335498 (contains!2069 lt!159885 (select (arr!8251 _keys!1895) (index!14976 lt!159883)))))

(declare-datatypes ((Unit!10438 0))(
  ( (Unit!10439) )
))
(declare-fun lt!159882 () Unit!10438)

(declare-fun lemmaValidKeyInArrayIsInListMap!165 (array!17447 array!17445 (_ BitVec 32) (_ BitVec 32) V!10221 V!10221 (_ BitVec 32) Int) Unit!10438)

(assert (=> b!335498 (= lt!159882 (lemmaValidKeyInArrayIsInListMap!165 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14976 lt!159883) defaultEntry!1528))))

(assert (=> b!335498 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159884 () Unit!10438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17447 (_ BitVec 64) (_ BitVec 32)) Unit!10438)

(assert (=> b!335498 (= lt!159884 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14976 lt!159883)))))

(assert (= (and start!33754 res!185243) b!335493))

(assert (= (and b!335493 res!185245) b!335490))

(assert (= (and b!335490 res!185244) b!335494))

(assert (= (and b!335494 res!185239) b!335495))

(assert (= (and b!335495 res!185241) b!335497))

(assert (= (and b!335497 res!185246) b!335496))

(assert (= (and b!335496 res!185242) b!335491))

(assert (= (and b!335491 res!185240) b!335498))

(assert (= (and b!335488 condMapEmpty!11796) mapIsEmpty!11796))

(assert (= (and b!335488 (not condMapEmpty!11796)) mapNonEmpty!11796))

(assert (= (and mapNonEmpty!11796 ((_ is ValueCellFull!3123) mapValue!11796)) b!335492))

(assert (= (and b!335488 ((_ is ValueCellFull!3123) mapDefault!11796)) b!335489))

(assert (= start!33754 b!335488))

(declare-fun m!339517 () Bool)

(assert (=> b!335498 m!339517))

(declare-fun m!339519 () Bool)

(assert (=> b!335498 m!339519))

(declare-fun m!339521 () Bool)

(assert (=> b!335498 m!339521))

(declare-fun m!339523 () Bool)

(assert (=> b!335498 m!339523))

(declare-fun m!339525 () Bool)

(assert (=> b!335498 m!339525))

(assert (=> b!335498 m!339517))

(declare-fun m!339527 () Bool)

(assert (=> mapNonEmpty!11796 m!339527))

(declare-fun m!339529 () Bool)

(assert (=> b!335495 m!339529))

(declare-fun m!339531 () Bool)

(assert (=> b!335490 m!339531))

(assert (=> b!335496 m!339517))

(declare-fun m!339533 () Bool)

(assert (=> b!335496 m!339533))

(declare-fun m!339535 () Bool)

(assert (=> start!33754 m!339535))

(declare-fun m!339537 () Bool)

(assert (=> start!33754 m!339537))

(declare-fun m!339539 () Bool)

(assert (=> start!33754 m!339539))

(declare-fun m!339541 () Bool)

(assert (=> b!335494 m!339541))

(declare-fun m!339543 () Bool)

(assert (=> b!335491 m!339543))

(declare-fun m!339545 () Bool)

(assert (=> b!335497 m!339545))

(declare-fun m!339547 () Bool)

(assert (=> b!335497 m!339547))

(check-sat tp_is_empty!6933 (not start!33754) (not b!335491) (not b!335498) (not b!335490) (not mapNonEmpty!11796) (not b!335495) (not b!335497) (not b!335496) (not b_next!6981) (not b!335494) b_and!14179)
(check-sat b_and!14179 (not b_next!6981))
