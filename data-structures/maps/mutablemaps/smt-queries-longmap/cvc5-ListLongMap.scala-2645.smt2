; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39696 () Bool)

(assert start!39696)

(declare-fun b_free!9955 () Bool)

(declare-fun b_next!9955 () Bool)

(assert (=> start!39696 (= b_free!9955 (not b_next!9955))))

(declare-fun tp!35394 () Bool)

(declare-fun b_and!17629 () Bool)

(assert (=> start!39696 (= tp!35394 b_and!17629)))

(declare-fun b!426140 () Bool)

(declare-fun res!249778 () Bool)

(declare-fun e!252847 () Bool)

(assert (=> b!426140 (=> (not res!249778) (not e!252847))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426140 (= res!249778 (bvsle from!863 i!563))))

(declare-fun b!426141 () Bool)

(declare-fun res!249770 () Bool)

(declare-fun e!252848 () Bool)

(assert (=> b!426141 (=> (not res!249770) (not e!252848))))

(declare-datatypes ((array!26039 0))(
  ( (array!26040 (arr!12466 (Array (_ BitVec 32) (_ BitVec 64))) (size!12818 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26039)

(declare-datatypes ((List!7343 0))(
  ( (Nil!7340) (Cons!7339 (h!8195 (_ BitVec 64)) (t!12795 List!7343)) )
))
(declare-fun arrayNoDuplicates!0 (array!26039 (_ BitVec 32) List!7343) Bool)

(assert (=> b!426141 (= res!249770 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7340))))

(declare-fun b!426142 () Bool)

(declare-fun e!252852 () Bool)

(declare-fun e!252849 () Bool)

(declare-fun mapRes!18282 () Bool)

(assert (=> b!426142 (= e!252852 (and e!252849 mapRes!18282))))

(declare-fun condMapEmpty!18282 () Bool)

(declare-datatypes ((V!15915 0))(
  ( (V!15916 (val!5598 Int)) )
))
(declare-datatypes ((ValueCell!5210 0))(
  ( (ValueCellFull!5210 (v!7841 V!15915)) (EmptyCell!5210) )
))
(declare-datatypes ((array!26041 0))(
  ( (array!26042 (arr!12467 (Array (_ BitVec 32) ValueCell!5210)) (size!12819 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26041)

(declare-fun mapDefault!18282 () ValueCell!5210)

