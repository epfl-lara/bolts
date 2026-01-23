; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697702 () Bool)

(assert start!697702)

(declare-fun b!7157236 () Bool)

(declare-fun res!2918316 () Bool)

(declare-fun e!4299680 () Bool)

(assert (=> b!7157236 (=> (not res!2918316) (not e!4299680))))

(declare-datatypes ((C!36854 0))(
  ( (C!36855 (val!28375 Int)) )
))
(declare-datatypes ((Regex!18290 0))(
  ( (ElementMatch!18290 (c!1333774 C!36854)) (Concat!27135 (regOne!37092 Regex!18290) (regTwo!37092 Regex!18290)) (EmptyExpr!18290) (Star!18290 (reg!18619 Regex!18290)) (EmptyLang!18290) (Union!18290 (regOne!37093 Regex!18290) (regTwo!37093 Regex!18290)) )
))
(declare-datatypes ((List!69616 0))(
  ( (Nil!69492) (Cons!69492 (h!75940 Regex!18290) (t!383633 List!69616)) )
))
(declare-datatypes ((Context!14484 0))(
  ( (Context!14485 (exprs!7742 List!69616)) )
))
(declare-datatypes ((List!69617 0))(
  ( (Nil!69493) (Cons!69493 (h!75941 Context!14484) (t!383634 List!69617)) )
))
(declare-fun zl!1504 () List!69617)

(declare-fun c!9606 () Context!14484)

(declare-fun contains!20690 (List!69617 Context!14484) Bool)

(assert (=> b!7157236 (= res!2918316 (contains!20690 (t!383634 zl!1504) c!9606))))

(declare-fun b!7157237 () Bool)

(declare-fun e!4299679 () Bool)

(declare-fun e!4299678 () Bool)

(declare-fun tp!1979218 () Bool)

(declare-fun inv!88748 (Context!14484) Bool)

(assert (=> b!7157237 (= e!4299679 (and (inv!88748 (h!75941 zl!1504)) e!4299678 tp!1979218))))

(declare-fun res!2918315 () Bool)

(assert (=> start!697702 (=> (not res!2918315) (not e!4299680))))

(assert (=> start!697702 (= res!2918315 (contains!20690 zl!1504 c!9606))))

(assert (=> start!697702 e!4299680))

(assert (=> start!697702 e!4299679))

(declare-fun e!4299677 () Bool)

(assert (=> start!697702 (and (inv!88748 c!9606) e!4299677)))

(declare-fun b!7157238 () Bool)

(declare-fun tp!1979220 () Bool)

(assert (=> b!7157238 (= e!4299678 tp!1979220)))

(declare-fun b!7157239 () Bool)

(declare-fun tp!1979219 () Bool)

(assert (=> b!7157239 (= e!4299677 tp!1979219)))

(declare-fun b!7157240 () Bool)

(declare-fun res!2918314 () Bool)

(assert (=> b!7157240 (=> (not res!2918314) (not e!4299680))))

(assert (=> b!7157240 (= res!2918314 (is-Cons!69493 zl!1504))))

(declare-fun b!7157241 () Bool)

(declare-fun lt!2569457 () Regex!18290)

(declare-fun contains!20691 (List!69616 Regex!18290) Bool)

(declare-fun unfocusZipperList!2283 (List!69617) List!69616)

(assert (=> b!7157241 (= e!4299680 (not (contains!20691 (unfocusZipperList!2283 zl!1504) lt!2569457)))))

(declare-fun lt!2569459 () List!69616)

(assert (=> b!7157241 (contains!20691 lt!2569459 lt!2569457)))

(declare-fun generalisedConcat!2437 (List!69616) Regex!18290)

(assert (=> b!7157241 (= lt!2569457 (generalisedConcat!2437 (exprs!7742 c!9606)))))

(assert (=> b!7157241 (= lt!2569459 (unfocusZipperList!2283 (t!383634 zl!1504)))))

(declare-datatypes ((Unit!163311 0))(
  ( (Unit!163312) )
))
(declare-fun lt!2569458 () Unit!163311)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!19 (List!69617 Context!14484) Unit!163311)

(assert (=> b!7157241 (= lt!2569458 (lemmaZipperContainsContextUnfocusListContainsConcat!19 (t!383634 zl!1504) c!9606))))

(assert (= (and start!697702 res!2918315) b!7157240))

(assert (= (and b!7157240 res!2918314) b!7157236))

(assert (= (and b!7157236 res!2918316) b!7157241))

(assert (= b!7157237 b!7157238))

(assert (= (and start!697702 (is-Cons!69493 zl!1504)) b!7157237))

(assert (= start!697702 b!7157239))

(declare-fun m!7863696 () Bool)

(assert (=> b!7157236 m!7863696))

(declare-fun m!7863698 () Bool)

(assert (=> b!7157237 m!7863698))

(declare-fun m!7863700 () Bool)

(assert (=> start!697702 m!7863700))

(declare-fun m!7863702 () Bool)

(assert (=> start!697702 m!7863702))

(declare-fun m!7863704 () Bool)

(assert (=> b!7157241 m!7863704))

(declare-fun m!7863706 () Bool)

(assert (=> b!7157241 m!7863706))

(declare-fun m!7863708 () Bool)

(assert (=> b!7157241 m!7863708))

(declare-fun m!7863710 () Bool)

(assert (=> b!7157241 m!7863710))

(declare-fun m!7863712 () Bool)

(assert (=> b!7157241 m!7863712))

(declare-fun m!7863714 () Bool)

(assert (=> b!7157241 m!7863714))

(assert (=> b!7157241 m!7863704))

(push 1)

(assert (not start!697702))

(assert (not b!7157241))

(assert (not b!7157236))

(assert (not b!7157239))

(assert (not b!7157238))

(assert (not b!7157237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229890 () Bool)

(declare-fun lt!2569471 () Bool)

(declare-fun content!14269 (List!69617) (Set Context!14484))

(assert (=> d!2229890 (= lt!2569471 (set.member c!9606 (content!14269 zl!1504)))))

(declare-fun e!4299698 () Bool)

(assert (=> d!2229890 (= lt!2569471 e!4299698)))

(declare-fun res!2918330 () Bool)

(assert (=> d!2229890 (=> (not res!2918330) (not e!4299698))))

(assert (=> d!2229890 (= res!2918330 (is-Cons!69493 zl!1504))))

(assert (=> d!2229890 (= (contains!20690 zl!1504 c!9606) lt!2569471)))

(declare-fun b!7157264 () Bool)

(declare-fun e!4299697 () Bool)

(assert (=> b!7157264 (= e!4299698 e!4299697)))

(declare-fun res!2918331 () Bool)

(assert (=> b!7157264 (=> res!2918331 e!4299697)))

(assert (=> b!7157264 (= res!2918331 (= (h!75941 zl!1504) c!9606))))

(declare-fun b!7157265 () Bool)

(assert (=> b!7157265 (= e!4299697 (contains!20690 (t!383634 zl!1504) c!9606))))

(assert (= (and d!2229890 res!2918330) b!7157264))

(assert (= (and b!7157264 (not res!2918331)) b!7157265))

(declare-fun m!7863736 () Bool)

(assert (=> d!2229890 m!7863736))

(declare-fun m!7863738 () Bool)

(assert (=> d!2229890 m!7863738))

(assert (=> b!7157265 m!7863696))

(assert (=> start!697702 d!2229890))

(declare-fun d!2229894 () Bool)

(declare-fun lambda!436563 () Int)

(declare-fun forall!17127 (List!69616 Int) Bool)

(assert (=> d!2229894 (= (inv!88748 c!9606) (forall!17127 (exprs!7742 c!9606) lambda!436563))))

(declare-fun bs!1890063 () Bool)

(assert (= bs!1890063 d!2229894))

(declare-fun m!7863746 () Bool)

(assert (=> bs!1890063 m!7863746))

(assert (=> start!697702 d!2229894))

(declare-fun bs!1890064 () Bool)

(declare-fun d!2229898 () Bool)

(assert (= bs!1890064 (and d!2229898 d!2229894)))

(declare-fun lambda!436564 () Int)

(assert (=> bs!1890064 (= lambda!436564 lambda!436563)))

(assert (=> d!2229898 (= (inv!88748 (h!75941 zl!1504)) (forall!17127 (exprs!7742 (h!75941 zl!1504)) lambda!436564))))

(declare-fun bs!1890065 () Bool)

(assert (= bs!1890065 d!2229898))

(declare-fun m!7863748 () Bool)

(assert (=> bs!1890065 m!7863748))

(assert (=> b!7157237 d!2229898))

(declare-fun d!2229900 () Bool)

(declare-fun lt!2569475 () Bool)

(assert (=> d!2229900 (= lt!2569475 (set.member c!9606 (content!14269 (t!383634 zl!1504))))))

(declare-fun e!4299706 () Bool)

(assert (=> d!2229900 (= lt!2569475 e!4299706)))

(declare-fun res!2918338 () Bool)

(assert (=> d!2229900 (=> (not res!2918338) (not e!4299706))))

(assert (=> d!2229900 (= res!2918338 (is-Cons!69493 (t!383634 zl!1504)))))

(assert (=> d!2229900 (= (contains!20690 (t!383634 zl!1504) c!9606) lt!2569475)))

(declare-fun b!7157272 () Bool)

(declare-fun e!4299705 () Bool)

(assert (=> b!7157272 (= e!4299706 e!4299705)))

(declare-fun res!2918339 () Bool)

(assert (=> b!7157272 (=> res!2918339 e!4299705)))

(assert (=> b!7157272 (= res!2918339 (= (h!75941 (t!383634 zl!1504)) c!9606))))

(declare-fun b!7157273 () Bool)

(assert (=> b!7157273 (= e!4299705 (contains!20690 (t!383634 (t!383634 zl!1504)) c!9606))))

(assert (= (and d!2229900 res!2918338) b!7157272))

(assert (= (and b!7157272 (not res!2918339)) b!7157273))

(declare-fun m!7863750 () Bool)

(assert (=> d!2229900 m!7863750))

(declare-fun m!7863752 () Bool)

(assert (=> d!2229900 m!7863752))

(declare-fun m!7863754 () Bool)

(assert (=> b!7157273 m!7863754))

(assert (=> b!7157236 d!2229900))

(declare-fun d!2229902 () Bool)

(declare-fun lt!2569478 () Bool)

(declare-fun content!14270 (List!69616) (Set Regex!18290))

(assert (=> d!2229902 (= lt!2569478 (set.member lt!2569457 (content!14270 (unfocusZipperList!2283 zl!1504))))))

(declare-fun e!4299712 () Bool)

(assert (=> d!2229902 (= lt!2569478 e!4299712)))

(declare-fun res!2918345 () Bool)

(assert (=> d!2229902 (=> (not res!2918345) (not e!4299712))))

(assert (=> d!2229902 (= res!2918345 (is-Cons!69492 (unfocusZipperList!2283 zl!1504)))))

(assert (=> d!2229902 (= (contains!20691 (unfocusZipperList!2283 zl!1504) lt!2569457) lt!2569478)))

(declare-fun b!7157278 () Bool)

(declare-fun e!4299711 () Bool)

(assert (=> b!7157278 (= e!4299712 e!4299711)))

(declare-fun res!2918344 () Bool)

(assert (=> b!7157278 (=> res!2918344 e!4299711)))

(assert (=> b!7157278 (= res!2918344 (= (h!75940 (unfocusZipperList!2283 zl!1504)) lt!2569457))))

(declare-fun b!7157279 () Bool)

(assert (=> b!7157279 (= e!4299711 (contains!20691 (t!383633 (unfocusZipperList!2283 zl!1504)) lt!2569457))))

(assert (= (and d!2229902 res!2918345) b!7157278))

(assert (= (and b!7157278 (not res!2918344)) b!7157279))

(assert (=> d!2229902 m!7863704))

(declare-fun m!7863756 () Bool)

(assert (=> d!2229902 m!7863756))

(declare-fun m!7863758 () Bool)

(assert (=> d!2229902 m!7863758))

(declare-fun m!7863760 () Bool)

(assert (=> b!7157279 m!7863760))

(assert (=> b!7157241 d!2229902))

(declare-fun bs!1890066 () Bool)

(declare-fun d!2229904 () Bool)

(assert (= bs!1890066 (and d!2229904 d!2229894)))

(declare-fun lambda!436567 () Int)

(assert (=> bs!1890066 (= lambda!436567 lambda!436563)))

(declare-fun bs!1890067 () Bool)

(assert (= bs!1890067 (and d!2229904 d!2229898)))

(assert (=> bs!1890067 (= lambda!436567 lambda!436564)))

(declare-fun b!7157300 () Bool)

(declare-fun e!4299729 () Regex!18290)

(assert (=> b!7157300 (= e!4299729 (Concat!27135 (h!75940 (exprs!7742 c!9606)) (generalisedConcat!2437 (t!383633 (exprs!7742 c!9606)))))))

(declare-fun b!7157301 () Bool)

(declare-fun e!4299725 () Bool)

(declare-fun lt!2569481 () Regex!18290)

(declare-fun isConcat!1601 (Regex!18290) Bool)

(assert (=> b!7157301 (= e!4299725 (isConcat!1601 lt!2569481))))

(declare-fun b!7157302 () Bool)

(declare-fun e!4299726 () Bool)

(assert (=> b!7157302 (= e!4299726 e!4299725)))

(declare-fun c!1333785 () Bool)

(declare-fun isEmpty!40142 (List!69616) Bool)

(declare-fun tail!14043 (List!69616) List!69616)

(assert (=> b!7157302 (= c!1333785 (isEmpty!40142 (tail!14043 (exprs!7742 c!9606))))))

(declare-fun e!4299728 () Bool)

(assert (=> d!2229904 e!4299728))

(declare-fun res!2918350 () Bool)

(assert (=> d!2229904 (=> (not res!2918350) (not e!4299728))))

(declare-fun validRegex!9424 (Regex!18290) Bool)

(assert (=> d!2229904 (= res!2918350 (validRegex!9424 lt!2569481))))

(declare-fun e!4299727 () Regex!18290)

(assert (=> d!2229904 (= lt!2569481 e!4299727)))

(declare-fun c!1333787 () Bool)

(declare-fun e!4299730 () Bool)

(assert (=> d!2229904 (= c!1333787 e!4299730)))

(declare-fun res!2918351 () Bool)

(assert (=> d!2229904 (=> (not res!2918351) (not e!4299730))))

(assert (=> d!2229904 (= res!2918351 (is-Cons!69492 (exprs!7742 c!9606)))))

(assert (=> d!2229904 (forall!17127 (exprs!7742 c!9606) lambda!436567)))

(assert (=> d!2229904 (= (generalisedConcat!2437 (exprs!7742 c!9606)) lt!2569481)))

(declare-fun b!7157303 () Bool)

(assert (=> b!7157303 (= e!4299727 (h!75940 (exprs!7742 c!9606)))))

(declare-fun b!7157304 () Bool)

(assert (=> b!7157304 (= e!4299728 e!4299726)))

(declare-fun c!1333784 () Bool)

(assert (=> b!7157304 (= c!1333784 (isEmpty!40142 (exprs!7742 c!9606)))))

(declare-fun b!7157305 () Bool)

(declare-fun isEmptyExpr!2079 (Regex!18290) Bool)

(assert (=> b!7157305 (= e!4299726 (isEmptyExpr!2079 lt!2569481))))

(declare-fun b!7157306 () Bool)

(assert (=> b!7157306 (= e!4299727 e!4299729)))

(declare-fun c!1333786 () Bool)

(assert (=> b!7157306 (= c!1333786 (is-Cons!69492 (exprs!7742 c!9606)))))

(declare-fun b!7157307 () Bool)

(declare-fun head!14574 (List!69616) Regex!18290)

(assert (=> b!7157307 (= e!4299725 (= lt!2569481 (head!14574 (exprs!7742 c!9606))))))

(declare-fun b!7157308 () Bool)

(assert (=> b!7157308 (= e!4299730 (isEmpty!40142 (t!383633 (exprs!7742 c!9606))))))

(declare-fun b!7157309 () Bool)

(assert (=> b!7157309 (= e!4299729 EmptyExpr!18290)))

(assert (= (and d!2229904 res!2918351) b!7157308))

(assert (= (and d!2229904 c!1333787) b!7157303))

(assert (= (and d!2229904 (not c!1333787)) b!7157306))

(assert (= (and b!7157306 c!1333786) b!7157300))

(assert (= (and b!7157306 (not c!1333786)) b!7157309))

(assert (= (and d!2229904 res!2918350) b!7157304))

(assert (= (and b!7157304 c!1333784) b!7157305))

(assert (= (and b!7157304 (not c!1333784)) b!7157302))

(assert (= (and b!7157302 c!1333785) b!7157307))

(assert (= (and b!7157302 (not c!1333785)) b!7157301))

(declare-fun m!7863762 () Bool)

(assert (=> b!7157302 m!7863762))

(assert (=> b!7157302 m!7863762))

(declare-fun m!7863764 () Bool)

(assert (=> b!7157302 m!7863764))

(declare-fun m!7863766 () Bool)

(assert (=> d!2229904 m!7863766))

(declare-fun m!7863768 () Bool)

(assert (=> d!2229904 m!7863768))

(declare-fun m!7863770 () Bool)

(assert (=> b!7157305 m!7863770))

(declare-fun m!7863772 () Bool)

(assert (=> b!7157307 m!7863772))

(declare-fun m!7863774 () Bool)

(assert (=> b!7157300 m!7863774))

(declare-fun m!7863776 () Bool)

(assert (=> b!7157308 m!7863776))

(declare-fun m!7863778 () Bool)

(assert (=> b!7157304 m!7863778))

(declare-fun m!7863780 () Bool)

(assert (=> b!7157301 m!7863780))

(assert (=> b!7157241 d!2229904))

(declare-fun d!2229906 () Bool)

(declare-fun lt!2569482 () Bool)

(assert (=> d!2229906 (= lt!2569482 (set.member lt!2569457 (content!14270 lt!2569459)))))

(declare-fun e!4299732 () Bool)

(assert (=> d!2229906 (= lt!2569482 e!4299732)))

(declare-fun res!2918353 () Bool)

(assert (=> d!2229906 (=> (not res!2918353) (not e!4299732))))

(assert (=> d!2229906 (= res!2918353 (is-Cons!69492 lt!2569459))))

(assert (=> d!2229906 (= (contains!20691 lt!2569459 lt!2569457) lt!2569482)))

(declare-fun b!7157310 () Bool)

(declare-fun e!4299731 () Bool)

(assert (=> b!7157310 (= e!4299732 e!4299731)))

(declare-fun res!2918352 () Bool)

(assert (=> b!7157310 (=> res!2918352 e!4299731)))

(assert (=> b!7157310 (= res!2918352 (= (h!75940 lt!2569459) lt!2569457))))

(declare-fun b!7157311 () Bool)

(assert (=> b!7157311 (= e!4299731 (contains!20691 (t!383633 lt!2569459) lt!2569457))))

(assert (= (and d!2229906 res!2918353) b!7157310))

(assert (= (and b!7157310 (not res!2918352)) b!7157311))

(declare-fun m!7863782 () Bool)

(assert (=> d!2229906 m!7863782))

(declare-fun m!7863784 () Bool)

(assert (=> d!2229906 m!7863784))

(declare-fun m!7863786 () Bool)

(assert (=> b!7157311 m!7863786))

(assert (=> b!7157241 d!2229906))

(declare-fun bs!1890068 () Bool)

(declare-fun d!2229908 () Bool)

(assert (= bs!1890068 (and d!2229908 d!2229894)))

(declare-fun lambda!436570 () Int)

(assert (=> bs!1890068 (= lambda!436570 lambda!436563)))

(declare-fun bs!1890069 () Bool)

(assert (= bs!1890069 (and d!2229908 d!2229898)))

(assert (=> bs!1890069 (= lambda!436570 lambda!436564)))

(declare-fun bs!1890070 () Bool)

(assert (= bs!1890070 (and d!2229908 d!2229904)))

(assert (=> bs!1890070 (= lambda!436570 lambda!436567)))

(declare-fun lt!2569485 () List!69616)

(assert (=> d!2229908 (forall!17127 lt!2569485 lambda!436570)))

(declare-fun e!4299735 () List!69616)

(assert (=> d!2229908 (= lt!2569485 e!4299735)))

(declare-fun c!1333790 () Bool)

(assert (=> d!2229908 (= c!1333790 (is-Cons!69493 (t!383634 zl!1504)))))

(assert (=> d!2229908 (= (unfocusZipperList!2283 (t!383634 zl!1504)) lt!2569485)))

(declare-fun b!7157316 () Bool)

(assert (=> b!7157316 (= e!4299735 (Cons!69492 (generalisedConcat!2437 (exprs!7742 (h!75941 (t!383634 zl!1504)))) (unfocusZipperList!2283 (t!383634 (t!383634 zl!1504)))))))

(declare-fun b!7157317 () Bool)

(assert (=> b!7157317 (= e!4299735 Nil!69492)))

(assert (= (and d!2229908 c!1333790) b!7157316))

(assert (= (and d!2229908 (not c!1333790)) b!7157317))

(declare-fun m!7863788 () Bool)

(assert (=> d!2229908 m!7863788))

(declare-fun m!7863790 () Bool)

(assert (=> b!7157316 m!7863790))

(declare-fun m!7863792 () Bool)

(assert (=> b!7157316 m!7863792))

(assert (=> b!7157241 d!2229908))

(declare-fun bs!1890071 () Bool)

(declare-fun d!2229910 () Bool)

(assert (= bs!1890071 (and d!2229910 d!2229894)))

(declare-fun lambda!436571 () Int)

(assert (=> bs!1890071 (= lambda!436571 lambda!436563)))

(declare-fun bs!1890072 () Bool)

(assert (= bs!1890072 (and d!2229910 d!2229898)))

(assert (=> bs!1890072 (= lambda!436571 lambda!436564)))

(declare-fun bs!1890073 () Bool)

(assert (= bs!1890073 (and d!2229910 d!2229904)))

(assert (=> bs!1890073 (= lambda!436571 lambda!436567)))

(declare-fun bs!1890074 () Bool)

(assert (= bs!1890074 (and d!2229910 d!2229908)))

(assert (=> bs!1890074 (= lambda!436571 lambda!436570)))

(declare-fun lt!2569486 () List!69616)

(assert (=> d!2229910 (forall!17127 lt!2569486 lambda!436571)))

(declare-fun e!4299736 () List!69616)

(assert (=> d!2229910 (= lt!2569486 e!4299736)))

(declare-fun c!1333791 () Bool)

(assert (=> d!2229910 (= c!1333791 (is-Cons!69493 zl!1504))))

(assert (=> d!2229910 (= (unfocusZipperList!2283 zl!1504) lt!2569486)))

(declare-fun b!7157318 () Bool)

(assert (=> b!7157318 (= e!4299736 (Cons!69492 (generalisedConcat!2437 (exprs!7742 (h!75941 zl!1504))) (unfocusZipperList!2283 (t!383634 zl!1504))))))

(declare-fun b!7157319 () Bool)

(assert (=> b!7157319 (= e!4299736 Nil!69492)))

(assert (= (and d!2229910 c!1333791) b!7157318))

(assert (= (and d!2229910 (not c!1333791)) b!7157319))

(declare-fun m!7863794 () Bool)

(assert (=> d!2229910 m!7863794))

(declare-fun m!7863796 () Bool)

(assert (=> b!7157318 m!7863796))

(assert (=> b!7157318 m!7863712))

(assert (=> b!7157241 d!2229910))

(declare-fun d!2229912 () Bool)

(assert (=> d!2229912 (contains!20691 (unfocusZipperList!2283 (t!383634 zl!1504)) (generalisedConcat!2437 (exprs!7742 c!9606)))))

(declare-fun lt!2569489 () Unit!163311)

(declare-fun choose!55310 (List!69617 Context!14484) Unit!163311)

(assert (=> d!2229912 (= lt!2569489 (choose!55310 (t!383634 zl!1504) c!9606))))

(assert (=> d!2229912 (contains!20690 (t!383634 zl!1504) c!9606)))

(assert (=> d!2229912 (= (lemmaZipperContainsContextUnfocusListContainsConcat!19 (t!383634 zl!1504) c!9606) lt!2569489)))

(declare-fun bs!1890075 () Bool)

(assert (= bs!1890075 d!2229912))

(declare-fun m!7863798 () Bool)

(assert (=> bs!1890075 m!7863798))

(assert (=> bs!1890075 m!7863708))

(assert (=> bs!1890075 m!7863712))

(assert (=> bs!1890075 m!7863712))

(assert (=> bs!1890075 m!7863708))

(declare-fun m!7863800 () Bool)

(assert (=> bs!1890075 m!7863800))

(assert (=> bs!1890075 m!7863696))

(assert (=> b!7157241 d!2229912))

(declare-fun b!7157324 () Bool)

(declare-fun e!4299739 () Bool)

(declare-fun tp!1979234 () Bool)

(declare-fun tp!1979235 () Bool)

(assert (=> b!7157324 (= e!4299739 (and tp!1979234 tp!1979235))))

(assert (=> b!7157239 (= tp!1979219 e!4299739)))

(assert (= (and b!7157239 (is-Cons!69492 (exprs!7742 c!9606))) b!7157324))

(declare-fun b!7157325 () Bool)

(declare-fun e!4299740 () Bool)

(declare-fun tp!1979236 () Bool)

(declare-fun tp!1979237 () Bool)

(assert (=> b!7157325 (= e!4299740 (and tp!1979236 tp!1979237))))

(assert (=> b!7157238 (= tp!1979220 e!4299740)))

(assert (= (and b!7157238 (is-Cons!69492 (exprs!7742 (h!75941 zl!1504)))) b!7157325))

(declare-fun b!7157333 () Bool)

(declare-fun e!4299746 () Bool)

(declare-fun tp!1979242 () Bool)

(assert (=> b!7157333 (= e!4299746 tp!1979242)))

(declare-fun tp!1979243 () Bool)

(declare-fun b!7157332 () Bool)

(declare-fun e!4299745 () Bool)

(assert (=> b!7157332 (= e!4299745 (and (inv!88748 (h!75941 (t!383634 zl!1504))) e!4299746 tp!1979243))))

(assert (=> b!7157237 (= tp!1979218 e!4299745)))

(assert (= b!7157332 b!7157333))

(assert (= (and b!7157237 (is-Cons!69493 (t!383634 zl!1504))) b!7157332))

(declare-fun m!7863802 () Bool)

(assert (=> b!7157332 m!7863802))

(push 1)

(assert (not b!7157300))

(assert (not d!2229894))

(assert (not d!2229912))

(assert (not d!2229890))

(assert (not b!7157279))

(assert (not b!7157273))

(assert (not d!2229908))

(assert (not b!7157324))

(assert (not b!7157332))

(assert (not b!7157304))

(assert (not d!2229910))

(assert (not d!2229906))

(assert (not d!2229902))

(assert (not d!2229904))

(assert (not b!7157325))

(assert (not b!7157265))

(assert (not b!7157305))

(assert (not b!7157333))

(assert (not b!7157316))

(assert (not b!7157318))

(assert (not b!7157307))

(assert (not b!7157302))

(assert (not b!7157308))

(assert (not b!7157301))

(assert (not b!7157311))

(assert (not d!2229900))

(assert (not d!2229898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

