; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35602 () Bool)

(assert start!35602)

(declare-fun b!356785 () Bool)

(declare-fun res!198142 () Bool)

(declare-fun e!218540 () Bool)

(assert (=> b!356785 (=> (not res!198142) (not e!218540))))

(declare-datatypes ((array!19629 0))(
  ( (array!19630 (arr!9305 (Array (_ BitVec 32) (_ BitVec 64))) (size!9657 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19629)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356785 (= res!198142 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapIsEmpty!13578 () Bool)

(declare-fun mapRes!13578 () Bool)

(assert (=> mapIsEmpty!13578 mapRes!13578))

(declare-fun b!356786 () Bool)

(declare-fun e!218536 () Bool)

(declare-fun e!218538 () Bool)

(assert (=> b!356786 (= e!218536 (and e!218538 mapRes!13578))))

(declare-fun condMapEmpty!13578 () Bool)

(declare-datatypes ((V!11707 0))(
  ( (V!11708 (val!4068 Int)) )
))
(declare-datatypes ((ValueCell!3680 0))(
  ( (ValueCellFull!3680 (v!6258 V!11707)) (EmptyCell!3680) )
))
(declare-datatypes ((array!19631 0))(
  ( (array!19632 (arr!9306 (Array (_ BitVec 32) ValueCell!3680)) (size!9658 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19631)

(declare-fun mapDefault!13578 () ValueCell!3680)

