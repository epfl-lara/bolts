; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!712 () Bool)

(assert start!712)

(declare-fun b_free!145 () Bool)

(declare-fun b_next!145 () Bool)

(assert (=> start!712 (= b_free!145 (not b_next!145))))

(declare-fun tp!659 () Bool)

(declare-fun b_and!287 () Bool)

(assert (=> start!712 (= tp!659 b_and!287)))

(declare-fun b!4852 () Bool)

(declare-fun e!2588 () Bool)

(declare-datatypes ((array!379 0))(
  ( (array!380 (arr!180 (Array (_ BitVec 32) (_ BitVec 64))) (size!242 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!379)

(declare-fun mask!2250 () (_ BitVec 32))

(assert (=> b!4852 (= e!2588 (= (size!242 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))

(declare-fun b!4853 () Bool)

(declare-fun res!5932 () Bool)

(declare-fun e!2593 () Bool)

(assert (=> b!4853 (=> (not res!5932) (not e!2593))))

(declare-datatypes ((V!475 0))(
  ( (V!476 (val!117 Int)) )
))
(declare-datatypes ((ValueCell!95 0))(
  ( (ValueCellFull!95 (v!1206 V!475)) (EmptyCell!95) )
))
(declare-datatypes ((array!381 0))(
  ( (array!382 (arr!181 (Array (_ BitVec 32) ValueCell!95)) (size!243 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!381)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4853 (= res!5932 (and (= (size!243 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!242 _keys!1806) (size!243 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4854 () Bool)

(declare-fun e!2594 () Bool)

(declare-fun e!2590 () Bool)

(declare-fun mapRes!299 () Bool)

(assert (=> b!4854 (= e!2594 (and e!2590 mapRes!299))))

(declare-fun condMapEmpty!299 () Bool)

(declare-fun mapDefault!299 () ValueCell!95)

