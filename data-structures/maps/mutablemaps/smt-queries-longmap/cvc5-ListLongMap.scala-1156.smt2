; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24296 () Bool)

(assert start!24296)

(declare-fun b!254336 () Bool)

(declare-fun b_free!6685 () Bool)

(declare-fun b_next!6685 () Bool)

(assert (=> b!254336 (= b_free!6685 (not b_next!6685))))

(declare-fun tp!23342 () Bool)

(declare-fun b_and!13745 () Bool)

(assert (=> b!254336 (= tp!23342 b_and!13745)))

(declare-fun b!254319 () Bool)

(declare-fun res!124521 () Bool)

(declare-fun e!164862 () Bool)

(assert (=> b!254319 (=> (not res!124521) (not e!164862))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!254319 (= res!124521 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254320 () Bool)

(declare-fun e!164855 () Bool)

(declare-fun e!164867 () Bool)

(assert (=> b!254320 (= e!164855 e!164867)))

(declare-fun res!124524 () Bool)

(declare-fun call!23999 () Bool)

(assert (=> b!254320 (= res!124524 call!23999)))

(assert (=> b!254320 (=> (not res!124524) (not e!164867))))

(declare-fun b!254321 () Bool)

(declare-fun e!164858 () Bool)

(declare-fun tp_is_empty!6547 () Bool)

(assert (=> b!254321 (= e!164858 tp_is_empty!6547)))

(declare-fun b!254322 () Bool)

(declare-fun e!164857 () Bool)

(assert (=> b!254322 (= e!164857 true)))

(declare-fun lt!127486 () Bool)

(declare-datatypes ((V!8377 0))(
  ( (V!8378 (val!3318 Int)) )
))
(declare-datatypes ((ValueCell!2930 0))(
  ( (ValueCellFull!2930 (v!5388 V!8377)) (EmptyCell!2930) )
))
(declare-datatypes ((array!12424 0))(
  ( (array!12425 (arr!5887 (Array (_ BitVec 32) ValueCell!2930)) (size!6234 (_ BitVec 32))) )
))
(declare-datatypes ((array!12426 0))(
  ( (array!12427 (arr!5888 (Array (_ BitVec 32) (_ BitVec 64))) (size!6235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3760 0))(
  ( (LongMapFixedSize!3761 (defaultEntry!4693 Int) (mask!10939 (_ BitVec 32)) (extraKeys!4430 (_ BitVec 32)) (zeroValue!4534 V!8377) (minValue!4534 V!8377) (_size!1929 (_ BitVec 32)) (_keys!6847 array!12426) (_values!4676 array!12424) (_vacant!1929 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3760)

(declare-datatypes ((List!3787 0))(
  ( (Nil!3784) (Cons!3783 (h!4445 (_ BitVec 64)) (t!8842 List!3787)) )
))
(declare-fun arrayNoDuplicates!0 (array!12426 (_ BitVec 32) List!3787) Bool)

(assert (=> b!254322 (= lt!127486 (arrayNoDuplicates!0 (_keys!6847 thiss!1504) #b00000000000000000000000000000000 Nil!3784))))

(declare-fun b!254323 () Bool)

(declare-fun e!164864 () Bool)

(declare-fun mapRes!11136 () Bool)

(assert (=> b!254323 (= e!164864 (and e!164858 mapRes!11136))))

(declare-fun condMapEmpty!11136 () Bool)

(declare-fun mapDefault!11136 () ValueCell!2930)

