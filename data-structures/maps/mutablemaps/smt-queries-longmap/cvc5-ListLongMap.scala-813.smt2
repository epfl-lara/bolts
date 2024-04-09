; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19808 () Bool)

(assert start!19808)

(declare-fun b!193913 () Bool)

(declare-fun b_free!4717 () Bool)

(declare-fun b_next!4717 () Bool)

(assert (=> b!193913 (= b_free!4717 (not b_next!4717))))

(declare-fun tp!17021 () Bool)

(declare-fun b_and!11449 () Bool)

(assert (=> b!193913 (= tp!17021 b_and!11449)))

(declare-fun mapIsEmpty!7766 () Bool)

(declare-fun mapRes!7766 () Bool)

(assert (=> mapIsEmpty!7766 mapRes!7766))

(declare-fun b!193902 () Bool)

(declare-fun e!127588 () Bool)

(declare-fun tp_is_empty!4489 () Bool)

(assert (=> b!193902 (= e!127588 tp_is_empty!4489)))

(declare-fun b!193903 () Bool)

(declare-fun e!127589 () Bool)

(declare-fun e!127583 () Bool)

(assert (=> b!193903 (= e!127589 e!127583)))

(declare-fun res!91661 () Bool)

(assert (=> b!193903 (=> (not res!91661) (not e!127583))))

(declare-datatypes ((SeekEntryResult!703 0))(
  ( (MissingZero!703 (index!4982 (_ BitVec 32))) (Found!703 (index!4983 (_ BitVec 32))) (Intermediate!703 (undefined!1515 Bool) (index!4984 (_ BitVec 32)) (x!20699 (_ BitVec 32))) (Undefined!703) (MissingVacant!703 (index!4985 (_ BitVec 32))) )
))
(declare-fun lt!96661 () SeekEntryResult!703)

(assert (=> b!193903 (= res!91661 (and (not (is-Undefined!703 lt!96661)) (not (is-MissingVacant!703 lt!96661)) (not (is-MissingZero!703 lt!96661)) (is-Found!703 lt!96661)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5633 0))(
  ( (V!5634 (val!2289 Int)) )
))
(declare-datatypes ((ValueCell!1901 0))(
  ( (ValueCellFull!1901 (v!4247 V!5633)) (EmptyCell!1901) )
))
(declare-datatypes ((array!8228 0))(
  ( (array!8229 (arr!3872 (Array (_ BitVec 32) (_ BitVec 64))) (size!4196 (_ BitVec 32))) )
))
(declare-datatypes ((array!8230 0))(
  ( (array!8231 (arr!3873 (Array (_ BitVec 32) ValueCell!1901)) (size!4197 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2710 0))(
  ( (LongMapFixedSize!2711 (defaultEntry!3959 Int) (mask!9222 (_ BitVec 32)) (extraKeys!3696 (_ BitVec 32)) (zeroValue!3800 V!5633) (minValue!3800 V!5633) (_size!1404 (_ BitVec 32)) (_keys!5953 array!8228) (_values!3942 array!8230) (_vacant!1404 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2710)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8228 (_ BitVec 32)) SeekEntryResult!703)

(assert (=> b!193903 (= lt!96661 (seekEntryOrOpen!0 key!828 (_keys!5953 thiss!1248) (mask!9222 thiss!1248)))))

(declare-fun mapNonEmpty!7766 () Bool)

(declare-fun tp!17020 () Bool)

(declare-fun e!127590 () Bool)

(assert (=> mapNonEmpty!7766 (= mapRes!7766 (and tp!17020 e!127590))))

(declare-fun mapKey!7766 () (_ BitVec 32))

(declare-fun mapValue!7766 () ValueCell!1901)

(declare-fun mapRest!7766 () (Array (_ BitVec 32) ValueCell!1901))

(assert (=> mapNonEmpty!7766 (= (arr!3873 (_values!3942 thiss!1248)) (store mapRest!7766 mapKey!7766 mapValue!7766))))

(declare-fun b!193904 () Bool)

(declare-fun res!91660 () Bool)

(assert (=> b!193904 (=> (not res!91660) (not e!127589))))

(assert (=> b!193904 (= res!91660 (not (= key!828 (bvneg key!828))))))

(declare-fun e!127586 () Bool)

(declare-fun b!193905 () Bool)

(assert (=> b!193905 (= e!127586 (= (select (arr!3872 (_keys!5953 thiss!1248)) (index!4983 lt!96661)) key!828))))

(declare-fun b!193906 () Bool)

(declare-fun e!127585 () Bool)

(declare-fun e!127584 () Bool)

(assert (=> b!193906 (= e!127585 e!127584)))

(declare-fun res!91659 () Bool)

(assert (=> b!193906 (=> (not res!91659) (not e!127584))))

(declare-datatypes ((tuple2!3554 0))(
  ( (tuple2!3555 (_1!1787 (_ BitVec 64)) (_2!1787 V!5633)) )
))
(declare-datatypes ((List!2468 0))(
  ( (Nil!2465) (Cons!2464 (h!3105 tuple2!3554) (t!7402 List!2468)) )
))
(declare-datatypes ((ListLongMap!2485 0))(
  ( (ListLongMap!2486 (toList!1258 List!2468)) )
))
(declare-fun lt!96662 () ListLongMap!2485)

(declare-fun contains!1377 (ListLongMap!2485 (_ BitVec 64)) Bool)

(assert (=> b!193906 (= res!91659 (contains!1377 lt!96662 key!828))))

(declare-fun lt!96654 () LongMapFixedSize!2710)

(declare-fun map!2027 (LongMapFixedSize!2710) ListLongMap!2485)

(assert (=> b!193906 (= lt!96662 (map!2027 lt!96654))))

(declare-fun b!193907 () Bool)

(declare-fun lt!96652 () tuple2!3554)

(declare-fun +!316 (ListLongMap!2485 tuple2!3554) ListLongMap!2485)

(assert (=> b!193907 (= e!127584 (= lt!96662 (+!316 (map!2027 thiss!1248) lt!96652)))))

(declare-fun b!193908 () Bool)

(declare-datatypes ((Unit!5872 0))(
  ( (Unit!5873) )
))
(declare-fun e!127581 () Unit!5872)

(declare-fun Unit!5874 () Unit!5872)

(assert (=> b!193908 (= e!127581 Unit!5874)))

(declare-fun lt!96663 () Unit!5872)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!193 (array!8228 array!8230 (_ BitVec 32) (_ BitVec 32) V!5633 V!5633 (_ BitVec 64) Int) Unit!5872)

(assert (=> b!193908 (= lt!96663 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!193 (_keys!5953 thiss!1248) (_values!3942 thiss!1248) (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) key!828 (defaultEntry!3959 thiss!1248)))))

(assert (=> b!193908 false))

(declare-fun b!193909 () Bool)

(assert (=> b!193909 (= e!127583 (not e!127585))))

(declare-fun res!91662 () Bool)

(assert (=> b!193909 (=> (not res!91662) (not e!127585))))

(declare-fun valid!1104 (LongMapFixedSize!2710) Bool)

(assert (=> b!193909 (= res!91662 (valid!1104 lt!96654))))

(declare-fun lt!96653 () ListLongMap!2485)

(assert (=> b!193909 (contains!1377 lt!96653 (select (arr!3872 (_keys!5953 thiss!1248)) (index!4983 lt!96661)))))

(declare-fun lt!96655 () array!8230)

(declare-fun lt!96658 () Unit!5872)

(declare-fun lemmaValidKeyInArrayIsInListMap!143 (array!8228 array!8230 (_ BitVec 32) (_ BitVec 32) V!5633 V!5633 (_ BitVec 32) Int) Unit!5872)

(assert (=> b!193909 (= lt!96658 (lemmaValidKeyInArrayIsInListMap!143 (_keys!5953 thiss!1248) lt!96655 (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) (index!4983 lt!96661) (defaultEntry!3959 thiss!1248)))))

(assert (=> b!193909 (= lt!96654 (LongMapFixedSize!2711 (defaultEntry!3959 thiss!1248) (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) (_size!1404 thiss!1248) (_keys!5953 thiss!1248) lt!96655 (_vacant!1404 thiss!1248)))))

(declare-fun lt!96660 () ListLongMap!2485)

(assert (=> b!193909 (= lt!96660 lt!96653)))

(declare-fun getCurrentListMap!901 (array!8228 array!8230 (_ BitVec 32) (_ BitVec 32) V!5633 V!5633 (_ BitVec 32) Int) ListLongMap!2485)

(assert (=> b!193909 (= lt!96653 (getCurrentListMap!901 (_keys!5953 thiss!1248) lt!96655 (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3959 thiss!1248)))))

(declare-fun lt!96657 () ListLongMap!2485)

(assert (=> b!193909 (= lt!96660 (+!316 lt!96657 lt!96652))))

(declare-fun v!309 () V!5633)

(assert (=> b!193909 (= lt!96655 (array!8231 (store (arr!3873 (_values!3942 thiss!1248)) (index!4983 lt!96661) (ValueCellFull!1901 v!309)) (size!4197 (_values!3942 thiss!1248))))))

(assert (=> b!193909 (= lt!96652 (tuple2!3555 key!828 v!309))))

(declare-fun lt!96659 () Unit!5872)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!122 (array!8228 array!8230 (_ BitVec 32) (_ BitVec 32) V!5633 V!5633 (_ BitVec 32) (_ BitVec 64) V!5633 Int) Unit!5872)

(assert (=> b!193909 (= lt!96659 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!122 (_keys!5953 thiss!1248) (_values!3942 thiss!1248) (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) (index!4983 lt!96661) key!828 v!309 (defaultEntry!3959 thiss!1248)))))

(declare-fun lt!96664 () Unit!5872)

(assert (=> b!193909 (= lt!96664 e!127581)))

(declare-fun c!34960 () Bool)

(assert (=> b!193909 (= c!34960 (contains!1377 lt!96657 key!828))))

(assert (=> b!193909 (= lt!96657 (getCurrentListMap!901 (_keys!5953 thiss!1248) (_values!3942 thiss!1248) (mask!9222 thiss!1248) (extraKeys!3696 thiss!1248) (zeroValue!3800 thiss!1248) (minValue!3800 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3959 thiss!1248)))))

(declare-fun res!91658 () Bool)

(assert (=> start!19808 (=> (not res!91658) (not e!127589))))

(assert (=> start!19808 (= res!91658 (valid!1104 thiss!1248))))

(assert (=> start!19808 e!127589))

(declare-fun e!127580 () Bool)

(assert (=> start!19808 e!127580))

(assert (=> start!19808 true))

(assert (=> start!19808 tp_is_empty!4489))

(declare-fun b!193910 () Bool)

(declare-fun e!127587 () Bool)

(assert (=> b!193910 (= e!127587 (and e!127588 mapRes!7766))))

(declare-fun condMapEmpty!7766 () Bool)

(declare-fun mapDefault!7766 () ValueCell!1901)

