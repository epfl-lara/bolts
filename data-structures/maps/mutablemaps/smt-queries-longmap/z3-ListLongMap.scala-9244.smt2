; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110850 () Bool)

(assert start!110850)

(declare-fun b_free!29649 () Bool)

(declare-fun b_next!29649 () Bool)

(assert (=> start!110850 (= b_free!29649 (not b_next!29649))))

(declare-fun tp!104269 () Bool)

(declare-fun b_and!47867 () Bool)

(assert (=> start!110850 (= tp!104269 b_and!47867)))

(declare-fun mapNonEmpty!54697 () Bool)

(declare-fun mapRes!54697 () Bool)

(declare-fun tp!104270 () Bool)

(declare-fun e!748203 () Bool)

(assert (=> mapNonEmpty!54697 (= mapRes!54697 (and tp!104270 e!748203))))

(declare-fun mapKey!54697 () (_ BitVec 32))

(declare-datatypes ((V!52275 0))(
  ( (V!52276 (val!17764 Int)) )
))
(declare-datatypes ((ValueCell!16791 0))(
  ( (ValueCellFull!16791 (v!20389 V!52275)) (EmptyCell!16791) )
))
(declare-fun mapValue!54697 () ValueCell!16791)

(declare-datatypes ((array!87709 0))(
  ( (array!87710 (arr!42330 (Array (_ BitVec 32) ValueCell!16791)) (size!42881 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87709)

(declare-fun mapRest!54697 () (Array (_ BitVec 32) ValueCell!16791))

(assert (=> mapNonEmpty!54697 (= (arr!42330 _values!1354) (store mapRest!54697 mapKey!54697 mapValue!54697))))

(declare-fun b!1311494 () Bool)

(declare-fun res!870744 () Bool)

(declare-fun e!748204 () Bool)

(assert (=> b!1311494 (=> (not res!870744) (not e!748204))))

(declare-datatypes ((array!87711 0))(
  ( (array!87712 (arr!42331 (Array (_ BitVec 32) (_ BitVec 64))) (size!42882 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87711)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311494 (= res!870744 (validKeyInArray!0 (select (arr!42331 _keys!1628) from!2020)))))

(declare-fun b!1311495 () Bool)

(declare-fun res!870738 () Bool)

(assert (=> b!1311495 (=> (not res!870738) (not e!748204))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311495 (= res!870738 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311496 () Bool)

(declare-fun res!870739 () Bool)

(assert (=> b!1311496 (=> (not res!870739) (not e!748204))))

(declare-datatypes ((List!30228 0))(
  ( (Nil!30225) (Cons!30224 (h!31433 (_ BitVec 64)) (t!43841 List!30228)) )
))
(declare-fun arrayNoDuplicates!0 (array!87711 (_ BitVec 32) List!30228) Bool)

(assert (=> b!1311496 (= res!870739 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30225))))

(declare-fun b!1311497 () Bool)

(declare-fun tp_is_empty!35379 () Bool)

(assert (=> b!1311497 (= e!748203 tp_is_empty!35379)))

(declare-fun b!1311498 () Bool)

(declare-fun res!870741 () Bool)

(assert (=> b!1311498 (=> (not res!870741) (not e!748204))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52275)

(declare-fun zeroValue!1296 () V!52275)

(declare-datatypes ((tuple2!23064 0))(
  ( (tuple2!23065 (_1!11542 (_ BitVec 64)) (_2!11542 V!52275)) )
))
(declare-datatypes ((List!30229 0))(
  ( (Nil!30226) (Cons!30225 (h!31434 tuple2!23064) (t!43842 List!30229)) )
))
(declare-datatypes ((ListLongMap!20733 0))(
  ( (ListLongMap!20734 (toList!10382 List!30229)) )
))
(declare-fun contains!8468 (ListLongMap!20733 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5338 (array!87711 array!87709 (_ BitVec 32) (_ BitVec 32) V!52275 V!52275 (_ BitVec 32) Int) ListLongMap!20733)

(assert (=> b!1311498 (= res!870741 (contains!8468 (getCurrentListMap!5338 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311499 () Bool)

(declare-fun res!870740 () Bool)

(assert (=> b!1311499 (=> (not res!870740) (not e!748204))))

(assert (=> b!1311499 (= res!870740 (and (= (size!42881 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42882 _keys!1628) (size!42881 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!870743 () Bool)

(assert (=> start!110850 (=> (not res!870743) (not e!748204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110850 (= res!870743 (validMask!0 mask!2040))))

(assert (=> start!110850 e!748204))

(assert (=> start!110850 tp!104269))

(declare-fun array_inv!31971 (array!87711) Bool)

(assert (=> start!110850 (array_inv!31971 _keys!1628)))

(assert (=> start!110850 true))

(assert (=> start!110850 tp_is_empty!35379))

(declare-fun e!748202 () Bool)

(declare-fun array_inv!31972 (array!87709) Bool)

(assert (=> start!110850 (and (array_inv!31972 _values!1354) e!748202)))

(declare-fun b!1311500 () Bool)

(declare-fun e!748205 () Bool)

(assert (=> b!1311500 (= e!748202 (and e!748205 mapRes!54697))))

(declare-fun condMapEmpty!54697 () Bool)

(declare-fun mapDefault!54697 () ValueCell!16791)

(assert (=> b!1311500 (= condMapEmpty!54697 (= (arr!42330 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16791)) mapDefault!54697)))))

(declare-fun b!1311501 () Bool)

(assert (=> b!1311501 (= e!748205 tp_is_empty!35379)))

(declare-fun b!1311502 () Bool)

(declare-fun res!870745 () Bool)

(assert (=> b!1311502 (=> (not res!870745) (not e!748204))))

(assert (=> b!1311502 (= res!870745 (not (= (select (arr!42331 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1311503 () Bool)

(declare-fun res!870742 () Bool)

(assert (=> b!1311503 (=> (not res!870742) (not e!748204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87711 (_ BitVec 32)) Bool)

(assert (=> b!1311503 (= res!870742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54697 () Bool)

(assert (=> mapIsEmpty!54697 mapRes!54697))

(declare-fun b!1311504 () Bool)

(declare-fun res!870746 () Bool)

(assert (=> b!1311504 (=> (not res!870746) (not e!748204))))

(assert (=> b!1311504 (= res!870746 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42882 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311505 () Bool)

(assert (=> b!1311505 (= e!748204 (not true))))

(assert (=> b!1311505 (contains!8468 (getCurrentListMap!5338 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43298 0))(
  ( (Unit!43299) )
))
(declare-fun lt!585424 () Unit!43298)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!2 (array!87711 array!87709 (_ BitVec 32) (_ BitVec 32) V!52275 V!52275 (_ BitVec 64) (_ BitVec 32) Int) Unit!43298)

(assert (=> b!1311505 (= lt!585424 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!2 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(assert (= (and start!110850 res!870743) b!1311499))

(assert (= (and b!1311499 res!870740) b!1311503))

(assert (= (and b!1311503 res!870742) b!1311496))

(assert (= (and b!1311496 res!870739) b!1311504))

(assert (= (and b!1311504 res!870746) b!1311498))

(assert (= (and b!1311498 res!870741) b!1311502))

(assert (= (and b!1311502 res!870745) b!1311494))

(assert (= (and b!1311494 res!870744) b!1311495))

(assert (= (and b!1311495 res!870738) b!1311505))

(assert (= (and b!1311500 condMapEmpty!54697) mapIsEmpty!54697))

(assert (= (and b!1311500 (not condMapEmpty!54697)) mapNonEmpty!54697))

(get-info :version)

(assert (= (and mapNonEmpty!54697 ((_ is ValueCellFull!16791) mapValue!54697)) b!1311497))

(assert (= (and b!1311500 ((_ is ValueCellFull!16791) mapDefault!54697)) b!1311501))

(assert (= start!110850 b!1311500))

(declare-fun m!1200947 () Bool)

(assert (=> b!1311505 m!1200947))

(assert (=> b!1311505 m!1200947))

(declare-fun m!1200949 () Bool)

(assert (=> b!1311505 m!1200949))

(declare-fun m!1200951 () Bool)

(assert (=> b!1311505 m!1200951))

(declare-fun m!1200953 () Bool)

(assert (=> b!1311498 m!1200953))

(assert (=> b!1311498 m!1200953))

(declare-fun m!1200955 () Bool)

(assert (=> b!1311498 m!1200955))

(declare-fun m!1200957 () Bool)

(assert (=> mapNonEmpty!54697 m!1200957))

(declare-fun m!1200959 () Bool)

(assert (=> b!1311503 m!1200959))

(declare-fun m!1200961 () Bool)

(assert (=> b!1311494 m!1200961))

(assert (=> b!1311494 m!1200961))

(declare-fun m!1200963 () Bool)

(assert (=> b!1311494 m!1200963))

(assert (=> b!1311502 m!1200961))

(declare-fun m!1200965 () Bool)

(assert (=> b!1311496 m!1200965))

(declare-fun m!1200967 () Bool)

(assert (=> start!110850 m!1200967))

(declare-fun m!1200969 () Bool)

(assert (=> start!110850 m!1200969))

(declare-fun m!1200971 () Bool)

(assert (=> start!110850 m!1200971))

(check-sat (not b!1311494) b_and!47867 (not b!1311505) tp_is_empty!35379 (not b!1311496) (not start!110850) (not b!1311498) (not b!1311503) (not mapNonEmpty!54697) (not b_next!29649))
(check-sat b_and!47867 (not b_next!29649))
