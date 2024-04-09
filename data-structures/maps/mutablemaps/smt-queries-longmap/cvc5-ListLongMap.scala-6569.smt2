; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83326 () Bool)

(assert start!83326)

(declare-fun b_free!19291 () Bool)

(declare-fun b_next!19291 () Bool)

(assert (=> start!83326 (= b_free!19291 (not b_next!19291))))

(declare-fun tp!67153 () Bool)

(declare-fun b_and!30821 () Bool)

(assert (=> start!83326 (= tp!67153 b_and!30821)))

(declare-fun b!972081 () Bool)

(declare-fun e!547967 () Bool)

(declare-fun e!547966 () Bool)

(declare-fun mapRes!35293 () Bool)

(assert (=> b!972081 (= e!547967 (and e!547966 mapRes!35293))))

(declare-fun condMapEmpty!35293 () Bool)

(declare-datatypes ((V!34569 0))(
  ( (V!34570 (val!11145 Int)) )
))
(declare-datatypes ((ValueCell!10613 0))(
  ( (ValueCellFull!10613 (v!13704 V!34569)) (EmptyCell!10613) )
))
(declare-datatypes ((array!60409 0))(
  ( (array!60410 (arr!29064 (Array (_ BitVec 32) ValueCell!10613)) (size!29544 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60409)

(declare-fun mapDefault!35293 () ValueCell!10613)

