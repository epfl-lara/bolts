; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133726 () Bool)

(assert start!133726)

(declare-fun b!1562999 () Bool)

(declare-fun e!871117 () Bool)

(declare-fun e!871119 () Bool)

(declare-fun mapRes!59541 () Bool)

(assert (=> b!1562999 (= e!871117 (and e!871119 mapRes!59541))))

(declare-fun condMapEmpty!59541 () Bool)

(declare-datatypes ((V!59909 0))(
  ( (V!59910 (val!19472 Int)) )
))
(declare-datatypes ((ValueCell!18358 0))(
  ( (ValueCellFull!18358 (v!22221 V!59909)) (EmptyCell!18358) )
))
(declare-datatypes ((array!104217 0))(
  ( (array!104218 (arr!50296 (Array (_ BitVec 32) ValueCell!18358)) (size!50847 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104217)

(declare-fun mapDefault!59541 () ValueCell!18358)

