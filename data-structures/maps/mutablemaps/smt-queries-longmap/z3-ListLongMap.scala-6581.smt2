; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83400 () Bool)

(assert start!83400)

(declare-fun b_free!19365 () Bool)

(declare-fun b_next!19365 () Bool)

(assert (=> start!83400 (= b_free!19365 (not b_next!19365))))

(declare-fun tp!67375 () Bool)

(declare-fun b_and!30969 () Bool)

(assert (=> start!83400 (= tp!67375 b_and!30969)))

(declare-fun b!973376 () Bool)

(declare-fun res!651672 () Bool)

(declare-fun e!548695 () Bool)

(assert (=> b!973376 (=> (not res!651672) (not e!548695))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34667 0))(
  ( (V!34668 (val!11182 Int)) )
))
(declare-datatypes ((ValueCell!10650 0))(
  ( (ValueCellFull!10650 (v!13741 V!34667)) (EmptyCell!10650) )
))
(declare-datatypes ((array!60551 0))(
  ( (array!60552 (arr!29135 (Array (_ BitVec 32) ValueCell!10650)) (size!29615 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60551)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60553 0))(
  ( (array!60554 (arr!29136 (Array (_ BitVec 32) (_ BitVec 64))) (size!29616 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60553)

(assert (=> b!973376 (= res!651672 (and (= (size!29615 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29616 _keys!1717) (size!29615 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973377 () Bool)

(declare-fun e!548691 () Bool)

(assert (=> b!973377 (= e!548691 (not true))))

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14456 0))(
  ( (tuple2!14457 (_1!7238 (_ BitVec 64)) (_2!7238 V!34667)) )
))
(declare-datatypes ((List!20336 0))(
  ( (Nil!20333) (Cons!20332 (h!21494 tuple2!14456) (t!28807 List!20336)) )
))
(declare-datatypes ((ListLongMap!13167 0))(
  ( (ListLongMap!13168 (toList!6599 List!20336)) )
))
(declare-fun lt!432500 () ListLongMap!13167)

(declare-fun lt!432496 () tuple2!14456)

(declare-fun contains!5643 (ListLongMap!13167 (_ BitVec 64)) Bool)

(declare-fun +!2869 (ListLongMap!13167 tuple2!14456) ListLongMap!13167)

(assert (=> b!973377 (contains!5643 (+!2869 lt!432500 lt!432496) (select (arr!29136 _keys!1717) i!822))))

(declare-fun lt!432499 () V!34667)

(declare-datatypes ((Unit!32399 0))(
  ( (Unit!32400) )
))
(declare-fun lt!432501 () Unit!32399)

(declare-fun lt!432498 () (_ BitVec 64))

(declare-fun addStillContains!608 (ListLongMap!13167 (_ BitVec 64) V!34667 (_ BitVec 64)) Unit!32399)

(assert (=> b!973377 (= lt!432501 (addStillContains!608 lt!432500 lt!432498 lt!432499 (select (arr!29136 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34667)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34667)

(declare-fun lt!432497 () ListLongMap!13167)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun getCurrentListMap!3784 (array!60553 array!60551 (_ BitVec 32) (_ BitVec 32) V!34667 V!34667 (_ BitVec 32) Int) ListLongMap!13167)

(assert (=> b!973377 (= lt!432497 (+!2869 (getCurrentListMap!3784 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432496))))

(assert (=> b!973377 (= lt!432496 (tuple2!14457 lt!432498 lt!432499))))

(declare-fun get!15126 (ValueCell!10650 V!34667) V!34667)

(declare-fun dynLambda!1708 (Int (_ BitVec 64)) V!34667)

(assert (=> b!973377 (= lt!432499 (get!15126 (select (arr!29135 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1708 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432502 () Unit!32399)

(declare-fun lemmaListMapRecursiveValidKeyArray!280 (array!60553 array!60551 (_ BitVec 32) (_ BitVec 32) V!34667 V!34667 (_ BitVec 32) Int) Unit!32399)

(assert (=> b!973377 (= lt!432502 (lemmaListMapRecursiveValidKeyArray!280 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973378 () Bool)

(declare-fun res!651667 () Bool)

(assert (=> b!973378 (=> (not res!651667) (not e!548695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973378 (= res!651667 (validKeyInArray!0 (select (arr!29136 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35404 () Bool)

(declare-fun mapRes!35404 () Bool)

(declare-fun tp!67374 () Bool)

(declare-fun e!548697 () Bool)

(assert (=> mapNonEmpty!35404 (= mapRes!35404 (and tp!67374 e!548697))))

(declare-fun mapKey!35404 () (_ BitVec 32))

(declare-fun mapRest!35404 () (Array (_ BitVec 32) ValueCell!10650))

(declare-fun mapValue!35404 () ValueCell!10650)

(assert (=> mapNonEmpty!35404 (= (arr!29135 _values!1425) (store mapRest!35404 mapKey!35404 mapValue!35404))))

(declare-fun b!973379 () Bool)

(declare-fun tp_is_empty!22263 () Bool)

(assert (=> b!973379 (= e!548697 tp_is_empty!22263)))

(declare-fun res!651668 () Bool)

(assert (=> start!83400 (=> (not res!651668) (not e!548695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83400 (= res!651668 (validMask!0 mask!2147))))

(assert (=> start!83400 e!548695))

(assert (=> start!83400 true))

(declare-fun e!548693 () Bool)

(declare-fun array_inv!22433 (array!60551) Bool)

(assert (=> start!83400 (and (array_inv!22433 _values!1425) e!548693)))

(assert (=> start!83400 tp_is_empty!22263))

(assert (=> start!83400 tp!67375))

(declare-fun array_inv!22434 (array!60553) Bool)

(assert (=> start!83400 (array_inv!22434 _keys!1717)))

(declare-fun b!973380 () Bool)

(declare-fun e!548694 () Bool)

(assert (=> b!973380 (= e!548694 e!548691)))

(declare-fun res!651671 () Bool)

(assert (=> b!973380 (=> (not res!651671) (not e!548691))))

(assert (=> b!973380 (= res!651671 (validKeyInArray!0 lt!432498))))

(assert (=> b!973380 (= lt!432498 (select (arr!29136 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973380 (= lt!432497 (getCurrentListMap!3784 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973381 () Bool)

(declare-fun res!651666 () Bool)

(assert (=> b!973381 (=> (not res!651666) (not e!548695))))

(assert (=> b!973381 (= res!651666 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29616 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29616 _keys!1717))))))

(declare-fun b!973382 () Bool)

(declare-fun e!548696 () Bool)

(assert (=> b!973382 (= e!548693 (and e!548696 mapRes!35404))))

(declare-fun condMapEmpty!35404 () Bool)

(declare-fun mapDefault!35404 () ValueCell!10650)

(assert (=> b!973382 (= condMapEmpty!35404 (= (arr!29135 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10650)) mapDefault!35404)))))

(declare-fun b!973383 () Bool)

(declare-fun res!651669 () Bool)

(assert (=> b!973383 (=> (not res!651669) (not e!548695))))

(declare-datatypes ((List!20337 0))(
  ( (Nil!20334) (Cons!20333 (h!21495 (_ BitVec 64)) (t!28808 List!20337)) )
))
(declare-fun arrayNoDuplicates!0 (array!60553 (_ BitVec 32) List!20337) Bool)

(assert (=> b!973383 (= res!651669 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20334))))

(declare-fun mapIsEmpty!35404 () Bool)

(assert (=> mapIsEmpty!35404 mapRes!35404))

(declare-fun b!973384 () Bool)

(assert (=> b!973384 (= e!548695 e!548694)))

(declare-fun res!651670 () Bool)

(assert (=> b!973384 (=> (not res!651670) (not e!548694))))

(assert (=> b!973384 (= res!651670 (contains!5643 lt!432500 (select (arr!29136 _keys!1717) i!822)))))

(assert (=> b!973384 (= lt!432500 (getCurrentListMap!3784 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973385 () Bool)

(declare-fun res!651673 () Bool)

(assert (=> b!973385 (=> (not res!651673) (not e!548695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60553 (_ BitVec 32)) Bool)

(assert (=> b!973385 (= res!651673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973386 () Bool)

(assert (=> b!973386 (= e!548696 tp_is_empty!22263)))

(assert (= (and start!83400 res!651668) b!973376))

(assert (= (and b!973376 res!651672) b!973385))

(assert (= (and b!973385 res!651673) b!973383))

(assert (= (and b!973383 res!651669) b!973381))

(assert (= (and b!973381 res!651666) b!973378))

(assert (= (and b!973378 res!651667) b!973384))

(assert (= (and b!973384 res!651670) b!973380))

(assert (= (and b!973380 res!651671) b!973377))

(assert (= (and b!973382 condMapEmpty!35404) mapIsEmpty!35404))

(assert (= (and b!973382 (not condMapEmpty!35404)) mapNonEmpty!35404))

(get-info :version)

(assert (= (and mapNonEmpty!35404 ((_ is ValueCellFull!10650) mapValue!35404)) b!973379))

(assert (= (and b!973382 ((_ is ValueCellFull!10650) mapDefault!35404)) b!973386))

(assert (= start!83400 b!973382))

(declare-fun b_lambda!14559 () Bool)

(assert (=> (not b_lambda!14559) (not b!973377)))

(declare-fun t!28806 () Bool)

(declare-fun tb!6321 () Bool)

(assert (=> (and start!83400 (= defaultEntry!1428 defaultEntry!1428) t!28806) tb!6321))

(declare-fun result!12611 () Bool)

(assert (=> tb!6321 (= result!12611 tp_is_empty!22263)))

(assert (=> b!973377 t!28806))

(declare-fun b_and!30971 () Bool)

(assert (= b_and!30969 (and (=> t!28806 result!12611) b_and!30971)))

(declare-fun m!901099 () Bool)

(assert (=> start!83400 m!901099))

(declare-fun m!901101 () Bool)

(assert (=> start!83400 m!901101))

(declare-fun m!901103 () Bool)

(assert (=> start!83400 m!901103))

(declare-fun m!901105 () Bool)

(assert (=> b!973385 m!901105))

(declare-fun m!901107 () Bool)

(assert (=> b!973378 m!901107))

(assert (=> b!973378 m!901107))

(declare-fun m!901109 () Bool)

(assert (=> b!973378 m!901109))

(declare-fun m!901111 () Bool)

(assert (=> b!973383 m!901111))

(declare-fun m!901113 () Bool)

(assert (=> b!973380 m!901113))

(declare-fun m!901115 () Bool)

(assert (=> b!973380 m!901115))

(declare-fun m!901117 () Bool)

(assert (=> b!973380 m!901117))

(declare-fun m!901119 () Bool)

(assert (=> mapNonEmpty!35404 m!901119))

(declare-fun m!901121 () Bool)

(assert (=> b!973377 m!901121))

(assert (=> b!973377 m!901107))

(declare-fun m!901123 () Bool)

(assert (=> b!973377 m!901123))

(declare-fun m!901125 () Bool)

(assert (=> b!973377 m!901125))

(declare-fun m!901127 () Bool)

(assert (=> b!973377 m!901127))

(assert (=> b!973377 m!901125))

(declare-fun m!901129 () Bool)

(assert (=> b!973377 m!901129))

(declare-fun m!901131 () Bool)

(assert (=> b!973377 m!901131))

(assert (=> b!973377 m!901107))

(declare-fun m!901133 () Bool)

(assert (=> b!973377 m!901133))

(assert (=> b!973377 m!901107))

(assert (=> b!973377 m!901131))

(assert (=> b!973377 m!901121))

(assert (=> b!973377 m!901127))

(declare-fun m!901135 () Bool)

(assert (=> b!973377 m!901135))

(declare-fun m!901137 () Bool)

(assert (=> b!973377 m!901137))

(assert (=> b!973384 m!901107))

(assert (=> b!973384 m!901107))

(declare-fun m!901139 () Bool)

(assert (=> b!973384 m!901139))

(declare-fun m!901141 () Bool)

(assert (=> b!973384 m!901141))

(check-sat (not b!973383) (not b!973380) (not b!973377) (not b!973385) (not b!973384) (not b_lambda!14559) b_and!30971 (not start!83400) (not mapNonEmpty!35404) (not b!973378) (not b_next!19365) tp_is_empty!22263)
(check-sat b_and!30971 (not b_next!19365))
