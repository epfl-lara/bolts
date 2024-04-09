; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12146 () Bool)

(assert start!12146)

(declare-fun b!102353 () Bool)

(declare-fun b_free!2473 () Bool)

(declare-fun b_next!2473 () Bool)

(assert (=> b!102353 (= b_free!2473 (not b_next!2473))))

(declare-fun tp!9730 () Bool)

(declare-fun b_and!6305 () Bool)

(assert (=> b!102353 (= tp!9730 b_and!6305)))

(declare-fun b!102355 () Bool)

(declare-fun b_free!2475 () Bool)

(declare-fun b_next!2475 () Bool)

(assert (=> b!102355 (= b_free!2475 (not b_next!2475))))

(declare-fun tp!9732 () Bool)

(declare-fun b_and!6307 () Bool)

(assert (=> b!102355 (= tp!9732 b_and!6307)))

(declare-fun b!102339 () Bool)

(declare-fun e!66616 () Bool)

(declare-fun tp_is_empty!2653 () Bool)

(assert (=> b!102339 (= e!66616 tp_is_empty!2653)))

(declare-fun b!102340 () Bool)

(declare-fun e!66614 () Bool)

(declare-fun e!66611 () Bool)

(declare-fun mapRes!3839 () Bool)

(assert (=> b!102340 (= e!66614 (and e!66611 mapRes!3839))))

(declare-fun condMapEmpty!3840 () Bool)

(declare-datatypes ((V!3185 0))(
  ( (V!3186 (val!1371 Int)) )
))
(declare-datatypes ((array!4292 0))(
  ( (array!4293 (arr!2036 (Array (_ BitVec 32) (_ BitVec 64))) (size!2290 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!983 0))(
  ( (ValueCellFull!983 (v!2854 V!3185)) (EmptyCell!983) )
))
(declare-datatypes ((array!4294 0))(
  ( (array!4295 (arr!2037 (Array (_ BitVec 32) ValueCell!983)) (size!2291 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!874 0))(
  ( (LongMapFixedSize!875 (defaultEntry!2548 Int) (mask!6677 (_ BitVec 32)) (extraKeys!2357 (_ BitVec 32)) (zeroValue!2425 V!3185) (minValue!2425 V!3185) (_size!486 (_ BitVec 32)) (_keys!4250 array!4292) (_values!2531 array!4294) (_vacant!486 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!678 0))(
  ( (Cell!679 (v!2855 LongMapFixedSize!874)) )
))
(declare-datatypes ((LongMap!678 0))(
  ( (LongMap!679 (underlying!350 Cell!678)) )
))
(declare-fun thiss!992 () LongMap!678)

(declare-fun mapDefault!3839 () ValueCell!983)

