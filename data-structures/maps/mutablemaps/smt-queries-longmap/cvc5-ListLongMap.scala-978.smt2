; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21158 () Bool)

(assert start!21158)

(declare-fun b_free!5617 () Bool)

(declare-fun b_next!5617 () Bool)

(assert (=> start!21158 (= b_free!5617 (not b_next!5617))))

(declare-fun tp!19918 () Bool)

(declare-fun b_and!12489 () Bool)

(assert (=> start!21158 (= tp!19918 b_and!12489)))

(declare-fun mapIsEmpty!9314 () Bool)

(declare-fun mapRes!9314 () Bool)

(assert (=> mapIsEmpty!9314 mapRes!9314))

(declare-fun b!212839 () Bool)

(declare-fun e!138471 () Bool)

(declare-fun e!138470 () Bool)

(assert (=> b!212839 (= e!138471 (and e!138470 mapRes!9314))))

(declare-fun condMapEmpty!9314 () Bool)

(declare-datatypes ((V!6953 0))(
  ( (V!6954 (val!2784 Int)) )
))
(declare-datatypes ((ValueCell!2396 0))(
  ( (ValueCellFull!2396 (v!4786 V!6953)) (EmptyCell!2396) )
))
(declare-datatypes ((array!10162 0))(
  ( (array!10163 (arr!4822 (Array (_ BitVec 32) ValueCell!2396)) (size!5147 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10162)

(declare-fun mapDefault!9314 () ValueCell!2396)

