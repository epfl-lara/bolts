; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697632 () Bool)

(assert start!697632)

(declare-fun res!2918161 () Bool)

(declare-fun e!4299388 () Bool)

(assert (=> start!697632 (=> (not res!2918161) (not e!4299388))))

(declare-datatypes ((C!36842 0))(
  ( (C!36843 (val!28369 Int)) )
))
(declare-datatypes ((Regex!18284 0))(
  ( (ElementMatch!18284 (c!1333713 C!36842)) (Concat!27129 (regOne!37080 Regex!18284) (regTwo!37080 Regex!18284)) (EmptyExpr!18284) (Star!18284 (reg!18613 Regex!18284)) (EmptyLang!18284) (Union!18284 (regOne!37081 Regex!18284) (regTwo!37081 Regex!18284)) )
))
(declare-datatypes ((List!69604 0))(
  ( (Nil!69480) (Cons!69480 (h!75928 Regex!18284) (t!383621 List!69604)) )
))
(declare-datatypes ((Context!14472 0))(
  ( (Context!14473 (exprs!7736 List!69604)) )
))
(declare-datatypes ((List!69605 0))(
  ( (Nil!69481) (Cons!69481 (h!75929 Context!14472) (t!383622 List!69605)) )
))
(declare-fun zl!300 () List!69605)

(declare-fun c!7723 () Context!14472)

(declare-fun contains!20680 (List!69605 Context!14472) Bool)

(assert (=> start!697632 (= res!2918161 (contains!20680 zl!300 c!7723))))

(assert (=> start!697632 e!4299388))

(declare-fun e!4299389 () Bool)

(assert (=> start!697632 e!4299389))

(declare-fun e!4299391 () Bool)

(declare-fun inv!88733 (Context!14472) Bool)

(assert (=> start!697632 (and (inv!88733 c!7723) e!4299391)))

(declare-fun b!7156838 () Bool)

(declare-fun tp!1979081 () Bool)

(assert (=> b!7156838 (= e!4299391 tp!1979081)))

(declare-fun b!7156839 () Bool)

(declare-fun e!4299390 () Bool)

(declare-fun tp!1979082 () Bool)

(assert (=> b!7156839 (= e!4299390 tp!1979082)))

(declare-fun b!7156840 () Bool)

(declare-fun tp!1979080 () Bool)

(assert (=> b!7156840 (= e!4299389 (and (inv!88733 (h!75929 zl!300)) e!4299390 tp!1979080))))

(declare-fun b!7156841 () Bool)

(declare-fun res!2918160 () Bool)

(assert (=> b!7156841 (=> (not res!2918160) (not e!4299388))))

(assert (=> b!7156841 (= res!2918160 (not (is-Cons!69481 zl!300)))))

(declare-fun b!7156842 () Bool)

(declare-fun contains!20681 (List!69604 Regex!18284) Bool)

(declare-fun unfocusZipperList!2277 (List!69605) List!69604)

(declare-fun generalisedConcat!2432 (List!69604) Regex!18284)

(assert (=> b!7156842 (= e!4299388 (not (contains!20681 (unfocusZipperList!2277 zl!300) (generalisedConcat!2432 (exprs!7736 c!7723)))))))

(assert (= (and start!697632 res!2918161) b!7156841))

(assert (= (and b!7156841 res!2918160) b!7156842))

(assert (= b!7156840 b!7156839))

(assert (= (and start!697632 (is-Cons!69481 zl!300)) b!7156840))

(assert (= start!697632 b!7156838))

(declare-fun m!7863382 () Bool)

(assert (=> start!697632 m!7863382))

(declare-fun m!7863384 () Bool)

(assert (=> start!697632 m!7863384))

(declare-fun m!7863386 () Bool)

(assert (=> b!7156840 m!7863386))

(declare-fun m!7863388 () Bool)

(assert (=> b!7156842 m!7863388))

(declare-fun m!7863390 () Bool)

(assert (=> b!7156842 m!7863390))

(assert (=> b!7156842 m!7863388))

(assert (=> b!7156842 m!7863390))

(declare-fun m!7863392 () Bool)

(assert (=> b!7156842 m!7863392))

(push 1)

(assert (not start!697632))

(assert (not b!7156840))

(assert (not b!7156838))

(assert (not b!7156839))

(assert (not b!7156842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229799 () Bool)

(declare-fun lt!2569373 () Bool)

(declare-fun content!14262 (List!69604) (Set Regex!18284))

(assert (=> d!2229799 (= lt!2569373 (set.member (generalisedConcat!2432 (exprs!7736 c!7723)) (content!14262 (unfocusZipperList!2277 zl!300))))))

(declare-fun e!4299409 () Bool)

(assert (=> d!2229799 (= lt!2569373 e!4299409)))

(declare-fun res!2918172 () Bool)

(assert (=> d!2229799 (=> (not res!2918172) (not e!4299409))))

(assert (=> d!2229799 (= res!2918172 (is-Cons!69480 (unfocusZipperList!2277 zl!300)))))

(assert (=> d!2229799 (= (contains!20681 (unfocusZipperList!2277 zl!300) (generalisedConcat!2432 (exprs!7736 c!7723))) lt!2569373)))

(declare-fun b!7156862 () Bool)

(declare-fun e!4299408 () Bool)

(assert (=> b!7156862 (= e!4299409 e!4299408)))

(declare-fun res!2918173 () Bool)

(assert (=> b!7156862 (=> res!2918173 e!4299408)))

(assert (=> b!7156862 (= res!2918173 (= (h!75928 (unfocusZipperList!2277 zl!300)) (generalisedConcat!2432 (exprs!7736 c!7723))))))

(declare-fun b!7156863 () Bool)

(assert (=> b!7156863 (= e!4299408 (contains!20681 (t!383621 (unfocusZipperList!2277 zl!300)) (generalisedConcat!2432 (exprs!7736 c!7723))))))

(assert (= (and d!2229799 res!2918172) b!7156862))

(assert (= (and b!7156862 (not res!2918173)) b!7156863))

(assert (=> d!2229799 m!7863388))

(declare-fun m!7863406 () Bool)

(assert (=> d!2229799 m!7863406))

(assert (=> d!2229799 m!7863390))

(declare-fun m!7863408 () Bool)

(assert (=> d!2229799 m!7863408))

(assert (=> b!7156863 m!7863390))

(declare-fun m!7863410 () Bool)

(assert (=> b!7156863 m!7863410))

(assert (=> b!7156842 d!2229799))

(declare-fun d!2229803 () Bool)

(declare-fun lt!2569378 () List!69604)

(declare-fun lambda!436502 () Int)

(declare-fun forall!17122 (List!69604 Int) Bool)

(assert (=> d!2229803 (forall!17122 lt!2569378 lambda!436502)))

(declare-fun e!4299418 () List!69604)

(assert (=> d!2229803 (= lt!2569378 e!4299418)))

(declare-fun c!1333717 () Bool)

(assert (=> d!2229803 (= c!1333717 (is-Cons!69481 zl!300))))

(assert (=> d!2229803 (= (unfocusZipperList!2277 zl!300) lt!2569378)))

(declare-fun b!7156874 () Bool)

(assert (=> b!7156874 (= e!4299418 (Cons!69480 (generalisedConcat!2432 (exprs!7736 (h!75929 zl!300))) (unfocusZipperList!2277 (t!383622 zl!300))))))

(declare-fun b!7156875 () Bool)

(assert (=> b!7156875 (= e!4299418 Nil!69480)))

(assert (= (and d!2229803 c!1333717) b!7156874))

(assert (= (and d!2229803 (not c!1333717)) b!7156875))

(declare-fun m!7863418 () Bool)

(assert (=> d!2229803 m!7863418))

(declare-fun m!7863420 () Bool)

(assert (=> b!7156874 m!7863420))

(declare-fun m!7863422 () Bool)

(assert (=> b!7156874 m!7863422))

(assert (=> b!7156842 d!2229803))

(declare-fun bs!1889993 () Bool)

(declare-fun d!2229807 () Bool)

(assert (= bs!1889993 (and d!2229807 d!2229803)))

(declare-fun lambda!436505 () Int)

(assert (=> bs!1889993 (= lambda!436505 lambda!436502)))

(declare-fun b!7156896 () Bool)

(declare-fun e!4299434 () Bool)

(declare-fun e!4299435 () Bool)

(assert (=> b!7156896 (= e!4299434 e!4299435)))

(declare-fun c!1333727 () Bool)

(declare-fun isEmpty!40139 (List!69604) Bool)

(assert (=> b!7156896 (= c!1333727 (isEmpty!40139 (exprs!7736 c!7723)))))

(declare-fun b!7156897 () Bool)

(declare-fun e!4299433 () Regex!18284)

(assert (=> b!7156897 (= e!4299433 (h!75928 (exprs!7736 c!7723)))))

(declare-fun b!7156898 () Bool)

(declare-fun e!4299436 () Regex!18284)

(assert (=> b!7156898 (= e!4299436 EmptyExpr!18284)))

(declare-fun b!7156899 () Bool)

(assert (=> b!7156899 (= e!4299433 e!4299436)))

(declare-fun c!1333729 () Bool)

(assert (=> b!7156899 (= c!1333729 (is-Cons!69480 (exprs!7736 c!7723)))))

(declare-fun b!7156900 () Bool)

(declare-fun e!4299432 () Bool)

(assert (=> b!7156900 (= e!4299435 e!4299432)))

(declare-fun c!1333728 () Bool)

(declare-fun tail!14040 (List!69604) List!69604)

(assert (=> b!7156900 (= c!1333728 (isEmpty!40139 (tail!14040 (exprs!7736 c!7723))))))

(declare-fun b!7156901 () Bool)

(assert (=> b!7156901 (= e!4299436 (Concat!27129 (h!75928 (exprs!7736 c!7723)) (generalisedConcat!2432 (t!383621 (exprs!7736 c!7723)))))))

(declare-fun b!7156902 () Bool)

(declare-fun lt!2569381 () Regex!18284)

(declare-fun head!14571 (List!69604) Regex!18284)

(assert (=> b!7156902 (= e!4299432 (= lt!2569381 (head!14571 (exprs!7736 c!7723))))))

(declare-fun b!7156903 () Bool)

(declare-fun isEmptyExpr!2076 (Regex!18284) Bool)

(assert (=> b!7156903 (= e!4299435 (isEmptyExpr!2076 lt!2569381))))

(declare-fun b!7156904 () Bool)

(declare-fun e!4299431 () Bool)

(assert (=> b!7156904 (= e!4299431 (isEmpty!40139 (t!383621 (exprs!7736 c!7723))))))

(declare-fun b!7156905 () Bool)

(declare-fun isConcat!1598 (Regex!18284) Bool)

(assert (=> b!7156905 (= e!4299432 (isConcat!1598 lt!2569381))))

(assert (=> d!2229807 e!4299434))

(declare-fun res!2918184 () Bool)

(assert (=> d!2229807 (=> (not res!2918184) (not e!4299434))))

(declare-fun validRegex!9421 (Regex!18284) Bool)

(assert (=> d!2229807 (= res!2918184 (validRegex!9421 lt!2569381))))

(assert (=> d!2229807 (= lt!2569381 e!4299433)))

(declare-fun c!1333726 () Bool)

(assert (=> d!2229807 (= c!1333726 e!4299431)))

(declare-fun res!2918185 () Bool)

(assert (=> d!2229807 (=> (not res!2918185) (not e!4299431))))

(assert (=> d!2229807 (= res!2918185 (is-Cons!69480 (exprs!7736 c!7723)))))

(assert (=> d!2229807 (forall!17122 (exprs!7736 c!7723) lambda!436505)))

(assert (=> d!2229807 (= (generalisedConcat!2432 (exprs!7736 c!7723)) lt!2569381)))

(assert (= (and d!2229807 res!2918185) b!7156904))

(assert (= (and d!2229807 c!1333726) b!7156897))

(assert (= (and d!2229807 (not c!1333726)) b!7156899))

(assert (= (and b!7156899 c!1333729) b!7156901))

(assert (= (and b!7156899 (not c!1333729)) b!7156898))

(assert (= (and d!2229807 res!2918184) b!7156896))

(assert (= (and b!7156896 c!1333727) b!7156903))

(assert (= (and b!7156896 (not c!1333727)) b!7156900))

(assert (= (and b!7156900 c!1333728) b!7156902))

(assert (= (and b!7156900 (not c!1333728)) b!7156905))

(declare-fun m!7863424 () Bool)

(assert (=> b!7156904 m!7863424))

(declare-fun m!7863426 () Bool)

(assert (=> b!7156903 m!7863426))

(declare-fun m!7863428 () Bool)

(assert (=> b!7156905 m!7863428))

(declare-fun m!7863430 () Bool)

(assert (=> b!7156896 m!7863430))

(declare-fun m!7863432 () Bool)

(assert (=> d!2229807 m!7863432))

(declare-fun m!7863434 () Bool)

(assert (=> d!2229807 m!7863434))

(declare-fun m!7863436 () Bool)

(assert (=> b!7156901 m!7863436))

(declare-fun m!7863438 () Bool)

(assert (=> b!7156900 m!7863438))

(assert (=> b!7156900 m!7863438))

(declare-fun m!7863440 () Bool)

(assert (=> b!7156900 m!7863440))

(declare-fun m!7863442 () Bool)

(assert (=> b!7156902 m!7863442))

(assert (=> b!7156842 d!2229807))

(declare-fun d!2229809 () Bool)

(declare-fun lt!2569384 () Bool)

(declare-fun content!14263 (List!69605) (Set Context!14472))

(assert (=> d!2229809 (= lt!2569384 (set.member c!7723 (content!14263 zl!300)))))

(declare-fun e!4299442 () Bool)

(assert (=> d!2229809 (= lt!2569384 e!4299442)))

(declare-fun res!2918190 () Bool)

(assert (=> d!2229809 (=> (not res!2918190) (not e!4299442))))

(assert (=> d!2229809 (= res!2918190 (is-Cons!69481 zl!300))))

(assert (=> d!2229809 (= (contains!20680 zl!300 c!7723) lt!2569384)))

(declare-fun b!7156910 () Bool)

(declare-fun e!4299441 () Bool)

(assert (=> b!7156910 (= e!4299442 e!4299441)))

(declare-fun res!2918191 () Bool)

(assert (=> b!7156910 (=> res!2918191 e!4299441)))

(assert (=> b!7156910 (= res!2918191 (= (h!75929 zl!300) c!7723))))

(declare-fun b!7156911 () Bool)

(assert (=> b!7156911 (= e!4299441 (contains!20680 (t!383622 zl!300) c!7723))))

(assert (= (and d!2229809 res!2918190) b!7156910))

(assert (= (and b!7156910 (not res!2918191)) b!7156911))

(declare-fun m!7863444 () Bool)

(assert (=> d!2229809 m!7863444))

(declare-fun m!7863446 () Bool)

(assert (=> d!2229809 m!7863446))

(declare-fun m!7863448 () Bool)

(assert (=> b!7156911 m!7863448))

(assert (=> start!697632 d!2229809))

(declare-fun bs!1889994 () Bool)

(declare-fun d!2229811 () Bool)

(assert (= bs!1889994 (and d!2229811 d!2229803)))

(declare-fun lambda!436508 () Int)

(assert (=> bs!1889994 (= lambda!436508 lambda!436502)))

(declare-fun bs!1889995 () Bool)

(assert (= bs!1889995 (and d!2229811 d!2229807)))

(assert (=> bs!1889995 (= lambda!436508 lambda!436505)))

(assert (=> d!2229811 (= (inv!88733 c!7723) (forall!17122 (exprs!7736 c!7723) lambda!436508))))

(declare-fun bs!1889996 () Bool)

(assert (= bs!1889996 d!2229811))

(declare-fun m!7863450 () Bool)

(assert (=> bs!1889996 m!7863450))

(assert (=> start!697632 d!2229811))

(declare-fun bs!1889997 () Bool)

(declare-fun d!2229813 () Bool)

(assert (= bs!1889997 (and d!2229813 d!2229803)))

(declare-fun lambda!436509 () Int)

(assert (=> bs!1889997 (= lambda!436509 lambda!436502)))

(declare-fun bs!1889998 () Bool)

(assert (= bs!1889998 (and d!2229813 d!2229807)))

(assert (=> bs!1889998 (= lambda!436509 lambda!436505)))

(declare-fun bs!1889999 () Bool)

(assert (= bs!1889999 (and d!2229813 d!2229811)))

(assert (=> bs!1889999 (= lambda!436509 lambda!436508)))

(assert (=> d!2229813 (= (inv!88733 (h!75929 zl!300)) (forall!17122 (exprs!7736 (h!75929 zl!300)) lambda!436509))))

(declare-fun bs!1890000 () Bool)

(assert (= bs!1890000 d!2229813))

(declare-fun m!7863452 () Bool)

(assert (=> bs!1890000 m!7863452))

(assert (=> b!7156840 d!2229813))

(declare-fun b!7156916 () Bool)

(declare-fun e!4299445 () Bool)

(declare-fun tp!1979096 () Bool)

(declare-fun tp!1979097 () Bool)

(assert (=> b!7156916 (= e!4299445 (and tp!1979096 tp!1979097))))

(assert (=> b!7156838 (= tp!1979081 e!4299445)))

(assert (= (and b!7156838 (is-Cons!69480 (exprs!7736 c!7723))) b!7156916))

(declare-fun b!7156917 () Bool)

(declare-fun e!4299446 () Bool)

(declare-fun tp!1979098 () Bool)

(declare-fun tp!1979099 () Bool)

(assert (=> b!7156917 (= e!4299446 (and tp!1979098 tp!1979099))))

(assert (=> b!7156839 (= tp!1979082 e!4299446)))

(assert (= (and b!7156839 (is-Cons!69480 (exprs!7736 (h!75929 zl!300)))) b!7156917))

(declare-fun b!7156925 () Bool)

(declare-fun e!4299452 () Bool)

(declare-fun tp!1979104 () Bool)

(assert (=> b!7156925 (= e!4299452 tp!1979104)))

(declare-fun tp!1979105 () Bool)

(declare-fun e!4299451 () Bool)

(declare-fun b!7156924 () Bool)

(assert (=> b!7156924 (= e!4299451 (and (inv!88733 (h!75929 (t!383622 zl!300))) e!4299452 tp!1979105))))

(assert (=> b!7156840 (= tp!1979080 e!4299451)))

(assert (= b!7156924 b!7156925))

(assert (= (and b!7156840 (is-Cons!69481 (t!383622 zl!300))) b!7156924))

(declare-fun m!7863454 () Bool)

(assert (=> b!7156924 m!7863454))

(push 1)

(assert (not b!7156903))

(assert (not d!2229809))

(assert (not b!7156917))

(assert (not b!7156896))

(assert (not b!7156924))

(assert (not b!7156925))

(assert (not b!7156874))

(assert (not d!2229811))

(assert (not b!7156905))

(assert (not d!2229813))

(assert (not b!7156901))

(assert (not d!2229807))

(assert (not b!7156900))

(assert (not d!2229799))

(assert (not b!7156863))

(assert (not d!2229803))

(assert (not b!7156911))

(assert (not b!7156902))

(assert (not b!7156916))

(assert (not b!7156904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

