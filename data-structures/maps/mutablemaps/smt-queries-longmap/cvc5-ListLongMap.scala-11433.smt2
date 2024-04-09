; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133406 () Bool)

(assert start!133406)

(declare-fun b!1559239 () Bool)

(declare-fun e!868818 () Bool)

(declare-fun e!868814 () Bool)

(declare-fun mapRes!59088 () Bool)

(assert (=> b!1559239 (= e!868818 (and e!868814 mapRes!59088))))

(declare-fun condMapEmpty!59088 () Bool)

(declare-datatypes ((V!59513 0))(
  ( (V!59514 (val!19323 Int)) )
))
(declare-datatypes ((ValueCell!18209 0))(
  ( (ValueCellFull!18209 (v!22071 V!59513)) (EmptyCell!18209) )
))
(declare-datatypes ((array!103637 0))(
  ( (array!103638 (arr!50008 (Array (_ BitVec 32) ValueCell!18209)) (size!50559 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103637)

(declare-fun mapDefault!59088 () ValueCell!18209)

