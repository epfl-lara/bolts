; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20104 () Bool)

(assert start!20104)

(declare-fun b_free!4751 () Bool)

(declare-fun b_next!4751 () Bool)

(assert (=> start!20104 (= b_free!4751 (not b_next!4751))))

(declare-fun tp!17284 () Bool)

(declare-fun b_and!11515 () Bool)

(assert (=> start!20104 (= tp!17284 b_and!11515)))

(declare-fun b!196770 () Bool)

(declare-fun e!129595 () Bool)

(declare-fun tp_is_empty!4607 () Bool)

(assert (=> b!196770 (= e!129595 tp_is_empty!4607)))

(declare-fun b!196771 () Bool)

(declare-fun e!129593 () Bool)

(declare-fun e!129592 () Bool)

(declare-fun mapRes!7979 () Bool)

(assert (=> b!196771 (= e!129593 (and e!129592 mapRes!7979))))

(declare-fun condMapEmpty!7979 () Bool)

(declare-datatypes ((V!5789 0))(
  ( (V!5790 (val!2348 Int)) )
))
(declare-datatypes ((ValueCell!1960 0))(
  ( (ValueCellFull!1960 (v!4314 V!5789)) (EmptyCell!1960) )
))
(declare-datatypes ((array!8470 0))(
  ( (array!8471 (arr!3985 (Array (_ BitVec 32) ValueCell!1960)) (size!4310 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8470)

(declare-fun mapDefault!7979 () ValueCell!1960)

