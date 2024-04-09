; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15166 () Bool)

(assert start!15166)

(declare-fun b!145600 () Bool)

(declare-fun b_free!3073 () Bool)

(declare-fun b_next!3073 () Bool)

(assert (=> b!145600 (= b_free!3073 (not b_next!3073))))

(declare-fun tp!11719 () Bool)

(declare-fun b_and!9085 () Bool)

(assert (=> b!145600 (= tp!11719 b_and!9085)))

(declare-fun b!145602 () Bool)

(declare-fun b_free!3075 () Bool)

(declare-fun b_next!3075 () Bool)

(assert (=> b!145602 (= b_free!3075 (not b_next!3075))))

(declare-fun tp!11720 () Bool)

(declare-fun b_and!9087 () Bool)

(assert (=> b!145602 (= tp!11720 b_and!9087)))

(declare-fun b!145594 () Bool)

(declare-fun e!94869 () Bool)

(declare-fun e!94864 () Bool)

(assert (=> b!145594 (= e!94869 e!94864)))

(declare-fun b!145595 () Bool)

(declare-fun e!94875 () Bool)

(declare-fun tp_is_empty!2953 () Bool)

(assert (=> b!145595 (= e!94875 tp_is_empty!2953)))

(declare-fun b!145596 () Bool)

(declare-fun e!94878 () Bool)

(assert (=> b!145596 (= e!94878 e!94869)))

(declare-fun mapIsEmpty!4927 () Bool)

(declare-fun mapRes!4927 () Bool)

(assert (=> mapIsEmpty!4927 mapRes!4927))

(declare-fun b!145597 () Bool)

(declare-fun e!94874 () Bool)

(declare-fun e!94867 () Bool)

(assert (=> b!145597 (= e!94874 (and e!94867 mapRes!4927))))

(declare-fun condMapEmpty!4927 () Bool)

(declare-datatypes ((V!3585 0))(
  ( (V!3586 (val!1521 Int)) )
))
(declare-datatypes ((array!4948 0))(
  ( (array!4949 (arr!2336 (Array (_ BitVec 32) (_ BitVec 64))) (size!2612 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1133 0))(
  ( (ValueCellFull!1133 (v!3329 V!3585)) (EmptyCell!1133) )
))
(declare-datatypes ((array!4950 0))(
  ( (array!4951 (arr!2337 (Array (_ BitVec 32) ValueCell!1133)) (size!2613 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1174 0))(
  ( (LongMapFixedSize!1175 (defaultEntry!3001 Int) (mask!7371 (_ BitVec 32)) (extraKeys!2746 (_ BitVec 32)) (zeroValue!2846 V!3585) (minValue!2846 V!3585) (_size!636 (_ BitVec 32)) (_keys!4770 array!4948) (_values!2984 array!4950) (_vacant!636 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1174)

(declare-fun mapDefault!4927 () ValueCell!1133)

