; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107228 () Bool)

(assert start!107228)

(declare-fun b!1270653 () Bool)

(declare-fun e!724416 () Bool)

(declare-fun e!724417 () Bool)

(declare-fun mapRes!50902 () Bool)

(assert (=> b!1270653 (= e!724416 (and e!724417 mapRes!50902))))

(declare-fun condMapEmpty!50902 () Bool)

(declare-datatypes ((V!49035 0))(
  ( (V!49036 (val!16515 Int)) )
))
(declare-datatypes ((ValueCell!15587 0))(
  ( (ValueCellFull!15587 (v!19150 V!49035)) (EmptyCell!15587) )
))
(declare-datatypes ((array!82985 0))(
  ( (array!82986 (arr!40025 (Array (_ BitVec 32) ValueCell!15587)) (size!40562 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82985)

(declare-fun mapDefault!50902 () ValueCell!15587)

