; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20116 () Bool)

(assert start!20116)

(declare-fun b_free!4763 () Bool)

(declare-fun b_next!4763 () Bool)

(assert (=> start!20116 (= b_free!4763 (not b_next!4763))))

(declare-fun tp!17321 () Bool)

(declare-fun b_and!11527 () Bool)

(assert (=> start!20116 (= tp!17321 b_and!11527)))

(declare-fun mapIsEmpty!7997 () Bool)

(declare-fun mapRes!7997 () Bool)

(assert (=> mapIsEmpty!7997 mapRes!7997))

(declare-fun res!93072 () Bool)

(declare-fun e!129684 () Bool)

(assert (=> start!20116 (=> (not res!93072) (not e!129684))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20116 (= res!93072 (validMask!0 mask!1149))))

(assert (=> start!20116 e!129684))

(declare-datatypes ((V!5805 0))(
  ( (V!5806 (val!2354 Int)) )
))
(declare-datatypes ((ValueCell!1966 0))(
  ( (ValueCellFull!1966 (v!4320 V!5805)) (EmptyCell!1966) )
))
(declare-datatypes ((array!8492 0))(
  ( (array!8493 (arr!3996 (Array (_ BitVec 32) ValueCell!1966)) (size!4321 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8492)

(declare-fun e!129681 () Bool)

(declare-fun array_inv!2599 (array!8492) Bool)

(assert (=> start!20116 (and (array_inv!2599 _values!649) e!129681)))

(assert (=> start!20116 true))

(declare-fun tp_is_empty!4619 () Bool)

(assert (=> start!20116 tp_is_empty!4619))

(declare-datatypes ((array!8494 0))(
  ( (array!8495 (arr!3997 (Array (_ BitVec 32) (_ BitVec 64))) (size!4322 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8494)

(declare-fun array_inv!2600 (array!8494) Bool)

(assert (=> start!20116 (array_inv!2600 _keys!825)))

(assert (=> start!20116 tp!17321))

(declare-fun b!196950 () Bool)

(declare-fun e!129683 () Bool)

(assert (=> b!196950 (= e!129681 (and e!129683 mapRes!7997))))

(declare-fun condMapEmpty!7997 () Bool)

(declare-fun mapDefault!7997 () ValueCell!1966)

