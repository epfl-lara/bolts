; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83382 () Bool)

(assert start!83382)

(declare-fun b_free!19347 () Bool)

(declare-fun b_next!19347 () Bool)

(assert (=> start!83382 (= b_free!19347 (not b_next!19347))))

(declare-fun tp!67320 () Bool)

(declare-fun b_and!30933 () Bool)

(assert (=> start!83382 (= tp!67320 b_and!30933)))

(declare-fun mapIsEmpty!35377 () Bool)

(declare-fun mapRes!35377 () Bool)

(assert (=> mapIsEmpty!35377 mapRes!35377))

(declare-fun b!973062 () Bool)

(declare-fun res!651455 () Bool)

(declare-fun e!548503 () Bool)

(assert (=> b!973062 (=> (not res!651455) (not e!548503))))

(declare-datatypes ((array!60515 0))(
  ( (array!60516 (arr!29117 (Array (_ BitVec 32) (_ BitVec 64))) (size!29597 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60515)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973062 (= res!651455 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29597 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29597 _keys!1717))))))

(declare-fun b!973063 () Bool)

(declare-fun res!651456 () Bool)

(assert (=> b!973063 (=> (not res!651456) (not e!548503))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34643 0))(
  ( (V!34644 (val!11173 Int)) )
))
(declare-datatypes ((ValueCell!10641 0))(
  ( (ValueCellFull!10641 (v!13732 V!34643)) (EmptyCell!10641) )
))
(declare-datatypes ((array!60517 0))(
  ( (array!60518 (arr!29118 (Array (_ BitVec 32) ValueCell!10641)) (size!29598 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60517)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!973063 (= res!651456 (and (= (size!29598 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29597 _keys!1717) (size!29598 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973064 () Bool)

(declare-fun e!548502 () Bool)

(assert (=> b!973064 (= e!548503 e!548502)))

(declare-fun res!651450 () Bool)

(assert (=> b!973064 (=> (not res!651450) (not e!548502))))

(declare-datatypes ((tuple2!14440 0))(
  ( (tuple2!14441 (_1!7230 (_ BitVec 64)) (_2!7230 V!34643)) )
))
(declare-datatypes ((List!20324 0))(
  ( (Nil!20321) (Cons!20320 (h!21482 tuple2!14440) (t!28777 List!20324)) )
))
(declare-datatypes ((ListLongMap!13151 0))(
  ( (ListLongMap!13152 (toList!6591 List!20324)) )
))
(declare-fun lt!432308 () ListLongMap!13151)

(declare-fun contains!5637 (ListLongMap!13151 (_ BitVec 64)) Bool)

(assert (=> b!973064 (= res!651450 (contains!5637 lt!432308 (select (arr!29117 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34643)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34643)

(declare-fun getCurrentListMap!3776 (array!60515 array!60517 (_ BitVec 32) (_ BitVec 32) V!34643 V!34643 (_ BitVec 32) Int) ListLongMap!13151)

(assert (=> b!973064 (= lt!432308 (getCurrentListMap!3776 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973065 () Bool)

(declare-fun e!548504 () Bool)

(declare-fun tp_is_empty!22245 () Bool)

(assert (=> b!973065 (= e!548504 tp_is_empty!22245)))

(declare-fun b!973066 () Bool)

(declare-fun e!548508 () Bool)

(assert (=> b!973066 (= e!548508 (not true))))

(declare-fun lt!432312 () tuple2!14440)

(declare-fun +!2864 (ListLongMap!13151 tuple2!14440) ListLongMap!13151)

(assert (=> b!973066 (contains!5637 (+!2864 lt!432308 lt!432312) (select (arr!29117 _keys!1717) i!822))))

(declare-fun lt!432310 () V!34643)

(declare-fun lt!432311 () (_ BitVec 64))

(declare-datatypes ((Unit!32389 0))(
  ( (Unit!32390) )
))
(declare-fun lt!432309 () Unit!32389)

(declare-fun addStillContains!603 (ListLongMap!13151 (_ BitVec 64) V!34643 (_ BitVec 64)) Unit!32389)

(assert (=> b!973066 (= lt!432309 (addStillContains!603 lt!432308 lt!432311 lt!432310 (select (arr!29117 _keys!1717) i!822)))))

(declare-fun lt!432307 () ListLongMap!13151)

(assert (=> b!973066 (= lt!432307 (+!2864 (getCurrentListMap!3776 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432312))))

(assert (=> b!973066 (= lt!432312 (tuple2!14441 lt!432311 lt!432310))))

(declare-fun get!15115 (ValueCell!10641 V!34643) V!34643)

(declare-fun dynLambda!1703 (Int (_ BitVec 64)) V!34643)

(assert (=> b!973066 (= lt!432310 (get!15115 (select (arr!29118 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1703 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432313 () Unit!32389)

(declare-fun lemmaListMapRecursiveValidKeyArray!275 (array!60515 array!60517 (_ BitVec 32) (_ BitVec 32) V!34643 V!34643 (_ BitVec 32) Int) Unit!32389)

(assert (=> b!973066 (= lt!432313 (lemmaListMapRecursiveValidKeyArray!275 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973067 () Bool)

(declare-fun res!651453 () Bool)

(assert (=> b!973067 (=> (not res!651453) (not e!548503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973067 (= res!651453 (validKeyInArray!0 (select (arr!29117 _keys!1717) i!822)))))

(declare-fun b!973068 () Bool)

(declare-fun res!651452 () Bool)

(assert (=> b!973068 (=> (not res!651452) (not e!548503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60515 (_ BitVec 32)) Bool)

(assert (=> b!973068 (= res!651452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973061 () Bool)

(declare-fun e!548507 () Bool)

(declare-fun e!548506 () Bool)

(assert (=> b!973061 (= e!548507 (and e!548506 mapRes!35377))))

(declare-fun condMapEmpty!35377 () Bool)

(declare-fun mapDefault!35377 () ValueCell!10641)

(assert (=> b!973061 (= condMapEmpty!35377 (= (arr!29118 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10641)) mapDefault!35377)))))

(declare-fun res!651457 () Bool)

(assert (=> start!83382 (=> (not res!651457) (not e!548503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83382 (= res!651457 (validMask!0 mask!2147))))

(assert (=> start!83382 e!548503))

(assert (=> start!83382 true))

(declare-fun array_inv!22421 (array!60517) Bool)

(assert (=> start!83382 (and (array_inv!22421 _values!1425) e!548507)))

(assert (=> start!83382 tp_is_empty!22245))

(assert (=> start!83382 tp!67320))

(declare-fun array_inv!22422 (array!60515) Bool)

(assert (=> start!83382 (array_inv!22422 _keys!1717)))

(declare-fun mapNonEmpty!35377 () Bool)

(declare-fun tp!67321 () Bool)

(assert (=> mapNonEmpty!35377 (= mapRes!35377 (and tp!67321 e!548504))))

(declare-fun mapRest!35377 () (Array (_ BitVec 32) ValueCell!10641))

(declare-fun mapValue!35377 () ValueCell!10641)

(declare-fun mapKey!35377 () (_ BitVec 32))

(assert (=> mapNonEmpty!35377 (= (arr!29118 _values!1425) (store mapRest!35377 mapKey!35377 mapValue!35377))))

(declare-fun b!973069 () Bool)

(declare-fun res!651454 () Bool)

(assert (=> b!973069 (=> (not res!651454) (not e!548503))))

(declare-datatypes ((List!20325 0))(
  ( (Nil!20322) (Cons!20321 (h!21483 (_ BitVec 64)) (t!28778 List!20325)) )
))
(declare-fun arrayNoDuplicates!0 (array!60515 (_ BitVec 32) List!20325) Bool)

(assert (=> b!973069 (= res!651454 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20322))))

(declare-fun b!973070 () Bool)

(assert (=> b!973070 (= e!548502 e!548508)))

(declare-fun res!651451 () Bool)

(assert (=> b!973070 (=> (not res!651451) (not e!548508))))

(assert (=> b!973070 (= res!651451 (validKeyInArray!0 lt!432311))))

(assert (=> b!973070 (= lt!432311 (select (arr!29117 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973070 (= lt!432307 (getCurrentListMap!3776 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973071 () Bool)

(assert (=> b!973071 (= e!548506 tp_is_empty!22245)))

(assert (= (and start!83382 res!651457) b!973063))

(assert (= (and b!973063 res!651456) b!973068))

(assert (= (and b!973068 res!651452) b!973069))

(assert (= (and b!973069 res!651454) b!973062))

(assert (= (and b!973062 res!651455) b!973067))

(assert (= (and b!973067 res!651453) b!973064))

(assert (= (and b!973064 res!651450) b!973070))

(assert (= (and b!973070 res!651451) b!973066))

(assert (= (and b!973061 condMapEmpty!35377) mapIsEmpty!35377))

(assert (= (and b!973061 (not condMapEmpty!35377)) mapNonEmpty!35377))

(get-info :version)

(assert (= (and mapNonEmpty!35377 ((_ is ValueCellFull!10641) mapValue!35377)) b!973065))

(assert (= (and b!973061 ((_ is ValueCellFull!10641) mapDefault!35377)) b!973071))

(assert (= start!83382 b!973061))

(declare-fun b_lambda!14541 () Bool)

(assert (=> (not b_lambda!14541) (not b!973066)))

(declare-fun t!28776 () Bool)

(declare-fun tb!6303 () Bool)

(assert (=> (and start!83382 (= defaultEntry!1428 defaultEntry!1428) t!28776) tb!6303))

(declare-fun result!12575 () Bool)

(assert (=> tb!6303 (= result!12575 tp_is_empty!22245)))

(assert (=> b!973066 t!28776))

(declare-fun b_and!30935 () Bool)

(assert (= b_and!30933 (and (=> t!28776 result!12575) b_and!30935)))

(declare-fun m!900703 () Bool)

(assert (=> start!83382 m!900703))

(declare-fun m!900705 () Bool)

(assert (=> start!83382 m!900705))

(declare-fun m!900707 () Bool)

(assert (=> start!83382 m!900707))

(declare-fun m!900709 () Bool)

(assert (=> b!973069 m!900709))

(declare-fun m!900711 () Bool)

(assert (=> b!973066 m!900711))

(declare-fun m!900713 () Bool)

(assert (=> b!973066 m!900713))

(declare-fun m!900715 () Bool)

(assert (=> b!973066 m!900715))

(declare-fun m!900717 () Bool)

(assert (=> b!973066 m!900717))

(declare-fun m!900719 () Bool)

(assert (=> b!973066 m!900719))

(assert (=> b!973066 m!900715))

(assert (=> b!973066 m!900711))

(declare-fun m!900721 () Bool)

(assert (=> b!973066 m!900721))

(declare-fun m!900723 () Bool)

(assert (=> b!973066 m!900723))

(assert (=> b!973066 m!900719))

(declare-fun m!900725 () Bool)

(assert (=> b!973066 m!900725))

(declare-fun m!900727 () Bool)

(assert (=> b!973066 m!900727))

(assert (=> b!973066 m!900715))

(declare-fun m!900729 () Bool)

(assert (=> b!973066 m!900729))

(assert (=> b!973066 m!900721))

(assert (=> b!973066 m!900713))

(assert (=> b!973064 m!900715))

(assert (=> b!973064 m!900715))

(declare-fun m!900731 () Bool)

(assert (=> b!973064 m!900731))

(declare-fun m!900733 () Bool)

(assert (=> b!973064 m!900733))

(assert (=> b!973067 m!900715))

(assert (=> b!973067 m!900715))

(declare-fun m!900735 () Bool)

(assert (=> b!973067 m!900735))

(declare-fun m!900737 () Bool)

(assert (=> b!973068 m!900737))

(declare-fun m!900739 () Bool)

(assert (=> b!973070 m!900739))

(declare-fun m!900741 () Bool)

(assert (=> b!973070 m!900741))

(declare-fun m!900743 () Bool)

(assert (=> b!973070 m!900743))

(declare-fun m!900745 () Bool)

(assert (=> mapNonEmpty!35377 m!900745))

(check-sat (not b!973064) (not b!973070) (not mapNonEmpty!35377) b_and!30935 (not start!83382) (not b!973069) (not b_lambda!14541) (not b!973068) (not b!973066) tp_is_empty!22245 (not b_next!19347) (not b!973067))
(check-sat b_and!30935 (not b_next!19347))
