; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83902 () Bool)

(assert start!83902)

(declare-fun b_free!19683 () Bool)

(declare-fun b_next!19683 () Bool)

(assert (=> start!83902 (= b_free!19683 (not b_next!19683))))

(declare-fun tp!68491 () Bool)

(declare-fun b_and!31473 () Bool)

(assert (=> start!83902 (= tp!68491 b_and!31473)))

(declare-fun b!979846 () Bool)

(declare-fun e!552350 () Bool)

(declare-fun tp_is_empty!22677 () Bool)

(assert (=> b!979846 (= e!552350 tp_is_empty!22677)))

(declare-fun b!979847 () Bool)

(declare-fun e!552346 () Bool)

(declare-fun e!552348 () Bool)

(assert (=> b!979847 (= e!552346 (not e!552348))))

(declare-fun res!655862 () Bool)

(assert (=> b!979847 (=> res!655862 e!552348)))

(declare-datatypes ((array!61365 0))(
  ( (array!61366 (arr!29536 (Array (_ BitVec 32) (_ BitVec 64))) (size!30016 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61365)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979847 (= res!655862 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29536 _keys!1544) from!1932)))))

(declare-datatypes ((V!35219 0))(
  ( (V!35220 (val!11389 Int)) )
))
(declare-datatypes ((tuple2!14712 0))(
  ( (tuple2!14713 (_1!7366 (_ BitVec 64)) (_2!7366 V!35219)) )
))
(declare-datatypes ((List!20604 0))(
  ( (Nil!20601) (Cons!20600 (h!21762 tuple2!14712) (t!29251 List!20604)) )
))
(declare-datatypes ((ListLongMap!13423 0))(
  ( (ListLongMap!13424 (toList!6727 List!20604)) )
))
(declare-fun lt!434883 () ListLongMap!13423)

(declare-fun lt!434880 () ListLongMap!13423)

(declare-fun lt!434875 () tuple2!14712)

(declare-fun lt!434879 () tuple2!14712)

(declare-fun +!2933 (ListLongMap!13423 tuple2!14712) ListLongMap!13423)

(assert (=> b!979847 (= (+!2933 lt!434883 lt!434875) (+!2933 lt!434880 lt!434879))))

(declare-fun lt!434877 () ListLongMap!13423)

(assert (=> b!979847 (= lt!434880 (+!2933 lt!434877 lt!434875))))

(declare-fun lt!434882 () V!35219)

(assert (=> b!979847 (= lt!434875 (tuple2!14713 (select (arr!29536 _keys!1544) from!1932) lt!434882))))

(assert (=> b!979847 (= lt!434883 (+!2933 lt!434877 lt!434879))))

(declare-fun minValue!1220 () V!35219)

(assert (=> b!979847 (= lt!434879 (tuple2!14713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32541 0))(
  ( (Unit!32542) )
))
(declare-fun lt!434881 () Unit!32541)

(declare-fun addCommutativeForDiffKeys!595 (ListLongMap!13423 (_ BitVec 64) V!35219 (_ BitVec 64) V!35219) Unit!32541)

(assert (=> b!979847 (= lt!434881 (addCommutativeForDiffKeys!595 lt!434877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29536 _keys!1544) from!1932) lt!434882))))

(declare-datatypes ((ValueCell!10857 0))(
  ( (ValueCellFull!10857 (v!13951 V!35219)) (EmptyCell!10857) )
))
(declare-datatypes ((array!61367 0))(
  ( (array!61368 (arr!29537 (Array (_ BitVec 32) ValueCell!10857)) (size!30017 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61367)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15326 (ValueCell!10857 V!35219) V!35219)

(declare-fun dynLambda!1767 (Int (_ BitVec 64)) V!35219)

(assert (=> b!979847 (= lt!434882 (get!15326 (select (arr!29537 _values!1278) from!1932) (dynLambda!1767 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434878 () ListLongMap!13423)

(declare-fun lt!434876 () tuple2!14712)

(assert (=> b!979847 (= lt!434877 (+!2933 lt!434878 lt!434876))))

(declare-fun zeroValue!1220 () V!35219)

(assert (=> b!979847 (= lt!434876 (tuple2!14713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3392 (array!61365 array!61367 (_ BitVec 32) (_ BitVec 32) V!35219 V!35219 (_ BitVec 32) Int) ListLongMap!13423)

(assert (=> b!979847 (= lt!434878 (getCurrentListMapNoExtraKeys!3392 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979848 () Bool)

(declare-fun res!655859 () Bool)

(assert (=> b!979848 (=> (not res!655859) (not e!552346))))

(assert (=> b!979848 (= res!655859 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!655865 () Bool)

(assert (=> start!83902 (=> (not res!655865) (not e!552346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83902 (= res!655865 (validMask!0 mask!1948))))

(assert (=> start!83902 e!552346))

(assert (=> start!83902 true))

(assert (=> start!83902 tp_is_empty!22677))

(declare-fun e!552349 () Bool)

(declare-fun array_inv!22723 (array!61367) Bool)

(assert (=> start!83902 (and (array_inv!22723 _values!1278) e!552349)))

(assert (=> start!83902 tp!68491))

(declare-fun array_inv!22724 (array!61365) Bool)

(assert (=> start!83902 (array_inv!22724 _keys!1544)))

(declare-fun mapIsEmpty!36044 () Bool)

(declare-fun mapRes!36044 () Bool)

(assert (=> mapIsEmpty!36044 mapRes!36044))

(declare-fun b!979849 () Bool)

(declare-fun res!655860 () Bool)

(assert (=> b!979849 (=> (not res!655860) (not e!552346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979849 (= res!655860 (validKeyInArray!0 (select (arr!29536 _keys!1544) from!1932)))))

(declare-fun b!979850 () Bool)

(declare-fun e!552347 () Bool)

(assert (=> b!979850 (= e!552347 tp_is_empty!22677)))

(declare-fun b!979851 () Bool)

(declare-fun res!655866 () Bool)

(assert (=> b!979851 (=> (not res!655866) (not e!552346))))

(declare-datatypes ((List!20605 0))(
  ( (Nil!20602) (Cons!20601 (h!21763 (_ BitVec 64)) (t!29252 List!20605)) )
))
(declare-fun arrayNoDuplicates!0 (array!61365 (_ BitVec 32) List!20605) Bool)

(assert (=> b!979851 (= res!655866 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20602))))

(declare-fun b!979852 () Bool)

(declare-fun res!655864 () Bool)

(assert (=> b!979852 (=> (not res!655864) (not e!552346))))

(assert (=> b!979852 (= res!655864 (and (= (size!30017 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30016 _keys!1544) (size!30017 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36044 () Bool)

(declare-fun tp!68492 () Bool)

(assert (=> mapNonEmpty!36044 (= mapRes!36044 (and tp!68492 e!552347))))

(declare-fun mapRest!36044 () (Array (_ BitVec 32) ValueCell!10857))

(declare-fun mapValue!36044 () ValueCell!10857)

(declare-fun mapKey!36044 () (_ BitVec 32))

(assert (=> mapNonEmpty!36044 (= (arr!29537 _values!1278) (store mapRest!36044 mapKey!36044 mapValue!36044))))

(declare-fun b!979853 () Bool)

(declare-fun res!655863 () Bool)

(assert (=> b!979853 (=> (not res!655863) (not e!552346))))

(assert (=> b!979853 (= res!655863 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30016 _keys!1544))))))

(declare-fun b!979854 () Bool)

(declare-fun res!655861 () Bool)

(assert (=> b!979854 (=> (not res!655861) (not e!552346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61365 (_ BitVec 32)) Bool)

(assert (=> b!979854 (= res!655861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979855 () Bool)

(assert (=> b!979855 (= e!552349 (and e!552350 mapRes!36044))))

(declare-fun condMapEmpty!36044 () Bool)

(declare-fun mapDefault!36044 () ValueCell!10857)

(assert (=> b!979855 (= condMapEmpty!36044 (= (arr!29537 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10857)) mapDefault!36044)))))

(declare-fun b!979856 () Bool)

(assert (=> b!979856 (= e!552348 true)))

(assert (=> b!979856 (= lt!434880 (+!2933 (+!2933 lt!434878 lt!434875) lt!434876))))

(declare-fun lt!434884 () Unit!32541)

(assert (=> b!979856 (= lt!434884 (addCommutativeForDiffKeys!595 lt!434878 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29536 _keys!1544) from!1932) lt!434882))))

(assert (= (and start!83902 res!655865) b!979852))

(assert (= (and b!979852 res!655864) b!979854))

(assert (= (and b!979854 res!655861) b!979851))

(assert (= (and b!979851 res!655866) b!979853))

(assert (= (and b!979853 res!655863) b!979849))

(assert (= (and b!979849 res!655860) b!979848))

(assert (= (and b!979848 res!655859) b!979847))

(assert (= (and b!979847 (not res!655862)) b!979856))

(assert (= (and b!979855 condMapEmpty!36044) mapIsEmpty!36044))

(assert (= (and b!979855 (not condMapEmpty!36044)) mapNonEmpty!36044))

(get-info :version)

(assert (= (and mapNonEmpty!36044 ((_ is ValueCellFull!10857) mapValue!36044)) b!979850))

(assert (= (and b!979855 ((_ is ValueCellFull!10857) mapDefault!36044)) b!979846))

(assert (= start!83902 b!979855))

(declare-fun b_lambda!14757 () Bool)

(assert (=> (not b_lambda!14757) (not b!979847)))

(declare-fun t!29250 () Bool)

(declare-fun tb!6497 () Bool)

(assert (=> (and start!83902 (= defaultEntry!1281 defaultEntry!1281) t!29250) tb!6497))

(declare-fun result!12975 () Bool)

(assert (=> tb!6497 (= result!12975 tp_is_empty!22677)))

(assert (=> b!979847 t!29250))

(declare-fun b_and!31475 () Bool)

(assert (= b_and!31473 (and (=> t!29250 result!12975) b_and!31475)))

(declare-fun m!907373 () Bool)

(assert (=> b!979847 m!907373))

(declare-fun m!907375 () Bool)

(assert (=> b!979847 m!907375))

(declare-fun m!907377 () Bool)

(assert (=> b!979847 m!907377))

(declare-fun m!907379 () Bool)

(assert (=> b!979847 m!907379))

(declare-fun m!907381 () Bool)

(assert (=> b!979847 m!907381))

(declare-fun m!907383 () Bool)

(assert (=> b!979847 m!907383))

(assert (=> b!979847 m!907373))

(declare-fun m!907385 () Bool)

(assert (=> b!979847 m!907385))

(declare-fun m!907387 () Bool)

(assert (=> b!979847 m!907387))

(declare-fun m!907389 () Bool)

(assert (=> b!979847 m!907389))

(declare-fun m!907391 () Bool)

(assert (=> b!979847 m!907391))

(assert (=> b!979847 m!907375))

(assert (=> b!979847 m!907391))

(declare-fun m!907393 () Bool)

(assert (=> b!979847 m!907393))

(declare-fun m!907395 () Bool)

(assert (=> start!83902 m!907395))

(declare-fun m!907397 () Bool)

(assert (=> start!83902 m!907397))

(declare-fun m!907399 () Bool)

(assert (=> start!83902 m!907399))

(assert (=> b!979849 m!907373))

(assert (=> b!979849 m!907373))

(declare-fun m!907401 () Bool)

(assert (=> b!979849 m!907401))

(declare-fun m!907403 () Bool)

(assert (=> b!979854 m!907403))

(declare-fun m!907405 () Bool)

(assert (=> mapNonEmpty!36044 m!907405))

(declare-fun m!907407 () Bool)

(assert (=> b!979856 m!907407))

(assert (=> b!979856 m!907407))

(declare-fun m!907409 () Bool)

(assert (=> b!979856 m!907409))

(assert (=> b!979856 m!907373))

(assert (=> b!979856 m!907373))

(declare-fun m!907411 () Bool)

(assert (=> b!979856 m!907411))

(declare-fun m!907413 () Bool)

(assert (=> b!979851 m!907413))

(check-sat tp_is_empty!22677 (not b!979847) (not mapNonEmpty!36044) (not b!979854) (not b_next!19683) (not b!979851) b_and!31475 (not b!979849) (not b_lambda!14757) (not b!979856) (not start!83902))
(check-sat b_and!31475 (not b_next!19683))
