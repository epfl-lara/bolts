; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21258 () Bool)

(assert start!21258)

(declare-fun b!214037 () Bool)

(declare-fun b_free!5657 () Bool)

(declare-fun b_next!5657 () Bool)

(assert (=> b!214037 (= b_free!5657 (not b_next!5657))))

(declare-fun tp!20048 () Bool)

(declare-fun b_and!12565 () Bool)

(assert (=> b!214037 (= tp!20048 b_and!12565)))

(declare-fun b!214033 () Bool)

(declare-fun res!104799 () Bool)

(declare-fun e!139191 () Bool)

(assert (=> b!214033 (=> (not res!104799) (not e!139191))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214033 (= res!104799 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214034 () Bool)

(declare-fun e!139190 () Bool)

(declare-fun tp_is_empty!5519 () Bool)

(assert (=> b!214034 (= e!139190 tp_is_empty!5519)))

(declare-fun b!214035 () Bool)

(declare-fun e!139187 () Bool)

(declare-fun mapRes!9383 () Bool)

(assert (=> b!214035 (= e!139187 (and e!139190 mapRes!9383))))

(declare-fun condMapEmpty!9383 () Bool)

(declare-datatypes ((V!7005 0))(
  ( (V!7006 (val!2804 Int)) )
))
(declare-datatypes ((ValueCell!2416 0))(
  ( (ValueCellFull!2416 (v!4818 V!7005)) (EmptyCell!2416) )
))
(declare-datatypes ((array!10242 0))(
  ( (array!10243 (arr!4859 (Array (_ BitVec 32) ValueCell!2416)) (size!5184 (_ BitVec 32))) )
))
(declare-datatypes ((array!10244 0))(
  ( (array!10245 (arr!4860 (Array (_ BitVec 32) (_ BitVec 64))) (size!5185 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2732 0))(
  ( (LongMapFixedSize!2733 (defaultEntry!4016 Int) (mask!9664 (_ BitVec 32)) (extraKeys!3753 (_ BitVec 32)) (zeroValue!3857 V!7005) (minValue!3857 V!7005) (_size!1415 (_ BitVec 32)) (_keys!6032 array!10244) (_values!3999 array!10242) (_vacant!1415 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2732)

(declare-fun mapDefault!9383 () ValueCell!2416)

