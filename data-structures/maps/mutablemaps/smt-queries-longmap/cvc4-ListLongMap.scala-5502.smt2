; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72828 () Bool)

(assert start!72828)

(declare-fun b!844715 () Bool)

(declare-fun e!471569 () Bool)

(declare-fun tp_is_empty!15851 () Bool)

(assert (=> b!844715 (= e!471569 tp_is_empty!15851)))

(declare-fun b!844716 () Bool)

(declare-fun e!471570 () Bool)

(declare-fun e!471567 () Bool)

(declare-fun mapRes!25376 () Bool)

(assert (=> b!844716 (= e!471570 (and e!471567 mapRes!25376))))

(declare-fun condMapEmpty!25376 () Bool)

(declare-datatypes ((V!26181 0))(
  ( (V!26182 (val!7973 Int)) )
))
(declare-datatypes ((ValueCell!7486 0))(
  ( (ValueCellFull!7486 (v!10394 V!26181)) (EmptyCell!7486) )
))
(declare-datatypes ((array!47916 0))(
  ( (array!47917 (arr!22985 (Array (_ BitVec 32) ValueCell!7486)) (size!23426 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47916)

(declare-fun mapDefault!25376 () ValueCell!7486)

