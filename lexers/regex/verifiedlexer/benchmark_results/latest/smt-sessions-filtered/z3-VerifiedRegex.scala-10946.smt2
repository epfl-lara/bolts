; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566582 () Bool)

(assert start!566582)

(declare-fun b!5391978 () Bool)

(assert (=> b!5391978 true))

(assert (=> b!5391978 true))

(declare-fun lambda!280123 () Int)

(declare-fun lambda!280122 () Int)

(assert (=> b!5391978 (not (= lambda!280123 lambda!280122))))

(assert (=> b!5391978 true))

(assert (=> b!5391978 true))

(declare-fun b!5391981 () Bool)

(assert (=> b!5391981 true))

(declare-fun b!5391974 () Bool)

(declare-fun res!2291227 () Bool)

(declare-fun e!3343882 () Bool)

(assert (=> b!5391974 (=> res!2291227 e!3343882)))

(declare-datatypes ((C!30548 0))(
  ( (C!30549 (val!24976 Int)) )
))
(declare-datatypes ((Regex!15139 0))(
  ( (ElementMatch!15139 (c!939633 C!30548)) (Concat!23984 (regOne!30790 Regex!15139) (regTwo!30790 Regex!15139)) (EmptyExpr!15139) (Star!15139 (reg!15468 Regex!15139)) (EmptyLang!15139) (Union!15139 (regOne!30791 Regex!15139) (regTwo!30791 Regex!15139)) )
))
(declare-datatypes ((List!61716 0))(
  ( (Nil!61592) (Cons!61592 (h!68040 Regex!15139) (t!374939 List!61716)) )
))
(declare-datatypes ((Context!9046 0))(
  ( (Context!9047 (exprs!5023 List!61716)) )
))
(declare-datatypes ((List!61717 0))(
  ( (Nil!61593) (Cons!61593 (h!68041 Context!9046) (t!374940 List!61717)) )
))
(declare-fun zl!343 () List!61717)

(declare-fun isEmpty!33593 (List!61717) Bool)

(assert (=> b!5391974 (= res!2291227 (not (isEmpty!33593 (t!374940 zl!343))))))

(declare-fun b!5391976 () Bool)

(declare-fun e!3343881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2196933 () (InoxSet Context!9046))

(declare-datatypes ((List!61718 0))(
  ( (Nil!61594) (Cons!61594 (h!68042 C!30548) (t!374941 List!61718)) )
))
(declare-fun s!2326 () List!61718)

(declare-fun matchZipper!1383 ((InoxSet Context!9046) List!61718) Bool)

(assert (=> b!5391976 (= e!3343881 (matchZipper!1383 lt!2196933 (t!374941 s!2326)))))

(declare-fun b!5391977 () Bool)

(declare-fun e!3343878 () Bool)

(declare-fun e!3343873 () Bool)

(assert (=> b!5391977 (= e!3343878 e!3343873)))

(declare-fun res!2291244 () Bool)

(assert (=> b!5391977 (=> res!2291244 e!3343873)))

(declare-fun r!7292 () Regex!15139)

(declare-fun lt!2196929 () Regex!15139)

(assert (=> b!5391977 (= res!2291244 (not (= r!7292 lt!2196929)))))

(declare-fun lt!2196932 () Regex!15139)

(assert (=> b!5391977 (= lt!2196929 (Concat!23984 lt!2196932 (regTwo!30790 r!7292)))))

(declare-fun e!3343880 () Bool)

(assert (=> b!5391978 (= e!3343882 e!3343880)))

(declare-fun res!2291232 () Bool)

(assert (=> b!5391978 (=> res!2291232 e!3343880)))

(declare-fun lt!2196955 () Bool)

(declare-fun lt!2196947 () Bool)

(get-info :version)

(assert (=> b!5391978 (= res!2291232 (or (not (= lt!2196955 lt!2196947)) ((_ is Nil!61594) s!2326)))))

(declare-fun Exists!2320 (Int) Bool)

(assert (=> b!5391978 (= (Exists!2320 lambda!280122) (Exists!2320 lambda!280123))))

(declare-datatypes ((Unit!154078 0))(
  ( (Unit!154079) )
))
(declare-fun lt!2196938 () Unit!154078)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!974 (Regex!15139 Regex!15139 List!61718) Unit!154078)

(assert (=> b!5391978 (= lt!2196938 (lemmaExistCutMatchRandMatchRSpecEquivalent!974 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326))))

(assert (=> b!5391978 (= lt!2196947 (Exists!2320 lambda!280122))))

(declare-datatypes ((tuple2!64676 0))(
  ( (tuple2!64677 (_1!35641 List!61718) (_2!35641 List!61718)) )
))
(declare-datatypes ((Option!15250 0))(
  ( (None!15249) (Some!15249 (v!51278 tuple2!64676)) )
))
(declare-fun isDefined!11953 (Option!15250) Bool)

(declare-fun findConcatSeparation!1664 (Regex!15139 Regex!15139 List!61718 List!61718 List!61718) Option!15250)

(assert (=> b!5391978 (= lt!2196947 (isDefined!11953 (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) Nil!61594 s!2326 s!2326)))))

(declare-fun lt!2196926 () Unit!154078)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1428 (Regex!15139 Regex!15139 List!61718) Unit!154078)

(assert (=> b!5391978 (= lt!2196926 (lemmaFindConcatSeparationEquivalentToExists!1428 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326))))

(declare-fun b!5391979 () Bool)

(declare-fun res!2291231 () Bool)

(declare-fun e!3343879 () Bool)

(assert (=> b!5391979 (=> res!2291231 e!3343879)))

(declare-fun z!1189 () (InoxSet Context!9046))

(assert (=> b!5391979 (= res!2291231 (not (matchZipper!1383 z!1189 s!2326)))))

(declare-fun b!5391980 () Bool)

(declare-fun res!2291248 () Bool)

(assert (=> b!5391980 (=> res!2291248 e!3343879)))

(declare-fun lt!2196928 () Bool)

(assert (=> b!5391980 (= res!2291248 (not lt!2196928))))

(declare-fun e!3343865 () Bool)

(assert (=> b!5391981 (= e!3343880 e!3343865)))

(declare-fun res!2291240 () Bool)

(assert (=> b!5391981 (=> res!2291240 e!3343865)))

(assert (=> b!5391981 (= res!2291240 (or (and ((_ is ElementMatch!15139) (regOne!30790 r!7292)) (= (c!939633 (regOne!30790 r!7292)) (h!68042 s!2326))) ((_ is Union!15139) (regOne!30790 r!7292))))))

(declare-fun lt!2196958 () Unit!154078)

(declare-fun e!3343866 () Unit!154078)

(assert (=> b!5391981 (= lt!2196958 e!3343866)))

(declare-fun c!939632 () Bool)

(assert (=> b!5391981 (= c!939632 lt!2196928)))

(declare-fun nullable!5308 (Regex!15139) Bool)

(assert (=> b!5391981 (= lt!2196928 (nullable!5308 (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun lambda!280124 () Int)

(declare-fun flatMap!866 ((InoxSet Context!9046) Int) (InoxSet Context!9046))

(declare-fun derivationStepZipperUp!511 (Context!9046 C!30548) (InoxSet Context!9046))

(assert (=> b!5391981 (= (flatMap!866 z!1189 lambda!280124) (derivationStepZipperUp!511 (h!68041 zl!343) (h!68042 s!2326)))))

(declare-fun lt!2196942 () Unit!154078)

(declare-fun lemmaFlatMapOnSingletonSet!398 ((InoxSet Context!9046) Context!9046 Int) Unit!154078)

(assert (=> b!5391981 (= lt!2196942 (lemmaFlatMapOnSingletonSet!398 z!1189 (h!68041 zl!343) lambda!280124))))

(declare-fun lt!2196934 () Context!9046)

(assert (=> b!5391981 (= lt!2196933 (derivationStepZipperUp!511 lt!2196934 (h!68042 s!2326)))))

(declare-fun lt!2196949 () (InoxSet Context!9046))

(declare-fun derivationStepZipperDown!587 (Regex!15139 Context!9046 C!30548) (InoxSet Context!9046))

(assert (=> b!5391981 (= lt!2196949 (derivationStepZipperDown!587 (h!68040 (exprs!5023 (h!68041 zl!343))) lt!2196934 (h!68042 s!2326)))))

(assert (=> b!5391981 (= lt!2196934 (Context!9047 (t!374939 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun lt!2196959 () (InoxSet Context!9046))

(assert (=> b!5391981 (= lt!2196959 (derivationStepZipperUp!511 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343))))) (h!68042 s!2326)))))

(declare-fun b!5391982 () Bool)

(declare-fun e!3343868 () Bool)

(declare-fun e!3343874 () Bool)

(assert (=> b!5391982 (= e!3343868 e!3343874)))

(declare-fun res!2291223 () Bool)

(assert (=> b!5391982 (=> res!2291223 e!3343874)))

(declare-fun lt!2196950 () Context!9046)

(declare-fun unfocusZipper!881 (List!61717) Regex!15139)

(assert (=> b!5391982 (= res!2291223 (not (= (unfocusZipper!881 (Cons!61593 lt!2196950 Nil!61593)) (reg!15468 (regOne!30790 r!7292)))))))

(declare-fun lt!2196948 () (InoxSet Context!9046))

(declare-fun lt!2196956 () Context!9046)

(assert (=> b!5391982 (= (flatMap!866 lt!2196948 lambda!280124) (derivationStepZipperUp!511 lt!2196956 (h!68042 s!2326)))))

(declare-fun lt!2196943 () Unit!154078)

(assert (=> b!5391982 (= lt!2196943 (lemmaFlatMapOnSingletonSet!398 lt!2196948 lt!2196956 lambda!280124))))

(declare-fun lt!2196941 () (InoxSet Context!9046))

(assert (=> b!5391982 (= (flatMap!866 lt!2196941 lambda!280124) (derivationStepZipperUp!511 lt!2196950 (h!68042 s!2326)))))

(declare-fun lt!2196935 () Unit!154078)

(assert (=> b!5391982 (= lt!2196935 (lemmaFlatMapOnSingletonSet!398 lt!2196941 lt!2196950 lambda!280124))))

(declare-fun lt!2196930 () (InoxSet Context!9046))

(assert (=> b!5391982 (= lt!2196930 (derivationStepZipperUp!511 lt!2196956 (h!68042 s!2326)))))

(declare-fun lt!2196931 () (InoxSet Context!9046))

(assert (=> b!5391982 (= lt!2196931 (derivationStepZipperUp!511 lt!2196950 (h!68042 s!2326)))))

(assert (=> b!5391982 (= lt!2196948 (store ((as const (Array Context!9046 Bool)) false) lt!2196956 true))))

(assert (=> b!5391982 (= lt!2196941 (store ((as const (Array Context!9046 Bool)) false) lt!2196950 true))))

(assert (=> b!5391982 (= lt!2196950 (Context!9047 (Cons!61592 (reg!15468 (regOne!30790 r!7292)) Nil!61592)))))

(declare-fun b!5391983 () Bool)

(declare-fun res!2291230 () Bool)

(declare-fun e!3343863 () Bool)

(assert (=> b!5391983 (=> res!2291230 e!3343863)))

(declare-fun lt!2196939 () Bool)

(declare-fun lt!2196960 () Bool)

(assert (=> b!5391983 (= res!2291230 (or (not lt!2196939) (not lt!2196960)))))

(declare-fun b!5391984 () Bool)

(declare-fun e!3343871 () Bool)

(declare-fun tp!1492941 () Bool)

(declare-fun tp!1492946 () Bool)

(assert (=> b!5391984 (= e!3343871 (and tp!1492941 tp!1492946))))

(declare-fun tp!1492942 () Bool)

(declare-fun e!3343875 () Bool)

(declare-fun e!3343883 () Bool)

(declare-fun b!5391985 () Bool)

(declare-fun inv!81094 (Context!9046) Bool)

(assert (=> b!5391985 (= e!3343875 (and (inv!81094 (h!68041 zl!343)) e!3343883 tp!1492942))))

(declare-fun b!5391986 () Bool)

(declare-fun e!3343877 () Bool)

(assert (=> b!5391986 (= e!3343877 (nullable!5308 (regOne!30790 (regOne!30790 r!7292))))))

(declare-fun b!5391987 () Bool)

(declare-fun res!2291222 () Bool)

(declare-fun e!3343864 () Bool)

(assert (=> b!5391987 (=> (not res!2291222) (not e!3343864))))

(declare-fun toList!8923 ((InoxSet Context!9046)) List!61717)

(assert (=> b!5391987 (= res!2291222 (= (toList!8923 z!1189) zl!343))))

(declare-fun b!5391988 () Bool)

(declare-fun e!3343862 () Bool)

(declare-fun tp!1492940 () Bool)

(assert (=> b!5391988 (= e!3343862 tp!1492940)))

(declare-fun b!5391989 () Bool)

(declare-fun tp!1492939 () Bool)

(assert (=> b!5391989 (= e!3343871 tp!1492939)))

(declare-fun b!5391990 () Bool)

(declare-fun e!3343867 () Bool)

(declare-fun tp_is_empty!39531 () Bool)

(declare-fun tp!1492943 () Bool)

(assert (=> b!5391990 (= e!3343867 (and tp_is_empty!39531 tp!1492943))))

(declare-fun b!5391975 () Bool)

(declare-fun res!2291228 () Bool)

(assert (=> b!5391975 (=> res!2291228 e!3343882)))

(declare-fun generalisedConcat!808 (List!61716) Regex!15139)

(assert (=> b!5391975 (= res!2291228 (not (= r!7292 (generalisedConcat!808 (exprs!5023 (h!68041 zl!343))))))))

(declare-fun res!2291241 () Bool)

(assert (=> start!566582 (=> (not res!2291241) (not e!3343864))))

(declare-fun validRegex!6875 (Regex!15139) Bool)

(assert (=> start!566582 (= res!2291241 (validRegex!6875 r!7292))))

(assert (=> start!566582 e!3343864))

(declare-fun c!324 () Context!9046)

(declare-fun e!3343861 () Bool)

(assert (=> start!566582 (and (inv!81094 c!324) e!3343861)))

(assert (=> start!566582 e!3343871))

(assert (=> start!566582 e!3343867))

(declare-fun condSetEmpty!35033 () Bool)

(assert (=> start!566582 (= condSetEmpty!35033 (= z!1189 ((as const (Array Context!9046 Bool)) false)))))

(declare-fun setRes!35033 () Bool)

(assert (=> start!566582 setRes!35033))

(assert (=> start!566582 e!3343875))

(declare-fun b!5391991 () Bool)

(declare-fun e!3343872 () Bool)

(declare-fun e!3343884 () Bool)

(assert (=> b!5391991 (= e!3343872 e!3343884)))

(declare-fun res!2291226 () Bool)

(assert (=> b!5391991 (=> res!2291226 e!3343884)))

(declare-fun lt!2196946 () (InoxSet Context!9046))

(declare-fun lt!2196944 () (InoxSet Context!9046))

(assert (=> b!5391991 (= res!2291226 (not (= lt!2196946 lt!2196944)))))

(declare-fun lt!2196945 () Context!9046)

(declare-fun lt!2196957 () (InoxSet Context!9046))

(assert (=> b!5391991 (= (flatMap!866 lt!2196957 lambda!280124) (derivationStepZipperUp!511 lt!2196945 (h!68042 s!2326)))))

(declare-fun lt!2196951 () Unit!154078)

(assert (=> b!5391991 (= lt!2196951 (lemmaFlatMapOnSingletonSet!398 lt!2196957 lt!2196945 lambda!280124))))

(declare-fun lt!2196927 () (InoxSet Context!9046))

(assert (=> b!5391991 (= lt!2196927 (derivationStepZipperUp!511 lt!2196945 (h!68042 s!2326)))))

(declare-fun derivationStepZipper!1378 ((InoxSet Context!9046) C!30548) (InoxSet Context!9046))

(assert (=> b!5391991 (= lt!2196946 (derivationStepZipper!1378 lt!2196957 (h!68042 s!2326)))))

(assert (=> b!5391991 (= lt!2196957 (store ((as const (Array Context!9046 Bool)) false) lt!2196945 true))))

(declare-fun lt!2196952 () List!61716)

(assert (=> b!5391991 (= lt!2196945 (Context!9047 (Cons!61592 (reg!15468 (regOne!30790 r!7292)) lt!2196952)))))

(declare-fun setElem!35033 () Context!9046)

(declare-fun setNonEmpty!35033 () Bool)

(declare-fun tp!1492944 () Bool)

(assert (=> setNonEmpty!35033 (= setRes!35033 (and tp!1492944 (inv!81094 setElem!35033) e!3343862))))

(declare-fun setRest!35033 () (InoxSet Context!9046))

(assert (=> setNonEmpty!35033 (= z!1189 ((_ map or) (store ((as const (Array Context!9046 Bool)) false) setElem!35033 true) setRest!35033))))

(declare-fun b!5391992 () Bool)

(declare-fun res!2291243 () Bool)

(assert (=> b!5391992 (=> res!2291243 e!3343882)))

(assert (=> b!5391992 (= res!2291243 (or ((_ is EmptyExpr!15139) r!7292) ((_ is EmptyLang!15139) r!7292) ((_ is ElementMatch!15139) r!7292) ((_ is Union!15139) r!7292) (not ((_ is Concat!23984) r!7292))))))

(declare-fun b!5391993 () Bool)

(declare-fun Unit!154080 () Unit!154078)

(assert (=> b!5391993 (= e!3343866 Unit!154080)))

(declare-fun lt!2196953 () Unit!154078)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!376 ((InoxSet Context!9046) (InoxSet Context!9046) List!61718) Unit!154078)

(assert (=> b!5391993 (= lt!2196953 (lemmaZipperConcatMatchesSameAsBothZippers!376 lt!2196949 lt!2196933 (t!374941 s!2326)))))

(declare-fun res!2291233 () Bool)

(assert (=> b!5391993 (= res!2291233 (matchZipper!1383 lt!2196949 (t!374941 s!2326)))))

(assert (=> b!5391993 (=> res!2291233 e!3343881)))

(assert (=> b!5391993 (= (matchZipper!1383 ((_ map or) lt!2196949 lt!2196933) (t!374941 s!2326)) e!3343881)))

(declare-fun b!5391994 () Bool)

(declare-fun e!3343876 () Bool)

(assert (=> b!5391994 (= e!3343876 (not e!3343882))))

(declare-fun res!2291245 () Bool)

(assert (=> b!5391994 (=> res!2291245 e!3343882)))

(assert (=> b!5391994 (= res!2291245 (not ((_ is Cons!61593) zl!343)))))

(declare-fun matchRSpec!2242 (Regex!15139 List!61718) Bool)

(assert (=> b!5391994 (= lt!2196955 (matchRSpec!2242 r!7292 s!2326))))

(declare-fun matchR!7324 (Regex!15139 List!61718) Bool)

(assert (=> b!5391994 (= lt!2196955 (matchR!7324 r!7292 s!2326))))

(declare-fun lt!2196936 () Unit!154078)

(declare-fun mainMatchTheorem!2242 (Regex!15139 List!61718) Unit!154078)

(assert (=> b!5391994 (= lt!2196936 (mainMatchTheorem!2242 r!7292 s!2326))))

(declare-fun b!5391995 () Bool)

(declare-fun tp!1492949 () Bool)

(declare-fun tp!1492947 () Bool)

(assert (=> b!5391995 (= e!3343871 (and tp!1492949 tp!1492947))))

(declare-fun b!5391996 () Bool)

(assert (=> b!5391996 (= e!3343884 e!3343878)))

(declare-fun res!2291229 () Bool)

(assert (=> b!5391996 (=> res!2291229 e!3343878)))

(assert (=> b!5391996 (= res!2291229 (not (= lt!2196960 (matchZipper!1383 lt!2196946 (t!374941 s!2326)))))))

(assert (=> b!5391996 (= lt!2196960 (matchZipper!1383 lt!2196957 s!2326))))

(declare-fun b!5391997 () Bool)

(assert (=> b!5391997 (= e!3343874 e!3343879)))

(declare-fun res!2291236 () Bool)

(assert (=> b!5391997 (=> res!2291236 e!3343879)))

(assert (=> b!5391997 (= res!2291236 lt!2196955)))

(declare-fun lt!2196937 () Regex!15139)

(assert (=> b!5391997 (= (matchR!7324 lt!2196937 s!2326) (matchRSpec!2242 lt!2196937 s!2326))))

(declare-fun lt!2196940 () Unit!154078)

(assert (=> b!5391997 (= lt!2196940 (mainMatchTheorem!2242 lt!2196937 s!2326))))

(declare-fun b!5391998 () Bool)

(assert (=> b!5391998 (= e!3343864 e!3343876)))

(declare-fun res!2291225 () Bool)

(assert (=> b!5391998 (=> (not res!2291225) (not e!3343876))))

(declare-fun lt!2196954 () Regex!15139)

(assert (=> b!5391998 (= res!2291225 (= r!7292 lt!2196954))))

(assert (=> b!5391998 (= lt!2196954 (unfocusZipper!881 zl!343))))

(declare-fun b!5391999 () Bool)

(assert (=> b!5391999 (= e!3343871 tp_is_empty!39531)))

(declare-fun b!5392000 () Bool)

(declare-fun res!2291238 () Bool)

(assert (=> b!5392000 (=> res!2291238 e!3343882)))

(assert (=> b!5392000 (= res!2291238 (not ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392001 () Bool)

(declare-fun e!3343870 () Bool)

(assert (=> b!5392001 (= e!3343870 (not (matchZipper!1383 lt!2196933 (t!374941 s!2326))))))

(declare-fun b!5392002 () Bool)

(declare-fun res!2291220 () Bool)

(assert (=> b!5392002 (=> res!2291220 e!3343880)))

(declare-fun isEmpty!33594 (List!61716) Bool)

(assert (=> b!5392002 (= res!2291220 (isEmpty!33594 (t!374939 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392003 () Bool)

(declare-fun res!2291249 () Bool)

(assert (=> b!5392003 (=> res!2291249 e!3343865)))

(assert (=> b!5392003 (= res!2291249 e!3343877)))

(declare-fun res!2291247 () Bool)

(assert (=> b!5392003 (=> (not res!2291247) (not e!3343877))))

(assert (=> b!5392003 (= res!2291247 ((_ is Concat!23984) (regOne!30790 r!7292)))))

(declare-fun b!5392004 () Bool)

(assert (=> b!5392004 (= e!3343865 e!3343872)))

(declare-fun res!2291221 () Bool)

(assert (=> b!5392004 (=> res!2291221 e!3343872)))

(assert (=> b!5392004 (= res!2291221 (not (= lt!2196949 lt!2196944)))))

(assert (=> b!5392004 (= lt!2196944 (derivationStepZipperDown!587 (reg!15468 (regOne!30790 r!7292)) lt!2196956 (h!68042 s!2326)))))

(assert (=> b!5392004 (= lt!2196956 (Context!9047 lt!2196952))))

(assert (=> b!5392004 (= lt!2196952 (Cons!61592 lt!2196932 (t!374939 (exprs!5023 (h!68041 zl!343)))))))

(assert (=> b!5392004 (= lt!2196932 (Star!15139 (reg!15468 (regOne!30790 r!7292))))))

(declare-fun setIsEmpty!35033 () Bool)

(assert (=> setIsEmpty!35033 setRes!35033))

(declare-fun b!5392005 () Bool)

(declare-fun tp!1492948 () Bool)

(assert (=> b!5392005 (= e!3343861 tp!1492948)))

(declare-fun b!5392006 () Bool)

(declare-fun res!2291239 () Bool)

(assert (=> b!5392006 (=> res!2291239 e!3343874)))

(assert (=> b!5392006 (= res!2291239 (not (= (unfocusZipper!881 (Cons!61593 lt!2196956 Nil!61593)) lt!2196929)))))

(declare-fun b!5392007 () Bool)

(assert (=> b!5392007 (= e!3343879 e!3343863)))

(declare-fun res!2291219 () Bool)

(assert (=> b!5392007 (=> res!2291219 e!3343863)))

(assert (=> b!5392007 (= res!2291219 e!3343870)))

(declare-fun res!2291246 () Bool)

(assert (=> b!5392007 (=> (not res!2291246) (not e!3343870))))

(assert (=> b!5392007 (= res!2291246 (not lt!2196939))))

(assert (=> b!5392007 (= lt!2196939 (matchZipper!1383 lt!2196949 (t!374941 s!2326)))))

(declare-fun b!5392008 () Bool)

(assert (=> b!5392008 (= e!3343873 e!3343868)))

(declare-fun res!2291242 () Bool)

(assert (=> b!5392008 (=> res!2291242 e!3343868)))

(assert (=> b!5392008 (= res!2291242 (not (= (unfocusZipper!881 (Cons!61593 lt!2196945 Nil!61593)) lt!2196937)))))

(assert (=> b!5392008 (= lt!2196937 (Concat!23984 (reg!15468 (regOne!30790 r!7292)) lt!2196929))))

(declare-fun b!5392009 () Bool)

(declare-fun e!3343869 () Bool)

(assert (=> b!5392009 (= e!3343863 e!3343869)))

(declare-fun res!2291224 () Bool)

(assert (=> b!5392009 (=> res!2291224 e!3343869)))

(declare-fun lambda!280125 () Int)

(declare-fun forall!14517 (List!61716 Int) Bool)

(assert (=> b!5392009 (= res!2291224 (not (forall!14517 (exprs!5023 c!324) lambda!280125)))))

(declare-fun b!5392010 () Bool)

(declare-fun res!2291237 () Bool)

(assert (=> b!5392010 (=> res!2291237 e!3343865)))

(assert (=> b!5392010 (= res!2291237 (or ((_ is Concat!23984) (regOne!30790 r!7292)) (not ((_ is Star!15139) (regOne!30790 r!7292)))))))

(declare-fun b!5392011 () Bool)

(declare-fun tp!1492945 () Bool)

(assert (=> b!5392011 (= e!3343883 tp!1492945)))

(declare-fun b!5392012 () Bool)

(assert (=> b!5392012 (= e!3343869 (forall!14517 lt!2196952 lambda!280125))))

(declare-fun b!5392013 () Bool)

(declare-fun res!2291235 () Bool)

(assert (=> b!5392013 (=> res!2291235 e!3343882)))

(declare-fun generalisedUnion!1068 (List!61716) Regex!15139)

(declare-fun unfocusZipperList!581 (List!61717) List!61716)

(assert (=> b!5392013 (= res!2291235 (not (= r!7292 (generalisedUnion!1068 (unfocusZipperList!581 zl!343)))))))

(declare-fun b!5392014 () Bool)

(declare-fun Unit!154081 () Unit!154078)

(assert (=> b!5392014 (= e!3343866 Unit!154081)))

(declare-fun b!5392015 () Bool)

(declare-fun res!2291234 () Bool)

(assert (=> b!5392015 (=> res!2291234 e!3343878)))

(assert (=> b!5392015 (= res!2291234 (not (= lt!2196954 r!7292)))))

(assert (= (and start!566582 res!2291241) b!5391987))

(assert (= (and b!5391987 res!2291222) b!5391998))

(assert (= (and b!5391998 res!2291225) b!5391994))

(assert (= (and b!5391994 (not res!2291245)) b!5391974))

(assert (= (and b!5391974 (not res!2291227)) b!5391975))

(assert (= (and b!5391975 (not res!2291228)) b!5392000))

(assert (= (and b!5392000 (not res!2291238)) b!5392013))

(assert (= (and b!5392013 (not res!2291235)) b!5391992))

(assert (= (and b!5391992 (not res!2291243)) b!5391978))

(assert (= (and b!5391978 (not res!2291232)) b!5392002))

(assert (= (and b!5392002 (not res!2291220)) b!5391981))

(assert (= (and b!5391981 c!939632) b!5391993))

(assert (= (and b!5391981 (not c!939632)) b!5392014))

(assert (= (and b!5391993 (not res!2291233)) b!5391976))

(assert (= (and b!5391981 (not res!2291240)) b!5392003))

(assert (= (and b!5392003 res!2291247) b!5391986))

(assert (= (and b!5392003 (not res!2291249)) b!5392010))

(assert (= (and b!5392010 (not res!2291237)) b!5392004))

(assert (= (and b!5392004 (not res!2291221)) b!5391991))

(assert (= (and b!5391991 (not res!2291226)) b!5391996))

(assert (= (and b!5391996 (not res!2291229)) b!5392015))

(assert (= (and b!5392015 (not res!2291234)) b!5391977))

(assert (= (and b!5391977 (not res!2291244)) b!5392008))

(assert (= (and b!5392008 (not res!2291242)) b!5391982))

(assert (= (and b!5391982 (not res!2291223)) b!5392006))

(assert (= (and b!5392006 (not res!2291239)) b!5391997))

(assert (= (and b!5391997 (not res!2291236)) b!5391979))

(assert (= (and b!5391979 (not res!2291231)) b!5391980))

(assert (= (and b!5391980 (not res!2291248)) b!5392007))

(assert (= (and b!5392007 res!2291246) b!5392001))

(assert (= (and b!5392007 (not res!2291219)) b!5391983))

(assert (= (and b!5391983 (not res!2291230)) b!5392009))

(assert (= (and b!5392009 (not res!2291224)) b!5392012))

(assert (= start!566582 b!5392005))

(assert (= (and start!566582 ((_ is ElementMatch!15139) r!7292)) b!5391999))

(assert (= (and start!566582 ((_ is Concat!23984) r!7292)) b!5391984))

(assert (= (and start!566582 ((_ is Star!15139) r!7292)) b!5391989))

(assert (= (and start!566582 ((_ is Union!15139) r!7292)) b!5391995))

(assert (= (and start!566582 ((_ is Cons!61594) s!2326)) b!5391990))

(assert (= (and start!566582 condSetEmpty!35033) setIsEmpty!35033))

(assert (= (and start!566582 (not condSetEmpty!35033)) setNonEmpty!35033))

(assert (= setNonEmpty!35033 b!5391988))

(assert (= b!5391985 b!5392011))

(assert (= (and start!566582 ((_ is Cons!61593) zl!343)) b!5391985))

(declare-fun m!6417562 () Bool)

(assert (=> b!5392001 m!6417562))

(declare-fun m!6417564 () Bool)

(assert (=> b!5392012 m!6417564))

(declare-fun m!6417566 () Bool)

(assert (=> b!5391974 m!6417566))

(declare-fun m!6417568 () Bool)

(assert (=> b!5391997 m!6417568))

(declare-fun m!6417570 () Bool)

(assert (=> b!5391997 m!6417570))

(declare-fun m!6417572 () Bool)

(assert (=> b!5391997 m!6417572))

(declare-fun m!6417574 () Bool)

(assert (=> b!5391994 m!6417574))

(declare-fun m!6417576 () Bool)

(assert (=> b!5391994 m!6417576))

(declare-fun m!6417578 () Bool)

(assert (=> b!5391994 m!6417578))

(declare-fun m!6417580 () Bool)

(assert (=> b!5392008 m!6417580))

(declare-fun m!6417582 () Bool)

(assert (=> b!5391996 m!6417582))

(declare-fun m!6417584 () Bool)

(assert (=> b!5391996 m!6417584))

(declare-fun m!6417586 () Bool)

(assert (=> setNonEmpty!35033 m!6417586))

(declare-fun m!6417588 () Bool)

(assert (=> b!5392002 m!6417588))

(declare-fun m!6417590 () Bool)

(assert (=> b!5391985 m!6417590))

(declare-fun m!6417592 () Bool)

(assert (=> start!566582 m!6417592))

(declare-fun m!6417594 () Bool)

(assert (=> start!566582 m!6417594))

(declare-fun m!6417596 () Bool)

(assert (=> b!5391993 m!6417596))

(declare-fun m!6417598 () Bool)

(assert (=> b!5391993 m!6417598))

(declare-fun m!6417600 () Bool)

(assert (=> b!5391993 m!6417600))

(declare-fun m!6417602 () Bool)

(assert (=> b!5391981 m!6417602))

(declare-fun m!6417604 () Bool)

(assert (=> b!5391981 m!6417604))

(declare-fun m!6417606 () Bool)

(assert (=> b!5391981 m!6417606))

(declare-fun m!6417608 () Bool)

(assert (=> b!5391981 m!6417608))

(declare-fun m!6417610 () Bool)

(assert (=> b!5391981 m!6417610))

(declare-fun m!6417612 () Bool)

(assert (=> b!5391981 m!6417612))

(declare-fun m!6417614 () Bool)

(assert (=> b!5391981 m!6417614))

(assert (=> b!5392007 m!6417598))

(declare-fun m!6417616 () Bool)

(assert (=> b!5391975 m!6417616))

(declare-fun m!6417618 () Bool)

(assert (=> b!5392004 m!6417618))

(declare-fun m!6417620 () Bool)

(assert (=> b!5392009 m!6417620))

(declare-fun m!6417622 () Bool)

(assert (=> b!5391998 m!6417622))

(declare-fun m!6417624 () Bool)

(assert (=> b!5391982 m!6417624))

(declare-fun m!6417626 () Bool)

(assert (=> b!5391982 m!6417626))

(declare-fun m!6417628 () Bool)

(assert (=> b!5391982 m!6417628))

(declare-fun m!6417630 () Bool)

(assert (=> b!5391982 m!6417630))

(declare-fun m!6417632 () Bool)

(assert (=> b!5391982 m!6417632))

(declare-fun m!6417634 () Bool)

(assert (=> b!5391982 m!6417634))

(declare-fun m!6417636 () Bool)

(assert (=> b!5391982 m!6417636))

(declare-fun m!6417638 () Bool)

(assert (=> b!5391982 m!6417638))

(declare-fun m!6417640 () Bool)

(assert (=> b!5391982 m!6417640))

(declare-fun m!6417642 () Bool)

(assert (=> b!5391979 m!6417642))

(declare-fun m!6417644 () Bool)

(assert (=> b!5391991 m!6417644))

(declare-fun m!6417646 () Bool)

(assert (=> b!5391991 m!6417646))

(declare-fun m!6417648 () Bool)

(assert (=> b!5391991 m!6417648))

(declare-fun m!6417650 () Bool)

(assert (=> b!5391991 m!6417650))

(declare-fun m!6417652 () Bool)

(assert (=> b!5391991 m!6417652))

(declare-fun m!6417654 () Bool)

(assert (=> b!5391987 m!6417654))

(declare-fun m!6417656 () Bool)

(assert (=> b!5392013 m!6417656))

(assert (=> b!5392013 m!6417656))

(declare-fun m!6417658 () Bool)

(assert (=> b!5392013 m!6417658))

(declare-fun m!6417660 () Bool)

(assert (=> b!5391978 m!6417660))

(declare-fun m!6417662 () Bool)

(assert (=> b!5391978 m!6417662))

(declare-fun m!6417664 () Bool)

(assert (=> b!5391978 m!6417664))

(assert (=> b!5391978 m!6417660))

(declare-fun m!6417666 () Bool)

(assert (=> b!5391978 m!6417666))

(declare-fun m!6417668 () Bool)

(assert (=> b!5391978 m!6417668))

(assert (=> b!5391978 m!6417662))

(declare-fun m!6417670 () Bool)

(assert (=> b!5391978 m!6417670))

(assert (=> b!5391976 m!6417562))

(declare-fun m!6417672 () Bool)

(assert (=> b!5391986 m!6417672))

(declare-fun m!6417674 () Bool)

(assert (=> b!5392006 m!6417674))

(check-sat (not b!5392002) (not setNonEmpty!35033) (not b!5391991) (not b!5391978) (not b!5392009) (not b!5391988) (not b!5391982) (not b!5392001) (not b!5391979) (not b!5391989) (not b!5391986) (not start!566582) tp_is_empty!39531 (not b!5391987) (not b!5391984) (not b!5391997) (not b!5391981) (not b!5392012) (not b!5391996) (not b!5391975) (not b!5391974) (not b!5392013) (not b!5392004) (not b!5392011) (not b!5391976) (not b!5391995) (not b!5391998) (not b!5391985) (not b!5392008) (not b!5391993) (not b!5391990) (not b!5392005) (not b!5392007) (not b!5392006) (not b!5391994))
(check-sat)
(get-model)

(declare-fun d!1723735 () Bool)

(declare-fun c!939718 () Bool)

(declare-fun isEmpty!33596 (List!61718) Bool)

(assert (=> d!1723735 (= c!939718 (isEmpty!33596 s!2326))))

(declare-fun e!3344048 () Bool)

(assert (=> d!1723735 (= (matchZipper!1383 z!1189 s!2326) e!3344048)))

(declare-fun b!5392299 () Bool)

(declare-fun nullableZipper!1424 ((InoxSet Context!9046)) Bool)

(assert (=> b!5392299 (= e!3344048 (nullableZipper!1424 z!1189))))

(declare-fun b!5392300 () Bool)

(declare-fun head!11566 (List!61718) C!30548)

(declare-fun tail!10663 (List!61718) List!61718)

(assert (=> b!5392300 (= e!3344048 (matchZipper!1383 (derivationStepZipper!1378 z!1189 (head!11566 s!2326)) (tail!10663 s!2326)))))

(assert (= (and d!1723735 c!939718) b!5392299))

(assert (= (and d!1723735 (not c!939718)) b!5392300))

(declare-fun m!6417876 () Bool)

(assert (=> d!1723735 m!6417876))

(declare-fun m!6417878 () Bool)

(assert (=> b!5392299 m!6417878))

(declare-fun m!6417880 () Bool)

(assert (=> b!5392300 m!6417880))

(assert (=> b!5392300 m!6417880))

(declare-fun m!6417882 () Bool)

(assert (=> b!5392300 m!6417882))

(declare-fun m!6417884 () Bool)

(assert (=> b!5392300 m!6417884))

(assert (=> b!5392300 m!6417882))

(assert (=> b!5392300 m!6417884))

(declare-fun m!6417886 () Bool)

(assert (=> b!5392300 m!6417886))

(assert (=> b!5391979 d!1723735))

(declare-fun d!1723741 () Bool)

(declare-fun lt!2197002 () Regex!15139)

(assert (=> d!1723741 (validRegex!6875 lt!2197002)))

(assert (=> d!1723741 (= lt!2197002 (generalisedUnion!1068 (unfocusZipperList!581 zl!343)))))

(assert (=> d!1723741 (= (unfocusZipper!881 zl!343) lt!2197002)))

(declare-fun bs!1247513 () Bool)

(assert (= bs!1247513 d!1723741))

(declare-fun m!6417896 () Bool)

(assert (=> bs!1247513 m!6417896))

(assert (=> bs!1247513 m!6417656))

(assert (=> bs!1247513 m!6417656))

(assert (=> bs!1247513 m!6417658))

(assert (=> b!5391998 d!1723741))

(declare-fun b!5392388 () Bool)

(declare-fun e!3344101 () Bool)

(declare-fun lt!2197015 () Option!15250)

(assert (=> b!5392388 (= e!3344101 (not (isDefined!11953 lt!2197015)))))

(declare-fun b!5392389 () Bool)

(declare-fun e!3344102 () Option!15250)

(assert (=> b!5392389 (= e!3344102 None!15249)))

(declare-fun b!5392390 () Bool)

(declare-fun res!2291388 () Bool)

(declare-fun e!3344103 () Bool)

(assert (=> b!5392390 (=> (not res!2291388) (not e!3344103))))

(declare-fun get!21216 (Option!15250) tuple2!64676)

(assert (=> b!5392390 (= res!2291388 (matchR!7324 (regTwo!30790 r!7292) (_2!35641 (get!21216 lt!2197015))))))

(declare-fun b!5392391 () Bool)

(declare-fun res!2291392 () Bool)

(assert (=> b!5392391 (=> (not res!2291392) (not e!3344103))))

(assert (=> b!5392391 (= res!2291392 (matchR!7324 (regOne!30790 r!7292) (_1!35641 (get!21216 lt!2197015))))))

(declare-fun b!5392392 () Bool)

(declare-fun ++!13459 (List!61718 List!61718) List!61718)

(assert (=> b!5392392 (= e!3344103 (= (++!13459 (_1!35641 (get!21216 lt!2197015)) (_2!35641 (get!21216 lt!2197015))) s!2326))))

(declare-fun b!5392394 () Bool)

(declare-fun lt!2197017 () Unit!154078)

(declare-fun lt!2197016 () Unit!154078)

(assert (=> b!5392394 (= lt!2197017 lt!2197016)))

(assert (=> b!5392394 (= (++!13459 (++!13459 Nil!61594 (Cons!61594 (h!68042 s!2326) Nil!61594)) (t!374941 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1819 (List!61718 C!30548 List!61718 List!61718) Unit!154078)

(assert (=> b!5392394 (= lt!2197016 (lemmaMoveElementToOtherListKeepsConcatEq!1819 Nil!61594 (h!68042 s!2326) (t!374941 s!2326) s!2326))))

(assert (=> b!5392394 (= e!3344102 (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) (++!13459 Nil!61594 (Cons!61594 (h!68042 s!2326) Nil!61594)) (t!374941 s!2326) s!2326))))

(declare-fun b!5392395 () Bool)

(declare-fun e!3344099 () Option!15250)

(assert (=> b!5392395 (= e!3344099 (Some!15249 (tuple2!64677 Nil!61594 s!2326)))))

(declare-fun b!5392396 () Bool)

(assert (=> b!5392396 (= e!3344099 e!3344102)))

(declare-fun c!939748 () Bool)

(assert (=> b!5392396 (= c!939748 ((_ is Nil!61594) s!2326))))

(declare-fun d!1723749 () Bool)

(assert (=> d!1723749 e!3344101))

(declare-fun res!2291389 () Bool)

(assert (=> d!1723749 (=> res!2291389 e!3344101)))

(assert (=> d!1723749 (= res!2291389 e!3344103)))

(declare-fun res!2291391 () Bool)

(assert (=> d!1723749 (=> (not res!2291391) (not e!3344103))))

(assert (=> d!1723749 (= res!2291391 (isDefined!11953 lt!2197015))))

(assert (=> d!1723749 (= lt!2197015 e!3344099)))

(declare-fun c!939749 () Bool)

(declare-fun e!3344100 () Bool)

(assert (=> d!1723749 (= c!939749 e!3344100)))

(declare-fun res!2291390 () Bool)

(assert (=> d!1723749 (=> (not res!2291390) (not e!3344100))))

(assert (=> d!1723749 (= res!2291390 (matchR!7324 (regOne!30790 r!7292) Nil!61594))))

(assert (=> d!1723749 (validRegex!6875 (regOne!30790 r!7292))))

(assert (=> d!1723749 (= (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) Nil!61594 s!2326 s!2326) lt!2197015)))

(declare-fun b!5392393 () Bool)

(assert (=> b!5392393 (= e!3344100 (matchR!7324 (regTwo!30790 r!7292) s!2326))))

(assert (= (and d!1723749 res!2291390) b!5392393))

(assert (= (and d!1723749 c!939749) b!5392395))

(assert (= (and d!1723749 (not c!939749)) b!5392396))

(assert (= (and b!5392396 c!939748) b!5392389))

(assert (= (and b!5392396 (not c!939748)) b!5392394))

(assert (= (and d!1723749 res!2291391) b!5392391))

(assert (= (and b!5392391 res!2291392) b!5392390))

(assert (= (and b!5392390 res!2291388) b!5392392))

(assert (= (and d!1723749 (not res!2291389)) b!5392388))

(declare-fun m!6417956 () Bool)

(assert (=> b!5392394 m!6417956))

(assert (=> b!5392394 m!6417956))

(declare-fun m!6417960 () Bool)

(assert (=> b!5392394 m!6417960))

(declare-fun m!6417964 () Bool)

(assert (=> b!5392394 m!6417964))

(assert (=> b!5392394 m!6417956))

(declare-fun m!6417966 () Bool)

(assert (=> b!5392394 m!6417966))

(declare-fun m!6417968 () Bool)

(assert (=> b!5392393 m!6417968))

(declare-fun m!6417970 () Bool)

(assert (=> d!1723749 m!6417970))

(declare-fun m!6417972 () Bool)

(assert (=> d!1723749 m!6417972))

(declare-fun m!6417974 () Bool)

(assert (=> d!1723749 m!6417974))

(assert (=> b!5392388 m!6417970))

(declare-fun m!6417976 () Bool)

(assert (=> b!5392390 m!6417976))

(declare-fun m!6417978 () Bool)

(assert (=> b!5392390 m!6417978))

(assert (=> b!5392392 m!6417976))

(declare-fun m!6417980 () Bool)

(assert (=> b!5392392 m!6417980))

(assert (=> b!5392391 m!6417976))

(declare-fun m!6417982 () Bool)

(assert (=> b!5392391 m!6417982))

(assert (=> b!5391978 d!1723749))

(declare-fun d!1723771 () Bool)

(declare-fun choose!40569 (Int) Bool)

(assert (=> d!1723771 (= (Exists!2320 lambda!280123) (choose!40569 lambda!280123))))

(declare-fun bs!1247536 () Bool)

(assert (= bs!1247536 d!1723771))

(declare-fun m!6417984 () Bool)

(assert (=> bs!1247536 m!6417984))

(assert (=> b!5391978 d!1723771))

(declare-fun d!1723773 () Bool)

(assert (=> d!1723773 (= (Exists!2320 lambda!280122) (choose!40569 lambda!280122))))

(declare-fun bs!1247537 () Bool)

(assert (= bs!1247537 d!1723773))

(declare-fun m!6417986 () Bool)

(assert (=> bs!1247537 m!6417986))

(assert (=> b!5391978 d!1723773))

(declare-fun bs!1247540 () Bool)

(declare-fun d!1723775 () Bool)

(assert (= bs!1247540 (and d!1723775 b!5391978)))

(declare-fun lambda!280162 () Int)

(assert (=> bs!1247540 (= lambda!280162 lambda!280122)))

(assert (=> bs!1247540 (not (= lambda!280162 lambda!280123))))

(assert (=> d!1723775 true))

(assert (=> d!1723775 true))

(assert (=> d!1723775 true))

(assert (=> d!1723775 (= (isDefined!11953 (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) Nil!61594 s!2326 s!2326)) (Exists!2320 lambda!280162))))

(declare-fun lt!2197025 () Unit!154078)

(declare-fun choose!40570 (Regex!15139 Regex!15139 List!61718) Unit!154078)

(assert (=> d!1723775 (= lt!2197025 (choose!40570 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326))))

(assert (=> d!1723775 (validRegex!6875 (regOne!30790 r!7292))))

(assert (=> d!1723775 (= (lemmaFindConcatSeparationEquivalentToExists!1428 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326) lt!2197025)))

(declare-fun bs!1247541 () Bool)

(assert (= bs!1247541 d!1723775))

(declare-fun m!6418014 () Bool)

(assert (=> bs!1247541 m!6418014))

(assert (=> bs!1247541 m!6417974))

(assert (=> bs!1247541 m!6417662))

(assert (=> bs!1247541 m!6417664))

(assert (=> bs!1247541 m!6417662))

(declare-fun m!6418016 () Bool)

(assert (=> bs!1247541 m!6418016))

(assert (=> b!5391978 d!1723775))

(declare-fun bs!1247548 () Bool)

(declare-fun d!1723785 () Bool)

(assert (= bs!1247548 (and d!1723785 b!5391978)))

(declare-fun lambda!280167 () Int)

(assert (=> bs!1247548 (= lambda!280167 lambda!280122)))

(assert (=> bs!1247548 (not (= lambda!280167 lambda!280123))))

(declare-fun bs!1247549 () Bool)

(assert (= bs!1247549 (and d!1723785 d!1723775)))

(assert (=> bs!1247549 (= lambda!280167 lambda!280162)))

(assert (=> d!1723785 true))

(assert (=> d!1723785 true))

(assert (=> d!1723785 true))

(declare-fun lambda!280168 () Int)

(assert (=> bs!1247548 (not (= lambda!280168 lambda!280122))))

(assert (=> bs!1247548 (= lambda!280168 lambda!280123)))

(assert (=> bs!1247549 (not (= lambda!280168 lambda!280162))))

(declare-fun bs!1247550 () Bool)

(assert (= bs!1247550 d!1723785))

(assert (=> bs!1247550 (not (= lambda!280168 lambda!280167))))

(assert (=> d!1723785 true))

(assert (=> d!1723785 true))

(assert (=> d!1723785 true))

(assert (=> d!1723785 (= (Exists!2320 lambda!280167) (Exists!2320 lambda!280168))))

(declare-fun lt!2197028 () Unit!154078)

(declare-fun choose!40572 (Regex!15139 Regex!15139 List!61718) Unit!154078)

(assert (=> d!1723785 (= lt!2197028 (choose!40572 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326))))

(assert (=> d!1723785 (validRegex!6875 (regOne!30790 r!7292))))

(assert (=> d!1723785 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!974 (regOne!30790 r!7292) (regTwo!30790 r!7292) s!2326) lt!2197028)))

(declare-fun m!6418024 () Bool)

(assert (=> bs!1247550 m!6418024))

(declare-fun m!6418026 () Bool)

(assert (=> bs!1247550 m!6418026))

(declare-fun m!6418028 () Bool)

(assert (=> bs!1247550 m!6418028))

(assert (=> bs!1247550 m!6417974))

(assert (=> b!5391978 d!1723785))

(declare-fun d!1723799 () Bool)

(declare-fun isEmpty!33597 (Option!15250) Bool)

(assert (=> d!1723799 (= (isDefined!11953 (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) Nil!61594 s!2326 s!2326)) (not (isEmpty!33597 (findConcatSeparation!1664 (regOne!30790 r!7292) (regTwo!30790 r!7292) Nil!61594 s!2326 s!2326))))))

(declare-fun bs!1247551 () Bool)

(assert (= bs!1247551 d!1723799))

(assert (=> bs!1247551 m!6417662))

(declare-fun m!6418030 () Bool)

(assert (=> bs!1247551 m!6418030))

(assert (=> b!5391978 d!1723799))

(declare-fun d!1723801 () Bool)

(assert (=> d!1723801 (= (isEmpty!33594 (t!374939 (exprs!5023 (h!68041 zl!343)))) ((_ is Nil!61592) (t!374939 (exprs!5023 (h!68041 zl!343)))))))

(assert (=> b!5392002 d!1723801))

(declare-fun d!1723803 () Bool)

(declare-fun dynLambda!24287 (Int Context!9046) (InoxSet Context!9046))

(assert (=> d!1723803 (= (flatMap!866 lt!2196941 lambda!280124) (dynLambda!24287 lambda!280124 lt!2196950))))

(declare-fun lt!2197031 () Unit!154078)

(declare-fun choose!40574 ((InoxSet Context!9046) Context!9046 Int) Unit!154078)

(assert (=> d!1723803 (= lt!2197031 (choose!40574 lt!2196941 lt!2196950 lambda!280124))))

(assert (=> d!1723803 (= lt!2196941 (store ((as const (Array Context!9046 Bool)) false) lt!2196950 true))))

(assert (=> d!1723803 (= (lemmaFlatMapOnSingletonSet!398 lt!2196941 lt!2196950 lambda!280124) lt!2197031)))

(declare-fun b_lambda!206285 () Bool)

(assert (=> (not b_lambda!206285) (not d!1723803)))

(declare-fun bs!1247552 () Bool)

(assert (= bs!1247552 d!1723803))

(assert (=> bs!1247552 m!6417640))

(declare-fun m!6418032 () Bool)

(assert (=> bs!1247552 m!6418032))

(declare-fun m!6418034 () Bool)

(assert (=> bs!1247552 m!6418034))

(assert (=> bs!1247552 m!6417626))

(assert (=> b!5391982 d!1723803))

(declare-fun d!1723805 () Bool)

(declare-fun lt!2197032 () Regex!15139)

(assert (=> d!1723805 (validRegex!6875 lt!2197032)))

(assert (=> d!1723805 (= lt!2197032 (generalisedUnion!1068 (unfocusZipperList!581 (Cons!61593 lt!2196950 Nil!61593))))))

(assert (=> d!1723805 (= (unfocusZipper!881 (Cons!61593 lt!2196950 Nil!61593)) lt!2197032)))

(declare-fun bs!1247553 () Bool)

(assert (= bs!1247553 d!1723805))

(declare-fun m!6418036 () Bool)

(assert (=> bs!1247553 m!6418036))

(declare-fun m!6418038 () Bool)

(assert (=> bs!1247553 m!6418038))

(assert (=> bs!1247553 m!6418038))

(declare-fun m!6418040 () Bool)

(assert (=> bs!1247553 m!6418040))

(assert (=> b!5391982 d!1723805))

(declare-fun d!1723807 () Bool)

(declare-fun choose!40575 ((InoxSet Context!9046) Int) (InoxSet Context!9046))

(assert (=> d!1723807 (= (flatMap!866 lt!2196948 lambda!280124) (choose!40575 lt!2196948 lambda!280124))))

(declare-fun bs!1247554 () Bool)

(assert (= bs!1247554 d!1723807))

(declare-fun m!6418042 () Bool)

(assert (=> bs!1247554 m!6418042))

(assert (=> b!5391982 d!1723807))

(declare-fun d!1723809 () Bool)

(assert (=> d!1723809 (= (flatMap!866 lt!2196941 lambda!280124) (choose!40575 lt!2196941 lambda!280124))))

(declare-fun bs!1247555 () Bool)

(assert (= bs!1247555 d!1723809))

(declare-fun m!6418044 () Bool)

(assert (=> bs!1247555 m!6418044))

(assert (=> b!5391982 d!1723809))

(declare-fun b!5392490 () Bool)

(declare-fun e!3344151 () (InoxSet Context!9046))

(declare-fun call!386006 () (InoxSet Context!9046))

(assert (=> b!5392490 (= e!3344151 call!386006)))

(declare-fun b!5392491 () Bool)

(declare-fun e!3344152 () Bool)

(assert (=> b!5392491 (= e!3344152 (nullable!5308 (h!68040 (exprs!5023 lt!2196950))))))

(declare-fun b!5392492 () Bool)

(declare-fun e!3344150 () (InoxSet Context!9046))

(assert (=> b!5392492 (= e!3344150 e!3344151)))

(declare-fun c!939760 () Bool)

(assert (=> b!5392492 (= c!939760 ((_ is Cons!61592) (exprs!5023 lt!2196950)))))

(declare-fun b!5392493 () Bool)

(assert (=> b!5392493 (= e!3344151 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392494 () Bool)

(assert (=> b!5392494 (= e!3344150 ((_ map or) call!386006 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 lt!2196950))) (h!68042 s!2326))))))

(declare-fun bm!386001 () Bool)

(assert (=> bm!386001 (= call!386006 (derivationStepZipperDown!587 (h!68040 (exprs!5023 lt!2196950)) (Context!9047 (t!374939 (exprs!5023 lt!2196950))) (h!68042 s!2326)))))

(declare-fun d!1723811 () Bool)

(declare-fun c!939761 () Bool)

(assert (=> d!1723811 (= c!939761 e!3344152)))

(declare-fun res!2291413 () Bool)

(assert (=> d!1723811 (=> (not res!2291413) (not e!3344152))))

(assert (=> d!1723811 (= res!2291413 ((_ is Cons!61592) (exprs!5023 lt!2196950)))))

(assert (=> d!1723811 (= (derivationStepZipperUp!511 lt!2196950 (h!68042 s!2326)) e!3344150)))

(assert (= (and d!1723811 res!2291413) b!5392491))

(assert (= (and d!1723811 c!939761) b!5392494))

(assert (= (and d!1723811 (not c!939761)) b!5392492))

(assert (= (and b!5392492 c!939760) b!5392490))

(assert (= (and b!5392492 (not c!939760)) b!5392493))

(assert (= (or b!5392494 b!5392490) bm!386001))

(declare-fun m!6418046 () Bool)

(assert (=> b!5392491 m!6418046))

(declare-fun m!6418048 () Bool)

(assert (=> b!5392494 m!6418048))

(declare-fun m!6418050 () Bool)

(assert (=> bm!386001 m!6418050))

(assert (=> b!5391982 d!1723811))

(declare-fun d!1723813 () Bool)

(assert (=> d!1723813 (= (flatMap!866 lt!2196948 lambda!280124) (dynLambda!24287 lambda!280124 lt!2196956))))

(declare-fun lt!2197033 () Unit!154078)

(assert (=> d!1723813 (= lt!2197033 (choose!40574 lt!2196948 lt!2196956 lambda!280124))))

(assert (=> d!1723813 (= lt!2196948 (store ((as const (Array Context!9046 Bool)) false) lt!2196956 true))))

(assert (=> d!1723813 (= (lemmaFlatMapOnSingletonSet!398 lt!2196948 lt!2196956 lambda!280124) lt!2197033)))

(declare-fun b_lambda!206287 () Bool)

(assert (=> (not b_lambda!206287) (not d!1723813)))

(declare-fun bs!1247556 () Bool)

(assert (= bs!1247556 d!1723813))

(assert (=> bs!1247556 m!6417634))

(declare-fun m!6418052 () Bool)

(assert (=> bs!1247556 m!6418052))

(declare-fun m!6418054 () Bool)

(assert (=> bs!1247556 m!6418054))

(assert (=> bs!1247556 m!6417632))

(assert (=> b!5391982 d!1723813))

(declare-fun b!5392495 () Bool)

(declare-fun e!3344154 () (InoxSet Context!9046))

(declare-fun call!386007 () (InoxSet Context!9046))

(assert (=> b!5392495 (= e!3344154 call!386007)))

(declare-fun b!5392496 () Bool)

(declare-fun e!3344155 () Bool)

(assert (=> b!5392496 (= e!3344155 (nullable!5308 (h!68040 (exprs!5023 lt!2196956))))))

(declare-fun b!5392497 () Bool)

(declare-fun e!3344153 () (InoxSet Context!9046))

(assert (=> b!5392497 (= e!3344153 e!3344154)))

(declare-fun c!939762 () Bool)

(assert (=> b!5392497 (= c!939762 ((_ is Cons!61592) (exprs!5023 lt!2196956)))))

(declare-fun b!5392498 () Bool)

(assert (=> b!5392498 (= e!3344154 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392499 () Bool)

(assert (=> b!5392499 (= e!3344153 ((_ map or) call!386007 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 lt!2196956))) (h!68042 s!2326))))))

(declare-fun bm!386002 () Bool)

(assert (=> bm!386002 (= call!386007 (derivationStepZipperDown!587 (h!68040 (exprs!5023 lt!2196956)) (Context!9047 (t!374939 (exprs!5023 lt!2196956))) (h!68042 s!2326)))))

(declare-fun d!1723815 () Bool)

(declare-fun c!939763 () Bool)

(assert (=> d!1723815 (= c!939763 e!3344155)))

(declare-fun res!2291414 () Bool)

(assert (=> d!1723815 (=> (not res!2291414) (not e!3344155))))

(assert (=> d!1723815 (= res!2291414 ((_ is Cons!61592) (exprs!5023 lt!2196956)))))

(assert (=> d!1723815 (= (derivationStepZipperUp!511 lt!2196956 (h!68042 s!2326)) e!3344153)))

(assert (= (and d!1723815 res!2291414) b!5392496))

(assert (= (and d!1723815 c!939763) b!5392499))

(assert (= (and d!1723815 (not c!939763)) b!5392497))

(assert (= (and b!5392497 c!939762) b!5392495))

(assert (= (and b!5392497 (not c!939762)) b!5392498))

(assert (= (or b!5392499 b!5392495) bm!386002))

(declare-fun m!6418056 () Bool)

(assert (=> b!5392496 m!6418056))

(declare-fun m!6418058 () Bool)

(assert (=> b!5392499 m!6418058))

(declare-fun m!6418060 () Bool)

(assert (=> bm!386002 m!6418060))

(assert (=> b!5391982 d!1723815))

(declare-fun bm!386015 () Bool)

(declare-fun call!386021 () (InoxSet Context!9046))

(declare-fun call!386023 () (InoxSet Context!9046))

(assert (=> bm!386015 (= call!386021 call!386023)))

(declare-fun b!5392522 () Bool)

(declare-fun e!3344170 () (InoxSet Context!9046))

(declare-fun call!386022 () (InoxSet Context!9046))

(assert (=> b!5392522 (= e!3344170 ((_ map or) call!386023 call!386022))))

(declare-fun b!5392523 () Bool)

(declare-fun e!3344169 () Bool)

(assert (=> b!5392523 (= e!3344169 (nullable!5308 (regOne!30790 (h!68040 (exprs!5023 (h!68041 zl!343))))))))

(declare-fun b!5392524 () Bool)

(declare-fun c!939774 () Bool)

(assert (=> b!5392524 (= c!939774 e!3344169)))

(declare-fun res!2291417 () Bool)

(assert (=> b!5392524 (=> (not res!2291417) (not e!3344169))))

(assert (=> b!5392524 (= res!2291417 ((_ is Concat!23984) (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun e!3344168 () (InoxSet Context!9046))

(assert (=> b!5392524 (= e!3344170 e!3344168)))

(declare-fun bm!386016 () Bool)

(declare-fun call!386024 () List!61716)

(declare-fun call!386020 () List!61716)

(assert (=> bm!386016 (= call!386024 call!386020)))

(declare-fun b!5392525 () Bool)

(declare-fun e!3344171 () (InoxSet Context!9046))

(assert (=> b!5392525 (= e!3344171 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392526 () Bool)

(declare-fun e!3344172 () (InoxSet Context!9046))

(declare-fun call!386025 () (InoxSet Context!9046))

(assert (=> b!5392526 (= e!3344172 call!386025)))

(declare-fun b!5392527 () Bool)

(assert (=> b!5392527 (= e!3344171 call!386025)))

(declare-fun b!5392528 () Bool)

(declare-fun c!939778 () Bool)

(assert (=> b!5392528 (= c!939778 ((_ is Star!15139) (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(assert (=> b!5392528 (= e!3344172 e!3344171)))

(declare-fun bm!386017 () Bool)

(declare-fun c!939775 () Bool)

(declare-fun $colon$colon!1474 (List!61716 Regex!15139) List!61716)

(assert (=> bm!386017 (= call!386020 ($colon$colon!1474 (exprs!5023 lt!2196934) (ite (or c!939774 c!939775) (regTwo!30790 (h!68040 (exprs!5023 (h!68041 zl!343)))) (h!68040 (exprs!5023 (h!68041 zl!343))))))))

(declare-fun b!5392529 () Bool)

(declare-fun e!3344173 () (InoxSet Context!9046))

(assert (=> b!5392529 (= e!3344173 (store ((as const (Array Context!9046 Bool)) false) lt!2196934 true))))

(declare-fun b!5392530 () Bool)

(assert (=> b!5392530 (= e!3344173 e!3344170)))

(declare-fun c!939777 () Bool)

(assert (=> b!5392530 (= c!939777 ((_ is Union!15139) (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun bm!386019 () Bool)

(assert (=> bm!386019 (= call!386022 (derivationStepZipperDown!587 (ite c!939777 (regTwo!30791 (h!68040 (exprs!5023 (h!68041 zl!343)))) (regOne!30790 (h!68040 (exprs!5023 (h!68041 zl!343))))) (ite c!939777 lt!2196934 (Context!9047 call!386020)) (h!68042 s!2326)))))

(declare-fun b!5392531 () Bool)

(assert (=> b!5392531 (= e!3344168 ((_ map or) call!386022 call!386021))))

(declare-fun bm!386020 () Bool)

(assert (=> bm!386020 (= call!386023 (derivationStepZipperDown!587 (ite c!939777 (regOne!30791 (h!68040 (exprs!5023 (h!68041 zl!343)))) (ite c!939774 (regTwo!30790 (h!68040 (exprs!5023 (h!68041 zl!343)))) (ite c!939775 (regOne!30790 (h!68040 (exprs!5023 (h!68041 zl!343)))) (reg!15468 (h!68040 (exprs!5023 (h!68041 zl!343))))))) (ite (or c!939777 c!939774) lt!2196934 (Context!9047 call!386024)) (h!68042 s!2326)))))

(declare-fun b!5392532 () Bool)

(assert (=> b!5392532 (= e!3344168 e!3344172)))

(assert (=> b!5392532 (= c!939775 ((_ is Concat!23984) (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun d!1723817 () Bool)

(declare-fun c!939776 () Bool)

(assert (=> d!1723817 (= c!939776 (and ((_ is ElementMatch!15139) (h!68040 (exprs!5023 (h!68041 zl!343)))) (= (c!939633 (h!68040 (exprs!5023 (h!68041 zl!343)))) (h!68042 s!2326))))))

(assert (=> d!1723817 (= (derivationStepZipperDown!587 (h!68040 (exprs!5023 (h!68041 zl!343))) lt!2196934 (h!68042 s!2326)) e!3344173)))

(declare-fun bm!386018 () Bool)

(assert (=> bm!386018 (= call!386025 call!386021)))

(assert (= (and d!1723817 c!939776) b!5392529))

(assert (= (and d!1723817 (not c!939776)) b!5392530))

(assert (= (and b!5392530 c!939777) b!5392522))

(assert (= (and b!5392530 (not c!939777)) b!5392524))

(assert (= (and b!5392524 res!2291417) b!5392523))

(assert (= (and b!5392524 c!939774) b!5392531))

(assert (= (and b!5392524 (not c!939774)) b!5392532))

(assert (= (and b!5392532 c!939775) b!5392526))

(assert (= (and b!5392532 (not c!939775)) b!5392528))

(assert (= (and b!5392528 c!939778) b!5392527))

(assert (= (and b!5392528 (not c!939778)) b!5392525))

(assert (= (or b!5392526 b!5392527) bm!386016))

(assert (= (or b!5392526 b!5392527) bm!386018))

(assert (= (or b!5392531 bm!386016) bm!386017))

(assert (= (or b!5392531 bm!386018) bm!386015))

(assert (= (or b!5392522 b!5392531) bm!386019))

(assert (= (or b!5392522 bm!386015) bm!386020))

(declare-fun m!6418062 () Bool)

(assert (=> bm!386020 m!6418062))

(declare-fun m!6418064 () Bool)

(assert (=> bm!386019 m!6418064))

(declare-fun m!6418066 () Bool)

(assert (=> b!5392529 m!6418066))

(declare-fun m!6418068 () Bool)

(assert (=> bm!386017 m!6418068))

(declare-fun m!6418070 () Bool)

(assert (=> b!5392523 m!6418070))

(assert (=> b!5391981 d!1723817))

(declare-fun b!5392533 () Bool)

(declare-fun e!3344175 () (InoxSet Context!9046))

(declare-fun call!386026 () (InoxSet Context!9046))

(assert (=> b!5392533 (= e!3344175 call!386026)))

(declare-fun b!5392534 () Bool)

(declare-fun e!3344176 () Bool)

(assert (=> b!5392534 (= e!3344176 (nullable!5308 (h!68040 (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343)))))))))))

(declare-fun b!5392535 () Bool)

(declare-fun e!3344174 () (InoxSet Context!9046))

(assert (=> b!5392535 (= e!3344174 e!3344175)))

(declare-fun c!939779 () Bool)

(assert (=> b!5392535 (= c!939779 ((_ is Cons!61592) (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343))))))))))

(declare-fun b!5392536 () Bool)

(assert (=> b!5392536 (= e!3344175 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392537 () Bool)

(assert (=> b!5392537 (= e!3344174 ((_ map or) call!386026 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343)))))))) (h!68042 s!2326))))))

(declare-fun bm!386021 () Bool)

(assert (=> bm!386021 (= call!386026 (derivationStepZipperDown!587 (h!68040 (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343))))))) (Context!9047 (t!374939 (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343)))))))) (h!68042 s!2326)))))

(declare-fun d!1723819 () Bool)

(declare-fun c!939780 () Bool)

(assert (=> d!1723819 (= c!939780 e!3344176)))

(declare-fun res!2291418 () Bool)

(assert (=> d!1723819 (=> (not res!2291418) (not e!3344176))))

(assert (=> d!1723819 (= res!2291418 ((_ is Cons!61592) (exprs!5023 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343))))))))))

(assert (=> d!1723819 (= (derivationStepZipperUp!511 (Context!9047 (Cons!61592 (h!68040 (exprs!5023 (h!68041 zl!343))) (t!374939 (exprs!5023 (h!68041 zl!343))))) (h!68042 s!2326)) e!3344174)))

(assert (= (and d!1723819 res!2291418) b!5392534))

(assert (= (and d!1723819 c!939780) b!5392537))

(assert (= (and d!1723819 (not c!939780)) b!5392535))

(assert (= (and b!5392535 c!939779) b!5392533))

(assert (= (and b!5392535 (not c!939779)) b!5392536))

(assert (= (or b!5392537 b!5392533) bm!386021))

(declare-fun m!6418072 () Bool)

(assert (=> b!5392534 m!6418072))

(declare-fun m!6418074 () Bool)

(assert (=> b!5392537 m!6418074))

(declare-fun m!6418076 () Bool)

(assert (=> bm!386021 m!6418076))

(assert (=> b!5391981 d!1723819))

(declare-fun d!1723821 () Bool)

(assert (=> d!1723821 (= (flatMap!866 z!1189 lambda!280124) (dynLambda!24287 lambda!280124 (h!68041 zl!343)))))

(declare-fun lt!2197034 () Unit!154078)

(assert (=> d!1723821 (= lt!2197034 (choose!40574 z!1189 (h!68041 zl!343) lambda!280124))))

(assert (=> d!1723821 (= z!1189 (store ((as const (Array Context!9046 Bool)) false) (h!68041 zl!343) true))))

(assert (=> d!1723821 (= (lemmaFlatMapOnSingletonSet!398 z!1189 (h!68041 zl!343) lambda!280124) lt!2197034)))

(declare-fun b_lambda!206289 () Bool)

(assert (=> (not b_lambda!206289) (not d!1723821)))

(declare-fun bs!1247557 () Bool)

(assert (= bs!1247557 d!1723821))

(assert (=> bs!1247557 m!6417606))

(declare-fun m!6418078 () Bool)

(assert (=> bs!1247557 m!6418078))

(declare-fun m!6418080 () Bool)

(assert (=> bs!1247557 m!6418080))

(declare-fun m!6418082 () Bool)

(assert (=> bs!1247557 m!6418082))

(assert (=> b!5391981 d!1723821))

(declare-fun b!5392538 () Bool)

(declare-fun e!3344178 () (InoxSet Context!9046))

(declare-fun call!386027 () (InoxSet Context!9046))

(assert (=> b!5392538 (= e!3344178 call!386027)))

(declare-fun b!5392539 () Bool)

(declare-fun e!3344179 () Bool)

(assert (=> b!5392539 (= e!3344179 (nullable!5308 (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392540 () Bool)

(declare-fun e!3344177 () (InoxSet Context!9046))

(assert (=> b!5392540 (= e!3344177 e!3344178)))

(declare-fun c!939781 () Bool)

(assert (=> b!5392540 (= c!939781 ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343))))))

(declare-fun b!5392541 () Bool)

(assert (=> b!5392541 (= e!3344178 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392542 () Bool)

(assert (=> b!5392542 (= e!3344177 ((_ map or) call!386027 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 (h!68041 zl!343)))) (h!68042 s!2326))))))

(declare-fun bm!386022 () Bool)

(assert (=> bm!386022 (= call!386027 (derivationStepZipperDown!587 (h!68040 (exprs!5023 (h!68041 zl!343))) (Context!9047 (t!374939 (exprs!5023 (h!68041 zl!343)))) (h!68042 s!2326)))))

(declare-fun d!1723823 () Bool)

(declare-fun c!939782 () Bool)

(assert (=> d!1723823 (= c!939782 e!3344179)))

(declare-fun res!2291419 () Bool)

(assert (=> d!1723823 (=> (not res!2291419) (not e!3344179))))

(assert (=> d!1723823 (= res!2291419 ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343))))))

(assert (=> d!1723823 (= (derivationStepZipperUp!511 (h!68041 zl!343) (h!68042 s!2326)) e!3344177)))

(assert (= (and d!1723823 res!2291419) b!5392539))

(assert (= (and d!1723823 c!939782) b!5392542))

(assert (= (and d!1723823 (not c!939782)) b!5392540))

(assert (= (and b!5392540 c!939781) b!5392538))

(assert (= (and b!5392540 (not c!939781)) b!5392541))

(assert (= (or b!5392542 b!5392538) bm!386022))

(assert (=> b!5392539 m!6417610))

(declare-fun m!6418084 () Bool)

(assert (=> b!5392542 m!6418084))

(declare-fun m!6418086 () Bool)

(assert (=> bm!386022 m!6418086))

(assert (=> b!5391981 d!1723823))

(declare-fun d!1723825 () Bool)

(assert (=> d!1723825 (= (flatMap!866 z!1189 lambda!280124) (choose!40575 z!1189 lambda!280124))))

(declare-fun bs!1247558 () Bool)

(assert (= bs!1247558 d!1723825))

(declare-fun m!6418088 () Bool)

(assert (=> bs!1247558 m!6418088))

(assert (=> b!5391981 d!1723825))

(declare-fun d!1723827 () Bool)

(declare-fun nullableFct!1576 (Regex!15139) Bool)

(assert (=> d!1723827 (= (nullable!5308 (h!68040 (exprs!5023 (h!68041 zl!343)))) (nullableFct!1576 (h!68040 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun bs!1247559 () Bool)

(assert (= bs!1247559 d!1723827))

(declare-fun m!6418090 () Bool)

(assert (=> bs!1247559 m!6418090))

(assert (=> b!5391981 d!1723827))

(declare-fun b!5392543 () Bool)

(declare-fun e!3344181 () (InoxSet Context!9046))

(declare-fun call!386028 () (InoxSet Context!9046))

(assert (=> b!5392543 (= e!3344181 call!386028)))

(declare-fun b!5392544 () Bool)

(declare-fun e!3344182 () Bool)

(assert (=> b!5392544 (= e!3344182 (nullable!5308 (h!68040 (exprs!5023 lt!2196934))))))

(declare-fun b!5392545 () Bool)

(declare-fun e!3344180 () (InoxSet Context!9046))

(assert (=> b!5392545 (= e!3344180 e!3344181)))

(declare-fun c!939783 () Bool)

(assert (=> b!5392545 (= c!939783 ((_ is Cons!61592) (exprs!5023 lt!2196934)))))

(declare-fun b!5392546 () Bool)

(assert (=> b!5392546 (= e!3344181 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392547 () Bool)

(assert (=> b!5392547 (= e!3344180 ((_ map or) call!386028 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 lt!2196934))) (h!68042 s!2326))))))

(declare-fun bm!386023 () Bool)

(assert (=> bm!386023 (= call!386028 (derivationStepZipperDown!587 (h!68040 (exprs!5023 lt!2196934)) (Context!9047 (t!374939 (exprs!5023 lt!2196934))) (h!68042 s!2326)))))

(declare-fun d!1723829 () Bool)

(declare-fun c!939784 () Bool)

(assert (=> d!1723829 (= c!939784 e!3344182)))

(declare-fun res!2291420 () Bool)

(assert (=> d!1723829 (=> (not res!2291420) (not e!3344182))))

(assert (=> d!1723829 (= res!2291420 ((_ is Cons!61592) (exprs!5023 lt!2196934)))))

(assert (=> d!1723829 (= (derivationStepZipperUp!511 lt!2196934 (h!68042 s!2326)) e!3344180)))

(assert (= (and d!1723829 res!2291420) b!5392544))

(assert (= (and d!1723829 c!939784) b!5392547))

(assert (= (and d!1723829 (not c!939784)) b!5392545))

(assert (= (and b!5392545 c!939783) b!5392543))

(assert (= (and b!5392545 (not c!939783)) b!5392546))

(assert (= (or b!5392547 b!5392543) bm!386023))

(declare-fun m!6418092 () Bool)

(assert (=> b!5392544 m!6418092))

(declare-fun m!6418094 () Bool)

(assert (=> b!5392547 m!6418094))

(declare-fun m!6418096 () Bool)

(assert (=> bm!386023 m!6418096))

(assert (=> b!5391981 d!1723829))

(declare-fun d!1723831 () Bool)

(declare-fun c!939785 () Bool)

(assert (=> d!1723831 (= c!939785 (isEmpty!33596 (t!374941 s!2326)))))

(declare-fun e!3344183 () Bool)

(assert (=> d!1723831 (= (matchZipper!1383 lt!2196933 (t!374941 s!2326)) e!3344183)))

(declare-fun b!5392548 () Bool)

(assert (=> b!5392548 (= e!3344183 (nullableZipper!1424 lt!2196933))))

(declare-fun b!5392549 () Bool)

(assert (=> b!5392549 (= e!3344183 (matchZipper!1383 (derivationStepZipper!1378 lt!2196933 (head!11566 (t!374941 s!2326))) (tail!10663 (t!374941 s!2326))))))

(assert (= (and d!1723831 c!939785) b!5392548))

(assert (= (and d!1723831 (not c!939785)) b!5392549))

(declare-fun m!6418098 () Bool)

(assert (=> d!1723831 m!6418098))

(declare-fun m!6418100 () Bool)

(assert (=> b!5392548 m!6418100))

(declare-fun m!6418102 () Bool)

(assert (=> b!5392549 m!6418102))

(assert (=> b!5392549 m!6418102))

(declare-fun m!6418104 () Bool)

(assert (=> b!5392549 m!6418104))

(declare-fun m!6418106 () Bool)

(assert (=> b!5392549 m!6418106))

(assert (=> b!5392549 m!6418104))

(assert (=> b!5392549 m!6418106))

(declare-fun m!6418108 () Bool)

(assert (=> b!5392549 m!6418108))

(assert (=> b!5392001 d!1723831))

(declare-fun bm!386024 () Bool)

(declare-fun call!386030 () (InoxSet Context!9046))

(declare-fun call!386032 () (InoxSet Context!9046))

(assert (=> bm!386024 (= call!386030 call!386032)))

(declare-fun b!5392550 () Bool)

(declare-fun e!3344186 () (InoxSet Context!9046))

(declare-fun call!386031 () (InoxSet Context!9046))

(assert (=> b!5392550 (= e!3344186 ((_ map or) call!386032 call!386031))))

(declare-fun b!5392551 () Bool)

(declare-fun e!3344185 () Bool)

(assert (=> b!5392551 (= e!3344185 (nullable!5308 (regOne!30790 (reg!15468 (regOne!30790 r!7292)))))))

(declare-fun b!5392552 () Bool)

(declare-fun c!939786 () Bool)

(assert (=> b!5392552 (= c!939786 e!3344185)))

(declare-fun res!2291421 () Bool)

(assert (=> b!5392552 (=> (not res!2291421) (not e!3344185))))

(assert (=> b!5392552 (= res!2291421 ((_ is Concat!23984) (reg!15468 (regOne!30790 r!7292))))))

(declare-fun e!3344184 () (InoxSet Context!9046))

(assert (=> b!5392552 (= e!3344186 e!3344184)))

(declare-fun bm!386025 () Bool)

(declare-fun call!386033 () List!61716)

(declare-fun call!386029 () List!61716)

(assert (=> bm!386025 (= call!386033 call!386029)))

(declare-fun b!5392553 () Bool)

(declare-fun e!3344187 () (InoxSet Context!9046))

(assert (=> b!5392553 (= e!3344187 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392554 () Bool)

(declare-fun e!3344188 () (InoxSet Context!9046))

(declare-fun call!386034 () (InoxSet Context!9046))

(assert (=> b!5392554 (= e!3344188 call!386034)))

(declare-fun b!5392555 () Bool)

(assert (=> b!5392555 (= e!3344187 call!386034)))

(declare-fun b!5392556 () Bool)

(declare-fun c!939790 () Bool)

(assert (=> b!5392556 (= c!939790 ((_ is Star!15139) (reg!15468 (regOne!30790 r!7292))))))

(assert (=> b!5392556 (= e!3344188 e!3344187)))

(declare-fun bm!386026 () Bool)

(declare-fun c!939787 () Bool)

(assert (=> bm!386026 (= call!386029 ($colon$colon!1474 (exprs!5023 lt!2196956) (ite (or c!939786 c!939787) (regTwo!30790 (reg!15468 (regOne!30790 r!7292))) (reg!15468 (regOne!30790 r!7292)))))))

(declare-fun b!5392557 () Bool)

(declare-fun e!3344189 () (InoxSet Context!9046))

(assert (=> b!5392557 (= e!3344189 (store ((as const (Array Context!9046 Bool)) false) lt!2196956 true))))

(declare-fun b!5392558 () Bool)

(assert (=> b!5392558 (= e!3344189 e!3344186)))

(declare-fun c!939789 () Bool)

(assert (=> b!5392558 (= c!939789 ((_ is Union!15139) (reg!15468 (regOne!30790 r!7292))))))

(declare-fun bm!386028 () Bool)

(assert (=> bm!386028 (= call!386031 (derivationStepZipperDown!587 (ite c!939789 (regTwo!30791 (reg!15468 (regOne!30790 r!7292))) (regOne!30790 (reg!15468 (regOne!30790 r!7292)))) (ite c!939789 lt!2196956 (Context!9047 call!386029)) (h!68042 s!2326)))))

(declare-fun b!5392559 () Bool)

(assert (=> b!5392559 (= e!3344184 ((_ map or) call!386031 call!386030))))

(declare-fun bm!386029 () Bool)

(assert (=> bm!386029 (= call!386032 (derivationStepZipperDown!587 (ite c!939789 (regOne!30791 (reg!15468 (regOne!30790 r!7292))) (ite c!939786 (regTwo!30790 (reg!15468 (regOne!30790 r!7292))) (ite c!939787 (regOne!30790 (reg!15468 (regOne!30790 r!7292))) (reg!15468 (reg!15468 (regOne!30790 r!7292)))))) (ite (or c!939789 c!939786) lt!2196956 (Context!9047 call!386033)) (h!68042 s!2326)))))

(declare-fun b!5392560 () Bool)

(assert (=> b!5392560 (= e!3344184 e!3344188)))

(assert (=> b!5392560 (= c!939787 ((_ is Concat!23984) (reg!15468 (regOne!30790 r!7292))))))

(declare-fun d!1723833 () Bool)

(declare-fun c!939788 () Bool)

(assert (=> d!1723833 (= c!939788 (and ((_ is ElementMatch!15139) (reg!15468 (regOne!30790 r!7292))) (= (c!939633 (reg!15468 (regOne!30790 r!7292))) (h!68042 s!2326))))))

(assert (=> d!1723833 (= (derivationStepZipperDown!587 (reg!15468 (regOne!30790 r!7292)) lt!2196956 (h!68042 s!2326)) e!3344189)))

(declare-fun bm!386027 () Bool)

(assert (=> bm!386027 (= call!386034 call!386030)))

(assert (= (and d!1723833 c!939788) b!5392557))

(assert (= (and d!1723833 (not c!939788)) b!5392558))

(assert (= (and b!5392558 c!939789) b!5392550))

(assert (= (and b!5392558 (not c!939789)) b!5392552))

(assert (= (and b!5392552 res!2291421) b!5392551))

(assert (= (and b!5392552 c!939786) b!5392559))

(assert (= (and b!5392552 (not c!939786)) b!5392560))

(assert (= (and b!5392560 c!939787) b!5392554))

(assert (= (and b!5392560 (not c!939787)) b!5392556))

(assert (= (and b!5392556 c!939790) b!5392555))

(assert (= (and b!5392556 (not c!939790)) b!5392553))

(assert (= (or b!5392554 b!5392555) bm!386025))

(assert (= (or b!5392554 b!5392555) bm!386027))

(assert (= (or b!5392559 bm!386025) bm!386026))

(assert (= (or b!5392559 bm!386027) bm!386024))

(assert (= (or b!5392550 b!5392559) bm!386028))

(assert (= (or b!5392550 bm!386024) bm!386029))

(declare-fun m!6418110 () Bool)

(assert (=> bm!386029 m!6418110))

(declare-fun m!6418112 () Bool)

(assert (=> bm!386028 m!6418112))

(assert (=> b!5392557 m!6417632))

(declare-fun m!6418114 () Bool)

(assert (=> bm!386026 m!6418114))

(declare-fun m!6418116 () Bool)

(assert (=> b!5392551 m!6418116))

(assert (=> b!5392004 d!1723833))

(declare-fun d!1723835 () Bool)

(declare-fun e!3344192 () Bool)

(assert (=> d!1723835 e!3344192))

(declare-fun res!2291424 () Bool)

(assert (=> d!1723835 (=> (not res!2291424) (not e!3344192))))

(declare-fun lt!2197037 () List!61717)

(declare-fun noDuplicate!1375 (List!61717) Bool)

(assert (=> d!1723835 (= res!2291424 (noDuplicate!1375 lt!2197037))))

(declare-fun choose!40578 ((InoxSet Context!9046)) List!61717)

(assert (=> d!1723835 (= lt!2197037 (choose!40578 z!1189))))

(assert (=> d!1723835 (= (toList!8923 z!1189) lt!2197037)))

(declare-fun b!5392563 () Bool)

(declare-fun content!11023 (List!61717) (InoxSet Context!9046))

(assert (=> b!5392563 (= e!3344192 (= (content!11023 lt!2197037) z!1189))))

(assert (= (and d!1723835 res!2291424) b!5392563))

(declare-fun m!6418118 () Bool)

(assert (=> d!1723835 m!6418118))

(declare-fun m!6418120 () Bool)

(assert (=> d!1723835 m!6418120))

(declare-fun m!6418122 () Bool)

(assert (=> b!5392563 m!6418122))

(assert (=> b!5391987 d!1723835))

(declare-fun d!1723837 () Bool)

(declare-fun lt!2197038 () Regex!15139)

(assert (=> d!1723837 (validRegex!6875 lt!2197038)))

(assert (=> d!1723837 (= lt!2197038 (generalisedUnion!1068 (unfocusZipperList!581 (Cons!61593 lt!2196956 Nil!61593))))))

(assert (=> d!1723837 (= (unfocusZipper!881 (Cons!61593 lt!2196956 Nil!61593)) lt!2197038)))

(declare-fun bs!1247560 () Bool)

(assert (= bs!1247560 d!1723837))

(declare-fun m!6418124 () Bool)

(assert (=> bs!1247560 m!6418124))

(declare-fun m!6418126 () Bool)

(assert (=> bs!1247560 m!6418126))

(assert (=> bs!1247560 m!6418126))

(declare-fun m!6418128 () Bool)

(assert (=> bs!1247560 m!6418128))

(assert (=> b!5392006 d!1723837))

(declare-fun d!1723839 () Bool)

(assert (=> d!1723839 (= (nullable!5308 (regOne!30790 (regOne!30790 r!7292))) (nullableFct!1576 (regOne!30790 (regOne!30790 r!7292))))))

(declare-fun bs!1247561 () Bool)

(assert (= bs!1247561 d!1723839))

(declare-fun m!6418130 () Bool)

(assert (=> bs!1247561 m!6418130))

(assert (=> b!5391986 d!1723839))

(declare-fun bs!1247562 () Bool)

(declare-fun d!1723841 () Bool)

(assert (= bs!1247562 (and d!1723841 b!5392009)))

(declare-fun lambda!280171 () Int)

(assert (=> bs!1247562 (= lambda!280171 lambda!280125)))

(assert (=> d!1723841 (= (inv!81094 (h!68041 zl!343)) (forall!14517 (exprs!5023 (h!68041 zl!343)) lambda!280171))))

(declare-fun bs!1247563 () Bool)

(assert (= bs!1247563 d!1723841))

(declare-fun m!6418132 () Bool)

(assert (=> bs!1247563 m!6418132))

(assert (=> b!5391985 d!1723841))

(declare-fun d!1723843 () Bool)

(declare-fun res!2291429 () Bool)

(declare-fun e!3344197 () Bool)

(assert (=> d!1723843 (=> res!2291429 e!3344197)))

(assert (=> d!1723843 (= res!2291429 ((_ is Nil!61592) (exprs!5023 c!324)))))

(assert (=> d!1723843 (= (forall!14517 (exprs!5023 c!324) lambda!280125) e!3344197)))

(declare-fun b!5392568 () Bool)

(declare-fun e!3344198 () Bool)

(assert (=> b!5392568 (= e!3344197 e!3344198)))

(declare-fun res!2291430 () Bool)

(assert (=> b!5392568 (=> (not res!2291430) (not e!3344198))))

(declare-fun dynLambda!24288 (Int Regex!15139) Bool)

(assert (=> b!5392568 (= res!2291430 (dynLambda!24288 lambda!280125 (h!68040 (exprs!5023 c!324))))))

(declare-fun b!5392569 () Bool)

(assert (=> b!5392569 (= e!3344198 (forall!14517 (t!374939 (exprs!5023 c!324)) lambda!280125))))

(assert (= (and d!1723843 (not res!2291429)) b!5392568))

(assert (= (and b!5392568 res!2291430) b!5392569))

(declare-fun b_lambda!206291 () Bool)

(assert (=> (not b_lambda!206291) (not b!5392568)))

(declare-fun m!6418134 () Bool)

(assert (=> b!5392568 m!6418134))

(declare-fun m!6418136 () Bool)

(assert (=> b!5392569 m!6418136))

(assert (=> b!5392009 d!1723843))

(declare-fun b!5392588 () Bool)

(declare-fun e!3344218 () Bool)

(declare-fun call!386043 () Bool)

(assert (=> b!5392588 (= e!3344218 call!386043)))

(declare-fun b!5392589 () Bool)

(declare-fun e!3344219 () Bool)

(declare-fun call!386042 () Bool)

(assert (=> b!5392589 (= e!3344219 call!386042)))

(declare-fun b!5392590 () Bool)

(declare-fun e!3344214 () Bool)

(assert (=> b!5392590 (= e!3344214 e!3344219)))

(declare-fun res!2291442 () Bool)

(assert (=> b!5392590 (= res!2291442 (not (nullable!5308 (reg!15468 r!7292))))))

(assert (=> b!5392590 (=> (not res!2291442) (not e!3344219))))

(declare-fun c!939796 () Bool)

(declare-fun c!939795 () Bool)

(declare-fun bm!386036 () Bool)

(assert (=> bm!386036 (= call!386042 (validRegex!6875 (ite c!939795 (reg!15468 r!7292) (ite c!939796 (regTwo!30791 r!7292) (regTwo!30790 r!7292)))))))

(declare-fun b!5392591 () Bool)

(declare-fun e!3344217 () Bool)

(assert (=> b!5392591 (= e!3344214 e!3344217)))

(assert (=> b!5392591 (= c!939796 ((_ is Union!15139) r!7292))))

(declare-fun b!5392592 () Bool)

(declare-fun e!3344215 () Bool)

(assert (=> b!5392592 (= e!3344215 e!3344218)))

(declare-fun res!2291445 () Bool)

(assert (=> b!5392592 (=> (not res!2291445) (not e!3344218))))

(declare-fun call!386041 () Bool)

(assert (=> b!5392592 (= res!2291445 call!386041)))

(declare-fun bm!386037 () Bool)

(assert (=> bm!386037 (= call!386041 (validRegex!6875 (ite c!939796 (regOne!30791 r!7292) (regOne!30790 r!7292))))))

(declare-fun b!5392594 () Bool)

(declare-fun e!3344213 () Bool)

(assert (=> b!5392594 (= e!3344213 call!386043)))

(declare-fun b!5392595 () Bool)

(declare-fun res!2291443 () Bool)

(assert (=> b!5392595 (=> (not res!2291443) (not e!3344213))))

(assert (=> b!5392595 (= res!2291443 call!386041)))

(assert (=> b!5392595 (= e!3344217 e!3344213)))

(declare-fun bm!386038 () Bool)

(assert (=> bm!386038 (= call!386043 call!386042)))

(declare-fun b!5392596 () Bool)

(declare-fun res!2291444 () Bool)

(assert (=> b!5392596 (=> res!2291444 e!3344215)))

(assert (=> b!5392596 (= res!2291444 (not ((_ is Concat!23984) r!7292)))))

(assert (=> b!5392596 (= e!3344217 e!3344215)))

(declare-fun d!1723845 () Bool)

(declare-fun res!2291441 () Bool)

(declare-fun e!3344216 () Bool)

(assert (=> d!1723845 (=> res!2291441 e!3344216)))

(assert (=> d!1723845 (= res!2291441 ((_ is ElementMatch!15139) r!7292))))

(assert (=> d!1723845 (= (validRegex!6875 r!7292) e!3344216)))

(declare-fun b!5392593 () Bool)

(assert (=> b!5392593 (= e!3344216 e!3344214)))

(assert (=> b!5392593 (= c!939795 ((_ is Star!15139) r!7292))))

(assert (= (and d!1723845 (not res!2291441)) b!5392593))

(assert (= (and b!5392593 c!939795) b!5392590))

(assert (= (and b!5392593 (not c!939795)) b!5392591))

(assert (= (and b!5392590 res!2291442) b!5392589))

(assert (= (and b!5392591 c!939796) b!5392595))

(assert (= (and b!5392591 (not c!939796)) b!5392596))

(assert (= (and b!5392595 res!2291443) b!5392594))

(assert (= (and b!5392596 (not res!2291444)) b!5392592))

(assert (= (and b!5392592 res!2291445) b!5392588))

(assert (= (or b!5392594 b!5392588) bm!386038))

(assert (= (or b!5392595 b!5392592) bm!386037))

(assert (= (or b!5392589 bm!386038) bm!386036))

(declare-fun m!6418138 () Bool)

(assert (=> b!5392590 m!6418138))

(declare-fun m!6418140 () Bool)

(assert (=> bm!386036 m!6418140))

(declare-fun m!6418142 () Bool)

(assert (=> bm!386037 m!6418142))

(assert (=> start!566582 d!1723845))

(declare-fun bs!1247564 () Bool)

(declare-fun d!1723847 () Bool)

(assert (= bs!1247564 (and d!1723847 b!5392009)))

(declare-fun lambda!280172 () Int)

(assert (=> bs!1247564 (= lambda!280172 lambda!280125)))

(declare-fun bs!1247565 () Bool)

(assert (= bs!1247565 (and d!1723847 d!1723841)))

(assert (=> bs!1247565 (= lambda!280172 lambda!280171)))

(assert (=> d!1723847 (= (inv!81094 c!324) (forall!14517 (exprs!5023 c!324) lambda!280172))))

(declare-fun bs!1247566 () Bool)

(assert (= bs!1247566 d!1723847))

(declare-fun m!6418144 () Bool)

(assert (=> bs!1247566 m!6418144))

(assert (=> start!566582 d!1723847))

(declare-fun d!1723849 () Bool)

(declare-fun lt!2197039 () Regex!15139)

(assert (=> d!1723849 (validRegex!6875 lt!2197039)))

(assert (=> d!1723849 (= lt!2197039 (generalisedUnion!1068 (unfocusZipperList!581 (Cons!61593 lt!2196945 Nil!61593))))))

(assert (=> d!1723849 (= (unfocusZipper!881 (Cons!61593 lt!2196945 Nil!61593)) lt!2197039)))

(declare-fun bs!1247567 () Bool)

(assert (= bs!1247567 d!1723849))

(declare-fun m!6418146 () Bool)

(assert (=> bs!1247567 m!6418146))

(declare-fun m!6418148 () Bool)

(assert (=> bs!1247567 m!6418148))

(assert (=> bs!1247567 m!6418148))

(declare-fun m!6418150 () Bool)

(assert (=> bs!1247567 m!6418150))

(assert (=> b!5392008 d!1723849))

(declare-fun d!1723851 () Bool)

(declare-fun c!939797 () Bool)

(assert (=> d!1723851 (= c!939797 (isEmpty!33596 (t!374941 s!2326)))))

(declare-fun e!3344220 () Bool)

(assert (=> d!1723851 (= (matchZipper!1383 lt!2196949 (t!374941 s!2326)) e!3344220)))

(declare-fun b!5392597 () Bool)

(assert (=> b!5392597 (= e!3344220 (nullableZipper!1424 lt!2196949))))

(declare-fun b!5392598 () Bool)

(assert (=> b!5392598 (= e!3344220 (matchZipper!1383 (derivationStepZipper!1378 lt!2196949 (head!11566 (t!374941 s!2326))) (tail!10663 (t!374941 s!2326))))))

(assert (= (and d!1723851 c!939797) b!5392597))

(assert (= (and d!1723851 (not c!939797)) b!5392598))

(assert (=> d!1723851 m!6418098))

(declare-fun m!6418152 () Bool)

(assert (=> b!5392597 m!6418152))

(assert (=> b!5392598 m!6418102))

(assert (=> b!5392598 m!6418102))

(declare-fun m!6418154 () Bool)

(assert (=> b!5392598 m!6418154))

(assert (=> b!5392598 m!6418106))

(assert (=> b!5392598 m!6418154))

(assert (=> b!5392598 m!6418106))

(declare-fun m!6418156 () Bool)

(assert (=> b!5392598 m!6418156))

(assert (=> b!5392007 d!1723851))

(declare-fun d!1723853 () Bool)

(declare-fun res!2291446 () Bool)

(declare-fun e!3344221 () Bool)

(assert (=> d!1723853 (=> res!2291446 e!3344221)))

(assert (=> d!1723853 (= res!2291446 ((_ is Nil!61592) lt!2196952))))

(assert (=> d!1723853 (= (forall!14517 lt!2196952 lambda!280125) e!3344221)))

(declare-fun b!5392599 () Bool)

(declare-fun e!3344222 () Bool)

(assert (=> b!5392599 (= e!3344221 e!3344222)))

(declare-fun res!2291447 () Bool)

(assert (=> b!5392599 (=> (not res!2291447) (not e!3344222))))

(assert (=> b!5392599 (= res!2291447 (dynLambda!24288 lambda!280125 (h!68040 lt!2196952)))))

(declare-fun b!5392600 () Bool)

(assert (=> b!5392600 (= e!3344222 (forall!14517 (t!374939 lt!2196952) lambda!280125))))

(assert (= (and d!1723853 (not res!2291446)) b!5392599))

(assert (= (and b!5392599 res!2291447) b!5392600))

(declare-fun b_lambda!206293 () Bool)

(assert (=> (not b_lambda!206293) (not b!5392599)))

(declare-fun m!6418158 () Bool)

(assert (=> b!5392599 m!6418158))

(declare-fun m!6418160 () Bool)

(assert (=> b!5392600 m!6418160))

(assert (=> b!5392012 d!1723853))

(declare-fun bs!1247568 () Bool)

(declare-fun d!1723855 () Bool)

(assert (= bs!1247568 (and d!1723855 b!5392009)))

(declare-fun lambda!280173 () Int)

(assert (=> bs!1247568 (= lambda!280173 lambda!280125)))

(declare-fun bs!1247569 () Bool)

(assert (= bs!1247569 (and d!1723855 d!1723841)))

(assert (=> bs!1247569 (= lambda!280173 lambda!280171)))

(declare-fun bs!1247570 () Bool)

(assert (= bs!1247570 (and d!1723855 d!1723847)))

(assert (=> bs!1247570 (= lambda!280173 lambda!280172)))

(assert (=> d!1723855 (= (inv!81094 setElem!35033) (forall!14517 (exprs!5023 setElem!35033) lambda!280173))))

(declare-fun bs!1247571 () Bool)

(assert (= bs!1247571 d!1723855))

(declare-fun m!6418162 () Bool)

(assert (=> bs!1247571 m!6418162))

(assert (=> setNonEmpty!35033 d!1723855))

(declare-fun d!1723857 () Bool)

(assert (=> d!1723857 (= (flatMap!866 lt!2196957 lambda!280124) (choose!40575 lt!2196957 lambda!280124))))

(declare-fun bs!1247572 () Bool)

(assert (= bs!1247572 d!1723857))

(declare-fun m!6418164 () Bool)

(assert (=> bs!1247572 m!6418164))

(assert (=> b!5391991 d!1723857))

(declare-fun b!5392601 () Bool)

(declare-fun e!3344224 () (InoxSet Context!9046))

(declare-fun call!386044 () (InoxSet Context!9046))

(assert (=> b!5392601 (= e!3344224 call!386044)))

(declare-fun b!5392602 () Bool)

(declare-fun e!3344225 () Bool)

(assert (=> b!5392602 (= e!3344225 (nullable!5308 (h!68040 (exprs!5023 lt!2196945))))))

(declare-fun b!5392603 () Bool)

(declare-fun e!3344223 () (InoxSet Context!9046))

(assert (=> b!5392603 (= e!3344223 e!3344224)))

(declare-fun c!939798 () Bool)

(assert (=> b!5392603 (= c!939798 ((_ is Cons!61592) (exprs!5023 lt!2196945)))))

(declare-fun b!5392604 () Bool)

(assert (=> b!5392604 (= e!3344224 ((as const (Array Context!9046 Bool)) false))))

(declare-fun b!5392605 () Bool)

(assert (=> b!5392605 (= e!3344223 ((_ map or) call!386044 (derivationStepZipperUp!511 (Context!9047 (t!374939 (exprs!5023 lt!2196945))) (h!68042 s!2326))))))

(declare-fun bm!386039 () Bool)

(assert (=> bm!386039 (= call!386044 (derivationStepZipperDown!587 (h!68040 (exprs!5023 lt!2196945)) (Context!9047 (t!374939 (exprs!5023 lt!2196945))) (h!68042 s!2326)))))

(declare-fun d!1723859 () Bool)

(declare-fun c!939799 () Bool)

(assert (=> d!1723859 (= c!939799 e!3344225)))

(declare-fun res!2291448 () Bool)

(assert (=> d!1723859 (=> (not res!2291448) (not e!3344225))))

(assert (=> d!1723859 (= res!2291448 ((_ is Cons!61592) (exprs!5023 lt!2196945)))))

(assert (=> d!1723859 (= (derivationStepZipperUp!511 lt!2196945 (h!68042 s!2326)) e!3344223)))

(assert (= (and d!1723859 res!2291448) b!5392602))

(assert (= (and d!1723859 c!939799) b!5392605))

(assert (= (and d!1723859 (not c!939799)) b!5392603))

(assert (= (and b!5392603 c!939798) b!5392601))

(assert (= (and b!5392603 (not c!939798)) b!5392604))

(assert (= (or b!5392605 b!5392601) bm!386039))

(declare-fun m!6418166 () Bool)

(assert (=> b!5392602 m!6418166))

(declare-fun m!6418168 () Bool)

(assert (=> b!5392605 m!6418168))

(declare-fun m!6418170 () Bool)

(assert (=> bm!386039 m!6418170))

(assert (=> b!5391991 d!1723859))

(declare-fun d!1723861 () Bool)

(assert (=> d!1723861 (= (flatMap!866 lt!2196957 lambda!280124) (dynLambda!24287 lambda!280124 lt!2196945))))

(declare-fun lt!2197040 () Unit!154078)

(assert (=> d!1723861 (= lt!2197040 (choose!40574 lt!2196957 lt!2196945 lambda!280124))))

(assert (=> d!1723861 (= lt!2196957 (store ((as const (Array Context!9046 Bool)) false) lt!2196945 true))))

(assert (=> d!1723861 (= (lemmaFlatMapOnSingletonSet!398 lt!2196957 lt!2196945 lambda!280124) lt!2197040)))

(declare-fun b_lambda!206295 () Bool)

(assert (=> (not b_lambda!206295) (not d!1723861)))

(declare-fun bs!1247573 () Bool)

(assert (= bs!1247573 d!1723861))

(assert (=> bs!1247573 m!6417652))

(declare-fun m!6418172 () Bool)

(assert (=> bs!1247573 m!6418172))

(declare-fun m!6418174 () Bool)

(assert (=> bs!1247573 m!6418174))

(assert (=> bs!1247573 m!6417644))

(assert (=> b!5391991 d!1723861))

(declare-fun bs!1247574 () Bool)

(declare-fun d!1723863 () Bool)

(assert (= bs!1247574 (and d!1723863 b!5391981)))

(declare-fun lambda!280176 () Int)

(assert (=> bs!1247574 (= lambda!280176 lambda!280124)))

(assert (=> d!1723863 true))

(assert (=> d!1723863 (= (derivationStepZipper!1378 lt!2196957 (h!68042 s!2326)) (flatMap!866 lt!2196957 lambda!280176))))

(declare-fun bs!1247575 () Bool)

(assert (= bs!1247575 d!1723863))

(declare-fun m!6418176 () Bool)

(assert (=> bs!1247575 m!6418176))

(assert (=> b!5391991 d!1723863))

(declare-fun bs!1247576 () Bool)

(declare-fun b!5392640 () Bool)

(assert (= bs!1247576 (and b!5392640 d!1723785)))

(declare-fun lambda!280181 () Int)

(assert (=> bs!1247576 (not (= lambda!280181 lambda!280167))))

(declare-fun bs!1247577 () Bool)

(assert (= bs!1247577 (and b!5392640 d!1723775)))

(assert (=> bs!1247577 (not (= lambda!280181 lambda!280162))))

(declare-fun bs!1247578 () Bool)

(assert (= bs!1247578 (and b!5392640 b!5391978)))

(assert (=> bs!1247578 (not (= lambda!280181 lambda!280122))))

(assert (=> bs!1247578 (not (= lambda!280181 lambda!280123))))

(assert (=> bs!1247576 (not (= lambda!280181 lambda!280168))))

(assert (=> b!5392640 true))

(assert (=> b!5392640 true))

(declare-fun bs!1247579 () Bool)

(declare-fun b!5392648 () Bool)

(assert (= bs!1247579 (and b!5392648 d!1723785)))

(declare-fun lambda!280182 () Int)

(assert (=> bs!1247579 (not (= lambda!280182 lambda!280167))))

(declare-fun bs!1247580 () Bool)

(assert (= bs!1247580 (and b!5392648 d!1723775)))

(assert (=> bs!1247580 (not (= lambda!280182 lambda!280162))))

(declare-fun bs!1247581 () Bool)

(assert (= bs!1247581 (and b!5392648 b!5391978)))

(assert (=> bs!1247581 (not (= lambda!280182 lambda!280122))))

(declare-fun bs!1247582 () Bool)

(assert (= bs!1247582 (and b!5392648 b!5392640)))

(assert (=> bs!1247582 (not (= lambda!280182 lambda!280181))))

(assert (=> bs!1247581 (= lambda!280182 lambda!280123)))

(assert (=> bs!1247579 (= lambda!280182 lambda!280168)))

(assert (=> b!5392648 true))

(assert (=> b!5392648 true))

(declare-fun e!3344248 () Bool)

(declare-fun call!386049 () Bool)

(assert (=> b!5392640 (= e!3344248 call!386049)))

(declare-fun b!5392641 () Bool)

(declare-fun e!3344244 () Bool)

(declare-fun e!3344245 () Bool)

(assert (=> b!5392641 (= e!3344244 e!3344245)))

(declare-fun res!2291465 () Bool)

(assert (=> b!5392641 (= res!2291465 (not ((_ is EmptyLang!15139) r!7292)))))

(assert (=> b!5392641 (=> (not res!2291465) (not e!3344245))))

(declare-fun b!5392642 () Bool)

(declare-fun res!2291466 () Bool)

(assert (=> b!5392642 (=> res!2291466 e!3344248)))

(declare-fun call!386050 () Bool)

(assert (=> b!5392642 (= res!2291466 call!386050)))

(declare-fun e!3344249 () Bool)

(assert (=> b!5392642 (= e!3344249 e!3344248)))

(declare-fun bm!386044 () Bool)

(declare-fun c!939810 () Bool)

(assert (=> bm!386044 (= call!386049 (Exists!2320 (ite c!939810 lambda!280181 lambda!280182)))))

(declare-fun b!5392643 () Bool)

(declare-fun e!3344250 () Bool)

(assert (=> b!5392643 (= e!3344250 e!3344249)))

(assert (=> b!5392643 (= c!939810 ((_ is Star!15139) r!7292))))

(declare-fun b!5392644 () Bool)

(assert (=> b!5392644 (= e!3344244 call!386050)))

(declare-fun d!1723865 () Bool)

(declare-fun c!939811 () Bool)

(assert (=> d!1723865 (= c!939811 ((_ is EmptyExpr!15139) r!7292))))

(assert (=> d!1723865 (= (matchRSpec!2242 r!7292 s!2326) e!3344244)))

(declare-fun b!5392645 () Bool)

(declare-fun e!3344247 () Bool)

(assert (=> b!5392645 (= e!3344247 (= s!2326 (Cons!61594 (c!939633 r!7292) Nil!61594)))))

(declare-fun b!5392646 () Bool)

(declare-fun c!939812 () Bool)

(assert (=> b!5392646 (= c!939812 ((_ is ElementMatch!15139) r!7292))))

(assert (=> b!5392646 (= e!3344245 e!3344247)))

(declare-fun b!5392647 () Bool)

(declare-fun e!3344246 () Bool)

(assert (=> b!5392647 (= e!3344246 (matchRSpec!2242 (regTwo!30791 r!7292) s!2326))))

(declare-fun bm!386045 () Bool)

(assert (=> bm!386045 (= call!386050 (isEmpty!33596 s!2326))))

(assert (=> b!5392648 (= e!3344249 call!386049)))

(declare-fun b!5392649 () Bool)

(declare-fun c!939813 () Bool)

(assert (=> b!5392649 (= c!939813 ((_ is Union!15139) r!7292))))

(assert (=> b!5392649 (= e!3344247 e!3344250)))

(declare-fun b!5392650 () Bool)

(assert (=> b!5392650 (= e!3344250 e!3344246)))

(declare-fun res!2291467 () Bool)

(assert (=> b!5392650 (= res!2291467 (matchRSpec!2242 (regOne!30791 r!7292) s!2326))))

(assert (=> b!5392650 (=> res!2291467 e!3344246)))

(assert (= (and d!1723865 c!939811) b!5392644))

(assert (= (and d!1723865 (not c!939811)) b!5392641))

(assert (= (and b!5392641 res!2291465) b!5392646))

(assert (= (and b!5392646 c!939812) b!5392645))

(assert (= (and b!5392646 (not c!939812)) b!5392649))

(assert (= (and b!5392649 c!939813) b!5392650))

(assert (= (and b!5392649 (not c!939813)) b!5392643))

(assert (= (and b!5392650 (not res!2291467)) b!5392647))

(assert (= (and b!5392643 c!939810) b!5392642))

(assert (= (and b!5392643 (not c!939810)) b!5392648))

(assert (= (and b!5392642 (not res!2291466)) b!5392640))

(assert (= (or b!5392640 b!5392648) bm!386044))

(assert (= (or b!5392644 b!5392642) bm!386045))

(declare-fun m!6418178 () Bool)

(assert (=> bm!386044 m!6418178))

(declare-fun m!6418180 () Bool)

(assert (=> b!5392647 m!6418180))

(assert (=> bm!386045 m!6417876))

(declare-fun m!6418182 () Bool)

(assert (=> b!5392650 m!6418182))

(assert (=> b!5391994 d!1723865))

(declare-fun b!5392679 () Bool)

(declare-fun res!2291488 () Bool)

(declare-fun e!3344268 () Bool)

(assert (=> b!5392679 (=> res!2291488 e!3344268)))

(declare-fun e!3344270 () Bool)

(assert (=> b!5392679 (= res!2291488 e!3344270)))

(declare-fun res!2291485 () Bool)

(assert (=> b!5392679 (=> (not res!2291485) (not e!3344270))))

(declare-fun lt!2197043 () Bool)

(assert (=> b!5392679 (= res!2291485 lt!2197043)))

(declare-fun b!5392680 () Bool)

(declare-fun e!3344269 () Bool)

(declare-fun e!3344265 () Bool)

(assert (=> b!5392680 (= e!3344269 e!3344265)))

(declare-fun c!939822 () Bool)

(assert (=> b!5392680 (= c!939822 ((_ is EmptyLang!15139) r!7292))))

(declare-fun b!5392681 () Bool)

(declare-fun e!3344267 () Bool)

(assert (=> b!5392681 (= e!3344267 (nullable!5308 r!7292))))

(declare-fun d!1723867 () Bool)

(assert (=> d!1723867 e!3344269))

(declare-fun c!939821 () Bool)

(assert (=> d!1723867 (= c!939821 ((_ is EmptyExpr!15139) r!7292))))

(assert (=> d!1723867 (= lt!2197043 e!3344267)))

(declare-fun c!939820 () Bool)

(assert (=> d!1723867 (= c!939820 (isEmpty!33596 s!2326))))

(assert (=> d!1723867 (validRegex!6875 r!7292)))

(assert (=> d!1723867 (= (matchR!7324 r!7292 s!2326) lt!2197043)))

(declare-fun b!5392682 () Bool)

(declare-fun res!2291491 () Bool)

(assert (=> b!5392682 (=> (not res!2291491) (not e!3344270))))

(assert (=> b!5392682 (= res!2291491 (isEmpty!33596 (tail!10663 s!2326)))))

(declare-fun b!5392683 () Bool)

(declare-fun res!2291484 () Bool)

(assert (=> b!5392683 (=> (not res!2291484) (not e!3344270))))

(declare-fun call!386053 () Bool)

(assert (=> b!5392683 (= res!2291484 (not call!386053))))

(declare-fun b!5392684 () Bool)

(assert (=> b!5392684 (= e!3344265 (not lt!2197043))))

(declare-fun b!5392685 () Bool)

(declare-fun derivativeStep!4245 (Regex!15139 C!30548) Regex!15139)

(assert (=> b!5392685 (= e!3344267 (matchR!7324 (derivativeStep!4245 r!7292 (head!11566 s!2326)) (tail!10663 s!2326)))))

(declare-fun b!5392686 () Bool)

(assert (=> b!5392686 (= e!3344270 (= (head!11566 s!2326) (c!939633 r!7292)))))

(declare-fun b!5392687 () Bool)

(declare-fun res!2291489 () Bool)

(declare-fun e!3344271 () Bool)

(assert (=> b!5392687 (=> res!2291489 e!3344271)))

(assert (=> b!5392687 (= res!2291489 (not (isEmpty!33596 (tail!10663 s!2326))))))

(declare-fun b!5392688 () Bool)

(assert (=> b!5392688 (= e!3344271 (not (= (head!11566 s!2326) (c!939633 r!7292))))))

(declare-fun b!5392689 () Bool)

(assert (=> b!5392689 (= e!3344269 (= lt!2197043 call!386053))))

(declare-fun b!5392690 () Bool)

(declare-fun e!3344266 () Bool)

(assert (=> b!5392690 (= e!3344268 e!3344266)))

(declare-fun res!2291490 () Bool)

(assert (=> b!5392690 (=> (not res!2291490) (not e!3344266))))

(assert (=> b!5392690 (= res!2291490 (not lt!2197043))))

(declare-fun bm!386048 () Bool)

(assert (=> bm!386048 (= call!386053 (isEmpty!33596 s!2326))))

(declare-fun b!5392691 () Bool)

(assert (=> b!5392691 (= e!3344266 e!3344271)))

(declare-fun res!2291486 () Bool)

(assert (=> b!5392691 (=> res!2291486 e!3344271)))

(assert (=> b!5392691 (= res!2291486 call!386053)))

(declare-fun b!5392692 () Bool)

(declare-fun res!2291487 () Bool)

(assert (=> b!5392692 (=> res!2291487 e!3344268)))

(assert (=> b!5392692 (= res!2291487 (not ((_ is ElementMatch!15139) r!7292)))))

(assert (=> b!5392692 (= e!3344265 e!3344268)))

(assert (= (and d!1723867 c!939820) b!5392681))

(assert (= (and d!1723867 (not c!939820)) b!5392685))

(assert (= (and d!1723867 c!939821) b!5392689))

(assert (= (and d!1723867 (not c!939821)) b!5392680))

(assert (= (and b!5392680 c!939822) b!5392684))

(assert (= (and b!5392680 (not c!939822)) b!5392692))

(assert (= (and b!5392692 (not res!2291487)) b!5392679))

(assert (= (and b!5392679 res!2291485) b!5392683))

(assert (= (and b!5392683 res!2291484) b!5392682))

(assert (= (and b!5392682 res!2291491) b!5392686))

(assert (= (and b!5392679 (not res!2291488)) b!5392690))

(assert (= (and b!5392690 res!2291490) b!5392691))

(assert (= (and b!5392691 (not res!2291486)) b!5392687))

(assert (= (and b!5392687 (not res!2291489)) b!5392688))

(assert (= (or b!5392689 b!5392683 b!5392691) bm!386048))

(declare-fun m!6418184 () Bool)

(assert (=> b!5392681 m!6418184))

(assert (=> b!5392685 m!6417880))

(assert (=> b!5392685 m!6417880))

(declare-fun m!6418186 () Bool)

(assert (=> b!5392685 m!6418186))

(assert (=> b!5392685 m!6417884))

(assert (=> b!5392685 m!6418186))

(assert (=> b!5392685 m!6417884))

(declare-fun m!6418188 () Bool)

(assert (=> b!5392685 m!6418188))

(assert (=> b!5392687 m!6417884))

(assert (=> b!5392687 m!6417884))

(declare-fun m!6418190 () Bool)

(assert (=> b!5392687 m!6418190))

(assert (=> b!5392686 m!6417880))

(assert (=> bm!386048 m!6417876))

(assert (=> b!5392682 m!6417884))

(assert (=> b!5392682 m!6417884))

(assert (=> b!5392682 m!6418190))

(assert (=> b!5392688 m!6417880))

(assert (=> d!1723867 m!6417876))

(assert (=> d!1723867 m!6417592))

(assert (=> b!5391994 d!1723867))

(declare-fun d!1723869 () Bool)

(assert (=> d!1723869 (= (matchR!7324 r!7292 s!2326) (matchRSpec!2242 r!7292 s!2326))))

(declare-fun lt!2197046 () Unit!154078)

(declare-fun choose!40580 (Regex!15139 List!61718) Unit!154078)

(assert (=> d!1723869 (= lt!2197046 (choose!40580 r!7292 s!2326))))

(assert (=> d!1723869 (validRegex!6875 r!7292)))

(assert (=> d!1723869 (= (mainMatchTheorem!2242 r!7292 s!2326) lt!2197046)))

(declare-fun bs!1247583 () Bool)

(assert (= bs!1247583 d!1723869))

(assert (=> bs!1247583 m!6417576))

(assert (=> bs!1247583 m!6417574))

(declare-fun m!6418192 () Bool)

(assert (=> bs!1247583 m!6418192))

(assert (=> bs!1247583 m!6417592))

(assert (=> b!5391994 d!1723869))

(declare-fun d!1723871 () Bool)

(assert (=> d!1723871 (= (isEmpty!33593 (t!374940 zl!343)) ((_ is Nil!61593) (t!374940 zl!343)))))

(assert (=> b!5391974 d!1723871))

(declare-fun bs!1247584 () Bool)

(declare-fun d!1723873 () Bool)

(assert (= bs!1247584 (and d!1723873 b!5392009)))

(declare-fun lambda!280185 () Int)

(assert (=> bs!1247584 (= lambda!280185 lambda!280125)))

(declare-fun bs!1247585 () Bool)

(assert (= bs!1247585 (and d!1723873 d!1723841)))

(assert (=> bs!1247585 (= lambda!280185 lambda!280171)))

(declare-fun bs!1247586 () Bool)

(assert (= bs!1247586 (and d!1723873 d!1723847)))

(assert (=> bs!1247586 (= lambda!280185 lambda!280172)))

(declare-fun bs!1247587 () Bool)

(assert (= bs!1247587 (and d!1723873 d!1723855)))

(assert (=> bs!1247587 (= lambda!280185 lambda!280173)))

(declare-fun b!5392713 () Bool)

(declare-fun e!3344287 () Bool)

(declare-fun e!3344284 () Bool)

(assert (=> b!5392713 (= e!3344287 e!3344284)))

(declare-fun c!939831 () Bool)

(declare-fun tail!10664 (List!61716) List!61716)

(assert (=> b!5392713 (= c!939831 (isEmpty!33594 (tail!10664 (unfocusZipperList!581 zl!343))))))

(declare-fun e!3344285 () Bool)

(assert (=> d!1723873 e!3344285))

(declare-fun res!2291497 () Bool)

(assert (=> d!1723873 (=> (not res!2291497) (not e!3344285))))

(declare-fun lt!2197049 () Regex!15139)

(assert (=> d!1723873 (= res!2291497 (validRegex!6875 lt!2197049))))

(declare-fun e!3344289 () Regex!15139)

(assert (=> d!1723873 (= lt!2197049 e!3344289)))

(declare-fun c!939832 () Bool)

(declare-fun e!3344288 () Bool)

(assert (=> d!1723873 (= c!939832 e!3344288)))

(declare-fun res!2291496 () Bool)

(assert (=> d!1723873 (=> (not res!2291496) (not e!3344288))))

(assert (=> d!1723873 (= res!2291496 ((_ is Cons!61592) (unfocusZipperList!581 zl!343)))))

(assert (=> d!1723873 (forall!14517 (unfocusZipperList!581 zl!343) lambda!280185)))

(assert (=> d!1723873 (= (generalisedUnion!1068 (unfocusZipperList!581 zl!343)) lt!2197049)))

(declare-fun b!5392714 () Bool)

(declare-fun isEmptyLang!967 (Regex!15139) Bool)

(assert (=> b!5392714 (= e!3344287 (isEmptyLang!967 lt!2197049))))

(declare-fun b!5392715 () Bool)

(declare-fun e!3344286 () Regex!15139)

(assert (=> b!5392715 (= e!3344289 e!3344286)))

(declare-fun c!939834 () Bool)

(assert (=> b!5392715 (= c!939834 ((_ is Cons!61592) (unfocusZipperList!581 zl!343)))))

(declare-fun b!5392716 () Bool)

(assert (=> b!5392716 (= e!3344289 (h!68040 (unfocusZipperList!581 zl!343)))))

(declare-fun b!5392717 () Bool)

(assert (=> b!5392717 (= e!3344286 EmptyLang!15139)))

(declare-fun b!5392718 () Bool)

(declare-fun isUnion!399 (Regex!15139) Bool)

(assert (=> b!5392718 (= e!3344284 (isUnion!399 lt!2197049))))

(declare-fun b!5392719 () Bool)

(declare-fun head!11567 (List!61716) Regex!15139)

(assert (=> b!5392719 (= e!3344284 (= lt!2197049 (head!11567 (unfocusZipperList!581 zl!343))))))

(declare-fun b!5392720 () Bool)

(assert (=> b!5392720 (= e!3344286 (Union!15139 (h!68040 (unfocusZipperList!581 zl!343)) (generalisedUnion!1068 (t!374939 (unfocusZipperList!581 zl!343)))))))

(declare-fun b!5392721 () Bool)

(assert (=> b!5392721 (= e!3344285 e!3344287)))

(declare-fun c!939833 () Bool)

(assert (=> b!5392721 (= c!939833 (isEmpty!33594 (unfocusZipperList!581 zl!343)))))

(declare-fun b!5392722 () Bool)

(assert (=> b!5392722 (= e!3344288 (isEmpty!33594 (t!374939 (unfocusZipperList!581 zl!343))))))

(assert (= (and d!1723873 res!2291496) b!5392722))

(assert (= (and d!1723873 c!939832) b!5392716))

(assert (= (and d!1723873 (not c!939832)) b!5392715))

(assert (= (and b!5392715 c!939834) b!5392720))

(assert (= (and b!5392715 (not c!939834)) b!5392717))

(assert (= (and d!1723873 res!2291497) b!5392721))

(assert (= (and b!5392721 c!939833) b!5392714))

(assert (= (and b!5392721 (not c!939833)) b!5392713))

(assert (= (and b!5392713 c!939831) b!5392719))

(assert (= (and b!5392713 (not c!939831)) b!5392718))

(assert (=> b!5392719 m!6417656))

(declare-fun m!6418194 () Bool)

(assert (=> b!5392719 m!6418194))

(declare-fun m!6418196 () Bool)

(assert (=> b!5392720 m!6418196))

(declare-fun m!6418198 () Bool)

(assert (=> b!5392714 m!6418198))

(declare-fun m!6418200 () Bool)

(assert (=> b!5392722 m!6418200))

(assert (=> b!5392721 m!6417656))

(declare-fun m!6418202 () Bool)

(assert (=> b!5392721 m!6418202))

(declare-fun m!6418204 () Bool)

(assert (=> d!1723873 m!6418204))

(assert (=> d!1723873 m!6417656))

(declare-fun m!6418206 () Bool)

(assert (=> d!1723873 m!6418206))

(declare-fun m!6418208 () Bool)

(assert (=> b!5392718 m!6418208))

(assert (=> b!5392713 m!6417656))

(declare-fun m!6418210 () Bool)

(assert (=> b!5392713 m!6418210))

(assert (=> b!5392713 m!6418210))

(declare-fun m!6418212 () Bool)

(assert (=> b!5392713 m!6418212))

(assert (=> b!5392013 d!1723873))

(declare-fun bs!1247588 () Bool)

(declare-fun d!1723875 () Bool)

(assert (= bs!1247588 (and d!1723875 b!5392009)))

(declare-fun lambda!280188 () Int)

(assert (=> bs!1247588 (= lambda!280188 lambda!280125)))

(declare-fun bs!1247589 () Bool)

(assert (= bs!1247589 (and d!1723875 d!1723855)))

(assert (=> bs!1247589 (= lambda!280188 lambda!280173)))

(declare-fun bs!1247590 () Bool)

(assert (= bs!1247590 (and d!1723875 d!1723873)))

(assert (=> bs!1247590 (= lambda!280188 lambda!280185)))

(declare-fun bs!1247591 () Bool)

(assert (= bs!1247591 (and d!1723875 d!1723847)))

(assert (=> bs!1247591 (= lambda!280188 lambda!280172)))

(declare-fun bs!1247592 () Bool)

(assert (= bs!1247592 (and d!1723875 d!1723841)))

(assert (=> bs!1247592 (= lambda!280188 lambda!280171)))

(declare-fun lt!2197052 () List!61716)

(assert (=> d!1723875 (forall!14517 lt!2197052 lambda!280188)))

(declare-fun e!3344292 () List!61716)

(assert (=> d!1723875 (= lt!2197052 e!3344292)))

(declare-fun c!939837 () Bool)

(assert (=> d!1723875 (= c!939837 ((_ is Cons!61593) zl!343))))

(assert (=> d!1723875 (= (unfocusZipperList!581 zl!343) lt!2197052)))

(declare-fun b!5392727 () Bool)

(assert (=> b!5392727 (= e!3344292 (Cons!61592 (generalisedConcat!808 (exprs!5023 (h!68041 zl!343))) (unfocusZipperList!581 (t!374940 zl!343))))))

(declare-fun b!5392728 () Bool)

(assert (=> b!5392728 (= e!3344292 Nil!61592)))

(assert (= (and d!1723875 c!939837) b!5392727))

(assert (= (and d!1723875 (not c!939837)) b!5392728))

(declare-fun m!6418214 () Bool)

(assert (=> d!1723875 m!6418214))

(assert (=> b!5392727 m!6417616))

(declare-fun m!6418216 () Bool)

(assert (=> b!5392727 m!6418216))

(assert (=> b!5392013 d!1723875))

(declare-fun e!3344295 () Bool)

(declare-fun d!1723877 () Bool)

(assert (=> d!1723877 (= (matchZipper!1383 ((_ map or) lt!2196949 lt!2196933) (t!374941 s!2326)) e!3344295)))

(declare-fun res!2291500 () Bool)

(assert (=> d!1723877 (=> res!2291500 e!3344295)))

(assert (=> d!1723877 (= res!2291500 (matchZipper!1383 lt!2196949 (t!374941 s!2326)))))

(declare-fun lt!2197055 () Unit!154078)

(declare-fun choose!40581 ((InoxSet Context!9046) (InoxSet Context!9046) List!61718) Unit!154078)

(assert (=> d!1723877 (= lt!2197055 (choose!40581 lt!2196949 lt!2196933 (t!374941 s!2326)))))

(assert (=> d!1723877 (= (lemmaZipperConcatMatchesSameAsBothZippers!376 lt!2196949 lt!2196933 (t!374941 s!2326)) lt!2197055)))

(declare-fun b!5392731 () Bool)

(assert (=> b!5392731 (= e!3344295 (matchZipper!1383 lt!2196933 (t!374941 s!2326)))))

(assert (= (and d!1723877 (not res!2291500)) b!5392731))

(assert (=> d!1723877 m!6417600))

(assert (=> d!1723877 m!6417598))

(declare-fun m!6418218 () Bool)

(assert (=> d!1723877 m!6418218))

(assert (=> b!5392731 m!6417562))

(assert (=> b!5391993 d!1723877))

(assert (=> b!5391993 d!1723851))

(declare-fun d!1723879 () Bool)

(declare-fun c!939838 () Bool)

(assert (=> d!1723879 (= c!939838 (isEmpty!33596 (t!374941 s!2326)))))

(declare-fun e!3344296 () Bool)

(assert (=> d!1723879 (= (matchZipper!1383 ((_ map or) lt!2196949 lt!2196933) (t!374941 s!2326)) e!3344296)))

(declare-fun b!5392732 () Bool)

(assert (=> b!5392732 (= e!3344296 (nullableZipper!1424 ((_ map or) lt!2196949 lt!2196933)))))

(declare-fun b!5392733 () Bool)

(assert (=> b!5392733 (= e!3344296 (matchZipper!1383 (derivationStepZipper!1378 ((_ map or) lt!2196949 lt!2196933) (head!11566 (t!374941 s!2326))) (tail!10663 (t!374941 s!2326))))))

(assert (= (and d!1723879 c!939838) b!5392732))

(assert (= (and d!1723879 (not c!939838)) b!5392733))

(assert (=> d!1723879 m!6418098))

(declare-fun m!6418220 () Bool)

(assert (=> b!5392732 m!6418220))

(assert (=> b!5392733 m!6418102))

(assert (=> b!5392733 m!6418102))

(declare-fun m!6418222 () Bool)

(assert (=> b!5392733 m!6418222))

(assert (=> b!5392733 m!6418106))

(assert (=> b!5392733 m!6418222))

(assert (=> b!5392733 m!6418106))

(declare-fun m!6418224 () Bool)

(assert (=> b!5392733 m!6418224))

(assert (=> b!5391993 d!1723879))

(declare-fun b!5392734 () Bool)

(declare-fun res!2291505 () Bool)

(declare-fun e!3344300 () Bool)

(assert (=> b!5392734 (=> res!2291505 e!3344300)))

(declare-fun e!3344302 () Bool)

(assert (=> b!5392734 (= res!2291505 e!3344302)))

(declare-fun res!2291502 () Bool)

(assert (=> b!5392734 (=> (not res!2291502) (not e!3344302))))

(declare-fun lt!2197056 () Bool)

(assert (=> b!5392734 (= res!2291502 lt!2197056)))

(declare-fun b!5392735 () Bool)

(declare-fun e!3344301 () Bool)

(declare-fun e!3344297 () Bool)

(assert (=> b!5392735 (= e!3344301 e!3344297)))

(declare-fun c!939841 () Bool)

(assert (=> b!5392735 (= c!939841 ((_ is EmptyLang!15139) lt!2196937))))

(declare-fun b!5392736 () Bool)

(declare-fun e!3344299 () Bool)

(assert (=> b!5392736 (= e!3344299 (nullable!5308 lt!2196937))))

(declare-fun d!1723881 () Bool)

(assert (=> d!1723881 e!3344301))

(declare-fun c!939840 () Bool)

(assert (=> d!1723881 (= c!939840 ((_ is EmptyExpr!15139) lt!2196937))))

(assert (=> d!1723881 (= lt!2197056 e!3344299)))

(declare-fun c!939839 () Bool)

(assert (=> d!1723881 (= c!939839 (isEmpty!33596 s!2326))))

(assert (=> d!1723881 (validRegex!6875 lt!2196937)))

(assert (=> d!1723881 (= (matchR!7324 lt!2196937 s!2326) lt!2197056)))

(declare-fun b!5392737 () Bool)

(declare-fun res!2291508 () Bool)

(assert (=> b!5392737 (=> (not res!2291508) (not e!3344302))))

(assert (=> b!5392737 (= res!2291508 (isEmpty!33596 (tail!10663 s!2326)))))

(declare-fun b!5392738 () Bool)

(declare-fun res!2291501 () Bool)

(assert (=> b!5392738 (=> (not res!2291501) (not e!3344302))))

(declare-fun call!386054 () Bool)

(assert (=> b!5392738 (= res!2291501 (not call!386054))))

(declare-fun b!5392739 () Bool)

(assert (=> b!5392739 (= e!3344297 (not lt!2197056))))

(declare-fun b!5392740 () Bool)

(assert (=> b!5392740 (= e!3344299 (matchR!7324 (derivativeStep!4245 lt!2196937 (head!11566 s!2326)) (tail!10663 s!2326)))))

(declare-fun b!5392741 () Bool)

(assert (=> b!5392741 (= e!3344302 (= (head!11566 s!2326) (c!939633 lt!2196937)))))

(declare-fun b!5392742 () Bool)

(declare-fun res!2291506 () Bool)

(declare-fun e!3344303 () Bool)

(assert (=> b!5392742 (=> res!2291506 e!3344303)))

(assert (=> b!5392742 (= res!2291506 (not (isEmpty!33596 (tail!10663 s!2326))))))

(declare-fun b!5392743 () Bool)

(assert (=> b!5392743 (= e!3344303 (not (= (head!11566 s!2326) (c!939633 lt!2196937))))))

(declare-fun b!5392744 () Bool)

(assert (=> b!5392744 (= e!3344301 (= lt!2197056 call!386054))))

(declare-fun b!5392745 () Bool)

(declare-fun e!3344298 () Bool)

(assert (=> b!5392745 (= e!3344300 e!3344298)))

(declare-fun res!2291507 () Bool)

(assert (=> b!5392745 (=> (not res!2291507) (not e!3344298))))

(assert (=> b!5392745 (= res!2291507 (not lt!2197056))))

(declare-fun bm!386049 () Bool)

(assert (=> bm!386049 (= call!386054 (isEmpty!33596 s!2326))))

(declare-fun b!5392746 () Bool)

(assert (=> b!5392746 (= e!3344298 e!3344303)))

(declare-fun res!2291503 () Bool)

(assert (=> b!5392746 (=> res!2291503 e!3344303)))

(assert (=> b!5392746 (= res!2291503 call!386054)))

(declare-fun b!5392747 () Bool)

(declare-fun res!2291504 () Bool)

(assert (=> b!5392747 (=> res!2291504 e!3344300)))

(assert (=> b!5392747 (= res!2291504 (not ((_ is ElementMatch!15139) lt!2196937)))))

(assert (=> b!5392747 (= e!3344297 e!3344300)))

(assert (= (and d!1723881 c!939839) b!5392736))

(assert (= (and d!1723881 (not c!939839)) b!5392740))

(assert (= (and d!1723881 c!939840) b!5392744))

(assert (= (and d!1723881 (not c!939840)) b!5392735))

(assert (= (and b!5392735 c!939841) b!5392739))

(assert (= (and b!5392735 (not c!939841)) b!5392747))

(assert (= (and b!5392747 (not res!2291504)) b!5392734))

(assert (= (and b!5392734 res!2291502) b!5392738))

(assert (= (and b!5392738 res!2291501) b!5392737))

(assert (= (and b!5392737 res!2291508) b!5392741))

(assert (= (and b!5392734 (not res!2291505)) b!5392745))

(assert (= (and b!5392745 res!2291507) b!5392746))

(assert (= (and b!5392746 (not res!2291503)) b!5392742))

(assert (= (and b!5392742 (not res!2291506)) b!5392743))

(assert (= (or b!5392744 b!5392738 b!5392746) bm!386049))

(declare-fun m!6418226 () Bool)

(assert (=> b!5392736 m!6418226))

(assert (=> b!5392740 m!6417880))

(assert (=> b!5392740 m!6417880))

(declare-fun m!6418228 () Bool)

(assert (=> b!5392740 m!6418228))

(assert (=> b!5392740 m!6417884))

(assert (=> b!5392740 m!6418228))

(assert (=> b!5392740 m!6417884))

(declare-fun m!6418230 () Bool)

(assert (=> b!5392740 m!6418230))

(assert (=> b!5392742 m!6417884))

(assert (=> b!5392742 m!6417884))

(assert (=> b!5392742 m!6418190))

(assert (=> b!5392741 m!6417880))

(assert (=> bm!386049 m!6417876))

(assert (=> b!5392737 m!6417884))

(assert (=> b!5392737 m!6417884))

(assert (=> b!5392737 m!6418190))

(assert (=> b!5392743 m!6417880))

(assert (=> d!1723881 m!6417876))

(declare-fun m!6418232 () Bool)

(assert (=> d!1723881 m!6418232))

(assert (=> b!5391997 d!1723881))

(declare-fun bs!1247593 () Bool)

(declare-fun b!5392748 () Bool)

(assert (= bs!1247593 (and b!5392748 d!1723785)))

(declare-fun lambda!280189 () Int)

(assert (=> bs!1247593 (not (= lambda!280189 lambda!280167))))

(declare-fun bs!1247594 () Bool)

(assert (= bs!1247594 (and b!5392748 d!1723775)))

(assert (=> bs!1247594 (not (= lambda!280189 lambda!280162))))

(declare-fun bs!1247595 () Bool)

(assert (= bs!1247595 (and b!5392748 b!5391978)))

(assert (=> bs!1247595 (not (= lambda!280189 lambda!280122))))

(declare-fun bs!1247596 () Bool)

(assert (= bs!1247596 (and b!5392748 b!5392648)))

(assert (=> bs!1247596 (not (= lambda!280189 lambda!280182))))

(declare-fun bs!1247597 () Bool)

(assert (= bs!1247597 (and b!5392748 b!5392640)))

(assert (=> bs!1247597 (= (and (= (reg!15468 lt!2196937) (reg!15468 r!7292)) (= lt!2196937 r!7292)) (= lambda!280189 lambda!280181))))

(assert (=> bs!1247595 (not (= lambda!280189 lambda!280123))))

(assert (=> bs!1247593 (not (= lambda!280189 lambda!280168))))

(assert (=> b!5392748 true))

(assert (=> b!5392748 true))

(declare-fun bs!1247598 () Bool)

(declare-fun b!5392756 () Bool)

(assert (= bs!1247598 (and b!5392756 d!1723785)))

(declare-fun lambda!280190 () Int)

(assert (=> bs!1247598 (not (= lambda!280190 lambda!280167))))

(declare-fun bs!1247599 () Bool)

(assert (= bs!1247599 (and b!5392756 d!1723775)))

(assert (=> bs!1247599 (not (= lambda!280190 lambda!280162))))

(declare-fun bs!1247600 () Bool)

(assert (= bs!1247600 (and b!5392756 b!5391978)))

(assert (=> bs!1247600 (not (= lambda!280190 lambda!280122))))

(declare-fun bs!1247601 () Bool)

(assert (= bs!1247601 (and b!5392756 b!5392648)))

(assert (=> bs!1247601 (= (and (= (regOne!30790 lt!2196937) (regOne!30790 r!7292)) (= (regTwo!30790 lt!2196937) (regTwo!30790 r!7292))) (= lambda!280190 lambda!280182))))

(declare-fun bs!1247602 () Bool)

(assert (= bs!1247602 (and b!5392756 b!5392640)))

(assert (=> bs!1247602 (not (= lambda!280190 lambda!280181))))

(assert (=> bs!1247600 (= (and (= (regOne!30790 lt!2196937) (regOne!30790 r!7292)) (= (regTwo!30790 lt!2196937) (regTwo!30790 r!7292))) (= lambda!280190 lambda!280123))))

(assert (=> bs!1247598 (= (and (= (regOne!30790 lt!2196937) (regOne!30790 r!7292)) (= (regTwo!30790 lt!2196937) (regTwo!30790 r!7292))) (= lambda!280190 lambda!280168))))

(declare-fun bs!1247603 () Bool)

(assert (= bs!1247603 (and b!5392756 b!5392748)))

(assert (=> bs!1247603 (not (= lambda!280190 lambda!280189))))

(assert (=> b!5392756 true))

(assert (=> b!5392756 true))

(declare-fun e!3344308 () Bool)

(declare-fun call!386055 () Bool)

(assert (=> b!5392748 (= e!3344308 call!386055)))

(declare-fun b!5392749 () Bool)

(declare-fun e!3344304 () Bool)

(declare-fun e!3344305 () Bool)

(assert (=> b!5392749 (= e!3344304 e!3344305)))

(declare-fun res!2291509 () Bool)

(assert (=> b!5392749 (= res!2291509 (not ((_ is EmptyLang!15139) lt!2196937)))))

(assert (=> b!5392749 (=> (not res!2291509) (not e!3344305))))

(declare-fun b!5392750 () Bool)

(declare-fun res!2291510 () Bool)

(assert (=> b!5392750 (=> res!2291510 e!3344308)))

(declare-fun call!386056 () Bool)

(assert (=> b!5392750 (= res!2291510 call!386056)))

(declare-fun e!3344309 () Bool)

(assert (=> b!5392750 (= e!3344309 e!3344308)))

(declare-fun bm!386050 () Bool)

(declare-fun c!939842 () Bool)

(assert (=> bm!386050 (= call!386055 (Exists!2320 (ite c!939842 lambda!280189 lambda!280190)))))

(declare-fun b!5392751 () Bool)

(declare-fun e!3344310 () Bool)

(assert (=> b!5392751 (= e!3344310 e!3344309)))

(assert (=> b!5392751 (= c!939842 ((_ is Star!15139) lt!2196937))))

(declare-fun b!5392752 () Bool)

(assert (=> b!5392752 (= e!3344304 call!386056)))

(declare-fun d!1723883 () Bool)

(declare-fun c!939843 () Bool)

(assert (=> d!1723883 (= c!939843 ((_ is EmptyExpr!15139) lt!2196937))))

(assert (=> d!1723883 (= (matchRSpec!2242 lt!2196937 s!2326) e!3344304)))

(declare-fun b!5392753 () Bool)

(declare-fun e!3344307 () Bool)

(assert (=> b!5392753 (= e!3344307 (= s!2326 (Cons!61594 (c!939633 lt!2196937) Nil!61594)))))

(declare-fun b!5392754 () Bool)

(declare-fun c!939844 () Bool)

(assert (=> b!5392754 (= c!939844 ((_ is ElementMatch!15139) lt!2196937))))

(assert (=> b!5392754 (= e!3344305 e!3344307)))

(declare-fun b!5392755 () Bool)

(declare-fun e!3344306 () Bool)

(assert (=> b!5392755 (= e!3344306 (matchRSpec!2242 (regTwo!30791 lt!2196937) s!2326))))

(declare-fun bm!386051 () Bool)

(assert (=> bm!386051 (= call!386056 (isEmpty!33596 s!2326))))

(assert (=> b!5392756 (= e!3344309 call!386055)))

(declare-fun b!5392757 () Bool)

(declare-fun c!939845 () Bool)

(assert (=> b!5392757 (= c!939845 ((_ is Union!15139) lt!2196937))))

(assert (=> b!5392757 (= e!3344307 e!3344310)))

(declare-fun b!5392758 () Bool)

(assert (=> b!5392758 (= e!3344310 e!3344306)))

(declare-fun res!2291511 () Bool)

(assert (=> b!5392758 (= res!2291511 (matchRSpec!2242 (regOne!30791 lt!2196937) s!2326))))

(assert (=> b!5392758 (=> res!2291511 e!3344306)))

(assert (= (and d!1723883 c!939843) b!5392752))

(assert (= (and d!1723883 (not c!939843)) b!5392749))

(assert (= (and b!5392749 res!2291509) b!5392754))

(assert (= (and b!5392754 c!939844) b!5392753))

(assert (= (and b!5392754 (not c!939844)) b!5392757))

(assert (= (and b!5392757 c!939845) b!5392758))

(assert (= (and b!5392757 (not c!939845)) b!5392751))

(assert (= (and b!5392758 (not res!2291511)) b!5392755))

(assert (= (and b!5392751 c!939842) b!5392750))

(assert (= (and b!5392751 (not c!939842)) b!5392756))

(assert (= (and b!5392750 (not res!2291510)) b!5392748))

(assert (= (or b!5392748 b!5392756) bm!386050))

(assert (= (or b!5392752 b!5392750) bm!386051))

(declare-fun m!6418234 () Bool)

(assert (=> bm!386050 m!6418234))

(declare-fun m!6418236 () Bool)

(assert (=> b!5392755 m!6418236))

(assert (=> bm!386051 m!6417876))

(declare-fun m!6418238 () Bool)

(assert (=> b!5392758 m!6418238))

(assert (=> b!5391997 d!1723883))

(declare-fun d!1723885 () Bool)

(assert (=> d!1723885 (= (matchR!7324 lt!2196937 s!2326) (matchRSpec!2242 lt!2196937 s!2326))))

(declare-fun lt!2197057 () Unit!154078)

(assert (=> d!1723885 (= lt!2197057 (choose!40580 lt!2196937 s!2326))))

(assert (=> d!1723885 (validRegex!6875 lt!2196937)))

(assert (=> d!1723885 (= (mainMatchTheorem!2242 lt!2196937 s!2326) lt!2197057)))

(declare-fun bs!1247604 () Bool)

(assert (= bs!1247604 d!1723885))

(assert (=> bs!1247604 m!6417568))

(assert (=> bs!1247604 m!6417570))

(declare-fun m!6418240 () Bool)

(assert (=> bs!1247604 m!6418240))

(assert (=> bs!1247604 m!6418232))

(assert (=> b!5391997 d!1723885))

(declare-fun d!1723887 () Bool)

(declare-fun c!939846 () Bool)

(assert (=> d!1723887 (= c!939846 (isEmpty!33596 (t!374941 s!2326)))))

(declare-fun e!3344311 () Bool)

(assert (=> d!1723887 (= (matchZipper!1383 lt!2196946 (t!374941 s!2326)) e!3344311)))

(declare-fun b!5392759 () Bool)

(assert (=> b!5392759 (= e!3344311 (nullableZipper!1424 lt!2196946))))

(declare-fun b!5392760 () Bool)

(assert (=> b!5392760 (= e!3344311 (matchZipper!1383 (derivationStepZipper!1378 lt!2196946 (head!11566 (t!374941 s!2326))) (tail!10663 (t!374941 s!2326))))))

(assert (= (and d!1723887 c!939846) b!5392759))

(assert (= (and d!1723887 (not c!939846)) b!5392760))

(assert (=> d!1723887 m!6418098))

(declare-fun m!6418242 () Bool)

(assert (=> b!5392759 m!6418242))

(assert (=> b!5392760 m!6418102))

(assert (=> b!5392760 m!6418102))

(declare-fun m!6418244 () Bool)

(assert (=> b!5392760 m!6418244))

(assert (=> b!5392760 m!6418106))

(assert (=> b!5392760 m!6418244))

(assert (=> b!5392760 m!6418106))

(declare-fun m!6418246 () Bool)

(assert (=> b!5392760 m!6418246))

(assert (=> b!5391996 d!1723887))

(declare-fun d!1723889 () Bool)

(declare-fun c!939847 () Bool)

(assert (=> d!1723889 (= c!939847 (isEmpty!33596 s!2326))))

(declare-fun e!3344312 () Bool)

(assert (=> d!1723889 (= (matchZipper!1383 lt!2196957 s!2326) e!3344312)))

(declare-fun b!5392761 () Bool)

(assert (=> b!5392761 (= e!3344312 (nullableZipper!1424 lt!2196957))))

(declare-fun b!5392762 () Bool)

(assert (=> b!5392762 (= e!3344312 (matchZipper!1383 (derivationStepZipper!1378 lt!2196957 (head!11566 s!2326)) (tail!10663 s!2326)))))

(assert (= (and d!1723889 c!939847) b!5392761))

(assert (= (and d!1723889 (not c!939847)) b!5392762))

(assert (=> d!1723889 m!6417876))

(declare-fun m!6418248 () Bool)

(assert (=> b!5392761 m!6418248))

(assert (=> b!5392762 m!6417880))

(assert (=> b!5392762 m!6417880))

(declare-fun m!6418250 () Bool)

(assert (=> b!5392762 m!6418250))

(assert (=> b!5392762 m!6417884))

(assert (=> b!5392762 m!6418250))

(assert (=> b!5392762 m!6417884))

(declare-fun m!6418252 () Bool)

(assert (=> b!5392762 m!6418252))

(assert (=> b!5391996 d!1723889))

(assert (=> b!5391976 d!1723831))

(declare-fun bs!1247605 () Bool)

(declare-fun d!1723891 () Bool)

(assert (= bs!1247605 (and d!1723891 d!1723875)))

(declare-fun lambda!280193 () Int)

(assert (=> bs!1247605 (= lambda!280193 lambda!280188)))

(declare-fun bs!1247606 () Bool)

(assert (= bs!1247606 (and d!1723891 b!5392009)))

(assert (=> bs!1247606 (= lambda!280193 lambda!280125)))

(declare-fun bs!1247607 () Bool)

(assert (= bs!1247607 (and d!1723891 d!1723855)))

(assert (=> bs!1247607 (= lambda!280193 lambda!280173)))

(declare-fun bs!1247608 () Bool)

(assert (= bs!1247608 (and d!1723891 d!1723873)))

(assert (=> bs!1247608 (= lambda!280193 lambda!280185)))

(declare-fun bs!1247609 () Bool)

(assert (= bs!1247609 (and d!1723891 d!1723847)))

(assert (=> bs!1247609 (= lambda!280193 lambda!280172)))

(declare-fun bs!1247610 () Bool)

(assert (= bs!1247610 (and d!1723891 d!1723841)))

(assert (=> bs!1247610 (= lambda!280193 lambda!280171)))

(declare-fun b!5392783 () Bool)

(declare-fun e!3344327 () Bool)

(declare-fun lt!2197060 () Regex!15139)

(declare-fun isConcat!481 (Regex!15139) Bool)

(assert (=> b!5392783 (= e!3344327 (isConcat!481 lt!2197060))))

(declare-fun e!3344329 () Bool)

(assert (=> d!1723891 e!3344329))

(declare-fun res!2291516 () Bool)

(assert (=> d!1723891 (=> (not res!2291516) (not e!3344329))))

(assert (=> d!1723891 (= res!2291516 (validRegex!6875 lt!2197060))))

(declare-fun e!3344330 () Regex!15139)

(assert (=> d!1723891 (= lt!2197060 e!3344330)))

(declare-fun c!939859 () Bool)

(declare-fun e!3344325 () Bool)

(assert (=> d!1723891 (= c!939859 e!3344325)))

(declare-fun res!2291517 () Bool)

(assert (=> d!1723891 (=> (not res!2291517) (not e!3344325))))

(assert (=> d!1723891 (= res!2291517 ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343))))))

(assert (=> d!1723891 (forall!14517 (exprs!5023 (h!68041 zl!343)) lambda!280193)))

(assert (=> d!1723891 (= (generalisedConcat!808 (exprs!5023 (h!68041 zl!343))) lt!2197060)))

(declare-fun b!5392784 () Bool)

(declare-fun e!3344328 () Regex!15139)

(assert (=> b!5392784 (= e!3344328 (Concat!23984 (h!68040 (exprs!5023 (h!68041 zl!343))) (generalisedConcat!808 (t!374939 (exprs!5023 (h!68041 zl!343))))))))

(declare-fun b!5392785 () Bool)

(assert (=> b!5392785 (= e!3344330 (h!68040 (exprs!5023 (h!68041 zl!343))))))

(declare-fun b!5392786 () Bool)

(assert (=> b!5392786 (= e!3344327 (= lt!2197060 (head!11567 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392787 () Bool)

(assert (=> b!5392787 (= e!3344328 EmptyExpr!15139)))

(declare-fun b!5392788 () Bool)

(declare-fun e!3344326 () Bool)

(assert (=> b!5392788 (= e!3344326 e!3344327)))

(declare-fun c!939856 () Bool)

(assert (=> b!5392788 (= c!939856 (isEmpty!33594 (tail!10664 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392789 () Bool)

(assert (=> b!5392789 (= e!3344330 e!3344328)))

(declare-fun c!939858 () Bool)

(assert (=> b!5392789 (= c!939858 ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343))))))

(declare-fun b!5392790 () Bool)

(declare-fun isEmptyExpr!958 (Regex!15139) Bool)

(assert (=> b!5392790 (= e!3344326 (isEmptyExpr!958 lt!2197060))))

(declare-fun b!5392791 () Bool)

(assert (=> b!5392791 (= e!3344325 (isEmpty!33594 (t!374939 (exprs!5023 (h!68041 zl!343)))))))

(declare-fun b!5392792 () Bool)

(assert (=> b!5392792 (= e!3344329 e!3344326)))

(declare-fun c!939857 () Bool)

(assert (=> b!5392792 (= c!939857 (isEmpty!33594 (exprs!5023 (h!68041 zl!343))))))

(assert (= (and d!1723891 res!2291517) b!5392791))

(assert (= (and d!1723891 c!939859) b!5392785))

(assert (= (and d!1723891 (not c!939859)) b!5392789))

(assert (= (and b!5392789 c!939858) b!5392784))

(assert (= (and b!5392789 (not c!939858)) b!5392787))

(assert (= (and d!1723891 res!2291516) b!5392792))

(assert (= (and b!5392792 c!939857) b!5392790))

(assert (= (and b!5392792 (not c!939857)) b!5392788))

(assert (= (and b!5392788 c!939856) b!5392786))

(assert (= (and b!5392788 (not c!939856)) b!5392783))

(declare-fun m!6418254 () Bool)

(assert (=> b!5392786 m!6418254))

(declare-fun m!6418256 () Bool)

(assert (=> b!5392792 m!6418256))

(declare-fun m!6418258 () Bool)

(assert (=> b!5392784 m!6418258))

(declare-fun m!6418260 () Bool)

(assert (=> d!1723891 m!6418260))

(declare-fun m!6418262 () Bool)

(assert (=> d!1723891 m!6418262))

(declare-fun m!6418264 () Bool)

(assert (=> b!5392788 m!6418264))

(assert (=> b!5392788 m!6418264))

(declare-fun m!6418266 () Bool)

(assert (=> b!5392788 m!6418266))

(declare-fun m!6418268 () Bool)

(assert (=> b!5392783 m!6418268))

(declare-fun m!6418270 () Bool)

(assert (=> b!5392790 m!6418270))

(assert (=> b!5392791 m!6417588))

(assert (=> b!5391975 d!1723891))

(declare-fun b!5392797 () Bool)

(declare-fun e!3344333 () Bool)

(declare-fun tp!1493012 () Bool)

(assert (=> b!5392797 (= e!3344333 (and tp_is_empty!39531 tp!1493012))))

(assert (=> b!5391990 (= tp!1492943 e!3344333)))

(assert (= (and b!5391990 ((_ is Cons!61594) (t!374941 s!2326))) b!5392797))

(declare-fun b!5392811 () Bool)

(declare-fun e!3344336 () Bool)

(declare-fun tp!1493026 () Bool)

(declare-fun tp!1493024 () Bool)

(assert (=> b!5392811 (= e!3344336 (and tp!1493026 tp!1493024))))

(declare-fun b!5392808 () Bool)

(assert (=> b!5392808 (= e!3344336 tp_is_empty!39531)))

(assert (=> b!5391989 (= tp!1492939 e!3344336)))

(declare-fun b!5392810 () Bool)

(declare-fun tp!1493027 () Bool)

(assert (=> b!5392810 (= e!3344336 tp!1493027)))

(declare-fun b!5392809 () Bool)

(declare-fun tp!1493025 () Bool)

(declare-fun tp!1493023 () Bool)

(assert (=> b!5392809 (= e!3344336 (and tp!1493025 tp!1493023))))

(assert (= (and b!5391989 ((_ is ElementMatch!15139) (reg!15468 r!7292))) b!5392808))

(assert (= (and b!5391989 ((_ is Concat!23984) (reg!15468 r!7292))) b!5392809))

(assert (= (and b!5391989 ((_ is Star!15139) (reg!15468 r!7292))) b!5392810))

(assert (= (and b!5391989 ((_ is Union!15139) (reg!15468 r!7292))) b!5392811))

(declare-fun b!5392815 () Bool)

(declare-fun e!3344337 () Bool)

(declare-fun tp!1493031 () Bool)

(declare-fun tp!1493029 () Bool)

(assert (=> b!5392815 (= e!3344337 (and tp!1493031 tp!1493029))))

(declare-fun b!5392812 () Bool)

(assert (=> b!5392812 (= e!3344337 tp_is_empty!39531)))

(assert (=> b!5391984 (= tp!1492941 e!3344337)))

(declare-fun b!5392814 () Bool)

(declare-fun tp!1493032 () Bool)

(assert (=> b!5392814 (= e!3344337 tp!1493032)))

(declare-fun b!5392813 () Bool)

(declare-fun tp!1493030 () Bool)

(declare-fun tp!1493028 () Bool)

(assert (=> b!5392813 (= e!3344337 (and tp!1493030 tp!1493028))))

(assert (= (and b!5391984 ((_ is ElementMatch!15139) (regOne!30790 r!7292))) b!5392812))

(assert (= (and b!5391984 ((_ is Concat!23984) (regOne!30790 r!7292))) b!5392813))

(assert (= (and b!5391984 ((_ is Star!15139) (regOne!30790 r!7292))) b!5392814))

(assert (= (and b!5391984 ((_ is Union!15139) (regOne!30790 r!7292))) b!5392815))

(declare-fun b!5392819 () Bool)

(declare-fun e!3344338 () Bool)

(declare-fun tp!1493036 () Bool)

(declare-fun tp!1493034 () Bool)

(assert (=> b!5392819 (= e!3344338 (and tp!1493036 tp!1493034))))

(declare-fun b!5392816 () Bool)

(assert (=> b!5392816 (= e!3344338 tp_is_empty!39531)))

(assert (=> b!5391984 (= tp!1492946 e!3344338)))

(declare-fun b!5392818 () Bool)

(declare-fun tp!1493037 () Bool)

(assert (=> b!5392818 (= e!3344338 tp!1493037)))

(declare-fun b!5392817 () Bool)

(declare-fun tp!1493035 () Bool)

(declare-fun tp!1493033 () Bool)

(assert (=> b!5392817 (= e!3344338 (and tp!1493035 tp!1493033))))

(assert (= (and b!5391984 ((_ is ElementMatch!15139) (regTwo!30790 r!7292))) b!5392816))

(assert (= (and b!5391984 ((_ is Concat!23984) (regTwo!30790 r!7292))) b!5392817))

(assert (= (and b!5391984 ((_ is Star!15139) (regTwo!30790 r!7292))) b!5392818))

(assert (= (and b!5391984 ((_ is Union!15139) (regTwo!30790 r!7292))) b!5392819))

(declare-fun b!5392824 () Bool)

(declare-fun e!3344341 () Bool)

(declare-fun tp!1493042 () Bool)

(declare-fun tp!1493043 () Bool)

(assert (=> b!5392824 (= e!3344341 (and tp!1493042 tp!1493043))))

(assert (=> b!5391988 (= tp!1492940 e!3344341)))

(assert (= (and b!5391988 ((_ is Cons!61592) (exprs!5023 setElem!35033))) b!5392824))

(declare-fun b!5392825 () Bool)

(declare-fun e!3344342 () Bool)

(declare-fun tp!1493044 () Bool)

(declare-fun tp!1493045 () Bool)

(assert (=> b!5392825 (= e!3344342 (and tp!1493044 tp!1493045))))

(assert (=> b!5392011 (= tp!1492945 e!3344342)))

(assert (= (and b!5392011 ((_ is Cons!61592) (exprs!5023 (h!68041 zl!343)))) b!5392825))

(declare-fun condSetEmpty!35039 () Bool)

(assert (=> setNonEmpty!35033 (= condSetEmpty!35039 (= setRest!35033 ((as const (Array Context!9046 Bool)) false)))))

(declare-fun setRes!35039 () Bool)

(assert (=> setNonEmpty!35033 (= tp!1492944 setRes!35039)))

(declare-fun setIsEmpty!35039 () Bool)

(assert (=> setIsEmpty!35039 setRes!35039))

(declare-fun tp!1493050 () Bool)

(declare-fun setNonEmpty!35039 () Bool)

(declare-fun setElem!35039 () Context!9046)

(declare-fun e!3344345 () Bool)

(assert (=> setNonEmpty!35039 (= setRes!35039 (and tp!1493050 (inv!81094 setElem!35039) e!3344345))))

(declare-fun setRest!35039 () (InoxSet Context!9046))

(assert (=> setNonEmpty!35039 (= setRest!35033 ((_ map or) (store ((as const (Array Context!9046 Bool)) false) setElem!35039 true) setRest!35039))))

(declare-fun b!5392830 () Bool)

(declare-fun tp!1493051 () Bool)

(assert (=> b!5392830 (= e!3344345 tp!1493051)))

(assert (= (and setNonEmpty!35033 condSetEmpty!35039) setIsEmpty!35039))

(assert (= (and setNonEmpty!35033 (not condSetEmpty!35039)) setNonEmpty!35039))

(assert (= setNonEmpty!35039 b!5392830))

(declare-fun m!6418272 () Bool)

(assert (=> setNonEmpty!35039 m!6418272))

(declare-fun b!5392831 () Bool)

(declare-fun e!3344346 () Bool)

(declare-fun tp!1493052 () Bool)

(declare-fun tp!1493053 () Bool)

(assert (=> b!5392831 (= e!3344346 (and tp!1493052 tp!1493053))))

(assert (=> b!5392005 (= tp!1492948 e!3344346)))

(assert (= (and b!5392005 ((_ is Cons!61592) (exprs!5023 c!324))) b!5392831))

(declare-fun b!5392839 () Bool)

(declare-fun e!3344352 () Bool)

(declare-fun tp!1493058 () Bool)

(assert (=> b!5392839 (= e!3344352 tp!1493058)))

(declare-fun tp!1493059 () Bool)

(declare-fun e!3344351 () Bool)

(declare-fun b!5392838 () Bool)

(assert (=> b!5392838 (= e!3344351 (and (inv!81094 (h!68041 (t!374940 zl!343))) e!3344352 tp!1493059))))

(assert (=> b!5391985 (= tp!1492942 e!3344351)))

(assert (= b!5392838 b!5392839))

(assert (= (and b!5391985 ((_ is Cons!61593) (t!374940 zl!343))) b!5392838))

(declare-fun m!6418274 () Bool)

(assert (=> b!5392838 m!6418274))

(declare-fun b!5392843 () Bool)

(declare-fun e!3344353 () Bool)

(declare-fun tp!1493063 () Bool)

(declare-fun tp!1493061 () Bool)

(assert (=> b!5392843 (= e!3344353 (and tp!1493063 tp!1493061))))

(declare-fun b!5392840 () Bool)

(assert (=> b!5392840 (= e!3344353 tp_is_empty!39531)))

(assert (=> b!5391995 (= tp!1492949 e!3344353)))

(declare-fun b!5392842 () Bool)

(declare-fun tp!1493064 () Bool)

(assert (=> b!5392842 (= e!3344353 tp!1493064)))

(declare-fun b!5392841 () Bool)

(declare-fun tp!1493062 () Bool)

(declare-fun tp!1493060 () Bool)

(assert (=> b!5392841 (= e!3344353 (and tp!1493062 tp!1493060))))

(assert (= (and b!5391995 ((_ is ElementMatch!15139) (regOne!30791 r!7292))) b!5392840))

(assert (= (and b!5391995 ((_ is Concat!23984) (regOne!30791 r!7292))) b!5392841))

(assert (= (and b!5391995 ((_ is Star!15139) (regOne!30791 r!7292))) b!5392842))

(assert (= (and b!5391995 ((_ is Union!15139) (regOne!30791 r!7292))) b!5392843))

(declare-fun b!5392847 () Bool)

(declare-fun e!3344354 () Bool)

(declare-fun tp!1493068 () Bool)

(declare-fun tp!1493066 () Bool)

(assert (=> b!5392847 (= e!3344354 (and tp!1493068 tp!1493066))))

(declare-fun b!5392844 () Bool)

(assert (=> b!5392844 (= e!3344354 tp_is_empty!39531)))

(assert (=> b!5391995 (= tp!1492947 e!3344354)))

(declare-fun b!5392846 () Bool)

(declare-fun tp!1493069 () Bool)

(assert (=> b!5392846 (= e!3344354 tp!1493069)))

(declare-fun b!5392845 () Bool)

(declare-fun tp!1493067 () Bool)

(declare-fun tp!1493065 () Bool)

(assert (=> b!5392845 (= e!3344354 (and tp!1493067 tp!1493065))))

(assert (= (and b!5391995 ((_ is ElementMatch!15139) (regTwo!30791 r!7292))) b!5392844))

(assert (= (and b!5391995 ((_ is Concat!23984) (regTwo!30791 r!7292))) b!5392845))

(assert (= (and b!5391995 ((_ is Star!15139) (regTwo!30791 r!7292))) b!5392846))

(assert (= (and b!5391995 ((_ is Union!15139) (regTwo!30791 r!7292))) b!5392847))

(declare-fun b_lambda!206297 () Bool)

(assert (= b_lambda!206293 (or b!5392009 b_lambda!206297)))

(declare-fun bs!1247611 () Bool)

(declare-fun d!1723893 () Bool)

(assert (= bs!1247611 (and d!1723893 b!5392009)))

(assert (=> bs!1247611 (= (dynLambda!24288 lambda!280125 (h!68040 lt!2196952)) (validRegex!6875 (h!68040 lt!2196952)))))

(declare-fun m!6418276 () Bool)

(assert (=> bs!1247611 m!6418276))

(assert (=> b!5392599 d!1723893))

(declare-fun b_lambda!206299 () Bool)

(assert (= b_lambda!206289 (or b!5391981 b_lambda!206299)))

(declare-fun bs!1247612 () Bool)

(declare-fun d!1723895 () Bool)

(assert (= bs!1247612 (and d!1723895 b!5391981)))

(assert (=> bs!1247612 (= (dynLambda!24287 lambda!280124 (h!68041 zl!343)) (derivationStepZipperUp!511 (h!68041 zl!343) (h!68042 s!2326)))))

(assert (=> bs!1247612 m!6417614))

(assert (=> d!1723821 d!1723895))

(declare-fun b_lambda!206301 () Bool)

(assert (= b_lambda!206287 (or b!5391981 b_lambda!206301)))

(declare-fun bs!1247613 () Bool)

(declare-fun d!1723897 () Bool)

(assert (= bs!1247613 (and d!1723897 b!5391981)))

(assert (=> bs!1247613 (= (dynLambda!24287 lambda!280124 lt!2196956) (derivationStepZipperUp!511 lt!2196956 (h!68042 s!2326)))))

(assert (=> bs!1247613 m!6417624))

(assert (=> d!1723813 d!1723897))

(declare-fun b_lambda!206303 () Bool)

(assert (= b_lambda!206285 (or b!5391981 b_lambda!206303)))

(declare-fun bs!1247614 () Bool)

(declare-fun d!1723899 () Bool)

(assert (= bs!1247614 (and d!1723899 b!5391981)))

(assert (=> bs!1247614 (= (dynLambda!24287 lambda!280124 lt!2196950) (derivationStepZipperUp!511 lt!2196950 (h!68042 s!2326)))))

(assert (=> bs!1247614 m!6417628))

(assert (=> d!1723803 d!1723899))

(declare-fun b_lambda!206305 () Bool)

(assert (= b_lambda!206291 (or b!5392009 b_lambda!206305)))

(declare-fun bs!1247615 () Bool)

(declare-fun d!1723901 () Bool)

(assert (= bs!1247615 (and d!1723901 b!5392009)))

(assert (=> bs!1247615 (= (dynLambda!24288 lambda!280125 (h!68040 (exprs!5023 c!324))) (validRegex!6875 (h!68040 (exprs!5023 c!324))))))

(declare-fun m!6418278 () Bool)

(assert (=> bs!1247615 m!6418278))

(assert (=> b!5392568 d!1723901))

(declare-fun b_lambda!206307 () Bool)

(assert (= b_lambda!206295 (or b!5391981 b_lambda!206307)))

(declare-fun bs!1247616 () Bool)

(declare-fun d!1723903 () Bool)

(assert (= bs!1247616 (and d!1723903 b!5391981)))

(assert (=> bs!1247616 (= (dynLambda!24287 lambda!280124 lt!2196945) (derivationStepZipperUp!511 lt!2196945 (h!68042 s!2326)))))

(assert (=> bs!1247616 m!6417648))

(assert (=> d!1723861 d!1723903))

(check-sat (not d!1723835) (not b!5392388) (not b!5392390) (not b!5392590) (not bm!386022) (not b!5392830) (not b!5392563) (not d!1723887) (not b!5392549) (not b!5392720) (not d!1723773) (not b!5392760) (not b!5392742) (not b!5392846) (not bm!386017) (not b!5392719) (not b!5392727) (not b!5392792) (not b!5392542) (not d!1723785) (not b!5392786) (not d!1723771) (not b!5392783) (not bs!1247612) (not bm!386028) (not b!5392547) (not b!5392722) (not d!1723827) (not b!5392551) (not bm!386021) (not bm!386045) tp_is_empty!39531 (not b!5392737) (not d!1723821) (not bm!386023) (not b!5392391) (not b!5392819) (not b!5392791) (not b!5392598) (not d!1723803) (not b!5392300) (not b!5392496) (not b!5392682) (not b!5392814) (not bm!386002) (not d!1723825) (not b!5392759) (not b!5392845) (not d!1723805) (not b!5392784) (not b!5392831) (not b!5392839) (not b!5392841) (not b_lambda!206305) (not d!1723891) (not b!5392838) (not d!1723847) (not b!5392494) (not b!5392733) (not b!5392393) (not b!5392809) (not d!1723741) (not b!5392790) (not b!5392394) (not d!1723857) (not bm!386051) (not b!5392688) (not b!5392650) (not b!5392811) (not b!5392762) (not b!5392721) (not b!5392758) (not b!5392714) (not b!5392740) (not b!5392718) (not b_lambda!206297) (not bm!386020) (not b!5392537) (not d!1723749) (not d!1723809) (not b!5392499) (not b!5392544) (not b!5392815) (not b!5392647) (not b!5392605) (not b!5392761) (not d!1723855) (not bs!1247615) (not d!1723867) (not d!1723877) (not b!5392736) (not b!5392843) (not d!1723861) (not b_lambda!206307) (not b!5392681) (not bm!386039) (not b!5392797) (not b!5392755) (not d!1723813) (not bm!386048) (not bs!1247611) (not setNonEmpty!35039) (not b!5392825) (not b!5392523) (not bm!386026) (not d!1723775) (not bs!1247613) (not b!5392597) (not bm!386019) (not b!5392685) (not b!5392491) (not bs!1247614) (not b!5392788) (not bm!386049) (not bs!1247616) (not bm!386029) (not d!1723849) (not d!1723841) (not b!5392392) (not bm!386037) (not d!1723831) (not d!1723807) (not b!5392602) (not d!1723885) (not b!5392818) (not b_lambda!206301) (not b!5392743) (not b!5392548) (not bm!386044) (not d!1723735) (not b!5392817) (not d!1723863) (not b!5392534) (not b!5392713) (not d!1723851) (not b!5392687) (not d!1723799) (not b!5392686) (not b_lambda!206303) (not b!5392813) (not d!1723875) (not d!1723869) (not b!5392842) (not b!5392539) (not b!5392741) (not d!1723889) (not bm!386036) (not b!5392299) (not b!5392732) (not b!5392847) (not b!5392824) (not d!1723879) (not b!5392731) (not d!1723839) (not bm!386050) (not d!1723881) (not bm!386001) (not b!5392600) (not b_lambda!206299) (not b!5392569) (not d!1723873) (not d!1723837) (not b!5392810))
(check-sat)
