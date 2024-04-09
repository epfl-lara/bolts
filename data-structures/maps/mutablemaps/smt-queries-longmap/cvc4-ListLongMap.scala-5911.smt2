; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76586 () Bool)

(assert start!76586)

(declare-fun b!896884 () Bool)

(declare-fun b_free!15971 () Bool)

(declare-fun b_next!15971 () Bool)

(assert (=> b!896884 (= b_free!15971 (not b_next!15971))))

(declare-fun tp!55957 () Bool)

(declare-fun b_and!26281 () Bool)

(assert (=> b!896884 (= tp!55957 b_and!26281)))

(declare-fun mapIsEmpty!29077 () Bool)

(declare-fun mapRes!29077 () Bool)

(assert (=> mapIsEmpty!29077 mapRes!29077))

(declare-fun b!896879 () Bool)

(declare-fun e!501471 () Bool)

(declare-fun tp_is_empty!18299 () Bool)

(assert (=> b!896879 (= e!501471 tp_is_empty!18299)))

(declare-fun res!606438 () Bool)

(declare-fun e!501472 () Bool)

(assert (=> start!76586 (=> (not res!606438) (not e!501472))))

(declare-datatypes ((array!52606 0))(
  ( (array!52607 (arr!25284 (Array (_ BitVec 32) (_ BitVec 64))) (size!25738 (_ BitVec 32))) )
))
(declare-datatypes ((V!29363 0))(
  ( (V!29364 (val!9200 Int)) )
))
(declare-datatypes ((ValueCell!8668 0))(
  ( (ValueCellFull!8668 (v!11687 V!29363)) (EmptyCell!8668) )
))
(declare-datatypes ((array!52608 0))(
  ( (array!52609 (arr!25285 (Array (_ BitVec 32) ValueCell!8668)) (size!25739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4352 0))(
  ( (LongMapFixedSize!4353 (defaultEntry!5388 Int) (mask!26049 (_ BitVec 32)) (extraKeys!5094 (_ BitVec 32)) (zeroValue!5198 V!29363) (minValue!5198 V!29363) (_size!2231 (_ BitVec 32)) (_keys!10131 array!52606) (_values!5385 array!52608) (_vacant!2231 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4352)

(declare-fun valid!1664 (LongMapFixedSize!4352) Bool)

(assert (=> start!76586 (= res!606438 (valid!1664 thiss!1181))))

(assert (=> start!76586 e!501472))

(declare-fun e!501475 () Bool)

(assert (=> start!76586 e!501475))

(assert (=> start!76586 true))

(declare-fun mapNonEmpty!29077 () Bool)

(declare-fun tp!55956 () Bool)

(declare-fun e!501479 () Bool)

(assert (=> mapNonEmpty!29077 (= mapRes!29077 (and tp!55956 e!501479))))

(declare-fun mapRest!29077 () (Array (_ BitVec 32) ValueCell!8668))

(declare-fun mapValue!29077 () ValueCell!8668)

(declare-fun mapKey!29077 () (_ BitVec 32))

(assert (=> mapNonEmpty!29077 (= (arr!25285 (_values!5385 thiss!1181)) (store mapRest!29077 mapKey!29077 mapValue!29077))))

(declare-fun b!896880 () Bool)

(declare-fun e!501473 () Bool)

(assert (=> b!896880 (= e!501472 (not e!501473))))

(declare-fun res!606439 () Bool)

(assert (=> b!896880 (=> res!606439 e!501473)))

(declare-datatypes ((SeekEntryResult!8893 0))(
  ( (MissingZero!8893 (index!37942 (_ BitVec 32))) (Found!8893 (index!37943 (_ BitVec 32))) (Intermediate!8893 (undefined!9705 Bool) (index!37944 (_ BitVec 32)) (x!76385 (_ BitVec 32))) (Undefined!8893) (MissingVacant!8893 (index!37945 (_ BitVec 32))) )
))
(declare-fun lt!404979 () SeekEntryResult!8893)

(assert (=> b!896880 (= res!606439 (not (is-Found!8893 lt!404979)))))

(declare-fun e!501474 () Bool)

(assert (=> b!896880 e!501474))

(declare-fun res!606440 () Bool)

(assert (=> b!896880 (=> res!606440 e!501474)))

(assert (=> b!896880 (= res!606440 (not (is-Found!8893 lt!404979)))))

(declare-datatypes ((Unit!30467 0))(
  ( (Unit!30468) )
))
(declare-fun lt!404978 () Unit!30467)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!82 (array!52606 array!52608 (_ BitVec 32) (_ BitVec 32) V!29363 V!29363 (_ BitVec 64)) Unit!30467)

(assert (=> b!896880 (= lt!404978 (lemmaSeekEntryGivesInRangeIndex!82 (_keys!10131 thiss!1181) (_values!5385 thiss!1181) (mask!26049 thiss!1181) (extraKeys!5094 thiss!1181) (zeroValue!5198 thiss!1181) (minValue!5198 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52606 (_ BitVec 32)) SeekEntryResult!8893)

(assert (=> b!896880 (= lt!404979 (seekEntry!0 key!785 (_keys!10131 thiss!1181) (mask!26049 thiss!1181)))))

(declare-fun b!896881 () Bool)

(declare-fun res!606442 () Bool)

(assert (=> b!896881 (=> (not res!606442) (not e!501472))))

(assert (=> b!896881 (= res!606442 (not (= key!785 (bvneg key!785))))))

(declare-fun b!896882 () Bool)

(declare-fun e!501478 () Bool)

(assert (=> b!896882 (= e!501478 (or (not (= (size!25739 (_values!5385 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26049 thiss!1181)))) (not (= (size!25738 (_keys!10131 thiss!1181)) (size!25739 (_values!5385 thiss!1181)))) (bvsge (mask!26049 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!896883 () Bool)

(assert (=> b!896883 (= e!501479 tp_is_empty!18299)))

(declare-fun e!501476 () Bool)

(declare-fun array_inv!19820 (array!52606) Bool)

(declare-fun array_inv!19821 (array!52608) Bool)

(assert (=> b!896884 (= e!501475 (and tp!55957 tp_is_empty!18299 (array_inv!19820 (_keys!10131 thiss!1181)) (array_inv!19821 (_values!5385 thiss!1181)) e!501476))))

(declare-fun b!896885 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896885 (= e!501474 (inRange!0 (index!37943 lt!404979) (mask!26049 thiss!1181)))))

(declare-fun b!896886 () Bool)

(assert (=> b!896886 (= e!501473 e!501478)))

(declare-fun res!606441 () Bool)

(assert (=> b!896886 (=> res!606441 e!501478)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896886 (= res!606441 (not (validMask!0 (mask!26049 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896886 (arrayContainsKey!0 (_keys!10131 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!404977 () Unit!30467)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52606 (_ BitVec 64) (_ BitVec 32)) Unit!30467)

(assert (=> b!896886 (= lt!404977 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10131 thiss!1181) key!785 (index!37943 lt!404979)))))

(declare-fun b!896887 () Bool)

(assert (=> b!896887 (= e!501476 (and e!501471 mapRes!29077))))

(declare-fun condMapEmpty!29077 () Bool)

(declare-fun mapDefault!29077 () ValueCell!8668)

