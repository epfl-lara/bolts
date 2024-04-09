; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36572 () Bool)

(assert start!36572)

(declare-fun mapIsEmpty!14196 () Bool)

(declare-fun mapRes!14196 () Bool)

(assert (=> mapIsEmpty!14196 mapRes!14196))

(declare-fun res!204158 () Bool)

(declare-fun e!223484 () Bool)

(assert (=> start!36572 (=> (not res!204158) (not e!223484))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36572 (= res!204158 (validMask!0 mask!970))))

(assert (=> start!36572 e!223484))

(assert (=> start!36572 true))

(declare-datatypes ((V!12355 0))(
  ( (V!12356 (val!4263 Int)) )
))
(declare-datatypes ((ValueCell!3875 0))(
  ( (ValueCellFull!3875 (v!6454 V!12355)) (EmptyCell!3875) )
))
(declare-datatypes ((array!20801 0))(
  ( (array!20802 (arr!9874 (Array (_ BitVec 32) ValueCell!3875)) (size!10226 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20801)

(declare-fun e!223483 () Bool)

(declare-fun array_inv!7306 (array!20801) Bool)

(assert (=> start!36572 (and (array_inv!7306 _values!506) e!223483)))

(declare-datatypes ((array!20803 0))(
  ( (array!20804 (arr!9875 (Array (_ BitVec 32) (_ BitVec 64))) (size!10227 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20803)

(declare-fun array_inv!7307 (array!20803) Bool)

(assert (=> start!36572 (array_inv!7307 _keys!658)))

(declare-fun b!365011 () Bool)

(declare-fun e!223486 () Bool)

(assert (=> b!365011 (= e!223483 (and e!223486 mapRes!14196))))

(declare-fun condMapEmpty!14196 () Bool)

(declare-fun mapDefault!14196 () ValueCell!3875)

