; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732894 () Bool)

(assert start!732894)

(declare-fun b!7601218 () Bool)

(assert (=> b!7601218 true))

(assert (=> b!7601218 true))

(assert (=> b!7601218 true))

(declare-fun bs!1942413 () Bool)

(declare-fun b!7601229 () Bool)

(assert (= bs!1942413 (and b!7601229 b!7601218)))

(declare-fun lambda!467645 () Int)

(declare-fun lambda!467644 () Int)

(assert (=> bs!1942413 (not (= lambda!467645 lambda!467644))))

(assert (=> b!7601229 true))

(assert (=> b!7601229 true))

(assert (=> b!7601229 true))

(declare-fun res!3043527 () Bool)

(declare-fun e!4522211 () Bool)

(assert (=> b!7601218 (=> (not res!3043527) (not e!4522211))))

(declare-fun Exists!4380 (Int) Bool)

(assert (=> b!7601218 (= res!3043527 (not (Exists!4380 lambda!467644)))))

(declare-fun b!7601219 () Bool)

(declare-fun e!4522213 () Bool)

(declare-fun tp_is_empty!50659 () Bool)

(declare-fun tp!2216254 () Bool)

(assert (=> b!7601219 (= e!4522213 (and tp_is_empty!50659 tp!2216254))))

(declare-fun b!7601220 () Bool)

(declare-fun e!4522210 () Bool)

(assert (=> b!7601220 (= e!4522210 tp_is_empty!50659)))

(declare-fun b!7601221 () Bool)

(declare-fun res!3043530 () Bool)

(assert (=> b!7601221 (=> (not res!3043530) (not e!4522211))))

(assert (=> b!7601221 (= res!3043530 (not (Exists!4380 lambda!467644)))))

(declare-fun b!7601222 () Bool)

(declare-fun tp!2216260 () Bool)

(declare-fun tp!2216257 () Bool)

(assert (=> b!7601222 (= e!4522210 (and tp!2216260 tp!2216257))))

(declare-fun b!7601223 () Bool)

(declare-fun tp!2216259 () Bool)

(declare-fun tp!2216264 () Bool)

(assert (=> b!7601223 (= e!4522210 (and tp!2216259 tp!2216264))))

(declare-fun b!7601224 () Bool)

(declare-fun res!3043529 () Bool)

(assert (=> b!7601224 (=> (not res!3043529) (not e!4522211))))

(declare-datatypes ((C!40630 0))(
  ( (C!40631 (val!30755 Int)) )
))
(declare-datatypes ((Regex!20152 0))(
  ( (ElementMatch!20152 (c!1402241 C!40630)) (Concat!28997 (regOne!40816 Regex!20152) (regTwo!40816 Regex!20152)) (EmptyExpr!20152) (Star!20152 (reg!20481 Regex!20152)) (EmptyLang!20152) (Union!20152 (regOne!40817 Regex!20152) (regTwo!40817 Regex!20152)) )
))
(declare-fun r2!3249 () Regex!20152)

(declare-fun validRegex!10580 (Regex!20152) Bool)

(assert (=> b!7601224 (= res!3043529 (validRegex!10580 r2!3249))))

(declare-fun res!3043531 () Bool)

(assert (=> start!732894 (=> (not res!3043531) (not e!4522211))))

(declare-fun r1!3349 () Regex!20152)

(assert (=> start!732894 (= res!3043531 (validRegex!10580 r1!3349))))

(assert (=> start!732894 e!4522211))

(declare-fun e!4522212 () Bool)

(assert (=> start!732894 e!4522212))

(assert (=> start!732894 e!4522210))

(assert (=> start!732894 e!4522213))

(declare-fun b!7601225 () Bool)

(declare-fun tp!2216258 () Bool)

(assert (=> b!7601225 (= e!4522212 tp!2216258)))

(declare-fun b!7601226 () Bool)

(declare-fun tp!2216263 () Bool)

(declare-fun tp!2216262 () Bool)

(assert (=> b!7601226 (= e!4522212 (and tp!2216263 tp!2216262))))

(declare-fun b!7601227 () Bool)

(declare-fun tp!2216256 () Bool)

(declare-fun tp!2216261 () Bool)

(assert (=> b!7601227 (= e!4522212 (and tp!2216256 tp!2216261))))

(declare-fun b!7601228 () Bool)

(assert (=> b!7601228 (= e!4522211 (not (Exists!4380 lambda!467645)))))

(declare-fun res!3043528 () Bool)

(assert (=> b!7601229 (=> (not res!3043528) (not e!4522211))))

(assert (=> b!7601229 (= res!3043528 (Exists!4380 lambda!467645))))

(declare-fun b!7601230 () Bool)

(declare-fun tp!2216255 () Bool)

(assert (=> b!7601230 (= e!4522210 tp!2216255)))

(declare-fun b!7601231 () Bool)

(assert (=> b!7601231 (= e!4522212 tp_is_empty!50659)))

(assert (= (and start!732894 res!3043531) b!7601224))

(assert (= (and b!7601224 res!3043529) b!7601218))

(assert (= (and b!7601218 res!3043527) b!7601221))

(assert (= (and b!7601221 res!3043530) b!7601229))

(assert (= (and b!7601229 res!3043528) b!7601228))

(assert (= (and start!732894 (is-ElementMatch!20152 r1!3349)) b!7601231))

(assert (= (and start!732894 (is-Concat!28997 r1!3349)) b!7601227))

(assert (= (and start!732894 (is-Star!20152 r1!3349)) b!7601225))

(assert (= (and start!732894 (is-Union!20152 r1!3349)) b!7601226))

(assert (= (and start!732894 (is-ElementMatch!20152 r2!3249)) b!7601220))

(assert (= (and start!732894 (is-Concat!28997 r2!3249)) b!7601222))

(assert (= (and start!732894 (is-Star!20152 r2!3249)) b!7601230))

(assert (= (and start!732894 (is-Union!20152 r2!3249)) b!7601223))

(declare-datatypes ((List!73035 0))(
  ( (Nil!72911) (Cons!72911 (h!79359 C!40630) (t!387770 List!73035)) )
))
(declare-fun s!10235 () List!73035)

(assert (= (and start!732894 (is-Cons!72911 s!10235)) b!7601219))

(declare-fun m!8145114 () Bool)

(assert (=> b!7601218 m!8145114))

(declare-fun m!8145116 () Bool)

(assert (=> b!7601228 m!8145116))

(declare-fun m!8145118 () Bool)

(assert (=> b!7601224 m!8145118))

(assert (=> b!7601221 m!8145114))

(assert (=> b!7601229 m!8145116))

(declare-fun m!8145120 () Bool)

(assert (=> start!732894 m!8145120))

(push 1)

(assert (not b!7601222))

(assert (not b!7601224))

(assert (not b!7601229))

(assert (not b!7601221))

(assert (not start!732894))

(assert (not b!7601219))

(assert (not b!7601223))

(assert tp_is_empty!50659)

(assert (not b!7601218))

(assert (not b!7601225))

(assert (not b!7601227))

(assert (not b!7601228))

(assert (not b!7601226))

(assert (not b!7601230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

