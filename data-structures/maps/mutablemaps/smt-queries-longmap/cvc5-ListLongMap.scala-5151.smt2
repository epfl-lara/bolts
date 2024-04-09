; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69894 () Bool)

(assert start!69894)

(declare-fun b!812235 () Bool)

(declare-fun e!449898 () Bool)

(assert (=> b!812235 (= e!449898 false)))

(declare-fun lt!364076 () Bool)

(declare-datatypes ((array!44246 0))(
  ( (array!44247 (arr!21181 (Array (_ BitVec 32) (_ BitVec 64))) (size!21602 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44246)

(declare-datatypes ((List!15131 0))(
  ( (Nil!15128) (Cons!15127 (h!16256 (_ BitVec 64)) (t!21454 List!15131)) )
))
(declare-fun arrayNoDuplicates!0 (array!44246 (_ BitVec 32) List!15131) Bool)

(assert (=> b!812235 (= lt!364076 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15128))))

(declare-fun b!812236 () Bool)

(declare-fun e!449899 () Bool)

(declare-fun tp_is_empty!14023 () Bool)

(assert (=> b!812236 (= e!449899 tp_is_empty!14023)))

(declare-fun b!812237 () Bool)

(declare-fun res!555165 () Bool)

(assert (=> b!812237 (=> (not res!555165) (not e!449898))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23699 0))(
  ( (V!23700 (val!7059 Int)) )
))
(declare-datatypes ((ValueCell!6596 0))(
  ( (ValueCellFull!6596 (v!9482 V!23699)) (EmptyCell!6596) )
))
(declare-datatypes ((array!44248 0))(
  ( (array!44249 (arr!21182 (Array (_ BitVec 32) ValueCell!6596)) (size!21603 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44248)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812237 (= res!555165 (and (= (size!21603 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21602 _keys!976) (size!21603 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!555166 () Bool)

(assert (=> start!69894 (=> (not res!555166) (not e!449898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69894 (= res!555166 (validMask!0 mask!1312))))

(assert (=> start!69894 e!449898))

(declare-fun array_inv!16945 (array!44246) Bool)

(assert (=> start!69894 (array_inv!16945 _keys!976)))

(assert (=> start!69894 true))

(declare-fun e!449896 () Bool)

(declare-fun array_inv!16946 (array!44248) Bool)

(assert (=> start!69894 (and (array_inv!16946 _values!788) e!449896)))

(declare-fun b!812238 () Bool)

(declare-fun res!555167 () Bool)

(assert (=> b!812238 (=> (not res!555167) (not e!449898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44246 (_ BitVec 32)) Bool)

(assert (=> b!812238 (= res!555167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22609 () Bool)

(declare-fun mapRes!22609 () Bool)

(declare-fun tp!43717 () Bool)

(declare-fun e!449900 () Bool)

(assert (=> mapNonEmpty!22609 (= mapRes!22609 (and tp!43717 e!449900))))

(declare-fun mapKey!22609 () (_ BitVec 32))

(declare-fun mapRest!22609 () (Array (_ BitVec 32) ValueCell!6596))

(declare-fun mapValue!22609 () ValueCell!6596)

(assert (=> mapNonEmpty!22609 (= (arr!21182 _values!788) (store mapRest!22609 mapKey!22609 mapValue!22609))))

(declare-fun b!812239 () Bool)

(assert (=> b!812239 (= e!449900 tp_is_empty!14023)))

(declare-fun b!812240 () Bool)

(assert (=> b!812240 (= e!449896 (and e!449899 mapRes!22609))))

(declare-fun condMapEmpty!22609 () Bool)

(declare-fun mapDefault!22609 () ValueCell!6596)

