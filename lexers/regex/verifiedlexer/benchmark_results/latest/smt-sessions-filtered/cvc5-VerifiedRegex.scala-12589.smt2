; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697650 () Bool)

(assert start!697650)

(declare-fun b!7156952 () Bool)

(declare-fun res!2918200 () Bool)

(declare-fun e!4299474 () Bool)

(assert (=> b!7156952 (=> (not res!2918200) (not e!4299474))))

(declare-datatypes ((C!36846 0))(
  ( (C!36847 (val!28371 Int)) )
))
(declare-datatypes ((Regex!18286 0))(
  ( (ElementMatch!18286 (c!1333730 C!36846)) (Concat!27131 (regOne!37084 Regex!18286) (regTwo!37084 Regex!18286)) (EmptyExpr!18286) (Star!18286 (reg!18615 Regex!18286)) (EmptyLang!18286) (Union!18286 (regOne!37085 Regex!18286) (regTwo!37085 Regex!18286)) )
))
(declare-datatypes ((List!69608 0))(
  ( (Nil!69484) (Cons!69484 (h!75932 Regex!18286) (t!383625 List!69608)) )
))
(declare-datatypes ((Context!14476 0))(
  ( (Context!14477 (exprs!7738 List!69608)) )
))
(declare-datatypes ((List!69609 0))(
  ( (Nil!69485) (Cons!69485 (h!75933 Context!14476) (t!383626 List!69609)) )
))
(declare-fun zl!1504 () List!69609)

(assert (=> b!7156952 (= res!2918200 (is-Cons!69485 zl!1504))))

(declare-fun b!7156953 () Bool)

(declare-fun e!4299471 () Bool)

(declare-fun tp!1979127 () Bool)

(assert (=> b!7156953 (= e!4299471 tp!1979127)))

(declare-fun b!7156954 () Bool)

(declare-fun c!9606 () Context!14476)

(declare-fun lambda!436515 () Int)

(declare-fun forall!17123 (List!69608 Int) Bool)

(assert (=> b!7156954 (= e!4299474 (not (forall!17123 (exprs!7738 c!9606) lambda!436515)))))

(declare-fun lt!2569390 () List!69608)

(declare-fun unfocusZipperList!2279 (List!69609) List!69608)

(assert (=> b!7156954 (= lt!2569390 (unfocusZipperList!2279 zl!1504))))

(declare-fun contains!20684 (List!69608 Regex!18286) Bool)

(declare-fun generalisedConcat!2434 (List!69608) Regex!18286)

(assert (=> b!7156954 (contains!20684 (unfocusZipperList!2279 (t!383626 zl!1504)) (generalisedConcat!2434 (exprs!7738 c!9606)))))

(declare-datatypes ((Unit!163307 0))(
  ( (Unit!163308) )
))
(declare-fun lt!2569389 () Unit!163307)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!17 (List!69609 Context!14476) Unit!163307)

(assert (=> b!7156954 (= lt!2569389 (lemmaZipperContainsContextUnfocusListContainsConcat!17 (t!383626 zl!1504) c!9606))))

(declare-fun e!4299472 () Bool)

(declare-fun tp!1979128 () Bool)

(declare-fun b!7156955 () Bool)

(declare-fun inv!88738 (Context!14476) Bool)

(assert (=> b!7156955 (= e!4299472 (and (inv!88738 (h!75933 zl!1504)) e!4299471 tp!1979128))))

(declare-fun b!7156956 () Bool)

(declare-fun e!4299473 () Bool)

(declare-fun tp!1979126 () Bool)

(assert (=> b!7156956 (= e!4299473 tp!1979126)))

(declare-fun b!7156957 () Bool)

(declare-fun res!2918199 () Bool)

(assert (=> b!7156957 (=> (not res!2918199) (not e!4299474))))

(declare-fun contains!20685 (List!69609 Context!14476) Bool)

(assert (=> b!7156957 (= res!2918199 (contains!20685 (t!383626 zl!1504) c!9606))))

(declare-fun res!2918198 () Bool)

(assert (=> start!697650 (=> (not res!2918198) (not e!4299474))))

(assert (=> start!697650 (= res!2918198 (contains!20685 zl!1504 c!9606))))

(assert (=> start!697650 e!4299474))

(assert (=> start!697650 e!4299472))

(assert (=> start!697650 (and (inv!88738 c!9606) e!4299473)))

(assert (= (and start!697650 res!2918198) b!7156952))

(assert (= (and b!7156952 res!2918200) b!7156957))

(assert (= (and b!7156957 res!2918199) b!7156954))

(assert (= b!7156955 b!7156953))

(assert (= (and start!697650 (is-Cons!69485 zl!1504)) b!7156955))

(assert (= start!697650 b!7156956))

(declare-fun m!7863456 () Bool)

(assert (=> b!7156954 m!7863456))

(declare-fun m!7863458 () Bool)

(assert (=> b!7156954 m!7863458))

(declare-fun m!7863460 () Bool)

(assert (=> b!7156954 m!7863460))

(declare-fun m!7863462 () Bool)

(assert (=> b!7156954 m!7863462))

(declare-fun m!7863464 () Bool)

(assert (=> b!7156954 m!7863464))

(assert (=> b!7156954 m!7863460))

(assert (=> b!7156954 m!7863456))

(declare-fun m!7863466 () Bool)

(assert (=> b!7156954 m!7863466))

(declare-fun m!7863468 () Bool)

(assert (=> b!7156955 m!7863468))

(declare-fun m!7863470 () Bool)

(assert (=> b!7156957 m!7863470))

(declare-fun m!7863472 () Bool)

(assert (=> start!697650 m!7863472))

(declare-fun m!7863474 () Bool)

(assert (=> start!697650 m!7863474))

(push 1)

(assert (not b!7156957))

(assert (not b!7156953))

(assert (not b!7156955))

(assert (not b!7156956))

(assert (not b!7156954))

(assert (not start!697650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229816 () Bool)

(declare-fun res!2918214 () Bool)

(declare-fun e!4299491 () Bool)

(assert (=> d!2229816 (=> res!2918214 e!4299491)))

(assert (=> d!2229816 (= res!2918214 (is-Nil!69484 (exprs!7738 c!9606)))))

(assert (=> d!2229816 (= (forall!17123 (exprs!7738 c!9606) lambda!436515) e!4299491)))

(declare-fun b!7156980 () Bool)

(declare-fun e!4299492 () Bool)

(assert (=> b!7156980 (= e!4299491 e!4299492)))

(declare-fun res!2918215 () Bool)

(assert (=> b!7156980 (=> (not res!2918215) (not e!4299492))))

(declare-fun dynLambda!28311 (Int Regex!18286) Bool)

(assert (=> b!7156980 (= res!2918215 (dynLambda!28311 lambda!436515 (h!75932 (exprs!7738 c!9606))))))

(declare-fun b!7156981 () Bool)

(assert (=> b!7156981 (= e!4299492 (forall!17123 (t!383625 (exprs!7738 c!9606)) lambda!436515))))

(assert (= (and d!2229816 (not res!2918214)) b!7156980))

(assert (= (and b!7156980 res!2918215) b!7156981))

(declare-fun b_lambda!273355 () Bool)

(assert (=> (not b_lambda!273355) (not b!7156980)))

(declare-fun m!7863496 () Bool)

(assert (=> b!7156980 m!7863496))

(declare-fun m!7863498 () Bool)

(assert (=> b!7156981 m!7863498))

(assert (=> b!7156954 d!2229816))

(declare-fun bs!1890003 () Bool)

(declare-fun d!2229820 () Bool)

(assert (= bs!1890003 (and d!2229820 b!7156954)))

(declare-fun lambda!436521 () Int)

(assert (=> bs!1890003 (= lambda!436521 lambda!436515)))

(declare-fun lt!2569399 () List!69608)

(assert (=> d!2229820 (forall!17123 lt!2569399 lambda!436521)))

(declare-fun e!4299495 () List!69608)

(assert (=> d!2229820 (= lt!2569399 e!4299495)))

(declare-fun c!1333734 () Bool)

(assert (=> d!2229820 (= c!1333734 (is-Cons!69485 (t!383626 zl!1504)))))

(assert (=> d!2229820 (= (unfocusZipperList!2279 (t!383626 zl!1504)) lt!2569399)))

(declare-fun b!7156986 () Bool)

(assert (=> b!7156986 (= e!4299495 (Cons!69484 (generalisedConcat!2434 (exprs!7738 (h!75933 (t!383626 zl!1504)))) (unfocusZipperList!2279 (t!383626 (t!383626 zl!1504)))))))

(declare-fun b!7156987 () Bool)

(assert (=> b!7156987 (= e!4299495 Nil!69484)))

(assert (= (and d!2229820 c!1333734) b!7156986))

(assert (= (and d!2229820 (not c!1333734)) b!7156987))

(declare-fun m!7863500 () Bool)

(assert (=> d!2229820 m!7863500))

(declare-fun m!7863502 () Bool)

(assert (=> b!7156986 m!7863502))

(declare-fun m!7863504 () Bool)

(assert (=> b!7156986 m!7863504))

(assert (=> b!7156954 d!2229820))

(declare-fun bs!1890005 () Bool)

(declare-fun d!2229822 () Bool)

(assert (= bs!1890005 (and d!2229822 b!7156954)))

(declare-fun lambda!436527 () Int)

(assert (=> bs!1890005 (= lambda!436527 lambda!436515)))

(declare-fun bs!1890006 () Bool)

(assert (= bs!1890006 (and d!2229822 d!2229820)))

(assert (=> bs!1890006 (= lambda!436527 lambda!436521)))

(declare-fun e!4299518 () Bool)

(assert (=> d!2229822 e!4299518))

(declare-fun res!2918226 () Bool)

(assert (=> d!2229822 (=> (not res!2918226) (not e!4299518))))

(declare-fun lt!2569405 () Regex!18286)

(declare-fun validRegex!9422 (Regex!18286) Bool)

(assert (=> d!2229822 (= res!2918226 (validRegex!9422 lt!2569405))))

(declare-fun e!4299516 () Regex!18286)

(assert (=> d!2229822 (= lt!2569405 e!4299516)))

(declare-fun c!1333743 () Bool)

(declare-fun e!4299515 () Bool)

(assert (=> d!2229822 (= c!1333743 e!4299515)))

(declare-fun res!2918227 () Bool)

(assert (=> d!2229822 (=> (not res!2918227) (not e!4299515))))

(assert (=> d!2229822 (= res!2918227 (is-Cons!69484 (exprs!7738 c!9606)))))

(assert (=> d!2229822 (forall!17123 (exprs!7738 c!9606) lambda!436527)))

(assert (=> d!2229822 (= (generalisedConcat!2434 (exprs!7738 c!9606)) lt!2569405)))

(declare-fun b!7157014 () Bool)

(declare-fun e!4299514 () Bool)

(declare-fun head!14572 (List!69608) Regex!18286)

(assert (=> b!7157014 (= e!4299514 (= lt!2569405 (head!14572 (exprs!7738 c!9606))))))

(declare-fun b!7157015 () Bool)

(assert (=> b!7157015 (= e!4299516 (h!75932 (exprs!7738 c!9606)))))

(declare-fun b!7157016 () Bool)

(declare-fun e!4299517 () Regex!18286)

(assert (=> b!7157016 (= e!4299516 e!4299517)))

(declare-fun c!1333746 () Bool)

(assert (=> b!7157016 (= c!1333746 (is-Cons!69484 (exprs!7738 c!9606)))))

(declare-fun b!7157017 () Bool)

(assert (=> b!7157017 (= e!4299517 EmptyExpr!18286)))

(declare-fun b!7157018 () Bool)

(assert (=> b!7157018 (= e!4299517 (Concat!27131 (h!75932 (exprs!7738 c!9606)) (generalisedConcat!2434 (t!383625 (exprs!7738 c!9606)))))))

(declare-fun b!7157019 () Bool)

(declare-fun e!4299519 () Bool)

(assert (=> b!7157019 (= e!4299518 e!4299519)))

(declare-fun c!1333745 () Bool)

(declare-fun isEmpty!40140 (List!69608) Bool)

(assert (=> b!7157019 (= c!1333745 (isEmpty!40140 (exprs!7738 c!9606)))))

(declare-fun b!7157020 () Bool)

(assert (=> b!7157020 (= e!4299519 e!4299514)))

(declare-fun c!1333744 () Bool)

(declare-fun tail!14041 (List!69608) List!69608)

(assert (=> b!7157020 (= c!1333744 (isEmpty!40140 (tail!14041 (exprs!7738 c!9606))))))

(declare-fun b!7157021 () Bool)

(declare-fun isEmptyExpr!2077 (Regex!18286) Bool)

(assert (=> b!7157021 (= e!4299519 (isEmptyExpr!2077 lt!2569405))))

(declare-fun b!7157022 () Bool)

(declare-fun isConcat!1599 (Regex!18286) Bool)

(assert (=> b!7157022 (= e!4299514 (isConcat!1599 lt!2569405))))

(declare-fun b!7157023 () Bool)

(assert (=> b!7157023 (= e!4299515 (isEmpty!40140 (t!383625 (exprs!7738 c!9606))))))

(assert (= (and d!2229822 res!2918227) b!7157023))

(assert (= (and d!2229822 c!1333743) b!7157015))

(assert (= (and d!2229822 (not c!1333743)) b!7157016))

(assert (= (and b!7157016 c!1333746) b!7157018))

(assert (= (and b!7157016 (not c!1333746)) b!7157017))

(assert (= (and d!2229822 res!2918226) b!7157019))

(assert (= (and b!7157019 c!1333745) b!7157021))

(assert (= (and b!7157019 (not c!1333745)) b!7157020))

(assert (= (and b!7157020 c!1333744) b!7157014))

(assert (= (and b!7157020 (not c!1333744)) b!7157022))

(declare-fun m!7863512 () Bool)

(assert (=> d!2229822 m!7863512))

(declare-fun m!7863514 () Bool)

(assert (=> d!2229822 m!7863514))

(declare-fun m!7863516 () Bool)

(assert (=> b!7157023 m!7863516))

(declare-fun m!7863518 () Bool)

(assert (=> b!7157020 m!7863518))

(assert (=> b!7157020 m!7863518))

(declare-fun m!7863520 () Bool)

(assert (=> b!7157020 m!7863520))

(declare-fun m!7863522 () Bool)

(assert (=> b!7157019 m!7863522))

(declare-fun m!7863524 () Bool)

(assert (=> b!7157018 m!7863524))

(declare-fun m!7863526 () Bool)

(assert (=> b!7157021 m!7863526))

(declare-fun m!7863528 () Bool)

(assert (=> b!7157014 m!7863528))

(declare-fun m!7863530 () Bool)

(assert (=> b!7157022 m!7863530))

(assert (=> b!7156954 d!2229822))

(declare-fun d!2229828 () Bool)

(declare-fun lt!2569408 () Bool)

(declare-fun content!14264 (List!69608) (Set Regex!18286))

(assert (=> d!2229828 (= lt!2569408 (set.member (generalisedConcat!2434 (exprs!7738 c!9606)) (content!14264 (unfocusZipperList!2279 (t!383626 zl!1504)))))))

(declare-fun e!4299529 () Bool)

(assert (=> d!2229828 (= lt!2569408 e!4299529)))

(declare-fun res!2918237 () Bool)

(assert (=> d!2229828 (=> (not res!2918237) (not e!4299529))))

(assert (=> d!2229828 (= res!2918237 (is-Cons!69484 (unfocusZipperList!2279 (t!383626 zl!1504))))))

(assert (=> d!2229828 (= (contains!20684 (unfocusZipperList!2279 (t!383626 zl!1504)) (generalisedConcat!2434 (exprs!7738 c!9606))) lt!2569408)))

(declare-fun b!7157032 () Bool)

(declare-fun e!4299528 () Bool)

(assert (=> b!7157032 (= e!4299529 e!4299528)))

(declare-fun res!2918236 () Bool)

(assert (=> b!7157032 (=> res!2918236 e!4299528)))

(assert (=> b!7157032 (= res!2918236 (= (h!75932 (unfocusZipperList!2279 (t!383626 zl!1504))) (generalisedConcat!2434 (exprs!7738 c!9606))))))

(declare-fun b!7157033 () Bool)

(assert (=> b!7157033 (= e!4299528 (contains!20684 (t!383625 (unfocusZipperList!2279 (t!383626 zl!1504))) (generalisedConcat!2434 (exprs!7738 c!9606))))))

(assert (= (and d!2229828 res!2918237) b!7157032))

(assert (= (and b!7157032 (not res!2918236)) b!7157033))

(assert (=> d!2229828 m!7863460))

(declare-fun m!7863532 () Bool)

(assert (=> d!2229828 m!7863532))

(assert (=> d!2229828 m!7863456))

(declare-fun m!7863534 () Bool)

(assert (=> d!2229828 m!7863534))

(assert (=> b!7157033 m!7863456))

(declare-fun m!7863536 () Bool)

(assert (=> b!7157033 m!7863536))

(assert (=> b!7156954 d!2229828))

(declare-fun bs!1890008 () Bool)

(declare-fun d!2229830 () Bool)

(assert (= bs!1890008 (and d!2229830 b!7156954)))

(declare-fun lambda!436528 () Int)

(assert (=> bs!1890008 (= lambda!436528 lambda!436515)))

(declare-fun bs!1890009 () Bool)

(assert (= bs!1890009 (and d!2229830 d!2229820)))

(assert (=> bs!1890009 (= lambda!436528 lambda!436521)))

(declare-fun bs!1890010 () Bool)

(assert (= bs!1890010 (and d!2229830 d!2229822)))

(assert (=> bs!1890010 (= lambda!436528 lambda!436527)))

(declare-fun lt!2569409 () List!69608)

(assert (=> d!2229830 (forall!17123 lt!2569409 lambda!436528)))

(declare-fun e!4299530 () List!69608)

(assert (=> d!2229830 (= lt!2569409 e!4299530)))

(declare-fun c!1333747 () Bool)

(assert (=> d!2229830 (= c!1333747 (is-Cons!69485 zl!1504))))

(assert (=> d!2229830 (= (unfocusZipperList!2279 zl!1504) lt!2569409)))

(declare-fun b!7157034 () Bool)

(assert (=> b!7157034 (= e!4299530 (Cons!69484 (generalisedConcat!2434 (exprs!7738 (h!75933 zl!1504))) (unfocusZipperList!2279 (t!383626 zl!1504))))))

(declare-fun b!7157035 () Bool)

(assert (=> b!7157035 (= e!4299530 Nil!69484)))

(assert (= (and d!2229830 c!1333747) b!7157034))

(assert (= (and d!2229830 (not c!1333747)) b!7157035))

(declare-fun m!7863538 () Bool)

(assert (=> d!2229830 m!7863538))

(declare-fun m!7863540 () Bool)

(assert (=> b!7157034 m!7863540))

(assert (=> b!7157034 m!7863460))

(assert (=> b!7156954 d!2229830))

(declare-fun d!2229832 () Bool)

(assert (=> d!2229832 (contains!20684 (unfocusZipperList!2279 (t!383626 zl!1504)) (generalisedConcat!2434 (exprs!7738 c!9606)))))

(declare-fun lt!2569412 () Unit!163307)

(declare-fun choose!55309 (List!69609 Context!14476) Unit!163307)

(assert (=> d!2229832 (= lt!2569412 (choose!55309 (t!383626 zl!1504) c!9606))))

(assert (=> d!2229832 (contains!20685 (t!383626 zl!1504) c!9606)))

(assert (=> d!2229832 (= (lemmaZipperContainsContextUnfocusListContainsConcat!17 (t!383626 zl!1504) c!9606) lt!2569412)))

(declare-fun bs!1890011 () Bool)

(assert (= bs!1890011 d!2229832))

(assert (=> bs!1890011 m!7863460))

(assert (=> bs!1890011 m!7863456))

(assert (=> bs!1890011 m!7863466))

(assert (=> bs!1890011 m!7863470))

(assert (=> bs!1890011 m!7863460))

(assert (=> bs!1890011 m!7863456))

(declare-fun m!7863546 () Bool)

(assert (=> bs!1890011 m!7863546))

(assert (=> b!7156954 d!2229832))

(declare-fun bs!1890012 () Bool)

(declare-fun d!2229836 () Bool)

(assert (= bs!1890012 (and d!2229836 b!7156954)))

(declare-fun lambda!436531 () Int)

(assert (=> bs!1890012 (= lambda!436531 lambda!436515)))

(declare-fun bs!1890013 () Bool)

(assert (= bs!1890013 (and d!2229836 d!2229820)))

(assert (=> bs!1890013 (= lambda!436531 lambda!436521)))

(declare-fun bs!1890014 () Bool)

(assert (= bs!1890014 (and d!2229836 d!2229822)))

(assert (=> bs!1890014 (= lambda!436531 lambda!436527)))

(declare-fun bs!1890015 () Bool)

(assert (= bs!1890015 (and d!2229836 d!2229830)))

(assert (=> bs!1890015 (= lambda!436531 lambda!436528)))

(assert (=> d!2229836 (= (inv!88738 (h!75933 zl!1504)) (forall!17123 (exprs!7738 (h!75933 zl!1504)) lambda!436531))))

(declare-fun bs!1890016 () Bool)

(assert (= bs!1890016 d!2229836))

(declare-fun m!7863548 () Bool)

(assert (=> bs!1890016 m!7863548))

(assert (=> b!7156955 d!2229836))

(declare-fun d!2229838 () Bool)

(declare-fun lt!2569417 () Bool)

(declare-fun content!14265 (List!69609) (Set Context!14476))

(assert (=> d!2229838 (= lt!2569417 (set.member c!9606 (content!14265 (t!383626 zl!1504))))))

(declare-fun e!4299540 () Bool)

(assert (=> d!2229838 (= lt!2569417 e!4299540)))

(declare-fun res!2918245 () Bool)

(assert (=> d!2229838 (=> (not res!2918245) (not e!4299540))))

(assert (=> d!2229838 (= res!2918245 (is-Cons!69485 (t!383626 zl!1504)))))

(assert (=> d!2229838 (= (contains!20685 (t!383626 zl!1504) c!9606) lt!2569417)))

(declare-fun b!7157046 () Bool)

(declare-fun e!4299539 () Bool)

(assert (=> b!7157046 (= e!4299540 e!4299539)))

(declare-fun res!2918244 () Bool)

(assert (=> b!7157046 (=> res!2918244 e!4299539)))

(assert (=> b!7157046 (= res!2918244 (= (h!75933 (t!383626 zl!1504)) c!9606))))

(declare-fun b!7157047 () Bool)

(assert (=> b!7157047 (= e!4299539 (contains!20685 (t!383626 (t!383626 zl!1504)) c!9606))))

(assert (= (and d!2229838 res!2918245) b!7157046))

(assert (= (and b!7157046 (not res!2918244)) b!7157047))

(declare-fun m!7863550 () Bool)

(assert (=> d!2229838 m!7863550))

(declare-fun m!7863552 () Bool)

(assert (=> d!2229838 m!7863552))

(declare-fun m!7863554 () Bool)

(assert (=> b!7157047 m!7863554))

(assert (=> b!7156957 d!2229838))

(declare-fun d!2229840 () Bool)

(declare-fun lt!2569418 () Bool)

(assert (=> d!2229840 (= lt!2569418 (set.member c!9606 (content!14265 zl!1504)))))

(declare-fun e!4299542 () Bool)

(assert (=> d!2229840 (= lt!2569418 e!4299542)))

(declare-fun res!2918247 () Bool)

(assert (=> d!2229840 (=> (not res!2918247) (not e!4299542))))

(assert (=> d!2229840 (= res!2918247 (is-Cons!69485 zl!1504))))

(assert (=> d!2229840 (= (contains!20685 zl!1504 c!9606) lt!2569418)))

(declare-fun b!7157048 () Bool)

(declare-fun e!4299541 () Bool)

(assert (=> b!7157048 (= e!4299542 e!4299541)))

(declare-fun res!2918246 () Bool)

(assert (=> b!7157048 (=> res!2918246 e!4299541)))

(assert (=> b!7157048 (= res!2918246 (= (h!75933 zl!1504) c!9606))))

(declare-fun b!7157049 () Bool)

(assert (=> b!7157049 (= e!4299541 (contains!20685 (t!383626 zl!1504) c!9606))))

(assert (= (and d!2229840 res!2918247) b!7157048))

(assert (= (and b!7157048 (not res!2918246)) b!7157049))

(declare-fun m!7863556 () Bool)

(assert (=> d!2229840 m!7863556))

(declare-fun m!7863558 () Bool)

(assert (=> d!2229840 m!7863558))

(assert (=> b!7157049 m!7863470))

(assert (=> start!697650 d!2229840))

(declare-fun bs!1890017 () Bool)

(declare-fun d!2229842 () Bool)

(assert (= bs!1890017 (and d!2229842 b!7156954)))

(declare-fun lambda!436534 () Int)

(assert (=> bs!1890017 (= lambda!436534 lambda!436515)))

(declare-fun bs!1890018 () Bool)

(assert (= bs!1890018 (and d!2229842 d!2229830)))

(assert (=> bs!1890018 (= lambda!436534 lambda!436528)))

(declare-fun bs!1890019 () Bool)

(assert (= bs!1890019 (and d!2229842 d!2229836)))

(assert (=> bs!1890019 (= lambda!436534 lambda!436531)))

(declare-fun bs!1890020 () Bool)

(assert (= bs!1890020 (and d!2229842 d!2229820)))

(assert (=> bs!1890020 (= lambda!436534 lambda!436521)))

(declare-fun bs!1890021 () Bool)

(assert (= bs!1890021 (and d!2229842 d!2229822)))

(assert (=> bs!1890021 (= lambda!436534 lambda!436527)))

(assert (=> d!2229842 (= (inv!88738 c!9606) (forall!17123 (exprs!7738 c!9606) lambda!436534))))

(declare-fun bs!1890022 () Bool)

(assert (= bs!1890022 d!2229842))

(declare-fun m!7863560 () Bool)

(assert (=> bs!1890022 m!7863560))

(assert (=> start!697650 d!2229842))

(declare-fun b!7157057 () Bool)

(declare-fun e!4299548 () Bool)

(declare-fun tp!1979142 () Bool)

(assert (=> b!7157057 (= e!4299548 tp!1979142)))

(declare-fun e!4299547 () Bool)

(declare-fun b!7157056 () Bool)

(declare-fun tp!1979143 () Bool)

(assert (=> b!7157056 (= e!4299547 (and (inv!88738 (h!75933 (t!383626 zl!1504))) e!4299548 tp!1979143))))

(assert (=> b!7156955 (= tp!1979128 e!4299547)))

(assert (= b!7157056 b!7157057))

(assert (= (and b!7156955 (is-Cons!69485 (t!383626 zl!1504))) b!7157056))

(declare-fun m!7863562 () Bool)

(assert (=> b!7157056 m!7863562))

(declare-fun b!7157062 () Bool)

(declare-fun e!4299551 () Bool)

(declare-fun tp!1979148 () Bool)

(declare-fun tp!1979149 () Bool)

(assert (=> b!7157062 (= e!4299551 (and tp!1979148 tp!1979149))))

(assert (=> b!7156956 (= tp!1979126 e!4299551)))

(assert (= (and b!7156956 (is-Cons!69484 (exprs!7738 c!9606))) b!7157062))

(declare-fun b!7157063 () Bool)

(declare-fun e!4299552 () Bool)

(declare-fun tp!1979150 () Bool)

(declare-fun tp!1979151 () Bool)

(assert (=> b!7157063 (= e!4299552 (and tp!1979150 tp!1979151))))

(assert (=> b!7156953 (= tp!1979127 e!4299552)))

(assert (= (and b!7156953 (is-Cons!69484 (exprs!7738 (h!75933 zl!1504)))) b!7157063))

(declare-fun b_lambda!273359 () Bool)

(assert (= b_lambda!273355 (or b!7156954 b_lambda!273359)))

(declare-fun bs!1890023 () Bool)

(declare-fun d!2229844 () Bool)

(assert (= bs!1890023 (and d!2229844 b!7156954)))

(assert (=> bs!1890023 (= (dynLambda!28311 lambda!436515 (h!75932 (exprs!7738 c!9606))) (validRegex!9422 (h!75932 (exprs!7738 c!9606))))))

(declare-fun m!7863564 () Bool)

(assert (=> bs!1890023 m!7863564))

(assert (=> b!7156980 d!2229844))

(push 1)

(assert (not b!7157022))

(assert (not b!7157034))

(assert (not b!7157047))

(assert (not b!7157021))

(assert (not b!7157019))

(assert (not b!7156981))

(assert (not b!7157014))

(assert (not d!2229822))

(assert (not d!2229840))

(assert (not b!7157063))

(assert (not b!7157033))

(assert (not b!7157023))

(assert (not d!2229828))

(assert (not d!2229830))

(assert (not d!2229838))

(assert (not d!2229832))

(assert (not b!7157057))

(assert (not bs!1890023))

(assert (not b!7157018))

(assert (not b_lambda!273359))

(assert (not d!2229836))

(assert (not d!2229842))

(assert (not b!7156986))

(assert (not b!7157020))

(assert (not b!7157049))

(assert (not d!2229820))

(assert (not b!7157062))

(assert (not b!7157056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

