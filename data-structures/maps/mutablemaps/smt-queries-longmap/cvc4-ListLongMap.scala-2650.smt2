; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39730 () Bool)

(assert start!39730)

(declare-fun b_free!9989 () Bool)

(declare-fun b_next!9989 () Bool)

(assert (=> start!39730 (= b_free!9989 (not b_next!9989))))

(declare-fun tp!35495 () Bool)

(declare-fun b_and!17663 () Bool)

(assert (=> start!39730 (= tp!35495 b_and!17663)))

(declare-fun b!426956 () Bool)

(declare-fun e!253209 () Bool)

(declare-fun tp_is_empty!11141 () Bool)

(assert (=> b!426956 (= e!253209 tp_is_empty!11141)))

(declare-fun b!426957 () Bool)

(declare-fun res!250439 () Bool)

(declare-fun e!253205 () Bool)

(assert (=> b!426957 (=> (not res!250439) (not e!253205))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26101 0))(
  ( (array!26102 (arr!12497 (Array (_ BitVec 32) (_ BitVec 64))) (size!12849 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26101)

(assert (=> b!426957 (= res!250439 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12849 _keys!709))))))

(declare-fun b!426958 () Bool)

(declare-fun res!250441 () Bool)

(assert (=> b!426958 (=> (not res!250441) (not e!253205))))

(declare-datatypes ((List!7366 0))(
  ( (Nil!7363) (Cons!7362 (h!8218 (_ BitVec 64)) (t!12818 List!7366)) )
))
(declare-fun arrayNoDuplicates!0 (array!26101 (_ BitVec 32) List!7366) Bool)

(assert (=> b!426958 (= res!250441 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7363))))

(declare-fun mapIsEmpty!18333 () Bool)

(declare-fun mapRes!18333 () Bool)

(assert (=> mapIsEmpty!18333 mapRes!18333))

(declare-fun b!426959 () Bool)

(declare-fun res!250433 () Bool)

(declare-fun e!253210 () Bool)

(assert (=> b!426959 (=> (not res!250433) (not e!253210))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!426959 (= res!250433 (bvsle from!863 i!563))))

(declare-fun b!426960 () Bool)

(declare-fun e!253208 () Bool)

(declare-fun e!253207 () Bool)

(assert (=> b!426960 (= e!253208 (and e!253207 mapRes!18333))))

(declare-fun condMapEmpty!18333 () Bool)

(declare-datatypes ((V!15959 0))(
  ( (V!15960 (val!5615 Int)) )
))
(declare-datatypes ((ValueCell!5227 0))(
  ( (ValueCellFull!5227 (v!7858 V!15959)) (EmptyCell!5227) )
))
(declare-datatypes ((array!26103 0))(
  ( (array!26104 (arr!12498 (Array (_ BitVec 32) ValueCell!5227)) (size!12850 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26103)

(declare-fun mapDefault!18333 () ValueCell!5227)

