; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39386 () Bool)

(assert start!39386)

(declare-fun b_free!9645 () Bool)

(declare-fun b_next!9645 () Bool)

(assert (=> start!39386 (= b_free!9645 (not b_next!9645))))

(declare-fun tp!34464 () Bool)

(declare-fun b_and!17183 () Bool)

(assert (=> start!39386 (= tp!34464 b_and!17183)))

(declare-fun res!243690 () Bool)

(declare-fun e!249358 () Bool)

(assert (=> start!39386 (=> (not res!243690) (not e!249358))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25429 0))(
  ( (array!25430 (arr!12161 (Array (_ BitVec 32) (_ BitVec 64))) (size!12513 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25429)

(assert (=> start!39386 (= res!243690 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12513 _keys!709))))))

(assert (=> start!39386 e!249358))

(declare-fun tp_is_empty!10797 () Bool)

(assert (=> start!39386 tp_is_empty!10797))

(assert (=> start!39386 tp!34464))

(assert (=> start!39386 true))

(declare-datatypes ((V!15501 0))(
  ( (V!15502 (val!5443 Int)) )
))
(declare-datatypes ((ValueCell!5055 0))(
  ( (ValueCellFull!5055 (v!7686 V!15501)) (EmptyCell!5055) )
))
(declare-datatypes ((array!25431 0))(
  ( (array!25432 (arr!12162 (Array (_ BitVec 32) ValueCell!5055)) (size!12514 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25431)

(declare-fun e!249352 () Bool)

(declare-fun array_inv!8870 (array!25431) Bool)

(assert (=> start!39386 (and (array_inv!8870 _values!549) e!249352)))

(declare-fun array_inv!8871 (array!25429) Bool)

(assert (=> start!39386 (array_inv!8871 _keys!709)))

(declare-fun b!418120 () Bool)

(declare-fun res!243689 () Bool)

(assert (=> b!418120 (=> (not res!243689) (not e!249358))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418120 (= res!243689 (or (= (select (arr!12161 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12161 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!515 () V!15501)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!191685 () array!25429)

(declare-fun zeroValue!515 () V!15501)

(declare-fun bm!29107 () Bool)

(declare-fun c!55106 () Bool)

(declare-fun lt!191683 () array!25431)

(declare-datatypes ((tuple2!7044 0))(
  ( (tuple2!7045 (_1!3532 (_ BitVec 64)) (_2!3532 V!15501)) )
))
(declare-datatypes ((List!7095 0))(
  ( (Nil!7092) (Cons!7091 (h!7947 tuple2!7044) (t!12413 List!7095)) )
))
(declare-datatypes ((ListLongMap!5971 0))(
  ( (ListLongMap!5972 (toList!3001 List!7095)) )
))
(declare-fun call!29110 () ListLongMap!5971)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1204 (array!25429 array!25431 (_ BitVec 32) (_ BitVec 32) V!15501 V!15501 (_ BitVec 32) Int) ListLongMap!5971)

(assert (=> bm!29107 (= call!29110 (getCurrentListMapNoExtraKeys!1204 (ite c!55106 _keys!709 lt!191685) (ite c!55106 _values!549 lt!191683) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418121 () Bool)

(declare-fun res!243695 () Bool)

(assert (=> b!418121 (=> (not res!243695) (not e!249358))))

(declare-datatypes ((List!7096 0))(
  ( (Nil!7093) (Cons!7092 (h!7948 (_ BitVec 64)) (t!12414 List!7096)) )
))
(declare-fun arrayNoDuplicates!0 (array!25429 (_ BitVec 32) List!7096) Bool)

(assert (=> b!418121 (= res!243695 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7093))))

(declare-fun b!418122 () Bool)

(declare-fun e!249355 () Bool)

(assert (=> b!418122 (= e!249355 true)))

(declare-fun lt!191680 () V!15501)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!191688 () ListLongMap!5971)

(declare-fun lt!191682 () tuple2!7044)

(declare-fun +!1210 (ListLongMap!5971 tuple2!7044) ListLongMap!5971)

(assert (=> b!418122 (= (+!1210 lt!191688 lt!191682) (+!1210 (+!1210 lt!191688 (tuple2!7045 k0!794 lt!191680)) lt!191682))))

(declare-fun lt!191684 () V!15501)

(assert (=> b!418122 (= lt!191682 (tuple2!7045 k0!794 lt!191684))))

(declare-datatypes ((Unit!12321 0))(
  ( (Unit!12322) )
))
(declare-fun lt!191686 () Unit!12321)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!33 (ListLongMap!5971 (_ BitVec 64) V!15501 V!15501) Unit!12321)

(assert (=> b!418122 (= lt!191686 (addSameAsAddTwiceSameKeyDiffValues!33 lt!191688 k0!794 lt!191680 lt!191684))))

(declare-fun lt!191681 () V!15501)

(declare-fun get!6030 (ValueCell!5055 V!15501) V!15501)

(assert (=> b!418122 (= lt!191680 (get!6030 (select (arr!12162 _values!549) from!863) lt!191681))))

(declare-fun lt!191687 () ListLongMap!5971)

(assert (=> b!418122 (= lt!191687 (+!1210 lt!191688 (tuple2!7045 (select (arr!12161 lt!191685) from!863) lt!191684)))))

(declare-fun v!412 () V!15501)

(assert (=> b!418122 (= lt!191684 (get!6030 (select (store (arr!12162 _values!549) i!563 (ValueCellFull!5055 v!412)) from!863) lt!191681))))

(declare-fun dynLambda!695 (Int (_ BitVec 64)) V!15501)

(assert (=> b!418122 (= lt!191681 (dynLambda!695 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418122 (= lt!191688 (getCurrentListMapNoExtraKeys!1204 lt!191685 lt!191683 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418123 () Bool)

(declare-fun res!243683 () Bool)

(assert (=> b!418123 (=> (not res!243683) (not e!249358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418123 (= res!243683 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!17817 () Bool)

(declare-fun mapRes!17817 () Bool)

(declare-fun tp!34463 () Bool)

(declare-fun e!249351 () Bool)

(assert (=> mapNonEmpty!17817 (= mapRes!17817 (and tp!34463 e!249351))))

(declare-fun mapRest!17817 () (Array (_ BitVec 32) ValueCell!5055))

(declare-fun mapKey!17817 () (_ BitVec 32))

(declare-fun mapValue!17817 () ValueCell!5055)

(assert (=> mapNonEmpty!17817 (= (arr!12162 _values!549) (store mapRest!17817 mapKey!17817 mapValue!17817))))

(declare-fun bm!29108 () Bool)

(declare-fun call!29111 () ListLongMap!5971)

(assert (=> bm!29108 (= call!29111 (getCurrentListMapNoExtraKeys!1204 (ite c!55106 lt!191685 _keys!709) (ite c!55106 lt!191683 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418124 () Bool)

(declare-fun res!243688 () Bool)

(declare-fun e!249357 () Bool)

(assert (=> b!418124 (=> (not res!243688) (not e!249357))))

(assert (=> b!418124 (= res!243688 (arrayNoDuplicates!0 lt!191685 #b00000000000000000000000000000000 Nil!7093))))

(declare-fun b!418125 () Bool)

(declare-fun res!243691 () Bool)

(assert (=> b!418125 (=> (not res!243691) (not e!249358))))

(assert (=> b!418125 (= res!243691 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12513 _keys!709))))))

(declare-fun b!418126 () Bool)

(declare-fun e!249353 () Bool)

(assert (=> b!418126 (= e!249352 (and e!249353 mapRes!17817))))

(declare-fun condMapEmpty!17817 () Bool)

(declare-fun mapDefault!17817 () ValueCell!5055)

(assert (=> b!418126 (= condMapEmpty!17817 (= (arr!12162 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5055)) mapDefault!17817)))))

(declare-fun b!418127 () Bool)

(declare-fun e!249354 () Bool)

(assert (=> b!418127 (= e!249357 e!249354)))

(declare-fun res!243692 () Bool)

(assert (=> b!418127 (=> (not res!243692) (not e!249354))))

(assert (=> b!418127 (= res!243692 (= from!863 i!563))))

(assert (=> b!418127 (= lt!191687 (getCurrentListMapNoExtraKeys!1204 lt!191685 lt!191683 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418127 (= lt!191683 (array!25432 (store (arr!12162 _values!549) i!563 (ValueCellFull!5055 v!412)) (size!12514 _values!549)))))

(declare-fun lt!191679 () ListLongMap!5971)

(assert (=> b!418127 (= lt!191679 (getCurrentListMapNoExtraKeys!1204 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418128 () Bool)

(declare-fun res!243694 () Bool)

(assert (=> b!418128 (=> (not res!243694) (not e!249358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418128 (= res!243694 (validMask!0 mask!1025))))

(declare-fun b!418129 () Bool)

(assert (=> b!418129 (= e!249353 tp_is_empty!10797)))

(declare-fun e!249350 () Bool)

(declare-fun b!418130 () Bool)

(assert (=> b!418130 (= e!249350 (= call!29111 (+!1210 call!29110 (tuple2!7045 k0!794 v!412))))))

(declare-fun mapIsEmpty!17817 () Bool)

(assert (=> mapIsEmpty!17817 mapRes!17817))

(declare-fun b!418131 () Bool)

(assert (=> b!418131 (= e!249350 (= call!29110 call!29111))))

(declare-fun b!418132 () Bool)

(declare-fun res!243685 () Bool)

(assert (=> b!418132 (=> (not res!243685) (not e!249358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25429 (_ BitVec 32)) Bool)

(assert (=> b!418132 (= res!243685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418133 () Bool)

(assert (=> b!418133 (= e!249358 e!249357)))

(declare-fun res!243696 () Bool)

(assert (=> b!418133 (=> (not res!243696) (not e!249357))))

(assert (=> b!418133 (= res!243696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191685 mask!1025))))

(assert (=> b!418133 (= lt!191685 (array!25430 (store (arr!12161 _keys!709) i!563 k0!794) (size!12513 _keys!709)))))

(declare-fun b!418134 () Bool)

(assert (=> b!418134 (= e!249354 (not e!249355))))

(declare-fun res!243684 () Bool)

(assert (=> b!418134 (=> res!243684 e!249355)))

(assert (=> b!418134 (= res!243684 (validKeyInArray!0 (select (arr!12161 _keys!709) from!863)))))

(assert (=> b!418134 e!249350))

(assert (=> b!418134 (= c!55106 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191678 () Unit!12321)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!418 (array!25429 array!25431 (_ BitVec 32) (_ BitVec 32) V!15501 V!15501 (_ BitVec 32) (_ BitVec 64) V!15501 (_ BitVec 32) Int) Unit!12321)

(assert (=> b!418134 (= lt!191678 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!418 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418135 () Bool)

(declare-fun res!243686 () Bool)

(assert (=> b!418135 (=> (not res!243686) (not e!249358))))

(assert (=> b!418135 (= res!243686 (and (= (size!12514 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12513 _keys!709) (size!12514 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418136 () Bool)

(declare-fun res!243693 () Bool)

(assert (=> b!418136 (=> (not res!243693) (not e!249357))))

(assert (=> b!418136 (= res!243693 (bvsle from!863 i!563))))

(declare-fun b!418137 () Bool)

(assert (=> b!418137 (= e!249351 tp_is_empty!10797)))

(declare-fun b!418138 () Bool)

(declare-fun res!243687 () Bool)

(assert (=> b!418138 (=> (not res!243687) (not e!249358))))

(declare-fun arrayContainsKey!0 (array!25429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418138 (= res!243687 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39386 res!243690) b!418128))

(assert (= (and b!418128 res!243694) b!418135))

(assert (= (and b!418135 res!243686) b!418132))

(assert (= (and b!418132 res!243685) b!418121))

(assert (= (and b!418121 res!243695) b!418125))

(assert (= (and b!418125 res!243691) b!418123))

(assert (= (and b!418123 res!243683) b!418120))

(assert (= (and b!418120 res!243689) b!418138))

(assert (= (and b!418138 res!243687) b!418133))

(assert (= (and b!418133 res!243696) b!418124))

(assert (= (and b!418124 res!243688) b!418136))

(assert (= (and b!418136 res!243693) b!418127))

(assert (= (and b!418127 res!243692) b!418134))

(assert (= (and b!418134 c!55106) b!418130))

(assert (= (and b!418134 (not c!55106)) b!418131))

(assert (= (or b!418130 b!418131) bm!29108))

(assert (= (or b!418130 b!418131) bm!29107))

(assert (= (and b!418134 (not res!243684)) b!418122))

(assert (= (and b!418126 condMapEmpty!17817) mapIsEmpty!17817))

(assert (= (and b!418126 (not condMapEmpty!17817)) mapNonEmpty!17817))

(get-info :version)

(assert (= (and mapNonEmpty!17817 ((_ is ValueCellFull!5055) mapValue!17817)) b!418137))

(assert (= (and b!418126 ((_ is ValueCellFull!5055) mapDefault!17817)) b!418129))

(assert (= start!39386 b!418126))

(declare-fun b_lambda!8979 () Bool)

(assert (=> (not b_lambda!8979) (not b!418122)))

(declare-fun t!12412 () Bool)

(declare-fun tb!3275 () Bool)

(assert (=> (and start!39386 (= defaultEntry!557 defaultEntry!557) t!12412) tb!3275))

(declare-fun result!6069 () Bool)

(assert (=> tb!3275 (= result!6069 tp_is_empty!10797)))

(assert (=> b!418122 t!12412))

(declare-fun b_and!17185 () Bool)

(assert (= b_and!17183 (and (=> t!12412 result!6069) b_and!17185)))

(declare-fun m!407533 () Bool)

(assert (=> b!418120 m!407533))

(declare-fun m!407535 () Bool)

(assert (=> b!418122 m!407535))

(declare-fun m!407537 () Bool)

(assert (=> b!418122 m!407537))

(declare-fun m!407539 () Bool)

(assert (=> b!418122 m!407539))

(declare-fun m!407541 () Bool)

(assert (=> b!418122 m!407541))

(assert (=> b!418122 m!407535))

(declare-fun m!407543 () Bool)

(assert (=> b!418122 m!407543))

(declare-fun m!407545 () Bool)

(assert (=> b!418122 m!407545))

(declare-fun m!407547 () Bool)

(assert (=> b!418122 m!407547))

(declare-fun m!407549 () Bool)

(assert (=> b!418122 m!407549))

(declare-fun m!407551 () Bool)

(assert (=> b!418122 m!407551))

(declare-fun m!407553 () Bool)

(assert (=> b!418122 m!407553))

(assert (=> b!418122 m!407545))

(declare-fun m!407555 () Bool)

(assert (=> b!418122 m!407555))

(declare-fun m!407557 () Bool)

(assert (=> b!418122 m!407557))

(declare-fun m!407559 () Bool)

(assert (=> b!418122 m!407559))

(assert (=> b!418122 m!407547))

(declare-fun m!407561 () Bool)

(assert (=> b!418123 m!407561))

(declare-fun m!407563 () Bool)

(assert (=> b!418134 m!407563))

(assert (=> b!418134 m!407563))

(declare-fun m!407565 () Bool)

(assert (=> b!418134 m!407565))

(declare-fun m!407567 () Bool)

(assert (=> b!418134 m!407567))

(declare-fun m!407569 () Bool)

(assert (=> b!418132 m!407569))

(declare-fun m!407571 () Bool)

(assert (=> b!418128 m!407571))

(declare-fun m!407573 () Bool)

(assert (=> start!39386 m!407573))

(declare-fun m!407575 () Bool)

(assert (=> start!39386 m!407575))

(declare-fun m!407577 () Bool)

(assert (=> b!418130 m!407577))

(declare-fun m!407579 () Bool)

(assert (=> mapNonEmpty!17817 m!407579))

(declare-fun m!407581 () Bool)

(assert (=> bm!29108 m!407581))

(declare-fun m!407583 () Bool)

(assert (=> bm!29107 m!407583))

(declare-fun m!407585 () Bool)

(assert (=> b!418121 m!407585))

(declare-fun m!407587 () Bool)

(assert (=> b!418133 m!407587))

(declare-fun m!407589 () Bool)

(assert (=> b!418133 m!407589))

(declare-fun m!407591 () Bool)

(assert (=> b!418127 m!407591))

(assert (=> b!418127 m!407541))

(declare-fun m!407593 () Bool)

(assert (=> b!418127 m!407593))

(declare-fun m!407595 () Bool)

(assert (=> b!418124 m!407595))

(declare-fun m!407597 () Bool)

(assert (=> b!418138 m!407597))

(check-sat (not b!418122) b_and!17185 (not b!418123) (not b!418124) (not b_next!9645) (not b!418138) (not start!39386) (not b!418134) (not bm!29107) (not b!418121) (not b!418133) (not mapNonEmpty!17817) tp_is_empty!10797 (not bm!29108) (not b_lambda!8979) (not b!418132) (not b!418127) (not b!418130) (not b!418128))
(check-sat b_and!17185 (not b_next!9645))
