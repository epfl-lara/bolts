; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23304 () Bool)

(assert start!23304)

(declare-fun b!244808 () Bool)

(declare-fun b_free!6545 () Bool)

(declare-fun b_next!6545 () Bool)

(assert (=> b!244808 (= b_free!6545 (not b_next!6545))))

(declare-fun tp!22863 () Bool)

(declare-fun b_and!13549 () Bool)

(assert (=> b!244808 (= tp!22863 b_and!13549)))

(declare-fun b!244794 () Bool)

(declare-datatypes ((Unit!7558 0))(
  ( (Unit!7559) )
))
(declare-fun e!158844 () Unit!7558)

(declare-fun Unit!7560 () Unit!7558)

(assert (=> b!244794 (= e!158844 Unit!7560)))

(declare-fun c!40843 () Bool)

(declare-datatypes ((SeekEntryResult!1093 0))(
  ( (MissingZero!1093 (index!6542 (_ BitVec 32))) (Found!1093 (index!6543 (_ BitVec 32))) (Intermediate!1093 (undefined!1905 Bool) (index!6544 (_ BitVec 32)) (x!24397 (_ BitVec 32))) (Undefined!1093) (MissingVacant!1093 (index!6545 (_ BitVec 32))) )
))
(declare-fun lt!122664 () SeekEntryResult!1093)

(declare-datatypes ((V!8189 0))(
  ( (V!8190 (val!3248 Int)) )
))
(declare-datatypes ((ValueCell!2860 0))(
  ( (ValueCellFull!2860 (v!5295 V!8189)) (EmptyCell!2860) )
))
(declare-datatypes ((array!12108 0))(
  ( (array!12109 (arr!5747 (Array (_ BitVec 32) ValueCell!2860)) (size!6089 (_ BitVec 32))) )
))
(declare-datatypes ((array!12110 0))(
  ( (array!12111 (arr!5748 (Array (_ BitVec 32) (_ BitVec 64))) (size!6090 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3620 0))(
  ( (LongMapFixedSize!3621 (defaultEntry!4531 Int) (mask!10634 (_ BitVec 32)) (extraKeys!4268 (_ BitVec 32)) (zeroValue!4372 V!8189) (minValue!4372 V!8189) (_size!1859 (_ BitVec 32)) (_keys!6644 array!12110) (_values!4514 array!12108) (_vacant!1859 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3620)

(declare-fun call!22837 () Bool)

(declare-fun bm!22833 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22833 (= call!22837 (inRange!0 (ite c!40843 (index!6542 lt!122664) (index!6545 lt!122664)) (mask!10634 thiss!1504)))))

(declare-fun b!244795 () Bool)

(declare-fun e!158843 () Bool)

(declare-fun lt!122668 () Bool)

(assert (=> b!244795 (= e!158843 lt!122668)))

(declare-fun b!244796 () Bool)

(declare-fun res!120122 () Bool)

(assert (=> b!244796 (=> (not res!120122) (not e!158843))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244796 (= res!120122 (validKeyInArray!0 key!932))))

(declare-fun b!244797 () Bool)

(declare-fun e!158832 () Bool)

(declare-fun e!158827 () Bool)

(declare-fun mapRes!10867 () Bool)

(assert (=> b!244797 (= e!158832 (and e!158827 mapRes!10867))))

(declare-fun condMapEmpty!10867 () Bool)

(declare-fun mapDefault!10867 () ValueCell!2860)

