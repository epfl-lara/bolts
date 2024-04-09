; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83406 () Bool)

(assert start!83406)

(declare-fun b_free!19371 () Bool)

(declare-fun b_next!19371 () Bool)

(assert (=> start!83406 (= b_free!19371 (not b_next!19371))))

(declare-fun tp!67392 () Bool)

(declare-fun b_and!30981 () Bool)

(assert (=> start!83406 (= tp!67392 b_and!30981)))

(declare-fun mapNonEmpty!35413 () Bool)

(declare-fun mapRes!35413 () Bool)

(declare-fun tp!67393 () Bool)

(declare-fun e!548756 () Bool)

(assert (=> mapNonEmpty!35413 (= mapRes!35413 (and tp!67393 e!548756))))

(declare-datatypes ((V!34675 0))(
  ( (V!34676 (val!11185 Int)) )
))
(declare-datatypes ((ValueCell!10653 0))(
  ( (ValueCellFull!10653 (v!13744 V!34675)) (EmptyCell!10653) )
))
(declare-datatypes ((array!60563 0))(
  ( (array!60564 (arr!29141 (Array (_ BitVec 32) ValueCell!10653)) (size!29621 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60563)

(declare-fun mapRest!35413 () (Array (_ BitVec 32) ValueCell!10653))

(declare-fun mapKey!35413 () (_ BitVec 32))

(declare-fun mapValue!35413 () ValueCell!10653)

(assert (=> mapNonEmpty!35413 (= (arr!29141 _values!1425) (store mapRest!35413 mapKey!35413 mapValue!35413))))

(declare-fun b!973481 () Bool)

(declare-fun res!651738 () Bool)

(declare-fun e!548754 () Bool)

(assert (=> b!973481 (=> (not res!651738) (not e!548754))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60565 0))(
  ( (array!60566 (arr!29142 (Array (_ BitVec 32) (_ BitVec 64))) (size!29622 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60565)

(assert (=> b!973481 (= res!651738 (and (= (size!29621 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29622 _keys!1717) (size!29621 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973482 () Bool)

(declare-fun e!548757 () Bool)

(declare-fun e!548755 () Bool)

(assert (=> b!973482 (= e!548757 e!548755)))

(declare-fun res!651744 () Bool)

(assert (=> b!973482 (=> (not res!651744) (not e!548755))))

(declare-fun lt!432563 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973482 (= res!651744 (validKeyInArray!0 lt!432563))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!973482 (= lt!432563 (select (arr!29142 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34675)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34675)

(declare-datatypes ((tuple2!14462 0))(
  ( (tuple2!14463 (_1!7241 (_ BitVec 64)) (_2!7241 V!34675)) )
))
(declare-datatypes ((List!20341 0))(
  ( (Nil!20338) (Cons!20337 (h!21499 tuple2!14462) (t!28818 List!20341)) )
))
(declare-datatypes ((ListLongMap!13173 0))(
  ( (ListLongMap!13174 (toList!6602 List!20341)) )
))
(declare-fun lt!432561 () ListLongMap!13173)

(declare-fun getCurrentListMap!3787 (array!60565 array!60563 (_ BitVec 32) (_ BitVec 32) V!34675 V!34675 (_ BitVec 32) Int) ListLongMap!13173)

(assert (=> b!973482 (= lt!432561 (getCurrentListMap!3787 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973483 () Bool)

(declare-fun res!651745 () Bool)

(assert (=> b!973483 (=> (not res!651745) (not e!548754))))

(declare-datatypes ((List!20342 0))(
  ( (Nil!20339) (Cons!20338 (h!21500 (_ BitVec 64)) (t!28819 List!20342)) )
))
(declare-fun arrayNoDuplicates!0 (array!60565 (_ BitVec 32) List!20342) Bool)

(assert (=> b!973483 (= res!651745 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20339))))

(declare-fun b!973484 () Bool)

(declare-fun res!651740 () Bool)

(assert (=> b!973484 (=> (not res!651740) (not e!548754))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973484 (= res!651740 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29622 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29622 _keys!1717))))))

(declare-fun b!973485 () Bool)

(declare-fun e!548758 () Bool)

(declare-fun tp_is_empty!22269 () Bool)

(assert (=> b!973485 (= e!548758 tp_is_empty!22269)))

(declare-fun b!973486 () Bool)

(assert (=> b!973486 (= e!548754 e!548757)))

(declare-fun res!651741 () Bool)

(assert (=> b!973486 (=> (not res!651741) (not e!548757))))

(declare-fun lt!432565 () ListLongMap!13173)

(declare-fun contains!5646 (ListLongMap!13173 (_ BitVec 64)) Bool)

(assert (=> b!973486 (= res!651741 (contains!5646 lt!432565 (select (arr!29142 _keys!1717) i!822)))))

(assert (=> b!973486 (= lt!432565 (getCurrentListMap!3787 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973487 () Bool)

(declare-fun res!651743 () Bool)

(assert (=> b!973487 (=> (not res!651743) (not e!548754))))

(assert (=> b!973487 (= res!651743 (validKeyInArray!0 (select (arr!29142 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35413 () Bool)

(assert (=> mapIsEmpty!35413 mapRes!35413))

(declare-fun b!973488 () Bool)

(assert (=> b!973488 (= e!548756 tp_is_empty!22269)))

(declare-fun b!973489 () Bool)

(declare-fun res!651742 () Bool)

(assert (=> b!973489 (=> (not res!651742) (not e!548754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60565 (_ BitVec 32)) Bool)

(assert (=> b!973489 (= res!651742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973490 () Bool)

(assert (=> b!973490 (= e!548755 (not true))))

(declare-fun lt!432564 () tuple2!14462)

(declare-fun +!2871 (ListLongMap!13173 tuple2!14462) ListLongMap!13173)

(assert (=> b!973490 (contains!5646 (+!2871 lt!432565 lt!432564) (select (arr!29142 _keys!1717) i!822))))

(declare-fun lt!432560 () V!34675)

(declare-datatypes ((Unit!32403 0))(
  ( (Unit!32404) )
))
(declare-fun lt!432559 () Unit!32403)

(declare-fun addStillContains!610 (ListLongMap!13173 (_ BitVec 64) V!34675 (_ BitVec 64)) Unit!32403)

(assert (=> b!973490 (= lt!432559 (addStillContains!610 lt!432565 lt!432563 lt!432560 (select (arr!29142 _keys!1717) i!822)))))

(assert (=> b!973490 (= lt!432561 (+!2871 (getCurrentListMap!3787 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432564))))

(assert (=> b!973490 (= lt!432564 (tuple2!14463 lt!432563 lt!432560))))

(declare-fun get!15130 (ValueCell!10653 V!34675) V!34675)

(declare-fun dynLambda!1710 (Int (_ BitVec 64)) V!34675)

(assert (=> b!973490 (= lt!432560 (get!15130 (select (arr!29141 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1710 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432562 () Unit!32403)

(declare-fun lemmaListMapRecursiveValidKeyArray!282 (array!60565 array!60563 (_ BitVec 32) (_ BitVec 32) V!34675 V!34675 (_ BitVec 32) Int) Unit!32403)

(assert (=> b!973490 (= lt!432562 (lemmaListMapRecursiveValidKeyArray!282 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973491 () Bool)

(declare-fun e!548759 () Bool)

(assert (=> b!973491 (= e!548759 (and e!548758 mapRes!35413))))

(declare-fun condMapEmpty!35413 () Bool)

(declare-fun mapDefault!35413 () ValueCell!10653)

(assert (=> b!973491 (= condMapEmpty!35413 (= (arr!29141 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10653)) mapDefault!35413)))))

(declare-fun res!651739 () Bool)

(assert (=> start!83406 (=> (not res!651739) (not e!548754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83406 (= res!651739 (validMask!0 mask!2147))))

(assert (=> start!83406 e!548754))

(assert (=> start!83406 true))

(declare-fun array_inv!22437 (array!60563) Bool)

(assert (=> start!83406 (and (array_inv!22437 _values!1425) e!548759)))

(assert (=> start!83406 tp_is_empty!22269))

(assert (=> start!83406 tp!67392))

(declare-fun array_inv!22438 (array!60565) Bool)

(assert (=> start!83406 (array_inv!22438 _keys!1717)))

(assert (= (and start!83406 res!651739) b!973481))

(assert (= (and b!973481 res!651738) b!973489))

(assert (= (and b!973489 res!651742) b!973483))

(assert (= (and b!973483 res!651745) b!973484))

(assert (= (and b!973484 res!651740) b!973487))

(assert (= (and b!973487 res!651743) b!973486))

(assert (= (and b!973486 res!651741) b!973482))

(assert (= (and b!973482 res!651744) b!973490))

(assert (= (and b!973491 condMapEmpty!35413) mapIsEmpty!35413))

(assert (= (and b!973491 (not condMapEmpty!35413)) mapNonEmpty!35413))

(get-info :version)

(assert (= (and mapNonEmpty!35413 ((_ is ValueCellFull!10653) mapValue!35413)) b!973488))

(assert (= (and b!973491 ((_ is ValueCellFull!10653) mapDefault!35413)) b!973485))

(assert (= start!83406 b!973491))

(declare-fun b_lambda!14565 () Bool)

(assert (=> (not b_lambda!14565) (not b!973490)))

(declare-fun t!28817 () Bool)

(declare-fun tb!6327 () Bool)

(assert (=> (and start!83406 (= defaultEntry!1428 defaultEntry!1428) t!28817) tb!6327))

(declare-fun result!12623 () Bool)

(assert (=> tb!6327 (= result!12623 tp_is_empty!22269)))

(assert (=> b!973490 t!28817))

(declare-fun b_and!30983 () Bool)

(assert (= b_and!30981 (and (=> t!28817 result!12623) b_and!30983)))

(declare-fun m!901231 () Bool)

(assert (=> b!973483 m!901231))

(declare-fun m!901233 () Bool)

(assert (=> b!973487 m!901233))

(assert (=> b!973487 m!901233))

(declare-fun m!901235 () Bool)

(assert (=> b!973487 m!901235))

(declare-fun m!901237 () Bool)

(assert (=> b!973482 m!901237))

(declare-fun m!901239 () Bool)

(assert (=> b!973482 m!901239))

(declare-fun m!901241 () Bool)

(assert (=> b!973482 m!901241))

(assert (=> b!973486 m!901233))

(assert (=> b!973486 m!901233))

(declare-fun m!901243 () Bool)

(assert (=> b!973486 m!901243))

(declare-fun m!901245 () Bool)

(assert (=> b!973486 m!901245))

(declare-fun m!901247 () Bool)

(assert (=> b!973489 m!901247))

(declare-fun m!901249 () Bool)

(assert (=> b!973490 m!901249))

(declare-fun m!901251 () Bool)

(assert (=> b!973490 m!901251))

(assert (=> b!973490 m!901251))

(assert (=> b!973490 m!901233))

(declare-fun m!901253 () Bool)

(assert (=> b!973490 m!901253))

(declare-fun m!901255 () Bool)

(assert (=> b!973490 m!901255))

(declare-fun m!901257 () Bool)

(assert (=> b!973490 m!901257))

(assert (=> b!973490 m!901233))

(declare-fun m!901259 () Bool)

(assert (=> b!973490 m!901259))

(assert (=> b!973490 m!901233))

(declare-fun m!901261 () Bool)

(assert (=> b!973490 m!901261))

(assert (=> b!973490 m!901255))

(declare-fun m!901263 () Bool)

(assert (=> b!973490 m!901263))

(assert (=> b!973490 m!901249))

(assert (=> b!973490 m!901257))

(declare-fun m!901265 () Bool)

(assert (=> b!973490 m!901265))

(declare-fun m!901267 () Bool)

(assert (=> mapNonEmpty!35413 m!901267))

(declare-fun m!901269 () Bool)

(assert (=> start!83406 m!901269))

(declare-fun m!901271 () Bool)

(assert (=> start!83406 m!901271))

(declare-fun m!901273 () Bool)

(assert (=> start!83406 m!901273))

(check-sat (not mapNonEmpty!35413) (not b!973489) b_and!30983 (not b!973487) (not b!973490) tp_is_empty!22269 (not b!973486) (not b_lambda!14565) (not b!973482) (not start!83406) (not b_next!19371) (not b!973483))
(check-sat b_and!30983 (not b_next!19371))
