; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93962 () Bool)

(assert start!93962)

(declare-fun b_free!21385 () Bool)

(declare-fun b_next!21385 () Bool)

(assert (=> start!93962 (= b_free!21385 (not b_next!21385))))

(declare-fun tp!75581 () Bool)

(declare-fun b_and!34125 () Bool)

(assert (=> start!93962 (= tp!75581 b_and!34125)))

(declare-fun b!1062224 () Bool)

(declare-fun res!709377 () Bool)

(declare-fun e!605075 () Bool)

(assert (=> b!1062224 (=> (not res!709377) (not e!605075))))

(declare-datatypes ((array!67366 0))(
  ( (array!67367 (arr!32386 (Array (_ BitVec 32) (_ BitVec 64))) (size!32923 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67366)

(declare-datatypes ((List!22698 0))(
  ( (Nil!22695) (Cons!22694 (h!23903 (_ BitVec 64)) (t!32016 List!22698)) )
))
(declare-fun arrayNoDuplicates!0 (array!67366 (_ BitVec 32) List!22698) Bool)

(assert (=> b!1062224 (= res!709377 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22695))))

(declare-fun mapNonEmpty!39466 () Bool)

(declare-fun mapRes!39466 () Bool)

(declare-fun tp!75582 () Bool)

(declare-fun e!605073 () Bool)

(assert (=> mapNonEmpty!39466 (= mapRes!39466 (and tp!75582 e!605073))))

(declare-fun mapKey!39466 () (_ BitVec 32))

(declare-datatypes ((V!38729 0))(
  ( (V!38730 (val!12648 Int)) )
))
(declare-datatypes ((ValueCell!11894 0))(
  ( (ValueCellFull!11894 (v!15259 V!38729)) (EmptyCell!11894) )
))
(declare-fun mapValue!39466 () ValueCell!11894)

(declare-datatypes ((array!67368 0))(
  ( (array!67369 (arr!32387 (Array (_ BitVec 32) ValueCell!11894)) (size!32924 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67368)

(declare-fun mapRest!39466 () (Array (_ BitVec 32) ValueCell!11894))

(assert (=> mapNonEmpty!39466 (= (arr!32387 _values!955) (store mapRest!39466 mapKey!39466 mapValue!39466))))

(declare-fun res!709378 () Bool)

(assert (=> start!93962 (=> (not res!709378) (not e!605075))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93962 (= res!709378 (validMask!0 mask!1515))))

(assert (=> start!93962 e!605075))

(assert (=> start!93962 true))

(declare-fun tp_is_empty!25195 () Bool)

(assert (=> start!93962 tp_is_empty!25195))

(declare-fun e!605078 () Bool)

(declare-fun array_inv!24926 (array!67368) Bool)

(assert (=> start!93962 (and (array_inv!24926 _values!955) e!605078)))

(assert (=> start!93962 tp!75581))

(declare-fun array_inv!24927 (array!67366) Bool)

(assert (=> start!93962 (array_inv!24927 _keys!1163)))

(declare-fun b!1062225 () Bool)

(declare-fun e!605074 () Bool)

(assert (=> b!1062225 (= e!605078 (and e!605074 mapRes!39466))))

(declare-fun condMapEmpty!39466 () Bool)

(declare-fun mapDefault!39466 () ValueCell!11894)

