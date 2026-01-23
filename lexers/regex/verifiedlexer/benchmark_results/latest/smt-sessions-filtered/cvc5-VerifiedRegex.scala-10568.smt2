; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544050 () Bool)

(assert start!544050)

(declare-fun b!5137970 () Bool)

(declare-fun res!2188350 () Bool)

(declare-fun e!3204786 () Bool)

(assert (=> b!5137970 (=> (not res!2188350) (not e!3204786))))

(declare-fun e!3204787 () Bool)

(assert (=> b!5137970 (= res!2188350 e!3204787)))

(declare-fun res!2188353 () Bool)

(assert (=> b!5137970 (=> res!2188353 e!3204787)))

(declare-datatypes ((C!29118 0))(
  ( (C!29119 (val!24211 Int)) )
))
(declare-datatypes ((Regex!14426 0))(
  ( (ElementMatch!14426 (c!884696 C!29118)) (Concat!23271 (regOne!29364 Regex!14426) (regTwo!29364 Regex!14426)) (EmptyExpr!14426) (Star!14426 (reg!14755 Regex!14426)) (EmptyLang!14426) (Union!14426 (regOne!29365 Regex!14426) (regTwo!29365 Regex!14426)) )
))
(declare-fun expr!117 () Regex!14426)

(declare-fun lostCause!1404 (Regex!14426) Bool)

(assert (=> b!5137970 (= res!2188353 (lostCause!1404 expr!117))))

(declare-fun b!5137971 () Bool)

(declare-fun e!3204790 () Bool)

(declare-datatypes ((List!59788 0))(
  ( (Nil!59664) (Cons!59664 (h!66112 Regex!14426) (t!372819 List!59788)) )
))
(declare-datatypes ((Context!7620 0))(
  ( (Context!7621 (exprs!4310 List!59788)) )
))
(declare-fun ctx!100 () Context!7620)

(declare-fun lostCause!1405 (Context!7620) Bool)

(assert (=> b!5137971 (= e!3204790 (lostCause!1405 ctx!100))))

(declare-fun b!5137972 () Bool)

(declare-fun e!3204791 () Bool)

(declare-fun tp!1432912 () Bool)

(assert (=> b!5137972 (= e!3204791 tp!1432912)))

(declare-fun b!5137973 () Bool)

(declare-fun res!2188349 () Bool)

(assert (=> b!5137973 (=> (not res!2188349) (not e!3204786))))

(declare-fun a!1296 () C!29118)

(assert (=> b!5137973 (= res!2188349 (and (or (not (is-ElementMatch!14426 expr!117)) (not (= (c!884696 expr!117) a!1296))) (is-Union!14426 expr!117)))))

(declare-fun b!5137974 () Bool)

(declare-fun e!3204788 () Bool)

(declare-fun tp!1432917 () Bool)

(declare-fun tp!1432916 () Bool)

(assert (=> b!5137974 (= e!3204788 (and tp!1432917 tp!1432916))))

(declare-fun b!5137976 () Bool)

(declare-fun e!3204789 () Bool)

(assert (=> b!5137976 (= e!3204789 true)))

(declare-fun lt!2119839 () Bool)

(assert (=> b!5137976 (= lt!2119839 e!3204790)))

(declare-fun res!2188351 () Bool)

(assert (=> b!5137976 (=> res!2188351 e!3204790)))

(assert (=> b!5137976 (= res!2188351 (lostCause!1404 (regTwo!29365 expr!117)))))

(declare-fun b!5137977 () Bool)

(declare-fun tp_is_empty!38001 () Bool)

(assert (=> b!5137977 (= e!3204788 tp_is_empty!38001)))

(declare-fun b!5137978 () Bool)

(declare-fun tp!1432915 () Bool)

(assert (=> b!5137978 (= e!3204788 tp!1432915)))

(declare-fun b!5137979 () Bool)

(assert (=> b!5137979 (= e!3204787 (lostCause!1405 ctx!100))))

(declare-fun b!5137980 () Bool)

(assert (=> b!5137980 (= e!3204786 (not e!3204789))))

(declare-fun res!2188354 () Bool)

(assert (=> b!5137980 (=> res!2188354 e!3204789)))

(declare-fun validRegex!6281 (Regex!14426) Bool)

(assert (=> b!5137980 (= res!2188354 (not (validRegex!6281 (regTwo!29365 expr!117))))))

(declare-fun lostCauseZipper!1242 ((Set Context!7620)) Bool)

(declare-fun derivationStepZipperDown!123 (Regex!14426 Context!7620 C!29118) (Set Context!7620))

(assert (=> b!5137980 (lostCauseZipper!1242 (derivationStepZipperDown!123 (regOne!29365 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151023 0))(
  ( (Unit!151024) )
))
(declare-fun lt!2119840 () Unit!151023)

(declare-fun lemmaLostCauseFixPointDerivDown!15 (Regex!14426 Context!7620 C!29118) Unit!151023)

(assert (=> b!5137980 (= lt!2119840 (lemmaLostCauseFixPointDerivDown!15 (regOne!29365 expr!117) ctx!100 a!1296))))

(declare-fun b!5137975 () Bool)

(declare-fun tp!1432913 () Bool)

(declare-fun tp!1432914 () Bool)

(assert (=> b!5137975 (= e!3204788 (and tp!1432913 tp!1432914))))

(declare-fun res!2188352 () Bool)

(assert (=> start!544050 (=> (not res!2188352) (not e!3204786))))

(assert (=> start!544050 (= res!2188352 (validRegex!6281 expr!117))))

(assert (=> start!544050 e!3204786))

(assert (=> start!544050 e!3204788))

(declare-fun inv!79247 (Context!7620) Bool)

(assert (=> start!544050 (and (inv!79247 ctx!100) e!3204791)))

(assert (=> start!544050 tp_is_empty!38001))

(assert (= (and start!544050 res!2188352) b!5137970))

(assert (= (and b!5137970 (not res!2188353)) b!5137979))

(assert (= (and b!5137970 res!2188350) b!5137973))

(assert (= (and b!5137973 res!2188349) b!5137980))

(assert (= (and b!5137980 (not res!2188354)) b!5137976))

(assert (= (and b!5137976 (not res!2188351)) b!5137971))

(assert (= (and start!544050 (is-ElementMatch!14426 expr!117)) b!5137977))

(assert (= (and start!544050 (is-Concat!23271 expr!117)) b!5137974))

(assert (= (and start!544050 (is-Star!14426 expr!117)) b!5137978))

(assert (= (and start!544050 (is-Union!14426 expr!117)) b!5137975))

(assert (= start!544050 b!5137972))

(declare-fun m!6202992 () Bool)

(assert (=> b!5137976 m!6202992))

(declare-fun m!6202994 () Bool)

(assert (=> b!5137979 m!6202994))

(declare-fun m!6202996 () Bool)

(assert (=> b!5137980 m!6202996))

(declare-fun m!6202998 () Bool)

(assert (=> b!5137980 m!6202998))

(assert (=> b!5137980 m!6202998))

(declare-fun m!6203000 () Bool)

(assert (=> b!5137980 m!6203000))

(declare-fun m!6203002 () Bool)

(assert (=> b!5137980 m!6203002))

(declare-fun m!6203004 () Bool)

(assert (=> start!544050 m!6203004))

(declare-fun m!6203006 () Bool)

(assert (=> start!544050 m!6203006))

(declare-fun m!6203008 () Bool)

(assert (=> b!5137970 m!6203008))

(assert (=> b!5137971 m!6202994))

(push 1)

(assert (not b!5137978))

(assert tp_is_empty!38001)

(assert (not b!5137972))

(assert (not b!5137980))

(assert (not b!5137971))

(assert (not b!5137974))

(assert (not b!5137970))

(assert (not b!5137975))

(assert (not start!544050))

(assert (not b!5137976))

(assert (not b!5137979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

