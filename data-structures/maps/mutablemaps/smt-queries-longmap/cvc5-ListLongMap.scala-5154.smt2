; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69912 () Bool)

(assert start!69912)

(declare-fun mapIsEmpty!22636 () Bool)

(declare-fun mapRes!22636 () Bool)

(assert (=> mapIsEmpty!22636 mapRes!22636))

(declare-fun b!812397 () Bool)

(declare-fun res!555247 () Bool)

(declare-fun e!450034 () Bool)

(assert (=> b!812397 (=> (not res!555247) (not e!450034))))

(declare-datatypes ((array!44278 0))(
  ( (array!44279 (arr!21197 (Array (_ BitVec 32) (_ BitVec 64))) (size!21618 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44278)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23723 0))(
  ( (V!23724 (val!7068 Int)) )
))
(declare-datatypes ((ValueCell!6605 0))(
  ( (ValueCellFull!6605 (v!9491 V!23723)) (EmptyCell!6605) )
))
(declare-datatypes ((array!44280 0))(
  ( (array!44281 (arr!21198 (Array (_ BitVec 32) ValueCell!6605)) (size!21619 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44280)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812397 (= res!555247 (and (= (size!21619 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21618 _keys!976) (size!21619 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812398 () Bool)

(declare-fun res!555246 () Bool)

(assert (=> b!812398 (=> (not res!555246) (not e!450034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44278 (_ BitVec 32)) Bool)

(assert (=> b!812398 (= res!555246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!555248 () Bool)

(assert (=> start!69912 (=> (not res!555248) (not e!450034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69912 (= res!555248 (validMask!0 mask!1312))))

(assert (=> start!69912 e!450034))

(declare-fun array_inv!16957 (array!44278) Bool)

(assert (=> start!69912 (array_inv!16957 _keys!976)))

(assert (=> start!69912 true))

(declare-fun e!450033 () Bool)

(declare-fun array_inv!16958 (array!44280) Bool)

(assert (=> start!69912 (and (array_inv!16958 _values!788) e!450033)))

(declare-fun b!812399 () Bool)

(declare-fun e!450032 () Bool)

(declare-fun tp_is_empty!14041 () Bool)

(assert (=> b!812399 (= e!450032 tp_is_empty!14041)))

(declare-fun b!812400 () Bool)

(declare-fun e!450031 () Bool)

(assert (=> b!812400 (= e!450031 tp_is_empty!14041)))

(declare-fun mapNonEmpty!22636 () Bool)

(declare-fun tp!43744 () Bool)

(assert (=> mapNonEmpty!22636 (= mapRes!22636 (and tp!43744 e!450032))))

(declare-fun mapRest!22636 () (Array (_ BitVec 32) ValueCell!6605))

(declare-fun mapKey!22636 () (_ BitVec 32))

(declare-fun mapValue!22636 () ValueCell!6605)

(assert (=> mapNonEmpty!22636 (= (arr!21198 _values!788) (store mapRest!22636 mapKey!22636 mapValue!22636))))

(declare-fun b!812401 () Bool)

(assert (=> b!812401 (= e!450034 false)))

(declare-fun lt!364103 () Bool)

(declare-datatypes ((List!15137 0))(
  ( (Nil!15134) (Cons!15133 (h!16262 (_ BitVec 64)) (t!21460 List!15137)) )
))
(declare-fun arrayNoDuplicates!0 (array!44278 (_ BitVec 32) List!15137) Bool)

(assert (=> b!812401 (= lt!364103 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15134))))

(declare-fun b!812402 () Bool)

(assert (=> b!812402 (= e!450033 (and e!450031 mapRes!22636))))

(declare-fun condMapEmpty!22636 () Bool)

(declare-fun mapDefault!22636 () ValueCell!6605)

