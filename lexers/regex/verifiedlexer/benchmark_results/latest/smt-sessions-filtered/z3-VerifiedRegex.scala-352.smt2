; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11262 () Bool)

(assert start!11262)

(declare-fun b_free!3409 () Bool)

(declare-fun b_next!3409 () Bool)

(assert (=> start!11262 (= b_free!3409 (not b_next!3409))))

(declare-fun tp!59667 () Bool)

(declare-fun b_and!5491 () Bool)

(assert (=> start!11262 (= tp!59667 b_and!5491)))

(declare-fun b_free!3411 () Bool)

(declare-fun b_next!3411 () Bool)

(assert (=> start!11262 (= b_free!3411 (not b_next!3411))))

(declare-fun tp!59669 () Bool)

(declare-fun b_and!5493 () Bool)

(assert (=> start!11262 (= tp!59669 b_and!5493)))

(assert (=> start!11262 true))

(declare-fun order!1075 () Int)

(declare-fun lambda!2660 () Int)

(declare-fun order!1073 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!707 (Int Int) Int)

(declare-fun dynLambda!708 (Int Int) Int)

(assert (=> start!11262 (< (dynLambda!707 order!1073 f!927) (dynLambda!708 order!1075 lambda!2660))))

(assert (=> start!11262 true))

(declare-fun g!9 () Int)

(assert (=> start!11262 (< (dynLambda!707 order!1073 g!9) (dynLambda!708 order!1075 lambda!2660))))

(declare-fun b!110150 () Bool)

(declare-fun res!53179 () Bool)

(declare-fun e!61457 () Bool)

(assert (=> b!110150 (=> res!53179 e!61457)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!307 0))(
  ( (A!308 (val!608 Int)) )
))
(declare-fun lt!32121 () (InoxSet A!307))

(declare-fun forall!321 ((InoxSet A!307) Int) Bool)

(assert (=> b!110150 (= res!53179 (not (forall!321 lt!32121 lambda!2660)))))

(declare-fun b!110151 () Bool)

(declare-fun e!61459 () Bool)

(assert (=> b!110151 (= e!61459 e!61457)))

(declare-fun res!53178 () Bool)

(assert (=> b!110151 (=> res!53178 e!61457)))

(declare-datatypes ((List!1777 0))(
  ( (Nil!1771) (Cons!1771 (h!7168 A!307) (t!22124 List!1777)) )
))
(declare-fun lt!32126 () List!1777)

(declare-datatypes ((B!595 0))(
  ( (B!596 (val!609 Int)) )
))
(declare-fun dynLambda!709 (Int A!307) (InoxSet B!595))

(assert (=> b!110151 (= res!53178 (not (= (dynLambda!709 f!927 (h!7168 lt!32126)) (dynLambda!709 g!9 (h!7168 lt!32126)))))))

(assert (=> b!110151 (forall!321 lt!32121 lambda!2660)))

(declare-datatypes ((Unit!1244 0))(
  ( (Unit!1245) )
))
(declare-fun lt!32122 () Unit!1244)

(declare-fun lemmaForallThenOnContent!34 (List!1777 Int) Unit!1244)

(assert (=> b!110151 (= lt!32122 (lemmaForallThenOnContent!34 (t!22124 lt!32126) lambda!2660))))

(declare-fun b!110152 () Bool)

(declare-fun e!61461 () Bool)

(assert (=> b!110152 (= e!61461 (forall!321 lt!32121 lambda!2660))))

(declare-fun b!110153 () Bool)

(declare-fun e!61455 () Bool)

(declare-fun e!61458 () Bool)

(assert (=> b!110153 (= e!61455 e!61458)))

(declare-fun res!53180 () Bool)

(assert (=> b!110153 (=> (not res!53180) (not e!61458))))

(declare-fun s!1451 () (InoxSet A!307))

(declare-fun lt!32132 () (InoxSet A!307))

(assert (=> b!110153 (= res!53180 (= s!1451 lt!32132))))

(declare-fun lt!32123 () (InoxSet A!307))

(assert (=> b!110153 (= lt!32132 ((_ map or) lt!32123 lt!32121))))

(declare-fun content!195 (List!1777) (InoxSet A!307))

(assert (=> b!110153 (= lt!32121 (content!195 (t!22124 lt!32126)))))

(assert (=> b!110153 (= lt!32123 (store ((as const (Array A!307 Bool)) false) (h!7168 lt!32126) true))))

(declare-fun b!110154 () Bool)

(assert (=> b!110154 (= e!61458 (not e!61459))))

(declare-fun res!53182 () Bool)

(assert (=> b!110154 (=> res!53182 e!61459)))

(declare-fun forall!322 (List!1777 Int) Bool)

(assert (=> b!110154 (= res!53182 (not (forall!322 (t!22124 lt!32126) lambda!2660)))))

(declare-fun flatMap!57 ((InoxSet A!307) Int) (InoxSet B!595))

(assert (=> b!110154 (= ((_ map or) (flatMap!57 lt!32123 g!9) (flatMap!57 lt!32121 g!9)) (flatMap!57 lt!32132 g!9))))

(declare-fun lt!32128 () Unit!1244)

(declare-fun lemmaFlatMapAssociative!40 ((InoxSet A!307) (InoxSet A!307) Int) Unit!1244)

(assert (=> b!110154 (= lt!32128 (lemmaFlatMapAssociative!40 lt!32123 lt!32121 g!9))))

(assert (=> b!110154 (= ((_ map or) (flatMap!57 lt!32123 f!927) (flatMap!57 lt!32121 f!927)) (flatMap!57 lt!32132 f!927))))

(declare-fun lt!32133 () Unit!1244)

(assert (=> b!110154 (= lt!32133 (lemmaFlatMapAssociative!40 lt!32123 lt!32121 f!927))))

(declare-fun b!110155 () Bool)

(declare-fun e!61456 () Bool)

(assert (=> b!110155 (= e!61456 e!61455)))

(declare-fun res!53175 () Bool)

(assert (=> b!110155 (=> (not res!53175) (not e!61455))))

(get-info :version)

(assert (=> b!110155 (= res!53175 ((_ is Cons!1771) lt!32126))))

(declare-fun toList!256 ((InoxSet A!307)) List!1777)

(assert (=> b!110155 (= lt!32126 (toList!256 s!1451))))

(declare-fun setIsEmpty!1632 () Bool)

(declare-fun setRes!1632 () Bool)

(assert (=> setIsEmpty!1632 setRes!1632))

(declare-fun b!110156 () Bool)

(declare-fun e!61460 () Bool)

(assert (=> b!110156 (= e!61460 e!61461)))

(declare-fun res!53181 () Bool)

(assert (=> b!110156 (=> res!53181 e!61461)))

(declare-fun lt!32131 () Int)

(declare-fun lt!32134 () Int)

(declare-fun lt!32125 () Int)

(assert (=> b!110156 (= res!53181 (or (not (= lt!32131 lt!32134)) (>= lt!32134 lt!32125)))))

(assert (=> b!110156 (= lt!32134 lt!32131)))

(declare-fun size!1549 (List!1777) Int)

(assert (=> b!110156 (= lt!32134 (size!1549 (toList!256 lt!32121)))))

(declare-fun lt!32129 () Unit!1244)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!14 (List!1777) Unit!1244)

(assert (=> b!110156 (= lt!32129 (lemmaNoDuplicateThenContentToListSameSize!14 (t!22124 lt!32126)))))

(declare-fun res!53176 () Bool)

(assert (=> start!11262 (=> (not res!53176) (not e!61456))))

(assert (=> start!11262 (= res!53176 (forall!321 s!1451 lambda!2660))))

(assert (=> start!11262 e!61456))

(declare-fun condSetEmpty!1632 () Bool)

(assert (=> start!11262 (= condSetEmpty!1632 (= s!1451 ((as const (Array A!307 Bool)) false)))))

(assert (=> start!11262 setRes!1632))

(assert (=> start!11262 tp!59667))

(assert (=> start!11262 tp!59669))

(declare-fun setNonEmpty!1632 () Bool)

(declare-fun tp!59668 () Bool)

(declare-fun tp_is_empty!913 () Bool)

(assert (=> setNonEmpty!1632 (= setRes!1632 (and tp!59668 tp_is_empty!913))))

(declare-fun setElem!1632 () A!307)

(declare-fun setRest!1632 () (InoxSet A!307))

(assert (=> setNonEmpty!1632 (= s!1451 ((_ map or) (store ((as const (Array A!307 Bool)) false) setElem!1632 true) setRest!1632))))

(declare-fun b!110157 () Bool)

(assert (=> b!110157 (= e!61457 e!61460)))

(declare-fun res!53177 () Bool)

(assert (=> b!110157 (=> res!53177 e!61460)))

(declare-fun lt!32130 () Int)

(assert (=> b!110157 (= res!53177 (not (= lt!32130 lt!32131)))))

(assert (=> b!110157 (= lt!32131 (size!1549 (t!22124 lt!32126)))))

(assert (=> b!110157 (> lt!32125 lt!32130)))

(declare-fun tail!200 (List!1777) List!1777)

(assert (=> b!110157 (= lt!32130 (size!1549 (tail!200 lt!32126)))))

(assert (=> b!110157 (= lt!32125 (size!1549 lt!32126))))

(declare-fun lt!32124 () Unit!1244)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!24 ((InoxSet A!307)) Unit!1244)

(assert (=> b!110157 (= lt!32124 (lemmaToListSizeBiggerThanTailContentSize!24 s!1451))))

(declare-fun lt!32127 () Unit!1244)

(declare-fun forallContained!30 (List!1777 Int A!307) Unit!1244)

(assert (=> b!110157 (= lt!32127 (forallContained!30 lt!32126 lambda!2660 (h!7168 lt!32126)))))

(assert (= (and start!11262 res!53176) b!110155))

(assert (= (and b!110155 res!53175) b!110153))

(assert (= (and b!110153 res!53180) b!110154))

(assert (= (and b!110154 (not res!53182)) b!110151))

(assert (= (and b!110151 (not res!53178)) b!110150))

(assert (= (and b!110150 (not res!53179)) b!110157))

(assert (= (and b!110157 (not res!53177)) b!110156))

(assert (= (and b!110156 (not res!53181)) b!110152))

(assert (= (and start!11262 condSetEmpty!1632) setIsEmpty!1632))

(assert (= (and start!11262 (not condSetEmpty!1632)) setNonEmpty!1632))

(declare-fun b_lambda!1657 () Bool)

(assert (=> (not b_lambda!1657) (not b!110151)))

(declare-fun t!22117 () Bool)

(declare-fun tb!3607 () Bool)

(assert (=> (and start!11262 (= f!927 f!927) t!22117) tb!3607))

(assert (=> b!110151 t!22117))

(declare-fun result!5164 () Bool)

(declare-fun b_and!5495 () Bool)

(assert (= b_and!5491 (and (=> t!22117 result!5164) b_and!5495)))

(declare-fun t!22119 () Bool)

(declare-fun tb!3609 () Bool)

(assert (=> (and start!11262 (= g!9 f!927) t!22119) tb!3609))

(assert (=> b!110151 t!22119))

(declare-fun result!5166 () Bool)

(declare-fun b_and!5497 () Bool)

(assert (= b_and!5493 (and (=> t!22119 result!5166) b_and!5497)))

(declare-fun b_lambda!1659 () Bool)

(assert (=> (not b_lambda!1659) (not b!110151)))

(declare-fun tb!3611 () Bool)

(declare-fun t!22121 () Bool)

(assert (=> (and start!11262 (= f!927 g!9) t!22121) tb!3611))

(assert (=> b!110151 t!22121))

(declare-fun result!5168 () Bool)

(declare-fun b_and!5499 () Bool)

(assert (= b_and!5495 (and (=> t!22121 result!5168) b_and!5499)))

(declare-fun t!22123 () Bool)

(declare-fun tb!3613 () Bool)

(assert (=> (and start!11262 (= g!9 g!9) t!22123) tb!3613))

(assert (=> b!110151 t!22123))

(declare-fun result!5170 () Bool)

(declare-fun b_and!5501 () Bool)

(assert (= b_and!5497 (and (=> t!22123 result!5170) b_and!5501)))

(declare-fun m!100238 () Bool)

(assert (=> b!110152 m!100238))

(assert (=> b!110150 m!100238))

(declare-fun m!100240 () Bool)

(assert (=> start!11262 m!100240))

(declare-fun m!100242 () Bool)

(assert (=> b!110151 m!100242))

(declare-fun m!100244 () Bool)

(assert (=> b!110151 m!100244))

(assert (=> b!110151 m!100238))

(declare-fun m!100246 () Bool)

(assert (=> b!110151 m!100246))

(declare-fun m!100248 () Bool)

(assert (=> b!110153 m!100248))

(declare-fun m!100250 () Bool)

(assert (=> b!110153 m!100250))

(declare-fun m!100252 () Bool)

(assert (=> b!110157 m!100252))

(declare-fun m!100254 () Bool)

(assert (=> b!110157 m!100254))

(declare-fun m!100256 () Bool)

(assert (=> b!110157 m!100256))

(assert (=> b!110157 m!100254))

(declare-fun m!100258 () Bool)

(assert (=> b!110157 m!100258))

(declare-fun m!100260 () Bool)

(assert (=> b!110157 m!100260))

(declare-fun m!100262 () Bool)

(assert (=> b!110157 m!100262))

(declare-fun m!100264 () Bool)

(assert (=> b!110154 m!100264))

(declare-fun m!100266 () Bool)

(assert (=> b!110154 m!100266))

(declare-fun m!100268 () Bool)

(assert (=> b!110154 m!100268))

(declare-fun m!100270 () Bool)

(assert (=> b!110154 m!100270))

(declare-fun m!100272 () Bool)

(assert (=> b!110154 m!100272))

(declare-fun m!100274 () Bool)

(assert (=> b!110154 m!100274))

(declare-fun m!100276 () Bool)

(assert (=> b!110154 m!100276))

(declare-fun m!100278 () Bool)

(assert (=> b!110154 m!100278))

(declare-fun m!100280 () Bool)

(assert (=> b!110154 m!100280))

(declare-fun m!100282 () Bool)

(assert (=> b!110155 m!100282))

(declare-fun m!100284 () Bool)

(assert (=> b!110156 m!100284))

(assert (=> b!110156 m!100284))

(declare-fun m!100286 () Bool)

(assert (=> b!110156 m!100286))

(declare-fun m!100288 () Bool)

(assert (=> b!110156 m!100288))

(check-sat (not b!110154) (not b!110152) (not b!110153) (not tb!3613) (not b!110157) (not tb!3611) (not b_next!3409) b_and!5501 (not b_lambda!1659) (not b!110156) (not b!110151) (not tb!3609) (not tb!3607) (not b!110150) (not setNonEmpty!1632) (not start!11262) b_and!5499 (not b!110155) tp_is_empty!913 (not b_next!3411) (not b_lambda!1657))
(check-sat b_and!5499 b_and!5501 (not b_next!3411) (not b_next!3409))
