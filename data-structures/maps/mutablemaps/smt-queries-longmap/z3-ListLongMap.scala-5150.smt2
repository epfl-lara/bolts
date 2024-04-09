; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69890 () Bool)

(assert start!69890)

(declare-fun mapNonEmpty!22603 () Bool)

(declare-fun mapRes!22603 () Bool)

(declare-fun tp!43711 () Bool)

(declare-fun e!449866 () Bool)

(assert (=> mapNonEmpty!22603 (= mapRes!22603 (and tp!43711 e!449866))))

(declare-datatypes ((V!23693 0))(
  ( (V!23694 (val!7057 Int)) )
))
(declare-datatypes ((ValueCell!6594 0))(
  ( (ValueCellFull!6594 (v!9480 V!23693)) (EmptyCell!6594) )
))
(declare-fun mapValue!22603 () ValueCell!6594)

(declare-datatypes ((array!44238 0))(
  ( (array!44239 (arr!21177 (Array (_ BitVec 32) ValueCell!6594)) (size!21598 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44238)

(declare-fun mapKey!22603 () (_ BitVec 32))

(declare-fun mapRest!22603 () (Array (_ BitVec 32) ValueCell!6594))

(assert (=> mapNonEmpty!22603 (= (arr!21177 _values!788) (store mapRest!22603 mapKey!22603 mapValue!22603))))

(declare-fun b!812199 () Bool)

(declare-fun tp_is_empty!14019 () Bool)

(assert (=> b!812199 (= e!449866 tp_is_empty!14019)))

(declare-fun b!812200 () Bool)

(declare-fun res!555148 () Bool)

(declare-fun e!449867 () Bool)

(assert (=> b!812200 (=> (not res!555148) (not e!449867))))

(declare-datatypes ((array!44240 0))(
  ( (array!44241 (arr!21178 (Array (_ BitVec 32) (_ BitVec 64))) (size!21599 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44240)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812200 (= res!555148 (and (= (size!21598 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21599 _keys!976) (size!21598 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812201 () Bool)

(declare-fun e!449868 () Bool)

(declare-fun e!449869 () Bool)

(assert (=> b!812201 (= e!449868 (and e!449869 mapRes!22603))))

(declare-fun condMapEmpty!22603 () Bool)

(declare-fun mapDefault!22603 () ValueCell!6594)

(assert (=> b!812201 (= condMapEmpty!22603 (= (arr!21177 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6594)) mapDefault!22603)))))

(declare-fun b!812202 () Bool)

(assert (=> b!812202 (= e!449867 false)))

(declare-fun lt!364070 () Bool)

(declare-datatypes ((List!15129 0))(
  ( (Nil!15126) (Cons!15125 (h!16254 (_ BitVec 64)) (t!21452 List!15129)) )
))
(declare-fun arrayNoDuplicates!0 (array!44240 (_ BitVec 32) List!15129) Bool)

(assert (=> b!812202 (= lt!364070 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15126))))

(declare-fun b!812203 () Bool)

(assert (=> b!812203 (= e!449869 tp_is_empty!14019)))

(declare-fun b!812204 () Bool)

(declare-fun res!555149 () Bool)

(assert (=> b!812204 (=> (not res!555149) (not e!449867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44240 (_ BitVec 32)) Bool)

(assert (=> b!812204 (= res!555149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22603 () Bool)

(assert (=> mapIsEmpty!22603 mapRes!22603))

(declare-fun res!555147 () Bool)

(assert (=> start!69890 (=> (not res!555147) (not e!449867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69890 (= res!555147 (validMask!0 mask!1312))))

(assert (=> start!69890 e!449867))

(declare-fun array_inv!16943 (array!44240) Bool)

(assert (=> start!69890 (array_inv!16943 _keys!976)))

(assert (=> start!69890 true))

(declare-fun array_inv!16944 (array!44238) Bool)

(assert (=> start!69890 (and (array_inv!16944 _values!788) e!449868)))

(assert (= (and start!69890 res!555147) b!812200))

(assert (= (and b!812200 res!555148) b!812204))

(assert (= (and b!812204 res!555149) b!812202))

(assert (= (and b!812201 condMapEmpty!22603) mapIsEmpty!22603))

(assert (= (and b!812201 (not condMapEmpty!22603)) mapNonEmpty!22603))

(get-info :version)

(assert (= (and mapNonEmpty!22603 ((_ is ValueCellFull!6594) mapValue!22603)) b!812199))

(assert (= (and b!812201 ((_ is ValueCellFull!6594) mapDefault!22603)) b!812203))

(assert (= start!69890 b!812201))

(declare-fun m!754707 () Bool)

(assert (=> mapNonEmpty!22603 m!754707))

(declare-fun m!754709 () Bool)

(assert (=> b!812202 m!754709))

(declare-fun m!754711 () Bool)

(assert (=> b!812204 m!754711))

(declare-fun m!754713 () Bool)

(assert (=> start!69890 m!754713))

(declare-fun m!754715 () Bool)

(assert (=> start!69890 m!754715))

(declare-fun m!754717 () Bool)

(assert (=> start!69890 m!754717))

(check-sat tp_is_empty!14019 (not b!812204) (not mapNonEmpty!22603) (not b!812202) (not start!69890))
(check-sat)
