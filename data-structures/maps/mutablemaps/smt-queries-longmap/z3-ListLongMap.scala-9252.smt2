; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110898 () Bool)

(assert start!110898)

(declare-fun b_free!29697 () Bool)

(declare-fun b_next!29697 () Bool)

(assert (=> start!110898 (= b_free!29697 (not b_next!29697))))

(declare-fun tp!104414 () Bool)

(declare-fun b_and!47915 () Bool)

(assert (=> start!110898 (= tp!104414 b_and!47915)))

(declare-fun b!1312358 () Bool)

(declare-fun res!871386 () Bool)

(declare-fun e!748563 () Bool)

(assert (=> b!1312358 (=> (not res!871386) (not e!748563))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87805 0))(
  ( (array!87806 (arr!42378 (Array (_ BitVec 32) (_ BitVec 64))) (size!42929 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87805)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52339 0))(
  ( (V!52340 (val!17788 Int)) )
))
(declare-fun minValue!1296 () V!52339)

(declare-datatypes ((ValueCell!16815 0))(
  ( (ValueCellFull!16815 (v!20413 V!52339)) (EmptyCell!16815) )
))
(declare-datatypes ((array!87807 0))(
  ( (array!87808 (arr!42379 (Array (_ BitVec 32) ValueCell!16815)) (size!42930 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87807)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52339)

(declare-datatypes ((tuple2!23106 0))(
  ( (tuple2!23107 (_1!11563 (_ BitVec 64)) (_2!11563 V!52339)) )
))
(declare-datatypes ((List!30265 0))(
  ( (Nil!30262) (Cons!30261 (h!31470 tuple2!23106) (t!43878 List!30265)) )
))
(declare-datatypes ((ListLongMap!20775 0))(
  ( (ListLongMap!20776 (toList!10403 List!30265)) )
))
(declare-fun contains!8489 (ListLongMap!20775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5359 (array!87805 array!87807 (_ BitVec 32) (_ BitVec 32) V!52339 V!52339 (_ BitVec 32) Int) ListLongMap!20775)

(assert (=> b!1312358 (= res!871386 (contains!8489 (getCurrentListMap!5359 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312359 () Bool)

(declare-fun e!748564 () Bool)

(declare-fun tp_is_empty!35427 () Bool)

(assert (=> b!1312359 (= e!748564 tp_is_empty!35427)))

(declare-fun res!871393 () Bool)

(assert (=> start!110898 (=> (not res!871393) (not e!748563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110898 (= res!871393 (validMask!0 mask!2040))))

(assert (=> start!110898 e!748563))

(assert (=> start!110898 tp!104414))

(declare-fun array_inv!31999 (array!87805) Bool)

(assert (=> start!110898 (array_inv!31999 _keys!1628)))

(assert (=> start!110898 true))

(assert (=> start!110898 tp_is_empty!35427))

(declare-fun e!748561 () Bool)

(declare-fun array_inv!32000 (array!87807) Bool)

(assert (=> start!110898 (and (array_inv!32000 _values!1354) e!748561)))

(declare-fun b!1312360 () Bool)

(declare-fun res!871392 () Bool)

(assert (=> b!1312360 (=> (not res!871392) (not e!748563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87805 (_ BitVec 32)) Bool)

(assert (=> b!1312360 (= res!871392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312361 () Bool)

(declare-fun res!871387 () Bool)

(assert (=> b!1312361 (=> (not res!871387) (not e!748563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312361 (= res!871387 (validKeyInArray!0 (select (arr!42378 _keys!1628) from!2020)))))

(declare-fun b!1312362 () Bool)

(declare-fun res!871388 () Bool)

(assert (=> b!1312362 (=> (not res!871388) (not e!748563))))

(declare-datatypes ((List!30266 0))(
  ( (Nil!30263) (Cons!30262 (h!31471 (_ BitVec 64)) (t!43879 List!30266)) )
))
(declare-fun arrayNoDuplicates!0 (array!87805 (_ BitVec 32) List!30266) Bool)

(assert (=> b!1312362 (= res!871388 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30263))))

(declare-fun b!1312363 () Bool)

(assert (=> b!1312363 (= e!748563 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(assert (=> b!1312363 (contains!8489 (getCurrentListMap!5359 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43328 0))(
  ( (Unit!43329) )
))
(declare-fun lt!585496 () Unit!43328)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!17 (array!87805 array!87807 (_ BitVec 32) (_ BitVec 32) V!52339 V!52339 (_ BitVec 64) (_ BitVec 32) Int) Unit!43328)

(assert (=> b!1312363 (= lt!585496 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!17 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54769 () Bool)

(declare-fun mapRes!54769 () Bool)

(assert (=> mapIsEmpty!54769 mapRes!54769))

(declare-fun b!1312364 () Bool)

(declare-fun e!748565 () Bool)

(assert (=> b!1312364 (= e!748561 (and e!748565 mapRes!54769))))

(declare-fun condMapEmpty!54769 () Bool)

(declare-fun mapDefault!54769 () ValueCell!16815)

(assert (=> b!1312364 (= condMapEmpty!54769 (= (arr!42379 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16815)) mapDefault!54769)))))

(declare-fun b!1312365 () Bool)

(assert (=> b!1312365 (= e!748565 tp_is_empty!35427)))

(declare-fun mapNonEmpty!54769 () Bool)

(declare-fun tp!104413 () Bool)

(assert (=> mapNonEmpty!54769 (= mapRes!54769 (and tp!104413 e!748564))))

(declare-fun mapKey!54769 () (_ BitVec 32))

(declare-fun mapValue!54769 () ValueCell!16815)

(declare-fun mapRest!54769 () (Array (_ BitVec 32) ValueCell!16815))

(assert (=> mapNonEmpty!54769 (= (arr!42379 _values!1354) (store mapRest!54769 mapKey!54769 mapValue!54769))))

(declare-fun b!1312366 () Bool)

(declare-fun res!871391 () Bool)

(assert (=> b!1312366 (=> (not res!871391) (not e!748563))))

(assert (=> b!1312366 (= res!871391 (not (= (select (arr!42378 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1312367 () Bool)

(declare-fun res!871390 () Bool)

(assert (=> b!1312367 (=> (not res!871390) (not e!748563))))

(assert (=> b!1312367 (= res!871390 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42929 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312368 () Bool)

(declare-fun res!871394 () Bool)

(assert (=> b!1312368 (=> (not res!871394) (not e!748563))))

(assert (=> b!1312368 (= res!871394 (and (= (size!42930 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42929 _keys!1628) (size!42930 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312369 () Bool)

(declare-fun res!871389 () Bool)

(assert (=> b!1312369 (=> (not res!871389) (not e!748563))))

(assert (=> b!1312369 (= res!871389 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!110898 res!871393) b!1312368))

(assert (= (and b!1312368 res!871394) b!1312360))

(assert (= (and b!1312360 res!871392) b!1312362))

(assert (= (and b!1312362 res!871388) b!1312367))

(assert (= (and b!1312367 res!871390) b!1312358))

(assert (= (and b!1312358 res!871386) b!1312366))

(assert (= (and b!1312366 res!871391) b!1312361))

(assert (= (and b!1312361 res!871387) b!1312369))

(assert (= (and b!1312369 res!871389) b!1312363))

(assert (= (and b!1312364 condMapEmpty!54769) mapIsEmpty!54769))

(assert (= (and b!1312364 (not condMapEmpty!54769)) mapNonEmpty!54769))

(get-info :version)

(assert (= (and mapNonEmpty!54769 ((_ is ValueCellFull!16815) mapValue!54769)) b!1312359))

(assert (= (and b!1312364 ((_ is ValueCellFull!16815) mapDefault!54769)) b!1312365))

(assert (= start!110898 b!1312364))

(declare-fun m!1201571 () Bool)

(assert (=> b!1312362 m!1201571))

(declare-fun m!1201573 () Bool)

(assert (=> b!1312363 m!1201573))

(assert (=> b!1312363 m!1201573))

(declare-fun m!1201575 () Bool)

(assert (=> b!1312363 m!1201575))

(declare-fun m!1201577 () Bool)

(assert (=> b!1312363 m!1201577))

(declare-fun m!1201579 () Bool)

(assert (=> b!1312366 m!1201579))

(assert (=> b!1312361 m!1201579))

(assert (=> b!1312361 m!1201579))

(declare-fun m!1201581 () Bool)

(assert (=> b!1312361 m!1201581))

(declare-fun m!1201583 () Bool)

(assert (=> mapNonEmpty!54769 m!1201583))

(declare-fun m!1201585 () Bool)

(assert (=> b!1312360 m!1201585))

(declare-fun m!1201587 () Bool)

(assert (=> start!110898 m!1201587))

(declare-fun m!1201589 () Bool)

(assert (=> start!110898 m!1201589))

(declare-fun m!1201591 () Bool)

(assert (=> start!110898 m!1201591))

(declare-fun m!1201593 () Bool)

(assert (=> b!1312358 m!1201593))

(assert (=> b!1312358 m!1201593))

(declare-fun m!1201595 () Bool)

(assert (=> b!1312358 m!1201595))

(check-sat b_and!47915 (not b!1312363) tp_is_empty!35427 (not b!1312361) (not b_next!29697) (not b!1312362) (not b!1312358) (not b!1312360) (not start!110898) (not mapNonEmpty!54769))
(check-sat b_and!47915 (not b_next!29697))
