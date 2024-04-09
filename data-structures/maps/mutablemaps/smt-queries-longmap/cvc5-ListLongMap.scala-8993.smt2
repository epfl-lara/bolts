; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108754 () Bool)

(assert start!108754)

(declare-fun b_free!28231 () Bool)

(declare-fun b_next!28231 () Bool)

(assert (=> start!108754 (= b_free!28231 (not b_next!28231))))

(declare-fun tp!99810 () Bool)

(declare-fun b_and!46307 () Bool)

(assert (=> start!108754 (= tp!99810 b_and!46307)))

(declare-fun b!1283498 () Bool)

(declare-fun res!852687 () Bool)

(declare-fun e!733266 () Bool)

(assert (=> b!1283498 (=> (not res!852687) (not e!733266))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283498 (= res!852687 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283499 () Bool)

(declare-fun e!733269 () Bool)

(declare-fun e!733268 () Bool)

(declare-fun mapRes!52364 () Bool)

(assert (=> b!1283499 (= e!733269 (and e!733268 mapRes!52364))))

(declare-fun condMapEmpty!52364 () Bool)

(declare-datatypes ((V!50265 0))(
  ( (V!50266 (val!17010 Int)) )
))
(declare-datatypes ((ValueCell!16037 0))(
  ( (ValueCellFull!16037 (v!19610 V!50265)) (EmptyCell!16037) )
))
(declare-datatypes ((array!84761 0))(
  ( (array!84762 (arr!40878 (Array (_ BitVec 32) ValueCell!16037)) (size!41429 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84761)

(declare-fun mapDefault!52364 () ValueCell!16037)

