; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84150 () Bool)

(assert start!84150)

(declare-fun b!983440 () Bool)

(declare-fun e!554438 () Bool)

(declare-fun e!554436 () Bool)

(declare-fun mapRes!36416 () Bool)

(assert (=> b!983440 (= e!554438 (and e!554436 mapRes!36416))))

(declare-fun condMapEmpty!36416 () Bool)

(declare-datatypes ((V!35549 0))(
  ( (V!35550 (val!11513 Int)) )
))
(declare-datatypes ((ValueCell!10981 0))(
  ( (ValueCellFull!10981 (v!14075 V!35549)) (EmptyCell!10981) )
))
(declare-datatypes ((array!61823 0))(
  ( (array!61824 (arr!29765 (Array (_ BitVec 32) ValueCell!10981)) (size!30245 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61823)

(declare-fun mapDefault!36416 () ValueCell!10981)

