; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697512 () Bool)

(assert start!697512)

(declare-fun b!7156154 () Bool)

(declare-fun e!4298885 () Bool)

(declare-fun tp!1978804 () Bool)

(assert (=> b!7156154 (= e!4298885 tp!1978804)))

(declare-fun tp!1978805 () Bool)

(declare-fun b!7156155 () Bool)

(declare-fun e!4298882 () Bool)

(declare-fun e!4298883 () Bool)

(declare-datatypes ((C!36818 0))(
  ( (C!36819 (val!28357 Int)) )
))
(declare-datatypes ((Regex!18272 0))(
  ( (ElementMatch!18272 (c!1333617 C!36818)) (Concat!27117 (regOne!37056 Regex!18272) (regTwo!37056 Regex!18272)) (EmptyExpr!18272) (Star!18272 (reg!18601 Regex!18272)) (EmptyLang!18272) (Union!18272 (regOne!37057 Regex!18272) (regTwo!37057 Regex!18272)) )
))
(declare-datatypes ((List!69580 0))(
  ( (Nil!69456) (Cons!69456 (h!75904 Regex!18272) (t!383597 List!69580)) )
))
(declare-datatypes ((Context!14448 0))(
  ( (Context!14449 (exprs!7724 List!69580)) )
))
(declare-datatypes ((List!69581 0))(
  ( (Nil!69457) (Cons!69457 (h!75905 Context!14448) (t!383598 List!69581)) )
))
(declare-fun zl!300 () List!69581)

(declare-fun inv!88703 (Context!14448) Bool)

(assert (=> b!7156155 (= e!4298883 (and (inv!88703 (h!75905 zl!300)) e!4298882 tp!1978805))))

(declare-fun res!2917916 () Bool)

(declare-fun e!4298884 () Bool)

(assert (=> start!697512 (=> (not res!2917916) (not e!4298884))))

(declare-fun c!7723 () Context!14448)

(declare-fun contains!20664 (List!69581 Context!14448) Bool)

(assert (=> start!697512 (= res!2917916 (contains!20664 zl!300 c!7723))))

(assert (=> start!697512 e!4298884))

(assert (=> start!697512 e!4298883))

(assert (=> start!697512 (and (inv!88703 c!7723) e!4298885)))

(declare-fun b!7156156 () Bool)

(declare-fun tp!1978806 () Bool)

(assert (=> b!7156156 (= e!4298882 tp!1978806)))

(declare-fun b!7156157 () Bool)

(declare-fun res!2917917 () Bool)

(assert (=> b!7156157 (=> (not res!2917917) (not e!4298884))))

(assert (=> b!7156157 (= res!2917917 (and (is-Cons!69457 zl!300) (= (h!75905 zl!300) c!7723)))))

(declare-fun b!7156158 () Bool)

(declare-fun lambda!436404 () Int)

(declare-fun forall!17110 (List!69580 Int) Bool)

(assert (=> b!7156158 (= e!4298884 (not (forall!17110 (exprs!7724 c!7723) lambda!436404)))))

(declare-fun lt!2569234 () List!69580)

(declare-fun unfocusZipperList!2269 (List!69581) List!69580)

(assert (=> b!7156158 (= lt!2569234 (unfocusZipperList!2269 zl!300))))

(assert (= (and start!697512 res!2917916) b!7156157))

(assert (= (and b!7156157 res!2917917) b!7156158))

(assert (= b!7156155 b!7156156))

(assert (= (and start!697512 (is-Cons!69457 zl!300)) b!7156155))

(assert (= start!697512 b!7156154))

(declare-fun m!7862872 () Bool)

(assert (=> b!7156155 m!7862872))

(declare-fun m!7862874 () Bool)

(assert (=> start!697512 m!7862874))

(declare-fun m!7862876 () Bool)

(assert (=> start!697512 m!7862876))

(declare-fun m!7862878 () Bool)

(assert (=> b!7156158 m!7862878))

(declare-fun m!7862880 () Bool)

(assert (=> b!7156158 m!7862880))

(push 1)

(assert (not b!7156155))

(assert (not b!7156156))

(assert (not b!7156154))

(assert (not b!7156158))

(assert (not start!697512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1889892 () Bool)

(declare-fun d!2229643 () Bool)

(assert (= bs!1889892 (and d!2229643 b!7156158)))

(declare-fun lambda!436410 () Int)

(assert (=> bs!1889892 (= lambda!436410 lambda!436404)))

(assert (=> d!2229643 (= (inv!88703 (h!75905 zl!300)) (forall!17110 (exprs!7724 (h!75905 zl!300)) lambda!436410))))

(declare-fun bs!1889893 () Bool)

(assert (= bs!1889893 d!2229643))

(declare-fun m!7862892 () Bool)

(assert (=> bs!1889893 m!7862892))

(assert (=> b!7156155 d!2229643))

(declare-fun d!2229645 () Bool)

(declare-fun res!2917928 () Bool)

(declare-fun e!4298902 () Bool)

(assert (=> d!2229645 (=> res!2917928 e!4298902)))

(assert (=> d!2229645 (= res!2917928 (is-Nil!69456 (exprs!7724 c!7723)))))

(assert (=> d!2229645 (= (forall!17110 (exprs!7724 c!7723) lambda!436404) e!4298902)))

(declare-fun b!7156178 () Bool)

(declare-fun e!4298903 () Bool)

(assert (=> b!7156178 (= e!4298902 e!4298903)))

(declare-fun res!2917929 () Bool)

(assert (=> b!7156178 (=> (not res!2917929) (not e!4298903))))

(declare-fun dynLambda!28308 (Int Regex!18272) Bool)

(assert (=> b!7156178 (= res!2917929 (dynLambda!28308 lambda!436404 (h!75904 (exprs!7724 c!7723))))))

(declare-fun b!7156179 () Bool)

(assert (=> b!7156179 (= e!4298903 (forall!17110 (t!383597 (exprs!7724 c!7723)) lambda!436404))))

(assert (= (and d!2229645 (not res!2917928)) b!7156178))

(assert (= (and b!7156178 res!2917929) b!7156179))

(declare-fun b_lambda!273339 () Bool)

(assert (=> (not b_lambda!273339) (not b!7156178)))

(declare-fun m!7862894 () Bool)

(assert (=> b!7156178 m!7862894))

(declare-fun m!7862896 () Bool)

(assert (=> b!7156179 m!7862896))

(assert (=> b!7156158 d!2229645))

(declare-fun bs!1889894 () Bool)

(declare-fun d!2229647 () Bool)

(assert (= bs!1889894 (and d!2229647 b!7156158)))

(declare-fun lambda!436413 () Int)

(assert (=> bs!1889894 (= lambda!436413 lambda!436404)))

(declare-fun bs!1889895 () Bool)

(assert (= bs!1889895 (and d!2229647 d!2229643)))

(assert (=> bs!1889895 (= lambda!436413 lambda!436410)))

(declare-fun lt!2569240 () List!69580)

(assert (=> d!2229647 (forall!17110 lt!2569240 lambda!436413)))

(declare-fun e!4298906 () List!69580)

(assert (=> d!2229647 (= lt!2569240 e!4298906)))

(declare-fun c!1333621 () Bool)

(assert (=> d!2229647 (= c!1333621 (is-Cons!69457 zl!300))))

(assert (=> d!2229647 (= (unfocusZipperList!2269 zl!300) lt!2569240)))

(declare-fun b!7156184 () Bool)

(declare-fun generalisedConcat!2425 (List!69580) Regex!18272)

(assert (=> b!7156184 (= e!4298906 (Cons!69456 (generalisedConcat!2425 (exprs!7724 (h!75905 zl!300))) (unfocusZipperList!2269 (t!383598 zl!300))))))

(declare-fun b!7156185 () Bool)

(assert (=> b!7156185 (= e!4298906 Nil!69456)))

(assert (= (and d!2229647 c!1333621) b!7156184))

(assert (= (and d!2229647 (not c!1333621)) b!7156185))

(declare-fun m!7862898 () Bool)

(assert (=> d!2229647 m!7862898))

(declare-fun m!7862900 () Bool)

(assert (=> b!7156184 m!7862900))

(declare-fun m!7862902 () Bool)

(assert (=> b!7156184 m!7862902))

(assert (=> b!7156158 d!2229647))

(declare-fun d!2229649 () Bool)

(declare-fun lt!2569243 () Bool)

(declare-fun content!14248 (List!69581) (Set Context!14448))

(assert (=> d!2229649 (= lt!2569243 (set.member c!7723 (content!14248 zl!300)))))

(declare-fun e!4298911 () Bool)

(assert (=> d!2229649 (= lt!2569243 e!4298911)))

(declare-fun res!2917935 () Bool)

(assert (=> d!2229649 (=> (not res!2917935) (not e!4298911))))

(assert (=> d!2229649 (= res!2917935 (is-Cons!69457 zl!300))))

(assert (=> d!2229649 (= (contains!20664 zl!300 c!7723) lt!2569243)))

(declare-fun b!7156190 () Bool)

(declare-fun e!4298912 () Bool)

(assert (=> b!7156190 (= e!4298911 e!4298912)))

(declare-fun res!2917934 () Bool)

(assert (=> b!7156190 (=> res!2917934 e!4298912)))

(assert (=> b!7156190 (= res!2917934 (= (h!75905 zl!300) c!7723))))

(declare-fun b!7156191 () Bool)

(assert (=> b!7156191 (= e!4298912 (contains!20664 (t!383598 zl!300) c!7723))))

(assert (= (and d!2229649 res!2917935) b!7156190))

(assert (= (and b!7156190 (not res!2917934)) b!7156191))

(declare-fun m!7862904 () Bool)

(assert (=> d!2229649 m!7862904))

(declare-fun m!7862906 () Bool)

(assert (=> d!2229649 m!7862906))

(declare-fun m!7862908 () Bool)

(assert (=> b!7156191 m!7862908))

(assert (=> start!697512 d!2229649))

(declare-fun bs!1889896 () Bool)

(declare-fun d!2229653 () Bool)

(assert (= bs!1889896 (and d!2229653 b!7156158)))

(declare-fun lambda!436414 () Int)

(assert (=> bs!1889896 (= lambda!436414 lambda!436404)))

(declare-fun bs!1889897 () Bool)

(assert (= bs!1889897 (and d!2229653 d!2229643)))

(assert (=> bs!1889897 (= lambda!436414 lambda!436410)))

(declare-fun bs!1889898 () Bool)

(assert (= bs!1889898 (and d!2229653 d!2229647)))

(assert (=> bs!1889898 (= lambda!436414 lambda!436413)))

(assert (=> d!2229653 (= (inv!88703 c!7723) (forall!17110 (exprs!7724 c!7723) lambda!436414))))

(declare-fun bs!1889899 () Bool)

(assert (= bs!1889899 d!2229653))

(declare-fun m!7862910 () Bool)

(assert (=> bs!1889899 m!7862910))

(assert (=> start!697512 d!2229653))

(declare-fun b!7156199 () Bool)

(declare-fun e!4298918 () Bool)

(declare-fun tp!1978820 () Bool)

(assert (=> b!7156199 (= e!4298918 tp!1978820)))

(declare-fun b!7156198 () Bool)

(declare-fun tp!1978821 () Bool)

(declare-fun e!4298917 () Bool)

(assert (=> b!7156198 (= e!4298917 (and (inv!88703 (h!75905 (t!383598 zl!300))) e!4298918 tp!1978821))))

(assert (=> b!7156155 (= tp!1978805 e!4298917)))

(assert (= b!7156198 b!7156199))

(assert (= (and b!7156155 (is-Cons!69457 (t!383598 zl!300))) b!7156198))

(declare-fun m!7862912 () Bool)

(assert (=> b!7156198 m!7862912))

(declare-fun b!7156204 () Bool)

(declare-fun e!4298921 () Bool)

(declare-fun tp!1978826 () Bool)

(declare-fun tp!1978827 () Bool)

(assert (=> b!7156204 (= e!4298921 (and tp!1978826 tp!1978827))))

(assert (=> b!7156156 (= tp!1978806 e!4298921)))

(assert (= (and b!7156156 (is-Cons!69456 (exprs!7724 (h!75905 zl!300)))) b!7156204))

(declare-fun b!7156205 () Bool)

(declare-fun e!4298922 () Bool)

(declare-fun tp!1978828 () Bool)

(declare-fun tp!1978829 () Bool)

(assert (=> b!7156205 (= e!4298922 (and tp!1978828 tp!1978829))))

(assert (=> b!7156154 (= tp!1978804 e!4298922)))

(assert (= (and b!7156154 (is-Cons!69456 (exprs!7724 c!7723))) b!7156205))

(declare-fun b_lambda!273341 () Bool)

(assert (= b_lambda!273339 (or b!7156158 b_lambda!273341)))

(declare-fun bs!1889900 () Bool)

(declare-fun d!2229655 () Bool)

(assert (= bs!1889900 (and d!2229655 b!7156158)))

(declare-fun validRegex!9415 (Regex!18272) Bool)

(assert (=> bs!1889900 (= (dynLambda!28308 lambda!436404 (h!75904 (exprs!7724 c!7723))) (validRegex!9415 (h!75904 (exprs!7724 c!7723))))))

(declare-fun m!7862914 () Bool)

(assert (=> bs!1889900 m!7862914))

(assert (=> b!7156178 d!2229655))

(push 1)

(assert (not b!7156198))

(assert (not bs!1889900))

(assert (not b!7156199))

(assert (not d!2229647))

(assert (not d!2229653))

(assert (not b!7156205))

(assert (not b!7156191))

(assert (not d!2229643))

(assert (not b!7156204))

(assert (not b!7156184))

(assert (not d!2229649))

(assert (not b!7156179))

(assert (not b_lambda!273341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

