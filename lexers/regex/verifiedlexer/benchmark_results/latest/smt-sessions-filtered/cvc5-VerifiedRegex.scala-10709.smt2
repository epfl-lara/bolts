; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548790 () Bool)

(assert start!548790)

(declare-datatypes ((C!29598 0))(
  ( (C!29599 (val!24501 Int)) )
))
(declare-datatypes ((Regex!14664 0))(
  ( (ElementMatch!14664 (c!893191 C!29598)) (Concat!23509 (regOne!29840 Regex!14664) (regTwo!29840 Regex!14664)) (EmptyExpr!14664) (Star!14664 (reg!14993 Regex!14664)) (EmptyLang!14664) (Union!14664 (regOne!29841 Regex!14664) (regTwo!29841 Regex!14664)) )
))
(declare-datatypes ((List!60307 0))(
  ( (Nil!60183) (Cons!60183 (h!66631 Regex!14664) (t!373460 List!60307)) )
))
(declare-datatypes ((Context!8096 0))(
  ( (Context!8097 (exprs!4548 List!60307)) )
))
(declare-fun setElem!32441 () Context!8096)

(declare-fun tp!1453258 () Bool)

(declare-fun setRes!32441 () Bool)

(declare-fun setNonEmpty!32441 () Bool)

(declare-fun e!3228634 () Bool)

(declare-fun inv!79908 (Context!8096) Bool)

(assert (=> setNonEmpty!32441 (= setRes!32441 (and tp!1453258 (inv!79908 setElem!32441) e!3228634))))

(declare-fun z!4803 () (Set Context!8096))

(declare-fun setRest!32441 () (Set Context!8096))

(assert (=> setNonEmpty!32441 (= z!4803 (set.union (set.insert setElem!32441 (as set.empty (Set Context!8096))) setRest!32441))))

(declare-fun setIsEmpty!32441 () Bool)

(assert (=> setIsEmpty!32441 setRes!32441))

(declare-fun b!5182076 () Bool)

(declare-fun e!3228635 () Bool)

(declare-fun tp_is_empty!38581 () Bool)

(declare-fun tp!1453259 () Bool)

(assert (=> b!5182076 (= e!3228635 (and tp_is_empty!38581 tp!1453259))))

(declare-fun b!5182078 () Bool)

(declare-fun tp!1453260 () Bool)

(assert (=> b!5182078 (= e!3228634 tp!1453260)))

(declare-fun b!5182077 () Bool)

(declare-fun e!3228633 () Bool)

(declare-datatypes ((List!60308 0))(
  ( (Nil!60184) (Cons!60184 (h!66632 C!29598) (t!373461 List!60308)) )
))
(declare-fun input!5922 () List!60308)

(declare-fun matchZipper!992 ((Set Context!8096) List!60308) Bool)

(declare-fun derivationZipper!287 ((Set Context!8096) List!60308) (Set Context!8096))

(assert (=> b!5182077 (= e!3228633 (not (= (matchZipper!992 z!4803 input!5922) (matchZipper!992 (derivationZipper!287 z!4803 input!5922) Nil!60184))))))

(declare-fun res!2201419 () Bool)

(assert (=> start!548790 (=> (not res!2201419) (not e!3228633))))

(assert (=> start!548790 (= res!2201419 (not (is-Cons!60184 input!5922)))))

(assert (=> start!548790 e!3228633))

(assert (=> start!548790 e!3228635))

(declare-fun condSetEmpty!32441 () Bool)

(assert (=> start!548790 (= condSetEmpty!32441 (= z!4803 (as set.empty (Set Context!8096))))))

(assert (=> start!548790 setRes!32441))

(assert (= (and start!548790 res!2201419) b!5182077))

(assert (= (and start!548790 (is-Cons!60184 input!5922)) b!5182076))

(assert (= (and start!548790 condSetEmpty!32441) setIsEmpty!32441))

(assert (= (and start!548790 (not condSetEmpty!32441)) setNonEmpty!32441))

(assert (= setNonEmpty!32441 b!5182078))

(declare-fun m!6242360 () Bool)

(assert (=> setNonEmpty!32441 m!6242360))

(declare-fun m!6242362 () Bool)

(assert (=> b!5182077 m!6242362))

(declare-fun m!6242364 () Bool)

(assert (=> b!5182077 m!6242364))

(assert (=> b!5182077 m!6242364))

(declare-fun m!6242366 () Bool)

(assert (=> b!5182077 m!6242366))

(push 1)

(assert (not b!5182076))

(assert (not b!5182077))

(assert tp_is_empty!38581)

(assert (not b!5182078))

(assert (not setNonEmpty!32441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675766 () Bool)

(declare-fun lambda!259058 () Int)

(declare-fun forall!14179 (List!60307 Int) Bool)

(assert (=> d!1675766 (= (inv!79908 setElem!32441) (forall!14179 (exprs!4548 setElem!32441) lambda!259058))))

(declare-fun bs!1208000 () Bool)

(assert (= bs!1208000 d!1675766))

(declare-fun m!6242376 () Bool)

(assert (=> bs!1208000 m!6242376))

(assert (=> setNonEmpty!32441 d!1675766))

(declare-fun d!1675768 () Bool)

(declare-fun c!893195 () Bool)

(declare-fun isEmpty!32224 (List!60308) Bool)

(assert (=> d!1675768 (= c!893195 (isEmpty!32224 input!5922))))

(declare-fun e!3228647 () Bool)

(assert (=> d!1675768 (= (matchZipper!992 z!4803 input!5922) e!3228647)))

(declare-fun b!5182092 () Bool)

(declare-fun nullableZipper!1202 ((Set Context!8096)) Bool)

(assert (=> b!5182092 (= e!3228647 (nullableZipper!1202 z!4803))))

(declare-fun b!5182093 () Bool)

(declare-fun derivationStepZipper!1010 ((Set Context!8096) C!29598) (Set Context!8096))

(declare-fun head!11082 (List!60308) C!29598)

(declare-fun tail!10181 (List!60308) List!60308)

(assert (=> b!5182093 (= e!3228647 (matchZipper!992 (derivationStepZipper!1010 z!4803 (head!11082 input!5922)) (tail!10181 input!5922)))))

(assert (= (and d!1675768 c!893195) b!5182092))

(assert (= (and d!1675768 (not c!893195)) b!5182093))

(declare-fun m!6242378 () Bool)

(assert (=> d!1675768 m!6242378))

(declare-fun m!6242380 () Bool)

(assert (=> b!5182092 m!6242380))

(declare-fun m!6242382 () Bool)

(assert (=> b!5182093 m!6242382))

(assert (=> b!5182093 m!6242382))

(declare-fun m!6242384 () Bool)

(assert (=> b!5182093 m!6242384))

(declare-fun m!6242386 () Bool)

(assert (=> b!5182093 m!6242386))

(assert (=> b!5182093 m!6242384))

(assert (=> b!5182093 m!6242386))

(declare-fun m!6242388 () Bool)

(assert (=> b!5182093 m!6242388))

(assert (=> b!5182077 d!1675768))

(declare-fun d!1675770 () Bool)

(declare-fun c!893196 () Bool)

(assert (=> d!1675770 (= c!893196 (isEmpty!32224 Nil!60184))))

(declare-fun e!3228648 () Bool)

(assert (=> d!1675770 (= (matchZipper!992 (derivationZipper!287 z!4803 input!5922) Nil!60184) e!3228648)))

(declare-fun b!5182094 () Bool)

(assert (=> b!5182094 (= e!3228648 (nullableZipper!1202 (derivationZipper!287 z!4803 input!5922)))))

(declare-fun b!5182095 () Bool)

(assert (=> b!5182095 (= e!3228648 (matchZipper!992 (derivationStepZipper!1010 (derivationZipper!287 z!4803 input!5922) (head!11082 Nil!60184)) (tail!10181 Nil!60184)))))

(assert (= (and d!1675770 c!893196) b!5182094))

(assert (= (and d!1675770 (not c!893196)) b!5182095))

(declare-fun m!6242390 () Bool)

(assert (=> d!1675770 m!6242390))

(assert (=> b!5182094 m!6242364))

(declare-fun m!6242392 () Bool)

(assert (=> b!5182094 m!6242392))

(declare-fun m!6242394 () Bool)

(assert (=> b!5182095 m!6242394))

(assert (=> b!5182095 m!6242364))

(assert (=> b!5182095 m!6242394))

(declare-fun m!6242396 () Bool)

(assert (=> b!5182095 m!6242396))

(declare-fun m!6242398 () Bool)

(assert (=> b!5182095 m!6242398))

(assert (=> b!5182095 m!6242396))

(assert (=> b!5182095 m!6242398))

(declare-fun m!6242400 () Bool)

(assert (=> b!5182095 m!6242400))

(assert (=> b!5182077 d!1675770))

(declare-fun d!1675772 () Bool)

(declare-fun c!893199 () Bool)

(assert (=> d!1675772 (= c!893199 (is-Cons!60184 input!5922))))

(declare-fun e!3228651 () (Set Context!8096))

(assert (=> d!1675772 (= (derivationZipper!287 z!4803 input!5922) e!3228651)))

(declare-fun b!5182100 () Bool)

(assert (=> b!5182100 (= e!3228651 (derivationZipper!287 (derivationStepZipper!1010 z!4803 (h!66632 input!5922)) (t!373461 input!5922)))))

(declare-fun b!5182101 () Bool)

(assert (=> b!5182101 (= e!3228651 z!4803)))

(assert (= (and d!1675772 c!893199) b!5182100))

(assert (= (and d!1675772 (not c!893199)) b!5182101))

(declare-fun m!6242402 () Bool)

(assert (=> b!5182100 m!6242402))

(assert (=> b!5182100 m!6242402))

(declare-fun m!6242404 () Bool)

(assert (=> b!5182100 m!6242404))

(assert (=> b!5182077 d!1675772))

(declare-fun condSetEmpty!32447 () Bool)

(assert (=> setNonEmpty!32441 (= condSetEmpty!32447 (= setRest!32441 (as set.empty (Set Context!8096))))))

(declare-fun setRes!32447 () Bool)

(assert (=> setNonEmpty!32441 (= tp!1453258 setRes!32447)))

(declare-fun setIsEmpty!32447 () Bool)

(assert (=> setIsEmpty!32447 setRes!32447))

(declare-fun e!3228654 () Bool)

(declare-fun tp!1453274 () Bool)

(declare-fun setElem!32447 () Context!8096)

(declare-fun setNonEmpty!32447 () Bool)

(assert (=> setNonEmpty!32447 (= setRes!32447 (and tp!1453274 (inv!79908 setElem!32447) e!3228654))))

(declare-fun setRest!32447 () (Set Context!8096))

(assert (=> setNonEmpty!32447 (= setRest!32441 (set.union (set.insert setElem!32447 (as set.empty (Set Context!8096))) setRest!32447))))

(declare-fun b!5182106 () Bool)

(declare-fun tp!1453275 () Bool)

(assert (=> b!5182106 (= e!3228654 tp!1453275)))

(assert (= (and setNonEmpty!32441 condSetEmpty!32447) setIsEmpty!32447))

(assert (= (and setNonEmpty!32441 (not condSetEmpty!32447)) setNonEmpty!32447))

(assert (= setNonEmpty!32447 b!5182106))

(declare-fun m!6242406 () Bool)

(assert (=> setNonEmpty!32447 m!6242406))

(declare-fun b!5182111 () Bool)

(declare-fun e!3228657 () Bool)

(declare-fun tp!1453278 () Bool)

(assert (=> b!5182111 (= e!3228657 (and tp_is_empty!38581 tp!1453278))))

(assert (=> b!5182076 (= tp!1453259 e!3228657)))

(assert (= (and b!5182076 (is-Cons!60184 (t!373461 input!5922))) b!5182111))

(declare-fun b!5182116 () Bool)

(declare-fun e!3228660 () Bool)

(declare-fun tp!1453283 () Bool)

(declare-fun tp!1453284 () Bool)

(assert (=> b!5182116 (= e!3228660 (and tp!1453283 tp!1453284))))

(assert (=> b!5182078 (= tp!1453260 e!3228660)))

(assert (= (and b!5182078 (is-Cons!60183 (exprs!4548 setElem!32441))) b!5182116))

(push 1)

(assert (not b!5182093))

(assert (not d!1675770))

(assert (not d!1675766))

(assert (not b!5182111))

(assert (not b!5182106))

(assert (not setNonEmpty!32447))

(assert tp_is_empty!38581)

(assert (not b!5182095))

(assert (not d!1675768))

(assert (not b!5182116))

(assert (not b!5182094))

(assert (not b!5182092))

(assert (not b!5182100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

