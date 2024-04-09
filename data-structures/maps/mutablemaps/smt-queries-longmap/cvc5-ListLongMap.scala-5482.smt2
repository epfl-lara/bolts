; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72704 () Bool)

(assert start!72704)

(declare-fun b!843413 () Bool)

(declare-fun e!470640 () Bool)

(declare-fun tp_is_empty!15727 () Bool)

(assert (=> b!843413 (= e!470640 tp_is_empty!15727)))

(declare-fun b!843414 () Bool)

(declare-fun e!470636 () Bool)

(assert (=> b!843414 (= e!470636 false)))

(declare-fun lt!381102 () Bool)

(declare-datatypes ((array!47684 0))(
  ( (array!47685 (arr!22869 (Array (_ BitVec 32) (_ BitVec 64))) (size!23310 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47684)

(declare-datatypes ((List!16308 0))(
  ( (Nil!16305) (Cons!16304 (h!17435 (_ BitVec 64)) (t!22687 List!16308)) )
))
(declare-fun arrayNoDuplicates!0 (array!47684 (_ BitVec 32) List!16308) Bool)

(assert (=> b!843414 (= lt!381102 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16305))))

(declare-fun b!843415 () Bool)

(declare-fun e!470639 () Bool)

(declare-fun e!470637 () Bool)

(declare-fun mapRes!25190 () Bool)

(assert (=> b!843415 (= e!470639 (and e!470637 mapRes!25190))))

(declare-fun condMapEmpty!25190 () Bool)

(declare-datatypes ((V!26017 0))(
  ( (V!26018 (val!7911 Int)) )
))
(declare-datatypes ((ValueCell!7424 0))(
  ( (ValueCellFull!7424 (v!10332 V!26017)) (EmptyCell!7424) )
))
(declare-datatypes ((array!47686 0))(
  ( (array!47687 (arr!22870 (Array (_ BitVec 32) ValueCell!7424)) (size!23311 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47686)

(declare-fun mapDefault!25190 () ValueCell!7424)

