; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39506 () Bool)

(assert start!39506)

(declare-fun b_free!9765 () Bool)

(declare-fun b_next!9765 () Bool)

(assert (=> start!39506 (= b_free!9765 (not b_next!9765))))

(declare-fun tp!34824 () Bool)

(declare-fun b_and!17423 () Bool)

(assert (=> start!39506 (= tp!34824 b_and!17423)))

(declare-fun b!421660 () Bool)

(declare-fun e!250974 () Bool)

(declare-fun e!250977 () Bool)

(assert (=> b!421660 (= e!250974 e!250977)))

(declare-fun res!246206 () Bool)

(assert (=> b!421660 (=> (not res!246206) (not e!250977))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421660 (= res!246206 (= from!863 i!563))))

(declare-datatypes ((V!15661 0))(
  ( (V!15662 (val!5503 Int)) )
))
(declare-fun minValue!515 () V!15661)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5115 0))(
  ( (ValueCellFull!5115 (v!7746 V!15661)) (EmptyCell!5115) )
))
(declare-datatypes ((array!25661 0))(
  ( (array!25662 (arr!12277 (Array (_ BitVec 32) ValueCell!5115)) (size!12629 (_ BitVec 32))) )
))
(declare-fun lt!193666 () array!25661)

(declare-datatypes ((tuple2!7148 0))(
  ( (tuple2!7149 (_1!3584 (_ BitVec 64)) (_2!3584 V!15661)) )
))
(declare-datatypes ((List!7190 0))(
  ( (Nil!7187) (Cons!7186 (h!8042 tuple2!7148) (t!12628 List!7190)) )
))
(declare-datatypes ((ListLongMap!6075 0))(
  ( (ListLongMap!6076 (toList!3053 List!7190)) )
))
(declare-fun lt!193662 () ListLongMap!6075)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15661)

(declare-datatypes ((array!25663 0))(
  ( (array!25664 (arr!12278 (Array (_ BitVec 32) (_ BitVec 64))) (size!12630 (_ BitVec 32))) )
))
(declare-fun lt!193664 () array!25663)

(declare-fun getCurrentListMapNoExtraKeys!1254 (array!25663 array!25661 (_ BitVec 32) (_ BitVec 32) V!15661 V!15661 (_ BitVec 32) Int) ListLongMap!6075)

(assert (=> b!421660 (= lt!193662 (getCurrentListMapNoExtraKeys!1254 lt!193664 lt!193666 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25661)

(declare-fun v!412 () V!15661)

(assert (=> b!421660 (= lt!193666 (array!25662 (store (arr!12277 _values!549) i!563 (ValueCellFull!5115 v!412)) (size!12629 _values!549)))))

(declare-fun _keys!709 () array!25663)

(declare-fun lt!193660 () ListLongMap!6075)

(assert (=> b!421660 (= lt!193660 (getCurrentListMapNoExtraKeys!1254 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421661 () Bool)

(declare-fun e!250976 () Bool)

(declare-fun call!29471 () ListLongMap!6075)

(declare-fun call!29470 () ListLongMap!6075)

(assert (=> b!421661 (= e!250976 (= call!29471 call!29470))))

(declare-fun b!421662 () Bool)

(declare-fun e!250973 () Bool)

(assert (=> b!421662 (= e!250973 true)))

(declare-fun lt!193665 () ListLongMap!6075)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!193658 () tuple2!7148)

(declare-fun lt!193659 () V!15661)

(declare-fun +!1255 (ListLongMap!6075 tuple2!7148) ListLongMap!6075)

(assert (=> b!421662 (= (+!1255 lt!193665 lt!193658) (+!1255 (+!1255 lt!193665 (tuple2!7149 k0!794 lt!193659)) lt!193658))))

(declare-fun lt!193668 () V!15661)

(assert (=> b!421662 (= lt!193658 (tuple2!7149 k0!794 lt!193668))))

(declare-datatypes ((Unit!12413 0))(
  ( (Unit!12414) )
))
(declare-fun lt!193663 () Unit!12413)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!71 (ListLongMap!6075 (_ BitVec 64) V!15661 V!15661) Unit!12413)

(assert (=> b!421662 (= lt!193663 (addSameAsAddTwiceSameKeyDiffValues!71 lt!193665 k0!794 lt!193659 lt!193668))))

(declare-fun lt!193667 () V!15661)

(declare-fun get!6108 (ValueCell!5115 V!15661) V!15661)

(assert (=> b!421662 (= lt!193659 (get!6108 (select (arr!12277 _values!549) from!863) lt!193667))))

(assert (=> b!421662 (= lt!193662 (+!1255 lt!193665 (tuple2!7149 (select (arr!12278 lt!193664) from!863) lt!193668)))))

(assert (=> b!421662 (= lt!193668 (get!6108 (select (store (arr!12277 _values!549) i!563 (ValueCellFull!5115 v!412)) from!863) lt!193667))))

(declare-fun dynLambda!733 (Int (_ BitVec 64)) V!15661)

(assert (=> b!421662 (= lt!193667 (dynLambda!733 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421662 (= lt!193665 (getCurrentListMapNoExtraKeys!1254 lt!193664 lt!193666 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun c!55286 () Bool)

(declare-fun bm!29467 () Bool)

(assert (=> bm!29467 (= call!29471 (getCurrentListMapNoExtraKeys!1254 (ite c!55286 _keys!709 lt!193664) (ite c!55286 _values!549 lt!193666) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!246208 () Bool)

(declare-fun e!250972 () Bool)

(assert (=> start!39506 (=> (not res!246208) (not e!250972))))

(assert (=> start!39506 (= res!246208 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12630 _keys!709))))))

(assert (=> start!39506 e!250972))

(declare-fun tp_is_empty!10917 () Bool)

(assert (=> start!39506 tp_is_empty!10917))

(assert (=> start!39506 tp!34824))

(assert (=> start!39506 true))

(declare-fun e!250971 () Bool)

(declare-fun array_inv!8942 (array!25661) Bool)

(assert (=> start!39506 (and (array_inv!8942 _values!549) e!250971)))

(declare-fun array_inv!8943 (array!25663) Bool)

(assert (=> start!39506 (array_inv!8943 _keys!709)))

(declare-fun mapNonEmpty!17997 () Bool)

(declare-fun mapRes!17997 () Bool)

(declare-fun tp!34823 () Bool)

(declare-fun e!250970 () Bool)

(assert (=> mapNonEmpty!17997 (= mapRes!17997 (and tp!34823 e!250970))))

(declare-fun mapKey!17997 () (_ BitVec 32))

(declare-fun mapValue!17997 () ValueCell!5115)

(declare-fun mapRest!17997 () (Array (_ BitVec 32) ValueCell!5115))

(assert (=> mapNonEmpty!17997 (= (arr!12277 _values!549) (store mapRest!17997 mapKey!17997 mapValue!17997))))

(declare-fun b!421663 () Bool)

(declare-fun res!246203 () Bool)

(assert (=> b!421663 (=> (not res!246203) (not e!250972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25663 (_ BitVec 32)) Bool)

(assert (=> b!421663 (= res!246203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421664 () Bool)

(declare-fun res!246207 () Bool)

(assert (=> b!421664 (=> (not res!246207) (not e!250972))))

(assert (=> b!421664 (= res!246207 (or (= (select (arr!12278 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12278 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421665 () Bool)

(declare-fun e!250975 () Bool)

(assert (=> b!421665 (= e!250971 (and e!250975 mapRes!17997))))

(declare-fun condMapEmpty!17997 () Bool)

(declare-fun mapDefault!17997 () ValueCell!5115)

(assert (=> b!421665 (= condMapEmpty!17997 (= (arr!12277 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5115)) mapDefault!17997)))))

(declare-fun bm!29468 () Bool)

(assert (=> bm!29468 (= call!29470 (getCurrentListMapNoExtraKeys!1254 (ite c!55286 lt!193664 _keys!709) (ite c!55286 lt!193666 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421666 () Bool)

(assert (=> b!421666 (= e!250976 (= call!29470 (+!1255 call!29471 (tuple2!7149 k0!794 v!412))))))

(declare-fun b!421667 () Bool)

(declare-fun res!246210 () Bool)

(assert (=> b!421667 (=> (not res!246210) (not e!250972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421667 (= res!246210 (validKeyInArray!0 k0!794))))

(declare-fun b!421668 () Bool)

(declare-fun res!246209 () Bool)

(assert (=> b!421668 (=> (not res!246209) (not e!250972))))

(assert (=> b!421668 (= res!246209 (and (= (size!12629 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12630 _keys!709) (size!12629 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421669 () Bool)

(assert (=> b!421669 (= e!250977 (not e!250973))))

(declare-fun res!246213 () Bool)

(assert (=> b!421669 (=> res!246213 e!250973)))

(assert (=> b!421669 (= res!246213 (validKeyInArray!0 (select (arr!12278 _keys!709) from!863)))))

(assert (=> b!421669 e!250976))

(assert (=> b!421669 (= c!55286 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193661 () Unit!12413)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!457 (array!25663 array!25661 (_ BitVec 32) (_ BitVec 32) V!15661 V!15661 (_ BitVec 32) (_ BitVec 64) V!15661 (_ BitVec 32) Int) Unit!12413)

(assert (=> b!421669 (= lt!193661 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!457 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421670 () Bool)

(declare-fun res!246204 () Bool)

(assert (=> b!421670 (=> (not res!246204) (not e!250972))))

(declare-fun arrayContainsKey!0 (array!25663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421670 (= res!246204 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!421671 () Bool)

(declare-fun res!246215 () Bool)

(assert (=> b!421671 (=> (not res!246215) (not e!250972))))

(assert (=> b!421671 (= res!246215 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12630 _keys!709))))))

(declare-fun b!421672 () Bool)

(declare-fun res!246211 () Bool)

(assert (=> b!421672 (=> (not res!246211) (not e!250974))))

(declare-datatypes ((List!7191 0))(
  ( (Nil!7188) (Cons!7187 (h!8043 (_ BitVec 64)) (t!12629 List!7191)) )
))
(declare-fun arrayNoDuplicates!0 (array!25663 (_ BitVec 32) List!7191) Bool)

(assert (=> b!421672 (= res!246211 (arrayNoDuplicates!0 lt!193664 #b00000000000000000000000000000000 Nil!7188))))

(declare-fun b!421673 () Bool)

(assert (=> b!421673 (= e!250975 tp_is_empty!10917)))

(declare-fun b!421674 () Bool)

(declare-fun res!246212 () Bool)

(assert (=> b!421674 (=> (not res!246212) (not e!250974))))

(assert (=> b!421674 (= res!246212 (bvsle from!863 i!563))))

(declare-fun b!421675 () Bool)

(assert (=> b!421675 (= e!250972 e!250974)))

(declare-fun res!246214 () Bool)

(assert (=> b!421675 (=> (not res!246214) (not e!250974))))

(assert (=> b!421675 (= res!246214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193664 mask!1025))))

(assert (=> b!421675 (= lt!193664 (array!25664 (store (arr!12278 _keys!709) i!563 k0!794) (size!12630 _keys!709)))))

(declare-fun b!421676 () Bool)

(assert (=> b!421676 (= e!250970 tp_is_empty!10917)))

(declare-fun b!421677 () Bool)

(declare-fun res!246205 () Bool)

(assert (=> b!421677 (=> (not res!246205) (not e!250972))))

(assert (=> b!421677 (= res!246205 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7188))))

(declare-fun b!421678 () Bool)

(declare-fun res!246216 () Bool)

(assert (=> b!421678 (=> (not res!246216) (not e!250972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421678 (= res!246216 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17997 () Bool)

(assert (=> mapIsEmpty!17997 mapRes!17997))

(assert (= (and start!39506 res!246208) b!421678))

(assert (= (and b!421678 res!246216) b!421668))

(assert (= (and b!421668 res!246209) b!421663))

(assert (= (and b!421663 res!246203) b!421677))

(assert (= (and b!421677 res!246205) b!421671))

(assert (= (and b!421671 res!246215) b!421667))

(assert (= (and b!421667 res!246210) b!421664))

(assert (= (and b!421664 res!246207) b!421670))

(assert (= (and b!421670 res!246204) b!421675))

(assert (= (and b!421675 res!246214) b!421672))

(assert (= (and b!421672 res!246211) b!421674))

(assert (= (and b!421674 res!246212) b!421660))

(assert (= (and b!421660 res!246206) b!421669))

(assert (= (and b!421669 c!55286) b!421666))

(assert (= (and b!421669 (not c!55286)) b!421661))

(assert (= (or b!421666 b!421661) bm!29468))

(assert (= (or b!421666 b!421661) bm!29467))

(assert (= (and b!421669 (not res!246213)) b!421662))

(assert (= (and b!421665 condMapEmpty!17997) mapIsEmpty!17997))

(assert (= (and b!421665 (not condMapEmpty!17997)) mapNonEmpty!17997))

(get-info :version)

(assert (= (and mapNonEmpty!17997 ((_ is ValueCellFull!5115) mapValue!17997)) b!421676))

(assert (= (and b!421665 ((_ is ValueCellFull!5115) mapDefault!17997)) b!421673))

(assert (= start!39506 b!421665))

(declare-fun b_lambda!9099 () Bool)

(assert (=> (not b_lambda!9099) (not b!421662)))

(declare-fun t!12627 () Bool)

(declare-fun tb!3395 () Bool)

(assert (=> (and start!39506 (= defaultEntry!557 defaultEntry!557) t!12627) tb!3395))

(declare-fun result!6309 () Bool)

(assert (=> tb!3395 (= result!6309 tp_is_empty!10917)))

(assert (=> b!421662 t!12627))

(declare-fun b_and!17425 () Bool)

(assert (= b_and!17423 (and (=> t!12627 result!6309) b_and!17425)))

(declare-fun m!411487 () Bool)

(assert (=> b!421667 m!411487))

(declare-fun m!411489 () Bool)

(assert (=> b!421669 m!411489))

(assert (=> b!421669 m!411489))

(declare-fun m!411491 () Bool)

(assert (=> b!421669 m!411491))

(declare-fun m!411493 () Bool)

(assert (=> b!421669 m!411493))

(declare-fun m!411495 () Bool)

(assert (=> b!421660 m!411495))

(declare-fun m!411497 () Bool)

(assert (=> b!421660 m!411497))

(declare-fun m!411499 () Bool)

(assert (=> b!421660 m!411499))

(declare-fun m!411501 () Bool)

(assert (=> b!421675 m!411501))

(declare-fun m!411503 () Bool)

(assert (=> b!421675 m!411503))

(declare-fun m!411505 () Bool)

(assert (=> b!421672 m!411505))

(declare-fun m!411507 () Bool)

(assert (=> bm!29467 m!411507))

(declare-fun m!411509 () Bool)

(assert (=> bm!29468 m!411509))

(declare-fun m!411511 () Bool)

(assert (=> start!39506 m!411511))

(declare-fun m!411513 () Bool)

(assert (=> start!39506 m!411513))

(declare-fun m!411515 () Bool)

(assert (=> b!421662 m!411515))

(declare-fun m!411517 () Bool)

(assert (=> b!421662 m!411517))

(assert (=> b!421662 m!411497))

(declare-fun m!411519 () Bool)

(assert (=> b!421662 m!411519))

(declare-fun m!411521 () Bool)

(assert (=> b!421662 m!411521))

(declare-fun m!411523 () Bool)

(assert (=> b!421662 m!411523))

(declare-fun m!411525 () Bool)

(assert (=> b!421662 m!411525))

(declare-fun m!411527 () Bool)

(assert (=> b!421662 m!411527))

(assert (=> b!421662 m!411525))

(declare-fun m!411529 () Bool)

(assert (=> b!421662 m!411529))

(assert (=> b!421662 m!411521))

(declare-fun m!411531 () Bool)

(assert (=> b!421662 m!411531))

(declare-fun m!411533 () Bool)

(assert (=> b!421662 m!411533))

(declare-fun m!411535 () Bool)

(assert (=> b!421662 m!411535))

(assert (=> b!421662 m!411515))

(declare-fun m!411537 () Bool)

(assert (=> b!421662 m!411537))

(declare-fun m!411539 () Bool)

(assert (=> b!421663 m!411539))

(declare-fun m!411541 () Bool)

(assert (=> b!421677 m!411541))

(declare-fun m!411543 () Bool)

(assert (=> b!421670 m!411543))

(declare-fun m!411545 () Bool)

(assert (=> b!421678 m!411545))

(declare-fun m!411547 () Bool)

(assert (=> b!421664 m!411547))

(declare-fun m!411549 () Bool)

(assert (=> mapNonEmpty!17997 m!411549))

(declare-fun m!411551 () Bool)

(assert (=> b!421666 m!411551))

(check-sat (not b!421667) b_and!17425 (not b!421663) tp_is_empty!10917 (not b!421662) (not b!421669) (not b_next!9765) (not b!421677) (not bm!29468) (not b!421666) (not mapNonEmpty!17997) (not start!39506) (not b!421670) (not bm!29467) (not b_lambda!9099) (not b!421672) (not b!421675) (not b!421678) (not b!421660))
(check-sat b_and!17425 (not b_next!9765))
