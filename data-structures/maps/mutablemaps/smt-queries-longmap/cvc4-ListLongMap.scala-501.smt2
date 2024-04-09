; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11512 () Bool)

(assert start!11512)

(declare-fun b!95718 () Bool)

(declare-fun b_free!2409 () Bool)

(declare-fun b_next!2409 () Bool)

(assert (=> b!95718 (= b_free!2409 (not b_next!2409))))

(declare-fun tp!9502 () Bool)

(declare-fun b_and!5857 () Bool)

(assert (=> b!95718 (= tp!9502 b_and!5857)))

(declare-fun b!95714 () Bool)

(declare-fun b_free!2411 () Bool)

(declare-fun b_next!2411 () Bool)

(assert (=> b!95714 (= b_free!2411 (not b_next!2411))))

(declare-fun tp!9501 () Bool)

(declare-fun b_and!5859 () Bool)

(assert (=> b!95714 (= tp!9501 b_and!5859)))

(declare-fun b!95708 () Bool)

(declare-fun e!62465 () Bool)

(declare-fun tp_is_empty!2621 () Bool)

(assert (=> b!95708 (= e!62465 tp_is_empty!2621)))

(declare-fun b!95709 () Bool)

(declare-fun e!62467 () Bool)

(assert (=> b!95709 (= e!62467 tp_is_empty!2621)))

(declare-fun b!95710 () Bool)

(declare-fun e!62463 () Bool)

(declare-fun mapRes!3708 () Bool)

(assert (=> b!95710 (= e!62463 (and e!62467 mapRes!3708))))

(declare-fun condMapEmpty!3708 () Bool)

(declare-datatypes ((V!3141 0))(
  ( (V!3142 (val!1355 Int)) )
))
(declare-datatypes ((array!4218 0))(
  ( (array!4219 (arr!2004 (Array (_ BitVec 32) (_ BitVec 64))) (size!2253 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!967 0))(
  ( (ValueCellFull!967 (v!2780 V!3141)) (EmptyCell!967) )
))
(declare-datatypes ((array!4220 0))(
  ( (array!4221 (arr!2005 (Array (_ BitVec 32) ValueCell!967)) (size!2254 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!842 0))(
  ( (LongMapFixedSize!843 (defaultEntry!2458 Int) (mask!6543 (_ BitVec 32)) (extraKeys!2283 (_ BitVec 32)) (zeroValue!2343 V!3141) (minValue!2343 V!3141) (_size!470 (_ BitVec 32)) (_keys!4144 array!4218) (_values!2441 array!4220) (_vacant!470 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!646 0))(
  ( (Cell!647 (v!2781 LongMapFixedSize!842)) )
))
(declare-datatypes ((LongMap!646 0))(
  ( (LongMap!647 (underlying!334 Cell!646)) )
))
(declare-fun thiss!992 () LongMap!646)

(declare-fun mapDefault!3707 () ValueCell!967)

