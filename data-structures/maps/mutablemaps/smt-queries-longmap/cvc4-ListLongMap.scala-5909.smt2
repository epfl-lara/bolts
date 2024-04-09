; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76502 () Bool)

(assert start!76502)

(declare-fun b!896429 () Bool)

(declare-fun b_free!15959 () Bool)

(declare-fun b_next!15959 () Bool)

(assert (=> b!896429 (= b_free!15959 (not b_next!15959))))

(declare-fun tp!55912 () Bool)

(declare-fun b_and!26269 () Bool)

(assert (=> b!896429 (= tp!55912 b_and!26269)))

(declare-fun b!896423 () Bool)

(declare-fun e!501140 () Bool)

(declare-fun e!501139 () Bool)

(assert (=> b!896423 (= e!501140 e!501139)))

(declare-fun res!606229 () Bool)

(assert (=> b!896423 (=> res!606229 e!501139)))

(declare-datatypes ((array!52578 0))(
  ( (array!52579 (arr!25272 (Array (_ BitVec 32) (_ BitVec 64))) (size!25724 (_ BitVec 32))) )
))
(declare-datatypes ((V!29347 0))(
  ( (V!29348 (val!9194 Int)) )
))
(declare-datatypes ((ValueCell!8662 0))(
  ( (ValueCellFull!8662 (v!11681 V!29347)) (EmptyCell!8662) )
))
(declare-datatypes ((array!52580 0))(
  ( (array!52581 (arr!25273 (Array (_ BitVec 32) ValueCell!8662)) (size!25725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4340 0))(
  ( (LongMapFixedSize!4341 (defaultEntry!5382 Int) (mask!26021 (_ BitVec 32)) (extraKeys!5084 (_ BitVec 32)) (zeroValue!5188 V!29347) (minValue!5188 V!29347) (_size!2225 (_ BitVec 32)) (_keys!10113 array!52578) (_values!5375 array!52580) (_vacant!2225 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4340)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896423 (= res!606229 (not (validMask!0 (mask!26021 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896423 (arrayContainsKey!0 (_keys!10113 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30459 0))(
  ( (Unit!30460) )
))
(declare-fun lt!404815 () Unit!30459)

(declare-datatypes ((SeekEntryResult!8889 0))(
  ( (MissingZero!8889 (index!37926 (_ BitVec 32))) (Found!8889 (index!37927 (_ BitVec 32))) (Intermediate!8889 (undefined!9701 Bool) (index!37928 (_ BitVec 32)) (x!76331 (_ BitVec 32))) (Undefined!8889) (MissingVacant!8889 (index!37929 (_ BitVec 32))) )
))
(declare-fun lt!404817 () SeekEntryResult!8889)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52578 (_ BitVec 64) (_ BitVec 32)) Unit!30459)

(assert (=> b!896423 (= lt!404815 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10113 thiss!1181) key!785 (index!37927 lt!404817)))))

(declare-fun b!896424 () Bool)

(assert (=> b!896424 (= e!501139 (= (size!25725 (_values!5375 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26021 thiss!1181))))))

(declare-fun b!896425 () Bool)

(declare-fun e!501134 () Bool)

(declare-fun tp_is_empty!18287 () Bool)

(assert (=> b!896425 (= e!501134 tp_is_empty!18287)))

(declare-fun b!896426 () Bool)

(declare-fun e!501133 () Bool)

(assert (=> b!896426 (= e!501133 tp_is_empty!18287)))

(declare-fun mapIsEmpty!29051 () Bool)

(declare-fun mapRes!29051 () Bool)

(assert (=> mapIsEmpty!29051 mapRes!29051))

(declare-fun b!896427 () Bool)

(declare-fun e!501135 () Bool)

(assert (=> b!896427 (= e!501135 (not e!501140))))

(declare-fun res!606230 () Bool)

(assert (=> b!896427 (=> res!606230 e!501140)))

(assert (=> b!896427 (= res!606230 (not (is-Found!8889 lt!404817)))))

(declare-fun e!501137 () Bool)

(assert (=> b!896427 e!501137))

(declare-fun res!606232 () Bool)

(assert (=> b!896427 (=> res!606232 e!501137)))

(assert (=> b!896427 (= res!606232 (not (is-Found!8889 lt!404817)))))

(declare-fun lt!404816 () Unit!30459)

(declare-fun lemmaSeekEntryGivesInRangeIndex!79 (array!52578 array!52580 (_ BitVec 32) (_ BitVec 32) V!29347 V!29347 (_ BitVec 64)) Unit!30459)

(assert (=> b!896427 (= lt!404816 (lemmaSeekEntryGivesInRangeIndex!79 (_keys!10113 thiss!1181) (_values!5375 thiss!1181) (mask!26021 thiss!1181) (extraKeys!5084 thiss!1181) (zeroValue!5188 thiss!1181) (minValue!5188 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52578 (_ BitVec 32)) SeekEntryResult!8889)

(assert (=> b!896427 (= lt!404817 (seekEntry!0 key!785 (_keys!10113 thiss!1181) (mask!26021 thiss!1181)))))

(declare-fun mapNonEmpty!29051 () Bool)

(declare-fun tp!55913 () Bool)

(assert (=> mapNonEmpty!29051 (= mapRes!29051 (and tp!55913 e!501133))))

(declare-fun mapKey!29051 () (_ BitVec 32))

(declare-fun mapRest!29051 () (Array (_ BitVec 32) ValueCell!8662))

(declare-fun mapValue!29051 () ValueCell!8662)

(assert (=> mapNonEmpty!29051 (= (arr!25273 (_values!5375 thiss!1181)) (store mapRest!29051 mapKey!29051 mapValue!29051))))

(declare-fun e!501141 () Bool)

(declare-fun e!501138 () Bool)

(declare-fun array_inv!19810 (array!52578) Bool)

(declare-fun array_inv!19811 (array!52580) Bool)

(assert (=> b!896429 (= e!501141 (and tp!55912 tp_is_empty!18287 (array_inv!19810 (_keys!10113 thiss!1181)) (array_inv!19811 (_values!5375 thiss!1181)) e!501138))))

(declare-fun b!896430 () Bool)

(declare-fun res!606231 () Bool)

(assert (=> b!896430 (=> (not res!606231) (not e!501135))))

(assert (=> b!896430 (= res!606231 (not (= key!785 (bvneg key!785))))))

(declare-fun b!896431 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896431 (= e!501137 (inRange!0 (index!37927 lt!404817) (mask!26021 thiss!1181)))))

(declare-fun b!896428 () Bool)

(assert (=> b!896428 (= e!501138 (and e!501134 mapRes!29051))))

(declare-fun condMapEmpty!29051 () Bool)

(declare-fun mapDefault!29051 () ValueCell!8662)

