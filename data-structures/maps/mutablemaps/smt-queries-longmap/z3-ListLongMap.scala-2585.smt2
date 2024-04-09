; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39338 () Bool)

(assert start!39338)

(declare-fun b_free!9597 () Bool)

(declare-fun b_next!9597 () Bool)

(assert (=> start!39338 (= b_free!9597 (not b_next!9597))))

(declare-fun tp!34320 () Bool)

(declare-fun b_and!17087 () Bool)

(assert (=> start!39338 (= tp!34320 b_and!17087)))

(declare-fun b!416704 () Bool)

(declare-fun res!242687 () Bool)

(declare-fun e!248707 () Bool)

(assert (=> b!416704 (=> (not res!242687) (not e!248707))))

(declare-datatypes ((array!25333 0))(
  ( (array!25334 (arr!12113 (Array (_ BitVec 32) (_ BitVec 64))) (size!12465 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25333)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25333 (_ BitVec 32)) Bool)

(assert (=> b!416704 (= res!242687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!416705 () Bool)

(declare-fun e!248704 () Bool)

(declare-datatypes ((V!15437 0))(
  ( (V!15438 (val!5419 Int)) )
))
(declare-datatypes ((tuple2!6998 0))(
  ( (tuple2!6999 (_1!3509 (_ BitVec 64)) (_2!3509 V!15437)) )
))
(declare-datatypes ((List!7051 0))(
  ( (Nil!7048) (Cons!7047 (h!7903 tuple2!6998) (t!12321 List!7051)) )
))
(declare-datatypes ((ListLongMap!5925 0))(
  ( (ListLongMap!5926 (toList!2978 List!7051)) )
))
(declare-fun call!28967 () ListLongMap!5925)

(declare-fun call!28966 () ListLongMap!5925)

(assert (=> b!416705 (= e!248704 (= call!28967 call!28966))))

(declare-fun b!416706 () Bool)

(declare-fun res!242679 () Bool)

(assert (=> b!416706 (=> (not res!242679) (not e!248707))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416706 (= res!242679 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!416707 () Bool)

(declare-fun e!248703 () Bool)

(declare-fun tp_is_empty!10749 () Bool)

(assert (=> b!416707 (= e!248703 tp_is_empty!10749)))

(declare-fun b!416708 () Bool)

(declare-fun e!248708 () Bool)

(assert (=> b!416708 (= e!248708 tp_is_empty!10749)))

(declare-fun b!416709 () Bool)

(declare-fun res!242681 () Bool)

(assert (=> b!416709 (=> (not res!242681) (not e!248707))))

(declare-datatypes ((List!7052 0))(
  ( (Nil!7049) (Cons!7048 (h!7904 (_ BitVec 64)) (t!12322 List!7052)) )
))
(declare-fun arrayNoDuplicates!0 (array!25333 (_ BitVec 32) List!7052) Bool)

(assert (=> b!416709 (= res!242681 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7049))))

(declare-fun b!416710 () Bool)

(declare-fun e!248709 () Bool)

(declare-fun e!248710 () Bool)

(assert (=> b!416710 (= e!248709 (not e!248710))))

(declare-fun res!242678 () Bool)

(assert (=> b!416710 (=> res!242678 e!248710)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416710 (= res!242678 (validKeyInArray!0 (select (arr!12113 _keys!709) from!863)))))

(assert (=> b!416710 e!248704))

(declare-fun c!55034 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416710 (= c!55034 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15437)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5031 0))(
  ( (ValueCellFull!5031 (v!7662 V!15437)) (EmptyCell!5031) )
))
(declare-datatypes ((array!25335 0))(
  ( (array!25336 (arr!12114 (Array (_ BitVec 32) ValueCell!5031)) (size!12466 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25335)

(declare-fun zeroValue!515 () V!15437)

(declare-datatypes ((Unit!12279 0))(
  ( (Unit!12280) )
))
(declare-fun lt!190895 () Unit!12279)

(declare-fun v!412 () V!15437)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!401 (array!25333 array!25335 (_ BitVec 32) (_ BitVec 32) V!15437 V!15437 (_ BitVec 32) (_ BitVec 64) V!15437 (_ BitVec 32) Int) Unit!12279)

(assert (=> b!416710 (= lt!190895 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!401 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416711 () Bool)

(assert (=> b!416711 (= e!248710 true)))

(declare-fun lt!190889 () V!15437)

(declare-fun lt!190891 () tuple2!6998)

(declare-fun lt!190886 () ListLongMap!5925)

(declare-fun +!1189 (ListLongMap!5925 tuple2!6998) ListLongMap!5925)

(assert (=> b!416711 (= (+!1189 lt!190886 lt!190891) (+!1189 (+!1189 lt!190886 (tuple2!6999 k0!794 lt!190889)) lt!190891))))

(declare-fun lt!190892 () V!15437)

(assert (=> b!416711 (= lt!190891 (tuple2!6999 k0!794 lt!190892))))

(declare-fun lt!190894 () Unit!12279)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!12 (ListLongMap!5925 (_ BitVec 64) V!15437 V!15437) Unit!12279)

(assert (=> b!416711 (= lt!190894 (addSameAsAddTwiceSameKeyDiffValues!12 lt!190886 k0!794 lt!190889 lt!190892))))

(declare-fun lt!190888 () V!15437)

(declare-fun get!5993 (ValueCell!5031 V!15437) V!15437)

(assert (=> b!416711 (= lt!190889 (get!5993 (select (arr!12114 _values!549) from!863) lt!190888))))

(declare-fun lt!190893 () array!25333)

(declare-fun lt!190890 () ListLongMap!5925)

(assert (=> b!416711 (= lt!190890 (+!1189 lt!190886 (tuple2!6999 (select (arr!12113 lt!190893) from!863) lt!190892)))))

(assert (=> b!416711 (= lt!190892 (get!5993 (select (store (arr!12114 _values!549) i!563 (ValueCellFull!5031 v!412)) from!863) lt!190888))))

(declare-fun dynLambda!674 (Int (_ BitVec 64)) V!15437)

(assert (=> b!416711 (= lt!190888 (dynLambda!674 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!190896 () array!25335)

(declare-fun getCurrentListMapNoExtraKeys!1181 (array!25333 array!25335 (_ BitVec 32) (_ BitVec 32) V!15437 V!15437 (_ BitVec 32) Int) ListLongMap!5925)

(assert (=> b!416711 (= lt!190886 (getCurrentListMapNoExtraKeys!1181 lt!190893 lt!190896 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416712 () Bool)

(declare-fun res!242683 () Bool)

(assert (=> b!416712 (=> (not res!242683) (not e!248707))))

(assert (=> b!416712 (= res!242683 (and (= (size!12466 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12465 _keys!709) (size!12466 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416713 () Bool)

(declare-fun e!248705 () Bool)

(assert (=> b!416713 (= e!248705 e!248709)))

(declare-fun res!242686 () Bool)

(assert (=> b!416713 (=> (not res!242686) (not e!248709))))

(assert (=> b!416713 (= res!242686 (= from!863 i!563))))

(assert (=> b!416713 (= lt!190890 (getCurrentListMapNoExtraKeys!1181 lt!190893 lt!190896 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416713 (= lt!190896 (array!25336 (store (arr!12114 _values!549) i!563 (ValueCellFull!5031 v!412)) (size!12466 _values!549)))))

(declare-fun lt!190887 () ListLongMap!5925)

(assert (=> b!416713 (= lt!190887 (getCurrentListMapNoExtraKeys!1181 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416714 () Bool)

(declare-fun res!242677 () Bool)

(assert (=> b!416714 (=> (not res!242677) (not e!248707))))

(assert (=> b!416714 (= res!242677 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12465 _keys!709))))))

(declare-fun b!416715 () Bool)

(assert (=> b!416715 (= e!248704 (= call!28966 (+!1189 call!28967 (tuple2!6999 k0!794 v!412))))))

(declare-fun bm!28964 () Bool)

(assert (=> bm!28964 (= call!28966 (getCurrentListMapNoExtraKeys!1181 (ite c!55034 lt!190893 _keys!709) (ite c!55034 lt!190896 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416716 () Bool)

(declare-fun res!242685 () Bool)

(assert (=> b!416716 (=> (not res!242685) (not e!248707))))

(assert (=> b!416716 (= res!242685 (validKeyInArray!0 k0!794))))

(declare-fun b!416717 () Bool)

(declare-fun e!248702 () Bool)

(declare-fun mapRes!17745 () Bool)

(assert (=> b!416717 (= e!248702 (and e!248703 mapRes!17745))))

(declare-fun condMapEmpty!17745 () Bool)

(declare-fun mapDefault!17745 () ValueCell!5031)

(assert (=> b!416717 (= condMapEmpty!17745 (= (arr!12114 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5031)) mapDefault!17745)))))

(declare-fun b!416718 () Bool)

(declare-fun res!242676 () Bool)

(assert (=> b!416718 (=> (not res!242676) (not e!248705))))

(assert (=> b!416718 (= res!242676 (bvsle from!863 i!563))))

(declare-fun b!416719 () Bool)

(declare-fun res!242688 () Bool)

(assert (=> b!416719 (=> (not res!242688) (not e!248705))))

(assert (=> b!416719 (= res!242688 (arrayNoDuplicates!0 lt!190893 #b00000000000000000000000000000000 Nil!7049))))

(declare-fun mapNonEmpty!17745 () Bool)

(declare-fun tp!34319 () Bool)

(assert (=> mapNonEmpty!17745 (= mapRes!17745 (and tp!34319 e!248708))))

(declare-fun mapRest!17745 () (Array (_ BitVec 32) ValueCell!5031))

(declare-fun mapValue!17745 () ValueCell!5031)

(declare-fun mapKey!17745 () (_ BitVec 32))

(assert (=> mapNonEmpty!17745 (= (arr!12114 _values!549) (store mapRest!17745 mapKey!17745 mapValue!17745))))

(declare-fun b!416720 () Bool)

(declare-fun res!242675 () Bool)

(assert (=> b!416720 (=> (not res!242675) (not e!248707))))

(assert (=> b!416720 (= res!242675 (or (= (select (arr!12113 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12113 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416721 () Bool)

(assert (=> b!416721 (= e!248707 e!248705)))

(declare-fun res!242682 () Bool)

(assert (=> b!416721 (=> (not res!242682) (not e!248705))))

(assert (=> b!416721 (= res!242682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190893 mask!1025))))

(assert (=> b!416721 (= lt!190893 (array!25334 (store (arr!12113 _keys!709) i!563 k0!794) (size!12465 _keys!709)))))

(declare-fun mapIsEmpty!17745 () Bool)

(assert (=> mapIsEmpty!17745 mapRes!17745))

(declare-fun b!416722 () Bool)

(declare-fun res!242680 () Bool)

(assert (=> b!416722 (=> (not res!242680) (not e!248707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416722 (= res!242680 (validMask!0 mask!1025))))

(declare-fun bm!28963 () Bool)

(assert (=> bm!28963 (= call!28967 (getCurrentListMapNoExtraKeys!1181 (ite c!55034 _keys!709 lt!190893) (ite c!55034 _values!549 lt!190896) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!242684 () Bool)

(assert (=> start!39338 (=> (not res!242684) (not e!248707))))

(assert (=> start!39338 (= res!242684 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12465 _keys!709))))))

(assert (=> start!39338 e!248707))

(assert (=> start!39338 tp_is_empty!10749))

(assert (=> start!39338 tp!34320))

(assert (=> start!39338 true))

(declare-fun array_inv!8832 (array!25335) Bool)

(assert (=> start!39338 (and (array_inv!8832 _values!549) e!248702)))

(declare-fun array_inv!8833 (array!25333) Bool)

(assert (=> start!39338 (array_inv!8833 _keys!709)))

(assert (= (and start!39338 res!242684) b!416722))

(assert (= (and b!416722 res!242680) b!416712))

(assert (= (and b!416712 res!242683) b!416704))

(assert (= (and b!416704 res!242687) b!416709))

(assert (= (and b!416709 res!242681) b!416714))

(assert (= (and b!416714 res!242677) b!416716))

(assert (= (and b!416716 res!242685) b!416720))

(assert (= (and b!416720 res!242675) b!416706))

(assert (= (and b!416706 res!242679) b!416721))

(assert (= (and b!416721 res!242682) b!416719))

(assert (= (and b!416719 res!242688) b!416718))

(assert (= (and b!416718 res!242676) b!416713))

(assert (= (and b!416713 res!242686) b!416710))

(assert (= (and b!416710 c!55034) b!416715))

(assert (= (and b!416710 (not c!55034)) b!416705))

(assert (= (or b!416715 b!416705) bm!28964))

(assert (= (or b!416715 b!416705) bm!28963))

(assert (= (and b!416710 (not res!242678)) b!416711))

(assert (= (and b!416717 condMapEmpty!17745) mapIsEmpty!17745))

(assert (= (and b!416717 (not condMapEmpty!17745)) mapNonEmpty!17745))

(get-info :version)

(assert (= (and mapNonEmpty!17745 ((_ is ValueCellFull!5031) mapValue!17745)) b!416708))

(assert (= (and b!416717 ((_ is ValueCellFull!5031) mapDefault!17745)) b!416707))

(assert (= start!39338 b!416717))

(declare-fun b_lambda!8931 () Bool)

(assert (=> (not b_lambda!8931) (not b!416711)))

(declare-fun t!12320 () Bool)

(declare-fun tb!3227 () Bool)

(assert (=> (and start!39338 (= defaultEntry!557 defaultEntry!557) t!12320) tb!3227))

(declare-fun result!5973 () Bool)

(assert (=> tb!3227 (= result!5973 tp_is_empty!10749)))

(assert (=> b!416711 t!12320))

(declare-fun b_and!17089 () Bool)

(assert (= b_and!17087 (and (=> t!12320 result!5973) b_and!17089)))

(declare-fun m!405949 () Bool)

(assert (=> b!416711 m!405949))

(declare-fun m!405951 () Bool)

(assert (=> b!416711 m!405951))

(declare-fun m!405953 () Bool)

(assert (=> b!416711 m!405953))

(declare-fun m!405955 () Bool)

(assert (=> b!416711 m!405955))

(declare-fun m!405957 () Bool)

(assert (=> b!416711 m!405957))

(assert (=> b!416711 m!405957))

(declare-fun m!405959 () Bool)

(assert (=> b!416711 m!405959))

(declare-fun m!405961 () Bool)

(assert (=> b!416711 m!405961))

(declare-fun m!405963 () Bool)

(assert (=> b!416711 m!405963))

(declare-fun m!405965 () Bool)

(assert (=> b!416711 m!405965))

(declare-fun m!405967 () Bool)

(assert (=> b!416711 m!405967))

(declare-fun m!405969 () Bool)

(assert (=> b!416711 m!405969))

(assert (=> b!416711 m!405963))

(declare-fun m!405971 () Bool)

(assert (=> b!416711 m!405971))

(declare-fun m!405973 () Bool)

(assert (=> b!416711 m!405973))

(assert (=> b!416711 m!405953))

(declare-fun m!405975 () Bool)

(assert (=> b!416722 m!405975))

(declare-fun m!405977 () Bool)

(assert (=> b!416719 m!405977))

(declare-fun m!405979 () Bool)

(assert (=> b!416704 m!405979))

(declare-fun m!405981 () Bool)

(assert (=> bm!28963 m!405981))

(declare-fun m!405983 () Bool)

(assert (=> b!416713 m!405983))

(assert (=> b!416713 m!405973))

(declare-fun m!405985 () Bool)

(assert (=> b!416713 m!405985))

(declare-fun m!405987 () Bool)

(assert (=> mapNonEmpty!17745 m!405987))

(declare-fun m!405989 () Bool)

(assert (=> b!416709 m!405989))

(declare-fun m!405991 () Bool)

(assert (=> b!416715 m!405991))

(declare-fun m!405993 () Bool)

(assert (=> b!416706 m!405993))

(declare-fun m!405995 () Bool)

(assert (=> b!416710 m!405995))

(assert (=> b!416710 m!405995))

(declare-fun m!405997 () Bool)

(assert (=> b!416710 m!405997))

(declare-fun m!405999 () Bool)

(assert (=> b!416710 m!405999))

(declare-fun m!406001 () Bool)

(assert (=> b!416720 m!406001))

(declare-fun m!406003 () Bool)

(assert (=> b!416721 m!406003))

(declare-fun m!406005 () Bool)

(assert (=> b!416721 m!406005))

(declare-fun m!406007 () Bool)

(assert (=> bm!28964 m!406007))

(declare-fun m!406009 () Bool)

(assert (=> b!416716 m!406009))

(declare-fun m!406011 () Bool)

(assert (=> start!39338 m!406011))

(declare-fun m!406013 () Bool)

(assert (=> start!39338 m!406013))

(check-sat (not start!39338) tp_is_empty!10749 (not b!416722) (not b_lambda!8931) (not b!416715) (not b!416721) (not b!416709) (not mapNonEmpty!17745) (not b!416716) (not b!416704) (not b!416711) (not b!416710) (not b_next!9597) (not b!416719) (not b!416706) b_and!17089 (not bm!28963) (not b!416713) (not bm!28964))
(check-sat b_and!17089 (not b_next!9597))
