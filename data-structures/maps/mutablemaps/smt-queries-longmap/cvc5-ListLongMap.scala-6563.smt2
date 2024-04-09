; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83290 () Bool)

(assert start!83290)

(declare-fun b_free!19255 () Bool)

(declare-fun b_next!19255 () Bool)

(assert (=> start!83290 (= b_free!19255 (not b_next!19255))))

(declare-fun tp!67045 () Bool)

(declare-fun b_and!30761 () Bool)

(assert (=> start!83290 (= tp!67045 b_and!30761)))

(declare-fun b!971479 () Bool)

(declare-fun e!547662 () Bool)

(declare-fun e!547658 () Bool)

(declare-fun mapRes!35239 () Bool)

(assert (=> b!971479 (= e!547662 (and e!547658 mapRes!35239))))

(declare-fun condMapEmpty!35239 () Bool)

(declare-datatypes ((V!34521 0))(
  ( (V!34522 (val!11127 Int)) )
))
(declare-datatypes ((ValueCell!10595 0))(
  ( (ValueCellFull!10595 (v!13686 V!34521)) (EmptyCell!10595) )
))
(declare-datatypes ((array!60339 0))(
  ( (array!60340 (arr!29029 (Array (_ BitVec 32) ValueCell!10595)) (size!29509 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60339)

(declare-fun mapDefault!35239 () ValueCell!10595)

