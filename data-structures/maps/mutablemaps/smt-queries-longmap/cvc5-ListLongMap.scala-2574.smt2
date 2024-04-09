; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39270 () Bool)

(assert start!39270)

(declare-fun b_free!9529 () Bool)

(declare-fun b_next!9529 () Bool)

(assert (=> start!39270 (= b_free!9529 (not b_next!9529))))

(declare-fun tp!34116 () Bool)

(declare-fun b_and!16951 () Bool)

(assert (=> start!39270 (= tp!34116 b_and!16951)))

(declare-fun b!414698 () Bool)

(declare-fun res!241252 () Bool)

(declare-fun e!247789 () Bool)

(assert (=> b!414698 (=> (not res!241252) (not e!247789))))

(declare-datatypes ((array!25199 0))(
  ( (array!25200 (arr!12046 (Array (_ BitVec 32) (_ BitVec 64))) (size!12398 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25199)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414698 (= res!241252 (or (= (select (arr!12046 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12046 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414699 () Bool)

(declare-fun res!241258 () Bool)

(assert (=> b!414699 (=> (not res!241258) (not e!247789))))

(assert (=> b!414699 (= res!241258 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12398 _keys!709))))))

(declare-fun b!414700 () Bool)

(declare-fun e!247788 () Bool)

(declare-datatypes ((V!15347 0))(
  ( (V!15348 (val!5385 Int)) )
))
(declare-datatypes ((tuple2!6934 0))(
  ( (tuple2!6935 (_1!3477 (_ BitVec 64)) (_2!3477 V!15347)) )
))
(declare-datatypes ((List!6992 0))(
  ( (Nil!6989) (Cons!6988 (h!7844 tuple2!6934) (t!12194 List!6992)) )
))
(declare-datatypes ((ListLongMap!5861 0))(
  ( (ListLongMap!5862 (toList!2946 List!6992)) )
))
(declare-fun call!28763 () ListLongMap!5861)

(declare-fun call!28762 () ListLongMap!5861)

(assert (=> b!414700 (= e!247788 (= call!28763 call!28762))))

(declare-fun res!241251 () Bool)

(assert (=> start!39270 (=> (not res!241251) (not e!247789))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39270 (= res!241251 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12398 _keys!709))))))

(assert (=> start!39270 e!247789))

(declare-fun tp_is_empty!10681 () Bool)

(assert (=> start!39270 tp_is_empty!10681))

(assert (=> start!39270 tp!34116))

(assert (=> start!39270 true))

(declare-datatypes ((ValueCell!4997 0))(
  ( (ValueCellFull!4997 (v!7628 V!15347)) (EmptyCell!4997) )
))
(declare-datatypes ((array!25201 0))(
  ( (array!25202 (arr!12047 (Array (_ BitVec 32) ValueCell!4997)) (size!12399 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25201)

(declare-fun e!247787 () Bool)

(declare-fun array_inv!8784 (array!25201) Bool)

(assert (=> start!39270 (and (array_inv!8784 _values!549) e!247787)))

(declare-fun array_inv!8785 (array!25199) Bool)

(assert (=> start!39270 (array_inv!8785 _keys!709)))

(declare-fun mapIsEmpty!17643 () Bool)

(declare-fun mapRes!17643 () Bool)

(assert (=> mapIsEmpty!17643 mapRes!17643))

(declare-fun b!414701 () Bool)

(declare-fun e!247786 () Bool)

(assert (=> b!414701 (= e!247787 (and e!247786 mapRes!17643))))

(declare-fun condMapEmpty!17643 () Bool)

(declare-fun mapDefault!17643 () ValueCell!4997)

