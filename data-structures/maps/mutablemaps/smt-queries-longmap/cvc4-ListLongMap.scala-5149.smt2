; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69874 () Bool)

(assert start!69874)

(declare-fun res!555107 () Bool)

(declare-fun e!449807 () Bool)

(assert (=> start!69874 (=> (not res!555107) (not e!449807))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69874 (= res!555107 (validMask!0 mask!1312))))

(assert (=> start!69874 e!449807))

(declare-datatypes ((array!44230 0))(
  ( (array!44231 (arr!21174 (Array (_ BitVec 32) (_ BitVec 64))) (size!21595 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44230)

(declare-fun array_inv!16941 (array!44230) Bool)

(assert (=> start!69874 (array_inv!16941 _keys!976)))

(assert (=> start!69874 true))

(declare-datatypes ((V!23687 0))(
  ( (V!23688 (val!7055 Int)) )
))
(declare-datatypes ((ValueCell!6592 0))(
  ( (ValueCellFull!6592 (v!9477 V!23687)) (EmptyCell!6592) )
))
(declare-datatypes ((array!44232 0))(
  ( (array!44233 (arr!21175 (Array (_ BitVec 32) ValueCell!6592)) (size!21596 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44232)

(declare-fun e!449808 () Bool)

(declare-fun array_inv!16942 (array!44232) Bool)

(assert (=> start!69874 (and (array_inv!16942 _values!788) e!449808)))

(declare-fun b!812126 () Bool)

(declare-fun res!555111 () Bool)

(assert (=> b!812126 (=> (not res!555111) (not e!449807))))

(declare-datatypes ((List!15128 0))(
  ( (Nil!15125) (Cons!15124 (h!16253 (_ BitVec 64)) (t!21451 List!15128)) )
))
(declare-fun noDuplicate!1295 (List!15128) Bool)

(assert (=> b!812126 (= res!555111 (noDuplicate!1295 Nil!15125))))

(declare-fun b!812127 () Bool)

(declare-fun e!449806 () Bool)

(declare-fun contains!4141 (List!15128 (_ BitVec 64)) Bool)

(assert (=> b!812127 (= e!449806 (contains!4141 Nil!15125 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812128 () Bool)

(declare-fun res!555108 () Bool)

(assert (=> b!812128 (=> (not res!555108) (not e!449807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44230 (_ BitVec 32)) Bool)

(assert (=> b!812128 (= res!555108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22594 () Bool)

(declare-fun mapRes!22594 () Bool)

(assert (=> mapIsEmpty!22594 mapRes!22594))

(declare-fun b!812129 () Bool)

(declare-fun res!555109 () Bool)

(assert (=> b!812129 (=> (not res!555109) (not e!449807))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812129 (= res!555109 (and (= (size!21596 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21595 _keys!976) (size!21596 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812130 () Bool)

(declare-fun res!555106 () Bool)

(assert (=> b!812130 (=> (not res!555106) (not e!449807))))

(assert (=> b!812130 (= res!555106 (and (bvsle #b00000000000000000000000000000000 (size!21595 _keys!976)) (bvslt (size!21595 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun b!812131 () Bool)

(assert (=> b!812131 (= e!449807 e!449806)))

(declare-fun res!555110 () Bool)

(assert (=> b!812131 (=> res!555110 e!449806)))

(assert (=> b!812131 (= res!555110 (contains!4141 Nil!15125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812132 () Bool)

(declare-fun e!449809 () Bool)

(declare-fun tp_is_empty!14015 () Bool)

(assert (=> b!812132 (= e!449809 tp_is_empty!14015)))

(declare-fun mapNonEmpty!22594 () Bool)

(declare-fun tp!43702 () Bool)

(assert (=> mapNonEmpty!22594 (= mapRes!22594 (and tp!43702 e!449809))))

(declare-fun mapKey!22594 () (_ BitVec 32))

(declare-fun mapValue!22594 () ValueCell!6592)

(declare-fun mapRest!22594 () (Array (_ BitVec 32) ValueCell!6592))

(assert (=> mapNonEmpty!22594 (= (arr!21175 _values!788) (store mapRest!22594 mapKey!22594 mapValue!22594))))

(declare-fun b!812133 () Bool)

(declare-fun e!449810 () Bool)

(assert (=> b!812133 (= e!449808 (and e!449810 mapRes!22594))))

(declare-fun condMapEmpty!22594 () Bool)

(declare-fun mapDefault!22594 () ValueCell!6592)

