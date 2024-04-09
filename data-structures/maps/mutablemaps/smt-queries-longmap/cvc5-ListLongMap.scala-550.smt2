; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14598 () Bool)

(assert start!14598)

(declare-fun b!138225 () Bool)

(declare-fun b_free!2989 () Bool)

(declare-fun b_next!2989 () Bool)

(assert (=> b!138225 (= b_free!2989 (not b_next!2989))))

(declare-fun tp!11427 () Bool)

(declare-fun b_and!8633 () Bool)

(assert (=> b!138225 (= tp!11427 b_and!8633)))

(declare-fun b!138221 () Bool)

(declare-fun b_free!2991 () Bool)

(declare-fun b_next!2991 () Bool)

(assert (=> b!138221 (= b_free!2991 (not b_next!2991))))

(declare-fun tp!11430 () Bool)

(declare-fun b_and!8635 () Bool)

(assert (=> b!138221 (= tp!11430 b_and!8635)))

(declare-fun b!138218 () Bool)

(declare-fun e!90106 () Bool)

(declare-fun e!90097 () Bool)

(declare-fun mapRes!4764 () Bool)

(assert (=> b!138218 (= e!90106 (and e!90097 mapRes!4764))))

(declare-fun condMapEmpty!4764 () Bool)

(declare-datatypes ((V!3529 0))(
  ( (V!3530 (val!1500 Int)) )
))
(declare-datatypes ((array!4852 0))(
  ( (array!4853 (arr!2294 (Array (_ BitVec 32) (_ BitVec 64))) (size!2565 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1112 0))(
  ( (ValueCellFull!1112 (v!3251 V!3529)) (EmptyCell!1112) )
))
(declare-datatypes ((array!4854 0))(
  ( (array!4855 (arr!2295 (Array (_ BitVec 32) ValueCell!1112)) (size!2566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1132 0))(
  ( (LongMapFixedSize!1133 (defaultEntry!2918 Int) (mask!7248 (_ BitVec 32)) (extraKeys!2675 (_ BitVec 32)) (zeroValue!2769 V!3529) (minValue!2769 V!3529) (_size!615 (_ BitVec 32)) (_keys!4675 array!4852) (_values!2901 array!4854) (_vacant!615 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!920 0))(
  ( (Cell!921 (v!3252 LongMapFixedSize!1132)) )
))
(declare-datatypes ((LongMap!920 0))(
  ( (LongMap!921 (underlying!471 Cell!920)) )
))
(declare-fun thiss!992 () LongMap!920)

(declare-fun mapDefault!4764 () ValueCell!1112)

