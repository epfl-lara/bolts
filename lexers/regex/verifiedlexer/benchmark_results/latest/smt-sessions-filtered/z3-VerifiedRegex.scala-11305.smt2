; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596324 () Bool)

(assert start!596324)

(declare-fun b!5820027 () Bool)

(assert (=> b!5820027 true))

(declare-fun b!5820017 () Bool)

(declare-fun e!3571868 () Bool)

(declare-fun tp!1605976 () Bool)

(assert (=> b!5820017 (= e!3571868 tp!1605976)))

(declare-fun b!5820018 () Bool)

(declare-fun e!3571872 () Bool)

(declare-fun tp_is_empty!40967 () Bool)

(declare-fun tp!1605978 () Bool)

(assert (=> b!5820018 (= e!3571872 (and tp_is_empty!40967 tp!1605978))))

(declare-fun setIsEmpty!39282 () Bool)

(declare-fun setRes!39282 () Bool)

(assert (=> setIsEmpty!39282 setRes!39282))

(declare-fun b!5820019 () Bool)

(declare-fun res!2454228 () Bool)

(declare-fun e!3571865 () Bool)

(assert (=> b!5820019 (=> res!2454228 e!3571865)))

(declare-datatypes ((C!31984 0))(
  ( (C!31985 (val!25694 Int)) )
))
(declare-datatypes ((Regex!15857 0))(
  ( (ElementMatch!15857 (c!1031415 C!31984)) (Concat!24702 (regOne!32226 Regex!15857) (regTwo!32226 Regex!15857)) (EmptyExpr!15857) (Star!15857 (reg!16186 Regex!15857)) (EmptyLang!15857) (Union!15857 (regOne!32227 Regex!15857) (regTwo!32227 Regex!15857)) )
))
(declare-datatypes ((List!63870 0))(
  ( (Nil!63746) (Cons!63746 (h!70194 Regex!15857) (t!377225 List!63870)) )
))
(declare-datatypes ((Context!10482 0))(
  ( (Context!10483 (exprs!5741 List!63870)) )
))
(declare-datatypes ((List!63871 0))(
  ( (Nil!63747) (Cons!63747 (h!70195 Context!10482) (t!377226 List!63871)) )
))
(declare-fun zl!343 () List!63871)

(declare-datatypes ((List!63872 0))(
  ( (Nil!63748) (Cons!63748 (h!70196 C!31984) (t!377227 List!63872)) )
))
(declare-fun s!2326 () List!63872)

(get-info :version)

(assert (=> b!5820019 (= res!2454228 (or (not ((_ is Cons!63747) zl!343)) ((_ is Nil!63748) s!2326) (not (= zl!343 (Cons!63747 (h!70195 zl!343) (t!377226 zl!343))))))))

(declare-fun b!5820020 () Bool)

(declare-fun e!3571871 () Bool)

(declare-fun tp!1605971 () Bool)

(assert (=> b!5820020 (= e!3571871 tp!1605971)))

(declare-fun tp!1605975 () Bool)

(declare-fun b!5820021 () Bool)

(declare-fun e!3571867 () Bool)

(declare-fun inv!82889 (Context!10482) Bool)

(assert (=> b!5820021 (= e!3571867 (and (inv!82889 (h!70195 zl!343)) e!3571868 tp!1605975))))

(declare-fun b!5820022 () Bool)

(declare-fun e!3571869 () Bool)

(declare-fun tp!1605972 () Bool)

(assert (=> b!5820022 (= e!3571869 tp!1605972)))

(declare-fun b!5820023 () Bool)

(declare-fun e!3571866 () Bool)

(declare-fun isEmpty!35640 (List!63871) Bool)

(assert (=> b!5820023 (= e!3571866 (isEmpty!35640 (t!377226 zl!343)))))

(declare-fun b!5820024 () Bool)

(declare-fun tp!1605973 () Bool)

(declare-fun tp!1605979 () Bool)

(assert (=> b!5820024 (= e!3571869 (and tp!1605973 tp!1605979))))

(declare-fun b!5820025 () Bool)

(declare-fun e!3571873 () Bool)

(assert (=> b!5820025 (= e!3571873 (not e!3571865))))

(declare-fun res!2454224 () Bool)

(assert (=> b!5820025 (=> res!2454224 e!3571865)))

(assert (=> b!5820025 (= res!2454224 e!3571866)))

(declare-fun res!2454226 () Bool)

(assert (=> b!5820025 (=> (not res!2454226) (not e!3571866))))

(assert (=> b!5820025 (= res!2454226 ((_ is Cons!63747) zl!343))))

(declare-fun lt!2301981 () Bool)

(declare-fun r!7292 () Regex!15857)

(declare-fun matchRSpec!2960 (Regex!15857 List!63872) Bool)

(assert (=> b!5820025 (= lt!2301981 (matchRSpec!2960 r!7292 s!2326))))

(declare-fun matchR!8042 (Regex!15857 List!63872) Bool)

(assert (=> b!5820025 (= lt!2301981 (matchR!8042 r!7292 s!2326))))

(declare-datatypes ((Unit!156986 0))(
  ( (Unit!156987) )
))
(declare-fun lt!2301979 () Unit!156986)

(declare-fun mainMatchTheorem!2960 (Regex!15857 List!63872) Unit!156986)

(assert (=> b!5820025 (= lt!2301979 (mainMatchTheorem!2960 r!7292 s!2326))))

(declare-fun b!5820026 () Bool)

(declare-fun res!2454227 () Bool)

(assert (=> b!5820026 (=> (not res!2454227) (not e!3571873))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10482))

(declare-fun toList!9641 ((InoxSet Context!10482)) List!63871)

(assert (=> b!5820026 (= res!2454227 (= (toList!9641 z!1189) zl!343))))

(declare-fun e!3571870 () Bool)

(assert (=> b!5820027 (= e!3571865 e!3571870)))

(declare-fun res!2454223 () Bool)

(assert (=> b!5820027 (=> res!2454223 e!3571870)))

(assert (=> b!5820027 (= res!2454223 lt!2301981)))

(declare-fun lt!2301982 () List!63870)

(declare-fun lambda!318380 () Int)

(declare-fun exists!2277 (List!63870 Int) Bool)

(assert (=> b!5820027 (= lt!2301981 (exists!2277 lt!2301982 lambda!318380))))

(declare-fun lt!2301980 () Unit!156986)

(declare-fun matchRGenUnionSpec!298 (Regex!15857 List!63870 List!63872) Unit!156986)

(assert (=> b!5820027 (= lt!2301980 (matchRGenUnionSpec!298 r!7292 lt!2301982 s!2326))))

(declare-fun unfocusZipperList!1279 (List!63871) List!63870)

(assert (=> b!5820027 (= lt!2301982 (unfocusZipperList!1279 zl!343))))

(declare-fun b!5820028 () Bool)

(declare-fun tp!1605974 () Bool)

(declare-fun tp!1605977 () Bool)

(assert (=> b!5820028 (= e!3571869 (and tp!1605974 tp!1605977))))

(declare-fun setNonEmpty!39282 () Bool)

(declare-fun setElem!39282 () Context!10482)

(declare-fun tp!1605980 () Bool)

(assert (=> setNonEmpty!39282 (= setRes!39282 (and tp!1605980 (inv!82889 setElem!39282) e!3571871))))

(declare-fun setRest!39282 () (InoxSet Context!10482))

(assert (=> setNonEmpty!39282 (= z!1189 ((_ map or) (store ((as const (Array Context!10482 Bool)) false) setElem!39282 true) setRest!39282))))

(declare-fun b!5820029 () Bool)

(assert (=> b!5820029 (= e!3571870 (not (exists!2277 lt!2301982 lambda!318380)))))

(declare-fun b!5820030 () Bool)

(declare-fun res!2454225 () Bool)

(assert (=> b!5820030 (=> res!2454225 e!3571865)))

(assert (=> b!5820030 (= res!2454225 (isEmpty!35640 (t!377226 zl!343)))))

(declare-fun res!2454221 () Bool)

(assert (=> start!596324 (=> (not res!2454221) (not e!3571873))))

(declare-fun validRegex!7593 (Regex!15857) Bool)

(assert (=> start!596324 (= res!2454221 (validRegex!7593 r!7292))))

(assert (=> start!596324 e!3571873))

(assert (=> start!596324 e!3571869))

(declare-fun condSetEmpty!39282 () Bool)

(assert (=> start!596324 (= condSetEmpty!39282 (= z!1189 ((as const (Array Context!10482 Bool)) false)))))

(assert (=> start!596324 setRes!39282))

(assert (=> start!596324 e!3571867))

(assert (=> start!596324 e!3571872))

(declare-fun b!5820031 () Bool)

(assert (=> b!5820031 (= e!3571869 tp_is_empty!40967)))

(declare-fun b!5820032 () Bool)

(declare-fun res!2454222 () Bool)

(assert (=> b!5820032 (=> (not res!2454222) (not e!3571873))))

(declare-fun unfocusZipper!1599 (List!63871) Regex!15857)

(assert (=> b!5820032 (= res!2454222 (= r!7292 (unfocusZipper!1599 zl!343)))))

(assert (= (and start!596324 res!2454221) b!5820026))

(assert (= (and b!5820026 res!2454227) b!5820032))

(assert (= (and b!5820032 res!2454222) b!5820025))

(assert (= (and b!5820025 res!2454226) b!5820023))

(assert (= (and b!5820025 (not res!2454224)) b!5820019))

(assert (= (and b!5820019 (not res!2454228)) b!5820030))

(assert (= (and b!5820030 (not res!2454225)) b!5820027))

(assert (= (and b!5820027 (not res!2454223)) b!5820029))

(assert (= (and start!596324 ((_ is ElementMatch!15857) r!7292)) b!5820031))

(assert (= (and start!596324 ((_ is Concat!24702) r!7292)) b!5820024))

(assert (= (and start!596324 ((_ is Star!15857) r!7292)) b!5820022))

(assert (= (and start!596324 ((_ is Union!15857) r!7292)) b!5820028))

(assert (= (and start!596324 condSetEmpty!39282) setIsEmpty!39282))

(assert (= (and start!596324 (not condSetEmpty!39282)) setNonEmpty!39282))

(assert (= setNonEmpty!39282 b!5820020))

(assert (= b!5820021 b!5820017))

(assert (= (and start!596324 ((_ is Cons!63747) zl!343)) b!5820021))

(assert (= (and start!596324 ((_ is Cons!63748) s!2326)) b!5820018))

(declare-fun m!6755512 () Bool)

(assert (=> b!5820026 m!6755512))

(declare-fun m!6755514 () Bool)

(assert (=> b!5820021 m!6755514))

(declare-fun m!6755516 () Bool)

(assert (=> b!5820029 m!6755516))

(declare-fun m!6755518 () Bool)

(assert (=> start!596324 m!6755518))

(declare-fun m!6755520 () Bool)

(assert (=> b!5820032 m!6755520))

(declare-fun m!6755522 () Bool)

(assert (=> setNonEmpty!39282 m!6755522))

(declare-fun m!6755524 () Bool)

(assert (=> b!5820025 m!6755524))

(declare-fun m!6755526 () Bool)

(assert (=> b!5820025 m!6755526))

(declare-fun m!6755528 () Bool)

(assert (=> b!5820025 m!6755528))

(assert (=> b!5820027 m!6755516))

(declare-fun m!6755530 () Bool)

(assert (=> b!5820027 m!6755530))

(declare-fun m!6755532 () Bool)

(assert (=> b!5820027 m!6755532))

(declare-fun m!6755534 () Bool)

(assert (=> b!5820023 m!6755534))

(assert (=> b!5820030 m!6755534))

(check-sat (not b!5820027) (not b!5820024) tp_is_empty!40967 (not setNonEmpty!39282) (not b!5820022) (not b!5820023) (not b!5820028) (not b!5820029) (not b!5820025) (not b!5820026) (not b!5820032) (not b!5820021) (not start!596324) (not b!5820017) (not b!5820018) (not b!5820020) (not b!5820030))
(check-sat)
