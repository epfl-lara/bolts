; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83198 () Bool)

(assert start!83198)

(declare-fun b_free!19163 () Bool)

(declare-fun b_next!19163 () Bool)

(assert (=> start!83198 (= b_free!19163 (not b_next!19163))))

(declare-fun tp!66769 () Bool)

(declare-fun b_and!30669 () Bool)

(assert (=> start!83198 (= tp!66769 b_and!30669)))

(declare-fun b!970154 () Bool)

(declare-fun e!546971 () Bool)

(declare-fun e!546969 () Bool)

(declare-fun mapRes!35101 () Bool)

(assert (=> b!970154 (= e!546971 (and e!546969 mapRes!35101))))

(declare-fun condMapEmpty!35101 () Bool)

(declare-datatypes ((V!34397 0))(
  ( (V!34398 (val!11081 Int)) )
))
(declare-datatypes ((ValueCell!10549 0))(
  ( (ValueCellFull!10549 (v!13640 V!34397)) (EmptyCell!10549) )
))
(declare-datatypes ((array!60165 0))(
  ( (array!60166 (arr!28942 (Array (_ BitVec 32) ValueCell!10549)) (size!29422 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60165)

(declare-fun mapDefault!35101 () ValueCell!10549)

