; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84100 () Bool)

(assert start!84100)

(declare-fun b_free!19827 () Bool)

(declare-fun b_next!19827 () Bool)

(assert (=> start!84100 (= b_free!19827 (not b_next!19827))))

(declare-fun tp!69005 () Bool)

(declare-fun b_and!31755 () Bool)

(assert (=> start!84100 (= tp!69005 b_and!31755)))

(declare-fun b!982864 () Bool)

(declare-fun e!554041 () Bool)

(declare-fun e!554040 () Bool)

(assert (=> b!982864 (= e!554041 e!554040)))

(declare-fun res!657855 () Bool)

(assert (=> b!982864 (=> (not res!657855) (not e!554040))))

(declare-datatypes ((array!61735 0))(
  ( (array!61736 (arr!29721 (Array (_ BitVec 32) (_ BitVec 64))) (size!30201 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61735)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982864 (= res!657855 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29721 _keys!1544) from!1932))))))

(declare-datatypes ((V!35483 0))(
  ( (V!35484 (val!11488 Int)) )
))
(declare-datatypes ((ValueCell!10956 0))(
  ( (ValueCellFull!10956 (v!14050 V!35483)) (EmptyCell!10956) )
))
(declare-datatypes ((array!61737 0))(
  ( (array!61738 (arr!29722 (Array (_ BitVec 32) ValueCell!10956)) (size!30202 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61737)

(declare-fun lt!436329 () V!35483)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15439 (ValueCell!10956 V!35483) V!35483)

(declare-fun dynLambda!1814 (Int (_ BitVec 64)) V!35483)

(assert (=> b!982864 (= lt!436329 (get!15439 (select (arr!29722 _values!1278) from!1932) (dynLambda!1814 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35483)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35483)

(declare-datatypes ((tuple2!14822 0))(
  ( (tuple2!14823 (_1!7421 (_ BitVec 64)) (_2!7421 V!35483)) )
))
(declare-datatypes ((List!20727 0))(
  ( (Nil!20724) (Cons!20723 (h!21885 tuple2!14822) (t!29512 List!20727)) )
))
(declare-datatypes ((ListLongMap!13533 0))(
  ( (ListLongMap!13534 (toList!6782 List!20727)) )
))
(declare-fun lt!436327 () ListLongMap!13533)

(declare-fun getCurrentListMapNoExtraKeys!3441 (array!61735 array!61737 (_ BitVec 32) (_ BitVec 32) V!35483 V!35483 (_ BitVec 32) Int) ListLongMap!13533)

(assert (=> b!982864 (= lt!436327 (getCurrentListMapNoExtraKeys!3441 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982865 () Bool)

(declare-fun e!554039 () Bool)

(declare-fun tp_is_empty!22875 () Bool)

(assert (=> b!982865 (= e!554039 tp_is_empty!22875)))

(declare-fun b!982866 () Bool)

(declare-fun res!657850 () Bool)

(assert (=> b!982866 (=> (not res!657850) (not e!554041))))

(assert (=> b!982866 (= res!657850 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36341 () Bool)

(declare-fun mapRes!36341 () Bool)

(declare-fun tp!69004 () Bool)

(declare-fun e!554038 () Bool)

(assert (=> mapNonEmpty!36341 (= mapRes!36341 (and tp!69004 e!554038))))

(declare-fun mapKey!36341 () (_ BitVec 32))

(declare-fun mapRest!36341 () (Array (_ BitVec 32) ValueCell!10956))

(declare-fun mapValue!36341 () ValueCell!10956)

(assert (=> mapNonEmpty!36341 (= (arr!29722 _values!1278) (store mapRest!36341 mapKey!36341 mapValue!36341))))

(declare-fun b!982867 () Bool)

(assert (=> b!982867 (= e!554038 tp_is_empty!22875)))

(declare-fun b!982869 () Bool)

(declare-fun res!657849 () Bool)

(assert (=> b!982869 (=> (not res!657849) (not e!554041))))

(assert (=> b!982869 (= res!657849 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30201 _keys!1544))))))

(declare-fun b!982870 () Bool)

(declare-fun e!554037 () Bool)

(assert (=> b!982870 (= e!554037 (and e!554039 mapRes!36341))))

(declare-fun condMapEmpty!36341 () Bool)

(declare-fun mapDefault!36341 () ValueCell!10956)

(assert (=> b!982870 (= condMapEmpty!36341 (= (arr!29722 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10956)) mapDefault!36341)))))

(declare-fun mapIsEmpty!36341 () Bool)

(assert (=> mapIsEmpty!36341 mapRes!36341))

(declare-fun b!982871 () Bool)

(declare-fun res!657851 () Bool)

(assert (=> b!982871 (=> (not res!657851) (not e!554041))))

(assert (=> b!982871 (= res!657851 (and (= (size!30202 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30201 _keys!1544) (size!30202 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982872 () Bool)

(declare-fun res!657854 () Bool)

(assert (=> b!982872 (=> (not res!657854) (not e!554041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61735 (_ BitVec 32)) Bool)

(assert (=> b!982872 (= res!657854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982868 () Bool)

(assert (=> b!982868 (= e!554040 (not true))))

(declare-fun lt!436326 () tuple2!14822)

(declare-fun lt!436328 () tuple2!14822)

(declare-fun +!2979 (ListLongMap!13533 tuple2!14822) ListLongMap!13533)

(assert (=> b!982868 (= (+!2979 (+!2979 lt!436327 lt!436326) lt!436328) (+!2979 (+!2979 lt!436327 lt!436328) lt!436326))))

(assert (=> b!982868 (= lt!436328 (tuple2!14823 (select (arr!29721 _keys!1544) from!1932) lt!436329))))

(assert (=> b!982868 (= lt!436326 (tuple2!14823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32633 0))(
  ( (Unit!32634) )
))
(declare-fun lt!436330 () Unit!32633)

(declare-fun addCommutativeForDiffKeys!641 (ListLongMap!13533 (_ BitVec 64) V!35483 (_ BitVec 64) V!35483) Unit!32633)

(assert (=> b!982868 (= lt!436330 (addCommutativeForDiffKeys!641 lt!436327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29721 _keys!1544) from!1932) lt!436329))))

(declare-fun res!657848 () Bool)

(assert (=> start!84100 (=> (not res!657848) (not e!554041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84100 (= res!657848 (validMask!0 mask!1948))))

(assert (=> start!84100 e!554041))

(assert (=> start!84100 true))

(assert (=> start!84100 tp_is_empty!22875))

(declare-fun array_inv!22851 (array!61737) Bool)

(assert (=> start!84100 (and (array_inv!22851 _values!1278) e!554037)))

(assert (=> start!84100 tp!69005))

(declare-fun array_inv!22852 (array!61735) Bool)

(assert (=> start!84100 (array_inv!22852 _keys!1544)))

(declare-fun b!982873 () Bool)

(declare-fun res!657853 () Bool)

(assert (=> b!982873 (=> (not res!657853) (not e!554041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982873 (= res!657853 (validKeyInArray!0 (select (arr!29721 _keys!1544) from!1932)))))

(declare-fun b!982874 () Bool)

(declare-fun res!657852 () Bool)

(assert (=> b!982874 (=> (not res!657852) (not e!554041))))

(declare-datatypes ((List!20728 0))(
  ( (Nil!20725) (Cons!20724 (h!21886 (_ BitVec 64)) (t!29513 List!20728)) )
))
(declare-fun arrayNoDuplicates!0 (array!61735 (_ BitVec 32) List!20728) Bool)

(assert (=> b!982874 (= res!657852 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20725))))

(assert (= (and start!84100 res!657848) b!982871))

(assert (= (and b!982871 res!657851) b!982872))

(assert (= (and b!982872 res!657854) b!982874))

(assert (= (and b!982874 res!657852) b!982869))

(assert (= (and b!982869 res!657849) b!982873))

(assert (= (and b!982873 res!657853) b!982866))

(assert (= (and b!982866 res!657850) b!982864))

(assert (= (and b!982864 res!657855) b!982868))

(assert (= (and b!982870 condMapEmpty!36341) mapIsEmpty!36341))

(assert (= (and b!982870 (not condMapEmpty!36341)) mapNonEmpty!36341))

(get-info :version)

(assert (= (and mapNonEmpty!36341 ((_ is ValueCellFull!10956) mapValue!36341)) b!982867))

(assert (= (and b!982870 ((_ is ValueCellFull!10956) mapDefault!36341)) b!982865))

(assert (= start!84100 b!982870))

(declare-fun b_lambda!14895 () Bool)

(assert (=> (not b_lambda!14895) (not b!982864)))

(declare-fun t!29511 () Bool)

(declare-fun tb!6635 () Bool)

(assert (=> (and start!84100 (= defaultEntry!1281 defaultEntry!1281) t!29511) tb!6635))

(declare-fun result!13251 () Bool)

(assert (=> tb!6635 (= result!13251 tp_is_empty!22875)))

(assert (=> b!982864 t!29511))

(declare-fun b_and!31757 () Bool)

(assert (= b_and!31755 (and (=> t!29511 result!13251) b_and!31757)))

(declare-fun m!910293 () Bool)

(assert (=> b!982864 m!910293))

(declare-fun m!910295 () Bool)

(assert (=> b!982864 m!910295))

(declare-fun m!910297 () Bool)

(assert (=> b!982864 m!910297))

(declare-fun m!910299 () Bool)

(assert (=> b!982864 m!910299))

(assert (=> b!982864 m!910295))

(assert (=> b!982864 m!910299))

(declare-fun m!910301 () Bool)

(assert (=> b!982864 m!910301))

(declare-fun m!910303 () Bool)

(assert (=> b!982874 m!910303))

(declare-fun m!910305 () Bool)

(assert (=> start!84100 m!910305))

(declare-fun m!910307 () Bool)

(assert (=> start!84100 m!910307))

(declare-fun m!910309 () Bool)

(assert (=> start!84100 m!910309))

(declare-fun m!910311 () Bool)

(assert (=> b!982872 m!910311))

(declare-fun m!910313 () Bool)

(assert (=> b!982868 m!910313))

(declare-fun m!910315 () Bool)

(assert (=> b!982868 m!910315))

(assert (=> b!982868 m!910293))

(declare-fun m!910317 () Bool)

(assert (=> b!982868 m!910317))

(declare-fun m!910319 () Bool)

(assert (=> b!982868 m!910319))

(assert (=> b!982868 m!910293))

(assert (=> b!982868 m!910319))

(declare-fun m!910321 () Bool)

(assert (=> b!982868 m!910321))

(assert (=> b!982868 m!910313))

(declare-fun m!910323 () Bool)

(assert (=> mapNonEmpty!36341 m!910323))

(assert (=> b!982873 m!910293))

(assert (=> b!982873 m!910293))

(declare-fun m!910325 () Bool)

(assert (=> b!982873 m!910325))

(check-sat (not start!84100) (not b!982872) (not b!982868) (not b!982873) tp_is_empty!22875 (not b_next!19827) b_and!31757 (not b!982864) (not mapNonEmpty!36341) (not b!982874) (not b_lambda!14895))
(check-sat b_and!31757 (not b_next!19827))
