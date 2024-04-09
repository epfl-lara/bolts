; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76772 () Bool)

(assert start!76772)

(declare-fun b!897920 () Bool)

(declare-fun b_free!16003 () Bool)

(declare-fun b_next!16003 () Bool)

(assert (=> b!897920 (= b_free!16003 (not b_next!16003))))

(declare-fun tp!56072 () Bool)

(declare-fun b_and!26313 () Bool)

(assert (=> b!897920 (= tp!56072 b_and!26313)))

(declare-fun b!897909 () Bool)

(declare-fun res!606974 () Bool)

(declare-fun e!502246 () Bool)

(assert (=> b!897909 (=> res!606974 e!502246)))

(declare-datatypes ((array!52682 0))(
  ( (array!52683 (arr!25316 (Array (_ BitVec 32) (_ BitVec 64))) (size!25772 (_ BitVec 32))) )
))
(declare-datatypes ((V!29407 0))(
  ( (V!29408 (val!9216 Int)) )
))
(declare-datatypes ((ValueCell!8684 0))(
  ( (ValueCellFull!8684 (v!11703 V!29407)) (EmptyCell!8684) )
))
(declare-datatypes ((array!52684 0))(
  ( (array!52685 (arr!25317 (Array (_ BitVec 32) ValueCell!8684)) (size!25773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4384 0))(
  ( (LongMapFixedSize!4385 (defaultEntry!5404 Int) (mask!26114 (_ BitVec 32)) (extraKeys!5118 (_ BitVec 32)) (zeroValue!5222 V!29407) (minValue!5222 V!29407) (_size!2247 (_ BitVec 32)) (_keys!10170 array!52682) (_values!5409 array!52684) (_vacant!2247 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4384)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52682 (_ BitVec 32)) Bool)

(assert (=> b!897909 (= res!606974 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10170 thiss!1181) (mask!26114 thiss!1181))))))

(declare-fun mapIsEmpty!29145 () Bool)

(declare-fun mapRes!29145 () Bool)

(assert (=> mapIsEmpty!29145 mapRes!29145))

(declare-fun b!897910 () Bool)

(declare-fun res!606969 () Bool)

(declare-fun e!502242 () Bool)

(assert (=> b!897910 (=> (not res!606969) (not e!502242))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!897910 (= res!606969 (not (= key!785 (bvneg key!785))))))

(declare-fun b!897911 () Bool)

(declare-fun res!606968 () Bool)

(assert (=> b!897911 (=> res!606968 e!502246)))

(declare-datatypes ((SeekEntryResult!8907 0))(
  ( (MissingZero!8907 (index!37998 (_ BitVec 32))) (Found!8907 (index!37999 (_ BitVec 32))) (Intermediate!8907 (undefined!9719 Bool) (index!38000 (_ BitVec 32)) (x!76513 (_ BitVec 32))) (Undefined!8907) (MissingVacant!8907 (index!38001 (_ BitVec 32))) )
))
(declare-fun lt!405341 () SeekEntryResult!8907)

(assert (=> b!897911 (= res!606968 (or (bvslt (index!37999 lt!405341) #b00000000000000000000000000000000) (bvsge (index!37999 lt!405341) (size!25772 (_keys!10170 thiss!1181)))))))

(declare-fun b!897912 () Bool)

(declare-fun e!502245 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!897912 (= e!502245 (inRange!0 (index!37999 lt!405341) (mask!26114 thiss!1181)))))

(declare-fun b!897913 () Bool)

(declare-fun e!502240 () Bool)

(declare-fun tp_is_empty!18331 () Bool)

(assert (=> b!897913 (= e!502240 tp_is_empty!18331)))

(declare-fun b!897914 () Bool)

(declare-fun e!502239 () Bool)

(assert (=> b!897914 (= e!502239 tp_is_empty!18331)))

(declare-fun b!897915 () Bool)

(declare-fun res!606976 () Bool)

(assert (=> b!897915 (=> res!606976 e!502246)))

(assert (=> b!897915 (= res!606976 (or (not (= (size!25773 (_values!5409 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26114 thiss!1181)))) (not (= (size!25772 (_keys!10170 thiss!1181)) (size!25773 (_values!5409 thiss!1181)))) (bvslt (mask!26114 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5118 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5118 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897916 () Bool)

(declare-fun e!502241 () Bool)

(assert (=> b!897916 (= e!502241 e!502246)))

(declare-fun res!606973 () Bool)

(assert (=> b!897916 (=> res!606973 e!502246)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897916 (= res!606973 (not (validMask!0 (mask!26114 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897916 (arrayContainsKey!0 (_keys!10170 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30495 0))(
  ( (Unit!30496) )
))
(declare-fun lt!405342 () Unit!30495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52682 (_ BitVec 64) (_ BitVec 32)) Unit!30495)

(assert (=> b!897916 (= lt!405342 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10170 thiss!1181) key!785 (index!37999 lt!405341)))))

(declare-fun res!606970 () Bool)

(assert (=> start!76772 (=> (not res!606970) (not e!502242))))

(declare-fun valid!1673 (LongMapFixedSize!4384) Bool)

(assert (=> start!76772 (= res!606970 (valid!1673 thiss!1181))))

(assert (=> start!76772 e!502242))

(declare-fun e!502243 () Bool)

(assert (=> start!76772 e!502243))

(assert (=> start!76772 true))

(declare-fun b!897917 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!897917 (= e!502246 (validKeyInArray!0 (select (arr!25316 (_keys!10170 thiss!1181)) (index!37999 lt!405341))))))

(declare-fun b!897918 () Bool)

(assert (=> b!897918 (= e!502242 (not e!502241))))

(declare-fun res!606971 () Bool)

(assert (=> b!897918 (=> res!606971 e!502241)))

(assert (=> b!897918 (= res!606971 (not (is-Found!8907 lt!405341)))))

(assert (=> b!897918 e!502245))

(declare-fun res!606975 () Bool)

(assert (=> b!897918 (=> res!606975 e!502245)))

(assert (=> b!897918 (= res!606975 (not (is-Found!8907 lt!405341)))))

(declare-fun lt!405340 () Unit!30495)

(declare-fun lemmaSeekEntryGivesInRangeIndex!92 (array!52682 array!52684 (_ BitVec 32) (_ BitVec 32) V!29407 V!29407 (_ BitVec 64)) Unit!30495)

(assert (=> b!897918 (= lt!405340 (lemmaSeekEntryGivesInRangeIndex!92 (_keys!10170 thiss!1181) (_values!5409 thiss!1181) (mask!26114 thiss!1181) (extraKeys!5118 thiss!1181) (zeroValue!5222 thiss!1181) (minValue!5222 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52682 (_ BitVec 32)) SeekEntryResult!8907)

(assert (=> b!897918 (= lt!405341 (seekEntry!0 key!785 (_keys!10170 thiss!1181) (mask!26114 thiss!1181)))))

(declare-fun b!897919 () Bool)

(declare-fun res!606972 () Bool)

(assert (=> b!897919 (=> res!606972 e!502246)))

(declare-datatypes ((List!17912 0))(
  ( (Nil!17909) (Cons!17908 (h!19050 (_ BitVec 64)) (t!25259 List!17912)) )
))
(declare-fun arrayNoDuplicates!0 (array!52682 (_ BitVec 32) List!17912) Bool)

(assert (=> b!897919 (= res!606972 (not (arrayNoDuplicates!0 (_keys!10170 thiss!1181) #b00000000000000000000000000000000 Nil!17909)))))

(declare-fun e!502238 () Bool)

(declare-fun array_inv!19844 (array!52682) Bool)

(declare-fun array_inv!19845 (array!52684) Bool)

(assert (=> b!897920 (= e!502243 (and tp!56072 tp_is_empty!18331 (array_inv!19844 (_keys!10170 thiss!1181)) (array_inv!19845 (_values!5409 thiss!1181)) e!502238))))

(declare-fun b!897921 () Bool)

(assert (=> b!897921 (= e!502238 (and e!502240 mapRes!29145))))

(declare-fun condMapEmpty!29145 () Bool)

(declare-fun mapDefault!29145 () ValueCell!8684)

