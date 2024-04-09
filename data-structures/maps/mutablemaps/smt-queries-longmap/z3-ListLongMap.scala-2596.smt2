; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39404 () Bool)

(assert start!39404)

(declare-fun b_free!9663 () Bool)

(declare-fun b_next!9663 () Bool)

(assert (=> start!39404 (= b_free!9663 (not b_next!9663))))

(declare-fun tp!34517 () Bool)

(declare-fun b_and!17219 () Bool)

(assert (=> start!39404 (= tp!34517 b_and!17219)))

(declare-fun res!244072 () Bool)

(declare-fun e!249597 () Bool)

(assert (=> start!39404 (=> (not res!244072) (not e!249597))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25461 0))(
  ( (array!25462 (arr!12177 (Array (_ BitVec 32) (_ BitVec 64))) (size!12529 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25461)

(assert (=> start!39404 (= res!244072 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12529 _keys!709))))))

(assert (=> start!39404 e!249597))

(declare-fun tp_is_empty!10815 () Bool)

(assert (=> start!39404 tp_is_empty!10815))

(assert (=> start!39404 tp!34517))

(assert (=> start!39404 true))

(declare-datatypes ((V!15525 0))(
  ( (V!15526 (val!5452 Int)) )
))
(declare-datatypes ((ValueCell!5064 0))(
  ( (ValueCellFull!5064 (v!7695 V!15525)) (EmptyCell!5064) )
))
(declare-datatypes ((array!25463 0))(
  ( (array!25464 (arr!12178 (Array (_ BitVec 32) ValueCell!5064)) (size!12530 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25463)

(declare-fun e!249600 () Bool)

(declare-fun array_inv!8880 (array!25463) Bool)

(assert (=> start!39404 (and (array_inv!8880 _values!549) e!249600)))

(declare-fun array_inv!8881 (array!25461) Bool)

(assert (=> start!39404 (array_inv!8881 _keys!709)))

(declare-fun b!418651 () Bool)

(declare-fun res!244070 () Bool)

(assert (=> b!418651 (=> (not res!244070) (not e!249597))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418651 (= res!244070 (or (= (select (arr!12177 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12177 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418652 () Bool)

(declare-fun res!244062 () Bool)

(assert (=> b!418652 (=> (not res!244062) (not e!249597))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25461 (_ BitVec 32)) Bool)

(assert (=> b!418652 (= res!244062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418653 () Bool)

(declare-fun res!244066 () Bool)

(declare-fun e!249598 () Bool)

(assert (=> b!418653 (=> (not res!244066) (not e!249598))))

(declare-fun lt!191982 () array!25461)

(declare-datatypes ((List!7107 0))(
  ( (Nil!7104) (Cons!7103 (h!7959 (_ BitVec 64)) (t!12443 List!7107)) )
))
(declare-fun arrayNoDuplicates!0 (array!25461 (_ BitVec 32) List!7107) Bool)

(assert (=> b!418653 (= res!244066 (arrayNoDuplicates!0 lt!191982 #b00000000000000000000000000000000 Nil!7104))))

(declare-fun c!55133 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29161 () Bool)

(declare-fun zeroValue!515 () V!15525)

(declare-fun lt!191975 () array!25463)

(declare-fun minValue!515 () V!15525)

(declare-datatypes ((tuple2!7058 0))(
  ( (tuple2!7059 (_1!3539 (_ BitVec 64)) (_2!3539 V!15525)) )
))
(declare-datatypes ((List!7108 0))(
  ( (Nil!7105) (Cons!7104 (h!7960 tuple2!7058) (t!12444 List!7108)) )
))
(declare-datatypes ((ListLongMap!5985 0))(
  ( (ListLongMap!5986 (toList!3008 List!7108)) )
))
(declare-fun call!29165 () ListLongMap!5985)

(declare-fun getCurrentListMapNoExtraKeys!1211 (array!25461 array!25463 (_ BitVec 32) (_ BitVec 32) V!15525 V!15525 (_ BitVec 32) Int) ListLongMap!5985)

(assert (=> bm!29161 (= call!29165 (getCurrentListMapNoExtraKeys!1211 (ite c!55133 _keys!709 lt!191982) (ite c!55133 _values!549 lt!191975) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418654 () Bool)

(declare-fun res!244061 () Bool)

(assert (=> b!418654 (=> (not res!244061) (not e!249597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418654 (= res!244061 (validMask!0 mask!1025))))

(declare-fun b!418655 () Bool)

(declare-fun res!244067 () Bool)

(assert (=> b!418655 (=> (not res!244067) (not e!249598))))

(assert (=> b!418655 (= res!244067 (bvsle from!863 i!563))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!249596 () Bool)

(declare-fun call!29164 () ListLongMap!5985)

(declare-fun v!412 () V!15525)

(declare-fun b!418656 () Bool)

(declare-fun +!1215 (ListLongMap!5985 tuple2!7058) ListLongMap!5985)

(assert (=> b!418656 (= e!249596 (= call!29164 (+!1215 call!29165 (tuple2!7059 k0!794 v!412))))))

(declare-fun b!418657 () Bool)

(declare-fun res!244069 () Bool)

(assert (=> b!418657 (=> (not res!244069) (not e!249597))))

(assert (=> b!418657 (= res!244069 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12529 _keys!709))))))

(declare-fun b!418658 () Bool)

(declare-fun res!244071 () Bool)

(assert (=> b!418658 (=> (not res!244071) (not e!249597))))

(assert (=> b!418658 (= res!244071 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7104))))

(declare-fun b!418659 () Bool)

(declare-fun res!244065 () Bool)

(assert (=> b!418659 (=> (not res!244065) (not e!249597))))

(declare-fun arrayContainsKey!0 (array!25461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418659 (= res!244065 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17844 () Bool)

(declare-fun mapRes!17844 () Bool)

(declare-fun tp!34518 () Bool)

(declare-fun e!249595 () Bool)

(assert (=> mapNonEmpty!17844 (= mapRes!17844 (and tp!34518 e!249595))))

(declare-fun mapKey!17844 () (_ BitVec 32))

(declare-fun mapRest!17844 () (Array (_ BitVec 32) ValueCell!5064))

(declare-fun mapValue!17844 () ValueCell!5064)

(assert (=> mapNonEmpty!17844 (= (arr!12178 _values!549) (store mapRest!17844 mapKey!17844 mapValue!17844))))

(declare-fun b!418660 () Bool)

(declare-fun e!249593 () Bool)

(assert (=> b!418660 (= e!249593 tp_is_empty!10815)))

(declare-fun b!418661 () Bool)

(declare-fun e!249601 () Bool)

(declare-fun e!249594 () Bool)

(assert (=> b!418661 (= e!249601 (not e!249594))))

(declare-fun res!244068 () Bool)

(assert (=> b!418661 (=> res!244068 e!249594)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418661 (= res!244068 (validKeyInArray!0 (select (arr!12177 _keys!709) from!863)))))

(assert (=> b!418661 e!249596))

(assert (=> b!418661 (= c!55133 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12333 0))(
  ( (Unit!12334) )
))
(declare-fun lt!191979 () Unit!12333)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!424 (array!25461 array!25463 (_ BitVec 32) (_ BitVec 32) V!15525 V!15525 (_ BitVec 32) (_ BitVec 64) V!15525 (_ BitVec 32) Int) Unit!12333)

(assert (=> b!418661 (= lt!191979 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!424 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418662 () Bool)

(declare-fun res!244073 () Bool)

(assert (=> b!418662 (=> (not res!244073) (not e!249597))))

(assert (=> b!418662 (= res!244073 (validKeyInArray!0 k0!794))))

(declare-fun b!418663 () Bool)

(assert (=> b!418663 (= e!249594 true)))

(declare-fun lt!191981 () tuple2!7058)

(declare-fun lt!191983 () ListLongMap!5985)

(declare-fun lt!191978 () V!15525)

(assert (=> b!418663 (= (+!1215 lt!191983 lt!191981) (+!1215 (+!1215 lt!191983 (tuple2!7059 k0!794 lt!191978)) lt!191981))))

(declare-fun lt!191984 () V!15525)

(assert (=> b!418663 (= lt!191981 (tuple2!7059 k0!794 lt!191984))))

(declare-fun lt!191976 () Unit!12333)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!38 (ListLongMap!5985 (_ BitVec 64) V!15525 V!15525) Unit!12333)

(assert (=> b!418663 (= lt!191976 (addSameAsAddTwiceSameKeyDiffValues!38 lt!191983 k0!794 lt!191978 lt!191984))))

(declare-fun lt!191980 () V!15525)

(declare-fun get!6041 (ValueCell!5064 V!15525) V!15525)

(assert (=> b!418663 (= lt!191978 (get!6041 (select (arr!12178 _values!549) from!863) lt!191980))))

(declare-fun lt!191985 () ListLongMap!5985)

(assert (=> b!418663 (= lt!191985 (+!1215 lt!191983 (tuple2!7059 (select (arr!12177 lt!191982) from!863) lt!191984)))))

(assert (=> b!418663 (= lt!191984 (get!6041 (select (store (arr!12178 _values!549) i!563 (ValueCellFull!5064 v!412)) from!863) lt!191980))))

(declare-fun dynLambda!700 (Int (_ BitVec 64)) V!15525)

(assert (=> b!418663 (= lt!191980 (dynLambda!700 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418663 (= lt!191983 (getCurrentListMapNoExtraKeys!1211 lt!191982 lt!191975 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17844 () Bool)

(assert (=> mapIsEmpty!17844 mapRes!17844))

(declare-fun b!418664 () Bool)

(assert (=> b!418664 (= e!249597 e!249598)))

(declare-fun res!244063 () Bool)

(assert (=> b!418664 (=> (not res!244063) (not e!249598))))

(assert (=> b!418664 (= res!244063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191982 mask!1025))))

(assert (=> b!418664 (= lt!191982 (array!25462 (store (arr!12177 _keys!709) i!563 k0!794) (size!12529 _keys!709)))))

(declare-fun b!418665 () Bool)

(assert (=> b!418665 (= e!249595 tp_is_empty!10815)))

(declare-fun bm!29162 () Bool)

(assert (=> bm!29162 (= call!29164 (getCurrentListMapNoExtraKeys!1211 (ite c!55133 lt!191982 _keys!709) (ite c!55133 lt!191975 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418666 () Bool)

(assert (=> b!418666 (= e!249600 (and e!249593 mapRes!17844))))

(declare-fun condMapEmpty!17844 () Bool)

(declare-fun mapDefault!17844 () ValueCell!5064)

(assert (=> b!418666 (= condMapEmpty!17844 (= (arr!12178 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5064)) mapDefault!17844)))))

(declare-fun b!418667 () Bool)

(declare-fun res!244074 () Bool)

(assert (=> b!418667 (=> (not res!244074) (not e!249597))))

(assert (=> b!418667 (= res!244074 (and (= (size!12530 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12529 _keys!709) (size!12530 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418668 () Bool)

(assert (=> b!418668 (= e!249598 e!249601)))

(declare-fun res!244064 () Bool)

(assert (=> b!418668 (=> (not res!244064) (not e!249601))))

(assert (=> b!418668 (= res!244064 (= from!863 i!563))))

(assert (=> b!418668 (= lt!191985 (getCurrentListMapNoExtraKeys!1211 lt!191982 lt!191975 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418668 (= lt!191975 (array!25464 (store (arr!12178 _values!549) i!563 (ValueCellFull!5064 v!412)) (size!12530 _values!549)))))

(declare-fun lt!191977 () ListLongMap!5985)

(assert (=> b!418668 (= lt!191977 (getCurrentListMapNoExtraKeys!1211 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418669 () Bool)

(assert (=> b!418669 (= e!249596 (= call!29165 call!29164))))

(assert (= (and start!39404 res!244072) b!418654))

(assert (= (and b!418654 res!244061) b!418667))

(assert (= (and b!418667 res!244074) b!418652))

(assert (= (and b!418652 res!244062) b!418658))

(assert (= (and b!418658 res!244071) b!418657))

(assert (= (and b!418657 res!244069) b!418662))

(assert (= (and b!418662 res!244073) b!418651))

(assert (= (and b!418651 res!244070) b!418659))

(assert (= (and b!418659 res!244065) b!418664))

(assert (= (and b!418664 res!244063) b!418653))

(assert (= (and b!418653 res!244066) b!418655))

(assert (= (and b!418655 res!244067) b!418668))

(assert (= (and b!418668 res!244064) b!418661))

(assert (= (and b!418661 c!55133) b!418656))

(assert (= (and b!418661 (not c!55133)) b!418669))

(assert (= (or b!418656 b!418669) bm!29162))

(assert (= (or b!418656 b!418669) bm!29161))

(assert (= (and b!418661 (not res!244068)) b!418663))

(assert (= (and b!418666 condMapEmpty!17844) mapIsEmpty!17844))

(assert (= (and b!418666 (not condMapEmpty!17844)) mapNonEmpty!17844))

(get-info :version)

(assert (= (and mapNonEmpty!17844 ((_ is ValueCellFull!5064) mapValue!17844)) b!418665))

(assert (= (and b!418666 ((_ is ValueCellFull!5064) mapDefault!17844)) b!418660))

(assert (= start!39404 b!418666))

(declare-fun b_lambda!8997 () Bool)

(assert (=> (not b_lambda!8997) (not b!418663)))

(declare-fun t!12442 () Bool)

(declare-fun tb!3293 () Bool)

(assert (=> (and start!39404 (= defaultEntry!557 defaultEntry!557) t!12442) tb!3293))

(declare-fun result!6105 () Bool)

(assert (=> tb!3293 (= result!6105 tp_is_empty!10815)))

(assert (=> b!418663 t!12442))

(declare-fun b_and!17221 () Bool)

(assert (= b_and!17219 (and (=> t!12442 result!6105) b_and!17221)))

(declare-fun m!408127 () Bool)

(assert (=> b!418662 m!408127))

(declare-fun m!408129 () Bool)

(assert (=> b!418661 m!408129))

(assert (=> b!418661 m!408129))

(declare-fun m!408131 () Bool)

(assert (=> b!418661 m!408131))

(declare-fun m!408133 () Bool)

(assert (=> b!418661 m!408133))

(declare-fun m!408135 () Bool)

(assert (=> b!418654 m!408135))

(declare-fun m!408137 () Bool)

(assert (=> b!418668 m!408137))

(declare-fun m!408139 () Bool)

(assert (=> b!418668 m!408139))

(declare-fun m!408141 () Bool)

(assert (=> b!418668 m!408141))

(declare-fun m!408143 () Bool)

(assert (=> b!418658 m!408143))

(declare-fun m!408145 () Bool)

(assert (=> mapNonEmpty!17844 m!408145))

(declare-fun m!408147 () Bool)

(assert (=> b!418659 m!408147))

(declare-fun m!408149 () Bool)

(assert (=> start!39404 m!408149))

(declare-fun m!408151 () Bool)

(assert (=> start!39404 m!408151))

(declare-fun m!408153 () Bool)

(assert (=> b!418663 m!408153))

(declare-fun m!408155 () Bool)

(assert (=> b!418663 m!408155))

(declare-fun m!408157 () Bool)

(assert (=> b!418663 m!408157))

(declare-fun m!408159 () Bool)

(assert (=> b!418663 m!408159))

(declare-fun m!408161 () Bool)

(assert (=> b!418663 m!408161))

(declare-fun m!408163 () Bool)

(assert (=> b!418663 m!408163))

(assert (=> b!418663 m!408139))

(assert (=> b!418663 m!408153))

(declare-fun m!408165 () Bool)

(assert (=> b!418663 m!408165))

(declare-fun m!408167 () Bool)

(assert (=> b!418663 m!408167))

(declare-fun m!408169 () Bool)

(assert (=> b!418663 m!408169))

(assert (=> b!418663 m!408161))

(assert (=> b!418663 m!408169))

(declare-fun m!408171 () Bool)

(assert (=> b!418663 m!408171))

(declare-fun m!408173 () Bool)

(assert (=> b!418663 m!408173))

(declare-fun m!408175 () Bool)

(assert (=> b!418663 m!408175))

(declare-fun m!408177 () Bool)

(assert (=> b!418652 m!408177))

(declare-fun m!408179 () Bool)

(assert (=> b!418653 m!408179))

(declare-fun m!408181 () Bool)

(assert (=> b!418656 m!408181))

(declare-fun m!408183 () Bool)

(assert (=> b!418664 m!408183))

(declare-fun m!408185 () Bool)

(assert (=> b!418664 m!408185))

(declare-fun m!408187 () Bool)

(assert (=> bm!29161 m!408187))

(declare-fun m!408189 () Bool)

(assert (=> bm!29162 m!408189))

(declare-fun m!408191 () Bool)

(assert (=> b!418651 m!408191))

(check-sat (not b!418661) (not b!418653) (not start!39404) b_and!17221 (not b!418658) (not b!418654) tp_is_empty!10815 (not b!418664) (not bm!29161) (not b!418663) (not b_lambda!8997) (not b!418659) (not b!418662) (not mapNonEmpty!17844) (not b_next!9663) (not bm!29162) (not b!418656) (not b!418652) (not b!418668))
(check-sat b_and!17221 (not b_next!9663))
