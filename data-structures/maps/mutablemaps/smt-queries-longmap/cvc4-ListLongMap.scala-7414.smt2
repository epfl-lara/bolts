; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94338 () Bool)

(assert start!94338)

(declare-fun b_free!21665 () Bool)

(declare-fun b_next!21665 () Bool)

(assert (=> start!94338 (= b_free!21665 (not b_next!21665))))

(declare-fun tp!76436 () Bool)

(declare-fun b_and!34455 () Bool)

(assert (=> start!94338 (= tp!76436 b_and!34455)))

(declare-fun mapIsEmpty!39901 () Bool)

(declare-fun mapRes!39901 () Bool)

(assert (=> mapIsEmpty!39901 mapRes!39901))

(declare-fun res!711822 () Bool)

(declare-fun e!608118 () Bool)

(assert (=> start!94338 (=> (not res!711822) (not e!608118))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94338 (= res!711822 (validMask!0 mask!1515))))

(assert (=> start!94338 e!608118))

(assert (=> start!94338 true))

(declare-fun tp_is_empty!25475 () Bool)

(assert (=> start!94338 tp_is_empty!25475))

(declare-datatypes ((V!39101 0))(
  ( (V!39102 (val!12788 Int)) )
))
(declare-datatypes ((ValueCell!12034 0))(
  ( (ValueCellFull!12034 (v!15402 V!39101)) (EmptyCell!12034) )
))
(declare-datatypes ((array!67908 0))(
  ( (array!67909 (arr!32652 (Array (_ BitVec 32) ValueCell!12034)) (size!33189 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67908)

(declare-fun e!608116 () Bool)

(declare-fun array_inv!25118 (array!67908) Bool)

(assert (=> start!94338 (and (array_inv!25118 _values!955) e!608116)))

(assert (=> start!94338 tp!76436))

(declare-datatypes ((array!67910 0))(
  ( (array!67911 (arr!32653 (Array (_ BitVec 32) (_ BitVec 64))) (size!33190 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67910)

(declare-fun array_inv!25119 (array!67910) Bool)

(assert (=> start!94338 (array_inv!25119 _keys!1163)))

(declare-fun b!1066367 () Bool)

(declare-fun e!608114 () Bool)

(assert (=> b!1066367 (= e!608116 (and e!608114 mapRes!39901))))

(declare-fun condMapEmpty!39901 () Bool)

(declare-fun mapDefault!39901 () ValueCell!12034)

