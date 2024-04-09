; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15460 () Bool)

(assert start!15460)

(declare-fun b!153368 () Bool)

(declare-fun b_free!3181 () Bool)

(declare-fun b_next!3181 () Bool)

(assert (=> b!153368 (= b_free!3181 (not b_next!3181))))

(declare-fun tp!12062 () Bool)

(declare-fun b_and!9549 () Bool)

(assert (=> b!153368 (= tp!12062 b_and!9549)))

(declare-fun b!153374 () Bool)

(declare-fun b_free!3183 () Bool)

(declare-fun b_next!3183 () Bool)

(assert (=> b!153374 (= b_free!3183 (not b_next!3183))))

(declare-fun tp!12059 () Bool)

(declare-fun b_and!9551 () Bool)

(assert (=> b!153374 (= tp!12059 b_and!9551)))

(declare-fun b!153364 () Bool)

(declare-fun e!100128 () Bool)

(declare-fun tp_is_empty!3007 () Bool)

(assert (=> b!153364 (= e!100128 tp_is_empty!3007)))

(declare-fun b!153366 () Bool)

(declare-datatypes ((Unit!4882 0))(
  ( (Unit!4883) )
))
(declare-fun e!100133 () Unit!4882)

(declare-fun Unit!4884 () Unit!4882)

(assert (=> b!153366 (= e!100133 Unit!4884)))

(declare-fun b!153367 () Bool)

(declare-fun e!100123 () Bool)

(declare-fun e!100134 () Bool)

(declare-fun mapRes!5107 () Bool)

(assert (=> b!153367 (= e!100123 (and e!100134 mapRes!5107))))

(declare-fun condMapEmpty!5107 () Bool)

(declare-datatypes ((V!3657 0))(
  ( (V!3658 (val!1548 Int)) )
))
(declare-datatypes ((array!5062 0))(
  ( (array!5063 (arr!2390 (Array (_ BitVec 32) (_ BitVec 64))) (size!2667 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1160 0))(
  ( (ValueCellFull!1160 (v!3395 V!3657)) (EmptyCell!1160) )
))
(declare-datatypes ((array!5064 0))(
  ( (array!5065 (arr!2391 (Array (_ BitVec 32) ValueCell!1160)) (size!2668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1228 0))(
  ( (LongMapFixedSize!1229 (defaultEntry!3053 Int) (mask!7451 (_ BitVec 32)) (extraKeys!2794 (_ BitVec 32)) (zeroValue!2896 V!3657) (minValue!2896 V!3657) (_size!663 (_ BitVec 32)) (_keys!4826 array!5062) (_values!3036 array!5064) (_vacant!663 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1006 0))(
  ( (Cell!1007 (v!3396 LongMapFixedSize!1228)) )
))
(declare-datatypes ((LongMap!1006 0))(
  ( (LongMap!1007 (underlying!514 Cell!1006)) )
))
(declare-fun thiss!992 () LongMap!1006)

(declare-fun mapDefault!5108 () ValueCell!1160)

