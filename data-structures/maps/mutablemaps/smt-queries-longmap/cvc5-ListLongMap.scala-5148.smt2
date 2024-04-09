; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69854 () Bool)

(assert start!69854)

(declare-fun b!811979 () Bool)

(declare-fun res!555021 () Bool)

(declare-fun e!449702 () Bool)

(assert (=> b!811979 (=> (not res!555021) (not e!449702))))

(declare-datatypes ((array!44208 0))(
  ( (array!44209 (arr!21164 (Array (_ BitVec 32) (_ BitVec 64))) (size!21585 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44208)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23675 0))(
  ( (V!23676 (val!7050 Int)) )
))
(declare-datatypes ((ValueCell!6587 0))(
  ( (ValueCellFull!6587 (v!9472 V!23675)) (EmptyCell!6587) )
))
(declare-datatypes ((array!44210 0))(
  ( (array!44211 (arr!21165 (Array (_ BitVec 32) ValueCell!6587)) (size!21586 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44210)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811979 (= res!555021 (and (= (size!21586 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21585 _keys!976) (size!21586 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!811980 () Bool)

(declare-fun res!555019 () Bool)

(assert (=> b!811980 (=> (not res!555019) (not e!449702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44208 (_ BitVec 32)) Bool)

(assert (=> b!811980 (= res!555019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!811981 () Bool)

(declare-fun e!449704 () Bool)

(declare-fun tp_is_empty!14005 () Bool)

(assert (=> b!811981 (= e!449704 tp_is_empty!14005)))

(declare-fun b!811982 () Bool)

(declare-datatypes ((List!15124 0))(
  ( (Nil!15121) (Cons!15120 (h!16249 (_ BitVec 64)) (t!21447 List!15124)) )
))
(declare-fun noDuplicate!1291 (List!15124) Bool)

(assert (=> b!811982 (= e!449702 (not (noDuplicate!1291 Nil!15121)))))

(declare-fun mapNonEmpty!22576 () Bool)

(declare-fun mapRes!22576 () Bool)

(declare-fun tp!43684 () Bool)

(assert (=> mapNonEmpty!22576 (= mapRes!22576 (and tp!43684 e!449704))))

(declare-fun mapKey!22576 () (_ BitVec 32))

(declare-fun mapValue!22576 () ValueCell!6587)

(declare-fun mapRest!22576 () (Array (_ BitVec 32) ValueCell!6587))

(assert (=> mapNonEmpty!22576 (= (arr!21165 _values!788) (store mapRest!22576 mapKey!22576 mapValue!22576))))

(declare-fun b!811983 () Bool)

(declare-fun res!555020 () Bool)

(assert (=> b!811983 (=> (not res!555020) (not e!449702))))

(assert (=> b!811983 (= res!555020 (and (bvsle #b00000000000000000000000000000000 (size!21585 _keys!976)) (bvslt (size!21585 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!22576 () Bool)

(assert (=> mapIsEmpty!22576 mapRes!22576))

(declare-fun res!555018 () Bool)

(assert (=> start!69854 (=> (not res!555018) (not e!449702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69854 (= res!555018 (validMask!0 mask!1312))))

(assert (=> start!69854 e!449702))

(declare-fun array_inv!16933 (array!44208) Bool)

(assert (=> start!69854 (array_inv!16933 _keys!976)))

(assert (=> start!69854 true))

(declare-fun e!449706 () Bool)

(declare-fun array_inv!16934 (array!44210) Bool)

(assert (=> start!69854 (and (array_inv!16934 _values!788) e!449706)))

(declare-fun b!811984 () Bool)

(declare-fun e!449703 () Bool)

(assert (=> b!811984 (= e!449703 tp_is_empty!14005)))

(declare-fun b!811985 () Bool)

(assert (=> b!811985 (= e!449706 (and e!449703 mapRes!22576))))

(declare-fun condMapEmpty!22576 () Bool)

(declare-fun mapDefault!22576 () ValueCell!6587)

