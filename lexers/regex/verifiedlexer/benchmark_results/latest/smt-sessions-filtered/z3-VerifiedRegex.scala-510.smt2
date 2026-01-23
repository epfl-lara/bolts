; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14142 () Bool)

(assert start!14142)

(declare-fun res!63400 () Bool)

(declare-fun e!78596 () Bool)

(assert (=> start!14142 (=> (not res!63400) (not e!78596))))

(declare-datatypes ((B!861 0))(
  ( (B!862 (val!916 Int)) )
))
(declare-datatypes ((List!2234 0))(
  ( (Nil!2228) (Cons!2228 (h!7625 B!861) (t!22820 List!2234)) )
))
(declare-fun sub!16 () List!2234)

(declare-fun lt!40711 () List!2234)

(declare-fun subseq!75 (List!2234 List!2234) Bool)

(assert (=> start!14142 (= res!63400 (subseq!75 sub!16 lt!40711))))

(declare-fun l1!1230 () List!2234)

(declare-fun l2!1199 () List!2234)

(declare-fun ++!502 (List!2234 List!2234) List!2234)

(assert (=> start!14142 (= lt!40711 (++!502 l1!1230 l2!1199))))

(assert (=> start!14142 e!78596))

(declare-fun e!78594 () Bool)

(assert (=> start!14142 e!78594))

(declare-fun e!78599 () Bool)

(assert (=> start!14142 e!78599))

(declare-fun e!78595 () Bool)

(assert (=> start!14142 e!78595))

(declare-fun b!135390 () Bool)

(declare-fun e!78597 () Bool)

(declare-fun isEmpty!870 (List!2234) Bool)

(assert (=> b!135390 (= e!78597 (not (isEmpty!870 l1!1230)))))

(declare-fun b!135391 () Bool)

(declare-fun e!78598 () Bool)

(assert (=> b!135391 (= e!78596 e!78598)))

(declare-fun res!63404 () Bool)

(assert (=> b!135391 (=> (not res!63404) (not e!78598))))

(assert (=> b!135391 (= res!63404 e!78597)))

(declare-fun res!63403 () Bool)

(assert (=> b!135391 (=> res!63403 e!78597)))

(declare-fun lt!40712 () Bool)

(assert (=> b!135391 (= res!63403 lt!40712)))

(get-info :version)

(assert (=> b!135391 (= lt!40712 (not ((_ is Cons!2228) lt!40711)))))

(declare-fun b!135392 () Bool)

(declare-fun tp_is_empty!1505 () Bool)

(declare-fun tp!70960 () Bool)

(assert (=> b!135392 (= e!78595 (and tp_is_empty!1505 tp!70960))))

(declare-fun b!135393 () Bool)

(declare-fun res!63401 () Bool)

(assert (=> b!135393 (=> (not res!63401) (not e!78598))))

(assert (=> b!135393 (= res!63401 (and (not lt!40712) (= (h!7625 sub!16) (h!7625 lt!40711))))))

(declare-fun b!135394 () Bool)

(declare-fun res!63399 () Bool)

(assert (=> b!135394 (=> (not res!63399) (not e!78596))))

(assert (=> b!135394 (= res!63399 (not ((_ is Nil!2228) sub!16)))))

(declare-fun b!135395 () Bool)

(declare-fun res!63402 () Bool)

(assert (=> b!135395 (=> (not res!63402) (not e!78598))))

(assert (=> b!135395 (= res!63402 (subseq!75 (t!22820 sub!16) (t!22820 lt!40711)))))

(declare-fun b!135396 () Bool)

(declare-fun tail!296 (List!2234) List!2234)

(assert (=> b!135396 (= e!78598 (not (subseq!75 (t!22820 sub!16) (++!502 (tail!296 l1!1230) l2!1199))))))

(declare-fun b!135397 () Bool)

(declare-fun tp!70958 () Bool)

(assert (=> b!135397 (= e!78599 (and tp_is_empty!1505 tp!70958))))

(declare-fun b!135398 () Bool)

(declare-fun tp!70959 () Bool)

(assert (=> b!135398 (= e!78594 (and tp_is_empty!1505 tp!70959))))

(assert (= (and start!14142 res!63400) b!135394))

(assert (= (and b!135394 res!63399) b!135391))

(assert (= (and b!135391 (not res!63403)) b!135390))

(assert (= (and b!135391 res!63404) b!135393))

(assert (= (and b!135393 res!63401) b!135395))

(assert (= (and b!135395 res!63402) b!135396))

(assert (= (and start!14142 ((_ is Cons!2228) l1!1230)) b!135398))

(assert (= (and start!14142 ((_ is Cons!2228) l2!1199)) b!135397))

(assert (= (and start!14142 ((_ is Cons!2228) sub!16)) b!135392))

(declare-fun m!120159 () Bool)

(assert (=> start!14142 m!120159))

(declare-fun m!120161 () Bool)

(assert (=> start!14142 m!120161))

(declare-fun m!120163 () Bool)

(assert (=> b!135390 m!120163))

(declare-fun m!120165 () Bool)

(assert (=> b!135395 m!120165))

(declare-fun m!120167 () Bool)

(assert (=> b!135396 m!120167))

(assert (=> b!135396 m!120167))

(declare-fun m!120169 () Bool)

(assert (=> b!135396 m!120169))

(assert (=> b!135396 m!120169))

(declare-fun m!120171 () Bool)

(assert (=> b!135396 m!120171))

(check-sat (not b!135396) (not b!135392) (not b!135398) tp_is_empty!1505 (not b!135395) (not start!14142) (not b!135390) (not b!135397))
(check-sat)
(get-model)

(declare-fun b!135407 () Bool)

(declare-fun e!78609 () Bool)

(declare-fun e!78611 () Bool)

(assert (=> b!135407 (= e!78609 e!78611)))

(declare-fun res!63413 () Bool)

(assert (=> b!135407 (=> (not res!63413) (not e!78611))))

(assert (=> b!135407 (= res!63413 ((_ is Cons!2228) lt!40711))))

(declare-fun b!135408 () Bool)

(declare-fun e!78608 () Bool)

(assert (=> b!135408 (= e!78611 e!78608)))

(declare-fun res!63415 () Bool)

(assert (=> b!135408 (=> res!63415 e!78608)))

(declare-fun e!78610 () Bool)

(assert (=> b!135408 (= res!63415 e!78610)))

(declare-fun res!63416 () Bool)

(assert (=> b!135408 (=> (not res!63416) (not e!78610))))

(assert (=> b!135408 (= res!63416 (= (h!7625 sub!16) (h!7625 lt!40711)))))

(declare-fun b!135409 () Bool)

(assert (=> b!135409 (= e!78610 (subseq!75 (t!22820 sub!16) (t!22820 lt!40711)))))

(declare-fun d!32455 () Bool)

(declare-fun res!63414 () Bool)

(assert (=> d!32455 (=> res!63414 e!78609)))

(assert (=> d!32455 (= res!63414 ((_ is Nil!2228) sub!16))))

(assert (=> d!32455 (= (subseq!75 sub!16 lt!40711) e!78609)))

(declare-fun b!135410 () Bool)

(assert (=> b!135410 (= e!78608 (subseq!75 sub!16 (t!22820 lt!40711)))))

(assert (= (and d!32455 (not res!63414)) b!135407))

(assert (= (and b!135407 res!63413) b!135408))

(assert (= (and b!135408 res!63416) b!135409))

(assert (= (and b!135408 (not res!63415)) b!135410))

(assert (=> b!135409 m!120165))

(declare-fun m!120173 () Bool)

(assert (=> b!135410 m!120173))

(assert (=> start!14142 d!32455))

(declare-fun b!135435 () Bool)

(declare-fun e!78632 () List!2234)

(assert (=> b!135435 (= e!78632 l2!1199)))

(declare-fun b!135437 () Bool)

(declare-fun res!63438 () Bool)

(declare-fun e!78633 () Bool)

(assert (=> b!135437 (=> (not res!63438) (not e!78633))))

(declare-fun lt!40715 () List!2234)

(declare-fun size!2016 (List!2234) Int)

(assert (=> b!135437 (= res!63438 (= (size!2016 lt!40715) (+ (size!2016 l1!1230) (size!2016 l2!1199))))))

(declare-fun b!135438 () Bool)

(assert (=> b!135438 (= e!78633 (or (not (= l2!1199 Nil!2228)) (= lt!40715 l1!1230)))))

(declare-fun d!32459 () Bool)

(assert (=> d!32459 e!78633))

(declare-fun res!63437 () Bool)

(assert (=> d!32459 (=> (not res!63437) (not e!78633))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!328 (List!2234) (InoxSet B!861))

(assert (=> d!32459 (= res!63437 (= (content!328 lt!40715) ((_ map or) (content!328 l1!1230) (content!328 l2!1199))))))

(assert (=> d!32459 (= lt!40715 e!78632)))

(declare-fun c!28829 () Bool)

(assert (=> d!32459 (= c!28829 ((_ is Nil!2228) l1!1230))))

(assert (=> d!32459 (= (++!502 l1!1230 l2!1199) lt!40715)))

(declare-fun b!135436 () Bool)

(assert (=> b!135436 (= e!78632 (Cons!2228 (h!7625 l1!1230) (++!502 (t!22820 l1!1230) l2!1199)))))

(assert (= (and d!32459 c!28829) b!135435))

(assert (= (and d!32459 (not c!28829)) b!135436))

(assert (= (and d!32459 res!63437) b!135437))

(assert (= (and b!135437 res!63438) b!135438))

(declare-fun m!120181 () Bool)

(assert (=> b!135437 m!120181))

(declare-fun m!120183 () Bool)

(assert (=> b!135437 m!120183))

(declare-fun m!120185 () Bool)

(assert (=> b!135437 m!120185))

(declare-fun m!120187 () Bool)

(assert (=> d!32459 m!120187))

(declare-fun m!120189 () Bool)

(assert (=> d!32459 m!120189))

(declare-fun m!120191 () Bool)

(assert (=> d!32459 m!120191))

(declare-fun m!120193 () Bool)

(assert (=> b!135436 m!120193))

(assert (=> start!14142 d!32459))

(declare-fun b!135441 () Bool)

(declare-fun e!78635 () Bool)

(declare-fun e!78637 () Bool)

(assert (=> b!135441 (= e!78635 e!78637)))

(declare-fun res!63439 () Bool)

(assert (=> b!135441 (=> (not res!63439) (not e!78637))))

(assert (=> b!135441 (= res!63439 ((_ is Cons!2228) (++!502 (tail!296 l1!1230) l2!1199)))))

(declare-fun b!135442 () Bool)

(declare-fun e!78634 () Bool)

(assert (=> b!135442 (= e!78637 e!78634)))

(declare-fun res!63441 () Bool)

(assert (=> b!135442 (=> res!63441 e!78634)))

(declare-fun e!78636 () Bool)

(assert (=> b!135442 (= res!63441 e!78636)))

(declare-fun res!63442 () Bool)

(assert (=> b!135442 (=> (not res!63442) (not e!78636))))

(assert (=> b!135442 (= res!63442 (= (h!7625 (t!22820 sub!16)) (h!7625 (++!502 (tail!296 l1!1230) l2!1199))))))

(declare-fun b!135443 () Bool)

(assert (=> b!135443 (= e!78636 (subseq!75 (t!22820 (t!22820 sub!16)) (t!22820 (++!502 (tail!296 l1!1230) l2!1199))))))

(declare-fun d!32465 () Bool)

(declare-fun res!63440 () Bool)

(assert (=> d!32465 (=> res!63440 e!78635)))

(assert (=> d!32465 (= res!63440 ((_ is Nil!2228) (t!22820 sub!16)))))

(assert (=> d!32465 (= (subseq!75 (t!22820 sub!16) (++!502 (tail!296 l1!1230) l2!1199)) e!78635)))

(declare-fun b!135444 () Bool)

(assert (=> b!135444 (= e!78634 (subseq!75 (t!22820 sub!16) (t!22820 (++!502 (tail!296 l1!1230) l2!1199))))))

(assert (= (and d!32465 (not res!63440)) b!135441))

(assert (= (and b!135441 res!63439) b!135442))

(assert (= (and b!135442 res!63442) b!135443))

(assert (= (and b!135442 (not res!63441)) b!135444))

(declare-fun m!120195 () Bool)

(assert (=> b!135443 m!120195))

(declare-fun m!120197 () Bool)

(assert (=> b!135444 m!120197))

(assert (=> b!135396 d!32465))

(declare-fun b!135449 () Bool)

(declare-fun e!78642 () List!2234)

(assert (=> b!135449 (= e!78642 l2!1199)))

(declare-fun b!135451 () Bool)

(declare-fun res!63446 () Bool)

(declare-fun e!78643 () Bool)

(assert (=> b!135451 (=> (not res!63446) (not e!78643))))

(declare-fun lt!40718 () List!2234)

(assert (=> b!135451 (= res!63446 (= (size!2016 lt!40718) (+ (size!2016 (tail!296 l1!1230)) (size!2016 l2!1199))))))

(declare-fun b!135452 () Bool)

(assert (=> b!135452 (= e!78643 (or (not (= l2!1199 Nil!2228)) (= lt!40718 (tail!296 l1!1230))))))

(declare-fun d!32467 () Bool)

(assert (=> d!32467 e!78643))

(declare-fun res!63445 () Bool)

(assert (=> d!32467 (=> (not res!63445) (not e!78643))))

(assert (=> d!32467 (= res!63445 (= (content!328 lt!40718) ((_ map or) (content!328 (tail!296 l1!1230)) (content!328 l2!1199))))))

(assert (=> d!32467 (= lt!40718 e!78642)))

(declare-fun c!28832 () Bool)

(assert (=> d!32467 (= c!28832 ((_ is Nil!2228) (tail!296 l1!1230)))))

(assert (=> d!32467 (= (++!502 (tail!296 l1!1230) l2!1199) lt!40718)))

(declare-fun b!135450 () Bool)

(assert (=> b!135450 (= e!78642 (Cons!2228 (h!7625 (tail!296 l1!1230)) (++!502 (t!22820 (tail!296 l1!1230)) l2!1199)))))

(assert (= (and d!32467 c!28832) b!135449))

(assert (= (and d!32467 (not c!28832)) b!135450))

(assert (= (and d!32467 res!63445) b!135451))

(assert (= (and b!135451 res!63446) b!135452))

(declare-fun m!120199 () Bool)

(assert (=> b!135451 m!120199))

(assert (=> b!135451 m!120167))

(declare-fun m!120201 () Bool)

(assert (=> b!135451 m!120201))

(assert (=> b!135451 m!120185))

(declare-fun m!120203 () Bool)

(assert (=> d!32467 m!120203))

(assert (=> d!32467 m!120167))

(declare-fun m!120205 () Bool)

(assert (=> d!32467 m!120205))

(assert (=> d!32467 m!120191))

(declare-fun m!120207 () Bool)

(assert (=> b!135450 m!120207))

(assert (=> b!135396 d!32467))

(declare-fun d!32469 () Bool)

(assert (=> d!32469 (= (tail!296 l1!1230) (t!22820 l1!1230))))

(assert (=> b!135396 d!32469))

(declare-fun d!32471 () Bool)

(assert (=> d!32471 (= (isEmpty!870 l1!1230) ((_ is Nil!2228) l1!1230))))

(assert (=> b!135390 d!32471))

(declare-fun b!135455 () Bool)

(declare-fun e!78645 () Bool)

(declare-fun e!78647 () Bool)

(assert (=> b!135455 (= e!78645 e!78647)))

(declare-fun res!63449 () Bool)

(assert (=> b!135455 (=> (not res!63449) (not e!78647))))

(assert (=> b!135455 (= res!63449 ((_ is Cons!2228) (t!22820 lt!40711)))))

(declare-fun b!135456 () Bool)

(declare-fun e!78644 () Bool)

(assert (=> b!135456 (= e!78647 e!78644)))

(declare-fun res!63451 () Bool)

(assert (=> b!135456 (=> res!63451 e!78644)))

(declare-fun e!78646 () Bool)

(assert (=> b!135456 (= res!63451 e!78646)))

(declare-fun res!63452 () Bool)

(assert (=> b!135456 (=> (not res!63452) (not e!78646))))

(assert (=> b!135456 (= res!63452 (= (h!7625 (t!22820 sub!16)) (h!7625 (t!22820 lt!40711))))))

(declare-fun b!135457 () Bool)

(assert (=> b!135457 (= e!78646 (subseq!75 (t!22820 (t!22820 sub!16)) (t!22820 (t!22820 lt!40711))))))

(declare-fun d!32473 () Bool)

(declare-fun res!63450 () Bool)

(assert (=> d!32473 (=> res!63450 e!78645)))

(assert (=> d!32473 (= res!63450 ((_ is Nil!2228) (t!22820 sub!16)))))

(assert (=> d!32473 (= (subseq!75 (t!22820 sub!16) (t!22820 lt!40711)) e!78645)))

(declare-fun b!135458 () Bool)

(assert (=> b!135458 (= e!78644 (subseq!75 (t!22820 sub!16) (t!22820 (t!22820 lt!40711))))))

(assert (= (and d!32473 (not res!63450)) b!135455))

(assert (= (and b!135455 res!63449) b!135456))

(assert (= (and b!135456 res!63452) b!135457))

(assert (= (and b!135456 (not res!63451)) b!135458))

(declare-fun m!120209 () Bool)

(assert (=> b!135457 m!120209))

(declare-fun m!120211 () Bool)

(assert (=> b!135458 m!120211))

(assert (=> b!135395 d!32473))

(declare-fun b!135467 () Bool)

(declare-fun e!78654 () Bool)

(declare-fun tp!70963 () Bool)

(assert (=> b!135467 (= e!78654 (and tp_is_empty!1505 tp!70963))))

(assert (=> b!135392 (= tp!70960 e!78654)))

(assert (= (and b!135392 ((_ is Cons!2228) (t!22820 sub!16))) b!135467))

(declare-fun b!135472 () Bool)

(declare-fun e!78657 () Bool)

(declare-fun tp!70964 () Bool)

(assert (=> b!135472 (= e!78657 (and tp_is_empty!1505 tp!70964))))

(assert (=> b!135397 (= tp!70958 e!78657)))

(assert (= (and b!135397 ((_ is Cons!2228) (t!22820 l2!1199))) b!135472))

(declare-fun b!135473 () Bool)

(declare-fun e!78658 () Bool)

(declare-fun tp!70965 () Bool)

(assert (=> b!135473 (= e!78658 (and tp_is_empty!1505 tp!70965))))

(assert (=> b!135398 (= tp!70959 e!78658)))

(assert (= (and b!135398 ((_ is Cons!2228) (t!22820 l1!1230))) b!135473))

(check-sat (not b!135457) (not b!135444) (not d!32459) (not b!135467) (not d!32467) (not b!135443) (not b!135450) (not b!135472) (not b!135410) (not b!135437) (not b!135451) (not b!135473) (not b!135458) tp_is_empty!1505 (not b!135409) (not b!135436))
(check-sat)
