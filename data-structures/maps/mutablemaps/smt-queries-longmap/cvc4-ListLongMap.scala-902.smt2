; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20524 () Bool)

(assert start!20524)

(declare-fun b_free!5171 () Bool)

(declare-fun b_next!5171 () Bool)

(assert (=> start!20524 (= b_free!5171 (not b_next!5171))))

(declare-fun tp!18544 () Bool)

(declare-fun b_and!11935 () Bool)

(assert (=> start!20524 (= tp!18544 b_and!11935)))

(declare-fun b!203671 () Bool)

(declare-fun res!97963 () Bool)

(declare-fun e!133330 () Bool)

(assert (=> b!203671 (=> (not res!97963) (not e!133330))))

(declare-datatypes ((array!9276 0))(
  ( (array!9277 (arr!4388 (Array (_ BitVec 32) (_ BitVec 64))) (size!4713 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9276)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6349 0))(
  ( (V!6350 (val!2558 Int)) )
))
(declare-datatypes ((ValueCell!2170 0))(
  ( (ValueCellFull!2170 (v!4524 V!6349)) (EmptyCell!2170) )
))
(declare-datatypes ((array!9278 0))(
  ( (array!9279 (arr!4389 (Array (_ BitVec 32) ValueCell!2170)) (size!4714 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9278)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203671 (= res!97963 (and (= (size!4714 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4713 _keys!825) (size!4714 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203672 () Bool)

(declare-fun e!133325 () Bool)

(declare-fun e!133324 () Bool)

(declare-fun mapRes!8609 () Bool)

(assert (=> b!203672 (= e!133325 (and e!133324 mapRes!8609))))

(declare-fun condMapEmpty!8609 () Bool)

(declare-fun mapDefault!8609 () ValueCell!2170)

