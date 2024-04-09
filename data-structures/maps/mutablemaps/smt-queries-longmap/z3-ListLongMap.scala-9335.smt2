; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111484 () Bool)

(assert start!111484)

(declare-fun b_free!30105 () Bool)

(declare-fun b_next!30105 () Bool)

(assert (=> start!111484 (= b_free!30105 (not b_next!30105))))

(declare-fun tp!105791 () Bool)

(declare-fun b_and!48379 () Bool)

(assert (=> start!111484 (= tp!105791 b_and!48379)))

(declare-fun b!1318954 () Bool)

(declare-fun res!875457 () Bool)

(declare-fun e!752601 () Bool)

(assert (=> b!1318954 (=> (not res!875457) (not e!752601))))

(declare-datatypes ((array!88749 0))(
  ( (array!88750 (arr!42844 (Array (_ BitVec 32) (_ BitVec 64))) (size!43395 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88749)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53003 0))(
  ( (V!53004 (val!18037 Int)) )
))
(declare-datatypes ((ValueCell!17064 0))(
  ( (ValueCellFull!17064 (v!20665 V!53003)) (EmptyCell!17064) )
))
(declare-datatypes ((array!88751 0))(
  ( (array!88752 (arr!42845 (Array (_ BitVec 32) ValueCell!17064)) (size!43396 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88751)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318954 (= res!875457 (and (= (size!43396 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43395 _keys!1609) (size!43396 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55535 () Bool)

(declare-fun mapRes!55535 () Bool)

(assert (=> mapIsEmpty!55535 mapRes!55535))

(declare-fun b!1318955 () Bool)

(declare-fun res!875458 () Bool)

(assert (=> b!1318955 (=> (not res!875458) (not e!752601))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318955 (= res!875458 (not (= (select (arr!42844 _keys!1609) from!2000) k0!1164)))))

(declare-fun res!875461 () Bool)

(assert (=> start!111484 (=> (not res!875461) (not e!752601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111484 (= res!875461 (validMask!0 mask!2019))))

(assert (=> start!111484 e!752601))

(declare-fun array_inv!32301 (array!88749) Bool)

(assert (=> start!111484 (array_inv!32301 _keys!1609)))

(assert (=> start!111484 true))

(declare-fun tp_is_empty!35925 () Bool)

(assert (=> start!111484 tp_is_empty!35925))

(declare-fun e!752599 () Bool)

(declare-fun array_inv!32302 (array!88751) Bool)

(assert (=> start!111484 (and (array_inv!32302 _values!1337) e!752599)))

(assert (=> start!111484 tp!105791))

(declare-fun b!1318956 () Bool)

(declare-fun e!752600 () Bool)

(assert (=> b!1318956 (= e!752599 (and e!752600 mapRes!55535))))

(declare-fun condMapEmpty!55535 () Bool)

(declare-fun mapDefault!55535 () ValueCell!17064)

(assert (=> b!1318956 (= condMapEmpty!55535 (= (arr!42845 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17064)) mapDefault!55535)))))

(declare-fun b!1318957 () Bool)

(assert (=> b!1318957 (= e!752601 (not true))))

(declare-datatypes ((tuple2!23368 0))(
  ( (tuple2!23369 (_1!11694 (_ BitVec 64)) (_2!11694 V!53003)) )
))
(declare-datatypes ((List!30557 0))(
  ( (Nil!30554) (Cons!30553 (h!31762 tuple2!23368) (t!44218 List!30557)) )
))
(declare-datatypes ((ListLongMap!21037 0))(
  ( (ListLongMap!21038 (toList!10534 List!30557)) )
))
(declare-fun lt!586506 () ListLongMap!21037)

(declare-fun contains!8625 (ListLongMap!21037 (_ BitVec 64)) Bool)

(assert (=> b!1318957 (contains!8625 lt!586506 k0!1164)))

(declare-datatypes ((Unit!43386 0))(
  ( (Unit!43387) )
))
(declare-fun lt!586507 () Unit!43386)

(declare-fun minValue!1279 () V!53003)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!108 ((_ BitVec 64) (_ BitVec 64) V!53003 ListLongMap!21037) Unit!43386)

(assert (=> b!1318957 (= lt!586507 (lemmaInListMapAfterAddingDiffThenInBefore!108 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586506))))

(declare-fun zeroValue!1279 () V!53003)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4493 (ListLongMap!21037 tuple2!23368) ListLongMap!21037)

(declare-fun getCurrentListMapNoExtraKeys!6208 (array!88749 array!88751 (_ BitVec 32) (_ BitVec 32) V!53003 V!53003 (_ BitVec 32) Int) ListLongMap!21037)

(declare-fun get!21575 (ValueCell!17064 V!53003) V!53003)

(declare-fun dynLambda!3530 (Int (_ BitVec 64)) V!53003)

(assert (=> b!1318957 (= lt!586506 (+!4493 (+!4493 (getCurrentListMapNoExtraKeys!6208 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23369 (select (arr!42844 _keys!1609) from!2000) (get!21575 (select (arr!42845 _values!1337) from!2000) (dynLambda!3530 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23369 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318958 () Bool)

(assert (=> b!1318958 (= e!752600 tp_is_empty!35925)))

(declare-fun b!1318959 () Bool)

(declare-fun res!875460 () Bool)

(assert (=> b!1318959 (=> (not res!875460) (not e!752601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88749 (_ BitVec 32)) Bool)

(assert (=> b!1318959 (= res!875460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318960 () Bool)

(declare-fun e!752602 () Bool)

(assert (=> b!1318960 (= e!752602 tp_is_empty!35925)))

(declare-fun b!1318961 () Bool)

(declare-fun res!875464 () Bool)

(assert (=> b!1318961 (=> (not res!875464) (not e!752601))))

(assert (=> b!1318961 (= res!875464 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43395 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318962 () Bool)

(declare-fun res!875459 () Bool)

(assert (=> b!1318962 (=> (not res!875459) (not e!752601))))

(declare-fun getCurrentListMap!5486 (array!88749 array!88751 (_ BitVec 32) (_ BitVec 32) V!53003 V!53003 (_ BitVec 32) Int) ListLongMap!21037)

(assert (=> b!1318962 (= res!875459 (contains!8625 (getCurrentListMap!5486 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55535 () Bool)

(declare-fun tp!105792 () Bool)

(assert (=> mapNonEmpty!55535 (= mapRes!55535 (and tp!105792 e!752602))))

(declare-fun mapValue!55535 () ValueCell!17064)

(declare-fun mapKey!55535 () (_ BitVec 32))

(declare-fun mapRest!55535 () (Array (_ BitVec 32) ValueCell!17064))

(assert (=> mapNonEmpty!55535 (= (arr!42845 _values!1337) (store mapRest!55535 mapKey!55535 mapValue!55535))))

(declare-fun b!1318963 () Bool)

(declare-fun res!875462 () Bool)

(assert (=> b!1318963 (=> (not res!875462) (not e!752601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318963 (= res!875462 (validKeyInArray!0 (select (arr!42844 _keys!1609) from!2000)))))

(declare-fun b!1318964 () Bool)

(declare-fun res!875463 () Bool)

(assert (=> b!1318964 (=> (not res!875463) (not e!752601))))

(declare-datatypes ((List!30558 0))(
  ( (Nil!30555) (Cons!30554 (h!31763 (_ BitVec 64)) (t!44219 List!30558)) )
))
(declare-fun arrayNoDuplicates!0 (array!88749 (_ BitVec 32) List!30558) Bool)

(assert (=> b!1318964 (= res!875463 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30555))))

(assert (= (and start!111484 res!875461) b!1318954))

(assert (= (and b!1318954 res!875457) b!1318959))

(assert (= (and b!1318959 res!875460) b!1318964))

(assert (= (and b!1318964 res!875463) b!1318961))

(assert (= (and b!1318961 res!875464) b!1318962))

(assert (= (and b!1318962 res!875459) b!1318955))

(assert (= (and b!1318955 res!875458) b!1318963))

(assert (= (and b!1318963 res!875462) b!1318957))

(assert (= (and b!1318956 condMapEmpty!55535) mapIsEmpty!55535))

(assert (= (and b!1318956 (not condMapEmpty!55535)) mapNonEmpty!55535))

(get-info :version)

(assert (= (and mapNonEmpty!55535 ((_ is ValueCellFull!17064) mapValue!55535)) b!1318960))

(assert (= (and b!1318956 ((_ is ValueCellFull!17064) mapDefault!55535)) b!1318958))

(assert (= start!111484 b!1318956))

(declare-fun b_lambda!23441 () Bool)

(assert (=> (not b_lambda!23441) (not b!1318957)))

(declare-fun t!44217 () Bool)

(declare-fun tb!11465 () Bool)

(assert (=> (and start!111484 (= defaultEntry!1340 defaultEntry!1340) t!44217) tb!11465))

(declare-fun result!23977 () Bool)

(assert (=> tb!11465 (= result!23977 tp_is_empty!35925)))

(assert (=> b!1318957 t!44217))

(declare-fun b_and!48381 () Bool)

(assert (= b_and!48379 (and (=> t!44217 result!23977) b_and!48381)))

(declare-fun m!1206579 () Bool)

(assert (=> b!1318963 m!1206579))

(assert (=> b!1318963 m!1206579))

(declare-fun m!1206581 () Bool)

(assert (=> b!1318963 m!1206581))

(declare-fun m!1206583 () Bool)

(assert (=> start!111484 m!1206583))

(declare-fun m!1206585 () Bool)

(assert (=> start!111484 m!1206585))

(declare-fun m!1206587 () Bool)

(assert (=> start!111484 m!1206587))

(declare-fun m!1206589 () Bool)

(assert (=> b!1318957 m!1206589))

(declare-fun m!1206591 () Bool)

(assert (=> b!1318957 m!1206591))

(assert (=> b!1318957 m!1206589))

(declare-fun m!1206593 () Bool)

(assert (=> b!1318957 m!1206593))

(declare-fun m!1206595 () Bool)

(assert (=> b!1318957 m!1206595))

(assert (=> b!1318957 m!1206593))

(declare-fun m!1206597 () Bool)

(assert (=> b!1318957 m!1206597))

(declare-fun m!1206599 () Bool)

(assert (=> b!1318957 m!1206599))

(assert (=> b!1318957 m!1206591))

(declare-fun m!1206601 () Bool)

(assert (=> b!1318957 m!1206601))

(assert (=> b!1318957 m!1206579))

(assert (=> b!1318957 m!1206599))

(declare-fun m!1206603 () Bool)

(assert (=> b!1318957 m!1206603))

(declare-fun m!1206605 () Bool)

(assert (=> mapNonEmpty!55535 m!1206605))

(declare-fun m!1206607 () Bool)

(assert (=> b!1318964 m!1206607))

(declare-fun m!1206609 () Bool)

(assert (=> b!1318962 m!1206609))

(assert (=> b!1318962 m!1206609))

(declare-fun m!1206611 () Bool)

(assert (=> b!1318962 m!1206611))

(assert (=> b!1318955 m!1206579))

(declare-fun m!1206613 () Bool)

(assert (=> b!1318959 m!1206613))

(check-sat (not b!1318959) (not mapNonEmpty!55535) (not b!1318964) (not b_next!30105) (not start!111484) (not b!1318963) (not b!1318962) (not b_lambda!23441) tp_is_empty!35925 (not b!1318957) b_and!48381)
(check-sat b_and!48381 (not b_next!30105))
