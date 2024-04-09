; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21926 () Bool)

(assert start!21926)

(declare-fun b!222559 () Bool)

(declare-fun b_free!5981 () Bool)

(declare-fun b_next!5981 () Bool)

(assert (=> b!222559 (= b_free!5981 (not b_next!5981))))

(declare-fun tp!21085 () Bool)

(declare-fun b_and!12897 () Bool)

(assert (=> b!222559 (= tp!21085 b_and!12897)))

(declare-fun b!222536 () Bool)

(declare-fun e!144635 () Bool)

(declare-datatypes ((SeekEntryResult!849 0))(
  ( (MissingZero!849 (index!5566 (_ BitVec 32))) (Found!849 (index!5567 (_ BitVec 32))) (Intermediate!849 (undefined!1661 Bool) (index!5568 (_ BitVec 32)) (x!23069 (_ BitVec 32))) (Undefined!849) (MissingVacant!849 (index!5569 (_ BitVec 32))) )
))
(declare-fun lt!112712 () SeekEntryResult!849)

(assert (=> b!222536 (= e!144635 (is-Undefined!849 lt!112712))))

(declare-fun b!222537 () Bool)

(declare-fun e!144637 () Bool)

(declare-fun call!20776 () Bool)

(assert (=> b!222537 (= e!144637 (not call!20776))))

(declare-fun b!222538 () Bool)

(declare-datatypes ((Unit!6672 0))(
  ( (Unit!6673) )
))
(declare-fun e!144631 () Unit!6672)

(declare-fun Unit!6674 () Unit!6672)

(assert (=> b!222538 (= e!144631 Unit!6674)))

(declare-fun mapIsEmpty!9934 () Bool)

(declare-fun mapRes!9934 () Bool)

(assert (=> mapIsEmpty!9934 mapRes!9934))

(declare-fun b!222539 () Bool)

(declare-fun res!109280 () Bool)

(declare-fun e!144623 () Bool)

(assert (=> b!222539 (=> (not res!109280) (not e!144623))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!222539 (= res!109280 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222540 () Bool)

(declare-fun e!144636 () Bool)

(assert (=> b!222540 (= e!144636 (not call!20776))))

(declare-fun b!222541 () Bool)

(declare-fun e!144638 () Bool)

(assert (=> b!222541 (= e!144623 e!144638)))

(declare-fun res!109287 () Bool)

(assert (=> b!222541 (=> (not res!109287) (not e!144638))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222541 (= res!109287 (or (= lt!112712 (MissingZero!849 index!297)) (= lt!112712 (MissingVacant!849 index!297))))))

(declare-datatypes ((V!7437 0))(
  ( (V!7438 (val!2966 Int)) )
))
(declare-datatypes ((ValueCell!2578 0))(
  ( (ValueCellFull!2578 (v!4982 V!7437)) (EmptyCell!2578) )
))
(declare-datatypes ((array!10928 0))(
  ( (array!10929 (arr!5183 (Array (_ BitVec 32) ValueCell!2578)) (size!5516 (_ BitVec 32))) )
))
(declare-datatypes ((array!10930 0))(
  ( (array!10931 (arr!5184 (Array (_ BitVec 32) (_ BitVec 64))) (size!5517 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3056 0))(
  ( (LongMapFixedSize!3057 (defaultEntry!4187 Int) (mask!10007 (_ BitVec 32)) (extraKeys!3924 (_ BitVec 32)) (zeroValue!4028 V!7437) (minValue!4028 V!7437) (_size!1577 (_ BitVec 32)) (_keys!6241 array!10930) (_values!4170 array!10928) (_vacant!1577 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3056)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10930 (_ BitVec 32)) SeekEntryResult!849)

(assert (=> b!222541 (= lt!112712 (seekEntryOrOpen!0 key!932 (_keys!6241 thiss!1504) (mask!10007 thiss!1504)))))

(declare-fun b!222542 () Bool)

(declare-fun e!144628 () Bool)

(declare-fun e!144627 () Bool)

(assert (=> b!222542 (= e!144628 (and e!144627 mapRes!9934))))

(declare-fun condMapEmpty!9934 () Bool)

(declare-fun mapDefault!9934 () ValueCell!2578)

