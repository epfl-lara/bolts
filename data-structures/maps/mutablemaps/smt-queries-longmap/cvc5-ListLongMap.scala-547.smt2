; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14580 () Bool)

(assert start!14580)

(declare-fun b!137768 () Bool)

(declare-fun b_free!2953 () Bool)

(declare-fun b_next!2953 () Bool)

(assert (=> b!137768 (= b_free!2953 (not b_next!2953))))

(declare-fun tp!11321 () Bool)

(declare-fun b_and!8561 () Bool)

(assert (=> b!137768 (= tp!11321 b_and!8561)))

(declare-fun b!137773 () Bool)

(declare-fun b_free!2955 () Bool)

(declare-fun b_next!2955 () Bool)

(assert (=> b!137773 (= b_free!2955 (not b_next!2955))))

(declare-fun tp!11319 () Bool)

(declare-fun b_and!8563 () Bool)

(assert (=> b!137773 (= tp!11319 b_and!8563)))

(declare-fun b!137766 () Bool)

(declare-fun e!89695 () Bool)

(declare-fun tp_is_empty!2893 () Bool)

(assert (=> b!137766 (= e!89695 tp_is_empty!2893)))

(declare-fun b!137767 () Bool)

(declare-fun e!89688 () Bool)

(declare-fun e!89694 () Bool)

(declare-fun mapRes!4709 () Bool)

(assert (=> b!137767 (= e!89688 (and e!89694 mapRes!4709))))

(declare-fun condMapEmpty!4710 () Bool)

(declare-datatypes ((V!3505 0))(
  ( (V!3506 (val!1491 Int)) )
))
(declare-datatypes ((array!4816 0))(
  ( (array!4817 (arr!2276 (Array (_ BitVec 32) (_ BitVec 64))) (size!2547 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1103 0))(
  ( (ValueCellFull!1103 (v!3233 V!3505)) (EmptyCell!1103) )
))
(declare-datatypes ((array!4818 0))(
  ( (array!4819 (arr!2277 (Array (_ BitVec 32) ValueCell!1103)) (size!2548 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1114 0))(
  ( (LongMapFixedSize!1115 (defaultEntry!2909 Int) (mask!7233 (_ BitVec 32)) (extraKeys!2666 (_ BitVec 32)) (zeroValue!2760 V!3505) (minValue!2760 V!3505) (_size!606 (_ BitVec 32)) (_keys!4666 array!4816) (_values!2892 array!4818) (_vacant!606 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!902 0))(
  ( (Cell!903 (v!3234 LongMapFixedSize!1114)) )
))
(declare-datatypes ((LongMap!902 0))(
  ( (LongMap!903 (underlying!462 Cell!902)) )
))
(declare-fun thiss!992 () LongMap!902)

(declare-fun mapDefault!4710 () ValueCell!1103)

