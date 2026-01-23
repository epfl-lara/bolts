; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742898 () Bool)

(assert start!742898)

(declare-fun res!3119708 () Bool)

(declare-fun e!4637742 () Bool)

(assert (=> start!742898 (=> (not res!3119708) (not e!4637742))))

(declare-datatypes ((C!42416 0))(
  ( (C!42417 (val!31670 Int)) )
))
(declare-datatypes ((Regex!21045 0))(
  ( (ElementMatch!21045 (c!1441961 C!42416)) (Concat!29890 (regOne!42602 Regex!21045) (regTwo!42602 Regex!21045)) (EmptyExpr!21045) (Star!21045 (reg!21374 Regex!21045)) (EmptyLang!21045) (Union!21045 (regOne!42603 Regex!21045) (regTwo!42603 Regex!21045)) )
))
(declare-fun r!27161 () Regex!21045)

(declare-datatypes ((List!73904 0))(
  ( (Nil!73780) (Cons!73780 (h!80228 C!42416) (t!388639 List!73904)) )
))
(declare-fun s!15118 () List!73904)

(get-info :version)

(assert (=> start!742898 (= res!3119708 (and (= r!27161 EmptyLang!21045) (not ((_ is Cons!73780) s!15118))))))

(assert (=> start!742898 e!4637742))

(declare-fun e!4637741 () Bool)

(assert (=> start!742898 e!4637741))

(declare-fun e!4637743 () Bool)

(assert (=> start!742898 e!4637743))

(declare-fun b!7844225 () Bool)

(declare-fun tp_is_empty!52489 () Bool)

(declare-fun tp!2322097 () Bool)

(assert (=> b!7844225 (= e!4637743 (and tp_is_empty!52489 tp!2322097))))

(declare-fun b!7844226 () Bool)

(declare-fun derivative!579 (Regex!21045 List!73904) Regex!21045)

(assert (=> b!7844226 (= e!4637742 (not (= (derivative!579 r!27161 s!15118) r!27161)))))

(declare-fun b!7844227 () Bool)

(declare-fun tp!2322098 () Bool)

(assert (=> b!7844227 (= e!4637741 tp!2322098)))

(declare-fun b!7844228 () Bool)

(declare-fun tp!2322102 () Bool)

(declare-fun tp!2322100 () Bool)

(assert (=> b!7844228 (= e!4637741 (and tp!2322102 tp!2322100))))

(declare-fun b!7844229 () Bool)

(declare-fun tp!2322101 () Bool)

(declare-fun tp!2322099 () Bool)

(assert (=> b!7844229 (= e!4637741 (and tp!2322101 tp!2322099))))

(declare-fun b!7844230 () Bool)

(assert (=> b!7844230 (= e!4637741 tp_is_empty!52489)))

(assert (= (and start!742898 res!3119708) b!7844226))

(assert (= (and start!742898 ((_ is ElementMatch!21045) r!27161)) b!7844230))

(assert (= (and start!742898 ((_ is Concat!29890) r!27161)) b!7844229))

(assert (= (and start!742898 ((_ is Star!21045) r!27161)) b!7844227))

(assert (= (and start!742898 ((_ is Union!21045) r!27161)) b!7844228))

(assert (= (and start!742898 ((_ is Cons!73780) s!15118)) b!7844225))

(declare-fun m!8255274 () Bool)

(assert (=> b!7844226 m!8255274))

(check-sat (not b!7844227) tp_is_empty!52489 (not b!7844229) (not b!7844226) (not b!7844225) (not b!7844228))
(check-sat)
(get-model)

(declare-fun d!2352699 () Bool)

(declare-fun lt!2678967 () Regex!21045)

(declare-fun validRegex!11455 (Regex!21045) Bool)

(assert (=> d!2352699 (validRegex!11455 lt!2678967)))

(declare-fun e!4637754 () Regex!21045)

(assert (=> d!2352699 (= lt!2678967 e!4637754)))

(declare-fun c!1441967 () Bool)

(assert (=> d!2352699 (= c!1441967 ((_ is Cons!73780) s!15118))))

(assert (=> d!2352699 (validRegex!11455 r!27161)))

(assert (=> d!2352699 (= (derivative!579 r!27161 s!15118) lt!2678967)))

(declare-fun b!7844263 () Bool)

(declare-fun derivativeStep!6286 (Regex!21045 C!42416) Regex!21045)

(assert (=> b!7844263 (= e!4637754 (derivative!579 (derivativeStep!6286 r!27161 (h!80228 s!15118)) (t!388639 s!15118)))))

(declare-fun b!7844264 () Bool)

(assert (=> b!7844264 (= e!4637754 r!27161)))

(assert (= (and d!2352699 c!1441967) b!7844263))

(assert (= (and d!2352699 (not c!1441967)) b!7844264))

(declare-fun m!8255284 () Bool)

(assert (=> d!2352699 m!8255284))

(declare-fun m!8255286 () Bool)

(assert (=> d!2352699 m!8255286))

(declare-fun m!8255288 () Bool)

(assert (=> b!7844263 m!8255288))

(assert (=> b!7844263 m!8255288))

(declare-fun m!8255290 () Bool)

(assert (=> b!7844263 m!8255290))

(assert (=> b!7844226 d!2352699))

(declare-fun b!7844282 () Bool)

(declare-fun e!4637762 () Bool)

(declare-fun tp!2322143 () Bool)

(assert (=> b!7844282 (= e!4637762 (and tp_is_empty!52489 tp!2322143))))

(assert (=> b!7844225 (= tp!2322097 e!4637762)))

(assert (= (and b!7844225 ((_ is Cons!73780) (t!388639 s!15118))) b!7844282))

(declare-fun b!7844293 () Bool)

(declare-fun e!4637765 () Bool)

(assert (=> b!7844293 (= e!4637765 tp_is_empty!52489)))

(declare-fun b!7844296 () Bool)

(declare-fun tp!2322155 () Bool)

(declare-fun tp!2322157 () Bool)

(assert (=> b!7844296 (= e!4637765 (and tp!2322155 tp!2322157))))

(declare-fun b!7844294 () Bool)

(declare-fun tp!2322154 () Bool)

(declare-fun tp!2322156 () Bool)

(assert (=> b!7844294 (= e!4637765 (and tp!2322154 tp!2322156))))

(declare-fun b!7844295 () Bool)

(declare-fun tp!2322158 () Bool)

(assert (=> b!7844295 (= e!4637765 tp!2322158)))

(assert (=> b!7844229 (= tp!2322101 e!4637765)))

(assert (= (and b!7844229 ((_ is ElementMatch!21045) (regOne!42602 r!27161))) b!7844293))

(assert (= (and b!7844229 ((_ is Concat!29890) (regOne!42602 r!27161))) b!7844294))

(assert (= (and b!7844229 ((_ is Star!21045) (regOne!42602 r!27161))) b!7844295))

(assert (= (and b!7844229 ((_ is Union!21045) (regOne!42602 r!27161))) b!7844296))

(declare-fun b!7844297 () Bool)

(declare-fun e!4637766 () Bool)

(assert (=> b!7844297 (= e!4637766 tp_is_empty!52489)))

(declare-fun b!7844300 () Bool)

(declare-fun tp!2322160 () Bool)

(declare-fun tp!2322162 () Bool)

(assert (=> b!7844300 (= e!4637766 (and tp!2322160 tp!2322162))))

(declare-fun b!7844298 () Bool)

(declare-fun tp!2322159 () Bool)

(declare-fun tp!2322161 () Bool)

(assert (=> b!7844298 (= e!4637766 (and tp!2322159 tp!2322161))))

(declare-fun b!7844299 () Bool)

(declare-fun tp!2322163 () Bool)

(assert (=> b!7844299 (= e!4637766 tp!2322163)))

(assert (=> b!7844229 (= tp!2322099 e!4637766)))

(assert (= (and b!7844229 ((_ is ElementMatch!21045) (regTwo!42602 r!27161))) b!7844297))

(assert (= (and b!7844229 ((_ is Concat!29890) (regTwo!42602 r!27161))) b!7844298))

(assert (= (and b!7844229 ((_ is Star!21045) (regTwo!42602 r!27161))) b!7844299))

(assert (= (and b!7844229 ((_ is Union!21045) (regTwo!42602 r!27161))) b!7844300))

(declare-fun b!7844301 () Bool)

(declare-fun e!4637767 () Bool)

(assert (=> b!7844301 (= e!4637767 tp_is_empty!52489)))

(declare-fun b!7844304 () Bool)

(declare-fun tp!2322165 () Bool)

(declare-fun tp!2322167 () Bool)

(assert (=> b!7844304 (= e!4637767 (and tp!2322165 tp!2322167))))

(declare-fun b!7844302 () Bool)

(declare-fun tp!2322164 () Bool)

(declare-fun tp!2322166 () Bool)

(assert (=> b!7844302 (= e!4637767 (and tp!2322164 tp!2322166))))

(declare-fun b!7844303 () Bool)

(declare-fun tp!2322168 () Bool)

(assert (=> b!7844303 (= e!4637767 tp!2322168)))

(assert (=> b!7844228 (= tp!2322102 e!4637767)))

(assert (= (and b!7844228 ((_ is ElementMatch!21045) (regOne!42603 r!27161))) b!7844301))

(assert (= (and b!7844228 ((_ is Concat!29890) (regOne!42603 r!27161))) b!7844302))

(assert (= (and b!7844228 ((_ is Star!21045) (regOne!42603 r!27161))) b!7844303))

(assert (= (and b!7844228 ((_ is Union!21045) (regOne!42603 r!27161))) b!7844304))

(declare-fun b!7844305 () Bool)

(declare-fun e!4637768 () Bool)

(assert (=> b!7844305 (= e!4637768 tp_is_empty!52489)))

(declare-fun b!7844308 () Bool)

(declare-fun tp!2322170 () Bool)

(declare-fun tp!2322172 () Bool)

(assert (=> b!7844308 (= e!4637768 (and tp!2322170 tp!2322172))))

(declare-fun b!7844306 () Bool)

(declare-fun tp!2322169 () Bool)

(declare-fun tp!2322171 () Bool)

(assert (=> b!7844306 (= e!4637768 (and tp!2322169 tp!2322171))))

(declare-fun b!7844307 () Bool)

(declare-fun tp!2322173 () Bool)

(assert (=> b!7844307 (= e!4637768 tp!2322173)))

(assert (=> b!7844228 (= tp!2322100 e!4637768)))

(assert (= (and b!7844228 ((_ is ElementMatch!21045) (regTwo!42603 r!27161))) b!7844305))

(assert (= (and b!7844228 ((_ is Concat!29890) (regTwo!42603 r!27161))) b!7844306))

(assert (= (and b!7844228 ((_ is Star!21045) (regTwo!42603 r!27161))) b!7844307))

(assert (= (and b!7844228 ((_ is Union!21045) (regTwo!42603 r!27161))) b!7844308))

(declare-fun b!7844309 () Bool)

(declare-fun e!4637769 () Bool)

(assert (=> b!7844309 (= e!4637769 tp_is_empty!52489)))

(declare-fun b!7844312 () Bool)

(declare-fun tp!2322175 () Bool)

(declare-fun tp!2322177 () Bool)

(assert (=> b!7844312 (= e!4637769 (and tp!2322175 tp!2322177))))

(declare-fun b!7844310 () Bool)

(declare-fun tp!2322174 () Bool)

(declare-fun tp!2322176 () Bool)

(assert (=> b!7844310 (= e!4637769 (and tp!2322174 tp!2322176))))

(declare-fun b!7844311 () Bool)

(declare-fun tp!2322178 () Bool)

(assert (=> b!7844311 (= e!4637769 tp!2322178)))

(assert (=> b!7844227 (= tp!2322098 e!4637769)))

(assert (= (and b!7844227 ((_ is ElementMatch!21045) (reg!21374 r!27161))) b!7844309))

(assert (= (and b!7844227 ((_ is Concat!29890) (reg!21374 r!27161))) b!7844310))

(assert (= (and b!7844227 ((_ is Star!21045) (reg!21374 r!27161))) b!7844311))

(assert (= (and b!7844227 ((_ is Union!21045) (reg!21374 r!27161))) b!7844312))

(check-sat (not b!7844294) (not b!7844303) (not b!7844307) (not b!7844299) (not b!7844302) (not b!7844282) (not b!7844296) (not b!7844298) tp_is_empty!52489 (not b!7844308) (not d!2352699) (not b!7844295) (not b!7844300) (not b!7844312) (not b!7844304) (not b!7844306) (not b!7844310) (not b!7844263) (not b!7844311))
(check-sat)
