; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242312 () Bool)

(assert start!242312)

(declare-fun b!2482732 () Bool)

(declare-fun b_free!72385 () Bool)

(declare-fun b_next!73089 () Bool)

(assert (=> b!2482732 (= b_free!72385 (not b_next!73089))))

(declare-fun tp!794916 () Bool)

(declare-fun b_and!188637 () Bool)

(assert (=> b!2482732 (= tp!794916 b_and!188637)))

(declare-fun b!2482734 () Bool)

(declare-fun b_free!72387 () Bool)

(declare-fun b_next!73091 () Bool)

(assert (=> b!2482734 (= b_free!72387 (not b_next!73091))))

(declare-fun tp!794919 () Bool)

(declare-fun b_and!188639 () Bool)

(assert (=> b!2482734 (= tp!794919 b_and!188639)))

(declare-fun bs!467560 () Bool)

(declare-fun b!2482735 () Bool)

(declare-fun b!2482729 () Bool)

(assert (= bs!467560 (and b!2482735 b!2482729)))

(declare-fun lambda!94123 () Int)

(declare-fun lambda!94122 () Int)

(assert (=> bs!467560 (not (= lambda!94123 lambda!94122))))

(declare-fun b!2482747 () Bool)

(declare-fun e!1576133 () Bool)

(assert (=> b!2482747 (= e!1576133 true)))

(declare-fun b!2482746 () Bool)

(declare-fun e!1576132 () Bool)

(assert (=> b!2482746 (= e!1576132 e!1576133)))

(declare-fun b!2482745 () Bool)

(declare-fun e!1576131 () Bool)

(assert (=> b!2482745 (= e!1576131 e!1576132)))

(assert (=> b!2482735 e!1576131))

(assert (= b!2482746 b!2482747))

(assert (= b!2482745 b!2482746))

(declare-datatypes ((K!5540 0))(
  ( (K!5541 (val!8907 Int)) )
))
(declare-datatypes ((V!5742 0))(
  ( (V!5743 (val!8908 Int)) )
))
(declare-datatypes ((tuple2!28918 0))(
  ( (tuple2!28919 (_1!17000 K!5540) (_2!17000 V!5742)) )
))
(declare-datatypes ((List!29240 0))(
  ( (Nil!29140) (Cons!29140 (h!34546 tuple2!28918) (t!210903 List!29240)) )
))
(declare-datatypes ((array!11997 0))(
  ( (array!11998 (arr!5354 (Array (_ BitVec 32) List!29240)) (size!22773 (_ BitVec 32))) )
))
(declare-datatypes ((array!11999 0))(
  ( (array!12000 (arr!5355 (Array (_ BitVec 32) (_ BitVec 64))) (size!22774 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6764 0))(
  ( (LongMapFixedSize!6765 (defaultEntry!3756 Int) (mask!8562 (_ BitVec 32)) (extraKeys!3630 (_ BitVec 32)) (zeroValue!3640 List!29240) (minValue!3640 List!29240) (_size!6811 (_ BitVec 32)) (_keys!3679 array!11999) (_values!3662 array!11997) (_vacant!3443 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13345 0))(
  ( (Cell!13346 (v!31500 LongMapFixedSize!6764)) )
))
(declare-datatypes ((MutLongMap!3382 0))(
  ( (LongMap!3382 (underlying!6971 Cell!13345)) (MutLongMapExt!3381 (__x!19052 Int)) )
))
(declare-datatypes ((tuple2!28920 0))(
  ( (tuple2!28921 (_1!17001 Bool) (_2!17001 MutLongMap!3382)) )
))
(declare-fun lt!889155 () tuple2!28920)

(get-info :version)

(assert (= (and b!2482735 ((_ is LongMap!3382) (_2!17001 lt!889155))) b!2482745))

(declare-fun order!15733 () Int)

(declare-fun order!15731 () Int)

(declare-fun dynLambda!12473 (Int Int) Int)

(declare-fun dynLambda!12474 (Int Int) Int)

(assert (=> b!2482747 (< (dynLambda!12473 order!15731 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889155))))) (dynLambda!12474 order!15733 lambda!94123))))

(declare-fun e!1576142 () Bool)

(assert (=> b!2482735 e!1576142))

(declare-fun b!2482758 () Bool)

(declare-fun e!1576143 () Bool)

(assert (=> b!2482758 (= e!1576142 e!1576143)))

(declare-fun b!2482760 () Bool)

(declare-fun e!1576144 () Bool)

(declare-fun e!1576145 () Bool)

(assert (=> b!2482760 (= e!1576144 e!1576145)))

(declare-fun b!2482759 () Bool)

(assert (=> b!2482759 (= e!1576143 e!1576144)))

(declare-fun b!2482761 () Bool)

(assert (=> b!2482761 (= e!1576145 true)))

(assert (= b!2482760 b!2482761))

(assert (= b!2482759 b!2482760))

(declare-datatypes ((Cell!13347 0))(
  ( (Cell!13348 (v!31501 MutLongMap!3382)) )
))
(declare-fun lt!889154 () Cell!13347)

(assert (= (and b!2482758 ((_ is LongMap!3382) (v!31501 lt!889154))) b!2482759))

(assert (= b!2482735 b!2482758))

(assert (=> b!2482761 (< (dynLambda!12473 order!15731 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 lt!889154))))) (dynLambda!12474 order!15733 lambda!94123))))

(declare-fun e!1576159 () Bool)

(assert (=> b!2482735 e!1576159))

(declare-fun b!2482774 () Bool)

(declare-fun e!1576160 () Bool)

(assert (=> b!2482774 (= e!1576160 true)))

(declare-fun b!2482775 () Bool)

(declare-fun e!1576158 () Bool)

(assert (=> b!2482775 (= e!1576159 e!1576158)))

(declare-fun b!2482776 () Bool)

(declare-fun e!1576157 () Bool)

(declare-fun e!1576156 () Bool)

(assert (=> b!2482776 (= e!1576157 e!1576156)))

(declare-fun b!2482777 () Bool)

(assert (=> b!2482777 (= e!1576156 e!1576160)))

(declare-fun b!2482778 () Bool)

(declare-fun lt!889162 () MutLongMap!3382)

(assert (=> b!2482778 (= e!1576158 (and e!1576157 ((_ is LongMap!3382) lt!889162)))))

(declare-datatypes ((Hashable!3292 0))(
  ( (HashableExt!3291 (__x!19053 Int)) )
))
(declare-datatypes ((MutableMap!3292 0))(
  ( (MutableMapExt!3291 (__x!19054 Int)) (HashMap!3292 (underlying!6972 Cell!13347) (hashF!5255 Hashable!3292) (_size!6812 (_ BitVec 32)) (defaultValue!3454 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3292)

(assert (=> b!2482778 (= lt!889162 (v!31501 (underlying!6972 thiss!42540)))))

(assert (= b!2482777 b!2482774))

(assert (= b!2482776 b!2482777))

(assert (= (and b!2482778 ((_ is LongMap!3382) (v!31501 (underlying!6972 thiss!42540)))) b!2482776))

(assert (= b!2482775 b!2482778))

(assert (= (and b!2482735 ((_ is HashMap!3292) thiss!42540)) b!2482775))

(assert (=> b!2482774 (< (dynLambda!12473 order!15731 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (dynLambda!12474 order!15733 lambda!94123))))

(declare-fun order!15735 () Int)

(declare-fun dynLambda!12475 (Int Int) Int)

(assert (=> b!2482775 (< (dynLambda!12475 order!15735 (defaultValue!3454 thiss!42540)) (dynLambda!12474 order!15733 lambda!94123))))

(declare-fun b!2482727 () Bool)

(declare-fun e!1576124 () Bool)

(declare-fun e!1576116 () Bool)

(assert (=> b!2482727 (= e!1576124 e!1576116)))

(declare-fun mapNonEmpty!15623 () Bool)

(declare-fun mapRes!15623 () Bool)

(declare-fun tp!794918 () Bool)

(declare-fun tp!794917 () Bool)

(assert (=> mapNonEmpty!15623 (= mapRes!15623 (and tp!794918 tp!794917))))

(declare-fun mapValue!15623 () List!29240)

(declare-fun mapRest!15623 () (Array (_ BitVec 32) List!29240))

(declare-fun mapKey!15623 () (_ BitVec 32))

(assert (=> mapNonEmpty!15623 (= (arr!5354 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (store mapRest!15623 mapKey!15623 mapValue!15623))))

(declare-fun mapIsEmpty!15623 () Bool)

(assert (=> mapIsEmpty!15623 mapRes!15623))

(declare-fun b!2482728 () Bool)

(declare-fun res!1050965 () Bool)

(declare-fun e!1576122 () Bool)

(assert (=> b!2482728 (=> (not res!1050965) (not e!1576122))))

(declare-fun key!2246 () K!5540)

(declare-fun contains!5134 (MutableMap!3292 K!5540) Bool)

(assert (=> b!2482728 (= res!1050965 (contains!5134 thiss!42540 key!2246))))

(declare-fun e!1576117 () Bool)

(assert (=> b!2482729 (= e!1576122 (not e!1576117))))

(declare-fun res!1050966 () Bool)

(assert (=> b!2482729 (=> res!1050966 e!1576117)))

(assert (=> b!2482729 (= res!1050966 (not (_1!17001 lt!889155)))))

(declare-fun lt!889157 () List!29240)

(declare-fun noDuplicateKeys!89 (List!29240) Bool)

(assert (=> b!2482729 (noDuplicateKeys!89 lt!889157)))

(declare-datatypes ((Unit!42663 0))(
  ( (Unit!42664) )
))
(declare-fun lt!889158 () Unit!42663)

(declare-fun lt!889150 () List!29240)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!69 (List!29240 K!5540) Unit!42663)

(assert (=> b!2482729 (= lt!889158 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!69 lt!889150 key!2246))))

(assert (=> b!2482729 (= lt!889154 (Cell!13348 (_2!17001 lt!889155)))))

(declare-fun lt!889152 () (_ BitVec 64))

(declare-fun update!198 (MutLongMap!3382 (_ BitVec 64) List!29240) tuple2!28920)

(assert (=> b!2482729 (= lt!889155 (update!198 (v!31501 (underlying!6972 thiss!42540)) lt!889152 lt!889157))))

(declare-fun removePairForKey!81 (List!29240 K!5540) List!29240)

(assert (=> b!2482729 (= lt!889157 (removePairForKey!81 lt!889150 key!2246))))

(declare-datatypes ((ListMap!1087 0))(
  ( (ListMap!1088 (toList!1606 List!29240)) )
))
(declare-fun lt!889159 () ListMap!1087)

(declare-fun map!6235 (MutableMap!3292) ListMap!1087)

(assert (=> b!2482729 (= lt!889159 (map!6235 thiss!42540))))

(declare-fun lt!889153 () Unit!42663)

(declare-datatypes ((tuple2!28922 0))(
  ( (tuple2!28923 (_1!17002 (_ BitVec 64)) (_2!17002 List!29240)) )
))
(declare-datatypes ((List!29241 0))(
  ( (Nil!29141) (Cons!29141 (h!34547 tuple2!28922) (t!210904 List!29241)) )
))
(declare-datatypes ((ListLongMap!555 0))(
  ( (ListLongMap!556 (toList!1607 List!29241)) )
))
(declare-fun lt!889156 () ListLongMap!555)

(declare-fun forallContained!870 (List!29241 Int tuple2!28922) Unit!42663)

(assert (=> b!2482729 (= lt!889153 (forallContained!870 (toList!1607 lt!889156) lambda!94122 (tuple2!28923 lt!889152 lt!889150)))))

(declare-fun map!6236 (MutLongMap!3382) ListLongMap!555)

(assert (=> b!2482729 (= lt!889156 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))

(declare-fun apply!6936 (MutLongMap!3382 (_ BitVec 64)) List!29240)

(assert (=> b!2482729 (= lt!889150 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889152))))

(declare-fun hash!705 (Hashable!3292 K!5540) (_ BitVec 64))

(assert (=> b!2482729 (= lt!889152 (hash!705 (hashF!5255 thiss!42540) key!2246))))

(declare-fun b!2482730 () Bool)

(declare-fun e!1576118 () Bool)

(assert (=> b!2482730 (= e!1576116 e!1576118)))

(declare-fun b!2482731 () Bool)

(declare-fun e!1576121 () Bool)

(declare-fun lt!889151 () MutLongMap!3382)

(assert (=> b!2482731 (= e!1576121 (and e!1576124 ((_ is LongMap!3382) lt!889151)))))

(assert (=> b!2482731 (= lt!889151 (v!31501 (underlying!6972 thiss!42540)))))

(declare-fun tp!794921 () Bool)

(declare-fun e!1576123 () Bool)

(declare-fun tp!794915 () Bool)

(declare-fun array_inv!3843 (array!11999) Bool)

(declare-fun array_inv!3844 (array!11997) Bool)

(assert (=> b!2482732 (= e!1576118 (and tp!794916 tp!794915 tp!794921 (array_inv!3843 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (array_inv!3844 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) e!1576123))))

(declare-fun b!2482733 () Bool)

(declare-fun res!1050967 () Bool)

(assert (=> b!2482733 (=> (not res!1050967) (not e!1576122))))

(declare-fun valid!2586 (MutableMap!3292) Bool)

(assert (=> b!2482733 (= res!1050967 (valid!2586 thiss!42540))))

(declare-fun e!1576119 () Bool)

(assert (=> b!2482734 (= e!1576119 (and e!1576121 tp!794919))))

(declare-fun forall!5976 (List!29241 Int) Bool)

(assert (=> b!2482735 (= e!1576117 (forall!5976 (toList!1607 lt!889156) lambda!94123))))

(declare-fun res!1050964 () Bool)

(assert (=> start!242312 (=> (not res!1050964) (not e!1576122))))

(assert (=> start!242312 (= res!1050964 ((_ is HashMap!3292) thiss!42540))))

(assert (=> start!242312 e!1576122))

(assert (=> start!242312 e!1576119))

(declare-fun tp_is_empty!12299 () Bool)

(assert (=> start!242312 tp_is_empty!12299))

(declare-fun b!2482736 () Bool)

(declare-fun tp!794920 () Bool)

(assert (=> b!2482736 (= e!1576123 (and tp!794920 mapRes!15623))))

(declare-fun condMapEmpty!15623 () Bool)

(declare-fun mapDefault!15623 () List!29240)

(assert (=> b!2482736 (= condMapEmpty!15623 (= (arr!5354 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29240)) mapDefault!15623)))))

(assert (= (and start!242312 res!1050964) b!2482733))

(assert (= (and b!2482733 res!1050967) b!2482728))

(assert (= (and b!2482728 res!1050965) b!2482729))

(assert (= (and b!2482729 (not res!1050966)) b!2482735))

(assert (= (and b!2482736 condMapEmpty!15623) mapIsEmpty!15623))

(assert (= (and b!2482736 (not condMapEmpty!15623)) mapNonEmpty!15623))

(assert (= b!2482732 b!2482736))

(assert (= b!2482730 b!2482732))

(assert (= b!2482727 b!2482730))

(assert (= (and b!2482731 ((_ is LongMap!3382) (v!31501 (underlying!6972 thiss!42540)))) b!2482727))

(assert (= b!2482734 b!2482731))

(assert (= (and start!242312 ((_ is HashMap!3292) thiss!42540)) b!2482734))

(declare-fun m!2850719 () Bool)

(assert (=> b!2482733 m!2850719))

(declare-fun m!2850721 () Bool)

(assert (=> b!2482732 m!2850721))

(declare-fun m!2850723 () Bool)

(assert (=> b!2482732 m!2850723))

(declare-fun m!2850725 () Bool)

(assert (=> b!2482735 m!2850725))

(declare-fun m!2850727 () Bool)

(assert (=> b!2482729 m!2850727))

(declare-fun m!2850729 () Bool)

(assert (=> b!2482729 m!2850729))

(declare-fun m!2850731 () Bool)

(assert (=> b!2482729 m!2850731))

(declare-fun m!2850733 () Bool)

(assert (=> b!2482729 m!2850733))

(declare-fun m!2850735 () Bool)

(assert (=> b!2482729 m!2850735))

(declare-fun m!2850737 () Bool)

(assert (=> b!2482729 m!2850737))

(declare-fun m!2850739 () Bool)

(assert (=> b!2482729 m!2850739))

(declare-fun m!2850741 () Bool)

(assert (=> b!2482729 m!2850741))

(declare-fun m!2850743 () Bool)

(assert (=> b!2482729 m!2850743))

(declare-fun m!2850745 () Bool)

(assert (=> mapNonEmpty!15623 m!2850745))

(declare-fun m!2850747 () Bool)

(assert (=> b!2482728 m!2850747))

(check-sat (not mapNonEmpty!15623) (not b_next!73089) (not b!2482733) (not b!2482732) (not b!2482729) b_and!188639 (not b!2482736) (not b!2482728) (not b!2482735) (not b_next!73091) b_and!188637 tp_is_empty!12299)
(check-sat b_and!188639 b_and!188637 (not b_next!73089) (not b_next!73091))
(get-model)

(declare-fun d!713018 () Bool)

(declare-fun res!1050972 () Bool)

(declare-fun e!1576165 () Bool)

(assert (=> d!713018 (=> res!1050972 e!1576165)))

(assert (=> d!713018 (= res!1050972 ((_ is Nil!29141) (toList!1607 lt!889156)))))

(assert (=> d!713018 (= (forall!5976 (toList!1607 lt!889156) lambda!94123) e!1576165)))

(declare-fun b!2482783 () Bool)

(declare-fun e!1576166 () Bool)

(assert (=> b!2482783 (= e!1576165 e!1576166)))

(declare-fun res!1050973 () Bool)

(assert (=> b!2482783 (=> (not res!1050973) (not e!1576166))))

(declare-fun dynLambda!12476 (Int tuple2!28922) Bool)

(assert (=> b!2482783 (= res!1050973 (dynLambda!12476 lambda!94123 (h!34547 (toList!1607 lt!889156))))))

(declare-fun b!2482784 () Bool)

(assert (=> b!2482784 (= e!1576166 (forall!5976 (t!210904 (toList!1607 lt!889156)) lambda!94123))))

(assert (= (and d!713018 (not res!1050972)) b!2482783))

(assert (= (and b!2482783 res!1050973) b!2482784))

(declare-fun b_lambda!76147 () Bool)

(assert (=> (not b_lambda!76147) (not b!2482783)))

(declare-fun m!2850749 () Bool)

(assert (=> b!2482783 m!2850749))

(declare-fun m!2850751 () Bool)

(assert (=> b!2482784 m!2850751))

(assert (=> b!2482735 d!713018))

(declare-fun d!713020 () Bool)

(declare-fun hash!706 (Hashable!3292 K!5540) (_ BitVec 64))

(assert (=> d!713020 (= (hash!705 (hashF!5255 thiss!42540) key!2246) (hash!706 (hashF!5255 thiss!42540) key!2246))))

(declare-fun bs!467561 () Bool)

(assert (= bs!467561 d!713020))

(declare-fun m!2850753 () Bool)

(assert (=> bs!467561 m!2850753))

(assert (=> b!2482729 d!713020))

(declare-fun d!713022 () Bool)

(declare-fun e!1576169 () Bool)

(assert (=> d!713022 e!1576169))

(declare-fun c!394649 () Bool)

(declare-fun contains!5135 (MutLongMap!3382 (_ BitVec 64)) Bool)

(assert (=> d!713022 (= c!394649 (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889152))))

(declare-fun lt!889165 () List!29240)

(declare-fun apply!6937 (LongMapFixedSize!6764 (_ BitVec 64)) List!29240)

(assert (=> d!713022 (= lt!889165 (apply!6937 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889152))))

(declare-fun valid!2587 (MutLongMap!3382) Bool)

(assert (=> d!713022 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713022 (= (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889152) lt!889165)))

(declare-fun b!2482789 () Bool)

(declare-datatypes ((Option!5757 0))(
  ( (None!5756) (Some!5756 (v!31506 List!29240)) )
))
(declare-fun get!8988 (Option!5757) List!29240)

(declare-fun getValueByKey!141 (List!29241 (_ BitVec 64)) Option!5757)

(assert (=> b!2482789 (= e!1576169 (= lt!889165 (get!8988 (getValueByKey!141 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lt!889152))))))

(declare-fun b!2482790 () Bool)

(declare-fun dynLambda!12477 (Int (_ BitVec 64)) List!29240)

(assert (=> b!2482790 (= e!1576169 (= lt!889165 (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152)))))

(assert (=> b!2482790 ((_ is LongMap!3382) (v!31501 (underlying!6972 thiss!42540)))))

(assert (= (and d!713022 c!394649) b!2482789))

(assert (= (and d!713022 (not c!394649)) b!2482790))

(declare-fun b_lambda!76149 () Bool)

(assert (=> (not b_lambda!76149) (not b!2482790)))

(declare-fun t!210906 () Bool)

(declare-fun tb!140381 () Bool)

(assert (=> (and b!2482732 (= (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) t!210906) tb!140381))

(assert (=> b!2482790 t!210906))

(declare-fun result!173342 () Bool)

(declare-fun b_and!188641 () Bool)

(assert (= b_and!188637 (and (=> t!210906 result!173342) b_and!188641)))

(declare-fun m!2850755 () Bool)

(assert (=> d!713022 m!2850755))

(declare-fun m!2850757 () Bool)

(assert (=> d!713022 m!2850757))

(declare-fun m!2850759 () Bool)

(assert (=> d!713022 m!2850759))

(assert (=> b!2482789 m!2850729))

(declare-fun m!2850761 () Bool)

(assert (=> b!2482789 m!2850761))

(assert (=> b!2482789 m!2850761))

(declare-fun m!2850763 () Bool)

(assert (=> b!2482789 m!2850763))

(declare-fun m!2850765 () Bool)

(assert (=> b!2482790 m!2850765))

(assert (=> b!2482729 d!713022))

(declare-fun b!2482802 () Bool)

(declare-fun e!1576175 () List!29240)

(assert (=> b!2482802 (= e!1576175 Nil!29140)))

(declare-fun b!2482799 () Bool)

(declare-fun e!1576174 () List!29240)

(assert (=> b!2482799 (= e!1576174 (t!210903 lt!889150))))

(declare-fun b!2482801 () Bool)

(assert (=> b!2482801 (= e!1576175 (Cons!29140 (h!34546 lt!889150) (removePairForKey!81 (t!210903 lt!889150) key!2246)))))

(declare-fun b!2482800 () Bool)

(assert (=> b!2482800 (= e!1576174 e!1576175)))

(declare-fun c!394655 () Bool)

(assert (=> b!2482800 (= c!394655 ((_ is Cons!29140) lt!889150))))

(declare-fun d!713024 () Bool)

(declare-fun lt!889168 () List!29240)

(declare-fun containsKey!141 (List!29240 K!5540) Bool)

(assert (=> d!713024 (not (containsKey!141 lt!889168 key!2246))))

(assert (=> d!713024 (= lt!889168 e!1576174)))

(declare-fun c!394654 () Bool)

(assert (=> d!713024 (= c!394654 (and ((_ is Cons!29140) lt!889150) (= (_1!17000 (h!34546 lt!889150)) key!2246)))))

(assert (=> d!713024 (noDuplicateKeys!89 lt!889150)))

(assert (=> d!713024 (= (removePairForKey!81 lt!889150 key!2246) lt!889168)))

(assert (= (and d!713024 c!394654) b!2482799))

(assert (= (and d!713024 (not c!394654)) b!2482800))

(assert (= (and b!2482800 c!394655) b!2482801))

(assert (= (and b!2482800 (not c!394655)) b!2482802))

(declare-fun m!2850767 () Bool)

(assert (=> b!2482801 m!2850767))

(declare-fun m!2850769 () Bool)

(assert (=> d!713024 m!2850769))

(declare-fun m!2850771 () Bool)

(assert (=> d!713024 m!2850771))

(assert (=> b!2482729 d!713024))

(declare-fun b!2482821 () Bool)

(declare-fun e!1576189 () tuple2!28920)

(assert (=> b!2482821 (= e!1576189 (tuple2!28921 true (v!31501 (underlying!6972 thiss!42540))))))

(declare-fun d!713026 () Bool)

(declare-fun e!1576187 () Bool)

(assert (=> d!713026 e!1576187))

(declare-fun res!1050982 () Bool)

(assert (=> d!713026 (=> (not res!1050982) (not e!1576187))))

(declare-fun lt!889180 () tuple2!28920)

(assert (=> d!713026 (= res!1050982 ((_ is LongMap!3382) (_2!17001 lt!889180)))))

(declare-fun e!1576190 () tuple2!28920)

(assert (=> d!713026 (= lt!889180 e!1576190)))

(declare-fun c!394663 () Bool)

(declare-fun lt!889179 () tuple2!28920)

(assert (=> d!713026 (= c!394663 (_1!17001 lt!889179))))

(assert (=> d!713026 (= lt!889179 e!1576189)))

(declare-fun c!394664 () Bool)

(declare-fun imbalanced!17 (MutLongMap!3382) Bool)

(assert (=> d!713026 (= c!394664 (imbalanced!17 (v!31501 (underlying!6972 thiss!42540))))))

(assert (=> d!713026 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713026 (= (update!198 (v!31501 (underlying!6972 thiss!42540)) lt!889152 lt!889157) lt!889180)))

(declare-fun call!152071 () ListLongMap!555)

(declare-fun b!2482822 () Bool)

(declare-fun call!152070 () ListLongMap!555)

(declare-fun e!1576186 () Bool)

(declare-fun +!87 (ListLongMap!555 tuple2!28922) ListLongMap!555)

(assert (=> b!2482822 (= e!1576186 (= call!152070 (+!87 call!152071 (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun b!2482823 () Bool)

(declare-fun res!1050981 () Bool)

(assert (=> b!2482823 (=> (not res!1050981) (not e!1576187))))

(assert (=> b!2482823 (= res!1050981 (valid!2587 (_2!17001 lt!889180)))))

(declare-fun b!2482824 () Bool)

(declare-fun lt!889177 () tuple2!28920)

(assert (=> b!2482824 (= e!1576189 (tuple2!28921 (_1!17001 lt!889177) (_2!17001 lt!889177)))))

(declare-fun repack!21 (MutLongMap!3382) tuple2!28920)

(assert (=> b!2482824 (= lt!889177 (repack!21 (v!31501 (underlying!6972 thiss!42540))))))

(declare-fun b!2482825 () Bool)

(declare-datatypes ((tuple2!28924 0))(
  ( (tuple2!28925 (_1!17003 Bool) (_2!17003 LongMapFixedSize!6764)) )
))
(declare-fun lt!889178 () tuple2!28924)

(assert (=> b!2482825 (= e!1576190 (tuple2!28921 (_1!17003 lt!889178) (LongMap!3382 (Cell!13346 (_2!17003 lt!889178)))))))

(declare-fun update!199 (LongMapFixedSize!6764 (_ BitVec 64) List!29240) tuple2!28924)

(assert (=> b!2482825 (= lt!889178 (update!199 (v!31500 (underlying!6971 (_2!17001 lt!889179))) lt!889152 lt!889157))))

(declare-fun b!2482826 () Bool)

(declare-fun e!1576188 () Bool)

(assert (=> b!2482826 (= e!1576188 (= call!152070 call!152071))))

(declare-fun b!2482827 () Bool)

(assert (=> b!2482827 (= e!1576187 e!1576188)))

(declare-fun c!394662 () Bool)

(assert (=> b!2482827 (= c!394662 (_1!17001 lt!889180))))

(declare-fun b!2482828 () Bool)

(assert (=> b!2482828 (= e!1576188 e!1576186)))

(declare-fun res!1050980 () Bool)

(declare-fun contains!5136 (ListLongMap!555 (_ BitVec 64)) Bool)

(assert (=> b!2482828 (= res!1050980 (contains!5136 call!152070 lt!889152))))

(assert (=> b!2482828 (=> (not res!1050980) (not e!1576186))))

(declare-fun bm!152065 () Bool)

(assert (=> bm!152065 (= call!152070 (map!6236 (_2!17001 lt!889180)))))

(declare-fun b!2482829 () Bool)

(assert (=> b!2482829 (= e!1576190 (tuple2!28921 false (_2!17001 lt!889179)))))

(declare-fun bm!152066 () Bool)

(assert (=> bm!152066 (= call!152071 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))

(assert (= (and d!713026 c!394664) b!2482824))

(assert (= (and d!713026 (not c!394664)) b!2482821))

(assert (= (and d!713026 c!394663) b!2482825))

(assert (= (and d!713026 (not c!394663)) b!2482829))

(assert (= (and d!713026 res!1050982) b!2482823))

(assert (= (and b!2482823 res!1050981) b!2482827))

(assert (= (and b!2482827 c!394662) b!2482828))

(assert (= (and b!2482827 (not c!394662)) b!2482826))

(assert (= (and b!2482828 res!1050980) b!2482822))

(assert (= (or b!2482828 b!2482822 b!2482826) bm!152065))

(assert (= (or b!2482822 b!2482826) bm!152066))

(assert (=> bm!152066 m!2850729))

(declare-fun m!2850773 () Bool)

(assert (=> b!2482822 m!2850773))

(declare-fun m!2850775 () Bool)

(assert (=> b!2482823 m!2850775))

(declare-fun m!2850777 () Bool)

(assert (=> b!2482825 m!2850777))

(declare-fun m!2850779 () Bool)

(assert (=> b!2482828 m!2850779))

(declare-fun m!2850781 () Bool)

(assert (=> d!713026 m!2850781))

(assert (=> d!713026 m!2850759))

(declare-fun m!2850783 () Bool)

(assert (=> bm!152065 m!2850783))

(declare-fun m!2850785 () Bool)

(assert (=> b!2482824 m!2850785))

(assert (=> b!2482729 d!713026))

(declare-fun d!713028 () Bool)

(assert (=> d!713028 (dynLambda!12476 lambda!94122 (tuple2!28923 lt!889152 lt!889150))))

(declare-fun lt!889183 () Unit!42663)

(declare-fun choose!14650 (List!29241 Int tuple2!28922) Unit!42663)

(assert (=> d!713028 (= lt!889183 (choose!14650 (toList!1607 lt!889156) lambda!94122 (tuple2!28923 lt!889152 lt!889150)))))

(declare-fun e!1576193 () Bool)

(assert (=> d!713028 e!1576193))

(declare-fun res!1050985 () Bool)

(assert (=> d!713028 (=> (not res!1050985) (not e!1576193))))

(assert (=> d!713028 (= res!1050985 (forall!5976 (toList!1607 lt!889156) lambda!94122))))

(assert (=> d!713028 (= (forallContained!870 (toList!1607 lt!889156) lambda!94122 (tuple2!28923 lt!889152 lt!889150)) lt!889183)))

(declare-fun b!2482832 () Bool)

(declare-fun contains!5137 (List!29241 tuple2!28922) Bool)

(assert (=> b!2482832 (= e!1576193 (contains!5137 (toList!1607 lt!889156) (tuple2!28923 lt!889152 lt!889150)))))

(assert (= (and d!713028 res!1050985) b!2482832))

(declare-fun b_lambda!76151 () Bool)

(assert (=> (not b_lambda!76151) (not d!713028)))

(declare-fun m!2850787 () Bool)

(assert (=> d!713028 m!2850787))

(declare-fun m!2850789 () Bool)

(assert (=> d!713028 m!2850789))

(declare-fun m!2850791 () Bool)

(assert (=> d!713028 m!2850791))

(declare-fun m!2850793 () Bool)

(assert (=> b!2482832 m!2850793))

(assert (=> b!2482729 d!713028))

(declare-fun d!713030 () Bool)

(declare-fun res!1050990 () Bool)

(declare-fun e!1576198 () Bool)

(assert (=> d!713030 (=> res!1050990 e!1576198)))

(assert (=> d!713030 (= res!1050990 (not ((_ is Cons!29140) lt!889157)))))

(assert (=> d!713030 (= (noDuplicateKeys!89 lt!889157) e!1576198)))

(declare-fun b!2482837 () Bool)

(declare-fun e!1576199 () Bool)

(assert (=> b!2482837 (= e!1576198 e!1576199)))

(declare-fun res!1050991 () Bool)

(assert (=> b!2482837 (=> (not res!1050991) (not e!1576199))))

(assert (=> b!2482837 (= res!1050991 (not (containsKey!141 (t!210903 lt!889157) (_1!17000 (h!34546 lt!889157)))))))

(declare-fun b!2482838 () Bool)

(assert (=> b!2482838 (= e!1576199 (noDuplicateKeys!89 (t!210903 lt!889157)))))

(assert (= (and d!713030 (not res!1050990)) b!2482837))

(assert (= (and b!2482837 res!1050991) b!2482838))

(declare-fun m!2850795 () Bool)

(assert (=> b!2482837 m!2850795))

(declare-fun m!2850797 () Bool)

(assert (=> b!2482838 m!2850797))

(assert (=> b!2482729 d!713030))

(declare-fun d!713032 () Bool)

(declare-fun map!6237 (LongMapFixedSize!6764) ListLongMap!555)

(assert (=> d!713032 (= (map!6236 (v!31501 (underlying!6972 thiss!42540))) (map!6237 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))

(declare-fun bs!467562 () Bool)

(assert (= bs!467562 d!713032))

(declare-fun m!2850799 () Bool)

(assert (=> bs!467562 m!2850799))

(assert (=> b!2482729 d!713032))

(declare-fun d!713034 () Bool)

(declare-fun lt!889186 () ListMap!1087)

(declare-fun invariantList!412 (List!29240) Bool)

(assert (=> d!713034 (invariantList!412 (toList!1606 lt!889186))))

(declare-fun extractMap!178 (List!29241) ListMap!1087)

(assert (=> d!713034 (= lt!889186 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))

(assert (=> d!713034 (valid!2586 thiss!42540)))

(assert (=> d!713034 (= (map!6235 thiss!42540) lt!889186)))

(declare-fun bs!467563 () Bool)

(assert (= bs!467563 d!713034))

(declare-fun m!2850801 () Bool)

(assert (=> bs!467563 m!2850801))

(assert (=> bs!467563 m!2850729))

(declare-fun m!2850803 () Bool)

(assert (=> bs!467563 m!2850803))

(assert (=> bs!467563 m!2850719))

(assert (=> b!2482729 d!713034))

(declare-fun d!713036 () Bool)

(assert (=> d!713036 (noDuplicateKeys!89 (removePairForKey!81 lt!889150 key!2246))))

(declare-fun lt!889189 () Unit!42663)

(declare-fun choose!14651 (List!29240 K!5540) Unit!42663)

(assert (=> d!713036 (= lt!889189 (choose!14651 lt!889150 key!2246))))

(assert (=> d!713036 (noDuplicateKeys!89 lt!889150)))

(assert (=> d!713036 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!69 lt!889150 key!2246) lt!889189)))

(declare-fun bs!467564 () Bool)

(assert (= bs!467564 d!713036))

(assert (=> bs!467564 m!2850731))

(assert (=> bs!467564 m!2850731))

(declare-fun m!2850805 () Bool)

(assert (=> bs!467564 m!2850805))

(declare-fun m!2850807 () Bool)

(assert (=> bs!467564 m!2850807))

(assert (=> bs!467564 m!2850771))

(assert (=> b!2482729 d!713036))

(declare-fun bs!467565 () Bool)

(declare-fun b!2482869 () Bool)

(assert (= bs!467565 (and b!2482869 b!2482729)))

(declare-fun lambda!94126 () Int)

(assert (=> bs!467565 (= lambda!94126 lambda!94122)))

(declare-fun bs!467566 () Bool)

(assert (= bs!467566 (and b!2482869 b!2482735)))

(assert (=> bs!467566 (not (= lambda!94126 lambda!94123))))

(declare-fun b!2482861 () Bool)

(declare-fun e!1576216 () Bool)

(declare-fun call!152088 () Bool)

(assert (=> b!2482861 (= e!1576216 call!152088)))

(declare-fun b!2482862 () Bool)

(assert (=> b!2482862 false))

(declare-fun lt!889248 () Unit!42663)

(declare-fun lt!889234 () Unit!42663)

(assert (=> b!2482862 (= lt!889248 lt!889234)))

(declare-fun lt!889241 () ListLongMap!555)

(declare-fun contains!5138 (ListMap!1087 K!5540) Bool)

(assert (=> b!2482862 (contains!5138 (extractMap!178 (toList!1607 lt!889241)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!73 (ListLongMap!555 K!5540 Hashable!3292) Unit!42663)

(assert (=> b!2482862 (= lt!889234 (lemmaInLongMapThenInGenericMap!73 lt!889241 key!2246 (hashF!5255 thiss!42540)))))

(declare-fun call!152084 () ListLongMap!555)

(assert (=> b!2482862 (= lt!889241 call!152084)))

(declare-fun e!1576215 () Unit!42663)

(declare-fun Unit!42665 () Unit!42663)

(assert (=> b!2482862 (= e!1576215 Unit!42665)))

(declare-fun b!2482863 () Bool)

(declare-fun Unit!42666 () Unit!42663)

(assert (=> b!2482863 (= e!1576215 Unit!42666)))

(declare-fun b!2482864 () Bool)

(declare-fun e!1576218 () Unit!42663)

(declare-fun Unit!42667 () Unit!42663)

(assert (=> b!2482864 (= e!1576218 Unit!42667)))

(declare-fun d!713038 () Bool)

(declare-fun lt!889243 () Bool)

(assert (=> d!713038 (= lt!889243 (contains!5138 (map!6235 thiss!42540) key!2246))))

(declare-fun e!1576214 () Bool)

(assert (=> d!713038 (= lt!889243 e!1576214)))

(declare-fun res!1050998 () Bool)

(assert (=> d!713038 (=> (not res!1050998) (not e!1576214))))

(declare-fun lt!889246 () (_ BitVec 64))

(assert (=> d!713038 (= res!1050998 (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))

(declare-fun lt!889232 () Unit!42663)

(declare-fun e!1576217 () Unit!42663)

(assert (=> d!713038 (= lt!889232 e!1576217)))

(declare-fun c!394673 () Bool)

(assert (=> d!713038 (= c!394673 (contains!5138 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) key!2246))))

(declare-fun lt!889235 () Unit!42663)

(assert (=> d!713038 (= lt!889235 e!1576218)))

(declare-fun c!394675 () Bool)

(assert (=> d!713038 (= c!394675 (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))

(assert (=> d!713038 (= lt!889246 (hash!705 (hashF!5255 thiss!42540) key!2246))))

(assert (=> d!713038 (valid!2586 thiss!42540)))

(assert (=> d!713038 (= (contains!5134 thiss!42540 key!2246) lt!889243)))

(declare-fun b!2482865 () Bool)

(assert (=> b!2482865 (= e!1576217 e!1576215)))

(declare-fun res!1051000 () Bool)

(declare-fun call!152085 () Bool)

(assert (=> b!2482865 (= res!1051000 call!152085)))

(declare-fun e!1576219 () Bool)

(assert (=> b!2482865 (=> (not res!1051000) (not e!1576219))))

(declare-fun c!394676 () Bool)

(assert (=> b!2482865 (= c!394676 e!1576219)))

(declare-fun bm!152079 () Bool)

(declare-fun call!152086 () (_ BitVec 64))

(assert (=> bm!152079 (= call!152086 (hash!705 (hashF!5255 thiss!42540) key!2246))))

(declare-fun lt!889249 () ListLongMap!555)

(declare-fun call!152087 () List!29240)

(declare-fun bm!152080 () Bool)

(declare-fun apply!6938 (ListLongMap!555 (_ BitVec 64)) List!29240)

(assert (=> bm!152080 (= call!152087 (apply!6938 (ite c!394673 lt!889249 call!152084) call!152086))))

(declare-fun b!2482866 () Bool)

(assert (=> b!2482866 (= e!1576219 call!152088)))

(declare-fun b!2482867 () Bool)

(declare-fun lt!889245 () Unit!42663)

(assert (=> b!2482867 (= e!1576217 lt!889245)))

(assert (=> b!2482867 (= lt!889249 call!152084)))

(declare-fun lemmaInGenericMapThenInLongMap!73 (ListLongMap!555 K!5540 Hashable!3292) Unit!42663)

(assert (=> b!2482867 (= lt!889245 (lemmaInGenericMapThenInLongMap!73 lt!889249 key!2246 (hashF!5255 thiss!42540)))))

(declare-fun res!1050999 () Bool)

(assert (=> b!2482867 (= res!1050999 call!152085)))

(assert (=> b!2482867 (=> (not res!1050999) (not e!1576216))))

(assert (=> b!2482867 e!1576216))

(declare-fun b!2482868 () Bool)

(assert (=> b!2482868 false))

(declare-fun lt!889236 () Unit!42663)

(declare-fun lt!889242 () Unit!42663)

(assert (=> b!2482868 (= lt!889236 lt!889242)))

(declare-fun lt!889239 () List!29241)

(declare-fun lt!889233 () List!29240)

(assert (=> b!2482868 (contains!5137 lt!889239 (tuple2!28923 lt!889246 lt!889233))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!78 (List!29241 (_ BitVec 64) List!29240) Unit!42663)

(assert (=> b!2482868 (= lt!889242 (lemmaGetValueByKeyImpliesContainsTuple!78 lt!889239 lt!889246 lt!889233))))

(assert (=> b!2482868 (= lt!889233 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))

(assert (=> b!2482868 (= lt!889239 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))

(declare-fun lt!889237 () Unit!42663)

(declare-fun lt!889238 () Unit!42663)

(assert (=> b!2482868 (= lt!889237 lt!889238)))

(declare-fun lt!889231 () List!29241)

(declare-fun isDefined!4579 (Option!5757) Bool)

(assert (=> b!2482868 (isDefined!4579 (getValueByKey!141 lt!889231 lt!889246))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!98 (List!29241 (_ BitVec 64)) Unit!42663)

(assert (=> b!2482868 (= lt!889238 (lemmaContainsKeyImpliesGetValueByKeyDefined!98 lt!889231 lt!889246))))

(assert (=> b!2482868 (= lt!889231 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))

(declare-fun lt!889230 () Unit!42663)

(declare-fun lt!889247 () Unit!42663)

(assert (=> b!2482868 (= lt!889230 lt!889247)))

(declare-fun lt!889240 () List!29241)

(declare-fun containsKey!142 (List!29241 (_ BitVec 64)) Bool)

(assert (=> b!2482868 (containsKey!142 lt!889240 lt!889246)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!74 (List!29241 (_ BitVec 64)) Unit!42663)

(assert (=> b!2482868 (= lt!889247 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!74 lt!889240 lt!889246))))

(assert (=> b!2482868 (= lt!889240 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))

(declare-fun e!1576220 () Unit!42663)

(declare-fun Unit!42668 () Unit!42663)

(assert (=> b!2482868 (= e!1576220 Unit!42668)))

(declare-fun bm!152081 () Bool)

(declare-datatypes ((Option!5758 0))(
  ( (None!5757) (Some!5757 (v!31507 tuple2!28918)) )
))
(declare-fun call!152089 () Option!5758)

(declare-fun isDefined!4580 (Option!5758) Bool)

(assert (=> bm!152081 (= call!152088 (isDefined!4580 call!152089))))

(declare-fun bm!152082 () Bool)

(assert (=> bm!152082 (= call!152085 (contains!5136 (ite c!394673 lt!889249 call!152084) call!152086))))

(declare-fun bm!152083 () Bool)

(assert (=> bm!152083 (= call!152084 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))

(assert (=> b!2482869 (= e!1576218 (forallContained!870 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94126 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(declare-fun c!394674 () Bool)

(assert (=> b!2482869 (= c!394674 (not (contains!5137 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)))))))

(declare-fun lt!889244 () Unit!42663)

(assert (=> b!2482869 (= lt!889244 e!1576220)))

(declare-fun b!2482870 () Bool)

(declare-fun Unit!42669 () Unit!42663)

(assert (=> b!2482870 (= e!1576220 Unit!42669)))

(declare-fun bm!152084 () Bool)

(declare-fun getPair!73 (List!29240 K!5540) Option!5758)

(assert (=> bm!152084 (= call!152089 (getPair!73 call!152087 key!2246))))

(declare-fun b!2482871 () Bool)

(assert (=> b!2482871 (= e!1576214 (isDefined!4580 (getPair!73 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) key!2246)))))

(assert (= (and d!713038 c!394675) b!2482869))

(assert (= (and d!713038 (not c!394675)) b!2482864))

(assert (= (and b!2482869 c!394674) b!2482868))

(assert (= (and b!2482869 (not c!394674)) b!2482870))

(assert (= (and d!713038 c!394673) b!2482867))

(assert (= (and d!713038 (not c!394673)) b!2482865))

(assert (= (and b!2482867 res!1050999) b!2482861))

(assert (= (and b!2482865 res!1051000) b!2482866))

(assert (= (and b!2482865 c!394676) b!2482862))

(assert (= (and b!2482865 (not c!394676)) b!2482863))

(assert (= (or b!2482867 b!2482861 b!2482865 b!2482866) bm!152079))

(assert (= (or b!2482867 b!2482865 b!2482866 b!2482862) bm!152083))

(assert (= (or b!2482861 b!2482866) bm!152080))

(assert (= (or b!2482867 b!2482865) bm!152082))

(assert (= (or b!2482861 b!2482866) bm!152084))

(assert (= (or b!2482861 b!2482866) bm!152081))

(assert (= (and d!713038 res!1050998) b!2482871))

(assert (=> b!2482869 m!2850729))

(declare-fun m!2850809 () Bool)

(assert (=> b!2482869 m!2850809))

(declare-fun m!2850811 () Bool)

(assert (=> b!2482869 m!2850811))

(declare-fun m!2850813 () Bool)

(assert (=> b!2482869 m!2850813))

(declare-fun m!2850815 () Bool)

(assert (=> bm!152081 m!2850815))

(declare-fun m!2850817 () Bool)

(assert (=> b!2482867 m!2850817))

(assert (=> b!2482871 m!2850809))

(assert (=> b!2482871 m!2850809))

(declare-fun m!2850819 () Bool)

(assert (=> b!2482871 m!2850819))

(assert (=> b!2482871 m!2850819))

(declare-fun m!2850821 () Bool)

(assert (=> b!2482871 m!2850821))

(declare-fun m!2850823 () Bool)

(assert (=> bm!152082 m!2850823))

(assert (=> bm!152079 m!2850737))

(declare-fun m!2850825 () Bool)

(assert (=> bm!152080 m!2850825))

(declare-fun m!2850827 () Bool)

(assert (=> b!2482862 m!2850827))

(assert (=> b!2482862 m!2850827))

(declare-fun m!2850829 () Bool)

(assert (=> b!2482862 m!2850829))

(declare-fun m!2850831 () Bool)

(assert (=> b!2482862 m!2850831))

(declare-fun m!2850833 () Bool)

(assert (=> bm!152084 m!2850833))

(declare-fun m!2850835 () Bool)

(assert (=> b!2482868 m!2850835))

(declare-fun m!2850837 () Bool)

(assert (=> b!2482868 m!2850837))

(declare-fun m!2850839 () Bool)

(assert (=> b!2482868 m!2850839))

(declare-fun m!2850841 () Bool)

(assert (=> b!2482868 m!2850841))

(declare-fun m!2850843 () Bool)

(assert (=> b!2482868 m!2850843))

(assert (=> b!2482868 m!2850841))

(declare-fun m!2850845 () Bool)

(assert (=> b!2482868 m!2850845))

(assert (=> b!2482868 m!2850729))

(declare-fun m!2850847 () Bool)

(assert (=> b!2482868 m!2850847))

(assert (=> b!2482868 m!2850809))

(assert (=> d!713038 m!2850719))

(declare-fun m!2850849 () Bool)

(assert (=> d!713038 m!2850849))

(assert (=> d!713038 m!2850735))

(declare-fun m!2850851 () Bool)

(assert (=> d!713038 m!2850851))

(assert (=> d!713038 m!2850803))

(declare-fun m!2850853 () Bool)

(assert (=> d!713038 m!2850853))

(assert (=> d!713038 m!2850803))

(assert (=> d!713038 m!2850737))

(assert (=> d!713038 m!2850735))

(assert (=> d!713038 m!2850729))

(assert (=> bm!152083 m!2850729))

(assert (=> b!2482728 d!713038))

(declare-fun bs!467567 () Bool)

(declare-fun b!2482876 () Bool)

(assert (= bs!467567 (and b!2482876 b!2482729)))

(declare-fun lambda!94129 () Int)

(assert (=> bs!467567 (= lambda!94129 lambda!94122)))

(declare-fun bs!467568 () Bool)

(assert (= bs!467568 (and b!2482876 b!2482735)))

(assert (=> bs!467568 (not (= lambda!94129 lambda!94123))))

(declare-fun bs!467569 () Bool)

(assert (= bs!467569 (and b!2482876 b!2482869)))

(assert (=> bs!467569 (= lambda!94129 lambda!94126)))

(declare-fun d!713040 () Bool)

(declare-fun res!1051005 () Bool)

(declare-fun e!1576223 () Bool)

(assert (=> d!713040 (=> (not res!1051005) (not e!1576223))))

(assert (=> d!713040 (= res!1051005 (valid!2587 (v!31501 (underlying!6972 thiss!42540))))))

(assert (=> d!713040 (= (valid!2586 thiss!42540) e!1576223)))

(declare-fun res!1051006 () Bool)

(assert (=> b!2482876 (=> (not res!1051006) (not e!1576223))))

(assert (=> b!2482876 (= res!1051006 (forall!5976 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94129))))

(declare-fun b!2482877 () Bool)

(declare-fun allKeysSameHashInMap!169 (ListLongMap!555 Hashable!3292) Bool)

(assert (=> b!2482877 (= e!1576223 (allKeysSameHashInMap!169 (map!6236 (v!31501 (underlying!6972 thiss!42540))) (hashF!5255 thiss!42540)))))

(assert (= (and d!713040 res!1051005) b!2482876))

(assert (= (and b!2482876 res!1051006) b!2482877))

(assert (=> d!713040 m!2850759))

(assert (=> b!2482876 m!2850729))

(declare-fun m!2850855 () Bool)

(assert (=> b!2482876 m!2850855))

(assert (=> b!2482877 m!2850729))

(assert (=> b!2482877 m!2850729))

(declare-fun m!2850857 () Bool)

(assert (=> b!2482877 m!2850857))

(assert (=> b!2482733 d!713040))

(declare-fun d!713042 () Bool)

(assert (=> d!713042 (= (array_inv!3843 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (bvsge (size!22774 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482732 d!713042))

(declare-fun d!713044 () Bool)

(assert (=> d!713044 (= (array_inv!3844 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (bvsge (size!22773 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482732 d!713044))

(declare-fun tp_is_empty!12301 () Bool)

(declare-fun e!1576226 () Bool)

(declare-fun tp!794924 () Bool)

(declare-fun b!2482882 () Bool)

(assert (=> b!2482882 (= e!1576226 (and tp_is_empty!12299 tp_is_empty!12301 tp!794924))))

(assert (=> b!2482736 (= tp!794920 e!1576226)))

(assert (= (and b!2482736 ((_ is Cons!29140) mapDefault!15623)) b!2482882))

(declare-fun b!2482883 () Bool)

(declare-fun e!1576227 () Bool)

(declare-fun tp!794925 () Bool)

(assert (=> b!2482883 (= e!1576227 (and tp_is_empty!12299 tp_is_empty!12301 tp!794925))))

(assert (=> b!2482732 (= tp!794915 e!1576227)))

(assert (= (and b!2482732 ((_ is Cons!29140) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))) b!2482883))

(declare-fun b!2482884 () Bool)

(declare-fun tp!794926 () Bool)

(declare-fun e!1576228 () Bool)

(assert (=> b!2482884 (= e!1576228 (and tp_is_empty!12299 tp_is_empty!12301 tp!794926))))

(assert (=> b!2482732 (= tp!794921 e!1576228)))

(assert (= (and b!2482732 ((_ is Cons!29140) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))) b!2482884))

(declare-fun e!1576234 () Bool)

(declare-fun b!2482891 () Bool)

(declare-fun tp!794933 () Bool)

(assert (=> b!2482891 (= e!1576234 (and tp_is_empty!12299 tp_is_empty!12301 tp!794933))))

(declare-fun mapNonEmpty!15626 () Bool)

(declare-fun mapRes!15626 () Bool)

(declare-fun tp!794935 () Bool)

(assert (=> mapNonEmpty!15626 (= mapRes!15626 (and tp!794935 e!1576234))))

(declare-fun mapValue!15626 () List!29240)

(declare-fun mapRest!15626 () (Array (_ BitVec 32) List!29240))

(declare-fun mapKey!15626 () (_ BitVec 32))

(assert (=> mapNonEmpty!15626 (= mapRest!15623 (store mapRest!15626 mapKey!15626 mapValue!15626))))

(declare-fun mapIsEmpty!15626 () Bool)

(assert (=> mapIsEmpty!15626 mapRes!15626))

(declare-fun condMapEmpty!15626 () Bool)

(declare-fun mapDefault!15626 () List!29240)

(assert (=> mapNonEmpty!15623 (= condMapEmpty!15626 (= mapRest!15623 ((as const (Array (_ BitVec 32) List!29240)) mapDefault!15626)))))

(declare-fun e!1576233 () Bool)

(assert (=> mapNonEmpty!15623 (= tp!794918 (and e!1576233 mapRes!15626))))

(declare-fun b!2482892 () Bool)

(declare-fun tp!794934 () Bool)

(assert (=> b!2482892 (= e!1576233 (and tp_is_empty!12299 tp_is_empty!12301 tp!794934))))

(assert (= (and mapNonEmpty!15623 condMapEmpty!15626) mapIsEmpty!15626))

(assert (= (and mapNonEmpty!15623 (not condMapEmpty!15626)) mapNonEmpty!15626))

(assert (= (and mapNonEmpty!15626 ((_ is Cons!29140) mapValue!15626)) b!2482891))

(assert (= (and mapNonEmpty!15623 ((_ is Cons!29140) mapDefault!15626)) b!2482892))

(declare-fun m!2850859 () Bool)

(assert (=> mapNonEmpty!15626 m!2850859))

(declare-fun e!1576235 () Bool)

(declare-fun tp!794936 () Bool)

(declare-fun b!2482893 () Bool)

(assert (=> b!2482893 (= e!1576235 (and tp_is_empty!12299 tp_is_empty!12301 tp!794936))))

(assert (=> mapNonEmpty!15623 (= tp!794917 e!1576235)))

(assert (= (and mapNonEmpty!15623 ((_ is Cons!29140) mapValue!15623)) b!2482893))

(declare-fun b_lambda!76153 () Bool)

(assert (= b_lambda!76149 (or (and b!2482732 b_free!72385) b_lambda!76153)))

(declare-fun b_lambda!76155 () Bool)

(assert (= b_lambda!76151 (or b!2482729 b_lambda!76155)))

(declare-fun bs!467570 () Bool)

(declare-fun d!713046 () Bool)

(assert (= bs!467570 (and d!713046 b!2482729)))

(assert (=> bs!467570 (= (dynLambda!12476 lambda!94122 (tuple2!28923 lt!889152 lt!889150)) (noDuplicateKeys!89 (_2!17002 (tuple2!28923 lt!889152 lt!889150))))))

(declare-fun m!2850861 () Bool)

(assert (=> bs!467570 m!2850861))

(assert (=> d!713028 d!713046))

(declare-fun b_lambda!76157 () Bool)

(assert (= b_lambda!76147 (or b!2482735 b_lambda!76157)))

(declare-fun bs!467571 () Bool)

(declare-fun d!713048 () Bool)

(assert (= bs!467571 (and d!713048 b!2482735)))

(declare-fun allKeysSameHash!66 (List!29240 (_ BitVec 64) Hashable!3292) Bool)

(declare-datatypes ((tuple2!28926 0))(
  ( (tuple2!28927 (_1!17004 Unit!42663) (_2!17004 MutableMap!3292)) )
))
(declare-fun Unit!42670 () Unit!42663)

(declare-fun Unit!42671 () Unit!42663)

(assert (=> bs!467571 (= (dynLambda!12476 lambda!94123 (h!34547 (toList!1607 lt!889156))) (allKeysSameHash!66 (_2!17002 (h!34547 (toList!1607 lt!889156))) (_1!17002 (h!34547 (toList!1607 lt!889156))) (hashF!5255 (_2!17004 (ite (_1!17001 lt!889155) (tuple2!28927 Unit!42670 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (bvsub (_size!6812 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3454 thiss!42540))) (tuple2!28927 Unit!42671 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (_size!6812 thiss!42540) (defaultValue!3454 thiss!42540))))))))))

(declare-fun m!2850863 () Bool)

(assert (=> bs!467571 m!2850863))

(assert (=> b!2482783 d!713048))

(check-sat (not b!2482893) (not b!2482876) (not d!713026) (not b!2482789) (not bm!152079) (not b_next!73091) (not b_lambda!76155) (not b!2482862) (not b_next!73089) (not bm!152084) (not bm!152082) (not b!2482801) (not b_lambda!76153) (not bs!467571) (not tb!140381) (not b!2482823) (not b!2482832) (not b!2482883) (not bm!152081) b_and!188641 (not d!713038) tp_is_empty!12301 (not b!2482784) (not b!2482867) (not b!2482891) (not b!2482824) b_and!188639 (not b!2482822) (not b!2482868) (not bs!467570) (not b_lambda!76157) (not b!2482884) (not b!2482877) (not b!2482825) (not b!2482837) (not b!2482828) tp_is_empty!12299 (not mapNonEmpty!15626) (not d!713040) (not d!713022) (not bm!152065) (not b!2482869) (not d!713034) (not bm!152080) (not b!2482838) (not d!713028) (not b!2482871) (not b!2482892) (not bm!152083) (not b!2482882) (not d!713032) (not d!713036) (not d!713020) (not bm!152066) (not d!713024))
(check-sat b_and!188639 b_and!188641 (not b_next!73089) (not b_next!73091))
(get-model)

(declare-fun d!713050 () Bool)

(declare-fun e!1576240 () Bool)

(assert (=> d!713050 e!1576240))

(declare-fun res!1051009 () Bool)

(assert (=> d!713050 (=> res!1051009 e!1576240)))

(declare-fun lt!889258 () Bool)

(assert (=> d!713050 (= res!1051009 (not lt!889258))))

(declare-fun lt!889260 () Bool)

(assert (=> d!713050 (= lt!889258 lt!889260)))

(declare-fun lt!889261 () Unit!42663)

(declare-fun e!1576241 () Unit!42663)

(assert (=> d!713050 (= lt!889261 e!1576241)))

(declare-fun c!394679 () Bool)

(assert (=> d!713050 (= c!394679 lt!889260)))

(assert (=> d!713050 (= lt!889260 (containsKey!142 (toList!1607 call!152070) lt!889152))))

(assert (=> d!713050 (= (contains!5136 call!152070 lt!889152) lt!889258)))

(declare-fun b!2482900 () Bool)

(declare-fun lt!889259 () Unit!42663)

(assert (=> b!2482900 (= e!1576241 lt!889259)))

(assert (=> b!2482900 (= lt!889259 (lemmaContainsKeyImpliesGetValueByKeyDefined!98 (toList!1607 call!152070) lt!889152))))

(assert (=> b!2482900 (isDefined!4579 (getValueByKey!141 (toList!1607 call!152070) lt!889152))))

(declare-fun b!2482901 () Bool)

(declare-fun Unit!42672 () Unit!42663)

(assert (=> b!2482901 (= e!1576241 Unit!42672)))

(declare-fun b!2482902 () Bool)

(assert (=> b!2482902 (= e!1576240 (isDefined!4579 (getValueByKey!141 (toList!1607 call!152070) lt!889152)))))

(assert (= (and d!713050 c!394679) b!2482900))

(assert (= (and d!713050 (not c!394679)) b!2482901))

(assert (= (and d!713050 (not res!1051009)) b!2482902))

(declare-fun m!2850865 () Bool)

(assert (=> d!713050 m!2850865))

(declare-fun m!2850867 () Bool)

(assert (=> b!2482900 m!2850867))

(declare-fun m!2850869 () Bool)

(assert (=> b!2482900 m!2850869))

(assert (=> b!2482900 m!2850869))

(declare-fun m!2850871 () Bool)

(assert (=> b!2482900 m!2850871))

(assert (=> b!2482902 m!2850869))

(assert (=> b!2482902 m!2850869))

(assert (=> b!2482902 m!2850871))

(assert (=> b!2482828 d!713050))

(declare-fun d!713052 () Bool)

(declare-fun res!1051014 () Bool)

(declare-fun e!1576246 () Bool)

(assert (=> d!713052 (=> res!1051014 e!1576246)))

(assert (=> d!713052 (= res!1051014 (and ((_ is Cons!29140) lt!889168) (= (_1!17000 (h!34546 lt!889168)) key!2246)))))

(assert (=> d!713052 (= (containsKey!141 lt!889168 key!2246) e!1576246)))

(declare-fun b!2482907 () Bool)

(declare-fun e!1576247 () Bool)

(assert (=> b!2482907 (= e!1576246 e!1576247)))

(declare-fun res!1051015 () Bool)

(assert (=> b!2482907 (=> (not res!1051015) (not e!1576247))))

(assert (=> b!2482907 (= res!1051015 ((_ is Cons!29140) lt!889168))))

(declare-fun b!2482908 () Bool)

(assert (=> b!2482908 (= e!1576247 (containsKey!141 (t!210903 lt!889168) key!2246))))

(assert (= (and d!713052 (not res!1051014)) b!2482907))

(assert (= (and b!2482907 res!1051015) b!2482908))

(declare-fun m!2850873 () Bool)

(assert (=> b!2482908 m!2850873))

(assert (=> d!713024 d!713052))

(declare-fun d!713054 () Bool)

(declare-fun res!1051016 () Bool)

(declare-fun e!1576248 () Bool)

(assert (=> d!713054 (=> res!1051016 e!1576248)))

(assert (=> d!713054 (= res!1051016 (not ((_ is Cons!29140) lt!889150)))))

(assert (=> d!713054 (= (noDuplicateKeys!89 lt!889150) e!1576248)))

(declare-fun b!2482909 () Bool)

(declare-fun e!1576249 () Bool)

(assert (=> b!2482909 (= e!1576248 e!1576249)))

(declare-fun res!1051017 () Bool)

(assert (=> b!2482909 (=> (not res!1051017) (not e!1576249))))

(assert (=> b!2482909 (= res!1051017 (not (containsKey!141 (t!210903 lt!889150) (_1!17000 (h!34546 lt!889150)))))))

(declare-fun b!2482910 () Bool)

(assert (=> b!2482910 (= e!1576249 (noDuplicateKeys!89 (t!210903 lt!889150)))))

(assert (= (and d!713054 (not res!1051016)) b!2482909))

(assert (= (and b!2482909 res!1051017) b!2482910))

(declare-fun m!2850875 () Bool)

(assert (=> b!2482909 m!2850875))

(declare-fun m!2850877 () Bool)

(assert (=> b!2482910 m!2850877))

(assert (=> d!713024 d!713054))

(declare-fun d!713056 () Bool)

(declare-fun lt!889264 () Bool)

(assert (=> d!713056 (= lt!889264 (contains!5136 (map!6236 (v!31501 (underlying!6972 thiss!42540))) lt!889152))))

(declare-fun contains!5139 (LongMapFixedSize!6764 (_ BitVec 64)) Bool)

(assert (=> d!713056 (= lt!889264 (contains!5139 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889152))))

(assert (=> d!713056 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713056 (= (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889152) lt!889264)))

(declare-fun bs!467572 () Bool)

(assert (= bs!467572 d!713056))

(assert (=> bs!467572 m!2850729))

(assert (=> bs!467572 m!2850729))

(declare-fun m!2850879 () Bool)

(assert (=> bs!467572 m!2850879))

(declare-fun m!2850881 () Bool)

(assert (=> bs!467572 m!2850881))

(assert (=> bs!467572 m!2850759))

(assert (=> d!713022 d!713056))

(declare-fun b!2482947 () Bool)

(declare-fun e!1576281 () Bool)

(declare-fun call!152100 () List!29240)

(assert (=> b!2482947 (= e!1576281 (= call!152100 (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2482948 () Bool)

(declare-fun c!394698 () Bool)

(assert (=> b!2482948 (= c!394698 (and (= lt!889152 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!1576276 () List!29240)

(declare-fun e!1576280 () List!29240)

(assert (=> b!2482948 (= e!1576276 e!1576280)))

(declare-fun b!2482949 () Bool)

(declare-fun lt!889295 () Unit!42663)

(declare-fun lt!889291 () Unit!42663)

(assert (=> b!2482949 (= lt!889295 lt!889291)))

(declare-fun e!1576274 () Bool)

(assert (=> b!2482949 e!1576274))

(declare-fun c!394696 () Bool)

(assert (=> b!2482949 (= c!394696 (= lt!889152 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!11 0))(
  ( (Found!11 (index!1195 (_ BitVec 32))) (Undefined!11) (MissingZero!11 (index!1196 (_ BitVec 32))) (MissingVacant!11 (index!1197 (_ BitVec 32))) (Intermediate!11 (undefined!92 Bool) (index!1198 (_ BitVec 32)) (x!459713 (_ BitVec 32))) )
))
(declare-fun lt!889296 () SeekEntryResult!11)

(declare-fun lemmaKeyInListMapThenSameValueInArray!2 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 64) (_ BitVec 32) Int) Unit!42663)

(assert (=> b!2482949 (= lt!889291 (lemmaKeyInListMapThenSameValueInArray!2 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152 (index!1195 lt!889296) (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun lt!889288 () Unit!42663)

(declare-fun lt!889292 () Unit!42663)

(assert (=> b!2482949 (= lt!889288 lt!889292)))

(declare-fun getCurrentListMap!13 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 32) Int) ListLongMap!555)

(assert (=> b!2482949 (contains!5136 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (index!1195 lt!889296)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!5 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 32) Int) Unit!42663)

(assert (=> b!2482949 (= lt!889292 (lemmaValidKeyInArrayIsInListMap!5 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (index!1195 lt!889296) (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun lt!889290 () Unit!42663)

(declare-fun lt!889289 () Unit!42663)

(assert (=> b!2482949 (= lt!889290 lt!889289)))

(declare-fun arrayContainsKey!0 (array!11999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!2482949 (arrayContainsKey!0 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11999 (_ BitVec 64) (_ BitVec 32)) Unit!42663)

(assert (=> b!2482949 (= lt!889289 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152 (index!1195 lt!889296)))))

(declare-fun e!1576272 () List!29240)

(assert (=> b!2482949 (= e!1576272 (select (arr!5354 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (index!1195 lt!889296)))))

(declare-fun bm!152093 () Bool)

(declare-fun call!152098 () ListLongMap!555)

(declare-fun call!152101 () ListLongMap!555)

(assert (=> bm!152093 (= call!152100 (apply!6938 (ite c!394696 call!152098 call!152101) lt!889152))))

(declare-fun bm!152094 () Bool)

(assert (=> bm!152094 (= call!152098 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun bm!152095 () Bool)

(assert (=> bm!152095 (= call!152101 call!152098)))

(declare-fun b!2482950 () Bool)

(declare-fun e!1576282 () Bool)

(declare-fun lt!889297 () SeekEntryResult!11)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!2482950 (= e!1576282 (inRange!0 (index!1195 lt!889297) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2482951 () Bool)

(declare-fun e!1576279 () List!29240)

(assert (=> b!2482951 (= e!1576279 e!1576272)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!11999 (_ BitVec 32)) SeekEntryResult!11)

(assert (=> b!2482951 (= lt!889296 (seekEntry!0 lt!889152 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun lt!889293 () Unit!42663)

(declare-fun lemmaSeekEntryGivesInRangeIndex!2 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 64)) Unit!42663)

(assert (=> b!2482951 (= lt!889293 (lemmaSeekEntryGivesInRangeIndex!2 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152))))

(assert (=> b!2482951 (= lt!889297 (seekEntry!0 lt!889152 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun res!1051028 () Bool)

(assert (=> b!2482951 (= res!1051028 (not ((_ is Found!11) lt!889297)))))

(assert (=> b!2482951 (=> res!1051028 e!1576282)))

(assert (=> b!2482951 e!1576282))

(declare-fun lt!889287 () Unit!42663)

(assert (=> b!2482951 (= lt!889287 lt!889293)))

(declare-fun c!394694 () Bool)

(assert (=> b!2482951 (= c!394694 ((_ is Found!11) lt!889296))))

(declare-fun e!1576277 () Bool)

(declare-fun lt!889294 () List!29240)

(declare-fun b!2482952 () Bool)

(assert (=> b!2482952 (= e!1576277 (= lt!889294 (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152)))))

(declare-fun b!2482953 () Bool)

(declare-fun res!1051029 () Bool)

(declare-fun e!1576278 () Bool)

(assert (=> b!2482953 (=> (not res!1051029) (not e!1576278))))

(assert (=> b!2482953 (= res!1051029 (arrayContainsKey!0 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152 #b00000000000000000000000000000000))))

(declare-fun e!1576273 () Bool)

(assert (=> b!2482953 (= e!1576273 e!1576278)))

(declare-fun b!2482954 () Bool)

(assert (=> b!2482954 (= e!1576272 (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152))))

(declare-fun b!2482955 () Bool)

(assert (=> b!2482955 (= e!1576274 e!1576281)))

(declare-fun res!1051027 () Bool)

(assert (=> b!2482955 (= res!1051027 (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!2482955 (=> (not res!1051027) (not e!1576281))))

(declare-fun b!2482956 () Bool)

(assert (=> b!2482956 (= e!1576280 (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))

(declare-fun call!152099 () List!29240)

(declare-fun b!2482957 () Bool)

(assert (=> b!2482957 (= e!1576278 (= call!152099 (select (arr!5354 (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (index!1195 lt!889296))))))

(declare-fun b!2482958 () Bool)

(assert (=> b!2482958 (= e!1576274 e!1576273)))

(declare-fun c!394699 () Bool)

(assert (=> b!2482958 (= c!394699 (= lt!889152 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!152096 () Bool)

(assert (=> bm!152096 (= call!152099 call!152100)))

(declare-fun b!2482959 () Bool)

(assert (=> b!2482959 (= e!1576277 (= lt!889294 (get!8988 (getValueByKey!141 (toList!1607 (map!6237 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) lt!889152))))))

(declare-fun d!713058 () Bool)

(assert (=> d!713058 e!1576277))

(declare-fun c!394695 () Bool)

(assert (=> d!713058 (= c!394695 (contains!5139 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889152))))

(assert (=> d!713058 (= lt!889294 e!1576279)))

(declare-fun c!394697 () Bool)

(assert (=> d!713058 (= c!394697 (= lt!889152 (bvneg lt!889152)))))

(declare-fun valid!2588 (LongMapFixedSize!6764) Bool)

(assert (=> d!713058 (valid!2588 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))

(assert (=> d!713058 (= (apply!6937 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889152) lt!889294)))

(declare-fun b!2482960 () Bool)

(assert (=> b!2482960 (= e!1576279 e!1576276)))

(declare-fun c!394700 () Bool)

(assert (=> b!2482960 (= c!394700 (and (= lt!889152 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!2482961 () Bool)

(assert (=> b!2482961 (= e!1576280 (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152))))

(declare-fun b!2482962 () Bool)

(declare-fun res!1051026 () Bool)

(declare-fun e!1576275 () Bool)

(assert (=> b!2482962 (=> (not res!1051026) (not e!1576275))))

(assert (=> b!2482962 (= res!1051026 (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!2482962 (= e!1576273 e!1576275)))

(declare-fun b!2482963 () Bool)

(assert (=> b!2482963 (= e!1576275 (= call!152099 (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2482964 () Bool)

(assert (=> b!2482964 (= e!1576276 (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))

(assert (= (and d!713058 c!394697) b!2482960))

(assert (= (and d!713058 (not c!394697)) b!2482951))

(assert (= (and b!2482960 c!394700) b!2482964))

(assert (= (and b!2482960 (not c!394700)) b!2482948))

(assert (= (and b!2482948 c!394698) b!2482956))

(assert (= (and b!2482948 (not c!394698)) b!2482961))

(assert (= (and b!2482951 (not res!1051028)) b!2482950))

(assert (= (and b!2482951 c!394694) b!2482949))

(assert (= (and b!2482951 (not c!394694)) b!2482954))

(assert (= (and b!2482949 c!394696) b!2482955))

(assert (= (and b!2482949 (not c!394696)) b!2482958))

(assert (= (and b!2482955 res!1051027) b!2482947))

(assert (= (and b!2482958 c!394699) b!2482962))

(assert (= (and b!2482958 (not c!394699)) b!2482953))

(assert (= (and b!2482962 res!1051026) b!2482963))

(assert (= (and b!2482953 res!1051029) b!2482957))

(assert (= (or b!2482963 b!2482957) bm!152095))

(assert (= (or b!2482963 b!2482957) bm!152096))

(assert (= (or b!2482947 bm!152095) bm!152094))

(assert (= (or b!2482947 bm!152096) bm!152093))

(assert (= (and d!713058 c!394695) b!2482959))

(assert (= (and d!713058 (not c!394695)) b!2482952))

(declare-fun b_lambda!76159 () Bool)

(assert (=> (not b_lambda!76159) (not b!2482952)))

(assert (=> b!2482952 t!210906))

(declare-fun b_and!188643 () Bool)

(assert (= b_and!188641 (and (=> t!210906 result!173342) b_and!188643)))

(declare-fun b_lambda!76161 () Bool)

(assert (=> (not b_lambda!76161) (not b!2482954)))

(assert (=> b!2482954 t!210906))

(declare-fun b_and!188645 () Bool)

(assert (= b_and!188643 (and (=> t!210906 result!173342) b_and!188645)))

(declare-fun b_lambda!76163 () Bool)

(assert (=> (not b_lambda!76163) (not b!2482961)))

(assert (=> b!2482961 t!210906))

(declare-fun b_and!188647 () Bool)

(assert (= b_and!188645 (and (=> t!210906 result!173342) b_and!188647)))

(assert (=> d!713058 m!2850881))

(declare-fun m!2850883 () Bool)

(assert (=> d!713058 m!2850883))

(assert (=> b!2482954 m!2850765))

(declare-fun m!2850885 () Bool)

(assert (=> b!2482949 m!2850885))

(declare-fun m!2850887 () Bool)

(assert (=> b!2482949 m!2850887))

(declare-fun m!2850889 () Bool)

(assert (=> b!2482949 m!2850889))

(declare-fun m!2850891 () Bool)

(assert (=> b!2482949 m!2850891))

(declare-fun m!2850893 () Bool)

(assert (=> b!2482949 m!2850893))

(declare-fun m!2850895 () Bool)

(assert (=> b!2482949 m!2850895))

(declare-fun m!2850897 () Bool)

(assert (=> b!2482949 m!2850897))

(declare-fun m!2850899 () Bool)

(assert (=> b!2482949 m!2850899))

(assert (=> b!2482949 m!2850889))

(assert (=> b!2482949 m!2850887))

(declare-fun m!2850901 () Bool)

(assert (=> b!2482950 m!2850901))

(assert (=> b!2482961 m!2850765))

(assert (=> b!2482952 m!2850765))

(declare-fun m!2850903 () Bool)

(assert (=> b!2482951 m!2850903))

(declare-fun m!2850905 () Bool)

(assert (=> b!2482951 m!2850905))

(assert (=> b!2482959 m!2850799))

(declare-fun m!2850907 () Bool)

(assert (=> b!2482959 m!2850907))

(assert (=> b!2482959 m!2850907))

(declare-fun m!2850909 () Bool)

(assert (=> b!2482959 m!2850909))

(assert (=> b!2482953 m!2850885))

(assert (=> b!2482957 m!2850893))

(assert (=> bm!152094 m!2850887))

(declare-fun m!2850911 () Bool)

(assert (=> bm!152093 m!2850911))

(assert (=> d!713022 d!713058))

(declare-fun d!713060 () Bool)

(assert (=> d!713060 (= (valid!2587 (v!31501 (underlying!6972 thiss!42540))) (valid!2588 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))

(declare-fun bs!467573 () Bool)

(assert (= bs!467573 d!713060))

(assert (=> bs!467573 m!2850883))

(assert (=> d!713022 d!713060))

(declare-fun bs!467574 () Bool)

(declare-fun d!713062 () Bool)

(assert (= bs!467574 (and d!713062 b!2482729)))

(declare-fun lambda!94132 () Int)

(assert (=> bs!467574 (not (= lambda!94132 lambda!94122))))

(declare-fun bs!467575 () Bool)

(assert (= bs!467575 (and d!713062 b!2482735)))

(declare-fun Unit!42673 () Unit!42663)

(declare-fun Unit!42674 () Unit!42663)

(assert (=> bs!467575 (= (= (hashF!5255 thiss!42540) (hashF!5255 (_2!17004 (ite (_1!17001 lt!889155) (tuple2!28927 Unit!42673 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (bvsub (_size!6812 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3454 thiss!42540))) (tuple2!28927 Unit!42674 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (_size!6812 thiss!42540) (defaultValue!3454 thiss!42540))))))) (= lambda!94132 lambda!94123))))

(declare-fun bs!467576 () Bool)

(assert (= bs!467576 (and d!713062 b!2482869)))

(assert (=> bs!467576 (not (= lambda!94132 lambda!94126))))

(declare-fun bs!467577 () Bool)

(assert (= bs!467577 (and d!713062 b!2482876)))

(assert (=> bs!467577 (not (= lambda!94132 lambda!94129))))

(assert (=> d!713062 true))

(assert (=> d!713062 (= (allKeysSameHashInMap!169 (map!6236 (v!31501 (underlying!6972 thiss!42540))) (hashF!5255 thiss!42540)) (forall!5976 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94132))))

(declare-fun bs!467578 () Bool)

(assert (= bs!467578 d!713062))

(declare-fun m!2850913 () Bool)

(assert (=> bs!467578 m!2850913))

(assert (=> b!2482877 d!713062))

(assert (=> b!2482877 d!713032))

(declare-fun d!713064 () Bool)

(declare-fun res!1051030 () Bool)

(declare-fun e!1576283 () Bool)

(assert (=> d!713064 (=> res!1051030 e!1576283)))

(assert (=> d!713064 (= res!1051030 ((_ is Nil!29141) (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))

(assert (=> d!713064 (= (forall!5976 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94129) e!1576283)))

(declare-fun b!2482967 () Bool)

(declare-fun e!1576284 () Bool)

(assert (=> b!2482967 (= e!1576283 e!1576284)))

(declare-fun res!1051031 () Bool)

(assert (=> b!2482967 (=> (not res!1051031) (not e!1576284))))

(assert (=> b!2482967 (= res!1051031 (dynLambda!12476 lambda!94129 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2482968 () Bool)

(assert (=> b!2482968 (= e!1576284 (forall!5976 (t!210904 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) lambda!94129))))

(assert (= (and d!713064 (not res!1051030)) b!2482967))

(assert (= (and b!2482967 res!1051031) b!2482968))

(declare-fun b_lambda!76165 () Bool)

(assert (=> (not b_lambda!76165) (not b!2482967)))

(declare-fun m!2850915 () Bool)

(assert (=> b!2482967 m!2850915))

(declare-fun m!2850917 () Bool)

(assert (=> b!2482968 m!2850917))

(assert (=> b!2482876 d!713064))

(assert (=> b!2482876 d!713032))

(assert (=> d!713040 d!713060))

(declare-fun d!713066 () Bool)

(declare-fun res!1051032 () Bool)

(declare-fun e!1576285 () Bool)

(assert (=> d!713066 (=> res!1051032 e!1576285)))

(assert (=> d!713066 (= res!1051032 (not ((_ is Cons!29140) (_2!17002 (tuple2!28923 lt!889152 lt!889150)))))))

(assert (=> d!713066 (= (noDuplicateKeys!89 (_2!17002 (tuple2!28923 lt!889152 lt!889150))) e!1576285)))

(declare-fun b!2482969 () Bool)

(declare-fun e!1576286 () Bool)

(assert (=> b!2482969 (= e!1576285 e!1576286)))

(declare-fun res!1051033 () Bool)

(assert (=> b!2482969 (=> (not res!1051033) (not e!1576286))))

(assert (=> b!2482969 (= res!1051033 (not (containsKey!141 (t!210903 (_2!17002 (tuple2!28923 lt!889152 lt!889150))) (_1!17000 (h!34546 (_2!17002 (tuple2!28923 lt!889152 lt!889150)))))))))

(declare-fun b!2482970 () Bool)

(assert (=> b!2482970 (= e!1576286 (noDuplicateKeys!89 (t!210903 (_2!17002 (tuple2!28923 lt!889152 lt!889150)))))))

(assert (= (and d!713066 (not res!1051032)) b!2482969))

(assert (= (and b!2482969 res!1051033) b!2482970))

(declare-fun m!2850919 () Bool)

(assert (=> b!2482969 m!2850919))

(declare-fun m!2850921 () Bool)

(assert (=> b!2482970 m!2850921))

(assert (=> bs!467570 d!713066))

(declare-fun d!713068 () Bool)

(declare-fun noDuplicatedKeys!70 (List!29240) Bool)

(assert (=> d!713068 (= (invariantList!412 (toList!1606 lt!889186)) (noDuplicatedKeys!70 (toList!1606 lt!889186)))))

(declare-fun bs!467579 () Bool)

(assert (= bs!467579 d!713068))

(declare-fun m!2850923 () Bool)

(assert (=> bs!467579 m!2850923))

(assert (=> d!713034 d!713068))

(declare-fun bs!467580 () Bool)

(declare-fun d!713070 () Bool)

(assert (= bs!467580 (and d!713070 b!2482869)))

(declare-fun lambda!94135 () Int)

(assert (=> bs!467580 (= lambda!94135 lambda!94126)))

(declare-fun bs!467581 () Bool)

(assert (= bs!467581 (and d!713070 b!2482735)))

(assert (=> bs!467581 (not (= lambda!94135 lambda!94123))))

(declare-fun bs!467582 () Bool)

(assert (= bs!467582 (and d!713070 b!2482876)))

(assert (=> bs!467582 (= lambda!94135 lambda!94129)))

(declare-fun bs!467583 () Bool)

(assert (= bs!467583 (and d!713070 d!713062)))

(assert (=> bs!467583 (not (= lambda!94135 lambda!94132))))

(declare-fun bs!467584 () Bool)

(assert (= bs!467584 (and d!713070 b!2482729)))

(assert (=> bs!467584 (= lambda!94135 lambda!94122)))

(declare-fun lt!889300 () ListMap!1087)

(assert (=> d!713070 (invariantList!412 (toList!1606 lt!889300))))

(declare-fun e!1576289 () ListMap!1087)

(assert (=> d!713070 (= lt!889300 e!1576289)))

(declare-fun c!394703 () Bool)

(assert (=> d!713070 (= c!394703 ((_ is Cons!29141) (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))

(assert (=> d!713070 (forall!5976 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94135)))

(assert (=> d!713070 (= (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) lt!889300)))

(declare-fun b!2482975 () Bool)

(declare-fun addToMapMapFromBucket!16 (List!29240 ListMap!1087) ListMap!1087)

(assert (=> b!2482975 (= e!1576289 (addToMapMapFromBucket!16 (_2!17002 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) (extractMap!178 (t!210904 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))))

(declare-fun b!2482976 () Bool)

(assert (=> b!2482976 (= e!1576289 (ListMap!1088 Nil!29140))))

(assert (= (and d!713070 c!394703) b!2482975))

(assert (= (and d!713070 (not c!394703)) b!2482976))

(declare-fun m!2850925 () Bool)

(assert (=> d!713070 m!2850925))

(declare-fun m!2850927 () Bool)

(assert (=> d!713070 m!2850927))

(declare-fun m!2850929 () Bool)

(assert (=> b!2482975 m!2850929))

(assert (=> b!2482975 m!2850929))

(declare-fun m!2850931 () Bool)

(assert (=> b!2482975 m!2850931))

(assert (=> d!713034 d!713070))

(assert (=> d!713034 d!713032))

(assert (=> d!713034 d!713040))

(declare-fun d!713072 () Bool)

(assert (=> d!713072 (dynLambda!12476 lambda!94122 (tuple2!28923 lt!889152 lt!889150))))

(assert (=> d!713072 true))

(declare-fun _$7!903 () Unit!42663)

(assert (=> d!713072 (= (choose!14650 (toList!1607 lt!889156) lambda!94122 (tuple2!28923 lt!889152 lt!889150)) _$7!903)))

(declare-fun b_lambda!76167 () Bool)

(assert (=> (not b_lambda!76167) (not d!713072)))

(declare-fun bs!467585 () Bool)

(assert (= bs!467585 d!713072))

(assert (=> bs!467585 m!2850787))

(assert (=> d!713028 d!713072))

(declare-fun d!713074 () Bool)

(declare-fun res!1051034 () Bool)

(declare-fun e!1576290 () Bool)

(assert (=> d!713074 (=> res!1051034 e!1576290)))

(assert (=> d!713074 (= res!1051034 ((_ is Nil!29141) (toList!1607 lt!889156)))))

(assert (=> d!713074 (= (forall!5976 (toList!1607 lt!889156) lambda!94122) e!1576290)))

(declare-fun b!2482977 () Bool)

(declare-fun e!1576291 () Bool)

(assert (=> b!2482977 (= e!1576290 e!1576291)))

(declare-fun res!1051035 () Bool)

(assert (=> b!2482977 (=> (not res!1051035) (not e!1576291))))

(assert (=> b!2482977 (= res!1051035 (dynLambda!12476 lambda!94122 (h!34547 (toList!1607 lt!889156))))))

(declare-fun b!2482978 () Bool)

(assert (=> b!2482978 (= e!1576291 (forall!5976 (t!210904 (toList!1607 lt!889156)) lambda!94122))))

(assert (= (and d!713074 (not res!1051034)) b!2482977))

(assert (= (and b!2482977 res!1051035) b!2482978))

(declare-fun b_lambda!76169 () Bool)

(assert (=> (not b_lambda!76169) (not b!2482977)))

(declare-fun m!2850933 () Bool)

(assert (=> b!2482977 m!2850933))

(declare-fun m!2850935 () Bool)

(assert (=> b!2482978 m!2850935))

(assert (=> d!713028 d!713074))

(declare-fun d!713076 () Bool)

(assert (=> d!713076 (= (apply!6938 (ite c!394673 lt!889249 call!152084) call!152086) (get!8988 (getValueByKey!141 (toList!1607 (ite c!394673 lt!889249 call!152084)) call!152086)))))

(declare-fun bs!467586 () Bool)

(assert (= bs!467586 d!713076))

(declare-fun m!2850937 () Bool)

(assert (=> bs!467586 m!2850937))

(assert (=> bs!467586 m!2850937))

(declare-fun m!2850939 () Bool)

(assert (=> bs!467586 m!2850939))

(assert (=> bm!152080 d!713076))

(declare-fun d!713078 () Bool)

(assert (=> d!713078 (= (map!6236 (_2!17001 lt!889180)) (map!6237 (v!31500 (underlying!6971 (_2!17001 lt!889180)))))))

(declare-fun bs!467587 () Bool)

(assert (= bs!467587 d!713078))

(declare-fun m!2850941 () Bool)

(assert (=> bs!467587 m!2850941))

(assert (=> bm!152065 d!713078))

(assert (=> bm!152079 d!713020))

(declare-fun d!713080 () Bool)

(declare-fun res!1051036 () Bool)

(declare-fun e!1576292 () Bool)

(assert (=> d!713080 (=> res!1051036 e!1576292)))

(assert (=> d!713080 (= res!1051036 (not ((_ is Cons!29140) (t!210903 lt!889157))))))

(assert (=> d!713080 (= (noDuplicateKeys!89 (t!210903 lt!889157)) e!1576292)))

(declare-fun b!2482979 () Bool)

(declare-fun e!1576293 () Bool)

(assert (=> b!2482979 (= e!1576292 e!1576293)))

(declare-fun res!1051037 () Bool)

(assert (=> b!2482979 (=> (not res!1051037) (not e!1576293))))

(assert (=> b!2482979 (= res!1051037 (not (containsKey!141 (t!210903 (t!210903 lt!889157)) (_1!17000 (h!34546 (t!210903 lt!889157))))))))

(declare-fun b!2482980 () Bool)

(assert (=> b!2482980 (= e!1576293 (noDuplicateKeys!89 (t!210903 (t!210903 lt!889157))))))

(assert (= (and d!713080 (not res!1051036)) b!2482979))

(assert (= (and b!2482979 res!1051037) b!2482980))

(declare-fun m!2850943 () Bool)

(assert (=> b!2482979 m!2850943))

(declare-fun m!2850945 () Bool)

(assert (=> b!2482980 m!2850945))

(assert (=> b!2482838 d!713080))

(declare-fun d!713082 () Bool)

(declare-fun res!1051042 () Bool)

(declare-fun e!1576298 () Bool)

(assert (=> d!713082 (=> res!1051042 e!1576298)))

(assert (=> d!713082 (= res!1051042 (and ((_ is Cons!29141) lt!889240) (= (_1!17002 (h!34547 lt!889240)) lt!889246)))))

(assert (=> d!713082 (= (containsKey!142 lt!889240 lt!889246) e!1576298)))

(declare-fun b!2482985 () Bool)

(declare-fun e!1576299 () Bool)

(assert (=> b!2482985 (= e!1576298 e!1576299)))

(declare-fun res!1051043 () Bool)

(assert (=> b!2482985 (=> (not res!1051043) (not e!1576299))))

(assert (=> b!2482985 (= res!1051043 (and (or (not ((_ is Cons!29141) lt!889240)) (bvsle (_1!17002 (h!34547 lt!889240)) lt!889246)) ((_ is Cons!29141) lt!889240) (bvslt (_1!17002 (h!34547 lt!889240)) lt!889246)))))

(declare-fun b!2482986 () Bool)

(assert (=> b!2482986 (= e!1576299 (containsKey!142 (t!210904 lt!889240) lt!889246))))

(assert (= (and d!713082 (not res!1051042)) b!2482985))

(assert (= (and b!2482985 res!1051043) b!2482986))

(declare-fun m!2850947 () Bool)

(assert (=> b!2482986 m!2850947))

(assert (=> b!2482868 d!713082))

(declare-fun d!713084 () Bool)

(assert (=> d!713084 (containsKey!142 lt!889240 lt!889246)))

(declare-fun lt!889303 () Unit!42663)

(declare-fun choose!14652 (List!29241 (_ BitVec 64)) Unit!42663)

(assert (=> d!713084 (= lt!889303 (choose!14652 lt!889240 lt!889246))))

(declare-fun e!1576302 () Bool)

(assert (=> d!713084 e!1576302))

(declare-fun res!1051046 () Bool)

(assert (=> d!713084 (=> (not res!1051046) (not e!1576302))))

(declare-fun isStrictlySorted!10 (List!29241) Bool)

(assert (=> d!713084 (= res!1051046 (isStrictlySorted!10 lt!889240))))

(assert (=> d!713084 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!74 lt!889240 lt!889246) lt!889303)))

(declare-fun b!2482989 () Bool)

(assert (=> b!2482989 (= e!1576302 (isDefined!4579 (getValueByKey!141 lt!889240 lt!889246)))))

(assert (= (and d!713084 res!1051046) b!2482989))

(assert (=> d!713084 m!2850837))

(declare-fun m!2850949 () Bool)

(assert (=> d!713084 m!2850949))

(declare-fun m!2850951 () Bool)

(assert (=> d!713084 m!2850951))

(declare-fun m!2850953 () Bool)

(assert (=> b!2482989 m!2850953))

(assert (=> b!2482989 m!2850953))

(declare-fun m!2850955 () Bool)

(assert (=> b!2482989 m!2850955))

(assert (=> b!2482868 d!713084))

(declare-fun lt!889306 () Bool)

(declare-fun d!713086 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3978 (List!29241) (InoxSet tuple2!28922))

(assert (=> d!713086 (= lt!889306 (select (content!3978 lt!889239) (tuple2!28923 lt!889246 lt!889233)))))

(declare-fun e!1576308 () Bool)

(assert (=> d!713086 (= lt!889306 e!1576308)))

(declare-fun res!1051051 () Bool)

(assert (=> d!713086 (=> (not res!1051051) (not e!1576308))))

(assert (=> d!713086 (= res!1051051 ((_ is Cons!29141) lt!889239))))

(assert (=> d!713086 (= (contains!5137 lt!889239 (tuple2!28923 lt!889246 lt!889233)) lt!889306)))

(declare-fun b!2482994 () Bool)

(declare-fun e!1576307 () Bool)

(assert (=> b!2482994 (= e!1576308 e!1576307)))

(declare-fun res!1051052 () Bool)

(assert (=> b!2482994 (=> res!1051052 e!1576307)))

(assert (=> b!2482994 (= res!1051052 (= (h!34547 lt!889239) (tuple2!28923 lt!889246 lt!889233)))))

(declare-fun b!2482995 () Bool)

(assert (=> b!2482995 (= e!1576307 (contains!5137 (t!210904 lt!889239) (tuple2!28923 lt!889246 lt!889233)))))

(assert (= (and d!713086 res!1051051) b!2482994))

(assert (= (and b!2482994 (not res!1051052)) b!2482995))

(declare-fun m!2850957 () Bool)

(assert (=> d!713086 m!2850957))

(declare-fun m!2850959 () Bool)

(assert (=> d!713086 m!2850959))

(declare-fun m!2850961 () Bool)

(assert (=> b!2482995 m!2850961))

(assert (=> b!2482868 d!713086))

(declare-fun d!713088 () Bool)

(declare-fun isEmpty!16780 (Option!5757) Bool)

(assert (=> d!713088 (= (isDefined!4579 (getValueByKey!141 lt!889231 lt!889246)) (not (isEmpty!16780 (getValueByKey!141 lt!889231 lt!889246))))))

(declare-fun bs!467588 () Bool)

(assert (= bs!467588 d!713088))

(assert (=> bs!467588 m!2850841))

(declare-fun m!2850963 () Bool)

(assert (=> bs!467588 m!2850963))

(assert (=> b!2482868 d!713088))

(assert (=> b!2482868 d!713032))

(declare-fun d!713090 () Bool)

(assert (=> d!713090 (contains!5137 lt!889239 (tuple2!28923 lt!889246 lt!889233))))

(declare-fun lt!889309 () Unit!42663)

(declare-fun choose!14653 (List!29241 (_ BitVec 64) List!29240) Unit!42663)

(assert (=> d!713090 (= lt!889309 (choose!14653 lt!889239 lt!889246 lt!889233))))

(declare-fun e!1576311 () Bool)

(assert (=> d!713090 e!1576311))

(declare-fun res!1051055 () Bool)

(assert (=> d!713090 (=> (not res!1051055) (not e!1576311))))

(assert (=> d!713090 (= res!1051055 (isStrictlySorted!10 lt!889239))))

(assert (=> d!713090 (= (lemmaGetValueByKeyImpliesContainsTuple!78 lt!889239 lt!889246 lt!889233) lt!889309)))

(declare-fun b!2482998 () Bool)

(assert (=> b!2482998 (= e!1576311 (= (getValueByKey!141 lt!889239 lt!889246) (Some!5756 lt!889233)))))

(assert (= (and d!713090 res!1051055) b!2482998))

(assert (=> d!713090 m!2850845))

(declare-fun m!2850965 () Bool)

(assert (=> d!713090 m!2850965))

(declare-fun m!2850967 () Bool)

(assert (=> d!713090 m!2850967))

(declare-fun m!2850969 () Bool)

(assert (=> b!2482998 m!2850969))

(assert (=> b!2482868 d!713090))

(declare-fun d!713092 () Bool)

(declare-fun e!1576312 () Bool)

(assert (=> d!713092 e!1576312))

(declare-fun c!394704 () Bool)

(assert (=> d!713092 (= c!394704 (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))

(declare-fun lt!889310 () List!29240)

(assert (=> d!713092 (= lt!889310 (apply!6937 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889246))))

(assert (=> d!713092 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713092 (= (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) lt!889310)))

(declare-fun b!2482999 () Bool)

(assert (=> b!2482999 (= e!1576312 (= lt!889310 (get!8988 (getValueByKey!141 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lt!889246))))))

(declare-fun b!2483000 () Bool)

(assert (=> b!2483000 (= e!1576312 (= lt!889310 (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889246)))))

(assert (=> b!2483000 ((_ is LongMap!3382) (v!31501 (underlying!6972 thiss!42540)))))

(assert (= (and d!713092 c!394704) b!2482999))

(assert (= (and d!713092 (not c!394704)) b!2483000))

(declare-fun b_lambda!76171 () Bool)

(assert (=> (not b_lambda!76171) (not b!2483000)))

(declare-fun t!210908 () Bool)

(declare-fun tb!140383 () Bool)

(assert (=> (and b!2482732 (= (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) t!210908) tb!140383))

(assert (=> b!2483000 t!210908))

(declare-fun result!173348 () Bool)

(declare-fun b_and!188649 () Bool)

(assert (= b_and!188647 (and (=> t!210908 result!173348) b_and!188649)))

(assert (=> d!713092 m!2850849))

(declare-fun m!2850971 () Bool)

(assert (=> d!713092 m!2850971))

(assert (=> d!713092 m!2850759))

(assert (=> b!2482999 m!2850729))

(declare-fun m!2850973 () Bool)

(assert (=> b!2482999 m!2850973))

(assert (=> b!2482999 m!2850973))

(declare-fun m!2850975 () Bool)

(assert (=> b!2482999 m!2850975))

(declare-fun m!2850977 () Bool)

(assert (=> b!2483000 m!2850977))

(assert (=> b!2482868 d!713092))

(declare-fun b!2483011 () Bool)

(declare-fun e!1576318 () Option!5757)

(assert (=> b!2483011 (= e!1576318 (getValueByKey!141 (t!210904 lt!889231) lt!889246))))

(declare-fun d!713094 () Bool)

(declare-fun c!394709 () Bool)

(assert (=> d!713094 (= c!394709 (and ((_ is Cons!29141) lt!889231) (= (_1!17002 (h!34547 lt!889231)) lt!889246)))))

(declare-fun e!1576317 () Option!5757)

(assert (=> d!713094 (= (getValueByKey!141 lt!889231 lt!889246) e!1576317)))

(declare-fun b!2483012 () Bool)

(assert (=> b!2483012 (= e!1576318 None!5756)))

(declare-fun b!2483010 () Bool)

(assert (=> b!2483010 (= e!1576317 e!1576318)))

(declare-fun c!394710 () Bool)

(assert (=> b!2483010 (= c!394710 (and ((_ is Cons!29141) lt!889231) (not (= (_1!17002 (h!34547 lt!889231)) lt!889246))))))

(declare-fun b!2483009 () Bool)

(assert (=> b!2483009 (= e!1576317 (Some!5756 (_2!17002 (h!34547 lt!889231))))))

(assert (= (and d!713094 c!394709) b!2483009))

(assert (= (and d!713094 (not c!394709)) b!2483010))

(assert (= (and b!2483010 c!394710) b!2483011))

(assert (= (and b!2483010 (not c!394710)) b!2483012))

(declare-fun m!2850979 () Bool)

(assert (=> b!2483011 m!2850979))

(assert (=> b!2482868 d!713094))

(declare-fun d!713096 () Bool)

(assert (=> d!713096 (isDefined!4579 (getValueByKey!141 lt!889231 lt!889246))))

(declare-fun lt!889313 () Unit!42663)

(declare-fun choose!14654 (List!29241 (_ BitVec 64)) Unit!42663)

(assert (=> d!713096 (= lt!889313 (choose!14654 lt!889231 lt!889246))))

(declare-fun e!1576321 () Bool)

(assert (=> d!713096 e!1576321))

(declare-fun res!1051058 () Bool)

(assert (=> d!713096 (=> (not res!1051058) (not e!1576321))))

(assert (=> d!713096 (= res!1051058 (isStrictlySorted!10 lt!889231))))

(assert (=> d!713096 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!98 lt!889231 lt!889246) lt!889313)))

(declare-fun b!2483015 () Bool)

(assert (=> b!2483015 (= e!1576321 (containsKey!142 lt!889231 lt!889246))))

(assert (= (and d!713096 res!1051058) b!2483015))

(assert (=> d!713096 m!2850841))

(assert (=> d!713096 m!2850841))

(assert (=> d!713096 m!2850843))

(declare-fun m!2850981 () Bool)

(assert (=> d!713096 m!2850981))

(declare-fun m!2850983 () Bool)

(assert (=> d!713096 m!2850983))

(declare-fun m!2850985 () Bool)

(assert (=> b!2483015 m!2850985))

(assert (=> b!2482868 d!713096))

(declare-fun d!713098 () Bool)

(declare-fun res!1051059 () Bool)

(declare-fun e!1576322 () Bool)

(assert (=> d!713098 (=> res!1051059 e!1576322)))

(assert (=> d!713098 (= res!1051059 (and ((_ is Cons!29140) (t!210903 lt!889157)) (= (_1!17000 (h!34546 (t!210903 lt!889157))) (_1!17000 (h!34546 lt!889157)))))))

(assert (=> d!713098 (= (containsKey!141 (t!210903 lt!889157) (_1!17000 (h!34546 lt!889157))) e!1576322)))

(declare-fun b!2483016 () Bool)

(declare-fun e!1576323 () Bool)

(assert (=> b!2483016 (= e!1576322 e!1576323)))

(declare-fun res!1051060 () Bool)

(assert (=> b!2483016 (=> (not res!1051060) (not e!1576323))))

(assert (=> b!2483016 (= res!1051060 ((_ is Cons!29140) (t!210903 lt!889157)))))

(declare-fun b!2483017 () Bool)

(assert (=> b!2483017 (= e!1576323 (containsKey!141 (t!210903 (t!210903 lt!889157)) (_1!17000 (h!34546 lt!889157))))))

(assert (= (and d!713098 (not res!1051059)) b!2483016))

(assert (= (and b!2483016 res!1051060) b!2483017))

(declare-fun m!2850987 () Bool)

(assert (=> b!2483017 m!2850987))

(assert (=> b!2482837 d!713098))

(declare-fun d!713100 () Bool)

(declare-fun res!1051061 () Bool)

(declare-fun e!1576324 () Bool)

(assert (=> d!713100 (=> res!1051061 e!1576324)))

(assert (=> d!713100 (= res!1051061 ((_ is Nil!29141) (t!210904 (toList!1607 lt!889156))))))

(assert (=> d!713100 (= (forall!5976 (t!210904 (toList!1607 lt!889156)) lambda!94123) e!1576324)))

(declare-fun b!2483018 () Bool)

(declare-fun e!1576325 () Bool)

(assert (=> b!2483018 (= e!1576324 e!1576325)))

(declare-fun res!1051062 () Bool)

(assert (=> b!2483018 (=> (not res!1051062) (not e!1576325))))

(assert (=> b!2483018 (= res!1051062 (dynLambda!12476 lambda!94123 (h!34547 (t!210904 (toList!1607 lt!889156)))))))

(declare-fun b!2483019 () Bool)

(assert (=> b!2483019 (= e!1576325 (forall!5976 (t!210904 (t!210904 (toList!1607 lt!889156))) lambda!94123))))

(assert (= (and d!713100 (not res!1051061)) b!2483018))

(assert (= (and b!2483018 res!1051062) b!2483019))

(declare-fun b_lambda!76173 () Bool)

(assert (=> (not b_lambda!76173) (not b!2483018)))

(declare-fun m!2850989 () Bool)

(assert (=> b!2483018 m!2850989))

(declare-fun m!2850991 () Bool)

(assert (=> b!2483019 m!2850991))

(assert (=> b!2482784 d!713100))

(declare-fun bs!467589 () Bool)

(declare-fun d!713102 () Bool)

(assert (= bs!467589 (and d!713102 b!2482869)))

(declare-fun lambda!94138 () Int)

(assert (=> bs!467589 (= lambda!94138 lambda!94126)))

(declare-fun bs!467590 () Bool)

(assert (= bs!467590 (and d!713102 b!2482735)))

(assert (=> bs!467590 (not (= lambda!94138 lambda!94123))))

(declare-fun bs!467591 () Bool)

(assert (= bs!467591 (and d!713102 d!713070)))

(assert (=> bs!467591 (= lambda!94138 lambda!94135)))

(declare-fun bs!467592 () Bool)

(assert (= bs!467592 (and d!713102 b!2482876)))

(assert (=> bs!467592 (= lambda!94138 lambda!94129)))

(declare-fun bs!467593 () Bool)

(assert (= bs!467593 (and d!713102 d!713062)))

(assert (=> bs!467593 (not (= lambda!94138 lambda!94132))))

(declare-fun bs!467594 () Bool)

(assert (= bs!467594 (and d!713102 b!2482729)))

(assert (=> bs!467594 (= lambda!94138 lambda!94122)))

(declare-fun e!1576328 () Bool)

(assert (=> d!713102 e!1576328))

(declare-fun res!1051065 () Bool)

(assert (=> d!713102 (=> (not res!1051065) (not e!1576328))))

(assert (=> d!713102 (= res!1051065 (contains!5136 lt!889249 (hash!705 (hashF!5255 thiss!42540) key!2246)))))

(declare-fun lt!889316 () Unit!42663)

(declare-fun choose!14655 (ListLongMap!555 K!5540 Hashable!3292) Unit!42663)

(assert (=> d!713102 (= lt!889316 (choose!14655 lt!889249 key!2246 (hashF!5255 thiss!42540)))))

(assert (=> d!713102 (forall!5976 (toList!1607 lt!889249) lambda!94138)))

(assert (=> d!713102 (= (lemmaInGenericMapThenInLongMap!73 lt!889249 key!2246 (hashF!5255 thiss!42540)) lt!889316)))

(declare-fun b!2483022 () Bool)

(assert (=> b!2483022 (= e!1576328 (isDefined!4580 (getPair!73 (apply!6938 lt!889249 (hash!705 (hashF!5255 thiss!42540) key!2246)) key!2246)))))

(assert (= (and d!713102 res!1051065) b!2483022))

(assert (=> d!713102 m!2850737))

(assert (=> d!713102 m!2850737))

(declare-fun m!2850993 () Bool)

(assert (=> d!713102 m!2850993))

(declare-fun m!2850995 () Bool)

(assert (=> d!713102 m!2850995))

(declare-fun m!2850997 () Bool)

(assert (=> d!713102 m!2850997))

(assert (=> b!2483022 m!2850737))

(assert (=> b!2483022 m!2850737))

(declare-fun m!2850999 () Bool)

(assert (=> b!2483022 m!2850999))

(assert (=> b!2483022 m!2850999))

(declare-fun m!2851001 () Bool)

(assert (=> b!2483022 m!2851001))

(assert (=> b!2483022 m!2851001))

(declare-fun m!2851003 () Bool)

(assert (=> b!2483022 m!2851003))

(assert (=> b!2482867 d!713102))

(declare-fun d!713104 () Bool)

(assert (=> d!713104 true))

(assert (=> d!713104 true))

(declare-fun lambda!94141 () Int)

(declare-fun Unit!42675 () Unit!42663)

(declare-fun Unit!42676 () Unit!42663)

(declare-fun forall!5977 (List!29240 Int) Bool)

(assert (=> d!713104 (= (allKeysSameHash!66 (_2!17002 (h!34547 (toList!1607 lt!889156))) (_1!17002 (h!34547 (toList!1607 lt!889156))) (hashF!5255 (_2!17004 (ite (_1!17001 lt!889155) (tuple2!28927 Unit!42675 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (bvsub (_size!6812 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3454 thiss!42540))) (tuple2!28927 Unit!42676 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (_size!6812 thiss!42540) (defaultValue!3454 thiss!42540))))))) (forall!5977 (_2!17002 (h!34547 (toList!1607 lt!889156))) lambda!94141))))

(declare-fun bs!467595 () Bool)

(assert (= bs!467595 d!713104))

(declare-fun m!2851005 () Bool)

(assert (=> bs!467595 m!2851005))

(assert (=> bs!467571 d!713104))

(assert (=> bm!152066 d!713032))

(declare-fun d!713106 () Bool)

(declare-fun lt!889317 () Bool)

(assert (=> d!713106 (= lt!889317 (contains!5136 (map!6236 (v!31501 (underlying!6972 thiss!42540))) lt!889246))))

(assert (=> d!713106 (= lt!889317 (contains!5139 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))) lt!889246))))

(assert (=> d!713106 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713106 (= (contains!5135 (v!31501 (underlying!6972 thiss!42540)) lt!889246) lt!889317)))

(declare-fun bs!467596 () Bool)

(assert (= bs!467596 d!713106))

(assert (=> bs!467596 m!2850729))

(assert (=> bs!467596 m!2850729))

(declare-fun m!2851007 () Bool)

(assert (=> bs!467596 m!2851007))

(declare-fun m!2851009 () Bool)

(assert (=> bs!467596 m!2851009))

(assert (=> bs!467596 m!2850759))

(assert (=> d!713038 d!713106))

(assert (=> d!713038 d!713040))

(assert (=> d!713038 d!713020))

(assert (=> d!713038 d!713034))

(assert (=> d!713038 d!713070))

(declare-fun b!2483045 () Bool)

(declare-fun e!1576346 () Unit!42663)

(declare-fun Unit!42677 () Unit!42663)

(assert (=> b!2483045 (= e!1576346 Unit!42677)))

(declare-fun b!2483046 () Bool)

(declare-fun e!1576344 () Bool)

(declare-fun e!1576345 () Bool)

(assert (=> b!2483046 (= e!1576344 e!1576345)))

(declare-fun res!1051074 () Bool)

(assert (=> b!2483046 (=> (not res!1051074) (not e!1576345))))

(declare-datatypes ((Option!5759 0))(
  ( (None!5758) (Some!5758 (v!31514 V!5742)) )
))
(declare-fun isDefined!4581 (Option!5759) Bool)

(declare-fun getValueByKey!142 (List!29240 K!5540) Option!5759)

(assert (=> b!2483046 (= res!1051074 (isDefined!4581 (getValueByKey!142 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246)))))

(declare-fun b!2483047 () Bool)

(declare-datatypes ((List!29242 0))(
  ( (Nil!29142) (Cons!29142 (h!34549 K!5540) (t!210909 List!29242)) )
))
(declare-fun e!1576343 () List!29242)

(declare-fun keys!9334 (ListMap!1087) List!29242)

(assert (=> b!2483047 (= e!1576343 (keys!9334 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2483048 () Bool)

(declare-fun e!1576341 () Unit!42663)

(assert (=> b!2483048 (= e!1576341 e!1576346)))

(declare-fun c!394719 () Bool)

(declare-fun call!152104 () Bool)

(assert (=> b!2483048 (= c!394719 call!152104)))

(declare-fun bm!152099 () Bool)

(declare-fun contains!5140 (List!29242 K!5540) Bool)

(assert (=> bm!152099 (= call!152104 (contains!5140 e!1576343 key!2246))))

(declare-fun c!394718 () Bool)

(declare-fun c!394717 () Bool)

(assert (=> bm!152099 (= c!394718 c!394717)))

(declare-fun b!2483049 () Bool)

(declare-fun e!1576342 () Bool)

(assert (=> b!2483049 (= e!1576342 (not (contains!5140 (keys!9334 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246)))))

(declare-fun b!2483050 () Bool)

(declare-fun lt!889335 () Unit!42663)

(assert (=> b!2483050 (= e!1576341 lt!889335)))

(declare-fun lt!889339 () Unit!42663)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!99 (List!29240 K!5540) Unit!42663)

(assert (=> b!2483050 (= lt!889339 (lemmaContainsKeyImpliesGetValueByKeyDefined!99 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(assert (=> b!2483050 (isDefined!4581 (getValueByKey!142 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(declare-fun lt!889334 () Unit!42663)

(assert (=> b!2483050 (= lt!889334 lt!889339)))

(declare-fun lemmaInListThenGetKeysListContains!15 (List!29240 K!5540) Unit!42663)

(assert (=> b!2483050 (= lt!889335 (lemmaInListThenGetKeysListContains!15 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(assert (=> b!2483050 call!152104))

(declare-fun b!2483051 () Bool)

(declare-fun getKeysList!18 (List!29240) List!29242)

(assert (=> b!2483051 (= e!1576343 (getKeysList!18 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))))

(declare-fun b!2483052 () Bool)

(assert (=> b!2483052 false))

(declare-fun lt!889336 () Unit!42663)

(declare-fun lt!889340 () Unit!42663)

(assert (=> b!2483052 (= lt!889336 lt!889340)))

(declare-fun containsKey!143 (List!29240 K!5540) Bool)

(assert (=> b!2483052 (containsKey!143 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!15 (List!29240 K!5540) Unit!42663)

(assert (=> b!2483052 (= lt!889340 (lemmaInGetKeysListThenContainsKey!15 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(declare-fun Unit!42678 () Unit!42663)

(assert (=> b!2483052 (= e!1576346 Unit!42678)))

(declare-fun b!2483053 () Bool)

(assert (=> b!2483053 (= e!1576345 (contains!5140 (keys!9334 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(declare-fun d!713108 () Bool)

(assert (=> d!713108 e!1576344))

(declare-fun res!1051072 () Bool)

(assert (=> d!713108 (=> res!1051072 e!1576344)))

(assert (=> d!713108 (= res!1051072 e!1576342)))

(declare-fun res!1051073 () Bool)

(assert (=> d!713108 (=> (not res!1051073) (not e!1576342))))

(declare-fun lt!889341 () Bool)

(assert (=> d!713108 (= res!1051073 (not lt!889341))))

(declare-fun lt!889338 () Bool)

(assert (=> d!713108 (= lt!889341 lt!889338)))

(declare-fun lt!889337 () Unit!42663)

(assert (=> d!713108 (= lt!889337 e!1576341)))

(assert (=> d!713108 (= c!394717 lt!889338)))

(assert (=> d!713108 (= lt!889338 (containsKey!143 (toList!1606 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) key!2246))))

(assert (=> d!713108 (= (contains!5138 (extractMap!178 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) key!2246) lt!889341)))

(assert (= (and d!713108 c!394717) b!2483050))

(assert (= (and d!713108 (not c!394717)) b!2483048))

(assert (= (and b!2483048 c!394719) b!2483052))

(assert (= (and b!2483048 (not c!394719)) b!2483045))

(assert (= (or b!2483050 b!2483048) bm!152099))

(assert (= (and bm!152099 c!394718) b!2483051))

(assert (= (and bm!152099 (not c!394718)) b!2483047))

(assert (= (and d!713108 res!1051073) b!2483049))

(assert (= (and d!713108 (not res!1051072)) b!2483046))

(assert (= (and b!2483046 res!1051074) b!2483053))

(declare-fun m!2851011 () Bool)

(assert (=> b!2483052 m!2851011))

(declare-fun m!2851013 () Bool)

(assert (=> b!2483052 m!2851013))

(assert (=> b!2483047 m!2850803))

(declare-fun m!2851015 () Bool)

(assert (=> b!2483047 m!2851015))

(assert (=> d!713108 m!2851011))

(declare-fun m!2851017 () Bool)

(assert (=> b!2483051 m!2851017))

(assert (=> b!2483053 m!2850803))

(assert (=> b!2483053 m!2851015))

(assert (=> b!2483053 m!2851015))

(declare-fun m!2851019 () Bool)

(assert (=> b!2483053 m!2851019))

(declare-fun m!2851021 () Bool)

(assert (=> b!2483046 m!2851021))

(assert (=> b!2483046 m!2851021))

(declare-fun m!2851023 () Bool)

(assert (=> b!2483046 m!2851023))

(assert (=> b!2483049 m!2850803))

(assert (=> b!2483049 m!2851015))

(assert (=> b!2483049 m!2851015))

(assert (=> b!2483049 m!2851019))

(declare-fun m!2851025 () Bool)

(assert (=> bm!152099 m!2851025))

(declare-fun m!2851027 () Bool)

(assert (=> b!2483050 m!2851027))

(assert (=> b!2483050 m!2851021))

(assert (=> b!2483050 m!2851021))

(assert (=> b!2483050 m!2851023))

(declare-fun m!2851029 () Bool)

(assert (=> b!2483050 m!2851029))

(assert (=> d!713038 d!713108))

(declare-fun b!2483054 () Bool)

(declare-fun e!1576352 () Unit!42663)

(declare-fun Unit!42679 () Unit!42663)

(assert (=> b!2483054 (= e!1576352 Unit!42679)))

(declare-fun b!2483055 () Bool)

(declare-fun e!1576350 () Bool)

(declare-fun e!1576351 () Bool)

(assert (=> b!2483055 (= e!1576350 e!1576351)))

(declare-fun res!1051077 () Bool)

(assert (=> b!2483055 (=> (not res!1051077) (not e!1576351))))

(assert (=> b!2483055 (= res!1051077 (isDefined!4581 (getValueByKey!142 (toList!1606 (map!6235 thiss!42540)) key!2246)))))

(declare-fun b!2483056 () Bool)

(declare-fun e!1576349 () List!29242)

(assert (=> b!2483056 (= e!1576349 (keys!9334 (map!6235 thiss!42540)))))

(declare-fun b!2483057 () Bool)

(declare-fun e!1576347 () Unit!42663)

(assert (=> b!2483057 (= e!1576347 e!1576352)))

(declare-fun c!394722 () Bool)

(declare-fun call!152105 () Bool)

(assert (=> b!2483057 (= c!394722 call!152105)))

(declare-fun bm!152100 () Bool)

(assert (=> bm!152100 (= call!152105 (contains!5140 e!1576349 key!2246))))

(declare-fun c!394721 () Bool)

(declare-fun c!394720 () Bool)

(assert (=> bm!152100 (= c!394721 c!394720)))

(declare-fun b!2483058 () Bool)

(declare-fun e!1576348 () Bool)

(assert (=> b!2483058 (= e!1576348 (not (contains!5140 (keys!9334 (map!6235 thiss!42540)) key!2246)))))

(declare-fun b!2483059 () Bool)

(declare-fun lt!889343 () Unit!42663)

(assert (=> b!2483059 (= e!1576347 lt!889343)))

(declare-fun lt!889347 () Unit!42663)

(assert (=> b!2483059 (= lt!889347 (lemmaContainsKeyImpliesGetValueByKeyDefined!99 (toList!1606 (map!6235 thiss!42540)) key!2246))))

(assert (=> b!2483059 (isDefined!4581 (getValueByKey!142 (toList!1606 (map!6235 thiss!42540)) key!2246))))

(declare-fun lt!889342 () Unit!42663)

(assert (=> b!2483059 (= lt!889342 lt!889347)))

(assert (=> b!2483059 (= lt!889343 (lemmaInListThenGetKeysListContains!15 (toList!1606 (map!6235 thiss!42540)) key!2246))))

(assert (=> b!2483059 call!152105))

(declare-fun b!2483060 () Bool)

(assert (=> b!2483060 (= e!1576349 (getKeysList!18 (toList!1606 (map!6235 thiss!42540))))))

(declare-fun b!2483061 () Bool)

(assert (=> b!2483061 false))

(declare-fun lt!889344 () Unit!42663)

(declare-fun lt!889348 () Unit!42663)

(assert (=> b!2483061 (= lt!889344 lt!889348)))

(assert (=> b!2483061 (containsKey!143 (toList!1606 (map!6235 thiss!42540)) key!2246)))

(assert (=> b!2483061 (= lt!889348 (lemmaInGetKeysListThenContainsKey!15 (toList!1606 (map!6235 thiss!42540)) key!2246))))

(declare-fun Unit!42680 () Unit!42663)

(assert (=> b!2483061 (= e!1576352 Unit!42680)))

(declare-fun b!2483062 () Bool)

(assert (=> b!2483062 (= e!1576351 (contains!5140 (keys!9334 (map!6235 thiss!42540)) key!2246))))

(declare-fun d!713110 () Bool)

(assert (=> d!713110 e!1576350))

(declare-fun res!1051075 () Bool)

(assert (=> d!713110 (=> res!1051075 e!1576350)))

(assert (=> d!713110 (= res!1051075 e!1576348)))

(declare-fun res!1051076 () Bool)

(assert (=> d!713110 (=> (not res!1051076) (not e!1576348))))

(declare-fun lt!889349 () Bool)

(assert (=> d!713110 (= res!1051076 (not lt!889349))))

(declare-fun lt!889346 () Bool)

(assert (=> d!713110 (= lt!889349 lt!889346)))

(declare-fun lt!889345 () Unit!42663)

(assert (=> d!713110 (= lt!889345 e!1576347)))

(assert (=> d!713110 (= c!394720 lt!889346)))

(assert (=> d!713110 (= lt!889346 (containsKey!143 (toList!1606 (map!6235 thiss!42540)) key!2246))))

(assert (=> d!713110 (= (contains!5138 (map!6235 thiss!42540) key!2246) lt!889349)))

(assert (= (and d!713110 c!394720) b!2483059))

(assert (= (and d!713110 (not c!394720)) b!2483057))

(assert (= (and b!2483057 c!394722) b!2483061))

(assert (= (and b!2483057 (not c!394722)) b!2483054))

(assert (= (or b!2483059 b!2483057) bm!152100))

(assert (= (and bm!152100 c!394721) b!2483060))

(assert (= (and bm!152100 (not c!394721)) b!2483056))

(assert (= (and d!713110 res!1051076) b!2483058))

(assert (= (and d!713110 (not res!1051075)) b!2483055))

(assert (= (and b!2483055 res!1051077) b!2483062))

(declare-fun m!2851031 () Bool)

(assert (=> b!2483061 m!2851031))

(declare-fun m!2851033 () Bool)

(assert (=> b!2483061 m!2851033))

(assert (=> b!2483056 m!2850735))

(declare-fun m!2851035 () Bool)

(assert (=> b!2483056 m!2851035))

(assert (=> d!713110 m!2851031))

(declare-fun m!2851037 () Bool)

(assert (=> b!2483060 m!2851037))

(assert (=> b!2483062 m!2850735))

(assert (=> b!2483062 m!2851035))

(assert (=> b!2483062 m!2851035))

(declare-fun m!2851039 () Bool)

(assert (=> b!2483062 m!2851039))

(declare-fun m!2851041 () Bool)

(assert (=> b!2483055 m!2851041))

(assert (=> b!2483055 m!2851041))

(declare-fun m!2851043 () Bool)

(assert (=> b!2483055 m!2851043))

(assert (=> b!2483058 m!2850735))

(assert (=> b!2483058 m!2851035))

(assert (=> b!2483058 m!2851035))

(assert (=> b!2483058 m!2851039))

(declare-fun m!2851045 () Bool)

(assert (=> bm!152100 m!2851045))

(declare-fun m!2851047 () Bool)

(assert (=> b!2483059 m!2851047))

(assert (=> b!2483059 m!2851041))

(assert (=> b!2483059 m!2851041))

(assert (=> b!2483059 m!2851043))

(declare-fun m!2851049 () Bool)

(assert (=> b!2483059 m!2851049))

(assert (=> d!713038 d!713110))

(assert (=> d!713038 d!713032))

(assert (=> bm!152083 d!713032))

(declare-fun d!713112 () Bool)

(declare-fun e!1576353 () Bool)

(assert (=> d!713112 e!1576353))

(declare-fun res!1051078 () Bool)

(assert (=> d!713112 (=> res!1051078 e!1576353)))

(declare-fun lt!889350 () Bool)

(assert (=> d!713112 (= res!1051078 (not lt!889350))))

(declare-fun lt!889352 () Bool)

(assert (=> d!713112 (= lt!889350 lt!889352)))

(declare-fun lt!889353 () Unit!42663)

(declare-fun e!1576354 () Unit!42663)

(assert (=> d!713112 (= lt!889353 e!1576354)))

(declare-fun c!394723 () Bool)

(assert (=> d!713112 (= c!394723 lt!889352)))

(assert (=> d!713112 (= lt!889352 (containsKey!142 (toList!1607 (ite c!394673 lt!889249 call!152084)) call!152086))))

(assert (=> d!713112 (= (contains!5136 (ite c!394673 lt!889249 call!152084) call!152086) lt!889350)))

(declare-fun b!2483063 () Bool)

(declare-fun lt!889351 () Unit!42663)

(assert (=> b!2483063 (= e!1576354 lt!889351)))

(assert (=> b!2483063 (= lt!889351 (lemmaContainsKeyImpliesGetValueByKeyDefined!98 (toList!1607 (ite c!394673 lt!889249 call!152084)) call!152086))))

(assert (=> b!2483063 (isDefined!4579 (getValueByKey!141 (toList!1607 (ite c!394673 lt!889249 call!152084)) call!152086))))

(declare-fun b!2483064 () Bool)

(declare-fun Unit!42681 () Unit!42663)

(assert (=> b!2483064 (= e!1576354 Unit!42681)))

(declare-fun b!2483065 () Bool)

(assert (=> b!2483065 (= e!1576353 (isDefined!4579 (getValueByKey!141 (toList!1607 (ite c!394673 lt!889249 call!152084)) call!152086)))))

(assert (= (and d!713112 c!394723) b!2483063))

(assert (= (and d!713112 (not c!394723)) b!2483064))

(assert (= (and d!713112 (not res!1051078)) b!2483065))

(declare-fun m!2851051 () Bool)

(assert (=> d!713112 m!2851051))

(declare-fun m!2851053 () Bool)

(assert (=> b!2483063 m!2851053))

(assert (=> b!2483063 m!2850937))

(assert (=> b!2483063 m!2850937))

(declare-fun m!2851055 () Bool)

(assert (=> b!2483063 m!2851055))

(assert (=> b!2483065 m!2850937))

(assert (=> b!2483065 m!2850937))

(assert (=> b!2483065 m!2851055))

(assert (=> bm!152082 d!713112))

(declare-fun d!713114 () Bool)

(declare-fun isEmpty!16781 (Option!5758) Bool)

(assert (=> d!713114 (= (isDefined!4580 call!152089) (not (isEmpty!16781 call!152089)))))

(declare-fun bs!467597 () Bool)

(assert (= bs!467597 d!713114))

(declare-fun m!2851057 () Bool)

(assert (=> bs!467597 m!2851057))

(assert (=> bm!152081 d!713114))

(declare-fun b!2483082 () Bool)

(declare-fun e!1576368 () Option!5758)

(assert (=> b!2483082 (= e!1576368 (getPair!73 (t!210903 call!152087) key!2246))))

(declare-fun b!2483083 () Bool)

(declare-fun e!1576366 () Bool)

(assert (=> b!2483083 (= e!1576366 (not (containsKey!141 call!152087 key!2246)))))

(declare-fun b!2483084 () Bool)

(declare-fun res!1051087 () Bool)

(declare-fun e!1576365 () Bool)

(assert (=> b!2483084 (=> (not res!1051087) (not e!1576365))))

(declare-fun lt!889356 () Option!5758)

(declare-fun get!8989 (Option!5758) tuple2!28918)

(assert (=> b!2483084 (= res!1051087 (= (_1!17000 (get!8989 lt!889356)) key!2246))))

(declare-fun b!2483085 () Bool)

(assert (=> b!2483085 (= e!1576368 None!5757)))

(declare-fun b!2483086 () Bool)

(declare-fun e!1576367 () Option!5758)

(assert (=> b!2483086 (= e!1576367 (Some!5757 (h!34546 call!152087)))))

(declare-fun d!713116 () Bool)

(declare-fun e!1576369 () Bool)

(assert (=> d!713116 e!1576369))

(declare-fun res!1051089 () Bool)

(assert (=> d!713116 (=> res!1051089 e!1576369)))

(assert (=> d!713116 (= res!1051089 e!1576366)))

(declare-fun res!1051090 () Bool)

(assert (=> d!713116 (=> (not res!1051090) (not e!1576366))))

(assert (=> d!713116 (= res!1051090 (isEmpty!16781 lt!889356))))

(assert (=> d!713116 (= lt!889356 e!1576367)))

(declare-fun c!394728 () Bool)

(assert (=> d!713116 (= c!394728 (and ((_ is Cons!29140) call!152087) (= (_1!17000 (h!34546 call!152087)) key!2246)))))

(assert (=> d!713116 (noDuplicateKeys!89 call!152087)))

(assert (=> d!713116 (= (getPair!73 call!152087 key!2246) lt!889356)))

(declare-fun b!2483087 () Bool)

(assert (=> b!2483087 (= e!1576367 e!1576368)))

(declare-fun c!394729 () Bool)

(assert (=> b!2483087 (= c!394729 ((_ is Cons!29140) call!152087))))

(declare-fun b!2483088 () Bool)

(declare-fun contains!5141 (List!29240 tuple2!28918) Bool)

(assert (=> b!2483088 (= e!1576365 (contains!5141 call!152087 (get!8989 lt!889356)))))

(declare-fun b!2483089 () Bool)

(assert (=> b!2483089 (= e!1576369 e!1576365)))

(declare-fun res!1051088 () Bool)

(assert (=> b!2483089 (=> (not res!1051088) (not e!1576365))))

(assert (=> b!2483089 (= res!1051088 (isDefined!4580 lt!889356))))

(assert (= (and d!713116 c!394728) b!2483086))

(assert (= (and d!713116 (not c!394728)) b!2483087))

(assert (= (and b!2483087 c!394729) b!2483082))

(assert (= (and b!2483087 (not c!394729)) b!2483085))

(assert (= (and d!713116 res!1051090) b!2483083))

(assert (= (and d!713116 (not res!1051089)) b!2483089))

(assert (= (and b!2483089 res!1051088) b!2483084))

(assert (= (and b!2483084 res!1051087) b!2483088))

(declare-fun m!2851059 () Bool)

(assert (=> b!2483083 m!2851059))

(declare-fun m!2851061 () Bool)

(assert (=> b!2483088 m!2851061))

(assert (=> b!2483088 m!2851061))

(declare-fun m!2851063 () Bool)

(assert (=> b!2483088 m!2851063))

(declare-fun m!2851065 () Bool)

(assert (=> b!2483082 m!2851065))

(assert (=> b!2483084 m!2851061))

(declare-fun m!2851067 () Bool)

(assert (=> b!2483089 m!2851067))

(declare-fun m!2851069 () Bool)

(assert (=> d!713116 m!2851069))

(declare-fun m!2851071 () Bool)

(assert (=> d!713116 m!2851071))

(assert (=> bm!152084 d!713116))

(declare-fun d!713118 () Bool)

(declare-fun res!1051091 () Bool)

(declare-fun e!1576370 () Bool)

(assert (=> d!713118 (=> res!1051091 e!1576370)))

(assert (=> d!713118 (= res!1051091 (not ((_ is Cons!29140) (removePairForKey!81 lt!889150 key!2246))))))

(assert (=> d!713118 (= (noDuplicateKeys!89 (removePairForKey!81 lt!889150 key!2246)) e!1576370)))

(declare-fun b!2483090 () Bool)

(declare-fun e!1576371 () Bool)

(assert (=> b!2483090 (= e!1576370 e!1576371)))

(declare-fun res!1051092 () Bool)

(assert (=> b!2483090 (=> (not res!1051092) (not e!1576371))))

(assert (=> b!2483090 (= res!1051092 (not (containsKey!141 (t!210903 (removePairForKey!81 lt!889150 key!2246)) (_1!17000 (h!34546 (removePairForKey!81 lt!889150 key!2246))))))))

(declare-fun b!2483091 () Bool)

(assert (=> b!2483091 (= e!1576371 (noDuplicateKeys!89 (t!210903 (removePairForKey!81 lt!889150 key!2246))))))

(assert (= (and d!713118 (not res!1051091)) b!2483090))

(assert (= (and b!2483090 res!1051092) b!2483091))

(declare-fun m!2851073 () Bool)

(assert (=> b!2483090 m!2851073))

(declare-fun m!2851075 () Bool)

(assert (=> b!2483091 m!2851075))

(assert (=> d!713036 d!713118))

(assert (=> d!713036 d!713024))

(declare-fun d!713120 () Bool)

(assert (=> d!713120 (noDuplicateKeys!89 (removePairForKey!81 lt!889150 key!2246))))

(assert (=> d!713120 true))

(declare-fun _$23!145 () Unit!42663)

(assert (=> d!713120 (= (choose!14651 lt!889150 key!2246) _$23!145)))

(declare-fun bs!467598 () Bool)

(assert (= bs!467598 d!713120))

(assert (=> bs!467598 m!2850731))

(assert (=> bs!467598 m!2850731))

(assert (=> bs!467598 m!2850805))

(assert (=> d!713036 d!713120))

(assert (=> d!713036 d!713054))

(declare-fun b!2483095 () Bool)

(declare-fun e!1576373 () List!29240)

(assert (=> b!2483095 (= e!1576373 Nil!29140)))

(declare-fun b!2483092 () Bool)

(declare-fun e!1576372 () List!29240)

(assert (=> b!2483092 (= e!1576372 (t!210903 (t!210903 lt!889150)))))

(declare-fun b!2483094 () Bool)

(assert (=> b!2483094 (= e!1576373 (Cons!29140 (h!34546 (t!210903 lt!889150)) (removePairForKey!81 (t!210903 (t!210903 lt!889150)) key!2246)))))

(declare-fun b!2483093 () Bool)

(assert (=> b!2483093 (= e!1576372 e!1576373)))

(declare-fun c!394731 () Bool)

(assert (=> b!2483093 (= c!394731 ((_ is Cons!29140) (t!210903 lt!889150)))))

(declare-fun d!713122 () Bool)

(declare-fun lt!889357 () List!29240)

(assert (=> d!713122 (not (containsKey!141 lt!889357 key!2246))))

(assert (=> d!713122 (= lt!889357 e!1576372)))

(declare-fun c!394730 () Bool)

(assert (=> d!713122 (= c!394730 (and ((_ is Cons!29140) (t!210903 lt!889150)) (= (_1!17000 (h!34546 (t!210903 lt!889150))) key!2246)))))

(assert (=> d!713122 (noDuplicateKeys!89 (t!210903 lt!889150))))

(assert (=> d!713122 (= (removePairForKey!81 (t!210903 lt!889150) key!2246) lt!889357)))

(assert (= (and d!713122 c!394730) b!2483092))

(assert (= (and d!713122 (not c!394730)) b!2483093))

(assert (= (and b!2483093 c!394731) b!2483094))

(assert (= (and b!2483093 (not c!394731)) b!2483095))

(declare-fun m!2851077 () Bool)

(assert (=> b!2483094 m!2851077))

(declare-fun m!2851079 () Bool)

(assert (=> d!713122 m!2851079))

(assert (=> d!713122 m!2850877))

(assert (=> b!2482801 d!713122))

(declare-fun d!713124 () Bool)

(assert (=> d!713124 (dynLambda!12476 lambda!94126 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)))))

(declare-fun lt!889358 () Unit!42663)

(assert (=> d!713124 (= lt!889358 (choose!14650 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94126 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(declare-fun e!1576374 () Bool)

(assert (=> d!713124 e!1576374))

(declare-fun res!1051093 () Bool)

(assert (=> d!713124 (=> (not res!1051093) (not e!1576374))))

(assert (=> d!713124 (= res!1051093 (forall!5976 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94126))))

(assert (=> d!713124 (= (forallContained!870 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lambda!94126 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))) lt!889358)))

(declare-fun b!2483096 () Bool)

(assert (=> b!2483096 (= e!1576374 (contains!5137 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(assert (= (and d!713124 res!1051093) b!2483096))

(declare-fun b_lambda!76175 () Bool)

(assert (=> (not b_lambda!76175) (not d!713124)))

(declare-fun m!2851081 () Bool)

(assert (=> d!713124 m!2851081))

(declare-fun m!2851083 () Bool)

(assert (=> d!713124 m!2851083))

(declare-fun m!2851085 () Bool)

(assert (=> d!713124 m!2851085))

(assert (=> b!2483096 m!2850813))

(assert (=> b!2482869 d!713124))

(assert (=> b!2482869 d!713032))

(assert (=> b!2482869 d!713092))

(declare-fun d!713126 () Bool)

(declare-fun lt!889359 () Bool)

(assert (=> d!713126 (= lt!889359 (select (content!3978 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(declare-fun e!1576376 () Bool)

(assert (=> d!713126 (= lt!889359 e!1576376)))

(declare-fun res!1051094 () Bool)

(assert (=> d!713126 (=> (not res!1051094) (not e!1576376))))

(assert (=> d!713126 (= res!1051094 ((_ is Cons!29141) (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))

(assert (=> d!713126 (= (contains!5137 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))) lt!889359)))

(declare-fun b!2483097 () Bool)

(declare-fun e!1576375 () Bool)

(assert (=> b!2483097 (= e!1576376 e!1576375)))

(declare-fun res!1051095 () Bool)

(assert (=> b!2483097 (=> res!1051095 e!1576375)))

(assert (=> b!2483097 (= res!1051095 (= (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(declare-fun b!2483098 () Bool)

(assert (=> b!2483098 (= e!1576375 (contains!5137 (t!210904 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(assert (= (and d!713126 res!1051094) b!2483097))

(assert (= (and b!2483097 (not res!1051095)) b!2483098))

(declare-fun m!2851087 () Bool)

(assert (=> d!713126 m!2851087))

(declare-fun m!2851089 () Bool)

(assert (=> d!713126 m!2851089))

(declare-fun m!2851091 () Bool)

(assert (=> b!2483098 m!2851091))

(assert (=> b!2482869 d!713126))

(declare-fun d!713128 () Bool)

(declare-fun choose!14656 (Hashable!3292 K!5540) (_ BitVec 64))

(assert (=> d!713128 (= (hash!706 (hashF!5255 thiss!42540) key!2246) (choose!14656 (hashF!5255 thiss!42540) key!2246))))

(declare-fun bs!467599 () Bool)

(assert (= bs!467599 d!713128))

(declare-fun m!2851093 () Bool)

(assert (=> bs!467599 m!2851093))

(assert (=> d!713020 d!713128))

(declare-fun d!713130 () Bool)

(assert (=> d!713130 (= (isDefined!4580 (getPair!73 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) key!2246)) (not (isEmpty!16781 (getPair!73 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) key!2246))))))

(declare-fun bs!467600 () Bool)

(assert (= bs!467600 d!713130))

(assert (=> bs!467600 m!2850819))

(declare-fun m!2851095 () Bool)

(assert (=> bs!467600 m!2851095))

(assert (=> b!2482871 d!713130))

(declare-fun b!2483099 () Bool)

(declare-fun e!1576380 () Option!5758)

(assert (=> b!2483099 (= e!1576380 (getPair!73 (t!210903 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)) key!2246))))

(declare-fun b!2483100 () Bool)

(declare-fun e!1576378 () Bool)

(assert (=> b!2483100 (= e!1576378 (not (containsKey!141 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) key!2246)))))

(declare-fun b!2483101 () Bool)

(declare-fun res!1051096 () Bool)

(declare-fun e!1576377 () Bool)

(assert (=> b!2483101 (=> (not res!1051096) (not e!1576377))))

(declare-fun lt!889360 () Option!5758)

(assert (=> b!2483101 (= res!1051096 (= (_1!17000 (get!8989 lt!889360)) key!2246))))

(declare-fun b!2483102 () Bool)

(assert (=> b!2483102 (= e!1576380 None!5757)))

(declare-fun b!2483103 () Bool)

(declare-fun e!1576379 () Option!5758)

(assert (=> b!2483103 (= e!1576379 (Some!5757 (h!34546 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))))

(declare-fun d!713132 () Bool)

(declare-fun e!1576381 () Bool)

(assert (=> d!713132 e!1576381))

(declare-fun res!1051098 () Bool)

(assert (=> d!713132 (=> res!1051098 e!1576381)))

(assert (=> d!713132 (= res!1051098 e!1576378)))

(declare-fun res!1051099 () Bool)

(assert (=> d!713132 (=> (not res!1051099) (not e!1576378))))

(assert (=> d!713132 (= res!1051099 (isEmpty!16781 lt!889360))))

(assert (=> d!713132 (= lt!889360 e!1576379)))

(declare-fun c!394732 () Bool)

(assert (=> d!713132 (= c!394732 (and ((_ is Cons!29140) (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)) (= (_1!17000 (h!34546 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))) key!2246)))))

(assert (=> d!713132 (noDuplicateKeys!89 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))))

(assert (=> d!713132 (= (getPair!73 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) key!2246) lt!889360)))

(declare-fun b!2483104 () Bool)

(assert (=> b!2483104 (= e!1576379 e!1576380)))

(declare-fun c!394733 () Bool)

(assert (=> b!2483104 (= c!394733 ((_ is Cons!29140) (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)))))

(declare-fun b!2483105 () Bool)

(assert (=> b!2483105 (= e!1576377 (contains!5141 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246) (get!8989 lt!889360)))))

(declare-fun b!2483106 () Bool)

(assert (=> b!2483106 (= e!1576381 e!1576377)))

(declare-fun res!1051097 () Bool)

(assert (=> b!2483106 (=> (not res!1051097) (not e!1576377))))

(assert (=> b!2483106 (= res!1051097 (isDefined!4580 lt!889360))))

(assert (= (and d!713132 c!394732) b!2483103))

(assert (= (and d!713132 (not c!394732)) b!2483104))

(assert (= (and b!2483104 c!394733) b!2483099))

(assert (= (and b!2483104 (not c!394733)) b!2483102))

(assert (= (and d!713132 res!1051099) b!2483100))

(assert (= (and d!713132 (not res!1051098)) b!2483106))

(assert (= (and b!2483106 res!1051097) b!2483101))

(assert (= (and b!2483101 res!1051096) b!2483105))

(assert (=> b!2483100 m!2850809))

(declare-fun m!2851097 () Bool)

(assert (=> b!2483100 m!2851097))

(declare-fun m!2851099 () Bool)

(assert (=> b!2483105 m!2851099))

(assert (=> b!2483105 m!2850809))

(assert (=> b!2483105 m!2851099))

(declare-fun m!2851101 () Bool)

(assert (=> b!2483105 m!2851101))

(declare-fun m!2851103 () Bool)

(assert (=> b!2483099 m!2851103))

(assert (=> b!2483101 m!2851099))

(declare-fun m!2851105 () Bool)

(assert (=> b!2483106 m!2851105))

(declare-fun m!2851107 () Bool)

(assert (=> d!713132 m!2851107))

(assert (=> d!713132 m!2850809))

(declare-fun m!2851109 () Bool)

(assert (=> d!713132 m!2851109))

(assert (=> b!2482871 d!713132))

(assert (=> b!2482871 d!713092))

(declare-fun d!713134 () Bool)

(assert (=> d!713134 (= (map!6237 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_values!3662 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun bs!467601 () Bool)

(assert (= bs!467601 d!713134))

(assert (=> bs!467601 m!2850887))

(assert (=> d!713032 d!713134))

(declare-fun d!713136 () Bool)

(declare-fun e!1576384 () Bool)

(assert (=> d!713136 e!1576384))

(declare-fun res!1051105 () Bool)

(assert (=> d!713136 (=> (not res!1051105) (not e!1576384))))

(declare-fun lt!889370 () ListLongMap!555)

(assert (=> d!713136 (= res!1051105 (contains!5136 lt!889370 (_1!17002 (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun lt!889371 () List!29241)

(assert (=> d!713136 (= lt!889370 (ListLongMap!556 lt!889371))))

(declare-fun lt!889372 () Unit!42663)

(declare-fun lt!889369 () Unit!42663)

(assert (=> d!713136 (= lt!889372 lt!889369)))

(assert (=> d!713136 (= (getValueByKey!141 lt!889371 (_1!17002 (tuple2!28923 lt!889152 lt!889157))) (Some!5756 (_2!17002 (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun lemmaContainsTupThenGetReturnValue!20 (List!29241 (_ BitVec 64) List!29240) Unit!42663)

(assert (=> d!713136 (= lt!889369 (lemmaContainsTupThenGetReturnValue!20 lt!889371 (_1!17002 (tuple2!28923 lt!889152 lt!889157)) (_2!17002 (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun insertStrictlySorted!14 (List!29241 (_ BitVec 64) List!29240) List!29241)

(assert (=> d!713136 (= lt!889371 (insertStrictlySorted!14 (toList!1607 call!152071) (_1!17002 (tuple2!28923 lt!889152 lt!889157)) (_2!17002 (tuple2!28923 lt!889152 lt!889157))))))

(assert (=> d!713136 (= (+!87 call!152071 (tuple2!28923 lt!889152 lt!889157)) lt!889370)))

(declare-fun b!2483111 () Bool)

(declare-fun res!1051104 () Bool)

(assert (=> b!2483111 (=> (not res!1051104) (not e!1576384))))

(assert (=> b!2483111 (= res!1051104 (= (getValueByKey!141 (toList!1607 lt!889370) (_1!17002 (tuple2!28923 lt!889152 lt!889157))) (Some!5756 (_2!17002 (tuple2!28923 lt!889152 lt!889157)))))))

(declare-fun b!2483112 () Bool)

(assert (=> b!2483112 (= e!1576384 (contains!5137 (toList!1607 lt!889370) (tuple2!28923 lt!889152 lt!889157)))))

(assert (= (and d!713136 res!1051105) b!2483111))

(assert (= (and b!2483111 res!1051104) b!2483112))

(declare-fun m!2851111 () Bool)

(assert (=> d!713136 m!2851111))

(declare-fun m!2851113 () Bool)

(assert (=> d!713136 m!2851113))

(declare-fun m!2851115 () Bool)

(assert (=> d!713136 m!2851115))

(declare-fun m!2851117 () Bool)

(assert (=> d!713136 m!2851117))

(declare-fun m!2851119 () Bool)

(assert (=> b!2483111 m!2851119))

(declare-fun m!2851121 () Bool)

(assert (=> b!2483112 m!2851121))

(assert (=> b!2482822 d!713136))

(declare-fun d!713138 () Bool)

(declare-fun lt!889373 () Bool)

(assert (=> d!713138 (= lt!889373 (select (content!3978 (toList!1607 lt!889156)) (tuple2!28923 lt!889152 lt!889150)))))

(declare-fun e!1576386 () Bool)

(assert (=> d!713138 (= lt!889373 e!1576386)))

(declare-fun res!1051106 () Bool)

(assert (=> d!713138 (=> (not res!1051106) (not e!1576386))))

(assert (=> d!713138 (= res!1051106 ((_ is Cons!29141) (toList!1607 lt!889156)))))

(assert (=> d!713138 (= (contains!5137 (toList!1607 lt!889156) (tuple2!28923 lt!889152 lt!889150)) lt!889373)))

(declare-fun b!2483113 () Bool)

(declare-fun e!1576385 () Bool)

(assert (=> b!2483113 (= e!1576386 e!1576385)))

(declare-fun res!1051107 () Bool)

(assert (=> b!2483113 (=> res!1051107 e!1576385)))

(assert (=> b!2483113 (= res!1051107 (= (h!34547 (toList!1607 lt!889156)) (tuple2!28923 lt!889152 lt!889150)))))

(declare-fun b!2483114 () Bool)

(assert (=> b!2483114 (= e!1576385 (contains!5137 (t!210904 (toList!1607 lt!889156)) (tuple2!28923 lt!889152 lt!889150)))))

(assert (= (and d!713138 res!1051106) b!2483113))

(assert (= (and b!2483113 (not res!1051107)) b!2483114))

(declare-fun m!2851123 () Bool)

(assert (=> d!713138 m!2851123))

(declare-fun m!2851125 () Bool)

(assert (=> d!713138 m!2851125))

(declare-fun m!2851127 () Bool)

(assert (=> b!2483114 m!2851127))

(assert (=> b!2482832 d!713138))

(declare-fun e!1576431 () Bool)

(declare-fun b!2483199 () Bool)

(declare-fun lt!889432 () SeekEntryResult!11)

(assert (=> b!2483199 (= e!1576431 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889432)) lt!889152))))

(declare-fun b!2483200 () Bool)

(declare-fun e!1576441 () ListLongMap!555)

(declare-fun call!152162 () ListLongMap!555)

(declare-fun c!394767 () Bool)

(declare-fun call!152165 () ListLongMap!555)

(assert (=> b!2483200 (= e!1576441 (ite c!394767 call!152162 call!152165))))

(declare-fun bm!152149 () Bool)

(declare-fun call!152175 () ListLongMap!555)

(declare-fun call!152166 () ListLongMap!555)

(assert (=> bm!152149 (= call!152175 call!152166)))

(declare-fun b!2483201 () Bool)

(declare-fun e!1576450 () tuple2!28924)

(declare-fun lt!889436 () tuple2!28924)

(assert (=> b!2483201 (= e!1576450 (tuple2!28925 (_1!17003 lt!889436) (_2!17003 lt!889436)))))

(declare-fun call!152157 () tuple2!28924)

(assert (=> b!2483201 (= lt!889436 call!152157)))

(declare-fun bm!152150 () Bool)

(declare-fun call!152171 () Bool)

(declare-fun call!152161 () Bool)

(assert (=> bm!152150 (= call!152171 call!152161)))

(declare-fun bm!152151 () Bool)

(assert (=> bm!152151 (= call!152162 call!152166)))

(declare-fun b!2483202 () Bool)

(declare-fun e!1576440 () Bool)

(assert (=> b!2483202 (= e!1576440 (not call!152171))))

(declare-fun b!2483203 () Bool)

(declare-fun res!1051149 () Bool)

(declare-fun lt!889444 () SeekEntryResult!11)

(assert (=> b!2483203 (= res!1051149 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1197 lt!889444)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!1576434 () Bool)

(assert (=> b!2483203 (=> (not res!1051149) (not e!1576434))))

(declare-fun bm!152152 () Bool)

(declare-fun call!152154 () ListLongMap!555)

(declare-fun lt!889437 () tuple2!28924)

(assert (=> bm!152152 (= call!152154 (map!6237 (_2!17003 lt!889437)))))

(declare-fun bm!152153 () Bool)

(declare-fun c!394762 () Bool)

(declare-fun call!152170 () ListLongMap!555)

(assert (=> bm!152153 (= call!152170 (+!87 e!1576441 (ite c!394762 (ite c!394767 (tuple2!28923 #b0000000000000000000000000000000000000000000000000000000000000000 lt!889157) (tuple2!28923 #b1000000000000000000000000000000000000000000000000000000000000000 lt!889157)) (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun c!394765 () Bool)

(assert (=> bm!152153 (= c!394765 c!394762)))

(declare-fun d!713140 () Bool)

(declare-fun e!1576437 () Bool)

(assert (=> d!713140 e!1576437))

(declare-fun res!1051138 () Bool)

(assert (=> d!713140 (=> (not res!1051138) (not e!1576437))))

(assert (=> d!713140 (= res!1051138 (valid!2588 (_2!17003 lt!889437)))))

(declare-fun e!1576442 () tuple2!28924)

(assert (=> d!713140 (= lt!889437 e!1576442)))

(assert (=> d!713140 (= c!394762 (= lt!889152 (bvneg lt!889152)))))

(assert (=> d!713140 (valid!2588 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))

(assert (=> d!713140 (= (update!199 (v!31500 (underlying!6971 (_2!17001 lt!889179))) lt!889152 lt!889157) lt!889437)))

(declare-fun bm!152154 () Bool)

(declare-fun call!152172 () ListLongMap!555)

(assert (=> bm!152154 (= call!152172 (map!6237 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))

(declare-fun b!2483204 () Bool)

(declare-fun e!1576436 () tuple2!28924)

(assert (=> b!2483204 (= e!1576442 e!1576436)))

(assert (=> b!2483204 (= c!394767 (= lt!889152 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!152155 () Bool)

(declare-fun call!152158 () Bool)

(declare-fun call!152173 () Bool)

(assert (=> bm!152155 (= call!152158 call!152173)))

(declare-fun bm!152156 () Bool)

(declare-fun call!152156 () ListLongMap!555)

(assert (=> bm!152156 (= call!152165 call!152156)))

(declare-fun e!1576446 () Bool)

(declare-fun b!2483205 () Bool)

(declare-fun lt!889442 () SeekEntryResult!11)

(assert (=> b!2483205 (= e!1576446 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889442)) lt!889152))))

(declare-fun bm!152157 () Bool)

(declare-fun call!152160 () SeekEntryResult!11)

(declare-fun call!152169 () SeekEntryResult!11)

(assert (=> bm!152157 (= call!152160 call!152169)))

(declare-fun bm!152158 () Bool)

(declare-fun call!152164 () SeekEntryResult!11)

(assert (=> bm!152158 (= call!152164 call!152169)))

(declare-fun b!2483206 () Bool)

(declare-fun lt!889439 () Unit!42663)

(declare-fun lt!889440 () Unit!42663)

(assert (=> b!2483206 (= lt!889439 lt!889440)))

(declare-fun call!152176 () Bool)

(assert (=> b!2483206 call!152176))

(declare-fun lt!889429 () array!11997)

(declare-fun lt!889430 () SeekEntryResult!11)

(assert (=> b!2483206 (= lt!889440 (lemmaValidKeyInArrayIsInListMap!5 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889429 (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (index!1195 lt!889430) (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(assert (=> b!2483206 (= lt!889429 (array!11998 (store (arr!5354 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889430) lt!889157) (size!22773 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))))

(declare-fun lt!889449 () Unit!42663)

(declare-fun lt!889447 () Unit!42663)

(assert (=> b!2483206 (= lt!889449 lt!889447)))

(assert (=> b!2483206 (= call!152170 call!152175)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!3 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 32) (_ BitVec 64) List!29240 Int) Unit!42663)

(assert (=> b!2483206 (= lt!889447 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!3 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (index!1195 lt!889430) lt!889152 lt!889157 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun lt!889428 () Unit!42663)

(declare-fun e!1576439 () Unit!42663)

(assert (=> b!2483206 (= lt!889428 e!1576439)))

(declare-fun c!394771 () Bool)

(assert (=> b!2483206 (= c!394771 (contains!5136 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) lt!889152))))

(declare-fun e!1576449 () tuple2!28924)

(assert (=> b!2483206 (= e!1576449 (tuple2!28925 true (LongMapFixedSize!6765 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_size!6811 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (array!11998 (store (arr!5354 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889430) lt!889157) (size!22773 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))) (_vacant!3443 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))))

(declare-fun b!2483207 () Bool)

(declare-fun e!1576433 () Unit!42663)

(declare-fun lt!889438 () Unit!42663)

(assert (=> b!2483207 (= e!1576433 lt!889438)))

(declare-fun call!152168 () Unit!42663)

(assert (=> b!2483207 (= lt!889438 call!152168)))

(assert (=> b!2483207 (= lt!889444 call!152160)))

(declare-fun c!394773 () Bool)

(assert (=> b!2483207 (= c!394773 ((_ is MissingZero!11) lt!889444))))

(declare-fun e!1576443 () Bool)

(assert (=> b!2483207 e!1576443))

(declare-fun b!2483208 () Bool)

(declare-fun e!1576444 () Bool)

(assert (=> b!2483208 (= e!1576444 e!1576434)))

(declare-fun res!1051142 () Bool)

(declare-fun call!152155 () Bool)

(assert (=> b!2483208 (= res!1051142 call!152155)))

(assert (=> b!2483208 (=> (not res!1051142) (not e!1576434))))

(declare-fun b!2483209 () Bool)

(declare-fun c!394775 () Bool)

(assert (=> b!2483209 (= c!394775 ((_ is MissingVacant!11) lt!889444))))

(assert (=> b!2483209 (= e!1576443 e!1576444)))

(declare-fun bm!152159 () Bool)

(declare-fun call!152163 () Unit!42663)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!3 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 64) Int) Unit!42663)

(assert (=> bm!152159 (= call!152163 (lemmaInListMapThenSeekEntryOrOpenFindsIt!3 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889152 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483210 () Bool)

(declare-fun e!1576447 () Bool)

(declare-fun e!1576452 () Bool)

(assert (=> b!2483210 (= e!1576447 e!1576452)))

(declare-fun res!1051145 () Bool)

(assert (=> b!2483210 (= res!1051145 call!152158)))

(assert (=> b!2483210 (=> (not res!1051145) (not e!1576452))))

(declare-fun b!2483211 () Bool)

(declare-fun res!1051139 () Bool)

(declare-fun call!152177 () Bool)

(assert (=> b!2483211 (= res!1051139 call!152177)))

(assert (=> b!2483211 (=> (not res!1051139) (not e!1576431))))

(declare-fun bm!152160 () Bool)

(declare-fun call!152159 () Bool)

(assert (=> bm!152160 (= call!152173 call!152159)))

(declare-fun b!2483212 () Bool)

(declare-fun e!1576445 () Bool)

(assert (=> b!2483212 (= e!1576445 (= call!152154 call!152172))))

(declare-fun b!2483213 () Bool)

(declare-fun e!1576438 () ListLongMap!555)

(assert (=> b!2483213 (= e!1576438 call!152156)))

(declare-fun b!2483214 () Bool)

(declare-fun res!1051148 () Bool)

(assert (=> b!2483214 (= res!1051148 call!152173)))

(assert (=> b!2483214 (=> (not res!1051148) (not e!1576446))))

(declare-fun bm!152161 () Bool)

(declare-fun c!394763 () Bool)

(declare-fun c!394766 () Bool)

(assert (=> bm!152161 (= c!394763 c!394766)))

(assert (=> bm!152161 (= call!152176 (contains!5136 e!1576438 (ite c!394766 lt!889152 (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889430)))))))

(declare-fun b!2483215 () Bool)

(declare-fun lt!889443 () tuple2!28924)

(assert (=> b!2483215 (= lt!889443 call!152157)))

(assert (=> b!2483215 (= e!1576449 (tuple2!28925 (_1!17003 lt!889443) (_2!17003 lt!889443)))))

(declare-fun b!2483216 () Bool)

(declare-fun c!394768 () Bool)

(declare-fun lt!889450 () SeekEntryResult!11)

(assert (=> b!2483216 (= c!394768 ((_ is MissingVacant!11) lt!889450))))

(declare-fun e!1576435 () Bool)

(assert (=> b!2483216 (= e!1576435 e!1576447)))

(declare-fun b!2483217 () Bool)

(assert (=> b!2483217 (= e!1576441 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483218 () Bool)

(declare-fun lt!889451 () Unit!42663)

(assert (=> b!2483218 (= e!1576439 lt!889451)))

(assert (=> b!2483218 (= lt!889451 call!152163)))

(assert (=> b!2483218 (= lt!889442 call!152164)))

(declare-fun res!1051141 () Bool)

(assert (=> b!2483218 (= res!1051141 ((_ is Found!11) lt!889442))))

(assert (=> b!2483218 (=> (not res!1051141) (not e!1576446))))

(assert (=> b!2483218 e!1576446))

(declare-fun b!2483219 () Bool)

(assert (=> b!2483219 (= e!1576437 e!1576445)))

(declare-fun c!394770 () Bool)

(assert (=> b!2483219 (= c!394770 (_1!17003 lt!889437))))

(declare-fun b!2483220 () Bool)

(declare-fun lt!889445 () Unit!42663)

(declare-fun lt!889434 () Unit!42663)

(assert (=> b!2483220 (= lt!889445 lt!889434)))

(declare-fun call!152174 () ListLongMap!555)

(assert (=> b!2483220 (= call!152174 call!152165)))

(declare-fun lt!889454 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!3 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 List!29240 Int) Unit!42663)

(assert (=> b!2483220 (= lt!889434 (lemmaChangeZeroKeyThenAddPairToListMap!3 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889454 (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889157 (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(assert (=> b!2483220 (= lt!889454 (bvor (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000001))))

(assert (=> b!2483220 (= e!1576436 (tuple2!28925 true (LongMapFixedSize!6765 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (bvor (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000001) lt!889157 (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_size!6811 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_vacant!3443 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))))

(declare-fun b!2483221 () Bool)

(assert (=> b!2483221 (= e!1576438 call!152175)))

(declare-fun c!394772 () Bool)

(declare-fun c!394774 () Bool)

(declare-fun bm!152162 () Bool)

(assert (=> bm!152162 (= call!152159 (inRange!0 (ite c!394766 (ite c!394774 (index!1195 lt!889432) (ite c!394773 (index!1196 lt!889444) (index!1197 lt!889444))) (ite c!394771 (index!1195 lt!889442) (ite c!394772 (index!1196 lt!889450) (index!1197 lt!889450)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483222 () Bool)

(declare-fun res!1051144 () Bool)

(assert (=> b!2483222 (=> (not res!1051144) (not e!1576440))))

(assert (=> b!2483222 (= res!1051144 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1196 lt!889450)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!2483223 () Bool)

(declare-fun res!1051140 () Bool)

(assert (=> b!2483223 (= res!1051140 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1197 lt!889450)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!2483223 (=> (not res!1051140) (not e!1576452))))

(declare-fun lt!889431 () (_ BitVec 32))

(declare-fun bm!152163 () Bool)

(assert (=> bm!152163 (= call!152166 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (ite (or c!394762 c!394766) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (array!11998 (store (arr!5354 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1195 lt!889430) lt!889157) (size!22773 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (ite c!394762 (ite c!394767 (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889431) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (ite c!394762 (ite c!394767 (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889157) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun bm!152164 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!3 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 (_ BitVec 64) Int) Unit!42663)

(assert (=> bm!152164 (= call!152168 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!3 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889152 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483224 () Bool)

(declare-fun e!1576451 () tuple2!28924)

(assert (=> b!2483224 (= e!1576442 e!1576451)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11999 (_ BitVec 32)) SeekEntryResult!11)

(assert (=> b!2483224 (= lt!889430 (seekEntryOrOpen!0 lt!889152 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(assert (=> b!2483224 (= c!394766 ((_ is Undefined!11) lt!889430))))

(declare-fun bm!152165 () Bool)

(assert (=> bm!152165 (= call!152177 call!152159)))

(declare-fun bm!152166 () Bool)

(assert (=> bm!152166 (= call!152169 (seekEntryOrOpen!0 lt!889152 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483225 () Bool)

(declare-fun Unit!42682 () Unit!42663)

(assert (=> b!2483225 (= e!1576433 Unit!42682)))

(declare-fun lt!889448 () Unit!42663)

(assert (=> b!2483225 (= lt!889448 call!152163)))

(assert (=> b!2483225 (= lt!889432 call!152160)))

(declare-fun res!1051136 () Bool)

(assert (=> b!2483225 (= res!1051136 ((_ is Found!11) lt!889432))))

(assert (=> b!2483225 (=> (not res!1051136) (not e!1576431))))

(assert (=> b!2483225 e!1576431))

(declare-fun lt!889433 () Unit!42663)

(assert (=> b!2483225 (= lt!889433 lt!889448)))

(assert (=> b!2483225 false))

(declare-fun bm!152167 () Bool)

(assert (=> bm!152167 (= call!152156 (getCurrentListMap!13 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (ite c!394762 (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889429) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (ite (and c!394762 c!394767) lt!889454 (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (ite (and c!394762 c!394767) lt!889157 (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000000 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(declare-fun b!2483226 () Bool)

(declare-fun call!152167 () Bool)

(assert (=> b!2483226 (= e!1576434 (not call!152167))))

(declare-fun b!2483227 () Bool)

(declare-fun lt!889446 () Unit!42663)

(assert (=> b!2483227 (= lt!889446 e!1576433)))

(assert (=> b!2483227 (= c!394774 call!152176)))

(assert (=> b!2483227 (= e!1576451 (tuple2!28925 false (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))

(declare-fun b!2483228 () Bool)

(declare-fun res!1051146 () Bool)

(declare-fun e!1576432 () Bool)

(assert (=> b!2483228 (=> (not res!1051146) (not e!1576432))))

(assert (=> b!2483228 (= res!1051146 call!152155)))

(assert (=> b!2483228 (= e!1576443 e!1576432)))

(declare-fun b!2483229 () Bool)

(declare-fun e!1576448 () Bool)

(assert (=> b!2483229 (= e!1576445 e!1576448)))

(declare-fun res!1051143 () Bool)

(assert (=> b!2483229 (= res!1051143 (contains!5136 call!152154 lt!889152))))

(assert (=> b!2483229 (=> (not res!1051143) (not e!1576448))))

(declare-fun b!2483230 () Bool)

(declare-fun c!394769 () Bool)

(assert (=> b!2483230 (= c!394769 ((_ is MissingVacant!11) lt!889430))))

(assert (=> b!2483230 (= e!1576451 e!1576450)))

(declare-fun bm!152168 () Bool)

(assert (=> bm!152168 (= call!152167 call!152161)))

(declare-fun bm!152169 () Bool)

(assert (=> bm!152169 (= call!152161 (arrayContainsKey!0 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889152 #b00000000000000000000000000000000))))

(declare-fun b!2483231 () Bool)

(assert (=> b!2483231 (= e!1576452 (not call!152171))))

(declare-fun b!2483232 () Bool)

(declare-fun res!1051147 () Bool)

(assert (=> b!2483232 (=> (not res!1051147) (not e!1576432))))

(assert (=> b!2483232 (= res!1051147 (= (select (arr!5355 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179))))) (index!1196 lt!889444)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!2483233 () Bool)

(declare-fun res!1051137 () Bool)

(assert (=> b!2483233 (=> (not res!1051137) (not e!1576440))))

(assert (=> b!2483233 (= res!1051137 call!152158)))

(assert (=> b!2483233 (= e!1576435 e!1576440)))

(declare-fun b!2483234 () Bool)

(assert (=> b!2483234 (= e!1576448 (= call!152154 (+!87 call!152172 (tuple2!28923 lt!889152 lt!889157))))))

(declare-fun bm!152170 () Bool)

(assert (=> bm!152170 (= call!152174 call!152170)))

(declare-fun b!2483235 () Bool)

(declare-fun lt!889452 () Unit!42663)

(declare-fun lt!889441 () Unit!42663)

(assert (=> b!2483235 (= lt!889452 lt!889441)))

(assert (=> b!2483235 (= call!152174 call!152162)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!3 (array!11999 array!11997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!29240 List!29240 List!29240 Int) Unit!42663)

(assert (=> b!2483235 (= lt!889441 (lemmaChangeLongMinValueKeyThenAddPairToListMap!3 (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889431 (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (minValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889157 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179))))))))

(assert (=> b!2483235 (= lt!889431 (bvor (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000010))))

(assert (=> b!2483235 (= e!1576436 (tuple2!28925 true (LongMapFixedSize!6765 (defaultEntry!3756 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (mask!8562 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (bvor (extraKeys!3630 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) #b00000000000000000000000000000010) (zeroValue!3640 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) lt!889157 (_size!6811 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_keys!3679 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_values!3662 (v!31500 (underlying!6971 (_2!17001 lt!889179)))) (_vacant!3443 (v!31500 (underlying!6971 (_2!17001 lt!889179)))))))))

(declare-fun b!2483236 () Bool)

(assert (=> b!2483236 (= e!1576432 (not call!152167))))

(declare-fun bm!152171 () Bool)

(declare-fun updateHelperNewKey!3 (LongMapFixedSize!6764 (_ BitVec 64) List!29240 (_ BitVec 32)) tuple2!28924)

(assert (=> bm!152171 (= call!152157 (updateHelperNewKey!3 (v!31500 (underlying!6971 (_2!17001 lt!889179))) lt!889152 lt!889157 (ite c!394769 (index!1197 lt!889430) (index!1196 lt!889430))))))

(declare-fun b!2483237 () Bool)

(assert (=> b!2483237 (= e!1576447 ((_ is Undefined!11) lt!889450))))

(declare-fun b!2483238 () Bool)

(assert (=> b!2483238 (= e!1576444 ((_ is Undefined!11) lt!889444))))

(declare-fun b!2483239 () Bool)

(declare-fun Unit!42683 () Unit!42663)

(assert (=> b!2483239 (= e!1576439 Unit!42683)))

(declare-fun lt!889435 () Unit!42663)

(assert (=> b!2483239 (= lt!889435 call!152168)))

(assert (=> b!2483239 (= lt!889450 call!152164)))

(assert (=> b!2483239 (= c!394772 ((_ is MissingZero!11) lt!889450))))

(assert (=> b!2483239 e!1576435))

(declare-fun lt!889453 () Unit!42663)

(assert (=> b!2483239 (= lt!889453 lt!889435)))

(assert (=> b!2483239 false))

(declare-fun bm!152172 () Bool)

(assert (=> bm!152172 (= call!152155 call!152177)))

(declare-fun b!2483240 () Bool)

(assert (=> b!2483240 (= e!1576450 e!1576449)))

(declare-fun c!394764 () Bool)

(assert (=> b!2483240 (= c!394764 ((_ is MissingZero!11) lt!889430))))

(assert (= (and d!713140 c!394762) b!2483204))

(assert (= (and d!713140 (not c!394762)) b!2483224))

(assert (= (and b!2483204 c!394767) b!2483220))

(assert (= (and b!2483204 (not c!394767)) b!2483235))

(assert (= (or b!2483220 b!2483235) bm!152151))

(assert (= (or b!2483220 b!2483235) bm!152156))

(assert (= (or b!2483220 b!2483235) bm!152170))

(assert (= (and b!2483224 c!394766) b!2483227))

(assert (= (and b!2483224 (not c!394766)) b!2483230))

(assert (= (and b!2483227 c!394774) b!2483225))

(assert (= (and b!2483227 (not c!394774)) b!2483207))

(assert (= (and b!2483225 res!1051136) b!2483211))

(assert (= (and b!2483211 res!1051139) b!2483199))

(assert (= (and b!2483207 c!394773) b!2483228))

(assert (= (and b!2483207 (not c!394773)) b!2483209))

(assert (= (and b!2483228 res!1051146) b!2483232))

(assert (= (and b!2483232 res!1051147) b!2483236))

(assert (= (and b!2483209 c!394775) b!2483208))

(assert (= (and b!2483209 (not c!394775)) b!2483238))

(assert (= (and b!2483208 res!1051142) b!2483203))

(assert (= (and b!2483203 res!1051149) b!2483226))

(assert (= (or b!2483236 b!2483226) bm!152168))

(assert (= (or b!2483228 b!2483208) bm!152172))

(assert (= (or b!2483211 bm!152172) bm!152165))

(assert (= (or b!2483225 b!2483207) bm!152157))

(assert (= (and b!2483230 c!394769) b!2483201))

(assert (= (and b!2483230 (not c!394769)) b!2483240))

(assert (= (and b!2483240 c!394764) b!2483215))

(assert (= (and b!2483240 (not c!394764)) b!2483206))

(assert (= (and b!2483206 c!394771) b!2483218))

(assert (= (and b!2483206 (not c!394771)) b!2483239))

(assert (= (and b!2483218 res!1051141) b!2483214))

(assert (= (and b!2483214 res!1051148) b!2483205))

(assert (= (and b!2483239 c!394772) b!2483233))

(assert (= (and b!2483239 (not c!394772)) b!2483216))

(assert (= (and b!2483233 res!1051137) b!2483222))

(assert (= (and b!2483222 res!1051144) b!2483202))

(assert (= (and b!2483216 c!394768) b!2483210))

(assert (= (and b!2483216 (not c!394768)) b!2483237))

(assert (= (and b!2483210 res!1051145) b!2483223))

(assert (= (and b!2483223 res!1051140) b!2483231))

(assert (= (or b!2483202 b!2483231) bm!152150))

(assert (= (or b!2483233 b!2483210) bm!152155))

(assert (= (or b!2483214 bm!152155) bm!152160))

(assert (= (or b!2483218 b!2483239) bm!152158))

(assert (= (or b!2483201 b!2483215) bm!152171))

(assert (= (or bm!152168 bm!152150) bm!152169))

(assert (= (or bm!152165 bm!152160) bm!152162))

(assert (= (or bm!152157 bm!152158) bm!152166))

(assert (= (or b!2483225 b!2483218) bm!152159))

(assert (= (or b!2483207 b!2483239) bm!152164))

(assert (= (or b!2483227 b!2483206) bm!152149))

(assert (= (or b!2483227 b!2483206) bm!152161))

(assert (= (and bm!152161 c!394763) b!2483221))

(assert (= (and bm!152161 (not c!394763)) b!2483213))

(assert (= (or bm!152156 b!2483213) bm!152167))

(assert (= (or bm!152151 bm!152149) bm!152163))

(assert (= (or bm!152170 b!2483206) bm!152153))

(assert (= (and bm!152153 c!394765) b!2483200))

(assert (= (and bm!152153 (not c!394765)) b!2483217))

(assert (= (and d!713140 res!1051138) b!2483219))

(assert (= (and b!2483219 c!394770) b!2483229))

(assert (= (and b!2483219 (not c!394770)) b!2483212))

(assert (= (and b!2483229 res!1051143) b!2483234))

(assert (= (or b!2483234 b!2483212) bm!152154))

(assert (= (or b!2483229 b!2483234 b!2483212) bm!152152))

(declare-fun m!2851129 () Bool)

(assert (=> b!2483235 m!2851129))

(declare-fun m!2851131 () Bool)

(assert (=> b!2483205 m!2851131))

(declare-fun m!2851133 () Bool)

(assert (=> b!2483222 m!2851133))

(declare-fun m!2851135 () Bool)

(assert (=> b!2483234 m!2851135))

(declare-fun m!2851137 () Bool)

(assert (=> bm!152159 m!2851137))

(declare-fun m!2851139 () Bool)

(assert (=> bm!152153 m!2851139))

(declare-fun m!2851141 () Bool)

(assert (=> bm!152152 m!2851141))

(declare-fun m!2851143 () Bool)

(assert (=> bm!152166 m!2851143))

(declare-fun m!2851145 () Bool)

(assert (=> d!713140 m!2851145))

(declare-fun m!2851147 () Bool)

(assert (=> d!713140 m!2851147))

(declare-fun m!2851149 () Bool)

(assert (=> bm!152154 m!2851149))

(declare-fun m!2851151 () Bool)

(assert (=> bm!152167 m!2851151))

(declare-fun m!2851153 () Bool)

(assert (=> bm!152162 m!2851153))

(declare-fun m!2851155 () Bool)

(assert (=> b!2483206 m!2851155))

(declare-fun m!2851157 () Bool)

(assert (=> b!2483206 m!2851157))

(declare-fun m!2851159 () Bool)

(assert (=> b!2483206 m!2851159))

(assert (=> b!2483206 m!2851155))

(declare-fun m!2851161 () Bool)

(assert (=> b!2483206 m!2851161))

(declare-fun m!2851163 () Bool)

(assert (=> b!2483206 m!2851163))

(declare-fun m!2851165 () Bool)

(assert (=> b!2483203 m!2851165))

(declare-fun m!2851167 () Bool)

(assert (=> b!2483229 m!2851167))

(assert (=> b!2483224 m!2851143))

(declare-fun m!2851169 () Bool)

(assert (=> bm!152161 m!2851169))

(declare-fun m!2851171 () Bool)

(assert (=> bm!152161 m!2851171))

(declare-fun m!2851173 () Bool)

(assert (=> bm!152164 m!2851173))

(declare-fun m!2851175 () Bool)

(assert (=> b!2483232 m!2851175))

(assert (=> bm!152163 m!2851161))

(declare-fun m!2851177 () Bool)

(assert (=> bm!152163 m!2851177))

(declare-fun m!2851179 () Bool)

(assert (=> b!2483223 m!2851179))

(declare-fun m!2851181 () Bool)

(assert (=> bm!152169 m!2851181))

(declare-fun m!2851183 () Bool)

(assert (=> bm!152171 m!2851183))

(declare-fun m!2851185 () Bool)

(assert (=> b!2483220 m!2851185))

(assert (=> b!2483217 m!2851155))

(declare-fun m!2851187 () Bool)

(assert (=> b!2483199 m!2851187))

(assert (=> b!2482825 d!713140))

(declare-fun d!713142 () Bool)

(assert (=> d!713142 (= (get!8988 (getValueByKey!141 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lt!889152)) (v!31506 (getValueByKey!141 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lt!889152)))))

(assert (=> b!2482789 d!713142))

(declare-fun b!2483243 () Bool)

(declare-fun e!1576454 () Option!5757)

(assert (=> b!2483243 (= e!1576454 (getValueByKey!141 (t!210904 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) lt!889152))))

(declare-fun d!713144 () Bool)

(declare-fun c!394776 () Bool)

(assert (=> d!713144 (= c!394776 (and ((_ is Cons!29141) (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) (= (_1!17002 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) lt!889152)))))

(declare-fun e!1576453 () Option!5757)

(assert (=> d!713144 (= (getValueByKey!141 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))) lt!889152) e!1576453)))

(declare-fun b!2483244 () Bool)

(assert (=> b!2483244 (= e!1576454 None!5756)))

(declare-fun b!2483242 () Bool)

(assert (=> b!2483242 (= e!1576453 e!1576454)))

(declare-fun c!394777 () Bool)

(assert (=> b!2483242 (= c!394777 (and ((_ is Cons!29141) (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))) (not (= (_1!17002 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) lt!889152))))))

(declare-fun b!2483241 () Bool)

(assert (=> b!2483241 (= e!1576453 (Some!5756 (_2!17002 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))))

(assert (= (and d!713144 c!394776) b!2483241))

(assert (= (and d!713144 (not c!394776)) b!2483242))

(assert (= (and b!2483242 c!394777) b!2483243))

(assert (= (and b!2483242 (not c!394777)) b!2483244))

(declare-fun m!2851189 () Bool)

(assert (=> b!2483243 m!2851189))

(assert (=> b!2482789 d!713144))

(assert (=> b!2482789 d!713032))

(declare-fun d!713146 () Bool)

(assert (=> d!713146 (= (imbalanced!17 (v!31501 (underlying!6972 thiss!42540))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!6811 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_vacant!3443 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) (bvsgt (_vacant!3443 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_size!6811 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))))

(assert (=> d!713026 d!713146))

(assert (=> d!713026 d!713060))

(declare-fun b!2483245 () Bool)

(declare-fun e!1576460 () Unit!42663)

(declare-fun Unit!42684 () Unit!42663)

(assert (=> b!2483245 (= e!1576460 Unit!42684)))

(declare-fun b!2483246 () Bool)

(declare-fun e!1576458 () Bool)

(declare-fun e!1576459 () Bool)

(assert (=> b!2483246 (= e!1576458 e!1576459)))

(declare-fun res!1051152 () Bool)

(assert (=> b!2483246 (=> (not res!1051152) (not e!1576459))))

(assert (=> b!2483246 (= res!1051152 (isDefined!4581 (getValueByKey!142 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246)))))

(declare-fun b!2483247 () Bool)

(declare-fun e!1576457 () List!29242)

(assert (=> b!2483247 (= e!1576457 (keys!9334 (extractMap!178 (toList!1607 lt!889241))))))

(declare-fun b!2483248 () Bool)

(declare-fun e!1576455 () Unit!42663)

(assert (=> b!2483248 (= e!1576455 e!1576460)))

(declare-fun c!394780 () Bool)

(declare-fun call!152178 () Bool)

(assert (=> b!2483248 (= c!394780 call!152178)))

(declare-fun bm!152173 () Bool)

(assert (=> bm!152173 (= call!152178 (contains!5140 e!1576457 key!2246))))

(declare-fun c!394779 () Bool)

(declare-fun c!394778 () Bool)

(assert (=> bm!152173 (= c!394779 c!394778)))

(declare-fun b!2483249 () Bool)

(declare-fun e!1576456 () Bool)

(assert (=> b!2483249 (= e!1576456 (not (contains!5140 (keys!9334 (extractMap!178 (toList!1607 lt!889241))) key!2246)))))

(declare-fun b!2483250 () Bool)

(declare-fun lt!889456 () Unit!42663)

(assert (=> b!2483250 (= e!1576455 lt!889456)))

(declare-fun lt!889460 () Unit!42663)

(assert (=> b!2483250 (= lt!889460 (lemmaContainsKeyImpliesGetValueByKeyDefined!99 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(assert (=> b!2483250 (isDefined!4581 (getValueByKey!142 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(declare-fun lt!889455 () Unit!42663)

(assert (=> b!2483250 (= lt!889455 lt!889460)))

(assert (=> b!2483250 (= lt!889456 (lemmaInListThenGetKeysListContains!15 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(assert (=> b!2483250 call!152178))

(declare-fun b!2483251 () Bool)

(assert (=> b!2483251 (= e!1576457 (getKeysList!18 (toList!1606 (extractMap!178 (toList!1607 lt!889241)))))))

(declare-fun b!2483252 () Bool)

(assert (=> b!2483252 false))

(declare-fun lt!889457 () Unit!42663)

(declare-fun lt!889461 () Unit!42663)

(assert (=> b!2483252 (= lt!889457 lt!889461)))

(assert (=> b!2483252 (containsKey!143 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246)))

(assert (=> b!2483252 (= lt!889461 (lemmaInGetKeysListThenContainsKey!15 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(declare-fun Unit!42685 () Unit!42663)

(assert (=> b!2483252 (= e!1576460 Unit!42685)))

(declare-fun b!2483253 () Bool)

(assert (=> b!2483253 (= e!1576459 (contains!5140 (keys!9334 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(declare-fun d!713148 () Bool)

(assert (=> d!713148 e!1576458))

(declare-fun res!1051150 () Bool)

(assert (=> d!713148 (=> res!1051150 e!1576458)))

(assert (=> d!713148 (= res!1051150 e!1576456)))

(declare-fun res!1051151 () Bool)

(assert (=> d!713148 (=> (not res!1051151) (not e!1576456))))

(declare-fun lt!889462 () Bool)

(assert (=> d!713148 (= res!1051151 (not lt!889462))))

(declare-fun lt!889459 () Bool)

(assert (=> d!713148 (= lt!889462 lt!889459)))

(declare-fun lt!889458 () Unit!42663)

(assert (=> d!713148 (= lt!889458 e!1576455)))

(assert (=> d!713148 (= c!394778 lt!889459)))

(assert (=> d!713148 (= lt!889459 (containsKey!143 (toList!1606 (extractMap!178 (toList!1607 lt!889241))) key!2246))))

(assert (=> d!713148 (= (contains!5138 (extractMap!178 (toList!1607 lt!889241)) key!2246) lt!889462)))

(assert (= (and d!713148 c!394778) b!2483250))

(assert (= (and d!713148 (not c!394778)) b!2483248))

(assert (= (and b!2483248 c!394780) b!2483252))

(assert (= (and b!2483248 (not c!394780)) b!2483245))

(assert (= (or b!2483250 b!2483248) bm!152173))

(assert (= (and bm!152173 c!394779) b!2483251))

(assert (= (and bm!152173 (not c!394779)) b!2483247))

(assert (= (and d!713148 res!1051151) b!2483249))

(assert (= (and d!713148 (not res!1051150)) b!2483246))

(assert (= (and b!2483246 res!1051152) b!2483253))

(declare-fun m!2851191 () Bool)

(assert (=> b!2483252 m!2851191))

(declare-fun m!2851193 () Bool)

(assert (=> b!2483252 m!2851193))

(assert (=> b!2483247 m!2850827))

(declare-fun m!2851195 () Bool)

(assert (=> b!2483247 m!2851195))

(assert (=> d!713148 m!2851191))

(declare-fun m!2851197 () Bool)

(assert (=> b!2483251 m!2851197))

(assert (=> b!2483253 m!2850827))

(assert (=> b!2483253 m!2851195))

(assert (=> b!2483253 m!2851195))

(declare-fun m!2851199 () Bool)

(assert (=> b!2483253 m!2851199))

(declare-fun m!2851201 () Bool)

(assert (=> b!2483246 m!2851201))

(assert (=> b!2483246 m!2851201))

(declare-fun m!2851203 () Bool)

(assert (=> b!2483246 m!2851203))

(assert (=> b!2483249 m!2850827))

(assert (=> b!2483249 m!2851195))

(assert (=> b!2483249 m!2851195))

(assert (=> b!2483249 m!2851199))

(declare-fun m!2851205 () Bool)

(assert (=> bm!152173 m!2851205))

(declare-fun m!2851207 () Bool)

(assert (=> b!2483250 m!2851207))

(assert (=> b!2483250 m!2851201))

(assert (=> b!2483250 m!2851201))

(assert (=> b!2483250 m!2851203))

(declare-fun m!2851209 () Bool)

(assert (=> b!2483250 m!2851209))

(assert (=> b!2482862 d!713148))

(declare-fun bs!467602 () Bool)

(declare-fun d!713150 () Bool)

(assert (= bs!467602 (and d!713150 b!2482869)))

(declare-fun lambda!94142 () Int)

(assert (=> bs!467602 (= lambda!94142 lambda!94126)))

(declare-fun bs!467603 () Bool)

(assert (= bs!467603 (and d!713150 b!2482735)))

(assert (=> bs!467603 (not (= lambda!94142 lambda!94123))))

(declare-fun bs!467604 () Bool)

(assert (= bs!467604 (and d!713150 d!713070)))

(assert (=> bs!467604 (= lambda!94142 lambda!94135)))

(declare-fun bs!467605 () Bool)

(assert (= bs!467605 (and d!713150 d!713102)))

(assert (=> bs!467605 (= lambda!94142 lambda!94138)))

(declare-fun bs!467606 () Bool)

(assert (= bs!467606 (and d!713150 b!2482876)))

(assert (=> bs!467606 (= lambda!94142 lambda!94129)))

(declare-fun bs!467607 () Bool)

(assert (= bs!467607 (and d!713150 d!713062)))

(assert (=> bs!467607 (not (= lambda!94142 lambda!94132))))

(declare-fun bs!467608 () Bool)

(assert (= bs!467608 (and d!713150 b!2482729)))

(assert (=> bs!467608 (= lambda!94142 lambda!94122)))

(declare-fun lt!889463 () ListMap!1087)

(assert (=> d!713150 (invariantList!412 (toList!1606 lt!889463))))

(declare-fun e!1576461 () ListMap!1087)

(assert (=> d!713150 (= lt!889463 e!1576461)))

(declare-fun c!394781 () Bool)

(assert (=> d!713150 (= c!394781 ((_ is Cons!29141) (toList!1607 lt!889241)))))

(assert (=> d!713150 (forall!5976 (toList!1607 lt!889241) lambda!94142)))

(assert (=> d!713150 (= (extractMap!178 (toList!1607 lt!889241)) lt!889463)))

(declare-fun b!2483254 () Bool)

(assert (=> b!2483254 (= e!1576461 (addToMapMapFromBucket!16 (_2!17002 (h!34547 (toList!1607 lt!889241))) (extractMap!178 (t!210904 (toList!1607 lt!889241)))))))

(declare-fun b!2483255 () Bool)

(assert (=> b!2483255 (= e!1576461 (ListMap!1088 Nil!29140))))

(assert (= (and d!713150 c!394781) b!2483254))

(assert (= (and d!713150 (not c!394781)) b!2483255))

(declare-fun m!2851211 () Bool)

(assert (=> d!713150 m!2851211))

(declare-fun m!2851213 () Bool)

(assert (=> d!713150 m!2851213))

(declare-fun m!2851215 () Bool)

(assert (=> b!2483254 m!2851215))

(assert (=> b!2483254 m!2851215))

(declare-fun m!2851217 () Bool)

(assert (=> b!2483254 m!2851217))

(assert (=> b!2482862 d!713150))

(declare-fun bs!467609 () Bool)

(declare-fun d!713152 () Bool)

(assert (= bs!467609 (and d!713152 b!2482869)))

(declare-fun lambda!94145 () Int)

(assert (=> bs!467609 (= lambda!94145 lambda!94126)))

(declare-fun bs!467610 () Bool)

(assert (= bs!467610 (and d!713152 d!713150)))

(assert (=> bs!467610 (= lambda!94145 lambda!94142)))

(declare-fun bs!467611 () Bool)

(assert (= bs!467611 (and d!713152 b!2482735)))

(assert (=> bs!467611 (not (= lambda!94145 lambda!94123))))

(declare-fun bs!467612 () Bool)

(assert (= bs!467612 (and d!713152 d!713070)))

(assert (=> bs!467612 (= lambda!94145 lambda!94135)))

(declare-fun bs!467613 () Bool)

(assert (= bs!467613 (and d!713152 d!713102)))

(assert (=> bs!467613 (= lambda!94145 lambda!94138)))

(declare-fun bs!467614 () Bool)

(assert (= bs!467614 (and d!713152 b!2482876)))

(assert (=> bs!467614 (= lambda!94145 lambda!94129)))

(declare-fun bs!467615 () Bool)

(assert (= bs!467615 (and d!713152 d!713062)))

(assert (=> bs!467615 (not (= lambda!94145 lambda!94132))))

(declare-fun bs!467616 () Bool)

(assert (= bs!467616 (and d!713152 b!2482729)))

(assert (=> bs!467616 (= lambda!94145 lambda!94122)))

(assert (=> d!713152 (contains!5138 (extractMap!178 (toList!1607 lt!889241)) key!2246)))

(declare-fun lt!889466 () Unit!42663)

(declare-fun choose!14657 (ListLongMap!555 K!5540 Hashable!3292) Unit!42663)

(assert (=> d!713152 (= lt!889466 (choose!14657 lt!889241 key!2246 (hashF!5255 thiss!42540)))))

(assert (=> d!713152 (forall!5976 (toList!1607 lt!889241) lambda!94145)))

(assert (=> d!713152 (= (lemmaInLongMapThenInGenericMap!73 lt!889241 key!2246 (hashF!5255 thiss!42540)) lt!889466)))

(declare-fun bs!467617 () Bool)

(assert (= bs!467617 d!713152))

(assert (=> bs!467617 m!2850827))

(assert (=> bs!467617 m!2850827))

(assert (=> bs!467617 m!2850829))

(declare-fun m!2851219 () Bool)

(assert (=> bs!467617 m!2851219))

(declare-fun m!2851221 () Bool)

(assert (=> bs!467617 m!2851221))

(assert (=> b!2482862 d!713152))

(declare-fun b!2483276 () Bool)

(declare-datatypes ((tuple2!28928 0))(
  ( (tuple2!28929 (_1!17005 Bool) (_2!17005 Cell!13345)) )
))
(declare-fun e!1576479 () tuple2!28928)

(declare-fun lt!889488 () tuple2!28924)

(declare-fun lt!889487 () tuple2!28924)

(assert (=> b!2483276 (= e!1576479 (tuple2!28929 (and (_1!17003 lt!889488) (_1!17003 lt!889487)) (Cell!13346 (_2!17003 lt!889487))))))

(declare-fun call!152189 () LongMapFixedSize!6764)

(assert (=> b!2483276 (= lt!889488 (update!199 call!152189 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun call!152190 () tuple2!28924)

(assert (=> b!2483276 (= lt!889487 call!152190)))

(declare-fun b!2483277 () Bool)

(declare-fun e!1576478 () Bool)

(declare-fun lt!889490 () tuple2!28920)

(assert (=> b!2483277 (= e!1576478 (= (map!6236 (_2!17001 lt!889490)) (map!6236 (v!31501 (underlying!6972 thiss!42540)))))))

(declare-fun b!2483278 () Bool)

(declare-fun e!1576476 () tuple2!28928)

(assert (=> b!2483278 (= e!1576479 e!1576476)))

(declare-fun c!394792 () Bool)

(assert (=> b!2483278 (= c!394792 (and (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!2483279 () Bool)

(declare-datatypes ((tuple3!4142 0))(
  ( (tuple3!4143 (_1!17006 Bool) (_2!17006 Cell!13345) (_3!2541 MutLongMap!3382)) )
))
(declare-fun e!1576477 () tuple3!4142)

(declare-fun lt!889492 () tuple2!28928)

(assert (=> b!2483279 (= e!1576477 (tuple3!4143 false (_2!17005 lt!889492) (v!31501 (underlying!6972 thiss!42540))))))

(declare-fun d!713154 () Bool)

(declare-fun e!1576475 () Bool)

(assert (=> d!713154 e!1576475))

(declare-fun res!1051158 () Bool)

(assert (=> d!713154 (=> (not res!1051158) (not e!1576475))))

(assert (=> d!713154 (= res!1051158 ((_ is LongMap!3382) (_2!17001 lt!889490)))))

(declare-fun lt!889495 () tuple3!4142)

(assert (=> d!713154 (= lt!889490 (tuple2!28921 (_1!17006 lt!889495) (_3!2541 lt!889495)))))

(assert (=> d!713154 (= lt!889495 e!1576477)))

(declare-fun c!394793 () Bool)

(assert (=> d!713154 (= c!394793 (not (_1!17005 lt!889492)))))

(assert (=> d!713154 (= lt!889492 e!1576479)))

(declare-fun c!394790 () Bool)

(assert (=> d!713154 (= c!394790 (and (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!889491 () Cell!13345)

(declare-fun lt!889493 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!13 ((_ BitVec 32) Int) LongMapFixedSize!6764)

(assert (=> d!713154 (= lt!889491 (Cell!13346 (getNewLongMapFixedSize!13 lt!889493 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))))))))

(declare-fun computeNewMask!5 (MutLongMap!3382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!713154 (= lt!889493 (computeNewMask!5 (v!31501 (underlying!6972 thiss!42540)) (mask!8562 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_vacant!3443 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (_size!6811 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(assert (=> d!713154 (valid!2587 (v!31501 (underlying!6972 thiss!42540)))))

(assert (=> d!713154 (= (repack!21 (v!31501 (underlying!6972 thiss!42540))) lt!889490)))

(declare-fun b!2483280 () Bool)

(declare-fun e!1576474 () tuple2!28928)

(declare-fun lt!889496 () tuple2!28924)

(assert (=> b!2483280 (= e!1576474 (tuple2!28929 (_1!17003 lt!889496) (Cell!13346 (_2!17003 lt!889496))))))

(declare-fun call!152188 () tuple2!28924)

(assert (=> b!2483280 (= lt!889496 call!152188)))

(declare-fun b!2483281 () Bool)

(assert (=> b!2483281 (= e!1576474 (tuple2!28929 true lt!889491))))

(declare-fun call!152187 () LongMapFixedSize!6764)

(declare-fun bm!152182 () Bool)

(assert (=> bm!152182 (= call!152190 (update!199 (ite c!394790 (_2!17003 lt!889488) call!152187) (ite c!394790 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!394792 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!394790 (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (ite c!394792 (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))))

(declare-fun b!2483282 () Bool)

(declare-fun lt!889489 () tuple2!28924)

(assert (=> b!2483282 (= lt!889489 call!152188)))

(assert (=> b!2483282 (= e!1576476 (tuple2!28929 (_1!17003 lt!889489) (Cell!13346 (_2!17003 lt!889489))))))

(declare-fun bm!152183 () Bool)

(assert (=> bm!152183 (= call!152188 call!152190)))

(declare-fun bm!152184 () Bool)

(assert (=> bm!152184 (= call!152189 (getNewLongMapFixedSize!13 lt!889493 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))))

(declare-fun b!2483283 () Bool)

(assert (=> b!2483283 (= e!1576475 e!1576478)))

(declare-fun res!1051157 () Bool)

(assert (=> b!2483283 (=> res!1051157 e!1576478)))

(assert (=> b!2483283 (= res!1051157 (= (_1!17001 lt!889490) false))))

(declare-fun b!2483284 () Bool)

(declare-fun lt!889494 () tuple2!28924)

(assert (=> b!2483284 (= e!1576477 (ite (_1!17003 lt!889494) (tuple3!4143 true (underlying!6971 (v!31501 (underlying!6972 thiss!42540))) (LongMap!3382 (Cell!13346 (_2!17003 lt!889494)))) (tuple3!4143 false (Cell!13346 (_2!17003 lt!889494)) (v!31501 (underlying!6972 thiss!42540)))))))

(declare-fun repackFrom!5 (MutLongMap!3382 LongMapFixedSize!6764 (_ BitVec 32)) tuple2!28924)

(assert (=> b!2483284 (= lt!889494 (repackFrom!5 (v!31501 (underlying!6972 thiss!42540)) (v!31500 (_2!17005 lt!889492)) (bvsub (size!22774 (_keys!3679 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))) #b00000000000000000000000000000001)))))

(declare-fun b!2483285 () Bool)

(declare-fun c!394791 () Bool)

(assert (=> b!2483285 (= c!394791 (and (not (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3630 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!2483285 (= e!1576476 e!1576474)))

(declare-fun bm!152185 () Bool)

(assert (=> bm!152185 (= call!152187 call!152189)))

(assert (= (and d!713154 c!394790) b!2483276))

(assert (= (and d!713154 (not c!394790)) b!2483278))

(assert (= (and b!2483278 c!394792) b!2483282))

(assert (= (and b!2483278 (not c!394792)) b!2483285))

(assert (= (and b!2483285 c!394791) b!2483280))

(assert (= (and b!2483285 (not c!394791)) b!2483281))

(assert (= (or b!2483282 b!2483280) bm!152185))

(assert (= (or b!2483282 b!2483280) bm!152183))

(assert (= (or b!2483276 bm!152185) bm!152184))

(assert (= (or b!2483276 bm!152183) bm!152182))

(assert (= (and d!713154 c!394793) b!2483279))

(assert (= (and d!713154 (not c!394793)) b!2483284))

(assert (= (and d!713154 res!1051158) b!2483283))

(assert (= (and b!2483283 (not res!1051157)) b!2483277))

(declare-fun m!2851223 () Bool)

(assert (=> d!713154 m!2851223))

(declare-fun m!2851225 () Bool)

(assert (=> d!713154 m!2851225))

(assert (=> d!713154 m!2850759))

(declare-fun m!2851227 () Bool)

(assert (=> b!2483277 m!2851227))

(assert (=> b!2483277 m!2850729))

(declare-fun m!2851229 () Bool)

(assert (=> bm!152182 m!2851229))

(assert (=> bm!152184 m!2851223))

(declare-fun m!2851231 () Bool)

(assert (=> b!2483284 m!2851231))

(declare-fun m!2851233 () Bool)

(assert (=> b!2483276 m!2851233))

(assert (=> b!2482824 d!713154))

(declare-fun d!713156 () Bool)

(assert (=> d!713156 (= (valid!2587 (_2!17001 lt!889180)) (valid!2588 (v!31500 (underlying!6971 (_2!17001 lt!889180)))))))

(declare-fun bs!467618 () Bool)

(assert (= bs!467618 d!713156))

(declare-fun m!2851235 () Bool)

(assert (=> bs!467618 m!2851235))

(assert (=> b!2482823 d!713156))

(declare-fun e!1576480 () Bool)

(declare-fun tp!794937 () Bool)

(declare-fun b!2483286 () Bool)

(assert (=> b!2483286 (= e!1576480 (and tp_is_empty!12299 tp_is_empty!12301 tp!794937))))

(assert (=> b!2482891 (= tp!794933 e!1576480)))

(assert (= (and b!2482891 ((_ is Cons!29140) (t!210903 mapValue!15626))) b!2483286))

(declare-fun e!1576481 () Bool)

(declare-fun tp!794938 () Bool)

(declare-fun b!2483287 () Bool)

(assert (=> b!2483287 (= e!1576481 (and tp_is_empty!12299 tp_is_empty!12301 tp!794938))))

(assert (=> b!2482883 (= tp!794925 e!1576481)))

(assert (= (and b!2482883 ((_ is Cons!29140) (t!210903 (zeroValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))) b!2483287))

(declare-fun tp!794939 () Bool)

(declare-fun e!1576483 () Bool)

(declare-fun b!2483288 () Bool)

(assert (=> b!2483288 (= e!1576483 (and tp_is_empty!12299 tp_is_empty!12301 tp!794939))))

(declare-fun mapNonEmpty!15627 () Bool)

(declare-fun mapRes!15627 () Bool)

(declare-fun tp!794941 () Bool)

(assert (=> mapNonEmpty!15627 (= mapRes!15627 (and tp!794941 e!1576483))))

(declare-fun mapValue!15627 () List!29240)

(declare-fun mapKey!15627 () (_ BitVec 32))

(declare-fun mapRest!15627 () (Array (_ BitVec 32) List!29240))

(assert (=> mapNonEmpty!15627 (= mapRest!15626 (store mapRest!15627 mapKey!15627 mapValue!15627))))

(declare-fun mapIsEmpty!15627 () Bool)

(assert (=> mapIsEmpty!15627 mapRes!15627))

(declare-fun condMapEmpty!15627 () Bool)

(declare-fun mapDefault!15627 () List!29240)

(assert (=> mapNonEmpty!15626 (= condMapEmpty!15627 (= mapRest!15626 ((as const (Array (_ BitVec 32) List!29240)) mapDefault!15627)))))

(declare-fun e!1576482 () Bool)

(assert (=> mapNonEmpty!15626 (= tp!794935 (and e!1576482 mapRes!15627))))

(declare-fun tp!794940 () Bool)

(declare-fun b!2483289 () Bool)

(assert (=> b!2483289 (= e!1576482 (and tp_is_empty!12299 tp_is_empty!12301 tp!794940))))

(assert (= (and mapNonEmpty!15626 condMapEmpty!15627) mapIsEmpty!15627))

(assert (= (and mapNonEmpty!15626 (not condMapEmpty!15627)) mapNonEmpty!15627))

(assert (= (and mapNonEmpty!15627 ((_ is Cons!29140) mapValue!15627)) b!2483288))

(assert (= (and mapNonEmpty!15626 ((_ is Cons!29140) mapDefault!15627)) b!2483289))

(declare-fun m!2851237 () Bool)

(assert (=> mapNonEmpty!15627 m!2851237))

(declare-fun tp!794942 () Bool)

(declare-fun b!2483290 () Bool)

(declare-fun e!1576484 () Bool)

(assert (=> b!2483290 (= e!1576484 (and tp_is_empty!12299 tp_is_empty!12301 tp!794942))))

(assert (=> tb!140381 (= result!173342 e!1576484)))

(assert (= (and tb!140381 ((_ is Cons!29140) (dynLambda!12477 (defaultEntry!3756 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540))))) lt!889152))) b!2483290))

(declare-fun e!1576485 () Bool)

(declare-fun tp!794943 () Bool)

(declare-fun b!2483291 () Bool)

(assert (=> b!2483291 (= e!1576485 (and tp_is_empty!12299 tp_is_empty!12301 tp!794943))))

(assert (=> b!2482884 (= tp!794926 e!1576485)))

(assert (= (and b!2482884 ((_ is Cons!29140) (t!210903 (minValue!3640 (v!31500 (underlying!6971 (v!31501 (underlying!6972 thiss!42540)))))))) b!2483291))

(declare-fun e!1576486 () Bool)

(declare-fun tp!794944 () Bool)

(declare-fun b!2483292 () Bool)

(assert (=> b!2483292 (= e!1576486 (and tp_is_empty!12299 tp_is_empty!12301 tp!794944))))

(assert (=> b!2482882 (= tp!794924 e!1576486)))

(assert (= (and b!2482882 ((_ is Cons!29140) (t!210903 mapDefault!15623))) b!2483292))

(declare-fun tp!794945 () Bool)

(declare-fun b!2483293 () Bool)

(declare-fun e!1576487 () Bool)

(assert (=> b!2483293 (= e!1576487 (and tp_is_empty!12299 tp_is_empty!12301 tp!794945))))

(assert (=> b!2482893 (= tp!794936 e!1576487)))

(assert (= (and b!2482893 ((_ is Cons!29140) (t!210903 mapValue!15623))) b!2483293))

(declare-fun e!1576488 () Bool)

(declare-fun b!2483294 () Bool)

(declare-fun tp!794946 () Bool)

(assert (=> b!2483294 (= e!1576488 (and tp_is_empty!12299 tp_is_empty!12301 tp!794946))))

(assert (=> b!2482892 (= tp!794934 e!1576488)))

(assert (= (and b!2482892 ((_ is Cons!29140) (t!210903 mapDefault!15626))) b!2483294))

(declare-fun b_lambda!76177 () Bool)

(assert (= b_lambda!76165 (or b!2482876 b_lambda!76177)))

(declare-fun bs!467619 () Bool)

(declare-fun d!713158 () Bool)

(assert (= bs!467619 (and d!713158 b!2482876)))

(assert (=> bs!467619 (= (dynLambda!12476 lambda!94129 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540)))))) (noDuplicateKeys!89 (_2!17002 (h!34547 (toList!1607 (map!6236 (v!31501 (underlying!6972 thiss!42540))))))))))

(declare-fun m!2851239 () Bool)

(assert (=> bs!467619 m!2851239))

(assert (=> b!2482967 d!713158))

(declare-fun b_lambda!76179 () Bool)

(assert (= b_lambda!76161 (or (and b!2482732 b_free!72385) b_lambda!76179)))

(declare-fun b_lambda!76181 () Bool)

(assert (= b_lambda!76171 (or (and b!2482732 b_free!72385) b_lambda!76181)))

(declare-fun b_lambda!76183 () Bool)

(assert (= b_lambda!76173 (or b!2482735 b_lambda!76183)))

(declare-fun bs!467620 () Bool)

(declare-fun d!713160 () Bool)

(assert (= bs!467620 (and d!713160 b!2482735)))

(declare-fun Unit!42686 () Unit!42663)

(declare-fun Unit!42687 () Unit!42663)

(assert (=> bs!467620 (= (dynLambda!12476 lambda!94123 (h!34547 (t!210904 (toList!1607 lt!889156)))) (allKeysSameHash!66 (_2!17002 (h!34547 (t!210904 (toList!1607 lt!889156)))) (_1!17002 (h!34547 (t!210904 (toList!1607 lt!889156)))) (hashF!5255 (_2!17004 (ite (_1!17001 lt!889155) (tuple2!28927 Unit!42686 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (bvsub (_size!6812 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3454 thiss!42540))) (tuple2!28927 Unit!42687 (HashMap!3292 lt!889154 (hashF!5255 thiss!42540) (_size!6812 thiss!42540) (defaultValue!3454 thiss!42540))))))))))

(declare-fun m!2851241 () Bool)

(assert (=> bs!467620 m!2851241))

(assert (=> b!2483018 d!713160))

(declare-fun b_lambda!76185 () Bool)

(assert (= b_lambda!76163 (or (and b!2482732 b_free!72385) b_lambda!76185)))

(declare-fun b_lambda!76187 () Bool)

(assert (= b_lambda!76167 (or b!2482729 b_lambda!76187)))

(assert (=> d!713072 d!713046))

(declare-fun b_lambda!76189 () Bool)

(assert (= b_lambda!76175 (or b!2482869 b_lambda!76189)))

(declare-fun bs!467621 () Bool)

(declare-fun d!713162 () Bool)

(assert (= bs!467621 (and d!713162 b!2482869)))

(assert (=> bs!467621 (= (dynLambda!12476 lambda!94126 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246))) (noDuplicateKeys!89 (_2!17002 (tuple2!28923 lt!889246 (apply!6936 (v!31501 (underlying!6972 thiss!42540)) lt!889246)))))))

(declare-fun m!2851243 () Bool)

(assert (=> bs!467621 m!2851243))

(assert (=> d!713124 d!713162))

(declare-fun b_lambda!76191 () Bool)

(assert (= b_lambda!76159 (or (and b!2482732 b_free!72385) b_lambda!76191)))

(declare-fun b_lambda!76193 () Bool)

(assert (= b_lambda!76169 (or b!2482729 b_lambda!76193)))

(declare-fun bs!467622 () Bool)

(declare-fun d!713164 () Bool)

(assert (= bs!467622 (and d!713164 b!2482729)))

(assert (=> bs!467622 (= (dynLambda!12476 lambda!94122 (h!34547 (toList!1607 lt!889156))) (noDuplicateKeys!89 (_2!17002 (h!34547 (toList!1607 lt!889156)))))))

(declare-fun m!2851245 () Bool)

(assert (=> bs!467622 m!2851245))

(assert (=> b!2482977 d!713164))

(check-sat (not d!713122) (not d!713062) (not d!713124) (not b!2483090) (not b!2483294) (not bm!152159) (not b!2483229) (not d!713154) (not d!713138) (not b!2483286) (not bs!467622) (not d!713102) (not b_next!73089) (not b_lambda!76177) (not b!2483277) (not b!2483017) (not b!2483254) (not bm!152100) (not d!713108) (not b!2483289) (not d!713106) (not b!2482998) (not b!2483292) (not b!2483053) (not b!2483112) (not b_lambda!76153) (not d!713060) (not bm!152153) (not d!713050) (not d!713132) (not d!713112) (not b_lambda!76187) (not b!2482951) (not b!2483252) (not d!713090) (not b!2483047) (not d!713110) (not bm!152154) (not b_lambda!76179) (not b!2483063) (not b!2483247) tp_is_empty!12301 (not b_lambda!76181) (not d!713088) (not bm!152162) (not b!2483082) (not d!713096) (not d!713076) (not b!2483052) (not d!713070) (not d!713104) (not d!713086) (not b!2483284) (not b!2483290) (not b!2483022) (not bm!152184) (not b!2482908) (not b!2483055) (not d!713136) (not b!2483056) (not b!2483224) (not d!713152) (not b!2483051) b_and!188639 (not b!2483059) (not b!2483050) (not b!2482969) (not d!713130) (not b_lambda!76157) (not b!2483088) (not bm!152167) (not d!713092) (not d!713068) (not bm!152171) (not b!2482975) (not bm!152164) (not b!2483251) (not b_lambda!76183) (not b!2483287) (not b!2482980) (not bm!152163) (not b!2482995) (not bm!152182) (not b!2482950) (not bs!467621) (not d!713120) (not b!2483246) (not b!2483061) tp_is_empty!12299 (not d!713126) (not bm!152169) (not b!2483235) (not b!2483065) (not b!2483217) (not bs!467620) (not b_lambda!76193) (not d!713078) (not bs!467619) (not b!2483019) (not b!2483105) (not b!2483220) (not b!2483091) (not b!2483291) (not b!2483046) (not d!713056) (not d!713058) (not d!713116) (not b!2483101) (not b!2483011) (not b!2483276) (not b!2482953) (not b!2482979) (not b_lambda!76189) (not d!713140) (not b!2482970) (not bm!152093) (not b!2483288) (not d!713156) (not b!2483243) (not b!2483094) (not d!713134) (not b!2483060) (not b!2482989) (not b!2483098) (not bm!152173) (not b!2483062) (not b!2482999) (not d!713128) (not b!2482968) (not b!2483250) (not bm!152166) (not b!2483234) (not b!2483293) (not b!2482910) (not b!2483096) b_and!188649 (not b!2483106) (not b!2482978) (not bm!152152) (not d!713084) (not d!713148) (not b!2483089) (not b!2483100) (not b!2483084) (not b!2483099) (not b!2483111) (not mapNonEmpty!15627) (not b_next!73091) (not bm!152099) (not b!2483058) (not b!2482986) (not b_lambda!76155) (not tb!140383) (not b!2483249) (not b!2482900) (not b!2482949) (not d!713114) (not b_lambda!76191) (not b!2483206) (not b!2483083) (not b!2483015) (not b!2482959) (not b!2482902) (not b!2482909) (not b!2483253) (not bm!152161) (not b!2483049) (not bm!152094) (not d!713150) (not b!2483114) (not b_lambda!76185))
(check-sat b_and!188639 b_and!188649 (not b_next!73089) (not b_next!73091))
