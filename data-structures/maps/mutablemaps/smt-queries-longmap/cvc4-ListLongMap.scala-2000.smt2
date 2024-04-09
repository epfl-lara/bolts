; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34966 () Bool)

(assert start!34966)

(declare-fun b_free!7673 () Bool)

(declare-fun b_next!7673 () Bool)

(assert (=> start!34966 (= b_free!7673 (not b_next!7673))))

(declare-fun tp!26594 () Bool)

(declare-fun b_and!14919 () Bool)

(assert (=> start!34966 (= tp!26594 b_and!14919)))

(declare-fun res!194033 () Bool)

(declare-fun e!214408 () Bool)

(assert (=> start!34966 (=> (not res!194033) (not e!214408))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34966 (= res!194033 (validMask!0 mask!2385))))

(assert (=> start!34966 e!214408))

(assert (=> start!34966 true))

(declare-fun tp_is_empty!7625 () Bool)

(assert (=> start!34966 tp_is_empty!7625))

(assert (=> start!34966 tp!26594))

(declare-datatypes ((V!11143 0))(
  ( (V!11144 (val!3857 Int)) )
))
(declare-datatypes ((ValueCell!3469 0))(
  ( (ValueCellFull!3469 (v!6039 V!11143)) (EmptyCell!3469) )
))
(declare-datatypes ((array!18803 0))(
  ( (array!18804 (arr!8905 (Array (_ BitVec 32) ValueCell!3469)) (size!9257 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18803)

(declare-fun e!214406 () Bool)

(declare-fun array_inv!6560 (array!18803) Bool)

(assert (=> start!34966 (and (array_inv!6560 _values!1525) e!214406)))

(declare-datatypes ((array!18805 0))(
  ( (array!18806 (arr!8906 (Array (_ BitVec 32) (_ BitVec 64))) (size!9258 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18805)

(declare-fun array_inv!6561 (array!18805) Bool)

(assert (=> start!34966 (array_inv!6561 _keys!1895)))

(declare-fun b!349998 () Bool)

(declare-fun e!214404 () Bool)

(declare-datatypes ((SeekEntryResult!3429 0))(
  ( (MissingZero!3429 (index!15895 (_ BitVec 32))) (Found!3429 (index!15896 (_ BitVec 32))) (Intermediate!3429 (undefined!4241 Bool) (index!15897 (_ BitVec 32)) (x!34846 (_ BitVec 32))) (Undefined!3429) (MissingVacant!3429 (index!15898 (_ BitVec 32))) )
))
(declare-fun lt!164421 () SeekEntryResult!3429)

(assert (=> b!349998 (= e!214404 (not (= (select (arr!8906 _keys!1895) (index!15898 lt!164421)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!349999 () Bool)

(declare-fun e!214407 () Bool)

(assert (=> b!349999 (= e!214407 tp_is_empty!7625)))

(declare-fun b!350000 () Bool)

(declare-fun e!214411 () Bool)

(declare-fun e!214413 () Bool)

(assert (=> b!350000 (= e!214411 e!214413)))

(declare-fun c!53300 () Bool)

(assert (=> b!350000 (= c!53300 (is-MissingVacant!3429 lt!164421))))

(declare-fun b!350001 () Bool)

(declare-fun e!214410 () Bool)

(declare-fun mapRes!12906 () Bool)

(assert (=> b!350001 (= e!214406 (and e!214410 mapRes!12906))))

(declare-fun condMapEmpty!12906 () Bool)

(declare-fun mapDefault!12906 () ValueCell!3469)

