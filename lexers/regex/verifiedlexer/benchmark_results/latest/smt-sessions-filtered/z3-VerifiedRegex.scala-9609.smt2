; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!505136 () Bool)

(assert start!505136)

(declare-fun b!4847521 () Bool)

(declare-fun res!2068241 () Bool)

(declare-fun e!3029922 () Bool)

(assert (=> b!4847521 (=> (not res!2068241) (not e!3029922))))

(declare-datatypes ((K!17334 0))(
  ( (K!17335 (val!22173 Int)) )
))
(declare-datatypes ((V!17580 0))(
  ( (V!17581 (val!22174 Int)) )
))
(declare-datatypes ((tuple2!59218 0))(
  ( (tuple2!59219 (_1!32903 K!17334) (_2!32903 V!17580)) )
))
(declare-datatypes ((List!55666 0))(
  ( (Nil!55542) (Cons!55542 (h!61979 tuple2!59218) (t!363162 List!55666)) )
))
(declare-datatypes ((tuple2!59220 0))(
  ( (tuple2!59221 (_1!32904 (_ BitVec 64)) (_2!32904 List!55666)) )
))
(declare-datatypes ((List!55667 0))(
  ( (Nil!55543) (Cons!55543 (h!61980 tuple2!59220) (t!363163 List!55667)) )
))
(declare-datatypes ((ListLongMap!6447 0))(
  ( (ListLongMap!6448 (toList!7852 List!55667)) )
))
(declare-fun lm!2646 () ListLongMap!6447)

(declare-datatypes ((Hashable!7492 0))(
  ( (HashableExt!7491 (__x!33767 Int)) )
))
(declare-fun hashF!1641 () Hashable!7492)

(declare-fun allKeysSameHashInMap!2808 (ListLongMap!6447 Hashable!7492) Bool)

(assert (=> b!4847521 (= res!2068241 (allKeysSameHashInMap!2808 lm!2646 hashF!1641))))

(declare-fun b!4847522 () Bool)

(declare-fun e!3029923 () Bool)

(declare-fun e!3029921 () Bool)

(assert (=> b!4847522 (= e!3029923 (not e!3029921))))

(declare-fun res!2068240 () Bool)

(assert (=> b!4847522 (=> res!2068240 e!3029921)))

(declare-fun lt!1988654 () List!55666)

(declare-fun key!6445 () K!17334)

(declare-datatypes ((Option!13659 0))(
  ( (None!13658) (Some!13658 (v!49416 tuple2!59218)) )
))
(declare-fun isDefined!10751 (Option!13659) Bool)

(declare-fun getPair!1082 (List!55666 K!17334) Option!13659)

(assert (=> b!4847522 (= res!2068240 (not (isDefined!10751 (getPair!1082 lt!1988654 key!6445))))))

(declare-fun lt!1988655 () tuple2!59220)

(declare-datatypes ((Unit!145672 0))(
  ( (Unit!145673) )
))
(declare-fun lt!1988657 () Unit!145672)

(declare-fun lambda!242492 () Int)

(declare-fun forallContained!4533 (List!55667 Int tuple2!59220) Unit!145672)

(assert (=> b!4847522 (= lt!1988657 (forallContained!4533 (toList!7852 lm!2646) lambda!242492 lt!1988655))))

(declare-fun contains!19193 (List!55667 tuple2!59220) Bool)

(assert (=> b!4847522 (contains!19193 (toList!7852 lm!2646) lt!1988655)))

(declare-fun lt!1988656 () (_ BitVec 64))

(assert (=> b!4847522 (= lt!1988655 (tuple2!59221 lt!1988656 lt!1988654))))

(declare-fun lt!1988658 () Unit!145672)

(declare-fun lemmaGetValueImpliesTupleContained!759 (ListLongMap!6447 (_ BitVec 64) List!55666) Unit!145672)

(assert (=> b!4847522 (= lt!1988658 (lemmaGetValueImpliesTupleContained!759 lm!2646 lt!1988656 lt!1988654))))

(declare-fun apply!13435 (ListLongMap!6447 (_ BitVec 64)) List!55666)

(assert (=> b!4847522 (= lt!1988654 (apply!13435 lm!2646 lt!1988656))))

(declare-fun b!4847523 () Bool)

(assert (=> b!4847523 (= e!3029921 (isDefined!10751 (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445)))))

(declare-fun b!4847524 () Bool)

(assert (=> b!4847524 (= e!3029922 e!3029923)))

(declare-fun res!2068245 () Bool)

(assert (=> b!4847524 (=> (not res!2068245) (not e!3029923))))

(declare-fun contains!19194 (ListLongMap!6447 (_ BitVec 64)) Bool)

(assert (=> b!4847524 (= res!2068245 (contains!19194 lm!2646 lt!1988656))))

(declare-fun hash!5576 (Hashable!7492 K!17334) (_ BitVec 64))

(assert (=> b!4847524 (= lt!1988656 (hash!5576 hashF!1641 key!6445))))

(declare-fun res!2068244 () Bool)

(assert (=> start!505136 (=> (not res!2068244) (not e!3029922))))

(declare-fun forall!12945 (List!55667 Int) Bool)

(assert (=> start!505136 (= res!2068244 (forall!12945 (toList!7852 lm!2646) lambda!242492))))

(assert (=> start!505136 e!3029922))

(declare-fun e!3029924 () Bool)

(declare-fun inv!71220 (ListLongMap!6447) Bool)

(assert (=> start!505136 (and (inv!71220 lm!2646) e!3029924)))

(assert (=> start!505136 true))

(declare-fun tp_is_empty!35167 () Bool)

(assert (=> start!505136 tp_is_empty!35167))

(declare-fun b!4847525 () Bool)

(declare-fun res!2068243 () Bool)

(assert (=> b!4847525 (=> res!2068243 e!3029921)))

(get-info :version)

(assert (=> b!4847525 (= res!2068243 (or (not ((_ is Cons!55543) (toList!7852 lm!2646))) (not (= (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656))))))

(declare-fun b!4847526 () Bool)

(declare-fun tp!1364588 () Bool)

(assert (=> b!4847526 (= e!3029924 tp!1364588)))

(declare-fun b!4847527 () Bool)

(declare-fun res!2068242 () Bool)

(assert (=> b!4847527 (=> res!2068242 e!3029921)))

(declare-fun noDuplicateKeys!2586 (List!55666) Bool)

(assert (=> b!4847527 (= res!2068242 (not (noDuplicateKeys!2586 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(assert (= (and start!505136 res!2068244) b!4847521))

(assert (= (and b!4847521 res!2068241) b!4847524))

(assert (= (and b!4847524 res!2068245) b!4847522))

(assert (= (and b!4847522 (not res!2068240)) b!4847525))

(assert (= (and b!4847525 (not res!2068243)) b!4847527))

(assert (= (and b!4847527 (not res!2068242)) b!4847523))

(assert (= start!505136 b!4847526))

(declare-fun m!5845572 () Bool)

(assert (=> b!4847522 m!5845572))

(declare-fun m!5845574 () Bool)

(assert (=> b!4847522 m!5845574))

(declare-fun m!5845576 () Bool)

(assert (=> b!4847522 m!5845576))

(assert (=> b!4847522 m!5845572))

(declare-fun m!5845578 () Bool)

(assert (=> b!4847522 m!5845578))

(declare-fun m!5845580 () Bool)

(assert (=> b!4847522 m!5845580))

(declare-fun m!5845582 () Bool)

(assert (=> b!4847522 m!5845582))

(declare-fun m!5845584 () Bool)

(assert (=> b!4847521 m!5845584))

(declare-fun m!5845586 () Bool)

(assert (=> start!505136 m!5845586))

(declare-fun m!5845588 () Bool)

(assert (=> start!505136 m!5845588))

(declare-fun m!5845590 () Bool)

(assert (=> b!4847527 m!5845590))

(declare-fun m!5845592 () Bool)

(assert (=> b!4847523 m!5845592))

(assert (=> b!4847523 m!5845592))

(declare-fun m!5845594 () Bool)

(assert (=> b!4847523 m!5845594))

(declare-fun m!5845596 () Bool)

(assert (=> b!4847524 m!5845596))

(declare-fun m!5845598 () Bool)

(assert (=> b!4847524 m!5845598))

(check-sat (not b!4847521) (not b!4847523) (not b!4847522) (not start!505136) tp_is_empty!35167 (not b!4847526) (not b!4847524) (not b!4847527))
(check-sat)
(get-model)

(declare-fun d!1555168 () Bool)

(declare-fun isEmpty!29725 (Option!13659) Bool)

(assert (=> d!1555168 (= (isDefined!10751 (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445)) (not (isEmpty!29725 (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445))))))

(declare-fun bs!1172454 () Bool)

(assert (= bs!1172454 d!1555168))

(assert (=> bs!1172454 m!5845592))

(declare-fun m!5845606 () Bool)

(assert (=> bs!1172454 m!5845606))

(assert (=> b!4847523 d!1555168))

(declare-fun b!4847567 () Bool)

(declare-fun e!3029955 () Bool)

(declare-fun e!3029953 () Bool)

(assert (=> b!4847567 (= e!3029955 e!3029953)))

(declare-fun res!2068272 () Bool)

(assert (=> b!4847567 (=> (not res!2068272) (not e!3029953))))

(declare-fun lt!1988673 () Option!13659)

(assert (=> b!4847567 (= res!2068272 (isDefined!10751 lt!1988673))))

(declare-fun d!1555170 () Bool)

(assert (=> d!1555170 e!3029955))

(declare-fun res!2068270 () Bool)

(assert (=> d!1555170 (=> res!2068270 e!3029955)))

(declare-fun e!3029956 () Bool)

(assert (=> d!1555170 (= res!2068270 e!3029956)))

(declare-fun res!2068269 () Bool)

(assert (=> d!1555170 (=> (not res!2068269) (not e!3029956))))

(assert (=> d!1555170 (= res!2068269 (isEmpty!29725 lt!1988673))))

(declare-fun e!3029954 () Option!13659)

(assert (=> d!1555170 (= lt!1988673 e!3029954)))

(declare-fun c!825109 () Bool)

(assert (=> d!1555170 (= c!825109 (and ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646)))) (= (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646))))) key!6445)))))

(assert (=> d!1555170 (noDuplicateKeys!2586 (_2!32904 (h!61980 (toList!7852 lm!2646))))))

(assert (=> d!1555170 (= (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445) lt!1988673)))

(declare-fun b!4847568 () Bool)

(declare-fun containsKey!4677 (List!55666 K!17334) Bool)

(assert (=> b!4847568 (= e!3029956 (not (containsKey!4677 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445)))))

(declare-fun b!4847569 () Bool)

(declare-fun e!3029957 () Option!13659)

(assert (=> b!4847569 (= e!3029957 (getPair!1082 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) key!6445))))

(declare-fun b!4847570 () Bool)

(assert (=> b!4847570 (= e!3029954 e!3029957)))

(declare-fun c!825108 () Bool)

(assert (=> b!4847570 (= c!825108 ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(declare-fun b!4847571 () Bool)

(assert (=> b!4847571 (= e!3029954 (Some!13658 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(declare-fun b!4847572 () Bool)

(assert (=> b!4847572 (= e!3029957 None!13658)))

(declare-fun b!4847573 () Bool)

(declare-fun res!2068271 () Bool)

(assert (=> b!4847573 (=> (not res!2068271) (not e!3029953))))

(declare-fun get!19021 (Option!13659) tuple2!59218)

(assert (=> b!4847573 (= res!2068271 (= (_1!32903 (get!19021 lt!1988673)) key!6445))))

(declare-fun b!4847574 () Bool)

(declare-fun contains!19195 (List!55666 tuple2!59218) Bool)

(assert (=> b!4847574 (= e!3029953 (contains!19195 (_2!32904 (h!61980 (toList!7852 lm!2646))) (get!19021 lt!1988673)))))

(assert (= (and d!1555170 c!825109) b!4847571))

(assert (= (and d!1555170 (not c!825109)) b!4847570))

(assert (= (and b!4847570 c!825108) b!4847569))

(assert (= (and b!4847570 (not c!825108)) b!4847572))

(assert (= (and d!1555170 res!2068269) b!4847568))

(assert (= (and d!1555170 (not res!2068270)) b!4847567))

(assert (= (and b!4847567 res!2068272) b!4847573))

(assert (= (and b!4847573 res!2068271) b!4847574))

(declare-fun m!5845626 () Bool)

(assert (=> b!4847574 m!5845626))

(assert (=> b!4847574 m!5845626))

(declare-fun m!5845628 () Bool)

(assert (=> b!4847574 m!5845628))

(declare-fun m!5845630 () Bool)

(assert (=> b!4847569 m!5845630))

(declare-fun m!5845632 () Bool)

(assert (=> b!4847568 m!5845632))

(assert (=> b!4847573 m!5845626))

(declare-fun m!5845634 () Bool)

(assert (=> b!4847567 m!5845634))

(declare-fun m!5845636 () Bool)

(assert (=> d!1555170 m!5845636))

(assert (=> d!1555170 m!5845590))

(assert (=> b!4847523 d!1555170))

(declare-fun d!1555182 () Bool)

(declare-fun lt!1988676 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9874 (List!55667) (InoxSet tuple2!59220))

(assert (=> d!1555182 (= lt!1988676 (select (content!9874 (toList!7852 lm!2646)) lt!1988655))))

(declare-fun e!3029963 () Bool)

(assert (=> d!1555182 (= lt!1988676 e!3029963)))

(declare-fun res!2068277 () Bool)

(assert (=> d!1555182 (=> (not res!2068277) (not e!3029963))))

(assert (=> d!1555182 (= res!2068277 ((_ is Cons!55543) (toList!7852 lm!2646)))))

(assert (=> d!1555182 (= (contains!19193 (toList!7852 lm!2646) lt!1988655) lt!1988676)))

(declare-fun b!4847579 () Bool)

(declare-fun e!3029962 () Bool)

(assert (=> b!4847579 (= e!3029963 e!3029962)))

(declare-fun res!2068278 () Bool)

(assert (=> b!4847579 (=> res!2068278 e!3029962)))

(assert (=> b!4847579 (= res!2068278 (= (h!61980 (toList!7852 lm!2646)) lt!1988655))))

(declare-fun b!4847580 () Bool)

(assert (=> b!4847580 (= e!3029962 (contains!19193 (t!363163 (toList!7852 lm!2646)) lt!1988655))))

(assert (= (and d!1555182 res!2068277) b!4847579))

(assert (= (and b!4847579 (not res!2068278)) b!4847580))

(declare-fun m!5845638 () Bool)

(assert (=> d!1555182 m!5845638))

(declare-fun m!5845640 () Bool)

(assert (=> d!1555182 m!5845640))

(declare-fun m!5845642 () Bool)

(assert (=> b!4847580 m!5845642))

(assert (=> b!4847522 d!1555182))

(declare-fun d!1555184 () Bool)

(assert (=> d!1555184 (contains!19193 (toList!7852 lm!2646) (tuple2!59221 lt!1988656 lt!1988654))))

(declare-fun lt!1988682 () Unit!145672)

(declare-fun choose!35440 (ListLongMap!6447 (_ BitVec 64) List!55666) Unit!145672)

(assert (=> d!1555184 (= lt!1988682 (choose!35440 lm!2646 lt!1988656 lt!1988654))))

(assert (=> d!1555184 (contains!19194 lm!2646 lt!1988656)))

(assert (=> d!1555184 (= (lemmaGetValueImpliesTupleContained!759 lm!2646 lt!1988656 lt!1988654) lt!1988682)))

(declare-fun bs!1172459 () Bool)

(assert (= bs!1172459 d!1555184))

(declare-fun m!5845644 () Bool)

(assert (=> bs!1172459 m!5845644))

(declare-fun m!5845648 () Bool)

(assert (=> bs!1172459 m!5845648))

(assert (=> bs!1172459 m!5845596))

(assert (=> b!4847522 d!1555184))

(declare-fun d!1555186 () Bool)

(declare-datatypes ((Option!13661 0))(
  ( (None!13660) (Some!13660 (v!49420 List!55666)) )
))
(declare-fun get!19023 (Option!13661) List!55666)

(declare-fun getValueByKey!2726 (List!55667 (_ BitVec 64)) Option!13661)

(assert (=> d!1555186 (= (apply!13435 lm!2646 lt!1988656) (get!19023 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656)))))

(declare-fun bs!1172460 () Bool)

(assert (= bs!1172460 d!1555186))

(declare-fun m!5845660 () Bool)

(assert (=> bs!1172460 m!5845660))

(assert (=> bs!1172460 m!5845660))

(declare-fun m!5845662 () Bool)

(assert (=> bs!1172460 m!5845662))

(assert (=> b!4847522 d!1555186))

(declare-fun d!1555190 () Bool)

(assert (=> d!1555190 (= (isDefined!10751 (getPair!1082 lt!1988654 key!6445)) (not (isEmpty!29725 (getPair!1082 lt!1988654 key!6445))))))

(declare-fun bs!1172461 () Bool)

(assert (= bs!1172461 d!1555190))

(assert (=> bs!1172461 m!5845572))

(declare-fun m!5845664 () Bool)

(assert (=> bs!1172461 m!5845664))

(assert (=> b!4847522 d!1555190))

(declare-fun d!1555192 () Bool)

(declare-fun dynLambda!22352 (Int tuple2!59220) Bool)

(assert (=> d!1555192 (dynLambda!22352 lambda!242492 lt!1988655)))

(declare-fun lt!1988689 () Unit!145672)

(declare-fun choose!35442 (List!55667 Int tuple2!59220) Unit!145672)

(assert (=> d!1555192 (= lt!1988689 (choose!35442 (toList!7852 lm!2646) lambda!242492 lt!1988655))))

(declare-fun e!3029989 () Bool)

(assert (=> d!1555192 e!3029989))

(declare-fun res!2068300 () Bool)

(assert (=> d!1555192 (=> (not res!2068300) (not e!3029989))))

(assert (=> d!1555192 (= res!2068300 (forall!12945 (toList!7852 lm!2646) lambda!242492))))

(assert (=> d!1555192 (= (forallContained!4533 (toList!7852 lm!2646) lambda!242492 lt!1988655) lt!1988689)))

(declare-fun b!4847619 () Bool)

(assert (=> b!4847619 (= e!3029989 (contains!19193 (toList!7852 lm!2646) lt!1988655))))

(assert (= (and d!1555192 res!2068300) b!4847619))

(declare-fun b_lambda!192479 () Bool)

(assert (=> (not b_lambda!192479) (not d!1555192)))

(declare-fun m!5845684 () Bool)

(assert (=> d!1555192 m!5845684))

(declare-fun m!5845686 () Bool)

(assert (=> d!1555192 m!5845686))

(assert (=> d!1555192 m!5845586))

(assert (=> b!4847619 m!5845582))

(assert (=> b!4847522 d!1555192))

(declare-fun b!4847620 () Bool)

(declare-fun e!3029992 () Bool)

(declare-fun e!3029990 () Bool)

(assert (=> b!4847620 (= e!3029992 e!3029990)))

(declare-fun res!2068304 () Bool)

(assert (=> b!4847620 (=> (not res!2068304) (not e!3029990))))

(declare-fun lt!1988690 () Option!13659)

(assert (=> b!4847620 (= res!2068304 (isDefined!10751 lt!1988690))))

(declare-fun d!1555198 () Bool)

(assert (=> d!1555198 e!3029992))

(declare-fun res!2068302 () Bool)

(assert (=> d!1555198 (=> res!2068302 e!3029992)))

(declare-fun e!3029993 () Bool)

(assert (=> d!1555198 (= res!2068302 e!3029993)))

(declare-fun res!2068301 () Bool)

(assert (=> d!1555198 (=> (not res!2068301) (not e!3029993))))

(assert (=> d!1555198 (= res!2068301 (isEmpty!29725 lt!1988690))))

(declare-fun e!3029991 () Option!13659)

(assert (=> d!1555198 (= lt!1988690 e!3029991)))

(declare-fun c!825119 () Bool)

(assert (=> d!1555198 (= c!825119 (and ((_ is Cons!55542) lt!1988654) (= (_1!32903 (h!61979 lt!1988654)) key!6445)))))

(assert (=> d!1555198 (noDuplicateKeys!2586 lt!1988654)))

(assert (=> d!1555198 (= (getPair!1082 lt!1988654 key!6445) lt!1988690)))

(declare-fun b!4847621 () Bool)

(assert (=> b!4847621 (= e!3029993 (not (containsKey!4677 lt!1988654 key!6445)))))

(declare-fun b!4847622 () Bool)

(declare-fun e!3029994 () Option!13659)

(assert (=> b!4847622 (= e!3029994 (getPair!1082 (t!363162 lt!1988654) key!6445))))

(declare-fun b!4847623 () Bool)

(assert (=> b!4847623 (= e!3029991 e!3029994)))

(declare-fun c!825118 () Bool)

(assert (=> b!4847623 (= c!825118 ((_ is Cons!55542) lt!1988654))))

(declare-fun b!4847624 () Bool)

(assert (=> b!4847624 (= e!3029991 (Some!13658 (h!61979 lt!1988654)))))

(declare-fun b!4847625 () Bool)

(assert (=> b!4847625 (= e!3029994 None!13658)))

(declare-fun b!4847626 () Bool)

(declare-fun res!2068303 () Bool)

(assert (=> b!4847626 (=> (not res!2068303) (not e!3029990))))

(assert (=> b!4847626 (= res!2068303 (= (_1!32903 (get!19021 lt!1988690)) key!6445))))

(declare-fun b!4847627 () Bool)

(assert (=> b!4847627 (= e!3029990 (contains!19195 lt!1988654 (get!19021 lt!1988690)))))

(assert (= (and d!1555198 c!825119) b!4847624))

(assert (= (and d!1555198 (not c!825119)) b!4847623))

(assert (= (and b!4847623 c!825118) b!4847622))

(assert (= (and b!4847623 (not c!825118)) b!4847625))

(assert (= (and d!1555198 res!2068301) b!4847621))

(assert (= (and d!1555198 (not res!2068302)) b!4847620))

(assert (= (and b!4847620 res!2068304) b!4847626))

(assert (= (and b!4847626 res!2068303) b!4847627))

(declare-fun m!5845688 () Bool)

(assert (=> b!4847627 m!5845688))

(assert (=> b!4847627 m!5845688))

(declare-fun m!5845690 () Bool)

(assert (=> b!4847627 m!5845690))

(declare-fun m!5845692 () Bool)

(assert (=> b!4847622 m!5845692))

(declare-fun m!5845694 () Bool)

(assert (=> b!4847621 m!5845694))

(assert (=> b!4847626 m!5845688))

(declare-fun m!5845696 () Bool)

(assert (=> b!4847620 m!5845696))

(declare-fun m!5845698 () Bool)

(assert (=> d!1555198 m!5845698))

(declare-fun m!5845700 () Bool)

(assert (=> d!1555198 m!5845700))

(assert (=> b!4847522 d!1555198))

(declare-fun d!1555200 () Bool)

(declare-fun res!2068309 () Bool)

(declare-fun e!3029999 () Bool)

(assert (=> d!1555200 (=> res!2068309 e!3029999)))

(assert (=> d!1555200 (= res!2068309 (not ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(assert (=> d!1555200 (= (noDuplicateKeys!2586 (_2!32904 (h!61980 (toList!7852 lm!2646)))) e!3029999)))

(declare-fun b!4847633 () Bool)

(declare-fun e!3030000 () Bool)

(assert (=> b!4847633 (= e!3029999 e!3030000)))

(declare-fun res!2068310 () Bool)

(assert (=> b!4847633 (=> (not res!2068310) (not e!3030000))))

(assert (=> b!4847633 (= res!2068310 (not (containsKey!4677 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))))

(declare-fun b!4847634 () Bool)

(assert (=> b!4847634 (= e!3030000 (noDuplicateKeys!2586 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(assert (= (and d!1555200 (not res!2068309)) b!4847633))

(assert (= (and b!4847633 res!2068310) b!4847634))

(declare-fun m!5845706 () Bool)

(assert (=> b!4847633 m!5845706))

(declare-fun m!5845708 () Bool)

(assert (=> b!4847634 m!5845708))

(assert (=> b!4847527 d!1555200))

(declare-fun bs!1172465 () Bool)

(declare-fun d!1555204 () Bool)

(assert (= bs!1172465 (and d!1555204 start!505136)))

(declare-fun lambda!242498 () Int)

(assert (=> bs!1172465 (not (= lambda!242498 lambda!242492))))

(assert (=> d!1555204 true))

(assert (=> d!1555204 (= (allKeysSameHashInMap!2808 lm!2646 hashF!1641) (forall!12945 (toList!7852 lm!2646) lambda!242498))))

(declare-fun bs!1172466 () Bool)

(assert (= bs!1172466 d!1555204))

(declare-fun m!5845714 () Bool)

(assert (=> bs!1172466 m!5845714))

(assert (=> b!4847521 d!1555204))

(declare-fun d!1555210 () Bool)

(declare-fun e!3030015 () Bool)

(assert (=> d!1555210 e!3030015))

(declare-fun res!2068319 () Bool)

(assert (=> d!1555210 (=> res!2068319 e!3030015)))

(declare-fun lt!1988707 () Bool)

(assert (=> d!1555210 (= res!2068319 (not lt!1988707))))

(declare-fun lt!1988706 () Bool)

(assert (=> d!1555210 (= lt!1988707 lt!1988706)))

(declare-fun lt!1988708 () Unit!145672)

(declare-fun e!3030014 () Unit!145672)

(assert (=> d!1555210 (= lt!1988708 e!3030014)))

(declare-fun c!825122 () Bool)

(assert (=> d!1555210 (= c!825122 lt!1988706)))

(declare-fun containsKey!4678 (List!55667 (_ BitVec 64)) Bool)

(assert (=> d!1555210 (= lt!1988706 (containsKey!4678 (toList!7852 lm!2646) lt!1988656))))

(assert (=> d!1555210 (= (contains!19194 lm!2646 lt!1988656) lt!1988707)))

(declare-fun b!4847654 () Bool)

(declare-fun lt!1988705 () Unit!145672)

(assert (=> b!4847654 (= e!3030014 lt!1988705)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2498 (List!55667 (_ BitVec 64)) Unit!145672)

(assert (=> b!4847654 (= lt!1988705 (lemmaContainsKeyImpliesGetValueByKeyDefined!2498 (toList!7852 lm!2646) lt!1988656))))

(declare-fun isDefined!10753 (Option!13661) Bool)

(assert (=> b!4847654 (isDefined!10753 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656))))

(declare-fun b!4847655 () Bool)

(declare-fun Unit!145675 () Unit!145672)

(assert (=> b!4847655 (= e!3030014 Unit!145675)))

(declare-fun b!4847656 () Bool)

(assert (=> b!4847656 (= e!3030015 (isDefined!10753 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656)))))

(assert (= (and d!1555210 c!825122) b!4847654))

(assert (= (and d!1555210 (not c!825122)) b!4847655))

(assert (= (and d!1555210 (not res!2068319)) b!4847656))

(declare-fun m!5845724 () Bool)

(assert (=> d!1555210 m!5845724))

(declare-fun m!5845726 () Bool)

(assert (=> b!4847654 m!5845726))

(assert (=> b!4847654 m!5845660))

(assert (=> b!4847654 m!5845660))

(declare-fun m!5845728 () Bool)

(assert (=> b!4847654 m!5845728))

(assert (=> b!4847656 m!5845660))

(assert (=> b!4847656 m!5845660))

(assert (=> b!4847656 m!5845728))

(assert (=> b!4847524 d!1555210))

(declare-fun d!1555216 () Bool)

(declare-fun hash!5578 (Hashable!7492 K!17334) (_ BitVec 64))

(assert (=> d!1555216 (= (hash!5576 hashF!1641 key!6445) (hash!5578 hashF!1641 key!6445))))

(declare-fun bs!1172469 () Bool)

(assert (= bs!1172469 d!1555216))

(declare-fun m!5845730 () Bool)

(assert (=> bs!1172469 m!5845730))

(assert (=> b!4847524 d!1555216))

(declare-fun d!1555218 () Bool)

(declare-fun res!2068324 () Bool)

(declare-fun e!3030020 () Bool)

(assert (=> d!1555218 (=> res!2068324 e!3030020)))

(assert (=> d!1555218 (= res!2068324 ((_ is Nil!55543) (toList!7852 lm!2646)))))

(assert (=> d!1555218 (= (forall!12945 (toList!7852 lm!2646) lambda!242492) e!3030020)))

(declare-fun b!4847661 () Bool)

(declare-fun e!3030021 () Bool)

(assert (=> b!4847661 (= e!3030020 e!3030021)))

(declare-fun res!2068325 () Bool)

(assert (=> b!4847661 (=> (not res!2068325) (not e!3030021))))

(assert (=> b!4847661 (= res!2068325 (dynLambda!22352 lambda!242492 (h!61980 (toList!7852 lm!2646))))))

(declare-fun b!4847662 () Bool)

(assert (=> b!4847662 (= e!3030021 (forall!12945 (t!363163 (toList!7852 lm!2646)) lambda!242492))))

(assert (= (and d!1555218 (not res!2068324)) b!4847661))

(assert (= (and b!4847661 res!2068325) b!4847662))

(declare-fun b_lambda!192485 () Bool)

(assert (=> (not b_lambda!192485) (not b!4847661)))

(declare-fun m!5845732 () Bool)

(assert (=> b!4847661 m!5845732))

(declare-fun m!5845734 () Bool)

(assert (=> b!4847662 m!5845734))

(assert (=> start!505136 d!1555218))

(declare-fun d!1555220 () Bool)

(declare-fun isStrictlySorted!1075 (List!55667) Bool)

(assert (=> d!1555220 (= (inv!71220 lm!2646) (isStrictlySorted!1075 (toList!7852 lm!2646)))))

(declare-fun bs!1172470 () Bool)

(assert (= bs!1172470 d!1555220))

(declare-fun m!5845736 () Bool)

(assert (=> bs!1172470 m!5845736))

(assert (=> start!505136 d!1555220))

(declare-fun b!4847667 () Bool)

(declare-fun e!3030024 () Bool)

(declare-fun tp!1364599 () Bool)

(declare-fun tp!1364600 () Bool)

(assert (=> b!4847667 (= e!3030024 (and tp!1364599 tp!1364600))))

(assert (=> b!4847526 (= tp!1364588 e!3030024)))

(assert (= (and b!4847526 ((_ is Cons!55543) (toList!7852 lm!2646))) b!4847667))

(declare-fun b_lambda!192487 () Bool)

(assert (= b_lambda!192485 (or start!505136 b_lambda!192487)))

(declare-fun bs!1172471 () Bool)

(declare-fun d!1555222 () Bool)

(assert (= bs!1172471 (and d!1555222 start!505136)))

(assert (=> bs!1172471 (= (dynLambda!22352 lambda!242492 (h!61980 (toList!7852 lm!2646))) (noDuplicateKeys!2586 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(assert (=> bs!1172471 m!5845590))

(assert (=> b!4847661 d!1555222))

(declare-fun b_lambda!192489 () Bool)

(assert (= b_lambda!192479 (or start!505136 b_lambda!192489)))

(declare-fun bs!1172472 () Bool)

(declare-fun d!1555224 () Bool)

(assert (= bs!1172472 (and d!1555224 start!505136)))

(assert (=> bs!1172472 (= (dynLambda!22352 lambda!242492 lt!1988655) (noDuplicateKeys!2586 (_2!32904 lt!1988655)))))

(declare-fun m!5845738 () Bool)

(assert (=> bs!1172472 m!5845738))

(assert (=> d!1555192 d!1555224))

(check-sat (not b!4847667) (not b!4847656) (not b!4847619) (not d!1555170) (not d!1555198) (not d!1555190) (not b!4847620) (not d!1555210) (not bs!1172471) (not bs!1172472) (not b_lambda!192487) (not b!4847573) (not b!4847580) (not b!4847627) (not b!4847622) (not d!1555186) (not b_lambda!192489) (not d!1555220) (not b!4847626) (not b!4847567) (not d!1555184) (not d!1555192) (not b!4847569) (not b!4847654) (not b!4847634) tp_is_empty!35167 (not d!1555168) (not b!4847621) (not b!4847662) (not b!4847574) (not b!4847633) (not d!1555182) (not b!4847568) (not d!1555216) (not d!1555204))
(check-sat)
(get-model)

(declare-fun d!1555226 () Bool)

(assert (=> d!1555226 (= (isDefined!10751 lt!1988673) (not (isEmpty!29725 lt!1988673)))))

(declare-fun bs!1172473 () Bool)

(assert (= bs!1172473 d!1555226))

(assert (=> bs!1172473 m!5845636))

(assert (=> b!4847567 d!1555226))

(declare-fun d!1555228 () Bool)

(declare-fun lt!1988711 () Bool)

(declare-fun content!9876 (List!55666) (InoxSet tuple2!59218))

(assert (=> d!1555228 (= lt!1988711 (select (content!9876 lt!1988654) (get!19021 lt!1988690)))))

(declare-fun e!3030030 () Bool)

(assert (=> d!1555228 (= lt!1988711 e!3030030)))

(declare-fun res!2068331 () Bool)

(assert (=> d!1555228 (=> (not res!2068331) (not e!3030030))))

(assert (=> d!1555228 (= res!2068331 ((_ is Cons!55542) lt!1988654))))

(assert (=> d!1555228 (= (contains!19195 lt!1988654 (get!19021 lt!1988690)) lt!1988711)))

(declare-fun b!4847672 () Bool)

(declare-fun e!3030029 () Bool)

(assert (=> b!4847672 (= e!3030030 e!3030029)))

(declare-fun res!2068330 () Bool)

(assert (=> b!4847672 (=> res!2068330 e!3030029)))

(assert (=> b!4847672 (= res!2068330 (= (h!61979 lt!1988654) (get!19021 lt!1988690)))))

(declare-fun b!4847673 () Bool)

(assert (=> b!4847673 (= e!3030029 (contains!19195 (t!363162 lt!1988654) (get!19021 lt!1988690)))))

(assert (= (and d!1555228 res!2068331) b!4847672))

(assert (= (and b!4847672 (not res!2068330)) b!4847673))

(declare-fun m!5845740 () Bool)

(assert (=> d!1555228 m!5845740))

(assert (=> d!1555228 m!5845688))

(declare-fun m!5845742 () Bool)

(assert (=> d!1555228 m!5845742))

(assert (=> b!4847673 m!5845688))

(declare-fun m!5845744 () Bool)

(assert (=> b!4847673 m!5845744))

(assert (=> b!4847627 d!1555228))

(declare-fun d!1555230 () Bool)

(assert (=> d!1555230 (= (get!19021 lt!1988690) (v!49416 lt!1988690))))

(assert (=> b!4847627 d!1555230))

(assert (=> b!4847626 d!1555230))

(declare-fun lt!1988712 () Bool)

(declare-fun d!1555232 () Bool)

(assert (=> d!1555232 (= lt!1988712 (select (content!9874 (toList!7852 lm!2646)) (tuple2!59221 lt!1988656 lt!1988654)))))

(declare-fun e!3030032 () Bool)

(assert (=> d!1555232 (= lt!1988712 e!3030032)))

(declare-fun res!2068332 () Bool)

(assert (=> d!1555232 (=> (not res!2068332) (not e!3030032))))

(assert (=> d!1555232 (= res!2068332 ((_ is Cons!55543) (toList!7852 lm!2646)))))

(assert (=> d!1555232 (= (contains!19193 (toList!7852 lm!2646) (tuple2!59221 lt!1988656 lt!1988654)) lt!1988712)))

(declare-fun b!4847674 () Bool)

(declare-fun e!3030031 () Bool)

(assert (=> b!4847674 (= e!3030032 e!3030031)))

(declare-fun res!2068333 () Bool)

(assert (=> b!4847674 (=> res!2068333 e!3030031)))

(assert (=> b!4847674 (= res!2068333 (= (h!61980 (toList!7852 lm!2646)) (tuple2!59221 lt!1988656 lt!1988654)))))

(declare-fun b!4847675 () Bool)

(assert (=> b!4847675 (= e!3030031 (contains!19193 (t!363163 (toList!7852 lm!2646)) (tuple2!59221 lt!1988656 lt!1988654)))))

(assert (= (and d!1555232 res!2068332) b!4847674))

(assert (= (and b!4847674 (not res!2068333)) b!4847675))

(assert (=> d!1555232 m!5845638))

(declare-fun m!5845746 () Bool)

(assert (=> d!1555232 m!5845746))

(declare-fun m!5845748 () Bool)

(assert (=> b!4847675 m!5845748))

(assert (=> d!1555184 d!1555232))

(declare-fun d!1555234 () Bool)

(assert (=> d!1555234 (contains!19193 (toList!7852 lm!2646) (tuple2!59221 lt!1988656 lt!1988654))))

(assert (=> d!1555234 true))

(declare-fun _$41!537 () Unit!145672)

(assert (=> d!1555234 (= (choose!35440 lm!2646 lt!1988656 lt!1988654) _$41!537)))

(declare-fun bs!1172474 () Bool)

(assert (= bs!1172474 d!1555234))

(assert (=> bs!1172474 m!5845644))

(assert (=> d!1555184 d!1555234))

(assert (=> d!1555184 d!1555210))

(declare-fun b!4847677 () Bool)

(declare-fun e!3030035 () Bool)

(declare-fun e!3030033 () Bool)

(assert (=> b!4847677 (= e!3030035 e!3030033)))

(declare-fun res!2068337 () Bool)

(assert (=> b!4847677 (=> (not res!2068337) (not e!3030033))))

(declare-fun lt!1988713 () Option!13659)

(assert (=> b!4847677 (= res!2068337 (isDefined!10751 lt!1988713))))

(declare-fun d!1555236 () Bool)

(assert (=> d!1555236 e!3030035))

(declare-fun res!2068335 () Bool)

(assert (=> d!1555236 (=> res!2068335 e!3030035)))

(declare-fun e!3030036 () Bool)

(assert (=> d!1555236 (= res!2068335 e!3030036)))

(declare-fun res!2068334 () Bool)

(assert (=> d!1555236 (=> (not res!2068334) (not e!3030036))))

(assert (=> d!1555236 (= res!2068334 (isEmpty!29725 lt!1988713))))

(declare-fun e!3030034 () Option!13659)

(assert (=> d!1555236 (= lt!1988713 e!3030034)))

(declare-fun c!825124 () Bool)

(assert (=> d!1555236 (= c!825124 (and ((_ is Cons!55542) (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) (= (_1!32903 (h!61979 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))) key!6445)))))

(assert (=> d!1555236 (noDuplicateKeys!2586 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(assert (=> d!1555236 (= (getPair!1082 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) key!6445) lt!1988713)))

(declare-fun b!4847678 () Bool)

(assert (=> b!4847678 (= e!3030036 (not (containsKey!4677 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) key!6445)))))

(declare-fun b!4847679 () Bool)

(declare-fun e!3030037 () Option!13659)

(assert (=> b!4847679 (= e!3030037 (getPair!1082 (t!363162 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) key!6445))))

(declare-fun b!4847680 () Bool)

(assert (=> b!4847680 (= e!3030034 e!3030037)))

(declare-fun c!825123 () Bool)

(assert (=> b!4847680 (= c!825123 ((_ is Cons!55542) (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(declare-fun b!4847681 () Bool)

(assert (=> b!4847681 (= e!3030034 (Some!13658 (h!61979 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))))

(declare-fun b!4847682 () Bool)

(assert (=> b!4847682 (= e!3030037 None!13658)))

(declare-fun b!4847683 () Bool)

(declare-fun res!2068336 () Bool)

(assert (=> b!4847683 (=> (not res!2068336) (not e!3030033))))

(assert (=> b!4847683 (= res!2068336 (= (_1!32903 (get!19021 lt!1988713)) key!6445))))

(declare-fun b!4847684 () Bool)

(assert (=> b!4847684 (= e!3030033 (contains!19195 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (get!19021 lt!1988713)))))

(assert (= (and d!1555236 c!825124) b!4847681))

(assert (= (and d!1555236 (not c!825124)) b!4847680))

(assert (= (and b!4847680 c!825123) b!4847679))

(assert (= (and b!4847680 (not c!825123)) b!4847682))

(assert (= (and d!1555236 res!2068334) b!4847678))

(assert (= (and d!1555236 (not res!2068335)) b!4847677))

(assert (= (and b!4847677 res!2068337) b!4847683))

(assert (= (and b!4847683 res!2068336) b!4847684))

(declare-fun m!5845750 () Bool)

(assert (=> b!4847684 m!5845750))

(assert (=> b!4847684 m!5845750))

(declare-fun m!5845752 () Bool)

(assert (=> b!4847684 m!5845752))

(declare-fun m!5845754 () Bool)

(assert (=> b!4847679 m!5845754))

(declare-fun m!5845756 () Bool)

(assert (=> b!4847678 m!5845756))

(assert (=> b!4847683 m!5845750))

(declare-fun m!5845758 () Bool)

(assert (=> b!4847677 m!5845758))

(declare-fun m!5845760 () Bool)

(assert (=> d!1555236 m!5845760))

(assert (=> d!1555236 m!5845708))

(assert (=> b!4847569 d!1555236))

(declare-fun d!1555238 () Bool)

(declare-fun res!2068342 () Bool)

(declare-fun e!3030042 () Bool)

(assert (=> d!1555238 (=> res!2068342 e!3030042)))

(assert (=> d!1555238 (= res!2068342 (and ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646)))) (= (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646))))) key!6445)))))

(assert (=> d!1555238 (= (containsKey!4677 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445) e!3030042)))

(declare-fun b!4847689 () Bool)

(declare-fun e!3030043 () Bool)

(assert (=> b!4847689 (= e!3030042 e!3030043)))

(declare-fun res!2068343 () Bool)

(assert (=> b!4847689 (=> (not res!2068343) (not e!3030043))))

(assert (=> b!4847689 (= res!2068343 ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(declare-fun b!4847690 () Bool)

(assert (=> b!4847690 (= e!3030043 (containsKey!4677 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) key!6445))))

(assert (= (and d!1555238 (not res!2068342)) b!4847689))

(assert (= (and b!4847689 res!2068343) b!4847690))

(assert (=> b!4847690 m!5845756))

(assert (=> b!4847568 d!1555238))

(declare-fun d!1555240 () Bool)

(assert (=> d!1555240 (= (isEmpty!29725 lt!1988690) (not ((_ is Some!13658) lt!1988690)))))

(assert (=> d!1555198 d!1555240))

(declare-fun d!1555242 () Bool)

(declare-fun res!2068344 () Bool)

(declare-fun e!3030044 () Bool)

(assert (=> d!1555242 (=> res!2068344 e!3030044)))

(assert (=> d!1555242 (= res!2068344 (not ((_ is Cons!55542) lt!1988654)))))

(assert (=> d!1555242 (= (noDuplicateKeys!2586 lt!1988654) e!3030044)))

(declare-fun b!4847691 () Bool)

(declare-fun e!3030045 () Bool)

(assert (=> b!4847691 (= e!3030044 e!3030045)))

(declare-fun res!2068345 () Bool)

(assert (=> b!4847691 (=> (not res!2068345) (not e!3030045))))

(assert (=> b!4847691 (= res!2068345 (not (containsKey!4677 (t!363162 lt!1988654) (_1!32903 (h!61979 lt!1988654)))))))

(declare-fun b!4847692 () Bool)

(assert (=> b!4847692 (= e!3030045 (noDuplicateKeys!2586 (t!363162 lt!1988654)))))

(assert (= (and d!1555242 (not res!2068344)) b!4847691))

(assert (= (and b!4847691 res!2068345) b!4847692))

(declare-fun m!5845762 () Bool)

(assert (=> b!4847691 m!5845762))

(declare-fun m!5845764 () Bool)

(assert (=> b!4847692 m!5845764))

(assert (=> d!1555198 d!1555242))

(declare-fun b!4847693 () Bool)

(declare-fun e!3030048 () Bool)

(declare-fun e!3030046 () Bool)

(assert (=> b!4847693 (= e!3030048 e!3030046)))

(declare-fun res!2068349 () Bool)

(assert (=> b!4847693 (=> (not res!2068349) (not e!3030046))))

(declare-fun lt!1988714 () Option!13659)

(assert (=> b!4847693 (= res!2068349 (isDefined!10751 lt!1988714))))

(declare-fun d!1555244 () Bool)

(assert (=> d!1555244 e!3030048))

(declare-fun res!2068347 () Bool)

(assert (=> d!1555244 (=> res!2068347 e!3030048)))

(declare-fun e!3030049 () Bool)

(assert (=> d!1555244 (= res!2068347 e!3030049)))

(declare-fun res!2068346 () Bool)

(assert (=> d!1555244 (=> (not res!2068346) (not e!3030049))))

(assert (=> d!1555244 (= res!2068346 (isEmpty!29725 lt!1988714))))

(declare-fun e!3030047 () Option!13659)

(assert (=> d!1555244 (= lt!1988714 e!3030047)))

(declare-fun c!825126 () Bool)

(assert (=> d!1555244 (= c!825126 (and ((_ is Cons!55542) (t!363162 lt!1988654)) (= (_1!32903 (h!61979 (t!363162 lt!1988654))) key!6445)))))

(assert (=> d!1555244 (noDuplicateKeys!2586 (t!363162 lt!1988654))))

(assert (=> d!1555244 (= (getPair!1082 (t!363162 lt!1988654) key!6445) lt!1988714)))

(declare-fun b!4847694 () Bool)

(assert (=> b!4847694 (= e!3030049 (not (containsKey!4677 (t!363162 lt!1988654) key!6445)))))

(declare-fun b!4847695 () Bool)

(declare-fun e!3030050 () Option!13659)

(assert (=> b!4847695 (= e!3030050 (getPair!1082 (t!363162 (t!363162 lt!1988654)) key!6445))))

(declare-fun b!4847696 () Bool)

(assert (=> b!4847696 (= e!3030047 e!3030050)))

(declare-fun c!825125 () Bool)

(assert (=> b!4847696 (= c!825125 ((_ is Cons!55542) (t!363162 lt!1988654)))))

(declare-fun b!4847697 () Bool)

(assert (=> b!4847697 (= e!3030047 (Some!13658 (h!61979 (t!363162 lt!1988654))))))

(declare-fun b!4847698 () Bool)

(assert (=> b!4847698 (= e!3030050 None!13658)))

(declare-fun b!4847699 () Bool)

(declare-fun res!2068348 () Bool)

(assert (=> b!4847699 (=> (not res!2068348) (not e!3030046))))

(assert (=> b!4847699 (= res!2068348 (= (_1!32903 (get!19021 lt!1988714)) key!6445))))

(declare-fun b!4847700 () Bool)

(assert (=> b!4847700 (= e!3030046 (contains!19195 (t!363162 lt!1988654) (get!19021 lt!1988714)))))

(assert (= (and d!1555244 c!825126) b!4847697))

(assert (= (and d!1555244 (not c!825126)) b!4847696))

(assert (= (and b!4847696 c!825125) b!4847695))

(assert (= (and b!4847696 (not c!825125)) b!4847698))

(assert (= (and d!1555244 res!2068346) b!4847694))

(assert (= (and d!1555244 (not res!2068347)) b!4847693))

(assert (= (and b!4847693 res!2068349) b!4847699))

(assert (= (and b!4847699 res!2068348) b!4847700))

(declare-fun m!5845766 () Bool)

(assert (=> b!4847700 m!5845766))

(assert (=> b!4847700 m!5845766))

(declare-fun m!5845768 () Bool)

(assert (=> b!4847700 m!5845768))

(declare-fun m!5845770 () Bool)

(assert (=> b!4847695 m!5845770))

(declare-fun m!5845772 () Bool)

(assert (=> b!4847694 m!5845772))

(assert (=> b!4847699 m!5845766))

(declare-fun m!5845774 () Bool)

(assert (=> b!4847693 m!5845774))

(declare-fun m!5845776 () Bool)

(assert (=> d!1555244 m!5845776))

(assert (=> d!1555244 m!5845764))

(assert (=> b!4847622 d!1555244))

(declare-fun d!1555246 () Bool)

(declare-fun res!2068350 () Bool)

(declare-fun e!3030051 () Bool)

(assert (=> d!1555246 (=> res!2068350 e!3030051)))

(assert (=> d!1555246 (= res!2068350 (and ((_ is Cons!55542) lt!1988654) (= (_1!32903 (h!61979 lt!1988654)) key!6445)))))

(assert (=> d!1555246 (= (containsKey!4677 lt!1988654 key!6445) e!3030051)))

(declare-fun b!4847701 () Bool)

(declare-fun e!3030052 () Bool)

(assert (=> b!4847701 (= e!3030051 e!3030052)))

(declare-fun res!2068351 () Bool)

(assert (=> b!4847701 (=> (not res!2068351) (not e!3030052))))

(assert (=> b!4847701 (= res!2068351 ((_ is Cons!55542) lt!1988654))))

(declare-fun b!4847702 () Bool)

(assert (=> b!4847702 (= e!3030052 (containsKey!4677 (t!363162 lt!1988654) key!6445))))

(assert (= (and d!1555246 (not res!2068350)) b!4847701))

(assert (= (and b!4847701 res!2068351) b!4847702))

(assert (=> b!4847702 m!5845772))

(assert (=> b!4847621 d!1555246))

(declare-fun d!1555248 () Bool)

(assert (=> d!1555248 (= (isDefined!10751 lt!1988690) (not (isEmpty!29725 lt!1988690)))))

(declare-fun bs!1172475 () Bool)

(assert (= bs!1172475 d!1555248))

(assert (=> bs!1172475 m!5845698))

(assert (=> b!4847620 d!1555248))

(assert (=> b!4847619 d!1555182))

(declare-fun d!1555250 () Bool)

(assert (=> d!1555250 (= (get!19023 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656)) (v!49420 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656)))))

(assert (=> d!1555186 d!1555250))

(declare-fun b!4847713 () Bool)

(declare-fun e!3030058 () Option!13661)

(assert (=> b!4847713 (= e!3030058 (getValueByKey!2726 (t!363163 (toList!7852 lm!2646)) lt!1988656))))

(declare-fun b!4847711 () Bool)

(declare-fun e!3030057 () Option!13661)

(assert (=> b!4847711 (= e!3030057 (Some!13660 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(declare-fun b!4847712 () Bool)

(assert (=> b!4847712 (= e!3030057 e!3030058)))

(declare-fun c!825132 () Bool)

(assert (=> b!4847712 (= c!825132 (and ((_ is Cons!55543) (toList!7852 lm!2646)) (not (= (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656))))))

(declare-fun b!4847714 () Bool)

(assert (=> b!4847714 (= e!3030058 None!13660)))

(declare-fun d!1555252 () Bool)

(declare-fun c!825131 () Bool)

(assert (=> d!1555252 (= c!825131 (and ((_ is Cons!55543) (toList!7852 lm!2646)) (= (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656)))))

(assert (=> d!1555252 (= (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656) e!3030057)))

(assert (= (and d!1555252 c!825131) b!4847711))

(assert (= (and d!1555252 (not c!825131)) b!4847712))

(assert (= (and b!4847712 c!825132) b!4847713))

(assert (= (and b!4847712 (not c!825132)) b!4847714))

(declare-fun m!5845778 () Bool)

(assert (=> b!4847713 m!5845778))

(assert (=> d!1555186 d!1555252))

(declare-fun d!1555254 () Bool)

(declare-fun res!2068352 () Bool)

(declare-fun e!3030059 () Bool)

(assert (=> d!1555254 (=> res!2068352 e!3030059)))

(assert (=> d!1555254 (= res!2068352 ((_ is Nil!55543) (toList!7852 lm!2646)))))

(assert (=> d!1555254 (= (forall!12945 (toList!7852 lm!2646) lambda!242498) e!3030059)))

(declare-fun b!4847715 () Bool)

(declare-fun e!3030060 () Bool)

(assert (=> b!4847715 (= e!3030059 e!3030060)))

(declare-fun res!2068353 () Bool)

(assert (=> b!4847715 (=> (not res!2068353) (not e!3030060))))

(assert (=> b!4847715 (= res!2068353 (dynLambda!22352 lambda!242498 (h!61980 (toList!7852 lm!2646))))))

(declare-fun b!4847716 () Bool)

(assert (=> b!4847716 (= e!3030060 (forall!12945 (t!363163 (toList!7852 lm!2646)) lambda!242498))))

(assert (= (and d!1555254 (not res!2068352)) b!4847715))

(assert (= (and b!4847715 res!2068353) b!4847716))

(declare-fun b_lambda!192491 () Bool)

(assert (=> (not b_lambda!192491) (not b!4847715)))

(declare-fun m!5845780 () Bool)

(assert (=> b!4847715 m!5845780))

(declare-fun m!5845782 () Bool)

(assert (=> b!4847716 m!5845782))

(assert (=> d!1555204 d!1555254))

(declare-fun d!1555256 () Bool)

(declare-fun res!2068358 () Bool)

(declare-fun e!3030065 () Bool)

(assert (=> d!1555256 (=> res!2068358 e!3030065)))

(assert (=> d!1555256 (= res!2068358 (or ((_ is Nil!55543) (toList!7852 lm!2646)) ((_ is Nil!55543) (t!363163 (toList!7852 lm!2646)))))))

(assert (=> d!1555256 (= (isStrictlySorted!1075 (toList!7852 lm!2646)) e!3030065)))

(declare-fun b!4847721 () Bool)

(declare-fun e!3030066 () Bool)

(assert (=> b!4847721 (= e!3030065 e!3030066)))

(declare-fun res!2068359 () Bool)

(assert (=> b!4847721 (=> (not res!2068359) (not e!3030066))))

(assert (=> b!4847721 (= res!2068359 (bvslt (_1!32904 (h!61980 (toList!7852 lm!2646))) (_1!32904 (h!61980 (t!363163 (toList!7852 lm!2646))))))))

(declare-fun b!4847722 () Bool)

(assert (=> b!4847722 (= e!3030066 (isStrictlySorted!1075 (t!363163 (toList!7852 lm!2646))))))

(assert (= (and d!1555256 (not res!2068358)) b!4847721))

(assert (= (and b!4847721 res!2068359) b!4847722))

(declare-fun m!5845784 () Bool)

(assert (=> b!4847722 m!5845784))

(assert (=> d!1555220 d!1555256))

(declare-fun d!1555258 () Bool)

(assert (=> d!1555258 (= (isEmpty!29725 (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445)) (not ((_ is Some!13658) (getPair!1082 (_2!32904 (h!61980 (toList!7852 lm!2646))) key!6445))))))

(assert (=> d!1555168 d!1555258))

(declare-fun d!1555260 () Bool)

(assert (=> d!1555260 (= (isEmpty!29725 (getPair!1082 lt!1988654 key!6445)) (not ((_ is Some!13658) (getPair!1082 lt!1988654 key!6445))))))

(assert (=> d!1555190 d!1555260))

(declare-fun d!1555262 () Bool)

(declare-fun res!2068360 () Bool)

(declare-fun e!3030067 () Bool)

(assert (=> d!1555262 (=> res!2068360 e!3030067)))

(assert (=> d!1555262 (= res!2068360 (not ((_ is Cons!55542) (_2!32904 lt!1988655))))))

(assert (=> d!1555262 (= (noDuplicateKeys!2586 (_2!32904 lt!1988655)) e!3030067)))

(declare-fun b!4847723 () Bool)

(declare-fun e!3030068 () Bool)

(assert (=> b!4847723 (= e!3030067 e!3030068)))

(declare-fun res!2068361 () Bool)

(assert (=> b!4847723 (=> (not res!2068361) (not e!3030068))))

(assert (=> b!4847723 (= res!2068361 (not (containsKey!4677 (t!363162 (_2!32904 lt!1988655)) (_1!32903 (h!61979 (_2!32904 lt!1988655))))))))

(declare-fun b!4847724 () Bool)

(assert (=> b!4847724 (= e!3030068 (noDuplicateKeys!2586 (t!363162 (_2!32904 lt!1988655))))))

(assert (= (and d!1555262 (not res!2068360)) b!4847723))

(assert (= (and b!4847723 res!2068361) b!4847724))

(declare-fun m!5845786 () Bool)

(assert (=> b!4847723 m!5845786))

(declare-fun m!5845788 () Bool)

(assert (=> b!4847724 m!5845788))

(assert (=> bs!1172472 d!1555262))

(declare-fun d!1555264 () Bool)

(assert (=> d!1555264 (= (isEmpty!29725 lt!1988673) (not ((_ is Some!13658) lt!1988673)))))

(assert (=> d!1555170 d!1555264))

(assert (=> d!1555170 d!1555200))

(declare-fun d!1555266 () Bool)

(declare-fun res!2068362 () Bool)

(declare-fun e!3030069 () Bool)

(assert (=> d!1555266 (=> res!2068362 e!3030069)))

(assert (=> d!1555266 (= res!2068362 ((_ is Nil!55543) (t!363163 (toList!7852 lm!2646))))))

(assert (=> d!1555266 (= (forall!12945 (t!363163 (toList!7852 lm!2646)) lambda!242492) e!3030069)))

(declare-fun b!4847725 () Bool)

(declare-fun e!3030070 () Bool)

(assert (=> b!4847725 (= e!3030069 e!3030070)))

(declare-fun res!2068363 () Bool)

(assert (=> b!4847725 (=> (not res!2068363) (not e!3030070))))

(assert (=> b!4847725 (= res!2068363 (dynLambda!22352 lambda!242492 (h!61980 (t!363163 (toList!7852 lm!2646)))))))

(declare-fun b!4847726 () Bool)

(assert (=> b!4847726 (= e!3030070 (forall!12945 (t!363163 (t!363163 (toList!7852 lm!2646))) lambda!242492))))

(assert (= (and d!1555266 (not res!2068362)) b!4847725))

(assert (= (and b!4847725 res!2068363) b!4847726))

(declare-fun b_lambda!192493 () Bool)

(assert (=> (not b_lambda!192493) (not b!4847725)))

(declare-fun m!5845790 () Bool)

(assert (=> b!4847725 m!5845790))

(declare-fun m!5845792 () Bool)

(assert (=> b!4847726 m!5845792))

(assert (=> b!4847662 d!1555266))

(declare-fun d!1555268 () Bool)

(declare-fun res!2068368 () Bool)

(declare-fun e!3030075 () Bool)

(assert (=> d!1555268 (=> res!2068368 e!3030075)))

(assert (=> d!1555268 (= res!2068368 (and ((_ is Cons!55543) (toList!7852 lm!2646)) (= (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656)))))

(assert (=> d!1555268 (= (containsKey!4678 (toList!7852 lm!2646) lt!1988656) e!3030075)))

(declare-fun b!4847731 () Bool)

(declare-fun e!3030076 () Bool)

(assert (=> b!4847731 (= e!3030075 e!3030076)))

(declare-fun res!2068369 () Bool)

(assert (=> b!4847731 (=> (not res!2068369) (not e!3030076))))

(assert (=> b!4847731 (= res!2068369 (and (or (not ((_ is Cons!55543) (toList!7852 lm!2646))) (bvsle (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656)) ((_ is Cons!55543) (toList!7852 lm!2646)) (bvslt (_1!32904 (h!61980 (toList!7852 lm!2646))) lt!1988656)))))

(declare-fun b!4847732 () Bool)

(assert (=> b!4847732 (= e!3030076 (containsKey!4678 (t!363163 (toList!7852 lm!2646)) lt!1988656))))

(assert (= (and d!1555268 (not res!2068368)) b!4847731))

(assert (= (and b!4847731 res!2068369) b!4847732))

(declare-fun m!5845794 () Bool)

(assert (=> b!4847732 m!5845794))

(assert (=> d!1555210 d!1555268))

(declare-fun d!1555270 () Bool)

(assert (=> d!1555270 (dynLambda!22352 lambda!242492 lt!1988655)))

(assert (=> d!1555270 true))

(declare-fun _$7!2458 () Unit!145672)

(assert (=> d!1555270 (= (choose!35442 (toList!7852 lm!2646) lambda!242492 lt!1988655) _$7!2458)))

(declare-fun b_lambda!192495 () Bool)

(assert (=> (not b_lambda!192495) (not d!1555270)))

(declare-fun bs!1172476 () Bool)

(assert (= bs!1172476 d!1555270))

(assert (=> bs!1172476 m!5845684))

(assert (=> d!1555192 d!1555270))

(assert (=> d!1555192 d!1555218))

(declare-fun d!1555272 () Bool)

(declare-fun choose!35444 (Hashable!7492 K!17334) (_ BitVec 64))

(assert (=> d!1555272 (= (hash!5578 hashF!1641 key!6445) (choose!35444 hashF!1641 key!6445))))

(declare-fun bs!1172477 () Bool)

(assert (= bs!1172477 d!1555272))

(declare-fun m!5845796 () Bool)

(assert (=> bs!1172477 m!5845796))

(assert (=> d!1555216 d!1555272))

(declare-fun d!1555274 () Bool)

(declare-fun res!2068370 () Bool)

(declare-fun e!3030077 () Bool)

(assert (=> d!1555274 (=> res!2068370 e!3030077)))

(assert (=> d!1555274 (= res!2068370 (not ((_ is Cons!55542) (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))))

(assert (=> d!1555274 (= (noDuplicateKeys!2586 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) e!3030077)))

(declare-fun b!4847733 () Bool)

(declare-fun e!3030078 () Bool)

(assert (=> b!4847733 (= e!3030077 e!3030078)))

(declare-fun res!2068371 () Bool)

(assert (=> b!4847733 (=> (not res!2068371) (not e!3030078))))

(assert (=> b!4847733 (= res!2068371 (not (containsKey!4677 (t!363162 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) (_1!32903 (h!61979 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))))))

(declare-fun b!4847734 () Bool)

(assert (=> b!4847734 (= e!3030078 (noDuplicateKeys!2586 (t!363162 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))))

(assert (= (and d!1555274 (not res!2068370)) b!4847733))

(assert (= (and b!4847733 res!2068371) b!4847734))

(declare-fun m!5845798 () Bool)

(assert (=> b!4847733 m!5845798))

(declare-fun m!5845800 () Bool)

(assert (=> b!4847734 m!5845800))

(assert (=> b!4847634 d!1555274))

(declare-fun d!1555276 () Bool)

(declare-fun res!2068372 () Bool)

(declare-fun e!3030079 () Bool)

(assert (=> d!1555276 (=> res!2068372 e!3030079)))

(assert (=> d!1555276 (= res!2068372 (and ((_ is Cons!55542) (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) (= (_1!32903 (h!61979 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))))) (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))))

(assert (=> d!1555276 (= (containsKey!4677 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646)))))) e!3030079)))

(declare-fun b!4847735 () Bool)

(declare-fun e!3030080 () Bool)

(assert (=> b!4847735 (= e!3030079 e!3030080)))

(declare-fun res!2068373 () Bool)

(assert (=> b!4847735 (=> (not res!2068373) (not e!3030080))))

(assert (=> b!4847735 (= res!2068373 ((_ is Cons!55542) (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))))))

(declare-fun b!4847736 () Bool)

(assert (=> b!4847736 (= e!3030080 (containsKey!4677 (t!363162 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646))))) (_1!32903 (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646)))))))))

(assert (= (and d!1555276 (not res!2068372)) b!4847735))

(assert (= (and b!4847735 res!2068373) b!4847736))

(declare-fun m!5845802 () Bool)

(assert (=> b!4847736 m!5845802))

(assert (=> b!4847633 d!1555276))

(declare-fun d!1555278 () Bool)

(declare-fun lt!1988715 () Bool)

(assert (=> d!1555278 (= lt!1988715 (select (content!9874 (t!363163 (toList!7852 lm!2646))) lt!1988655))))

(declare-fun e!3030082 () Bool)

(assert (=> d!1555278 (= lt!1988715 e!3030082)))

(declare-fun res!2068374 () Bool)

(assert (=> d!1555278 (=> (not res!2068374) (not e!3030082))))

(assert (=> d!1555278 (= res!2068374 ((_ is Cons!55543) (t!363163 (toList!7852 lm!2646))))))

(assert (=> d!1555278 (= (contains!19193 (t!363163 (toList!7852 lm!2646)) lt!1988655) lt!1988715)))

(declare-fun b!4847737 () Bool)

(declare-fun e!3030081 () Bool)

(assert (=> b!4847737 (= e!3030082 e!3030081)))

(declare-fun res!2068375 () Bool)

(assert (=> b!4847737 (=> res!2068375 e!3030081)))

(assert (=> b!4847737 (= res!2068375 (= (h!61980 (t!363163 (toList!7852 lm!2646))) lt!1988655))))

(declare-fun b!4847738 () Bool)

(assert (=> b!4847738 (= e!3030081 (contains!19193 (t!363163 (t!363163 (toList!7852 lm!2646))) lt!1988655))))

(assert (= (and d!1555278 res!2068374) b!4847737))

(assert (= (and b!4847737 (not res!2068375)) b!4847738))

(declare-fun m!5845804 () Bool)

(assert (=> d!1555278 m!5845804))

(declare-fun m!5845806 () Bool)

(assert (=> d!1555278 m!5845806))

(declare-fun m!5845808 () Bool)

(assert (=> b!4847738 m!5845808))

(assert (=> b!4847580 d!1555278))

(declare-fun d!1555280 () Bool)

(declare-fun isEmpty!29728 (Option!13661) Bool)

(assert (=> d!1555280 (= (isDefined!10753 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656)) (not (isEmpty!29728 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656))))))

(declare-fun bs!1172478 () Bool)

(assert (= bs!1172478 d!1555280))

(assert (=> bs!1172478 m!5845660))

(declare-fun m!5845810 () Bool)

(assert (=> bs!1172478 m!5845810))

(assert (=> b!4847656 d!1555280))

(assert (=> b!4847656 d!1555252))

(declare-fun d!1555282 () Bool)

(assert (=> d!1555282 (isDefined!10753 (getValueByKey!2726 (toList!7852 lm!2646) lt!1988656))))

(declare-fun lt!1988718 () Unit!145672)

(declare-fun choose!35445 (List!55667 (_ BitVec 64)) Unit!145672)

(assert (=> d!1555282 (= lt!1988718 (choose!35445 (toList!7852 lm!2646) lt!1988656))))

(declare-fun e!3030085 () Bool)

(assert (=> d!1555282 e!3030085))

(declare-fun res!2068378 () Bool)

(assert (=> d!1555282 (=> (not res!2068378) (not e!3030085))))

(assert (=> d!1555282 (= res!2068378 (isStrictlySorted!1075 (toList!7852 lm!2646)))))

(assert (=> d!1555282 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2498 (toList!7852 lm!2646) lt!1988656) lt!1988718)))

(declare-fun b!4847741 () Bool)

(assert (=> b!4847741 (= e!3030085 (containsKey!4678 (toList!7852 lm!2646) lt!1988656))))

(assert (= (and d!1555282 res!2068378) b!4847741))

(assert (=> d!1555282 m!5845660))

(assert (=> d!1555282 m!5845660))

(assert (=> d!1555282 m!5845728))

(declare-fun m!5845812 () Bool)

(assert (=> d!1555282 m!5845812))

(assert (=> d!1555282 m!5845736))

(assert (=> b!4847741 m!5845724))

(assert (=> b!4847654 d!1555282))

(assert (=> b!4847654 d!1555280))

(assert (=> b!4847654 d!1555252))

(declare-fun d!1555284 () Bool)

(declare-fun c!825135 () Bool)

(assert (=> d!1555284 (= c!825135 ((_ is Nil!55543) (toList!7852 lm!2646)))))

(declare-fun e!3030088 () (InoxSet tuple2!59220))

(assert (=> d!1555284 (= (content!9874 (toList!7852 lm!2646)) e!3030088)))

(declare-fun b!4847746 () Bool)

(assert (=> b!4847746 (= e!3030088 ((as const (Array tuple2!59220 Bool)) false))))

(declare-fun b!4847747 () Bool)

(assert (=> b!4847747 (= e!3030088 ((_ map or) (store ((as const (Array tuple2!59220 Bool)) false) (h!61980 (toList!7852 lm!2646)) true) (content!9874 (t!363163 (toList!7852 lm!2646)))))))

(assert (= (and d!1555284 c!825135) b!4847746))

(assert (= (and d!1555284 (not c!825135)) b!4847747))

(declare-fun m!5845814 () Bool)

(assert (=> b!4847747 m!5845814))

(assert (=> b!4847747 m!5845804))

(assert (=> d!1555182 d!1555284))

(assert (=> bs!1172471 d!1555200))

(declare-fun d!1555286 () Bool)

(declare-fun lt!1988719 () Bool)

(assert (=> d!1555286 (= lt!1988719 (select (content!9876 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (get!19021 lt!1988673)))))

(declare-fun e!3030090 () Bool)

(assert (=> d!1555286 (= lt!1988719 e!3030090)))

(declare-fun res!2068380 () Bool)

(assert (=> d!1555286 (=> (not res!2068380) (not e!3030090))))

(assert (=> d!1555286 (= res!2068380 ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646)))))))

(assert (=> d!1555286 (= (contains!19195 (_2!32904 (h!61980 (toList!7852 lm!2646))) (get!19021 lt!1988673)) lt!1988719)))

(declare-fun b!4847748 () Bool)

(declare-fun e!3030089 () Bool)

(assert (=> b!4847748 (= e!3030090 e!3030089)))

(declare-fun res!2068379 () Bool)

(assert (=> b!4847748 (=> res!2068379 e!3030089)))

(assert (=> b!4847748 (= res!2068379 (= (h!61979 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (get!19021 lt!1988673)))))

(declare-fun b!4847749 () Bool)

(assert (=> b!4847749 (= e!3030089 (contains!19195 (t!363162 (_2!32904 (h!61980 (toList!7852 lm!2646)))) (get!19021 lt!1988673)))))

(assert (= (and d!1555286 res!2068380) b!4847748))

(assert (= (and b!4847748 (not res!2068379)) b!4847749))

(declare-fun m!5845816 () Bool)

(assert (=> d!1555286 m!5845816))

(assert (=> d!1555286 m!5845626))

(declare-fun m!5845818 () Bool)

(assert (=> d!1555286 m!5845818))

(assert (=> b!4847749 m!5845626))

(declare-fun m!5845820 () Bool)

(assert (=> b!4847749 m!5845820))

(assert (=> b!4847574 d!1555286))

(declare-fun d!1555288 () Bool)

(assert (=> d!1555288 (= (get!19021 lt!1988673) (v!49416 lt!1988673))))

(assert (=> b!4847574 d!1555288))

(assert (=> b!4847573 d!1555288))

(declare-fun tp!1364603 () Bool)

(declare-fun e!3030093 () Bool)

(declare-fun b!4847754 () Bool)

(declare-fun tp_is_empty!35169 () Bool)

(assert (=> b!4847754 (= e!3030093 (and tp_is_empty!35167 tp_is_empty!35169 tp!1364603))))

(assert (=> b!4847667 (= tp!1364599 e!3030093)))

(assert (= (and b!4847667 ((_ is Cons!55542) (_2!32904 (h!61980 (toList!7852 lm!2646))))) b!4847754))

(declare-fun b!4847755 () Bool)

(declare-fun e!3030094 () Bool)

(declare-fun tp!1364604 () Bool)

(declare-fun tp!1364605 () Bool)

(assert (=> b!4847755 (= e!3030094 (and tp!1364604 tp!1364605))))

(assert (=> b!4847667 (= tp!1364600 e!3030094)))

(assert (= (and b!4847667 ((_ is Cons!55543) (t!363163 (toList!7852 lm!2646)))) b!4847755))

(declare-fun b_lambda!192497 () Bool)

(assert (= b_lambda!192493 (or start!505136 b_lambda!192497)))

(declare-fun bs!1172480 () Bool)

(declare-fun d!1555294 () Bool)

(assert (= bs!1172480 (and d!1555294 start!505136)))

(assert (=> bs!1172480 (= (dynLambda!22352 lambda!242492 (h!61980 (t!363163 (toList!7852 lm!2646)))) (noDuplicateKeys!2586 (_2!32904 (h!61980 (t!363163 (toList!7852 lm!2646))))))))

(declare-fun m!5845822 () Bool)

(assert (=> bs!1172480 m!5845822))

(assert (=> b!4847725 d!1555294))

(declare-fun b_lambda!192499 () Bool)

(assert (= b_lambda!192491 (or d!1555204 b_lambda!192499)))

(declare-fun bs!1172481 () Bool)

(declare-fun d!1555296 () Bool)

(assert (= bs!1172481 (and d!1555296 d!1555204)))

(declare-fun allKeysSameHash!2031 (List!55666 (_ BitVec 64) Hashable!7492) Bool)

(assert (=> bs!1172481 (= (dynLambda!22352 lambda!242498 (h!61980 (toList!7852 lm!2646))) (allKeysSameHash!2031 (_2!32904 (h!61980 (toList!7852 lm!2646))) (_1!32904 (h!61980 (toList!7852 lm!2646))) hashF!1641))))

(declare-fun m!5845824 () Bool)

(assert (=> bs!1172481 m!5845824))

(assert (=> b!4847715 d!1555296))

(declare-fun b_lambda!192501 () Bool)

(assert (= b_lambda!192495 (or start!505136 b_lambda!192501)))

(assert (=> d!1555270 d!1555224))

(check-sat (not d!1555272) (not b_lambda!192489) (not b!4847692) (not b!4847754) (not b!4847679) (not bs!1172480) (not b!4847724) (not b_lambda!192487) (not b!4847700) (not b!4847749) (not d!1555228) (not bs!1172481) (not b_lambda!192499) (not b!4847690) (not b!4847684) (not b!4847702) (not d!1555232) (not d!1555278) (not b!4847733) (not d!1555280) (not b!4847678) (not b!4847691) (not d!1555236) (not b!4847716) (not b!4847695) (not b_lambda!192501) tp_is_empty!35169 (not d!1555282) tp_is_empty!35167 (not d!1555248) (not b!4847694) (not d!1555226) (not b!4847693) (not b!4847755) (not d!1555234) (not b!4847738) (not b!4847699) (not b!4847734) (not b!4847726) (not b!4847713) (not b!4847736) (not b!4847732) (not b!4847741) (not b!4847677) (not b!4847675) (not b!4847747) (not b!4847722) (not b!4847723) (not b!4847683) (not b_lambda!192497) (not b!4847673) (not d!1555286) (not d!1555244))
(check-sat)
