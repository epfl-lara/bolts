; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69814 () Bool)

(assert start!69814)

(declare-fun b!811781 () Bool)

(declare-datatypes ((array!44166 0))(
  ( (array!44167 (arr!21146 (Array (_ BitVec 32) (_ BitVec 64))) (size!21567 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44166)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun e!449535 () Bool)

(declare-datatypes ((V!23651 0))(
  ( (V!23652 (val!7041 Int)) )
))
(declare-datatypes ((ValueCell!6578 0))(
  ( (ValueCellFull!6578 (v!9463 V!23651)) (EmptyCell!6578) )
))
(declare-datatypes ((array!44168 0))(
  ( (array!44169 (arr!21147 (Array (_ BitVec 32) ValueCell!6578)) (size!21568 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44168)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811781 (= e!449535 (and (= (size!21568 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21567 _keys!976) (size!21568 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (size!21567 _keys!976) (bvadd #b00000000000000000000000000000001 mask!1312)) (bvsgt #b00000000000000000000000000000000 (size!21567 _keys!976))))))

(declare-fun b!811782 () Bool)

(declare-fun e!449531 () Bool)

(declare-fun tp_is_empty!13987 () Bool)

(assert (=> b!811782 (= e!449531 tp_is_empty!13987)))

(declare-fun mapNonEmpty!22540 () Bool)

(declare-fun mapRes!22540 () Bool)

(declare-fun tp!43648 () Bool)

(assert (=> mapNonEmpty!22540 (= mapRes!22540 (and tp!43648 e!449531))))

(declare-fun mapValue!22540 () ValueCell!6578)

(declare-fun mapRest!22540 () (Array (_ BitVec 32) ValueCell!6578))

(declare-fun mapKey!22540 () (_ BitVec 32))

(assert (=> mapNonEmpty!22540 (= (arr!21147 _values!788) (store mapRest!22540 mapKey!22540 mapValue!22540))))

(declare-fun mapIsEmpty!22540 () Bool)

(assert (=> mapIsEmpty!22540 mapRes!22540))

(declare-fun res!554937 () Bool)

(assert (=> start!69814 (=> (not res!554937) (not e!449535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69814 (= res!554937 (validMask!0 mask!1312))))

(assert (=> start!69814 e!449535))

(declare-fun array_inv!16919 (array!44166) Bool)

(assert (=> start!69814 (array_inv!16919 _keys!976)))

(assert (=> start!69814 true))

(declare-fun e!449534 () Bool)

(declare-fun array_inv!16920 (array!44168) Bool)

(assert (=> start!69814 (and (array_inv!16920 _values!788) e!449534)))

(declare-fun b!811783 () Bool)

(declare-fun e!449532 () Bool)

(assert (=> b!811783 (= e!449534 (and e!449532 mapRes!22540))))

(declare-fun condMapEmpty!22540 () Bool)

(declare-fun mapDefault!22540 () ValueCell!6578)

