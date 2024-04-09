; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133966 () Bool)

(assert start!133966)

(declare-fun b_free!32157 () Bool)

(declare-fun b_next!32157 () Bool)

(assert (=> start!133966 (= b_free!32157 (not b_next!32157))))

(declare-fun tp!113773 () Bool)

(declare-fun b_and!51765 () Bool)

(assert (=> start!133966 (= tp!113773 b_and!51765)))

(declare-fun res!1070234 () Bool)

(declare-fun e!872622 () Bool)

(assert (=> start!133966 (=> (not res!1070234) (not e!872622))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133966 (= res!1070234 (validMask!0 mask!947))))

(assert (=> start!133966 e!872622))

(assert (=> start!133966 tp!113773))

(declare-fun tp_is_empty!38931 () Bool)

(assert (=> start!133966 tp_is_empty!38931))

(assert (=> start!133966 true))

(declare-datatypes ((array!104523 0))(
  ( (array!104524 (arr!50444 (Array (_ BitVec 32) (_ BitVec 64))) (size!50995 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104523)

(declare-fun array_inv!39115 (array!104523) Bool)

(assert (=> start!133966 (array_inv!39115 _keys!637)))

(declare-datatypes ((V!60115 0))(
  ( (V!60116 (val!19549 Int)) )
))
(declare-datatypes ((ValueCell!18435 0))(
  ( (ValueCellFull!18435 (v!22302 V!60115)) (EmptyCell!18435) )
))
(declare-datatypes ((array!104525 0))(
  ( (array!104526 (arr!50445 (Array (_ BitVec 32) ValueCell!18435)) (size!50996 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104525)

(declare-fun e!872621 () Bool)

(declare-fun array_inv!39116 (array!104525) Bool)

(assert (=> start!133966 (and (array_inv!39116 _values!487) e!872621)))

(declare-fun mapNonEmpty!59788 () Bool)

(declare-fun mapRes!59788 () Bool)

(declare-fun tp!113774 () Bool)

(declare-fun e!872620 () Bool)

(assert (=> mapNonEmpty!59788 (= mapRes!59788 (and tp!113774 e!872620))))

(declare-fun mapRest!59788 () (Array (_ BitVec 32) ValueCell!18435))

(declare-fun mapKey!59788 () (_ BitVec 32))

(declare-fun mapValue!59788 () ValueCell!18435)

(assert (=> mapNonEmpty!59788 (= (arr!50445 _values!487) (store mapRest!59788 mapKey!59788 mapValue!59788))))

(declare-fun b!1565510 () Bool)

(declare-fun e!872624 () Bool)

(assert (=> b!1565510 (= e!872624 tp_is_empty!38931)))

(declare-fun b!1565511 () Bool)

(assert (=> b!1565511 (= e!872622 (not true))))

(declare-fun lt!672263 () Bool)

(declare-datatypes ((tuple2!25384 0))(
  ( (tuple2!25385 (_1!12702 (_ BitVec 64)) (_2!12702 V!60115)) )
))
(declare-datatypes ((List!36772 0))(
  ( (Nil!36769) (Cons!36768 (h!38215 tuple2!25384) (t!51650 List!36772)) )
))
(declare-datatypes ((ListLongMap!22831 0))(
  ( (ListLongMap!22832 (toList!11431 List!36772)) )
))
(declare-fun lt!672265 () ListLongMap!22831)

(declare-fun contains!10352 (ListLongMap!22831 (_ BitVec 64)) Bool)

(assert (=> b!1565511 (= lt!672263 (contains!10352 lt!672265 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565511 (not (contains!10352 lt!672265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672264 () V!60115)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!672262 () ListLongMap!22831)

(declare-fun +!5038 (ListLongMap!22831 tuple2!25384) ListLongMap!22831)

(assert (=> b!1565511 (= lt!672265 (+!5038 lt!672262 (tuple2!25385 (select (arr!50444 _keys!637) from!782) lt!672264)))))

(declare-datatypes ((Unit!51950 0))(
  ( (Unit!51951) )
))
(declare-fun lt!672266 () Unit!51950)

(declare-fun addStillNotContains!574 (ListLongMap!22831 (_ BitVec 64) V!60115 (_ BitVec 64)) Unit!51950)

(assert (=> b!1565511 (= lt!672266 (addStillNotContains!574 lt!672262 (select (arr!50444 _keys!637) from!782) lt!672264 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26368 (ValueCell!18435 V!60115) V!60115)

(declare-fun dynLambda!3927 (Int (_ BitVec 64)) V!60115)

(assert (=> b!1565511 (= lt!672264 (get!26368 (select (arr!50445 _values!487) from!782) (dynLambda!3927 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60115)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60115)

(declare-fun getCurrentListMapNoExtraKeys!6771 (array!104523 array!104525 (_ BitVec 32) (_ BitVec 32) V!60115 V!60115 (_ BitVec 32) Int) ListLongMap!22831)

(assert (=> b!1565511 (= lt!672262 (getCurrentListMapNoExtraKeys!6771 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565512 () Bool)

(declare-fun res!1070235 () Bool)

(assert (=> b!1565512 (=> (not res!1070235) (not e!872622))))

(declare-datatypes ((List!36773 0))(
  ( (Nil!36770) (Cons!36769 (h!38216 (_ BitVec 64)) (t!51651 List!36773)) )
))
(declare-fun arrayNoDuplicates!0 (array!104523 (_ BitVec 32) List!36773) Bool)

(assert (=> b!1565512 (= res!1070235 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36770))))

(declare-fun b!1565513 () Bool)

(declare-fun res!1070233 () Bool)

(assert (=> b!1565513 (=> (not res!1070233) (not e!872622))))

(assert (=> b!1565513 (= res!1070233 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50995 _keys!637)) (bvslt from!782 (size!50995 _keys!637))))))

(declare-fun b!1565514 () Bool)

(assert (=> b!1565514 (= e!872620 tp_is_empty!38931)))

(declare-fun b!1565515 () Bool)

(assert (=> b!1565515 (= e!872621 (and e!872624 mapRes!59788))))

(declare-fun condMapEmpty!59788 () Bool)

(declare-fun mapDefault!59788 () ValueCell!18435)

(assert (=> b!1565515 (= condMapEmpty!59788 (= (arr!50445 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18435)) mapDefault!59788)))))

(declare-fun mapIsEmpty!59788 () Bool)

(assert (=> mapIsEmpty!59788 mapRes!59788))

(declare-fun b!1565516 () Bool)

(declare-fun res!1070236 () Bool)

(assert (=> b!1565516 (=> (not res!1070236) (not e!872622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565516 (= res!1070236 (validKeyInArray!0 (select (arr!50444 _keys!637) from!782)))))

(declare-fun b!1565517 () Bool)

(declare-fun res!1070237 () Bool)

(assert (=> b!1565517 (=> (not res!1070237) (not e!872622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104523 (_ BitVec 32)) Bool)

(assert (=> b!1565517 (= res!1070237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565518 () Bool)

(declare-fun res!1070238 () Bool)

(assert (=> b!1565518 (=> (not res!1070238) (not e!872622))))

(assert (=> b!1565518 (= res!1070238 (and (= (size!50996 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50995 _keys!637) (size!50996 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133966 res!1070234) b!1565518))

(assert (= (and b!1565518 res!1070238) b!1565517))

(assert (= (and b!1565517 res!1070237) b!1565512))

(assert (= (and b!1565512 res!1070235) b!1565513))

(assert (= (and b!1565513 res!1070233) b!1565516))

(assert (= (and b!1565516 res!1070236) b!1565511))

(assert (= (and b!1565515 condMapEmpty!59788) mapIsEmpty!59788))

(assert (= (and b!1565515 (not condMapEmpty!59788)) mapNonEmpty!59788))

(get-info :version)

(assert (= (and mapNonEmpty!59788 ((_ is ValueCellFull!18435) mapValue!59788)) b!1565514))

(assert (= (and b!1565515 ((_ is ValueCellFull!18435) mapDefault!59788)) b!1565510))

(assert (= start!133966 b!1565515))

(declare-fun b_lambda!24981 () Bool)

(assert (=> (not b_lambda!24981) (not b!1565511)))

(declare-fun t!51649 () Bool)

(declare-fun tb!12633 () Bool)

(assert (=> (and start!133966 (= defaultEntry!495 defaultEntry!495) t!51649) tb!12633))

(declare-fun result!26549 () Bool)

(assert (=> tb!12633 (= result!26549 tp_is_empty!38931)))

(assert (=> b!1565511 t!51649))

(declare-fun b_and!51767 () Bool)

(assert (= b_and!51765 (and (=> t!51649 result!26549) b_and!51767)))

(declare-fun m!1440469 () Bool)

(assert (=> b!1565512 m!1440469))

(declare-fun m!1440471 () Bool)

(assert (=> b!1565517 m!1440471))

(declare-fun m!1440473 () Bool)

(assert (=> mapNonEmpty!59788 m!1440473))

(declare-fun m!1440475 () Bool)

(assert (=> b!1565516 m!1440475))

(assert (=> b!1565516 m!1440475))

(declare-fun m!1440477 () Bool)

(assert (=> b!1565516 m!1440477))

(declare-fun m!1440479 () Bool)

(assert (=> b!1565511 m!1440479))

(declare-fun m!1440481 () Bool)

(assert (=> b!1565511 m!1440481))

(declare-fun m!1440483 () Bool)

(assert (=> b!1565511 m!1440483))

(declare-fun m!1440485 () Bool)

(assert (=> b!1565511 m!1440485))

(assert (=> b!1565511 m!1440479))

(assert (=> b!1565511 m!1440475))

(assert (=> b!1565511 m!1440475))

(declare-fun m!1440487 () Bool)

(assert (=> b!1565511 m!1440487))

(assert (=> b!1565511 m!1440481))

(declare-fun m!1440489 () Bool)

(assert (=> b!1565511 m!1440489))

(declare-fun m!1440491 () Bool)

(assert (=> b!1565511 m!1440491))

(declare-fun m!1440493 () Bool)

(assert (=> b!1565511 m!1440493))

(declare-fun m!1440495 () Bool)

(assert (=> start!133966 m!1440495))

(declare-fun m!1440497 () Bool)

(assert (=> start!133966 m!1440497))

(declare-fun m!1440499 () Bool)

(assert (=> start!133966 m!1440499))

(check-sat tp_is_empty!38931 (not start!133966) (not b!1565517) (not mapNonEmpty!59788) (not b!1565511) b_and!51767 (not b_next!32157) (not b_lambda!24981) (not b!1565512) (not b!1565516))
(check-sat b_and!51767 (not b_next!32157))
