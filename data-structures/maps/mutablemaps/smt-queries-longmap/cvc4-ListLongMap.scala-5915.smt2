; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76720 () Bool)

(assert start!76720)

(declare-fun b!897625 () Bool)

(declare-fun b_free!15995 () Bool)

(declare-fun b_next!15995 () Bool)

(assert (=> b!897625 (= b_free!15995 (not b_next!15995))))

(declare-fun tp!56042 () Bool)

(declare-fun b_and!26305 () Bool)

(assert (=> b!897625 (= tp!56042 b_and!26305)))

(declare-fun b!897622 () Bool)

(declare-fun e!502034 () Bool)

(declare-fun e!502036 () Bool)

(assert (=> b!897622 (= e!502034 e!502036)))

(declare-fun res!606806 () Bool)

(assert (=> b!897622 (=> res!606806 e!502036)))

(declare-datatypes ((array!52662 0))(
  ( (array!52663 (arr!25308 (Array (_ BitVec 32) (_ BitVec 64))) (size!25764 (_ BitVec 32))) )
))
(declare-datatypes ((V!29395 0))(
  ( (V!29396 (val!9212 Int)) )
))
(declare-datatypes ((ValueCell!8680 0))(
  ( (ValueCellFull!8680 (v!11699 V!29395)) (EmptyCell!8680) )
))
(declare-datatypes ((array!52664 0))(
  ( (array!52665 (arr!25309 (Array (_ BitVec 32) ValueCell!8680)) (size!25765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4376 0))(
  ( (LongMapFixedSize!4377 (defaultEntry!5400 Int) (mask!26096 (_ BitVec 32)) (extraKeys!5112 (_ BitVec 32)) (zeroValue!5216 V!29395) (minValue!5216 V!29395) (_size!2243 (_ BitVec 32)) (_keys!10160 array!52662) (_values!5403 array!52664) (_vacant!2243 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4376)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897622 (= res!606806 (not (validMask!0 (mask!26096 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897622 (arrayContainsKey!0 (_keys!10160 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30487 0))(
  ( (Unit!30488) )
))
(declare-fun lt!405245 () Unit!30487)

(declare-datatypes ((SeekEntryResult!8903 0))(
  ( (MissingZero!8903 (index!37982 (_ BitVec 32))) (Found!8903 (index!37983 (_ BitVec 32))) (Intermediate!8903 (undefined!9715 Bool) (index!37984 (_ BitVec 32)) (x!76477 (_ BitVec 32))) (Undefined!8903) (MissingVacant!8903 (index!37985 (_ BitVec 32))) )
))
(declare-fun lt!405246 () SeekEntryResult!8903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52662 (_ BitVec 64) (_ BitVec 32)) Unit!30487)

(assert (=> b!897622 (= lt!405245 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10160 thiss!1181) key!785 (index!37983 lt!405246)))))

(declare-fun b!897623 () Bool)

(declare-datatypes ((List!17908 0))(
  ( (Nil!17905) (Cons!17904 (h!19046 (_ BitVec 64)) (t!25255 List!17908)) )
))
(declare-fun arrayNoDuplicates!0 (array!52662 (_ BitVec 32) List!17908) Bool)

(assert (=> b!897623 (= e!502036 (arrayNoDuplicates!0 (_keys!10160 thiss!1181) #b00000000000000000000000000000000 Nil!17905))))

(declare-fun b!897624 () Bool)

(declare-fun e!502038 () Bool)

(declare-fun e!502039 () Bool)

(declare-fun mapRes!29127 () Bool)

(assert (=> b!897624 (= e!502038 (and e!502039 mapRes!29127))))

(declare-fun condMapEmpty!29127 () Bool)

(declare-fun mapDefault!29127 () ValueCell!8680)

