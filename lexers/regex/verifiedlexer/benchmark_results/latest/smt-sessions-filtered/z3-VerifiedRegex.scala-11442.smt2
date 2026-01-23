; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617590 () Bool)

(assert start!617590)

(declare-fun b!6192412 () Bool)

(assert (=> b!6192412 true))

(assert (=> b!6192412 true))

(declare-fun lambda!338192 () Int)

(declare-fun lambda!338191 () Int)

(assert (=> b!6192412 (not (= lambda!338192 lambda!338191))))

(assert (=> b!6192412 true))

(assert (=> b!6192412 true))

(declare-fun b!6192421 () Bool)

(assert (=> b!6192421 true))

(declare-fun b!6192410 () Bool)

(declare-fun res!2561714 () Bool)

(declare-fun e!3771216 () Bool)

(assert (=> b!6192410 (=> res!2561714 e!3771216)))

(declare-datatypes ((C!32532 0))(
  ( (C!32533 (val!25968 Int)) )
))
(declare-datatypes ((Regex!16131 0))(
  ( (ElementMatch!16131 (c!1117312 C!32532)) (Concat!24976 (regOne!32774 Regex!16131) (regTwo!32774 Regex!16131)) (EmptyExpr!16131) (Star!16131 (reg!16460 Regex!16131)) (EmptyLang!16131) (Union!16131 (regOne!32775 Regex!16131) (regTwo!32775 Regex!16131)) )
))
(declare-datatypes ((List!64692 0))(
  ( (Nil!64568) (Cons!64568 (h!71016 Regex!16131) (t!378204 List!64692)) )
))
(declare-datatypes ((Context!11030 0))(
  ( (Context!11031 (exprs!6015 List!64692)) )
))
(declare-datatypes ((List!64693 0))(
  ( (Nil!64569) (Cons!64569 (h!71017 Context!11030) (t!378205 List!64693)) )
))
(declare-fun zl!343 () List!64693)

(get-info :version)

(assert (=> b!6192410 (= res!2561714 (not ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6192411 () Bool)

(declare-fun res!2561717 () Bool)

(assert (=> b!6192411 (=> res!2561717 e!3771216)))

(declare-fun isEmpty!36554 (List!64693) Bool)

(assert (=> b!6192411 (= res!2561717 (not (isEmpty!36554 (t!378205 zl!343))))))

(declare-fun e!3771229 () Bool)

(assert (=> b!6192412 (= e!3771216 e!3771229)))

(declare-fun res!2561704 () Bool)

(assert (=> b!6192412 (=> res!2561704 e!3771229)))

(declare-datatypes ((List!64694 0))(
  ( (Nil!64570) (Cons!64570 (h!71018 C!32532) (t!378206 List!64694)) )
))
(declare-fun s!2326 () List!64694)

(declare-fun lt!2341194 () Bool)

(declare-fun lt!2341208 () Bool)

(assert (=> b!6192412 (= res!2561704 (or (not (= lt!2341194 lt!2341208)) ((_ is Nil!64570) s!2326)))))

(declare-fun Exists!3201 (Int) Bool)

(assert (=> b!6192412 (= (Exists!3201 lambda!338191) (Exists!3201 lambda!338192))))

(declare-datatypes ((Unit!157827 0))(
  ( (Unit!157828) )
))
(declare-fun lt!2341191 () Unit!157827)

(declare-fun r!7292 () Regex!16131)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1738 (Regex!16131 Regex!16131 List!64694) Unit!157827)

(assert (=> b!6192412 (= lt!2341191 (lemmaExistCutMatchRandMatchRSpecEquivalent!1738 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326))))

(assert (=> b!6192412 (= lt!2341208 (Exists!3201 lambda!338191))))

(declare-datatypes ((tuple2!66220 0))(
  ( (tuple2!66221 (_1!36413 List!64694) (_2!36413 List!64694)) )
))
(declare-datatypes ((Option!16022 0))(
  ( (None!16021) (Some!16021 (v!52164 tuple2!66220)) )
))
(declare-fun isDefined!12725 (Option!16022) Bool)

(declare-fun findConcatSeparation!2436 (Regex!16131 Regex!16131 List!64694 List!64694 List!64694) Option!16022)

(assert (=> b!6192412 (= lt!2341208 (isDefined!12725 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326)))))

(declare-fun lt!2341169 () Unit!157827)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2200 (Regex!16131 Regex!16131 List!64694) Unit!157827)

(assert (=> b!6192412 (= lt!2341169 (lemmaFindConcatSeparationEquivalentToExists!2200 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326))))

(declare-fun b!6192413 () Bool)

(declare-fun e!3771217 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2341164 () (InoxSet Context!11030))

(declare-fun matchZipper!2143 ((InoxSet Context!11030) List!64694) Bool)

(assert (=> b!6192413 (= e!3771217 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(declare-fun b!6192414 () Bool)

(declare-fun e!3771213 () Bool)

(declare-fun e!3771212 () Bool)

(assert (=> b!6192414 (= e!3771213 e!3771212)))

(declare-fun res!2561707 () Bool)

(assert (=> b!6192414 (=> res!2561707 e!3771212)))

(declare-fun lt!2341197 () Int)

(declare-fun lt!2341207 () Int)

(assert (=> b!6192414 (= res!2561707 (>= lt!2341197 lt!2341207))))

(declare-fun zipperDepthTotal!314 (List!64693) Int)

(assert (=> b!6192414 (= lt!2341207 (zipperDepthTotal!314 zl!343))))

(declare-fun lt!2341171 () List!64693)

(assert (=> b!6192414 (= lt!2341197 (zipperDepthTotal!314 lt!2341171))))

(declare-fun lt!2341179 () Context!11030)

(assert (=> b!6192414 (= lt!2341171 (Cons!64569 lt!2341179 Nil!64569))))

(declare-fun b!6192415 () Bool)

(declare-fun e!3771211 () Bool)

(assert (=> b!6192415 (= e!3771211 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(declare-fun b!6192416 () Bool)

(declare-fun res!2561725 () Bool)

(assert (=> b!6192416 (=> res!2561725 e!3771216)))

(assert (=> b!6192416 (= res!2561725 (or ((_ is EmptyExpr!16131) r!7292) ((_ is EmptyLang!16131) r!7292) ((_ is ElementMatch!16131) r!7292) ((_ is Union!16131) r!7292) (not ((_ is Concat!24976) r!7292))))))

(declare-fun b!6192417 () Bool)

(declare-fun e!3771226 () Bool)

(declare-fun tp!1727890 () Bool)

(declare-fun tp!1727893 () Bool)

(assert (=> b!6192417 (= e!3771226 (and tp!1727890 tp!1727893))))

(declare-fun b!6192418 () Bool)

(declare-fun e!3771218 () Bool)

(declare-fun e!3771222 () Bool)

(assert (=> b!6192418 (= e!3771218 e!3771222)))

(declare-fun res!2561719 () Bool)

(assert (=> b!6192418 (=> res!2561719 e!3771222)))

(declare-fun lt!2341188 () (InoxSet Context!11030))

(declare-fun lt!2341165 () (InoxSet Context!11030))

(assert (=> b!6192418 (= res!2561719 (not (= lt!2341188 lt!2341165)))))

(declare-fun lt!2341182 () (InoxSet Context!11030))

(declare-fun lt!2341166 () (InoxSet Context!11030))

(assert (=> b!6192418 (= lt!2341165 ((_ map or) lt!2341182 lt!2341166))))

(declare-fun lt!2341183 () Context!11030)

(declare-fun derivationStepZipperDown!1379 (Regex!16131 Context!11030 C!32532) (InoxSet Context!11030))

(assert (=> b!6192418 (= lt!2341166 (derivationStepZipperDown!1379 (regTwo!32775 (regOne!32774 r!7292)) lt!2341183 (h!71018 s!2326)))))

(assert (=> b!6192418 (= lt!2341182 (derivationStepZipperDown!1379 (regOne!32775 (regOne!32774 r!7292)) lt!2341183 (h!71018 s!2326)))))

(declare-fun b!6192419 () Bool)

(declare-fun tp_is_empty!41515 () Bool)

(assert (=> b!6192419 (= e!3771226 tp_is_empty!41515)))

(declare-fun b!6192420 () Bool)

(declare-fun e!3771220 () Bool)

(declare-fun tp!1727891 () Bool)

(assert (=> b!6192420 (= e!3771220 tp!1727891)))

(assert (=> b!6192421 (= e!3771229 e!3771218)))

(declare-fun res!2561706 () Bool)

(assert (=> b!6192421 (=> res!2561706 e!3771218)))

(assert (=> b!6192421 (= res!2561706 (or (and ((_ is ElementMatch!16131) (regOne!32774 r!7292)) (= (c!1117312 (regOne!32774 r!7292)) (h!71018 s!2326))) (not ((_ is Union!16131) (regOne!32774 r!7292)))))))

(declare-fun lt!2341168 () Unit!157827)

(declare-fun e!3771231 () Unit!157827)

(assert (=> b!6192421 (= lt!2341168 e!3771231)))

(declare-fun c!1117309 () Bool)

(declare-fun nullable!6124 (Regex!16131) Bool)

(assert (=> b!6192421 (= c!1117309 (nullable!6124 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11030))

(declare-fun lambda!338193 () Int)

(declare-fun flatMap!1636 ((InoxSet Context!11030) Int) (InoxSet Context!11030))

(declare-fun derivationStepZipperUp!1305 (Context!11030 C!32532) (InoxSet Context!11030))

(assert (=> b!6192421 (= (flatMap!1636 z!1189 lambda!338193) (derivationStepZipperUp!1305 (h!71017 zl!343) (h!71018 s!2326)))))

(declare-fun lt!2341210 () Unit!157827)

(declare-fun lemmaFlatMapOnSingletonSet!1162 ((InoxSet Context!11030) Context!11030 Int) Unit!157827)

(assert (=> b!6192421 (= lt!2341210 (lemmaFlatMapOnSingletonSet!1162 z!1189 (h!71017 zl!343) lambda!338193))))

(assert (=> b!6192421 (= lt!2341164 (derivationStepZipperUp!1305 lt!2341183 (h!71018 s!2326)))))

(assert (=> b!6192421 (= lt!2341188 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (h!71017 zl!343))) lt!2341183 (h!71018 s!2326)))))

(assert (=> b!6192421 (= lt!2341183 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun lt!2341199 () (InoxSet Context!11030))

(assert (=> b!6192421 (= lt!2341199 (derivationStepZipperUp!1305 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))) (h!71018 s!2326)))))

(declare-fun b!6192422 () Bool)

(declare-fun tp!1727889 () Bool)

(assert (=> b!6192422 (= e!3771226 tp!1727889)))

(declare-fun b!6192423 () Bool)

(declare-fun res!2561711 () Bool)

(assert (=> b!6192423 (=> res!2561711 e!3771213)))

(declare-fun lt!2341172 () Regex!16131)

(assert (=> b!6192423 (= res!2561711 (or (not (= lt!2341172 r!7292)) (not (= (exprs!6015 (h!71017 zl!343)) (Cons!64568 (regOne!32774 r!7292) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun b!6192424 () Bool)

(declare-fun e!3771234 () Bool)

(declare-fun tp!1727886 () Bool)

(assert (=> b!6192424 (= e!3771234 (and tp_is_empty!41515 tp!1727886))))

(declare-fun res!2561718 () Bool)

(declare-fun e!3771233 () Bool)

(assert (=> start!617590 (=> (not res!2561718) (not e!3771233))))

(declare-fun validRegex!7867 (Regex!16131) Bool)

(assert (=> start!617590 (= res!2561718 (validRegex!7867 r!7292))))

(assert (=> start!617590 e!3771233))

(assert (=> start!617590 e!3771226))

(declare-fun condSetEmpty!42010 () Bool)

(assert (=> start!617590 (= condSetEmpty!42010 (= z!1189 ((as const (Array Context!11030 Bool)) false)))))

(declare-fun setRes!42010 () Bool)

(assert (=> start!617590 setRes!42010))

(declare-fun e!3771219 () Bool)

(assert (=> start!617590 e!3771219))

(assert (=> start!617590 e!3771234))

(declare-fun b!6192425 () Bool)

(declare-fun e!3771215 () Unit!157827)

(declare-fun Unit!157829 () Unit!157827)

(assert (=> b!6192425 (= e!3771215 Unit!157829)))

(declare-fun lt!2341167 () Unit!157827)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!962 ((InoxSet Context!11030) (InoxSet Context!11030) List!64694) Unit!157827)

(assert (=> b!6192425 (= lt!2341167 (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341166 lt!2341164 (t!378206 s!2326)))))

(declare-fun res!2561712 () Bool)

(assert (=> b!6192425 (= res!2561712 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(assert (=> b!6192425 (=> res!2561712 e!3771217)))

(assert (=> b!6192425 (= (matchZipper!2143 ((_ map or) lt!2341166 lt!2341164) (t!378206 s!2326)) e!3771217)))

(declare-fun b!6192426 () Bool)

(declare-fun res!2561724 () Bool)

(assert (=> b!6192426 (=> (not res!2561724) (not e!3771233))))

(declare-fun toList!9915 ((InoxSet Context!11030)) List!64693)

(assert (=> b!6192426 (= res!2561724 (= (toList!9915 z!1189) zl!343))))

(declare-fun b!6192427 () Bool)

(declare-fun e!3771224 () Bool)

(assert (=> b!6192427 (= e!3771224 (not (matchZipper!2143 lt!2341166 (t!378206 s!2326))))))

(declare-fun b!6192428 () Bool)

(declare-fun res!2561721 () Bool)

(assert (=> b!6192428 (=> res!2561721 e!3771216)))

(declare-fun generalisedConcat!1728 (List!64692) Regex!16131)

(assert (=> b!6192428 (= res!2561721 (not (= r!7292 (generalisedConcat!1728 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6192429 () Bool)

(declare-fun e!3771223 () Unit!157827)

(declare-fun Unit!157830 () Unit!157827)

(assert (=> b!6192429 (= e!3771223 Unit!157830)))

(declare-fun lt!2341178 () Unit!157827)

(assert (=> b!6192429 (= lt!2341178 (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341182 lt!2341164 (t!378206 s!2326)))))

(declare-fun res!2561709 () Bool)

(declare-fun lt!2341198 () Bool)

(assert (=> b!6192429 (= res!2561709 lt!2341198)))

(assert (=> b!6192429 (=> res!2561709 e!3771211)))

(assert (=> b!6192429 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341164) (t!378206 s!2326)) e!3771211)))

(declare-fun b!6192430 () Bool)

(declare-fun Unit!157831 () Unit!157827)

(assert (=> b!6192430 (= e!3771231 Unit!157831)))

(declare-fun b!6192431 () Bool)

(declare-fun e!3771228 () Bool)

(assert (=> b!6192431 (= e!3771212 e!3771228)))

(declare-fun res!2561716 () Bool)

(assert (=> b!6192431 (=> res!2561716 e!3771228)))

(declare-fun lt!2341181 () List!64693)

(assert (=> b!6192431 (= res!2561716 (>= (zipperDepthTotal!314 lt!2341181) lt!2341207))))

(declare-fun lt!2341203 () Context!11030)

(assert (=> b!6192431 (= lt!2341181 (Cons!64569 lt!2341203 Nil!64569))))

(declare-fun b!6192432 () Bool)

(declare-fun e!3771235 () Bool)

(assert (=> b!6192432 (= e!3771235 (validRegex!7867 (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6192433 () Bool)

(declare-fun Unit!157832 () Unit!157827)

(assert (=> b!6192433 (= e!3771223 Unit!157832)))

(declare-fun b!6192434 () Bool)

(declare-fun res!2561713 () Bool)

(assert (=> b!6192434 (=> res!2561713 e!3771229)))

(declare-fun isEmpty!36555 (List!64692) Bool)

(assert (=> b!6192434 (= res!2561713 (isEmpty!36555 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6192435 () Bool)

(declare-fun e!3771210 () Bool)

(assert (=> b!6192435 (= e!3771210 (not e!3771216))))

(declare-fun res!2561710 () Bool)

(assert (=> b!6192435 (=> res!2561710 e!3771216)))

(assert (=> b!6192435 (= res!2561710 (not ((_ is Cons!64569) zl!343)))))

(declare-fun matchRSpec!3232 (Regex!16131 List!64694) Bool)

(assert (=> b!6192435 (= lt!2341194 (matchRSpec!3232 r!7292 s!2326))))

(declare-fun matchR!8314 (Regex!16131 List!64694) Bool)

(assert (=> b!6192435 (= lt!2341194 (matchR!8314 r!7292 s!2326))))

(declare-fun lt!2341175 () Unit!157827)

(declare-fun mainMatchTheorem!3232 (Regex!16131 List!64694) Unit!157827)

(assert (=> b!6192435 (= lt!2341175 (mainMatchTheorem!3232 r!7292 s!2326))))

(declare-fun b!6192436 () Bool)

(declare-fun e!3771227 () Bool)

(assert (=> b!6192436 (= e!3771227 e!3771213)))

(declare-fun res!2561720 () Bool)

(assert (=> b!6192436 (=> res!2561720 e!3771213)))

(declare-fun lt!2341190 () Bool)

(declare-fun e!3771225 () Bool)

(assert (=> b!6192436 (= res!2561720 (not (= lt!2341190 e!3771225)))))

(declare-fun res!2561699 () Bool)

(assert (=> b!6192436 (=> res!2561699 e!3771225)))

(declare-fun lt!2341174 () Bool)

(assert (=> b!6192436 (= res!2561699 lt!2341174)))

(assert (=> b!6192436 (= lt!2341190 (matchZipper!2143 z!1189 s!2326))))

(declare-fun lt!2341195 () (InoxSet Context!11030))

(assert (=> b!6192436 (= lt!2341174 (matchZipper!2143 lt!2341195 s!2326))))

(declare-fun lt!2341184 () Unit!157827)

(assert (=> b!6192436 (= lt!2341184 e!3771215)))

(declare-fun c!1117311 () Bool)

(assert (=> b!6192436 (= c!1117311 (nullable!6124 (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun lt!2341186 () (InoxSet Context!11030))

(assert (=> b!6192436 (= (flatMap!1636 lt!2341186 lambda!338193) (derivationStepZipperUp!1305 lt!2341203 (h!71018 s!2326)))))

(declare-fun lt!2341200 () Unit!157827)

(assert (=> b!6192436 (= lt!2341200 (lemmaFlatMapOnSingletonSet!1162 lt!2341186 lt!2341203 lambda!338193))))

(declare-fun lt!2341201 () (InoxSet Context!11030))

(assert (=> b!6192436 (= lt!2341201 (derivationStepZipperUp!1305 lt!2341203 (h!71018 s!2326)))))

(declare-fun lt!2341189 () Unit!157827)

(assert (=> b!6192436 (= lt!2341189 e!3771223)))

(declare-fun c!1117310 () Bool)

(assert (=> b!6192436 (= c!1117310 (nullable!6124 (regOne!32775 (regOne!32774 r!7292))))))

(assert (=> b!6192436 (= (flatMap!1636 lt!2341195 lambda!338193) (derivationStepZipperUp!1305 lt!2341179 (h!71018 s!2326)))))

(declare-fun lt!2341173 () Unit!157827)

(assert (=> b!6192436 (= lt!2341173 (lemmaFlatMapOnSingletonSet!1162 lt!2341195 lt!2341179 lambda!338193))))

(declare-fun lt!2341193 () (InoxSet Context!11030))

(assert (=> b!6192436 (= lt!2341193 (derivationStepZipperUp!1305 lt!2341179 (h!71018 s!2326)))))

(assert (=> b!6192436 (= lt!2341186 (store ((as const (Array Context!11030 Bool)) false) lt!2341203 true))))

(declare-fun lt!2341187 () List!64692)

(assert (=> b!6192436 (= lt!2341203 (Context!11031 lt!2341187))))

(assert (=> b!6192436 (= lt!2341187 (Cons!64568 (regTwo!32775 (regOne!32774 r!7292)) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6192436 (= lt!2341195 (store ((as const (Array Context!11030 Bool)) false) lt!2341179 true))))

(declare-fun lt!2341202 () List!64692)

(assert (=> b!6192436 (= lt!2341179 (Context!11031 lt!2341202))))

(assert (=> b!6192436 (= lt!2341202 (Cons!64568 (regOne!32775 (regOne!32774 r!7292)) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6192437 () Bool)

(declare-fun Unit!157833 () Unit!157827)

(assert (=> b!6192437 (= e!3771215 Unit!157833)))

(declare-fun b!6192438 () Bool)

(declare-fun tp!1727892 () Bool)

(declare-fun tp!1727888 () Bool)

(assert (=> b!6192438 (= e!3771226 (and tp!1727892 tp!1727888))))

(declare-fun b!6192439 () Bool)

(declare-fun res!2561715 () Bool)

(assert (=> b!6192439 (=> res!2561715 e!3771216)))

(declare-fun generalisedUnion!1975 (List!64692) Regex!16131)

(declare-fun unfocusZipperList!1552 (List!64693) List!64692)

(assert (=> b!6192439 (= res!2561715 (not (= r!7292 (generalisedUnion!1975 (unfocusZipperList!1552 zl!343)))))))

(declare-fun e!3771221 () Bool)

(declare-fun b!6192440 () Bool)

(declare-fun tp!1727894 () Bool)

(declare-fun inv!83574 (Context!11030) Bool)

(assert (=> b!6192440 (= e!3771219 (and (inv!83574 (h!71017 zl!343)) e!3771221 tp!1727894))))

(declare-fun b!6192441 () Bool)

(assert (=> b!6192441 (= e!3771225 (matchZipper!2143 lt!2341186 s!2326))))

(declare-fun b!6192442 () Bool)

(declare-fun tp!1727885 () Bool)

(assert (=> b!6192442 (= e!3771221 tp!1727885)))

(declare-fun setElem!42010 () Context!11030)

(declare-fun tp!1727887 () Bool)

(declare-fun setNonEmpty!42010 () Bool)

(assert (=> setNonEmpty!42010 (= setRes!42010 (and tp!1727887 (inv!83574 setElem!42010) e!3771220))))

(declare-fun setRest!42010 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42010 (= z!1189 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42010 true) setRest!42010))))

(declare-fun b!6192443 () Bool)

(declare-fun e!3771214 () Bool)

(assert (=> b!6192443 (= e!3771228 e!3771214)))

(declare-fun res!2561703 () Bool)

(assert (=> b!6192443 (=> res!2561703 e!3771214)))

(declare-fun lt!2341205 () Bool)

(declare-fun lt!2341196 () Bool)

(assert (=> b!6192443 (= res!2561703 (or (and (not (= lt!2341190 lt!2341196)) (not lt!2341205)) (not (= r!7292 (Concat!24976 (Union!16131 (regOne!32775 (regOne!32774 r!7292)) (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 r!7292))))))))

(declare-fun lt!2341177 () Regex!16131)

(assert (=> b!6192443 (= lt!2341205 (matchRSpec!3232 lt!2341177 s!2326))))

(declare-fun lt!2341206 () Unit!157827)

(assert (=> b!6192443 (= lt!2341206 (mainMatchTheorem!3232 lt!2341177 s!2326))))

(declare-fun lt!2341185 () Regex!16131)

(assert (=> b!6192443 (= lt!2341196 (matchRSpec!3232 lt!2341185 s!2326))))

(declare-fun lt!2341204 () Unit!157827)

(assert (=> b!6192443 (= lt!2341204 (mainMatchTheorem!3232 lt!2341185 s!2326))))

(assert (=> b!6192443 (= lt!2341205 (matchZipper!2143 lt!2341186 s!2326))))

(assert (=> b!6192443 (= lt!2341205 (matchR!8314 lt!2341177 s!2326))))

(declare-fun lt!2341192 () Unit!157827)

(declare-fun theoremZipperRegexEquiv!743 ((InoxSet Context!11030) List!64693 Regex!16131 List!64694) Unit!157827)

(assert (=> b!6192443 (= lt!2341192 (theoremZipperRegexEquiv!743 lt!2341186 lt!2341181 lt!2341177 s!2326))))

(assert (=> b!6192443 (= lt!2341177 (generalisedConcat!1728 lt!2341187))))

(assert (=> b!6192443 (= lt!2341196 lt!2341174)))

(assert (=> b!6192443 (= lt!2341196 (matchR!8314 lt!2341185 s!2326))))

(declare-fun lt!2341176 () Unit!157827)

(assert (=> b!6192443 (= lt!2341176 (theoremZipperRegexEquiv!743 lt!2341195 lt!2341171 lt!2341185 s!2326))))

(assert (=> b!6192443 (= lt!2341185 (generalisedConcat!1728 lt!2341202))))

(declare-fun b!6192444 () Bool)

(assert (=> b!6192444 (= e!3771222 e!3771227)))

(declare-fun res!2561701 () Bool)

(assert (=> b!6192444 (=> res!2561701 e!3771227)))

(assert (=> b!6192444 (= res!2561701 e!3771224)))

(declare-fun res!2561723 () Bool)

(assert (=> b!6192444 (=> (not res!2561723) (not e!3771224))))

(assert (=> b!6192444 (= res!2561723 (not (= (matchZipper!2143 lt!2341188 (t!378206 s!2326)) lt!2341198)))))

(declare-fun e!3771230 () Bool)

(assert (=> b!6192444 (= (matchZipper!2143 lt!2341165 (t!378206 s!2326)) e!3771230)))

(declare-fun res!2561708 () Bool)

(assert (=> b!6192444 (=> res!2561708 e!3771230)))

(assert (=> b!6192444 (= res!2561708 lt!2341198)))

(assert (=> b!6192444 (= lt!2341198 (matchZipper!2143 lt!2341182 (t!378206 s!2326)))))

(declare-fun lt!2341209 () Unit!157827)

(assert (=> b!6192444 (= lt!2341209 (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341182 lt!2341166 (t!378206 s!2326)))))

(declare-fun b!6192445 () Bool)

(declare-fun Unit!157834 () Unit!157827)

(assert (=> b!6192445 (= e!3771231 Unit!157834)))

(declare-fun lt!2341170 () Unit!157827)

(assert (=> b!6192445 (= lt!2341170 (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341188 lt!2341164 (t!378206 s!2326)))))

(declare-fun res!2561722 () Bool)

(assert (=> b!6192445 (= res!2561722 (matchZipper!2143 lt!2341188 (t!378206 s!2326)))))

(declare-fun e!3771232 () Bool)

(assert (=> b!6192445 (=> res!2561722 e!3771232)))

(assert (=> b!6192445 (= (matchZipper!2143 ((_ map or) lt!2341188 lt!2341164) (t!378206 s!2326)) e!3771232)))

(declare-fun setIsEmpty!42010 () Bool)

(assert (=> setIsEmpty!42010 setRes!42010))

(declare-fun b!6192446 () Bool)

(assert (=> b!6192446 (= e!3771230 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(declare-fun b!6192447 () Bool)

(assert (=> b!6192447 (= e!3771214 e!3771235)))

(declare-fun res!2561705 () Bool)

(assert (=> b!6192447 (=> res!2561705 e!3771235)))

(declare-fun lt!2341180 () Regex!16131)

(assert (=> b!6192447 (= res!2561705 (or (not (= lt!2341185 (Concat!24976 (regOne!32775 (regOne!32774 r!7292)) lt!2341180))) (not (= lt!2341177 (Concat!24976 (regTwo!32775 (regOne!32774 r!7292)) lt!2341180))) (not (= (regTwo!32774 r!7292) lt!2341180))))))

(assert (=> b!6192447 (= lt!2341180 (generalisedConcat!1728 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6192448 () Bool)

(assert (=> b!6192448 (= e!3771232 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(declare-fun b!6192449 () Bool)

(assert (=> b!6192449 (= e!3771233 e!3771210)))

(declare-fun res!2561700 () Bool)

(assert (=> b!6192449 (=> (not res!2561700) (not e!3771210))))

(assert (=> b!6192449 (= res!2561700 (= r!7292 lt!2341172))))

(declare-fun unfocusZipper!1873 (List!64693) Regex!16131)

(assert (=> b!6192449 (= lt!2341172 (unfocusZipper!1873 zl!343))))

(declare-fun b!6192450 () Bool)

(declare-fun res!2561702 () Bool)

(assert (=> b!6192450 (=> res!2561702 e!3771235)))

(assert (=> b!6192450 (= res!2561702 (not (validRegex!7867 (regOne!32775 (regOne!32774 r!7292)))))))

(assert (= (and start!617590 res!2561718) b!6192426))

(assert (= (and b!6192426 res!2561724) b!6192449))

(assert (= (and b!6192449 res!2561700) b!6192435))

(assert (= (and b!6192435 (not res!2561710)) b!6192411))

(assert (= (and b!6192411 (not res!2561717)) b!6192428))

(assert (= (and b!6192428 (not res!2561721)) b!6192410))

(assert (= (and b!6192410 (not res!2561714)) b!6192439))

(assert (= (and b!6192439 (not res!2561715)) b!6192416))

(assert (= (and b!6192416 (not res!2561725)) b!6192412))

(assert (= (and b!6192412 (not res!2561704)) b!6192434))

(assert (= (and b!6192434 (not res!2561713)) b!6192421))

(assert (= (and b!6192421 c!1117309) b!6192445))

(assert (= (and b!6192421 (not c!1117309)) b!6192430))

(assert (= (and b!6192445 (not res!2561722)) b!6192448))

(assert (= (and b!6192421 (not res!2561706)) b!6192418))

(assert (= (and b!6192418 (not res!2561719)) b!6192444))

(assert (= (and b!6192444 (not res!2561708)) b!6192446))

(assert (= (and b!6192444 res!2561723) b!6192427))

(assert (= (and b!6192444 (not res!2561701)) b!6192436))

(assert (= (and b!6192436 c!1117310) b!6192429))

(assert (= (and b!6192436 (not c!1117310)) b!6192433))

(assert (= (and b!6192429 (not res!2561709)) b!6192415))

(assert (= (and b!6192436 c!1117311) b!6192425))

(assert (= (and b!6192436 (not c!1117311)) b!6192437))

(assert (= (and b!6192425 (not res!2561712)) b!6192413))

(assert (= (and b!6192436 (not res!2561699)) b!6192441))

(assert (= (and b!6192436 (not res!2561720)) b!6192423))

(assert (= (and b!6192423 (not res!2561711)) b!6192414))

(assert (= (and b!6192414 (not res!2561707)) b!6192431))

(assert (= (and b!6192431 (not res!2561716)) b!6192443))

(assert (= (and b!6192443 (not res!2561703)) b!6192447))

(assert (= (and b!6192447 (not res!2561705)) b!6192450))

(assert (= (and b!6192450 (not res!2561702)) b!6192432))

(assert (= (and start!617590 ((_ is ElementMatch!16131) r!7292)) b!6192419))

(assert (= (and start!617590 ((_ is Concat!24976) r!7292)) b!6192438))

(assert (= (and start!617590 ((_ is Star!16131) r!7292)) b!6192422))

(assert (= (and start!617590 ((_ is Union!16131) r!7292)) b!6192417))

(assert (= (and start!617590 condSetEmpty!42010) setIsEmpty!42010))

(assert (= (and start!617590 (not condSetEmpty!42010)) setNonEmpty!42010))

(assert (= setNonEmpty!42010 b!6192420))

(assert (= b!6192440 b!6192442))

(assert (= (and start!617590 ((_ is Cons!64569) zl!343)) b!6192440))

(assert (= (and start!617590 ((_ is Cons!64570) s!2326)) b!6192424))

(declare-fun m!7026452 () Bool)

(assert (=> b!6192448 m!7026452))

(declare-fun m!7026454 () Bool)

(assert (=> b!6192431 m!7026454))

(declare-fun m!7026456 () Bool)

(assert (=> b!6192447 m!7026456))

(assert (=> b!6192413 m!7026452))

(declare-fun m!7026458 () Bool)

(assert (=> b!6192449 m!7026458))

(declare-fun m!7026460 () Bool)

(assert (=> b!6192429 m!7026460))

(declare-fun m!7026462 () Bool)

(assert (=> b!6192429 m!7026462))

(declare-fun m!7026464 () Bool)

(assert (=> b!6192439 m!7026464))

(assert (=> b!6192439 m!7026464))

(declare-fun m!7026466 () Bool)

(assert (=> b!6192439 m!7026466))

(declare-fun m!7026468 () Bool)

(assert (=> b!6192432 m!7026468))

(declare-fun m!7026470 () Bool)

(assert (=> b!6192450 m!7026470))

(declare-fun m!7026472 () Bool)

(assert (=> b!6192435 m!7026472))

(declare-fun m!7026474 () Bool)

(assert (=> b!6192435 m!7026474))

(declare-fun m!7026476 () Bool)

(assert (=> b!6192435 m!7026476))

(declare-fun m!7026478 () Bool)

(assert (=> b!6192445 m!7026478))

(declare-fun m!7026480 () Bool)

(assert (=> b!6192445 m!7026480))

(declare-fun m!7026482 () Bool)

(assert (=> b!6192445 m!7026482))

(declare-fun m!7026484 () Bool)

(assert (=> b!6192418 m!7026484))

(declare-fun m!7026486 () Bool)

(assert (=> b!6192418 m!7026486))

(declare-fun m!7026488 () Bool)

(assert (=> b!6192441 m!7026488))

(declare-fun m!7026490 () Bool)

(assert (=> b!6192440 m!7026490))

(declare-fun m!7026492 () Bool)

(assert (=> b!6192446 m!7026492))

(assert (=> b!6192444 m!7026480))

(declare-fun m!7026494 () Bool)

(assert (=> b!6192444 m!7026494))

(declare-fun m!7026496 () Bool)

(assert (=> b!6192444 m!7026496))

(declare-fun m!7026498 () Bool)

(assert (=> b!6192444 m!7026498))

(declare-fun m!7026500 () Bool)

(assert (=> b!6192411 m!7026500))

(assert (=> b!6192427 m!7026492))

(declare-fun m!7026502 () Bool)

(assert (=> b!6192425 m!7026502))

(assert (=> b!6192425 m!7026492))

(declare-fun m!7026504 () Bool)

(assert (=> b!6192425 m!7026504))

(declare-fun m!7026506 () Bool)

(assert (=> b!6192443 m!7026506))

(assert (=> b!6192443 m!7026488))

(declare-fun m!7026508 () Bool)

(assert (=> b!6192443 m!7026508))

(declare-fun m!7026510 () Bool)

(assert (=> b!6192443 m!7026510))

(declare-fun m!7026512 () Bool)

(assert (=> b!6192443 m!7026512))

(declare-fun m!7026514 () Bool)

(assert (=> b!6192443 m!7026514))

(declare-fun m!7026516 () Bool)

(assert (=> b!6192443 m!7026516))

(declare-fun m!7026518 () Bool)

(assert (=> b!6192443 m!7026518))

(declare-fun m!7026520 () Bool)

(assert (=> b!6192443 m!7026520))

(declare-fun m!7026522 () Bool)

(assert (=> b!6192443 m!7026522))

(declare-fun m!7026524 () Bool)

(assert (=> b!6192443 m!7026524))

(declare-fun m!7026526 () Bool)

(assert (=> b!6192421 m!7026526))

(declare-fun m!7026528 () Bool)

(assert (=> b!6192421 m!7026528))

(declare-fun m!7026530 () Bool)

(assert (=> b!6192421 m!7026530))

(declare-fun m!7026532 () Bool)

(assert (=> b!6192421 m!7026532))

(declare-fun m!7026534 () Bool)

(assert (=> b!6192421 m!7026534))

(declare-fun m!7026536 () Bool)

(assert (=> b!6192421 m!7026536))

(declare-fun m!7026538 () Bool)

(assert (=> b!6192421 m!7026538))

(assert (=> b!6192415 m!7026452))

(declare-fun m!7026540 () Bool)

(assert (=> b!6192426 m!7026540))

(declare-fun m!7026542 () Bool)

(assert (=> b!6192412 m!7026542))

(declare-fun m!7026544 () Bool)

(assert (=> b!6192412 m!7026544))

(declare-fun m!7026546 () Bool)

(assert (=> b!6192412 m!7026546))

(declare-fun m!7026548 () Bool)

(assert (=> b!6192412 m!7026548))

(assert (=> b!6192412 m!7026546))

(declare-fun m!7026550 () Bool)

(assert (=> b!6192412 m!7026550))

(assert (=> b!6192412 m!7026542))

(declare-fun m!7026552 () Bool)

(assert (=> b!6192412 m!7026552))

(declare-fun m!7026554 () Bool)

(assert (=> setNonEmpty!42010 m!7026554))

(declare-fun m!7026556 () Bool)

(assert (=> b!6192434 m!7026556))

(declare-fun m!7026558 () Bool)

(assert (=> b!6192414 m!7026558))

(declare-fun m!7026560 () Bool)

(assert (=> b!6192414 m!7026560))

(declare-fun m!7026562 () Bool)

(assert (=> start!617590 m!7026562))

(declare-fun m!7026564 () Bool)

(assert (=> b!6192436 m!7026564))

(declare-fun m!7026566 () Bool)

(assert (=> b!6192436 m!7026566))

(declare-fun m!7026568 () Bool)

(assert (=> b!6192436 m!7026568))

(declare-fun m!7026570 () Bool)

(assert (=> b!6192436 m!7026570))

(declare-fun m!7026572 () Bool)

(assert (=> b!6192436 m!7026572))

(declare-fun m!7026574 () Bool)

(assert (=> b!6192436 m!7026574))

(declare-fun m!7026576 () Bool)

(assert (=> b!6192436 m!7026576))

(declare-fun m!7026578 () Bool)

(assert (=> b!6192436 m!7026578))

(declare-fun m!7026580 () Bool)

(assert (=> b!6192436 m!7026580))

(declare-fun m!7026582 () Bool)

(assert (=> b!6192436 m!7026582))

(declare-fun m!7026584 () Bool)

(assert (=> b!6192436 m!7026584))

(declare-fun m!7026586 () Bool)

(assert (=> b!6192436 m!7026586))

(declare-fun m!7026588 () Bool)

(assert (=> b!6192428 m!7026588))

(check-sat (not b!6192446) (not b!6192445) (not b!6192436) (not b!6192422) (not b!6192432) (not b!6192449) (not b!6192442) (not b!6192429) (not b!6192447) (not b!6192413) (not setNonEmpty!42010) tp_is_empty!41515 (not b!6192421) (not b!6192425) (not b!6192440) (not b!6192448) (not b!6192438) (not b!6192431) (not b!6192412) (not b!6192426) (not b!6192428) (not b!6192411) (not b!6192435) (not start!617590) (not b!6192439) (not b!6192424) (not b!6192450) (not b!6192420) (not b!6192434) (not b!6192415) (not b!6192441) (not b!6192414) (not b!6192444) (not b!6192417) (not b!6192427) (not b!6192443) (not b!6192418))
(check-sat)
(get-model)

(declare-fun d!1941427 () Bool)

(declare-fun lt!2341219 () Int)

(assert (=> d!1941427 (>= lt!2341219 0)))

(declare-fun e!3771277 () Int)

(assert (=> d!1941427 (= lt!2341219 e!3771277)))

(declare-fun c!1117342 () Bool)

(assert (=> d!1941427 (= c!1117342 ((_ is Cons!64569) zl!343))))

(assert (=> d!1941427 (= (zipperDepthTotal!314 zl!343) lt!2341219)))

(declare-fun b!6192527 () Bool)

(declare-fun contextDepthTotal!283 (Context!11030) Int)

(assert (=> b!6192527 (= e!3771277 (+ (contextDepthTotal!283 (h!71017 zl!343)) (zipperDepthTotal!314 (t!378205 zl!343))))))

(declare-fun b!6192528 () Bool)

(assert (=> b!6192528 (= e!3771277 0)))

(assert (= (and d!1941427 c!1117342) b!6192527))

(assert (= (and d!1941427 (not c!1117342)) b!6192528))

(declare-fun m!7026638 () Bool)

(assert (=> b!6192527 m!7026638))

(declare-fun m!7026640 () Bool)

(assert (=> b!6192527 m!7026640))

(assert (=> b!6192414 d!1941427))

(declare-fun d!1941431 () Bool)

(declare-fun lt!2341222 () Int)

(assert (=> d!1941431 (>= lt!2341222 0)))

(declare-fun e!3771280 () Int)

(assert (=> d!1941431 (= lt!2341222 e!3771280)))

(declare-fun c!1117345 () Bool)

(assert (=> d!1941431 (= c!1117345 ((_ is Cons!64569) lt!2341171))))

(assert (=> d!1941431 (= (zipperDepthTotal!314 lt!2341171) lt!2341222)))

(declare-fun b!6192533 () Bool)

(assert (=> b!6192533 (= e!3771280 (+ (contextDepthTotal!283 (h!71017 lt!2341171)) (zipperDepthTotal!314 (t!378205 lt!2341171))))))

(declare-fun b!6192534 () Bool)

(assert (=> b!6192534 (= e!3771280 0)))

(assert (= (and d!1941431 c!1117345) b!6192533))

(assert (= (and d!1941431 (not c!1117345)) b!6192534))

(declare-fun m!7026642 () Bool)

(assert (=> b!6192533 m!7026642))

(declare-fun m!7026644 () Bool)

(assert (=> b!6192533 m!7026644))

(assert (=> b!6192414 d!1941431))

(declare-fun bs!1536463 () Bool)

(declare-fun b!6192676 () Bool)

(assert (= bs!1536463 (and b!6192676 b!6192412)))

(declare-fun lambda!338211 () Int)

(assert (=> bs!1536463 (not (= lambda!338211 lambda!338191))))

(assert (=> bs!1536463 (not (= lambda!338211 lambda!338192))))

(assert (=> b!6192676 true))

(assert (=> b!6192676 true))

(declare-fun bs!1536465 () Bool)

(declare-fun b!6192678 () Bool)

(assert (= bs!1536465 (and b!6192678 b!6192412)))

(declare-fun lambda!338213 () Int)

(assert (=> bs!1536465 (not (= lambda!338213 lambda!338191))))

(assert (=> bs!1536465 (= lambda!338213 lambda!338192)))

(declare-fun bs!1536467 () Bool)

(assert (= bs!1536467 (and b!6192678 b!6192676)))

(assert (=> bs!1536467 (not (= lambda!338213 lambda!338211))))

(assert (=> b!6192678 true))

(assert (=> b!6192678 true))

(declare-fun b!6192674 () Bool)

(declare-fun e!3771365 () Bool)

(declare-fun call!517918 () Bool)

(assert (=> b!6192674 (= e!3771365 call!517918)))

(declare-fun b!6192675 () Bool)

(declare-fun e!3771366 () Bool)

(assert (=> b!6192675 (= e!3771366 (= s!2326 (Cons!64570 (c!1117312 r!7292) Nil!64570)))))

(declare-fun e!3771364 () Bool)

(declare-fun call!517919 () Bool)

(assert (=> b!6192676 (= e!3771364 call!517919)))

(declare-fun b!6192677 () Bool)

(declare-fun e!3771368 () Bool)

(declare-fun e!3771369 () Bool)

(assert (=> b!6192677 (= e!3771368 e!3771369)))

(declare-fun c!1117391 () Bool)

(assert (=> b!6192677 (= c!1117391 ((_ is Star!16131) r!7292))))

(assert (=> b!6192678 (= e!3771369 call!517919)))

(declare-fun b!6192679 () Bool)

(declare-fun c!1117393 () Bool)

(assert (=> b!6192679 (= c!1117393 ((_ is ElementMatch!16131) r!7292))))

(declare-fun e!3771367 () Bool)

(assert (=> b!6192679 (= e!3771367 e!3771366)))

(declare-fun b!6192680 () Bool)

(declare-fun c!1117390 () Bool)

(assert (=> b!6192680 (= c!1117390 ((_ is Union!16131) r!7292))))

(assert (=> b!6192680 (= e!3771366 e!3771368)))

(declare-fun b!6192681 () Bool)

(declare-fun res!2561791 () Bool)

(assert (=> b!6192681 (=> res!2561791 e!3771364)))

(assert (=> b!6192681 (= res!2561791 call!517918)))

(assert (=> b!6192681 (= e!3771369 e!3771364)))

(declare-fun bm!517913 () Bool)

(declare-fun isEmpty!36557 (List!64694) Bool)

(assert (=> bm!517913 (= call!517918 (isEmpty!36557 s!2326))))

(declare-fun b!6192682 () Bool)

(assert (=> b!6192682 (= e!3771365 e!3771367)))

(declare-fun res!2561789 () Bool)

(assert (=> b!6192682 (= res!2561789 (not ((_ is EmptyLang!16131) r!7292)))))

(assert (=> b!6192682 (=> (not res!2561789) (not e!3771367))))

(declare-fun bm!517914 () Bool)

(assert (=> bm!517914 (= call!517919 (Exists!3201 (ite c!1117391 lambda!338211 lambda!338213)))))

(declare-fun b!6192683 () Bool)

(declare-fun e!3771370 () Bool)

(assert (=> b!6192683 (= e!3771368 e!3771370)))

(declare-fun res!2561790 () Bool)

(assert (=> b!6192683 (= res!2561790 (matchRSpec!3232 (regOne!32775 r!7292) s!2326))))

(assert (=> b!6192683 (=> res!2561790 e!3771370)))

(declare-fun b!6192684 () Bool)

(assert (=> b!6192684 (= e!3771370 (matchRSpec!3232 (regTwo!32775 r!7292) s!2326))))

(declare-fun d!1941433 () Bool)

(declare-fun c!1117392 () Bool)

(assert (=> d!1941433 (= c!1117392 ((_ is EmptyExpr!16131) r!7292))))

(assert (=> d!1941433 (= (matchRSpec!3232 r!7292 s!2326) e!3771365)))

(assert (= (and d!1941433 c!1117392) b!6192674))

(assert (= (and d!1941433 (not c!1117392)) b!6192682))

(assert (= (and b!6192682 res!2561789) b!6192679))

(assert (= (and b!6192679 c!1117393) b!6192675))

(assert (= (and b!6192679 (not c!1117393)) b!6192680))

(assert (= (and b!6192680 c!1117390) b!6192683))

(assert (= (and b!6192680 (not c!1117390)) b!6192677))

(assert (= (and b!6192683 (not res!2561790)) b!6192684))

(assert (= (and b!6192677 c!1117391) b!6192681))

(assert (= (and b!6192677 (not c!1117391)) b!6192678))

(assert (= (and b!6192681 (not res!2561791)) b!6192676))

(assert (= (or b!6192676 b!6192678) bm!517914))

(assert (= (or b!6192674 b!6192681) bm!517913))

(declare-fun m!7026692 () Bool)

(assert (=> bm!517913 m!7026692))

(declare-fun m!7026694 () Bool)

(assert (=> bm!517914 m!7026694))

(declare-fun m!7026696 () Bool)

(assert (=> b!6192683 m!7026696))

(declare-fun m!7026698 () Bool)

(assert (=> b!6192684 m!7026698))

(assert (=> b!6192435 d!1941433))

(declare-fun b!6192782 () Bool)

(declare-fun e!3771431 () Bool)

(declare-fun head!12774 (List!64694) C!32532)

(assert (=> b!6192782 (= e!3771431 (= (head!12774 s!2326) (c!1117312 r!7292)))))

(declare-fun b!6192783 () Bool)

(declare-fun res!2561847 () Bool)

(assert (=> b!6192783 (=> (not res!2561847) (not e!3771431))))

(declare-fun tail!11859 (List!64694) List!64694)

(assert (=> b!6192783 (= res!2561847 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6192784 () Bool)

(declare-fun res!2561848 () Bool)

(declare-fun e!3771425 () Bool)

(assert (=> b!6192784 (=> res!2561848 e!3771425)))

(assert (=> b!6192784 (= res!2561848 (not ((_ is ElementMatch!16131) r!7292)))))

(declare-fun e!3771427 () Bool)

(assert (=> b!6192784 (= e!3771427 e!3771425)))

(declare-fun b!6192785 () Bool)

(declare-fun e!3771426 () Bool)

(declare-fun e!3771428 () Bool)

(assert (=> b!6192785 (= e!3771426 e!3771428)))

(declare-fun res!2561846 () Bool)

(assert (=> b!6192785 (=> res!2561846 e!3771428)))

(declare-fun call!517930 () Bool)

(assert (=> b!6192785 (= res!2561846 call!517930)))

(declare-fun b!6192786 () Bool)

(declare-fun e!3771429 () Bool)

(declare-fun derivativeStep!4846 (Regex!16131 C!32532) Regex!16131)

(assert (=> b!6192786 (= e!3771429 (matchR!8314 (derivativeStep!4846 r!7292 (head!12774 s!2326)) (tail!11859 s!2326)))))

(declare-fun b!6192787 () Bool)

(declare-fun res!2561843 () Bool)

(assert (=> b!6192787 (=> res!2561843 e!3771428)))

(assert (=> b!6192787 (= res!2561843 (not (isEmpty!36557 (tail!11859 s!2326))))))

(declare-fun b!6192788 () Bool)

(assert (=> b!6192788 (= e!3771429 (nullable!6124 r!7292))))

(declare-fun bm!517925 () Bool)

(assert (=> bm!517925 (= call!517930 (isEmpty!36557 s!2326))))

(declare-fun b!6192790 () Bool)

(declare-fun e!3771430 () Bool)

(declare-fun lt!2341235 () Bool)

(assert (=> b!6192790 (= e!3771430 (= lt!2341235 call!517930))))

(declare-fun b!6192791 () Bool)

(assert (=> b!6192791 (= e!3771428 (not (= (head!12774 s!2326) (c!1117312 r!7292))))))

(declare-fun b!6192789 () Bool)

(assert (=> b!6192789 (= e!3771430 e!3771427)))

(declare-fun c!1117419 () Bool)

(assert (=> b!6192789 (= c!1117419 ((_ is EmptyLang!16131) r!7292))))

(declare-fun d!1941449 () Bool)

(assert (=> d!1941449 e!3771430))

(declare-fun c!1117418 () Bool)

(assert (=> d!1941449 (= c!1117418 ((_ is EmptyExpr!16131) r!7292))))

(assert (=> d!1941449 (= lt!2341235 e!3771429)))

(declare-fun c!1117417 () Bool)

(assert (=> d!1941449 (= c!1117417 (isEmpty!36557 s!2326))))

(assert (=> d!1941449 (validRegex!7867 r!7292)))

(assert (=> d!1941449 (= (matchR!8314 r!7292 s!2326) lt!2341235)))

(declare-fun b!6192792 () Bool)

(assert (=> b!6192792 (= e!3771425 e!3771426)))

(declare-fun res!2561850 () Bool)

(assert (=> b!6192792 (=> (not res!2561850) (not e!3771426))))

(assert (=> b!6192792 (= res!2561850 (not lt!2341235))))

(declare-fun b!6192793 () Bool)

(declare-fun res!2561845 () Bool)

(assert (=> b!6192793 (=> res!2561845 e!3771425)))

(assert (=> b!6192793 (= res!2561845 e!3771431)))

(declare-fun res!2561849 () Bool)

(assert (=> b!6192793 (=> (not res!2561849) (not e!3771431))))

(assert (=> b!6192793 (= res!2561849 lt!2341235)))

(declare-fun b!6192794 () Bool)

(declare-fun res!2561844 () Bool)

(assert (=> b!6192794 (=> (not res!2561844) (not e!3771431))))

(assert (=> b!6192794 (= res!2561844 (not call!517930))))

(declare-fun b!6192795 () Bool)

(assert (=> b!6192795 (= e!3771427 (not lt!2341235))))

(assert (= (and d!1941449 c!1117417) b!6192788))

(assert (= (and d!1941449 (not c!1117417)) b!6192786))

(assert (= (and d!1941449 c!1117418) b!6192790))

(assert (= (and d!1941449 (not c!1117418)) b!6192789))

(assert (= (and b!6192789 c!1117419) b!6192795))

(assert (= (and b!6192789 (not c!1117419)) b!6192784))

(assert (= (and b!6192784 (not res!2561848)) b!6192793))

(assert (= (and b!6192793 res!2561849) b!6192794))

(assert (= (and b!6192794 res!2561844) b!6192783))

(assert (= (and b!6192783 res!2561847) b!6192782))

(assert (= (and b!6192793 (not res!2561845)) b!6192792))

(assert (= (and b!6192792 res!2561850) b!6192785))

(assert (= (and b!6192785 (not res!2561846)) b!6192787))

(assert (= (and b!6192787 (not res!2561843)) b!6192791))

(assert (= (or b!6192790 b!6192785 b!6192794) bm!517925))

(assert (=> d!1941449 m!7026692))

(assert (=> d!1941449 m!7026562))

(declare-fun m!7026736 () Bool)

(assert (=> b!6192786 m!7026736))

(assert (=> b!6192786 m!7026736))

(declare-fun m!7026738 () Bool)

(assert (=> b!6192786 m!7026738))

(declare-fun m!7026740 () Bool)

(assert (=> b!6192786 m!7026740))

(assert (=> b!6192786 m!7026738))

(assert (=> b!6192786 m!7026740))

(declare-fun m!7026742 () Bool)

(assert (=> b!6192786 m!7026742))

(assert (=> bm!517925 m!7026692))

(assert (=> b!6192783 m!7026740))

(assert (=> b!6192783 m!7026740))

(declare-fun m!7026744 () Bool)

(assert (=> b!6192783 m!7026744))

(assert (=> b!6192782 m!7026736))

(assert (=> b!6192787 m!7026740))

(assert (=> b!6192787 m!7026740))

(assert (=> b!6192787 m!7026744))

(declare-fun m!7026746 () Bool)

(assert (=> b!6192788 m!7026746))

(assert (=> b!6192791 m!7026736))

(assert (=> b!6192435 d!1941449))

(declare-fun d!1941465 () Bool)

(assert (=> d!1941465 (= (matchR!8314 r!7292 s!2326) (matchRSpec!3232 r!7292 s!2326))))

(declare-fun lt!2341245 () Unit!157827)

(declare-fun choose!46001 (Regex!16131 List!64694) Unit!157827)

(assert (=> d!1941465 (= lt!2341245 (choose!46001 r!7292 s!2326))))

(assert (=> d!1941465 (validRegex!7867 r!7292)))

(assert (=> d!1941465 (= (mainMatchTheorem!3232 r!7292 s!2326) lt!2341245)))

(declare-fun bs!1536472 () Bool)

(assert (= bs!1536472 d!1941465))

(assert (=> bs!1536472 m!7026474))

(assert (=> bs!1536472 m!7026472))

(declare-fun m!7026760 () Bool)

(assert (=> bs!1536472 m!7026760))

(assert (=> bs!1536472 m!7026562))

(assert (=> b!6192435 d!1941465))

(declare-fun d!1941475 () Bool)

(assert (=> d!1941475 (= (isEmpty!36555 (t!378204 (exprs!6015 (h!71017 zl!343)))) ((_ is Nil!64568) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6192434 d!1941475))

(declare-fun d!1941477 () Bool)

(declare-fun c!1117437 () Bool)

(assert (=> d!1941477 (= c!1117437 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771453 () Bool)

(assert (=> d!1941477 (= (matchZipper!2143 lt!2341164 (t!378206 s!2326)) e!3771453)))

(declare-fun b!6192834 () Bool)

(declare-fun nullableZipper!1907 ((InoxSet Context!11030)) Bool)

(assert (=> b!6192834 (= e!3771453 (nullableZipper!1907 lt!2341164))))

(declare-fun b!6192835 () Bool)

(declare-fun derivationStepZipper!2099 ((InoxSet Context!11030) C!32532) (InoxSet Context!11030))

(assert (=> b!6192835 (= e!3771453 (matchZipper!2143 (derivationStepZipper!2099 lt!2341164 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941477 c!1117437) b!6192834))

(assert (= (and d!1941477 (not c!1117437)) b!6192835))

(declare-fun m!7026800 () Bool)

(assert (=> d!1941477 m!7026800))

(declare-fun m!7026802 () Bool)

(assert (=> b!6192834 m!7026802))

(declare-fun m!7026804 () Bool)

(assert (=> b!6192835 m!7026804))

(assert (=> b!6192835 m!7026804))

(declare-fun m!7026806 () Bool)

(assert (=> b!6192835 m!7026806))

(declare-fun m!7026810 () Bool)

(assert (=> b!6192835 m!7026810))

(assert (=> b!6192835 m!7026806))

(assert (=> b!6192835 m!7026810))

(declare-fun m!7026812 () Bool)

(assert (=> b!6192835 m!7026812))

(assert (=> b!6192413 d!1941477))

(declare-fun b!6192888 () Bool)

(declare-fun e!3771487 () Option!16022)

(declare-fun e!3771484 () Option!16022)

(assert (=> b!6192888 (= e!3771487 e!3771484)))

(declare-fun c!1117450 () Bool)

(assert (=> b!6192888 (= c!1117450 ((_ is Nil!64570) s!2326))))

(declare-fun b!6192889 () Bool)

(assert (=> b!6192889 (= e!3771487 (Some!16021 (tuple2!66221 Nil!64570 s!2326)))))

(declare-fun b!6192890 () Bool)

(assert (=> b!6192890 (= e!3771484 None!16021)))

(declare-fun b!6192891 () Bool)

(declare-fun e!3771483 () Bool)

(declare-fun lt!2341270 () Option!16022)

(assert (=> b!6192891 (= e!3771483 (not (isDefined!12725 lt!2341270)))))

(declare-fun b!6192892 () Bool)

(declare-fun lt!2341271 () Unit!157827)

(declare-fun lt!2341269 () Unit!157827)

(assert (=> b!6192892 (= lt!2341271 lt!2341269)))

(declare-fun ++!14210 (List!64694 List!64694) List!64694)

(assert (=> b!6192892 (= (++!14210 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2305 (List!64694 C!32532 List!64694 List!64694) Unit!157827)

(assert (=> b!6192892 (= lt!2341269 (lemmaMoveElementToOtherListKeepsConcatEq!2305 Nil!64570 (h!71018 s!2326) (t!378206 s!2326) s!2326))))

(assert (=> b!6192892 (= e!3771484 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326) s!2326))))

(declare-fun d!1941501 () Bool)

(assert (=> d!1941501 e!3771483))

(declare-fun res!2561889 () Bool)

(assert (=> d!1941501 (=> res!2561889 e!3771483)))

(declare-fun e!3771486 () Bool)

(assert (=> d!1941501 (= res!2561889 e!3771486)))

(declare-fun res!2561887 () Bool)

(assert (=> d!1941501 (=> (not res!2561887) (not e!3771486))))

(assert (=> d!1941501 (= res!2561887 (isDefined!12725 lt!2341270))))

(assert (=> d!1941501 (= lt!2341270 e!3771487)))

(declare-fun c!1117449 () Bool)

(declare-fun e!3771485 () Bool)

(assert (=> d!1941501 (= c!1117449 e!3771485)))

(declare-fun res!2561885 () Bool)

(assert (=> d!1941501 (=> (not res!2561885) (not e!3771485))))

(assert (=> d!1941501 (= res!2561885 (matchR!8314 (regOne!32774 r!7292) Nil!64570))))

(assert (=> d!1941501 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1941501 (= (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326) lt!2341270)))

(declare-fun b!6192893 () Bool)

(declare-fun res!2561888 () Bool)

(assert (=> b!6192893 (=> (not res!2561888) (not e!3771486))))

(declare-fun get!22291 (Option!16022) tuple2!66220)

(assert (=> b!6192893 (= res!2561888 (matchR!8314 (regOne!32774 r!7292) (_1!36413 (get!22291 lt!2341270))))))

(declare-fun b!6192894 () Bool)

(assert (=> b!6192894 (= e!3771486 (= (++!14210 (_1!36413 (get!22291 lt!2341270)) (_2!36413 (get!22291 lt!2341270))) s!2326))))

(declare-fun b!6192895 () Bool)

(declare-fun res!2561886 () Bool)

(assert (=> b!6192895 (=> (not res!2561886) (not e!3771486))))

(assert (=> b!6192895 (= res!2561886 (matchR!8314 (regTwo!32774 r!7292) (_2!36413 (get!22291 lt!2341270))))))

(declare-fun b!6192896 () Bool)

(assert (=> b!6192896 (= e!3771485 (matchR!8314 (regTwo!32774 r!7292) s!2326))))

(assert (= (and d!1941501 res!2561885) b!6192896))

(assert (= (and d!1941501 c!1117449) b!6192889))

(assert (= (and d!1941501 (not c!1117449)) b!6192888))

(assert (= (and b!6192888 c!1117450) b!6192890))

(assert (= (and b!6192888 (not c!1117450)) b!6192892))

(assert (= (and d!1941501 res!2561887) b!6192893))

(assert (= (and b!6192893 res!2561888) b!6192895))

(assert (= (and b!6192895 res!2561886) b!6192894))

(assert (= (and d!1941501 (not res!2561889)) b!6192891))

(declare-fun m!7026852 () Bool)

(assert (=> b!6192896 m!7026852))

(declare-fun m!7026854 () Bool)

(assert (=> b!6192894 m!7026854))

(declare-fun m!7026856 () Bool)

(assert (=> b!6192894 m!7026856))

(assert (=> b!6192895 m!7026854))

(declare-fun m!7026858 () Bool)

(assert (=> b!6192895 m!7026858))

(declare-fun m!7026860 () Bool)

(assert (=> b!6192892 m!7026860))

(assert (=> b!6192892 m!7026860))

(declare-fun m!7026862 () Bool)

(assert (=> b!6192892 m!7026862))

(declare-fun m!7026864 () Bool)

(assert (=> b!6192892 m!7026864))

(assert (=> b!6192892 m!7026860))

(declare-fun m!7026866 () Bool)

(assert (=> b!6192892 m!7026866))

(declare-fun m!7026868 () Bool)

(assert (=> b!6192891 m!7026868))

(assert (=> d!1941501 m!7026868))

(declare-fun m!7026870 () Bool)

(assert (=> d!1941501 m!7026870))

(declare-fun m!7026872 () Bool)

(assert (=> d!1941501 m!7026872))

(assert (=> b!6192893 m!7026854))

(declare-fun m!7026874 () Bool)

(assert (=> b!6192893 m!7026874))

(assert (=> b!6192412 d!1941501))

(declare-fun d!1941513 () Bool)

(declare-fun choose!46003 (Int) Bool)

(assert (=> d!1941513 (= (Exists!3201 lambda!338192) (choose!46003 lambda!338192))))

(declare-fun bs!1536484 () Bool)

(assert (= bs!1536484 d!1941513))

(declare-fun m!7026876 () Bool)

(assert (=> bs!1536484 m!7026876))

(assert (=> b!6192412 d!1941513))

(declare-fun d!1941515 () Bool)

(assert (=> d!1941515 (= (Exists!3201 lambda!338191) (choose!46003 lambda!338191))))

(declare-fun bs!1536485 () Bool)

(assert (= bs!1536485 d!1941515))

(declare-fun m!7026878 () Bool)

(assert (=> bs!1536485 m!7026878))

(assert (=> b!6192412 d!1941515))

(declare-fun bs!1536495 () Bool)

(declare-fun d!1941517 () Bool)

(assert (= bs!1536495 (and d!1941517 b!6192412)))

(declare-fun lambda!338227 () Int)

(assert (=> bs!1536495 (= lambda!338227 lambda!338191)))

(assert (=> bs!1536495 (not (= lambda!338227 lambda!338192))))

(declare-fun bs!1536496 () Bool)

(assert (= bs!1536496 (and d!1941517 b!6192676)))

(assert (=> bs!1536496 (not (= lambda!338227 lambda!338211))))

(declare-fun bs!1536497 () Bool)

(assert (= bs!1536497 (and d!1941517 b!6192678)))

(assert (=> bs!1536497 (not (= lambda!338227 lambda!338213))))

(assert (=> d!1941517 true))

(assert (=> d!1941517 true))

(assert (=> d!1941517 true))

(assert (=> d!1941517 (= (isDefined!12725 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326)) (Exists!3201 lambda!338227))))

(declare-fun lt!2341280 () Unit!157827)

(declare-fun choose!46004 (Regex!16131 Regex!16131 List!64694) Unit!157827)

(assert (=> d!1941517 (= lt!2341280 (choose!46004 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326))))

(assert (=> d!1941517 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1941517 (= (lemmaFindConcatSeparationEquivalentToExists!2200 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326) lt!2341280)))

(declare-fun bs!1536498 () Bool)

(assert (= bs!1536498 d!1941517))

(assert (=> bs!1536498 m!7026872))

(assert (=> bs!1536498 m!7026542))

(assert (=> bs!1536498 m!7026544))

(assert (=> bs!1536498 m!7026542))

(declare-fun m!7026920 () Bool)

(assert (=> bs!1536498 m!7026920))

(declare-fun m!7026922 () Bool)

(assert (=> bs!1536498 m!7026922))

(assert (=> b!6192412 d!1941517))

(declare-fun bs!1536517 () Bool)

(declare-fun d!1941529 () Bool)

(assert (= bs!1536517 (and d!1941529 b!6192412)))

(declare-fun lambda!338235 () Int)

(assert (=> bs!1536517 (= lambda!338235 lambda!338191)))

(declare-fun bs!1536518 () Bool)

(assert (= bs!1536518 (and d!1941529 b!6192678)))

(assert (=> bs!1536518 (not (= lambda!338235 lambda!338213))))

(declare-fun bs!1536519 () Bool)

(assert (= bs!1536519 (and d!1941529 d!1941517)))

(assert (=> bs!1536519 (= lambda!338235 lambda!338227)))

(declare-fun bs!1536520 () Bool)

(assert (= bs!1536520 (and d!1941529 b!6192676)))

(assert (=> bs!1536520 (not (= lambda!338235 lambda!338211))))

(assert (=> bs!1536517 (not (= lambda!338235 lambda!338192))))

(assert (=> d!1941529 true))

(assert (=> d!1941529 true))

(assert (=> d!1941529 true))

(declare-fun lambda!338236 () Int)

(assert (=> bs!1536517 (not (= lambda!338236 lambda!338191))))

(declare-fun bs!1536522 () Bool)

(assert (= bs!1536522 d!1941529))

(assert (=> bs!1536522 (not (= lambda!338236 lambda!338235))))

(assert (=> bs!1536518 (= lambda!338236 lambda!338213)))

(assert (=> bs!1536519 (not (= lambda!338236 lambda!338227))))

(assert (=> bs!1536520 (not (= lambda!338236 lambda!338211))))

(assert (=> bs!1536517 (= lambda!338236 lambda!338192)))

(assert (=> d!1941529 true))

(assert (=> d!1941529 true))

(assert (=> d!1941529 true))

(assert (=> d!1941529 (= (Exists!3201 lambda!338235) (Exists!3201 lambda!338236))))

(declare-fun lt!2341289 () Unit!157827)

(declare-fun choose!46005 (Regex!16131 Regex!16131 List!64694) Unit!157827)

(assert (=> d!1941529 (= lt!2341289 (choose!46005 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326))))

(assert (=> d!1941529 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1941529 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1738 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326) lt!2341289)))

(declare-fun m!7026966 () Bool)

(assert (=> bs!1536522 m!7026966))

(declare-fun m!7026968 () Bool)

(assert (=> bs!1536522 m!7026968))

(declare-fun m!7026970 () Bool)

(assert (=> bs!1536522 m!7026970))

(assert (=> bs!1536522 m!7026872))

(assert (=> b!6192412 d!1941529))

(declare-fun d!1941545 () Bool)

(declare-fun isEmpty!36558 (Option!16022) Bool)

(assert (=> d!1941545 (= (isDefined!12725 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326)) (not (isEmpty!36558 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326))))))

(declare-fun bs!1536530 () Bool)

(assert (= bs!1536530 d!1941545))

(assert (=> bs!1536530 m!7026542))

(declare-fun m!7026972 () Bool)

(assert (=> bs!1536530 m!7026972))

(assert (=> b!6192412 d!1941545))

(declare-fun d!1941547 () Bool)

(declare-fun dynLambda!25462 (Int Context!11030) (InoxSet Context!11030))

(assert (=> d!1941547 (= (flatMap!1636 lt!2341186 lambda!338193) (dynLambda!25462 lambda!338193 lt!2341203))))

(declare-fun lt!2341294 () Unit!157827)

(declare-fun choose!46006 ((InoxSet Context!11030) Context!11030 Int) Unit!157827)

(assert (=> d!1941547 (= lt!2341294 (choose!46006 lt!2341186 lt!2341203 lambda!338193))))

(assert (=> d!1941547 (= lt!2341186 (store ((as const (Array Context!11030 Bool)) false) lt!2341203 true))))

(assert (=> d!1941547 (= (lemmaFlatMapOnSingletonSet!1162 lt!2341186 lt!2341203 lambda!338193) lt!2341294)))

(declare-fun b_lambda!235609 () Bool)

(assert (=> (not b_lambda!235609) (not d!1941547)))

(declare-fun bs!1536539 () Bool)

(assert (= bs!1536539 d!1941547))

(assert (=> bs!1536539 m!7026578))

(declare-fun m!7026980 () Bool)

(assert (=> bs!1536539 m!7026980))

(declare-fun m!7026982 () Bool)

(assert (=> bs!1536539 m!7026982))

(assert (=> bs!1536539 m!7026572))

(assert (=> b!6192436 d!1941547))

(declare-fun d!1941551 () Bool)

(declare-fun c!1117478 () Bool)

(assert (=> d!1941551 (= c!1117478 (isEmpty!36557 s!2326))))

(declare-fun e!3771545 () Bool)

(assert (=> d!1941551 (= (matchZipper!2143 z!1189 s!2326) e!3771545)))

(declare-fun b!6192999 () Bool)

(assert (=> b!6192999 (= e!3771545 (nullableZipper!1907 z!1189))))

(declare-fun b!6193000 () Bool)

(assert (=> b!6193000 (= e!3771545 (matchZipper!2143 (derivationStepZipper!2099 z!1189 (head!12774 s!2326)) (tail!11859 s!2326)))))

(assert (= (and d!1941551 c!1117478) b!6192999))

(assert (= (and d!1941551 (not c!1117478)) b!6193000))

(assert (=> d!1941551 m!7026692))

(declare-fun m!7026984 () Bool)

(assert (=> b!6192999 m!7026984))

(assert (=> b!6193000 m!7026736))

(assert (=> b!6193000 m!7026736))

(declare-fun m!7026986 () Bool)

(assert (=> b!6193000 m!7026986))

(assert (=> b!6193000 m!7026740))

(assert (=> b!6193000 m!7026986))

(assert (=> b!6193000 m!7026740))

(declare-fun m!7026988 () Bool)

(assert (=> b!6193000 m!7026988))

(assert (=> b!6192436 d!1941551))

(declare-fun d!1941553 () Bool)

(declare-fun c!1117479 () Bool)

(assert (=> d!1941553 (= c!1117479 (isEmpty!36557 s!2326))))

(declare-fun e!3771546 () Bool)

(assert (=> d!1941553 (= (matchZipper!2143 lt!2341195 s!2326) e!3771546)))

(declare-fun b!6193001 () Bool)

(assert (=> b!6193001 (= e!3771546 (nullableZipper!1907 lt!2341195))))

(declare-fun b!6193002 () Bool)

(assert (=> b!6193002 (= e!3771546 (matchZipper!2143 (derivationStepZipper!2099 lt!2341195 (head!12774 s!2326)) (tail!11859 s!2326)))))

(assert (= (and d!1941553 c!1117479) b!6193001))

(assert (= (and d!1941553 (not c!1117479)) b!6193002))

(assert (=> d!1941553 m!7026692))

(declare-fun m!7026990 () Bool)

(assert (=> b!6193001 m!7026990))

(assert (=> b!6193002 m!7026736))

(assert (=> b!6193002 m!7026736))

(declare-fun m!7026992 () Bool)

(assert (=> b!6193002 m!7026992))

(assert (=> b!6193002 m!7026740))

(assert (=> b!6193002 m!7026992))

(assert (=> b!6193002 m!7026740))

(declare-fun m!7026994 () Bool)

(assert (=> b!6193002 m!7026994))

(assert (=> b!6192436 d!1941553))

(declare-fun d!1941555 () Bool)

(assert (=> d!1941555 (= (flatMap!1636 lt!2341195 lambda!338193) (dynLambda!25462 lambda!338193 lt!2341179))))

(declare-fun lt!2341296 () Unit!157827)

(assert (=> d!1941555 (= lt!2341296 (choose!46006 lt!2341195 lt!2341179 lambda!338193))))

(assert (=> d!1941555 (= lt!2341195 (store ((as const (Array Context!11030 Bool)) false) lt!2341179 true))))

(assert (=> d!1941555 (= (lemmaFlatMapOnSingletonSet!1162 lt!2341195 lt!2341179 lambda!338193) lt!2341296)))

(declare-fun b_lambda!235611 () Bool)

(assert (=> (not b_lambda!235611) (not d!1941555)))

(declare-fun bs!1536545 () Bool)

(assert (= bs!1536545 d!1941555))

(assert (=> bs!1536545 m!7026568))

(declare-fun m!7027014 () Bool)

(assert (=> bs!1536545 m!7027014))

(declare-fun m!7027016 () Bool)

(assert (=> bs!1536545 m!7027016))

(assert (=> bs!1536545 m!7026574))

(assert (=> b!6192436 d!1941555))

(declare-fun b!6193031 () Bool)

(declare-fun e!3771565 () (InoxSet Context!11030))

(declare-fun call!517946 () (InoxSet Context!11030))

(assert (=> b!6193031 (= e!3771565 call!517946)))

(declare-fun b!6193032 () Bool)

(assert (=> b!6193032 (= e!3771565 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941559 () Bool)

(declare-fun c!1117490 () Bool)

(declare-fun e!3771567 () Bool)

(assert (=> d!1941559 (= c!1117490 e!3771567)))

(declare-fun res!2561946 () Bool)

(assert (=> d!1941559 (=> (not res!2561946) (not e!3771567))))

(assert (=> d!1941559 (= res!2561946 ((_ is Cons!64568) (exprs!6015 lt!2341179)))))

(declare-fun e!3771566 () (InoxSet Context!11030))

(assert (=> d!1941559 (= (derivationStepZipperUp!1305 lt!2341179 (h!71018 s!2326)) e!3771566)))

(declare-fun b!6193033 () Bool)

(assert (=> b!6193033 (= e!3771566 e!3771565)))

(declare-fun c!1117491 () Bool)

(assert (=> b!6193033 (= c!1117491 ((_ is Cons!64568) (exprs!6015 lt!2341179)))))

(declare-fun b!6193034 () Bool)

(assert (=> b!6193034 (= e!3771566 ((_ map or) call!517946 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (h!71018 s!2326))))))

(declare-fun bm!517941 () Bool)

(assert (=> bm!517941 (= call!517946 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341179)) (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (h!71018 s!2326)))))

(declare-fun b!6193035 () Bool)

(assert (=> b!6193035 (= e!3771567 (nullable!6124 (h!71016 (exprs!6015 lt!2341179))))))

(assert (= (and d!1941559 res!2561946) b!6193035))

(assert (= (and d!1941559 c!1117490) b!6193034))

(assert (= (and d!1941559 (not c!1117490)) b!6193033))

(assert (= (and b!6193033 c!1117491) b!6193031))

(assert (= (and b!6193033 (not c!1117491)) b!6193032))

(assert (= (or b!6193034 b!6193031) bm!517941))

(declare-fun m!7027050 () Bool)

(assert (=> b!6193034 m!7027050))

(declare-fun m!7027052 () Bool)

(assert (=> bm!517941 m!7027052))

(declare-fun m!7027054 () Bool)

(assert (=> b!6193035 m!7027054))

(assert (=> b!6192436 d!1941559))

(declare-fun d!1941575 () Bool)

(declare-fun choose!46008 ((InoxSet Context!11030) Int) (InoxSet Context!11030))

(assert (=> d!1941575 (= (flatMap!1636 lt!2341186 lambda!338193) (choose!46008 lt!2341186 lambda!338193))))

(declare-fun bs!1536549 () Bool)

(assert (= bs!1536549 d!1941575))

(declare-fun m!7027056 () Bool)

(assert (=> bs!1536549 m!7027056))

(assert (=> b!6192436 d!1941575))

(declare-fun b!6193047 () Bool)

(declare-fun e!3771574 () (InoxSet Context!11030))

(declare-fun call!517953 () (InoxSet Context!11030))

(assert (=> b!6193047 (= e!3771574 call!517953)))

(declare-fun b!6193048 () Bool)

(assert (=> b!6193048 (= e!3771574 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941577 () Bool)

(declare-fun c!1117497 () Bool)

(declare-fun e!3771576 () Bool)

(assert (=> d!1941577 (= c!1117497 e!3771576)))

(declare-fun res!2561948 () Bool)

(assert (=> d!1941577 (=> (not res!2561948) (not e!3771576))))

(assert (=> d!1941577 (= res!2561948 ((_ is Cons!64568) (exprs!6015 lt!2341203)))))

(declare-fun e!3771575 () (InoxSet Context!11030))

(assert (=> d!1941577 (= (derivationStepZipperUp!1305 lt!2341203 (h!71018 s!2326)) e!3771575)))

(declare-fun b!6193049 () Bool)

(assert (=> b!6193049 (= e!3771575 e!3771574)))

(declare-fun c!1117498 () Bool)

(assert (=> b!6193049 (= c!1117498 ((_ is Cons!64568) (exprs!6015 lt!2341203)))))

(declare-fun b!6193050 () Bool)

(assert (=> b!6193050 (= e!3771575 ((_ map or) call!517953 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (h!71018 s!2326))))))

(declare-fun bm!517948 () Bool)

(assert (=> bm!517948 (= call!517953 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341203)) (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (h!71018 s!2326)))))

(declare-fun b!6193051 () Bool)

(assert (=> b!6193051 (= e!3771576 (nullable!6124 (h!71016 (exprs!6015 lt!2341203))))))

(assert (= (and d!1941577 res!2561948) b!6193051))

(assert (= (and d!1941577 c!1117497) b!6193050))

(assert (= (and d!1941577 (not c!1117497)) b!6193049))

(assert (= (and b!6193049 c!1117498) b!6193047))

(assert (= (and b!6193049 (not c!1117498)) b!6193048))

(assert (= (or b!6193050 b!6193047) bm!517948))

(declare-fun m!7027066 () Bool)

(assert (=> b!6193050 m!7027066))

(declare-fun m!7027068 () Bool)

(assert (=> bm!517948 m!7027068))

(declare-fun m!7027072 () Bool)

(assert (=> b!6193051 m!7027072))

(assert (=> b!6192436 d!1941577))

(declare-fun d!1941581 () Bool)

(declare-fun nullableFct!2082 (Regex!16131) Bool)

(assert (=> d!1941581 (= (nullable!6124 (regTwo!32775 (regOne!32774 r!7292))) (nullableFct!2082 (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun bs!1536550 () Bool)

(assert (= bs!1536550 d!1941581))

(declare-fun m!7027080 () Bool)

(assert (=> bs!1536550 m!7027080))

(assert (=> b!6192436 d!1941581))

(declare-fun d!1941587 () Bool)

(assert (=> d!1941587 (= (nullable!6124 (regOne!32775 (regOne!32774 r!7292))) (nullableFct!2082 (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun bs!1536551 () Bool)

(assert (= bs!1536551 d!1941587))

(declare-fun m!7027082 () Bool)

(assert (=> bs!1536551 m!7027082))

(assert (=> b!6192436 d!1941587))

(declare-fun d!1941589 () Bool)

(assert (=> d!1941589 (= (flatMap!1636 lt!2341195 lambda!338193) (choose!46008 lt!2341195 lambda!338193))))

(declare-fun bs!1536552 () Bool)

(assert (= bs!1536552 d!1941589))

(declare-fun m!7027084 () Bool)

(assert (=> bs!1536552 m!7027084))

(assert (=> b!6192436 d!1941589))

(assert (=> b!6192415 d!1941477))

(declare-fun d!1941591 () Bool)

(declare-fun c!1117502 () Bool)

(assert (=> d!1941591 (= c!1117502 (isEmpty!36557 s!2326))))

(declare-fun e!3771586 () Bool)

(assert (=> d!1941591 (= (matchZipper!2143 lt!2341186 s!2326) e!3771586)))

(declare-fun b!6193064 () Bool)

(assert (=> b!6193064 (= e!3771586 (nullableZipper!1907 lt!2341186))))

(declare-fun b!6193065 () Bool)

(assert (=> b!6193065 (= e!3771586 (matchZipper!2143 (derivationStepZipper!2099 lt!2341186 (head!12774 s!2326)) (tail!11859 s!2326)))))

(assert (= (and d!1941591 c!1117502) b!6193064))

(assert (= (and d!1941591 (not c!1117502)) b!6193065))

(assert (=> d!1941591 m!7026692))

(declare-fun m!7027090 () Bool)

(assert (=> b!6193064 m!7027090))

(assert (=> b!6193065 m!7026736))

(assert (=> b!6193065 m!7026736))

(declare-fun m!7027094 () Bool)

(assert (=> b!6193065 m!7027094))

(assert (=> b!6193065 m!7026740))

(assert (=> b!6193065 m!7027094))

(assert (=> b!6193065 m!7026740))

(declare-fun m!7027096 () Bool)

(assert (=> b!6193065 m!7027096))

(assert (=> b!6192441 d!1941591))

(declare-fun d!1941595 () Bool)

(declare-fun lambda!338245 () Int)

(declare-fun forall!15247 (List!64692 Int) Bool)

(assert (=> d!1941595 (= (inv!83574 (h!71017 zl!343)) (forall!15247 (exprs!6015 (h!71017 zl!343)) lambda!338245))))

(declare-fun bs!1536556 () Bool)

(assert (= bs!1536556 d!1941595))

(declare-fun m!7027098 () Bool)

(assert (=> bs!1536556 m!7027098))

(assert (=> b!6192440 d!1941595))

(declare-fun b!6193147 () Bool)

(declare-fun e!3771625 () (InoxSet Context!11030))

(declare-fun call!517969 () (InoxSet Context!11030))

(assert (=> b!6193147 (= e!3771625 call!517969)))

(declare-fun b!6193148 () Bool)

(declare-fun e!3771626 () (InoxSet Context!11030))

(assert (=> b!6193148 (= e!3771626 e!3771625)))

(declare-fun c!1117518 () Bool)

(assert (=> b!6193148 (= c!1117518 ((_ is Concat!24976) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193149 () Bool)

(declare-fun e!3771627 () (InoxSet Context!11030))

(declare-fun call!517970 () (InoxSet Context!11030))

(declare-fun call!517972 () (InoxSet Context!11030))

(assert (=> b!6193149 (= e!3771627 ((_ map or) call!517970 call!517972))))

(declare-fun b!6193150 () Bool)

(declare-fun e!3771628 () (InoxSet Context!11030))

(assert (=> b!6193150 (= e!3771628 ((as const (Array Context!11030 Bool)) false))))

(declare-fun bm!517964 () Bool)

(declare-fun call!517973 () List!64692)

(declare-fun c!1117515 () Bool)

(assert (=> bm!517964 (= call!517972 (derivationStepZipperDown!1379 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))) (ite c!1117515 lt!2341183 (Context!11031 call!517973)) (h!71018 s!2326)))))

(declare-fun b!6193151 () Bool)

(declare-fun e!3771630 () Bool)

(assert (=> b!6193151 (= e!3771630 (nullable!6124 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))

(declare-fun bm!517965 () Bool)

(declare-fun c!1117516 () Bool)

(declare-fun $colon$colon!2002 (List!64692 Regex!16131) List!64692)

(assert (=> bm!517965 (= call!517973 ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117516 c!1117518) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32775 (regOne!32774 r!7292)))))))

(declare-fun bm!517966 () Bool)

(declare-fun call!517971 () (InoxSet Context!11030))

(assert (=> bm!517966 (= call!517969 call!517971)))

(declare-fun bm!517967 () Bool)

(assert (=> bm!517967 (= call!517971 call!517970)))

(declare-fun call!517974 () List!64692)

(declare-fun bm!517968 () Bool)

(assert (=> bm!517968 (= call!517970 (derivationStepZipperDown!1379 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))) (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974)) (h!71018 s!2326)))))

(declare-fun b!6193152 () Bool)

(assert (=> b!6193152 (= c!1117516 e!3771630)))

(declare-fun res!2561958 () Bool)

(assert (=> b!6193152 (=> (not res!2561958) (not e!3771630))))

(assert (=> b!6193152 (= res!2561958 ((_ is Concat!24976) (regTwo!32775 (regOne!32774 r!7292))))))

(assert (=> b!6193152 (= e!3771627 e!3771626)))

(declare-fun b!6193153 () Bool)

(declare-fun e!3771629 () (InoxSet Context!11030))

(assert (=> b!6193153 (= e!3771629 (store ((as const (Array Context!11030 Bool)) false) lt!2341183 true))))

(declare-fun b!6193154 () Bool)

(assert (=> b!6193154 (= e!3771628 call!517969)))

(declare-fun d!1941597 () Bool)

(declare-fun c!1117517 () Bool)

(assert (=> d!1941597 (= c!1117517 (and ((_ is ElementMatch!16131) (regTwo!32775 (regOne!32774 r!7292))) (= (c!1117312 (regTwo!32775 (regOne!32774 r!7292))) (h!71018 s!2326))))))

(assert (=> d!1941597 (= (derivationStepZipperDown!1379 (regTwo!32775 (regOne!32774 r!7292)) lt!2341183 (h!71018 s!2326)) e!3771629)))

(declare-fun bm!517969 () Bool)

(assert (=> bm!517969 (= call!517974 call!517973)))

(declare-fun b!6193155 () Bool)

(declare-fun c!1117519 () Bool)

(assert (=> b!6193155 (= c!1117519 ((_ is Star!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(assert (=> b!6193155 (= e!3771625 e!3771628)))

(declare-fun b!6193156 () Bool)

(assert (=> b!6193156 (= e!3771629 e!3771627)))

(assert (=> b!6193156 (= c!1117515 ((_ is Union!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193157 () Bool)

(assert (=> b!6193157 (= e!3771626 ((_ map or) call!517972 call!517971))))

(assert (= (and d!1941597 c!1117517) b!6193153))

(assert (= (and d!1941597 (not c!1117517)) b!6193156))

(assert (= (and b!6193156 c!1117515) b!6193149))

(assert (= (and b!6193156 (not c!1117515)) b!6193152))

(assert (= (and b!6193152 res!2561958) b!6193151))

(assert (= (and b!6193152 c!1117516) b!6193157))

(assert (= (and b!6193152 (not c!1117516)) b!6193148))

(assert (= (and b!6193148 c!1117518) b!6193147))

(assert (= (and b!6193148 (not c!1117518)) b!6193155))

(assert (= (and b!6193155 c!1117519) b!6193154))

(assert (= (and b!6193155 (not c!1117519)) b!6193150))

(assert (= (or b!6193147 b!6193154) bm!517969))

(assert (= (or b!6193147 b!6193154) bm!517966))

(assert (= (or b!6193157 bm!517969) bm!517965))

(assert (= (or b!6193157 bm!517966) bm!517967))

(assert (= (or b!6193149 b!6193157) bm!517964))

(assert (= (or b!6193149 bm!517967) bm!517968))

(declare-fun m!7027124 () Bool)

(assert (=> b!6193151 m!7027124))

(declare-fun m!7027126 () Bool)

(assert (=> bm!517968 m!7027126))

(declare-fun m!7027128 () Bool)

(assert (=> bm!517964 m!7027128))

(declare-fun m!7027130 () Bool)

(assert (=> bm!517965 m!7027130))

(declare-fun m!7027132 () Bool)

(assert (=> b!6193153 m!7027132))

(assert (=> b!6192418 d!1941597))

(declare-fun b!6193158 () Bool)

(declare-fun e!3771631 () (InoxSet Context!11030))

(declare-fun call!517975 () (InoxSet Context!11030))

(assert (=> b!6193158 (= e!3771631 call!517975)))

(declare-fun b!6193159 () Bool)

(declare-fun e!3771632 () (InoxSet Context!11030))

(assert (=> b!6193159 (= e!3771632 e!3771631)))

(declare-fun c!1117523 () Bool)

(assert (=> b!6193159 (= c!1117523 ((_ is Concat!24976) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193160 () Bool)

(declare-fun e!3771633 () (InoxSet Context!11030))

(declare-fun call!517976 () (InoxSet Context!11030))

(declare-fun call!517978 () (InoxSet Context!11030))

(assert (=> b!6193160 (= e!3771633 ((_ map or) call!517976 call!517978))))

(declare-fun b!6193161 () Bool)

(declare-fun e!3771634 () (InoxSet Context!11030))

(assert (=> b!6193161 (= e!3771634 ((as const (Array Context!11030 Bool)) false))))

(declare-fun c!1117520 () Bool)

(declare-fun call!517979 () List!64692)

(declare-fun bm!517970 () Bool)

(assert (=> bm!517970 (= call!517978 (derivationStepZipperDown!1379 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))) (ite c!1117520 lt!2341183 (Context!11031 call!517979)) (h!71018 s!2326)))))

(declare-fun b!6193162 () Bool)

(declare-fun e!3771636 () Bool)

(assert (=> b!6193162 (= e!3771636 (nullable!6124 (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))

(declare-fun bm!517971 () Bool)

(declare-fun c!1117521 () Bool)

(assert (=> bm!517971 (= call!517979 ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117521 c!1117523) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (regOne!32775 (regOne!32774 r!7292)))))))

(declare-fun bm!517972 () Bool)

(declare-fun call!517977 () (InoxSet Context!11030))

(assert (=> bm!517972 (= call!517975 call!517977)))

(declare-fun bm!517973 () Bool)

(assert (=> bm!517973 (= call!517977 call!517976)))

(declare-fun bm!517974 () Bool)

(declare-fun call!517980 () List!64692)

(assert (=> bm!517974 (= call!517976 (derivationStepZipperDown!1379 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))) (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980)) (h!71018 s!2326)))))

(declare-fun b!6193163 () Bool)

(assert (=> b!6193163 (= c!1117521 e!3771636)))

(declare-fun res!2561959 () Bool)

(assert (=> b!6193163 (=> (not res!2561959) (not e!3771636))))

(assert (=> b!6193163 (= res!2561959 ((_ is Concat!24976) (regOne!32775 (regOne!32774 r!7292))))))

(assert (=> b!6193163 (= e!3771633 e!3771632)))

(declare-fun b!6193164 () Bool)

(declare-fun e!3771635 () (InoxSet Context!11030))

(assert (=> b!6193164 (= e!3771635 (store ((as const (Array Context!11030 Bool)) false) lt!2341183 true))))

(declare-fun b!6193165 () Bool)

(assert (=> b!6193165 (= e!3771634 call!517975)))

(declare-fun d!1941613 () Bool)

(declare-fun c!1117522 () Bool)

(assert (=> d!1941613 (= c!1117522 (and ((_ is ElementMatch!16131) (regOne!32775 (regOne!32774 r!7292))) (= (c!1117312 (regOne!32775 (regOne!32774 r!7292))) (h!71018 s!2326))))))

(assert (=> d!1941613 (= (derivationStepZipperDown!1379 (regOne!32775 (regOne!32774 r!7292)) lt!2341183 (h!71018 s!2326)) e!3771635)))

(declare-fun bm!517975 () Bool)

(assert (=> bm!517975 (= call!517980 call!517979)))

(declare-fun b!6193166 () Bool)

(declare-fun c!1117524 () Bool)

(assert (=> b!6193166 (= c!1117524 ((_ is Star!16131) (regOne!32775 (regOne!32774 r!7292))))))

(assert (=> b!6193166 (= e!3771631 e!3771634)))

(declare-fun b!6193167 () Bool)

(assert (=> b!6193167 (= e!3771635 e!3771633)))

(assert (=> b!6193167 (= c!1117520 ((_ is Union!16131) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193168 () Bool)

(assert (=> b!6193168 (= e!3771632 ((_ map or) call!517978 call!517977))))

(assert (= (and d!1941613 c!1117522) b!6193164))

(assert (= (and d!1941613 (not c!1117522)) b!6193167))

(assert (= (and b!6193167 c!1117520) b!6193160))

(assert (= (and b!6193167 (not c!1117520)) b!6193163))

(assert (= (and b!6193163 res!2561959) b!6193162))

(assert (= (and b!6193163 c!1117521) b!6193168))

(assert (= (and b!6193163 (not c!1117521)) b!6193159))

(assert (= (and b!6193159 c!1117523) b!6193158))

(assert (= (and b!6193159 (not c!1117523)) b!6193166))

(assert (= (and b!6193166 c!1117524) b!6193165))

(assert (= (and b!6193166 (not c!1117524)) b!6193161))

(assert (= (or b!6193158 b!6193165) bm!517975))

(assert (= (or b!6193158 b!6193165) bm!517972))

(assert (= (or b!6193168 bm!517975) bm!517971))

(assert (= (or b!6193168 bm!517972) bm!517973))

(assert (= (or b!6193160 b!6193168) bm!517970))

(assert (= (or b!6193160 bm!517973) bm!517974))

(declare-fun m!7027134 () Bool)

(assert (=> b!6193162 m!7027134))

(declare-fun m!7027136 () Bool)

(assert (=> bm!517974 m!7027136))

(declare-fun m!7027138 () Bool)

(assert (=> bm!517970 m!7027138))

(declare-fun m!7027140 () Bool)

(assert (=> bm!517971 m!7027140))

(assert (=> b!6193164 m!7027132))

(assert (=> b!6192418 d!1941613))

(declare-fun bs!1536572 () Bool)

(declare-fun d!1941615 () Bool)

(assert (= bs!1536572 (and d!1941615 d!1941595)))

(declare-fun lambda!338249 () Int)

(assert (=> bs!1536572 (= lambda!338249 lambda!338245)))

(declare-fun b!6193189 () Bool)

(declare-fun e!3771653 () Bool)

(declare-fun lt!2341305 () Regex!16131)

(declare-fun isEmptyLang!1552 (Regex!16131) Bool)

(assert (=> b!6193189 (= e!3771653 (isEmptyLang!1552 lt!2341305))))

(declare-fun b!6193190 () Bool)

(declare-fun e!3771650 () Bool)

(assert (=> b!6193190 (= e!3771650 e!3771653)))

(declare-fun c!1117535 () Bool)

(assert (=> b!6193190 (= c!1117535 (isEmpty!36555 (unfocusZipperList!1552 zl!343)))))

(declare-fun b!6193191 () Bool)

(declare-fun e!3771652 () Bool)

(assert (=> b!6193191 (= e!3771652 (isEmpty!36555 (t!378204 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6193192 () Bool)

(declare-fun e!3771649 () Regex!16131)

(assert (=> b!6193192 (= e!3771649 (h!71016 (unfocusZipperList!1552 zl!343)))))

(declare-fun b!6193193 () Bool)

(declare-fun e!3771651 () Bool)

(assert (=> b!6193193 (= e!3771653 e!3771651)))

(declare-fun c!1117534 () Bool)

(declare-fun tail!11860 (List!64692) List!64692)

(assert (=> b!6193193 (= c!1117534 (isEmpty!36555 (tail!11860 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6193194 () Bool)

(declare-fun head!12775 (List!64692) Regex!16131)

(assert (=> b!6193194 (= e!3771651 (= lt!2341305 (head!12775 (unfocusZipperList!1552 zl!343))))))

(assert (=> d!1941615 e!3771650))

(declare-fun res!2561964 () Bool)

(assert (=> d!1941615 (=> (not res!2561964) (not e!3771650))))

(assert (=> d!1941615 (= res!2561964 (validRegex!7867 lt!2341305))))

(assert (=> d!1941615 (= lt!2341305 e!3771649)))

(declare-fun c!1117536 () Bool)

(assert (=> d!1941615 (= c!1117536 e!3771652)))

(declare-fun res!2561965 () Bool)

(assert (=> d!1941615 (=> (not res!2561965) (not e!3771652))))

(assert (=> d!1941615 (= res!2561965 ((_ is Cons!64568) (unfocusZipperList!1552 zl!343)))))

(assert (=> d!1941615 (forall!15247 (unfocusZipperList!1552 zl!343) lambda!338249)))

(assert (=> d!1941615 (= (generalisedUnion!1975 (unfocusZipperList!1552 zl!343)) lt!2341305)))

(declare-fun b!6193195 () Bool)

(declare-fun e!3771654 () Regex!16131)

(assert (=> b!6193195 (= e!3771654 (Union!16131 (h!71016 (unfocusZipperList!1552 zl!343)) (generalisedUnion!1975 (t!378204 (unfocusZipperList!1552 zl!343)))))))

(declare-fun b!6193196 () Bool)

(assert (=> b!6193196 (= e!3771649 e!3771654)))

(declare-fun c!1117533 () Bool)

(assert (=> b!6193196 (= c!1117533 ((_ is Cons!64568) (unfocusZipperList!1552 zl!343)))))

(declare-fun b!6193197 () Bool)

(assert (=> b!6193197 (= e!3771654 EmptyLang!16131)))

(declare-fun b!6193198 () Bool)

(declare-fun isUnion!982 (Regex!16131) Bool)

(assert (=> b!6193198 (= e!3771651 (isUnion!982 lt!2341305))))

(assert (= (and d!1941615 res!2561965) b!6193191))

(assert (= (and d!1941615 c!1117536) b!6193192))

(assert (= (and d!1941615 (not c!1117536)) b!6193196))

(assert (= (and b!6193196 c!1117533) b!6193195))

(assert (= (and b!6193196 (not c!1117533)) b!6193197))

(assert (= (and d!1941615 res!2561964) b!6193190))

(assert (= (and b!6193190 c!1117535) b!6193189))

(assert (= (and b!6193190 (not c!1117535)) b!6193193))

(assert (= (and b!6193193 c!1117534) b!6193194))

(assert (= (and b!6193193 (not c!1117534)) b!6193198))

(declare-fun m!7027142 () Bool)

(assert (=> d!1941615 m!7027142))

(assert (=> d!1941615 m!7026464))

(declare-fun m!7027144 () Bool)

(assert (=> d!1941615 m!7027144))

(assert (=> b!6193194 m!7026464))

(declare-fun m!7027146 () Bool)

(assert (=> b!6193194 m!7027146))

(declare-fun m!7027148 () Bool)

(assert (=> b!6193189 m!7027148))

(assert (=> b!6193190 m!7026464))

(declare-fun m!7027150 () Bool)

(assert (=> b!6193190 m!7027150))

(declare-fun m!7027152 () Bool)

(assert (=> b!6193198 m!7027152))

(declare-fun m!7027154 () Bool)

(assert (=> b!6193191 m!7027154))

(declare-fun m!7027156 () Bool)

(assert (=> b!6193195 m!7027156))

(assert (=> b!6193193 m!7026464))

(declare-fun m!7027158 () Bool)

(assert (=> b!6193193 m!7027158))

(assert (=> b!6193193 m!7027158))

(declare-fun m!7027160 () Bool)

(assert (=> b!6193193 m!7027160))

(assert (=> b!6192439 d!1941615))

(declare-fun bs!1536573 () Bool)

(declare-fun d!1941617 () Bool)

(assert (= bs!1536573 (and d!1941617 d!1941595)))

(declare-fun lambda!338252 () Int)

(assert (=> bs!1536573 (= lambda!338252 lambda!338245)))

(declare-fun bs!1536574 () Bool)

(assert (= bs!1536574 (and d!1941617 d!1941615)))

(assert (=> bs!1536574 (= lambda!338252 lambda!338249)))

(declare-fun lt!2341308 () List!64692)

(assert (=> d!1941617 (forall!15247 lt!2341308 lambda!338252)))

(declare-fun e!3771657 () List!64692)

(assert (=> d!1941617 (= lt!2341308 e!3771657)))

(declare-fun c!1117539 () Bool)

(assert (=> d!1941617 (= c!1117539 ((_ is Cons!64569) zl!343))))

(assert (=> d!1941617 (= (unfocusZipperList!1552 zl!343) lt!2341308)))

(declare-fun b!6193203 () Bool)

(assert (=> b!6193203 (= e!3771657 (Cons!64568 (generalisedConcat!1728 (exprs!6015 (h!71017 zl!343))) (unfocusZipperList!1552 (t!378205 zl!343))))))

(declare-fun b!6193204 () Bool)

(assert (=> b!6193204 (= e!3771657 Nil!64568)))

(assert (= (and d!1941617 c!1117539) b!6193203))

(assert (= (and d!1941617 (not c!1117539)) b!6193204))

(declare-fun m!7027162 () Bool)

(assert (=> d!1941617 m!7027162))

(assert (=> b!6193203 m!7026588))

(declare-fun m!7027164 () Bool)

(assert (=> b!6193203 m!7027164))

(assert (=> b!6192439 d!1941617))

(declare-fun bs!1536575 () Bool)

(declare-fun d!1941619 () Bool)

(assert (= bs!1536575 (and d!1941619 d!1941595)))

(declare-fun lambda!338253 () Int)

(assert (=> bs!1536575 (= lambda!338253 lambda!338245)))

(declare-fun bs!1536576 () Bool)

(assert (= bs!1536576 (and d!1941619 d!1941615)))

(assert (=> bs!1536576 (= lambda!338253 lambda!338249)))

(declare-fun bs!1536577 () Bool)

(assert (= bs!1536577 (and d!1941619 d!1941617)))

(assert (=> bs!1536577 (= lambda!338253 lambda!338252)))

(assert (=> d!1941619 (= (inv!83574 setElem!42010) (forall!15247 (exprs!6015 setElem!42010) lambda!338253))))

(declare-fun bs!1536578 () Bool)

(assert (= bs!1536578 d!1941619))

(declare-fun m!7027166 () Bool)

(assert (=> bs!1536578 m!7027166))

(assert (=> setNonEmpty!42010 d!1941619))

(declare-fun b!6193205 () Bool)

(declare-fun e!3771658 () (InoxSet Context!11030))

(declare-fun call!517981 () (InoxSet Context!11030))

(assert (=> b!6193205 (= e!3771658 call!517981)))

(declare-fun b!6193206 () Bool)

(assert (=> b!6193206 (= e!3771658 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941621 () Bool)

(declare-fun c!1117540 () Bool)

(declare-fun e!3771660 () Bool)

(assert (=> d!1941621 (= c!1117540 e!3771660)))

(declare-fun res!2561966 () Bool)

(assert (=> d!1941621 (=> (not res!2561966) (not e!3771660))))

(assert (=> d!1941621 (= res!2561966 ((_ is Cons!64568) (exprs!6015 lt!2341183)))))

(declare-fun e!3771659 () (InoxSet Context!11030))

(assert (=> d!1941621 (= (derivationStepZipperUp!1305 lt!2341183 (h!71018 s!2326)) e!3771659)))

(declare-fun b!6193207 () Bool)

(assert (=> b!6193207 (= e!3771659 e!3771658)))

(declare-fun c!1117541 () Bool)

(assert (=> b!6193207 (= c!1117541 ((_ is Cons!64568) (exprs!6015 lt!2341183)))))

(declare-fun b!6193208 () Bool)

(assert (=> b!6193208 (= e!3771659 ((_ map or) call!517981 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (h!71018 s!2326))))))

(declare-fun bm!517976 () Bool)

(assert (=> bm!517976 (= call!517981 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341183)) (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (h!71018 s!2326)))))

(declare-fun b!6193209 () Bool)

(assert (=> b!6193209 (= e!3771660 (nullable!6124 (h!71016 (exprs!6015 lt!2341183))))))

(assert (= (and d!1941621 res!2561966) b!6193209))

(assert (= (and d!1941621 c!1117540) b!6193208))

(assert (= (and d!1941621 (not c!1117540)) b!6193207))

(assert (= (and b!6193207 c!1117541) b!6193205))

(assert (= (and b!6193207 (not c!1117541)) b!6193206))

(assert (= (or b!6193208 b!6193205) bm!517976))

(declare-fun m!7027168 () Bool)

(assert (=> b!6193208 m!7027168))

(declare-fun m!7027170 () Bool)

(assert (=> bm!517976 m!7027170))

(declare-fun m!7027172 () Bool)

(assert (=> b!6193209 m!7027172))

(assert (=> b!6192421 d!1941621))

(declare-fun d!1941623 () Bool)

(assert (=> d!1941623 (= (nullable!6124 (h!71016 (exprs!6015 (h!71017 zl!343)))) (nullableFct!2082 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun bs!1536579 () Bool)

(assert (= bs!1536579 d!1941623))

(declare-fun m!7027174 () Bool)

(assert (=> bs!1536579 m!7027174))

(assert (=> b!6192421 d!1941623))

(declare-fun b!6193210 () Bool)

(declare-fun e!3771661 () (InoxSet Context!11030))

(declare-fun call!517982 () (InoxSet Context!11030))

(assert (=> b!6193210 (= e!3771661 call!517982)))

(declare-fun b!6193211 () Bool)

(assert (=> b!6193211 (= e!3771661 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941625 () Bool)

(declare-fun c!1117542 () Bool)

(declare-fun e!3771663 () Bool)

(assert (=> d!1941625 (= c!1117542 e!3771663)))

(declare-fun res!2561967 () Bool)

(assert (=> d!1941625 (=> (not res!2561967) (not e!3771663))))

(assert (=> d!1941625 (= res!2561967 ((_ is Cons!64568) (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun e!3771662 () (InoxSet Context!11030))

(assert (=> d!1941625 (= (derivationStepZipperUp!1305 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))) (h!71018 s!2326)) e!3771662)))

(declare-fun b!6193212 () Bool)

(assert (=> b!6193212 (= e!3771662 e!3771661)))

(declare-fun c!1117543 () Bool)

(assert (=> b!6193212 (= c!1117543 ((_ is Cons!64568) (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun b!6193213 () Bool)

(assert (=> b!6193213 (= e!3771662 ((_ map or) call!517982 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326))))))

(declare-fun bm!517977 () Bool)

(assert (=> bm!517977 (= call!517982 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326)))))

(declare-fun b!6193214 () Bool)

(assert (=> b!6193214 (= e!3771663 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(assert (= (and d!1941625 res!2561967) b!6193214))

(assert (= (and d!1941625 c!1117542) b!6193213))

(assert (= (and d!1941625 (not c!1117542)) b!6193212))

(assert (= (and b!6193212 c!1117543) b!6193210))

(assert (= (and b!6193212 (not c!1117543)) b!6193211))

(assert (= (or b!6193213 b!6193210) bm!517977))

(declare-fun m!7027176 () Bool)

(assert (=> b!6193213 m!7027176))

(declare-fun m!7027178 () Bool)

(assert (=> bm!517977 m!7027178))

(declare-fun m!7027180 () Bool)

(assert (=> b!6193214 m!7027180))

(assert (=> b!6192421 d!1941625))

(declare-fun d!1941627 () Bool)

(assert (=> d!1941627 (= (flatMap!1636 z!1189 lambda!338193) (choose!46008 z!1189 lambda!338193))))

(declare-fun bs!1536580 () Bool)

(assert (= bs!1536580 d!1941627))

(declare-fun m!7027182 () Bool)

(assert (=> bs!1536580 m!7027182))

(assert (=> b!6192421 d!1941627))

(declare-fun b!6193215 () Bool)

(declare-fun e!3771664 () (InoxSet Context!11030))

(declare-fun call!517983 () (InoxSet Context!11030))

(assert (=> b!6193215 (= e!3771664 call!517983)))

(declare-fun b!6193216 () Bool)

(declare-fun e!3771665 () (InoxSet Context!11030))

(assert (=> b!6193216 (= e!3771665 e!3771664)))

(declare-fun c!1117547 () Bool)

(assert (=> b!6193216 (= c!1117547 ((_ is Concat!24976) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193217 () Bool)

(declare-fun e!3771666 () (InoxSet Context!11030))

(declare-fun call!517984 () (InoxSet Context!11030))

(declare-fun call!517986 () (InoxSet Context!11030))

(assert (=> b!6193217 (= e!3771666 ((_ map or) call!517984 call!517986))))

(declare-fun b!6193218 () Bool)

(declare-fun e!3771667 () (InoxSet Context!11030))

(assert (=> b!6193218 (= e!3771667 ((as const (Array Context!11030 Bool)) false))))

(declare-fun bm!517978 () Bool)

(declare-fun c!1117544 () Bool)

(declare-fun call!517987 () List!64692)

(assert (=> bm!517978 (= call!517986 (derivationStepZipperDown!1379 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))) (ite c!1117544 lt!2341183 (Context!11031 call!517987)) (h!71018 s!2326)))))

(declare-fun b!6193219 () Bool)

(declare-fun e!3771669 () Bool)

(assert (=> b!6193219 (= e!3771669 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun c!1117545 () Bool)

(declare-fun bm!517979 () Bool)

(assert (=> bm!517979 (= call!517987 ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117545 c!1117547) (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71016 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun bm!517980 () Bool)

(declare-fun call!517985 () (InoxSet Context!11030))

(assert (=> bm!517980 (= call!517983 call!517985)))

(declare-fun bm!517981 () Bool)

(assert (=> bm!517981 (= call!517985 call!517984)))

(declare-fun bm!517982 () Bool)

(declare-fun call!517988 () List!64692)

(assert (=> bm!517982 (= call!517984 (derivationStepZipperDown!1379 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))) (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988)) (h!71018 s!2326)))))

(declare-fun b!6193220 () Bool)

(assert (=> b!6193220 (= c!1117545 e!3771669)))

(declare-fun res!2561968 () Bool)

(assert (=> b!6193220 (=> (not res!2561968) (not e!3771669))))

(assert (=> b!6193220 (= res!2561968 ((_ is Concat!24976) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6193220 (= e!3771666 e!3771665)))

(declare-fun b!6193221 () Bool)

(declare-fun e!3771668 () (InoxSet Context!11030))

(assert (=> b!6193221 (= e!3771668 (store ((as const (Array Context!11030 Bool)) false) lt!2341183 true))))

(declare-fun b!6193222 () Bool)

(assert (=> b!6193222 (= e!3771667 call!517983)))

(declare-fun d!1941629 () Bool)

(declare-fun c!1117546 () Bool)

(assert (=> d!1941629 (= c!1117546 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))) (= (c!1117312 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326))))))

(assert (=> d!1941629 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (h!71017 zl!343))) lt!2341183 (h!71018 s!2326)) e!3771668)))

(declare-fun bm!517983 () Bool)

(assert (=> bm!517983 (= call!517988 call!517987)))

(declare-fun b!6193223 () Bool)

(declare-fun c!1117548 () Bool)

(assert (=> b!6193223 (= c!1117548 ((_ is Star!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6193223 (= e!3771664 e!3771667)))

(declare-fun b!6193224 () Bool)

(assert (=> b!6193224 (= e!3771668 e!3771666)))

(assert (=> b!6193224 (= c!1117544 ((_ is Union!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193225 () Bool)

(assert (=> b!6193225 (= e!3771665 ((_ map or) call!517986 call!517985))))

(assert (= (and d!1941629 c!1117546) b!6193221))

(assert (= (and d!1941629 (not c!1117546)) b!6193224))

(assert (= (and b!6193224 c!1117544) b!6193217))

(assert (= (and b!6193224 (not c!1117544)) b!6193220))

(assert (= (and b!6193220 res!2561968) b!6193219))

(assert (= (and b!6193220 c!1117545) b!6193225))

(assert (= (and b!6193220 (not c!1117545)) b!6193216))

(assert (= (and b!6193216 c!1117547) b!6193215))

(assert (= (and b!6193216 (not c!1117547)) b!6193223))

(assert (= (and b!6193223 c!1117548) b!6193222))

(assert (= (and b!6193223 (not c!1117548)) b!6193218))

(assert (= (or b!6193215 b!6193222) bm!517983))

(assert (= (or b!6193215 b!6193222) bm!517980))

(assert (= (or b!6193225 bm!517983) bm!517979))

(assert (= (or b!6193225 bm!517980) bm!517981))

(assert (= (or b!6193217 b!6193225) bm!517978))

(assert (= (or b!6193217 bm!517981) bm!517982))

(declare-fun m!7027184 () Bool)

(assert (=> b!6193219 m!7027184))

(declare-fun m!7027186 () Bool)

(assert (=> bm!517982 m!7027186))

(declare-fun m!7027188 () Bool)

(assert (=> bm!517978 m!7027188))

(declare-fun m!7027190 () Bool)

(assert (=> bm!517979 m!7027190))

(assert (=> b!6193221 m!7027132))

(assert (=> b!6192421 d!1941629))

(declare-fun b!6193226 () Bool)

(declare-fun e!3771670 () (InoxSet Context!11030))

(declare-fun call!517989 () (InoxSet Context!11030))

(assert (=> b!6193226 (= e!3771670 call!517989)))

(declare-fun b!6193227 () Bool)

(assert (=> b!6193227 (= e!3771670 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941631 () Bool)

(declare-fun c!1117549 () Bool)

(declare-fun e!3771672 () Bool)

(assert (=> d!1941631 (= c!1117549 e!3771672)))

(declare-fun res!2561969 () Bool)

(assert (=> d!1941631 (=> (not res!2561969) (not e!3771672))))

(assert (=> d!1941631 (= res!2561969 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343))))))

(declare-fun e!3771671 () (InoxSet Context!11030))

(assert (=> d!1941631 (= (derivationStepZipperUp!1305 (h!71017 zl!343) (h!71018 s!2326)) e!3771671)))

(declare-fun b!6193228 () Bool)

(assert (=> b!6193228 (= e!3771671 e!3771670)))

(declare-fun c!1117550 () Bool)

(assert (=> b!6193228 (= c!1117550 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343))))))

(declare-fun b!6193229 () Bool)

(assert (=> b!6193229 (= e!3771671 ((_ map or) call!517989 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326))))))

(declare-fun bm!517984 () Bool)

(assert (=> bm!517984 (= call!517989 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (h!71017 zl!343))) (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326)))))

(declare-fun b!6193230 () Bool)

(assert (=> b!6193230 (= e!3771672 (nullable!6124 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (= (and d!1941631 res!2561969) b!6193230))

(assert (= (and d!1941631 c!1117549) b!6193229))

(assert (= (and d!1941631 (not c!1117549)) b!6193228))

(assert (= (and b!6193228 c!1117550) b!6193226))

(assert (= (and b!6193228 (not c!1117550)) b!6193227))

(assert (= (or b!6193229 b!6193226) bm!517984))

(declare-fun m!7027192 () Bool)

(assert (=> b!6193229 m!7027192))

(declare-fun m!7027194 () Bool)

(assert (=> bm!517984 m!7027194))

(assert (=> b!6193230 m!7026536))

(assert (=> b!6192421 d!1941631))

(declare-fun d!1941633 () Bool)

(assert (=> d!1941633 (= (flatMap!1636 z!1189 lambda!338193) (dynLambda!25462 lambda!338193 (h!71017 zl!343)))))

(declare-fun lt!2341309 () Unit!157827)

(assert (=> d!1941633 (= lt!2341309 (choose!46006 z!1189 (h!71017 zl!343) lambda!338193))))

(assert (=> d!1941633 (= z!1189 (store ((as const (Array Context!11030 Bool)) false) (h!71017 zl!343) true))))

(assert (=> d!1941633 (= (lemmaFlatMapOnSingletonSet!1162 z!1189 (h!71017 zl!343) lambda!338193) lt!2341309)))

(declare-fun b_lambda!235621 () Bool)

(assert (=> (not b_lambda!235621) (not d!1941633)))

(declare-fun bs!1536581 () Bool)

(assert (= bs!1536581 d!1941633))

(assert (=> bs!1536581 m!7026528))

(declare-fun m!7027196 () Bool)

(assert (=> bs!1536581 m!7027196))

(declare-fun m!7027198 () Bool)

(assert (=> bs!1536581 m!7027198))

(declare-fun m!7027200 () Bool)

(assert (=> bs!1536581 m!7027200))

(assert (=> b!6192421 d!1941633))

(declare-fun d!1941635 () Bool)

(declare-fun e!3771675 () Bool)

(assert (=> d!1941635 (= (matchZipper!2143 ((_ map or) lt!2341188 lt!2341164) (t!378206 s!2326)) e!3771675)))

(declare-fun res!2561972 () Bool)

(assert (=> d!1941635 (=> res!2561972 e!3771675)))

(assert (=> d!1941635 (= res!2561972 (matchZipper!2143 lt!2341188 (t!378206 s!2326)))))

(declare-fun lt!2341312 () Unit!157827)

(declare-fun choose!46013 ((InoxSet Context!11030) (InoxSet Context!11030) List!64694) Unit!157827)

(assert (=> d!1941635 (= lt!2341312 (choose!46013 lt!2341188 lt!2341164 (t!378206 s!2326)))))

(assert (=> d!1941635 (= (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341188 lt!2341164 (t!378206 s!2326)) lt!2341312)))

(declare-fun b!6193233 () Bool)

(assert (=> b!6193233 (= e!3771675 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1941635 (not res!2561972)) b!6193233))

(assert (=> d!1941635 m!7026482))

(assert (=> d!1941635 m!7026480))

(declare-fun m!7027202 () Bool)

(assert (=> d!1941635 m!7027202))

(assert (=> b!6193233 m!7026452))

(assert (=> b!6192445 d!1941635))

(declare-fun d!1941637 () Bool)

(declare-fun c!1117551 () Bool)

(assert (=> d!1941637 (= c!1117551 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771676 () Bool)

(assert (=> d!1941637 (= (matchZipper!2143 lt!2341188 (t!378206 s!2326)) e!3771676)))

(declare-fun b!6193234 () Bool)

(assert (=> b!6193234 (= e!3771676 (nullableZipper!1907 lt!2341188))))

(declare-fun b!6193235 () Bool)

(assert (=> b!6193235 (= e!3771676 (matchZipper!2143 (derivationStepZipper!2099 lt!2341188 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941637 c!1117551) b!6193234))

(assert (= (and d!1941637 (not c!1117551)) b!6193235))

(assert (=> d!1941637 m!7026800))

(declare-fun m!7027204 () Bool)

(assert (=> b!6193234 m!7027204))

(assert (=> b!6193235 m!7026804))

(assert (=> b!6193235 m!7026804))

(declare-fun m!7027206 () Bool)

(assert (=> b!6193235 m!7027206))

(assert (=> b!6193235 m!7026810))

(assert (=> b!6193235 m!7027206))

(assert (=> b!6193235 m!7026810))

(declare-fun m!7027208 () Bool)

(assert (=> b!6193235 m!7027208))

(assert (=> b!6192445 d!1941637))

(declare-fun d!1941639 () Bool)

(declare-fun c!1117552 () Bool)

(assert (=> d!1941639 (= c!1117552 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771677 () Bool)

(assert (=> d!1941639 (= (matchZipper!2143 ((_ map or) lt!2341188 lt!2341164) (t!378206 s!2326)) e!3771677)))

(declare-fun b!6193236 () Bool)

(assert (=> b!6193236 (= e!3771677 (nullableZipper!1907 ((_ map or) lt!2341188 lt!2341164)))))

(declare-fun b!6193237 () Bool)

(assert (=> b!6193237 (= e!3771677 (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341188 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941639 c!1117552) b!6193236))

(assert (= (and d!1941639 (not c!1117552)) b!6193237))

(assert (=> d!1941639 m!7026800))

(declare-fun m!7027210 () Bool)

(assert (=> b!6193236 m!7027210))

(assert (=> b!6193237 m!7026804))

(assert (=> b!6193237 m!7026804))

(declare-fun m!7027212 () Bool)

(assert (=> b!6193237 m!7027212))

(assert (=> b!6193237 m!7026810))

(assert (=> b!6193237 m!7027212))

(assert (=> b!6193237 m!7026810))

(declare-fun m!7027214 () Bool)

(assert (=> b!6193237 m!7027214))

(assert (=> b!6192445 d!1941639))

(declare-fun e!3771678 () Bool)

(declare-fun d!1941641 () Bool)

(assert (=> d!1941641 (= (matchZipper!2143 ((_ map or) lt!2341166 lt!2341164) (t!378206 s!2326)) e!3771678)))

(declare-fun res!2561973 () Bool)

(assert (=> d!1941641 (=> res!2561973 e!3771678)))

(assert (=> d!1941641 (= res!2561973 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(declare-fun lt!2341313 () Unit!157827)

(assert (=> d!1941641 (= lt!2341313 (choose!46013 lt!2341166 lt!2341164 (t!378206 s!2326)))))

(assert (=> d!1941641 (= (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341166 lt!2341164 (t!378206 s!2326)) lt!2341313)))

(declare-fun b!6193238 () Bool)

(assert (=> b!6193238 (= e!3771678 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1941641 (not res!2561973)) b!6193238))

(assert (=> d!1941641 m!7026504))

(assert (=> d!1941641 m!7026492))

(declare-fun m!7027216 () Bool)

(assert (=> d!1941641 m!7027216))

(assert (=> b!6193238 m!7026452))

(assert (=> b!6192425 d!1941641))

(declare-fun d!1941643 () Bool)

(declare-fun c!1117553 () Bool)

(assert (=> d!1941643 (= c!1117553 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771679 () Bool)

(assert (=> d!1941643 (= (matchZipper!2143 lt!2341166 (t!378206 s!2326)) e!3771679)))

(declare-fun b!6193239 () Bool)

(assert (=> b!6193239 (= e!3771679 (nullableZipper!1907 lt!2341166))))

(declare-fun b!6193240 () Bool)

(assert (=> b!6193240 (= e!3771679 (matchZipper!2143 (derivationStepZipper!2099 lt!2341166 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941643 c!1117553) b!6193239))

(assert (= (and d!1941643 (not c!1117553)) b!6193240))

(assert (=> d!1941643 m!7026800))

(declare-fun m!7027218 () Bool)

(assert (=> b!6193239 m!7027218))

(assert (=> b!6193240 m!7026804))

(assert (=> b!6193240 m!7026804))

(declare-fun m!7027220 () Bool)

(assert (=> b!6193240 m!7027220))

(assert (=> b!6193240 m!7026810))

(assert (=> b!6193240 m!7027220))

(assert (=> b!6193240 m!7026810))

(declare-fun m!7027222 () Bool)

(assert (=> b!6193240 m!7027222))

(assert (=> b!6192425 d!1941643))

(declare-fun d!1941645 () Bool)

(declare-fun c!1117554 () Bool)

(assert (=> d!1941645 (= c!1117554 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771680 () Bool)

(assert (=> d!1941645 (= (matchZipper!2143 ((_ map or) lt!2341166 lt!2341164) (t!378206 s!2326)) e!3771680)))

(declare-fun b!6193241 () Bool)

(assert (=> b!6193241 (= e!3771680 (nullableZipper!1907 ((_ map or) lt!2341166 lt!2341164)))))

(declare-fun b!6193242 () Bool)

(assert (=> b!6193242 (= e!3771680 (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341166 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941645 c!1117554) b!6193241))

(assert (= (and d!1941645 (not c!1117554)) b!6193242))

(assert (=> d!1941645 m!7026800))

(declare-fun m!7027224 () Bool)

(assert (=> b!6193241 m!7027224))

(assert (=> b!6193242 m!7026804))

(assert (=> b!6193242 m!7026804))

(declare-fun m!7027226 () Bool)

(assert (=> b!6193242 m!7027226))

(assert (=> b!6193242 m!7026810))

(assert (=> b!6193242 m!7027226))

(assert (=> b!6193242 m!7026810))

(declare-fun m!7027228 () Bool)

(assert (=> b!6193242 m!7027228))

(assert (=> b!6192425 d!1941645))

(assert (=> b!6192444 d!1941637))

(declare-fun d!1941647 () Bool)

(declare-fun c!1117555 () Bool)

(assert (=> d!1941647 (= c!1117555 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771681 () Bool)

(assert (=> d!1941647 (= (matchZipper!2143 lt!2341165 (t!378206 s!2326)) e!3771681)))

(declare-fun b!6193243 () Bool)

(assert (=> b!6193243 (= e!3771681 (nullableZipper!1907 lt!2341165))))

(declare-fun b!6193244 () Bool)

(assert (=> b!6193244 (= e!3771681 (matchZipper!2143 (derivationStepZipper!2099 lt!2341165 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941647 c!1117555) b!6193243))

(assert (= (and d!1941647 (not c!1117555)) b!6193244))

(assert (=> d!1941647 m!7026800))

(declare-fun m!7027230 () Bool)

(assert (=> b!6193243 m!7027230))

(assert (=> b!6193244 m!7026804))

(assert (=> b!6193244 m!7026804))

(declare-fun m!7027232 () Bool)

(assert (=> b!6193244 m!7027232))

(assert (=> b!6193244 m!7026810))

(assert (=> b!6193244 m!7027232))

(assert (=> b!6193244 m!7026810))

(declare-fun m!7027234 () Bool)

(assert (=> b!6193244 m!7027234))

(assert (=> b!6192444 d!1941647))

(declare-fun d!1941649 () Bool)

(declare-fun c!1117556 () Bool)

(assert (=> d!1941649 (= c!1117556 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771682 () Bool)

(assert (=> d!1941649 (= (matchZipper!2143 lt!2341182 (t!378206 s!2326)) e!3771682)))

(declare-fun b!6193245 () Bool)

(assert (=> b!6193245 (= e!3771682 (nullableZipper!1907 lt!2341182))))

(declare-fun b!6193246 () Bool)

(assert (=> b!6193246 (= e!3771682 (matchZipper!2143 (derivationStepZipper!2099 lt!2341182 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941649 c!1117556) b!6193245))

(assert (= (and d!1941649 (not c!1117556)) b!6193246))

(assert (=> d!1941649 m!7026800))

(declare-fun m!7027236 () Bool)

(assert (=> b!6193245 m!7027236))

(assert (=> b!6193246 m!7026804))

(assert (=> b!6193246 m!7026804))

(declare-fun m!7027238 () Bool)

(assert (=> b!6193246 m!7027238))

(assert (=> b!6193246 m!7026810))

(assert (=> b!6193246 m!7027238))

(assert (=> b!6193246 m!7026810))

(declare-fun m!7027240 () Bool)

(assert (=> b!6193246 m!7027240))

(assert (=> b!6192444 d!1941649))

(declare-fun e!3771683 () Bool)

(declare-fun d!1941651 () Bool)

(assert (=> d!1941651 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341166) (t!378206 s!2326)) e!3771683)))

(declare-fun res!2561974 () Bool)

(assert (=> d!1941651 (=> res!2561974 e!3771683)))

(assert (=> d!1941651 (= res!2561974 (matchZipper!2143 lt!2341182 (t!378206 s!2326)))))

(declare-fun lt!2341314 () Unit!157827)

(assert (=> d!1941651 (= lt!2341314 (choose!46013 lt!2341182 lt!2341166 (t!378206 s!2326)))))

(assert (=> d!1941651 (= (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341182 lt!2341166 (t!378206 s!2326)) lt!2341314)))

(declare-fun b!6193247 () Bool)

(assert (=> b!6193247 (= e!3771683 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(assert (= (and d!1941651 (not res!2561974)) b!6193247))

(declare-fun m!7027242 () Bool)

(assert (=> d!1941651 m!7027242))

(assert (=> d!1941651 m!7026496))

(declare-fun m!7027244 () Bool)

(assert (=> d!1941651 m!7027244))

(assert (=> b!6193247 m!7026492))

(assert (=> b!6192444 d!1941651))

(declare-fun b!6193248 () Bool)

(declare-fun e!3771690 () Bool)

(assert (=> b!6193248 (= e!3771690 (= (head!12774 s!2326) (c!1117312 lt!2341177)))))

(declare-fun b!6193249 () Bool)

(declare-fun res!2561979 () Bool)

(assert (=> b!6193249 (=> (not res!2561979) (not e!3771690))))

(assert (=> b!6193249 (= res!2561979 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6193250 () Bool)

(declare-fun res!2561980 () Bool)

(declare-fun e!3771684 () Bool)

(assert (=> b!6193250 (=> res!2561980 e!3771684)))

(assert (=> b!6193250 (= res!2561980 (not ((_ is ElementMatch!16131) lt!2341177)))))

(declare-fun e!3771686 () Bool)

(assert (=> b!6193250 (= e!3771686 e!3771684)))

(declare-fun b!6193251 () Bool)

(declare-fun e!3771685 () Bool)

(declare-fun e!3771687 () Bool)

(assert (=> b!6193251 (= e!3771685 e!3771687)))

(declare-fun res!2561978 () Bool)

(assert (=> b!6193251 (=> res!2561978 e!3771687)))

(declare-fun call!517990 () Bool)

(assert (=> b!6193251 (= res!2561978 call!517990)))

(declare-fun b!6193252 () Bool)

(declare-fun e!3771688 () Bool)

(assert (=> b!6193252 (= e!3771688 (matchR!8314 (derivativeStep!4846 lt!2341177 (head!12774 s!2326)) (tail!11859 s!2326)))))

(declare-fun b!6193253 () Bool)

(declare-fun res!2561975 () Bool)

(assert (=> b!6193253 (=> res!2561975 e!3771687)))

(assert (=> b!6193253 (= res!2561975 (not (isEmpty!36557 (tail!11859 s!2326))))))

(declare-fun b!6193254 () Bool)

(assert (=> b!6193254 (= e!3771688 (nullable!6124 lt!2341177))))

(declare-fun bm!517985 () Bool)

(assert (=> bm!517985 (= call!517990 (isEmpty!36557 s!2326))))

(declare-fun b!6193256 () Bool)

(declare-fun e!3771689 () Bool)

(declare-fun lt!2341315 () Bool)

(assert (=> b!6193256 (= e!3771689 (= lt!2341315 call!517990))))

(declare-fun b!6193257 () Bool)

(assert (=> b!6193257 (= e!3771687 (not (= (head!12774 s!2326) (c!1117312 lt!2341177))))))

(declare-fun b!6193255 () Bool)

(assert (=> b!6193255 (= e!3771689 e!3771686)))

(declare-fun c!1117559 () Bool)

(assert (=> b!6193255 (= c!1117559 ((_ is EmptyLang!16131) lt!2341177))))

(declare-fun d!1941653 () Bool)

(assert (=> d!1941653 e!3771689))

(declare-fun c!1117558 () Bool)

(assert (=> d!1941653 (= c!1117558 ((_ is EmptyExpr!16131) lt!2341177))))

(assert (=> d!1941653 (= lt!2341315 e!3771688)))

(declare-fun c!1117557 () Bool)

(assert (=> d!1941653 (= c!1117557 (isEmpty!36557 s!2326))))

(assert (=> d!1941653 (validRegex!7867 lt!2341177)))

(assert (=> d!1941653 (= (matchR!8314 lt!2341177 s!2326) lt!2341315)))

(declare-fun b!6193258 () Bool)

(assert (=> b!6193258 (= e!3771684 e!3771685)))

(declare-fun res!2561982 () Bool)

(assert (=> b!6193258 (=> (not res!2561982) (not e!3771685))))

(assert (=> b!6193258 (= res!2561982 (not lt!2341315))))

(declare-fun b!6193259 () Bool)

(declare-fun res!2561977 () Bool)

(assert (=> b!6193259 (=> res!2561977 e!3771684)))

(assert (=> b!6193259 (= res!2561977 e!3771690)))

(declare-fun res!2561981 () Bool)

(assert (=> b!6193259 (=> (not res!2561981) (not e!3771690))))

(assert (=> b!6193259 (= res!2561981 lt!2341315)))

(declare-fun b!6193260 () Bool)

(declare-fun res!2561976 () Bool)

(assert (=> b!6193260 (=> (not res!2561976) (not e!3771690))))

(assert (=> b!6193260 (= res!2561976 (not call!517990))))

(declare-fun b!6193261 () Bool)

(assert (=> b!6193261 (= e!3771686 (not lt!2341315))))

(assert (= (and d!1941653 c!1117557) b!6193254))

(assert (= (and d!1941653 (not c!1117557)) b!6193252))

(assert (= (and d!1941653 c!1117558) b!6193256))

(assert (= (and d!1941653 (not c!1117558)) b!6193255))

(assert (= (and b!6193255 c!1117559) b!6193261))

(assert (= (and b!6193255 (not c!1117559)) b!6193250))

(assert (= (and b!6193250 (not res!2561980)) b!6193259))

(assert (= (and b!6193259 res!2561981) b!6193260))

(assert (= (and b!6193260 res!2561976) b!6193249))

(assert (= (and b!6193249 res!2561979) b!6193248))

(assert (= (and b!6193259 (not res!2561977)) b!6193258))

(assert (= (and b!6193258 res!2561982) b!6193251))

(assert (= (and b!6193251 (not res!2561978)) b!6193253))

(assert (= (and b!6193253 (not res!2561975)) b!6193257))

(assert (= (or b!6193256 b!6193251 b!6193260) bm!517985))

(assert (=> d!1941653 m!7026692))

(declare-fun m!7027246 () Bool)

(assert (=> d!1941653 m!7027246))

(assert (=> b!6193252 m!7026736))

(assert (=> b!6193252 m!7026736))

(declare-fun m!7027248 () Bool)

(assert (=> b!6193252 m!7027248))

(assert (=> b!6193252 m!7026740))

(assert (=> b!6193252 m!7027248))

(assert (=> b!6193252 m!7026740))

(declare-fun m!7027250 () Bool)

(assert (=> b!6193252 m!7027250))

(assert (=> bm!517985 m!7026692))

(assert (=> b!6193249 m!7026740))

(assert (=> b!6193249 m!7026740))

(assert (=> b!6193249 m!7026744))

(assert (=> b!6193248 m!7026736))

(assert (=> b!6193253 m!7026740))

(assert (=> b!6193253 m!7026740))

(assert (=> b!6193253 m!7026744))

(declare-fun m!7027252 () Bool)

(assert (=> b!6193254 m!7027252))

(assert (=> b!6193257 m!7026736))

(assert (=> b!6192443 d!1941653))

(declare-fun d!1941655 () Bool)

(assert (=> d!1941655 (= (matchR!8314 lt!2341185 s!2326) (matchRSpec!3232 lt!2341185 s!2326))))

(declare-fun lt!2341316 () Unit!157827)

(assert (=> d!1941655 (= lt!2341316 (choose!46001 lt!2341185 s!2326))))

(assert (=> d!1941655 (validRegex!7867 lt!2341185)))

(assert (=> d!1941655 (= (mainMatchTheorem!3232 lt!2341185 s!2326) lt!2341316)))

(declare-fun bs!1536582 () Bool)

(assert (= bs!1536582 d!1941655))

(assert (=> bs!1536582 m!7026522))

(assert (=> bs!1536582 m!7026508))

(declare-fun m!7027254 () Bool)

(assert (=> bs!1536582 m!7027254))

(declare-fun m!7027256 () Bool)

(assert (=> bs!1536582 m!7027256))

(assert (=> b!6192443 d!1941655))

(declare-fun d!1941657 () Bool)

(assert (=> d!1941657 (= (matchR!8314 lt!2341185 s!2326) (matchZipper!2143 lt!2341195 s!2326))))

(declare-fun lt!2341319 () Unit!157827)

(declare-fun choose!46015 ((InoxSet Context!11030) List!64693 Regex!16131 List!64694) Unit!157827)

(assert (=> d!1941657 (= lt!2341319 (choose!46015 lt!2341195 lt!2341171 lt!2341185 s!2326))))

(assert (=> d!1941657 (validRegex!7867 lt!2341185)))

(assert (=> d!1941657 (= (theoremZipperRegexEquiv!743 lt!2341195 lt!2341171 lt!2341185 s!2326) lt!2341319)))

(declare-fun bs!1536583 () Bool)

(assert (= bs!1536583 d!1941657))

(assert (=> bs!1536583 m!7026522))

(assert (=> bs!1536583 m!7026584))

(declare-fun m!7027258 () Bool)

(assert (=> bs!1536583 m!7027258))

(assert (=> bs!1536583 m!7027256))

(assert (=> b!6192443 d!1941657))

(declare-fun bs!1536584 () Bool)

(declare-fun d!1941659 () Bool)

(assert (= bs!1536584 (and d!1941659 d!1941595)))

(declare-fun lambda!338256 () Int)

(assert (=> bs!1536584 (= lambda!338256 lambda!338245)))

(declare-fun bs!1536585 () Bool)

(assert (= bs!1536585 (and d!1941659 d!1941615)))

(assert (=> bs!1536585 (= lambda!338256 lambda!338249)))

(declare-fun bs!1536586 () Bool)

(assert (= bs!1536586 (and d!1941659 d!1941617)))

(assert (=> bs!1536586 (= lambda!338256 lambda!338252)))

(declare-fun bs!1536587 () Bool)

(assert (= bs!1536587 (and d!1941659 d!1941619)))

(assert (=> bs!1536587 (= lambda!338256 lambda!338253)))

(declare-fun b!6193282 () Bool)

(declare-fun e!3771708 () Regex!16131)

(assert (=> b!6193282 (= e!3771708 (Concat!24976 (h!71016 lt!2341202) (generalisedConcat!1728 (t!378204 lt!2341202))))))

(declare-fun b!6193284 () Bool)

(declare-fun e!3771703 () Regex!16131)

(assert (=> b!6193284 (= e!3771703 e!3771708)))

(declare-fun c!1117570 () Bool)

(assert (=> b!6193284 (= c!1117570 ((_ is Cons!64568) lt!2341202))))

(declare-fun b!6193285 () Bool)

(declare-fun e!3771705 () Bool)

(declare-fun lt!2341322 () Regex!16131)

(declare-fun isEmptyExpr!1543 (Regex!16131) Bool)

(assert (=> b!6193285 (= e!3771705 (isEmptyExpr!1543 lt!2341322))))

(declare-fun b!6193286 () Bool)

(assert (=> b!6193286 (= e!3771708 EmptyExpr!16131)))

(declare-fun b!6193287 () Bool)

(assert (=> b!6193287 (= e!3771703 (h!71016 lt!2341202))))

(declare-fun b!6193288 () Bool)

(declare-fun e!3771706 () Bool)

(assert (=> b!6193288 (= e!3771705 e!3771706)))

(declare-fun c!1117569 () Bool)

(assert (=> b!6193288 (= c!1117569 (isEmpty!36555 (tail!11860 lt!2341202)))))

(declare-fun b!6193289 () Bool)

(declare-fun e!3771704 () Bool)

(assert (=> b!6193289 (= e!3771704 (isEmpty!36555 (t!378204 lt!2341202)))))

(declare-fun b!6193283 () Bool)

(declare-fun isConcat!1066 (Regex!16131) Bool)

(assert (=> b!6193283 (= e!3771706 (isConcat!1066 lt!2341322))))

(declare-fun e!3771707 () Bool)

(assert (=> d!1941659 e!3771707))

(declare-fun res!2561988 () Bool)

(assert (=> d!1941659 (=> (not res!2561988) (not e!3771707))))

(assert (=> d!1941659 (= res!2561988 (validRegex!7867 lt!2341322))))

(assert (=> d!1941659 (= lt!2341322 e!3771703)))

(declare-fun c!1117568 () Bool)

(assert (=> d!1941659 (= c!1117568 e!3771704)))

(declare-fun res!2561987 () Bool)

(assert (=> d!1941659 (=> (not res!2561987) (not e!3771704))))

(assert (=> d!1941659 (= res!2561987 ((_ is Cons!64568) lt!2341202))))

(assert (=> d!1941659 (forall!15247 lt!2341202 lambda!338256)))

(assert (=> d!1941659 (= (generalisedConcat!1728 lt!2341202) lt!2341322)))

(declare-fun b!6193290 () Bool)

(assert (=> b!6193290 (= e!3771706 (= lt!2341322 (head!12775 lt!2341202)))))

(declare-fun b!6193291 () Bool)

(assert (=> b!6193291 (= e!3771707 e!3771705)))

(declare-fun c!1117571 () Bool)

(assert (=> b!6193291 (= c!1117571 (isEmpty!36555 lt!2341202))))

(assert (= (and d!1941659 res!2561987) b!6193289))

(assert (= (and d!1941659 c!1117568) b!6193287))

(assert (= (and d!1941659 (not c!1117568)) b!6193284))

(assert (= (and b!6193284 c!1117570) b!6193282))

(assert (= (and b!6193284 (not c!1117570)) b!6193286))

(assert (= (and d!1941659 res!2561988) b!6193291))

(assert (= (and b!6193291 c!1117571) b!6193285))

(assert (= (and b!6193291 (not c!1117571)) b!6193288))

(assert (= (and b!6193288 c!1117569) b!6193290))

(assert (= (and b!6193288 (not c!1117569)) b!6193283))

(declare-fun m!7027260 () Bool)

(assert (=> b!6193289 m!7027260))

(declare-fun m!7027262 () Bool)

(assert (=> b!6193282 m!7027262))

(declare-fun m!7027264 () Bool)

(assert (=> b!6193288 m!7027264))

(assert (=> b!6193288 m!7027264))

(declare-fun m!7027266 () Bool)

(assert (=> b!6193288 m!7027266))

(declare-fun m!7027268 () Bool)

(assert (=> b!6193283 m!7027268))

(declare-fun m!7027270 () Bool)

(assert (=> d!1941659 m!7027270))

(declare-fun m!7027272 () Bool)

(assert (=> d!1941659 m!7027272))

(declare-fun m!7027274 () Bool)

(assert (=> b!6193285 m!7027274))

(declare-fun m!7027276 () Bool)

(assert (=> b!6193290 m!7027276))

(declare-fun m!7027278 () Bool)

(assert (=> b!6193291 m!7027278))

(assert (=> b!6192443 d!1941659))

(declare-fun d!1941661 () Bool)

(assert (=> d!1941661 (= (matchR!8314 lt!2341177 s!2326) (matchRSpec!3232 lt!2341177 s!2326))))

(declare-fun lt!2341323 () Unit!157827)

(assert (=> d!1941661 (= lt!2341323 (choose!46001 lt!2341177 s!2326))))

(assert (=> d!1941661 (validRegex!7867 lt!2341177)))

(assert (=> d!1941661 (= (mainMatchTheorem!3232 lt!2341177 s!2326) lt!2341323)))

(declare-fun bs!1536588 () Bool)

(assert (= bs!1536588 d!1941661))

(assert (=> bs!1536588 m!7026518))

(assert (=> bs!1536588 m!7026506))

(declare-fun m!7027280 () Bool)

(assert (=> bs!1536588 m!7027280))

(assert (=> bs!1536588 m!7027246))

(assert (=> b!6192443 d!1941661))

(declare-fun d!1941663 () Bool)

(assert (=> d!1941663 (= (matchR!8314 lt!2341177 s!2326) (matchZipper!2143 lt!2341186 s!2326))))

(declare-fun lt!2341324 () Unit!157827)

(assert (=> d!1941663 (= lt!2341324 (choose!46015 lt!2341186 lt!2341181 lt!2341177 s!2326))))

(assert (=> d!1941663 (validRegex!7867 lt!2341177)))

(assert (=> d!1941663 (= (theoremZipperRegexEquiv!743 lt!2341186 lt!2341181 lt!2341177 s!2326) lt!2341324)))

(declare-fun bs!1536589 () Bool)

(assert (= bs!1536589 d!1941663))

(assert (=> bs!1536589 m!7026518))

(assert (=> bs!1536589 m!7026488))

(declare-fun m!7027282 () Bool)

(assert (=> bs!1536589 m!7027282))

(assert (=> bs!1536589 m!7027246))

(assert (=> b!6192443 d!1941663))

(assert (=> b!6192443 d!1941591))

(declare-fun b!6193292 () Bool)

(declare-fun e!3771715 () Bool)

(assert (=> b!6193292 (= e!3771715 (= (head!12774 s!2326) (c!1117312 lt!2341185)))))

(declare-fun b!6193293 () Bool)

(declare-fun res!2561993 () Bool)

(assert (=> b!6193293 (=> (not res!2561993) (not e!3771715))))

(assert (=> b!6193293 (= res!2561993 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6193294 () Bool)

(declare-fun res!2561994 () Bool)

(declare-fun e!3771709 () Bool)

(assert (=> b!6193294 (=> res!2561994 e!3771709)))

(assert (=> b!6193294 (= res!2561994 (not ((_ is ElementMatch!16131) lt!2341185)))))

(declare-fun e!3771711 () Bool)

(assert (=> b!6193294 (= e!3771711 e!3771709)))

(declare-fun b!6193295 () Bool)

(declare-fun e!3771710 () Bool)

(declare-fun e!3771712 () Bool)

(assert (=> b!6193295 (= e!3771710 e!3771712)))

(declare-fun res!2561992 () Bool)

(assert (=> b!6193295 (=> res!2561992 e!3771712)))

(declare-fun call!517991 () Bool)

(assert (=> b!6193295 (= res!2561992 call!517991)))

(declare-fun b!6193296 () Bool)

(declare-fun e!3771713 () Bool)

(assert (=> b!6193296 (= e!3771713 (matchR!8314 (derivativeStep!4846 lt!2341185 (head!12774 s!2326)) (tail!11859 s!2326)))))

(declare-fun b!6193297 () Bool)

(declare-fun res!2561989 () Bool)

(assert (=> b!6193297 (=> res!2561989 e!3771712)))

(assert (=> b!6193297 (= res!2561989 (not (isEmpty!36557 (tail!11859 s!2326))))))

(declare-fun b!6193298 () Bool)

(assert (=> b!6193298 (= e!3771713 (nullable!6124 lt!2341185))))

(declare-fun bm!517986 () Bool)

(assert (=> bm!517986 (= call!517991 (isEmpty!36557 s!2326))))

(declare-fun b!6193300 () Bool)

(declare-fun e!3771714 () Bool)

(declare-fun lt!2341325 () Bool)

(assert (=> b!6193300 (= e!3771714 (= lt!2341325 call!517991))))

(declare-fun b!6193301 () Bool)

(assert (=> b!6193301 (= e!3771712 (not (= (head!12774 s!2326) (c!1117312 lt!2341185))))))

(declare-fun b!6193299 () Bool)

(assert (=> b!6193299 (= e!3771714 e!3771711)))

(declare-fun c!1117574 () Bool)

(assert (=> b!6193299 (= c!1117574 ((_ is EmptyLang!16131) lt!2341185))))

(declare-fun d!1941665 () Bool)

(assert (=> d!1941665 e!3771714))

(declare-fun c!1117573 () Bool)

(assert (=> d!1941665 (= c!1117573 ((_ is EmptyExpr!16131) lt!2341185))))

(assert (=> d!1941665 (= lt!2341325 e!3771713)))

(declare-fun c!1117572 () Bool)

(assert (=> d!1941665 (= c!1117572 (isEmpty!36557 s!2326))))

(assert (=> d!1941665 (validRegex!7867 lt!2341185)))

(assert (=> d!1941665 (= (matchR!8314 lt!2341185 s!2326) lt!2341325)))

(declare-fun b!6193302 () Bool)

(assert (=> b!6193302 (= e!3771709 e!3771710)))

(declare-fun res!2561996 () Bool)

(assert (=> b!6193302 (=> (not res!2561996) (not e!3771710))))

(assert (=> b!6193302 (= res!2561996 (not lt!2341325))))

(declare-fun b!6193303 () Bool)

(declare-fun res!2561991 () Bool)

(assert (=> b!6193303 (=> res!2561991 e!3771709)))

(assert (=> b!6193303 (= res!2561991 e!3771715)))

(declare-fun res!2561995 () Bool)

(assert (=> b!6193303 (=> (not res!2561995) (not e!3771715))))

(assert (=> b!6193303 (= res!2561995 lt!2341325)))

(declare-fun b!6193304 () Bool)

(declare-fun res!2561990 () Bool)

(assert (=> b!6193304 (=> (not res!2561990) (not e!3771715))))

(assert (=> b!6193304 (= res!2561990 (not call!517991))))

(declare-fun b!6193305 () Bool)

(assert (=> b!6193305 (= e!3771711 (not lt!2341325))))

(assert (= (and d!1941665 c!1117572) b!6193298))

(assert (= (and d!1941665 (not c!1117572)) b!6193296))

(assert (= (and d!1941665 c!1117573) b!6193300))

(assert (= (and d!1941665 (not c!1117573)) b!6193299))

(assert (= (and b!6193299 c!1117574) b!6193305))

(assert (= (and b!6193299 (not c!1117574)) b!6193294))

(assert (= (and b!6193294 (not res!2561994)) b!6193303))

(assert (= (and b!6193303 res!2561995) b!6193304))

(assert (= (and b!6193304 res!2561990) b!6193293))

(assert (= (and b!6193293 res!2561993) b!6193292))

(assert (= (and b!6193303 (not res!2561991)) b!6193302))

(assert (= (and b!6193302 res!2561996) b!6193295))

(assert (= (and b!6193295 (not res!2561992)) b!6193297))

(assert (= (and b!6193297 (not res!2561989)) b!6193301))

(assert (= (or b!6193300 b!6193295 b!6193304) bm!517986))

(assert (=> d!1941665 m!7026692))

(assert (=> d!1941665 m!7027256))

(assert (=> b!6193296 m!7026736))

(assert (=> b!6193296 m!7026736))

(declare-fun m!7027284 () Bool)

(assert (=> b!6193296 m!7027284))

(assert (=> b!6193296 m!7026740))

(assert (=> b!6193296 m!7027284))

(assert (=> b!6193296 m!7026740))

(declare-fun m!7027286 () Bool)

(assert (=> b!6193296 m!7027286))

(assert (=> bm!517986 m!7026692))

(assert (=> b!6193293 m!7026740))

(assert (=> b!6193293 m!7026740))

(assert (=> b!6193293 m!7026744))

(assert (=> b!6193292 m!7026736))

(assert (=> b!6193297 m!7026740))

(assert (=> b!6193297 m!7026740))

(assert (=> b!6193297 m!7026744))

(declare-fun m!7027288 () Bool)

(assert (=> b!6193298 m!7027288))

(assert (=> b!6193301 m!7026736))

(assert (=> b!6192443 d!1941665))

(declare-fun bs!1536590 () Bool)

(declare-fun d!1941667 () Bool)

(assert (= bs!1536590 (and d!1941667 d!1941617)))

(declare-fun lambda!338257 () Int)

(assert (=> bs!1536590 (= lambda!338257 lambda!338252)))

(declare-fun bs!1536591 () Bool)

(assert (= bs!1536591 (and d!1941667 d!1941619)))

(assert (=> bs!1536591 (= lambda!338257 lambda!338253)))

(declare-fun bs!1536592 () Bool)

(assert (= bs!1536592 (and d!1941667 d!1941659)))

(assert (=> bs!1536592 (= lambda!338257 lambda!338256)))

(declare-fun bs!1536593 () Bool)

(assert (= bs!1536593 (and d!1941667 d!1941615)))

(assert (=> bs!1536593 (= lambda!338257 lambda!338249)))

(declare-fun bs!1536594 () Bool)

(assert (= bs!1536594 (and d!1941667 d!1941595)))

(assert (=> bs!1536594 (= lambda!338257 lambda!338245)))

(declare-fun b!6193306 () Bool)

(declare-fun e!3771721 () Regex!16131)

(assert (=> b!6193306 (= e!3771721 (Concat!24976 (h!71016 lt!2341187) (generalisedConcat!1728 (t!378204 lt!2341187))))))

(declare-fun b!6193308 () Bool)

(declare-fun e!3771716 () Regex!16131)

(assert (=> b!6193308 (= e!3771716 e!3771721)))

(declare-fun c!1117577 () Bool)

(assert (=> b!6193308 (= c!1117577 ((_ is Cons!64568) lt!2341187))))

(declare-fun b!6193309 () Bool)

(declare-fun e!3771718 () Bool)

(declare-fun lt!2341326 () Regex!16131)

(assert (=> b!6193309 (= e!3771718 (isEmptyExpr!1543 lt!2341326))))

(declare-fun b!6193310 () Bool)

(assert (=> b!6193310 (= e!3771721 EmptyExpr!16131)))

(declare-fun b!6193311 () Bool)

(assert (=> b!6193311 (= e!3771716 (h!71016 lt!2341187))))

(declare-fun b!6193312 () Bool)

(declare-fun e!3771719 () Bool)

(assert (=> b!6193312 (= e!3771718 e!3771719)))

(declare-fun c!1117576 () Bool)

(assert (=> b!6193312 (= c!1117576 (isEmpty!36555 (tail!11860 lt!2341187)))))

(declare-fun b!6193313 () Bool)

(declare-fun e!3771717 () Bool)

(assert (=> b!6193313 (= e!3771717 (isEmpty!36555 (t!378204 lt!2341187)))))

(declare-fun b!6193307 () Bool)

(assert (=> b!6193307 (= e!3771719 (isConcat!1066 lt!2341326))))

(declare-fun e!3771720 () Bool)

(assert (=> d!1941667 e!3771720))

(declare-fun res!2561998 () Bool)

(assert (=> d!1941667 (=> (not res!2561998) (not e!3771720))))

(assert (=> d!1941667 (= res!2561998 (validRegex!7867 lt!2341326))))

(assert (=> d!1941667 (= lt!2341326 e!3771716)))

(declare-fun c!1117575 () Bool)

(assert (=> d!1941667 (= c!1117575 e!3771717)))

(declare-fun res!2561997 () Bool)

(assert (=> d!1941667 (=> (not res!2561997) (not e!3771717))))

(assert (=> d!1941667 (= res!2561997 ((_ is Cons!64568) lt!2341187))))

(assert (=> d!1941667 (forall!15247 lt!2341187 lambda!338257)))

(assert (=> d!1941667 (= (generalisedConcat!1728 lt!2341187) lt!2341326)))

(declare-fun b!6193314 () Bool)

(assert (=> b!6193314 (= e!3771719 (= lt!2341326 (head!12775 lt!2341187)))))

(declare-fun b!6193315 () Bool)

(assert (=> b!6193315 (= e!3771720 e!3771718)))

(declare-fun c!1117578 () Bool)

(assert (=> b!6193315 (= c!1117578 (isEmpty!36555 lt!2341187))))

(assert (= (and d!1941667 res!2561997) b!6193313))

(assert (= (and d!1941667 c!1117575) b!6193311))

(assert (= (and d!1941667 (not c!1117575)) b!6193308))

(assert (= (and b!6193308 c!1117577) b!6193306))

(assert (= (and b!6193308 (not c!1117577)) b!6193310))

(assert (= (and d!1941667 res!2561998) b!6193315))

(assert (= (and b!6193315 c!1117578) b!6193309))

(assert (= (and b!6193315 (not c!1117578)) b!6193312))

(assert (= (and b!6193312 c!1117576) b!6193314))

(assert (= (and b!6193312 (not c!1117576)) b!6193307))

(declare-fun m!7027290 () Bool)

(assert (=> b!6193313 m!7027290))

(declare-fun m!7027292 () Bool)

(assert (=> b!6193306 m!7027292))

(declare-fun m!7027294 () Bool)

(assert (=> b!6193312 m!7027294))

(assert (=> b!6193312 m!7027294))

(declare-fun m!7027296 () Bool)

(assert (=> b!6193312 m!7027296))

(declare-fun m!7027298 () Bool)

(assert (=> b!6193307 m!7027298))

(declare-fun m!7027300 () Bool)

(assert (=> d!1941667 m!7027300))

(declare-fun m!7027302 () Bool)

(assert (=> d!1941667 m!7027302))

(declare-fun m!7027304 () Bool)

(assert (=> b!6193309 m!7027304))

(declare-fun m!7027306 () Bool)

(assert (=> b!6193314 m!7027306))

(declare-fun m!7027308 () Bool)

(assert (=> b!6193315 m!7027308))

(assert (=> b!6192443 d!1941667))

(declare-fun bs!1536595 () Bool)

(declare-fun b!6193318 () Bool)

(assert (= bs!1536595 (and b!6193318 b!6192412)))

(declare-fun lambda!338258 () Int)

(assert (=> bs!1536595 (not (= lambda!338258 lambda!338191))))

(declare-fun bs!1536596 () Bool)

(assert (= bs!1536596 (and b!6193318 d!1941529)))

(assert (=> bs!1536596 (not (= lambda!338258 lambda!338235))))

(assert (=> bs!1536596 (not (= lambda!338258 lambda!338236))))

(declare-fun bs!1536597 () Bool)

(assert (= bs!1536597 (and b!6193318 b!6192678)))

(assert (=> bs!1536597 (not (= lambda!338258 lambda!338213))))

(declare-fun bs!1536598 () Bool)

(assert (= bs!1536598 (and b!6193318 d!1941517)))

(assert (=> bs!1536598 (not (= lambda!338258 lambda!338227))))

(declare-fun bs!1536599 () Bool)

(assert (= bs!1536599 (and b!6193318 b!6192676)))

(assert (=> bs!1536599 (= (and (= (reg!16460 lt!2341185) (reg!16460 r!7292)) (= lt!2341185 r!7292)) (= lambda!338258 lambda!338211))))

(assert (=> bs!1536595 (not (= lambda!338258 lambda!338192))))

(assert (=> b!6193318 true))

(assert (=> b!6193318 true))

(declare-fun bs!1536600 () Bool)

(declare-fun b!6193320 () Bool)

(assert (= bs!1536600 (and b!6193320 b!6192412)))

(declare-fun lambda!338259 () Int)

(assert (=> bs!1536600 (not (= lambda!338259 lambda!338191))))

(declare-fun bs!1536601 () Bool)

(assert (= bs!1536601 (and b!6193320 d!1941529)))

(assert (=> bs!1536601 (= (and (= (regOne!32774 lt!2341185) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341185) (regTwo!32774 r!7292))) (= lambda!338259 lambda!338236))))

(declare-fun bs!1536602 () Bool)

(assert (= bs!1536602 (and b!6193320 b!6192678)))

(assert (=> bs!1536602 (= (and (= (regOne!32774 lt!2341185) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341185) (regTwo!32774 r!7292))) (= lambda!338259 lambda!338213))))

(declare-fun bs!1536603 () Bool)

(assert (= bs!1536603 (and b!6193320 d!1941517)))

(assert (=> bs!1536603 (not (= lambda!338259 lambda!338227))))

(declare-fun bs!1536604 () Bool)

(assert (= bs!1536604 (and b!6193320 b!6192676)))

(assert (=> bs!1536604 (not (= lambda!338259 lambda!338211))))

(assert (=> bs!1536600 (= (and (= (regOne!32774 lt!2341185) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341185) (regTwo!32774 r!7292))) (= lambda!338259 lambda!338192))))

(assert (=> bs!1536601 (not (= lambda!338259 lambda!338235))))

(declare-fun bs!1536605 () Bool)

(assert (= bs!1536605 (and b!6193320 b!6193318)))

(assert (=> bs!1536605 (not (= lambda!338259 lambda!338258))))

(assert (=> b!6193320 true))

(assert (=> b!6193320 true))

(declare-fun b!6193316 () Bool)

(declare-fun e!3771723 () Bool)

(declare-fun call!517992 () Bool)

(assert (=> b!6193316 (= e!3771723 call!517992)))

(declare-fun b!6193317 () Bool)

(declare-fun e!3771724 () Bool)

(assert (=> b!6193317 (= e!3771724 (= s!2326 (Cons!64570 (c!1117312 lt!2341185) Nil!64570)))))

(declare-fun e!3771722 () Bool)

(declare-fun call!517993 () Bool)

(assert (=> b!6193318 (= e!3771722 call!517993)))

(declare-fun b!6193319 () Bool)

(declare-fun e!3771726 () Bool)

(declare-fun e!3771727 () Bool)

(assert (=> b!6193319 (= e!3771726 e!3771727)))

(declare-fun c!1117580 () Bool)

(assert (=> b!6193319 (= c!1117580 ((_ is Star!16131) lt!2341185))))

(assert (=> b!6193320 (= e!3771727 call!517993)))

(declare-fun b!6193321 () Bool)

(declare-fun c!1117582 () Bool)

(assert (=> b!6193321 (= c!1117582 ((_ is ElementMatch!16131) lt!2341185))))

(declare-fun e!3771725 () Bool)

(assert (=> b!6193321 (= e!3771725 e!3771724)))

(declare-fun b!6193322 () Bool)

(declare-fun c!1117579 () Bool)

(assert (=> b!6193322 (= c!1117579 ((_ is Union!16131) lt!2341185))))

(assert (=> b!6193322 (= e!3771724 e!3771726)))

(declare-fun b!6193323 () Bool)

(declare-fun res!2562001 () Bool)

(assert (=> b!6193323 (=> res!2562001 e!3771722)))

(assert (=> b!6193323 (= res!2562001 call!517992)))

(assert (=> b!6193323 (= e!3771727 e!3771722)))

(declare-fun bm!517987 () Bool)

(assert (=> bm!517987 (= call!517992 (isEmpty!36557 s!2326))))

(declare-fun b!6193324 () Bool)

(assert (=> b!6193324 (= e!3771723 e!3771725)))

(declare-fun res!2561999 () Bool)

(assert (=> b!6193324 (= res!2561999 (not ((_ is EmptyLang!16131) lt!2341185)))))

(assert (=> b!6193324 (=> (not res!2561999) (not e!3771725))))

(declare-fun bm!517988 () Bool)

(assert (=> bm!517988 (= call!517993 (Exists!3201 (ite c!1117580 lambda!338258 lambda!338259)))))

(declare-fun b!6193325 () Bool)

(declare-fun e!3771728 () Bool)

(assert (=> b!6193325 (= e!3771726 e!3771728)))

(declare-fun res!2562000 () Bool)

(assert (=> b!6193325 (= res!2562000 (matchRSpec!3232 (regOne!32775 lt!2341185) s!2326))))

(assert (=> b!6193325 (=> res!2562000 e!3771728)))

(declare-fun b!6193326 () Bool)

(assert (=> b!6193326 (= e!3771728 (matchRSpec!3232 (regTwo!32775 lt!2341185) s!2326))))

(declare-fun d!1941669 () Bool)

(declare-fun c!1117581 () Bool)

(assert (=> d!1941669 (= c!1117581 ((_ is EmptyExpr!16131) lt!2341185))))

(assert (=> d!1941669 (= (matchRSpec!3232 lt!2341185 s!2326) e!3771723)))

(assert (= (and d!1941669 c!1117581) b!6193316))

(assert (= (and d!1941669 (not c!1117581)) b!6193324))

(assert (= (and b!6193324 res!2561999) b!6193321))

(assert (= (and b!6193321 c!1117582) b!6193317))

(assert (= (and b!6193321 (not c!1117582)) b!6193322))

(assert (= (and b!6193322 c!1117579) b!6193325))

(assert (= (and b!6193322 (not c!1117579)) b!6193319))

(assert (= (and b!6193325 (not res!2562000)) b!6193326))

(assert (= (and b!6193319 c!1117580) b!6193323))

(assert (= (and b!6193319 (not c!1117580)) b!6193320))

(assert (= (and b!6193323 (not res!2562001)) b!6193318))

(assert (= (or b!6193318 b!6193320) bm!517988))

(assert (= (or b!6193316 b!6193323) bm!517987))

(assert (=> bm!517987 m!7026692))

(declare-fun m!7027310 () Bool)

(assert (=> bm!517988 m!7027310))

(declare-fun m!7027312 () Bool)

(assert (=> b!6193325 m!7027312))

(declare-fun m!7027314 () Bool)

(assert (=> b!6193326 m!7027314))

(assert (=> b!6192443 d!1941669))

(declare-fun bs!1536606 () Bool)

(declare-fun b!6193329 () Bool)

(assert (= bs!1536606 (and b!6193329 d!1941529)))

(declare-fun lambda!338260 () Int)

(assert (=> bs!1536606 (not (= lambda!338260 lambda!338236))))

(declare-fun bs!1536607 () Bool)

(assert (= bs!1536607 (and b!6193329 b!6192678)))

(assert (=> bs!1536607 (not (= lambda!338260 lambda!338213))))

(declare-fun bs!1536608 () Bool)

(assert (= bs!1536608 (and b!6193329 d!1941517)))

(assert (=> bs!1536608 (not (= lambda!338260 lambda!338227))))

(declare-fun bs!1536609 () Bool)

(assert (= bs!1536609 (and b!6193329 b!6192676)))

(assert (=> bs!1536609 (= (and (= (reg!16460 lt!2341177) (reg!16460 r!7292)) (= lt!2341177 r!7292)) (= lambda!338260 lambda!338211))))

(declare-fun bs!1536610 () Bool)

(assert (= bs!1536610 (and b!6193329 b!6192412)))

(assert (=> bs!1536610 (not (= lambda!338260 lambda!338192))))

(declare-fun bs!1536611 () Bool)

(assert (= bs!1536611 (and b!6193329 b!6193320)))

(assert (=> bs!1536611 (not (= lambda!338260 lambda!338259))))

(assert (=> bs!1536610 (not (= lambda!338260 lambda!338191))))

(assert (=> bs!1536606 (not (= lambda!338260 lambda!338235))))

(declare-fun bs!1536612 () Bool)

(assert (= bs!1536612 (and b!6193329 b!6193318)))

(assert (=> bs!1536612 (= (and (= (reg!16460 lt!2341177) (reg!16460 lt!2341185)) (= lt!2341177 lt!2341185)) (= lambda!338260 lambda!338258))))

(assert (=> b!6193329 true))

(assert (=> b!6193329 true))

(declare-fun bs!1536613 () Bool)

(declare-fun b!6193331 () Bool)

(assert (= bs!1536613 (and b!6193331 d!1941529)))

(declare-fun lambda!338261 () Int)

(assert (=> bs!1536613 (= (and (= (regOne!32774 lt!2341177) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341177) (regTwo!32774 r!7292))) (= lambda!338261 lambda!338236))))

(declare-fun bs!1536614 () Bool)

(assert (= bs!1536614 (and b!6193331 b!6192678)))

(assert (=> bs!1536614 (= (and (= (regOne!32774 lt!2341177) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341177) (regTwo!32774 r!7292))) (= lambda!338261 lambda!338213))))

(declare-fun bs!1536615 () Bool)

(assert (= bs!1536615 (and b!6193331 d!1941517)))

(assert (=> bs!1536615 (not (= lambda!338261 lambda!338227))))

(declare-fun bs!1536616 () Bool)

(assert (= bs!1536616 (and b!6193331 b!6193329)))

(assert (=> bs!1536616 (not (= lambda!338261 lambda!338260))))

(declare-fun bs!1536617 () Bool)

(assert (= bs!1536617 (and b!6193331 b!6192676)))

(assert (=> bs!1536617 (not (= lambda!338261 lambda!338211))))

(declare-fun bs!1536618 () Bool)

(assert (= bs!1536618 (and b!6193331 b!6192412)))

(assert (=> bs!1536618 (= (and (= (regOne!32774 lt!2341177) (regOne!32774 r!7292)) (= (regTwo!32774 lt!2341177) (regTwo!32774 r!7292))) (= lambda!338261 lambda!338192))))

(declare-fun bs!1536619 () Bool)

(assert (= bs!1536619 (and b!6193331 b!6193320)))

(assert (=> bs!1536619 (= (and (= (regOne!32774 lt!2341177) (regOne!32774 lt!2341185)) (= (regTwo!32774 lt!2341177) (regTwo!32774 lt!2341185))) (= lambda!338261 lambda!338259))))

(assert (=> bs!1536618 (not (= lambda!338261 lambda!338191))))

(assert (=> bs!1536613 (not (= lambda!338261 lambda!338235))))

(declare-fun bs!1536620 () Bool)

(assert (= bs!1536620 (and b!6193331 b!6193318)))

(assert (=> bs!1536620 (not (= lambda!338261 lambda!338258))))

(assert (=> b!6193331 true))

(assert (=> b!6193331 true))

(declare-fun b!6193327 () Bool)

(declare-fun e!3771730 () Bool)

(declare-fun call!517994 () Bool)

(assert (=> b!6193327 (= e!3771730 call!517994)))

(declare-fun b!6193328 () Bool)

(declare-fun e!3771731 () Bool)

(assert (=> b!6193328 (= e!3771731 (= s!2326 (Cons!64570 (c!1117312 lt!2341177) Nil!64570)))))

(declare-fun e!3771729 () Bool)

(declare-fun call!517995 () Bool)

(assert (=> b!6193329 (= e!3771729 call!517995)))

(declare-fun b!6193330 () Bool)

(declare-fun e!3771733 () Bool)

(declare-fun e!3771734 () Bool)

(assert (=> b!6193330 (= e!3771733 e!3771734)))

(declare-fun c!1117584 () Bool)

(assert (=> b!6193330 (= c!1117584 ((_ is Star!16131) lt!2341177))))

(assert (=> b!6193331 (= e!3771734 call!517995)))

(declare-fun b!6193332 () Bool)

(declare-fun c!1117586 () Bool)

(assert (=> b!6193332 (= c!1117586 ((_ is ElementMatch!16131) lt!2341177))))

(declare-fun e!3771732 () Bool)

(assert (=> b!6193332 (= e!3771732 e!3771731)))

(declare-fun b!6193333 () Bool)

(declare-fun c!1117583 () Bool)

(assert (=> b!6193333 (= c!1117583 ((_ is Union!16131) lt!2341177))))

(assert (=> b!6193333 (= e!3771731 e!3771733)))

(declare-fun b!6193334 () Bool)

(declare-fun res!2562004 () Bool)

(assert (=> b!6193334 (=> res!2562004 e!3771729)))

(assert (=> b!6193334 (= res!2562004 call!517994)))

(assert (=> b!6193334 (= e!3771734 e!3771729)))

(declare-fun bm!517989 () Bool)

(assert (=> bm!517989 (= call!517994 (isEmpty!36557 s!2326))))

(declare-fun b!6193335 () Bool)

(assert (=> b!6193335 (= e!3771730 e!3771732)))

(declare-fun res!2562002 () Bool)

(assert (=> b!6193335 (= res!2562002 (not ((_ is EmptyLang!16131) lt!2341177)))))

(assert (=> b!6193335 (=> (not res!2562002) (not e!3771732))))

(declare-fun bm!517990 () Bool)

(assert (=> bm!517990 (= call!517995 (Exists!3201 (ite c!1117584 lambda!338260 lambda!338261)))))

(declare-fun b!6193336 () Bool)

(declare-fun e!3771735 () Bool)

(assert (=> b!6193336 (= e!3771733 e!3771735)))

(declare-fun res!2562003 () Bool)

(assert (=> b!6193336 (= res!2562003 (matchRSpec!3232 (regOne!32775 lt!2341177) s!2326))))

(assert (=> b!6193336 (=> res!2562003 e!3771735)))

(declare-fun b!6193337 () Bool)

(assert (=> b!6193337 (= e!3771735 (matchRSpec!3232 (regTwo!32775 lt!2341177) s!2326))))

(declare-fun d!1941671 () Bool)

(declare-fun c!1117585 () Bool)

(assert (=> d!1941671 (= c!1117585 ((_ is EmptyExpr!16131) lt!2341177))))

(assert (=> d!1941671 (= (matchRSpec!3232 lt!2341177 s!2326) e!3771730)))

(assert (= (and d!1941671 c!1117585) b!6193327))

(assert (= (and d!1941671 (not c!1117585)) b!6193335))

(assert (= (and b!6193335 res!2562002) b!6193332))

(assert (= (and b!6193332 c!1117586) b!6193328))

(assert (= (and b!6193332 (not c!1117586)) b!6193333))

(assert (= (and b!6193333 c!1117583) b!6193336))

(assert (= (and b!6193333 (not c!1117583)) b!6193330))

(assert (= (and b!6193336 (not res!2562003)) b!6193337))

(assert (= (and b!6193330 c!1117584) b!6193334))

(assert (= (and b!6193330 (not c!1117584)) b!6193331))

(assert (= (and b!6193334 (not res!2562004)) b!6193329))

(assert (= (or b!6193329 b!6193331) bm!517990))

(assert (= (or b!6193327 b!6193334) bm!517989))

(assert (=> bm!517989 m!7026692))

(declare-fun m!7027316 () Bool)

(assert (=> bm!517990 m!7027316))

(declare-fun m!7027318 () Bool)

(assert (=> b!6193336 m!7027318))

(declare-fun m!7027320 () Bool)

(assert (=> b!6193337 m!7027320))

(assert (=> b!6192443 d!1941671))

(declare-fun bs!1536621 () Bool)

(declare-fun d!1941673 () Bool)

(assert (= bs!1536621 (and d!1941673 d!1941667)))

(declare-fun lambda!338262 () Int)

(assert (=> bs!1536621 (= lambda!338262 lambda!338257)))

(declare-fun bs!1536622 () Bool)

(assert (= bs!1536622 (and d!1941673 d!1941617)))

(assert (=> bs!1536622 (= lambda!338262 lambda!338252)))

(declare-fun bs!1536623 () Bool)

(assert (= bs!1536623 (and d!1941673 d!1941619)))

(assert (=> bs!1536623 (= lambda!338262 lambda!338253)))

(declare-fun bs!1536624 () Bool)

(assert (= bs!1536624 (and d!1941673 d!1941659)))

(assert (=> bs!1536624 (= lambda!338262 lambda!338256)))

(declare-fun bs!1536625 () Bool)

(assert (= bs!1536625 (and d!1941673 d!1941615)))

(assert (=> bs!1536625 (= lambda!338262 lambda!338249)))

(declare-fun bs!1536626 () Bool)

(assert (= bs!1536626 (and d!1941673 d!1941595)))

(assert (=> bs!1536626 (= lambda!338262 lambda!338245)))

(declare-fun b!6193338 () Bool)

(declare-fun e!3771741 () Regex!16131)

(assert (=> b!6193338 (= e!3771741 (Concat!24976 (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343)))) (generalisedConcat!1728 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193340 () Bool)

(declare-fun e!3771736 () Regex!16131)

(assert (=> b!6193340 (= e!3771736 e!3771741)))

(declare-fun c!1117589 () Bool)

(assert (=> b!6193340 (= c!1117589 ((_ is Cons!64568) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193341 () Bool)

(declare-fun e!3771738 () Bool)

(declare-fun lt!2341327 () Regex!16131)

(assert (=> b!6193341 (= e!3771738 (isEmptyExpr!1543 lt!2341327))))

(declare-fun b!6193342 () Bool)

(assert (=> b!6193342 (= e!3771741 EmptyExpr!16131)))

(declare-fun b!6193343 () Bool)

(assert (=> b!6193343 (= e!3771736 (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193344 () Bool)

(declare-fun e!3771739 () Bool)

(assert (=> b!6193344 (= e!3771738 e!3771739)))

(declare-fun c!1117588 () Bool)

(assert (=> b!6193344 (= c!1117588 (isEmpty!36555 (tail!11860 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193345 () Bool)

(declare-fun e!3771737 () Bool)

(assert (=> b!6193345 (= e!3771737 (isEmpty!36555 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193339 () Bool)

(assert (=> b!6193339 (= e!3771739 (isConcat!1066 lt!2341327))))

(declare-fun e!3771740 () Bool)

(assert (=> d!1941673 e!3771740))

(declare-fun res!2562006 () Bool)

(assert (=> d!1941673 (=> (not res!2562006) (not e!3771740))))

(assert (=> d!1941673 (= res!2562006 (validRegex!7867 lt!2341327))))

(assert (=> d!1941673 (= lt!2341327 e!3771736)))

(declare-fun c!1117587 () Bool)

(assert (=> d!1941673 (= c!1117587 e!3771737)))

(declare-fun res!2562005 () Bool)

(assert (=> d!1941673 (=> (not res!2562005) (not e!3771737))))

(assert (=> d!1941673 (= res!2562005 ((_ is Cons!64568) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> d!1941673 (forall!15247 (t!378204 (exprs!6015 (h!71017 zl!343))) lambda!338262)))

(assert (=> d!1941673 (= (generalisedConcat!1728 (t!378204 (exprs!6015 (h!71017 zl!343)))) lt!2341327)))

(declare-fun b!6193346 () Bool)

(assert (=> b!6193346 (= e!3771739 (= lt!2341327 (head!12775 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193347 () Bool)

(assert (=> b!6193347 (= e!3771740 e!3771738)))

(declare-fun c!1117590 () Bool)

(assert (=> b!6193347 (= c!1117590 (isEmpty!36555 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (= (and d!1941673 res!2562005) b!6193345))

(assert (= (and d!1941673 c!1117587) b!6193343))

(assert (= (and d!1941673 (not c!1117587)) b!6193340))

(assert (= (and b!6193340 c!1117589) b!6193338))

(assert (= (and b!6193340 (not c!1117589)) b!6193342))

(assert (= (and d!1941673 res!2562006) b!6193347))

(assert (= (and b!6193347 c!1117590) b!6193341))

(assert (= (and b!6193347 (not c!1117590)) b!6193344))

(assert (= (and b!6193344 c!1117588) b!6193346))

(assert (= (and b!6193344 (not c!1117588)) b!6193339))

(declare-fun m!7027322 () Bool)

(assert (=> b!6193345 m!7027322))

(declare-fun m!7027324 () Bool)

(assert (=> b!6193338 m!7027324))

(declare-fun m!7027326 () Bool)

(assert (=> b!6193344 m!7027326))

(assert (=> b!6193344 m!7027326))

(declare-fun m!7027328 () Bool)

(assert (=> b!6193344 m!7027328))

(declare-fun m!7027330 () Bool)

(assert (=> b!6193339 m!7027330))

(declare-fun m!7027332 () Bool)

(assert (=> d!1941673 m!7027332))

(declare-fun m!7027334 () Bool)

(assert (=> d!1941673 m!7027334))

(declare-fun m!7027336 () Bool)

(assert (=> b!6193341 m!7027336))

(declare-fun m!7027338 () Bool)

(assert (=> b!6193346 m!7027338))

(assert (=> b!6193347 m!7026556))

(assert (=> b!6192447 d!1941673))

(assert (=> b!6192446 d!1941643))

(assert (=> b!6192427 d!1941643))

(declare-fun d!1941675 () Bool)

(declare-fun e!3771744 () Bool)

(assert (=> d!1941675 e!3771744))

(declare-fun res!2562009 () Bool)

(assert (=> d!1941675 (=> (not res!2562009) (not e!3771744))))

(declare-fun lt!2341330 () List!64693)

(declare-fun noDuplicate!1970 (List!64693) Bool)

(assert (=> d!1941675 (= res!2562009 (noDuplicate!1970 lt!2341330))))

(declare-fun choose!46016 ((InoxSet Context!11030)) List!64693)

(assert (=> d!1941675 (= lt!2341330 (choose!46016 z!1189))))

(assert (=> d!1941675 (= (toList!9915 z!1189) lt!2341330)))

(declare-fun b!6193350 () Bool)

(declare-fun content!12063 (List!64693) (InoxSet Context!11030))

(assert (=> b!6193350 (= e!3771744 (= (content!12063 lt!2341330) z!1189))))

(assert (= (and d!1941675 res!2562009) b!6193350))

(declare-fun m!7027340 () Bool)

(assert (=> d!1941675 m!7027340))

(declare-fun m!7027342 () Bool)

(assert (=> d!1941675 m!7027342))

(declare-fun m!7027344 () Bool)

(assert (=> b!6193350 m!7027344))

(assert (=> b!6192426 d!1941675))

(declare-fun d!1941677 () Bool)

(declare-fun lt!2341333 () Regex!16131)

(assert (=> d!1941677 (validRegex!7867 lt!2341333)))

(assert (=> d!1941677 (= lt!2341333 (generalisedUnion!1975 (unfocusZipperList!1552 zl!343)))))

(assert (=> d!1941677 (= (unfocusZipper!1873 zl!343) lt!2341333)))

(declare-fun bs!1536627 () Bool)

(assert (= bs!1536627 d!1941677))

(declare-fun m!7027346 () Bool)

(assert (=> bs!1536627 m!7027346))

(assert (=> bs!1536627 m!7026464))

(assert (=> bs!1536627 m!7026464))

(assert (=> bs!1536627 m!7026466))

(assert (=> b!6192449 d!1941677))

(assert (=> b!6192448 d!1941477))

(declare-fun d!1941679 () Bool)

(declare-fun e!3771745 () Bool)

(assert (=> d!1941679 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341164) (t!378206 s!2326)) e!3771745)))

(declare-fun res!2562010 () Bool)

(assert (=> d!1941679 (=> res!2562010 e!3771745)))

(assert (=> d!1941679 (= res!2562010 (matchZipper!2143 lt!2341182 (t!378206 s!2326)))))

(declare-fun lt!2341334 () Unit!157827)

(assert (=> d!1941679 (= lt!2341334 (choose!46013 lt!2341182 lt!2341164 (t!378206 s!2326)))))

(assert (=> d!1941679 (= (lemmaZipperConcatMatchesSameAsBothZippers!962 lt!2341182 lt!2341164 (t!378206 s!2326)) lt!2341334)))

(declare-fun b!6193351 () Bool)

(assert (=> b!6193351 (= e!3771745 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1941679 (not res!2562010)) b!6193351))

(assert (=> d!1941679 m!7026462))

(assert (=> d!1941679 m!7026496))

(declare-fun m!7027348 () Bool)

(assert (=> d!1941679 m!7027348))

(assert (=> b!6193351 m!7026452))

(assert (=> b!6192429 d!1941679))

(declare-fun d!1941681 () Bool)

(declare-fun c!1117591 () Bool)

(assert (=> d!1941681 (= c!1117591 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3771746 () Bool)

(assert (=> d!1941681 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341164) (t!378206 s!2326)) e!3771746)))

(declare-fun b!6193352 () Bool)

(assert (=> b!6193352 (= e!3771746 (nullableZipper!1907 ((_ map or) lt!2341182 lt!2341164)))))

(declare-fun b!6193353 () Bool)

(assert (=> b!6193353 (= e!3771746 (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1941681 c!1117591) b!6193352))

(assert (= (and d!1941681 (not c!1117591)) b!6193353))

(assert (=> d!1941681 m!7026800))

(declare-fun m!7027350 () Bool)

(assert (=> b!6193352 m!7027350))

(assert (=> b!6193353 m!7026804))

(assert (=> b!6193353 m!7026804))

(declare-fun m!7027352 () Bool)

(assert (=> b!6193353 m!7027352))

(assert (=> b!6193353 m!7026810))

(assert (=> b!6193353 m!7027352))

(assert (=> b!6193353 m!7026810))

(declare-fun m!7027354 () Bool)

(assert (=> b!6193353 m!7027354))

(assert (=> b!6192429 d!1941681))

(declare-fun b!6193372 () Bool)

(declare-fun e!3771762 () Bool)

(declare-fun call!518003 () Bool)

(assert (=> b!6193372 (= e!3771762 call!518003)))

(declare-fun b!6193373 () Bool)

(declare-fun e!3771766 () Bool)

(declare-fun e!3771767 () Bool)

(assert (=> b!6193373 (= e!3771766 e!3771767)))

(declare-fun c!1117597 () Bool)

(assert (=> b!6193373 (= c!1117597 ((_ is Union!16131) r!7292))))

(declare-fun b!6193374 () Bool)

(declare-fun e!3771761 () Bool)

(declare-fun call!518002 () Bool)

(assert (=> b!6193374 (= e!3771761 call!518002)))

(declare-fun b!6193375 () Bool)

(declare-fun e!3771765 () Bool)

(assert (=> b!6193375 (= e!3771765 e!3771766)))

(declare-fun c!1117596 () Bool)

(assert (=> b!6193375 (= c!1117596 ((_ is Star!16131) r!7292))))

(declare-fun d!1941683 () Bool)

(declare-fun res!2562024 () Bool)

(assert (=> d!1941683 (=> res!2562024 e!3771765)))

(assert (=> d!1941683 (= res!2562024 ((_ is ElementMatch!16131) r!7292))))

(assert (=> d!1941683 (= (validRegex!7867 r!7292) e!3771765)))

(declare-fun bm!517997 () Bool)

(assert (=> bm!517997 (= call!518002 (validRegex!7867 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))

(declare-fun bm!517998 () Bool)

(assert (=> bm!517998 (= call!518003 (validRegex!7867 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))

(declare-fun b!6193376 () Bool)

(declare-fun e!3771763 () Bool)

(assert (=> b!6193376 (= e!3771763 e!3771762)))

(declare-fun res!2562025 () Bool)

(assert (=> b!6193376 (=> (not res!2562025) (not e!3771762))))

(declare-fun call!518004 () Bool)

(assert (=> b!6193376 (= res!2562025 call!518004)))

(declare-fun b!6193377 () Bool)

(declare-fun res!2562023 () Bool)

(assert (=> b!6193377 (=> res!2562023 e!3771763)))

(assert (=> b!6193377 (= res!2562023 (not ((_ is Concat!24976) r!7292)))))

(assert (=> b!6193377 (= e!3771767 e!3771763)))

(declare-fun b!6193378 () Bool)

(declare-fun res!2562021 () Bool)

(declare-fun e!3771764 () Bool)

(assert (=> b!6193378 (=> (not res!2562021) (not e!3771764))))

(assert (=> b!6193378 (= res!2562021 call!518004)))

(assert (=> b!6193378 (= e!3771767 e!3771764)))

(declare-fun b!6193379 () Bool)

(assert (=> b!6193379 (= e!3771766 e!3771761)))

(declare-fun res!2562022 () Bool)

(assert (=> b!6193379 (= res!2562022 (not (nullable!6124 (reg!16460 r!7292))))))

(assert (=> b!6193379 (=> (not res!2562022) (not e!3771761))))

(declare-fun bm!517999 () Bool)

(assert (=> bm!517999 (= call!518004 call!518002)))

(declare-fun b!6193380 () Bool)

(assert (=> b!6193380 (= e!3771764 call!518003)))

(assert (= (and d!1941683 (not res!2562024)) b!6193375))

(assert (= (and b!6193375 c!1117596) b!6193379))

(assert (= (and b!6193375 (not c!1117596)) b!6193373))

(assert (= (and b!6193379 res!2562022) b!6193374))

(assert (= (and b!6193373 c!1117597) b!6193378))

(assert (= (and b!6193373 (not c!1117597)) b!6193377))

(assert (= (and b!6193378 res!2562021) b!6193380))

(assert (= (and b!6193377 (not res!2562023)) b!6193376))

(assert (= (and b!6193376 res!2562025) b!6193372))

(assert (= (or b!6193380 b!6193372) bm!517998))

(assert (= (or b!6193378 b!6193376) bm!517999))

(assert (= (or b!6193374 bm!517999) bm!517997))

(declare-fun m!7027356 () Bool)

(assert (=> bm!517997 m!7027356))

(declare-fun m!7027358 () Bool)

(assert (=> bm!517998 m!7027358))

(declare-fun m!7027360 () Bool)

(assert (=> b!6193379 m!7027360))

(assert (=> start!617590 d!1941683))

(declare-fun bs!1536628 () Bool)

(declare-fun d!1941685 () Bool)

(assert (= bs!1536628 (and d!1941685 d!1941673)))

(declare-fun lambda!338263 () Int)

(assert (=> bs!1536628 (= lambda!338263 lambda!338262)))

(declare-fun bs!1536629 () Bool)

(assert (= bs!1536629 (and d!1941685 d!1941667)))

(assert (=> bs!1536629 (= lambda!338263 lambda!338257)))

(declare-fun bs!1536630 () Bool)

(assert (= bs!1536630 (and d!1941685 d!1941617)))

(assert (=> bs!1536630 (= lambda!338263 lambda!338252)))

(declare-fun bs!1536631 () Bool)

(assert (= bs!1536631 (and d!1941685 d!1941619)))

(assert (=> bs!1536631 (= lambda!338263 lambda!338253)))

(declare-fun bs!1536632 () Bool)

(assert (= bs!1536632 (and d!1941685 d!1941659)))

(assert (=> bs!1536632 (= lambda!338263 lambda!338256)))

(declare-fun bs!1536633 () Bool)

(assert (= bs!1536633 (and d!1941685 d!1941615)))

(assert (=> bs!1536633 (= lambda!338263 lambda!338249)))

(declare-fun bs!1536634 () Bool)

(assert (= bs!1536634 (and d!1941685 d!1941595)))

(assert (=> bs!1536634 (= lambda!338263 lambda!338245)))

(declare-fun b!6193381 () Bool)

(declare-fun e!3771773 () Regex!16131)

(assert (=> b!6193381 (= e!3771773 (Concat!24976 (h!71016 (exprs!6015 (h!71017 zl!343))) (generalisedConcat!1728 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193383 () Bool)

(declare-fun e!3771768 () Regex!16131)

(assert (=> b!6193383 (= e!3771768 e!3771773)))

(declare-fun c!1117600 () Bool)

(assert (=> b!6193383 (= c!1117600 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343))))))

(declare-fun b!6193384 () Bool)

(declare-fun e!3771770 () Bool)

(declare-fun lt!2341335 () Regex!16131)

(assert (=> b!6193384 (= e!3771770 (isEmptyExpr!1543 lt!2341335))))

(declare-fun b!6193385 () Bool)

(assert (=> b!6193385 (= e!3771773 EmptyExpr!16131)))

(declare-fun b!6193386 () Bool)

(assert (=> b!6193386 (= e!3771768 (h!71016 (exprs!6015 (h!71017 zl!343))))))

(declare-fun b!6193387 () Bool)

(declare-fun e!3771771 () Bool)

(assert (=> b!6193387 (= e!3771770 e!3771771)))

(declare-fun c!1117599 () Bool)

(assert (=> b!6193387 (= c!1117599 (isEmpty!36555 (tail!11860 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193388 () Bool)

(declare-fun e!3771769 () Bool)

(assert (=> b!6193388 (= e!3771769 (isEmpty!36555 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193382 () Bool)

(assert (=> b!6193382 (= e!3771771 (isConcat!1066 lt!2341335))))

(declare-fun e!3771772 () Bool)

(assert (=> d!1941685 e!3771772))

(declare-fun res!2562027 () Bool)

(assert (=> d!1941685 (=> (not res!2562027) (not e!3771772))))

(assert (=> d!1941685 (= res!2562027 (validRegex!7867 lt!2341335))))

(assert (=> d!1941685 (= lt!2341335 e!3771768)))

(declare-fun c!1117598 () Bool)

(assert (=> d!1941685 (= c!1117598 e!3771769)))

(declare-fun res!2562026 () Bool)

(assert (=> d!1941685 (=> (not res!2562026) (not e!3771769))))

(assert (=> d!1941685 (= res!2562026 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343))))))

(assert (=> d!1941685 (forall!15247 (exprs!6015 (h!71017 zl!343)) lambda!338263)))

(assert (=> d!1941685 (= (generalisedConcat!1728 (exprs!6015 (h!71017 zl!343))) lt!2341335)))

(declare-fun b!6193389 () Bool)

(assert (=> b!6193389 (= e!3771771 (= lt!2341335 (head!12775 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193390 () Bool)

(assert (=> b!6193390 (= e!3771772 e!3771770)))

(declare-fun c!1117601 () Bool)

(assert (=> b!6193390 (= c!1117601 (isEmpty!36555 (exprs!6015 (h!71017 zl!343))))))

(assert (= (and d!1941685 res!2562026) b!6193388))

(assert (= (and d!1941685 c!1117598) b!6193386))

(assert (= (and d!1941685 (not c!1117598)) b!6193383))

(assert (= (and b!6193383 c!1117600) b!6193381))

(assert (= (and b!6193383 (not c!1117600)) b!6193385))

(assert (= (and d!1941685 res!2562027) b!6193390))

(assert (= (and b!6193390 c!1117601) b!6193384))

(assert (= (and b!6193390 (not c!1117601)) b!6193387))

(assert (= (and b!6193387 c!1117599) b!6193389))

(assert (= (and b!6193387 (not c!1117599)) b!6193382))

(assert (=> b!6193388 m!7026556))

(assert (=> b!6193381 m!7026456))

(declare-fun m!7027362 () Bool)

(assert (=> b!6193387 m!7027362))

(assert (=> b!6193387 m!7027362))

(declare-fun m!7027364 () Bool)

(assert (=> b!6193387 m!7027364))

(declare-fun m!7027366 () Bool)

(assert (=> b!6193382 m!7027366))

(declare-fun m!7027368 () Bool)

(assert (=> d!1941685 m!7027368))

(declare-fun m!7027370 () Bool)

(assert (=> d!1941685 m!7027370))

(declare-fun m!7027372 () Bool)

(assert (=> b!6193384 m!7027372))

(declare-fun m!7027374 () Bool)

(assert (=> b!6193389 m!7027374))

(declare-fun m!7027376 () Bool)

(assert (=> b!6193390 m!7027376))

(assert (=> b!6192428 d!1941685))

(declare-fun b!6193391 () Bool)

(declare-fun e!3771775 () Bool)

(declare-fun call!518006 () Bool)

(assert (=> b!6193391 (= e!3771775 call!518006)))

(declare-fun b!6193392 () Bool)

(declare-fun e!3771779 () Bool)

(declare-fun e!3771780 () Bool)

(assert (=> b!6193392 (= e!3771779 e!3771780)))

(declare-fun c!1117603 () Bool)

(assert (=> b!6193392 (= c!1117603 ((_ is Union!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193393 () Bool)

(declare-fun e!3771774 () Bool)

(declare-fun call!518005 () Bool)

(assert (=> b!6193393 (= e!3771774 call!518005)))

(declare-fun b!6193394 () Bool)

(declare-fun e!3771778 () Bool)

(assert (=> b!6193394 (= e!3771778 e!3771779)))

(declare-fun c!1117602 () Bool)

(assert (=> b!6193394 (= c!1117602 ((_ is Star!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun d!1941687 () Bool)

(declare-fun res!2562031 () Bool)

(assert (=> d!1941687 (=> res!2562031 e!3771778)))

(assert (=> d!1941687 (= res!2562031 ((_ is ElementMatch!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(assert (=> d!1941687 (= (validRegex!7867 (regTwo!32775 (regOne!32774 r!7292))) e!3771778)))

(declare-fun bm!518000 () Bool)

(assert (=> bm!518000 (= call!518005 (validRegex!7867 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(declare-fun bm!518001 () Bool)

(assert (=> bm!518001 (= call!518006 (validRegex!7867 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6193395 () Bool)

(declare-fun e!3771776 () Bool)

(assert (=> b!6193395 (= e!3771776 e!3771775)))

(declare-fun res!2562032 () Bool)

(assert (=> b!6193395 (=> (not res!2562032) (not e!3771775))))

(declare-fun call!518007 () Bool)

(assert (=> b!6193395 (= res!2562032 call!518007)))

(declare-fun b!6193396 () Bool)

(declare-fun res!2562030 () Bool)

(assert (=> b!6193396 (=> res!2562030 e!3771776)))

(assert (=> b!6193396 (= res!2562030 (not ((_ is Concat!24976) (regTwo!32775 (regOne!32774 r!7292)))))))

(assert (=> b!6193396 (= e!3771780 e!3771776)))

(declare-fun b!6193397 () Bool)

(declare-fun res!2562028 () Bool)

(declare-fun e!3771777 () Bool)

(assert (=> b!6193397 (=> (not res!2562028) (not e!3771777))))

(assert (=> b!6193397 (= res!2562028 call!518007)))

(assert (=> b!6193397 (= e!3771780 e!3771777)))

(declare-fun b!6193398 () Bool)

(assert (=> b!6193398 (= e!3771779 e!3771774)))

(declare-fun res!2562029 () Bool)

(assert (=> b!6193398 (= res!2562029 (not (nullable!6124 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6193398 (=> (not res!2562029) (not e!3771774))))

(declare-fun bm!518002 () Bool)

(assert (=> bm!518002 (= call!518007 call!518005)))

(declare-fun b!6193399 () Bool)

(assert (=> b!6193399 (= e!3771777 call!518006)))

(assert (= (and d!1941687 (not res!2562031)) b!6193394))

(assert (= (and b!6193394 c!1117602) b!6193398))

(assert (= (and b!6193394 (not c!1117602)) b!6193392))

(assert (= (and b!6193398 res!2562029) b!6193393))

(assert (= (and b!6193392 c!1117603) b!6193397))

(assert (= (and b!6193392 (not c!1117603)) b!6193396))

(assert (= (and b!6193397 res!2562028) b!6193399))

(assert (= (and b!6193396 (not res!2562030)) b!6193395))

(assert (= (and b!6193395 res!2562032) b!6193391))

(assert (= (or b!6193399 b!6193391) bm!518001))

(assert (= (or b!6193397 b!6193395) bm!518002))

(assert (= (or b!6193393 bm!518002) bm!518000))

(declare-fun m!7027378 () Bool)

(assert (=> bm!518000 m!7027378))

(declare-fun m!7027380 () Bool)

(assert (=> bm!518001 m!7027380))

(declare-fun m!7027382 () Bool)

(assert (=> b!6193398 m!7027382))

(assert (=> b!6192432 d!1941687))

(declare-fun d!1941689 () Bool)

(assert (=> d!1941689 (= (isEmpty!36554 (t!378205 zl!343)) ((_ is Nil!64569) (t!378205 zl!343)))))

(assert (=> b!6192411 d!1941689))

(declare-fun b!6193400 () Bool)

(declare-fun e!3771782 () Bool)

(declare-fun call!518009 () Bool)

(assert (=> b!6193400 (= e!3771782 call!518009)))

(declare-fun b!6193401 () Bool)

(declare-fun e!3771786 () Bool)

(declare-fun e!3771787 () Bool)

(assert (=> b!6193401 (= e!3771786 e!3771787)))

(declare-fun c!1117605 () Bool)

(assert (=> b!6193401 (= c!1117605 ((_ is Union!16131) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun b!6193402 () Bool)

(declare-fun e!3771781 () Bool)

(declare-fun call!518008 () Bool)

(assert (=> b!6193402 (= e!3771781 call!518008)))

(declare-fun b!6193403 () Bool)

(declare-fun e!3771785 () Bool)

(assert (=> b!6193403 (= e!3771785 e!3771786)))

(declare-fun c!1117604 () Bool)

(assert (=> b!6193403 (= c!1117604 ((_ is Star!16131) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun d!1941691 () Bool)

(declare-fun res!2562036 () Bool)

(assert (=> d!1941691 (=> res!2562036 e!3771785)))

(assert (=> d!1941691 (= res!2562036 ((_ is ElementMatch!16131) (regOne!32775 (regOne!32774 r!7292))))))

(assert (=> d!1941691 (= (validRegex!7867 (regOne!32775 (regOne!32774 r!7292))) e!3771785)))

(declare-fun bm!518003 () Bool)

(assert (=> bm!518003 (= call!518008 (validRegex!7867 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(declare-fun bm!518004 () Bool)

(assert (=> bm!518004 (= call!518009 (validRegex!7867 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6193404 () Bool)

(declare-fun e!3771783 () Bool)

(assert (=> b!6193404 (= e!3771783 e!3771782)))

(declare-fun res!2562037 () Bool)

(assert (=> b!6193404 (=> (not res!2562037) (not e!3771782))))

(declare-fun call!518010 () Bool)

(assert (=> b!6193404 (= res!2562037 call!518010)))

(declare-fun b!6193405 () Bool)

(declare-fun res!2562035 () Bool)

(assert (=> b!6193405 (=> res!2562035 e!3771783)))

(assert (=> b!6193405 (= res!2562035 (not ((_ is Concat!24976) (regOne!32775 (regOne!32774 r!7292)))))))

(assert (=> b!6193405 (= e!3771787 e!3771783)))

(declare-fun b!6193406 () Bool)

(declare-fun res!2562033 () Bool)

(declare-fun e!3771784 () Bool)

(assert (=> b!6193406 (=> (not res!2562033) (not e!3771784))))

(assert (=> b!6193406 (= res!2562033 call!518010)))

(assert (=> b!6193406 (= e!3771787 e!3771784)))

(declare-fun b!6193407 () Bool)

(assert (=> b!6193407 (= e!3771786 e!3771781)))

(declare-fun res!2562034 () Bool)

(assert (=> b!6193407 (= res!2562034 (not (nullable!6124 (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6193407 (=> (not res!2562034) (not e!3771781))))

(declare-fun bm!518005 () Bool)

(assert (=> bm!518005 (= call!518010 call!518008)))

(declare-fun b!6193408 () Bool)

(assert (=> b!6193408 (= e!3771784 call!518009)))

(assert (= (and d!1941691 (not res!2562036)) b!6193403))

(assert (= (and b!6193403 c!1117604) b!6193407))

(assert (= (and b!6193403 (not c!1117604)) b!6193401))

(assert (= (and b!6193407 res!2562034) b!6193402))

(assert (= (and b!6193401 c!1117605) b!6193406))

(assert (= (and b!6193401 (not c!1117605)) b!6193405))

(assert (= (and b!6193406 res!2562033) b!6193408))

(assert (= (and b!6193405 (not res!2562035)) b!6193404))

(assert (= (and b!6193404 res!2562037) b!6193400))

(assert (= (or b!6193408 b!6193400) bm!518004))

(assert (= (or b!6193406 b!6193404) bm!518005))

(assert (= (or b!6193402 bm!518005) bm!518003))

(declare-fun m!7027384 () Bool)

(assert (=> bm!518003 m!7027384))

(declare-fun m!7027386 () Bool)

(assert (=> bm!518004 m!7027386))

(declare-fun m!7027388 () Bool)

(assert (=> b!6193407 m!7027388))

(assert (=> b!6192450 d!1941691))

(declare-fun d!1941693 () Bool)

(declare-fun lt!2341336 () Int)

(assert (=> d!1941693 (>= lt!2341336 0)))

(declare-fun e!3771788 () Int)

(assert (=> d!1941693 (= lt!2341336 e!3771788)))

(declare-fun c!1117606 () Bool)

(assert (=> d!1941693 (= c!1117606 ((_ is Cons!64569) lt!2341181))))

(assert (=> d!1941693 (= (zipperDepthTotal!314 lt!2341181) lt!2341336)))

(declare-fun b!6193409 () Bool)

(assert (=> b!6193409 (= e!3771788 (+ (contextDepthTotal!283 (h!71017 lt!2341181)) (zipperDepthTotal!314 (t!378205 lt!2341181))))))

(declare-fun b!6193410 () Bool)

(assert (=> b!6193410 (= e!3771788 0)))

(assert (= (and d!1941693 c!1117606) b!6193409))

(assert (= (and d!1941693 (not c!1117606)) b!6193410))

(declare-fun m!7027390 () Bool)

(assert (=> b!6193409 m!7027390))

(declare-fun m!7027392 () Bool)

(assert (=> b!6193409 m!7027392))

(assert (=> b!6192431 d!1941693))

(declare-fun b!6193418 () Bool)

(declare-fun e!3771794 () Bool)

(declare-fun tp!1727957 () Bool)

(assert (=> b!6193418 (= e!3771794 tp!1727957)))

(declare-fun b!6193417 () Bool)

(declare-fun tp!1727958 () Bool)

(declare-fun e!3771793 () Bool)

(assert (=> b!6193417 (= e!3771793 (and (inv!83574 (h!71017 (t!378205 zl!343))) e!3771794 tp!1727958))))

(assert (=> b!6192440 (= tp!1727894 e!3771793)))

(assert (= b!6193417 b!6193418))

(assert (= (and b!6192440 ((_ is Cons!64569) (t!378205 zl!343))) b!6193417))

(declare-fun m!7027394 () Bool)

(assert (=> b!6193417 m!7027394))

(declare-fun b!6193423 () Bool)

(declare-fun e!3771797 () Bool)

(declare-fun tp!1727961 () Bool)

(assert (=> b!6193423 (= e!3771797 (and tp_is_empty!41515 tp!1727961))))

(assert (=> b!6192424 (= tp!1727886 e!3771797)))

(assert (= (and b!6192424 ((_ is Cons!64570) (t!378206 s!2326))) b!6193423))

(declare-fun b!6193436 () Bool)

(declare-fun e!3771800 () Bool)

(declare-fun tp!1727972 () Bool)

(assert (=> b!6193436 (= e!3771800 tp!1727972)))

(declare-fun b!6193437 () Bool)

(declare-fun tp!1727974 () Bool)

(declare-fun tp!1727976 () Bool)

(assert (=> b!6193437 (= e!3771800 (and tp!1727974 tp!1727976))))

(declare-fun b!6193435 () Bool)

(declare-fun tp!1727975 () Bool)

(declare-fun tp!1727973 () Bool)

(assert (=> b!6193435 (= e!3771800 (and tp!1727975 tp!1727973))))

(assert (=> b!6192438 (= tp!1727892 e!3771800)))

(declare-fun b!6193434 () Bool)

(assert (=> b!6193434 (= e!3771800 tp_is_empty!41515)))

(assert (= (and b!6192438 ((_ is ElementMatch!16131) (regOne!32774 r!7292))) b!6193434))

(assert (= (and b!6192438 ((_ is Concat!24976) (regOne!32774 r!7292))) b!6193435))

(assert (= (and b!6192438 ((_ is Star!16131) (regOne!32774 r!7292))) b!6193436))

(assert (= (and b!6192438 ((_ is Union!16131) (regOne!32774 r!7292))) b!6193437))

(declare-fun b!6193440 () Bool)

(declare-fun e!3771801 () Bool)

(declare-fun tp!1727977 () Bool)

(assert (=> b!6193440 (= e!3771801 tp!1727977)))

(declare-fun b!6193441 () Bool)

(declare-fun tp!1727979 () Bool)

(declare-fun tp!1727981 () Bool)

(assert (=> b!6193441 (= e!3771801 (and tp!1727979 tp!1727981))))

(declare-fun b!6193439 () Bool)

(declare-fun tp!1727980 () Bool)

(declare-fun tp!1727978 () Bool)

(assert (=> b!6193439 (= e!3771801 (and tp!1727980 tp!1727978))))

(assert (=> b!6192438 (= tp!1727888 e!3771801)))

(declare-fun b!6193438 () Bool)

(assert (=> b!6193438 (= e!3771801 tp_is_empty!41515)))

(assert (= (and b!6192438 ((_ is ElementMatch!16131) (regTwo!32774 r!7292))) b!6193438))

(assert (= (and b!6192438 ((_ is Concat!24976) (regTwo!32774 r!7292))) b!6193439))

(assert (= (and b!6192438 ((_ is Star!16131) (regTwo!32774 r!7292))) b!6193440))

(assert (= (and b!6192438 ((_ is Union!16131) (regTwo!32774 r!7292))) b!6193441))

(declare-fun b!6193444 () Bool)

(declare-fun e!3771802 () Bool)

(declare-fun tp!1727982 () Bool)

(assert (=> b!6193444 (= e!3771802 tp!1727982)))

(declare-fun b!6193445 () Bool)

(declare-fun tp!1727984 () Bool)

(declare-fun tp!1727986 () Bool)

(assert (=> b!6193445 (= e!3771802 (and tp!1727984 tp!1727986))))

(declare-fun b!6193443 () Bool)

(declare-fun tp!1727985 () Bool)

(declare-fun tp!1727983 () Bool)

(assert (=> b!6193443 (= e!3771802 (and tp!1727985 tp!1727983))))

(assert (=> b!6192422 (= tp!1727889 e!3771802)))

(declare-fun b!6193442 () Bool)

(assert (=> b!6193442 (= e!3771802 tp_is_empty!41515)))

(assert (= (and b!6192422 ((_ is ElementMatch!16131) (reg!16460 r!7292))) b!6193442))

(assert (= (and b!6192422 ((_ is Concat!24976) (reg!16460 r!7292))) b!6193443))

(assert (= (and b!6192422 ((_ is Star!16131) (reg!16460 r!7292))) b!6193444))

(assert (= (and b!6192422 ((_ is Union!16131) (reg!16460 r!7292))) b!6193445))

(declare-fun b!6193448 () Bool)

(declare-fun e!3771803 () Bool)

(declare-fun tp!1727987 () Bool)

(assert (=> b!6193448 (= e!3771803 tp!1727987)))

(declare-fun b!6193449 () Bool)

(declare-fun tp!1727989 () Bool)

(declare-fun tp!1727991 () Bool)

(assert (=> b!6193449 (= e!3771803 (and tp!1727989 tp!1727991))))

(declare-fun b!6193447 () Bool)

(declare-fun tp!1727990 () Bool)

(declare-fun tp!1727988 () Bool)

(assert (=> b!6193447 (= e!3771803 (and tp!1727990 tp!1727988))))

(assert (=> b!6192417 (= tp!1727890 e!3771803)))

(declare-fun b!6193446 () Bool)

(assert (=> b!6193446 (= e!3771803 tp_is_empty!41515)))

(assert (= (and b!6192417 ((_ is ElementMatch!16131) (regOne!32775 r!7292))) b!6193446))

(assert (= (and b!6192417 ((_ is Concat!24976) (regOne!32775 r!7292))) b!6193447))

(assert (= (and b!6192417 ((_ is Star!16131) (regOne!32775 r!7292))) b!6193448))

(assert (= (and b!6192417 ((_ is Union!16131) (regOne!32775 r!7292))) b!6193449))

(declare-fun b!6193452 () Bool)

(declare-fun e!3771804 () Bool)

(declare-fun tp!1727992 () Bool)

(assert (=> b!6193452 (= e!3771804 tp!1727992)))

(declare-fun b!6193453 () Bool)

(declare-fun tp!1727994 () Bool)

(declare-fun tp!1727996 () Bool)

(assert (=> b!6193453 (= e!3771804 (and tp!1727994 tp!1727996))))

(declare-fun b!6193451 () Bool)

(declare-fun tp!1727995 () Bool)

(declare-fun tp!1727993 () Bool)

(assert (=> b!6193451 (= e!3771804 (and tp!1727995 tp!1727993))))

(assert (=> b!6192417 (= tp!1727893 e!3771804)))

(declare-fun b!6193450 () Bool)

(assert (=> b!6193450 (= e!3771804 tp_is_empty!41515)))

(assert (= (and b!6192417 ((_ is ElementMatch!16131) (regTwo!32775 r!7292))) b!6193450))

(assert (= (and b!6192417 ((_ is Concat!24976) (regTwo!32775 r!7292))) b!6193451))

(assert (= (and b!6192417 ((_ is Star!16131) (regTwo!32775 r!7292))) b!6193452))

(assert (= (and b!6192417 ((_ is Union!16131) (regTwo!32775 r!7292))) b!6193453))

(declare-fun condSetEmpty!42016 () Bool)

(assert (=> setNonEmpty!42010 (= condSetEmpty!42016 (= setRest!42010 ((as const (Array Context!11030 Bool)) false)))))

(declare-fun setRes!42016 () Bool)

(assert (=> setNonEmpty!42010 (= tp!1727887 setRes!42016)))

(declare-fun setIsEmpty!42016 () Bool)

(assert (=> setIsEmpty!42016 setRes!42016))

(declare-fun tp!1728002 () Bool)

(declare-fun e!3771807 () Bool)

(declare-fun setElem!42016 () Context!11030)

(declare-fun setNonEmpty!42016 () Bool)

(assert (=> setNonEmpty!42016 (= setRes!42016 (and tp!1728002 (inv!83574 setElem!42016) e!3771807))))

(declare-fun setRest!42016 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42016 (= setRest!42010 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42016 true) setRest!42016))))

(declare-fun b!6193458 () Bool)

(declare-fun tp!1728001 () Bool)

(assert (=> b!6193458 (= e!3771807 tp!1728001)))

(assert (= (and setNonEmpty!42010 condSetEmpty!42016) setIsEmpty!42016))

(assert (= (and setNonEmpty!42010 (not condSetEmpty!42016)) setNonEmpty!42016))

(assert (= setNonEmpty!42016 b!6193458))

(declare-fun m!7027396 () Bool)

(assert (=> setNonEmpty!42016 m!7027396))

(declare-fun b!6193463 () Bool)

(declare-fun e!3771810 () Bool)

(declare-fun tp!1728007 () Bool)

(declare-fun tp!1728008 () Bool)

(assert (=> b!6193463 (= e!3771810 (and tp!1728007 tp!1728008))))

(assert (=> b!6192442 (= tp!1727885 e!3771810)))

(assert (= (and b!6192442 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343)))) b!6193463))

(declare-fun b!6193464 () Bool)

(declare-fun e!3771811 () Bool)

(declare-fun tp!1728009 () Bool)

(declare-fun tp!1728010 () Bool)

(assert (=> b!6193464 (= e!3771811 (and tp!1728009 tp!1728010))))

(assert (=> b!6192420 (= tp!1727891 e!3771811)))

(assert (= (and b!6192420 ((_ is Cons!64568) (exprs!6015 setElem!42010))) b!6193464))

(declare-fun b_lambda!235623 () Bool)

(assert (= b_lambda!235609 (or b!6192421 b_lambda!235623)))

(declare-fun bs!1536635 () Bool)

(declare-fun d!1941695 () Bool)

(assert (= bs!1536635 (and d!1941695 b!6192421)))

(assert (=> bs!1536635 (= (dynLambda!25462 lambda!338193 lt!2341203) (derivationStepZipperUp!1305 lt!2341203 (h!71018 s!2326)))))

(assert (=> bs!1536635 m!7026580))

(assert (=> d!1941547 d!1941695))

(declare-fun b_lambda!235625 () Bool)

(assert (= b_lambda!235611 (or b!6192421 b_lambda!235625)))

(declare-fun bs!1536636 () Bool)

(declare-fun d!1941697 () Bool)

(assert (= bs!1536636 (and d!1941697 b!6192421)))

(assert (=> bs!1536636 (= (dynLambda!25462 lambda!338193 lt!2341179) (derivationStepZipperUp!1305 lt!2341179 (h!71018 s!2326)))))

(assert (=> bs!1536636 m!7026586))

(assert (=> d!1941555 d!1941697))

(declare-fun b_lambda!235627 () Bool)

(assert (= b_lambda!235621 (or b!6192421 b_lambda!235627)))

(declare-fun bs!1536637 () Bool)

(declare-fun d!1941699 () Bool)

(assert (= bs!1536637 (and d!1941699 b!6192421)))

(assert (=> bs!1536637 (= (dynLambda!25462 lambda!338193 (h!71017 zl!343)) (derivationStepZipperUp!1305 (h!71017 zl!343) (h!71018 s!2326)))))

(assert (=> bs!1536637 m!7026532))

(assert (=> d!1941633 d!1941699))

(check-sat (not b!6193285) (not b!6193190) (not b!6193352) (not bm!517964) (not b!6192782) (not bm!517984) (not d!1941655) (not d!1941529) (not d!1941465) (not bm!517990) (not bm!518001) (not b!6192834) (not b!6192783) (not b!6193214) (not bm!517968) (not b!6193418) (not d!1941653) (not b!6193448) (not b!6193194) (not d!1941633) (not b!6193209) (not bm!517970) (not b!6193315) (not d!1941641) (not d!1941623) (not b!6193064) (not bm!517978) (not b!6192791) (not b!6193065) (not b!6193298) (not b!6193417) (not b!6193195) (not d!1941657) (not d!1941673) (not b!6192896) (not b!6193249) (not b!6193235) (not d!1941675) (not b!6192683) (not bm!517988) (not d!1941501) (not b!6193292) (not b!6193388) (not b!6192895) (not d!1941555) (not b!6193306) (not d!1941595) (not b!6193245) (not b!6193035) (not d!1941547) (not b!6192894) (not d!1941681) (not b!6193439) (not b!6193297) (not d!1941575) (not b!6193243) (not b!6192684) (not bm!517976) (not d!1941581) (not b!6193289) (not bm!517914) (not b!6193162) (not b!6193464) (not b!6193449) (not b!6193247) (not b!6193350) (not b!6193151) (not d!1941647) (not b!6193337) (not d!1941589) (not d!1941517) (not d!1941651) (not b!6192527) (not bm!517982) (not d!1941619) (not b_lambda!235627) (not d!1941677) (not d!1941661) (not b!6193353) (not bm!518003) (not d!1941643) (not b!6193239) (not b!6193237) (not b!6193398) (not b!6193341) (not b!6193313) (not b!6193314) (not d!1941513) (not d!1941635) (not b!6193242) (not b!6193050) (not d!1941659) (not b!6193351) (not b!6193307) (not bm!517985) (not b!6193301) (not d!1941685) (not d!1941553) (not d!1941477) (not d!1941665) (not bm!517965) (not b!6193234) (not bm!518000) (not b!6193407) (not bm!517913) (not b!6193409) (not b!6193384) (not b!6193236) (not b!6193447) (not b!6193244) (not b!6193381) (not b!6193339) (not b!6193338) (not b!6193189) (not b!6193325) (not d!1941551) (not b!6193240) (not b!6193336) (not bm!517986) (not d!1941617) (not b!6193252) (not b!6193248) (not bm!517989) (not bs!1536637) (not b!6192786) (not b!6193253) (not b!6193198) (not d!1941449) (not b!6193436) (not b!6193312) (not b!6193051) (not b!6192835) (not b!6193213) (not b!6193345) (not b!6193193) (not bm!517977) (not bm!517987) (not bs!1536635) (not b!6193440) (not b!6193293) (not b!6193229) (not b!6193288) (not d!1941645) (not b!6193452) (not d!1941515) (not b!6192891) (not b!6193444) (not b!6193291) (not b!6193283) (not b!6192893) (not bm!517941) (not b!6193290) (not b!6193453) (not b!6193326) tp_is_empty!41515 (not b!6193437) (not b!6193382) (not b!6193463) (not b!6193219) (not b!6193002) (not b_lambda!235625) (not b!6193347) (not d!1941637) (not b!6193282) (not b!6193390) (not setNonEmpty!42016) (not b!6192787) (not b!6193389) (not b!6193443) (not b!6193387) (not b!6192533) (not b!6193423) (not bm!518004) (not bm!517998) (not d!1941663) (not d!1941591) (not b!6193203) (not b!6193344) (not b!6193451) (not b!6193208) (not bm!517974) (not b!6193309) (not b!6192892) (not b!6193296) (not b!6193445) (not b!6192788) (not b_lambda!235623) (not b!6193191) (not b!6193230) (not b!6193233) (not d!1941545) (not d!1941679) (not b!6193000) (not b!6193246) (not bm!517997) (not b!6193441) (not b!6193346) (not b!6193001) (not b!6193257) (not b!6193254) (not d!1941627) (not b!6193458) (not b!6193241) (not d!1941615) (not bm!517948) (not bm!517971) (not b!6193379) (not b!6193435) (not b!6193238) (not b!6193034) (not d!1941587) (not d!1941667) (not d!1941649) (not d!1941639) (not bm!517979) (not b!6192999) (not bs!1536636) (not bm!517925))
(check-sat)
(get-model)

(declare-fun bs!1536658 () Bool)

(declare-fun b!6193497 () Bool)

(assert (= bs!1536658 (and b!6193497 d!1941529)))

(declare-fun lambda!338269 () Int)

(assert (=> bs!1536658 (not (= lambda!338269 lambda!338236))))

(declare-fun bs!1536659 () Bool)

(assert (= bs!1536659 (and b!6193497 b!6192678)))

(assert (=> bs!1536659 (not (= lambda!338269 lambda!338213))))

(declare-fun bs!1536660 () Bool)

(assert (= bs!1536660 (and b!6193497 d!1941517)))

(assert (=> bs!1536660 (not (= lambda!338269 lambda!338227))))

(declare-fun bs!1536661 () Bool)

(assert (= bs!1536661 (and b!6193497 b!6193329)))

(assert (=> bs!1536661 (= (and (= (reg!16460 (regOne!32775 lt!2341177)) (reg!16460 lt!2341177)) (= (regOne!32775 lt!2341177) lt!2341177)) (= lambda!338269 lambda!338260))))

(declare-fun bs!1536662 () Bool)

(assert (= bs!1536662 (and b!6193497 b!6193331)))

(assert (=> bs!1536662 (not (= lambda!338269 lambda!338261))))

(declare-fun bs!1536663 () Bool)

(assert (= bs!1536663 (and b!6193497 b!6192676)))

(assert (=> bs!1536663 (= (and (= (reg!16460 (regOne!32775 lt!2341177)) (reg!16460 r!7292)) (= (regOne!32775 lt!2341177) r!7292)) (= lambda!338269 lambda!338211))))

(declare-fun bs!1536664 () Bool)

(assert (= bs!1536664 (and b!6193497 b!6192412)))

(assert (=> bs!1536664 (not (= lambda!338269 lambda!338192))))

(declare-fun bs!1536665 () Bool)

(assert (= bs!1536665 (and b!6193497 b!6193320)))

(assert (=> bs!1536665 (not (= lambda!338269 lambda!338259))))

(assert (=> bs!1536664 (not (= lambda!338269 lambda!338191))))

(assert (=> bs!1536658 (not (= lambda!338269 lambda!338235))))

(declare-fun bs!1536666 () Bool)

(assert (= bs!1536666 (and b!6193497 b!6193318)))

(assert (=> bs!1536666 (= (and (= (reg!16460 (regOne!32775 lt!2341177)) (reg!16460 lt!2341185)) (= (regOne!32775 lt!2341177) lt!2341185)) (= lambda!338269 lambda!338258))))

(assert (=> b!6193497 true))

(assert (=> b!6193497 true))

(declare-fun bs!1536667 () Bool)

(declare-fun b!6193499 () Bool)

(assert (= bs!1536667 (and b!6193499 d!1941529)))

(declare-fun lambda!338270 () Int)

(assert (=> bs!1536667 (= (and (= (regOne!32774 (regOne!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338270 lambda!338236))))

(declare-fun bs!1536668 () Bool)

(assert (= bs!1536668 (and b!6193499 b!6192678)))

(assert (=> bs!1536668 (= (and (= (regOne!32774 (regOne!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338270 lambda!338213))))

(declare-fun bs!1536669 () Bool)

(assert (= bs!1536669 (and b!6193499 d!1941517)))

(assert (=> bs!1536669 (not (= lambda!338270 lambda!338227))))

(declare-fun bs!1536670 () Bool)

(assert (= bs!1536670 (and b!6193499 b!6193329)))

(assert (=> bs!1536670 (not (= lambda!338270 lambda!338260))))

(declare-fun bs!1536671 () Bool)

(assert (= bs!1536671 (and b!6193499 b!6193331)))

(assert (=> bs!1536671 (= (and (= (regOne!32774 (regOne!32775 lt!2341177)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regOne!32775 lt!2341177)) (regTwo!32774 lt!2341177))) (= lambda!338270 lambda!338261))))

(declare-fun bs!1536672 () Bool)

(assert (= bs!1536672 (and b!6193499 b!6192412)))

(assert (=> bs!1536672 (= (and (= (regOne!32774 (regOne!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338270 lambda!338192))))

(declare-fun bs!1536673 () Bool)

(assert (= bs!1536673 (and b!6193499 b!6193320)))

(assert (=> bs!1536673 (= (and (= (regOne!32774 (regOne!32775 lt!2341177)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regOne!32775 lt!2341177)) (regTwo!32774 lt!2341185))) (= lambda!338270 lambda!338259))))

(assert (=> bs!1536672 (not (= lambda!338270 lambda!338191))))

(assert (=> bs!1536667 (not (= lambda!338270 lambda!338235))))

(declare-fun bs!1536674 () Bool)

(assert (= bs!1536674 (and b!6193499 b!6193318)))

(assert (=> bs!1536674 (not (= lambda!338270 lambda!338258))))

(declare-fun bs!1536675 () Bool)

(assert (= bs!1536675 (and b!6193499 b!6193497)))

(assert (=> bs!1536675 (not (= lambda!338270 lambda!338269))))

(declare-fun bs!1536676 () Bool)

(assert (= bs!1536676 (and b!6193499 b!6192676)))

(assert (=> bs!1536676 (not (= lambda!338270 lambda!338211))))

(assert (=> b!6193499 true))

(assert (=> b!6193499 true))

(declare-fun b!6193495 () Bool)

(declare-fun e!3771831 () Bool)

(declare-fun call!518014 () Bool)

(assert (=> b!6193495 (= e!3771831 call!518014)))

(declare-fun b!6193496 () Bool)

(declare-fun e!3771832 () Bool)

(assert (=> b!6193496 (= e!3771832 (= s!2326 (Cons!64570 (c!1117312 (regOne!32775 lt!2341177)) Nil!64570)))))

(declare-fun e!3771830 () Bool)

(declare-fun call!518015 () Bool)

(assert (=> b!6193497 (= e!3771830 call!518015)))

(declare-fun b!6193498 () Bool)

(declare-fun e!3771834 () Bool)

(declare-fun e!3771835 () Bool)

(assert (=> b!6193498 (= e!3771834 e!3771835)))

(declare-fun c!1117618 () Bool)

(assert (=> b!6193498 (= c!1117618 ((_ is Star!16131) (regOne!32775 lt!2341177)))))

(assert (=> b!6193499 (= e!3771835 call!518015)))

(declare-fun b!6193500 () Bool)

(declare-fun c!1117620 () Bool)

(assert (=> b!6193500 (= c!1117620 ((_ is ElementMatch!16131) (regOne!32775 lt!2341177)))))

(declare-fun e!3771833 () Bool)

(assert (=> b!6193500 (= e!3771833 e!3771832)))

(declare-fun b!6193501 () Bool)

(declare-fun c!1117617 () Bool)

(assert (=> b!6193501 (= c!1117617 ((_ is Union!16131) (regOne!32775 lt!2341177)))))

(assert (=> b!6193501 (= e!3771832 e!3771834)))

(declare-fun b!6193502 () Bool)

(declare-fun res!2562054 () Bool)

(assert (=> b!6193502 (=> res!2562054 e!3771830)))

(assert (=> b!6193502 (= res!2562054 call!518014)))

(assert (=> b!6193502 (= e!3771835 e!3771830)))

(declare-fun bm!518009 () Bool)

(assert (=> bm!518009 (= call!518014 (isEmpty!36557 s!2326))))

(declare-fun b!6193503 () Bool)

(assert (=> b!6193503 (= e!3771831 e!3771833)))

(declare-fun res!2562052 () Bool)

(assert (=> b!6193503 (= res!2562052 (not ((_ is EmptyLang!16131) (regOne!32775 lt!2341177))))))

(assert (=> b!6193503 (=> (not res!2562052) (not e!3771833))))

(declare-fun bm!518010 () Bool)

(assert (=> bm!518010 (= call!518015 (Exists!3201 (ite c!1117618 lambda!338269 lambda!338270)))))

(declare-fun b!6193504 () Bool)

(declare-fun e!3771836 () Bool)

(assert (=> b!6193504 (= e!3771834 e!3771836)))

(declare-fun res!2562053 () Bool)

(assert (=> b!6193504 (= res!2562053 (matchRSpec!3232 (regOne!32775 (regOne!32775 lt!2341177)) s!2326))))

(assert (=> b!6193504 (=> res!2562053 e!3771836)))

(declare-fun b!6193505 () Bool)

(assert (=> b!6193505 (= e!3771836 (matchRSpec!3232 (regTwo!32775 (regOne!32775 lt!2341177)) s!2326))))

(declare-fun d!1941725 () Bool)

(declare-fun c!1117619 () Bool)

(assert (=> d!1941725 (= c!1117619 ((_ is EmptyExpr!16131) (regOne!32775 lt!2341177)))))

(assert (=> d!1941725 (= (matchRSpec!3232 (regOne!32775 lt!2341177) s!2326) e!3771831)))

(assert (= (and d!1941725 c!1117619) b!6193495))

(assert (= (and d!1941725 (not c!1117619)) b!6193503))

(assert (= (and b!6193503 res!2562052) b!6193500))

(assert (= (and b!6193500 c!1117620) b!6193496))

(assert (= (and b!6193500 (not c!1117620)) b!6193501))

(assert (= (and b!6193501 c!1117617) b!6193504))

(assert (= (and b!6193501 (not c!1117617)) b!6193498))

(assert (= (and b!6193504 (not res!2562053)) b!6193505))

(assert (= (and b!6193498 c!1117618) b!6193502))

(assert (= (and b!6193498 (not c!1117618)) b!6193499))

(assert (= (and b!6193502 (not res!2562054)) b!6193497))

(assert (= (or b!6193497 b!6193499) bm!518010))

(assert (= (or b!6193495 b!6193502) bm!518009))

(assert (=> bm!518009 m!7026692))

(declare-fun m!7027426 () Bool)

(assert (=> bm!518010 m!7027426))

(declare-fun m!7027428 () Bool)

(assert (=> b!6193504 m!7027428))

(declare-fun m!7027430 () Bool)

(assert (=> b!6193505 m!7027430))

(assert (=> b!6193336 d!1941725))

(declare-fun d!1941727 () Bool)

(assert (=> d!1941727 (= (isConcat!1066 lt!2341327) ((_ is Concat!24976) lt!2341327))))

(assert (=> b!6193339 d!1941727))

(declare-fun d!1941729 () Bool)

(assert (=> d!1941729 (= (nullable!6124 r!7292) (nullableFct!2082 r!7292))))

(declare-fun bs!1536677 () Bool)

(assert (= bs!1536677 d!1941729))

(declare-fun m!7027432 () Bool)

(assert (=> bs!1536677 m!7027432))

(assert (=> b!6192788 d!1941729))

(declare-fun d!1941731 () Bool)

(declare-fun c!1117628 () Bool)

(assert (=> d!1941731 (= c!1117628 ((_ is Nil!64569) lt!2341330))))

(declare-fun e!3771845 () (InoxSet Context!11030))

(assert (=> d!1941731 (= (content!12063 lt!2341330) e!3771845)))

(declare-fun b!6193522 () Bool)

(assert (=> b!6193522 (= e!3771845 ((as const (Array Context!11030 Bool)) false))))

(declare-fun b!6193523 () Bool)

(assert (=> b!6193523 (= e!3771845 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) (h!71017 lt!2341330) true) (content!12063 (t!378205 lt!2341330))))))

(assert (= (and d!1941731 c!1117628) b!6193522))

(assert (= (and d!1941731 (not c!1117628)) b!6193523))

(declare-fun m!7027434 () Bool)

(assert (=> b!6193523 m!7027434))

(declare-fun m!7027436 () Bool)

(assert (=> b!6193523 m!7027436))

(assert (=> b!6193350 d!1941731))

(assert (=> d!1941641 d!1941645))

(assert (=> d!1941641 d!1941643))

(declare-fun e!3771852 () Bool)

(declare-fun d!1941733 () Bool)

(assert (=> d!1941733 (= (matchZipper!2143 ((_ map or) lt!2341166 lt!2341164) (t!378206 s!2326)) e!3771852)))

(declare-fun res!2562057 () Bool)

(assert (=> d!1941733 (=> res!2562057 e!3771852)))

(assert (=> d!1941733 (= res!2562057 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(assert (=> d!1941733 true))

(declare-fun _$48!1830 () Unit!157827)

(assert (=> d!1941733 (= (choose!46013 lt!2341166 lt!2341164 (t!378206 s!2326)) _$48!1830)))

(declare-fun b!6193534 () Bool)

(assert (=> b!6193534 (= e!3771852 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1941733 (not res!2562057)) b!6193534))

(assert (=> d!1941733 m!7026504))

(assert (=> d!1941733 m!7026492))

(assert (=> b!6193534 m!7026452))

(assert (=> d!1941641 d!1941733))

(declare-fun b!6193545 () Bool)

(declare-fun res!2562063 () Bool)

(declare-fun e!3771857 () Bool)

(assert (=> b!6193545 (=> (not res!2562063) (not e!3771857))))

(declare-fun lt!2341342 () List!64694)

(declare-fun size!40263 (List!64694) Int)

(assert (=> b!6193545 (= res!2562063 (= (size!40263 lt!2341342) (+ (size!40263 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))) (size!40263 (t!378206 s!2326)))))))

(declare-fun b!6193543 () Bool)

(declare-fun e!3771858 () List!64694)

(assert (=> b!6193543 (= e!3771858 (t!378206 s!2326))))

(declare-fun d!1941735 () Bool)

(assert (=> d!1941735 e!3771857))

(declare-fun res!2562062 () Bool)

(assert (=> d!1941735 (=> (not res!2562062) (not e!3771857))))

(declare-fun content!12065 (List!64694) (InoxSet C!32532))

(assert (=> d!1941735 (= res!2562062 (= (content!12065 lt!2341342) ((_ map or) (content!12065 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))) (content!12065 (t!378206 s!2326)))))))

(assert (=> d!1941735 (= lt!2341342 e!3771858)))

(declare-fun c!1117636 () Bool)

(assert (=> d!1941735 (= c!1117636 ((_ is Nil!64570) (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))))))

(assert (=> d!1941735 (= (++!14210 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326)) lt!2341342)))

(declare-fun b!6193544 () Bool)

(assert (=> b!6193544 (= e!3771858 (Cons!64570 (h!71018 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))) (++!14210 (t!378206 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))) (t!378206 s!2326))))))

(declare-fun b!6193546 () Bool)

(assert (=> b!6193546 (= e!3771857 (or (not (= (t!378206 s!2326) Nil!64570)) (= lt!2341342 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)))))))

(assert (= (and d!1941735 c!1117636) b!6193543))

(assert (= (and d!1941735 (not c!1117636)) b!6193544))

(assert (= (and d!1941735 res!2562062) b!6193545))

(assert (= (and b!6193545 res!2562063) b!6193546))

(declare-fun m!7027438 () Bool)

(assert (=> b!6193545 m!7027438))

(assert (=> b!6193545 m!7026860))

(declare-fun m!7027440 () Bool)

(assert (=> b!6193545 m!7027440))

(declare-fun m!7027442 () Bool)

(assert (=> b!6193545 m!7027442))

(declare-fun m!7027444 () Bool)

(assert (=> d!1941735 m!7027444))

(assert (=> d!1941735 m!7026860))

(declare-fun m!7027446 () Bool)

(assert (=> d!1941735 m!7027446))

(declare-fun m!7027448 () Bool)

(assert (=> d!1941735 m!7027448))

(declare-fun m!7027450 () Bool)

(assert (=> b!6193544 m!7027450))

(assert (=> b!6192892 d!1941735))

(declare-fun b!6193549 () Bool)

(declare-fun res!2562065 () Bool)

(declare-fun e!3771859 () Bool)

(assert (=> b!6193549 (=> (not res!2562065) (not e!3771859))))

(declare-fun lt!2341343 () List!64694)

(assert (=> b!6193549 (= res!2562065 (= (size!40263 lt!2341343) (+ (size!40263 Nil!64570) (size!40263 (Cons!64570 (h!71018 s!2326) Nil!64570)))))))

(declare-fun b!6193547 () Bool)

(declare-fun e!3771860 () List!64694)

(assert (=> b!6193547 (= e!3771860 (Cons!64570 (h!71018 s!2326) Nil!64570))))

(declare-fun d!1941737 () Bool)

(assert (=> d!1941737 e!3771859))

(declare-fun res!2562064 () Bool)

(assert (=> d!1941737 (=> (not res!2562064) (not e!3771859))))

(assert (=> d!1941737 (= res!2562064 (= (content!12065 lt!2341343) ((_ map or) (content!12065 Nil!64570) (content!12065 (Cons!64570 (h!71018 s!2326) Nil!64570)))))))

(assert (=> d!1941737 (= lt!2341343 e!3771860)))

(declare-fun c!1117637 () Bool)

(assert (=> d!1941737 (= c!1117637 ((_ is Nil!64570) Nil!64570))))

(assert (=> d!1941737 (= (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) lt!2341343)))

(declare-fun b!6193548 () Bool)

(assert (=> b!6193548 (= e!3771860 (Cons!64570 (h!71018 Nil!64570) (++!14210 (t!378206 Nil!64570) (Cons!64570 (h!71018 s!2326) Nil!64570))))))

(declare-fun b!6193550 () Bool)

(assert (=> b!6193550 (= e!3771859 (or (not (= (Cons!64570 (h!71018 s!2326) Nil!64570) Nil!64570)) (= lt!2341343 Nil!64570)))))

(assert (= (and d!1941737 c!1117637) b!6193547))

(assert (= (and d!1941737 (not c!1117637)) b!6193548))

(assert (= (and d!1941737 res!2562064) b!6193549))

(assert (= (and b!6193549 res!2562065) b!6193550))

(declare-fun m!7027452 () Bool)

(assert (=> b!6193549 m!7027452))

(declare-fun m!7027454 () Bool)

(assert (=> b!6193549 m!7027454))

(declare-fun m!7027456 () Bool)

(assert (=> b!6193549 m!7027456))

(declare-fun m!7027458 () Bool)

(assert (=> d!1941737 m!7027458))

(declare-fun m!7027460 () Bool)

(assert (=> d!1941737 m!7027460))

(declare-fun m!7027462 () Bool)

(assert (=> d!1941737 m!7027462))

(declare-fun m!7027464 () Bool)

(assert (=> b!6193548 m!7027464))

(assert (=> b!6192892 d!1941737))

(declare-fun d!1941739 () Bool)

(assert (=> d!1941739 (= (++!14210 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326)) s!2326)))

(declare-fun lt!2341347 () Unit!157827)

(declare-fun choose!46018 (List!64694 C!32532 List!64694 List!64694) Unit!157827)

(assert (=> d!1941739 (= lt!2341347 (choose!46018 Nil!64570 (h!71018 s!2326) (t!378206 s!2326) s!2326))))

(assert (=> d!1941739 (= (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) (t!378206 s!2326))) s!2326)))

(assert (=> d!1941739 (= (lemmaMoveElementToOtherListKeepsConcatEq!2305 Nil!64570 (h!71018 s!2326) (t!378206 s!2326) s!2326) lt!2341347)))

(declare-fun bs!1536678 () Bool)

(assert (= bs!1536678 d!1941739))

(assert (=> bs!1536678 m!7026860))

(assert (=> bs!1536678 m!7026860))

(assert (=> bs!1536678 m!7026862))

(declare-fun m!7027474 () Bool)

(assert (=> bs!1536678 m!7027474))

(declare-fun m!7027476 () Bool)

(assert (=> bs!1536678 m!7027476))

(assert (=> b!6192892 d!1941739))

(declare-fun b!6193561 () Bool)

(declare-fun e!3771870 () Option!16022)

(declare-fun e!3771867 () Option!16022)

(assert (=> b!6193561 (= e!3771870 e!3771867)))

(declare-fun c!1117644 () Bool)

(assert (=> b!6193561 (= c!1117644 ((_ is Nil!64570) (t!378206 s!2326)))))

(declare-fun b!6193562 () Bool)

(assert (=> b!6193562 (= e!3771870 (Some!16021 (tuple2!66221 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326))))))

(declare-fun b!6193563 () Bool)

(assert (=> b!6193563 (= e!3771867 None!16021)))

(declare-fun b!6193564 () Bool)

(declare-fun e!3771866 () Bool)

(declare-fun lt!2341349 () Option!16022)

(assert (=> b!6193564 (= e!3771866 (not (isDefined!12725 lt!2341349)))))

(declare-fun b!6193565 () Bool)

(declare-fun lt!2341350 () Unit!157827)

(declare-fun lt!2341348 () Unit!157827)

(assert (=> b!6193565 (= lt!2341350 lt!2341348)))

(assert (=> b!6193565 (= (++!14210 (++!14210 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (Cons!64570 (h!71018 (t!378206 s!2326)) Nil!64570)) (t!378206 (t!378206 s!2326))) s!2326)))

(assert (=> b!6193565 (= lt!2341348 (lemmaMoveElementToOtherListKeepsConcatEq!2305 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (h!71018 (t!378206 s!2326)) (t!378206 (t!378206 s!2326)) s!2326))))

(assert (=> b!6193565 (= e!3771867 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) (++!14210 (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (Cons!64570 (h!71018 (t!378206 s!2326)) Nil!64570)) (t!378206 (t!378206 s!2326)) s!2326))))

(declare-fun d!1941743 () Bool)

(assert (=> d!1941743 e!3771866))

(declare-fun res!2562070 () Bool)

(assert (=> d!1941743 (=> res!2562070 e!3771866)))

(declare-fun e!3771869 () Bool)

(assert (=> d!1941743 (= res!2562070 e!3771869)))

(declare-fun res!2562068 () Bool)

(assert (=> d!1941743 (=> (not res!2562068) (not e!3771869))))

(assert (=> d!1941743 (= res!2562068 (isDefined!12725 lt!2341349))))

(assert (=> d!1941743 (= lt!2341349 e!3771870)))

(declare-fun c!1117643 () Bool)

(declare-fun e!3771868 () Bool)

(assert (=> d!1941743 (= c!1117643 e!3771868)))

(declare-fun res!2562066 () Bool)

(assert (=> d!1941743 (=> (not res!2562066) (not e!3771868))))

(assert (=> d!1941743 (= res!2562066 (matchR!8314 (regOne!32774 r!7292) (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570))))))

(assert (=> d!1941743 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1941743 (= (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) (++!14210 Nil!64570 (Cons!64570 (h!71018 s!2326) Nil!64570)) (t!378206 s!2326) s!2326) lt!2341349)))

(declare-fun b!6193566 () Bool)

(declare-fun res!2562069 () Bool)

(assert (=> b!6193566 (=> (not res!2562069) (not e!3771869))))

(assert (=> b!6193566 (= res!2562069 (matchR!8314 (regOne!32774 r!7292) (_1!36413 (get!22291 lt!2341349))))))

(declare-fun b!6193567 () Bool)

(assert (=> b!6193567 (= e!3771869 (= (++!14210 (_1!36413 (get!22291 lt!2341349)) (_2!36413 (get!22291 lt!2341349))) s!2326))))

(declare-fun b!6193568 () Bool)

(declare-fun res!2562067 () Bool)

(assert (=> b!6193568 (=> (not res!2562067) (not e!3771869))))

(assert (=> b!6193568 (= res!2562067 (matchR!8314 (regTwo!32774 r!7292) (_2!36413 (get!22291 lt!2341349))))))

(declare-fun b!6193569 () Bool)

(assert (=> b!6193569 (= e!3771868 (matchR!8314 (regTwo!32774 r!7292) (t!378206 s!2326)))))

(assert (= (and d!1941743 res!2562066) b!6193569))

(assert (= (and d!1941743 c!1117643) b!6193562))

(assert (= (and d!1941743 (not c!1117643)) b!6193561))

(assert (= (and b!6193561 c!1117644) b!6193563))

(assert (= (and b!6193561 (not c!1117644)) b!6193565))

(assert (= (and d!1941743 res!2562068) b!6193566))

(assert (= (and b!6193566 res!2562069) b!6193568))

(assert (= (and b!6193568 res!2562067) b!6193567))

(assert (= (and d!1941743 (not res!2562070)) b!6193564))

(declare-fun m!7027478 () Bool)

(assert (=> b!6193569 m!7027478))

(declare-fun m!7027480 () Bool)

(assert (=> b!6193567 m!7027480))

(declare-fun m!7027482 () Bool)

(assert (=> b!6193567 m!7027482))

(assert (=> b!6193568 m!7027480))

(declare-fun m!7027484 () Bool)

(assert (=> b!6193568 m!7027484))

(assert (=> b!6193565 m!7026860))

(declare-fun m!7027486 () Bool)

(assert (=> b!6193565 m!7027486))

(assert (=> b!6193565 m!7027486))

(declare-fun m!7027488 () Bool)

(assert (=> b!6193565 m!7027488))

(assert (=> b!6193565 m!7026860))

(declare-fun m!7027490 () Bool)

(assert (=> b!6193565 m!7027490))

(assert (=> b!6193565 m!7027486))

(declare-fun m!7027492 () Bool)

(assert (=> b!6193565 m!7027492))

(declare-fun m!7027494 () Bool)

(assert (=> b!6193564 m!7027494))

(assert (=> d!1941743 m!7027494))

(assert (=> d!1941743 m!7026860))

(declare-fun m!7027496 () Bool)

(assert (=> d!1941743 m!7027496))

(assert (=> d!1941743 m!7026872))

(assert (=> b!6193566 m!7027480))

(declare-fun m!7027498 () Bool)

(assert (=> b!6193566 m!7027498))

(assert (=> b!6192892 d!1941743))

(declare-fun d!1941747 () Bool)

(assert (=> d!1941747 (= (isEmpty!36557 s!2326) ((_ is Nil!64570) s!2326))))

(assert (=> bm!517986 d!1941747))

(assert (=> b!6193381 d!1941673))

(assert (=> b!6193347 d!1941475))

(declare-fun b!6193579 () Bool)

(declare-fun e!3771878 () (InoxSet Context!11030))

(declare-fun call!518031 () (InoxSet Context!11030))

(assert (=> b!6193579 (= e!3771878 call!518031)))

(declare-fun b!6193580 () Bool)

(declare-fun e!3771879 () (InoxSet Context!11030))

(assert (=> b!6193580 (= e!3771879 e!3771878)))

(declare-fun c!1117650 () Bool)

(assert (=> b!6193580 (= c!1117650 ((_ is Concat!24976) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193581 () Bool)

(declare-fun e!3771880 () (InoxSet Context!11030))

(declare-fun call!518032 () (InoxSet Context!11030))

(declare-fun call!518034 () (InoxSet Context!11030))

(assert (=> b!6193581 (= e!3771880 ((_ map or) call!518032 call!518034))))

(declare-fun b!6193582 () Bool)

(declare-fun e!3771881 () (InoxSet Context!11030))

(assert (=> b!6193582 (= e!3771881 ((as const (Array Context!11030 Bool)) false))))

(declare-fun call!518035 () List!64692)

(declare-fun bm!518026 () Bool)

(declare-fun c!1117647 () Bool)

(assert (=> bm!518026 (= call!518034 (derivationStepZipperDown!1379 (ite c!1117647 (regTwo!32775 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (regOne!32774 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))) (ite c!1117647 (ite c!1117544 lt!2341183 (Context!11031 call!517987)) (Context!11031 call!518035)) (h!71018 s!2326)))))

(declare-fun b!6193583 () Bool)

(declare-fun e!3771883 () Bool)

(assert (=> b!6193583 (= e!3771883 (nullable!6124 (regOne!32774 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun c!1117648 () Bool)

(declare-fun bm!518027 () Bool)

(assert (=> bm!518027 (= call!518035 ($colon$colon!2002 (exprs!6015 (ite c!1117544 lt!2341183 (Context!11031 call!517987))) (ite (or c!1117648 c!1117650) (regTwo!32774 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun bm!518028 () Bool)

(declare-fun call!518033 () (InoxSet Context!11030))

(assert (=> bm!518028 (= call!518031 call!518033)))

(declare-fun bm!518029 () Bool)

(assert (=> bm!518029 (= call!518033 call!518032)))

(declare-fun call!518036 () List!64692)

(declare-fun bm!518030 () Bool)

(assert (=> bm!518030 (= call!518032 (derivationStepZipperDown!1379 (ite c!1117647 (regOne!32775 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (ite c!1117648 (regTwo!32774 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (ite c!1117650 (regOne!32774 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (reg!16460 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))) (ite (or c!1117647 c!1117648) (ite c!1117544 lt!2341183 (Context!11031 call!517987)) (Context!11031 call!518036)) (h!71018 s!2326)))))

(declare-fun b!6193584 () Bool)

(assert (=> b!6193584 (= c!1117648 e!3771883)))

(declare-fun res!2562076 () Bool)

(assert (=> b!6193584 (=> (not res!2562076) (not e!3771883))))

(assert (=> b!6193584 (= res!2562076 ((_ is Concat!24976) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(assert (=> b!6193584 (= e!3771880 e!3771879)))

(declare-fun e!3771882 () (InoxSet Context!11030))

(declare-fun b!6193585 () Bool)

(assert (=> b!6193585 (= e!3771882 (store ((as const (Array Context!11030 Bool)) false) (ite c!1117544 lt!2341183 (Context!11031 call!517987)) true))))

(declare-fun b!6193586 () Bool)

(assert (=> b!6193586 (= e!3771881 call!518031)))

(declare-fun d!1941751 () Bool)

(declare-fun c!1117649 () Bool)

(assert (=> d!1941751 (= c!1117649 (and ((_ is ElementMatch!16131) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (= (c!1117312 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))) (h!71018 s!2326))))))

(assert (=> d!1941751 (= (derivationStepZipperDown!1379 (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))) (ite c!1117544 lt!2341183 (Context!11031 call!517987)) (h!71018 s!2326)) e!3771882)))

(declare-fun bm!518031 () Bool)

(assert (=> bm!518031 (= call!518036 call!518035)))

(declare-fun b!6193587 () Bool)

(declare-fun c!1117651 () Bool)

(assert (=> b!6193587 (= c!1117651 ((_ is Star!16131) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(assert (=> b!6193587 (= e!3771878 e!3771881)))

(declare-fun b!6193588 () Bool)

(assert (=> b!6193588 (= e!3771882 e!3771880)))

(assert (=> b!6193588 (= c!1117647 ((_ is Union!16131) (ite c!1117544 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193589 () Bool)

(assert (=> b!6193589 (= e!3771879 ((_ map or) call!518034 call!518033))))

(assert (= (and d!1941751 c!1117649) b!6193585))

(assert (= (and d!1941751 (not c!1117649)) b!6193588))

(assert (= (and b!6193588 c!1117647) b!6193581))

(assert (= (and b!6193588 (not c!1117647)) b!6193584))

(assert (= (and b!6193584 res!2562076) b!6193583))

(assert (= (and b!6193584 c!1117648) b!6193589))

(assert (= (and b!6193584 (not c!1117648)) b!6193580))

(assert (= (and b!6193580 c!1117650) b!6193579))

(assert (= (and b!6193580 (not c!1117650)) b!6193587))

(assert (= (and b!6193587 c!1117651) b!6193586))

(assert (= (and b!6193587 (not c!1117651)) b!6193582))

(assert (= (or b!6193579 b!6193586) bm!518031))

(assert (= (or b!6193579 b!6193586) bm!518028))

(assert (= (or b!6193589 bm!518031) bm!518027))

(assert (= (or b!6193589 bm!518028) bm!518029))

(assert (= (or b!6193581 b!6193589) bm!518026))

(assert (= (or b!6193581 bm!518029) bm!518030))

(declare-fun m!7027506 () Bool)

(assert (=> b!6193583 m!7027506))

(declare-fun m!7027510 () Bool)

(assert (=> bm!518030 m!7027510))

(declare-fun m!7027512 () Bool)

(assert (=> bm!518026 m!7027512))

(declare-fun m!7027514 () Bool)

(assert (=> bm!518027 m!7027514))

(declare-fun m!7027516 () Bool)

(assert (=> b!6193585 m!7027516))

(assert (=> bm!517978 d!1941751))

(declare-fun d!1941755 () Bool)

(declare-fun c!1117656 () Bool)

(assert (=> d!1941755 (= c!1117656 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3771890 () Bool)

(assert (=> d!1941755 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341164 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3771890)))

(declare-fun b!6193600 () Bool)

(assert (=> b!6193600 (= e!3771890 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341164 (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6193601 () Bool)

(assert (=> b!6193601 (= e!3771890 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341164 (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1941755 c!1117656) b!6193600))

(assert (= (and d!1941755 (not c!1117656)) b!6193601))

(assert (=> d!1941755 m!7026810))

(declare-fun m!7027518 () Bool)

(assert (=> d!1941755 m!7027518))

(assert (=> b!6193600 m!7026806))

(declare-fun m!7027520 () Bool)

(assert (=> b!6193600 m!7027520))

(assert (=> b!6193601 m!7026810))

(declare-fun m!7027522 () Bool)

(assert (=> b!6193601 m!7027522))

(assert (=> b!6193601 m!7026806))

(assert (=> b!6193601 m!7027522))

(declare-fun m!7027524 () Bool)

(assert (=> b!6193601 m!7027524))

(assert (=> b!6193601 m!7026810))

(declare-fun m!7027526 () Bool)

(assert (=> b!6193601 m!7027526))

(assert (=> b!6193601 m!7027524))

(assert (=> b!6193601 m!7027526))

(declare-fun m!7027528 () Bool)

(assert (=> b!6193601 m!7027528))

(assert (=> b!6192835 d!1941755))

(declare-fun bs!1536697 () Bool)

(declare-fun d!1941757 () Bool)

(assert (= bs!1536697 (and d!1941757 b!6192421)))

(declare-fun lambda!338275 () Int)

(assert (=> bs!1536697 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338275 lambda!338193))))

(assert (=> d!1941757 true))

(assert (=> d!1941757 (= (derivationStepZipper!2099 lt!2341164 (head!12774 (t!378206 s!2326))) (flatMap!1636 lt!2341164 lambda!338275))))

(declare-fun bs!1536698 () Bool)

(assert (= bs!1536698 d!1941757))

(declare-fun m!7027542 () Bool)

(assert (=> bs!1536698 m!7027542))

(assert (=> b!6192835 d!1941757))

(declare-fun d!1941759 () Bool)

(assert (=> d!1941759 (= (head!12774 (t!378206 s!2326)) (h!71018 (t!378206 s!2326)))))

(assert (=> b!6192835 d!1941759))

(declare-fun d!1941763 () Bool)

(assert (=> d!1941763 (= (tail!11859 (t!378206 s!2326)) (t!378206 (t!378206 s!2326)))))

(assert (=> b!6192835 d!1941763))

(assert (=> d!1941633 d!1941627))

(declare-fun d!1941765 () Bool)

(assert (=> d!1941765 (= (flatMap!1636 z!1189 lambda!338193) (dynLambda!25462 lambda!338193 (h!71017 zl!343)))))

(assert (=> d!1941765 true))

(declare-fun _$13!3187 () Unit!157827)

(assert (=> d!1941765 (= (choose!46006 z!1189 (h!71017 zl!343) lambda!338193) _$13!3187)))

(declare-fun b_lambda!235629 () Bool)

(assert (=> (not b_lambda!235629) (not d!1941765)))

(declare-fun bs!1536699 () Bool)

(assert (= bs!1536699 d!1941765))

(assert (=> bs!1536699 m!7026528))

(assert (=> bs!1536699 m!7027196))

(assert (=> d!1941633 d!1941765))

(declare-fun d!1941769 () Bool)

(declare-fun res!2562083 () Bool)

(declare-fun e!3771895 () Bool)

(assert (=> d!1941769 (=> res!2562083 e!3771895)))

(assert (=> d!1941769 (= res!2562083 ((_ is Nil!64568) (exprs!6015 setElem!42010)))))

(assert (=> d!1941769 (= (forall!15247 (exprs!6015 setElem!42010) lambda!338253) e!3771895)))

(declare-fun b!6193608 () Bool)

(declare-fun e!3771896 () Bool)

(assert (=> b!6193608 (= e!3771895 e!3771896)))

(declare-fun res!2562084 () Bool)

(assert (=> b!6193608 (=> (not res!2562084) (not e!3771896))))

(declare-fun dynLambda!25464 (Int Regex!16131) Bool)

(assert (=> b!6193608 (= res!2562084 (dynLambda!25464 lambda!338253 (h!71016 (exprs!6015 setElem!42010))))))

(declare-fun b!6193609 () Bool)

(assert (=> b!6193609 (= e!3771896 (forall!15247 (t!378204 (exprs!6015 setElem!42010)) lambda!338253))))

(assert (= (and d!1941769 (not res!2562083)) b!6193608))

(assert (= (and b!6193608 res!2562084) b!6193609))

(declare-fun b_lambda!235631 () Bool)

(assert (=> (not b_lambda!235631) (not b!6193608)))

(declare-fun m!7027550 () Bool)

(assert (=> b!6193608 m!7027550))

(declare-fun m!7027552 () Bool)

(assert (=> b!6193609 m!7027552))

(assert (=> d!1941619 d!1941769))

(declare-fun d!1941771 () Bool)

(assert (=> d!1941771 (= (nullable!6124 lt!2341177) (nullableFct!2082 lt!2341177))))

(declare-fun bs!1536700 () Bool)

(assert (= bs!1536700 d!1941771))

(declare-fun m!7027554 () Bool)

(assert (=> bs!1536700 m!7027554))

(assert (=> b!6193254 d!1941771))

(declare-fun bs!1536701 () Bool)

(declare-fun b!6193612 () Bool)

(assert (= bs!1536701 (and b!6193612 d!1941529)))

(declare-fun lambda!338276 () Int)

(assert (=> bs!1536701 (not (= lambda!338276 lambda!338236))))

(declare-fun bs!1536703 () Bool)

(assert (= bs!1536703 (and b!6193612 b!6192678)))

(assert (=> bs!1536703 (not (= lambda!338276 lambda!338213))))

(declare-fun bs!1536704 () Bool)

(assert (= bs!1536704 (and b!6193612 d!1941517)))

(assert (=> bs!1536704 (not (= lambda!338276 lambda!338227))))

(declare-fun bs!1536705 () Bool)

(assert (= bs!1536705 (and b!6193612 b!6193329)))

(assert (=> bs!1536705 (= (and (= (reg!16460 (regOne!32775 lt!2341185)) (reg!16460 lt!2341177)) (= (regOne!32775 lt!2341185) lt!2341177)) (= lambda!338276 lambda!338260))))

(declare-fun bs!1536706 () Bool)

(assert (= bs!1536706 (and b!6193612 b!6193499)))

(assert (=> bs!1536706 (not (= lambda!338276 lambda!338270))))

(declare-fun bs!1536707 () Bool)

(assert (= bs!1536707 (and b!6193612 b!6193331)))

(assert (=> bs!1536707 (not (= lambda!338276 lambda!338261))))

(declare-fun bs!1536708 () Bool)

(assert (= bs!1536708 (and b!6193612 b!6192412)))

(assert (=> bs!1536708 (not (= lambda!338276 lambda!338192))))

(declare-fun bs!1536709 () Bool)

(assert (= bs!1536709 (and b!6193612 b!6193320)))

(assert (=> bs!1536709 (not (= lambda!338276 lambda!338259))))

(assert (=> bs!1536708 (not (= lambda!338276 lambda!338191))))

(assert (=> bs!1536701 (not (= lambda!338276 lambda!338235))))

(declare-fun bs!1536710 () Bool)

(assert (= bs!1536710 (and b!6193612 b!6193318)))

(assert (=> bs!1536710 (= (and (= (reg!16460 (regOne!32775 lt!2341185)) (reg!16460 lt!2341185)) (= (regOne!32775 lt!2341185) lt!2341185)) (= lambda!338276 lambda!338258))))

(declare-fun bs!1536711 () Bool)

(assert (= bs!1536711 (and b!6193612 b!6193497)))

(assert (=> bs!1536711 (= (and (= (reg!16460 (regOne!32775 lt!2341185)) (reg!16460 (regOne!32775 lt!2341177))) (= (regOne!32775 lt!2341185) (regOne!32775 lt!2341177))) (= lambda!338276 lambda!338269))))

(declare-fun bs!1536712 () Bool)

(assert (= bs!1536712 (and b!6193612 b!6192676)))

(assert (=> bs!1536712 (= (and (= (reg!16460 (regOne!32775 lt!2341185)) (reg!16460 r!7292)) (= (regOne!32775 lt!2341185) r!7292)) (= lambda!338276 lambda!338211))))

(assert (=> b!6193612 true))

(assert (=> b!6193612 true))

(declare-fun bs!1536713 () Bool)

(declare-fun b!6193614 () Bool)

(assert (= bs!1536713 (and b!6193614 d!1941529)))

(declare-fun lambda!338277 () Int)

(assert (=> bs!1536713 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338277 lambda!338236))))

(declare-fun bs!1536714 () Bool)

(assert (= bs!1536714 (and b!6193614 d!1941517)))

(assert (=> bs!1536714 (not (= lambda!338277 lambda!338227))))

(declare-fun bs!1536715 () Bool)

(assert (= bs!1536715 (and b!6193614 b!6193329)))

(assert (=> bs!1536715 (not (= lambda!338277 lambda!338260))))

(declare-fun bs!1536716 () Bool)

(assert (= bs!1536716 (and b!6193614 b!6193499)))

(assert (=> bs!1536716 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338277 lambda!338270))))

(declare-fun bs!1536717 () Bool)

(assert (= bs!1536717 (and b!6193614 b!6193331)))

(assert (=> bs!1536717 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 lt!2341177))) (= lambda!338277 lambda!338261))))

(declare-fun bs!1536718 () Bool)

(assert (= bs!1536718 (and b!6193614 b!6192412)))

(assert (=> bs!1536718 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338277 lambda!338192))))

(declare-fun bs!1536719 () Bool)

(assert (= bs!1536719 (and b!6193614 b!6193320)))

(assert (=> bs!1536719 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 lt!2341185))) (= lambda!338277 lambda!338259))))

(assert (=> bs!1536718 (not (= lambda!338277 lambda!338191))))

(assert (=> bs!1536713 (not (= lambda!338277 lambda!338235))))

(declare-fun bs!1536720 () Bool)

(assert (= bs!1536720 (and b!6193614 b!6193318)))

(assert (=> bs!1536720 (not (= lambda!338277 lambda!338258))))

(declare-fun bs!1536721 () Bool)

(assert (= bs!1536721 (and b!6193614 b!6193612)))

(assert (=> bs!1536721 (not (= lambda!338277 lambda!338276))))

(declare-fun bs!1536722 () Bool)

(assert (= bs!1536722 (and b!6193614 b!6192678)))

(assert (=> bs!1536722 (= (and (= (regOne!32774 (regOne!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338277 lambda!338213))))

(declare-fun bs!1536723 () Bool)

(assert (= bs!1536723 (and b!6193614 b!6193497)))

(assert (=> bs!1536723 (not (= lambda!338277 lambda!338269))))

(declare-fun bs!1536724 () Bool)

(assert (= bs!1536724 (and b!6193614 b!6192676)))

(assert (=> bs!1536724 (not (= lambda!338277 lambda!338211))))

(assert (=> b!6193614 true))

(assert (=> b!6193614 true))

(declare-fun b!6193610 () Bool)

(declare-fun e!3771898 () Bool)

(declare-fun call!518037 () Bool)

(assert (=> b!6193610 (= e!3771898 call!518037)))

(declare-fun b!6193611 () Bool)

(declare-fun e!3771899 () Bool)

(assert (=> b!6193611 (= e!3771899 (= s!2326 (Cons!64570 (c!1117312 (regOne!32775 lt!2341185)) Nil!64570)))))

(declare-fun e!3771897 () Bool)

(declare-fun call!518038 () Bool)

(assert (=> b!6193612 (= e!3771897 call!518038)))

(declare-fun b!6193613 () Bool)

(declare-fun e!3771901 () Bool)

(declare-fun e!3771902 () Bool)

(assert (=> b!6193613 (= e!3771901 e!3771902)))

(declare-fun c!1117660 () Bool)

(assert (=> b!6193613 (= c!1117660 ((_ is Star!16131) (regOne!32775 lt!2341185)))))

(assert (=> b!6193614 (= e!3771902 call!518038)))

(declare-fun b!6193615 () Bool)

(declare-fun c!1117662 () Bool)

(assert (=> b!6193615 (= c!1117662 ((_ is ElementMatch!16131) (regOne!32775 lt!2341185)))))

(declare-fun e!3771900 () Bool)

(assert (=> b!6193615 (= e!3771900 e!3771899)))

(declare-fun b!6193616 () Bool)

(declare-fun c!1117659 () Bool)

(assert (=> b!6193616 (= c!1117659 ((_ is Union!16131) (regOne!32775 lt!2341185)))))

(assert (=> b!6193616 (= e!3771899 e!3771901)))

(declare-fun b!6193617 () Bool)

(declare-fun res!2562087 () Bool)

(assert (=> b!6193617 (=> res!2562087 e!3771897)))

(assert (=> b!6193617 (= res!2562087 call!518037)))

(assert (=> b!6193617 (= e!3771902 e!3771897)))

(declare-fun bm!518032 () Bool)

(assert (=> bm!518032 (= call!518037 (isEmpty!36557 s!2326))))

(declare-fun b!6193618 () Bool)

(assert (=> b!6193618 (= e!3771898 e!3771900)))

(declare-fun res!2562085 () Bool)

(assert (=> b!6193618 (= res!2562085 (not ((_ is EmptyLang!16131) (regOne!32775 lt!2341185))))))

(assert (=> b!6193618 (=> (not res!2562085) (not e!3771900))))

(declare-fun bm!518033 () Bool)

(assert (=> bm!518033 (= call!518038 (Exists!3201 (ite c!1117660 lambda!338276 lambda!338277)))))

(declare-fun b!6193619 () Bool)

(declare-fun e!3771903 () Bool)

(assert (=> b!6193619 (= e!3771901 e!3771903)))

(declare-fun res!2562086 () Bool)

(assert (=> b!6193619 (= res!2562086 (matchRSpec!3232 (regOne!32775 (regOne!32775 lt!2341185)) s!2326))))

(assert (=> b!6193619 (=> res!2562086 e!3771903)))

(declare-fun b!6193620 () Bool)

(assert (=> b!6193620 (= e!3771903 (matchRSpec!3232 (regTwo!32775 (regOne!32775 lt!2341185)) s!2326))))

(declare-fun d!1941773 () Bool)

(declare-fun c!1117661 () Bool)

(assert (=> d!1941773 (= c!1117661 ((_ is EmptyExpr!16131) (regOne!32775 lt!2341185)))))

(assert (=> d!1941773 (= (matchRSpec!3232 (regOne!32775 lt!2341185) s!2326) e!3771898)))

(assert (= (and d!1941773 c!1117661) b!6193610))

(assert (= (and d!1941773 (not c!1117661)) b!6193618))

(assert (= (and b!6193618 res!2562085) b!6193615))

(assert (= (and b!6193615 c!1117662) b!6193611))

(assert (= (and b!6193615 (not c!1117662)) b!6193616))

(assert (= (and b!6193616 c!1117659) b!6193619))

(assert (= (and b!6193616 (not c!1117659)) b!6193613))

(assert (= (and b!6193619 (not res!2562086)) b!6193620))

(assert (= (and b!6193613 c!1117660) b!6193617))

(assert (= (and b!6193613 (not c!1117660)) b!6193614))

(assert (= (and b!6193617 (not res!2562087)) b!6193612))

(assert (= (or b!6193612 b!6193614) bm!518033))

(assert (= (or b!6193610 b!6193617) bm!518032))

(assert (=> bm!518032 m!7026692))

(declare-fun m!7027568 () Bool)

(assert (=> bm!518033 m!7027568))

(declare-fun m!7027570 () Bool)

(assert (=> b!6193619 m!7027570))

(declare-fun m!7027572 () Bool)

(assert (=> b!6193620 m!7027572))

(assert (=> b!6193325 d!1941773))

(assert (=> bm!517913 d!1941747))

(declare-fun d!1941781 () Bool)

(assert (=> d!1941781 (= (isEmpty!36555 (exprs!6015 (h!71017 zl!343))) ((_ is Nil!64568) (exprs!6015 (h!71017 zl!343))))))

(assert (=> b!6193390 d!1941781))

(declare-fun d!1941783 () Bool)

(assert (=> d!1941783 (= (isEmpty!36555 (tail!11860 lt!2341187)) ((_ is Nil!64568) (tail!11860 lt!2341187)))))

(assert (=> b!6193312 d!1941783))

(declare-fun d!1941785 () Bool)

(assert (=> d!1941785 (= (tail!11860 lt!2341187) (t!378204 lt!2341187))))

(assert (=> b!6193312 d!1941785))

(declare-fun d!1941787 () Bool)

(declare-fun c!1117666 () Bool)

(assert (=> d!1941787 (= c!1117666 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3771905 () Bool)

(assert (=> d!1941787 (= (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341188 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3771905)))

(declare-fun b!6193625 () Bool)

(assert (=> b!6193625 (= e!3771905 (nullableZipper!1907 (derivationStepZipper!2099 ((_ map or) lt!2341188 lt!2341164) (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6193626 () Bool)

(assert (=> b!6193626 (= e!3771905 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 ((_ map or) lt!2341188 lt!2341164) (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1941787 c!1117666) b!6193625))

(assert (= (and d!1941787 (not c!1117666)) b!6193626))

(assert (=> d!1941787 m!7026810))

(assert (=> d!1941787 m!7027518))

(assert (=> b!6193625 m!7027212))

(declare-fun m!7027576 () Bool)

(assert (=> b!6193625 m!7027576))

(assert (=> b!6193626 m!7026810))

(assert (=> b!6193626 m!7027522))

(assert (=> b!6193626 m!7027212))

(assert (=> b!6193626 m!7027522))

(declare-fun m!7027578 () Bool)

(assert (=> b!6193626 m!7027578))

(assert (=> b!6193626 m!7026810))

(assert (=> b!6193626 m!7027526))

(assert (=> b!6193626 m!7027578))

(assert (=> b!6193626 m!7027526))

(declare-fun m!7027580 () Bool)

(assert (=> b!6193626 m!7027580))

(assert (=> b!6193237 d!1941787))

(declare-fun bs!1536729 () Bool)

(declare-fun d!1941795 () Bool)

(assert (= bs!1536729 (and d!1941795 b!6192421)))

(declare-fun lambda!338282 () Int)

(assert (=> bs!1536729 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338282 lambda!338193))))

(declare-fun bs!1536730 () Bool)

(assert (= bs!1536730 (and d!1941795 d!1941757)))

(assert (=> bs!1536730 (= lambda!338282 lambda!338275)))

(assert (=> d!1941795 true))

(assert (=> d!1941795 (= (derivationStepZipper!2099 ((_ map or) lt!2341188 lt!2341164) (head!12774 (t!378206 s!2326))) (flatMap!1636 ((_ map or) lt!2341188 lt!2341164) lambda!338282))))

(declare-fun bs!1536731 () Bool)

(assert (= bs!1536731 d!1941795))

(declare-fun m!7027584 () Bool)

(assert (=> bs!1536731 m!7027584))

(assert (=> b!6193237 d!1941795))

(assert (=> b!6193237 d!1941759))

(assert (=> b!6193237 d!1941763))

(declare-fun d!1941799 () Bool)

(assert (=> d!1941799 (= (head!12775 (unfocusZipperList!1552 zl!343)) (h!71016 (unfocusZipperList!1552 zl!343)))))

(assert (=> b!6193194 d!1941799))

(declare-fun d!1941801 () Bool)

(assert (=> d!1941801 (= (head!12774 s!2326) (h!71018 s!2326))))

(assert (=> b!6193292 d!1941801))

(declare-fun d!1941803 () Bool)

(declare-fun lt!2341355 () Int)

(assert (=> d!1941803 (>= lt!2341355 0)))

(declare-fun e!3771921 () Int)

(assert (=> d!1941803 (= lt!2341355 e!3771921)))

(declare-fun c!1117676 () Bool)

(assert (=> d!1941803 (= c!1117676 ((_ is Cons!64568) (exprs!6015 (h!71017 lt!2341181))))))

(assert (=> d!1941803 (= (contextDepthTotal!283 (h!71017 lt!2341181)) lt!2341355)))

(declare-fun b!6193650 () Bool)

(declare-fun regexDepthTotal!142 (Regex!16131) Int)

(assert (=> b!6193650 (= e!3771921 (+ (regexDepthTotal!142 (h!71016 (exprs!6015 (h!71017 lt!2341181)))) (contextDepthTotal!283 (Context!11031 (t!378204 (exprs!6015 (h!71017 lt!2341181)))))))))

(declare-fun b!6193651 () Bool)

(assert (=> b!6193651 (= e!3771921 1)))

(assert (= (and d!1941803 c!1117676) b!6193650))

(assert (= (and d!1941803 (not c!1117676)) b!6193651))

(declare-fun m!7027604 () Bool)

(assert (=> b!6193650 m!7027604))

(declare-fun m!7027606 () Bool)

(assert (=> b!6193650 m!7027606))

(assert (=> b!6193409 d!1941803))

(declare-fun d!1941807 () Bool)

(declare-fun lt!2341356 () Int)

(assert (=> d!1941807 (>= lt!2341356 0)))

(declare-fun e!3771922 () Int)

(assert (=> d!1941807 (= lt!2341356 e!3771922)))

(declare-fun c!1117677 () Bool)

(assert (=> d!1941807 (= c!1117677 ((_ is Cons!64569) (t!378205 lt!2341181)))))

(assert (=> d!1941807 (= (zipperDepthTotal!314 (t!378205 lt!2341181)) lt!2341356)))

(declare-fun b!6193652 () Bool)

(assert (=> b!6193652 (= e!3771922 (+ (contextDepthTotal!283 (h!71017 (t!378205 lt!2341181))) (zipperDepthTotal!314 (t!378205 (t!378205 lt!2341181)))))))

(declare-fun b!6193653 () Bool)

(assert (=> b!6193653 (= e!3771922 0)))

(assert (= (and d!1941807 c!1117677) b!6193652))

(assert (= (and d!1941807 (not c!1117677)) b!6193653))

(declare-fun m!7027614 () Bool)

(assert (=> b!6193652 m!7027614))

(declare-fun m!7027616 () Bool)

(assert (=> b!6193652 m!7027616))

(assert (=> b!6193409 d!1941807))

(declare-fun d!1941811 () Bool)

(assert (=> d!1941811 (= (isEmpty!36557 (tail!11859 s!2326)) ((_ is Nil!64570) (tail!11859 s!2326)))))

(assert (=> b!6192787 d!1941811))

(declare-fun d!1941813 () Bool)

(assert (=> d!1941813 (= (tail!11859 s!2326) (t!378206 s!2326))))

(assert (=> b!6192787 d!1941813))

(declare-fun b!6193654 () Bool)

(declare-fun e!3771924 () Bool)

(declare-fun call!518043 () Bool)

(assert (=> b!6193654 (= e!3771924 call!518043)))

(declare-fun b!6193655 () Bool)

(declare-fun e!3771928 () Bool)

(declare-fun e!3771929 () Bool)

(assert (=> b!6193655 (= e!3771928 e!3771929)))

(declare-fun c!1117679 () Bool)

(assert (=> b!6193655 (= c!1117679 ((_ is Union!16131) (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6193656 () Bool)

(declare-fun e!3771923 () Bool)

(declare-fun call!518042 () Bool)

(assert (=> b!6193656 (= e!3771923 call!518042)))

(declare-fun b!6193657 () Bool)

(declare-fun e!3771927 () Bool)

(assert (=> b!6193657 (= e!3771927 e!3771928)))

(declare-fun c!1117678 () Bool)

(assert (=> b!6193657 (= c!1117678 ((_ is Star!16131) (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun d!1941815 () Bool)

(declare-fun res!2562098 () Bool)

(assert (=> d!1941815 (=> res!2562098 e!3771927)))

(assert (=> d!1941815 (= res!2562098 ((_ is ElementMatch!16131) (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(assert (=> d!1941815 (= (validRegex!7867 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))) e!3771927)))

(declare-fun bm!518037 () Bool)

(assert (=> bm!518037 (= call!518042 (validRegex!7867 (ite c!1117678 (reg!16460 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))) (ite c!1117679 (regOne!32775 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))) (regOne!32774 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518038 () Bool)

(assert (=> bm!518038 (= call!518043 (validRegex!7867 (ite c!1117679 (regTwo!32775 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))) (regTwo!32774 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6193658 () Bool)

(declare-fun e!3771925 () Bool)

(assert (=> b!6193658 (= e!3771925 e!3771924)))

(declare-fun res!2562099 () Bool)

(assert (=> b!6193658 (=> (not res!2562099) (not e!3771924))))

(declare-fun call!518044 () Bool)

(assert (=> b!6193658 (= res!2562099 call!518044)))

(declare-fun b!6193659 () Bool)

(declare-fun res!2562097 () Bool)

(assert (=> b!6193659 (=> res!2562097 e!3771925)))

(assert (=> b!6193659 (= res!2562097 (not ((_ is Concat!24976) (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(assert (=> b!6193659 (= e!3771929 e!3771925)))

(declare-fun b!6193660 () Bool)

(declare-fun res!2562095 () Bool)

(declare-fun e!3771926 () Bool)

(assert (=> b!6193660 (=> (not res!2562095) (not e!3771926))))

(assert (=> b!6193660 (= res!2562095 call!518044)))

(assert (=> b!6193660 (= e!3771929 e!3771926)))

(declare-fun b!6193661 () Bool)

(assert (=> b!6193661 (= e!3771928 e!3771923)))

(declare-fun res!2562096 () Bool)

(assert (=> b!6193661 (= res!2562096 (not (nullable!6124 (reg!16460 (ite c!1117605 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193661 (=> (not res!2562096) (not e!3771923))))

(declare-fun bm!518039 () Bool)

(assert (=> bm!518039 (= call!518044 call!518042)))

(declare-fun b!6193662 () Bool)

(assert (=> b!6193662 (= e!3771926 call!518043)))

(assert (= (and d!1941815 (not res!2562098)) b!6193657))

(assert (= (and b!6193657 c!1117678) b!6193661))

(assert (= (and b!6193657 (not c!1117678)) b!6193655))

(assert (= (and b!6193661 res!2562096) b!6193656))

(assert (= (and b!6193655 c!1117679) b!6193660))

(assert (= (and b!6193655 (not c!1117679)) b!6193659))

(assert (= (and b!6193660 res!2562095) b!6193662))

(assert (= (and b!6193659 (not res!2562097)) b!6193658))

(assert (= (and b!6193658 res!2562099) b!6193654))

(assert (= (or b!6193662 b!6193654) bm!518038))

(assert (= (or b!6193660 b!6193658) bm!518039))

(assert (= (or b!6193656 bm!518039) bm!518037))

(declare-fun m!7027618 () Bool)

(assert (=> bm!518037 m!7027618))

(declare-fun m!7027620 () Bool)

(assert (=> bm!518038 m!7027620))

(declare-fun m!7027622 () Bool)

(assert (=> b!6193661 m!7027622))

(assert (=> bm!518004 d!1941815))

(assert (=> d!1941547 d!1941575))

(declare-fun d!1941817 () Bool)

(assert (=> d!1941817 (= (flatMap!1636 lt!2341186 lambda!338193) (dynLambda!25462 lambda!338193 lt!2341203))))

(assert (=> d!1941817 true))

(declare-fun _$13!3188 () Unit!157827)

(assert (=> d!1941817 (= (choose!46006 lt!2341186 lt!2341203 lambda!338193) _$13!3188)))

(declare-fun b_lambda!235633 () Bool)

(assert (=> (not b_lambda!235633) (not d!1941817)))

(declare-fun bs!1536742 () Bool)

(assert (= bs!1536742 d!1941817))

(assert (=> bs!1536742 m!7026578))

(assert (=> bs!1536742 m!7026980))

(assert (=> d!1941547 d!1941817))

(declare-fun d!1941819 () Bool)

(assert (=> d!1941819 (= (isEmpty!36555 lt!2341202) ((_ is Nil!64568) lt!2341202))))

(assert (=> b!6193291 d!1941819))

(declare-fun b!6193667 () Bool)

(declare-fun e!3771935 () Bool)

(declare-fun call!518046 () Bool)

(assert (=> b!6193667 (= e!3771935 call!518046)))

(declare-fun b!6193668 () Bool)

(declare-fun e!3771939 () Bool)

(declare-fun e!3771940 () Bool)

(assert (=> b!6193668 (= e!3771939 e!3771940)))

(declare-fun c!1117681 () Bool)

(assert (=> b!6193668 (= c!1117681 ((_ is Union!16131) (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6193669 () Bool)

(declare-fun e!3771934 () Bool)

(declare-fun call!518045 () Bool)

(assert (=> b!6193669 (= e!3771934 call!518045)))

(declare-fun b!6193670 () Bool)

(declare-fun e!3771938 () Bool)

(assert (=> b!6193670 (= e!3771938 e!3771939)))

(declare-fun c!1117680 () Bool)

(assert (=> b!6193670 (= c!1117680 ((_ is Star!16131) (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun d!1941821 () Bool)

(declare-fun res!2562107 () Bool)

(assert (=> d!1941821 (=> res!2562107 e!3771938)))

(assert (=> d!1941821 (= res!2562107 ((_ is ElementMatch!16131) (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(assert (=> d!1941821 (= (validRegex!7867 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))) e!3771938)))

(declare-fun bm!518040 () Bool)

(assert (=> bm!518040 (= call!518045 (validRegex!7867 (ite c!1117680 (reg!16460 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))) (ite c!1117681 (regOne!32775 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))) (regOne!32774 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518041 () Bool)

(assert (=> bm!518041 (= call!518046 (validRegex!7867 (ite c!1117681 (regTwo!32775 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))) (regTwo!32774 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6193671 () Bool)

(declare-fun e!3771936 () Bool)

(assert (=> b!6193671 (= e!3771936 e!3771935)))

(declare-fun res!2562108 () Bool)

(assert (=> b!6193671 (=> (not res!2562108) (not e!3771935))))

(declare-fun call!518047 () Bool)

(assert (=> b!6193671 (= res!2562108 call!518047)))

(declare-fun b!6193672 () Bool)

(declare-fun res!2562106 () Bool)

(assert (=> b!6193672 (=> res!2562106 e!3771936)))

(assert (=> b!6193672 (= res!2562106 (not ((_ is Concat!24976) (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(assert (=> b!6193672 (= e!3771940 e!3771936)))

(declare-fun b!6193673 () Bool)

(declare-fun res!2562104 () Bool)

(declare-fun e!3771937 () Bool)

(assert (=> b!6193673 (=> (not res!2562104) (not e!3771937))))

(assert (=> b!6193673 (= res!2562104 call!518047)))

(assert (=> b!6193673 (= e!3771940 e!3771937)))

(declare-fun b!6193674 () Bool)

(assert (=> b!6193674 (= e!3771939 e!3771934)))

(declare-fun res!2562105 () Bool)

(assert (=> b!6193674 (= res!2562105 (not (nullable!6124 (reg!16460 (ite c!1117603 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193674 (=> (not res!2562105) (not e!3771934))))

(declare-fun bm!518042 () Bool)

(assert (=> bm!518042 (= call!518047 call!518045)))

(declare-fun b!6193675 () Bool)

(assert (=> b!6193675 (= e!3771937 call!518046)))

(assert (= (and d!1941821 (not res!2562107)) b!6193670))

(assert (= (and b!6193670 c!1117680) b!6193674))

(assert (= (and b!6193670 (not c!1117680)) b!6193668))

(assert (= (and b!6193674 res!2562105) b!6193669))

(assert (= (and b!6193668 c!1117681) b!6193673))

(assert (= (and b!6193668 (not c!1117681)) b!6193672))

(assert (= (and b!6193673 res!2562104) b!6193675))

(assert (= (and b!6193672 (not res!2562106)) b!6193671))

(assert (= (and b!6193671 res!2562108) b!6193667))

(assert (= (or b!6193675 b!6193667) bm!518041))

(assert (= (or b!6193673 b!6193671) bm!518042))

(assert (= (or b!6193669 bm!518042) bm!518040))

(declare-fun m!7027624 () Bool)

(assert (=> bm!518040 m!7027624))

(declare-fun m!7027626 () Bool)

(assert (=> bm!518041 m!7027626))

(declare-fun m!7027628 () Bool)

(assert (=> b!6193674 m!7027628))

(assert (=> bm!518001 d!1941821))

(declare-fun d!1941823 () Bool)

(assert (=> d!1941823 (= (nullable!6124 (h!71016 (exprs!6015 lt!2341179))) (nullableFct!2082 (h!71016 (exprs!6015 lt!2341179))))))

(declare-fun bs!1536743 () Bool)

(assert (= bs!1536743 d!1941823))

(declare-fun m!7027630 () Bool)

(assert (=> bs!1536743 m!7027630))

(assert (=> b!6193035 d!1941823))

(declare-fun d!1941825 () Bool)

(assert (=> d!1941825 (= ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117516 c!1117518) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32775 (regOne!32774 r!7292)))) (Cons!64568 (ite (or c!1117516 c!1117518) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32775 (regOne!32774 r!7292))) (exprs!6015 lt!2341183)))))

(assert (=> bm!517965 d!1941825))

(assert (=> b!6193203 d!1941685))

(declare-fun bs!1536744 () Bool)

(declare-fun d!1941827 () Bool)

(assert (= bs!1536744 (and d!1941827 d!1941673)))

(declare-fun lambda!338284 () Int)

(assert (=> bs!1536744 (= lambda!338284 lambda!338262)))

(declare-fun bs!1536745 () Bool)

(assert (= bs!1536745 (and d!1941827 d!1941667)))

(assert (=> bs!1536745 (= lambda!338284 lambda!338257)))

(declare-fun bs!1536746 () Bool)

(assert (= bs!1536746 (and d!1941827 d!1941617)))

(assert (=> bs!1536746 (= lambda!338284 lambda!338252)))

(declare-fun bs!1536747 () Bool)

(assert (= bs!1536747 (and d!1941827 d!1941619)))

(assert (=> bs!1536747 (= lambda!338284 lambda!338253)))

(declare-fun bs!1536748 () Bool)

(assert (= bs!1536748 (and d!1941827 d!1941659)))

(assert (=> bs!1536748 (= lambda!338284 lambda!338256)))

(declare-fun bs!1536749 () Bool)

(assert (= bs!1536749 (and d!1941827 d!1941615)))

(assert (=> bs!1536749 (= lambda!338284 lambda!338249)))

(declare-fun bs!1536750 () Bool)

(assert (= bs!1536750 (and d!1941827 d!1941595)))

(assert (=> bs!1536750 (= lambda!338284 lambda!338245)))

(declare-fun bs!1536751 () Bool)

(assert (= bs!1536751 (and d!1941827 d!1941685)))

(assert (=> bs!1536751 (= lambda!338284 lambda!338263)))

(declare-fun lt!2341357 () List!64692)

(assert (=> d!1941827 (forall!15247 lt!2341357 lambda!338284)))

(declare-fun e!3771941 () List!64692)

(assert (=> d!1941827 (= lt!2341357 e!3771941)))

(declare-fun c!1117682 () Bool)

(assert (=> d!1941827 (= c!1117682 ((_ is Cons!64569) (t!378205 zl!343)))))

(assert (=> d!1941827 (= (unfocusZipperList!1552 (t!378205 zl!343)) lt!2341357)))

(declare-fun b!6193676 () Bool)

(assert (=> b!6193676 (= e!3771941 (Cons!64568 (generalisedConcat!1728 (exprs!6015 (h!71017 (t!378205 zl!343)))) (unfocusZipperList!1552 (t!378205 (t!378205 zl!343)))))))

(declare-fun b!6193677 () Bool)

(assert (=> b!6193677 (= e!3771941 Nil!64568)))

(assert (= (and d!1941827 c!1117682) b!6193676))

(assert (= (and d!1941827 (not c!1117682)) b!6193677))

(declare-fun m!7027636 () Bool)

(assert (=> d!1941827 m!7027636))

(declare-fun m!7027640 () Bool)

(assert (=> b!6193676 m!7027640))

(declare-fun m!7027642 () Bool)

(assert (=> b!6193676 m!7027642))

(assert (=> b!6193203 d!1941827))

(declare-fun d!1941831 () Bool)

(assert (=> d!1941831 (= (isDefined!12725 lt!2341270) (not (isEmpty!36558 lt!2341270)))))

(declare-fun bs!1536753 () Bool)

(assert (= bs!1536753 d!1941831))

(declare-fun m!7027644 () Bool)

(assert (=> bs!1536753 m!7027644))

(assert (=> b!6192891 d!1941831))

(declare-fun b!6193682 () Bool)

(declare-fun e!3771946 () Bool)

(declare-fun call!518049 () Bool)

(assert (=> b!6193682 (= e!3771946 call!518049)))

(declare-fun b!6193683 () Bool)

(declare-fun e!3771950 () Bool)

(declare-fun e!3771951 () Bool)

(assert (=> b!6193683 (= e!3771950 e!3771951)))

(declare-fun c!1117685 () Bool)

(assert (=> b!6193683 (= c!1117685 ((_ is Union!16131) lt!2341305))))

(declare-fun b!6193684 () Bool)

(declare-fun e!3771944 () Bool)

(declare-fun call!518048 () Bool)

(assert (=> b!6193684 (= e!3771944 call!518048)))

(declare-fun b!6193685 () Bool)

(declare-fun e!3771949 () Bool)

(assert (=> b!6193685 (= e!3771949 e!3771950)))

(declare-fun c!1117683 () Bool)

(assert (=> b!6193685 (= c!1117683 ((_ is Star!16131) lt!2341305))))

(declare-fun d!1941835 () Bool)

(declare-fun res!2562114 () Bool)

(assert (=> d!1941835 (=> res!2562114 e!3771949)))

(assert (=> d!1941835 (= res!2562114 ((_ is ElementMatch!16131) lt!2341305))))

(assert (=> d!1941835 (= (validRegex!7867 lt!2341305) e!3771949)))

(declare-fun bm!518043 () Bool)

(assert (=> bm!518043 (= call!518048 (validRegex!7867 (ite c!1117683 (reg!16460 lt!2341305) (ite c!1117685 (regOne!32775 lt!2341305) (regOne!32774 lt!2341305)))))))

(declare-fun bm!518044 () Bool)

(assert (=> bm!518044 (= call!518049 (validRegex!7867 (ite c!1117685 (regTwo!32775 lt!2341305) (regTwo!32774 lt!2341305))))))

(declare-fun b!6193686 () Bool)

(declare-fun e!3771947 () Bool)

(assert (=> b!6193686 (= e!3771947 e!3771946)))

(declare-fun res!2562115 () Bool)

(assert (=> b!6193686 (=> (not res!2562115) (not e!3771946))))

(declare-fun call!518050 () Bool)

(assert (=> b!6193686 (= res!2562115 call!518050)))

(declare-fun b!6193687 () Bool)

(declare-fun res!2562113 () Bool)

(assert (=> b!6193687 (=> res!2562113 e!3771947)))

(assert (=> b!6193687 (= res!2562113 (not ((_ is Concat!24976) lt!2341305)))))

(assert (=> b!6193687 (= e!3771951 e!3771947)))

(declare-fun b!6193688 () Bool)

(declare-fun res!2562111 () Bool)

(declare-fun e!3771948 () Bool)

(assert (=> b!6193688 (=> (not res!2562111) (not e!3771948))))

(assert (=> b!6193688 (= res!2562111 call!518050)))

(assert (=> b!6193688 (= e!3771951 e!3771948)))

(declare-fun b!6193689 () Bool)

(assert (=> b!6193689 (= e!3771950 e!3771944)))

(declare-fun res!2562112 () Bool)

(assert (=> b!6193689 (= res!2562112 (not (nullable!6124 (reg!16460 lt!2341305))))))

(assert (=> b!6193689 (=> (not res!2562112) (not e!3771944))))

(declare-fun bm!518045 () Bool)

(assert (=> bm!518045 (= call!518050 call!518048)))

(declare-fun b!6193690 () Bool)

(assert (=> b!6193690 (= e!3771948 call!518049)))

(assert (= (and d!1941835 (not res!2562114)) b!6193685))

(assert (= (and b!6193685 c!1117683) b!6193689))

(assert (= (and b!6193685 (not c!1117683)) b!6193683))

(assert (= (and b!6193689 res!2562112) b!6193684))

(assert (= (and b!6193683 c!1117685) b!6193688))

(assert (= (and b!6193683 (not c!1117685)) b!6193687))

(assert (= (and b!6193688 res!2562111) b!6193690))

(assert (= (and b!6193687 (not res!2562113)) b!6193686))

(assert (= (and b!6193686 res!2562115) b!6193682))

(assert (= (or b!6193690 b!6193682) bm!518044))

(assert (= (or b!6193688 b!6193686) bm!518045))

(assert (= (or b!6193684 bm!518045) bm!518043))

(declare-fun m!7027648 () Bool)

(assert (=> bm!518043 m!7027648))

(declare-fun m!7027652 () Bool)

(assert (=> bm!518044 m!7027652))

(declare-fun m!7027654 () Bool)

(assert (=> b!6193689 m!7027654))

(assert (=> d!1941615 d!1941835))

(declare-fun d!1941837 () Bool)

(declare-fun res!2562116 () Bool)

(declare-fun e!3771952 () Bool)

(assert (=> d!1941837 (=> res!2562116 e!3771952)))

(assert (=> d!1941837 (= res!2562116 ((_ is Nil!64568) (unfocusZipperList!1552 zl!343)))))

(assert (=> d!1941837 (= (forall!15247 (unfocusZipperList!1552 zl!343) lambda!338249) e!3771952)))

(declare-fun b!6193691 () Bool)

(declare-fun e!3771953 () Bool)

(assert (=> b!6193691 (= e!3771952 e!3771953)))

(declare-fun res!2562117 () Bool)

(assert (=> b!6193691 (=> (not res!2562117) (not e!3771953))))

(assert (=> b!6193691 (= res!2562117 (dynLambda!25464 lambda!338249 (h!71016 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6193692 () Bool)

(assert (=> b!6193692 (= e!3771953 (forall!15247 (t!378204 (unfocusZipperList!1552 zl!343)) lambda!338249))))

(assert (= (and d!1941837 (not res!2562116)) b!6193691))

(assert (= (and b!6193691 res!2562117) b!6193692))

(declare-fun b_lambda!235637 () Bool)

(assert (=> (not b_lambda!235637) (not b!6193691)))

(declare-fun m!7027658 () Bool)

(assert (=> b!6193691 m!7027658))

(declare-fun m!7027660 () Bool)

(assert (=> b!6193692 m!7027660))

(assert (=> d!1941615 d!1941837))

(declare-fun d!1941841 () Bool)

(assert (=> d!1941841 true))

(declare-fun setRes!42019 () Bool)

(assert (=> d!1941841 setRes!42019))

(declare-fun condSetEmpty!42019 () Bool)

(declare-fun res!2562120 () (InoxSet Context!11030))

(assert (=> d!1941841 (= condSetEmpty!42019 (= res!2562120 ((as const (Array Context!11030 Bool)) false)))))

(assert (=> d!1941841 (= (choose!46008 lt!2341195 lambda!338193) res!2562120)))

(declare-fun setIsEmpty!42019 () Bool)

(assert (=> setIsEmpty!42019 setRes!42019))

(declare-fun tp!1728016 () Bool)

(declare-fun setElem!42019 () Context!11030)

(declare-fun e!3771956 () Bool)

(declare-fun setNonEmpty!42019 () Bool)

(assert (=> setNonEmpty!42019 (= setRes!42019 (and tp!1728016 (inv!83574 setElem!42019) e!3771956))))

(declare-fun setRest!42019 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42019 (= res!2562120 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42019 true) setRest!42019))))

(declare-fun b!6193695 () Bool)

(declare-fun tp!1728015 () Bool)

(assert (=> b!6193695 (= e!3771956 tp!1728015)))

(assert (= (and d!1941841 condSetEmpty!42019) setIsEmpty!42019))

(assert (= (and d!1941841 (not condSetEmpty!42019)) setNonEmpty!42019))

(assert (= setNonEmpty!42019 b!6193695))

(declare-fun m!7027664 () Bool)

(assert (=> setNonEmpty!42019 m!7027664))

(assert (=> d!1941589 d!1941841))

(declare-fun d!1941845 () Bool)

(assert (=> d!1941845 (= (head!12775 (t!378204 (exprs!6015 (h!71017 zl!343)))) (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6193346 d!1941845))

(declare-fun d!1941847 () Bool)

(declare-fun res!2562121 () Bool)

(declare-fun e!3771957 () Bool)

(assert (=> d!1941847 (=> res!2562121 e!3771957)))

(assert (=> d!1941847 (= res!2562121 ((_ is Nil!64568) (exprs!6015 (h!71017 zl!343))))))

(assert (=> d!1941847 (= (forall!15247 (exprs!6015 (h!71017 zl!343)) lambda!338245) e!3771957)))

(declare-fun b!6193696 () Bool)

(declare-fun e!3771958 () Bool)

(assert (=> b!6193696 (= e!3771957 e!3771958)))

(declare-fun res!2562122 () Bool)

(assert (=> b!6193696 (=> (not res!2562122) (not e!3771958))))

(assert (=> b!6193696 (= res!2562122 (dynLambda!25464 lambda!338245 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6193697 () Bool)

(assert (=> b!6193697 (= e!3771958 (forall!15247 (t!378204 (exprs!6015 (h!71017 zl!343))) lambda!338245))))

(assert (= (and d!1941847 (not res!2562121)) b!6193696))

(assert (= (and b!6193696 res!2562122) b!6193697))

(declare-fun b_lambda!235639 () Bool)

(assert (=> (not b_lambda!235639) (not b!6193696)))

(declare-fun m!7027666 () Bool)

(assert (=> b!6193696 m!7027666))

(declare-fun m!7027668 () Bool)

(assert (=> b!6193697 m!7027668))

(assert (=> d!1941595 d!1941847))

(declare-fun d!1941849 () Bool)

(declare-fun c!1117686 () Bool)

(assert (=> d!1941849 (= c!1117686 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3771959 () Bool)

(assert (=> d!1941849 (= (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341166 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3771959)))

(declare-fun b!6193698 () Bool)

(assert (=> b!6193698 (= e!3771959 (nullableZipper!1907 (derivationStepZipper!2099 ((_ map or) lt!2341166 lt!2341164) (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6193699 () Bool)

(assert (=> b!6193699 (= e!3771959 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 ((_ map or) lt!2341166 lt!2341164) (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1941849 c!1117686) b!6193698))

(assert (= (and d!1941849 (not c!1117686)) b!6193699))

(assert (=> d!1941849 m!7026810))

(assert (=> d!1941849 m!7027518))

(assert (=> b!6193698 m!7027226))

(declare-fun m!7027670 () Bool)

(assert (=> b!6193698 m!7027670))

(assert (=> b!6193699 m!7026810))

(assert (=> b!6193699 m!7027522))

(assert (=> b!6193699 m!7027226))

(assert (=> b!6193699 m!7027522))

(declare-fun m!7027672 () Bool)

(assert (=> b!6193699 m!7027672))

(assert (=> b!6193699 m!7026810))

(assert (=> b!6193699 m!7027526))

(assert (=> b!6193699 m!7027672))

(assert (=> b!6193699 m!7027526))

(declare-fun m!7027674 () Bool)

(assert (=> b!6193699 m!7027674))

(assert (=> b!6193242 d!1941849))

(declare-fun bs!1536757 () Bool)

(declare-fun d!1941851 () Bool)

(assert (= bs!1536757 (and d!1941851 b!6192421)))

(declare-fun lambda!338286 () Int)

(assert (=> bs!1536757 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338286 lambda!338193))))

(declare-fun bs!1536758 () Bool)

(assert (= bs!1536758 (and d!1941851 d!1941757)))

(assert (=> bs!1536758 (= lambda!338286 lambda!338275)))

(declare-fun bs!1536759 () Bool)

(assert (= bs!1536759 (and d!1941851 d!1941795)))

(assert (=> bs!1536759 (= lambda!338286 lambda!338282)))

(assert (=> d!1941851 true))

(assert (=> d!1941851 (= (derivationStepZipper!2099 ((_ map or) lt!2341166 lt!2341164) (head!12774 (t!378206 s!2326))) (flatMap!1636 ((_ map or) lt!2341166 lt!2341164) lambda!338286))))

(declare-fun bs!1536760 () Bool)

(assert (= bs!1536760 d!1941851))

(declare-fun m!7027676 () Bool)

(assert (=> bs!1536760 m!7027676))

(assert (=> b!6193242 d!1941851))

(assert (=> b!6193242 d!1941759))

(assert (=> b!6193242 d!1941763))

(assert (=> d!1941653 d!1941747))

(declare-fun b!6193700 () Bool)

(declare-fun e!3771961 () Bool)

(declare-fun call!518052 () Bool)

(assert (=> b!6193700 (= e!3771961 call!518052)))

(declare-fun b!6193701 () Bool)

(declare-fun e!3771965 () Bool)

(declare-fun e!3771966 () Bool)

(assert (=> b!6193701 (= e!3771965 e!3771966)))

(declare-fun c!1117688 () Bool)

(assert (=> b!6193701 (= c!1117688 ((_ is Union!16131) lt!2341177))))

(declare-fun b!6193702 () Bool)

(declare-fun e!3771960 () Bool)

(declare-fun call!518051 () Bool)

(assert (=> b!6193702 (= e!3771960 call!518051)))

(declare-fun b!6193703 () Bool)

(declare-fun e!3771964 () Bool)

(assert (=> b!6193703 (= e!3771964 e!3771965)))

(declare-fun c!1117687 () Bool)

(assert (=> b!6193703 (= c!1117687 ((_ is Star!16131) lt!2341177))))

(declare-fun d!1941853 () Bool)

(declare-fun res!2562126 () Bool)

(assert (=> d!1941853 (=> res!2562126 e!3771964)))

(assert (=> d!1941853 (= res!2562126 ((_ is ElementMatch!16131) lt!2341177))))

(assert (=> d!1941853 (= (validRegex!7867 lt!2341177) e!3771964)))

(declare-fun bm!518046 () Bool)

(assert (=> bm!518046 (= call!518051 (validRegex!7867 (ite c!1117687 (reg!16460 lt!2341177) (ite c!1117688 (regOne!32775 lt!2341177) (regOne!32774 lt!2341177)))))))

(declare-fun bm!518047 () Bool)

(assert (=> bm!518047 (= call!518052 (validRegex!7867 (ite c!1117688 (regTwo!32775 lt!2341177) (regTwo!32774 lt!2341177))))))

(declare-fun b!6193704 () Bool)

(declare-fun e!3771962 () Bool)

(assert (=> b!6193704 (= e!3771962 e!3771961)))

(declare-fun res!2562127 () Bool)

(assert (=> b!6193704 (=> (not res!2562127) (not e!3771961))))

(declare-fun call!518053 () Bool)

(assert (=> b!6193704 (= res!2562127 call!518053)))

(declare-fun b!6193705 () Bool)

(declare-fun res!2562125 () Bool)

(assert (=> b!6193705 (=> res!2562125 e!3771962)))

(assert (=> b!6193705 (= res!2562125 (not ((_ is Concat!24976) lt!2341177)))))

(assert (=> b!6193705 (= e!3771966 e!3771962)))

(declare-fun b!6193706 () Bool)

(declare-fun res!2562123 () Bool)

(declare-fun e!3771963 () Bool)

(assert (=> b!6193706 (=> (not res!2562123) (not e!3771963))))

(assert (=> b!6193706 (= res!2562123 call!518053)))

(assert (=> b!6193706 (= e!3771966 e!3771963)))

(declare-fun b!6193707 () Bool)

(assert (=> b!6193707 (= e!3771965 e!3771960)))

(declare-fun res!2562124 () Bool)

(assert (=> b!6193707 (= res!2562124 (not (nullable!6124 (reg!16460 lt!2341177))))))

(assert (=> b!6193707 (=> (not res!2562124) (not e!3771960))))

(declare-fun bm!518048 () Bool)

(assert (=> bm!518048 (= call!518053 call!518051)))

(declare-fun b!6193708 () Bool)

(assert (=> b!6193708 (= e!3771963 call!518052)))

(assert (= (and d!1941853 (not res!2562126)) b!6193703))

(assert (= (and b!6193703 c!1117687) b!6193707))

(assert (= (and b!6193703 (not c!1117687)) b!6193701))

(assert (= (and b!6193707 res!2562124) b!6193702))

(assert (= (and b!6193701 c!1117688) b!6193706))

(assert (= (and b!6193701 (not c!1117688)) b!6193705))

(assert (= (and b!6193706 res!2562123) b!6193708))

(assert (= (and b!6193705 (not res!2562125)) b!6193704))

(assert (= (and b!6193704 res!2562127) b!6193700))

(assert (= (or b!6193708 b!6193700) bm!518047))

(assert (= (or b!6193706 b!6193704) bm!518048))

(assert (= (or b!6193702 bm!518048) bm!518046))

(declare-fun m!7027678 () Bool)

(assert (=> bm!518046 m!7027678))

(declare-fun m!7027680 () Bool)

(assert (=> bm!518047 m!7027680))

(declare-fun m!7027682 () Bool)

(assert (=> b!6193707 m!7027682))

(assert (=> d!1941653 d!1941853))

(declare-fun d!1941855 () Bool)

(declare-fun lambda!338289 () Int)

(declare-fun exists!2468 ((InoxSet Context!11030) Int) Bool)

(assert (=> d!1941855 (= (nullableZipper!1907 lt!2341164) (exists!2468 lt!2341164 lambda!338289))))

(declare-fun bs!1536761 () Bool)

(assert (= bs!1536761 d!1941855))

(declare-fun m!7027684 () Bool)

(assert (=> bs!1536761 m!7027684))

(assert (=> b!6192834 d!1941855))

(assert (=> b!6193253 d!1941811))

(assert (=> b!6193253 d!1941813))

(declare-fun d!1941857 () Bool)

(assert (=> d!1941857 (= (Exists!3201 (ite c!1117580 lambda!338258 lambda!338259)) (choose!46003 (ite c!1117580 lambda!338258 lambda!338259)))))

(declare-fun bs!1536762 () Bool)

(assert (= bs!1536762 d!1941857))

(declare-fun m!7027686 () Bool)

(assert (=> bs!1536762 m!7027686))

(assert (=> bm!517988 d!1941857))

(declare-fun d!1941859 () Bool)

(declare-fun c!1117693 () Bool)

(assert (=> d!1941859 (= c!1117693 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun e!3771971 () Bool)

(assert (=> d!1941859 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341186 (head!12774 s!2326)) (tail!11859 s!2326)) e!3771971)))

(declare-fun b!6193717 () Bool)

(assert (=> b!6193717 (= e!3771971 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341186 (head!12774 s!2326))))))

(declare-fun b!6193718 () Bool)

(assert (=> b!6193718 (= e!3771971 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341186 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(assert (= (and d!1941859 c!1117693) b!6193717))

(assert (= (and d!1941859 (not c!1117693)) b!6193718))

(assert (=> d!1941859 m!7026740))

(assert (=> d!1941859 m!7026744))

(assert (=> b!6193717 m!7027094))

(declare-fun m!7027688 () Bool)

(assert (=> b!6193717 m!7027688))

(assert (=> b!6193718 m!7026740))

(declare-fun m!7027690 () Bool)

(assert (=> b!6193718 m!7027690))

(assert (=> b!6193718 m!7027094))

(assert (=> b!6193718 m!7027690))

(declare-fun m!7027692 () Bool)

(assert (=> b!6193718 m!7027692))

(assert (=> b!6193718 m!7026740))

(declare-fun m!7027694 () Bool)

(assert (=> b!6193718 m!7027694))

(assert (=> b!6193718 m!7027692))

(assert (=> b!6193718 m!7027694))

(declare-fun m!7027696 () Bool)

(assert (=> b!6193718 m!7027696))

(assert (=> b!6193065 d!1941859))

(declare-fun bs!1536763 () Bool)

(declare-fun d!1941861 () Bool)

(assert (= bs!1536763 (and d!1941861 b!6192421)))

(declare-fun lambda!338290 () Int)

(assert (=> bs!1536763 (= (= (head!12774 s!2326) (h!71018 s!2326)) (= lambda!338290 lambda!338193))))

(declare-fun bs!1536764 () Bool)

(assert (= bs!1536764 (and d!1941861 d!1941757)))

(assert (=> bs!1536764 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338290 lambda!338275))))

(declare-fun bs!1536765 () Bool)

(assert (= bs!1536765 (and d!1941861 d!1941795)))

(assert (=> bs!1536765 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338290 lambda!338282))))

(declare-fun bs!1536766 () Bool)

(assert (= bs!1536766 (and d!1941861 d!1941851)))

(assert (=> bs!1536766 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338290 lambda!338286))))

(assert (=> d!1941861 true))

(assert (=> d!1941861 (= (derivationStepZipper!2099 lt!2341186 (head!12774 s!2326)) (flatMap!1636 lt!2341186 lambda!338290))))

(declare-fun bs!1536767 () Bool)

(assert (= bs!1536767 d!1941861))

(declare-fun m!7027698 () Bool)

(assert (=> bs!1536767 m!7027698))

(assert (=> b!6193065 d!1941861))

(assert (=> b!6193065 d!1941801))

(assert (=> b!6193065 d!1941813))

(declare-fun b!6193719 () Bool)

(declare-fun e!3771973 () Bool)

(declare-fun call!518055 () Bool)

(assert (=> b!6193719 (= e!3771973 call!518055)))

(declare-fun b!6193720 () Bool)

(declare-fun e!3771977 () Bool)

(declare-fun e!3771978 () Bool)

(assert (=> b!6193720 (= e!3771977 e!3771978)))

(declare-fun c!1117695 () Bool)

(assert (=> b!6193720 (= c!1117695 ((_ is Union!16131) lt!2341333))))

(declare-fun b!6193721 () Bool)

(declare-fun e!3771972 () Bool)

(declare-fun call!518054 () Bool)

(assert (=> b!6193721 (= e!3771972 call!518054)))

(declare-fun b!6193722 () Bool)

(declare-fun e!3771976 () Bool)

(assert (=> b!6193722 (= e!3771976 e!3771977)))

(declare-fun c!1117694 () Bool)

(assert (=> b!6193722 (= c!1117694 ((_ is Star!16131) lt!2341333))))

(declare-fun d!1941863 () Bool)

(declare-fun res!2562135 () Bool)

(assert (=> d!1941863 (=> res!2562135 e!3771976)))

(assert (=> d!1941863 (= res!2562135 ((_ is ElementMatch!16131) lt!2341333))))

(assert (=> d!1941863 (= (validRegex!7867 lt!2341333) e!3771976)))

(declare-fun bm!518049 () Bool)

(assert (=> bm!518049 (= call!518054 (validRegex!7867 (ite c!1117694 (reg!16460 lt!2341333) (ite c!1117695 (regOne!32775 lt!2341333) (regOne!32774 lt!2341333)))))))

(declare-fun bm!518050 () Bool)

(assert (=> bm!518050 (= call!518055 (validRegex!7867 (ite c!1117695 (regTwo!32775 lt!2341333) (regTwo!32774 lt!2341333))))))

(declare-fun b!6193723 () Bool)

(declare-fun e!3771974 () Bool)

(assert (=> b!6193723 (= e!3771974 e!3771973)))

(declare-fun res!2562136 () Bool)

(assert (=> b!6193723 (=> (not res!2562136) (not e!3771973))))

(declare-fun call!518056 () Bool)

(assert (=> b!6193723 (= res!2562136 call!518056)))

(declare-fun b!6193724 () Bool)

(declare-fun res!2562134 () Bool)

(assert (=> b!6193724 (=> res!2562134 e!3771974)))

(assert (=> b!6193724 (= res!2562134 (not ((_ is Concat!24976) lt!2341333)))))

(assert (=> b!6193724 (= e!3771978 e!3771974)))

(declare-fun b!6193725 () Bool)

(declare-fun res!2562132 () Bool)

(declare-fun e!3771975 () Bool)

(assert (=> b!6193725 (=> (not res!2562132) (not e!3771975))))

(assert (=> b!6193725 (= res!2562132 call!518056)))

(assert (=> b!6193725 (= e!3771978 e!3771975)))

(declare-fun b!6193726 () Bool)

(assert (=> b!6193726 (= e!3771977 e!3771972)))

(declare-fun res!2562133 () Bool)

(assert (=> b!6193726 (= res!2562133 (not (nullable!6124 (reg!16460 lt!2341333))))))

(assert (=> b!6193726 (=> (not res!2562133) (not e!3771972))))

(declare-fun bm!518051 () Bool)

(assert (=> bm!518051 (= call!518056 call!518054)))

(declare-fun b!6193727 () Bool)

(assert (=> b!6193727 (= e!3771975 call!518055)))

(assert (= (and d!1941863 (not res!2562135)) b!6193722))

(assert (= (and b!6193722 c!1117694) b!6193726))

(assert (= (and b!6193722 (not c!1117694)) b!6193720))

(assert (= (and b!6193726 res!2562133) b!6193721))

(assert (= (and b!6193720 c!1117695) b!6193725))

(assert (= (and b!6193720 (not c!1117695)) b!6193724))

(assert (= (and b!6193725 res!2562132) b!6193727))

(assert (= (and b!6193724 (not res!2562134)) b!6193723))

(assert (= (and b!6193723 res!2562136) b!6193719))

(assert (= (or b!6193727 b!6193719) bm!518050))

(assert (= (or b!6193725 b!6193723) bm!518051))

(assert (= (or b!6193721 bm!518051) bm!518049))

(declare-fun m!7027700 () Bool)

(assert (=> bm!518049 m!7027700))

(declare-fun m!7027702 () Bool)

(assert (=> bm!518050 m!7027702))

(declare-fun m!7027704 () Bool)

(assert (=> b!6193726 m!7027704))

(assert (=> d!1941677 d!1941863))

(assert (=> d!1941677 d!1941615))

(assert (=> d!1941677 d!1941617))

(declare-fun d!1941865 () Bool)

(assert (=> d!1941865 (= (isEmpty!36557 (t!378206 s!2326)) ((_ is Nil!64570) (t!378206 s!2326)))))

(assert (=> d!1941643 d!1941865))

(assert (=> d!1941551 d!1941747))

(declare-fun d!1941867 () Bool)

(assert (=> d!1941867 (= (head!12775 (exprs!6015 (h!71017 zl!343))) (h!71016 (exprs!6015 (h!71017 zl!343))))))

(assert (=> b!6193389 d!1941867))

(declare-fun d!1941869 () Bool)

(assert (=> d!1941869 (= (isConcat!1066 lt!2341322) ((_ is Concat!24976) lt!2341322))))

(assert (=> b!6193283 d!1941869))

(assert (=> d!1941477 d!1941865))

(declare-fun bs!1536768 () Bool)

(declare-fun d!1941871 () Bool)

(assert (= bs!1536768 (and d!1941871 d!1941855)))

(declare-fun lambda!338291 () Int)

(assert (=> bs!1536768 (= lambda!338291 lambda!338289)))

(assert (=> d!1941871 (= (nullableZipper!1907 ((_ map or) lt!2341188 lt!2341164)) (exists!2468 ((_ map or) lt!2341188 lt!2341164) lambda!338291))))

(declare-fun bs!1536769 () Bool)

(assert (= bs!1536769 d!1941871))

(declare-fun m!7027706 () Bool)

(assert (=> bs!1536769 m!7027706))

(assert (=> b!6193236 d!1941871))

(declare-fun d!1941873 () Bool)

(assert (=> d!1941873 (= (isEmpty!36555 (tail!11860 (unfocusZipperList!1552 zl!343))) ((_ is Nil!64568) (tail!11860 (unfocusZipperList!1552 zl!343))))))

(assert (=> b!6193193 d!1941873))

(declare-fun d!1941875 () Bool)

(assert (=> d!1941875 (= (tail!11860 (unfocusZipperList!1552 zl!343)) (t!378204 (unfocusZipperList!1552 zl!343)))))

(assert (=> b!6193193 d!1941875))

(declare-fun d!1941877 () Bool)

(assert (=> d!1941877 (= (Exists!3201 (ite c!1117584 lambda!338260 lambda!338261)) (choose!46003 (ite c!1117584 lambda!338260 lambda!338261)))))

(declare-fun bs!1536770 () Bool)

(assert (= bs!1536770 d!1941877))

(declare-fun m!7027708 () Bool)

(assert (=> bs!1536770 m!7027708))

(assert (=> bm!517990 d!1941877))

(declare-fun bs!1536771 () Bool)

(declare-fun d!1941879 () Bool)

(assert (= bs!1536771 (and d!1941879 d!1941673)))

(declare-fun lambda!338292 () Int)

(assert (=> bs!1536771 (= lambda!338292 lambda!338262)))

(declare-fun bs!1536772 () Bool)

(assert (= bs!1536772 (and d!1941879 d!1941667)))

(assert (=> bs!1536772 (= lambda!338292 lambda!338257)))

(declare-fun bs!1536773 () Bool)

(assert (= bs!1536773 (and d!1941879 d!1941827)))

(assert (=> bs!1536773 (= lambda!338292 lambda!338284)))

(declare-fun bs!1536774 () Bool)

(assert (= bs!1536774 (and d!1941879 d!1941617)))

(assert (=> bs!1536774 (= lambda!338292 lambda!338252)))

(declare-fun bs!1536775 () Bool)

(assert (= bs!1536775 (and d!1941879 d!1941619)))

(assert (=> bs!1536775 (= lambda!338292 lambda!338253)))

(declare-fun bs!1536776 () Bool)

(assert (= bs!1536776 (and d!1941879 d!1941659)))

(assert (=> bs!1536776 (= lambda!338292 lambda!338256)))

(declare-fun bs!1536777 () Bool)

(assert (= bs!1536777 (and d!1941879 d!1941615)))

(assert (=> bs!1536777 (= lambda!338292 lambda!338249)))

(declare-fun bs!1536778 () Bool)

(assert (= bs!1536778 (and d!1941879 d!1941595)))

(assert (=> bs!1536778 (= lambda!338292 lambda!338245)))

(declare-fun bs!1536779 () Bool)

(assert (= bs!1536779 (and d!1941879 d!1941685)))

(assert (=> bs!1536779 (= lambda!338292 lambda!338263)))

(declare-fun b!6193732 () Bool)

(declare-fun e!3771986 () Regex!16131)

(assert (=> b!6193732 (= e!3771986 (Concat!24976 (h!71016 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))) (generalisedConcat!1728 (t!378204 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))))

(declare-fun b!6193734 () Bool)

(declare-fun e!3771981 () Regex!16131)

(assert (=> b!6193734 (= e!3771981 e!3771986)))

(declare-fun c!1117699 () Bool)

(assert (=> b!6193734 (= c!1117699 ((_ is Cons!64568) (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193735 () Bool)

(declare-fun e!3771983 () Bool)

(declare-fun lt!2341361 () Regex!16131)

(assert (=> b!6193735 (= e!3771983 (isEmptyExpr!1543 lt!2341361))))

(declare-fun b!6193736 () Bool)

(assert (=> b!6193736 (= e!3771986 EmptyExpr!16131)))

(declare-fun b!6193737 () Bool)

(assert (=> b!6193737 (= e!3771981 (h!71016 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6193738 () Bool)

(declare-fun e!3771984 () Bool)

(assert (=> b!6193738 (= e!3771983 e!3771984)))

(declare-fun c!1117698 () Bool)

(assert (=> b!6193738 (= c!1117698 (isEmpty!36555 (tail!11860 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193739 () Bool)

(declare-fun e!3771982 () Bool)

(assert (=> b!6193739 (= e!3771982 (isEmpty!36555 (t!378204 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193733 () Bool)

(assert (=> b!6193733 (= e!3771984 (isConcat!1066 lt!2341361))))

(declare-fun e!3771985 () Bool)

(assert (=> d!1941879 e!3771985))

(declare-fun res!2562140 () Bool)

(assert (=> d!1941879 (=> (not res!2562140) (not e!3771985))))

(assert (=> d!1941879 (= res!2562140 (validRegex!7867 lt!2341361))))

(assert (=> d!1941879 (= lt!2341361 e!3771981)))

(declare-fun c!1117697 () Bool)

(assert (=> d!1941879 (= c!1117697 e!3771982)))

(declare-fun res!2562139 () Bool)

(assert (=> d!1941879 (=> (not res!2562139) (not e!3771982))))

(assert (=> d!1941879 (= res!2562139 ((_ is Cons!64568) (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(assert (=> d!1941879 (forall!15247 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))) lambda!338292)))

(assert (=> d!1941879 (= (generalisedConcat!1728 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))) lt!2341361)))

(declare-fun b!6193740 () Bool)

(assert (=> b!6193740 (= e!3771984 (= lt!2341361 (head!12775 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6193741 () Bool)

(assert (=> b!6193741 (= e!3771985 e!3771983)))

(declare-fun c!1117700 () Bool)

(assert (=> b!6193741 (= c!1117700 (isEmpty!36555 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(assert (= (and d!1941879 res!2562139) b!6193739))

(assert (= (and d!1941879 c!1117697) b!6193737))

(assert (= (and d!1941879 (not c!1117697)) b!6193734))

(assert (= (and b!6193734 c!1117699) b!6193732))

(assert (= (and b!6193734 (not c!1117699)) b!6193736))

(assert (= (and d!1941879 res!2562140) b!6193741))

(assert (= (and b!6193741 c!1117700) b!6193735))

(assert (= (and b!6193741 (not c!1117700)) b!6193738))

(assert (= (and b!6193738 c!1117698) b!6193740))

(assert (= (and b!6193738 (not c!1117698)) b!6193733))

(declare-fun m!7027738 () Bool)

(assert (=> b!6193739 m!7027738))

(declare-fun m!7027740 () Bool)

(assert (=> b!6193732 m!7027740))

(declare-fun m!7027742 () Bool)

(assert (=> b!6193738 m!7027742))

(assert (=> b!6193738 m!7027742))

(declare-fun m!7027744 () Bool)

(assert (=> b!6193738 m!7027744))

(declare-fun m!7027746 () Bool)

(assert (=> b!6193733 m!7027746))

(declare-fun m!7027748 () Bool)

(assert (=> d!1941879 m!7027748))

(declare-fun m!7027750 () Bool)

(assert (=> d!1941879 m!7027750))

(declare-fun m!7027752 () Bool)

(assert (=> b!6193735 m!7027752))

(declare-fun m!7027754 () Bool)

(assert (=> b!6193740 m!7027754))

(assert (=> b!6193741 m!7027322))

(assert (=> b!6193338 d!1941879))

(declare-fun d!1941885 () Bool)

(assert (=> d!1941885 (= (head!12775 lt!2341202) (h!71016 lt!2341202))))

(assert (=> b!6193290 d!1941885))

(declare-fun b!6193746 () Bool)

(declare-fun e!3771990 () Bool)

(declare-fun call!518058 () Bool)

(assert (=> b!6193746 (= e!3771990 call!518058)))

(declare-fun b!6193747 () Bool)

(declare-fun e!3771994 () Bool)

(declare-fun e!3771995 () Bool)

(assert (=> b!6193747 (= e!3771994 e!3771995)))

(declare-fun c!1117703 () Bool)

(assert (=> b!6193747 (= c!1117703 ((_ is Union!16131) (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(declare-fun b!6193748 () Bool)

(declare-fun e!3771989 () Bool)

(declare-fun call!518057 () Bool)

(assert (=> b!6193748 (= e!3771989 call!518057)))

(declare-fun b!6193749 () Bool)

(declare-fun e!3771993 () Bool)

(assert (=> b!6193749 (= e!3771993 e!3771994)))

(declare-fun c!1117702 () Bool)

(assert (=> b!6193749 (= c!1117702 ((_ is Star!16131) (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(declare-fun d!1941887 () Bool)

(declare-fun res!2562146 () Bool)

(assert (=> d!1941887 (=> res!2562146 e!3771993)))

(assert (=> d!1941887 (= res!2562146 ((_ is ElementMatch!16131) (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(assert (=> d!1941887 (= (validRegex!7867 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))) e!3771993)))

(declare-fun bm!518052 () Bool)

(assert (=> bm!518052 (= call!518057 (validRegex!7867 (ite c!1117702 (reg!16460 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))) (ite c!1117703 (regOne!32775 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))) (regOne!32774 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))))))

(declare-fun bm!518053 () Bool)

(assert (=> bm!518053 (= call!518058 (validRegex!7867 (ite c!1117703 (regTwo!32775 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))) (regTwo!32774 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))))

(declare-fun b!6193750 () Bool)

(declare-fun e!3771991 () Bool)

(assert (=> b!6193750 (= e!3771991 e!3771990)))

(declare-fun res!2562147 () Bool)

(assert (=> b!6193750 (=> (not res!2562147) (not e!3771990))))

(declare-fun call!518059 () Bool)

(assert (=> b!6193750 (= res!2562147 call!518059)))

(declare-fun b!6193751 () Bool)

(declare-fun res!2562145 () Bool)

(assert (=> b!6193751 (=> res!2562145 e!3771991)))

(assert (=> b!6193751 (= res!2562145 (not ((_ is Concat!24976) (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193751 (= e!3771995 e!3771991)))

(declare-fun b!6193752 () Bool)

(declare-fun res!2562143 () Bool)

(declare-fun e!3771992 () Bool)

(assert (=> b!6193752 (=> (not res!2562143) (not e!3771992))))

(assert (=> b!6193752 (= res!2562143 call!518059)))

(assert (=> b!6193752 (= e!3771995 e!3771992)))

(declare-fun b!6193753 () Bool)

(assert (=> b!6193753 (= e!3771994 e!3771989)))

(declare-fun res!2562144 () Bool)

(assert (=> b!6193753 (= res!2562144 (not (nullable!6124 (reg!16460 (ite c!1117602 (reg!16460 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117603 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))))

(assert (=> b!6193753 (=> (not res!2562144) (not e!3771989))))

(declare-fun bm!518054 () Bool)

(assert (=> bm!518054 (= call!518059 call!518057)))

(declare-fun b!6193754 () Bool)

(assert (=> b!6193754 (= e!3771992 call!518058)))

(assert (= (and d!1941887 (not res!2562146)) b!6193749))

(assert (= (and b!6193749 c!1117702) b!6193753))

(assert (= (and b!6193749 (not c!1117702)) b!6193747))

(assert (= (and b!6193753 res!2562144) b!6193748))

(assert (= (and b!6193747 c!1117703) b!6193752))

(assert (= (and b!6193747 (not c!1117703)) b!6193751))

(assert (= (and b!6193752 res!2562143) b!6193754))

(assert (= (and b!6193751 (not res!2562145)) b!6193750))

(assert (= (and b!6193750 res!2562147) b!6193746))

(assert (= (or b!6193754 b!6193746) bm!518053))

(assert (= (or b!6193752 b!6193750) bm!518054))

(assert (= (or b!6193748 bm!518054) bm!518052))

(declare-fun m!7027756 () Bool)

(assert (=> bm!518052 m!7027756))

(declare-fun m!7027758 () Bool)

(assert (=> bm!518053 m!7027758))

(declare-fun m!7027760 () Bool)

(assert (=> b!6193753 m!7027760))

(assert (=> bm!518000 d!1941887))

(declare-fun b!6193755 () Bool)

(declare-fun e!3771997 () Bool)

(declare-fun call!518061 () Bool)

(assert (=> b!6193755 (= e!3771997 call!518061)))

(declare-fun b!6193756 () Bool)

(declare-fun e!3772001 () Bool)

(declare-fun e!3772002 () Bool)

(assert (=> b!6193756 (= e!3772001 e!3772002)))

(declare-fun c!1117705 () Bool)

(assert (=> b!6193756 (= c!1117705 ((_ is Union!16131) (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(declare-fun b!6193757 () Bool)

(declare-fun e!3771996 () Bool)

(declare-fun call!518060 () Bool)

(assert (=> b!6193757 (= e!3771996 call!518060)))

(declare-fun b!6193758 () Bool)

(declare-fun e!3772000 () Bool)

(assert (=> b!6193758 (= e!3772000 e!3772001)))

(declare-fun c!1117704 () Bool)

(assert (=> b!6193758 (= c!1117704 ((_ is Star!16131) (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(declare-fun d!1941889 () Bool)

(declare-fun res!2562151 () Bool)

(assert (=> d!1941889 (=> res!2562151 e!3772000)))

(assert (=> d!1941889 (= res!2562151 ((_ is ElementMatch!16131) (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(assert (=> d!1941889 (= (validRegex!7867 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))) e!3772000)))

(declare-fun bm!518055 () Bool)

(assert (=> bm!518055 (= call!518060 (validRegex!7867 (ite c!1117704 (reg!16460 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))) (ite c!1117705 (regOne!32775 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))) (regOne!32774 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))))))

(declare-fun bm!518056 () Bool)

(assert (=> bm!518056 (= call!518061 (validRegex!7867 (ite c!1117705 (regTwo!32775 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))) (regTwo!32774 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))))

(declare-fun b!6193759 () Bool)

(declare-fun e!3771998 () Bool)

(assert (=> b!6193759 (= e!3771998 e!3771997)))

(declare-fun res!2562152 () Bool)

(assert (=> b!6193759 (=> (not res!2562152) (not e!3771997))))

(declare-fun call!518062 () Bool)

(assert (=> b!6193759 (= res!2562152 call!518062)))

(declare-fun b!6193760 () Bool)

(declare-fun res!2562150 () Bool)

(assert (=> b!6193760 (=> res!2562150 e!3771998)))

(assert (=> b!6193760 (= res!2562150 (not ((_ is Concat!24976) (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193760 (= e!3772002 e!3771998)))

(declare-fun b!6193761 () Bool)

(declare-fun res!2562148 () Bool)

(declare-fun e!3771999 () Bool)

(assert (=> b!6193761 (=> (not res!2562148) (not e!3771999))))

(assert (=> b!6193761 (= res!2562148 call!518062)))

(assert (=> b!6193761 (= e!3772002 e!3771999)))

(declare-fun b!6193762 () Bool)

(assert (=> b!6193762 (= e!3772001 e!3771996)))

(declare-fun res!2562149 () Bool)

(assert (=> b!6193762 (= res!2562149 (not (nullable!6124 (reg!16460 (ite c!1117604 (reg!16460 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117605 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))))

(assert (=> b!6193762 (=> (not res!2562149) (not e!3771996))))

(declare-fun bm!518057 () Bool)

(assert (=> bm!518057 (= call!518062 call!518060)))

(declare-fun b!6193763 () Bool)

(assert (=> b!6193763 (= e!3771999 call!518061)))

(assert (= (and d!1941889 (not res!2562151)) b!6193758))

(assert (= (and b!6193758 c!1117704) b!6193762))

(assert (= (and b!6193758 (not c!1117704)) b!6193756))

(assert (= (and b!6193762 res!2562149) b!6193757))

(assert (= (and b!6193756 c!1117705) b!6193761))

(assert (= (and b!6193756 (not c!1117705)) b!6193760))

(assert (= (and b!6193761 res!2562148) b!6193763))

(assert (= (and b!6193760 (not res!2562150)) b!6193759))

(assert (= (and b!6193759 res!2562152) b!6193755))

(assert (= (or b!6193763 b!6193755) bm!518056))

(assert (= (or b!6193761 b!6193759) bm!518057))

(assert (= (or b!6193757 bm!518057) bm!518055))

(declare-fun m!7027762 () Bool)

(assert (=> bm!518055 m!7027762))

(declare-fun m!7027764 () Bool)

(assert (=> bm!518056 m!7027764))

(declare-fun m!7027766 () Bool)

(assert (=> b!6193762 m!7027766))

(assert (=> bm!518003 d!1941889))

(declare-fun b!6193764 () Bool)

(declare-fun e!3772009 () Bool)

(assert (=> b!6193764 (= e!3772009 (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 r!7292 (head!12774 s!2326)))))))

(declare-fun b!6193765 () Bool)

(declare-fun res!2562157 () Bool)

(assert (=> b!6193765 (=> (not res!2562157) (not e!3772009))))

(assert (=> b!6193765 (= res!2562157 (isEmpty!36557 (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6193766 () Bool)

(declare-fun res!2562158 () Bool)

(declare-fun e!3772003 () Bool)

(assert (=> b!6193766 (=> res!2562158 e!3772003)))

(assert (=> b!6193766 (= res!2562158 (not ((_ is ElementMatch!16131) (derivativeStep!4846 r!7292 (head!12774 s!2326)))))))

(declare-fun e!3772005 () Bool)

(assert (=> b!6193766 (= e!3772005 e!3772003)))

(declare-fun b!6193767 () Bool)

(declare-fun e!3772004 () Bool)

(declare-fun e!3772006 () Bool)

(assert (=> b!6193767 (= e!3772004 e!3772006)))

(declare-fun res!2562156 () Bool)

(assert (=> b!6193767 (=> res!2562156 e!3772006)))

(declare-fun call!518063 () Bool)

(assert (=> b!6193767 (= res!2562156 call!518063)))

(declare-fun b!6193768 () Bool)

(declare-fun e!3772007 () Bool)

(assert (=> b!6193768 (= e!3772007 (matchR!8314 (derivativeStep!4846 (derivativeStep!4846 r!7292 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6193769 () Bool)

(declare-fun res!2562153 () Bool)

(assert (=> b!6193769 (=> res!2562153 e!3772006)))

(assert (=> b!6193769 (= res!2562153 (not (isEmpty!36557 (tail!11859 (tail!11859 s!2326)))))))

(declare-fun b!6193770 () Bool)

(assert (=> b!6193770 (= e!3772007 (nullable!6124 (derivativeStep!4846 r!7292 (head!12774 s!2326))))))

(declare-fun bm!518058 () Bool)

(assert (=> bm!518058 (= call!518063 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6193772 () Bool)

(declare-fun e!3772008 () Bool)

(declare-fun lt!2341363 () Bool)

(assert (=> b!6193772 (= e!3772008 (= lt!2341363 call!518063))))

(declare-fun b!6193773 () Bool)

(assert (=> b!6193773 (= e!3772006 (not (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 r!7292 (head!12774 s!2326))))))))

(declare-fun b!6193771 () Bool)

(assert (=> b!6193771 (= e!3772008 e!3772005)))

(declare-fun c!1117708 () Bool)

(assert (=> b!6193771 (= c!1117708 ((_ is EmptyLang!16131) (derivativeStep!4846 r!7292 (head!12774 s!2326))))))

(declare-fun d!1941891 () Bool)

(assert (=> d!1941891 e!3772008))

(declare-fun c!1117707 () Bool)

(assert (=> d!1941891 (= c!1117707 ((_ is EmptyExpr!16131) (derivativeStep!4846 r!7292 (head!12774 s!2326))))))

(assert (=> d!1941891 (= lt!2341363 e!3772007)))

(declare-fun c!1117706 () Bool)

(assert (=> d!1941891 (= c!1117706 (isEmpty!36557 (tail!11859 s!2326)))))

(assert (=> d!1941891 (validRegex!7867 (derivativeStep!4846 r!7292 (head!12774 s!2326)))))

(assert (=> d!1941891 (= (matchR!8314 (derivativeStep!4846 r!7292 (head!12774 s!2326)) (tail!11859 s!2326)) lt!2341363)))

(declare-fun b!6193774 () Bool)

(assert (=> b!6193774 (= e!3772003 e!3772004)))

(declare-fun res!2562160 () Bool)

(assert (=> b!6193774 (=> (not res!2562160) (not e!3772004))))

(assert (=> b!6193774 (= res!2562160 (not lt!2341363))))

(declare-fun b!6193775 () Bool)

(declare-fun res!2562155 () Bool)

(assert (=> b!6193775 (=> res!2562155 e!3772003)))

(assert (=> b!6193775 (= res!2562155 e!3772009)))

(declare-fun res!2562159 () Bool)

(assert (=> b!6193775 (=> (not res!2562159) (not e!3772009))))

(assert (=> b!6193775 (= res!2562159 lt!2341363)))

(declare-fun b!6193776 () Bool)

(declare-fun res!2562154 () Bool)

(assert (=> b!6193776 (=> (not res!2562154) (not e!3772009))))

(assert (=> b!6193776 (= res!2562154 (not call!518063))))

(declare-fun b!6193777 () Bool)

(assert (=> b!6193777 (= e!3772005 (not lt!2341363))))

(assert (= (and d!1941891 c!1117706) b!6193770))

(assert (= (and d!1941891 (not c!1117706)) b!6193768))

(assert (= (and d!1941891 c!1117707) b!6193772))

(assert (= (and d!1941891 (not c!1117707)) b!6193771))

(assert (= (and b!6193771 c!1117708) b!6193777))

(assert (= (and b!6193771 (not c!1117708)) b!6193766))

(assert (= (and b!6193766 (not res!2562158)) b!6193775))

(assert (= (and b!6193775 res!2562159) b!6193776))

(assert (= (and b!6193776 res!2562154) b!6193765))

(assert (= (and b!6193765 res!2562157) b!6193764))

(assert (= (and b!6193775 (not res!2562155)) b!6193774))

(assert (= (and b!6193774 res!2562160) b!6193767))

(assert (= (and b!6193767 (not res!2562156)) b!6193769))

(assert (= (and b!6193769 (not res!2562153)) b!6193773))

(assert (= (or b!6193772 b!6193767 b!6193776) bm!518058))

(assert (=> d!1941891 m!7026740))

(assert (=> d!1941891 m!7026744))

(assert (=> d!1941891 m!7026738))

(declare-fun m!7027768 () Bool)

(assert (=> d!1941891 m!7027768))

(assert (=> b!6193768 m!7026740))

(assert (=> b!6193768 m!7027690))

(assert (=> b!6193768 m!7026738))

(assert (=> b!6193768 m!7027690))

(declare-fun m!7027770 () Bool)

(assert (=> b!6193768 m!7027770))

(assert (=> b!6193768 m!7026740))

(assert (=> b!6193768 m!7027694))

(assert (=> b!6193768 m!7027770))

(assert (=> b!6193768 m!7027694))

(declare-fun m!7027772 () Bool)

(assert (=> b!6193768 m!7027772))

(assert (=> bm!518058 m!7026740))

(assert (=> bm!518058 m!7026744))

(assert (=> b!6193765 m!7026740))

(assert (=> b!6193765 m!7027694))

(assert (=> b!6193765 m!7027694))

(declare-fun m!7027774 () Bool)

(assert (=> b!6193765 m!7027774))

(assert (=> b!6193764 m!7026740))

(assert (=> b!6193764 m!7027690))

(assert (=> b!6193769 m!7026740))

(assert (=> b!6193769 m!7027694))

(assert (=> b!6193769 m!7027694))

(assert (=> b!6193769 m!7027774))

(assert (=> b!6193770 m!7026738))

(declare-fun m!7027776 () Bool)

(assert (=> b!6193770 m!7027776))

(assert (=> b!6193773 m!7026740))

(assert (=> b!6193773 m!7027690))

(assert (=> b!6192786 d!1941891))

(declare-fun b!6193838 () Bool)

(declare-fun e!3772044 () Regex!16131)

(assert (=> b!6193838 (= e!3772044 (ite (= (head!12774 s!2326) (c!1117312 r!7292)) EmptyExpr!16131 EmptyLang!16131))))

(declare-fun b!6193839 () Bool)

(declare-fun e!3772045 () Regex!16131)

(declare-fun call!518089 () Regex!16131)

(assert (=> b!6193839 (= e!3772045 (Union!16131 (Concat!24976 call!518089 (regTwo!32774 r!7292)) EmptyLang!16131))))

(declare-fun b!6193840 () Bool)

(declare-fun e!3772046 () Regex!16131)

(declare-fun call!518087 () Regex!16131)

(assert (=> b!6193840 (= e!3772046 (Concat!24976 call!518087 r!7292))))

(declare-fun call!518090 () Regex!16131)

(declare-fun c!1117737 () Bool)

(declare-fun c!1117735 () Bool)

(declare-fun bm!518082 () Bool)

(assert (=> bm!518082 (= call!518090 (derivativeStep!4846 (ite c!1117735 (regTwo!32775 r!7292) (ite c!1117737 (reg!16460 r!7292) (regOne!32774 r!7292))) (head!12774 s!2326)))))

(declare-fun b!6193841 () Bool)

(assert (=> b!6193841 (= e!3772045 (Union!16131 (Concat!24976 call!518087 (regTwo!32774 r!7292)) call!518089))))

(declare-fun b!6193842 () Bool)

(declare-fun e!3772048 () Regex!16131)

(assert (=> b!6193842 (= e!3772048 e!3772044)))

(declare-fun c!1117733 () Bool)

(assert (=> b!6193842 (= c!1117733 ((_ is ElementMatch!16131) r!7292))))

(declare-fun d!1941893 () Bool)

(declare-fun lt!2341372 () Regex!16131)

(assert (=> d!1941893 (validRegex!7867 lt!2341372)))

(assert (=> d!1941893 (= lt!2341372 e!3772048)))

(declare-fun c!1117734 () Bool)

(assert (=> d!1941893 (= c!1117734 (or ((_ is EmptyExpr!16131) r!7292) ((_ is EmptyLang!16131) r!7292)))))

(assert (=> d!1941893 (validRegex!7867 r!7292)))

(assert (=> d!1941893 (= (derivativeStep!4846 r!7292 (head!12774 s!2326)) lt!2341372)))

(declare-fun b!6193843 () Bool)

(declare-fun e!3772047 () Regex!16131)

(declare-fun call!518088 () Regex!16131)

(assert (=> b!6193843 (= e!3772047 (Union!16131 call!518088 call!518090))))

(declare-fun b!6193844 () Bool)

(declare-fun c!1117736 () Bool)

(assert (=> b!6193844 (= c!1117736 (nullable!6124 (regOne!32774 r!7292)))))

(assert (=> b!6193844 (= e!3772046 e!3772045)))

(declare-fun bm!518083 () Bool)

(assert (=> bm!518083 (= call!518089 call!518088)))

(declare-fun b!6193845 () Bool)

(assert (=> b!6193845 (= c!1117735 ((_ is Union!16131) r!7292))))

(assert (=> b!6193845 (= e!3772044 e!3772047)))

(declare-fun b!6193846 () Bool)

(assert (=> b!6193846 (= e!3772047 e!3772046)))

(assert (=> b!6193846 (= c!1117737 ((_ is Star!16131) r!7292))))

(declare-fun bm!518084 () Bool)

(assert (=> bm!518084 (= call!518088 (derivativeStep!4846 (ite c!1117735 (regOne!32775 r!7292) (ite c!1117736 (regTwo!32774 r!7292) (regOne!32774 r!7292))) (head!12774 s!2326)))))

(declare-fun bm!518085 () Bool)

(assert (=> bm!518085 (= call!518087 call!518090)))

(declare-fun b!6193847 () Bool)

(assert (=> b!6193847 (= e!3772048 EmptyLang!16131)))

(assert (= (and d!1941893 c!1117734) b!6193847))

(assert (= (and d!1941893 (not c!1117734)) b!6193842))

(assert (= (and b!6193842 c!1117733) b!6193838))

(assert (= (and b!6193842 (not c!1117733)) b!6193845))

(assert (= (and b!6193845 c!1117735) b!6193843))

(assert (= (and b!6193845 (not c!1117735)) b!6193846))

(assert (= (and b!6193846 c!1117737) b!6193840))

(assert (= (and b!6193846 (not c!1117737)) b!6193844))

(assert (= (and b!6193844 c!1117736) b!6193841))

(assert (= (and b!6193844 (not c!1117736)) b!6193839))

(assert (= (or b!6193841 b!6193839) bm!518083))

(assert (= (or b!6193840 b!6193841) bm!518085))

(assert (= (or b!6193843 bm!518085) bm!518082))

(assert (= (or b!6193843 bm!518083) bm!518084))

(assert (=> bm!518082 m!7026736))

(declare-fun m!7027820 () Bool)

(assert (=> bm!518082 m!7027820))

(declare-fun m!7027822 () Bool)

(assert (=> d!1941893 m!7027822))

(assert (=> d!1941893 m!7026562))

(declare-fun m!7027824 () Bool)

(assert (=> b!6193844 m!7027824))

(assert (=> bm!518084 m!7026736))

(declare-fun m!7027826 () Bool)

(assert (=> bm!518084 m!7027826))

(assert (=> b!6192786 d!1941893))

(assert (=> b!6192786 d!1941801))

(assert (=> b!6192786 d!1941813))

(assert (=> d!1941501 d!1941831))

(declare-fun b!6193848 () Bool)

(declare-fun e!3772055 () Bool)

(assert (=> b!6193848 (= e!3772055 (= (head!12774 Nil!64570) (c!1117312 (regOne!32774 r!7292))))))

(declare-fun b!6193849 () Bool)

(declare-fun res!2562177 () Bool)

(assert (=> b!6193849 (=> (not res!2562177) (not e!3772055))))

(assert (=> b!6193849 (= res!2562177 (isEmpty!36557 (tail!11859 Nil!64570)))))

(declare-fun b!6193850 () Bool)

(declare-fun res!2562178 () Bool)

(declare-fun e!3772049 () Bool)

(assert (=> b!6193850 (=> res!2562178 e!3772049)))

(assert (=> b!6193850 (= res!2562178 (not ((_ is ElementMatch!16131) (regOne!32774 r!7292))))))

(declare-fun e!3772051 () Bool)

(assert (=> b!6193850 (= e!3772051 e!3772049)))

(declare-fun b!6193851 () Bool)

(declare-fun e!3772050 () Bool)

(declare-fun e!3772052 () Bool)

(assert (=> b!6193851 (= e!3772050 e!3772052)))

(declare-fun res!2562176 () Bool)

(assert (=> b!6193851 (=> res!2562176 e!3772052)))

(declare-fun call!518091 () Bool)

(assert (=> b!6193851 (= res!2562176 call!518091)))

(declare-fun b!6193852 () Bool)

(declare-fun e!3772053 () Bool)

(assert (=> b!6193852 (= e!3772053 (matchR!8314 (derivativeStep!4846 (regOne!32774 r!7292) (head!12774 Nil!64570)) (tail!11859 Nil!64570)))))

(declare-fun b!6193853 () Bool)

(declare-fun res!2562173 () Bool)

(assert (=> b!6193853 (=> res!2562173 e!3772052)))

(assert (=> b!6193853 (= res!2562173 (not (isEmpty!36557 (tail!11859 Nil!64570))))))

(declare-fun b!6193854 () Bool)

(assert (=> b!6193854 (= e!3772053 (nullable!6124 (regOne!32774 r!7292)))))

(declare-fun bm!518086 () Bool)

(assert (=> bm!518086 (= call!518091 (isEmpty!36557 Nil!64570))))

(declare-fun b!6193856 () Bool)

(declare-fun e!3772054 () Bool)

(declare-fun lt!2341373 () Bool)

(assert (=> b!6193856 (= e!3772054 (= lt!2341373 call!518091))))

(declare-fun b!6193857 () Bool)

(assert (=> b!6193857 (= e!3772052 (not (= (head!12774 Nil!64570) (c!1117312 (regOne!32774 r!7292)))))))

(declare-fun b!6193855 () Bool)

(assert (=> b!6193855 (= e!3772054 e!3772051)))

(declare-fun c!1117740 () Bool)

(assert (=> b!6193855 (= c!1117740 ((_ is EmptyLang!16131) (regOne!32774 r!7292)))))

(declare-fun d!1941905 () Bool)

(assert (=> d!1941905 e!3772054))

(declare-fun c!1117739 () Bool)

(assert (=> d!1941905 (= c!1117739 ((_ is EmptyExpr!16131) (regOne!32774 r!7292)))))

(assert (=> d!1941905 (= lt!2341373 e!3772053)))

(declare-fun c!1117738 () Bool)

(assert (=> d!1941905 (= c!1117738 (isEmpty!36557 Nil!64570))))

(assert (=> d!1941905 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1941905 (= (matchR!8314 (regOne!32774 r!7292) Nil!64570) lt!2341373)))

(declare-fun b!6193858 () Bool)

(assert (=> b!6193858 (= e!3772049 e!3772050)))

(declare-fun res!2562180 () Bool)

(assert (=> b!6193858 (=> (not res!2562180) (not e!3772050))))

(assert (=> b!6193858 (= res!2562180 (not lt!2341373))))

(declare-fun b!6193859 () Bool)

(declare-fun res!2562175 () Bool)

(assert (=> b!6193859 (=> res!2562175 e!3772049)))

(assert (=> b!6193859 (= res!2562175 e!3772055)))

(declare-fun res!2562179 () Bool)

(assert (=> b!6193859 (=> (not res!2562179) (not e!3772055))))

(assert (=> b!6193859 (= res!2562179 lt!2341373)))

(declare-fun b!6193860 () Bool)

(declare-fun res!2562174 () Bool)

(assert (=> b!6193860 (=> (not res!2562174) (not e!3772055))))

(assert (=> b!6193860 (= res!2562174 (not call!518091))))

(declare-fun b!6193861 () Bool)

(assert (=> b!6193861 (= e!3772051 (not lt!2341373))))

(assert (= (and d!1941905 c!1117738) b!6193854))

(assert (= (and d!1941905 (not c!1117738)) b!6193852))

(assert (= (and d!1941905 c!1117739) b!6193856))

(assert (= (and d!1941905 (not c!1117739)) b!6193855))

(assert (= (and b!6193855 c!1117740) b!6193861))

(assert (= (and b!6193855 (not c!1117740)) b!6193850))

(assert (= (and b!6193850 (not res!2562178)) b!6193859))

(assert (= (and b!6193859 res!2562179) b!6193860))

(assert (= (and b!6193860 res!2562174) b!6193849))

(assert (= (and b!6193849 res!2562177) b!6193848))

(assert (= (and b!6193859 (not res!2562175)) b!6193858))

(assert (= (and b!6193858 res!2562180) b!6193851))

(assert (= (and b!6193851 (not res!2562176)) b!6193853))

(assert (= (and b!6193853 (not res!2562173)) b!6193857))

(assert (= (or b!6193856 b!6193851 b!6193860) bm!518086))

(declare-fun m!7027838 () Bool)

(assert (=> d!1941905 m!7027838))

(assert (=> d!1941905 m!7026872))

(declare-fun m!7027840 () Bool)

(assert (=> b!6193852 m!7027840))

(assert (=> b!6193852 m!7027840))

(declare-fun m!7027842 () Bool)

(assert (=> b!6193852 m!7027842))

(declare-fun m!7027844 () Bool)

(assert (=> b!6193852 m!7027844))

(assert (=> b!6193852 m!7027842))

(assert (=> b!6193852 m!7027844))

(declare-fun m!7027846 () Bool)

(assert (=> b!6193852 m!7027846))

(assert (=> bm!518086 m!7027838))

(assert (=> b!6193849 m!7027844))

(assert (=> b!6193849 m!7027844))

(declare-fun m!7027848 () Bool)

(assert (=> b!6193849 m!7027848))

(assert (=> b!6193848 m!7027840))

(assert (=> b!6193853 m!7027844))

(assert (=> b!6193853 m!7027844))

(assert (=> b!6193853 m!7027848))

(assert (=> b!6193854 m!7027824))

(assert (=> b!6193857 m!7027840))

(assert (=> d!1941501 d!1941905))

(declare-fun b!6193862 () Bool)

(declare-fun e!3772057 () Bool)

(declare-fun call!518093 () Bool)

(assert (=> b!6193862 (= e!3772057 call!518093)))

(declare-fun b!6193863 () Bool)

(declare-fun e!3772061 () Bool)

(declare-fun e!3772062 () Bool)

(assert (=> b!6193863 (= e!3772061 e!3772062)))

(declare-fun c!1117742 () Bool)

(assert (=> b!6193863 (= c!1117742 ((_ is Union!16131) (regOne!32774 r!7292)))))

(declare-fun b!6193864 () Bool)

(declare-fun e!3772056 () Bool)

(declare-fun call!518092 () Bool)

(assert (=> b!6193864 (= e!3772056 call!518092)))

(declare-fun b!6193865 () Bool)

(declare-fun e!3772060 () Bool)

(assert (=> b!6193865 (= e!3772060 e!3772061)))

(declare-fun c!1117741 () Bool)

(assert (=> b!6193865 (= c!1117741 ((_ is Star!16131) (regOne!32774 r!7292)))))

(declare-fun d!1941909 () Bool)

(declare-fun res!2562184 () Bool)

(assert (=> d!1941909 (=> res!2562184 e!3772060)))

(assert (=> d!1941909 (= res!2562184 ((_ is ElementMatch!16131) (regOne!32774 r!7292)))))

(assert (=> d!1941909 (= (validRegex!7867 (regOne!32774 r!7292)) e!3772060)))

(declare-fun bm!518087 () Bool)

(assert (=> bm!518087 (= call!518092 (validRegex!7867 (ite c!1117741 (reg!16460 (regOne!32774 r!7292)) (ite c!1117742 (regOne!32775 (regOne!32774 r!7292)) (regOne!32774 (regOne!32774 r!7292))))))))

(declare-fun bm!518088 () Bool)

(assert (=> bm!518088 (= call!518093 (validRegex!7867 (ite c!1117742 (regTwo!32775 (regOne!32774 r!7292)) (regTwo!32774 (regOne!32774 r!7292)))))))

(declare-fun b!6193866 () Bool)

(declare-fun e!3772058 () Bool)

(assert (=> b!6193866 (= e!3772058 e!3772057)))

(declare-fun res!2562185 () Bool)

(assert (=> b!6193866 (=> (not res!2562185) (not e!3772057))))

(declare-fun call!518094 () Bool)

(assert (=> b!6193866 (= res!2562185 call!518094)))

(declare-fun b!6193867 () Bool)

(declare-fun res!2562183 () Bool)

(assert (=> b!6193867 (=> res!2562183 e!3772058)))

(assert (=> b!6193867 (= res!2562183 (not ((_ is Concat!24976) (regOne!32774 r!7292))))))

(assert (=> b!6193867 (= e!3772062 e!3772058)))

(declare-fun b!6193868 () Bool)

(declare-fun res!2562181 () Bool)

(declare-fun e!3772059 () Bool)

(assert (=> b!6193868 (=> (not res!2562181) (not e!3772059))))

(assert (=> b!6193868 (= res!2562181 call!518094)))

(assert (=> b!6193868 (= e!3772062 e!3772059)))

(declare-fun b!6193869 () Bool)

(assert (=> b!6193869 (= e!3772061 e!3772056)))

(declare-fun res!2562182 () Bool)

(assert (=> b!6193869 (= res!2562182 (not (nullable!6124 (reg!16460 (regOne!32774 r!7292)))))))

(assert (=> b!6193869 (=> (not res!2562182) (not e!3772056))))

(declare-fun bm!518089 () Bool)

(assert (=> bm!518089 (= call!518094 call!518092)))

(declare-fun b!6193870 () Bool)

(assert (=> b!6193870 (= e!3772059 call!518093)))

(assert (= (and d!1941909 (not res!2562184)) b!6193865))

(assert (= (and b!6193865 c!1117741) b!6193869))

(assert (= (and b!6193865 (not c!1117741)) b!6193863))

(assert (= (and b!6193869 res!2562182) b!6193864))

(assert (= (and b!6193863 c!1117742) b!6193868))

(assert (= (and b!6193863 (not c!1117742)) b!6193867))

(assert (= (and b!6193868 res!2562181) b!6193870))

(assert (= (and b!6193867 (not res!2562183)) b!6193866))

(assert (= (and b!6193866 res!2562185) b!6193862))

(assert (= (or b!6193870 b!6193862) bm!518088))

(assert (= (or b!6193868 b!6193866) bm!518089))

(assert (= (or b!6193864 bm!518089) bm!518087))

(declare-fun m!7027850 () Bool)

(assert (=> bm!518087 m!7027850))

(declare-fun m!7027852 () Bool)

(assert (=> bm!518088 m!7027852))

(declare-fun m!7027854 () Bool)

(assert (=> b!6193869 m!7027854))

(assert (=> d!1941501 d!1941909))

(declare-fun d!1941913 () Bool)

(assert (=> d!1941913 (= (nullable!6124 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))) (nullableFct!2082 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))

(declare-fun bs!1536781 () Bool)

(assert (= bs!1536781 d!1941913))

(declare-fun m!7027856 () Bool)

(assert (=> bs!1536781 m!7027856))

(assert (=> b!6193151 d!1941913))

(declare-fun d!1941915 () Bool)

(assert (=> d!1941915 (= (nullable!6124 lt!2341185) (nullableFct!2082 lt!2341185))))

(declare-fun bs!1536782 () Bool)

(assert (= bs!1536782 d!1941915))

(declare-fun m!7027858 () Bool)

(assert (=> bs!1536782 m!7027858))

(assert (=> b!6193298 d!1941915))

(declare-fun b!6193882 () Bool)

(declare-fun e!3772069 () (InoxSet Context!11030))

(declare-fun call!518101 () (InoxSet Context!11030))

(assert (=> b!6193882 (= e!3772069 call!518101)))

(declare-fun b!6193883 () Bool)

(declare-fun e!3772070 () (InoxSet Context!11030))

(assert (=> b!6193883 (= e!3772070 e!3772069)))

(declare-fun c!1117751 () Bool)

(assert (=> b!6193883 (= c!1117751 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341179))))))

(declare-fun b!6193884 () Bool)

(declare-fun e!3772071 () (InoxSet Context!11030))

(declare-fun call!518102 () (InoxSet Context!11030))

(declare-fun call!518104 () (InoxSet Context!11030))

(assert (=> b!6193884 (= e!3772071 ((_ map or) call!518102 call!518104))))

(declare-fun b!6193885 () Bool)

(declare-fun e!3772072 () (InoxSet Context!11030))

(assert (=> b!6193885 (= e!3772072 ((as const (Array Context!11030 Bool)) false))))

(declare-fun c!1117748 () Bool)

(declare-fun call!518105 () List!64692)

(declare-fun bm!518096 () Bool)

(assert (=> bm!518096 (= call!518104 (derivationStepZipperDown!1379 (ite c!1117748 (regTwo!32775 (h!71016 (exprs!6015 lt!2341179))) (regOne!32774 (h!71016 (exprs!6015 lt!2341179)))) (ite c!1117748 (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (Context!11031 call!518105)) (h!71018 s!2326)))))

(declare-fun b!6193886 () Bool)

(declare-fun e!3772074 () Bool)

(assert (=> b!6193886 (= e!3772074 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 lt!2341179)))))))

(declare-fun bm!518097 () Bool)

(declare-fun c!1117749 () Bool)

(assert (=> bm!518097 (= call!518105 ($colon$colon!2002 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179)))) (ite (or c!1117749 c!1117751) (regTwo!32774 (h!71016 (exprs!6015 lt!2341179))) (h!71016 (exprs!6015 lt!2341179)))))))

(declare-fun bm!518098 () Bool)

(declare-fun call!518103 () (InoxSet Context!11030))

(assert (=> bm!518098 (= call!518101 call!518103)))

(declare-fun bm!518099 () Bool)

(assert (=> bm!518099 (= call!518103 call!518102)))

(declare-fun call!518106 () List!64692)

(declare-fun bm!518100 () Bool)

(assert (=> bm!518100 (= call!518102 (derivationStepZipperDown!1379 (ite c!1117748 (regOne!32775 (h!71016 (exprs!6015 lt!2341179))) (ite c!1117749 (regTwo!32774 (h!71016 (exprs!6015 lt!2341179))) (ite c!1117751 (regOne!32774 (h!71016 (exprs!6015 lt!2341179))) (reg!16460 (h!71016 (exprs!6015 lt!2341179)))))) (ite (or c!1117748 c!1117749) (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (Context!11031 call!518106)) (h!71018 s!2326)))))

(declare-fun b!6193887 () Bool)

(assert (=> b!6193887 (= c!1117749 e!3772074)))

(declare-fun res!2562187 () Bool)

(assert (=> b!6193887 (=> (not res!2562187) (not e!3772074))))

(assert (=> b!6193887 (= res!2562187 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341179))))))

(assert (=> b!6193887 (= e!3772071 e!3772070)))

(declare-fun b!6193888 () Bool)

(declare-fun e!3772073 () (InoxSet Context!11030))

(assert (=> b!6193888 (= e!3772073 (store ((as const (Array Context!11030 Bool)) false) (Context!11031 (t!378204 (exprs!6015 lt!2341179))) true))))

(declare-fun b!6193889 () Bool)

(assert (=> b!6193889 (= e!3772072 call!518101)))

(declare-fun d!1941917 () Bool)

(declare-fun c!1117750 () Bool)

(assert (=> d!1941917 (= c!1117750 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 lt!2341179))) (= (c!1117312 (h!71016 (exprs!6015 lt!2341179))) (h!71018 s!2326))))))

(assert (=> d!1941917 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341179)) (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (h!71018 s!2326)) e!3772073)))

(declare-fun bm!518101 () Bool)

(assert (=> bm!518101 (= call!518106 call!518105)))

(declare-fun b!6193890 () Bool)

(declare-fun c!1117752 () Bool)

(assert (=> b!6193890 (= c!1117752 ((_ is Star!16131) (h!71016 (exprs!6015 lt!2341179))))))

(assert (=> b!6193890 (= e!3772069 e!3772072)))

(declare-fun b!6193891 () Bool)

(assert (=> b!6193891 (= e!3772073 e!3772071)))

(assert (=> b!6193891 (= c!1117748 ((_ is Union!16131) (h!71016 (exprs!6015 lt!2341179))))))

(declare-fun b!6193892 () Bool)

(assert (=> b!6193892 (= e!3772070 ((_ map or) call!518104 call!518103))))

(assert (= (and d!1941917 c!1117750) b!6193888))

(assert (= (and d!1941917 (not c!1117750)) b!6193891))

(assert (= (and b!6193891 c!1117748) b!6193884))

(assert (= (and b!6193891 (not c!1117748)) b!6193887))

(assert (= (and b!6193887 res!2562187) b!6193886))

(assert (= (and b!6193887 c!1117749) b!6193892))

(assert (= (and b!6193887 (not c!1117749)) b!6193883))

(assert (= (and b!6193883 c!1117751) b!6193882))

(assert (= (and b!6193883 (not c!1117751)) b!6193890))

(assert (= (and b!6193890 c!1117752) b!6193889))

(assert (= (and b!6193890 (not c!1117752)) b!6193885))

(assert (= (or b!6193882 b!6193889) bm!518101))

(assert (= (or b!6193882 b!6193889) bm!518098))

(assert (= (or b!6193892 bm!518101) bm!518097))

(assert (= (or b!6193892 bm!518098) bm!518099))

(assert (= (or b!6193884 b!6193892) bm!518096))

(assert (= (or b!6193884 bm!518099) bm!518100))

(declare-fun m!7027862 () Bool)

(assert (=> b!6193886 m!7027862))

(declare-fun m!7027866 () Bool)

(assert (=> bm!518100 m!7027866))

(declare-fun m!7027868 () Bool)

(assert (=> bm!518096 m!7027868))

(declare-fun m!7027870 () Bool)

(assert (=> bm!518097 m!7027870))

(declare-fun m!7027874 () Bool)

(assert (=> b!6193888 m!7027874))

(assert (=> bm!517941 d!1941917))

(declare-fun d!1941919 () Bool)

(assert (=> d!1941919 (= (isEmpty!36555 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))) ((_ is Nil!64568) (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(assert (=> b!6193345 d!1941919))

(declare-fun d!1941923 () Bool)

(assert (=> d!1941923 true))

(declare-fun setRes!42020 () Bool)

(assert (=> d!1941923 setRes!42020))

(declare-fun condSetEmpty!42020 () Bool)

(declare-fun res!2562190 () (InoxSet Context!11030))

(assert (=> d!1941923 (= condSetEmpty!42020 (= res!2562190 ((as const (Array Context!11030 Bool)) false)))))

(assert (=> d!1941923 (= (choose!46008 z!1189 lambda!338193) res!2562190)))

(declare-fun setIsEmpty!42020 () Bool)

(assert (=> setIsEmpty!42020 setRes!42020))

(declare-fun tp!1728018 () Bool)

(declare-fun setElem!42020 () Context!11030)

(declare-fun setNonEmpty!42020 () Bool)

(declare-fun e!3772082 () Bool)

(assert (=> setNonEmpty!42020 (= setRes!42020 (and tp!1728018 (inv!83574 setElem!42020) e!3772082))))

(declare-fun setRest!42020 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42020 (= res!2562190 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42020 true) setRest!42020))))

(declare-fun b!6193902 () Bool)

(declare-fun tp!1728017 () Bool)

(assert (=> b!6193902 (= e!3772082 tp!1728017)))

(assert (= (and d!1941923 condSetEmpty!42020) setIsEmpty!42020))

(assert (= (and d!1941923 (not condSetEmpty!42020)) setNonEmpty!42020))

(assert (= setNonEmpty!42020 b!6193902))

(declare-fun m!7027880 () Bool)

(assert (=> setNonEmpty!42020 m!7027880))

(assert (=> d!1941627 d!1941923))

(declare-fun bs!1536783 () Bool)

(declare-fun d!1941925 () Bool)

(assert (= bs!1536783 (and d!1941925 d!1941673)))

(declare-fun lambda!338293 () Int)

(assert (=> bs!1536783 (= lambda!338293 lambda!338262)))

(declare-fun bs!1536784 () Bool)

(assert (= bs!1536784 (and d!1941925 d!1941667)))

(assert (=> bs!1536784 (= lambda!338293 lambda!338257)))

(declare-fun bs!1536785 () Bool)

(assert (= bs!1536785 (and d!1941925 d!1941827)))

(assert (=> bs!1536785 (= lambda!338293 lambda!338284)))

(declare-fun bs!1536786 () Bool)

(assert (= bs!1536786 (and d!1941925 d!1941617)))

(assert (=> bs!1536786 (= lambda!338293 lambda!338252)))

(declare-fun bs!1536787 () Bool)

(assert (= bs!1536787 (and d!1941925 d!1941619)))

(assert (=> bs!1536787 (= lambda!338293 lambda!338253)))

(declare-fun bs!1536788 () Bool)

(assert (= bs!1536788 (and d!1941925 d!1941659)))

(assert (=> bs!1536788 (= lambda!338293 lambda!338256)))

(declare-fun bs!1536789 () Bool)

(assert (= bs!1536789 (and d!1941925 d!1941615)))

(assert (=> bs!1536789 (= lambda!338293 lambda!338249)))

(declare-fun bs!1536790 () Bool)

(assert (= bs!1536790 (and d!1941925 d!1941879)))

(assert (=> bs!1536790 (= lambda!338293 lambda!338292)))

(declare-fun bs!1536791 () Bool)

(assert (= bs!1536791 (and d!1941925 d!1941595)))

(assert (=> bs!1536791 (= lambda!338293 lambda!338245)))

(declare-fun bs!1536792 () Bool)

(assert (= bs!1536792 (and d!1941925 d!1941685)))

(assert (=> bs!1536792 (= lambda!338293 lambda!338263)))

(assert (=> d!1941925 (= (inv!83574 setElem!42016) (forall!15247 (exprs!6015 setElem!42016) lambda!338293))))

(declare-fun bs!1536793 () Bool)

(assert (= bs!1536793 d!1941925))

(declare-fun m!7027892 () Bool)

(assert (=> bs!1536793 m!7027892))

(assert (=> setNonEmpty!42016 d!1941925))

(declare-fun bs!1536794 () Bool)

(declare-fun d!1941929 () Bool)

(assert (= bs!1536794 (and d!1941929 d!1941855)))

(declare-fun lambda!338294 () Int)

(assert (=> bs!1536794 (= lambda!338294 lambda!338289)))

(declare-fun bs!1536795 () Bool)

(assert (= bs!1536795 (and d!1941929 d!1941871)))

(assert (=> bs!1536795 (= lambda!338294 lambda!338291)))

(assert (=> d!1941929 (= (nullableZipper!1907 ((_ map or) lt!2341166 lt!2341164)) (exists!2468 ((_ map or) lt!2341166 lt!2341164) lambda!338294))))

(declare-fun bs!1536796 () Bool)

(assert (= bs!1536796 d!1941929))

(declare-fun m!7027896 () Bool)

(assert (=> bs!1536796 m!7027896))

(assert (=> b!6193241 d!1941929))

(assert (=> b!6193351 d!1941477))

(assert (=> b!6192791 d!1941801))

(assert (=> d!1941553 d!1941747))

(declare-fun b!6193912 () Bool)

(declare-fun e!3772090 () (InoxSet Context!11030))

(declare-fun call!518113 () (InoxSet Context!11030))

(assert (=> b!6193912 (= e!3772090 call!518113)))

(declare-fun b!6193913 () Bool)

(declare-fun e!3772091 () (InoxSet Context!11030))

(assert (=> b!6193913 (= e!3772091 e!3772090)))

(declare-fun c!1117760 () Bool)

(assert (=> b!6193913 (= c!1117760 ((_ is Concat!24976) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6193914 () Bool)

(declare-fun e!3772092 () (InoxSet Context!11030))

(declare-fun call!518114 () (InoxSet Context!11030))

(declare-fun call!518116 () (InoxSet Context!11030))

(assert (=> b!6193914 (= e!3772092 ((_ map or) call!518114 call!518116))))

(declare-fun b!6193915 () Bool)

(declare-fun e!3772093 () (InoxSet Context!11030))

(assert (=> b!6193915 (= e!3772093 ((as const (Array Context!11030 Bool)) false))))

(declare-fun call!518117 () List!64692)

(declare-fun c!1117757 () Bool)

(declare-fun bm!518108 () Bool)

(assert (=> bm!518108 (= call!518116 (derivationStepZipperDown!1379 (ite c!1117757 (regTwo!32775 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (regOne!32774 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))))) (ite c!1117757 (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980)) (Context!11031 call!518117)) (h!71018 s!2326)))))

(declare-fun e!3772095 () Bool)

(declare-fun b!6193916 () Bool)

(assert (=> b!6193916 (= e!3772095 (nullable!6124 (regOne!32774 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518109 () Bool)

(declare-fun c!1117758 () Bool)

(assert (=> bm!518109 (= call!518117 ($colon$colon!2002 (exprs!6015 (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980))) (ite (or c!1117758 c!1117760) (regTwo!32774 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518110 () Bool)

(declare-fun call!518115 () (InoxSet Context!11030))

(assert (=> bm!518110 (= call!518113 call!518115)))

(declare-fun bm!518111 () Bool)

(assert (=> bm!518111 (= call!518115 call!518114)))

(declare-fun bm!518112 () Bool)

(declare-fun call!518118 () List!64692)

(assert (=> bm!518112 (= call!518114 (derivationStepZipperDown!1379 (ite c!1117757 (regOne!32775 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (ite c!1117758 (regTwo!32774 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (ite c!1117760 (regOne!32774 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (reg!16460 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))))))) (ite (or c!1117757 c!1117758) (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980)) (Context!11031 call!518118)) (h!71018 s!2326)))))

(declare-fun b!6193917 () Bool)

(assert (=> b!6193917 (= c!1117758 e!3772095)))

(declare-fun res!2562199 () Bool)

(assert (=> b!6193917 (=> (not res!2562199) (not e!3772095))))

(assert (=> b!6193917 (= res!2562199 ((_ is Concat!24976) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193917 (= e!3772092 e!3772091)))

(declare-fun b!6193918 () Bool)

(declare-fun e!3772094 () (InoxSet Context!11030))

(assert (=> b!6193918 (= e!3772094 (store ((as const (Array Context!11030 Bool)) false) (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980)) true))))

(declare-fun b!6193919 () Bool)

(assert (=> b!6193919 (= e!3772093 call!518113)))

(declare-fun d!1941935 () Bool)

(declare-fun c!1117759 () Bool)

(assert (=> d!1941935 (= c!1117759 (and ((_ is ElementMatch!16131) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (= (c!1117312 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))) (h!71018 s!2326))))))

(assert (=> d!1941935 (= (derivationStepZipperDown!1379 (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))) (ite (or c!1117520 c!1117521) lt!2341183 (Context!11031 call!517980)) (h!71018 s!2326)) e!3772094)))

(declare-fun bm!518113 () Bool)

(assert (=> bm!518113 (= call!518118 call!518117)))

(declare-fun b!6193920 () Bool)

(declare-fun c!1117761 () Bool)

(assert (=> b!6193920 (= c!1117761 ((_ is Star!16131) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6193920 (= e!3772090 e!3772093)))

(declare-fun b!6193921 () Bool)

(assert (=> b!6193921 (= e!3772094 e!3772092)))

(assert (=> b!6193921 (= c!1117757 ((_ is Union!16131) (ite c!1117520 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117521 (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (ite c!1117523 (regOne!32774 (regOne!32775 (regOne!32774 r!7292))) (reg!16460 (regOne!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6193922 () Bool)

(assert (=> b!6193922 (= e!3772091 ((_ map or) call!518116 call!518115))))

(assert (= (and d!1941935 c!1117759) b!6193918))

(assert (= (and d!1941935 (not c!1117759)) b!6193921))

(assert (= (and b!6193921 c!1117757) b!6193914))

(assert (= (and b!6193921 (not c!1117757)) b!6193917))

(assert (= (and b!6193917 res!2562199) b!6193916))

(assert (= (and b!6193917 c!1117758) b!6193922))

(assert (= (and b!6193917 (not c!1117758)) b!6193913))

(assert (= (and b!6193913 c!1117760) b!6193912))

(assert (= (and b!6193913 (not c!1117760)) b!6193920))

(assert (= (and b!6193920 c!1117761) b!6193919))

(assert (= (and b!6193920 (not c!1117761)) b!6193915))

(assert (= (or b!6193912 b!6193919) bm!518113))

(assert (= (or b!6193912 b!6193919) bm!518110))

(assert (= (or b!6193922 bm!518113) bm!518109))

(assert (= (or b!6193922 bm!518110) bm!518111))

(assert (= (or b!6193914 b!6193922) bm!518108))

(assert (= (or b!6193914 bm!518111) bm!518112))

(declare-fun m!7027900 () Bool)

(assert (=> b!6193916 m!7027900))

(declare-fun m!7027906 () Bool)

(assert (=> bm!518112 m!7027906))

(declare-fun m!7027910 () Bool)

(assert (=> bm!518108 m!7027910))

(declare-fun m!7027912 () Bool)

(assert (=> bm!518109 m!7027912))

(declare-fun m!7027916 () Bool)

(assert (=> b!6193918 m!7027916))

(assert (=> bm!517974 d!1941935))

(declare-fun b!6193932 () Bool)

(declare-fun e!3772109 () Bool)

(assert (=> b!6193932 (= e!3772109 (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 lt!2341177 (head!12774 s!2326)))))))

(declare-fun b!6193933 () Bool)

(declare-fun res!2562209 () Bool)

(assert (=> b!6193933 (=> (not res!2562209) (not e!3772109))))

(assert (=> b!6193933 (= res!2562209 (isEmpty!36557 (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6193934 () Bool)

(declare-fun res!2562210 () Bool)

(declare-fun e!3772103 () Bool)

(assert (=> b!6193934 (=> res!2562210 e!3772103)))

(assert (=> b!6193934 (= res!2562210 (not ((_ is ElementMatch!16131) (derivativeStep!4846 lt!2341177 (head!12774 s!2326)))))))

(declare-fun e!3772105 () Bool)

(assert (=> b!6193934 (= e!3772105 e!3772103)))

(declare-fun b!6193935 () Bool)

(declare-fun e!3772104 () Bool)

(declare-fun e!3772106 () Bool)

(assert (=> b!6193935 (= e!3772104 e!3772106)))

(declare-fun res!2562208 () Bool)

(assert (=> b!6193935 (=> res!2562208 e!3772106)))

(declare-fun call!518122 () Bool)

(assert (=> b!6193935 (= res!2562208 call!518122)))

(declare-fun b!6193936 () Bool)

(declare-fun e!3772107 () Bool)

(assert (=> b!6193936 (= e!3772107 (matchR!8314 (derivativeStep!4846 (derivativeStep!4846 lt!2341177 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6193937 () Bool)

(declare-fun res!2562205 () Bool)

(assert (=> b!6193937 (=> res!2562205 e!3772106)))

(assert (=> b!6193937 (= res!2562205 (not (isEmpty!36557 (tail!11859 (tail!11859 s!2326)))))))

(declare-fun b!6193938 () Bool)

(assert (=> b!6193938 (= e!3772107 (nullable!6124 (derivativeStep!4846 lt!2341177 (head!12774 s!2326))))))

(declare-fun bm!518117 () Bool)

(assert (=> bm!518117 (= call!518122 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6193940 () Bool)

(declare-fun e!3772108 () Bool)

(declare-fun lt!2341374 () Bool)

(assert (=> b!6193940 (= e!3772108 (= lt!2341374 call!518122))))

(declare-fun b!6193941 () Bool)

(assert (=> b!6193941 (= e!3772106 (not (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 lt!2341177 (head!12774 s!2326))))))))

(declare-fun b!6193939 () Bool)

(assert (=> b!6193939 (= e!3772108 e!3772105)))

(declare-fun c!1117766 () Bool)

(assert (=> b!6193939 (= c!1117766 ((_ is EmptyLang!16131) (derivativeStep!4846 lt!2341177 (head!12774 s!2326))))))

(declare-fun d!1941947 () Bool)

(assert (=> d!1941947 e!3772108))

(declare-fun c!1117765 () Bool)

(assert (=> d!1941947 (= c!1117765 ((_ is EmptyExpr!16131) (derivativeStep!4846 lt!2341177 (head!12774 s!2326))))))

(assert (=> d!1941947 (= lt!2341374 e!3772107)))

(declare-fun c!1117764 () Bool)

(assert (=> d!1941947 (= c!1117764 (isEmpty!36557 (tail!11859 s!2326)))))

(assert (=> d!1941947 (validRegex!7867 (derivativeStep!4846 lt!2341177 (head!12774 s!2326)))))

(assert (=> d!1941947 (= (matchR!8314 (derivativeStep!4846 lt!2341177 (head!12774 s!2326)) (tail!11859 s!2326)) lt!2341374)))

(declare-fun b!6193942 () Bool)

(assert (=> b!6193942 (= e!3772103 e!3772104)))

(declare-fun res!2562212 () Bool)

(assert (=> b!6193942 (=> (not res!2562212) (not e!3772104))))

(assert (=> b!6193942 (= res!2562212 (not lt!2341374))))

(declare-fun b!6193943 () Bool)

(declare-fun res!2562207 () Bool)

(assert (=> b!6193943 (=> res!2562207 e!3772103)))

(assert (=> b!6193943 (= res!2562207 e!3772109)))

(declare-fun res!2562211 () Bool)

(assert (=> b!6193943 (=> (not res!2562211) (not e!3772109))))

(assert (=> b!6193943 (= res!2562211 lt!2341374)))

(declare-fun b!6193944 () Bool)

(declare-fun res!2562206 () Bool)

(assert (=> b!6193944 (=> (not res!2562206) (not e!3772109))))

(assert (=> b!6193944 (= res!2562206 (not call!518122))))

(declare-fun b!6193945 () Bool)

(assert (=> b!6193945 (= e!3772105 (not lt!2341374))))

(assert (= (and d!1941947 c!1117764) b!6193938))

(assert (= (and d!1941947 (not c!1117764)) b!6193936))

(assert (= (and d!1941947 c!1117765) b!6193940))

(assert (= (and d!1941947 (not c!1117765)) b!6193939))

(assert (= (and b!6193939 c!1117766) b!6193945))

(assert (= (and b!6193939 (not c!1117766)) b!6193934))

(assert (= (and b!6193934 (not res!2562210)) b!6193943))

(assert (= (and b!6193943 res!2562211) b!6193944))

(assert (= (and b!6193944 res!2562206) b!6193933))

(assert (= (and b!6193933 res!2562209) b!6193932))

(assert (= (and b!6193943 (not res!2562207)) b!6193942))

(assert (= (and b!6193942 res!2562212) b!6193935))

(assert (= (and b!6193935 (not res!2562208)) b!6193937))

(assert (= (and b!6193937 (not res!2562205)) b!6193941))

(assert (= (or b!6193940 b!6193935 b!6193944) bm!518117))

(assert (=> d!1941947 m!7026740))

(assert (=> d!1941947 m!7026744))

(assert (=> d!1941947 m!7027248))

(declare-fun m!7027920 () Bool)

(assert (=> d!1941947 m!7027920))

(assert (=> b!6193936 m!7026740))

(assert (=> b!6193936 m!7027690))

(assert (=> b!6193936 m!7027248))

(assert (=> b!6193936 m!7027690))

(declare-fun m!7027922 () Bool)

(assert (=> b!6193936 m!7027922))

(assert (=> b!6193936 m!7026740))

(assert (=> b!6193936 m!7027694))

(assert (=> b!6193936 m!7027922))

(assert (=> b!6193936 m!7027694))

(declare-fun m!7027924 () Bool)

(assert (=> b!6193936 m!7027924))

(assert (=> bm!518117 m!7026740))

(assert (=> bm!518117 m!7026744))

(assert (=> b!6193933 m!7026740))

(assert (=> b!6193933 m!7027694))

(assert (=> b!6193933 m!7027694))

(assert (=> b!6193933 m!7027774))

(assert (=> b!6193932 m!7026740))

(assert (=> b!6193932 m!7027690))

(assert (=> b!6193937 m!7026740))

(assert (=> b!6193937 m!7027694))

(assert (=> b!6193937 m!7027694))

(assert (=> b!6193937 m!7027774))

(assert (=> b!6193938 m!7027248))

(declare-fun m!7027926 () Bool)

(assert (=> b!6193938 m!7027926))

(assert (=> b!6193941 m!7026740))

(assert (=> b!6193941 m!7027690))

(assert (=> b!6193252 d!1941947))

(declare-fun b!6193955 () Bool)

(declare-fun e!3772117 () Regex!16131)

(assert (=> b!6193955 (= e!3772117 (ite (= (head!12774 s!2326) (c!1117312 lt!2341177)) EmptyExpr!16131 EmptyLang!16131))))

(declare-fun b!6193956 () Bool)

(declare-fun e!3772118 () Regex!16131)

(declare-fun call!518128 () Regex!16131)

(assert (=> b!6193956 (= e!3772118 (Union!16131 (Concat!24976 call!518128 (regTwo!32774 lt!2341177)) EmptyLang!16131))))

(declare-fun b!6193957 () Bool)

(declare-fun e!3772119 () Regex!16131)

(declare-fun call!518126 () Regex!16131)

(assert (=> b!6193957 (= e!3772119 (Concat!24976 call!518126 lt!2341177))))

(declare-fun call!518129 () Regex!16131)

(declare-fun c!1117773 () Bool)

(declare-fun c!1117771 () Bool)

(declare-fun bm!518121 () Bool)

(assert (=> bm!518121 (= call!518129 (derivativeStep!4846 (ite c!1117771 (regTwo!32775 lt!2341177) (ite c!1117773 (reg!16460 lt!2341177) (regOne!32774 lt!2341177))) (head!12774 s!2326)))))

(declare-fun b!6193958 () Bool)

(assert (=> b!6193958 (= e!3772118 (Union!16131 (Concat!24976 call!518126 (regTwo!32774 lt!2341177)) call!518128))))

(declare-fun b!6193959 () Bool)

(declare-fun e!3772121 () Regex!16131)

(assert (=> b!6193959 (= e!3772121 e!3772117)))

(declare-fun c!1117769 () Bool)

(assert (=> b!6193959 (= c!1117769 ((_ is ElementMatch!16131) lt!2341177))))

(declare-fun d!1941953 () Bool)

(declare-fun lt!2341375 () Regex!16131)

(assert (=> d!1941953 (validRegex!7867 lt!2341375)))

(assert (=> d!1941953 (= lt!2341375 e!3772121)))

(declare-fun c!1117770 () Bool)

(assert (=> d!1941953 (= c!1117770 (or ((_ is EmptyExpr!16131) lt!2341177) ((_ is EmptyLang!16131) lt!2341177)))))

(assert (=> d!1941953 (validRegex!7867 lt!2341177)))

(assert (=> d!1941953 (= (derivativeStep!4846 lt!2341177 (head!12774 s!2326)) lt!2341375)))

(declare-fun b!6193960 () Bool)

(declare-fun e!3772120 () Regex!16131)

(declare-fun call!518127 () Regex!16131)

(assert (=> b!6193960 (= e!3772120 (Union!16131 call!518127 call!518129))))

(declare-fun b!6193961 () Bool)

(declare-fun c!1117772 () Bool)

(assert (=> b!6193961 (= c!1117772 (nullable!6124 (regOne!32774 lt!2341177)))))

(assert (=> b!6193961 (= e!3772119 e!3772118)))

(declare-fun bm!518122 () Bool)

(assert (=> bm!518122 (= call!518128 call!518127)))

(declare-fun b!6193962 () Bool)

(assert (=> b!6193962 (= c!1117771 ((_ is Union!16131) lt!2341177))))

(assert (=> b!6193962 (= e!3772117 e!3772120)))

(declare-fun b!6193963 () Bool)

(assert (=> b!6193963 (= e!3772120 e!3772119)))

(assert (=> b!6193963 (= c!1117773 ((_ is Star!16131) lt!2341177))))

(declare-fun bm!518123 () Bool)

(assert (=> bm!518123 (= call!518127 (derivativeStep!4846 (ite c!1117771 (regOne!32775 lt!2341177) (ite c!1117772 (regTwo!32774 lt!2341177) (regOne!32774 lt!2341177))) (head!12774 s!2326)))))

(declare-fun bm!518124 () Bool)

(assert (=> bm!518124 (= call!518126 call!518129)))

(declare-fun b!6193964 () Bool)

(assert (=> b!6193964 (= e!3772121 EmptyLang!16131)))

(assert (= (and d!1941953 c!1117770) b!6193964))

(assert (= (and d!1941953 (not c!1117770)) b!6193959))

(assert (= (and b!6193959 c!1117769) b!6193955))

(assert (= (and b!6193959 (not c!1117769)) b!6193962))

(assert (= (and b!6193962 c!1117771) b!6193960))

(assert (= (and b!6193962 (not c!1117771)) b!6193963))

(assert (= (and b!6193963 c!1117773) b!6193957))

(assert (= (and b!6193963 (not c!1117773)) b!6193961))

(assert (= (and b!6193961 c!1117772) b!6193958))

(assert (= (and b!6193961 (not c!1117772)) b!6193956))

(assert (= (or b!6193958 b!6193956) bm!518122))

(assert (= (or b!6193957 b!6193958) bm!518124))

(assert (= (or b!6193960 bm!518124) bm!518121))

(assert (= (or b!6193960 bm!518122) bm!518123))

(assert (=> bm!518121 m!7026736))

(declare-fun m!7027934 () Bool)

(assert (=> bm!518121 m!7027934))

(declare-fun m!7027938 () Bool)

(assert (=> d!1941953 m!7027938))

(assert (=> d!1941953 m!7027246))

(declare-fun m!7027942 () Bool)

(assert (=> b!6193961 m!7027942))

(assert (=> bm!518123 m!7026736))

(declare-fun m!7027944 () Bool)

(assert (=> bm!518123 m!7027944))

(assert (=> b!6193252 d!1941953))

(assert (=> b!6193252 d!1941801))

(assert (=> b!6193252 d!1941813))

(declare-fun b!6193969 () Bool)

(declare-fun e!3772126 () Bool)

(declare-fun call!518131 () Bool)

(assert (=> b!6193969 (= e!3772126 call!518131)))

(declare-fun b!6193970 () Bool)

(declare-fun e!3772130 () Bool)

(declare-fun e!3772131 () Bool)

(assert (=> b!6193970 (= e!3772130 e!3772131)))

(declare-fun c!1117776 () Bool)

(assert (=> b!6193970 (= c!1117776 ((_ is Union!16131) lt!2341322))))

(declare-fun b!6193971 () Bool)

(declare-fun e!3772125 () Bool)

(declare-fun call!518130 () Bool)

(assert (=> b!6193971 (= e!3772125 call!518130)))

(declare-fun b!6193972 () Bool)

(declare-fun e!3772129 () Bool)

(assert (=> b!6193972 (= e!3772129 e!3772130)))

(declare-fun c!1117775 () Bool)

(assert (=> b!6193972 (= c!1117775 ((_ is Star!16131) lt!2341322))))

(declare-fun d!1941959 () Bool)

(declare-fun res!2562223 () Bool)

(assert (=> d!1941959 (=> res!2562223 e!3772129)))

(assert (=> d!1941959 (= res!2562223 ((_ is ElementMatch!16131) lt!2341322))))

(assert (=> d!1941959 (= (validRegex!7867 lt!2341322) e!3772129)))

(declare-fun bm!518125 () Bool)

(assert (=> bm!518125 (= call!518130 (validRegex!7867 (ite c!1117775 (reg!16460 lt!2341322) (ite c!1117776 (regOne!32775 lt!2341322) (regOne!32774 lt!2341322)))))))

(declare-fun bm!518126 () Bool)

(assert (=> bm!518126 (= call!518131 (validRegex!7867 (ite c!1117776 (regTwo!32775 lt!2341322) (regTwo!32774 lt!2341322))))))

(declare-fun b!6193973 () Bool)

(declare-fun e!3772127 () Bool)

(assert (=> b!6193973 (= e!3772127 e!3772126)))

(declare-fun res!2562224 () Bool)

(assert (=> b!6193973 (=> (not res!2562224) (not e!3772126))))

(declare-fun call!518132 () Bool)

(assert (=> b!6193973 (= res!2562224 call!518132)))

(declare-fun b!6193974 () Bool)

(declare-fun res!2562222 () Bool)

(assert (=> b!6193974 (=> res!2562222 e!3772127)))

(assert (=> b!6193974 (= res!2562222 (not ((_ is Concat!24976) lt!2341322)))))

(assert (=> b!6193974 (= e!3772131 e!3772127)))

(declare-fun b!6193975 () Bool)

(declare-fun res!2562220 () Bool)

(declare-fun e!3772128 () Bool)

(assert (=> b!6193975 (=> (not res!2562220) (not e!3772128))))

(assert (=> b!6193975 (= res!2562220 call!518132)))

(assert (=> b!6193975 (= e!3772131 e!3772128)))

(declare-fun b!6193976 () Bool)

(assert (=> b!6193976 (= e!3772130 e!3772125)))

(declare-fun res!2562221 () Bool)

(assert (=> b!6193976 (= res!2562221 (not (nullable!6124 (reg!16460 lt!2341322))))))

(assert (=> b!6193976 (=> (not res!2562221) (not e!3772125))))

(declare-fun bm!518127 () Bool)

(assert (=> bm!518127 (= call!518132 call!518130)))

(declare-fun b!6193977 () Bool)

(assert (=> b!6193977 (= e!3772128 call!518131)))

(assert (= (and d!1941959 (not res!2562223)) b!6193972))

(assert (= (and b!6193972 c!1117775) b!6193976))

(assert (= (and b!6193972 (not c!1117775)) b!6193970))

(assert (= (and b!6193976 res!2562221) b!6193971))

(assert (= (and b!6193970 c!1117776) b!6193975))

(assert (= (and b!6193970 (not c!1117776)) b!6193974))

(assert (= (and b!6193975 res!2562220) b!6193977))

(assert (= (and b!6193974 (not res!2562222)) b!6193973))

(assert (= (and b!6193973 res!2562224) b!6193969))

(assert (= (or b!6193977 b!6193969) bm!518126))

(assert (= (or b!6193975 b!6193973) bm!518127))

(assert (= (or b!6193971 bm!518127) bm!518125))

(declare-fun m!7027952 () Bool)

(assert (=> bm!518125 m!7027952))

(declare-fun m!7027954 () Bool)

(assert (=> bm!518126 m!7027954))

(declare-fun m!7027956 () Bool)

(assert (=> b!6193976 m!7027956))

(assert (=> d!1941659 d!1941959))

(declare-fun d!1941963 () Bool)

(declare-fun res!2562225 () Bool)

(declare-fun e!3772132 () Bool)

(assert (=> d!1941963 (=> res!2562225 e!3772132)))

(assert (=> d!1941963 (= res!2562225 ((_ is Nil!64568) lt!2341202))))

(assert (=> d!1941963 (= (forall!15247 lt!2341202 lambda!338256) e!3772132)))

(declare-fun b!6193978 () Bool)

(declare-fun e!3772133 () Bool)

(assert (=> b!6193978 (= e!3772132 e!3772133)))

(declare-fun res!2562226 () Bool)

(assert (=> b!6193978 (=> (not res!2562226) (not e!3772133))))

(assert (=> b!6193978 (= res!2562226 (dynLambda!25464 lambda!338256 (h!71016 lt!2341202)))))

(declare-fun b!6193979 () Bool)

(assert (=> b!6193979 (= e!3772133 (forall!15247 (t!378204 lt!2341202) lambda!338256))))

(assert (= (and d!1941963 (not res!2562225)) b!6193978))

(assert (= (and b!6193978 res!2562226) b!6193979))

(declare-fun b_lambda!235643 () Bool)

(assert (=> (not b_lambda!235643) (not b!6193978)))

(declare-fun m!7027960 () Bool)

(assert (=> b!6193978 m!7027960))

(declare-fun m!7027962 () Bool)

(assert (=> b!6193979 m!7027962))

(assert (=> d!1941659 d!1941963))

(declare-fun bs!1536809 () Bool)

(declare-fun d!1941967 () Bool)

(assert (= bs!1536809 (and d!1941967 d!1941673)))

(declare-fun lambda!338298 () Int)

(assert (=> bs!1536809 (= lambda!338298 lambda!338262)))

(declare-fun bs!1536811 () Bool)

(assert (= bs!1536811 (and d!1941967 d!1941667)))

(assert (=> bs!1536811 (= lambda!338298 lambda!338257)))

(declare-fun bs!1536812 () Bool)

(assert (= bs!1536812 (and d!1941967 d!1941827)))

(assert (=> bs!1536812 (= lambda!338298 lambda!338284)))

(declare-fun bs!1536813 () Bool)

(assert (= bs!1536813 (and d!1941967 d!1941617)))

(assert (=> bs!1536813 (= lambda!338298 lambda!338252)))

(declare-fun bs!1536814 () Bool)

(assert (= bs!1536814 (and d!1941967 d!1941925)))

(assert (=> bs!1536814 (= lambda!338298 lambda!338293)))

(declare-fun bs!1536815 () Bool)

(assert (= bs!1536815 (and d!1941967 d!1941619)))

(assert (=> bs!1536815 (= lambda!338298 lambda!338253)))

(declare-fun bs!1536816 () Bool)

(assert (= bs!1536816 (and d!1941967 d!1941659)))

(assert (=> bs!1536816 (= lambda!338298 lambda!338256)))

(declare-fun bs!1536817 () Bool)

(assert (= bs!1536817 (and d!1941967 d!1941615)))

(assert (=> bs!1536817 (= lambda!338298 lambda!338249)))

(declare-fun bs!1536818 () Bool)

(assert (= bs!1536818 (and d!1941967 d!1941879)))

(assert (=> bs!1536818 (= lambda!338298 lambda!338292)))

(declare-fun bs!1536819 () Bool)

(assert (= bs!1536819 (and d!1941967 d!1941595)))

(assert (=> bs!1536819 (= lambda!338298 lambda!338245)))

(declare-fun bs!1536820 () Bool)

(assert (= bs!1536820 (and d!1941967 d!1941685)))

(assert (=> bs!1536820 (= lambda!338298 lambda!338263)))

(declare-fun b!6193980 () Bool)

(declare-fun e!3772139 () Regex!16131)

(assert (=> b!6193980 (= e!3772139 (Concat!24976 (h!71016 (t!378204 lt!2341202)) (generalisedConcat!1728 (t!378204 (t!378204 lt!2341202)))))))

(declare-fun b!6193982 () Bool)

(declare-fun e!3772134 () Regex!16131)

(assert (=> b!6193982 (= e!3772134 e!3772139)))

(declare-fun c!1117779 () Bool)

(assert (=> b!6193982 (= c!1117779 ((_ is Cons!64568) (t!378204 lt!2341202)))))

(declare-fun b!6193983 () Bool)

(declare-fun e!3772136 () Bool)

(declare-fun lt!2341376 () Regex!16131)

(assert (=> b!6193983 (= e!3772136 (isEmptyExpr!1543 lt!2341376))))

(declare-fun b!6193984 () Bool)

(assert (=> b!6193984 (= e!3772139 EmptyExpr!16131)))

(declare-fun b!6193985 () Bool)

(assert (=> b!6193985 (= e!3772134 (h!71016 (t!378204 lt!2341202)))))

(declare-fun b!6193986 () Bool)

(declare-fun e!3772137 () Bool)

(assert (=> b!6193986 (= e!3772136 e!3772137)))

(declare-fun c!1117778 () Bool)

(assert (=> b!6193986 (= c!1117778 (isEmpty!36555 (tail!11860 (t!378204 lt!2341202))))))

(declare-fun b!6193987 () Bool)

(declare-fun e!3772135 () Bool)

(assert (=> b!6193987 (= e!3772135 (isEmpty!36555 (t!378204 (t!378204 lt!2341202))))))

(declare-fun b!6193981 () Bool)

(assert (=> b!6193981 (= e!3772137 (isConcat!1066 lt!2341376))))

(declare-fun e!3772138 () Bool)

(assert (=> d!1941967 e!3772138))

(declare-fun res!2562228 () Bool)

(assert (=> d!1941967 (=> (not res!2562228) (not e!3772138))))

(assert (=> d!1941967 (= res!2562228 (validRegex!7867 lt!2341376))))

(assert (=> d!1941967 (= lt!2341376 e!3772134)))

(declare-fun c!1117777 () Bool)

(assert (=> d!1941967 (= c!1117777 e!3772135)))

(declare-fun res!2562227 () Bool)

(assert (=> d!1941967 (=> (not res!2562227) (not e!3772135))))

(assert (=> d!1941967 (= res!2562227 ((_ is Cons!64568) (t!378204 lt!2341202)))))

(assert (=> d!1941967 (forall!15247 (t!378204 lt!2341202) lambda!338298)))

(assert (=> d!1941967 (= (generalisedConcat!1728 (t!378204 lt!2341202)) lt!2341376)))

(declare-fun b!6193988 () Bool)

(assert (=> b!6193988 (= e!3772137 (= lt!2341376 (head!12775 (t!378204 lt!2341202))))))

(declare-fun b!6193989 () Bool)

(assert (=> b!6193989 (= e!3772138 e!3772136)))

(declare-fun c!1117780 () Bool)

(assert (=> b!6193989 (= c!1117780 (isEmpty!36555 (t!378204 lt!2341202)))))

(assert (= (and d!1941967 res!2562227) b!6193987))

(assert (= (and d!1941967 c!1117777) b!6193985))

(assert (= (and d!1941967 (not c!1117777)) b!6193982))

(assert (= (and b!6193982 c!1117779) b!6193980))

(assert (= (and b!6193982 (not c!1117779)) b!6193984))

(assert (= (and d!1941967 res!2562228) b!6193989))

(assert (= (and b!6193989 c!1117780) b!6193983))

(assert (= (and b!6193989 (not c!1117780)) b!6193986))

(assert (= (and b!6193986 c!1117778) b!6193988))

(assert (= (and b!6193986 (not c!1117778)) b!6193981))

(declare-fun m!7027972 () Bool)

(assert (=> b!6193987 m!7027972))

(declare-fun m!7027974 () Bool)

(assert (=> b!6193980 m!7027974))

(declare-fun m!7027976 () Bool)

(assert (=> b!6193986 m!7027976))

(assert (=> b!6193986 m!7027976))

(declare-fun m!7027978 () Bool)

(assert (=> b!6193986 m!7027978))

(declare-fun m!7027980 () Bool)

(assert (=> b!6193981 m!7027980))

(declare-fun m!7027982 () Bool)

(assert (=> d!1941967 m!7027982))

(declare-fun m!7027984 () Bool)

(assert (=> d!1941967 m!7027984))

(declare-fun m!7027986 () Bool)

(assert (=> b!6193983 m!7027986))

(declare-fun m!7027988 () Bool)

(assert (=> b!6193988 m!7027988))

(assert (=> b!6193989 m!7027260))

(assert (=> b!6193282 d!1941967))

(assert (=> d!1941663 d!1941653))

(assert (=> d!1941663 d!1941591))

(declare-fun d!1941973 () Bool)

(assert (=> d!1941973 (= (matchR!8314 lt!2341177 s!2326) (matchZipper!2143 lt!2341186 s!2326))))

(assert (=> d!1941973 true))

(declare-fun _$44!1571 () Unit!157827)

(assert (=> d!1941973 (= (choose!46015 lt!2341186 lt!2341181 lt!2341177 s!2326) _$44!1571)))

(declare-fun bs!1536821 () Bool)

(assert (= bs!1536821 d!1941973))

(assert (=> bs!1536821 m!7026518))

(assert (=> bs!1536821 m!7026488))

(assert (=> d!1941663 d!1941973))

(assert (=> d!1941663 d!1941853))

(declare-fun bs!1536822 () Bool)

(declare-fun d!1941975 () Bool)

(assert (= bs!1536822 (and d!1941975 d!1941855)))

(declare-fun lambda!338301 () Int)

(assert (=> bs!1536822 (= lambda!338301 lambda!338289)))

(declare-fun bs!1536823 () Bool)

(assert (= bs!1536823 (and d!1941975 d!1941871)))

(assert (=> bs!1536823 (= lambda!338301 lambda!338291)))

(declare-fun bs!1536824 () Bool)

(assert (= bs!1536824 (and d!1941975 d!1941929)))

(assert (=> bs!1536824 (= lambda!338301 lambda!338294)))

(assert (=> d!1941975 (= (nullableZipper!1907 lt!2341186) (exists!2468 lt!2341186 lambda!338301))))

(declare-fun bs!1536825 () Bool)

(assert (= bs!1536825 d!1941975))

(declare-fun m!7027990 () Bool)

(assert (=> bs!1536825 m!7027990))

(assert (=> b!6193064 d!1941975))

(assert (=> b!6193388 d!1941475))

(declare-fun d!1941977 () Bool)

(assert (=> d!1941977 (= (nullable!6124 (h!71016 (exprs!6015 lt!2341203))) (nullableFct!2082 (h!71016 (exprs!6015 lt!2341203))))))

(declare-fun bs!1536826 () Bool)

(assert (= bs!1536826 d!1941977))

(declare-fun m!7027992 () Bool)

(assert (=> bs!1536826 m!7027992))

(assert (=> b!6193051 d!1941977))

(assert (=> d!1941647 d!1941865))

(assert (=> bs!1536635 d!1941577))

(declare-fun d!1941979 () Bool)

(assert (=> d!1941979 (= (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (nullableFct!2082 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(declare-fun bs!1536827 () Bool)

(assert (= bs!1536827 d!1941979))

(declare-fun m!7027994 () Bool)

(assert (=> bs!1536827 m!7027994))

(assert (=> b!6193214 d!1941979))

(assert (=> b!6193233 d!1941477))

(declare-fun d!1941981 () Bool)

(assert (=> d!1941981 (= (isEmpty!36555 (t!378204 lt!2341202)) ((_ is Nil!64568) (t!378204 lt!2341202)))))

(assert (=> b!6193289 d!1941981))

(declare-fun b!6194003 () Bool)

(declare-fun e!3772149 () (InoxSet Context!11030))

(declare-fun call!518136 () (InoxSet Context!11030))

(assert (=> b!6194003 (= e!3772149 call!518136)))

(declare-fun b!6194004 () Bool)

(declare-fun e!3772150 () (InoxSet Context!11030))

(assert (=> b!6194004 (= e!3772150 e!3772149)))

(declare-fun c!1117786 () Bool)

(assert (=> b!6194004 (= c!1117786 ((_ is Concat!24976) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194005 () Bool)

(declare-fun e!3772151 () (InoxSet Context!11030))

(declare-fun call!518137 () (InoxSet Context!11030))

(declare-fun call!518139 () (InoxSet Context!11030))

(assert (=> b!6194005 (= e!3772151 ((_ map or) call!518137 call!518139))))

(declare-fun b!6194006 () Bool)

(declare-fun e!3772152 () (InoxSet Context!11030))

(assert (=> b!6194006 (= e!3772152 ((as const (Array Context!11030 Bool)) false))))

(declare-fun call!518140 () List!64692)

(declare-fun c!1117783 () Bool)

(declare-fun bm!518131 () Bool)

(assert (=> bm!518131 (= call!518139 (derivationStepZipperDown!1379 (ite c!1117783 (regTwo!32775 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (regOne!32774 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))) (ite c!1117783 (ite c!1117515 lt!2341183 (Context!11031 call!517973)) (Context!11031 call!518140)) (h!71018 s!2326)))))

(declare-fun b!6194007 () Bool)

(declare-fun e!3772154 () Bool)

(assert (=> b!6194007 (= e!3772154 (nullable!6124 (regOne!32774 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(declare-fun bm!518132 () Bool)

(declare-fun c!1117784 () Bool)

(assert (=> bm!518132 (= call!518140 ($colon$colon!2002 (exprs!6015 (ite c!1117515 lt!2341183 (Context!11031 call!517973))) (ite (or c!1117784 c!1117786) (regTwo!32774 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))))

(declare-fun bm!518133 () Bool)

(declare-fun call!518138 () (InoxSet Context!11030))

(assert (=> bm!518133 (= call!518136 call!518138)))

(declare-fun bm!518134 () Bool)

(assert (=> bm!518134 (= call!518138 call!518137)))

(declare-fun call!518141 () List!64692)

(declare-fun bm!518135 () Bool)

(assert (=> bm!518135 (= call!518137 (derivationStepZipperDown!1379 (ite c!1117783 (regOne!32775 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (ite c!1117784 (regTwo!32774 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (ite c!1117786 (regOne!32774 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (reg!16460 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))))))) (ite (or c!1117783 c!1117784) (ite c!1117515 lt!2341183 (Context!11031 call!517973)) (Context!11031 call!518141)) (h!71018 s!2326)))))

(declare-fun b!6194008 () Bool)

(assert (=> b!6194008 (= c!1117784 e!3772154)))

(declare-fun res!2562238 () Bool)

(assert (=> b!6194008 (=> (not res!2562238) (not e!3772154))))

(assert (=> b!6194008 (= res!2562238 ((_ is Concat!24976) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6194008 (= e!3772151 e!3772150)))

(declare-fun e!3772153 () (InoxSet Context!11030))

(declare-fun b!6194009 () Bool)

(assert (=> b!6194009 (= e!3772153 (store ((as const (Array Context!11030 Bool)) false) (ite c!1117515 lt!2341183 (Context!11031 call!517973)) true))))

(declare-fun b!6194010 () Bool)

(assert (=> b!6194010 (= e!3772152 call!518136)))

(declare-fun c!1117785 () Bool)

(declare-fun d!1941983 () Bool)

(assert (=> d!1941983 (= c!1117785 (and ((_ is ElementMatch!16131) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (= (c!1117312 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))) (h!71018 s!2326))))))

(assert (=> d!1941983 (= (derivationStepZipperDown!1379 (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292)))) (ite c!1117515 lt!2341183 (Context!11031 call!517973)) (h!71018 s!2326)) e!3772153)))

(declare-fun bm!518136 () Bool)

(assert (=> bm!518136 (= call!518141 call!518140)))

(declare-fun b!6194011 () Bool)

(declare-fun c!1117787 () Bool)

(assert (=> b!6194011 (= c!1117787 ((_ is Star!16131) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6194011 (= e!3772149 e!3772152)))

(declare-fun b!6194012 () Bool)

(assert (=> b!6194012 (= e!3772153 e!3772151)))

(assert (=> b!6194012 (= c!1117783 ((_ is Union!16131) (ite c!1117515 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194013 () Bool)

(assert (=> b!6194013 (= e!3772150 ((_ map or) call!518139 call!518138))))

(assert (= (and d!1941983 c!1117785) b!6194009))

(assert (= (and d!1941983 (not c!1117785)) b!6194012))

(assert (= (and b!6194012 c!1117783) b!6194005))

(assert (= (and b!6194012 (not c!1117783)) b!6194008))

(assert (= (and b!6194008 res!2562238) b!6194007))

(assert (= (and b!6194008 c!1117784) b!6194013))

(assert (= (and b!6194008 (not c!1117784)) b!6194004))

(assert (= (and b!6194004 c!1117786) b!6194003))

(assert (= (and b!6194004 (not c!1117786)) b!6194011))

(assert (= (and b!6194011 c!1117787) b!6194010))

(assert (= (and b!6194011 (not c!1117787)) b!6194006))

(assert (= (or b!6194003 b!6194010) bm!518136))

(assert (= (or b!6194003 b!6194010) bm!518133))

(assert (= (or b!6194013 bm!518136) bm!518132))

(assert (= (or b!6194013 bm!518133) bm!518134))

(assert (= (or b!6194005 b!6194013) bm!518131))

(assert (= (or b!6194005 bm!518134) bm!518135))

(declare-fun m!7027996 () Bool)

(assert (=> b!6194007 m!7027996))

(declare-fun m!7027998 () Bool)

(assert (=> bm!518135 m!7027998))

(declare-fun m!7028000 () Bool)

(assert (=> bm!518131 m!7028000))

(declare-fun m!7028002 () Bool)

(assert (=> bm!518132 m!7028002))

(declare-fun m!7028004 () Bool)

(assert (=> b!6194009 m!7028004))

(assert (=> bm!517964 d!1941983))

(declare-fun b!6194014 () Bool)

(declare-fun e!3772156 () Bool)

(declare-fun call!518143 () Bool)

(assert (=> b!6194014 (= e!3772156 call!518143)))

(declare-fun b!6194015 () Bool)

(declare-fun e!3772160 () Bool)

(declare-fun e!3772161 () Bool)

(assert (=> b!6194015 (= e!3772160 e!3772161)))

(declare-fun c!1117789 () Bool)

(assert (=> b!6194015 (= c!1117789 ((_ is Union!16131) (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))

(declare-fun b!6194016 () Bool)

(declare-fun e!3772155 () Bool)

(declare-fun call!518142 () Bool)

(assert (=> b!6194016 (= e!3772155 call!518142)))

(declare-fun b!6194017 () Bool)

(declare-fun e!3772159 () Bool)

(assert (=> b!6194017 (= e!3772159 e!3772160)))

(declare-fun c!1117788 () Bool)

(assert (=> b!6194017 (= c!1117788 ((_ is Star!16131) (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))

(declare-fun d!1941985 () Bool)

(declare-fun res!2562242 () Bool)

(assert (=> d!1941985 (=> res!2562242 e!3772159)))

(assert (=> d!1941985 (= res!2562242 ((_ is ElementMatch!16131) (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))

(assert (=> d!1941985 (= (validRegex!7867 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))) e!3772159)))

(declare-fun bm!518137 () Bool)

(assert (=> bm!518137 (= call!518142 (validRegex!7867 (ite c!1117788 (reg!16460 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))) (ite c!1117789 (regOne!32775 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))) (regOne!32774 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292)))))))))

(declare-fun bm!518138 () Bool)

(assert (=> bm!518138 (= call!518143 (validRegex!7867 (ite c!1117789 (regTwo!32775 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))) (regTwo!32774 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))))

(declare-fun b!6194018 () Bool)

(declare-fun e!3772157 () Bool)

(assert (=> b!6194018 (= e!3772157 e!3772156)))

(declare-fun res!2562243 () Bool)

(assert (=> b!6194018 (=> (not res!2562243) (not e!3772156))))

(declare-fun call!518144 () Bool)

(assert (=> b!6194018 (= res!2562243 call!518144)))

(declare-fun b!6194019 () Bool)

(declare-fun res!2562241 () Bool)

(assert (=> b!6194019 (=> res!2562241 e!3772157)))

(assert (=> b!6194019 (= res!2562241 (not ((_ is Concat!24976) (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292)))))))

(assert (=> b!6194019 (= e!3772161 e!3772157)))

(declare-fun b!6194020 () Bool)

(declare-fun res!2562239 () Bool)

(declare-fun e!3772158 () Bool)

(assert (=> b!6194020 (=> (not res!2562239) (not e!3772158))))

(assert (=> b!6194020 (= res!2562239 call!518144)))

(assert (=> b!6194020 (= e!3772161 e!3772158)))

(declare-fun b!6194021 () Bool)

(assert (=> b!6194021 (= e!3772160 e!3772155)))

(declare-fun res!2562240 () Bool)

(assert (=> b!6194021 (= res!2562240 (not (nullable!6124 (reg!16460 (ite c!1117597 (regTwo!32775 r!7292) (regTwo!32774 r!7292))))))))

(assert (=> b!6194021 (=> (not res!2562240) (not e!3772155))))

(declare-fun bm!518139 () Bool)

(assert (=> bm!518139 (= call!518144 call!518142)))

(declare-fun b!6194022 () Bool)

(assert (=> b!6194022 (= e!3772158 call!518143)))

(assert (= (and d!1941985 (not res!2562242)) b!6194017))

(assert (= (and b!6194017 c!1117788) b!6194021))

(assert (= (and b!6194017 (not c!1117788)) b!6194015))

(assert (= (and b!6194021 res!2562240) b!6194016))

(assert (= (and b!6194015 c!1117789) b!6194020))

(assert (= (and b!6194015 (not c!1117789)) b!6194019))

(assert (= (and b!6194020 res!2562239) b!6194022))

(assert (= (and b!6194019 (not res!2562241)) b!6194018))

(assert (= (and b!6194018 res!2562243) b!6194014))

(assert (= (or b!6194022 b!6194014) bm!518138))

(assert (= (or b!6194020 b!6194018) bm!518139))

(assert (= (or b!6194016 bm!518139) bm!518137))

(declare-fun m!7028006 () Bool)

(assert (=> bm!518137 m!7028006))

(declare-fun m!7028008 () Bool)

(assert (=> bm!518138 m!7028008))

(declare-fun m!7028010 () Bool)

(assert (=> b!6194021 m!7028010))

(assert (=> bm!517998 d!1941985))

(declare-fun b!6194023 () Bool)

(declare-fun e!3772162 () (InoxSet Context!11030))

(declare-fun call!518145 () (InoxSet Context!11030))

(assert (=> b!6194023 (= e!3772162 call!518145)))

(declare-fun b!6194024 () Bool)

(assert (=> b!6194024 (= e!3772162 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1941987 () Bool)

(declare-fun c!1117790 () Bool)

(declare-fun e!3772164 () Bool)

(assert (=> d!1941987 (= c!1117790 e!3772164)))

(declare-fun res!2562244 () Bool)

(assert (=> d!1941987 (=> (not res!2562244) (not e!3772164))))

(assert (=> d!1941987 (= res!2562244 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179))))))))

(declare-fun e!3772163 () (InoxSet Context!11030))

(assert (=> d!1941987 (= (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341179))) (h!71018 s!2326)) e!3772163)))

(declare-fun b!6194025 () Bool)

(assert (=> b!6194025 (= e!3772163 e!3772162)))

(declare-fun c!1117791 () Bool)

(assert (=> b!6194025 (= c!1117791 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179))))))))

(declare-fun b!6194026 () Bool)

(assert (=> b!6194026 (= e!3772163 ((_ map or) call!518145 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179)))))) (h!71018 s!2326))))))

(declare-fun bm!518140 () Bool)

(assert (=> bm!518140 (= call!518145 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179)))))) (h!71018 s!2326)))))

(declare-fun b!6194027 () Bool)

(assert (=> b!6194027 (= e!3772164 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341179)))))))))

(assert (= (and d!1941987 res!2562244) b!6194027))

(assert (= (and d!1941987 c!1117790) b!6194026))

(assert (= (and d!1941987 (not c!1117790)) b!6194025))

(assert (= (and b!6194025 c!1117791) b!6194023))

(assert (= (and b!6194025 (not c!1117791)) b!6194024))

(assert (= (or b!6194026 b!6194023) bm!518140))

(declare-fun m!7028012 () Bool)

(assert (=> b!6194026 m!7028012))

(declare-fun m!7028014 () Bool)

(assert (=> bm!518140 m!7028014))

(declare-fun m!7028016 () Bool)

(assert (=> b!6194027 m!7028016))

(assert (=> b!6193034 d!1941987))

(declare-fun b!6194069 () Bool)

(declare-fun e!3772194 () Bool)

(declare-fun e!3772191 () Bool)

(assert (=> b!6194069 (= e!3772194 e!3772191)))

(declare-fun res!2562266 () Bool)

(declare-fun call!518158 () Bool)

(assert (=> b!6194069 (= res!2562266 call!518158)))

(assert (=> b!6194069 (=> res!2562266 e!3772191)))

(declare-fun b!6194070 () Bool)

(declare-fun call!518157 () Bool)

(assert (=> b!6194070 (= e!3772191 call!518157)))

(declare-fun bm!518152 () Bool)

(declare-fun c!1117803 () Bool)

(assert (=> bm!518152 (= call!518158 (nullable!6124 (ite c!1117803 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun d!1941989 () Bool)

(declare-fun res!2562267 () Bool)

(declare-fun e!3772193 () Bool)

(assert (=> d!1941989 (=> res!2562267 e!3772193)))

(assert (=> d!1941989 (= res!2562267 ((_ is EmptyExpr!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> d!1941989 (= (nullableFct!2082 (h!71016 (exprs!6015 (h!71017 zl!343)))) e!3772193)))

(declare-fun bm!518153 () Bool)

(assert (=> bm!518153 (= call!518157 (nullable!6124 (ite c!1117803 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6194071 () Bool)

(declare-fun e!3772195 () Bool)

(assert (=> b!6194071 (= e!3772195 e!3772194)))

(assert (=> b!6194071 (= c!1117803 ((_ is Union!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6194072 () Bool)

(declare-fun e!3772196 () Bool)

(assert (=> b!6194072 (= e!3772193 e!3772196)))

(declare-fun res!2562265 () Bool)

(assert (=> b!6194072 (=> (not res!2562265) (not e!3772196))))

(assert (=> b!6194072 (= res!2562265 (and (not ((_ is EmptyLang!16131) (h!71016 (exprs!6015 (h!71017 zl!343))))) (not ((_ is ElementMatch!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6194073 () Bool)

(assert (=> b!6194073 (= e!3772196 e!3772195)))

(declare-fun res!2562264 () Bool)

(assert (=> b!6194073 (=> res!2562264 e!3772195)))

(assert (=> b!6194073 (= res!2562264 ((_ is Star!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6194074 () Bool)

(declare-fun e!3772192 () Bool)

(assert (=> b!6194074 (= e!3772194 e!3772192)))

(declare-fun res!2562268 () Bool)

(assert (=> b!6194074 (= res!2562268 call!518158)))

(assert (=> b!6194074 (=> (not res!2562268) (not e!3772192))))

(declare-fun b!6194075 () Bool)

(assert (=> b!6194075 (= e!3772192 call!518157)))

(assert (= (and d!1941989 (not res!2562267)) b!6194072))

(assert (= (and b!6194072 res!2562265) b!6194073))

(assert (= (and b!6194073 (not res!2562264)) b!6194071))

(assert (= (and b!6194071 c!1117803) b!6194069))

(assert (= (and b!6194071 (not c!1117803)) b!6194074))

(assert (= (and b!6194069 (not res!2562266)) b!6194070))

(assert (= (and b!6194074 res!2562268) b!6194075))

(assert (= (or b!6194070 b!6194075) bm!518153))

(assert (= (or b!6194069 b!6194074) bm!518152))

(declare-fun m!7028050 () Bool)

(assert (=> bm!518152 m!7028050))

(declare-fun m!7028052 () Bool)

(assert (=> bm!518153 m!7028052))

(assert (=> d!1941623 d!1941989))

(declare-fun d!1942007 () Bool)

(assert (=> d!1942007 (= (isEmpty!36555 (tail!11860 (t!378204 (exprs!6015 (h!71017 zl!343))))) ((_ is Nil!64568) (tail!11860 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(assert (=> b!6193344 d!1942007))

(declare-fun d!1942009 () Bool)

(assert (=> d!1942009 (= (tail!11860 (t!378204 (exprs!6015 (h!71017 zl!343)))) (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6193344 d!1942009))

(assert (=> b!6193297 d!1941811))

(assert (=> b!6193297 d!1941813))

(declare-fun d!1942011 () Bool)

(declare-fun c!1117804 () Bool)

(assert (=> d!1942011 (= c!1117804 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3772197 () Bool)

(assert (=> d!1942011 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341188 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3772197)))

(declare-fun b!6194076 () Bool)

(assert (=> b!6194076 (= e!3772197 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341188 (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6194077 () Bool)

(assert (=> b!6194077 (= e!3772197 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341188 (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1942011 c!1117804) b!6194076))

(assert (= (and d!1942011 (not c!1117804)) b!6194077))

(assert (=> d!1942011 m!7026810))

(assert (=> d!1942011 m!7027518))

(assert (=> b!6194076 m!7027206))

(declare-fun m!7028054 () Bool)

(assert (=> b!6194076 m!7028054))

(assert (=> b!6194077 m!7026810))

(assert (=> b!6194077 m!7027522))

(assert (=> b!6194077 m!7027206))

(assert (=> b!6194077 m!7027522))

(declare-fun m!7028056 () Bool)

(assert (=> b!6194077 m!7028056))

(assert (=> b!6194077 m!7026810))

(assert (=> b!6194077 m!7027526))

(assert (=> b!6194077 m!7028056))

(assert (=> b!6194077 m!7027526))

(declare-fun m!7028058 () Bool)

(assert (=> b!6194077 m!7028058))

(assert (=> b!6193235 d!1942011))

(declare-fun bs!1536854 () Bool)

(declare-fun d!1942013 () Bool)

(assert (= bs!1536854 (and d!1942013 d!1941795)))

(declare-fun lambda!338304 () Int)

(assert (=> bs!1536854 (= lambda!338304 lambda!338282)))

(declare-fun bs!1536855 () Bool)

(assert (= bs!1536855 (and d!1942013 b!6192421)))

(assert (=> bs!1536855 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338304 lambda!338193))))

(declare-fun bs!1536856 () Bool)

(assert (= bs!1536856 (and d!1942013 d!1941861)))

(assert (=> bs!1536856 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338304 lambda!338290))))

(declare-fun bs!1536857 () Bool)

(assert (= bs!1536857 (and d!1942013 d!1941851)))

(assert (=> bs!1536857 (= lambda!338304 lambda!338286)))

(declare-fun bs!1536858 () Bool)

(assert (= bs!1536858 (and d!1942013 d!1941757)))

(assert (=> bs!1536858 (= lambda!338304 lambda!338275)))

(assert (=> d!1942013 true))

(assert (=> d!1942013 (= (derivationStepZipper!2099 lt!2341188 (head!12774 (t!378206 s!2326))) (flatMap!1636 lt!2341188 lambda!338304))))

(declare-fun bs!1536859 () Bool)

(assert (= bs!1536859 d!1942013))

(declare-fun m!7028060 () Bool)

(assert (=> bs!1536859 m!7028060))

(assert (=> b!6193235 d!1942013))

(assert (=> b!6193235 d!1941759))

(assert (=> b!6193235 d!1941763))

(declare-fun d!1942015 () Bool)

(assert (=> d!1942015 true))

(declare-fun setRes!42024 () Bool)

(assert (=> d!1942015 setRes!42024))

(declare-fun condSetEmpty!42024 () Bool)

(declare-fun res!2562272 () (InoxSet Context!11030))

(assert (=> d!1942015 (= condSetEmpty!42024 (= res!2562272 ((as const (Array Context!11030 Bool)) false)))))

(assert (=> d!1942015 (= (choose!46008 lt!2341186 lambda!338193) res!2562272)))

(declare-fun setIsEmpty!42024 () Bool)

(assert (=> setIsEmpty!42024 setRes!42024))

(declare-fun e!3772201 () Bool)

(declare-fun setNonEmpty!42024 () Bool)

(declare-fun setElem!42024 () Context!11030)

(declare-fun tp!1728026 () Bool)

(assert (=> setNonEmpty!42024 (= setRes!42024 (and tp!1728026 (inv!83574 setElem!42024) e!3772201))))

(declare-fun setRest!42024 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42024 (= res!2562272 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42024 true) setRest!42024))))

(declare-fun b!6194081 () Bool)

(declare-fun tp!1728025 () Bool)

(assert (=> b!6194081 (= e!3772201 tp!1728025)))

(assert (= (and d!1942015 condSetEmpty!42024) setIsEmpty!42024))

(assert (= (and d!1942015 (not condSetEmpty!42024)) setNonEmpty!42024))

(assert (= setNonEmpty!42024 b!6194081))

(declare-fun m!7028064 () Bool)

(assert (=> setNonEmpty!42024 m!7028064))

(assert (=> d!1941575 d!1942015))

(assert (=> bm!517987 d!1941747))

(declare-fun d!1942019 () Bool)

(declare-fun c!1117807 () Bool)

(assert (=> d!1942019 (= c!1117807 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3772205 () Bool)

(assert (=> d!1942019 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341182 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3772205)))

(declare-fun b!6194087 () Bool)

(assert (=> b!6194087 (= e!3772205 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341182 (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6194088 () Bool)

(assert (=> b!6194088 (= e!3772205 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341182 (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1942019 c!1117807) b!6194087))

(assert (= (and d!1942019 (not c!1117807)) b!6194088))

(assert (=> d!1942019 m!7026810))

(assert (=> d!1942019 m!7027518))

(assert (=> b!6194087 m!7027238))

(declare-fun m!7028068 () Bool)

(assert (=> b!6194087 m!7028068))

(assert (=> b!6194088 m!7026810))

(assert (=> b!6194088 m!7027522))

(assert (=> b!6194088 m!7027238))

(assert (=> b!6194088 m!7027522))

(declare-fun m!7028074 () Bool)

(assert (=> b!6194088 m!7028074))

(assert (=> b!6194088 m!7026810))

(assert (=> b!6194088 m!7027526))

(assert (=> b!6194088 m!7028074))

(assert (=> b!6194088 m!7027526))

(declare-fun m!7028076 () Bool)

(assert (=> b!6194088 m!7028076))

(assert (=> b!6193246 d!1942019))

(declare-fun bs!1536860 () Bool)

(declare-fun d!1942023 () Bool)

(assert (= bs!1536860 (and d!1942023 d!1941795)))

(declare-fun lambda!338305 () Int)

(assert (=> bs!1536860 (= lambda!338305 lambda!338282)))

(declare-fun bs!1536861 () Bool)

(assert (= bs!1536861 (and d!1942023 b!6192421)))

(assert (=> bs!1536861 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338305 lambda!338193))))

(declare-fun bs!1536862 () Bool)

(assert (= bs!1536862 (and d!1942023 d!1941861)))

(assert (=> bs!1536862 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338305 lambda!338290))))

(declare-fun bs!1536863 () Bool)

(assert (= bs!1536863 (and d!1942023 d!1941851)))

(assert (=> bs!1536863 (= lambda!338305 lambda!338286)))

(declare-fun bs!1536864 () Bool)

(assert (= bs!1536864 (and d!1942023 d!1941757)))

(assert (=> bs!1536864 (= lambda!338305 lambda!338275)))

(declare-fun bs!1536865 () Bool)

(assert (= bs!1536865 (and d!1942023 d!1942013)))

(assert (=> bs!1536865 (= lambda!338305 lambda!338304)))

(assert (=> d!1942023 true))

(assert (=> d!1942023 (= (derivationStepZipper!2099 lt!2341182 (head!12774 (t!378206 s!2326))) (flatMap!1636 lt!2341182 lambda!338305))))

(declare-fun bs!1536866 () Bool)

(assert (= bs!1536866 d!1942023))

(declare-fun m!7028078 () Bool)

(assert (=> bs!1536866 m!7028078))

(assert (=> b!6193246 d!1942023))

(assert (=> b!6193246 d!1941759))

(assert (=> b!6193246 d!1941763))

(declare-fun b!6194089 () Bool)

(declare-fun e!3772206 () (InoxSet Context!11030))

(declare-fun call!518160 () (InoxSet Context!11030))

(assert (=> b!6194089 (= e!3772206 call!518160)))

(declare-fun b!6194090 () Bool)

(declare-fun e!3772207 () (InoxSet Context!11030))

(assert (=> b!6194090 (= e!3772207 e!3772206)))

(declare-fun c!1117811 () Bool)

(assert (=> b!6194090 (= c!1117811 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341203))))))

(declare-fun b!6194091 () Bool)

(declare-fun e!3772208 () (InoxSet Context!11030))

(declare-fun call!518161 () (InoxSet Context!11030))

(declare-fun call!518163 () (InoxSet Context!11030))

(assert (=> b!6194091 (= e!3772208 ((_ map or) call!518161 call!518163))))

(declare-fun b!6194092 () Bool)

(declare-fun e!3772209 () (InoxSet Context!11030))

(assert (=> b!6194092 (= e!3772209 ((as const (Array Context!11030 Bool)) false))))

(declare-fun call!518164 () List!64692)

(declare-fun c!1117808 () Bool)

(declare-fun bm!518155 () Bool)

(assert (=> bm!518155 (= call!518163 (derivationStepZipperDown!1379 (ite c!1117808 (regTwo!32775 (h!71016 (exprs!6015 lt!2341203))) (regOne!32774 (h!71016 (exprs!6015 lt!2341203)))) (ite c!1117808 (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (Context!11031 call!518164)) (h!71018 s!2326)))))

(declare-fun b!6194093 () Bool)

(declare-fun e!3772211 () Bool)

(assert (=> b!6194093 (= e!3772211 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 lt!2341203)))))))

(declare-fun bm!518156 () Bool)

(declare-fun c!1117809 () Bool)

(assert (=> bm!518156 (= call!518164 ($colon$colon!2002 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203)))) (ite (or c!1117809 c!1117811) (regTwo!32774 (h!71016 (exprs!6015 lt!2341203))) (h!71016 (exprs!6015 lt!2341203)))))))

(declare-fun bm!518157 () Bool)

(declare-fun call!518162 () (InoxSet Context!11030))

(assert (=> bm!518157 (= call!518160 call!518162)))

(declare-fun bm!518158 () Bool)

(assert (=> bm!518158 (= call!518162 call!518161)))

(declare-fun call!518165 () List!64692)

(declare-fun bm!518159 () Bool)

(assert (=> bm!518159 (= call!518161 (derivationStepZipperDown!1379 (ite c!1117808 (regOne!32775 (h!71016 (exprs!6015 lt!2341203))) (ite c!1117809 (regTwo!32774 (h!71016 (exprs!6015 lt!2341203))) (ite c!1117811 (regOne!32774 (h!71016 (exprs!6015 lt!2341203))) (reg!16460 (h!71016 (exprs!6015 lt!2341203)))))) (ite (or c!1117808 c!1117809) (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (Context!11031 call!518165)) (h!71018 s!2326)))))

(declare-fun b!6194094 () Bool)

(assert (=> b!6194094 (= c!1117809 e!3772211)))

(declare-fun res!2562274 () Bool)

(assert (=> b!6194094 (=> (not res!2562274) (not e!3772211))))

(assert (=> b!6194094 (= res!2562274 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341203))))))

(assert (=> b!6194094 (= e!3772208 e!3772207)))

(declare-fun b!6194095 () Bool)

(declare-fun e!3772210 () (InoxSet Context!11030))

(assert (=> b!6194095 (= e!3772210 (store ((as const (Array Context!11030 Bool)) false) (Context!11031 (t!378204 (exprs!6015 lt!2341203))) true))))

(declare-fun b!6194096 () Bool)

(assert (=> b!6194096 (= e!3772209 call!518160)))

(declare-fun d!1942025 () Bool)

(declare-fun c!1117810 () Bool)

(assert (=> d!1942025 (= c!1117810 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 lt!2341203))) (= (c!1117312 (h!71016 (exprs!6015 lt!2341203))) (h!71018 s!2326))))))

(assert (=> d!1942025 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341203)) (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (h!71018 s!2326)) e!3772210)))

(declare-fun bm!518160 () Bool)

(assert (=> bm!518160 (= call!518165 call!518164)))

(declare-fun b!6194097 () Bool)

(declare-fun c!1117812 () Bool)

(assert (=> b!6194097 (= c!1117812 ((_ is Star!16131) (h!71016 (exprs!6015 lt!2341203))))))

(assert (=> b!6194097 (= e!3772206 e!3772209)))

(declare-fun b!6194098 () Bool)

(assert (=> b!6194098 (= e!3772210 e!3772208)))

(assert (=> b!6194098 (= c!1117808 ((_ is Union!16131) (h!71016 (exprs!6015 lt!2341203))))))

(declare-fun b!6194099 () Bool)

(assert (=> b!6194099 (= e!3772207 ((_ map or) call!518163 call!518162))))

(assert (= (and d!1942025 c!1117810) b!6194095))

(assert (= (and d!1942025 (not c!1117810)) b!6194098))

(assert (= (and b!6194098 c!1117808) b!6194091))

(assert (= (and b!6194098 (not c!1117808)) b!6194094))

(assert (= (and b!6194094 res!2562274) b!6194093))

(assert (= (and b!6194094 c!1117809) b!6194099))

(assert (= (and b!6194094 (not c!1117809)) b!6194090))

(assert (= (and b!6194090 c!1117811) b!6194089))

(assert (= (and b!6194090 (not c!1117811)) b!6194097))

(assert (= (and b!6194097 c!1117812) b!6194096))

(assert (= (and b!6194097 (not c!1117812)) b!6194092))

(assert (= (or b!6194089 b!6194096) bm!518160))

(assert (= (or b!6194089 b!6194096) bm!518157))

(assert (= (or b!6194099 bm!518160) bm!518156))

(assert (= (or b!6194099 bm!518157) bm!518158))

(assert (= (or b!6194091 b!6194099) bm!518155))

(assert (= (or b!6194091 bm!518158) bm!518159))

(declare-fun m!7028080 () Bool)

(assert (=> b!6194093 m!7028080))

(declare-fun m!7028082 () Bool)

(assert (=> bm!518159 m!7028082))

(declare-fun m!7028084 () Bool)

(assert (=> bm!518155 m!7028084))

(declare-fun m!7028086 () Bool)

(assert (=> bm!518156 m!7028086))

(declare-fun m!7028088 () Bool)

(assert (=> b!6194095 m!7028088))

(assert (=> bm!517948 d!1942025))

(declare-fun d!1942029 () Bool)

(assert (=> d!1942029 (= (isEmpty!36555 (tail!11860 (exprs!6015 (h!71017 zl!343)))) ((_ is Nil!64568) (tail!11860 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6193387 d!1942029))

(declare-fun d!1942031 () Bool)

(assert (=> d!1942031 (= (tail!11860 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))

(assert (=> b!6193387 d!1942031))

(declare-fun d!1942033 () Bool)

(assert (=> d!1942033 (= (isEmptyExpr!1543 lt!2341326) ((_ is EmptyExpr!16131) lt!2341326))))

(assert (=> b!6193309 d!1942033))

(declare-fun d!1942035 () Bool)

(declare-fun c!1117818 () Bool)

(assert (=> d!1942035 (= c!1117818 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3772218 () Bool)

(assert (=> d!1942035 (= (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341164) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3772218)))

(declare-fun b!6194111 () Bool)

(assert (=> b!6194111 (= e!3772218 (nullableZipper!1907 (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341164) (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6194112 () Bool)

(assert (=> b!6194112 (= e!3772218 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341164) (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1942035 c!1117818) b!6194111))

(assert (= (and d!1942035 (not c!1117818)) b!6194112))

(assert (=> d!1942035 m!7026810))

(assert (=> d!1942035 m!7027518))

(assert (=> b!6194111 m!7027352))

(declare-fun m!7028100 () Bool)

(assert (=> b!6194111 m!7028100))

(assert (=> b!6194112 m!7026810))

(assert (=> b!6194112 m!7027522))

(assert (=> b!6194112 m!7027352))

(assert (=> b!6194112 m!7027522))

(declare-fun m!7028102 () Bool)

(assert (=> b!6194112 m!7028102))

(assert (=> b!6194112 m!7026810))

(assert (=> b!6194112 m!7027526))

(assert (=> b!6194112 m!7028102))

(assert (=> b!6194112 m!7027526))

(declare-fun m!7028104 () Bool)

(assert (=> b!6194112 m!7028104))

(assert (=> b!6193353 d!1942035))

(declare-fun bs!1536868 () Bool)

(declare-fun d!1942039 () Bool)

(assert (= bs!1536868 (and d!1942039 d!1941795)))

(declare-fun lambda!338306 () Int)

(assert (=> bs!1536868 (= lambda!338306 lambda!338282)))

(declare-fun bs!1536869 () Bool)

(assert (= bs!1536869 (and d!1942039 b!6192421)))

(assert (=> bs!1536869 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338306 lambda!338193))))

(declare-fun bs!1536870 () Bool)

(assert (= bs!1536870 (and d!1942039 d!1941861)))

(assert (=> bs!1536870 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338306 lambda!338290))))

(declare-fun bs!1536871 () Bool)

(assert (= bs!1536871 (and d!1942039 d!1941851)))

(assert (=> bs!1536871 (= lambda!338306 lambda!338286)))

(declare-fun bs!1536872 () Bool)

(assert (= bs!1536872 (and d!1942039 d!1942023)))

(assert (=> bs!1536872 (= lambda!338306 lambda!338305)))

(declare-fun bs!1536873 () Bool)

(assert (= bs!1536873 (and d!1942039 d!1941757)))

(assert (=> bs!1536873 (= lambda!338306 lambda!338275)))

(declare-fun bs!1536874 () Bool)

(assert (= bs!1536874 (and d!1942039 d!1942013)))

(assert (=> bs!1536874 (= lambda!338306 lambda!338304)))

(assert (=> d!1942039 true))

(assert (=> d!1942039 (= (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341164) (head!12774 (t!378206 s!2326))) (flatMap!1636 ((_ map or) lt!2341182 lt!2341164) lambda!338306))))

(declare-fun bs!1536875 () Bool)

(assert (= bs!1536875 d!1942039))

(declare-fun m!7028116 () Bool)

(assert (=> bs!1536875 m!7028116))

(assert (=> b!6193353 d!1942039))

(assert (=> b!6193353 d!1941759))

(assert (=> b!6193353 d!1941763))

(declare-fun d!1942043 () Bool)

(assert (=> d!1942043 (= (nullable!6124 (h!71016 (exprs!6015 lt!2341183))) (nullableFct!2082 (h!71016 (exprs!6015 lt!2341183))))))

(declare-fun bs!1536876 () Bool)

(assert (= bs!1536876 d!1942043))

(declare-fun m!7028118 () Bool)

(assert (=> bs!1536876 m!7028118))

(assert (=> b!6193209 d!1942043))

(declare-fun d!1942045 () Bool)

(assert (=> d!1942045 (= (isEmpty!36555 (t!378204 (unfocusZipperList!1552 zl!343))) ((_ is Nil!64568) (t!378204 (unfocusZipperList!1552 zl!343))))))

(assert (=> b!6193191 d!1942045))

(declare-fun b!6194135 () Bool)

(declare-fun e!3772232 () (InoxSet Context!11030))

(declare-fun call!518180 () (InoxSet Context!11030))

(assert (=> b!6194135 (= e!3772232 call!518180)))

(declare-fun b!6194136 () Bool)

(declare-fun e!3772233 () (InoxSet Context!11030))

(assert (=> b!6194136 (= e!3772233 e!3772232)))

(declare-fun c!1117831 () Bool)

(assert (=> b!6194136 (= c!1117831 ((_ is Concat!24976) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(declare-fun b!6194137 () Bool)

(declare-fun e!3772234 () (InoxSet Context!11030))

(declare-fun call!518181 () (InoxSet Context!11030))

(declare-fun call!518183 () (InoxSet Context!11030))

(assert (=> b!6194137 (= e!3772234 ((_ map or) call!518181 call!518183))))

(declare-fun b!6194138 () Bool)

(declare-fun e!3772235 () (InoxSet Context!11030))

(assert (=> b!6194138 (= e!3772235 ((as const (Array Context!11030 Bool)) false))))

(declare-fun bm!518175 () Bool)

(declare-fun c!1117828 () Bool)

(declare-fun call!518184 () List!64692)

(assert (=> bm!518175 (= call!518183 (derivationStepZipperDown!1379 (ite c!1117828 (regTwo!32775 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (regOne!32774 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))) (ite c!1117828 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (Context!11031 call!518184)) (h!71018 s!2326)))))

(declare-fun b!6194139 () Bool)

(declare-fun e!3772237 () Bool)

(assert (=> b!6194139 (= e!3772237 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))))

(declare-fun c!1117829 () Bool)

(declare-fun bm!518176 () Bool)

(assert (=> bm!518176 (= call!518184 ($colon$colon!2002 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))) (ite (or c!1117829 c!1117831) (regTwo!32774 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))))

(declare-fun bm!518177 () Bool)

(declare-fun call!518182 () (InoxSet Context!11030))

(assert (=> bm!518177 (= call!518180 call!518182)))

(declare-fun bm!518178 () Bool)

(assert (=> bm!518178 (= call!518182 call!518181)))

(declare-fun call!518185 () List!64692)

(declare-fun bm!518179 () Bool)

(assert (=> bm!518179 (= call!518181 (derivationStepZipperDown!1379 (ite c!1117828 (regOne!32775 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (ite c!1117829 (regTwo!32774 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (ite c!1117831 (regOne!32774 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (reg!16460 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))) (ite (or c!1117828 c!1117829) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (Context!11031 call!518185)) (h!71018 s!2326)))))

(declare-fun b!6194140 () Bool)

(assert (=> b!6194140 (= c!1117829 e!3772237)))

(declare-fun res!2562280 () Bool)

(assert (=> b!6194140 (=> (not res!2562280) (not e!3772237))))

(assert (=> b!6194140 (= res!2562280 ((_ is Concat!24976) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(assert (=> b!6194140 (= e!3772234 e!3772233)))

(declare-fun b!6194141 () Bool)

(declare-fun e!3772236 () (InoxSet Context!11030))

(assert (=> b!6194141 (= e!3772236 (store ((as const (Array Context!11030 Bool)) false) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) true))))

(declare-fun b!6194142 () Bool)

(assert (=> b!6194142 (= e!3772235 call!518180)))

(declare-fun d!1942047 () Bool)

(declare-fun c!1117830 () Bool)

(assert (=> d!1942047 (= c!1117830 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (= (c!1117312 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326))))))

(assert (=> d!1942047 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326)) e!3772236)))

(declare-fun bm!518180 () Bool)

(assert (=> bm!518180 (= call!518185 call!518184)))

(declare-fun b!6194143 () Bool)

(declare-fun c!1117832 () Bool)

(assert (=> b!6194143 (= c!1117832 ((_ is Star!16131) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(assert (=> b!6194143 (= e!3772232 e!3772235)))

(declare-fun b!6194144 () Bool)

(assert (=> b!6194144 (= e!3772236 e!3772234)))

(assert (=> b!6194144 (= c!1117828 ((_ is Union!16131) (h!71016 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))

(declare-fun b!6194145 () Bool)

(assert (=> b!6194145 (= e!3772233 ((_ map or) call!518183 call!518182))))

(assert (= (and d!1942047 c!1117830) b!6194141))

(assert (= (and d!1942047 (not c!1117830)) b!6194144))

(assert (= (and b!6194144 c!1117828) b!6194137))

(assert (= (and b!6194144 (not c!1117828)) b!6194140))

(assert (= (and b!6194140 res!2562280) b!6194139))

(assert (= (and b!6194140 c!1117829) b!6194145))

(assert (= (and b!6194140 (not c!1117829)) b!6194136))

(assert (= (and b!6194136 c!1117831) b!6194135))

(assert (= (and b!6194136 (not c!1117831)) b!6194143))

(assert (= (and b!6194143 c!1117832) b!6194142))

(assert (= (and b!6194143 (not c!1117832)) b!6194138))

(assert (= (or b!6194135 b!6194142) bm!518180))

(assert (= (or b!6194135 b!6194142) bm!518177))

(assert (= (or b!6194145 bm!518180) bm!518176))

(assert (= (or b!6194145 bm!518177) bm!518178))

(assert (= (or b!6194137 b!6194145) bm!518175))

(assert (= (or b!6194137 bm!518178) bm!518179))

(declare-fun m!7028120 () Bool)

(assert (=> b!6194139 m!7028120))

(declare-fun m!7028122 () Bool)

(assert (=> bm!518179 m!7028122))

(declare-fun m!7028124 () Bool)

(assert (=> bm!518175 m!7028124))

(declare-fun m!7028126 () Bool)

(assert (=> bm!518176 m!7028126))

(declare-fun m!7028128 () Bool)

(assert (=> b!6194141 m!7028128))

(assert (=> bm!517977 d!1942047))

(declare-fun d!1942049 () Bool)

(assert (=> d!1942049 (= (Exists!3201 lambda!338235) (choose!46003 lambda!338235))))

(declare-fun bs!1536886 () Bool)

(assert (= bs!1536886 d!1942049))

(declare-fun m!7028130 () Bool)

(assert (=> bs!1536886 m!7028130))

(assert (=> d!1941529 d!1942049))

(declare-fun d!1942051 () Bool)

(assert (=> d!1942051 (= (Exists!3201 lambda!338236) (choose!46003 lambda!338236))))

(declare-fun bs!1536888 () Bool)

(assert (= bs!1536888 d!1942051))

(declare-fun m!7028132 () Bool)

(assert (=> bs!1536888 m!7028132))

(assert (=> d!1941529 d!1942051))

(declare-fun bs!1536904 () Bool)

(declare-fun d!1942053 () Bool)

(assert (= bs!1536904 (and d!1942053 d!1941529)))

(declare-fun lambda!338313 () Int)

(assert (=> bs!1536904 (not (= lambda!338313 lambda!338236))))

(declare-fun bs!1536905 () Bool)

(assert (= bs!1536905 (and d!1942053 b!6193614)))

(assert (=> bs!1536905 (not (= lambda!338313 lambda!338277))))

(declare-fun bs!1536906 () Bool)

(assert (= bs!1536906 (and d!1942053 d!1941517)))

(assert (=> bs!1536906 (= lambda!338313 lambda!338227)))

(declare-fun bs!1536907 () Bool)

(assert (= bs!1536907 (and d!1942053 b!6193329)))

(assert (=> bs!1536907 (not (= lambda!338313 lambda!338260))))

(declare-fun bs!1536908 () Bool)

(assert (= bs!1536908 (and d!1942053 b!6193499)))

(assert (=> bs!1536908 (not (= lambda!338313 lambda!338270))))

(declare-fun bs!1536909 () Bool)

(assert (= bs!1536909 (and d!1942053 b!6193331)))

(assert (=> bs!1536909 (not (= lambda!338313 lambda!338261))))

(declare-fun bs!1536910 () Bool)

(assert (= bs!1536910 (and d!1942053 b!6192412)))

(assert (=> bs!1536910 (not (= lambda!338313 lambda!338192))))

(declare-fun bs!1536911 () Bool)

(assert (= bs!1536911 (and d!1942053 b!6193320)))

(assert (=> bs!1536911 (not (= lambda!338313 lambda!338259))))

(assert (=> bs!1536910 (= lambda!338313 lambda!338191)))

(assert (=> bs!1536904 (= lambda!338313 lambda!338235)))

(declare-fun bs!1536912 () Bool)

(assert (= bs!1536912 (and d!1942053 b!6193318)))

(assert (=> bs!1536912 (not (= lambda!338313 lambda!338258))))

(declare-fun bs!1536913 () Bool)

(assert (= bs!1536913 (and d!1942053 b!6193612)))

(assert (=> bs!1536913 (not (= lambda!338313 lambda!338276))))

(declare-fun bs!1536914 () Bool)

(assert (= bs!1536914 (and d!1942053 b!6192678)))

(assert (=> bs!1536914 (not (= lambda!338313 lambda!338213))))

(declare-fun bs!1536915 () Bool)

(assert (= bs!1536915 (and d!1942053 b!6193497)))

(assert (=> bs!1536915 (not (= lambda!338313 lambda!338269))))

(declare-fun bs!1536916 () Bool)

(assert (= bs!1536916 (and d!1942053 b!6192676)))

(assert (=> bs!1536916 (not (= lambda!338313 lambda!338211))))

(assert (=> d!1942053 true))

(assert (=> d!1942053 true))

(assert (=> d!1942053 true))

(declare-fun lambda!338314 () Int)

(assert (=> bs!1536904 (= lambda!338314 lambda!338236)))

(declare-fun bs!1536917 () Bool)

(assert (= bs!1536917 d!1942053))

(assert (=> bs!1536917 (not (= lambda!338314 lambda!338313))))

(assert (=> bs!1536905 (= (and (= (regOne!32774 r!7292) (regOne!32774 (regOne!32775 lt!2341185))) (= (regTwo!32774 r!7292) (regTwo!32774 (regOne!32775 lt!2341185)))) (= lambda!338314 lambda!338277))))

(assert (=> bs!1536906 (not (= lambda!338314 lambda!338227))))

(assert (=> bs!1536907 (not (= lambda!338314 lambda!338260))))

(assert (=> bs!1536908 (= (and (= (regOne!32774 r!7292) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 r!7292) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338314 lambda!338270))))

(assert (=> bs!1536909 (= (and (= (regOne!32774 r!7292) (regOne!32774 lt!2341177)) (= (regTwo!32774 r!7292) (regTwo!32774 lt!2341177))) (= lambda!338314 lambda!338261))))

(assert (=> bs!1536910 (= lambda!338314 lambda!338192)))

(assert (=> bs!1536911 (= (and (= (regOne!32774 r!7292) (regOne!32774 lt!2341185)) (= (regTwo!32774 r!7292) (regTwo!32774 lt!2341185))) (= lambda!338314 lambda!338259))))

(assert (=> bs!1536910 (not (= lambda!338314 lambda!338191))))

(assert (=> bs!1536904 (not (= lambda!338314 lambda!338235))))

(assert (=> bs!1536912 (not (= lambda!338314 lambda!338258))))

(assert (=> bs!1536913 (not (= lambda!338314 lambda!338276))))

(assert (=> bs!1536914 (= lambda!338314 lambda!338213)))

(assert (=> bs!1536915 (not (= lambda!338314 lambda!338269))))

(assert (=> bs!1536916 (not (= lambda!338314 lambda!338211))))

(assert (=> d!1942053 true))

(assert (=> d!1942053 true))

(assert (=> d!1942053 true))

(assert (=> d!1942053 (= (Exists!3201 lambda!338313) (Exists!3201 lambda!338314))))

(assert (=> d!1942053 true))

(declare-fun _$90!1956 () Unit!157827)

(assert (=> d!1942053 (= (choose!46005 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326) _$90!1956)))

(declare-fun m!7028148 () Bool)

(assert (=> bs!1536917 m!7028148))

(declare-fun m!7028150 () Bool)

(assert (=> bs!1536917 m!7028150))

(assert (=> d!1941529 d!1942053))

(assert (=> d!1941529 d!1941909))

(declare-fun b!6194183 () Bool)

(declare-fun e!3772264 () (InoxSet Context!11030))

(declare-fun call!518192 () (InoxSet Context!11030))

(assert (=> b!6194183 (= e!3772264 call!518192)))

(declare-fun b!6194184 () Bool)

(declare-fun e!3772265 () (InoxSet Context!11030))

(assert (=> b!6194184 (= e!3772265 e!3772264)))

(declare-fun c!1117844 () Bool)

(assert (=> b!6194184 (= c!1117844 ((_ is Concat!24976) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))))

(declare-fun b!6194185 () Bool)

(declare-fun e!3772266 () (InoxSet Context!11030))

(declare-fun call!518193 () (InoxSet Context!11030))

(declare-fun call!518195 () (InoxSet Context!11030))

(assert (=> b!6194185 (= e!3772266 ((_ map or) call!518193 call!518195))))

(declare-fun b!6194186 () Bool)

(declare-fun e!3772267 () (InoxSet Context!11030))

(assert (=> b!6194186 (= e!3772267 ((as const (Array Context!11030 Bool)) false))))

(declare-fun call!518196 () List!64692)

(declare-fun c!1117841 () Bool)

(declare-fun bm!518187 () Bool)

(assert (=> bm!518187 (= call!518195 (derivationStepZipperDown!1379 (ite c!1117841 (regTwo!32775 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (regOne!32774 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))))) (ite c!1117841 (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988)) (Context!11031 call!518196)) (h!71018 s!2326)))))

(declare-fun b!6194187 () Bool)

(declare-fun e!3772269 () Bool)

(assert (=> b!6194187 (= e!3772269 (nullable!6124 (regOne!32774 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))))))))

(declare-fun bm!518188 () Bool)

(declare-fun c!1117842 () Bool)

(assert (=> bm!518188 (= call!518196 ($colon$colon!2002 (exprs!6015 (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988))) (ite (or c!1117842 c!1117844) (regTwo!32774 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))))))))

(declare-fun bm!518189 () Bool)

(declare-fun call!518194 () (InoxSet Context!11030))

(assert (=> bm!518189 (= call!518192 call!518194)))

(declare-fun bm!518190 () Bool)

(assert (=> bm!518190 (= call!518194 call!518193)))

(declare-fun call!518197 () List!64692)

(declare-fun bm!518191 () Bool)

(assert (=> bm!518191 (= call!518193 (derivationStepZipperDown!1379 (ite c!1117841 (regOne!32775 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (ite c!1117842 (regTwo!32774 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (ite c!1117844 (regOne!32774 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (reg!16460 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))))))) (ite (or c!1117841 c!1117842) (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988)) (Context!11031 call!518197)) (h!71018 s!2326)))))

(declare-fun b!6194188 () Bool)

(assert (=> b!6194188 (= c!1117842 e!3772269)))

(declare-fun res!2562304 () Bool)

(assert (=> b!6194188 (=> (not res!2562304) (not e!3772269))))

(assert (=> b!6194188 (= res!2562304 ((_ is Concat!24976) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))))

(assert (=> b!6194188 (= e!3772266 e!3772265)))

(declare-fun e!3772268 () (InoxSet Context!11030))

(declare-fun b!6194189 () Bool)

(assert (=> b!6194189 (= e!3772268 (store ((as const (Array Context!11030 Bool)) false) (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988)) true))))

(declare-fun b!6194190 () Bool)

(assert (=> b!6194190 (= e!3772267 call!518192)))

(declare-fun c!1117843 () Bool)

(declare-fun d!1942063 () Bool)

(assert (=> d!1942063 (= c!1117843 (and ((_ is ElementMatch!16131) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (= (c!1117312 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326))))))

(assert (=> d!1942063 (= (derivationStepZipperDown!1379 (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))) (ite (or c!1117544 c!1117545) lt!2341183 (Context!11031 call!517988)) (h!71018 s!2326)) e!3772268)))

(declare-fun bm!518192 () Bool)

(assert (=> bm!518192 (= call!518197 call!518196)))

(declare-fun c!1117845 () Bool)

(declare-fun b!6194191 () Bool)

(assert (=> b!6194191 (= c!1117845 ((_ is Star!16131) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))))

(assert (=> b!6194191 (= e!3772264 e!3772267)))

(declare-fun b!6194192 () Bool)

(assert (=> b!6194192 (= e!3772268 e!3772266)))

(assert (=> b!6194192 (= c!1117841 ((_ is Union!16131) (ite c!1117544 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117545 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117547 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343)))))))))))

(declare-fun b!6194193 () Bool)

(assert (=> b!6194193 (= e!3772265 ((_ map or) call!518195 call!518194))))

(assert (= (and d!1942063 c!1117843) b!6194189))

(assert (= (and d!1942063 (not c!1117843)) b!6194192))

(assert (= (and b!6194192 c!1117841) b!6194185))

(assert (= (and b!6194192 (not c!1117841)) b!6194188))

(assert (= (and b!6194188 res!2562304) b!6194187))

(assert (= (and b!6194188 c!1117842) b!6194193))

(assert (= (and b!6194188 (not c!1117842)) b!6194184))

(assert (= (and b!6194184 c!1117844) b!6194183))

(assert (= (and b!6194184 (not c!1117844)) b!6194191))

(assert (= (and b!6194191 c!1117845) b!6194190))

(assert (= (and b!6194191 (not c!1117845)) b!6194186))

(assert (= (or b!6194183 b!6194190) bm!518192))

(assert (= (or b!6194183 b!6194190) bm!518189))

(assert (= (or b!6194193 bm!518192) bm!518188))

(assert (= (or b!6194193 bm!518189) bm!518190))

(assert (= (or b!6194185 b!6194193) bm!518187))

(assert (= (or b!6194185 bm!518190) bm!518191))

(declare-fun m!7028158 () Bool)

(assert (=> b!6194187 m!7028158))

(declare-fun m!7028160 () Bool)

(assert (=> bm!518191 m!7028160))

(declare-fun m!7028162 () Bool)

(assert (=> bm!518187 m!7028162))

(declare-fun m!7028172 () Bool)

(assert (=> bm!518188 m!7028172))

(declare-fun m!7028176 () Bool)

(assert (=> b!6194189 m!7028176))

(assert (=> bm!517982 d!1942063))

(assert (=> bm!517989 d!1941747))

(declare-fun d!1942071 () Bool)

(declare-fun c!1117847 () Bool)

(assert (=> d!1942071 (= c!1117847 (isEmpty!36557 (t!378206 s!2326)))))

(declare-fun e!3772272 () Bool)

(assert (=> d!1942071 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341166) (t!378206 s!2326)) e!3772272)))

(declare-fun b!6194198 () Bool)

(assert (=> b!6194198 (= e!3772272 (nullableZipper!1907 ((_ map or) lt!2341182 lt!2341166)))))

(declare-fun b!6194199 () Bool)

(assert (=> b!6194199 (= e!3772272 (matchZipper!2143 (derivationStepZipper!2099 ((_ map or) lt!2341182 lt!2341166) (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))))))

(assert (= (and d!1942071 c!1117847) b!6194198))

(assert (= (and d!1942071 (not c!1117847)) b!6194199))

(assert (=> d!1942071 m!7026800))

(declare-fun m!7028182 () Bool)

(assert (=> b!6194198 m!7028182))

(assert (=> b!6194199 m!7026804))

(assert (=> b!6194199 m!7026804))

(declare-fun m!7028184 () Bool)

(assert (=> b!6194199 m!7028184))

(assert (=> b!6194199 m!7026810))

(assert (=> b!6194199 m!7028184))

(assert (=> b!6194199 m!7026810))

(declare-fun m!7028186 () Bool)

(assert (=> b!6194199 m!7028186))

(assert (=> d!1941651 d!1942071))

(assert (=> d!1941651 d!1941649))

(declare-fun d!1942077 () Bool)

(declare-fun e!3772273 () Bool)

(assert (=> d!1942077 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341166) (t!378206 s!2326)) e!3772273)))

(declare-fun res!2562307 () Bool)

(assert (=> d!1942077 (=> res!2562307 e!3772273)))

(assert (=> d!1942077 (= res!2562307 (matchZipper!2143 lt!2341182 (t!378206 s!2326)))))

(assert (=> d!1942077 true))

(declare-fun _$48!1831 () Unit!157827)

(assert (=> d!1942077 (= (choose!46013 lt!2341182 lt!2341166 (t!378206 s!2326)) _$48!1831)))

(declare-fun b!6194200 () Bool)

(assert (=> b!6194200 (= e!3772273 (matchZipper!2143 lt!2341166 (t!378206 s!2326)))))

(assert (= (and d!1942077 (not res!2562307)) b!6194200))

(assert (=> d!1942077 m!7027242))

(assert (=> d!1942077 m!7026496))

(assert (=> b!6194200 m!7026492))

(assert (=> d!1941651 d!1942077))

(declare-fun b!6194211 () Bool)

(declare-fun e!3772281 () Bool)

(declare-fun call!518199 () Bool)

(assert (=> b!6194211 (= e!3772281 call!518199)))

(declare-fun b!6194212 () Bool)

(declare-fun e!3772285 () Bool)

(declare-fun e!3772286 () Bool)

(assert (=> b!6194212 (= e!3772285 e!3772286)))

(declare-fun c!1117853 () Bool)

(assert (=> b!6194212 (= c!1117853 ((_ is Union!16131) lt!2341326))))

(declare-fun b!6194213 () Bool)

(declare-fun e!3772280 () Bool)

(declare-fun call!518198 () Bool)

(assert (=> b!6194213 (= e!3772280 call!518198)))

(declare-fun b!6194214 () Bool)

(declare-fun e!3772284 () Bool)

(assert (=> b!6194214 (= e!3772284 e!3772285)))

(declare-fun c!1117852 () Bool)

(assert (=> b!6194214 (= c!1117852 ((_ is Star!16131) lt!2341326))))

(declare-fun d!1942083 () Bool)

(declare-fun res!2562313 () Bool)

(assert (=> d!1942083 (=> res!2562313 e!3772284)))

(assert (=> d!1942083 (= res!2562313 ((_ is ElementMatch!16131) lt!2341326))))

(assert (=> d!1942083 (= (validRegex!7867 lt!2341326) e!3772284)))

(declare-fun bm!518193 () Bool)

(assert (=> bm!518193 (= call!518198 (validRegex!7867 (ite c!1117852 (reg!16460 lt!2341326) (ite c!1117853 (regOne!32775 lt!2341326) (regOne!32774 lt!2341326)))))))

(declare-fun bm!518194 () Bool)

(assert (=> bm!518194 (= call!518199 (validRegex!7867 (ite c!1117853 (regTwo!32775 lt!2341326) (regTwo!32774 lt!2341326))))))

(declare-fun b!6194215 () Bool)

(declare-fun e!3772282 () Bool)

(assert (=> b!6194215 (= e!3772282 e!3772281)))

(declare-fun res!2562314 () Bool)

(assert (=> b!6194215 (=> (not res!2562314) (not e!3772281))))

(declare-fun call!518200 () Bool)

(assert (=> b!6194215 (= res!2562314 call!518200)))

(declare-fun b!6194216 () Bool)

(declare-fun res!2562312 () Bool)

(assert (=> b!6194216 (=> res!2562312 e!3772282)))

(assert (=> b!6194216 (= res!2562312 (not ((_ is Concat!24976) lt!2341326)))))

(assert (=> b!6194216 (= e!3772286 e!3772282)))

(declare-fun b!6194217 () Bool)

(declare-fun res!2562310 () Bool)

(declare-fun e!3772283 () Bool)

(assert (=> b!6194217 (=> (not res!2562310) (not e!3772283))))

(assert (=> b!6194217 (= res!2562310 call!518200)))

(assert (=> b!6194217 (= e!3772286 e!3772283)))

(declare-fun b!6194218 () Bool)

(assert (=> b!6194218 (= e!3772285 e!3772280)))

(declare-fun res!2562311 () Bool)

(assert (=> b!6194218 (= res!2562311 (not (nullable!6124 (reg!16460 lt!2341326))))))

(assert (=> b!6194218 (=> (not res!2562311) (not e!3772280))))

(declare-fun bm!518195 () Bool)

(assert (=> bm!518195 (= call!518200 call!518198)))

(declare-fun b!6194219 () Bool)

(assert (=> b!6194219 (= e!3772283 call!518199)))

(assert (= (and d!1942083 (not res!2562313)) b!6194214))

(assert (= (and b!6194214 c!1117852) b!6194218))

(assert (= (and b!6194214 (not c!1117852)) b!6194212))

(assert (= (and b!6194218 res!2562311) b!6194213))

(assert (= (and b!6194212 c!1117853) b!6194217))

(assert (= (and b!6194212 (not c!1117853)) b!6194216))

(assert (= (and b!6194217 res!2562310) b!6194219))

(assert (= (and b!6194216 (not res!2562312)) b!6194215))

(assert (= (and b!6194215 res!2562314) b!6194211))

(assert (= (or b!6194219 b!6194211) bm!518194))

(assert (= (or b!6194217 b!6194215) bm!518195))

(assert (= (or b!6194213 bm!518195) bm!518193))

(declare-fun m!7028190 () Bool)

(assert (=> bm!518193 m!7028190))

(declare-fun m!7028192 () Bool)

(assert (=> bm!518194 m!7028192))

(declare-fun m!7028194 () Bool)

(assert (=> b!6194218 m!7028194))

(assert (=> d!1941667 d!1942083))

(declare-fun d!1942085 () Bool)

(declare-fun res!2562315 () Bool)

(declare-fun e!3772287 () Bool)

(assert (=> d!1942085 (=> res!2562315 e!3772287)))

(assert (=> d!1942085 (= res!2562315 ((_ is Nil!64568) lt!2341187))))

(assert (=> d!1942085 (= (forall!15247 lt!2341187 lambda!338257) e!3772287)))

(declare-fun b!6194220 () Bool)

(declare-fun e!3772288 () Bool)

(assert (=> b!6194220 (= e!3772287 e!3772288)))

(declare-fun res!2562316 () Bool)

(assert (=> b!6194220 (=> (not res!2562316) (not e!3772288))))

(assert (=> b!6194220 (= res!2562316 (dynLambda!25464 lambda!338257 (h!71016 lt!2341187)))))

(declare-fun b!6194221 () Bool)

(assert (=> b!6194221 (= e!3772288 (forall!15247 (t!378204 lt!2341187) lambda!338257))))

(assert (= (and d!1942085 (not res!2562315)) b!6194220))

(assert (= (and b!6194220 res!2562316) b!6194221))

(declare-fun b_lambda!235647 () Bool)

(assert (=> (not b_lambda!235647) (not b!6194220)))

(declare-fun m!7028196 () Bool)

(assert (=> b!6194220 m!7028196))

(declare-fun m!7028198 () Bool)

(assert (=> b!6194221 m!7028198))

(assert (=> d!1941667 d!1942085))

(declare-fun d!1942087 () Bool)

(assert (=> d!1942087 (= (isEmpty!36555 (tail!11860 lt!2341202)) ((_ is Nil!64568) (tail!11860 lt!2341202)))))

(assert (=> b!6193288 d!1942087))

(declare-fun d!1942089 () Bool)

(assert (=> d!1942089 (= (tail!11860 lt!2341202) (t!378204 lt!2341202))))

(assert (=> b!6193288 d!1942089))

(declare-fun bs!1536939 () Bool)

(declare-fun b!6194224 () Bool)

(assert (= bs!1536939 (and b!6194224 d!1941529)))

(declare-fun lambda!338317 () Int)

(assert (=> bs!1536939 (not (= lambda!338317 lambda!338236))))

(declare-fun bs!1536940 () Bool)

(assert (= bs!1536940 (and b!6194224 d!1942053)))

(assert (=> bs!1536940 (not (= lambda!338317 lambda!338313))))

(declare-fun bs!1536941 () Bool)

(assert (= bs!1536941 (and b!6194224 b!6193614)))

(assert (=> bs!1536941 (not (= lambda!338317 lambda!338277))))

(assert (=> bs!1536940 (not (= lambda!338317 lambda!338314))))

(declare-fun bs!1536942 () Bool)

(assert (= bs!1536942 (and b!6194224 d!1941517)))

(assert (=> bs!1536942 (not (= lambda!338317 lambda!338227))))

(declare-fun bs!1536943 () Bool)

(assert (= bs!1536943 (and b!6194224 b!6193329)))

(assert (=> bs!1536943 (= (and (= (reg!16460 (regTwo!32775 r!7292)) (reg!16460 lt!2341177)) (= (regTwo!32775 r!7292) lt!2341177)) (= lambda!338317 lambda!338260))))

(declare-fun bs!1536944 () Bool)

(assert (= bs!1536944 (and b!6194224 b!6193499)))

(assert (=> bs!1536944 (not (= lambda!338317 lambda!338270))))

(declare-fun bs!1536945 () Bool)

(assert (= bs!1536945 (and b!6194224 b!6193331)))

(assert (=> bs!1536945 (not (= lambda!338317 lambda!338261))))

(declare-fun bs!1536946 () Bool)

(assert (= bs!1536946 (and b!6194224 b!6192412)))

(assert (=> bs!1536946 (not (= lambda!338317 lambda!338192))))

(declare-fun bs!1536947 () Bool)

(assert (= bs!1536947 (and b!6194224 b!6193320)))

(assert (=> bs!1536947 (not (= lambda!338317 lambda!338259))))

(assert (=> bs!1536946 (not (= lambda!338317 lambda!338191))))

(assert (=> bs!1536939 (not (= lambda!338317 lambda!338235))))

(declare-fun bs!1536948 () Bool)

(assert (= bs!1536948 (and b!6194224 b!6193318)))

(assert (=> bs!1536948 (= (and (= (reg!16460 (regTwo!32775 r!7292)) (reg!16460 lt!2341185)) (= (regTwo!32775 r!7292) lt!2341185)) (= lambda!338317 lambda!338258))))

(declare-fun bs!1536949 () Bool)

(assert (= bs!1536949 (and b!6194224 b!6193612)))

(assert (=> bs!1536949 (= (and (= (reg!16460 (regTwo!32775 r!7292)) (reg!16460 (regOne!32775 lt!2341185))) (= (regTwo!32775 r!7292) (regOne!32775 lt!2341185))) (= lambda!338317 lambda!338276))))

(declare-fun bs!1536950 () Bool)

(assert (= bs!1536950 (and b!6194224 b!6192678)))

(assert (=> bs!1536950 (not (= lambda!338317 lambda!338213))))

(declare-fun bs!1536951 () Bool)

(assert (= bs!1536951 (and b!6194224 b!6193497)))

(assert (=> bs!1536951 (= (and (= (reg!16460 (regTwo!32775 r!7292)) (reg!16460 (regOne!32775 lt!2341177))) (= (regTwo!32775 r!7292) (regOne!32775 lt!2341177))) (= lambda!338317 lambda!338269))))

(declare-fun bs!1536952 () Bool)

(assert (= bs!1536952 (and b!6194224 b!6192676)))

(assert (=> bs!1536952 (= (and (= (reg!16460 (regTwo!32775 r!7292)) (reg!16460 r!7292)) (= (regTwo!32775 r!7292) r!7292)) (= lambda!338317 lambda!338211))))

(assert (=> b!6194224 true))

(assert (=> b!6194224 true))

(declare-fun bs!1536953 () Bool)

(declare-fun b!6194226 () Bool)

(assert (= bs!1536953 (and b!6194226 d!1941529)))

(declare-fun lambda!338318 () Int)

(assert (=> bs!1536953 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338318 lambda!338236))))

(declare-fun bs!1536954 () Bool)

(assert (= bs!1536954 (and b!6194226 d!1942053)))

(assert (=> bs!1536954 (not (= lambda!338318 lambda!338313))))

(declare-fun bs!1536955 () Bool)

(assert (= bs!1536955 (and b!6194226 b!6194224)))

(assert (=> bs!1536955 (not (= lambda!338318 lambda!338317))))

(declare-fun bs!1536956 () Bool)

(assert (= bs!1536956 (and b!6194226 b!6193614)))

(assert (=> bs!1536956 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 (regOne!32775 lt!2341185))) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 (regOne!32775 lt!2341185)))) (= lambda!338318 lambda!338277))))

(assert (=> bs!1536954 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338318 lambda!338314))))

(declare-fun bs!1536957 () Bool)

(assert (= bs!1536957 (and b!6194226 d!1941517)))

(assert (=> bs!1536957 (not (= lambda!338318 lambda!338227))))

(declare-fun bs!1536958 () Bool)

(assert (= bs!1536958 (and b!6194226 b!6193329)))

(assert (=> bs!1536958 (not (= lambda!338318 lambda!338260))))

(declare-fun bs!1536959 () Bool)

(assert (= bs!1536959 (and b!6194226 b!6193499)))

(assert (=> bs!1536959 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338318 lambda!338270))))

(declare-fun bs!1536960 () Bool)

(assert (= bs!1536960 (and b!6194226 b!6193331)))

(assert (=> bs!1536960 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 lt!2341177))) (= lambda!338318 lambda!338261))))

(declare-fun bs!1536961 () Bool)

(assert (= bs!1536961 (and b!6194226 b!6192412)))

(assert (=> bs!1536961 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338318 lambda!338192))))

(declare-fun bs!1536962 () Bool)

(assert (= bs!1536962 (and b!6194226 b!6193320)))

(assert (=> bs!1536962 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 lt!2341185))) (= lambda!338318 lambda!338259))))

(assert (=> bs!1536961 (not (= lambda!338318 lambda!338191))))

(assert (=> bs!1536953 (not (= lambda!338318 lambda!338235))))

(declare-fun bs!1536963 () Bool)

(assert (= bs!1536963 (and b!6194226 b!6193318)))

(assert (=> bs!1536963 (not (= lambda!338318 lambda!338258))))

(declare-fun bs!1536964 () Bool)

(assert (= bs!1536964 (and b!6194226 b!6193612)))

(assert (=> bs!1536964 (not (= lambda!338318 lambda!338276))))

(declare-fun bs!1536965 () Bool)

(assert (= bs!1536965 (and b!6194226 b!6192678)))

(assert (=> bs!1536965 (= (and (= (regOne!32774 (regTwo!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338318 lambda!338213))))

(declare-fun bs!1536966 () Bool)

(assert (= bs!1536966 (and b!6194226 b!6193497)))

(assert (=> bs!1536966 (not (= lambda!338318 lambda!338269))))

(declare-fun bs!1536967 () Bool)

(assert (= bs!1536967 (and b!6194226 b!6192676)))

(assert (=> bs!1536967 (not (= lambda!338318 lambda!338211))))

(assert (=> b!6194226 true))

(assert (=> b!6194226 true))

(declare-fun b!6194222 () Bool)

(declare-fun e!3772290 () Bool)

(declare-fun call!518201 () Bool)

(assert (=> b!6194222 (= e!3772290 call!518201)))

(declare-fun b!6194223 () Bool)

(declare-fun e!3772291 () Bool)

(assert (=> b!6194223 (= e!3772291 (= s!2326 (Cons!64570 (c!1117312 (regTwo!32775 r!7292)) Nil!64570)))))

(declare-fun e!3772289 () Bool)

(declare-fun call!518202 () Bool)

(assert (=> b!6194224 (= e!3772289 call!518202)))

(declare-fun b!6194225 () Bool)

(declare-fun e!3772293 () Bool)

(declare-fun e!3772294 () Bool)

(assert (=> b!6194225 (= e!3772293 e!3772294)))

(declare-fun c!1117855 () Bool)

(assert (=> b!6194225 (= c!1117855 ((_ is Star!16131) (regTwo!32775 r!7292)))))

(assert (=> b!6194226 (= e!3772294 call!518202)))

(declare-fun b!6194227 () Bool)

(declare-fun c!1117857 () Bool)

(assert (=> b!6194227 (= c!1117857 ((_ is ElementMatch!16131) (regTwo!32775 r!7292)))))

(declare-fun e!3772292 () Bool)

(assert (=> b!6194227 (= e!3772292 e!3772291)))

(declare-fun b!6194228 () Bool)

(declare-fun c!1117854 () Bool)

(assert (=> b!6194228 (= c!1117854 ((_ is Union!16131) (regTwo!32775 r!7292)))))

(assert (=> b!6194228 (= e!3772291 e!3772293)))

(declare-fun b!6194229 () Bool)

(declare-fun res!2562319 () Bool)

(assert (=> b!6194229 (=> res!2562319 e!3772289)))

(assert (=> b!6194229 (= res!2562319 call!518201)))

(assert (=> b!6194229 (= e!3772294 e!3772289)))

(declare-fun bm!518196 () Bool)

(assert (=> bm!518196 (= call!518201 (isEmpty!36557 s!2326))))

(declare-fun b!6194230 () Bool)

(assert (=> b!6194230 (= e!3772290 e!3772292)))

(declare-fun res!2562317 () Bool)

(assert (=> b!6194230 (= res!2562317 (not ((_ is EmptyLang!16131) (regTwo!32775 r!7292))))))

(assert (=> b!6194230 (=> (not res!2562317) (not e!3772292))))

(declare-fun bm!518197 () Bool)

(assert (=> bm!518197 (= call!518202 (Exists!3201 (ite c!1117855 lambda!338317 lambda!338318)))))

(declare-fun b!6194231 () Bool)

(declare-fun e!3772295 () Bool)

(assert (=> b!6194231 (= e!3772293 e!3772295)))

(declare-fun res!2562318 () Bool)

(assert (=> b!6194231 (= res!2562318 (matchRSpec!3232 (regOne!32775 (regTwo!32775 r!7292)) s!2326))))

(assert (=> b!6194231 (=> res!2562318 e!3772295)))

(declare-fun b!6194232 () Bool)

(assert (=> b!6194232 (= e!3772295 (matchRSpec!3232 (regTwo!32775 (regTwo!32775 r!7292)) s!2326))))

(declare-fun d!1942091 () Bool)

(declare-fun c!1117856 () Bool)

(assert (=> d!1942091 (= c!1117856 ((_ is EmptyExpr!16131) (regTwo!32775 r!7292)))))

(assert (=> d!1942091 (= (matchRSpec!3232 (regTwo!32775 r!7292) s!2326) e!3772290)))

(assert (= (and d!1942091 c!1117856) b!6194222))

(assert (= (and d!1942091 (not c!1117856)) b!6194230))

(assert (= (and b!6194230 res!2562317) b!6194227))

(assert (= (and b!6194227 c!1117857) b!6194223))

(assert (= (and b!6194227 (not c!1117857)) b!6194228))

(assert (= (and b!6194228 c!1117854) b!6194231))

(assert (= (and b!6194228 (not c!1117854)) b!6194225))

(assert (= (and b!6194231 (not res!2562318)) b!6194232))

(assert (= (and b!6194225 c!1117855) b!6194229))

(assert (= (and b!6194225 (not c!1117855)) b!6194226))

(assert (= (and b!6194229 (not res!2562319)) b!6194224))

(assert (= (or b!6194224 b!6194226) bm!518197))

(assert (= (or b!6194222 b!6194229) bm!518196))

(assert (=> bm!518196 m!7026692))

(declare-fun m!7028222 () Bool)

(assert (=> bm!518197 m!7028222))

(declare-fun m!7028224 () Bool)

(assert (=> b!6194231 m!7028224))

(declare-fun m!7028226 () Bool)

(assert (=> b!6194232 m!7028226))

(assert (=> b!6192684 d!1942091))

(declare-fun b!6194237 () Bool)

(declare-fun e!3772299 () Bool)

(declare-fun call!518204 () Bool)

(assert (=> b!6194237 (= e!3772299 call!518204)))

(declare-fun b!6194238 () Bool)

(declare-fun e!3772303 () Bool)

(declare-fun e!3772304 () Bool)

(assert (=> b!6194238 (= e!3772303 e!3772304)))

(declare-fun c!1117859 () Bool)

(assert (=> b!6194238 (= c!1117859 ((_ is Union!16131) (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))

(declare-fun b!6194239 () Bool)

(declare-fun e!3772298 () Bool)

(declare-fun call!518203 () Bool)

(assert (=> b!6194239 (= e!3772298 call!518203)))

(declare-fun b!6194240 () Bool)

(declare-fun e!3772302 () Bool)

(assert (=> b!6194240 (= e!3772302 e!3772303)))

(declare-fun c!1117858 () Bool)

(assert (=> b!6194240 (= c!1117858 ((_ is Star!16131) (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))

(declare-fun d!1942099 () Bool)

(declare-fun res!2562327 () Bool)

(assert (=> d!1942099 (=> res!2562327 e!3772302)))

(assert (=> d!1942099 (= res!2562327 ((_ is ElementMatch!16131) (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))

(assert (=> d!1942099 (= (validRegex!7867 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))) e!3772302)))

(declare-fun bm!518198 () Bool)

(assert (=> bm!518198 (= call!518203 (validRegex!7867 (ite c!1117858 (reg!16460 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))) (ite c!1117859 (regOne!32775 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))) (regOne!32774 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292))))))))))

(declare-fun bm!518199 () Bool)

(assert (=> bm!518199 (= call!518204 (validRegex!7867 (ite c!1117859 (regTwo!32775 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))) (regTwo!32774 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))))

(declare-fun b!6194241 () Bool)

(declare-fun e!3772300 () Bool)

(assert (=> b!6194241 (= e!3772300 e!3772299)))

(declare-fun res!2562328 () Bool)

(assert (=> b!6194241 (=> (not res!2562328) (not e!3772299))))

(declare-fun call!518205 () Bool)

(assert (=> b!6194241 (= res!2562328 call!518205)))

(declare-fun b!6194242 () Bool)

(declare-fun res!2562326 () Bool)

(assert (=> b!6194242 (=> res!2562326 e!3772300)))

(assert (=> b!6194242 (= res!2562326 (not ((_ is Concat!24976) (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292))))))))

(assert (=> b!6194242 (= e!3772304 e!3772300)))

(declare-fun b!6194243 () Bool)

(declare-fun res!2562324 () Bool)

(declare-fun e!3772301 () Bool)

(assert (=> b!6194243 (=> (not res!2562324) (not e!3772301))))

(assert (=> b!6194243 (= res!2562324 call!518205)))

(assert (=> b!6194243 (= e!3772304 e!3772301)))

(declare-fun b!6194244 () Bool)

(assert (=> b!6194244 (= e!3772303 e!3772298)))

(declare-fun res!2562325 () Bool)

(assert (=> b!6194244 (= res!2562325 (not (nullable!6124 (reg!16460 (ite c!1117596 (reg!16460 r!7292) (ite c!1117597 (regOne!32775 r!7292) (regOne!32774 r!7292)))))))))

(assert (=> b!6194244 (=> (not res!2562325) (not e!3772298))))

(declare-fun bm!518200 () Bool)

(assert (=> bm!518200 (= call!518205 call!518203)))

(declare-fun b!6194245 () Bool)

(assert (=> b!6194245 (= e!3772301 call!518204)))

(assert (= (and d!1942099 (not res!2562327)) b!6194240))

(assert (= (and b!6194240 c!1117858) b!6194244))

(assert (= (and b!6194240 (not c!1117858)) b!6194238))

(assert (= (and b!6194244 res!2562325) b!6194239))

(assert (= (and b!6194238 c!1117859) b!6194243))

(assert (= (and b!6194238 (not c!1117859)) b!6194242))

(assert (= (and b!6194243 res!2562324) b!6194245))

(assert (= (and b!6194242 (not res!2562326)) b!6194241))

(assert (= (and b!6194241 res!2562328) b!6194237))

(assert (= (or b!6194245 b!6194237) bm!518199))

(assert (= (or b!6194243 b!6194241) bm!518200))

(assert (= (or b!6194239 bm!518200) bm!518198))

(declare-fun m!7028228 () Bool)

(assert (=> bm!518198 m!7028228))

(declare-fun m!7028230 () Bool)

(assert (=> bm!518199 m!7028230))

(declare-fun m!7028232 () Bool)

(assert (=> b!6194244 m!7028232))

(assert (=> bm!517997 d!1942099))

(declare-fun d!1942101 () Bool)

(assert (=> d!1942101 (= (isUnion!982 lt!2341305) ((_ is Union!16131) lt!2341305))))

(assert (=> b!6193198 d!1942101))

(declare-fun b!6194250 () Bool)

(declare-fun e!3772313 () Bool)

(assert (=> b!6194250 (= e!3772313 (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 lt!2341185 (head!12774 s!2326)))))))

(declare-fun b!6194251 () Bool)

(declare-fun res!2562337 () Bool)

(assert (=> b!6194251 (=> (not res!2562337) (not e!3772313))))

(assert (=> b!6194251 (= res!2562337 (isEmpty!36557 (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6194252 () Bool)

(declare-fun res!2562338 () Bool)

(declare-fun e!3772307 () Bool)

(assert (=> b!6194252 (=> res!2562338 e!3772307)))

(assert (=> b!6194252 (= res!2562338 (not ((_ is ElementMatch!16131) (derivativeStep!4846 lt!2341185 (head!12774 s!2326)))))))

(declare-fun e!3772309 () Bool)

(assert (=> b!6194252 (= e!3772309 e!3772307)))

(declare-fun b!6194253 () Bool)

(declare-fun e!3772308 () Bool)

(declare-fun e!3772310 () Bool)

(assert (=> b!6194253 (= e!3772308 e!3772310)))

(declare-fun res!2562336 () Bool)

(assert (=> b!6194253 (=> res!2562336 e!3772310)))

(declare-fun call!518206 () Bool)

(assert (=> b!6194253 (= res!2562336 call!518206)))

(declare-fun b!6194254 () Bool)

(declare-fun e!3772311 () Bool)

(assert (=> b!6194254 (= e!3772311 (matchR!8314 (derivativeStep!4846 (derivativeStep!4846 lt!2341185 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(declare-fun b!6194255 () Bool)

(declare-fun res!2562333 () Bool)

(assert (=> b!6194255 (=> res!2562333 e!3772310)))

(assert (=> b!6194255 (= res!2562333 (not (isEmpty!36557 (tail!11859 (tail!11859 s!2326)))))))

(declare-fun b!6194256 () Bool)

(assert (=> b!6194256 (= e!3772311 (nullable!6124 (derivativeStep!4846 lt!2341185 (head!12774 s!2326))))))

(declare-fun bm!518201 () Bool)

(assert (=> bm!518201 (= call!518206 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6194258 () Bool)

(declare-fun e!3772312 () Bool)

(declare-fun lt!2341385 () Bool)

(assert (=> b!6194258 (= e!3772312 (= lt!2341385 call!518206))))

(declare-fun b!6194259 () Bool)

(assert (=> b!6194259 (= e!3772310 (not (= (head!12774 (tail!11859 s!2326)) (c!1117312 (derivativeStep!4846 lt!2341185 (head!12774 s!2326))))))))

(declare-fun b!6194257 () Bool)

(assert (=> b!6194257 (= e!3772312 e!3772309)))

(declare-fun c!1117862 () Bool)

(assert (=> b!6194257 (= c!1117862 ((_ is EmptyLang!16131) (derivativeStep!4846 lt!2341185 (head!12774 s!2326))))))

(declare-fun d!1942103 () Bool)

(assert (=> d!1942103 e!3772312))

(declare-fun c!1117861 () Bool)

(assert (=> d!1942103 (= c!1117861 ((_ is EmptyExpr!16131) (derivativeStep!4846 lt!2341185 (head!12774 s!2326))))))

(assert (=> d!1942103 (= lt!2341385 e!3772311)))

(declare-fun c!1117860 () Bool)

(assert (=> d!1942103 (= c!1117860 (isEmpty!36557 (tail!11859 s!2326)))))

(assert (=> d!1942103 (validRegex!7867 (derivativeStep!4846 lt!2341185 (head!12774 s!2326)))))

(assert (=> d!1942103 (= (matchR!8314 (derivativeStep!4846 lt!2341185 (head!12774 s!2326)) (tail!11859 s!2326)) lt!2341385)))

(declare-fun b!6194260 () Bool)

(assert (=> b!6194260 (= e!3772307 e!3772308)))

(declare-fun res!2562340 () Bool)

(assert (=> b!6194260 (=> (not res!2562340) (not e!3772308))))

(assert (=> b!6194260 (= res!2562340 (not lt!2341385))))

(declare-fun b!6194261 () Bool)

(declare-fun res!2562335 () Bool)

(assert (=> b!6194261 (=> res!2562335 e!3772307)))

(assert (=> b!6194261 (= res!2562335 e!3772313)))

(declare-fun res!2562339 () Bool)

(assert (=> b!6194261 (=> (not res!2562339) (not e!3772313))))

(assert (=> b!6194261 (= res!2562339 lt!2341385)))

(declare-fun b!6194262 () Bool)

(declare-fun res!2562334 () Bool)

(assert (=> b!6194262 (=> (not res!2562334) (not e!3772313))))

(assert (=> b!6194262 (= res!2562334 (not call!518206))))

(declare-fun b!6194263 () Bool)

(assert (=> b!6194263 (= e!3772309 (not lt!2341385))))

(assert (= (and d!1942103 c!1117860) b!6194256))

(assert (= (and d!1942103 (not c!1117860)) b!6194254))

(assert (= (and d!1942103 c!1117861) b!6194258))

(assert (= (and d!1942103 (not c!1117861)) b!6194257))

(assert (= (and b!6194257 c!1117862) b!6194263))

(assert (= (and b!6194257 (not c!1117862)) b!6194252))

(assert (= (and b!6194252 (not res!2562338)) b!6194261))

(assert (= (and b!6194261 res!2562339) b!6194262))

(assert (= (and b!6194262 res!2562334) b!6194251))

(assert (= (and b!6194251 res!2562337) b!6194250))

(assert (= (and b!6194261 (not res!2562335)) b!6194260))

(assert (= (and b!6194260 res!2562340) b!6194253))

(assert (= (and b!6194253 (not res!2562336)) b!6194255))

(assert (= (and b!6194255 (not res!2562333)) b!6194259))

(assert (= (or b!6194258 b!6194253 b!6194262) bm!518201))

(assert (=> d!1942103 m!7026740))

(assert (=> d!1942103 m!7026744))

(assert (=> d!1942103 m!7027284))

(declare-fun m!7028234 () Bool)

(assert (=> d!1942103 m!7028234))

(assert (=> b!6194254 m!7026740))

(assert (=> b!6194254 m!7027690))

(assert (=> b!6194254 m!7027284))

(assert (=> b!6194254 m!7027690))

(declare-fun m!7028236 () Bool)

(assert (=> b!6194254 m!7028236))

(assert (=> b!6194254 m!7026740))

(assert (=> b!6194254 m!7027694))

(assert (=> b!6194254 m!7028236))

(assert (=> b!6194254 m!7027694))

(declare-fun m!7028238 () Bool)

(assert (=> b!6194254 m!7028238))

(assert (=> bm!518201 m!7026740))

(assert (=> bm!518201 m!7026744))

(assert (=> b!6194251 m!7026740))

(assert (=> b!6194251 m!7027694))

(assert (=> b!6194251 m!7027694))

(assert (=> b!6194251 m!7027774))

(assert (=> b!6194250 m!7026740))

(assert (=> b!6194250 m!7027690))

(assert (=> b!6194255 m!7026740))

(assert (=> b!6194255 m!7027694))

(assert (=> b!6194255 m!7027694))

(assert (=> b!6194255 m!7027774))

(assert (=> b!6194256 m!7027284))

(declare-fun m!7028240 () Bool)

(assert (=> b!6194256 m!7028240))

(assert (=> b!6194259 m!7026740))

(assert (=> b!6194259 m!7027690))

(assert (=> b!6193296 d!1942103))

(declare-fun b!6194264 () Bool)

(declare-fun e!3772314 () Regex!16131)

(assert (=> b!6194264 (= e!3772314 (ite (= (head!12774 s!2326) (c!1117312 lt!2341185)) EmptyExpr!16131 EmptyLang!16131))))

(declare-fun b!6194265 () Bool)

(declare-fun e!3772315 () Regex!16131)

(declare-fun call!518209 () Regex!16131)

(assert (=> b!6194265 (= e!3772315 (Union!16131 (Concat!24976 call!518209 (regTwo!32774 lt!2341185)) EmptyLang!16131))))

(declare-fun b!6194266 () Bool)

(declare-fun e!3772316 () Regex!16131)

(declare-fun call!518207 () Regex!16131)

(assert (=> b!6194266 (= e!3772316 (Concat!24976 call!518207 lt!2341185))))

(declare-fun bm!518202 () Bool)

(declare-fun c!1117865 () Bool)

(declare-fun c!1117867 () Bool)

(declare-fun call!518210 () Regex!16131)

(assert (=> bm!518202 (= call!518210 (derivativeStep!4846 (ite c!1117865 (regTwo!32775 lt!2341185) (ite c!1117867 (reg!16460 lt!2341185) (regOne!32774 lt!2341185))) (head!12774 s!2326)))))

(declare-fun b!6194267 () Bool)

(assert (=> b!6194267 (= e!3772315 (Union!16131 (Concat!24976 call!518207 (regTwo!32774 lt!2341185)) call!518209))))

(declare-fun b!6194268 () Bool)

(declare-fun e!3772318 () Regex!16131)

(assert (=> b!6194268 (= e!3772318 e!3772314)))

(declare-fun c!1117863 () Bool)

(assert (=> b!6194268 (= c!1117863 ((_ is ElementMatch!16131) lt!2341185))))

(declare-fun d!1942105 () Bool)

(declare-fun lt!2341386 () Regex!16131)

(assert (=> d!1942105 (validRegex!7867 lt!2341386)))

(assert (=> d!1942105 (= lt!2341386 e!3772318)))

(declare-fun c!1117864 () Bool)

(assert (=> d!1942105 (= c!1117864 (or ((_ is EmptyExpr!16131) lt!2341185) ((_ is EmptyLang!16131) lt!2341185)))))

(assert (=> d!1942105 (validRegex!7867 lt!2341185)))

(assert (=> d!1942105 (= (derivativeStep!4846 lt!2341185 (head!12774 s!2326)) lt!2341386)))

(declare-fun b!6194269 () Bool)

(declare-fun e!3772317 () Regex!16131)

(declare-fun call!518208 () Regex!16131)

(assert (=> b!6194269 (= e!3772317 (Union!16131 call!518208 call!518210))))

(declare-fun b!6194270 () Bool)

(declare-fun c!1117866 () Bool)

(assert (=> b!6194270 (= c!1117866 (nullable!6124 (regOne!32774 lt!2341185)))))

(assert (=> b!6194270 (= e!3772316 e!3772315)))

(declare-fun bm!518203 () Bool)

(assert (=> bm!518203 (= call!518209 call!518208)))

(declare-fun b!6194271 () Bool)

(assert (=> b!6194271 (= c!1117865 ((_ is Union!16131) lt!2341185))))

(assert (=> b!6194271 (= e!3772314 e!3772317)))

(declare-fun b!6194272 () Bool)

(assert (=> b!6194272 (= e!3772317 e!3772316)))

(assert (=> b!6194272 (= c!1117867 ((_ is Star!16131) lt!2341185))))

(declare-fun bm!518204 () Bool)

(assert (=> bm!518204 (= call!518208 (derivativeStep!4846 (ite c!1117865 (regOne!32775 lt!2341185) (ite c!1117866 (regTwo!32774 lt!2341185) (regOne!32774 lt!2341185))) (head!12774 s!2326)))))

(declare-fun bm!518205 () Bool)

(assert (=> bm!518205 (= call!518207 call!518210)))

(declare-fun b!6194273 () Bool)

(assert (=> b!6194273 (= e!3772318 EmptyLang!16131)))

(assert (= (and d!1942105 c!1117864) b!6194273))

(assert (= (and d!1942105 (not c!1117864)) b!6194268))

(assert (= (and b!6194268 c!1117863) b!6194264))

(assert (= (and b!6194268 (not c!1117863)) b!6194271))

(assert (= (and b!6194271 c!1117865) b!6194269))

(assert (= (and b!6194271 (not c!1117865)) b!6194272))

(assert (= (and b!6194272 c!1117867) b!6194266))

(assert (= (and b!6194272 (not c!1117867)) b!6194270))

(assert (= (and b!6194270 c!1117866) b!6194267))

(assert (= (and b!6194270 (not c!1117866)) b!6194265))

(assert (= (or b!6194267 b!6194265) bm!518203))

(assert (= (or b!6194266 b!6194267) bm!518205))

(assert (= (or b!6194269 bm!518205) bm!518202))

(assert (= (or b!6194269 bm!518203) bm!518204))

(assert (=> bm!518202 m!7026736))

(declare-fun m!7028242 () Bool)

(assert (=> bm!518202 m!7028242))

(declare-fun m!7028244 () Bool)

(assert (=> d!1942105 m!7028244))

(assert (=> d!1942105 m!7027256))

(declare-fun m!7028246 () Bool)

(assert (=> b!6194270 m!7028246))

(assert (=> bm!518204 m!7026736))

(declare-fun m!7028248 () Bool)

(assert (=> bm!518204 m!7028248))

(assert (=> b!6193296 d!1942105))

(assert (=> b!6193296 d!1941801))

(assert (=> b!6193296 d!1941813))

(assert (=> bs!1536637 d!1941631))

(assert (=> d!1941635 d!1941639))

(assert (=> d!1941635 d!1941637))

(declare-fun e!3772319 () Bool)

(declare-fun d!1942107 () Bool)

(assert (=> d!1942107 (= (matchZipper!2143 ((_ map or) lt!2341188 lt!2341164) (t!378206 s!2326)) e!3772319)))

(declare-fun res!2562341 () Bool)

(assert (=> d!1942107 (=> res!2562341 e!3772319)))

(assert (=> d!1942107 (= res!2562341 (matchZipper!2143 lt!2341188 (t!378206 s!2326)))))

(assert (=> d!1942107 true))

(declare-fun _$48!1832 () Unit!157827)

(assert (=> d!1942107 (= (choose!46013 lt!2341188 lt!2341164 (t!378206 s!2326)) _$48!1832)))

(declare-fun b!6194274 () Bool)

(assert (=> b!6194274 (= e!3772319 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1942107 (not res!2562341)) b!6194274))

(assert (=> d!1942107 m!7026482))

(assert (=> d!1942107 m!7026480))

(assert (=> b!6194274 m!7026452))

(assert (=> d!1941635 d!1942107))

(assert (=> bm!517925 d!1941747))

(declare-fun bs!1536982 () Bool)

(declare-fun d!1942109 () Bool)

(assert (= bs!1536982 (and d!1942109 d!1941855)))

(declare-fun lambda!338324 () Int)

(assert (=> bs!1536982 (= lambda!338324 lambda!338289)))

(declare-fun bs!1536983 () Bool)

(assert (= bs!1536983 (and d!1942109 d!1941871)))

(assert (=> bs!1536983 (= lambda!338324 lambda!338291)))

(declare-fun bs!1536984 () Bool)

(assert (= bs!1536984 (and d!1942109 d!1941929)))

(assert (=> bs!1536984 (= lambda!338324 lambda!338294)))

(declare-fun bs!1536985 () Bool)

(assert (= bs!1536985 (and d!1942109 d!1941975)))

(assert (=> bs!1536985 (= lambda!338324 lambda!338301)))

(assert (=> d!1942109 (= (nullableZipper!1907 lt!2341188) (exists!2468 lt!2341188 lambda!338324))))

(declare-fun bs!1536986 () Bool)

(assert (= bs!1536986 d!1942109))

(declare-fun m!7028250 () Bool)

(assert (=> bs!1536986 m!7028250))

(assert (=> b!6193234 d!1942109))

(declare-fun d!1942111 () Bool)

(assert (=> d!1942111 (= ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117521 c!1117523) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (regOne!32775 (regOne!32774 r!7292)))) (Cons!64568 (ite (or c!1117521 c!1117523) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))) (regOne!32775 (regOne!32774 r!7292))) (exprs!6015 lt!2341183)))))

(assert (=> bm!517971 d!1942111))

(declare-fun b!6194275 () Bool)

(declare-fun e!3772326 () Bool)

(assert (=> b!6194275 (= e!3772326 (= (head!12774 s!2326) (c!1117312 (regTwo!32774 r!7292))))))

(declare-fun b!6194276 () Bool)

(declare-fun res!2562346 () Bool)

(assert (=> b!6194276 (=> (not res!2562346) (not e!3772326))))

(assert (=> b!6194276 (= res!2562346 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun b!6194277 () Bool)

(declare-fun res!2562347 () Bool)

(declare-fun e!3772320 () Bool)

(assert (=> b!6194277 (=> res!2562347 e!3772320)))

(assert (=> b!6194277 (= res!2562347 (not ((_ is ElementMatch!16131) (regTwo!32774 r!7292))))))

(declare-fun e!3772322 () Bool)

(assert (=> b!6194277 (= e!3772322 e!3772320)))

(declare-fun b!6194278 () Bool)

(declare-fun e!3772321 () Bool)

(declare-fun e!3772323 () Bool)

(assert (=> b!6194278 (= e!3772321 e!3772323)))

(declare-fun res!2562345 () Bool)

(assert (=> b!6194278 (=> res!2562345 e!3772323)))

(declare-fun call!518211 () Bool)

(assert (=> b!6194278 (= res!2562345 call!518211)))

(declare-fun b!6194279 () Bool)

(declare-fun e!3772324 () Bool)

(assert (=> b!6194279 (= e!3772324 (matchR!8314 (derivativeStep!4846 (regTwo!32774 r!7292) (head!12774 s!2326)) (tail!11859 s!2326)))))

(declare-fun b!6194280 () Bool)

(declare-fun res!2562342 () Bool)

(assert (=> b!6194280 (=> res!2562342 e!3772323)))

(assert (=> b!6194280 (= res!2562342 (not (isEmpty!36557 (tail!11859 s!2326))))))

(declare-fun b!6194281 () Bool)

(assert (=> b!6194281 (= e!3772324 (nullable!6124 (regTwo!32774 r!7292)))))

(declare-fun bm!518206 () Bool)

(assert (=> bm!518206 (= call!518211 (isEmpty!36557 s!2326))))

(declare-fun b!6194283 () Bool)

(declare-fun e!3772325 () Bool)

(declare-fun lt!2341387 () Bool)

(assert (=> b!6194283 (= e!3772325 (= lt!2341387 call!518211))))

(declare-fun b!6194284 () Bool)

(assert (=> b!6194284 (= e!3772323 (not (= (head!12774 s!2326) (c!1117312 (regTwo!32774 r!7292)))))))

(declare-fun b!6194282 () Bool)

(assert (=> b!6194282 (= e!3772325 e!3772322)))

(declare-fun c!1117870 () Bool)

(assert (=> b!6194282 (= c!1117870 ((_ is EmptyLang!16131) (regTwo!32774 r!7292)))))

(declare-fun d!1942113 () Bool)

(assert (=> d!1942113 e!3772325))

(declare-fun c!1117869 () Bool)

(assert (=> d!1942113 (= c!1117869 ((_ is EmptyExpr!16131) (regTwo!32774 r!7292)))))

(assert (=> d!1942113 (= lt!2341387 e!3772324)))

(declare-fun c!1117868 () Bool)

(assert (=> d!1942113 (= c!1117868 (isEmpty!36557 s!2326))))

(assert (=> d!1942113 (validRegex!7867 (regTwo!32774 r!7292))))

(assert (=> d!1942113 (= (matchR!8314 (regTwo!32774 r!7292) s!2326) lt!2341387)))

(declare-fun b!6194285 () Bool)

(assert (=> b!6194285 (= e!3772320 e!3772321)))

(declare-fun res!2562349 () Bool)

(assert (=> b!6194285 (=> (not res!2562349) (not e!3772321))))

(assert (=> b!6194285 (= res!2562349 (not lt!2341387))))

(declare-fun b!6194286 () Bool)

(declare-fun res!2562344 () Bool)

(assert (=> b!6194286 (=> res!2562344 e!3772320)))

(assert (=> b!6194286 (= res!2562344 e!3772326)))

(declare-fun res!2562348 () Bool)

(assert (=> b!6194286 (=> (not res!2562348) (not e!3772326))))

(assert (=> b!6194286 (= res!2562348 lt!2341387)))

(declare-fun b!6194287 () Bool)

(declare-fun res!2562343 () Bool)

(assert (=> b!6194287 (=> (not res!2562343) (not e!3772326))))

(assert (=> b!6194287 (= res!2562343 (not call!518211))))

(declare-fun b!6194288 () Bool)

(assert (=> b!6194288 (= e!3772322 (not lt!2341387))))

(assert (= (and d!1942113 c!1117868) b!6194281))

(assert (= (and d!1942113 (not c!1117868)) b!6194279))

(assert (= (and d!1942113 c!1117869) b!6194283))

(assert (= (and d!1942113 (not c!1117869)) b!6194282))

(assert (= (and b!6194282 c!1117870) b!6194288))

(assert (= (and b!6194282 (not c!1117870)) b!6194277))

(assert (= (and b!6194277 (not res!2562347)) b!6194286))

(assert (= (and b!6194286 res!2562348) b!6194287))

(assert (= (and b!6194287 res!2562343) b!6194276))

(assert (= (and b!6194276 res!2562346) b!6194275))

(assert (= (and b!6194286 (not res!2562344)) b!6194285))

(assert (= (and b!6194285 res!2562349) b!6194278))

(assert (= (and b!6194278 (not res!2562345)) b!6194280))

(assert (= (and b!6194280 (not res!2562342)) b!6194284))

(assert (= (or b!6194283 b!6194278 b!6194287) bm!518206))

(assert (=> d!1942113 m!7026692))

(declare-fun m!7028252 () Bool)

(assert (=> d!1942113 m!7028252))

(assert (=> b!6194279 m!7026736))

(assert (=> b!6194279 m!7026736))

(declare-fun m!7028254 () Bool)

(assert (=> b!6194279 m!7028254))

(assert (=> b!6194279 m!7026740))

(assert (=> b!6194279 m!7028254))

(assert (=> b!6194279 m!7026740))

(declare-fun m!7028256 () Bool)

(assert (=> b!6194279 m!7028256))

(assert (=> bm!518206 m!7026692))

(assert (=> b!6194276 m!7026740))

(assert (=> b!6194276 m!7026740))

(assert (=> b!6194276 m!7026744))

(assert (=> b!6194275 m!7026736))

(assert (=> b!6194280 m!7026740))

(assert (=> b!6194280 m!7026740))

(assert (=> b!6194280 m!7026744))

(declare-fun m!7028258 () Bool)

(assert (=> b!6194281 m!7028258))

(assert (=> b!6194284 m!7026736))

(assert (=> b!6192896 d!1942113))

(assert (=> b!6193249 d!1941811))

(assert (=> b!6193249 d!1941813))

(declare-fun bs!1536988 () Bool)

(declare-fun d!1942115 () Bool)

(assert (= bs!1536988 (and d!1942115 d!1941975)))

(declare-fun lambda!338326 () Int)

(assert (=> bs!1536988 (= lambda!338326 lambda!338301)))

(declare-fun bs!1536989 () Bool)

(assert (= bs!1536989 (and d!1942115 d!1942109)))

(assert (=> bs!1536989 (= lambda!338326 lambda!338324)))

(declare-fun bs!1536990 () Bool)

(assert (= bs!1536990 (and d!1942115 d!1941855)))

(assert (=> bs!1536990 (= lambda!338326 lambda!338289)))

(declare-fun bs!1536991 () Bool)

(assert (= bs!1536991 (and d!1942115 d!1941871)))

(assert (=> bs!1536991 (= lambda!338326 lambda!338291)))

(declare-fun bs!1536992 () Bool)

(assert (= bs!1536992 (and d!1942115 d!1941929)))

(assert (=> bs!1536992 (= lambda!338326 lambda!338294)))

(assert (=> d!1942115 (= (nullableZipper!1907 lt!2341182) (exists!2468 lt!2341182 lambda!338326))))

(declare-fun bs!1536993 () Bool)

(assert (= bs!1536993 d!1942115))

(declare-fun m!7028260 () Bool)

(assert (=> bs!1536993 m!7028260))

(assert (=> b!6193245 d!1942115))

(declare-fun d!1942117 () Bool)

(assert (=> d!1942117 true))

(assert (=> d!1942117 true))

(declare-fun res!2562352 () Bool)

(assert (=> d!1942117 (= (choose!46003 lambda!338191) res!2562352)))

(assert (=> d!1941515 d!1942117))

(declare-fun d!1942123 () Bool)

(assert (=> d!1942123 (= (isEmpty!36558 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326)) (not ((_ is Some!16021) (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326))))))

(assert (=> d!1941545 d!1942123))

(declare-fun d!1942127 () Bool)

(assert (=> d!1942127 true))

(assert (=> d!1942127 true))

(declare-fun res!2562355 () Bool)

(assert (=> d!1942127 (= (choose!46003 lambda!338192) res!2562355)))

(assert (=> d!1941513 d!1942127))

(declare-fun b!6194293 () Bool)

(declare-fun e!3772330 () (InoxSet Context!11030))

(declare-fun call!518212 () (InoxSet Context!11030))

(assert (=> b!6194293 (= e!3772330 call!518212)))

(declare-fun b!6194294 () Bool)

(assert (=> b!6194294 (= e!3772330 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1942129 () Bool)

(declare-fun c!1117872 () Bool)

(declare-fun e!3772332 () Bool)

(assert (=> d!1942129 (= c!1117872 e!3772332)))

(declare-fun res!2562356 () Bool)

(assert (=> d!1942129 (=> (not res!2562356) (not e!3772332))))

(assert (=> d!1942129 (= res!2562356 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203))))))))

(declare-fun e!3772331 () (InoxSet Context!11030))

(assert (=> d!1942129 (= (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341203))) (h!71018 s!2326)) e!3772331)))

(declare-fun b!6194295 () Bool)

(assert (=> b!6194295 (= e!3772331 e!3772330)))

(declare-fun c!1117873 () Bool)

(assert (=> b!6194295 (= c!1117873 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203))))))))

(declare-fun b!6194296 () Bool)

(assert (=> b!6194296 (= e!3772331 ((_ map or) call!518212 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203)))))) (h!71018 s!2326))))))

(declare-fun bm!518207 () Bool)

(assert (=> bm!518207 (= call!518212 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203)))))) (h!71018 s!2326)))))

(declare-fun b!6194297 () Bool)

(assert (=> b!6194297 (= e!3772332 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341203)))))))))

(assert (= (and d!1942129 res!2562356) b!6194297))

(assert (= (and d!1942129 c!1117872) b!6194296))

(assert (= (and d!1942129 (not c!1117872)) b!6194295))

(assert (= (and b!6194295 c!1117873) b!6194293))

(assert (= (and b!6194295 (not c!1117873)) b!6194294))

(assert (= (or b!6194296 b!6194293) bm!518207))

(declare-fun m!7028280 () Bool)

(assert (=> b!6194296 m!7028280))

(declare-fun m!7028282 () Bool)

(assert (=> bm!518207 m!7028282))

(declare-fun m!7028284 () Bool)

(assert (=> b!6194297 m!7028284))

(assert (=> b!6193050 d!1942129))

(declare-fun b!6194307 () Bool)

(declare-fun e!3772340 () (InoxSet Context!11030))

(declare-fun call!518216 () (InoxSet Context!11030))

(assert (=> b!6194307 (= e!3772340 call!518216)))

(declare-fun b!6194308 () Bool)

(declare-fun e!3772341 () (InoxSet Context!11030))

(assert (=> b!6194308 (= e!3772341 e!3772340)))

(declare-fun c!1117879 () Bool)

(assert (=> b!6194308 (= c!1117879 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341183))))))

(declare-fun b!6194309 () Bool)

(declare-fun e!3772342 () (InoxSet Context!11030))

(declare-fun call!518217 () (InoxSet Context!11030))

(declare-fun call!518219 () (InoxSet Context!11030))

(assert (=> b!6194309 (= e!3772342 ((_ map or) call!518217 call!518219))))

(declare-fun b!6194310 () Bool)

(declare-fun e!3772343 () (InoxSet Context!11030))

(assert (=> b!6194310 (= e!3772343 ((as const (Array Context!11030 Bool)) false))))

(declare-fun c!1117876 () Bool)

(declare-fun bm!518211 () Bool)

(declare-fun call!518220 () List!64692)

(assert (=> bm!518211 (= call!518219 (derivationStepZipperDown!1379 (ite c!1117876 (regTwo!32775 (h!71016 (exprs!6015 lt!2341183))) (regOne!32774 (h!71016 (exprs!6015 lt!2341183)))) (ite c!1117876 (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (Context!11031 call!518220)) (h!71018 s!2326)))))

(declare-fun b!6194311 () Bool)

(declare-fun e!3772345 () Bool)

(assert (=> b!6194311 (= e!3772345 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 lt!2341183)))))))

(declare-fun bm!518212 () Bool)

(declare-fun c!1117877 () Bool)

(assert (=> bm!518212 (= call!518220 ($colon$colon!2002 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183)))) (ite (or c!1117877 c!1117879) (regTwo!32774 (h!71016 (exprs!6015 lt!2341183))) (h!71016 (exprs!6015 lt!2341183)))))))

(declare-fun bm!518213 () Bool)

(declare-fun call!518218 () (InoxSet Context!11030))

(assert (=> bm!518213 (= call!518216 call!518218)))

(declare-fun bm!518214 () Bool)

(assert (=> bm!518214 (= call!518218 call!518217)))

(declare-fun call!518221 () List!64692)

(declare-fun bm!518215 () Bool)

(assert (=> bm!518215 (= call!518217 (derivationStepZipperDown!1379 (ite c!1117876 (regOne!32775 (h!71016 (exprs!6015 lt!2341183))) (ite c!1117877 (regTwo!32774 (h!71016 (exprs!6015 lt!2341183))) (ite c!1117879 (regOne!32774 (h!71016 (exprs!6015 lt!2341183))) (reg!16460 (h!71016 (exprs!6015 lt!2341183)))))) (ite (or c!1117876 c!1117877) (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (Context!11031 call!518221)) (h!71018 s!2326)))))

(declare-fun b!6194312 () Bool)

(assert (=> b!6194312 (= c!1117877 e!3772345)))

(declare-fun res!2562362 () Bool)

(assert (=> b!6194312 (=> (not res!2562362) (not e!3772345))))

(assert (=> b!6194312 (= res!2562362 ((_ is Concat!24976) (h!71016 (exprs!6015 lt!2341183))))))

(assert (=> b!6194312 (= e!3772342 e!3772341)))

(declare-fun b!6194313 () Bool)

(declare-fun e!3772344 () (InoxSet Context!11030))

(assert (=> b!6194313 (= e!3772344 (store ((as const (Array Context!11030 Bool)) false) (Context!11031 (t!378204 (exprs!6015 lt!2341183))) true))))

(declare-fun b!6194314 () Bool)

(assert (=> b!6194314 (= e!3772343 call!518216)))

(declare-fun d!1942135 () Bool)

(declare-fun c!1117878 () Bool)

(assert (=> d!1942135 (= c!1117878 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 lt!2341183))) (= (c!1117312 (h!71016 (exprs!6015 lt!2341183))) (h!71018 s!2326))))))

(assert (=> d!1942135 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 lt!2341183)) (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (h!71018 s!2326)) e!3772344)))

(declare-fun bm!518216 () Bool)

(assert (=> bm!518216 (= call!518221 call!518220)))

(declare-fun b!6194315 () Bool)

(declare-fun c!1117880 () Bool)

(assert (=> b!6194315 (= c!1117880 ((_ is Star!16131) (h!71016 (exprs!6015 lt!2341183))))))

(assert (=> b!6194315 (= e!3772340 e!3772343)))

(declare-fun b!6194316 () Bool)

(assert (=> b!6194316 (= e!3772344 e!3772342)))

(assert (=> b!6194316 (= c!1117876 ((_ is Union!16131) (h!71016 (exprs!6015 lt!2341183))))))

(declare-fun b!6194317 () Bool)

(assert (=> b!6194317 (= e!3772341 ((_ map or) call!518219 call!518218))))

(assert (= (and d!1942135 c!1117878) b!6194313))

(assert (= (and d!1942135 (not c!1117878)) b!6194316))

(assert (= (and b!6194316 c!1117876) b!6194309))

(assert (= (and b!6194316 (not c!1117876)) b!6194312))

(assert (= (and b!6194312 res!2562362) b!6194311))

(assert (= (and b!6194312 c!1117877) b!6194317))

(assert (= (and b!6194312 (not c!1117877)) b!6194308))

(assert (= (and b!6194308 c!1117879) b!6194307))

(assert (= (and b!6194308 (not c!1117879)) b!6194315))

(assert (= (and b!6194315 c!1117880) b!6194314))

(assert (= (and b!6194315 (not c!1117880)) b!6194310))

(assert (= (or b!6194307 b!6194314) bm!518216))

(assert (= (or b!6194307 b!6194314) bm!518213))

(assert (= (or b!6194317 bm!518216) bm!518212))

(assert (= (or b!6194317 bm!518213) bm!518214))

(assert (= (or b!6194309 b!6194317) bm!518211))

(assert (= (or b!6194309 bm!518214) bm!518215))

(declare-fun m!7028294 () Bool)

(assert (=> b!6194311 m!7028294))

(declare-fun m!7028296 () Bool)

(assert (=> bm!518215 m!7028296))

(declare-fun m!7028298 () Bool)

(assert (=> bm!518211 m!7028298))

(declare-fun m!7028300 () Bool)

(assert (=> bm!518212 m!7028300))

(declare-fun m!7028302 () Bool)

(assert (=> b!6194313 m!7028302))

(assert (=> bm!517976 d!1942135))

(assert (=> d!1941639 d!1941865))

(declare-fun d!1942141 () Bool)

(assert (=> d!1942141 (= (isEmpty!36555 (unfocusZipperList!1552 zl!343)) ((_ is Nil!64568) (unfocusZipperList!1552 zl!343)))))

(assert (=> b!6193190 d!1942141))

(declare-fun bs!1537001 () Bool)

(declare-fun d!1942143 () Bool)

(assert (= bs!1537001 (and d!1942143 d!1941975)))

(declare-fun lambda!338328 () Int)

(assert (=> bs!1537001 (= lambda!338328 lambda!338301)))

(declare-fun bs!1537002 () Bool)

(assert (= bs!1537002 (and d!1942143 d!1942115)))

(assert (=> bs!1537002 (= lambda!338328 lambda!338326)))

(declare-fun bs!1537003 () Bool)

(assert (= bs!1537003 (and d!1942143 d!1942109)))

(assert (=> bs!1537003 (= lambda!338328 lambda!338324)))

(declare-fun bs!1537004 () Bool)

(assert (= bs!1537004 (and d!1942143 d!1941855)))

(assert (=> bs!1537004 (= lambda!338328 lambda!338289)))

(declare-fun bs!1537005 () Bool)

(assert (= bs!1537005 (and d!1942143 d!1941871)))

(assert (=> bs!1537005 (= lambda!338328 lambda!338291)))

(declare-fun bs!1537006 () Bool)

(assert (= bs!1537006 (and d!1942143 d!1941929)))

(assert (=> bs!1537006 (= lambda!338328 lambda!338294)))

(assert (=> d!1942143 (= (nullableZipper!1907 ((_ map or) lt!2341182 lt!2341164)) (exists!2468 ((_ map or) lt!2341182 lt!2341164) lambda!338328))))

(declare-fun bs!1537007 () Bool)

(assert (= bs!1537007 d!1942143))

(declare-fun m!7028318 () Bool)

(assert (=> bs!1537007 m!7028318))

(assert (=> b!6193352 d!1942143))

(assert (=> b!6193257 d!1941801))

(declare-fun b!6194332 () Bool)

(declare-fun e!3772353 () (InoxSet Context!11030))

(declare-fun call!518223 () (InoxSet Context!11030))

(assert (=> b!6194332 (= e!3772353 call!518223)))

(declare-fun b!6194333 () Bool)

(assert (=> b!6194333 (= e!3772353 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1942145 () Bool)

(declare-fun c!1117884 () Bool)

(declare-fun e!3772355 () Bool)

(assert (=> d!1942145 (= c!1117884 e!3772355)))

(declare-fun res!2562371 () Bool)

(assert (=> d!1942145 (=> (not res!2562371) (not e!3772355))))

(assert (=> d!1942145 (= res!2562371 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))))

(declare-fun e!3772354 () (InoxSet Context!11030))

(assert (=> d!1942145 (= (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))) (h!71018 s!2326)) e!3772354)))

(declare-fun b!6194334 () Bool)

(assert (=> b!6194334 (= e!3772354 e!3772353)))

(declare-fun c!1117885 () Bool)

(assert (=> b!6194334 (= c!1117885 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))))))

(declare-fun b!6194335 () Bool)

(assert (=> b!6194335 (= e!3772354 ((_ map or) call!518223 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))) (h!71018 s!2326))))))

(declare-fun bm!518218 () Bool)

(assert (=> bm!518218 (= call!518223 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343)))))))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))) (h!71018 s!2326)))))

(declare-fun b!6194336 () Bool)

(assert (=> b!6194336 (= e!3772355 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (Cons!64568 (h!71016 (exprs!6015 (h!71017 zl!343))) (t!378204 (exprs!6015 (h!71017 zl!343))))))))))))))

(assert (= (and d!1942145 res!2562371) b!6194336))

(assert (= (and d!1942145 c!1117884) b!6194335))

(assert (= (and d!1942145 (not c!1117884)) b!6194334))

(assert (= (and b!6194334 c!1117885) b!6194332))

(assert (= (and b!6194334 (not c!1117885)) b!6194333))

(assert (= (or b!6194335 b!6194332) bm!518218))

(declare-fun m!7028320 () Bool)

(assert (=> b!6194335 m!7028320))

(declare-fun m!7028324 () Bool)

(assert (=> bm!518218 m!7028324))

(declare-fun m!7028328 () Bool)

(assert (=> b!6194336 m!7028328))

(assert (=> b!6193213 d!1942145))

(assert (=> d!1941665 d!1941747))

(declare-fun b!6194342 () Bool)

(declare-fun e!3772360 () Bool)

(declare-fun call!518226 () Bool)

(assert (=> b!6194342 (= e!3772360 call!518226)))

(declare-fun b!6194343 () Bool)

(declare-fun e!3772364 () Bool)

(declare-fun e!3772365 () Bool)

(assert (=> b!6194343 (= e!3772364 e!3772365)))

(declare-fun c!1117889 () Bool)

(assert (=> b!6194343 (= c!1117889 ((_ is Union!16131) lt!2341185))))

(declare-fun b!6194344 () Bool)

(declare-fun e!3772359 () Bool)

(declare-fun call!518225 () Bool)

(assert (=> b!6194344 (= e!3772359 call!518225)))

(declare-fun b!6194345 () Bool)

(declare-fun e!3772363 () Bool)

(assert (=> b!6194345 (= e!3772363 e!3772364)))

(declare-fun c!1117888 () Bool)

(assert (=> b!6194345 (= c!1117888 ((_ is Star!16131) lt!2341185))))

(declare-fun d!1942149 () Bool)

(declare-fun res!2562376 () Bool)

(assert (=> d!1942149 (=> res!2562376 e!3772363)))

(assert (=> d!1942149 (= res!2562376 ((_ is ElementMatch!16131) lt!2341185))))

(assert (=> d!1942149 (= (validRegex!7867 lt!2341185) e!3772363)))

(declare-fun bm!518220 () Bool)

(assert (=> bm!518220 (= call!518225 (validRegex!7867 (ite c!1117888 (reg!16460 lt!2341185) (ite c!1117889 (regOne!32775 lt!2341185) (regOne!32774 lt!2341185)))))))

(declare-fun bm!518221 () Bool)

(assert (=> bm!518221 (= call!518226 (validRegex!7867 (ite c!1117889 (regTwo!32775 lt!2341185) (regTwo!32774 lt!2341185))))))

(declare-fun b!6194346 () Bool)

(declare-fun e!3772361 () Bool)

(assert (=> b!6194346 (= e!3772361 e!3772360)))

(declare-fun res!2562377 () Bool)

(assert (=> b!6194346 (=> (not res!2562377) (not e!3772360))))

(declare-fun call!518227 () Bool)

(assert (=> b!6194346 (= res!2562377 call!518227)))

(declare-fun b!6194347 () Bool)

(declare-fun res!2562375 () Bool)

(assert (=> b!6194347 (=> res!2562375 e!3772361)))

(assert (=> b!6194347 (= res!2562375 (not ((_ is Concat!24976) lt!2341185)))))

(assert (=> b!6194347 (= e!3772365 e!3772361)))

(declare-fun b!6194348 () Bool)

(declare-fun res!2562373 () Bool)

(declare-fun e!3772362 () Bool)

(assert (=> b!6194348 (=> (not res!2562373) (not e!3772362))))

(assert (=> b!6194348 (= res!2562373 call!518227)))

(assert (=> b!6194348 (= e!3772365 e!3772362)))

(declare-fun b!6194349 () Bool)

(assert (=> b!6194349 (= e!3772364 e!3772359)))

(declare-fun res!2562374 () Bool)

(assert (=> b!6194349 (= res!2562374 (not (nullable!6124 (reg!16460 lt!2341185))))))

(assert (=> b!6194349 (=> (not res!2562374) (not e!3772359))))

(declare-fun bm!518222 () Bool)

(assert (=> bm!518222 (= call!518227 call!518225)))

(declare-fun b!6194350 () Bool)

(assert (=> b!6194350 (= e!3772362 call!518226)))

(assert (= (and d!1942149 (not res!2562376)) b!6194345))

(assert (= (and b!6194345 c!1117888) b!6194349))

(assert (= (and b!6194345 (not c!1117888)) b!6194343))

(assert (= (and b!6194349 res!2562374) b!6194344))

(assert (= (and b!6194343 c!1117889) b!6194348))

(assert (= (and b!6194343 (not c!1117889)) b!6194347))

(assert (= (and b!6194348 res!2562373) b!6194350))

(assert (= (and b!6194347 (not res!2562375)) b!6194346))

(assert (= (and b!6194346 res!2562377) b!6194342))

(assert (= (or b!6194350 b!6194342) bm!518221))

(assert (= (or b!6194348 b!6194346) bm!518222))

(assert (= (or b!6194344 bm!518222) bm!518220))

(declare-fun m!7028338 () Bool)

(assert (=> bm!518220 m!7028338))

(declare-fun m!7028340 () Bool)

(assert (=> bm!518221 m!7028340))

(declare-fun m!7028342 () Bool)

(assert (=> b!6194349 m!7028342))

(assert (=> d!1941665 d!1942149))

(declare-fun d!1942155 () Bool)

(declare-fun c!1117897 () Bool)

(assert (=> d!1942155 (= c!1117897 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun e!3772375 () Bool)

(assert (=> d!1942155 (= (matchZipper!2143 (derivationStepZipper!2099 z!1189 (head!12774 s!2326)) (tail!11859 s!2326)) e!3772375)))

(declare-fun b!6194362 () Bool)

(assert (=> b!6194362 (= e!3772375 (nullableZipper!1907 (derivationStepZipper!2099 z!1189 (head!12774 s!2326))))))

(declare-fun b!6194363 () Bool)

(assert (=> b!6194363 (= e!3772375 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 z!1189 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(assert (= (and d!1942155 c!1117897) b!6194362))

(assert (= (and d!1942155 (not c!1117897)) b!6194363))

(assert (=> d!1942155 m!7026740))

(assert (=> d!1942155 m!7026744))

(assert (=> b!6194362 m!7026986))

(declare-fun m!7028344 () Bool)

(assert (=> b!6194362 m!7028344))

(assert (=> b!6194363 m!7026740))

(assert (=> b!6194363 m!7027690))

(assert (=> b!6194363 m!7026986))

(assert (=> b!6194363 m!7027690))

(declare-fun m!7028346 () Bool)

(assert (=> b!6194363 m!7028346))

(assert (=> b!6194363 m!7026740))

(assert (=> b!6194363 m!7027694))

(assert (=> b!6194363 m!7028346))

(assert (=> b!6194363 m!7027694))

(declare-fun m!7028348 () Bool)

(assert (=> b!6194363 m!7028348))

(assert (=> b!6193000 d!1942155))

(declare-fun bs!1537008 () Bool)

(declare-fun d!1942157 () Bool)

(assert (= bs!1537008 (and d!1942157 d!1942039)))

(declare-fun lambda!338329 () Int)

(assert (=> bs!1537008 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338306))))

(declare-fun bs!1537009 () Bool)

(assert (= bs!1537009 (and d!1942157 d!1941795)))

(assert (=> bs!1537009 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338282))))

(declare-fun bs!1537010 () Bool)

(assert (= bs!1537010 (and d!1942157 b!6192421)))

(assert (=> bs!1537010 (= (= (head!12774 s!2326) (h!71018 s!2326)) (= lambda!338329 lambda!338193))))

(declare-fun bs!1537011 () Bool)

(assert (= bs!1537011 (and d!1942157 d!1941861)))

(assert (=> bs!1537011 (= lambda!338329 lambda!338290)))

(declare-fun bs!1537012 () Bool)

(assert (= bs!1537012 (and d!1942157 d!1941851)))

(assert (=> bs!1537012 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338286))))

(declare-fun bs!1537013 () Bool)

(assert (= bs!1537013 (and d!1942157 d!1942023)))

(assert (=> bs!1537013 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338305))))

(declare-fun bs!1537014 () Bool)

(assert (= bs!1537014 (and d!1942157 d!1941757)))

(assert (=> bs!1537014 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338275))))

(declare-fun bs!1537015 () Bool)

(assert (= bs!1537015 (and d!1942157 d!1942013)))

(assert (=> bs!1537015 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338329 lambda!338304))))

(assert (=> d!1942157 true))

(assert (=> d!1942157 (= (derivationStepZipper!2099 z!1189 (head!12774 s!2326)) (flatMap!1636 z!1189 lambda!338329))))

(declare-fun bs!1537016 () Bool)

(assert (= bs!1537016 d!1942157))

(declare-fun m!7028352 () Bool)

(assert (=> bs!1537016 m!7028352))

(assert (=> b!6193000 d!1942157))

(assert (=> b!6193000 d!1941801))

(assert (=> b!6193000 d!1941813))

(declare-fun d!1942159 () Bool)

(assert (=> d!1942159 (= (isEmpty!36555 lt!2341187) ((_ is Nil!64568) lt!2341187))))

(assert (=> b!6193315 d!1942159))

(assert (=> d!1941645 d!1941865))

(declare-fun d!1942161 () Bool)

(assert (=> d!1942161 (= (nullable!6124 (reg!16460 (regOne!32775 (regOne!32774 r!7292)))) (nullableFct!2082 (reg!16460 (regOne!32775 (regOne!32774 r!7292)))))))

(declare-fun bs!1537017 () Bool)

(assert (= bs!1537017 d!1942161))

(declare-fun m!7028358 () Bool)

(assert (=> bs!1537017 m!7028358))

(assert (=> b!6193407 d!1942161))

(declare-fun d!1942163 () Bool)

(declare-fun res!2562380 () Bool)

(declare-fun e!3772376 () Bool)

(assert (=> d!1942163 (=> res!2562380 e!3772376)))

(assert (=> d!1942163 (= res!2562380 ((_ is Nil!64568) lt!2341308))))

(assert (=> d!1942163 (= (forall!15247 lt!2341308 lambda!338252) e!3772376)))

(declare-fun b!6194369 () Bool)

(declare-fun e!3772377 () Bool)

(assert (=> b!6194369 (= e!3772376 e!3772377)))

(declare-fun res!2562381 () Bool)

(assert (=> b!6194369 (=> (not res!2562381) (not e!3772377))))

(assert (=> b!6194369 (= res!2562381 (dynLambda!25464 lambda!338252 (h!71016 lt!2341308)))))

(declare-fun b!6194370 () Bool)

(assert (=> b!6194370 (= e!3772377 (forall!15247 (t!378204 lt!2341308) lambda!338252))))

(assert (= (and d!1942163 (not res!2562380)) b!6194369))

(assert (= (and b!6194369 res!2562381) b!6194370))

(declare-fun b_lambda!235651 () Bool)

(assert (=> (not b_lambda!235651) (not b!6194369)))

(declare-fun m!7028366 () Bool)

(assert (=> b!6194369 m!7028366))

(declare-fun m!7028368 () Bool)

(assert (=> b!6194370 m!7028368))

(assert (=> d!1941617 d!1942163))

(declare-fun bs!1537019 () Bool)

(declare-fun d!1942171 () Bool)

(assert (= bs!1537019 (and d!1942171 d!1941673)))

(declare-fun lambda!338330 () Int)

(assert (=> bs!1537019 (= lambda!338330 lambda!338262)))

(declare-fun bs!1537020 () Bool)

(assert (= bs!1537020 (and d!1942171 d!1941667)))

(assert (=> bs!1537020 (= lambda!338330 lambda!338257)))

(declare-fun bs!1537021 () Bool)

(assert (= bs!1537021 (and d!1942171 d!1941827)))

(assert (=> bs!1537021 (= lambda!338330 lambda!338284)))

(declare-fun bs!1537022 () Bool)

(assert (= bs!1537022 (and d!1942171 d!1941617)))

(assert (=> bs!1537022 (= lambda!338330 lambda!338252)))

(declare-fun bs!1537023 () Bool)

(assert (= bs!1537023 (and d!1942171 d!1941925)))

(assert (=> bs!1537023 (= lambda!338330 lambda!338293)))

(declare-fun bs!1537024 () Bool)

(assert (= bs!1537024 (and d!1942171 d!1941967)))

(assert (=> bs!1537024 (= lambda!338330 lambda!338298)))

(declare-fun bs!1537025 () Bool)

(assert (= bs!1537025 (and d!1942171 d!1941619)))

(assert (=> bs!1537025 (= lambda!338330 lambda!338253)))

(declare-fun bs!1537026 () Bool)

(assert (= bs!1537026 (and d!1942171 d!1941659)))

(assert (=> bs!1537026 (= lambda!338330 lambda!338256)))

(declare-fun bs!1537027 () Bool)

(assert (= bs!1537027 (and d!1942171 d!1941615)))

(assert (=> bs!1537027 (= lambda!338330 lambda!338249)))

(declare-fun bs!1537028 () Bool)

(assert (= bs!1537028 (and d!1942171 d!1941879)))

(assert (=> bs!1537028 (= lambda!338330 lambda!338292)))

(declare-fun bs!1537029 () Bool)

(assert (= bs!1537029 (and d!1942171 d!1941595)))

(assert (=> bs!1537029 (= lambda!338330 lambda!338245)))

(declare-fun bs!1537030 () Bool)

(assert (= bs!1537030 (and d!1942171 d!1941685)))

(assert (=> bs!1537030 (= lambda!338330 lambda!338263)))

(assert (=> d!1942171 (= (inv!83574 (h!71017 (t!378205 zl!343))) (forall!15247 (exprs!6015 (h!71017 (t!378205 zl!343))) lambda!338330))))

(declare-fun bs!1537031 () Bool)

(assert (= bs!1537031 d!1942171))

(declare-fun m!7028374 () Bool)

(assert (=> bs!1537031 m!7028374))

(assert (=> b!6193417 d!1942171))

(declare-fun d!1942179 () Bool)

(assert (=> d!1942179 (= (nullable!6124 (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))) (nullableFct!2082 (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))

(declare-fun bs!1537032 () Bool)

(assert (= bs!1537032 d!1942179))

(declare-fun m!7028376 () Bool)

(assert (=> bs!1537032 m!7028376))

(assert (=> b!6193162 d!1942179))

(assert (=> b!6193230 d!1941623))

(declare-fun d!1942181 () Bool)

(assert (=> d!1942181 (= (nullable!6124 (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))) (nullableFct!2082 (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))))

(declare-fun bs!1537033 () Bool)

(assert (= bs!1537033 d!1942181))

(declare-fun m!7028378 () Bool)

(assert (=> bs!1537033 m!7028378))

(assert (=> b!6193398 d!1942181))

(declare-fun b!6194390 () Bool)

(declare-fun e!3772398 () Bool)

(assert (=> b!6194390 (= e!3772398 (= (head!12774 (_2!36413 (get!22291 lt!2341270))) (c!1117312 (regTwo!32774 r!7292))))))

(declare-fun b!6194391 () Bool)

(declare-fun res!2562395 () Bool)

(assert (=> b!6194391 (=> (not res!2562395) (not e!3772398))))

(assert (=> b!6194391 (= res!2562395 (isEmpty!36557 (tail!11859 (_2!36413 (get!22291 lt!2341270)))))))

(declare-fun b!6194392 () Bool)

(declare-fun res!2562396 () Bool)

(declare-fun e!3772392 () Bool)

(assert (=> b!6194392 (=> res!2562396 e!3772392)))

(assert (=> b!6194392 (= res!2562396 (not ((_ is ElementMatch!16131) (regTwo!32774 r!7292))))))

(declare-fun e!3772394 () Bool)

(assert (=> b!6194392 (= e!3772394 e!3772392)))

(declare-fun b!6194393 () Bool)

(declare-fun e!3772393 () Bool)

(declare-fun e!3772395 () Bool)

(assert (=> b!6194393 (= e!3772393 e!3772395)))

(declare-fun res!2562394 () Bool)

(assert (=> b!6194393 (=> res!2562394 e!3772395)))

(declare-fun call!518239 () Bool)

(assert (=> b!6194393 (= res!2562394 call!518239)))

(declare-fun b!6194394 () Bool)

(declare-fun e!3772396 () Bool)

(assert (=> b!6194394 (= e!3772396 (matchR!8314 (derivativeStep!4846 (regTwo!32774 r!7292) (head!12774 (_2!36413 (get!22291 lt!2341270)))) (tail!11859 (_2!36413 (get!22291 lt!2341270)))))))

(declare-fun b!6194395 () Bool)

(declare-fun res!2562391 () Bool)

(assert (=> b!6194395 (=> res!2562391 e!3772395)))

(assert (=> b!6194395 (= res!2562391 (not (isEmpty!36557 (tail!11859 (_2!36413 (get!22291 lt!2341270))))))))

(declare-fun b!6194396 () Bool)

(assert (=> b!6194396 (= e!3772396 (nullable!6124 (regTwo!32774 r!7292)))))

(declare-fun bm!518234 () Bool)

(assert (=> bm!518234 (= call!518239 (isEmpty!36557 (_2!36413 (get!22291 lt!2341270))))))

(declare-fun b!6194398 () Bool)

(declare-fun e!3772397 () Bool)

(declare-fun lt!2341389 () Bool)

(assert (=> b!6194398 (= e!3772397 (= lt!2341389 call!518239))))

(declare-fun b!6194399 () Bool)

(assert (=> b!6194399 (= e!3772395 (not (= (head!12774 (_2!36413 (get!22291 lt!2341270))) (c!1117312 (regTwo!32774 r!7292)))))))

(declare-fun b!6194397 () Bool)

(assert (=> b!6194397 (= e!3772397 e!3772394)))

(declare-fun c!1117905 () Bool)

(assert (=> b!6194397 (= c!1117905 ((_ is EmptyLang!16131) (regTwo!32774 r!7292)))))

(declare-fun d!1942183 () Bool)

(assert (=> d!1942183 e!3772397))

(declare-fun c!1117904 () Bool)

(assert (=> d!1942183 (= c!1117904 ((_ is EmptyExpr!16131) (regTwo!32774 r!7292)))))

(assert (=> d!1942183 (= lt!2341389 e!3772396)))

(declare-fun c!1117903 () Bool)

(assert (=> d!1942183 (= c!1117903 (isEmpty!36557 (_2!36413 (get!22291 lt!2341270))))))

(assert (=> d!1942183 (validRegex!7867 (regTwo!32774 r!7292))))

(assert (=> d!1942183 (= (matchR!8314 (regTwo!32774 r!7292) (_2!36413 (get!22291 lt!2341270))) lt!2341389)))

(declare-fun b!6194400 () Bool)

(assert (=> b!6194400 (= e!3772392 e!3772393)))

(declare-fun res!2562398 () Bool)

(assert (=> b!6194400 (=> (not res!2562398) (not e!3772393))))

(assert (=> b!6194400 (= res!2562398 (not lt!2341389))))

(declare-fun b!6194401 () Bool)

(declare-fun res!2562393 () Bool)

(assert (=> b!6194401 (=> res!2562393 e!3772392)))

(assert (=> b!6194401 (= res!2562393 e!3772398)))

(declare-fun res!2562397 () Bool)

(assert (=> b!6194401 (=> (not res!2562397) (not e!3772398))))

(assert (=> b!6194401 (= res!2562397 lt!2341389)))

(declare-fun b!6194402 () Bool)

(declare-fun res!2562392 () Bool)

(assert (=> b!6194402 (=> (not res!2562392) (not e!3772398))))

(assert (=> b!6194402 (= res!2562392 (not call!518239))))

(declare-fun b!6194403 () Bool)

(assert (=> b!6194403 (= e!3772394 (not lt!2341389))))

(assert (= (and d!1942183 c!1117903) b!6194396))

(assert (= (and d!1942183 (not c!1117903)) b!6194394))

(assert (= (and d!1942183 c!1117904) b!6194398))

(assert (= (and d!1942183 (not c!1117904)) b!6194397))

(assert (= (and b!6194397 c!1117905) b!6194403))

(assert (= (and b!6194397 (not c!1117905)) b!6194392))

(assert (= (and b!6194392 (not res!2562396)) b!6194401))

(assert (= (and b!6194401 res!2562397) b!6194402))

(assert (= (and b!6194402 res!2562392) b!6194391))

(assert (= (and b!6194391 res!2562395) b!6194390))

(assert (= (and b!6194401 (not res!2562393)) b!6194400))

(assert (= (and b!6194400 res!2562398) b!6194393))

(assert (= (and b!6194393 (not res!2562394)) b!6194395))

(assert (= (and b!6194395 (not res!2562391)) b!6194399))

(assert (= (or b!6194398 b!6194393 b!6194402) bm!518234))

(declare-fun m!7028380 () Bool)

(assert (=> d!1942183 m!7028380))

(assert (=> d!1942183 m!7028252))

(declare-fun m!7028382 () Bool)

(assert (=> b!6194394 m!7028382))

(assert (=> b!6194394 m!7028382))

(declare-fun m!7028384 () Bool)

(assert (=> b!6194394 m!7028384))

(declare-fun m!7028386 () Bool)

(assert (=> b!6194394 m!7028386))

(assert (=> b!6194394 m!7028384))

(assert (=> b!6194394 m!7028386))

(declare-fun m!7028388 () Bool)

(assert (=> b!6194394 m!7028388))

(assert (=> bm!518234 m!7028380))

(assert (=> b!6194391 m!7028386))

(assert (=> b!6194391 m!7028386))

(declare-fun m!7028390 () Bool)

(assert (=> b!6194391 m!7028390))

(assert (=> b!6194390 m!7028382))

(assert (=> b!6194395 m!7028386))

(assert (=> b!6194395 m!7028386))

(assert (=> b!6194395 m!7028390))

(assert (=> b!6194396 m!7028258))

(assert (=> b!6194399 m!7028382))

(assert (=> b!6192895 d!1942183))

(declare-fun d!1942185 () Bool)

(assert (=> d!1942185 (= (get!22291 lt!2341270) (v!52164 lt!2341270))))

(assert (=> b!6192895 d!1942185))

(assert (=> b!6193248 d!1941801))

(assert (=> d!1941591 d!1941747))

(assert (=> b!6193238 d!1941477))

(declare-fun b!6194404 () Bool)

(declare-fun e!3772399 () (InoxSet Context!11030))

(declare-fun call!518240 () (InoxSet Context!11030))

(assert (=> b!6194404 (= e!3772399 call!518240)))

(declare-fun b!6194405 () Bool)

(assert (=> b!6194405 (= e!3772399 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1942187 () Bool)

(declare-fun c!1117906 () Bool)

(declare-fun e!3772401 () Bool)

(assert (=> d!1942187 (= c!1117906 e!3772401)))

(declare-fun res!2562399 () Bool)

(assert (=> d!1942187 (=> (not res!2562399) (not e!3772401))))

(assert (=> d!1942187 (= res!2562399 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183))))))))

(declare-fun e!3772400 () (InoxSet Context!11030))

(assert (=> d!1942187 (= (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 lt!2341183))) (h!71018 s!2326)) e!3772400)))

(declare-fun b!6194406 () Bool)

(assert (=> b!6194406 (= e!3772400 e!3772399)))

(declare-fun c!1117907 () Bool)

(assert (=> b!6194406 (= c!1117907 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183))))))))

(declare-fun b!6194407 () Bool)

(assert (=> b!6194407 (= e!3772400 ((_ map or) call!518240 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183)))))) (h!71018 s!2326))))))

(declare-fun bm!518235 () Bool)

(assert (=> bm!518235 (= call!518240 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183)))))) (h!71018 s!2326)))))

(declare-fun b!6194408 () Bool)

(assert (=> b!6194408 (= e!3772401 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 lt!2341183)))))))))

(assert (= (and d!1942187 res!2562399) b!6194408))

(assert (= (and d!1942187 c!1117906) b!6194407))

(assert (= (and d!1942187 (not c!1117906)) b!6194406))

(assert (= (and b!6194406 c!1117907) b!6194404))

(assert (= (and b!6194406 (not c!1117907)) b!6194405))

(assert (= (or b!6194407 b!6194404) bm!518235))

(declare-fun m!7028392 () Bool)

(assert (=> b!6194407 m!7028392))

(declare-fun m!7028394 () Bool)

(assert (=> bm!518235 m!7028394))

(declare-fun m!7028396 () Bool)

(assert (=> b!6194408 m!7028396))

(assert (=> b!6193208 d!1942187))

(declare-fun d!1942189 () Bool)

(assert (=> d!1942189 (= (isEmptyLang!1552 lt!2341305) ((_ is EmptyLang!16131) lt!2341305))))

(assert (=> b!6193189 d!1942189))

(declare-fun d!1942191 () Bool)

(assert (=> d!1942191 (= (isConcat!1066 lt!2341326) ((_ is Concat!24976) lt!2341326))))

(assert (=> b!6193307 d!1942191))

(declare-fun d!1942193 () Bool)

(declare-fun lt!2341390 () Int)

(assert (=> d!1942193 (>= lt!2341390 0)))

(declare-fun e!3772402 () Int)

(assert (=> d!1942193 (= lt!2341390 e!3772402)))

(declare-fun c!1117908 () Bool)

(assert (=> d!1942193 (= c!1117908 ((_ is Cons!64568) (exprs!6015 (h!71017 lt!2341171))))))

(assert (=> d!1942193 (= (contextDepthTotal!283 (h!71017 lt!2341171)) lt!2341390)))

(declare-fun b!6194409 () Bool)

(assert (=> b!6194409 (= e!3772402 (+ (regexDepthTotal!142 (h!71016 (exprs!6015 (h!71017 lt!2341171)))) (contextDepthTotal!283 (Context!11031 (t!378204 (exprs!6015 (h!71017 lt!2341171)))))))))

(declare-fun b!6194410 () Bool)

(assert (=> b!6194410 (= e!3772402 1)))

(assert (= (and d!1942193 c!1117908) b!6194409))

(assert (= (and d!1942193 (not c!1117908)) b!6194410))

(declare-fun m!7028398 () Bool)

(assert (=> b!6194409 m!7028398))

(declare-fun m!7028400 () Bool)

(assert (=> b!6194409 m!7028400))

(assert (=> b!6192533 d!1942193))

(declare-fun d!1942195 () Bool)

(declare-fun lt!2341391 () Int)

(assert (=> d!1942195 (>= lt!2341391 0)))

(declare-fun e!3772403 () Int)

(assert (=> d!1942195 (= lt!2341391 e!3772403)))

(declare-fun c!1117909 () Bool)

(assert (=> d!1942195 (= c!1117909 ((_ is Cons!64569) (t!378205 lt!2341171)))))

(assert (=> d!1942195 (= (zipperDepthTotal!314 (t!378205 lt!2341171)) lt!2341391)))

(declare-fun b!6194411 () Bool)

(assert (=> b!6194411 (= e!3772403 (+ (contextDepthTotal!283 (h!71017 (t!378205 lt!2341171))) (zipperDepthTotal!314 (t!378205 (t!378205 lt!2341171)))))))

(declare-fun b!6194412 () Bool)

(assert (=> b!6194412 (= e!3772403 0)))

(assert (= (and d!1942195 c!1117909) b!6194411))

(assert (= (and d!1942195 (not c!1117909)) b!6194412))

(declare-fun m!7028402 () Bool)

(assert (=> b!6194411 m!7028402))

(declare-fun m!7028404 () Bool)

(assert (=> b!6194411 m!7028404))

(assert (=> b!6192533 d!1942195))

(declare-fun d!1942197 () Bool)

(declare-fun c!1117910 () Bool)

(assert (=> d!1942197 (= c!1117910 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3772404 () Bool)

(assert (=> d!1942197 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341166 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3772404)))

(declare-fun b!6194413 () Bool)

(assert (=> b!6194413 (= e!3772404 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341166 (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6194414 () Bool)

(assert (=> b!6194414 (= e!3772404 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341166 (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1942197 c!1117910) b!6194413))

(assert (= (and d!1942197 (not c!1117910)) b!6194414))

(assert (=> d!1942197 m!7026810))

(assert (=> d!1942197 m!7027518))

(assert (=> b!6194413 m!7027220))

(declare-fun m!7028406 () Bool)

(assert (=> b!6194413 m!7028406))

(assert (=> b!6194414 m!7026810))

(assert (=> b!6194414 m!7027522))

(assert (=> b!6194414 m!7027220))

(assert (=> b!6194414 m!7027522))

(declare-fun m!7028408 () Bool)

(assert (=> b!6194414 m!7028408))

(assert (=> b!6194414 m!7026810))

(assert (=> b!6194414 m!7027526))

(assert (=> b!6194414 m!7028408))

(assert (=> b!6194414 m!7027526))

(declare-fun m!7028410 () Bool)

(assert (=> b!6194414 m!7028410))

(assert (=> b!6193240 d!1942197))

(declare-fun bs!1537061 () Bool)

(declare-fun d!1942199 () Bool)

(assert (= bs!1537061 (and d!1942199 d!1942039)))

(declare-fun lambda!338333 () Int)

(assert (=> bs!1537061 (= lambda!338333 lambda!338306)))

(declare-fun bs!1537063 () Bool)

(assert (= bs!1537063 (and d!1942199 d!1941795)))

(assert (=> bs!1537063 (= lambda!338333 lambda!338282)))

(declare-fun bs!1537065 () Bool)

(assert (= bs!1537065 (and d!1942199 b!6192421)))

(assert (=> bs!1537065 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338333 lambda!338193))))

(declare-fun bs!1537066 () Bool)

(assert (= bs!1537066 (and d!1942199 d!1941861)))

(assert (=> bs!1537066 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338333 lambda!338290))))

(declare-fun bs!1537067 () Bool)

(assert (= bs!1537067 (and d!1942199 d!1941851)))

(assert (=> bs!1537067 (= lambda!338333 lambda!338286)))

(declare-fun bs!1537068 () Bool)

(assert (= bs!1537068 (and d!1942199 d!1941757)))

(assert (=> bs!1537068 (= lambda!338333 lambda!338275)))

(declare-fun bs!1537069 () Bool)

(assert (= bs!1537069 (and d!1942199 d!1942013)))

(assert (=> bs!1537069 (= lambda!338333 lambda!338304)))

(declare-fun bs!1537071 () Bool)

(assert (= bs!1537071 (and d!1942199 d!1942157)))

(assert (=> bs!1537071 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338333 lambda!338329))))

(declare-fun bs!1537072 () Bool)

(assert (= bs!1537072 (and d!1942199 d!1942023)))

(assert (=> bs!1537072 (= lambda!338333 lambda!338305)))

(assert (=> d!1942199 true))

(assert (=> d!1942199 (= (derivationStepZipper!2099 lt!2341166 (head!12774 (t!378206 s!2326))) (flatMap!1636 lt!2341166 lambda!338333))))

(declare-fun bs!1537074 () Bool)

(assert (= bs!1537074 d!1942199))

(declare-fun m!7028412 () Bool)

(assert (=> bs!1537074 m!7028412))

(assert (=> b!6193240 d!1942199))

(assert (=> b!6193240 d!1941759))

(assert (=> b!6193240 d!1941763))

(declare-fun bs!1537075 () Bool)

(declare-fun b!6194417 () Bool)

(assert (= bs!1537075 (and b!6194417 d!1941529)))

(declare-fun lambda!338334 () Int)

(assert (=> bs!1537075 (not (= lambda!338334 lambda!338236))))

(declare-fun bs!1537076 () Bool)

(assert (= bs!1537076 (and b!6194417 d!1942053)))

(assert (=> bs!1537076 (not (= lambda!338334 lambda!338313))))

(declare-fun bs!1537077 () Bool)

(assert (= bs!1537077 (and b!6194417 b!6194224)))

(assert (=> bs!1537077 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 (regTwo!32775 r!7292))) (= (regOne!32775 r!7292) (regTwo!32775 r!7292))) (= lambda!338334 lambda!338317))))

(declare-fun bs!1537078 () Bool)

(assert (= bs!1537078 (and b!6194417 b!6193614)))

(assert (=> bs!1537078 (not (= lambda!338334 lambda!338277))))

(assert (=> bs!1537076 (not (= lambda!338334 lambda!338314))))

(declare-fun bs!1537079 () Bool)

(assert (= bs!1537079 (and b!6194417 b!6193329)))

(assert (=> bs!1537079 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 lt!2341177)) (= (regOne!32775 r!7292) lt!2341177)) (= lambda!338334 lambda!338260))))

(declare-fun bs!1537080 () Bool)

(assert (= bs!1537080 (and b!6194417 b!6193499)))

(assert (=> bs!1537080 (not (= lambda!338334 lambda!338270))))

(declare-fun bs!1537081 () Bool)

(assert (= bs!1537081 (and b!6194417 b!6193331)))

(assert (=> bs!1537081 (not (= lambda!338334 lambda!338261))))

(declare-fun bs!1537082 () Bool)

(assert (= bs!1537082 (and b!6194417 b!6192412)))

(assert (=> bs!1537082 (not (= lambda!338334 lambda!338192))))

(declare-fun bs!1537083 () Bool)

(assert (= bs!1537083 (and b!6194417 b!6193320)))

(assert (=> bs!1537083 (not (= lambda!338334 lambda!338259))))

(assert (=> bs!1537082 (not (= lambda!338334 lambda!338191))))

(assert (=> bs!1537075 (not (= lambda!338334 lambda!338235))))

(declare-fun bs!1537084 () Bool)

(assert (= bs!1537084 (and b!6194417 b!6193318)))

(assert (=> bs!1537084 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 lt!2341185)) (= (regOne!32775 r!7292) lt!2341185)) (= lambda!338334 lambda!338258))))

(declare-fun bs!1537085 () Bool)

(assert (= bs!1537085 (and b!6194417 b!6193612)))

(assert (=> bs!1537085 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 (regOne!32775 lt!2341185))) (= (regOne!32775 r!7292) (regOne!32775 lt!2341185))) (= lambda!338334 lambda!338276))))

(declare-fun bs!1537086 () Bool)

(assert (= bs!1537086 (and b!6194417 b!6192678)))

(assert (=> bs!1537086 (not (= lambda!338334 lambda!338213))))

(declare-fun bs!1537088 () Bool)

(assert (= bs!1537088 (and b!6194417 d!1941517)))

(assert (=> bs!1537088 (not (= lambda!338334 lambda!338227))))

(declare-fun bs!1537090 () Bool)

(assert (= bs!1537090 (and b!6194417 b!6194226)))

(assert (=> bs!1537090 (not (= lambda!338334 lambda!338318))))

(declare-fun bs!1537091 () Bool)

(assert (= bs!1537091 (and b!6194417 b!6193497)))

(assert (=> bs!1537091 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 (regOne!32775 lt!2341177))) (= (regOne!32775 r!7292) (regOne!32775 lt!2341177))) (= lambda!338334 lambda!338269))))

(declare-fun bs!1537092 () Bool)

(assert (= bs!1537092 (and b!6194417 b!6192676)))

(assert (=> bs!1537092 (= (and (= (reg!16460 (regOne!32775 r!7292)) (reg!16460 r!7292)) (= (regOne!32775 r!7292) r!7292)) (= lambda!338334 lambda!338211))))

(assert (=> b!6194417 true))

(assert (=> b!6194417 true))

(declare-fun bs!1537099 () Bool)

(declare-fun b!6194419 () Bool)

(assert (= bs!1537099 (and b!6194419 d!1941529)))

(declare-fun lambda!338336 () Int)

(assert (=> bs!1537099 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338336 lambda!338236))))

(declare-fun bs!1537100 () Bool)

(assert (= bs!1537100 (and b!6194419 d!1942053)))

(assert (=> bs!1537100 (not (= lambda!338336 lambda!338313))))

(declare-fun bs!1537101 () Bool)

(assert (= bs!1537101 (and b!6194419 b!6194224)))

(assert (=> bs!1537101 (not (= lambda!338336 lambda!338317))))

(declare-fun bs!1537102 () Bool)

(assert (= bs!1537102 (and b!6194419 b!6193614)))

(assert (=> bs!1537102 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 (regOne!32775 lt!2341185))) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 (regOne!32775 lt!2341185)))) (= lambda!338336 lambda!338277))))

(assert (=> bs!1537100 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338336 lambda!338314))))

(declare-fun bs!1537103 () Bool)

(assert (= bs!1537103 (and b!6194419 b!6193329)))

(assert (=> bs!1537103 (not (= lambda!338336 lambda!338260))))

(declare-fun bs!1537104 () Bool)

(assert (= bs!1537104 (and b!6194419 b!6193499)))

(assert (=> bs!1537104 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338336 lambda!338270))))

(declare-fun bs!1537105 () Bool)

(assert (= bs!1537105 (and b!6194419 b!6193331)))

(assert (=> bs!1537105 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 lt!2341177))) (= lambda!338336 lambda!338261))))

(declare-fun bs!1537106 () Bool)

(assert (= bs!1537106 (and b!6194419 b!6192412)))

(assert (=> bs!1537106 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338336 lambda!338192))))

(declare-fun bs!1537107 () Bool)

(assert (= bs!1537107 (and b!6194419 b!6194417)))

(assert (=> bs!1537107 (not (= lambda!338336 lambda!338334))))

(declare-fun bs!1537108 () Bool)

(assert (= bs!1537108 (and b!6194419 b!6193320)))

(assert (=> bs!1537108 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 lt!2341185))) (= lambda!338336 lambda!338259))))

(assert (=> bs!1537106 (not (= lambda!338336 lambda!338191))))

(assert (=> bs!1537099 (not (= lambda!338336 lambda!338235))))

(declare-fun bs!1537111 () Bool)

(assert (= bs!1537111 (and b!6194419 b!6193318)))

(assert (=> bs!1537111 (not (= lambda!338336 lambda!338258))))

(declare-fun bs!1537112 () Bool)

(assert (= bs!1537112 (and b!6194419 b!6193612)))

(assert (=> bs!1537112 (not (= lambda!338336 lambda!338276))))

(declare-fun bs!1537113 () Bool)

(assert (= bs!1537113 (and b!6194419 b!6192678)))

(assert (=> bs!1537113 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 r!7292)) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 r!7292))) (= lambda!338336 lambda!338213))))

(declare-fun bs!1537114 () Bool)

(assert (= bs!1537114 (and b!6194419 d!1941517)))

(assert (=> bs!1537114 (not (= lambda!338336 lambda!338227))))

(declare-fun bs!1537115 () Bool)

(assert (= bs!1537115 (and b!6194419 b!6194226)))

(assert (=> bs!1537115 (= (and (= (regOne!32774 (regOne!32775 r!7292)) (regOne!32774 (regTwo!32775 r!7292))) (= (regTwo!32774 (regOne!32775 r!7292)) (regTwo!32774 (regTwo!32775 r!7292)))) (= lambda!338336 lambda!338318))))

(declare-fun bs!1537116 () Bool)

(assert (= bs!1537116 (and b!6194419 b!6193497)))

(assert (=> bs!1537116 (not (= lambda!338336 lambda!338269))))

(declare-fun bs!1537117 () Bool)

(assert (= bs!1537117 (and b!6194419 b!6192676)))

(assert (=> bs!1537117 (not (= lambda!338336 lambda!338211))))

(assert (=> b!6194419 true))

(assert (=> b!6194419 true))

(declare-fun b!6194415 () Bool)

(declare-fun e!3772406 () Bool)

(declare-fun call!518241 () Bool)

(assert (=> b!6194415 (= e!3772406 call!518241)))

(declare-fun b!6194416 () Bool)

(declare-fun e!3772407 () Bool)

(assert (=> b!6194416 (= e!3772407 (= s!2326 (Cons!64570 (c!1117312 (regOne!32775 r!7292)) Nil!64570)))))

(declare-fun e!3772405 () Bool)

(declare-fun call!518242 () Bool)

(assert (=> b!6194417 (= e!3772405 call!518242)))

(declare-fun b!6194418 () Bool)

(declare-fun e!3772409 () Bool)

(declare-fun e!3772410 () Bool)

(assert (=> b!6194418 (= e!3772409 e!3772410)))

(declare-fun c!1117912 () Bool)

(assert (=> b!6194418 (= c!1117912 ((_ is Star!16131) (regOne!32775 r!7292)))))

(assert (=> b!6194419 (= e!3772410 call!518242)))

(declare-fun b!6194420 () Bool)

(declare-fun c!1117914 () Bool)

(assert (=> b!6194420 (= c!1117914 ((_ is ElementMatch!16131) (regOne!32775 r!7292)))))

(declare-fun e!3772408 () Bool)

(assert (=> b!6194420 (= e!3772408 e!3772407)))

(declare-fun b!6194421 () Bool)

(declare-fun c!1117911 () Bool)

(assert (=> b!6194421 (= c!1117911 ((_ is Union!16131) (regOne!32775 r!7292)))))

(assert (=> b!6194421 (= e!3772407 e!3772409)))

(declare-fun b!6194422 () Bool)

(declare-fun res!2562402 () Bool)

(assert (=> b!6194422 (=> res!2562402 e!3772405)))

(assert (=> b!6194422 (= res!2562402 call!518241)))

(assert (=> b!6194422 (= e!3772410 e!3772405)))

(declare-fun bm!518236 () Bool)

(assert (=> bm!518236 (= call!518241 (isEmpty!36557 s!2326))))

(declare-fun b!6194423 () Bool)

(assert (=> b!6194423 (= e!3772406 e!3772408)))

(declare-fun res!2562400 () Bool)

(assert (=> b!6194423 (= res!2562400 (not ((_ is EmptyLang!16131) (regOne!32775 r!7292))))))

(assert (=> b!6194423 (=> (not res!2562400) (not e!3772408))))

(declare-fun bm!518237 () Bool)

(assert (=> bm!518237 (= call!518242 (Exists!3201 (ite c!1117912 lambda!338334 lambda!338336)))))

(declare-fun b!6194424 () Bool)

(declare-fun e!3772411 () Bool)

(assert (=> b!6194424 (= e!3772409 e!3772411)))

(declare-fun res!2562401 () Bool)

(assert (=> b!6194424 (= res!2562401 (matchRSpec!3232 (regOne!32775 (regOne!32775 r!7292)) s!2326))))

(assert (=> b!6194424 (=> res!2562401 e!3772411)))

(declare-fun b!6194425 () Bool)

(assert (=> b!6194425 (= e!3772411 (matchRSpec!3232 (regTwo!32775 (regOne!32775 r!7292)) s!2326))))

(declare-fun d!1942201 () Bool)

(declare-fun c!1117913 () Bool)

(assert (=> d!1942201 (= c!1117913 ((_ is EmptyExpr!16131) (regOne!32775 r!7292)))))

(assert (=> d!1942201 (= (matchRSpec!3232 (regOne!32775 r!7292) s!2326) e!3772406)))

(assert (= (and d!1942201 c!1117913) b!6194415))

(assert (= (and d!1942201 (not c!1117913)) b!6194423))

(assert (= (and b!6194423 res!2562400) b!6194420))

(assert (= (and b!6194420 c!1117914) b!6194416))

(assert (= (and b!6194420 (not c!1117914)) b!6194421))

(assert (= (and b!6194421 c!1117911) b!6194424))

(assert (= (and b!6194421 (not c!1117911)) b!6194418))

(assert (= (and b!6194424 (not res!2562401)) b!6194425))

(assert (= (and b!6194418 c!1117912) b!6194422))

(assert (= (and b!6194418 (not c!1117912)) b!6194419))

(assert (= (and b!6194422 (not res!2562402)) b!6194417))

(assert (= (or b!6194417 b!6194419) bm!518237))

(assert (= (or b!6194415 b!6194422) bm!518236))

(assert (=> bm!518236 m!7026692))

(declare-fun m!7028452 () Bool)

(assert (=> bm!518237 m!7028452))

(declare-fun m!7028454 () Bool)

(assert (=> b!6194424 m!7028454))

(declare-fun m!7028456 () Bool)

(assert (=> b!6194425 m!7028456))

(assert (=> b!6192683 d!1942201))

(assert (=> b!6192783 d!1941811))

(assert (=> b!6192783 d!1941813))

(declare-fun d!1942231 () Bool)

(declare-fun c!1117923 () Bool)

(assert (=> d!1942231 (= c!1117923 (isEmpty!36557 (tail!11859 (t!378206 s!2326))))))

(declare-fun e!3772426 () Bool)

(assert (=> d!1942231 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341165 (head!12774 (t!378206 s!2326))) (tail!11859 (t!378206 s!2326))) e!3772426)))

(declare-fun b!6194452 () Bool)

(assert (=> b!6194452 (= e!3772426 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341165 (head!12774 (t!378206 s!2326)))))))

(declare-fun b!6194453 () Bool)

(assert (=> b!6194453 (= e!3772426 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341165 (head!12774 (t!378206 s!2326))) (head!12774 (tail!11859 (t!378206 s!2326)))) (tail!11859 (tail!11859 (t!378206 s!2326)))))))

(assert (= (and d!1942231 c!1117923) b!6194452))

(assert (= (and d!1942231 (not c!1117923)) b!6194453))

(assert (=> d!1942231 m!7026810))

(assert (=> d!1942231 m!7027518))

(assert (=> b!6194452 m!7027232))

(declare-fun m!7028458 () Bool)

(assert (=> b!6194452 m!7028458))

(assert (=> b!6194453 m!7026810))

(assert (=> b!6194453 m!7027522))

(assert (=> b!6194453 m!7027232))

(assert (=> b!6194453 m!7027522))

(declare-fun m!7028460 () Bool)

(assert (=> b!6194453 m!7028460))

(assert (=> b!6194453 m!7026810))

(assert (=> b!6194453 m!7027526))

(assert (=> b!6194453 m!7028460))

(assert (=> b!6194453 m!7027526))

(declare-fun m!7028462 () Bool)

(assert (=> b!6194453 m!7028462))

(assert (=> b!6193244 d!1942231))

(declare-fun bs!1537118 () Bool)

(declare-fun d!1942233 () Bool)

(assert (= bs!1537118 (and d!1942233 d!1942199)))

(declare-fun lambda!338337 () Int)

(assert (=> bs!1537118 (= lambda!338337 lambda!338333)))

(declare-fun bs!1537119 () Bool)

(assert (= bs!1537119 (and d!1942233 d!1942039)))

(assert (=> bs!1537119 (= lambda!338337 lambda!338306)))

(declare-fun bs!1537120 () Bool)

(assert (= bs!1537120 (and d!1942233 d!1941795)))

(assert (=> bs!1537120 (= lambda!338337 lambda!338282)))

(declare-fun bs!1537121 () Bool)

(assert (= bs!1537121 (and d!1942233 b!6192421)))

(assert (=> bs!1537121 (= (= (head!12774 (t!378206 s!2326)) (h!71018 s!2326)) (= lambda!338337 lambda!338193))))

(declare-fun bs!1537122 () Bool)

(assert (= bs!1537122 (and d!1942233 d!1941861)))

(assert (=> bs!1537122 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338337 lambda!338290))))

(declare-fun bs!1537123 () Bool)

(assert (= bs!1537123 (and d!1942233 d!1941851)))

(assert (=> bs!1537123 (= lambda!338337 lambda!338286)))

(declare-fun bs!1537124 () Bool)

(assert (= bs!1537124 (and d!1942233 d!1941757)))

(assert (=> bs!1537124 (= lambda!338337 lambda!338275)))

(declare-fun bs!1537125 () Bool)

(assert (= bs!1537125 (and d!1942233 d!1942013)))

(assert (=> bs!1537125 (= lambda!338337 lambda!338304)))

(declare-fun bs!1537126 () Bool)

(assert (= bs!1537126 (and d!1942233 d!1942157)))

(assert (=> bs!1537126 (= (= (head!12774 (t!378206 s!2326)) (head!12774 s!2326)) (= lambda!338337 lambda!338329))))

(declare-fun bs!1537127 () Bool)

(assert (= bs!1537127 (and d!1942233 d!1942023)))

(assert (=> bs!1537127 (= lambda!338337 lambda!338305)))

(assert (=> d!1942233 true))

(assert (=> d!1942233 (= (derivationStepZipper!2099 lt!2341165 (head!12774 (t!378206 s!2326))) (flatMap!1636 lt!2341165 lambda!338337))))

(declare-fun bs!1537128 () Bool)

(assert (= bs!1537128 d!1942233))

(declare-fun m!7028464 () Bool)

(assert (=> bs!1537128 m!7028464))

(assert (=> b!6193244 d!1942233))

(assert (=> b!6193244 d!1941759))

(assert (=> b!6193244 d!1941763))

(declare-fun d!1942235 () Bool)

(assert (=> d!1942235 (= (head!12775 lt!2341187) (h!71016 lt!2341187))))

(assert (=> b!6193314 d!1942235))

(declare-fun d!1942237 () Bool)

(assert (=> d!1942237 (= (isEmptyExpr!1543 lt!2341327) ((_ is EmptyExpr!16131) lt!2341327))))

(assert (=> b!6193341 d!1942237))

(declare-fun b!6194454 () Bool)

(declare-fun e!3772430 () Bool)

(declare-fun e!3772427 () Bool)

(assert (=> b!6194454 (= e!3772430 e!3772427)))

(declare-fun res!2562415 () Bool)

(declare-fun call!518251 () Bool)

(assert (=> b!6194454 (= res!2562415 call!518251)))

(assert (=> b!6194454 (=> res!2562415 e!3772427)))

(declare-fun b!6194455 () Bool)

(declare-fun call!518250 () Bool)

(assert (=> b!6194455 (= e!3772427 call!518250)))

(declare-fun bm!518245 () Bool)

(declare-fun c!1117924 () Bool)

(assert (=> bm!518245 (= call!518251 (nullable!6124 (ite c!1117924 (regOne!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun d!1942239 () Bool)

(declare-fun res!2562416 () Bool)

(declare-fun e!3772429 () Bool)

(assert (=> d!1942239 (=> res!2562416 e!3772429)))

(assert (=> d!1942239 (= res!2562416 ((_ is EmptyExpr!16131) (regOne!32775 (regOne!32774 r!7292))))))

(assert (=> d!1942239 (= (nullableFct!2082 (regOne!32775 (regOne!32774 r!7292))) e!3772429)))

(declare-fun bm!518246 () Bool)

(assert (=> bm!518246 (= call!518250 (nullable!6124 (ite c!1117924 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regTwo!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194456 () Bool)

(declare-fun e!3772431 () Bool)

(assert (=> b!6194456 (= e!3772431 e!3772430)))

(assert (=> b!6194456 (= c!1117924 ((_ is Union!16131) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun b!6194457 () Bool)

(declare-fun e!3772432 () Bool)

(assert (=> b!6194457 (= e!3772429 e!3772432)))

(declare-fun res!2562414 () Bool)

(assert (=> b!6194457 (=> (not res!2562414) (not e!3772432))))

(assert (=> b!6194457 (= res!2562414 (and (not ((_ is EmptyLang!16131) (regOne!32775 (regOne!32774 r!7292)))) (not ((_ is ElementMatch!16131) (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194458 () Bool)

(assert (=> b!6194458 (= e!3772432 e!3772431)))

(declare-fun res!2562413 () Bool)

(assert (=> b!6194458 (=> res!2562413 e!3772431)))

(assert (=> b!6194458 (= res!2562413 ((_ is Star!16131) (regOne!32775 (regOne!32774 r!7292))))))

(declare-fun b!6194459 () Bool)

(declare-fun e!3772428 () Bool)

(assert (=> b!6194459 (= e!3772430 e!3772428)))

(declare-fun res!2562417 () Bool)

(assert (=> b!6194459 (= res!2562417 call!518251)))

(assert (=> b!6194459 (=> (not res!2562417) (not e!3772428))))

(declare-fun b!6194460 () Bool)

(assert (=> b!6194460 (= e!3772428 call!518250)))

(assert (= (and d!1942239 (not res!2562416)) b!6194457))

(assert (= (and b!6194457 res!2562414) b!6194458))

(assert (= (and b!6194458 (not res!2562413)) b!6194456))

(assert (= (and b!6194456 c!1117924) b!6194454))

(assert (= (and b!6194456 (not c!1117924)) b!6194459))

(assert (= (and b!6194454 (not res!2562415)) b!6194455))

(assert (= (and b!6194459 res!2562417) b!6194460))

(assert (= (or b!6194455 b!6194460) bm!518246))

(assert (= (or b!6194454 b!6194459) bm!518245))

(declare-fun m!7028466 () Bool)

(assert (=> bm!518245 m!7028466))

(declare-fun m!7028468 () Bool)

(assert (=> bm!518246 m!7028468))

(assert (=> d!1941587 d!1942239))

(assert (=> d!1941555 d!1941589))

(declare-fun d!1942243 () Bool)

(assert (=> d!1942243 (= (flatMap!1636 lt!2341195 lambda!338193) (dynLambda!25462 lambda!338193 lt!2341179))))

(assert (=> d!1942243 true))

(declare-fun _$13!3192 () Unit!157827)

(assert (=> d!1942243 (= (choose!46006 lt!2341195 lt!2341179 lambda!338193) _$13!3192)))

(declare-fun b_lambda!235653 () Bool)

(assert (=> (not b_lambda!235653) (not d!1942243)))

(declare-fun bs!1537130 () Bool)

(assert (= bs!1537130 d!1942243))

(assert (=> bs!1537130 m!7026568))

(assert (=> bs!1537130 m!7027014))

(assert (=> d!1941555 d!1942243))

(assert (=> d!1941679 d!1941681))

(assert (=> d!1941679 d!1941649))

(declare-fun d!1942245 () Bool)

(declare-fun e!3772440 () Bool)

(assert (=> d!1942245 (= (matchZipper!2143 ((_ map or) lt!2341182 lt!2341164) (t!378206 s!2326)) e!3772440)))

(declare-fun res!2562421 () Bool)

(assert (=> d!1942245 (=> res!2562421 e!3772440)))

(assert (=> d!1942245 (= res!2562421 (matchZipper!2143 lt!2341182 (t!378206 s!2326)))))

(assert (=> d!1942245 true))

(declare-fun _$48!1835 () Unit!157827)

(assert (=> d!1942245 (= (choose!46013 lt!2341182 lt!2341164 (t!378206 s!2326)) _$48!1835)))

(declare-fun b!6194472 () Bool)

(assert (=> b!6194472 (= e!3772440 (matchZipper!2143 lt!2341164 (t!378206 s!2326)))))

(assert (= (and d!1942245 (not res!2562421)) b!6194472))

(assert (=> d!1942245 m!7026462))

(assert (=> d!1942245 m!7026496))

(assert (=> b!6194472 m!7026452))

(assert (=> d!1941679 d!1942245))

(declare-fun b!6194473 () Bool)

(declare-fun e!3772441 () (InoxSet Context!11030))

(declare-fun call!518254 () (InoxSet Context!11030))

(assert (=> b!6194473 (= e!3772441 call!518254)))

(declare-fun b!6194474 () Bool)

(declare-fun e!3772442 () (InoxSet Context!11030))

(assert (=> b!6194474 (= e!3772442 e!3772441)))

(declare-fun c!1117932 () Bool)

(assert (=> b!6194474 (= c!1117932 ((_ is Concat!24976) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6194475 () Bool)

(declare-fun e!3772443 () (InoxSet Context!11030))

(declare-fun call!518255 () (InoxSet Context!11030))

(declare-fun call!518257 () (InoxSet Context!11030))

(assert (=> b!6194475 (= e!3772443 ((_ map or) call!518255 call!518257))))

(declare-fun b!6194476 () Bool)

(declare-fun e!3772444 () (InoxSet Context!11030))

(assert (=> b!6194476 (= e!3772444 ((as const (Array Context!11030 Bool)) false))))

(declare-fun c!1117929 () Bool)

(declare-fun call!518258 () List!64692)

(declare-fun bm!518249 () Bool)

(assert (=> bm!518249 (= call!518257 (derivationStepZipperDown!1379 (ite c!1117929 (regTwo!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))) (ite c!1117929 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (Context!11031 call!518258)) (h!71018 s!2326)))))

(declare-fun b!6194477 () Bool)

(declare-fun e!3772446 () Bool)

(assert (=> b!6194477 (= e!3772446 (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun bm!518250 () Bool)

(declare-fun c!1117930 () Bool)

(assert (=> bm!518250 (= call!518258 ($colon$colon!2002 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343))))) (ite (or c!1117930 c!1117932) (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71016 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun bm!518251 () Bool)

(declare-fun call!518256 () (InoxSet Context!11030))

(assert (=> bm!518251 (= call!518254 call!518256)))

(declare-fun bm!518252 () Bool)

(assert (=> bm!518252 (= call!518256 call!518255)))

(declare-fun bm!518253 () Bool)

(declare-fun call!518259 () List!64692)

(assert (=> bm!518253 (= call!518255 (derivationStepZipperDown!1379 (ite c!1117929 (regOne!32775 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117930 (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (ite c!1117932 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (reg!16460 (h!71016 (exprs!6015 (h!71017 zl!343))))))) (ite (or c!1117929 c!1117930) (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (Context!11031 call!518259)) (h!71018 s!2326)))))

(declare-fun b!6194478 () Bool)

(assert (=> b!6194478 (= c!1117930 e!3772446)))

(declare-fun res!2562422 () Bool)

(assert (=> b!6194478 (=> (not res!2562422) (not e!3772446))))

(assert (=> b!6194478 (= res!2562422 ((_ is Concat!24976) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6194478 (= e!3772443 e!3772442)))

(declare-fun b!6194479 () Bool)

(declare-fun e!3772445 () (InoxSet Context!11030))

(assert (=> b!6194479 (= e!3772445 (store ((as const (Array Context!11030 Bool)) false) (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) true))))

(declare-fun b!6194480 () Bool)

(assert (=> b!6194480 (= e!3772444 call!518254)))

(declare-fun d!1942247 () Bool)

(declare-fun c!1117931 () Bool)

(assert (=> d!1942247 (= c!1117931 (and ((_ is ElementMatch!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))) (= (c!1117312 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326))))))

(assert (=> d!1942247 (= (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (h!71017 zl!343))) (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326)) e!3772445)))

(declare-fun bm!518254 () Bool)

(assert (=> bm!518254 (= call!518259 call!518258)))

(declare-fun b!6194481 () Bool)

(declare-fun c!1117933 () Bool)

(assert (=> b!6194481 (= c!1117933 ((_ is Star!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> b!6194481 (= e!3772441 e!3772444)))

(declare-fun b!6194482 () Bool)

(assert (=> b!6194482 (= e!3772445 e!3772443)))

(assert (=> b!6194482 (= c!1117929 ((_ is Union!16131) (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6194483 () Bool)

(assert (=> b!6194483 (= e!3772442 ((_ map or) call!518257 call!518256))))

(assert (= (and d!1942247 c!1117931) b!6194479))

(assert (= (and d!1942247 (not c!1117931)) b!6194482))

(assert (= (and b!6194482 c!1117929) b!6194475))

(assert (= (and b!6194482 (not c!1117929)) b!6194478))

(assert (= (and b!6194478 res!2562422) b!6194477))

(assert (= (and b!6194478 c!1117930) b!6194483))

(assert (= (and b!6194478 (not c!1117930)) b!6194474))

(assert (= (and b!6194474 c!1117932) b!6194473))

(assert (= (and b!6194474 (not c!1117932)) b!6194481))

(assert (= (and b!6194481 c!1117933) b!6194480))

(assert (= (and b!6194481 (not c!1117933)) b!6194476))

(assert (= (or b!6194473 b!6194480) bm!518254))

(assert (= (or b!6194473 b!6194480) bm!518251))

(assert (= (or b!6194483 bm!518254) bm!518250))

(assert (= (or b!6194483 bm!518251) bm!518252))

(assert (= (or b!6194475 b!6194483) bm!518249))

(assert (= (or b!6194475 bm!518252) bm!518253))

(assert (=> b!6194477 m!7027184))

(declare-fun m!7028470 () Bool)

(assert (=> bm!518253 m!7028470))

(declare-fun m!7028472 () Bool)

(assert (=> bm!518249 m!7028472))

(declare-fun m!7028474 () Bool)

(assert (=> bm!518250 m!7028474))

(declare-fun m!7028476 () Bool)

(assert (=> b!6194479 m!7028476))

(assert (=> bm!517984 d!1942247))

(declare-fun b!6194484 () Bool)

(declare-fun e!3772448 () Bool)

(declare-fun call!518261 () Bool)

(assert (=> b!6194484 (= e!3772448 call!518261)))

(declare-fun b!6194485 () Bool)

(declare-fun e!3772452 () Bool)

(declare-fun e!3772453 () Bool)

(assert (=> b!6194485 (= e!3772452 e!3772453)))

(declare-fun c!1117935 () Bool)

(assert (=> b!6194485 (= c!1117935 ((_ is Union!16131) lt!2341327))))

(declare-fun b!6194486 () Bool)

(declare-fun e!3772447 () Bool)

(declare-fun call!518260 () Bool)

(assert (=> b!6194486 (= e!3772447 call!518260)))

(declare-fun b!6194487 () Bool)

(declare-fun e!3772451 () Bool)

(assert (=> b!6194487 (= e!3772451 e!3772452)))

(declare-fun c!1117934 () Bool)

(assert (=> b!6194487 (= c!1117934 ((_ is Star!16131) lt!2341327))))

(declare-fun d!1942249 () Bool)

(declare-fun res!2562426 () Bool)

(assert (=> d!1942249 (=> res!2562426 e!3772451)))

(assert (=> d!1942249 (= res!2562426 ((_ is ElementMatch!16131) lt!2341327))))

(assert (=> d!1942249 (= (validRegex!7867 lt!2341327) e!3772451)))

(declare-fun bm!518255 () Bool)

(assert (=> bm!518255 (= call!518260 (validRegex!7867 (ite c!1117934 (reg!16460 lt!2341327) (ite c!1117935 (regOne!32775 lt!2341327) (regOne!32774 lt!2341327)))))))

(declare-fun bm!518256 () Bool)

(assert (=> bm!518256 (= call!518261 (validRegex!7867 (ite c!1117935 (regTwo!32775 lt!2341327) (regTwo!32774 lt!2341327))))))

(declare-fun b!6194488 () Bool)

(declare-fun e!3772449 () Bool)

(assert (=> b!6194488 (= e!3772449 e!3772448)))

(declare-fun res!2562427 () Bool)

(assert (=> b!6194488 (=> (not res!2562427) (not e!3772448))))

(declare-fun call!518262 () Bool)

(assert (=> b!6194488 (= res!2562427 call!518262)))

(declare-fun b!6194489 () Bool)

(declare-fun res!2562425 () Bool)

(assert (=> b!6194489 (=> res!2562425 e!3772449)))

(assert (=> b!6194489 (= res!2562425 (not ((_ is Concat!24976) lt!2341327)))))

(assert (=> b!6194489 (= e!3772453 e!3772449)))

(declare-fun b!6194490 () Bool)

(declare-fun res!2562423 () Bool)

(declare-fun e!3772450 () Bool)

(assert (=> b!6194490 (=> (not res!2562423) (not e!3772450))))

(assert (=> b!6194490 (= res!2562423 call!518262)))

(assert (=> b!6194490 (= e!3772453 e!3772450)))

(declare-fun b!6194491 () Bool)

(assert (=> b!6194491 (= e!3772452 e!3772447)))

(declare-fun res!2562424 () Bool)

(assert (=> b!6194491 (= res!2562424 (not (nullable!6124 (reg!16460 lt!2341327))))))

(assert (=> b!6194491 (=> (not res!2562424) (not e!3772447))))

(declare-fun bm!518257 () Bool)

(assert (=> bm!518257 (= call!518262 call!518260)))

(declare-fun b!6194492 () Bool)

(assert (=> b!6194492 (= e!3772450 call!518261)))

(assert (= (and d!1942249 (not res!2562426)) b!6194487))

(assert (= (and b!6194487 c!1117934) b!6194491))

(assert (= (and b!6194487 (not c!1117934)) b!6194485))

(assert (= (and b!6194491 res!2562424) b!6194486))

(assert (= (and b!6194485 c!1117935) b!6194490))

(assert (= (and b!6194485 (not c!1117935)) b!6194489))

(assert (= (and b!6194490 res!2562423) b!6194492))

(assert (= (and b!6194489 (not res!2562425)) b!6194488))

(assert (= (and b!6194488 res!2562427) b!6194484))

(assert (= (or b!6194492 b!6194484) bm!518256))

(assert (= (or b!6194490 b!6194488) bm!518257))

(assert (= (or b!6194486 bm!518257) bm!518255))

(declare-fun m!7028478 () Bool)

(assert (=> bm!518255 m!7028478))

(declare-fun m!7028480 () Bool)

(assert (=> bm!518256 m!7028480))

(declare-fun m!7028482 () Bool)

(assert (=> b!6194491 m!7028482))

(assert (=> d!1941673 d!1942249))

(declare-fun d!1942251 () Bool)

(declare-fun res!2562428 () Bool)

(declare-fun e!3772454 () Bool)

(assert (=> d!1942251 (=> res!2562428 e!3772454)))

(assert (=> d!1942251 (= res!2562428 ((_ is Nil!64568) (t!378204 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> d!1942251 (= (forall!15247 (t!378204 (exprs!6015 (h!71017 zl!343))) lambda!338262) e!3772454)))

(declare-fun b!6194493 () Bool)

(declare-fun e!3772455 () Bool)

(assert (=> b!6194493 (= e!3772454 e!3772455)))

(declare-fun res!2562429 () Bool)

(assert (=> b!6194493 (=> (not res!2562429) (not e!3772455))))

(assert (=> b!6194493 (= res!2562429 (dynLambda!25464 lambda!338262 (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun b!6194494 () Bool)

(assert (=> b!6194494 (= e!3772455 (forall!15247 (t!378204 (t!378204 (exprs!6015 (h!71017 zl!343)))) lambda!338262))))

(assert (= (and d!1942251 (not res!2562428)) b!6194493))

(assert (= (and b!6194493 res!2562429) b!6194494))

(declare-fun b_lambda!235655 () Bool)

(assert (=> (not b_lambda!235655) (not b!6194493)))

(declare-fun m!7028484 () Bool)

(assert (=> b!6194493 m!7028484))

(declare-fun m!7028486 () Bool)

(assert (=> b!6194494 m!7028486))

(assert (=> d!1941673 d!1942251))

(declare-fun b!6194495 () Bool)

(declare-fun e!3772456 () (InoxSet Context!11030))

(declare-fun call!518263 () (InoxSet Context!11030))

(assert (=> b!6194495 (= e!3772456 call!518263)))

(declare-fun b!6194496 () Bool)

(declare-fun e!3772457 () (InoxSet Context!11030))

(assert (=> b!6194496 (= e!3772457 e!3772456)))

(declare-fun c!1117939 () Bool)

(assert (=> b!6194496 (= c!1117939 ((_ is Concat!24976) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6194497 () Bool)

(declare-fun e!3772458 () (InoxSet Context!11030))

(declare-fun call!518264 () (InoxSet Context!11030))

(declare-fun call!518266 () (InoxSet Context!11030))

(assert (=> b!6194497 (= e!3772458 ((_ map or) call!518264 call!518266))))

(declare-fun b!6194498 () Bool)

(declare-fun e!3772459 () (InoxSet Context!11030))

(assert (=> b!6194498 (= e!3772459 ((as const (Array Context!11030 Bool)) false))))

(declare-fun bm!518258 () Bool)

(declare-fun c!1117936 () Bool)

(declare-fun call!518267 () List!64692)

(assert (=> bm!518258 (= call!518266 (derivationStepZipperDown!1379 (ite c!1117936 (regTwo!32775 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (regOne!32774 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))))) (ite c!1117936 (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974)) (Context!11031 call!518267)) (h!71018 s!2326)))))

(declare-fun b!6194499 () Bool)

(declare-fun e!3772461 () Bool)

(assert (=> b!6194499 (= e!3772461 (nullable!6124 (regOne!32774 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518259 () Bool)

(declare-fun c!1117937 () Bool)

(assert (=> bm!518259 (= call!518267 ($colon$colon!2002 (exprs!6015 (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974))) (ite (or c!1117937 c!1117939) (regTwo!32774 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))))))))

(declare-fun bm!518260 () Bool)

(declare-fun call!518265 () (InoxSet Context!11030))

(assert (=> bm!518260 (= call!518263 call!518265)))

(declare-fun bm!518261 () Bool)

(assert (=> bm!518261 (= call!518265 call!518264)))

(declare-fun bm!518262 () Bool)

(declare-fun call!518268 () List!64692)

(assert (=> bm!518262 (= call!518264 (derivationStepZipperDown!1379 (ite c!1117936 (regOne!32775 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (ite c!1117937 (regTwo!32774 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (ite c!1117939 (regOne!32774 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (reg!16460 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))))))) (ite (or c!1117936 c!1117937) (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974)) (Context!11031 call!518268)) (h!71018 s!2326)))))

(declare-fun b!6194500 () Bool)

(assert (=> b!6194500 (= c!1117937 e!3772461)))

(declare-fun res!2562430 () Bool)

(assert (=> b!6194500 (=> (not res!2562430) (not e!3772461))))

(assert (=> b!6194500 (= res!2562430 ((_ is Concat!24976) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6194500 (= e!3772458 e!3772457)))

(declare-fun b!6194501 () Bool)

(declare-fun e!3772460 () (InoxSet Context!11030))

(assert (=> b!6194501 (= e!3772460 (store ((as const (Array Context!11030 Bool)) false) (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974)) true))))

(declare-fun b!6194502 () Bool)

(assert (=> b!6194502 (= e!3772459 call!518263)))

(declare-fun d!1942253 () Bool)

(declare-fun c!1117938 () Bool)

(assert (=> d!1942253 (= c!1117938 (and ((_ is ElementMatch!16131) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (= (c!1117312 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))) (h!71018 s!2326))))))

(assert (=> d!1942253 (= (derivationStepZipperDown!1379 (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292)))))) (ite (or c!1117515 c!1117516) lt!2341183 (Context!11031 call!517974)) (h!71018 s!2326)) e!3772460)))

(declare-fun bm!518263 () Bool)

(assert (=> bm!518263 (= call!518268 call!518267)))

(declare-fun b!6194503 () Bool)

(declare-fun c!1117940 () Bool)

(assert (=> b!6194503 (= c!1117940 ((_ is Star!16131) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))))))

(assert (=> b!6194503 (= e!3772456 e!3772459)))

(declare-fun b!6194504 () Bool)

(assert (=> b!6194504 (= e!3772460 e!3772458)))

(assert (=> b!6194504 (= c!1117936 ((_ is Union!16131) (ite c!1117515 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117516 (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))) (ite c!1117518 (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))) (reg!16460 (regTwo!32775 (regOne!32774 r!7292))))))))))

(declare-fun b!6194505 () Bool)

(assert (=> b!6194505 (= e!3772457 ((_ map or) call!518266 call!518265))))

(assert (= (and d!1942253 c!1117938) b!6194501))

(assert (= (and d!1942253 (not c!1117938)) b!6194504))

(assert (= (and b!6194504 c!1117936) b!6194497))

(assert (= (and b!6194504 (not c!1117936)) b!6194500))

(assert (= (and b!6194500 res!2562430) b!6194499))

(assert (= (and b!6194500 c!1117937) b!6194505))

(assert (= (and b!6194500 (not c!1117937)) b!6194496))

(assert (= (and b!6194496 c!1117939) b!6194495))

(assert (= (and b!6194496 (not c!1117939)) b!6194503))

(assert (= (and b!6194503 c!1117940) b!6194502))

(assert (= (and b!6194503 (not c!1117940)) b!6194498))

(assert (= (or b!6194495 b!6194502) bm!518263))

(assert (= (or b!6194495 b!6194502) bm!518260))

(assert (= (or b!6194505 bm!518263) bm!518259))

(assert (= (or b!6194505 bm!518260) bm!518261))

(assert (= (or b!6194497 b!6194505) bm!518258))

(assert (= (or b!6194497 bm!518261) bm!518262))

(declare-fun m!7028488 () Bool)

(assert (=> b!6194499 m!7028488))

(declare-fun m!7028490 () Bool)

(assert (=> bm!518262 m!7028490))

(declare-fun m!7028492 () Bool)

(assert (=> bm!518258 m!7028492))

(declare-fun m!7028494 () Bool)

(assert (=> bm!518259 m!7028494))

(declare-fun m!7028496 () Bool)

(assert (=> b!6194501 m!7028496))

(assert (=> bm!517968 d!1942253))

(declare-fun b!6194506 () Bool)

(declare-fun e!3772462 () (InoxSet Context!11030))

(declare-fun call!518269 () (InoxSet Context!11030))

(assert (=> b!6194506 (= e!3772462 call!518269)))

(declare-fun b!6194507 () Bool)

(declare-fun e!3772463 () (InoxSet Context!11030))

(assert (=> b!6194507 (= e!3772463 e!3772462)))

(declare-fun c!1117944 () Bool)

(assert (=> b!6194507 (= c!1117944 ((_ is Concat!24976) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194508 () Bool)

(declare-fun e!3772464 () (InoxSet Context!11030))

(declare-fun call!518270 () (InoxSet Context!11030))

(declare-fun call!518272 () (InoxSet Context!11030))

(assert (=> b!6194508 (= e!3772464 ((_ map or) call!518270 call!518272))))

(declare-fun b!6194509 () Bool)

(declare-fun e!3772465 () (InoxSet Context!11030))

(assert (=> b!6194509 (= e!3772465 ((as const (Array Context!11030 Bool)) false))))

(declare-fun bm!518264 () Bool)

(declare-fun c!1117941 () Bool)

(declare-fun call!518273 () List!64692)

(assert (=> bm!518264 (= call!518272 (derivationStepZipperDown!1379 (ite c!1117941 (regTwo!32775 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (regOne!32774 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))) (ite c!1117941 (ite c!1117520 lt!2341183 (Context!11031 call!517979)) (Context!11031 call!518273)) (h!71018 s!2326)))))

(declare-fun b!6194510 () Bool)

(declare-fun e!3772467 () Bool)

(assert (=> b!6194510 (= e!3772467 (nullable!6124 (regOne!32774 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(declare-fun c!1117942 () Bool)

(declare-fun bm!518265 () Bool)

(assert (=> bm!518265 (= call!518273 ($colon$colon!2002 (exprs!6015 (ite c!1117520 lt!2341183 (Context!11031 call!517979))) (ite (or c!1117942 c!1117944) (regTwo!32774 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))))

(declare-fun bm!518266 () Bool)

(declare-fun call!518271 () (InoxSet Context!11030))

(assert (=> bm!518266 (= call!518269 call!518271)))

(declare-fun bm!518267 () Bool)

(assert (=> bm!518267 (= call!518271 call!518270)))

(declare-fun bm!518268 () Bool)

(declare-fun call!518274 () List!64692)

(assert (=> bm!518268 (= call!518270 (derivationStepZipperDown!1379 (ite c!1117941 (regOne!32775 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (ite c!1117942 (regTwo!32774 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (ite c!1117944 (regOne!32774 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (reg!16460 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))))))) (ite (or c!1117941 c!1117942) (ite c!1117520 lt!2341183 (Context!11031 call!517979)) (Context!11031 call!518274)) (h!71018 s!2326)))))

(declare-fun b!6194511 () Bool)

(assert (=> b!6194511 (= c!1117942 e!3772467)))

(declare-fun res!2562431 () Bool)

(assert (=> b!6194511 (=> (not res!2562431) (not e!3772467))))

(assert (=> b!6194511 (= res!2562431 ((_ is Concat!24976) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6194511 (= e!3772464 e!3772463)))

(declare-fun b!6194512 () Bool)

(declare-fun e!3772466 () (InoxSet Context!11030))

(assert (=> b!6194512 (= e!3772466 (store ((as const (Array Context!11030 Bool)) false) (ite c!1117520 lt!2341183 (Context!11031 call!517979)) true))))

(declare-fun b!6194513 () Bool)

(assert (=> b!6194513 (= e!3772465 call!518269)))

(declare-fun c!1117943 () Bool)

(declare-fun d!1942255 () Bool)

(assert (=> d!1942255 (= c!1117943 (and ((_ is ElementMatch!16131) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (= (c!1117312 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))) (h!71018 s!2326))))))

(assert (=> d!1942255 (= (derivationStepZipperDown!1379 (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292)))) (ite c!1117520 lt!2341183 (Context!11031 call!517979)) (h!71018 s!2326)) e!3772466)))

(declare-fun bm!518269 () Bool)

(assert (=> bm!518269 (= call!518274 call!518273)))

(declare-fun b!6194514 () Bool)

(declare-fun c!1117945 () Bool)

(assert (=> b!6194514 (= c!1117945 ((_ is Star!16131) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(assert (=> b!6194514 (= e!3772462 e!3772465)))

(declare-fun b!6194515 () Bool)

(assert (=> b!6194515 (= e!3772466 e!3772464)))

(assert (=> b!6194515 (= c!1117941 ((_ is Union!16131) (ite c!1117520 (regTwo!32775 (regOne!32775 (regOne!32774 r!7292))) (regOne!32774 (regOne!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194516 () Bool)

(assert (=> b!6194516 (= e!3772463 ((_ map or) call!518272 call!518271))))

(assert (= (and d!1942255 c!1117943) b!6194512))

(assert (= (and d!1942255 (not c!1117943)) b!6194515))

(assert (= (and b!6194515 c!1117941) b!6194508))

(assert (= (and b!6194515 (not c!1117941)) b!6194511))

(assert (= (and b!6194511 res!2562431) b!6194510))

(assert (= (and b!6194511 c!1117942) b!6194516))

(assert (= (and b!6194511 (not c!1117942)) b!6194507))

(assert (= (and b!6194507 c!1117944) b!6194506))

(assert (= (and b!6194507 (not c!1117944)) b!6194514))

(assert (= (and b!6194514 c!1117945) b!6194513))

(assert (= (and b!6194514 (not c!1117945)) b!6194509))

(assert (= (or b!6194506 b!6194513) bm!518269))

(assert (= (or b!6194506 b!6194513) bm!518266))

(assert (= (or b!6194516 bm!518269) bm!518265))

(assert (= (or b!6194516 bm!518266) bm!518267))

(assert (= (or b!6194508 b!6194516) bm!518264))

(assert (= (or b!6194508 bm!518267) bm!518268))

(declare-fun m!7028498 () Bool)

(assert (=> b!6194510 m!7028498))

(declare-fun m!7028500 () Bool)

(assert (=> bm!518268 m!7028500))

(declare-fun m!7028502 () Bool)

(assert (=> bm!518264 m!7028502))

(declare-fun m!7028504 () Bool)

(assert (=> bm!518265 m!7028504))

(declare-fun m!7028506 () Bool)

(assert (=> b!6194512 m!7028506))

(assert (=> bm!517970 d!1942255))

(assert (=> d!1941649 d!1941865))

(assert (=> b!6193301 d!1941801))

(declare-fun b!6194519 () Bool)

(declare-fun res!2562433 () Bool)

(declare-fun e!3772468 () Bool)

(assert (=> b!6194519 (=> (not res!2562433) (not e!3772468))))

(declare-fun lt!2341393 () List!64694)

(assert (=> b!6194519 (= res!2562433 (= (size!40263 lt!2341393) (+ (size!40263 (_1!36413 (get!22291 lt!2341270))) (size!40263 (_2!36413 (get!22291 lt!2341270))))))))

(declare-fun b!6194517 () Bool)

(declare-fun e!3772469 () List!64694)

(assert (=> b!6194517 (= e!3772469 (_2!36413 (get!22291 lt!2341270)))))

(declare-fun d!1942257 () Bool)

(assert (=> d!1942257 e!3772468))

(declare-fun res!2562432 () Bool)

(assert (=> d!1942257 (=> (not res!2562432) (not e!3772468))))

(assert (=> d!1942257 (= res!2562432 (= (content!12065 lt!2341393) ((_ map or) (content!12065 (_1!36413 (get!22291 lt!2341270))) (content!12065 (_2!36413 (get!22291 lt!2341270))))))))

(assert (=> d!1942257 (= lt!2341393 e!3772469)))

(declare-fun c!1117946 () Bool)

(assert (=> d!1942257 (= c!1117946 ((_ is Nil!64570) (_1!36413 (get!22291 lt!2341270))))))

(assert (=> d!1942257 (= (++!14210 (_1!36413 (get!22291 lt!2341270)) (_2!36413 (get!22291 lt!2341270))) lt!2341393)))

(declare-fun b!6194518 () Bool)

(assert (=> b!6194518 (= e!3772469 (Cons!64570 (h!71018 (_1!36413 (get!22291 lt!2341270))) (++!14210 (t!378206 (_1!36413 (get!22291 lt!2341270))) (_2!36413 (get!22291 lt!2341270)))))))

(declare-fun b!6194520 () Bool)

(assert (=> b!6194520 (= e!3772468 (or (not (= (_2!36413 (get!22291 lt!2341270)) Nil!64570)) (= lt!2341393 (_1!36413 (get!22291 lt!2341270)))))))

(assert (= (and d!1942257 c!1117946) b!6194517))

(assert (= (and d!1942257 (not c!1117946)) b!6194518))

(assert (= (and d!1942257 res!2562432) b!6194519))

(assert (= (and b!6194519 res!2562433) b!6194520))

(declare-fun m!7028508 () Bool)

(assert (=> b!6194519 m!7028508))

(declare-fun m!7028510 () Bool)

(assert (=> b!6194519 m!7028510))

(declare-fun m!7028512 () Bool)

(assert (=> b!6194519 m!7028512))

(declare-fun m!7028514 () Bool)

(assert (=> d!1942257 m!7028514))

(declare-fun m!7028516 () Bool)

(assert (=> d!1942257 m!7028516))

(declare-fun m!7028518 () Bool)

(assert (=> d!1942257 m!7028518))

(declare-fun m!7028520 () Bool)

(assert (=> b!6194518 m!7028520))

(assert (=> b!6192894 d!1942257))

(assert (=> b!6192894 d!1942185))

(assert (=> d!1941465 d!1941449))

(assert (=> d!1941465 d!1941433))

(declare-fun d!1942259 () Bool)

(assert (=> d!1942259 (= (matchR!8314 r!7292 s!2326) (matchRSpec!3232 r!7292 s!2326))))

(assert (=> d!1942259 true))

(declare-fun _$88!4778 () Unit!157827)

(assert (=> d!1942259 (= (choose!46001 r!7292 s!2326) _$88!4778)))

(declare-fun bs!1537166 () Bool)

(assert (= bs!1537166 d!1942259))

(assert (=> bs!1537166 m!7026474))

(assert (=> bs!1537166 m!7026472))

(assert (=> d!1941465 d!1942259))

(assert (=> d!1941465 d!1941683))

(declare-fun d!1942265 () Bool)

(assert (=> d!1942265 (= (isEmptyExpr!1543 lt!2341335) ((_ is EmptyExpr!16131) lt!2341335))))

(assert (=> b!6193384 d!1942265))

(assert (=> d!1941449 d!1941747))

(assert (=> d!1941449 d!1941683))

(declare-fun bs!1537168 () Bool)

(declare-fun d!1942267 () Bool)

(assert (= bs!1537168 (and d!1942267 d!1941673)))

(declare-fun lambda!338341 () Int)

(assert (=> bs!1537168 (= lambda!338341 lambda!338262)))

(declare-fun bs!1537169 () Bool)

(assert (= bs!1537169 (and d!1942267 d!1942171)))

(assert (=> bs!1537169 (= lambda!338341 lambda!338330)))

(declare-fun bs!1537171 () Bool)

(assert (= bs!1537171 (and d!1942267 d!1941667)))

(assert (=> bs!1537171 (= lambda!338341 lambda!338257)))

(declare-fun bs!1537173 () Bool)

(assert (= bs!1537173 (and d!1942267 d!1941827)))

(assert (=> bs!1537173 (= lambda!338341 lambda!338284)))

(declare-fun bs!1537175 () Bool)

(assert (= bs!1537175 (and d!1942267 d!1941617)))

(assert (=> bs!1537175 (= lambda!338341 lambda!338252)))

(declare-fun bs!1537177 () Bool)

(assert (= bs!1537177 (and d!1942267 d!1941925)))

(assert (=> bs!1537177 (= lambda!338341 lambda!338293)))

(declare-fun bs!1537178 () Bool)

(assert (= bs!1537178 (and d!1942267 d!1941967)))

(assert (=> bs!1537178 (= lambda!338341 lambda!338298)))

(declare-fun bs!1537180 () Bool)

(assert (= bs!1537180 (and d!1942267 d!1941619)))

(assert (=> bs!1537180 (= lambda!338341 lambda!338253)))

(declare-fun bs!1537181 () Bool)

(assert (= bs!1537181 (and d!1942267 d!1941659)))

(assert (=> bs!1537181 (= lambda!338341 lambda!338256)))

(declare-fun bs!1537182 () Bool)

(assert (= bs!1537182 (and d!1942267 d!1941615)))

(assert (=> bs!1537182 (= lambda!338341 lambda!338249)))

(declare-fun bs!1537183 () Bool)

(assert (= bs!1537183 (and d!1942267 d!1941879)))

(assert (=> bs!1537183 (= lambda!338341 lambda!338292)))

(declare-fun bs!1537184 () Bool)

(assert (= bs!1537184 (and d!1942267 d!1941595)))

(assert (=> bs!1537184 (= lambda!338341 lambda!338245)))

(declare-fun bs!1537185 () Bool)

(assert (= bs!1537185 (and d!1942267 d!1941685)))

(assert (=> bs!1537185 (= lambda!338341 lambda!338263)))

(declare-fun b!6194534 () Bool)

(declare-fun e!3772482 () Regex!16131)

(assert (=> b!6194534 (= e!3772482 (Concat!24976 (h!71016 (t!378204 lt!2341187)) (generalisedConcat!1728 (t!378204 (t!378204 lt!2341187)))))))

(declare-fun b!6194536 () Bool)

(declare-fun e!3772477 () Regex!16131)

(assert (=> b!6194536 (= e!3772477 e!3772482)))

(declare-fun c!1117955 () Bool)

(assert (=> b!6194536 (= c!1117955 ((_ is Cons!64568) (t!378204 lt!2341187)))))

(declare-fun b!6194537 () Bool)

(declare-fun e!3772479 () Bool)

(declare-fun lt!2341394 () Regex!16131)

(assert (=> b!6194537 (= e!3772479 (isEmptyExpr!1543 lt!2341394))))

(declare-fun b!6194538 () Bool)

(assert (=> b!6194538 (= e!3772482 EmptyExpr!16131)))

(declare-fun b!6194539 () Bool)

(assert (=> b!6194539 (= e!3772477 (h!71016 (t!378204 lt!2341187)))))

(declare-fun b!6194540 () Bool)

(declare-fun e!3772480 () Bool)

(assert (=> b!6194540 (= e!3772479 e!3772480)))

(declare-fun c!1117954 () Bool)

(assert (=> b!6194540 (= c!1117954 (isEmpty!36555 (tail!11860 (t!378204 lt!2341187))))))

(declare-fun b!6194541 () Bool)

(declare-fun e!3772478 () Bool)

(assert (=> b!6194541 (= e!3772478 (isEmpty!36555 (t!378204 (t!378204 lt!2341187))))))

(declare-fun b!6194535 () Bool)

(assert (=> b!6194535 (= e!3772480 (isConcat!1066 lt!2341394))))

(declare-fun e!3772481 () Bool)

(assert (=> d!1942267 e!3772481))

(declare-fun res!2562436 () Bool)

(assert (=> d!1942267 (=> (not res!2562436) (not e!3772481))))

(assert (=> d!1942267 (= res!2562436 (validRegex!7867 lt!2341394))))

(assert (=> d!1942267 (= lt!2341394 e!3772477)))

(declare-fun c!1117953 () Bool)

(assert (=> d!1942267 (= c!1117953 e!3772478)))

(declare-fun res!2562435 () Bool)

(assert (=> d!1942267 (=> (not res!2562435) (not e!3772478))))

(assert (=> d!1942267 (= res!2562435 ((_ is Cons!64568) (t!378204 lt!2341187)))))

(assert (=> d!1942267 (forall!15247 (t!378204 lt!2341187) lambda!338341)))

(assert (=> d!1942267 (= (generalisedConcat!1728 (t!378204 lt!2341187)) lt!2341394)))

(declare-fun b!6194542 () Bool)

(assert (=> b!6194542 (= e!3772480 (= lt!2341394 (head!12775 (t!378204 lt!2341187))))))

(declare-fun b!6194543 () Bool)

(assert (=> b!6194543 (= e!3772481 e!3772479)))

(declare-fun c!1117956 () Bool)

(assert (=> b!6194543 (= c!1117956 (isEmpty!36555 (t!378204 lt!2341187)))))

(assert (= (and d!1942267 res!2562435) b!6194541))

(assert (= (and d!1942267 c!1117953) b!6194539))

(assert (= (and d!1942267 (not c!1117953)) b!6194536))

(assert (= (and b!6194536 c!1117955) b!6194534))

(assert (= (and b!6194536 (not c!1117955)) b!6194538))

(assert (= (and d!1942267 res!2562436) b!6194543))

(assert (= (and b!6194543 c!1117956) b!6194537))

(assert (= (and b!6194543 (not c!1117956)) b!6194540))

(assert (= (and b!6194540 c!1117954) b!6194542))

(assert (= (and b!6194540 (not c!1117954)) b!6194535))

(declare-fun m!7028552 () Bool)

(assert (=> b!6194541 m!7028552))

(declare-fun m!7028554 () Bool)

(assert (=> b!6194534 m!7028554))

(declare-fun m!7028556 () Bool)

(assert (=> b!6194540 m!7028556))

(assert (=> b!6194540 m!7028556))

(declare-fun m!7028558 () Bool)

(assert (=> b!6194540 m!7028558))

(declare-fun m!7028560 () Bool)

(assert (=> b!6194535 m!7028560))

(declare-fun m!7028562 () Bool)

(assert (=> d!1942267 m!7028562))

(declare-fun m!7028564 () Bool)

(assert (=> d!1942267 m!7028564))

(declare-fun m!7028566 () Bool)

(assert (=> b!6194537 m!7028566))

(declare-fun m!7028568 () Bool)

(assert (=> b!6194542 m!7028568))

(assert (=> b!6194543 m!7027290))

(assert (=> b!6193306 d!1942267))

(assert (=> bm!517985 d!1941747))

(assert (=> b!6192782 d!1941801))

(declare-fun d!1942281 () Bool)

(assert (=> d!1942281 (= ($colon$colon!2002 (exprs!6015 lt!2341183) (ite (or c!1117545 c!1117547) (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71016 (exprs!6015 (h!71017 zl!343))))) (Cons!64568 (ite (or c!1117545 c!1117547) (regTwo!32774 (h!71016 (exprs!6015 (h!71017 zl!343)))) (h!71016 (exprs!6015 (h!71017 zl!343)))) (exprs!6015 lt!2341183)))))

(assert (=> bm!517979 d!1942281))

(declare-fun b!6194553 () Bool)

(declare-fun e!3772491 () Bool)

(declare-fun call!518285 () Bool)

(assert (=> b!6194553 (= e!3772491 call!518285)))

(declare-fun b!6194554 () Bool)

(declare-fun e!3772496 () Bool)

(declare-fun e!3772497 () Bool)

(assert (=> b!6194554 (= e!3772496 e!3772497)))

(declare-fun c!1117960 () Bool)

(assert (=> b!6194554 (= c!1117960 ((_ is Union!16131) lt!2341335))))

(declare-fun b!6194555 () Bool)

(declare-fun e!3772490 () Bool)

(declare-fun call!518284 () Bool)

(assert (=> b!6194555 (= e!3772490 call!518284)))

(declare-fun b!6194556 () Bool)

(declare-fun e!3772495 () Bool)

(assert (=> b!6194556 (= e!3772495 e!3772496)))

(declare-fun c!1117959 () Bool)

(assert (=> b!6194556 (= c!1117959 ((_ is Star!16131) lt!2341335))))

(declare-fun d!1942287 () Bool)

(declare-fun res!2562445 () Bool)

(assert (=> d!1942287 (=> res!2562445 e!3772495)))

(assert (=> d!1942287 (= res!2562445 ((_ is ElementMatch!16131) lt!2341335))))

(assert (=> d!1942287 (= (validRegex!7867 lt!2341335) e!3772495)))

(declare-fun bm!518279 () Bool)

(assert (=> bm!518279 (= call!518284 (validRegex!7867 (ite c!1117959 (reg!16460 lt!2341335) (ite c!1117960 (regOne!32775 lt!2341335) (regOne!32774 lt!2341335)))))))

(declare-fun bm!518280 () Bool)

(assert (=> bm!518280 (= call!518285 (validRegex!7867 (ite c!1117960 (regTwo!32775 lt!2341335) (regTwo!32774 lt!2341335))))))

(declare-fun b!6194557 () Bool)

(declare-fun e!3772492 () Bool)

(assert (=> b!6194557 (= e!3772492 e!3772491)))

(declare-fun res!2562446 () Bool)

(assert (=> b!6194557 (=> (not res!2562446) (not e!3772491))))

(declare-fun call!518286 () Bool)

(assert (=> b!6194557 (= res!2562446 call!518286)))

(declare-fun b!6194558 () Bool)

(declare-fun res!2562444 () Bool)

(assert (=> b!6194558 (=> res!2562444 e!3772492)))

(assert (=> b!6194558 (= res!2562444 (not ((_ is Concat!24976) lt!2341335)))))

(assert (=> b!6194558 (= e!3772497 e!3772492)))

(declare-fun b!6194559 () Bool)

(declare-fun res!2562442 () Bool)

(declare-fun e!3772494 () Bool)

(assert (=> b!6194559 (=> (not res!2562442) (not e!3772494))))

(assert (=> b!6194559 (= res!2562442 call!518286)))

(assert (=> b!6194559 (= e!3772497 e!3772494)))

(declare-fun b!6194560 () Bool)

(assert (=> b!6194560 (= e!3772496 e!3772490)))

(declare-fun res!2562443 () Bool)

(assert (=> b!6194560 (= res!2562443 (not (nullable!6124 (reg!16460 lt!2341335))))))

(assert (=> b!6194560 (=> (not res!2562443) (not e!3772490))))

(declare-fun bm!518281 () Bool)

(assert (=> bm!518281 (= call!518286 call!518284)))

(declare-fun b!6194561 () Bool)

(assert (=> b!6194561 (= e!3772494 call!518285)))

(assert (= (and d!1942287 (not res!2562445)) b!6194556))

(assert (= (and b!6194556 c!1117959) b!6194560))

(assert (= (and b!6194556 (not c!1117959)) b!6194554))

(assert (= (and b!6194560 res!2562443) b!6194555))

(assert (= (and b!6194554 c!1117960) b!6194559))

(assert (= (and b!6194554 (not c!1117960)) b!6194558))

(assert (= (and b!6194559 res!2562442) b!6194561))

(assert (= (and b!6194558 (not res!2562444)) b!6194557))

(assert (= (and b!6194557 res!2562446) b!6194553))

(assert (= (or b!6194561 b!6194553) bm!518280))

(assert (= (or b!6194559 b!6194557) bm!518281))

(assert (= (or b!6194555 bm!518281) bm!518279))

(declare-fun m!7028572 () Bool)

(assert (=> bm!518279 m!7028572))

(declare-fun m!7028574 () Bool)

(assert (=> bm!518280 m!7028574))

(declare-fun m!7028576 () Bool)

(assert (=> b!6194560 m!7028576))

(assert (=> d!1941685 d!1942287))

(declare-fun d!1942295 () Bool)

(declare-fun res!2562448 () Bool)

(declare-fun e!3772498 () Bool)

(assert (=> d!1942295 (=> res!2562448 e!3772498)))

(assert (=> d!1942295 (= res!2562448 ((_ is Nil!64568) (exprs!6015 (h!71017 zl!343))))))

(assert (=> d!1942295 (= (forall!15247 (exprs!6015 (h!71017 zl!343)) lambda!338263) e!3772498)))

(declare-fun b!6194563 () Bool)

(declare-fun e!3772499 () Bool)

(assert (=> b!6194563 (= e!3772498 e!3772499)))

(declare-fun res!2562449 () Bool)

(assert (=> b!6194563 (=> (not res!2562449) (not e!3772499))))

(assert (=> b!6194563 (= res!2562449 (dynLambda!25464 lambda!338263 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun b!6194564 () Bool)

(assert (=> b!6194564 (= e!3772499 (forall!15247 (t!378204 (exprs!6015 (h!71017 zl!343))) lambda!338263))))

(assert (= (and d!1942295 (not res!2562448)) b!6194563))

(assert (= (and b!6194563 res!2562449) b!6194564))

(declare-fun b_lambda!235659 () Bool)

(assert (=> (not b_lambda!235659) (not b!6194563)))

(declare-fun m!7028578 () Bool)

(assert (=> b!6194563 m!7028578))

(declare-fun m!7028580 () Bool)

(assert (=> b!6194564 m!7028580))

(assert (=> d!1941685 d!1942295))

(declare-fun d!1942297 () Bool)

(declare-fun c!1117961 () Bool)

(assert (=> d!1942297 (= c!1117961 (isEmpty!36557 (tail!11859 s!2326)))))

(declare-fun e!3772500 () Bool)

(assert (=> d!1942297 (= (matchZipper!2143 (derivationStepZipper!2099 lt!2341195 (head!12774 s!2326)) (tail!11859 s!2326)) e!3772500)))

(declare-fun b!6194565 () Bool)

(assert (=> b!6194565 (= e!3772500 (nullableZipper!1907 (derivationStepZipper!2099 lt!2341195 (head!12774 s!2326))))))

(declare-fun b!6194566 () Bool)

(assert (=> b!6194566 (= e!3772500 (matchZipper!2143 (derivationStepZipper!2099 (derivationStepZipper!2099 lt!2341195 (head!12774 s!2326)) (head!12774 (tail!11859 s!2326))) (tail!11859 (tail!11859 s!2326))))))

(assert (= (and d!1942297 c!1117961) b!6194565))

(assert (= (and d!1942297 (not c!1117961)) b!6194566))

(assert (=> d!1942297 m!7026740))

(assert (=> d!1942297 m!7026744))

(assert (=> b!6194565 m!7026992))

(declare-fun m!7028582 () Bool)

(assert (=> b!6194565 m!7028582))

(assert (=> b!6194566 m!7026740))

(assert (=> b!6194566 m!7027690))

(assert (=> b!6194566 m!7026992))

(assert (=> b!6194566 m!7027690))

(declare-fun m!7028584 () Bool)

(assert (=> b!6194566 m!7028584))

(assert (=> b!6194566 m!7026740))

(assert (=> b!6194566 m!7027694))

(assert (=> b!6194566 m!7028584))

(assert (=> b!6194566 m!7027694))

(declare-fun m!7028586 () Bool)

(assert (=> b!6194566 m!7028586))

(assert (=> b!6193002 d!1942297))

(declare-fun bs!1537187 () Bool)

(declare-fun d!1942299 () Bool)

(assert (= bs!1537187 (and d!1942299 d!1942199)))

(declare-fun lambda!338342 () Int)

(assert (=> bs!1537187 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338333))))

(declare-fun bs!1537188 () Bool)

(assert (= bs!1537188 (and d!1942299 d!1942039)))

(assert (=> bs!1537188 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338306))))

(declare-fun bs!1537189 () Bool)

(assert (= bs!1537189 (and d!1942299 d!1941795)))

(assert (=> bs!1537189 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338282))))

(declare-fun bs!1537190 () Bool)

(assert (= bs!1537190 (and d!1942299 b!6192421)))

(assert (=> bs!1537190 (= (= (head!12774 s!2326) (h!71018 s!2326)) (= lambda!338342 lambda!338193))))

(declare-fun bs!1537191 () Bool)

(assert (= bs!1537191 (and d!1942299 d!1942233)))

(assert (=> bs!1537191 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338337))))

(declare-fun bs!1537192 () Bool)

(assert (= bs!1537192 (and d!1942299 d!1941861)))

(assert (=> bs!1537192 (= lambda!338342 lambda!338290)))

(declare-fun bs!1537193 () Bool)

(assert (= bs!1537193 (and d!1942299 d!1941851)))

(assert (=> bs!1537193 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338286))))

(declare-fun bs!1537194 () Bool)

(assert (= bs!1537194 (and d!1942299 d!1941757)))

(assert (=> bs!1537194 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338275))))

(declare-fun bs!1537195 () Bool)

(assert (= bs!1537195 (and d!1942299 d!1942013)))

(assert (=> bs!1537195 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338304))))

(declare-fun bs!1537196 () Bool)

(assert (= bs!1537196 (and d!1942299 d!1942157)))

(assert (=> bs!1537196 (= lambda!338342 lambda!338329)))

(declare-fun bs!1537197 () Bool)

(assert (= bs!1537197 (and d!1942299 d!1942023)))

(assert (=> bs!1537197 (= (= (head!12774 s!2326) (head!12774 (t!378206 s!2326))) (= lambda!338342 lambda!338305))))

(assert (=> d!1942299 true))

(assert (=> d!1942299 (= (derivationStepZipper!2099 lt!2341195 (head!12774 s!2326)) (flatMap!1636 lt!2341195 lambda!338342))))

(declare-fun bs!1537198 () Bool)

(assert (= bs!1537198 d!1942299))

(declare-fun m!7028588 () Bool)

(assert (=> bs!1537198 m!7028588))

(assert (=> b!6193002 d!1942299))

(assert (=> b!6193002 d!1941801))

(assert (=> b!6193002 d!1941813))

(declare-fun bs!1537199 () Bool)

(declare-fun d!1942301 () Bool)

(assert (= bs!1537199 (and d!1942301 d!1941975)))

(declare-fun lambda!338343 () Int)

(assert (=> bs!1537199 (= lambda!338343 lambda!338301)))

(declare-fun bs!1537200 () Bool)

(assert (= bs!1537200 (and d!1942301 d!1942115)))

(assert (=> bs!1537200 (= lambda!338343 lambda!338326)))

(declare-fun bs!1537201 () Bool)

(assert (= bs!1537201 (and d!1942301 d!1942109)))

(assert (=> bs!1537201 (= lambda!338343 lambda!338324)))

(declare-fun bs!1537202 () Bool)

(assert (= bs!1537202 (and d!1942301 d!1942143)))

(assert (=> bs!1537202 (= lambda!338343 lambda!338328)))

(declare-fun bs!1537203 () Bool)

(assert (= bs!1537203 (and d!1942301 d!1941855)))

(assert (=> bs!1537203 (= lambda!338343 lambda!338289)))

(declare-fun bs!1537204 () Bool)

(assert (= bs!1537204 (and d!1942301 d!1941871)))

(assert (=> bs!1537204 (= lambda!338343 lambda!338291)))

(declare-fun bs!1537205 () Bool)

(assert (= bs!1537205 (and d!1942301 d!1941929)))

(assert (=> bs!1537205 (= lambda!338343 lambda!338294)))

(assert (=> d!1942301 (= (nullableZipper!1907 lt!2341166) (exists!2468 lt!2341166 lambda!338343))))

(declare-fun bs!1537206 () Bool)

(assert (= bs!1537206 d!1942301))

(declare-fun m!7028594 () Bool)

(assert (=> bs!1537206 m!7028594))

(assert (=> b!6193239 d!1942301))

(declare-fun bs!1537207 () Bool)

(declare-fun d!1942305 () Bool)

(assert (= bs!1537207 (and d!1942305 d!1941975)))

(declare-fun lambda!338344 () Int)

(assert (=> bs!1537207 (= lambda!338344 lambda!338301)))

(declare-fun bs!1537208 () Bool)

(assert (= bs!1537208 (and d!1942305 d!1942115)))

(assert (=> bs!1537208 (= lambda!338344 lambda!338326)))

(declare-fun bs!1537209 () Bool)

(assert (= bs!1537209 (and d!1942305 d!1942109)))

(assert (=> bs!1537209 (= lambda!338344 lambda!338324)))

(declare-fun bs!1537210 () Bool)

(assert (= bs!1537210 (and d!1942305 d!1942143)))

(assert (=> bs!1537210 (= lambda!338344 lambda!338328)))

(declare-fun bs!1537211 () Bool)

(assert (= bs!1537211 (and d!1942305 d!1941855)))

(assert (=> bs!1537211 (= lambda!338344 lambda!338289)))

(declare-fun bs!1537212 () Bool)

(assert (= bs!1537212 (and d!1942305 d!1942301)))

(assert (=> bs!1537212 (= lambda!338344 lambda!338343)))

(declare-fun bs!1537213 () Bool)

(assert (= bs!1537213 (and d!1942305 d!1941871)))

(assert (=> bs!1537213 (= lambda!338344 lambda!338291)))

(declare-fun bs!1537214 () Bool)

(assert (= bs!1537214 (and d!1942305 d!1941929)))

(assert (=> bs!1537214 (= lambda!338344 lambda!338294)))

(assert (=> d!1942305 (= (nullableZipper!1907 z!1189) (exists!2468 z!1189 lambda!338344))))

(declare-fun bs!1537215 () Bool)

(assert (= bs!1537215 d!1942305))

(declare-fun m!7028596 () Bool)

(assert (=> bs!1537215 m!7028596))

(assert (=> b!6192999 d!1942305))

(declare-fun d!1942307 () Bool)

(assert (=> d!1942307 (= (Exists!3201 (ite c!1117391 lambda!338211 lambda!338213)) (choose!46003 (ite c!1117391 lambda!338211 lambda!338213)))))

(declare-fun bs!1537216 () Bool)

(assert (= bs!1537216 d!1942307))

(declare-fun m!7028598 () Bool)

(assert (=> bs!1537216 m!7028598))

(assert (=> bm!517914 d!1942307))

(assert (=> bs!1536636 d!1941559))

(assert (=> b!6193293 d!1941811))

(assert (=> b!6193293 d!1941813))

(declare-fun bs!1537217 () Bool)

(declare-fun d!1942309 () Bool)

(assert (= bs!1537217 (and d!1942309 d!1941673)))

(declare-fun lambda!338345 () Int)

(assert (=> bs!1537217 (= lambda!338345 lambda!338262)))

(declare-fun bs!1537218 () Bool)

(assert (= bs!1537218 (and d!1942309 d!1942171)))

(assert (=> bs!1537218 (= lambda!338345 lambda!338330)))

(declare-fun bs!1537219 () Bool)

(assert (= bs!1537219 (and d!1942309 d!1941667)))

(assert (=> bs!1537219 (= lambda!338345 lambda!338257)))

(declare-fun bs!1537220 () Bool)

(assert (= bs!1537220 (and d!1942309 d!1941827)))

(assert (=> bs!1537220 (= lambda!338345 lambda!338284)))

(declare-fun bs!1537221 () Bool)

(assert (= bs!1537221 (and d!1942309 d!1941617)))

(assert (=> bs!1537221 (= lambda!338345 lambda!338252)))

(declare-fun bs!1537222 () Bool)

(assert (= bs!1537222 (and d!1942309 d!1941925)))

(assert (=> bs!1537222 (= lambda!338345 lambda!338293)))

(declare-fun bs!1537223 () Bool)

(assert (= bs!1537223 (and d!1942309 d!1941967)))

(assert (=> bs!1537223 (= lambda!338345 lambda!338298)))

(declare-fun bs!1537224 () Bool)

(assert (= bs!1537224 (and d!1942309 d!1941619)))

(assert (=> bs!1537224 (= lambda!338345 lambda!338253)))

(declare-fun bs!1537225 () Bool)

(assert (= bs!1537225 (and d!1942309 d!1941659)))

(assert (=> bs!1537225 (= lambda!338345 lambda!338256)))

(declare-fun bs!1537226 () Bool)

(assert (= bs!1537226 (and d!1942309 d!1941615)))

(assert (=> bs!1537226 (= lambda!338345 lambda!338249)))

(declare-fun bs!1537227 () Bool)

(assert (= bs!1537227 (and d!1942309 d!1941879)))

(assert (=> bs!1537227 (= lambda!338345 lambda!338292)))

(declare-fun bs!1537228 () Bool)

(assert (= bs!1537228 (and d!1942309 d!1941595)))

(assert (=> bs!1537228 (= lambda!338345 lambda!338245)))

(declare-fun bs!1537229 () Bool)

(assert (= bs!1537229 (and d!1942309 d!1941685)))

(assert (=> bs!1537229 (= lambda!338345 lambda!338263)))

(declare-fun bs!1537230 () Bool)

(assert (= bs!1537230 (and d!1942309 d!1942267)))

(assert (=> bs!1537230 (= lambda!338345 lambda!338341)))

(declare-fun b!6194579 () Bool)

(declare-fun e!3772517 () Bool)

(declare-fun lt!2341395 () Regex!16131)

(assert (=> b!6194579 (= e!3772517 (isEmptyLang!1552 lt!2341395))))

(declare-fun b!6194580 () Bool)

(declare-fun e!3772514 () Bool)

(assert (=> b!6194580 (= e!3772514 e!3772517)))

(declare-fun c!1117964 () Bool)

(assert (=> b!6194580 (= c!1117964 (isEmpty!36555 (t!378204 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6194581 () Bool)

(declare-fun e!3772516 () Bool)

(assert (=> b!6194581 (= e!3772516 (isEmpty!36555 (t!378204 (t!378204 (unfocusZipperList!1552 zl!343)))))))

(declare-fun b!6194582 () Bool)

(declare-fun e!3772513 () Regex!16131)

(assert (=> b!6194582 (= e!3772513 (h!71016 (t!378204 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6194583 () Bool)

(declare-fun e!3772515 () Bool)

(assert (=> b!6194583 (= e!3772517 e!3772515)))

(declare-fun c!1117963 () Bool)

(assert (=> b!6194583 (= c!1117963 (isEmpty!36555 (tail!11860 (t!378204 (unfocusZipperList!1552 zl!343)))))))

(declare-fun b!6194584 () Bool)

(assert (=> b!6194584 (= e!3772515 (= lt!2341395 (head!12775 (t!378204 (unfocusZipperList!1552 zl!343)))))))

(assert (=> d!1942309 e!3772514))

(declare-fun res!2562460 () Bool)

(assert (=> d!1942309 (=> (not res!2562460) (not e!3772514))))

(assert (=> d!1942309 (= res!2562460 (validRegex!7867 lt!2341395))))

(assert (=> d!1942309 (= lt!2341395 e!3772513)))

(declare-fun c!1117965 () Bool)

(assert (=> d!1942309 (= c!1117965 e!3772516)))

(declare-fun res!2562461 () Bool)

(assert (=> d!1942309 (=> (not res!2562461) (not e!3772516))))

(assert (=> d!1942309 (= res!2562461 ((_ is Cons!64568) (t!378204 (unfocusZipperList!1552 zl!343))))))

(assert (=> d!1942309 (forall!15247 (t!378204 (unfocusZipperList!1552 zl!343)) lambda!338345)))

(assert (=> d!1942309 (= (generalisedUnion!1975 (t!378204 (unfocusZipperList!1552 zl!343))) lt!2341395)))

(declare-fun b!6194585 () Bool)

(declare-fun e!3772518 () Regex!16131)

(assert (=> b!6194585 (= e!3772518 (Union!16131 (h!71016 (t!378204 (unfocusZipperList!1552 zl!343))) (generalisedUnion!1975 (t!378204 (t!378204 (unfocusZipperList!1552 zl!343))))))))

(declare-fun b!6194586 () Bool)

(assert (=> b!6194586 (= e!3772513 e!3772518)))

(declare-fun c!1117962 () Bool)

(assert (=> b!6194586 (= c!1117962 ((_ is Cons!64568) (t!378204 (unfocusZipperList!1552 zl!343))))))

(declare-fun b!6194587 () Bool)

(assert (=> b!6194587 (= e!3772518 EmptyLang!16131)))

(declare-fun b!6194588 () Bool)

(assert (=> b!6194588 (= e!3772515 (isUnion!982 lt!2341395))))

(assert (= (and d!1942309 res!2562461) b!6194581))

(assert (= (and d!1942309 c!1117965) b!6194582))

(assert (= (and d!1942309 (not c!1117965)) b!6194586))

(assert (= (and b!6194586 c!1117962) b!6194585))

(assert (= (and b!6194586 (not c!1117962)) b!6194587))

(assert (= (and d!1942309 res!2562460) b!6194580))

(assert (= (and b!6194580 c!1117964) b!6194579))

(assert (= (and b!6194580 (not c!1117964)) b!6194583))

(assert (= (and b!6194583 c!1117963) b!6194584))

(assert (= (and b!6194583 (not c!1117963)) b!6194588))

(declare-fun m!7028614 () Bool)

(assert (=> d!1942309 m!7028614))

(declare-fun m!7028616 () Bool)

(assert (=> d!1942309 m!7028616))

(declare-fun m!7028618 () Bool)

(assert (=> b!6194584 m!7028618))

(declare-fun m!7028620 () Bool)

(assert (=> b!6194579 m!7028620))

(assert (=> b!6194580 m!7027154))

(declare-fun m!7028622 () Bool)

(assert (=> b!6194588 m!7028622))

(declare-fun m!7028624 () Bool)

(assert (=> b!6194581 m!7028624))

(declare-fun m!7028626 () Bool)

(assert (=> b!6194585 m!7028626))

(declare-fun m!7028628 () Bool)

(assert (=> b!6194583 m!7028628))

(assert (=> b!6194583 m!7028628))

(declare-fun m!7028630 () Bool)

(assert (=> b!6194583 m!7028630))

(assert (=> b!6193195 d!1942309))

(declare-fun bs!1537232 () Bool)

(declare-fun b!6194613 () Bool)

(assert (= bs!1537232 (and b!6194613 d!1941529)))

(declare-fun lambda!338346 () Int)

(assert (=> bs!1537232 (not (= lambda!338346 lambda!338236))))

(declare-fun bs!1537233 () Bool)

(assert (= bs!1537233 (and b!6194613 d!1942053)))

(assert (=> bs!1537233 (not (= lambda!338346 lambda!338313))))

(declare-fun bs!1537234 () Bool)

(assert (= bs!1537234 (and b!6194613 b!6194224)))

(assert (=> bs!1537234 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 (regTwo!32775 r!7292))) (= (regTwo!32775 lt!2341177) (regTwo!32775 r!7292))) (= lambda!338346 lambda!338317))))

(declare-fun bs!1537235 () Bool)

(assert (= bs!1537235 (and b!6194613 b!6193614)))

(assert (=> bs!1537235 (not (= lambda!338346 lambda!338277))))

(assert (=> bs!1537233 (not (= lambda!338346 lambda!338314))))

(declare-fun bs!1537236 () Bool)

(assert (= bs!1537236 (and b!6194613 b!6193329)))

(assert (=> bs!1537236 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 lt!2341177)) (= (regTwo!32775 lt!2341177) lt!2341177)) (= lambda!338346 lambda!338260))))

(declare-fun bs!1537237 () Bool)

(assert (= bs!1537237 (and b!6194613 b!6193499)))

(assert (=> bs!1537237 (not (= lambda!338346 lambda!338270))))

(declare-fun bs!1537238 () Bool)

(assert (= bs!1537238 (and b!6194613 b!6193331)))

(assert (=> bs!1537238 (not (= lambda!338346 lambda!338261))))

(declare-fun bs!1537239 () Bool)

(assert (= bs!1537239 (and b!6194613 b!6192412)))

(assert (=> bs!1537239 (not (= lambda!338346 lambda!338192))))

(declare-fun bs!1537240 () Bool)

(assert (= bs!1537240 (and b!6194613 b!6194417)))

(assert (=> bs!1537240 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 (regOne!32775 r!7292))) (= (regTwo!32775 lt!2341177) (regOne!32775 r!7292))) (= lambda!338346 lambda!338334))))

(declare-fun bs!1537241 () Bool)

(assert (= bs!1537241 (and b!6194613 b!6193320)))

(assert (=> bs!1537241 (not (= lambda!338346 lambda!338259))))

(assert (=> bs!1537239 (not (= lambda!338346 lambda!338191))))

(assert (=> bs!1537232 (not (= lambda!338346 lambda!338235))))

(declare-fun bs!1537246 () Bool)

(assert (= bs!1537246 (and b!6194613 b!6193318)))

(assert (=> bs!1537246 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 lt!2341185)) (= (regTwo!32775 lt!2341177) lt!2341185)) (= lambda!338346 lambda!338258))))

(declare-fun bs!1537249 () Bool)

(assert (= bs!1537249 (and b!6194613 b!6193612)))

(assert (=> bs!1537249 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 (regOne!32775 lt!2341185))) (= (regTwo!32775 lt!2341177) (regOne!32775 lt!2341185))) (= lambda!338346 lambda!338276))))

(declare-fun bs!1537250 () Bool)

(assert (= bs!1537250 (and b!6194613 b!6192678)))

(assert (=> bs!1537250 (not (= lambda!338346 lambda!338213))))

(declare-fun bs!1537252 () Bool)

(assert (= bs!1537252 (and b!6194613 d!1941517)))

(assert (=> bs!1537252 (not (= lambda!338346 lambda!338227))))

(declare-fun bs!1537253 () Bool)

(assert (= bs!1537253 (and b!6194613 b!6194226)))

(assert (=> bs!1537253 (not (= lambda!338346 lambda!338318))))

(declare-fun bs!1537254 () Bool)

(assert (= bs!1537254 (and b!6194613 b!6193497)))

(assert (=> bs!1537254 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 (regOne!32775 lt!2341177))) (= (regTwo!32775 lt!2341177) (regOne!32775 lt!2341177))) (= lambda!338346 lambda!338269))))

(declare-fun bs!1537255 () Bool)

(assert (= bs!1537255 (and b!6194613 b!6194419)))

(assert (=> bs!1537255 (not (= lambda!338346 lambda!338336))))

(declare-fun bs!1537256 () Bool)

(assert (= bs!1537256 (and b!6194613 b!6192676)))

(assert (=> bs!1537256 (= (and (= (reg!16460 (regTwo!32775 lt!2341177)) (reg!16460 r!7292)) (= (regTwo!32775 lt!2341177) r!7292)) (= lambda!338346 lambda!338211))))

(assert (=> b!6194613 true))

(assert (=> b!6194613 true))

(declare-fun bs!1537264 () Bool)

(declare-fun b!6194615 () Bool)

(assert (= bs!1537264 (and b!6194615 d!1941529)))

(declare-fun lambda!338349 () Int)

(assert (=> bs!1537264 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338349 lambda!338236))))

(declare-fun bs!1537266 () Bool)

(assert (= bs!1537266 (and b!6194615 d!1942053)))

(assert (=> bs!1537266 (not (= lambda!338349 lambda!338313))))

(declare-fun bs!1537267 () Bool)

(assert (= bs!1537267 (and b!6194615 b!6194224)))

(assert (=> bs!1537267 (not (= lambda!338349 lambda!338317))))

(declare-fun bs!1537269 () Bool)

(assert (= bs!1537269 (and b!6194615 b!6193614)))

(assert (=> bs!1537269 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 (regOne!32775 lt!2341185))) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 (regOne!32775 lt!2341185)))) (= lambda!338349 lambda!338277))))

(assert (=> bs!1537266 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338349 lambda!338314))))

(declare-fun bs!1537271 () Bool)

(assert (= bs!1537271 (and b!6194615 b!6193329)))

(assert (=> bs!1537271 (not (= lambda!338349 lambda!338260))))

(declare-fun bs!1537273 () Bool)

(assert (= bs!1537273 (and b!6194615 b!6193499)))

(assert (=> bs!1537273 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338349 lambda!338270))))

(declare-fun bs!1537276 () Bool)

(assert (= bs!1537276 (and b!6194615 b!6194613)))

(assert (=> bs!1537276 (not (= lambda!338349 lambda!338346))))

(declare-fun bs!1537279 () Bool)

(assert (= bs!1537279 (and b!6194615 b!6193331)))

(assert (=> bs!1537279 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 lt!2341177))) (= lambda!338349 lambda!338261))))

(declare-fun bs!1537281 () Bool)

(assert (= bs!1537281 (and b!6194615 b!6192412)))

(assert (=> bs!1537281 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338349 lambda!338192))))

(declare-fun bs!1537282 () Bool)

(assert (= bs!1537282 (and b!6194615 b!6194417)))

(assert (=> bs!1537282 (not (= lambda!338349 lambda!338334))))

(declare-fun bs!1537283 () Bool)

(assert (= bs!1537283 (and b!6194615 b!6193320)))

(assert (=> bs!1537283 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 lt!2341185))) (= lambda!338349 lambda!338259))))

(assert (=> bs!1537281 (not (= lambda!338349 lambda!338191))))

(assert (=> bs!1537264 (not (= lambda!338349 lambda!338235))))

(declare-fun bs!1537284 () Bool)

(assert (= bs!1537284 (and b!6194615 b!6193318)))

(assert (=> bs!1537284 (not (= lambda!338349 lambda!338258))))

(declare-fun bs!1537285 () Bool)

(assert (= bs!1537285 (and b!6194615 b!6193612)))

(assert (=> bs!1537285 (not (= lambda!338349 lambda!338276))))

(declare-fun bs!1537286 () Bool)

(assert (= bs!1537286 (and b!6194615 b!6192678)))

(assert (=> bs!1537286 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 r!7292))) (= lambda!338349 lambda!338213))))

(declare-fun bs!1537287 () Bool)

(assert (= bs!1537287 (and b!6194615 d!1941517)))

(assert (=> bs!1537287 (not (= lambda!338349 lambda!338227))))

(declare-fun bs!1537288 () Bool)

(assert (= bs!1537288 (and b!6194615 b!6194226)))

(assert (=> bs!1537288 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 (regTwo!32775 r!7292))) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 (regTwo!32775 r!7292)))) (= lambda!338349 lambda!338318))))

(declare-fun bs!1537289 () Bool)

(assert (= bs!1537289 (and b!6194615 b!6193497)))

(assert (=> bs!1537289 (not (= lambda!338349 lambda!338269))))

(declare-fun bs!1537290 () Bool)

(assert (= bs!1537290 (and b!6194615 b!6194419)))

(assert (=> bs!1537290 (= (and (= (regOne!32774 (regTwo!32775 lt!2341177)) (regOne!32774 (regOne!32775 r!7292))) (= (regTwo!32774 (regTwo!32775 lt!2341177)) (regTwo!32774 (regOne!32775 r!7292)))) (= lambda!338349 lambda!338336))))

(declare-fun bs!1537291 () Bool)

(assert (= bs!1537291 (and b!6194615 b!6192676)))

(assert (=> bs!1537291 (not (= lambda!338349 lambda!338211))))

(assert (=> b!6194615 true))

(assert (=> b!6194615 true))

(declare-fun b!6194611 () Bool)

(declare-fun e!3772533 () Bool)

(declare-fun call!518289 () Bool)

(assert (=> b!6194611 (= e!3772533 call!518289)))

(declare-fun b!6194612 () Bool)

(declare-fun e!3772534 () Bool)

(assert (=> b!6194612 (= e!3772534 (= s!2326 (Cons!64570 (c!1117312 (regTwo!32775 lt!2341177)) Nil!64570)))))

(declare-fun e!3772532 () Bool)

(declare-fun call!518290 () Bool)

(assert (=> b!6194613 (= e!3772532 call!518290)))

(declare-fun b!6194614 () Bool)

(declare-fun e!3772536 () Bool)

(declare-fun e!3772537 () Bool)

(assert (=> b!6194614 (= e!3772536 e!3772537)))

(declare-fun c!1117972 () Bool)

(assert (=> b!6194614 (= c!1117972 ((_ is Star!16131) (regTwo!32775 lt!2341177)))))

(assert (=> b!6194615 (= e!3772537 call!518290)))

(declare-fun b!6194616 () Bool)

(declare-fun c!1117974 () Bool)

(assert (=> b!6194616 (= c!1117974 ((_ is ElementMatch!16131) (regTwo!32775 lt!2341177)))))

(declare-fun e!3772535 () Bool)

(assert (=> b!6194616 (= e!3772535 e!3772534)))

(declare-fun b!6194617 () Bool)

(declare-fun c!1117971 () Bool)

(assert (=> b!6194617 (= c!1117971 ((_ is Union!16131) (regTwo!32775 lt!2341177)))))

(assert (=> b!6194617 (= e!3772534 e!3772536)))

(declare-fun b!6194618 () Bool)

(declare-fun res!2562475 () Bool)

(assert (=> b!6194618 (=> res!2562475 e!3772532)))

(assert (=> b!6194618 (= res!2562475 call!518289)))

(assert (=> b!6194618 (= e!3772537 e!3772532)))

(declare-fun bm!518284 () Bool)

(assert (=> bm!518284 (= call!518289 (isEmpty!36557 s!2326))))

(declare-fun b!6194619 () Bool)

(assert (=> b!6194619 (= e!3772533 e!3772535)))

(declare-fun res!2562473 () Bool)

(assert (=> b!6194619 (= res!2562473 (not ((_ is EmptyLang!16131) (regTwo!32775 lt!2341177))))))

(assert (=> b!6194619 (=> (not res!2562473) (not e!3772535))))

(declare-fun bm!518285 () Bool)

(assert (=> bm!518285 (= call!518290 (Exists!3201 (ite c!1117972 lambda!338346 lambda!338349)))))

(declare-fun b!6194620 () Bool)

(declare-fun e!3772538 () Bool)

(assert (=> b!6194620 (= e!3772536 e!3772538)))

(declare-fun res!2562474 () Bool)

(assert (=> b!6194620 (= res!2562474 (matchRSpec!3232 (regOne!32775 (regTwo!32775 lt!2341177)) s!2326))))

(assert (=> b!6194620 (=> res!2562474 e!3772538)))

(declare-fun b!6194621 () Bool)

(assert (=> b!6194621 (= e!3772538 (matchRSpec!3232 (regTwo!32775 (regTwo!32775 lt!2341177)) s!2326))))

(declare-fun d!1942317 () Bool)

(declare-fun c!1117973 () Bool)

(assert (=> d!1942317 (= c!1117973 ((_ is EmptyExpr!16131) (regTwo!32775 lt!2341177)))))

(assert (=> d!1942317 (= (matchRSpec!3232 (regTwo!32775 lt!2341177) s!2326) e!3772533)))

(assert (= (and d!1942317 c!1117973) b!6194611))

(assert (= (and d!1942317 (not c!1117973)) b!6194619))

(assert (= (and b!6194619 res!2562473) b!6194616))

(assert (= (and b!6194616 c!1117974) b!6194612))

(assert (= (and b!6194616 (not c!1117974)) b!6194617))

(assert (= (and b!6194617 c!1117971) b!6194620))

(assert (= (and b!6194617 (not c!1117971)) b!6194614))

(assert (= (and b!6194620 (not res!2562474)) b!6194621))

(assert (= (and b!6194614 c!1117972) b!6194618))

(assert (= (and b!6194614 (not c!1117972)) b!6194615))

(assert (= (and b!6194618 (not res!2562475)) b!6194613))

(assert (= (or b!6194613 b!6194615) bm!518285))

(assert (= (or b!6194611 b!6194618) bm!518284))

(assert (=> bm!518284 m!7026692))

(declare-fun m!7028674 () Bool)

(assert (=> bm!518285 m!7028674))

(declare-fun m!7028676 () Bool)

(assert (=> b!6194620 m!7028676))

(declare-fun m!7028678 () Bool)

(assert (=> b!6194621 m!7028678))

(assert (=> b!6193337 d!1942317))

(assert (=> b!6193247 d!1941643))

(assert (=> d!1941637 d!1941865))

(declare-fun d!1942341 () Bool)

(assert (=> d!1942341 (= (nullable!6124 (reg!16460 r!7292)) (nullableFct!2082 (reg!16460 r!7292)))))

(declare-fun bs!1537292 () Bool)

(assert (= bs!1537292 d!1942341))

(declare-fun m!7028680 () Bool)

(assert (=> bs!1537292 m!7028680))

(assert (=> b!6193379 d!1942341))

(declare-fun b!6194663 () Bool)

(declare-fun e!3772572 () Bool)

(assert (=> b!6194663 (= e!3772572 (= (head!12774 (_1!36413 (get!22291 lt!2341270))) (c!1117312 (regOne!32774 r!7292))))))

(declare-fun b!6194664 () Bool)

(declare-fun res!2562493 () Bool)

(assert (=> b!6194664 (=> (not res!2562493) (not e!3772572))))

(assert (=> b!6194664 (= res!2562493 (isEmpty!36557 (tail!11859 (_1!36413 (get!22291 lt!2341270)))))))

(declare-fun b!6194665 () Bool)

(declare-fun res!2562494 () Bool)

(declare-fun e!3772566 () Bool)

(assert (=> b!6194665 (=> res!2562494 e!3772566)))

(assert (=> b!6194665 (= res!2562494 (not ((_ is ElementMatch!16131) (regOne!32774 r!7292))))))

(declare-fun e!3772568 () Bool)

(assert (=> b!6194665 (= e!3772568 e!3772566)))

(declare-fun b!6194666 () Bool)

(declare-fun e!3772567 () Bool)

(declare-fun e!3772569 () Bool)

(assert (=> b!6194666 (= e!3772567 e!3772569)))

(declare-fun res!2562492 () Bool)

(assert (=> b!6194666 (=> res!2562492 e!3772569)))

(declare-fun call!518302 () Bool)

(assert (=> b!6194666 (= res!2562492 call!518302)))

(declare-fun b!6194667 () Bool)

(declare-fun e!3772570 () Bool)

(assert (=> b!6194667 (= e!3772570 (matchR!8314 (derivativeStep!4846 (regOne!32774 r!7292) (head!12774 (_1!36413 (get!22291 lt!2341270)))) (tail!11859 (_1!36413 (get!22291 lt!2341270)))))))

(declare-fun b!6194668 () Bool)

(declare-fun res!2562489 () Bool)

(assert (=> b!6194668 (=> res!2562489 e!3772569)))

(assert (=> b!6194668 (= res!2562489 (not (isEmpty!36557 (tail!11859 (_1!36413 (get!22291 lt!2341270))))))))

(declare-fun b!6194669 () Bool)

(assert (=> b!6194669 (= e!3772570 (nullable!6124 (regOne!32774 r!7292)))))

(declare-fun bm!518297 () Bool)

(assert (=> bm!518297 (= call!518302 (isEmpty!36557 (_1!36413 (get!22291 lt!2341270))))))

(declare-fun b!6194671 () Bool)

(declare-fun e!3772571 () Bool)

(declare-fun lt!2341398 () Bool)

(assert (=> b!6194671 (= e!3772571 (= lt!2341398 call!518302))))

(declare-fun b!6194672 () Bool)

(assert (=> b!6194672 (= e!3772569 (not (= (head!12774 (_1!36413 (get!22291 lt!2341270))) (c!1117312 (regOne!32774 r!7292)))))))

(declare-fun b!6194670 () Bool)

(assert (=> b!6194670 (= e!3772571 e!3772568)))

(declare-fun c!1117991 () Bool)

(assert (=> b!6194670 (= c!1117991 ((_ is EmptyLang!16131) (regOne!32774 r!7292)))))

(declare-fun d!1942343 () Bool)

(assert (=> d!1942343 e!3772571))

(declare-fun c!1117990 () Bool)

(assert (=> d!1942343 (= c!1117990 ((_ is EmptyExpr!16131) (regOne!32774 r!7292)))))

(assert (=> d!1942343 (= lt!2341398 e!3772570)))

(declare-fun c!1117989 () Bool)

(assert (=> d!1942343 (= c!1117989 (isEmpty!36557 (_1!36413 (get!22291 lt!2341270))))))

(assert (=> d!1942343 (validRegex!7867 (regOne!32774 r!7292))))

(assert (=> d!1942343 (= (matchR!8314 (regOne!32774 r!7292) (_1!36413 (get!22291 lt!2341270))) lt!2341398)))

(declare-fun b!6194673 () Bool)

(assert (=> b!6194673 (= e!3772566 e!3772567)))

(declare-fun res!2562496 () Bool)

(assert (=> b!6194673 (=> (not res!2562496) (not e!3772567))))

(assert (=> b!6194673 (= res!2562496 (not lt!2341398))))

(declare-fun b!6194674 () Bool)

(declare-fun res!2562491 () Bool)

(assert (=> b!6194674 (=> res!2562491 e!3772566)))

(assert (=> b!6194674 (= res!2562491 e!3772572)))

(declare-fun res!2562495 () Bool)

(assert (=> b!6194674 (=> (not res!2562495) (not e!3772572))))

(assert (=> b!6194674 (= res!2562495 lt!2341398)))

(declare-fun b!6194675 () Bool)

(declare-fun res!2562490 () Bool)

(assert (=> b!6194675 (=> (not res!2562490) (not e!3772572))))

(assert (=> b!6194675 (= res!2562490 (not call!518302))))

(declare-fun b!6194676 () Bool)

(assert (=> b!6194676 (= e!3772568 (not lt!2341398))))

(assert (= (and d!1942343 c!1117989) b!6194669))

(assert (= (and d!1942343 (not c!1117989)) b!6194667))

(assert (= (and d!1942343 c!1117990) b!6194671))

(assert (= (and d!1942343 (not c!1117990)) b!6194670))

(assert (= (and b!6194670 c!1117991) b!6194676))

(assert (= (and b!6194670 (not c!1117991)) b!6194665))

(assert (= (and b!6194665 (not res!2562494)) b!6194674))

(assert (= (and b!6194674 res!2562495) b!6194675))

(assert (= (and b!6194675 res!2562490) b!6194664))

(assert (= (and b!6194664 res!2562493) b!6194663))

(assert (= (and b!6194674 (not res!2562491)) b!6194673))

(assert (= (and b!6194673 res!2562496) b!6194666))

(assert (= (and b!6194666 (not res!2562492)) b!6194668))

(assert (= (and b!6194668 (not res!2562489)) b!6194672))

(assert (= (or b!6194671 b!6194666 b!6194675) bm!518297))

(declare-fun m!7028682 () Bool)

(assert (=> d!1942343 m!7028682))

(assert (=> d!1942343 m!7026872))

(declare-fun m!7028684 () Bool)

(assert (=> b!6194667 m!7028684))

(assert (=> b!6194667 m!7028684))

(declare-fun m!7028686 () Bool)

(assert (=> b!6194667 m!7028686))

(declare-fun m!7028688 () Bool)

(assert (=> b!6194667 m!7028688))

(assert (=> b!6194667 m!7028686))

(assert (=> b!6194667 m!7028688))

(declare-fun m!7028690 () Bool)

(assert (=> b!6194667 m!7028690))

(assert (=> bm!518297 m!7028682))

(assert (=> b!6194664 m!7028688))

(assert (=> b!6194664 m!7028688))

(declare-fun m!7028692 () Bool)

(assert (=> b!6194664 m!7028692))

(assert (=> b!6194663 m!7028684))

(assert (=> b!6194668 m!7028688))

(assert (=> b!6194668 m!7028688))

(assert (=> b!6194668 m!7028692))

(assert (=> b!6194669 m!7027824))

(assert (=> b!6194672 m!7028684))

(assert (=> b!6192893 d!1942343))

(assert (=> b!6192893 d!1942185))

(declare-fun b!6194677 () Bool)

(declare-fun e!3772573 () (InoxSet Context!11030))

(declare-fun call!518303 () (InoxSet Context!11030))

(assert (=> b!6194677 (= e!3772573 call!518303)))

(declare-fun b!6194678 () Bool)

(assert (=> b!6194678 (= e!3772573 ((as const (Array Context!11030 Bool)) false))))

(declare-fun d!1942345 () Bool)

(declare-fun c!1117992 () Bool)

(declare-fun e!3772575 () Bool)

(assert (=> d!1942345 (= c!1117992 e!3772575)))

(declare-fun res!2562497 () Bool)

(assert (=> d!1942345 (=> (not res!2562497) (not e!3772575))))

(assert (=> d!1942345 (= res!2562497 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun e!3772574 () (InoxSet Context!11030))

(assert (=> d!1942345 (= (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))) (h!71018 s!2326)) e!3772574)))

(declare-fun b!6194679 () Bool)

(assert (=> b!6194679 (= e!3772574 e!3772573)))

(declare-fun c!1117993 () Bool)

(assert (=> b!6194679 (= c!1117993 ((_ is Cons!64568) (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6194680 () Bool)

(assert (=> b!6194680 (= e!3772574 ((_ map or) call!518303 (derivationStepZipperUp!1305 (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343))))))) (h!71018 s!2326))))))

(declare-fun bm!518298 () Bool)

(assert (=> bm!518298 (= call!518303 (derivationStepZipperDown!1379 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))))) (Context!11031 (t!378204 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343))))))) (h!71018 s!2326)))))

(declare-fun b!6194681 () Bool)

(assert (=> b!6194681 (= e!3772575 (nullable!6124 (h!71016 (exprs!6015 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343))))))))))

(assert (= (and d!1942345 res!2562497) b!6194681))

(assert (= (and d!1942345 c!1117992) b!6194680))

(assert (= (and d!1942345 (not c!1117992)) b!6194679))

(assert (= (and b!6194679 c!1117993) b!6194677))

(assert (= (and b!6194679 (not c!1117993)) b!6194678))

(assert (= (or b!6194680 b!6194677) bm!518298))

(declare-fun m!7028694 () Bool)

(assert (=> b!6194680 m!7028694))

(declare-fun m!7028696 () Bool)

(assert (=> bm!518298 m!7028696))

(declare-fun m!7028698 () Bool)

(assert (=> b!6194681 m!7028698))

(assert (=> b!6193229 d!1942345))

(assert (=> d!1941661 d!1941653))

(assert (=> d!1941661 d!1941671))

(declare-fun d!1942347 () Bool)

(assert (=> d!1942347 (= (matchR!8314 lt!2341177 s!2326) (matchRSpec!3232 lt!2341177 s!2326))))

(assert (=> d!1942347 true))

(declare-fun _$88!4779 () Unit!157827)

(assert (=> d!1942347 (= (choose!46001 lt!2341177 s!2326) _$88!4779)))

(declare-fun bs!1537309 () Bool)

(assert (= bs!1537309 d!1942347))

(assert (=> bs!1537309 m!7026518))

(assert (=> bs!1537309 m!7026506))

(assert (=> d!1941661 d!1942347))

(assert (=> d!1941661 d!1941853))

(declare-fun d!1942349 () Bool)

(declare-fun lt!2341399 () Int)

(assert (=> d!1942349 (>= lt!2341399 0)))

(declare-fun e!3772576 () Int)

(assert (=> d!1942349 (= lt!2341399 e!3772576)))

(declare-fun c!1117994 () Bool)

(assert (=> d!1942349 (= c!1117994 ((_ is Cons!64568) (exprs!6015 (h!71017 zl!343))))))

(assert (=> d!1942349 (= (contextDepthTotal!283 (h!71017 zl!343)) lt!2341399)))

(declare-fun b!6194682 () Bool)

(assert (=> b!6194682 (= e!3772576 (+ (regexDepthTotal!142 (h!71016 (exprs!6015 (h!71017 zl!343)))) (contextDepthTotal!283 (Context!11031 (t!378204 (exprs!6015 (h!71017 zl!343)))))))))

(declare-fun b!6194683 () Bool)

(assert (=> b!6194683 (= e!3772576 1)))

(assert (= (and d!1942349 c!1117994) b!6194682))

(assert (= (and d!1942349 (not c!1117994)) b!6194683))

(declare-fun m!7028700 () Bool)

(assert (=> b!6194682 m!7028700))

(declare-fun m!7028702 () Bool)

(assert (=> b!6194682 m!7028702))

(assert (=> b!6192527 d!1942349))

(declare-fun d!1942351 () Bool)

(declare-fun lt!2341400 () Int)

(assert (=> d!1942351 (>= lt!2341400 0)))

(declare-fun e!3772577 () Int)

(assert (=> d!1942351 (= lt!2341400 e!3772577)))

(declare-fun c!1117995 () Bool)

(assert (=> d!1942351 (= c!1117995 ((_ is Cons!64569) (t!378205 zl!343)))))

(assert (=> d!1942351 (= (zipperDepthTotal!314 (t!378205 zl!343)) lt!2341400)))

(declare-fun b!6194684 () Bool)

(assert (=> b!6194684 (= e!3772577 (+ (contextDepthTotal!283 (h!71017 (t!378205 zl!343))) (zipperDepthTotal!314 (t!378205 (t!378205 zl!343)))))))

(declare-fun b!6194685 () Bool)

(assert (=> b!6194685 (= e!3772577 0)))

(assert (= (and d!1942351 c!1117995) b!6194684))

(assert (= (and d!1942351 (not c!1117995)) b!6194685))

(declare-fun m!7028704 () Bool)

(assert (=> b!6194684 m!7028704))

(declare-fun m!7028706 () Bool)

(assert (=> b!6194684 m!7028706))

(assert (=> b!6192527 d!1942351))

(declare-fun d!1942353 () Bool)

(assert (=> d!1942353 (= (isConcat!1066 lt!2341335) ((_ is Concat!24976) lt!2341335))))

(assert (=> b!6193382 d!1942353))

(assert (=> d!1941655 d!1941665))

(assert (=> d!1941655 d!1941669))

(declare-fun d!1942355 () Bool)

(assert (=> d!1942355 (= (matchR!8314 lt!2341185 s!2326) (matchRSpec!3232 lt!2341185 s!2326))))

(assert (=> d!1942355 true))

(declare-fun _$88!4780 () Unit!157827)

(assert (=> d!1942355 (= (choose!46001 lt!2341185 s!2326) _$88!4780)))

(declare-fun bs!1537313 () Bool)

(assert (= bs!1537313 d!1942355))

(assert (=> bs!1537313 m!7026522))

(assert (=> bs!1537313 m!7026508))

(assert (=> d!1941655 d!1942355))

(assert (=> d!1941655 d!1942149))

(assert (=> d!1941681 d!1941865))

(declare-fun bs!1537314 () Bool)

(declare-fun d!1942357 () Bool)

(assert (= bs!1537314 (and d!1942357 d!1941975)))

(declare-fun lambda!338352 () Int)

(assert (=> bs!1537314 (= lambda!338352 lambda!338301)))

(declare-fun bs!1537315 () Bool)

(assert (= bs!1537315 (and d!1942357 d!1942115)))

(assert (=> bs!1537315 (= lambda!338352 lambda!338326)))

(declare-fun bs!1537317 () Bool)

(assert (= bs!1537317 (and d!1942357 d!1942109)))

(assert (=> bs!1537317 (= lambda!338352 lambda!338324)))

(declare-fun bs!1537318 () Bool)

(assert (= bs!1537318 (and d!1942357 d!1942143)))

(assert (=> bs!1537318 (= lambda!338352 lambda!338328)))

(declare-fun bs!1537319 () Bool)

(assert (= bs!1537319 (and d!1942357 d!1941855)))

(assert (=> bs!1537319 (= lambda!338352 lambda!338289)))

(declare-fun bs!1537320 () Bool)

(assert (= bs!1537320 (and d!1942357 d!1942301)))

(assert (=> bs!1537320 (= lambda!338352 lambda!338343)))

(declare-fun bs!1537321 () Bool)

(assert (= bs!1537321 (and d!1942357 d!1941871)))

(assert (=> bs!1537321 (= lambda!338352 lambda!338291)))

(declare-fun bs!1537323 () Bool)

(assert (= bs!1537323 (and d!1942357 d!1942305)))

(assert (=> bs!1537323 (= lambda!338352 lambda!338344)))

(declare-fun bs!1537324 () Bool)

(assert (= bs!1537324 (and d!1942357 d!1941929)))

(assert (=> bs!1537324 (= lambda!338352 lambda!338294)))

(assert (=> d!1942357 (= (nullableZipper!1907 lt!2341195) (exists!2468 lt!2341195 lambda!338352))))

(declare-fun bs!1537326 () Bool)

(assert (= bs!1537326 d!1942357))

(declare-fun m!7028708 () Bool)

(assert (=> bs!1537326 m!7028708))

(assert (=> b!6193001 d!1942357))

(assert (=> d!1941517 d!1941501))

(assert (=> d!1941517 d!1941909))

(assert (=> d!1941517 d!1941545))

(declare-fun bs!1537356 () Bool)

(declare-fun d!1942359 () Bool)

(assert (= bs!1537356 (and d!1942359 d!1941529)))

(declare-fun lambda!338358 () Int)

(assert (=> bs!1537356 (not (= lambda!338358 lambda!338236))))

(declare-fun bs!1537360 () Bool)

(assert (= bs!1537360 (and d!1942359 d!1942053)))

(assert (=> bs!1537360 (= lambda!338358 lambda!338313)))

(declare-fun bs!1537362 () Bool)

(assert (= bs!1537362 (and d!1942359 b!6194224)))

(assert (=> bs!1537362 (not (= lambda!338358 lambda!338317))))

(declare-fun bs!1537365 () Bool)

(assert (= bs!1537365 (and d!1942359 b!6193614)))

(assert (=> bs!1537365 (not (= lambda!338358 lambda!338277))))

(assert (=> bs!1537360 (not (= lambda!338358 lambda!338314))))

(declare-fun bs!1537367 () Bool)

(assert (= bs!1537367 (and d!1942359 b!6193329)))

(assert (=> bs!1537367 (not (= lambda!338358 lambda!338260))))

(declare-fun bs!1537368 () Bool)

(assert (= bs!1537368 (and d!1942359 b!6193499)))

(assert (=> bs!1537368 (not (= lambda!338358 lambda!338270))))

(declare-fun bs!1537369 () Bool)

(assert (= bs!1537369 (and d!1942359 b!6194613)))

(assert (=> bs!1537369 (not (= lambda!338358 lambda!338346))))

(declare-fun bs!1537370 () Bool)

(assert (= bs!1537370 (and d!1942359 b!6193331)))

(assert (=> bs!1537370 (not (= lambda!338358 lambda!338261))))

(declare-fun bs!1537371 () Bool)

(assert (= bs!1537371 (and d!1942359 b!6192412)))

(assert (=> bs!1537371 (not (= lambda!338358 lambda!338192))))

(declare-fun bs!1537372 () Bool)

(assert (= bs!1537372 (and d!1942359 b!6194417)))

(assert (=> bs!1537372 (not (= lambda!338358 lambda!338334))))

(declare-fun bs!1537373 () Bool)

(assert (= bs!1537373 (and d!1942359 b!6193320)))

(assert (=> bs!1537373 (not (= lambda!338358 lambda!338259))))

(assert (=> bs!1537371 (= lambda!338358 lambda!338191)))

(assert (=> bs!1537356 (= lambda!338358 lambda!338235)))

(declare-fun bs!1537374 () Bool)

(assert (= bs!1537374 (and d!1942359 b!6193318)))

(assert (=> bs!1537374 (not (= lambda!338358 lambda!338258))))

(declare-fun bs!1537375 () Bool)

(assert (= bs!1537375 (and d!1942359 b!6193612)))

(assert (=> bs!1537375 (not (= lambda!338358 lambda!338276))))

(declare-fun bs!1537376 () Bool)

(assert (= bs!1537376 (and d!1942359 b!6192678)))

(assert (=> bs!1537376 (not (= lambda!338358 lambda!338213))))

(declare-fun bs!1537377 () Bool)

(assert (= bs!1537377 (and d!1942359 d!1941517)))

(assert (=> bs!1537377 (= lambda!338358 lambda!338227)))

(declare-fun bs!1537378 () Bool)

(assert (= bs!1537378 (and d!1942359 b!6194615)))

(assert (=> bs!1537378 (not (= lambda!338358 lambda!338349))))

(declare-fun bs!1537380 () Bool)

(assert (= bs!1537380 (and d!1942359 b!6194226)))

(assert (=> bs!1537380 (not (= lambda!338358 lambda!338318))))

(declare-fun bs!1537381 () Bool)

(assert (= bs!1537381 (and d!1942359 b!6193497)))

(assert (=> bs!1537381 (not (= lambda!338358 lambda!338269))))

(declare-fun bs!1537382 () Bool)

(assert (= bs!1537382 (and d!1942359 b!6194419)))

(assert (=> bs!1537382 (not (= lambda!338358 lambda!338336))))

(declare-fun bs!1537383 () Bool)

(assert (= bs!1537383 (and d!1942359 b!6192676)))

(assert (=> bs!1537383 (not (= lambda!338358 lambda!338211))))

(assert (=> d!1942359 true))

(assert (=> d!1942359 true))

(assert (=> d!1942359 true))

(assert (=> d!1942359 (= (isDefined!12725 (findConcatSeparation!2436 (regOne!32774 r!7292) (regTwo!32774 r!7292) Nil!64570 s!2326 s!2326)) (Exists!3201 lambda!338358))))

(assert (=> d!1942359 true))

(declare-fun _$89!2335 () Unit!157827)

(assert (=> d!1942359 (= (choose!46004 (regOne!32774 r!7292) (regTwo!32774 r!7292) s!2326) _$89!2335)))

(declare-fun bs!1537385 () Bool)

(assert (= bs!1537385 d!1942359))

(assert (=> bs!1537385 m!7026542))

(assert (=> bs!1537385 m!7026542))

(assert (=> bs!1537385 m!7026544))

(declare-fun m!7028754 () Bool)

(assert (=> bs!1537385 m!7028754))

(assert (=> d!1941517 d!1942359))

(declare-fun d!1942395 () Bool)

(assert (=> d!1942395 (= (Exists!3201 lambda!338227) (choose!46003 lambda!338227))))

(declare-fun bs!1537386 () Bool)

(assert (= bs!1537386 d!1942395))

(declare-fun m!7028756 () Bool)

(assert (=> bs!1537386 m!7028756))

(assert (=> d!1941517 d!1942395))

(declare-fun d!1942397 () Bool)

(declare-fun res!2562524 () Bool)

(declare-fun e!3772614 () Bool)

(assert (=> d!1942397 (=> res!2562524 e!3772614)))

(assert (=> d!1942397 (= res!2562524 ((_ is Nil!64569) lt!2341330))))

(assert (=> d!1942397 (= (noDuplicate!1970 lt!2341330) e!3772614)))

(declare-fun b!6194736 () Bool)

(declare-fun e!3772615 () Bool)

(assert (=> b!6194736 (= e!3772614 e!3772615)))

(declare-fun res!2562525 () Bool)

(assert (=> b!6194736 (=> (not res!2562525) (not e!3772615))))

(declare-fun contains!20078 (List!64693 Context!11030) Bool)

(assert (=> b!6194736 (= res!2562525 (not (contains!20078 (t!378205 lt!2341330) (h!71017 lt!2341330))))))

(declare-fun b!6194737 () Bool)

(assert (=> b!6194737 (= e!3772615 (noDuplicate!1970 (t!378205 lt!2341330)))))

(assert (= (and d!1942397 (not res!2562524)) b!6194736))

(assert (= (and b!6194736 res!2562525) b!6194737))

(declare-fun m!7028768 () Bool)

(assert (=> b!6194736 m!7028768))

(declare-fun m!7028770 () Bool)

(assert (=> b!6194737 m!7028770))

(assert (=> d!1941675 d!1942397))

(declare-fun d!1942403 () Bool)

(declare-fun e!3772623 () Bool)

(assert (=> d!1942403 e!3772623))

(declare-fun res!2562530 () Bool)

(assert (=> d!1942403 (=> (not res!2562530) (not e!3772623))))

(declare-fun res!2562531 () List!64693)

(assert (=> d!1942403 (= res!2562530 (noDuplicate!1970 res!2562531))))

(declare-fun e!3772624 () Bool)

(assert (=> d!1942403 e!3772624))

(assert (=> d!1942403 (= (choose!46016 z!1189) res!2562531)))

(declare-fun b!6194745 () Bool)

(declare-fun e!3772622 () Bool)

(declare-fun tp!1728041 () Bool)

(assert (=> b!6194745 (= e!3772622 tp!1728041)))

(declare-fun tp!1728042 () Bool)

(declare-fun b!6194744 () Bool)

(assert (=> b!6194744 (= e!3772624 (and (inv!83574 (h!71017 res!2562531)) e!3772622 tp!1728042))))

(declare-fun b!6194746 () Bool)

(assert (=> b!6194746 (= e!3772623 (= (content!12063 res!2562531) z!1189))))

(assert (= b!6194744 b!6194745))

(assert (= (and d!1942403 ((_ is Cons!64569) res!2562531)) b!6194744))

(assert (= (and d!1942403 res!2562530) b!6194746))

(declare-fun m!7028772 () Bool)

(assert (=> d!1942403 m!7028772))

(declare-fun m!7028774 () Bool)

(assert (=> b!6194744 m!7028774))

(declare-fun m!7028776 () Bool)

(assert (=> b!6194746 m!7028776))

(assert (=> d!1941675 d!1942403))

(declare-fun bs!1537414 () Bool)

(declare-fun b!6194749 () Bool)

(assert (= bs!1537414 (and b!6194749 d!1941529)))

(declare-fun lambda!338361 () Int)

(assert (=> bs!1537414 (not (= lambda!338361 lambda!338236))))

(declare-fun bs!1537417 () Bool)

(assert (= bs!1537417 (and b!6194749 d!1942053)))

(assert (=> bs!1537417 (not (= lambda!338361 lambda!338313))))

(declare-fun bs!1537419 () Bool)

(assert (= bs!1537419 (and b!6194749 b!6194224)))

(assert (=> bs!1537419 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 (regTwo!32775 r!7292))) (= (regTwo!32775 lt!2341185) (regTwo!32775 r!7292))) (= lambda!338361 lambda!338317))))

(declare-fun bs!1537421 () Bool)

(assert (= bs!1537421 (and b!6194749 b!6193614)))

(assert (=> bs!1537421 (not (= lambda!338361 lambda!338277))))

(assert (=> bs!1537417 (not (= lambda!338361 lambda!338314))))

(declare-fun bs!1537424 () Bool)

(assert (= bs!1537424 (and b!6194749 d!1942359)))

(assert (=> bs!1537424 (not (= lambda!338361 lambda!338358))))

(declare-fun bs!1537426 () Bool)

(assert (= bs!1537426 (and b!6194749 b!6193329)))

(assert (=> bs!1537426 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 lt!2341177)) (= (regTwo!32775 lt!2341185) lt!2341177)) (= lambda!338361 lambda!338260))))

(declare-fun bs!1537428 () Bool)

(assert (= bs!1537428 (and b!6194749 b!6193499)))

(assert (=> bs!1537428 (not (= lambda!338361 lambda!338270))))

(declare-fun bs!1537430 () Bool)

(assert (= bs!1537430 (and b!6194749 b!6194613)))

(assert (=> bs!1537430 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 (regTwo!32775 lt!2341177))) (= (regTwo!32775 lt!2341185) (regTwo!32775 lt!2341177))) (= lambda!338361 lambda!338346))))

(declare-fun bs!1537432 () Bool)

(assert (= bs!1537432 (and b!6194749 b!6193331)))

(assert (=> bs!1537432 (not (= lambda!338361 lambda!338261))))

(declare-fun bs!1537433 () Bool)

(assert (= bs!1537433 (and b!6194749 b!6192412)))

(assert (=> bs!1537433 (not (= lambda!338361 lambda!338192))))

(declare-fun bs!1537434 () Bool)

(assert (= bs!1537434 (and b!6194749 b!6194417)))

(assert (=> bs!1537434 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 (regOne!32775 r!7292))) (= (regTwo!32775 lt!2341185) (regOne!32775 r!7292))) (= lambda!338361 lambda!338334))))

(declare-fun bs!1537436 () Bool)

(assert (= bs!1537436 (and b!6194749 b!6193320)))

(assert (=> bs!1537436 (not (= lambda!338361 lambda!338259))))

(assert (=> bs!1537433 (not (= lambda!338361 lambda!338191))))

(assert (=> bs!1537414 (not (= lambda!338361 lambda!338235))))

(declare-fun bs!1537439 () Bool)

(assert (= bs!1537439 (and b!6194749 b!6193318)))

(assert (=> bs!1537439 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 lt!2341185)) (= (regTwo!32775 lt!2341185) lt!2341185)) (= lambda!338361 lambda!338258))))

(declare-fun bs!1537441 () Bool)

(assert (= bs!1537441 (and b!6194749 b!6193612)))

(assert (=> bs!1537441 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 (regOne!32775 lt!2341185))) (= (regTwo!32775 lt!2341185) (regOne!32775 lt!2341185))) (= lambda!338361 lambda!338276))))

(declare-fun bs!1537443 () Bool)

(assert (= bs!1537443 (and b!6194749 b!6192678)))

(assert (=> bs!1537443 (not (= lambda!338361 lambda!338213))))

(declare-fun bs!1537445 () Bool)

(assert (= bs!1537445 (and b!6194749 d!1941517)))

(assert (=> bs!1537445 (not (= lambda!338361 lambda!338227))))

(declare-fun bs!1537446 () Bool)

(assert (= bs!1537446 (and b!6194749 b!6194615)))

(assert (=> bs!1537446 (not (= lambda!338361 lambda!338349))))

(declare-fun bs!1537447 () Bool)

(assert (= bs!1537447 (and b!6194749 b!6194226)))

(assert (=> bs!1537447 (not (= lambda!338361 lambda!338318))))

(declare-fun bs!1537448 () Bool)

(assert (= bs!1537448 (and b!6194749 b!6193497)))

(assert (=> bs!1537448 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 (regOne!32775 lt!2341177))) (= (regTwo!32775 lt!2341185) (regOne!32775 lt!2341177))) (= lambda!338361 lambda!338269))))

(declare-fun bs!1537449 () Bool)

(assert (= bs!1537449 (and b!6194749 b!6194419)))

(assert (=> bs!1537449 (not (= lambda!338361 lambda!338336))))

(declare-fun bs!1537450 () Bool)

(assert (= bs!1537450 (and b!6194749 b!6192676)))

(assert (=> bs!1537450 (= (and (= (reg!16460 (regTwo!32775 lt!2341185)) (reg!16460 r!7292)) (= (regTwo!32775 lt!2341185) r!7292)) (= lambda!338361 lambda!338211))))

(assert (=> b!6194749 true))

(assert (=> b!6194749 true))

(declare-fun bs!1537451 () Bool)

(declare-fun b!6194751 () Bool)

(assert (= bs!1537451 (and b!6194751 d!1941529)))

(declare-fun lambda!338362 () Int)

(assert (=> bs!1537451 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338362 lambda!338236))))

(declare-fun bs!1537452 () Bool)

(assert (= bs!1537452 (and b!6194751 d!1942053)))

(assert (=> bs!1537452 (not (= lambda!338362 lambda!338313))))

(declare-fun bs!1537453 () Bool)

(assert (= bs!1537453 (and b!6194751 b!6194224)))

(assert (=> bs!1537453 (not (= lambda!338362 lambda!338317))))

(declare-fun bs!1537454 () Bool)

(assert (= bs!1537454 (and b!6194751 b!6193614)))

(assert (=> bs!1537454 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 (regOne!32775 lt!2341185))) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 (regOne!32775 lt!2341185)))) (= lambda!338362 lambda!338277))))

(assert (=> bs!1537452 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338362 lambda!338314))))

(declare-fun bs!1537455 () Bool)

(assert (= bs!1537455 (and b!6194751 d!1942359)))

(assert (=> bs!1537455 (not (= lambda!338362 lambda!338358))))

(declare-fun bs!1537458 () Bool)

(assert (= bs!1537458 (and b!6194751 b!6193329)))

(assert (=> bs!1537458 (not (= lambda!338362 lambda!338260))))

(declare-fun bs!1537460 () Bool)

(assert (= bs!1537460 (and b!6194751 b!6193499)))

(assert (=> bs!1537460 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 (regOne!32775 lt!2341177))) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 (regOne!32775 lt!2341177)))) (= lambda!338362 lambda!338270))))

(declare-fun bs!1537463 () Bool)

(assert (= bs!1537463 (and b!6194751 b!6193331)))

(assert (=> bs!1537463 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 lt!2341177)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 lt!2341177))) (= lambda!338362 lambda!338261))))

(declare-fun bs!1537466 () Bool)

(assert (= bs!1537466 (and b!6194751 b!6192412)))

(assert (=> bs!1537466 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338362 lambda!338192))))

(declare-fun bs!1537468 () Bool)

(assert (= bs!1537468 (and b!6194751 b!6194417)))

(assert (=> bs!1537468 (not (= lambda!338362 lambda!338334))))

(declare-fun bs!1537469 () Bool)

(assert (= bs!1537469 (and b!6194751 b!6193320)))

(assert (=> bs!1537469 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 lt!2341185)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 lt!2341185))) (= lambda!338362 lambda!338259))))

(assert (=> bs!1537466 (not (= lambda!338362 lambda!338191))))

(assert (=> bs!1537451 (not (= lambda!338362 lambda!338235))))

(declare-fun bs!1537474 () Bool)

(assert (= bs!1537474 (and b!6194751 b!6193318)))

(assert (=> bs!1537474 (not (= lambda!338362 lambda!338258))))

(declare-fun bs!1537477 () Bool)

(assert (= bs!1537477 (and b!6194751 b!6193612)))

(assert (=> bs!1537477 (not (= lambda!338362 lambda!338276))))

(declare-fun bs!1537480 () Bool)

(assert (= bs!1537480 (and b!6194751 b!6192678)))

(assert (=> bs!1537480 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 r!7292)) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 r!7292))) (= lambda!338362 lambda!338213))))

(declare-fun bs!1537482 () Bool)

(assert (= bs!1537482 (and b!6194751 d!1941517)))

(assert (=> bs!1537482 (not (= lambda!338362 lambda!338227))))

(declare-fun bs!1537483 () Bool)

(assert (= bs!1537483 (and b!6194751 b!6194615)))

(assert (=> bs!1537483 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 (regTwo!32775 lt!2341177))) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 (regTwo!32775 lt!2341177)))) (= lambda!338362 lambda!338349))))

(declare-fun bs!1537484 () Bool)

(assert (= bs!1537484 (and b!6194751 b!6194226)))

(assert (=> bs!1537484 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 (regTwo!32775 r!7292))) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 (regTwo!32775 r!7292)))) (= lambda!338362 lambda!338318))))

(declare-fun bs!1537485 () Bool)

(assert (= bs!1537485 (and b!6194751 b!6194749)))

(assert (=> bs!1537485 (not (= lambda!338362 lambda!338361))))

(declare-fun bs!1537486 () Bool)

(assert (= bs!1537486 (and b!6194751 b!6194613)))

(assert (=> bs!1537486 (not (= lambda!338362 lambda!338346))))

(declare-fun bs!1537487 () Bool)

(assert (= bs!1537487 (and b!6194751 b!6193497)))

(assert (=> bs!1537487 (not (= lambda!338362 lambda!338269))))

(declare-fun bs!1537488 () Bool)

(assert (= bs!1537488 (and b!6194751 b!6194419)))

(assert (=> bs!1537488 (= (and (= (regOne!32774 (regTwo!32775 lt!2341185)) (regOne!32774 (regOne!32775 r!7292))) (= (regTwo!32774 (regTwo!32775 lt!2341185)) (regTwo!32774 (regOne!32775 r!7292)))) (= lambda!338362 lambda!338336))))

(declare-fun bs!1537489 () Bool)

(assert (= bs!1537489 (and b!6194751 b!6192676)))

(assert (=> bs!1537489 (not (= lambda!338362 lambda!338211))))

(assert (=> b!6194751 true))

(assert (=> b!6194751 true))

(declare-fun b!6194747 () Bool)

(declare-fun e!3772626 () Bool)

(declare-fun call!518312 () Bool)

(assert (=> b!6194747 (= e!3772626 call!518312)))

(declare-fun b!6194748 () Bool)

(declare-fun e!3772627 () Bool)

(assert (=> b!6194748 (= e!3772627 (= s!2326 (Cons!64570 (c!1117312 (regTwo!32775 lt!2341185)) Nil!64570)))))

(declare-fun e!3772625 () Bool)

(declare-fun call!518313 () Bool)

(assert (=> b!6194749 (= e!3772625 call!518313)))

(declare-fun b!6194750 () Bool)

(declare-fun e!3772629 () Bool)

(declare-fun e!3772630 () Bool)

(assert (=> b!6194750 (= e!3772629 e!3772630)))

(declare-fun c!1118009 () Bool)

(assert (=> b!6194750 (= c!1118009 ((_ is Star!16131) (regTwo!32775 lt!2341185)))))

(assert (=> b!6194751 (= e!3772630 call!518313)))

(declare-fun b!6194752 () Bool)

(declare-fun c!1118011 () Bool)

(assert (=> b!6194752 (= c!1118011 ((_ is ElementMatch!16131) (regTwo!32775 lt!2341185)))))

(declare-fun e!3772628 () Bool)

(assert (=> b!6194752 (= e!3772628 e!3772627)))

(declare-fun b!6194753 () Bool)

(declare-fun c!1118008 () Bool)

(assert (=> b!6194753 (= c!1118008 ((_ is Union!16131) (regTwo!32775 lt!2341185)))))

(assert (=> b!6194753 (= e!3772627 e!3772629)))

(declare-fun b!6194754 () Bool)

(declare-fun res!2562534 () Bool)

(assert (=> b!6194754 (=> res!2562534 e!3772625)))

(assert (=> b!6194754 (= res!2562534 call!518312)))

(assert (=> b!6194754 (= e!3772630 e!3772625)))

(declare-fun bm!518307 () Bool)

(assert (=> bm!518307 (= call!518312 (isEmpty!36557 s!2326))))

(declare-fun b!6194755 () Bool)

(assert (=> b!6194755 (= e!3772626 e!3772628)))

(declare-fun res!2562532 () Bool)

(assert (=> b!6194755 (= res!2562532 (not ((_ is EmptyLang!16131) (regTwo!32775 lt!2341185))))))

(assert (=> b!6194755 (=> (not res!2562532) (not e!3772628))))

(declare-fun bm!518308 () Bool)

(assert (=> bm!518308 (= call!518313 (Exists!3201 (ite c!1118009 lambda!338361 lambda!338362)))))

(declare-fun b!6194756 () Bool)

(declare-fun e!3772631 () Bool)

(assert (=> b!6194756 (= e!3772629 e!3772631)))

(declare-fun res!2562533 () Bool)

(assert (=> b!6194756 (= res!2562533 (matchRSpec!3232 (regOne!32775 (regTwo!32775 lt!2341185)) s!2326))))

(assert (=> b!6194756 (=> res!2562533 e!3772631)))

(declare-fun b!6194757 () Bool)

(assert (=> b!6194757 (= e!3772631 (matchRSpec!3232 (regTwo!32775 (regTwo!32775 lt!2341185)) s!2326))))

(declare-fun d!1942405 () Bool)

(declare-fun c!1118010 () Bool)

(assert (=> d!1942405 (= c!1118010 ((_ is EmptyExpr!16131) (regTwo!32775 lt!2341185)))))

(assert (=> d!1942405 (= (matchRSpec!3232 (regTwo!32775 lt!2341185) s!2326) e!3772626)))

(assert (= (and d!1942405 c!1118010) b!6194747))

(assert (= (and d!1942405 (not c!1118010)) b!6194755))

(assert (= (and b!6194755 res!2562532) b!6194752))

(assert (= (and b!6194752 c!1118011) b!6194748))

(assert (= (and b!6194752 (not c!1118011)) b!6194753))

(assert (= (and b!6194753 c!1118008) b!6194756))

(assert (= (and b!6194753 (not c!1118008)) b!6194750))

(assert (= (and b!6194756 (not res!2562533)) b!6194757))

(assert (= (and b!6194750 c!1118009) b!6194754))

(assert (= (and b!6194750 (not c!1118009)) b!6194751))

(assert (= (and b!6194754 (not res!2562534)) b!6194749))

(assert (= (or b!6194749 b!6194751) bm!518308))

(assert (= (or b!6194747 b!6194754) bm!518307))

(assert (=> bm!518307 m!7026692))

(declare-fun m!7028796 () Bool)

(assert (=> bm!518308 m!7028796))

(declare-fun m!7028798 () Bool)

(assert (=> b!6194756 m!7028798))

(declare-fun m!7028800 () Bool)

(assert (=> b!6194757 m!7028800))

(assert (=> b!6193326 d!1942405))

(declare-fun d!1942417 () Bool)

(assert (=> d!1942417 (= (nullable!6124 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))) (nullableFct!2082 (regOne!32774 (h!71016 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun bs!1537491 () Bool)

(assert (= bs!1537491 d!1942417))

(declare-fun m!7028804 () Bool)

(assert (=> bs!1537491 m!7028804))

(assert (=> b!6193219 d!1942417))

(declare-fun b!6194769 () Bool)

(declare-fun e!3772641 () Bool)

(declare-fun e!3772638 () Bool)

(assert (=> b!6194769 (= e!3772641 e!3772638)))

(declare-fun res!2562541 () Bool)

(declare-fun call!518321 () Bool)

(assert (=> b!6194769 (= res!2562541 call!518321)))

(assert (=> b!6194769 (=> res!2562541 e!3772638)))

(declare-fun b!6194770 () Bool)

(declare-fun call!518320 () Bool)

(assert (=> b!6194770 (= e!3772638 call!518320)))

(declare-fun bm!518315 () Bool)

(declare-fun c!1118017 () Bool)

(assert (=> bm!518315 (= call!518321 (nullable!6124 (ite c!1118017 (regOne!32775 (regTwo!32775 (regOne!32774 r!7292))) (regOne!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun d!1942421 () Bool)

(declare-fun res!2562542 () Bool)

(declare-fun e!3772640 () Bool)

(assert (=> d!1942421 (=> res!2562542 e!3772640)))

(assert (=> d!1942421 (= res!2562542 ((_ is EmptyExpr!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(assert (=> d!1942421 (= (nullableFct!2082 (regTwo!32775 (regOne!32774 r!7292))) e!3772640)))

(declare-fun bm!518316 () Bool)

(assert (=> bm!518316 (= call!518320 (nullable!6124 (ite c!1118017 (regTwo!32775 (regTwo!32775 (regOne!32774 r!7292))) (regTwo!32774 (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194771 () Bool)

(declare-fun e!3772642 () Bool)

(assert (=> b!6194771 (= e!3772642 e!3772641)))

(assert (=> b!6194771 (= c!1118017 ((_ is Union!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6194772 () Bool)

(declare-fun e!3772643 () Bool)

(assert (=> b!6194772 (= e!3772640 e!3772643)))

(declare-fun res!2562540 () Bool)

(assert (=> b!6194772 (=> (not res!2562540) (not e!3772643))))

(assert (=> b!6194772 (= res!2562540 (and (not ((_ is EmptyLang!16131) (regTwo!32775 (regOne!32774 r!7292)))) (not ((_ is ElementMatch!16131) (regTwo!32775 (regOne!32774 r!7292))))))))

(declare-fun b!6194773 () Bool)

(assert (=> b!6194773 (= e!3772643 e!3772642)))

(declare-fun res!2562539 () Bool)

(assert (=> b!6194773 (=> res!2562539 e!3772642)))

(assert (=> b!6194773 (= res!2562539 ((_ is Star!16131) (regTwo!32775 (regOne!32774 r!7292))))))

(declare-fun b!6194774 () Bool)

(declare-fun e!3772639 () Bool)

(assert (=> b!6194774 (= e!3772641 e!3772639)))

(declare-fun res!2562543 () Bool)

(assert (=> b!6194774 (= res!2562543 call!518321)))

(assert (=> b!6194774 (=> (not res!2562543) (not e!3772639))))

(declare-fun b!6194775 () Bool)

(assert (=> b!6194775 (= e!3772639 call!518320)))

(assert (= (and d!1942421 (not res!2562542)) b!6194772))

(assert (= (and b!6194772 res!2562540) b!6194773))

(assert (= (and b!6194773 (not res!2562539)) b!6194771))

(assert (= (and b!6194771 c!1118017) b!6194769))

(assert (= (and b!6194771 (not c!1118017)) b!6194774))

(assert (= (and b!6194769 (not res!2562541)) b!6194770))

(assert (= (and b!6194774 res!2562543) b!6194775))

(assert (= (or b!6194770 b!6194775) bm!518316))

(assert (= (or b!6194769 b!6194774) bm!518315))

(declare-fun m!7028806 () Bool)

(assert (=> bm!518315 m!7028806))

(declare-fun m!7028808 () Bool)

(assert (=> bm!518316 m!7028808))

(assert (=> d!1941581 d!1942421))

(declare-fun d!1942425 () Bool)

(assert (=> d!1942425 (= (isEmptyExpr!1543 lt!2341322) ((_ is EmptyExpr!16131) lt!2341322))))

(assert (=> b!6193285 d!1942425))

(assert (=> d!1941657 d!1941665))

(assert (=> d!1941657 d!1941553))

(declare-fun d!1942427 () Bool)

(assert (=> d!1942427 (= (matchR!8314 lt!2341185 s!2326) (matchZipper!2143 lt!2341195 s!2326))))

(assert (=> d!1942427 true))

(declare-fun _$44!1576 () Unit!157827)

(assert (=> d!1942427 (= (choose!46015 lt!2341195 lt!2341171 lt!2341185 s!2326) _$44!1576)))

(declare-fun bs!1537502 () Bool)

(assert (= bs!1537502 d!1942427))

(assert (=> bs!1537502 m!7026522))

(assert (=> bs!1537502 m!7026584))

(assert (=> d!1941657 d!1942427))

(assert (=> d!1941657 d!1942149))

(declare-fun bs!1537506 () Bool)

(declare-fun d!1942429 () Bool)

(assert (= bs!1537506 (and d!1942429 d!1941975)))

(declare-fun lambda!338366 () Int)

(assert (=> bs!1537506 (= lambda!338366 lambda!338301)))

(declare-fun bs!1537508 () Bool)

(assert (= bs!1537508 (and d!1942429 d!1942115)))

(assert (=> bs!1537508 (= lambda!338366 lambda!338326)))

(declare-fun bs!1537509 () Bool)

(assert (= bs!1537509 (and d!1942429 d!1942357)))

(assert (=> bs!1537509 (= lambda!338366 lambda!338352)))

(declare-fun bs!1537510 () Bool)

(assert (= bs!1537510 (and d!1942429 d!1942109)))

(assert (=> bs!1537510 (= lambda!338366 lambda!338324)))

(declare-fun bs!1537511 () Bool)

(assert (= bs!1537511 (and d!1942429 d!1942143)))

(assert (=> bs!1537511 (= lambda!338366 lambda!338328)))

(declare-fun bs!1537512 () Bool)

(assert (= bs!1537512 (and d!1942429 d!1941855)))

(assert (=> bs!1537512 (= lambda!338366 lambda!338289)))

(declare-fun bs!1537513 () Bool)

(assert (= bs!1537513 (and d!1942429 d!1942301)))

(assert (=> bs!1537513 (= lambda!338366 lambda!338343)))

(declare-fun bs!1537514 () Bool)

(assert (= bs!1537514 (and d!1942429 d!1941871)))

(assert (=> bs!1537514 (= lambda!338366 lambda!338291)))

(declare-fun bs!1537515 () Bool)

(assert (= bs!1537515 (and d!1942429 d!1942305)))

(assert (=> bs!1537515 (= lambda!338366 lambda!338344)))

(declare-fun bs!1537516 () Bool)

(assert (= bs!1537516 (and d!1942429 d!1941929)))

(assert (=> bs!1537516 (= lambda!338366 lambda!338294)))

(assert (=> d!1942429 (= (nullableZipper!1907 lt!2341165) (exists!2468 lt!2341165 lambda!338366))))

(declare-fun bs!1537517 () Bool)

(assert (= bs!1537517 d!1942429))

(declare-fun m!7028822 () Bool)

(assert (=> bs!1537517 m!7028822))

(assert (=> b!6193243 d!1942429))

(declare-fun d!1942431 () Bool)

(assert (=> d!1942431 (= (isEmpty!36555 (t!378204 lt!2341187)) ((_ is Nil!64568) (t!378204 lt!2341187)))))

(assert (=> b!6193313 d!1942431))

(declare-fun b!6194802 () Bool)

(declare-fun e!3772657 () Bool)

(declare-fun tp!1728043 () Bool)

(assert (=> b!6194802 (= e!3772657 tp!1728043)))

(declare-fun b!6194803 () Bool)

(declare-fun tp!1728045 () Bool)

(declare-fun tp!1728047 () Bool)

(assert (=> b!6194803 (= e!3772657 (and tp!1728045 tp!1728047))))

(declare-fun b!6194801 () Bool)

(declare-fun tp!1728046 () Bool)

(declare-fun tp!1728044 () Bool)

(assert (=> b!6194801 (= e!3772657 (and tp!1728046 tp!1728044))))

(assert (=> b!6193447 (= tp!1727990 e!3772657)))

(declare-fun b!6194800 () Bool)

(assert (=> b!6194800 (= e!3772657 tp_is_empty!41515)))

(assert (= (and b!6193447 ((_ is ElementMatch!16131) (regOne!32774 (regOne!32775 r!7292)))) b!6194800))

(assert (= (and b!6193447 ((_ is Concat!24976) (regOne!32774 (regOne!32775 r!7292)))) b!6194801))

(assert (= (and b!6193447 ((_ is Star!16131) (regOne!32774 (regOne!32775 r!7292)))) b!6194802))

(assert (= (and b!6193447 ((_ is Union!16131) (regOne!32774 (regOne!32775 r!7292)))) b!6194803))

(declare-fun b!6194806 () Bool)

(declare-fun e!3772658 () Bool)

(declare-fun tp!1728048 () Bool)

(assert (=> b!6194806 (= e!3772658 tp!1728048)))

(declare-fun b!6194807 () Bool)

(declare-fun tp!1728050 () Bool)

(declare-fun tp!1728052 () Bool)

(assert (=> b!6194807 (= e!3772658 (and tp!1728050 tp!1728052))))

(declare-fun b!6194805 () Bool)

(declare-fun tp!1728051 () Bool)

(declare-fun tp!1728049 () Bool)

(assert (=> b!6194805 (= e!3772658 (and tp!1728051 tp!1728049))))

(assert (=> b!6193447 (= tp!1727988 e!3772658)))

(declare-fun b!6194804 () Bool)

(assert (=> b!6194804 (= e!3772658 tp_is_empty!41515)))

(assert (= (and b!6193447 ((_ is ElementMatch!16131) (regTwo!32774 (regOne!32775 r!7292)))) b!6194804))

(assert (= (and b!6193447 ((_ is Concat!24976) (regTwo!32774 (regOne!32775 r!7292)))) b!6194805))

(assert (= (and b!6193447 ((_ is Star!16131) (regTwo!32774 (regOne!32775 r!7292)))) b!6194806))

(assert (= (and b!6193447 ((_ is Union!16131) (regTwo!32774 (regOne!32775 r!7292)))) b!6194807))

(declare-fun b!6194808 () Bool)

(declare-fun e!3772659 () Bool)

(declare-fun tp!1728053 () Bool)

(assert (=> b!6194808 (= e!3772659 (and tp_is_empty!41515 tp!1728053))))

(assert (=> b!6193423 (= tp!1727961 e!3772659)))

(assert (= (and b!6193423 ((_ is Cons!64570) (t!378206 (t!378206 s!2326)))) b!6194808))

(declare-fun b!6194811 () Bool)

(declare-fun e!3772660 () Bool)

(declare-fun tp!1728054 () Bool)

(assert (=> b!6194811 (= e!3772660 tp!1728054)))

(declare-fun b!6194812 () Bool)

(declare-fun tp!1728056 () Bool)

(declare-fun tp!1728058 () Bool)

(assert (=> b!6194812 (= e!3772660 (and tp!1728056 tp!1728058))))

(declare-fun b!6194810 () Bool)

(declare-fun tp!1728057 () Bool)

(declare-fun tp!1728055 () Bool)

(assert (=> b!6194810 (= e!3772660 (and tp!1728057 tp!1728055))))

(assert (=> b!6193448 (= tp!1727987 e!3772660)))

(declare-fun b!6194809 () Bool)

(assert (=> b!6194809 (= e!3772660 tp_is_empty!41515)))

(assert (= (and b!6193448 ((_ is ElementMatch!16131) (reg!16460 (regOne!32775 r!7292)))) b!6194809))

(assert (= (and b!6193448 ((_ is Concat!24976) (reg!16460 (regOne!32775 r!7292)))) b!6194810))

(assert (= (and b!6193448 ((_ is Star!16131) (reg!16460 (regOne!32775 r!7292)))) b!6194811))

(assert (= (and b!6193448 ((_ is Union!16131) (reg!16460 (regOne!32775 r!7292)))) b!6194812))

(declare-fun b!6194815 () Bool)

(declare-fun e!3772661 () Bool)

(declare-fun tp!1728059 () Bool)

(assert (=> b!6194815 (= e!3772661 tp!1728059)))

(declare-fun b!6194816 () Bool)

(declare-fun tp!1728061 () Bool)

(declare-fun tp!1728063 () Bool)

(assert (=> b!6194816 (= e!3772661 (and tp!1728061 tp!1728063))))

(declare-fun b!6194814 () Bool)

(declare-fun tp!1728062 () Bool)

(declare-fun tp!1728060 () Bool)

(assert (=> b!6194814 (= e!3772661 (and tp!1728062 tp!1728060))))

(assert (=> b!6193439 (= tp!1727980 e!3772661)))

(declare-fun b!6194813 () Bool)

(assert (=> b!6194813 (= e!3772661 tp_is_empty!41515)))

(assert (= (and b!6193439 ((_ is ElementMatch!16131) (regOne!32774 (regTwo!32774 r!7292)))) b!6194813))

(assert (= (and b!6193439 ((_ is Concat!24976) (regOne!32774 (regTwo!32774 r!7292)))) b!6194814))

(assert (= (and b!6193439 ((_ is Star!16131) (regOne!32774 (regTwo!32774 r!7292)))) b!6194815))

(assert (= (and b!6193439 ((_ is Union!16131) (regOne!32774 (regTwo!32774 r!7292)))) b!6194816))

(declare-fun b!6194819 () Bool)

(declare-fun e!3772662 () Bool)

(declare-fun tp!1728064 () Bool)

(assert (=> b!6194819 (= e!3772662 tp!1728064)))

(declare-fun b!6194820 () Bool)

(declare-fun tp!1728066 () Bool)

(declare-fun tp!1728068 () Bool)

(assert (=> b!6194820 (= e!3772662 (and tp!1728066 tp!1728068))))

(declare-fun b!6194818 () Bool)

(declare-fun tp!1728067 () Bool)

(declare-fun tp!1728065 () Bool)

(assert (=> b!6194818 (= e!3772662 (and tp!1728067 tp!1728065))))

(assert (=> b!6193439 (= tp!1727978 e!3772662)))

(declare-fun b!6194817 () Bool)

(assert (=> b!6194817 (= e!3772662 tp_is_empty!41515)))

(assert (= (and b!6193439 ((_ is ElementMatch!16131) (regTwo!32774 (regTwo!32774 r!7292)))) b!6194817))

(assert (= (and b!6193439 ((_ is Concat!24976) (regTwo!32774 (regTwo!32774 r!7292)))) b!6194818))

(assert (= (and b!6193439 ((_ is Star!16131) (regTwo!32774 (regTwo!32774 r!7292)))) b!6194819))

(assert (= (and b!6193439 ((_ is Union!16131) (regTwo!32774 (regTwo!32774 r!7292)))) b!6194820))

(declare-fun b!6194823 () Bool)

(declare-fun e!3772663 () Bool)

(declare-fun tp!1728069 () Bool)

(assert (=> b!6194823 (= e!3772663 tp!1728069)))

(declare-fun b!6194824 () Bool)

(declare-fun tp!1728071 () Bool)

(declare-fun tp!1728073 () Bool)

(assert (=> b!6194824 (= e!3772663 (and tp!1728071 tp!1728073))))

(declare-fun b!6194822 () Bool)

(declare-fun tp!1728072 () Bool)

(declare-fun tp!1728070 () Bool)

(assert (=> b!6194822 (= e!3772663 (and tp!1728072 tp!1728070))))

(assert (=> b!6193440 (= tp!1727977 e!3772663)))

(declare-fun b!6194821 () Bool)

(assert (=> b!6194821 (= e!3772663 tp_is_empty!41515)))

(assert (= (and b!6193440 ((_ is ElementMatch!16131) (reg!16460 (regTwo!32774 r!7292)))) b!6194821))

(assert (= (and b!6193440 ((_ is Concat!24976) (reg!16460 (regTwo!32774 r!7292)))) b!6194822))

(assert (= (and b!6193440 ((_ is Star!16131) (reg!16460 (regTwo!32774 r!7292)))) b!6194823))

(assert (= (and b!6193440 ((_ is Union!16131) (reg!16460 (regTwo!32774 r!7292)))) b!6194824))

(declare-fun b!6194827 () Bool)

(declare-fun e!3772664 () Bool)

(declare-fun tp!1728074 () Bool)

(assert (=> b!6194827 (= e!3772664 tp!1728074)))

(declare-fun b!6194828 () Bool)

(declare-fun tp!1728076 () Bool)

(declare-fun tp!1728078 () Bool)

(assert (=> b!6194828 (= e!3772664 (and tp!1728076 tp!1728078))))

(declare-fun b!6194826 () Bool)

(declare-fun tp!1728077 () Bool)

(declare-fun tp!1728075 () Bool)

(assert (=> b!6194826 (= e!3772664 (and tp!1728077 tp!1728075))))

(assert (=> b!6193449 (= tp!1727989 e!3772664)))

(declare-fun b!6194825 () Bool)

(assert (=> b!6194825 (= e!3772664 tp_is_empty!41515)))

(assert (= (and b!6193449 ((_ is ElementMatch!16131) (regOne!32775 (regOne!32775 r!7292)))) b!6194825))

(assert (= (and b!6193449 ((_ is Concat!24976) (regOne!32775 (regOne!32775 r!7292)))) b!6194826))

(assert (= (and b!6193449 ((_ is Star!16131) (regOne!32775 (regOne!32775 r!7292)))) b!6194827))

(assert (= (and b!6193449 ((_ is Union!16131) (regOne!32775 (regOne!32775 r!7292)))) b!6194828))

(declare-fun b!6194831 () Bool)

(declare-fun e!3772665 () Bool)

(declare-fun tp!1728079 () Bool)

(assert (=> b!6194831 (= e!3772665 tp!1728079)))

(declare-fun b!6194832 () Bool)

(declare-fun tp!1728081 () Bool)

(declare-fun tp!1728083 () Bool)

(assert (=> b!6194832 (= e!3772665 (and tp!1728081 tp!1728083))))

(declare-fun b!6194830 () Bool)

(declare-fun tp!1728082 () Bool)

(declare-fun tp!1728080 () Bool)

(assert (=> b!6194830 (= e!3772665 (and tp!1728082 tp!1728080))))

(assert (=> b!6193449 (= tp!1727991 e!3772665)))

(declare-fun b!6194829 () Bool)

(assert (=> b!6194829 (= e!3772665 tp_is_empty!41515)))

(assert (= (and b!6193449 ((_ is ElementMatch!16131) (regTwo!32775 (regOne!32775 r!7292)))) b!6194829))

(assert (= (and b!6193449 ((_ is Concat!24976) (regTwo!32775 (regOne!32775 r!7292)))) b!6194830))

(assert (= (and b!6193449 ((_ is Star!16131) (regTwo!32775 (regOne!32775 r!7292)))) b!6194831))

(assert (= (and b!6193449 ((_ is Union!16131) (regTwo!32775 (regOne!32775 r!7292)))) b!6194832))

(declare-fun b!6194836 () Bool)

(declare-fun e!3772667 () Bool)

(declare-fun tp!1728084 () Bool)

(assert (=> b!6194836 (= e!3772667 tp!1728084)))

(declare-fun b!6194837 () Bool)

(declare-fun tp!1728086 () Bool)

(declare-fun tp!1728088 () Bool)

(assert (=> b!6194837 (= e!3772667 (and tp!1728086 tp!1728088))))

(declare-fun b!6194835 () Bool)

(declare-fun tp!1728087 () Bool)

(declare-fun tp!1728085 () Bool)

(assert (=> b!6194835 (= e!3772667 (and tp!1728087 tp!1728085))))

(assert (=> b!6193463 (= tp!1728007 e!3772667)))

(declare-fun b!6194834 () Bool)

(assert (=> b!6194834 (= e!3772667 tp_is_empty!41515)))

(assert (= (and b!6193463 ((_ is ElementMatch!16131) (h!71016 (exprs!6015 (h!71017 zl!343))))) b!6194834))

(assert (= (and b!6193463 ((_ is Concat!24976) (h!71016 (exprs!6015 (h!71017 zl!343))))) b!6194835))

(assert (= (and b!6193463 ((_ is Star!16131) (h!71016 (exprs!6015 (h!71017 zl!343))))) b!6194836))

(assert (= (and b!6193463 ((_ is Union!16131) (h!71016 (exprs!6015 (h!71017 zl!343))))) b!6194837))

(declare-fun b!6194838 () Bool)

(declare-fun e!3772668 () Bool)

(declare-fun tp!1728089 () Bool)

(declare-fun tp!1728090 () Bool)

(assert (=> b!6194838 (= e!3772668 (and tp!1728089 tp!1728090))))

(assert (=> b!6193463 (= tp!1728008 e!3772668)))

(assert (= (and b!6193463 ((_ is Cons!64568) (t!378204 (exprs!6015 (h!71017 zl!343))))) b!6194838))

(declare-fun b!6194841 () Bool)

(declare-fun e!3772669 () Bool)

(declare-fun tp!1728091 () Bool)

(assert (=> b!6194841 (= e!3772669 tp!1728091)))

(declare-fun b!6194842 () Bool)

(declare-fun tp!1728093 () Bool)

(declare-fun tp!1728095 () Bool)

(assert (=> b!6194842 (= e!3772669 (and tp!1728093 tp!1728095))))

(declare-fun b!6194840 () Bool)

(declare-fun tp!1728094 () Bool)

(declare-fun tp!1728092 () Bool)

(assert (=> b!6194840 (= e!3772669 (and tp!1728094 tp!1728092))))

(assert (=> b!6193441 (= tp!1727979 e!3772669)))

(declare-fun b!6194839 () Bool)

(assert (=> b!6194839 (= e!3772669 tp_is_empty!41515)))

(assert (= (and b!6193441 ((_ is ElementMatch!16131) (regOne!32775 (regTwo!32774 r!7292)))) b!6194839))

(assert (= (and b!6193441 ((_ is Concat!24976) (regOne!32775 (regTwo!32774 r!7292)))) b!6194840))

(assert (= (and b!6193441 ((_ is Star!16131) (regOne!32775 (regTwo!32774 r!7292)))) b!6194841))

(assert (= (and b!6193441 ((_ is Union!16131) (regOne!32775 (regTwo!32774 r!7292)))) b!6194842))

(declare-fun b!6194847 () Bool)

(declare-fun e!3772671 () Bool)

(declare-fun tp!1728096 () Bool)

(assert (=> b!6194847 (= e!3772671 tp!1728096)))

(declare-fun b!6194848 () Bool)

(declare-fun tp!1728098 () Bool)

(declare-fun tp!1728100 () Bool)

(assert (=> b!6194848 (= e!3772671 (and tp!1728098 tp!1728100))))

(declare-fun b!6194846 () Bool)

(declare-fun tp!1728099 () Bool)

(declare-fun tp!1728097 () Bool)

(assert (=> b!6194846 (= e!3772671 (and tp!1728099 tp!1728097))))

(assert (=> b!6193441 (= tp!1727981 e!3772671)))

(declare-fun b!6194845 () Bool)

(assert (=> b!6194845 (= e!3772671 tp_is_empty!41515)))

(assert (= (and b!6193441 ((_ is ElementMatch!16131) (regTwo!32775 (regTwo!32774 r!7292)))) b!6194845))

(assert (= (and b!6193441 ((_ is Concat!24976) (regTwo!32775 (regTwo!32774 r!7292)))) b!6194846))

(assert (= (and b!6193441 ((_ is Star!16131) (regTwo!32775 (regTwo!32774 r!7292)))) b!6194847))

(assert (= (and b!6193441 ((_ is Union!16131) (regTwo!32775 (regTwo!32774 r!7292)))) b!6194848))

(declare-fun b!6194850 () Bool)

(declare-fun e!3772673 () Bool)

(declare-fun tp!1728101 () Bool)

(assert (=> b!6194850 (= e!3772673 tp!1728101)))

(declare-fun tp!1728102 () Bool)

(declare-fun e!3772672 () Bool)

(declare-fun b!6194849 () Bool)

(assert (=> b!6194849 (= e!3772672 (and (inv!83574 (h!71017 (t!378205 (t!378205 zl!343)))) e!3772673 tp!1728102))))

(assert (=> b!6193417 (= tp!1727958 e!3772672)))

(assert (= b!6194849 b!6194850))

(assert (= (and b!6193417 ((_ is Cons!64569) (t!378205 (t!378205 zl!343)))) b!6194849))

(declare-fun m!7028850 () Bool)

(assert (=> b!6194849 m!7028850))

(declare-fun b!6194851 () Bool)

(declare-fun e!3772674 () Bool)

(declare-fun tp!1728103 () Bool)

(declare-fun tp!1728104 () Bool)

(assert (=> b!6194851 (= e!3772674 (and tp!1728103 tp!1728104))))

(assert (=> b!6193458 (= tp!1728001 e!3772674)))

(assert (= (and b!6193458 ((_ is Cons!64568) (exprs!6015 setElem!42016))) b!6194851))

(declare-fun condSetEmpty!42027 () Bool)

(assert (=> setNonEmpty!42016 (= condSetEmpty!42027 (= setRest!42016 ((as const (Array Context!11030 Bool)) false)))))

(declare-fun setRes!42027 () Bool)

(assert (=> setNonEmpty!42016 (= tp!1728002 setRes!42027)))

(declare-fun setIsEmpty!42027 () Bool)

(assert (=> setIsEmpty!42027 setRes!42027))

(declare-fun setNonEmpty!42027 () Bool)

(declare-fun tp!1728106 () Bool)

(declare-fun e!3772675 () Bool)

(declare-fun setElem!42027 () Context!11030)

(assert (=> setNonEmpty!42027 (= setRes!42027 (and tp!1728106 (inv!83574 setElem!42027) e!3772675))))

(declare-fun setRest!42027 () (InoxSet Context!11030))

(assert (=> setNonEmpty!42027 (= setRest!42016 ((_ map or) (store ((as const (Array Context!11030 Bool)) false) setElem!42027 true) setRest!42027))))

(declare-fun b!6194852 () Bool)

(declare-fun tp!1728105 () Bool)

(assert (=> b!6194852 (= e!3772675 tp!1728105)))

(assert (= (and setNonEmpty!42016 condSetEmpty!42027) setIsEmpty!42027))

(assert (= (and setNonEmpty!42016 (not condSetEmpty!42027)) setNonEmpty!42027))

(assert (= setNonEmpty!42027 b!6194852))

(declare-fun m!7028852 () Bool)

(assert (=> setNonEmpty!42027 m!7028852))

(declare-fun b!6194853 () Bool)

(declare-fun e!3772676 () Bool)

(declare-fun tp!1728107 () Bool)

(declare-fun tp!1728108 () Bool)

(assert (=> b!6194853 (= e!3772676 (and tp!1728107 tp!1728108))))

(assert (=> b!6193418 (= tp!1727957 e!3772676)))

(assert (= (and b!6193418 ((_ is Cons!64568) (exprs!6015 (h!71017 (t!378205 zl!343))))) b!6194853))

(declare-fun b!6194856 () Bool)

(declare-fun e!3772677 () Bool)

(declare-fun tp!1728109 () Bool)

(assert (=> b!6194856 (= e!3772677 tp!1728109)))

(declare-fun b!6194857 () Bool)

(declare-fun tp!1728111 () Bool)

(declare-fun tp!1728113 () Bool)

(assert (=> b!6194857 (= e!3772677 (and tp!1728111 tp!1728113))))

(declare-fun b!6194855 () Bool)

(declare-fun tp!1728112 () Bool)

(declare-fun tp!1728110 () Bool)

(assert (=> b!6194855 (= e!3772677 (and tp!1728112 tp!1728110))))

(assert (=> b!6193464 (= tp!1728009 e!3772677)))

(declare-fun b!6194854 () Bool)

(assert (=> b!6194854 (= e!3772677 tp_is_empty!41515)))

(assert (= (and b!6193464 ((_ is ElementMatch!16131) (h!71016 (exprs!6015 setElem!42010)))) b!6194854))

(assert (= (and b!6193464 ((_ is Concat!24976) (h!71016 (exprs!6015 setElem!42010)))) b!6194855))

(assert (= (and b!6193464 ((_ is Star!16131) (h!71016 (exprs!6015 setElem!42010)))) b!6194856))

(assert (= (and b!6193464 ((_ is Union!16131) (h!71016 (exprs!6015 setElem!42010)))) b!6194857))

(declare-fun b!6194858 () Bool)

(declare-fun e!3772678 () Bool)

(declare-fun tp!1728114 () Bool)

(declare-fun tp!1728115 () Bool)

(assert (=> b!6194858 (= e!3772678 (and tp!1728114 tp!1728115))))

(assert (=> b!6193464 (= tp!1728010 e!3772678)))

(assert (= (and b!6193464 ((_ is Cons!64568) (t!378204 (exprs!6015 setElem!42010)))) b!6194858))

(declare-fun b!6194861 () Bool)

(declare-fun e!3772679 () Bool)

(declare-fun tp!1728116 () Bool)

(assert (=> b!6194861 (= e!3772679 tp!1728116)))

(declare-fun b!6194862 () Bool)

(declare-fun tp!1728118 () Bool)

(declare-fun tp!1728120 () Bool)

(assert (=> b!6194862 (= e!3772679 (and tp!1728118 tp!1728120))))

(declare-fun b!6194860 () Bool)

(declare-fun tp!1728119 () Bool)

(declare-fun tp!1728117 () Bool)

(assert (=> b!6194860 (= e!3772679 (and tp!1728119 tp!1728117))))

(assert (=> b!6193451 (= tp!1727995 e!3772679)))

(declare-fun b!6194859 () Bool)

(assert (=> b!6194859 (= e!3772679 tp_is_empty!41515)))

(assert (= (and b!6193451 ((_ is ElementMatch!16131) (regOne!32774 (regTwo!32775 r!7292)))) b!6194859))

(assert (= (and b!6193451 ((_ is Concat!24976) (regOne!32774 (regTwo!32775 r!7292)))) b!6194860))

(assert (= (and b!6193451 ((_ is Star!16131) (regOne!32774 (regTwo!32775 r!7292)))) b!6194861))

(assert (= (and b!6193451 ((_ is Union!16131) (regOne!32774 (regTwo!32775 r!7292)))) b!6194862))

(declare-fun b!6194865 () Bool)

(declare-fun e!3772680 () Bool)

(declare-fun tp!1728121 () Bool)

(assert (=> b!6194865 (= e!3772680 tp!1728121)))

(declare-fun b!6194866 () Bool)

(declare-fun tp!1728123 () Bool)

(declare-fun tp!1728125 () Bool)

(assert (=> b!6194866 (= e!3772680 (and tp!1728123 tp!1728125))))

(declare-fun b!6194864 () Bool)

(declare-fun tp!1728124 () Bool)

(declare-fun tp!1728122 () Bool)

(assert (=> b!6194864 (= e!3772680 (and tp!1728124 tp!1728122))))

(assert (=> b!6193451 (= tp!1727993 e!3772680)))

(declare-fun b!6194863 () Bool)

(assert (=> b!6194863 (= e!3772680 tp_is_empty!41515)))

(assert (= (and b!6193451 ((_ is ElementMatch!16131) (regTwo!32774 (regTwo!32775 r!7292)))) b!6194863))

(assert (= (and b!6193451 ((_ is Concat!24976) (regTwo!32774 (regTwo!32775 r!7292)))) b!6194864))

(assert (= (and b!6193451 ((_ is Star!16131) (regTwo!32774 (regTwo!32775 r!7292)))) b!6194865))

(assert (= (and b!6193451 ((_ is Union!16131) (regTwo!32774 (regTwo!32775 r!7292)))) b!6194866))

(declare-fun b!6194869 () Bool)

(declare-fun e!3772681 () Bool)

(declare-fun tp!1728126 () Bool)

(assert (=> b!6194869 (= e!3772681 tp!1728126)))

(declare-fun b!6194870 () Bool)

(declare-fun tp!1728128 () Bool)

(declare-fun tp!1728130 () Bool)

(assert (=> b!6194870 (= e!3772681 (and tp!1728128 tp!1728130))))

(declare-fun b!6194868 () Bool)

(declare-fun tp!1728129 () Bool)

(declare-fun tp!1728127 () Bool)

(assert (=> b!6194868 (= e!3772681 (and tp!1728129 tp!1728127))))

(assert (=> b!6193453 (= tp!1727994 e!3772681)))

(declare-fun b!6194867 () Bool)

(assert (=> b!6194867 (= e!3772681 tp_is_empty!41515)))

(assert (= (and b!6193453 ((_ is ElementMatch!16131) (regOne!32775 (regTwo!32775 r!7292)))) b!6194867))

(assert (= (and b!6193453 ((_ is Concat!24976) (regOne!32775 (regTwo!32775 r!7292)))) b!6194868))

(assert (= (and b!6193453 ((_ is Star!16131) (regOne!32775 (regTwo!32775 r!7292)))) b!6194869))

(assert (= (and b!6193453 ((_ is Union!16131) (regOne!32775 (regTwo!32775 r!7292)))) b!6194870))

(declare-fun b!6194887 () Bool)

(declare-fun e!3772689 () Bool)

(declare-fun tp!1728131 () Bool)

(assert (=> b!6194887 (= e!3772689 tp!1728131)))

(declare-fun b!6194888 () Bool)

(declare-fun tp!1728133 () Bool)

(declare-fun tp!1728135 () Bool)

(assert (=> b!6194888 (= e!3772689 (and tp!1728133 tp!1728135))))

(declare-fun b!6194886 () Bool)

(declare-fun tp!1728134 () Bool)

(declare-fun tp!1728132 () Bool)

(assert (=> b!6194886 (= e!3772689 (and tp!1728134 tp!1728132))))

(assert (=> b!6193453 (= tp!1727996 e!3772689)))

(declare-fun b!6194885 () Bool)

(assert (=> b!6194885 (= e!3772689 tp_is_empty!41515)))

(assert (= (and b!6193453 ((_ is ElementMatch!16131) (regTwo!32775 (regTwo!32775 r!7292)))) b!6194885))

(assert (= (and b!6193453 ((_ is Concat!24976) (regTwo!32775 (regTwo!32775 r!7292)))) b!6194886))

(assert (= (and b!6193453 ((_ is Star!16131) (regTwo!32775 (regTwo!32775 r!7292)))) b!6194887))

(assert (= (and b!6193453 ((_ is Union!16131) (regTwo!32775 (regTwo!32775 r!7292)))) b!6194888))

(declare-fun b!6194891 () Bool)

(declare-fun e!3772690 () Bool)

(declare-fun tp!1728136 () Bool)

(assert (=> b!6194891 (= e!3772690 tp!1728136)))

(declare-fun b!6194892 () Bool)

(declare-fun tp!1728138 () Bool)

(declare-fun tp!1728140 () Bool)

(assert (=> b!6194892 (= e!3772690 (and tp!1728138 tp!1728140))))

(declare-fun b!6194890 () Bool)

(declare-fun tp!1728139 () Bool)

(declare-fun tp!1728137 () Bool)

(assert (=> b!6194890 (= e!3772690 (and tp!1728139 tp!1728137))))

(assert (=> b!6193452 (= tp!1727992 e!3772690)))

(declare-fun b!6194889 () Bool)

(assert (=> b!6194889 (= e!3772690 tp_is_empty!41515)))

(assert (= (and b!6193452 ((_ is ElementMatch!16131) (reg!16460 (regTwo!32775 r!7292)))) b!6194889))

(assert (= (and b!6193452 ((_ is Concat!24976) (reg!16460 (regTwo!32775 r!7292)))) b!6194890))

(assert (= (and b!6193452 ((_ is Star!16131) (reg!16460 (regTwo!32775 r!7292)))) b!6194891))

(assert (= (and b!6193452 ((_ is Union!16131) (reg!16460 (regTwo!32775 r!7292)))) b!6194892))

(declare-fun b!6194895 () Bool)

(declare-fun e!3772691 () Bool)

(declare-fun tp!1728141 () Bool)

(assert (=> b!6194895 (= e!3772691 tp!1728141)))

(declare-fun b!6194896 () Bool)

(declare-fun tp!1728143 () Bool)

(declare-fun tp!1728145 () Bool)

(assert (=> b!6194896 (= e!3772691 (and tp!1728143 tp!1728145))))

(declare-fun b!6194894 () Bool)

(declare-fun tp!1728144 () Bool)

(declare-fun tp!1728142 () Bool)

(assert (=> b!6194894 (= e!3772691 (and tp!1728144 tp!1728142))))

(assert (=> b!6193443 (= tp!1727985 e!3772691)))

(declare-fun b!6194893 () Bool)

(assert (=> b!6194893 (= e!3772691 tp_is_empty!41515)))

(assert (= (and b!6193443 ((_ is ElementMatch!16131) (regOne!32774 (reg!16460 r!7292)))) b!6194893))

(assert (= (and b!6193443 ((_ is Concat!24976) (regOne!32774 (reg!16460 r!7292)))) b!6194894))

(assert (= (and b!6193443 ((_ is Star!16131) (regOne!32774 (reg!16460 r!7292)))) b!6194895))

(assert (= (and b!6193443 ((_ is Union!16131) (regOne!32774 (reg!16460 r!7292)))) b!6194896))

(declare-fun b!6194899 () Bool)

(declare-fun e!3772692 () Bool)

(declare-fun tp!1728146 () Bool)

(assert (=> b!6194899 (= e!3772692 tp!1728146)))

(declare-fun b!6194900 () Bool)

(declare-fun tp!1728148 () Bool)

(declare-fun tp!1728150 () Bool)

(assert (=> b!6194900 (= e!3772692 (and tp!1728148 tp!1728150))))

(declare-fun b!6194898 () Bool)

(declare-fun tp!1728149 () Bool)

(declare-fun tp!1728147 () Bool)

(assert (=> b!6194898 (= e!3772692 (and tp!1728149 tp!1728147))))

(assert (=> b!6193443 (= tp!1727983 e!3772692)))

(declare-fun b!6194897 () Bool)

(assert (=> b!6194897 (= e!3772692 tp_is_empty!41515)))

(assert (= (and b!6193443 ((_ is ElementMatch!16131) (regTwo!32774 (reg!16460 r!7292)))) b!6194897))

(assert (= (and b!6193443 ((_ is Concat!24976) (regTwo!32774 (reg!16460 r!7292)))) b!6194898))

(assert (= (and b!6193443 ((_ is Star!16131) (regTwo!32774 (reg!16460 r!7292)))) b!6194899))

(assert (= (and b!6193443 ((_ is Union!16131) (regTwo!32774 (reg!16460 r!7292)))) b!6194900))

(declare-fun b!6194903 () Bool)

(declare-fun e!3772693 () Bool)

(declare-fun tp!1728151 () Bool)

(assert (=> b!6194903 (= e!3772693 tp!1728151)))

(declare-fun b!6194904 () Bool)

(declare-fun tp!1728153 () Bool)

(declare-fun tp!1728155 () Bool)

(assert (=> b!6194904 (= e!3772693 (and tp!1728153 tp!1728155))))

(declare-fun b!6194902 () Bool)

(declare-fun tp!1728154 () Bool)

(declare-fun tp!1728152 () Bool)

(assert (=> b!6194902 (= e!3772693 (and tp!1728154 tp!1728152))))

(assert (=> b!6193445 (= tp!1727984 e!3772693)))

(declare-fun b!6194901 () Bool)

(assert (=> b!6194901 (= e!3772693 tp_is_empty!41515)))

(assert (= (and b!6193445 ((_ is ElementMatch!16131) (regOne!32775 (reg!16460 r!7292)))) b!6194901))

(assert (= (and b!6193445 ((_ is Concat!24976) (regOne!32775 (reg!16460 r!7292)))) b!6194902))

(assert (= (and b!6193445 ((_ is Star!16131) (regOne!32775 (reg!16460 r!7292)))) b!6194903))

(assert (= (and b!6193445 ((_ is Union!16131) (regOne!32775 (reg!16460 r!7292)))) b!6194904))

(declare-fun b!6194907 () Bool)

(declare-fun e!3772694 () Bool)

(declare-fun tp!1728156 () Bool)

(assert (=> b!6194907 (= e!3772694 tp!1728156)))

(declare-fun b!6194908 () Bool)

(declare-fun tp!1728158 () Bool)

(declare-fun tp!1728160 () Bool)

(assert (=> b!6194908 (= e!3772694 (and tp!1728158 tp!1728160))))

(declare-fun b!6194906 () Bool)

(declare-fun tp!1728159 () Bool)

(declare-fun tp!1728157 () Bool)

(assert (=> b!6194906 (= e!3772694 (and tp!1728159 tp!1728157))))

(assert (=> b!6193445 (= tp!1727986 e!3772694)))

(declare-fun b!6194905 () Bool)

(assert (=> b!6194905 (= e!3772694 tp_is_empty!41515)))

(assert (= (and b!6193445 ((_ is ElementMatch!16131) (regTwo!32775 (reg!16460 r!7292)))) b!6194905))

(assert (= (and b!6193445 ((_ is Concat!24976) (regTwo!32775 (reg!16460 r!7292)))) b!6194906))

(assert (= (and b!6193445 ((_ is Star!16131) (regTwo!32775 (reg!16460 r!7292)))) b!6194907))

(assert (= (and b!6193445 ((_ is Union!16131) (regTwo!32775 (reg!16460 r!7292)))) b!6194908))

(declare-fun b!6194911 () Bool)

(declare-fun e!3772695 () Bool)

(declare-fun tp!1728161 () Bool)

(assert (=> b!6194911 (= e!3772695 tp!1728161)))

(declare-fun b!6194912 () Bool)

(declare-fun tp!1728163 () Bool)

(declare-fun tp!1728165 () Bool)

(assert (=> b!6194912 (= e!3772695 (and tp!1728163 tp!1728165))))

(declare-fun b!6194910 () Bool)

(declare-fun tp!1728164 () Bool)

(declare-fun tp!1728162 () Bool)

(assert (=> b!6194910 (= e!3772695 (and tp!1728164 tp!1728162))))

(assert (=> b!6193444 (= tp!1727982 e!3772695)))

(declare-fun b!6194909 () Bool)

(assert (=> b!6194909 (= e!3772695 tp_is_empty!41515)))

(assert (= (and b!6193444 ((_ is ElementMatch!16131) (reg!16460 (reg!16460 r!7292)))) b!6194909))

(assert (= (and b!6193444 ((_ is Concat!24976) (reg!16460 (reg!16460 r!7292)))) b!6194910))

(assert (= (and b!6193444 ((_ is Star!16131) (reg!16460 (reg!16460 r!7292)))) b!6194911))

(assert (= (and b!6193444 ((_ is Union!16131) (reg!16460 (reg!16460 r!7292)))) b!6194912))

(declare-fun b!6194925 () Bool)

(declare-fun e!3772701 () Bool)

(declare-fun tp!1728166 () Bool)

(assert (=> b!6194925 (= e!3772701 tp!1728166)))

(declare-fun b!6194926 () Bool)

(declare-fun tp!1728168 () Bool)

(declare-fun tp!1728170 () Bool)

(assert (=> b!6194926 (= e!3772701 (and tp!1728168 tp!1728170))))

(declare-fun b!6194924 () Bool)

(declare-fun tp!1728169 () Bool)

(declare-fun tp!1728167 () Bool)

(assert (=> b!6194924 (= e!3772701 (and tp!1728169 tp!1728167))))

(assert (=> b!6193435 (= tp!1727975 e!3772701)))

(declare-fun b!6194923 () Bool)

(assert (=> b!6194923 (= e!3772701 tp_is_empty!41515)))

(assert (= (and b!6193435 ((_ is ElementMatch!16131) (regOne!32774 (regOne!32774 r!7292)))) b!6194923))

(assert (= (and b!6193435 ((_ is Concat!24976) (regOne!32774 (regOne!32774 r!7292)))) b!6194924))

(assert (= (and b!6193435 ((_ is Star!16131) (regOne!32774 (regOne!32774 r!7292)))) b!6194925))

(assert (= (and b!6193435 ((_ is Union!16131) (regOne!32774 (regOne!32774 r!7292)))) b!6194926))

(declare-fun b!6194929 () Bool)

(declare-fun e!3772702 () Bool)

(declare-fun tp!1728171 () Bool)

(assert (=> b!6194929 (= e!3772702 tp!1728171)))

(declare-fun b!6194930 () Bool)

(declare-fun tp!1728173 () Bool)

(declare-fun tp!1728175 () Bool)

(assert (=> b!6194930 (= e!3772702 (and tp!1728173 tp!1728175))))

(declare-fun b!6194928 () Bool)

(declare-fun tp!1728174 () Bool)

(declare-fun tp!1728172 () Bool)

(assert (=> b!6194928 (= e!3772702 (and tp!1728174 tp!1728172))))

(assert (=> b!6193435 (= tp!1727973 e!3772702)))

(declare-fun b!6194927 () Bool)

(assert (=> b!6194927 (= e!3772702 tp_is_empty!41515)))

(assert (= (and b!6193435 ((_ is ElementMatch!16131) (regTwo!32774 (regOne!32774 r!7292)))) b!6194927))

(assert (= (and b!6193435 ((_ is Concat!24976) (regTwo!32774 (regOne!32774 r!7292)))) b!6194928))

(assert (= (and b!6193435 ((_ is Star!16131) (regTwo!32774 (regOne!32774 r!7292)))) b!6194929))

(assert (= (and b!6193435 ((_ is Union!16131) (regTwo!32774 (regOne!32774 r!7292)))) b!6194930))

(declare-fun b!6194933 () Bool)

(declare-fun e!3772703 () Bool)

(declare-fun tp!1728176 () Bool)

(assert (=> b!6194933 (= e!3772703 tp!1728176)))

(declare-fun b!6194934 () Bool)

(declare-fun tp!1728178 () Bool)

(declare-fun tp!1728180 () Bool)

(assert (=> b!6194934 (= e!3772703 (and tp!1728178 tp!1728180))))

(declare-fun b!6194932 () Bool)

(declare-fun tp!1728179 () Bool)

(declare-fun tp!1728177 () Bool)

(assert (=> b!6194932 (= e!3772703 (and tp!1728179 tp!1728177))))

(assert (=> b!6193437 (= tp!1727974 e!3772703)))

(declare-fun b!6194931 () Bool)

(assert (=> b!6194931 (= e!3772703 tp_is_empty!41515)))

(assert (= (and b!6193437 ((_ is ElementMatch!16131) (regOne!32775 (regOne!32774 r!7292)))) b!6194931))

(assert (= (and b!6193437 ((_ is Concat!24976) (regOne!32775 (regOne!32774 r!7292)))) b!6194932))

(assert (= (and b!6193437 ((_ is Star!16131) (regOne!32775 (regOne!32774 r!7292)))) b!6194933))

(assert (= (and b!6193437 ((_ is Union!16131) (regOne!32775 (regOne!32774 r!7292)))) b!6194934))

(declare-fun b!6194937 () Bool)

(declare-fun e!3772704 () Bool)

(declare-fun tp!1728181 () Bool)

(assert (=> b!6194937 (= e!3772704 tp!1728181)))

(declare-fun b!6194938 () Bool)

(declare-fun tp!1728183 () Bool)

(declare-fun tp!1728185 () Bool)

(assert (=> b!6194938 (= e!3772704 (and tp!1728183 tp!1728185))))

(declare-fun b!6194936 () Bool)

(declare-fun tp!1728184 () Bool)

(declare-fun tp!1728182 () Bool)

(assert (=> b!6194936 (= e!3772704 (and tp!1728184 tp!1728182))))

(assert (=> b!6193437 (= tp!1727976 e!3772704)))

(declare-fun b!6194935 () Bool)

(assert (=> b!6194935 (= e!3772704 tp_is_empty!41515)))

(assert (= (and b!6193437 ((_ is ElementMatch!16131) (regTwo!32775 (regOne!32774 r!7292)))) b!6194935))

(assert (= (and b!6193437 ((_ is Concat!24976) (regTwo!32775 (regOne!32774 r!7292)))) b!6194936))

(assert (= (and b!6193437 ((_ is Star!16131) (regTwo!32775 (regOne!32774 r!7292)))) b!6194937))

(assert (= (and b!6193437 ((_ is Union!16131) (regTwo!32775 (regOne!32774 r!7292)))) b!6194938))

(declare-fun b!6194941 () Bool)

(declare-fun e!3772705 () Bool)

(declare-fun tp!1728186 () Bool)

(assert (=> b!6194941 (= e!3772705 tp!1728186)))

(declare-fun b!6194942 () Bool)

(declare-fun tp!1728188 () Bool)

(declare-fun tp!1728190 () Bool)

(assert (=> b!6194942 (= e!3772705 (and tp!1728188 tp!1728190))))

(declare-fun b!6194940 () Bool)

(declare-fun tp!1728189 () Bool)

(declare-fun tp!1728187 () Bool)

(assert (=> b!6194940 (= e!3772705 (and tp!1728189 tp!1728187))))

(assert (=> b!6193436 (= tp!1727972 e!3772705)))

(declare-fun b!6194939 () Bool)

(assert (=> b!6194939 (= e!3772705 tp_is_empty!41515)))

(assert (= (and b!6193436 ((_ is ElementMatch!16131) (reg!16460 (regOne!32774 r!7292)))) b!6194939))

(assert (= (and b!6193436 ((_ is Concat!24976) (reg!16460 (regOne!32774 r!7292)))) b!6194940))

(assert (= (and b!6193436 ((_ is Star!16131) (reg!16460 (regOne!32774 r!7292)))) b!6194941))

(assert (= (and b!6193436 ((_ is Union!16131) (reg!16460 (regOne!32774 r!7292)))) b!6194942))

(declare-fun b_lambda!235667 () Bool)

(assert (= b_lambda!235659 (or d!1941685 b_lambda!235667)))

(declare-fun bs!1537539 () Bool)

(declare-fun d!1942449 () Bool)

(assert (= bs!1537539 (and d!1942449 d!1941685)))

(assert (=> bs!1537539 (= (dynLambda!25464 lambda!338263 (h!71016 (exprs!6015 (h!71017 zl!343)))) (validRegex!7867 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(declare-fun m!7028872 () Bool)

(assert (=> bs!1537539 m!7028872))

(assert (=> b!6194563 d!1942449))

(declare-fun b_lambda!235669 () Bool)

(assert (= b_lambda!235637 (or d!1941615 b_lambda!235669)))

(declare-fun bs!1537540 () Bool)

(declare-fun d!1942451 () Bool)

(assert (= bs!1537540 (and d!1942451 d!1941615)))

(assert (=> bs!1537540 (= (dynLambda!25464 lambda!338249 (h!71016 (unfocusZipperList!1552 zl!343))) (validRegex!7867 (h!71016 (unfocusZipperList!1552 zl!343))))))

(declare-fun m!7028874 () Bool)

(assert (=> bs!1537540 m!7028874))

(assert (=> b!6193691 d!1942451))

(declare-fun b_lambda!235671 () Bool)

(assert (= b_lambda!235639 (or d!1941595 b_lambda!235671)))

(declare-fun bs!1537541 () Bool)

(declare-fun d!1942453 () Bool)

(assert (= bs!1537541 (and d!1942453 d!1941595)))

(assert (=> bs!1537541 (= (dynLambda!25464 lambda!338245 (h!71016 (exprs!6015 (h!71017 zl!343)))) (validRegex!7867 (h!71016 (exprs!6015 (h!71017 zl!343)))))))

(assert (=> bs!1537541 m!7028872))

(assert (=> b!6193696 d!1942453))

(declare-fun b_lambda!235673 () Bool)

(assert (= b_lambda!235653 (or b!6192421 b_lambda!235673)))

(assert (=> d!1942243 d!1941697))

(declare-fun b_lambda!235675 () Bool)

(assert (= b_lambda!235643 (or d!1941659 b_lambda!235675)))

(declare-fun bs!1537542 () Bool)

(declare-fun d!1942455 () Bool)

(assert (= bs!1537542 (and d!1942455 d!1941659)))

(assert (=> bs!1537542 (= (dynLambda!25464 lambda!338256 (h!71016 lt!2341202)) (validRegex!7867 (h!71016 lt!2341202)))))

(declare-fun m!7028876 () Bool)

(assert (=> bs!1537542 m!7028876))

(assert (=> b!6193978 d!1942455))

(declare-fun b_lambda!235677 () Bool)

(assert (= b_lambda!235631 (or d!1941619 b_lambda!235677)))

(declare-fun bs!1537543 () Bool)

(declare-fun d!1942457 () Bool)

(assert (= bs!1537543 (and d!1942457 d!1941619)))

(assert (=> bs!1537543 (= (dynLambda!25464 lambda!338253 (h!71016 (exprs!6015 setElem!42010))) (validRegex!7867 (h!71016 (exprs!6015 setElem!42010))))))

(declare-fun m!7028878 () Bool)

(assert (=> bs!1537543 m!7028878))

(assert (=> b!6193608 d!1942457))

(declare-fun b_lambda!235679 () Bool)

(assert (= b_lambda!235655 (or d!1941673 b_lambda!235679)))

(declare-fun bs!1537544 () Bool)

(declare-fun d!1942459 () Bool)

(assert (= bs!1537544 (and d!1942459 d!1941673)))

(assert (=> bs!1537544 (= (dynLambda!25464 lambda!338262 (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343))))) (validRegex!7867 (h!71016 (t!378204 (exprs!6015 (h!71017 zl!343))))))))

(declare-fun m!7028880 () Bool)

(assert (=> bs!1537544 m!7028880))

(assert (=> b!6194493 d!1942459))

(declare-fun b_lambda!235681 () Bool)

(assert (= b_lambda!235633 (or b!6192421 b_lambda!235681)))

(assert (=> d!1941817 d!1941695))

(declare-fun b_lambda!235683 () Bool)

(assert (= b_lambda!235647 (or d!1941667 b_lambda!235683)))

(declare-fun bs!1537545 () Bool)

(declare-fun d!1942461 () Bool)

(assert (= bs!1537545 (and d!1942461 d!1941667)))

(assert (=> bs!1537545 (= (dynLambda!25464 lambda!338257 (h!71016 lt!2341187)) (validRegex!7867 (h!71016 lt!2341187)))))

(declare-fun m!7028882 () Bool)

(assert (=> bs!1537545 m!7028882))

(assert (=> b!6194220 d!1942461))

(declare-fun b_lambda!235685 () Bool)

(assert (= b_lambda!235629 (or b!6192421 b_lambda!235685)))

(assert (=> d!1941765 d!1941699))

(declare-fun b_lambda!235687 () Bool)

(assert (= b_lambda!235651 (or d!1941617 b_lambda!235687)))

(declare-fun bs!1537546 () Bool)

(declare-fun d!1942463 () Bool)

(assert (= bs!1537546 (and d!1942463 d!1941617)))

(assert (=> bs!1537546 (= (dynLambda!25464 lambda!338252 (h!71016 lt!2341308)) (validRegex!7867 (h!71016 lt!2341308)))))

(declare-fun m!7028888 () Bool)

(assert (=> bs!1537546 m!7028888))

(assert (=> b!6194369 d!1942463))

(check-sat (not b!6194862) (not b!6194255) (not b!6194842) (not b!6194198) (not bm!518009) (not b!6193735) (not bm!518176) (not b!6193626) (not b!6194218) (not b!6193764) (not bm!518249) (not b!6194841) (not b!6194396) (not b!6194518) (not b!6193717) (not b!6193674) (not b!6193941) (not b!6194284) (not b!6193600) (not b!6194335) (not b!6194585) (not b!6194664) (not bm!518298) (not b!6194896) (not bm!518112) (not b!6194886) (not b!6193620) (not bm!518046) (not d!1942053) (not b!6193689) (not b!6194424) (not d!1941729) (not bm!518193) (not d!1941739) (not d!1942403) (not bm!518188) (not d!1942161) (not b!6194866) (not b!6194891) (not b!6193932) (not d!1942257) (not b!6193534) (not b!6194736) (not d!1941929) (not b_lambda!235673) (not b!6194259) (not d!1942359) (not b!6194925) (not b!6194864) (not b!6193753) (not bm!518050) (not b!6194934) (not b!6193848) (not d!1941823) (not bm!518152) (not d!1942051) (not bm!518234) (not b!6194910) (not b!6194940) (not b!6194745) (not b!6194663) (not b!6194902) (not bm!518084) (not bs!1537543) (not d!1941861) (not b!6194007) (not b!6194250) (not b!6193741) (not b!6194579) (not b!6193676) (not b!6194453) (not b!6193564) (not b!6194414) (not bm!518201) (not b!6193601) (not b!6194857) (not b!6194477) (not b!6194540) (not b!6193568) (not b!6194363) (not bm!518033) (not d!1941871) (not bm!518055) (not bm!518037) (not b!6193583) (not b!6194081) (not bm!518262) (not d!1942107) (not b!6193844) (not b!6194399) (not b!6193565) (not bm!518049) (not setNonEmpty!42019) (not b!6193718) (not bs!1537542) (not b!6194680) (not b!6194534) (not b!6193986) (not d!1941831) (not b!6194868) (not b!6194928) (not b!6194865) (not b!6194390) (not d!1942043) (not d!1942155) (not b!6194672) (not b_lambda!235675) (not b!6194903) (not b!6194851) (not b_lambda!235685) (not b!6194936) (not d!1941765) (not bm!518307) (not b!6194929) (not d!1942417) (not bm!518308) (not b!6194499) (not bm!518153) (not d!1942157) (not b!6194801) (not b!6194452) (not b!6193886) (not d!1941891) (not b!6193726) (not bm!518125) (not d!1941979) (not d!1941735) (not b!6194669) (not d!1942199) (not b!6194541) (not d!1942181) (not b!6193733) (not b!6194254) (not b!6193699) (not b_lambda!235683) (not d!1941857) (not b!6194820) (not bm!518212) (not bs!1537544) (not bs!1537546) (not bm!518206) (not b!6194270) (not b!6194816) (not b!6194810) (not b!6194933) (not b!6194566) (not d!1941925) (not b!6194668) (not b!6194815) (not bm!518156) (not b!6193916) (not b!6194912) (not d!1942395) (not bm!518264) (not b!6193773) (not bm!518044) (not bm!518132) (not b!6193852) (not bm!518123) (not b!6194256) (not b!6194296) (not b_lambda!235627) (not b!6194411) (not d!1942243) (not b!6194837) (not b!6194850) (not b!6194847) (not bm!518056) (not bm!518204) (not d!1942011) (not b!6194336) (not d!1942259) (not b!6193549) (not b!6194848) (not b!6194737) (not d!1942013) (not d!1942343) (not b!6194828) (not b!6194580) (not b!6194870) (not b!6193504) (not b!6194111) (not bm!518237) (not bm!518246) (not b!6194588) (not bm!518250) (not b!6194187) (not bm!518121) (not d!1942299) (not b_lambda!235681) (not b!6194279) (not b_lambda!235677) (not b!6194924) (not d!1942231) (not b!6194199) (not b!6193853) (not b!6194349) (not b!6194391) (not b!6194892) (not b!6194139) (not d!1941757) (not b!6194744) (not bm!518097) (not b!6194805) (not b!6194855) (not bm!518086) (not b!6194814) (not b!6194362) (not d!1942183) (not b!6194088) (not bm!518117) (not b!6194275) (not bs!1537545) (not d!1941733) (not b!6194838) (not b!6193545) (not b!6194413) (not b!6194564) (not b!6193869) (not d!1941855) (not bm!518285) (not b!6193695) (not b!6194231) (not b!6193988) (not b!6194942) (not d!1942103) (not b!6193566) (not d!1942309) (not d!1941915) (not b!6194808) (not bm!518043) (not d!1942071) (not bm!518194) (not d!1942197) (not b!6194926) (not b!6194803) (not d!1941795) (not b!6194869) (not b!6193983) (not d!1942233) (not b!6194244) (not bm!518284) (not b!6194818) (not b!6193989) (not b_lambda!235669) (not bm!518202) (not b!6194904) (not d!1941743) (not d!1941975) (not b!6193567) (not b!6194472) (not bm!518109) (not b_lambda!235687) (not b!6194911) (not b!6193765) (not b!6194311) (not b!6194093) (not d!1941827) (not d!1942143) (not b!6193698) (not b!6194811) (not b!6194852) (not bm!518026) (not b!6193768) (not b!6193762) (not setNonEmpty!42024) (not b!6194898) (not b!6193987) (not b!6194077) (not b!6194746) (not b!6194836) (not d!1942105) (not bm!518259) (not d!1942179) (not setNonEmpty!42027) (not b!6194409) (not b!6194542) (not b!6193938) (not b!6193544) (not b!6194297) (not b!6193625) (not d!1941755) (not b!6194026) (not b!6194251) (not d!1942355) (not b!6193740) (not b!6194756) (not b!6194682) (not d!1941849) (not b!6194537) (not b!6194510) (not b!6194822) (not b!6193902) (not d!1941947) (not b!6194394) (not d!1942109) (not b!6193936) (not bm!518038) (not b!6194826) (not b!6193857) (not d!1942077) (not b!6193697) (not b!6194858) (not bm!518032) (not bm!518211) tp_is_empty!41515 (not b!6194407) (not b!6194281) (not d!1941977) (not bm!518096) (not b!6193980) (not bm!518255) (not bm!518053) (not b!6194895) (not d!1942035) (not b!6194200) (not b!6194681) (not b!6193505) (not b!6194906) (not bm!518297) (not b!6194280) (not d!1941893) (not d!1941953) (not b!6193937) (not bm!518155) (not bm!518196) (not b_lambda!235625) (not b!6194807) (not b!6194827) (not b_lambda!235671) (not b!6194584) (not b!6193979) (not bm!518197) (not bm!518280) (not b!6194938) (not b!6194937) (not bs!1537541) (not b!6194684) (not b!6193661) (not bm!518040) (not b!6193976) (not b!6194856) (not b!6194112) (not b!6194274) (not b!6194853) (not d!1942113) (not b!6193523) (not d!1941817) (not bm!518220) (not d!1942307) (not b_lambda!235679) (not b!6194941) (not d!1942429) (not b!6193650) (not d!1942305) (not b!6194543) (not b!6194621) (not d!1941905) (not b!6194276) (not b!6193769) (not bm!518218) (not d!1941879) (not b!6194890) (not d!1942115) (not bm!518159) (not b!6194887) (not b!6194491) (not bm!518140) (not b!6194581) (not b!6194494) (not bm!518253) (not b!6193981) (not b!6194932) (not b!6194861) (not b!6194840) (not b!6194620) (not b!6193849) (not bm!518108) (not b!6194232) (not b!6194819) (not d!1941859) (not d!1942171) (not bm!518010) (not d!1941737) (not bm!518100) (not d!1941913) (not bs!1537539) (not b!6194900) (not b!6194899) (not b!6194831) (not b!6194849) (not bm!518235) (not bm!518131) (not b!6193609) (not b!6194395) (not b!6193569) (not b!6194583) (not b!6193854) (not b!6193933) (not d!1941967) (not b!6194667) (not b!6194221) (not d!1942301) (not b!6194832) (not b!6194076) (not b_lambda!235623) (not bm!518137) (not b!6193548) (not d!1942245) (not b!6194812) (not bm!518135) (not b!6193652) (not bs!1537540) (not d!1942427) (not d!1942039) (not d!1942341) (not bm!518215) (not b!6194560) (not bm!518030) (not bm!518052) (not d!1941851) (not bm!518027) (not d!1941973) (not b!6193739) (not b!6194425) (not b!6194907) (not b!6194757) (not bm!518258) (not b!6194519) (not setNonEmpty!42020) (not b!6194830) (not b!6194565) (not d!1942019) (not b!6194860) (not b!6194021) (not bm!518138) (not b!6194888) (not bm!518245) (not d!1942049) (not b!6194535) (not bm!518256) (not b!6193692) (not b!6194370) (not b!6194894) (not b!6194824) (not b!6194408) (not b!6193738) (not bm!518191) (not b!6194908) (not bm!518221) (not d!1941787) (not d!1942023) (not d!1942267) (not d!1942357) (not bm!518175) (not b!6194823) (not bm!518207) (not d!1942297) (not bm!518041) (not b!6194802) (not bm!518088) (not bm!518082) (not bm!518126) (not b!6193961) (not b!6193770) (not bm!518187) (not bm!518315) (not bm!518087) (not bm!518236) (not bm!518316) (not b!6193732) (not bm!518058) (not bm!518198) (not b!6194806) (not b!6194087) (not b!6194930) (not b!6193619) (not bm!518268) (not d!1941771) (not d!1941877) (not bm!518199) (not bm!518047) (not b_lambda!235667) (not b!6194027) (not bm!518279) (not bm!518265) (not bm!518179) (not d!1942347) (not b!6193707) (not b!6194846) (not b!6194835))
(check-sat)
