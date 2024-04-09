; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110760 () Bool)

(assert start!110760)

(declare-fun b_free!29559 () Bool)

(declare-fun b_next!29559 () Bool)

(assert (=> start!110760 (= b_free!29559 (not b_next!29559))))

(declare-fun tp!104000 () Bool)

(declare-fun b_and!47777 () Bool)

(assert (=> start!110760 (= tp!104000 b_and!47777)))

(declare-fun b!1310306 () Bool)

(declare-fun res!869961 () Bool)

(declare-fun e!747529 () Bool)

(assert (=> b!1310306 (=> (not res!869961) (not e!747529))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87533 0))(
  ( (array!87534 (arr!42242 (Array (_ BitVec 32) (_ BitVec 64))) (size!42793 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87533)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52155 0))(
  ( (V!52156 (val!17719 Int)) )
))
(declare-fun minValue!1296 () V!52155)

(declare-datatypes ((ValueCell!16746 0))(
  ( (ValueCellFull!16746 (v!20344 V!52155)) (EmptyCell!16746) )
))
(declare-datatypes ((array!87535 0))(
  ( (array!87536 (arr!42243 (Array (_ BitVec 32) ValueCell!16746)) (size!42794 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87535)

(declare-fun zeroValue!1296 () V!52155)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22996 0))(
  ( (tuple2!22997 (_1!11508 (_ BitVec 64)) (_2!11508 V!52155)) )
))
(declare-datatypes ((List!30161 0))(
  ( (Nil!30158) (Cons!30157 (h!31366 tuple2!22996) (t!43774 List!30161)) )
))
(declare-datatypes ((ListLongMap!20665 0))(
  ( (ListLongMap!20666 (toList!10348 List!30161)) )
))
(declare-fun contains!8434 (ListLongMap!20665 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5304 (array!87533 array!87535 (_ BitVec 32) (_ BitVec 32) V!52155 V!52155 (_ BitVec 32) Int) ListLongMap!20665)

(assert (=> b!1310306 (= res!869961 (contains!8434 (getCurrentListMap!5304 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310307 () Bool)

(declare-fun res!869960 () Bool)

(assert (=> b!1310307 (=> (not res!869960) (not e!747529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87533 (_ BitVec 32)) Bool)

(assert (=> b!1310307 (= res!869960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54562 () Bool)

(declare-fun mapRes!54562 () Bool)

(assert (=> mapIsEmpty!54562 mapRes!54562))

(declare-fun b!1310308 () Bool)

(declare-fun res!869956 () Bool)

(assert (=> b!1310308 (=> (not res!869956) (not e!747529))))

(assert (=> b!1310308 (= res!869956 (and (= (size!42794 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42793 _keys!1628) (size!42794 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310309 () Bool)

(declare-fun res!869955 () Bool)

(assert (=> b!1310309 (=> (not res!869955) (not e!747529))))

(assert (=> b!1310309 (= res!869955 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310310 () Bool)

(declare-fun res!869958 () Bool)

(assert (=> b!1310310 (=> (not res!869958) (not e!747529))))

(assert (=> b!1310310 (= res!869958 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42793 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310311 () Bool)

(declare-fun e!747528 () Bool)

(declare-fun tp_is_empty!35289 () Bool)

(assert (=> b!1310311 (= e!747528 tp_is_empty!35289)))

(declare-fun b!1310313 () Bool)

(declare-fun e!747530 () Bool)

(assert (=> b!1310313 (= e!747530 tp_is_empty!35289)))

(declare-fun b!1310314 () Bool)

(declare-fun e!747527 () Bool)

(assert (=> b!1310314 (= e!747527 (and e!747528 mapRes!54562))))

(declare-fun condMapEmpty!54562 () Bool)

(declare-fun mapDefault!54562 () ValueCell!16746)

(assert (=> b!1310314 (= condMapEmpty!54562 (= (arr!42243 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16746)) mapDefault!54562)))))

(declare-fun b!1310315 () Bool)

(assert (=> b!1310315 (= e!747529 (not true))))

(assert (=> b!1310315 (contains!8434 (getCurrentListMap!5304 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43282 0))(
  ( (Unit!43283) )
))
(declare-fun lt!585289 () Unit!43282)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!15 (array!87533 array!87535 (_ BitVec 32) (_ BitVec 32) V!52155 V!52155 (_ BitVec 64) (_ BitVec 32) Int) Unit!43282)

(assert (=> b!1310315 (= lt!585289 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!15 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310316 () Bool)

(declare-fun res!869963 () Bool)

(assert (=> b!1310316 (=> (not res!869963) (not e!747529))))

(declare-datatypes ((List!30162 0))(
  ( (Nil!30159) (Cons!30158 (h!31367 (_ BitVec 64)) (t!43775 List!30162)) )
))
(declare-fun arrayNoDuplicates!0 (array!87533 (_ BitVec 32) List!30162) Bool)

(assert (=> b!1310316 (= res!869963 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30159))))

(declare-fun res!869962 () Bool)

(assert (=> start!110760 (=> (not res!869962) (not e!747529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110760 (= res!869962 (validMask!0 mask!2040))))

(assert (=> start!110760 e!747529))

(assert (=> start!110760 tp!104000))

(declare-fun array_inv!31913 (array!87533) Bool)

(assert (=> start!110760 (array_inv!31913 _keys!1628)))

(assert (=> start!110760 true))

(assert (=> start!110760 tp_is_empty!35289))

(declare-fun array_inv!31914 (array!87535) Bool)

(assert (=> start!110760 (and (array_inv!31914 _values!1354) e!747527)))

(declare-fun b!1310312 () Bool)

(declare-fun res!869957 () Bool)

(assert (=> b!1310312 (=> (not res!869957) (not e!747529))))

(assert (=> b!1310312 (= res!869957 (not (= (select (arr!42242 _keys!1628) from!2020) k0!1175)))))

(declare-fun mapNonEmpty!54562 () Bool)

(declare-fun tp!103999 () Bool)

(assert (=> mapNonEmpty!54562 (= mapRes!54562 (and tp!103999 e!747530))))

(declare-fun mapValue!54562 () ValueCell!16746)

(declare-fun mapRest!54562 () (Array (_ BitVec 32) ValueCell!16746))

(declare-fun mapKey!54562 () (_ BitVec 32))

(assert (=> mapNonEmpty!54562 (= (arr!42243 _values!1354) (store mapRest!54562 mapKey!54562 mapValue!54562))))

(declare-fun b!1310317 () Bool)

(declare-fun res!869959 () Bool)

(assert (=> b!1310317 (=> (not res!869959) (not e!747529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310317 (= res!869959 (validKeyInArray!0 (select (arr!42242 _keys!1628) from!2020)))))

(assert (= (and start!110760 res!869962) b!1310308))

(assert (= (and b!1310308 res!869956) b!1310307))

(assert (= (and b!1310307 res!869960) b!1310316))

(assert (= (and b!1310316 res!869963) b!1310310))

(assert (= (and b!1310310 res!869958) b!1310306))

(assert (= (and b!1310306 res!869961) b!1310312))

(assert (= (and b!1310312 res!869957) b!1310317))

(assert (= (and b!1310317 res!869959) b!1310309))

(assert (= (and b!1310309 res!869955) b!1310315))

(assert (= (and b!1310314 condMapEmpty!54562) mapIsEmpty!54562))

(assert (= (and b!1310314 (not condMapEmpty!54562)) mapNonEmpty!54562))

(get-info :version)

(assert (= (and mapNonEmpty!54562 ((_ is ValueCellFull!16746) mapValue!54562)) b!1310313))

(assert (= (and b!1310314 ((_ is ValueCellFull!16746) mapDefault!54562)) b!1310311))

(assert (= start!110760 b!1310314))

(declare-fun m!1200137 () Bool)

(assert (=> b!1310306 m!1200137))

(assert (=> b!1310306 m!1200137))

(declare-fun m!1200139 () Bool)

(assert (=> b!1310306 m!1200139))

(declare-fun m!1200141 () Bool)

(assert (=> b!1310316 m!1200141))

(declare-fun m!1200143 () Bool)

(assert (=> mapNonEmpty!54562 m!1200143))

(declare-fun m!1200145 () Bool)

(assert (=> b!1310312 m!1200145))

(declare-fun m!1200147 () Bool)

(assert (=> start!110760 m!1200147))

(declare-fun m!1200149 () Bool)

(assert (=> start!110760 m!1200149))

(declare-fun m!1200151 () Bool)

(assert (=> start!110760 m!1200151))

(declare-fun m!1200153 () Bool)

(assert (=> b!1310307 m!1200153))

(assert (=> b!1310317 m!1200145))

(assert (=> b!1310317 m!1200145))

(declare-fun m!1200155 () Bool)

(assert (=> b!1310317 m!1200155))

(declare-fun m!1200157 () Bool)

(assert (=> b!1310315 m!1200157))

(assert (=> b!1310315 m!1200157))

(declare-fun m!1200159 () Bool)

(assert (=> b!1310315 m!1200159))

(declare-fun m!1200161 () Bool)

(assert (=> b!1310315 m!1200161))

(check-sat (not mapNonEmpty!54562) (not b!1310307) tp_is_empty!35289 (not start!110760) (not b!1310306) b_and!47777 (not b!1310316) (not b!1310317) (not b!1310315) (not b_next!29559))
(check-sat b_and!47777 (not b_next!29559))
