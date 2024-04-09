; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38838 () Bool)

(assert start!38838)

(declare-fun b!405182 () Bool)

(declare-fun e!243641 () Bool)

(declare-fun e!243638 () Bool)

(declare-fun mapRes!16995 () Bool)

(assert (=> b!405182 (= e!243641 (and e!243638 mapRes!16995))))

(declare-fun condMapEmpty!16995 () Bool)

(declare-datatypes ((V!14771 0))(
  ( (V!14772 (val!5169 Int)) )
))
(declare-datatypes ((ValueCell!4781 0))(
  ( (ValueCellFull!4781 (v!7412 V!14771)) (EmptyCell!4781) )
))
(declare-datatypes ((array!24359 0))(
  ( (array!24360 (arr!11626 (Array (_ BitVec 32) ValueCell!4781)) (size!11978 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24359)

(declare-fun mapDefault!16995 () ValueCell!4781)

