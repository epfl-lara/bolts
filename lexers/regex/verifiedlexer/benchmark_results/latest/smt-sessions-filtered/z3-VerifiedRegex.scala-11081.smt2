; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573614 () Bool)

(assert start!573614)

(declare-fun b!5486165 () Bool)

(assert (=> b!5486165 true))

(declare-fun res!2339528 () Bool)

(declare-fun e!3394891 () Bool)

(assert (=> start!573614 (=> (not res!2339528) (not e!3394891))))

(declare-datatypes ((C!31088 0))(
  ( (C!31089 (val!25246 Int)) )
))
(declare-datatypes ((Regex!15409 0))(
  ( (ElementMatch!15409 (c!958349 C!31088)) (Concat!24254 (regOne!31330 Regex!15409) (regTwo!31330 Regex!15409)) (EmptyExpr!15409) (Star!15409 (reg!15738 Regex!15409)) (EmptyLang!15409) (Union!15409 (regOne!31331 Regex!15409) (regTwo!31331 Regex!15409)) )
))
(declare-fun r!7292 () Regex!15409)

(declare-fun validRegex!7145 (Regex!15409) Bool)

(assert (=> start!573614 (= res!2339528 (validRegex!7145 r!7292))))

(assert (=> start!573614 e!3394891))

(declare-fun e!3394896 () Bool)

(assert (=> start!573614 e!3394896))

(declare-fun condSetEmpty!36183 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62526 0))(
  ( (Nil!62402) (Cons!62402 (h!68850 Regex!15409) (t!375757 List!62526)) )
))
(declare-datatypes ((Context!9586 0))(
  ( (Context!9587 (exprs!5293 List!62526)) )
))
(declare-fun z!1189 () (InoxSet Context!9586))

(assert (=> start!573614 (= condSetEmpty!36183 (= z!1189 ((as const (Array Context!9586 Bool)) false)))))

(declare-fun setRes!36183 () Bool)

(assert (=> start!573614 setRes!36183))

(declare-fun e!3394889 () Bool)

(assert (=> start!573614 e!3394889))

(declare-fun e!3394893 () Bool)

(assert (=> start!573614 e!3394893))

(declare-fun b!5486164 () Bool)

(declare-fun res!2339523 () Bool)

(declare-fun e!3394892 () Bool)

(assert (=> b!5486164 (=> res!2339523 e!3394892)))

(declare-datatypes ((List!62527 0))(
  ( (Nil!62403) (Cons!62403 (h!68851 Context!9586) (t!375758 List!62527)) )
))
(declare-fun zl!343 () List!62527)

(declare-datatypes ((List!62528 0))(
  ( (Nil!62404) (Cons!62404 (h!68852 C!31088) (t!375759 List!62528)) )
))
(declare-fun s!2326 () List!62528)

(get-info :version)

(assert (=> b!5486164 (= res!2339523 (or (not ((_ is Cons!62403) zl!343)) ((_ is Nil!62404) s!2326) (not (= zl!343 (Cons!62403 (h!68851 zl!343) (t!375758 zl!343))))))))

(declare-fun e!3394890 () Bool)

(assert (=> b!5486165 (= e!3394892 e!3394890)))

(declare-fun res!2339525 () Bool)

(assert (=> b!5486165 (=> res!2339525 e!3394890)))

(declare-fun lt!2240951 () Bool)

(assert (=> b!5486165 (= res!2339525 (not lt!2240951))))

(declare-fun lt!2240946 () List!62526)

(declare-fun lambda!293279 () Int)

(declare-fun exists!2041 (List!62526 Int) Bool)

(assert (=> b!5486165 (= lt!2240951 (exists!2041 lt!2240946 lambda!293279))))

(declare-datatypes ((Unit!155272 0))(
  ( (Unit!155273) )
))
(declare-fun lt!2240950 () Unit!155272)

(declare-fun matchRGenUnionSpec!242 (Regex!15409 List!62526 List!62528) Unit!155272)

(assert (=> b!5486165 (= lt!2240950 (matchRGenUnionSpec!242 r!7292 lt!2240946 s!2326))))

(declare-fun unfocusZipperList!841 (List!62527) List!62526)

(assert (=> b!5486165 (= lt!2240946 (unfocusZipperList!841 zl!343))))

(declare-fun setElem!36183 () Context!9586)

(declare-fun setNonEmpty!36183 () Bool)

(declare-fun e!3394894 () Bool)

(declare-fun tp!1507827 () Bool)

(declare-fun inv!81769 (Context!9586) Bool)

(assert (=> setNonEmpty!36183 (= setRes!36183 (and tp!1507827 (inv!81769 setElem!36183) e!3394894))))

(declare-fun setRest!36183 () (InoxSet Context!9586))

(assert (=> setNonEmpty!36183 (= z!1189 ((_ map or) (store ((as const (Array Context!9586 Bool)) false) setElem!36183 true) setRest!36183))))

(declare-fun b!5486166 () Bool)

(declare-fun res!2339520 () Bool)

(assert (=> b!5486166 (=> (not res!2339520) (not e!3394891))))

(declare-fun unfocusZipper!1151 (List!62527) Regex!15409)

(assert (=> b!5486166 (= res!2339520 (= r!7292 (unfocusZipper!1151 zl!343)))))

(declare-fun b!5486167 () Bool)

(declare-fun e!3394895 () Bool)

(declare-fun tp!1507821 () Bool)

(assert (=> b!5486167 (= e!3394895 tp!1507821)))

(declare-fun b!5486168 () Bool)

(declare-fun res!2339522 () Bool)

(declare-fun e!3394887 () Bool)

(assert (=> b!5486168 (=> res!2339522 e!3394887)))

(declare-fun lt!2240947 () Regex!15409)

(assert (=> b!5486168 (= res!2339522 (not (validRegex!7145 lt!2240947)))))

(declare-fun b!5486169 () Bool)

(declare-fun tp_is_empty!40071 () Bool)

(assert (=> b!5486169 (= e!3394896 tp_is_empty!40071)))

(declare-fun b!5486170 () Bool)

(declare-fun tp!1507826 () Bool)

(declare-fun tp!1507823 () Bool)

(assert (=> b!5486170 (= e!3394896 (and tp!1507826 tp!1507823))))

(declare-fun b!5486171 () Bool)

(declare-fun tp!1507820 () Bool)

(assert (=> b!5486171 (= e!3394894 tp!1507820)))

(declare-fun tp!1507822 () Bool)

(declare-fun b!5486172 () Bool)

(assert (=> b!5486172 (= e!3394889 (and (inv!81769 (h!68851 zl!343)) e!3394895 tp!1507822))))

(declare-fun b!5486173 () Bool)

(declare-fun res!2339527 () Bool)

(assert (=> b!5486173 (=> (not res!2339527) (not e!3394891))))

(declare-fun toList!9193 ((InoxSet Context!9586)) List!62527)

(assert (=> b!5486173 (= res!2339527 (= (toList!9193 z!1189) zl!343))))

(declare-fun b!5486174 () Bool)

(declare-fun tp!1507818 () Bool)

(assert (=> b!5486174 (= e!3394893 (and tp_is_empty!40071 tp!1507818))))

(declare-fun b!5486175 () Bool)

(declare-fun tp!1507824 () Bool)

(assert (=> b!5486175 (= e!3394896 tp!1507824)))

(declare-fun setIsEmpty!36183 () Bool)

(assert (=> setIsEmpty!36183 setRes!36183))

(declare-fun b!5486176 () Bool)

(assert (=> b!5486176 (= e!3394887 true)))

(declare-fun lt!2240948 () Bool)

(declare-fun matchR!7594 (Regex!15409 List!62528) Bool)

(assert (=> b!5486176 (= lt!2240948 (matchR!7594 lt!2240947 s!2326))))

(declare-fun b!5486177 () Bool)

(declare-fun res!2339526 () Bool)

(assert (=> b!5486177 (=> res!2339526 e!3394890)))

(assert (=> b!5486177 (= res!2339526 (not (exists!2041 lt!2240946 lambda!293279)))))

(declare-fun b!5486178 () Bool)

(assert (=> b!5486178 (= e!3394890 e!3394887)))

(declare-fun res!2339521 () Bool)

(assert (=> b!5486178 (=> res!2339521 e!3394887)))

(declare-fun contains!19731 (List!62526 Regex!15409) Bool)

(assert (=> b!5486178 (= res!2339521 (not (contains!19731 lt!2240946 lt!2240947)))))

(declare-fun getWitness!864 (List!62526 Int) Regex!15409)

(assert (=> b!5486178 (= lt!2240947 (getWitness!864 lt!2240946 lambda!293279))))

(declare-fun b!5486179 () Bool)

(declare-fun tp!1507819 () Bool)

(declare-fun tp!1507825 () Bool)

(assert (=> b!5486179 (= e!3394896 (and tp!1507819 tp!1507825))))

(declare-fun b!5486180 () Bool)

(assert (=> b!5486180 (= e!3394891 (not e!3394892))))

(declare-fun res!2339530 () Bool)

(assert (=> b!5486180 (=> res!2339530 e!3394892)))

(declare-fun e!3394888 () Bool)

(assert (=> b!5486180 (= res!2339530 e!3394888)))

(declare-fun res!2339524 () Bool)

(assert (=> b!5486180 (=> (not res!2339524) (not e!3394888))))

(assert (=> b!5486180 (= res!2339524 ((_ is Cons!62403) zl!343))))

(declare-fun matchRSpec!2512 (Regex!15409 List!62528) Bool)

(assert (=> b!5486180 (= lt!2240951 (matchRSpec!2512 r!7292 s!2326))))

(assert (=> b!5486180 (= lt!2240951 (matchR!7594 r!7292 s!2326))))

(declare-fun lt!2240949 () Unit!155272)

(declare-fun mainMatchTheorem!2512 (Regex!15409 List!62528) Unit!155272)

(assert (=> b!5486180 (= lt!2240949 (mainMatchTheorem!2512 r!7292 s!2326))))

(declare-fun b!5486181 () Bool)

(declare-fun res!2339529 () Bool)

(assert (=> b!5486181 (=> res!2339529 e!3394892)))

(declare-fun isEmpty!34295 (List!62527) Bool)

(assert (=> b!5486181 (= res!2339529 (isEmpty!34295 (t!375758 zl!343)))))

(declare-fun b!5486182 () Bool)

(assert (=> b!5486182 (= e!3394888 (isEmpty!34295 (t!375758 zl!343)))))

(assert (= (and start!573614 res!2339528) b!5486173))

(assert (= (and b!5486173 res!2339527) b!5486166))

(assert (= (and b!5486166 res!2339520) b!5486180))

(assert (= (and b!5486180 res!2339524) b!5486182))

(assert (= (and b!5486180 (not res!2339530)) b!5486164))

(assert (= (and b!5486164 (not res!2339523)) b!5486181))

(assert (= (and b!5486181 (not res!2339529)) b!5486165))

(assert (= (and b!5486165 (not res!2339525)) b!5486177))

(assert (= (and b!5486177 (not res!2339526)) b!5486178))

(assert (= (and b!5486178 (not res!2339521)) b!5486168))

(assert (= (and b!5486168 (not res!2339522)) b!5486176))

(assert (= (and start!573614 ((_ is ElementMatch!15409) r!7292)) b!5486169))

(assert (= (and start!573614 ((_ is Concat!24254) r!7292)) b!5486179))

(assert (= (and start!573614 ((_ is Star!15409) r!7292)) b!5486175))

(assert (= (and start!573614 ((_ is Union!15409) r!7292)) b!5486170))

(assert (= (and start!573614 condSetEmpty!36183) setIsEmpty!36183))

(assert (= (and start!573614 (not condSetEmpty!36183)) setNonEmpty!36183))

(assert (= setNonEmpty!36183 b!5486171))

(assert (= b!5486172 b!5486167))

(assert (= (and start!573614 ((_ is Cons!62403) zl!343)) b!5486172))

(assert (= (and start!573614 ((_ is Cons!62404) s!2326)) b!5486174))

(declare-fun m!6501056 () Bool)

(assert (=> b!5486172 m!6501056))

(declare-fun m!6501058 () Bool)

(assert (=> b!5486165 m!6501058))

(declare-fun m!6501060 () Bool)

(assert (=> b!5486165 m!6501060))

(declare-fun m!6501062 () Bool)

(assert (=> b!5486165 m!6501062))

(declare-fun m!6501064 () Bool)

(assert (=> b!5486181 m!6501064))

(declare-fun m!6501066 () Bool)

(assert (=> b!5486173 m!6501066))

(declare-fun m!6501068 () Bool)

(assert (=> b!5486168 m!6501068))

(declare-fun m!6501070 () Bool)

(assert (=> b!5486178 m!6501070))

(declare-fun m!6501072 () Bool)

(assert (=> b!5486178 m!6501072))

(declare-fun m!6501074 () Bool)

(assert (=> b!5486166 m!6501074))

(assert (=> b!5486177 m!6501058))

(declare-fun m!6501076 () Bool)

(assert (=> start!573614 m!6501076))

(declare-fun m!6501078 () Bool)

(assert (=> b!5486176 m!6501078))

(declare-fun m!6501080 () Bool)

(assert (=> setNonEmpty!36183 m!6501080))

(assert (=> b!5486182 m!6501064))

(declare-fun m!6501082 () Bool)

(assert (=> b!5486180 m!6501082))

(declare-fun m!6501084 () Bool)

(assert (=> b!5486180 m!6501084))

(declare-fun m!6501086 () Bool)

(assert (=> b!5486180 m!6501086))

(check-sat (not b!5486178) (not b!5486172) tp_is_empty!40071 (not b!5486174) (not b!5486165) (not b!5486179) (not b!5486176) (not b!5486171) (not start!573614) (not b!5486170) (not b!5486177) (not b!5486167) (not b!5486168) (not setNonEmpty!36183) (not b!5486173) (not b!5486182) (not b!5486180) (not b!5486175) (not b!5486181) (not b!5486166))
(check-sat)
