; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94182 () Bool)

(assert start!94182)

(declare-fun b_free!21547 () Bool)

(declare-fun b_next!21547 () Bool)

(assert (=> start!94182 (= b_free!21547 (not b_next!21547))))

(declare-fun tp!76076 () Bool)

(declare-fun b_and!34315 () Bool)

(assert (=> start!94182 (= tp!76076 b_and!34315)))

(declare-fun res!710790 () Bool)

(declare-fun e!606829 () Bool)

(assert (=> start!94182 (=> (not res!710790) (not e!606829))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94182 (= res!710790 (validMask!0 mask!1515))))

(assert (=> start!94182 e!606829))

(assert (=> start!94182 true))

(declare-fun tp_is_empty!25357 () Bool)

(assert (=> start!94182 tp_is_empty!25357))

(declare-datatypes ((V!38945 0))(
  ( (V!38946 (val!12729 Int)) )
))
(declare-datatypes ((ValueCell!11975 0))(
  ( (ValueCellFull!11975 (v!15342 V!38945)) (EmptyCell!11975) )
))
(declare-datatypes ((array!67678 0))(
  ( (array!67679 (arr!32539 (Array (_ BitVec 32) ValueCell!11975)) (size!33076 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67678)

(declare-fun e!606834 () Bool)

(declare-fun array_inv!25032 (array!67678) Bool)

(assert (=> start!94182 (and (array_inv!25032 _values!955) e!606834)))

(assert (=> start!94182 tp!76076))

(declare-datatypes ((array!67680 0))(
  ( (array!67681 (arr!32540 (Array (_ BitVec 32) (_ BitVec 64))) (size!33077 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67680)

(declare-fun array_inv!25033 (array!67680) Bool)

(assert (=> start!94182 (array_inv!25033 _keys!1163)))

(declare-fun b!1064610 () Bool)

(declare-fun e!606831 () Bool)

(declare-fun mapRes!39718 () Bool)

(assert (=> b!1064610 (= e!606834 (and e!606831 mapRes!39718))))

(declare-fun condMapEmpty!39718 () Bool)

(declare-fun mapDefault!39718 () ValueCell!11975)

