; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133630 () Bool)

(assert start!133630)

(declare-fun b_free!32015 () Bool)

(declare-fun b_next!32015 () Bool)

(assert (=> start!133630 (= b_free!32015 (not b_next!32015))))

(declare-fun tp!113169 () Bool)

(declare-fun b_and!51551 () Bool)

(assert (=> start!133630 (= tp!113169 b_and!51551)))

(declare-fun b!1561876 () Bool)

(declare-fun e!870398 () Bool)

(declare-fun e!870399 () Bool)

(declare-fun mapRes!59397 () Bool)

(assert (=> b!1561876 (= e!870398 (and e!870399 mapRes!59397))))

(declare-fun condMapEmpty!59397 () Bool)

(declare-datatypes ((V!59781 0))(
  ( (V!59782 (val!19424 Int)) )
))
(declare-datatypes ((ValueCell!18310 0))(
  ( (ValueCellFull!18310 (v!22173 V!59781)) (EmptyCell!18310) )
))
(declare-datatypes ((array!104033 0))(
  ( (array!104034 (arr!50204 (Array (_ BitVec 32) ValueCell!18310)) (size!50755 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104033)

(declare-fun mapDefault!59397 () ValueCell!18310)

