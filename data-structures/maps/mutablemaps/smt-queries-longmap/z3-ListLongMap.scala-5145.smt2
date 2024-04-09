; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69816 () Bool)

(assert start!69816)

(declare-fun b!811793 () Bool)

(declare-datatypes ((array!44170 0))(
  ( (array!44171 (arr!21148 (Array (_ BitVec 32) (_ BitVec 64))) (size!21569 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44170)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun e!449547 () Bool)

(declare-datatypes ((V!23653 0))(
  ( (V!23654 (val!7042 Int)) )
))
(declare-datatypes ((ValueCell!6579 0))(
  ( (ValueCellFull!6579 (v!9464 V!23653)) (EmptyCell!6579) )
))
(declare-datatypes ((array!44172 0))(
  ( (array!44173 (arr!21149 (Array (_ BitVec 32) ValueCell!6579)) (size!21570 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44172)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811793 (= e!449547 (and (= (size!21570 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21569 _keys!976) (size!21570 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (size!21569 _keys!976) (bvadd #b00000000000000000000000000000001 mask!1312)) (bvsgt #b00000000000000000000000000000000 (size!21569 _keys!976))))))

(declare-fun res!554940 () Bool)

(assert (=> start!69816 (=> (not res!554940) (not e!449547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69816 (= res!554940 (validMask!0 mask!1312))))

(assert (=> start!69816 e!449547))

(declare-fun array_inv!16921 (array!44170) Bool)

(assert (=> start!69816 (array_inv!16921 _keys!976)))

(assert (=> start!69816 true))

(declare-fun e!449550 () Bool)

(declare-fun array_inv!16922 (array!44172) Bool)

(assert (=> start!69816 (and (array_inv!16922 _values!788) e!449550)))

(declare-fun mapNonEmpty!22543 () Bool)

(declare-fun mapRes!22543 () Bool)

(declare-fun tp!43651 () Bool)

(declare-fun e!449549 () Bool)

(assert (=> mapNonEmpty!22543 (= mapRes!22543 (and tp!43651 e!449549))))

(declare-fun mapRest!22543 () (Array (_ BitVec 32) ValueCell!6579))

(declare-fun mapKey!22543 () (_ BitVec 32))

(declare-fun mapValue!22543 () ValueCell!6579)

(assert (=> mapNonEmpty!22543 (= (arr!21149 _values!788) (store mapRest!22543 mapKey!22543 mapValue!22543))))

(declare-fun mapIsEmpty!22543 () Bool)

(assert (=> mapIsEmpty!22543 mapRes!22543))

(declare-fun b!811794 () Bool)

(declare-fun tp_is_empty!13989 () Bool)

(assert (=> b!811794 (= e!449549 tp_is_empty!13989)))

(declare-fun b!811795 () Bool)

(declare-fun e!449546 () Bool)

(assert (=> b!811795 (= e!449550 (and e!449546 mapRes!22543))))

(declare-fun condMapEmpty!22543 () Bool)

(declare-fun mapDefault!22543 () ValueCell!6579)

(assert (=> b!811795 (= condMapEmpty!22543 (= (arr!21149 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6579)) mapDefault!22543)))))

(declare-fun b!811796 () Bool)

(assert (=> b!811796 (= e!449546 tp_is_empty!13989)))

(assert (= (and start!69816 res!554940) b!811793))

(assert (= (and b!811795 condMapEmpty!22543) mapIsEmpty!22543))

(assert (= (and b!811795 (not condMapEmpty!22543)) mapNonEmpty!22543))

(get-info :version)

(assert (= (and mapNonEmpty!22543 ((_ is ValueCellFull!6579) mapValue!22543)) b!811794))

(assert (= (and b!811795 ((_ is ValueCellFull!6579) mapDefault!22543)) b!811796))

(assert (= start!69816 b!811795))

(declare-fun m!754459 () Bool)

(assert (=> start!69816 m!754459))

(declare-fun m!754461 () Bool)

(assert (=> start!69816 m!754461))

(declare-fun m!754463 () Bool)

(assert (=> start!69816 m!754463))

(declare-fun m!754465 () Bool)

(assert (=> mapNonEmpty!22543 m!754465))

(check-sat (not start!69816) (not mapNonEmpty!22543) tp_is_empty!13989)
(check-sat)
(get-model)

(declare-fun d!104205 () Bool)

(assert (=> d!104205 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69816 d!104205))

(declare-fun d!104207 () Bool)

(assert (=> d!104207 (= (array_inv!16921 _keys!976) (bvsge (size!21569 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69816 d!104207))

(declare-fun d!104209 () Bool)

(assert (=> d!104209 (= (array_inv!16922 _values!788) (bvsge (size!21570 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69816 d!104209))

(declare-fun condMapEmpty!22549 () Bool)

(declare-fun mapDefault!22549 () ValueCell!6579)

(assert (=> mapNonEmpty!22543 (= condMapEmpty!22549 (= mapRest!22543 ((as const (Array (_ BitVec 32) ValueCell!6579)) mapDefault!22549)))))

(declare-fun e!449571 () Bool)

(declare-fun mapRes!22549 () Bool)

(assert (=> mapNonEmpty!22543 (= tp!43651 (and e!449571 mapRes!22549))))

(declare-fun mapNonEmpty!22549 () Bool)

(declare-fun tp!43657 () Bool)

(declare-fun e!449570 () Bool)

(assert (=> mapNonEmpty!22549 (= mapRes!22549 (and tp!43657 e!449570))))

(declare-fun mapKey!22549 () (_ BitVec 32))

(declare-fun mapRest!22549 () (Array (_ BitVec 32) ValueCell!6579))

(declare-fun mapValue!22549 () ValueCell!6579)

(assert (=> mapNonEmpty!22549 (= mapRest!22543 (store mapRest!22549 mapKey!22549 mapValue!22549))))

(declare-fun b!811815 () Bool)

(assert (=> b!811815 (= e!449570 tp_is_empty!13989)))

(declare-fun b!811816 () Bool)

(assert (=> b!811816 (= e!449571 tp_is_empty!13989)))

(declare-fun mapIsEmpty!22549 () Bool)

(assert (=> mapIsEmpty!22549 mapRes!22549))

(assert (= (and mapNonEmpty!22543 condMapEmpty!22549) mapIsEmpty!22549))

(assert (= (and mapNonEmpty!22543 (not condMapEmpty!22549)) mapNonEmpty!22549))

(assert (= (and mapNonEmpty!22549 ((_ is ValueCellFull!6579) mapValue!22549)) b!811815))

(assert (= (and mapNonEmpty!22543 ((_ is ValueCellFull!6579) mapDefault!22549)) b!811816))

(declare-fun m!754475 () Bool)

(assert (=> mapNonEmpty!22549 m!754475))

(check-sat (not mapNonEmpty!22549) tp_is_empty!13989)
(check-sat)
