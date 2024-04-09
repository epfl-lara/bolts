; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69920 () Bool)

(assert start!69920)

(declare-fun b!812469 () Bool)

(declare-fun res!555283 () Bool)

(declare-fun e!450094 () Bool)

(assert (=> b!812469 (=> (not res!555283) (not e!450094))))

(declare-datatypes ((array!44292 0))(
  ( (array!44293 (arr!21204 (Array (_ BitVec 32) (_ BitVec 64))) (size!21625 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44292)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23733 0))(
  ( (V!23734 (val!7072 Int)) )
))
(declare-datatypes ((ValueCell!6609 0))(
  ( (ValueCellFull!6609 (v!9495 V!23733)) (EmptyCell!6609) )
))
(declare-datatypes ((array!44294 0))(
  ( (array!44295 (arr!21205 (Array (_ BitVec 32) ValueCell!6609)) (size!21626 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44294)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812469 (= res!555283 (and (= (size!21626 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21625 _keys!976) (size!21626 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812470 () Bool)

(declare-fun e!450093 () Bool)

(declare-fun tp_is_empty!14049 () Bool)

(assert (=> b!812470 (= e!450093 tp_is_empty!14049)))

(declare-fun b!812471 () Bool)

(declare-fun res!555282 () Bool)

(assert (=> b!812471 (=> (not res!555282) (not e!450094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44292 (_ BitVec 32)) Bool)

(assert (=> b!812471 (= res!555282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812472 () Bool)

(assert (=> b!812472 (= e!450094 false)))

(declare-fun lt!364115 () Bool)

(declare-datatypes ((List!15140 0))(
  ( (Nil!15137) (Cons!15136 (h!16265 (_ BitVec 64)) (t!21463 List!15140)) )
))
(declare-fun arrayNoDuplicates!0 (array!44292 (_ BitVec 32) List!15140) Bool)

(assert (=> b!812472 (= lt!364115 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15137))))

(declare-fun res!555284 () Bool)

(assert (=> start!69920 (=> (not res!555284) (not e!450094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69920 (= res!555284 (validMask!0 mask!1312))))

(assert (=> start!69920 e!450094))

(declare-fun array_inv!16963 (array!44292) Bool)

(assert (=> start!69920 (array_inv!16963 _keys!976)))

(assert (=> start!69920 true))

(declare-fun e!450095 () Bool)

(declare-fun array_inv!16964 (array!44294) Bool)

(assert (=> start!69920 (and (array_inv!16964 _values!788) e!450095)))

(declare-fun b!812473 () Bool)

(declare-fun e!450091 () Bool)

(declare-fun mapRes!22648 () Bool)

(assert (=> b!812473 (= e!450095 (and e!450091 mapRes!22648))))

(declare-fun condMapEmpty!22648 () Bool)

(declare-fun mapDefault!22648 () ValueCell!6609)

(assert (=> b!812473 (= condMapEmpty!22648 (= (arr!21205 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6609)) mapDefault!22648)))))

(declare-fun mapIsEmpty!22648 () Bool)

(assert (=> mapIsEmpty!22648 mapRes!22648))

(declare-fun b!812474 () Bool)

(assert (=> b!812474 (= e!450091 tp_is_empty!14049)))

(declare-fun mapNonEmpty!22648 () Bool)

(declare-fun tp!43756 () Bool)

(assert (=> mapNonEmpty!22648 (= mapRes!22648 (and tp!43756 e!450093))))

(declare-fun mapValue!22648 () ValueCell!6609)

(declare-fun mapRest!22648 () (Array (_ BitVec 32) ValueCell!6609))

(declare-fun mapKey!22648 () (_ BitVec 32))

(assert (=> mapNonEmpty!22648 (= (arr!21205 _values!788) (store mapRest!22648 mapKey!22648 mapValue!22648))))

(assert (= (and start!69920 res!555284) b!812469))

(assert (= (and b!812469 res!555283) b!812471))

(assert (= (and b!812471 res!555282) b!812472))

(assert (= (and b!812473 condMapEmpty!22648) mapIsEmpty!22648))

(assert (= (and b!812473 (not condMapEmpty!22648)) mapNonEmpty!22648))

(get-info :version)

(assert (= (and mapNonEmpty!22648 ((_ is ValueCellFull!6609) mapValue!22648)) b!812470))

(assert (= (and b!812473 ((_ is ValueCellFull!6609) mapDefault!22648)) b!812474))

(assert (= start!69920 b!812473))

(declare-fun m!754887 () Bool)

(assert (=> b!812471 m!754887))

(declare-fun m!754889 () Bool)

(assert (=> b!812472 m!754889))

(declare-fun m!754891 () Bool)

(assert (=> start!69920 m!754891))

(declare-fun m!754893 () Bool)

(assert (=> start!69920 m!754893))

(declare-fun m!754895 () Bool)

(assert (=> start!69920 m!754895))

(declare-fun m!754897 () Bool)

(assert (=> mapNonEmpty!22648 m!754897))

(check-sat (not b!812472) (not start!69920) (not mapNonEmpty!22648) (not b!812471) tp_is_empty!14049)
(check-sat)
