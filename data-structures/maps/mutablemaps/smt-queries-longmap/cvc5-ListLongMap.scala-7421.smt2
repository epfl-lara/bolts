; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94398 () Bool)

(assert start!94398)

(declare-fun b_free!21703 () Bool)

(declare-fun b_next!21703 () Bool)

(assert (=> start!94398 (= b_free!21703 (not b_next!21703))))

(declare-fun tp!76554 () Bool)

(declare-fun b_and!34505 () Bool)

(assert (=> start!94398 (= tp!76554 b_and!34505)))

(declare-fun res!712168 () Bool)

(declare-fun e!608554 () Bool)

(assert (=> start!94398 (=> (not res!712168) (not e!608554))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94398 (= res!712168 (validMask!0 mask!1515))))

(assert (=> start!94398 e!608554))

(assert (=> start!94398 true))

(declare-fun tp_is_empty!25513 () Bool)

(assert (=> start!94398 tp_is_empty!25513))

(declare-datatypes ((V!39153 0))(
  ( (V!39154 (val!12807 Int)) )
))
(declare-datatypes ((ValueCell!12053 0))(
  ( (ValueCellFull!12053 (v!15422 V!39153)) (EmptyCell!12053) )
))
(declare-datatypes ((array!67984 0))(
  ( (array!67985 (arr!32689 (Array (_ BitVec 32) ValueCell!12053)) (size!33226 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67984)

(declare-fun e!608555 () Bool)

(declare-fun array_inv!25146 (array!67984) Bool)

(assert (=> start!94398 (and (array_inv!25146 _values!955) e!608555)))

(assert (=> start!94398 tp!76554))

(declare-datatypes ((array!67986 0))(
  ( (array!67987 (arr!32690 (Array (_ BitVec 32) (_ BitVec 64))) (size!33227 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67986)

(declare-fun array_inv!25147 (array!67986) Bool)

(assert (=> start!94398 (array_inv!25147 _keys!1163)))

(declare-fun mapIsEmpty!39961 () Bool)

(declare-fun mapRes!39961 () Bool)

(assert (=> mapIsEmpty!39961 mapRes!39961))

(declare-fun b!1066987 () Bool)

(declare-fun e!608556 () Bool)

(assert (=> b!1066987 (= e!608555 (and e!608556 mapRes!39961))))

(declare-fun condMapEmpty!39961 () Bool)

(declare-fun mapDefault!39961 () ValueCell!12053)

