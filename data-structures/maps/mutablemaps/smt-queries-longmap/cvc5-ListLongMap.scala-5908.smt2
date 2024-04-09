; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76474 () Bool)

(assert start!76474)

(declare-fun b!896258 () Bool)

(declare-fun b_free!15949 () Bool)

(declare-fun b_next!15949 () Bool)

(assert (=> b!896258 (= b_free!15949 (not b_next!15949))))

(declare-fun tp!55880 () Bool)

(declare-fun b_and!26259 () Bool)

(assert (=> b!896258 (= tp!55880 b_and!26259)))

(declare-fun b!896251 () Bool)

(declare-fun e!500985 () Bool)

(declare-fun e!500978 () Bool)

(assert (=> b!896251 (= e!500985 (not e!500978))))

(declare-fun res!606143 () Bool)

(assert (=> b!896251 (=> res!606143 e!500978)))

(declare-datatypes ((SeekEntryResult!8884 0))(
  ( (MissingZero!8884 (index!37906 (_ BitVec 32))) (Found!8884 (index!37907 (_ BitVec 32))) (Intermediate!8884 (undefined!9696 Bool) (index!37908 (_ BitVec 32)) (x!76310 (_ BitVec 32))) (Undefined!8884) (MissingVacant!8884 (index!37909 (_ BitVec 32))) )
))
(declare-fun lt!404749 () SeekEntryResult!8884)

(assert (=> b!896251 (= res!606143 (not (is-Found!8884 lt!404749)))))

(declare-fun e!500982 () Bool)

(assert (=> b!896251 e!500982))

(declare-fun res!606142 () Bool)

(assert (=> b!896251 (=> res!606142 e!500982)))

(assert (=> b!896251 (= res!606142 (not (is-Found!8884 lt!404749)))))

(declare-datatypes ((Unit!30451 0))(
  ( (Unit!30452) )
))
(declare-fun lt!404751 () Unit!30451)

(declare-datatypes ((array!52556 0))(
  ( (array!52557 (arr!25262 (Array (_ BitVec 32) (_ BitVec 64))) (size!25714 (_ BitVec 32))) )
))
(declare-datatypes ((V!29335 0))(
  ( (V!29336 (val!9189 Int)) )
))
(declare-datatypes ((ValueCell!8657 0))(
  ( (ValueCellFull!8657 (v!11676 V!29335)) (EmptyCell!8657) )
))
(declare-datatypes ((array!52558 0))(
  ( (array!52559 (arr!25263 (Array (_ BitVec 32) ValueCell!8657)) (size!25715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4330 0))(
  ( (LongMapFixedSize!4331 (defaultEntry!5377 Int) (mask!26010 (_ BitVec 32)) (extraKeys!5078 (_ BitVec 32)) (zeroValue!5182 V!29335) (minValue!5182 V!29335) (_size!2220 (_ BitVec 32)) (_keys!10106 array!52556) (_values!5369 array!52558) (_vacant!2220 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4330)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!75 (array!52556 array!52558 (_ BitVec 32) (_ BitVec 32) V!29335 V!29335 (_ BitVec 64)) Unit!30451)

(assert (=> b!896251 (= lt!404751 (lemmaSeekEntryGivesInRangeIndex!75 (_keys!10106 thiss!1181) (_values!5369 thiss!1181) (mask!26010 thiss!1181) (extraKeys!5078 thiss!1181) (zeroValue!5182 thiss!1181) (minValue!5182 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52556 (_ BitVec 32)) SeekEntryResult!8884)

(assert (=> b!896251 (= lt!404749 (seekEntry!0 key!785 (_keys!10106 thiss!1181) (mask!26010 thiss!1181)))))

(declare-fun mapNonEmpty!29033 () Bool)

(declare-fun mapRes!29033 () Bool)

(declare-fun tp!55879 () Bool)

(declare-fun e!500980 () Bool)

(assert (=> mapNonEmpty!29033 (= mapRes!29033 (and tp!55879 e!500980))))

(declare-fun mapRest!29033 () (Array (_ BitVec 32) ValueCell!8657))

(declare-fun mapKey!29033 () (_ BitVec 32))

(declare-fun mapValue!29033 () ValueCell!8657)

(assert (=> mapNonEmpty!29033 (= (arr!25263 (_values!5369 thiss!1181)) (store mapRest!29033 mapKey!29033 mapValue!29033))))

(declare-fun b!896253 () Bool)

(declare-fun e!500984 () Bool)

(declare-fun e!500981 () Bool)

(assert (=> b!896253 (= e!500984 (and e!500981 mapRes!29033))))

(declare-fun condMapEmpty!29033 () Bool)

(declare-fun mapDefault!29033 () ValueCell!8657)

