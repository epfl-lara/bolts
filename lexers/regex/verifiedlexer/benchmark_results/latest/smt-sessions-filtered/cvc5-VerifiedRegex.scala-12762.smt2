; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705198 () Bool)

(assert start!705198)

(declare-fun b!7248527 () Bool)

(assert (=> b!7248527 true))

(declare-fun b!7248523 () Bool)

(declare-fun e!4346197 () Bool)

(declare-fun tp!2037076 () Bool)

(assert (=> b!7248523 (= e!4346197 tp!2037076)))

(declare-fun res!2940031 () Bool)

(declare-fun e!4346194 () Bool)

(assert (=> start!705198 (=> (not res!2940031) (not e!4346194))))

(declare-datatypes ((C!37538 0))(
  ( (C!37539 (val!28717 Int)) )
))
(declare-datatypes ((Regex!18632 0))(
  ( (ElementMatch!18632 (c!1346725 C!37538)) (Concat!27477 (regOne!37776 Regex!18632) (regTwo!37776 Regex!18632)) (EmptyExpr!18632) (Star!18632 (reg!18961 Regex!18632)) (EmptyLang!18632) (Union!18632 (regOne!37777 Regex!18632) (regTwo!37777 Regex!18632)) )
))
(declare-datatypes ((List!70476 0))(
  ( (Nil!70352) (Cons!70352 (h!76800 Regex!18632) (t!384528 List!70476)) )
))
(declare-datatypes ((Context!15144 0))(
  ( (Context!15145 (exprs!8072 List!70476)) )
))
(declare-fun lt!2583859 () (Set Context!15144))

(declare-datatypes ((List!70477 0))(
  ( (Nil!70353) (Cons!70353 (h!76801 C!37538) (t!384529 List!70477)) )
))
(declare-fun s1!1971 () List!70477)

(declare-fun matchZipper!3542 ((Set Context!15144) List!70477) Bool)

(assert (=> start!705198 (= res!2940031 (matchZipper!3542 lt!2583859 s1!1971))))

(declare-fun ct1!232 () Context!15144)

(assert (=> start!705198 (= lt!2583859 (set.insert ct1!232 (as set.empty (Set Context!15144))))))

(assert (=> start!705198 e!4346194))

(declare-fun e!4346195 () Bool)

(declare-fun inv!89591 (Context!15144) Bool)

(assert (=> start!705198 (and (inv!89591 ct1!232) e!4346195)))

(declare-fun e!4346196 () Bool)

(assert (=> start!705198 e!4346196))

(declare-fun e!4346190 () Bool)

(assert (=> start!705198 e!4346190))

(declare-fun ct2!328 () Context!15144)

(assert (=> start!705198 (and (inv!89591 ct2!328) e!4346197)))

(declare-fun b!7248524 () Bool)

(declare-fun tp!2037077 () Bool)

(assert (=> b!7248524 (= e!4346195 tp!2037077)))

(declare-fun b!7248525 () Bool)

(declare-fun e!4346193 () Bool)

(declare-fun lt!2583870 () Context!15144)

(assert (=> b!7248525 (= e!4346193 (inv!89591 lt!2583870))))

(declare-datatypes ((Unit!163848 0))(
  ( (Unit!163849) )
))
(declare-fun lt!2583869 () Unit!163848)

(declare-fun lambda!443692 () Int)

(declare-fun lemmaConcatPreservesForall!1439 (List!70476 List!70476 Int) Unit!163848)

(assert (=> b!7248525 (= lt!2583869 (lemmaConcatPreservesForall!1439 (exprs!8072 ct1!232) (exprs!8072 ct2!328) lambda!443692))))

(declare-fun lt!2583866 () (Set Context!15144))

(declare-fun derivationStepZipperUp!2456 (Context!15144 C!37538) (Set Context!15144))

(assert (=> b!7248525 (= lt!2583866 (derivationStepZipperUp!2456 lt!2583870 (h!76801 s1!1971)))))

(declare-fun lt!2583872 () Unit!163848)

(assert (=> b!7248525 (= lt!2583872 (lemmaConcatPreservesForall!1439 (exprs!8072 ct1!232) (exprs!8072 ct2!328) lambda!443692))))

(declare-fun lt!2583865 () (Set Context!15144))

(declare-fun derivationStepZipperDown!2626 (Regex!18632 Context!15144 C!37538) (Set Context!15144))

(declare-fun tail!14298 (List!70476) List!70476)

(assert (=> b!7248525 (= lt!2583865 (derivationStepZipperDown!2626 (h!76800 (exprs!8072 ct1!232)) (Context!15145 (tail!14298 (exprs!8072 ct1!232))) (h!76801 s1!1971)))))

(declare-fun b!7248526 () Bool)

(declare-fun e!4346191 () Bool)

(assert (=> b!7248526 (= e!4346194 e!4346191)))

(declare-fun res!2940033 () Bool)

(assert (=> b!7248526 (=> (not res!2940033) (not e!4346191))))

(assert (=> b!7248526 (= res!2940033 (and (not (is-Nil!70352 (exprs!8072 ct1!232))) (is-Cons!70353 s1!1971)))))

(declare-fun ++!16526 (List!70476 List!70476) List!70476)

(assert (=> b!7248526 (= lt!2583870 (Context!15145 (++!16526 (exprs!8072 ct1!232) (exprs!8072 ct2!328))))))

(declare-fun lt!2583861 () Unit!163848)

(assert (=> b!7248526 (= lt!2583861 (lemmaConcatPreservesForall!1439 (exprs!8072 ct1!232) (exprs!8072 ct2!328) lambda!443692))))

(declare-fun e!4346189 () Bool)

(declare-fun e!4346192 () Bool)

(assert (=> b!7248527 (= e!4346189 (not e!4346192))))

(declare-fun res!2940035 () Bool)

(assert (=> b!7248527 (=> res!2940035 e!4346192)))

(declare-fun lt!2583871 () (Set Context!15144))

(declare-fun lambda!443693 () Int)

(declare-fun exists!4342 ((Set Context!15144) Int) Bool)

(assert (=> b!7248527 (= res!2940035 (not (exists!4342 lt!2583871 lambda!443693)))))

(declare-datatypes ((List!70478 0))(
  ( (Nil!70354) (Cons!70354 (h!76802 Context!15144) (t!384530 List!70478)) )
))
(declare-fun lt!2583860 () List!70478)

(declare-fun exists!4343 (List!70478 Int) Bool)

(assert (=> b!7248527 (exists!4343 lt!2583860 lambda!443693)))

(declare-fun lt!2583863 () Unit!163848)

(declare-fun lemmaZipperMatchesExistsMatchingContext!735 (List!70478 List!70477) Unit!163848)

(assert (=> b!7248527 (= lt!2583863 (lemmaZipperMatchesExistsMatchingContext!735 lt!2583860 (t!384529 s1!1971)))))

(declare-fun toList!11461 ((Set Context!15144)) List!70478)

(assert (=> b!7248527 (= lt!2583860 (toList!11461 lt!2583871))))

(declare-fun b!7248528 () Bool)

(assert (=> b!7248528 (= e!4346191 e!4346189)))

(declare-fun res!2940034 () Bool)

(assert (=> b!7248528 (=> (not res!2940034) (not e!4346189))))

(assert (=> b!7248528 (= res!2940034 (matchZipper!3542 lt!2583871 (t!384529 s1!1971)))))

(declare-fun derivationStepZipper!3410 ((Set Context!15144) C!37538) (Set Context!15144))

(assert (=> b!7248528 (= lt!2583871 (derivationStepZipper!3410 lt!2583859 (h!76801 s1!1971)))))

(declare-fun b!7248529 () Bool)

(declare-fun res!2940032 () Bool)

(assert (=> b!7248529 (=> (not res!2940032) (not e!4346194))))

(declare-fun s2!1849 () List!70477)

(assert (=> b!7248529 (= res!2940032 (matchZipper!3542 (set.insert ct2!328 (as set.empty (Set Context!15144))) s2!1849))))

(declare-fun b!7248530 () Bool)

(declare-fun tp_is_empty!46729 () Bool)

(declare-fun tp!2037078 () Bool)

(assert (=> b!7248530 (= e!4346190 (and tp_is_empty!46729 tp!2037078))))

(declare-fun b!7248531 () Bool)

(declare-fun tp!2037075 () Bool)

(assert (=> b!7248531 (= e!4346196 (and tp_is_empty!46729 tp!2037075))))

(declare-fun b!7248532 () Bool)

(assert (=> b!7248532 (= e!4346192 e!4346193)))

(declare-fun res!2940036 () Bool)

(assert (=> b!7248532 (=> res!2940036 e!4346193)))

(declare-fun isEmpty!40515 (List!70476) Bool)

(assert (=> b!7248532 (= res!2940036 (isEmpty!40515 (exprs!8072 ct1!232)))))

(declare-fun lt!2583862 () (Set Context!15144))

(assert (=> b!7248532 (= lt!2583862 (derivationStepZipperUp!2456 ct1!232 (h!76801 s1!1971)))))

(declare-fun lt!2583867 () Context!15144)

(declare-fun lt!2583868 () Unit!163848)

(assert (=> b!7248532 (= lt!2583868 (lemmaConcatPreservesForall!1439 (exprs!8072 lt!2583867) (exprs!8072 ct2!328) lambda!443692))))

(declare-fun ++!16527 (List!70477 List!70477) List!70477)

(assert (=> b!7248532 (matchZipper!3542 (set.insert (Context!15145 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328))) (as set.empty (Set Context!15144))) (++!16527 (t!384529 s1!1971) s2!1849))))

(declare-fun lt!2583864 () Unit!163848)

(assert (=> b!7248532 (= lt!2583864 (lemmaConcatPreservesForall!1439 (exprs!8072 lt!2583867) (exprs!8072 ct2!328) lambda!443692))))

(declare-fun lt!2583858 () Unit!163848)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!377 (Context!15144 Context!15144 List!70477 List!70477) Unit!163848)

(assert (=> b!7248532 (= lt!2583858 (lemmaConcatenateContextMatchesConcatOfStrings!377 lt!2583867 ct2!328 (t!384529 s1!1971) s2!1849))))

(declare-fun getWitness!2182 ((Set Context!15144) Int) Context!15144)

(assert (=> b!7248532 (= lt!2583867 (getWitness!2182 lt!2583871 lambda!443693))))

(assert (= (and start!705198 res!2940031) b!7248529))

(assert (= (and b!7248529 res!2940032) b!7248526))

(assert (= (and b!7248526 res!2940033) b!7248528))

(assert (= (and b!7248528 res!2940034) b!7248527))

(assert (= (and b!7248527 (not res!2940035)) b!7248532))

(assert (= (and b!7248532 (not res!2940036)) b!7248525))

(assert (= start!705198 b!7248524))

(assert (= (and start!705198 (is-Cons!70353 s1!1971)) b!7248531))

(assert (= (and start!705198 (is-Cons!70353 s2!1849)) b!7248530))

(assert (= start!705198 b!7248523))

(declare-fun m!7926382 () Bool)

(assert (=> b!7248532 m!7926382))

(declare-fun m!7926384 () Bool)

(assert (=> b!7248532 m!7926384))

(declare-fun m!7926386 () Bool)

(assert (=> b!7248532 m!7926386))

(declare-fun m!7926388 () Bool)

(assert (=> b!7248532 m!7926388))

(declare-fun m!7926390 () Bool)

(assert (=> b!7248532 m!7926390))

(declare-fun m!7926392 () Bool)

(assert (=> b!7248532 m!7926392))

(declare-fun m!7926394 () Bool)

(assert (=> b!7248532 m!7926394))

(declare-fun m!7926396 () Bool)

(assert (=> b!7248532 m!7926396))

(assert (=> b!7248532 m!7926384))

(assert (=> b!7248532 m!7926396))

(assert (=> b!7248532 m!7926390))

(declare-fun m!7926398 () Bool)

(assert (=> b!7248532 m!7926398))

(declare-fun m!7926400 () Bool)

(assert (=> b!7248525 m!7926400))

(declare-fun m!7926402 () Bool)

(assert (=> b!7248525 m!7926402))

(declare-fun m!7926404 () Bool)

(assert (=> b!7248525 m!7926404))

(declare-fun m!7926406 () Bool)

(assert (=> b!7248525 m!7926406))

(declare-fun m!7926408 () Bool)

(assert (=> b!7248525 m!7926408))

(assert (=> b!7248525 m!7926402))

(declare-fun m!7926410 () Bool)

(assert (=> b!7248527 m!7926410))

(declare-fun m!7926412 () Bool)

(assert (=> b!7248527 m!7926412))

(declare-fun m!7926414 () Bool)

(assert (=> b!7248527 m!7926414))

(declare-fun m!7926416 () Bool)

(assert (=> b!7248527 m!7926416))

(declare-fun m!7926418 () Bool)

(assert (=> b!7248528 m!7926418))

(declare-fun m!7926420 () Bool)

(assert (=> b!7248528 m!7926420))

(declare-fun m!7926422 () Bool)

(assert (=> start!705198 m!7926422))

(declare-fun m!7926424 () Bool)

(assert (=> start!705198 m!7926424))

(declare-fun m!7926426 () Bool)

(assert (=> start!705198 m!7926426))

(declare-fun m!7926428 () Bool)

(assert (=> start!705198 m!7926428))

(declare-fun m!7926430 () Bool)

(assert (=> b!7248526 m!7926430))

(assert (=> b!7248526 m!7926402))

(declare-fun m!7926432 () Bool)

(assert (=> b!7248529 m!7926432))

(assert (=> b!7248529 m!7926432))

(declare-fun m!7926434 () Bool)

(assert (=> b!7248529 m!7926434))

(push 1)

(assert (not b!7248527))

(assert (not b!7248526))

(assert (not b!7248531))

(assert (not b!7248524))

(assert (not b!7248523))

(assert (not b!7248525))

(assert (not b!7248528))

(assert (not b!7248529))

(assert tp_is_empty!46729)

(assert (not start!705198))

(assert (not b!7248530))

(assert (not b!7248532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252695 () Bool)

(declare-fun c!1346735 () Bool)

(declare-fun isEmpty!40517 (List!70477) Bool)

(assert (=> d!2252695 (= c!1346735 (isEmpty!40517 s2!1849))))

(declare-fun e!4346227 () Bool)

(assert (=> d!2252695 (= (matchZipper!3542 (set.insert ct2!328 (as set.empty (Set Context!15144))) s2!1849) e!4346227)))

(declare-fun b!7248571 () Bool)

(declare-fun nullableZipper!2904 ((Set Context!15144)) Bool)

(assert (=> b!7248571 (= e!4346227 (nullableZipper!2904 (set.insert ct2!328 (as set.empty (Set Context!15144)))))))

(declare-fun b!7248572 () Bool)

(declare-fun head!14893 (List!70477) C!37538)

(declare-fun tail!14300 (List!70477) List!70477)

(assert (=> b!7248572 (= e!4346227 (matchZipper!3542 (derivationStepZipper!3410 (set.insert ct2!328 (as set.empty (Set Context!15144))) (head!14893 s2!1849)) (tail!14300 s2!1849)))))

(assert (= (and d!2252695 c!1346735) b!7248571))

(assert (= (and d!2252695 (not c!1346735)) b!7248572))

(declare-fun m!7926490 () Bool)

(assert (=> d!2252695 m!7926490))

(assert (=> b!7248571 m!7926432))

(declare-fun m!7926492 () Bool)

(assert (=> b!7248571 m!7926492))

(declare-fun m!7926494 () Bool)

(assert (=> b!7248572 m!7926494))

(assert (=> b!7248572 m!7926432))

(assert (=> b!7248572 m!7926494))

(declare-fun m!7926496 () Bool)

(assert (=> b!7248572 m!7926496))

(declare-fun m!7926498 () Bool)

(assert (=> b!7248572 m!7926498))

(assert (=> b!7248572 m!7926496))

(assert (=> b!7248572 m!7926498))

(declare-fun m!7926500 () Bool)

(assert (=> b!7248572 m!7926500))

(assert (=> b!7248529 d!2252695))

(declare-fun d!2252697 () Bool)

(assert (=> d!2252697 (= (tail!14298 (exprs!8072 ct1!232)) (t!384528 (exprs!8072 ct1!232)))))

(assert (=> b!7248525 d!2252697))

(declare-fun b!7248583 () Bool)

(declare-fun e!4346234 () Bool)

(declare-fun nullable!7895 (Regex!18632) Bool)

(assert (=> b!7248583 (= e!4346234 (nullable!7895 (h!76800 (exprs!8072 lt!2583870))))))

(declare-fun bm!660067 () Bool)

(declare-fun call!660072 () (Set Context!15144))

(assert (=> bm!660067 (= call!660072 (derivationStepZipperDown!2626 (h!76800 (exprs!8072 lt!2583870)) (Context!15145 (t!384528 (exprs!8072 lt!2583870))) (h!76801 s1!1971)))))

(declare-fun b!7248584 () Bool)

(declare-fun e!4346235 () (Set Context!15144))

(declare-fun e!4346236 () (Set Context!15144))

(assert (=> b!7248584 (= e!4346235 e!4346236)))

(declare-fun c!1346740 () Bool)

(assert (=> b!7248584 (= c!1346740 (is-Cons!70352 (exprs!8072 lt!2583870)))))

(declare-fun d!2252699 () Bool)

(declare-fun c!1346741 () Bool)

(assert (=> d!2252699 (= c!1346741 e!4346234)))

(declare-fun res!2940057 () Bool)

(assert (=> d!2252699 (=> (not res!2940057) (not e!4346234))))

(assert (=> d!2252699 (= res!2940057 (is-Cons!70352 (exprs!8072 lt!2583870)))))

(assert (=> d!2252699 (= (derivationStepZipperUp!2456 lt!2583870 (h!76801 s1!1971)) e!4346235)))

(declare-fun b!7248585 () Bool)

(assert (=> b!7248585 (= e!4346235 (set.union call!660072 (derivationStepZipperUp!2456 (Context!15145 (t!384528 (exprs!8072 lt!2583870))) (h!76801 s1!1971))))))

(declare-fun b!7248586 () Bool)

(assert (=> b!7248586 (= e!4346236 call!660072)))

(declare-fun b!7248587 () Bool)

(assert (=> b!7248587 (= e!4346236 (as set.empty (Set Context!15144)))))

(assert (= (and d!2252699 res!2940057) b!7248583))

(assert (= (and d!2252699 c!1346741) b!7248585))

(assert (= (and d!2252699 (not c!1346741)) b!7248584))

(assert (= (and b!7248584 c!1346740) b!7248586))

(assert (= (and b!7248584 (not c!1346740)) b!7248587))

(assert (= (or b!7248585 b!7248586) bm!660067))

(declare-fun m!7926502 () Bool)

(assert (=> b!7248583 m!7926502))

(declare-fun m!7926504 () Bool)

(assert (=> bm!660067 m!7926504))

(declare-fun m!7926506 () Bool)

(assert (=> b!7248585 m!7926506))

(assert (=> b!7248525 d!2252699))

(declare-fun d!2252701 () Bool)

(declare-fun forall!17474 (List!70476 Int) Bool)

(assert (=> d!2252701 (forall!17474 (++!16526 (exprs!8072 ct1!232) (exprs!8072 ct2!328)) lambda!443692)))

(declare-fun lt!2583920 () Unit!163848)

(declare-fun choose!55962 (List!70476 List!70476 Int) Unit!163848)

(assert (=> d!2252701 (= lt!2583920 (choose!55962 (exprs!8072 ct1!232) (exprs!8072 ct2!328) lambda!443692))))

(assert (=> d!2252701 (forall!17474 (exprs!8072 ct1!232) lambda!443692)))

(assert (=> d!2252701 (= (lemmaConcatPreservesForall!1439 (exprs!8072 ct1!232) (exprs!8072 ct2!328) lambda!443692) lt!2583920)))

(declare-fun bs!1905697 () Bool)

(assert (= bs!1905697 d!2252701))

(assert (=> bs!1905697 m!7926430))

(assert (=> bs!1905697 m!7926430))

(declare-fun m!7926508 () Bool)

(assert (=> bs!1905697 m!7926508))

(declare-fun m!7926510 () Bool)

(assert (=> bs!1905697 m!7926510))

(declare-fun m!7926512 () Bool)

(assert (=> bs!1905697 m!7926512))

(assert (=> b!7248525 d!2252701))

(declare-fun bs!1905698 () Bool)

(declare-fun d!2252703 () Bool)

(assert (= bs!1905698 (and d!2252703 b!7248526)))

(declare-fun lambda!443714 () Int)

(assert (=> bs!1905698 (= lambda!443714 lambda!443692)))

(assert (=> d!2252703 (= (inv!89591 lt!2583870) (forall!17474 (exprs!8072 lt!2583870) lambda!443714))))

(declare-fun bs!1905699 () Bool)

(assert (= bs!1905699 d!2252703))

(declare-fun m!7926514 () Bool)

(assert (=> bs!1905699 m!7926514))

(assert (=> b!7248525 d!2252703))

(declare-fun d!2252705 () Bool)

(declare-fun c!1346752 () Bool)

(assert (=> d!2252705 (= c!1346752 (and (is-ElementMatch!18632 (h!76800 (exprs!8072 ct1!232))) (= (c!1346725 (h!76800 (exprs!8072 ct1!232))) (h!76801 s1!1971))))))

(declare-fun e!4346251 () (Set Context!15144))

(assert (=> d!2252705 (= (derivationStepZipperDown!2626 (h!76800 (exprs!8072 ct1!232)) (Context!15145 (tail!14298 (exprs!8072 ct1!232))) (h!76801 s1!1971)) e!4346251)))

(declare-fun bm!660080 () Bool)

(declare-fun call!660085 () (Set Context!15144))

(declare-fun call!660088 () (Set Context!15144))

(assert (=> bm!660080 (= call!660085 call!660088)))

(declare-fun b!7248610 () Bool)

(assert (=> b!7248610 (= e!4346251 (set.insert (Context!15145 (tail!14298 (exprs!8072 ct1!232))) (as set.empty (Set Context!15144))))))

(declare-fun bm!660081 () Bool)

(declare-fun call!660090 () (Set Context!15144))

(assert (=> bm!660081 (= call!660090 call!660085)))

(declare-fun b!7248611 () Bool)

(declare-fun e!4346254 () (Set Context!15144))

(assert (=> b!7248611 (= e!4346254 call!660090)))

(declare-fun b!7248612 () Bool)

(declare-fun e!4346249 () (Set Context!15144))

(assert (=> b!7248612 (= e!4346251 e!4346249)))

(declare-fun c!1346753 () Bool)

(assert (=> b!7248612 (= c!1346753 (is-Union!18632 (h!76800 (exprs!8072 ct1!232))))))

(declare-fun b!7248613 () Bool)

(declare-fun c!1346754 () Bool)

(declare-fun e!4346252 () Bool)

(assert (=> b!7248613 (= c!1346754 e!4346252)))

(declare-fun res!2940060 () Bool)

(assert (=> b!7248613 (=> (not res!2940060) (not e!4346252))))

(assert (=> b!7248613 (= res!2940060 (is-Concat!27477 (h!76800 (exprs!8072 ct1!232))))))

(declare-fun e!4346250 () (Set Context!15144))

(assert (=> b!7248613 (= e!4346249 e!4346250)))

(declare-fun call!660087 () (Set Context!15144))

(declare-fun bm!660082 () Bool)

(declare-fun call!660089 () List!70476)

(assert (=> bm!660082 (= call!660087 (derivationStepZipperDown!2626 (ite c!1346753 (regTwo!37777 (h!76800 (exprs!8072 ct1!232))) (regOne!37776 (h!76800 (exprs!8072 ct1!232)))) (ite c!1346753 (Context!15145 (tail!14298 (exprs!8072 ct1!232))) (Context!15145 call!660089)) (h!76801 s1!1971)))))

(declare-fun bm!660083 () Bool)

(declare-fun call!660086 () List!70476)

(declare-fun c!1346756 () Bool)

(assert (=> bm!660083 (= call!660088 (derivationStepZipperDown!2626 (ite c!1346753 (regOne!37777 (h!76800 (exprs!8072 ct1!232))) (ite c!1346754 (regTwo!37776 (h!76800 (exprs!8072 ct1!232))) (ite c!1346756 (regOne!37776 (h!76800 (exprs!8072 ct1!232))) (reg!18961 (h!76800 (exprs!8072 ct1!232)))))) (ite (or c!1346753 c!1346754) (Context!15145 (tail!14298 (exprs!8072 ct1!232))) (Context!15145 call!660086)) (h!76801 s1!1971)))))

(declare-fun bm!660084 () Bool)

(assert (=> bm!660084 (= call!660086 call!660089)))

(declare-fun b!7248614 () Bool)

(assert (=> b!7248614 (= e!4346249 (set.union call!660088 call!660087))))

(declare-fun b!7248615 () Bool)

(declare-fun c!1346755 () Bool)

(assert (=> b!7248615 (= c!1346755 (is-Star!18632 (h!76800 (exprs!8072 ct1!232))))))

(declare-fun e!4346253 () (Set Context!15144))

(assert (=> b!7248615 (= e!4346253 e!4346254)))

(declare-fun b!7248616 () Bool)

(assert (=> b!7248616 (= e!4346250 (set.union call!660087 call!660085))))

(declare-fun b!7248617 () Bool)

(assert (=> b!7248617 (= e!4346252 (nullable!7895 (regOne!37776 (h!76800 (exprs!8072 ct1!232)))))))

(declare-fun b!7248618 () Bool)

(assert (=> b!7248618 (= e!4346250 e!4346253)))

(assert (=> b!7248618 (= c!1346756 (is-Concat!27477 (h!76800 (exprs!8072 ct1!232))))))

(declare-fun bm!660085 () Bool)

(declare-fun $colon$colon!2909 (List!70476 Regex!18632) List!70476)

(assert (=> bm!660085 (= call!660089 ($colon$colon!2909 (exprs!8072 (Context!15145 (tail!14298 (exprs!8072 ct1!232)))) (ite (or c!1346754 c!1346756) (regTwo!37776 (h!76800 (exprs!8072 ct1!232))) (h!76800 (exprs!8072 ct1!232)))))))

(declare-fun b!7248619 () Bool)

(assert (=> b!7248619 (= e!4346254 (as set.empty (Set Context!15144)))))

(declare-fun b!7248620 () Bool)

(assert (=> b!7248620 (= e!4346253 call!660090)))

(assert (= (and d!2252705 c!1346752) b!7248610))

(assert (= (and d!2252705 (not c!1346752)) b!7248612))

(assert (= (and b!7248612 c!1346753) b!7248614))

(assert (= (and b!7248612 (not c!1346753)) b!7248613))

(assert (= (and b!7248613 res!2940060) b!7248617))

(assert (= (and b!7248613 c!1346754) b!7248616))

(assert (= (and b!7248613 (not c!1346754)) b!7248618))

(assert (= (and b!7248618 c!1346756) b!7248620))

(assert (= (and b!7248618 (not c!1346756)) b!7248615))

(assert (= (and b!7248615 c!1346755) b!7248611))

(assert (= (and b!7248615 (not c!1346755)) b!7248619))

(assert (= (or b!7248620 b!7248611) bm!660084))

(assert (= (or b!7248620 b!7248611) bm!660081))

(assert (= (or b!7248616 bm!660084) bm!660085))

(assert (= (or b!7248616 bm!660081) bm!660080))

(assert (= (or b!7248614 b!7248616) bm!660082))

(assert (= (or b!7248614 bm!660080) bm!660083))

(declare-fun m!7926516 () Bool)

(assert (=> bm!660082 m!7926516))

(declare-fun m!7926518 () Bool)

(assert (=> b!7248617 m!7926518))

(declare-fun m!7926520 () Bool)

(assert (=> b!7248610 m!7926520))

(declare-fun m!7926522 () Bool)

(assert (=> bm!660085 m!7926522))

(declare-fun m!7926524 () Bool)

(assert (=> bm!660083 m!7926524))

(assert (=> b!7248525 d!2252705))

(declare-fun d!2252707 () Bool)

(assert (=> d!2252707 (forall!17474 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328)) lambda!443692)))

(declare-fun lt!2583921 () Unit!163848)

(assert (=> d!2252707 (= lt!2583921 (choose!55962 (exprs!8072 lt!2583867) (exprs!8072 ct2!328) lambda!443692))))

(assert (=> d!2252707 (forall!17474 (exprs!8072 lt!2583867) lambda!443692)))

(assert (=> d!2252707 (= (lemmaConcatPreservesForall!1439 (exprs!8072 lt!2583867) (exprs!8072 ct2!328) lambda!443692) lt!2583921)))

(declare-fun bs!1905700 () Bool)

(assert (= bs!1905700 d!2252707))

(assert (=> bs!1905700 m!7926394))

(assert (=> bs!1905700 m!7926394))

(declare-fun m!7926526 () Bool)

(assert (=> bs!1905700 m!7926526))

(declare-fun m!7926528 () Bool)

(assert (=> bs!1905700 m!7926528))

(declare-fun m!7926530 () Bool)

(assert (=> bs!1905700 m!7926530))

(assert (=> b!7248532 d!2252707))

(declare-fun d!2252709 () Bool)

(assert (=> d!2252709 (= (isEmpty!40515 (exprs!8072 ct1!232)) (is-Nil!70352 (exprs!8072 ct1!232)))))

(assert (=> b!7248532 d!2252709))

(declare-fun bs!1905701 () Bool)

(declare-fun d!2252711 () Bool)

(assert (= bs!1905701 (and d!2252711 b!7248526)))

(declare-fun lambda!443717 () Int)

(assert (=> bs!1905701 (= lambda!443717 lambda!443692)))

(declare-fun bs!1905702 () Bool)

(assert (= bs!1905702 (and d!2252711 d!2252703)))

(assert (=> bs!1905702 (= lambda!443717 lambda!443714)))

(assert (=> d!2252711 (matchZipper!3542 (set.insert (Context!15145 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328))) (as set.empty (Set Context!15144))) (++!16527 (t!384529 s1!1971) s2!1849))))

(declare-fun lt!2583927 () Unit!163848)

(assert (=> d!2252711 (= lt!2583927 (lemmaConcatPreservesForall!1439 (exprs!8072 lt!2583867) (exprs!8072 ct2!328) lambda!443717))))

(declare-fun lt!2583926 () Unit!163848)

(declare-fun choose!55963 (Context!15144 Context!15144 List!70477 List!70477) Unit!163848)

(assert (=> d!2252711 (= lt!2583926 (choose!55963 lt!2583867 ct2!328 (t!384529 s1!1971) s2!1849))))

(assert (=> d!2252711 (matchZipper!3542 (set.insert lt!2583867 (as set.empty (Set Context!15144))) (t!384529 s1!1971))))

(assert (=> d!2252711 (= (lemmaConcatenateContextMatchesConcatOfStrings!377 lt!2583867 ct2!328 (t!384529 s1!1971) s2!1849) lt!2583926)))

(declare-fun bs!1905703 () Bool)

(assert (= bs!1905703 d!2252711))

(declare-fun m!7926532 () Bool)

(assert (=> bs!1905703 m!7926532))

(declare-fun m!7926534 () Bool)

(assert (=> bs!1905703 m!7926534))

(assert (=> bs!1905703 m!7926532))

(assert (=> bs!1905703 m!7926396))

(declare-fun m!7926536 () Bool)

(assert (=> bs!1905703 m!7926536))

(declare-fun m!7926538 () Bool)

(assert (=> bs!1905703 m!7926538))

(assert (=> bs!1905703 m!7926394))

(assert (=> bs!1905703 m!7926396))

(assert (=> bs!1905703 m!7926390))

(assert (=> bs!1905703 m!7926398))

(assert (=> bs!1905703 m!7926390))

(assert (=> b!7248532 d!2252711))

(declare-fun d!2252713 () Bool)

(declare-fun e!4346257 () Bool)

(assert (=> d!2252713 e!4346257))

(declare-fun res!2940063 () Bool)

(assert (=> d!2252713 (=> (not res!2940063) (not e!4346257))))

(declare-fun lt!2583930 () Context!15144)

(declare-fun dynLambda!28716 (Int Context!15144) Bool)

(assert (=> d!2252713 (= res!2940063 (dynLambda!28716 lambda!443693 lt!2583930))))

(declare-fun getWitness!2184 (List!70478 Int) Context!15144)

(assert (=> d!2252713 (= lt!2583930 (getWitness!2184 (toList!11461 lt!2583871) lambda!443693))))

(assert (=> d!2252713 (exists!4342 lt!2583871 lambda!443693)))

(assert (=> d!2252713 (= (getWitness!2182 lt!2583871 lambda!443693) lt!2583930)))

(declare-fun b!7248623 () Bool)

(assert (=> b!7248623 (= e!4346257 (set.member lt!2583930 lt!2583871))))

(assert (= (and d!2252713 res!2940063) b!7248623))

(declare-fun b_lambda!278231 () Bool)

(assert (=> (not b_lambda!278231) (not d!2252713)))

(declare-fun m!7926540 () Bool)

(assert (=> d!2252713 m!7926540))

(assert (=> d!2252713 m!7926416))

(assert (=> d!2252713 m!7926416))

(declare-fun m!7926542 () Bool)

(assert (=> d!2252713 m!7926542))

(assert (=> d!2252713 m!7926410))

(declare-fun m!7926544 () Bool)

(assert (=> b!7248623 m!7926544))

(assert (=> b!7248532 d!2252713))

(declare-fun b!7248634 () Bool)

(declare-fun res!2940068 () Bool)

(declare-fun e!4346262 () Bool)

(assert (=> b!7248634 (=> (not res!2940068) (not e!4346262))))

(declare-fun lt!2583933 () List!70477)

(declare-fun size!41698 (List!70477) Int)

(assert (=> b!7248634 (= res!2940068 (= (size!41698 lt!2583933) (+ (size!41698 (t!384529 s1!1971)) (size!41698 s2!1849))))))

(declare-fun d!2252717 () Bool)

(assert (=> d!2252717 e!4346262))

(declare-fun res!2940069 () Bool)

(assert (=> d!2252717 (=> (not res!2940069) (not e!4346262))))

(declare-fun content!14583 (List!70477) (Set C!37538))

(assert (=> d!2252717 (= res!2940069 (= (content!14583 lt!2583933) (set.union (content!14583 (t!384529 s1!1971)) (content!14583 s2!1849))))))

(declare-fun e!4346263 () List!70477)

(assert (=> d!2252717 (= lt!2583933 e!4346263)))

(declare-fun c!1346759 () Bool)

(assert (=> d!2252717 (= c!1346759 (is-Nil!70353 (t!384529 s1!1971)))))

(assert (=> d!2252717 (= (++!16527 (t!384529 s1!1971) s2!1849) lt!2583933)))

(declare-fun b!7248633 () Bool)

(assert (=> b!7248633 (= e!4346263 (Cons!70353 (h!76801 (t!384529 s1!1971)) (++!16527 (t!384529 (t!384529 s1!1971)) s2!1849)))))

(declare-fun b!7248635 () Bool)

(assert (=> b!7248635 (= e!4346262 (or (not (= s2!1849 Nil!70353)) (= lt!2583933 (t!384529 s1!1971))))))

(declare-fun b!7248632 () Bool)

(assert (=> b!7248632 (= e!4346263 s2!1849)))

(assert (= (and d!2252717 c!1346759) b!7248632))

(assert (= (and d!2252717 (not c!1346759)) b!7248633))

(assert (= (and d!2252717 res!2940069) b!7248634))

(assert (= (and b!7248634 res!2940068) b!7248635))

(declare-fun m!7926546 () Bool)

(assert (=> b!7248634 m!7926546))

(declare-fun m!7926548 () Bool)

(assert (=> b!7248634 m!7926548))

(declare-fun m!7926550 () Bool)

(assert (=> b!7248634 m!7926550))

(declare-fun m!7926552 () Bool)

(assert (=> d!2252717 m!7926552))

(declare-fun m!7926554 () Bool)

(assert (=> d!2252717 m!7926554))

(declare-fun m!7926556 () Bool)

(assert (=> d!2252717 m!7926556))

(declare-fun m!7926558 () Bool)

(assert (=> b!7248633 m!7926558))

(assert (=> b!7248532 d!2252717))

(declare-fun b!7248636 () Bool)

(declare-fun e!4346264 () Bool)

(assert (=> b!7248636 (= e!4346264 (nullable!7895 (h!76800 (exprs!8072 ct1!232))))))

(declare-fun bm!660086 () Bool)

(declare-fun call!660091 () (Set Context!15144))

(assert (=> bm!660086 (= call!660091 (derivationStepZipperDown!2626 (h!76800 (exprs!8072 ct1!232)) (Context!15145 (t!384528 (exprs!8072 ct1!232))) (h!76801 s1!1971)))))

(declare-fun b!7248637 () Bool)

(declare-fun e!4346265 () (Set Context!15144))

(declare-fun e!4346266 () (Set Context!15144))

(assert (=> b!7248637 (= e!4346265 e!4346266)))

(declare-fun c!1346760 () Bool)

(assert (=> b!7248637 (= c!1346760 (is-Cons!70352 (exprs!8072 ct1!232)))))

(declare-fun d!2252719 () Bool)

(declare-fun c!1346761 () Bool)

(assert (=> d!2252719 (= c!1346761 e!4346264)))

(declare-fun res!2940070 () Bool)

(assert (=> d!2252719 (=> (not res!2940070) (not e!4346264))))

(assert (=> d!2252719 (= res!2940070 (is-Cons!70352 (exprs!8072 ct1!232)))))

(assert (=> d!2252719 (= (derivationStepZipperUp!2456 ct1!232 (h!76801 s1!1971)) e!4346265)))

(declare-fun b!7248638 () Bool)

(assert (=> b!7248638 (= e!4346265 (set.union call!660091 (derivationStepZipperUp!2456 (Context!15145 (t!384528 (exprs!8072 ct1!232))) (h!76801 s1!1971))))))

(declare-fun b!7248639 () Bool)

(assert (=> b!7248639 (= e!4346266 call!660091)))

(declare-fun b!7248640 () Bool)

(assert (=> b!7248640 (= e!4346266 (as set.empty (Set Context!15144)))))

(assert (= (and d!2252719 res!2940070) b!7248636))

(assert (= (and d!2252719 c!1346761) b!7248638))

(assert (= (and d!2252719 (not c!1346761)) b!7248637))

(assert (= (and b!7248637 c!1346760) b!7248639))

(assert (= (and b!7248637 (not c!1346760)) b!7248640))

(assert (= (or b!7248638 b!7248639) bm!660086))

(declare-fun m!7926560 () Bool)

(assert (=> b!7248636 m!7926560))

(declare-fun m!7926562 () Bool)

(assert (=> bm!660086 m!7926562))

(declare-fun m!7926564 () Bool)

(assert (=> b!7248638 m!7926564))

(assert (=> b!7248532 d!2252719))

(declare-fun d!2252721 () Bool)

(declare-fun c!1346762 () Bool)

(assert (=> d!2252721 (= c!1346762 (isEmpty!40517 (++!16527 (t!384529 s1!1971) s2!1849)))))

(declare-fun e!4346267 () Bool)

(assert (=> d!2252721 (= (matchZipper!3542 (set.insert (Context!15145 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328))) (as set.empty (Set Context!15144))) (++!16527 (t!384529 s1!1971) s2!1849)) e!4346267)))

(declare-fun b!7248641 () Bool)

(assert (=> b!7248641 (= e!4346267 (nullableZipper!2904 (set.insert (Context!15145 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328))) (as set.empty (Set Context!15144)))))))

(declare-fun b!7248642 () Bool)

(assert (=> b!7248642 (= e!4346267 (matchZipper!3542 (derivationStepZipper!3410 (set.insert (Context!15145 (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328))) (as set.empty (Set Context!15144))) (head!14893 (++!16527 (t!384529 s1!1971) s2!1849))) (tail!14300 (++!16527 (t!384529 s1!1971) s2!1849))))))

(assert (= (and d!2252721 c!1346762) b!7248641))

(assert (= (and d!2252721 (not c!1346762)) b!7248642))

(assert (=> d!2252721 m!7926390))

(declare-fun m!7926566 () Bool)

(assert (=> d!2252721 m!7926566))

(assert (=> b!7248641 m!7926396))

(declare-fun m!7926568 () Bool)

(assert (=> b!7248641 m!7926568))

(assert (=> b!7248642 m!7926390))

(declare-fun m!7926570 () Bool)

(assert (=> b!7248642 m!7926570))

(assert (=> b!7248642 m!7926396))

(assert (=> b!7248642 m!7926570))

(declare-fun m!7926572 () Bool)

(assert (=> b!7248642 m!7926572))

(assert (=> b!7248642 m!7926390))

(declare-fun m!7926574 () Bool)

(assert (=> b!7248642 m!7926574))

(assert (=> b!7248642 m!7926572))

(assert (=> b!7248642 m!7926574))

(declare-fun m!7926576 () Bool)

(assert (=> b!7248642 m!7926576))

(assert (=> b!7248532 d!2252721))

(declare-fun e!4346276 () Bool)

(declare-fun b!7248660 () Bool)

(declare-fun lt!2583936 () List!70476)

(assert (=> b!7248660 (= e!4346276 (or (not (= (exprs!8072 ct2!328) Nil!70352)) (= lt!2583936 (exprs!8072 lt!2583867))))))

(declare-fun b!7248658 () Bool)

(declare-fun e!4346275 () List!70476)

(assert (=> b!7248658 (= e!4346275 (Cons!70352 (h!76800 (exprs!8072 lt!2583867)) (++!16526 (t!384528 (exprs!8072 lt!2583867)) (exprs!8072 ct2!328))))))

(declare-fun d!2252723 () Bool)

(assert (=> d!2252723 e!4346276))

(declare-fun res!2940076 () Bool)

(assert (=> d!2252723 (=> (not res!2940076) (not e!4346276))))

(declare-fun content!14584 (List!70476) (Set Regex!18632))

(assert (=> d!2252723 (= res!2940076 (= (content!14584 lt!2583936) (set.union (content!14584 (exprs!8072 lt!2583867)) (content!14584 (exprs!8072 ct2!328)))))))

(assert (=> d!2252723 (= lt!2583936 e!4346275)))

(declare-fun c!1346768 () Bool)

(assert (=> d!2252723 (= c!1346768 (is-Nil!70352 (exprs!8072 lt!2583867)))))

(assert (=> d!2252723 (= (++!16526 (exprs!8072 lt!2583867) (exprs!8072 ct2!328)) lt!2583936)))

(declare-fun b!7248657 () Bool)

(assert (=> b!7248657 (= e!4346275 (exprs!8072 ct2!328))))

(declare-fun b!7248659 () Bool)

(declare-fun res!2940075 () Bool)

(assert (=> b!7248659 (=> (not res!2940075) (not e!4346276))))

(declare-fun size!41699 (List!70476) Int)

(assert (=> b!7248659 (= res!2940075 (= (size!41699 lt!2583936) (+ (size!41699 (exprs!8072 lt!2583867)) (size!41699 (exprs!8072 ct2!328)))))))

(assert (= (and d!2252723 c!1346768) b!7248657))

(assert (= (and d!2252723 (not c!1346768)) b!7248658))

(assert (= (and d!2252723 res!2940076) b!7248659))

(assert (= (and b!7248659 res!2940075) b!7248660))

(declare-fun m!7926588 () Bool)

(assert (=> b!7248658 m!7926588))

(declare-fun m!7926590 () Bool)

(assert (=> d!2252723 m!7926590))

(declare-fun m!7926592 () Bool)

(assert (=> d!2252723 m!7926592))

(declare-fun m!7926594 () Bool)

(assert (=> d!2252723 m!7926594))

(declare-fun m!7926598 () Bool)

(assert (=> b!7248659 m!7926598))

(declare-fun m!7926600 () Bool)

(assert (=> b!7248659 m!7926600))

(declare-fun m!7926602 () Bool)

(assert (=> b!7248659 m!7926602))

(assert (=> b!7248532 d!2252723))

(declare-fun d!2252725 () Bool)

(declare-fun lt!2583939 () Bool)

(assert (=> d!2252725 (= lt!2583939 (exists!4343 (toList!11461 lt!2583871) lambda!443693))))

(declare-fun choose!55964 ((Set Context!15144) Int) Bool)

(assert (=> d!2252725 (= lt!2583939 (choose!55964 lt!2583871 lambda!443693))))

(assert (=> d!2252725 (= (exists!4342 lt!2583871 lambda!443693) lt!2583939)))

(declare-fun bs!1905704 () Bool)

(assert (= bs!1905704 d!2252725))

(assert (=> bs!1905704 m!7926416))

(assert (=> bs!1905704 m!7926416))

(declare-fun m!7926604 () Bool)

(assert (=> bs!1905704 m!7926604))

(declare-fun m!7926606 () Bool)

(assert (=> bs!1905704 m!7926606))

(assert (=> b!7248527 d!2252725))

(declare-fun bs!1905705 () Bool)

(declare-fun d!2252729 () Bool)

(assert (= bs!1905705 (and d!2252729 b!7248527)))

(declare-fun lambda!443722 () Int)

(assert (=> bs!1905705 (not (= lambda!443722 lambda!443693))))

(assert (=> d!2252729 true))

(declare-fun order!28959 () Int)

(declare-fun dynLambda!28717 (Int Int) Int)

(assert (=> d!2252729 (< (dynLambda!28717 order!28959 lambda!443693) (dynLambda!28717 order!28959 lambda!443722))))

(declare-fun forall!17475 (List!70478 Int) Bool)

(assert (=> d!2252729 (= (exists!4343 lt!2583860 lambda!443693) (not (forall!17475 lt!2583860 lambda!443722)))))

(declare-fun bs!1905706 () Bool)

(assert (= bs!1905706 d!2252729))

(declare-fun m!7926608 () Bool)

(assert (=> bs!1905706 m!7926608))

(assert (=> b!7248527 d!2252729))

(declare-fun bs!1905712 () Bool)

(declare-fun d!2252731 () Bool)

(assert (= bs!1905712 (and d!2252731 b!7248527)))

(declare-fun lambda!443727 () Int)

(assert (=> bs!1905712 (= lambda!443727 lambda!443693)))

(declare-fun bs!1905713 () Bool)

(assert (= bs!1905713 (and d!2252731 d!2252729)))

(assert (=> bs!1905713 (not (= lambda!443727 lambda!443722))))

(assert (=> d!2252731 true))

(assert (=> d!2252731 (exists!4343 lt!2583860 lambda!443727)))

(declare-fun lt!2583942 () Unit!163848)

(declare-fun choose!55965 (List!70478 List!70477) Unit!163848)

(assert (=> d!2252731 (= lt!2583942 (choose!55965 lt!2583860 (t!384529 s1!1971)))))

(declare-fun content!14585 (List!70478) (Set Context!15144))

(assert (=> d!2252731 (matchZipper!3542 (content!14585 lt!2583860) (t!384529 s1!1971))))

(assert (=> d!2252731 (= (lemmaZipperMatchesExistsMatchingContext!735 lt!2583860 (t!384529 s1!1971)) lt!2583942)))

(declare-fun bs!1905714 () Bool)

(assert (= bs!1905714 d!2252731))

(declare-fun m!7926614 () Bool)

(assert (=> bs!1905714 m!7926614))

(declare-fun m!7926616 () Bool)

(assert (=> bs!1905714 m!7926616))

(declare-fun m!7926618 () Bool)

(assert (=> bs!1905714 m!7926618))

(assert (=> bs!1905714 m!7926618))

(declare-fun m!7926620 () Bool)

(assert (=> bs!1905714 m!7926620))

(assert (=> b!7248527 d!2252731))

(declare-fun d!2252737 () Bool)

(declare-fun e!4346279 () Bool)

(assert (=> d!2252737 e!4346279))

(declare-fun res!2940079 () Bool)

(assert (=> d!2252737 (=> (not res!2940079) (not e!4346279))))

(declare-fun lt!2583945 () List!70478)

(declare-fun noDuplicate!2981 (List!70478) Bool)

(assert (=> d!2252737 (= res!2940079 (noDuplicate!2981 lt!2583945))))

(declare-fun choose!55966 ((Set Context!15144)) List!70478)

(assert (=> d!2252737 (= lt!2583945 (choose!55966 lt!2583871))))

(assert (=> d!2252737 (= (toList!11461 lt!2583871) lt!2583945)))

(declare-fun b!7248665 () Bool)

(assert (=> b!7248665 (= e!4346279 (= (content!14585 lt!2583945) lt!2583871))))

(assert (= (and d!2252737 res!2940079) b!7248665))

(declare-fun m!7926622 () Bool)

(assert (=> d!2252737 m!7926622))

(declare-fun m!7926624 () Bool)

(assert (=> d!2252737 m!7926624))

(declare-fun m!7926626 () Bool)

(assert (=> b!7248665 m!7926626))

(assert (=> b!7248527 d!2252737))

(declare-fun lt!2583946 () List!70476)

(declare-fun b!7248669 () Bool)

(declare-fun e!4346281 () Bool)

(assert (=> b!7248669 (= e!4346281 (or (not (= (exprs!8072 ct2!328) Nil!70352)) (= lt!2583946 (exprs!8072 ct1!232))))))

(declare-fun b!7248667 () Bool)

(declare-fun e!4346280 () List!70476)

(assert (=> b!7248667 (= e!4346280 (Cons!70352 (h!76800 (exprs!8072 ct1!232)) (++!16526 (t!384528 (exprs!8072 ct1!232)) (exprs!8072 ct2!328))))))

(declare-fun d!2252739 () Bool)

(assert (=> d!2252739 e!4346281))

(declare-fun res!2940081 () Bool)

(assert (=> d!2252739 (=> (not res!2940081) (not e!4346281))))

(assert (=> d!2252739 (= res!2940081 (= (content!14584 lt!2583946) (set.union (content!14584 (exprs!8072 ct1!232)) (content!14584 (exprs!8072 ct2!328)))))))

(assert (=> d!2252739 (= lt!2583946 e!4346280)))

(declare-fun c!1346771 () Bool)

(assert (=> d!2252739 (= c!1346771 (is-Nil!70352 (exprs!8072 ct1!232)))))

(assert (=> d!2252739 (= (++!16526 (exprs!8072 ct1!232) (exprs!8072 ct2!328)) lt!2583946)))

(declare-fun b!7248666 () Bool)

(assert (=> b!7248666 (= e!4346280 (exprs!8072 ct2!328))))

(declare-fun b!7248668 () Bool)

(declare-fun res!2940080 () Bool)

(assert (=> b!7248668 (=> (not res!2940080) (not e!4346281))))

(assert (=> b!7248668 (= res!2940080 (= (size!41699 lt!2583946) (+ (size!41699 (exprs!8072 ct1!232)) (size!41699 (exprs!8072 ct2!328)))))))

(assert (= (and d!2252739 c!1346771) b!7248666))

(assert (= (and d!2252739 (not c!1346771)) b!7248667))

(assert (= (and d!2252739 res!2940081) b!7248668))

(assert (= (and b!7248668 res!2940080) b!7248669))

(declare-fun m!7926628 () Bool)

(assert (=> b!7248667 m!7926628))

(declare-fun m!7926630 () Bool)

(assert (=> d!2252739 m!7926630))

(declare-fun m!7926632 () Bool)

(assert (=> d!2252739 m!7926632))

(assert (=> d!2252739 m!7926594))

(declare-fun m!7926634 () Bool)

(assert (=> b!7248668 m!7926634))

(declare-fun m!7926636 () Bool)

(assert (=> b!7248668 m!7926636))

(assert (=> b!7248668 m!7926602))

(assert (=> b!7248526 d!2252739))

(assert (=> b!7248526 d!2252701))

(declare-fun d!2252741 () Bool)

(declare-fun c!1346772 () Bool)

(assert (=> d!2252741 (= c!1346772 (isEmpty!40517 s1!1971))))

(declare-fun e!4346282 () Bool)

(assert (=> d!2252741 (= (matchZipper!3542 lt!2583859 s1!1971) e!4346282)))

(declare-fun b!7248670 () Bool)

(assert (=> b!7248670 (= e!4346282 (nullableZipper!2904 lt!2583859))))

(declare-fun b!7248671 () Bool)

(assert (=> b!7248671 (= e!4346282 (matchZipper!3542 (derivationStepZipper!3410 lt!2583859 (head!14893 s1!1971)) (tail!14300 s1!1971)))))

(assert (= (and d!2252741 c!1346772) b!7248670))

(assert (= (and d!2252741 (not c!1346772)) b!7248671))

(declare-fun m!7926638 () Bool)

(assert (=> d!2252741 m!7926638))

(declare-fun m!7926640 () Bool)

(assert (=> b!7248670 m!7926640))

(declare-fun m!7926642 () Bool)

(assert (=> b!7248671 m!7926642))

(assert (=> b!7248671 m!7926642))

(declare-fun m!7926644 () Bool)

(assert (=> b!7248671 m!7926644))

(declare-fun m!7926646 () Bool)

(assert (=> b!7248671 m!7926646))

(assert (=> b!7248671 m!7926644))

(assert (=> b!7248671 m!7926646))

(declare-fun m!7926648 () Bool)

(assert (=> b!7248671 m!7926648))

(assert (=> start!705198 d!2252741))

(declare-fun bs!1905715 () Bool)

(declare-fun d!2252743 () Bool)

(assert (= bs!1905715 (and d!2252743 b!7248526)))

(declare-fun lambda!443728 () Int)

(assert (=> bs!1905715 (= lambda!443728 lambda!443692)))

(declare-fun bs!1905716 () Bool)

(assert (= bs!1905716 (and d!2252743 d!2252703)))

(assert (=> bs!1905716 (= lambda!443728 lambda!443714)))

(declare-fun bs!1905717 () Bool)

(assert (= bs!1905717 (and d!2252743 d!2252711)))

(assert (=> bs!1905717 (= lambda!443728 lambda!443717)))

(assert (=> d!2252743 (= (inv!89591 ct1!232) (forall!17474 (exprs!8072 ct1!232) lambda!443728))))

(declare-fun bs!1905718 () Bool)

(assert (= bs!1905718 d!2252743))

(declare-fun m!7926650 () Bool)

(assert (=> bs!1905718 m!7926650))

(assert (=> start!705198 d!2252743))

(declare-fun bs!1905719 () Bool)

(declare-fun d!2252745 () Bool)

(assert (= bs!1905719 (and d!2252745 b!7248526)))

(declare-fun lambda!443729 () Int)

(assert (=> bs!1905719 (= lambda!443729 lambda!443692)))

(declare-fun bs!1905720 () Bool)

(assert (= bs!1905720 (and d!2252745 d!2252703)))

(assert (=> bs!1905720 (= lambda!443729 lambda!443714)))

(declare-fun bs!1905721 () Bool)

(assert (= bs!1905721 (and d!2252745 d!2252711)))

(assert (=> bs!1905721 (= lambda!443729 lambda!443717)))

(declare-fun bs!1905722 () Bool)

(assert (= bs!1905722 (and d!2252745 d!2252743)))

(assert (=> bs!1905722 (= lambda!443729 lambda!443728)))

(assert (=> d!2252745 (= (inv!89591 ct2!328) (forall!17474 (exprs!8072 ct2!328) lambda!443729))))

(declare-fun bs!1905723 () Bool)

(assert (= bs!1905723 d!2252745))

(declare-fun m!7926652 () Bool)

(assert (=> bs!1905723 m!7926652))

(assert (=> start!705198 d!2252745))

(declare-fun d!2252747 () Bool)

(declare-fun c!1346775 () Bool)

(assert (=> d!2252747 (= c!1346775 (isEmpty!40517 (t!384529 s1!1971)))))

(declare-fun e!4346287 () Bool)

(assert (=> d!2252747 (= (matchZipper!3542 lt!2583871 (t!384529 s1!1971)) e!4346287)))

(declare-fun b!7248678 () Bool)

(assert (=> b!7248678 (= e!4346287 (nullableZipper!2904 lt!2583871))))

(declare-fun b!7248679 () Bool)

(assert (=> b!7248679 (= e!4346287 (matchZipper!3542 (derivationStepZipper!3410 lt!2583871 (head!14893 (t!384529 s1!1971))) (tail!14300 (t!384529 s1!1971))))))

(assert (= (and d!2252747 c!1346775) b!7248678))

(assert (= (and d!2252747 (not c!1346775)) b!7248679))

(declare-fun m!7926654 () Bool)

(assert (=> d!2252747 m!7926654))

(declare-fun m!7926656 () Bool)

(assert (=> b!7248678 m!7926656))

(declare-fun m!7926658 () Bool)

(assert (=> b!7248679 m!7926658))

(assert (=> b!7248679 m!7926658))

(declare-fun m!7926660 () Bool)

(assert (=> b!7248679 m!7926660))

(declare-fun m!7926662 () Bool)

(assert (=> b!7248679 m!7926662))

(assert (=> b!7248679 m!7926660))

(assert (=> b!7248679 m!7926662))

(declare-fun m!7926664 () Bool)

(assert (=> b!7248679 m!7926664))

(assert (=> b!7248528 d!2252747))

(declare-fun d!2252749 () Bool)

(assert (=> d!2252749 true))

(declare-fun lambda!443732 () Int)

(declare-fun flatMap!2798 ((Set Context!15144) Int) (Set Context!15144))

(assert (=> d!2252749 (= (derivationStepZipper!3410 lt!2583859 (h!76801 s1!1971)) (flatMap!2798 lt!2583859 lambda!443732))))

(declare-fun bs!1905724 () Bool)

(assert (= bs!1905724 d!2252749))

(declare-fun m!7926666 () Bool)

(assert (=> bs!1905724 m!7926666))

(assert (=> b!7248528 d!2252749))

(declare-fun b!7248688 () Bool)

(declare-fun e!4346290 () Bool)

(declare-fun tp!2037095 () Bool)

(declare-fun tp!2037096 () Bool)

(assert (=> b!7248688 (= e!4346290 (and tp!2037095 tp!2037096))))

(assert (=> b!7248524 (= tp!2037077 e!4346290)))

(assert (= (and b!7248524 (is-Cons!70352 (exprs!8072 ct1!232))) b!7248688))

(declare-fun b!7248693 () Bool)

(declare-fun e!4346293 () Bool)

(declare-fun tp!2037099 () Bool)

(assert (=> b!7248693 (= e!4346293 (and tp_is_empty!46729 tp!2037099))))

(assert (=> b!7248531 (= tp!2037075 e!4346293)))

(assert (= (and b!7248531 (is-Cons!70353 (t!384529 s1!1971))) b!7248693))

(declare-fun b!7248694 () Bool)

(declare-fun e!4346294 () Bool)

(declare-fun tp!2037100 () Bool)

(assert (=> b!7248694 (= e!4346294 (and tp_is_empty!46729 tp!2037100))))

(assert (=> b!7248530 (= tp!2037078 e!4346294)))

(assert (= (and b!7248530 (is-Cons!70353 (t!384529 s2!1849))) b!7248694))

(declare-fun b!7248695 () Bool)

(declare-fun e!4346295 () Bool)

(declare-fun tp!2037101 () Bool)

(declare-fun tp!2037102 () Bool)

(assert (=> b!7248695 (= e!4346295 (and tp!2037101 tp!2037102))))

(assert (=> b!7248523 (= tp!2037076 e!4346295)))

(assert (= (and b!7248523 (is-Cons!70352 (exprs!8072 ct2!328))) b!7248695))

(declare-fun b_lambda!278233 () Bool)

(assert (= b_lambda!278231 (or b!7248527 b_lambda!278233)))

(declare-fun bs!1905725 () Bool)

(declare-fun d!2252751 () Bool)

(assert (= bs!1905725 (and d!2252751 b!7248527)))

(assert (=> bs!1905725 (= (dynLambda!28716 lambda!443693 lt!2583930) (matchZipper!3542 (set.insert lt!2583930 (as set.empty (Set Context!15144))) (t!384529 s1!1971)))))

(declare-fun m!7926668 () Bool)

(assert (=> bs!1905725 m!7926668))

(assert (=> bs!1905725 m!7926668))

(declare-fun m!7926670 () Bool)

(assert (=> bs!1905725 m!7926670))

(assert (=> d!2252713 d!2252751))

(push 1)

(assert (not d!2252713))

(assert (not b!7248571))

(assert (not bm!660085))

(assert (not b!7248658))

(assert (not d!2252703))

(assert (not b_lambda!278233))

(assert (not d!2252745))

(assert (not b!7248679))

(assert (not b!7248695))

(assert (not b!7248670))

(assert (not b!7248659))

(assert (not d!2252739))

(assert (not d!2252729))

(assert (not d!2252749))

(assert (not bs!1905725))

(assert (not b!7248642))

(assert (not b!7248665))

(assert (not bm!660083))

(assert (not b!7248694))

(assert (not b!7248678))

(assert (not d!2252743))

(assert (not b!7248638))

(assert (not d!2252717))

(assert (not b!7248634))

(assert (not d!2252747))

(assert (not b!7248583))

(assert (not b!7248633))

(assert (not d!2252731))

(assert (not d!2252723))

(assert (not bm!660067))

(assert (not b!7248617))

(assert (not d!2252725))

(assert (not bm!660086))

(assert (not b!7248688))

(assert tp_is_empty!46729)

(assert (not b!7248668))

(assert (not b!7248667))

(assert (not d!2252741))

(assert (not d!2252737))

(assert (not b!7248572))

(assert (not d!2252695))

(assert (not b!7248671))

(assert (not d!2252711))

(assert (not d!2252721))

(assert (not b!7248585))

(assert (not d!2252707))

(assert (not bm!660082))

(assert (not b!7248636))

(assert (not b!7248641))

(assert (not d!2252701))

(assert (not b!7248693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

