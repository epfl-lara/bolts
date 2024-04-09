; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69908 () Bool)

(assert start!69908)

(declare-fun b!812361 () Bool)

(declare-fun e!450004 () Bool)

(declare-fun tp_is_empty!14037 () Bool)

(assert (=> b!812361 (= e!450004 tp_is_empty!14037)))

(declare-fun mapIsEmpty!22630 () Bool)

(declare-fun mapRes!22630 () Bool)

(assert (=> mapIsEmpty!22630 mapRes!22630))

(declare-fun res!555230 () Bool)

(declare-fun e!450002 () Bool)

(assert (=> start!69908 (=> (not res!555230) (not e!450002))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69908 (= res!555230 (validMask!0 mask!1312))))

(assert (=> start!69908 e!450002))

(declare-datatypes ((array!44272 0))(
  ( (array!44273 (arr!21194 (Array (_ BitVec 32) (_ BitVec 64))) (size!21615 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44272)

(declare-fun array_inv!16955 (array!44272) Bool)

(assert (=> start!69908 (array_inv!16955 _keys!976)))

(assert (=> start!69908 true))

(declare-datatypes ((V!23717 0))(
  ( (V!23718 (val!7066 Int)) )
))
(declare-datatypes ((ValueCell!6603 0))(
  ( (ValueCellFull!6603 (v!9489 V!23717)) (EmptyCell!6603) )
))
(declare-datatypes ((array!44274 0))(
  ( (array!44275 (arr!21195 (Array (_ BitVec 32) ValueCell!6603)) (size!21616 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44274)

(declare-fun e!450005 () Bool)

(declare-fun array_inv!16956 (array!44274) Bool)

(assert (=> start!69908 (and (array_inv!16956 _values!788) e!450005)))

(declare-fun b!812362 () Bool)

(declare-fun res!555229 () Bool)

(assert (=> b!812362 (=> (not res!555229) (not e!450002))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812362 (= res!555229 (and (= (size!21616 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21615 _keys!976) (size!21616 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812363 () Bool)

(declare-fun e!450003 () Bool)

(assert (=> b!812363 (= e!450003 tp_is_empty!14037)))

(declare-fun mapNonEmpty!22630 () Bool)

(declare-fun tp!43738 () Bool)

(assert (=> mapNonEmpty!22630 (= mapRes!22630 (and tp!43738 e!450003))))

(declare-fun mapValue!22630 () ValueCell!6603)

(declare-fun mapRest!22630 () (Array (_ BitVec 32) ValueCell!6603))

(declare-fun mapKey!22630 () (_ BitVec 32))

(assert (=> mapNonEmpty!22630 (= (arr!21195 _values!788) (store mapRest!22630 mapKey!22630 mapValue!22630))))

(declare-fun b!812364 () Bool)

(assert (=> b!812364 (= e!450005 (and e!450004 mapRes!22630))))

(declare-fun condMapEmpty!22630 () Bool)

(declare-fun mapDefault!22630 () ValueCell!6603)

(assert (=> b!812364 (= condMapEmpty!22630 (= (arr!21195 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6603)) mapDefault!22630)))))

(declare-fun b!812365 () Bool)

(assert (=> b!812365 (= e!450002 false)))

(declare-fun lt!364097 () Bool)

(declare-datatypes ((List!15136 0))(
  ( (Nil!15133) (Cons!15132 (h!16261 (_ BitVec 64)) (t!21459 List!15136)) )
))
(declare-fun arrayNoDuplicates!0 (array!44272 (_ BitVec 32) List!15136) Bool)

(assert (=> b!812365 (= lt!364097 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15133))))

(declare-fun b!812366 () Bool)

(declare-fun res!555228 () Bool)

(assert (=> b!812366 (=> (not res!555228) (not e!450002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44272 (_ BitVec 32)) Bool)

(assert (=> b!812366 (= res!555228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!69908 res!555230) b!812362))

(assert (= (and b!812362 res!555229) b!812366))

(assert (= (and b!812366 res!555228) b!812365))

(assert (= (and b!812364 condMapEmpty!22630) mapIsEmpty!22630))

(assert (= (and b!812364 (not condMapEmpty!22630)) mapNonEmpty!22630))

(get-info :version)

(assert (= (and mapNonEmpty!22630 ((_ is ValueCellFull!6603) mapValue!22630)) b!812363))

(assert (= (and b!812364 ((_ is ValueCellFull!6603) mapDefault!22630)) b!812361))

(assert (= start!69908 b!812364))

(declare-fun m!754815 () Bool)

(assert (=> start!69908 m!754815))

(declare-fun m!754817 () Bool)

(assert (=> start!69908 m!754817))

(declare-fun m!754819 () Bool)

(assert (=> start!69908 m!754819))

(declare-fun m!754821 () Bool)

(assert (=> mapNonEmpty!22630 m!754821))

(declare-fun m!754823 () Bool)

(assert (=> b!812365 m!754823))

(declare-fun m!754825 () Bool)

(assert (=> b!812366 m!754825))

(check-sat (not b!812365) (not mapNonEmpty!22630) tp_is_empty!14037 (not start!69908) (not b!812366))
(check-sat)
