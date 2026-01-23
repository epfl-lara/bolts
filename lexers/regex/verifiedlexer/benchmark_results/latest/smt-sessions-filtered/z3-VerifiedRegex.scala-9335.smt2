; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496620 () Bool)

(assert start!496620)

(declare-fun b!4806267 () Bool)

(declare-fun b_free!129859 () Bool)

(declare-fun b_next!130649 () Bool)

(assert (=> b!4806267 (= b_free!129859 (not b_next!130649))))

(declare-fun tp!1358840 () Bool)

(declare-fun b_and!341613 () Bool)

(assert (=> b!4806267 (= tp!1358840 b_and!341613)))

(declare-fun b!4806266 () Bool)

(declare-fun b_free!129861 () Bool)

(declare-fun b_next!130651 () Bool)

(assert (=> b!4806266 (= b_free!129861 (not b_next!130651))))

(declare-fun tp!1358834 () Bool)

(declare-fun b_and!341615 () Bool)

(assert (=> b!4806266 (= tp!1358834 b_and!341615)))

(declare-fun mapNonEmpty!22061 () Bool)

(declare-fun mapRes!22061 () Bool)

(declare-fun tp!1358836 () Bool)

(declare-fun tp!1358835 () Bool)

(assert (=> mapNonEmpty!22061 (= mapRes!22061 (and tp!1358836 tp!1358835))))

(declare-datatypes ((K!15964 0))(
  ( (K!15965 (val!21077 Int)) )
))
(declare-datatypes ((array!18260 0))(
  ( (array!18261 (arr!8143 (Array (_ BitVec 32) (_ BitVec 64))) (size!36389 (_ BitVec 32))) )
))
(declare-datatypes ((V!16210 0))(
  ( (V!16211 (val!21078 Int)) )
))
(declare-datatypes ((tuple2!57116 0))(
  ( (tuple2!57117 (_1!31852 K!15964) (_2!31852 V!16210)) )
))
(declare-datatypes ((List!54511 0))(
  ( (Nil!54387) (Cons!54387 (h!60819 tuple2!57116) (t!361961 List!54511)) )
))
(declare-datatypes ((array!18262 0))(
  ( (array!18263 (arr!8144 (Array (_ BitVec 32) List!54511)) (size!36390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9958 0))(
  ( (LongMapFixedSize!9959 (defaultEntry!5397 Int) (mask!14939 (_ BitVec 32)) (extraKeys!5254 (_ BitVec 32)) (zeroValue!5267 List!54511) (minValue!5267 List!54511) (_size!9983 (_ BitVec 32)) (_keys!5321 array!18260) (_values!5292 array!18262) (_vacant!5044 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19681 0))(
  ( (Cell!19682 (v!48592 LongMapFixedSize!9958)) )
))
(declare-datatypes ((MutLongMap!4979 0))(
  ( (LongMap!4979 (underlying!10165 Cell!19681)) (MutLongMapExt!4978 (__x!33035 Int)) )
))
(declare-datatypes ((Hashable!6990 0))(
  ( (HashableExt!6989 (__x!33036 Int)) )
))
(declare-datatypes ((Cell!19683 0))(
  ( (Cell!19684 (v!48593 MutLongMap!4979)) )
))
(declare-datatypes ((MutableMap!4863 0))(
  ( (MutableMapExt!4862 (__x!33037 Int)) (HashMap!4863 (underlying!10166 Cell!19683) (hashF!13258 Hashable!6990) (_size!9984 (_ BitVec 32)) (defaultValue!5034 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4863)

(declare-fun mapValue!22061 () List!54511)

(declare-fun mapRest!22061 () (Array (_ BitVec 32) List!54511))

(declare-fun mapKey!22061 () (_ BitVec 32))

(assert (=> mapNonEmpty!22061 (= (arr!8144 (_values!5292 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) (store mapRest!22061 mapKey!22061 mapValue!22061))))

(declare-fun res!2044768 () Bool)

(declare-fun e!3001698 () Bool)

(assert (=> start!496620 (=> (not res!2044768) (not e!3001698))))

(get-info :version)

(assert (=> start!496620 (= res!2044768 ((_ is HashMap!4863) thiss!41921))))

(assert (=> start!496620 e!3001698))

(declare-fun e!3001701 () Bool)

(assert (=> start!496620 e!3001701))

(declare-fun tp_is_empty!33803 () Bool)

(assert (=> start!496620 tp_is_empty!33803))

(declare-fun b!4806260 () Bool)

(declare-fun e!3001703 () Bool)

(declare-fun valid!3986 (MutLongMap!4979) Bool)

(assert (=> b!4806260 (= e!3001703 (not (valid!3986 (v!48593 (underlying!10166 thiss!41921)))))))

(declare-fun b!4806261 () Bool)

(declare-fun e!3001696 () Bool)

(declare-fun e!3001699 () Bool)

(declare-fun lt!1959918 () MutLongMap!4979)

(assert (=> b!4806261 (= e!3001696 (and e!3001699 ((_ is LongMap!4979) lt!1959918)))))

(assert (=> b!4806261 (= lt!1959918 (v!48593 (underlying!10166 thiss!41921)))))

(declare-fun b!4806262 () Bool)

(assert (=> b!4806262 (= e!3001698 e!3001703)))

(declare-fun res!2044771 () Bool)

(assert (=> b!4806262 (=> (not res!2044771) (not e!3001703))))

(declare-fun lt!1959919 () (_ BitVec 64))

(declare-fun contains!18051 (MutLongMap!4979 (_ BitVec 64)) Bool)

(assert (=> b!4806262 (= res!2044771 (contains!18051 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))))

(declare-fun key!1652 () K!15964)

(declare-fun hash!5058 (Hashable!6990 K!15964) (_ BitVec 64))

(assert (=> b!4806262 (= lt!1959919 (hash!5058 (hashF!13258 thiss!41921) key!1652))))

(declare-fun b!4806263 () Bool)

(declare-fun e!3001700 () Bool)

(declare-fun tp!1358839 () Bool)

(assert (=> b!4806263 (= e!3001700 (and tp!1358839 mapRes!22061))))

(declare-fun condMapEmpty!22061 () Bool)

(declare-fun mapDefault!22061 () List!54511)

(assert (=> b!4806263 (= condMapEmpty!22061 (= (arr!8144 (_values!5292 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54511)) mapDefault!22061)))))

(declare-fun mapIsEmpty!22061 () Bool)

(assert (=> mapIsEmpty!22061 mapRes!22061))

(declare-fun b!4806264 () Bool)

(declare-fun e!3001697 () Bool)

(assert (=> b!4806264 (= e!3001699 e!3001697)))

(declare-fun b!4806265 () Bool)

(declare-fun res!2044772 () Bool)

(assert (=> b!4806265 (=> (not res!2044772) (not e!3001698))))

(declare-fun valid!3987 (MutableMap!4863) Bool)

(assert (=> b!4806265 (= res!2044772 (valid!3987 thiss!41921))))

(assert (=> b!4806266 (= e!3001701 (and e!3001696 tp!1358834))))

(declare-fun tp!1358838 () Bool)

(declare-fun e!3001702 () Bool)

(declare-fun tp!1358837 () Bool)

(declare-fun array_inv!5865 (array!18260) Bool)

(declare-fun array_inv!5866 (array!18262) Bool)

(assert (=> b!4806267 (= e!3001702 (and tp!1358840 tp!1358838 tp!1358837 (array_inv!5865 (_keys!5321 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) (array_inv!5866 (_values!5292 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) e!3001700))))

(declare-fun b!4806268 () Bool)

(declare-fun res!2044770 () Bool)

(assert (=> b!4806268 (=> (not res!2044770) (not e!3001703))))

(assert (=> b!4806268 (= res!2044770 ((_ is LongMap!4979) (v!48593 (underlying!10166 thiss!41921))))))

(declare-fun b!4806269 () Bool)

(declare-fun res!2044769 () Bool)

(assert (=> b!4806269 (=> (not res!2044769) (not e!3001703))))

(declare-datatypes ((tuple2!57118 0))(
  ( (tuple2!57119 (_1!31853 (_ BitVec 64)) (_2!31853 List!54511)) )
))
(declare-datatypes ((List!54512 0))(
  ( (Nil!54388) (Cons!54388 (h!60820 tuple2!57118) (t!361962 List!54512)) )
))
(declare-fun contains!18052 (List!54512 tuple2!57118) Bool)

(declare-datatypes ((ListLongMap!5469 0))(
  ( (ListLongMap!5470 (toList!7042 List!54512)) )
))
(declare-fun map!12304 (MutLongMap!4979) ListLongMap!5469)

(declare-fun apply!13063 (MutLongMap!4979 (_ BitVec 64)) List!54511)

(assert (=> b!4806269 (= res!2044769 (not (contains!18052 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921)))) (tuple2!57119 lt!1959919 (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919)))))))

(declare-fun b!4806270 () Bool)

(assert (=> b!4806270 (= e!3001697 e!3001702)))

(assert (= (and start!496620 res!2044768) b!4806265))

(assert (= (and b!4806265 res!2044772) b!4806262))

(assert (= (and b!4806262 res!2044771) b!4806269))

(assert (= (and b!4806269 res!2044769) b!4806268))

(assert (= (and b!4806268 res!2044770) b!4806260))

(assert (= (and b!4806263 condMapEmpty!22061) mapIsEmpty!22061))

(assert (= (and b!4806263 (not condMapEmpty!22061)) mapNonEmpty!22061))

(assert (= b!4806267 b!4806263))

(assert (= b!4806270 b!4806267))

(assert (= b!4806264 b!4806270))

(assert (= (and b!4806261 ((_ is LongMap!4979) (v!48593 (underlying!10166 thiss!41921)))) b!4806264))

(assert (= b!4806266 b!4806261))

(assert (= (and start!496620 ((_ is HashMap!4863) thiss!41921)) b!4806266))

(declare-fun m!5792672 () Bool)

(assert (=> mapNonEmpty!22061 m!5792672))

(declare-fun m!5792674 () Bool)

(assert (=> b!4806260 m!5792674))

(declare-fun m!5792676 () Bool)

(assert (=> b!4806262 m!5792676))

(declare-fun m!5792678 () Bool)

(assert (=> b!4806262 m!5792678))

(declare-fun m!5792680 () Bool)

(assert (=> b!4806265 m!5792680))

(declare-fun m!5792682 () Bool)

(assert (=> b!4806267 m!5792682))

(declare-fun m!5792684 () Bool)

(assert (=> b!4806267 m!5792684))

(declare-fun m!5792686 () Bool)

(assert (=> b!4806269 m!5792686))

(declare-fun m!5792688 () Bool)

(assert (=> b!4806269 m!5792688))

(declare-fun m!5792690 () Bool)

(assert (=> b!4806269 m!5792690))

(check-sat (not b_next!130651) (not b!4806269) b_and!341615 (not mapNonEmpty!22061) tp_is_empty!33803 (not b!4806263) (not b!4806265) b_and!341613 (not b!4806267) (not b!4806260) (not b_next!130649) (not b!4806262))
(check-sat b_and!341613 b_and!341615 (not b_next!130649) (not b_next!130651))
(get-model)

(declare-fun d!1539738 () Bool)

(declare-fun res!2044777 () Bool)

(declare-fun e!3001707 () Bool)

(assert (=> d!1539738 (=> (not res!2044777) (not e!3001707))))

(assert (=> d!1539738 (= res!2044777 (valid!3986 (v!48593 (underlying!10166 thiss!41921))))))

(assert (=> d!1539738 (= (valid!3987 thiss!41921) e!3001707)))

(declare-fun b!4806275 () Bool)

(declare-fun res!2044778 () Bool)

(assert (=> b!4806275 (=> (not res!2044778) (not e!3001707))))

(declare-fun lambda!233462 () Int)

(declare-fun forall!12368 (List!54512 Int) Bool)

(assert (=> b!4806275 (= res!2044778 (forall!12368 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921)))) lambda!233462))))

(declare-fun b!4806276 () Bool)

(declare-fun allKeysSameHashInMap!2386 (ListLongMap!5469 Hashable!6990) Bool)

(assert (=> b!4806276 (= e!3001707 (allKeysSameHashInMap!2386 (map!12304 (v!48593 (underlying!10166 thiss!41921))) (hashF!13258 thiss!41921)))))

(assert (= (and d!1539738 res!2044777) b!4806275))

(assert (= (and b!4806275 res!2044778) b!4806276))

(assert (=> d!1539738 m!5792674))

(assert (=> b!4806275 m!5792686))

(declare-fun m!5792692 () Bool)

(assert (=> b!4806275 m!5792692))

(assert (=> b!4806276 m!5792686))

(assert (=> b!4806276 m!5792686))

(declare-fun m!5792694 () Bool)

(assert (=> b!4806276 m!5792694))

(assert (=> b!4806265 d!1539738))

(declare-fun d!1539740 () Bool)

(declare-fun valid!3988 (LongMapFixedSize!9958) Bool)

(assert (=> d!1539740 (= (valid!3986 (v!48593 (underlying!10166 thiss!41921))) (valid!3988 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))))))

(declare-fun bs!1159867 () Bool)

(assert (= bs!1159867 d!1539740))

(declare-fun m!5792696 () Bool)

(assert (=> bs!1159867 m!5792696))

(assert (=> b!4806260 d!1539740))

(declare-fun d!1539742 () Bool)

(declare-fun lt!1959922 () Bool)

(declare-fun contains!18053 (ListLongMap!5469 (_ BitVec 64)) Bool)

(assert (=> d!1539742 (= lt!1959922 (contains!18053 (map!12304 (v!48593 (underlying!10166 thiss!41921))) lt!1959919))))

(declare-fun contains!18054 (LongMapFixedSize!9958 (_ BitVec 64)) Bool)

(assert (=> d!1539742 (= lt!1959922 (contains!18054 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))) lt!1959919))))

(assert (=> d!1539742 (valid!3986 (v!48593 (underlying!10166 thiss!41921)))))

(assert (=> d!1539742 (= (contains!18051 (v!48593 (underlying!10166 thiss!41921)) lt!1959919) lt!1959922)))

(declare-fun bs!1159868 () Bool)

(assert (= bs!1159868 d!1539742))

(assert (=> bs!1159868 m!5792686))

(assert (=> bs!1159868 m!5792686))

(declare-fun m!5792698 () Bool)

(assert (=> bs!1159868 m!5792698))

(declare-fun m!5792700 () Bool)

(assert (=> bs!1159868 m!5792700))

(assert (=> bs!1159868 m!5792674))

(assert (=> b!4806262 d!1539742))

(declare-fun d!1539744 () Bool)

(declare-fun hash!5059 (Hashable!6990 K!15964) (_ BitVec 64))

(assert (=> d!1539744 (= (hash!5058 (hashF!13258 thiss!41921) key!1652) (hash!5059 (hashF!13258 thiss!41921) key!1652))))

(declare-fun bs!1159869 () Bool)

(assert (= bs!1159869 d!1539744))

(declare-fun m!5792702 () Bool)

(assert (=> bs!1159869 m!5792702))

(assert (=> b!4806262 d!1539744))

(declare-fun d!1539746 () Bool)

(assert (=> d!1539746 (= (array_inv!5865 (_keys!5321 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) (bvsge (size!36389 (_keys!5321 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806267 d!1539746))

(declare-fun d!1539748 () Bool)

(assert (=> d!1539748 (= (array_inv!5866 (_values!5292 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) (bvsge (size!36390 (_values!5292 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806267 d!1539748))

(declare-fun d!1539750 () Bool)

(declare-fun lt!1959925 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9761 (List!54512) (InoxSet tuple2!57118))

(assert (=> d!1539750 (= lt!1959925 (select (content!9761 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921))))) (tuple2!57119 lt!1959919 (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))))))

(declare-fun e!3001712 () Bool)

(assert (=> d!1539750 (= lt!1959925 e!3001712)))

(declare-fun res!2044784 () Bool)

(assert (=> d!1539750 (=> (not res!2044784) (not e!3001712))))

(assert (=> d!1539750 (= res!2044784 ((_ is Cons!54388) (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921))))))))

(assert (=> d!1539750 (= (contains!18052 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921)))) (tuple2!57119 lt!1959919 (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))) lt!1959925)))

(declare-fun b!4806281 () Bool)

(declare-fun e!3001713 () Bool)

(assert (=> b!4806281 (= e!3001712 e!3001713)))

(declare-fun res!2044783 () Bool)

(assert (=> b!4806281 (=> res!2044783 e!3001713)))

(assert (=> b!4806281 (= res!2044783 (= (h!60820 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921))))) (tuple2!57119 lt!1959919 (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))))))

(declare-fun b!4806282 () Bool)

(assert (=> b!4806282 (= e!3001713 (contains!18052 (t!361962 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921))))) (tuple2!57119 lt!1959919 (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))))))

(assert (= (and d!1539750 res!2044784) b!4806281))

(assert (= (and b!4806281 (not res!2044783)) b!4806282))

(declare-fun m!5792704 () Bool)

(assert (=> d!1539750 m!5792704))

(declare-fun m!5792706 () Bool)

(assert (=> d!1539750 m!5792706))

(declare-fun m!5792708 () Bool)

(assert (=> b!4806282 m!5792708))

(assert (=> b!4806269 d!1539750))

(declare-fun d!1539752 () Bool)

(declare-fun map!12305 (LongMapFixedSize!9958) ListLongMap!5469)

(assert (=> d!1539752 (= (map!12304 (v!48593 (underlying!10166 thiss!41921))) (map!12305 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))))))

(declare-fun bs!1159870 () Bool)

(assert (= bs!1159870 d!1539752))

(declare-fun m!5792710 () Bool)

(assert (=> bs!1159870 m!5792710))

(assert (=> b!4806269 d!1539752))

(declare-fun d!1539754 () Bool)

(declare-fun e!3001716 () Bool)

(assert (=> d!1539754 e!3001716))

(declare-fun c!819282 () Bool)

(assert (=> d!1539754 (= c!819282 (contains!18051 (v!48593 (underlying!10166 thiss!41921)) lt!1959919))))

(declare-fun lt!1959928 () List!54511)

(declare-fun apply!13064 (LongMapFixedSize!9958 (_ BitVec 64)) List!54511)

(assert (=> d!1539754 (= lt!1959928 (apply!13064 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))) lt!1959919))))

(assert (=> d!1539754 (valid!3986 (v!48593 (underlying!10166 thiss!41921)))))

(assert (=> d!1539754 (= (apply!13063 (v!48593 (underlying!10166 thiss!41921)) lt!1959919) lt!1959928)))

(declare-fun b!4806287 () Bool)

(declare-datatypes ((Option!13230 0))(
  ( (None!13229) (Some!13229 (v!48595 List!54511)) )
))
(declare-fun get!18602 (Option!13230) List!54511)

(declare-fun getValueByKey!2427 (List!54512 (_ BitVec 64)) Option!13230)

(assert (=> b!4806287 (= e!3001716 (= lt!1959928 (get!18602 (getValueByKey!2427 (toList!7042 (map!12304 (v!48593 (underlying!10166 thiss!41921)))) lt!1959919))))))

(declare-fun b!4806288 () Bool)

(declare-fun dynLambda!22110 (Int (_ BitVec 64)) List!54511)

(assert (=> b!4806288 (= e!3001716 (= lt!1959928 (dynLambda!22110 (defaultEntry!5397 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))) lt!1959919)))))

(assert (=> b!4806288 ((_ is LongMap!4979) (v!48593 (underlying!10166 thiss!41921)))))

(assert (= (and d!1539754 c!819282) b!4806287))

(assert (= (and d!1539754 (not c!819282)) b!4806288))

(declare-fun b_lambda!188105 () Bool)

(assert (=> (not b_lambda!188105) (not b!4806288)))

(declare-fun t!361964 () Bool)

(declare-fun tb!257503 () Bool)

(assert (=> (and b!4806267 (= (defaultEntry!5397 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))) (defaultEntry!5397 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921)))))) t!361964) tb!257503))

(assert (=> b!4806288 t!361964))

(declare-fun result!319522 () Bool)

(declare-fun b_and!341617 () Bool)

(assert (= b_and!341613 (and (=> t!361964 result!319522) b_and!341617)))

(assert (=> d!1539754 m!5792676))

(declare-fun m!5792712 () Bool)

(assert (=> d!1539754 m!5792712))

(assert (=> d!1539754 m!5792674))

(assert (=> b!4806287 m!5792686))

(declare-fun m!5792714 () Bool)

(assert (=> b!4806287 m!5792714))

(assert (=> b!4806287 m!5792714))

(declare-fun m!5792716 () Bool)

(assert (=> b!4806287 m!5792716))

(declare-fun m!5792718 () Bool)

(assert (=> b!4806288 m!5792718))

(assert (=> b!4806269 d!1539754))

(declare-fun e!3001719 () Bool)

(declare-fun tp!1358843 () Bool)

(declare-fun b!4806293 () Bool)

(declare-fun tp_is_empty!33805 () Bool)

(assert (=> b!4806293 (= e!3001719 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358843))))

(assert (=> b!4806263 (= tp!1358839 e!3001719)))

(assert (= (and b!4806263 ((_ is Cons!54387) mapDefault!22061)) b!4806293))

(declare-fun tp!1358844 () Bool)

(declare-fun e!3001720 () Bool)

(declare-fun b!4806294 () Bool)

(assert (=> b!4806294 (= e!3001720 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358844))))

(assert (=> b!4806267 (= tp!1358838 e!3001720)))

(assert (= (and b!4806267 ((_ is Cons!54387) (zeroValue!5267 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))))) b!4806294))

(declare-fun tp!1358845 () Bool)

(declare-fun e!3001721 () Bool)

(declare-fun b!4806295 () Bool)

(assert (=> b!4806295 (= e!3001721 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358845))))

(assert (=> b!4806267 (= tp!1358837 e!3001721)))

(assert (= (and b!4806267 ((_ is Cons!54387) (minValue!5267 (v!48592 (underlying!10165 (v!48593 (underlying!10166 thiss!41921))))))) b!4806295))

(declare-fun e!3001726 () Bool)

(declare-fun b!4806303 () Bool)

(declare-fun tp!1358852 () Bool)

(assert (=> b!4806303 (= e!3001726 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358852))))

(declare-fun e!3001727 () Bool)

(declare-fun b!4806302 () Bool)

(declare-fun tp!1358853 () Bool)

(assert (=> b!4806302 (= e!3001727 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358853))))

(declare-fun condMapEmpty!22064 () Bool)

(declare-fun mapDefault!22064 () List!54511)

(assert (=> mapNonEmpty!22061 (= condMapEmpty!22064 (= mapRest!22061 ((as const (Array (_ BitVec 32) List!54511)) mapDefault!22064)))))

(declare-fun mapRes!22064 () Bool)

(assert (=> mapNonEmpty!22061 (= tp!1358836 (and e!3001726 mapRes!22064))))

(declare-fun mapNonEmpty!22064 () Bool)

(declare-fun tp!1358854 () Bool)

(assert (=> mapNonEmpty!22064 (= mapRes!22064 (and tp!1358854 e!3001727))))

(declare-fun mapRest!22064 () (Array (_ BitVec 32) List!54511))

(declare-fun mapKey!22064 () (_ BitVec 32))

(declare-fun mapValue!22064 () List!54511)

(assert (=> mapNonEmpty!22064 (= mapRest!22061 (store mapRest!22064 mapKey!22064 mapValue!22064))))

(declare-fun mapIsEmpty!22064 () Bool)

(assert (=> mapIsEmpty!22064 mapRes!22064))

(assert (= (and mapNonEmpty!22061 condMapEmpty!22064) mapIsEmpty!22064))

(assert (= (and mapNonEmpty!22061 (not condMapEmpty!22064)) mapNonEmpty!22064))

(assert (= (and mapNonEmpty!22064 ((_ is Cons!54387) mapValue!22064)) b!4806302))

(assert (= (and mapNonEmpty!22061 ((_ is Cons!54387) mapDefault!22064)) b!4806303))

(declare-fun m!5792720 () Bool)

(assert (=> mapNonEmpty!22064 m!5792720))

(declare-fun tp!1358855 () Bool)

(declare-fun e!3001728 () Bool)

(declare-fun b!4806304 () Bool)

(assert (=> b!4806304 (= e!3001728 (and tp_is_empty!33803 tp_is_empty!33805 tp!1358855))))

(assert (=> mapNonEmpty!22061 (= tp!1358835 e!3001728)))

(assert (= (and mapNonEmpty!22061 ((_ is Cons!54387) mapValue!22061)) b!4806304))

(declare-fun b_lambda!188107 () Bool)

(assert (= b_lambda!188105 (or (and b!4806267 b_free!129859) b_lambda!188107)))

(check-sat (not b_next!130651) (not b!4806303) (not mapNonEmpty!22064) (not d!1539750) (not d!1539744) (not b!4806275) tp_is_empty!33805 (not d!1539754) (not d!1539738) (not b!4806304) (not d!1539752) (not b!4806293) (not b!4806302) (not b!4806294) (not d!1539742) (not tb!257503) b_and!341615 b_and!341617 (not b_next!130649) (not b_lambda!188107) (not b!4806295) (not b!4806282) (not b!4806276) tp_is_empty!33803 (not d!1539740) (not b!4806287))
(check-sat b_and!341617 b_and!341615 (not b_next!130649) (not b_next!130651))
