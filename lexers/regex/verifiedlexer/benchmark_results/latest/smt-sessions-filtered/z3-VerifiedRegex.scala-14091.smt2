; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742294 () Bool)

(assert start!742294)

(declare-fun b!7834607 () Bool)

(declare-fun res!3116190 () Bool)

(declare-fun e!4632967 () Bool)

(assert (=> b!7834607 (=> (not res!3116190) (not e!4632967))))

(declare-datatypes ((C!42280 0))(
  ( (C!42281 (val!31580 Int)) )
))
(declare-datatypes ((Regex!20977 0))(
  ( (ElementMatch!20977 (c!1440880 C!42280)) (Concat!29822 (regOne!42466 Regex!20977) (regTwo!42466 Regex!20977)) (EmptyExpr!20977) (Star!20977 (reg!21306 Regex!20977)) (EmptyLang!20977) (Union!20977 (regOne!42467 Regex!20977) (regTwo!42467 Regex!20977)) )
))
(declare-fun r2!6199 () Regex!20977)

(declare-datatypes ((List!73814 0))(
  ( (Nil!73690) (Cons!73690 (h!80138 C!42280) (t!388549 List!73814)) )
))
(declare-fun s2!3721 () List!73814)

(declare-fun matchR!10433 (Regex!20977 List!73814) Bool)

(assert (=> b!7834607 (= res!3116190 (matchR!10433 r2!6199 s2!3721))))

(declare-fun b!7834609 () Bool)

(declare-fun res!3116193 () Bool)

(declare-fun e!4632957 () Bool)

(assert (=> b!7834609 (=> (not res!3116193) (not e!4632957))))

(declare-fun validRegex!11391 (Regex!20977) Bool)

(assert (=> b!7834609 (= res!3116193 (validRegex!11391 r2!6199))))

(declare-fun b!7834610 () Bool)

(declare-datatypes ((Unit!168734 0))(
  ( (Unit!168735) )
))
(declare-fun e!4632962 () Unit!168734)

(declare-fun Unit!168736 () Unit!168734)

(assert (=> b!7834610 (= e!4632962 Unit!168736)))

(declare-fun b!7834611 () Bool)

(declare-fun e!4632965 () Bool)

(declare-fun s1Rec!453 () List!73814)

(declare-fun s!14274 () List!73814)

(declare-fun isPrefix!6327 (List!73814 List!73814) Bool)

(assert (=> b!7834611 (= e!4632965 (isPrefix!6327 s1Rec!453 s!14274))))

(declare-fun b!7834612 () Bool)

(declare-fun e!4632968 () Bool)

(assert (=> b!7834612 (= e!4632968 e!4632967)))

(declare-fun res!3116185 () Bool)

(assert (=> b!7834612 (=> (not res!3116185) (not e!4632967))))

(declare-fun lt!2677333 () List!73814)

(assert (=> b!7834612 (= res!3116185 (= lt!2677333 s!14274))))

(declare-fun s2Rec!453 () List!73814)

(declare-fun ++!18011 (List!73814 List!73814) List!73814)

(assert (=> b!7834612 (= lt!2677333 (++!18011 s1Rec!453 s2Rec!453))))

(declare-fun b!7834613 () Bool)

(declare-fun e!4632961 () Bool)

(declare-fun tp_is_empty!52309 () Bool)

(assert (=> b!7834613 (= e!4632961 tp_is_empty!52309)))

(declare-fun b!7834614 () Bool)

(declare-fun e!4632959 () Bool)

(declare-fun tp!2317463 () Bool)

(assert (=> b!7834614 (= e!4632959 (and tp_is_empty!52309 tp!2317463))))

(declare-fun b!7834615 () Bool)

(declare-fun res!3116196 () Bool)

(assert (=> b!7834615 (=> (not res!3116196) (not e!4632967))))

(declare-fun r1!6261 () Regex!20977)

(declare-fun s1!4101 () List!73814)

(assert (=> b!7834615 (= res!3116196 (matchR!10433 r1!6261 s1!4101))))

(declare-fun b!7834616 () Bool)

(declare-fun res!3116194 () Bool)

(assert (=> b!7834616 (=> (not res!3116194) (not e!4632967))))

(declare-fun e!4632969 () Bool)

(assert (=> b!7834616 (= res!3116194 e!4632969)))

(declare-fun res!3116195 () Bool)

(assert (=> b!7834616 (=> res!3116195 e!4632969)))

(assert (=> b!7834616 (= res!3116195 (not (matchR!10433 r1!6261 s1Rec!453)))))

(declare-fun b!7834617 () Bool)

(declare-fun e!4632963 () Bool)

(declare-fun tp!2317468 () Bool)

(assert (=> b!7834617 (= e!4632963 (and tp_is_empty!52309 tp!2317468))))

(declare-fun b!7834618 () Bool)

(declare-fun tp!2317466 () Bool)

(declare-fun tp!2317471 () Bool)

(assert (=> b!7834618 (= e!4632961 (and tp!2317466 tp!2317471))))

(declare-fun b!7834619 () Bool)

(declare-fun e!4632964 () Bool)

(declare-fun tp!2317459 () Bool)

(assert (=> b!7834619 (= e!4632964 (and tp_is_empty!52309 tp!2317459))))

(declare-fun res!3116187 () Bool)

(assert (=> start!742294 (=> (not res!3116187) (not e!4632957))))

(assert (=> start!742294 (= res!3116187 (validRegex!11391 r1!6261))))

(assert (=> start!742294 e!4632957))

(declare-fun e!4632960 () Bool)

(assert (=> start!742294 e!4632960))

(declare-fun e!4632966 () Bool)

(assert (=> start!742294 e!4632966))

(assert (=> start!742294 e!4632964))

(assert (=> start!742294 e!4632959))

(assert (=> start!742294 e!4632963))

(assert (=> start!742294 e!4632961))

(declare-fun e!4632958 () Bool)

(assert (=> start!742294 e!4632958))

(declare-fun b!7834608 () Bool)

(declare-fun tp!2317457 () Bool)

(declare-fun tp!2317460 () Bool)

(assert (=> b!7834608 (= e!4632960 (and tp!2317457 tp!2317460))))

(declare-fun b!7834620 () Bool)

(declare-fun res!3116186 () Bool)

(assert (=> b!7834620 (=> (not res!3116186) (not e!4632967))))

(get-info :version)

(assert (=> b!7834620 (= res!3116186 (not ((_ is Nil!73690) s2Rec!453)))))

(declare-fun b!7834621 () Bool)

(declare-fun Unit!168737 () Unit!168734)

(assert (=> b!7834621 (= e!4632962 Unit!168737)))

(declare-fun lt!2677332 () Unit!168734)

(declare-fun lemmaSamePrefixThenSameSuffix!2911 (List!73814 List!73814 List!73814 List!73814 List!73814) Unit!168734)

(assert (=> b!7834621 (= lt!2677332 (lemmaSamePrefixThenSameSuffix!2911 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7834621 false))

(declare-fun b!7834622 () Bool)

(declare-fun tp!2317464 () Bool)

(declare-fun tp!2317467 () Bool)

(assert (=> b!7834622 (= e!4632960 (and tp!2317464 tp!2317467))))

(declare-fun b!7834623 () Bool)

(assert (=> b!7834623 (= e!4632960 tp_is_empty!52309)))

(declare-fun b!7834624 () Bool)

(declare-fun tp!2317461 () Bool)

(assert (=> b!7834624 (= e!4632961 tp!2317461)))

(declare-fun b!7834625 () Bool)

(declare-fun tp!2317470 () Bool)

(declare-fun tp!2317458 () Bool)

(assert (=> b!7834625 (= e!4632961 (and tp!2317470 tp!2317458))))

(declare-fun b!7834626 () Bool)

(declare-fun res!3116189 () Bool)

(assert (=> b!7834626 (=> (not res!3116189) (not e!4632968))))

(assert (=> b!7834626 (= res!3116189 (isPrefix!6327 s1Rec!453 s1!4101))))

(declare-fun b!7834627 () Bool)

(declare-fun res!3116188 () Bool)

(assert (=> b!7834627 (=> res!3116188 e!4632965)))

(assert (=> b!7834627 (= res!3116188 (not (isPrefix!6327 s1!4101 s!14274)))))

(declare-fun b!7834628 () Bool)

(declare-fun tp!2317465 () Bool)

(assert (=> b!7834628 (= e!4632966 (and tp_is_empty!52309 tp!2317465))))

(declare-fun b!7834629 () Bool)

(assert (=> b!7834629 (= e!4632957 e!4632968)))

(declare-fun res!3116191 () Bool)

(assert (=> b!7834629 (=> (not res!3116191) (not e!4632968))))

(declare-fun lt!2677335 () List!73814)

(assert (=> b!7834629 (= res!3116191 (= lt!2677335 s!14274))))

(assert (=> b!7834629 (= lt!2677335 (++!18011 s1!4101 s2!3721))))

(declare-fun b!7834630 () Bool)

(declare-fun tp!2317469 () Bool)

(assert (=> b!7834630 (= e!4632958 (and tp_is_empty!52309 tp!2317469))))

(declare-fun b!7834631 () Bool)

(assert (=> b!7834631 (= e!4632969 (not (matchR!10433 r2!6199 s2Rec!453)))))

(declare-fun b!7834632 () Bool)

(declare-fun tp!2317462 () Bool)

(assert (=> b!7834632 (= e!4632960 tp!2317462)))

(declare-fun b!7834633 () Bool)

(assert (=> b!7834633 (= e!4632967 (not e!4632965))))

(declare-fun res!3116192 () Bool)

(assert (=> b!7834633 (=> res!3116192 e!4632965)))

(declare-fun size!42767 (List!73814) Int)

(assert (=> b!7834633 (= res!3116192 (not (= (size!42767 s1Rec!453) (size!42767 s1!4101))))))

(declare-fun lt!2677337 () List!73814)

(declare-fun lt!2677339 () List!73814)

(assert (=> b!7834633 (isPrefix!6327 lt!2677337 lt!2677339)))

(declare-fun lt!2677331 () Unit!168734)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3773 (List!73814 List!73814) Unit!168734)

(assert (=> b!7834633 (= lt!2677331 (lemmaConcatTwoListThenFirstIsPrefix!3773 lt!2677337 (t!388549 s2Rec!453)))))

(assert (=> b!7834633 (= lt!2677339 s!14274)))

(assert (=> b!7834633 (= lt!2677339 (++!18011 lt!2677337 (t!388549 s2Rec!453)))))

(assert (=> b!7834633 (= lt!2677337 (++!18011 s1Rec!453 (Cons!73690 (h!80138 s2Rec!453) Nil!73690)))))

(declare-fun lt!2677338 () Unit!168734)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3438 (List!73814 C!42280 List!73814 List!73814) Unit!168734)

(assert (=> b!7834633 (= lt!2677338 (lemmaMoveElementToOtherListKeepsConcatEq!3438 s1Rec!453 (h!80138 s2Rec!453) (t!388549 s2Rec!453) s!14274))))

(declare-fun lt!2677334 () Unit!168734)

(assert (=> b!7834633 (= lt!2677334 e!4632962)))

(declare-fun c!1440879 () Bool)

(assert (=> b!7834633 (= c!1440879 (= s1Rec!453 s1!4101))))

(assert (=> b!7834633 (isPrefix!6327 s1Rec!453 lt!2677333)))

(declare-fun lt!2677340 () Unit!168734)

(assert (=> b!7834633 (= lt!2677340 (lemmaConcatTwoListThenFirstIsPrefix!3773 s1Rec!453 s2Rec!453))))

(assert (=> b!7834633 (isPrefix!6327 s1!4101 lt!2677335)))

(declare-fun lt!2677336 () Unit!168734)

(assert (=> b!7834633 (= lt!2677336 (lemmaConcatTwoListThenFirstIsPrefix!3773 s1!4101 s2!3721))))

(assert (= (and start!742294 res!3116187) b!7834609))

(assert (= (and b!7834609 res!3116193) b!7834629))

(assert (= (and b!7834629 res!3116191) b!7834626))

(assert (= (and b!7834626 res!3116189) b!7834612))

(assert (= (and b!7834612 res!3116185) b!7834615))

(assert (= (and b!7834615 res!3116196) b!7834607))

(assert (= (and b!7834607 res!3116190) b!7834616))

(assert (= (and b!7834616 (not res!3116195)) b!7834631))

(assert (= (and b!7834616 res!3116194) b!7834620))

(assert (= (and b!7834620 res!3116186) b!7834633))

(assert (= (and b!7834633 c!1440879) b!7834621))

(assert (= (and b!7834633 (not c!1440879)) b!7834610))

(assert (= (and b!7834633 (not res!3116192)) b!7834627))

(assert (= (and b!7834627 (not res!3116188)) b!7834611))

(assert (= (and start!742294 ((_ is ElementMatch!20977) r2!6199)) b!7834623))

(assert (= (and start!742294 ((_ is Concat!29822) r2!6199)) b!7834622))

(assert (= (and start!742294 ((_ is Star!20977) r2!6199)) b!7834632))

(assert (= (and start!742294 ((_ is Union!20977) r2!6199)) b!7834608))

(assert (= (and start!742294 ((_ is Cons!73690) s1!4101)) b!7834628))

(assert (= (and start!742294 ((_ is Cons!73690) s2!3721)) b!7834619))

(assert (= (and start!742294 ((_ is Cons!73690) s2Rec!453)) b!7834614))

(assert (= (and start!742294 ((_ is Cons!73690) s!14274)) b!7834617))

(assert (= (and start!742294 ((_ is ElementMatch!20977) r1!6261)) b!7834613))

(assert (= (and start!742294 ((_ is Concat!29822) r1!6261)) b!7834618))

(assert (= (and start!742294 ((_ is Star!20977) r1!6261)) b!7834624))

(assert (= (and start!742294 ((_ is Union!20977) r1!6261)) b!7834625))

(assert (= (and start!742294 ((_ is Cons!73690) s1Rec!453)) b!7834630))

(declare-fun m!8250140 () Bool)

(assert (=> b!7834612 m!8250140))

(declare-fun m!8250142 () Bool)

(assert (=> b!7834615 m!8250142))

(declare-fun m!8250144 () Bool)

(assert (=> b!7834621 m!8250144))

(declare-fun m!8250146 () Bool)

(assert (=> b!7834616 m!8250146))

(declare-fun m!8250148 () Bool)

(assert (=> b!7834611 m!8250148))

(declare-fun m!8250150 () Bool)

(assert (=> b!7834629 m!8250150))

(declare-fun m!8250152 () Bool)

(assert (=> b!7834607 m!8250152))

(declare-fun m!8250154 () Bool)

(assert (=> b!7834631 m!8250154))

(declare-fun m!8250156 () Bool)

(assert (=> b!7834609 m!8250156))

(declare-fun m!8250158 () Bool)

(assert (=> b!7834627 m!8250158))

(declare-fun m!8250160 () Bool)

(assert (=> start!742294 m!8250160))

(declare-fun m!8250162 () Bool)

(assert (=> b!7834633 m!8250162))

(declare-fun m!8250164 () Bool)

(assert (=> b!7834633 m!8250164))

(declare-fun m!8250166 () Bool)

(assert (=> b!7834633 m!8250166))

(declare-fun m!8250168 () Bool)

(assert (=> b!7834633 m!8250168))

(declare-fun m!8250170 () Bool)

(assert (=> b!7834633 m!8250170))

(declare-fun m!8250172 () Bool)

(assert (=> b!7834633 m!8250172))

(declare-fun m!8250174 () Bool)

(assert (=> b!7834633 m!8250174))

(declare-fun m!8250176 () Bool)

(assert (=> b!7834633 m!8250176))

(declare-fun m!8250178 () Bool)

(assert (=> b!7834633 m!8250178))

(declare-fun m!8250180 () Bool)

(assert (=> b!7834633 m!8250180))

(declare-fun m!8250182 () Bool)

(assert (=> b!7834633 m!8250182))

(declare-fun m!8250184 () Bool)

(assert (=> b!7834626 m!8250184))

(check-sat (not b!7834607) (not b!7834630) (not b!7834615) (not b!7834625) (not b!7834608) (not b!7834612) (not b!7834627) (not start!742294) (not b!7834622) (not b!7834629) (not b!7834617) (not b!7834633) (not b!7834632) (not b!7834611) (not b!7834616) (not b!7834631) (not b!7834626) tp_is_empty!52309 (not b!7834628) (not b!7834618) (not b!7834619) (not b!7834614) (not b!7834621) (not b!7834609) (not b!7834624))
(check-sat)
