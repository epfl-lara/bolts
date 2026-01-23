; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497302 () Bool)

(assert start!497302)

(declare-fun b!4810709 () Bool)

(declare-fun b_free!130163 () Bool)

(declare-fun b_next!130953 () Bool)

(assert (=> b!4810709 (= b_free!130163 (not b_next!130953))))

(declare-fun tp!1360655 () Bool)

(declare-fun b_and!341947 () Bool)

(assert (=> b!4810709 (= tp!1360655 b_and!341947)))

(declare-fun b!4810701 () Bool)

(declare-fun b_free!130165 () Bool)

(declare-fun b_next!130955 () Bool)

(assert (=> b!4810701 (= b_free!130165 (not b_next!130955))))

(declare-fun tp!1360657 () Bool)

(declare-fun b_and!341949 () Bool)

(assert (=> b!4810701 (= tp!1360657 b_and!341949)))

(declare-fun mapIsEmpty!22334 () Bool)

(declare-fun mapRes!22334 () Bool)

(assert (=> mapIsEmpty!22334 mapRes!22334))

(declare-fun b!4810700 () Bool)

(declare-fun e!3005225 () Bool)

(declare-fun e!3005227 () Bool)

(assert (=> b!4810700 (= e!3005225 e!3005227)))

(declare-fun res!2046323 () Bool)

(assert (=> b!4810700 (=> (not res!2046323) (not e!3005227))))

(declare-datatypes ((K!16154 0))(
  ( (K!16155 (val!21229 Int)) )
))
(declare-datatypes ((array!18594 0))(
  ( (array!18595 (arr!8295 (Array (_ BitVec 32) (_ BitVec 64))) (size!36541 (_ BitVec 32))) )
))
(declare-datatypes ((V!16400 0))(
  ( (V!16401 (val!21230 Int)) )
))
(declare-datatypes ((tuple2!57402 0))(
  ( (tuple2!57403 (_1!31995 K!16154) (_2!31995 V!16400)) )
))
(declare-datatypes ((List!54662 0))(
  ( (Nil!54538) (Cons!54538 (h!60970 tuple2!57402) (t!362142 List!54662)) )
))
(declare-datatypes ((array!18596 0))(
  ( (array!18597 (arr!8296 (Array (_ BitVec 32) List!54662)) (size!36542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10110 0))(
  ( (LongMapFixedSize!10111 (defaultEntry!5473 Int) (mask!15053 (_ BitVec 32)) (extraKeys!5330 (_ BitVec 32)) (zeroValue!5343 List!54662) (minValue!5343 List!54662) (_size!10135 (_ BitVec 32)) (_keys!5397 array!18594) (_values!5368 array!18596) (_vacant!5120 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19985 0))(
  ( (Cell!19986 (v!48851 LongMapFixedSize!10110)) )
))
(declare-datatypes ((MutLongMap!5055 0))(
  ( (LongMap!5055 (underlying!10317 Cell!19985)) (MutLongMapExt!5054 (__x!33263 Int)) )
))
(declare-datatypes ((Hashable!7066 0))(
  ( (HashableExt!7065 (__x!33264 Int)) )
))
(declare-datatypes ((Cell!19987 0))(
  ( (Cell!19988 (v!48852 MutLongMap!5055)) )
))
(declare-datatypes ((MutableMap!4939 0))(
  ( (MutableMapExt!4938 (__x!33265 Int)) (HashMap!4939 (underlying!10318 Cell!19987) (hashF!13340 Hashable!7066) (_size!10136 (_ BitVec 32)) (defaultValue!5110 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4939)

(declare-fun lt!1962665 () (_ BitVec 64))

(declare-fun contains!18262 (MutLongMap!5055 (_ BitVec 64)) Bool)

(assert (=> b!4810700 (= res!2046323 (contains!18262 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))

(declare-fun key!1652 () K!16154)

(declare-fun hash!5134 (Hashable!7066 K!16154) (_ BitVec 64))

(assert (=> b!4810700 (= lt!1962665 (hash!5134 (hashF!13340 thiss!41921) key!1652))))

(declare-fun e!3005224 () Bool)

(declare-fun e!3005228 () Bool)

(assert (=> b!4810701 (= e!3005224 (and e!3005228 tp!1360657))))

(declare-fun b!4810702 () Bool)

(declare-fun e!3005229 () Bool)

(declare-fun lt!1962667 () MutLongMap!5055)

(get-info :version)

(assert (=> b!4810702 (= e!3005228 (and e!3005229 ((_ is LongMap!5055) lt!1962667)))))

(assert (=> b!4810702 (= lt!1962667 (v!48852 (underlying!10318 thiss!41921)))))

(declare-fun b!4810703 () Bool)

(declare-fun res!2046322 () Bool)

(assert (=> b!4810703 (=> (not res!2046322) (not e!3005225))))

(declare-fun valid!4081 (MutableMap!4939) Bool)

(assert (=> b!4810703 (= res!2046322 (valid!4081 thiss!41921))))

(declare-fun b!4810704 () Bool)

(declare-fun e!3005231 () Bool)

(declare-fun e!3005230 () Bool)

(assert (=> b!4810704 (= e!3005231 e!3005230)))

(declare-fun res!2046326 () Bool)

(assert (=> b!4810704 (=> res!2046326 e!3005230)))

(declare-datatypes ((tuple2!57404 0))(
  ( (tuple2!57405 (_1!31996 (_ BitVec 64)) (_2!31996 List!54662)) )
))
(declare-datatypes ((List!54663 0))(
  ( (Nil!54539) (Cons!54539 (h!60971 tuple2!57404) (t!362143 List!54663)) )
))
(declare-datatypes ((ListLongMap!5603 0))(
  ( (ListLongMap!5604 (toList!7143 List!54663)) )
))
(declare-fun lt!1962666 () ListLongMap!5603)

(declare-fun isStrictlySorted!929 (List!54663) Bool)

(assert (=> b!4810704 (= res!2046326 (not (isStrictlySorted!929 (toList!7143 lt!1962666))))))

(declare-fun b!4810705 () Bool)

(declare-datatypes ((Option!13310 0))(
  ( (None!13309) (Some!13309 (v!48853 List!54662)) )
))
(declare-fun isDefined!10448 (Option!13310) Bool)

(declare-fun getValueByKey!2489 (List!54663 (_ BitVec 64)) Option!13310)

(assert (=> b!4810705 (= e!3005230 (not (isDefined!10448 (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665))))))

(declare-fun b!4810706 () Bool)

(assert (=> b!4810706 (= e!3005227 e!3005231)))

(declare-fun res!2046324 () Bool)

(assert (=> b!4810706 (=> (not res!2046324) (not e!3005231))))

(declare-fun contains!18263 (List!54663 tuple2!57404) Bool)

(declare-fun apply!13154 (MutLongMap!5055 (_ BitVec 64)) List!54662)

(assert (=> b!4810706 (= res!2046324 (not (contains!18263 (toList!7143 lt!1962666) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665)))))))

(declare-fun map!12418 (MutLongMap!5055) ListLongMap!5603)

(assert (=> b!4810706 (= lt!1962666 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))

(declare-fun mapNonEmpty!22334 () Bool)

(declare-fun tp!1360658 () Bool)

(declare-fun tp!1360660 () Bool)

(assert (=> mapNonEmpty!22334 (= mapRes!22334 (and tp!1360658 tp!1360660))))

(declare-fun mapKey!22334 () (_ BitVec 32))

(declare-fun mapValue!22334 () List!54662)

(declare-fun mapRest!22334 () (Array (_ BitVec 32) List!54662))

(assert (=> mapNonEmpty!22334 (= (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (store mapRest!22334 mapKey!22334 mapValue!22334))))

(declare-fun b!4810707 () Bool)

(declare-fun e!3005222 () Bool)

(declare-fun tp!1360656 () Bool)

(assert (=> b!4810707 (= e!3005222 (and tp!1360656 mapRes!22334))))

(declare-fun condMapEmpty!22334 () Bool)

(declare-fun mapDefault!22334 () List!54662)

(assert (=> b!4810707 (= condMapEmpty!22334 (= (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54662)) mapDefault!22334)))))

(declare-fun b!4810708 () Bool)

(declare-fun e!3005226 () Bool)

(declare-fun e!3005223 () Bool)

(assert (=> b!4810708 (= e!3005226 e!3005223)))

(declare-fun tp!1360659 () Bool)

(declare-fun tp!1360661 () Bool)

(declare-fun array_inv!5987 (array!18594) Bool)

(declare-fun array_inv!5988 (array!18596) Bool)

(assert (=> b!4810709 (= e!3005223 (and tp!1360655 tp!1360661 tp!1360659 (array_inv!5987 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (array_inv!5988 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) e!3005222))))

(declare-fun res!2046325 () Bool)

(assert (=> start!497302 (=> (not res!2046325) (not e!3005225))))

(assert (=> start!497302 (= res!2046325 ((_ is HashMap!4939) thiss!41921))))

(assert (=> start!497302 e!3005225))

(assert (=> start!497302 e!3005224))

(declare-fun tp_is_empty!33985 () Bool)

(assert (=> start!497302 tp_is_empty!33985))

(declare-fun b!4810710 () Bool)

(assert (=> b!4810710 (= e!3005229 e!3005226)))

(assert (= (and start!497302 res!2046325) b!4810703))

(assert (= (and b!4810703 res!2046322) b!4810700))

(assert (= (and b!4810700 res!2046323) b!4810706))

(assert (= (and b!4810706 res!2046324) b!4810704))

(assert (= (and b!4810704 (not res!2046326)) b!4810705))

(assert (= (and b!4810707 condMapEmpty!22334) mapIsEmpty!22334))

(assert (= (and b!4810707 (not condMapEmpty!22334)) mapNonEmpty!22334))

(assert (= b!4810709 b!4810707))

(assert (= b!4810708 b!4810709))

(assert (= b!4810710 b!4810708))

(assert (= (and b!4810702 ((_ is LongMap!5055) (v!48852 (underlying!10318 thiss!41921)))) b!4810710))

(assert (= b!4810701 b!4810702))

(assert (= (and start!497302 ((_ is HashMap!4939) thiss!41921)) b!4810701))

(declare-fun m!5796562 () Bool)

(assert (=> b!4810704 m!5796562))

(declare-fun m!5796564 () Bool)

(assert (=> b!4810700 m!5796564))

(declare-fun m!5796566 () Bool)

(assert (=> b!4810700 m!5796566))

(declare-fun m!5796568 () Bool)

(assert (=> b!4810706 m!5796568))

(declare-fun m!5796570 () Bool)

(assert (=> b!4810706 m!5796570))

(declare-fun m!5796572 () Bool)

(assert (=> b!4810706 m!5796572))

(declare-fun m!5796574 () Bool)

(assert (=> b!4810705 m!5796574))

(assert (=> b!4810705 m!5796574))

(declare-fun m!5796576 () Bool)

(assert (=> b!4810705 m!5796576))

(declare-fun m!5796578 () Bool)

(assert (=> mapNonEmpty!22334 m!5796578))

(declare-fun m!5796580 () Bool)

(assert (=> b!4810709 m!5796580))

(declare-fun m!5796582 () Bool)

(assert (=> b!4810709 m!5796582))

(declare-fun m!5796584 () Bool)

(assert (=> b!4810703 m!5796584))

(check-sat tp_is_empty!33985 (not b!4810700) (not b!4810707) (not b_next!130953) (not b!4810705) (not b!4810706) (not b!4810703) (not b!4810704) (not mapNonEmpty!22334) b_and!341947 (not b_next!130955) (not b!4810709) b_and!341949)
(check-sat b_and!341947 b_and!341949 (not b_next!130953) (not b_next!130955))
(get-model)

(declare-fun lt!1962670 () Bool)

(declare-fun d!1540330 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9776 (List!54663) (InoxSet tuple2!57404))

(assert (=> d!1540330 (= lt!1962670 (select (content!9776 (toList!7143 lt!1962666)) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun e!3005238 () Bool)

(assert (=> d!1540330 (= lt!1962670 e!3005238)))

(declare-fun res!2046331 () Bool)

(assert (=> d!1540330 (=> (not res!2046331) (not e!3005238))))

(assert (=> d!1540330 (= res!2046331 ((_ is Cons!54539) (toList!7143 lt!1962666)))))

(assert (=> d!1540330 (= (contains!18263 (toList!7143 lt!1962666) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))) lt!1962670)))

(declare-fun b!4810715 () Bool)

(declare-fun e!3005237 () Bool)

(assert (=> b!4810715 (= e!3005238 e!3005237)))

(declare-fun res!2046332 () Bool)

(assert (=> b!4810715 (=> res!2046332 e!3005237)))

(assert (=> b!4810715 (= res!2046332 (= (h!60971 (toList!7143 lt!1962666)) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun b!4810716 () Bool)

(assert (=> b!4810716 (= e!3005237 (contains!18263 (t!362143 (toList!7143 lt!1962666)) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(assert (= (and d!1540330 res!2046331) b!4810715))

(assert (= (and b!4810715 (not res!2046332)) b!4810716))

(declare-fun m!5796586 () Bool)

(assert (=> d!1540330 m!5796586))

(declare-fun m!5796588 () Bool)

(assert (=> d!1540330 m!5796588))

(declare-fun m!5796590 () Bool)

(assert (=> b!4810716 m!5796590))

(assert (=> b!4810706 d!1540330))

(declare-fun d!1540332 () Bool)

(declare-fun e!3005241 () Bool)

(assert (=> d!1540332 e!3005241))

(declare-fun c!819921 () Bool)

(assert (=> d!1540332 (= c!819921 (contains!18262 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))

(declare-fun lt!1962673 () List!54662)

(declare-fun apply!13155 (LongMapFixedSize!10110 (_ BitVec 64)) List!54662)

(assert (=> d!1540332 (= lt!1962673 (apply!13155 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(declare-fun valid!4082 (MutLongMap!5055) Bool)

(assert (=> d!1540332 (valid!4082 (v!48852 (underlying!10318 thiss!41921)))))

(assert (=> d!1540332 (= (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665) lt!1962673)))

(declare-fun b!4810721 () Bool)

(declare-fun get!18659 (Option!13310) List!54662)

(assert (=> b!4810721 (= e!3005241 (= lt!1962673 (get!18659 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))))

(declare-fun b!4810722 () Bool)

(declare-fun dynLambda!22136 (Int (_ BitVec 64)) List!54662)

(assert (=> b!4810722 (= e!3005241 (= lt!1962673 (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665)))))

(assert (=> b!4810722 ((_ is LongMap!5055) (v!48852 (underlying!10318 thiss!41921)))))

(assert (= (and d!1540332 c!819921) b!4810721))

(assert (= (and d!1540332 (not c!819921)) b!4810722))

(declare-fun b_lambda!188213 () Bool)

(assert (=> (not b_lambda!188213) (not b!4810722)))

(declare-fun t!362145 () Bool)

(declare-fun tb!257533 () Bool)

(assert (=> (and b!4810709 (= (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) t!362145) tb!257533))

(assert (=> b!4810722 t!362145))

(declare-fun result!319612 () Bool)

(declare-fun b_and!341951 () Bool)

(assert (= b_and!341947 (and (=> t!362145 result!319612) b_and!341951)))

(assert (=> d!1540332 m!5796564))

(declare-fun m!5796592 () Bool)

(assert (=> d!1540332 m!5796592))

(declare-fun m!5796594 () Bool)

(assert (=> d!1540332 m!5796594))

(assert (=> b!4810721 m!5796572))

(declare-fun m!5796596 () Bool)

(assert (=> b!4810721 m!5796596))

(assert (=> b!4810721 m!5796596))

(declare-fun m!5796598 () Bool)

(assert (=> b!4810721 m!5796598))

(declare-fun m!5796600 () Bool)

(assert (=> b!4810722 m!5796600))

(assert (=> b!4810706 d!1540332))

(declare-fun d!1540334 () Bool)

(declare-fun map!12419 (LongMapFixedSize!10110) ListLongMap!5603)

(assert (=> d!1540334 (= (map!12418 (v!48852 (underlying!10318 thiss!41921))) (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun bs!1160097 () Bool)

(assert (= bs!1160097 d!1540334))

(declare-fun m!5796602 () Bool)

(assert (=> bs!1160097 m!5796602))

(assert (=> b!4810706 d!1540334))

(declare-fun d!1540336 () Bool)

(declare-fun res!2046337 () Bool)

(declare-fun e!3005246 () Bool)

(assert (=> d!1540336 (=> res!2046337 e!3005246)))

(assert (=> d!1540336 (= res!2046337 (or ((_ is Nil!54539) (toList!7143 lt!1962666)) ((_ is Nil!54539) (t!362143 (toList!7143 lt!1962666)))))))

(assert (=> d!1540336 (= (isStrictlySorted!929 (toList!7143 lt!1962666)) e!3005246)))

(declare-fun b!4810727 () Bool)

(declare-fun e!3005247 () Bool)

(assert (=> b!4810727 (= e!3005246 e!3005247)))

(declare-fun res!2046338 () Bool)

(assert (=> b!4810727 (=> (not res!2046338) (not e!3005247))))

(assert (=> b!4810727 (= res!2046338 (bvslt (_1!31996 (h!60971 (toList!7143 lt!1962666))) (_1!31996 (h!60971 (t!362143 (toList!7143 lt!1962666))))))))

(declare-fun b!4810728 () Bool)

(assert (=> b!4810728 (= e!3005247 (isStrictlySorted!929 (t!362143 (toList!7143 lt!1962666))))))

(assert (= (and d!1540336 (not res!2046337)) b!4810727))

(assert (= (and b!4810727 res!2046338) b!4810728))

(declare-fun m!5796604 () Bool)

(assert (=> b!4810728 m!5796604))

(assert (=> b!4810704 d!1540336))

(declare-fun d!1540338 () Bool)

(declare-fun res!2046343 () Bool)

(declare-fun e!3005250 () Bool)

(assert (=> d!1540338 (=> (not res!2046343) (not e!3005250))))

(assert (=> d!1540338 (= res!2046343 (valid!4082 (v!48852 (underlying!10318 thiss!41921))))))

(assert (=> d!1540338 (= (valid!4081 thiss!41921) e!3005250)))

(declare-fun b!4810733 () Bool)

(declare-fun res!2046344 () Bool)

(assert (=> b!4810733 (=> (not res!2046344) (not e!3005250))))

(declare-fun lambda!233763 () Int)

(declare-fun forall!12394 (List!54663 Int) Bool)

(assert (=> b!4810733 (= res!2046344 (forall!12394 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lambda!233763))))

(declare-fun b!4810734 () Bool)

(declare-fun allKeysSameHashInMap!2409 (ListLongMap!5603 Hashable!7066) Bool)

(assert (=> b!4810734 (= e!3005250 (allKeysSameHashInMap!2409 (map!12418 (v!48852 (underlying!10318 thiss!41921))) (hashF!13340 thiss!41921)))))

(assert (= (and d!1540338 res!2046343) b!4810733))

(assert (= (and b!4810733 res!2046344) b!4810734))

(assert (=> d!1540338 m!5796594))

(assert (=> b!4810733 m!5796572))

(declare-fun m!5796606 () Bool)

(assert (=> b!4810733 m!5796606))

(assert (=> b!4810734 m!5796572))

(assert (=> b!4810734 m!5796572))

(declare-fun m!5796608 () Bool)

(assert (=> b!4810734 m!5796608))

(assert (=> b!4810703 d!1540338))

(declare-fun d!1540340 () Bool)

(declare-fun isEmpty!29551 (Option!13310) Bool)

(assert (=> d!1540340 (= (isDefined!10448 (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665)) (not (isEmpty!29551 (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665))))))

(declare-fun bs!1160098 () Bool)

(assert (= bs!1160098 d!1540340))

(assert (=> bs!1160098 m!5796574))

(declare-fun m!5796610 () Bool)

(assert (=> bs!1160098 m!5796610))

(assert (=> b!4810705 d!1540340))

(declare-fun b!4810746 () Bool)

(declare-fun e!3005256 () Option!13310)

(assert (=> b!4810746 (= e!3005256 None!13309)))

(declare-fun d!1540342 () Bool)

(declare-fun c!819926 () Bool)

(assert (=> d!1540342 (= c!819926 (and ((_ is Cons!54539) (toList!7143 lt!1962666)) (= (_1!31996 (h!60971 (toList!7143 lt!1962666))) lt!1962665)))))

(declare-fun e!3005255 () Option!13310)

(assert (=> d!1540342 (= (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665) e!3005255)))

(declare-fun b!4810745 () Bool)

(assert (=> b!4810745 (= e!3005256 (getValueByKey!2489 (t!362143 (toList!7143 lt!1962666)) lt!1962665))))

(declare-fun b!4810744 () Bool)

(assert (=> b!4810744 (= e!3005255 e!3005256)))

(declare-fun c!819927 () Bool)

(assert (=> b!4810744 (= c!819927 (and ((_ is Cons!54539) (toList!7143 lt!1962666)) (not (= (_1!31996 (h!60971 (toList!7143 lt!1962666))) lt!1962665))))))

(declare-fun b!4810743 () Bool)

(assert (=> b!4810743 (= e!3005255 (Some!13309 (_2!31996 (h!60971 (toList!7143 lt!1962666)))))))

(assert (= (and d!1540342 c!819926) b!4810743))

(assert (= (and d!1540342 (not c!819926)) b!4810744))

(assert (= (and b!4810744 c!819927) b!4810745))

(assert (= (and b!4810744 (not c!819927)) b!4810746))

(declare-fun m!5796612 () Bool)

(assert (=> b!4810745 m!5796612))

(assert (=> b!4810705 d!1540342))

(declare-fun d!1540344 () Bool)

(declare-fun lt!1962676 () Bool)

(declare-fun contains!18264 (ListLongMap!5603 (_ BitVec 64)) Bool)

(assert (=> d!1540344 (= lt!1962676 (contains!18264 (map!12418 (v!48852 (underlying!10318 thiss!41921))) lt!1962665))))

(declare-fun contains!18265 (LongMapFixedSize!10110 (_ BitVec 64)) Bool)

(assert (=> d!1540344 (= lt!1962676 (contains!18265 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(assert (=> d!1540344 (valid!4082 (v!48852 (underlying!10318 thiss!41921)))))

(assert (=> d!1540344 (= (contains!18262 (v!48852 (underlying!10318 thiss!41921)) lt!1962665) lt!1962676)))

(declare-fun bs!1160099 () Bool)

(assert (= bs!1160099 d!1540344))

(assert (=> bs!1160099 m!5796572))

(assert (=> bs!1160099 m!5796572))

(declare-fun m!5796614 () Bool)

(assert (=> bs!1160099 m!5796614))

(declare-fun m!5796616 () Bool)

(assert (=> bs!1160099 m!5796616))

(assert (=> bs!1160099 m!5796594))

(assert (=> b!4810700 d!1540344))

(declare-fun d!1540346 () Bool)

(declare-fun hash!5135 (Hashable!7066 K!16154) (_ BitVec 64))

(assert (=> d!1540346 (= (hash!5134 (hashF!13340 thiss!41921) key!1652) (hash!5135 (hashF!13340 thiss!41921) key!1652))))

(declare-fun bs!1160100 () Bool)

(assert (= bs!1160100 d!1540346))

(declare-fun m!5796618 () Bool)

(assert (=> bs!1160100 m!5796618))

(assert (=> b!4810700 d!1540346))

(declare-fun d!1540348 () Bool)

(assert (=> d!1540348 (= (array_inv!5987 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (bvsge (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4810709 d!1540348))

(declare-fun d!1540350 () Bool)

(assert (=> d!1540350 (= (array_inv!5988 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (bvsge (size!36542 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4810709 d!1540350))

(declare-fun tp_is_empty!33987 () Bool)

(declare-fun e!3005259 () Bool)

(declare-fun tp!1360664 () Bool)

(declare-fun b!4810751 () Bool)

(assert (=> b!4810751 (= e!3005259 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360664))))

(assert (=> b!4810707 (= tp!1360656 e!3005259)))

(assert (= (and b!4810707 ((_ is Cons!54538) mapDefault!22334)) b!4810751))

(declare-fun b!4810758 () Bool)

(declare-fun e!3005265 () Bool)

(declare-fun tp!1360672 () Bool)

(assert (=> b!4810758 (= e!3005265 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360672))))

(declare-fun mapNonEmpty!22337 () Bool)

(declare-fun mapRes!22337 () Bool)

(declare-fun tp!1360673 () Bool)

(assert (=> mapNonEmpty!22337 (= mapRes!22337 (and tp!1360673 e!3005265))))

(declare-fun mapValue!22337 () List!54662)

(declare-fun mapRest!22337 () (Array (_ BitVec 32) List!54662))

(declare-fun mapKey!22337 () (_ BitVec 32))

(assert (=> mapNonEmpty!22337 (= mapRest!22334 (store mapRest!22337 mapKey!22337 mapValue!22337))))

(declare-fun mapIsEmpty!22337 () Bool)

(assert (=> mapIsEmpty!22337 mapRes!22337))

(declare-fun b!4810759 () Bool)

(declare-fun tp!1360671 () Bool)

(declare-fun e!3005264 () Bool)

(assert (=> b!4810759 (= e!3005264 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360671))))

(declare-fun condMapEmpty!22337 () Bool)

(declare-fun mapDefault!22337 () List!54662)

(assert (=> mapNonEmpty!22334 (= condMapEmpty!22337 (= mapRest!22334 ((as const (Array (_ BitVec 32) List!54662)) mapDefault!22337)))))

(assert (=> mapNonEmpty!22334 (= tp!1360658 (and e!3005264 mapRes!22337))))

(assert (= (and mapNonEmpty!22334 condMapEmpty!22337) mapIsEmpty!22337))

(assert (= (and mapNonEmpty!22334 (not condMapEmpty!22337)) mapNonEmpty!22337))

(assert (= (and mapNonEmpty!22337 ((_ is Cons!54538) mapValue!22337)) b!4810758))

(assert (= (and mapNonEmpty!22334 ((_ is Cons!54538) mapDefault!22337)) b!4810759))

(declare-fun m!5796620 () Bool)

(assert (=> mapNonEmpty!22337 m!5796620))

(declare-fun b!4810760 () Bool)

(declare-fun e!3005266 () Bool)

(declare-fun tp!1360674 () Bool)

(assert (=> b!4810760 (= e!3005266 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360674))))

(assert (=> mapNonEmpty!22334 (= tp!1360660 e!3005266)))

(assert (= (and mapNonEmpty!22334 ((_ is Cons!54538) mapValue!22334)) b!4810760))

(declare-fun e!3005267 () Bool)

(declare-fun tp!1360675 () Bool)

(declare-fun b!4810761 () Bool)

(assert (=> b!4810761 (= e!3005267 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360675))))

(assert (=> b!4810709 (= tp!1360661 e!3005267)))

(assert (= (and b!4810709 ((_ is Cons!54538) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) b!4810761))

(declare-fun e!3005268 () Bool)

(declare-fun tp!1360676 () Bool)

(declare-fun b!4810762 () Bool)

(assert (=> b!4810762 (= e!3005268 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360676))))

(assert (=> b!4810709 (= tp!1360659 e!3005268)))

(assert (= (and b!4810709 ((_ is Cons!54538) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) b!4810762))

(declare-fun b_lambda!188215 () Bool)

(assert (= b_lambda!188213 (or (and b!4810709 b_free!130163) b_lambda!188215)))

(check-sat (not b!4810760) (not d!1540340) tp_is_empty!33987 (not d!1540330) (not b_lambda!188215) (not d!1540332) (not d!1540346) (not b!4810728) (not b!4810751) (not b!4810745) (not d!1540338) (not tb!257533) (not b_next!130955) b_and!341949 (not b!4810761) (not b!4810759) tp_is_empty!33985 (not b!4810733) (not b!4810762) (not b!4810758) (not d!1540334) (not b_next!130953) (not b!4810716) (not b!4810721) (not mapNonEmpty!22337) (not b!4810734) (not d!1540344) b_and!341951)
(check-sat b_and!341951 b_and!341949 (not b_next!130953) (not b_next!130955))
(get-model)

(declare-fun d!1540352 () Bool)

(assert (=> d!1540352 (= (get!18659 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665)) (v!48853 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665)))))

(assert (=> b!4810721 d!1540352))

(declare-fun b!4810766 () Bool)

(declare-fun e!3005270 () Option!13310)

(assert (=> b!4810766 (= e!3005270 None!13309)))

(declare-fun d!1540354 () Bool)

(declare-fun c!819928 () Bool)

(assert (=> d!1540354 (= c!819928 (and ((_ is Cons!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) (= (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)))))

(declare-fun e!3005269 () Option!13310)

(assert (=> d!1540354 (= (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665) e!3005269)))

(declare-fun b!4810765 () Bool)

(assert (=> b!4810765 (= e!3005270 (getValueByKey!2489 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(declare-fun b!4810764 () Bool)

(assert (=> b!4810764 (= e!3005269 e!3005270)))

(declare-fun c!819929 () Bool)

(assert (=> b!4810764 (= c!819929 (and ((_ is Cons!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) (not (= (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))))

(declare-fun b!4810763 () Bool)

(assert (=> b!4810763 (= e!3005269 (Some!13309 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))))

(assert (= (and d!1540354 c!819928) b!4810763))

(assert (= (and d!1540354 (not c!819928)) b!4810764))

(assert (= (and b!4810764 c!819929) b!4810765))

(assert (= (and b!4810764 (not c!819929)) b!4810766))

(declare-fun m!5796622 () Bool)

(assert (=> b!4810765 m!5796622))

(assert (=> b!4810721 d!1540354))

(assert (=> b!4810721 d!1540334))

(declare-fun d!1540356 () Bool)

(declare-fun e!3005275 () Bool)

(assert (=> d!1540356 e!3005275))

(declare-fun res!2046347 () Bool)

(assert (=> d!1540356 (=> res!2046347 e!3005275)))

(declare-fun lt!1962688 () Bool)

(assert (=> d!1540356 (= res!2046347 (not lt!1962688))))

(declare-fun lt!1962687 () Bool)

(assert (=> d!1540356 (= lt!1962688 lt!1962687)))

(declare-datatypes ((Unit!141553 0))(
  ( (Unit!141554) )
))
(declare-fun lt!1962685 () Unit!141553)

(declare-fun e!3005276 () Unit!141553)

(assert (=> d!1540356 (= lt!1962685 e!3005276)))

(declare-fun c!819932 () Bool)

(assert (=> d!1540356 (= c!819932 lt!1962687)))

(declare-fun containsKey!4149 (List!54663 (_ BitVec 64)) Bool)

(assert (=> d!1540356 (= lt!1962687 (containsKey!4149 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(assert (=> d!1540356 (= (contains!18264 (map!12418 (v!48852 (underlying!10318 thiss!41921))) lt!1962665) lt!1962688)))

(declare-fun b!4810773 () Bool)

(declare-fun lt!1962686 () Unit!141553)

(assert (=> b!4810773 (= e!3005276 lt!1962686)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (List!54663 (_ BitVec 64)) Unit!141553)

(assert (=> b!4810773 (= lt!1962686 (lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(assert (=> b!4810773 (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(declare-fun b!4810774 () Bool)

(declare-fun Unit!141555 () Unit!141553)

(assert (=> b!4810774 (= e!3005276 Unit!141555)))

(declare-fun b!4810775 () Bool)

(assert (=> b!4810775 (= e!3005275 (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665)))))

(assert (= (and d!1540356 c!819932) b!4810773))

(assert (= (and d!1540356 (not c!819932)) b!4810774))

(assert (= (and d!1540356 (not res!2046347)) b!4810775))

(declare-fun m!5796624 () Bool)

(assert (=> d!1540356 m!5796624))

(declare-fun m!5796626 () Bool)

(assert (=> b!4810773 m!5796626))

(assert (=> b!4810773 m!5796596))

(assert (=> b!4810773 m!5796596))

(declare-fun m!5796628 () Bool)

(assert (=> b!4810773 m!5796628))

(assert (=> b!4810775 m!5796596))

(assert (=> b!4810775 m!5796596))

(assert (=> b!4810775 m!5796628))

(assert (=> d!1540344 d!1540356))

(assert (=> d!1540344 d!1540334))

(declare-fun b!4810797 () Bool)

(declare-fun e!3005287 () Bool)

(assert (=> b!4810797 (= e!3005287 (ite (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4810798 () Bool)

(assert (=> b!4810798 false))

(declare-fun lt!1962720 () Unit!141553)

(declare-fun lt!1962732 () Unit!141553)

(assert (=> b!4810798 (= lt!1962720 lt!1962732)))

(declare-datatypes ((SeekEntryResult!29 0))(
  ( (Found!29 (index!1498 (_ BitVec 32))) (Undefined!29) (MissingZero!29 (index!1499 (_ BitVec 32))) (MissingVacant!29 (index!1500 (_ BitVec 32))) (Intermediate!29 (undefined!110 Bool) (index!1501 (_ BitVec 32)) (x!826818 (_ BitVec 32))) )
))
(declare-fun lt!1962731 () SeekEntryResult!29)

(declare-fun lt!1962722 () (_ BitVec 32))

(assert (=> b!4810798 (and ((_ is Found!29) lt!1962731) (= (index!1498 lt!1962731) lt!1962722))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18594 (_ BitVec 32)) SeekEntryResult!29)

(assert (=> b!4810798 (= lt!1962731 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!18594 (_ BitVec 32)) Unit!141553)

(assert (=> b!4810798 (= lt!1962732 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1962665 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962724 () Unit!141553)

(declare-fun lt!1962726 () Unit!141553)

(assert (=> b!4810798 (= lt!1962724 lt!1962726)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18594 (_ BitVec 32)) Bool)

(assert (=> b!4810798 (arrayForallSeekEntryOrOpenFound!0 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!18594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!141553)

(assert (=> b!4810798 (= lt!1962726 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 lt!1962722))))

(declare-fun arrayScanForKey!0 (array!18594 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4810798 (= lt!1962722 (arrayScanForKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000))))

(declare-fun lt!1962725 () Unit!141553)

(declare-fun lt!1962729 () Unit!141553)

(assert (=> b!4810798 (= lt!1962725 lt!1962729)))

(assert (=> b!4810798 e!3005287))

(declare-fun c!819944 () Bool)

(assert (=> b!4810798 (= c!819944 (and (not (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!22 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64) Int) Unit!141553)

(assert (=> b!4810798 (= lt!1962729 (lemmaKeyInListMapIsInArray!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun e!3005288 () Unit!141553)

(declare-fun Unit!141556 () Unit!141553)

(assert (=> b!4810798 (= e!3005288 Unit!141556)))

(declare-fun bm!335768 () Bool)

(declare-fun call!335774 () Bool)

(declare-fun arrayContainsKey!0 (array!18594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!335768 (= call!335774 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000))))

(declare-fun b!4810799 () Bool)

(declare-fun e!3005289 () Bool)

(assert (=> b!4810799 (= e!3005289 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4810800 () Bool)

(declare-fun e!3005291 () Bool)

(assert (=> b!4810800 (= e!3005291 false)))

(declare-fun c!819943 () Bool)

(declare-fun call!335775 () Bool)

(assert (=> b!4810800 (= c!819943 call!335775)))

(declare-fun lt!1962721 () Unit!141553)

(assert (=> b!4810800 (= lt!1962721 e!3005288)))

(declare-fun b!4810801 () Bool)

(declare-fun Unit!141557 () Unit!141553)

(assert (=> b!4810801 (= e!3005288 Unit!141557)))

(declare-fun b!4810802 () Bool)

(declare-fun e!3005290 () Bool)

(assert (=> b!4810802 (= e!3005290 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!1962733 () SeekEntryResult!29)

(declare-fun bm!335769 () Bool)

(declare-fun call!335773 () ListLongMap!5603)

(declare-fun c!819946 () Bool)

(assert (=> bm!335769 (= call!335775 (contains!18264 call!335773 (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665)))))

(declare-fun bm!335770 () Bool)

(declare-fun getCurrentListMap!32 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 32) Int) ListLongMap!5603)

(assert (=> bm!335770 (= call!335773 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun d!1540358 () Bool)

(declare-fun lt!1962730 () Bool)

(assert (=> d!1540358 (= lt!1962730 (contains!18264 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(assert (=> d!1540358 (= lt!1962730 e!3005289)))

(declare-fun c!819947 () Bool)

(assert (=> d!1540358 (= c!819947 (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun valid!4083 (LongMapFixedSize!10110) Bool)

(assert (=> d!1540358 (valid!4083 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))

(assert (=> d!1540358 (= (contains!18265 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665) lt!1962730)))

(declare-fun b!4810796 () Bool)

(assert (=> b!4810796 (= e!3005287 call!335774)))

(declare-fun b!4810803 () Bool)

(assert (=> b!4810803 (= e!3005289 e!3005290)))

(declare-fun c!819945 () Bool)

(assert (=> b!4810803 (= c!819945 (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4810804 () Bool)

(assert (=> b!4810804 (= e!3005291 true)))

(declare-fun lt!1962727 () Unit!141553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18594 (_ BitVec 64) (_ BitVec 32)) Unit!141553)

(assert (=> b!4810804 (= lt!1962727 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962733)))))

(assert (=> b!4810804 call!335774))

(declare-fun lt!1962728 () Unit!141553)

(assert (=> b!4810804 (= lt!1962728 lt!1962727)))

(declare-fun lt!1962723 () Unit!141553)

(declare-fun lemmaValidKeyInArrayIsInListMap!22 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 32) Int) Unit!141553)

(assert (=> b!4810804 (= lt!1962723 (lemmaValidKeyInArrayIsInListMap!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962733) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> b!4810804 call!335775))

(declare-fun lt!1962719 () Unit!141553)

(assert (=> b!4810804 (= lt!1962719 lt!1962723)))

(declare-fun b!4810805 () Bool)

(assert (=> b!4810805 (= c!819946 ((_ is Found!29) lt!1962733))))

(assert (=> b!4810805 (= lt!1962733 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> b!4810805 (= e!3005290 e!3005291)))

(assert (= (and d!1540358 c!819947) b!4810799))

(assert (= (and d!1540358 (not c!819947)) b!4810803))

(assert (= (and b!4810803 c!819945) b!4810802))

(assert (= (and b!4810803 (not c!819945)) b!4810805))

(assert (= (and b!4810805 c!819946) b!4810804))

(assert (= (and b!4810805 (not c!819946)) b!4810800))

(assert (= (and b!4810800 c!819943) b!4810798))

(assert (= (and b!4810800 (not c!819943)) b!4810801))

(assert (= (and b!4810798 c!819944) b!4810796))

(assert (= (and b!4810798 (not c!819944)) b!4810797))

(assert (= (or b!4810804 b!4810796) bm!335768))

(assert (= (or b!4810804 b!4810800) bm!335770))

(assert (= (or b!4810804 b!4810800) bm!335769))

(declare-fun m!5796630 () Bool)

(assert (=> b!4810804 m!5796630))

(declare-fun m!5796632 () Bool)

(assert (=> b!4810804 m!5796632))

(declare-fun m!5796634 () Bool)

(assert (=> bm!335770 m!5796634))

(declare-fun m!5796636 () Bool)

(assert (=> bm!335769 m!5796636))

(declare-fun m!5796638 () Bool)

(assert (=> bm!335769 m!5796638))

(declare-fun m!5796640 () Bool)

(assert (=> b!4810798 m!5796640))

(declare-fun m!5796642 () Bool)

(assert (=> b!4810798 m!5796642))

(declare-fun m!5796644 () Bool)

(assert (=> b!4810798 m!5796644))

(declare-fun m!5796646 () Bool)

(assert (=> b!4810798 m!5796646))

(declare-fun m!5796648 () Bool)

(assert (=> b!4810798 m!5796648))

(declare-fun m!5796650 () Bool)

(assert (=> b!4810798 m!5796650))

(assert (=> d!1540358 m!5796602))

(assert (=> d!1540358 m!5796602))

(declare-fun m!5796652 () Bool)

(assert (=> d!1540358 m!5796652))

(declare-fun m!5796654 () Bool)

(assert (=> d!1540358 m!5796654))

(assert (=> b!4810805 m!5796640))

(declare-fun m!5796656 () Bool)

(assert (=> bm!335768 m!5796656))

(assert (=> d!1540344 d!1540358))

(declare-fun d!1540360 () Bool)

(assert (=> d!1540360 (= (valid!4082 (v!48852 (underlying!10318 thiss!41921))) (valid!4083 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun bs!1160101 () Bool)

(assert (= bs!1160101 d!1540360))

(assert (=> bs!1160101 m!5796654))

(assert (=> d!1540344 d!1540360))

(declare-fun d!1540362 () Bool)

(declare-fun c!819950 () Bool)

(assert (=> d!1540362 (= c!819950 ((_ is Nil!54539) (toList!7143 lt!1962666)))))

(declare-fun e!3005294 () (InoxSet tuple2!57404))

(assert (=> d!1540362 (= (content!9776 (toList!7143 lt!1962666)) e!3005294)))

(declare-fun b!4810810 () Bool)

(assert (=> b!4810810 (= e!3005294 ((as const (Array tuple2!57404 Bool)) false))))

(declare-fun b!4810811 () Bool)

(assert (=> b!4810811 (= e!3005294 ((_ map or) (store ((as const (Array tuple2!57404 Bool)) false) (h!60971 (toList!7143 lt!1962666)) true) (content!9776 (t!362143 (toList!7143 lt!1962666)))))))

(assert (= (and d!1540362 c!819950) b!4810810))

(assert (= (and d!1540362 (not c!819950)) b!4810811))

(declare-fun m!5796658 () Bool)

(assert (=> b!4810811 m!5796658))

(declare-fun m!5796660 () Bool)

(assert (=> b!4810811 m!5796660))

(assert (=> d!1540330 d!1540362))

(declare-fun d!1540364 () Bool)

(assert (=> d!1540364 (= (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun bs!1160102 () Bool)

(assert (= bs!1160102 d!1540364))

(assert (=> bs!1160102 m!5796634))

(assert (=> d!1540334 d!1540364))

(declare-fun d!1540366 () Bool)

(declare-fun res!2046348 () Bool)

(declare-fun e!3005295 () Bool)

(assert (=> d!1540366 (=> res!2046348 e!3005295)))

(assert (=> d!1540366 (= res!2046348 (or ((_ is Nil!54539) (t!362143 (toList!7143 lt!1962666))) ((_ is Nil!54539) (t!362143 (t!362143 (toList!7143 lt!1962666))))))))

(assert (=> d!1540366 (= (isStrictlySorted!929 (t!362143 (toList!7143 lt!1962666))) e!3005295)))

(declare-fun b!4810812 () Bool)

(declare-fun e!3005296 () Bool)

(assert (=> b!4810812 (= e!3005295 e!3005296)))

(declare-fun res!2046349 () Bool)

(assert (=> b!4810812 (=> (not res!2046349) (not e!3005296))))

(assert (=> b!4810812 (= res!2046349 (bvslt (_1!31996 (h!60971 (t!362143 (toList!7143 lt!1962666)))) (_1!31996 (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666)))))))))

(declare-fun b!4810813 () Bool)

(assert (=> b!4810813 (= e!3005296 (isStrictlySorted!929 (t!362143 (t!362143 (toList!7143 lt!1962666)))))))

(assert (= (and d!1540366 (not res!2046348)) b!4810812))

(assert (= (and b!4810812 res!2046349) b!4810813))

(declare-fun m!5796662 () Bool)

(assert (=> b!4810813 m!5796662))

(assert (=> b!4810728 d!1540366))

(declare-fun lt!1962734 () Bool)

(declare-fun d!1540368 () Bool)

(assert (=> d!1540368 (= lt!1962734 (select (content!9776 (t!362143 (toList!7143 lt!1962666))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun e!3005298 () Bool)

(assert (=> d!1540368 (= lt!1962734 e!3005298)))

(declare-fun res!2046350 () Bool)

(assert (=> d!1540368 (=> (not res!2046350) (not e!3005298))))

(assert (=> d!1540368 (= res!2046350 ((_ is Cons!54539) (t!362143 (toList!7143 lt!1962666))))))

(assert (=> d!1540368 (= (contains!18263 (t!362143 (toList!7143 lt!1962666)) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))) lt!1962734)))

(declare-fun b!4810814 () Bool)

(declare-fun e!3005297 () Bool)

(assert (=> b!4810814 (= e!3005298 e!3005297)))

(declare-fun res!2046351 () Bool)

(assert (=> b!4810814 (=> res!2046351 e!3005297)))

(assert (=> b!4810814 (= res!2046351 (= (h!60971 (t!362143 (toList!7143 lt!1962666))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun b!4810815 () Bool)

(assert (=> b!4810815 (= e!3005297 (contains!18263 (t!362143 (t!362143 (toList!7143 lt!1962666))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(assert (= (and d!1540368 res!2046350) b!4810814))

(assert (= (and b!4810814 (not res!2046351)) b!4810815))

(assert (=> d!1540368 m!5796660))

(declare-fun m!5796664 () Bool)

(assert (=> d!1540368 m!5796664))

(declare-fun m!5796666 () Bool)

(assert (=> b!4810815 m!5796666))

(assert (=> b!4810716 d!1540368))

(declare-fun d!1540370 () Bool)

(declare-fun res!2046356 () Bool)

(declare-fun e!3005303 () Bool)

(assert (=> d!1540370 (=> res!2046356 e!3005303)))

(assert (=> d!1540370 (= res!2046356 ((_ is Nil!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540370 (= (forall!12394 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lambda!233763) e!3005303)))

(declare-fun b!4810820 () Bool)

(declare-fun e!3005304 () Bool)

(assert (=> b!4810820 (= e!3005303 e!3005304)))

(declare-fun res!2046357 () Bool)

(assert (=> b!4810820 (=> (not res!2046357) (not e!3005304))))

(declare-fun dynLambda!22137 (Int tuple2!57404) Bool)

(assert (=> b!4810820 (= res!2046357 (dynLambda!22137 lambda!233763 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810821 () Bool)

(assert (=> b!4810821 (= e!3005304 (forall!12394 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lambda!233763))))

(assert (= (and d!1540370 (not res!2046356)) b!4810820))

(assert (= (and b!4810820 res!2046357) b!4810821))

(declare-fun b_lambda!188217 () Bool)

(assert (=> (not b_lambda!188217) (not b!4810820)))

(declare-fun m!5796668 () Bool)

(assert (=> b!4810820 m!5796668))

(declare-fun m!5796670 () Bool)

(assert (=> b!4810821 m!5796670))

(assert (=> b!4810733 d!1540370))

(assert (=> b!4810733 d!1540334))

(declare-fun bs!1160103 () Bool)

(declare-fun d!1540372 () Bool)

(assert (= bs!1160103 (and d!1540372 b!4810733)))

(declare-fun lambda!233766 () Int)

(assert (=> bs!1160103 (not (= lambda!233766 lambda!233763))))

(assert (=> d!1540372 true))

(assert (=> d!1540372 (= (allKeysSameHashInMap!2409 (map!12418 (v!48852 (underlying!10318 thiss!41921))) (hashF!13340 thiss!41921)) (forall!12394 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lambda!233766))))

(declare-fun bs!1160104 () Bool)

(assert (= bs!1160104 d!1540372))

(declare-fun m!5796672 () Bool)

(assert (=> bs!1160104 m!5796672))

(assert (=> b!4810734 d!1540372))

(assert (=> b!4810734 d!1540334))

(declare-fun b!4810827 () Bool)

(declare-fun e!3005306 () Option!13310)

(assert (=> b!4810827 (= e!3005306 None!13309)))

(declare-fun d!1540374 () Bool)

(declare-fun c!819951 () Bool)

(assert (=> d!1540374 (= c!819951 (and ((_ is Cons!54539) (t!362143 (toList!7143 lt!1962666))) (= (_1!31996 (h!60971 (t!362143 (toList!7143 lt!1962666)))) lt!1962665)))))

(declare-fun e!3005305 () Option!13310)

(assert (=> d!1540374 (= (getValueByKey!2489 (t!362143 (toList!7143 lt!1962666)) lt!1962665) e!3005305)))

(declare-fun b!4810826 () Bool)

(assert (=> b!4810826 (= e!3005306 (getValueByKey!2489 (t!362143 (t!362143 (toList!7143 lt!1962666))) lt!1962665))))

(declare-fun b!4810825 () Bool)

(assert (=> b!4810825 (= e!3005305 e!3005306)))

(declare-fun c!819952 () Bool)

(assert (=> b!4810825 (= c!819952 (and ((_ is Cons!54539) (t!362143 (toList!7143 lt!1962666))) (not (= (_1!31996 (h!60971 (t!362143 (toList!7143 lt!1962666)))) lt!1962665))))))

(declare-fun b!4810824 () Bool)

(assert (=> b!4810824 (= e!3005305 (Some!13309 (_2!31996 (h!60971 (t!362143 (toList!7143 lt!1962666))))))))

(assert (= (and d!1540374 c!819951) b!4810824))

(assert (= (and d!1540374 (not c!819951)) b!4810825))

(assert (= (and b!4810825 c!819952) b!4810826))

(assert (= (and b!4810825 (not c!819952)) b!4810827))

(declare-fun m!5796674 () Bool)

(assert (=> b!4810826 m!5796674))

(assert (=> b!4810745 d!1540374))

(assert (=> d!1540332 d!1540344))

(declare-fun b!4810864 () Bool)

(declare-fun c!819973 () Bool)

(assert (=> b!4810864 (= c!819973 (and (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!3005329 () List!54662)

(declare-fun e!3005335 () List!54662)

(assert (=> b!4810864 (= e!3005329 e!3005335)))

(declare-fun b!4810865 () Bool)

(assert (=> b!4810865 (= e!3005329 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun b!4810866 () Bool)

(assert (=> b!4810866 (= e!3005335 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun b!4810867 () Bool)

(declare-fun res!2046369 () Bool)

(declare-fun e!3005333 () Bool)

(assert (=> b!4810867 (=> (not res!2046369) (not e!3005333))))

(assert (=> b!4810867 (= res!2046369 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000))))

(declare-fun e!3005332 () Bool)

(assert (=> b!4810867 (= e!3005332 e!3005333)))

(declare-fun b!4810868 () Bool)

(declare-fun e!3005337 () List!54662)

(declare-fun e!3005331 () List!54662)

(assert (=> b!4810868 (= e!3005337 e!3005331)))

(declare-fun lt!1962758 () SeekEntryResult!29)

(assert (=> b!4810868 (= lt!1962758 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962764 () Unit!141553)

(declare-fun lemmaSeekEntryGivesInRangeIndex!17 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64)) Unit!141553)

(assert (=> b!4810868 (= lt!1962764 (lemmaSeekEntryGivesInRangeIndex!17 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(declare-fun lt!1962767 () SeekEntryResult!29)

(assert (=> b!4810868 (= lt!1962767 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun res!2046366 () Bool)

(assert (=> b!4810868 (= res!2046366 (not ((_ is Found!29) lt!1962767)))))

(declare-fun e!3005339 () Bool)

(assert (=> b!4810868 (=> res!2046366 e!3005339)))

(assert (=> b!4810868 e!3005339))

(declare-fun lt!1962760 () Unit!141553)

(assert (=> b!4810868 (= lt!1962760 lt!1962764)))

(declare-fun c!819971 () Bool)

(assert (=> b!4810868 (= c!819971 ((_ is Found!29) lt!1962758))))

(declare-fun e!3005338 () Bool)

(declare-fun b!4810869 () Bool)

(declare-fun lt!1962762 () List!54662)

(assert (=> b!4810869 (= e!3005338 (= lt!1962762 (get!18659 (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))))

(declare-fun bm!335779 () Bool)

(declare-fun call!335784 () ListLongMap!5603)

(assert (=> bm!335779 (= call!335784 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810870 () Bool)

(declare-fun e!3005330 () Bool)

(declare-fun e!3005336 () Bool)

(assert (=> b!4810870 (= e!3005330 e!3005336)))

(declare-fun res!2046368 () Bool)

(assert (=> b!4810870 (= res!2046368 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4810870 (=> (not res!2046368) (not e!3005336))))

(declare-fun bm!335780 () Bool)

(declare-fun call!335786 () ListLongMap!5603)

(assert (=> bm!335780 (= call!335786 call!335784)))

(declare-fun call!335787 () List!54662)

(declare-fun c!819972 () Bool)

(declare-fun bm!335781 () Bool)

(declare-fun apply!13156 (ListLongMap!5603 (_ BitVec 64)) List!54662)

(assert (=> bm!335781 (= call!335787 (apply!13156 (ite c!819972 call!335784 call!335786) lt!1962665))))

(declare-fun b!4810872 () Bool)

(assert (=> b!4810872 (= e!3005336 (= call!335787 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810873 () Bool)

(assert (=> b!4810873 (= e!3005331 (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(declare-fun b!4810874 () Bool)

(assert (=> b!4810874 (= e!3005338 (= lt!1962762 (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665)))))

(declare-fun call!335785 () List!54662)

(declare-fun b!4810875 () Bool)

(assert (=> b!4810875 (= e!3005333 (= call!335785 (select (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(declare-fun b!4810876 () Bool)

(assert (=> b!4810876 (= e!3005335 (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(declare-fun b!4810877 () Bool)

(declare-fun res!2046367 () Bool)

(declare-fun e!3005334 () Bool)

(assert (=> b!4810877 (=> (not res!2046367) (not e!3005334))))

(assert (=> b!4810877 (= res!2046367 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4810877 (= e!3005332 e!3005334)))

(declare-fun d!1540376 () Bool)

(assert (=> d!1540376 e!3005338))

(declare-fun c!819970 () Bool)

(assert (=> d!1540376 (= c!819970 (contains!18265 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(assert (=> d!1540376 (= lt!1962762 e!3005337)))

(declare-fun c!819968 () Bool)

(assert (=> d!1540376 (= c!819968 (= lt!1962665 (bvneg lt!1962665)))))

(assert (=> d!1540376 (valid!4083 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))

(assert (=> d!1540376 (= (apply!13155 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665) lt!1962762)))

(declare-fun b!4810871 () Bool)

(assert (=> b!4810871 (= e!3005334 (= call!335785 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810878 () Bool)

(assert (=> b!4810878 (= e!3005337 e!3005329)))

(declare-fun c!819969 () Bool)

(assert (=> b!4810878 (= c!819969 (and (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4810879 () Bool)

(declare-fun lt!1962761 () Unit!141553)

(declare-fun lt!1962766 () Unit!141553)

(assert (=> b!4810879 (= lt!1962761 lt!1962766)))

(assert (=> b!4810879 e!3005330))

(assert (=> b!4810879 (= c!819972 (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!17 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64) (_ BitVec 32) Int) Unit!141553)

(assert (=> b!4810879 (= lt!1962766 (lemmaKeyInListMapThenSameValueInArray!17 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962757 () Unit!141553)

(declare-fun lt!1962759 () Unit!141553)

(assert (=> b!4810879 (= lt!1962757 lt!1962759)))

(assert (=> b!4810879 (contains!18264 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758)))))

(assert (=> b!4810879 (= lt!1962759 (lemmaValidKeyInArrayIsInListMap!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962765 () Unit!141553)

(declare-fun lt!1962763 () Unit!141553)

(assert (=> b!4810879 (= lt!1962765 lt!1962763)))

(assert (=> b!4810879 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000)))

(assert (=> b!4810879 (= lt!1962763 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758)))))

(assert (=> b!4810879 (= e!3005331 (select (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758)))))

(declare-fun bm!335782 () Bool)

(assert (=> bm!335782 (= call!335785 call!335787)))

(declare-fun b!4810880 () Bool)

(assert (=> b!4810880 (= e!3005330 e!3005332)))

(declare-fun c!819967 () Bool)

(assert (=> b!4810880 (= c!819967 (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4810881 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4810881 (= e!3005339 (inRange!0 (index!1498 lt!1962767) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (= (and d!1540376 c!819968) b!4810878))

(assert (= (and d!1540376 (not c!819968)) b!4810868))

(assert (= (and b!4810878 c!819969) b!4810865))

(assert (= (and b!4810878 (not c!819969)) b!4810864))

(assert (= (and b!4810864 c!819973) b!4810866))

(assert (= (and b!4810864 (not c!819973)) b!4810876))

(assert (= (and b!4810868 (not res!2046366)) b!4810881))

(assert (= (and b!4810868 c!819971) b!4810879))

(assert (= (and b!4810868 (not c!819971)) b!4810873))

(assert (= (and b!4810879 c!819972) b!4810870))

(assert (= (and b!4810879 (not c!819972)) b!4810880))

(assert (= (and b!4810870 res!2046368) b!4810872))

(assert (= (and b!4810880 c!819967) b!4810877))

(assert (= (and b!4810880 (not c!819967)) b!4810867))

(assert (= (and b!4810877 res!2046367) b!4810871))

(assert (= (and b!4810867 res!2046369) b!4810875))

(assert (= (or b!4810871 b!4810875) bm!335780))

(assert (= (or b!4810871 b!4810875) bm!335782))

(assert (= (or b!4810872 bm!335780) bm!335779))

(assert (= (or b!4810872 bm!335782) bm!335781))

(assert (= (and d!1540376 c!819970) b!4810869))

(assert (= (and d!1540376 (not c!819970)) b!4810874))

(declare-fun b_lambda!188219 () Bool)

(assert (=> (not b_lambda!188219) (not b!4810873)))

(assert (=> b!4810873 t!362145))

(declare-fun b_and!341953 () Bool)

(assert (= b_and!341951 (and (=> t!362145 result!319612) b_and!341953)))

(declare-fun b_lambda!188221 () Bool)

(assert (=> (not b_lambda!188221) (not b!4810874)))

(assert (=> b!4810874 t!362145))

(declare-fun b_and!341955 () Bool)

(assert (= b_and!341953 (and (=> t!362145 result!319612) b_and!341955)))

(declare-fun b_lambda!188223 () Bool)

(assert (=> (not b_lambda!188223) (not b!4810876)))

(assert (=> b!4810876 t!362145))

(declare-fun b_and!341957 () Bool)

(assert (= b_and!341955 (and (=> t!362145 result!319612) b_and!341957)))

(declare-fun m!5796676 () Bool)

(assert (=> b!4810875 m!5796676))

(declare-fun m!5796678 () Bool)

(assert (=> b!4810881 m!5796678))

(assert (=> b!4810876 m!5796600))

(assert (=> b!4810874 m!5796600))

(assert (=> b!4810867 m!5796656))

(assert (=> b!4810868 m!5796640))

(declare-fun m!5796680 () Bool)

(assert (=> b!4810868 m!5796680))

(assert (=> d!1540376 m!5796616))

(assert (=> d!1540376 m!5796654))

(assert (=> bm!335779 m!5796634))

(assert (=> b!4810869 m!5796602))

(declare-fun m!5796682 () Bool)

(assert (=> b!4810869 m!5796682))

(assert (=> b!4810869 m!5796682))

(declare-fun m!5796684 () Bool)

(assert (=> b!4810869 m!5796684))

(declare-fun m!5796686 () Bool)

(assert (=> bm!335781 m!5796686))

(assert (=> b!4810873 m!5796600))

(declare-fun m!5796688 () Bool)

(assert (=> b!4810879 m!5796688))

(declare-fun m!5796690 () Bool)

(assert (=> b!4810879 m!5796690))

(assert (=> b!4810879 m!5796676))

(assert (=> b!4810879 m!5796634))

(declare-fun m!5796692 () Bool)

(assert (=> b!4810879 m!5796692))

(assert (=> b!4810879 m!5796634))

(assert (=> b!4810879 m!5796690))

(declare-fun m!5796694 () Bool)

(assert (=> b!4810879 m!5796694))

(declare-fun m!5796696 () Bool)

(assert (=> b!4810879 m!5796696))

(assert (=> b!4810879 m!5796656))

(assert (=> d!1540332 d!1540376))

(assert (=> d!1540332 d!1540360))

(declare-fun d!1540378 () Bool)

(assert (=> d!1540378 (= (isEmpty!29551 (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665)) (not ((_ is Some!13309) (getValueByKey!2489 (toList!7143 lt!1962666) lt!1962665))))))

(assert (=> d!1540340 d!1540378))

(assert (=> d!1540338 d!1540360))

(declare-fun d!1540380 () Bool)

(declare-fun choose!34854 (Hashable!7066 K!16154) (_ BitVec 64))

(assert (=> d!1540380 (= (hash!5135 (hashF!13340 thiss!41921) key!1652) (choose!34854 (hashF!13340 thiss!41921) key!1652))))

(declare-fun bs!1160105 () Bool)

(assert (= bs!1160105 d!1540380))

(declare-fun m!5796698 () Bool)

(assert (=> bs!1160105 m!5796698))

(assert (=> d!1540346 d!1540380))

(declare-fun b!4810882 () Bool)

(declare-fun tp!1360677 () Bool)

(declare-fun e!3005340 () Bool)

(assert (=> b!4810882 (= e!3005340 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360677))))

(assert (=> b!4810751 (= tp!1360664 e!3005340)))

(assert (= (and b!4810751 ((_ is Cons!54538) (t!362142 mapDefault!22334))) b!4810882))

(declare-fun e!3005341 () Bool)

(declare-fun b!4810883 () Bool)

(declare-fun tp!1360678 () Bool)

(assert (=> b!4810883 (= e!3005341 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360678))))

(assert (=> b!4810761 (= tp!1360675 e!3005341)))

(assert (= (and b!4810761 ((_ is Cons!54538) (t!362142 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))) b!4810883))

(declare-fun tp!1360679 () Bool)

(declare-fun e!3005342 () Bool)

(declare-fun b!4810884 () Bool)

(assert (=> b!4810884 (= e!3005342 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360679))))

(assert (=> tb!257533 (= result!319612 e!3005342)))

(assert (= (and tb!257533 ((_ is Cons!54538) (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))) b!4810884))

(declare-fun tp!1360681 () Bool)

(declare-fun e!3005344 () Bool)

(declare-fun b!4810885 () Bool)

(assert (=> b!4810885 (= e!3005344 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360681))))

(declare-fun mapNonEmpty!22338 () Bool)

(declare-fun mapRes!22338 () Bool)

(declare-fun tp!1360682 () Bool)

(assert (=> mapNonEmpty!22338 (= mapRes!22338 (and tp!1360682 e!3005344))))

(declare-fun mapKey!22338 () (_ BitVec 32))

(declare-fun mapRest!22338 () (Array (_ BitVec 32) List!54662))

(declare-fun mapValue!22338 () List!54662)

(assert (=> mapNonEmpty!22338 (= mapRest!22337 (store mapRest!22338 mapKey!22338 mapValue!22338))))

(declare-fun mapIsEmpty!22338 () Bool)

(assert (=> mapIsEmpty!22338 mapRes!22338))

(declare-fun e!3005343 () Bool)

(declare-fun tp!1360680 () Bool)

(declare-fun b!4810886 () Bool)

(assert (=> b!4810886 (= e!3005343 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360680))))

(declare-fun condMapEmpty!22338 () Bool)

(declare-fun mapDefault!22338 () List!54662)

(assert (=> mapNonEmpty!22337 (= condMapEmpty!22338 (= mapRest!22337 ((as const (Array (_ BitVec 32) List!54662)) mapDefault!22338)))))

(assert (=> mapNonEmpty!22337 (= tp!1360673 (and e!3005343 mapRes!22338))))

(assert (= (and mapNonEmpty!22337 condMapEmpty!22338) mapIsEmpty!22338))

(assert (= (and mapNonEmpty!22337 (not condMapEmpty!22338)) mapNonEmpty!22338))

(assert (= (and mapNonEmpty!22338 ((_ is Cons!54538) mapValue!22338)) b!4810885))

(assert (= (and mapNonEmpty!22337 ((_ is Cons!54538) mapDefault!22338)) b!4810886))

(declare-fun m!5796700 () Bool)

(assert (=> mapNonEmpty!22338 m!5796700))

(declare-fun b!4810887 () Bool)

(declare-fun tp!1360683 () Bool)

(declare-fun e!3005345 () Bool)

(assert (=> b!4810887 (= e!3005345 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360683))))

(assert (=> b!4810758 (= tp!1360672 e!3005345)))

(assert (= (and b!4810758 ((_ is Cons!54538) (t!362142 mapValue!22337))) b!4810887))

(declare-fun e!3005346 () Bool)

(declare-fun tp!1360684 () Bool)

(declare-fun b!4810888 () Bool)

(assert (=> b!4810888 (= e!3005346 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360684))))

(assert (=> b!4810760 (= tp!1360674 e!3005346)))

(assert (= (and b!4810760 ((_ is Cons!54538) (t!362142 mapValue!22334))) b!4810888))

(declare-fun e!3005347 () Bool)

(declare-fun b!4810889 () Bool)

(declare-fun tp!1360685 () Bool)

(assert (=> b!4810889 (= e!3005347 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360685))))

(assert (=> b!4810762 (= tp!1360676 e!3005347)))

(assert (= (and b!4810762 ((_ is Cons!54538) (t!362142 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))) b!4810889))

(declare-fun tp!1360686 () Bool)

(declare-fun b!4810890 () Bool)

(declare-fun e!3005348 () Bool)

(assert (=> b!4810890 (= e!3005348 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360686))))

(assert (=> b!4810759 (= tp!1360671 e!3005348)))

(assert (= (and b!4810759 ((_ is Cons!54538) (t!362142 mapDefault!22337))) b!4810890))

(declare-fun b_lambda!188225 () Bool)

(assert (= b_lambda!188221 (or (and b!4810709 b_free!130163) b_lambda!188225)))

(declare-fun b_lambda!188227 () Bool)

(assert (= b_lambda!188217 (or b!4810733 b_lambda!188227)))

(declare-fun bs!1160106 () Bool)

(declare-fun d!1540382 () Bool)

(assert (= bs!1160106 (and d!1540382 b!4810733)))

(declare-fun noDuplicateKeys!2389 (List!54662) Bool)

(assert (=> bs!1160106 (= (dynLambda!22137 lambda!233763 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (noDuplicateKeys!2389 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun m!5796702 () Bool)

(assert (=> bs!1160106 m!5796702))

(assert (=> b!4810820 d!1540382))

(declare-fun b_lambda!188229 () Bool)

(assert (= b_lambda!188219 (or (and b!4810709 b_free!130163) b_lambda!188229)))

(declare-fun b_lambda!188231 () Bool)

(assert (= b_lambda!188223 (or (and b!4810709 b_free!130163) b_lambda!188231)))

(check-sat (not b!4810821) (not d!1540358) (not b!4810773) (not b_lambda!188229) (not bm!335768) (not b!4810798) (not b!4810886) (not b!4810805) (not b!4810887) (not bm!335779) tp_is_empty!33985 (not b!4810888) tp_is_empty!33987 (not d!1540368) (not b_lambda!188215) (not b!4810813) (not b!4810815) (not b_lambda!188227) (not b!4810804) (not b!4810811) (not b_next!130953) (not d!1540364) (not d!1540360) (not b_lambda!188225) (not b!4810883) (not b!4810868) (not d!1540376) (not b!4810884) (not d!1540372) (not b!4810765) (not b!4810879) (not bs!1160106) (not b!4810889) (not b!4810881) (not b!4810775) b_and!341957 (not d!1540380) (not d!1540356) (not bm!335781) (not b_lambda!188231) (not b!4810826) (not b!4810890) (not b!4810869) (not mapNonEmpty!22338) (not b!4810882) (not b!4810885) (not b_next!130955) (not bm!335770) (not bm!335769) (not b!4810867) b_and!341949)
(check-sat b_and!341957 b_and!341949 (not b_next!130953) (not b_next!130955))
(get-model)

(declare-fun bm!335797 () Bool)

(declare-fun call!335802 () Bool)

(declare-fun lt!1962824 () ListLongMap!5603)

(assert (=> bm!335797 (= call!335802 (contains!18264 lt!1962824 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4810934 () Bool)

(declare-fun e!3005379 () ListLongMap!5603)

(declare-fun call!335804 () ListLongMap!5603)

(assert (=> b!4810934 (= e!3005379 call!335804)))

(declare-fun b!4810935 () Bool)

(declare-fun e!3005378 () Bool)

(assert (=> b!4810935 (= e!3005378 (= (apply!13156 lt!1962824 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810936 () Bool)

(declare-fun e!3005377 () Bool)

(declare-fun e!3005386 () Bool)

(assert (=> b!4810936 (= e!3005377 e!3005386)))

(declare-fun res!2046392 () Bool)

(assert (=> b!4810936 (= res!2046392 call!335802)))

(assert (=> b!4810936 (=> (not res!2046392) (not e!3005386))))

(declare-fun b!4810937 () Bool)

(declare-fun e!3005383 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4810937 (= e!3005383 (validKeyInArray!0 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000)))))

(declare-fun bm!335798 () Bool)

(declare-fun call!335806 () Bool)

(assert (=> bm!335798 (= call!335806 (contains!18264 lt!1962824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4810938 () Bool)

(declare-fun res!2046389 () Bool)

(declare-fun e!3005381 () Bool)

(assert (=> b!4810938 (=> (not res!2046389) (not e!3005381))))

(declare-fun e!3005385 () Bool)

(assert (=> b!4810938 (= res!2046389 e!3005385)))

(declare-fun res!2046390 () Bool)

(assert (=> b!4810938 (=> res!2046390 e!3005385)))

(assert (=> b!4810938 (= res!2046390 (not e!3005383))))

(declare-fun res!2046396 () Bool)

(assert (=> b!4810938 (=> (not res!2046396) (not e!3005383))))

(assert (=> b!4810938 (= res!2046396 (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun b!4810939 () Bool)

(declare-fun call!335807 () ListLongMap!5603)

(assert (=> b!4810939 (= e!3005379 call!335807)))

(declare-fun b!4810940 () Bool)

(declare-fun e!3005376 () Bool)

(assert (=> b!4810940 (= e!3005385 e!3005376)))

(declare-fun res!2046391 () Bool)

(assert (=> b!4810940 (=> (not res!2046391) (not e!3005376))))

(assert (=> b!4810940 (= res!2046391 (contains!18264 lt!1962824 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4810940 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun bm!335799 () Bool)

(declare-fun call!335805 () ListLongMap!5603)

(assert (=> bm!335799 (= call!335804 call!335805)))

(declare-fun bm!335800 () Bool)

(declare-fun call!335803 () ListLongMap!5603)

(declare-fun getCurrentListMapNoExtraKeys!7 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 32) Int) ListLongMap!5603)

(assert (=> bm!335800 (= call!335803 (getCurrentListMapNoExtraKeys!7 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810941 () Bool)

(assert (=> b!4810941 (= e!3005376 (= (apply!13156 lt!1962824 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000)) (select (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4810941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36542 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(assert (=> b!4810941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun d!1540384 () Bool)

(assert (=> d!1540384 e!3005381))

(declare-fun res!2046388 () Bool)

(assert (=> d!1540384 (=> (not res!2046388) (not e!3005381))))

(assert (=> d!1540384 (= res!2046388 (or (bvsge #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))))

(declare-fun lt!1962829 () ListLongMap!5603)

(assert (=> d!1540384 (= lt!1962824 lt!1962829)))

(declare-fun lt!1962825 () Unit!141553)

(declare-fun e!3005382 () Unit!141553)

(assert (=> d!1540384 (= lt!1962825 e!3005382)))

(declare-fun c!819990 () Bool)

(declare-fun e!3005387 () Bool)

(assert (=> d!1540384 (= c!819990 e!3005387)))

(declare-fun res!2046395 () Bool)

(assert (=> d!1540384 (=> (not res!2046395) (not e!3005387))))

(assert (=> d!1540384 (= res!2046395 (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun e!3005375 () ListLongMap!5603)

(assert (=> d!1540384 (= lt!1962829 e!3005375)))

(declare-fun c!819989 () Bool)

(assert (=> d!1540384 (= c!819989 (and (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1540384 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540384 (= (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962824)))

(declare-fun b!4810933 () Bool)

(declare-fun res!2046393 () Bool)

(assert (=> b!4810933 (=> (not res!2046393) (not e!3005381))))

(declare-fun e!3005384 () Bool)

(assert (=> b!4810933 (= res!2046393 e!3005384)))

(declare-fun c!819991 () Bool)

(assert (=> b!4810933 (= c!819991 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!335808 () ListLongMap!5603)

(declare-fun bm!335801 () Bool)

(declare-fun c!819988 () Bool)

(declare-fun +!2516 (ListLongMap!5603 tuple2!57404) ListLongMap!5603)

(assert (=> bm!335801 (= call!335805 (+!2516 (ite c!819989 call!335803 (ite c!819988 call!335808 call!335807)) (ite (or c!819989 c!819988) (tuple2!57405 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (tuple2!57405 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))))

(declare-fun b!4810942 () Bool)

(declare-fun lt!1962820 () Unit!141553)

(assert (=> b!4810942 (= e!3005382 lt!1962820)))

(declare-fun lt!1962827 () ListLongMap!5603)

(assert (=> b!4810942 (= lt!1962827 (getCurrentListMapNoExtraKeys!7 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962817 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962817 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1962814 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962814 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1962815 () Unit!141553)

(declare-fun addStillContains!24 (ListLongMap!5603 (_ BitVec 64) List!54662 (_ BitVec 64)) Unit!141553)

(assert (=> b!4810942 (= lt!1962815 (addStillContains!24 lt!1962827 lt!1962817 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962814))))

(assert (=> b!4810942 (contains!18264 (+!2516 lt!1962827 (tuple2!57405 lt!1962817 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962814)))

(declare-fun lt!1962823 () Unit!141553)

(assert (=> b!4810942 (= lt!1962823 lt!1962815)))

(declare-fun lt!1962822 () ListLongMap!5603)

(assert (=> b!4810942 (= lt!1962822 (getCurrentListMapNoExtraKeys!7 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962818 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962818 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1962813 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962813 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1962812 () Unit!141553)

(declare-fun addApplyDifferent!6 (ListLongMap!5603 (_ BitVec 64) List!54662 (_ BitVec 64)) Unit!141553)

(assert (=> b!4810942 (= lt!1962812 (addApplyDifferent!6 lt!1962822 lt!1962818 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962813))))

(assert (=> b!4810942 (= (apply!13156 (+!2516 lt!1962822 (tuple2!57405 lt!1962818 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962813) (apply!13156 lt!1962822 lt!1962813))))

(declare-fun lt!1962832 () Unit!141553)

(assert (=> b!4810942 (= lt!1962832 lt!1962812)))

(declare-fun lt!1962819 () ListLongMap!5603)

(assert (=> b!4810942 (= lt!1962819 (getCurrentListMapNoExtraKeys!7 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962828 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962828 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1962831 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962831 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1962826 () Unit!141553)

(assert (=> b!4810942 (= lt!1962826 (addApplyDifferent!6 lt!1962819 lt!1962828 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962831))))

(assert (=> b!4810942 (= (apply!13156 (+!2516 lt!1962819 (tuple2!57405 lt!1962828 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962831) (apply!13156 lt!1962819 lt!1962831))))

(declare-fun lt!1962830 () Unit!141553)

(assert (=> b!4810942 (= lt!1962830 lt!1962826)))

(declare-fun lt!1962833 () ListLongMap!5603)

(assert (=> b!4810942 (= lt!1962833 (getCurrentListMapNoExtraKeys!7 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962821 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962821 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1962816 () (_ BitVec 64))

(assert (=> b!4810942 (= lt!1962816 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4810942 (= lt!1962820 (addApplyDifferent!6 lt!1962833 lt!1962821 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962816))))

(assert (=> b!4810942 (= (apply!13156 (+!2516 lt!1962833 (tuple2!57405 lt!1962821 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962816) (apply!13156 lt!1962833 lt!1962816))))

(declare-fun b!4810943 () Bool)

(assert (=> b!4810943 (= e!3005384 e!3005378)))

(declare-fun res!2046394 () Bool)

(assert (=> b!4810943 (= res!2046394 call!335806)))

(assert (=> b!4810943 (=> (not res!2046394) (not e!3005378))))

(declare-fun b!4810944 () Bool)

(declare-fun e!3005380 () ListLongMap!5603)

(assert (=> b!4810944 (= e!3005380 call!335804)))

(declare-fun b!4810945 () Bool)

(assert (=> b!4810945 (= e!3005375 e!3005380)))

(assert (=> b!4810945 (= c!819988 (and (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4810946 () Bool)

(assert (=> b!4810946 (= e!3005381 e!3005377)))

(declare-fun c!819986 () Bool)

(assert (=> b!4810946 (= c!819986 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4810947 () Bool)

(assert (=> b!4810947 (= e!3005386 (= (apply!13156 lt!1962824 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810948 () Bool)

(assert (=> b!4810948 (= e!3005377 (not call!335802))))

(declare-fun b!4810949 () Bool)

(declare-fun c!819987 () Bool)

(assert (=> b!4810949 (= c!819987 (and (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4810949 (= e!3005380 e!3005379)))

(declare-fun bm!335802 () Bool)

(assert (=> bm!335802 (= call!335808 call!335803)))

(declare-fun b!4810950 () Bool)

(assert (=> b!4810950 (= e!3005375 (+!2516 call!335805 (tuple2!57405 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun b!4810951 () Bool)

(assert (=> b!4810951 (= e!3005387 (validKeyInArray!0 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000)))))

(declare-fun b!4810952 () Bool)

(declare-fun Unit!141558 () Unit!141553)

(assert (=> b!4810952 (= e!3005382 Unit!141558)))

(declare-fun b!4810953 () Bool)

(assert (=> b!4810953 (= e!3005384 (not call!335806))))

(declare-fun bm!335803 () Bool)

(assert (=> bm!335803 (= call!335807 call!335808)))

(assert (= (and d!1540384 c!819989) b!4810950))

(assert (= (and d!1540384 (not c!819989)) b!4810945))

(assert (= (and b!4810945 c!819988) b!4810944))

(assert (= (and b!4810945 (not c!819988)) b!4810949))

(assert (= (and b!4810949 c!819987) b!4810934))

(assert (= (and b!4810949 (not c!819987)) b!4810939))

(assert (= (or b!4810934 b!4810939) bm!335803))

(assert (= (or b!4810944 bm!335803) bm!335802))

(assert (= (or b!4810944 b!4810934) bm!335799))

(assert (= (or b!4810950 bm!335802) bm!335800))

(assert (= (or b!4810950 bm!335799) bm!335801))

(assert (= (and d!1540384 res!2046395) b!4810951))

(assert (= (and d!1540384 c!819990) b!4810942))

(assert (= (and d!1540384 (not c!819990)) b!4810952))

(assert (= (and d!1540384 res!2046388) b!4810938))

(assert (= (and b!4810938 res!2046396) b!4810937))

(assert (= (and b!4810938 (not res!2046390)) b!4810940))

(assert (= (and b!4810940 res!2046391) b!4810941))

(assert (= (and b!4810938 res!2046389) b!4810933))

(assert (= (and b!4810933 c!819991) b!4810943))

(assert (= (and b!4810933 (not c!819991)) b!4810953))

(assert (= (and b!4810943 res!2046394) b!4810935))

(assert (= (or b!4810943 b!4810953) bm!335798))

(assert (= (and b!4810933 res!2046393) b!4810946))

(assert (= (and b!4810946 c!819986) b!4810936))

(assert (= (and b!4810946 (not c!819986)) b!4810948))

(assert (= (and b!4810936 res!2046392) b!4810947))

(assert (= (or b!4810936 b!4810948) bm!335797))

(declare-fun m!5796704 () Bool)

(assert (=> b!4810942 m!5796704))

(declare-fun m!5796706 () Bool)

(assert (=> b!4810942 m!5796706))

(declare-fun m!5796708 () Bool)

(assert (=> b!4810942 m!5796708))

(declare-fun m!5796710 () Bool)

(assert (=> b!4810942 m!5796710))

(declare-fun m!5796712 () Bool)

(assert (=> b!4810942 m!5796712))

(declare-fun m!5796714 () Bool)

(assert (=> b!4810942 m!5796714))

(assert (=> b!4810942 m!5796706))

(declare-fun m!5796716 () Bool)

(assert (=> b!4810942 m!5796716))

(declare-fun m!5796718 () Bool)

(assert (=> b!4810942 m!5796718))

(declare-fun m!5796720 () Bool)

(assert (=> b!4810942 m!5796720))

(declare-fun m!5796722 () Bool)

(assert (=> b!4810942 m!5796722))

(declare-fun m!5796724 () Bool)

(assert (=> b!4810942 m!5796724))

(declare-fun m!5796726 () Bool)

(assert (=> b!4810942 m!5796726))

(declare-fun m!5796728 () Bool)

(assert (=> b!4810942 m!5796728))

(declare-fun m!5796730 () Bool)

(assert (=> b!4810942 m!5796730))

(assert (=> b!4810942 m!5796710))

(declare-fun m!5796732 () Bool)

(assert (=> b!4810942 m!5796732))

(declare-fun m!5796734 () Bool)

(assert (=> b!4810942 m!5796734))

(assert (=> b!4810942 m!5796730))

(declare-fun m!5796736 () Bool)

(assert (=> b!4810942 m!5796736))

(assert (=> b!4810942 m!5796726))

(assert (=> b!4810937 m!5796734))

(assert (=> b!4810937 m!5796734))

(declare-fun m!5796738 () Bool)

(assert (=> b!4810937 m!5796738))

(declare-fun m!5796740 () Bool)

(assert (=> d!1540384 m!5796740))

(assert (=> b!4810940 m!5796734))

(assert (=> b!4810940 m!5796734))

(declare-fun m!5796742 () Bool)

(assert (=> b!4810940 m!5796742))

(declare-fun m!5796744 () Bool)

(assert (=> b!4810947 m!5796744))

(declare-fun m!5796746 () Bool)

(assert (=> bm!335798 m!5796746))

(declare-fun m!5796748 () Bool)

(assert (=> bm!335797 m!5796748))

(assert (=> bm!335800 m!5796718))

(declare-fun m!5796750 () Bool)

(assert (=> b!4810950 m!5796750))

(declare-fun m!5796752 () Bool)

(assert (=> bm!335801 m!5796752))

(declare-fun m!5796754 () Bool)

(assert (=> b!4810935 m!5796754))

(assert (=> b!4810941 m!5796734))

(assert (=> b!4810941 m!5796734))

(declare-fun m!5796756 () Bool)

(assert (=> b!4810941 m!5796756))

(declare-fun m!5796758 () Bool)

(assert (=> b!4810941 m!5796758))

(assert (=> b!4810951 m!5796734))

(assert (=> b!4810951 m!5796734))

(assert (=> b!4810951 m!5796738))

(assert (=> bm!335770 d!1540384))

(declare-fun d!1540386 () Bool)

(declare-fun res!2046401 () Bool)

(declare-fun e!3005392 () Bool)

(assert (=> d!1540386 (=> res!2046401 e!3005392)))

(assert (=> d!1540386 (= res!2046401 (= (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000) lt!1962665))))

(assert (=> d!1540386 (= (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000) e!3005392)))

(declare-fun b!4810958 () Bool)

(declare-fun e!3005393 () Bool)

(assert (=> b!4810958 (= e!3005392 e!3005393)))

(declare-fun res!2046402 () Bool)

(assert (=> b!4810958 (=> (not res!2046402) (not e!3005393))))

(assert (=> b!4810958 (= res!2046402 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun b!4810959 () Bool)

(assert (=> b!4810959 (= e!3005393 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1540386 (not res!2046401)) b!4810958))

(assert (= (and b!4810958 res!2046402) b!4810959))

(assert (=> d!1540386 m!5796734))

(declare-fun m!5796760 () Bool)

(assert (=> b!4810959 m!5796760))

(assert (=> b!4810867 d!1540386))

(declare-fun d!1540388 () Bool)

(declare-fun lt!1962843 () SeekEntryResult!29)

(assert (=> d!1540388 (and (or ((_ is MissingVacant!29) lt!1962843) (not ((_ is Found!29) lt!1962843)) (and (bvsge (index!1498 lt!1962843) #b00000000000000000000000000000000) (bvslt (index!1498 lt!1962843) (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))) (not ((_ is MissingVacant!29) lt!1962843)) (or (not ((_ is Found!29) lt!1962843)) (= (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962843)) lt!1962665)))))

(declare-fun e!3005402 () SeekEntryResult!29)

(assert (=> d!1540388 (= lt!1962843 e!3005402)))

(declare-fun c!819999 () Bool)

(declare-fun lt!1962844 () SeekEntryResult!29)

(assert (=> d!1540388 (= c!819999 (and ((_ is Intermediate!29) lt!1962844) (undefined!110 lt!1962844)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18594 (_ BitVec 32)) SeekEntryResult!29)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1540388 (= lt!1962844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!1962665 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540388 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540388 (= (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962843)))

(declare-fun b!4810972 () Bool)

(declare-fun e!3005400 () SeekEntryResult!29)

(assert (=> b!4810972 (= e!3005402 e!3005400)))

(declare-fun lt!1962845 () (_ BitVec 64))

(assert (=> b!4810972 (= lt!1962845 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1501 lt!1962844)))))

(declare-fun c!819998 () Bool)

(assert (=> b!4810972 (= c!819998 (= lt!1962845 lt!1962665))))

(declare-fun b!4810973 () Bool)

(declare-fun e!3005401 () SeekEntryResult!29)

(declare-fun lt!1962842 () SeekEntryResult!29)

(assert (=> b!4810973 (= e!3005401 (ite ((_ is MissingVacant!29) lt!1962842) (MissingZero!29 (index!1500 lt!1962842)) lt!1962842))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18594 (_ BitVec 32)) SeekEntryResult!29)

(assert (=> b!4810973 (= lt!1962842 (seekKeyOrZeroReturnVacant!0 (x!826818 lt!1962844) (index!1501 lt!1962844) (index!1501 lt!1962844) lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4810974 () Bool)

(assert (=> b!4810974 (= e!3005401 (MissingZero!29 (index!1501 lt!1962844)))))

(declare-fun b!4810975 () Bool)

(assert (=> b!4810975 (= e!3005400 (Found!29 (index!1501 lt!1962844)))))

(declare-fun b!4810976 () Bool)

(assert (=> b!4810976 (= e!3005402 Undefined!29)))

(declare-fun b!4810977 () Bool)

(declare-fun c!820000 () Bool)

(assert (=> b!4810977 (= c!820000 (= lt!1962845 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4810977 (= e!3005400 e!3005401)))

(assert (= (and d!1540388 c!819999) b!4810976))

(assert (= (and d!1540388 (not c!819999)) b!4810972))

(assert (= (and b!4810972 c!819998) b!4810975))

(assert (= (and b!4810972 (not c!819998)) b!4810977))

(assert (= (and b!4810977 c!820000) b!4810974))

(assert (= (and b!4810977 (not c!820000)) b!4810973))

(declare-fun m!5796762 () Bool)

(assert (=> d!1540388 m!5796762))

(declare-fun m!5796764 () Bool)

(assert (=> d!1540388 m!5796764))

(assert (=> d!1540388 m!5796764))

(declare-fun m!5796766 () Bool)

(assert (=> d!1540388 m!5796766))

(assert (=> d!1540388 m!5796740))

(declare-fun m!5796768 () Bool)

(assert (=> b!4810972 m!5796768))

(declare-fun m!5796770 () Bool)

(assert (=> b!4810973 m!5796770))

(assert (=> b!4810868 d!1540388))

(declare-fun d!1540390 () Bool)

(declare-fun e!3005405 () Bool)

(assert (=> d!1540390 e!3005405))

(declare-fun res!2046405 () Bool)

(assert (=> d!1540390 (=> res!2046405 e!3005405)))

(declare-fun lt!1962851 () SeekEntryResult!29)

(assert (=> d!1540390 (= res!2046405 (not ((_ is Found!29) lt!1962851)))))

(assert (=> d!1540390 (= lt!1962851 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962850 () Unit!141553)

(declare-fun choose!34855 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64)) Unit!141553)

(assert (=> d!1540390 (= lt!1962850 (choose!34855 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(assert (=> d!1540390 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540390 (= (lemmaSeekEntryGivesInRangeIndex!17 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665) lt!1962850)))

(declare-fun b!4810980 () Bool)

(assert (=> b!4810980 (= e!3005405 (inRange!0 (index!1498 lt!1962851) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (= (and d!1540390 (not res!2046405)) b!4810980))

(assert (=> d!1540390 m!5796640))

(declare-fun m!5796772 () Bool)

(assert (=> d!1540390 m!5796772))

(assert (=> d!1540390 m!5796740))

(declare-fun m!5796774 () Bool)

(assert (=> b!4810980 m!5796774))

(assert (=> b!4810868 d!1540390))

(declare-fun d!1540392 () Bool)

(declare-fun res!2046410 () Bool)

(declare-fun e!3005410 () Bool)

(assert (=> d!1540392 (=> res!2046410 e!3005410)))

(assert (=> d!1540392 (= res!2046410 (and ((_ is Cons!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) (= (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)))))

(assert (=> d!1540392 (= (containsKey!4149 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665) e!3005410)))

(declare-fun b!4810985 () Bool)

(declare-fun e!3005411 () Bool)

(assert (=> b!4810985 (= e!3005410 e!3005411)))

(declare-fun res!2046411 () Bool)

(assert (=> b!4810985 (=> (not res!2046411) (not e!3005411))))

(assert (=> b!4810985 (= res!2046411 (and (or (not ((_ is Cons!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (bvsle (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)) ((_ is Cons!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) (bvslt (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)))))

(declare-fun b!4810986 () Bool)

(assert (=> b!4810986 (= e!3005411 (containsKey!4149 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665))))

(assert (= (and d!1540392 (not res!2046410)) b!4810985))

(assert (= (and b!4810985 res!2046411) b!4810986))

(declare-fun m!5796776 () Bool)

(assert (=> b!4810986 m!5796776))

(assert (=> d!1540356 d!1540392))

(declare-fun b!4810990 () Bool)

(declare-fun e!3005413 () Option!13310)

(assert (=> b!4810990 (= e!3005413 None!13309)))

(declare-fun d!1540394 () Bool)

(declare-fun c!820001 () Bool)

(assert (=> d!1540394 (= c!820001 (and ((_ is Cons!54539) (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (= (_1!31996 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962665)))))

(declare-fun e!3005412 () Option!13310)

(assert (=> d!1540394 (= (getValueByKey!2489 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665) e!3005412)))

(declare-fun b!4810989 () Bool)

(assert (=> b!4810989 (= e!3005413 (getValueByKey!2489 (t!362143 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))

(declare-fun b!4810988 () Bool)

(assert (=> b!4810988 (= e!3005412 e!3005413)))

(declare-fun c!820002 () Bool)

(assert (=> b!4810988 (= c!820002 (and ((_ is Cons!54539) (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (not (= (_1!31996 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962665))))))

(declare-fun b!4810987 () Bool)

(assert (=> b!4810987 (= e!3005412 (Some!13309 (_2!31996 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))))

(assert (= (and d!1540394 c!820001) b!4810987))

(assert (= (and d!1540394 (not c!820001)) b!4810988))

(assert (= (and b!4810988 c!820002) b!4810989))

(assert (= (and b!4810988 (not c!820002)) b!4810990))

(declare-fun m!5796778 () Bool)

(assert (=> b!4810989 m!5796778))

(assert (=> b!4810765 d!1540394))

(declare-fun d!1540396 () Bool)

(assert (=> d!1540396 (= (inRange!0 (index!1498 lt!1962767) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (and (bvsge (index!1498 lt!1962767) #b00000000000000000000000000000000) (bvslt (index!1498 lt!1962767) (bvadd (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001))))))

(assert (=> b!4810881 d!1540396))

(declare-fun lt!1962852 () Bool)

(declare-fun d!1540398 () Bool)

(assert (=> d!1540398 (= lt!1962852 (select (content!9776 (t!362143 (t!362143 (toList!7143 lt!1962666)))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun e!3005415 () Bool)

(assert (=> d!1540398 (= lt!1962852 e!3005415)))

(declare-fun res!2046412 () Bool)

(assert (=> d!1540398 (=> (not res!2046412) (not e!3005415))))

(assert (=> d!1540398 (= res!2046412 ((_ is Cons!54539) (t!362143 (t!362143 (toList!7143 lt!1962666)))))))

(assert (=> d!1540398 (= (contains!18263 (t!362143 (t!362143 (toList!7143 lt!1962666))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))) lt!1962852)))

(declare-fun b!4810991 () Bool)

(declare-fun e!3005414 () Bool)

(assert (=> b!4810991 (= e!3005415 e!3005414)))

(declare-fun res!2046413 () Bool)

(assert (=> b!4810991 (=> res!2046413 e!3005414)))

(assert (=> b!4810991 (= res!2046413 (= (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666)))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(declare-fun b!4810992 () Bool)

(assert (=> b!4810992 (= e!3005414 (contains!18263 (t!362143 (t!362143 (t!362143 (toList!7143 lt!1962666)))) (tuple2!57405 lt!1962665 (apply!13154 (v!48852 (underlying!10318 thiss!41921)) lt!1962665))))))

(assert (= (and d!1540398 res!2046412) b!4810991))

(assert (= (and b!4810991 (not res!2046413)) b!4810992))

(declare-fun m!5796780 () Bool)

(assert (=> d!1540398 m!5796780))

(declare-fun m!5796782 () Bool)

(assert (=> d!1540398 m!5796782))

(declare-fun m!5796784 () Bool)

(assert (=> b!4810992 m!5796784))

(assert (=> b!4810815 d!1540398))

(declare-fun d!1540400 () Bool)

(declare-fun e!3005416 () Bool)

(assert (=> d!1540400 e!3005416))

(declare-fun res!2046414 () Bool)

(assert (=> d!1540400 (=> res!2046414 e!3005416)))

(declare-fun lt!1962856 () Bool)

(assert (=> d!1540400 (= res!2046414 (not lt!1962856))))

(declare-fun lt!1962855 () Bool)

(assert (=> d!1540400 (= lt!1962856 lt!1962855)))

(declare-fun lt!1962853 () Unit!141553)

(declare-fun e!3005417 () Unit!141553)

(assert (=> d!1540400 (= lt!1962853 e!3005417)))

(declare-fun c!820003 () Bool)

(assert (=> d!1540400 (= c!820003 lt!1962855)))

(assert (=> d!1540400 (= lt!1962855 (containsKey!4149 (toList!7143 call!335773) (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665)))))

(assert (=> d!1540400 (= (contains!18264 call!335773 (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665)) lt!1962856)))

(declare-fun b!4810993 () Bool)

(declare-fun lt!1962854 () Unit!141553)

(assert (=> b!4810993 (= e!3005417 lt!1962854)))

(assert (=> b!4810993 (= lt!1962854 (lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (toList!7143 call!335773) (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665)))))

(assert (=> b!4810993 (isDefined!10448 (getValueByKey!2489 (toList!7143 call!335773) (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665)))))

(declare-fun b!4810994 () Bool)

(declare-fun Unit!141559 () Unit!141553)

(assert (=> b!4810994 (= e!3005417 Unit!141559)))

(declare-fun b!4810995 () Bool)

(assert (=> b!4810995 (= e!3005416 (isDefined!10448 (getValueByKey!2489 (toList!7143 call!335773) (ite c!819946 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733)) lt!1962665))))))

(assert (= (and d!1540400 c!820003) b!4810993))

(assert (= (and d!1540400 (not c!820003)) b!4810994))

(assert (= (and d!1540400 (not res!2046414)) b!4810995))

(declare-fun m!5796786 () Bool)

(assert (=> d!1540400 m!5796786))

(declare-fun m!5796788 () Bool)

(assert (=> b!4810993 m!5796788))

(declare-fun m!5796790 () Bool)

(assert (=> b!4810993 m!5796790))

(assert (=> b!4810993 m!5796790))

(declare-fun m!5796792 () Bool)

(assert (=> b!4810993 m!5796792))

(assert (=> b!4810995 m!5796790))

(assert (=> b!4810995 m!5796790))

(assert (=> b!4810995 m!5796792))

(assert (=> bm!335769 d!1540400))

(declare-fun d!1540402 () Bool)

(assert (=> d!1540402 (= (apply!13156 (ite c!819972 call!335784 call!335786) lt!1962665) (get!18659 (getValueByKey!2489 (toList!7143 (ite c!819972 call!335784 call!335786)) lt!1962665)))))

(declare-fun bs!1160107 () Bool)

(assert (= bs!1160107 d!1540402))

(declare-fun m!5796794 () Bool)

(assert (=> bs!1160107 m!5796794))

(assert (=> bs!1160107 m!5796794))

(declare-fun m!5796796 () Bool)

(assert (=> bs!1160107 m!5796796))

(assert (=> bm!335781 d!1540402))

(declare-fun d!1540404 () Bool)

(assert (=> d!1540404 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000)))

(declare-fun lt!1962859 () Unit!141553)

(declare-fun choose!683 (array!18594 (_ BitVec 64) (_ BitVec 32)) Unit!141553)

(assert (=> d!1540404 (= lt!1962859 (choose!683 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962733)))))

(assert (=> d!1540404 (bvsge (index!1498 lt!1962733) #b00000000000000000000000000000000)))

(assert (=> d!1540404 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962733)) lt!1962859)))

(declare-fun bs!1160108 () Bool)

(assert (= bs!1160108 d!1540404))

(assert (=> bs!1160108 m!5796656))

(declare-fun m!5796798 () Bool)

(assert (=> bs!1160108 m!5796798))

(assert (=> b!4810804 d!1540404))

(declare-fun d!1540406 () Bool)

(declare-fun e!3005420 () Bool)

(assert (=> d!1540406 e!3005420))

(declare-fun res!2046417 () Bool)

(assert (=> d!1540406 (=> (not res!2046417) (not e!3005420))))

(assert (=> d!1540406 (= res!2046417 (and (bvsge (index!1498 lt!1962733) #b00000000000000000000000000000000) (bvslt (index!1498 lt!1962733) (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))))

(declare-fun lt!1962862 () Unit!141553)

(declare-fun choose!34856 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 32) Int) Unit!141553)

(assert (=> d!1540406 (= lt!1962862 (choose!34856 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962733) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540406 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540406 (= (lemmaValidKeyInArrayIsInListMap!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962733) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962862)))

(declare-fun b!4810998 () Bool)

(assert (=> b!4810998 (= e!3005420 (contains!18264 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962733))))))

(assert (= (and d!1540406 res!2046417) b!4810998))

(declare-fun m!5796800 () Bool)

(assert (=> d!1540406 m!5796800))

(assert (=> d!1540406 m!5796740))

(assert (=> b!4810998 m!5796634))

(assert (=> b!4810998 m!5796636))

(assert (=> b!4810998 m!5796634))

(assert (=> b!4810998 m!5796636))

(declare-fun m!5796802 () Bool)

(assert (=> b!4810998 m!5796802))

(assert (=> b!4810804 d!1540406))

(declare-fun d!1540408 () Bool)

(assert (=> d!1540408 (= (get!18659 (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)) (v!48853 (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)))))

(assert (=> b!4810869 d!1540408))

(declare-fun b!4811002 () Bool)

(declare-fun e!3005422 () Option!13310)

(assert (=> b!4811002 (= e!3005422 None!13309)))

(declare-fun d!1540410 () Bool)

(declare-fun c!820004 () Bool)

(assert (=> d!1540410 (= c!820004 (and ((_ is Cons!54539) (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (= (_1!31996 (h!60971 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))) lt!1962665)))))

(declare-fun e!3005421 () Option!13310)

(assert (=> d!1540410 (= (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665) e!3005421)))

(declare-fun b!4811001 () Bool)

(assert (=> b!4811001 (= e!3005422 (getValueByKey!2489 (t!362143 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) lt!1962665))))

(declare-fun b!4811000 () Bool)

(assert (=> b!4811000 (= e!3005421 e!3005422)))

(declare-fun c!820005 () Bool)

(assert (=> b!4811000 (= c!820005 (and ((_ is Cons!54539) (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (not (= (_1!31996 (h!60971 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))) lt!1962665))))))

(declare-fun b!4810999 () Bool)

(assert (=> b!4810999 (= e!3005421 (Some!13309 (_2!31996 (h!60971 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))))

(assert (= (and d!1540410 c!820004) b!4810999))

(assert (= (and d!1540410 (not c!820004)) b!4811000))

(assert (= (and b!4811000 c!820005) b!4811001))

(assert (= (and b!4811000 (not c!820005)) b!4811002))

(declare-fun m!5796804 () Bool)

(assert (=> b!4811001 m!5796804))

(assert (=> b!4810869 d!1540410))

(assert (=> b!4810869 d!1540364))

(assert (=> b!4810805 d!1540388))

(assert (=> bm!335779 d!1540384))

(declare-fun b!4811006 () Bool)

(declare-fun e!3005424 () Option!13310)

(assert (=> b!4811006 (= e!3005424 None!13309)))

(declare-fun d!1540412 () Bool)

(declare-fun c!820006 () Bool)

(assert (=> d!1540412 (= c!820006 (and ((_ is Cons!54539) (t!362143 (t!362143 (toList!7143 lt!1962666)))) (= (_1!31996 (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666))))) lt!1962665)))))

(declare-fun e!3005423 () Option!13310)

(assert (=> d!1540412 (= (getValueByKey!2489 (t!362143 (t!362143 (toList!7143 lt!1962666))) lt!1962665) e!3005423)))

(declare-fun b!4811005 () Bool)

(assert (=> b!4811005 (= e!3005424 (getValueByKey!2489 (t!362143 (t!362143 (t!362143 (toList!7143 lt!1962666)))) lt!1962665))))

(declare-fun b!4811004 () Bool)

(assert (=> b!4811004 (= e!3005423 e!3005424)))

(declare-fun c!820007 () Bool)

(assert (=> b!4811004 (= c!820007 (and ((_ is Cons!54539) (t!362143 (t!362143 (toList!7143 lt!1962666)))) (not (= (_1!31996 (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666))))) lt!1962665))))))

(declare-fun b!4811003 () Bool)

(assert (=> b!4811003 (= e!3005423 (Some!13309 (_2!31996 (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666)))))))))

(assert (= (and d!1540412 c!820006) b!4811003))

(assert (= (and d!1540412 (not c!820006)) b!4811004))

(assert (= (and b!4811004 c!820007) b!4811005))

(assert (= (and b!4811004 (not c!820007)) b!4811006))

(declare-fun m!5796806 () Bool)

(assert (=> b!4811005 m!5796806))

(assert (=> b!4810826 d!1540412))

(declare-fun d!1540414 () Bool)

(declare-fun res!2046418 () Bool)

(declare-fun e!3005425 () Bool)

(assert (=> d!1540414 (=> res!2046418 e!3005425)))

(assert (=> d!1540414 (= res!2046418 ((_ is Nil!54539) (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540414 (= (forall!12394 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lambda!233763) e!3005425)))

(declare-fun b!4811007 () Bool)

(declare-fun e!3005426 () Bool)

(assert (=> b!4811007 (= e!3005425 e!3005426)))

(declare-fun res!2046419 () Bool)

(assert (=> b!4811007 (=> (not res!2046419) (not e!3005426))))

(assert (=> b!4811007 (= res!2046419 (dynLambda!22137 lambda!233763 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun b!4811008 () Bool)

(assert (=> b!4811008 (= e!3005426 (forall!12394 (t!362143 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) lambda!233763))))

(assert (= (and d!1540414 (not res!2046418)) b!4811007))

(assert (= (and b!4811007 res!2046419) b!4811008))

(declare-fun b_lambda!188233 () Bool)

(assert (=> (not b_lambda!188233) (not b!4811007)))

(declare-fun m!5796808 () Bool)

(assert (=> b!4811007 m!5796808))

(declare-fun m!5796810 () Bool)

(assert (=> b!4811008 m!5796810))

(assert (=> b!4810821 d!1540414))

(declare-fun d!1540416 () Bool)

(declare-fun e!3005427 () Bool)

(assert (=> d!1540416 e!3005427))

(declare-fun res!2046420 () Bool)

(assert (=> d!1540416 (=> res!2046420 e!3005427)))

(declare-fun lt!1962866 () Bool)

(assert (=> d!1540416 (= res!2046420 (not lt!1962866))))

(declare-fun lt!1962865 () Bool)

(assert (=> d!1540416 (= lt!1962866 lt!1962865)))

(declare-fun lt!1962863 () Unit!141553)

(declare-fun e!3005428 () Unit!141553)

(assert (=> d!1540416 (= lt!1962863 e!3005428)))

(declare-fun c!820008 () Bool)

(assert (=> d!1540416 (= c!820008 lt!1962865)))

(assert (=> d!1540416 (= lt!1962865 (containsKey!4149 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))

(assert (=> d!1540416 (= (contains!18264 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665) lt!1962866)))

(declare-fun b!4811009 () Bool)

(declare-fun lt!1962864 () Unit!141553)

(assert (=> b!4811009 (= e!3005428 lt!1962864)))

(assert (=> b!4811009 (= lt!1962864 (lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))

(assert (=> b!4811009 (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665))))

(declare-fun b!4811010 () Bool)

(declare-fun Unit!141560 () Unit!141553)

(assert (=> b!4811010 (= e!3005428 Unit!141560)))

(declare-fun b!4811011 () Bool)

(assert (=> b!4811011 (= e!3005427 (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12419 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962665)))))

(assert (= (and d!1540416 c!820008) b!4811009))

(assert (= (and d!1540416 (not c!820008)) b!4811010))

(assert (= (and d!1540416 (not res!2046420)) b!4811011))

(declare-fun m!5796812 () Bool)

(assert (=> d!1540416 m!5796812))

(declare-fun m!5796814 () Bool)

(assert (=> b!4811009 m!5796814))

(assert (=> b!4811009 m!5796682))

(assert (=> b!4811009 m!5796682))

(declare-fun m!5796816 () Bool)

(assert (=> b!4811009 m!5796816))

(assert (=> b!4811011 m!5796682))

(assert (=> b!4811011 m!5796682))

(assert (=> b!4811011 m!5796816))

(assert (=> d!1540358 d!1540416))

(assert (=> d!1540358 d!1540364))

(declare-fun d!1540418 () Bool)

(declare-fun res!2046427 () Bool)

(declare-fun e!3005431 () Bool)

(assert (=> d!1540418 (=> (not res!2046427) (not e!3005431))))

(declare-fun simpleValid!13 (LongMapFixedSize!10110) Bool)

(assert (=> d!1540418 (= res!2046427 (simpleValid!13 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540418 (= (valid!4083 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) e!3005431)))

(declare-fun b!4811018 () Bool)

(declare-fun res!2046428 () Bool)

(assert (=> b!4811018 (=> (not res!2046428) (not e!3005431))))

(declare-fun arrayCountValidKeys!0 (array!18594 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4811018 (= res!2046428 (= (arrayCountValidKeys!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (_size!10135 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811019 () Bool)

(declare-fun res!2046429 () Bool)

(assert (=> b!4811019 (=> (not res!2046429) (not e!3005431))))

(assert (=> b!4811019 (= res!2046429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811020 () Bool)

(declare-datatypes ((List!54664 0))(
  ( (Nil!54540) (Cons!54540 (h!60972 (_ BitVec 64)) (t!362146 List!54664)) )
))
(declare-fun arrayNoDuplicates!0 (array!18594 (_ BitVec 32) List!54664) Bool)

(assert (=> b!4811020 (= e!3005431 (arrayNoDuplicates!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 Nil!54540))))

(assert (= (and d!1540418 res!2046427) b!4811018))

(assert (= (and b!4811018 res!2046428) b!4811019))

(assert (= (and b!4811019 res!2046429) b!4811020))

(declare-fun m!5796818 () Bool)

(assert (=> d!1540418 m!5796818))

(declare-fun m!5796820 () Bool)

(assert (=> b!4811018 m!5796820))

(declare-fun m!5796822 () Bool)

(assert (=> b!4811019 m!5796822))

(declare-fun m!5796824 () Bool)

(assert (=> b!4811020 m!5796824))

(assert (=> d!1540358 d!1540418))

(assert (=> d!1540360 d!1540418))

(declare-fun d!1540420 () Bool)

(declare-fun c!820009 () Bool)

(assert (=> d!1540420 (= c!820009 ((_ is Nil!54539) (t!362143 (toList!7143 lt!1962666))))))

(declare-fun e!3005432 () (InoxSet tuple2!57404))

(assert (=> d!1540420 (= (content!9776 (t!362143 (toList!7143 lt!1962666))) e!3005432)))

(declare-fun b!4811021 () Bool)

(assert (=> b!4811021 (= e!3005432 ((as const (Array tuple2!57404 Bool)) false))))

(declare-fun b!4811022 () Bool)

(assert (=> b!4811022 (= e!3005432 ((_ map or) (store ((as const (Array tuple2!57404 Bool)) false) (h!60971 (t!362143 (toList!7143 lt!1962666))) true) (content!9776 (t!362143 (t!362143 (toList!7143 lt!1962666))))))))

(assert (= (and d!1540420 c!820009) b!4811021))

(assert (= (and d!1540420 (not c!820009)) b!4811022))

(declare-fun m!5796826 () Bool)

(assert (=> b!4811022 m!5796826))

(assert (=> b!4811022 m!5796780))

(assert (=> b!4810811 d!1540420))

(declare-fun d!1540422 () Bool)

(declare-fun res!2046430 () Bool)

(declare-fun e!3005433 () Bool)

(assert (=> d!1540422 (=> res!2046430 e!3005433)))

(assert (=> d!1540422 (= res!2046430 ((_ is Nil!54539) (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540422 (= (forall!12394 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lambda!233766) e!3005433)))

(declare-fun b!4811023 () Bool)

(declare-fun e!3005434 () Bool)

(assert (=> b!4811023 (= e!3005433 e!3005434)))

(declare-fun res!2046431 () Bool)

(assert (=> b!4811023 (=> (not res!2046431) (not e!3005434))))

(assert (=> b!4811023 (= res!2046431 (dynLambda!22137 lambda!233766 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811024 () Bool)

(assert (=> b!4811024 (= e!3005434 (forall!12394 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))) lambda!233766))))

(assert (= (and d!1540422 (not res!2046430)) b!4811023))

(assert (= (and b!4811023 res!2046431) b!4811024))

(declare-fun b_lambda!188235 () Bool)

(assert (=> (not b_lambda!188235) (not b!4811023)))

(declare-fun m!5796828 () Bool)

(assert (=> b!4811023 m!5796828))

(declare-fun m!5796830 () Bool)

(assert (=> b!4811024 m!5796830))

(assert (=> d!1540372 d!1540422))

(assert (=> d!1540368 d!1540420))

(assert (=> d!1540376 d!1540358))

(assert (=> d!1540376 d!1540418))

(declare-fun d!1540424 () Bool)

(declare-fun res!2046436 () Bool)

(declare-fun e!3005439 () Bool)

(assert (=> d!1540424 (=> res!2046436 e!3005439)))

(assert (=> d!1540424 (= res!2046436 (not ((_ is Cons!54538) (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))))

(assert (=> d!1540424 (= (noDuplicateKeys!2389 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))) e!3005439)))

(declare-fun b!4811029 () Bool)

(declare-fun e!3005440 () Bool)

(assert (=> b!4811029 (= e!3005439 e!3005440)))

(declare-fun res!2046437 () Bool)

(assert (=> b!4811029 (=> (not res!2046437) (not e!3005440))))

(declare-fun containsKey!4150 (List!54662 K!16154) Bool)

(assert (=> b!4811029 (= res!2046437 (not (containsKey!4150 (t!362142 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))) (_1!31995 (h!60970 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))))))

(declare-fun b!4811030 () Bool)

(assert (=> b!4811030 (= e!3005440 (noDuplicateKeys!2389 (t!362142 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))))

(assert (= (and d!1540424 (not res!2046436)) b!4811029))

(assert (= (and b!4811029 res!2046437) b!4811030))

(declare-fun m!5796832 () Bool)

(assert (=> b!4811029 m!5796832))

(declare-fun m!5796834 () Bool)

(assert (=> b!4811030 m!5796834))

(assert (=> bs!1160106 d!1540424))

(declare-fun d!1540426 () Bool)

(declare-fun res!2046438 () Bool)

(declare-fun e!3005441 () Bool)

(assert (=> d!1540426 (=> res!2046438 e!3005441)))

(assert (=> d!1540426 (= res!2046438 (or ((_ is Nil!54539) (t!362143 (t!362143 (toList!7143 lt!1962666)))) ((_ is Nil!54539) (t!362143 (t!362143 (t!362143 (toList!7143 lt!1962666)))))))))

(assert (=> d!1540426 (= (isStrictlySorted!929 (t!362143 (t!362143 (toList!7143 lt!1962666)))) e!3005441)))

(declare-fun b!4811031 () Bool)

(declare-fun e!3005442 () Bool)

(assert (=> b!4811031 (= e!3005441 e!3005442)))

(declare-fun res!2046439 () Bool)

(assert (=> b!4811031 (=> (not res!2046439) (not e!3005442))))

(assert (=> b!4811031 (= res!2046439 (bvslt (_1!31996 (h!60971 (t!362143 (t!362143 (toList!7143 lt!1962666))))) (_1!31996 (h!60971 (t!362143 (t!362143 (t!362143 (toList!7143 lt!1962666))))))))))

(declare-fun b!4811032 () Bool)

(assert (=> b!4811032 (= e!3005442 (isStrictlySorted!929 (t!362143 (t!362143 (t!362143 (toList!7143 lt!1962666))))))))

(assert (= (and d!1540426 (not res!2046438)) b!4811031))

(assert (= (and b!4811031 res!2046439) b!4811032))

(declare-fun m!5796836 () Bool)

(assert (=> b!4811032 m!5796836))

(assert (=> b!4810813 d!1540426))

(assert (=> bm!335768 d!1540386))

(declare-fun d!1540428 () Bool)

(assert (=> d!1540428 (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(declare-fun lt!1962869 () Unit!141553)

(declare-fun choose!34857 (List!54663 (_ BitVec 64)) Unit!141553)

(assert (=> d!1540428 (= lt!1962869 (choose!34857 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(declare-fun e!3005445 () Bool)

(assert (=> d!1540428 e!3005445))

(declare-fun res!2046442 () Bool)

(assert (=> d!1540428 (=> (not res!2046442) (not e!3005445))))

(assert (=> d!1540428 (= res!2046442 (isStrictlySorted!929 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540428 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665) lt!1962869)))

(declare-fun b!4811035 () Bool)

(assert (=> b!4811035 (= e!3005445 (containsKey!4149 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))

(assert (= (and d!1540428 res!2046442) b!4811035))

(assert (=> d!1540428 m!5796596))

(assert (=> d!1540428 m!5796596))

(assert (=> d!1540428 m!5796628))

(declare-fun m!5796838 () Bool)

(assert (=> d!1540428 m!5796838))

(declare-fun m!5796840 () Bool)

(assert (=> d!1540428 m!5796840))

(assert (=> b!4811035 m!5796624))

(assert (=> b!4810773 d!1540428))

(declare-fun d!1540430 () Bool)

(assert (=> d!1540430 (= (isDefined!10448 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665)) (not (isEmpty!29551 (getValueByKey!2489 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))) lt!1962665))))))

(declare-fun bs!1160109 () Bool)

(assert (= bs!1160109 d!1540430))

(assert (=> bs!1160109 m!5796596))

(declare-fun m!5796842 () Bool)

(assert (=> bs!1160109 m!5796842))

(assert (=> b!4810773 d!1540430))

(assert (=> b!4810773 d!1540354))

(declare-fun d!1540432 () Bool)

(assert (=> d!1540432 true))

(assert (=> d!1540432 true))

(declare-fun res!2046445 () (_ BitVec 64))

(assert (=> d!1540432 (= (choose!34854 (hashF!13340 thiss!41921) key!1652) res!2046445)))

(assert (=> d!1540380 d!1540432))

(assert (=> d!1540364 d!1540384))

(assert (=> b!4810775 d!1540430))

(assert (=> b!4810775 d!1540354))

(declare-fun d!1540434 () Bool)

(assert (=> d!1540434 (arrayForallSeekEntryOrOpenFound!0 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(declare-fun lt!1962872 () Unit!141553)

(declare-fun choose!979 (array!18594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!141553)

(assert (=> d!1540434 (= lt!1962872 (choose!979 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 lt!1962722))))

(assert (=> d!1540434 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540434 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 lt!1962722) lt!1962872)))

(declare-fun bs!1160110 () Bool)

(assert (= bs!1160110 d!1540434))

(assert (=> bs!1160110 m!5796650))

(declare-fun m!5796844 () Bool)

(assert (=> bs!1160110 m!5796844))

(assert (=> bs!1160110 m!5796740))

(assert (=> b!4810798 d!1540434))

(declare-fun d!1540436 () Bool)

(declare-fun e!3005448 () Bool)

(assert (=> d!1540436 e!3005448))

(declare-fun c!820012 () Bool)

(assert (=> d!1540436 (= c!820012 (and (not (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1962875 () Unit!141553)

(declare-fun choose!34858 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64) Int) Unit!141553)

(assert (=> d!1540436 (= lt!1962875 (choose!34858 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540436 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540436 (= (lemmaKeyInListMapIsInArray!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962875)))

(declare-fun b!4811040 () Bool)

(assert (=> b!4811040 (= e!3005448 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000))))

(declare-fun b!4811041 () Bool)

(assert (=> b!4811041 (= e!3005448 (ite (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1540436 c!820012) b!4811040))

(assert (= (and d!1540436 (not c!820012)) b!4811041))

(declare-fun m!5796846 () Bool)

(assert (=> d!1540436 m!5796846))

(assert (=> d!1540436 m!5796740))

(assert (=> b!4811040 m!5796656))

(assert (=> b!4810798 d!1540436))

(assert (=> b!4810798 d!1540388))

(declare-fun b!4811051 () Bool)

(declare-fun e!3005456 () Bool)

(declare-fun call!335811 () Bool)

(assert (=> b!4811051 (= e!3005456 call!335811)))

(declare-fun bm!335806 () Bool)

(assert (=> bm!335806 (= call!335811 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!1962722 #b00000000000000000000000000000001) (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811052 () Bool)

(declare-fun e!3005455 () Bool)

(assert (=> b!4811052 (= e!3005455 e!3005456)))

(declare-fun lt!1962883 () (_ BitVec 64))

(assert (=> b!4811052 (= lt!1962883 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962722))))

(declare-fun lt!1962884 () Unit!141553)

(assert (=> b!4811052 (= lt!1962884 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962883 lt!1962722))))

(assert (=> b!4811052 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962883 #b00000000000000000000000000000000)))

(declare-fun lt!1962882 () Unit!141553)

(assert (=> b!4811052 (= lt!1962882 lt!1962884)))

(declare-fun res!2046451 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18594 (_ BitVec 32)) SeekEntryResult!29)

(assert (=> b!4811052 (= res!2046451 (= (seekEntryOrOpen!0 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962722) (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (Found!29 lt!1962722)))))

(assert (=> b!4811052 (=> (not res!2046451) (not e!3005456))))

(declare-fun b!4811053 () Bool)

(declare-fun e!3005457 () Bool)

(assert (=> b!4811053 (= e!3005457 e!3005455)))

(declare-fun c!820015 () Bool)

(assert (=> b!4811053 (= c!820015 (validKeyInArray!0 (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962722)))))

(declare-fun d!1540438 () Bool)

(declare-fun res!2046450 () Bool)

(assert (=> d!1540438 (=> res!2046450 e!3005457)))

(assert (=> d!1540438 (= res!2046450 (bvsge lt!1962722 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(assert (=> d!1540438 (= (arrayForallSeekEntryOrOpenFound!0 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) e!3005457)))

(declare-fun b!4811050 () Bool)

(assert (=> b!4811050 (= e!3005455 call!335811)))

(assert (= (and d!1540438 (not res!2046450)) b!4811053))

(assert (= (and b!4811053 c!820015) b!4811052))

(assert (= (and b!4811053 (not c!820015)) b!4811050))

(assert (= (and b!4811052 res!2046451) b!4811051))

(assert (= (or b!4811051 b!4811050) bm!335806))

(declare-fun m!5796848 () Bool)

(assert (=> bm!335806 m!5796848))

(declare-fun m!5796850 () Bool)

(assert (=> b!4811052 m!5796850))

(declare-fun m!5796852 () Bool)

(assert (=> b!4811052 m!5796852))

(declare-fun m!5796854 () Bool)

(assert (=> b!4811052 m!5796854))

(assert (=> b!4811052 m!5796850))

(declare-fun m!5796856 () Bool)

(assert (=> b!4811052 m!5796856))

(assert (=> b!4811053 m!5796850))

(assert (=> b!4811053 m!5796850))

(declare-fun m!5796858 () Bool)

(assert (=> b!4811053 m!5796858))

(assert (=> b!4810798 d!1540438))

(declare-fun d!1540440 () Bool)

(declare-fun lt!1962887 () (_ BitVec 32))

(assert (=> d!1540440 (and (or (bvslt lt!1962887 #b00000000000000000000000000000000) (bvsge lt!1962887 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (and (bvsge lt!1962887 #b00000000000000000000000000000000) (bvslt lt!1962887 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))) (bvsge lt!1962887 #b00000000000000000000000000000000) (bvslt lt!1962887 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (= (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962887) lt!1962665))))

(declare-fun e!3005460 () (_ BitVec 32))

(assert (=> d!1540440 (= lt!1962887 e!3005460)))

(declare-fun c!820018 () Bool)

(assert (=> d!1540440 (= c!820018 (= (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b00000000000000000000000000000000) lt!1962665))))

(assert (=> d!1540440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (bvslt (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) #b01111111111111111111111111111111))))

(assert (=> d!1540440 (= (arrayScanForKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000) lt!1962887)))

(declare-fun b!4811058 () Bool)

(assert (=> b!4811058 (= e!3005460 #b00000000000000000000000000000000)))

(declare-fun b!4811059 () Bool)

(assert (=> b!4811059 (= e!3005460 (arrayScanForKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1540440 c!820018) b!4811058))

(assert (= (and d!1540440 (not c!820018)) b!4811059))

(declare-fun m!5796860 () Bool)

(assert (=> d!1540440 m!5796860))

(assert (=> d!1540440 m!5796734))

(declare-fun m!5796862 () Bool)

(assert (=> b!4811059 m!5796862))

(assert (=> b!4810798 d!1540440))

(declare-fun d!1540442 () Bool)

(declare-fun lt!1962893 () SeekEntryResult!29)

(assert (=> d!1540442 (and ((_ is Found!29) lt!1962893) (= (index!1498 lt!1962893) lt!1962722))))

(assert (=> d!1540442 (= lt!1962893 (seekEntry!0 lt!1962665 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun lt!1962892 () Unit!141553)

(declare-fun choose!259 ((_ BitVec 64) (_ BitVec 32) array!18594 (_ BitVec 32)) Unit!141553)

(assert (=> d!1540442 (= lt!1962892 (choose!259 lt!1962665 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540442 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540442 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1962665 lt!1962722 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962892)))

(declare-fun bs!1160111 () Bool)

(assert (= bs!1160111 d!1540442))

(assert (=> bs!1160111 m!5796640))

(declare-fun m!5796864 () Bool)

(assert (=> bs!1160111 m!5796864))

(assert (=> bs!1160111 m!5796740))

(assert (=> b!4810798 d!1540442))

(declare-fun d!1540444 () Bool)

(declare-fun e!3005461 () Bool)

(assert (=> d!1540444 e!3005461))

(declare-fun res!2046452 () Bool)

(assert (=> d!1540444 (=> (not res!2046452) (not e!3005461))))

(assert (=> d!1540444 (= res!2046452 (and (bvsge (index!1498 lt!1962758) #b00000000000000000000000000000000) (bvslt (index!1498 lt!1962758) (size!36541 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))))

(declare-fun lt!1962894 () Unit!141553)

(assert (=> d!1540444 (= lt!1962894 (choose!34856 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540444 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540444 (= (lemmaValidKeyInArrayIsInListMap!22 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962894)))

(declare-fun b!4811060 () Bool)

(assert (=> b!4811060 (= e!3005461 (contains!18264 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(assert (= (and d!1540444 res!2046452) b!4811060))

(declare-fun m!5796866 () Bool)

(assert (=> d!1540444 m!5796866))

(assert (=> d!1540444 m!5796740))

(assert (=> b!4811060 m!5796634))

(assert (=> b!4811060 m!5796690))

(assert (=> b!4811060 m!5796634))

(assert (=> b!4811060 m!5796690))

(assert (=> b!4811060 m!5796694))

(assert (=> b!4810879 d!1540444))

(declare-fun b!4811075 () Bool)

(declare-fun e!3005475 () Bool)

(declare-fun call!335820 () List!54662)

(assert (=> b!4811075 (= e!3005475 (= call!335820 (select (arr!8296 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(assert (=> b!4811075 (and (bvsge (index!1498 lt!1962758) #b00000000000000000000000000000000) (bvslt (index!1498 lt!1962758) (size!36542 (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))))

(declare-fun b!4811076 () Bool)

(declare-fun e!3005476 () Bool)

(declare-fun e!3005474 () Bool)

(assert (=> b!4811076 (= e!3005476 e!3005474)))

(declare-fun c!820023 () Bool)

(assert (=> b!4811076 (= c!820023 (= lt!1962665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!335815 () Bool)

(declare-fun call!335822 () List!54662)

(assert (=> bm!335815 (= call!335820 call!335822)))

(declare-fun b!4811077 () Bool)

(declare-fun e!3005473 () Bool)

(assert (=> b!4811077 (= e!3005473 (= call!335822 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811078 () Bool)

(declare-fun res!2046460 () Bool)

(assert (=> b!4811078 (=> (not res!2046460) (not e!3005475))))

(assert (=> b!4811078 (= res!2046460 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000))))

(assert (=> b!4811078 (= e!3005474 e!3005475)))

(declare-fun b!4811079 () Bool)

(declare-fun e!3005472 () Bool)

(assert (=> b!4811079 (= e!3005472 (= call!335820 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun call!335821 () ListLongMap!5603)

(declare-fun call!335823 () ListLongMap!5603)

(declare-fun c!820024 () Bool)

(declare-fun bm!335816 () Bool)

(assert (=> bm!335816 (= call!335822 (apply!13156 (ite c!820024 call!335823 call!335821) lt!1962665))))

(declare-fun d!1540446 () Bool)

(assert (=> d!1540446 e!3005476))

(assert (=> d!1540446 (= c!820024 (= lt!1962665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1962897 () Unit!141553)

(declare-fun choose!34859 (array!18594 array!18596 (_ BitVec 32) (_ BitVec 32) List!54662 List!54662 (_ BitVec 64) (_ BitVec 32) Int) Unit!141553)

(assert (=> d!1540446 (= lt!1962897 (choose!34859 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(assert (=> d!1540446 (validMask!0 (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))

(assert (=> d!1540446 (= (lemmaKeyInListMapThenSameValueInArray!17 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758) (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) lt!1962897)))

(declare-fun bm!335817 () Bool)

(assert (=> bm!335817 (= call!335823 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))))))

(declare-fun b!4811080 () Bool)

(declare-fun res!2046461 () Bool)

(assert (=> b!4811080 (=> (not res!2046461) (not e!3005472))))

(assert (=> b!4811080 (= res!2046461 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4811080 (= e!3005474 e!3005472)))

(declare-fun bm!335818 () Bool)

(assert (=> bm!335818 (= call!335821 call!335823)))

(declare-fun b!4811081 () Bool)

(assert (=> b!4811081 (= e!3005476 e!3005473)))

(declare-fun res!2046459 () Bool)

(assert (=> b!4811081 (= res!2046459 (not (= (bvand (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4811081 (=> (not res!2046459) (not e!3005473))))

(assert (= (and d!1540446 c!820024) b!4811081))

(assert (= (and d!1540446 (not c!820024)) b!4811076))

(assert (= (and b!4811081 res!2046459) b!4811077))

(assert (= (and b!4811076 c!820023) b!4811080))

(assert (= (and b!4811076 (not c!820023)) b!4811078))

(assert (= (and b!4811080 res!2046461) b!4811079))

(assert (= (and b!4811078 res!2046460) b!4811075))

(assert (= (or b!4811079 b!4811075) bm!335818))

(assert (= (or b!4811079 b!4811075) bm!335815))

(assert (= (or b!4811077 bm!335818) bm!335817))

(assert (= (or b!4811077 bm!335815) bm!335816))

(declare-fun m!5796868 () Bool)

(assert (=> d!1540446 m!5796868))

(assert (=> d!1540446 m!5796740))

(assert (=> bm!335817 m!5796634))

(assert (=> b!4811075 m!5796676))

(assert (=> b!4811078 m!5796656))

(declare-fun m!5796870 () Bool)

(assert (=> bm!335816 m!5796870))

(assert (=> b!4810879 d!1540446))

(assert (=> b!4810879 d!1540384))

(declare-fun d!1540448 () Bool)

(declare-fun e!3005477 () Bool)

(assert (=> d!1540448 e!3005477))

(declare-fun res!2046462 () Bool)

(assert (=> d!1540448 (=> res!2046462 e!3005477)))

(declare-fun lt!1962901 () Bool)

(assert (=> d!1540448 (= res!2046462 (not lt!1962901))))

(declare-fun lt!1962900 () Bool)

(assert (=> d!1540448 (= lt!1962901 lt!1962900)))

(declare-fun lt!1962898 () Unit!141553)

(declare-fun e!3005478 () Unit!141553)

(assert (=> d!1540448 (= lt!1962898 e!3005478)))

(declare-fun c!820025 () Bool)

(assert (=> d!1540448 (= c!820025 lt!1962900)))

(assert (=> d!1540448 (= lt!1962900 (containsKey!4149 (toList!7143 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(assert (=> d!1540448 (= (contains!18264 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))) lt!1962901)))

(declare-fun b!4811082 () Bool)

(declare-fun lt!1962899 () Unit!141553)

(assert (=> b!4811082 (= e!3005478 lt!1962899)))

(assert (=> b!4811082 (= lt!1962899 (lemmaContainsKeyImpliesGetValueByKeyDefined!2277 (toList!7143 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(assert (=> b!4811082 (isDefined!10448 (getValueByKey!2489 (toList!7143 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758))))))

(declare-fun b!4811083 () Bool)

(declare-fun Unit!141561 () Unit!141553)

(assert (=> b!4811083 (= e!3005478 Unit!141561)))

(declare-fun b!4811084 () Bool)

(assert (=> b!4811084 (= e!3005477 (isDefined!10448 (getValueByKey!2489 (toList!7143 (getCurrentListMap!32 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (_values!5368 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (mask!15053 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (extraKeys!5330 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) #b00000000000000000000000000000000 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))) (select (arr!8295 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921)))))) (index!1498 lt!1962758)))))))

(assert (= (and d!1540448 c!820025) b!4811082))

(assert (= (and d!1540448 (not c!820025)) b!4811083))

(assert (= (and d!1540448 (not res!2046462)) b!4811084))

(assert (=> d!1540448 m!5796690))

(declare-fun m!5796872 () Bool)

(assert (=> d!1540448 m!5796872))

(assert (=> b!4811082 m!5796690))

(declare-fun m!5796874 () Bool)

(assert (=> b!4811082 m!5796874))

(assert (=> b!4811082 m!5796690))

(declare-fun m!5796876 () Bool)

(assert (=> b!4811082 m!5796876))

(assert (=> b!4811082 m!5796876))

(declare-fun m!5796878 () Bool)

(assert (=> b!4811082 m!5796878))

(assert (=> b!4811084 m!5796690))

(assert (=> b!4811084 m!5796876))

(assert (=> b!4811084 m!5796876))

(assert (=> b!4811084 m!5796878))

(assert (=> b!4810879 d!1540448))

(assert (=> b!4810879 d!1540386))

(declare-fun d!1540450 () Bool)

(assert (=> d!1540450 (arrayContainsKey!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 #b00000000000000000000000000000000)))

(declare-fun lt!1962902 () Unit!141553)

(assert (=> d!1540450 (= lt!1962902 (choose!683 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758)))))

(assert (=> d!1540450 (bvsge (index!1498 lt!1962758) #b00000000000000000000000000000000)))

(assert (=> d!1540450 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5397 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665 (index!1498 lt!1962758)) lt!1962902)))

(declare-fun bs!1160112 () Bool)

(assert (= bs!1160112 d!1540450))

(assert (=> bs!1160112 m!5796656))

(declare-fun m!5796880 () Bool)

(assert (=> bs!1160112 m!5796880))

(assert (=> b!4810879 d!1540450))

(declare-fun tp!1360687 () Bool)

(declare-fun b!4811085 () Bool)

(declare-fun e!3005479 () Bool)

(assert (=> b!4811085 (= e!3005479 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360687))))

(assert (=> b!4810889 (= tp!1360685 e!3005479)))

(assert (= (and b!4810889 ((_ is Cons!54538) (t!362142 (t!362142 (minValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))) b!4811085))

(declare-fun b!4811086 () Bool)

(declare-fun tp!1360688 () Bool)

(declare-fun e!3005480 () Bool)

(assert (=> b!4811086 (= e!3005480 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360688))))

(assert (=> b!4810882 (= tp!1360677 e!3005480)))

(assert (= (and b!4810882 ((_ is Cons!54538) (t!362142 (t!362142 mapDefault!22334)))) b!4811086))

(declare-fun b!4811087 () Bool)

(declare-fun tp!1360689 () Bool)

(declare-fun e!3005481 () Bool)

(assert (=> b!4811087 (= e!3005481 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360689))))

(assert (=> b!4810886 (= tp!1360680 e!3005481)))

(assert (= (and b!4810886 ((_ is Cons!54538) (t!362142 mapDefault!22338))) b!4811087))

(declare-fun b!4811088 () Bool)

(declare-fun tp!1360690 () Bool)

(declare-fun e!3005482 () Bool)

(assert (=> b!4811088 (= e!3005482 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360690))))

(assert (=> b!4810884 (= tp!1360679 e!3005482)))

(assert (= (and b!4810884 ((_ is Cons!54538) (t!362142 (dynLambda!22136 (defaultEntry!5473 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))) lt!1962665)))) b!4811088))

(declare-fun tp!1360691 () Bool)

(declare-fun b!4811089 () Bool)

(declare-fun e!3005483 () Bool)

(assert (=> b!4811089 (= e!3005483 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360691))))

(assert (=> b!4810888 (= tp!1360684 e!3005483)))

(assert (= (and b!4810888 ((_ is Cons!54538) (t!362142 (t!362142 mapValue!22334)))) b!4811089))

(declare-fun b!4811090 () Bool)

(declare-fun tp!1360692 () Bool)

(declare-fun e!3005484 () Bool)

(assert (=> b!4811090 (= e!3005484 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360692))))

(assert (=> b!4810890 (= tp!1360686 e!3005484)))

(assert (= (and b!4810890 ((_ is Cons!54538) (t!362142 (t!362142 mapDefault!22337)))) b!4811090))

(declare-fun e!3005486 () Bool)

(declare-fun b!4811091 () Bool)

(declare-fun tp!1360694 () Bool)

(assert (=> b!4811091 (= e!3005486 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360694))))

(declare-fun mapNonEmpty!22339 () Bool)

(declare-fun mapRes!22339 () Bool)

(declare-fun tp!1360695 () Bool)

(assert (=> mapNonEmpty!22339 (= mapRes!22339 (and tp!1360695 e!3005486))))

(declare-fun mapKey!22339 () (_ BitVec 32))

(declare-fun mapValue!22339 () List!54662)

(declare-fun mapRest!22339 () (Array (_ BitVec 32) List!54662))

(assert (=> mapNonEmpty!22339 (= mapRest!22338 (store mapRest!22339 mapKey!22339 mapValue!22339))))

(declare-fun mapIsEmpty!22339 () Bool)

(assert (=> mapIsEmpty!22339 mapRes!22339))

(declare-fun tp!1360693 () Bool)

(declare-fun e!3005485 () Bool)

(declare-fun b!4811092 () Bool)

(assert (=> b!4811092 (= e!3005485 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360693))))

(declare-fun condMapEmpty!22339 () Bool)

(declare-fun mapDefault!22339 () List!54662)

(assert (=> mapNonEmpty!22338 (= condMapEmpty!22339 (= mapRest!22338 ((as const (Array (_ BitVec 32) List!54662)) mapDefault!22339)))))

(assert (=> mapNonEmpty!22338 (= tp!1360682 (and e!3005485 mapRes!22339))))

(assert (= (and mapNonEmpty!22338 condMapEmpty!22339) mapIsEmpty!22339))

(assert (= (and mapNonEmpty!22338 (not condMapEmpty!22339)) mapNonEmpty!22339))

(assert (= (and mapNonEmpty!22339 ((_ is Cons!54538) mapValue!22339)) b!4811091))

(assert (= (and mapNonEmpty!22338 ((_ is Cons!54538) mapDefault!22339)) b!4811092))

(declare-fun m!5796882 () Bool)

(assert (=> mapNonEmpty!22339 m!5796882))

(declare-fun b!4811093 () Bool)

(declare-fun e!3005487 () Bool)

(declare-fun tp!1360696 () Bool)

(assert (=> b!4811093 (= e!3005487 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360696))))

(assert (=> b!4810883 (= tp!1360678 e!3005487)))

(assert (= (and b!4810883 ((_ is Cons!54538) (t!362142 (t!362142 (zeroValue!5343 (v!48851 (underlying!10317 (v!48852 (underlying!10318 thiss!41921))))))))) b!4811093))

(declare-fun tp!1360697 () Bool)

(declare-fun e!3005488 () Bool)

(declare-fun b!4811094 () Bool)

(assert (=> b!4811094 (= e!3005488 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360697))))

(assert (=> b!4810885 (= tp!1360681 e!3005488)))

(assert (= (and b!4810885 ((_ is Cons!54538) (t!362142 mapValue!22338))) b!4811094))

(declare-fun tp!1360698 () Bool)

(declare-fun b!4811095 () Bool)

(declare-fun e!3005489 () Bool)

(assert (=> b!4811095 (= e!3005489 (and tp_is_empty!33985 tp_is_empty!33987 tp!1360698))))

(assert (=> b!4810887 (= tp!1360683 e!3005489)))

(assert (= (and b!4810887 ((_ is Cons!54538) (t!362142 (t!362142 mapValue!22337)))) b!4811095))

(declare-fun b_lambda!188237 () Bool)

(assert (= b_lambda!188233 (or b!4810733 b_lambda!188237)))

(declare-fun bs!1160113 () Bool)

(declare-fun d!1540452 () Bool)

(assert (= bs!1160113 (and d!1540452 b!4810733)))

(assert (=> bs!1160113 (= (dynLambda!22137 lambda!233763 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921))))))) (noDuplicateKeys!2389 (_2!31996 (h!60971 (t!362143 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))))))))

(declare-fun m!5796884 () Bool)

(assert (=> bs!1160113 m!5796884))

(assert (=> b!4811007 d!1540452))

(declare-fun b_lambda!188239 () Bool)

(assert (= b_lambda!188235 (or d!1540372 b_lambda!188239)))

(declare-fun bs!1160114 () Bool)

(declare-fun d!1540454 () Bool)

(assert (= bs!1160114 (and d!1540454 d!1540372)))

(declare-fun allKeysSameHash!1983 (List!54662 (_ BitVec 64) Hashable!7066) Bool)

(assert (=> bs!1160114 (= (dynLambda!22137 lambda!233766 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (allKeysSameHash!1983 (_2!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (_1!31996 (h!60971 (toList!7143 (map!12418 (v!48852 (underlying!10318 thiss!41921)))))) (hashF!13340 thiss!41921)))))

(declare-fun m!5796886 () Bool)

(assert (=> bs!1160114 m!5796886))

(assert (=> b!4811023 d!1540454))

(check-sat (not b!4811052) (not b!4810989) (not b!4811088) (not b!4810995) (not d!1540400) (not b!4811091) (not d!1540390) (not b!4811078) (not b!4810973) (not bs!1160113) (not b!4811005) (not d!1540450) (not d!1540388) (not b!4811018) tp_is_empty!33985 (not b!4810986) (not b!4810951) tp_is_empty!33987 (not bm!335817) (not d!1540418) (not d!1540398) (not b!4811092) (not b!4811024) (not mapNonEmpty!22339) (not b!4810998) (not bm!335816) (not d!1540448) (not b_lambda!188215) (not b!4811019) (not b!4811089) (not b_lambda!188227) (not bm!335806) (not b!4811040) (not b!4810992) (not b!4811086) (not bm!335798) (not bm!335800) (not b!4810937) (not b_lambda!188239) (not b!4811082) (not b_next!130953) (not d!1540402) (not d!1540404) (not d!1540428) (not b_lambda!188225) (not b!4810950) (not b!4811094) (not b!4810935) (not b!4811008) (not b_lambda!188229) (not b!4810941) (not b!4811022) (not b!4811009) (not d!1540446) (not d!1540406) (not b!4811087) (not b!4811053) (not bm!335801) (not bm!335797) (not d!1540384) (not b!4810947) (not b!4810942) (not b!4811032) (not b!4811029) (not b!4811093) (not b!4810959) (not b!4811090) (not b!4811035) b_and!341957 (not d!1540416) (not d!1540442) (not b!4811030) (not b!4811001) (not b!4811011) (not d!1540436) (not b!4810993) (not b_lambda!188237) (not b!4811085) (not b!4810980) (not d!1540430) (not b_lambda!188231) (not b!4810940) (not d!1540444) (not b!4811095) (not b!4811020) (not bs!1160114) (not d!1540434) (not b!4811059) (not b_next!130955) (not b!4811060) (not b!4811084) b_and!341949)
(check-sat b_and!341957 b_and!341949 (not b_next!130953) (not b_next!130955))
