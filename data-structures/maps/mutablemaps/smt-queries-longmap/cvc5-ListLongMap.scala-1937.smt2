; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34324 () Bool)

(assert start!34324)

(declare-fun b_free!7291 () Bool)

(declare-fun b_next!7291 () Bool)

(assert (=> start!34324 (= b_free!7291 (not b_next!7291))))

(declare-fun tp!25412 () Bool)

(declare-fun b_and!14513 () Bool)

(assert (=> start!34324 (= tp!25412 b_and!14513)))

(declare-fun b!342276 () Bool)

(declare-fun e!209907 () Bool)

(declare-fun tp_is_empty!7243 () Bool)

(assert (=> b!342276 (= e!209907 tp_is_empty!7243)))

(declare-fun b!342278 () Bool)

(declare-fun res!189269 () Bool)

(declare-fun e!209906 () Bool)

(assert (=> b!342278 (=> (not res!189269) (not e!209906))))

(declare-datatypes ((array!18053 0))(
  ( (array!18054 (arr!8542 (Array (_ BitVec 32) (_ BitVec 64))) (size!8894 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18053)

(declare-datatypes ((List!4943 0))(
  ( (Nil!4940) (Cons!4939 (h!5795 (_ BitVec 64)) (t!10063 List!4943)) )
))
(declare-fun arrayNoDuplicates!0 (array!18053 (_ BitVec 32) List!4943) Bool)

(assert (=> b!342278 (= res!189269 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4940))))

(declare-fun b!342279 () Bool)

(declare-fun e!209904 () Bool)

(assert (=> b!342279 (= e!209904 tp_is_empty!7243)))

(declare-fun b!342280 () Bool)

(declare-fun res!189268 () Bool)

(assert (=> b!342280 (=> (not res!189268) (not e!209906))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18053 (_ BitVec 32)) Bool)

(assert (=> b!342280 (= res!189268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342281 () Bool)

(declare-fun e!209909 () Bool)

(declare-fun mapRes!12297 () Bool)

(assert (=> b!342281 (= e!209909 (and e!209907 mapRes!12297))))

(declare-fun condMapEmpty!12297 () Bool)

(declare-datatypes ((V!10635 0))(
  ( (V!10636 (val!3666 Int)) )
))
(declare-datatypes ((ValueCell!3278 0))(
  ( (ValueCellFull!3278 (v!5836 V!10635)) (EmptyCell!3278) )
))
(declare-datatypes ((array!18055 0))(
  ( (array!18056 (arr!8543 (Array (_ BitVec 32) ValueCell!3278)) (size!8895 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18055)

(declare-fun mapDefault!12297 () ValueCell!3278)

