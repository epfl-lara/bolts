; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35432 () Bool)

(assert start!35432)

(declare-fun b!354399 () Bool)

(declare-fun e!217263 () Bool)

(declare-fun e!217261 () Bool)

(declare-fun mapRes!13323 () Bool)

(assert (=> b!354399 (= e!217263 (and e!217261 mapRes!13323))))

(declare-fun condMapEmpty!13323 () Bool)

(declare-datatypes ((V!11479 0))(
  ( (V!11480 (val!3983 Int)) )
))
(declare-datatypes ((ValueCell!3595 0))(
  ( (ValueCellFull!3595 (v!6173 V!11479)) (EmptyCell!3595) )
))
(declare-datatypes ((array!19305 0))(
  ( (array!19306 (arr!9143 (Array (_ BitVec 32) ValueCell!3595)) (size!9495 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19305)

(declare-fun mapDefault!13323 () ValueCell!3595)

