; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35578 () Bool)

(assert start!35578)

(declare-fun b!356389 () Bool)

(declare-fun e!218356 () Bool)

(declare-fun e!218359 () Bool)

(declare-fun mapRes!13542 () Bool)

(assert (=> b!356389 (= e!218356 (and e!218359 mapRes!13542))))

(declare-fun condMapEmpty!13542 () Bool)

(declare-datatypes ((V!11675 0))(
  ( (V!11676 (val!4056 Int)) )
))
(declare-datatypes ((ValueCell!3668 0))(
  ( (ValueCellFull!3668 (v!6246 V!11675)) (EmptyCell!3668) )
))
(declare-datatypes ((array!19585 0))(
  ( (array!19586 (arr!9283 (Array (_ BitVec 32) ValueCell!3668)) (size!9635 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19585)

(declare-fun mapDefault!13542 () ValueCell!3668)

