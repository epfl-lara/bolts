; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69900 () Bool)

(assert start!69900)

(declare-fun b!812289 () Bool)

(declare-fun e!449944 () Bool)

(declare-fun tp_is_empty!14029 () Bool)

(assert (=> b!812289 (= e!449944 tp_is_empty!14029)))

(declare-fun b!812290 () Bool)

(declare-fun e!449942 () Bool)

(assert (=> b!812290 (= e!449942 false)))

(declare-fun lt!364085 () Bool)

(declare-datatypes ((array!44258 0))(
  ( (array!44259 (arr!21187 (Array (_ BitVec 32) (_ BitVec 64))) (size!21608 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44258)

(declare-datatypes ((List!15133 0))(
  ( (Nil!15130) (Cons!15129 (h!16258 (_ BitVec 64)) (t!21456 List!15133)) )
))
(declare-fun arrayNoDuplicates!0 (array!44258 (_ BitVec 32) List!15133) Bool)

(assert (=> b!812290 (= lt!364085 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15130))))

(declare-fun b!812291 () Bool)

(declare-fun res!555194 () Bool)

(assert (=> b!812291 (=> (not res!555194) (not e!449942))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23707 0))(
  ( (V!23708 (val!7062 Int)) )
))
(declare-datatypes ((ValueCell!6599 0))(
  ( (ValueCellFull!6599 (v!9485 V!23707)) (EmptyCell!6599) )
))
(declare-datatypes ((array!44260 0))(
  ( (array!44261 (arr!21188 (Array (_ BitVec 32) ValueCell!6599)) (size!21609 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44260)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812291 (= res!555194 (and (= (size!21609 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21608 _keys!976) (size!21609 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812292 () Bool)

(declare-fun res!555192 () Bool)

(assert (=> b!812292 (=> (not res!555192) (not e!449942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44258 (_ BitVec 32)) Bool)

(assert (=> b!812292 (= res!555192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!555193 () Bool)

(assert (=> start!69900 (=> (not res!555193) (not e!449942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69900 (= res!555193 (validMask!0 mask!1312))))

(assert (=> start!69900 e!449942))

(declare-fun array_inv!16949 (array!44258) Bool)

(assert (=> start!69900 (array_inv!16949 _keys!976)))

(assert (=> start!69900 true))

(declare-fun e!449945 () Bool)

(declare-fun array_inv!16950 (array!44260) Bool)

(assert (=> start!69900 (and (array_inv!16950 _values!788) e!449945)))

(declare-fun mapNonEmpty!22618 () Bool)

(declare-fun mapRes!22618 () Bool)

(declare-fun tp!43726 () Bool)

(declare-fun e!449941 () Bool)

(assert (=> mapNonEmpty!22618 (= mapRes!22618 (and tp!43726 e!449941))))

(declare-fun mapValue!22618 () ValueCell!6599)

(declare-fun mapRest!22618 () (Array (_ BitVec 32) ValueCell!6599))

(declare-fun mapKey!22618 () (_ BitVec 32))

(assert (=> mapNonEmpty!22618 (= (arr!21188 _values!788) (store mapRest!22618 mapKey!22618 mapValue!22618))))

(declare-fun b!812293 () Bool)

(assert (=> b!812293 (= e!449945 (and e!449944 mapRes!22618))))

(declare-fun condMapEmpty!22618 () Bool)

(declare-fun mapDefault!22618 () ValueCell!6599)

