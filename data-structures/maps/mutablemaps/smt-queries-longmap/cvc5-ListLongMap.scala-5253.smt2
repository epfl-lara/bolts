; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70662 () Bool)

(assert start!70662)

(declare-fun b_free!12925 () Bool)

(declare-fun b_next!12925 () Bool)

(assert (=> start!70662 (= b_free!12925 (not b_next!12925))))

(declare-fun tp!45514 () Bool)

(declare-fun b_and!21797 () Bool)

(assert (=> start!70662 (= tp!45514 b_and!21797)))

(declare-fun res!559886 () Bool)

(declare-fun e!455859 () Bool)

(assert (=> start!70662 (=> (not res!559886) (not e!455859))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70662 (= res!559886 (validMask!0 mask!1312))))

(assert (=> start!70662 e!455859))

(declare-fun tp_is_empty!14635 () Bool)

(assert (=> start!70662 tp_is_empty!14635))

(declare-datatypes ((array!45432 0))(
  ( (array!45433 (arr!21764 (Array (_ BitVec 32) (_ BitVec 64))) (size!22185 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45432)

(declare-fun array_inv!17363 (array!45432) Bool)

(assert (=> start!70662 (array_inv!17363 _keys!976)))

(assert (=> start!70662 true))

(declare-datatypes ((V!24515 0))(
  ( (V!24516 (val!7365 Int)) )
))
(declare-datatypes ((ValueCell!6902 0))(
  ( (ValueCellFull!6902 (v!9792 V!24515)) (EmptyCell!6902) )
))
(declare-datatypes ((array!45434 0))(
  ( (array!45435 (arr!21765 (Array (_ BitVec 32) ValueCell!6902)) (size!22186 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45434)

(declare-fun e!455857 () Bool)

(declare-fun array_inv!17364 (array!45434) Bool)

(assert (=> start!70662 (and (array_inv!17364 _values!788) e!455857)))

(assert (=> start!70662 tp!45514))

(declare-fun b!820434 () Bool)

(declare-fun res!559884 () Bool)

(assert (=> b!820434 (=> (not res!559884) (not e!455859))))

(declare-datatypes ((List!15567 0))(
  ( (Nil!15564) (Cons!15563 (h!16692 (_ BitVec 64)) (t!21908 List!15567)) )
))
(declare-fun arrayNoDuplicates!0 (array!45432 (_ BitVec 32) List!15567) Bool)

(assert (=> b!820434 (= res!559884 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15564))))

(declare-fun b!820435 () Bool)

(declare-fun e!455855 () Bool)

(declare-fun mapRes!23557 () Bool)

(assert (=> b!820435 (= e!455857 (and e!455855 mapRes!23557))))

(declare-fun condMapEmpty!23557 () Bool)

(declare-fun mapDefault!23557 () ValueCell!6902)

