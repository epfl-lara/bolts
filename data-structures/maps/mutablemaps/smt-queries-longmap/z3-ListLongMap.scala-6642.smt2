; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83854 () Bool)

(assert start!83854)

(declare-fun b_free!19635 () Bool)

(declare-fun b_next!19635 () Bool)

(assert (=> start!83854 (= b_free!19635 (not b_next!19635))))

(declare-fun tp!68348 () Bool)

(declare-fun b_and!31377 () Bool)

(assert (=> start!83854 (= tp!68348 b_and!31377)))

(declare-fun mapIsEmpty!35972 () Bool)

(declare-fun mapRes!35972 () Bool)

(assert (=> mapIsEmpty!35972 mapRes!35972))

(declare-fun b!979006 () Bool)

(declare-fun res!655288 () Bool)

(declare-fun e!551915 () Bool)

(assert (=> b!979006 (=> (not res!655288) (not e!551915))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35155 0))(
  ( (V!35156 (val!11365 Int)) )
))
(declare-datatypes ((ValueCell!10833 0))(
  ( (ValueCellFull!10833 (v!13927 V!35155)) (EmptyCell!10833) )
))
(declare-datatypes ((array!61271 0))(
  ( (array!61272 (arr!29489 (Array (_ BitVec 32) ValueCell!10833)) (size!29969 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61271)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61273 0))(
  ( (array!61274 (arr!29490 (Array (_ BitVec 32) (_ BitVec 64))) (size!29970 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61273)

(assert (=> b!979006 (= res!655288 (and (= (size!29969 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29970 _keys!1544) (size!29969 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979007 () Bool)

(declare-fun res!655285 () Bool)

(assert (=> b!979007 (=> (not res!655285) (not e!551915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61273 (_ BitVec 32)) Bool)

(assert (=> b!979007 (= res!655285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979009 () Bool)

(declare-fun e!551913 () Bool)

(declare-fun tp_is_empty!22629 () Bool)

(assert (=> b!979009 (= e!551913 tp_is_empty!22629)))

(declare-fun mapNonEmpty!35972 () Bool)

(declare-fun tp!68347 () Bool)

(assert (=> mapNonEmpty!35972 (= mapRes!35972 (and tp!68347 e!551913))))

(declare-fun mapRest!35972 () (Array (_ BitVec 32) ValueCell!10833))

(declare-fun mapValue!35972 () ValueCell!10833)

(declare-fun mapKey!35972 () (_ BitVec 32))

(assert (=> mapNonEmpty!35972 (= (arr!29489 _values!1278) (store mapRest!35972 mapKey!35972 mapValue!35972))))

(declare-fun b!979010 () Bool)

(declare-fun e!551916 () Bool)

(assert (=> b!979010 (= e!551916 tp_is_empty!22629)))

(declare-fun b!979011 () Bool)

(declare-fun res!655290 () Bool)

(assert (=> b!979011 (=> (not res!655290) (not e!551915))))

(declare-datatypes ((List!20570 0))(
  ( (Nil!20567) (Cons!20566 (h!21728 (_ BitVec 64)) (t!29169 List!20570)) )
))
(declare-fun arrayNoDuplicates!0 (array!61273 (_ BitVec 32) List!20570) Bool)

(assert (=> b!979011 (= res!655290 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20567))))

(declare-fun b!979012 () Bool)

(declare-fun res!655286 () Bool)

(assert (=> b!979012 (=> (not res!655286) (not e!551915))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979012 (= res!655286 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29970 _keys!1544))))))

(declare-fun b!979013 () Bool)

(declare-fun res!655289 () Bool)

(assert (=> b!979013 (=> (not res!655289) (not e!551915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979013 (= res!655289 (validKeyInArray!0 (select (arr!29490 _keys!1544) from!1932)))))

(declare-fun b!979008 () Bool)

(declare-fun e!551917 () Bool)

(assert (=> b!979008 (= e!551915 (not e!551917))))

(declare-fun res!655287 () Bool)

(assert (=> b!979008 (=> res!655287 e!551917)))

(assert (=> b!979008 (= res!655287 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29490 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14672 0))(
  ( (tuple2!14673 (_1!7346 (_ BitVec 64)) (_2!7346 V!35155)) )
))
(declare-datatypes ((List!20571 0))(
  ( (Nil!20568) (Cons!20567 (h!21729 tuple2!14672) (t!29170 List!20571)) )
))
(declare-datatypes ((ListLongMap!13383 0))(
  ( (ListLongMap!13384 (toList!6707 List!20571)) )
))
(declare-fun lt!434159 () ListLongMap!13383)

(declare-fun lt!434158 () tuple2!14672)

(declare-fun lt!434160 () ListLongMap!13383)

(declare-fun lt!434164 () tuple2!14672)

(declare-fun +!2913 (ListLongMap!13383 tuple2!14672) ListLongMap!13383)

(assert (=> b!979008 (= (+!2913 lt!434160 lt!434164) (+!2913 lt!434159 lt!434158))))

(declare-fun lt!434161 () ListLongMap!13383)

(assert (=> b!979008 (= lt!434159 (+!2913 lt!434161 lt!434164))))

(declare-fun lt!434156 () V!35155)

(assert (=> b!979008 (= lt!434164 (tuple2!14673 (select (arr!29490 _keys!1544) from!1932) lt!434156))))

(assert (=> b!979008 (= lt!434160 (+!2913 lt!434161 lt!434158))))

(declare-fun minValue!1220 () V!35155)

(assert (=> b!979008 (= lt!434158 (tuple2!14673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32501 0))(
  ( (Unit!32502) )
))
(declare-fun lt!434157 () Unit!32501)

(declare-fun addCommutativeForDiffKeys!575 (ListLongMap!13383 (_ BitVec 64) V!35155 (_ BitVec 64) V!35155) Unit!32501)

(assert (=> b!979008 (= lt!434157 (addCommutativeForDiffKeys!575 lt!434161 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29490 _keys!1544) from!1932) lt!434156))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15292 (ValueCell!10833 V!35155) V!35155)

(declare-fun dynLambda!1749 (Int (_ BitVec 64)) V!35155)

(assert (=> b!979008 (= lt!434156 (get!15292 (select (arr!29489 _values!1278) from!1932) (dynLambda!1749 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434155 () ListLongMap!13383)

(declare-fun lt!434162 () tuple2!14672)

(assert (=> b!979008 (= lt!434161 (+!2913 lt!434155 lt!434162))))

(declare-fun zeroValue!1220 () V!35155)

(assert (=> b!979008 (= lt!434162 (tuple2!14673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3374 (array!61273 array!61271 (_ BitVec 32) (_ BitVec 32) V!35155 V!35155 (_ BitVec 32) Int) ListLongMap!13383)

(assert (=> b!979008 (= lt!434155 (getCurrentListMapNoExtraKeys!3374 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!655283 () Bool)

(assert (=> start!83854 (=> (not res!655283) (not e!551915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83854 (= res!655283 (validMask!0 mask!1948))))

(assert (=> start!83854 e!551915))

(assert (=> start!83854 true))

(assert (=> start!83854 tp_is_empty!22629))

(declare-fun e!551914 () Bool)

(declare-fun array_inv!22699 (array!61271) Bool)

(assert (=> start!83854 (and (array_inv!22699 _values!1278) e!551914)))

(assert (=> start!83854 tp!68348))

(declare-fun array_inv!22700 (array!61273) Bool)

(assert (=> start!83854 (array_inv!22700 _keys!1544)))

(declare-fun b!979014 () Bool)

(declare-fun res!655284 () Bool)

(assert (=> b!979014 (=> (not res!655284) (not e!551915))))

(assert (=> b!979014 (= res!655284 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979015 () Bool)

(assert (=> b!979015 (= e!551914 (and e!551916 mapRes!35972))))

(declare-fun condMapEmpty!35972 () Bool)

(declare-fun mapDefault!35972 () ValueCell!10833)

(assert (=> b!979015 (= condMapEmpty!35972 (= (arr!29489 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10833)) mapDefault!35972)))))

(declare-fun b!979016 () Bool)

(assert (=> b!979016 (= e!551917 true)))

(assert (=> b!979016 (= lt!434159 (+!2913 (+!2913 lt!434155 lt!434164) lt!434162))))

(declare-fun lt!434163 () Unit!32501)

(assert (=> b!979016 (= lt!434163 (addCommutativeForDiffKeys!575 lt!434155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29490 _keys!1544) from!1932) lt!434156))))

(assert (= (and start!83854 res!655283) b!979006))

(assert (= (and b!979006 res!655288) b!979007))

(assert (= (and b!979007 res!655285) b!979011))

(assert (= (and b!979011 res!655290) b!979012))

(assert (= (and b!979012 res!655286) b!979013))

(assert (= (and b!979013 res!655289) b!979014))

(assert (= (and b!979014 res!655284) b!979008))

(assert (= (and b!979008 (not res!655287)) b!979016))

(assert (= (and b!979015 condMapEmpty!35972) mapIsEmpty!35972))

(assert (= (and b!979015 (not condMapEmpty!35972)) mapNonEmpty!35972))

(get-info :version)

(assert (= (and mapNonEmpty!35972 ((_ is ValueCellFull!10833) mapValue!35972)) b!979009))

(assert (= (and b!979015 ((_ is ValueCellFull!10833) mapDefault!35972)) b!979010))

(assert (= start!83854 b!979015))

(declare-fun b_lambda!14709 () Bool)

(assert (=> (not b_lambda!14709) (not b!979008)))

(declare-fun t!29168 () Bool)

(declare-fun tb!6449 () Bool)

(assert (=> (and start!83854 (= defaultEntry!1281 defaultEntry!1281) t!29168) tb!6449))

(declare-fun result!12879 () Bool)

(assert (=> tb!6449 (= result!12879 tp_is_empty!22629)))

(assert (=> b!979008 t!29168))

(declare-fun b_and!31379 () Bool)

(assert (= b_and!31377 (and (=> t!29168 result!12879) b_and!31379)))

(declare-fun m!906365 () Bool)

(assert (=> b!979013 m!906365))

(assert (=> b!979013 m!906365))

(declare-fun m!906367 () Bool)

(assert (=> b!979013 m!906367))

(declare-fun m!906369 () Bool)

(assert (=> mapNonEmpty!35972 m!906369))

(declare-fun m!906371 () Bool)

(assert (=> start!83854 m!906371))

(declare-fun m!906373 () Bool)

(assert (=> start!83854 m!906373))

(declare-fun m!906375 () Bool)

(assert (=> start!83854 m!906375))

(declare-fun m!906377 () Bool)

(assert (=> b!979007 m!906377))

(declare-fun m!906379 () Bool)

(assert (=> b!979011 m!906379))

(declare-fun m!906381 () Bool)

(assert (=> b!979008 m!906381))

(assert (=> b!979008 m!906365))

(declare-fun m!906383 () Bool)

(assert (=> b!979008 m!906383))

(declare-fun m!906385 () Bool)

(assert (=> b!979008 m!906385))

(declare-fun m!906387 () Bool)

(assert (=> b!979008 m!906387))

(declare-fun m!906389 () Bool)

(assert (=> b!979008 m!906389))

(declare-fun m!906391 () Bool)

(assert (=> b!979008 m!906391))

(declare-fun m!906393 () Bool)

(assert (=> b!979008 m!906393))

(assert (=> b!979008 m!906365))

(declare-fun m!906395 () Bool)

(assert (=> b!979008 m!906395))

(declare-fun m!906397 () Bool)

(assert (=> b!979008 m!906397))

(assert (=> b!979008 m!906385))

(assert (=> b!979008 m!906397))

(declare-fun m!906399 () Bool)

(assert (=> b!979008 m!906399))

(declare-fun m!906401 () Bool)

(assert (=> b!979016 m!906401))

(assert (=> b!979016 m!906401))

(declare-fun m!906403 () Bool)

(assert (=> b!979016 m!906403))

(assert (=> b!979016 m!906365))

(assert (=> b!979016 m!906365))

(declare-fun m!906405 () Bool)

(assert (=> b!979016 m!906405))

(check-sat (not mapNonEmpty!35972) (not b!979008) (not b_next!19635) (not b!979007) (not b!979013) (not b!979016) tp_is_empty!22629 (not b_lambda!14709) b_and!31379 (not b!979011) (not start!83854))
(check-sat b_and!31379 (not b_next!19635))
