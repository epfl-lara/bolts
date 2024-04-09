; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83866 () Bool)

(assert start!83866)

(declare-fun b_free!19647 () Bool)

(declare-fun b_next!19647 () Bool)

(assert (=> start!83866 (= b_free!19647 (not b_next!19647))))

(declare-fun tp!68383 () Bool)

(declare-fun b_and!31401 () Bool)

(assert (=> start!83866 (= tp!68383 b_and!31401)))

(declare-fun b!979216 () Bool)

(declare-fun res!655431 () Bool)

(declare-fun e!552022 () Bool)

(assert (=> b!979216 (=> (not res!655431) (not e!552022))))

(declare-datatypes ((array!61295 0))(
  ( (array!61296 (arr!29501 (Array (_ BitVec 32) (_ BitVec 64))) (size!29981 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61295)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61295 (_ BitVec 32)) Bool)

(assert (=> b!979216 (= res!655431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!35990 () Bool)

(declare-fun mapRes!35990 () Bool)

(declare-fun tp!68384 () Bool)

(declare-fun e!552023 () Bool)

(assert (=> mapNonEmpty!35990 (= mapRes!35990 (and tp!68384 e!552023))))

(declare-datatypes ((V!35171 0))(
  ( (V!35172 (val!11371 Int)) )
))
(declare-datatypes ((ValueCell!10839 0))(
  ( (ValueCellFull!10839 (v!13933 V!35171)) (EmptyCell!10839) )
))
(declare-datatypes ((array!61297 0))(
  ( (array!61298 (arr!29502 (Array (_ BitVec 32) ValueCell!10839)) (size!29982 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61297)

(declare-fun mapRest!35990 () (Array (_ BitVec 32) ValueCell!10839))

(declare-fun mapValue!35990 () ValueCell!10839)

(declare-fun mapKey!35990 () (_ BitVec 32))

(assert (=> mapNonEmpty!35990 (= (arr!29502 _values!1278) (store mapRest!35990 mapKey!35990 mapValue!35990))))

(declare-fun b!979217 () Bool)

(declare-fun res!655433 () Bool)

(assert (=> b!979217 (=> (not res!655433) (not e!552022))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979217 (= res!655433 (and (= (size!29982 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29981 _keys!1544) (size!29982 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979218 () Bool)

(declare-fun e!552021 () Bool)

(assert (=> b!979218 (= e!552022 (not e!552021))))

(declare-fun res!655430 () Bool)

(assert (=> b!979218 (=> res!655430 e!552021)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979218 (= res!655430 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29501 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14682 0))(
  ( (tuple2!14683 (_1!7351 (_ BitVec 64)) (_2!7351 V!35171)) )
))
(declare-datatypes ((List!20578 0))(
  ( (Nil!20575) (Cons!20574 (h!21736 tuple2!14682) (t!29189 List!20578)) )
))
(declare-datatypes ((ListLongMap!13393 0))(
  ( (ListLongMap!13394 (toList!6712 List!20578)) )
))
(declare-fun lt!434336 () ListLongMap!13393)

(declare-fun lt!434337 () tuple2!14682)

(declare-fun lt!434342 () tuple2!14682)

(declare-fun lt!434335 () ListLongMap!13393)

(declare-fun +!2918 (ListLongMap!13393 tuple2!14682) ListLongMap!13393)

(assert (=> b!979218 (= (+!2918 lt!434336 lt!434337) (+!2918 lt!434335 lt!434342))))

(declare-fun lt!434338 () ListLongMap!13393)

(assert (=> b!979218 (= lt!434335 (+!2918 lt!434338 lt!434337))))

(declare-fun lt!434340 () V!35171)

(assert (=> b!979218 (= lt!434337 (tuple2!14683 (select (arr!29501 _keys!1544) from!1932) lt!434340))))

(assert (=> b!979218 (= lt!434336 (+!2918 lt!434338 lt!434342))))

(declare-fun minValue!1220 () V!35171)

(assert (=> b!979218 (= lt!434342 (tuple2!14683 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32511 0))(
  ( (Unit!32512) )
))
(declare-fun lt!434344 () Unit!32511)

(declare-fun addCommutativeForDiffKeys!580 (ListLongMap!13393 (_ BitVec 64) V!35171 (_ BitVec 64) V!35171) Unit!32511)

(assert (=> b!979218 (= lt!434344 (addCommutativeForDiffKeys!580 lt!434338 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29501 _keys!1544) from!1932) lt!434340))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15301 (ValueCell!10839 V!35171) V!35171)

(declare-fun dynLambda!1754 (Int (_ BitVec 64)) V!35171)

(assert (=> b!979218 (= lt!434340 (get!15301 (select (arr!29502 _values!1278) from!1932) (dynLambda!1754 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434339 () ListLongMap!13393)

(declare-fun lt!434341 () tuple2!14682)

(assert (=> b!979218 (= lt!434338 (+!2918 lt!434339 lt!434341))))

(declare-fun zeroValue!1220 () V!35171)

(assert (=> b!979218 (= lt!434341 (tuple2!14683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3379 (array!61295 array!61297 (_ BitVec 32) (_ BitVec 32) V!35171 V!35171 (_ BitVec 32) Int) ListLongMap!13393)

(assert (=> b!979218 (= lt!434339 (getCurrentListMapNoExtraKeys!3379 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979219 () Bool)

(declare-fun e!552024 () Bool)

(declare-fun e!552026 () Bool)

(assert (=> b!979219 (= e!552024 (and e!552026 mapRes!35990))))

(declare-fun condMapEmpty!35990 () Bool)

(declare-fun mapDefault!35990 () ValueCell!10839)

(assert (=> b!979219 (= condMapEmpty!35990 (= (arr!29502 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10839)) mapDefault!35990)))))

(declare-fun res!655427 () Bool)

(assert (=> start!83866 (=> (not res!655427) (not e!552022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83866 (= res!655427 (validMask!0 mask!1948))))

(assert (=> start!83866 e!552022))

(assert (=> start!83866 true))

(declare-fun tp_is_empty!22641 () Bool)

(assert (=> start!83866 tp_is_empty!22641))

(declare-fun array_inv!22703 (array!61297) Bool)

(assert (=> start!83866 (and (array_inv!22703 _values!1278) e!552024)))

(assert (=> start!83866 tp!68383))

(declare-fun array_inv!22704 (array!61295) Bool)

(assert (=> start!83866 (array_inv!22704 _keys!1544)))

(declare-fun b!979220 () Bool)

(declare-fun res!655429 () Bool)

(assert (=> b!979220 (=> (not res!655429) (not e!552022))))

(declare-datatypes ((List!20579 0))(
  ( (Nil!20576) (Cons!20575 (h!21737 (_ BitVec 64)) (t!29190 List!20579)) )
))
(declare-fun arrayNoDuplicates!0 (array!61295 (_ BitVec 32) List!20579) Bool)

(assert (=> b!979220 (= res!655429 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20576))))

(declare-fun b!979221 () Bool)

(assert (=> b!979221 (= e!552021 true)))

(assert (=> b!979221 (= lt!434335 (+!2918 (+!2918 lt!434339 lt!434337) lt!434341))))

(declare-fun lt!434343 () Unit!32511)

(assert (=> b!979221 (= lt!434343 (addCommutativeForDiffKeys!580 lt!434339 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29501 _keys!1544) from!1932) lt!434340))))

(declare-fun b!979222 () Bool)

(declare-fun res!655434 () Bool)

(assert (=> b!979222 (=> (not res!655434) (not e!552022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979222 (= res!655434 (validKeyInArray!0 (select (arr!29501 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!35990 () Bool)

(assert (=> mapIsEmpty!35990 mapRes!35990))

(declare-fun b!979223 () Bool)

(declare-fun res!655432 () Bool)

(assert (=> b!979223 (=> (not res!655432) (not e!552022))))

(assert (=> b!979223 (= res!655432 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29981 _keys!1544))))))

(declare-fun b!979224 () Bool)

(assert (=> b!979224 (= e!552023 tp_is_empty!22641)))

(declare-fun b!979225 () Bool)

(assert (=> b!979225 (= e!552026 tp_is_empty!22641)))

(declare-fun b!979226 () Bool)

(declare-fun res!655428 () Bool)

(assert (=> b!979226 (=> (not res!655428) (not e!552022))))

(assert (=> b!979226 (= res!655428 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!83866 res!655427) b!979217))

(assert (= (and b!979217 res!655433) b!979216))

(assert (= (and b!979216 res!655431) b!979220))

(assert (= (and b!979220 res!655429) b!979223))

(assert (= (and b!979223 res!655432) b!979222))

(assert (= (and b!979222 res!655434) b!979226))

(assert (= (and b!979226 res!655428) b!979218))

(assert (= (and b!979218 (not res!655430)) b!979221))

(assert (= (and b!979219 condMapEmpty!35990) mapIsEmpty!35990))

(assert (= (and b!979219 (not condMapEmpty!35990)) mapNonEmpty!35990))

(get-info :version)

(assert (= (and mapNonEmpty!35990 ((_ is ValueCellFull!10839) mapValue!35990)) b!979224))

(assert (= (and b!979219 ((_ is ValueCellFull!10839) mapDefault!35990)) b!979225))

(assert (= start!83866 b!979219))

(declare-fun b_lambda!14721 () Bool)

(assert (=> (not b_lambda!14721) (not b!979218)))

(declare-fun t!29188 () Bool)

(declare-fun tb!6461 () Bool)

(assert (=> (and start!83866 (= defaultEntry!1281 defaultEntry!1281) t!29188) tb!6461))

(declare-fun result!12903 () Bool)

(assert (=> tb!6461 (= result!12903 tp_is_empty!22641)))

(assert (=> b!979218 t!29188))

(declare-fun b_and!31403 () Bool)

(assert (= b_and!31401 (and (=> t!29188 result!12903) b_and!31403)))

(declare-fun m!906617 () Bool)

(assert (=> b!979218 m!906617))

(declare-fun m!906619 () Bool)

(assert (=> b!979218 m!906619))

(assert (=> b!979218 m!906617))

(declare-fun m!906621 () Bool)

(assert (=> b!979218 m!906621))

(declare-fun m!906623 () Bool)

(assert (=> b!979218 m!906623))

(declare-fun m!906625 () Bool)

(assert (=> b!979218 m!906625))

(declare-fun m!906627 () Bool)

(assert (=> b!979218 m!906627))

(declare-fun m!906629 () Bool)

(assert (=> b!979218 m!906629))

(declare-fun m!906631 () Bool)

(assert (=> b!979218 m!906631))

(declare-fun m!906633 () Bool)

(assert (=> b!979218 m!906633))

(declare-fun m!906635 () Bool)

(assert (=> b!979218 m!906635))

(assert (=> b!979218 m!906619))

(assert (=> b!979218 m!906635))

(declare-fun m!906637 () Bool)

(assert (=> b!979218 m!906637))

(declare-fun m!906639 () Bool)

(assert (=> start!83866 m!906639))

(declare-fun m!906641 () Bool)

(assert (=> start!83866 m!906641))

(declare-fun m!906643 () Bool)

(assert (=> start!83866 m!906643))

(declare-fun m!906645 () Bool)

(assert (=> b!979220 m!906645))

(declare-fun m!906647 () Bool)

(assert (=> b!979221 m!906647))

(assert (=> b!979221 m!906647))

(declare-fun m!906649 () Bool)

(assert (=> b!979221 m!906649))

(assert (=> b!979221 m!906617))

(assert (=> b!979221 m!906617))

(declare-fun m!906651 () Bool)

(assert (=> b!979221 m!906651))

(declare-fun m!906653 () Bool)

(assert (=> b!979216 m!906653))

(assert (=> b!979222 m!906617))

(assert (=> b!979222 m!906617))

(declare-fun m!906655 () Bool)

(assert (=> b!979222 m!906655))

(declare-fun m!906657 () Bool)

(assert (=> mapNonEmpty!35990 m!906657))

(check-sat (not b!979221) (not b_lambda!14721) (not mapNonEmpty!35990) b_and!31403 (not b!979222) (not start!83866) (not b!979220) (not b!979218) (not b!979216) (not b_next!19647) tp_is_empty!22641)
(check-sat b_and!31403 (not b_next!19647))
