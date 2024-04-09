; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11508 () Bool)

(assert start!11508)

(declare-fun b!95599 () Bool)

(declare-fun b_free!2401 () Bool)

(declare-fun b_next!2401 () Bool)

(assert (=> b!95599 (= b_free!2401 (not b_next!2401))))

(declare-fun tp!9478 () Bool)

(declare-fun b_and!5841 () Bool)

(assert (=> b!95599 (= tp!9478 b_and!5841)))

(declare-fun b!95590 () Bool)

(declare-fun b_free!2403 () Bool)

(declare-fun b_next!2403 () Bool)

(assert (=> b!95590 (= b_free!2403 (not b_next!2403))))

(declare-fun tp!9480 () Bool)

(declare-fun b_and!5843 () Bool)

(assert (=> b!95590 (= tp!9480 b_and!5843)))

(declare-fun tp_is_empty!2617 () Bool)

(declare-fun e!62378 () Bool)

(declare-datatypes ((V!3137 0))(
  ( (V!3138 (val!1353 Int)) )
))
(declare-datatypes ((array!4210 0))(
  ( (array!4211 (arr!2000 (Array (_ BitVec 32) (_ BitVec 64))) (size!2249 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!965 0))(
  ( (ValueCellFull!965 (v!2776 V!3137)) (EmptyCell!965) )
))
(declare-datatypes ((array!4212 0))(
  ( (array!4213 (arr!2001 (Array (_ BitVec 32) ValueCell!965)) (size!2250 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!838 0))(
  ( (LongMapFixedSize!839 (defaultEntry!2456 Int) (mask!6541 (_ BitVec 32)) (extraKeys!2281 (_ BitVec 32)) (zeroValue!2341 V!3137) (minValue!2341 V!3137) (_size!468 (_ BitVec 32)) (_keys!4142 array!4210) (_values!2439 array!4212) (_vacant!468 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!838)

(declare-fun e!62372 () Bool)

(declare-fun array_inv!1199 (array!4210) Bool)

(declare-fun array_inv!1200 (array!4212) Bool)

(assert (=> b!95590 (= e!62372 (and tp!9480 tp_is_empty!2617 (array_inv!1199 (_keys!4142 newMap!16)) (array_inv!1200 (_values!2439 newMap!16)) e!62378))))

(declare-fun b!95591 () Bool)

(declare-fun e!62376 () Bool)

(declare-fun e!62374 () Bool)

(declare-fun mapRes!3695 () Bool)

(assert (=> b!95591 (= e!62376 (and e!62374 mapRes!3695))))

(declare-fun condMapEmpty!3695 () Bool)

(declare-datatypes ((Cell!642 0))(
  ( (Cell!643 (v!2777 LongMapFixedSize!838)) )
))
(declare-datatypes ((LongMap!642 0))(
  ( (LongMap!643 (underlying!332 Cell!642)) )
))
(declare-fun thiss!992 () LongMap!642)

(declare-fun mapDefault!3695 () ValueCell!965)

