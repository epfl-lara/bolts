; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19940 () Bool)

(assert start!19940)

(declare-fun b!195505 () Bool)

(declare-fun b_free!4729 () Bool)

(declare-fun b_next!4729 () Bool)

(assert (=> b!195505 (= b_free!4729 (not b_next!4729))))

(declare-fun tp!17070 () Bool)

(declare-fun b_and!11493 () Bool)

(assert (=> b!195505 (= tp!17070 b_and!11493)))

(declare-fun b!195497 () Bool)

(declare-fun b_free!4731 () Bool)

(declare-fun b_next!4731 () Bool)

(assert (=> b!195497 (= b_free!4731 (not b_next!4731))))

(declare-fun tp!17071 () Bool)

(declare-fun b_and!11495 () Bool)

(assert (=> b!195497 (= tp!17071 b_and!11495)))

(declare-fun b!195495 () Bool)

(declare-fun e!128614 () Bool)

(declare-fun e!128601 () Bool)

(assert (=> b!195495 (= e!128614 e!128601)))

(declare-fun res!92295 () Bool)

(assert (=> b!195495 (=> (not res!92295) (not e!128601))))

(declare-datatypes ((SeekEntryResult!708 0))(
  ( (MissingZero!708 (index!5002 (_ BitVec 32))) (Found!708 (index!5003 (_ BitVec 32))) (Intermediate!708 (undefined!1520 Bool) (index!5004 (_ BitVec 32)) (x!20763 (_ BitVec 32))) (Undefined!708) (MissingVacant!708 (index!5005 (_ BitVec 32))) )
))
(declare-fun lt!97497 () SeekEntryResult!708)

(assert (=> b!195495 (= res!92295 (and (not (is-Undefined!708 lt!97497)) (not (is-MissingVacant!708 lt!97497)) (not (is-MissingZero!708 lt!97497)) (not (is-Found!708 lt!97497))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5649 0))(
  ( (V!5650 (val!2295 Int)) )
))
(declare-datatypes ((ValueCell!1907 0))(
  ( (ValueCellFull!1907 (v!4259 V!5649)) (EmptyCell!1907) )
))
(declare-datatypes ((array!8256 0))(
  ( (array!8257 (arr!3884 (Array (_ BitVec 32) (_ BitVec 64))) (size!4209 (_ BitVec 32))) )
))
(declare-datatypes ((array!8258 0))(
  ( (array!8259 (arr!3885 (Array (_ BitVec 32) ValueCell!1907)) (size!4210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2722 0))(
  ( (LongMapFixedSize!2723 (defaultEntry!3975 Int) (mask!9251 (_ BitVec 32)) (extraKeys!3712 (_ BitVec 32)) (zeroValue!3816 V!5649) (minValue!3816 V!5649) (_size!1410 (_ BitVec 32)) (_keys!5974 array!8256) (_values!3958 array!8258) (_vacant!1410 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2722)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8256 (_ BitVec 32)) SeekEntryResult!708)

(assert (=> b!195495 (= lt!97497 (seekEntryOrOpen!0 key!828 (_keys!5974 thiss!1248) (mask!9251 thiss!1248)))))

(declare-fun b!195496 () Bool)

(declare-fun e!128609 () Bool)

(declare-fun e!128613 () Bool)

(declare-fun mapRes!7794 () Bool)

(assert (=> b!195496 (= e!128609 (and e!128613 mapRes!7794))))

(declare-fun condMapEmpty!7795 () Bool)

(declare-fun mapDefault!7794 () ValueCell!1907)

