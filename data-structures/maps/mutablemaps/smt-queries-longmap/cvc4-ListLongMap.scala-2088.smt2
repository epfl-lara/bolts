; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35708 () Bool)

(assert start!35708)

(declare-fun b!358386 () Bool)

(declare-fun e!219414 () Bool)

(declare-fun e!219416 () Bool)

(declare-fun mapRes!13737 () Bool)

(assert (=> b!358386 (= e!219414 (and e!219416 mapRes!13737))))

(declare-fun condMapEmpty!13737 () Bool)

(declare-datatypes ((V!11847 0))(
  ( (V!11848 (val!4121 Int)) )
))
(declare-datatypes ((ValueCell!3733 0))(
  ( (ValueCellFull!3733 (v!6311 V!11847)) (EmptyCell!3733) )
))
(declare-datatypes ((array!19835 0))(
  ( (array!19836 (arr!9408 (Array (_ BitVec 32) ValueCell!3733)) (size!9760 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19835)

(declare-fun mapDefault!13737 () ValueCell!3733)

