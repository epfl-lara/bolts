; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84178 () Bool)

(assert start!84178)

(declare-fun b_free!19851 () Bool)

(declare-fun b_next!19851 () Bool)

(assert (=> start!84178 (= b_free!19851 (not b_next!19851))))

(declare-fun tp!69157 () Bool)

(declare-fun b_and!31797 () Bool)

(assert (=> start!84178 (= tp!69157 b_and!31797)))

(declare-fun b!983782 () Bool)

(declare-fun res!658403 () Bool)

(declare-fun e!554654 () Bool)

(assert (=> b!983782 (=> (not res!658403) (not e!554654))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35587 0))(
  ( (V!35588 (val!11527 Int)) )
))
(declare-datatypes ((ValueCell!10995 0))(
  ( (ValueCellFull!10995 (v!14089 V!35587)) (EmptyCell!10995) )
))
(declare-datatypes ((array!61875 0))(
  ( (array!61876 (arr!29791 (Array (_ BitVec 32) ValueCell!10995)) (size!30271 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61875)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61877 0))(
  ( (array!61878 (arr!29792 (Array (_ BitVec 32) (_ BitVec 64))) (size!30272 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61877)

(assert (=> b!983782 (= res!658403 (and (= (size!30271 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30272 _keys!1544) (size!30271 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!658397 () Bool)

(assert (=> start!84178 (=> (not res!658397) (not e!554654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84178 (= res!658397 (validMask!0 mask!1948))))

(assert (=> start!84178 e!554654))

(assert (=> start!84178 true))

(declare-fun tp_is_empty!22953 () Bool)

(assert (=> start!84178 tp_is_empty!22953))

(declare-fun e!554652 () Bool)

(declare-fun array_inv!22901 (array!61875) Bool)

(assert (=> start!84178 (and (array_inv!22901 _values!1278) e!554652)))

(assert (=> start!84178 tp!69157))

(declare-fun array_inv!22902 (array!61877) Bool)

(assert (=> start!84178 (array_inv!22902 _keys!1544)))

(declare-fun b!983783 () Bool)

(declare-fun res!658399 () Bool)

(assert (=> b!983783 (=> (not res!658399) (not e!554654))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983783 (= res!658399 (validKeyInArray!0 (select (arr!29792 _keys!1544) from!1932)))))

(declare-fun b!983784 () Bool)

(declare-fun res!658400 () Bool)

(assert (=> b!983784 (=> (not res!658400) (not e!554654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61877 (_ BitVec 32)) Bool)

(assert (=> b!983784 (= res!658400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983785 () Bool)

(declare-fun e!554651 () Bool)

(assert (=> b!983785 (= e!554651 (not true))))

(declare-datatypes ((tuple2!14838 0))(
  ( (tuple2!14839 (_1!7429 (_ BitVec 64)) (_2!7429 V!35587)) )
))
(declare-datatypes ((List!20759 0))(
  ( (Nil!20756) (Cons!20755 (h!21917 tuple2!14838) (t!29562 List!20759)) )
))
(declare-datatypes ((ListLongMap!13549 0))(
  ( (ListLongMap!13550 (toList!6790 List!20759)) )
))
(declare-fun lt!436543 () ListLongMap!13549)

(declare-fun lt!436542 () tuple2!14838)

(declare-fun lt!436544 () tuple2!14838)

(declare-fun +!2984 (ListLongMap!13549 tuple2!14838) ListLongMap!13549)

(assert (=> b!983785 (= (+!2984 (+!2984 lt!436543 lt!436542) lt!436544) (+!2984 (+!2984 lt!436543 lt!436544) lt!436542))))

(declare-fun lt!436545 () V!35587)

(assert (=> b!983785 (= lt!436544 (tuple2!14839 (select (arr!29792 _keys!1544) from!1932) lt!436545))))

(declare-fun minValue!1220 () V!35587)

(assert (=> b!983785 (= lt!436542 (tuple2!14839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32643 0))(
  ( (Unit!32644) )
))
(declare-fun lt!436546 () Unit!32643)

(declare-fun addCommutativeForDiffKeys!646 (ListLongMap!13549 (_ BitVec 64) V!35587 (_ BitVec 64) V!35587) Unit!32643)

(assert (=> b!983785 (= lt!436546 (addCommutativeForDiffKeys!646 lt!436543 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29792 _keys!1544) from!1932) lt!436545))))

(declare-fun b!983786 () Bool)

(assert (=> b!983786 (= e!554654 e!554651)))

(declare-fun res!658402 () Bool)

(assert (=> b!983786 (=> (not res!658402) (not e!554651))))

(assert (=> b!983786 (= res!658402 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29792 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15471 (ValueCell!10995 V!35587) V!35587)

(declare-fun dynLambda!1820 (Int (_ BitVec 64)) V!35587)

(assert (=> b!983786 (= lt!436545 (get!15471 (select (arr!29791 _values!1278) from!1932) (dynLambda!1820 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35587)

(declare-fun getCurrentListMapNoExtraKeys!3449 (array!61877 array!61875 (_ BitVec 32) (_ BitVec 32) V!35587 V!35587 (_ BitVec 32) Int) ListLongMap!13549)

(assert (=> b!983786 (= lt!436543 (getCurrentListMapNoExtraKeys!3449 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!36458 () Bool)

(declare-fun mapRes!36458 () Bool)

(assert (=> mapIsEmpty!36458 mapRes!36458))

(declare-fun b!983787 () Bool)

(declare-fun res!658404 () Bool)

(assert (=> b!983787 (=> (not res!658404) (not e!554654))))

(assert (=> b!983787 (= res!658404 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30272 _keys!1544))))))

(declare-fun mapNonEmpty!36458 () Bool)

(declare-fun tp!69158 () Bool)

(declare-fun e!554650 () Bool)

(assert (=> mapNonEmpty!36458 (= mapRes!36458 (and tp!69158 e!554650))))

(declare-fun mapValue!36458 () ValueCell!10995)

(declare-fun mapRest!36458 () (Array (_ BitVec 32) ValueCell!10995))

(declare-fun mapKey!36458 () (_ BitVec 32))

(assert (=> mapNonEmpty!36458 (= (arr!29791 _values!1278) (store mapRest!36458 mapKey!36458 mapValue!36458))))

(declare-fun b!983788 () Bool)

(declare-fun e!554649 () Bool)

(assert (=> b!983788 (= e!554649 tp_is_empty!22953)))

(declare-fun b!983789 () Bool)

(assert (=> b!983789 (= e!554652 (and e!554649 mapRes!36458))))

(declare-fun condMapEmpty!36458 () Bool)

(declare-fun mapDefault!36458 () ValueCell!10995)

(assert (=> b!983789 (= condMapEmpty!36458 (= (arr!29791 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10995)) mapDefault!36458)))))

(declare-fun b!983790 () Bool)

(assert (=> b!983790 (= e!554650 tp_is_empty!22953)))

(declare-fun b!983791 () Bool)

(declare-fun res!658401 () Bool)

(assert (=> b!983791 (=> (not res!658401) (not e!554654))))

(assert (=> b!983791 (= res!658401 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!983792 () Bool)

(declare-fun res!658398 () Bool)

(assert (=> b!983792 (=> (not res!658398) (not e!554654))))

(declare-datatypes ((List!20760 0))(
  ( (Nil!20757) (Cons!20756 (h!21918 (_ BitVec 64)) (t!29563 List!20760)) )
))
(declare-fun arrayNoDuplicates!0 (array!61877 (_ BitVec 32) List!20760) Bool)

(assert (=> b!983792 (= res!658398 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20757))))

(assert (= (and start!84178 res!658397) b!983782))

(assert (= (and b!983782 res!658403) b!983784))

(assert (= (and b!983784 res!658400) b!983792))

(assert (= (and b!983792 res!658398) b!983787))

(assert (= (and b!983787 res!658404) b!983783))

(assert (= (and b!983783 res!658399) b!983791))

(assert (= (and b!983791 res!658401) b!983786))

(assert (= (and b!983786 res!658402) b!983785))

(assert (= (and b!983789 condMapEmpty!36458) mapIsEmpty!36458))

(assert (= (and b!983789 (not condMapEmpty!36458)) mapNonEmpty!36458))

(get-info :version)

(assert (= (and mapNonEmpty!36458 ((_ is ValueCellFull!10995) mapValue!36458)) b!983790))

(assert (= (and b!983789 ((_ is ValueCellFull!10995) mapDefault!36458)) b!983788))

(assert (= start!84178 b!983789))

(declare-fun b_lambda!14913 () Bool)

(assert (=> (not b_lambda!14913) (not b!983786)))

(declare-fun t!29561 () Bool)

(declare-fun tb!6653 () Bool)

(assert (=> (and start!84178 (= defaultEntry!1281 defaultEntry!1281) t!29561) tb!6653))

(declare-fun result!13287 () Bool)

(assert (=> tb!6653 (= result!13287 tp_is_empty!22953)))

(assert (=> b!983786 t!29561))

(declare-fun b_and!31799 () Bool)

(assert (= b_and!31797 (and (=> t!29561 result!13287) b_and!31799)))

(declare-fun m!910989 () Bool)

(assert (=> b!983783 m!910989))

(assert (=> b!983783 m!910989))

(declare-fun m!910991 () Bool)

(assert (=> b!983783 m!910991))

(declare-fun m!910993 () Bool)

(assert (=> b!983784 m!910993))

(assert (=> b!983785 m!910989))

(declare-fun m!910995 () Bool)

(assert (=> b!983785 m!910995))

(assert (=> b!983785 m!910995))

(declare-fun m!910997 () Bool)

(assert (=> b!983785 m!910997))

(declare-fun m!910999 () Bool)

(assert (=> b!983785 m!910999))

(declare-fun m!911001 () Bool)

(assert (=> b!983785 m!911001))

(assert (=> b!983785 m!910989))

(declare-fun m!911003 () Bool)

(assert (=> b!983785 m!911003))

(assert (=> b!983785 m!910999))

(declare-fun m!911005 () Bool)

(assert (=> mapNonEmpty!36458 m!911005))

(declare-fun m!911007 () Bool)

(assert (=> start!84178 m!911007))

(declare-fun m!911009 () Bool)

(assert (=> start!84178 m!911009))

(declare-fun m!911011 () Bool)

(assert (=> start!84178 m!911011))

(assert (=> b!983786 m!910989))

(declare-fun m!911013 () Bool)

(assert (=> b!983786 m!911013))

(declare-fun m!911015 () Bool)

(assert (=> b!983786 m!911015))

(declare-fun m!911017 () Bool)

(assert (=> b!983786 m!911017))

(assert (=> b!983786 m!911013))

(assert (=> b!983786 m!911017))

(declare-fun m!911019 () Bool)

(assert (=> b!983786 m!911019))

(declare-fun m!911021 () Bool)

(assert (=> b!983792 m!911021))

(check-sat tp_is_empty!22953 (not start!84178) (not b!983783) (not b_lambda!14913) (not b!983784) b_and!31799 (not b!983792) (not b!983786) (not mapNonEmpty!36458) (not b_next!19851) (not b!983785))
(check-sat b_and!31799 (not b_next!19851))
