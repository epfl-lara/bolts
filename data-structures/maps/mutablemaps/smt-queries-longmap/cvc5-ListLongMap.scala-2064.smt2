; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35560 () Bool)

(assert start!35560)

(declare-fun b!356092 () Bool)

(declare-fun e!218223 () Bool)

(declare-fun e!218224 () Bool)

(declare-fun mapRes!13515 () Bool)

(assert (=> b!356092 (= e!218223 (and e!218224 mapRes!13515))))

(declare-fun condMapEmpty!13515 () Bool)

(declare-datatypes ((V!11651 0))(
  ( (V!11652 (val!4047 Int)) )
))
(declare-datatypes ((ValueCell!3659 0))(
  ( (ValueCellFull!3659 (v!6237 V!11651)) (EmptyCell!3659) )
))
(declare-datatypes ((array!19551 0))(
  ( (array!19552 (arr!9266 (Array (_ BitVec 32) ValueCell!3659)) (size!9618 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19551)

(declare-fun mapDefault!13515 () ValueCell!3659)

