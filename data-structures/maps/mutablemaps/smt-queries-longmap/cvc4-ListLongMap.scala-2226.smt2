; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36830 () Bool)

(assert start!36830)

(declare-fun b_free!7949 () Bool)

(declare-fun b_next!7949 () Bool)

(assert (=> start!36830 (= b_free!7949 (not b_next!7949))))

(declare-fun tp!28562 () Bool)

(declare-fun b_and!15209 () Bool)

(assert (=> start!36830 (= tp!28562 b_and!15209)))

(declare-fun b!367850 () Bool)

(declare-fun res!206135 () Bool)

(declare-fun e!225044 () Bool)

(assert (=> b!367850 (=> (not res!206135) (not e!225044))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21119 0))(
  ( (array!21120 (arr!10025 (Array (_ BitVec 32) (_ BitVec 64))) (size!10377 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21119)

(assert (=> b!367850 (= res!206135 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10377 _keys!658))))))

(declare-fun res!206139 () Bool)

(assert (=> start!36830 (=> (not res!206139) (not e!225044))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36830 (= res!206139 (validMask!0 mask!970))))

(assert (=> start!36830 e!225044))

(assert (=> start!36830 true))

(declare-datatypes ((V!12567 0))(
  ( (V!12568 (val!4343 Int)) )
))
(declare-datatypes ((ValueCell!3955 0))(
  ( (ValueCellFull!3955 (v!6536 V!12567)) (EmptyCell!3955) )
))
(declare-datatypes ((array!21121 0))(
  ( (array!21122 (arr!10026 (Array (_ BitVec 32) ValueCell!3955)) (size!10378 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21121)

(declare-fun e!225046 () Bool)

(declare-fun array_inv!7408 (array!21121) Bool)

(assert (=> start!36830 (and (array_inv!7408 _values!506) e!225046)))

(assert (=> start!36830 tp!28562))

(declare-fun tp_is_empty!8597 () Bool)

(assert (=> start!36830 tp_is_empty!8597))

(declare-fun array_inv!7409 (array!21119) Bool)

(assert (=> start!36830 (array_inv!7409 _keys!658)))

(declare-fun b!367851 () Bool)

(declare-fun e!225043 () Bool)

(declare-fun mapRes!14460 () Bool)

(assert (=> b!367851 (= e!225046 (and e!225043 mapRes!14460))))

(declare-fun condMapEmpty!14460 () Bool)

(declare-fun mapDefault!14460 () ValueCell!3955)

