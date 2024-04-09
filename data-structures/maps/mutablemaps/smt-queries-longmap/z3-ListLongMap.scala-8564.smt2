; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104608 () Bool)

(assert start!104608)

(declare-fun b!1247098 () Bool)

(declare-fun res!832249 () Bool)

(declare-fun e!707458 () Bool)

(assert (=> b!1247098 (=> (not res!832249) (not e!707458))))

(declare-datatypes ((array!80321 0))(
  ( (array!80322 (arr!38727 (Array (_ BitVec 32) (_ BitVec 64))) (size!39264 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80321)

(assert (=> b!1247098 (= res!832249 (and (bvsle #b00000000000000000000000000000000 (size!39264 _keys!1118)) (bvslt (size!39264 _keys!1118) #b01111111111111111111111111111111)))))

(declare-fun res!832251 () Bool)

(assert (=> start!104608 (=> (not res!832251) (not e!707458))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104608 (= res!832251 (validMask!0 mask!1466))))

(assert (=> start!104608 e!707458))

(assert (=> start!104608 true))

(declare-fun array_inv!29497 (array!80321) Bool)

(assert (=> start!104608 (array_inv!29497 _keys!1118)))

(declare-datatypes ((V!47129 0))(
  ( (V!47130 (val!15724 Int)) )
))
(declare-datatypes ((ValueCell!14898 0))(
  ( (ValueCellFull!14898 (v!18419 V!47129)) (EmptyCell!14898) )
))
(declare-datatypes ((array!80323 0))(
  ( (array!80324 (arr!38728 (Array (_ BitVec 32) ValueCell!14898)) (size!39265 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80323)

(declare-fun e!707455 () Bool)

(declare-fun array_inv!29498 (array!80323) Bool)

(assert (=> start!104608 (and (array_inv!29498 _values!914) e!707455)))

(declare-fun b!1247099 () Bool)

(declare-fun res!832250 () Bool)

(assert (=> b!1247099 (=> (not res!832250) (not e!707458))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247099 (= res!832250 (and (= (size!39265 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39264 _keys!1118) (size!39265 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247100 () Bool)

(declare-fun e!707456 () Bool)

(declare-fun tp_is_empty!31323 () Bool)

(assert (=> b!1247100 (= e!707456 tp_is_empty!31323)))

(declare-fun mapIsEmpty!48733 () Bool)

(declare-fun mapRes!48733 () Bool)

(assert (=> mapIsEmpty!48733 mapRes!48733))

(declare-fun b!1247101 () Bool)

(declare-datatypes ((List!27684 0))(
  ( (Nil!27681) (Cons!27680 (h!28889 (_ BitVec 64)) (t!41160 List!27684)) )
))
(declare-fun noDuplicate!2065 (List!27684) Bool)

(assert (=> b!1247101 (= e!707458 (not (noDuplicate!2065 Nil!27681)))))

(declare-fun b!1247102 () Bool)

(declare-fun e!707454 () Bool)

(assert (=> b!1247102 (= e!707455 (and e!707454 mapRes!48733))))

(declare-fun condMapEmpty!48733 () Bool)

(declare-fun mapDefault!48733 () ValueCell!14898)

(assert (=> b!1247102 (= condMapEmpty!48733 (= (arr!38728 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14898)) mapDefault!48733)))))

(declare-fun b!1247103 () Bool)

(assert (=> b!1247103 (= e!707454 tp_is_empty!31323)))

(declare-fun mapNonEmpty!48733 () Bool)

(declare-fun tp!92835 () Bool)

(assert (=> mapNonEmpty!48733 (= mapRes!48733 (and tp!92835 e!707456))))

(declare-fun mapKey!48733 () (_ BitVec 32))

(declare-fun mapValue!48733 () ValueCell!14898)

(declare-fun mapRest!48733 () (Array (_ BitVec 32) ValueCell!14898))

(assert (=> mapNonEmpty!48733 (= (arr!38728 _values!914) (store mapRest!48733 mapKey!48733 mapValue!48733))))

(declare-fun b!1247104 () Bool)

(declare-fun res!832252 () Bool)

(assert (=> b!1247104 (=> (not res!832252) (not e!707458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80321 (_ BitVec 32)) Bool)

(assert (=> b!1247104 (= res!832252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104608 res!832251) b!1247099))

(assert (= (and b!1247099 res!832250) b!1247104))

(assert (= (and b!1247104 res!832252) b!1247098))

(assert (= (and b!1247098 res!832249) b!1247101))

(assert (= (and b!1247102 condMapEmpty!48733) mapIsEmpty!48733))

(assert (= (and b!1247102 (not condMapEmpty!48733)) mapNonEmpty!48733))

(get-info :version)

(assert (= (and mapNonEmpty!48733 ((_ is ValueCellFull!14898) mapValue!48733)) b!1247100))

(assert (= (and b!1247102 ((_ is ValueCellFull!14898) mapDefault!48733)) b!1247103))

(assert (= start!104608 b!1247102))

(declare-fun m!1148735 () Bool)

(assert (=> start!104608 m!1148735))

(declare-fun m!1148737 () Bool)

(assert (=> start!104608 m!1148737))

(declare-fun m!1148739 () Bool)

(assert (=> start!104608 m!1148739))

(declare-fun m!1148741 () Bool)

(assert (=> b!1247101 m!1148741))

(declare-fun m!1148743 () Bool)

(assert (=> mapNonEmpty!48733 m!1148743))

(declare-fun m!1148745 () Bool)

(assert (=> b!1247104 m!1148745))

(check-sat (not b!1247104) (not start!104608) (not mapNonEmpty!48733) (not b!1247101) tp_is_empty!31323)
(check-sat)
(get-model)

(declare-fun d!137659 () Bool)

(assert (=> d!137659 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104608 d!137659))

(declare-fun d!137661 () Bool)

(assert (=> d!137661 (= (array_inv!29497 _keys!1118) (bvsge (size!39264 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104608 d!137661))

(declare-fun d!137663 () Bool)

(assert (=> d!137663 (= (array_inv!29498 _values!914) (bvsge (size!39265 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104608 d!137663))

(declare-fun b!1247134 () Bool)

(declare-fun e!707482 () Bool)

(declare-fun call!61556 () Bool)

(assert (=> b!1247134 (= e!707482 call!61556)))

(declare-fun b!1247136 () Bool)

(declare-fun e!707481 () Bool)

(assert (=> b!1247136 (= e!707482 e!707481)))

(declare-fun lt!563171 () (_ BitVec 64))

(assert (=> b!1247136 (= lt!563171 (select (arr!38727 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41411 0))(
  ( (Unit!41412) )
))
(declare-fun lt!563170 () Unit!41411)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80321 (_ BitVec 64) (_ BitVec 32)) Unit!41411)

(assert (=> b!1247136 (= lt!563170 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563171 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1247136 (arrayContainsKey!0 _keys!1118 lt!563171 #b00000000000000000000000000000000)))

(declare-fun lt!563169 () Unit!41411)

(assert (=> b!1247136 (= lt!563169 lt!563170)))

(declare-fun res!832270 () Bool)

(declare-datatypes ((SeekEntryResult!9951 0))(
  ( (MissingZero!9951 (index!42174 (_ BitVec 32))) (Found!9951 (index!42175 (_ BitVec 32))) (Intermediate!9951 (undefined!10763 Bool) (index!42176 (_ BitVec 32)) (x!109587 (_ BitVec 32))) (Undefined!9951) (MissingVacant!9951 (index!42177 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80321 (_ BitVec 32)) SeekEntryResult!9951)

(assert (=> b!1247136 (= res!832270 (= (seekEntryOrOpen!0 (select (arr!38727 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9951 #b00000000000000000000000000000000)))))

(assert (=> b!1247136 (=> (not res!832270) (not e!707481))))

(declare-fun b!1247137 () Bool)

(assert (=> b!1247137 (= e!707481 call!61556)))

(declare-fun bm!61553 () Bool)

(assert (=> bm!61553 (= call!61556 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1247135 () Bool)

(declare-fun e!707480 () Bool)

(assert (=> b!1247135 (= e!707480 e!707482)))

(declare-fun c!122040 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1247135 (= c!122040 (validKeyInArray!0 (select (arr!38727 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137665 () Bool)

(declare-fun res!832269 () Bool)

(assert (=> d!137665 (=> res!832269 e!707480)))

(assert (=> d!137665 (= res!832269 (bvsge #b00000000000000000000000000000000 (size!39264 _keys!1118)))))

(assert (=> d!137665 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!707480)))

(assert (= (and d!137665 (not res!832269)) b!1247135))

(assert (= (and b!1247135 c!122040) b!1247136))

(assert (= (and b!1247135 (not c!122040)) b!1247134))

(assert (= (and b!1247136 res!832270) b!1247137))

(assert (= (or b!1247137 b!1247134) bm!61553))

(declare-fun m!1148759 () Bool)

(assert (=> b!1247136 m!1148759))

(declare-fun m!1148761 () Bool)

(assert (=> b!1247136 m!1148761))

(declare-fun m!1148763 () Bool)

(assert (=> b!1247136 m!1148763))

(assert (=> b!1247136 m!1148759))

(declare-fun m!1148765 () Bool)

(assert (=> b!1247136 m!1148765))

(declare-fun m!1148767 () Bool)

(assert (=> bm!61553 m!1148767))

(assert (=> b!1247135 m!1148759))

(assert (=> b!1247135 m!1148759))

(declare-fun m!1148769 () Bool)

(assert (=> b!1247135 m!1148769))

(assert (=> b!1247104 d!137665))

(declare-fun d!137667 () Bool)

(declare-fun res!832275 () Bool)

(declare-fun e!707487 () Bool)

(assert (=> d!137667 (=> res!832275 e!707487)))

(assert (=> d!137667 (= res!832275 ((_ is Nil!27681) Nil!27681))))

(assert (=> d!137667 (= (noDuplicate!2065 Nil!27681) e!707487)))

(declare-fun b!1247142 () Bool)

(declare-fun e!707488 () Bool)

(assert (=> b!1247142 (= e!707487 e!707488)))

(declare-fun res!832276 () Bool)

(assert (=> b!1247142 (=> (not res!832276) (not e!707488))))

(declare-fun contains!7481 (List!27684 (_ BitVec 64)) Bool)

(assert (=> b!1247142 (= res!832276 (not (contains!7481 (t!41160 Nil!27681) (h!28889 Nil!27681))))))

(declare-fun b!1247143 () Bool)

(assert (=> b!1247143 (= e!707488 (noDuplicate!2065 (t!41160 Nil!27681)))))

(assert (= (and d!137667 (not res!832275)) b!1247142))

(assert (= (and b!1247142 res!832276) b!1247143))

(declare-fun m!1148771 () Bool)

(assert (=> b!1247142 m!1148771))

(declare-fun m!1148773 () Bool)

(assert (=> b!1247143 m!1148773))

(assert (=> b!1247101 d!137667))

(declare-fun b!1247151 () Bool)

(declare-fun e!707494 () Bool)

(assert (=> b!1247151 (= e!707494 tp_is_empty!31323)))

(declare-fun condMapEmpty!48739 () Bool)

(declare-fun mapDefault!48739 () ValueCell!14898)

(assert (=> mapNonEmpty!48733 (= condMapEmpty!48739 (= mapRest!48733 ((as const (Array (_ BitVec 32) ValueCell!14898)) mapDefault!48739)))))

(declare-fun mapRes!48739 () Bool)

(assert (=> mapNonEmpty!48733 (= tp!92835 (and e!707494 mapRes!48739))))

(declare-fun b!1247150 () Bool)

(declare-fun e!707493 () Bool)

(assert (=> b!1247150 (= e!707493 tp_is_empty!31323)))

(declare-fun mapNonEmpty!48739 () Bool)

(declare-fun tp!92841 () Bool)

(assert (=> mapNonEmpty!48739 (= mapRes!48739 (and tp!92841 e!707493))))

(declare-fun mapKey!48739 () (_ BitVec 32))

(declare-fun mapRest!48739 () (Array (_ BitVec 32) ValueCell!14898))

(declare-fun mapValue!48739 () ValueCell!14898)

(assert (=> mapNonEmpty!48739 (= mapRest!48733 (store mapRest!48739 mapKey!48739 mapValue!48739))))

(declare-fun mapIsEmpty!48739 () Bool)

(assert (=> mapIsEmpty!48739 mapRes!48739))

(assert (= (and mapNonEmpty!48733 condMapEmpty!48739) mapIsEmpty!48739))

(assert (= (and mapNonEmpty!48733 (not condMapEmpty!48739)) mapNonEmpty!48739))

(assert (= (and mapNonEmpty!48739 ((_ is ValueCellFull!14898) mapValue!48739)) b!1247150))

(assert (= (and mapNonEmpty!48733 ((_ is ValueCellFull!14898) mapDefault!48739)) b!1247151))

(declare-fun m!1148775 () Bool)

(assert (=> mapNonEmpty!48739 m!1148775))

(check-sat (not b!1247143) (not bm!61553) tp_is_empty!31323 (not b!1247142) (not b!1247135) (not b!1247136) (not mapNonEmpty!48739))
(check-sat)
