; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83806 () Bool)

(assert start!83806)

(declare-fun b_free!19587 () Bool)

(declare-fun b_next!19587 () Bool)

(assert (=> start!83806 (= b_free!19587 (not b_next!19587))))

(declare-fun tp!68204 () Bool)

(declare-fun b_and!31281 () Bool)

(assert (=> start!83806 (= tp!68204 b_and!31281)))

(declare-fun b!978215 () Bool)

(declare-fun res!654757 () Bool)

(declare-fun e!551530 () Bool)

(assert (=> b!978215 (=> (not res!654757) (not e!551530))))

(declare-datatypes ((array!61179 0))(
  ( (array!61180 (arr!29443 (Array (_ BitVec 32) (_ BitVec 64))) (size!29923 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61179)

(declare-datatypes ((List!20539 0))(
  ( (Nil!20536) (Cons!20535 (h!21697 (_ BitVec 64)) (t!29090 List!20539)) )
))
(declare-fun arrayNoDuplicates!0 (array!61179 (_ BitVec 32) List!20539) Bool)

(assert (=> b!978215 (= res!654757 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20536))))

(declare-fun b!978216 () Bool)

(declare-fun res!654761 () Bool)

(assert (=> b!978216 (=> (not res!654761) (not e!551530))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61179 (_ BitVec 32)) Bool)

(assert (=> b!978216 (= res!654761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978217 () Bool)

(declare-fun e!551531 () Bool)

(declare-fun tp_is_empty!22581 () Bool)

(assert (=> b!978217 (= e!551531 tp_is_empty!22581)))

(declare-fun b!978218 () Bool)

(assert (=> b!978218 (= e!551530 (not true))))

(declare-datatypes ((V!35091 0))(
  ( (V!35092 (val!11341 Int)) )
))
(declare-datatypes ((tuple2!14640 0))(
  ( (tuple2!14641 (_1!7330 (_ BitVec 64)) (_2!7330 V!35091)) )
))
(declare-datatypes ((List!20540 0))(
  ( (Nil!20537) (Cons!20536 (h!21698 tuple2!14640) (t!29091 List!20540)) )
))
(declare-datatypes ((ListLongMap!13351 0))(
  ( (ListLongMap!13352 (toList!6691 List!20540)) )
))
(declare-fun lt!433681 () ListLongMap!13351)

(declare-fun lt!433684 () tuple2!14640)

(declare-fun lt!433683 () tuple2!14640)

(declare-fun +!2897 (ListLongMap!13351 tuple2!14640) ListLongMap!13351)

(assert (=> b!978218 (= (+!2897 (+!2897 lt!433681 lt!433684) lt!433683) (+!2897 (+!2897 lt!433681 lt!433683) lt!433684))))

(declare-fun lt!433682 () V!35091)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978218 (= lt!433683 (tuple2!14641 (select (arr!29443 _keys!1544) from!1932) lt!433682))))

(declare-fun minValue!1220 () V!35091)

(assert (=> b!978218 (= lt!433684 (tuple2!14641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32469 0))(
  ( (Unit!32470) )
))
(declare-fun lt!433680 () Unit!32469)

(declare-fun addCommutativeForDiffKeys!559 (ListLongMap!13351 (_ BitVec 64) V!35091 (_ BitVec 64) V!35091) Unit!32469)

(assert (=> b!978218 (= lt!433680 (addCommutativeForDiffKeys!559 lt!433681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29443 _keys!1544) from!1932) lt!433682))))

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((ValueCell!10809 0))(
  ( (ValueCellFull!10809 (v!13903 V!35091)) (EmptyCell!10809) )
))
(declare-datatypes ((array!61181 0))(
  ( (array!61182 (arr!29444 (Array (_ BitVec 32) ValueCell!10809)) (size!29924 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61181)

(declare-fun get!15260 (ValueCell!10809 V!35091) V!35091)

(declare-fun dynLambda!1733 (Int (_ BitVec 64)) V!35091)

(assert (=> b!978218 (= lt!433682 (get!15260 (select (arr!29444 _values!1278) from!1932) (dynLambda!1733 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35091)

(declare-fun getCurrentListMapNoExtraKeys!3358 (array!61179 array!61181 (_ BitVec 32) (_ BitVec 32) V!35091 V!35091 (_ BitVec 32) Int) ListLongMap!13351)

(assert (=> b!978218 (= lt!433681 (+!2897 (getCurrentListMapNoExtraKeys!3358 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun mapIsEmpty!35900 () Bool)

(declare-fun mapRes!35900 () Bool)

(assert (=> mapIsEmpty!35900 mapRes!35900))

(declare-fun b!978219 () Bool)

(declare-fun res!654762 () Bool)

(assert (=> b!978219 (=> (not res!654762) (not e!551530))))

(assert (=> b!978219 (= res!654762 (and (= (size!29924 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29923 _keys!1544) (size!29924 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978220 () Bool)

(declare-fun e!551534 () Bool)

(assert (=> b!978220 (= e!551534 (and e!551531 mapRes!35900))))

(declare-fun condMapEmpty!35900 () Bool)

(declare-fun mapDefault!35900 () ValueCell!10809)

(assert (=> b!978220 (= condMapEmpty!35900 (= (arr!29444 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10809)) mapDefault!35900)))))

(declare-fun b!978221 () Bool)

(declare-fun res!654760 () Bool)

(assert (=> b!978221 (=> (not res!654760) (not e!551530))))

(assert (=> b!978221 (= res!654760 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978222 () Bool)

(declare-fun res!654759 () Bool)

(assert (=> b!978222 (=> (not res!654759) (not e!551530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978222 (= res!654759 (validKeyInArray!0 (select (arr!29443 _keys!1544) from!1932)))))

(declare-fun b!978223 () Bool)

(declare-fun e!551533 () Bool)

(assert (=> b!978223 (= e!551533 tp_is_empty!22581)))

(declare-fun b!978224 () Bool)

(declare-fun res!654758 () Bool)

(assert (=> b!978224 (=> (not res!654758) (not e!551530))))

(assert (=> b!978224 (= res!654758 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29923 _keys!1544))))))

(declare-fun mapNonEmpty!35900 () Bool)

(declare-fun tp!68203 () Bool)

(assert (=> mapNonEmpty!35900 (= mapRes!35900 (and tp!68203 e!551533))))

(declare-fun mapRest!35900 () (Array (_ BitVec 32) ValueCell!10809))

(declare-fun mapKey!35900 () (_ BitVec 32))

(declare-fun mapValue!35900 () ValueCell!10809)

(assert (=> mapNonEmpty!35900 (= (arr!29444 _values!1278) (store mapRest!35900 mapKey!35900 mapValue!35900))))

(declare-fun res!654756 () Bool)

(assert (=> start!83806 (=> (not res!654756) (not e!551530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83806 (= res!654756 (validMask!0 mask!1948))))

(assert (=> start!83806 e!551530))

(assert (=> start!83806 true))

(assert (=> start!83806 tp_is_empty!22581))

(declare-fun array_inv!22659 (array!61181) Bool)

(assert (=> start!83806 (and (array_inv!22659 _values!1278) e!551534)))

(assert (=> start!83806 tp!68204))

(declare-fun array_inv!22660 (array!61179) Bool)

(assert (=> start!83806 (array_inv!22660 _keys!1544)))

(assert (= (and start!83806 res!654756) b!978219))

(assert (= (and b!978219 res!654762) b!978216))

(assert (= (and b!978216 res!654761) b!978215))

(assert (= (and b!978215 res!654757) b!978224))

(assert (= (and b!978224 res!654758) b!978222))

(assert (= (and b!978222 res!654759) b!978221))

(assert (= (and b!978221 res!654760) b!978218))

(assert (= (and b!978220 condMapEmpty!35900) mapIsEmpty!35900))

(assert (= (and b!978220 (not condMapEmpty!35900)) mapNonEmpty!35900))

(get-info :version)

(assert (= (and mapNonEmpty!35900 ((_ is ValueCellFull!10809) mapValue!35900)) b!978223))

(assert (= (and b!978220 ((_ is ValueCellFull!10809) mapDefault!35900)) b!978217))

(assert (= start!83806 b!978220))

(declare-fun b_lambda!14661 () Bool)

(assert (=> (not b_lambda!14661) (not b!978218)))

(declare-fun t!29089 () Bool)

(declare-fun tb!6401 () Bool)

(assert (=> (and start!83806 (= defaultEntry!1281 defaultEntry!1281) t!29089) tb!6401))

(declare-fun result!12783 () Bool)

(assert (=> tb!6401 (= result!12783 tp_is_empty!22581)))

(assert (=> b!978218 t!29089))

(declare-fun b_and!31283 () Bool)

(assert (= b_and!31281 (and (=> t!29089 result!12783) b_and!31283)))

(declare-fun m!905459 () Bool)

(assert (=> b!978215 m!905459))

(declare-fun m!905461 () Bool)

(assert (=> b!978216 m!905461))

(declare-fun m!905463 () Bool)

(assert (=> b!978218 m!905463))

(declare-fun m!905465 () Bool)

(assert (=> b!978218 m!905465))

(declare-fun m!905467 () Bool)

(assert (=> b!978218 m!905467))

(declare-fun m!905469 () Bool)

(assert (=> b!978218 m!905469))

(declare-fun m!905471 () Bool)

(assert (=> b!978218 m!905471))

(declare-fun m!905473 () Bool)

(assert (=> b!978218 m!905473))

(assert (=> b!978218 m!905471))

(declare-fun m!905475 () Bool)

(assert (=> b!978218 m!905475))

(assert (=> b!978218 m!905473))

(declare-fun m!905477 () Bool)

(assert (=> b!978218 m!905477))

(assert (=> b!978218 m!905467))

(assert (=> b!978218 m!905463))

(declare-fun m!905479 () Bool)

(assert (=> b!978218 m!905479))

(declare-fun m!905481 () Bool)

(assert (=> b!978218 m!905481))

(assert (=> b!978218 m!905465))

(assert (=> b!978218 m!905481))

(declare-fun m!905483 () Bool)

(assert (=> b!978218 m!905483))

(declare-fun m!905485 () Bool)

(assert (=> start!83806 m!905485))

(declare-fun m!905487 () Bool)

(assert (=> start!83806 m!905487))

(declare-fun m!905489 () Bool)

(assert (=> start!83806 m!905489))

(declare-fun m!905491 () Bool)

(assert (=> mapNonEmpty!35900 m!905491))

(assert (=> b!978222 m!905463))

(assert (=> b!978222 m!905463))

(declare-fun m!905493 () Bool)

(assert (=> b!978222 m!905493))

(check-sat b_and!31283 (not start!83806) (not b_next!19587) (not b!978222) (not b!978215) tp_is_empty!22581 (not b!978218) (not mapNonEmpty!35900) (not b_lambda!14661) (not b!978216))
(check-sat b_and!31283 (not b_next!19587))
