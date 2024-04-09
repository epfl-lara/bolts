; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83412 () Bool)

(assert start!83412)

(declare-fun b_free!19377 () Bool)

(declare-fun b_next!19377 () Bool)

(assert (=> start!83412 (= b_free!19377 (not b_next!19377))))

(declare-fun tp!67411 () Bool)

(declare-fun b_and!30993 () Bool)

(assert (=> start!83412 (= tp!67411 b_and!30993)))

(declare-fun b!973586 () Bool)

(declare-fun res!651815 () Bool)

(declare-fun e!548817 () Bool)

(assert (=> b!973586 (=> (not res!651815) (not e!548817))))

(declare-datatypes ((array!60575 0))(
  ( (array!60576 (arr!29147 (Array (_ BitVec 32) (_ BitVec 64))) (size!29627 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60575)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973586 (= res!651815 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29627 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29627 _keys!1717))))))

(declare-fun b!973587 () Bool)

(declare-fun res!651812 () Bool)

(assert (=> b!973587 (=> (not res!651812) (not e!548817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973587 (= res!651812 (validKeyInArray!0 (select (arr!29147 _keys!1717) i!822)))))

(declare-fun b!973588 () Bool)

(declare-fun e!548819 () Bool)

(declare-fun e!548823 () Bool)

(assert (=> b!973588 (= e!548819 e!548823)))

(declare-fun res!651811 () Bool)

(assert (=> b!973588 (=> (not res!651811) (not e!548823))))

(declare-fun lt!432622 () (_ BitVec 64))

(assert (=> b!973588 (= res!651811 (validKeyInArray!0 lt!432622))))

(assert (=> b!973588 (= lt!432622 (select (arr!29147 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34683 0))(
  ( (V!34684 (val!11188 Int)) )
))
(declare-datatypes ((tuple2!14466 0))(
  ( (tuple2!14467 (_1!7243 (_ BitVec 64)) (_2!7243 V!34683)) )
))
(declare-datatypes ((List!20345 0))(
  ( (Nil!20342) (Cons!20341 (h!21503 tuple2!14466) (t!28828 List!20345)) )
))
(declare-datatypes ((ListLongMap!13177 0))(
  ( (ListLongMap!13178 (toList!6604 List!20345)) )
))
(declare-fun lt!432626 () ListLongMap!13177)

(declare-datatypes ((ValueCell!10656 0))(
  ( (ValueCellFull!10656 (v!13747 V!34683)) (EmptyCell!10656) )
))
(declare-datatypes ((array!60577 0))(
  ( (array!60578 (arr!29148 (Array (_ BitVec 32) ValueCell!10656)) (size!29628 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60577)

(declare-fun zeroValue!1367 () V!34683)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34683)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3789 (array!60575 array!60577 (_ BitVec 32) (_ BitVec 32) V!34683 V!34683 (_ BitVec 32) Int) ListLongMap!13177)

(assert (=> b!973588 (= lt!432626 (getCurrentListMap!3789 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973589 () Bool)

(declare-fun e!548821 () Bool)

(declare-fun e!548818 () Bool)

(declare-fun mapRes!35422 () Bool)

(assert (=> b!973589 (= e!548821 (and e!548818 mapRes!35422))))

(declare-fun condMapEmpty!35422 () Bool)

(declare-fun mapDefault!35422 () ValueCell!10656)

(assert (=> b!973589 (= condMapEmpty!35422 (= (arr!29148 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10656)) mapDefault!35422)))))

(declare-fun mapNonEmpty!35422 () Bool)

(declare-fun tp!67410 () Bool)

(declare-fun e!548822 () Bool)

(assert (=> mapNonEmpty!35422 (= mapRes!35422 (and tp!67410 e!548822))))

(declare-fun mapKey!35422 () (_ BitVec 32))

(declare-fun mapRest!35422 () (Array (_ BitVec 32) ValueCell!10656))

(declare-fun mapValue!35422 () ValueCell!10656)

(assert (=> mapNonEmpty!35422 (= (arr!29148 _values!1425) (store mapRest!35422 mapKey!35422 mapValue!35422))))

(declare-fun b!973590 () Bool)

(declare-fun tp_is_empty!22275 () Bool)

(assert (=> b!973590 (= e!548818 tp_is_empty!22275)))

(declare-fun res!651814 () Bool)

(assert (=> start!83412 (=> (not res!651814) (not e!548817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83412 (= res!651814 (validMask!0 mask!2147))))

(assert (=> start!83412 e!548817))

(assert (=> start!83412 true))

(declare-fun array_inv!22441 (array!60577) Bool)

(assert (=> start!83412 (and (array_inv!22441 _values!1425) e!548821)))

(assert (=> start!83412 tp_is_empty!22275))

(assert (=> start!83412 tp!67411))

(declare-fun array_inv!22442 (array!60575) Bool)

(assert (=> start!83412 (array_inv!22442 _keys!1717)))

(declare-fun b!973591 () Bool)

(assert (=> b!973591 (= e!548823 (not (bvsle (bvsub from!2118 #b00000000000000000000000000000001) (size!29627 _keys!1717))))))

(declare-fun lt!432623 () ListLongMap!13177)

(declare-fun lt!432624 () tuple2!14466)

(declare-fun contains!5648 (ListLongMap!13177 (_ BitVec 64)) Bool)

(declare-fun +!2873 (ListLongMap!13177 tuple2!14466) ListLongMap!13177)

(assert (=> b!973591 (contains!5648 (+!2873 lt!432623 lt!432624) (select (arr!29147 _keys!1717) i!822))))

(declare-fun lt!432625 () V!34683)

(declare-datatypes ((Unit!32407 0))(
  ( (Unit!32408) )
))
(declare-fun lt!432627 () Unit!32407)

(declare-fun addStillContains!612 (ListLongMap!13177 (_ BitVec 64) V!34683 (_ BitVec 64)) Unit!32407)

(assert (=> b!973591 (= lt!432627 (addStillContains!612 lt!432623 lt!432622 lt!432625 (select (arr!29147 _keys!1717) i!822)))))

(assert (=> b!973591 (= lt!432626 (+!2873 (getCurrentListMap!3789 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432624))))

(assert (=> b!973591 (= lt!432624 (tuple2!14467 lt!432622 lt!432625))))

(declare-fun get!15134 (ValueCell!10656 V!34683) V!34683)

(declare-fun dynLambda!1712 (Int (_ BitVec 64)) V!34683)

(assert (=> b!973591 (= lt!432625 (get!15134 (select (arr!29148 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1712 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432628 () Unit!32407)

(declare-fun lemmaListMapRecursiveValidKeyArray!284 (array!60575 array!60577 (_ BitVec 32) (_ BitVec 32) V!34683 V!34683 (_ BitVec 32) Int) Unit!32407)

(assert (=> b!973591 (= lt!432628 (lemmaListMapRecursiveValidKeyArray!284 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973592 () Bool)

(declare-fun res!651817 () Bool)

(assert (=> b!973592 (=> (not res!651817) (not e!548817))))

(assert (=> b!973592 (= res!651817 (and (= (size!29628 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29627 _keys!1717) (size!29628 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973593 () Bool)

(declare-fun res!651813 () Bool)

(assert (=> b!973593 (=> (not res!651813) (not e!548817))))

(declare-datatypes ((List!20346 0))(
  ( (Nil!20343) (Cons!20342 (h!21504 (_ BitVec 64)) (t!28829 List!20346)) )
))
(declare-fun arrayNoDuplicates!0 (array!60575 (_ BitVec 32) List!20346) Bool)

(assert (=> b!973593 (= res!651813 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20343))))

(declare-fun b!973594 () Bool)

(assert (=> b!973594 (= e!548822 tp_is_empty!22275)))

(declare-fun b!973595 () Bool)

(declare-fun res!651810 () Bool)

(assert (=> b!973595 (=> (not res!651810) (not e!548817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60575 (_ BitVec 32)) Bool)

(assert (=> b!973595 (= res!651810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973596 () Bool)

(assert (=> b!973596 (= e!548817 e!548819)))

(declare-fun res!651816 () Bool)

(assert (=> b!973596 (=> (not res!651816) (not e!548819))))

(assert (=> b!973596 (= res!651816 (contains!5648 lt!432623 (select (arr!29147 _keys!1717) i!822)))))

(assert (=> b!973596 (= lt!432623 (getCurrentListMap!3789 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun mapIsEmpty!35422 () Bool)

(assert (=> mapIsEmpty!35422 mapRes!35422))

(assert (= (and start!83412 res!651814) b!973592))

(assert (= (and b!973592 res!651817) b!973595))

(assert (= (and b!973595 res!651810) b!973593))

(assert (= (and b!973593 res!651813) b!973586))

(assert (= (and b!973586 res!651815) b!973587))

(assert (= (and b!973587 res!651812) b!973596))

(assert (= (and b!973596 res!651816) b!973588))

(assert (= (and b!973588 res!651811) b!973591))

(assert (= (and b!973589 condMapEmpty!35422) mapIsEmpty!35422))

(assert (= (and b!973589 (not condMapEmpty!35422)) mapNonEmpty!35422))

(get-info :version)

(assert (= (and mapNonEmpty!35422 ((_ is ValueCellFull!10656) mapValue!35422)) b!973594))

(assert (= (and b!973589 ((_ is ValueCellFull!10656) mapDefault!35422)) b!973590))

(assert (= start!83412 b!973589))

(declare-fun b_lambda!14571 () Bool)

(assert (=> (not b_lambda!14571) (not b!973591)))

(declare-fun t!28827 () Bool)

(declare-fun tb!6333 () Bool)

(assert (=> (and start!83412 (= defaultEntry!1428 defaultEntry!1428) t!28827) tb!6333))

(declare-fun result!12635 () Bool)

(assert (=> tb!6333 (= result!12635 tp_is_empty!22275)))

(assert (=> b!973591 t!28827))

(declare-fun b_and!30995 () Bool)

(assert (= b_and!30993 (and (=> t!28827 result!12635) b_and!30995)))

(declare-fun m!901363 () Bool)

(assert (=> start!83412 m!901363))

(declare-fun m!901365 () Bool)

(assert (=> start!83412 m!901365))

(declare-fun m!901367 () Bool)

(assert (=> start!83412 m!901367))

(declare-fun m!901369 () Bool)

(assert (=> b!973587 m!901369))

(assert (=> b!973587 m!901369))

(declare-fun m!901371 () Bool)

(assert (=> b!973587 m!901371))

(assert (=> b!973596 m!901369))

(assert (=> b!973596 m!901369))

(declare-fun m!901373 () Bool)

(assert (=> b!973596 m!901373))

(declare-fun m!901375 () Bool)

(assert (=> b!973596 m!901375))

(declare-fun m!901377 () Bool)

(assert (=> b!973591 m!901377))

(declare-fun m!901379 () Bool)

(assert (=> b!973591 m!901379))

(declare-fun m!901381 () Bool)

(assert (=> b!973591 m!901381))

(declare-fun m!901383 () Bool)

(assert (=> b!973591 m!901383))

(assert (=> b!973591 m!901369))

(declare-fun m!901385 () Bool)

(assert (=> b!973591 m!901385))

(assert (=> b!973591 m!901369))

(assert (=> b!973591 m!901379))

(declare-fun m!901387 () Bool)

(assert (=> b!973591 m!901387))

(assert (=> b!973591 m!901377))

(assert (=> b!973591 m!901381))

(declare-fun m!901389 () Bool)

(assert (=> b!973591 m!901389))

(assert (=> b!973591 m!901369))

(declare-fun m!901391 () Bool)

(assert (=> b!973591 m!901391))

(assert (=> b!973591 m!901383))

(declare-fun m!901393 () Bool)

(assert (=> b!973591 m!901393))

(declare-fun m!901395 () Bool)

(assert (=> b!973595 m!901395))

(declare-fun m!901397 () Bool)

(assert (=> b!973593 m!901397))

(declare-fun m!901399 () Bool)

(assert (=> b!973588 m!901399))

(declare-fun m!901401 () Bool)

(assert (=> b!973588 m!901401))

(declare-fun m!901403 () Bool)

(assert (=> b!973588 m!901403))

(declare-fun m!901405 () Bool)

(assert (=> mapNonEmpty!35422 m!901405))

(check-sat (not mapNonEmpty!35422) (not b_next!19377) (not b_lambda!14571) (not b!973593) (not b!973591) (not b!973595) tp_is_empty!22275 b_and!30995 (not b!973596) (not b!973588) (not start!83412) (not b!973587))
(check-sat b_and!30995 (not b_next!19377))
