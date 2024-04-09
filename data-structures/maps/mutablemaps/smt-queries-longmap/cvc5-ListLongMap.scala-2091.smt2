; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35722 () Bool)

(assert start!35722)

(declare-fun b!358512 () Bool)

(declare-fun e!219519 () Bool)

(declare-fun e!219517 () Bool)

(declare-fun mapRes!13758 () Bool)

(assert (=> b!358512 (= e!219519 (and e!219517 mapRes!13758))))

(declare-fun condMapEmpty!13758 () Bool)

(declare-datatypes ((V!11867 0))(
  ( (V!11868 (val!4128 Int)) )
))
(declare-datatypes ((ValueCell!3740 0))(
  ( (ValueCellFull!3740 (v!6318 V!11867)) (EmptyCell!3740) )
))
(declare-datatypes ((array!19861 0))(
  ( (array!19862 (arr!9421 (Array (_ BitVec 32) ValueCell!3740)) (size!9773 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19861)

(declare-fun mapDefault!13758 () ValueCell!3740)

