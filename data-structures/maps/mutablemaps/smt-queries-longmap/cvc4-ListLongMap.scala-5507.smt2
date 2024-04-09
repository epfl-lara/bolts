; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72858 () Bool)

(assert start!72858)

(declare-fun mapIsEmpty!25421 () Bool)

(declare-fun mapRes!25421 () Bool)

(assert (=> mapIsEmpty!25421 mapRes!25421))

(declare-fun b!845030 () Bool)

(declare-fun e!471793 () Bool)

(assert (=> b!845030 (= e!471793 false)))

(declare-fun lt!381333 () Bool)

(declare-datatypes ((array!47966 0))(
  ( (array!47967 (arr!23010 (Array (_ BitVec 32) (_ BitVec 64))) (size!23451 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47966)

(declare-datatypes ((List!16361 0))(
  ( (Nil!16358) (Cons!16357 (h!17488 (_ BitVec 64)) (t!22740 List!16361)) )
))
(declare-fun arrayNoDuplicates!0 (array!47966 (_ BitVec 32) List!16361) Bool)

(assert (=> b!845030 (= lt!381333 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16358))))

(declare-fun b!845031 () Bool)

(declare-fun e!471795 () Bool)

(declare-fun tp_is_empty!15881 () Bool)

(assert (=> b!845031 (= e!471795 tp_is_empty!15881)))

(declare-fun b!845032 () Bool)

(declare-fun e!471791 () Bool)

(assert (=> b!845032 (= e!471791 (and e!471795 mapRes!25421))))

(declare-fun condMapEmpty!25421 () Bool)

(declare-datatypes ((V!26221 0))(
  ( (V!26222 (val!7988 Int)) )
))
(declare-datatypes ((ValueCell!7501 0))(
  ( (ValueCellFull!7501 (v!10409 V!26221)) (EmptyCell!7501) )
))
(declare-datatypes ((array!47968 0))(
  ( (array!47969 (arr!23011 (Array (_ BitVec 32) ValueCell!7501)) (size!23452 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47968)

(declare-fun mapDefault!25421 () ValueCell!7501)

