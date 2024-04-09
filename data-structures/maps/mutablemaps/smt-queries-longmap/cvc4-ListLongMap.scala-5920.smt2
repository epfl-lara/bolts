; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76908 () Bool)

(assert start!76908)

(declare-fun b!898745 () Bool)

(declare-fun b_free!16025 () Bool)

(declare-fun b_next!16025 () Bool)

(assert (=> b!898745 (= b_free!16025 (not b_next!16025))))

(declare-fun tp!56149 () Bool)

(declare-fun b_and!26343 () Bool)

(assert (=> b!898745 (= tp!56149 b_and!26343)))

(declare-fun b!898739 () Bool)

(declare-fun e!502845 () Bool)

(declare-datatypes ((array!52732 0))(
  ( (array!52733 (arr!25338 (Array (_ BitVec 32) (_ BitVec 64))) (size!25795 (_ BitVec 32))) )
))
(declare-datatypes ((V!29435 0))(
  ( (V!29436 (val!9227 Int)) )
))
(declare-datatypes ((ValueCell!8695 0))(
  ( (ValueCellFull!8695 (v!11716 V!29435)) (EmptyCell!8695) )
))
(declare-datatypes ((array!52734 0))(
  ( (array!52735 (arr!25339 (Array (_ BitVec 32) ValueCell!8695)) (size!25796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4406 0))(
  ( (LongMapFixedSize!4407 (defaultEntry!5421 Int) (mask!26155 (_ BitVec 32)) (extraKeys!5139 (_ BitVec 32)) (zeroValue!5243 V!29435) (minValue!5243 V!29435) (_size!2258 (_ BitVec 32)) (_keys!10198 array!52732) (_values!5430 array!52734) (_vacant!2258 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4406)

(assert (=> b!898739 (= e!502845 (or (not (= (size!25796 (_values!5430 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26155 thiss!1181)))) (= (size!25795 (_keys!10198 thiss!1181)) (size!25796 (_values!5430 thiss!1181)))))))

(declare-fun b!898740 () Bool)

(declare-fun e!502850 () Bool)

(declare-datatypes ((SeekEntryResult!8916 0))(
  ( (MissingZero!8916 (index!38034 (_ BitVec 32))) (Found!8916 (index!38035 (_ BitVec 32))) (Intermediate!8916 (undefined!9728 Bool) (index!38036 (_ BitVec 32)) (x!76582 (_ BitVec 32))) (Undefined!8916) (MissingVacant!8916 (index!38037 (_ BitVec 32))) )
))
(declare-fun lt!405813 () SeekEntryResult!8916)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898740 (= e!502850 (inRange!0 (index!38035 lt!405813) (mask!26155 thiss!1181)))))

(declare-fun res!607375 () Bool)

(declare-fun e!502847 () Bool)

(assert (=> start!76908 (=> (not res!607375) (not e!502847))))

(declare-fun valid!1679 (LongMapFixedSize!4406) Bool)

(assert (=> start!76908 (= res!607375 (valid!1679 thiss!1181))))

(assert (=> start!76908 e!502847))

(declare-fun e!502846 () Bool)

(assert (=> start!76908 e!502846))

(assert (=> start!76908 true))

(declare-fun b!898741 () Bool)

(declare-fun e!502849 () Bool)

(assert (=> b!898741 (= e!502849 e!502845)))

(declare-fun res!607378 () Bool)

(assert (=> b!898741 (=> res!607378 e!502845)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!898741 (= res!607378 (not (validMask!0 (mask!26155 thiss!1181))))))

(declare-datatypes ((tuple2!12060 0))(
  ( (tuple2!12061 (_1!6040 (_ BitVec 64)) (_2!6040 V!29435)) )
))
(declare-datatypes ((List!17920 0))(
  ( (Nil!17917) (Cons!17916 (h!19059 tuple2!12060) (t!25271 List!17920)) )
))
(declare-datatypes ((ListLongMap!10771 0))(
  ( (ListLongMap!10772 (toList!5401 List!17920)) )
))
(declare-fun contains!4402 (ListLongMap!10771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2644 (array!52732 array!52734 (_ BitVec 32) (_ BitVec 32) V!29435 V!29435 (_ BitVec 32) Int) ListLongMap!10771)

(assert (=> b!898741 (contains!4402 (getCurrentListMap!2644 (_keys!10198 thiss!1181) (_values!5430 thiss!1181) (mask!26155 thiss!1181) (extraKeys!5139 thiss!1181) (zeroValue!5243 thiss!1181) (minValue!5243 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5421 thiss!1181)) (select (arr!25338 (_keys!10198 thiss!1181)) (index!38035 lt!405813)))))

(declare-datatypes ((Unit!30519 0))(
  ( (Unit!30520) )
))
(declare-fun lt!405812 () Unit!30519)

(declare-fun lemmaValidKeyInArrayIsInListMap!237 (array!52732 array!52734 (_ BitVec 32) (_ BitVec 32) V!29435 V!29435 (_ BitVec 32) Int) Unit!30519)

(assert (=> b!898741 (= lt!405812 (lemmaValidKeyInArrayIsInListMap!237 (_keys!10198 thiss!1181) (_values!5430 thiss!1181) (mask!26155 thiss!1181) (extraKeys!5139 thiss!1181) (zeroValue!5243 thiss!1181) (minValue!5243 thiss!1181) (index!38035 lt!405813) (defaultEntry!5421 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!898741 (arrayContainsKey!0 (_keys!10198 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405814 () Unit!30519)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52732 (_ BitVec 64) (_ BitVec 32)) Unit!30519)

(assert (=> b!898741 (= lt!405814 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10198 thiss!1181) key!785 (index!38035 lt!405813)))))

(declare-fun b!898742 () Bool)

(assert (=> b!898742 (= e!502847 (not e!502849))))

(declare-fun res!607376 () Bool)

(assert (=> b!898742 (=> res!607376 e!502849)))

(assert (=> b!898742 (= res!607376 (not (is-Found!8916 lt!405813)))))

(assert (=> b!898742 e!502850))

(declare-fun res!607377 () Bool)

(assert (=> b!898742 (=> res!607377 e!502850)))

(assert (=> b!898742 (= res!607377 (not (is-Found!8916 lt!405813)))))

(declare-fun lt!405815 () Unit!30519)

(declare-fun lemmaSeekEntryGivesInRangeIndex!99 (array!52732 array!52734 (_ BitVec 32) (_ BitVec 32) V!29435 V!29435 (_ BitVec 64)) Unit!30519)

(assert (=> b!898742 (= lt!405815 (lemmaSeekEntryGivesInRangeIndex!99 (_keys!10198 thiss!1181) (_values!5430 thiss!1181) (mask!26155 thiss!1181) (extraKeys!5139 thiss!1181) (zeroValue!5243 thiss!1181) (minValue!5243 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52732 (_ BitVec 32)) SeekEntryResult!8916)

(assert (=> b!898742 (= lt!405813 (seekEntry!0 key!785 (_keys!10198 thiss!1181) (mask!26155 thiss!1181)))))

(declare-fun mapIsEmpty!29188 () Bool)

(declare-fun mapRes!29188 () Bool)

(assert (=> mapIsEmpty!29188 mapRes!29188))

(declare-fun b!898743 () Bool)

(declare-fun e!502852 () Bool)

(declare-fun tp_is_empty!18353 () Bool)

(assert (=> b!898743 (= e!502852 tp_is_empty!18353)))

(declare-fun b!898744 () Bool)

(declare-fun e!502853 () Bool)

(assert (=> b!898744 (= e!502853 tp_is_empty!18353)))

(declare-fun e!502851 () Bool)

(declare-fun array_inv!19858 (array!52732) Bool)

(declare-fun array_inv!19859 (array!52734) Bool)

(assert (=> b!898745 (= e!502846 (and tp!56149 tp_is_empty!18353 (array_inv!19858 (_keys!10198 thiss!1181)) (array_inv!19859 (_values!5430 thiss!1181)) e!502851))))

(declare-fun mapNonEmpty!29188 () Bool)

(declare-fun tp!56148 () Bool)

(assert (=> mapNonEmpty!29188 (= mapRes!29188 (and tp!56148 e!502852))))

(declare-fun mapKey!29188 () (_ BitVec 32))

(declare-fun mapRest!29188 () (Array (_ BitVec 32) ValueCell!8695))

(declare-fun mapValue!29188 () ValueCell!8695)

(assert (=> mapNonEmpty!29188 (= (arr!25339 (_values!5430 thiss!1181)) (store mapRest!29188 mapKey!29188 mapValue!29188))))

(declare-fun b!898746 () Bool)

(assert (=> b!898746 (= e!502851 (and e!502853 mapRes!29188))))

(declare-fun condMapEmpty!29188 () Bool)

(declare-fun mapDefault!29188 () ValueCell!8695)

