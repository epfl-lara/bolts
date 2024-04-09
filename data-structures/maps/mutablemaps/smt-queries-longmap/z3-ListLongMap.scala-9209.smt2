; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110640 () Bool)

(assert start!110640)

(declare-fun b_free!29439 () Bool)

(declare-fun b_next!29439 () Bool)

(assert (=> start!110640 (= b_free!29439 (not b_next!29439))))

(declare-fun tp!103640 () Bool)

(declare-fun b_and!47657 () Bool)

(assert (=> start!110640 (= tp!103640 b_and!47657)))

(declare-fun mapNonEmpty!54382 () Bool)

(declare-fun mapRes!54382 () Bool)

(declare-fun tp!103639 () Bool)

(declare-fun e!746627 () Bool)

(assert (=> mapNonEmpty!54382 (= mapRes!54382 (and tp!103639 e!746627))))

(declare-fun mapKey!54382 () (_ BitVec 32))

(declare-datatypes ((V!51995 0))(
  ( (V!51996 (val!17659 Int)) )
))
(declare-datatypes ((ValueCell!16686 0))(
  ( (ValueCellFull!16686 (v!20284 V!51995)) (EmptyCell!16686) )
))
(declare-fun mapValue!54382 () ValueCell!16686)

(declare-fun mapRest!54382 () (Array (_ BitVec 32) ValueCell!16686))

(declare-datatypes ((array!87303 0))(
  ( (array!87304 (arr!42127 (Array (_ BitVec 32) ValueCell!16686)) (size!42678 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87303)

(assert (=> mapNonEmpty!54382 (= (arr!42127 _values!1354) (store mapRest!54382 mapKey!54382 mapValue!54382))))

(declare-fun b!1308578 () Bool)

(declare-fun res!868770 () Bool)

(declare-fun e!746628 () Bool)

(assert (=> b!1308578 (=> (not res!868770) (not e!746628))))

(declare-datatypes ((array!87305 0))(
  ( (array!87306 (arr!42128 (Array (_ BitVec 32) (_ BitVec 64))) (size!42679 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87305)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308578 (= res!868770 (not (= (select (arr!42128 _keys!1628) from!2020) k0!1175)))))

(declare-fun res!868775 () Bool)

(assert (=> start!110640 (=> (not res!868775) (not e!746628))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110640 (= res!868775 (validMask!0 mask!2040))))

(assert (=> start!110640 e!746628))

(assert (=> start!110640 tp!103640))

(declare-fun array_inv!31843 (array!87305) Bool)

(assert (=> start!110640 (array_inv!31843 _keys!1628)))

(assert (=> start!110640 true))

(declare-fun tp_is_empty!35169 () Bool)

(assert (=> start!110640 tp_is_empty!35169))

(declare-fun e!746629 () Bool)

(declare-fun array_inv!31844 (array!87303) Bool)

(assert (=> start!110640 (and (array_inv!31844 _values!1354) e!746629)))

(declare-fun mapIsEmpty!54382 () Bool)

(assert (=> mapIsEmpty!54382 mapRes!54382))

(declare-fun b!1308579 () Bool)

(declare-fun res!868771 () Bool)

(assert (=> b!1308579 (=> (not res!868771) (not e!746628))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51995)

(declare-fun zeroValue!1296 () V!51995)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22902 0))(
  ( (tuple2!22903 (_1!11461 (_ BitVec 64)) (_2!11461 V!51995)) )
))
(declare-datatypes ((List!30074 0))(
  ( (Nil!30071) (Cons!30070 (h!31279 tuple2!22902) (t!43687 List!30074)) )
))
(declare-datatypes ((ListLongMap!20571 0))(
  ( (ListLongMap!20572 (toList!10301 List!30074)) )
))
(declare-fun contains!8387 (ListLongMap!20571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5257 (array!87305 array!87303 (_ BitVec 32) (_ BitVec 32) V!51995 V!51995 (_ BitVec 32) Int) ListLongMap!20571)

(assert (=> b!1308579 (= res!868771 (contains!8387 (getCurrentListMap!5257 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1308580 () Bool)

(declare-fun res!868769 () Bool)

(assert (=> b!1308580 (=> (not res!868769) (not e!746628))))

(assert (=> b!1308580 (= res!868769 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42679 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308581 () Bool)

(declare-fun e!746630 () Bool)

(assert (=> b!1308581 (= e!746629 (and e!746630 mapRes!54382))))

(declare-fun condMapEmpty!54382 () Bool)

(declare-fun mapDefault!54382 () ValueCell!16686)

(assert (=> b!1308581 (= condMapEmpty!54382 (= (arr!42127 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16686)) mapDefault!54382)))))

(declare-fun b!1308582 () Bool)

(assert (=> b!1308582 (= e!746630 tp_is_empty!35169)))

(declare-fun b!1308583 () Bool)

(declare-fun res!868767 () Bool)

(assert (=> b!1308583 (=> (not res!868767) (not e!746628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308583 (= res!868767 (validKeyInArray!0 (select (arr!42128 _keys!1628) from!2020)))))

(declare-fun b!1308584 () Bool)

(declare-fun res!868774 () Bool)

(assert (=> b!1308584 (=> (not res!868774) (not e!746628))))

(declare-datatypes ((List!30075 0))(
  ( (Nil!30072) (Cons!30071 (h!31280 (_ BitVec 64)) (t!43688 List!30075)) )
))
(declare-fun arrayNoDuplicates!0 (array!87305 (_ BitVec 32) List!30075) Bool)

(assert (=> b!1308584 (= res!868774 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30072))))

(declare-fun b!1308585 () Bool)

(declare-fun res!868773 () Bool)

(assert (=> b!1308585 (=> (not res!868773) (not e!746628))))

(assert (=> b!1308585 (= res!868773 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308586 () Bool)

(assert (=> b!1308586 (= e!746627 tp_is_empty!35169)))

(declare-fun b!1308587 () Bool)

(declare-fun res!868772 () Bool)

(assert (=> b!1308587 (=> (not res!868772) (not e!746628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87305 (_ BitVec 32)) Bool)

(assert (=> b!1308587 (= res!868772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308588 () Bool)

(declare-fun res!868768 () Bool)

(assert (=> b!1308588 (=> (not res!868768) (not e!746628))))

(assert (=> b!1308588 (= res!868768 (and (= (size!42678 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42679 _keys!1628) (size!42678 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308589 () Bool)

(assert (=> b!1308589 (= e!746628 (not true))))

(assert (=> b!1308589 (contains!8387 (getCurrentListMap!5257 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43248 0))(
  ( (Unit!43249) )
))
(declare-fun lt!585109 () Unit!43248)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!14 (array!87305 array!87303 (_ BitVec 32) (_ BitVec 32) V!51995 V!51995 (_ BitVec 64) (_ BitVec 32) Int) Unit!43248)

(assert (=> b!1308589 (= lt!585109 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!14 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(assert (= (and start!110640 res!868775) b!1308588))

(assert (= (and b!1308588 res!868768) b!1308587))

(assert (= (and b!1308587 res!868772) b!1308584))

(assert (= (and b!1308584 res!868774) b!1308580))

(assert (= (and b!1308580 res!868769) b!1308579))

(assert (= (and b!1308579 res!868771) b!1308578))

(assert (= (and b!1308578 res!868770) b!1308583))

(assert (= (and b!1308583 res!868767) b!1308585))

(assert (= (and b!1308585 res!868773) b!1308589))

(assert (= (and b!1308581 condMapEmpty!54382) mapIsEmpty!54382))

(assert (= (and b!1308581 (not condMapEmpty!54382)) mapNonEmpty!54382))

(get-info :version)

(assert (= (and mapNonEmpty!54382 ((_ is ValueCellFull!16686) mapValue!54382)) b!1308586))

(assert (= (and b!1308581 ((_ is ValueCellFull!16686) mapDefault!54382)) b!1308582))

(assert (= start!110640 b!1308581))

(declare-fun m!1198937 () Bool)

(assert (=> b!1308584 m!1198937))

(declare-fun m!1198939 () Bool)

(assert (=> b!1308583 m!1198939))

(assert (=> b!1308583 m!1198939))

(declare-fun m!1198941 () Bool)

(assert (=> b!1308583 m!1198941))

(declare-fun m!1198943 () Bool)

(assert (=> b!1308587 m!1198943))

(assert (=> b!1308578 m!1198939))

(declare-fun m!1198945 () Bool)

(assert (=> mapNonEmpty!54382 m!1198945))

(declare-fun m!1198947 () Bool)

(assert (=> start!110640 m!1198947))

(declare-fun m!1198949 () Bool)

(assert (=> start!110640 m!1198949))

(declare-fun m!1198951 () Bool)

(assert (=> start!110640 m!1198951))

(declare-fun m!1198953 () Bool)

(assert (=> b!1308589 m!1198953))

(assert (=> b!1308589 m!1198953))

(declare-fun m!1198955 () Bool)

(assert (=> b!1308589 m!1198955))

(declare-fun m!1198957 () Bool)

(assert (=> b!1308589 m!1198957))

(declare-fun m!1198959 () Bool)

(assert (=> b!1308579 m!1198959))

(assert (=> b!1308579 m!1198959))

(declare-fun m!1198961 () Bool)

(assert (=> b!1308579 m!1198961))

(check-sat tp_is_empty!35169 b_and!47657 (not b!1308584) (not b!1308579) (not b!1308587) (not b_next!29439) (not b!1308583) (not b!1308589) (not mapNonEmpty!54382) (not start!110640))
(check-sat b_and!47657 (not b_next!29439))
