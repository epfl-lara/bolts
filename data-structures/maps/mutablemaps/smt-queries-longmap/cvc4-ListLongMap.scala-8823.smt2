; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107202 () Bool)

(assert start!107202)

(declare-fun b!1270419 () Bool)

(declare-fun e!724219 () Bool)

(declare-fun e!724220 () Bool)

(declare-fun mapRes!50863 () Bool)

(assert (=> b!1270419 (= e!724219 (and e!724220 mapRes!50863))))

(declare-fun condMapEmpty!50863 () Bool)

(declare-datatypes ((V!48999 0))(
  ( (V!49000 (val!16502 Int)) )
))
(declare-datatypes ((ValueCell!15574 0))(
  ( (ValueCellFull!15574 (v!19137 V!48999)) (EmptyCell!15574) )
))
(declare-datatypes ((array!82939 0))(
  ( (array!82940 (arr!40002 (Array (_ BitVec 32) ValueCell!15574)) (size!40539 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82939)

(declare-fun mapDefault!50863 () ValueCell!15574)

