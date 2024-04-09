; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39526 () Bool)

(assert start!39526)

(declare-fun b_free!9785 () Bool)

(declare-fun b_next!9785 () Bool)

(assert (=> start!39526 (= b_free!9785 (not b_next!9785))))

(declare-fun tp!34883 () Bool)

(declare-fun b_and!17459 () Bool)

(assert (=> start!39526 (= tp!34883 b_and!17459)))

(declare-fun res!246610 () Bool)

(declare-fun e!251216 () Bool)

(assert (=> start!39526 (=> (not res!246610) (not e!251216))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25701 0))(
  ( (array!25702 (arr!12297 (Array (_ BitVec 32) (_ BitVec 64))) (size!12649 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25701)

(assert (=> start!39526 (= res!246610 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12649 _keys!709))))))

(assert (=> start!39526 e!251216))

(declare-fun tp_is_empty!10937 () Bool)

(assert (=> start!39526 tp_is_empty!10937))

(assert (=> start!39526 tp!34883))

(assert (=> start!39526 true))

(declare-datatypes ((V!15687 0))(
  ( (V!15688 (val!5513 Int)) )
))
(declare-datatypes ((ValueCell!5125 0))(
  ( (ValueCellFull!5125 (v!7756 V!15687)) (EmptyCell!5125) )
))
(declare-datatypes ((array!25703 0))(
  ( (array!25704 (arr!12298 (Array (_ BitVec 32) ValueCell!5125)) (size!12650 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25703)

(declare-fun e!251220 () Bool)

(declare-fun array_inv!8956 (array!25703) Bool)

(assert (=> start!39526 (and (array_inv!8956 _values!549) e!251220)))

(declare-fun array_inv!8957 (array!25701) Bool)

(assert (=> start!39526 (array_inv!8957 _keys!709)))

(declare-fun b!422214 () Bool)

(declare-fun res!246609 () Bool)

(assert (=> b!422214 (=> (not res!246609) (not e!251216))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422214 (= res!246609 (or (= (select (arr!12297 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12297 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422215 () Bool)

(declare-fun e!251219 () Bool)

(assert (=> b!422215 (= e!251219 tp_is_empty!10937)))

(declare-fun b!422216 () Bool)

(declare-fun res!246617 () Bool)

(assert (=> b!422216 (=> (not res!246617) (not e!251216))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422216 (= res!246617 (validKeyInArray!0 k!794))))

(declare-fun b!422217 () Bool)

(declare-fun res!246614 () Bool)

(declare-fun e!251217 () Bool)

(assert (=> b!422217 (=> (not res!246614) (not e!251217))))

(assert (=> b!422217 (= res!246614 (bvsle from!863 i!563))))

(declare-fun b!422218 () Bool)

(declare-fun mapRes!18027 () Bool)

(assert (=> b!422218 (= e!251220 (and e!251219 mapRes!18027))))

(declare-fun condMapEmpty!18027 () Bool)

(declare-fun mapDefault!18027 () ValueCell!5125)

