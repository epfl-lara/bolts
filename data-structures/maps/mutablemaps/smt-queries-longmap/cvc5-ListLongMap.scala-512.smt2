; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12524 () Bool)

(assert start!12524)

(declare-fun b!107459 () Bool)

(declare-fun b_free!2533 () Bool)

(declare-fun b_next!2533 () Bool)

(assert (=> b!107459 (= b_free!2533 (not b_next!2533))))

(declare-fun tp!9929 () Bool)

(declare-fun b_and!6629 () Bool)

(assert (=> b!107459 (= tp!9929 b_and!6629)))

(declare-fun b!107454 () Bool)

(declare-fun b_free!2535 () Bool)

(declare-fun b_next!2535 () Bool)

(assert (=> b!107454 (= b_free!2535 (not b_next!2535))))

(declare-fun tp!9931 () Bool)

(declare-fun b_and!6631 () Bool)

(assert (=> b!107454 (= tp!9931 b_and!6631)))

(declare-fun res!53354 () Bool)

(declare-fun e!69909 () Bool)

(assert (=> start!12524 (=> (not res!53354) (not e!69909))))

(declare-datatypes ((V!3225 0))(
  ( (V!3226 (val!1386 Int)) )
))
(declare-datatypes ((array!4358 0))(
  ( (array!4359 (arr!2066 (Array (_ BitVec 32) (_ BitVec 64))) (size!2322 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!998 0))(
  ( (ValueCellFull!998 (v!2905 V!3225)) (EmptyCell!998) )
))
(declare-datatypes ((array!4360 0))(
  ( (array!4361 (arr!2067 (Array (_ BitVec 32) ValueCell!998)) (size!2323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!904 0))(
  ( (LongMapFixedSize!905 (defaultEntry!2602 Int) (mask!6758 (_ BitVec 32)) (extraKeys!2403 (_ BitVec 32)) (zeroValue!2475 V!3225) (minValue!2475 V!3225) (_size!501 (_ BitVec 32)) (_keys!4312 array!4358) (_values!2585 array!4360) (_vacant!501 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!706 0))(
  ( (Cell!707 (v!2906 LongMapFixedSize!904)) )
))
(declare-datatypes ((LongMap!706 0))(
  ( (LongMap!707 (underlying!364 Cell!706)) )
))
(declare-fun thiss!992 () LongMap!706)

(declare-fun valid!411 (LongMap!706) Bool)

(assert (=> start!12524 (= res!53354 (valid!411 thiss!992))))

(assert (=> start!12524 e!69909))

(declare-fun e!69913 () Bool)

(assert (=> start!12524 e!69913))

(assert (=> start!12524 true))

(declare-fun e!69914 () Bool)

(assert (=> start!12524 e!69914))

(declare-fun b!107441 () Bool)

(declare-fun e!69906 () Bool)

(declare-fun e!69912 () Bool)

(declare-fun mapRes!3949 () Bool)

(assert (=> b!107441 (= e!69906 (and e!69912 mapRes!3949))))

(declare-fun condMapEmpty!3950 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!904)

(declare-fun mapDefault!3950 () ValueCell!998)

