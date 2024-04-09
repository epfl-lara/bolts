; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104562 () Bool)

(assert start!104562)

(declare-fun mapIsEmpty!48688 () Bool)

(declare-fun mapRes!48688 () Bool)

(assert (=> mapIsEmpty!48688 mapRes!48688))

(declare-fun mapNonEmpty!48688 () Bool)

(declare-fun tp!92790 () Bool)

(declare-fun e!707238 () Bool)

(assert (=> mapNonEmpty!48688 (= mapRes!48688 (and tp!92790 e!707238))))

(declare-datatypes ((V!47097 0))(
  ( (V!47098 (val!15712 Int)) )
))
(declare-datatypes ((ValueCell!14886 0))(
  ( (ValueCellFull!14886 (v!18407 V!47097)) (EmptyCell!14886) )
))
(declare-fun mapRest!48688 () (Array (_ BitVec 32) ValueCell!14886))

(declare-fun mapKey!48688 () (_ BitVec 32))

(declare-fun mapValue!48688 () ValueCell!14886)

(declare-datatypes ((array!80271 0))(
  ( (array!80272 (arr!38705 (Array (_ BitVec 32) ValueCell!14886)) (size!39242 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80271)

(assert (=> mapNonEmpty!48688 (= (arr!38705 _values!914) (store mapRest!48688 mapKey!48688 mapValue!48688))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80273 0))(
  ( (array!80274 (arr!38706 (Array (_ BitVec 32) (_ BitVec 64))) (size!39243 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80273)

(declare-fun e!707242 () Bool)

(declare-fun b!1246855 () Bool)

(assert (=> b!1246855 (= e!707242 (and (= (size!39242 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39243 _keys!1118) (size!39242 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (size!39243 _keys!1118) (bvadd #b00000000000000000000000000000001 mask!1466)))))))

(declare-fun b!1246856 () Bool)

(declare-fun e!707239 () Bool)

(declare-fun e!707240 () Bool)

(assert (=> b!1246856 (= e!707239 (and e!707240 mapRes!48688))))

(declare-fun condMapEmpty!48688 () Bool)

(declare-fun mapDefault!48688 () ValueCell!14886)

(assert (=> b!1246856 (= condMapEmpty!48688 (= (arr!38705 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14886)) mapDefault!48688)))))

(declare-fun b!1246857 () Bool)

(declare-fun tp_is_empty!31299 () Bool)

(assert (=> b!1246857 (= e!707240 tp_is_empty!31299)))

(declare-fun res!832150 () Bool)

(assert (=> start!104562 (=> (not res!832150) (not e!707242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104562 (= res!832150 (validMask!0 mask!1466))))

(assert (=> start!104562 e!707242))

(assert (=> start!104562 true))

(declare-fun array_inv!29481 (array!80273) Bool)

(assert (=> start!104562 (array_inv!29481 _keys!1118)))

(declare-fun array_inv!29482 (array!80271) Bool)

(assert (=> start!104562 (and (array_inv!29482 _values!914) e!707239)))

(declare-fun b!1246858 () Bool)

(assert (=> b!1246858 (= e!707238 tp_is_empty!31299)))

(assert (= (and start!104562 res!832150) b!1246855))

(assert (= (and b!1246856 condMapEmpty!48688) mapIsEmpty!48688))

(assert (= (and b!1246856 (not condMapEmpty!48688)) mapNonEmpty!48688))

(get-info :version)

(assert (= (and mapNonEmpty!48688 ((_ is ValueCellFull!14886) mapValue!48688)) b!1246858))

(assert (= (and b!1246856 ((_ is ValueCellFull!14886) mapDefault!48688)) b!1246857))

(assert (= start!104562 b!1246856))

(declare-fun m!1148593 () Bool)

(assert (=> mapNonEmpty!48688 m!1148593))

(declare-fun m!1148595 () Bool)

(assert (=> start!104562 m!1148595))

(declare-fun m!1148597 () Bool)

(assert (=> start!104562 m!1148597))

(declare-fun m!1148599 () Bool)

(assert (=> start!104562 m!1148599))

(check-sat (not start!104562) (not mapNonEmpty!48688) tp_is_empty!31299)
(check-sat)
