; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697730 () Bool)

(assert start!697730)

(declare-fun b!7157408 () Bool)

(declare-fun res!2918378 () Bool)

(declare-fun e!4299800 () Bool)

(assert (=> b!7157408 (=> (not res!2918378) (not e!4299800))))

(declare-datatypes ((C!36858 0))(
  ( (C!36859 (val!28377 Int)) )
))
(declare-datatypes ((Regex!18292 0))(
  ( (ElementMatch!18292 (c!1333810 C!36858)) (Concat!27137 (regOne!37096 Regex!18292) (regTwo!37096 Regex!18292)) (EmptyExpr!18292) (Star!18292 (reg!18621 Regex!18292)) (EmptyLang!18292) (Union!18292 (regOne!37097 Regex!18292) (regTwo!37097 Regex!18292)) )
))
(declare-datatypes ((List!69620 0))(
  ( (Nil!69496) (Cons!69496 (h!75944 Regex!18292) (t!383637 List!69620)) )
))
(declare-datatypes ((Context!14488 0))(
  ( (Context!14489 (exprs!7744 List!69620)) )
))
(declare-datatypes ((List!69621 0))(
  ( (Nil!69497) (Cons!69497 (h!75945 Context!14488) (t!383638 List!69621)) )
))
(declare-fun zl!1504 () List!69621)

(declare-fun c!9606 () Context!14488)

(declare-fun contains!20694 (List!69621 Context!14488) Bool)

(assert (=> b!7157408 (= res!2918378 (not (contains!20694 (t!383638 zl!1504) c!9606)))))

(declare-fun b!7157409 () Bool)

(declare-fun contains!20695 (List!69620 Regex!18292) Bool)

(declare-fun unfocusZipperList!2285 (List!69621) List!69620)

(declare-fun generalisedConcat!2439 (List!69620) Regex!18292)

(assert (=> b!7157409 (= e!4299800 (not (contains!20695 (unfocusZipperList!2285 zl!1504) (generalisedConcat!2439 (exprs!7744 c!9606)))))))

(declare-fun b!7157410 () Bool)

(declare-fun e!4299797 () Bool)

(declare-fun tp!1979265 () Bool)

(assert (=> b!7157410 (= e!4299797 tp!1979265)))

(declare-fun tp!1979266 () Bool)

(declare-fun b!7157411 () Bool)

(declare-fun e!4299798 () Bool)

(declare-fun inv!88753 (Context!14488) Bool)

(assert (=> b!7157411 (= e!4299798 (and (inv!88753 (h!75945 zl!1504)) e!4299797 tp!1979266))))

(declare-fun b!7157412 () Bool)

(declare-fun e!4299799 () Bool)

(declare-fun tp!1979264 () Bool)

(assert (=> b!7157412 (= e!4299799 tp!1979264)))

(declare-fun b!7157413 () Bool)

(declare-fun res!2918376 () Bool)

(assert (=> b!7157413 (=> (not res!2918376) (not e!4299800))))

(assert (=> b!7157413 (= res!2918376 (is-Cons!69497 zl!1504))))

(declare-fun res!2918377 () Bool)

(assert (=> start!697730 (=> (not res!2918377) (not e!4299800))))

(assert (=> start!697730 (= res!2918377 (contains!20694 zl!1504 c!9606))))

(assert (=> start!697730 e!4299800))

(assert (=> start!697730 e!4299798))

(assert (=> start!697730 (and (inv!88753 c!9606) e!4299799)))

(assert (= (and start!697730 res!2918377) b!7157413))

(assert (= (and b!7157413 res!2918376) b!7157408))

(assert (= (and b!7157408 res!2918378) b!7157409))

(assert (= b!7157411 b!7157410))

(assert (= (and start!697730 (is-Cons!69497 zl!1504)) b!7157411))

(assert (= start!697730 b!7157412))

(declare-fun m!7863860 () Bool)

(assert (=> b!7157408 m!7863860))

(declare-fun m!7863862 () Bool)

(assert (=> b!7157409 m!7863862))

(declare-fun m!7863864 () Bool)

(assert (=> b!7157409 m!7863864))

(assert (=> b!7157409 m!7863862))

(assert (=> b!7157409 m!7863864))

(declare-fun m!7863866 () Bool)

(assert (=> b!7157409 m!7863866))

(declare-fun m!7863868 () Bool)

(assert (=> b!7157411 m!7863868))

(declare-fun m!7863870 () Bool)

(assert (=> start!697730 m!7863870))

(declare-fun m!7863872 () Bool)

(assert (=> start!697730 m!7863872))

(push 1)

(assert (not b!7157409))

(assert (not start!697730))

(assert (not b!7157410))

(assert (not b!7157411))

(assert (not b!7157412))

(assert (not b!7157408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229931 () Bool)

(declare-fun lambda!436585 () Int)

(declare-fun forall!17129 (List!69620 Int) Bool)

(assert (=> d!2229931 (= (inv!88753 (h!75945 zl!1504)) (forall!17129 (exprs!7744 (h!75945 zl!1504)) lambda!436585))))

(declare-fun bs!1890091 () Bool)

(assert (= bs!1890091 d!2229931))

(declare-fun m!7863898 () Bool)

(assert (=> bs!1890091 m!7863898))

(assert (=> b!7157411 d!2229931))

(declare-fun d!2229939 () Bool)

(declare-fun lt!2569511 () Bool)

(declare-fun content!14273 (List!69620) (Set Regex!18292))

(assert (=> d!2229939 (= lt!2569511 (set.member (generalisedConcat!2439 (exprs!7744 c!9606)) (content!14273 (unfocusZipperList!2285 zl!1504))))))

(declare-fun e!4299825 () Bool)

(assert (=> d!2229939 (= lt!2569511 e!4299825)))

(declare-fun res!2918400 () Bool)

(assert (=> d!2229939 (=> (not res!2918400) (not e!4299825))))

(assert (=> d!2229939 (= res!2918400 (is-Cons!69496 (unfocusZipperList!2285 zl!1504)))))

(assert (=> d!2229939 (= (contains!20695 (unfocusZipperList!2285 zl!1504) (generalisedConcat!2439 (exprs!7744 c!9606))) lt!2569511)))

(declare-fun b!7157444 () Bool)

(declare-fun e!4299826 () Bool)

(assert (=> b!7157444 (= e!4299825 e!4299826)))

(declare-fun res!2918401 () Bool)

(assert (=> b!7157444 (=> res!2918401 e!4299826)))

(assert (=> b!7157444 (= res!2918401 (= (h!75944 (unfocusZipperList!2285 zl!1504)) (generalisedConcat!2439 (exprs!7744 c!9606))))))

(declare-fun b!7157445 () Bool)

(assert (=> b!7157445 (= e!4299826 (contains!20695 (t!383637 (unfocusZipperList!2285 zl!1504)) (generalisedConcat!2439 (exprs!7744 c!9606))))))

(assert (= (and d!2229939 res!2918400) b!7157444))

(assert (= (and b!7157444 (not res!2918401)) b!7157445))

(assert (=> d!2229939 m!7863862))

(declare-fun m!7863900 () Bool)

(assert (=> d!2229939 m!7863900))

(assert (=> d!2229939 m!7863864))

(declare-fun m!7863902 () Bool)

(assert (=> d!2229939 m!7863902))

(assert (=> b!7157445 m!7863864))

(declare-fun m!7863904 () Bool)

(assert (=> b!7157445 m!7863904))

(assert (=> b!7157409 d!2229939))

(declare-fun bs!1890092 () Bool)

(declare-fun d!2229941 () Bool)

(assert (= bs!1890092 (and d!2229941 d!2229931)))

(declare-fun lambda!436588 () Int)

(assert (=> bs!1890092 (= lambda!436588 lambda!436585)))

(declare-fun lt!2569514 () List!69620)

(assert (=> d!2229941 (forall!17129 lt!2569514 lambda!436588)))

(declare-fun e!4299829 () List!69620)

(assert (=> d!2229941 (= lt!2569514 e!4299829)))

(declare-fun c!1333814 () Bool)

(assert (=> d!2229941 (= c!1333814 (is-Cons!69497 zl!1504))))

(assert (=> d!2229941 (= (unfocusZipperList!2285 zl!1504) lt!2569514)))

(declare-fun b!7157450 () Bool)

(assert (=> b!7157450 (= e!4299829 (Cons!69496 (generalisedConcat!2439 (exprs!7744 (h!75945 zl!1504))) (unfocusZipperList!2285 (t!383638 zl!1504))))))

(declare-fun b!7157451 () Bool)

(assert (=> b!7157451 (= e!4299829 Nil!69496)))

(assert (= (and d!2229941 c!1333814) b!7157450))

(assert (= (and d!2229941 (not c!1333814)) b!7157451))

(declare-fun m!7863906 () Bool)

(assert (=> d!2229941 m!7863906))

(declare-fun m!7863908 () Bool)

(assert (=> b!7157450 m!7863908))

(declare-fun m!7863910 () Bool)

(assert (=> b!7157450 m!7863910))

(assert (=> b!7157409 d!2229941))

(declare-fun bs!1890093 () Bool)

(declare-fun d!2229943 () Bool)

(assert (= bs!1890093 (and d!2229943 d!2229931)))

(declare-fun lambda!436591 () Int)

(assert (=> bs!1890093 (= lambda!436591 lambda!436585)))

(declare-fun bs!1890094 () Bool)

(assert (= bs!1890094 (and d!2229943 d!2229941)))

(assert (=> bs!1890094 (= lambda!436591 lambda!436588)))

(declare-fun b!7157472 () Bool)

(declare-fun e!4299844 () Regex!18292)

(assert (=> b!7157472 (= e!4299844 (Concat!27137 (h!75944 (exprs!7744 c!9606)) (generalisedConcat!2439 (t!383637 (exprs!7744 c!9606)))))))

(declare-fun b!7157473 () Bool)

(declare-fun e!4299845 () Bool)

(declare-fun lt!2569517 () Regex!18292)

(declare-fun isConcat!1603 (Regex!18292) Bool)

(assert (=> b!7157473 (= e!4299845 (isConcat!1603 lt!2569517))))

(declare-fun b!7157474 () Bool)

(assert (=> b!7157474 (= e!4299844 EmptyExpr!18292)))

(declare-fun b!7157476 () Bool)

(declare-fun e!4299847 () Regex!18292)

(assert (=> b!7157476 (= e!4299847 (h!75944 (exprs!7744 c!9606)))))

(declare-fun b!7157477 () Bool)

(declare-fun e!4299846 () Bool)

(declare-fun isEmptyExpr!2081 (Regex!18292) Bool)

(assert (=> b!7157477 (= e!4299846 (isEmptyExpr!2081 lt!2569517))))

(declare-fun b!7157478 () Bool)

(assert (=> b!7157478 (= e!4299846 e!4299845)))

(declare-fun c!1333825 () Bool)

(declare-fun isEmpty!40144 (List!69620) Bool)

(declare-fun tail!14045 (List!69620) List!69620)

(assert (=> b!7157478 (= c!1333825 (isEmpty!40144 (tail!14045 (exprs!7744 c!9606))))))

(declare-fun b!7157479 () Bool)

(declare-fun head!14576 (List!69620) Regex!18292)

(assert (=> b!7157479 (= e!4299845 (= lt!2569517 (head!14576 (exprs!7744 c!9606))))))

(declare-fun e!4299843 () Bool)

(assert (=> d!2229943 e!4299843))

(declare-fun res!2918407 () Bool)

(assert (=> d!2229943 (=> (not res!2918407) (not e!4299843))))

(declare-fun validRegex!9426 (Regex!18292) Bool)

(assert (=> d!2229943 (= res!2918407 (validRegex!9426 lt!2569517))))

(assert (=> d!2229943 (= lt!2569517 e!4299847)))

(declare-fun c!1333826 () Bool)

(declare-fun e!4299842 () Bool)

(assert (=> d!2229943 (= c!1333826 e!4299842)))

(declare-fun res!2918406 () Bool)

(assert (=> d!2229943 (=> (not res!2918406) (not e!4299842))))

(assert (=> d!2229943 (= res!2918406 (is-Cons!69496 (exprs!7744 c!9606)))))

(assert (=> d!2229943 (forall!17129 (exprs!7744 c!9606) lambda!436591)))

(assert (=> d!2229943 (= (generalisedConcat!2439 (exprs!7744 c!9606)) lt!2569517)))

(declare-fun b!7157475 () Bool)

(assert (=> b!7157475 (= e!4299842 (isEmpty!40144 (t!383637 (exprs!7744 c!9606))))))

(declare-fun b!7157480 () Bool)

(assert (=> b!7157480 (= e!4299843 e!4299846)))

(declare-fun c!1333824 () Bool)

(assert (=> b!7157480 (= c!1333824 (isEmpty!40144 (exprs!7744 c!9606)))))

(declare-fun b!7157481 () Bool)

(assert (=> b!7157481 (= e!4299847 e!4299844)))

(declare-fun c!1333823 () Bool)

(assert (=> b!7157481 (= c!1333823 (is-Cons!69496 (exprs!7744 c!9606)))))

(assert (= (and d!2229943 res!2918406) b!7157475))

(assert (= (and d!2229943 c!1333826) b!7157476))

(assert (= (and d!2229943 (not c!1333826)) b!7157481))

(assert (= (and b!7157481 c!1333823) b!7157472))

(assert (= (and b!7157481 (not c!1333823)) b!7157474))

(assert (= (and d!2229943 res!2918407) b!7157480))

(assert (= (and b!7157480 c!1333824) b!7157477))

(assert (= (and b!7157480 (not c!1333824)) b!7157478))

(assert (= (and b!7157478 c!1333825) b!7157479))

(assert (= (and b!7157478 (not c!1333825)) b!7157473))

(declare-fun m!7863912 () Bool)

(assert (=> d!2229943 m!7863912))

(declare-fun m!7863914 () Bool)

(assert (=> d!2229943 m!7863914))

(declare-fun m!7863916 () Bool)

(assert (=> b!7157472 m!7863916))

(declare-fun m!7863918 () Bool)

(assert (=> b!7157479 m!7863918))

(declare-fun m!7863920 () Bool)

(assert (=> b!7157477 m!7863920))

(declare-fun m!7863922 () Bool)

(assert (=> b!7157478 m!7863922))

(assert (=> b!7157478 m!7863922))

(declare-fun m!7863924 () Bool)

(assert (=> b!7157478 m!7863924))

(declare-fun m!7863926 () Bool)

(assert (=> b!7157480 m!7863926))

(declare-fun m!7863928 () Bool)

(assert (=> b!7157475 m!7863928))

(declare-fun m!7863930 () Bool)

(assert (=> b!7157473 m!7863930))

(assert (=> b!7157409 d!2229943))

(declare-fun d!2229945 () Bool)

(declare-fun lt!2569520 () Bool)

(declare-fun content!14274 (List!69621) (Set Context!14488))

(assert (=> d!2229945 (= lt!2569520 (set.member c!9606 (content!14274 (t!383638 zl!1504))))))

(declare-fun e!4299852 () Bool)

(assert (=> d!2229945 (= lt!2569520 e!4299852)))

(declare-fun res!2918412 () Bool)

(assert (=> d!2229945 (=> (not res!2918412) (not e!4299852))))

(assert (=> d!2229945 (= res!2918412 (is-Cons!69497 (t!383638 zl!1504)))))

(assert (=> d!2229945 (= (contains!20694 (t!383638 zl!1504) c!9606) lt!2569520)))

(declare-fun b!7157486 () Bool)

(declare-fun e!4299853 () Bool)

(assert (=> b!7157486 (= e!4299852 e!4299853)))

(declare-fun res!2918413 () Bool)

(assert (=> b!7157486 (=> res!2918413 e!4299853)))

(assert (=> b!7157486 (= res!2918413 (= (h!75945 (t!383638 zl!1504)) c!9606))))

(declare-fun b!7157487 () Bool)

(assert (=> b!7157487 (= e!4299853 (contains!20694 (t!383638 (t!383638 zl!1504)) c!9606))))

(assert (= (and d!2229945 res!2918412) b!7157486))

(assert (= (and b!7157486 (not res!2918413)) b!7157487))

(declare-fun m!7863932 () Bool)

(assert (=> d!2229945 m!7863932))

(declare-fun m!7863934 () Bool)

(assert (=> d!2229945 m!7863934))

(declare-fun m!7863936 () Bool)

(assert (=> b!7157487 m!7863936))

(assert (=> b!7157408 d!2229945))

(declare-fun d!2229947 () Bool)

(declare-fun lt!2569521 () Bool)

(assert (=> d!2229947 (= lt!2569521 (set.member c!9606 (content!14274 zl!1504)))))

(declare-fun e!4299854 () Bool)

(assert (=> d!2229947 (= lt!2569521 e!4299854)))

(declare-fun res!2918414 () Bool)

(assert (=> d!2229947 (=> (not res!2918414) (not e!4299854))))

(assert (=> d!2229947 (= res!2918414 (is-Cons!69497 zl!1504))))

(assert (=> d!2229947 (= (contains!20694 zl!1504 c!9606) lt!2569521)))

(declare-fun b!7157488 () Bool)

(declare-fun e!4299855 () Bool)

(assert (=> b!7157488 (= e!4299854 e!4299855)))

(declare-fun res!2918415 () Bool)

(assert (=> b!7157488 (=> res!2918415 e!4299855)))

(assert (=> b!7157488 (= res!2918415 (= (h!75945 zl!1504) c!9606))))

(declare-fun b!7157489 () Bool)

(assert (=> b!7157489 (= e!4299855 (contains!20694 (t!383638 zl!1504) c!9606))))

(assert (= (and d!2229947 res!2918414) b!7157488))

(assert (= (and b!7157488 (not res!2918415)) b!7157489))

(declare-fun m!7863938 () Bool)

(assert (=> d!2229947 m!7863938))

(declare-fun m!7863940 () Bool)

(assert (=> d!2229947 m!7863940))

(assert (=> b!7157489 m!7863860))

(assert (=> start!697730 d!2229947))

(declare-fun bs!1890095 () Bool)

(declare-fun d!2229949 () Bool)

(assert (= bs!1890095 (and d!2229949 d!2229931)))

(declare-fun lambda!436595 () Int)

(assert (=> bs!1890095 (= lambda!436595 lambda!436585)))

(declare-fun bs!1890096 () Bool)

(assert (= bs!1890096 (and d!2229949 d!2229941)))

(assert (=> bs!1890096 (= lambda!436595 lambda!436588)))

(declare-fun bs!1890097 () Bool)

(assert (= bs!1890097 (and d!2229949 d!2229943)))

(assert (=> bs!1890097 (= lambda!436595 lambda!436591)))

(assert (=> d!2229949 (= (inv!88753 c!9606) (forall!17129 (exprs!7744 c!9606) lambda!436595))))

(declare-fun bs!1890099 () Bool)

(assert (= bs!1890099 d!2229949))

(declare-fun m!7863944 () Bool)

(assert (=> bs!1890099 m!7863944))

(assert (=> start!697730 d!2229949))

(declare-fun b!7157497 () Bool)

(declare-fun e!4299861 () Bool)

(declare-fun tp!1979280 () Bool)

(assert (=> b!7157497 (= e!4299861 tp!1979280)))

(declare-fun e!4299860 () Bool)

(declare-fun b!7157496 () Bool)

(declare-fun tp!1979281 () Bool)

(assert (=> b!7157496 (= e!4299860 (and (inv!88753 (h!75945 (t!383638 zl!1504))) e!4299861 tp!1979281))))

(assert (=> b!7157411 (= tp!1979266 e!4299860)))

(assert (= b!7157496 b!7157497))

(assert (= (and b!7157411 (is-Cons!69497 (t!383638 zl!1504))) b!7157496))

(declare-fun m!7863948 () Bool)

(assert (=> b!7157496 m!7863948))

(declare-fun b!7157502 () Bool)

(declare-fun e!4299864 () Bool)

(declare-fun tp!1979286 () Bool)

(declare-fun tp!1979287 () Bool)

(assert (=> b!7157502 (= e!4299864 (and tp!1979286 tp!1979287))))

(assert (=> b!7157410 (= tp!1979265 e!4299864)))

(assert (= (and b!7157410 (is-Cons!69496 (exprs!7744 (h!75945 zl!1504)))) b!7157502))

(declare-fun b!7157503 () Bool)

(declare-fun e!4299865 () Bool)

(declare-fun tp!1979288 () Bool)

(declare-fun tp!1979289 () Bool)

(assert (=> b!7157503 (= e!4299865 (and tp!1979288 tp!1979289))))

(assert (=> b!7157412 (= tp!1979264 e!4299865)))

(assert (= (and b!7157412 (is-Cons!69496 (exprs!7744 c!9606))) b!7157503))

(push 1)

(assert (not b!7157472))

(assert (not b!7157497))

(assert (not d!2229949))

(assert (not b!7157502))

(assert (not d!2229943))

(assert (not b!7157473))

(assert (not b!7157478))

(assert (not b!7157477))

(assert (not b!7157450))

(assert (not d!2229947))

(assert (not b!7157445))

(assert (not b!7157503))

(assert (not d!2229939))

(assert (not b!7157475))

(assert (not b!7157480))

(assert (not d!2229945))

(assert (not b!7157479))

(assert (not d!2229931))

(assert (not b!7157489))

(assert (not d!2229941))

(assert (not b!7157496))

(assert (not b!7157487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

