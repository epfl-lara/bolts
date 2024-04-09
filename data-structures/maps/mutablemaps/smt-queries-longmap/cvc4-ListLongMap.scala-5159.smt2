; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69956 () Bool)

(assert start!69956)

(declare-fun b_free!12365 () Bool)

(declare-fun b_next!12365 () Bool)

(assert (=> start!69956 (= b_free!12365 (not b_next!12365))))

(declare-fun tp!43807 () Bool)

(declare-fun b_and!21151 () Bool)

(assert (=> start!69956 (= tp!43807 b_and!21151)))

(declare-fun b!812755 () Bool)

(declare-fun res!555433 () Bool)

(declare-fun e!450313 () Bool)

(assert (=> b!812755 (=> (not res!555433) (not e!450313))))

(declare-datatypes ((array!44342 0))(
  ( (array!44343 (arr!21228 (Array (_ BitVec 32) (_ BitVec 64))) (size!21649 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44342)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23767 0))(
  ( (V!23768 (val!7085 Int)) )
))
(declare-datatypes ((ValueCell!6622 0))(
  ( (ValueCellFull!6622 (v!9508 V!23767)) (EmptyCell!6622) )
))
(declare-datatypes ((array!44344 0))(
  ( (array!44345 (arr!21229 (Array (_ BitVec 32) ValueCell!6622)) (size!21650 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44344)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812755 (= res!555433 (and (= (size!21650 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21649 _keys!976) (size!21650 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22690 () Bool)

(declare-fun mapRes!22690 () Bool)

(declare-fun tp!43806 () Bool)

(declare-fun e!450317 () Bool)

(assert (=> mapNonEmpty!22690 (= mapRes!22690 (and tp!43806 e!450317))))

(declare-fun mapRest!22690 () (Array (_ BitVec 32) ValueCell!6622))

(declare-fun mapValue!22690 () ValueCell!6622)

(declare-fun mapKey!22690 () (_ BitVec 32))

(assert (=> mapNonEmpty!22690 (= (arr!21229 _values!788) (store mapRest!22690 mapKey!22690 mapValue!22690))))

(declare-fun b!812756 () Bool)

(declare-fun res!555432 () Bool)

(assert (=> b!812756 (=> (not res!555432) (not e!450313))))

(declare-datatypes ((List!15152 0))(
  ( (Nil!15149) (Cons!15148 (h!16277 (_ BitVec 64)) (t!21475 List!15152)) )
))
(declare-fun arrayNoDuplicates!0 (array!44342 (_ BitVec 32) List!15152) Bool)

(assert (=> b!812756 (= res!555432 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15149))))

(declare-fun b!812757 () Bool)

(assert (=> b!812757 (= e!450313 false)))

(declare-fun zeroValueBefore!34 () V!23767)

(declare-fun minValue!754 () V!23767)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9278 0))(
  ( (tuple2!9279 (_1!4649 (_ BitVec 64)) (_2!4649 V!23767)) )
))
(declare-datatypes ((List!15153 0))(
  ( (Nil!15150) (Cons!15149 (h!16278 tuple2!9278) (t!21476 List!15153)) )
))
(declare-datatypes ((ListLongMap!8115 0))(
  ( (ListLongMap!8116 (toList!4073 List!15153)) )
))
(declare-fun lt!364154 () ListLongMap!8115)

(declare-fun getCurrentListMapNoExtraKeys!2122 (array!44342 array!44344 (_ BitVec 32) (_ BitVec 32) V!23767 V!23767 (_ BitVec 32) Int) ListLongMap!8115)

(assert (=> b!812757 (= lt!364154 (getCurrentListMapNoExtraKeys!2122 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812758 () Bool)

(declare-fun tp_is_empty!14075 () Bool)

(assert (=> b!812758 (= e!450317 tp_is_empty!14075)))

(declare-fun b!812759 () Bool)

(declare-fun res!555434 () Bool)

(assert (=> b!812759 (=> (not res!555434) (not e!450313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44342 (_ BitVec 32)) Bool)

(assert (=> b!812759 (= res!555434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22690 () Bool)

(assert (=> mapIsEmpty!22690 mapRes!22690))

(declare-fun res!555431 () Bool)

(assert (=> start!69956 (=> (not res!555431) (not e!450313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69956 (= res!555431 (validMask!0 mask!1312))))

(assert (=> start!69956 e!450313))

(assert (=> start!69956 tp_is_empty!14075))

(declare-fun array_inv!16979 (array!44342) Bool)

(assert (=> start!69956 (array_inv!16979 _keys!976)))

(assert (=> start!69956 true))

(declare-fun e!450316 () Bool)

(declare-fun array_inv!16980 (array!44344) Bool)

(assert (=> start!69956 (and (array_inv!16980 _values!788) e!450316)))

(assert (=> start!69956 tp!43807))

(declare-fun b!812760 () Bool)

(declare-fun e!450314 () Bool)

(assert (=> b!812760 (= e!450314 tp_is_empty!14075)))

(declare-fun b!812761 () Bool)

(assert (=> b!812761 (= e!450316 (and e!450314 mapRes!22690))))

(declare-fun condMapEmpty!22690 () Bool)

(declare-fun mapDefault!22690 () ValueCell!6622)

