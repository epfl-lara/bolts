; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108568 () Bool)

(assert start!108568)

(declare-fun b_free!28079 () Bool)

(declare-fun b_next!28079 () Bool)

(assert (=> start!108568 (= b_free!28079 (not b_next!28079))))

(declare-fun tp!99348 () Bool)

(declare-fun b_and!46149 () Bool)

(assert (=> start!108568 (= tp!99348 b_and!46149)))

(declare-fun b!1280987 () Bool)

(declare-fun e!731933 () Bool)

(declare-fun e!731932 () Bool)

(declare-fun mapRes!52130 () Bool)

(assert (=> b!1280987 (= e!731933 (and e!731932 mapRes!52130))))

(declare-fun condMapEmpty!52130 () Bool)

(declare-datatypes ((V!50061 0))(
  ( (V!50062 (val!16934 Int)) )
))
(declare-datatypes ((ValueCell!15961 0))(
  ( (ValueCellFull!15961 (v!19532 V!50061)) (EmptyCell!15961) )
))
(declare-datatypes ((array!84465 0))(
  ( (array!84466 (arr!40732 (Array (_ BitVec 32) ValueCell!15961)) (size!41283 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84465)

(declare-fun mapDefault!52130 () ValueCell!15961)

