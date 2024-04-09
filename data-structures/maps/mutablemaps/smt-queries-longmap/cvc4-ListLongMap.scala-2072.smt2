; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35612 () Bool)

(assert start!35612)

(declare-fun b!356951 () Bool)

(declare-fun res!198262 () Bool)

(declare-fun e!218615 () Bool)

(assert (=> b!356951 (=> (not res!198262) (not e!218615))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356951 (= res!198262 (validKeyInArray!0 k!1077))))

(declare-fun b!356952 () Bool)

(declare-fun res!198258 () Bool)

(assert (=> b!356952 (=> (not res!198258) (not e!218615))))

(declare-datatypes ((array!19649 0))(
  ( (array!19650 (arr!9315 (Array (_ BitVec 32) (_ BitVec 64))) (size!9667 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19649)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356952 (= res!198258 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356953 () Bool)

(declare-fun e!218612 () Bool)

(declare-fun tp_is_empty!8057 () Bool)

(assert (=> b!356953 (= e!218612 tp_is_empty!8057)))

(declare-fun b!356954 () Bool)

(declare-fun e!218611 () Bool)

(declare-fun mapRes!13593 () Bool)

(assert (=> b!356954 (= e!218611 (and e!218612 mapRes!13593))))

(declare-fun condMapEmpty!13593 () Bool)

(declare-datatypes ((V!11719 0))(
  ( (V!11720 (val!4073 Int)) )
))
(declare-datatypes ((ValueCell!3685 0))(
  ( (ValueCellFull!3685 (v!6263 V!11719)) (EmptyCell!3685) )
))
(declare-datatypes ((array!19651 0))(
  ( (array!19652 (arr!9316 (Array (_ BitVec 32) ValueCell!3685)) (size!9668 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19651)

(declare-fun mapDefault!13593 () ValueCell!3685)

