; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16246 () Bool)

(assert start!16246)

(declare-fun b!161905 () Bool)

(declare-fun b_free!3695 () Bool)

(declare-fun b_next!3695 () Bool)

(assert (=> b!161905 (= b_free!3695 (not b_next!3695))))

(declare-fun tp!13655 () Bool)

(declare-fun b_and!10127 () Bool)

(assert (=> b!161905 (= tp!13655 b_and!10127)))

(declare-fun b!161901 () Bool)

(declare-fun e!105959 () Bool)

(declare-fun tp_is_empty!3497 () Bool)

(assert (=> b!161901 (= e!105959 tp_is_empty!3497)))

(declare-fun b!161902 () Bool)

(declare-fun e!105953 () Bool)

(declare-fun mapRes!5933 () Bool)

(assert (=> b!161902 (= e!105953 (and e!105959 mapRes!5933))))

(declare-fun condMapEmpty!5933 () Bool)

(declare-datatypes ((V!4309 0))(
  ( (V!4310 (val!1793 Int)) )
))
(declare-datatypes ((ValueCell!1405 0))(
  ( (ValueCellFull!1405 (v!3654 V!4309)) (EmptyCell!1405) )
))
(declare-datatypes ((array!6072 0))(
  ( (array!6073 (arr!2880 (Array (_ BitVec 32) (_ BitVec 64))) (size!3164 (_ BitVec 32))) )
))
(declare-datatypes ((array!6074 0))(
  ( (array!6075 (arr!2881 (Array (_ BitVec 32) ValueCell!1405)) (size!3165 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1718 0))(
  ( (LongMapFixedSize!1719 (defaultEntry!3301 Int) (mask!7907 (_ BitVec 32)) (extraKeys!3042 (_ BitVec 32)) (zeroValue!3144 V!4309) (minValue!3144 V!4309) (_size!908 (_ BitVec 32)) (_keys!5102 array!6072) (_values!3284 array!6074) (_vacant!908 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1718)

(declare-fun mapDefault!5933 () ValueCell!1405)

