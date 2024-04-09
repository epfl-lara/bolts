; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83352 () Bool)

(assert start!83352)

(declare-fun b_free!19317 () Bool)

(declare-fun b_next!19317 () Bool)

(assert (=> start!83352 (= b_free!19317 (not b_next!19317))))

(declare-fun tp!67231 () Bool)

(declare-fun b_and!30873 () Bool)

(assert (=> start!83352 (= tp!67231 b_and!30873)))

(declare-fun b!972536 () Bool)

(declare-fun res!651090 () Bool)

(declare-fun e!548203 () Bool)

(assert (=> b!972536 (=> (not res!651090) (not e!548203))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34603 0))(
  ( (V!34604 (val!11158 Int)) )
))
(declare-datatypes ((ValueCell!10626 0))(
  ( (ValueCellFull!10626 (v!13717 V!34603)) (EmptyCell!10626) )
))
(declare-datatypes ((array!60457 0))(
  ( (array!60458 (arr!29088 (Array (_ BitVec 32) ValueCell!10626)) (size!29568 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60457)

(declare-fun zeroValue!1367 () V!34603)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34603)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60459 0))(
  ( (array!60460 (arr!29089 (Array (_ BitVec 32) (_ BitVec 64))) (size!29569 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60459)

(declare-datatypes ((tuple2!14414 0))(
  ( (tuple2!14415 (_1!7217 (_ BitVec 64)) (_2!7217 V!34603)) )
))
(declare-datatypes ((List!20302 0))(
  ( (Nil!20299) (Cons!20298 (h!21460 tuple2!14414) (t!28725 List!20302)) )
))
(declare-datatypes ((ListLongMap!13125 0))(
  ( (ListLongMap!13126 (toList!6578 List!20302)) )
))
(declare-fun contains!5625 (ListLongMap!13125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3763 (array!60459 array!60457 (_ BitVec 32) (_ BitVec 32) V!34603 V!34603 (_ BitVec 32) Int) ListLongMap!13125)

(assert (=> b!972536 (= res!651090 (contains!5625 (getCurrentListMap!3763 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29089 _keys!1717) i!822)))))

(declare-fun b!972537 () Bool)

(declare-fun res!651091 () Bool)

(assert (=> b!972537 (=> (not res!651091) (not e!548203))))

(assert (=> b!972537 (= res!651091 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29569 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29569 _keys!1717))))))

(declare-fun mapNonEmpty!35332 () Bool)

(declare-fun mapRes!35332 () Bool)

(declare-fun tp!67230 () Bool)

(declare-fun e!548202 () Bool)

(assert (=> mapNonEmpty!35332 (= mapRes!35332 (and tp!67230 e!548202))))

(declare-fun mapValue!35332 () ValueCell!10626)

(declare-fun mapRest!35332 () (Array (_ BitVec 32) ValueCell!10626))

(declare-fun mapKey!35332 () (_ BitVec 32))

(assert (=> mapNonEmpty!35332 (= (arr!29088 _values!1425) (store mapRest!35332 mapKey!35332 mapValue!35332))))

(declare-fun b!972538 () Bool)

(declare-fun res!651097 () Bool)

(assert (=> b!972538 (=> (not res!651097) (not e!548203))))

(assert (=> b!972538 (= res!651097 (and (= (size!29568 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29569 _keys!1717) (size!29568 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972539 () Bool)

(declare-fun res!651094 () Bool)

(assert (=> b!972539 (=> (not res!651094) (not e!548203))))

(declare-datatypes ((List!20303 0))(
  ( (Nil!20300) (Cons!20299 (h!21461 (_ BitVec 64)) (t!28726 List!20303)) )
))
(declare-fun arrayNoDuplicates!0 (array!60459 (_ BitVec 32) List!20303) Bool)

(assert (=> b!972539 (= res!651094 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20300))))

(declare-fun mapIsEmpty!35332 () Bool)

(assert (=> mapIsEmpty!35332 mapRes!35332))

(declare-fun b!972541 () Bool)

(declare-fun e!548204 () Bool)

(assert (=> b!972541 (= e!548204 (not (and (bvsge from!2118 #b00000000000000000000000000000000) (bvsle from!2118 (size!29569 _keys!1717)))))))

(declare-fun lt!432044 () (_ BitVec 64))

(declare-fun lt!432046 () ListLongMap!13125)

(declare-fun +!2853 (ListLongMap!13125 tuple2!14414) ListLongMap!13125)

(declare-fun get!15094 (ValueCell!10626 V!34603) V!34603)

(declare-fun dynLambda!1692 (Int (_ BitVec 64)) V!34603)

(assert (=> b!972541 (= lt!432046 (+!2853 (getCurrentListMap!3763 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14415 lt!432044 (get!15094 (select (arr!29088 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1692 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32367 0))(
  ( (Unit!32368) )
))
(declare-fun lt!432045 () Unit!32367)

(declare-fun lemmaListMapRecursiveValidKeyArray!264 (array!60459 array!60457 (_ BitVec 32) (_ BitVec 32) V!34603 V!34603 (_ BitVec 32) Int) Unit!32367)

(assert (=> b!972541 (= lt!432045 (lemmaListMapRecursiveValidKeyArray!264 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972542 () Bool)

(assert (=> b!972542 (= e!548203 e!548204)))

(declare-fun res!651096 () Bool)

(assert (=> b!972542 (=> (not res!651096) (not e!548204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972542 (= res!651096 (validKeyInArray!0 lt!432044))))

(assert (=> b!972542 (= lt!432044 (select (arr!29089 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972542 (= lt!432046 (getCurrentListMap!3763 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972543 () Bool)

(declare-fun res!651095 () Bool)

(assert (=> b!972543 (=> (not res!651095) (not e!548203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60459 (_ BitVec 32)) Bool)

(assert (=> b!972543 (= res!651095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972544 () Bool)

(declare-fun tp_is_empty!22215 () Bool)

(assert (=> b!972544 (= e!548202 tp_is_empty!22215)))

(declare-fun b!972540 () Bool)

(declare-fun e!548201 () Bool)

(declare-fun e!548200 () Bool)

(assert (=> b!972540 (= e!548201 (and e!548200 mapRes!35332))))

(declare-fun condMapEmpty!35332 () Bool)

(declare-fun mapDefault!35332 () ValueCell!10626)

(assert (=> b!972540 (= condMapEmpty!35332 (= (arr!29088 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10626)) mapDefault!35332)))))

(declare-fun res!651093 () Bool)

(assert (=> start!83352 (=> (not res!651093) (not e!548203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83352 (= res!651093 (validMask!0 mask!2147))))

(assert (=> start!83352 e!548203))

(assert (=> start!83352 true))

(declare-fun array_inv!22399 (array!60457) Bool)

(assert (=> start!83352 (and (array_inv!22399 _values!1425) e!548201)))

(assert (=> start!83352 tp_is_empty!22215))

(assert (=> start!83352 tp!67231))

(declare-fun array_inv!22400 (array!60459) Bool)

(assert (=> start!83352 (array_inv!22400 _keys!1717)))

(declare-fun b!972545 () Bool)

(assert (=> b!972545 (= e!548200 tp_is_empty!22215)))

(declare-fun b!972546 () Bool)

(declare-fun res!651092 () Bool)

(assert (=> b!972546 (=> (not res!651092) (not e!548203))))

(assert (=> b!972546 (= res!651092 (validKeyInArray!0 (select (arr!29089 _keys!1717) i!822)))))

(assert (= (and start!83352 res!651093) b!972538))

(assert (= (and b!972538 res!651097) b!972543))

(assert (= (and b!972543 res!651095) b!972539))

(assert (= (and b!972539 res!651094) b!972537))

(assert (= (and b!972537 res!651091) b!972546))

(assert (= (and b!972546 res!651092) b!972536))

(assert (= (and b!972536 res!651090) b!972542))

(assert (= (and b!972542 res!651096) b!972541))

(assert (= (and b!972540 condMapEmpty!35332) mapIsEmpty!35332))

(assert (= (and b!972540 (not condMapEmpty!35332)) mapNonEmpty!35332))

(get-info :version)

(assert (= (and mapNonEmpty!35332 ((_ is ValueCellFull!10626) mapValue!35332)) b!972544))

(assert (= (and b!972540 ((_ is ValueCellFull!10626) mapDefault!35332)) b!972545))

(assert (= start!83352 b!972540))

(declare-fun b_lambda!14511 () Bool)

(assert (=> (not b_lambda!14511) (not b!972541)))

(declare-fun t!28724 () Bool)

(declare-fun tb!6273 () Bool)

(assert (=> (and start!83352 (= defaultEntry!1428 defaultEntry!1428) t!28724) tb!6273))

(declare-fun result!12515 () Bool)

(assert (=> tb!6273 (= result!12515 tp_is_empty!22215)))

(assert (=> b!972541 t!28724))

(declare-fun b_and!30875 () Bool)

(assert (= b_and!30873 (and (=> t!28724 result!12515) b_and!30875)))

(declare-fun m!900073 () Bool)

(assert (=> b!972543 m!900073))

(declare-fun m!900075 () Bool)

(assert (=> b!972539 m!900075))

(declare-fun m!900077 () Bool)

(assert (=> b!972541 m!900077))

(declare-fun m!900079 () Bool)

(assert (=> b!972541 m!900079))

(declare-fun m!900081 () Bool)

(assert (=> b!972541 m!900081))

(assert (=> b!972541 m!900079))

(declare-fun m!900083 () Bool)

(assert (=> b!972541 m!900083))

(assert (=> b!972541 m!900077))

(assert (=> b!972541 m!900081))

(declare-fun m!900085 () Bool)

(assert (=> b!972541 m!900085))

(declare-fun m!900087 () Bool)

(assert (=> b!972541 m!900087))

(declare-fun m!900089 () Bool)

(assert (=> mapNonEmpty!35332 m!900089))

(declare-fun m!900091 () Bool)

(assert (=> b!972542 m!900091))

(declare-fun m!900093 () Bool)

(assert (=> b!972542 m!900093))

(declare-fun m!900095 () Bool)

(assert (=> b!972542 m!900095))

(declare-fun m!900097 () Bool)

(assert (=> b!972536 m!900097))

(declare-fun m!900099 () Bool)

(assert (=> b!972536 m!900099))

(assert (=> b!972536 m!900097))

(assert (=> b!972536 m!900099))

(declare-fun m!900101 () Bool)

(assert (=> b!972536 m!900101))

(declare-fun m!900103 () Bool)

(assert (=> start!83352 m!900103))

(declare-fun m!900105 () Bool)

(assert (=> start!83352 m!900105))

(declare-fun m!900107 () Bool)

(assert (=> start!83352 m!900107))

(assert (=> b!972546 m!900099))

(assert (=> b!972546 m!900099))

(declare-fun m!900109 () Bool)

(assert (=> b!972546 m!900109))

(check-sat (not b!972542) (not b!972546) (not b!972539) (not start!83352) (not b_next!19317) (not b_lambda!14511) (not b!972541) b_and!30875 tp_is_empty!22215 (not mapNonEmpty!35332) (not b!972543) (not b!972536))
(check-sat b_and!30875 (not b_next!19317))
