; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35596 () Bool)

(assert start!35596)

(declare-fun b!356686 () Bool)

(declare-fun res!198069 () Bool)

(declare-fun e!218495 () Bool)

(assert (=> b!356686 (=> (not res!198069) (not e!218495))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356686 (= res!198069 (validKeyInArray!0 k!1077))))

(declare-fun b!356688 () Bool)

(declare-fun e!218491 () Bool)

(declare-fun e!218492 () Bool)

(declare-fun mapRes!13569 () Bool)

(assert (=> b!356688 (= e!218491 (and e!218492 mapRes!13569))))

(declare-fun condMapEmpty!13569 () Bool)

(declare-datatypes ((V!11699 0))(
  ( (V!11700 (val!4065 Int)) )
))
(declare-datatypes ((ValueCell!3677 0))(
  ( (ValueCellFull!3677 (v!6255 V!11699)) (EmptyCell!3677) )
))
(declare-datatypes ((array!19619 0))(
  ( (array!19620 (arr!9300 (Array (_ BitVec 32) ValueCell!3677)) (size!9652 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19619)

(declare-fun mapDefault!13569 () ValueCell!3677)

