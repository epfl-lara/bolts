; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16824 () Bool)

(assert start!16824)

(declare-fun b!169412 () Bool)

(declare-fun b_free!4135 () Bool)

(declare-fun b_next!4135 () Bool)

(assert (=> b!169412 (= b_free!4135 (not b_next!4135))))

(declare-fun tp!15009 () Bool)

(declare-fun b_and!10567 () Bool)

(assert (=> b!169412 (= tp!15009 b_and!10567)))

(declare-fun b!169418 () Bool)

(declare-fun b_free!4137 () Bool)

(declare-fun b_next!4137 () Bool)

(assert (=> b!169418 (= b_free!4137 (not b_next!4137))))

(declare-fun tp!15012 () Bool)

(declare-fun b_and!10569 () Bool)

(assert (=> b!169418 (= tp!15012 b_and!10569)))

(declare-fun b!169410 () Bool)

(declare-fun e!111652 () Bool)

(declare-fun e!111659 () Bool)

(assert (=> b!169410 (= e!111652 e!111659)))

(declare-fun res!80596 () Bool)

(assert (=> b!169410 (=> (not res!80596) (not e!111659))))

(declare-datatypes ((SeekEntryResult!534 0))(
  ( (MissingZero!534 (index!4304 (_ BitVec 32))) (Found!534 (index!4305 (_ BitVec 32))) (Intermediate!534 (undefined!1346 Bool) (index!4306 (_ BitVec 32)) (x!18730 (_ BitVec 32))) (Undefined!534) (MissingVacant!534 (index!4307 (_ BitVec 32))) )
))
(declare-fun lt!84940 () SeekEntryResult!534)

(assert (=> b!169410 (= res!80596 (and (not (is-Undefined!534 lt!84940)) (not (is-MissingVacant!534 lt!84940)) (not (is-MissingZero!534 lt!84940)) (not (is-Found!534 lt!84940))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4873 0))(
  ( (V!4874 (val!2004 Int)) )
))
(declare-datatypes ((ValueCell!1616 0))(
  ( (ValueCellFull!1616 (v!3865 V!4873)) (EmptyCell!1616) )
))
(declare-datatypes ((array!6934 0))(
  ( (array!6935 (arr!3302 (Array (_ BitVec 32) (_ BitVec 64))) (size!3590 (_ BitVec 32))) )
))
(declare-datatypes ((array!6936 0))(
  ( (array!6937 (arr!3303 (Array (_ BitVec 32) ValueCell!1616)) (size!3591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2140 0))(
  ( (LongMapFixedSize!2141 (defaultEntry!3512 Int) (mask!8297 (_ BitVec 32)) (extraKeys!3253 (_ BitVec 32)) (zeroValue!3355 V!4873) (minValue!3355 V!4873) (_size!1119 (_ BitVec 32)) (_keys!5337 array!6934) (_values!3495 array!6936) (_vacant!1119 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2140)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6934 (_ BitVec 32)) SeekEntryResult!534)

(assert (=> b!169410 (= lt!84940 (seekEntryOrOpen!0 key!828 (_keys!5337 thiss!1248) (mask!8297 thiss!1248)))))

(declare-fun b!169411 () Bool)

(declare-fun e!111653 () Bool)

(declare-fun e!111650 () Bool)

(declare-fun mapRes!6626 () Bool)

(assert (=> b!169411 (= e!111653 (and e!111650 mapRes!6626))))

(declare-fun condMapEmpty!6626 () Bool)

(declare-datatypes ((tuple2!3216 0))(
  ( (tuple2!3217 (_1!1618 Bool) (_2!1618 LongMapFixedSize!2140)) )
))
(declare-fun err!75 () tuple2!3216)

(declare-fun mapDefault!6626 () ValueCell!1616)

