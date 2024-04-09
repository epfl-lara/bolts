; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25030 () Bool)

(assert start!25030)

(declare-fun b!260775 () Bool)

(declare-fun b_free!6763 () Bool)

(declare-fun b_next!6763 () Bool)

(assert (=> b!260775 (= b_free!6763 (not b_next!6763))))

(declare-fun tp!23616 () Bool)

(declare-fun b_and!13901 () Bool)

(assert (=> b!260775 (= tp!23616 b_and!13901)))

(declare-fun b!260757 () Bool)

(declare-fun res!127452 () Bool)

(declare-fun e!168990 () Bool)

(assert (=> b!260757 (=> (not res!127452) (not e!168990))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!260757 (= res!127452 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!260758 () Bool)

(declare-fun e!168996 () Bool)

(declare-fun e!168989 () Bool)

(assert (=> b!260758 (= e!168996 e!168989)))

(declare-fun res!127450 () Bool)

(declare-fun call!24878 () Bool)

(assert (=> b!260758 (= res!127450 call!24878)))

(assert (=> b!260758 (=> (not res!127450) (not e!168989))))

(declare-fun b!260759 () Bool)

(declare-fun e!168994 () Bool)

(declare-fun e!168999 () Bool)

(declare-fun mapRes!11292 () Bool)

(assert (=> b!260759 (= e!168994 (and e!168999 mapRes!11292))))

(declare-fun condMapEmpty!11292 () Bool)

(declare-datatypes ((V!8481 0))(
  ( (V!8482 (val!3357 Int)) )
))
(declare-datatypes ((ValueCell!2969 0))(
  ( (ValueCellFull!2969 (v!5472 V!8481)) (EmptyCell!2969) )
))
(declare-datatypes ((array!12604 0))(
  ( (array!12605 (arr!5965 (Array (_ BitVec 32) ValueCell!2969)) (size!6315 (_ BitVec 32))) )
))
(declare-datatypes ((array!12606 0))(
  ( (array!12607 (arr!5966 (Array (_ BitVec 32) (_ BitVec 64))) (size!6316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3838 0))(
  ( (LongMapFixedSize!3839 (defaultEntry!4807 Int) (mask!11144 (_ BitVec 32)) (extraKeys!4544 (_ BitVec 32)) (zeroValue!4648 V!8481) (minValue!4648 V!8481) (_size!1968 (_ BitVec 32)) (_keys!6991 array!12606) (_values!4790 array!12604) (_vacant!1968 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3838)

(declare-fun mapDefault!11292 () ValueCell!2969)

