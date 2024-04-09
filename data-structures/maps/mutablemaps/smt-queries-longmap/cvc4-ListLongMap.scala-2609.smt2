; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39484 () Bool)

(assert start!39484)

(declare-fun b_free!9743 () Bool)

(declare-fun b_next!9743 () Bool)

(assert (=> start!39484 (= b_free!9743 (not b_next!9743))))

(declare-fun tp!34757 () Bool)

(declare-fun b_and!17379 () Bool)

(assert (=> start!39484 (= tp!34757 b_and!17379)))

(declare-fun b!421011 () Bool)

(declare-fun res!245742 () Bool)

(declare-fun e!250678 () Bool)

(assert (=> b!421011 (=> (not res!245742) (not e!250678))))

(declare-datatypes ((array!25617 0))(
  ( (array!25618 (arr!12255 (Array (_ BitVec 32) (_ BitVec 64))) (size!12607 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25617)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421011 (= res!245742 (or (= (select (arr!12255 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12255 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421012 () Bool)

(declare-fun e!250673 () Bool)

(declare-fun tp_is_empty!10895 () Bool)

(assert (=> b!421012 (= e!250673 tp_is_empty!10895)))

(declare-fun res!245751 () Bool)

(assert (=> start!39484 (=> (not res!245751) (not e!250678))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39484 (= res!245751 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12607 _keys!709))))))

(assert (=> start!39484 e!250678))

(assert (=> start!39484 tp_is_empty!10895))

(assert (=> start!39484 tp!34757))

(assert (=> start!39484 true))

(declare-datatypes ((V!15631 0))(
  ( (V!15632 (val!5492 Int)) )
))
(declare-datatypes ((ValueCell!5104 0))(
  ( (ValueCellFull!5104 (v!7735 V!15631)) (EmptyCell!5104) )
))
(declare-datatypes ((array!25619 0))(
  ( (array!25620 (arr!12256 (Array (_ BitVec 32) ValueCell!5104)) (size!12608 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25619)

(declare-fun e!250675 () Bool)

(declare-fun array_inv!8928 (array!25619) Bool)

(assert (=> start!39484 (and (array_inv!8928 _values!549) e!250675)))

(declare-fun array_inv!8929 (array!25617) Bool)

(assert (=> start!39484 (array_inv!8929 _keys!709)))

(declare-fun b!421013 () Bool)

(declare-fun res!245741 () Bool)

(assert (=> b!421013 (=> (not res!245741) (not e!250678))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421013 (= res!245741 (validKeyInArray!0 k!794))))

(declare-fun b!421014 () Bool)

(declare-fun e!250679 () Bool)

(declare-fun mapRes!17964 () Bool)

(assert (=> b!421014 (= e!250675 (and e!250679 mapRes!17964))))

(declare-fun condMapEmpty!17964 () Bool)

(declare-fun mapDefault!17964 () ValueCell!5104)

