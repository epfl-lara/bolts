; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40274 () Bool)

(assert start!40274)

(declare-fun b_free!10527 () Bool)

(declare-fun b_next!10527 () Bool)

(assert (=> start!40274 (= b_free!10527 (not b_next!10527))))

(declare-fun tp!37118 () Bool)

(declare-fun b_and!18513 () Bool)

(assert (=> start!40274 (= tp!37118 b_and!18513)))

(declare-fun b!441936 () Bool)

(declare-fun e!260128 () Bool)

(declare-fun e!260132 () Bool)

(declare-fun mapRes!19149 () Bool)

(assert (=> b!441936 (= e!260128 (and e!260132 mapRes!19149))))

(declare-fun condMapEmpty!19149 () Bool)

(declare-datatypes ((V!16685 0))(
  ( (V!16686 (val!5887 Int)) )
))
(declare-datatypes ((ValueCell!5499 0))(
  ( (ValueCellFull!5499 (v!8130 V!16685)) (EmptyCell!5499) )
))
(declare-datatypes ((array!27157 0))(
  ( (array!27158 (arr!13025 (Array (_ BitVec 32) ValueCell!5499)) (size!13377 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27157)

(declare-fun mapDefault!19149 () ValueCell!5499)

(assert (=> b!441936 (= condMapEmpty!19149 (= (arr!13025 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5499)) mapDefault!19149)))))

(declare-fun b!441937 () Bool)

(declare-fun res!261815 () Bool)

(declare-fun e!260127 () Bool)

(assert (=> b!441937 (=> (not res!261815) (not e!260127))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441937 (= res!261815 (validKeyInArray!0 k0!794))))

(declare-fun minValue!515 () V!16685)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16685)

(declare-fun bm!29521 () Bool)

(declare-fun lt!203054 () array!27157)

(declare-fun c!55727 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27159 0))(
  ( (array!27160 (arr!13026 (Array (_ BitVec 32) (_ BitVec 64))) (size!13378 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27159)

(declare-fun lt!203055 () array!27159)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7756 0))(
  ( (tuple2!7757 (_1!3888 (_ BitVec 64)) (_2!3888 V!16685)) )
))
(declare-datatypes ((List!7798 0))(
  ( (Nil!7795) (Cons!7794 (h!8650 tuple2!7756) (t!13562 List!7798)) )
))
(declare-datatypes ((ListLongMap!6683 0))(
  ( (ListLongMap!6684 (toList!3357 List!7798)) )
))
(declare-fun call!29524 () ListLongMap!6683)

(declare-fun getCurrentListMapNoExtraKeys!1539 (array!27159 array!27157 (_ BitVec 32) (_ BitVec 32) V!16685 V!16685 (_ BitVec 32) Int) ListLongMap!6683)

(assert (=> bm!29521 (= call!29524 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 lt!203055 _keys!709) (ite c!55727 lt!203054 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441938 () Bool)

(declare-fun tp_is_empty!11685 () Bool)

(assert (=> b!441938 (= e!260132 tp_is_empty!11685)))

(declare-fun b!441939 () Bool)

(declare-fun e!260133 () Bool)

(assert (=> b!441939 (= e!260133 tp_is_empty!11685)))

(declare-fun b!441940 () Bool)

(declare-fun res!261821 () Bool)

(assert (=> b!441940 (=> (not res!261821) (not e!260127))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441940 (= res!261821 (or (= (select (arr!13026 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13026 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441941 () Bool)

(declare-fun res!261813 () Bool)

(assert (=> b!441941 (=> (not res!261813) (not e!260127))))

(assert (=> b!441941 (= res!261813 (and (= (size!13377 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13378 _keys!709) (size!13377 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun call!29525 () ListLongMap!6683)

(declare-fun bm!29522 () Bool)

(assert (=> bm!29522 (= call!29525 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 _keys!709 lt!203055) (ite c!55727 _values!549 lt!203054) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441942 () Bool)

(declare-fun res!261817 () Bool)

(assert (=> b!441942 (=> (not res!261817) (not e!260127))))

(declare-datatypes ((List!7799 0))(
  ( (Nil!7796) (Cons!7795 (h!8651 (_ BitVec 64)) (t!13563 List!7799)) )
))
(declare-fun arrayNoDuplicates!0 (array!27159 (_ BitVec 32) List!7799) Bool)

(assert (=> b!441942 (= res!261817 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7796))))

(declare-fun res!261818 () Bool)

(assert (=> start!40274 (=> (not res!261818) (not e!260127))))

(assert (=> start!40274 (= res!261818 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13378 _keys!709))))))

(assert (=> start!40274 e!260127))

(assert (=> start!40274 tp_is_empty!11685))

(assert (=> start!40274 tp!37118))

(assert (=> start!40274 true))

(declare-fun array_inv!9444 (array!27157) Bool)

(assert (=> start!40274 (and (array_inv!9444 _values!549) e!260128)))

(declare-fun array_inv!9445 (array!27159) Bool)

(assert (=> start!40274 (array_inv!9445 _keys!709)))

(declare-fun b!441943 () Bool)

(declare-fun e!260129 () Bool)

(assert (=> b!441943 (= e!260127 e!260129)))

(declare-fun res!261816 () Bool)

(assert (=> b!441943 (=> (not res!261816) (not e!260129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27159 (_ BitVec 32)) Bool)

(assert (=> b!441943 (= res!261816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203055 mask!1025))))

(assert (=> b!441943 (= lt!203055 (array!27160 (store (arr!13026 _keys!709) i!563 k0!794) (size!13378 _keys!709)))))

(declare-fun b!441944 () Bool)

(declare-fun res!261824 () Bool)

(assert (=> b!441944 (=> (not res!261824) (not e!260129))))

(assert (=> b!441944 (= res!261824 (arrayNoDuplicates!0 lt!203055 #b00000000000000000000000000000000 Nil!7796))))

(declare-fun b!441945 () Bool)

(declare-fun e!260131 () Bool)

(assert (=> b!441945 (= e!260131 (= call!29525 call!29524))))

(declare-fun b!441946 () Bool)

(declare-fun e!260130 () Bool)

(assert (=> b!441946 (= e!260130 (not (not (validKeyInArray!0 (select (arr!13026 _keys!709) from!863)))))))

(assert (=> b!441946 e!260131))

(assert (=> b!441946 (= c!55727 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun v!412 () V!16685)

(declare-datatypes ((Unit!13093 0))(
  ( (Unit!13094) )
))
(declare-fun lt!203051 () Unit!13093)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!667 (array!27159 array!27157 (_ BitVec 32) (_ BitVec 32) V!16685 V!16685 (_ BitVec 32) (_ BitVec 64) V!16685 (_ BitVec 32) Int) Unit!13093)

(assert (=> b!441946 (= lt!203051 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!667 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441947 () Bool)

(assert (=> b!441947 (= e!260129 e!260130)))

(declare-fun res!261822 () Bool)

(assert (=> b!441947 (=> (not res!261822) (not e!260130))))

(assert (=> b!441947 (= res!261822 (= from!863 i!563))))

(declare-fun lt!203052 () ListLongMap!6683)

(assert (=> b!441947 (= lt!203052 (getCurrentListMapNoExtraKeys!1539 lt!203055 lt!203054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441947 (= lt!203054 (array!27158 (store (arr!13025 _values!549) i!563 (ValueCellFull!5499 v!412)) (size!13377 _values!549)))))

(declare-fun lt!203053 () ListLongMap!6683)

(assert (=> b!441947 (= lt!203053 (getCurrentListMapNoExtraKeys!1539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441948 () Bool)

(declare-fun res!261823 () Bool)

(assert (=> b!441948 (=> (not res!261823) (not e!260127))))

(assert (=> b!441948 (= res!261823 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13378 _keys!709))))))

(declare-fun mapIsEmpty!19149 () Bool)

(assert (=> mapIsEmpty!19149 mapRes!19149))

(declare-fun b!441949 () Bool)

(declare-fun res!261825 () Bool)

(assert (=> b!441949 (=> (not res!261825) (not e!260127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441949 (= res!261825 (validMask!0 mask!1025))))

(declare-fun b!441950 () Bool)

(declare-fun res!261820 () Bool)

(assert (=> b!441950 (=> (not res!261820) (not e!260127))))

(declare-fun arrayContainsKey!0 (array!27159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441950 (= res!261820 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441951 () Bool)

(declare-fun res!261819 () Bool)

(assert (=> b!441951 (=> (not res!261819) (not e!260129))))

(assert (=> b!441951 (= res!261819 (bvsle from!863 i!563))))

(declare-fun b!441952 () Bool)

(declare-fun +!1490 (ListLongMap!6683 tuple2!7756) ListLongMap!6683)

(assert (=> b!441952 (= e!260131 (= call!29524 (+!1490 call!29525 (tuple2!7757 k0!794 v!412))))))

(declare-fun mapNonEmpty!19149 () Bool)

(declare-fun tp!37119 () Bool)

(assert (=> mapNonEmpty!19149 (= mapRes!19149 (and tp!37119 e!260133))))

(declare-fun mapValue!19149 () ValueCell!5499)

(declare-fun mapKey!19149 () (_ BitVec 32))

(declare-fun mapRest!19149 () (Array (_ BitVec 32) ValueCell!5499))

(assert (=> mapNonEmpty!19149 (= (arr!13025 _values!549) (store mapRest!19149 mapKey!19149 mapValue!19149))))

(declare-fun b!441953 () Bool)

(declare-fun res!261814 () Bool)

(assert (=> b!441953 (=> (not res!261814) (not e!260127))))

(assert (=> b!441953 (= res!261814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40274 res!261818) b!441949))

(assert (= (and b!441949 res!261825) b!441941))

(assert (= (and b!441941 res!261813) b!441953))

(assert (= (and b!441953 res!261814) b!441942))

(assert (= (and b!441942 res!261817) b!441948))

(assert (= (and b!441948 res!261823) b!441937))

(assert (= (and b!441937 res!261815) b!441940))

(assert (= (and b!441940 res!261821) b!441950))

(assert (= (and b!441950 res!261820) b!441943))

(assert (= (and b!441943 res!261816) b!441944))

(assert (= (and b!441944 res!261824) b!441951))

(assert (= (and b!441951 res!261819) b!441947))

(assert (= (and b!441947 res!261822) b!441946))

(assert (= (and b!441946 c!55727) b!441952))

(assert (= (and b!441946 (not c!55727)) b!441945))

(assert (= (or b!441952 b!441945) bm!29521))

(assert (= (or b!441952 b!441945) bm!29522))

(assert (= (and b!441936 condMapEmpty!19149) mapIsEmpty!19149))

(assert (= (and b!441936 (not condMapEmpty!19149)) mapNonEmpty!19149))

(get-info :version)

(assert (= (and mapNonEmpty!19149 ((_ is ValueCellFull!5499) mapValue!19149)) b!441939))

(assert (= (and b!441936 ((_ is ValueCellFull!5499) mapDefault!19149)) b!441938))

(assert (= start!40274 b!441936))

(declare-fun m!428641 () Bool)

(assert (=> start!40274 m!428641))

(declare-fun m!428643 () Bool)

(assert (=> start!40274 m!428643))

(declare-fun m!428645 () Bool)

(assert (=> bm!29522 m!428645))

(declare-fun m!428647 () Bool)

(assert (=> b!441942 m!428647))

(declare-fun m!428649 () Bool)

(assert (=> bm!29521 m!428649))

(declare-fun m!428651 () Bool)

(assert (=> b!441944 m!428651))

(declare-fun m!428653 () Bool)

(assert (=> b!441946 m!428653))

(assert (=> b!441946 m!428653))

(declare-fun m!428655 () Bool)

(assert (=> b!441946 m!428655))

(declare-fun m!428657 () Bool)

(assert (=> b!441946 m!428657))

(declare-fun m!428659 () Bool)

(assert (=> b!441952 m!428659))

(declare-fun m!428661 () Bool)

(assert (=> b!441953 m!428661))

(declare-fun m!428663 () Bool)

(assert (=> b!441940 m!428663))

(declare-fun m!428665 () Bool)

(assert (=> b!441950 m!428665))

(declare-fun m!428667 () Bool)

(assert (=> b!441947 m!428667))

(declare-fun m!428669 () Bool)

(assert (=> b!441947 m!428669))

(declare-fun m!428671 () Bool)

(assert (=> b!441947 m!428671))

(declare-fun m!428673 () Bool)

(assert (=> mapNonEmpty!19149 m!428673))

(declare-fun m!428675 () Bool)

(assert (=> b!441943 m!428675))

(declare-fun m!428677 () Bool)

(assert (=> b!441943 m!428677))

(declare-fun m!428679 () Bool)

(assert (=> b!441949 m!428679))

(declare-fun m!428681 () Bool)

(assert (=> b!441937 m!428681))

(check-sat b_and!18513 (not b!441946) (not b!441949) (not b!441952) (not b!441937) (not b!441950) (not b!441942) (not b!441943) (not b!441944) (not start!40274) (not b_next!10527) (not bm!29522) (not b!441947) (not bm!29521) (not b!441953) tp_is_empty!11685 (not mapNonEmpty!19149))
(check-sat b_and!18513 (not b_next!10527))
(get-model)

(declare-fun b!442032 () Bool)

(declare-fun e!260176 () ListLongMap!6683)

(assert (=> b!442032 (= e!260176 (ListLongMap!6684 Nil!7795))))

(declare-fun b!442033 () Bool)

(declare-fun e!260178 () Bool)

(declare-fun lt!203090 () ListLongMap!6683)

(declare-fun isEmpty!560 (ListLongMap!6683) Bool)

(assert (=> b!442033 (= e!260178 (isEmpty!560 lt!203090))))

(declare-fun b!442034 () Bool)

(declare-fun e!260174 () ListLongMap!6683)

(declare-fun call!29534 () ListLongMap!6683)

(assert (=> b!442034 (= e!260174 call!29534)))

(declare-fun d!73901 () Bool)

(declare-fun e!260175 () Bool)

(assert (=> d!73901 e!260175))

(declare-fun res!261874 () Bool)

(assert (=> d!73901 (=> (not res!261874) (not e!260175))))

(declare-fun contains!2487 (ListLongMap!6683 (_ BitVec 64)) Bool)

(assert (=> d!73901 (= res!261874 (not (contains!2487 lt!203090 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73901 (= lt!203090 e!260176)))

(declare-fun c!55739 () Bool)

(assert (=> d!73901 (= c!55739 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 lt!203055 _keys!709))))))

(assert (=> d!73901 (validMask!0 mask!1025)))

(assert (=> d!73901 (= (getCurrentListMapNoExtraKeys!1539 (ite c!55727 lt!203055 _keys!709) (ite c!55727 lt!203054 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203090)))

(declare-fun b!442035 () Bool)

(assert (=> b!442035 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 lt!203055 _keys!709))))))

(assert (=> b!442035 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13377 (ite c!55727 lt!203054 _values!549))))))

(declare-fun e!260173 () Bool)

(declare-fun apply!309 (ListLongMap!6683 (_ BitVec 64)) V!16685)

(declare-fun get!6471 (ValueCell!5499 V!16685) V!16685)

(declare-fun dynLambda!840 (Int (_ BitVec 64)) V!16685)

(assert (=> b!442035 (= e!260173 (= (apply!309 lt!203090 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6471 (select (arr!13025 (ite c!55727 lt!203054 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!442036 () Bool)

(declare-fun e!260179 () Bool)

(assert (=> b!442036 (= e!260179 e!260178)))

(declare-fun c!55740 () Bool)

(assert (=> b!442036 (= c!55740 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 lt!203055 _keys!709))))))

(declare-fun b!442037 () Bool)

(assert (=> b!442037 (= e!260175 e!260179)))

(declare-fun c!55742 () Bool)

(declare-fun e!260177 () Bool)

(assert (=> b!442037 (= c!55742 e!260177)))

(declare-fun res!261875 () Bool)

(assert (=> b!442037 (=> (not res!261875) (not e!260177))))

(assert (=> b!442037 (= res!261875 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 lt!203055 _keys!709))))))

(declare-fun bm!29531 () Bool)

(assert (=> bm!29531 (= call!29534 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 lt!203055 _keys!709) (ite c!55727 lt!203054 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!442038 () Bool)

(assert (=> b!442038 (= e!260177 (validKeyInArray!0 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!442038 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!442039 () Bool)

(assert (=> b!442039 (= e!260176 e!260174)))

(declare-fun c!55741 () Bool)

(assert (=> b!442039 (= c!55741 (validKeyInArray!0 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!442040 () Bool)

(assert (=> b!442040 (= e!260178 (= lt!203090 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 lt!203055 _keys!709) (ite c!55727 lt!203054 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!442041 () Bool)

(declare-fun res!261876 () Bool)

(assert (=> b!442041 (=> (not res!261876) (not e!260175))))

(assert (=> b!442041 (= res!261876 (not (contains!2487 lt!203090 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442042 () Bool)

(declare-fun lt!203091 () Unit!13093)

(declare-fun lt!203085 () Unit!13093)

(assert (=> b!442042 (= lt!203091 lt!203085)))

(declare-fun lt!203088 () (_ BitVec 64))

(declare-fun lt!203087 () V!16685)

(declare-fun lt!203089 () (_ BitVec 64))

(declare-fun lt!203086 () ListLongMap!6683)

(assert (=> b!442042 (not (contains!2487 (+!1490 lt!203086 (tuple2!7757 lt!203089 lt!203087)) lt!203088))))

(declare-fun addStillNotContains!144 (ListLongMap!6683 (_ BitVec 64) V!16685 (_ BitVec 64)) Unit!13093)

(assert (=> b!442042 (= lt!203085 (addStillNotContains!144 lt!203086 lt!203089 lt!203087 lt!203088))))

(assert (=> b!442042 (= lt!203088 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!442042 (= lt!203087 (get!6471 (select (arr!13025 (ite c!55727 lt!203054 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!442042 (= lt!203089 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!442042 (= lt!203086 call!29534)))

(assert (=> b!442042 (= e!260174 (+!1490 call!29534 (tuple2!7757 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6471 (select (arr!13025 (ite c!55727 lt!203054 _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!442043 () Bool)

(assert (=> b!442043 (= e!260179 e!260173)))

(assert (=> b!442043 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 lt!203055 _keys!709))))))

(declare-fun res!261873 () Bool)

(assert (=> b!442043 (= res!261873 (contains!2487 lt!203090 (select (arr!13026 (ite c!55727 lt!203055 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!442043 (=> (not res!261873) (not e!260173))))

(assert (= (and d!73901 c!55739) b!442032))

(assert (= (and d!73901 (not c!55739)) b!442039))

(assert (= (and b!442039 c!55741) b!442042))

(assert (= (and b!442039 (not c!55741)) b!442034))

(assert (= (or b!442042 b!442034) bm!29531))

(assert (= (and d!73901 res!261874) b!442041))

(assert (= (and b!442041 res!261876) b!442037))

(assert (= (and b!442037 res!261875) b!442038))

(assert (= (and b!442037 c!55742) b!442043))

(assert (= (and b!442037 (not c!55742)) b!442036))

(assert (= (and b!442043 res!261873) b!442035))

(assert (= (and b!442036 c!55740) b!442040))

(assert (= (and b!442036 (not c!55740)) b!442033))

(declare-fun b_lambda!9427 () Bool)

(assert (=> (not b_lambda!9427) (not b!442035)))

(declare-fun t!13567 () Bool)

(declare-fun tb!3723 () Bool)

(assert (=> (and start!40274 (= defaultEntry!557 defaultEntry!557) t!13567) tb!3723))

(declare-fun result!6965 () Bool)

(assert (=> tb!3723 (= result!6965 tp_is_empty!11685)))

(assert (=> b!442035 t!13567))

(declare-fun b_and!18517 () Bool)

(assert (= b_and!18513 (and (=> t!13567 result!6965) b_and!18517)))

(declare-fun b_lambda!9429 () Bool)

(assert (=> (not b_lambda!9429) (not b!442042)))

(assert (=> b!442042 t!13567))

(declare-fun b_and!18519 () Bool)

(assert (= b_and!18517 (and (=> t!13567 result!6965) b_and!18519)))

(declare-fun m!428725 () Bool)

(assert (=> bm!29531 m!428725))

(declare-fun m!428727 () Bool)

(assert (=> b!442038 m!428727))

(assert (=> b!442038 m!428727))

(declare-fun m!428729 () Bool)

(assert (=> b!442038 m!428729))

(assert (=> b!442040 m!428725))

(declare-fun m!428731 () Bool)

(assert (=> b!442042 m!428731))

(declare-fun m!428733 () Bool)

(assert (=> b!442042 m!428733))

(declare-fun m!428735 () Bool)

(assert (=> b!442042 m!428735))

(declare-fun m!428737 () Bool)

(assert (=> b!442042 m!428737))

(assert (=> b!442042 m!428731))

(declare-fun m!428739 () Bool)

(assert (=> b!442042 m!428739))

(assert (=> b!442042 m!428727))

(declare-fun m!428741 () Bool)

(assert (=> b!442042 m!428741))

(assert (=> b!442042 m!428739))

(assert (=> b!442042 m!428735))

(declare-fun m!428743 () Bool)

(assert (=> b!442042 m!428743))

(assert (=> b!442043 m!428727))

(assert (=> b!442043 m!428727))

(declare-fun m!428745 () Bool)

(assert (=> b!442043 m!428745))

(declare-fun m!428747 () Bool)

(assert (=> b!442041 m!428747))

(assert (=> b!442035 m!428727))

(declare-fun m!428749 () Bool)

(assert (=> b!442035 m!428749))

(assert (=> b!442035 m!428739))

(assert (=> b!442035 m!428735))

(assert (=> b!442035 m!428743))

(assert (=> b!442035 m!428735))

(assert (=> b!442035 m!428739))

(assert (=> b!442035 m!428727))

(assert (=> b!442039 m!428727))

(assert (=> b!442039 m!428727))

(assert (=> b!442039 m!428729))

(declare-fun m!428751 () Bool)

(assert (=> b!442033 m!428751))

(declare-fun m!428753 () Bool)

(assert (=> d!73901 m!428753))

(assert (=> d!73901 m!428679))

(assert (=> bm!29521 d!73901))

(declare-fun d!73903 () Bool)

(assert (=> d!73903 (= (array_inv!9444 _values!549) (bvsge (size!13377 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40274 d!73903))

(declare-fun d!73905 () Bool)

(assert (=> d!73905 (= (array_inv!9445 _keys!709) (bvsge (size!13378 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40274 d!73905))

(declare-fun b!442046 () Bool)

(declare-fun e!260183 () ListLongMap!6683)

(assert (=> b!442046 (= e!260183 (ListLongMap!6684 Nil!7795))))

(declare-fun b!442047 () Bool)

(declare-fun e!260185 () Bool)

(declare-fun lt!203097 () ListLongMap!6683)

(assert (=> b!442047 (= e!260185 (isEmpty!560 lt!203097))))

(declare-fun b!442048 () Bool)

(declare-fun e!260181 () ListLongMap!6683)

(declare-fun call!29535 () ListLongMap!6683)

(assert (=> b!442048 (= e!260181 call!29535)))

(declare-fun d!73907 () Bool)

(declare-fun e!260182 () Bool)

(assert (=> d!73907 e!260182))

(declare-fun res!261878 () Bool)

(assert (=> d!73907 (=> (not res!261878) (not e!260182))))

(assert (=> d!73907 (= res!261878 (not (contains!2487 lt!203097 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73907 (= lt!203097 e!260183)))

(declare-fun c!55743 () Bool)

(assert (=> d!73907 (= c!55743 (bvsge from!863 (size!13378 lt!203055)))))

(assert (=> d!73907 (validMask!0 mask!1025)))

(assert (=> d!73907 (= (getCurrentListMapNoExtraKeys!1539 lt!203055 lt!203054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203097)))

(declare-fun b!442049 () Bool)

(assert (=> b!442049 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13378 lt!203055)))))

(assert (=> b!442049 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13377 lt!203054)))))

(declare-fun e!260180 () Bool)

(assert (=> b!442049 (= e!260180 (= (apply!309 lt!203097 (select (arr!13026 lt!203055) from!863)) (get!6471 (select (arr!13025 lt!203054) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!442050 () Bool)

(declare-fun e!260186 () Bool)

(assert (=> b!442050 (= e!260186 e!260185)))

(declare-fun c!55744 () Bool)

(assert (=> b!442050 (= c!55744 (bvslt from!863 (size!13378 lt!203055)))))

(declare-fun b!442051 () Bool)

(assert (=> b!442051 (= e!260182 e!260186)))

(declare-fun c!55746 () Bool)

(declare-fun e!260184 () Bool)

(assert (=> b!442051 (= c!55746 e!260184)))

(declare-fun res!261879 () Bool)

(assert (=> b!442051 (=> (not res!261879) (not e!260184))))

(assert (=> b!442051 (= res!261879 (bvslt from!863 (size!13378 lt!203055)))))

(declare-fun bm!29532 () Bool)

(assert (=> bm!29532 (= call!29535 (getCurrentListMapNoExtraKeys!1539 lt!203055 lt!203054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!442052 () Bool)

(assert (=> b!442052 (= e!260184 (validKeyInArray!0 (select (arr!13026 lt!203055) from!863)))))

(assert (=> b!442052 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!442053 () Bool)

(assert (=> b!442053 (= e!260183 e!260181)))

(declare-fun c!55745 () Bool)

(assert (=> b!442053 (= c!55745 (validKeyInArray!0 (select (arr!13026 lt!203055) from!863)))))

(declare-fun b!442054 () Bool)

(assert (=> b!442054 (= e!260185 (= lt!203097 (getCurrentListMapNoExtraKeys!1539 lt!203055 lt!203054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!442055 () Bool)

(declare-fun res!261880 () Bool)

(assert (=> b!442055 (=> (not res!261880) (not e!260182))))

(assert (=> b!442055 (= res!261880 (not (contains!2487 lt!203097 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442056 () Bool)

(declare-fun lt!203098 () Unit!13093)

(declare-fun lt!203092 () Unit!13093)

(assert (=> b!442056 (= lt!203098 lt!203092)))

(declare-fun lt!203093 () ListLongMap!6683)

(declare-fun lt!203096 () (_ BitVec 64))

(declare-fun lt!203095 () (_ BitVec 64))

(declare-fun lt!203094 () V!16685)

(assert (=> b!442056 (not (contains!2487 (+!1490 lt!203093 (tuple2!7757 lt!203096 lt!203094)) lt!203095))))

(assert (=> b!442056 (= lt!203092 (addStillNotContains!144 lt!203093 lt!203096 lt!203094 lt!203095))))

(assert (=> b!442056 (= lt!203095 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!442056 (= lt!203094 (get!6471 (select (arr!13025 lt!203054) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!442056 (= lt!203096 (select (arr!13026 lt!203055) from!863))))

(assert (=> b!442056 (= lt!203093 call!29535)))

(assert (=> b!442056 (= e!260181 (+!1490 call!29535 (tuple2!7757 (select (arr!13026 lt!203055) from!863) (get!6471 (select (arr!13025 lt!203054) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!442057 () Bool)

(assert (=> b!442057 (= e!260186 e!260180)))

(assert (=> b!442057 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13378 lt!203055)))))

(declare-fun res!261877 () Bool)

(assert (=> b!442057 (= res!261877 (contains!2487 lt!203097 (select (arr!13026 lt!203055) from!863)))))

(assert (=> b!442057 (=> (not res!261877) (not e!260180))))

(assert (= (and d!73907 c!55743) b!442046))

(assert (= (and d!73907 (not c!55743)) b!442053))

(assert (= (and b!442053 c!55745) b!442056))

(assert (= (and b!442053 (not c!55745)) b!442048))

(assert (= (or b!442056 b!442048) bm!29532))

(assert (= (and d!73907 res!261878) b!442055))

(assert (= (and b!442055 res!261880) b!442051))

(assert (= (and b!442051 res!261879) b!442052))

(assert (= (and b!442051 c!55746) b!442057))

(assert (= (and b!442051 (not c!55746)) b!442050))

(assert (= (and b!442057 res!261877) b!442049))

(assert (= (and b!442050 c!55744) b!442054))

(assert (= (and b!442050 (not c!55744)) b!442047))

(declare-fun b_lambda!9431 () Bool)

(assert (=> (not b_lambda!9431) (not b!442049)))

(assert (=> b!442049 t!13567))

(declare-fun b_and!18521 () Bool)

(assert (= b_and!18519 (and (=> t!13567 result!6965) b_and!18521)))

(declare-fun b_lambda!9433 () Bool)

(assert (=> (not b_lambda!9433) (not b!442056)))

(assert (=> b!442056 t!13567))

(declare-fun b_and!18523 () Bool)

(assert (= b_and!18521 (and (=> t!13567 result!6965) b_and!18523)))

(declare-fun m!428755 () Bool)

(assert (=> bm!29532 m!428755))

(declare-fun m!428757 () Bool)

(assert (=> b!442052 m!428757))

(assert (=> b!442052 m!428757))

(declare-fun m!428759 () Bool)

(assert (=> b!442052 m!428759))

(assert (=> b!442054 m!428755))

(declare-fun m!428761 () Bool)

(assert (=> b!442056 m!428761))

(declare-fun m!428763 () Bool)

(assert (=> b!442056 m!428763))

(assert (=> b!442056 m!428735))

(declare-fun m!428765 () Bool)

(assert (=> b!442056 m!428765))

(assert (=> b!442056 m!428761))

(declare-fun m!428767 () Bool)

(assert (=> b!442056 m!428767))

(assert (=> b!442056 m!428757))

(declare-fun m!428769 () Bool)

(assert (=> b!442056 m!428769))

(assert (=> b!442056 m!428767))

(assert (=> b!442056 m!428735))

(declare-fun m!428771 () Bool)

(assert (=> b!442056 m!428771))

(assert (=> b!442057 m!428757))

(assert (=> b!442057 m!428757))

(declare-fun m!428773 () Bool)

(assert (=> b!442057 m!428773))

(declare-fun m!428775 () Bool)

(assert (=> b!442055 m!428775))

(assert (=> b!442049 m!428757))

(declare-fun m!428777 () Bool)

(assert (=> b!442049 m!428777))

(assert (=> b!442049 m!428767))

(assert (=> b!442049 m!428735))

(assert (=> b!442049 m!428771))

(assert (=> b!442049 m!428735))

(assert (=> b!442049 m!428767))

(assert (=> b!442049 m!428757))

(assert (=> b!442053 m!428757))

(assert (=> b!442053 m!428757))

(assert (=> b!442053 m!428759))

(declare-fun m!428779 () Bool)

(assert (=> b!442047 m!428779))

(declare-fun m!428781 () Bool)

(assert (=> d!73907 m!428781))

(assert (=> d!73907 m!428679))

(assert (=> b!441947 d!73907))

(declare-fun b!442058 () Bool)

(declare-fun e!260190 () ListLongMap!6683)

(assert (=> b!442058 (= e!260190 (ListLongMap!6684 Nil!7795))))

(declare-fun b!442059 () Bool)

(declare-fun e!260192 () Bool)

(declare-fun lt!203104 () ListLongMap!6683)

(assert (=> b!442059 (= e!260192 (isEmpty!560 lt!203104))))

(declare-fun b!442060 () Bool)

(declare-fun e!260188 () ListLongMap!6683)

(declare-fun call!29536 () ListLongMap!6683)

(assert (=> b!442060 (= e!260188 call!29536)))

(declare-fun d!73909 () Bool)

(declare-fun e!260189 () Bool)

(assert (=> d!73909 e!260189))

(declare-fun res!261882 () Bool)

(assert (=> d!73909 (=> (not res!261882) (not e!260189))))

(assert (=> d!73909 (= res!261882 (not (contains!2487 lt!203104 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73909 (= lt!203104 e!260190)))

(declare-fun c!55747 () Bool)

(assert (=> d!73909 (= c!55747 (bvsge from!863 (size!13378 _keys!709)))))

(assert (=> d!73909 (validMask!0 mask!1025)))

(assert (=> d!73909 (= (getCurrentListMapNoExtraKeys!1539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203104)))

(declare-fun b!442061 () Bool)

(assert (=> b!442061 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13378 _keys!709)))))

(assert (=> b!442061 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13377 _values!549)))))

(declare-fun e!260187 () Bool)

(assert (=> b!442061 (= e!260187 (= (apply!309 lt!203104 (select (arr!13026 _keys!709) from!863)) (get!6471 (select (arr!13025 _values!549) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!442062 () Bool)

(declare-fun e!260193 () Bool)

(assert (=> b!442062 (= e!260193 e!260192)))

(declare-fun c!55748 () Bool)

(assert (=> b!442062 (= c!55748 (bvslt from!863 (size!13378 _keys!709)))))

(declare-fun b!442063 () Bool)

(assert (=> b!442063 (= e!260189 e!260193)))

(declare-fun c!55750 () Bool)

(declare-fun e!260191 () Bool)

(assert (=> b!442063 (= c!55750 e!260191)))

(declare-fun res!261883 () Bool)

(assert (=> b!442063 (=> (not res!261883) (not e!260191))))

(assert (=> b!442063 (= res!261883 (bvslt from!863 (size!13378 _keys!709)))))

(declare-fun bm!29533 () Bool)

(assert (=> bm!29533 (= call!29536 (getCurrentListMapNoExtraKeys!1539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!442064 () Bool)

(assert (=> b!442064 (= e!260191 (validKeyInArray!0 (select (arr!13026 _keys!709) from!863)))))

(assert (=> b!442064 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!442065 () Bool)

(assert (=> b!442065 (= e!260190 e!260188)))

(declare-fun c!55749 () Bool)

(assert (=> b!442065 (= c!55749 (validKeyInArray!0 (select (arr!13026 _keys!709) from!863)))))

(declare-fun b!442066 () Bool)

(assert (=> b!442066 (= e!260192 (= lt!203104 (getCurrentListMapNoExtraKeys!1539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!442067 () Bool)

(declare-fun res!261884 () Bool)

(assert (=> b!442067 (=> (not res!261884) (not e!260189))))

(assert (=> b!442067 (= res!261884 (not (contains!2487 lt!203104 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442068 () Bool)

(declare-fun lt!203105 () Unit!13093)

(declare-fun lt!203099 () Unit!13093)

(assert (=> b!442068 (= lt!203105 lt!203099)))

(declare-fun lt!203102 () (_ BitVec 64))

(declare-fun lt!203103 () (_ BitVec 64))

(declare-fun lt!203100 () ListLongMap!6683)

(declare-fun lt!203101 () V!16685)

(assert (=> b!442068 (not (contains!2487 (+!1490 lt!203100 (tuple2!7757 lt!203103 lt!203101)) lt!203102))))

(assert (=> b!442068 (= lt!203099 (addStillNotContains!144 lt!203100 lt!203103 lt!203101 lt!203102))))

(assert (=> b!442068 (= lt!203102 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!442068 (= lt!203101 (get!6471 (select (arr!13025 _values!549) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!442068 (= lt!203103 (select (arr!13026 _keys!709) from!863))))

(assert (=> b!442068 (= lt!203100 call!29536)))

(assert (=> b!442068 (= e!260188 (+!1490 call!29536 (tuple2!7757 (select (arr!13026 _keys!709) from!863) (get!6471 (select (arr!13025 _values!549) from!863) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!442069 () Bool)

(assert (=> b!442069 (= e!260193 e!260187)))

(assert (=> b!442069 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13378 _keys!709)))))

(declare-fun res!261881 () Bool)

(assert (=> b!442069 (= res!261881 (contains!2487 lt!203104 (select (arr!13026 _keys!709) from!863)))))

(assert (=> b!442069 (=> (not res!261881) (not e!260187))))

(assert (= (and d!73909 c!55747) b!442058))

(assert (= (and d!73909 (not c!55747)) b!442065))

(assert (= (and b!442065 c!55749) b!442068))

(assert (= (and b!442065 (not c!55749)) b!442060))

(assert (= (or b!442068 b!442060) bm!29533))

(assert (= (and d!73909 res!261882) b!442067))

(assert (= (and b!442067 res!261884) b!442063))

(assert (= (and b!442063 res!261883) b!442064))

(assert (= (and b!442063 c!55750) b!442069))

(assert (= (and b!442063 (not c!55750)) b!442062))

(assert (= (and b!442069 res!261881) b!442061))

(assert (= (and b!442062 c!55748) b!442066))

(assert (= (and b!442062 (not c!55748)) b!442059))

(declare-fun b_lambda!9435 () Bool)

(assert (=> (not b_lambda!9435) (not b!442061)))

(assert (=> b!442061 t!13567))

(declare-fun b_and!18525 () Bool)

(assert (= b_and!18523 (and (=> t!13567 result!6965) b_and!18525)))

(declare-fun b_lambda!9437 () Bool)

(assert (=> (not b_lambda!9437) (not b!442068)))

(assert (=> b!442068 t!13567))

(declare-fun b_and!18527 () Bool)

(assert (= b_and!18525 (and (=> t!13567 result!6965) b_and!18527)))

(declare-fun m!428783 () Bool)

(assert (=> bm!29533 m!428783))

(assert (=> b!442064 m!428653))

(assert (=> b!442064 m!428653))

(assert (=> b!442064 m!428655))

(assert (=> b!442066 m!428783))

(declare-fun m!428785 () Bool)

(assert (=> b!442068 m!428785))

(declare-fun m!428787 () Bool)

(assert (=> b!442068 m!428787))

(assert (=> b!442068 m!428735))

(declare-fun m!428789 () Bool)

(assert (=> b!442068 m!428789))

(assert (=> b!442068 m!428785))

(declare-fun m!428791 () Bool)

(assert (=> b!442068 m!428791))

(assert (=> b!442068 m!428653))

(declare-fun m!428793 () Bool)

(assert (=> b!442068 m!428793))

(assert (=> b!442068 m!428791))

(assert (=> b!442068 m!428735))

(declare-fun m!428795 () Bool)

(assert (=> b!442068 m!428795))

(assert (=> b!442069 m!428653))

(assert (=> b!442069 m!428653))

(declare-fun m!428797 () Bool)

(assert (=> b!442069 m!428797))

(declare-fun m!428799 () Bool)

(assert (=> b!442067 m!428799))

(assert (=> b!442061 m!428653))

(declare-fun m!428801 () Bool)

(assert (=> b!442061 m!428801))

(assert (=> b!442061 m!428791))

(assert (=> b!442061 m!428735))

(assert (=> b!442061 m!428795))

(assert (=> b!442061 m!428735))

(assert (=> b!442061 m!428791))

(assert (=> b!442061 m!428653))

(assert (=> b!442065 m!428653))

(assert (=> b!442065 m!428653))

(assert (=> b!442065 m!428655))

(declare-fun m!428803 () Bool)

(assert (=> b!442059 m!428803))

(declare-fun m!428805 () Bool)

(assert (=> d!73909 m!428805))

(assert (=> d!73909 m!428679))

(assert (=> b!441947 d!73909))

(declare-fun d!73911 () Bool)

(assert (=> d!73911 (= (validKeyInArray!0 (select (arr!13026 _keys!709) from!863)) (and (not (= (select (arr!13026 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13026 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!441946 d!73911))

(declare-fun b!442076 () Bool)

(declare-fun call!29541 () ListLongMap!6683)

(declare-fun e!260199 () Bool)

(declare-fun call!29542 () ListLongMap!6683)

(assert (=> b!442076 (= e!260199 (= call!29542 (+!1490 call!29541 (tuple2!7757 k0!794 v!412))))))

(declare-fun b!442077 () Bool)

(assert (=> b!442077 (= e!260199 (= call!29542 call!29541))))

(declare-fun bm!29538 () Bool)

(assert (=> bm!29538 (= call!29542 (getCurrentListMapNoExtraKeys!1539 (array!27160 (store (arr!13026 _keys!709) i!563 k0!794) (size!13378 _keys!709)) (array!27158 (store (arr!13025 _values!549) i!563 (ValueCellFull!5499 v!412)) (size!13377 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!442078 () Bool)

(declare-fun e!260198 () Bool)

(assert (=> b!442078 (= e!260198 e!260199)))

(declare-fun c!55753 () Bool)

(assert (=> b!442078 (= c!55753 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun d!73913 () Bool)

(assert (=> d!73913 e!260198))

(declare-fun res!261887 () Bool)

(assert (=> d!73913 (=> (not res!261887) (not e!260198))))

(assert (=> d!73913 (= res!261887 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13378 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13377 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13378 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13377 _values!549))))))))

(declare-fun lt!203108 () Unit!13093)

(declare-fun choose!1332 (array!27159 array!27157 (_ BitVec 32) (_ BitVec 32) V!16685 V!16685 (_ BitVec 32) (_ BitVec 64) V!16685 (_ BitVec 32) Int) Unit!13093)

(assert (=> d!73913 (= lt!203108 (choose!1332 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!73913 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13378 _keys!709)))))

(assert (=> d!73913 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!667 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203108)))

(declare-fun bm!29539 () Bool)

(assert (=> bm!29539 (= call!29541 (getCurrentListMapNoExtraKeys!1539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and d!73913 res!261887) b!442078))

(assert (= (and b!442078 c!55753) b!442076))

(assert (= (and b!442078 (not c!55753)) b!442077))

(assert (= (or b!442076 b!442077) bm!29539))

(assert (= (or b!442076 b!442077) bm!29538))

(declare-fun m!428807 () Bool)

(assert (=> b!442076 m!428807))

(assert (=> bm!29538 m!428677))

(assert (=> bm!29538 m!428669))

(declare-fun m!428809 () Bool)

(assert (=> bm!29538 m!428809))

(declare-fun m!428811 () Bool)

(assert (=> d!73913 m!428811))

(declare-fun m!428813 () Bool)

(assert (=> bm!29539 m!428813))

(assert (=> b!441946 d!73913))

(declare-fun d!73915 () Bool)

(declare-fun res!261892 () Bool)

(declare-fun e!260204 () Bool)

(assert (=> d!73915 (=> res!261892 e!260204)))

(assert (=> d!73915 (= res!261892 (= (select (arr!13026 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!73915 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!260204)))

(declare-fun b!442083 () Bool)

(declare-fun e!260205 () Bool)

(assert (=> b!442083 (= e!260204 e!260205)))

(declare-fun res!261893 () Bool)

(assert (=> b!442083 (=> (not res!261893) (not e!260205))))

(assert (=> b!442083 (= res!261893 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13378 _keys!709)))))

(declare-fun b!442084 () Bool)

(assert (=> b!442084 (= e!260205 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73915 (not res!261892)) b!442083))

(assert (= (and b!442083 res!261893) b!442084))

(declare-fun m!428815 () Bool)

(assert (=> d!73915 m!428815))

(declare-fun m!428817 () Bool)

(assert (=> b!442084 m!428817))

(assert (=> b!441950 d!73915))

(declare-fun d!73917 () Bool)

(assert (=> d!73917 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!441949 d!73917))

(declare-fun bm!29542 () Bool)

(declare-fun call!29545 () Bool)

(assert (=> bm!29542 (= call!29545 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!203055 mask!1025))))

(declare-fun d!73919 () Bool)

(declare-fun res!261898 () Bool)

(declare-fun e!260214 () Bool)

(assert (=> d!73919 (=> res!261898 e!260214)))

(assert (=> d!73919 (= res!261898 (bvsge #b00000000000000000000000000000000 (size!13378 lt!203055)))))

(assert (=> d!73919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203055 mask!1025) e!260214)))

(declare-fun b!442093 () Bool)

(declare-fun e!260213 () Bool)

(assert (=> b!442093 (= e!260214 e!260213)))

(declare-fun c!55756 () Bool)

(assert (=> b!442093 (= c!55756 (validKeyInArray!0 (select (arr!13026 lt!203055) #b00000000000000000000000000000000)))))

(declare-fun b!442094 () Bool)

(assert (=> b!442094 (= e!260213 call!29545)))

(declare-fun b!442095 () Bool)

(declare-fun e!260212 () Bool)

(assert (=> b!442095 (= e!260213 e!260212)))

(declare-fun lt!203115 () (_ BitVec 64))

(assert (=> b!442095 (= lt!203115 (select (arr!13026 lt!203055) #b00000000000000000000000000000000))))

(declare-fun lt!203117 () Unit!13093)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!27159 (_ BitVec 64) (_ BitVec 32)) Unit!13093)

(assert (=> b!442095 (= lt!203117 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!203055 lt!203115 #b00000000000000000000000000000000))))

(assert (=> b!442095 (arrayContainsKey!0 lt!203055 lt!203115 #b00000000000000000000000000000000)))

(declare-fun lt!203116 () Unit!13093)

(assert (=> b!442095 (= lt!203116 lt!203117)))

(declare-fun res!261899 () Bool)

(declare-datatypes ((SeekEntryResult!3515 0))(
  ( (MissingZero!3515 (index!16239 (_ BitVec 32))) (Found!3515 (index!16240 (_ BitVec 32))) (Intermediate!3515 (undefined!4327 Bool) (index!16241 (_ BitVec 32)) (x!41719 (_ BitVec 32))) (Undefined!3515) (MissingVacant!3515 (index!16242 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!27159 (_ BitVec 32)) SeekEntryResult!3515)

(assert (=> b!442095 (= res!261899 (= (seekEntryOrOpen!0 (select (arr!13026 lt!203055) #b00000000000000000000000000000000) lt!203055 mask!1025) (Found!3515 #b00000000000000000000000000000000)))))

(assert (=> b!442095 (=> (not res!261899) (not e!260212))))

(declare-fun b!442096 () Bool)

(assert (=> b!442096 (= e!260212 call!29545)))

(assert (= (and d!73919 (not res!261898)) b!442093))

(assert (= (and b!442093 c!55756) b!442095))

(assert (= (and b!442093 (not c!55756)) b!442094))

(assert (= (and b!442095 res!261899) b!442096))

(assert (= (or b!442096 b!442094) bm!29542))

(declare-fun m!428819 () Bool)

(assert (=> bm!29542 m!428819))

(declare-fun m!428821 () Bool)

(assert (=> b!442093 m!428821))

(assert (=> b!442093 m!428821))

(declare-fun m!428823 () Bool)

(assert (=> b!442093 m!428823))

(assert (=> b!442095 m!428821))

(declare-fun m!428825 () Bool)

(assert (=> b!442095 m!428825))

(declare-fun m!428827 () Bool)

(assert (=> b!442095 m!428827))

(assert (=> b!442095 m!428821))

(declare-fun m!428829 () Bool)

(assert (=> b!442095 m!428829))

(assert (=> b!441943 d!73919))

(declare-fun b!442107 () Bool)

(declare-fun e!260226 () Bool)

(declare-fun call!29548 () Bool)

(assert (=> b!442107 (= e!260226 call!29548)))

(declare-fun b!442108 () Bool)

(declare-fun e!260223 () Bool)

(declare-fun contains!2488 (List!7799 (_ BitVec 64)) Bool)

(assert (=> b!442108 (= e!260223 (contains!2488 Nil!7796 (select (arr!13026 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!442109 () Bool)

(assert (=> b!442109 (= e!260226 call!29548)))

(declare-fun bm!29545 () Bool)

(declare-fun c!55759 () Bool)

(assert (=> bm!29545 (= call!29548 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55759 (Cons!7795 (select (arr!13026 _keys!709) #b00000000000000000000000000000000) Nil!7796) Nil!7796)))))

(declare-fun b!442111 () Bool)

(declare-fun e!260225 () Bool)

(assert (=> b!442111 (= e!260225 e!260226)))

(assert (=> b!442111 (= c!55759 (validKeyInArray!0 (select (arr!13026 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!73921 () Bool)

(declare-fun res!261907 () Bool)

(declare-fun e!260224 () Bool)

(assert (=> d!73921 (=> res!261907 e!260224)))

(assert (=> d!73921 (= res!261907 (bvsge #b00000000000000000000000000000000 (size!13378 _keys!709)))))

(assert (=> d!73921 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7796) e!260224)))

(declare-fun b!442110 () Bool)

(assert (=> b!442110 (= e!260224 e!260225)))

(declare-fun res!261908 () Bool)

(assert (=> b!442110 (=> (not res!261908) (not e!260225))))

(assert (=> b!442110 (= res!261908 (not e!260223))))

(declare-fun res!261906 () Bool)

(assert (=> b!442110 (=> (not res!261906) (not e!260223))))

(assert (=> b!442110 (= res!261906 (validKeyInArray!0 (select (arr!13026 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!73921 (not res!261907)) b!442110))

(assert (= (and b!442110 res!261906) b!442108))

(assert (= (and b!442110 res!261908) b!442111))

(assert (= (and b!442111 c!55759) b!442107))

(assert (= (and b!442111 (not c!55759)) b!442109))

(assert (= (or b!442107 b!442109) bm!29545))

(assert (=> b!442108 m!428815))

(assert (=> b!442108 m!428815))

(declare-fun m!428831 () Bool)

(assert (=> b!442108 m!428831))

(assert (=> bm!29545 m!428815))

(declare-fun m!428833 () Bool)

(assert (=> bm!29545 m!428833))

(assert (=> b!442111 m!428815))

(assert (=> b!442111 m!428815))

(declare-fun m!428835 () Bool)

(assert (=> b!442111 m!428835))

(assert (=> b!442110 m!428815))

(assert (=> b!442110 m!428815))

(assert (=> b!442110 m!428835))

(assert (=> b!441942 d!73921))

(declare-fun d!73923 () Bool)

(declare-fun e!260229 () Bool)

(assert (=> d!73923 e!260229))

(declare-fun res!261914 () Bool)

(assert (=> d!73923 (=> (not res!261914) (not e!260229))))

(declare-fun lt!203129 () ListLongMap!6683)

(assert (=> d!73923 (= res!261914 (contains!2487 lt!203129 (_1!3888 (tuple2!7757 k0!794 v!412))))))

(declare-fun lt!203126 () List!7798)

(assert (=> d!73923 (= lt!203129 (ListLongMap!6684 lt!203126))))

(declare-fun lt!203128 () Unit!13093)

(declare-fun lt!203127 () Unit!13093)

(assert (=> d!73923 (= lt!203128 lt!203127)))

(declare-datatypes ((Option!372 0))(
  ( (Some!371 (v!8135 V!16685)) (None!370) )
))
(declare-fun getValueByKey!366 (List!7798 (_ BitVec 64)) Option!372)

(assert (=> d!73923 (= (getValueByKey!366 lt!203126 (_1!3888 (tuple2!7757 k0!794 v!412))) (Some!371 (_2!3888 (tuple2!7757 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!190 (List!7798 (_ BitVec 64) V!16685) Unit!13093)

(assert (=> d!73923 (= lt!203127 (lemmaContainsTupThenGetReturnValue!190 lt!203126 (_1!3888 (tuple2!7757 k0!794 v!412)) (_2!3888 (tuple2!7757 k0!794 v!412))))))

(declare-fun insertStrictlySorted!192 (List!7798 (_ BitVec 64) V!16685) List!7798)

(assert (=> d!73923 (= lt!203126 (insertStrictlySorted!192 (toList!3357 call!29525) (_1!3888 (tuple2!7757 k0!794 v!412)) (_2!3888 (tuple2!7757 k0!794 v!412))))))

(assert (=> d!73923 (= (+!1490 call!29525 (tuple2!7757 k0!794 v!412)) lt!203129)))

(declare-fun b!442116 () Bool)

(declare-fun res!261913 () Bool)

(assert (=> b!442116 (=> (not res!261913) (not e!260229))))

(assert (=> b!442116 (= res!261913 (= (getValueByKey!366 (toList!3357 lt!203129) (_1!3888 (tuple2!7757 k0!794 v!412))) (Some!371 (_2!3888 (tuple2!7757 k0!794 v!412)))))))

(declare-fun b!442117 () Bool)

(declare-fun contains!2489 (List!7798 tuple2!7756) Bool)

(assert (=> b!442117 (= e!260229 (contains!2489 (toList!3357 lt!203129) (tuple2!7757 k0!794 v!412)))))

(assert (= (and d!73923 res!261914) b!442116))

(assert (= (and b!442116 res!261913) b!442117))

(declare-fun m!428837 () Bool)

(assert (=> d!73923 m!428837))

(declare-fun m!428839 () Bool)

(assert (=> d!73923 m!428839))

(declare-fun m!428841 () Bool)

(assert (=> d!73923 m!428841))

(declare-fun m!428843 () Bool)

(assert (=> d!73923 m!428843))

(declare-fun m!428845 () Bool)

(assert (=> b!442116 m!428845))

(declare-fun m!428847 () Bool)

(assert (=> b!442117 m!428847))

(assert (=> b!441952 d!73923))

(declare-fun b!442118 () Bool)

(declare-fun e!260233 () ListLongMap!6683)

(assert (=> b!442118 (= e!260233 (ListLongMap!6684 Nil!7795))))

(declare-fun b!442119 () Bool)

(declare-fun e!260235 () Bool)

(declare-fun lt!203135 () ListLongMap!6683)

(assert (=> b!442119 (= e!260235 (isEmpty!560 lt!203135))))

(declare-fun b!442120 () Bool)

(declare-fun e!260231 () ListLongMap!6683)

(declare-fun call!29549 () ListLongMap!6683)

(assert (=> b!442120 (= e!260231 call!29549)))

(declare-fun d!73925 () Bool)

(declare-fun e!260232 () Bool)

(assert (=> d!73925 e!260232))

(declare-fun res!261916 () Bool)

(assert (=> d!73925 (=> (not res!261916) (not e!260232))))

(assert (=> d!73925 (= res!261916 (not (contains!2487 lt!203135 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73925 (= lt!203135 e!260233)))

(declare-fun c!55760 () Bool)

(assert (=> d!73925 (= c!55760 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 _keys!709 lt!203055))))))

(assert (=> d!73925 (validMask!0 mask!1025)))

(assert (=> d!73925 (= (getCurrentListMapNoExtraKeys!1539 (ite c!55727 _keys!709 lt!203055) (ite c!55727 _values!549 lt!203054) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203135)))

(declare-fun b!442121 () Bool)

(assert (=> b!442121 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 _keys!709 lt!203055))))))

(assert (=> b!442121 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13377 (ite c!55727 _values!549 lt!203054))))))

(declare-fun e!260230 () Bool)

(assert (=> b!442121 (= e!260230 (= (apply!309 lt!203135 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6471 (select (arr!13025 (ite c!55727 _values!549 lt!203054)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!442122 () Bool)

(declare-fun e!260236 () Bool)

(assert (=> b!442122 (= e!260236 e!260235)))

(declare-fun c!55761 () Bool)

(assert (=> b!442122 (= c!55761 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 _keys!709 lt!203055))))))

(declare-fun b!442123 () Bool)

(assert (=> b!442123 (= e!260232 e!260236)))

(declare-fun c!55763 () Bool)

(declare-fun e!260234 () Bool)

(assert (=> b!442123 (= c!55763 e!260234)))

(declare-fun res!261917 () Bool)

(assert (=> b!442123 (=> (not res!261917) (not e!260234))))

(assert (=> b!442123 (= res!261917 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 _keys!709 lt!203055))))))

(declare-fun bm!29546 () Bool)

(assert (=> bm!29546 (= call!29549 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 _keys!709 lt!203055) (ite c!55727 _values!549 lt!203054) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!442124 () Bool)

(assert (=> b!442124 (= e!260234 (validKeyInArray!0 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!442124 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!442125 () Bool)

(assert (=> b!442125 (= e!260233 e!260231)))

(declare-fun c!55762 () Bool)

(assert (=> b!442125 (= c!55762 (validKeyInArray!0 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!442126 () Bool)

(assert (=> b!442126 (= e!260235 (= lt!203135 (getCurrentListMapNoExtraKeys!1539 (ite c!55727 _keys!709 lt!203055) (ite c!55727 _values!549 lt!203054) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!442127 () Bool)

(declare-fun res!261918 () Bool)

(assert (=> b!442127 (=> (not res!261918) (not e!260232))))

(assert (=> b!442127 (= res!261918 (not (contains!2487 lt!203135 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442128 () Bool)

(declare-fun lt!203136 () Unit!13093)

(declare-fun lt!203130 () Unit!13093)

(assert (=> b!442128 (= lt!203136 lt!203130)))

(declare-fun lt!203131 () ListLongMap!6683)

(declare-fun lt!203133 () (_ BitVec 64))

(declare-fun lt!203134 () (_ BitVec 64))

(declare-fun lt!203132 () V!16685)

(assert (=> b!442128 (not (contains!2487 (+!1490 lt!203131 (tuple2!7757 lt!203134 lt!203132)) lt!203133))))

(assert (=> b!442128 (= lt!203130 (addStillNotContains!144 lt!203131 lt!203134 lt!203132 lt!203133))))

(assert (=> b!442128 (= lt!203133 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!442128 (= lt!203132 (get!6471 (select (arr!13025 (ite c!55727 _values!549 lt!203054)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!442128 (= lt!203134 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!442128 (= lt!203131 call!29549)))

(assert (=> b!442128 (= e!260231 (+!1490 call!29549 (tuple2!7757 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6471 (select (arr!13025 (ite c!55727 _values!549 lt!203054)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!840 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!442129 () Bool)

(assert (=> b!442129 (= e!260236 e!260230)))

(assert (=> b!442129 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13378 (ite c!55727 _keys!709 lt!203055))))))

(declare-fun res!261915 () Bool)

(assert (=> b!442129 (= res!261915 (contains!2487 lt!203135 (select (arr!13026 (ite c!55727 _keys!709 lt!203055)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!442129 (=> (not res!261915) (not e!260230))))

(assert (= (and d!73925 c!55760) b!442118))

(assert (= (and d!73925 (not c!55760)) b!442125))

(assert (= (and b!442125 c!55762) b!442128))

(assert (= (and b!442125 (not c!55762)) b!442120))

(assert (= (or b!442128 b!442120) bm!29546))

(assert (= (and d!73925 res!261916) b!442127))

(assert (= (and b!442127 res!261918) b!442123))

(assert (= (and b!442123 res!261917) b!442124))

(assert (= (and b!442123 c!55763) b!442129))

(assert (= (and b!442123 (not c!55763)) b!442122))

(assert (= (and b!442129 res!261915) b!442121))

(assert (= (and b!442122 c!55761) b!442126))

(assert (= (and b!442122 (not c!55761)) b!442119))

(declare-fun b_lambda!9439 () Bool)

(assert (=> (not b_lambda!9439) (not b!442121)))

(assert (=> b!442121 t!13567))

(declare-fun b_and!18529 () Bool)

(assert (= b_and!18527 (and (=> t!13567 result!6965) b_and!18529)))

(declare-fun b_lambda!9441 () Bool)

(assert (=> (not b_lambda!9441) (not b!442128)))

(assert (=> b!442128 t!13567))

(declare-fun b_and!18531 () Bool)

(assert (= b_and!18529 (and (=> t!13567 result!6965) b_and!18531)))

(declare-fun m!428849 () Bool)

(assert (=> bm!29546 m!428849))

(declare-fun m!428851 () Bool)

(assert (=> b!442124 m!428851))

(assert (=> b!442124 m!428851))

(declare-fun m!428853 () Bool)

(assert (=> b!442124 m!428853))

(assert (=> b!442126 m!428849))

(declare-fun m!428855 () Bool)

(assert (=> b!442128 m!428855))

(declare-fun m!428857 () Bool)

(assert (=> b!442128 m!428857))

(assert (=> b!442128 m!428735))

(declare-fun m!428859 () Bool)

(assert (=> b!442128 m!428859))

(assert (=> b!442128 m!428855))

(declare-fun m!428861 () Bool)

(assert (=> b!442128 m!428861))

(assert (=> b!442128 m!428851))

(declare-fun m!428863 () Bool)

(assert (=> b!442128 m!428863))

(assert (=> b!442128 m!428861))

(assert (=> b!442128 m!428735))

(declare-fun m!428865 () Bool)

(assert (=> b!442128 m!428865))

(assert (=> b!442129 m!428851))

(assert (=> b!442129 m!428851))

(declare-fun m!428867 () Bool)

(assert (=> b!442129 m!428867))

(declare-fun m!428869 () Bool)

(assert (=> b!442127 m!428869))

(assert (=> b!442121 m!428851))

(declare-fun m!428871 () Bool)

(assert (=> b!442121 m!428871))

(assert (=> b!442121 m!428861))

(assert (=> b!442121 m!428735))

(assert (=> b!442121 m!428865))

(assert (=> b!442121 m!428735))

(assert (=> b!442121 m!428861))

(assert (=> b!442121 m!428851))

(assert (=> b!442125 m!428851))

(assert (=> b!442125 m!428851))

(assert (=> b!442125 m!428853))

(declare-fun m!428873 () Bool)

(assert (=> b!442119 m!428873))

(declare-fun m!428875 () Bool)

(assert (=> d!73925 m!428875))

(assert (=> d!73925 m!428679))

(assert (=> bm!29522 d!73925))

(declare-fun d!73927 () Bool)

(assert (=> d!73927 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!441937 d!73927))

(declare-fun b!442130 () Bool)

(declare-fun e!260240 () Bool)

(declare-fun call!29550 () Bool)

(assert (=> b!442130 (= e!260240 call!29550)))

(declare-fun b!442131 () Bool)

(declare-fun e!260237 () Bool)

(assert (=> b!442131 (= e!260237 (contains!2488 Nil!7796 (select (arr!13026 lt!203055) #b00000000000000000000000000000000)))))

(declare-fun b!442132 () Bool)

(assert (=> b!442132 (= e!260240 call!29550)))

(declare-fun bm!29547 () Bool)

(declare-fun c!55764 () Bool)

(assert (=> bm!29547 (= call!29550 (arrayNoDuplicates!0 lt!203055 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55764 (Cons!7795 (select (arr!13026 lt!203055) #b00000000000000000000000000000000) Nil!7796) Nil!7796)))))

(declare-fun b!442134 () Bool)

(declare-fun e!260239 () Bool)

(assert (=> b!442134 (= e!260239 e!260240)))

(assert (=> b!442134 (= c!55764 (validKeyInArray!0 (select (arr!13026 lt!203055) #b00000000000000000000000000000000)))))

(declare-fun d!73929 () Bool)

(declare-fun res!261920 () Bool)

(declare-fun e!260238 () Bool)

(assert (=> d!73929 (=> res!261920 e!260238)))

(assert (=> d!73929 (= res!261920 (bvsge #b00000000000000000000000000000000 (size!13378 lt!203055)))))

(assert (=> d!73929 (= (arrayNoDuplicates!0 lt!203055 #b00000000000000000000000000000000 Nil!7796) e!260238)))

(declare-fun b!442133 () Bool)

(assert (=> b!442133 (= e!260238 e!260239)))

(declare-fun res!261921 () Bool)

(assert (=> b!442133 (=> (not res!261921) (not e!260239))))

(assert (=> b!442133 (= res!261921 (not e!260237))))

(declare-fun res!261919 () Bool)

(assert (=> b!442133 (=> (not res!261919) (not e!260237))))

(assert (=> b!442133 (= res!261919 (validKeyInArray!0 (select (arr!13026 lt!203055) #b00000000000000000000000000000000)))))

(assert (= (and d!73929 (not res!261920)) b!442133))

(assert (= (and b!442133 res!261919) b!442131))

(assert (= (and b!442133 res!261921) b!442134))

(assert (= (and b!442134 c!55764) b!442130))

(assert (= (and b!442134 (not c!55764)) b!442132))

(assert (= (or b!442130 b!442132) bm!29547))

(assert (=> b!442131 m!428821))

(assert (=> b!442131 m!428821))

(declare-fun m!428877 () Bool)

(assert (=> b!442131 m!428877))

(assert (=> bm!29547 m!428821))

(declare-fun m!428879 () Bool)

(assert (=> bm!29547 m!428879))

(assert (=> b!442134 m!428821))

(assert (=> b!442134 m!428821))

(assert (=> b!442134 m!428823))

(assert (=> b!442133 m!428821))

(assert (=> b!442133 m!428821))

(assert (=> b!442133 m!428823))

(assert (=> b!441944 d!73929))

(declare-fun bm!29548 () Bool)

(declare-fun call!29551 () Bool)

(assert (=> bm!29548 (= call!29551 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun d!73931 () Bool)

(declare-fun res!261922 () Bool)

(declare-fun e!260243 () Bool)

(assert (=> d!73931 (=> res!261922 e!260243)))

(assert (=> d!73931 (= res!261922 (bvsge #b00000000000000000000000000000000 (size!13378 _keys!709)))))

(assert (=> d!73931 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!260243)))

(declare-fun b!442135 () Bool)

(declare-fun e!260242 () Bool)

(assert (=> b!442135 (= e!260243 e!260242)))

(declare-fun c!55765 () Bool)

(assert (=> b!442135 (= c!55765 (validKeyInArray!0 (select (arr!13026 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!442136 () Bool)

(assert (=> b!442136 (= e!260242 call!29551)))

(declare-fun b!442137 () Bool)

(declare-fun e!260241 () Bool)

(assert (=> b!442137 (= e!260242 e!260241)))

(declare-fun lt!203137 () (_ BitVec 64))

(assert (=> b!442137 (= lt!203137 (select (arr!13026 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!203139 () Unit!13093)

(assert (=> b!442137 (= lt!203139 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!203137 #b00000000000000000000000000000000))))

(assert (=> b!442137 (arrayContainsKey!0 _keys!709 lt!203137 #b00000000000000000000000000000000)))

(declare-fun lt!203138 () Unit!13093)

(assert (=> b!442137 (= lt!203138 lt!203139)))

(declare-fun res!261923 () Bool)

(assert (=> b!442137 (= res!261923 (= (seekEntryOrOpen!0 (select (arr!13026 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3515 #b00000000000000000000000000000000)))))

(assert (=> b!442137 (=> (not res!261923) (not e!260241))))

(declare-fun b!442138 () Bool)

(assert (=> b!442138 (= e!260241 call!29551)))

(assert (= (and d!73931 (not res!261922)) b!442135))

(assert (= (and b!442135 c!55765) b!442137))

(assert (= (and b!442135 (not c!55765)) b!442136))

(assert (= (and b!442137 res!261923) b!442138))

(assert (= (or b!442138 b!442136) bm!29548))

(declare-fun m!428881 () Bool)

(assert (=> bm!29548 m!428881))

(assert (=> b!442135 m!428815))

(assert (=> b!442135 m!428815))

(assert (=> b!442135 m!428835))

(assert (=> b!442137 m!428815))

(declare-fun m!428883 () Bool)

(assert (=> b!442137 m!428883))

(declare-fun m!428885 () Bool)

(assert (=> b!442137 m!428885))

(assert (=> b!442137 m!428815))

(declare-fun m!428887 () Bool)

(assert (=> b!442137 m!428887))

(assert (=> b!441953 d!73931))

(declare-fun condMapEmpty!19155 () Bool)

(declare-fun mapDefault!19155 () ValueCell!5499)

(assert (=> mapNonEmpty!19149 (= condMapEmpty!19155 (= mapRest!19149 ((as const (Array (_ BitVec 32) ValueCell!5499)) mapDefault!19155)))))

(declare-fun e!260248 () Bool)

(declare-fun mapRes!19155 () Bool)

(assert (=> mapNonEmpty!19149 (= tp!37119 (and e!260248 mapRes!19155))))

(declare-fun mapNonEmpty!19155 () Bool)

(declare-fun tp!37128 () Bool)

(declare-fun e!260249 () Bool)

(assert (=> mapNonEmpty!19155 (= mapRes!19155 (and tp!37128 e!260249))))

(declare-fun mapRest!19155 () (Array (_ BitVec 32) ValueCell!5499))

(declare-fun mapKey!19155 () (_ BitVec 32))

(declare-fun mapValue!19155 () ValueCell!5499)

(assert (=> mapNonEmpty!19155 (= mapRest!19149 (store mapRest!19155 mapKey!19155 mapValue!19155))))

(declare-fun b!442145 () Bool)

(assert (=> b!442145 (= e!260249 tp_is_empty!11685)))

(declare-fun b!442146 () Bool)

(assert (=> b!442146 (= e!260248 tp_is_empty!11685)))

(declare-fun mapIsEmpty!19155 () Bool)

(assert (=> mapIsEmpty!19155 mapRes!19155))

(assert (= (and mapNonEmpty!19149 condMapEmpty!19155) mapIsEmpty!19155))

(assert (= (and mapNonEmpty!19149 (not condMapEmpty!19155)) mapNonEmpty!19155))

(assert (= (and mapNonEmpty!19155 ((_ is ValueCellFull!5499) mapValue!19155)) b!442145))

(assert (= (and mapNonEmpty!19149 ((_ is ValueCellFull!5499) mapDefault!19155)) b!442146))

(declare-fun m!428889 () Bool)

(assert (=> mapNonEmpty!19155 m!428889))

(declare-fun b_lambda!9443 () Bool)

(assert (= b_lambda!9433 (or (and start!40274 b_free!10527) b_lambda!9443)))

(declare-fun b_lambda!9445 () Bool)

(assert (= b_lambda!9427 (or (and start!40274 b_free!10527) b_lambda!9445)))

(declare-fun b_lambda!9447 () Bool)

(assert (= b_lambda!9441 (or (and start!40274 b_free!10527) b_lambda!9447)))

(declare-fun b_lambda!9449 () Bool)

(assert (= b_lambda!9431 (or (and start!40274 b_free!10527) b_lambda!9449)))

(declare-fun b_lambda!9451 () Bool)

(assert (= b_lambda!9429 (or (and start!40274 b_free!10527) b_lambda!9451)))

(declare-fun b_lambda!9453 () Bool)

(assert (= b_lambda!9435 (or (and start!40274 b_free!10527) b_lambda!9453)))

(declare-fun b_lambda!9455 () Bool)

(assert (= b_lambda!9439 (or (and start!40274 b_free!10527) b_lambda!9455)))

(declare-fun b_lambda!9457 () Bool)

(assert (= b_lambda!9437 (or (and start!40274 b_free!10527) b_lambda!9457)))

(check-sat (not b!442055) (not b_lambda!9455) (not d!73907) (not b!442134) (not b!442069) (not b!442064) (not b!442116) (not b!442119) (not b!442084) (not b!442065) (not bm!29546) (not b!442076) (not d!73923) (not b_next!10527) (not b!442095) (not b!442057) (not bm!29533) (not bm!29545) (not b!442117) (not b!442042) (not bm!29538) (not b!442047) (not b!442056) (not b!442059) (not bm!29548) (not d!73901) (not b!442041) (not b!442124) (not b!442093) (not b!442108) (not b!442054) (not b!442033) (not b!442067) (not d!73909) (not b!442040) (not b!442137) (not b!442125) (not b!442133) (not b!442128) (not b!442129) (not b_lambda!9447) (not b!442043) (not b!442111) (not b!442135) (not b!442126) (not b_lambda!9453) (not d!73913) (not b!442035) (not bm!29539) (not b!442039) (not b!442066) (not mapNonEmpty!19155) (not b!442127) (not b!442053) (not b!442121) (not b_lambda!9451) (not b!442052) (not b!442049) (not b_lambda!9449) tp_is_empty!11685 (not d!73925) (not b!442068) (not b!442038) (not b!442110) (not bm!29547) (not b_lambda!9443) (not b!442061) (not bm!29532) b_and!18531 (not b_lambda!9445) (not bm!29542) (not bm!29531) (not b_lambda!9457) (not b!442131))
(check-sat b_and!18531 (not b_next!10527))
