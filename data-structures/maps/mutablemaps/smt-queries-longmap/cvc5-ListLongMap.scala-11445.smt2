; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133500 () Bool)

(assert start!133500)

(declare-fun b!1560251 () Bool)

(declare-fun e!869417 () Bool)

(declare-fun e!869416 () Bool)

(declare-fun mapRes!59202 () Bool)

(assert (=> b!1560251 (= e!869417 (and e!869416 mapRes!59202))))

(declare-fun condMapEmpty!59202 () Bool)

(declare-datatypes ((V!59609 0))(
  ( (V!59610 (val!19359 Int)) )
))
(declare-datatypes ((ValueCell!18245 0))(
  ( (ValueCellFull!18245 (v!22108 V!59609)) (EmptyCell!18245) )
))
(declare-datatypes ((array!103779 0))(
  ( (array!103780 (arr!50077 (Array (_ BitVec 32) ValueCell!18245)) (size!50628 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103779)

(declare-fun mapDefault!59202 () ValueCell!18245)

