; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548738 () Bool)

(assert start!548738)

(declare-fun b!5181920 () Bool)

(declare-fun e!3228543 () Bool)

(declare-fun tp!1453167 () Bool)

(assert (=> b!5181920 (= e!3228543 tp!1453167)))

(declare-fun setIsEmpty!32427 () Bool)

(declare-fun setRes!32427 () Bool)

(assert (=> setIsEmpty!32427 setRes!32427))

(declare-fun b!5181922 () Bool)

(declare-fun e!3228544 () Bool)

(declare-datatypes ((C!29594 0))(
  ( (C!29595 (val!24499 Int)) )
))
(declare-datatypes ((Regex!14662 0))(
  ( (ElementMatch!14662 (c!893153 C!29594)) (Concat!23507 (regOne!29836 Regex!14662) (regTwo!29836 Regex!14662)) (EmptyExpr!14662) (Star!14662 (reg!14991 Regex!14662)) (EmptyLang!14662) (Union!14662 (regOne!29837 Regex!14662) (regTwo!29837 Regex!14662)) )
))
(declare-datatypes ((List!60303 0))(
  ( (Nil!60179) (Cons!60179 (h!66627 Regex!14662) (t!373456 List!60303)) )
))
(declare-datatypes ((Context!8092 0))(
  ( (Context!8093 (exprs!4546 List!60303)) )
))
(declare-fun z!4803 () (Set Context!8092))

(declare-datatypes ((List!60304 0))(
  ( (Nil!60180) (Cons!60180 (h!66628 C!29594) (t!373457 List!60304)) )
))
(declare-fun input!5922 () List!60304)

(declare-fun matchZipper!990 ((Set Context!8092) List!60304) Bool)

(declare-fun derivationZipper!285 ((Set Context!8092) List!60304) (Set Context!8092))

(assert (=> b!5181922 (= e!3228544 (not (= (matchZipper!990 z!4803 input!5922) (matchZipper!990 (derivationZipper!285 z!4803 input!5922) Nil!60180))))))

(declare-fun lt!2136010 () (Set Context!8092))

(assert (=> b!5181922 (= (matchZipper!990 lt!2136010 (t!373457 input!5922)) (matchZipper!990 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) Nil!60180))))

(declare-datatypes ((Unit!152186 0))(
  ( (Unit!152187) )
))
(declare-fun lt!2136009 () Unit!152186)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!49 ((Set Context!8092) List!60304) Unit!152186)

(assert (=> b!5181922 (= lt!2136009 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!49 lt!2136010 (t!373457 input!5922)))))

(declare-fun derivationStepZipper!1008 ((Set Context!8092) C!29594) (Set Context!8092))

(assert (=> b!5181922 (= lt!2136010 (derivationStepZipper!1008 z!4803 (h!66628 input!5922)))))

(declare-fun setNonEmpty!32427 () Bool)

(declare-fun setElem!32427 () Context!8092)

(declare-fun tp!1453166 () Bool)

(declare-fun inv!79903 (Context!8092) Bool)

(assert (=> setNonEmpty!32427 (= setRes!32427 (and tp!1453166 (inv!79903 setElem!32427) e!3228543))))

(declare-fun setRest!32427 () (Set Context!8092))

(assert (=> setNonEmpty!32427 (= z!4803 (set.union (set.insert setElem!32427 (as set.empty (Set Context!8092))) setRest!32427))))

(declare-fun b!5181921 () Bool)

(declare-fun e!3228545 () Bool)

(declare-fun tp_is_empty!38577 () Bool)

(declare-fun tp!1453168 () Bool)

(assert (=> b!5181921 (= e!3228545 (and tp_is_empty!38577 tp!1453168))))

(declare-fun res!2201401 () Bool)

(assert (=> start!548738 (=> (not res!2201401) (not e!3228544))))

(assert (=> start!548738 (= res!2201401 (is-Cons!60180 input!5922))))

(assert (=> start!548738 e!3228544))

(assert (=> start!548738 e!3228545))

(declare-fun condSetEmpty!32427 () Bool)

(assert (=> start!548738 (= condSetEmpty!32427 (= z!4803 (as set.empty (Set Context!8092))))))

(assert (=> start!548738 setRes!32427))

(assert (= (and start!548738 res!2201401) b!5181922))

(assert (= (and start!548738 (is-Cons!60180 input!5922)) b!5181921))

(assert (= (and start!548738 condSetEmpty!32427) setIsEmpty!32427))

(assert (= (and start!548738 (not condSetEmpty!32427)) setNonEmpty!32427))

(assert (= setNonEmpty!32427 b!5181920))

(declare-fun m!6242096 () Bool)

(assert (=> b!5181922 m!6242096))

(declare-fun m!6242098 () Bool)

(assert (=> b!5181922 m!6242098))

(declare-fun m!6242100 () Bool)

(assert (=> b!5181922 m!6242100))

(declare-fun m!6242102 () Bool)

(assert (=> b!5181922 m!6242102))

(declare-fun m!6242104 () Bool)

(assert (=> b!5181922 m!6242104))

(declare-fun m!6242106 () Bool)

(assert (=> b!5181922 m!6242106))

(declare-fun m!6242108 () Bool)

(assert (=> b!5181922 m!6242108))

(declare-fun m!6242110 () Bool)

(assert (=> b!5181922 m!6242110))

(assert (=> b!5181922 m!6242100))

(assert (=> b!5181922 m!6242104))

(declare-fun m!6242112 () Bool)

(assert (=> setNonEmpty!32427 m!6242112))

(push 1)

(assert (not b!5181922))

(assert (not b!5181920))

(assert tp_is_empty!38577)

(assert (not b!5181921))

(assert (not setNonEmpty!32427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675611 () Bool)

(declare-fun lambda!259026 () Int)

(declare-fun forall!14177 (List!60303 Int) Bool)

(assert (=> d!1675611 (= (inv!79903 setElem!32427) (forall!14177 (exprs!4546 setElem!32427) lambda!259026))))

(declare-fun bs!1207945 () Bool)

(assert (= bs!1207945 d!1675611))

(declare-fun m!6242148 () Bool)

(assert (=> bs!1207945 m!6242148))

(assert (=> setNonEmpty!32427 d!1675611))

(declare-fun d!1675621 () Bool)

(declare-fun c!893165 () Bool)

(declare-fun isEmpty!32222 (List!60304) Bool)

(assert (=> d!1675621 (= c!893165 (isEmpty!32222 Nil!60180))))

(declare-fun e!3228563 () Bool)

(assert (=> d!1675621 (= (matchZipper!990 (derivationZipper!285 z!4803 input!5922) Nil!60180) e!3228563)))

(declare-fun b!5181948 () Bool)

(declare-fun nullableZipper!1200 ((Set Context!8092)) Bool)

(assert (=> b!5181948 (= e!3228563 (nullableZipper!1200 (derivationZipper!285 z!4803 input!5922)))))

(declare-fun b!5181949 () Bool)

(declare-fun head!11080 (List!60304) C!29594)

(declare-fun tail!10179 (List!60304) List!60304)

(assert (=> b!5181949 (= e!3228563 (matchZipper!990 (derivationStepZipper!1008 (derivationZipper!285 z!4803 input!5922) (head!11080 Nil!60180)) (tail!10179 Nil!60180)))))

(assert (= (and d!1675621 c!893165) b!5181948))

(assert (= (and d!1675621 (not c!893165)) b!5181949))

(declare-fun m!6242150 () Bool)

(assert (=> d!1675621 m!6242150))

(assert (=> b!5181948 m!6242104))

(declare-fun m!6242152 () Bool)

(assert (=> b!5181948 m!6242152))

(declare-fun m!6242154 () Bool)

(assert (=> b!5181949 m!6242154))

(assert (=> b!5181949 m!6242104))

(assert (=> b!5181949 m!6242154))

(declare-fun m!6242156 () Bool)

(assert (=> b!5181949 m!6242156))

(declare-fun m!6242158 () Bool)

(assert (=> b!5181949 m!6242158))

(assert (=> b!5181949 m!6242156))

(assert (=> b!5181949 m!6242158))

(declare-fun m!6242160 () Bool)

(assert (=> b!5181949 m!6242160))

(assert (=> b!5181922 d!1675621))

(declare-fun d!1675623 () Bool)

(declare-fun c!893166 () Bool)

(assert (=> d!1675623 (= c!893166 (isEmpty!32222 Nil!60180))))

(declare-fun e!3228564 () Bool)

(assert (=> d!1675623 (= (matchZipper!990 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) Nil!60180) e!3228564)))

(declare-fun b!5181950 () Bool)

(assert (=> b!5181950 (= e!3228564 (nullableZipper!1200 (derivationZipper!285 lt!2136010 (t!373457 input!5922))))))

(declare-fun b!5181951 () Bool)

(assert (=> b!5181951 (= e!3228564 (matchZipper!990 (derivationStepZipper!1008 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) (head!11080 Nil!60180)) (tail!10179 Nil!60180)))))

(assert (= (and d!1675623 c!893166) b!5181950))

(assert (= (and d!1675623 (not c!893166)) b!5181951))

(assert (=> d!1675623 m!6242150))

(assert (=> b!5181950 m!6242100))

(declare-fun m!6242162 () Bool)

(assert (=> b!5181950 m!6242162))

(assert (=> b!5181951 m!6242154))

(assert (=> b!5181951 m!6242100))

(assert (=> b!5181951 m!6242154))

(declare-fun m!6242164 () Bool)

(assert (=> b!5181951 m!6242164))

(assert (=> b!5181951 m!6242158))

(assert (=> b!5181951 m!6242164))

(assert (=> b!5181951 m!6242158))

(declare-fun m!6242166 () Bool)

(assert (=> b!5181951 m!6242166))

(assert (=> b!5181922 d!1675623))

(declare-fun d!1675625 () Bool)

(assert (=> d!1675625 true))

(declare-fun lambda!259029 () Int)

(declare-fun flatMap!465 ((Set Context!8092) Int) (Set Context!8092))

(assert (=> d!1675625 (= (derivationStepZipper!1008 z!4803 (h!66628 input!5922)) (flatMap!465 z!4803 lambda!259029))))

(declare-fun bs!1207946 () Bool)

(assert (= bs!1207946 d!1675625))

(declare-fun m!6242168 () Bool)

(assert (=> bs!1207946 m!6242168))

(assert (=> b!5181922 d!1675625))

(declare-fun d!1675627 () Bool)

(assert (=> d!1675627 (= (matchZipper!990 lt!2136010 (t!373457 input!5922)) (matchZipper!990 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) Nil!60180))))

(declare-fun lt!2136022 () Unit!152186)

(declare-fun choose!38515 ((Set Context!8092) List!60304) Unit!152186)

(assert (=> d!1675627 (= lt!2136022 (choose!38515 lt!2136010 (t!373457 input!5922)))))

(assert (=> d!1675627 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!49 lt!2136010 (t!373457 input!5922)) lt!2136022)))

(declare-fun bs!1207947 () Bool)

(assert (= bs!1207947 d!1675627))

(assert (=> bs!1207947 m!6242096))

(assert (=> bs!1207947 m!6242100))

(assert (=> bs!1207947 m!6242100))

(assert (=> bs!1207947 m!6242102))

(declare-fun m!6242170 () Bool)

(assert (=> bs!1207947 m!6242170))

(assert (=> b!5181922 d!1675627))

(declare-fun d!1675629 () Bool)

(declare-fun c!893169 () Bool)

(assert (=> d!1675629 (= c!893169 (isEmpty!32222 (t!373457 input!5922)))))

(declare-fun e!3228565 () Bool)

(assert (=> d!1675629 (= (matchZipper!990 lt!2136010 (t!373457 input!5922)) e!3228565)))

(declare-fun b!5181954 () Bool)

(assert (=> b!5181954 (= e!3228565 (nullableZipper!1200 lt!2136010))))

(declare-fun b!5181955 () Bool)

(assert (=> b!5181955 (= e!3228565 (matchZipper!990 (derivationStepZipper!1008 lt!2136010 (head!11080 (t!373457 input!5922))) (tail!10179 (t!373457 input!5922))))))

(assert (= (and d!1675629 c!893169) b!5181954))

(assert (= (and d!1675629 (not c!893169)) b!5181955))

(declare-fun m!6242172 () Bool)

(assert (=> d!1675629 m!6242172))

(declare-fun m!6242174 () Bool)

(assert (=> b!5181954 m!6242174))

(declare-fun m!6242176 () Bool)

(assert (=> b!5181955 m!6242176))

(assert (=> b!5181955 m!6242176))

(declare-fun m!6242178 () Bool)

(assert (=> b!5181955 m!6242178))

(declare-fun m!6242180 () Bool)

(assert (=> b!5181955 m!6242180))

(assert (=> b!5181955 m!6242178))

(assert (=> b!5181955 m!6242180))

(declare-fun m!6242182 () Bool)

(assert (=> b!5181955 m!6242182))

(assert (=> b!5181922 d!1675629))

(declare-fun d!1675631 () Bool)

(declare-fun c!893170 () Bool)

(assert (=> d!1675631 (= c!893170 (isEmpty!32222 input!5922))))

(declare-fun e!3228566 () Bool)

(assert (=> d!1675631 (= (matchZipper!990 z!4803 input!5922) e!3228566)))

(declare-fun b!5181956 () Bool)

(assert (=> b!5181956 (= e!3228566 (nullableZipper!1200 z!4803))))

(declare-fun b!5181957 () Bool)

(assert (=> b!5181957 (= e!3228566 (matchZipper!990 (derivationStepZipper!1008 z!4803 (head!11080 input!5922)) (tail!10179 input!5922)))))

(assert (= (and d!1675631 c!893170) b!5181956))

(assert (= (and d!1675631 (not c!893170)) b!5181957))

(declare-fun m!6242184 () Bool)

(assert (=> d!1675631 m!6242184))

(declare-fun m!6242186 () Bool)

(assert (=> b!5181956 m!6242186))

(declare-fun m!6242188 () Bool)

(assert (=> b!5181957 m!6242188))

(assert (=> b!5181957 m!6242188))

(declare-fun m!6242190 () Bool)

(assert (=> b!5181957 m!6242190))

(declare-fun m!6242192 () Bool)

(assert (=> b!5181957 m!6242192))

(assert (=> b!5181957 m!6242190))

(assert (=> b!5181957 m!6242192))

(declare-fun m!6242194 () Bool)

(assert (=> b!5181957 m!6242194))

(assert (=> b!5181922 d!1675631))

(declare-fun d!1675633 () Bool)

(declare-fun c!893173 () Bool)

(assert (=> d!1675633 (= c!893173 (is-Cons!60180 (t!373457 input!5922)))))

(declare-fun e!3228569 () (Set Context!8092))

(assert (=> d!1675633 (= (derivationZipper!285 lt!2136010 (t!373457 input!5922)) e!3228569)))

(declare-fun b!5181962 () Bool)

(assert (=> b!5181962 (= e!3228569 (derivationZipper!285 (derivationStepZipper!1008 lt!2136010 (h!66628 (t!373457 input!5922))) (t!373457 (t!373457 input!5922))))))

(declare-fun b!5181963 () Bool)

(assert (=> b!5181963 (= e!3228569 lt!2136010)))

(assert (= (and d!1675633 c!893173) b!5181962))

(assert (= (and d!1675633 (not c!893173)) b!5181963))

(declare-fun m!6242196 () Bool)

(assert (=> b!5181962 m!6242196))

(assert (=> b!5181962 m!6242196))

(declare-fun m!6242198 () Bool)

(assert (=> b!5181962 m!6242198))

(assert (=> b!5181922 d!1675633))

(declare-fun d!1675635 () Bool)

(declare-fun c!893174 () Bool)

(assert (=> d!1675635 (= c!893174 (is-Cons!60180 input!5922))))

(declare-fun e!3228570 () (Set Context!8092))

(assert (=> d!1675635 (= (derivationZipper!285 z!4803 input!5922) e!3228570)))

(declare-fun b!5181964 () Bool)

(assert (=> b!5181964 (= e!3228570 (derivationZipper!285 (derivationStepZipper!1008 z!4803 (h!66628 input!5922)) (t!373457 input!5922)))))

(declare-fun b!5181965 () Bool)

(assert (=> b!5181965 (= e!3228570 z!4803)))

(assert (= (and d!1675635 c!893174) b!5181964))

(assert (= (and d!1675635 (not c!893174)) b!5181965))

(assert (=> b!5181964 m!6242098))

(assert (=> b!5181964 m!6242098))

(declare-fun m!6242200 () Bool)

(assert (=> b!5181964 m!6242200))

(assert (=> b!5181922 d!1675635))

(declare-fun condSetEmpty!32433 () Bool)

(assert (=> setNonEmpty!32427 (= condSetEmpty!32433 (= setRest!32427 (as set.empty (Set Context!8092))))))

(declare-fun setRes!32433 () Bool)

(assert (=> setNonEmpty!32427 (= tp!1453166 setRes!32433)))

(declare-fun setIsEmpty!32433 () Bool)

(assert (=> setIsEmpty!32433 setRes!32433))

(declare-fun setElem!32433 () Context!8092)

(declare-fun tp!1453183 () Bool)

(declare-fun setNonEmpty!32433 () Bool)

(declare-fun e!3228573 () Bool)

(assert (=> setNonEmpty!32433 (= setRes!32433 (and tp!1453183 (inv!79903 setElem!32433) e!3228573))))

(declare-fun setRest!32433 () (Set Context!8092))

(assert (=> setNonEmpty!32433 (= setRest!32427 (set.union (set.insert setElem!32433 (as set.empty (Set Context!8092))) setRest!32433))))

(declare-fun b!5181970 () Bool)

(declare-fun tp!1453182 () Bool)

(assert (=> b!5181970 (= e!3228573 tp!1453182)))

(assert (= (and setNonEmpty!32427 condSetEmpty!32433) setIsEmpty!32433))

(assert (= (and setNonEmpty!32427 (not condSetEmpty!32433)) setNonEmpty!32433))

(assert (= setNonEmpty!32433 b!5181970))

(declare-fun m!6242202 () Bool)

(assert (=> setNonEmpty!32433 m!6242202))

(declare-fun b!5181975 () Bool)

(declare-fun e!3228576 () Bool)

(declare-fun tp!1453188 () Bool)

(declare-fun tp!1453189 () Bool)

(assert (=> b!5181975 (= e!3228576 (and tp!1453188 tp!1453189))))

(assert (=> b!5181920 (= tp!1453167 e!3228576)))

(assert (= (and b!5181920 (is-Cons!60179 (exprs!4546 setElem!32427))) b!5181975))

(declare-fun b!5181980 () Bool)

(declare-fun e!3228579 () Bool)

(declare-fun tp!1453192 () Bool)

(assert (=> b!5181980 (= e!3228579 (and tp_is_empty!38577 tp!1453192))))

(assert (=> b!5181921 (= tp!1453168 e!3228579)))

(assert (= (and b!5181921 (is-Cons!60180 (t!373457 input!5922))) b!5181980))

(push 1)

(assert (not d!1675623))

(assert (not b!5181955))

(assert tp_is_empty!38577)

(assert (not d!1675625))

(assert (not d!1675611))

(assert (not b!5181970))

(assert (not b!5181975))

(assert (not d!1675627))

(assert (not b!5181950))

(assert (not b!5181962))

(assert (not b!5181980))

(assert (not setNonEmpty!32433))

(assert (not b!5181948))

(assert (not d!1675621))

(assert (not b!5181957))

(assert (not b!5181956))

(assert (not d!1675631))

(assert (not b!5181949))

(assert (not b!5181951))

(assert (not b!5181964))

(assert (not b!5181954))

(assert (not d!1675629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675647 () Bool)

(declare-fun lambda!259038 () Int)

(declare-fun exists!1951 ((Set Context!8092) Int) Bool)

(assert (=> d!1675647 (= (nullableZipper!1200 (derivationZipper!285 lt!2136010 (t!373457 input!5922))) (exists!1951 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) lambda!259038))))

(declare-fun bs!1207950 () Bool)

(assert (= bs!1207950 d!1675647))

(assert (=> bs!1207950 m!6242100))

(declare-fun m!6242244 () Bool)

(assert (=> bs!1207950 m!6242244))

(assert (=> b!5181950 d!1675647))

(declare-fun d!1675649 () Bool)

(declare-fun c!893181 () Bool)

(assert (=> d!1675649 (= c!893181 (isEmpty!32222 (tail!10179 (t!373457 input!5922))))))

(declare-fun e!3228593 () Bool)

(assert (=> d!1675649 (= (matchZipper!990 (derivationStepZipper!1008 lt!2136010 (head!11080 (t!373457 input!5922))) (tail!10179 (t!373457 input!5922))) e!3228593)))

(declare-fun b!5182006 () Bool)

(assert (=> b!5182006 (= e!3228593 (nullableZipper!1200 (derivationStepZipper!1008 lt!2136010 (head!11080 (t!373457 input!5922)))))))

(declare-fun b!5182007 () Bool)

(assert (=> b!5182007 (= e!3228593 (matchZipper!990 (derivationStepZipper!1008 (derivationStepZipper!1008 lt!2136010 (head!11080 (t!373457 input!5922))) (head!11080 (tail!10179 (t!373457 input!5922)))) (tail!10179 (tail!10179 (t!373457 input!5922)))))))

(assert (= (and d!1675649 c!893181) b!5182006))

(assert (= (and d!1675649 (not c!893181)) b!5182007))

(assert (=> d!1675649 m!6242180))

(declare-fun m!6242246 () Bool)

(assert (=> d!1675649 m!6242246))

(assert (=> b!5182006 m!6242178))

(declare-fun m!6242248 () Bool)

(assert (=> b!5182006 m!6242248))

(assert (=> b!5182007 m!6242180))

(declare-fun m!6242250 () Bool)

(assert (=> b!5182007 m!6242250))

(assert (=> b!5182007 m!6242178))

(assert (=> b!5182007 m!6242250))

(declare-fun m!6242252 () Bool)

(assert (=> b!5182007 m!6242252))

(assert (=> b!5182007 m!6242180))

(declare-fun m!6242254 () Bool)

(assert (=> b!5182007 m!6242254))

(assert (=> b!5182007 m!6242252))

(assert (=> b!5182007 m!6242254))

(declare-fun m!6242256 () Bool)

(assert (=> b!5182007 m!6242256))

(assert (=> b!5181955 d!1675649))

(declare-fun bs!1207951 () Bool)

(declare-fun d!1675651 () Bool)

(assert (= bs!1207951 (and d!1675651 d!1675625)))

(declare-fun lambda!259039 () Int)

(assert (=> bs!1207951 (= (= (head!11080 (t!373457 input!5922)) (h!66628 input!5922)) (= lambda!259039 lambda!259029))))

(assert (=> d!1675651 true))

(assert (=> d!1675651 (= (derivationStepZipper!1008 lt!2136010 (head!11080 (t!373457 input!5922))) (flatMap!465 lt!2136010 lambda!259039))))

(declare-fun bs!1207952 () Bool)

(assert (= bs!1207952 d!1675651))

(declare-fun m!6242258 () Bool)

(assert (=> bs!1207952 m!6242258))

(assert (=> b!5181955 d!1675651))

(declare-fun d!1675653 () Bool)

(assert (=> d!1675653 (= (head!11080 (t!373457 input!5922)) (h!66628 (t!373457 input!5922)))))

(assert (=> b!5181955 d!1675653))

(declare-fun d!1675655 () Bool)

(assert (=> d!1675655 (= (tail!10179 (t!373457 input!5922)) (t!373457 (t!373457 input!5922)))))

(assert (=> b!5181955 d!1675655))

(declare-fun d!1675657 () Bool)

(assert (not d!1675657))

(assert (=> b!5181951 d!1675657))

(declare-fun d!1675659 () Bool)

(assert (not d!1675659))

(assert (=> b!5181951 d!1675659))

(declare-fun d!1675661 () Bool)

(assert (not d!1675661))

(assert (=> b!5181951 d!1675661))

(declare-fun d!1675663 () Bool)

(assert (not d!1675663))

(assert (=> b!5181951 d!1675663))

(declare-fun d!1675665 () Bool)

(assert (=> d!1675665 (= (isEmpty!32222 Nil!60180) true)))

(assert (=> d!1675621 d!1675665))

(declare-fun bs!1207953 () Bool)

(declare-fun d!1675667 () Bool)

(assert (= bs!1207953 (and d!1675667 d!1675647)))

(declare-fun lambda!259040 () Int)

(assert (=> bs!1207953 (= lambda!259040 lambda!259038)))

(assert (=> d!1675667 (= (nullableZipper!1200 lt!2136010) (exists!1951 lt!2136010 lambda!259040))))

(declare-fun bs!1207954 () Bool)

(assert (= bs!1207954 d!1675667))

(declare-fun m!6242260 () Bool)

(assert (=> bs!1207954 m!6242260))

(assert (=> b!5181954 d!1675667))

(declare-fun bs!1207955 () Bool)

(declare-fun d!1675669 () Bool)

(assert (= bs!1207955 (and d!1675669 d!1675611)))

(declare-fun lambda!259041 () Int)

(assert (=> bs!1207955 (= lambda!259041 lambda!259026)))

(assert (=> d!1675669 (= (inv!79903 setElem!32433) (forall!14177 (exprs!4546 setElem!32433) lambda!259041))))

(declare-fun bs!1207956 () Bool)

(assert (= bs!1207956 d!1675669))

(declare-fun m!6242262 () Bool)

(assert (=> bs!1207956 m!6242262))

(assert (=> setNonEmpty!32433 d!1675669))

(declare-fun bs!1207957 () Bool)

(declare-fun d!1675671 () Bool)

(assert (= bs!1207957 (and d!1675671 d!1675647)))

(declare-fun lambda!259042 () Int)

(assert (=> bs!1207957 (= lambda!259042 lambda!259038)))

(declare-fun bs!1207958 () Bool)

(assert (= bs!1207958 (and d!1675671 d!1675667)))

(assert (=> bs!1207958 (= lambda!259042 lambda!259040)))

(assert (=> d!1675671 (= (nullableZipper!1200 (derivationZipper!285 z!4803 input!5922)) (exists!1951 (derivationZipper!285 z!4803 input!5922) lambda!259042))))

(declare-fun bs!1207959 () Bool)

(assert (= bs!1207959 d!1675671))

(assert (=> bs!1207959 m!6242104))

(declare-fun m!6242264 () Bool)

(assert (=> bs!1207959 m!6242264))

(assert (=> b!5181948 d!1675671))

(assert (=> d!1675627 d!1675629))

(assert (=> d!1675627 d!1675623))

(assert (=> d!1675627 d!1675633))

(declare-fun d!1675673 () Bool)

(assert (=> d!1675673 (= (matchZipper!990 lt!2136010 (t!373457 input!5922)) (matchZipper!990 (derivationZipper!285 lt!2136010 (t!373457 input!5922)) Nil!60180))))

(assert (=> d!1675673 true))

(declare-fun _$82!140 () Unit!152186)

(assert (=> d!1675673 (= (choose!38515 lt!2136010 (t!373457 input!5922)) _$82!140)))

(declare-fun bs!1207960 () Bool)

(assert (= bs!1207960 d!1675673))

(assert (=> bs!1207960 m!6242096))

(assert (=> bs!1207960 m!6242100))

(assert (=> bs!1207960 m!6242100))

(assert (=> bs!1207960 m!6242102))

(assert (=> d!1675627 d!1675673))

(declare-fun d!1675675 () Bool)

(assert (=> d!1675675 (= (isEmpty!32222 input!5922) (is-Nil!60180 input!5922))))

(assert (=> d!1675631 d!1675675))

(declare-fun d!1675677 () Bool)

(declare-fun c!893182 () Bool)

(assert (=> d!1675677 (= c!893182 (is-Cons!60180 (t!373457 input!5922)))))

(declare-fun e!3228594 () (Set Context!8092))

(assert (=> d!1675677 (= (derivationZipper!285 (derivationStepZipper!1008 z!4803 (h!66628 input!5922)) (t!373457 input!5922)) e!3228594)))

(declare-fun b!5182008 () Bool)

(assert (=> b!5182008 (= e!3228594 (derivationZipper!285 (derivationStepZipper!1008 (derivationStepZipper!1008 z!4803 (h!66628 input!5922)) (h!66628 (t!373457 input!5922))) (t!373457 (t!373457 input!5922))))))

(declare-fun b!5182009 () Bool)

(assert (=> b!5182009 (= e!3228594 (derivationStepZipper!1008 z!4803 (h!66628 input!5922)))))

(assert (= (and d!1675677 c!893182) b!5182008))

(assert (= (and d!1675677 (not c!893182)) b!5182009))

(assert (=> b!5182008 m!6242098))

(declare-fun m!6242266 () Bool)

(assert (=> b!5182008 m!6242266))

(assert (=> b!5182008 m!6242266))

(declare-fun m!6242268 () Bool)

(assert (=> b!5182008 m!6242268))

(assert (=> b!5181964 d!1675677))

(assert (=> b!5181964 d!1675625))

(declare-fun d!1675679 () Bool)

(assert (not d!1675679))

(assert (=> b!5181949 d!1675679))

(declare-fun d!1675681 () Bool)

(assert (not d!1675681))

(assert (=> b!5181949 d!1675681))

(assert (=> b!5181949 d!1675661))

(assert (=> b!5181949 d!1675663))

(declare-fun d!1675683 () Bool)

(declare-fun c!893183 () Bool)

(assert (=> d!1675683 (= c!893183 (is-Cons!60180 (t!373457 (t!373457 input!5922))))))

(declare-fun e!3228595 () (Set Context!8092))

(assert (=> d!1675683 (= (derivationZipper!285 (derivationStepZipper!1008 lt!2136010 (h!66628 (t!373457 input!5922))) (t!373457 (t!373457 input!5922))) e!3228595)))

(declare-fun b!5182010 () Bool)

(assert (=> b!5182010 (= e!3228595 (derivationZipper!285 (derivationStepZipper!1008 (derivationStepZipper!1008 lt!2136010 (h!66628 (t!373457 input!5922))) (h!66628 (t!373457 (t!373457 input!5922)))) (t!373457 (t!373457 (t!373457 input!5922)))))))

(declare-fun b!5182011 () Bool)

(assert (=> b!5182011 (= e!3228595 (derivationStepZipper!1008 lt!2136010 (h!66628 (t!373457 input!5922))))))

(assert (= (and d!1675683 c!893183) b!5182010))

(assert (= (and d!1675683 (not c!893183)) b!5182011))

(assert (=> b!5182010 m!6242196))

(declare-fun m!6242270 () Bool)

(assert (=> b!5182010 m!6242270))

(assert (=> b!5182010 m!6242270))

(declare-fun m!6242272 () Bool)

(assert (=> b!5182010 m!6242272))

(assert (=> b!5181962 d!1675683))

(declare-fun bs!1207961 () Bool)

(declare-fun d!1675685 () Bool)

(assert (= bs!1207961 (and d!1675685 d!1675625)))

(declare-fun lambda!259043 () Int)

(assert (=> bs!1207961 (= (= (h!66628 (t!373457 input!5922)) (h!66628 input!5922)) (= lambda!259043 lambda!259029))))

(declare-fun bs!1207962 () Bool)

(assert (= bs!1207962 (and d!1675685 d!1675651)))

(assert (=> bs!1207962 (= (= (h!66628 (t!373457 input!5922)) (head!11080 (t!373457 input!5922))) (= lambda!259043 lambda!259039))))

(assert (=> d!1675685 true))

(assert (=> d!1675685 (= (derivationStepZipper!1008 lt!2136010 (h!66628 (t!373457 input!5922))) (flatMap!465 lt!2136010 lambda!259043))))

(declare-fun bs!1207963 () Bool)

(assert (= bs!1207963 d!1675685))

(declare-fun m!6242274 () Bool)

(assert (=> bs!1207963 m!6242274))

(assert (=> b!5181962 d!1675685))

(declare-fun d!1675687 () Bool)

(declare-fun res!2201409 () Bool)

(declare-fun e!3228600 () Bool)

(assert (=> d!1675687 (=> res!2201409 e!3228600)))

(assert (=> d!1675687 (= res!2201409 (is-Nil!60179 (exprs!4546 setElem!32427)))))

(assert (=> d!1675687 (= (forall!14177 (exprs!4546 setElem!32427) lambda!259026) e!3228600)))

(declare-fun b!5182016 () Bool)

(declare-fun e!3228601 () Bool)

(assert (=> b!5182016 (= e!3228600 e!3228601)))

(declare-fun res!2201410 () Bool)

(assert (=> b!5182016 (=> (not res!2201410) (not e!3228601))))

(declare-fun dynLambda!23892 (Int Regex!14662) Bool)

(assert (=> b!5182016 (= res!2201410 (dynLambda!23892 lambda!259026 (h!66627 (exprs!4546 setElem!32427))))))

(declare-fun b!5182017 () Bool)

(assert (=> b!5182017 (= e!3228601 (forall!14177 (t!373456 (exprs!4546 setElem!32427)) lambda!259026))))

(assert (= (and d!1675687 (not res!2201409)) b!5182016))

(assert (= (and b!5182016 res!2201410) b!5182017))

(declare-fun b_lambda!201121 () Bool)

(assert (=> (not b_lambda!201121) (not b!5182016)))

(declare-fun m!6242276 () Bool)

(assert (=> b!5182016 m!6242276))

(declare-fun m!6242278 () Bool)

(assert (=> b!5182017 m!6242278))

(assert (=> d!1675611 d!1675687))

(declare-fun d!1675689 () Bool)

(declare-fun c!893184 () Bool)

(assert (=> d!1675689 (= c!893184 (isEmpty!32222 (tail!10179 input!5922)))))

(declare-fun e!3228602 () Bool)

(assert (=> d!1675689 (= (matchZipper!990 (derivationStepZipper!1008 z!4803 (head!11080 input!5922)) (tail!10179 input!5922)) e!3228602)))

(declare-fun b!5182018 () Bool)

(assert (=> b!5182018 (= e!3228602 (nullableZipper!1200 (derivationStepZipper!1008 z!4803 (head!11080 input!5922))))))

(declare-fun b!5182019 () Bool)

(assert (=> b!5182019 (= e!3228602 (matchZipper!990 (derivationStepZipper!1008 (derivationStepZipper!1008 z!4803 (head!11080 input!5922)) (head!11080 (tail!10179 input!5922))) (tail!10179 (tail!10179 input!5922))))))

(assert (= (and d!1675689 c!893184) b!5182018))

(assert (= (and d!1675689 (not c!893184)) b!5182019))

(assert (=> d!1675689 m!6242192))

(declare-fun m!6242280 () Bool)

(assert (=> d!1675689 m!6242280))

(assert (=> b!5182018 m!6242190))

(declare-fun m!6242282 () Bool)

(assert (=> b!5182018 m!6242282))

(assert (=> b!5182019 m!6242192))

(declare-fun m!6242284 () Bool)

(assert (=> b!5182019 m!6242284))

(assert (=> b!5182019 m!6242190))

(assert (=> b!5182019 m!6242284))

(declare-fun m!6242286 () Bool)

(assert (=> b!5182019 m!6242286))

(assert (=> b!5182019 m!6242192))

(declare-fun m!6242288 () Bool)

(assert (=> b!5182019 m!6242288))

(assert (=> b!5182019 m!6242286))

(assert (=> b!5182019 m!6242288))

(declare-fun m!6242290 () Bool)

(assert (=> b!5182019 m!6242290))

(assert (=> b!5181957 d!1675689))

(declare-fun bs!1207964 () Bool)

(declare-fun d!1675691 () Bool)

(assert (= bs!1207964 (and d!1675691 d!1675625)))

(declare-fun lambda!259044 () Int)

(assert (=> bs!1207964 (= (= (head!11080 input!5922) (h!66628 input!5922)) (= lambda!259044 lambda!259029))))

(declare-fun bs!1207965 () Bool)

(assert (= bs!1207965 (and d!1675691 d!1675651)))

(assert (=> bs!1207965 (= (= (head!11080 input!5922) (head!11080 (t!373457 input!5922))) (= lambda!259044 lambda!259039))))

(declare-fun bs!1207966 () Bool)

(assert (= bs!1207966 (and d!1675691 d!1675685)))

(assert (=> bs!1207966 (= (= (head!11080 input!5922) (h!66628 (t!373457 input!5922))) (= lambda!259044 lambda!259043))))

(assert (=> d!1675691 true))

(assert (=> d!1675691 (= (derivationStepZipper!1008 z!4803 (head!11080 input!5922)) (flatMap!465 z!4803 lambda!259044))))

(declare-fun bs!1207967 () Bool)

(assert (= bs!1207967 d!1675691))

(declare-fun m!6242292 () Bool)

(assert (=> bs!1207967 m!6242292))

(assert (=> b!5181957 d!1675691))

(declare-fun d!1675693 () Bool)

(assert (=> d!1675693 (= (head!11080 input!5922) (h!66628 input!5922))))

(assert (=> b!5181957 d!1675693))

(declare-fun d!1675695 () Bool)

(assert (=> d!1675695 (= (tail!10179 input!5922) (t!373457 input!5922))))

(assert (=> b!5181957 d!1675695))

(declare-fun d!1675697 () Bool)

(declare-fun choose!38517 ((Set Context!8092) Int) (Set Context!8092))

(assert (=> d!1675697 (= (flatMap!465 z!4803 lambda!259029) (choose!38517 z!4803 lambda!259029))))

(declare-fun bs!1207968 () Bool)

(assert (= bs!1207968 d!1675697))

(declare-fun m!6242294 () Bool)

(assert (=> bs!1207968 m!6242294))

(assert (=> d!1675625 d!1675697))

(declare-fun bs!1207969 () Bool)

(declare-fun d!1675699 () Bool)

(assert (= bs!1207969 (and d!1675699 d!1675647)))

(declare-fun lambda!259045 () Int)

(assert (=> bs!1207969 (= lambda!259045 lambda!259038)))

(declare-fun bs!1207970 () Bool)

(assert (= bs!1207970 (and d!1675699 d!1675667)))

(assert (=> bs!1207970 (= lambda!259045 lambda!259040)))

(declare-fun bs!1207971 () Bool)

(assert (= bs!1207971 (and d!1675699 d!1675671)))

(assert (=> bs!1207971 (= lambda!259045 lambda!259042)))

(assert (=> d!1675699 (= (nullableZipper!1200 z!4803) (exists!1951 z!4803 lambda!259045))))

(declare-fun bs!1207972 () Bool)

(assert (= bs!1207972 d!1675699))

(declare-fun m!6242296 () Bool)

(assert (=> bs!1207972 m!6242296))

(assert (=> b!5181956 d!1675699))

(declare-fun d!1675701 () Bool)

(assert (=> d!1675701 (= (isEmpty!32222 (t!373457 input!5922)) (is-Nil!60180 (t!373457 input!5922)))))

(assert (=> d!1675629 d!1675701))

(assert (=> d!1675623 d!1675665))

(declare-fun b!5182020 () Bool)

(declare-fun e!3228603 () Bool)

(declare-fun tp!1453208 () Bool)

(declare-fun tp!1453209 () Bool)

(assert (=> b!5182020 (= e!3228603 (and tp!1453208 tp!1453209))))

(assert (=> b!5181970 (= tp!1453182 e!3228603)))

(assert (= (and b!5181970 (is-Cons!60179 (exprs!4546 setElem!32433))) b!5182020))

(declare-fun e!3228606 () Bool)

(assert (=> b!5181975 (= tp!1453188 e!3228606)))

(declare-fun b!5182032 () Bool)

(declare-fun tp!1453222 () Bool)

(declare-fun tp!1453220 () Bool)

(assert (=> b!5182032 (= e!3228606 (and tp!1453222 tp!1453220))))

(declare-fun b!5182033 () Bool)

(declare-fun tp!1453224 () Bool)

(assert (=> b!5182033 (= e!3228606 tp!1453224)))

(declare-fun b!5182031 () Bool)

(assert (=> b!5182031 (= e!3228606 tp_is_empty!38577)))

(declare-fun b!5182034 () Bool)

(declare-fun tp!1453223 () Bool)

(declare-fun tp!1453221 () Bool)

(assert (=> b!5182034 (= e!3228606 (and tp!1453223 tp!1453221))))

(assert (= (and b!5181975 (is-ElementMatch!14662 (h!66627 (exprs!4546 setElem!32427)))) b!5182031))

(assert (= (and b!5181975 (is-Concat!23507 (h!66627 (exprs!4546 setElem!32427)))) b!5182032))

(assert (= (and b!5181975 (is-Star!14662 (h!66627 (exprs!4546 setElem!32427)))) b!5182033))

(assert (= (and b!5181975 (is-Union!14662 (h!66627 (exprs!4546 setElem!32427)))) b!5182034))

(declare-fun b!5182035 () Bool)

(declare-fun e!3228607 () Bool)

(declare-fun tp!1453225 () Bool)

(declare-fun tp!1453226 () Bool)

(assert (=> b!5182035 (= e!3228607 (and tp!1453225 tp!1453226))))

(assert (=> b!5181975 (= tp!1453189 e!3228607)))

(assert (= (and b!5181975 (is-Cons!60179 (t!373456 (exprs!4546 setElem!32427)))) b!5182035))

(declare-fun condSetEmpty!32437 () Bool)

(assert (=> setNonEmpty!32433 (= condSetEmpty!32437 (= setRest!32433 (as set.empty (Set Context!8092))))))

(declare-fun setRes!32437 () Bool)

(assert (=> setNonEmpty!32433 (= tp!1453183 setRes!32437)))

(declare-fun setIsEmpty!32437 () Bool)

(assert (=> setIsEmpty!32437 setRes!32437))

(declare-fun e!3228608 () Bool)

(declare-fun setNonEmpty!32437 () Bool)

(declare-fun setElem!32437 () Context!8092)

(declare-fun tp!1453228 () Bool)

(assert (=> setNonEmpty!32437 (= setRes!32437 (and tp!1453228 (inv!79903 setElem!32437) e!3228608))))

(declare-fun setRest!32437 () (Set Context!8092))

(assert (=> setNonEmpty!32437 (= setRest!32433 (set.union (set.insert setElem!32437 (as set.empty (Set Context!8092))) setRest!32437))))

(declare-fun b!5182036 () Bool)

(declare-fun tp!1453227 () Bool)

(assert (=> b!5182036 (= e!3228608 tp!1453227)))

(assert (= (and setNonEmpty!32433 condSetEmpty!32437) setIsEmpty!32437))

(assert (= (and setNonEmpty!32433 (not condSetEmpty!32437)) setNonEmpty!32437))

(assert (= setNonEmpty!32437 b!5182036))

(declare-fun m!6242298 () Bool)

(assert (=> setNonEmpty!32437 m!6242298))

(declare-fun b!5182037 () Bool)

(declare-fun e!3228609 () Bool)

(declare-fun tp!1453229 () Bool)

(assert (=> b!5182037 (= e!3228609 (and tp_is_empty!38577 tp!1453229))))

(assert (=> b!5181980 (= tp!1453192 e!3228609)))

(assert (= (and b!5181980 (is-Cons!60180 (t!373457 (t!373457 input!5922)))) b!5182037))

(declare-fun b_lambda!201123 () Bool)

(assert (= b_lambda!201121 (or d!1675611 b_lambda!201123)))

(declare-fun bs!1207973 () Bool)

(declare-fun d!1675703 () Bool)

(assert (= bs!1207973 (and d!1675703 d!1675611)))

(declare-fun validRegex!6413 (Regex!14662) Bool)

(assert (=> bs!1207973 (= (dynLambda!23892 lambda!259026 (h!66627 (exprs!4546 setElem!32427))) (validRegex!6413 (h!66627 (exprs!4546 setElem!32427))))))

(declare-fun m!6242300 () Bool)

(assert (=> bs!1207973 m!6242300))

(assert (=> b!5182016 d!1675703))

(push 1)

(assert (not b!5182035))

(assert (not d!1675647))

(assert (not d!1675669))

(assert (not d!1675667))

(assert (not b_lambda!201123))

(assert (not d!1675691))

(assert (not b!5182036))

(assert (not b!5182032))

(assert (not b!5182020))

(assert (not d!1675689))

(assert (not d!1675673))

(assert (not b!5182018))

(assert (not b!5182008))

(assert (not b!5182033))

(assert (not b!5182037))

(assert (not b!5182010))

(assert (not b!5182007))

(assert (not d!1675699))

(assert (not b!5182034))

(assert tp_is_empty!38577)

(assert (not d!1675671))

(assert (not d!1675685))

(assert (not b!5182019))

(assert (not d!1675649))

(assert (not b!5182017))

(assert (not setNonEmpty!32437))

(assert (not d!1675651))

(assert (not bs!1207973))

(assert (not d!1675697))

(assert (not b!5182006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

