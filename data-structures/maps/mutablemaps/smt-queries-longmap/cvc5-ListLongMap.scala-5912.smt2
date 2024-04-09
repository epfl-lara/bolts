; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76606 () Bool)

(assert start!76606)

(declare-fun b!896958 () Bool)

(declare-fun b_free!15973 () Bool)

(declare-fun b_next!15973 () Bool)

(assert (=> b!896958 (= b_free!15973 (not b_next!15973))))

(declare-fun tp!55966 () Bool)

(declare-fun b_and!26283 () Bool)

(assert (=> b!896958 (= tp!55966 b_and!26283)))

(declare-fun b!896950 () Bool)

(declare-fun e!501532 () Bool)

(declare-fun e!501526 () Bool)

(assert (=> b!896950 (= e!501532 (not e!501526))))

(declare-fun res!606472 () Bool)

(assert (=> b!896950 (=> res!606472 e!501526)))

(declare-datatypes ((SeekEntryResult!8894 0))(
  ( (MissingZero!8894 (index!37946 (_ BitVec 32))) (Found!8894 (index!37947 (_ BitVec 32))) (Intermediate!8894 (undefined!9706 Bool) (index!37948 (_ BitVec 32)) (x!76402 (_ BitVec 32))) (Undefined!8894) (MissingVacant!8894 (index!37949 (_ BitVec 32))) )
))
(declare-fun lt!405007 () SeekEntryResult!8894)

(assert (=> b!896950 (= res!606472 (not (is-Found!8894 lt!405007)))))

(declare-fun e!501529 () Bool)

(assert (=> b!896950 e!501529))

(declare-fun res!606475 () Bool)

(assert (=> b!896950 (=> res!606475 e!501529)))

(assert (=> b!896950 (= res!606475 (not (is-Found!8894 lt!405007)))))

(declare-datatypes ((Unit!30469 0))(
  ( (Unit!30470) )
))
(declare-fun lt!405009 () Unit!30469)

(declare-datatypes ((array!52612 0))(
  ( (array!52613 (arr!25286 (Array (_ BitVec 32) (_ BitVec 64))) (size!25740 (_ BitVec 32))) )
))
(declare-datatypes ((V!29367 0))(
  ( (V!29368 (val!9201 Int)) )
))
(declare-datatypes ((ValueCell!8669 0))(
  ( (ValueCellFull!8669 (v!11688 V!29367)) (EmptyCell!8669) )
))
(declare-datatypes ((array!52614 0))(
  ( (array!52615 (arr!25287 (Array (_ BitVec 32) ValueCell!8669)) (size!25741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4354 0))(
  ( (LongMapFixedSize!4355 (defaultEntry!5389 Int) (mask!26056 (_ BitVec 32)) (extraKeys!5096 (_ BitVec 32)) (zeroValue!5200 V!29367) (minValue!5200 V!29367) (_size!2232 (_ BitVec 32)) (_keys!10134 array!52612) (_values!5387 array!52614) (_vacant!2232 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4354)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!83 (array!52612 array!52614 (_ BitVec 32) (_ BitVec 32) V!29367 V!29367 (_ BitVec 64)) Unit!30469)

(assert (=> b!896950 (= lt!405009 (lemmaSeekEntryGivesInRangeIndex!83 (_keys!10134 thiss!1181) (_values!5387 thiss!1181) (mask!26056 thiss!1181) (extraKeys!5096 thiss!1181) (zeroValue!5200 thiss!1181) (minValue!5200 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52612 (_ BitVec 32)) SeekEntryResult!8894)

(assert (=> b!896950 (= lt!405007 (seekEntry!0 key!785 (_keys!10134 thiss!1181) (mask!26056 thiss!1181)))))

(declare-fun b!896951 () Bool)

(declare-fun e!501527 () Bool)

(assert (=> b!896951 (= e!501526 e!501527)))

(declare-fun res!606474 () Bool)

(assert (=> b!896951 (=> res!606474 e!501527)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896951 (= res!606474 (not (validMask!0 (mask!26056 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896951 (arrayContainsKey!0 (_keys!10134 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405008 () Unit!30469)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52612 (_ BitVec 64) (_ BitVec 32)) Unit!30469)

(assert (=> b!896951 (= lt!405008 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10134 thiss!1181) key!785 (index!37947 lt!405007)))))

(declare-fun b!896952 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896952 (= e!501529 (inRange!0 (index!37947 lt!405007) (mask!26056 thiss!1181)))))

(declare-fun b!896953 () Bool)

(declare-fun res!606473 () Bool)

(assert (=> b!896953 (=> (not res!606473) (not e!501532))))

(assert (=> b!896953 (= res!606473 (not (= key!785 (bvneg key!785))))))

(declare-fun res!606471 () Bool)

(assert (=> start!76606 (=> (not res!606471) (not e!501532))))

(declare-fun valid!1665 (LongMapFixedSize!4354) Bool)

(assert (=> start!76606 (= res!606471 (valid!1665 thiss!1181))))

(assert (=> start!76606 e!501532))

(declare-fun e!501531 () Bool)

(assert (=> start!76606 e!501531))

(assert (=> start!76606 true))

(declare-fun b!896954 () Bool)

(declare-fun e!501525 () Bool)

(declare-fun tp_is_empty!18301 () Bool)

(assert (=> b!896954 (= e!501525 tp_is_empty!18301)))

(declare-fun b!896955 () Bool)

(declare-fun e!501533 () Bool)

(declare-fun mapRes!29083 () Bool)

(assert (=> b!896955 (= e!501533 (and e!501525 mapRes!29083))))

(declare-fun condMapEmpty!29083 () Bool)

(declare-fun mapDefault!29083 () ValueCell!8669)

