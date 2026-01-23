; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527442 () Bool)

(assert start!527442)

(declare-fun b!4989928 () Bool)

(declare-fun e!3118634 () Bool)

(declare-fun tp_is_empty!36483 () Bool)

(assert (=> b!4989928 (= e!3118634 tp_is_empty!36483)))

(declare-fun b!4989929 () Bool)

(declare-fun e!3118628 () Bool)

(declare-fun e!3118638 () Bool)

(assert (=> b!4989929 (= e!3118628 e!3118638)))

(declare-fun res!2130197 () Bool)

(assert (=> b!4989929 (=> (not res!2130197) (not e!3118638))))

(declare-datatypes ((C!27736 0))(
  ( (C!27737 (val!23234 Int)) )
))
(declare-datatypes ((List!57833 0))(
  ( (Nil!57709) (Cons!57709 (h!64157 C!27736) (t!370159 List!57833)) )
))
(declare-fun lt!2063270 () List!57833)

(declare-fun lt!2063253 () List!57833)

(assert (=> b!4989929 (= res!2130197 (= lt!2063270 lt!2063253))))

(declare-datatypes ((tuple2!62800 0))(
  ( (tuple2!62801 (_1!34703 List!57833) (_2!34703 List!57833)) )
))
(declare-fun lt!2063268 () tuple2!62800)

(declare-fun ++!12587 (List!57833 List!57833) List!57833)

(assert (=> b!4989929 (= lt!2063270 (++!12587 (_1!34703 lt!2063268) (_2!34703 lt!2063268)))))

(declare-fun b!4989930 () Bool)

(declare-fun e!3118635 () Bool)

(declare-fun e!3118633 () Bool)

(assert (=> b!4989930 (= e!3118635 e!3118633)))

(declare-fun res!2130193 () Bool)

(assert (=> b!4989930 (=> res!2130193 e!3118633)))

(declare-fun lt!2063259 () Int)

(declare-datatypes ((IArray!30585 0))(
  ( (IArray!30586 (innerList!15350 List!57833)) )
))
(declare-datatypes ((Conc!15262 0))(
  ( (Node!15262 (left!42223 Conc!15262) (right!42553 Conc!15262) (csize!30754 Int) (cheight!15473 Int)) (Leaf!25342 (xs!18588 IArray!30585) (csize!30755 Int)) (Empty!15262) )
))
(declare-datatypes ((BalanceConc!29954 0))(
  ( (BalanceConc!29955 (c!851351 Conc!15262)) )
))
(declare-datatypes ((tuple2!62802 0))(
  ( (tuple2!62803 (_1!34704 BalanceConc!29954) (_2!34704 BalanceConc!29954)) )
))
(declare-fun lt!2063257 () tuple2!62802)

(declare-fun size!38338 (BalanceConc!29954) Int)

(assert (=> b!4989930 (= res!2130193 (<= lt!2063259 (size!38338 (_1!34704 lt!2063257))))))

(declare-fun size!38339 (List!57833) Int)

(assert (=> b!4989930 (= lt!2063259 (size!38339 (_1!34703 lt!2063268)))))

(declare-datatypes ((Regex!13743 0))(
  ( (ElementMatch!13743 (c!851352 C!27736)) (Concat!22536 (regOne!27998 Regex!13743) (regTwo!27998 Regex!13743)) (EmptyExpr!13743) (Star!13743 (reg!14072 Regex!13743)) (EmptyLang!13743) (Union!13743 (regOne!27999 Regex!13743) (regTwo!27999 Regex!13743)) )
))
(declare-fun r!12727 () Regex!13743)

(declare-fun lt!2063271 () List!57833)

(declare-fun lt!2063272 () Bool)

(declare-fun matchR!6715 (Regex!13743 List!57833) Bool)

(assert (=> b!4989930 (= (matchR!6715 r!12727 lt!2063271) lt!2063272)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57834 0))(
  ( (Nil!57710) (Cons!57710 (h!64158 Regex!13743) (t!370160 List!57834)) )
))
(declare-datatypes ((Context!6336 0))(
  ( (Context!6337 (exprs!3668 List!57834)) )
))
(declare-fun z!4183 () (InoxSet Context!6336))

(declare-datatypes ((List!57835 0))(
  ( (Nil!57711) (Cons!57711 (h!64159 Context!6336) (t!370161 List!57835)) )
))
(declare-fun lt!2063263 () List!57835)

(declare-datatypes ((Unit!148851 0))(
  ( (Unit!148852) )
))
(declare-fun lt!2063254 () Unit!148851)

(declare-fun theoremZipperRegexEquiv!129 ((InoxSet Context!6336) List!57835 Regex!13743 List!57833) Unit!148851)

(assert (=> b!4989930 (= lt!2063254 (theoremZipperRegexEquiv!129 z!4183 lt!2063263 r!12727 lt!2063271))))

(declare-fun lt!2063274 () Bool)

(declare-fun matchZipper!519 ((InoxSet Context!6336) List!57833) Bool)

(assert (=> b!4989930 (= lt!2063274 (matchZipper!519 z!4183 (_1!34703 lt!2063268)))))

(declare-fun lt!2063276 () Unit!148851)

(assert (=> b!4989930 (= lt!2063276 (theoremZipperRegexEquiv!129 z!4183 lt!2063263 r!12727 (_1!34703 lt!2063268)))))

(declare-fun b!4989931 () Bool)

(declare-fun e!3118643 () Bool)

(assert (=> b!4989931 (= e!3118643 e!3118635)))

(declare-fun res!2130190 () Bool)

(assert (=> b!4989931 (=> res!2130190 e!3118635)))

(declare-fun e!3118640 () Bool)

(assert (=> b!4989931 (= res!2130190 e!3118640)))

(declare-fun res!2130191 () Bool)

(assert (=> b!4989931 (=> (not res!2130191) (not e!3118640))))

(assert (=> b!4989931 (= res!2130191 (not lt!2063274))))

(assert (=> b!4989931 (= lt!2063274 (matchR!6715 r!12727 (_1!34703 lt!2063268)))))

(declare-fun b!4989932 () Bool)

(declare-fun e!3118632 () Bool)

(declare-fun e!3118629 () Bool)

(assert (=> b!4989932 (= e!3118632 e!3118629)))

(declare-fun res!2130196 () Bool)

(assert (=> b!4989932 (=> (not res!2130196) (not e!3118629))))

(declare-fun unfocusZipper!270 (List!57835) Regex!13743)

(assert (=> b!4989932 (= res!2130196 (= (unfocusZipper!270 lt!2063263) r!12727))))

(declare-fun toList!8028 ((InoxSet Context!6336)) List!57835)

(assert (=> b!4989932 (= lt!2063263 (toList!8028 z!4183))))

(declare-fun b!4989933 () Bool)

(declare-fun e!3118641 () Bool)

(assert (=> b!4989933 (= e!3118641 e!3118628)))

(declare-fun res!2130192 () Bool)

(assert (=> b!4989933 (=> (not res!2130192) (not e!3118628))))

(declare-fun lt!2063269 () List!57833)

(assert (=> b!4989933 (= res!2130192 (= lt!2063269 lt!2063253))))

(declare-fun lt!2063267 () List!57833)

(assert (=> b!4989933 (= lt!2063269 (++!12587 lt!2063271 lt!2063267))))

(declare-fun list!18546 (BalanceConc!29954) List!57833)

(assert (=> b!4989933 (= lt!2063267 (list!18546 (_2!34704 lt!2063257)))))

(assert (=> b!4989933 (= lt!2063271 (list!18546 (_1!34704 lt!2063257)))))

(declare-fun findLongestMatch!1756 (Regex!13743 List!57833) tuple2!62800)

(assert (=> b!4989933 (= lt!2063268 (findLongestMatch!1756 r!12727 lt!2063253))))

(declare-fun lt!2063261 () Int)

(declare-fun lt!2063265 () Int)

(declare-fun input!5597 () BalanceConc!29954)

(assert (=> b!4989933 (= lt!2063261 (- lt!2063265 (size!38338 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29954)

(assert (=> b!4989933 (= lt!2063265 (size!38338 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!45 ((InoxSet Context!6336) BalanceConc!29954 BalanceConc!29954) tuple2!62802)

(assert (=> b!4989933 (= lt!2063257 (findLongestMatchZipperFastV2!45 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4989934 () Bool)

(declare-fun tp!1398742 () Bool)

(assert (=> b!4989934 (= e!3118634 tp!1398742)))

(declare-fun b!4989935 () Bool)

(declare-fun e!3118642 () Bool)

(declare-fun tp!1398749 () Bool)

(declare-fun inv!75731 (Conc!15262) Bool)

(assert (=> b!4989935 (= e!3118642 (and (inv!75731 (c!851351 totalInput!1012)) tp!1398749))))

(declare-fun res!2130195 () Bool)

(assert (=> start!527442 (=> (not res!2130195) (not e!3118632))))

(declare-fun validRegex!6040 (Regex!13743) Bool)

(assert (=> start!527442 (= res!2130195 (validRegex!6040 r!12727))))

(assert (=> start!527442 e!3118632))

(assert (=> start!527442 e!3118634))

(declare-fun e!3118630 () Bool)

(declare-fun inv!75732 (BalanceConc!29954) Bool)

(assert (=> start!527442 (and (inv!75732 input!5597) e!3118630)))

(declare-fun condSetEmpty!28184 () Bool)

(assert (=> start!527442 (= condSetEmpty!28184 (= z!4183 ((as const (Array Context!6336 Bool)) false)))))

(declare-fun setRes!28184 () Bool)

(assert (=> start!527442 setRes!28184))

(assert (=> start!527442 (and (inv!75732 totalInput!1012) e!3118642)))

(declare-fun b!4989936 () Bool)

(declare-fun e!3118639 () Bool)

(declare-fun tp!1398745 () Bool)

(assert (=> b!4989936 (= e!3118639 tp!1398745)))

(declare-fun b!4989937 () Bool)

(declare-fun e!3118637 () Bool)

(declare-fun isEmpty!31220 (BalanceConc!29954) Bool)

(assert (=> b!4989937 (= e!3118637 (not (isEmpty!31220 (_1!34704 lt!2063257))))))

(declare-fun b!4989938 () Bool)

(declare-fun isEmpty!31221 (List!57833) Bool)

(assert (=> b!4989938 (= e!3118640 (not (isEmpty!31221 (_1!34703 lt!2063268))))))

(declare-fun b!4989939 () Bool)

(declare-fun e!3118631 () Bool)

(declare-fun lt!2063275 () tuple2!62800)

(assert (=> b!4989939 (= e!3118631 (matchR!6715 r!12727 (_1!34703 lt!2063275)))))

(declare-fun b!4989940 () Bool)

(assert (=> b!4989940 (= e!3118638 (not e!3118643))))

(declare-fun res!2130194 () Bool)

(assert (=> b!4989940 (=> res!2130194 e!3118643)))

(assert (=> b!4989940 (= res!2130194 e!3118637)))

(declare-fun res!2130188 () Bool)

(assert (=> b!4989940 (=> (not res!2130188) (not e!3118637))))

(assert (=> b!4989940 (= res!2130188 (not lt!2063272))))

(assert (=> b!4989940 (= lt!2063272 (matchZipper!519 z!4183 lt!2063271))))

(assert (=> b!4989940 e!3118631))

(declare-fun res!2130189 () Bool)

(assert (=> b!4989940 (=> res!2130189 e!3118631)))

(assert (=> b!4989940 (= res!2130189 (isEmpty!31221 (_1!34703 lt!2063275)))))

(declare-fun findLongestMatchInner!1932 (Regex!13743 List!57833 Int List!57833 List!57833 Int) tuple2!62800)

(assert (=> b!4989940 (= lt!2063275 (findLongestMatchInner!1932 r!12727 Nil!57709 (size!38339 Nil!57709) lt!2063253 lt!2063253 (size!38339 lt!2063253)))))

(declare-fun lt!2063256 () Unit!148851)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1893 (Regex!13743 List!57833) Unit!148851)

(assert (=> b!4989940 (= lt!2063256 (longestMatchIsAcceptedByMatchOrIsEmpty!1893 r!12727 lt!2063253))))

(declare-fun e!3118636 () Bool)

(assert (=> b!4989940 e!3118636))

(declare-fun res!2130187 () Bool)

(assert (=> b!4989940 (=> res!2130187 e!3118636)))

(declare-fun lt!2063260 () Int)

(assert (=> b!4989940 (= res!2130187 (= lt!2063260 0))))

(declare-fun findLongestMatchInnerZipperFastV2!83 ((InoxSet Context!6336) Int BalanceConc!29954 Int) Int)

(assert (=> b!4989940 (= lt!2063260 (findLongestMatchInnerZipperFastV2!83 z!4183 lt!2063261 totalInput!1012 lt!2063265))))

(declare-fun lt!2063255 () Unit!148851)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!10 ((InoxSet Context!6336) Int BalanceConc!29954) Unit!148851)

(assert (=> b!4989940 (= lt!2063255 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!10 z!4183 lt!2063261 totalInput!1012))))

(declare-fun lt!2063258 () List!57833)

(declare-fun isPrefix!5300 (List!57833 List!57833) Bool)

(declare-fun take!608 (List!57833 Int) List!57833)

(assert (=> b!4989940 (isPrefix!5300 (take!608 lt!2063258 lt!2063261) lt!2063258)))

(declare-fun lt!2063273 () Unit!148851)

(declare-fun lemmaTakeIsPrefix!102 (List!57833 Int) Unit!148851)

(assert (=> b!4989940 (= lt!2063273 (lemmaTakeIsPrefix!102 lt!2063258 lt!2063261))))

(assert (=> b!4989940 (isPrefix!5300 (_1!34703 lt!2063268) lt!2063270)))

(declare-fun lt!2063262 () Unit!148851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3398 (List!57833 List!57833) Unit!148851)

(assert (=> b!4989940 (= lt!2063262 (lemmaConcatTwoListThenFirstIsPrefix!3398 (_1!34703 lt!2063268) (_2!34703 lt!2063268)))))

(assert (=> b!4989940 (isPrefix!5300 lt!2063271 lt!2063269)))

(declare-fun lt!2063264 () Unit!148851)

(assert (=> b!4989940 (= lt!2063264 (lemmaConcatTwoListThenFirstIsPrefix!3398 lt!2063271 lt!2063267))))

(declare-fun b!4989941 () Bool)

(declare-fun tp!1398748 () Bool)

(assert (=> b!4989941 (= e!3118630 (and (inv!75731 (c!851351 input!5597)) tp!1398748))))

(declare-fun b!4989942 () Bool)

(assert (=> b!4989942 (= e!3118633 true)))

(declare-fun lt!2063266 () List!57833)

(declare-fun drop!2406 (List!57833 Int) List!57833)

(assert (=> b!4989942 (= lt!2063266 (take!608 (drop!2406 lt!2063258 lt!2063261) lt!2063259))))

(declare-fun b!4989943 () Bool)

(assert (=> b!4989943 (= e!3118636 (matchZipper!519 z!4183 (take!608 (drop!2406 lt!2063258 lt!2063261) lt!2063260)))))

(declare-fun setNonEmpty!28184 () Bool)

(declare-fun setElem!28184 () Context!6336)

(declare-fun tp!1398744 () Bool)

(declare-fun inv!75733 (Context!6336) Bool)

(assert (=> setNonEmpty!28184 (= setRes!28184 (and tp!1398744 (inv!75733 setElem!28184) e!3118639))))

(declare-fun setRest!28184 () (InoxSet Context!6336))

(assert (=> setNonEmpty!28184 (= z!4183 ((_ map or) (store ((as const (Array Context!6336 Bool)) false) setElem!28184 true) setRest!28184))))

(declare-fun b!4989944 () Bool)

(declare-fun tp!1398747 () Bool)

(declare-fun tp!1398750 () Bool)

(assert (=> b!4989944 (= e!3118634 (and tp!1398747 tp!1398750))))

(declare-fun setIsEmpty!28184 () Bool)

(assert (=> setIsEmpty!28184 setRes!28184))

(declare-fun b!4989945 () Bool)

(declare-fun tp!1398746 () Bool)

(declare-fun tp!1398743 () Bool)

(assert (=> b!4989945 (= e!3118634 (and tp!1398746 tp!1398743))))

(declare-fun b!4989946 () Bool)

(assert (=> b!4989946 (= e!3118629 e!3118641)))

(declare-fun res!2130186 () Bool)

(assert (=> b!4989946 (=> (not res!2130186) (not e!3118641))))

(declare-fun isSuffix!1309 (List!57833 List!57833) Bool)

(assert (=> b!4989946 (= res!2130186 (isSuffix!1309 lt!2063253 lt!2063258))))

(assert (=> b!4989946 (= lt!2063258 (list!18546 totalInput!1012))))

(assert (=> b!4989946 (= lt!2063253 (list!18546 input!5597))))

(assert (= (and start!527442 res!2130195) b!4989932))

(assert (= (and b!4989932 res!2130196) b!4989946))

(assert (= (and b!4989946 res!2130186) b!4989933))

(assert (= (and b!4989933 res!2130192) b!4989929))

(assert (= (and b!4989929 res!2130197) b!4989940))

(assert (= (and b!4989940 (not res!2130187)) b!4989943))

(assert (= (and b!4989940 (not res!2130189)) b!4989939))

(assert (= (and b!4989940 res!2130188) b!4989937))

(assert (= (and b!4989940 (not res!2130194)) b!4989931))

(assert (= (and b!4989931 res!2130191) b!4989938))

(assert (= (and b!4989931 (not res!2130190)) b!4989930))

(assert (= (and b!4989930 (not res!2130193)) b!4989942))

(get-info :version)

(assert (= (and start!527442 ((_ is ElementMatch!13743) r!12727)) b!4989928))

(assert (= (and start!527442 ((_ is Concat!22536) r!12727)) b!4989944))

(assert (= (and start!527442 ((_ is Star!13743) r!12727)) b!4989934))

(assert (= (and start!527442 ((_ is Union!13743) r!12727)) b!4989945))

(assert (= start!527442 b!4989941))

(assert (= (and start!527442 condSetEmpty!28184) setIsEmpty!28184))

(assert (= (and start!527442 (not condSetEmpty!28184)) setNonEmpty!28184))

(assert (= setNonEmpty!28184 b!4989936))

(assert (= start!527442 b!4989935))

(declare-fun m!6022138 () Bool)

(assert (=> setNonEmpty!28184 m!6022138))

(declare-fun m!6022140 () Bool)

(assert (=> b!4989938 m!6022140))

(declare-fun m!6022142 () Bool)

(assert (=> b!4989933 m!6022142))

(declare-fun m!6022144 () Bool)

(assert (=> b!4989933 m!6022144))

(declare-fun m!6022146 () Bool)

(assert (=> b!4989933 m!6022146))

(declare-fun m!6022148 () Bool)

(assert (=> b!4989933 m!6022148))

(declare-fun m!6022150 () Bool)

(assert (=> b!4989933 m!6022150))

(declare-fun m!6022152 () Bool)

(assert (=> b!4989933 m!6022152))

(declare-fun m!6022154 () Bool)

(assert (=> b!4989933 m!6022154))

(declare-fun m!6022156 () Bool)

(assert (=> b!4989937 m!6022156))

(declare-fun m!6022158 () Bool)

(assert (=> b!4989930 m!6022158))

(declare-fun m!6022160 () Bool)

(assert (=> b!4989930 m!6022160))

(declare-fun m!6022162 () Bool)

(assert (=> b!4989930 m!6022162))

(declare-fun m!6022164 () Bool)

(assert (=> b!4989930 m!6022164))

(declare-fun m!6022166 () Bool)

(assert (=> b!4989930 m!6022166))

(declare-fun m!6022168 () Bool)

(assert (=> b!4989930 m!6022168))

(declare-fun m!6022170 () Bool)

(assert (=> b!4989932 m!6022170))

(declare-fun m!6022172 () Bool)

(assert (=> b!4989932 m!6022172))

(declare-fun m!6022174 () Bool)

(assert (=> start!527442 m!6022174))

(declare-fun m!6022176 () Bool)

(assert (=> start!527442 m!6022176))

(declare-fun m!6022178 () Bool)

(assert (=> start!527442 m!6022178))

(declare-fun m!6022180 () Bool)

(assert (=> b!4989935 m!6022180))

(declare-fun m!6022182 () Bool)

(assert (=> b!4989940 m!6022182))

(declare-fun m!6022184 () Bool)

(assert (=> b!4989940 m!6022184))

(declare-fun m!6022186 () Bool)

(assert (=> b!4989940 m!6022186))

(declare-fun m!6022188 () Bool)

(assert (=> b!4989940 m!6022188))

(assert (=> b!4989940 m!6022184))

(declare-fun m!6022190 () Bool)

(assert (=> b!4989940 m!6022190))

(declare-fun m!6022192 () Bool)

(assert (=> b!4989940 m!6022192))

(declare-fun m!6022194 () Bool)

(assert (=> b!4989940 m!6022194))

(declare-fun m!6022196 () Bool)

(assert (=> b!4989940 m!6022196))

(declare-fun m!6022198 () Bool)

(assert (=> b!4989940 m!6022198))

(declare-fun m!6022200 () Bool)

(assert (=> b!4989940 m!6022200))

(assert (=> b!4989940 m!6022196))

(declare-fun m!6022202 () Bool)

(assert (=> b!4989940 m!6022202))

(declare-fun m!6022204 () Bool)

(assert (=> b!4989940 m!6022204))

(declare-fun m!6022206 () Bool)

(assert (=> b!4989940 m!6022206))

(assert (=> b!4989940 m!6022194))

(declare-fun m!6022208 () Bool)

(assert (=> b!4989940 m!6022208))

(declare-fun m!6022210 () Bool)

(assert (=> b!4989940 m!6022210))

(declare-fun m!6022212 () Bool)

(assert (=> b!4989939 m!6022212))

(declare-fun m!6022214 () Bool)

(assert (=> b!4989941 m!6022214))

(declare-fun m!6022216 () Bool)

(assert (=> b!4989943 m!6022216))

(assert (=> b!4989943 m!6022216))

(declare-fun m!6022218 () Bool)

(assert (=> b!4989943 m!6022218))

(assert (=> b!4989943 m!6022218))

(declare-fun m!6022220 () Bool)

(assert (=> b!4989943 m!6022220))

(assert (=> b!4989942 m!6022216))

(assert (=> b!4989942 m!6022216))

(declare-fun m!6022222 () Bool)

(assert (=> b!4989942 m!6022222))

(declare-fun m!6022224 () Bool)

(assert (=> b!4989929 m!6022224))

(declare-fun m!6022226 () Bool)

(assert (=> b!4989946 m!6022226))

(declare-fun m!6022228 () Bool)

(assert (=> b!4989946 m!6022228))

(declare-fun m!6022230 () Bool)

(assert (=> b!4989946 m!6022230))

(declare-fun m!6022232 () Bool)

(assert (=> b!4989931 m!6022232))

(check-sat (not b!4989935) (not b!4989936) (not b!4989938) (not b!4989934) tp_is_empty!36483 (not b!4989933) (not b!4989942) (not b!4989940) (not start!527442) (not b!4989946) (not b!4989945) (not b!4989931) (not b!4989941) (not b!4989939) (not b!4989929) (not b!4989937) (not b!4989932) (not setNonEmpty!28184) (not b!4989943) (not b!4989944) (not b!4989930))
(check-sat)
