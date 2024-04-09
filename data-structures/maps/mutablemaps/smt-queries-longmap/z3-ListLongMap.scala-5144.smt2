; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69810 () Bool)

(assert start!69810)

(declare-fun b!811757 () Bool)

(declare-fun e!449505 () Bool)

(declare-fun tp_is_empty!13983 () Bool)

(assert (=> b!811757 (= e!449505 tp_is_empty!13983)))

(declare-datatypes ((array!44160 0))(
  ( (array!44161 (arr!21143 (Array (_ BitVec 32) (_ BitVec 64))) (size!21564 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44160)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23645 0))(
  ( (V!23646 (val!7039 Int)) )
))
(declare-datatypes ((ValueCell!6576 0))(
  ( (ValueCellFull!6576 (v!9461 V!23645)) (EmptyCell!6576) )
))
(declare-datatypes ((array!44162 0))(
  ( (array!44163 (arr!21144 (Array (_ BitVec 32) ValueCell!6576)) (size!21565 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44162)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun e!449502 () Bool)

(declare-fun b!811758 () Bool)

(assert (=> b!811758 (= e!449502 (and (= (size!21565 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21564 _keys!976) (size!21565 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (size!21564 _keys!976) (bvadd #b00000000000000000000000000000001 mask!1312)))))))

(declare-fun b!811759 () Bool)

(declare-fun e!449503 () Bool)

(assert (=> b!811759 (= e!449503 tp_is_empty!13983)))

(declare-fun res!554931 () Bool)

(assert (=> start!69810 (=> (not res!554931) (not e!449502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69810 (= res!554931 (validMask!0 mask!1312))))

(assert (=> start!69810 e!449502))

(declare-fun array_inv!16917 (array!44160) Bool)

(assert (=> start!69810 (array_inv!16917 _keys!976)))

(assert (=> start!69810 true))

(declare-fun e!449504 () Bool)

(declare-fun array_inv!16918 (array!44162) Bool)

(assert (=> start!69810 (and (array_inv!16918 _values!788) e!449504)))

(declare-fun mapNonEmpty!22534 () Bool)

(declare-fun mapRes!22534 () Bool)

(declare-fun tp!43642 () Bool)

(assert (=> mapNonEmpty!22534 (= mapRes!22534 (and tp!43642 e!449505))))

(declare-fun mapValue!22534 () ValueCell!6576)

(declare-fun mapKey!22534 () (_ BitVec 32))

(declare-fun mapRest!22534 () (Array (_ BitVec 32) ValueCell!6576))

(assert (=> mapNonEmpty!22534 (= (arr!21144 _values!788) (store mapRest!22534 mapKey!22534 mapValue!22534))))

(declare-fun b!811760 () Bool)

(assert (=> b!811760 (= e!449504 (and e!449503 mapRes!22534))))

(declare-fun condMapEmpty!22534 () Bool)

(declare-fun mapDefault!22534 () ValueCell!6576)

(assert (=> b!811760 (= condMapEmpty!22534 (= (arr!21144 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6576)) mapDefault!22534)))))

(declare-fun mapIsEmpty!22534 () Bool)

(assert (=> mapIsEmpty!22534 mapRes!22534))

(assert (= (and start!69810 res!554931) b!811758))

(assert (= (and b!811760 condMapEmpty!22534) mapIsEmpty!22534))

(assert (= (and b!811760 (not condMapEmpty!22534)) mapNonEmpty!22534))

(get-info :version)

(assert (= (and mapNonEmpty!22534 ((_ is ValueCellFull!6576) mapValue!22534)) b!811757))

(assert (= (and b!811760 ((_ is ValueCellFull!6576) mapDefault!22534)) b!811759))

(assert (= start!69810 b!811760))

(declare-fun m!754435 () Bool)

(assert (=> start!69810 m!754435))

(declare-fun m!754437 () Bool)

(assert (=> start!69810 m!754437))

(declare-fun m!754439 () Bool)

(assert (=> start!69810 m!754439))

(declare-fun m!754441 () Bool)

(assert (=> mapNonEmpty!22534 m!754441))

(check-sat (not start!69810) (not mapNonEmpty!22534) tp_is_empty!13983)
(check-sat)
