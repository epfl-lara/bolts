; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34234 () Bool)

(assert start!34234)

(declare-fun b_free!7249 () Bool)

(declare-fun b_next!7249 () Bool)

(assert (=> start!34234 (= b_free!7249 (not b_next!7249))))

(declare-fun tp!25280 () Bool)

(declare-fun b_and!14467 () Bool)

(assert (=> start!34234 (= tp!25280 b_and!14467)))

(declare-fun res!188718 () Bool)

(declare-fun e!209290 () Bool)

(assert (=> start!34234 (=> (not res!188718) (not e!209290))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34234 (= res!188718 (validMask!0 mask!2385))))

(assert (=> start!34234 e!209290))

(assert (=> start!34234 true))

(declare-fun tp_is_empty!7201 () Bool)

(assert (=> start!34234 tp_is_empty!7201))

(assert (=> start!34234 tp!25280))

(declare-datatypes ((V!10579 0))(
  ( (V!10580 (val!3645 Int)) )
))
(declare-datatypes ((ValueCell!3257 0))(
  ( (ValueCellFull!3257 (v!5813 V!10579)) (EmptyCell!3257) )
))
(declare-datatypes ((array!17967 0))(
  ( (array!17968 (arr!8501 (Array (_ BitVec 32) ValueCell!3257)) (size!8853 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17967)

(declare-fun e!209295 () Bool)

(declare-fun array_inv!6288 (array!17967) Bool)

(assert (=> start!34234 (and (array_inv!6288 _values!1525) e!209295)))

(declare-datatypes ((array!17969 0))(
  ( (array!17970 (arr!8502 (Array (_ BitVec 32) (_ BitVec 64))) (size!8854 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17969)

(declare-fun array_inv!6289 (array!17969) Bool)

(assert (=> start!34234 (array_inv!6289 _keys!1895)))

(declare-fun b!341249 () Bool)

(declare-fun e!209292 () Bool)

(declare-fun mapRes!12228 () Bool)

(assert (=> b!341249 (= e!209295 (and e!209292 mapRes!12228))))

(declare-fun condMapEmpty!12228 () Bool)

(declare-fun mapDefault!12228 () ValueCell!3257)

