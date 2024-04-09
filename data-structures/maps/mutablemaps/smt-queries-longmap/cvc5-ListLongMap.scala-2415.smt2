; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38204 () Bool)

(assert start!38204)

(declare-fun b_free!9055 () Bool)

(declare-fun b_next!9055 () Bool)

(assert (=> start!38204 (= b_free!9055 (not b_next!9055))))

(declare-fun tp!31950 () Bool)

(declare-fun b_and!16447 () Bool)

(assert (=> start!38204 (= tp!31950 b_and!16447)))

(declare-fun b!393715 () Bool)

(declare-fun res!225692 () Bool)

(declare-fun e!238363 () Bool)

(assert (=> b!393715 (=> (not res!225692) (not e!238363))))

(declare-datatypes ((array!23337 0))(
  ( (array!23338 (arr!11123 (Array (_ BitVec 32) (_ BitVec 64))) (size!11475 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23337)

(declare-datatypes ((List!6440 0))(
  ( (Nil!6437) (Cons!6436 (h!7292 (_ BitVec 64)) (t!11620 List!6440)) )
))
(declare-fun arrayNoDuplicates!0 (array!23337 (_ BitVec 32) List!6440) Bool)

(assert (=> b!393715 (= res!225692 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6437))))

(declare-fun b!393716 () Bool)

(declare-fun res!225690 () Bool)

(assert (=> b!393716 (=> (not res!225690) (not e!238363))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23337 (_ BitVec 32)) Bool)

(assert (=> b!393716 (= res!225690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393717 () Bool)

(declare-fun e!238359 () Bool)

(declare-fun tp_is_empty!9727 () Bool)

(assert (=> b!393717 (= e!238359 tp_is_empty!9727)))

(declare-fun b!393718 () Bool)

(declare-fun e!238364 () Bool)

(assert (=> b!393718 (= e!238363 e!238364)))

(declare-fun res!225686 () Bool)

(assert (=> b!393718 (=> (not res!225686) (not e!238364))))

(declare-fun lt!186490 () array!23337)

(assert (=> b!393718 (= res!225686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186490 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393718 (= lt!186490 (array!23338 (store (arr!11123 _keys!658) i!548 k!778) (size!11475 _keys!658)))))

(declare-fun b!393719 () Bool)

(declare-fun e!238358 () Bool)

(declare-fun mapRes!16188 () Bool)

(assert (=> b!393719 (= e!238358 (and e!238359 mapRes!16188))))

(declare-fun condMapEmpty!16188 () Bool)

(declare-datatypes ((V!14075 0))(
  ( (V!14076 (val!4908 Int)) )
))
(declare-datatypes ((ValueCell!4520 0))(
  ( (ValueCellFull!4520 (v!7145 V!14075)) (EmptyCell!4520) )
))
(declare-datatypes ((array!23339 0))(
  ( (array!23340 (arr!11124 (Array (_ BitVec 32) ValueCell!4520)) (size!11476 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23339)

(declare-fun mapDefault!16188 () ValueCell!4520)

