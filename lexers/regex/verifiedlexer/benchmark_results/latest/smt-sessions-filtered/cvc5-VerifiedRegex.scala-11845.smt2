; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666004 () Bool)

(assert start!666004)

(declare-fun b!6929126 () Bool)

(declare-fun e!4169600 () Bool)

(declare-fun tp!1909856 () Bool)

(declare-fun tp!1909846 () Bool)

(assert (=> b!6929126 (= e!4169600 (and tp!1909856 tp!1909846))))

(declare-fun b!6929127 () Bool)

(declare-fun e!4169604 () Bool)

(declare-fun tp!1909845 () Bool)

(declare-fun tp!1909853 () Bool)

(assert (=> b!6929127 (= e!4169604 (and tp!1909845 tp!1909853))))

(declare-fun b!6929128 () Bool)

(declare-fun e!4169602 () Bool)

(declare-fun tp_is_empty!43097 () Bool)

(declare-fun tp!1909848 () Bool)

(assert (=> b!6929128 (= e!4169602 (and tp_is_empty!43097 tp!1909848))))

(declare-fun b!6929129 () Bool)

(declare-fun e!4169603 () Bool)

(declare-fun e!4169601 () Bool)

(assert (=> b!6929129 (= e!4169603 (not e!4169601))))

(declare-fun res!2825983 () Bool)

(assert (=> b!6929129 (=> res!2825983 e!4169601)))

(declare-fun lt!2472781 () Bool)

(assert (=> b!6929129 (= res!2825983 lt!2472781)))

(declare-datatypes ((C!34142 0))(
  ( (C!34143 (val!26773 Int)) )
))
(declare-datatypes ((Regex!16936 0))(
  ( (ElementMatch!16936 (c!1286126 C!34142)) (Concat!25781 (regOne!34384 Regex!16936) (regTwo!34384 Regex!16936)) (EmptyExpr!16936) (Star!16936 (reg!17265 Regex!16936)) (EmptyLang!16936) (Union!16936 (regOne!34385 Regex!16936) (regTwo!34385 Regex!16936)) )
))
(declare-fun lt!2472778 () Regex!16936)

(declare-datatypes ((List!66689 0))(
  ( (Nil!66565) (Cons!66565 (h!73013 C!34142) (t!380432 List!66689)) )
))
(declare-fun s!14361 () List!66689)

(declare-fun matchR!9075 (Regex!16936 List!66689) Bool)

(declare-fun matchRSpec!3993 (Regex!16936 List!66689) Bool)

(assert (=> b!6929129 (= (matchR!9075 lt!2472778 s!14361) (matchRSpec!3993 lt!2472778 s!14361))))

(declare-datatypes ((Unit!160596 0))(
  ( (Unit!160597) )
))
(declare-fun lt!2472777 () Unit!160596)

(declare-fun mainMatchTheorem!3993 (Regex!16936 List!66689) Unit!160596)

(assert (=> b!6929129 (= lt!2472777 (mainMatchTheorem!3993 lt!2472778 s!14361))))

(declare-fun lt!2472776 () Regex!16936)

(assert (=> b!6929129 (= lt!2472781 (matchRSpec!3993 lt!2472776 s!14361))))

(assert (=> b!6929129 (= lt!2472781 (matchR!9075 lt!2472776 s!14361))))

(declare-fun lt!2472779 () Unit!160596)

(assert (=> b!6929129 (= lt!2472779 (mainMatchTheorem!3993 lt!2472776 s!14361))))

(declare-fun r1!6342 () Regex!16936)

(declare-fun lt!2472780 () Regex!16936)

(assert (=> b!6929129 (= lt!2472778 (Concat!25781 r1!6342 lt!2472780))))

(declare-fun r2!6280 () Regex!16936)

(declare-fun r3!135 () Regex!16936)

(assert (=> b!6929129 (= lt!2472780 (Concat!25781 r2!6280 r3!135))))

(assert (=> b!6929129 (= lt!2472776 (Concat!25781 (Concat!25781 r1!6342 r2!6280) r3!135))))

(declare-fun b!6929130 () Bool)

(declare-fun e!4169599 () Bool)

(assert (=> b!6929130 (= e!4169599 tp_is_empty!43097)))

(declare-fun b!6929131 () Bool)

(declare-fun tp!1909854 () Bool)

(declare-fun tp!1909847 () Bool)

(assert (=> b!6929131 (= e!4169604 (and tp!1909854 tp!1909847))))

(declare-fun b!6929132 () Bool)

(declare-fun tp!1909858 () Bool)

(declare-fun tp!1909855 () Bool)

(assert (=> b!6929132 (= e!4169599 (and tp!1909858 tp!1909855))))

(declare-fun b!6929133 () Bool)

(declare-fun tp!1909857 () Bool)

(assert (=> b!6929133 (= e!4169604 tp!1909857)))

(declare-fun b!6929134 () Bool)

(declare-fun tp!1909852 () Bool)

(assert (=> b!6929134 (= e!4169600 tp!1909852)))

(declare-fun res!2825982 () Bool)

(assert (=> start!666004 (=> (not res!2825982) (not e!4169603))))

(declare-fun validRegex!8642 (Regex!16936) Bool)

(assert (=> start!666004 (= res!2825982 (validRegex!8642 r1!6342))))

(assert (=> start!666004 e!4169603))

(assert (=> start!666004 e!4169604))

(assert (=> start!666004 e!4169599))

(assert (=> start!666004 e!4169600))

(assert (=> start!666004 e!4169602))

(declare-fun b!6929135 () Bool)

(declare-fun tp!1909851 () Bool)

(declare-fun tp!1909850 () Bool)

(assert (=> b!6929135 (= e!4169599 (and tp!1909851 tp!1909850))))

(declare-fun b!6929136 () Bool)

(declare-fun tp!1909844 () Bool)

(declare-fun tp!1909859 () Bool)

(assert (=> b!6929136 (= e!4169600 (and tp!1909844 tp!1909859))))

(declare-fun b!6929137 () Bool)

(declare-fun res!2825984 () Bool)

(assert (=> b!6929137 (=> (not res!2825984) (not e!4169603))))

(assert (=> b!6929137 (= res!2825984 (validRegex!8642 r2!6280))))

(declare-fun b!6929138 () Bool)

(declare-fun tp!1909849 () Bool)

(assert (=> b!6929138 (= e!4169599 tp!1909849)))

(declare-fun b!6929139 () Bool)

(assert (=> b!6929139 (= e!4169600 tp_is_empty!43097)))

(declare-fun b!6929140 () Bool)

(assert (=> b!6929140 (= e!4169601 true)))

(declare-datatypes ((tuple2!67586 0))(
  ( (tuple2!67587 (_1!37096 List!66689) (_2!37096 List!66689)) )
))
(declare-datatypes ((Option!16705 0))(
  ( (None!16704) (Some!16704 (v!52976 tuple2!67586)) )
))
(declare-fun lt!2472782 () Option!16705)

(declare-fun findConcatSeparation!3119 (Regex!16936 Regex!16936 List!66689 List!66689 List!66689) Option!16705)

(assert (=> b!6929140 (= lt!2472782 (findConcatSeparation!3119 r1!6342 lt!2472780 Nil!66565 s!14361 s!14361))))

(declare-fun b!6929141 () Bool)

(assert (=> b!6929141 (= e!4169604 tp_is_empty!43097)))

(declare-fun b!6929142 () Bool)

(declare-fun res!2825981 () Bool)

(assert (=> b!6929142 (=> (not res!2825981) (not e!4169603))))

(assert (=> b!6929142 (= res!2825981 (validRegex!8642 r3!135))))

(assert (= (and start!666004 res!2825982) b!6929137))

(assert (= (and b!6929137 res!2825984) b!6929142))

(assert (= (and b!6929142 res!2825981) b!6929129))

(assert (= (and b!6929129 (not res!2825983)) b!6929140))

(assert (= (and start!666004 (is-ElementMatch!16936 r1!6342)) b!6929141))

(assert (= (and start!666004 (is-Concat!25781 r1!6342)) b!6929131))

(assert (= (and start!666004 (is-Star!16936 r1!6342)) b!6929133))

(assert (= (and start!666004 (is-Union!16936 r1!6342)) b!6929127))

(assert (= (and start!666004 (is-ElementMatch!16936 r2!6280)) b!6929130))

(assert (= (and start!666004 (is-Concat!25781 r2!6280)) b!6929132))

(assert (= (and start!666004 (is-Star!16936 r2!6280)) b!6929138))

(assert (= (and start!666004 (is-Union!16936 r2!6280)) b!6929135))

(assert (= (and start!666004 (is-ElementMatch!16936 r3!135)) b!6929139))

(assert (= (and start!666004 (is-Concat!25781 r3!135)) b!6929136))

(assert (= (and start!666004 (is-Star!16936 r3!135)) b!6929134))

(assert (= (and start!666004 (is-Union!16936 r3!135)) b!6929126))

(assert (= (and start!666004 (is-Cons!66565 s!14361)) b!6929128))

(declare-fun m!7637440 () Bool)

(assert (=> b!6929137 m!7637440))

(declare-fun m!7637442 () Bool)

(assert (=> b!6929140 m!7637442))

(declare-fun m!7637444 () Bool)

(assert (=> b!6929129 m!7637444))

(declare-fun m!7637446 () Bool)

(assert (=> b!6929129 m!7637446))

(declare-fun m!7637448 () Bool)

(assert (=> b!6929129 m!7637448))

(declare-fun m!7637450 () Bool)

(assert (=> b!6929129 m!7637450))

(declare-fun m!7637452 () Bool)

(assert (=> b!6929129 m!7637452))

(declare-fun m!7637454 () Bool)

(assert (=> b!6929129 m!7637454))

(declare-fun m!7637456 () Bool)

(assert (=> b!6929142 m!7637456))

(declare-fun m!7637458 () Bool)

(assert (=> start!666004 m!7637458))

(push 1)

(assert (not start!666004))

(assert (not b!6929128))

(assert (not b!6929138))

(assert (not b!6929137))

(assert (not b!6929127))

(assert (not b!6929133))

(assert tp_is_empty!43097)

(assert (not b!6929136))

(assert (not b!6929135))

(assert (not b!6929126))

(assert (not b!6929129))

(assert (not b!6929140))

(assert (not b!6929134))

(assert (not b!6929132))

(assert (not b!6929131))

(assert (not b!6929142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

