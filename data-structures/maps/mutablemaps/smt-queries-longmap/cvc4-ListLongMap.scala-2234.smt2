; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36878 () Bool)

(assert start!36878)

(declare-fun b_free!7997 () Bool)

(declare-fun b_next!7997 () Bool)

(assert (=> start!36878 (= b_free!7997 (not b_next!7997))))

(declare-fun tp!28707 () Bool)

(declare-fun b_and!15257 () Bool)

(assert (=> start!36878 (= tp!28707 b_and!15257)))

(declare-fun mapIsEmpty!14532 () Bool)

(declare-fun mapRes!14532 () Bool)

(assert (=> mapIsEmpty!14532 mapRes!14532))

(declare-fun res!206863 () Bool)

(declare-fun e!225479 () Bool)

(assert (=> start!36878 (=> (not res!206863) (not e!225479))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36878 (= res!206863 (validMask!0 mask!970))))

(assert (=> start!36878 e!225479))

(declare-datatypes ((V!12631 0))(
  ( (V!12632 (val!4367 Int)) )
))
(declare-datatypes ((ValueCell!3979 0))(
  ( (ValueCellFull!3979 (v!6560 V!12631)) (EmptyCell!3979) )
))
(declare-datatypes ((array!21213 0))(
  ( (array!21214 (arr!10072 (Array (_ BitVec 32) ValueCell!3979)) (size!10424 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21213)

(declare-fun e!225477 () Bool)

(declare-fun array_inv!7440 (array!21213) Bool)

(assert (=> start!36878 (and (array_inv!7440 _values!506) e!225477)))

(assert (=> start!36878 tp!28707))

(assert (=> start!36878 true))

(declare-fun tp_is_empty!8645 () Bool)

(assert (=> start!36878 tp_is_empty!8645))

(declare-datatypes ((array!21215 0))(
  ( (array!21216 (arr!10073 (Array (_ BitVec 32) (_ BitVec 64))) (size!10425 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21215)

(declare-fun array_inv!7441 (array!21215) Bool)

(assert (=> start!36878 (array_inv!7441 _keys!658)))

(declare-fun b!368786 () Bool)

(declare-fun res!206861 () Bool)

(assert (=> b!368786 (=> (not res!206861) (not e!225479))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368786 (= res!206861 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368787 () Bool)

(declare-fun e!225480 () Bool)

(assert (=> b!368787 (= e!225477 (and e!225480 mapRes!14532))))

(declare-fun condMapEmpty!14532 () Bool)

(declare-fun mapDefault!14532 () ValueCell!3979)

