; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697580 () Bool)

(assert start!697580)

(declare-fun res!2918053 () Bool)

(declare-fun e!4299158 () Bool)

(assert (=> start!697580 (=> (not res!2918053) (not e!4299158))))

(declare-datatypes ((C!36834 0))(
  ( (C!36835 (val!28365 Int)) )
))
(declare-datatypes ((Regex!18280 0))(
  ( (ElementMatch!18280 (c!1333645 C!36834)) (Concat!27125 (regOne!37072 Regex!18280) (regTwo!37072 Regex!18280)) (EmptyExpr!18280) (Star!18280 (reg!18609 Regex!18280)) (EmptyLang!18280) (Union!18280 (regOne!37073 Regex!18280) (regTwo!37073 Regex!18280)) )
))
(declare-datatypes ((List!69596 0))(
  ( (Nil!69472) (Cons!69472 (h!75920 Regex!18280) (t!383613 List!69596)) )
))
(declare-datatypes ((Context!14464 0))(
  ( (Context!14465 (exprs!7732 List!69596)) )
))
(declare-datatypes ((List!69597 0))(
  ( (Nil!69473) (Cons!69473 (h!75921 Context!14464) (t!383614 List!69597)) )
))
(declare-fun zl!300 () List!69597)

(declare-fun c!7723 () Context!14464)

(declare-fun contains!20672 (List!69597 Context!14464) Bool)

(assert (=> start!697580 (= res!2918053 (contains!20672 zl!300 c!7723))))

(assert (=> start!697580 e!4299158))

(declare-fun e!4299161 () Bool)

(assert (=> start!697580 e!4299161))

(declare-fun e!4299160 () Bool)

(declare-fun inv!88723 (Context!14464) Bool)

(assert (=> start!697580 (and (inv!88723 c!7723) e!4299160)))

(declare-fun b!7156514 () Bool)

(declare-fun lt!2569298 () Regex!18280)

(declare-fun contains!20673 (List!69596 Regex!18280) Bool)

(declare-fun unfocusZipperList!2273 (List!69597) List!69596)

(assert (=> b!7156514 (= e!4299158 (not (contains!20673 (unfocusZipperList!2273 zl!300) lt!2569298)))))

(declare-fun lt!2569299 () List!69596)

(assert (=> b!7156514 (contains!20673 lt!2569299 lt!2569298)))

(declare-fun generalisedConcat!2428 (List!69596) Regex!18280)

(assert (=> b!7156514 (= lt!2569298 (generalisedConcat!2428 (exprs!7732 c!7723)))))

(assert (=> b!7156514 (= lt!2569299 (unfocusZipperList!2273 (t!383614 zl!300)))))

(declare-datatypes ((Unit!163303 0))(
  ( (Unit!163304) )
))
(declare-fun lt!2569300 () Unit!163303)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!31 (List!69597 Context!14464) Unit!163303)

(assert (=> b!7156514 (= lt!2569300 (lemmaZipperContainsContextThenUnfocusZipperListContains!31 (t!383614 zl!300) c!7723))))

(declare-fun b!7156515 () Bool)

(declare-fun res!2918054 () Bool)

(assert (=> b!7156515 (=> (not res!2918054) (not e!4299158))))

(assert (=> b!7156515 (= res!2918054 (contains!20672 (t!383614 zl!300) c!7723))))

(declare-fun b!7156516 () Bool)

(declare-fun res!2918052 () Bool)

(assert (=> b!7156516 (=> (not res!2918052) (not e!4299158))))

(assert (=> b!7156516 (= res!2918052 (and (is-Cons!69473 zl!300) (not (= (h!75921 zl!300) c!7723))))))

(declare-fun b!7156517 () Bool)

(declare-fun e!4299159 () Bool)

(declare-fun tp!1978988 () Bool)

(assert (=> b!7156517 (= e!4299159 tp!1978988)))

(declare-fun b!7156518 () Bool)

(declare-fun tp!1978989 () Bool)

(assert (=> b!7156518 (= e!4299160 tp!1978989)))

(declare-fun tp!1978990 () Bool)

(declare-fun b!7156519 () Bool)

(assert (=> b!7156519 (= e!4299161 (and (inv!88723 (h!75921 zl!300)) e!4299159 tp!1978990))))

(assert (= (and start!697580 res!2918053) b!7156516))

(assert (= (and b!7156516 res!2918052) b!7156515))

(assert (= (and b!7156515 res!2918054) b!7156514))

(assert (= b!7156519 b!7156517))

(assert (= (and start!697580 (is-Cons!69473 zl!300)) b!7156519))

(assert (= start!697580 b!7156518))

(declare-fun m!7863106 () Bool)

(assert (=> start!697580 m!7863106))

(declare-fun m!7863108 () Bool)

(assert (=> start!697580 m!7863108))

(declare-fun m!7863110 () Bool)

(assert (=> b!7156514 m!7863110))

(declare-fun m!7863112 () Bool)

(assert (=> b!7156514 m!7863112))

(declare-fun m!7863114 () Bool)

(assert (=> b!7156514 m!7863114))

(declare-fun m!7863116 () Bool)

(assert (=> b!7156514 m!7863116))

(declare-fun m!7863118 () Bool)

(assert (=> b!7156514 m!7863118))

(assert (=> b!7156514 m!7863112))

(declare-fun m!7863120 () Bool)

(assert (=> b!7156514 m!7863120))

(declare-fun m!7863122 () Bool)

(assert (=> b!7156515 m!7863122))

(declare-fun m!7863124 () Bool)

(assert (=> b!7156519 m!7863124))

(push 1)

(assert (not b!7156518))

(assert (not b!7156517))

(assert (not b!7156514))

(assert (not start!697580))

(assert (not b!7156519))

(assert (not b!7156515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229733 () Bool)

(declare-fun lambda!436460 () Int)

(declare-fun forall!17118 (List!69596 Int) Bool)

(assert (=> d!2229733 (= (inv!88723 (h!75921 zl!300)) (forall!17118 (exprs!7732 (h!75921 zl!300)) lambda!436460))))

(declare-fun bs!1889947 () Bool)

(assert (= bs!1889947 d!2229733))

(declare-fun m!7863152 () Bool)

(assert (=> bs!1889947 m!7863152))

(assert (=> b!7156519 d!2229733))

(declare-fun bs!1889948 () Bool)

(declare-fun d!2229739 () Bool)

(assert (= bs!1889948 (and d!2229739 d!2229733)))

(declare-fun lambda!436463 () Int)

(assert (=> bs!1889948 (= lambda!436463 lambda!436460)))

(declare-fun lt!2569317 () List!69596)

(assert (=> d!2229739 (forall!17118 lt!2569317 lambda!436463)))

(declare-fun e!4299184 () List!69596)

(assert (=> d!2229739 (= lt!2569317 e!4299184)))

(declare-fun c!1333651 () Bool)

(assert (=> d!2229739 (= c!1333651 (is-Cons!69473 (t!383614 zl!300)))))

(assert (=> d!2229739 (= (unfocusZipperList!2273 (t!383614 zl!300)) lt!2569317)))

(declare-fun b!7156552 () Bool)

(assert (=> b!7156552 (= e!4299184 (Cons!69472 (generalisedConcat!2428 (exprs!7732 (h!75921 (t!383614 zl!300)))) (unfocusZipperList!2273 (t!383614 (t!383614 zl!300)))))))

(declare-fun b!7156553 () Bool)

(assert (=> b!7156553 (= e!4299184 Nil!69472)))

(assert (= (and d!2229739 c!1333651) b!7156552))

(assert (= (and d!2229739 (not c!1333651)) b!7156553))

(declare-fun m!7863154 () Bool)

(assert (=> d!2229739 m!7863154))

(declare-fun m!7863156 () Bool)

(assert (=> b!7156552 m!7863156))

(declare-fun m!7863158 () Bool)

(assert (=> b!7156552 m!7863158))

(assert (=> b!7156514 d!2229739))

(declare-fun d!2229741 () Bool)

(declare-fun lt!2569320 () Bool)

(declare-fun content!14255 (List!69596) (Set Regex!18280))

(assert (=> d!2229741 (= lt!2569320 (set.member lt!2569298 (content!14255 (unfocusZipperList!2273 zl!300))))))

(declare-fun e!4299189 () Bool)

(assert (=> d!2229741 (= lt!2569320 e!4299189)))

(declare-fun res!2918075 () Bool)

(assert (=> d!2229741 (=> (not res!2918075) (not e!4299189))))

(assert (=> d!2229741 (= res!2918075 (is-Cons!69472 (unfocusZipperList!2273 zl!300)))))

(assert (=> d!2229741 (= (contains!20673 (unfocusZipperList!2273 zl!300) lt!2569298) lt!2569320)))

(declare-fun b!7156558 () Bool)

(declare-fun e!4299190 () Bool)

(assert (=> b!7156558 (= e!4299189 e!4299190)))

(declare-fun res!2918074 () Bool)

(assert (=> b!7156558 (=> res!2918074 e!4299190)))

(assert (=> b!7156558 (= res!2918074 (= (h!75920 (unfocusZipperList!2273 zl!300)) lt!2569298))))

(declare-fun b!7156559 () Bool)

(assert (=> b!7156559 (= e!4299190 (contains!20673 (t!383613 (unfocusZipperList!2273 zl!300)) lt!2569298))))

(assert (= (and d!2229741 res!2918075) b!7156558))

(assert (= (and b!7156558 (not res!2918074)) b!7156559))

(assert (=> d!2229741 m!7863112))

(declare-fun m!7863160 () Bool)

(assert (=> d!2229741 m!7863160))

(declare-fun m!7863162 () Bool)

(assert (=> d!2229741 m!7863162))

(declare-fun m!7863164 () Bool)

(assert (=> b!7156559 m!7863164))

(assert (=> b!7156514 d!2229741))

(declare-fun bs!1889949 () Bool)

(declare-fun d!2229743 () Bool)

(assert (= bs!1889949 (and d!2229743 d!2229733)))

(declare-fun lambda!436466 () Int)

(assert (=> bs!1889949 (= lambda!436466 lambda!436460)))

(declare-fun bs!1889950 () Bool)

(assert (= bs!1889950 (and d!2229743 d!2229739)))

(assert (=> bs!1889950 (= lambda!436466 lambda!436463)))

(declare-fun b!7156580 () Bool)

(declare-fun e!4299205 () Bool)

(declare-fun isEmpty!40135 (List!69596) Bool)

(assert (=> b!7156580 (= e!4299205 (isEmpty!40135 (t!383613 (exprs!7732 c!7723))))))

(declare-fun b!7156581 () Bool)

(declare-fun e!4299208 () Regex!18280)

(assert (=> b!7156581 (= e!4299208 (Concat!27125 (h!75920 (exprs!7732 c!7723)) (generalisedConcat!2428 (t!383613 (exprs!7732 c!7723)))))))

(declare-fun b!7156582 () Bool)

(declare-fun e!4299203 () Regex!18280)

(assert (=> b!7156582 (= e!4299203 (h!75920 (exprs!7732 c!7723)))))

(declare-fun e!4299207 () Bool)

(assert (=> d!2229743 e!4299207))

(declare-fun res!2918080 () Bool)

(assert (=> d!2229743 (=> (not res!2918080) (not e!4299207))))

(declare-fun lt!2569323 () Regex!18280)

(declare-fun validRegex!9417 (Regex!18280) Bool)

(assert (=> d!2229743 (= res!2918080 (validRegex!9417 lt!2569323))))

(assert (=> d!2229743 (= lt!2569323 e!4299203)))

(declare-fun c!1333663 () Bool)

(assert (=> d!2229743 (= c!1333663 e!4299205)))

(declare-fun res!2918081 () Bool)

(assert (=> d!2229743 (=> (not res!2918081) (not e!4299205))))

(assert (=> d!2229743 (= res!2918081 (is-Cons!69472 (exprs!7732 c!7723)))))

(assert (=> d!2229743 (forall!17118 (exprs!7732 c!7723) lambda!436466)))

(assert (=> d!2229743 (= (generalisedConcat!2428 (exprs!7732 c!7723)) lt!2569323)))

(declare-fun b!7156583 () Bool)

(declare-fun e!4299204 () Bool)

(declare-fun head!14567 (List!69596) Regex!18280)

(assert (=> b!7156583 (= e!4299204 (= lt!2569323 (head!14567 (exprs!7732 c!7723))))))

(declare-fun b!7156584 () Bool)

(declare-fun e!4299206 () Bool)

(assert (=> b!7156584 (= e!4299207 e!4299206)))

(declare-fun c!1333660 () Bool)

(assert (=> b!7156584 (= c!1333660 (isEmpty!40135 (exprs!7732 c!7723)))))

(declare-fun b!7156585 () Bool)

(declare-fun isConcat!1594 (Regex!18280) Bool)

(assert (=> b!7156585 (= e!4299204 (isConcat!1594 lt!2569323))))

(declare-fun b!7156586 () Bool)

(assert (=> b!7156586 (= e!4299203 e!4299208)))

(declare-fun c!1333662 () Bool)

(assert (=> b!7156586 (= c!1333662 (is-Cons!69472 (exprs!7732 c!7723)))))

(declare-fun b!7156587 () Bool)

(assert (=> b!7156587 (= e!4299208 EmptyExpr!18280)))

(declare-fun b!7156588 () Bool)

(declare-fun isEmptyExpr!2072 (Regex!18280) Bool)

(assert (=> b!7156588 (= e!4299206 (isEmptyExpr!2072 lt!2569323))))

(declare-fun b!7156589 () Bool)

(assert (=> b!7156589 (= e!4299206 e!4299204)))

(declare-fun c!1333661 () Bool)

(declare-fun tail!14036 (List!69596) List!69596)

(assert (=> b!7156589 (= c!1333661 (isEmpty!40135 (tail!14036 (exprs!7732 c!7723))))))

(assert (= (and d!2229743 res!2918081) b!7156580))

(assert (= (and d!2229743 c!1333663) b!7156582))

(assert (= (and d!2229743 (not c!1333663)) b!7156586))

(assert (= (and b!7156586 c!1333662) b!7156581))

(assert (= (and b!7156586 (not c!1333662)) b!7156587))

(assert (= (and d!2229743 res!2918080) b!7156584))

(assert (= (and b!7156584 c!1333660) b!7156588))

(assert (= (and b!7156584 (not c!1333660)) b!7156589))

(assert (= (and b!7156589 c!1333661) b!7156583))

(assert (= (and b!7156589 (not c!1333661)) b!7156585))

(declare-fun m!7863166 () Bool)

(assert (=> b!7156583 m!7863166))

(declare-fun m!7863168 () Bool)

(assert (=> b!7156581 m!7863168))

(declare-fun m!7863170 () Bool)

(assert (=> b!7156588 m!7863170))

(declare-fun m!7863172 () Bool)

(assert (=> d!2229743 m!7863172))

(declare-fun m!7863174 () Bool)

(assert (=> d!2229743 m!7863174))

(declare-fun m!7863176 () Bool)

(assert (=> b!7156580 m!7863176))

(declare-fun m!7863178 () Bool)

(assert (=> b!7156584 m!7863178))

(declare-fun m!7863180 () Bool)

(assert (=> b!7156589 m!7863180))

(assert (=> b!7156589 m!7863180))

(declare-fun m!7863182 () Bool)

(assert (=> b!7156589 m!7863182))

(declare-fun m!7863184 () Bool)

(assert (=> b!7156585 m!7863184))

(assert (=> b!7156514 d!2229743))

(declare-fun bs!1889951 () Bool)

(declare-fun d!2229745 () Bool)

(assert (= bs!1889951 (and d!2229745 d!2229733)))

(declare-fun lambda!436467 () Int)

(assert (=> bs!1889951 (= lambda!436467 lambda!436460)))

(declare-fun bs!1889952 () Bool)

(assert (= bs!1889952 (and d!2229745 d!2229739)))

(assert (=> bs!1889952 (= lambda!436467 lambda!436463)))

(declare-fun bs!1889953 () Bool)

(assert (= bs!1889953 (and d!2229745 d!2229743)))

(assert (=> bs!1889953 (= lambda!436467 lambda!436466)))

(declare-fun lt!2569324 () List!69596)

(assert (=> d!2229745 (forall!17118 lt!2569324 lambda!436467)))

(declare-fun e!4299209 () List!69596)

(assert (=> d!2229745 (= lt!2569324 e!4299209)))

(declare-fun c!1333664 () Bool)

(assert (=> d!2229745 (= c!1333664 (is-Cons!69473 zl!300))))

(assert (=> d!2229745 (= (unfocusZipperList!2273 zl!300) lt!2569324)))

(declare-fun b!7156590 () Bool)

(assert (=> b!7156590 (= e!4299209 (Cons!69472 (generalisedConcat!2428 (exprs!7732 (h!75921 zl!300))) (unfocusZipperList!2273 (t!383614 zl!300))))))

(declare-fun b!7156591 () Bool)

(assert (=> b!7156591 (= e!4299209 Nil!69472)))

(assert (= (and d!2229745 c!1333664) b!7156590))

(assert (= (and d!2229745 (not c!1333664)) b!7156591))

(declare-fun m!7863186 () Bool)

(assert (=> d!2229745 m!7863186))

(declare-fun m!7863188 () Bool)

(assert (=> b!7156590 m!7863188))

(assert (=> b!7156590 m!7863118))

(assert (=> b!7156514 d!2229745))

(declare-fun d!2229747 () Bool)

(declare-fun lt!2569325 () Bool)

(assert (=> d!2229747 (= lt!2569325 (set.member lt!2569298 (content!14255 lt!2569299)))))

(declare-fun e!4299210 () Bool)

(assert (=> d!2229747 (= lt!2569325 e!4299210)))

(declare-fun res!2918083 () Bool)

(assert (=> d!2229747 (=> (not res!2918083) (not e!4299210))))

(assert (=> d!2229747 (= res!2918083 (is-Cons!69472 lt!2569299))))

(assert (=> d!2229747 (= (contains!20673 lt!2569299 lt!2569298) lt!2569325)))

(declare-fun b!7156592 () Bool)

(declare-fun e!4299211 () Bool)

(assert (=> b!7156592 (= e!4299210 e!4299211)))

(declare-fun res!2918082 () Bool)

(assert (=> b!7156592 (=> res!2918082 e!4299211)))

(assert (=> b!7156592 (= res!2918082 (= (h!75920 lt!2569299) lt!2569298))))

(declare-fun b!7156593 () Bool)

(assert (=> b!7156593 (= e!4299211 (contains!20673 (t!383613 lt!2569299) lt!2569298))))

(assert (= (and d!2229747 res!2918083) b!7156592))

(assert (= (and b!7156592 (not res!2918082)) b!7156593))

(declare-fun m!7863190 () Bool)

(assert (=> d!2229747 m!7863190))

(declare-fun m!7863192 () Bool)

(assert (=> d!2229747 m!7863192))

(declare-fun m!7863194 () Bool)

(assert (=> b!7156593 m!7863194))

(assert (=> b!7156514 d!2229747))

(declare-fun d!2229749 () Bool)

(assert (=> d!2229749 (contains!20673 (unfocusZipperList!2273 (t!383614 zl!300)) (generalisedConcat!2428 (exprs!7732 c!7723)))))

(declare-fun lt!2569328 () Unit!163303)

(declare-fun choose!55308 (List!69597 Context!14464) Unit!163303)

(assert (=> d!2229749 (= lt!2569328 (choose!55308 (t!383614 zl!300) c!7723))))

(assert (=> d!2229749 (contains!20672 (t!383614 zl!300) c!7723)))

(assert (=> d!2229749 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!31 (t!383614 zl!300) c!7723) lt!2569328)))

(declare-fun bs!1889954 () Bool)

(assert (= bs!1889954 d!2229749))

(assert (=> bs!1889954 m!7863118))

(assert (=> bs!1889954 m!7863110))

(declare-fun m!7863196 () Bool)

(assert (=> bs!1889954 m!7863196))

(assert (=> bs!1889954 m!7863118))

(declare-fun m!7863198 () Bool)

(assert (=> bs!1889954 m!7863198))

(assert (=> bs!1889954 m!7863122))

(assert (=> bs!1889954 m!7863110))

(assert (=> b!7156514 d!2229749))

(declare-fun d!2229751 () Bool)

(declare-fun lt!2569331 () Bool)

(declare-fun content!14256 (List!69597) (Set Context!14464))

(assert (=> d!2229751 (= lt!2569331 (set.member c!7723 (content!14256 (t!383614 zl!300))))))

(declare-fun e!4299216 () Bool)

(assert (=> d!2229751 (= lt!2569331 e!4299216)))

(declare-fun res!2918089 () Bool)

(assert (=> d!2229751 (=> (not res!2918089) (not e!4299216))))

(assert (=> d!2229751 (= res!2918089 (is-Cons!69473 (t!383614 zl!300)))))

(assert (=> d!2229751 (= (contains!20672 (t!383614 zl!300) c!7723) lt!2569331)))

(declare-fun b!7156598 () Bool)

(declare-fun e!4299217 () Bool)

(assert (=> b!7156598 (= e!4299216 e!4299217)))

(declare-fun res!2918088 () Bool)

(assert (=> b!7156598 (=> res!2918088 e!4299217)))

(assert (=> b!7156598 (= res!2918088 (= (h!75921 (t!383614 zl!300)) c!7723))))

(declare-fun b!7156599 () Bool)

(assert (=> b!7156599 (= e!4299217 (contains!20672 (t!383614 (t!383614 zl!300)) c!7723))))

(assert (= (and d!2229751 res!2918089) b!7156598))

(assert (= (and b!7156598 (not res!2918088)) b!7156599))

(declare-fun m!7863200 () Bool)

(assert (=> d!2229751 m!7863200))

(declare-fun m!7863202 () Bool)

(assert (=> d!2229751 m!7863202))

(declare-fun m!7863204 () Bool)

(assert (=> b!7156599 m!7863204))

(assert (=> b!7156515 d!2229751))

(declare-fun d!2229753 () Bool)

(declare-fun lt!2569332 () Bool)

(assert (=> d!2229753 (= lt!2569332 (set.member c!7723 (content!14256 zl!300)))))

(declare-fun e!4299218 () Bool)

(assert (=> d!2229753 (= lt!2569332 e!4299218)))

(declare-fun res!2918091 () Bool)

(assert (=> d!2229753 (=> (not res!2918091) (not e!4299218))))

(assert (=> d!2229753 (= res!2918091 (is-Cons!69473 zl!300))))

(assert (=> d!2229753 (= (contains!20672 zl!300 c!7723) lt!2569332)))

(declare-fun b!7156600 () Bool)

(declare-fun e!4299219 () Bool)

(assert (=> b!7156600 (= e!4299218 e!4299219)))

(declare-fun res!2918090 () Bool)

(assert (=> b!7156600 (=> res!2918090 e!4299219)))

(assert (=> b!7156600 (= res!2918090 (= (h!75921 zl!300) c!7723))))

(declare-fun b!7156601 () Bool)

(assert (=> b!7156601 (= e!4299219 (contains!20672 (t!383614 zl!300) c!7723))))

(assert (= (and d!2229753 res!2918091) b!7156600))

(assert (= (and b!7156600 (not res!2918090)) b!7156601))

(declare-fun m!7863206 () Bool)

(assert (=> d!2229753 m!7863206))

(declare-fun m!7863208 () Bool)

(assert (=> d!2229753 m!7863208))

(assert (=> b!7156601 m!7863122))

(assert (=> start!697580 d!2229753))

(declare-fun bs!1889955 () Bool)

(declare-fun d!2229755 () Bool)

(assert (= bs!1889955 (and d!2229755 d!2229733)))

(declare-fun lambda!436468 () Int)

(assert (=> bs!1889955 (= lambda!436468 lambda!436460)))

(declare-fun bs!1889956 () Bool)

(assert (= bs!1889956 (and d!2229755 d!2229739)))

(assert (=> bs!1889956 (= lambda!436468 lambda!436463)))

(declare-fun bs!1889957 () Bool)

(assert (= bs!1889957 (and d!2229755 d!2229743)))

(assert (=> bs!1889957 (= lambda!436468 lambda!436466)))

(declare-fun bs!1889958 () Bool)

(assert (= bs!1889958 (and d!2229755 d!2229745)))

(assert (=> bs!1889958 (= lambda!436468 lambda!436467)))

(assert (=> d!2229755 (= (inv!88723 c!7723) (forall!17118 (exprs!7732 c!7723) lambda!436468))))

(declare-fun bs!1889959 () Bool)

(assert (= bs!1889959 d!2229755))

(declare-fun m!7863210 () Bool)

(assert (=> bs!1889959 m!7863210))

(assert (=> start!697580 d!2229755))

(declare-fun b!7156606 () Bool)

(declare-fun e!4299222 () Bool)

(declare-fun tp!1979004 () Bool)

(declare-fun tp!1979005 () Bool)

(assert (=> b!7156606 (= e!4299222 (and tp!1979004 tp!1979005))))

(assert (=> b!7156518 (= tp!1978989 e!4299222)))

(assert (= (and b!7156518 (is-Cons!69472 (exprs!7732 c!7723))) b!7156606))

(declare-fun b!7156607 () Bool)

(declare-fun e!4299223 () Bool)

(declare-fun tp!1979006 () Bool)

(declare-fun tp!1979007 () Bool)

(assert (=> b!7156607 (= e!4299223 (and tp!1979006 tp!1979007))))

(assert (=> b!7156517 (= tp!1978988 e!4299223)))

(assert (= (and b!7156517 (is-Cons!69472 (exprs!7732 (h!75921 zl!300)))) b!7156607))

(declare-fun b!7156615 () Bool)

(declare-fun e!4299229 () Bool)

(declare-fun tp!1979012 () Bool)

(assert (=> b!7156615 (= e!4299229 tp!1979012)))

(declare-fun e!4299228 () Bool)

(declare-fun tp!1979013 () Bool)

(declare-fun b!7156614 () Bool)

(assert (=> b!7156614 (= e!4299228 (and (inv!88723 (h!75921 (t!383614 zl!300))) e!4299229 tp!1979013))))

(assert (=> b!7156519 (= tp!1978990 e!4299228)))

(assert (= b!7156614 b!7156615))

(assert (= (and b!7156519 (is-Cons!69473 (t!383614 zl!300))) b!7156614))

(declare-fun m!7863212 () Bool)

(assert (=> b!7156614 m!7863212))

(push 1)

(assert (not d!2229741))

(assert (not b!7156580))

(assert (not d!2229743))

(assert (not b!7156584))

(assert (not d!2229747))

(assert (not b!7156583))

(assert (not d!2229751))

(assert (not b!7156615))

(assert (not b!7156593))

(assert (not d!2229749))

(assert (not b!7156581))

(assert (not d!2229745))

(assert (not b!7156606))

(assert (not b!7156601))

(assert (not b!7156585))

(assert (not b!7156552))

(assert (not d!2229755))

(assert (not b!7156590))

(assert (not b!7156599))

(assert (not d!2229733))

(assert (not d!2229739))

(assert (not b!7156588))

(assert (not b!7156559))

(assert (not b!7156589))

(assert (not b!7156607))

(assert (not b!7156614))

(assert (not d!2229753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

