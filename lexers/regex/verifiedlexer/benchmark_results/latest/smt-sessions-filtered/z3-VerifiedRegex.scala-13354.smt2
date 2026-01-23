; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724194 () Bool)

(assert start!724194)

(declare-fun b!7468916 () Bool)

(assert (=> b!7468916 true))

(assert (=> b!7468916 true))

(assert (=> b!7468916 true))

(declare-fun lambda!462453 () Int)

(declare-fun lambda!462452 () Int)

(assert (=> b!7468916 (not (= lambda!462453 lambda!462452))))

(assert (=> b!7468916 true))

(assert (=> b!7468916 true))

(assert (=> b!7468916 true))

(declare-fun bs!1930737 () Bool)

(declare-fun b!7468923 () Bool)

(assert (= bs!1930737 (and b!7468923 b!7468916)))

(declare-datatypes ((C!39416 0))(
  ( (C!39417 (val!30106 Int)) )
))
(declare-datatypes ((Regex!19571 0))(
  ( (ElementMatch!19571 (c!1380176 C!39416)) (Concat!28416 (regOne!39654 Regex!19571) (regTwo!39654 Regex!19571)) (EmptyExpr!19571) (Star!19571 (reg!19900 Regex!19571)) (EmptyLang!19571) (Union!19571 (regOne!39655 Regex!19571) (regTwo!39655 Regex!19571)) )
))
(declare-fun lt!2625146 () Regex!19571)

(declare-fun r2!5783 () Regex!19571)

(declare-fun lambda!462454 () Int)

(assert (=> bs!1930737 (= (= r2!5783 lt!2625146) (= lambda!462454 lambda!462452))))

(assert (=> bs!1930737 (not (= lambda!462454 lambda!462453))))

(assert (=> b!7468923 true))

(assert (=> b!7468923 true))

(assert (=> b!7468923 true))

(declare-fun lambda!462455 () Int)

(assert (=> bs!1930737 (not (= lambda!462455 lambda!462452))))

(assert (=> bs!1930737 (= (= r2!5783 lt!2625146) (= lambda!462455 lambda!462453))))

(assert (=> b!7468923 (not (= lambda!462455 lambda!462454))))

(assert (=> b!7468923 true))

(assert (=> b!7468923 true))

(assert (=> b!7468923 true))

(declare-fun b!7468909 () Bool)

(declare-fun e!4456392 () Bool)

(declare-fun tp!2165538 () Bool)

(assert (=> b!7468909 (= e!4456392 tp!2165538)))

(declare-fun b!7468910 () Bool)

(declare-fun e!4456385 () Bool)

(declare-fun e!4456389 () Bool)

(assert (=> b!7468910 (= e!4456385 e!4456389)))

(declare-fun res!2996220 () Bool)

(assert (=> b!7468910 (=> res!2996220 e!4456389)))

(declare-fun lt!2625140 () Bool)

(declare-fun lt!2625139 () Bool)

(assert (=> b!7468910 (= res!2996220 (or (and (not lt!2625140) (not lt!2625139)) lt!2625140))))

(declare-fun lt!2625154 () Regex!19571)

(declare-datatypes ((List!72287 0))(
  ( (Nil!72163) (Cons!72163 (h!78611 C!39416) (t!386856 List!72287)) )
))
(declare-fun s!13591 () List!72287)

(declare-fun matchRSpec!4250 (Regex!19571 List!72287) Bool)

(assert (=> b!7468910 (= lt!2625139 (matchRSpec!4250 lt!2625154 s!13591))))

(declare-fun matchR!9335 (Regex!19571 List!72287) Bool)

(assert (=> b!7468910 (= lt!2625139 (matchR!9335 lt!2625154 s!13591))))

(declare-datatypes ((Unit!165977 0))(
  ( (Unit!165978) )
))
(declare-fun lt!2625144 () Unit!165977)

(declare-fun mainMatchTheorem!4244 (Regex!19571 List!72287) Unit!165977)

(assert (=> b!7468910 (= lt!2625144 (mainMatchTheorem!4244 lt!2625154 s!13591))))

(declare-fun lt!2625148 () Regex!19571)

(assert (=> b!7468910 (= lt!2625140 (matchRSpec!4250 lt!2625148 s!13591))))

(assert (=> b!7468910 (= lt!2625140 (matchR!9335 lt!2625148 s!13591))))

(declare-fun lt!2625143 () Unit!165977)

(assert (=> b!7468910 (= lt!2625143 (mainMatchTheorem!4244 lt!2625148 s!13591))))

(declare-fun b!7468911 () Bool)

(declare-fun e!4456388 () Bool)

(declare-fun tp!2165546 () Bool)

(assert (=> b!7468911 (= e!4456388 tp!2165546)))

(declare-fun b!7468912 () Bool)

(declare-fun e!4456390 () Bool)

(declare-fun tp_is_empty!49431 () Bool)

(declare-fun tp!2165540 () Bool)

(assert (=> b!7468912 (= e!4456390 (and tp_is_empty!49431 tp!2165540))))

(declare-fun b!7468913 () Bool)

(declare-fun e!4456387 () Bool)

(declare-fun tp!2165541 () Bool)

(declare-fun tp!2165545 () Bool)

(assert (=> b!7468913 (= e!4456387 (and tp!2165541 tp!2165545))))

(declare-fun b!7468914 () Bool)

(assert (=> b!7468914 (= e!4456387 tp_is_empty!49431)))

(declare-fun b!7468915 () Bool)

(declare-fun tp!2165533 () Bool)

(declare-fun tp!2165543 () Bool)

(assert (=> b!7468915 (= e!4456392 (and tp!2165533 tp!2165543))))

(declare-fun e!4456391 () Bool)

(assert (=> b!7468916 (= e!4456391 e!4456385)))

(declare-fun res!2996219 () Bool)

(assert (=> b!7468916 (=> res!2996219 e!4456385)))

(declare-fun lt!2625145 () Bool)

(declare-fun lt!2625141 () Bool)

(assert (=> b!7468916 (= res!2996219 (or lt!2625145 (not lt!2625141)))))

(declare-fun Exists!4190 (Int) Bool)

(assert (=> b!7468916 (= (Exists!4190 lambda!462452) (Exists!4190 lambda!462453))))

(declare-fun rTail!78 () Regex!19571)

(declare-fun lt!2625147 () Unit!165977)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2524 (Regex!19571 Regex!19571 List!72287) Unit!165977)

(assert (=> b!7468916 (= lt!2625147 (lemmaExistCutMatchRandMatchRSpecEquivalent!2524 lt!2625146 rTail!78 s!13591))))

(assert (=> b!7468916 (= lt!2625145 (Exists!4190 lambda!462452))))

(declare-datatypes ((tuple2!68592 0))(
  ( (tuple2!68593 (_1!37599 List!72287) (_2!37599 List!72287)) )
))
(declare-datatypes ((Option!17128 0))(
  ( (None!17127) (Some!17127 (v!54256 tuple2!68592)) )
))
(declare-fun isDefined!13817 (Option!17128) Bool)

(declare-fun findConcatSeparation!3250 (Regex!19571 Regex!19571 List!72287 List!72287 List!72287) Option!17128)

(assert (=> b!7468916 (= lt!2625145 (isDefined!13817 (findConcatSeparation!3250 lt!2625146 rTail!78 Nil!72163 s!13591 s!13591)))))

(declare-fun lt!2625149 () Unit!165977)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3008 (Regex!19571 Regex!19571 List!72287) Unit!165977)

(assert (=> b!7468916 (= lt!2625149 (lemmaFindConcatSeparationEquivalentToExists!3008 lt!2625146 rTail!78 s!13591))))

(declare-fun res!2996217 () Bool)

(declare-fun e!4456386 () Bool)

(assert (=> start!724194 (=> (not res!2996217) (not e!4456386))))

(declare-fun r1!5845 () Regex!19571)

(declare-fun validRegex!10085 (Regex!19571) Bool)

(assert (=> start!724194 (= res!2996217 (validRegex!10085 r1!5845))))

(assert (=> start!724194 e!4456386))

(assert (=> start!724194 e!4456387))

(assert (=> start!724194 e!4456388))

(assert (=> start!724194 e!4456392))

(assert (=> start!724194 e!4456390))

(declare-fun b!7468917 () Bool)

(declare-fun res!2996221 () Bool)

(assert (=> b!7468917 (=> (not res!2996221) (not e!4456386))))

(assert (=> b!7468917 (= res!2996221 (validRegex!10085 r2!5783))))

(declare-fun b!7468918 () Bool)

(declare-fun tp!2165537 () Bool)

(declare-fun tp!2165532 () Bool)

(assert (=> b!7468918 (= e!4456388 (and tp!2165537 tp!2165532))))

(declare-fun b!7468919 () Bool)

(assert (=> b!7468919 (= e!4456388 tp_is_empty!49431)))

(declare-fun b!7468920 () Bool)

(assert (=> b!7468920 (= e!4456386 (not e!4456391))))

(declare-fun res!2996218 () Bool)

(assert (=> b!7468920 (=> res!2996218 e!4456391)))

(declare-fun lt!2625155 () Bool)

(assert (=> b!7468920 (= res!2996218 lt!2625155)))

(declare-fun lt!2625151 () Regex!19571)

(assert (=> b!7468920 (= lt!2625141 (matchRSpec!4250 lt!2625151 s!13591))))

(assert (=> b!7468920 (= lt!2625141 (matchR!9335 lt!2625151 s!13591))))

(declare-fun lt!2625153 () Unit!165977)

(assert (=> b!7468920 (= lt!2625153 (mainMatchTheorem!4244 lt!2625151 s!13591))))

(declare-fun lt!2625152 () Regex!19571)

(assert (=> b!7468920 (= lt!2625155 (matchRSpec!4250 lt!2625152 s!13591))))

(assert (=> b!7468920 (= lt!2625155 (matchR!9335 lt!2625152 s!13591))))

(declare-fun lt!2625150 () Unit!165977)

(assert (=> b!7468920 (= lt!2625150 (mainMatchTheorem!4244 lt!2625152 s!13591))))

(assert (=> b!7468920 (= lt!2625151 (Union!19571 lt!2625148 lt!2625154))))

(assert (=> b!7468920 (= lt!2625154 (Concat!28416 r2!5783 rTail!78))))

(assert (=> b!7468920 (= lt!2625148 (Concat!28416 r1!5845 rTail!78))))

(assert (=> b!7468920 (= lt!2625152 (Concat!28416 lt!2625146 rTail!78))))

(assert (=> b!7468920 (= lt!2625146 (Union!19571 r1!5845 r2!5783))))

(declare-fun b!7468921 () Bool)

(declare-fun tp!2165539 () Bool)

(declare-fun tp!2165542 () Bool)

(assert (=> b!7468921 (= e!4456388 (and tp!2165539 tp!2165542))))

(declare-fun b!7468922 () Bool)

(declare-fun tp!2165535 () Bool)

(declare-fun tp!2165534 () Bool)

(assert (=> b!7468922 (= e!4456392 (and tp!2165535 tp!2165534))))

(assert (=> b!7468923 (= e!4456389 true)))

(assert (=> b!7468923 (= (Exists!4190 lambda!462454) (Exists!4190 lambda!462455))))

(declare-fun lt!2625142 () Unit!165977)

(assert (=> b!7468923 (= lt!2625142 (lemmaExistCutMatchRandMatchRSpecEquivalent!2524 r2!5783 rTail!78 s!13591))))

(assert (=> b!7468923 (= (isDefined!13817 (findConcatSeparation!3250 r2!5783 rTail!78 Nil!72163 s!13591 s!13591)) (Exists!4190 lambda!462454))))

(declare-fun lt!2625138 () Unit!165977)

(assert (=> b!7468923 (= lt!2625138 (lemmaFindConcatSeparationEquivalentToExists!3008 r2!5783 rTail!78 s!13591))))

(declare-fun b!7468924 () Bool)

(declare-fun tp!2165536 () Bool)

(declare-fun tp!2165544 () Bool)

(assert (=> b!7468924 (= e!4456387 (and tp!2165536 tp!2165544))))

(declare-fun b!7468925 () Bool)

(declare-fun res!2996222 () Bool)

(assert (=> b!7468925 (=> (not res!2996222) (not e!4456386))))

(assert (=> b!7468925 (= res!2996222 (validRegex!10085 rTail!78))))

(declare-fun b!7468926 () Bool)

(declare-fun tp!2165547 () Bool)

(assert (=> b!7468926 (= e!4456387 tp!2165547)))

(declare-fun b!7468927 () Bool)

(assert (=> b!7468927 (= e!4456392 tp_is_empty!49431)))

(assert (= (and start!724194 res!2996217) b!7468917))

(assert (= (and b!7468917 res!2996221) b!7468925))

(assert (= (and b!7468925 res!2996222) b!7468920))

(assert (= (and b!7468920 (not res!2996218)) b!7468916))

(assert (= (and b!7468916 (not res!2996219)) b!7468910))

(assert (= (and b!7468910 (not res!2996220)) b!7468923))

(get-info :version)

(assert (= (and start!724194 ((_ is ElementMatch!19571) r1!5845)) b!7468914))

(assert (= (and start!724194 ((_ is Concat!28416) r1!5845)) b!7468924))

(assert (= (and start!724194 ((_ is Star!19571) r1!5845)) b!7468926))

(assert (= (and start!724194 ((_ is Union!19571) r1!5845)) b!7468913))

(assert (= (and start!724194 ((_ is ElementMatch!19571) r2!5783)) b!7468919))

(assert (= (and start!724194 ((_ is Concat!28416) r2!5783)) b!7468918))

(assert (= (and start!724194 ((_ is Star!19571) r2!5783)) b!7468911))

(assert (= (and start!724194 ((_ is Union!19571) r2!5783)) b!7468921))

(assert (= (and start!724194 ((_ is ElementMatch!19571) rTail!78)) b!7468927))

(assert (= (and start!724194 ((_ is Concat!28416) rTail!78)) b!7468915))

(assert (= (and start!724194 ((_ is Star!19571) rTail!78)) b!7468909))

(assert (= (and start!724194 ((_ is Union!19571) rTail!78)) b!7468922))

(assert (= (and start!724194 ((_ is Cons!72163) s!13591)) b!7468912))

(declare-fun m!8066738 () Bool)

(assert (=> b!7468916 m!8066738))

(declare-fun m!8066740 () Bool)

(assert (=> b!7468916 m!8066740))

(declare-fun m!8066742 () Bool)

(assert (=> b!7468916 m!8066742))

(declare-fun m!8066744 () Bool)

(assert (=> b!7468916 m!8066744))

(assert (=> b!7468916 m!8066740))

(declare-fun m!8066746 () Bool)

(assert (=> b!7468916 m!8066746))

(assert (=> b!7468916 m!8066744))

(declare-fun m!8066748 () Bool)

(assert (=> b!7468916 m!8066748))

(declare-fun m!8066750 () Bool)

(assert (=> b!7468910 m!8066750))

(declare-fun m!8066752 () Bool)

(assert (=> b!7468910 m!8066752))

(declare-fun m!8066754 () Bool)

(assert (=> b!7468910 m!8066754))

(declare-fun m!8066756 () Bool)

(assert (=> b!7468910 m!8066756))

(declare-fun m!8066758 () Bool)

(assert (=> b!7468910 m!8066758))

(declare-fun m!8066760 () Bool)

(assert (=> b!7468910 m!8066760))

(declare-fun m!8066762 () Bool)

(assert (=> b!7468917 m!8066762))

(declare-fun m!8066764 () Bool)

(assert (=> b!7468925 m!8066764))

(declare-fun m!8066766 () Bool)

(assert (=> start!724194 m!8066766))

(declare-fun m!8066768 () Bool)

(assert (=> b!7468920 m!8066768))

(declare-fun m!8066770 () Bool)

(assert (=> b!7468920 m!8066770))

(declare-fun m!8066772 () Bool)

(assert (=> b!7468920 m!8066772))

(declare-fun m!8066774 () Bool)

(assert (=> b!7468920 m!8066774))

(declare-fun m!8066776 () Bool)

(assert (=> b!7468920 m!8066776))

(declare-fun m!8066778 () Bool)

(assert (=> b!7468920 m!8066778))

(declare-fun m!8066780 () Bool)

(assert (=> b!7468923 m!8066780))

(declare-fun m!8066782 () Bool)

(assert (=> b!7468923 m!8066782))

(declare-fun m!8066784 () Bool)

(assert (=> b!7468923 m!8066784))

(declare-fun m!8066786 () Bool)

(assert (=> b!7468923 m!8066786))

(declare-fun m!8066788 () Bool)

(assert (=> b!7468923 m!8066788))

(assert (=> b!7468923 m!8066788))

(declare-fun m!8066790 () Bool)

(assert (=> b!7468923 m!8066790))

(assert (=> b!7468923 m!8066784))

(check-sat (not b!7468911) (not b!7468910) (not start!724194) (not b!7468916) (not b!7468912) (not b!7468924) (not b!7468909) (not b!7468915) (not b!7468925) tp_is_empty!49431 (not b!7468921) (not b!7468918) (not b!7468913) (not b!7468922) (not b!7468917) (not b!7468926) (not b!7468923) (not b!7468920))
(check-sat)
