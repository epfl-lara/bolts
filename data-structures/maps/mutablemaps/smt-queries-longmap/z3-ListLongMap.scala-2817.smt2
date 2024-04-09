; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40822 () Bool)

(assert start!40822)

(declare-fun b_free!10803 () Bool)

(declare-fun b_next!10803 () Bool)

(assert (=> start!40822 (= b_free!10803 (not b_next!10803))))

(declare-fun tp!38232 () Bool)

(declare-fun b_and!18911 () Bool)

(assert (=> start!40822 (= tp!38232 b_and!18911)))

(declare-fun b!452866 () Bool)

(declare-fun res!269886 () Bool)

(declare-fun e!265092 () Bool)

(assert (=> b!452866 (=> (not res!269886) (not e!265092))))

(declare-datatypes ((array!28049 0))(
  ( (array!28050 (arr!13466 (Array (_ BitVec 32) (_ BitVec 64))) (size!13818 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28049)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452866 (= res!269886 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!269888 () Bool)

(assert (=> start!40822 (=> (not res!269888) (not e!265092))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40822 (= res!269888 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13818 _keys!709))))))

(assert (=> start!40822 e!265092))

(declare-fun tp_is_empty!12141 () Bool)

(assert (=> start!40822 tp_is_empty!12141))

(assert (=> start!40822 tp!38232))

(assert (=> start!40822 true))

(declare-datatypes ((V!17293 0))(
  ( (V!17294 (val!6115 Int)) )
))
(declare-datatypes ((ValueCell!5727 0))(
  ( (ValueCellFull!5727 (v!8370 V!17293)) (EmptyCell!5727) )
))
(declare-datatypes ((array!28051 0))(
  ( (array!28052 (arr!13467 (Array (_ BitVec 32) ValueCell!5727)) (size!13819 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28051)

(declare-fun e!265089 () Bool)

(declare-fun array_inv!9750 (array!28051) Bool)

(assert (=> start!40822 (and (array_inv!9750 _values!549) e!265089)))

(declare-fun array_inv!9751 (array!28049) Bool)

(assert (=> start!40822 (array_inv!9751 _keys!709)))

(declare-fun b!452867 () Bool)

(declare-fun res!269883 () Bool)

(declare-fun e!265087 () Bool)

(assert (=> b!452867 (=> (not res!269883) (not e!265087))))

(declare-fun lt!205547 () array!28049)

(declare-datatypes ((List!8104 0))(
  ( (Nil!8101) (Cons!8100 (h!8956 (_ BitVec 64)) (t!13938 List!8104)) )
))
(declare-fun arrayNoDuplicates!0 (array!28049 (_ BitVec 32) List!8104) Bool)

(assert (=> b!452867 (= res!269883 (arrayNoDuplicates!0 lt!205547 #b00000000000000000000000000000000 Nil!8101))))

(declare-fun mapNonEmpty!19848 () Bool)

(declare-fun mapRes!19848 () Bool)

(declare-fun tp!38231 () Bool)

(declare-fun e!265088 () Bool)

(assert (=> mapNonEmpty!19848 (= mapRes!19848 (and tp!38231 e!265088))))

(declare-fun mapRest!19848 () (Array (_ BitVec 32) ValueCell!5727))

(declare-fun mapValue!19848 () ValueCell!5727)

(declare-fun mapKey!19848 () (_ BitVec 32))

(assert (=> mapNonEmpty!19848 (= (arr!13467 _values!549) (store mapRest!19848 mapKey!19848 mapValue!19848))))

(declare-fun mapIsEmpty!19848 () Bool)

(assert (=> mapIsEmpty!19848 mapRes!19848))

(declare-fun b!452868 () Bool)

(declare-fun res!269890 () Bool)

(assert (=> b!452868 (=> (not res!269890) (not e!265092))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452868 (= res!269890 (or (= (select (arr!13466 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13466 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8002 0))(
  ( (tuple2!8003 (_1!4011 (_ BitVec 64)) (_2!4011 V!17293)) )
))
(declare-datatypes ((List!8105 0))(
  ( (Nil!8102) (Cons!8101 (h!8957 tuple2!8002) (t!13939 List!8105)) )
))
(declare-datatypes ((ListLongMap!6929 0))(
  ( (ListLongMap!6930 (toList!3480 List!8105)) )
))
(declare-fun lt!205548 () ListLongMap!6929)

(declare-fun e!265094 () Bool)

(declare-fun v!412 () V!17293)

(declare-fun lt!205557 () ListLongMap!6929)

(declare-fun b!452869 () Bool)

(declare-fun +!1545 (ListLongMap!6929 tuple2!8002) ListLongMap!6929)

(assert (=> b!452869 (= e!265094 (= lt!205548 (+!1545 lt!205557 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205556 () V!17293)

(declare-fun lt!205552 () ListLongMap!6929)

(declare-fun lt!205555 () tuple2!8002)

(assert (=> b!452869 (= (+!1545 lt!205552 lt!205555) (+!1545 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) lt!205555))))

(declare-fun lt!205550 () V!17293)

(assert (=> b!452869 (= lt!205555 (tuple2!8003 k0!794 lt!205550))))

(declare-datatypes ((Unit!13189 0))(
  ( (Unit!13190) )
))
(declare-fun lt!205549 () Unit!13189)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!89 (ListLongMap!6929 (_ BitVec 64) V!17293 V!17293) Unit!13189)

(assert (=> b!452869 (= lt!205549 (addSameAsAddTwiceSameKeyDiffValues!89 lt!205552 k0!794 lt!205556 lt!205550))))

(declare-fun lt!205553 () V!17293)

(declare-fun get!6652 (ValueCell!5727 V!17293) V!17293)

(assert (=> b!452869 (= lt!205556 (get!6652 (select (arr!13467 _values!549) from!863) lt!205553))))

(assert (=> b!452869 (= lt!205548 (+!1545 lt!205552 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))

(assert (=> b!452869 (= lt!205550 (get!6652 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!867 (Int (_ BitVec 64)) V!17293)

(assert (=> b!452869 (= lt!205553 (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!205554 () array!28051)

(declare-fun minValue!515 () V!17293)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17293)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1656 (array!28049 array!28051 (_ BitVec 32) (_ BitVec 32) V!17293 V!17293 (_ BitVec 32) Int) ListLongMap!6929)

(assert (=> b!452869 (= lt!205552 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452870 () Bool)

(assert (=> b!452870 (= e!265088 tp_is_empty!12141)))

(declare-fun b!452871 () Bool)

(declare-fun e!265090 () Bool)

(declare-fun call!30020 () ListLongMap!6929)

(declare-fun call!30019 () ListLongMap!6929)

(assert (=> b!452871 (= e!265090 (= call!30020 call!30019))))

(declare-fun c!56078 () Bool)

(declare-fun bm!30016 () Bool)

(assert (=> bm!30016 (= call!30020 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!30017 () Bool)

(assert (=> bm!30017 (= call!30019 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452872 () Bool)

(assert (=> b!452872 (= e!265092 e!265087)))

(declare-fun res!269882 () Bool)

(assert (=> b!452872 (=> (not res!269882) (not e!265087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28049 (_ BitVec 32)) Bool)

(assert (=> b!452872 (= res!269882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205547 mask!1025))))

(assert (=> b!452872 (= lt!205547 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))

(declare-fun b!452873 () Bool)

(declare-fun e!265091 () Bool)

(assert (=> b!452873 (= e!265091 (not e!265094))))

(declare-fun res!269889 () Bool)

(assert (=> b!452873 (=> res!269889 e!265094)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452873 (= res!269889 (validKeyInArray!0 (select (arr!13466 _keys!709) from!863)))))

(assert (=> b!452873 e!265090))

(assert (=> b!452873 (= c!56078 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!205551 () Unit!13189)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!711 (array!28049 array!28051 (_ BitVec 32) (_ BitVec 32) V!17293 V!17293 (_ BitVec 32) (_ BitVec 64) V!17293 (_ BitVec 32) Int) Unit!13189)

(assert (=> b!452873 (= lt!205551 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!711 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452874 () Bool)

(assert (=> b!452874 (= e!265087 e!265091)))

(declare-fun res!269887 () Bool)

(assert (=> b!452874 (=> (not res!269887) (not e!265091))))

(assert (=> b!452874 (= res!269887 (= from!863 i!563))))

(assert (=> b!452874 (= lt!205548 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452874 (= lt!205554 (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)))))

(assert (=> b!452874 (= lt!205557 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452875 () Bool)

(declare-fun e!265093 () Bool)

(assert (=> b!452875 (= e!265089 (and e!265093 mapRes!19848))))

(declare-fun condMapEmpty!19848 () Bool)

(declare-fun mapDefault!19848 () ValueCell!5727)

(assert (=> b!452875 (= condMapEmpty!19848 (= (arr!13467 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5727)) mapDefault!19848)))))

(declare-fun b!452876 () Bool)

(declare-fun res!269894 () Bool)

(assert (=> b!452876 (=> (not res!269894) (not e!265092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452876 (= res!269894 (validMask!0 mask!1025))))

(declare-fun b!452877 () Bool)

(assert (=> b!452877 (= e!265093 tp_is_empty!12141)))

(declare-fun b!452878 () Bool)

(declare-fun res!269893 () Bool)

(assert (=> b!452878 (=> (not res!269893) (not e!265092))))

(assert (=> b!452878 (= res!269893 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13818 _keys!709))))))

(declare-fun b!452879 () Bool)

(declare-fun res!269884 () Bool)

(assert (=> b!452879 (=> (not res!269884) (not e!265092))))

(assert (=> b!452879 (= res!269884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452880 () Bool)

(declare-fun res!269892 () Bool)

(assert (=> b!452880 (=> (not res!269892) (not e!265092))))

(assert (=> b!452880 (= res!269892 (and (= (size!13819 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13818 _keys!709) (size!13819 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452881 () Bool)

(assert (=> b!452881 (= e!265090 (= call!30019 (+!1545 call!30020 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!452882 () Bool)

(declare-fun res!269881 () Bool)

(assert (=> b!452882 (=> (not res!269881) (not e!265092))))

(assert (=> b!452882 (= res!269881 (validKeyInArray!0 k0!794))))

(declare-fun b!452883 () Bool)

(declare-fun res!269891 () Bool)

(assert (=> b!452883 (=> (not res!269891) (not e!265087))))

(assert (=> b!452883 (= res!269891 (bvsle from!863 i!563))))

(declare-fun b!452884 () Bool)

(declare-fun res!269885 () Bool)

(assert (=> b!452884 (=> (not res!269885) (not e!265092))))

(assert (=> b!452884 (= res!269885 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8101))))

(assert (= (and start!40822 res!269888) b!452876))

(assert (= (and b!452876 res!269894) b!452880))

(assert (= (and b!452880 res!269892) b!452879))

(assert (= (and b!452879 res!269884) b!452884))

(assert (= (and b!452884 res!269885) b!452878))

(assert (= (and b!452878 res!269893) b!452882))

(assert (= (and b!452882 res!269881) b!452868))

(assert (= (and b!452868 res!269890) b!452866))

(assert (= (and b!452866 res!269886) b!452872))

(assert (= (and b!452872 res!269882) b!452867))

(assert (= (and b!452867 res!269883) b!452883))

(assert (= (and b!452883 res!269891) b!452874))

(assert (= (and b!452874 res!269887) b!452873))

(assert (= (and b!452873 c!56078) b!452881))

(assert (= (and b!452873 (not c!56078)) b!452871))

(assert (= (or b!452881 b!452871) bm!30017))

(assert (= (or b!452881 b!452871) bm!30016))

(assert (= (and b!452873 (not res!269889)) b!452869))

(assert (= (and b!452875 condMapEmpty!19848) mapIsEmpty!19848))

(assert (= (and b!452875 (not condMapEmpty!19848)) mapNonEmpty!19848))

(get-info :version)

(assert (= (and mapNonEmpty!19848 ((_ is ValueCellFull!5727) mapValue!19848)) b!452870))

(assert (= (and b!452875 ((_ is ValueCellFull!5727) mapDefault!19848)) b!452877))

(assert (= start!40822 b!452875))

(declare-fun b_lambda!9611 () Bool)

(assert (=> (not b_lambda!9611) (not b!452869)))

(declare-fun t!13937 () Bool)

(declare-fun tb!3791 () Bool)

(assert (=> (and start!40822 (= defaultEntry!557 defaultEntry!557) t!13937) tb!3791))

(declare-fun result!7111 () Bool)

(assert (=> tb!3791 (= result!7111 tp_is_empty!12141)))

(assert (=> b!452869 t!13937))

(declare-fun b_and!18913 () Bool)

(assert (= b_and!18911 (and (=> t!13937 result!7111) b_and!18913)))

(declare-fun m!436695 () Bool)

(assert (=> b!452876 m!436695))

(declare-fun m!436697 () Bool)

(assert (=> bm!30017 m!436697))

(declare-fun m!436699 () Bool)

(assert (=> start!40822 m!436699))

(declare-fun m!436701 () Bool)

(assert (=> start!40822 m!436701))

(declare-fun m!436703 () Bool)

(assert (=> b!452866 m!436703))

(declare-fun m!436705 () Bool)

(assert (=> bm!30016 m!436705))

(declare-fun m!436707 () Bool)

(assert (=> mapNonEmpty!19848 m!436707))

(declare-fun m!436709 () Bool)

(assert (=> b!452879 m!436709))

(declare-fun m!436711 () Bool)

(assert (=> b!452868 m!436711))

(declare-fun m!436713 () Bool)

(assert (=> b!452873 m!436713))

(assert (=> b!452873 m!436713))

(declare-fun m!436715 () Bool)

(assert (=> b!452873 m!436715))

(declare-fun m!436717 () Bool)

(assert (=> b!452873 m!436717))

(declare-fun m!436719 () Bool)

(assert (=> b!452872 m!436719))

(declare-fun m!436721 () Bool)

(assert (=> b!452872 m!436721))

(declare-fun m!436723 () Bool)

(assert (=> b!452884 m!436723))

(declare-fun m!436725 () Bool)

(assert (=> b!452874 m!436725))

(declare-fun m!436727 () Bool)

(assert (=> b!452874 m!436727))

(declare-fun m!436729 () Bool)

(assert (=> b!452874 m!436729))

(declare-fun m!436731 () Bool)

(assert (=> b!452882 m!436731))

(declare-fun m!436733 () Bool)

(assert (=> b!452869 m!436733))

(declare-fun m!436735 () Bool)

(assert (=> b!452869 m!436735))

(declare-fun m!436737 () Bool)

(assert (=> b!452869 m!436737))

(assert (=> b!452869 m!436727))

(declare-fun m!436739 () Bool)

(assert (=> b!452869 m!436739))

(declare-fun m!436741 () Bool)

(assert (=> b!452869 m!436741))

(declare-fun m!436743 () Bool)

(assert (=> b!452869 m!436743))

(assert (=> b!452869 m!436735))

(assert (=> b!452869 m!436741))

(declare-fun m!436745 () Bool)

(assert (=> b!452869 m!436745))

(declare-fun m!436747 () Bool)

(assert (=> b!452869 m!436747))

(declare-fun m!436749 () Bool)

(assert (=> b!452869 m!436749))

(declare-fun m!436751 () Bool)

(assert (=> b!452869 m!436751))

(declare-fun m!436753 () Bool)

(assert (=> b!452869 m!436753))

(declare-fun m!436755 () Bool)

(assert (=> b!452869 m!436755))

(assert (=> b!452869 m!436749))

(declare-fun m!436757 () Bool)

(assert (=> b!452869 m!436757))

(declare-fun m!436759 () Bool)

(assert (=> b!452867 m!436759))

(declare-fun m!436761 () Bool)

(assert (=> b!452881 m!436761))

(check-sat (not bm!30017) (not b!452869) (not mapNonEmpty!19848) tp_is_empty!12141 (not b!452882) (not b!452867) (not start!40822) (not b!452874) (not b!452881) (not b!452879) (not b!452866) (not b_next!10803) (not b_lambda!9611) (not b!452876) (not bm!30016) (not b!452873) (not b!452884) (not b!452872) b_and!18913)
(check-sat b_and!18913 (not b_next!10803))
(get-model)

(declare-fun b_lambda!9615 () Bool)

(assert (= b_lambda!9611 (or (and start!40822 b_free!10803) b_lambda!9615)))

(check-sat (not bm!30017) (not b!452869) (not mapNonEmpty!19848) tp_is_empty!12141 (not b!452882) (not start!40822) (not b!452874) (not b!452881) (not b!452879) (not b!452866) (not b_next!10803) (not b!452876) (not bm!30016) (not b!452867) (not b_lambda!9615) (not b!452873) (not b!452884) (not b!452872) b_and!18913)
(check-sat b_and!18913 (not b_next!10803))
(get-model)

(declare-fun d!74193 () Bool)

(declare-fun res!269941 () Bool)

(declare-fun e!265127 () Bool)

(assert (=> d!74193 (=> res!269941 e!265127)))

(assert (=> d!74193 (= res!269941 (= (select (arr!13466 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74193 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!265127)))

(declare-fun b!452950 () Bool)

(declare-fun e!265128 () Bool)

(assert (=> b!452950 (= e!265127 e!265128)))

(declare-fun res!269942 () Bool)

(assert (=> b!452950 (=> (not res!269942) (not e!265128))))

(assert (=> b!452950 (= res!269942 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun b!452951 () Bool)

(assert (=> b!452951 (= e!265128 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74193 (not res!269941)) b!452950))

(assert (= (and b!452950 res!269942) b!452951))

(declare-fun m!436831 () Bool)

(assert (=> d!74193 m!436831))

(declare-fun m!436833 () Bool)

(assert (=> b!452951 m!436833))

(assert (=> b!452866 d!74193))

(declare-fun d!74195 () Bool)

(assert (=> d!74195 (= (validKeyInArray!0 (select (arr!13466 _keys!709) from!863)) (and (not (= (select (arr!13466 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!452873 d!74195))

(declare-fun b!452958 () Bool)

(declare-fun e!265134 () Bool)

(declare-fun e!265133 () Bool)

(assert (=> b!452958 (= e!265134 e!265133)))

(declare-fun c!56084 () Bool)

(assert (=> b!452958 (= c!56084 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun bm!30028 () Bool)

(declare-fun call!30031 () ListLongMap!6929)

(assert (=> bm!30028 (= call!30031 (getCurrentListMapNoExtraKeys!1656 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)) (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun d!74197 () Bool)

(assert (=> d!74197 e!265134))

(declare-fun res!269945 () Bool)

(assert (=> d!74197 (=> (not res!269945) (not e!265134))))

(assert (=> d!74197 (= res!269945 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13818 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13819 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13818 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13819 _values!549))))))))

(declare-fun lt!205593 () Unit!13189)

(declare-fun choose!1335 (array!28049 array!28051 (_ BitVec 32) (_ BitVec 32) V!17293 V!17293 (_ BitVec 32) (_ BitVec 64) V!17293 (_ BitVec 32) Int) Unit!13189)

(assert (=> d!74197 (= lt!205593 (choose!1335 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74197 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(assert (=> d!74197 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!711 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205593)))

(declare-fun b!452959 () Bool)

(declare-fun call!30032 () ListLongMap!6929)

(assert (=> b!452959 (= e!265133 (= call!30031 (+!1545 call!30032 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30029 () Bool)

(assert (=> bm!30029 (= call!30032 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452960 () Bool)

(assert (=> b!452960 (= e!265133 (= call!30031 call!30032))))

(assert (= (and d!74197 res!269945) b!452958))

(assert (= (and b!452958 c!56084) b!452959))

(assert (= (and b!452958 (not c!56084)) b!452960))

(assert (= (or b!452959 b!452960) bm!30029))

(assert (= (or b!452959 b!452960) bm!30028))

(assert (=> bm!30028 m!436721))

(assert (=> bm!30028 m!436727))

(declare-fun m!436835 () Bool)

(assert (=> bm!30028 m!436835))

(declare-fun m!436837 () Bool)

(assert (=> d!74197 m!436837))

(declare-fun m!436839 () Bool)

(assert (=> b!452959 m!436839))

(declare-fun m!436841 () Bool)

(assert (=> bm!30029 m!436841))

(assert (=> b!452873 d!74197))

(declare-fun b!452971 () Bool)

(declare-fun e!265143 () Bool)

(declare-fun call!30035 () Bool)

(assert (=> b!452971 (= e!265143 call!30035)))

(declare-fun b!452972 () Bool)

(declare-fun e!265146 () Bool)

(assert (=> b!452972 (= e!265146 e!265143)))

(declare-fun c!56087 () Bool)

(assert (=> b!452972 (= c!56087 (validKeyInArray!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!452973 () Bool)

(declare-fun e!265145 () Bool)

(assert (=> b!452973 (= e!265145 e!265146)))

(declare-fun res!269952 () Bool)

(assert (=> b!452973 (=> (not res!269952) (not e!265146))))

(declare-fun e!265144 () Bool)

(assert (=> b!452973 (= res!269952 (not e!265144))))

(declare-fun res!269953 () Bool)

(assert (=> b!452973 (=> (not res!269953) (not e!265144))))

(assert (=> b!452973 (= res!269953 (validKeyInArray!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!452974 () Bool)

(declare-fun contains!2499 (List!8104 (_ BitVec 64)) Bool)

(assert (=> b!452974 (= e!265144 (contains!2499 Nil!8101 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!452975 () Bool)

(assert (=> b!452975 (= e!265143 call!30035)))

(declare-fun bm!30032 () Bool)

(assert (=> bm!30032 (= call!30035 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56087 (Cons!8100 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) Nil!8101) Nil!8101)))))

(declare-fun d!74199 () Bool)

(declare-fun res!269954 () Bool)

(assert (=> d!74199 (=> res!269954 e!265145)))

(assert (=> d!74199 (= res!269954 (bvsge #b00000000000000000000000000000000 (size!13818 _keys!709)))))

(assert (=> d!74199 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8101) e!265145)))

(assert (= (and d!74199 (not res!269954)) b!452973))

(assert (= (and b!452973 res!269953) b!452974))

(assert (= (and b!452973 res!269952) b!452972))

(assert (= (and b!452972 c!56087) b!452971))

(assert (= (and b!452972 (not c!56087)) b!452975))

(assert (= (or b!452971 b!452975) bm!30032))

(assert (=> b!452972 m!436831))

(assert (=> b!452972 m!436831))

(declare-fun m!436843 () Bool)

(assert (=> b!452972 m!436843))

(assert (=> b!452973 m!436831))

(assert (=> b!452973 m!436831))

(assert (=> b!452973 m!436843))

(assert (=> b!452974 m!436831))

(assert (=> b!452974 m!436831))

(declare-fun m!436845 () Bool)

(assert (=> b!452974 m!436845))

(assert (=> bm!30032 m!436831))

(declare-fun m!436847 () Bool)

(assert (=> bm!30032 m!436847))

(assert (=> b!452884 d!74199))

(declare-fun b!453000 () Bool)

(assert (=> b!453000 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(assert (=> b!453000 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13819 (ite c!56078 lt!205554 _values!549))))))

(declare-fun e!265167 () Bool)

(declare-fun lt!205610 () ListLongMap!6929)

(declare-fun apply!313 (ListLongMap!6929 (_ BitVec 64)) V!17293)

(assert (=> b!453000 (= e!265167 (= (apply!313 lt!205610 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453002 () Bool)

(declare-fun lt!205613 () Unit!13189)

(declare-fun lt!205608 () Unit!13189)

(assert (=> b!453002 (= lt!205613 lt!205608)))

(declare-fun lt!205611 () V!17293)

(declare-fun lt!205609 () (_ BitVec 64))

(declare-fun lt!205612 () (_ BitVec 64))

(declare-fun lt!205614 () ListLongMap!6929)

(declare-fun contains!2500 (ListLongMap!6929 (_ BitVec 64)) Bool)

(assert (=> b!453002 (not (contains!2500 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611)) lt!205612))))

(declare-fun addStillNotContains!148 (ListLongMap!6929 (_ BitVec 64) V!17293 (_ BitVec 64)) Unit!13189)

(assert (=> b!453002 (= lt!205608 (addStillNotContains!148 lt!205614 lt!205609 lt!205611 lt!205612))))

(assert (=> b!453002 (= lt!205612 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453002 (= lt!205611 (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453002 (= lt!205609 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30038 () ListLongMap!6929)

(assert (=> b!453002 (= lt!205614 call!30038)))

(declare-fun e!265163 () ListLongMap!6929)

(assert (=> b!453002 (= e!265163 (+!1545 call!30038 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453003 () Bool)

(declare-fun e!265164 () ListLongMap!6929)

(assert (=> b!453003 (= e!265164 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30035 () Bool)

(assert (=> bm!30035 (= call!30038 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453004 () Bool)

(declare-fun e!265161 () Bool)

(declare-fun isEmpty!564 (ListLongMap!6929) Bool)

(assert (=> b!453004 (= e!265161 (isEmpty!564 lt!205610))))

(declare-fun b!453005 () Bool)

(assert (=> b!453005 (= e!265161 (= lt!205610 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453006 () Bool)

(declare-fun e!265162 () Bool)

(declare-fun e!265166 () Bool)

(assert (=> b!453006 (= e!265162 e!265166)))

(declare-fun c!56099 () Bool)

(declare-fun e!265165 () Bool)

(assert (=> b!453006 (= c!56099 e!265165)))

(declare-fun res!269964 () Bool)

(assert (=> b!453006 (=> (not res!269964) (not e!265165))))

(assert (=> b!453006 (= res!269964 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun b!453007 () Bool)

(assert (=> b!453007 (= e!265166 e!265161)))

(declare-fun c!56097 () Bool)

(assert (=> b!453007 (= c!56097 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun b!453008 () Bool)

(assert (=> b!453008 (= e!265166 e!265167)))

(assert (=> b!453008 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun res!269966 () Bool)

(assert (=> b!453008 (= res!269966 (contains!2500 lt!205610 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453008 (=> (not res!269966) (not e!265167))))

(declare-fun b!453009 () Bool)

(assert (=> b!453009 (= e!265163 call!30038)))

(declare-fun b!453001 () Bool)

(declare-fun res!269965 () Bool)

(assert (=> b!453001 (=> (not res!269965) (not e!265162))))

(assert (=> b!453001 (= res!269965 (not (contains!2500 lt!205610 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74201 () Bool)

(assert (=> d!74201 e!265162))

(declare-fun res!269963 () Bool)

(assert (=> d!74201 (=> (not res!269963) (not e!265162))))

(assert (=> d!74201 (= res!269963 (not (contains!2500 lt!205610 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74201 (= lt!205610 e!265164)))

(declare-fun c!56096 () Bool)

(assert (=> d!74201 (= c!56096 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(assert (=> d!74201 (validMask!0 mask!1025)))

(assert (=> d!74201 (= (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205610)))

(declare-fun b!453010 () Bool)

(assert (=> b!453010 (= e!265164 e!265163)))

(declare-fun c!56098 () Bool)

(assert (=> b!453010 (= c!56098 (validKeyInArray!0 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453011 () Bool)

(assert (=> b!453011 (= e!265165 (validKeyInArray!0 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453011 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(assert (= (and d!74201 c!56096) b!453003))

(assert (= (and d!74201 (not c!56096)) b!453010))

(assert (= (and b!453010 c!56098) b!453002))

(assert (= (and b!453010 (not c!56098)) b!453009))

(assert (= (or b!453002 b!453009) bm!30035))

(assert (= (and d!74201 res!269963) b!453001))

(assert (= (and b!453001 res!269965) b!453006))

(assert (= (and b!453006 res!269964) b!453011))

(assert (= (and b!453006 c!56099) b!453008))

(assert (= (and b!453006 (not c!56099)) b!453007))

(assert (= (and b!453008 res!269966) b!453000))

(assert (= (and b!453007 c!56097) b!453005))

(assert (= (and b!453007 (not c!56097)) b!453004))

(declare-fun b_lambda!9617 () Bool)

(assert (=> (not b_lambda!9617) (not b!453000)))

(assert (=> b!453000 t!13937))

(declare-fun b_and!18919 () Bool)

(assert (= b_and!18913 (and (=> t!13937 result!7111) b_and!18919)))

(declare-fun b_lambda!9619 () Bool)

(assert (=> (not b_lambda!9619) (not b!453002)))

(assert (=> b!453002 t!13937))

(declare-fun b_and!18921 () Bool)

(assert (= b_and!18919 (and (=> t!13937 result!7111) b_and!18921)))

(declare-fun m!436849 () Bool)

(assert (=> d!74201 m!436849))

(assert (=> d!74201 m!436695))

(declare-fun m!436851 () Bool)

(assert (=> b!453011 m!436851))

(assert (=> b!453011 m!436851))

(declare-fun m!436853 () Bool)

(assert (=> b!453011 m!436853))

(declare-fun m!436855 () Bool)

(assert (=> bm!30035 m!436855))

(assert (=> b!453000 m!436851))

(assert (=> b!453000 m!436755))

(declare-fun m!436857 () Bool)

(assert (=> b!453000 m!436857))

(assert (=> b!453000 m!436755))

(declare-fun m!436859 () Bool)

(assert (=> b!453000 m!436859))

(assert (=> b!453000 m!436851))

(declare-fun m!436861 () Bool)

(assert (=> b!453000 m!436861))

(assert (=> b!453000 m!436857))

(declare-fun m!436863 () Bool)

(assert (=> b!453001 m!436863))

(assert (=> b!453005 m!436855))

(declare-fun m!436865 () Bool)

(assert (=> b!453002 m!436865))

(assert (=> b!453002 m!436851))

(declare-fun m!436867 () Bool)

(assert (=> b!453002 m!436867))

(declare-fun m!436869 () Bool)

(assert (=> b!453002 m!436869))

(assert (=> b!453002 m!436755))

(assert (=> b!453002 m!436857))

(assert (=> b!453002 m!436755))

(assert (=> b!453002 m!436859))

(assert (=> b!453002 m!436867))

(declare-fun m!436871 () Bool)

(assert (=> b!453002 m!436871))

(assert (=> b!453002 m!436857))

(declare-fun m!436873 () Bool)

(assert (=> b!453004 m!436873))

(assert (=> b!453010 m!436851))

(assert (=> b!453010 m!436851))

(assert (=> b!453010 m!436853))

(assert (=> b!453008 m!436851))

(assert (=> b!453008 m!436851))

(declare-fun m!436875 () Bool)

(assert (=> b!453008 m!436875))

(assert (=> bm!30017 d!74201))

(declare-fun d!74203 () Bool)

(assert (=> d!74203 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!452882 d!74203))

(declare-fun b!453020 () Bool)

(declare-fun e!265175 () Bool)

(declare-fun call!30041 () Bool)

(assert (=> b!453020 (= e!265175 call!30041)))

(declare-fun bm!30038 () Bool)

(assert (=> bm!30038 (= call!30041 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!205547 mask!1025))))

(declare-fun b!453022 () Bool)

(declare-fun e!265174 () Bool)

(assert (=> b!453022 (= e!265175 e!265174)))

(declare-fun lt!205621 () (_ BitVec 64))

(assert (=> b!453022 (= lt!205621 (select (arr!13466 lt!205547) #b00000000000000000000000000000000))))

(declare-fun lt!205623 () Unit!13189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28049 (_ BitVec 64) (_ BitVec 32)) Unit!13189)

(assert (=> b!453022 (= lt!205623 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!205547 lt!205621 #b00000000000000000000000000000000))))

(assert (=> b!453022 (arrayContainsKey!0 lt!205547 lt!205621 #b00000000000000000000000000000000)))

(declare-fun lt!205622 () Unit!13189)

(assert (=> b!453022 (= lt!205622 lt!205623)))

(declare-fun res!269972 () Bool)

(declare-datatypes ((SeekEntryResult!3520 0))(
  ( (MissingZero!3520 (index!16259 (_ BitVec 32))) (Found!3520 (index!16260 (_ BitVec 32))) (Intermediate!3520 (undefined!4332 Bool) (index!16261 (_ BitVec 32)) (x!42444 (_ BitVec 32))) (Undefined!3520) (MissingVacant!3520 (index!16262 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28049 (_ BitVec 32)) SeekEntryResult!3520)

(assert (=> b!453022 (= res!269972 (= (seekEntryOrOpen!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) lt!205547 mask!1025) (Found!3520 #b00000000000000000000000000000000)))))

(assert (=> b!453022 (=> (not res!269972) (not e!265174))))

(declare-fun b!453023 () Bool)

(declare-fun e!265176 () Bool)

(assert (=> b!453023 (= e!265176 e!265175)))

(declare-fun c!56102 () Bool)

(assert (=> b!453023 (= c!56102 (validKeyInArray!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453021 () Bool)

(assert (=> b!453021 (= e!265174 call!30041)))

(declare-fun d!74205 () Bool)

(declare-fun res!269971 () Bool)

(assert (=> d!74205 (=> res!269971 e!265176)))

(assert (=> d!74205 (= res!269971 (bvsge #b00000000000000000000000000000000 (size!13818 lt!205547)))))

(assert (=> d!74205 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205547 mask!1025) e!265176)))

(assert (= (and d!74205 (not res!269971)) b!453023))

(assert (= (and b!453023 c!56102) b!453022))

(assert (= (and b!453023 (not c!56102)) b!453020))

(assert (= (and b!453022 res!269972) b!453021))

(assert (= (or b!453021 b!453020) bm!30038))

(declare-fun m!436877 () Bool)

(assert (=> bm!30038 m!436877))

(declare-fun m!436879 () Bool)

(assert (=> b!453022 m!436879))

(declare-fun m!436881 () Bool)

(assert (=> b!453022 m!436881))

(declare-fun m!436883 () Bool)

(assert (=> b!453022 m!436883))

(assert (=> b!453022 m!436879))

(declare-fun m!436885 () Bool)

(assert (=> b!453022 m!436885))

(assert (=> b!453023 m!436879))

(assert (=> b!453023 m!436879))

(declare-fun m!436887 () Bool)

(assert (=> b!453023 m!436887))

(assert (=> b!452872 d!74205))

(declare-fun b!453024 () Bool)

(assert (=> b!453024 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(assert (=> b!453024 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13819 (ite c!56078 _values!549 lt!205554))))))

(declare-fun lt!205626 () ListLongMap!6929)

(declare-fun e!265183 () Bool)

(assert (=> b!453024 (= e!265183 (= (apply!313 lt!205626 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453026 () Bool)

(declare-fun lt!205629 () Unit!13189)

(declare-fun lt!205624 () Unit!13189)

(assert (=> b!453026 (= lt!205629 lt!205624)))

(declare-fun lt!205627 () V!17293)

(declare-fun lt!205625 () (_ BitVec 64))

(declare-fun lt!205628 () (_ BitVec 64))

(declare-fun lt!205630 () ListLongMap!6929)

(assert (=> b!453026 (not (contains!2500 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627)) lt!205628))))

(assert (=> b!453026 (= lt!205624 (addStillNotContains!148 lt!205630 lt!205625 lt!205627 lt!205628))))

(assert (=> b!453026 (= lt!205628 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453026 (= lt!205627 (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453026 (= lt!205625 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30042 () ListLongMap!6929)

(assert (=> b!453026 (= lt!205630 call!30042)))

(declare-fun e!265179 () ListLongMap!6929)

(assert (=> b!453026 (= e!265179 (+!1545 call!30042 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453027 () Bool)

(declare-fun e!265180 () ListLongMap!6929)

(assert (=> b!453027 (= e!265180 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30039 () Bool)

(assert (=> bm!30039 (= call!30042 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453028 () Bool)

(declare-fun e!265177 () Bool)

(assert (=> b!453028 (= e!265177 (isEmpty!564 lt!205626))))

(declare-fun b!453029 () Bool)

(assert (=> b!453029 (= e!265177 (= lt!205626 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453030 () Bool)

(declare-fun e!265178 () Bool)

(declare-fun e!265182 () Bool)

(assert (=> b!453030 (= e!265178 e!265182)))

(declare-fun c!56106 () Bool)

(declare-fun e!265181 () Bool)

(assert (=> b!453030 (= c!56106 e!265181)))

(declare-fun res!269974 () Bool)

(assert (=> b!453030 (=> (not res!269974) (not e!265181))))

(assert (=> b!453030 (= res!269974 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun b!453031 () Bool)

(assert (=> b!453031 (= e!265182 e!265177)))

(declare-fun c!56104 () Bool)

(assert (=> b!453031 (= c!56104 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun b!453032 () Bool)

(assert (=> b!453032 (= e!265182 e!265183)))

(assert (=> b!453032 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun res!269976 () Bool)

(assert (=> b!453032 (= res!269976 (contains!2500 lt!205626 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453032 (=> (not res!269976) (not e!265183))))

(declare-fun b!453033 () Bool)

(assert (=> b!453033 (= e!265179 call!30042)))

(declare-fun b!453025 () Bool)

(declare-fun res!269975 () Bool)

(assert (=> b!453025 (=> (not res!269975) (not e!265178))))

(assert (=> b!453025 (= res!269975 (not (contains!2500 lt!205626 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74207 () Bool)

(assert (=> d!74207 e!265178))

(declare-fun res!269973 () Bool)

(assert (=> d!74207 (=> (not res!269973) (not e!265178))))

(assert (=> d!74207 (= res!269973 (not (contains!2500 lt!205626 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74207 (= lt!205626 e!265180)))

(declare-fun c!56103 () Bool)

(assert (=> d!74207 (= c!56103 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(assert (=> d!74207 (validMask!0 mask!1025)))

(assert (=> d!74207 (= (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205626)))

(declare-fun b!453034 () Bool)

(assert (=> b!453034 (= e!265180 e!265179)))

(declare-fun c!56105 () Bool)

(assert (=> b!453034 (= c!56105 (validKeyInArray!0 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453035 () Bool)

(assert (=> b!453035 (= e!265181 (validKeyInArray!0 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453035 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(assert (= (and d!74207 c!56103) b!453027))

(assert (= (and d!74207 (not c!56103)) b!453034))

(assert (= (and b!453034 c!56105) b!453026))

(assert (= (and b!453034 (not c!56105)) b!453033))

(assert (= (or b!453026 b!453033) bm!30039))

(assert (= (and d!74207 res!269973) b!453025))

(assert (= (and b!453025 res!269975) b!453030))

(assert (= (and b!453030 res!269974) b!453035))

(assert (= (and b!453030 c!56106) b!453032))

(assert (= (and b!453030 (not c!56106)) b!453031))

(assert (= (and b!453032 res!269976) b!453024))

(assert (= (and b!453031 c!56104) b!453029))

(assert (= (and b!453031 (not c!56104)) b!453028))

(declare-fun b_lambda!9621 () Bool)

(assert (=> (not b_lambda!9621) (not b!453024)))

(assert (=> b!453024 t!13937))

(declare-fun b_and!18923 () Bool)

(assert (= b_and!18921 (and (=> t!13937 result!7111) b_and!18923)))

(declare-fun b_lambda!9623 () Bool)

(assert (=> (not b_lambda!9623) (not b!453026)))

(assert (=> b!453026 t!13937))

(declare-fun b_and!18925 () Bool)

(assert (= b_and!18923 (and (=> t!13937 result!7111) b_and!18925)))

(declare-fun m!436889 () Bool)

(assert (=> d!74207 m!436889))

(assert (=> d!74207 m!436695))

(declare-fun m!436891 () Bool)

(assert (=> b!453035 m!436891))

(assert (=> b!453035 m!436891))

(declare-fun m!436893 () Bool)

(assert (=> b!453035 m!436893))

(declare-fun m!436895 () Bool)

(assert (=> bm!30039 m!436895))

(assert (=> b!453024 m!436891))

(assert (=> b!453024 m!436755))

(declare-fun m!436897 () Bool)

(assert (=> b!453024 m!436897))

(assert (=> b!453024 m!436755))

(declare-fun m!436899 () Bool)

(assert (=> b!453024 m!436899))

(assert (=> b!453024 m!436891))

(declare-fun m!436901 () Bool)

(assert (=> b!453024 m!436901))

(assert (=> b!453024 m!436897))

(declare-fun m!436903 () Bool)

(assert (=> b!453025 m!436903))

(assert (=> b!453029 m!436895))

(declare-fun m!436905 () Bool)

(assert (=> b!453026 m!436905))

(assert (=> b!453026 m!436891))

(declare-fun m!436907 () Bool)

(assert (=> b!453026 m!436907))

(declare-fun m!436909 () Bool)

(assert (=> b!453026 m!436909))

(assert (=> b!453026 m!436755))

(assert (=> b!453026 m!436897))

(assert (=> b!453026 m!436755))

(assert (=> b!453026 m!436899))

(assert (=> b!453026 m!436907))

(declare-fun m!436911 () Bool)

(assert (=> b!453026 m!436911))

(assert (=> b!453026 m!436897))

(declare-fun m!436913 () Bool)

(assert (=> b!453028 m!436913))

(assert (=> b!453034 m!436891))

(assert (=> b!453034 m!436891))

(assert (=> b!453034 m!436893))

(assert (=> b!453032 m!436891))

(assert (=> b!453032 m!436891))

(declare-fun m!436915 () Bool)

(assert (=> b!453032 m!436915))

(assert (=> bm!30016 d!74207))

(declare-fun d!74209 () Bool)

(assert (=> d!74209 (= (array_inv!9750 _values!549) (bvsge (size!13819 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40822 d!74209))

(declare-fun d!74211 () Bool)

(assert (=> d!74211 (= (array_inv!9751 _keys!709) (bvsge (size!13818 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40822 d!74211))

(declare-fun d!74213 () Bool)

(declare-fun e!265186 () Bool)

(assert (=> d!74213 e!265186))

(declare-fun res!269981 () Bool)

(assert (=> d!74213 (=> (not res!269981) (not e!265186))))

(declare-fun lt!205640 () ListLongMap!6929)

(assert (=> d!74213 (= res!269981 (contains!2500 lt!205640 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205639 () List!8105)

(assert (=> d!74213 (= lt!205640 (ListLongMap!6930 lt!205639))))

(declare-fun lt!205642 () Unit!13189)

(declare-fun lt!205641 () Unit!13189)

(assert (=> d!74213 (= lt!205642 lt!205641)))

(declare-datatypes ((Option!375 0))(
  ( (Some!374 (v!8375 V!17293)) (None!373) )
))
(declare-fun getValueByKey!369 (List!8105 (_ BitVec 64)) Option!375)

(assert (=> d!74213 (= (getValueByKey!369 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!193 (List!8105 (_ BitVec 64) V!17293) Unit!13189)

(assert (=> d!74213 (= lt!205641 (lemmaContainsTupThenGetReturnValue!193 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun insertStrictlySorted!195 (List!8105 (_ BitVec 64) V!17293) List!8105)

(assert (=> d!74213 (= lt!205639 (insertStrictlySorted!195 (toList!3480 call!30020) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74213 (= (+!1545 call!30020 (tuple2!8003 k0!794 v!412)) lt!205640)))

(declare-fun b!453040 () Bool)

(declare-fun res!269982 () Bool)

(assert (=> b!453040 (=> (not res!269982) (not e!265186))))

(assert (=> b!453040 (= res!269982 (= (getValueByKey!369 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(declare-fun b!453041 () Bool)

(declare-fun contains!2501 (List!8105 tuple2!8002) Bool)

(assert (=> b!453041 (= e!265186 (contains!2501 (toList!3480 lt!205640) (tuple2!8003 k0!794 v!412)))))

(assert (= (and d!74213 res!269981) b!453040))

(assert (= (and b!453040 res!269982) b!453041))

(declare-fun m!436917 () Bool)

(assert (=> d!74213 m!436917))

(declare-fun m!436919 () Bool)

(assert (=> d!74213 m!436919))

(declare-fun m!436921 () Bool)

(assert (=> d!74213 m!436921))

(declare-fun m!436923 () Bool)

(assert (=> d!74213 m!436923))

(declare-fun m!436925 () Bool)

(assert (=> b!453040 m!436925))

(declare-fun m!436927 () Bool)

(assert (=> b!453041 m!436927))

(assert (=> b!452881 d!74213))

(declare-fun b!453042 () Bool)

(declare-fun e!265188 () Bool)

(declare-fun call!30043 () Bool)

(assert (=> b!453042 (= e!265188 call!30043)))

(declare-fun bm!30040 () Bool)

(assert (=> bm!30040 (= call!30043 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!453044 () Bool)

(declare-fun e!265187 () Bool)

(assert (=> b!453044 (= e!265188 e!265187)))

(declare-fun lt!205643 () (_ BitVec 64))

(assert (=> b!453044 (= lt!205643 (select (arr!13466 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!205645 () Unit!13189)

(assert (=> b!453044 (= lt!205645 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!205643 #b00000000000000000000000000000000))))

(assert (=> b!453044 (arrayContainsKey!0 _keys!709 lt!205643 #b00000000000000000000000000000000)))

(declare-fun lt!205644 () Unit!13189)

(assert (=> b!453044 (= lt!205644 lt!205645)))

(declare-fun res!269984 () Bool)

(assert (=> b!453044 (= res!269984 (= (seekEntryOrOpen!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3520 #b00000000000000000000000000000000)))))

(assert (=> b!453044 (=> (not res!269984) (not e!265187))))

(declare-fun b!453045 () Bool)

(declare-fun e!265189 () Bool)

(assert (=> b!453045 (= e!265189 e!265188)))

(declare-fun c!56107 () Bool)

(assert (=> b!453045 (= c!56107 (validKeyInArray!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!453043 () Bool)

(assert (=> b!453043 (= e!265187 call!30043)))

(declare-fun d!74215 () Bool)

(declare-fun res!269983 () Bool)

(assert (=> d!74215 (=> res!269983 e!265189)))

(assert (=> d!74215 (= res!269983 (bvsge #b00000000000000000000000000000000 (size!13818 _keys!709)))))

(assert (=> d!74215 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!265189)))

(assert (= (and d!74215 (not res!269983)) b!453045))

(assert (= (and b!453045 c!56107) b!453044))

(assert (= (and b!453045 (not c!56107)) b!453042))

(assert (= (and b!453044 res!269984) b!453043))

(assert (= (or b!453043 b!453042) bm!30040))

(declare-fun m!436929 () Bool)

(assert (=> bm!30040 m!436929))

(assert (=> b!453044 m!436831))

(declare-fun m!436931 () Bool)

(assert (=> b!453044 m!436931))

(declare-fun m!436933 () Bool)

(assert (=> b!453044 m!436933))

(assert (=> b!453044 m!436831))

(declare-fun m!436935 () Bool)

(assert (=> b!453044 m!436935))

(assert (=> b!453045 m!436831))

(assert (=> b!453045 m!436831))

(assert (=> b!453045 m!436843))

(assert (=> b!452879 d!74215))

(declare-fun d!74217 () Bool)

(assert (=> d!74217 (= (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205550)) (+!1545 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) (tuple2!8003 k0!794 lt!205550)))))

(declare-fun lt!205648 () Unit!13189)

(declare-fun choose!1336 (ListLongMap!6929 (_ BitVec 64) V!17293 V!17293) Unit!13189)

(assert (=> d!74217 (= lt!205648 (choose!1336 lt!205552 k0!794 lt!205556 lt!205550))))

(assert (=> d!74217 (= (addSameAsAddTwiceSameKeyDiffValues!89 lt!205552 k0!794 lt!205556 lt!205550) lt!205648)))

(declare-fun bs!14398 () Bool)

(assert (= bs!14398 d!74217))

(declare-fun m!436937 () Bool)

(assert (=> bs!14398 m!436937))

(assert (=> bs!14398 m!436749))

(assert (=> bs!14398 m!436749))

(declare-fun m!436939 () Bool)

(assert (=> bs!14398 m!436939))

(declare-fun m!436941 () Bool)

(assert (=> bs!14398 m!436941))

(assert (=> b!452869 d!74217))

(declare-fun d!74219 () Bool)

(declare-fun e!265190 () Bool)

(assert (=> d!74219 e!265190))

(declare-fun res!269985 () Bool)

(assert (=> d!74219 (=> (not res!269985) (not e!265190))))

(declare-fun lt!205650 () ListLongMap!6929)

(assert (=> d!74219 (= res!269985 (contains!2500 lt!205650 (_1!4011 lt!205555)))))

(declare-fun lt!205649 () List!8105)

(assert (=> d!74219 (= lt!205650 (ListLongMap!6930 lt!205649))))

(declare-fun lt!205652 () Unit!13189)

(declare-fun lt!205651 () Unit!13189)

(assert (=> d!74219 (= lt!205652 lt!205651)))

(assert (=> d!74219 (= (getValueByKey!369 lt!205649 (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555)))))

(assert (=> d!74219 (= lt!205651 (lemmaContainsTupThenGetReturnValue!193 lt!205649 (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(assert (=> d!74219 (= lt!205649 (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(assert (=> d!74219 (= (+!1545 lt!205552 lt!205555) lt!205650)))

(declare-fun b!453046 () Bool)

(declare-fun res!269986 () Bool)

(assert (=> b!453046 (=> (not res!269986) (not e!265190))))

(assert (=> b!453046 (= res!269986 (= (getValueByKey!369 (toList!3480 lt!205650) (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555))))))

(declare-fun b!453047 () Bool)

(assert (=> b!453047 (= e!265190 (contains!2501 (toList!3480 lt!205650) lt!205555))))

(assert (= (and d!74219 res!269985) b!453046))

(assert (= (and b!453046 res!269986) b!453047))

(declare-fun m!436943 () Bool)

(assert (=> d!74219 m!436943))

(declare-fun m!436945 () Bool)

(assert (=> d!74219 m!436945))

(declare-fun m!436947 () Bool)

(assert (=> d!74219 m!436947))

(declare-fun m!436949 () Bool)

(assert (=> d!74219 m!436949))

(declare-fun m!436951 () Bool)

(assert (=> b!453046 m!436951))

(declare-fun m!436953 () Bool)

(assert (=> b!453047 m!436953))

(assert (=> b!452869 d!74219))

(declare-fun d!74221 () Bool)

(declare-fun e!265191 () Bool)

(assert (=> d!74221 e!265191))

(declare-fun res!269987 () Bool)

(assert (=> d!74221 (=> (not res!269987) (not e!265191))))

(declare-fun lt!205654 () ListLongMap!6929)

(assert (=> d!74221 (= res!269987 (contains!2500 lt!205654 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205653 () List!8105)

(assert (=> d!74221 (= lt!205654 (ListLongMap!6930 lt!205653))))

(declare-fun lt!205656 () Unit!13189)

(declare-fun lt!205655 () Unit!13189)

(assert (=> d!74221 (= lt!205656 lt!205655)))

(assert (=> d!74221 (= (getValueByKey!369 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74221 (= lt!205655 (lemmaContainsTupThenGetReturnValue!193 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74221 (= lt!205653 (insertStrictlySorted!195 (toList!3480 lt!205557) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74221 (= (+!1545 lt!205557 (tuple2!8003 k0!794 v!412)) lt!205654)))

(declare-fun b!453048 () Bool)

(declare-fun res!269988 () Bool)

(assert (=> b!453048 (=> (not res!269988) (not e!265191))))

(assert (=> b!453048 (= res!269988 (= (getValueByKey!369 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(declare-fun b!453049 () Bool)

(assert (=> b!453049 (= e!265191 (contains!2501 (toList!3480 lt!205654) (tuple2!8003 k0!794 v!412)))))

(assert (= (and d!74221 res!269987) b!453048))

(assert (= (and b!453048 res!269988) b!453049))

(declare-fun m!436955 () Bool)

(assert (=> d!74221 m!436955))

(declare-fun m!436957 () Bool)

(assert (=> d!74221 m!436957))

(declare-fun m!436959 () Bool)

(assert (=> d!74221 m!436959))

(declare-fun m!436961 () Bool)

(assert (=> d!74221 m!436961))

(declare-fun m!436963 () Bool)

(assert (=> b!453048 m!436963))

(declare-fun m!436965 () Bool)

(assert (=> b!453049 m!436965))

(assert (=> b!452869 d!74221))

(declare-fun d!74223 () Bool)

(declare-fun e!265192 () Bool)

(assert (=> d!74223 e!265192))

(declare-fun res!269989 () Bool)

(assert (=> d!74223 (=> (not res!269989) (not e!265192))))

(declare-fun lt!205658 () ListLongMap!6929)

(assert (=> d!74223 (= res!269989 (contains!2500 lt!205658 (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun lt!205657 () List!8105)

(assert (=> d!74223 (= lt!205658 (ListLongMap!6930 lt!205657))))

(declare-fun lt!205660 () Unit!13189)

(declare-fun lt!205659 () Unit!13189)

(assert (=> d!74223 (= lt!205660 lt!205659)))

(assert (=> d!74223 (= (getValueByKey!369 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> d!74223 (= lt!205659 (lemmaContainsTupThenGetReturnValue!193 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> d!74223 (= lt!205657 (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> d!74223 (= (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) lt!205658)))

(declare-fun b!453050 () Bool)

(declare-fun res!269990 () Bool)

(assert (=> b!453050 (=> (not res!269990) (not e!265192))))

(assert (=> b!453050 (= res!269990 (= (getValueByKey!369 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205556)))))))

(declare-fun b!453051 () Bool)

(assert (=> b!453051 (= e!265192 (contains!2501 (toList!3480 lt!205658) (tuple2!8003 k0!794 lt!205556)))))

(assert (= (and d!74223 res!269989) b!453050))

(assert (= (and b!453050 res!269990) b!453051))

(declare-fun m!436967 () Bool)

(assert (=> d!74223 m!436967))

(declare-fun m!436969 () Bool)

(assert (=> d!74223 m!436969))

(declare-fun m!436971 () Bool)

(assert (=> d!74223 m!436971))

(declare-fun m!436973 () Bool)

(assert (=> d!74223 m!436973))

(declare-fun m!436975 () Bool)

(assert (=> b!453050 m!436975))

(declare-fun m!436977 () Bool)

(assert (=> b!453051 m!436977))

(assert (=> b!452869 d!74223))

(declare-fun d!74225 () Bool)

(declare-fun c!56110 () Bool)

(assert (=> d!74225 (= c!56110 ((_ is ValueCellFull!5727) (select (arr!13467 _values!549) from!863)))))

(declare-fun e!265195 () V!17293)

(assert (=> d!74225 (= (get!6652 (select (arr!13467 _values!549) from!863) lt!205553) e!265195)))

(declare-fun b!453056 () Bool)

(declare-fun get!6654 (ValueCell!5727 V!17293) V!17293)

(assert (=> b!453056 (= e!265195 (get!6654 (select (arr!13467 _values!549) from!863) lt!205553))))

(declare-fun b!453057 () Bool)

(declare-fun get!6655 (ValueCell!5727 V!17293) V!17293)

(assert (=> b!453057 (= e!265195 (get!6655 (select (arr!13467 _values!549) from!863) lt!205553))))

(assert (= (and d!74225 c!56110) b!453056))

(assert (= (and d!74225 (not c!56110)) b!453057))

(assert (=> b!453056 m!436741))

(declare-fun m!436979 () Bool)

(assert (=> b!453056 m!436979))

(assert (=> b!453057 m!436741))

(declare-fun m!436981 () Bool)

(assert (=> b!453057 m!436981))

(assert (=> b!452869 d!74225))

(declare-fun b!453058 () Bool)

(assert (=> b!453058 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 lt!205547)))))

(assert (=> b!453058 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13819 lt!205554)))))

(declare-fun lt!205663 () ListLongMap!6929)

(declare-fun e!265202 () Bool)

(assert (=> b!453058 (= e!265202 (= (apply!313 lt!205663 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453060 () Bool)

(declare-fun lt!205666 () Unit!13189)

(declare-fun lt!205661 () Unit!13189)

(assert (=> b!453060 (= lt!205666 lt!205661)))

(declare-fun lt!205662 () (_ BitVec 64))

(declare-fun lt!205664 () V!17293)

(declare-fun lt!205665 () (_ BitVec 64))

(declare-fun lt!205667 () ListLongMap!6929)

(assert (=> b!453060 (not (contains!2500 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664)) lt!205665))))

(assert (=> b!453060 (= lt!205661 (addStillNotContains!148 lt!205667 lt!205662 lt!205664 lt!205665))))

(assert (=> b!453060 (= lt!205665 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453060 (= lt!205664 (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453060 (= lt!205662 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30044 () ListLongMap!6929)

(assert (=> b!453060 (= lt!205667 call!30044)))

(declare-fun e!265198 () ListLongMap!6929)

(assert (=> b!453060 (= e!265198 (+!1545 call!30044 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453061 () Bool)

(declare-fun e!265199 () ListLongMap!6929)

(assert (=> b!453061 (= e!265199 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30041 () Bool)

(assert (=> bm!30041 (= call!30044 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453062 () Bool)

(declare-fun e!265196 () Bool)

(assert (=> b!453062 (= e!265196 (isEmpty!564 lt!205663))))

(declare-fun b!453063 () Bool)

(assert (=> b!453063 (= e!265196 (= lt!205663 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453064 () Bool)

(declare-fun e!265197 () Bool)

(declare-fun e!265201 () Bool)

(assert (=> b!453064 (= e!265197 e!265201)))

(declare-fun c!56114 () Bool)

(declare-fun e!265200 () Bool)

(assert (=> b!453064 (= c!56114 e!265200)))

(declare-fun res!269992 () Bool)

(assert (=> b!453064 (=> (not res!269992) (not e!265200))))

(assert (=> b!453064 (= res!269992 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 lt!205547)))))

(declare-fun b!453065 () Bool)

(assert (=> b!453065 (= e!265201 e!265196)))

(declare-fun c!56112 () Bool)

(assert (=> b!453065 (= c!56112 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 lt!205547)))))

(declare-fun b!453066 () Bool)

(assert (=> b!453066 (= e!265201 e!265202)))

(assert (=> b!453066 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 lt!205547)))))

(declare-fun res!269994 () Bool)

(assert (=> b!453066 (= res!269994 (contains!2500 lt!205663 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453066 (=> (not res!269994) (not e!265202))))

(declare-fun b!453067 () Bool)

(assert (=> b!453067 (= e!265198 call!30044)))

(declare-fun b!453059 () Bool)

(declare-fun res!269993 () Bool)

(assert (=> b!453059 (=> (not res!269993) (not e!265197))))

(assert (=> b!453059 (= res!269993 (not (contains!2500 lt!205663 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74227 () Bool)

(assert (=> d!74227 e!265197))

(declare-fun res!269991 () Bool)

(assert (=> d!74227 (=> (not res!269991) (not e!265197))))

(assert (=> d!74227 (= res!269991 (not (contains!2500 lt!205663 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74227 (= lt!205663 e!265199)))

(declare-fun c!56111 () Bool)

(assert (=> d!74227 (= c!56111 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13818 lt!205547)))))

(assert (=> d!74227 (validMask!0 mask!1025)))

(assert (=> d!74227 (= (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205663)))

(declare-fun b!453068 () Bool)

(assert (=> b!453068 (= e!265199 e!265198)))

(declare-fun c!56113 () Bool)

(assert (=> b!453068 (= c!56113 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453069 () Bool)

(assert (=> b!453069 (= e!265200 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453069 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(assert (= (and d!74227 c!56111) b!453061))

(assert (= (and d!74227 (not c!56111)) b!453068))

(assert (= (and b!453068 c!56113) b!453060))

(assert (= (and b!453068 (not c!56113)) b!453067))

(assert (= (or b!453060 b!453067) bm!30041))

(assert (= (and d!74227 res!269991) b!453059))

(assert (= (and b!453059 res!269993) b!453064))

(assert (= (and b!453064 res!269992) b!453069))

(assert (= (and b!453064 c!56114) b!453066))

(assert (= (and b!453064 (not c!56114)) b!453065))

(assert (= (and b!453066 res!269994) b!453058))

(assert (= (and b!453065 c!56112) b!453063))

(assert (= (and b!453065 (not c!56112)) b!453062))

(declare-fun b_lambda!9625 () Bool)

(assert (=> (not b_lambda!9625) (not b!453058)))

(assert (=> b!453058 t!13937))

(declare-fun b_and!18927 () Bool)

(assert (= b_and!18925 (and (=> t!13937 result!7111) b_and!18927)))

(declare-fun b_lambda!9627 () Bool)

(assert (=> (not b_lambda!9627) (not b!453060)))

(assert (=> b!453060 t!13937))

(declare-fun b_and!18929 () Bool)

(assert (= b_and!18927 (and (=> t!13937 result!7111) b_and!18929)))

(declare-fun m!436983 () Bool)

(assert (=> d!74227 m!436983))

(assert (=> d!74227 m!436695))

(declare-fun m!436985 () Bool)

(assert (=> b!453069 m!436985))

(assert (=> b!453069 m!436985))

(declare-fun m!436987 () Bool)

(assert (=> b!453069 m!436987))

(declare-fun m!436989 () Bool)

(assert (=> bm!30041 m!436989))

(assert (=> b!453058 m!436985))

(assert (=> b!453058 m!436755))

(declare-fun m!436991 () Bool)

(assert (=> b!453058 m!436991))

(assert (=> b!453058 m!436755))

(declare-fun m!436993 () Bool)

(assert (=> b!453058 m!436993))

(assert (=> b!453058 m!436985))

(declare-fun m!436995 () Bool)

(assert (=> b!453058 m!436995))

(assert (=> b!453058 m!436991))

(declare-fun m!436997 () Bool)

(assert (=> b!453059 m!436997))

(assert (=> b!453063 m!436989))

(declare-fun m!436999 () Bool)

(assert (=> b!453060 m!436999))

(assert (=> b!453060 m!436985))

(declare-fun m!437001 () Bool)

(assert (=> b!453060 m!437001))

(declare-fun m!437003 () Bool)

(assert (=> b!453060 m!437003))

(assert (=> b!453060 m!436755))

(assert (=> b!453060 m!436991))

(assert (=> b!453060 m!436755))

(assert (=> b!453060 m!436993))

(assert (=> b!453060 m!437001))

(declare-fun m!437005 () Bool)

(assert (=> b!453060 m!437005))

(assert (=> b!453060 m!436991))

(declare-fun m!437007 () Bool)

(assert (=> b!453062 m!437007))

(assert (=> b!453068 m!436985))

(assert (=> b!453068 m!436985))

(assert (=> b!453068 m!436987))

(assert (=> b!453066 m!436985))

(assert (=> b!453066 m!436985))

(declare-fun m!437009 () Bool)

(assert (=> b!453066 m!437009))

(assert (=> b!452869 d!74227))

(declare-fun d!74229 () Bool)

(declare-fun e!265203 () Bool)

(assert (=> d!74229 e!265203))

(declare-fun res!269995 () Bool)

(assert (=> d!74229 (=> (not res!269995) (not e!265203))))

(declare-fun lt!205669 () ListLongMap!6929)

(assert (=> d!74229 (= res!269995 (contains!2500 lt!205669 (_1!4011 lt!205555)))))

(declare-fun lt!205668 () List!8105)

(assert (=> d!74229 (= lt!205669 (ListLongMap!6930 lt!205668))))

(declare-fun lt!205671 () Unit!13189)

(declare-fun lt!205670 () Unit!13189)

(assert (=> d!74229 (= lt!205671 lt!205670)))

(assert (=> d!74229 (= (getValueByKey!369 lt!205668 (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555)))))

(assert (=> d!74229 (= lt!205670 (lemmaContainsTupThenGetReturnValue!193 lt!205668 (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(assert (=> d!74229 (= lt!205668 (insertStrictlySorted!195 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))) (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(assert (=> d!74229 (= (+!1545 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) lt!205555) lt!205669)))

(declare-fun b!453070 () Bool)

(declare-fun res!269996 () Bool)

(assert (=> b!453070 (=> (not res!269996) (not e!265203))))

(assert (=> b!453070 (= res!269996 (= (getValueByKey!369 (toList!3480 lt!205669) (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555))))))

(declare-fun b!453071 () Bool)

(assert (=> b!453071 (= e!265203 (contains!2501 (toList!3480 lt!205669) lt!205555))))

(assert (= (and d!74229 res!269995) b!453070))

(assert (= (and b!453070 res!269996) b!453071))

(declare-fun m!437011 () Bool)

(assert (=> d!74229 m!437011))

(declare-fun m!437013 () Bool)

(assert (=> d!74229 m!437013))

(declare-fun m!437015 () Bool)

(assert (=> d!74229 m!437015))

(declare-fun m!437017 () Bool)

(assert (=> d!74229 m!437017))

(declare-fun m!437019 () Bool)

(assert (=> b!453070 m!437019))

(declare-fun m!437021 () Bool)

(assert (=> b!453071 m!437021))

(assert (=> b!452869 d!74229))

(declare-fun d!74231 () Bool)

(declare-fun e!265204 () Bool)

(assert (=> d!74231 e!265204))

(declare-fun res!269997 () Bool)

(assert (=> d!74231 (=> (not res!269997) (not e!265204))))

(declare-fun lt!205673 () ListLongMap!6929)

(assert (=> d!74231 (= res!269997 (contains!2500 lt!205673 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun lt!205672 () List!8105)

(assert (=> d!74231 (= lt!205673 (ListLongMap!6930 lt!205672))))

(declare-fun lt!205675 () Unit!13189)

(declare-fun lt!205674 () Unit!13189)

(assert (=> d!74231 (= lt!205675 lt!205674)))

(assert (=> d!74231 (= (getValueByKey!369 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(assert (=> d!74231 (= lt!205674 (lemmaContainsTupThenGetReturnValue!193 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(assert (=> d!74231 (= lt!205672 (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(assert (=> d!74231 (= (+!1545 lt!205552 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) lt!205673)))

(declare-fun b!453072 () Bool)

(declare-fun res!269998 () Bool)

(assert (=> b!453072 (=> (not res!269998) (not e!265204))))

(assert (=> b!453072 (= res!269998 (= (getValueByKey!369 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(declare-fun b!453073 () Bool)

(assert (=> b!453073 (= e!265204 (contains!2501 (toList!3480 lt!205673) (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))

(assert (= (and d!74231 res!269997) b!453072))

(assert (= (and b!453072 res!269998) b!453073))

(declare-fun m!437023 () Bool)

(assert (=> d!74231 m!437023))

(declare-fun m!437025 () Bool)

(assert (=> d!74231 m!437025))

(declare-fun m!437027 () Bool)

(assert (=> d!74231 m!437027))

(declare-fun m!437029 () Bool)

(assert (=> d!74231 m!437029))

(declare-fun m!437031 () Bool)

(assert (=> b!453072 m!437031))

(declare-fun m!437033 () Bool)

(assert (=> b!453073 m!437033))

(assert (=> b!452869 d!74231))

(declare-fun d!74233 () Bool)

(declare-fun c!56115 () Bool)

(assert (=> d!74233 (= c!56115 ((_ is ValueCellFull!5727) (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863)))))

(declare-fun e!265205 () V!17293)

(assert (=> d!74233 (= (get!6652 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553) e!265205)))

(declare-fun b!453074 () Bool)

(assert (=> b!453074 (= e!265205 (get!6654 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553))))

(declare-fun b!453075 () Bool)

(assert (=> b!453075 (= e!265205 (get!6655 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553))))

(assert (= (and d!74233 c!56115) b!453074))

(assert (= (and d!74233 (not c!56115)) b!453075))

(assert (=> b!453074 m!436735))

(declare-fun m!437035 () Bool)

(assert (=> b!453074 m!437035))

(assert (=> b!453075 m!436735))

(declare-fun m!437037 () Bool)

(assert (=> b!453075 m!437037))

(assert (=> b!452869 d!74233))

(declare-fun d!74235 () Bool)

(assert (=> d!74235 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!452876 d!74235))

(declare-fun b!453076 () Bool)

(declare-fun e!265206 () Bool)

(declare-fun call!30045 () Bool)

(assert (=> b!453076 (= e!265206 call!30045)))

(declare-fun b!453077 () Bool)

(declare-fun e!265209 () Bool)

(assert (=> b!453077 (= e!265209 e!265206)))

(declare-fun c!56116 () Bool)

(assert (=> b!453077 (= c!56116 (validKeyInArray!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453078 () Bool)

(declare-fun e!265208 () Bool)

(assert (=> b!453078 (= e!265208 e!265209)))

(declare-fun res!269999 () Bool)

(assert (=> b!453078 (=> (not res!269999) (not e!265209))))

(declare-fun e!265207 () Bool)

(assert (=> b!453078 (= res!269999 (not e!265207))))

(declare-fun res!270000 () Bool)

(assert (=> b!453078 (=> (not res!270000) (not e!265207))))

(assert (=> b!453078 (= res!270000 (validKeyInArray!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453079 () Bool)

(assert (=> b!453079 (= e!265207 (contains!2499 Nil!8101 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453080 () Bool)

(assert (=> b!453080 (= e!265206 call!30045)))

(declare-fun bm!30042 () Bool)

(assert (=> bm!30042 (= call!30045 (arrayNoDuplicates!0 lt!205547 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56116 (Cons!8100 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) Nil!8101) Nil!8101)))))

(declare-fun d!74237 () Bool)

(declare-fun res!270001 () Bool)

(assert (=> d!74237 (=> res!270001 e!265208)))

(assert (=> d!74237 (= res!270001 (bvsge #b00000000000000000000000000000000 (size!13818 lt!205547)))))

(assert (=> d!74237 (= (arrayNoDuplicates!0 lt!205547 #b00000000000000000000000000000000 Nil!8101) e!265208)))

(assert (= (and d!74237 (not res!270001)) b!453078))

(assert (= (and b!453078 res!270000) b!453079))

(assert (= (and b!453078 res!269999) b!453077))

(assert (= (and b!453077 c!56116) b!453076))

(assert (= (and b!453077 (not c!56116)) b!453080))

(assert (= (or b!453076 b!453080) bm!30042))

(assert (=> b!453077 m!436879))

(assert (=> b!453077 m!436879))

(assert (=> b!453077 m!436887))

(assert (=> b!453078 m!436879))

(assert (=> b!453078 m!436879))

(assert (=> b!453078 m!436887))

(assert (=> b!453079 m!436879))

(assert (=> b!453079 m!436879))

(declare-fun m!437039 () Bool)

(assert (=> b!453079 m!437039))

(assert (=> bm!30042 m!436879))

(declare-fun m!437041 () Bool)

(assert (=> bm!30042 m!437041))

(assert (=> b!452867 d!74237))

(declare-fun b!453081 () Bool)

(assert (=> b!453081 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13818 lt!205547)))))

(assert (=> b!453081 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13819 lt!205554)))))

(declare-fun e!265216 () Bool)

(declare-fun lt!205678 () ListLongMap!6929)

(assert (=> b!453081 (= e!265216 (= (apply!313 lt!205678 (select (arr!13466 lt!205547) from!863)) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453083 () Bool)

(declare-fun lt!205681 () Unit!13189)

(declare-fun lt!205676 () Unit!13189)

(assert (=> b!453083 (= lt!205681 lt!205676)))

(declare-fun lt!205682 () ListLongMap!6929)

(declare-fun lt!205679 () V!17293)

(declare-fun lt!205677 () (_ BitVec 64))

(declare-fun lt!205680 () (_ BitVec 64))

(assert (=> b!453083 (not (contains!2500 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679)) lt!205680))))

(assert (=> b!453083 (= lt!205676 (addStillNotContains!148 lt!205682 lt!205677 lt!205679 lt!205680))))

(assert (=> b!453083 (= lt!205680 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453083 (= lt!205679 (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453083 (= lt!205677 (select (arr!13466 lt!205547) from!863))))

(declare-fun call!30046 () ListLongMap!6929)

(assert (=> b!453083 (= lt!205682 call!30046)))

(declare-fun e!265212 () ListLongMap!6929)

(assert (=> b!453083 (= e!265212 (+!1545 call!30046 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453084 () Bool)

(declare-fun e!265213 () ListLongMap!6929)

(assert (=> b!453084 (= e!265213 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30043 () Bool)

(assert (=> bm!30043 (= call!30046 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453085 () Bool)

(declare-fun e!265210 () Bool)

(assert (=> b!453085 (= e!265210 (isEmpty!564 lt!205678))))

(declare-fun b!453086 () Bool)

(assert (=> b!453086 (= e!265210 (= lt!205678 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453087 () Bool)

(declare-fun e!265211 () Bool)

(declare-fun e!265215 () Bool)

(assert (=> b!453087 (= e!265211 e!265215)))

(declare-fun c!56120 () Bool)

(declare-fun e!265214 () Bool)

(assert (=> b!453087 (= c!56120 e!265214)))

(declare-fun res!270003 () Bool)

(assert (=> b!453087 (=> (not res!270003) (not e!265214))))

(assert (=> b!453087 (= res!270003 (bvslt from!863 (size!13818 lt!205547)))))

(declare-fun b!453088 () Bool)

(assert (=> b!453088 (= e!265215 e!265210)))

(declare-fun c!56118 () Bool)

(assert (=> b!453088 (= c!56118 (bvslt from!863 (size!13818 lt!205547)))))

(declare-fun b!453089 () Bool)

(assert (=> b!453089 (= e!265215 e!265216)))

(assert (=> b!453089 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13818 lt!205547)))))

(declare-fun res!270005 () Bool)

(assert (=> b!453089 (= res!270005 (contains!2500 lt!205678 (select (arr!13466 lt!205547) from!863)))))

(assert (=> b!453089 (=> (not res!270005) (not e!265216))))

(declare-fun b!453090 () Bool)

(assert (=> b!453090 (= e!265212 call!30046)))

(declare-fun b!453082 () Bool)

(declare-fun res!270004 () Bool)

(assert (=> b!453082 (=> (not res!270004) (not e!265211))))

(assert (=> b!453082 (= res!270004 (not (contains!2500 lt!205678 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74239 () Bool)

(assert (=> d!74239 e!265211))

(declare-fun res!270002 () Bool)

(assert (=> d!74239 (=> (not res!270002) (not e!265211))))

(assert (=> d!74239 (= res!270002 (not (contains!2500 lt!205678 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74239 (= lt!205678 e!265213)))

(declare-fun c!56117 () Bool)

(assert (=> d!74239 (= c!56117 (bvsge from!863 (size!13818 lt!205547)))))

(assert (=> d!74239 (validMask!0 mask!1025)))

(assert (=> d!74239 (= (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!205678)))

(declare-fun b!453091 () Bool)

(assert (=> b!453091 (= e!265213 e!265212)))

(declare-fun c!56119 () Bool)

(assert (=> b!453091 (= c!56119 (validKeyInArray!0 (select (arr!13466 lt!205547) from!863)))))

(declare-fun b!453092 () Bool)

(assert (=> b!453092 (= e!265214 (validKeyInArray!0 (select (arr!13466 lt!205547) from!863)))))

(assert (=> b!453092 (bvsge from!863 #b00000000000000000000000000000000)))

(assert (= (and d!74239 c!56117) b!453084))

(assert (= (and d!74239 (not c!56117)) b!453091))

(assert (= (and b!453091 c!56119) b!453083))

(assert (= (and b!453091 (not c!56119)) b!453090))

(assert (= (or b!453083 b!453090) bm!30043))

(assert (= (and d!74239 res!270002) b!453082))

(assert (= (and b!453082 res!270004) b!453087))

(assert (= (and b!453087 res!270003) b!453092))

(assert (= (and b!453087 c!56120) b!453089))

(assert (= (and b!453087 (not c!56120)) b!453088))

(assert (= (and b!453089 res!270005) b!453081))

(assert (= (and b!453088 c!56118) b!453086))

(assert (= (and b!453088 (not c!56118)) b!453085))

(declare-fun b_lambda!9629 () Bool)

(assert (=> (not b_lambda!9629) (not b!453081)))

(assert (=> b!453081 t!13937))

(declare-fun b_and!18931 () Bool)

(assert (= b_and!18929 (and (=> t!13937 result!7111) b_and!18931)))

(declare-fun b_lambda!9631 () Bool)

(assert (=> (not b_lambda!9631) (not b!453083)))

(assert (=> b!453083 t!13937))

(declare-fun b_and!18933 () Bool)

(assert (= b_and!18931 (and (=> t!13937 result!7111) b_and!18933)))

(declare-fun m!437043 () Bool)

(assert (=> d!74239 m!437043))

(assert (=> d!74239 m!436695))

(assert (=> b!453092 m!436751))

(assert (=> b!453092 m!436751))

(declare-fun m!437045 () Bool)

(assert (=> b!453092 m!437045))

(declare-fun m!437047 () Bool)

(assert (=> bm!30043 m!437047))

(assert (=> b!453081 m!436751))

(assert (=> b!453081 m!436755))

(declare-fun m!437049 () Bool)

(assert (=> b!453081 m!437049))

(assert (=> b!453081 m!436755))

(declare-fun m!437051 () Bool)

(assert (=> b!453081 m!437051))

(assert (=> b!453081 m!436751))

(declare-fun m!437053 () Bool)

(assert (=> b!453081 m!437053))

(assert (=> b!453081 m!437049))

(declare-fun m!437055 () Bool)

(assert (=> b!453082 m!437055))

(assert (=> b!453086 m!437047))

(declare-fun m!437057 () Bool)

(assert (=> b!453083 m!437057))

(assert (=> b!453083 m!436751))

(declare-fun m!437059 () Bool)

(assert (=> b!453083 m!437059))

(declare-fun m!437061 () Bool)

(assert (=> b!453083 m!437061))

(assert (=> b!453083 m!436755))

(assert (=> b!453083 m!437049))

(assert (=> b!453083 m!436755))

(assert (=> b!453083 m!437051))

(assert (=> b!453083 m!437059))

(declare-fun m!437063 () Bool)

(assert (=> b!453083 m!437063))

(assert (=> b!453083 m!437049))

(declare-fun m!437065 () Bool)

(assert (=> b!453085 m!437065))

(assert (=> b!453091 m!436751))

(assert (=> b!453091 m!436751))

(assert (=> b!453091 m!437045))

(assert (=> b!453089 m!436751))

(assert (=> b!453089 m!436751))

(declare-fun m!437067 () Bool)

(assert (=> b!453089 m!437067))

(assert (=> b!452874 d!74239))

(declare-fun b!453093 () Bool)

(assert (=> b!453093 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13818 _keys!709)))))

(assert (=> b!453093 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13819 _values!549)))))

(declare-fun e!265223 () Bool)

(declare-fun lt!205685 () ListLongMap!6929)

(assert (=> b!453093 (= e!265223 (= (apply!313 lt!205685 (select (arr!13466 _keys!709) from!863)) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453095 () Bool)

(declare-fun lt!205688 () Unit!13189)

(declare-fun lt!205683 () Unit!13189)

(assert (=> b!453095 (= lt!205688 lt!205683)))

(declare-fun lt!205686 () V!17293)

(declare-fun lt!205687 () (_ BitVec 64))

(declare-fun lt!205684 () (_ BitVec 64))

(declare-fun lt!205689 () ListLongMap!6929)

(assert (=> b!453095 (not (contains!2500 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686)) lt!205687))))

(assert (=> b!453095 (= lt!205683 (addStillNotContains!148 lt!205689 lt!205684 lt!205686 lt!205687))))

(assert (=> b!453095 (= lt!205687 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453095 (= lt!205686 (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453095 (= lt!205684 (select (arr!13466 _keys!709) from!863))))

(declare-fun call!30047 () ListLongMap!6929)

(assert (=> b!453095 (= lt!205689 call!30047)))

(declare-fun e!265219 () ListLongMap!6929)

(assert (=> b!453095 (= e!265219 (+!1545 call!30047 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453096 () Bool)

(declare-fun e!265220 () ListLongMap!6929)

(assert (=> b!453096 (= e!265220 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30044 () Bool)

(assert (=> bm!30044 (= call!30047 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453097 () Bool)

(declare-fun e!265217 () Bool)

(assert (=> b!453097 (= e!265217 (isEmpty!564 lt!205685))))

(declare-fun b!453098 () Bool)

(assert (=> b!453098 (= e!265217 (= lt!205685 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453099 () Bool)

(declare-fun e!265218 () Bool)

(declare-fun e!265222 () Bool)

(assert (=> b!453099 (= e!265218 e!265222)))

(declare-fun c!56124 () Bool)

(declare-fun e!265221 () Bool)

(assert (=> b!453099 (= c!56124 e!265221)))

(declare-fun res!270007 () Bool)

(assert (=> b!453099 (=> (not res!270007) (not e!265221))))

(assert (=> b!453099 (= res!270007 (bvslt from!863 (size!13818 _keys!709)))))

(declare-fun b!453100 () Bool)

(assert (=> b!453100 (= e!265222 e!265217)))

(declare-fun c!56122 () Bool)

(assert (=> b!453100 (= c!56122 (bvslt from!863 (size!13818 _keys!709)))))

(declare-fun b!453101 () Bool)

(assert (=> b!453101 (= e!265222 e!265223)))

(assert (=> b!453101 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13818 _keys!709)))))

(declare-fun res!270009 () Bool)

(assert (=> b!453101 (= res!270009 (contains!2500 lt!205685 (select (arr!13466 _keys!709) from!863)))))

(assert (=> b!453101 (=> (not res!270009) (not e!265223))))

(declare-fun b!453102 () Bool)

(assert (=> b!453102 (= e!265219 call!30047)))

(declare-fun b!453094 () Bool)

(declare-fun res!270008 () Bool)

(assert (=> b!453094 (=> (not res!270008) (not e!265218))))

(assert (=> b!453094 (= res!270008 (not (contains!2500 lt!205685 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74241 () Bool)

(assert (=> d!74241 e!265218))

(declare-fun res!270006 () Bool)

(assert (=> d!74241 (=> (not res!270006) (not e!265218))))

(assert (=> d!74241 (= res!270006 (not (contains!2500 lt!205685 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74241 (= lt!205685 e!265220)))

(declare-fun c!56121 () Bool)

(assert (=> d!74241 (= c!56121 (bvsge from!863 (size!13818 _keys!709)))))

(assert (=> d!74241 (validMask!0 mask!1025)))

(assert (=> d!74241 (= (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!205685)))

(declare-fun b!453103 () Bool)

(assert (=> b!453103 (= e!265220 e!265219)))

(declare-fun c!56123 () Bool)

(assert (=> b!453103 (= c!56123 (validKeyInArray!0 (select (arr!13466 _keys!709) from!863)))))

(declare-fun b!453104 () Bool)

(assert (=> b!453104 (= e!265221 (validKeyInArray!0 (select (arr!13466 _keys!709) from!863)))))

(assert (=> b!453104 (bvsge from!863 #b00000000000000000000000000000000)))

(assert (= (and d!74241 c!56121) b!453096))

(assert (= (and d!74241 (not c!56121)) b!453103))

(assert (= (and b!453103 c!56123) b!453095))

(assert (= (and b!453103 (not c!56123)) b!453102))

(assert (= (or b!453095 b!453102) bm!30044))

(assert (= (and d!74241 res!270006) b!453094))

(assert (= (and b!453094 res!270008) b!453099))

(assert (= (and b!453099 res!270007) b!453104))

(assert (= (and b!453099 c!56124) b!453101))

(assert (= (and b!453099 (not c!56124)) b!453100))

(assert (= (and b!453101 res!270009) b!453093))

(assert (= (and b!453100 c!56122) b!453098))

(assert (= (and b!453100 (not c!56122)) b!453097))

(declare-fun b_lambda!9633 () Bool)

(assert (=> (not b_lambda!9633) (not b!453093)))

(assert (=> b!453093 t!13937))

(declare-fun b_and!18935 () Bool)

(assert (= b_and!18933 (and (=> t!13937 result!7111) b_and!18935)))

(declare-fun b_lambda!9635 () Bool)

(assert (=> (not b_lambda!9635) (not b!453095)))

(assert (=> b!453095 t!13937))

(declare-fun b_and!18937 () Bool)

(assert (= b_and!18935 (and (=> t!13937 result!7111) b_and!18937)))

(declare-fun m!437069 () Bool)

(assert (=> d!74241 m!437069))

(assert (=> d!74241 m!436695))

(assert (=> b!453104 m!436713))

(assert (=> b!453104 m!436713))

(assert (=> b!453104 m!436715))

(declare-fun m!437071 () Bool)

(assert (=> bm!30044 m!437071))

(assert (=> b!453093 m!436713))

(assert (=> b!453093 m!436755))

(assert (=> b!453093 m!436741))

(assert (=> b!453093 m!436755))

(declare-fun m!437073 () Bool)

(assert (=> b!453093 m!437073))

(assert (=> b!453093 m!436713))

(declare-fun m!437075 () Bool)

(assert (=> b!453093 m!437075))

(assert (=> b!453093 m!436741))

(declare-fun m!437077 () Bool)

(assert (=> b!453094 m!437077))

(assert (=> b!453098 m!437071))

(declare-fun m!437079 () Bool)

(assert (=> b!453095 m!437079))

(assert (=> b!453095 m!436713))

(declare-fun m!437081 () Bool)

(assert (=> b!453095 m!437081))

(declare-fun m!437083 () Bool)

(assert (=> b!453095 m!437083))

(assert (=> b!453095 m!436755))

(assert (=> b!453095 m!436741))

(assert (=> b!453095 m!436755))

(assert (=> b!453095 m!437073))

(assert (=> b!453095 m!437081))

(declare-fun m!437085 () Bool)

(assert (=> b!453095 m!437085))

(assert (=> b!453095 m!436741))

(declare-fun m!437087 () Bool)

(assert (=> b!453097 m!437087))

(assert (=> b!453103 m!436713))

(assert (=> b!453103 m!436713))

(assert (=> b!453103 m!436715))

(assert (=> b!453101 m!436713))

(assert (=> b!453101 m!436713))

(declare-fun m!437089 () Bool)

(assert (=> b!453101 m!437089))

(assert (=> b!452874 d!74241))

(declare-fun mapIsEmpty!19854 () Bool)

(declare-fun mapRes!19854 () Bool)

(assert (=> mapIsEmpty!19854 mapRes!19854))

(declare-fun b!453111 () Bool)

(declare-fun e!265228 () Bool)

(assert (=> b!453111 (= e!265228 tp_is_empty!12141)))

(declare-fun condMapEmpty!19854 () Bool)

(declare-fun mapDefault!19854 () ValueCell!5727)

(assert (=> mapNonEmpty!19848 (= condMapEmpty!19854 (= mapRest!19848 ((as const (Array (_ BitVec 32) ValueCell!5727)) mapDefault!19854)))))

(declare-fun e!265229 () Bool)

(assert (=> mapNonEmpty!19848 (= tp!38231 (and e!265229 mapRes!19854))))

(declare-fun mapNonEmpty!19854 () Bool)

(declare-fun tp!38241 () Bool)

(assert (=> mapNonEmpty!19854 (= mapRes!19854 (and tp!38241 e!265228))))

(declare-fun mapKey!19854 () (_ BitVec 32))

(declare-fun mapValue!19854 () ValueCell!5727)

(declare-fun mapRest!19854 () (Array (_ BitVec 32) ValueCell!5727))

(assert (=> mapNonEmpty!19854 (= mapRest!19848 (store mapRest!19854 mapKey!19854 mapValue!19854))))

(declare-fun b!453112 () Bool)

(assert (=> b!453112 (= e!265229 tp_is_empty!12141)))

(assert (= (and mapNonEmpty!19848 condMapEmpty!19854) mapIsEmpty!19854))

(assert (= (and mapNonEmpty!19848 (not condMapEmpty!19854)) mapNonEmpty!19854))

(assert (= (and mapNonEmpty!19854 ((_ is ValueCellFull!5727) mapValue!19854)) b!453111))

(assert (= (and mapNonEmpty!19848 ((_ is ValueCellFull!5727) mapDefault!19854)) b!453112))

(declare-fun m!437091 () Bool)

(assert (=> mapNonEmpty!19854 m!437091))

(declare-fun b_lambda!9637 () Bool)

(assert (= b_lambda!9619 (or (and start!40822 b_free!10803) b_lambda!9637)))

(declare-fun b_lambda!9639 () Bool)

(assert (= b_lambda!9635 (or (and start!40822 b_free!10803) b_lambda!9639)))

(declare-fun b_lambda!9641 () Bool)

(assert (= b_lambda!9627 (or (and start!40822 b_free!10803) b_lambda!9641)))

(declare-fun b_lambda!9643 () Bool)

(assert (= b_lambda!9629 (or (and start!40822 b_free!10803) b_lambda!9643)))

(declare-fun b_lambda!9645 () Bool)

(assert (= b_lambda!9617 (or (and start!40822 b_free!10803) b_lambda!9645)))

(declare-fun b_lambda!9647 () Bool)

(assert (= b_lambda!9633 (or (and start!40822 b_free!10803) b_lambda!9647)))

(declare-fun b_lambda!9649 () Bool)

(assert (= b_lambda!9625 (or (and start!40822 b_free!10803) b_lambda!9649)))

(declare-fun b_lambda!9651 () Bool)

(assert (= b_lambda!9623 (or (and start!40822 b_free!10803) b_lambda!9651)))

(declare-fun b_lambda!9653 () Bool)

(assert (= b_lambda!9621 (or (and start!40822 b_free!10803) b_lambda!9653)))

(declare-fun b_lambda!9655 () Bool)

(assert (= b_lambda!9631 (or (and start!40822 b_free!10803) b_lambda!9655)))

(check-sat (not b!453103) (not b!453045) (not b!452974) (not d!74213) (not b!453049) (not b!453094) (not b!453068) (not b!453070) (not b!453057) (not b_next!10803) (not b!453044) (not b!453072) (not b!453097) (not b!453077) (not b!453002) (not b!452951) (not b_lambda!9649) (not b_lambda!9643) (not bm!30038) (not bm!30040) (not bm!30035) (not b!452973) (not b!453026) (not b!453029) (not b!453032) (not b!453091) (not b!453000) b_and!18937 (not b!453056) (not b!453046) (not b_lambda!9655) (not b!453041) (not b!453022) (not b!453059) tp_is_empty!12141 (not d!74219) (not b_lambda!9647) (not b!453011) (not b!453089) (not b!453092) (not b!453040) (not b!453098) (not b!453078) (not d!74241) (not b!453058) (not b!453001) (not d!74231) (not b!453034) (not d!74201) (not bm!30039) (not b!452972) (not b!453004) (not b!453010) (not d!74229) (not bm!30032) (not b!453005) (not b!453085) (not b!453073) (not b!453047) (not d!74217) (not b_lambda!9653) (not bm!30044) (not b!453048) (not b_lambda!9615) (not d!74207) (not bm!30029) (not b!453093) (not bm!30043) (not b!453081) (not d!74221) (not b!453060) (not b!453025) (not b_lambda!9645) (not d!74223) (not b!453028) (not b!453104) (not bm!30028) (not b!453024) (not b!453071) (not b!453008) (not b!453023) (not b_lambda!9639) (not d!74197) (not b!453035) (not b!453095) (not b!453082) (not d!74239) (not b!453051) (not b!453086) (not b!453083) (not b!453063) (not b!453062) (not b!453101) (not b_lambda!9651) (not bm!30042) (not b!453075) (not bm!30041) (not b!453079) (not mapNonEmpty!19854) (not b!453066) (not b!453074) (not b!453069) (not b!452959) (not b!453050) (not d!74227) (not b_lambda!9641) (not b_lambda!9637))
(check-sat b_and!18937 (not b_next!10803))
(get-model)

(declare-fun b!453121 () Bool)

(declare-fun e!265234 () Option!375)

(assert (=> b!453121 (= e!265234 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205654)))))))

(declare-fun d!74243 () Bool)

(declare-fun c!56129 () Bool)

(assert (=> d!74243 (= c!56129 (and ((_ is Cons!8101) (toList!3480 lt!205654)) (= (_1!4011 (h!8957 (toList!3480 lt!205654))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74243 (= (getValueByKey!369 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412))) e!265234)))

(declare-fun b!453122 () Bool)

(declare-fun e!265235 () Option!375)

(assert (=> b!453122 (= e!265234 e!265235)))

(declare-fun c!56130 () Bool)

(assert (=> b!453122 (= c!56130 (and ((_ is Cons!8101) (toList!3480 lt!205654)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205654))) (_1!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun b!453123 () Bool)

(assert (=> b!453123 (= e!265235 (getValueByKey!369 (t!13939 (toList!3480 lt!205654)) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453124 () Bool)

(assert (=> b!453124 (= e!265235 None!373)))

(assert (= (and d!74243 c!56129) b!453121))

(assert (= (and d!74243 (not c!56129)) b!453122))

(assert (= (and b!453122 c!56130) b!453123))

(assert (= (and b!453122 (not c!56130)) b!453124))

(declare-fun m!437093 () Bool)

(assert (=> b!453123 m!437093))

(assert (=> b!453048 d!74243))

(declare-fun d!74245 () Bool)

(declare-fun e!265241 () Bool)

(assert (=> d!74245 e!265241))

(declare-fun res!270012 () Bool)

(assert (=> d!74245 (=> res!270012 e!265241)))

(declare-fun lt!205700 () Bool)

(assert (=> d!74245 (= res!270012 (not lt!205700))))

(declare-fun lt!205698 () Bool)

(assert (=> d!74245 (= lt!205700 lt!205698)))

(declare-fun lt!205701 () Unit!13189)

(declare-fun e!265240 () Unit!13189)

(assert (=> d!74245 (= lt!205701 e!265240)))

(declare-fun c!56133 () Bool)

(assert (=> d!74245 (= c!56133 lt!205698)))

(declare-fun containsKey!346 (List!8105 (_ BitVec 64)) Bool)

(assert (=> d!74245 (= lt!205698 (containsKey!346 (toList!3480 lt!205685) (select (arr!13466 _keys!709) from!863)))))

(assert (=> d!74245 (= (contains!2500 lt!205685 (select (arr!13466 _keys!709) from!863)) lt!205700)))

(declare-fun b!453131 () Bool)

(declare-fun lt!205699 () Unit!13189)

(assert (=> b!453131 (= e!265240 lt!205699)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!295 (List!8105 (_ BitVec 64)) Unit!13189)

(assert (=> b!453131 (= lt!205699 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205685) (select (arr!13466 _keys!709) from!863)))))

(declare-fun isDefined!296 (Option!375) Bool)

(assert (=> b!453131 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) (select (arr!13466 _keys!709) from!863)))))

(declare-fun b!453132 () Bool)

(declare-fun Unit!13193 () Unit!13189)

(assert (=> b!453132 (= e!265240 Unit!13193)))

(declare-fun b!453133 () Bool)

(assert (=> b!453133 (= e!265241 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) (select (arr!13466 _keys!709) from!863))))))

(assert (= (and d!74245 c!56133) b!453131))

(assert (= (and d!74245 (not c!56133)) b!453132))

(assert (= (and d!74245 (not res!270012)) b!453133))

(assert (=> d!74245 m!436713))

(declare-fun m!437095 () Bool)

(assert (=> d!74245 m!437095))

(assert (=> b!453131 m!436713))

(declare-fun m!437097 () Bool)

(assert (=> b!453131 m!437097))

(assert (=> b!453131 m!436713))

(declare-fun m!437099 () Bool)

(assert (=> b!453131 m!437099))

(assert (=> b!453131 m!437099))

(declare-fun m!437101 () Bool)

(assert (=> b!453131 m!437101))

(assert (=> b!453133 m!436713))

(assert (=> b!453133 m!437099))

(assert (=> b!453133 m!437099))

(assert (=> b!453133 m!437101))

(assert (=> b!453101 d!74245))

(declare-fun d!74247 () Bool)

(declare-fun get!6656 (Option!375) V!17293)

(assert (=> d!74247 (= (apply!313 lt!205610 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6656 (getValueByKey!369 (toList!3480 lt!205610) (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))))

(declare-fun bs!14399 () Bool)

(assert (= bs!14399 d!74247))

(assert (=> bs!14399 m!436851))

(declare-fun m!437103 () Bool)

(assert (=> bs!14399 m!437103))

(assert (=> bs!14399 m!437103))

(declare-fun m!437105 () Bool)

(assert (=> bs!14399 m!437105))

(assert (=> b!453000 d!74247))

(declare-fun d!74249 () Bool)

(declare-fun c!56134 () Bool)

(assert (=> d!74249 (= c!56134 ((_ is ValueCellFull!5727) (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun e!265242 () V!17293)

(assert (=> d!74249 (= (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!265242)))

(declare-fun b!453134 () Bool)

(assert (=> b!453134 (= e!265242 (get!6654 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453135 () Bool)

(assert (=> b!453135 (= e!265242 (get!6655 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74249 c!56134) b!453134))

(assert (= (and d!74249 (not c!56134)) b!453135))

(assert (=> b!453134 m!436857))

(assert (=> b!453134 m!436755))

(declare-fun m!437107 () Bool)

(assert (=> b!453134 m!437107))

(assert (=> b!453135 m!436857))

(assert (=> b!453135 m!436755))

(declare-fun m!437109 () Bool)

(assert (=> b!453135 m!437109))

(assert (=> b!453000 d!74249))

(declare-fun d!74251 () Bool)

(declare-fun e!265244 () Bool)

(assert (=> d!74251 e!265244))

(declare-fun res!270013 () Bool)

(assert (=> d!74251 (=> res!270013 e!265244)))

(declare-fun lt!205704 () Bool)

(assert (=> d!74251 (= res!270013 (not lt!205704))))

(declare-fun lt!205702 () Bool)

(assert (=> d!74251 (= lt!205704 lt!205702)))

(declare-fun lt!205705 () Unit!13189)

(declare-fun e!265243 () Unit!13189)

(assert (=> d!74251 (= lt!205705 e!265243)))

(declare-fun c!56135 () Bool)

(assert (=> d!74251 (= c!56135 lt!205702)))

(assert (=> d!74251 (= lt!205702 (containsKey!346 (toList!3480 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664))) lt!205665))))

(assert (=> d!74251 (= (contains!2500 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664)) lt!205665) lt!205704)))

(declare-fun b!453136 () Bool)

(declare-fun lt!205703 () Unit!13189)

(assert (=> b!453136 (= e!265243 lt!205703)))

(assert (=> b!453136 (= lt!205703 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664))) lt!205665))))

(assert (=> b!453136 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664))) lt!205665))))

(declare-fun b!453137 () Bool)

(declare-fun Unit!13194 () Unit!13189)

(assert (=> b!453137 (= e!265243 Unit!13194)))

(declare-fun b!453138 () Bool)

(assert (=> b!453138 (= e!265244 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664))) lt!205665)))))

(assert (= (and d!74251 c!56135) b!453136))

(assert (= (and d!74251 (not c!56135)) b!453137))

(assert (= (and d!74251 (not res!270013)) b!453138))

(declare-fun m!437111 () Bool)

(assert (=> d!74251 m!437111))

(declare-fun m!437113 () Bool)

(assert (=> b!453136 m!437113))

(declare-fun m!437115 () Bool)

(assert (=> b!453136 m!437115))

(assert (=> b!453136 m!437115))

(declare-fun m!437117 () Bool)

(assert (=> b!453136 m!437117))

(assert (=> b!453138 m!437115))

(assert (=> b!453138 m!437115))

(assert (=> b!453138 m!437117))

(assert (=> b!453060 d!74251))

(declare-fun d!74253 () Bool)

(assert (=> d!74253 (not (contains!2500 (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664)) lt!205665))))

(declare-fun lt!205708 () Unit!13189)

(declare-fun choose!1337 (ListLongMap!6929 (_ BitVec 64) V!17293 (_ BitVec 64)) Unit!13189)

(assert (=> d!74253 (= lt!205708 (choose!1337 lt!205667 lt!205662 lt!205664 lt!205665))))

(declare-fun e!265247 () Bool)

(assert (=> d!74253 e!265247))

(declare-fun res!270016 () Bool)

(assert (=> d!74253 (=> (not res!270016) (not e!265247))))

(assert (=> d!74253 (= res!270016 (not (contains!2500 lt!205667 lt!205665)))))

(assert (=> d!74253 (= (addStillNotContains!148 lt!205667 lt!205662 lt!205664 lt!205665) lt!205708)))

(declare-fun b!453142 () Bool)

(assert (=> b!453142 (= e!265247 (not (= lt!205662 lt!205665)))))

(assert (= (and d!74253 res!270016) b!453142))

(assert (=> d!74253 m!437001))

(assert (=> d!74253 m!437001))

(assert (=> d!74253 m!437005))

(declare-fun m!437119 () Bool)

(assert (=> d!74253 m!437119))

(declare-fun m!437121 () Bool)

(assert (=> d!74253 m!437121))

(assert (=> b!453060 d!74253))

(declare-fun d!74255 () Bool)

(declare-fun e!265248 () Bool)

(assert (=> d!74255 e!265248))

(declare-fun res!270017 () Bool)

(assert (=> d!74255 (=> (not res!270017) (not e!265248))))

(declare-fun lt!205710 () ListLongMap!6929)

(assert (=> d!74255 (= res!270017 (contains!2500 lt!205710 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!205709 () List!8105)

(assert (=> d!74255 (= lt!205710 (ListLongMap!6930 lt!205709))))

(declare-fun lt!205712 () Unit!13189)

(declare-fun lt!205711 () Unit!13189)

(assert (=> d!74255 (= lt!205712 lt!205711)))

(assert (=> d!74255 (= (getValueByKey!369 lt!205709 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74255 (= lt!205711 (lemmaContainsTupThenGetReturnValue!193 lt!205709 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74255 (= lt!205709 (insertStrictlySorted!195 (toList!3480 call!30044) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74255 (= (+!1545 call!30044 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!205710)))

(declare-fun b!453143 () Bool)

(declare-fun res!270018 () Bool)

(assert (=> b!453143 (=> (not res!270018) (not e!265248))))

(assert (=> b!453143 (= res!270018 (= (getValueByKey!369 (toList!3480 lt!205710) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!453144 () Bool)

(assert (=> b!453144 (= e!265248 (contains!2501 (toList!3480 lt!205710) (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74255 res!270017) b!453143))

(assert (= (and b!453143 res!270018) b!453144))

(declare-fun m!437123 () Bool)

(assert (=> d!74255 m!437123))

(declare-fun m!437125 () Bool)

(assert (=> d!74255 m!437125))

(declare-fun m!437127 () Bool)

(assert (=> d!74255 m!437127))

(declare-fun m!437129 () Bool)

(assert (=> d!74255 m!437129))

(declare-fun m!437131 () Bool)

(assert (=> b!453143 m!437131))

(declare-fun m!437133 () Bool)

(assert (=> b!453144 m!437133))

(assert (=> b!453060 d!74255))

(declare-fun d!74257 () Bool)

(declare-fun c!56136 () Bool)

(assert (=> d!74257 (= c!56136 ((_ is ValueCellFull!5727) (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun e!265249 () V!17293)

(assert (=> d!74257 (= (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!265249)))

(declare-fun b!453145 () Bool)

(assert (=> b!453145 (= e!265249 (get!6654 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453146 () Bool)

(assert (=> b!453146 (= e!265249 (get!6655 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74257 c!56136) b!453145))

(assert (= (and d!74257 (not c!56136)) b!453146))

(assert (=> b!453145 m!436991))

(assert (=> b!453145 m!436755))

(declare-fun m!437135 () Bool)

(assert (=> b!453145 m!437135))

(assert (=> b!453146 m!436991))

(assert (=> b!453146 m!436755))

(declare-fun m!437137 () Bool)

(assert (=> b!453146 m!437137))

(assert (=> b!453060 d!74257))

(declare-fun d!74259 () Bool)

(declare-fun e!265250 () Bool)

(assert (=> d!74259 e!265250))

(declare-fun res!270019 () Bool)

(assert (=> d!74259 (=> (not res!270019) (not e!265250))))

(declare-fun lt!205714 () ListLongMap!6929)

(assert (=> d!74259 (= res!270019 (contains!2500 lt!205714 (_1!4011 (tuple2!8003 lt!205662 lt!205664))))))

(declare-fun lt!205713 () List!8105)

(assert (=> d!74259 (= lt!205714 (ListLongMap!6930 lt!205713))))

(declare-fun lt!205716 () Unit!13189)

(declare-fun lt!205715 () Unit!13189)

(assert (=> d!74259 (= lt!205716 lt!205715)))

(assert (=> d!74259 (= (getValueByKey!369 lt!205713 (_1!4011 (tuple2!8003 lt!205662 lt!205664))) (Some!374 (_2!4011 (tuple2!8003 lt!205662 lt!205664))))))

(assert (=> d!74259 (= lt!205715 (lemmaContainsTupThenGetReturnValue!193 lt!205713 (_1!4011 (tuple2!8003 lt!205662 lt!205664)) (_2!4011 (tuple2!8003 lt!205662 lt!205664))))))

(assert (=> d!74259 (= lt!205713 (insertStrictlySorted!195 (toList!3480 lt!205667) (_1!4011 (tuple2!8003 lt!205662 lt!205664)) (_2!4011 (tuple2!8003 lt!205662 lt!205664))))))

(assert (=> d!74259 (= (+!1545 lt!205667 (tuple2!8003 lt!205662 lt!205664)) lt!205714)))

(declare-fun b!453147 () Bool)

(declare-fun res!270020 () Bool)

(assert (=> b!453147 (=> (not res!270020) (not e!265250))))

(assert (=> b!453147 (= res!270020 (= (getValueByKey!369 (toList!3480 lt!205714) (_1!4011 (tuple2!8003 lt!205662 lt!205664))) (Some!374 (_2!4011 (tuple2!8003 lt!205662 lt!205664)))))))

(declare-fun b!453148 () Bool)

(assert (=> b!453148 (= e!265250 (contains!2501 (toList!3480 lt!205714) (tuple2!8003 lt!205662 lt!205664)))))

(assert (= (and d!74259 res!270019) b!453147))

(assert (= (and b!453147 res!270020) b!453148))

(declare-fun m!437139 () Bool)

(assert (=> d!74259 m!437139))

(declare-fun m!437141 () Bool)

(assert (=> d!74259 m!437141))

(declare-fun m!437143 () Bool)

(assert (=> d!74259 m!437143))

(declare-fun m!437145 () Bool)

(assert (=> d!74259 m!437145))

(declare-fun m!437147 () Bool)

(assert (=> b!453147 m!437147))

(declare-fun m!437149 () Bool)

(assert (=> b!453148 m!437149))

(assert (=> b!453060 d!74259))

(declare-fun d!74261 () Bool)

(declare-fun e!265252 () Bool)

(assert (=> d!74261 e!265252))

(declare-fun res!270021 () Bool)

(assert (=> d!74261 (=> res!270021 e!265252)))

(declare-fun lt!205719 () Bool)

(assert (=> d!74261 (= res!270021 (not lt!205719))))

(declare-fun lt!205717 () Bool)

(assert (=> d!74261 (= lt!205719 lt!205717)))

(declare-fun lt!205720 () Unit!13189)

(declare-fun e!265251 () Unit!13189)

(assert (=> d!74261 (= lt!205720 e!265251)))

(declare-fun c!56137 () Bool)

(assert (=> d!74261 (= c!56137 lt!205717)))

(assert (=> d!74261 (= lt!205717 (containsKey!346 (toList!3480 lt!205626) (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> d!74261 (= (contains!2500 lt!205626 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))) lt!205719)))

(declare-fun b!453149 () Bool)

(declare-fun lt!205718 () Unit!13189)

(assert (=> b!453149 (= e!265251 lt!205718)))

(assert (=> b!453149 (= lt!205718 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205626) (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453149 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453150 () Bool)

(declare-fun Unit!13195 () Unit!13189)

(assert (=> b!453150 (= e!265251 Unit!13195)))

(declare-fun b!453151 () Bool)

(assert (=> b!453151 (= e!265252 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)))))))

(assert (= (and d!74261 c!56137) b!453149))

(assert (= (and d!74261 (not c!56137)) b!453150))

(assert (= (and d!74261 (not res!270021)) b!453151))

(assert (=> d!74261 m!436891))

(declare-fun m!437151 () Bool)

(assert (=> d!74261 m!437151))

(assert (=> b!453149 m!436891))

(declare-fun m!437153 () Bool)

(assert (=> b!453149 m!437153))

(assert (=> b!453149 m!436891))

(declare-fun m!437155 () Bool)

(assert (=> b!453149 m!437155))

(assert (=> b!453149 m!437155))

(declare-fun m!437157 () Bool)

(assert (=> b!453149 m!437157))

(assert (=> b!453151 m!436891))

(assert (=> b!453151 m!437155))

(assert (=> b!453151 m!437155))

(assert (=> b!453151 m!437157))

(assert (=> b!453032 d!74261))

(declare-fun d!74263 () Bool)

(declare-fun e!265254 () Bool)

(assert (=> d!74263 e!265254))

(declare-fun res!270022 () Bool)

(assert (=> d!74263 (=> res!270022 e!265254)))

(declare-fun lt!205723 () Bool)

(assert (=> d!74263 (= res!270022 (not lt!205723))))

(declare-fun lt!205721 () Bool)

(assert (=> d!74263 (= lt!205723 lt!205721)))

(declare-fun lt!205724 () Unit!13189)

(declare-fun e!265253 () Unit!13189)

(assert (=> d!74263 (= lt!205724 e!265253)))

(declare-fun c!56138 () Bool)

(assert (=> d!74263 (= c!56138 lt!205721)))

(assert (=> d!74263 (= lt!205721 (containsKey!346 (toList!3480 lt!205610) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74263 (= (contains!2500 lt!205610 #b0000000000000000000000000000000000000000000000000000000000000000) lt!205723)))

(declare-fun b!453152 () Bool)

(declare-fun lt!205722 () Unit!13189)

(assert (=> b!453152 (= e!265253 lt!205722)))

(assert (=> b!453152 (= lt!205722 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205610) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453152 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453153 () Bool)

(declare-fun Unit!13196 () Unit!13189)

(assert (=> b!453153 (= e!265253 Unit!13196)))

(declare-fun b!453154 () Bool)

(assert (=> b!453154 (= e!265254 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74263 c!56138) b!453152))

(assert (= (and d!74263 (not c!56138)) b!453153))

(assert (= (and d!74263 (not res!270022)) b!453154))

(declare-fun m!437159 () Bool)

(assert (=> d!74263 m!437159))

(declare-fun m!437161 () Bool)

(assert (=> b!453152 m!437161))

(declare-fun m!437163 () Bool)

(assert (=> b!453152 m!437163))

(assert (=> b!453152 m!437163))

(declare-fun m!437165 () Bool)

(assert (=> b!453152 m!437165))

(assert (=> b!453154 m!437163))

(assert (=> b!453154 m!437163))

(assert (=> b!453154 m!437165))

(assert (=> d!74201 d!74263))

(assert (=> d!74201 d!74235))

(declare-fun d!74265 () Bool)

(declare-fun lt!205727 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!203 (List!8105) (InoxSet tuple2!8002))

(assert (=> d!74265 (= lt!205727 (select (content!203 (toList!3480 lt!205640)) (tuple2!8003 k0!794 v!412)))))

(declare-fun e!265259 () Bool)

(assert (=> d!74265 (= lt!205727 e!265259)))

(declare-fun res!270027 () Bool)

(assert (=> d!74265 (=> (not res!270027) (not e!265259))))

(assert (=> d!74265 (= res!270027 ((_ is Cons!8101) (toList!3480 lt!205640)))))

(assert (=> d!74265 (= (contains!2501 (toList!3480 lt!205640) (tuple2!8003 k0!794 v!412)) lt!205727)))

(declare-fun b!453159 () Bool)

(declare-fun e!265260 () Bool)

(assert (=> b!453159 (= e!265259 e!265260)))

(declare-fun res!270028 () Bool)

(assert (=> b!453159 (=> res!270028 e!265260)))

(assert (=> b!453159 (= res!270028 (= (h!8957 (toList!3480 lt!205640)) (tuple2!8003 k0!794 v!412)))))

(declare-fun b!453160 () Bool)

(assert (=> b!453160 (= e!265260 (contains!2501 (t!13939 (toList!3480 lt!205640)) (tuple2!8003 k0!794 v!412)))))

(assert (= (and d!74265 res!270027) b!453159))

(assert (= (and b!453159 (not res!270028)) b!453160))

(declare-fun m!437167 () Bool)

(assert (=> d!74265 m!437167))

(declare-fun m!437169 () Bool)

(assert (=> d!74265 m!437169))

(declare-fun m!437171 () Bool)

(assert (=> b!453160 m!437171))

(assert (=> b!453041 d!74265))

(declare-fun d!74267 () Bool)

(declare-fun isEmpty!565 (List!8105) Bool)

(assert (=> d!74267 (= (isEmpty!564 lt!205685) (isEmpty!565 (toList!3480 lt!205685)))))

(declare-fun bs!14400 () Bool)

(assert (= bs!14400 d!74267))

(declare-fun m!437173 () Bool)

(assert (=> bs!14400 m!437173))

(assert (=> b!453097 d!74267))

(declare-fun b!453161 () Bool)

(declare-fun e!265261 () Bool)

(declare-fun call!30048 () Bool)

(assert (=> b!453161 (= e!265261 call!30048)))

(declare-fun b!453162 () Bool)

(declare-fun e!265264 () Bool)

(assert (=> b!453162 (= e!265264 e!265261)))

(declare-fun c!56139 () Bool)

(assert (=> b!453162 (= c!56139 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453163 () Bool)

(declare-fun e!265263 () Bool)

(assert (=> b!453163 (= e!265263 e!265264)))

(declare-fun res!270029 () Bool)

(assert (=> b!453163 (=> (not res!270029) (not e!265264))))

(declare-fun e!265262 () Bool)

(assert (=> b!453163 (= res!270029 (not e!265262))))

(declare-fun res!270030 () Bool)

(assert (=> b!453163 (=> (not res!270030) (not e!265262))))

(assert (=> b!453163 (= res!270030 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453164 () Bool)

(assert (=> b!453164 (= e!265262 (contains!2499 (ite c!56116 (Cons!8100 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) Nil!8101) Nil!8101) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453165 () Bool)

(assert (=> b!453165 (= e!265261 call!30048)))

(declare-fun bm!30045 () Bool)

(assert (=> bm!30045 (= call!30048 (arrayNoDuplicates!0 lt!205547 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!56139 (Cons!8100 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!56116 (Cons!8100 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) Nil!8101) Nil!8101)) (ite c!56116 (Cons!8100 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) Nil!8101) Nil!8101))))))

(declare-fun d!74269 () Bool)

(declare-fun res!270031 () Bool)

(assert (=> d!74269 (=> res!270031 e!265263)))

(assert (=> d!74269 (= res!270031 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> d!74269 (= (arrayNoDuplicates!0 lt!205547 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56116 (Cons!8100 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) Nil!8101) Nil!8101)) e!265263)))

(assert (= (and d!74269 (not res!270031)) b!453163))

(assert (= (and b!453163 res!270030) b!453164))

(assert (= (and b!453163 res!270029) b!453162))

(assert (= (and b!453162 c!56139) b!453161))

(assert (= (and b!453162 (not c!56139)) b!453165))

(assert (= (or b!453161 b!453165) bm!30045))

(declare-fun m!437175 () Bool)

(assert (=> b!453162 m!437175))

(assert (=> b!453162 m!437175))

(declare-fun m!437177 () Bool)

(assert (=> b!453162 m!437177))

(assert (=> b!453163 m!437175))

(assert (=> b!453163 m!437175))

(assert (=> b!453163 m!437177))

(assert (=> b!453164 m!437175))

(assert (=> b!453164 m!437175))

(declare-fun m!437179 () Bool)

(assert (=> b!453164 m!437179))

(assert (=> bm!30045 m!437175))

(declare-fun m!437181 () Bool)

(assert (=> bm!30045 m!437181))

(assert (=> bm!30042 d!74269))

(declare-fun d!74271 () Bool)

(assert (=> d!74271 (= (isEmpty!564 lt!205626) (isEmpty!565 (toList!3480 lt!205626)))))

(declare-fun bs!14401 () Bool)

(assert (= bs!14401 d!74271))

(declare-fun m!437183 () Bool)

(assert (=> bs!14401 m!437183))

(assert (=> b!453028 d!74271))

(declare-fun d!74273 () Bool)

(assert (=> d!74273 (= (apply!313 lt!205663 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))) (get!6656 (getValueByKey!369 (toList!3480 lt!205663) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)))))))

(declare-fun bs!14402 () Bool)

(assert (= bs!14402 d!74273))

(assert (=> bs!14402 m!436985))

(declare-fun m!437185 () Bool)

(assert (=> bs!14402 m!437185))

(assert (=> bs!14402 m!437185))

(declare-fun m!437187 () Bool)

(assert (=> bs!14402 m!437187))

(assert (=> b!453058 d!74273))

(assert (=> b!453058 d!74257))

(declare-fun b!453166 () Bool)

(declare-fun e!265265 () Option!375)

(assert (=> b!453166 (= e!265265 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205650)))))))

(declare-fun d!74275 () Bool)

(declare-fun c!56140 () Bool)

(assert (=> d!74275 (= c!56140 (and ((_ is Cons!8101) (toList!3480 lt!205650)) (= (_1!4011 (h!8957 (toList!3480 lt!205650))) (_1!4011 lt!205555))))))

(assert (=> d!74275 (= (getValueByKey!369 (toList!3480 lt!205650) (_1!4011 lt!205555)) e!265265)))

(declare-fun b!453167 () Bool)

(declare-fun e!265266 () Option!375)

(assert (=> b!453167 (= e!265265 e!265266)))

(declare-fun c!56141 () Bool)

(assert (=> b!453167 (= c!56141 (and ((_ is Cons!8101) (toList!3480 lt!205650)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205650))) (_1!4011 lt!205555)))))))

(declare-fun b!453168 () Bool)

(assert (=> b!453168 (= e!265266 (getValueByKey!369 (t!13939 (toList!3480 lt!205650)) (_1!4011 lt!205555)))))

(declare-fun b!453169 () Bool)

(assert (=> b!453169 (= e!265266 None!373)))

(assert (= (and d!74275 c!56140) b!453166))

(assert (= (and d!74275 (not c!56140)) b!453167))

(assert (= (and b!453167 c!56141) b!453168))

(assert (= (and b!453167 (not c!56141)) b!453169))

(declare-fun m!437189 () Bool)

(assert (=> b!453168 m!437189))

(assert (=> b!453046 d!74275))

(declare-fun d!74277 () Bool)

(assert (=> d!74277 (= (validKeyInArray!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)) (and (not (= (select (arr!13466 _keys!709) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 _keys!709) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453045 d!74277))

(declare-fun b!453170 () Bool)

(assert (=> b!453170 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(assert (=> b!453170 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13819 (ite c!56078 lt!205554 _values!549))))))

(declare-fun lt!205730 () ListLongMap!6929)

(declare-fun e!265273 () Bool)

(assert (=> b!453170 (= e!265273 (= (apply!313 lt!205730 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453172 () Bool)

(declare-fun lt!205733 () Unit!13189)

(declare-fun lt!205728 () Unit!13189)

(assert (=> b!453172 (= lt!205733 lt!205728)))

(declare-fun lt!205734 () ListLongMap!6929)

(declare-fun lt!205732 () (_ BitVec 64))

(declare-fun lt!205729 () (_ BitVec 64))

(declare-fun lt!205731 () V!17293)

(assert (=> b!453172 (not (contains!2500 (+!1545 lt!205734 (tuple2!8003 lt!205729 lt!205731)) lt!205732))))

(assert (=> b!453172 (= lt!205728 (addStillNotContains!148 lt!205734 lt!205729 lt!205731 lt!205732))))

(assert (=> b!453172 (= lt!205732 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453172 (= lt!205731 (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453172 (= lt!205729 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)))))

(declare-fun call!30049 () ListLongMap!6929)

(assert (=> b!453172 (= lt!205734 call!30049)))

(declare-fun e!265269 () ListLongMap!6929)

(assert (=> b!453172 (= e!265269 (+!1545 call!30049 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453173 () Bool)

(declare-fun e!265270 () ListLongMap!6929)

(assert (=> b!453173 (= e!265270 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30046 () Bool)

(assert (=> bm!30046 (= call!30049 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453174 () Bool)

(declare-fun e!265267 () Bool)

(assert (=> b!453174 (= e!265267 (isEmpty!564 lt!205730))))

(declare-fun b!453175 () Bool)

(assert (=> b!453175 (= e!265267 (= lt!205730 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453176 () Bool)

(declare-fun e!265268 () Bool)

(declare-fun e!265272 () Bool)

(assert (=> b!453176 (= e!265268 e!265272)))

(declare-fun c!56145 () Bool)

(declare-fun e!265271 () Bool)

(assert (=> b!453176 (= c!56145 e!265271)))

(declare-fun res!270033 () Bool)

(assert (=> b!453176 (=> (not res!270033) (not e!265271))))

(assert (=> b!453176 (= res!270033 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun b!453177 () Bool)

(assert (=> b!453177 (= e!265272 e!265267)))

(declare-fun c!56143 () Bool)

(assert (=> b!453177 (= c!56143 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun b!453178 () Bool)

(assert (=> b!453178 (= e!265272 e!265273)))

(assert (=> b!453178 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(declare-fun res!270035 () Bool)

(assert (=> b!453178 (= res!270035 (contains!2500 lt!205730 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453178 (=> (not res!270035) (not e!265273))))

(declare-fun b!453179 () Bool)

(assert (=> b!453179 (= e!265269 call!30049)))

(declare-fun b!453171 () Bool)

(declare-fun res!270034 () Bool)

(assert (=> b!453171 (=> (not res!270034) (not e!265268))))

(assert (=> b!453171 (= res!270034 (not (contains!2500 lt!205730 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74279 () Bool)

(assert (=> d!74279 e!265268))

(declare-fun res!270032 () Bool)

(assert (=> d!74279 (=> (not res!270032) (not e!265268))))

(assert (=> d!74279 (= res!270032 (not (contains!2500 lt!205730 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74279 (= lt!205730 e!265270)))

(declare-fun c!56142 () Bool)

(assert (=> d!74279 (= c!56142 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 lt!205547 _keys!709))))))

(assert (=> d!74279 (validMask!0 mask!1025)))

(assert (=> d!74279 (= (getCurrentListMapNoExtraKeys!1656 (ite c!56078 lt!205547 _keys!709) (ite c!56078 lt!205554 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557) lt!205730)))

(declare-fun b!453180 () Bool)

(assert (=> b!453180 (= e!265270 e!265269)))

(declare-fun c!56144 () Bool)

(assert (=> b!453180 (= c!56144 (validKeyInArray!0 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(declare-fun b!453181 () Bool)

(assert (=> b!453181 (= e!265271 (validKeyInArray!0 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453181 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!74279 c!56142) b!453173))

(assert (= (and d!74279 (not c!56142)) b!453180))

(assert (= (and b!453180 c!56144) b!453172))

(assert (= (and b!453180 (not c!56144)) b!453179))

(assert (= (or b!453172 b!453179) bm!30046))

(assert (= (and d!74279 res!270032) b!453171))

(assert (= (and b!453171 res!270034) b!453176))

(assert (= (and b!453176 res!270033) b!453181))

(assert (= (and b!453176 c!56145) b!453178))

(assert (= (and b!453176 (not c!56145)) b!453177))

(assert (= (and b!453178 res!270035) b!453170))

(assert (= (and b!453177 c!56143) b!453175))

(assert (= (and b!453177 (not c!56143)) b!453174))

(declare-fun b_lambda!9657 () Bool)

(assert (=> (not b_lambda!9657) (not b!453170)))

(assert (=> b!453170 t!13937))

(declare-fun b_and!18939 () Bool)

(assert (= b_and!18937 (and (=> t!13937 result!7111) b_and!18939)))

(declare-fun b_lambda!9659 () Bool)

(assert (=> (not b_lambda!9659) (not b!453172)))

(assert (=> b!453172 t!13937))

(declare-fun b_and!18941 () Bool)

(assert (= b_and!18939 (and (=> t!13937 result!7111) b_and!18941)))

(declare-fun m!437191 () Bool)

(assert (=> d!74279 m!437191))

(assert (=> d!74279 m!436695))

(declare-fun m!437193 () Bool)

(assert (=> b!453181 m!437193))

(assert (=> b!453181 m!437193))

(declare-fun m!437195 () Bool)

(assert (=> b!453181 m!437195))

(declare-fun m!437197 () Bool)

(assert (=> bm!30046 m!437197))

(assert (=> b!453170 m!437193))

(assert (=> b!453170 m!436755))

(declare-fun m!437199 () Bool)

(assert (=> b!453170 m!437199))

(assert (=> b!453170 m!436755))

(declare-fun m!437201 () Bool)

(assert (=> b!453170 m!437201))

(assert (=> b!453170 m!437193))

(declare-fun m!437203 () Bool)

(assert (=> b!453170 m!437203))

(assert (=> b!453170 m!437199))

(declare-fun m!437205 () Bool)

(assert (=> b!453171 m!437205))

(assert (=> b!453175 m!437197))

(declare-fun m!437207 () Bool)

(assert (=> b!453172 m!437207))

(assert (=> b!453172 m!437193))

(declare-fun m!437209 () Bool)

(assert (=> b!453172 m!437209))

(declare-fun m!437211 () Bool)

(assert (=> b!453172 m!437211))

(assert (=> b!453172 m!436755))

(assert (=> b!453172 m!437199))

(assert (=> b!453172 m!436755))

(assert (=> b!453172 m!437201))

(assert (=> b!453172 m!437209))

(declare-fun m!437213 () Bool)

(assert (=> b!453172 m!437213))

(assert (=> b!453172 m!437199))

(declare-fun m!437215 () Bool)

(assert (=> b!453174 m!437215))

(assert (=> b!453180 m!437193))

(assert (=> b!453180 m!437193))

(assert (=> b!453180 m!437195))

(assert (=> b!453178 m!437193))

(assert (=> b!453178 m!437193))

(declare-fun m!437217 () Bool)

(assert (=> b!453178 m!437217))

(assert (=> bm!30035 d!74279))

(declare-fun b!453182 () Bool)

(assert (=> b!453182 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> b!453182 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13819 lt!205554)))))

(declare-fun lt!205737 () ListLongMap!6929)

(declare-fun e!265280 () Bool)

(assert (=> b!453182 (= e!265280 (= (apply!313 lt!205737 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453184 () Bool)

(declare-fun lt!205740 () Unit!13189)

(declare-fun lt!205735 () Unit!13189)

(assert (=> b!453184 (= lt!205740 lt!205735)))

(declare-fun lt!205739 () (_ BitVec 64))

(declare-fun lt!205736 () (_ BitVec 64))

(declare-fun lt!205738 () V!17293)

(declare-fun lt!205741 () ListLongMap!6929)

(assert (=> b!453184 (not (contains!2500 (+!1545 lt!205741 (tuple2!8003 lt!205736 lt!205738)) lt!205739))))

(assert (=> b!453184 (= lt!205735 (addStillNotContains!148 lt!205741 lt!205736 lt!205738 lt!205739))))

(assert (=> b!453184 (= lt!205739 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453184 (= lt!205738 (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453184 (= lt!205736 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)))))

(declare-fun call!30050 () ListLongMap!6929)

(assert (=> b!453184 (= lt!205741 call!30050)))

(declare-fun e!265276 () ListLongMap!6929)

(assert (=> b!453184 (= e!265276 (+!1545 call!30050 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (get!6652 (select (arr!13467 lt!205554) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453185 () Bool)

(declare-fun e!265277 () ListLongMap!6929)

(assert (=> b!453185 (= e!265277 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30047 () Bool)

(assert (=> bm!30047 (= call!30050 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453186 () Bool)

(declare-fun e!265274 () Bool)

(assert (=> b!453186 (= e!265274 (isEmpty!564 lt!205737))))

(declare-fun b!453187 () Bool)

(assert (=> b!453187 (= e!265274 (= lt!205737 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453188 () Bool)

(declare-fun e!265275 () Bool)

(declare-fun e!265279 () Bool)

(assert (=> b!453188 (= e!265275 e!265279)))

(declare-fun c!56149 () Bool)

(declare-fun e!265278 () Bool)

(assert (=> b!453188 (= c!56149 e!265278)))

(declare-fun res!270037 () Bool)

(assert (=> b!453188 (=> (not res!270037) (not e!265278))))

(assert (=> b!453188 (= res!270037 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun b!453189 () Bool)

(assert (=> b!453189 (= e!265279 e!265274)))

(declare-fun c!56147 () Bool)

(assert (=> b!453189 (= c!56147 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun b!453190 () Bool)

(assert (=> b!453190 (= e!265279 e!265280)))

(assert (=> b!453190 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun res!270039 () Bool)

(assert (=> b!453190 (= res!270039 (contains!2500 lt!205737 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453190 (=> (not res!270039) (not e!265280))))

(declare-fun b!453191 () Bool)

(assert (=> b!453191 (= e!265276 call!30050)))

(declare-fun b!453183 () Bool)

(declare-fun res!270038 () Bool)

(assert (=> b!453183 (=> (not res!270038) (not e!265275))))

(assert (=> b!453183 (= res!270038 (not (contains!2500 lt!205737 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74281 () Bool)

(assert (=> d!74281 e!265275))

(declare-fun res!270036 () Bool)

(assert (=> d!74281 (=> (not res!270036) (not e!265275))))

(assert (=> d!74281 (= res!270036 (not (contains!2500 lt!205737 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74281 (= lt!205737 e!265277)))

(declare-fun c!56146 () Bool)

(assert (=> d!74281 (= c!56146 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> d!74281 (validMask!0 mask!1025)))

(assert (=> d!74281 (= (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557) lt!205737)))

(declare-fun b!453192 () Bool)

(assert (=> b!453192 (= e!265277 e!265276)))

(declare-fun c!56148 () Bool)

(assert (=> b!453192 (= c!56148 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(declare-fun b!453193 () Bool)

(assert (=> b!453193 (= e!265278 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453193 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!74281 c!56146) b!453185))

(assert (= (and d!74281 (not c!56146)) b!453192))

(assert (= (and b!453192 c!56148) b!453184))

(assert (= (and b!453192 (not c!56148)) b!453191))

(assert (= (or b!453184 b!453191) bm!30047))

(assert (= (and d!74281 res!270036) b!453183))

(assert (= (and b!453183 res!270038) b!453188))

(assert (= (and b!453188 res!270037) b!453193))

(assert (= (and b!453188 c!56149) b!453190))

(assert (= (and b!453188 (not c!56149)) b!453189))

(assert (= (and b!453190 res!270039) b!453182))

(assert (= (and b!453189 c!56147) b!453187))

(assert (= (and b!453189 (not c!56147)) b!453186))

(declare-fun b_lambda!9661 () Bool)

(assert (=> (not b_lambda!9661) (not b!453182)))

(assert (=> b!453182 t!13937))

(declare-fun b_and!18943 () Bool)

(assert (= b_and!18941 (and (=> t!13937 result!7111) b_and!18943)))

(declare-fun b_lambda!9663 () Bool)

(assert (=> (not b_lambda!9663) (not b!453184)))

(assert (=> b!453184 t!13937))

(declare-fun b_and!18945 () Bool)

(assert (= b_and!18943 (and (=> t!13937 result!7111) b_and!18945)))

(declare-fun m!437219 () Bool)

(assert (=> d!74281 m!437219))

(assert (=> d!74281 m!436695))

(declare-fun m!437221 () Bool)

(assert (=> b!453193 m!437221))

(assert (=> b!453193 m!437221))

(declare-fun m!437223 () Bool)

(assert (=> b!453193 m!437223))

(declare-fun m!437225 () Bool)

(assert (=> bm!30047 m!437225))

(assert (=> b!453182 m!437221))

(assert (=> b!453182 m!436755))

(declare-fun m!437227 () Bool)

(assert (=> b!453182 m!437227))

(assert (=> b!453182 m!436755))

(declare-fun m!437229 () Bool)

(assert (=> b!453182 m!437229))

(assert (=> b!453182 m!437221))

(declare-fun m!437231 () Bool)

(assert (=> b!453182 m!437231))

(assert (=> b!453182 m!437227))

(declare-fun m!437233 () Bool)

(assert (=> b!453183 m!437233))

(assert (=> b!453187 m!437225))

(declare-fun m!437235 () Bool)

(assert (=> b!453184 m!437235))

(assert (=> b!453184 m!437221))

(declare-fun m!437237 () Bool)

(assert (=> b!453184 m!437237))

(declare-fun m!437239 () Bool)

(assert (=> b!453184 m!437239))

(assert (=> b!453184 m!436755))

(assert (=> b!453184 m!437227))

(assert (=> b!453184 m!436755))

(assert (=> b!453184 m!437229))

(assert (=> b!453184 m!437237))

(declare-fun m!437241 () Bool)

(assert (=> b!453184 m!437241))

(assert (=> b!453184 m!437227))

(declare-fun m!437243 () Bool)

(assert (=> b!453186 m!437243))

(assert (=> b!453192 m!437221))

(assert (=> b!453192 m!437221))

(assert (=> b!453192 m!437223))

(assert (=> b!453190 m!437221))

(assert (=> b!453190 m!437221))

(declare-fun m!437245 () Bool)

(assert (=> b!453190 m!437245))

(assert (=> b!453063 d!74281))

(declare-fun d!74283 () Bool)

(declare-fun e!265282 () Bool)

(assert (=> d!74283 e!265282))

(declare-fun res!270040 () Bool)

(assert (=> d!74283 (=> res!270040 e!265282)))

(declare-fun lt!205744 () Bool)

(assert (=> d!74283 (= res!270040 (not lt!205744))))

(declare-fun lt!205742 () Bool)

(assert (=> d!74283 (= lt!205744 lt!205742)))

(declare-fun lt!205745 () Unit!13189)

(declare-fun e!265281 () Unit!13189)

(assert (=> d!74283 (= lt!205745 e!265281)))

(declare-fun c!56150 () Bool)

(assert (=> d!74283 (= c!56150 lt!205742)))

(assert (=> d!74283 (= lt!205742 (containsKey!346 (toList!3480 lt!205678) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74283 (= (contains!2500 lt!205678 #b1000000000000000000000000000000000000000000000000000000000000000) lt!205744)))

(declare-fun b!453194 () Bool)

(declare-fun lt!205743 () Unit!13189)

(assert (=> b!453194 (= e!265281 lt!205743)))

(assert (=> b!453194 (= lt!205743 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205678) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453194 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453195 () Bool)

(declare-fun Unit!13197 () Unit!13189)

(assert (=> b!453195 (= e!265281 Unit!13197)))

(declare-fun b!453196 () Bool)

(assert (=> b!453196 (= e!265282 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74283 c!56150) b!453194))

(assert (= (and d!74283 (not c!56150)) b!453195))

(assert (= (and d!74283 (not res!270040)) b!453196))

(declare-fun m!437247 () Bool)

(assert (=> d!74283 m!437247))

(declare-fun m!437249 () Bool)

(assert (=> b!453194 m!437249))

(declare-fun m!437251 () Bool)

(assert (=> b!453194 m!437251))

(assert (=> b!453194 m!437251))

(declare-fun m!437253 () Bool)

(assert (=> b!453194 m!437253))

(assert (=> b!453196 m!437251))

(assert (=> b!453196 m!437251))

(assert (=> b!453196 m!437253))

(assert (=> b!453082 d!74283))

(declare-fun d!74285 () Bool)

(declare-fun e!265284 () Bool)

(assert (=> d!74285 e!265284))

(declare-fun res!270041 () Bool)

(assert (=> d!74285 (=> res!270041 e!265284)))

(declare-fun lt!205748 () Bool)

(assert (=> d!74285 (= res!270041 (not lt!205748))))

(declare-fun lt!205746 () Bool)

(assert (=> d!74285 (= lt!205748 lt!205746)))

(declare-fun lt!205749 () Unit!13189)

(declare-fun e!265283 () Unit!13189)

(assert (=> d!74285 (= lt!205749 e!265283)))

(declare-fun c!56151 () Bool)

(assert (=> d!74285 (= c!56151 lt!205746)))

(assert (=> d!74285 (= lt!205746 (containsKey!346 (toList!3480 lt!205669) (_1!4011 lt!205555)))))

(assert (=> d!74285 (= (contains!2500 lt!205669 (_1!4011 lt!205555)) lt!205748)))

(declare-fun b!453197 () Bool)

(declare-fun lt!205747 () Unit!13189)

(assert (=> b!453197 (= e!265283 lt!205747)))

(assert (=> b!453197 (= lt!205747 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205669) (_1!4011 lt!205555)))))

(assert (=> b!453197 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205669) (_1!4011 lt!205555)))))

(declare-fun b!453198 () Bool)

(declare-fun Unit!13198 () Unit!13189)

(assert (=> b!453198 (= e!265283 Unit!13198)))

(declare-fun b!453199 () Bool)

(assert (=> b!453199 (= e!265284 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205669) (_1!4011 lt!205555))))))

(assert (= (and d!74285 c!56151) b!453197))

(assert (= (and d!74285 (not c!56151)) b!453198))

(assert (= (and d!74285 (not res!270041)) b!453199))

(declare-fun m!437255 () Bool)

(assert (=> d!74285 m!437255))

(declare-fun m!437257 () Bool)

(assert (=> b!453197 m!437257))

(assert (=> b!453197 m!437019))

(assert (=> b!453197 m!437019))

(declare-fun m!437259 () Bool)

(assert (=> b!453197 m!437259))

(assert (=> b!453199 m!437019))

(assert (=> b!453199 m!437019))

(assert (=> b!453199 m!437259))

(assert (=> d!74229 d!74285))

(declare-fun b!453200 () Bool)

(declare-fun e!265285 () Option!375)

(assert (=> b!453200 (= e!265285 (Some!374 (_2!4011 (h!8957 lt!205668))))))

(declare-fun d!74287 () Bool)

(declare-fun c!56152 () Bool)

(assert (=> d!74287 (= c!56152 (and ((_ is Cons!8101) lt!205668) (= (_1!4011 (h!8957 lt!205668)) (_1!4011 lt!205555))))))

(assert (=> d!74287 (= (getValueByKey!369 lt!205668 (_1!4011 lt!205555)) e!265285)))

(declare-fun b!453201 () Bool)

(declare-fun e!265286 () Option!375)

(assert (=> b!453201 (= e!265285 e!265286)))

(declare-fun c!56153 () Bool)

(assert (=> b!453201 (= c!56153 (and ((_ is Cons!8101) lt!205668) (not (= (_1!4011 (h!8957 lt!205668)) (_1!4011 lt!205555)))))))

(declare-fun b!453202 () Bool)

(assert (=> b!453202 (= e!265286 (getValueByKey!369 (t!13939 lt!205668) (_1!4011 lt!205555)))))

(declare-fun b!453203 () Bool)

(assert (=> b!453203 (= e!265286 None!373)))

(assert (= (and d!74287 c!56152) b!453200))

(assert (= (and d!74287 (not c!56152)) b!453201))

(assert (= (and b!453201 c!56153) b!453202))

(assert (= (and b!453201 (not c!56153)) b!453203))

(declare-fun m!437261 () Bool)

(assert (=> b!453202 m!437261))

(assert (=> d!74229 d!74287))

(declare-fun d!74289 () Bool)

(assert (=> d!74289 (= (getValueByKey!369 lt!205668 (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555)))))

(declare-fun lt!205752 () Unit!13189)

(declare-fun choose!1338 (List!8105 (_ BitVec 64) V!17293) Unit!13189)

(assert (=> d!74289 (= lt!205752 (choose!1338 lt!205668 (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(declare-fun e!265289 () Bool)

(assert (=> d!74289 e!265289))

(declare-fun res!270046 () Bool)

(assert (=> d!74289 (=> (not res!270046) (not e!265289))))

(declare-fun isStrictlySorted!373 (List!8105) Bool)

(assert (=> d!74289 (= res!270046 (isStrictlySorted!373 lt!205668))))

(assert (=> d!74289 (= (lemmaContainsTupThenGetReturnValue!193 lt!205668 (_1!4011 lt!205555) (_2!4011 lt!205555)) lt!205752)))

(declare-fun b!453208 () Bool)

(declare-fun res!270047 () Bool)

(assert (=> b!453208 (=> (not res!270047) (not e!265289))))

(assert (=> b!453208 (= res!270047 (containsKey!346 lt!205668 (_1!4011 lt!205555)))))

(declare-fun b!453209 () Bool)

(assert (=> b!453209 (= e!265289 (contains!2501 lt!205668 (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555))))))

(assert (= (and d!74289 res!270046) b!453208))

(assert (= (and b!453208 res!270047) b!453209))

(assert (=> d!74289 m!437013))

(declare-fun m!437263 () Bool)

(assert (=> d!74289 m!437263))

(declare-fun m!437265 () Bool)

(assert (=> d!74289 m!437265))

(declare-fun m!437267 () Bool)

(assert (=> b!453208 m!437267))

(declare-fun m!437269 () Bool)

(assert (=> b!453209 m!437269))

(assert (=> d!74229 d!74289))

(declare-fun d!74291 () Bool)

(declare-fun e!265300 () Bool)

(assert (=> d!74291 e!265300))

(declare-fun res!270053 () Bool)

(assert (=> d!74291 (=> (not res!270053) (not e!265300))))

(declare-fun lt!205755 () List!8105)

(assert (=> d!74291 (= res!270053 (isStrictlySorted!373 lt!205755))))

(declare-fun e!265303 () List!8105)

(assert (=> d!74291 (= lt!205755 e!265303)))

(declare-fun c!56163 () Bool)

(assert (=> d!74291 (= c!56163 (and ((_ is Cons!8101) (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (bvslt (_1!4011 (h!8957 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))))) (_1!4011 lt!205555))))))

(assert (=> d!74291 (isStrictlySorted!373 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> d!74291 (= (insertStrictlySorted!195 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))) (_1!4011 lt!205555) (_2!4011 lt!205555)) lt!205755)))

(declare-fun e!265302 () List!8105)

(declare-fun c!56164 () Bool)

(declare-fun c!56162 () Bool)

(declare-fun b!453230 () Bool)

(assert (=> b!453230 (= e!265302 (ite c!56164 (t!13939 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (ite c!56162 (Cons!8101 (h!8957 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (t!13939 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))))) Nil!8102)))))

(declare-fun b!453231 () Bool)

(declare-fun res!270052 () Bool)

(assert (=> b!453231 (=> (not res!270052) (not e!265300))))

(assert (=> b!453231 (= res!270052 (containsKey!346 lt!205755 (_1!4011 lt!205555)))))

(declare-fun bm!30054 () Bool)

(declare-fun call!30057 () List!8105)

(declare-fun call!30059 () List!8105)

(assert (=> bm!30054 (= call!30057 call!30059)))

(declare-fun b!453232 () Bool)

(declare-fun e!265304 () List!8105)

(declare-fun call!30058 () List!8105)

(assert (=> b!453232 (= e!265304 call!30058)))

(declare-fun b!453233 () Bool)

(declare-fun e!265301 () List!8105)

(assert (=> b!453233 (= e!265303 e!265301)))

(assert (=> b!453233 (= c!56164 (and ((_ is Cons!8101) (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (= (_1!4011 (h!8957 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))))) (_1!4011 lt!205555))))))

(declare-fun b!453234 () Bool)

(assert (=> b!453234 (= c!56162 (and ((_ is Cons!8101) (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (bvsgt (_1!4011 (h!8957 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))))) (_1!4011 lt!205555))))))

(assert (=> b!453234 (= e!265301 e!265304)))

(declare-fun b!453235 () Bool)

(assert (=> b!453235 (= e!265302 (insertStrictlySorted!195 (t!13939 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(declare-fun bm!30055 () Bool)

(assert (=> bm!30055 (= call!30058 call!30057)))

(declare-fun bm!30056 () Bool)

(declare-fun $colon$colon!108 (List!8105 tuple2!8002) List!8105)

(assert (=> bm!30056 (= call!30059 ($colon$colon!108 e!265302 (ite c!56163 (h!8957 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)))) (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555)))))))

(declare-fun c!56165 () Bool)

(assert (=> bm!30056 (= c!56165 c!56163)))

(declare-fun b!453236 () Bool)

(assert (=> b!453236 (= e!265303 call!30059)))

(declare-fun b!453237 () Bool)

(assert (=> b!453237 (= e!265304 call!30058)))

(declare-fun b!453238 () Bool)

(assert (=> b!453238 (= e!265301 call!30057)))

(declare-fun b!453239 () Bool)

(assert (=> b!453239 (= e!265300 (contains!2501 lt!205755 (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555))))))

(assert (= (and d!74291 c!56163) b!453236))

(assert (= (and d!74291 (not c!56163)) b!453233))

(assert (= (and b!453233 c!56164) b!453238))

(assert (= (and b!453233 (not c!56164)) b!453234))

(assert (= (and b!453234 c!56162) b!453232))

(assert (= (and b!453234 (not c!56162)) b!453237))

(assert (= (or b!453232 b!453237) bm!30055))

(assert (= (or b!453238 bm!30055) bm!30054))

(assert (= (or b!453236 bm!30054) bm!30056))

(assert (= (and bm!30056 c!56165) b!453235))

(assert (= (and bm!30056 (not c!56165)) b!453230))

(assert (= (and d!74291 res!270053) b!453231))

(assert (= (and b!453231 res!270052) b!453239))

(declare-fun m!437271 () Bool)

(assert (=> bm!30056 m!437271))

(declare-fun m!437273 () Bool)

(assert (=> b!453235 m!437273))

(declare-fun m!437275 () Bool)

(assert (=> d!74291 m!437275))

(declare-fun m!437277 () Bool)

(assert (=> d!74291 m!437277))

(declare-fun m!437279 () Bool)

(assert (=> b!453239 m!437279))

(declare-fun m!437281 () Bool)

(assert (=> b!453231 m!437281))

(assert (=> d!74229 d!74291))

(declare-fun d!74293 () Bool)

(declare-fun e!265306 () Bool)

(assert (=> d!74293 e!265306))

(declare-fun res!270054 () Bool)

(assert (=> d!74293 (=> res!270054 e!265306)))

(declare-fun lt!205758 () Bool)

(assert (=> d!74293 (= res!270054 (not lt!205758))))

(declare-fun lt!205756 () Bool)

(assert (=> d!74293 (= lt!205758 lt!205756)))

(declare-fun lt!205759 () Unit!13189)

(declare-fun e!265305 () Unit!13189)

(assert (=> d!74293 (= lt!205759 e!265305)))

(declare-fun c!56166 () Bool)

(assert (=> d!74293 (= c!56166 lt!205756)))

(assert (=> d!74293 (= lt!205756 (containsKey!346 (toList!3480 lt!205678) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74293 (= (contains!2500 lt!205678 #b0000000000000000000000000000000000000000000000000000000000000000) lt!205758)))

(declare-fun b!453240 () Bool)

(declare-fun lt!205757 () Unit!13189)

(assert (=> b!453240 (= e!265305 lt!205757)))

(assert (=> b!453240 (= lt!205757 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205678) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453240 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453241 () Bool)

(declare-fun Unit!13199 () Unit!13189)

(assert (=> b!453241 (= e!265305 Unit!13199)))

(declare-fun b!453242 () Bool)

(assert (=> b!453242 (= e!265306 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74293 c!56166) b!453240))

(assert (= (and d!74293 (not c!56166)) b!453241))

(assert (= (and d!74293 (not res!270054)) b!453242))

(declare-fun m!437283 () Bool)

(assert (=> d!74293 m!437283))

(declare-fun m!437285 () Bool)

(assert (=> b!453240 m!437285))

(declare-fun m!437287 () Bool)

(assert (=> b!453240 m!437287))

(assert (=> b!453240 m!437287))

(declare-fun m!437289 () Bool)

(assert (=> b!453240 m!437289))

(assert (=> b!453242 m!437287))

(assert (=> b!453242 m!437287))

(assert (=> b!453242 m!437289))

(assert (=> d!74239 d!74293))

(assert (=> d!74239 d!74235))

(assert (=> bm!30041 d!74281))

(declare-fun d!74295 () Bool)

(assert (=> d!74295 (= (validKeyInArray!0 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))) (and (not (= (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453034 d!74295))

(declare-fun b!453243 () Bool)

(declare-fun e!265307 () Option!375)

(assert (=> b!453243 (= e!265307 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205658)))))))

(declare-fun d!74297 () Bool)

(declare-fun c!56167 () Bool)

(assert (=> d!74297 (= c!56167 (and ((_ is Cons!8101) (toList!3480 lt!205658)) (= (_1!4011 (h!8957 (toList!3480 lt!205658))) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (=> d!74297 (= (getValueByKey!369 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556))) e!265307)))

(declare-fun b!453244 () Bool)

(declare-fun e!265308 () Option!375)

(assert (=> b!453244 (= e!265307 e!265308)))

(declare-fun c!56168 () Bool)

(assert (=> b!453244 (= c!56168 (and ((_ is Cons!8101) (toList!3480 lt!205658)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205658))) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))))

(declare-fun b!453245 () Bool)

(assert (=> b!453245 (= e!265308 (getValueByKey!369 (t!13939 (toList!3480 lt!205658)) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun b!453246 () Bool)

(assert (=> b!453246 (= e!265308 None!373)))

(assert (= (and d!74297 c!56167) b!453243))

(assert (= (and d!74297 (not c!56167)) b!453244))

(assert (= (and b!453244 c!56168) b!453245))

(assert (= (and b!453244 (not c!56168)) b!453246))

(declare-fun m!437291 () Bool)

(assert (=> b!453245 m!437291))

(assert (=> b!453050 d!74297))

(assert (=> b!453103 d!74195))

(declare-fun d!74299 () Bool)

(declare-fun e!265310 () Bool)

(assert (=> d!74299 e!265310))

(declare-fun res!270055 () Bool)

(assert (=> d!74299 (=> res!270055 e!265310)))

(declare-fun lt!205762 () Bool)

(assert (=> d!74299 (= res!270055 (not lt!205762))))

(declare-fun lt!205760 () Bool)

(assert (=> d!74299 (= lt!205762 lt!205760)))

(declare-fun lt!205763 () Unit!13189)

(declare-fun e!265309 () Unit!13189)

(assert (=> d!74299 (= lt!205763 e!265309)))

(declare-fun c!56169 () Bool)

(assert (=> d!74299 (= c!56169 lt!205760)))

(assert (=> d!74299 (= lt!205760 (containsKey!346 (toList!3480 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611))) lt!205612))))

(assert (=> d!74299 (= (contains!2500 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611)) lt!205612) lt!205762)))

(declare-fun b!453247 () Bool)

(declare-fun lt!205761 () Unit!13189)

(assert (=> b!453247 (= e!265309 lt!205761)))

(assert (=> b!453247 (= lt!205761 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611))) lt!205612))))

(assert (=> b!453247 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611))) lt!205612))))

(declare-fun b!453248 () Bool)

(declare-fun Unit!13200 () Unit!13189)

(assert (=> b!453248 (= e!265309 Unit!13200)))

(declare-fun b!453249 () Bool)

(assert (=> b!453249 (= e!265310 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611))) lt!205612)))))

(assert (= (and d!74299 c!56169) b!453247))

(assert (= (and d!74299 (not c!56169)) b!453248))

(assert (= (and d!74299 (not res!270055)) b!453249))

(declare-fun m!437293 () Bool)

(assert (=> d!74299 m!437293))

(declare-fun m!437295 () Bool)

(assert (=> b!453247 m!437295))

(declare-fun m!437297 () Bool)

(assert (=> b!453247 m!437297))

(assert (=> b!453247 m!437297))

(declare-fun m!437299 () Bool)

(assert (=> b!453247 m!437299))

(assert (=> b!453249 m!437297))

(assert (=> b!453249 m!437297))

(assert (=> b!453249 m!437299))

(assert (=> b!453002 d!74299))

(assert (=> b!453002 d!74249))

(declare-fun d!74301 () Bool)

(declare-fun e!265311 () Bool)

(assert (=> d!74301 e!265311))

(declare-fun res!270056 () Bool)

(assert (=> d!74301 (=> (not res!270056) (not e!265311))))

(declare-fun lt!205765 () ListLongMap!6929)

(assert (=> d!74301 (= res!270056 (contains!2500 lt!205765 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!205764 () List!8105)

(assert (=> d!74301 (= lt!205765 (ListLongMap!6930 lt!205764))))

(declare-fun lt!205767 () Unit!13189)

(declare-fun lt!205766 () Unit!13189)

(assert (=> d!74301 (= lt!205767 lt!205766)))

(assert (=> d!74301 (= (getValueByKey!369 lt!205764 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74301 (= lt!205766 (lemmaContainsTupThenGetReturnValue!193 lt!205764 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74301 (= lt!205764 (insertStrictlySorted!195 (toList!3480 call!30038) (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74301 (= (+!1545 call!30038 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!205765)))

(declare-fun b!453250 () Bool)

(declare-fun res!270057 () Bool)

(assert (=> b!453250 (=> (not res!270057) (not e!265311))))

(assert (=> b!453250 (= res!270057 (= (getValueByKey!369 (toList!3480 lt!205765) (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!453251 () Bool)

(assert (=> b!453251 (= e!265311 (contains!2501 (toList!3480 lt!205765) (tuple2!8003 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 lt!205554 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74301 res!270056) b!453250))

(assert (= (and b!453250 res!270057) b!453251))

(declare-fun m!437301 () Bool)

(assert (=> d!74301 m!437301))

(declare-fun m!437303 () Bool)

(assert (=> d!74301 m!437303))

(declare-fun m!437305 () Bool)

(assert (=> d!74301 m!437305))

(declare-fun m!437307 () Bool)

(assert (=> d!74301 m!437307))

(declare-fun m!437309 () Bool)

(assert (=> b!453250 m!437309))

(declare-fun m!437311 () Bool)

(assert (=> b!453251 m!437311))

(assert (=> b!453002 d!74301))

(declare-fun d!74303 () Bool)

(assert (=> d!74303 (not (contains!2500 (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611)) lt!205612))))

(declare-fun lt!205768 () Unit!13189)

(assert (=> d!74303 (= lt!205768 (choose!1337 lt!205614 lt!205609 lt!205611 lt!205612))))

(declare-fun e!265312 () Bool)

(assert (=> d!74303 e!265312))

(declare-fun res!270058 () Bool)

(assert (=> d!74303 (=> (not res!270058) (not e!265312))))

(assert (=> d!74303 (= res!270058 (not (contains!2500 lt!205614 lt!205612)))))

(assert (=> d!74303 (= (addStillNotContains!148 lt!205614 lt!205609 lt!205611 lt!205612) lt!205768)))

(declare-fun b!453252 () Bool)

(assert (=> b!453252 (= e!265312 (not (= lt!205609 lt!205612)))))

(assert (= (and d!74303 res!270058) b!453252))

(assert (=> d!74303 m!436867))

(assert (=> d!74303 m!436867))

(assert (=> d!74303 m!436871))

(declare-fun m!437313 () Bool)

(assert (=> d!74303 m!437313))

(declare-fun m!437315 () Bool)

(assert (=> d!74303 m!437315))

(assert (=> b!453002 d!74303))

(declare-fun d!74305 () Bool)

(declare-fun e!265313 () Bool)

(assert (=> d!74305 e!265313))

(declare-fun res!270059 () Bool)

(assert (=> d!74305 (=> (not res!270059) (not e!265313))))

(declare-fun lt!205770 () ListLongMap!6929)

(assert (=> d!74305 (= res!270059 (contains!2500 lt!205770 (_1!4011 (tuple2!8003 lt!205609 lt!205611))))))

(declare-fun lt!205769 () List!8105)

(assert (=> d!74305 (= lt!205770 (ListLongMap!6930 lt!205769))))

(declare-fun lt!205772 () Unit!13189)

(declare-fun lt!205771 () Unit!13189)

(assert (=> d!74305 (= lt!205772 lt!205771)))

(assert (=> d!74305 (= (getValueByKey!369 lt!205769 (_1!4011 (tuple2!8003 lt!205609 lt!205611))) (Some!374 (_2!4011 (tuple2!8003 lt!205609 lt!205611))))))

(assert (=> d!74305 (= lt!205771 (lemmaContainsTupThenGetReturnValue!193 lt!205769 (_1!4011 (tuple2!8003 lt!205609 lt!205611)) (_2!4011 (tuple2!8003 lt!205609 lt!205611))))))

(assert (=> d!74305 (= lt!205769 (insertStrictlySorted!195 (toList!3480 lt!205614) (_1!4011 (tuple2!8003 lt!205609 lt!205611)) (_2!4011 (tuple2!8003 lt!205609 lt!205611))))))

(assert (=> d!74305 (= (+!1545 lt!205614 (tuple2!8003 lt!205609 lt!205611)) lt!205770)))

(declare-fun b!453253 () Bool)

(declare-fun res!270060 () Bool)

(assert (=> b!453253 (=> (not res!270060) (not e!265313))))

(assert (=> b!453253 (= res!270060 (= (getValueByKey!369 (toList!3480 lt!205770) (_1!4011 (tuple2!8003 lt!205609 lt!205611))) (Some!374 (_2!4011 (tuple2!8003 lt!205609 lt!205611)))))))

(declare-fun b!453254 () Bool)

(assert (=> b!453254 (= e!265313 (contains!2501 (toList!3480 lt!205770) (tuple2!8003 lt!205609 lt!205611)))))

(assert (= (and d!74305 res!270059) b!453253))

(assert (= (and b!453253 res!270060) b!453254))

(declare-fun m!437317 () Bool)

(assert (=> d!74305 m!437317))

(declare-fun m!437319 () Bool)

(assert (=> d!74305 m!437319))

(declare-fun m!437321 () Bool)

(assert (=> d!74305 m!437321))

(declare-fun m!437323 () Bool)

(assert (=> d!74305 m!437323))

(declare-fun m!437325 () Bool)

(assert (=> b!453253 m!437325))

(declare-fun m!437327 () Bool)

(assert (=> b!453254 m!437327))

(assert (=> b!453002 d!74305))

(declare-fun d!74307 () Bool)

(assert (=> d!74307 (= (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))) (and (not (= (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453069 d!74307))

(declare-fun d!74309 () Bool)

(assert (=> d!74309 (= (isEmpty!564 lt!205678) (isEmpty!565 (toList!3480 lt!205678)))))

(declare-fun bs!14403 () Bool)

(assert (= bs!14403 d!74309))

(declare-fun m!437329 () Bool)

(assert (=> bs!14403 m!437329))

(assert (=> b!453085 d!74309))

(declare-fun d!74311 () Bool)

(assert (=> d!74311 (= (get!6655 (select (arr!13467 _values!549) from!863) lt!205553) lt!205553)))

(assert (=> b!453057 d!74311))

(assert (=> b!452973 d!74277))

(declare-fun d!74313 () Bool)

(declare-fun e!265315 () Bool)

(assert (=> d!74313 e!265315))

(declare-fun res!270061 () Bool)

(assert (=> d!74313 (=> res!270061 e!265315)))

(declare-fun lt!205775 () Bool)

(assert (=> d!74313 (= res!270061 (not lt!205775))))

(declare-fun lt!205773 () Bool)

(assert (=> d!74313 (= lt!205775 lt!205773)))

(declare-fun lt!205776 () Unit!13189)

(declare-fun e!265314 () Unit!13189)

(assert (=> d!74313 (= lt!205776 e!265314)))

(declare-fun c!56170 () Bool)

(assert (=> d!74313 (= c!56170 lt!205773)))

(assert (=> d!74313 (= lt!205773 (containsKey!346 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(assert (=> d!74313 (= (contains!2500 lt!205673 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) lt!205775)))

(declare-fun b!453255 () Bool)

(declare-fun lt!205774 () Unit!13189)

(assert (=> b!453255 (= e!265314 lt!205774)))

(assert (=> b!453255 (= lt!205774 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(assert (=> b!453255 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun b!453256 () Bool)

(declare-fun Unit!13201 () Unit!13189)

(assert (=> b!453256 (= e!265314 Unit!13201)))

(declare-fun b!453257 () Bool)

(assert (=> b!453257 (= e!265315 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (= (and d!74313 c!56170) b!453255))

(assert (= (and d!74313 (not c!56170)) b!453256))

(assert (= (and d!74313 (not res!270061)) b!453257))

(declare-fun m!437331 () Bool)

(assert (=> d!74313 m!437331))

(declare-fun m!437333 () Bool)

(assert (=> b!453255 m!437333))

(assert (=> b!453255 m!437031))

(assert (=> b!453255 m!437031))

(declare-fun m!437335 () Bool)

(assert (=> b!453255 m!437335))

(assert (=> b!453257 m!437031))

(assert (=> b!453257 m!437031))

(assert (=> b!453257 m!437335))

(assert (=> d!74231 d!74313))

(declare-fun b!453258 () Bool)

(declare-fun e!265316 () Option!375)

(assert (=> b!453258 (= e!265316 (Some!374 (_2!4011 (h!8957 lt!205672))))))

(declare-fun c!56171 () Bool)

(declare-fun d!74315 () Bool)

(assert (=> d!74315 (= c!56171 (and ((_ is Cons!8101) lt!205672) (= (_1!4011 (h!8957 lt!205672)) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (=> d!74315 (= (getValueByKey!369 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) e!265316)))

(declare-fun b!453259 () Bool)

(declare-fun e!265317 () Option!375)

(assert (=> b!453259 (= e!265316 e!265317)))

(declare-fun c!56172 () Bool)

(assert (=> b!453259 (= c!56172 (and ((_ is Cons!8101) lt!205672) (not (= (_1!4011 (h!8957 lt!205672)) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))))

(declare-fun b!453260 () Bool)

(assert (=> b!453260 (= e!265317 (getValueByKey!369 (t!13939 lt!205672) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun b!453261 () Bool)

(assert (=> b!453261 (= e!265317 None!373)))

(assert (= (and d!74315 c!56171) b!453258))

(assert (= (and d!74315 (not c!56171)) b!453259))

(assert (= (and b!453259 c!56172) b!453260))

(assert (= (and b!453259 (not c!56172)) b!453261))

(declare-fun m!437337 () Bool)

(assert (=> b!453260 m!437337))

(assert (=> d!74231 d!74315))

(declare-fun d!74317 () Bool)

(assert (=> d!74317 (= (getValueByKey!369 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun lt!205777 () Unit!13189)

(assert (=> d!74317 (= lt!205777 (choose!1338 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun e!265318 () Bool)

(assert (=> d!74317 e!265318))

(declare-fun res!270062 () Bool)

(assert (=> d!74317 (=> (not res!270062) (not e!265318))))

(assert (=> d!74317 (= res!270062 (isStrictlySorted!373 lt!205672))))

(assert (=> d!74317 (= (lemmaContainsTupThenGetReturnValue!193 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) lt!205777)))

(declare-fun b!453262 () Bool)

(declare-fun res!270063 () Bool)

(assert (=> b!453262 (=> (not res!270063) (not e!265318))))

(assert (=> b!453262 (= res!270063 (containsKey!346 lt!205672 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun b!453263 () Bool)

(assert (=> b!453263 (= e!265318 (contains!2501 lt!205672 (tuple2!8003 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (= (and d!74317 res!270062) b!453262))

(assert (= (and b!453262 res!270063) b!453263))

(assert (=> d!74317 m!437025))

(declare-fun m!437339 () Bool)

(assert (=> d!74317 m!437339))

(declare-fun m!437341 () Bool)

(assert (=> d!74317 m!437341))

(declare-fun m!437343 () Bool)

(assert (=> b!453262 m!437343))

(declare-fun m!437345 () Bool)

(assert (=> b!453263 m!437345))

(assert (=> d!74231 d!74317))

(declare-fun d!74319 () Bool)

(declare-fun e!265319 () Bool)

(assert (=> d!74319 e!265319))

(declare-fun res!270065 () Bool)

(assert (=> d!74319 (=> (not res!270065) (not e!265319))))

(declare-fun lt!205778 () List!8105)

(assert (=> d!74319 (= res!270065 (isStrictlySorted!373 lt!205778))))

(declare-fun e!265322 () List!8105)

(assert (=> d!74319 (= lt!205778 e!265322)))

(declare-fun c!56174 () Bool)

(assert (=> d!74319 (= c!56174 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvslt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (=> d!74319 (isStrictlySorted!373 (toList!3480 lt!205552))))

(assert (=> d!74319 (= (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) lt!205778)))

(declare-fun e!265321 () List!8105)

(declare-fun b!453264 () Bool)

(declare-fun c!56175 () Bool)

(declare-fun c!56173 () Bool)

(assert (=> b!453264 (= e!265321 (ite c!56175 (t!13939 (toList!3480 lt!205552)) (ite c!56173 (Cons!8101 (h!8957 (toList!3480 lt!205552)) (t!13939 (toList!3480 lt!205552))) Nil!8102)))))

(declare-fun b!453265 () Bool)

(declare-fun res!270064 () Bool)

(assert (=> b!453265 (=> (not res!270064) (not e!265319))))

(assert (=> b!453265 (= res!270064 (containsKey!346 lt!205778 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun bm!30057 () Bool)

(declare-fun call!30060 () List!8105)

(declare-fun call!30062 () List!8105)

(assert (=> bm!30057 (= call!30060 call!30062)))

(declare-fun b!453266 () Bool)

(declare-fun e!265323 () List!8105)

(declare-fun call!30061 () List!8105)

(assert (=> b!453266 (= e!265323 call!30061)))

(declare-fun b!453267 () Bool)

(declare-fun e!265320 () List!8105)

(assert (=> b!453267 (= e!265322 e!265320)))

(assert (=> b!453267 (= c!56175 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (= (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(declare-fun b!453268 () Bool)

(assert (=> b!453268 (= c!56173 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvsgt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (=> b!453268 (= e!265320 e!265323)))

(declare-fun b!453269 () Bool)

(assert (=> b!453269 (= e!265321 (insertStrictlySorted!195 (t!13939 (toList!3480 lt!205552)) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun bm!30058 () Bool)

(assert (=> bm!30058 (= call!30061 call!30060)))

(declare-fun bm!30059 () Bool)

(assert (=> bm!30059 (= call!30062 ($colon$colon!108 e!265321 (ite c!56174 (h!8957 (toList!3480 lt!205552)) (tuple2!8003 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))))

(declare-fun c!56176 () Bool)

(assert (=> bm!30059 (= c!56176 c!56174)))

(declare-fun b!453270 () Bool)

(assert (=> b!453270 (= e!265322 call!30062)))

(declare-fun b!453271 () Bool)

(assert (=> b!453271 (= e!265323 call!30061)))

(declare-fun b!453272 () Bool)

(assert (=> b!453272 (= e!265320 call!30060)))

(declare-fun b!453273 () Bool)

(assert (=> b!453273 (= e!265319 (contains!2501 lt!205778 (tuple2!8003 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (= (and d!74319 c!56174) b!453270))

(assert (= (and d!74319 (not c!56174)) b!453267))

(assert (= (and b!453267 c!56175) b!453272))

(assert (= (and b!453267 (not c!56175)) b!453268))

(assert (= (and b!453268 c!56173) b!453266))

(assert (= (and b!453268 (not c!56173)) b!453271))

(assert (= (or b!453266 b!453271) bm!30058))

(assert (= (or b!453272 bm!30058) bm!30057))

(assert (= (or b!453270 bm!30057) bm!30059))

(assert (= (and bm!30059 c!56176) b!453269))

(assert (= (and bm!30059 (not c!56176)) b!453264))

(assert (= (and d!74319 res!270065) b!453265))

(assert (= (and b!453265 res!270064) b!453273))

(declare-fun m!437347 () Bool)

(assert (=> bm!30059 m!437347))

(declare-fun m!437349 () Bool)

(assert (=> b!453269 m!437349))

(declare-fun m!437351 () Bool)

(assert (=> d!74319 m!437351))

(declare-fun m!437353 () Bool)

(assert (=> d!74319 m!437353))

(declare-fun m!437355 () Bool)

(assert (=> b!453273 m!437355))

(declare-fun m!437357 () Bool)

(assert (=> b!453265 m!437357))

(assert (=> d!74231 d!74319))

(assert (=> b!453005 d!74279))

(declare-fun d!74321 () Bool)

(declare-fun e!265324 () Bool)

(assert (=> d!74321 e!265324))

(declare-fun res!270066 () Bool)

(assert (=> d!74321 (=> (not res!270066) (not e!265324))))

(declare-fun lt!205780 () ListLongMap!6929)

(assert (=> d!74321 (= res!270066 (contains!2500 lt!205780 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205779 () List!8105)

(assert (=> d!74321 (= lt!205780 (ListLongMap!6930 lt!205779))))

(declare-fun lt!205782 () Unit!13189)

(declare-fun lt!205781 () Unit!13189)

(assert (=> d!74321 (= lt!205782 lt!205781)))

(assert (=> d!74321 (= (getValueByKey!369 lt!205779 (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74321 (= lt!205781 (lemmaContainsTupThenGetReturnValue!193 lt!205779 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74321 (= lt!205779 (insertStrictlySorted!195 (toList!3480 call!30032) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74321 (= (+!1545 call!30032 (tuple2!8003 k0!794 v!412)) lt!205780)))

(declare-fun b!453274 () Bool)

(declare-fun res!270067 () Bool)

(assert (=> b!453274 (=> (not res!270067) (not e!265324))))

(assert (=> b!453274 (= res!270067 (= (getValueByKey!369 (toList!3480 lt!205780) (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(declare-fun b!453275 () Bool)

(assert (=> b!453275 (= e!265324 (contains!2501 (toList!3480 lt!205780) (tuple2!8003 k0!794 v!412)))))

(assert (= (and d!74321 res!270066) b!453274))

(assert (= (and b!453274 res!270067) b!453275))

(declare-fun m!437359 () Bool)

(assert (=> d!74321 m!437359))

(declare-fun m!437361 () Bool)

(assert (=> d!74321 m!437361))

(declare-fun m!437363 () Bool)

(assert (=> d!74321 m!437363))

(declare-fun m!437365 () Bool)

(assert (=> d!74321 m!437365))

(declare-fun m!437367 () Bool)

(assert (=> b!453274 m!437367))

(declare-fun m!437369 () Bool)

(assert (=> b!453275 m!437369))

(assert (=> b!452959 d!74321))

(declare-fun b!453276 () Bool)

(declare-fun e!265325 () Option!375)

(assert (=> b!453276 (= e!265325 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205673)))))))

(declare-fun d!74323 () Bool)

(declare-fun c!56177 () Bool)

(assert (=> d!74323 (= c!56177 (and ((_ is Cons!8101) (toList!3480 lt!205673)) (= (_1!4011 (h!8957 (toList!3480 lt!205673))) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))))

(assert (=> d!74323 (= (getValueByKey!369 (toList!3480 lt!205673) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))) e!265325)))

(declare-fun b!453277 () Bool)

(declare-fun e!265326 () Option!375)

(assert (=> b!453277 (= e!265325 e!265326)))

(declare-fun c!56178 () Bool)

(assert (=> b!453277 (= c!56178 (and ((_ is Cons!8101) (toList!3480 lt!205673)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205673))) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))))

(declare-fun b!453278 () Bool)

(assert (=> b!453278 (= e!265326 (getValueByKey!369 (t!13939 (toList!3480 lt!205673)) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550))))))

(declare-fun b!453279 () Bool)

(assert (=> b!453279 (= e!265326 None!373)))

(assert (= (and d!74323 c!56177) b!453276))

(assert (= (and d!74323 (not c!56177)) b!453277))

(assert (= (and b!453277 c!56178) b!453278))

(assert (= (and b!453277 (not c!56178)) b!453279))

(declare-fun m!437371 () Bool)

(assert (=> b!453278 m!437371))

(assert (=> b!453072 d!74323))

(declare-fun d!74325 () Bool)

(assert (=> d!74325 (= (validKeyInArray!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)) (and (not (= (select (arr!13466 lt!205547) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 lt!205547) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453078 d!74325))

(declare-fun d!74327 () Bool)

(declare-fun e!265327 () Bool)

(assert (=> d!74327 e!265327))

(declare-fun res!270068 () Bool)

(assert (=> d!74327 (=> (not res!270068) (not e!265327))))

(declare-fun lt!205784 () ListLongMap!6929)

(assert (=> d!74327 (= res!270068 (contains!2500 lt!205784 (_1!4011 (tuple2!8003 k0!794 lt!205550))))))

(declare-fun lt!205783 () List!8105)

(assert (=> d!74327 (= lt!205784 (ListLongMap!6930 lt!205783))))

(declare-fun lt!205786 () Unit!13189)

(declare-fun lt!205785 () Unit!13189)

(assert (=> d!74327 (= lt!205786 lt!205785)))

(assert (=> d!74327 (= (getValueByKey!369 lt!205783 (_1!4011 (tuple2!8003 k0!794 lt!205550))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74327 (= lt!205785 (lemmaContainsTupThenGetReturnValue!193 lt!205783 (_1!4011 (tuple2!8003 k0!794 lt!205550)) (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74327 (= lt!205783 (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 (tuple2!8003 k0!794 lt!205550)) (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74327 (= (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205550)) lt!205784)))

(declare-fun b!453280 () Bool)

(declare-fun res!270069 () Bool)

(assert (=> b!453280 (=> (not res!270069) (not e!265327))))

(assert (=> b!453280 (= res!270069 (= (getValueByKey!369 (toList!3480 lt!205784) (_1!4011 (tuple2!8003 k0!794 lt!205550))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205550)))))))

(declare-fun b!453281 () Bool)

(assert (=> b!453281 (= e!265327 (contains!2501 (toList!3480 lt!205784) (tuple2!8003 k0!794 lt!205550)))))

(assert (= (and d!74327 res!270068) b!453280))

(assert (= (and b!453280 res!270069) b!453281))

(declare-fun m!437373 () Bool)

(assert (=> d!74327 m!437373))

(declare-fun m!437375 () Bool)

(assert (=> d!74327 m!437375))

(declare-fun m!437377 () Bool)

(assert (=> d!74327 m!437377))

(declare-fun m!437379 () Bool)

(assert (=> d!74327 m!437379))

(declare-fun m!437381 () Bool)

(assert (=> b!453280 m!437381))

(declare-fun m!437383 () Bool)

(assert (=> b!453281 m!437383))

(assert (=> d!74217 d!74327))

(declare-fun d!74329 () Bool)

(declare-fun e!265328 () Bool)

(assert (=> d!74329 e!265328))

(declare-fun res!270070 () Bool)

(assert (=> d!74329 (=> (not res!270070) (not e!265328))))

(declare-fun lt!205788 () ListLongMap!6929)

(assert (=> d!74329 (= res!270070 (contains!2500 lt!205788 (_1!4011 (tuple2!8003 k0!794 lt!205550))))))

(declare-fun lt!205787 () List!8105)

(assert (=> d!74329 (= lt!205788 (ListLongMap!6930 lt!205787))))

(declare-fun lt!205790 () Unit!13189)

(declare-fun lt!205789 () Unit!13189)

(assert (=> d!74329 (= lt!205790 lt!205789)))

(assert (=> d!74329 (= (getValueByKey!369 lt!205787 (_1!4011 (tuple2!8003 k0!794 lt!205550))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74329 (= lt!205789 (lemmaContainsTupThenGetReturnValue!193 lt!205787 (_1!4011 (tuple2!8003 k0!794 lt!205550)) (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74329 (= lt!205787 (insertStrictlySorted!195 (toList!3480 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556))) (_1!4011 (tuple2!8003 k0!794 lt!205550)) (_2!4011 (tuple2!8003 k0!794 lt!205550))))))

(assert (=> d!74329 (= (+!1545 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) (tuple2!8003 k0!794 lt!205550)) lt!205788)))

(declare-fun b!453282 () Bool)

(declare-fun res!270071 () Bool)

(assert (=> b!453282 (=> (not res!270071) (not e!265328))))

(assert (=> b!453282 (= res!270071 (= (getValueByKey!369 (toList!3480 lt!205788) (_1!4011 (tuple2!8003 k0!794 lt!205550))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205550)))))))

(declare-fun b!453283 () Bool)

(assert (=> b!453283 (= e!265328 (contains!2501 (toList!3480 lt!205788) (tuple2!8003 k0!794 lt!205550)))))

(assert (= (and d!74329 res!270070) b!453282))

(assert (= (and b!453282 res!270071) b!453283))

(declare-fun m!437385 () Bool)

(assert (=> d!74329 m!437385))

(declare-fun m!437387 () Bool)

(assert (=> d!74329 m!437387))

(declare-fun m!437389 () Bool)

(assert (=> d!74329 m!437389))

(declare-fun m!437391 () Bool)

(assert (=> d!74329 m!437391))

(declare-fun m!437393 () Bool)

(assert (=> b!453282 m!437393))

(declare-fun m!437395 () Bool)

(assert (=> b!453283 m!437395))

(assert (=> d!74217 d!74329))

(assert (=> d!74217 d!74223))

(declare-fun d!74331 () Bool)

(assert (=> d!74331 (= (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205550)) (+!1545 (+!1545 lt!205552 (tuple2!8003 k0!794 lt!205556)) (tuple2!8003 k0!794 lt!205550)))))

(assert (=> d!74331 true))

(declare-fun _$24!42 () Unit!13189)

(assert (=> d!74331 (= (choose!1336 lt!205552 k0!794 lt!205556 lt!205550) _$24!42)))

(declare-fun bs!14404 () Bool)

(assert (= bs!14404 d!74331))

(assert (=> bs!14404 m!436937))

(assert (=> bs!14404 m!436749))

(assert (=> bs!14404 m!436749))

(assert (=> bs!14404 m!436939))

(assert (=> d!74217 d!74331))

(declare-fun d!74333 () Bool)

(declare-fun e!265329 () Bool)

(assert (=> d!74333 e!265329))

(declare-fun res!270072 () Bool)

(assert (=> d!74333 (=> (not res!270072) (not e!265329))))

(declare-fun lt!205792 () ListLongMap!6929)

(assert (=> d!74333 (= res!270072 (contains!2500 lt!205792 (_1!4011 (tuple2!8003 lt!205625 lt!205627))))))

(declare-fun lt!205791 () List!8105)

(assert (=> d!74333 (= lt!205792 (ListLongMap!6930 lt!205791))))

(declare-fun lt!205794 () Unit!13189)

(declare-fun lt!205793 () Unit!13189)

(assert (=> d!74333 (= lt!205794 lt!205793)))

(assert (=> d!74333 (= (getValueByKey!369 lt!205791 (_1!4011 (tuple2!8003 lt!205625 lt!205627))) (Some!374 (_2!4011 (tuple2!8003 lt!205625 lt!205627))))))

(assert (=> d!74333 (= lt!205793 (lemmaContainsTupThenGetReturnValue!193 lt!205791 (_1!4011 (tuple2!8003 lt!205625 lt!205627)) (_2!4011 (tuple2!8003 lt!205625 lt!205627))))))

(assert (=> d!74333 (= lt!205791 (insertStrictlySorted!195 (toList!3480 lt!205630) (_1!4011 (tuple2!8003 lt!205625 lt!205627)) (_2!4011 (tuple2!8003 lt!205625 lt!205627))))))

(assert (=> d!74333 (= (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627)) lt!205792)))

(declare-fun b!453284 () Bool)

(declare-fun res!270073 () Bool)

(assert (=> b!453284 (=> (not res!270073) (not e!265329))))

(assert (=> b!453284 (= res!270073 (= (getValueByKey!369 (toList!3480 lt!205792) (_1!4011 (tuple2!8003 lt!205625 lt!205627))) (Some!374 (_2!4011 (tuple2!8003 lt!205625 lt!205627)))))))

(declare-fun b!453285 () Bool)

(assert (=> b!453285 (= e!265329 (contains!2501 (toList!3480 lt!205792) (tuple2!8003 lt!205625 lt!205627)))))

(assert (= (and d!74333 res!270072) b!453284))

(assert (= (and b!453284 res!270073) b!453285))

(declare-fun m!437397 () Bool)

(assert (=> d!74333 m!437397))

(declare-fun m!437399 () Bool)

(assert (=> d!74333 m!437399))

(declare-fun m!437401 () Bool)

(assert (=> d!74333 m!437401))

(declare-fun m!437403 () Bool)

(assert (=> d!74333 m!437403))

(declare-fun m!437405 () Bool)

(assert (=> b!453284 m!437405))

(declare-fun m!437407 () Bool)

(assert (=> b!453285 m!437407))

(assert (=> b!453026 d!74333))

(declare-fun d!74335 () Bool)

(assert (=> d!74335 (not (contains!2500 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627)) lt!205628))))

(declare-fun lt!205795 () Unit!13189)

(assert (=> d!74335 (= lt!205795 (choose!1337 lt!205630 lt!205625 lt!205627 lt!205628))))

(declare-fun e!265330 () Bool)

(assert (=> d!74335 e!265330))

(declare-fun res!270074 () Bool)

(assert (=> d!74335 (=> (not res!270074) (not e!265330))))

(assert (=> d!74335 (= res!270074 (not (contains!2500 lt!205630 lt!205628)))))

(assert (=> d!74335 (= (addStillNotContains!148 lt!205630 lt!205625 lt!205627 lt!205628) lt!205795)))

(declare-fun b!453286 () Bool)

(assert (=> b!453286 (= e!265330 (not (= lt!205625 lt!205628)))))

(assert (= (and d!74335 res!270074) b!453286))

(assert (=> d!74335 m!436907))

(assert (=> d!74335 m!436907))

(assert (=> d!74335 m!436911))

(declare-fun m!437409 () Bool)

(assert (=> d!74335 m!437409))

(declare-fun m!437411 () Bool)

(assert (=> d!74335 m!437411))

(assert (=> b!453026 d!74335))

(declare-fun d!74337 () Bool)

(declare-fun e!265331 () Bool)

(assert (=> d!74337 e!265331))

(declare-fun res!270075 () Bool)

(assert (=> d!74337 (=> (not res!270075) (not e!265331))))

(declare-fun lt!205797 () ListLongMap!6929)

(assert (=> d!74337 (= res!270075 (contains!2500 lt!205797 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!205796 () List!8105)

(assert (=> d!74337 (= lt!205797 (ListLongMap!6930 lt!205796))))

(declare-fun lt!205799 () Unit!13189)

(declare-fun lt!205798 () Unit!13189)

(assert (=> d!74337 (= lt!205799 lt!205798)))

(assert (=> d!74337 (= (getValueByKey!369 lt!205796 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74337 (= lt!205798 (lemmaContainsTupThenGetReturnValue!193 lt!205796 (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74337 (= lt!205796 (insertStrictlySorted!195 (toList!3480 call!30042) (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74337 (= (+!1545 call!30042 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!205797)))

(declare-fun b!453287 () Bool)

(declare-fun res!270076 () Bool)

(assert (=> b!453287 (=> (not res!270076) (not e!265331))))

(assert (=> b!453287 (= res!270076 (= (getValueByKey!369 (toList!3480 lt!205797) (_1!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!453288 () Bool)

(assert (=> b!453288 (= e!265331 (contains!2501 (toList!3480 lt!205797) (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74337 res!270075) b!453287))

(assert (= (and b!453287 res!270076) b!453288))

(declare-fun m!437413 () Bool)

(assert (=> d!74337 m!437413))

(declare-fun m!437415 () Bool)

(assert (=> d!74337 m!437415))

(declare-fun m!437417 () Bool)

(assert (=> d!74337 m!437417))

(declare-fun m!437419 () Bool)

(assert (=> d!74337 m!437419))

(declare-fun m!437421 () Bool)

(assert (=> b!453287 m!437421))

(declare-fun m!437423 () Bool)

(assert (=> b!453288 m!437423))

(assert (=> b!453026 d!74337))

(declare-fun d!74339 () Bool)

(declare-fun e!265333 () Bool)

(assert (=> d!74339 e!265333))

(declare-fun res!270077 () Bool)

(assert (=> d!74339 (=> res!270077 e!265333)))

(declare-fun lt!205802 () Bool)

(assert (=> d!74339 (= res!270077 (not lt!205802))))

(declare-fun lt!205800 () Bool)

(assert (=> d!74339 (= lt!205802 lt!205800)))

(declare-fun lt!205803 () Unit!13189)

(declare-fun e!265332 () Unit!13189)

(assert (=> d!74339 (= lt!205803 e!265332)))

(declare-fun c!56179 () Bool)

(assert (=> d!74339 (= c!56179 lt!205800)))

(assert (=> d!74339 (= lt!205800 (containsKey!346 (toList!3480 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627))) lt!205628))))

(assert (=> d!74339 (= (contains!2500 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627)) lt!205628) lt!205802)))

(declare-fun b!453289 () Bool)

(declare-fun lt!205801 () Unit!13189)

(assert (=> b!453289 (= e!265332 lt!205801)))

(assert (=> b!453289 (= lt!205801 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627))) lt!205628))))

(assert (=> b!453289 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627))) lt!205628))))

(declare-fun b!453290 () Bool)

(declare-fun Unit!13202 () Unit!13189)

(assert (=> b!453290 (= e!265332 Unit!13202)))

(declare-fun b!453291 () Bool)

(assert (=> b!453291 (= e!265333 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205630 (tuple2!8003 lt!205625 lt!205627))) lt!205628)))))

(assert (= (and d!74339 c!56179) b!453289))

(assert (= (and d!74339 (not c!56179)) b!453290))

(assert (= (and d!74339 (not res!270077)) b!453291))

(declare-fun m!437425 () Bool)

(assert (=> d!74339 m!437425))

(declare-fun m!437427 () Bool)

(assert (=> b!453289 m!437427))

(declare-fun m!437429 () Bool)

(assert (=> b!453289 m!437429))

(assert (=> b!453289 m!437429))

(declare-fun m!437431 () Bool)

(assert (=> b!453289 m!437431))

(assert (=> b!453291 m!437429))

(assert (=> b!453291 m!437429))

(assert (=> b!453291 m!437431))

(assert (=> b!453026 d!74339))

(declare-fun d!74341 () Bool)

(declare-fun c!56180 () Bool)

(assert (=> d!74341 (= c!56180 ((_ is ValueCellFull!5727) (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun e!265334 () V!17293)

(assert (=> d!74341 (= (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!265334)))

(declare-fun b!453292 () Bool)

(assert (=> b!453292 (= e!265334 (get!6654 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453293 () Bool)

(assert (=> b!453293 (= e!265334 (get!6655 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74341 c!56180) b!453292))

(assert (= (and d!74341 (not c!56180)) b!453293))

(assert (=> b!453292 m!436897))

(assert (=> b!453292 m!436755))

(declare-fun m!437433 () Bool)

(assert (=> b!453292 m!437433))

(assert (=> b!453293 m!436897))

(assert (=> b!453293 m!436755))

(declare-fun m!437435 () Bool)

(assert (=> b!453293 m!437435))

(assert (=> b!453026 d!74341))

(declare-fun d!74343 () Bool)

(declare-fun e!265335 () Bool)

(assert (=> d!74343 e!265335))

(declare-fun res!270078 () Bool)

(assert (=> d!74343 (=> (not res!270078) (not e!265335))))

(declare-fun lt!205805 () ListLongMap!6929)

(assert (=> d!74343 (= res!270078 (contains!2500 lt!205805 (_1!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!205804 () List!8105)

(assert (=> d!74343 (= lt!205805 (ListLongMap!6930 lt!205804))))

(declare-fun lt!205807 () Unit!13189)

(declare-fun lt!205806 () Unit!13189)

(assert (=> d!74343 (= lt!205807 lt!205806)))

(assert (=> d!74343 (= (getValueByKey!369 lt!205804 (_1!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74343 (= lt!205806 (lemmaContainsTupThenGetReturnValue!193 lt!205804 (_1!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74343 (= lt!205804 (insertStrictlySorted!195 (toList!3480 call!30047) (_1!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74343 (= (+!1545 call!30047 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!205805)))

(declare-fun b!453294 () Bool)

(declare-fun res!270079 () Bool)

(assert (=> b!453294 (=> (not res!270079) (not e!265335))))

(assert (=> b!453294 (= res!270079 (= (getValueByKey!369 (toList!3480 lt!205805) (_1!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!453295 () Bool)

(assert (=> b!453295 (= e!265335 (contains!2501 (toList!3480 lt!205805) (tuple2!8003 (select (arr!13466 _keys!709) from!863) (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74343 res!270078) b!453294))

(assert (= (and b!453294 res!270079) b!453295))

(declare-fun m!437437 () Bool)

(assert (=> d!74343 m!437437))

(declare-fun m!437439 () Bool)

(assert (=> d!74343 m!437439))

(declare-fun m!437441 () Bool)

(assert (=> d!74343 m!437441))

(declare-fun m!437443 () Bool)

(assert (=> d!74343 m!437443))

(declare-fun m!437445 () Bool)

(assert (=> b!453294 m!437445))

(declare-fun m!437447 () Bool)

(assert (=> b!453295 m!437447))

(assert (=> b!453095 d!74343))

(declare-fun d!74345 () Bool)

(declare-fun e!265337 () Bool)

(assert (=> d!74345 e!265337))

(declare-fun res!270080 () Bool)

(assert (=> d!74345 (=> res!270080 e!265337)))

(declare-fun lt!205810 () Bool)

(assert (=> d!74345 (= res!270080 (not lt!205810))))

(declare-fun lt!205808 () Bool)

(assert (=> d!74345 (= lt!205810 lt!205808)))

(declare-fun lt!205811 () Unit!13189)

(declare-fun e!265336 () Unit!13189)

(assert (=> d!74345 (= lt!205811 e!265336)))

(declare-fun c!56181 () Bool)

(assert (=> d!74345 (= c!56181 lt!205808)))

(assert (=> d!74345 (= lt!205808 (containsKey!346 (toList!3480 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686))) lt!205687))))

(assert (=> d!74345 (= (contains!2500 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686)) lt!205687) lt!205810)))

(declare-fun b!453296 () Bool)

(declare-fun lt!205809 () Unit!13189)

(assert (=> b!453296 (= e!265336 lt!205809)))

(assert (=> b!453296 (= lt!205809 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686))) lt!205687))))

(assert (=> b!453296 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686))) lt!205687))))

(declare-fun b!453297 () Bool)

(declare-fun Unit!13203 () Unit!13189)

(assert (=> b!453297 (= e!265336 Unit!13203)))

(declare-fun b!453298 () Bool)

(assert (=> b!453298 (= e!265337 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686))) lt!205687)))))

(assert (= (and d!74345 c!56181) b!453296))

(assert (= (and d!74345 (not c!56181)) b!453297))

(assert (= (and d!74345 (not res!270080)) b!453298))

(declare-fun m!437449 () Bool)

(assert (=> d!74345 m!437449))

(declare-fun m!437451 () Bool)

(assert (=> b!453296 m!437451))

(declare-fun m!437453 () Bool)

(assert (=> b!453296 m!437453))

(assert (=> b!453296 m!437453))

(declare-fun m!437455 () Bool)

(assert (=> b!453296 m!437455))

(assert (=> b!453298 m!437453))

(assert (=> b!453298 m!437453))

(assert (=> b!453298 m!437455))

(assert (=> b!453095 d!74345))

(declare-fun d!74347 () Bool)

(assert (=> d!74347 (not (contains!2500 (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686)) lt!205687))))

(declare-fun lt!205812 () Unit!13189)

(assert (=> d!74347 (= lt!205812 (choose!1337 lt!205689 lt!205684 lt!205686 lt!205687))))

(declare-fun e!265338 () Bool)

(assert (=> d!74347 e!265338))

(declare-fun res!270081 () Bool)

(assert (=> d!74347 (=> (not res!270081) (not e!265338))))

(assert (=> d!74347 (= res!270081 (not (contains!2500 lt!205689 lt!205687)))))

(assert (=> d!74347 (= (addStillNotContains!148 lt!205689 lt!205684 lt!205686 lt!205687) lt!205812)))

(declare-fun b!453299 () Bool)

(assert (=> b!453299 (= e!265338 (not (= lt!205684 lt!205687)))))

(assert (= (and d!74347 res!270081) b!453299))

(assert (=> d!74347 m!437081))

(assert (=> d!74347 m!437081))

(assert (=> d!74347 m!437085))

(declare-fun m!437457 () Bool)

(assert (=> d!74347 m!437457))

(declare-fun m!437459 () Bool)

(assert (=> d!74347 m!437459))

(assert (=> b!453095 d!74347))

(declare-fun d!74349 () Bool)

(declare-fun c!56182 () Bool)

(assert (=> d!74349 (= c!56182 ((_ is ValueCellFull!5727) (select (arr!13467 _values!549) from!863)))))

(declare-fun e!265339 () V!17293)

(assert (=> d!74349 (= (get!6652 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!265339)))

(declare-fun b!453300 () Bool)

(assert (=> b!453300 (= e!265339 (get!6654 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453301 () Bool)

(assert (=> b!453301 (= e!265339 (get!6655 (select (arr!13467 _values!549) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74349 c!56182) b!453300))

(assert (= (and d!74349 (not c!56182)) b!453301))

(assert (=> b!453300 m!436741))

(assert (=> b!453300 m!436755))

(declare-fun m!437461 () Bool)

(assert (=> b!453300 m!437461))

(assert (=> b!453301 m!436741))

(assert (=> b!453301 m!436755))

(declare-fun m!437463 () Bool)

(assert (=> b!453301 m!437463))

(assert (=> b!453095 d!74349))

(declare-fun d!74351 () Bool)

(declare-fun e!265340 () Bool)

(assert (=> d!74351 e!265340))

(declare-fun res!270082 () Bool)

(assert (=> d!74351 (=> (not res!270082) (not e!265340))))

(declare-fun lt!205814 () ListLongMap!6929)

(assert (=> d!74351 (= res!270082 (contains!2500 lt!205814 (_1!4011 (tuple2!8003 lt!205684 lt!205686))))))

(declare-fun lt!205813 () List!8105)

(assert (=> d!74351 (= lt!205814 (ListLongMap!6930 lt!205813))))

(declare-fun lt!205816 () Unit!13189)

(declare-fun lt!205815 () Unit!13189)

(assert (=> d!74351 (= lt!205816 lt!205815)))

(assert (=> d!74351 (= (getValueByKey!369 lt!205813 (_1!4011 (tuple2!8003 lt!205684 lt!205686))) (Some!374 (_2!4011 (tuple2!8003 lt!205684 lt!205686))))))

(assert (=> d!74351 (= lt!205815 (lemmaContainsTupThenGetReturnValue!193 lt!205813 (_1!4011 (tuple2!8003 lt!205684 lt!205686)) (_2!4011 (tuple2!8003 lt!205684 lt!205686))))))

(assert (=> d!74351 (= lt!205813 (insertStrictlySorted!195 (toList!3480 lt!205689) (_1!4011 (tuple2!8003 lt!205684 lt!205686)) (_2!4011 (tuple2!8003 lt!205684 lt!205686))))))

(assert (=> d!74351 (= (+!1545 lt!205689 (tuple2!8003 lt!205684 lt!205686)) lt!205814)))

(declare-fun b!453302 () Bool)

(declare-fun res!270083 () Bool)

(assert (=> b!453302 (=> (not res!270083) (not e!265340))))

(assert (=> b!453302 (= res!270083 (= (getValueByKey!369 (toList!3480 lt!205814) (_1!4011 (tuple2!8003 lt!205684 lt!205686))) (Some!374 (_2!4011 (tuple2!8003 lt!205684 lt!205686)))))))

(declare-fun b!453303 () Bool)

(assert (=> b!453303 (= e!265340 (contains!2501 (toList!3480 lt!205814) (tuple2!8003 lt!205684 lt!205686)))))

(assert (= (and d!74351 res!270082) b!453302))

(assert (= (and b!453302 res!270083) b!453303))

(declare-fun m!437465 () Bool)

(assert (=> d!74351 m!437465))

(declare-fun m!437467 () Bool)

(assert (=> d!74351 m!437467))

(declare-fun m!437469 () Bool)

(assert (=> d!74351 m!437469))

(declare-fun m!437471 () Bool)

(assert (=> d!74351 m!437471))

(declare-fun m!437473 () Bool)

(assert (=> b!453302 m!437473))

(declare-fun m!437475 () Bool)

(assert (=> b!453303 m!437475))

(assert (=> b!453095 d!74351))

(declare-fun d!74353 () Bool)

(declare-fun e!265342 () Bool)

(assert (=> d!74353 e!265342))

(declare-fun res!270084 () Bool)

(assert (=> d!74353 (=> res!270084 e!265342)))

(declare-fun lt!205819 () Bool)

(assert (=> d!74353 (= res!270084 (not lt!205819))))

(declare-fun lt!205817 () Bool)

(assert (=> d!74353 (= lt!205819 lt!205817)))

(declare-fun lt!205820 () Unit!13189)

(declare-fun e!265341 () Unit!13189)

(assert (=> d!74353 (= lt!205820 e!265341)))

(declare-fun c!56183 () Bool)

(assert (=> d!74353 (= c!56183 lt!205817)))

(assert (=> d!74353 (= lt!205817 (containsKey!346 (toList!3480 lt!205663) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74353 (= (contains!2500 lt!205663 #b0000000000000000000000000000000000000000000000000000000000000000) lt!205819)))

(declare-fun b!453304 () Bool)

(declare-fun lt!205818 () Unit!13189)

(assert (=> b!453304 (= e!265341 lt!205818)))

(assert (=> b!453304 (= lt!205818 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205663) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453304 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453305 () Bool)

(declare-fun Unit!13204 () Unit!13189)

(assert (=> b!453305 (= e!265341 Unit!13204)))

(declare-fun b!453306 () Bool)

(assert (=> b!453306 (= e!265342 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74353 c!56183) b!453304))

(assert (= (and d!74353 (not c!56183)) b!453305))

(assert (= (and d!74353 (not res!270084)) b!453306))

(declare-fun m!437477 () Bool)

(assert (=> d!74353 m!437477))

(declare-fun m!437479 () Bool)

(assert (=> b!453304 m!437479))

(declare-fun m!437481 () Bool)

(assert (=> b!453304 m!437481))

(assert (=> b!453304 m!437481))

(declare-fun m!437483 () Bool)

(assert (=> b!453304 m!437483))

(assert (=> b!453306 m!437481))

(assert (=> b!453306 m!437481))

(assert (=> b!453306 m!437483))

(assert (=> d!74227 d!74353))

(assert (=> d!74227 d!74235))

(declare-fun b!453307 () Bool)

(assert (=> b!453307 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(assert (=> b!453307 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13819 (ite c!56078 _values!549 lt!205554))))))

(declare-fun e!265349 () Bool)

(declare-fun lt!205823 () ListLongMap!6929)

(assert (=> b!453307 (= e!265349 (= (apply!313 lt!205823 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453309 () Bool)

(declare-fun lt!205826 () Unit!13189)

(declare-fun lt!205821 () Unit!13189)

(assert (=> b!453309 (= lt!205826 lt!205821)))

(declare-fun lt!205825 () (_ BitVec 64))

(declare-fun lt!205827 () ListLongMap!6929)

(declare-fun lt!205824 () V!17293)

(declare-fun lt!205822 () (_ BitVec 64))

(assert (=> b!453309 (not (contains!2500 (+!1545 lt!205827 (tuple2!8003 lt!205822 lt!205824)) lt!205825))))

(assert (=> b!453309 (= lt!205821 (addStillNotContains!148 lt!205827 lt!205822 lt!205824 lt!205825))))

(assert (=> b!453309 (= lt!205825 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453309 (= lt!205824 (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453309 (= lt!205822 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)))))

(declare-fun call!30063 () ListLongMap!6929)

(assert (=> b!453309 (= lt!205827 call!30063)))

(declare-fun e!265345 () ListLongMap!6929)

(assert (=> b!453309 (= e!265345 (+!1545 call!30063 (tuple2!8003 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (get!6652 (select (arr!13467 (ite c!56078 _values!549 lt!205554)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453310 () Bool)

(declare-fun e!265346 () ListLongMap!6929)

(assert (=> b!453310 (= e!265346 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30060 () Bool)

(assert (=> bm!30060 (= call!30063 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453311 () Bool)

(declare-fun e!265343 () Bool)

(assert (=> b!453311 (= e!265343 (isEmpty!564 lt!205823))))

(declare-fun b!453312 () Bool)

(assert (=> b!453312 (= e!265343 (= lt!205823 (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453313 () Bool)

(declare-fun e!265344 () Bool)

(declare-fun e!265348 () Bool)

(assert (=> b!453313 (= e!265344 e!265348)))

(declare-fun c!56187 () Bool)

(declare-fun e!265347 () Bool)

(assert (=> b!453313 (= c!56187 e!265347)))

(declare-fun res!270086 () Bool)

(assert (=> b!453313 (=> (not res!270086) (not e!265347))))

(assert (=> b!453313 (= res!270086 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun b!453314 () Bool)

(assert (=> b!453314 (= e!265348 e!265343)))

(declare-fun c!56185 () Bool)

(assert (=> b!453314 (= c!56185 (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun b!453315 () Bool)

(assert (=> b!453315 (= e!265348 e!265349)))

(assert (=> b!453315 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(declare-fun res!270088 () Bool)

(assert (=> b!453315 (= res!270088 (contains!2500 lt!205823 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453315 (=> (not res!270088) (not e!265349))))

(declare-fun b!453316 () Bool)

(assert (=> b!453316 (= e!265345 call!30063)))

(declare-fun b!453308 () Bool)

(declare-fun res!270087 () Bool)

(assert (=> b!453308 (=> (not res!270087) (not e!265344))))

(assert (=> b!453308 (= res!270087 (not (contains!2500 lt!205823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74355 () Bool)

(assert (=> d!74355 e!265344))

(declare-fun res!270085 () Bool)

(assert (=> d!74355 (=> (not res!270085) (not e!265344))))

(assert (=> d!74355 (= res!270085 (not (contains!2500 lt!205823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74355 (= lt!205823 e!265346)))

(declare-fun c!56184 () Bool)

(assert (=> d!74355 (= c!56184 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) (size!13818 (ite c!56078 _keys!709 lt!205547))))))

(assert (=> d!74355 (validMask!0 mask!1025)))

(assert (=> d!74355 (= (getCurrentListMapNoExtraKeys!1656 (ite c!56078 _keys!709 lt!205547) (ite c!56078 _values!549 lt!205554) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557) lt!205823)))

(declare-fun b!453317 () Bool)

(assert (=> b!453317 (= e!265346 e!265345)))

(declare-fun c!56186 () Bool)

(assert (=> b!453317 (= c!56186 (validKeyInArray!0 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(declare-fun b!453318 () Bool)

(assert (=> b!453318 (= e!265347 (validKeyInArray!0 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453318 (bvsge (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!74355 c!56184) b!453310))

(assert (= (and d!74355 (not c!56184)) b!453317))

(assert (= (and b!453317 c!56186) b!453309))

(assert (= (and b!453317 (not c!56186)) b!453316))

(assert (= (or b!453309 b!453316) bm!30060))

(assert (= (and d!74355 res!270085) b!453308))

(assert (= (and b!453308 res!270087) b!453313))

(assert (= (and b!453313 res!270086) b!453318))

(assert (= (and b!453313 c!56187) b!453315))

(assert (= (and b!453313 (not c!56187)) b!453314))

(assert (= (and b!453315 res!270088) b!453307))

(assert (= (and b!453314 c!56185) b!453312))

(assert (= (and b!453314 (not c!56185)) b!453311))

(declare-fun b_lambda!9665 () Bool)

(assert (=> (not b_lambda!9665) (not b!453307)))

(assert (=> b!453307 t!13937))

(declare-fun b_and!18947 () Bool)

(assert (= b_and!18945 (and (=> t!13937 result!7111) b_and!18947)))

(declare-fun b_lambda!9667 () Bool)

(assert (=> (not b_lambda!9667) (not b!453309)))

(assert (=> b!453309 t!13937))

(declare-fun b_and!18949 () Bool)

(assert (= b_and!18947 (and (=> t!13937 result!7111) b_and!18949)))

(declare-fun m!437485 () Bool)

(assert (=> d!74355 m!437485))

(assert (=> d!74355 m!436695))

(declare-fun m!437487 () Bool)

(assert (=> b!453318 m!437487))

(assert (=> b!453318 m!437487))

(declare-fun m!437489 () Bool)

(assert (=> b!453318 m!437489))

(declare-fun m!437491 () Bool)

(assert (=> bm!30060 m!437491))

(assert (=> b!453307 m!437487))

(assert (=> b!453307 m!436755))

(declare-fun m!437493 () Bool)

(assert (=> b!453307 m!437493))

(assert (=> b!453307 m!436755))

(declare-fun m!437495 () Bool)

(assert (=> b!453307 m!437495))

(assert (=> b!453307 m!437487))

(declare-fun m!437497 () Bool)

(assert (=> b!453307 m!437497))

(assert (=> b!453307 m!437493))

(declare-fun m!437499 () Bool)

(assert (=> b!453308 m!437499))

(assert (=> b!453312 m!437491))

(declare-fun m!437501 () Bool)

(assert (=> b!453309 m!437501))

(assert (=> b!453309 m!437487))

(declare-fun m!437503 () Bool)

(assert (=> b!453309 m!437503))

(declare-fun m!437505 () Bool)

(assert (=> b!453309 m!437505))

(assert (=> b!453309 m!436755))

(assert (=> b!453309 m!437493))

(assert (=> b!453309 m!436755))

(assert (=> b!453309 m!437495))

(assert (=> b!453309 m!437503))

(declare-fun m!437507 () Bool)

(assert (=> b!453309 m!437507))

(assert (=> b!453309 m!437493))

(declare-fun m!437509 () Bool)

(assert (=> b!453311 m!437509))

(assert (=> b!453317 m!437487))

(assert (=> b!453317 m!437487))

(assert (=> b!453317 m!437489))

(assert (=> b!453315 m!437487))

(assert (=> b!453315 m!437487))

(declare-fun m!437511 () Bool)

(assert (=> b!453315 m!437511))

(assert (=> bm!30039 d!74355))

(declare-fun b!453319 () Bool)

(assert (=> b!453319 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(assert (=> b!453319 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13819 _values!549)))))

(declare-fun lt!205830 () ListLongMap!6929)

(declare-fun e!265356 () Bool)

(assert (=> b!453319 (= e!265356 (= (apply!313 lt!205830 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001))) (get!6652 (select (arr!13467 _values!549) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453321 () Bool)

(declare-fun lt!205833 () Unit!13189)

(declare-fun lt!205828 () Unit!13189)

(assert (=> b!453321 (= lt!205833 lt!205828)))

(declare-fun lt!205834 () ListLongMap!6929)

(declare-fun lt!205831 () V!17293)

(declare-fun lt!205829 () (_ BitVec 64))

(declare-fun lt!205832 () (_ BitVec 64))

(assert (=> b!453321 (not (contains!2500 (+!1545 lt!205834 (tuple2!8003 lt!205829 lt!205831)) lt!205832))))

(assert (=> b!453321 (= lt!205828 (addStillNotContains!148 lt!205834 lt!205829 lt!205831 lt!205832))))

(assert (=> b!453321 (= lt!205832 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453321 (= lt!205831 (get!6652 (select (arr!13467 _values!549) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453321 (= lt!205829 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001)))))

(declare-fun call!30064 () ListLongMap!6929)

(assert (=> b!453321 (= lt!205834 call!30064)))

(declare-fun e!265352 () ListLongMap!6929)

(assert (=> b!453321 (= e!265352 (+!1545 call!30064 (tuple2!8003 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001)) (get!6652 (select (arr!13467 _values!549) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453322 () Bool)

(declare-fun e!265353 () ListLongMap!6929)

(assert (=> b!453322 (= e!265353 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30061 () Bool)

(assert (=> bm!30061 (= call!30064 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453323 () Bool)

(declare-fun e!265350 () Bool)

(assert (=> b!453323 (= e!265350 (isEmpty!564 lt!205830))))

(declare-fun b!453324 () Bool)

(assert (=> b!453324 (= e!265350 (= lt!205830 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453325 () Bool)

(declare-fun e!265351 () Bool)

(declare-fun e!265355 () Bool)

(assert (=> b!453325 (= e!265351 e!265355)))

(declare-fun c!56191 () Bool)

(declare-fun e!265354 () Bool)

(assert (=> b!453325 (= c!56191 e!265354)))

(declare-fun res!270090 () Bool)

(assert (=> b!453325 (=> (not res!270090) (not e!265354))))

(assert (=> b!453325 (= res!270090 (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun b!453326 () Bool)

(assert (=> b!453326 (= e!265355 e!265350)))

(declare-fun c!56189 () Bool)

(assert (=> b!453326 (= c!56189 (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun b!453327 () Bool)

(assert (=> b!453327 (= e!265355 e!265356)))

(assert (=> b!453327 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun res!270092 () Bool)

(assert (=> b!453327 (= res!270092 (contains!2500 lt!205830 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453327 (=> (not res!270092) (not e!265356))))

(declare-fun b!453328 () Bool)

(assert (=> b!453328 (= e!265352 call!30064)))

(declare-fun b!453320 () Bool)

(declare-fun res!270091 () Bool)

(assert (=> b!453320 (=> (not res!270091) (not e!265351))))

(assert (=> b!453320 (= res!270091 (not (contains!2500 lt!205830 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74357 () Bool)

(assert (=> d!74357 e!265351))

(declare-fun res!270089 () Bool)

(assert (=> d!74357 (=> (not res!270089) (not e!265351))))

(assert (=> d!74357 (= res!270089 (not (contains!2500 lt!205830 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74357 (= lt!205830 e!265353)))

(declare-fun c!56188 () Bool)

(assert (=> d!74357 (= c!56188 (bvsge (bvadd from!863 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(assert (=> d!74357 (validMask!0 mask!1025)))

(assert (=> d!74357 (= (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557) lt!205830)))

(declare-fun b!453329 () Bool)

(assert (=> b!453329 (= e!265353 e!265352)))

(declare-fun c!56190 () Bool)

(assert (=> b!453329 (= c!56190 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001))))))

(declare-fun b!453330 () Bool)

(assert (=> b!453330 (= e!265354 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453330 (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!74357 c!56188) b!453322))

(assert (= (and d!74357 (not c!56188)) b!453329))

(assert (= (and b!453329 c!56190) b!453321))

(assert (= (and b!453329 (not c!56190)) b!453328))

(assert (= (or b!453321 b!453328) bm!30061))

(assert (= (and d!74357 res!270089) b!453320))

(assert (= (and b!453320 res!270091) b!453325))

(assert (= (and b!453325 res!270090) b!453330))

(assert (= (and b!453325 c!56191) b!453327))

(assert (= (and b!453325 (not c!56191)) b!453326))

(assert (= (and b!453327 res!270092) b!453319))

(assert (= (and b!453326 c!56189) b!453324))

(assert (= (and b!453326 (not c!56189)) b!453323))

(declare-fun b_lambda!9669 () Bool)

(assert (=> (not b_lambda!9669) (not b!453319)))

(assert (=> b!453319 t!13937))

(declare-fun b_and!18951 () Bool)

(assert (= b_and!18949 (and (=> t!13937 result!7111) b_and!18951)))

(declare-fun b_lambda!9671 () Bool)

(assert (=> (not b_lambda!9671) (not b!453321)))

(assert (=> b!453321 t!13937))

(declare-fun b_and!18953 () Bool)

(assert (= b_and!18951 (and (=> t!13937 result!7111) b_and!18953)))

(declare-fun m!437513 () Bool)

(assert (=> d!74357 m!437513))

(assert (=> d!74357 m!436695))

(declare-fun m!437515 () Bool)

(assert (=> b!453330 m!437515))

(assert (=> b!453330 m!437515))

(declare-fun m!437517 () Bool)

(assert (=> b!453330 m!437517))

(declare-fun m!437519 () Bool)

(assert (=> bm!30061 m!437519))

(assert (=> b!453319 m!437515))

(assert (=> b!453319 m!436755))

(declare-fun m!437521 () Bool)

(assert (=> b!453319 m!437521))

(assert (=> b!453319 m!436755))

(declare-fun m!437523 () Bool)

(assert (=> b!453319 m!437523))

(assert (=> b!453319 m!437515))

(declare-fun m!437525 () Bool)

(assert (=> b!453319 m!437525))

(assert (=> b!453319 m!437521))

(declare-fun m!437527 () Bool)

(assert (=> b!453320 m!437527))

(assert (=> b!453324 m!437519))

(declare-fun m!437529 () Bool)

(assert (=> b!453321 m!437529))

(assert (=> b!453321 m!437515))

(declare-fun m!437531 () Bool)

(assert (=> b!453321 m!437531))

(declare-fun m!437533 () Bool)

(assert (=> b!453321 m!437533))

(assert (=> b!453321 m!436755))

(assert (=> b!453321 m!437521))

(assert (=> b!453321 m!436755))

(assert (=> b!453321 m!437523))

(assert (=> b!453321 m!437531))

(declare-fun m!437535 () Bool)

(assert (=> b!453321 m!437535))

(assert (=> b!453321 m!437521))

(declare-fun m!437537 () Bool)

(assert (=> b!453323 m!437537))

(assert (=> b!453329 m!437515))

(assert (=> b!453329 m!437515))

(assert (=> b!453329 m!437517))

(assert (=> b!453327 m!437515))

(assert (=> b!453327 m!437515))

(declare-fun m!437539 () Bool)

(assert (=> b!453327 m!437539))

(assert (=> bm!30044 d!74357))

(declare-fun d!74359 () Bool)

(assert (=> d!74359 (= (validKeyInArray!0 (select (arr!13466 lt!205547) from!863)) (and (not (= (select (arr!13466 lt!205547) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 lt!205547) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453091 d!74359))

(declare-fun d!74361 () Bool)

(assert (=> d!74361 (= (get!6655 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553) lt!205553)))

(assert (=> b!453075 d!74361))

(declare-fun d!74363 () Bool)

(assert (=> d!74363 (= (apply!313 lt!205626 (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6656 (getValueByKey!369 (toList!3480 lt!205626) (select (arr!13466 (ite c!56078 _keys!709 lt!205547)) (bvadd #b00000000000000000000000000000001 from!863)))))))

(declare-fun bs!14405 () Bool)

(assert (= bs!14405 d!74363))

(assert (=> bs!14405 m!436891))

(assert (=> bs!14405 m!437155))

(assert (=> bs!14405 m!437155))

(declare-fun m!437541 () Bool)

(assert (=> bs!14405 m!437541))

(assert (=> b!453024 d!74363))

(assert (=> b!453024 d!74341))

(declare-fun d!74365 () Bool)

(assert (=> d!74365 (= (validKeyInArray!0 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (and (not (= (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!453011 d!74365))

(declare-fun d!74367 () Bool)

(assert (=> d!74367 (= (apply!313 lt!205685 (select (arr!13466 _keys!709) from!863)) (get!6656 (getValueByKey!369 (toList!3480 lt!205685) (select (arr!13466 _keys!709) from!863))))))

(declare-fun bs!14406 () Bool)

(assert (= bs!14406 d!74367))

(assert (=> bs!14406 m!436713))

(assert (=> bs!14406 m!437099))

(assert (=> bs!14406 m!437099))

(declare-fun m!437543 () Bool)

(assert (=> bs!14406 m!437543))

(assert (=> b!453093 d!74367))

(assert (=> b!453093 d!74349))

(declare-fun d!74369 () Bool)

(declare-fun e!265358 () Bool)

(assert (=> d!74369 e!265358))

(declare-fun res!270093 () Bool)

(assert (=> d!74369 (=> res!270093 e!265358)))

(declare-fun lt!205837 () Bool)

(assert (=> d!74369 (= res!270093 (not lt!205837))))

(declare-fun lt!205835 () Bool)

(assert (=> d!74369 (= lt!205837 lt!205835)))

(declare-fun lt!205838 () Unit!13189)

(declare-fun e!265357 () Unit!13189)

(assert (=> d!74369 (= lt!205838 e!265357)))

(declare-fun c!56192 () Bool)

(assert (=> d!74369 (= c!56192 lt!205835)))

(assert (=> d!74369 (= lt!205835 (containsKey!346 (toList!3480 lt!205678) (select (arr!13466 lt!205547) from!863)))))

(assert (=> d!74369 (= (contains!2500 lt!205678 (select (arr!13466 lt!205547) from!863)) lt!205837)))

(declare-fun b!453331 () Bool)

(declare-fun lt!205836 () Unit!13189)

(assert (=> b!453331 (= e!265357 lt!205836)))

(assert (=> b!453331 (= lt!205836 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205678) (select (arr!13466 lt!205547) from!863)))))

(assert (=> b!453331 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) (select (arr!13466 lt!205547) from!863)))))

(declare-fun b!453332 () Bool)

(declare-fun Unit!13205 () Unit!13189)

(assert (=> b!453332 (= e!265357 Unit!13205)))

(declare-fun b!453333 () Bool)

(assert (=> b!453333 (= e!265358 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205678) (select (arr!13466 lt!205547) from!863))))))

(assert (= (and d!74369 c!56192) b!453331))

(assert (= (and d!74369 (not c!56192)) b!453332))

(assert (= (and d!74369 (not res!270093)) b!453333))

(assert (=> d!74369 m!436751))

(declare-fun m!437545 () Bool)

(assert (=> d!74369 m!437545))

(assert (=> b!453331 m!436751))

(declare-fun m!437547 () Bool)

(assert (=> b!453331 m!437547))

(assert (=> b!453331 m!436751))

(declare-fun m!437549 () Bool)

(assert (=> b!453331 m!437549))

(assert (=> b!453331 m!437549))

(declare-fun m!437551 () Bool)

(assert (=> b!453331 m!437551))

(assert (=> b!453333 m!436751))

(assert (=> b!453333 m!437549))

(assert (=> b!453333 m!437549))

(assert (=> b!453333 m!437551))

(assert (=> b!453089 d!74369))

(declare-fun b!453334 () Bool)

(declare-fun e!265359 () Option!375)

(assert (=> b!453334 (= e!265359 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205669)))))))

(declare-fun d!74371 () Bool)

(declare-fun c!56193 () Bool)

(assert (=> d!74371 (= c!56193 (and ((_ is Cons!8101) (toList!3480 lt!205669)) (= (_1!4011 (h!8957 (toList!3480 lt!205669))) (_1!4011 lt!205555))))))

(assert (=> d!74371 (= (getValueByKey!369 (toList!3480 lt!205669) (_1!4011 lt!205555)) e!265359)))

(declare-fun b!453335 () Bool)

(declare-fun e!265360 () Option!375)

(assert (=> b!453335 (= e!265359 e!265360)))

(declare-fun c!56194 () Bool)

(assert (=> b!453335 (= c!56194 (and ((_ is Cons!8101) (toList!3480 lt!205669)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205669))) (_1!4011 lt!205555)))))))

(declare-fun b!453336 () Bool)

(assert (=> b!453336 (= e!265360 (getValueByKey!369 (t!13939 (toList!3480 lt!205669)) (_1!4011 lt!205555)))))

(declare-fun b!453337 () Bool)

(assert (=> b!453337 (= e!265360 None!373)))

(assert (= (and d!74371 c!56193) b!453334))

(assert (= (and d!74371 (not c!56193)) b!453335))

(assert (= (and b!453335 c!56194) b!453336))

(assert (= (and b!453335 (not c!56194)) b!453337))

(declare-fun m!437553 () Bool)

(assert (=> b!453336 m!437553))

(assert (=> b!453070 d!74371))

(declare-fun d!74373 () Bool)

(declare-fun e!265362 () Bool)

(assert (=> d!74373 e!265362))

(declare-fun res!270094 () Bool)

(assert (=> d!74373 (=> res!270094 e!265362)))

(declare-fun lt!205841 () Bool)

(assert (=> d!74373 (= res!270094 (not lt!205841))))

(declare-fun lt!205839 () Bool)

(assert (=> d!74373 (= lt!205841 lt!205839)))

(declare-fun lt!205842 () Unit!13189)

(declare-fun e!265361 () Unit!13189)

(assert (=> d!74373 (= lt!205842 e!265361)))

(declare-fun c!56195 () Bool)

(assert (=> d!74373 (= c!56195 lt!205839)))

(assert (=> d!74373 (= lt!205839 (containsKey!346 (toList!3480 lt!205663) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74373 (= (contains!2500 lt!205663 #b1000000000000000000000000000000000000000000000000000000000000000) lt!205841)))

(declare-fun b!453338 () Bool)

(declare-fun lt!205840 () Unit!13189)

(assert (=> b!453338 (= e!265361 lt!205840)))

(assert (=> b!453338 (= lt!205840 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205663) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453338 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453339 () Bool)

(declare-fun Unit!13206 () Unit!13189)

(assert (=> b!453339 (= e!265361 Unit!13206)))

(declare-fun b!453340 () Bool)

(assert (=> b!453340 (= e!265362 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74373 c!56195) b!453338))

(assert (= (and d!74373 (not c!56195)) b!453339))

(assert (= (and d!74373 (not res!270094)) b!453340))

(declare-fun m!437555 () Bool)

(assert (=> d!74373 m!437555))

(declare-fun m!437557 () Bool)

(assert (=> b!453338 m!437557))

(declare-fun m!437559 () Bool)

(assert (=> b!453338 m!437559))

(assert (=> b!453338 m!437559))

(declare-fun m!437561 () Bool)

(assert (=> b!453338 m!437561))

(assert (=> b!453340 m!437559))

(assert (=> b!453340 m!437559))

(assert (=> b!453340 m!437561))

(assert (=> b!453059 d!74373))

(declare-fun d!74375 () Bool)

(declare-fun lt!205843 () Bool)

(assert (=> d!74375 (= lt!205843 (select (content!203 (toList!3480 lt!205650)) lt!205555))))

(declare-fun e!265363 () Bool)

(assert (=> d!74375 (= lt!205843 e!265363)))

(declare-fun res!270095 () Bool)

(assert (=> d!74375 (=> (not res!270095) (not e!265363))))

(assert (=> d!74375 (= res!270095 ((_ is Cons!8101) (toList!3480 lt!205650)))))

(assert (=> d!74375 (= (contains!2501 (toList!3480 lt!205650) lt!205555) lt!205843)))

(declare-fun b!453341 () Bool)

(declare-fun e!265364 () Bool)

(assert (=> b!453341 (= e!265363 e!265364)))

(declare-fun res!270096 () Bool)

(assert (=> b!453341 (=> res!270096 e!265364)))

(assert (=> b!453341 (= res!270096 (= (h!8957 (toList!3480 lt!205650)) lt!205555))))

(declare-fun b!453342 () Bool)

(assert (=> b!453342 (= e!265364 (contains!2501 (t!13939 (toList!3480 lt!205650)) lt!205555))))

(assert (= (and d!74375 res!270095) b!453341))

(assert (= (and b!453341 (not res!270096)) b!453342))

(declare-fun m!437563 () Bool)

(assert (=> d!74375 m!437563))

(declare-fun m!437565 () Bool)

(assert (=> d!74375 m!437565))

(declare-fun m!437567 () Bool)

(assert (=> b!453342 m!437567))

(assert (=> b!453047 d!74375))

(declare-fun d!74377 () Bool)

(declare-fun lt!205844 () Bool)

(assert (=> d!74377 (= lt!205844 (select (content!203 (toList!3480 lt!205654)) (tuple2!8003 k0!794 v!412)))))

(declare-fun e!265365 () Bool)

(assert (=> d!74377 (= lt!205844 e!265365)))

(declare-fun res!270097 () Bool)

(assert (=> d!74377 (=> (not res!270097) (not e!265365))))

(assert (=> d!74377 (= res!270097 ((_ is Cons!8101) (toList!3480 lt!205654)))))

(assert (=> d!74377 (= (contains!2501 (toList!3480 lt!205654) (tuple2!8003 k0!794 v!412)) lt!205844)))

(declare-fun b!453343 () Bool)

(declare-fun e!265366 () Bool)

(assert (=> b!453343 (= e!265365 e!265366)))

(declare-fun res!270098 () Bool)

(assert (=> b!453343 (=> res!270098 e!265366)))

(assert (=> b!453343 (= res!270098 (= (h!8957 (toList!3480 lt!205654)) (tuple2!8003 k0!794 v!412)))))

(declare-fun b!453344 () Bool)

(assert (=> b!453344 (= e!265366 (contains!2501 (t!13939 (toList!3480 lt!205654)) (tuple2!8003 k0!794 v!412)))))

(assert (= (and d!74377 res!270097) b!453343))

(assert (= (and b!453343 (not res!270098)) b!453344))

(declare-fun m!437569 () Bool)

(assert (=> d!74377 m!437569))

(declare-fun m!437571 () Bool)

(assert (=> d!74377 m!437571))

(declare-fun m!437573 () Bool)

(assert (=> b!453344 m!437573))

(assert (=> b!453049 d!74377))

(declare-fun b!453345 () Bool)

(declare-fun e!265367 () Option!375)

(assert (=> b!453345 (= e!265367 (Some!374 (_2!4011 (h!8957 (toList!3480 lt!205640)))))))

(declare-fun c!56196 () Bool)

(declare-fun d!74379 () Bool)

(assert (=> d!74379 (= c!56196 (and ((_ is Cons!8101) (toList!3480 lt!205640)) (= (_1!4011 (h!8957 (toList!3480 lt!205640))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74379 (= (getValueByKey!369 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412))) e!265367)))

(declare-fun b!453346 () Bool)

(declare-fun e!265368 () Option!375)

(assert (=> b!453346 (= e!265367 e!265368)))

(declare-fun c!56197 () Bool)

(assert (=> b!453346 (= c!56197 (and ((_ is Cons!8101) (toList!3480 lt!205640)) (not (= (_1!4011 (h!8957 (toList!3480 lt!205640))) (_1!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun b!453347 () Bool)

(assert (=> b!453347 (= e!265368 (getValueByKey!369 (t!13939 (toList!3480 lt!205640)) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453348 () Bool)

(assert (=> b!453348 (= e!265368 None!373)))

(assert (= (and d!74379 c!56196) b!453345))

(assert (= (and d!74379 (not c!56196)) b!453346))

(assert (= (and b!453346 c!56197) b!453347))

(assert (= (and b!453346 (not c!56197)) b!453348))

(declare-fun m!437575 () Bool)

(assert (=> b!453347 m!437575))

(assert (=> b!453040 d!74379))

(assert (=> b!453023 d!74325))

(assert (=> b!453029 d!74355))

(assert (=> b!453098 d!74357))

(declare-fun d!74381 () Bool)

(assert (=> d!74381 (= (apply!313 lt!205678 (select (arr!13466 lt!205547) from!863)) (get!6656 (getValueByKey!369 (toList!3480 lt!205678) (select (arr!13466 lt!205547) from!863))))))

(declare-fun bs!14407 () Bool)

(assert (= bs!14407 d!74381))

(assert (=> bs!14407 m!436751))

(assert (=> bs!14407 m!437549))

(assert (=> bs!14407 m!437549))

(declare-fun m!437577 () Bool)

(assert (=> bs!14407 m!437577))

(assert (=> b!453081 d!74381))

(declare-fun d!74383 () Bool)

(declare-fun c!56198 () Bool)

(assert (=> d!74383 (= c!56198 ((_ is ValueCellFull!5727) (select (arr!13467 lt!205554) from!863)))))

(declare-fun e!265369 () V!17293)

(assert (=> d!74383 (= (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!265369)))

(declare-fun b!453349 () Bool)

(assert (=> b!453349 (= e!265369 (get!6654 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453350 () Bool)

(assert (=> b!453350 (= e!265369 (get!6655 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74383 c!56198) b!453349))

(assert (= (and d!74383 (not c!56198)) b!453350))

(assert (=> b!453349 m!437049))

(assert (=> b!453349 m!436755))

(declare-fun m!437579 () Bool)

(assert (=> b!453349 m!437579))

(assert (=> b!453350 m!437049))

(assert (=> b!453350 m!436755))

(declare-fun m!437581 () Bool)

(assert (=> b!453350 m!437581))

(assert (=> b!453081 d!74383))

(declare-fun d!74385 () Bool)

(assert (=> d!74385 (= (isEmpty!564 lt!205610) (isEmpty!565 (toList!3480 lt!205610)))))

(declare-fun bs!14408 () Bool)

(assert (= bs!14408 d!74385))

(declare-fun m!437583 () Bool)

(assert (=> bs!14408 m!437583))

(assert (=> b!453004 d!74385))

(declare-fun bm!30067 () Bool)

(declare-fun call!30069 () ListLongMap!6929)

(assert (=> bm!30067 (= call!30069 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun d!74387 () Bool)

(declare-fun e!265372 () Bool)

(assert (=> d!74387 e!265372))

(declare-fun c!56201 () Bool)

(assert (=> d!74387 (= c!56201 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(assert (=> d!74387 true))

(declare-fun _$4!58 () Unit!13189)

(assert (=> d!74387 (= (choose!1335 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) _$4!58)))

(declare-fun call!30070 () ListLongMap!6929)

(declare-fun b!453355 () Bool)

(assert (=> b!453355 (= e!265372 (= call!30070 (+!1545 call!30069 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30066 () Bool)

(assert (=> bm!30066 (= call!30070 (getCurrentListMapNoExtraKeys!1656 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)) (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!453356 () Bool)

(assert (=> b!453356 (= e!265372 (= call!30070 call!30069))))

(assert (= (and d!74387 c!56201) b!453355))

(assert (= (and d!74387 (not c!56201)) b!453356))

(assert (= (or b!453355 b!453356) bm!30066))

(assert (= (or b!453355 b!453356) bm!30067))

(assert (=> bm!30067 m!436841))

(declare-fun m!437585 () Bool)

(assert (=> b!453355 m!437585))

(assert (=> bm!30066 m!436721))

(assert (=> bm!30066 m!436727))

(assert (=> bm!30066 m!436835))

(assert (=> d!74197 d!74387))

(declare-fun lt!205845 () Bool)

(declare-fun d!74389 () Bool)

(assert (=> d!74389 (= lt!205845 (select (content!203 (toList!3480 lt!205658)) (tuple2!8003 k0!794 lt!205556)))))

(declare-fun e!265373 () Bool)

(assert (=> d!74389 (= lt!205845 e!265373)))

(declare-fun res!270099 () Bool)

(assert (=> d!74389 (=> (not res!270099) (not e!265373))))

(assert (=> d!74389 (= res!270099 ((_ is Cons!8101) (toList!3480 lt!205658)))))

(assert (=> d!74389 (= (contains!2501 (toList!3480 lt!205658) (tuple2!8003 k0!794 lt!205556)) lt!205845)))

(declare-fun b!453357 () Bool)

(declare-fun e!265374 () Bool)

(assert (=> b!453357 (= e!265373 e!265374)))

(declare-fun res!270100 () Bool)

(assert (=> b!453357 (=> res!270100 e!265374)))

(assert (=> b!453357 (= res!270100 (= (h!8957 (toList!3480 lt!205658)) (tuple2!8003 k0!794 lt!205556)))))

(declare-fun b!453358 () Bool)

(assert (=> b!453358 (= e!265374 (contains!2501 (t!13939 (toList!3480 lt!205658)) (tuple2!8003 k0!794 lt!205556)))))

(assert (= (and d!74389 res!270099) b!453357))

(assert (= (and b!453357 (not res!270100)) b!453358))

(declare-fun m!437587 () Bool)

(assert (=> d!74389 m!437587))

(declare-fun m!437589 () Bool)

(assert (=> d!74389 m!437589))

(declare-fun m!437591 () Bool)

(assert (=> b!453358 m!437591))

(assert (=> b!453051 d!74389))

(declare-fun b!453359 () Bool)

(declare-fun e!265376 () Bool)

(declare-fun call!30071 () Bool)

(assert (=> b!453359 (= e!265376 call!30071)))

(declare-fun bm!30068 () Bool)

(assert (=> bm!30068 (= call!30071 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!453361 () Bool)

(declare-fun e!265375 () Bool)

(assert (=> b!453361 (= e!265376 e!265375)))

(declare-fun lt!205846 () (_ BitVec 64))

(assert (=> b!453361 (= lt!205846 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!205848 () Unit!13189)

(assert (=> b!453361 (= lt!205848 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!205846 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!453361 (arrayContainsKey!0 _keys!709 lt!205846 #b00000000000000000000000000000000)))

(declare-fun lt!205847 () Unit!13189)

(assert (=> b!453361 (= lt!205847 lt!205848)))

(declare-fun res!270102 () Bool)

(assert (=> b!453361 (= res!270102 (= (seekEntryOrOpen!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!709 mask!1025) (Found!3520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!453361 (=> (not res!270102) (not e!265375))))

(declare-fun b!453362 () Bool)

(declare-fun e!265377 () Bool)

(assert (=> b!453362 (= e!265377 e!265376)))

(declare-fun c!56202 () Bool)

(assert (=> b!453362 (= c!56202 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453360 () Bool)

(assert (=> b!453360 (= e!265375 call!30071)))

(declare-fun d!74391 () Bool)

(declare-fun res!270101 () Bool)

(assert (=> d!74391 (=> res!270101 e!265377)))

(assert (=> d!74391 (= res!270101 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(assert (=> d!74391 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025) e!265377)))

(assert (= (and d!74391 (not res!270101)) b!453362))

(assert (= (and b!453362 c!56202) b!453361))

(assert (= (and b!453362 (not c!56202)) b!453359))

(assert (= (and b!453361 res!270102) b!453360))

(assert (= (or b!453360 b!453359) bm!30068))

(declare-fun m!437593 () Bool)

(assert (=> bm!30068 m!437593))

(declare-fun m!437595 () Bool)

(assert (=> b!453361 m!437595))

(declare-fun m!437597 () Bool)

(assert (=> b!453361 m!437597))

(declare-fun m!437599 () Bool)

(assert (=> b!453361 m!437599))

(assert (=> b!453361 m!437595))

(declare-fun m!437601 () Bool)

(assert (=> b!453361 m!437601))

(assert (=> b!453362 m!437595))

(assert (=> b!453362 m!437595))

(declare-fun m!437603 () Bool)

(assert (=> b!453362 m!437603))

(assert (=> bm!30040 d!74391))

(declare-fun d!74393 () Bool)

(declare-fun e!265379 () Bool)

(assert (=> d!74393 e!265379))

(declare-fun res!270103 () Bool)

(assert (=> d!74393 (=> res!270103 e!265379)))

(declare-fun lt!205851 () Bool)

(assert (=> d!74393 (= res!270103 (not lt!205851))))

(declare-fun lt!205849 () Bool)

(assert (=> d!74393 (= lt!205851 lt!205849)))

(declare-fun lt!205852 () Unit!13189)

(declare-fun e!265378 () Unit!13189)

(assert (=> d!74393 (= lt!205852 e!265378)))

(declare-fun c!56203 () Bool)

(assert (=> d!74393 (= c!56203 lt!205849)))

(assert (=> d!74393 (= lt!205849 (containsKey!346 (toList!3480 lt!205610) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74393 (= (contains!2500 lt!205610 #b1000000000000000000000000000000000000000000000000000000000000000) lt!205851)))

(declare-fun b!453363 () Bool)

(declare-fun lt!205850 () Unit!13189)

(assert (=> b!453363 (= e!265378 lt!205850)))

(assert (=> b!453363 (= lt!205850 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205610) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453363 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453364 () Bool)

(declare-fun Unit!13207 () Unit!13189)

(assert (=> b!453364 (= e!265378 Unit!13207)))

(declare-fun b!453365 () Bool)

(assert (=> b!453365 (= e!265379 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74393 c!56203) b!453363))

(assert (= (and d!74393 (not c!56203)) b!453364))

(assert (= (and d!74393 (not res!270103)) b!453365))

(declare-fun m!437605 () Bool)

(assert (=> d!74393 m!437605))

(declare-fun m!437607 () Bool)

(assert (=> b!453363 m!437607))

(declare-fun m!437609 () Bool)

(assert (=> b!453363 m!437609))

(assert (=> b!453363 m!437609))

(declare-fun m!437611 () Bool)

(assert (=> b!453363 m!437611))

(assert (=> b!453365 m!437609))

(assert (=> b!453365 m!437609))

(assert (=> b!453365 m!437611))

(assert (=> b!453001 d!74393))

(declare-fun d!74395 () Bool)

(assert (=> d!74395 (arrayContainsKey!0 _keys!709 lt!205643 #b00000000000000000000000000000000)))

(declare-fun lt!205855 () Unit!13189)

(declare-fun choose!13 (array!28049 (_ BitVec 64) (_ BitVec 32)) Unit!13189)

(assert (=> d!74395 (= lt!205855 (choose!13 _keys!709 lt!205643 #b00000000000000000000000000000000))))

(assert (=> d!74395 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!74395 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!205643 #b00000000000000000000000000000000) lt!205855)))

(declare-fun bs!14409 () Bool)

(assert (= bs!14409 d!74395))

(assert (=> bs!14409 m!436933))

(declare-fun m!437613 () Bool)

(assert (=> bs!14409 m!437613))

(assert (=> b!453044 d!74395))

(declare-fun d!74397 () Bool)

(declare-fun res!270104 () Bool)

(declare-fun e!265380 () Bool)

(assert (=> d!74397 (=> res!270104 e!265380)))

(assert (=> d!74397 (= res!270104 (= (select (arr!13466 _keys!709) #b00000000000000000000000000000000) lt!205643))))

(assert (=> d!74397 (= (arrayContainsKey!0 _keys!709 lt!205643 #b00000000000000000000000000000000) e!265380)))

(declare-fun b!453366 () Bool)

(declare-fun e!265381 () Bool)

(assert (=> b!453366 (= e!265380 e!265381)))

(declare-fun res!270105 () Bool)

(assert (=> b!453366 (=> (not res!270105) (not e!265381))))

(assert (=> b!453366 (= res!270105 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun b!453367 () Bool)

(assert (=> b!453367 (= e!265381 (arrayContainsKey!0 _keys!709 lt!205643 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74397 (not res!270104)) b!453366))

(assert (= (and b!453366 res!270105) b!453367))

(assert (=> d!74397 m!436831))

(declare-fun m!437615 () Bool)

(assert (=> b!453367 m!437615))

(assert (=> b!453044 d!74397))

(declare-fun b!453380 () Bool)

(declare-fun e!265390 () SeekEntryResult!3520)

(declare-fun lt!205864 () SeekEntryResult!3520)

(assert (=> b!453380 (= e!265390 (Found!3520 (index!16261 lt!205864)))))

(declare-fun b!453381 () Bool)

(declare-fun e!265388 () SeekEntryResult!3520)

(assert (=> b!453381 (= e!265388 e!265390)))

(declare-fun lt!205862 () (_ BitVec 64))

(assert (=> b!453381 (= lt!205862 (select (arr!13466 _keys!709) (index!16261 lt!205864)))))

(declare-fun c!56211 () Bool)

(assert (=> b!453381 (= c!56211 (= lt!205862 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!453382 () Bool)

(assert (=> b!453382 (= e!265388 Undefined!3520)))

(declare-fun e!265389 () SeekEntryResult!3520)

(declare-fun b!453383 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!28049 (_ BitVec 32)) SeekEntryResult!3520)

(assert (=> b!453383 (= e!265389 (seekKeyOrZeroReturnVacant!0 (x!42444 lt!205864) (index!16261 lt!205864) (index!16261 lt!205864) (select (arr!13466 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025))))

(declare-fun b!453384 () Bool)

(declare-fun c!56212 () Bool)

(assert (=> b!453384 (= c!56212 (= lt!205862 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453384 (= e!265390 e!265389)))

(declare-fun b!453385 () Bool)

(assert (=> b!453385 (= e!265389 (MissingZero!3520 (index!16261 lt!205864)))))

(declare-fun d!74399 () Bool)

(declare-fun lt!205863 () SeekEntryResult!3520)

(assert (=> d!74399 (and (or ((_ is Undefined!3520) lt!205863) (not ((_ is Found!3520) lt!205863)) (and (bvsge (index!16260 lt!205863) #b00000000000000000000000000000000) (bvslt (index!16260 lt!205863) (size!13818 _keys!709)))) (or ((_ is Undefined!3520) lt!205863) ((_ is Found!3520) lt!205863) (not ((_ is MissingZero!3520) lt!205863)) (and (bvsge (index!16259 lt!205863) #b00000000000000000000000000000000) (bvslt (index!16259 lt!205863) (size!13818 _keys!709)))) (or ((_ is Undefined!3520) lt!205863) ((_ is Found!3520) lt!205863) ((_ is MissingZero!3520) lt!205863) (not ((_ is MissingVacant!3520) lt!205863)) (and (bvsge (index!16262 lt!205863) #b00000000000000000000000000000000) (bvslt (index!16262 lt!205863) (size!13818 _keys!709)))) (or ((_ is Undefined!3520) lt!205863) (ite ((_ is Found!3520) lt!205863) (= (select (arr!13466 _keys!709) (index!16260 lt!205863)) (select (arr!13466 _keys!709) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!3520) lt!205863) (= (select (arr!13466 _keys!709) (index!16259 lt!205863)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3520) lt!205863) (= (select (arr!13466 _keys!709) (index!16262 lt!205863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74399 (= lt!205863 e!265388)))

(declare-fun c!56210 () Bool)

(assert (=> d!74399 (= c!56210 (and ((_ is Intermediate!3520) lt!205864) (undefined!4332 lt!205864)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!28049 (_ BitVec 32)) SeekEntryResult!3520)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!74399 (= lt!205864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) mask!1025) (select (arr!13466 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025))))

(assert (=> d!74399 (validMask!0 mask!1025)))

(assert (=> d!74399 (= (seekEntryOrOpen!0 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) lt!205863)))

(assert (= (and d!74399 c!56210) b!453382))

(assert (= (and d!74399 (not c!56210)) b!453381))

(assert (= (and b!453381 c!56211) b!453380))

(assert (= (and b!453381 (not c!56211)) b!453384))

(assert (= (and b!453384 c!56212) b!453385))

(assert (= (and b!453384 (not c!56212)) b!453383))

(declare-fun m!437617 () Bool)

(assert (=> b!453381 m!437617))

(assert (=> b!453383 m!436831))

(declare-fun m!437619 () Bool)

(assert (=> b!453383 m!437619))

(assert (=> d!74399 m!436831))

(declare-fun m!437621 () Bool)

(assert (=> d!74399 m!437621))

(declare-fun m!437623 () Bool)

(assert (=> d!74399 m!437623))

(declare-fun m!437625 () Bool)

(assert (=> d!74399 m!437625))

(assert (=> d!74399 m!437621))

(assert (=> d!74399 m!436831))

(declare-fun m!437627 () Bool)

(assert (=> d!74399 m!437627))

(declare-fun m!437629 () Bool)

(assert (=> d!74399 m!437629))

(assert (=> d!74399 m!436695))

(assert (=> b!453044 d!74399))

(declare-fun d!74401 () Bool)

(assert (=> d!74401 (= (isEmpty!564 lt!205663) (isEmpty!565 (toList!3480 lt!205663)))))

(declare-fun bs!14410 () Bool)

(assert (= bs!14410 d!74401))

(declare-fun m!437631 () Bool)

(assert (=> bs!14410 m!437631))

(assert (=> b!453062 d!74401))

(assert (=> b!453035 d!74295))

(assert (=> b!453104 d!74195))

(declare-fun d!74403 () Bool)

(assert (=> d!74403 (= (get!6654 (select (arr!13467 _values!549) from!863) lt!205553) (v!8370 (select (arr!13467 _values!549) from!863)))))

(assert (=> b!453056 d!74403))

(declare-fun d!74405 () Bool)

(declare-fun e!265392 () Bool)

(assert (=> d!74405 e!265392))

(declare-fun res!270106 () Bool)

(assert (=> d!74405 (=> res!270106 e!265392)))

(declare-fun lt!205867 () Bool)

(assert (=> d!74405 (= res!270106 (not lt!205867))))

(declare-fun lt!205865 () Bool)

(assert (=> d!74405 (= lt!205867 lt!205865)))

(declare-fun lt!205868 () Unit!13189)

(declare-fun e!265391 () Unit!13189)

(assert (=> d!74405 (= lt!205868 e!265391)))

(declare-fun c!56213 () Bool)

(assert (=> d!74405 (= c!56213 lt!205865)))

(assert (=> d!74405 (= lt!205865 (containsKey!346 (toList!3480 lt!205626) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74405 (= (contains!2500 lt!205626 #b0000000000000000000000000000000000000000000000000000000000000000) lt!205867)))

(declare-fun b!453386 () Bool)

(declare-fun lt!205866 () Unit!13189)

(assert (=> b!453386 (= e!265391 lt!205866)))

(assert (=> b!453386 (= lt!205866 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205626) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453386 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453387 () Bool)

(declare-fun Unit!13208 () Unit!13189)

(assert (=> b!453387 (= e!265391 Unit!13208)))

(declare-fun b!453388 () Bool)

(assert (=> b!453388 (= e!265392 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74405 c!56213) b!453386))

(assert (= (and d!74405 (not c!56213)) b!453387))

(assert (= (and d!74405 (not res!270106)) b!453388))

(declare-fun m!437633 () Bool)

(assert (=> d!74405 m!437633))

(declare-fun m!437635 () Bool)

(assert (=> b!453386 m!437635))

(declare-fun m!437637 () Bool)

(assert (=> b!453386 m!437637))

(assert (=> b!453386 m!437637))

(declare-fun m!437639 () Bool)

(assert (=> b!453386 m!437639))

(assert (=> b!453388 m!437637))

(assert (=> b!453388 m!437637))

(assert (=> b!453388 m!437639))

(assert (=> d!74207 d!74405))

(assert (=> d!74207 d!74235))

(declare-fun d!74407 () Bool)

(declare-fun e!265394 () Bool)

(assert (=> d!74407 e!265394))

(declare-fun res!270107 () Bool)

(assert (=> d!74407 (=> res!270107 e!265394)))

(declare-fun lt!205871 () Bool)

(assert (=> d!74407 (= res!270107 (not lt!205871))))

(declare-fun lt!205869 () Bool)

(assert (=> d!74407 (= lt!205871 lt!205869)))

(declare-fun lt!205872 () Unit!13189)

(declare-fun e!265393 () Unit!13189)

(assert (=> d!74407 (= lt!205872 e!265393)))

(declare-fun c!56214 () Bool)

(assert (=> d!74407 (= c!56214 lt!205869)))

(assert (=> d!74407 (= lt!205869 (containsKey!346 (toList!3480 lt!205685) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74407 (= (contains!2500 lt!205685 #b0000000000000000000000000000000000000000000000000000000000000000) lt!205871)))

(declare-fun b!453389 () Bool)

(declare-fun lt!205870 () Unit!13189)

(assert (=> b!453389 (= e!265393 lt!205870)))

(assert (=> b!453389 (= lt!205870 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205685) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453389 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453390 () Bool)

(declare-fun Unit!13209 () Unit!13189)

(assert (=> b!453390 (= e!265393 Unit!13209)))

(declare-fun b!453391 () Bool)

(assert (=> b!453391 (= e!265394 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74407 c!56214) b!453389))

(assert (= (and d!74407 (not c!56214)) b!453390))

(assert (= (and d!74407 (not res!270107)) b!453391))

(declare-fun m!437641 () Bool)

(assert (=> d!74407 m!437641))

(declare-fun m!437643 () Bool)

(assert (=> b!453389 m!437643))

(declare-fun m!437645 () Bool)

(assert (=> b!453389 m!437645))

(assert (=> b!453389 m!437645))

(declare-fun m!437647 () Bool)

(assert (=> b!453389 m!437647))

(assert (=> b!453391 m!437645))

(assert (=> b!453391 m!437645))

(assert (=> b!453391 m!437647))

(assert (=> d!74241 d!74407))

(assert (=> d!74241 d!74235))

(declare-fun d!74409 () Bool)

(declare-fun e!265396 () Bool)

(assert (=> d!74409 e!265396))

(declare-fun res!270108 () Bool)

(assert (=> d!74409 (=> res!270108 e!265396)))

(declare-fun lt!205875 () Bool)

(assert (=> d!74409 (= res!270108 (not lt!205875))))

(declare-fun lt!205873 () Bool)

(assert (=> d!74409 (= lt!205875 lt!205873)))

(declare-fun lt!205876 () Unit!13189)

(declare-fun e!265395 () Unit!13189)

(assert (=> d!74409 (= lt!205876 e!265395)))

(declare-fun c!56215 () Bool)

(assert (=> d!74409 (= c!56215 lt!205873)))

(assert (=> d!74409 (= lt!205873 (containsKey!346 (toList!3480 lt!205610) (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> d!74409 (= (contains!2500 lt!205610 (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) lt!205875)))

(declare-fun b!453392 () Bool)

(declare-fun lt!205874 () Unit!13189)

(assert (=> b!453392 (= e!265395 lt!205874)))

(assert (=> b!453392 (= lt!205874 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205610) (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453392 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453393 () Bool)

(declare-fun Unit!13210 () Unit!13189)

(assert (=> b!453393 (= e!265395 Unit!13210)))

(declare-fun b!453394 () Bool)

(assert (=> b!453394 (= e!265396 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205610) (select (arr!13466 (ite c!56078 lt!205547 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))))

(assert (= (and d!74409 c!56215) b!453392))

(assert (= (and d!74409 (not c!56215)) b!453393))

(assert (= (and d!74409 (not res!270108)) b!453394))

(assert (=> d!74409 m!436851))

(declare-fun m!437649 () Bool)

(assert (=> d!74409 m!437649))

(assert (=> b!453392 m!436851))

(declare-fun m!437651 () Bool)

(assert (=> b!453392 m!437651))

(assert (=> b!453392 m!436851))

(assert (=> b!453392 m!437103))

(assert (=> b!453392 m!437103))

(declare-fun m!437653 () Bool)

(assert (=> b!453392 m!437653))

(assert (=> b!453394 m!436851))

(assert (=> b!453394 m!437103))

(assert (=> b!453394 m!437103))

(assert (=> b!453394 m!437653))

(assert (=> b!453008 d!74409))

(assert (=> b!452972 d!74277))

(assert (=> b!453068 d!74307))

(assert (=> b!453010 d!74365))

(declare-fun d!74411 () Bool)

(declare-fun lt!205879 () Bool)

(declare-fun content!204 (List!8104) (InoxSet (_ BitVec 64)))

(assert (=> d!74411 (= lt!205879 (select (content!204 Nil!8101) (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun e!265401 () Bool)

(assert (=> d!74411 (= lt!205879 e!265401)))

(declare-fun res!270114 () Bool)

(assert (=> d!74411 (=> (not res!270114) (not e!265401))))

(assert (=> d!74411 (= res!270114 ((_ is Cons!8100) Nil!8101))))

(assert (=> d!74411 (= (contains!2499 Nil!8101 (select (arr!13466 _keys!709) #b00000000000000000000000000000000)) lt!205879)))

(declare-fun b!453399 () Bool)

(declare-fun e!265402 () Bool)

(assert (=> b!453399 (= e!265401 e!265402)))

(declare-fun res!270113 () Bool)

(assert (=> b!453399 (=> res!270113 e!265402)))

(assert (=> b!453399 (= res!270113 (= (h!8956 Nil!8101) (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!453400 () Bool)

(assert (=> b!453400 (= e!265402 (contains!2499 (t!13938 Nil!8101) (select (arr!13466 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!74411 res!270114) b!453399))

(assert (= (and b!453399 (not res!270113)) b!453400))

(declare-fun m!437655 () Bool)

(assert (=> d!74411 m!437655))

(assert (=> d!74411 m!436831))

(declare-fun m!437657 () Bool)

(assert (=> d!74411 m!437657))

(assert (=> b!453400 m!436831))

(declare-fun m!437659 () Bool)

(assert (=> b!453400 m!437659))

(assert (=> b!452974 d!74411))

(declare-fun d!74413 () Bool)

(declare-fun e!265404 () Bool)

(assert (=> d!74413 e!265404))

(declare-fun res!270115 () Bool)

(assert (=> d!74413 (=> res!270115 e!265404)))

(declare-fun lt!205882 () Bool)

(assert (=> d!74413 (= res!270115 (not lt!205882))))

(declare-fun lt!205880 () Bool)

(assert (=> d!74413 (= lt!205882 lt!205880)))

(declare-fun lt!205883 () Unit!13189)

(declare-fun e!265403 () Unit!13189)

(assert (=> d!74413 (= lt!205883 e!265403)))

(declare-fun c!56216 () Bool)

(assert (=> d!74413 (= c!56216 lt!205880)))

(assert (=> d!74413 (= lt!205880 (containsKey!346 (toList!3480 lt!205650) (_1!4011 lt!205555)))))

(assert (=> d!74413 (= (contains!2500 lt!205650 (_1!4011 lt!205555)) lt!205882)))

(declare-fun b!453401 () Bool)

(declare-fun lt!205881 () Unit!13189)

(assert (=> b!453401 (= e!265403 lt!205881)))

(assert (=> b!453401 (= lt!205881 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205650) (_1!4011 lt!205555)))))

(assert (=> b!453401 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205650) (_1!4011 lt!205555)))))

(declare-fun b!453402 () Bool)

(declare-fun Unit!13211 () Unit!13189)

(assert (=> b!453402 (= e!265403 Unit!13211)))

(declare-fun b!453403 () Bool)

(assert (=> b!453403 (= e!265404 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205650) (_1!4011 lt!205555))))))

(assert (= (and d!74413 c!56216) b!453401))

(assert (= (and d!74413 (not c!56216)) b!453402))

(assert (= (and d!74413 (not res!270115)) b!453403))

(declare-fun m!437661 () Bool)

(assert (=> d!74413 m!437661))

(declare-fun m!437663 () Bool)

(assert (=> b!453401 m!437663))

(assert (=> b!453401 m!436951))

(assert (=> b!453401 m!436951))

(declare-fun m!437665 () Bool)

(assert (=> b!453401 m!437665))

(assert (=> b!453403 m!436951))

(assert (=> b!453403 m!436951))

(assert (=> b!453403 m!437665))

(assert (=> d!74219 d!74413))

(declare-fun b!453404 () Bool)

(declare-fun e!265405 () Option!375)

(assert (=> b!453404 (= e!265405 (Some!374 (_2!4011 (h!8957 lt!205649))))))

(declare-fun d!74415 () Bool)

(declare-fun c!56217 () Bool)

(assert (=> d!74415 (= c!56217 (and ((_ is Cons!8101) lt!205649) (= (_1!4011 (h!8957 lt!205649)) (_1!4011 lt!205555))))))

(assert (=> d!74415 (= (getValueByKey!369 lt!205649 (_1!4011 lt!205555)) e!265405)))

(declare-fun b!453405 () Bool)

(declare-fun e!265406 () Option!375)

(assert (=> b!453405 (= e!265405 e!265406)))

(declare-fun c!56218 () Bool)

(assert (=> b!453405 (= c!56218 (and ((_ is Cons!8101) lt!205649) (not (= (_1!4011 (h!8957 lt!205649)) (_1!4011 lt!205555)))))))

(declare-fun b!453406 () Bool)

(assert (=> b!453406 (= e!265406 (getValueByKey!369 (t!13939 lt!205649) (_1!4011 lt!205555)))))

(declare-fun b!453407 () Bool)

(assert (=> b!453407 (= e!265406 None!373)))

(assert (= (and d!74415 c!56217) b!453404))

(assert (= (and d!74415 (not c!56217)) b!453405))

(assert (= (and b!453405 c!56218) b!453406))

(assert (= (and b!453405 (not c!56218)) b!453407))

(declare-fun m!437667 () Bool)

(assert (=> b!453406 m!437667))

(assert (=> d!74219 d!74415))

(declare-fun d!74417 () Bool)

(assert (=> d!74417 (= (getValueByKey!369 lt!205649 (_1!4011 lt!205555)) (Some!374 (_2!4011 lt!205555)))))

(declare-fun lt!205884 () Unit!13189)

(assert (=> d!74417 (= lt!205884 (choose!1338 lt!205649 (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(declare-fun e!265407 () Bool)

(assert (=> d!74417 e!265407))

(declare-fun res!270116 () Bool)

(assert (=> d!74417 (=> (not res!270116) (not e!265407))))

(assert (=> d!74417 (= res!270116 (isStrictlySorted!373 lt!205649))))

(assert (=> d!74417 (= (lemmaContainsTupThenGetReturnValue!193 lt!205649 (_1!4011 lt!205555) (_2!4011 lt!205555)) lt!205884)))

(declare-fun b!453408 () Bool)

(declare-fun res!270117 () Bool)

(assert (=> b!453408 (=> (not res!270117) (not e!265407))))

(assert (=> b!453408 (= res!270117 (containsKey!346 lt!205649 (_1!4011 lt!205555)))))

(declare-fun b!453409 () Bool)

(assert (=> b!453409 (= e!265407 (contains!2501 lt!205649 (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555))))))

(assert (= (and d!74417 res!270116) b!453408))

(assert (= (and b!453408 res!270117) b!453409))

(assert (=> d!74417 m!436945))

(declare-fun m!437669 () Bool)

(assert (=> d!74417 m!437669))

(declare-fun m!437671 () Bool)

(assert (=> d!74417 m!437671))

(declare-fun m!437673 () Bool)

(assert (=> b!453408 m!437673))

(declare-fun m!437675 () Bool)

(assert (=> b!453409 m!437675))

(assert (=> d!74219 d!74417))

(declare-fun d!74419 () Bool)

(declare-fun e!265408 () Bool)

(assert (=> d!74419 e!265408))

(declare-fun res!270119 () Bool)

(assert (=> d!74419 (=> (not res!270119) (not e!265408))))

(declare-fun lt!205885 () List!8105)

(assert (=> d!74419 (= res!270119 (isStrictlySorted!373 lt!205885))))

(declare-fun e!265411 () List!8105)

(assert (=> d!74419 (= lt!205885 e!265411)))

(declare-fun c!56220 () Bool)

(assert (=> d!74419 (= c!56220 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvslt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 lt!205555))))))

(assert (=> d!74419 (isStrictlySorted!373 (toList!3480 lt!205552))))

(assert (=> d!74419 (= (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 lt!205555) (_2!4011 lt!205555)) lt!205885)))

(declare-fun c!56221 () Bool)

(declare-fun c!56219 () Bool)

(declare-fun b!453410 () Bool)

(declare-fun e!265410 () List!8105)

(assert (=> b!453410 (= e!265410 (ite c!56221 (t!13939 (toList!3480 lt!205552)) (ite c!56219 (Cons!8101 (h!8957 (toList!3480 lt!205552)) (t!13939 (toList!3480 lt!205552))) Nil!8102)))))

(declare-fun b!453411 () Bool)

(declare-fun res!270118 () Bool)

(assert (=> b!453411 (=> (not res!270118) (not e!265408))))

(assert (=> b!453411 (= res!270118 (containsKey!346 lt!205885 (_1!4011 lt!205555)))))

(declare-fun bm!30069 () Bool)

(declare-fun call!30072 () List!8105)

(declare-fun call!30074 () List!8105)

(assert (=> bm!30069 (= call!30072 call!30074)))

(declare-fun b!453412 () Bool)

(declare-fun e!265412 () List!8105)

(declare-fun call!30073 () List!8105)

(assert (=> b!453412 (= e!265412 call!30073)))

(declare-fun b!453413 () Bool)

(declare-fun e!265409 () List!8105)

(assert (=> b!453413 (= e!265411 e!265409)))

(assert (=> b!453413 (= c!56221 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (= (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 lt!205555))))))

(declare-fun b!453414 () Bool)

(assert (=> b!453414 (= c!56219 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvsgt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 lt!205555))))))

(assert (=> b!453414 (= e!265409 e!265412)))

(declare-fun b!453415 () Bool)

(assert (=> b!453415 (= e!265410 (insertStrictlySorted!195 (t!13939 (toList!3480 lt!205552)) (_1!4011 lt!205555) (_2!4011 lt!205555)))))

(declare-fun bm!30070 () Bool)

(assert (=> bm!30070 (= call!30073 call!30072)))

(declare-fun bm!30071 () Bool)

(assert (=> bm!30071 (= call!30074 ($colon$colon!108 e!265410 (ite c!56220 (h!8957 (toList!3480 lt!205552)) (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555)))))))

(declare-fun c!56222 () Bool)

(assert (=> bm!30071 (= c!56222 c!56220)))

(declare-fun b!453416 () Bool)

(assert (=> b!453416 (= e!265411 call!30074)))

(declare-fun b!453417 () Bool)

(assert (=> b!453417 (= e!265412 call!30073)))

(declare-fun b!453418 () Bool)

(assert (=> b!453418 (= e!265409 call!30072)))

(declare-fun b!453419 () Bool)

(assert (=> b!453419 (= e!265408 (contains!2501 lt!205885 (tuple2!8003 (_1!4011 lt!205555) (_2!4011 lt!205555))))))

(assert (= (and d!74419 c!56220) b!453416))

(assert (= (and d!74419 (not c!56220)) b!453413))

(assert (= (and b!453413 c!56221) b!453418))

(assert (= (and b!453413 (not c!56221)) b!453414))

(assert (= (and b!453414 c!56219) b!453412))

(assert (= (and b!453414 (not c!56219)) b!453417))

(assert (= (or b!453412 b!453417) bm!30070))

(assert (= (or b!453418 bm!30070) bm!30069))

(assert (= (or b!453416 bm!30069) bm!30071))

(assert (= (and bm!30071 c!56222) b!453415))

(assert (= (and bm!30071 (not c!56222)) b!453410))

(assert (= (and d!74419 res!270119) b!453411))

(assert (= (and b!453411 res!270118) b!453419))

(declare-fun m!437677 () Bool)

(assert (=> bm!30071 m!437677))

(declare-fun m!437679 () Bool)

(assert (=> b!453415 m!437679))

(declare-fun m!437681 () Bool)

(assert (=> d!74419 m!437681))

(assert (=> d!74419 m!437353))

(declare-fun m!437683 () Bool)

(assert (=> b!453419 m!437683))

(declare-fun m!437685 () Bool)

(assert (=> b!453411 m!437685))

(assert (=> d!74219 d!74419))

(declare-fun b!453420 () Bool)

(assert (=> b!453420 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> b!453420 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13819 lt!205554)))))

(declare-fun e!265419 () Bool)

(declare-fun lt!205888 () ListLongMap!6929)

(assert (=> b!453420 (= e!265419 (= (apply!313 lt!205888 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001))) (get!6652 (select (arr!13467 lt!205554) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453422 () Bool)

(declare-fun lt!205891 () Unit!13189)

(declare-fun lt!205886 () Unit!13189)

(assert (=> b!453422 (= lt!205891 lt!205886)))

(declare-fun lt!205889 () V!17293)

(declare-fun lt!205890 () (_ BitVec 64))

(declare-fun lt!205887 () (_ BitVec 64))

(declare-fun lt!205892 () ListLongMap!6929)

(assert (=> b!453422 (not (contains!2500 (+!1545 lt!205892 (tuple2!8003 lt!205887 lt!205889)) lt!205890))))

(assert (=> b!453422 (= lt!205886 (addStillNotContains!148 lt!205892 lt!205887 lt!205889 lt!205890))))

(assert (=> b!453422 (= lt!205890 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453422 (= lt!205889 (get!6652 (select (arr!13467 lt!205554) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453422 (= lt!205887 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001)))))

(declare-fun call!30075 () ListLongMap!6929)

(assert (=> b!453422 (= lt!205892 call!30075)))

(declare-fun e!265415 () ListLongMap!6929)

(assert (=> b!453422 (= e!265415 (+!1545 call!30075 (tuple2!8003 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001)) (get!6652 (select (arr!13467 lt!205554) (bvadd from!863 #b00000000000000000000000000000001)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453423 () Bool)

(declare-fun e!265416 () ListLongMap!6929)

(assert (=> b!453423 (= e!265416 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30072 () Bool)

(assert (=> bm!30072 (= call!30075 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453424 () Bool)

(declare-fun e!265413 () Bool)

(assert (=> b!453424 (= e!265413 (isEmpty!564 lt!205888))))

(declare-fun b!453425 () Bool)

(assert (=> b!453425 (= e!265413 (= lt!205888 (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453426 () Bool)

(declare-fun e!265414 () Bool)

(declare-fun e!265418 () Bool)

(assert (=> b!453426 (= e!265414 e!265418)))

(declare-fun c!56226 () Bool)

(declare-fun e!265417 () Bool)

(assert (=> b!453426 (= c!56226 e!265417)))

(declare-fun res!270121 () Bool)

(assert (=> b!453426 (=> (not res!270121) (not e!265417))))

(assert (=> b!453426 (= res!270121 (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun b!453427 () Bool)

(assert (=> b!453427 (= e!265418 e!265413)))

(declare-fun c!56224 () Bool)

(assert (=> b!453427 (= c!56224 (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun b!453428 () Bool)

(assert (=> b!453428 (= e!265418 e!265419)))

(assert (=> b!453428 (and (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun res!270123 () Bool)

(assert (=> b!453428 (= res!270123 (contains!2500 lt!205888 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453428 (=> (not res!270123) (not e!265419))))

(declare-fun b!453429 () Bool)

(assert (=> b!453429 (= e!265415 call!30075)))

(declare-fun b!453421 () Bool)

(declare-fun res!270122 () Bool)

(assert (=> b!453421 (=> (not res!270122) (not e!265414))))

(assert (=> b!453421 (= res!270122 (not (contains!2500 lt!205888 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74421 () Bool)

(assert (=> d!74421 e!265414))

(declare-fun res!270120 () Bool)

(assert (=> d!74421 (=> (not res!270120) (not e!265414))))

(assert (=> d!74421 (= res!270120 (not (contains!2500 lt!205888 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74421 (= lt!205888 e!265416)))

(declare-fun c!56223 () Bool)

(assert (=> d!74421 (= c!56223 (bvsge (bvadd from!863 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> d!74421 (validMask!0 mask!1025)))

(assert (=> d!74421 (= (getCurrentListMapNoExtraKeys!1656 lt!205547 lt!205554 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557) lt!205888)))

(declare-fun b!453430 () Bool)

(assert (=> b!453430 (= e!265416 e!265415)))

(declare-fun c!56225 () Bool)

(assert (=> b!453430 (= c!56225 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001))))))

(declare-fun b!453431 () Bool)

(assert (=> b!453431 (= e!265417 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd from!863 #b00000000000000000000000000000001))))))

(assert (=> b!453431 (bvsge (bvadd from!863 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!74421 c!56223) b!453423))

(assert (= (and d!74421 (not c!56223)) b!453430))

(assert (= (and b!453430 c!56225) b!453422))

(assert (= (and b!453430 (not c!56225)) b!453429))

(assert (= (or b!453422 b!453429) bm!30072))

(assert (= (and d!74421 res!270120) b!453421))

(assert (= (and b!453421 res!270122) b!453426))

(assert (= (and b!453426 res!270121) b!453431))

(assert (= (and b!453426 c!56226) b!453428))

(assert (= (and b!453426 (not c!56226)) b!453427))

(assert (= (and b!453428 res!270123) b!453420))

(assert (= (and b!453427 c!56224) b!453425))

(assert (= (and b!453427 (not c!56224)) b!453424))

(declare-fun b_lambda!9673 () Bool)

(assert (=> (not b_lambda!9673) (not b!453420)))

(assert (=> b!453420 t!13937))

(declare-fun b_and!18955 () Bool)

(assert (= b_and!18953 (and (=> t!13937 result!7111) b_and!18955)))

(declare-fun b_lambda!9675 () Bool)

(assert (=> (not b_lambda!9675) (not b!453422)))

(assert (=> b!453422 t!13937))

(declare-fun b_and!18957 () Bool)

(assert (= b_and!18955 (and (=> t!13937 result!7111) b_and!18957)))

(declare-fun m!437687 () Bool)

(assert (=> d!74421 m!437687))

(assert (=> d!74421 m!436695))

(declare-fun m!437689 () Bool)

(assert (=> b!453431 m!437689))

(assert (=> b!453431 m!437689))

(declare-fun m!437691 () Bool)

(assert (=> b!453431 m!437691))

(declare-fun m!437693 () Bool)

(assert (=> bm!30072 m!437693))

(assert (=> b!453420 m!437689))

(assert (=> b!453420 m!436755))

(declare-fun m!437695 () Bool)

(assert (=> b!453420 m!437695))

(assert (=> b!453420 m!436755))

(declare-fun m!437697 () Bool)

(assert (=> b!453420 m!437697))

(assert (=> b!453420 m!437689))

(declare-fun m!437699 () Bool)

(assert (=> b!453420 m!437699))

(assert (=> b!453420 m!437695))

(declare-fun m!437701 () Bool)

(assert (=> b!453421 m!437701))

(assert (=> b!453425 m!437693))

(declare-fun m!437703 () Bool)

(assert (=> b!453422 m!437703))

(assert (=> b!453422 m!437689))

(declare-fun m!437705 () Bool)

(assert (=> b!453422 m!437705))

(declare-fun m!437707 () Bool)

(assert (=> b!453422 m!437707))

(assert (=> b!453422 m!436755))

(assert (=> b!453422 m!437695))

(assert (=> b!453422 m!436755))

(assert (=> b!453422 m!437697))

(assert (=> b!453422 m!437705))

(declare-fun m!437709 () Bool)

(assert (=> b!453422 m!437709))

(assert (=> b!453422 m!437695))

(declare-fun m!437711 () Bool)

(assert (=> b!453424 m!437711))

(assert (=> b!453430 m!437689))

(assert (=> b!453430 m!437689))

(assert (=> b!453430 m!437691))

(assert (=> b!453428 m!437689))

(assert (=> b!453428 m!437689))

(declare-fun m!437713 () Bool)

(assert (=> b!453428 m!437713))

(assert (=> b!453086 d!74421))

(declare-fun d!74423 () Bool)

(declare-fun e!265421 () Bool)

(assert (=> d!74423 e!265421))

(declare-fun res!270124 () Bool)

(assert (=> d!74423 (=> res!270124 e!265421)))

(declare-fun lt!205895 () Bool)

(assert (=> d!74423 (= res!270124 (not lt!205895))))

(declare-fun lt!205893 () Bool)

(assert (=> d!74423 (= lt!205895 lt!205893)))

(declare-fun lt!205896 () Unit!13189)

(declare-fun e!265420 () Unit!13189)

(assert (=> d!74423 (= lt!205896 e!265420)))

(declare-fun c!56227 () Bool)

(assert (=> d!74423 (= c!56227 lt!205893)))

(assert (=> d!74423 (= lt!205893 (containsKey!346 (toList!3480 lt!205663) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> d!74423 (= (contains!2500 lt!205663 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))) lt!205895)))

(declare-fun b!453432 () Bool)

(declare-fun lt!205894 () Unit!13189)

(assert (=> b!453432 (= e!265420 lt!205894)))

(assert (=> b!453432 (= lt!205894 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205663) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453432 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453433 () Bool)

(declare-fun Unit!13212 () Unit!13189)

(assert (=> b!453433 (= e!265420 Unit!13212)))

(declare-fun b!453434 () Bool)

(assert (=> b!453434 (= e!265421 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205663) (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000001 from!863)))))))

(assert (= (and d!74423 c!56227) b!453432))

(assert (= (and d!74423 (not c!56227)) b!453433))

(assert (= (and d!74423 (not res!270124)) b!453434))

(assert (=> d!74423 m!436985))

(declare-fun m!437715 () Bool)

(assert (=> d!74423 m!437715))

(assert (=> b!453432 m!436985))

(declare-fun m!437717 () Bool)

(assert (=> b!453432 m!437717))

(assert (=> b!453432 m!436985))

(assert (=> b!453432 m!437185))

(assert (=> b!453432 m!437185))

(declare-fun m!437719 () Bool)

(assert (=> b!453432 m!437719))

(assert (=> b!453434 m!436985))

(assert (=> b!453434 m!437185))

(assert (=> b!453434 m!437185))

(assert (=> b!453434 m!437719))

(assert (=> b!453066 d!74423))

(declare-fun d!74425 () Bool)

(declare-fun e!265422 () Bool)

(assert (=> d!74425 e!265422))

(declare-fun res!270125 () Bool)

(assert (=> d!74425 (=> (not res!270125) (not e!265422))))

(declare-fun lt!205898 () ListLongMap!6929)

(assert (=> d!74425 (= res!270125 (contains!2500 lt!205898 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!205897 () List!8105)

(assert (=> d!74425 (= lt!205898 (ListLongMap!6930 lt!205897))))

(declare-fun lt!205900 () Unit!13189)

(declare-fun lt!205899 () Unit!13189)

(assert (=> d!74425 (= lt!205900 lt!205899)))

(assert (=> d!74425 (= (getValueByKey!369 lt!205897 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74425 (= lt!205899 (lemmaContainsTupThenGetReturnValue!193 lt!205897 (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74425 (= lt!205897 (insertStrictlySorted!195 (toList!3480 call!30046) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74425 (= (+!1545 call!30046 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!205898)))

(declare-fun b!453435 () Bool)

(declare-fun res!270126 () Bool)

(assert (=> b!453435 (=> (not res!270126) (not e!265422))))

(assert (=> b!453435 (= res!270126 (= (getValueByKey!369 (toList!3480 lt!205898) (_1!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!374 (_2!4011 (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!453436 () Bool)

(assert (=> b!453436 (= e!265422 (contains!2501 (toList!3480 lt!205898) (tuple2!8003 (select (arr!13466 lt!205547) from!863) (get!6652 (select (arr!13467 lt!205554) from!863) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!74425 res!270125) b!453435))

(assert (= (and b!453435 res!270126) b!453436))

(declare-fun m!437721 () Bool)

(assert (=> d!74425 m!437721))

(declare-fun m!437723 () Bool)

(assert (=> d!74425 m!437723))

(declare-fun m!437725 () Bool)

(assert (=> d!74425 m!437725))

(declare-fun m!437727 () Bool)

(assert (=> d!74425 m!437727))

(declare-fun m!437729 () Bool)

(assert (=> b!453435 m!437729))

(declare-fun m!437731 () Bool)

(assert (=> b!453436 m!437731))

(assert (=> b!453083 d!74425))

(declare-fun d!74427 () Bool)

(declare-fun e!265423 () Bool)

(assert (=> d!74427 e!265423))

(declare-fun res!270127 () Bool)

(assert (=> d!74427 (=> (not res!270127) (not e!265423))))

(declare-fun lt!205902 () ListLongMap!6929)

(assert (=> d!74427 (= res!270127 (contains!2500 lt!205902 (_1!4011 (tuple2!8003 lt!205677 lt!205679))))))

(declare-fun lt!205901 () List!8105)

(assert (=> d!74427 (= lt!205902 (ListLongMap!6930 lt!205901))))

(declare-fun lt!205904 () Unit!13189)

(declare-fun lt!205903 () Unit!13189)

(assert (=> d!74427 (= lt!205904 lt!205903)))

(assert (=> d!74427 (= (getValueByKey!369 lt!205901 (_1!4011 (tuple2!8003 lt!205677 lt!205679))) (Some!374 (_2!4011 (tuple2!8003 lt!205677 lt!205679))))))

(assert (=> d!74427 (= lt!205903 (lemmaContainsTupThenGetReturnValue!193 lt!205901 (_1!4011 (tuple2!8003 lt!205677 lt!205679)) (_2!4011 (tuple2!8003 lt!205677 lt!205679))))))

(assert (=> d!74427 (= lt!205901 (insertStrictlySorted!195 (toList!3480 lt!205682) (_1!4011 (tuple2!8003 lt!205677 lt!205679)) (_2!4011 (tuple2!8003 lt!205677 lt!205679))))))

(assert (=> d!74427 (= (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679)) lt!205902)))

(declare-fun b!453437 () Bool)

(declare-fun res!270128 () Bool)

(assert (=> b!453437 (=> (not res!270128) (not e!265423))))

(assert (=> b!453437 (= res!270128 (= (getValueByKey!369 (toList!3480 lt!205902) (_1!4011 (tuple2!8003 lt!205677 lt!205679))) (Some!374 (_2!4011 (tuple2!8003 lt!205677 lt!205679)))))))

(declare-fun b!453438 () Bool)

(assert (=> b!453438 (= e!265423 (contains!2501 (toList!3480 lt!205902) (tuple2!8003 lt!205677 lt!205679)))))

(assert (= (and d!74427 res!270127) b!453437))

(assert (= (and b!453437 res!270128) b!453438))

(declare-fun m!437733 () Bool)

(assert (=> d!74427 m!437733))

(declare-fun m!437735 () Bool)

(assert (=> d!74427 m!437735))

(declare-fun m!437737 () Bool)

(assert (=> d!74427 m!437737))

(declare-fun m!437739 () Bool)

(assert (=> d!74427 m!437739))

(declare-fun m!437741 () Bool)

(assert (=> b!453437 m!437741))

(declare-fun m!437743 () Bool)

(assert (=> b!453438 m!437743))

(assert (=> b!453083 d!74427))

(assert (=> b!453083 d!74383))

(declare-fun d!74429 () Bool)

(declare-fun e!265425 () Bool)

(assert (=> d!74429 e!265425))

(declare-fun res!270129 () Bool)

(assert (=> d!74429 (=> res!270129 e!265425)))

(declare-fun lt!205907 () Bool)

(assert (=> d!74429 (= res!270129 (not lt!205907))))

(declare-fun lt!205905 () Bool)

(assert (=> d!74429 (= lt!205907 lt!205905)))

(declare-fun lt!205908 () Unit!13189)

(declare-fun e!265424 () Unit!13189)

(assert (=> d!74429 (= lt!205908 e!265424)))

(declare-fun c!56228 () Bool)

(assert (=> d!74429 (= c!56228 lt!205905)))

(assert (=> d!74429 (= lt!205905 (containsKey!346 (toList!3480 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679))) lt!205680))))

(assert (=> d!74429 (= (contains!2500 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679)) lt!205680) lt!205907)))

(declare-fun b!453439 () Bool)

(declare-fun lt!205906 () Unit!13189)

(assert (=> b!453439 (= e!265424 lt!205906)))

(assert (=> b!453439 (= lt!205906 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679))) lt!205680))))

(assert (=> b!453439 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679))) lt!205680))))

(declare-fun b!453440 () Bool)

(declare-fun Unit!13213 () Unit!13189)

(assert (=> b!453440 (= e!265424 Unit!13213)))

(declare-fun b!453441 () Bool)

(assert (=> b!453441 (= e!265425 (isDefined!296 (getValueByKey!369 (toList!3480 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679))) lt!205680)))))

(assert (= (and d!74429 c!56228) b!453439))

(assert (= (and d!74429 (not c!56228)) b!453440))

(assert (= (and d!74429 (not res!270129)) b!453441))

(declare-fun m!437745 () Bool)

(assert (=> d!74429 m!437745))

(declare-fun m!437747 () Bool)

(assert (=> b!453439 m!437747))

(declare-fun m!437749 () Bool)

(assert (=> b!453439 m!437749))

(assert (=> b!453439 m!437749))

(declare-fun m!437751 () Bool)

(assert (=> b!453439 m!437751))

(assert (=> b!453441 m!437749))

(assert (=> b!453441 m!437749))

(assert (=> b!453441 m!437751))

(assert (=> b!453083 d!74429))

(declare-fun d!74431 () Bool)

(assert (=> d!74431 (not (contains!2500 (+!1545 lt!205682 (tuple2!8003 lt!205677 lt!205679)) lt!205680))))

(declare-fun lt!205909 () Unit!13189)

(assert (=> d!74431 (= lt!205909 (choose!1337 lt!205682 lt!205677 lt!205679 lt!205680))))

(declare-fun e!265426 () Bool)

(assert (=> d!74431 e!265426))

(declare-fun res!270130 () Bool)

(assert (=> d!74431 (=> (not res!270130) (not e!265426))))

(assert (=> d!74431 (= res!270130 (not (contains!2500 lt!205682 lt!205680)))))

(assert (=> d!74431 (= (addStillNotContains!148 lt!205682 lt!205677 lt!205679 lt!205680) lt!205909)))

(declare-fun b!453442 () Bool)

(assert (=> b!453442 (= e!265426 (not (= lt!205677 lt!205680)))))

(assert (= (and d!74431 res!270130) b!453442))

(assert (=> d!74431 m!437059))

(assert (=> d!74431 m!437059))

(assert (=> d!74431 m!437063))

(declare-fun m!437753 () Bool)

(assert (=> d!74431 m!437753))

(declare-fun m!437755 () Bool)

(assert (=> d!74431 m!437755))

(assert (=> b!453083 d!74431))

(assert (=> bm!30043 d!74421))

(declare-fun d!74433 () Bool)

(declare-fun e!265428 () Bool)

(assert (=> d!74433 e!265428))

(declare-fun res!270131 () Bool)

(assert (=> d!74433 (=> res!270131 e!265428)))

(declare-fun lt!205912 () Bool)

(assert (=> d!74433 (= res!270131 (not lt!205912))))

(declare-fun lt!205910 () Bool)

(assert (=> d!74433 (= lt!205912 lt!205910)))

(declare-fun lt!205913 () Unit!13189)

(declare-fun e!265427 () Unit!13189)

(assert (=> d!74433 (= lt!205913 e!265427)))

(declare-fun c!56229 () Bool)

(assert (=> d!74433 (= c!56229 lt!205910)))

(assert (=> d!74433 (= lt!205910 (containsKey!346 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74433 (= (contains!2500 lt!205640 (_1!4011 (tuple2!8003 k0!794 v!412))) lt!205912)))

(declare-fun b!453443 () Bool)

(declare-fun lt!205911 () Unit!13189)

(assert (=> b!453443 (= e!265427 lt!205911)))

(assert (=> b!453443 (= lt!205911 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> b!453443 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453444 () Bool)

(declare-fun Unit!13214 () Unit!13189)

(assert (=> b!453444 (= e!265427 Unit!13214)))

(declare-fun b!453445 () Bool)

(assert (=> b!453445 (= e!265428 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205640) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74433 c!56229) b!453443))

(assert (= (and d!74433 (not c!56229)) b!453444))

(assert (= (and d!74433 (not res!270131)) b!453445))

(declare-fun m!437757 () Bool)

(assert (=> d!74433 m!437757))

(declare-fun m!437759 () Bool)

(assert (=> b!453443 m!437759))

(assert (=> b!453443 m!436925))

(assert (=> b!453443 m!436925))

(declare-fun m!437761 () Bool)

(assert (=> b!453443 m!437761))

(assert (=> b!453445 m!436925))

(assert (=> b!453445 m!436925))

(assert (=> b!453445 m!437761))

(assert (=> d!74213 d!74433))

(declare-fun b!453446 () Bool)

(declare-fun e!265429 () Option!375)

(assert (=> b!453446 (= e!265429 (Some!374 (_2!4011 (h!8957 lt!205639))))))

(declare-fun d!74435 () Bool)

(declare-fun c!56230 () Bool)

(assert (=> d!74435 (= c!56230 (and ((_ is Cons!8101) lt!205639) (= (_1!4011 (h!8957 lt!205639)) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74435 (= (getValueByKey!369 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412))) e!265429)))

(declare-fun b!453447 () Bool)

(declare-fun e!265430 () Option!375)

(assert (=> b!453447 (= e!265429 e!265430)))

(declare-fun c!56231 () Bool)

(assert (=> b!453447 (= c!56231 (and ((_ is Cons!8101) lt!205639) (not (= (_1!4011 (h!8957 lt!205639)) (_1!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun b!453448 () Bool)

(assert (=> b!453448 (= e!265430 (getValueByKey!369 (t!13939 lt!205639) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453449 () Bool)

(assert (=> b!453449 (= e!265430 None!373)))

(assert (= (and d!74435 c!56230) b!453446))

(assert (= (and d!74435 (not c!56230)) b!453447))

(assert (= (and b!453447 c!56231) b!453448))

(assert (= (and b!453447 (not c!56231)) b!453449))

(declare-fun m!437763 () Bool)

(assert (=> b!453448 m!437763))

(assert (=> d!74213 d!74435))

(declare-fun d!74437 () Bool)

(assert (=> d!74437 (= (getValueByKey!369 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205914 () Unit!13189)

(assert (=> d!74437 (= lt!205914 (choose!1338 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun e!265431 () Bool)

(assert (=> d!74437 e!265431))

(declare-fun res!270132 () Bool)

(assert (=> d!74437 (=> (not res!270132) (not e!265431))))

(assert (=> d!74437 (= res!270132 (isStrictlySorted!373 lt!205639))))

(assert (=> d!74437 (= (lemmaContainsTupThenGetReturnValue!193 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))) lt!205914)))

(declare-fun b!453450 () Bool)

(declare-fun res!270133 () Bool)

(assert (=> b!453450 (=> (not res!270133) (not e!265431))))

(assert (=> b!453450 (= res!270133 (containsKey!346 lt!205639 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453451 () Bool)

(assert (=> b!453451 (= e!265431 (contains!2501 lt!205639 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74437 res!270132) b!453450))

(assert (= (and b!453450 res!270133) b!453451))

(assert (=> d!74437 m!436919))

(declare-fun m!437765 () Bool)

(assert (=> d!74437 m!437765))

(declare-fun m!437767 () Bool)

(assert (=> d!74437 m!437767))

(declare-fun m!437769 () Bool)

(assert (=> b!453450 m!437769))

(declare-fun m!437771 () Bool)

(assert (=> b!453451 m!437771))

(assert (=> d!74213 d!74437))

(declare-fun d!74439 () Bool)

(declare-fun e!265432 () Bool)

(assert (=> d!74439 e!265432))

(declare-fun res!270135 () Bool)

(assert (=> d!74439 (=> (not res!270135) (not e!265432))))

(declare-fun lt!205915 () List!8105)

(assert (=> d!74439 (= res!270135 (isStrictlySorted!373 lt!205915))))

(declare-fun e!265435 () List!8105)

(assert (=> d!74439 (= lt!205915 e!265435)))

(declare-fun c!56233 () Bool)

(assert (=> d!74439 (= c!56233 (and ((_ is Cons!8101) (toList!3480 call!30020)) (bvslt (_1!4011 (h!8957 (toList!3480 call!30020))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74439 (isStrictlySorted!373 (toList!3480 call!30020))))

(assert (=> d!74439 (= (insertStrictlySorted!195 (toList!3480 call!30020) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))) lt!205915)))

(declare-fun c!56232 () Bool)

(declare-fun c!56234 () Bool)

(declare-fun b!453452 () Bool)

(declare-fun e!265434 () List!8105)

(assert (=> b!453452 (= e!265434 (ite c!56234 (t!13939 (toList!3480 call!30020)) (ite c!56232 (Cons!8101 (h!8957 (toList!3480 call!30020)) (t!13939 (toList!3480 call!30020))) Nil!8102)))))

(declare-fun b!453453 () Bool)

(declare-fun res!270134 () Bool)

(assert (=> b!453453 (=> (not res!270134) (not e!265432))))

(assert (=> b!453453 (= res!270134 (containsKey!346 lt!205915 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30073 () Bool)

(declare-fun call!30076 () List!8105)

(declare-fun call!30078 () List!8105)

(assert (=> bm!30073 (= call!30076 call!30078)))

(declare-fun b!453454 () Bool)

(declare-fun e!265436 () List!8105)

(declare-fun call!30077 () List!8105)

(assert (=> b!453454 (= e!265436 call!30077)))

(declare-fun b!453455 () Bool)

(declare-fun e!265433 () List!8105)

(assert (=> b!453455 (= e!265435 e!265433)))

(assert (=> b!453455 (= c!56234 (and ((_ is Cons!8101) (toList!3480 call!30020)) (= (_1!4011 (h!8957 (toList!3480 call!30020))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(declare-fun b!453456 () Bool)

(assert (=> b!453456 (= c!56232 (and ((_ is Cons!8101) (toList!3480 call!30020)) (bvsgt (_1!4011 (h!8957 (toList!3480 call!30020))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> b!453456 (= e!265433 e!265436)))

(declare-fun b!453457 () Bool)

(assert (=> b!453457 (= e!265434 (insertStrictlySorted!195 (t!13939 (toList!3480 call!30020)) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30074 () Bool)

(assert (=> bm!30074 (= call!30077 call!30076)))

(declare-fun bm!30075 () Bool)

(assert (=> bm!30075 (= call!30078 ($colon$colon!108 e!265434 (ite c!56233 (h!8957 (toList!3480 call!30020)) (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun c!56235 () Bool)

(assert (=> bm!30075 (= c!56235 c!56233)))

(declare-fun b!453458 () Bool)

(assert (=> b!453458 (= e!265435 call!30078)))

(declare-fun b!453459 () Bool)

(assert (=> b!453459 (= e!265436 call!30077)))

(declare-fun b!453460 () Bool)

(assert (=> b!453460 (= e!265433 call!30076)))

(declare-fun b!453461 () Bool)

(assert (=> b!453461 (= e!265432 (contains!2501 lt!205915 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74439 c!56233) b!453458))

(assert (= (and d!74439 (not c!56233)) b!453455))

(assert (= (and b!453455 c!56234) b!453460))

(assert (= (and b!453455 (not c!56234)) b!453456))

(assert (= (and b!453456 c!56232) b!453454))

(assert (= (and b!453456 (not c!56232)) b!453459))

(assert (= (or b!453454 b!453459) bm!30074))

(assert (= (or b!453460 bm!30074) bm!30073))

(assert (= (or b!453458 bm!30073) bm!30075))

(assert (= (and bm!30075 c!56235) b!453457))

(assert (= (and bm!30075 (not c!56235)) b!453452))

(assert (= (and d!74439 res!270135) b!453453))

(assert (= (and b!453453 res!270134) b!453461))

(declare-fun m!437773 () Bool)

(assert (=> bm!30075 m!437773))

(declare-fun m!437775 () Bool)

(assert (=> b!453457 m!437775))

(declare-fun m!437777 () Bool)

(assert (=> d!74439 m!437777))

(declare-fun m!437779 () Bool)

(assert (=> d!74439 m!437779))

(declare-fun m!437781 () Bool)

(assert (=> b!453461 m!437781))

(declare-fun m!437783 () Bool)

(assert (=> b!453453 m!437783))

(assert (=> d!74213 d!74439))

(declare-fun d!74441 () Bool)

(declare-fun lt!205916 () Bool)

(assert (=> d!74441 (= lt!205916 (select (content!204 Nil!8101) (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun e!265437 () Bool)

(assert (=> d!74441 (= lt!205916 e!265437)))

(declare-fun res!270137 () Bool)

(assert (=> d!74441 (=> (not res!270137) (not e!265437))))

(assert (=> d!74441 (= res!270137 ((_ is Cons!8100) Nil!8101))))

(assert (=> d!74441 (= (contains!2499 Nil!8101 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)) lt!205916)))

(declare-fun b!453462 () Bool)

(declare-fun e!265438 () Bool)

(assert (=> b!453462 (= e!265437 e!265438)))

(declare-fun res!270136 () Bool)

(assert (=> b!453462 (=> res!270136 e!265438)))

(assert (=> b!453462 (= res!270136 (= (h!8956 Nil!8101) (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453463 () Bool)

(assert (=> b!453463 (= e!265438 (contains!2499 (t!13938 Nil!8101) (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(assert (= (and d!74441 res!270137) b!453462))

(assert (= (and b!453462 (not res!270136)) b!453463))

(assert (=> d!74441 m!437655))

(assert (=> d!74441 m!436879))

(declare-fun m!437785 () Bool)

(assert (=> d!74441 m!437785))

(assert (=> b!453463 m!436879))

(declare-fun m!437787 () Bool)

(assert (=> b!453463 m!437787))

(assert (=> b!453079 d!74441))

(declare-fun d!74443 () Bool)

(declare-fun res!270138 () Bool)

(declare-fun e!265439 () Bool)

(assert (=> d!74443 (=> res!270138 e!265439)))

(assert (=> d!74443 (= res!270138 (= (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!794))))

(assert (=> d!74443 (= (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!265439)))

(declare-fun b!453464 () Bool)

(declare-fun e!265440 () Bool)

(assert (=> b!453464 (= e!265439 e!265440)))

(declare-fun res!270139 () Bool)

(assert (=> b!453464 (=> (not res!270139) (not e!265440))))

(assert (=> b!453464 (= res!270139 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(declare-fun b!453465 () Bool)

(assert (=> b!453465 (= e!265440 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!74443 (not res!270138)) b!453464))

(assert (= (and b!453464 res!270139) b!453465))

(assert (=> d!74443 m!437595))

(declare-fun m!437789 () Bool)

(assert (=> b!453465 m!437789))

(assert (=> b!452951 d!74443))

(declare-fun d!74445 () Bool)

(declare-fun lt!205917 () Bool)

(assert (=> d!74445 (= lt!205917 (select (content!203 (toList!3480 lt!205669)) lt!205555))))

(declare-fun e!265441 () Bool)

(assert (=> d!74445 (= lt!205917 e!265441)))

(declare-fun res!270140 () Bool)

(assert (=> d!74445 (=> (not res!270140) (not e!265441))))

(assert (=> d!74445 (= res!270140 ((_ is Cons!8101) (toList!3480 lt!205669)))))

(assert (=> d!74445 (= (contains!2501 (toList!3480 lt!205669) lt!205555) lt!205917)))

(declare-fun b!453466 () Bool)

(declare-fun e!265442 () Bool)

(assert (=> b!453466 (= e!265441 e!265442)))

(declare-fun res!270141 () Bool)

(assert (=> b!453466 (=> res!270141 e!265442)))

(assert (=> b!453466 (= res!270141 (= (h!8957 (toList!3480 lt!205669)) lt!205555))))

(declare-fun b!453467 () Bool)

(assert (=> b!453467 (= e!265442 (contains!2501 (t!13939 (toList!3480 lt!205669)) lt!205555))))

(assert (= (and d!74445 res!270140) b!453466))

(assert (= (and b!453466 (not res!270141)) b!453467))

(declare-fun m!437791 () Bool)

(assert (=> d!74445 m!437791))

(declare-fun m!437793 () Bool)

(assert (=> d!74445 m!437793))

(declare-fun m!437795 () Bool)

(assert (=> b!453467 m!437795))

(assert (=> b!453071 d!74445))

(declare-fun d!74447 () Bool)

(declare-fun e!265444 () Bool)

(assert (=> d!74447 e!265444))

(declare-fun res!270142 () Bool)

(assert (=> d!74447 (=> res!270142 e!265444)))

(declare-fun lt!205920 () Bool)

(assert (=> d!74447 (= res!270142 (not lt!205920))))

(declare-fun lt!205918 () Bool)

(assert (=> d!74447 (= lt!205920 lt!205918)))

(declare-fun lt!205921 () Unit!13189)

(declare-fun e!265443 () Unit!13189)

(assert (=> d!74447 (= lt!205921 e!265443)))

(declare-fun c!56236 () Bool)

(assert (=> d!74447 (= c!56236 lt!205918)))

(assert (=> d!74447 (= lt!205918 (containsKey!346 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> d!74447 (= (contains!2500 lt!205658 (_1!4011 (tuple2!8003 k0!794 lt!205556))) lt!205920)))

(declare-fun b!453468 () Bool)

(declare-fun lt!205919 () Unit!13189)

(assert (=> b!453468 (= e!265443 lt!205919)))

(assert (=> b!453468 (= lt!205919 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(assert (=> b!453468 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun b!453469 () Bool)

(declare-fun Unit!13215 () Unit!13189)

(assert (=> b!453469 (= e!265443 Unit!13215)))

(declare-fun b!453470 () Bool)

(assert (=> b!453470 (= e!265444 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205658) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (= (and d!74447 c!56236) b!453468))

(assert (= (and d!74447 (not c!56236)) b!453469))

(assert (= (and d!74447 (not res!270142)) b!453470))

(declare-fun m!437797 () Bool)

(assert (=> d!74447 m!437797))

(declare-fun m!437799 () Bool)

(assert (=> b!453468 m!437799))

(assert (=> b!453468 m!436975))

(assert (=> b!453468 m!436975))

(declare-fun m!437801 () Bool)

(assert (=> b!453468 m!437801))

(assert (=> b!453470 m!436975))

(assert (=> b!453470 m!436975))

(assert (=> b!453470 m!437801))

(assert (=> d!74223 d!74447))

(declare-fun b!453471 () Bool)

(declare-fun e!265445 () Option!375)

(assert (=> b!453471 (= e!265445 (Some!374 (_2!4011 (h!8957 lt!205657))))))

(declare-fun d!74449 () Bool)

(declare-fun c!56237 () Bool)

(assert (=> d!74449 (= c!56237 (and ((_ is Cons!8101) lt!205657) (= (_1!4011 (h!8957 lt!205657)) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (=> d!74449 (= (getValueByKey!369 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556))) e!265445)))

(declare-fun b!453472 () Bool)

(declare-fun e!265446 () Option!375)

(assert (=> b!453472 (= e!265445 e!265446)))

(declare-fun c!56238 () Bool)

(assert (=> b!453472 (= c!56238 (and ((_ is Cons!8101) lt!205657) (not (= (_1!4011 (h!8957 lt!205657)) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))))

(declare-fun b!453473 () Bool)

(assert (=> b!453473 (= e!265446 (getValueByKey!369 (t!13939 lt!205657) (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun b!453474 () Bool)

(assert (=> b!453474 (= e!265446 None!373)))

(assert (= (and d!74449 c!56237) b!453471))

(assert (= (and d!74449 (not c!56237)) b!453472))

(assert (= (and b!453472 c!56238) b!453473))

(assert (= (and b!453472 (not c!56238)) b!453474))

(declare-fun m!437803 () Bool)

(assert (=> b!453473 m!437803))

(assert (=> d!74223 d!74449))

(declare-fun d!74451 () Bool)

(assert (=> d!74451 (= (getValueByKey!369 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556))) (Some!374 (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun lt!205922 () Unit!13189)

(assert (=> d!74451 (= lt!205922 (choose!1338 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun e!265447 () Bool)

(assert (=> d!74451 e!265447))

(declare-fun res!270143 () Bool)

(assert (=> d!74451 (=> (not res!270143) (not e!265447))))

(assert (=> d!74451 (= res!270143 (isStrictlySorted!373 lt!205657))))

(assert (=> d!74451 (= (lemmaContainsTupThenGetReturnValue!193 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))) lt!205922)))

(declare-fun b!453475 () Bool)

(declare-fun res!270144 () Bool)

(assert (=> b!453475 (=> (not res!270144) (not e!265447))))

(assert (=> b!453475 (= res!270144 (containsKey!346 lt!205657 (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun b!453476 () Bool)

(assert (=> b!453476 (= e!265447 (contains!2501 lt!205657 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (= (and d!74451 res!270143) b!453475))

(assert (= (and b!453475 res!270144) b!453476))

(assert (=> d!74451 m!436969))

(declare-fun m!437805 () Bool)

(assert (=> d!74451 m!437805))

(declare-fun m!437807 () Bool)

(assert (=> d!74451 m!437807))

(declare-fun m!437809 () Bool)

(assert (=> b!453475 m!437809))

(declare-fun m!437811 () Bool)

(assert (=> b!453476 m!437811))

(assert (=> d!74223 d!74451))

(declare-fun d!74453 () Bool)

(declare-fun e!265448 () Bool)

(assert (=> d!74453 e!265448))

(declare-fun res!270146 () Bool)

(assert (=> d!74453 (=> (not res!270146) (not e!265448))))

(declare-fun lt!205923 () List!8105)

(assert (=> d!74453 (= res!270146 (isStrictlySorted!373 lt!205923))))

(declare-fun e!265451 () List!8105)

(assert (=> d!74453 (= lt!205923 e!265451)))

(declare-fun c!56240 () Bool)

(assert (=> d!74453 (= c!56240 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvslt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (=> d!74453 (isStrictlySorted!373 (toList!3480 lt!205552))))

(assert (=> d!74453 (= (insertStrictlySorted!195 (toList!3480 lt!205552) (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))) lt!205923)))

(declare-fun c!56239 () Bool)

(declare-fun e!265450 () List!8105)

(declare-fun c!56241 () Bool)

(declare-fun b!453477 () Bool)

(assert (=> b!453477 (= e!265450 (ite c!56241 (t!13939 (toList!3480 lt!205552)) (ite c!56239 (Cons!8101 (h!8957 (toList!3480 lt!205552)) (t!13939 (toList!3480 lt!205552))) Nil!8102)))))

(declare-fun b!453478 () Bool)

(declare-fun res!270145 () Bool)

(assert (=> b!453478 (=> (not res!270145) (not e!265448))))

(assert (=> b!453478 (= res!270145 (containsKey!346 lt!205923 (_1!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun bm!30076 () Bool)

(declare-fun call!30079 () List!8105)

(declare-fun call!30081 () List!8105)

(assert (=> bm!30076 (= call!30079 call!30081)))

(declare-fun b!453479 () Bool)

(declare-fun e!265452 () List!8105)

(declare-fun call!30080 () List!8105)

(assert (=> b!453479 (= e!265452 call!30080)))

(declare-fun b!453480 () Bool)

(declare-fun e!265449 () List!8105)

(assert (=> b!453480 (= e!265451 e!265449)))

(assert (=> b!453480 (= c!56241 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (= (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(declare-fun b!453481 () Bool)

(assert (=> b!453481 (= c!56239 (and ((_ is Cons!8101) (toList!3480 lt!205552)) (bvsgt (_1!4011 (h!8957 (toList!3480 lt!205552))) (_1!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (=> b!453481 (= e!265449 e!265452)))

(declare-fun b!453482 () Bool)

(assert (=> b!453482 (= e!265450 (insertStrictlySorted!195 (t!13939 (toList!3480 lt!205552)) (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))))))

(declare-fun bm!30077 () Bool)

(assert (=> bm!30077 (= call!30080 call!30079)))

(declare-fun bm!30078 () Bool)

(assert (=> bm!30078 (= call!30081 ($colon$colon!108 e!265450 (ite c!56240 (h!8957 (toList!3480 lt!205552)) (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556))))))))

(declare-fun c!56242 () Bool)

(assert (=> bm!30078 (= c!56242 c!56240)))

(declare-fun b!453483 () Bool)

(assert (=> b!453483 (= e!265451 call!30081)))

(declare-fun b!453484 () Bool)

(assert (=> b!453484 (= e!265452 call!30080)))

(declare-fun b!453485 () Bool)

(assert (=> b!453485 (= e!265449 call!30079)))

(declare-fun b!453486 () Bool)

(assert (=> b!453486 (= e!265448 (contains!2501 lt!205923 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 lt!205556)) (_2!4011 (tuple2!8003 k0!794 lt!205556)))))))

(assert (= (and d!74453 c!56240) b!453483))

(assert (= (and d!74453 (not c!56240)) b!453480))

(assert (= (and b!453480 c!56241) b!453485))

(assert (= (and b!453480 (not c!56241)) b!453481))

(assert (= (and b!453481 c!56239) b!453479))

(assert (= (and b!453481 (not c!56239)) b!453484))

(assert (= (or b!453479 b!453484) bm!30077))

(assert (= (or b!453485 bm!30077) bm!30076))

(assert (= (or b!453483 bm!30076) bm!30078))

(assert (= (and bm!30078 c!56242) b!453482))

(assert (= (and bm!30078 (not c!56242)) b!453477))

(assert (= (and d!74453 res!270146) b!453478))

(assert (= (and b!453478 res!270145) b!453486))

(declare-fun m!437813 () Bool)

(assert (=> bm!30078 m!437813))

(declare-fun m!437815 () Bool)

(assert (=> b!453482 m!437815))

(declare-fun m!437817 () Bool)

(assert (=> d!74453 m!437817))

(assert (=> d!74453 m!437353))

(declare-fun m!437819 () Bool)

(assert (=> b!453486 m!437819))

(declare-fun m!437821 () Bool)

(assert (=> b!453478 m!437821))

(assert (=> d!74223 d!74453))

(declare-fun b!453487 () Bool)

(assert (=> b!453487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))))

(assert (=> b!453487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13819 (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)))))))

(declare-fun lt!205926 () ListLongMap!6929)

(declare-fun e!265459 () Bool)

(assert (=> b!453487 (= e!265459 (= (apply!313 lt!205926 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863))) (get!6652 (select (arr!13467 (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453489 () Bool)

(declare-fun lt!205929 () Unit!13189)

(declare-fun lt!205924 () Unit!13189)

(assert (=> b!453489 (= lt!205929 lt!205924)))

(declare-fun lt!205925 () (_ BitVec 64))

(declare-fun lt!205928 () (_ BitVec 64))

(declare-fun lt!205930 () ListLongMap!6929)

(declare-fun lt!205927 () V!17293)

(assert (=> b!453489 (not (contains!2500 (+!1545 lt!205930 (tuple2!8003 lt!205925 lt!205927)) lt!205928))))

(assert (=> b!453489 (= lt!205924 (addStillNotContains!148 lt!205930 lt!205925 lt!205927 lt!205928))))

(assert (=> b!453489 (= lt!205928 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453489 (= lt!205927 (get!6652 (select (arr!13467 (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453489 (= lt!205925 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30082 () ListLongMap!6929)

(assert (=> b!453489 (= lt!205930 call!30082)))

(declare-fun e!265455 () ListLongMap!6929)

(assert (=> b!453489 (= e!265455 (+!1545 call!30082 (tuple2!8003 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453490 () Bool)

(declare-fun e!265456 () ListLongMap!6929)

(assert (=> b!453490 (= e!265456 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30079 () Bool)

(assert (=> bm!30079 (= call!30082 (getCurrentListMapNoExtraKeys!1656 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)) (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453491 () Bool)

(declare-fun e!265453 () Bool)

(assert (=> b!453491 (= e!265453 (isEmpty!564 lt!205926))))

(declare-fun b!453492 () Bool)

(assert (=> b!453492 (= e!265453 (= lt!205926 (getCurrentListMapNoExtraKeys!1656 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)) (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453493 () Bool)

(declare-fun e!265454 () Bool)

(declare-fun e!265458 () Bool)

(assert (=> b!453493 (= e!265454 e!265458)))

(declare-fun c!56246 () Bool)

(declare-fun e!265457 () Bool)

(assert (=> b!453493 (= c!56246 e!265457)))

(declare-fun res!270148 () Bool)

(assert (=> b!453493 (=> (not res!270148) (not e!265457))))

(assert (=> b!453493 (= res!270148 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))))

(declare-fun b!453494 () Bool)

(assert (=> b!453494 (= e!265458 e!265453)))

(declare-fun c!56244 () Bool)

(assert (=> b!453494 (= c!56244 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))))

(declare-fun b!453495 () Bool)

(assert (=> b!453495 (= e!265458 e!265459)))

(assert (=> b!453495 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))))

(declare-fun res!270150 () Bool)

(assert (=> b!453495 (= res!270150 (contains!2500 lt!205926 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453495 (=> (not res!270150) (not e!265459))))

(declare-fun b!453496 () Bool)

(assert (=> b!453496 (= e!265455 call!30082)))

(declare-fun b!453488 () Bool)

(declare-fun res!270149 () Bool)

(assert (=> b!453488 (=> (not res!270149) (not e!265454))))

(assert (=> b!453488 (= res!270149 (not (contains!2500 lt!205926 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74455 () Bool)

(assert (=> d!74455 e!265454))

(declare-fun res!270147 () Bool)

(assert (=> d!74455 (=> (not res!270147) (not e!265454))))

(assert (=> d!74455 (= res!270147 (not (contains!2500 lt!205926 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74455 (= lt!205926 e!265456)))

(declare-fun c!56243 () Bool)

(assert (=> d!74455 (= c!56243 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13818 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)))))))

(assert (=> d!74455 (validMask!0 mask!1025)))

(assert (=> d!74455 (= (getCurrentListMapNoExtraKeys!1656 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709)) (array!28052 (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) (size!13819 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205926)))

(declare-fun b!453497 () Bool)

(assert (=> b!453497 (= e!265456 e!265455)))

(declare-fun c!56245 () Bool)

(assert (=> b!453497 (= c!56245 (validKeyInArray!0 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453498 () Bool)

(assert (=> b!453498 (= e!265457 (validKeyInArray!0 (select (arr!13466 (array!28050 (store (arr!13466 _keys!709) i!563 k0!794) (size!13818 _keys!709))) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453498 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(assert (= (and d!74455 c!56243) b!453490))

(assert (= (and d!74455 (not c!56243)) b!453497))

(assert (= (and b!453497 c!56245) b!453489))

(assert (= (and b!453497 (not c!56245)) b!453496))

(assert (= (or b!453489 b!453496) bm!30079))

(assert (= (and d!74455 res!270147) b!453488))

(assert (= (and b!453488 res!270149) b!453493))

(assert (= (and b!453493 res!270148) b!453498))

(assert (= (and b!453493 c!56246) b!453495))

(assert (= (and b!453493 (not c!56246)) b!453494))

(assert (= (and b!453495 res!270150) b!453487))

(assert (= (and b!453494 c!56244) b!453492))

(assert (= (and b!453494 (not c!56244)) b!453491))

(declare-fun b_lambda!9677 () Bool)

(assert (=> (not b_lambda!9677) (not b!453487)))

(assert (=> b!453487 t!13937))

(declare-fun b_and!18959 () Bool)

(assert (= b_and!18957 (and (=> t!13937 result!7111) b_and!18959)))

(declare-fun b_lambda!9679 () Bool)

(assert (=> (not b_lambda!9679) (not b!453489)))

(assert (=> b!453489 t!13937))

(declare-fun b_and!18961 () Bool)

(assert (= b_and!18959 (and (=> t!13937 result!7111) b_and!18961)))

(declare-fun m!437823 () Bool)

(assert (=> d!74455 m!437823))

(assert (=> d!74455 m!436695))

(declare-fun m!437825 () Bool)

(assert (=> b!453498 m!437825))

(assert (=> b!453498 m!437825))

(declare-fun m!437827 () Bool)

(assert (=> b!453498 m!437827))

(declare-fun m!437829 () Bool)

(assert (=> bm!30079 m!437829))

(assert (=> b!453487 m!437825))

(assert (=> b!453487 m!436755))

(declare-fun m!437831 () Bool)

(assert (=> b!453487 m!437831))

(assert (=> b!453487 m!436755))

(declare-fun m!437833 () Bool)

(assert (=> b!453487 m!437833))

(assert (=> b!453487 m!437825))

(declare-fun m!437835 () Bool)

(assert (=> b!453487 m!437835))

(assert (=> b!453487 m!437831))

(declare-fun m!437837 () Bool)

(assert (=> b!453488 m!437837))

(assert (=> b!453492 m!437829))

(declare-fun m!437839 () Bool)

(assert (=> b!453489 m!437839))

(assert (=> b!453489 m!437825))

(declare-fun m!437841 () Bool)

(assert (=> b!453489 m!437841))

(declare-fun m!437843 () Bool)

(assert (=> b!453489 m!437843))

(assert (=> b!453489 m!436755))

(assert (=> b!453489 m!437831))

(assert (=> b!453489 m!436755))

(assert (=> b!453489 m!437833))

(assert (=> b!453489 m!437841))

(declare-fun m!437845 () Bool)

(assert (=> b!453489 m!437845))

(assert (=> b!453489 m!437831))

(declare-fun m!437847 () Bool)

(assert (=> b!453491 m!437847))

(assert (=> b!453497 m!437825))

(assert (=> b!453497 m!437825))

(assert (=> b!453497 m!437827))

(assert (=> b!453495 m!437825))

(assert (=> b!453495 m!437825))

(declare-fun m!437849 () Bool)

(assert (=> b!453495 m!437849))

(assert (=> bm!30028 d!74455))

(declare-fun b!453499 () Bool)

(assert (=> b!453499 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(assert (=> b!453499 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13819 _values!549)))))

(declare-fun lt!205933 () ListLongMap!6929)

(declare-fun e!265466 () Bool)

(assert (=> b!453499 (= e!265466 (= (apply!313 lt!205933 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6652 (select (arr!13467 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!453501 () Bool)

(declare-fun lt!205936 () Unit!13189)

(declare-fun lt!205931 () Unit!13189)

(assert (=> b!453501 (= lt!205936 lt!205931)))

(declare-fun lt!205932 () (_ BitVec 64))

(declare-fun lt!205937 () ListLongMap!6929)

(declare-fun lt!205935 () (_ BitVec 64))

(declare-fun lt!205934 () V!17293)

(assert (=> b!453501 (not (contains!2500 (+!1545 lt!205937 (tuple2!8003 lt!205932 lt!205934)) lt!205935))))

(assert (=> b!453501 (= lt!205931 (addStillNotContains!148 lt!205937 lt!205932 lt!205934 lt!205935))))

(assert (=> b!453501 (= lt!205935 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!453501 (= lt!205934 (get!6652 (select (arr!13467 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!453501 (= lt!205932 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(declare-fun call!30083 () ListLongMap!6929)

(assert (=> b!453501 (= lt!205937 call!30083)))

(declare-fun e!265462 () ListLongMap!6929)

(assert (=> b!453501 (= e!265462 (+!1545 call!30083 (tuple2!8003 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6652 (select (arr!13467 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!867 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!453502 () Bool)

(declare-fun e!265463 () ListLongMap!6929)

(assert (=> b!453502 (= e!265463 (ListLongMap!6930 Nil!8102))))

(declare-fun bm!30080 () Bool)

(assert (=> bm!30080 (= call!30083 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!453503 () Bool)

(declare-fun e!265460 () Bool)

(assert (=> b!453503 (= e!265460 (isEmpty!564 lt!205933))))

(declare-fun b!453504 () Bool)

(assert (=> b!453504 (= e!265460 (= lt!205933 (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!453505 () Bool)

(declare-fun e!265461 () Bool)

(declare-fun e!265465 () Bool)

(assert (=> b!453505 (= e!265461 e!265465)))

(declare-fun c!56250 () Bool)

(declare-fun e!265464 () Bool)

(assert (=> b!453505 (= c!56250 e!265464)))

(declare-fun res!270152 () Bool)

(assert (=> b!453505 (=> (not res!270152) (not e!265464))))

(assert (=> b!453505 (= res!270152 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(declare-fun b!453506 () Bool)

(assert (=> b!453506 (= e!265465 e!265460)))

(declare-fun c!56248 () Bool)

(assert (=> b!453506 (= c!56248 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(declare-fun b!453507 () Bool)

(assert (=> b!453507 (= e!265465 e!265466)))

(assert (=> b!453507 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(declare-fun res!270154 () Bool)

(assert (=> b!453507 (= res!270154 (contains!2500 lt!205933 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453507 (=> (not res!270154) (not e!265466))))

(declare-fun b!453508 () Bool)

(assert (=> b!453508 (= e!265462 call!30083)))

(declare-fun b!453500 () Bool)

(declare-fun res!270153 () Bool)

(assert (=> b!453500 (=> (not res!270153) (not e!265461))))

(assert (=> b!453500 (= res!270153 (not (contains!2500 lt!205933 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!74457 () Bool)

(assert (=> d!74457 e!265461))

(declare-fun res!270151 () Bool)

(assert (=> d!74457 (=> (not res!270151) (not e!265461))))

(assert (=> d!74457 (= res!270151 (not (contains!2500 lt!205933 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74457 (= lt!205933 e!265463)))

(declare-fun c!56247 () Bool)

(assert (=> d!74457 (= c!56247 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13818 _keys!709)))))

(assert (=> d!74457 (validMask!0 mask!1025)))

(assert (=> d!74457 (= (getCurrentListMapNoExtraKeys!1656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!205933)))

(declare-fun b!453509 () Bool)

(assert (=> b!453509 (= e!265463 e!265462)))

(declare-fun c!56249 () Bool)

(assert (=> b!453509 (= c!56249 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!453510 () Bool)

(assert (=> b!453510 (= e!265464 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!453510 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(assert (= (and d!74457 c!56247) b!453502))

(assert (= (and d!74457 (not c!56247)) b!453509))

(assert (= (and b!453509 c!56249) b!453501))

(assert (= (and b!453509 (not c!56249)) b!453508))

(assert (= (or b!453501 b!453508) bm!30080))

(assert (= (and d!74457 res!270151) b!453500))

(assert (= (and b!453500 res!270153) b!453505))

(assert (= (and b!453505 res!270152) b!453510))

(assert (= (and b!453505 c!56250) b!453507))

(assert (= (and b!453505 (not c!56250)) b!453506))

(assert (= (and b!453507 res!270154) b!453499))

(assert (= (and b!453506 c!56248) b!453504))

(assert (= (and b!453506 (not c!56248)) b!453503))

(declare-fun b_lambda!9681 () Bool)

(assert (=> (not b_lambda!9681) (not b!453499)))

(assert (=> b!453499 t!13937))

(declare-fun b_and!18963 () Bool)

(assert (= b_and!18961 (and (=> t!13937 result!7111) b_and!18963)))

(declare-fun b_lambda!9683 () Bool)

(assert (=> (not b_lambda!9683) (not b!453501)))

(assert (=> b!453501 t!13937))

(declare-fun b_and!18965 () Bool)

(assert (= b_and!18963 (and (=> t!13937 result!7111) b_and!18965)))

(declare-fun m!437851 () Bool)

(assert (=> d!74457 m!437851))

(assert (=> d!74457 m!436695))

(declare-fun m!437853 () Bool)

(assert (=> b!453510 m!437853))

(assert (=> b!453510 m!437853))

(declare-fun m!437855 () Bool)

(assert (=> b!453510 m!437855))

(declare-fun m!437857 () Bool)

(assert (=> bm!30080 m!437857))

(assert (=> b!453499 m!437853))

(assert (=> b!453499 m!436755))

(declare-fun m!437859 () Bool)

(assert (=> b!453499 m!437859))

(assert (=> b!453499 m!436755))

(declare-fun m!437861 () Bool)

(assert (=> b!453499 m!437861))

(assert (=> b!453499 m!437853))

(declare-fun m!437863 () Bool)

(assert (=> b!453499 m!437863))

(assert (=> b!453499 m!437859))

(declare-fun m!437865 () Bool)

(assert (=> b!453500 m!437865))

(assert (=> b!453504 m!437857))

(declare-fun m!437867 () Bool)

(assert (=> b!453501 m!437867))

(assert (=> b!453501 m!437853))

(declare-fun m!437869 () Bool)

(assert (=> b!453501 m!437869))

(declare-fun m!437871 () Bool)

(assert (=> b!453501 m!437871))

(assert (=> b!453501 m!436755))

(assert (=> b!453501 m!437859))

(assert (=> b!453501 m!436755))

(assert (=> b!453501 m!437861))

(assert (=> b!453501 m!437869))

(declare-fun m!437873 () Bool)

(assert (=> b!453501 m!437873))

(assert (=> b!453501 m!437859))

(declare-fun m!437875 () Bool)

(assert (=> b!453503 m!437875))

(assert (=> b!453509 m!437853))

(assert (=> b!453509 m!437853))

(assert (=> b!453509 m!437855))

(assert (=> b!453507 m!437853))

(assert (=> b!453507 m!437853))

(declare-fun m!437877 () Bool)

(assert (=> b!453507 m!437877))

(assert (=> bm!30029 d!74457))

(assert (=> b!453092 d!74359))

(declare-fun d!74459 () Bool)

(declare-fun lt!205938 () Bool)

(assert (=> d!74459 (= lt!205938 (select (content!203 (toList!3480 lt!205673)) (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))

(declare-fun e!265467 () Bool)

(assert (=> d!74459 (= lt!205938 e!265467)))

(declare-fun res!270155 () Bool)

(assert (=> d!74459 (=> (not res!270155) (not e!265467))))

(assert (=> d!74459 (= res!270155 ((_ is Cons!8101) (toList!3480 lt!205673)))))

(assert (=> d!74459 (= (contains!2501 (toList!3480 lt!205673) (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)) lt!205938)))

(declare-fun b!453511 () Bool)

(declare-fun e!265468 () Bool)

(assert (=> b!453511 (= e!265467 e!265468)))

(declare-fun res!270156 () Bool)

(assert (=> b!453511 (=> res!270156 e!265468)))

(assert (=> b!453511 (= res!270156 (= (h!8957 (toList!3480 lt!205673)) (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))

(declare-fun b!453512 () Bool)

(assert (=> b!453512 (= e!265468 (contains!2501 (t!13939 (toList!3480 lt!205673)) (tuple2!8003 (select (arr!13466 lt!205547) from!863) lt!205550)))))

(assert (= (and d!74459 res!270155) b!453511))

(assert (= (and b!453511 (not res!270156)) b!453512))

(declare-fun m!437879 () Bool)

(assert (=> d!74459 m!437879))

(declare-fun m!437881 () Bool)

(assert (=> d!74459 m!437881))

(declare-fun m!437883 () Bool)

(assert (=> b!453512 m!437883))

(assert (=> b!453073 d!74459))

(declare-fun d!74461 () Bool)

(assert (=> d!74461 (arrayContainsKey!0 lt!205547 lt!205621 #b00000000000000000000000000000000)))

(declare-fun lt!205939 () Unit!13189)

(assert (=> d!74461 (= lt!205939 (choose!13 lt!205547 lt!205621 #b00000000000000000000000000000000))))

(assert (=> d!74461 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!74461 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!205547 lt!205621 #b00000000000000000000000000000000) lt!205939)))

(declare-fun bs!14411 () Bool)

(assert (= bs!14411 d!74461))

(assert (=> bs!14411 m!436883))

(declare-fun m!437885 () Bool)

(assert (=> bs!14411 m!437885))

(assert (=> b!453022 d!74461))

(declare-fun d!74463 () Bool)

(declare-fun res!270157 () Bool)

(declare-fun e!265469 () Bool)

(assert (=> d!74463 (=> res!270157 e!265469)))

(assert (=> d!74463 (= res!270157 (= (select (arr!13466 lt!205547) #b00000000000000000000000000000000) lt!205621))))

(assert (=> d!74463 (= (arrayContainsKey!0 lt!205547 lt!205621 #b00000000000000000000000000000000) e!265469)))

(declare-fun b!453513 () Bool)

(declare-fun e!265470 () Bool)

(assert (=> b!453513 (= e!265469 e!265470)))

(declare-fun res!270158 () Bool)

(assert (=> b!453513 (=> (not res!270158) (not e!265470))))

(assert (=> b!453513 (= res!270158 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(declare-fun b!453514 () Bool)

(assert (=> b!453514 (= e!265470 (arrayContainsKey!0 lt!205547 lt!205621 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74463 (not res!270157)) b!453513))

(assert (= (and b!453513 res!270158) b!453514))

(assert (=> d!74463 m!436879))

(declare-fun m!437887 () Bool)

(assert (=> b!453514 m!437887))

(assert (=> b!453022 d!74463))

(declare-fun b!453515 () Bool)

(declare-fun e!265473 () SeekEntryResult!3520)

(declare-fun lt!205942 () SeekEntryResult!3520)

(assert (=> b!453515 (= e!265473 (Found!3520 (index!16261 lt!205942)))))

(declare-fun b!453516 () Bool)

(declare-fun e!265471 () SeekEntryResult!3520)

(assert (=> b!453516 (= e!265471 e!265473)))

(declare-fun lt!205940 () (_ BitVec 64))

(assert (=> b!453516 (= lt!205940 (select (arr!13466 lt!205547) (index!16261 lt!205942)))))

(declare-fun c!56252 () Bool)

(assert (=> b!453516 (= c!56252 (= lt!205940 (select (arr!13466 lt!205547) #b00000000000000000000000000000000)))))

(declare-fun b!453517 () Bool)

(assert (=> b!453517 (= e!265471 Undefined!3520)))

(declare-fun b!453518 () Bool)

(declare-fun e!265472 () SeekEntryResult!3520)

(assert (=> b!453518 (= e!265472 (seekKeyOrZeroReturnVacant!0 (x!42444 lt!205942) (index!16261 lt!205942) (index!16261 lt!205942) (select (arr!13466 lt!205547) #b00000000000000000000000000000000) lt!205547 mask!1025))))

(declare-fun b!453519 () Bool)

(declare-fun c!56253 () Bool)

(assert (=> b!453519 (= c!56253 (= lt!205940 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453519 (= e!265473 e!265472)))

(declare-fun b!453520 () Bool)

(assert (=> b!453520 (= e!265472 (MissingZero!3520 (index!16261 lt!205942)))))

(declare-fun d!74465 () Bool)

(declare-fun lt!205941 () SeekEntryResult!3520)

(assert (=> d!74465 (and (or ((_ is Undefined!3520) lt!205941) (not ((_ is Found!3520) lt!205941)) (and (bvsge (index!16260 lt!205941) #b00000000000000000000000000000000) (bvslt (index!16260 lt!205941) (size!13818 lt!205547)))) (or ((_ is Undefined!3520) lt!205941) ((_ is Found!3520) lt!205941) (not ((_ is MissingZero!3520) lt!205941)) (and (bvsge (index!16259 lt!205941) #b00000000000000000000000000000000) (bvslt (index!16259 lt!205941) (size!13818 lt!205547)))) (or ((_ is Undefined!3520) lt!205941) ((_ is Found!3520) lt!205941) ((_ is MissingZero!3520) lt!205941) (not ((_ is MissingVacant!3520) lt!205941)) (and (bvsge (index!16262 lt!205941) #b00000000000000000000000000000000) (bvslt (index!16262 lt!205941) (size!13818 lt!205547)))) (or ((_ is Undefined!3520) lt!205941) (ite ((_ is Found!3520) lt!205941) (= (select (arr!13466 lt!205547) (index!16260 lt!205941)) (select (arr!13466 lt!205547) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!3520) lt!205941) (= (select (arr!13466 lt!205547) (index!16259 lt!205941)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3520) lt!205941) (= (select (arr!13466 lt!205547) (index!16262 lt!205941)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!74465 (= lt!205941 e!265471)))

(declare-fun c!56251 () Bool)

(assert (=> d!74465 (= c!56251 (and ((_ is Intermediate!3520) lt!205942) (undefined!4332 lt!205942)))))

(assert (=> d!74465 (= lt!205942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) mask!1025) (select (arr!13466 lt!205547) #b00000000000000000000000000000000) lt!205547 mask!1025))))

(assert (=> d!74465 (validMask!0 mask!1025)))

(assert (=> d!74465 (= (seekEntryOrOpen!0 (select (arr!13466 lt!205547) #b00000000000000000000000000000000) lt!205547 mask!1025) lt!205941)))

(assert (= (and d!74465 c!56251) b!453517))

(assert (= (and d!74465 (not c!56251)) b!453516))

(assert (= (and b!453516 c!56252) b!453515))

(assert (= (and b!453516 (not c!56252)) b!453519))

(assert (= (and b!453519 c!56253) b!453520))

(assert (= (and b!453519 (not c!56253)) b!453518))

(declare-fun m!437889 () Bool)

(assert (=> b!453516 m!437889))

(assert (=> b!453518 m!436879))

(declare-fun m!437891 () Bool)

(assert (=> b!453518 m!437891))

(assert (=> d!74465 m!436879))

(declare-fun m!437893 () Bool)

(assert (=> d!74465 m!437893))

(declare-fun m!437895 () Bool)

(assert (=> d!74465 m!437895))

(declare-fun m!437897 () Bool)

(assert (=> d!74465 m!437897))

(assert (=> d!74465 m!437893))

(assert (=> d!74465 m!436879))

(declare-fun m!437899 () Bool)

(assert (=> d!74465 m!437899))

(declare-fun m!437901 () Bool)

(assert (=> d!74465 m!437901))

(assert (=> d!74465 m!436695))

(assert (=> b!453022 d!74465))

(declare-fun d!74467 () Bool)

(declare-fun e!265475 () Bool)

(assert (=> d!74467 e!265475))

(declare-fun res!270159 () Bool)

(assert (=> d!74467 (=> res!270159 e!265475)))

(declare-fun lt!205945 () Bool)

(assert (=> d!74467 (= res!270159 (not lt!205945))))

(declare-fun lt!205943 () Bool)

(assert (=> d!74467 (= lt!205945 lt!205943)))

(declare-fun lt!205946 () Unit!13189)

(declare-fun e!265474 () Unit!13189)

(assert (=> d!74467 (= lt!205946 e!265474)))

(declare-fun c!56254 () Bool)

(assert (=> d!74467 (= c!56254 lt!205943)))

(assert (=> d!74467 (= lt!205943 (containsKey!346 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> d!74467 (= (contains!2500 lt!205654 (_1!4011 (tuple2!8003 k0!794 v!412))) lt!205945)))

(declare-fun b!453521 () Bool)

(declare-fun lt!205944 () Unit!13189)

(assert (=> b!453521 (= e!265474 lt!205944)))

(assert (=> b!453521 (= lt!205944 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(assert (=> b!453521 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453522 () Bool)

(declare-fun Unit!13216 () Unit!13189)

(assert (=> b!453522 (= e!265474 Unit!13216)))

(declare-fun b!453523 () Bool)

(assert (=> b!453523 (= e!265475 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205654) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74467 c!56254) b!453521))

(assert (= (and d!74467 (not c!56254)) b!453522))

(assert (= (and d!74467 (not res!270159)) b!453523))

(declare-fun m!437903 () Bool)

(assert (=> d!74467 m!437903))

(declare-fun m!437905 () Bool)

(assert (=> b!453521 m!437905))

(assert (=> b!453521 m!436963))

(assert (=> b!453521 m!436963))

(declare-fun m!437907 () Bool)

(assert (=> b!453521 m!437907))

(assert (=> b!453523 m!436963))

(assert (=> b!453523 m!436963))

(assert (=> b!453523 m!437907))

(assert (=> d!74221 d!74467))

(declare-fun b!453524 () Bool)

(declare-fun e!265476 () Option!375)

(assert (=> b!453524 (= e!265476 (Some!374 (_2!4011 (h!8957 lt!205653))))))

(declare-fun d!74469 () Bool)

(declare-fun c!56255 () Bool)

(assert (=> d!74469 (= c!56255 (and ((_ is Cons!8101) lt!205653) (= (_1!4011 (h!8957 lt!205653)) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74469 (= (getValueByKey!369 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412))) e!265476)))

(declare-fun b!453525 () Bool)

(declare-fun e!265477 () Option!375)

(assert (=> b!453525 (= e!265476 e!265477)))

(declare-fun c!56256 () Bool)

(assert (=> b!453525 (= c!56256 (and ((_ is Cons!8101) lt!205653) (not (= (_1!4011 (h!8957 lt!205653)) (_1!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun b!453526 () Bool)

(assert (=> b!453526 (= e!265477 (getValueByKey!369 (t!13939 lt!205653) (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453527 () Bool)

(assert (=> b!453527 (= e!265477 None!373)))

(assert (= (and d!74469 c!56255) b!453524))

(assert (= (and d!74469 (not c!56255)) b!453525))

(assert (= (and b!453525 c!56256) b!453526))

(assert (= (and b!453525 (not c!56256)) b!453527))

(declare-fun m!437909 () Bool)

(assert (=> b!453526 m!437909))

(assert (=> d!74221 d!74469))

(declare-fun d!74471 () Bool)

(assert (=> d!74471 (= (getValueByKey!369 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412))) (Some!374 (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun lt!205947 () Unit!13189)

(assert (=> d!74471 (= lt!205947 (choose!1338 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun e!265478 () Bool)

(assert (=> d!74471 e!265478))

(declare-fun res!270160 () Bool)

(assert (=> d!74471 (=> (not res!270160) (not e!265478))))

(assert (=> d!74471 (= res!270160 (isStrictlySorted!373 lt!205653))))

(assert (=> d!74471 (= (lemmaContainsTupThenGetReturnValue!193 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))) lt!205947)))

(declare-fun b!453528 () Bool)

(declare-fun res!270161 () Bool)

(assert (=> b!453528 (=> (not res!270161) (not e!265478))))

(assert (=> b!453528 (= res!270161 (containsKey!346 lt!205653 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun b!453529 () Bool)

(assert (=> b!453529 (= e!265478 (contains!2501 lt!205653 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74471 res!270160) b!453528))

(assert (= (and b!453528 res!270161) b!453529))

(assert (=> d!74471 m!436957))

(declare-fun m!437911 () Bool)

(assert (=> d!74471 m!437911))

(declare-fun m!437913 () Bool)

(assert (=> d!74471 m!437913))

(declare-fun m!437915 () Bool)

(assert (=> b!453528 m!437915))

(declare-fun m!437917 () Bool)

(assert (=> b!453529 m!437917))

(assert (=> d!74221 d!74471))

(declare-fun d!74473 () Bool)

(declare-fun e!265479 () Bool)

(assert (=> d!74473 e!265479))

(declare-fun res!270163 () Bool)

(assert (=> d!74473 (=> (not res!270163) (not e!265479))))

(declare-fun lt!205948 () List!8105)

(assert (=> d!74473 (= res!270163 (isStrictlySorted!373 lt!205948))))

(declare-fun e!265482 () List!8105)

(assert (=> d!74473 (= lt!205948 e!265482)))

(declare-fun c!56258 () Bool)

(assert (=> d!74473 (= c!56258 (and ((_ is Cons!8101) (toList!3480 lt!205557)) (bvslt (_1!4011 (h!8957 (toList!3480 lt!205557))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> d!74473 (isStrictlySorted!373 (toList!3480 lt!205557))))

(assert (=> d!74473 (= (insertStrictlySorted!195 (toList!3480 lt!205557) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))) lt!205948)))

(declare-fun b!453530 () Bool)

(declare-fun e!265481 () List!8105)

(declare-fun c!56259 () Bool)

(declare-fun c!56257 () Bool)

(assert (=> b!453530 (= e!265481 (ite c!56259 (t!13939 (toList!3480 lt!205557)) (ite c!56257 (Cons!8101 (h!8957 (toList!3480 lt!205557)) (t!13939 (toList!3480 lt!205557))) Nil!8102)))))

(declare-fun b!453531 () Bool)

(declare-fun res!270162 () Bool)

(assert (=> b!453531 (=> (not res!270162) (not e!265479))))

(assert (=> b!453531 (= res!270162 (containsKey!346 lt!205948 (_1!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30081 () Bool)

(declare-fun call!30084 () List!8105)

(declare-fun call!30086 () List!8105)

(assert (=> bm!30081 (= call!30084 call!30086)))

(declare-fun b!453532 () Bool)

(declare-fun e!265483 () List!8105)

(declare-fun call!30085 () List!8105)

(assert (=> b!453532 (= e!265483 call!30085)))

(declare-fun b!453533 () Bool)

(declare-fun e!265480 () List!8105)

(assert (=> b!453533 (= e!265482 e!265480)))

(assert (=> b!453533 (= c!56259 (and ((_ is Cons!8101) (toList!3480 lt!205557)) (= (_1!4011 (h!8957 (toList!3480 lt!205557))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(declare-fun b!453534 () Bool)

(assert (=> b!453534 (= c!56257 (and ((_ is Cons!8101) (toList!3480 lt!205557)) (bvsgt (_1!4011 (h!8957 (toList!3480 lt!205557))) (_1!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (=> b!453534 (= e!265480 e!265483)))

(declare-fun b!453535 () Bool)

(assert (=> b!453535 (= e!265481 (insertStrictlySorted!195 (t!13939 (toList!3480 lt!205557)) (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))

(declare-fun bm!30082 () Bool)

(assert (=> bm!30082 (= call!30085 call!30084)))

(declare-fun bm!30083 () Bool)

(assert (=> bm!30083 (= call!30086 ($colon$colon!108 e!265481 (ite c!56258 (h!8957 (toList!3480 lt!205557)) (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412))))))))

(declare-fun c!56260 () Bool)

(assert (=> bm!30083 (= c!56260 c!56258)))

(declare-fun b!453536 () Bool)

(assert (=> b!453536 (= e!265482 call!30086)))

(declare-fun b!453537 () Bool)

(assert (=> b!453537 (= e!265483 call!30085)))

(declare-fun b!453538 () Bool)

(assert (=> b!453538 (= e!265480 call!30084)))

(declare-fun b!453539 () Bool)

(assert (=> b!453539 (= e!265479 (contains!2501 lt!205948 (tuple2!8003 (_1!4011 (tuple2!8003 k0!794 v!412)) (_2!4011 (tuple2!8003 k0!794 v!412)))))))

(assert (= (and d!74473 c!56258) b!453536))

(assert (= (and d!74473 (not c!56258)) b!453533))

(assert (= (and b!453533 c!56259) b!453538))

(assert (= (and b!453533 (not c!56259)) b!453534))

(assert (= (and b!453534 c!56257) b!453532))

(assert (= (and b!453534 (not c!56257)) b!453537))

(assert (= (or b!453532 b!453537) bm!30082))

(assert (= (or b!453538 bm!30082) bm!30081))

(assert (= (or b!453536 bm!30081) bm!30083))

(assert (= (and bm!30083 c!56260) b!453535))

(assert (= (and bm!30083 (not c!56260)) b!453530))

(assert (= (and d!74473 res!270163) b!453531))

(assert (= (and b!453531 res!270162) b!453539))

(declare-fun m!437919 () Bool)

(assert (=> bm!30083 m!437919))

(declare-fun m!437921 () Bool)

(assert (=> b!453535 m!437921))

(declare-fun m!437923 () Bool)

(assert (=> d!74473 m!437923))

(declare-fun m!437925 () Bool)

(assert (=> d!74473 m!437925))

(declare-fun m!437927 () Bool)

(assert (=> b!453539 m!437927))

(declare-fun m!437929 () Bool)

(assert (=> b!453531 m!437929))

(assert (=> d!74221 d!74473))

(declare-fun d!74475 () Bool)

(assert (=> d!74475 (= (get!6654 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863) lt!205553) (v!8370 (select (store (arr!13467 _values!549) i!563 (ValueCellFull!5727 v!412)) from!863)))))

(assert (=> b!453074 d!74475))

(declare-fun b!453540 () Bool)

(declare-fun e!265485 () Bool)

(declare-fun call!30087 () Bool)

(assert (=> b!453540 (= e!265485 call!30087)))

(declare-fun bm!30084 () Bool)

(assert (=> bm!30084 (= call!30087 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!205547 mask!1025))))

(declare-fun b!453542 () Bool)

(declare-fun e!265484 () Bool)

(assert (=> b!453542 (= e!265485 e!265484)))

(declare-fun lt!205949 () (_ BitVec 64))

(assert (=> b!453542 (= lt!205949 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!205951 () Unit!13189)

(assert (=> b!453542 (= lt!205951 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!205547 lt!205949 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!453542 (arrayContainsKey!0 lt!205547 lt!205949 #b00000000000000000000000000000000)))

(declare-fun lt!205950 () Unit!13189)

(assert (=> b!453542 (= lt!205950 lt!205951)))

(declare-fun res!270165 () Bool)

(assert (=> b!453542 (= res!270165 (= (seekEntryOrOpen!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!205547 mask!1025) (Found!3520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!453542 (=> (not res!270165) (not e!265484))))

(declare-fun b!453543 () Bool)

(declare-fun e!265486 () Bool)

(assert (=> b!453543 (= e!265486 e!265485)))

(declare-fun c!56261 () Bool)

(assert (=> b!453543 (= c!56261 (validKeyInArray!0 (select (arr!13466 lt!205547) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453541 () Bool)

(assert (=> b!453541 (= e!265484 call!30087)))

(declare-fun d!74477 () Bool)

(declare-fun res!270164 () Bool)

(assert (=> d!74477 (=> res!270164 e!265486)))

(assert (=> d!74477 (= res!270164 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 lt!205547)))))

(assert (=> d!74477 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!205547 mask!1025) e!265486)))

(assert (= (and d!74477 (not res!270164)) b!453543))

(assert (= (and b!453543 c!56261) b!453542))

(assert (= (and b!453543 (not c!56261)) b!453540))

(assert (= (and b!453542 res!270165) b!453541))

(assert (= (or b!453541 b!453540) bm!30084))

(declare-fun m!437931 () Bool)

(assert (=> bm!30084 m!437931))

(assert (=> b!453542 m!437175))

(declare-fun m!437933 () Bool)

(assert (=> b!453542 m!437933))

(declare-fun m!437935 () Bool)

(assert (=> b!453542 m!437935))

(assert (=> b!453542 m!437175))

(declare-fun m!437937 () Bool)

(assert (=> b!453542 m!437937))

(assert (=> b!453543 m!437175))

(assert (=> b!453543 m!437175))

(assert (=> b!453543 m!437177))

(assert (=> bm!30038 d!74477))

(declare-fun d!74479 () Bool)

(declare-fun e!265488 () Bool)

(assert (=> d!74479 e!265488))

(declare-fun res!270166 () Bool)

(assert (=> d!74479 (=> res!270166 e!265488)))

(declare-fun lt!205954 () Bool)

(assert (=> d!74479 (= res!270166 (not lt!205954))))

(declare-fun lt!205952 () Bool)

(assert (=> d!74479 (= lt!205954 lt!205952)))

(declare-fun lt!205955 () Unit!13189)

(declare-fun e!265487 () Unit!13189)

(assert (=> d!74479 (= lt!205955 e!265487)))

(declare-fun c!56262 () Bool)

(assert (=> d!74479 (= c!56262 lt!205952)))

(assert (=> d!74479 (= lt!205952 (containsKey!346 (toList!3480 lt!205685) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74479 (= (contains!2500 lt!205685 #b1000000000000000000000000000000000000000000000000000000000000000) lt!205954)))

(declare-fun b!453544 () Bool)

(declare-fun lt!205953 () Unit!13189)

(assert (=> b!453544 (= e!265487 lt!205953)))

(assert (=> b!453544 (= lt!205953 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205685) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453544 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453545 () Bool)

(declare-fun Unit!13217 () Unit!13189)

(assert (=> b!453545 (= e!265487 Unit!13217)))

(declare-fun b!453546 () Bool)

(assert (=> b!453546 (= e!265488 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205685) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74479 c!56262) b!453544))

(assert (= (and d!74479 (not c!56262)) b!453545))

(assert (= (and d!74479 (not res!270166)) b!453546))

(declare-fun m!437939 () Bool)

(assert (=> d!74479 m!437939))

(declare-fun m!437941 () Bool)

(assert (=> b!453544 m!437941))

(declare-fun m!437943 () Bool)

(assert (=> b!453544 m!437943))

(assert (=> b!453544 m!437943))

(declare-fun m!437945 () Bool)

(assert (=> b!453544 m!437945))

(assert (=> b!453546 m!437943))

(assert (=> b!453546 m!437943))

(assert (=> b!453546 m!437945))

(assert (=> b!453094 d!74479))

(assert (=> b!453077 d!74325))

(declare-fun d!74481 () Bool)

(declare-fun e!265490 () Bool)

(assert (=> d!74481 e!265490))

(declare-fun res!270167 () Bool)

(assert (=> d!74481 (=> res!270167 e!265490)))

(declare-fun lt!205958 () Bool)

(assert (=> d!74481 (= res!270167 (not lt!205958))))

(declare-fun lt!205956 () Bool)

(assert (=> d!74481 (= lt!205958 lt!205956)))

(declare-fun lt!205959 () Unit!13189)

(declare-fun e!265489 () Unit!13189)

(assert (=> d!74481 (= lt!205959 e!265489)))

(declare-fun c!56263 () Bool)

(assert (=> d!74481 (= c!56263 lt!205956)))

(assert (=> d!74481 (= lt!205956 (containsKey!346 (toList!3480 lt!205626) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!74481 (= (contains!2500 lt!205626 #b1000000000000000000000000000000000000000000000000000000000000000) lt!205958)))

(declare-fun b!453547 () Bool)

(declare-fun lt!205957 () Unit!13189)

(assert (=> b!453547 (= e!265489 lt!205957)))

(assert (=> b!453547 (= lt!205957 (lemmaContainsKeyImpliesGetValueByKeyDefined!295 (toList!3480 lt!205626) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!453547 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!453548 () Bool)

(declare-fun Unit!13218 () Unit!13189)

(assert (=> b!453548 (= e!265489 Unit!13218)))

(declare-fun b!453549 () Bool)

(assert (=> b!453549 (= e!265490 (isDefined!296 (getValueByKey!369 (toList!3480 lt!205626) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74481 c!56263) b!453547))

(assert (= (and d!74481 (not c!56263)) b!453548))

(assert (= (and d!74481 (not res!270167)) b!453549))

(declare-fun m!437947 () Bool)

(assert (=> d!74481 m!437947))

(declare-fun m!437949 () Bool)

(assert (=> b!453547 m!437949))

(declare-fun m!437951 () Bool)

(assert (=> b!453547 m!437951))

(assert (=> b!453547 m!437951))

(declare-fun m!437953 () Bool)

(assert (=> b!453547 m!437953))

(assert (=> b!453549 m!437951))

(assert (=> b!453549 m!437951))

(assert (=> b!453549 m!437953))

(assert (=> b!453025 d!74481))

(declare-fun b!453550 () Bool)

(declare-fun e!265491 () Bool)

(declare-fun call!30088 () Bool)

(assert (=> b!453550 (= e!265491 call!30088)))

(declare-fun b!453551 () Bool)

(declare-fun e!265494 () Bool)

(assert (=> b!453551 (= e!265494 e!265491)))

(declare-fun c!56264 () Bool)

(assert (=> b!453551 (= c!56264 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453552 () Bool)

(declare-fun e!265493 () Bool)

(assert (=> b!453552 (= e!265493 e!265494)))

(declare-fun res!270168 () Bool)

(assert (=> b!453552 (=> (not res!270168) (not e!265494))))

(declare-fun e!265492 () Bool)

(assert (=> b!453552 (= res!270168 (not e!265492))))

(declare-fun res!270169 () Bool)

(assert (=> b!453552 (=> (not res!270169) (not e!265492))))

(assert (=> b!453552 (= res!270169 (validKeyInArray!0 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453553 () Bool)

(assert (=> b!453553 (= e!265492 (contains!2499 (ite c!56087 (Cons!8100 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) Nil!8101) Nil!8101) (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!453554 () Bool)

(assert (=> b!453554 (= e!265491 call!30088)))

(declare-fun bm!30085 () Bool)

(assert (=> bm!30085 (= call!30088 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!56264 (Cons!8100 (select (arr!13466 _keys!709) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!56087 (Cons!8100 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) Nil!8101) Nil!8101)) (ite c!56087 (Cons!8100 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) Nil!8101) Nil!8101))))))

(declare-fun d!74483 () Bool)

(declare-fun res!270170 () Bool)

(assert (=> d!74483 (=> res!270170 e!265493)))

(assert (=> d!74483 (= res!270170 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13818 _keys!709)))))

(assert (=> d!74483 (= (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56087 (Cons!8100 (select (arr!13466 _keys!709) #b00000000000000000000000000000000) Nil!8101) Nil!8101)) e!265493)))

(assert (= (and d!74483 (not res!270170)) b!453552))

(assert (= (and b!453552 res!270169) b!453553))

(assert (= (and b!453552 res!270168) b!453551))

(assert (= (and b!453551 c!56264) b!453550))

(assert (= (and b!453551 (not c!56264)) b!453554))

(assert (= (or b!453550 b!453554) bm!30085))

(assert (=> b!453551 m!437595))

(assert (=> b!453551 m!437595))

(assert (=> b!453551 m!437603))

(assert (=> b!453552 m!437595))

(assert (=> b!453552 m!437595))

(assert (=> b!453552 m!437603))

(assert (=> b!453553 m!437595))

(assert (=> b!453553 m!437595))

(declare-fun m!437955 () Bool)

(assert (=> b!453553 m!437955))

(assert (=> bm!30085 m!437595))

(declare-fun m!437957 () Bool)

(assert (=> bm!30085 m!437957))

(assert (=> bm!30032 d!74483))

(declare-fun mapIsEmpty!19855 () Bool)

(declare-fun mapRes!19855 () Bool)

(assert (=> mapIsEmpty!19855 mapRes!19855))

(declare-fun b!453555 () Bool)

(declare-fun e!265495 () Bool)

(assert (=> b!453555 (= e!265495 tp_is_empty!12141)))

(declare-fun condMapEmpty!19855 () Bool)

(declare-fun mapDefault!19855 () ValueCell!5727)

(assert (=> mapNonEmpty!19854 (= condMapEmpty!19855 (= mapRest!19854 ((as const (Array (_ BitVec 32) ValueCell!5727)) mapDefault!19855)))))

(declare-fun e!265496 () Bool)

(assert (=> mapNonEmpty!19854 (= tp!38241 (and e!265496 mapRes!19855))))

(declare-fun mapNonEmpty!19855 () Bool)

(declare-fun tp!38242 () Bool)

(assert (=> mapNonEmpty!19855 (= mapRes!19855 (and tp!38242 e!265495))))

(declare-fun mapRest!19855 () (Array (_ BitVec 32) ValueCell!5727))

(declare-fun mapValue!19855 () ValueCell!5727)

(declare-fun mapKey!19855 () (_ BitVec 32))

(assert (=> mapNonEmpty!19855 (= mapRest!19854 (store mapRest!19855 mapKey!19855 mapValue!19855))))

(declare-fun b!453556 () Bool)

(assert (=> b!453556 (= e!265496 tp_is_empty!12141)))

(assert (= (and mapNonEmpty!19854 condMapEmpty!19855) mapIsEmpty!19855))

(assert (= (and mapNonEmpty!19854 (not condMapEmpty!19855)) mapNonEmpty!19855))

(assert (= (and mapNonEmpty!19855 ((_ is ValueCellFull!5727) mapValue!19855)) b!453555))

(assert (= (and mapNonEmpty!19854 ((_ is ValueCellFull!5727) mapDefault!19855)) b!453556))

(declare-fun m!437959 () Bool)

(assert (=> mapNonEmpty!19855 m!437959))

(declare-fun b_lambda!9685 () Bool)

(assert (= b_lambda!9667 (or (and start!40822 b_free!10803) b_lambda!9685)))

(declare-fun b_lambda!9687 () Bool)

(assert (= b_lambda!9665 (or (and start!40822 b_free!10803) b_lambda!9687)))

(declare-fun b_lambda!9689 () Bool)

(assert (= b_lambda!9661 (or (and start!40822 b_free!10803) b_lambda!9689)))

(declare-fun b_lambda!9691 () Bool)

(assert (= b_lambda!9657 (or (and start!40822 b_free!10803) b_lambda!9691)))

(declare-fun b_lambda!9693 () Bool)

(assert (= b_lambda!9673 (or (and start!40822 b_free!10803) b_lambda!9693)))

(declare-fun b_lambda!9695 () Bool)

(assert (= b_lambda!9683 (or (and start!40822 b_free!10803) b_lambda!9695)))

(declare-fun b_lambda!9697 () Bool)

(assert (= b_lambda!9681 (or (and start!40822 b_free!10803) b_lambda!9697)))

(declare-fun b_lambda!9699 () Bool)

(assert (= b_lambda!9677 (or (and start!40822 b_free!10803) b_lambda!9699)))

(declare-fun b_lambda!9701 () Bool)

(assert (= b_lambda!9659 (or (and start!40822 b_free!10803) b_lambda!9701)))

(declare-fun b_lambda!9703 () Bool)

(assert (= b_lambda!9675 (or (and start!40822 b_free!10803) b_lambda!9703)))

(declare-fun b_lambda!9705 () Bool)

(assert (= b_lambda!9669 (or (and start!40822 b_free!10803) b_lambda!9705)))

(declare-fun b_lambda!9707 () Bool)

(assert (= b_lambda!9671 (or (and start!40822 b_free!10803) b_lambda!9707)))

(declare-fun b_lambda!9709 () Bool)

(assert (= b_lambda!9663 (or (and start!40822 b_free!10803) b_lambda!9709)))

(declare-fun b_lambda!9711 () Bool)

(assert (= b_lambda!9679 (or (and start!40822 b_free!10803) b_lambda!9711)))

(check-sat (not b!453253) (not d!74355) (not d!74345) (not b!453523) (not b!453311) (not b!453187) (not b!453307) (not b!453148) (not b!453542) (not b_next!10803) (not b!453175) (not b!453133) (not d!74429) (not b!453162) (not b!453293) (not d!74271) (not b!453503) (not b!453441) (not b!453355) (not d!74367) (not b_lambda!9705) (not b!453340) (not b!453435) (not b!453504) (not b!453342) (not b!453300) (not d!74327) (not b!453467) (not b_lambda!9649) (not b!453468) (not d!74377) (not d!74303) (not b!453327) (not bm!30075) (not b_lambda!9643) (not b!453507) (not b!453476) (not b!453478) (not d!74299) (not b!453320) (not b!453344) (not b!453131) (not b!453319) (not b!453330) (not b!453282) (not b!453231) (not d!74417) (not b!453495) (not b!453389) (not b!453438) (not bm!30071) (not b!453251) (not b!453510) (not b_lambda!9687) (not b!453138) (not b!453287) (not b_lambda!9703) (not b!453406) (not d!74453) (not b!453296) (not b!453315) (not d!74321) (not b!453428) (not b!453280) (not b!453174) (not b!453349) (not b!453415) (not b!453308) (not b!453431) (not b_lambda!9711) (not bm!30068) (not d!74427) (not b!453350) (not d!74267) (not b!453262) (not b_lambda!9655) (not d!74343) (not b!453367) (not b_lambda!9685) (not d!74279) (not b!453401) (not b!453392) (not b_lambda!9693) (not b!453457) (not bm!30080) (not b!453235) (not b!453260) (not b!453362) (not b!453172) (not b!453409) tp_is_empty!12141 (not d!74281) (not bm!30078) (not b_lambda!9647) (not bm!30047) (not b!453528) (not b!453551) (not b!453295) (not b!453147) (not b!453285) (not b!453283) (not d!74333) (not d!74467) (not b!453329) (not b!453247) (not bm!30066) (not bm!30046) (not b!453164) (not b!453180) (not d!74437) (not b!453239) (not d!74331) (not d!74471) (not b!453284) (not b!453294) (not d!74425) (not d!74357) (not b!453199) (not b!453482) (not b!453498) (not d!74309) (not d!74479) (not b!453309) (not b!453386) (not d!74289) (not d!74317) (not d!74431) (not b!453529) (not b!453209) (not b!453249) (not b!453383) (not b_lambda!9691) (not d!74283) (not b!453304) (not b!453193) (not b!453170) (not bm!30061) (not bm!30059) (not b!453497) (not b!453154) (not b!453547) (not b!453475) (not d!74319) (not b!453488) (not bm!30085) (not d!74439) (not b!453388) (not bm!30067) (not d!74411) (not d!74421) (not b!453543) (not b!453437) (not d!74259) (not b!453470) (not b!453274) (not d!74455) (not bm!30060) (not b!453160) (not b!453403) (not d!74305) (not d!74313) (not b!453338) (not b!453333) (not b!453135) (not b!453451) (not b!453292) (not b!453312) (not d!74423) (not b!453553) (not b!453197) (not b!453400) (not b!453492) (not bm!30072) (not b!453194) (not b!453501) (not b!453240) (not d!74399) (not b!453163) (not d!74405) (not d!74457) (not d!74347) (not b!453181) (not d!74247) (not b!453182) (not b!453192) (not b!453291) (not b!453408) (not b!453183) (not b!453500) (not b!453347) (not b!453518) (not b!453281) (not b!453250) (not d!74293) (not d!74273) (not d!74261) (not b!453336) (not b!453436) (not d!74407) (not d!74369) (not b!453184) (not b_lambda!9653) (not b_lambda!9615) (not b!453509) (not b!453278) (not d!74381) (not d!74337) (not b!453535) (not b!453394) (not d!74389) (not d!74363) (not d!74265) (not d!74385) (not b!453318) (not b!453546) (not b!453196) (not b!453486) (not b_lambda!9701) (not d!74285) (not bm!30079) (not b!453425) (not d!74373) (not d!74339) (not b!453298) (not b!453152) (not b!453450) (not b!453445) (not b_lambda!9645) (not b!453263) (not b!453552) (not b!453168) (not b!453512) (not b!453255) (not d!74353) (not d!74401) (not b!453245) (not b!453144) (not d!74395) (not d!74433) (not d!74253) (not d!74473) (not d!74351) (not b!453419) (not b!453391) (not b!453463) (not b_lambda!9639) (not b!453363) (not d!74419) (not bm!30056) (not d!74465) (not d!74245) (not b!453365) (not b_lambda!9707) (not b!453499) (not b!453242) (not b!453288) (not b!453275) (not b!453453) (not d!74445) (not b!453432) (not b!453123) (not bm!30045) (not b!453489) (not d!74441) (not d!74335) (not b!453171) (not b!453448) (not b_lambda!9699) (not b!453331) (not b!453411) (not d!74451) (not b!453465) (not b!453254) (not b!453358) (not b!453531) (not bm!30083) (not b!453526) (not b!453149) (not b!453544) (not b!453323) (not b!453324) (not b_lambda!9651) (not b!453421) (not b!453430) (not b!453303) (not b!453265) (not d!74413) (not bm!30084) (not b!453143) (not b!453361) (not d!74301) (not d!74459) b_and!18965 (not b!453273) (not b!453146) (not b!453301) (not b!453439) (not b!453190) (not d!74329) (not b!453443) (not b!453208) (not b!453422) (not d!74263) (not b!453487) (not mapNonEmpty!19855) (not b_lambda!9695) (not b!453151) (not b!453424) (not b!453321) (not b!453136) (not b!453317) (not b_lambda!9697) (not b!453549) (not b!453289) (not b!453306) (not b!453145) (not b!453302) (not d!74251) (not b_lambda!9689) (not b!453178) (not d!74375) (not d!74291) (not b!453186) (not d!74481) (not b!453514) (not d!74393) (not b!453461) (not b!453473) (not b!453202) (not d!74409) (not d!74461) (not b!453434) (not b!453420) (not b_lambda!9641) (not b!453521) (not b!453257) (not b!453269) (not b!453539) (not b!453491) (not b!453134) (not d!74447) (not b_lambda!9637) (not d!74255) (not b_lambda!9709))
(check-sat b_and!18965 (not b_next!10803))
