; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546082 () Bool)

(assert start!546082)

(declare-fun b_free!133581 () Bool)

(declare-fun b_next!134371 () Bool)

(assert (=> start!546082 (= b_free!133581 (not b_next!134371))))

(declare-fun tp!1448034 () Bool)

(declare-fun b_and!350609 () Bool)

(assert (=> start!546082 (= tp!1448034 b_and!350609)))

(declare-fun res!2194995 () Bool)

(declare-fun e!3216848 () Bool)

(assert (=> start!546082 (=> (not res!2194995) (not e!3216848))))

(declare-datatypes ((B!3137 0))(
  ( (B!3138 (val!24352 Int)) )
))
(declare-datatypes ((List!60018 0))(
  ( (Nil!59894) (Cons!59894 (h!66342 B!3137) (t!373151 List!60018)) )
))
(declare-fun l!3049 () List!60018)

(declare-fun p!1890 () Int)

(declare-fun forall!14088 (List!60018 Int) Bool)

(assert (=> start!546082 (= res!2194995 (forall!14088 l!3049 p!1890))))

(assert (=> start!546082 e!3216848))

(declare-fun e!3216847 () Bool)

(assert (=> start!546082 e!3216847))

(assert (=> start!546082 tp!1448034))

(declare-fun b!5162889 () Bool)

(declare-fun res!2194996 () Bool)

(assert (=> b!5162889 (=> (not res!2194996) (not e!3216848))))

(get-info :version)

(assert (=> b!5162889 (= res!2194996 (not ((_ is Cons!59894) l!3049)))))

(declare-fun b!5162890 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun forall!14089 ((InoxSet B!3137) Int) Bool)

(declare-fun content!10619 (List!60018) (InoxSet B!3137))

(assert (=> b!5162890 (= e!3216848 (not (forall!14089 (content!10619 l!3049) p!1890)))))

(declare-fun b!5162891 () Bool)

(declare-fun tp_is_empty!38283 () Bool)

(declare-fun tp!1448035 () Bool)

(assert (=> b!5162891 (= e!3216847 (and tp_is_empty!38283 tp!1448035))))

(assert (= (and start!546082 res!2194995) b!5162889))

(assert (= (and b!5162889 res!2194996) b!5162890))

(assert (= (and start!546082 ((_ is Cons!59894) l!3049)) b!5162891))

(declare-fun m!6213506 () Bool)

(assert (=> start!546082 m!6213506))

(declare-fun m!6213508 () Bool)

(assert (=> b!5162890 m!6213508))

(assert (=> b!5162890 m!6213508))

(declare-fun m!6213510 () Bool)

(assert (=> b!5162890 m!6213510))

(check-sat (not b!5162890) (not b_next!134371) b_and!350609 tp_is_empty!38283 (not start!546082) (not b!5162891))
(check-sat b_and!350609 (not b_next!134371))
(get-model)

(declare-fun d!1666045 () Bool)

(declare-fun res!2195001 () Bool)

(declare-fun e!3216856 () Bool)

(assert (=> d!1666045 (=> res!2195001 e!3216856)))

(assert (=> d!1666045 (= res!2195001 ((_ is Nil!59894) l!3049))))

(assert (=> d!1666045 (= (forall!14088 l!3049 p!1890) e!3216856)))

(declare-fun b!5162902 () Bool)

(declare-fun e!3216857 () Bool)

(assert (=> b!5162902 (= e!3216856 e!3216857)))

(declare-fun res!2195002 () Bool)

(assert (=> b!5162902 (=> (not res!2195002) (not e!3216857))))

(declare-fun dynLambda!23850 (Int B!3137) Bool)

(assert (=> b!5162902 (= res!2195002 (dynLambda!23850 p!1890 (h!66342 l!3049)))))

(declare-fun b!5162903 () Bool)

(assert (=> b!5162903 (= e!3216857 (forall!14088 (t!373151 l!3049) p!1890))))

(assert (= (and d!1666045 (not res!2195001)) b!5162902))

(assert (= (and b!5162902 res!2195002) b!5162903))

(declare-fun b_lambda!200729 () Bool)

(assert (=> (not b_lambda!200729) (not b!5162902)))

(declare-fun t!373153 () Bool)

(declare-fun tb!261933 () Bool)

(assert (=> (and start!546082 (= p!1890 p!1890) t!373153) tb!261933))

(declare-fun result!330424 () Bool)

(assert (=> tb!261933 (= result!330424 true)))

(assert (=> b!5162902 t!373153))

(declare-fun b_and!350611 () Bool)

(assert (= b_and!350609 (and (=> t!373153 result!330424) b_and!350611)))

(declare-fun m!6213522 () Bool)

(assert (=> b!5162902 m!6213522))

(declare-fun m!6213524 () Bool)

(assert (=> b!5162903 m!6213524))

(assert (=> start!546082 d!1666045))

(declare-fun d!1666051 () Bool)

(declare-fun lt!2122745 () Bool)

(declare-fun toList!8437 ((InoxSet B!3137)) List!60018)

(assert (=> d!1666051 (= lt!2122745 (forall!14088 (toList!8437 (content!10619 l!3049)) p!1890))))

(declare-fun choose!38187 ((InoxSet B!3137) Int) Bool)

(assert (=> d!1666051 (= lt!2122745 (choose!38187 (content!10619 l!3049) p!1890))))

(assert (=> d!1666051 (= (forall!14089 (content!10619 l!3049) p!1890) lt!2122745)))

(declare-fun bs!1202696 () Bool)

(assert (= bs!1202696 d!1666051))

(assert (=> bs!1202696 m!6213508))

(declare-fun m!6213530 () Bool)

(assert (=> bs!1202696 m!6213530))

(assert (=> bs!1202696 m!6213530))

(declare-fun m!6213532 () Bool)

(assert (=> bs!1202696 m!6213532))

(assert (=> bs!1202696 m!6213508))

(declare-fun m!6213534 () Bool)

(assert (=> bs!1202696 m!6213534))

(assert (=> b!5162890 d!1666051))

(declare-fun d!1666053 () Bool)

(declare-fun c!888224 () Bool)

(assert (=> d!1666053 (= c!888224 ((_ is Nil!59894) l!3049))))

(declare-fun e!3216869 () (InoxSet B!3137))

(assert (=> d!1666053 (= (content!10619 l!3049) e!3216869)))

(declare-fun b!5162919 () Bool)

(assert (=> b!5162919 (= e!3216869 ((as const (Array B!3137 Bool)) false))))

(declare-fun b!5162920 () Bool)

(assert (=> b!5162920 (= e!3216869 ((_ map or) (store ((as const (Array B!3137 Bool)) false) (h!66342 l!3049) true) (content!10619 (t!373151 l!3049))))))

(assert (= (and d!1666053 c!888224) b!5162919))

(assert (= (and d!1666053 (not c!888224)) b!5162920))

(declare-fun m!6213536 () Bool)

(assert (=> b!5162920 m!6213536))

(declare-fun m!6213538 () Bool)

(assert (=> b!5162920 m!6213538))

(assert (=> b!5162890 d!1666053))

(declare-fun b!5162925 () Bool)

(declare-fun e!3216872 () Bool)

(declare-fun tp!1448041 () Bool)

(assert (=> b!5162925 (= e!3216872 (and tp_is_empty!38283 tp!1448041))))

(assert (=> b!5162891 (= tp!1448035 e!3216872)))

(assert (= (and b!5162891 ((_ is Cons!59894) (t!373151 l!3049))) b!5162925))

(declare-fun b_lambda!200735 () Bool)

(assert (= b_lambda!200729 (or (and start!546082 b_free!133581) b_lambda!200735)))

(check-sat (not b!5162903) (not b_next!134371) (not b!5162925) b_and!350611 tp_is_empty!38283 (not b_lambda!200735) (not d!1666051) (not b!5162920))
(check-sat b_and!350611 (not b_next!134371))
(get-model)

(declare-fun d!1666065 () Bool)

(declare-fun c!888226 () Bool)

(assert (=> d!1666065 (= c!888226 ((_ is Nil!59894) (t!373151 l!3049)))))

(declare-fun e!3216882 () (InoxSet B!3137))

(assert (=> d!1666065 (= (content!10619 (t!373151 l!3049)) e!3216882)))

(declare-fun b!5162936 () Bool)

(assert (=> b!5162936 (= e!3216882 ((as const (Array B!3137 Bool)) false))))

(declare-fun b!5162937 () Bool)

(assert (=> b!5162937 (= e!3216882 ((_ map or) (store ((as const (Array B!3137 Bool)) false) (h!66342 (t!373151 l!3049)) true) (content!10619 (t!373151 (t!373151 l!3049)))))))

(assert (= (and d!1666065 c!888226) b!5162936))

(assert (= (and d!1666065 (not c!888226)) b!5162937))

(declare-fun m!6213558 () Bool)

(assert (=> b!5162937 m!6213558))

(declare-fun m!6213560 () Bool)

(assert (=> b!5162937 m!6213560))

(assert (=> b!5162920 d!1666065))

(declare-fun d!1666067 () Bool)

(declare-fun res!2195019 () Bool)

(declare-fun e!3216883 () Bool)

(assert (=> d!1666067 (=> res!2195019 e!3216883)))

(assert (=> d!1666067 (= res!2195019 ((_ is Nil!59894) (toList!8437 (content!10619 l!3049))))))

(assert (=> d!1666067 (= (forall!14088 (toList!8437 (content!10619 l!3049)) p!1890) e!3216883)))

(declare-fun b!5162938 () Bool)

(declare-fun e!3216884 () Bool)

(assert (=> b!5162938 (= e!3216883 e!3216884)))

(declare-fun res!2195020 () Bool)

(assert (=> b!5162938 (=> (not res!2195020) (not e!3216884))))

(assert (=> b!5162938 (= res!2195020 (dynLambda!23850 p!1890 (h!66342 (toList!8437 (content!10619 l!3049)))))))

(declare-fun b!5162939 () Bool)

(assert (=> b!5162939 (= e!3216884 (forall!14088 (t!373151 (toList!8437 (content!10619 l!3049))) p!1890))))

(assert (= (and d!1666067 (not res!2195019)) b!5162938))

(assert (= (and b!5162938 res!2195020) b!5162939))

(declare-fun b_lambda!200745 () Bool)

(assert (=> (not b_lambda!200745) (not b!5162938)))

(declare-fun t!373161 () Bool)

(declare-fun tb!261941 () Bool)

(assert (=> (and start!546082 (= p!1890 p!1890) t!373161) tb!261941))

(declare-fun result!330436 () Bool)

(assert (=> tb!261941 (= result!330436 true)))

(assert (=> b!5162938 t!373161))

(declare-fun b_and!350619 () Bool)

(assert (= b_and!350611 (and (=> t!373161 result!330436) b_and!350619)))

(declare-fun m!6213562 () Bool)

(assert (=> b!5162938 m!6213562))

(declare-fun m!6213564 () Bool)

(assert (=> b!5162939 m!6213564))

(assert (=> d!1666051 d!1666067))

(declare-fun d!1666069 () Bool)

(declare-fun e!3216887 () Bool)

(assert (=> d!1666069 e!3216887))

(declare-fun res!2195023 () Bool)

(assert (=> d!1666069 (=> (not res!2195023) (not e!3216887))))

(declare-fun lt!2122751 () List!60018)

(declare-fun noDuplicate!1131 (List!60018) Bool)

(assert (=> d!1666069 (= res!2195023 (noDuplicate!1131 lt!2122751))))

(declare-fun choose!38189 ((InoxSet B!3137)) List!60018)

(assert (=> d!1666069 (= lt!2122751 (choose!38189 (content!10619 l!3049)))))

(assert (=> d!1666069 (= (toList!8437 (content!10619 l!3049)) lt!2122751)))

(declare-fun b!5162942 () Bool)

(assert (=> b!5162942 (= e!3216887 (= (content!10619 lt!2122751) (content!10619 l!3049)))))

(assert (= (and d!1666069 res!2195023) b!5162942))

(declare-fun m!6213566 () Bool)

(assert (=> d!1666069 m!6213566))

(assert (=> d!1666069 m!6213508))

(declare-fun m!6213568 () Bool)

(assert (=> d!1666069 m!6213568))

(declare-fun m!6213570 () Bool)

(assert (=> b!5162942 m!6213570))

(assert (=> d!1666051 d!1666069))

(declare-fun d!1666071 () Bool)

(declare-fun res!2195026 () Bool)

(assert (=> d!1666071 (= res!2195026 (forall!14088 (toList!8437 (content!10619 l!3049)) p!1890))))

(assert (=> d!1666071 true))

(assert (=> d!1666071 (= (choose!38187 (content!10619 l!3049) p!1890) res!2195026)))

(declare-fun bs!1202698 () Bool)

(assert (= bs!1202698 d!1666071))

(assert (=> bs!1202698 m!6213508))

(assert (=> bs!1202698 m!6213530))

(assert (=> bs!1202698 m!6213530))

(assert (=> bs!1202698 m!6213532))

(assert (=> d!1666051 d!1666071))

(declare-fun d!1666073 () Bool)

(declare-fun res!2195027 () Bool)

(declare-fun e!3216888 () Bool)

(assert (=> d!1666073 (=> res!2195027 e!3216888)))

(assert (=> d!1666073 (= res!2195027 ((_ is Nil!59894) (t!373151 l!3049)))))

(assert (=> d!1666073 (= (forall!14088 (t!373151 l!3049) p!1890) e!3216888)))

(declare-fun b!5162943 () Bool)

(declare-fun e!3216889 () Bool)

(assert (=> b!5162943 (= e!3216888 e!3216889)))

(declare-fun res!2195028 () Bool)

(assert (=> b!5162943 (=> (not res!2195028) (not e!3216889))))

(assert (=> b!5162943 (= res!2195028 (dynLambda!23850 p!1890 (h!66342 (t!373151 l!3049))))))

(declare-fun b!5162944 () Bool)

(assert (=> b!5162944 (= e!3216889 (forall!14088 (t!373151 (t!373151 l!3049)) p!1890))))

(assert (= (and d!1666073 (not res!2195027)) b!5162943))

(assert (= (and b!5162943 res!2195028) b!5162944))

(declare-fun b_lambda!200747 () Bool)

(assert (=> (not b_lambda!200747) (not b!5162943)))

(declare-fun t!373163 () Bool)

(declare-fun tb!261943 () Bool)

(assert (=> (and start!546082 (= p!1890 p!1890) t!373163) tb!261943))

(declare-fun result!330438 () Bool)

(assert (=> tb!261943 (= result!330438 true)))

(assert (=> b!5162943 t!373163))

(declare-fun b_and!350621 () Bool)

(assert (= b_and!350619 (and (=> t!373163 result!330438) b_and!350621)))

(declare-fun m!6213572 () Bool)

(assert (=> b!5162943 m!6213572))

(declare-fun m!6213574 () Bool)

(assert (=> b!5162944 m!6213574))

(assert (=> b!5162903 d!1666073))

(declare-fun b!5162945 () Bool)

(declare-fun e!3216890 () Bool)

(declare-fun tp!1448043 () Bool)

(assert (=> b!5162945 (= e!3216890 (and tp_is_empty!38283 tp!1448043))))

(assert (=> b!5162925 (= tp!1448041 e!3216890)))

(assert (= (and b!5162925 ((_ is Cons!59894) (t!373151 (t!373151 l!3049)))) b!5162945))

(declare-fun b_lambda!200749 () Bool)

(assert (= b_lambda!200745 (or (and start!546082 b_free!133581) b_lambda!200749)))

(declare-fun b_lambda!200751 () Bool)

(assert (= b_lambda!200747 (or (and start!546082 b_free!133581) b_lambda!200751)))

(check-sat (not d!1666069) (not b_lambda!200749) b_and!350621 (not b!5162942) (not b_next!134371) (not b!5162937) (not b!5162945) (not d!1666071) (not b!5162939) (not b!5162944) tp_is_empty!38283 (not b_lambda!200735) (not b_lambda!200751))
(check-sat b_and!350621 (not b_next!134371))
(get-model)

(declare-fun d!1666077 () Bool)

(declare-fun c!888227 () Bool)

(assert (=> d!1666077 (= c!888227 ((_ is Nil!59894) lt!2122751))))

(declare-fun e!3216891 () (InoxSet B!3137))

(assert (=> d!1666077 (= (content!10619 lt!2122751) e!3216891)))

(declare-fun b!5162946 () Bool)

(assert (=> b!5162946 (= e!3216891 ((as const (Array B!3137 Bool)) false))))

(declare-fun b!5162947 () Bool)

(assert (=> b!5162947 (= e!3216891 ((_ map or) (store ((as const (Array B!3137 Bool)) false) (h!66342 lt!2122751) true) (content!10619 (t!373151 lt!2122751))))))

(assert (= (and d!1666077 c!888227) b!5162946))

(assert (= (and d!1666077 (not c!888227)) b!5162947))

(declare-fun m!6213576 () Bool)

(assert (=> b!5162947 m!6213576))

(declare-fun m!6213578 () Bool)

(assert (=> b!5162947 m!6213578))

(assert (=> b!5162942 d!1666077))

(declare-fun d!1666079 () Bool)

(declare-fun c!888228 () Bool)

(assert (=> d!1666079 (= c!888228 ((_ is Nil!59894) (t!373151 (t!373151 l!3049))))))

(declare-fun e!3216892 () (InoxSet B!3137))

(assert (=> d!1666079 (= (content!10619 (t!373151 (t!373151 l!3049))) e!3216892)))

(declare-fun b!5162948 () Bool)

(assert (=> b!5162948 (= e!3216892 ((as const (Array B!3137 Bool)) false))))

(declare-fun b!5162949 () Bool)

(assert (=> b!5162949 (= e!3216892 ((_ map or) (store ((as const (Array B!3137 Bool)) false) (h!66342 (t!373151 (t!373151 l!3049))) true) (content!10619 (t!373151 (t!373151 (t!373151 l!3049))))))))

(assert (= (and d!1666079 c!888228) b!5162948))

(assert (= (and d!1666079 (not c!888228)) b!5162949))

(declare-fun m!6213580 () Bool)

(assert (=> b!5162949 m!6213580))

(declare-fun m!6213582 () Bool)

(assert (=> b!5162949 m!6213582))

(assert (=> b!5162937 d!1666079))

(assert (=> d!1666071 d!1666067))

(assert (=> d!1666071 d!1666069))

(declare-fun d!1666081 () Bool)

(declare-fun res!2195029 () Bool)

(declare-fun e!3216893 () Bool)

(assert (=> d!1666081 (=> res!2195029 e!3216893)))

(assert (=> d!1666081 (= res!2195029 ((_ is Nil!59894) (t!373151 (t!373151 l!3049))))))

(assert (=> d!1666081 (= (forall!14088 (t!373151 (t!373151 l!3049)) p!1890) e!3216893)))

(declare-fun b!5162950 () Bool)

(declare-fun e!3216894 () Bool)

(assert (=> b!5162950 (= e!3216893 e!3216894)))

(declare-fun res!2195030 () Bool)

(assert (=> b!5162950 (=> (not res!2195030) (not e!3216894))))

(assert (=> b!5162950 (= res!2195030 (dynLambda!23850 p!1890 (h!66342 (t!373151 (t!373151 l!3049)))))))

(declare-fun b!5162951 () Bool)

(assert (=> b!5162951 (= e!3216894 (forall!14088 (t!373151 (t!373151 (t!373151 l!3049))) p!1890))))

(assert (= (and d!1666081 (not res!2195029)) b!5162950))

(assert (= (and b!5162950 res!2195030) b!5162951))

(declare-fun b_lambda!200753 () Bool)

(assert (=> (not b_lambda!200753) (not b!5162950)))

(declare-fun t!373165 () Bool)

(declare-fun tb!261945 () Bool)

(assert (=> (and start!546082 (= p!1890 p!1890) t!373165) tb!261945))

(declare-fun result!330440 () Bool)

(assert (=> tb!261945 (= result!330440 true)))

(assert (=> b!5162950 t!373165))

(declare-fun b_and!350623 () Bool)

(assert (= b_and!350621 (and (=> t!373165 result!330440) b_and!350623)))

(declare-fun m!6213584 () Bool)

(assert (=> b!5162950 m!6213584))

(declare-fun m!6213586 () Bool)

(assert (=> b!5162951 m!6213586))

(assert (=> b!5162944 d!1666081))

(declare-fun d!1666083 () Bool)

(declare-fun res!2195045 () Bool)

(declare-fun e!3216909 () Bool)

(assert (=> d!1666083 (=> res!2195045 e!3216909)))

(assert (=> d!1666083 (= res!2195045 ((_ is Nil!59894) lt!2122751))))

(assert (=> d!1666083 (= (noDuplicate!1131 lt!2122751) e!3216909)))

(declare-fun b!5162966 () Bool)

(declare-fun e!3216910 () Bool)

(assert (=> b!5162966 (= e!3216909 e!3216910)))

(declare-fun res!2195046 () Bool)

(assert (=> b!5162966 (=> (not res!2195046) (not e!3216910))))

(declare-fun contains!19654 (List!60018 B!3137) Bool)

(assert (=> b!5162966 (= res!2195046 (not (contains!19654 (t!373151 lt!2122751) (h!66342 lt!2122751))))))

(declare-fun b!5162967 () Bool)

(assert (=> b!5162967 (= e!3216910 (noDuplicate!1131 (t!373151 lt!2122751)))))

(assert (= (and d!1666083 (not res!2195045)) b!5162966))

(assert (= (and b!5162966 res!2195046) b!5162967))

(declare-fun m!6213592 () Bool)

(assert (=> b!5162966 m!6213592))

(declare-fun m!6213596 () Bool)

(assert (=> b!5162967 m!6213596))

(assert (=> d!1666069 d!1666083))

(declare-fun d!1666087 () Bool)

(declare-fun e!3216925 () Bool)

(assert (=> d!1666087 e!3216925))

(declare-fun res!2195058 () Bool)

(assert (=> d!1666087 (=> (not res!2195058) (not e!3216925))))

(declare-fun res!2195057 () List!60018)

(assert (=> d!1666087 (= res!2195058 (noDuplicate!1131 res!2195057))))

(declare-fun e!3216924 () Bool)

(assert (=> d!1666087 e!3216924))

(assert (=> d!1666087 (= (choose!38189 (content!10619 l!3049)) res!2195057)))

(declare-fun b!5162983 () Bool)

(declare-fun tp!1448050 () Bool)

(assert (=> b!5162983 (= e!3216924 (and tp_is_empty!38283 tp!1448050))))

(declare-fun b!5162984 () Bool)

(assert (=> b!5162984 (= e!3216925 (= (content!10619 res!2195057) (content!10619 l!3049)))))

(assert (= (and d!1666087 ((_ is Cons!59894) res!2195057)) b!5162983))

(assert (= (and d!1666087 res!2195058) b!5162984))

(declare-fun m!6213616 () Bool)

(assert (=> d!1666087 m!6213616))

(declare-fun m!6213618 () Bool)

(assert (=> b!5162984 m!6213618))

(assert (=> d!1666069 d!1666087))

(declare-fun d!1666097 () Bool)

(declare-fun res!2195059 () Bool)

(declare-fun e!3216926 () Bool)

(assert (=> d!1666097 (=> res!2195059 e!3216926)))

(assert (=> d!1666097 (= res!2195059 ((_ is Nil!59894) (t!373151 (toList!8437 (content!10619 l!3049)))))))

(assert (=> d!1666097 (= (forall!14088 (t!373151 (toList!8437 (content!10619 l!3049))) p!1890) e!3216926)))

(declare-fun b!5162985 () Bool)

(declare-fun e!3216927 () Bool)

(assert (=> b!5162985 (= e!3216926 e!3216927)))

(declare-fun res!2195060 () Bool)

(assert (=> b!5162985 (=> (not res!2195060) (not e!3216927))))

(assert (=> b!5162985 (= res!2195060 (dynLambda!23850 p!1890 (h!66342 (t!373151 (toList!8437 (content!10619 l!3049))))))))

(declare-fun b!5162986 () Bool)

(assert (=> b!5162986 (= e!3216927 (forall!14088 (t!373151 (t!373151 (toList!8437 (content!10619 l!3049)))) p!1890))))

(assert (= (and d!1666097 (not res!2195059)) b!5162985))

(assert (= (and b!5162985 res!2195060) b!5162986))

(declare-fun b_lambda!200763 () Bool)

(assert (=> (not b_lambda!200763) (not b!5162985)))

(declare-fun t!373171 () Bool)

(declare-fun tb!261951 () Bool)

(assert (=> (and start!546082 (= p!1890 p!1890) t!373171) tb!261951))

(declare-fun result!330446 () Bool)

(assert (=> tb!261951 (= result!330446 true)))

(assert (=> b!5162985 t!373171))

(declare-fun b_and!350629 () Bool)

(assert (= b_and!350623 (and (=> t!373171 result!330446) b_and!350629)))

(declare-fun m!6213620 () Bool)

(assert (=> b!5162985 m!6213620))

(declare-fun m!6213622 () Bool)

(assert (=> b!5162986 m!6213622))

(assert (=> b!5162939 d!1666097))

(declare-fun b!5162987 () Bool)

(declare-fun e!3216928 () Bool)

(declare-fun tp!1448051 () Bool)

(assert (=> b!5162987 (= e!3216928 (and tp_is_empty!38283 tp!1448051))))

(assert (=> b!5162945 (= tp!1448043 e!3216928)))

(assert (= (and b!5162945 ((_ is Cons!59894) (t!373151 (t!373151 (t!373151 l!3049))))) b!5162987))

(declare-fun b_lambda!200765 () Bool)

(assert (= b_lambda!200763 (or (and start!546082 b_free!133581) b_lambda!200765)))

(declare-fun b_lambda!200767 () Bool)

(assert (= b_lambda!200753 (or (and start!546082 b_free!133581) b_lambda!200767)))

(check-sat b_and!350629 (not b_lambda!200749) (not b!5162947) (not b_next!134371) (not b_lambda!200765) (not b!5162983) (not b!5162966) (not b!5162949) (not b!5162984) (not b_lambda!200767) (not b!5162951) (not b!5162967) (not b!5162986) (not d!1666087) tp_is_empty!38283 (not b!5162987) (not b_lambda!200735) (not b_lambda!200751))
(check-sat b_and!350629 (not b_next!134371))
