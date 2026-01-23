; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666876 () Bool)

(assert start!666876)

(declare-fun b!6946816 () Bool)

(assert (=> b!6946816 true))

(assert (=> b!6946816 true))

(declare-fun b!6946814 () Bool)

(declare-fun e!4178405 () Bool)

(declare-fun tp!1914939 () Bool)

(declare-fun tp!1914937 () Bool)

(assert (=> b!6946814 (= e!4178405 (and tp!1914939 tp!1914937))))

(declare-fun b!6946815 () Bool)

(declare-fun tp_is_empty!43209 () Bool)

(assert (=> b!6946815 (= e!4178405 tp_is_empty!43209)))

(declare-fun res!2833959 () Bool)

(declare-fun e!4178406 () Bool)

(assert (=> b!6946816 (=> (not res!2833959) (not e!4178406))))

(declare-fun lambda!396113 () Int)

(declare-fun Exists!3988 (Int) Bool)

(assert (=> b!6946816 (= res!2833959 (Exists!3988 lambda!396113))))

(declare-fun b!6946817 () Bool)

(declare-fun e!4178403 () Bool)

(assert (=> b!6946817 (= e!4178406 e!4178403)))

(declare-fun res!2833958 () Bool)

(assert (=> b!6946817 (=> (not res!2833958) (not e!4178403))))

(declare-datatypes ((C!34254 0))(
  ( (C!34255 (val!26829 Int)) )
))
(declare-datatypes ((List!66745 0))(
  ( (Nil!66621) (Cons!66621 (h!73069 C!34254) (t!380488 List!66745)) )
))
(declare-datatypes ((tuple2!67694 0))(
  ( (tuple2!67695 (_1!37150 List!66745) (_2!37150 List!66745)) )
))
(declare-fun lt!2477404 () tuple2!67694)

(declare-fun s!10388 () List!66745)

(declare-fun ++!15029 (List!66745 List!66745) List!66745)

(assert (=> b!6946817 (= res!2833958 (= (++!15029 (_1!37150 lt!2477404) (_2!37150 lt!2477404)) s!10388))))

(declare-fun pickWitness!337 (Int) tuple2!67694)

(assert (=> b!6946817 (= lt!2477404 (pickWitness!337 lambda!396113))))

(declare-fun b!6946818 () Bool)

(declare-fun e!4178404 () Bool)

(declare-fun tp!1914938 () Bool)

(assert (=> b!6946818 (= e!4178404 (and tp_is_empty!43209 tp!1914938))))

(declare-fun b!6946819 () Bool)

(assert (=> b!6946819 (= e!4178403 (not true))))

(declare-datatypes ((Regex!16992 0))(
  ( (ElementMatch!16992 (c!1288770 C!34254)) (Concat!25837 (regOne!34496 Regex!16992) (regTwo!34496 Regex!16992)) (EmptyExpr!16992) (Star!16992 (reg!17321 Regex!16992)) (EmptyLang!16992) (Union!16992 (regOne!34497 Regex!16992) (regTwo!34497 Regex!16992)) )
))
(declare-fun lt!2477406 () Regex!16992)

(declare-fun matchR!9123 (Regex!16992 List!66745) Bool)

(declare-fun matchRSpec!4037 (Regex!16992 List!66745) Bool)

(assert (=> b!6946819 (= (matchR!9123 lt!2477406 (_2!37150 lt!2477404)) (matchRSpec!4037 lt!2477406 (_2!37150 lt!2477404)))))

(declare-datatypes ((Unit!160704 0))(
  ( (Unit!160705) )
))
(declare-fun lt!2477407 () Unit!160704)

(declare-fun mainMatchTheorem!4037 (Regex!16992 List!66745) Unit!160704)

(assert (=> b!6946819 (= lt!2477407 (mainMatchTheorem!4037 lt!2477406 (_2!37150 lt!2477404)))))

(declare-fun rInner!765 () Regex!16992)

(assert (=> b!6946819 (= lt!2477406 (Star!16992 rInner!765))))

(assert (=> b!6946819 (= (matchR!9123 rInner!765 (_1!37150 lt!2477404)) (matchRSpec!4037 rInner!765 (_1!37150 lt!2477404)))))

(declare-fun lt!2477405 () Unit!160704)

(assert (=> b!6946819 (= lt!2477405 (mainMatchTheorem!4037 rInner!765 (_1!37150 lt!2477404)))))

(declare-fun b!6946820 () Bool)

(declare-fun tp!1914936 () Bool)

(assert (=> b!6946820 (= e!4178405 tp!1914936)))

(declare-fun res!2833960 () Bool)

(assert (=> start!666876 (=> (not res!2833960) (not e!4178406))))

(declare-fun validRegex!8698 (Regex!16992) Bool)

(assert (=> start!666876 (= res!2833960 (validRegex!8698 rInner!765))))

(assert (=> start!666876 e!4178406))

(assert (=> start!666876 e!4178405))

(assert (=> start!666876 e!4178404))

(declare-fun b!6946821 () Bool)

(declare-fun res!2833957 () Bool)

(assert (=> b!6946821 (=> (not res!2833957) (not e!4178406))))

(declare-fun nullable!6805 (Regex!16992) Bool)

(assert (=> b!6946821 (= res!2833957 (not (nullable!6805 rInner!765)))))

(declare-fun b!6946822 () Bool)

(declare-fun tp!1914935 () Bool)

(declare-fun tp!1914934 () Bool)

(assert (=> b!6946822 (= e!4178405 (and tp!1914935 tp!1914934))))

(assert (= (and start!666876 res!2833960) b!6946821))

(assert (= (and b!6946821 res!2833957) b!6946816))

(assert (= (and b!6946816 res!2833959) b!6946817))

(assert (= (and b!6946817 res!2833958) b!6946819))

(assert (= (and start!666876 (is-ElementMatch!16992 rInner!765)) b!6946815))

(assert (= (and start!666876 (is-Concat!25837 rInner!765)) b!6946814))

(assert (= (and start!666876 (is-Star!16992 rInner!765)) b!6946820))

(assert (= (and start!666876 (is-Union!16992 rInner!765)) b!6946822))

(assert (= (and start!666876 (is-Cons!66621 s!10388)) b!6946818))

(declare-fun m!7650588 () Bool)

(assert (=> start!666876 m!7650588))

(declare-fun m!7650590 () Bool)

(assert (=> b!6946817 m!7650590))

(declare-fun m!7650592 () Bool)

(assert (=> b!6946817 m!7650592))

(declare-fun m!7650594 () Bool)

(assert (=> b!6946816 m!7650594))

(declare-fun m!7650596 () Bool)

(assert (=> b!6946819 m!7650596))

(declare-fun m!7650598 () Bool)

(assert (=> b!6946819 m!7650598))

(declare-fun m!7650600 () Bool)

(assert (=> b!6946819 m!7650600))

(declare-fun m!7650602 () Bool)

(assert (=> b!6946819 m!7650602))

(declare-fun m!7650604 () Bool)

(assert (=> b!6946819 m!7650604))

(declare-fun m!7650606 () Bool)

(assert (=> b!6946819 m!7650606))

(declare-fun m!7650608 () Bool)

(assert (=> b!6946821 m!7650608))

(push 1)

(assert (not b!6946822))

(assert (not start!666876))

(assert (not b!6946820))

(assert (not b!6946821))

(assert (not b!6946819))

(assert (not b!6946818))

(assert (not b!6946816))

(assert (not b!6946817))

(assert tp_is_empty!43209)

(assert (not b!6946814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

