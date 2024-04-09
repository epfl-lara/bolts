; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72620 () Bool)

(assert start!72620)

(declare-fun b!842531 () Bool)

(declare-fun e!470009 () Bool)

(declare-fun tp_is_empty!15643 () Bool)

(assert (=> b!842531 (= e!470009 tp_is_empty!15643)))

(declare-fun b!842532 () Bool)

(declare-fun res!572739 () Bool)

(declare-fun e!470008 () Bool)

(assert (=> b!842532 (=> (not res!572739) (not e!470008))))

(declare-datatypes ((array!47528 0))(
  ( (array!47529 (arr!22791 (Array (_ BitVec 32) (_ BitVec 64))) (size!23232 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47528)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47528 (_ BitVec 32)) Bool)

(assert (=> b!842532 (= res!572739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842533 () Bool)

(declare-fun e!470006 () Bool)

(declare-fun e!470010 () Bool)

(declare-fun mapRes!25064 () Bool)

(assert (=> b!842533 (= e!470006 (and e!470010 mapRes!25064))))

(declare-fun condMapEmpty!25064 () Bool)

(declare-datatypes ((V!25905 0))(
  ( (V!25906 (val!7869 Int)) )
))
(declare-datatypes ((ValueCell!7382 0))(
  ( (ValueCellFull!7382 (v!10290 V!25905)) (EmptyCell!7382) )
))
(declare-datatypes ((array!47530 0))(
  ( (array!47531 (arr!22792 (Array (_ BitVec 32) ValueCell!7382)) (size!23233 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47530)

(declare-fun mapDefault!25064 () ValueCell!7382)

