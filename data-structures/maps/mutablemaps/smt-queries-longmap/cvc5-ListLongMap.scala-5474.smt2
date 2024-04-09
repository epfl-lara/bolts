; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72656 () Bool)

(assert start!72656)

(declare-fun b!842909 () Bool)

(declare-fun e!470277 () Bool)

(assert (=> b!842909 (= e!470277 false)))

(declare-fun lt!381030 () Bool)

(declare-datatypes ((array!47598 0))(
  ( (array!47599 (arr!22826 (Array (_ BitVec 32) (_ BitVec 64))) (size!23267 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47598)

(declare-datatypes ((List!16292 0))(
  ( (Nil!16289) (Cons!16288 (h!17419 (_ BitVec 64)) (t!22671 List!16292)) )
))
(declare-fun arrayNoDuplicates!0 (array!47598 (_ BitVec 32) List!16292) Bool)

(assert (=> b!842909 (= lt!381030 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16289))))

(declare-fun mapNonEmpty!25118 () Bool)

(declare-fun mapRes!25118 () Bool)

(declare-fun tp!48437 () Bool)

(declare-fun e!470280 () Bool)

(assert (=> mapNonEmpty!25118 (= mapRes!25118 (and tp!48437 e!470280))))

(declare-datatypes ((V!25953 0))(
  ( (V!25954 (val!7887 Int)) )
))
(declare-datatypes ((ValueCell!7400 0))(
  ( (ValueCellFull!7400 (v!10308 V!25953)) (EmptyCell!7400) )
))
(declare-fun mapValue!25118 () ValueCell!7400)

(declare-fun mapRest!25118 () (Array (_ BitVec 32) ValueCell!7400))

(declare-fun mapKey!25118 () (_ BitVec 32))

(declare-datatypes ((array!47600 0))(
  ( (array!47601 (arr!22827 (Array (_ BitVec 32) ValueCell!7400)) (size!23268 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47600)

(assert (=> mapNonEmpty!25118 (= (arr!22827 _values!688) (store mapRest!25118 mapKey!25118 mapValue!25118))))

(declare-fun b!842910 () Bool)

(declare-fun e!470276 () Bool)

(declare-fun tp_is_empty!15679 () Bool)

(assert (=> b!842910 (= e!470276 tp_is_empty!15679)))

(declare-fun b!842911 () Bool)

(declare-fun e!470278 () Bool)

(assert (=> b!842911 (= e!470278 (and e!470276 mapRes!25118))))

(declare-fun condMapEmpty!25118 () Bool)

(declare-fun mapDefault!25118 () ValueCell!7400)

