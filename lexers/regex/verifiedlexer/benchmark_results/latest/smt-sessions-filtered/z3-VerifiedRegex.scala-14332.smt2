; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748502 () Bool)

(assert start!748502)

(declare-fun b!7929261 () Bool)

(declare-fun e!4679407 () Bool)

(declare-fun e!4679402 () Bool)

(assert (=> b!7929261 (= e!4679407 e!4679402)))

(declare-fun res!3146278 () Bool)

(assert (=> b!7929261 (=> (not res!3146278) (not e!4679402))))

(declare-datatypes ((T!145818 0))(
  ( (T!145819 (val!32062 Int)) )
))
(declare-datatypes ((List!74574 0))(
  ( (Nil!74450) (Cons!74450 (h!80898 T!145818) (t!390205 List!74574)) )
))
(declare-datatypes ((IArray!31869 0))(
  ( (IArray!31870 (innerList!15992 List!74574)) )
))
(declare-datatypes ((Conc!15904 0))(
  ( (Node!15904 (left!56876 Conc!15904) (right!57206 Conc!15904) (csize!32038 Int) (cheight!16115 Int)) (Leaf!30237 (xs!19294 IArray!31869) (csize!32039 Int)) (Empty!15904) )
))
(declare-fun lt!2693711 () Conc!15904)

(declare-fun lt!2693720 () Int)

(declare-fun height!2219 (Conc!15904) Int)

(assert (=> b!7929261 (= res!3146278 (> (height!2219 lt!2693711) lt!2693720))))

(declare-fun t!4440 () Conc!15904)

(assert (=> b!7929261 (= lt!2693720 (+ 1 (height!2219 (left!56876 t!4440))))))

(declare-fun v!5484 () T!145818)

(declare-fun append!1148 (Conc!15904 T!145818) Conc!15904)

(assert (=> b!7929261 (= lt!2693711 (append!1148 (right!57206 t!4440) v!5484))))

(declare-fun e!4679408 () Bool)

(declare-fun tp!2358850 () Bool)

(declare-fun tp!2358851 () Bool)

(declare-fun b!7929262 () Bool)

(declare-fun inv!95730 (Conc!15904) Bool)

(assert (=> b!7929262 (= e!4679408 (and (inv!95730 (left!56876 t!4440)) tp!2358850 (inv!95730 (right!57206 t!4440)) tp!2358851))))

(declare-fun b!7929263 () Bool)

(declare-fun e!4679406 () Bool)

(assert (=> b!7929263 (= e!4679402 e!4679406)))

(declare-fun res!3146274 () Bool)

(assert (=> b!7929263 (=> (not res!3146274) (not e!4679406))))

(declare-fun lt!2693713 () Conc!15904)

(assert (=> b!7929263 (= res!3146274 (= (height!2219 lt!2693713) lt!2693720))))

(declare-fun <>!426 (Conc!15904 Conc!15904) Conc!15904)

(assert (=> b!7929263 (= lt!2693713 (<>!426 (left!56876 t!4440) (left!56876 lt!2693711)))))

(declare-fun res!3146273 () Bool)

(assert (=> start!748502 (=> (not res!3146273) (not e!4679407))))

(declare-fun isBalanced!4530 (Conc!15904) Bool)

(assert (=> start!748502 (= res!3146273 (isBalanced!4530 t!4440))))

(assert (=> start!748502 e!4679407))

(assert (=> start!748502 (and (inv!95730 t!4440) e!4679408)))

(declare-fun tp_is_empty!53233 () Bool)

(assert (=> start!748502 tp_is_empty!53233))

(declare-fun b!7929264 () Bool)

(declare-fun res!3146275 () Bool)

(assert (=> b!7929264 (=> (not res!3146275) (not e!4679407))))

(get-info :version)

(assert (=> b!7929264 (= res!3146275 (and (not ((_ is Empty!15904) t!4440)) ((_ is Node!15904) t!4440)))))

(declare-fun b!7929265 () Bool)

(declare-fun e!4679404 () Bool)

(assert (=> b!7929265 (= e!4679406 (not e!4679404))))

(declare-fun res!3146276 () Bool)

(assert (=> b!7929265 (=> (not res!3146276) (not e!4679404))))

(declare-fun lt!2693719 () Conc!15904)

(assert (=> b!7929265 (= res!3146276 (isBalanced!4530 lt!2693719))))

(assert (=> b!7929265 (= lt!2693719 (<>!426 lt!2693713 (right!57206 lt!2693711)))))

(declare-fun lt!2693714 () List!74574)

(declare-fun lt!2693717 () List!74574)

(declare-fun lt!2693712 () List!74574)

(declare-fun ++!18261 (List!74574 List!74574) List!74574)

(assert (=> b!7929265 (= (++!18261 (++!18261 lt!2693714 lt!2693717) lt!2693712) (++!18261 lt!2693714 (++!18261 lt!2693717 lt!2693712)))))

(declare-datatypes ((Unit!169569 0))(
  ( (Unit!169570) )
))
(declare-fun lt!2693716 () Unit!169569)

(declare-fun lemmaConcatAssociativity!3164 (List!74574 List!74574 List!74574) Unit!169569)

(assert (=> b!7929265 (= lt!2693716 (lemmaConcatAssociativity!3164 lt!2693714 lt!2693717 lt!2693712))))

(assert (=> b!7929265 (= lt!2693712 (Cons!74450 v!5484 Nil!74450))))

(declare-fun list!19417 (Conc!15904) List!74574)

(assert (=> b!7929265 (= lt!2693717 (list!19417 (right!57206 t!4440)))))

(declare-fun lt!2693715 () List!74574)

(declare-fun lt!2693721 () List!74574)

(assert (=> b!7929265 (= (++!18261 (++!18261 lt!2693714 lt!2693715) lt!2693721) (++!18261 lt!2693714 (++!18261 lt!2693715 lt!2693721)))))

(declare-fun lt!2693722 () Unit!169569)

(assert (=> b!7929265 (= lt!2693722 (lemmaConcatAssociativity!3164 lt!2693714 lt!2693715 lt!2693721))))

(assert (=> b!7929265 (= lt!2693721 (list!19417 (right!57206 lt!2693711)))))

(assert (=> b!7929265 (= lt!2693715 (list!19417 (left!56876 lt!2693711)))))

(assert (=> b!7929265 (= lt!2693714 (list!19417 (left!56876 t!4440)))))

(declare-fun b!7929266 () Bool)

(declare-fun res!3146277 () Bool)

(assert (=> b!7929266 (=> (not res!3146277) (not e!4679402))))

(assert (=> b!7929266 (= res!3146277 ((_ is Node!15904) lt!2693711))))

(declare-fun b!7929267 () Bool)

(declare-fun e!4679403 () Bool)

(declare-fun $colon+!317 (List!74574 T!145818) List!74574)

(assert (=> b!7929267 (= e!4679403 (= (list!19417 lt!2693719) ($colon+!317 (list!19417 t!4440) v!5484)))))

(declare-fun b!7929268 () Bool)

(assert (=> b!7929268 (= e!4679404 e!4679403)))

(declare-fun res!3146272 () Bool)

(assert (=> b!7929268 (=> (not res!3146272) (not e!4679403))))

(declare-fun lt!2693718 () Int)

(declare-fun lt!2693723 () Int)

(assert (=> b!7929268 (= res!3146272 (and (<= lt!2693718 lt!2693723) (<= lt!2693723 (+ 1 lt!2693718))))))

(assert (=> b!7929268 (= lt!2693723 (height!2219 lt!2693719))))

(assert (=> b!7929268 (= lt!2693718 (height!2219 t!4440))))

(declare-fun b!7929269 () Bool)

(declare-fun e!4679405 () Bool)

(declare-fun inv!95731 (IArray!31869) Bool)

(assert (=> b!7929269 (= e!4679408 (and (inv!95731 (xs!19294 t!4440)) e!4679405))))

(declare-fun b!7929270 () Bool)

(declare-fun tp!2358852 () Bool)

(assert (=> b!7929270 (= e!4679405 tp!2358852)))

(assert (= (and start!748502 res!3146273) b!7929264))

(assert (= (and b!7929264 res!3146275) b!7929261))

(assert (= (and b!7929261 res!3146278) b!7929266))

(assert (= (and b!7929266 res!3146277) b!7929263))

(assert (= (and b!7929263 res!3146274) b!7929265))

(assert (= (and b!7929265 res!3146276) b!7929268))

(assert (= (and b!7929268 res!3146272) b!7929267))

(assert (= (and start!748502 ((_ is Node!15904) t!4440)) b!7929262))

(assert (= b!7929269 b!7929270))

(assert (= (and start!748502 ((_ is Leaf!30237) t!4440)) b!7929269))

(declare-fun m!8312766 () Bool)

(assert (=> b!7929269 m!8312766))

(declare-fun m!8312768 () Bool)

(assert (=> b!7929267 m!8312768))

(declare-fun m!8312770 () Bool)

(assert (=> b!7929267 m!8312770))

(assert (=> b!7929267 m!8312770))

(declare-fun m!8312772 () Bool)

(assert (=> b!7929267 m!8312772))

(declare-fun m!8312774 () Bool)

(assert (=> b!7929263 m!8312774))

(declare-fun m!8312776 () Bool)

(assert (=> b!7929263 m!8312776))

(declare-fun m!8312778 () Bool)

(assert (=> start!748502 m!8312778))

(declare-fun m!8312780 () Bool)

(assert (=> start!748502 m!8312780))

(declare-fun m!8312782 () Bool)

(assert (=> b!7929262 m!8312782))

(declare-fun m!8312784 () Bool)

(assert (=> b!7929262 m!8312784))

(declare-fun m!8312786 () Bool)

(assert (=> b!7929268 m!8312786))

(declare-fun m!8312788 () Bool)

(assert (=> b!7929268 m!8312788))

(declare-fun m!8312790 () Bool)

(assert (=> b!7929265 m!8312790))

(declare-fun m!8312792 () Bool)

(assert (=> b!7929265 m!8312792))

(declare-fun m!8312794 () Bool)

(assert (=> b!7929265 m!8312794))

(declare-fun m!8312796 () Bool)

(assert (=> b!7929265 m!8312796))

(declare-fun m!8312798 () Bool)

(assert (=> b!7929265 m!8312798))

(declare-fun m!8312800 () Bool)

(assert (=> b!7929265 m!8312800))

(assert (=> b!7929265 m!8312798))

(declare-fun m!8312802 () Bool)

(assert (=> b!7929265 m!8312802))

(declare-fun m!8312804 () Bool)

(assert (=> b!7929265 m!8312804))

(declare-fun m!8312806 () Bool)

(assert (=> b!7929265 m!8312806))

(declare-fun m!8312808 () Bool)

(assert (=> b!7929265 m!8312808))

(declare-fun m!8312810 () Bool)

(assert (=> b!7929265 m!8312810))

(declare-fun m!8312812 () Bool)

(assert (=> b!7929265 m!8312812))

(declare-fun m!8312814 () Bool)

(assert (=> b!7929265 m!8312814))

(assert (=> b!7929265 m!8312814))

(declare-fun m!8312816 () Bool)

(assert (=> b!7929265 m!8312816))

(assert (=> b!7929265 m!8312810))

(assert (=> b!7929265 m!8312806))

(declare-fun m!8312818 () Bool)

(assert (=> b!7929265 m!8312818))

(declare-fun m!8312820 () Bool)

(assert (=> b!7929265 m!8312820))

(declare-fun m!8312822 () Bool)

(assert (=> b!7929261 m!8312822))

(declare-fun m!8312824 () Bool)

(assert (=> b!7929261 m!8312824))

(declare-fun m!8312826 () Bool)

(assert (=> b!7929261 m!8312826))

(check-sat (not b!7929261) tp_is_empty!53233 (not b!7929269) (not b!7929263) (not b!7929270) (not b!7929267) (not start!748502) (not b!7929265) (not b!7929268) (not b!7929262))
(check-sat)
(get-model)

(declare-fun d!2369215 () Bool)

(declare-fun size!43253 (List!74574) Int)

(assert (=> d!2369215 (= (inv!95731 (xs!19294 t!4440)) (<= (size!43253 (innerList!15992 (xs!19294 t!4440))) 2147483647))))

(declare-fun bs!1968925 () Bool)

(assert (= bs!1968925 d!2369215))

(declare-fun m!8312828 () Bool)

(assert (=> bs!1968925 m!8312828))

(assert (=> b!7929269 d!2369215))

(declare-fun b!7929283 () Bool)

(declare-fun res!3146294 () Bool)

(declare-fun e!4679413 () Bool)

(assert (=> b!7929283 (=> (not res!3146294) (not e!4679413))))

(assert (=> b!7929283 (= res!3146294 (isBalanced!4530 (left!56876 t!4440)))))

(declare-fun d!2369217 () Bool)

(declare-fun res!3146291 () Bool)

(declare-fun e!4679414 () Bool)

(assert (=> d!2369217 (=> res!3146291 e!4679414)))

(assert (=> d!2369217 (= res!3146291 (not ((_ is Node!15904) t!4440)))))

(assert (=> d!2369217 (= (isBalanced!4530 t!4440) e!4679414)))

(declare-fun b!7929284 () Bool)

(declare-fun res!3146296 () Bool)

(assert (=> b!7929284 (=> (not res!3146296) (not e!4679413))))

(assert (=> b!7929284 (= res!3146296 (isBalanced!4530 (right!57206 t!4440)))))

(declare-fun b!7929285 () Bool)

(declare-fun res!3146292 () Bool)

(assert (=> b!7929285 (=> (not res!3146292) (not e!4679413))))

(declare-fun isEmpty!42779 (Conc!15904) Bool)

(assert (=> b!7929285 (= res!3146292 (not (isEmpty!42779 (left!56876 t!4440))))))

(declare-fun b!7929286 () Bool)

(declare-fun res!3146293 () Bool)

(assert (=> b!7929286 (=> (not res!3146293) (not e!4679413))))

(assert (=> b!7929286 (= res!3146293 (<= (- (height!2219 (left!56876 t!4440)) (height!2219 (right!57206 t!4440))) 1))))

(declare-fun b!7929287 () Bool)

(assert (=> b!7929287 (= e!4679414 e!4679413)))

(declare-fun res!3146295 () Bool)

(assert (=> b!7929287 (=> (not res!3146295) (not e!4679413))))

(assert (=> b!7929287 (= res!3146295 (<= (- 1) (- (height!2219 (left!56876 t!4440)) (height!2219 (right!57206 t!4440)))))))

(declare-fun b!7929288 () Bool)

(assert (=> b!7929288 (= e!4679413 (not (isEmpty!42779 (right!57206 t!4440))))))

(assert (= (and d!2369217 (not res!3146291)) b!7929287))

(assert (= (and b!7929287 res!3146295) b!7929286))

(assert (= (and b!7929286 res!3146293) b!7929283))

(assert (= (and b!7929283 res!3146294) b!7929284))

(assert (= (and b!7929284 res!3146296) b!7929285))

(assert (= (and b!7929285 res!3146292) b!7929288))

(declare-fun m!8312830 () Bool)

(assert (=> b!7929288 m!8312830))

(assert (=> b!7929287 m!8312824))

(declare-fun m!8312832 () Bool)

(assert (=> b!7929287 m!8312832))

(declare-fun m!8312834 () Bool)

(assert (=> b!7929284 m!8312834))

(declare-fun m!8312836 () Bool)

(assert (=> b!7929283 m!8312836))

(assert (=> b!7929286 m!8312824))

(assert (=> b!7929286 m!8312832))

(declare-fun m!8312838 () Bool)

(assert (=> b!7929285 m!8312838))

(assert (=> start!748502 d!2369217))

(declare-fun d!2369219 () Bool)

(declare-fun c!1456168 () Bool)

(assert (=> d!2369219 (= c!1456168 ((_ is Node!15904) t!4440))))

(declare-fun e!4679419 () Bool)

(assert (=> d!2369219 (= (inv!95730 t!4440) e!4679419)))

(declare-fun b!7929295 () Bool)

(declare-fun inv!95732 (Conc!15904) Bool)

(assert (=> b!7929295 (= e!4679419 (inv!95732 t!4440))))

(declare-fun b!7929296 () Bool)

(declare-fun e!4679420 () Bool)

(assert (=> b!7929296 (= e!4679419 e!4679420)))

(declare-fun res!3146299 () Bool)

(assert (=> b!7929296 (= res!3146299 (not ((_ is Leaf!30237) t!4440)))))

(assert (=> b!7929296 (=> res!3146299 e!4679420)))

(declare-fun b!7929297 () Bool)

(declare-fun inv!95733 (Conc!15904) Bool)

(assert (=> b!7929297 (= e!4679420 (inv!95733 t!4440))))

(assert (= (and d!2369219 c!1456168) b!7929295))

(assert (= (and d!2369219 (not c!1456168)) b!7929296))

(assert (= (and b!7929296 (not res!3146299)) b!7929297))

(declare-fun m!8312840 () Bool)

(assert (=> b!7929295 m!8312840))

(declare-fun m!8312842 () Bool)

(assert (=> b!7929297 m!8312842))

(assert (=> start!748502 d!2369219))

(declare-fun d!2369221 () Bool)

(declare-fun e!4679434 () Bool)

(assert (=> d!2369221 e!4679434))

(declare-fun res!3146305 () Bool)

(assert (=> d!2369221 (=> (not res!3146305) (not e!4679434))))

(declare-fun lt!2693762 () List!74574)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15785 (List!74574) (InoxSet T!145818))

(assert (=> d!2369221 (= res!3146305 (= (content!15785 lt!2693762) ((_ map or) (content!15785 lt!2693717) (content!15785 lt!2693712))))))

(declare-fun e!4679433 () List!74574)

(assert (=> d!2369221 (= lt!2693762 e!4679433)))

(declare-fun c!1456179 () Bool)

(assert (=> d!2369221 (= c!1456179 ((_ is Nil!74450) lt!2693717))))

(assert (=> d!2369221 (= (++!18261 lt!2693717 lt!2693712) lt!2693762)))

(declare-fun b!7929323 () Bool)

(assert (=> b!7929323 (= e!4679433 (Cons!74450 (h!80898 lt!2693717) (++!18261 (t!390205 lt!2693717) lt!2693712)))))

(declare-fun b!7929322 () Bool)

(assert (=> b!7929322 (= e!4679433 lt!2693712)))

(declare-fun b!7929324 () Bool)

(declare-fun res!3146304 () Bool)

(assert (=> b!7929324 (=> (not res!3146304) (not e!4679434))))

(assert (=> b!7929324 (= res!3146304 (= (size!43253 lt!2693762) (+ (size!43253 lt!2693717) (size!43253 lt!2693712))))))

(declare-fun b!7929325 () Bool)

(assert (=> b!7929325 (= e!4679434 (or (not (= lt!2693712 Nil!74450)) (= lt!2693762 lt!2693717)))))

(assert (= (and d!2369221 c!1456179) b!7929322))

(assert (= (and d!2369221 (not c!1456179)) b!7929323))

(assert (= (and d!2369221 res!3146305) b!7929324))

(assert (= (and b!7929324 res!3146304) b!7929325))

(declare-fun m!8312844 () Bool)

(assert (=> d!2369221 m!8312844))

(declare-fun m!8312846 () Bool)

(assert (=> d!2369221 m!8312846))

(declare-fun m!8312848 () Bool)

(assert (=> d!2369221 m!8312848))

(declare-fun m!8312850 () Bool)

(assert (=> b!7929323 m!8312850))

(declare-fun m!8312852 () Bool)

(assert (=> b!7929324 m!8312852))

(declare-fun m!8312854 () Bool)

(assert (=> b!7929324 m!8312854))

(declare-fun m!8312856 () Bool)

(assert (=> b!7929324 m!8312856))

(assert (=> b!7929265 d!2369221))

(declare-fun d!2369223 () Bool)

(declare-fun e!4679438 () Bool)

(assert (=> d!2369223 e!4679438))

(declare-fun res!3146307 () Bool)

(assert (=> d!2369223 (=> (not res!3146307) (not e!4679438))))

(declare-fun lt!2693763 () List!74574)

(assert (=> d!2369223 (= res!3146307 (= (content!15785 lt!2693763) ((_ map or) (content!15785 lt!2693714) (content!15785 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun e!4679437 () List!74574)

(assert (=> d!2369223 (= lt!2693763 e!4679437)))

(declare-fun c!1456181 () Bool)

(assert (=> d!2369223 (= c!1456181 ((_ is Nil!74450) lt!2693714))))

(assert (=> d!2369223 (= (++!18261 lt!2693714 (++!18261 lt!2693717 lt!2693712)) lt!2693763)))

(declare-fun b!7929331 () Bool)

(assert (=> b!7929331 (= e!4679437 (Cons!74450 (h!80898 lt!2693714) (++!18261 (t!390205 lt!2693714) (++!18261 lt!2693717 lt!2693712))))))

(declare-fun b!7929330 () Bool)

(assert (=> b!7929330 (= e!4679437 (++!18261 lt!2693717 lt!2693712))))

(declare-fun b!7929332 () Bool)

(declare-fun res!3146306 () Bool)

(assert (=> b!7929332 (=> (not res!3146306) (not e!4679438))))

(assert (=> b!7929332 (= res!3146306 (= (size!43253 lt!2693763) (+ (size!43253 lt!2693714) (size!43253 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun b!7929333 () Bool)

(assert (=> b!7929333 (= e!4679438 (or (not (= (++!18261 lt!2693717 lt!2693712) Nil!74450)) (= lt!2693763 lt!2693714)))))

(assert (= (and d!2369223 c!1456181) b!7929330))

(assert (= (and d!2369223 (not c!1456181)) b!7929331))

(assert (= (and d!2369223 res!3146307) b!7929332))

(assert (= (and b!7929332 res!3146306) b!7929333))

(declare-fun m!8312858 () Bool)

(assert (=> d!2369223 m!8312858))

(declare-fun m!8312860 () Bool)

(assert (=> d!2369223 m!8312860))

(assert (=> d!2369223 m!8312798))

(declare-fun m!8312862 () Bool)

(assert (=> d!2369223 m!8312862))

(assert (=> b!7929331 m!8312798))

(declare-fun m!8312864 () Bool)

(assert (=> b!7929331 m!8312864))

(declare-fun m!8312866 () Bool)

(assert (=> b!7929332 m!8312866))

(declare-fun m!8312868 () Bool)

(assert (=> b!7929332 m!8312868))

(assert (=> b!7929332 m!8312798))

(declare-fun m!8312870 () Bool)

(assert (=> b!7929332 m!8312870))

(assert (=> b!7929265 d!2369223))

(declare-fun d!2369225 () Bool)

(declare-fun c!1456187 () Bool)

(assert (=> d!2369225 (= c!1456187 ((_ is Empty!15904) (right!57206 lt!2693711)))))

(declare-fun e!4679445 () List!74574)

(assert (=> d!2369225 (= (list!19417 (right!57206 lt!2693711)) e!4679445)))

(declare-fun b!7929348 () Bool)

(assert (=> b!7929348 (= e!4679445 Nil!74450)))

(declare-fun b!7929351 () Bool)

(declare-fun e!4679446 () List!74574)

(assert (=> b!7929351 (= e!4679446 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693711))) (list!19417 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun b!7929350 () Bool)

(declare-fun list!19419 (IArray!31869) List!74574)

(assert (=> b!7929350 (= e!4679446 (list!19419 (xs!19294 (right!57206 lt!2693711))))))

(declare-fun b!7929349 () Bool)

(assert (=> b!7929349 (= e!4679445 e!4679446)))

(declare-fun c!1456188 () Bool)

(assert (=> b!7929349 (= c!1456188 ((_ is Leaf!30237) (right!57206 lt!2693711)))))

(assert (= (and d!2369225 c!1456187) b!7929348))

(assert (= (and d!2369225 (not c!1456187)) b!7929349))

(assert (= (and b!7929349 c!1456188) b!7929350))

(assert (= (and b!7929349 (not c!1456188)) b!7929351))

(declare-fun m!8312872 () Bool)

(assert (=> b!7929351 m!8312872))

(declare-fun m!8312874 () Bool)

(assert (=> b!7929351 m!8312874))

(assert (=> b!7929351 m!8312872))

(assert (=> b!7929351 m!8312874))

(declare-fun m!8312876 () Bool)

(assert (=> b!7929351 m!8312876))

(declare-fun m!8312878 () Bool)

(assert (=> b!7929350 m!8312878))

(assert (=> b!7929265 d!2369225))

(declare-fun d!2369227 () Bool)

(declare-fun e!4679448 () Bool)

(assert (=> d!2369227 e!4679448))

(declare-fun res!3146315 () Bool)

(assert (=> d!2369227 (=> (not res!3146315) (not e!4679448))))

(declare-fun lt!2693764 () List!74574)

(assert (=> d!2369227 (= res!3146315 (= (content!15785 lt!2693764) ((_ map or) (content!15785 (++!18261 lt!2693714 lt!2693715)) (content!15785 lt!2693721))))))

(declare-fun e!4679447 () List!74574)

(assert (=> d!2369227 (= lt!2693764 e!4679447)))

(declare-fun c!1456189 () Bool)

(assert (=> d!2369227 (= c!1456189 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693715)))))

(assert (=> d!2369227 (= (++!18261 (++!18261 lt!2693714 lt!2693715) lt!2693721) lt!2693764)))

(declare-fun b!7929353 () Bool)

(assert (=> b!7929353 (= e!4679447 (Cons!74450 (h!80898 (++!18261 lt!2693714 lt!2693715)) (++!18261 (t!390205 (++!18261 lt!2693714 lt!2693715)) lt!2693721)))))

(declare-fun b!7929352 () Bool)

(assert (=> b!7929352 (= e!4679447 lt!2693721)))

(declare-fun b!7929354 () Bool)

(declare-fun res!3146314 () Bool)

(assert (=> b!7929354 (=> (not res!3146314) (not e!4679448))))

(assert (=> b!7929354 (= res!3146314 (= (size!43253 lt!2693764) (+ (size!43253 (++!18261 lt!2693714 lt!2693715)) (size!43253 lt!2693721))))))

(declare-fun b!7929355 () Bool)

(assert (=> b!7929355 (= e!4679448 (or (not (= lt!2693721 Nil!74450)) (= lt!2693764 (++!18261 lt!2693714 lt!2693715))))))

(assert (= (and d!2369227 c!1456189) b!7929352))

(assert (= (and d!2369227 (not c!1456189)) b!7929353))

(assert (= (and d!2369227 res!3146315) b!7929354))

(assert (= (and b!7929354 res!3146314) b!7929355))

(declare-fun m!8312880 () Bool)

(assert (=> d!2369227 m!8312880))

(assert (=> d!2369227 m!8312806))

(declare-fun m!8312882 () Bool)

(assert (=> d!2369227 m!8312882))

(declare-fun m!8312884 () Bool)

(assert (=> d!2369227 m!8312884))

(declare-fun m!8312886 () Bool)

(assert (=> b!7929353 m!8312886))

(declare-fun m!8312888 () Bool)

(assert (=> b!7929354 m!8312888))

(assert (=> b!7929354 m!8312806))

(declare-fun m!8312890 () Bool)

(assert (=> b!7929354 m!8312890))

(declare-fun m!8312892 () Bool)

(assert (=> b!7929354 m!8312892))

(assert (=> b!7929265 d!2369227))

(declare-fun d!2369229 () Bool)

(assert (=> d!2369229 (= (++!18261 (++!18261 lt!2693714 lt!2693715) lt!2693721) (++!18261 lt!2693714 (++!18261 lt!2693715 lt!2693721)))))

(declare-fun lt!2693767 () Unit!169569)

(declare-fun choose!59834 (List!74574 List!74574 List!74574) Unit!169569)

(assert (=> d!2369229 (= lt!2693767 (choose!59834 lt!2693714 lt!2693715 lt!2693721))))

(assert (=> d!2369229 (= (lemmaConcatAssociativity!3164 lt!2693714 lt!2693715 lt!2693721) lt!2693767)))

(declare-fun bs!1968926 () Bool)

(assert (= bs!1968926 d!2369229))

(assert (=> bs!1968926 m!8312806))

(assert (=> bs!1968926 m!8312814))

(assert (=> bs!1968926 m!8312816))

(declare-fun m!8312894 () Bool)

(assert (=> bs!1968926 m!8312894))

(assert (=> bs!1968926 m!8312806))

(assert (=> bs!1968926 m!8312808))

(assert (=> bs!1968926 m!8312814))

(assert (=> b!7929265 d!2369229))

(declare-fun d!2369231 () Bool)

(declare-fun e!4679450 () Bool)

(assert (=> d!2369231 e!4679450))

(declare-fun res!3146317 () Bool)

(assert (=> d!2369231 (=> (not res!3146317) (not e!4679450))))

(declare-fun lt!2693768 () List!74574)

(assert (=> d!2369231 (= res!3146317 (= (content!15785 lt!2693768) ((_ map or) (content!15785 (++!18261 lt!2693714 lt!2693717)) (content!15785 lt!2693712))))))

(declare-fun e!4679449 () List!74574)

(assert (=> d!2369231 (= lt!2693768 e!4679449)))

(declare-fun c!1456190 () Bool)

(assert (=> d!2369231 (= c!1456190 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693717)))))

(assert (=> d!2369231 (= (++!18261 (++!18261 lt!2693714 lt!2693717) lt!2693712) lt!2693768)))

(declare-fun b!7929357 () Bool)

(assert (=> b!7929357 (= e!4679449 (Cons!74450 (h!80898 (++!18261 lt!2693714 lt!2693717)) (++!18261 (t!390205 (++!18261 lt!2693714 lt!2693717)) lt!2693712)))))

(declare-fun b!7929356 () Bool)

(assert (=> b!7929356 (= e!4679449 lt!2693712)))

(declare-fun b!7929358 () Bool)

(declare-fun res!3146316 () Bool)

(assert (=> b!7929358 (=> (not res!3146316) (not e!4679450))))

(assert (=> b!7929358 (= res!3146316 (= (size!43253 lt!2693768) (+ (size!43253 (++!18261 lt!2693714 lt!2693717)) (size!43253 lt!2693712))))))

(declare-fun b!7929359 () Bool)

(assert (=> b!7929359 (= e!4679450 (or (not (= lt!2693712 Nil!74450)) (= lt!2693768 (++!18261 lt!2693714 lt!2693717))))))

(assert (= (and d!2369231 c!1456190) b!7929356))

(assert (= (and d!2369231 (not c!1456190)) b!7929357))

(assert (= (and d!2369231 res!3146317) b!7929358))

(assert (= (and b!7929358 res!3146316) b!7929359))

(declare-fun m!8312896 () Bool)

(assert (=> d!2369231 m!8312896))

(assert (=> d!2369231 m!8312810))

(declare-fun m!8312898 () Bool)

(assert (=> d!2369231 m!8312898))

(assert (=> d!2369231 m!8312848))

(declare-fun m!8312900 () Bool)

(assert (=> b!7929357 m!8312900))

(declare-fun m!8312902 () Bool)

(assert (=> b!7929358 m!8312902))

(assert (=> b!7929358 m!8312810))

(declare-fun m!8312904 () Bool)

(assert (=> b!7929358 m!8312904))

(assert (=> b!7929358 m!8312856))

(assert (=> b!7929265 d!2369231))

(declare-fun d!2369233 () Bool)

(declare-fun e!4679452 () Bool)

(assert (=> d!2369233 e!4679452))

(declare-fun res!3146319 () Bool)

(assert (=> d!2369233 (=> (not res!3146319) (not e!4679452))))

(declare-fun lt!2693769 () List!74574)

(assert (=> d!2369233 (= res!3146319 (= (content!15785 lt!2693769) ((_ map or) (content!15785 lt!2693715) (content!15785 lt!2693721))))))

(declare-fun e!4679451 () List!74574)

(assert (=> d!2369233 (= lt!2693769 e!4679451)))

(declare-fun c!1456191 () Bool)

(assert (=> d!2369233 (= c!1456191 ((_ is Nil!74450) lt!2693715))))

(assert (=> d!2369233 (= (++!18261 lt!2693715 lt!2693721) lt!2693769)))

(declare-fun b!7929361 () Bool)

(assert (=> b!7929361 (= e!4679451 (Cons!74450 (h!80898 lt!2693715) (++!18261 (t!390205 lt!2693715) lt!2693721)))))

(declare-fun b!7929360 () Bool)

(assert (=> b!7929360 (= e!4679451 lt!2693721)))

(declare-fun b!7929362 () Bool)

(declare-fun res!3146318 () Bool)

(assert (=> b!7929362 (=> (not res!3146318) (not e!4679452))))

(assert (=> b!7929362 (= res!3146318 (= (size!43253 lt!2693769) (+ (size!43253 lt!2693715) (size!43253 lt!2693721))))))

(declare-fun b!7929363 () Bool)

(assert (=> b!7929363 (= e!4679452 (or (not (= lt!2693721 Nil!74450)) (= lt!2693769 lt!2693715)))))

(assert (= (and d!2369233 c!1456191) b!7929360))

(assert (= (and d!2369233 (not c!1456191)) b!7929361))

(assert (= (and d!2369233 res!3146319) b!7929362))

(assert (= (and b!7929362 res!3146318) b!7929363))

(declare-fun m!8312906 () Bool)

(assert (=> d!2369233 m!8312906))

(declare-fun m!8312908 () Bool)

(assert (=> d!2369233 m!8312908))

(assert (=> d!2369233 m!8312884))

(declare-fun m!8312910 () Bool)

(assert (=> b!7929361 m!8312910))

(declare-fun m!8312912 () Bool)

(assert (=> b!7929362 m!8312912))

(declare-fun m!8312914 () Bool)

(assert (=> b!7929362 m!8312914))

(assert (=> b!7929362 m!8312892))

(assert (=> b!7929265 d!2369233))

(declare-fun d!2369235 () Bool)

(declare-fun e!4679454 () Bool)

(assert (=> d!2369235 e!4679454))

(declare-fun res!3146321 () Bool)

(assert (=> d!2369235 (=> (not res!3146321) (not e!4679454))))

(declare-fun lt!2693770 () List!74574)

(assert (=> d!2369235 (= res!3146321 (= (content!15785 lt!2693770) ((_ map or) (content!15785 lt!2693714) (content!15785 lt!2693717))))))

(declare-fun e!4679453 () List!74574)

(assert (=> d!2369235 (= lt!2693770 e!4679453)))

(declare-fun c!1456192 () Bool)

(assert (=> d!2369235 (= c!1456192 ((_ is Nil!74450) lt!2693714))))

(assert (=> d!2369235 (= (++!18261 lt!2693714 lt!2693717) lt!2693770)))

(declare-fun b!7929365 () Bool)

(assert (=> b!7929365 (= e!4679453 (Cons!74450 (h!80898 lt!2693714) (++!18261 (t!390205 lt!2693714) lt!2693717)))))

(declare-fun b!7929364 () Bool)

(assert (=> b!7929364 (= e!4679453 lt!2693717)))

(declare-fun b!7929366 () Bool)

(declare-fun res!3146320 () Bool)

(assert (=> b!7929366 (=> (not res!3146320) (not e!4679454))))

(assert (=> b!7929366 (= res!3146320 (= (size!43253 lt!2693770) (+ (size!43253 lt!2693714) (size!43253 lt!2693717))))))

(declare-fun b!7929367 () Bool)

(assert (=> b!7929367 (= e!4679454 (or (not (= lt!2693717 Nil!74450)) (= lt!2693770 lt!2693714)))))

(assert (= (and d!2369235 c!1456192) b!7929364))

(assert (= (and d!2369235 (not c!1456192)) b!7929365))

(assert (= (and d!2369235 res!3146321) b!7929366))

(assert (= (and b!7929366 res!3146320) b!7929367))

(declare-fun m!8312916 () Bool)

(assert (=> d!2369235 m!8312916))

(assert (=> d!2369235 m!8312860))

(assert (=> d!2369235 m!8312846))

(declare-fun m!8312918 () Bool)

(assert (=> b!7929365 m!8312918))

(declare-fun m!8312920 () Bool)

(assert (=> b!7929366 m!8312920))

(assert (=> b!7929366 m!8312868))

(assert (=> b!7929366 m!8312854))

(assert (=> b!7929265 d!2369235))

(declare-fun d!2369237 () Bool)

(declare-fun e!4679462 () Bool)

(assert (=> d!2369237 e!4679462))

(declare-fun res!3146326 () Bool)

(assert (=> d!2369237 (=> (not res!3146326) (not e!4679462))))

(declare-fun lt!2693789 () List!74574)

(assert (=> d!2369237 (= res!3146326 (= (content!15785 lt!2693789) ((_ map or) (content!15785 lt!2693714) (content!15785 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun e!4679461 () List!74574)

(assert (=> d!2369237 (= lt!2693789 e!4679461)))

(declare-fun c!1456198 () Bool)

(assert (=> d!2369237 (= c!1456198 ((_ is Nil!74450) lt!2693714))))

(assert (=> d!2369237 (= (++!18261 lt!2693714 (++!18261 lt!2693715 lt!2693721)) lt!2693789)))

(declare-fun b!7929382 () Bool)

(assert (=> b!7929382 (= e!4679461 (Cons!74450 (h!80898 lt!2693714) (++!18261 (t!390205 lt!2693714) (++!18261 lt!2693715 lt!2693721))))))

(declare-fun b!7929381 () Bool)

(assert (=> b!7929381 (= e!4679461 (++!18261 lt!2693715 lt!2693721))))

(declare-fun b!7929383 () Bool)

(declare-fun res!3146325 () Bool)

(assert (=> b!7929383 (=> (not res!3146325) (not e!4679462))))

(assert (=> b!7929383 (= res!3146325 (= (size!43253 lt!2693789) (+ (size!43253 lt!2693714) (size!43253 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun b!7929384 () Bool)

(assert (=> b!7929384 (= e!4679462 (or (not (= (++!18261 lt!2693715 lt!2693721) Nil!74450)) (= lt!2693789 lt!2693714)))))

(assert (= (and d!2369237 c!1456198) b!7929381))

(assert (= (and d!2369237 (not c!1456198)) b!7929382))

(assert (= (and d!2369237 res!3146326) b!7929383))

(assert (= (and b!7929383 res!3146325) b!7929384))

(declare-fun m!8312922 () Bool)

(assert (=> d!2369237 m!8312922))

(assert (=> d!2369237 m!8312860))

(assert (=> d!2369237 m!8312814))

(declare-fun m!8312924 () Bool)

(assert (=> d!2369237 m!8312924))

(assert (=> b!7929382 m!8312814))

(declare-fun m!8312926 () Bool)

(assert (=> b!7929382 m!8312926))

(declare-fun m!8312928 () Bool)

(assert (=> b!7929383 m!8312928))

(assert (=> b!7929383 m!8312868))

(assert (=> b!7929383 m!8312814))

(declare-fun m!8312930 () Bool)

(assert (=> b!7929383 m!8312930))

(assert (=> b!7929265 d!2369237))

(declare-fun d!2369239 () Bool)

(declare-fun e!4679464 () Bool)

(assert (=> d!2369239 e!4679464))

(declare-fun res!3146328 () Bool)

(assert (=> d!2369239 (=> (not res!3146328) (not e!4679464))))

(declare-fun lt!2693790 () List!74574)

(assert (=> d!2369239 (= res!3146328 (= (content!15785 lt!2693790) ((_ map or) (content!15785 lt!2693714) (content!15785 lt!2693715))))))

(declare-fun e!4679463 () List!74574)

(assert (=> d!2369239 (= lt!2693790 e!4679463)))

(declare-fun c!1456199 () Bool)

(assert (=> d!2369239 (= c!1456199 ((_ is Nil!74450) lt!2693714))))

(assert (=> d!2369239 (= (++!18261 lt!2693714 lt!2693715) lt!2693790)))

(declare-fun b!7929386 () Bool)

(assert (=> b!7929386 (= e!4679463 (Cons!74450 (h!80898 lt!2693714) (++!18261 (t!390205 lt!2693714) lt!2693715)))))

(declare-fun b!7929385 () Bool)

(assert (=> b!7929385 (= e!4679463 lt!2693715)))

(declare-fun b!7929387 () Bool)

(declare-fun res!3146327 () Bool)

(assert (=> b!7929387 (=> (not res!3146327) (not e!4679464))))

(assert (=> b!7929387 (= res!3146327 (= (size!43253 lt!2693790) (+ (size!43253 lt!2693714) (size!43253 lt!2693715))))))

(declare-fun b!7929388 () Bool)

(assert (=> b!7929388 (= e!4679464 (or (not (= lt!2693715 Nil!74450)) (= lt!2693790 lt!2693714)))))

(assert (= (and d!2369239 c!1456199) b!7929385))

(assert (= (and d!2369239 (not c!1456199)) b!7929386))

(assert (= (and d!2369239 res!3146328) b!7929387))

(assert (= (and b!7929387 res!3146327) b!7929388))

(declare-fun m!8312932 () Bool)

(assert (=> d!2369239 m!8312932))

(assert (=> d!2369239 m!8312860))

(assert (=> d!2369239 m!8312908))

(declare-fun m!8312934 () Bool)

(assert (=> b!7929386 m!8312934))

(declare-fun m!8312936 () Bool)

(assert (=> b!7929387 m!8312936))

(assert (=> b!7929387 m!8312868))

(assert (=> b!7929387 m!8312914))

(assert (=> b!7929265 d!2369239))

(declare-fun d!2369241 () Bool)

(declare-fun c!1456200 () Bool)

(assert (=> d!2369241 (= c!1456200 ((_ is Empty!15904) (right!57206 t!4440)))))

(declare-fun e!4679465 () List!74574)

(assert (=> d!2369241 (= (list!19417 (right!57206 t!4440)) e!4679465)))

(declare-fun b!7929389 () Bool)

(assert (=> b!7929389 (= e!4679465 Nil!74450)))

(declare-fun b!7929392 () Bool)

(declare-fun e!4679466 () List!74574)

(assert (=> b!7929392 (= e!4679466 (++!18261 (list!19417 (left!56876 (right!57206 t!4440))) (list!19417 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7929391 () Bool)

(assert (=> b!7929391 (= e!4679466 (list!19419 (xs!19294 (right!57206 t!4440))))))

(declare-fun b!7929390 () Bool)

(assert (=> b!7929390 (= e!4679465 e!4679466)))

(declare-fun c!1456201 () Bool)

(assert (=> b!7929390 (= c!1456201 ((_ is Leaf!30237) (right!57206 t!4440)))))

(assert (= (and d!2369241 c!1456200) b!7929389))

(assert (= (and d!2369241 (not c!1456200)) b!7929390))

(assert (= (and b!7929390 c!1456201) b!7929391))

(assert (= (and b!7929390 (not c!1456201)) b!7929392))

(declare-fun m!8312938 () Bool)

(assert (=> b!7929392 m!8312938))

(declare-fun m!8312940 () Bool)

(assert (=> b!7929392 m!8312940))

(assert (=> b!7929392 m!8312938))

(assert (=> b!7929392 m!8312940))

(declare-fun m!8312942 () Bool)

(assert (=> b!7929392 m!8312942))

(declare-fun m!8312944 () Bool)

(assert (=> b!7929391 m!8312944))

(assert (=> b!7929265 d!2369241))

(declare-fun d!2369243 () Bool)

(assert (=> d!2369243 (= (++!18261 (++!18261 lt!2693714 lt!2693717) lt!2693712) (++!18261 lt!2693714 (++!18261 lt!2693717 lt!2693712)))))

(declare-fun lt!2693791 () Unit!169569)

(assert (=> d!2369243 (= lt!2693791 (choose!59834 lt!2693714 lt!2693717 lt!2693712))))

(assert (=> d!2369243 (= (lemmaConcatAssociativity!3164 lt!2693714 lt!2693717 lt!2693712) lt!2693791)))

(declare-fun bs!1968927 () Bool)

(assert (= bs!1968927 d!2369243))

(assert (=> bs!1968927 m!8312810))

(assert (=> bs!1968927 m!8312798))

(assert (=> bs!1968927 m!8312802))

(declare-fun m!8312956 () Bool)

(assert (=> bs!1968927 m!8312956))

(assert (=> bs!1968927 m!8312810))

(assert (=> bs!1968927 m!8312812))

(assert (=> bs!1968927 m!8312798))

(assert (=> b!7929265 d!2369243))

(declare-fun b!7929393 () Bool)

(declare-fun res!3146332 () Bool)

(declare-fun e!4679467 () Bool)

(assert (=> b!7929393 (=> (not res!3146332) (not e!4679467))))

(assert (=> b!7929393 (= res!3146332 (isBalanced!4530 (left!56876 lt!2693719)))))

(declare-fun d!2369245 () Bool)

(declare-fun res!3146329 () Bool)

(declare-fun e!4679468 () Bool)

(assert (=> d!2369245 (=> res!3146329 e!4679468)))

(assert (=> d!2369245 (= res!3146329 (not ((_ is Node!15904) lt!2693719)))))

(assert (=> d!2369245 (= (isBalanced!4530 lt!2693719) e!4679468)))

(declare-fun b!7929394 () Bool)

(declare-fun res!3146334 () Bool)

(assert (=> b!7929394 (=> (not res!3146334) (not e!4679467))))

(assert (=> b!7929394 (= res!3146334 (isBalanced!4530 (right!57206 lt!2693719)))))

(declare-fun b!7929395 () Bool)

(declare-fun res!3146330 () Bool)

(assert (=> b!7929395 (=> (not res!3146330) (not e!4679467))))

(assert (=> b!7929395 (= res!3146330 (not (isEmpty!42779 (left!56876 lt!2693719))))))

(declare-fun b!7929396 () Bool)

(declare-fun res!3146331 () Bool)

(assert (=> b!7929396 (=> (not res!3146331) (not e!4679467))))

(assert (=> b!7929396 (= res!3146331 (<= (- (height!2219 (left!56876 lt!2693719)) (height!2219 (right!57206 lt!2693719))) 1))))

(declare-fun b!7929397 () Bool)

(assert (=> b!7929397 (= e!4679468 e!4679467)))

(declare-fun res!3146333 () Bool)

(assert (=> b!7929397 (=> (not res!3146333) (not e!4679467))))

(assert (=> b!7929397 (= res!3146333 (<= (- 1) (- (height!2219 (left!56876 lt!2693719)) (height!2219 (right!57206 lt!2693719)))))))

(declare-fun b!7929398 () Bool)

(assert (=> b!7929398 (= e!4679467 (not (isEmpty!42779 (right!57206 lt!2693719))))))

(assert (= (and d!2369245 (not res!3146329)) b!7929397))

(assert (= (and b!7929397 res!3146333) b!7929396))

(assert (= (and b!7929396 res!3146331) b!7929393))

(assert (= (and b!7929393 res!3146332) b!7929394))

(assert (= (and b!7929394 res!3146334) b!7929395))

(assert (= (and b!7929395 res!3146330) b!7929398))

(declare-fun m!8313006 () Bool)

(assert (=> b!7929398 m!8313006))

(declare-fun m!8313008 () Bool)

(assert (=> b!7929397 m!8313008))

(declare-fun m!8313010 () Bool)

(assert (=> b!7929397 m!8313010))

(declare-fun m!8313012 () Bool)

(assert (=> b!7929394 m!8313012))

(declare-fun m!8313014 () Bool)

(assert (=> b!7929393 m!8313014))

(assert (=> b!7929396 m!8313008))

(assert (=> b!7929396 m!8313010))

(declare-fun m!8313016 () Bool)

(assert (=> b!7929395 m!8313016))

(assert (=> b!7929265 d!2369245))

(declare-fun d!2369249 () Bool)

(declare-fun lt!2693799 () Conc!15904)

(assert (=> d!2369249 (= (list!19417 lt!2693799) (++!18261 (list!19417 lt!2693713) (list!19417 (right!57206 lt!2693711))))))

(declare-fun e!4679484 () Conc!15904)

(assert (=> d!2369249 (= lt!2693799 e!4679484)))

(declare-fun c!1456211 () Bool)

(assert (=> d!2369249 (= c!1456211 (= lt!2693713 Empty!15904))))

(assert (=> d!2369249 (= (<>!426 lt!2693713 (right!57206 lt!2693711)) lt!2693799)))

(declare-fun b!7929428 () Bool)

(declare-fun e!4679483 () Conc!15904)

(assert (=> b!7929428 (= e!4679484 e!4679483)))

(declare-fun c!1456212 () Bool)

(assert (=> b!7929428 (= c!1456212 (= (right!57206 lt!2693711) Empty!15904))))

(declare-fun b!7929427 () Bool)

(assert (=> b!7929427 (= e!4679484 (right!57206 lt!2693711))))

(declare-fun b!7929429 () Bool)

(assert (=> b!7929429 (= e!4679483 lt!2693713)))

(declare-fun b!7929430 () Bool)

(declare-fun size!43255 (Conc!15904) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7929430 (= e!4679483 (Node!15904 lt!2693713 (right!57206 lt!2693711) (+ (size!43255 lt!2693713) (size!43255 (right!57206 lt!2693711))) (+ (max!0 (height!2219 lt!2693713) (height!2219 (right!57206 lt!2693711))) 1)))))

(assert (= (and d!2369249 c!1456211) b!7929427))

(assert (= (and d!2369249 (not c!1456211)) b!7929428))

(assert (= (and b!7929428 c!1456212) b!7929429))

(assert (= (and b!7929428 (not c!1456212)) b!7929430))

(declare-fun m!8313056 () Bool)

(assert (=> d!2369249 m!8313056))

(declare-fun m!8313058 () Bool)

(assert (=> d!2369249 m!8313058))

(assert (=> d!2369249 m!8312794))

(assert (=> d!2369249 m!8313058))

(assert (=> d!2369249 m!8312794))

(declare-fun m!8313060 () Bool)

(assert (=> d!2369249 m!8313060))

(declare-fun m!8313062 () Bool)

(assert (=> b!7929430 m!8313062))

(assert (=> b!7929430 m!8312774))

(declare-fun m!8313064 () Bool)

(assert (=> b!7929430 m!8313064))

(declare-fun m!8313066 () Bool)

(assert (=> b!7929430 m!8313066))

(declare-fun m!8313068 () Bool)

(assert (=> b!7929430 m!8313068))

(assert (=> b!7929430 m!8312774))

(assert (=> b!7929430 m!8313064))

(assert (=> b!7929265 d!2369249))

(declare-fun d!2369257 () Bool)

(declare-fun c!1456213 () Bool)

(assert (=> d!2369257 (= c!1456213 ((_ is Empty!15904) (left!56876 t!4440)))))

(declare-fun e!4679485 () List!74574)

(assert (=> d!2369257 (= (list!19417 (left!56876 t!4440)) e!4679485)))

(declare-fun b!7929431 () Bool)

(assert (=> b!7929431 (= e!4679485 Nil!74450)))

(declare-fun b!7929434 () Bool)

(declare-fun e!4679486 () List!74574)

(assert (=> b!7929434 (= e!4679486 (++!18261 (list!19417 (left!56876 (left!56876 t!4440))) (list!19417 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7929433 () Bool)

(assert (=> b!7929433 (= e!4679486 (list!19419 (xs!19294 (left!56876 t!4440))))))

(declare-fun b!7929432 () Bool)

(assert (=> b!7929432 (= e!4679485 e!4679486)))

(declare-fun c!1456214 () Bool)

(assert (=> b!7929432 (= c!1456214 ((_ is Leaf!30237) (left!56876 t!4440)))))

(assert (= (and d!2369257 c!1456213) b!7929431))

(assert (= (and d!2369257 (not c!1456213)) b!7929432))

(assert (= (and b!7929432 c!1456214) b!7929433))

(assert (= (and b!7929432 (not c!1456214)) b!7929434))

(declare-fun m!8313070 () Bool)

(assert (=> b!7929434 m!8313070))

(declare-fun m!8313072 () Bool)

(assert (=> b!7929434 m!8313072))

(assert (=> b!7929434 m!8313070))

(assert (=> b!7929434 m!8313072))

(declare-fun m!8313074 () Bool)

(assert (=> b!7929434 m!8313074))

(declare-fun m!8313076 () Bool)

(assert (=> b!7929433 m!8313076))

(assert (=> b!7929265 d!2369257))

(declare-fun d!2369259 () Bool)

(declare-fun c!1456217 () Bool)

(assert (=> d!2369259 (= c!1456217 ((_ is Empty!15904) (left!56876 lt!2693711)))))

(declare-fun e!4679489 () List!74574)

(assert (=> d!2369259 (= (list!19417 (left!56876 lt!2693711)) e!4679489)))

(declare-fun b!7929439 () Bool)

(assert (=> b!7929439 (= e!4679489 Nil!74450)))

(declare-fun b!7929442 () Bool)

(declare-fun e!4679490 () List!74574)

(assert (=> b!7929442 (= e!4679490 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693711))) (list!19417 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun b!7929441 () Bool)

(assert (=> b!7929441 (= e!4679490 (list!19419 (xs!19294 (left!56876 lt!2693711))))))

(declare-fun b!7929440 () Bool)

(assert (=> b!7929440 (= e!4679489 e!4679490)))

(declare-fun c!1456218 () Bool)

(assert (=> b!7929440 (= c!1456218 ((_ is Leaf!30237) (left!56876 lt!2693711)))))

(assert (= (and d!2369259 c!1456217) b!7929439))

(assert (= (and d!2369259 (not c!1456217)) b!7929440))

(assert (= (and b!7929440 c!1456218) b!7929441))

(assert (= (and b!7929440 (not c!1456218)) b!7929442))

(declare-fun m!8313078 () Bool)

(assert (=> b!7929442 m!8313078))

(declare-fun m!8313080 () Bool)

(assert (=> b!7929442 m!8313080))

(assert (=> b!7929442 m!8313078))

(assert (=> b!7929442 m!8313080))

(declare-fun m!8313082 () Bool)

(assert (=> b!7929442 m!8313082))

(declare-fun m!8313084 () Bool)

(assert (=> b!7929441 m!8313084))

(assert (=> b!7929265 d!2369259))

(declare-fun d!2369261 () Bool)

(declare-fun c!1456221 () Bool)

(assert (=> d!2369261 (= c!1456221 ((_ is Node!15904) (left!56876 t!4440)))))

(declare-fun e!4679493 () Bool)

(assert (=> d!2369261 (= (inv!95730 (left!56876 t!4440)) e!4679493)))

(declare-fun b!7929447 () Bool)

(assert (=> b!7929447 (= e!4679493 (inv!95732 (left!56876 t!4440)))))

(declare-fun b!7929448 () Bool)

(declare-fun e!4679494 () Bool)

(assert (=> b!7929448 (= e!4679493 e!4679494)))

(declare-fun res!3146345 () Bool)

(assert (=> b!7929448 (= res!3146345 (not ((_ is Leaf!30237) (left!56876 t!4440))))))

(assert (=> b!7929448 (=> res!3146345 e!4679494)))

(declare-fun b!7929449 () Bool)

(assert (=> b!7929449 (= e!4679494 (inv!95733 (left!56876 t!4440)))))

(assert (= (and d!2369261 c!1456221) b!7929447))

(assert (= (and d!2369261 (not c!1456221)) b!7929448))

(assert (= (and b!7929448 (not res!3146345)) b!7929449))

(declare-fun m!8313086 () Bool)

(assert (=> b!7929447 m!8313086))

(declare-fun m!8313088 () Bool)

(assert (=> b!7929449 m!8313088))

(assert (=> b!7929262 d!2369261))

(declare-fun d!2369263 () Bool)

(declare-fun c!1456222 () Bool)

(assert (=> d!2369263 (= c!1456222 ((_ is Node!15904) (right!57206 t!4440)))))

(declare-fun e!4679495 () Bool)

(assert (=> d!2369263 (= (inv!95730 (right!57206 t!4440)) e!4679495)))

(declare-fun b!7929450 () Bool)

(assert (=> b!7929450 (= e!4679495 (inv!95732 (right!57206 t!4440)))))

(declare-fun b!7929451 () Bool)

(declare-fun e!4679496 () Bool)

(assert (=> b!7929451 (= e!4679495 e!4679496)))

(declare-fun res!3146346 () Bool)

(assert (=> b!7929451 (= res!3146346 (not ((_ is Leaf!30237) (right!57206 t!4440))))))

(assert (=> b!7929451 (=> res!3146346 e!4679496)))

(declare-fun b!7929452 () Bool)

(assert (=> b!7929452 (= e!4679496 (inv!95733 (right!57206 t!4440)))))

(assert (= (and d!2369263 c!1456222) b!7929450))

(assert (= (and d!2369263 (not c!1456222)) b!7929451))

(assert (= (and b!7929451 (not res!3146346)) b!7929452))

(declare-fun m!8313090 () Bool)

(assert (=> b!7929450 m!8313090))

(declare-fun m!8313092 () Bool)

(assert (=> b!7929452 m!8313092))

(assert (=> b!7929262 d!2369263))

(declare-fun d!2369265 () Bool)

(declare-fun c!1456223 () Bool)

(assert (=> d!2369265 (= c!1456223 ((_ is Empty!15904) lt!2693719))))

(declare-fun e!4679497 () List!74574)

(assert (=> d!2369265 (= (list!19417 lt!2693719) e!4679497)))

(declare-fun b!7929453 () Bool)

(assert (=> b!7929453 (= e!4679497 Nil!74450)))

(declare-fun b!7929456 () Bool)

(declare-fun e!4679498 () List!74574)

(assert (=> b!7929456 (= e!4679498 (++!18261 (list!19417 (left!56876 lt!2693719)) (list!19417 (right!57206 lt!2693719))))))

(declare-fun b!7929455 () Bool)

(assert (=> b!7929455 (= e!4679498 (list!19419 (xs!19294 lt!2693719)))))

(declare-fun b!7929454 () Bool)

(assert (=> b!7929454 (= e!4679497 e!4679498)))

(declare-fun c!1456224 () Bool)

(assert (=> b!7929454 (= c!1456224 ((_ is Leaf!30237) lt!2693719))))

(assert (= (and d!2369265 c!1456223) b!7929453))

(assert (= (and d!2369265 (not c!1456223)) b!7929454))

(assert (= (and b!7929454 c!1456224) b!7929455))

(assert (= (and b!7929454 (not c!1456224)) b!7929456))

(declare-fun m!8313094 () Bool)

(assert (=> b!7929456 m!8313094))

(declare-fun m!8313096 () Bool)

(assert (=> b!7929456 m!8313096))

(assert (=> b!7929456 m!8313094))

(assert (=> b!7929456 m!8313096))

(declare-fun m!8313098 () Bool)

(assert (=> b!7929456 m!8313098))

(declare-fun m!8313100 () Bool)

(assert (=> b!7929455 m!8313100))

(assert (=> b!7929267 d!2369265))

(declare-fun b!7929523 () Bool)

(declare-fun res!3146382 () Bool)

(declare-fun e!4679527 () Bool)

(assert (=> b!7929523 (=> (not res!3146382) (not e!4679527))))

(declare-fun lt!2693810 () List!74574)

(assert (=> b!7929523 (= res!3146382 (= (size!43253 lt!2693810) (+ (size!43253 (list!19417 t!4440)) 1)))))

(declare-fun b!7929524 () Bool)

(declare-fun e!4679529 () Bool)

(declare-fun call!735305 () (_ BitVec 32))

(declare-fun call!735306 () (_ BitVec 32))

(assert (=> b!7929524 (= e!4679529 (= call!735305 (bvadd call!735306 #b00000000000000000000000000000001)))))

(declare-fun b!7929525 () Bool)

(declare-fun res!3146383 () Bool)

(assert (=> b!7929525 (=> (not res!3146383) (not e!4679527))))

(assert (=> b!7929525 (= res!3146383 e!4679529)))

(declare-fun c!1456242 () Bool)

(declare-fun isize!121 (List!74574) (_ BitVec 32))

(assert (=> b!7929525 (= c!1456242 (bvslt (isize!121 (list!19417 t!4440)) #b01111111111111111111111111111111))))

(declare-fun b!7929526 () Bool)

(declare-fun e!4679528 () List!74574)

(assert (=> b!7929526 (= e!4679528 (Cons!74450 (h!80898 (list!19417 t!4440)) ($colon+!317 (t!390205 (list!19417 t!4440)) v!5484)))))

(declare-fun b!7929527 () Bool)

(assert (=> b!7929527 (= e!4679527 (= lt!2693810 (++!18261 (list!19417 t!4440) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7929528 () Bool)

(assert (=> b!7929528 (= e!4679528 (Cons!74450 v!5484 (list!19417 t!4440)))))

(declare-fun b!7929529 () Bool)

(declare-fun res!3146384 () Bool)

(assert (=> b!7929529 (=> (not res!3146384) (not e!4679527))))

(assert (=> b!7929529 (= res!3146384 (= (content!15785 lt!2693810) ((_ map or) (content!15785 (list!19417 t!4440)) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735301 () Bool)

(assert (=> bm!735301 (= call!735305 (isize!121 lt!2693810))))

(declare-fun b!7929530 () Bool)

(assert (=> b!7929530 (= e!4679529 (= call!735305 call!735306))))

(declare-fun bm!735300 () Bool)

(assert (=> bm!735300 (= call!735306 (isize!121 (list!19417 t!4440)))))

(declare-fun d!2369267 () Bool)

(assert (=> d!2369267 e!4679527))

(declare-fun res!3146381 () Bool)

(assert (=> d!2369267 (=> (not res!3146381) (not e!4679527))))

(assert (=> d!2369267 (= res!3146381 ((_ is Cons!74450) lt!2693810))))

(assert (=> d!2369267 (= lt!2693810 e!4679528)))

(declare-fun c!1456241 () Bool)

(assert (=> d!2369267 (= c!1456241 ((_ is Nil!74450) (list!19417 t!4440)))))

(assert (=> d!2369267 (= ($colon+!317 (list!19417 t!4440) v!5484) lt!2693810)))

(assert (= (and d!2369267 c!1456241) b!7929528))

(assert (= (and d!2369267 (not c!1456241)) b!7929526))

(assert (= (and d!2369267 res!3146381) b!7929523))

(assert (= (and b!7929523 res!3146382) b!7929525))

(assert (= (and b!7929525 c!1456242) b!7929524))

(assert (= (and b!7929525 (not c!1456242)) b!7929530))

(assert (= (or b!7929524 b!7929530) bm!735301))

(assert (= (or b!7929524 b!7929530) bm!735300))

(assert (= (and b!7929525 res!3146383) b!7929529))

(assert (= (and b!7929529 res!3146384) b!7929527))

(declare-fun m!8313184 () Bool)

(assert (=> b!7929523 m!8313184))

(assert (=> b!7929523 m!8312770))

(declare-fun m!8313186 () Bool)

(assert (=> b!7929523 m!8313186))

(assert (=> b!7929525 m!8312770))

(declare-fun m!8313188 () Bool)

(assert (=> b!7929525 m!8313188))

(assert (=> b!7929527 m!8312770))

(declare-fun m!8313190 () Bool)

(assert (=> b!7929527 m!8313190))

(declare-fun m!8313192 () Bool)

(assert (=> b!7929529 m!8313192))

(assert (=> b!7929529 m!8312770))

(declare-fun m!8313194 () Bool)

(assert (=> b!7929529 m!8313194))

(declare-fun m!8313196 () Bool)

(assert (=> b!7929529 m!8313196))

(assert (=> bm!735300 m!8312770))

(assert (=> bm!735300 m!8313188))

(declare-fun m!8313198 () Bool)

(assert (=> bm!735301 m!8313198))

(declare-fun m!8313200 () Bool)

(assert (=> b!7929526 m!8313200))

(assert (=> b!7929267 d!2369267))

(declare-fun d!2369291 () Bool)

(declare-fun c!1456247 () Bool)

(assert (=> d!2369291 (= c!1456247 ((_ is Empty!15904) t!4440))))

(declare-fun e!4679534 () List!74574)

(assert (=> d!2369291 (= (list!19417 t!4440) e!4679534)))

(declare-fun b!7929539 () Bool)

(assert (=> b!7929539 (= e!4679534 Nil!74450)))

(declare-fun b!7929542 () Bool)

(declare-fun e!4679535 () List!74574)

(assert (=> b!7929542 (= e!4679535 (++!18261 (list!19417 (left!56876 t!4440)) (list!19417 (right!57206 t!4440))))))

(declare-fun b!7929541 () Bool)

(assert (=> b!7929541 (= e!4679535 (list!19419 (xs!19294 t!4440)))))

(declare-fun b!7929540 () Bool)

(assert (=> b!7929540 (= e!4679534 e!4679535)))

(declare-fun c!1456248 () Bool)

(assert (=> b!7929540 (= c!1456248 ((_ is Leaf!30237) t!4440))))

(assert (= (and d!2369291 c!1456247) b!7929539))

(assert (= (and d!2369291 (not c!1456247)) b!7929540))

(assert (= (and b!7929540 c!1456248) b!7929541))

(assert (= (and b!7929540 (not c!1456248)) b!7929542))

(assert (=> b!7929542 m!8312792))

(assert (=> b!7929542 m!8312818))

(assert (=> b!7929542 m!8312792))

(assert (=> b!7929542 m!8312818))

(declare-fun m!8313202 () Bool)

(assert (=> b!7929542 m!8313202))

(declare-fun m!8313204 () Bool)

(assert (=> b!7929541 m!8313204))

(assert (=> b!7929267 d!2369291))

(declare-fun d!2369293 () Bool)

(assert (=> d!2369293 (= (height!2219 lt!2693711) (ite ((_ is Empty!15904) lt!2693711) 0 (ite ((_ is Leaf!30237) lt!2693711) 1 (cheight!16115 lt!2693711))))))

(assert (=> b!7929261 d!2369293))

(declare-fun d!2369303 () Bool)

(assert (=> d!2369303 (= (height!2219 (left!56876 t!4440)) (ite ((_ is Empty!15904) (left!56876 t!4440)) 0 (ite ((_ is Leaf!30237) (left!56876 t!4440)) 1 (cheight!16115 (left!56876 t!4440)))))))

(assert (=> b!7929261 d!2369303))

(declare-fun b!7929653 () Bool)

(declare-fun e!4679591 () Conc!15904)

(declare-fun call!735336 () IArray!31869)

(assert (=> b!7929653 (= e!4679591 (Leaf!30237 call!735336 1))))

(declare-fun b!7929654 () Bool)

(declare-fun res!3146418 () Bool)

(declare-fun e!4679592 () Bool)

(assert (=> b!7929654 (=> (not res!3146418) (not e!4679592))))

(declare-fun lt!2693867 () Conc!15904)

(assert (=> b!7929654 (= res!3146418 (<= (height!2219 (right!57206 t!4440)) (height!2219 lt!2693867)))))

(declare-fun call!735334 () List!74574)

(declare-fun bm!735328 () Bool)

(declare-fun lt!2693864 () List!74574)

(declare-fun lt!2693872 () List!74574)

(declare-fun call!735338 () List!74574)

(declare-fun c!1456280 () Bool)

(declare-fun lt!2693871 () List!74574)

(assert (=> bm!735328 (= call!735338 (++!18261 (ite c!1456280 call!735334 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)))))

(declare-fun b!7929655 () Bool)

(declare-fun e!4679594 () Conc!15904)

(declare-fun call!735337 () Conc!15904)

(declare-fun lt!2693858 () Conc!15904)

(assert (=> b!7929655 (= e!4679594 (<>!426 call!735337 (right!57206 lt!2693858)))))

(declare-fun lt!2693860 () List!74574)

(declare-fun call!735340 () List!74574)

(assert (=> b!7929655 (= lt!2693860 call!735340)))

(declare-fun call!735333 () List!74574)

(assert (=> b!7929655 (= lt!2693871 call!735333)))

(assert (=> b!7929655 (= lt!2693864 (list!19417 (right!57206 lt!2693858)))))

(declare-fun lt!2693868 () Unit!169569)

(declare-fun call!735341 () Unit!169569)

(assert (=> b!7929655 (= lt!2693868 call!735341)))

(declare-fun call!735335 () List!74574)

(assert (=> b!7929655 (= (++!18261 call!735335 lt!2693864) (++!18261 lt!2693860 call!735338))))

(declare-fun lt!2693856 () Unit!169569)

(assert (=> b!7929655 (= lt!2693856 lt!2693868)))

(declare-fun lt!2693865 () List!74574)

(assert (=> b!7929655 (= lt!2693865 call!735340)))

(declare-fun lt!2693863 () List!74574)

(assert (=> b!7929655 (= lt!2693863 (list!19417 (right!57206 (right!57206 t!4440))))))

(declare-fun lt!2693866 () List!74574)

(assert (=> b!7929655 (= lt!2693866 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2693855 () Unit!169569)

(assert (=> b!7929655 (= lt!2693855 (lemmaConcatAssociativity!3164 lt!2693865 lt!2693863 lt!2693866))))

(declare-fun call!735339 () List!74574)

(assert (=> b!7929655 (= (++!18261 call!735334 lt!2693866) (++!18261 lt!2693865 call!735339))))

(declare-fun lt!2693870 () Unit!169569)

(assert (=> b!7929655 (= lt!2693870 lt!2693855)))

(declare-fun b!7929656 () Bool)

(declare-fun e!4679595 () Conc!15904)

(assert (=> b!7929656 (= e!4679595 (ite c!1456280 lt!2693858 (left!56876 lt!2693858)))))

(declare-fun b!7929657 () Bool)

(declare-fun c!1456279 () Bool)

(assert (=> b!7929657 (= c!1456279 (< (csize!32039 (right!57206 t!4440)) 512))))

(declare-fun e!4679593 () Conc!15904)

(declare-fun e!4679590 () Conc!15904)

(assert (=> b!7929657 (= e!4679593 e!4679590)))

(declare-fun bm!735329 () Bool)

(declare-fun lt!2693861 () List!74574)

(assert (=> bm!735329 (= call!735339 (++!18261 (ite c!1456280 lt!2693861 lt!2693863) (ite c!1456280 call!735335 lt!2693866)))))

(declare-fun b!7929658 () Bool)

(declare-fun call!735342 () Conc!15904)

(assert (=> b!7929658 (= e!4679590 call!735342)))

(declare-fun bm!735330 () Bool)

(declare-fun lt!2693859 () List!74574)

(assert (=> bm!735330 (= call!735341 (lemmaConcatAssociativity!3164 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)))))

(declare-fun bm!735331 () Bool)

(assert (=> bm!735331 (= call!735335 (++!18261 (ite c!1456280 lt!2693859 lt!2693860) (ite c!1456280 lt!2693872 lt!2693871)))))

(declare-fun b!7929659 () Bool)

(assert (=> b!7929659 (= e!4679595 (Leaf!30237 call!735336 1))))

(declare-fun bm!735332 () Bool)

(declare-fun fill!283 (Int T!145818) IArray!31869)

(assert (=> bm!735332 (= call!735336 (fill!283 1 v!5484))))

(declare-fun bm!735333 () Bool)

(declare-fun c!1456282 () Bool)

(declare-fun c!1456283 () Bool)

(assert (=> bm!735333 (= c!1456282 c!1456283)))

(assert (=> bm!735333 (= call!735342 (<>!426 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)) e!4679595))))

(declare-fun b!7929660 () Bool)

(declare-fun append!1150 (IArray!31869 T!145818) IArray!31869)

(assert (=> b!7929660 (= e!4679590 (Leaf!30237 (append!1150 (xs!19294 (right!57206 t!4440)) v!5484) (+ (csize!32039 (right!57206 t!4440)) 1)))))

(declare-fun lt!2693869 () List!74574)

(assert (=> b!7929660 (= lt!2693869 ($colon+!317 (list!19419 (xs!19294 (right!57206 t!4440))) v!5484))))

(declare-fun b!7929661 () Bool)

(assert (=> b!7929661 (= e!4679591 e!4679593)))

(assert (=> b!7929661 (= c!1456283 ((_ is Node!15904) (right!57206 t!4440)))))

(declare-fun b!7929662 () Bool)

(assert (=> b!7929662 (= e!4679594 call!735337)))

(assert (=> b!7929662 (= lt!2693861 call!735333)))

(assert (=> b!7929662 (= lt!2693859 call!735340)))

(assert (=> b!7929662 (= lt!2693872 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2693862 () Unit!169569)

(assert (=> b!7929662 (= lt!2693862 call!735341)))

(assert (=> b!7929662 (= call!735338 call!735339)))

(declare-fun lt!2693857 () Unit!169569)

(assert (=> b!7929662 (= lt!2693857 lt!2693862)))

(declare-fun b!7929663 () Bool)

(assert (=> b!7929663 (= c!1456280 (<= (height!2219 lt!2693858) (+ (height!2219 (left!56876 (right!57206 t!4440))) 1)))))

(assert (=> b!7929663 (= lt!2693858 (append!1148 (right!57206 (right!57206 t!4440)) v!5484))))

(assert (=> b!7929663 (= e!4679593 e!4679594)))

(declare-fun b!7929664 () Bool)

(assert (=> b!7929664 (= e!4679592 (= (list!19417 lt!2693867) ($colon+!317 (list!19417 (right!57206 t!4440)) v!5484)))))

(declare-fun bm!735334 () Bool)

(assert (=> bm!735334 (= call!735340 (list!19417 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))

(declare-fun bm!735335 () Bool)

(assert (=> bm!735335 (= call!735337 call!735342)))

(declare-fun bm!735336 () Bool)

(assert (=> bm!735336 (= call!735333 (list!19417 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))

(declare-fun b!7929665 () Bool)

(declare-fun res!3146417 () Bool)

(assert (=> b!7929665 (=> (not res!3146417) (not e!4679592))))

(assert (=> b!7929665 (= res!3146417 (<= (height!2219 lt!2693867) (+ (height!2219 (right!57206 t!4440)) 1)))))

(declare-fun d!2369305 () Bool)

(assert (=> d!2369305 e!4679592))

(declare-fun res!3146416 () Bool)

(assert (=> d!2369305 (=> (not res!3146416) (not e!4679592))))

(assert (=> d!2369305 (= res!3146416 (isBalanced!4530 lt!2693867))))

(assert (=> d!2369305 (= lt!2693867 e!4679591)))

(declare-fun c!1456281 () Bool)

(assert (=> d!2369305 (= c!1456281 ((_ is Empty!15904) (right!57206 t!4440)))))

(assert (=> d!2369305 (isBalanced!4530 (right!57206 t!4440))))

(assert (=> d!2369305 (= (append!1148 (right!57206 t!4440) v!5484) lt!2693867)))

(declare-fun bm!735337 () Bool)

(assert (=> bm!735337 (= call!735334 (++!18261 (ite c!1456280 lt!2693861 lt!2693865) (ite c!1456280 lt!2693859 lt!2693863)))))

(assert (= (and d!2369305 c!1456281) b!7929653))

(assert (= (and d!2369305 (not c!1456281)) b!7929661))

(assert (= (and b!7929661 c!1456283) b!7929663))

(assert (= (and b!7929661 (not c!1456283)) b!7929657))

(assert (= (and b!7929663 c!1456280) b!7929662))

(assert (= (and b!7929663 (not c!1456280)) b!7929655))

(assert (= (or b!7929662 b!7929655) bm!735336))

(assert (= (or b!7929662 b!7929655) bm!735335))

(assert (= (or b!7929662 b!7929655) bm!735334))

(assert (= (or b!7929662 b!7929655) bm!735337))

(assert (= (or b!7929662 b!7929655) bm!735331))

(assert (= (or b!7929662 b!7929655) bm!735330))

(assert (= (or b!7929662 b!7929655) bm!735328))

(assert (= (or b!7929662 b!7929655) bm!735329))

(assert (= (and b!7929657 c!1456279) b!7929660))

(assert (= (and b!7929657 (not c!1456279)) b!7929658))

(assert (= (or bm!735335 b!7929658) bm!735333))

(assert (= (and bm!735333 c!1456282) b!7929656))

(assert (= (and bm!735333 (not c!1456282)) b!7929659))

(assert (= (or b!7929653 b!7929659) bm!735332))

(assert (= (and d!2369305 res!3146416) b!7929654))

(assert (= (and b!7929654 res!3146418) b!7929665))

(assert (= (and b!7929665 res!3146417) b!7929664))

(declare-fun m!8313300 () Bool)

(assert (=> d!2369305 m!8313300))

(assert (=> d!2369305 m!8312834))

(declare-fun m!8313302 () Bool)

(assert (=> b!7929663 m!8313302))

(declare-fun m!8313304 () Bool)

(assert (=> b!7929663 m!8313304))

(declare-fun m!8313306 () Bool)

(assert (=> b!7929663 m!8313306))

(declare-fun m!8313308 () Bool)

(assert (=> bm!735331 m!8313308))

(declare-fun m!8313310 () Bool)

(assert (=> b!7929664 m!8313310))

(assert (=> b!7929664 m!8312818))

(assert (=> b!7929664 m!8312818))

(declare-fun m!8313312 () Bool)

(assert (=> b!7929664 m!8313312))

(declare-fun m!8313314 () Bool)

(assert (=> bm!735337 m!8313314))

(declare-fun m!8313316 () Bool)

(assert (=> bm!735328 m!8313316))

(declare-fun m!8313318 () Bool)

(assert (=> bm!735336 m!8313318))

(declare-fun m!8313320 () Bool)

(assert (=> b!7929665 m!8313320))

(assert (=> b!7929665 m!8312832))

(assert (=> b!7929654 m!8312832))

(assert (=> b!7929654 m!8313320))

(declare-fun m!8313322 () Bool)

(assert (=> bm!735333 m!8313322))

(declare-fun m!8313324 () Bool)

(assert (=> b!7929655 m!8313324))

(declare-fun m!8313326 () Bool)

(assert (=> b!7929655 m!8313326))

(declare-fun m!8313328 () Bool)

(assert (=> b!7929655 m!8313328))

(declare-fun m!8313330 () Bool)

(assert (=> b!7929655 m!8313330))

(assert (=> b!7929655 m!8312940))

(declare-fun m!8313332 () Bool)

(assert (=> b!7929655 m!8313332))

(declare-fun m!8313334 () Bool)

(assert (=> b!7929655 m!8313334))

(declare-fun m!8313336 () Bool)

(assert (=> b!7929655 m!8313336))

(declare-fun m!8313338 () Bool)

(assert (=> bm!735330 m!8313338))

(declare-fun m!8313340 () Bool)

(assert (=> bm!735334 m!8313340))

(declare-fun m!8313342 () Bool)

(assert (=> bm!735329 m!8313342))

(declare-fun m!8313344 () Bool)

(assert (=> b!7929660 m!8313344))

(assert (=> b!7929660 m!8312944))

(assert (=> b!7929660 m!8312944))

(declare-fun m!8313346 () Bool)

(assert (=> b!7929660 m!8313346))

(declare-fun m!8313348 () Bool)

(assert (=> bm!735332 m!8313348))

(assert (=> b!7929261 d!2369305))

(declare-fun d!2369325 () Bool)

(assert (=> d!2369325 (= (height!2219 lt!2693713) (ite ((_ is Empty!15904) lt!2693713) 0 (ite ((_ is Leaf!30237) lt!2693713) 1 (cheight!16115 lt!2693713))))))

(assert (=> b!7929263 d!2369325))

(declare-fun d!2369327 () Bool)

(declare-fun lt!2693873 () Conc!15904)

(assert (=> d!2369327 (= (list!19417 lt!2693873) (++!18261 (list!19417 (left!56876 t!4440)) (list!19417 (left!56876 lt!2693711))))))

(declare-fun e!4679597 () Conc!15904)

(assert (=> d!2369327 (= lt!2693873 e!4679597)))

(declare-fun c!1456284 () Bool)

(assert (=> d!2369327 (= c!1456284 (= (left!56876 t!4440) Empty!15904))))

(assert (=> d!2369327 (= (<>!426 (left!56876 t!4440) (left!56876 lt!2693711)) lt!2693873)))

(declare-fun b!7929667 () Bool)

(declare-fun e!4679596 () Conc!15904)

(assert (=> b!7929667 (= e!4679597 e!4679596)))

(declare-fun c!1456285 () Bool)

(assert (=> b!7929667 (= c!1456285 (= (left!56876 lt!2693711) Empty!15904))))

(declare-fun b!7929666 () Bool)

(assert (=> b!7929666 (= e!4679597 (left!56876 lt!2693711))))

(declare-fun b!7929668 () Bool)

(assert (=> b!7929668 (= e!4679596 (left!56876 t!4440))))

(declare-fun b!7929669 () Bool)

(assert (=> b!7929669 (= e!4679596 (Node!15904 (left!56876 t!4440) (left!56876 lt!2693711) (+ (size!43255 (left!56876 t!4440)) (size!43255 (left!56876 lt!2693711))) (+ (max!0 (height!2219 (left!56876 t!4440)) (height!2219 (left!56876 lt!2693711))) 1)))))

(assert (= (and d!2369327 c!1456284) b!7929666))

(assert (= (and d!2369327 (not c!1456284)) b!7929667))

(assert (= (and b!7929667 c!1456285) b!7929668))

(assert (= (and b!7929667 (not c!1456285)) b!7929669))

(declare-fun m!8313350 () Bool)

(assert (=> d!2369327 m!8313350))

(assert (=> d!2369327 m!8312792))

(assert (=> d!2369327 m!8312804))

(assert (=> d!2369327 m!8312792))

(assert (=> d!2369327 m!8312804))

(declare-fun m!8313352 () Bool)

(assert (=> d!2369327 m!8313352))

(declare-fun m!8313354 () Bool)

(assert (=> b!7929669 m!8313354))

(assert (=> b!7929669 m!8312824))

(declare-fun m!8313356 () Bool)

(assert (=> b!7929669 m!8313356))

(declare-fun m!8313358 () Bool)

(assert (=> b!7929669 m!8313358))

(declare-fun m!8313360 () Bool)

(assert (=> b!7929669 m!8313360))

(assert (=> b!7929669 m!8312824))

(assert (=> b!7929669 m!8313356))

(assert (=> b!7929263 d!2369327))

(declare-fun d!2369329 () Bool)

(assert (=> d!2369329 (= (height!2219 lt!2693719) (ite ((_ is Empty!15904) lt!2693719) 0 (ite ((_ is Leaf!30237) lt!2693719) 1 (cheight!16115 lt!2693719))))))

(assert (=> b!7929268 d!2369329))

(declare-fun d!2369331 () Bool)

(assert (=> d!2369331 (= (height!2219 t!4440) (ite ((_ is Empty!15904) t!4440) 0 (ite ((_ is Leaf!30237) t!4440) 1 (cheight!16115 t!4440))))))

(assert (=> b!7929268 d!2369331))

(declare-fun b!7929674 () Bool)

(declare-fun e!4679600 () Bool)

(declare-fun tp!2358870 () Bool)

(assert (=> b!7929674 (= e!4679600 (and tp_is_empty!53233 tp!2358870))))

(assert (=> b!7929270 (= tp!2358852 e!4679600)))

(assert (= (and b!7929270 ((_ is Cons!74450) (innerList!15992 (xs!19294 t!4440)))) b!7929674))

(declare-fun tp!2358878 () Bool)

(declare-fun e!4679606 () Bool)

(declare-fun b!7929683 () Bool)

(declare-fun tp!2358877 () Bool)

(assert (=> b!7929683 (= e!4679606 (and (inv!95730 (left!56876 (left!56876 t!4440))) tp!2358878 (inv!95730 (right!57206 (left!56876 t!4440))) tp!2358877))))

(declare-fun b!7929685 () Bool)

(declare-fun e!4679605 () Bool)

(declare-fun tp!2358879 () Bool)

(assert (=> b!7929685 (= e!4679605 tp!2358879)))

(declare-fun b!7929684 () Bool)

(assert (=> b!7929684 (= e!4679606 (and (inv!95731 (xs!19294 (left!56876 t!4440))) e!4679605))))

(assert (=> b!7929262 (= tp!2358850 (and (inv!95730 (left!56876 t!4440)) e!4679606))))

(assert (= (and b!7929262 ((_ is Node!15904) (left!56876 t!4440))) b!7929683))

(assert (= b!7929684 b!7929685))

(assert (= (and b!7929262 ((_ is Leaf!30237) (left!56876 t!4440))) b!7929684))

(declare-fun m!8313362 () Bool)

(assert (=> b!7929683 m!8313362))

(declare-fun m!8313364 () Bool)

(assert (=> b!7929683 m!8313364))

(declare-fun m!8313366 () Bool)

(assert (=> b!7929684 m!8313366))

(assert (=> b!7929262 m!8312782))

(declare-fun tp!2358880 () Bool)

(declare-fun e!4679608 () Bool)

(declare-fun b!7929686 () Bool)

(declare-fun tp!2358881 () Bool)

(assert (=> b!7929686 (= e!4679608 (and (inv!95730 (left!56876 (right!57206 t!4440))) tp!2358881 (inv!95730 (right!57206 (right!57206 t!4440))) tp!2358880))))

(declare-fun b!7929688 () Bool)

(declare-fun e!4679607 () Bool)

(declare-fun tp!2358882 () Bool)

(assert (=> b!7929688 (= e!4679607 tp!2358882)))

(declare-fun b!7929687 () Bool)

(assert (=> b!7929687 (= e!4679608 (and (inv!95731 (xs!19294 (right!57206 t!4440))) e!4679607))))

(assert (=> b!7929262 (= tp!2358851 (and (inv!95730 (right!57206 t!4440)) e!4679608))))

(assert (= (and b!7929262 ((_ is Node!15904) (right!57206 t!4440))) b!7929686))

(assert (= b!7929687 b!7929688))

(assert (= (and b!7929262 ((_ is Leaf!30237) (right!57206 t!4440))) b!7929687))

(declare-fun m!8313368 () Bool)

(assert (=> b!7929686 m!8313368))

(declare-fun m!8313370 () Bool)

(assert (=> b!7929686 m!8313370))

(declare-fun m!8313372 () Bool)

(assert (=> b!7929687 m!8313372))

(assert (=> b!7929262 m!8312784))

(check-sat (not bm!735300) (not b!7929387) (not b!7929660) (not b!7929527) (not b!7929361) (not b!7929323) (not b!7929386) (not b!7929669) (not b!7929529) (not b!7929383) (not bm!735332) (not b!7929434) tp_is_empty!53233 (not d!2369223) (not d!2369231) (not b!7929362) (not b!7929663) (not b!7929332) (not b!7929687) (not b!7929324) (not b!7929366) (not b!7929449) (not b!7929353) (not b!7929450) (not d!2369233) (not b!7929455) (not b!7929441) (not b!7929664) (not b!7929394) (not b!7929442) (not bm!735337) (not b!7929665) (not b!7929542) (not b!7929655) (not b!7929654) (not b!7929331) (not b!7929357) (not b!7929285) (not b!7929295) (not bm!735333) (not d!2369237) (not b!7929262) (not b!7929688) (not b!7929456) (not b!7929685) (not b!7929525) (not bm!735331) (not b!7929541) (not b!7929286) (not d!2369227) (not b!7929284) (not d!2369215) (not bm!735329) (not b!7929392) (not b!7929683) (not b!7929452) (not b!7929526) (not d!2369243) (not b!7929382) (not d!2369239) (not bm!735336) (not b!7929391) (not b!7929396) (not b!7929674) (not bm!735301) (not b!7929350) (not bm!735330) (not b!7929393) (not b!7929430) (not d!2369235) (not b!7929684) (not b!7929397) (not b!7929365) (not b!7929283) (not b!7929297) (not b!7929447) (not b!7929354) (not d!2369327) (not d!2369305) (not bm!735328) (not d!2369249) (not bm!735334) (not b!7929358) (not b!7929351) (not b!7929523) (not b!7929288) (not d!2369221) (not d!2369229) (not b!7929433) (not b!7929395) (not b!7929686) (not b!7929398) (not b!7929287))
(check-sat)
(get-model)

(declare-fun d!2369357 () Bool)

(declare-fun c!1456295 () Bool)

(assert (=> d!2369357 (= c!1456295 ((_ is Nil!74450) lt!2693764))))

(declare-fun e!4679626 () (InoxSet T!145818))

(assert (=> d!2369357 (= (content!15785 lt!2693764) e!4679626)))

(declare-fun b!7929728 () Bool)

(assert (=> b!7929728 (= e!4679626 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929729 () Bool)

(assert (=> b!7929729 (= e!4679626 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693764) true) (content!15785 (t!390205 lt!2693764))))))

(assert (= (and d!2369357 c!1456295) b!7929728))

(assert (= (and d!2369357 (not c!1456295)) b!7929729))

(declare-fun m!8313448 () Bool)

(assert (=> b!7929729 m!8313448))

(declare-fun m!8313450 () Bool)

(assert (=> b!7929729 m!8313450))

(assert (=> d!2369227 d!2369357))

(declare-fun d!2369359 () Bool)

(declare-fun c!1456296 () Bool)

(assert (=> d!2369359 (= c!1456296 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693715)))))

(declare-fun e!4679627 () (InoxSet T!145818))

(assert (=> d!2369359 (= (content!15785 (++!18261 lt!2693714 lt!2693715)) e!4679627)))

(declare-fun b!7929730 () Bool)

(assert (=> b!7929730 (= e!4679627 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929731 () Bool)

(assert (=> b!7929731 (= e!4679627 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (++!18261 lt!2693714 lt!2693715)) true) (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693715)))))))

(assert (= (and d!2369359 c!1456296) b!7929730))

(assert (= (and d!2369359 (not c!1456296)) b!7929731))

(declare-fun m!8313452 () Bool)

(assert (=> b!7929731 m!8313452))

(declare-fun m!8313454 () Bool)

(assert (=> b!7929731 m!8313454))

(assert (=> d!2369227 d!2369359))

(declare-fun d!2369361 () Bool)

(declare-fun c!1456297 () Bool)

(assert (=> d!2369361 (= c!1456297 ((_ is Nil!74450) lt!2693721))))

(declare-fun e!4679628 () (InoxSet T!145818))

(assert (=> d!2369361 (= (content!15785 lt!2693721) e!4679628)))

(declare-fun b!7929732 () Bool)

(assert (=> b!7929732 (= e!4679628 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929733 () Bool)

(assert (=> b!7929733 (= e!4679628 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693721) true) (content!15785 (t!390205 lt!2693721))))))

(assert (= (and d!2369361 c!1456297) b!7929732))

(assert (= (and d!2369361 (not c!1456297)) b!7929733))

(declare-fun m!8313458 () Bool)

(assert (=> b!7929733 m!8313458))

(declare-fun m!8313460 () Bool)

(assert (=> b!7929733 m!8313460))

(assert (=> d!2369227 d!2369361))

(declare-fun d!2369365 () Bool)

(declare-fun lt!2693884 () Int)

(assert (=> d!2369365 (>= lt!2693884 0)))

(declare-fun e!4679633 () Int)

(assert (=> d!2369365 (= lt!2693884 e!4679633)))

(declare-fun c!1456301 () Bool)

(assert (=> d!2369365 (= c!1456301 ((_ is Nil!74450) (innerList!15992 (xs!19294 t!4440))))))

(assert (=> d!2369365 (= (size!43253 (innerList!15992 (xs!19294 t!4440))) lt!2693884)))

(declare-fun b!7929742 () Bool)

(assert (=> b!7929742 (= e!4679633 0)))

(declare-fun b!7929743 () Bool)

(assert (=> b!7929743 (= e!4679633 (+ 1 (size!43253 (t!390205 (innerList!15992 (xs!19294 t!4440))))))))

(assert (= (and d!2369365 c!1456301) b!7929742))

(assert (= (and d!2369365 (not c!1456301)) b!7929743))

(declare-fun m!8313472 () Bool)

(assert (=> b!7929743 m!8313472))

(assert (=> d!2369215 d!2369365))

(declare-fun d!2369369 () Bool)

(assert (=> d!2369369 (= (list!19419 (xs!19294 (left!56876 t!4440))) (innerList!15992 (xs!19294 (left!56876 t!4440))))))

(assert (=> b!7929433 d!2369369))

(declare-fun d!2369371 () Bool)

(declare-fun e!4679637 () Bool)

(assert (=> d!2369371 e!4679637))

(declare-fun res!3146443 () Bool)

(assert (=> d!2369371 (=> (not res!3146443) (not e!4679637))))

(declare-fun lt!2693887 () List!74574)

(assert (=> d!2369371 (= res!3146443 (= (content!15785 lt!2693887) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 t!4440)))) (content!15785 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(declare-fun e!4679636 () List!74574)

(assert (=> d!2369371 (= lt!2693887 e!4679636)))

(declare-fun c!1456304 () Bool)

(assert (=> d!2369371 (= c!1456304 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 t!4440)))))))

(assert (=> d!2369371 (= (++!18261 (list!19417 (left!56876 (right!57206 t!4440))) (list!19417 (right!57206 (right!57206 t!4440)))) lt!2693887)))

(declare-fun b!7929749 () Bool)

(assert (=> b!7929749 (= e!4679636 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 t!4440)))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 t!4440)))) (list!19417 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7929748 () Bool)

(assert (=> b!7929748 (= e!4679636 (list!19417 (right!57206 (right!57206 t!4440))))))

(declare-fun b!7929750 () Bool)

(declare-fun res!3146442 () Bool)

(assert (=> b!7929750 (=> (not res!3146442) (not e!4679637))))

(assert (=> b!7929750 (= res!3146442 (= (size!43253 lt!2693887) (+ (size!43253 (list!19417 (left!56876 (right!57206 t!4440)))) (size!43253 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7929751 () Bool)

(assert (=> b!7929751 (= e!4679637 (or (not (= (list!19417 (right!57206 (right!57206 t!4440))) Nil!74450)) (= lt!2693887 (list!19417 (left!56876 (right!57206 t!4440))))))))

(assert (= (and d!2369371 c!1456304) b!7929748))

(assert (= (and d!2369371 (not c!1456304)) b!7929749))

(assert (= (and d!2369371 res!3146443) b!7929750))

(assert (= (and b!7929750 res!3146442) b!7929751))

(declare-fun m!8313474 () Bool)

(assert (=> d!2369371 m!8313474))

(assert (=> d!2369371 m!8312938))

(declare-fun m!8313476 () Bool)

(assert (=> d!2369371 m!8313476))

(assert (=> d!2369371 m!8312940))

(declare-fun m!8313478 () Bool)

(assert (=> d!2369371 m!8313478))

(assert (=> b!7929749 m!8312940))

(declare-fun m!8313480 () Bool)

(assert (=> b!7929749 m!8313480))

(declare-fun m!8313482 () Bool)

(assert (=> b!7929750 m!8313482))

(assert (=> b!7929750 m!8312938))

(declare-fun m!8313484 () Bool)

(assert (=> b!7929750 m!8313484))

(assert (=> b!7929750 m!8312940))

(declare-fun m!8313486 () Bool)

(assert (=> b!7929750 m!8313486))

(assert (=> b!7929392 d!2369371))

(declare-fun d!2369373 () Bool)

(declare-fun c!1456305 () Bool)

(assert (=> d!2369373 (= c!1456305 ((_ is Empty!15904) (left!56876 (right!57206 t!4440))))))

(declare-fun e!4679638 () List!74574)

(assert (=> d!2369373 (= (list!19417 (left!56876 (right!57206 t!4440))) e!4679638)))

(declare-fun b!7929752 () Bool)

(assert (=> b!7929752 (= e!4679638 Nil!74450)))

(declare-fun b!7929755 () Bool)

(declare-fun e!4679639 () List!74574)

(assert (=> b!7929755 (= e!4679639 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 t!4440)))) (list!19417 (right!57206 (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7929754 () Bool)

(assert (=> b!7929754 (= e!4679639 (list!19419 (xs!19294 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7929753 () Bool)

(assert (=> b!7929753 (= e!4679638 e!4679639)))

(declare-fun c!1456306 () Bool)

(assert (=> b!7929753 (= c!1456306 ((_ is Leaf!30237) (left!56876 (right!57206 t!4440))))))

(assert (= (and d!2369373 c!1456305) b!7929752))

(assert (= (and d!2369373 (not c!1456305)) b!7929753))

(assert (= (and b!7929753 c!1456306) b!7929754))

(assert (= (and b!7929753 (not c!1456306)) b!7929755))

(declare-fun m!8313488 () Bool)

(assert (=> b!7929755 m!8313488))

(declare-fun m!8313490 () Bool)

(assert (=> b!7929755 m!8313490))

(assert (=> b!7929755 m!8313488))

(assert (=> b!7929755 m!8313490))

(declare-fun m!8313492 () Bool)

(assert (=> b!7929755 m!8313492))

(declare-fun m!8313494 () Bool)

(assert (=> b!7929754 m!8313494))

(assert (=> b!7929392 d!2369373))

(declare-fun d!2369375 () Bool)

(declare-fun c!1456308 () Bool)

(assert (=> d!2369375 (= c!1456308 ((_ is Empty!15904) (right!57206 (right!57206 t!4440))))))

(declare-fun e!4679641 () List!74574)

(assert (=> d!2369375 (= (list!19417 (right!57206 (right!57206 t!4440))) e!4679641)))

(declare-fun b!7929758 () Bool)

(assert (=> b!7929758 (= e!4679641 Nil!74450)))

(declare-fun b!7929761 () Bool)

(declare-fun e!4679642 () List!74574)

(assert (=> b!7929761 (= e!4679642 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 t!4440)))) (list!19417 (right!57206 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7929760 () Bool)

(assert (=> b!7929760 (= e!4679642 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7929759 () Bool)

(assert (=> b!7929759 (= e!4679641 e!4679642)))

(declare-fun c!1456309 () Bool)

(assert (=> b!7929759 (= c!1456309 ((_ is Leaf!30237) (right!57206 (right!57206 t!4440))))))

(assert (= (and d!2369375 c!1456308) b!7929758))

(assert (= (and d!2369375 (not c!1456308)) b!7929759))

(assert (= (and b!7929759 c!1456309) b!7929760))

(assert (= (and b!7929759 (not c!1456309)) b!7929761))

(declare-fun m!8313500 () Bool)

(assert (=> b!7929761 m!8313500))

(declare-fun m!8313502 () Bool)

(assert (=> b!7929761 m!8313502))

(assert (=> b!7929761 m!8313500))

(assert (=> b!7929761 m!8313502))

(declare-fun m!8313504 () Bool)

(assert (=> b!7929761 m!8313504))

(declare-fun m!8313506 () Bool)

(assert (=> b!7929760 m!8313506))

(assert (=> b!7929392 d!2369375))

(declare-fun d!2369381 () Bool)

(assert (=> d!2369381 (= (height!2219 lt!2693867) (ite ((_ is Empty!15904) lt!2693867) 0 (ite ((_ is Leaf!30237) lt!2693867) 1 (cheight!16115 lt!2693867))))))

(assert (=> b!7929665 d!2369381))

(declare-fun d!2369383 () Bool)

(assert (=> d!2369383 (= (height!2219 (right!57206 t!4440)) (ite ((_ is Empty!15904) (right!57206 t!4440)) 0 (ite ((_ is Leaf!30237) (right!57206 t!4440)) 1 (cheight!16115 (right!57206 t!4440)))))))

(assert (=> b!7929665 d!2369383))

(declare-fun d!2369385 () Bool)

(declare-fun e!4679646 () Bool)

(assert (=> d!2369385 e!4679646))

(declare-fun res!3146445 () Bool)

(assert (=> d!2369385 (=> (not res!3146445) (not e!4679646))))

(declare-fun lt!2693891 () List!74574)

(assert (=> d!2369385 (= res!3146445 (= (content!15785 lt!2693891) ((_ map or) (content!15785 (ite c!1456280 call!735334 lt!2693871)) (content!15785 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun e!4679645 () List!74574)

(assert (=> d!2369385 (= lt!2693891 e!4679645)))

(declare-fun c!1456312 () Bool)

(assert (=> d!2369385 (= c!1456312 ((_ is Nil!74450) (ite c!1456280 call!735334 lt!2693871)))))

(assert (=> d!2369385 (= (++!18261 (ite c!1456280 call!735334 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)) lt!2693891)))

(declare-fun b!7929767 () Bool)

(assert (=> b!7929767 (= e!4679645 (Cons!74450 (h!80898 (ite c!1456280 call!735334 lt!2693871)) (++!18261 (t!390205 (ite c!1456280 call!735334 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864))))))

(declare-fun b!7929766 () Bool)

(assert (=> b!7929766 (= e!4679645 (ite c!1456280 lt!2693872 lt!2693864))))

(declare-fun b!7929768 () Bool)

(declare-fun res!3146444 () Bool)

(assert (=> b!7929768 (=> (not res!3146444) (not e!4679646))))

(assert (=> b!7929768 (= res!3146444 (= (size!43253 lt!2693891) (+ (size!43253 (ite c!1456280 call!735334 lt!2693871)) (size!43253 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun b!7929769 () Bool)

(assert (=> b!7929769 (= e!4679646 (or (not (= (ite c!1456280 lt!2693872 lt!2693864) Nil!74450)) (= lt!2693891 (ite c!1456280 call!735334 lt!2693871))))))

(assert (= (and d!2369385 c!1456312) b!7929766))

(assert (= (and d!2369385 (not c!1456312)) b!7929767))

(assert (= (and d!2369385 res!3146445) b!7929768))

(assert (= (and b!7929768 res!3146444) b!7929769))

(declare-fun m!8313510 () Bool)

(assert (=> d!2369385 m!8313510))

(declare-fun m!8313514 () Bool)

(assert (=> d!2369385 m!8313514))

(declare-fun m!8313518 () Bool)

(assert (=> d!2369385 m!8313518))

(declare-fun m!8313522 () Bool)

(assert (=> b!7929767 m!8313522))

(declare-fun m!8313524 () Bool)

(assert (=> b!7929768 m!8313524))

(declare-fun m!8313526 () Bool)

(assert (=> b!7929768 m!8313526))

(declare-fun m!8313528 () Bool)

(assert (=> b!7929768 m!8313528))

(assert (=> bm!735328 d!2369385))

(declare-fun d!2369389 () Bool)

(declare-fun e!4679650 () Bool)

(assert (=> d!2369389 e!4679650))

(declare-fun res!3146447 () Bool)

(assert (=> d!2369389 (=> (not res!3146447) (not e!4679650))))

(declare-fun lt!2693892 () List!74574)

(assert (=> d!2369389 (= res!3146447 (= (content!15785 lt!2693892) ((_ map or) (content!15785 (t!390205 lt!2693714)) (content!15785 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun e!4679649 () List!74574)

(assert (=> d!2369389 (= lt!2693892 e!4679649)))

(declare-fun c!1456315 () Bool)

(assert (=> d!2369389 (= c!1456315 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(assert (=> d!2369389 (= (++!18261 (t!390205 lt!2693714) (++!18261 lt!2693715 lt!2693721)) lt!2693892)))

(declare-fun b!7929775 () Bool)

(assert (=> b!7929775 (= e!4679649 (Cons!74450 (h!80898 (t!390205 lt!2693714)) (++!18261 (t!390205 (t!390205 lt!2693714)) (++!18261 lt!2693715 lt!2693721))))))

(declare-fun b!7929774 () Bool)

(assert (=> b!7929774 (= e!4679649 (++!18261 lt!2693715 lt!2693721))))

(declare-fun b!7929776 () Bool)

(declare-fun res!3146446 () Bool)

(assert (=> b!7929776 (=> (not res!3146446) (not e!4679650))))

(assert (=> b!7929776 (= res!3146446 (= (size!43253 lt!2693892) (+ (size!43253 (t!390205 lt!2693714)) (size!43253 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun b!7929777 () Bool)

(assert (=> b!7929777 (= e!4679650 (or (not (= (++!18261 lt!2693715 lt!2693721) Nil!74450)) (= lt!2693892 (t!390205 lt!2693714))))))

(assert (= (and d!2369389 c!1456315) b!7929774))

(assert (= (and d!2369389 (not c!1456315)) b!7929775))

(assert (= (and d!2369389 res!3146447) b!7929776))

(assert (= (and b!7929776 res!3146446) b!7929777))

(declare-fun m!8313532 () Bool)

(assert (=> d!2369389 m!8313532))

(declare-fun m!8313534 () Bool)

(assert (=> d!2369389 m!8313534))

(assert (=> d!2369389 m!8312814))

(assert (=> d!2369389 m!8312924))

(assert (=> b!7929775 m!8312814))

(declare-fun m!8313536 () Bool)

(assert (=> b!7929775 m!8313536))

(declare-fun m!8313538 () Bool)

(assert (=> b!7929776 m!8313538))

(declare-fun m!8313540 () Bool)

(assert (=> b!7929776 m!8313540))

(assert (=> b!7929776 m!8312814))

(assert (=> b!7929776 m!8312930))

(assert (=> b!7929382 d!2369389))

(declare-fun d!2369393 () Bool)

(declare-fun e!4679655 () Bool)

(assert (=> d!2369393 e!4679655))

(declare-fun res!3146453 () Bool)

(assert (=> d!2369393 (=> (not res!3146453) (not e!4679655))))

(declare-fun lt!2693894 () List!74574)

(assert (=> d!2369393 (= res!3146453 (= (content!15785 lt!2693894) ((_ map or) (content!15785 (t!390205 lt!2693717)) (content!15785 lt!2693712))))))

(declare-fun e!4679654 () List!74574)

(assert (=> d!2369393 (= lt!2693894 e!4679654)))

(declare-fun c!1456318 () Bool)

(assert (=> d!2369393 (= c!1456318 ((_ is Nil!74450) (t!390205 lt!2693717)))))

(assert (=> d!2369393 (= (++!18261 (t!390205 lt!2693717) lt!2693712) lt!2693894)))

(declare-fun b!7929787 () Bool)

(assert (=> b!7929787 (= e!4679654 (Cons!74450 (h!80898 (t!390205 lt!2693717)) (++!18261 (t!390205 (t!390205 lt!2693717)) lt!2693712)))))

(declare-fun b!7929786 () Bool)

(assert (=> b!7929786 (= e!4679654 lt!2693712)))

(declare-fun b!7929788 () Bool)

(declare-fun res!3146452 () Bool)

(assert (=> b!7929788 (=> (not res!3146452) (not e!4679655))))

(assert (=> b!7929788 (= res!3146452 (= (size!43253 lt!2693894) (+ (size!43253 (t!390205 lt!2693717)) (size!43253 lt!2693712))))))

(declare-fun b!7929789 () Bool)

(assert (=> b!7929789 (= e!4679655 (or (not (= lt!2693712 Nil!74450)) (= lt!2693894 (t!390205 lt!2693717))))))

(assert (= (and d!2369393 c!1456318) b!7929786))

(assert (= (and d!2369393 (not c!1456318)) b!7929787))

(assert (= (and d!2369393 res!3146453) b!7929788))

(assert (= (and b!7929788 res!3146452) b!7929789))

(declare-fun m!8313546 () Bool)

(assert (=> d!2369393 m!8313546))

(declare-fun m!8313550 () Bool)

(assert (=> d!2369393 m!8313550))

(assert (=> d!2369393 m!8312848))

(declare-fun m!8313554 () Bool)

(assert (=> b!7929787 m!8313554))

(declare-fun m!8313556 () Bool)

(assert (=> b!7929788 m!8313556))

(declare-fun m!8313560 () Bool)

(assert (=> b!7929788 m!8313560))

(assert (=> b!7929788 m!8312856))

(assert (=> b!7929323 d!2369393))

(declare-fun d!2369395 () Bool)

(declare-fun c!1456319 () Bool)

(assert (=> d!2369395 (= c!1456319 ((_ is Nil!74450) lt!2693789))))

(declare-fun e!4679656 () (InoxSet T!145818))

(assert (=> d!2369395 (= (content!15785 lt!2693789) e!4679656)))

(declare-fun b!7929790 () Bool)

(assert (=> b!7929790 (= e!4679656 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929791 () Bool)

(assert (=> b!7929791 (= e!4679656 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693789) true) (content!15785 (t!390205 lt!2693789))))))

(assert (= (and d!2369395 c!1456319) b!7929790))

(assert (= (and d!2369395 (not c!1456319)) b!7929791))

(declare-fun m!8313564 () Bool)

(assert (=> b!7929791 m!8313564))

(declare-fun m!8313566 () Bool)

(assert (=> b!7929791 m!8313566))

(assert (=> d!2369237 d!2369395))

(declare-fun d!2369399 () Bool)

(declare-fun c!1456321 () Bool)

(assert (=> d!2369399 (= c!1456321 ((_ is Nil!74450) lt!2693714))))

(declare-fun e!4679659 () (InoxSet T!145818))

(assert (=> d!2369399 (= (content!15785 lt!2693714) e!4679659)))

(declare-fun b!7929796 () Bool)

(assert (=> b!7929796 (= e!4679659 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929797 () Bool)

(assert (=> b!7929797 (= e!4679659 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693714) true) (content!15785 (t!390205 lt!2693714))))))

(assert (= (and d!2369399 c!1456321) b!7929796))

(assert (= (and d!2369399 (not c!1456321)) b!7929797))

(declare-fun m!8313568 () Bool)

(assert (=> b!7929797 m!8313568))

(assert (=> b!7929797 m!8313534))

(assert (=> d!2369237 d!2369399))

(declare-fun d!2369401 () Bool)

(declare-fun c!1456322 () Bool)

(assert (=> d!2369401 (= c!1456322 ((_ is Nil!74450) (++!18261 lt!2693715 lt!2693721)))))

(declare-fun e!4679660 () (InoxSet T!145818))

(assert (=> d!2369401 (= (content!15785 (++!18261 lt!2693715 lt!2693721)) e!4679660)))

(declare-fun b!7929798 () Bool)

(assert (=> b!7929798 (= e!4679660 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929799 () Bool)

(assert (=> b!7929799 (= e!4679660 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (++!18261 lt!2693715 lt!2693721)) true) (content!15785 (t!390205 (++!18261 lt!2693715 lt!2693721)))))))

(assert (= (and d!2369401 c!1456322) b!7929798))

(assert (= (and d!2369401 (not c!1456322)) b!7929799))

(declare-fun m!8313584 () Bool)

(assert (=> b!7929799 m!8313584))

(declare-fun m!8313586 () Bool)

(assert (=> b!7929799 m!8313586))

(assert (=> d!2369237 d!2369401))

(declare-fun d!2369405 () Bool)

(assert (=> d!2369405 (= (list!19419 (xs!19294 t!4440)) (innerList!15992 (xs!19294 t!4440)))))

(assert (=> b!7929541 d!2369405))

(declare-fun d!2369407 () Bool)

(declare-fun c!1456324 () Bool)

(assert (=> d!2369407 (= c!1456324 ((_ is Nil!74450) lt!2693769))))

(declare-fun e!4679663 () (InoxSet T!145818))

(assert (=> d!2369407 (= (content!15785 lt!2693769) e!4679663)))

(declare-fun b!7929804 () Bool)

(assert (=> b!7929804 (= e!4679663 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929805 () Bool)

(assert (=> b!7929805 (= e!4679663 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693769) true) (content!15785 (t!390205 lt!2693769))))))

(assert (= (and d!2369407 c!1456324) b!7929804))

(assert (= (and d!2369407 (not c!1456324)) b!7929805))

(declare-fun m!8313588 () Bool)

(assert (=> b!7929805 m!8313588))

(declare-fun m!8313590 () Bool)

(assert (=> b!7929805 m!8313590))

(assert (=> d!2369233 d!2369407))

(declare-fun d!2369409 () Bool)

(declare-fun c!1456325 () Bool)

(assert (=> d!2369409 (= c!1456325 ((_ is Nil!74450) lt!2693715))))

(declare-fun e!4679664 () (InoxSet T!145818))

(assert (=> d!2369409 (= (content!15785 lt!2693715) e!4679664)))

(declare-fun b!7929806 () Bool)

(assert (=> b!7929806 (= e!4679664 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929807 () Bool)

(assert (=> b!7929807 (= e!4679664 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693715) true) (content!15785 (t!390205 lt!2693715))))))

(assert (= (and d!2369409 c!1456325) b!7929806))

(assert (= (and d!2369409 (not c!1456325)) b!7929807))

(declare-fun m!8313606 () Bool)

(assert (=> b!7929807 m!8313606))

(declare-fun m!8313608 () Bool)

(assert (=> b!7929807 m!8313608))

(assert (=> d!2369233 d!2369409))

(assert (=> d!2369233 d!2369361))

(declare-fun d!2369413 () Bool)

(declare-fun e!4679668 () Bool)

(assert (=> d!2369413 e!4679668))

(declare-fun res!3146459 () Bool)

(assert (=> d!2369413 (=> (not res!3146459) (not e!4679668))))

(declare-fun lt!2693897 () List!74574)

(assert (=> d!2369413 (= res!3146459 (= (content!15785 lt!2693897) ((_ map or) (content!15785 (list!19417 (left!56876 lt!2693719))) (content!15785 (list!19417 (right!57206 lt!2693719))))))))

(declare-fun e!4679667 () List!74574)

(assert (=> d!2369413 (= lt!2693897 e!4679667)))

(declare-fun c!1456328 () Bool)

(assert (=> d!2369413 (= c!1456328 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693719))))))

(assert (=> d!2369413 (= (++!18261 (list!19417 (left!56876 lt!2693719)) (list!19417 (right!57206 lt!2693719))) lt!2693897)))

(declare-fun b!7929813 () Bool)

(assert (=> b!7929813 (= e!4679667 (Cons!74450 (h!80898 (list!19417 (left!56876 lt!2693719))) (++!18261 (t!390205 (list!19417 (left!56876 lt!2693719))) (list!19417 (right!57206 lt!2693719)))))))

(declare-fun b!7929812 () Bool)

(assert (=> b!7929812 (= e!4679667 (list!19417 (right!57206 lt!2693719)))))

(declare-fun b!7929814 () Bool)

(declare-fun res!3146458 () Bool)

(assert (=> b!7929814 (=> (not res!3146458) (not e!4679668))))

(assert (=> b!7929814 (= res!3146458 (= (size!43253 lt!2693897) (+ (size!43253 (list!19417 (left!56876 lt!2693719))) (size!43253 (list!19417 (right!57206 lt!2693719))))))))

(declare-fun b!7929815 () Bool)

(assert (=> b!7929815 (= e!4679668 (or (not (= (list!19417 (right!57206 lt!2693719)) Nil!74450)) (= lt!2693897 (list!19417 (left!56876 lt!2693719)))))))

(assert (= (and d!2369413 c!1456328) b!7929812))

(assert (= (and d!2369413 (not c!1456328)) b!7929813))

(assert (= (and d!2369413 res!3146459) b!7929814))

(assert (= (and b!7929814 res!3146458) b!7929815))

(declare-fun m!8313618 () Bool)

(assert (=> d!2369413 m!8313618))

(assert (=> d!2369413 m!8313094))

(declare-fun m!8313620 () Bool)

(assert (=> d!2369413 m!8313620))

(assert (=> d!2369413 m!8313096))

(declare-fun m!8313622 () Bool)

(assert (=> d!2369413 m!8313622))

(assert (=> b!7929813 m!8313096))

(declare-fun m!8313624 () Bool)

(assert (=> b!7929813 m!8313624))

(declare-fun m!8313626 () Bool)

(assert (=> b!7929814 m!8313626))

(assert (=> b!7929814 m!8313094))

(declare-fun m!8313628 () Bool)

(assert (=> b!7929814 m!8313628))

(assert (=> b!7929814 m!8313096))

(declare-fun m!8313630 () Bool)

(assert (=> b!7929814 m!8313630))

(assert (=> b!7929456 d!2369413))

(declare-fun d!2369417 () Bool)

(declare-fun c!1456330 () Bool)

(assert (=> d!2369417 (= c!1456330 ((_ is Empty!15904) (left!56876 lt!2693719)))))

(declare-fun e!4679671 () List!74574)

(assert (=> d!2369417 (= (list!19417 (left!56876 lt!2693719)) e!4679671)))

(declare-fun b!7929820 () Bool)

(assert (=> b!7929820 (= e!4679671 Nil!74450)))

(declare-fun b!7929823 () Bool)

(declare-fun e!4679672 () List!74574)

(assert (=> b!7929823 (= e!4679672 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693719))) (list!19417 (right!57206 (left!56876 lt!2693719)))))))

(declare-fun b!7929822 () Bool)

(assert (=> b!7929822 (= e!4679672 (list!19419 (xs!19294 (left!56876 lt!2693719))))))

(declare-fun b!7929821 () Bool)

(assert (=> b!7929821 (= e!4679671 e!4679672)))

(declare-fun c!1456331 () Bool)

(assert (=> b!7929821 (= c!1456331 ((_ is Leaf!30237) (left!56876 lt!2693719)))))

(assert (= (and d!2369417 c!1456330) b!7929820))

(assert (= (and d!2369417 (not c!1456330)) b!7929821))

(assert (= (and b!7929821 c!1456331) b!7929822))

(assert (= (and b!7929821 (not c!1456331)) b!7929823))

(declare-fun m!8313646 () Bool)

(assert (=> b!7929823 m!8313646))

(declare-fun m!8313648 () Bool)

(assert (=> b!7929823 m!8313648))

(assert (=> b!7929823 m!8313646))

(assert (=> b!7929823 m!8313648))

(declare-fun m!8313650 () Bool)

(assert (=> b!7929823 m!8313650))

(declare-fun m!8313652 () Bool)

(assert (=> b!7929822 m!8313652))

(assert (=> b!7929456 d!2369417))

(declare-fun d!2369421 () Bool)

(declare-fun c!1456333 () Bool)

(assert (=> d!2369421 (= c!1456333 ((_ is Empty!15904) (right!57206 lt!2693719)))))

(declare-fun e!4679675 () List!74574)

(assert (=> d!2369421 (= (list!19417 (right!57206 lt!2693719)) e!4679675)))

(declare-fun b!7929828 () Bool)

(assert (=> b!7929828 (= e!4679675 Nil!74450)))

(declare-fun b!7929831 () Bool)

(declare-fun e!4679676 () List!74574)

(assert (=> b!7929831 (= e!4679676 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693719))) (list!19417 (right!57206 (right!57206 lt!2693719)))))))

(declare-fun b!7929830 () Bool)

(assert (=> b!7929830 (= e!4679676 (list!19419 (xs!19294 (right!57206 lt!2693719))))))

(declare-fun b!7929829 () Bool)

(assert (=> b!7929829 (= e!4679675 e!4679676)))

(declare-fun c!1456334 () Bool)

(assert (=> b!7929829 (= c!1456334 ((_ is Leaf!30237) (right!57206 lt!2693719)))))

(assert (= (and d!2369421 c!1456333) b!7929828))

(assert (= (and d!2369421 (not c!1456333)) b!7929829))

(assert (= (and b!7929829 c!1456334) b!7929830))

(assert (= (and b!7929829 (not c!1456334)) b!7929831))

(declare-fun m!8313668 () Bool)

(assert (=> b!7929831 m!8313668))

(declare-fun m!8313670 () Bool)

(assert (=> b!7929831 m!8313670))

(assert (=> b!7929831 m!8313668))

(assert (=> b!7929831 m!8313670))

(declare-fun m!8313672 () Bool)

(assert (=> b!7929831 m!8313672))

(declare-fun m!8313674 () Bool)

(assert (=> b!7929830 m!8313674))

(assert (=> b!7929456 d!2369421))

(declare-fun d!2369425 () Bool)

(declare-fun c!1456335 () Bool)

(assert (=> d!2369425 (= c!1456335 ((_ is Empty!15904) lt!2693867))))

(declare-fun e!4679677 () List!74574)

(assert (=> d!2369425 (= (list!19417 lt!2693867) e!4679677)))

(declare-fun b!7929832 () Bool)

(assert (=> b!7929832 (= e!4679677 Nil!74450)))

(declare-fun b!7929835 () Bool)

(declare-fun e!4679678 () List!74574)

(assert (=> b!7929835 (= e!4679678 (++!18261 (list!19417 (left!56876 lt!2693867)) (list!19417 (right!57206 lt!2693867))))))

(declare-fun b!7929834 () Bool)

(assert (=> b!7929834 (= e!4679678 (list!19419 (xs!19294 lt!2693867)))))

(declare-fun b!7929833 () Bool)

(assert (=> b!7929833 (= e!4679677 e!4679678)))

(declare-fun c!1456336 () Bool)

(assert (=> b!7929833 (= c!1456336 ((_ is Leaf!30237) lt!2693867))))

(assert (= (and d!2369425 c!1456335) b!7929832))

(assert (= (and d!2369425 (not c!1456335)) b!7929833))

(assert (= (and b!7929833 c!1456336) b!7929834))

(assert (= (and b!7929833 (not c!1456336)) b!7929835))

(declare-fun m!8313686 () Bool)

(assert (=> b!7929835 m!8313686))

(declare-fun m!8313688 () Bool)

(assert (=> b!7929835 m!8313688))

(assert (=> b!7929835 m!8313686))

(assert (=> b!7929835 m!8313688))

(declare-fun m!8313690 () Bool)

(assert (=> b!7929835 m!8313690))

(declare-fun m!8313692 () Bool)

(assert (=> b!7929834 m!8313692))

(assert (=> b!7929664 d!2369425))

(declare-fun b!7929840 () Bool)

(declare-fun res!3146465 () Bool)

(declare-fun e!4679681 () Bool)

(assert (=> b!7929840 (=> (not res!3146465) (not e!4679681))))

(declare-fun lt!2693902 () List!74574)

(assert (=> b!7929840 (= res!3146465 (= (size!43253 lt!2693902) (+ (size!43253 (list!19417 (right!57206 t!4440))) 1)))))

(declare-fun b!7929841 () Bool)

(declare-fun e!4679683 () Bool)

(declare-fun call!735345 () (_ BitVec 32))

(declare-fun call!735346 () (_ BitVec 32))

(assert (=> b!7929841 (= e!4679683 (= call!735345 (bvadd call!735346 #b00000000000000000000000000000001)))))

(declare-fun b!7929842 () Bool)

(declare-fun res!3146466 () Bool)

(assert (=> b!7929842 (=> (not res!3146466) (not e!4679681))))

(assert (=> b!7929842 (= res!3146466 e!4679683)))

(declare-fun c!1456340 () Bool)

(assert (=> b!7929842 (= c!1456340 (bvslt (isize!121 (list!19417 (right!57206 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7929843 () Bool)

(declare-fun e!4679682 () List!74574)

(assert (=> b!7929843 (= e!4679682 (Cons!74450 (h!80898 (list!19417 (right!57206 t!4440))) ($colon+!317 (t!390205 (list!19417 (right!57206 t!4440))) v!5484)))))

(declare-fun b!7929844 () Bool)

(assert (=> b!7929844 (= e!4679681 (= lt!2693902 (++!18261 (list!19417 (right!57206 t!4440)) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7929845 () Bool)

(assert (=> b!7929845 (= e!4679682 (Cons!74450 v!5484 (list!19417 (right!57206 t!4440))))))

(declare-fun b!7929846 () Bool)

(declare-fun res!3146467 () Bool)

(assert (=> b!7929846 (=> (not res!3146467) (not e!4679681))))

(assert (=> b!7929846 (= res!3146467 (= (content!15785 lt!2693902) ((_ map or) (content!15785 (list!19417 (right!57206 t!4440))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735341 () Bool)

(assert (=> bm!735341 (= call!735345 (isize!121 lt!2693902))))

(declare-fun b!7929847 () Bool)

(assert (=> b!7929847 (= e!4679683 (= call!735345 call!735346))))

(declare-fun bm!735340 () Bool)

(assert (=> bm!735340 (= call!735346 (isize!121 (list!19417 (right!57206 t!4440))))))

(declare-fun d!2369429 () Bool)

(assert (=> d!2369429 e!4679681))

(declare-fun res!3146464 () Bool)

(assert (=> d!2369429 (=> (not res!3146464) (not e!4679681))))

(assert (=> d!2369429 (= res!3146464 ((_ is Cons!74450) lt!2693902))))

(assert (=> d!2369429 (= lt!2693902 e!4679682)))

(declare-fun c!1456339 () Bool)

(assert (=> d!2369429 (= c!1456339 ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(assert (=> d!2369429 (= ($colon+!317 (list!19417 (right!57206 t!4440)) v!5484) lt!2693902)))

(assert (= (and d!2369429 c!1456339) b!7929845))

(assert (= (and d!2369429 (not c!1456339)) b!7929843))

(assert (= (and d!2369429 res!3146464) b!7929840))

(assert (= (and b!7929840 res!3146465) b!7929842))

(assert (= (and b!7929842 c!1456340) b!7929841))

(assert (= (and b!7929842 (not c!1456340)) b!7929847))

(assert (= (or b!7929841 b!7929847) bm!735341))

(assert (= (or b!7929841 b!7929847) bm!735340))

(assert (= (and b!7929842 res!3146466) b!7929846))

(assert (= (and b!7929846 res!3146467) b!7929844))

(declare-fun m!8313716 () Bool)

(assert (=> b!7929840 m!8313716))

(assert (=> b!7929840 m!8312818))

(declare-fun m!8313720 () Bool)

(assert (=> b!7929840 m!8313720))

(assert (=> b!7929842 m!8312818))

(declare-fun m!8313722 () Bool)

(assert (=> b!7929842 m!8313722))

(assert (=> b!7929844 m!8312818))

(declare-fun m!8313726 () Bool)

(assert (=> b!7929844 m!8313726))

(declare-fun m!8313728 () Bool)

(assert (=> b!7929846 m!8313728))

(assert (=> b!7929846 m!8312818))

(declare-fun m!8313730 () Bool)

(assert (=> b!7929846 m!8313730))

(assert (=> b!7929846 m!8313196))

(assert (=> bm!735340 m!8312818))

(assert (=> bm!735340 m!8313722))

(declare-fun m!8313732 () Bool)

(assert (=> bm!735341 m!8313732))

(declare-fun m!8313734 () Bool)

(assert (=> b!7929843 m!8313734))

(assert (=> b!7929664 d!2369429))

(assert (=> b!7929664 d!2369241))

(declare-fun d!2369435 () Bool)

(assert (=> d!2369435 (= (inv!95731 (xs!19294 (left!56876 t!4440))) (<= (size!43253 (innerList!15992 (xs!19294 (left!56876 t!4440)))) 2147483647))))

(declare-fun bs!1968934 () Bool)

(assert (= bs!1968934 d!2369435))

(declare-fun m!8313736 () Bool)

(assert (=> bs!1968934 m!8313736))

(assert (=> b!7929684 d!2369435))

(declare-fun d!2369437 () Bool)

(assert (=> d!2369437 (= (list!19419 (xs!19294 (right!57206 lt!2693711))) (innerList!15992 (xs!19294 (right!57206 lt!2693711))))))

(assert (=> b!7929350 d!2369437))

(assert (=> d!2369243 d!2369221))

(assert (=> d!2369243 d!2369223))

(declare-fun d!2369439 () Bool)

(assert (=> d!2369439 (= (++!18261 (++!18261 lt!2693714 lt!2693717) lt!2693712) (++!18261 lt!2693714 (++!18261 lt!2693717 lt!2693712)))))

(assert (=> d!2369439 true))

(declare-fun _$15!899 () Unit!169569)

(assert (=> d!2369439 (= (choose!59834 lt!2693714 lt!2693717 lt!2693712) _$15!899)))

(declare-fun bs!1968935 () Bool)

(assert (= bs!1968935 d!2369439))

(assert (=> bs!1968935 m!8312810))

(assert (=> bs!1968935 m!8312810))

(assert (=> bs!1968935 m!8312812))

(assert (=> bs!1968935 m!8312798))

(assert (=> bs!1968935 m!8312798))

(assert (=> bs!1968935 m!8312802))

(assert (=> d!2369243 d!2369439))

(assert (=> d!2369243 d!2369231))

(assert (=> d!2369243 d!2369235))

(declare-fun d!2369441 () Bool)

(declare-fun lt!2693906 () Bool)

(declare-fun isEmpty!42782 (List!74574) Bool)

(assert (=> d!2369441 (= lt!2693906 (isEmpty!42782 (list!19417 (right!57206 lt!2693719))))))

(assert (=> d!2369441 (= lt!2693906 (= (size!43255 (right!57206 lt!2693719)) 0))))

(assert (=> d!2369441 (= (isEmpty!42779 (right!57206 lt!2693719)) lt!2693906)))

(declare-fun bs!1968936 () Bool)

(assert (= bs!1968936 d!2369441))

(assert (=> bs!1968936 m!8313096))

(assert (=> bs!1968936 m!8313096))

(declare-fun m!8313772 () Bool)

(assert (=> bs!1968936 m!8313772))

(declare-fun m!8313774 () Bool)

(assert (=> bs!1968936 m!8313774))

(assert (=> b!7929398 d!2369441))

(declare-fun d!2369451 () Bool)

(declare-fun c!1456344 () Bool)

(assert (=> d!2369451 (= c!1456344 ((_ is Node!15904) (left!56876 (right!57206 t!4440))))))

(declare-fun e!4679695 () Bool)

(assert (=> d!2369451 (= (inv!95730 (left!56876 (right!57206 t!4440))) e!4679695)))

(declare-fun b!7929874 () Bool)

(assert (=> b!7929874 (= e!4679695 (inv!95732 (left!56876 (right!57206 t!4440))))))

(declare-fun b!7929875 () Bool)

(declare-fun e!4679696 () Bool)

(assert (=> b!7929875 (= e!4679695 e!4679696)))

(declare-fun res!3146488 () Bool)

(assert (=> b!7929875 (= res!3146488 (not ((_ is Leaf!30237) (left!56876 (right!57206 t!4440)))))))

(assert (=> b!7929875 (=> res!3146488 e!4679696)))

(declare-fun b!7929876 () Bool)

(assert (=> b!7929876 (= e!4679696 (inv!95733 (left!56876 (right!57206 t!4440))))))

(assert (= (and d!2369451 c!1456344) b!7929874))

(assert (= (and d!2369451 (not c!1456344)) b!7929875))

(assert (= (and b!7929875 (not res!3146488)) b!7929876))

(declare-fun m!8313776 () Bool)

(assert (=> b!7929874 m!8313776))

(declare-fun m!8313778 () Bool)

(assert (=> b!7929876 m!8313778))

(assert (=> b!7929686 d!2369451))

(declare-fun d!2369453 () Bool)

(declare-fun c!1456345 () Bool)

(assert (=> d!2369453 (= c!1456345 ((_ is Node!15904) (right!57206 (right!57206 t!4440))))))

(declare-fun e!4679697 () Bool)

(assert (=> d!2369453 (= (inv!95730 (right!57206 (right!57206 t!4440))) e!4679697)))

(declare-fun b!7929877 () Bool)

(assert (=> b!7929877 (= e!4679697 (inv!95732 (right!57206 (right!57206 t!4440))))))

(declare-fun b!7929878 () Bool)

(declare-fun e!4679698 () Bool)

(assert (=> b!7929878 (= e!4679697 e!4679698)))

(declare-fun res!3146489 () Bool)

(assert (=> b!7929878 (= res!3146489 (not ((_ is Leaf!30237) (right!57206 (right!57206 t!4440)))))))

(assert (=> b!7929878 (=> res!3146489 e!4679698)))

(declare-fun b!7929879 () Bool)

(assert (=> b!7929879 (= e!4679698 (inv!95733 (right!57206 (right!57206 t!4440))))))

(assert (= (and d!2369453 c!1456345) b!7929877))

(assert (= (and d!2369453 (not c!1456345)) b!7929878))

(assert (= (and b!7929878 (not res!3146489)) b!7929879))

(declare-fun m!8313780 () Bool)

(assert (=> b!7929877 m!8313780))

(declare-fun m!8313782 () Bool)

(assert (=> b!7929879 m!8313782))

(assert (=> b!7929686 d!2369453))

(assert (=> b!7929262 d!2369261))

(assert (=> b!7929262 d!2369263))

(declare-fun d!2369455 () Bool)

(declare-fun lt!2693907 () Int)

(assert (=> d!2369455 (>= lt!2693907 0)))

(declare-fun e!4679701 () Int)

(assert (=> d!2369455 (= lt!2693907 e!4679701)))

(declare-fun c!1456348 () Bool)

(assert (=> d!2369455 (= c!1456348 ((_ is Nil!74450) lt!2693763))))

(assert (=> d!2369455 (= (size!43253 lt!2693763) lt!2693907)))

(declare-fun b!7929884 () Bool)

(assert (=> b!7929884 (= e!4679701 0)))

(declare-fun b!7929885 () Bool)

(assert (=> b!7929885 (= e!4679701 (+ 1 (size!43253 (t!390205 lt!2693763))))))

(assert (= (and d!2369455 c!1456348) b!7929884))

(assert (= (and d!2369455 (not c!1456348)) b!7929885))

(declare-fun m!8313784 () Bool)

(assert (=> b!7929885 m!8313784))

(assert (=> b!7929332 d!2369455))

(declare-fun d!2369457 () Bool)

(declare-fun lt!2693908 () Int)

(assert (=> d!2369457 (>= lt!2693908 0)))

(declare-fun e!4679702 () Int)

(assert (=> d!2369457 (= lt!2693908 e!4679702)))

(declare-fun c!1456349 () Bool)

(assert (=> d!2369457 (= c!1456349 ((_ is Nil!74450) lt!2693714))))

(assert (=> d!2369457 (= (size!43253 lt!2693714) lt!2693908)))

(declare-fun b!7929886 () Bool)

(assert (=> b!7929886 (= e!4679702 0)))

(declare-fun b!7929887 () Bool)

(assert (=> b!7929887 (= e!4679702 (+ 1 (size!43253 (t!390205 lt!2693714))))))

(assert (= (and d!2369457 c!1456349) b!7929886))

(assert (= (and d!2369457 (not c!1456349)) b!7929887))

(assert (=> b!7929887 m!8313540))

(assert (=> b!7929332 d!2369457))

(declare-fun d!2369459 () Bool)

(declare-fun lt!2693909 () Int)

(assert (=> d!2369459 (>= lt!2693909 0)))

(declare-fun e!4679703 () Int)

(assert (=> d!2369459 (= lt!2693909 e!4679703)))

(declare-fun c!1456350 () Bool)

(assert (=> d!2369459 (= c!1456350 ((_ is Nil!74450) (++!18261 lt!2693717 lt!2693712)))))

(assert (=> d!2369459 (= (size!43253 (++!18261 lt!2693717 lt!2693712)) lt!2693909)))

(declare-fun b!7929888 () Bool)

(assert (=> b!7929888 (= e!4679703 0)))

(declare-fun b!7929889 () Bool)

(assert (=> b!7929889 (= e!4679703 (+ 1 (size!43253 (t!390205 (++!18261 lt!2693717 lt!2693712)))))))

(assert (= (and d!2369459 c!1456350) b!7929888))

(assert (= (and d!2369459 (not c!1456350)) b!7929889))

(declare-fun m!8313786 () Bool)

(assert (=> b!7929889 m!8313786))

(assert (=> b!7929332 d!2369459))

(declare-fun d!2369461 () Bool)

(declare-fun lt!2693910 () Conc!15904)

(assert (=> d!2369461 (= (list!19417 lt!2693910) (++!18261 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (list!19417 e!4679595)))))

(declare-fun e!4679705 () Conc!15904)

(assert (=> d!2369461 (= lt!2693910 e!4679705)))

(declare-fun c!1456351 () Bool)

(assert (=> d!2369461 (= c!1456351 (= (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)) Empty!15904))))

(assert (=> d!2369461 (= (<>!426 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)) e!4679595) lt!2693910)))

(declare-fun b!7929891 () Bool)

(declare-fun e!4679704 () Conc!15904)

(assert (=> b!7929891 (= e!4679705 e!4679704)))

(declare-fun c!1456352 () Bool)

(assert (=> b!7929891 (= c!1456352 (= e!4679595 Empty!15904))))

(declare-fun b!7929890 () Bool)

(assert (=> b!7929890 (= e!4679705 e!4679595)))

(declare-fun b!7929892 () Bool)

(assert (=> b!7929892 (= e!4679704 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))))

(declare-fun b!7929893 () Bool)

(assert (=> b!7929893 (= e!4679704 (Node!15904 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)) e!4679595 (+ (size!43255 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (size!43255 e!4679595)) (+ (max!0 (height!2219 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (height!2219 e!4679595)) 1)))))

(assert (= (and d!2369461 c!1456351) b!7929890))

(assert (= (and d!2369461 (not c!1456351)) b!7929891))

(assert (= (and b!7929891 c!1456352) b!7929892))

(assert (= (and b!7929891 (not c!1456352)) b!7929893))

(declare-fun m!8313788 () Bool)

(assert (=> d!2369461 m!8313788))

(declare-fun m!8313790 () Bool)

(assert (=> d!2369461 m!8313790))

(declare-fun m!8313792 () Bool)

(assert (=> d!2369461 m!8313792))

(assert (=> d!2369461 m!8313790))

(assert (=> d!2369461 m!8313792))

(declare-fun m!8313796 () Bool)

(assert (=> d!2369461 m!8313796))

(declare-fun m!8313800 () Bool)

(assert (=> b!7929893 m!8313800))

(declare-fun m!8313802 () Bool)

(assert (=> b!7929893 m!8313802))

(declare-fun m!8313804 () Bool)

(assert (=> b!7929893 m!8313804))

(declare-fun m!8313806 () Bool)

(assert (=> b!7929893 m!8313806))

(declare-fun m!8313808 () Bool)

(assert (=> b!7929893 m!8313808))

(assert (=> b!7929893 m!8313802))

(assert (=> b!7929893 m!8313804))

(assert (=> bm!735333 d!2369461))

(declare-fun d!2369465 () Bool)

(declare-fun c!1456355 () Bool)

(assert (=> d!2369465 (= c!1456355 ((_ is Nil!74450) lt!2693762))))

(declare-fun e!4679708 () (InoxSet T!145818))

(assert (=> d!2369465 (= (content!15785 lt!2693762) e!4679708)))

(declare-fun b!7929898 () Bool)

(assert (=> b!7929898 (= e!4679708 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929899 () Bool)

(assert (=> b!7929899 (= e!4679708 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693762) true) (content!15785 (t!390205 lt!2693762))))))

(assert (= (and d!2369465 c!1456355) b!7929898))

(assert (= (and d!2369465 (not c!1456355)) b!7929899))

(declare-fun m!8313814 () Bool)

(assert (=> b!7929899 m!8313814))

(declare-fun m!8313816 () Bool)

(assert (=> b!7929899 m!8313816))

(assert (=> d!2369221 d!2369465))

(declare-fun d!2369469 () Bool)

(declare-fun c!1456357 () Bool)

(assert (=> d!2369469 (= c!1456357 ((_ is Nil!74450) lt!2693717))))

(declare-fun e!4679710 () (InoxSet T!145818))

(assert (=> d!2369469 (= (content!15785 lt!2693717) e!4679710)))

(declare-fun b!7929902 () Bool)

(assert (=> b!7929902 (= e!4679710 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929903 () Bool)

(assert (=> b!7929903 (= e!4679710 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693717) true) (content!15785 (t!390205 lt!2693717))))))

(assert (= (and d!2369469 c!1456357) b!7929902))

(assert (= (and d!2369469 (not c!1456357)) b!7929903))

(declare-fun m!8313822 () Bool)

(assert (=> b!7929903 m!8313822))

(assert (=> b!7929903 m!8313550))

(assert (=> d!2369221 d!2369469))

(declare-fun d!2369473 () Bool)

(declare-fun c!1456359 () Bool)

(assert (=> d!2369473 (= c!1456359 ((_ is Nil!74450) lt!2693712))))

(declare-fun e!4679712 () (InoxSet T!145818))

(assert (=> d!2369473 (= (content!15785 lt!2693712) e!4679712)))

(declare-fun b!7929906 () Bool)

(assert (=> b!7929906 (= e!4679712 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7929907 () Bool)

(assert (=> b!7929907 (= e!4679712 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693712) true) (content!15785 (t!390205 lt!2693712))))))

(assert (= (and d!2369473 c!1456359) b!7929906))

(assert (= (and d!2369473 (not c!1456359)) b!7929907))

(declare-fun m!8313826 () Bool)

(assert (=> b!7929907 m!8313826))

(declare-fun m!8313828 () Bool)

(assert (=> b!7929907 m!8313828))

(assert (=> d!2369221 d!2369473))

(declare-fun d!2369477 () Bool)

(declare-fun e!4679715 () Bool)

(assert (=> d!2369477 e!4679715))

(declare-fun res!3146491 () Bool)

(assert (=> d!2369477 (=> (not res!3146491) (not e!4679715))))

(declare-fun lt!2693913 () List!74574)

(assert (=> d!2369477 (= res!3146491 (= (content!15785 lt!2693913) ((_ map or) (content!15785 (t!390205 lt!2693715)) (content!15785 lt!2693721))))))

(declare-fun e!4679714 () List!74574)

(assert (=> d!2369477 (= lt!2693913 e!4679714)))

(declare-fun c!1456361 () Bool)

(assert (=> d!2369477 (= c!1456361 ((_ is Nil!74450) (t!390205 lt!2693715)))))

(assert (=> d!2369477 (= (++!18261 (t!390205 lt!2693715) lt!2693721) lt!2693913)))

(declare-fun b!7929911 () Bool)

(assert (=> b!7929911 (= e!4679714 (Cons!74450 (h!80898 (t!390205 lt!2693715)) (++!18261 (t!390205 (t!390205 lt!2693715)) lt!2693721)))))

(declare-fun b!7929910 () Bool)

(assert (=> b!7929910 (= e!4679714 lt!2693721)))

(declare-fun b!7929912 () Bool)

(declare-fun res!3146490 () Bool)

(assert (=> b!7929912 (=> (not res!3146490) (not e!4679715))))

(assert (=> b!7929912 (= res!3146490 (= (size!43253 lt!2693913) (+ (size!43253 (t!390205 lt!2693715)) (size!43253 lt!2693721))))))

(declare-fun b!7929913 () Bool)

(assert (=> b!7929913 (= e!4679715 (or (not (= lt!2693721 Nil!74450)) (= lt!2693913 (t!390205 lt!2693715))))))

(assert (= (and d!2369477 c!1456361) b!7929910))

(assert (= (and d!2369477 (not c!1456361)) b!7929911))

(assert (= (and d!2369477 res!3146491) b!7929912))

(assert (= (and b!7929912 res!3146490) b!7929913))

(declare-fun m!8313834 () Bool)

(assert (=> d!2369477 m!8313834))

(assert (=> d!2369477 m!8313608))

(assert (=> d!2369477 m!8312884))

(declare-fun m!8313838 () Bool)

(assert (=> b!7929911 m!8313838))

(declare-fun m!8313840 () Bool)

(assert (=> b!7929912 m!8313840))

(declare-fun m!8313842 () Bool)

(assert (=> b!7929912 m!8313842))

(assert (=> b!7929912 m!8312892))

(assert (=> b!7929361 d!2369477))

(declare-fun d!2369487 () Bool)

(declare-fun lt!2693916 () Int)

(assert (=> d!2369487 (>= lt!2693916 0)))

(declare-fun e!4679718 () Int)

(assert (=> d!2369487 (= lt!2693916 e!4679718)))

(declare-fun c!1456364 () Bool)

(assert (=> d!2369487 (= c!1456364 ((_ is Nil!74450) lt!2693790))))

(assert (=> d!2369487 (= (size!43253 lt!2693790) lt!2693916)))

(declare-fun b!7929918 () Bool)

(assert (=> b!7929918 (= e!4679718 0)))

(declare-fun b!7929919 () Bool)

(assert (=> b!7929919 (= e!4679718 (+ 1 (size!43253 (t!390205 lt!2693790))))))

(assert (= (and d!2369487 c!1456364) b!7929918))

(assert (= (and d!2369487 (not c!1456364)) b!7929919))

(declare-fun m!8313844 () Bool)

(assert (=> b!7929919 m!8313844))

(assert (=> b!7929387 d!2369487))

(assert (=> b!7929387 d!2369457))

(declare-fun d!2369491 () Bool)

(declare-fun lt!2693934 () Int)

(assert (=> d!2369491 (>= lt!2693934 0)))

(declare-fun e!4679725 () Int)

(assert (=> d!2369491 (= lt!2693934 e!4679725)))

(declare-fun c!1456370 () Bool)

(assert (=> d!2369491 (= c!1456370 ((_ is Nil!74450) lt!2693715))))

(assert (=> d!2369491 (= (size!43253 lt!2693715) lt!2693934)))

(declare-fun b!7929921 () Bool)

(assert (=> b!7929921 (= e!4679725 0)))

(declare-fun b!7929923 () Bool)

(assert (=> b!7929923 (= e!4679725 (+ 1 (size!43253 (t!390205 lt!2693715))))))

(assert (= (and d!2369491 c!1456370) b!7929921))

(assert (= (and d!2369491 (not c!1456370)) b!7929923))

(assert (=> b!7929923 m!8313842))

(assert (=> b!7929387 d!2369491))

(declare-fun b!7929935 () Bool)

(declare-fun res!3146496 () Bool)

(declare-fun e!4679726 () Bool)

(assert (=> b!7929935 (=> (not res!3146496) (not e!4679726))))

(declare-fun lt!2693936 () List!74574)

(assert (=> b!7929935 (= res!3146496 (= (size!43253 lt!2693936) (+ (size!43253 (t!390205 (list!19417 t!4440))) 1)))))

(declare-fun b!7929936 () Bool)

(declare-fun e!4679728 () Bool)

(declare-fun call!735357 () (_ BitVec 32))

(declare-fun call!735358 () (_ BitVec 32))

(assert (=> b!7929936 (= e!4679728 (= call!735357 (bvadd call!735358 #b00000000000000000000000000000001)))))

(declare-fun b!7929937 () Bool)

(declare-fun res!3146497 () Bool)

(assert (=> b!7929937 (=> (not res!3146497) (not e!4679726))))

(assert (=> b!7929937 (= res!3146497 e!4679728)))

(declare-fun c!1456372 () Bool)

(assert (=> b!7929937 (= c!1456372 (bvslt (isize!121 (t!390205 (list!19417 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7929938 () Bool)

(declare-fun e!4679727 () List!74574)

(assert (=> b!7929938 (= e!4679727 (Cons!74450 (h!80898 (t!390205 (list!19417 t!4440))) ($colon+!317 (t!390205 (t!390205 (list!19417 t!4440))) v!5484)))))

(declare-fun b!7929939 () Bool)

(assert (=> b!7929939 (= e!4679726 (= lt!2693936 (++!18261 (t!390205 (list!19417 t!4440)) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7929940 () Bool)

(assert (=> b!7929940 (= e!4679727 (Cons!74450 v!5484 (t!390205 (list!19417 t!4440))))))

(declare-fun b!7929941 () Bool)

(declare-fun res!3146498 () Bool)

(assert (=> b!7929941 (=> (not res!3146498) (not e!4679726))))

(assert (=> b!7929941 (= res!3146498 (= (content!15785 lt!2693936) ((_ map or) (content!15785 (t!390205 (list!19417 t!4440))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735353 () Bool)

(assert (=> bm!735353 (= call!735357 (isize!121 lt!2693936))))

(declare-fun b!7929942 () Bool)

(assert (=> b!7929942 (= e!4679728 (= call!735357 call!735358))))

(declare-fun bm!735352 () Bool)

(assert (=> bm!735352 (= call!735358 (isize!121 (t!390205 (list!19417 t!4440))))))

(declare-fun d!2369493 () Bool)

(assert (=> d!2369493 e!4679726))

(declare-fun res!3146495 () Bool)

(assert (=> d!2369493 (=> (not res!3146495) (not e!4679726))))

(assert (=> d!2369493 (= res!3146495 ((_ is Cons!74450) lt!2693936))))

(assert (=> d!2369493 (= lt!2693936 e!4679727)))

(declare-fun c!1456371 () Bool)

(assert (=> d!2369493 (= c!1456371 ((_ is Nil!74450) (t!390205 (list!19417 t!4440))))))

(assert (=> d!2369493 (= ($colon+!317 (t!390205 (list!19417 t!4440)) v!5484) lt!2693936)))

(assert (= (and d!2369493 c!1456371) b!7929940))

(assert (= (and d!2369493 (not c!1456371)) b!7929938))

(assert (= (and d!2369493 res!3146495) b!7929935))

(assert (= (and b!7929935 res!3146496) b!7929937))

(assert (= (and b!7929937 c!1456372) b!7929936))

(assert (= (and b!7929937 (not c!1456372)) b!7929942))

(assert (= (or b!7929936 b!7929942) bm!735353))

(assert (= (or b!7929936 b!7929942) bm!735352))

(assert (= (and b!7929937 res!3146497) b!7929941))

(assert (= (and b!7929941 res!3146498) b!7929939))

(declare-fun m!8313846 () Bool)

(assert (=> b!7929935 m!8313846))

(declare-fun m!8313848 () Bool)

(assert (=> b!7929935 m!8313848))

(declare-fun m!8313850 () Bool)

(assert (=> b!7929937 m!8313850))

(declare-fun m!8313852 () Bool)

(assert (=> b!7929939 m!8313852))

(declare-fun m!8313854 () Bool)

(assert (=> b!7929941 m!8313854))

(declare-fun m!8313856 () Bool)

(assert (=> b!7929941 m!8313856))

(assert (=> b!7929941 m!8313196))

(assert (=> bm!735352 m!8313850))

(declare-fun m!8313858 () Bool)

(assert (=> bm!735353 m!8313858))

(declare-fun m!8313860 () Bool)

(assert (=> b!7929938 m!8313860))

(assert (=> b!7929526 d!2369493))

(declare-fun d!2369495 () Bool)

(declare-fun lt!2693937 () Int)

(assert (=> d!2369495 (>= lt!2693937 0)))

(declare-fun e!4679729 () Int)

(assert (=> d!2369495 (= lt!2693937 e!4679729)))

(declare-fun c!1456373 () Bool)

(assert (=> d!2369495 (= c!1456373 ((_ is Nil!74450) lt!2693768))))

(assert (=> d!2369495 (= (size!43253 lt!2693768) lt!2693937)))

(declare-fun b!7929943 () Bool)

(assert (=> b!7929943 (= e!4679729 0)))

(declare-fun b!7929944 () Bool)

(assert (=> b!7929944 (= e!4679729 (+ 1 (size!43253 (t!390205 lt!2693768))))))

(assert (= (and d!2369495 c!1456373) b!7929943))

(assert (= (and d!2369495 (not c!1456373)) b!7929944))

(declare-fun m!8313862 () Bool)

(assert (=> b!7929944 m!8313862))

(assert (=> b!7929358 d!2369495))

(declare-fun d!2369497 () Bool)

(declare-fun lt!2693938 () Int)

(assert (=> d!2369497 (>= lt!2693938 0)))

(declare-fun e!4679730 () Int)

(assert (=> d!2369497 (= lt!2693938 e!4679730)))

(declare-fun c!1456374 () Bool)

(assert (=> d!2369497 (= c!1456374 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693717)))))

(assert (=> d!2369497 (= (size!43253 (++!18261 lt!2693714 lt!2693717)) lt!2693938)))

(declare-fun b!7929945 () Bool)

(assert (=> b!7929945 (= e!4679730 0)))

(declare-fun b!7929946 () Bool)

(assert (=> b!7929946 (= e!4679730 (+ 1 (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693717)))))))

(assert (= (and d!2369497 c!1456374) b!7929945))

(assert (= (and d!2369497 (not c!1456374)) b!7929946))

(declare-fun m!8313864 () Bool)

(assert (=> b!7929946 m!8313864))

(assert (=> b!7929358 d!2369497))

(declare-fun d!2369499 () Bool)

(declare-fun lt!2693939 () Int)

(assert (=> d!2369499 (>= lt!2693939 0)))

(declare-fun e!4679731 () Int)

(assert (=> d!2369499 (= lt!2693939 e!4679731)))

(declare-fun c!1456375 () Bool)

(assert (=> d!2369499 (= c!1456375 ((_ is Nil!74450) lt!2693712))))

(assert (=> d!2369499 (= (size!43253 lt!2693712) lt!2693939)))

(declare-fun b!7929947 () Bool)

(assert (=> b!7929947 (= e!4679731 0)))

(declare-fun b!7929948 () Bool)

(assert (=> b!7929948 (= e!4679731 (+ 1 (size!43253 (t!390205 lt!2693712))))))

(assert (= (and d!2369499 c!1456375) b!7929947))

(assert (= (and d!2369499 (not c!1456375)) b!7929948))

(declare-fun m!8313866 () Bool)

(assert (=> b!7929948 m!8313866))

(assert (=> b!7929358 d!2369499))

(declare-fun b!7929949 () Bool)

(declare-fun res!3146502 () Bool)

(declare-fun e!4679732 () Bool)

(assert (=> b!7929949 (=> (not res!3146502) (not e!4679732))))

(assert (=> b!7929949 (= res!3146502 (isBalanced!4530 (left!56876 (left!56876 t!4440))))))

(declare-fun d!2369501 () Bool)

(declare-fun res!3146499 () Bool)

(declare-fun e!4679733 () Bool)

(assert (=> d!2369501 (=> res!3146499 e!4679733)))

(assert (=> d!2369501 (= res!3146499 (not ((_ is Node!15904) (left!56876 t!4440))))))

(assert (=> d!2369501 (= (isBalanced!4530 (left!56876 t!4440)) e!4679733)))

(declare-fun b!7929950 () Bool)

(declare-fun res!3146504 () Bool)

(assert (=> b!7929950 (=> (not res!3146504) (not e!4679732))))

(assert (=> b!7929950 (= res!3146504 (isBalanced!4530 (right!57206 (left!56876 t!4440))))))

(declare-fun b!7929951 () Bool)

(declare-fun res!3146500 () Bool)

(assert (=> b!7929951 (=> (not res!3146500) (not e!4679732))))

(assert (=> b!7929951 (= res!3146500 (not (isEmpty!42779 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7929952 () Bool)

(declare-fun res!3146501 () Bool)

(assert (=> b!7929952 (=> (not res!3146501) (not e!4679732))))

(assert (=> b!7929952 (= res!3146501 (<= (- (height!2219 (left!56876 (left!56876 t!4440))) (height!2219 (right!57206 (left!56876 t!4440)))) 1))))

(declare-fun b!7929953 () Bool)

(assert (=> b!7929953 (= e!4679733 e!4679732)))

(declare-fun res!3146503 () Bool)

(assert (=> b!7929953 (=> (not res!3146503) (not e!4679732))))

(assert (=> b!7929953 (= res!3146503 (<= (- 1) (- (height!2219 (left!56876 (left!56876 t!4440))) (height!2219 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7929954 () Bool)

(assert (=> b!7929954 (= e!4679732 (not (isEmpty!42779 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2369501 (not res!3146499)) b!7929953))

(assert (= (and b!7929953 res!3146503) b!7929952))

(assert (= (and b!7929952 res!3146501) b!7929949))

(assert (= (and b!7929949 res!3146502) b!7929950))

(assert (= (and b!7929950 res!3146504) b!7929951))

(assert (= (and b!7929951 res!3146500) b!7929954))

(declare-fun m!8313882 () Bool)

(assert (=> b!7929954 m!8313882))

(declare-fun m!8313886 () Bool)

(assert (=> b!7929953 m!8313886))

(declare-fun m!8313890 () Bool)

(assert (=> b!7929953 m!8313890))

(declare-fun m!8313894 () Bool)

(assert (=> b!7929950 m!8313894))

(declare-fun m!8313898 () Bool)

(assert (=> b!7929949 m!8313898))

(assert (=> b!7929952 m!8313886))

(assert (=> b!7929952 m!8313890))

(declare-fun m!8313902 () Bool)

(assert (=> b!7929951 m!8313902))

(assert (=> b!7929283 d!2369501))

(declare-fun d!2369503 () Bool)

(declare-fun lt!2693940 () Bool)

(assert (=> d!2369503 (= lt!2693940 (isEmpty!42782 (list!19417 (left!56876 t!4440))))))

(assert (=> d!2369503 (= lt!2693940 (= (size!43255 (left!56876 t!4440)) 0))))

(assert (=> d!2369503 (= (isEmpty!42779 (left!56876 t!4440)) lt!2693940)))

(declare-fun bs!1968937 () Bool)

(assert (= bs!1968937 d!2369503))

(assert (=> bs!1968937 m!8312792))

(assert (=> bs!1968937 m!8312792))

(declare-fun m!8313908 () Bool)

(assert (=> bs!1968937 m!8313908))

(assert (=> bs!1968937 m!8313360))

(assert (=> b!7929285 d!2369503))

(declare-fun d!2369505 () Bool)

(declare-fun lt!2693941 () Int)

(assert (=> d!2369505 (>= lt!2693941 0)))

(declare-fun e!4679734 () Int)

(assert (=> d!2369505 (= lt!2693941 e!4679734)))

(declare-fun c!1456376 () Bool)

(assert (=> d!2369505 (= c!1456376 ((_ is Nil!74450) lt!2693770))))

(assert (=> d!2369505 (= (size!43253 lt!2693770) lt!2693941)))

(declare-fun b!7929955 () Bool)

(assert (=> b!7929955 (= e!4679734 0)))

(declare-fun b!7929956 () Bool)

(assert (=> b!7929956 (= e!4679734 (+ 1 (size!43253 (t!390205 lt!2693770))))))

(assert (= (and d!2369505 c!1456376) b!7929955))

(assert (= (and d!2369505 (not c!1456376)) b!7929956))

(declare-fun m!8313922 () Bool)

(assert (=> b!7929956 m!8313922))

(assert (=> b!7929366 d!2369505))

(assert (=> b!7929366 d!2369457))

(declare-fun d!2369507 () Bool)

(declare-fun lt!2693942 () Int)

(assert (=> d!2369507 (>= lt!2693942 0)))

(declare-fun e!4679735 () Int)

(assert (=> d!2369507 (= lt!2693942 e!4679735)))

(declare-fun c!1456377 () Bool)

(assert (=> d!2369507 (= c!1456377 ((_ is Nil!74450) lt!2693717))))

(assert (=> d!2369507 (= (size!43253 lt!2693717) lt!2693942)))

(declare-fun b!7929957 () Bool)

(assert (=> b!7929957 (= e!4679735 0)))

(declare-fun b!7929958 () Bool)

(assert (=> b!7929958 (= e!4679735 (+ 1 (size!43253 (t!390205 lt!2693717))))))

(assert (= (and d!2369507 c!1456377) b!7929957))

(assert (= (and d!2369507 (not c!1456377)) b!7929958))

(assert (=> b!7929958 m!8313560))

(assert (=> b!7929366 d!2369507))

(declare-fun b!7929959 () Bool)

(declare-fun res!3146508 () Bool)

(declare-fun e!4679736 () Bool)

(assert (=> b!7929959 (=> (not res!3146508) (not e!4679736))))

(assert (=> b!7929959 (= res!3146508 (isBalanced!4530 (left!56876 lt!2693867)))))

(declare-fun d!2369509 () Bool)

(declare-fun res!3146505 () Bool)

(declare-fun e!4679737 () Bool)

(assert (=> d!2369509 (=> res!3146505 e!4679737)))

(assert (=> d!2369509 (= res!3146505 (not ((_ is Node!15904) lt!2693867)))))

(assert (=> d!2369509 (= (isBalanced!4530 lt!2693867) e!4679737)))

(declare-fun b!7929960 () Bool)

(declare-fun res!3146510 () Bool)

(assert (=> b!7929960 (=> (not res!3146510) (not e!4679736))))

(assert (=> b!7929960 (= res!3146510 (isBalanced!4530 (right!57206 lt!2693867)))))

(declare-fun b!7929961 () Bool)

(declare-fun res!3146506 () Bool)

(assert (=> b!7929961 (=> (not res!3146506) (not e!4679736))))

(assert (=> b!7929961 (= res!3146506 (not (isEmpty!42779 (left!56876 lt!2693867))))))

(declare-fun b!7929962 () Bool)

(declare-fun res!3146507 () Bool)

(assert (=> b!7929962 (=> (not res!3146507) (not e!4679736))))

(assert (=> b!7929962 (= res!3146507 (<= (- (height!2219 (left!56876 lt!2693867)) (height!2219 (right!57206 lt!2693867))) 1))))

(declare-fun b!7929963 () Bool)

(assert (=> b!7929963 (= e!4679737 e!4679736)))

(declare-fun res!3146509 () Bool)

(assert (=> b!7929963 (=> (not res!3146509) (not e!4679736))))

(assert (=> b!7929963 (= res!3146509 (<= (- 1) (- (height!2219 (left!56876 lt!2693867)) (height!2219 (right!57206 lt!2693867)))))))

(declare-fun b!7929964 () Bool)

(assert (=> b!7929964 (= e!4679736 (not (isEmpty!42779 (right!57206 lt!2693867))))))

(assert (= (and d!2369509 (not res!3146505)) b!7929963))

(assert (= (and b!7929963 res!3146509) b!7929962))

(assert (= (and b!7929962 res!3146507) b!7929959))

(assert (= (and b!7929959 res!3146508) b!7929960))

(assert (= (and b!7929960 res!3146510) b!7929961))

(assert (= (and b!7929961 res!3146506) b!7929964))

(declare-fun m!8313930 () Bool)

(assert (=> b!7929964 m!8313930))

(declare-fun m!8313932 () Bool)

(assert (=> b!7929963 m!8313932))

(declare-fun m!8313936 () Bool)

(assert (=> b!7929963 m!8313936))

(declare-fun m!8313940 () Bool)

(assert (=> b!7929960 m!8313940))

(declare-fun m!8313944 () Bool)

(assert (=> b!7929959 m!8313944))

(assert (=> b!7929962 m!8313932))

(assert (=> b!7929962 m!8313936))

(declare-fun m!8313950 () Bool)

(assert (=> b!7929961 m!8313950))

(assert (=> d!2369305 d!2369509))

(declare-fun b!7929971 () Bool)

(declare-fun res!3146520 () Bool)

(declare-fun e!4679740 () Bool)

(assert (=> b!7929971 (=> (not res!3146520) (not e!4679740))))

(assert (=> b!7929971 (= res!3146520 (isBalanced!4530 (left!56876 (right!57206 t!4440))))))

(declare-fun d!2369513 () Bool)

(declare-fun res!3146517 () Bool)

(declare-fun e!4679741 () Bool)

(assert (=> d!2369513 (=> res!3146517 e!4679741)))

(assert (=> d!2369513 (= res!3146517 (not ((_ is Node!15904) (right!57206 t!4440))))))

(assert (=> d!2369513 (= (isBalanced!4530 (right!57206 t!4440)) e!4679741)))

(declare-fun b!7929972 () Bool)

(declare-fun res!3146522 () Bool)

(assert (=> b!7929972 (=> (not res!3146522) (not e!4679740))))

(assert (=> b!7929972 (= res!3146522 (isBalanced!4530 (right!57206 (right!57206 t!4440))))))

(declare-fun b!7929973 () Bool)

(declare-fun res!3146518 () Bool)

(assert (=> b!7929973 (=> (not res!3146518) (not e!4679740))))

(assert (=> b!7929973 (= res!3146518 (not (isEmpty!42779 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7929974 () Bool)

(declare-fun res!3146519 () Bool)

(assert (=> b!7929974 (=> (not res!3146519) (not e!4679740))))

(assert (=> b!7929974 (= res!3146519 (<= (- (height!2219 (left!56876 (right!57206 t!4440))) (height!2219 (right!57206 (right!57206 t!4440)))) 1))))

(declare-fun b!7929975 () Bool)

(assert (=> b!7929975 (= e!4679741 e!4679740)))

(declare-fun res!3146521 () Bool)

(assert (=> b!7929975 (=> (not res!3146521) (not e!4679740))))

(assert (=> b!7929975 (= res!3146521 (<= (- 1) (- (height!2219 (left!56876 (right!57206 t!4440))) (height!2219 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7929976 () Bool)

(assert (=> b!7929976 (= e!4679740 (not (isEmpty!42779 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2369513 (not res!3146517)) b!7929975))

(assert (= (and b!7929975 res!3146521) b!7929974))

(assert (= (and b!7929974 res!3146519) b!7929971))

(assert (= (and b!7929971 res!3146520) b!7929972))

(assert (= (and b!7929972 res!3146522) b!7929973))

(assert (= (and b!7929973 res!3146518) b!7929976))

(declare-fun m!8313958 () Bool)

(assert (=> b!7929976 m!8313958))

(assert (=> b!7929975 m!8313304))

(declare-fun m!8313960 () Bool)

(assert (=> b!7929975 m!8313960))

(declare-fun m!8313962 () Bool)

(assert (=> b!7929972 m!8313962))

(declare-fun m!8313964 () Bool)

(assert (=> b!7929971 m!8313964))

(assert (=> b!7929974 m!8313304))

(assert (=> b!7929974 m!8313960))

(declare-fun m!8313968 () Bool)

(assert (=> b!7929973 m!8313968))

(assert (=> d!2369305 d!2369513))

(declare-fun b!7929985 () Bool)

(declare-fun res!3146526 () Bool)

(declare-fun e!4679746 () Bool)

(assert (=> b!7929985 (=> (not res!3146526) (not e!4679746))))

(assert (=> b!7929985 (= res!3146526 (isBalanced!4530 (left!56876 (right!57206 lt!2693719))))))

(declare-fun d!2369523 () Bool)

(declare-fun res!3146523 () Bool)

(declare-fun e!4679747 () Bool)

(assert (=> d!2369523 (=> res!3146523 e!4679747)))

(assert (=> d!2369523 (= res!3146523 (not ((_ is Node!15904) (right!57206 lt!2693719))))))

(assert (=> d!2369523 (= (isBalanced!4530 (right!57206 lt!2693719)) e!4679747)))

(declare-fun b!7929986 () Bool)

(declare-fun res!3146528 () Bool)

(assert (=> b!7929986 (=> (not res!3146528) (not e!4679746))))

(assert (=> b!7929986 (= res!3146528 (isBalanced!4530 (right!57206 (right!57206 lt!2693719))))))

(declare-fun b!7929987 () Bool)

(declare-fun res!3146524 () Bool)

(assert (=> b!7929987 (=> (not res!3146524) (not e!4679746))))

(assert (=> b!7929987 (= res!3146524 (not (isEmpty!42779 (left!56876 (right!57206 lt!2693719)))))))

(declare-fun b!7929988 () Bool)

(declare-fun res!3146525 () Bool)

(assert (=> b!7929988 (=> (not res!3146525) (not e!4679746))))

(assert (=> b!7929988 (= res!3146525 (<= (- (height!2219 (left!56876 (right!57206 lt!2693719))) (height!2219 (right!57206 (right!57206 lt!2693719)))) 1))))

(declare-fun b!7929989 () Bool)

(assert (=> b!7929989 (= e!4679747 e!4679746)))

(declare-fun res!3146527 () Bool)

(assert (=> b!7929989 (=> (not res!3146527) (not e!4679746))))

(assert (=> b!7929989 (= res!3146527 (<= (- 1) (- (height!2219 (left!56876 (right!57206 lt!2693719))) (height!2219 (right!57206 (right!57206 lt!2693719))))))))

(declare-fun b!7929990 () Bool)

(assert (=> b!7929990 (= e!4679746 (not (isEmpty!42779 (right!57206 (right!57206 lt!2693719)))))))

(assert (= (and d!2369523 (not res!3146523)) b!7929989))

(assert (= (and b!7929989 res!3146527) b!7929988))

(assert (= (and b!7929988 res!3146525) b!7929985))

(assert (= (and b!7929985 res!3146526) b!7929986))

(assert (= (and b!7929986 res!3146528) b!7929987))

(assert (= (and b!7929987 res!3146524) b!7929990))

(declare-fun m!8313976 () Bool)

(assert (=> b!7929990 m!8313976))

(declare-fun m!8313978 () Bool)

(assert (=> b!7929989 m!8313978))

(declare-fun m!8313982 () Bool)

(assert (=> b!7929989 m!8313982))

(declare-fun m!8313986 () Bool)

(assert (=> b!7929986 m!8313986))

(declare-fun m!8313988 () Bool)

(assert (=> b!7929985 m!8313988))

(assert (=> b!7929988 m!8313978))

(assert (=> b!7929988 m!8313982))

(declare-fun m!8313990 () Bool)

(assert (=> b!7929987 m!8313990))

(assert (=> b!7929394 d!2369523))

(declare-fun d!2369531 () Bool)

(declare-fun e!4679754 () Bool)

(assert (=> d!2369531 e!4679754))

(declare-fun res!3146532 () Bool)

(assert (=> d!2369531 (=> (not res!3146532) (not e!4679754))))

(declare-fun lt!2693947 () List!74574)

(assert (=> d!2369531 (= res!3146532 (= (content!15785 lt!2693947) ((_ map or) (content!15785 (ite c!1456280 lt!2693861 lt!2693863)) (content!15785 (ite c!1456280 call!735335 lt!2693866)))))))

(declare-fun e!4679753 () List!74574)

(assert (=> d!2369531 (= lt!2693947 e!4679753)))

(declare-fun c!1456385 () Bool)

(assert (=> d!2369531 (= c!1456385 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693863)))))

(assert (=> d!2369531 (= (++!18261 (ite c!1456280 lt!2693861 lt!2693863) (ite c!1456280 call!735335 lt!2693866)) lt!2693947)))

(declare-fun b!7930000 () Bool)

(assert (=> b!7930000 (= e!4679753 (Cons!74450 (h!80898 (ite c!1456280 lt!2693861 lt!2693863)) (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693863)) (ite c!1456280 call!735335 lt!2693866))))))

(declare-fun b!7929999 () Bool)

(assert (=> b!7929999 (= e!4679753 (ite c!1456280 call!735335 lt!2693866))))

(declare-fun b!7930001 () Bool)

(declare-fun res!3146531 () Bool)

(assert (=> b!7930001 (=> (not res!3146531) (not e!4679754))))

(assert (=> b!7930001 (= res!3146531 (= (size!43253 lt!2693947) (+ (size!43253 (ite c!1456280 lt!2693861 lt!2693863)) (size!43253 (ite c!1456280 call!735335 lt!2693866)))))))

(declare-fun b!7930002 () Bool)

(assert (=> b!7930002 (= e!4679754 (or (not (= (ite c!1456280 call!735335 lt!2693866) Nil!74450)) (= lt!2693947 (ite c!1456280 lt!2693861 lt!2693863))))))

(assert (= (and d!2369531 c!1456385) b!7929999))

(assert (= (and d!2369531 (not c!1456385)) b!7930000))

(assert (= (and d!2369531 res!3146532) b!7930001))

(assert (= (and b!7930001 res!3146531) b!7930002))

(declare-fun m!8314004 () Bool)

(assert (=> d!2369531 m!8314004))

(declare-fun m!8314006 () Bool)

(assert (=> d!2369531 m!8314006))

(declare-fun m!8314008 () Bool)

(assert (=> d!2369531 m!8314008))

(declare-fun m!8314010 () Bool)

(assert (=> b!7930000 m!8314010))

(declare-fun m!8314012 () Bool)

(assert (=> b!7930001 m!8314012))

(declare-fun m!8314014 () Bool)

(assert (=> b!7930001 m!8314014))

(declare-fun m!8314016 () Bool)

(assert (=> b!7930001 m!8314016))

(assert (=> bm!735329 d!2369531))

(declare-fun d!2369539 () Bool)

(assert (=> d!2369539 (= (height!2219 (left!56876 lt!2693719)) (ite ((_ is Empty!15904) (left!56876 lt!2693719)) 0 (ite ((_ is Leaf!30237) (left!56876 lt!2693719)) 1 (cheight!16115 (left!56876 lt!2693719)))))))

(assert (=> b!7929396 d!2369539))

(declare-fun d!2369541 () Bool)

(assert (=> d!2369541 (= (height!2219 (right!57206 lt!2693719)) (ite ((_ is Empty!15904) (right!57206 lt!2693719)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693719)) 1 (cheight!16115 (right!57206 lt!2693719)))))))

(assert (=> b!7929396 d!2369541))

(declare-fun d!2369543 () Bool)

(declare-fun e!4679758 () Bool)

(assert (=> d!2369543 e!4679758))

(declare-fun res!3146534 () Bool)

(assert (=> d!2369543 (=> (not res!3146534) (not e!4679758))))

(declare-fun lt!2693948 () List!74574)

(assert (=> d!2369543 (= res!3146534 (= (content!15785 lt!2693948) ((_ map or) (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693715))) (content!15785 lt!2693721))))))

(declare-fun e!4679757 () List!74574)

(assert (=> d!2369543 (= lt!2693948 e!4679757)))

(declare-fun c!1456388 () Bool)

(assert (=> d!2369543 (= c!1456388 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693715))))))

(assert (=> d!2369543 (= (++!18261 (t!390205 (++!18261 lt!2693714 lt!2693715)) lt!2693721) lt!2693948)))

(declare-fun b!7930008 () Bool)

(assert (=> b!7930008 (= e!4679757 (Cons!74450 (h!80898 (t!390205 (++!18261 lt!2693714 lt!2693715))) (++!18261 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715))) lt!2693721)))))

(declare-fun b!7930007 () Bool)

(assert (=> b!7930007 (= e!4679757 lt!2693721)))

(declare-fun b!7930009 () Bool)

(declare-fun res!3146533 () Bool)

(assert (=> b!7930009 (=> (not res!3146533) (not e!4679758))))

(assert (=> b!7930009 (= res!3146533 (= (size!43253 lt!2693948) (+ (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693715))) (size!43253 lt!2693721))))))

(declare-fun b!7930010 () Bool)

(assert (=> b!7930010 (= e!4679758 (or (not (= lt!2693721 Nil!74450)) (= lt!2693948 (t!390205 (++!18261 lt!2693714 lt!2693715)))))))

(assert (= (and d!2369543 c!1456388) b!7930007))

(assert (= (and d!2369543 (not c!1456388)) b!7930008))

(assert (= (and d!2369543 res!3146534) b!7930009))

(assert (= (and b!7930009 res!3146533) b!7930010))

(declare-fun m!8314018 () Bool)

(assert (=> d!2369543 m!8314018))

(assert (=> d!2369543 m!8313454))

(assert (=> d!2369543 m!8312884))

(declare-fun m!8314020 () Bool)

(assert (=> b!7930008 m!8314020))

(declare-fun m!8314022 () Bool)

(assert (=> b!7930009 m!8314022))

(declare-fun m!8314024 () Bool)

(assert (=> b!7930009 m!8314024))

(assert (=> b!7930009 m!8312892))

(assert (=> b!7929353 d!2369543))

(declare-fun d!2369547 () Bool)

(declare-fun c!1456389 () Bool)

(assert (=> d!2369547 (= c!1456389 ((_ is Nil!74450) lt!2693810))))

(declare-fun e!4679759 () (InoxSet T!145818))

(assert (=> d!2369547 (= (content!15785 lt!2693810) e!4679759)))

(declare-fun b!7930011 () Bool)

(assert (=> b!7930011 (= e!4679759 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930012 () Bool)

(assert (=> b!7930012 (= e!4679759 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693810) true) (content!15785 (t!390205 lt!2693810))))))

(assert (= (and d!2369547 c!1456389) b!7930011))

(assert (= (and d!2369547 (not c!1456389)) b!7930012))

(declare-fun m!8314026 () Bool)

(assert (=> b!7930012 m!8314026))

(declare-fun m!8314028 () Bool)

(assert (=> b!7930012 m!8314028))

(assert (=> b!7929529 d!2369547))

(declare-fun d!2369549 () Bool)

(declare-fun c!1456390 () Bool)

(assert (=> d!2369549 (= c!1456390 ((_ is Nil!74450) (list!19417 t!4440)))))

(declare-fun e!4679760 () (InoxSet T!145818))

(assert (=> d!2369549 (= (content!15785 (list!19417 t!4440)) e!4679760)))

(declare-fun b!7930013 () Bool)

(assert (=> b!7930013 (= e!4679760 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930014 () Bool)

(assert (=> b!7930014 (= e!4679760 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 t!4440)) true) (content!15785 (t!390205 (list!19417 t!4440)))))))

(assert (= (and d!2369549 c!1456390) b!7930013))

(assert (= (and d!2369549 (not c!1456390)) b!7930014))

(declare-fun m!8314030 () Bool)

(assert (=> b!7930014 m!8314030))

(assert (=> b!7930014 m!8313856))

(assert (=> b!7929529 d!2369549))

(declare-fun d!2369551 () Bool)

(assert (=> d!2369551 (= (list!19419 (xs!19294 (left!56876 lt!2693711))) (innerList!15992 (xs!19294 (left!56876 lt!2693711))))))

(assert (=> b!7929441 d!2369551))

(declare-fun d!2369553 () Bool)

(assert (=> d!2369553 (= (++!18261 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864)) (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864))))))

(declare-fun lt!2693949 () Unit!169569)

(assert (=> d!2369553 (= lt!2693949 (choose!59834 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)))))

(assert (=> d!2369553 (= (lemmaConcatAssociativity!3164 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)) lt!2693949)))

(declare-fun bs!1968938 () Bool)

(assert (= bs!1968938 d!2369553))

(declare-fun m!8314032 () Bool)

(assert (=> bs!1968938 m!8314032))

(declare-fun m!8314034 () Bool)

(assert (=> bs!1968938 m!8314034))

(declare-fun m!8314036 () Bool)

(assert (=> bs!1968938 m!8314036))

(declare-fun m!8314038 () Bool)

(assert (=> bs!1968938 m!8314038))

(assert (=> bs!1968938 m!8314032))

(declare-fun m!8314040 () Bool)

(assert (=> bs!1968938 m!8314040))

(assert (=> bs!1968938 m!8314034))

(assert (=> bm!735330 d!2369553))

(assert (=> b!7929287 d!2369303))

(assert (=> b!7929287 d!2369383))

(declare-fun d!2369555 () Bool)

(assert (=> d!2369555 (= (list!19419 (xs!19294 (right!57206 t!4440))) (innerList!15992 (xs!19294 (right!57206 t!4440))))))

(assert (=> b!7929391 d!2369555))

(declare-fun c!1456391 () Bool)

(declare-fun d!2369557 () Bool)

(assert (=> d!2369557 (= c!1456391 ((_ is Empty!15904) (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))

(declare-fun e!4679761 () List!74574)

(assert (=> d!2369557 (= (list!19417 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))) e!4679761)))

(declare-fun b!7930015 () Bool)

(assert (=> b!7930015 (= e!4679761 Nil!74450)))

(declare-fun e!4679762 () List!74574)

(declare-fun b!7930018 () Bool)

(assert (=> b!7930018 (= e!4679762 (++!18261 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))

(declare-fun b!7930017 () Bool)

(assert (=> b!7930017 (= e!4679762 (list!19419 (xs!19294 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(declare-fun b!7930016 () Bool)

(assert (=> b!7930016 (= e!4679761 e!4679762)))

(declare-fun c!1456392 () Bool)

(assert (=> b!7930016 (= c!1456392 ((_ is Leaf!30237) (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))

(assert (= (and d!2369557 c!1456391) b!7930015))

(assert (= (and d!2369557 (not c!1456391)) b!7930016))

(assert (= (and b!7930016 c!1456392) b!7930017))

(assert (= (and b!7930016 (not c!1456392)) b!7930018))

(declare-fun m!8314042 () Bool)

(assert (=> b!7930018 m!8314042))

(declare-fun m!8314044 () Bool)

(assert (=> b!7930018 m!8314044))

(assert (=> b!7930018 m!8314042))

(assert (=> b!7930018 m!8314044))

(declare-fun m!8314046 () Bool)

(assert (=> b!7930018 m!8314046))

(declare-fun m!8314048 () Bool)

(assert (=> b!7930017 m!8314048))

(assert (=> bm!735336 d!2369557))

(declare-fun d!2369559 () Bool)

(declare-fun res!3146547 () Bool)

(declare-fun e!4679775 () Bool)

(assert (=> d!2369559 (=> (not res!3146547) (not e!4679775))))

(assert (=> d!2369559 (= res!3146547 (= (csize!32038 t!4440) (+ (size!43255 (left!56876 t!4440)) (size!43255 (right!57206 t!4440)))))))

(assert (=> d!2369559 (= (inv!95732 t!4440) e!4679775)))

(declare-fun b!7930045 () Bool)

(declare-fun res!3146548 () Bool)

(assert (=> b!7930045 (=> (not res!3146548) (not e!4679775))))

(assert (=> b!7930045 (= res!3146548 (and (not (= (left!56876 t!4440) Empty!15904)) (not (= (right!57206 t!4440) Empty!15904))))))

(declare-fun b!7930046 () Bool)

(declare-fun res!3146549 () Bool)

(assert (=> b!7930046 (=> (not res!3146549) (not e!4679775))))

(assert (=> b!7930046 (= res!3146549 (= (cheight!16115 t!4440) (+ (max!0 (height!2219 (left!56876 t!4440)) (height!2219 (right!57206 t!4440))) 1)))))

(declare-fun b!7930047 () Bool)

(assert (=> b!7930047 (= e!4679775 (<= 0 (cheight!16115 t!4440)))))

(assert (= (and d!2369559 res!3146547) b!7930045))

(assert (= (and b!7930045 res!3146548) b!7930046))

(assert (= (and b!7930046 res!3146549) b!7930047))

(assert (=> d!2369559 m!8313360))

(declare-fun m!8314120 () Bool)

(assert (=> d!2369559 m!8314120))

(assert (=> b!7930046 m!8312824))

(assert (=> b!7930046 m!8312832))

(assert (=> b!7930046 m!8312824))

(assert (=> b!7930046 m!8312832))

(declare-fun m!8314122 () Bool)

(assert (=> b!7930046 m!8314122))

(assert (=> b!7929295 d!2369559))

(declare-fun d!2369585 () Bool)

(declare-fun lt!2693964 () Int)

(assert (=> d!2369585 (= lt!2693964 (size!43253 (list!19417 (left!56876 t!4440))))))

(assert (=> d!2369585 (= lt!2693964 (ite ((_ is Empty!15904) (left!56876 t!4440)) 0 (ite ((_ is Leaf!30237) (left!56876 t!4440)) (csize!32039 (left!56876 t!4440)) (csize!32038 (left!56876 t!4440)))))))

(assert (=> d!2369585 (= (size!43255 (left!56876 t!4440)) lt!2693964)))

(declare-fun bs!1968943 () Bool)

(assert (= bs!1968943 d!2369585))

(assert (=> bs!1968943 m!8312792))

(assert (=> bs!1968943 m!8312792))

(declare-fun m!8314168 () Bool)

(assert (=> bs!1968943 m!8314168))

(assert (=> b!7929669 d!2369585))

(declare-fun d!2369599 () Bool)

(assert (=> d!2369599 (= (height!2219 (left!56876 lt!2693711)) (ite ((_ is Empty!15904) (left!56876 lt!2693711)) 0 (ite ((_ is Leaf!30237) (left!56876 lt!2693711)) 1 (cheight!16115 (left!56876 lt!2693711)))))))

(assert (=> b!7929669 d!2369599))

(declare-fun d!2369601 () Bool)

(assert (=> d!2369601 (= (max!0 (height!2219 (left!56876 t!4440)) (height!2219 (left!56876 lt!2693711))) (ite (< (height!2219 (left!56876 t!4440)) (height!2219 (left!56876 lt!2693711))) (height!2219 (left!56876 lt!2693711)) (height!2219 (left!56876 t!4440))))))

(assert (=> b!7929669 d!2369601))

(assert (=> b!7929669 d!2369303))

(declare-fun d!2369607 () Bool)

(declare-fun lt!2693966 () Int)

(assert (=> d!2369607 (= lt!2693966 (size!43253 (list!19417 (left!56876 lt!2693711))))))

(assert (=> d!2369607 (= lt!2693966 (ite ((_ is Empty!15904) (left!56876 lt!2693711)) 0 (ite ((_ is Leaf!30237) (left!56876 lt!2693711)) (csize!32039 (left!56876 lt!2693711)) (csize!32038 (left!56876 lt!2693711)))))))

(assert (=> d!2369607 (= (size!43255 (left!56876 lt!2693711)) lt!2693966)))

(declare-fun bs!1968944 () Bool)

(assert (= bs!1968944 d!2369607))

(assert (=> bs!1968944 m!8312804))

(assert (=> bs!1968944 m!8312804))

(declare-fun m!8314190 () Bool)

(assert (=> bs!1968944 m!8314190))

(assert (=> b!7929669 d!2369607))

(declare-fun d!2369613 () Bool)

(declare-fun e!4679793 () Bool)

(assert (=> d!2369613 e!4679793))

(declare-fun res!3146557 () Bool)

(assert (=> d!2369613 (=> (not res!3146557) (not e!4679793))))

(declare-fun lt!2693967 () List!74574)

(assert (=> d!2369613 (= res!3146557 (= (content!15785 lt!2693967) ((_ map or) (content!15785 (ite c!1456280 lt!2693861 lt!2693865)) (content!15785 (ite c!1456280 lt!2693859 lt!2693863)))))))

(declare-fun e!4679792 () List!74574)

(assert (=> d!2369613 (= lt!2693967 e!4679792)))

(declare-fun c!1456413 () Bool)

(assert (=> d!2369613 (= c!1456413 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693865)))))

(assert (=> d!2369613 (= (++!18261 (ite c!1456280 lt!2693861 lt!2693865) (ite c!1456280 lt!2693859 lt!2693863)) lt!2693967)))

(declare-fun b!7930081 () Bool)

(assert (=> b!7930081 (= e!4679792 (Cons!74450 (h!80898 (ite c!1456280 lt!2693861 lt!2693865)) (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693865)) (ite c!1456280 lt!2693859 lt!2693863))))))

(declare-fun b!7930080 () Bool)

(assert (=> b!7930080 (= e!4679792 (ite c!1456280 lt!2693859 lt!2693863))))

(declare-fun b!7930082 () Bool)

(declare-fun res!3146556 () Bool)

(assert (=> b!7930082 (=> (not res!3146556) (not e!4679793))))

(assert (=> b!7930082 (= res!3146556 (= (size!43253 lt!2693967) (+ (size!43253 (ite c!1456280 lt!2693861 lt!2693865)) (size!43253 (ite c!1456280 lt!2693859 lt!2693863)))))))

(declare-fun b!7930083 () Bool)

(assert (=> b!7930083 (= e!4679793 (or (not (= (ite c!1456280 lt!2693859 lt!2693863) Nil!74450)) (= lt!2693967 (ite c!1456280 lt!2693861 lt!2693865))))))

(assert (= (and d!2369613 c!1456413) b!7930080))

(assert (= (and d!2369613 (not c!1456413)) b!7930081))

(assert (= (and d!2369613 res!3146557) b!7930082))

(assert (= (and b!7930082 res!3146556) b!7930083))

(declare-fun m!8314204 () Bool)

(assert (=> d!2369613 m!8314204))

(declare-fun m!8314206 () Bool)

(assert (=> d!2369613 m!8314206))

(declare-fun m!8314208 () Bool)

(assert (=> d!2369613 m!8314208))

(declare-fun m!8314210 () Bool)

(assert (=> b!7930081 m!8314210))

(declare-fun m!8314212 () Bool)

(assert (=> b!7930082 m!8314212))

(declare-fun m!8314214 () Bool)

(assert (=> b!7930082 m!8314214))

(declare-fun m!8314216 () Bool)

(assert (=> b!7930082 m!8314216))

(assert (=> bm!735337 d!2369613))

(declare-fun d!2369621 () Bool)

(declare-fun res!3146558 () Bool)

(declare-fun e!4679797 () Bool)

(assert (=> d!2369621 (=> (not res!3146558) (not e!4679797))))

(assert (=> d!2369621 (= res!3146558 (= (csize!32038 (right!57206 t!4440)) (+ (size!43255 (left!56876 (right!57206 t!4440))) (size!43255 (right!57206 (right!57206 t!4440))))))))

(assert (=> d!2369621 (= (inv!95732 (right!57206 t!4440)) e!4679797)))

(declare-fun b!7930090 () Bool)

(declare-fun res!3146559 () Bool)

(assert (=> b!7930090 (=> (not res!3146559) (not e!4679797))))

(assert (=> b!7930090 (= res!3146559 (and (not (= (left!56876 (right!57206 t!4440)) Empty!15904)) (not (= (right!57206 (right!57206 t!4440)) Empty!15904))))))

(declare-fun b!7930091 () Bool)

(declare-fun res!3146560 () Bool)

(assert (=> b!7930091 (=> (not res!3146560) (not e!4679797))))

(assert (=> b!7930091 (= res!3146560 (= (cheight!16115 (right!57206 t!4440)) (+ (max!0 (height!2219 (left!56876 (right!57206 t!4440))) (height!2219 (right!57206 (right!57206 t!4440)))) 1)))))

(declare-fun b!7930092 () Bool)

(assert (=> b!7930092 (= e!4679797 (<= 0 (cheight!16115 (right!57206 t!4440))))))

(assert (= (and d!2369621 res!3146558) b!7930090))

(assert (= (and b!7930090 res!3146559) b!7930091))

(assert (= (and b!7930091 res!3146560) b!7930092))

(declare-fun m!8314222 () Bool)

(assert (=> d!2369621 m!8314222))

(declare-fun m!8314224 () Bool)

(assert (=> d!2369621 m!8314224))

(assert (=> b!7930091 m!8313304))

(assert (=> b!7930091 m!8313960))

(assert (=> b!7930091 m!8313304))

(assert (=> b!7930091 m!8313960))

(declare-fun m!8314226 () Bool)

(assert (=> b!7930091 m!8314226))

(assert (=> b!7929450 d!2369621))

(declare-fun d!2369625 () Bool)

(declare-fun lt!2693968 () Int)

(assert (=> d!2369625 (>= lt!2693968 0)))

(declare-fun e!4679798 () Int)

(assert (=> d!2369625 (= lt!2693968 e!4679798)))

(declare-fun c!1456417 () Bool)

(assert (=> d!2369625 (= c!1456417 ((_ is Nil!74450) lt!2693810))))

(assert (=> d!2369625 (= (size!43253 lt!2693810) lt!2693968)))

(declare-fun b!7930093 () Bool)

(assert (=> b!7930093 (= e!4679798 0)))

(declare-fun b!7930094 () Bool)

(assert (=> b!7930094 (= e!4679798 (+ 1 (size!43253 (t!390205 lt!2693810))))))

(assert (= (and d!2369625 c!1456417) b!7930093))

(assert (= (and d!2369625 (not c!1456417)) b!7930094))

(declare-fun m!8314228 () Bool)

(assert (=> b!7930094 m!8314228))

(assert (=> b!7929523 d!2369625))

(declare-fun d!2369627 () Bool)

(declare-fun lt!2693969 () Int)

(assert (=> d!2369627 (>= lt!2693969 0)))

(declare-fun e!4679799 () Int)

(assert (=> d!2369627 (= lt!2693969 e!4679799)))

(declare-fun c!1456418 () Bool)

(assert (=> d!2369627 (= c!1456418 ((_ is Nil!74450) (list!19417 t!4440)))))

(assert (=> d!2369627 (= (size!43253 (list!19417 t!4440)) lt!2693969)))

(declare-fun b!7930095 () Bool)

(assert (=> b!7930095 (= e!4679799 0)))

(declare-fun b!7930096 () Bool)

(assert (=> b!7930096 (= e!4679799 (+ 1 (size!43253 (t!390205 (list!19417 t!4440)))))))

(assert (= (and d!2369627 c!1456418) b!7930095))

(assert (= (and d!2369627 (not c!1456418)) b!7930096))

(assert (=> b!7930096 m!8313848))

(assert (=> b!7929523 d!2369627))

(declare-fun d!2369629 () Bool)

(declare-fun e!4679801 () Bool)

(assert (=> d!2369629 e!4679801))

(declare-fun res!3146562 () Bool)

(assert (=> d!2369629 (=> (not res!3146562) (not e!4679801))))

(declare-fun lt!2693970 () List!74574)

(assert (=> d!2369629 (= res!3146562 (= (content!15785 lt!2693970) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 t!4440)))) (content!15785 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(declare-fun e!4679800 () List!74574)

(assert (=> d!2369629 (= lt!2693970 e!4679800)))

(declare-fun c!1456419 () Bool)

(assert (=> d!2369629 (= c!1456419 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 t!4440)))))))

(assert (=> d!2369629 (= (++!18261 (list!19417 (left!56876 (left!56876 t!4440))) (list!19417 (right!57206 (left!56876 t!4440)))) lt!2693970)))

(declare-fun b!7930098 () Bool)

(assert (=> b!7930098 (= e!4679800 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 t!4440)))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 t!4440)))) (list!19417 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7930097 () Bool)

(assert (=> b!7930097 (= e!4679800 (list!19417 (right!57206 (left!56876 t!4440))))))

(declare-fun b!7930099 () Bool)

(declare-fun res!3146561 () Bool)

(assert (=> b!7930099 (=> (not res!3146561) (not e!4679801))))

(assert (=> b!7930099 (= res!3146561 (= (size!43253 lt!2693970) (+ (size!43253 (list!19417 (left!56876 (left!56876 t!4440)))) (size!43253 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7930100 () Bool)

(assert (=> b!7930100 (= e!4679801 (or (not (= (list!19417 (right!57206 (left!56876 t!4440))) Nil!74450)) (= lt!2693970 (list!19417 (left!56876 (left!56876 t!4440))))))))

(assert (= (and d!2369629 c!1456419) b!7930097))

(assert (= (and d!2369629 (not c!1456419)) b!7930098))

(assert (= (and d!2369629 res!3146562) b!7930099))

(assert (= (and b!7930099 res!3146561) b!7930100))

(declare-fun m!8314230 () Bool)

(assert (=> d!2369629 m!8314230))

(assert (=> d!2369629 m!8313070))

(declare-fun m!8314232 () Bool)

(assert (=> d!2369629 m!8314232))

(assert (=> d!2369629 m!8313072))

(declare-fun m!8314234 () Bool)

(assert (=> d!2369629 m!8314234))

(assert (=> b!7930098 m!8313072))

(declare-fun m!8314236 () Bool)

(assert (=> b!7930098 m!8314236))

(declare-fun m!8314238 () Bool)

(assert (=> b!7930099 m!8314238))

(assert (=> b!7930099 m!8313070))

(declare-fun m!8314240 () Bool)

(assert (=> b!7930099 m!8314240))

(assert (=> b!7930099 m!8313072))

(declare-fun m!8314242 () Bool)

(assert (=> b!7930099 m!8314242))

(assert (=> b!7929434 d!2369629))

(declare-fun d!2369631 () Bool)

(declare-fun c!1456420 () Bool)

(assert (=> d!2369631 (= c!1456420 ((_ is Empty!15904) (left!56876 (left!56876 t!4440))))))

(declare-fun e!4679802 () List!74574)

(assert (=> d!2369631 (= (list!19417 (left!56876 (left!56876 t!4440))) e!4679802)))

(declare-fun b!7930101 () Bool)

(assert (=> b!7930101 (= e!4679802 Nil!74450)))

(declare-fun b!7930104 () Bool)

(declare-fun e!4679803 () List!74574)

(assert (=> b!7930104 (= e!4679803 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 t!4440)))) (list!19417 (right!57206 (left!56876 (left!56876 t!4440))))))))

(declare-fun b!7930103 () Bool)

(assert (=> b!7930103 (= e!4679803 (list!19419 (xs!19294 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7930102 () Bool)

(assert (=> b!7930102 (= e!4679802 e!4679803)))

(declare-fun c!1456421 () Bool)

(assert (=> b!7930102 (= c!1456421 ((_ is Leaf!30237) (left!56876 (left!56876 t!4440))))))

(assert (= (and d!2369631 c!1456420) b!7930101))

(assert (= (and d!2369631 (not c!1456420)) b!7930102))

(assert (= (and b!7930102 c!1456421) b!7930103))

(assert (= (and b!7930102 (not c!1456421)) b!7930104))

(declare-fun m!8314244 () Bool)

(assert (=> b!7930104 m!8314244))

(declare-fun m!8314246 () Bool)

(assert (=> b!7930104 m!8314246))

(assert (=> b!7930104 m!8314244))

(assert (=> b!7930104 m!8314246))

(declare-fun m!8314248 () Bool)

(assert (=> b!7930104 m!8314248))

(declare-fun m!8314250 () Bool)

(assert (=> b!7930103 m!8314250))

(assert (=> b!7929434 d!2369631))

(declare-fun d!2369633 () Bool)

(declare-fun c!1456424 () Bool)

(assert (=> d!2369633 (= c!1456424 ((_ is Empty!15904) (right!57206 (left!56876 t!4440))))))

(declare-fun e!4679806 () List!74574)

(assert (=> d!2369633 (= (list!19417 (right!57206 (left!56876 t!4440))) e!4679806)))

(declare-fun b!7930109 () Bool)

(assert (=> b!7930109 (= e!4679806 Nil!74450)))

(declare-fun b!7930112 () Bool)

(declare-fun e!4679807 () List!74574)

(assert (=> b!7930112 (= e!4679807 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 t!4440)))) (list!19417 (right!57206 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7930111 () Bool)

(assert (=> b!7930111 (= e!4679807 (list!19419 (xs!19294 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7930110 () Bool)

(assert (=> b!7930110 (= e!4679806 e!4679807)))

(declare-fun c!1456425 () Bool)

(assert (=> b!7930110 (= c!1456425 ((_ is Leaf!30237) (right!57206 (left!56876 t!4440))))))

(assert (= (and d!2369633 c!1456424) b!7930109))

(assert (= (and d!2369633 (not c!1456424)) b!7930110))

(assert (= (and b!7930110 c!1456425) b!7930111))

(assert (= (and b!7930110 (not c!1456425)) b!7930112))

(declare-fun m!8314252 () Bool)

(assert (=> b!7930112 m!8314252))

(declare-fun m!8314254 () Bool)

(assert (=> b!7930112 m!8314254))

(assert (=> b!7930112 m!8314252))

(assert (=> b!7930112 m!8314254))

(declare-fun m!8314256 () Bool)

(assert (=> b!7930112 m!8314256))

(declare-fun m!8314258 () Bool)

(assert (=> b!7930111 m!8314258))

(assert (=> b!7929434 d!2369633))

(assert (=> b!7929654 d!2369383))

(assert (=> b!7929654 d!2369381))

(declare-fun d!2369635 () Bool)

(declare-fun e!4679809 () Bool)

(assert (=> d!2369635 e!4679809))

(declare-fun res!3146564 () Bool)

(assert (=> d!2369635 (=> (not res!3146564) (not e!4679809))))

(declare-fun lt!2693975 () List!74574)

(assert (=> d!2369635 (= res!3146564 (= (content!15785 lt!2693975) ((_ map or) (content!15785 (t!390205 lt!2693714)) (content!15785 lt!2693715))))))

(declare-fun e!4679808 () List!74574)

(assert (=> d!2369635 (= lt!2693975 e!4679808)))

(declare-fun c!1456426 () Bool)

(assert (=> d!2369635 (= c!1456426 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(assert (=> d!2369635 (= (++!18261 (t!390205 lt!2693714) lt!2693715) lt!2693975)))

(declare-fun b!7930114 () Bool)

(assert (=> b!7930114 (= e!4679808 (Cons!74450 (h!80898 (t!390205 lt!2693714)) (++!18261 (t!390205 (t!390205 lt!2693714)) lt!2693715)))))

(declare-fun b!7930113 () Bool)

(assert (=> b!7930113 (= e!4679808 lt!2693715)))

(declare-fun b!7930115 () Bool)

(declare-fun res!3146563 () Bool)

(assert (=> b!7930115 (=> (not res!3146563) (not e!4679809))))

(assert (=> b!7930115 (= res!3146563 (= (size!43253 lt!2693975) (+ (size!43253 (t!390205 lt!2693714)) (size!43253 lt!2693715))))))

(declare-fun b!7930116 () Bool)

(assert (=> b!7930116 (= e!4679809 (or (not (= lt!2693715 Nil!74450)) (= lt!2693975 (t!390205 lt!2693714))))))

(assert (= (and d!2369635 c!1456426) b!7930113))

(assert (= (and d!2369635 (not c!1456426)) b!7930114))

(assert (= (and d!2369635 res!3146564) b!7930115))

(assert (= (and b!7930115 res!3146563) b!7930116))

(declare-fun m!8314260 () Bool)

(assert (=> d!2369635 m!8314260))

(assert (=> d!2369635 m!8313534))

(assert (=> d!2369635 m!8312908))

(declare-fun m!8314262 () Bool)

(assert (=> b!7930114 m!8314262))

(declare-fun m!8314264 () Bool)

(assert (=> b!7930115 m!8314264))

(assert (=> b!7930115 m!8313540))

(assert (=> b!7930115 m!8312914))

(assert (=> b!7929386 d!2369635))

(declare-fun d!2369637 () Bool)

(declare-fun res!3146575 () Bool)

(declare-fun e!4679815 () Bool)

(assert (=> d!2369637 (=> (not res!3146575) (not e!4679815))))

(assert (=> d!2369637 (= res!3146575 (<= (size!43253 (list!19419 (xs!19294 t!4440))) 512))))

(assert (=> d!2369637 (= (inv!95733 t!4440) e!4679815)))

(declare-fun b!7930129 () Bool)

(declare-fun res!3146576 () Bool)

(assert (=> b!7930129 (=> (not res!3146576) (not e!4679815))))

(assert (=> b!7930129 (= res!3146576 (= (csize!32039 t!4440) (size!43253 (list!19419 (xs!19294 t!4440)))))))

(declare-fun b!7930130 () Bool)

(assert (=> b!7930130 (= e!4679815 (and (> (csize!32039 t!4440) 0) (<= (csize!32039 t!4440) 512)))))

(assert (= (and d!2369637 res!3146575) b!7930129))

(assert (= (and b!7930129 res!3146576) b!7930130))

(assert (=> d!2369637 m!8313204))

(assert (=> d!2369637 m!8313204))

(declare-fun m!8314282 () Bool)

(assert (=> d!2369637 m!8314282))

(assert (=> b!7930129 m!8313204))

(assert (=> b!7930129 m!8313204))

(assert (=> b!7930129 m!8314282))

(assert (=> b!7929297 d!2369637))

(declare-fun d!2369643 () Bool)

(declare-fun lt!2693985 () (_ BitVec 32))

(assert (=> d!2369643 (and (bvsle #b00000000000000000000000000000000 lt!2693985) (bvsle lt!2693985 #b01111111111111111111111111111111))))

(declare-fun e!4679824 () (_ BitVec 32))

(assert (=> d!2369643 (= lt!2693985 e!4679824)))

(declare-fun c!1456434 () Bool)

(assert (=> d!2369643 (= c!1456434 ((_ is Nil!74450) (list!19417 t!4440)))))

(assert (=> d!2369643 (= (isize!121 (list!19417 t!4440)) lt!2693985)))

(declare-fun b!7930149 () Bool)

(assert (=> b!7930149 (= e!4679824 #b00000000000000000000000000000000)))

(declare-fun b!7930150 () Bool)

(declare-fun lt!2693986 () (_ BitVec 32))

(assert (=> b!7930150 (= e!4679824 (ite (= lt!2693986 #b01111111111111111111111111111111) lt!2693986 (bvadd #b00000000000000000000000000000001 lt!2693986)))))

(assert (=> b!7930150 (= lt!2693986 (isize!121 (t!390205 (list!19417 t!4440))))))

(assert (= (and d!2369643 c!1456434) b!7930149))

(assert (= (and d!2369643 (not c!1456434)) b!7930150))

(assert (=> b!7930150 m!8313850))

(assert (=> b!7929525 d!2369643))

(declare-fun d!2369653 () Bool)

(declare-fun c!1456435 () Bool)

(assert (=> d!2369653 (= c!1456435 ((_ is Nil!74450) lt!2693790))))

(declare-fun e!4679825 () (InoxSet T!145818))

(assert (=> d!2369653 (= (content!15785 lt!2693790) e!4679825)))

(declare-fun b!7930151 () Bool)

(assert (=> b!7930151 (= e!4679825 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930152 () Bool)

(assert (=> b!7930152 (= e!4679825 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693790) true) (content!15785 (t!390205 lt!2693790))))))

(assert (= (and d!2369653 c!1456435) b!7930151))

(assert (= (and d!2369653 (not c!1456435)) b!7930152))

(declare-fun m!8314316 () Bool)

(assert (=> b!7930152 m!8314316))

(declare-fun m!8314318 () Bool)

(assert (=> b!7930152 m!8314318))

(assert (=> d!2369239 d!2369653))

(assert (=> d!2369239 d!2369399))

(assert (=> d!2369239 d!2369409))

(declare-fun d!2369657 () Bool)

(assert (=> d!2369657 (= (height!2219 lt!2693858) (ite ((_ is Empty!15904) lt!2693858) 0 (ite ((_ is Leaf!30237) lt!2693858) 1 (cheight!16115 lt!2693858))))))

(assert (=> b!7929663 d!2369657))

(declare-fun d!2369659 () Bool)

(assert (=> d!2369659 (= (height!2219 (left!56876 (right!57206 t!4440))) (ite ((_ is Empty!15904) (left!56876 (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (left!56876 (right!57206 t!4440))) 1 (cheight!16115 (left!56876 (right!57206 t!4440))))))))

(assert (=> b!7929663 d!2369659))

(declare-fun b!7930157 () Bool)

(declare-fun e!4679829 () Conc!15904)

(declare-fun call!735364 () IArray!31869)

(assert (=> b!7930157 (= e!4679829 (Leaf!30237 call!735364 1))))

(declare-fun b!7930158 () Bool)

(declare-fun res!3146587 () Bool)

(declare-fun e!4679830 () Bool)

(assert (=> b!7930158 (=> (not res!3146587) (not e!4679830))))

(declare-fun lt!2694001 () Conc!15904)

(assert (=> b!7930158 (= res!3146587 (<= (height!2219 (right!57206 (right!57206 t!4440))) (height!2219 lt!2694001)))))

(declare-fun lt!2694006 () List!74574)

(declare-fun call!735366 () List!74574)

(declare-fun call!735362 () List!74574)

(declare-fun lt!2693998 () List!74574)

(declare-fun c!1456438 () Bool)

(declare-fun lt!2694005 () List!74574)

(declare-fun bm!735356 () Bool)

(assert (=> bm!735356 (= call!735366 (++!18261 (ite c!1456438 call!735362 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998)))))

(declare-fun b!7930159 () Bool)

(declare-fun e!4679832 () Conc!15904)

(declare-fun call!735365 () Conc!15904)

(declare-fun lt!2693992 () Conc!15904)

(assert (=> b!7930159 (= e!4679832 (<>!426 call!735365 (right!57206 lt!2693992)))))

(declare-fun lt!2693994 () List!74574)

(declare-fun call!735368 () List!74574)

(assert (=> b!7930159 (= lt!2693994 call!735368)))

(declare-fun call!735361 () List!74574)

(assert (=> b!7930159 (= lt!2694005 call!735361)))

(assert (=> b!7930159 (= lt!2693998 (list!19417 (right!57206 lt!2693992)))))

(declare-fun lt!2694002 () Unit!169569)

(declare-fun call!735369 () Unit!169569)

(assert (=> b!7930159 (= lt!2694002 call!735369)))

(declare-fun call!735363 () List!74574)

(assert (=> b!7930159 (= (++!18261 call!735363 lt!2693998) (++!18261 lt!2693994 call!735366))))

(declare-fun lt!2693990 () Unit!169569)

(assert (=> b!7930159 (= lt!2693990 lt!2694002)))

(declare-fun lt!2693999 () List!74574)

(assert (=> b!7930159 (= lt!2693999 call!735368)))

(declare-fun lt!2693997 () List!74574)

(assert (=> b!7930159 (= lt!2693997 (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun lt!2694000 () List!74574)

(assert (=> b!7930159 (= lt!2694000 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2693989 () Unit!169569)

(assert (=> b!7930159 (= lt!2693989 (lemmaConcatAssociativity!3164 lt!2693999 lt!2693997 lt!2694000))))

(declare-fun call!735367 () List!74574)

(assert (=> b!7930159 (= (++!18261 call!735362 lt!2694000) (++!18261 lt!2693999 call!735367))))

(declare-fun lt!2694004 () Unit!169569)

(assert (=> b!7930159 (= lt!2694004 lt!2693989)))

(declare-fun b!7930160 () Bool)

(declare-fun e!4679833 () Conc!15904)

(assert (=> b!7930160 (= e!4679833 (ite c!1456438 lt!2693992 (left!56876 lt!2693992)))))

(declare-fun b!7930161 () Bool)

(declare-fun c!1456437 () Bool)

(assert (=> b!7930161 (= c!1456437 (< (csize!32039 (right!57206 (right!57206 t!4440))) 512))))

(declare-fun e!4679831 () Conc!15904)

(declare-fun e!4679828 () Conc!15904)

(assert (=> b!7930161 (= e!4679831 e!4679828)))

(declare-fun bm!735357 () Bool)

(declare-fun lt!2693995 () List!74574)

(assert (=> bm!735357 (= call!735367 (++!18261 (ite c!1456438 lt!2693995 lt!2693997) (ite c!1456438 call!735363 lt!2694000)))))

(declare-fun b!7930162 () Bool)

(declare-fun call!735370 () Conc!15904)

(assert (=> b!7930162 (= e!4679828 call!735370)))

(declare-fun lt!2693993 () List!74574)

(declare-fun bm!735358 () Bool)

(assert (=> bm!735358 (= call!735369 (lemmaConcatAssociativity!3164 (ite c!1456438 lt!2693995 lt!2693994) (ite c!1456438 lt!2693993 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998)))))

(declare-fun bm!735359 () Bool)

(assert (=> bm!735359 (= call!735363 (++!18261 (ite c!1456438 lt!2693993 lt!2693994) (ite c!1456438 lt!2694006 lt!2694005)))))

(declare-fun b!7930163 () Bool)

(assert (=> b!7930163 (= e!4679833 (Leaf!30237 call!735364 1))))

(declare-fun bm!735360 () Bool)

(assert (=> bm!735360 (= call!735364 (fill!283 1 v!5484))))

(declare-fun bm!735361 () Bool)

(declare-fun c!1456440 () Bool)

(declare-fun c!1456441 () Bool)

(assert (=> bm!735361 (= c!1456440 c!1456441)))

(assert (=> bm!735361 (= call!735370 (<>!426 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440))) e!4679833))))

(declare-fun b!7930164 () Bool)

(assert (=> b!7930164 (= e!4679828 (Leaf!30237 (append!1150 (xs!19294 (right!57206 (right!57206 t!4440))) v!5484) (+ (csize!32039 (right!57206 (right!57206 t!4440))) 1)))))

(declare-fun lt!2694003 () List!74574)

(assert (=> b!7930164 (= lt!2694003 ($colon+!317 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))) v!5484))))

(declare-fun b!7930165 () Bool)

(assert (=> b!7930165 (= e!4679829 e!4679831)))

(assert (=> b!7930165 (= c!1456441 ((_ is Node!15904) (right!57206 (right!57206 t!4440))))))

(declare-fun b!7930166 () Bool)

(assert (=> b!7930166 (= e!4679832 call!735365)))

(assert (=> b!7930166 (= lt!2693995 call!735361)))

(assert (=> b!7930166 (= lt!2693993 call!735368)))

(assert (=> b!7930166 (= lt!2694006 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2693996 () Unit!169569)

(assert (=> b!7930166 (= lt!2693996 call!735369)))

(assert (=> b!7930166 (= call!735366 call!735367)))

(declare-fun lt!2693991 () Unit!169569)

(assert (=> b!7930166 (= lt!2693991 lt!2693996)))

(declare-fun b!7930167 () Bool)

(assert (=> b!7930167 (= c!1456438 (<= (height!2219 lt!2693992) (+ (height!2219 (left!56876 (right!57206 (right!57206 t!4440)))) 1)))))

(assert (=> b!7930167 (= lt!2693992 (append!1148 (right!57206 (right!57206 (right!57206 t!4440))) v!5484))))

(assert (=> b!7930167 (= e!4679831 e!4679832)))

(declare-fun b!7930168 () Bool)

(assert (=> b!7930168 (= e!4679830 (= (list!19417 lt!2694001) ($colon+!317 (list!19417 (right!57206 (right!57206 t!4440))) v!5484)))))

(declare-fun bm!735362 () Bool)

(assert (=> bm!735362 (= call!735368 (list!19417 (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440))))))))

(declare-fun bm!735363 () Bool)

(assert (=> bm!735363 (= call!735365 call!735370)))

(declare-fun bm!735364 () Bool)

(assert (=> bm!735364 (= call!735361 (list!19417 (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992))))))

(declare-fun b!7930169 () Bool)

(declare-fun res!3146586 () Bool)

(assert (=> b!7930169 (=> (not res!3146586) (not e!4679830))))

(assert (=> b!7930169 (= res!3146586 (<= (height!2219 lt!2694001) (+ (height!2219 (right!57206 (right!57206 t!4440))) 1)))))

(declare-fun d!2369661 () Bool)

(assert (=> d!2369661 e!4679830))

(declare-fun res!3146585 () Bool)

(assert (=> d!2369661 (=> (not res!3146585) (not e!4679830))))

(assert (=> d!2369661 (= res!3146585 (isBalanced!4530 lt!2694001))))

(assert (=> d!2369661 (= lt!2694001 e!4679829)))

(declare-fun c!1456439 () Bool)

(assert (=> d!2369661 (= c!1456439 ((_ is Empty!15904) (right!57206 (right!57206 t!4440))))))

(assert (=> d!2369661 (isBalanced!4530 (right!57206 (right!57206 t!4440)))))

(assert (=> d!2369661 (= (append!1148 (right!57206 (right!57206 t!4440)) v!5484) lt!2694001)))

(declare-fun bm!735365 () Bool)

(assert (=> bm!735365 (= call!735362 (++!18261 (ite c!1456438 lt!2693995 lt!2693999) (ite c!1456438 lt!2693993 lt!2693997)))))

(assert (= (and d!2369661 c!1456439) b!7930157))

(assert (= (and d!2369661 (not c!1456439)) b!7930165))

(assert (= (and b!7930165 c!1456441) b!7930167))

(assert (= (and b!7930165 (not c!1456441)) b!7930161))

(assert (= (and b!7930167 c!1456438) b!7930166))

(assert (= (and b!7930167 (not c!1456438)) b!7930159))

(assert (= (or b!7930166 b!7930159) bm!735364))

(assert (= (or b!7930166 b!7930159) bm!735363))

(assert (= (or b!7930166 b!7930159) bm!735362))

(assert (= (or b!7930166 b!7930159) bm!735365))

(assert (= (or b!7930166 b!7930159) bm!735359))

(assert (= (or b!7930166 b!7930159) bm!735358))

(assert (= (or b!7930166 b!7930159) bm!735356))

(assert (= (or b!7930166 b!7930159) bm!735357))

(assert (= (and b!7930161 c!1456437) b!7930164))

(assert (= (and b!7930161 (not c!1456437)) b!7930162))

(assert (= (or bm!735363 b!7930162) bm!735361))

(assert (= (and bm!735361 c!1456440) b!7930160))

(assert (= (and bm!735361 (not c!1456440)) b!7930163))

(assert (= (or b!7930157 b!7930163) bm!735360))

(assert (= (and d!2369661 res!3146585) b!7930158))

(assert (= (and b!7930158 res!3146587) b!7930169))

(assert (= (and b!7930169 res!3146586) b!7930168))

(declare-fun m!8314336 () Bool)

(assert (=> d!2369661 m!8314336))

(assert (=> d!2369661 m!8313962))

(declare-fun m!8314338 () Bool)

(assert (=> b!7930167 m!8314338))

(declare-fun m!8314340 () Bool)

(assert (=> b!7930167 m!8314340))

(declare-fun m!8314342 () Bool)

(assert (=> b!7930167 m!8314342))

(declare-fun m!8314344 () Bool)

(assert (=> bm!735359 m!8314344))

(declare-fun m!8314346 () Bool)

(assert (=> b!7930168 m!8314346))

(assert (=> b!7930168 m!8312940))

(assert (=> b!7930168 m!8312940))

(declare-fun m!8314348 () Bool)

(assert (=> b!7930168 m!8314348))

(declare-fun m!8314350 () Bool)

(assert (=> bm!735365 m!8314350))

(declare-fun m!8314352 () Bool)

(assert (=> bm!735356 m!8314352))

(declare-fun m!8314354 () Bool)

(assert (=> bm!735364 m!8314354))

(declare-fun m!8314356 () Bool)

(assert (=> b!7930169 m!8314356))

(assert (=> b!7930169 m!8313960))

(assert (=> b!7930158 m!8313960))

(assert (=> b!7930158 m!8314356))

(declare-fun m!8314358 () Bool)

(assert (=> bm!735361 m!8314358))

(declare-fun m!8314360 () Bool)

(assert (=> b!7930159 m!8314360))

(declare-fun m!8314362 () Bool)

(assert (=> b!7930159 m!8314362))

(declare-fun m!8314364 () Bool)

(assert (=> b!7930159 m!8314364))

(declare-fun m!8314366 () Bool)

(assert (=> b!7930159 m!8314366))

(assert (=> b!7930159 m!8313502))

(declare-fun m!8314368 () Bool)

(assert (=> b!7930159 m!8314368))

(declare-fun m!8314370 () Bool)

(assert (=> b!7930159 m!8314370))

(declare-fun m!8314372 () Bool)

(assert (=> b!7930159 m!8314372))

(declare-fun m!8314374 () Bool)

(assert (=> bm!735358 m!8314374))

(declare-fun m!8314376 () Bool)

(assert (=> bm!735362 m!8314376))

(declare-fun m!8314378 () Bool)

(assert (=> bm!735357 m!8314378))

(declare-fun m!8314380 () Bool)

(assert (=> b!7930164 m!8314380))

(assert (=> b!7930164 m!8313506))

(assert (=> b!7930164 m!8313506))

(declare-fun m!8314382 () Bool)

(assert (=> b!7930164 m!8314382))

(assert (=> bm!735360 m!8313348))

(assert (=> b!7929663 d!2369661))

(declare-fun d!2369673 () Bool)

(declare-fun c!1456446 () Bool)

(assert (=> d!2369673 (= c!1456446 ((_ is Node!15904) (left!56876 (left!56876 t!4440))))))

(declare-fun e!4679840 () Bool)

(assert (=> d!2369673 (= (inv!95730 (left!56876 (left!56876 t!4440))) e!4679840)))

(declare-fun b!7930180 () Bool)

(assert (=> b!7930180 (= e!4679840 (inv!95732 (left!56876 (left!56876 t!4440))))))

(declare-fun b!7930181 () Bool)

(declare-fun e!4679841 () Bool)

(assert (=> b!7930181 (= e!4679840 e!4679841)))

(declare-fun res!3146590 () Bool)

(assert (=> b!7930181 (= res!3146590 (not ((_ is Leaf!30237) (left!56876 (left!56876 t!4440)))))))

(assert (=> b!7930181 (=> res!3146590 e!4679841)))

(declare-fun b!7930182 () Bool)

(assert (=> b!7930182 (= e!4679841 (inv!95733 (left!56876 (left!56876 t!4440))))))

(assert (= (and d!2369673 c!1456446) b!7930180))

(assert (= (and d!2369673 (not c!1456446)) b!7930181))

(assert (= (and b!7930181 (not res!3146590)) b!7930182))

(declare-fun m!8314384 () Bool)

(assert (=> b!7930180 m!8314384))

(declare-fun m!8314386 () Bool)

(assert (=> b!7930182 m!8314386))

(assert (=> b!7929683 d!2369673))

(declare-fun d!2369677 () Bool)

(declare-fun c!1456447 () Bool)

(assert (=> d!2369677 (= c!1456447 ((_ is Node!15904) (right!57206 (left!56876 t!4440))))))

(declare-fun e!4679842 () Bool)

(assert (=> d!2369677 (= (inv!95730 (right!57206 (left!56876 t!4440))) e!4679842)))

(declare-fun b!7930183 () Bool)

(assert (=> b!7930183 (= e!4679842 (inv!95732 (right!57206 (left!56876 t!4440))))))

(declare-fun b!7930184 () Bool)

(declare-fun e!4679843 () Bool)

(assert (=> b!7930184 (= e!4679842 e!4679843)))

(declare-fun res!3146591 () Bool)

(assert (=> b!7930184 (= res!3146591 (not ((_ is Leaf!30237) (right!57206 (left!56876 t!4440)))))))

(assert (=> b!7930184 (=> res!3146591 e!4679843)))

(declare-fun b!7930185 () Bool)

(assert (=> b!7930185 (= e!4679843 (inv!95733 (right!57206 (left!56876 t!4440))))))

(assert (= (and d!2369677 c!1456447) b!7930183))

(assert (= (and d!2369677 (not c!1456447)) b!7930184))

(assert (= (and b!7930184 (not res!3146591)) b!7930185))

(declare-fun m!8314388 () Bool)

(assert (=> b!7930183 m!8314388))

(declare-fun m!8314390 () Bool)

(assert (=> b!7930185 m!8314390))

(assert (=> b!7929683 d!2369677))

(declare-fun d!2369679 () Bool)

(declare-fun e!4679845 () Bool)

(assert (=> d!2369679 e!4679845))

(declare-fun res!3146593 () Bool)

(assert (=> d!2369679 (=> (not res!3146593) (not e!4679845))))

(declare-fun lt!2694009 () List!74574)

(assert (=> d!2369679 (= res!3146593 (= (content!15785 lt!2694009) ((_ map or) (content!15785 (list!19417 (left!56876 t!4440))) (content!15785 (list!19417 (right!57206 t!4440))))))))

(declare-fun e!4679844 () List!74574)

(assert (=> d!2369679 (= lt!2694009 e!4679844)))

(declare-fun c!1456448 () Bool)

(assert (=> d!2369679 (= c!1456448 ((_ is Nil!74450) (list!19417 (left!56876 t!4440))))))

(assert (=> d!2369679 (= (++!18261 (list!19417 (left!56876 t!4440)) (list!19417 (right!57206 t!4440))) lt!2694009)))

(declare-fun b!7930187 () Bool)

(assert (=> b!7930187 (= e!4679844 (Cons!74450 (h!80898 (list!19417 (left!56876 t!4440))) (++!18261 (t!390205 (list!19417 (left!56876 t!4440))) (list!19417 (right!57206 t!4440)))))))

(declare-fun b!7930186 () Bool)

(assert (=> b!7930186 (= e!4679844 (list!19417 (right!57206 t!4440)))))

(declare-fun b!7930188 () Bool)

(declare-fun res!3146592 () Bool)

(assert (=> b!7930188 (=> (not res!3146592) (not e!4679845))))

(assert (=> b!7930188 (= res!3146592 (= (size!43253 lt!2694009) (+ (size!43253 (list!19417 (left!56876 t!4440))) (size!43253 (list!19417 (right!57206 t!4440))))))))

(declare-fun b!7930189 () Bool)

(assert (=> b!7930189 (= e!4679845 (or (not (= (list!19417 (right!57206 t!4440)) Nil!74450)) (= lt!2694009 (list!19417 (left!56876 t!4440)))))))

(assert (= (and d!2369679 c!1456448) b!7930186))

(assert (= (and d!2369679 (not c!1456448)) b!7930187))

(assert (= (and d!2369679 res!3146593) b!7930188))

(assert (= (and b!7930188 res!3146592) b!7930189))

(declare-fun m!8314392 () Bool)

(assert (=> d!2369679 m!8314392))

(assert (=> d!2369679 m!8312792))

(declare-fun m!8314394 () Bool)

(assert (=> d!2369679 m!8314394))

(assert (=> d!2369679 m!8312818))

(assert (=> d!2369679 m!8313730))

(assert (=> b!7930187 m!8312818))

(declare-fun m!8314396 () Bool)

(assert (=> b!7930187 m!8314396))

(declare-fun m!8314398 () Bool)

(assert (=> b!7930188 m!8314398))

(assert (=> b!7930188 m!8312792))

(assert (=> b!7930188 m!8314168))

(assert (=> b!7930188 m!8312818))

(assert (=> b!7930188 m!8313720))

(assert (=> b!7929542 d!2369679))

(assert (=> b!7929542 d!2369257))

(assert (=> b!7929542 d!2369241))

(declare-fun d!2369681 () Bool)

(assert (=> d!2369681 (= (list!19419 (xs!19294 lt!2693719)) (innerList!15992 (xs!19294 lt!2693719)))))

(assert (=> b!7929455 d!2369681))

(declare-fun d!2369683 () Bool)

(declare-fun c!1456449 () Bool)

(assert (=> d!2369683 (= c!1456449 ((_ is Nil!74450) lt!2693763))))

(declare-fun e!4679846 () (InoxSet T!145818))

(assert (=> d!2369683 (= (content!15785 lt!2693763) e!4679846)))

(declare-fun b!7930190 () Bool)

(assert (=> b!7930190 (= e!4679846 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930191 () Bool)

(assert (=> b!7930191 (= e!4679846 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693763) true) (content!15785 (t!390205 lt!2693763))))))

(assert (= (and d!2369683 c!1456449) b!7930190))

(assert (= (and d!2369683 (not c!1456449)) b!7930191))

(declare-fun m!8314400 () Bool)

(assert (=> b!7930191 m!8314400))

(declare-fun m!8314402 () Bool)

(assert (=> b!7930191 m!8314402))

(assert (=> d!2369223 d!2369683))

(assert (=> d!2369223 d!2369399))

(declare-fun d!2369685 () Bool)

(declare-fun c!1456450 () Bool)

(assert (=> d!2369685 (= c!1456450 ((_ is Nil!74450) (++!18261 lt!2693717 lt!2693712)))))

(declare-fun e!4679847 () (InoxSet T!145818))

(assert (=> d!2369685 (= (content!15785 (++!18261 lt!2693717 lt!2693712)) e!4679847)))

(declare-fun b!7930192 () Bool)

(assert (=> b!7930192 (= e!4679847 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930193 () Bool)

(assert (=> b!7930193 (= e!4679847 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (++!18261 lt!2693717 lt!2693712)) true) (content!15785 (t!390205 (++!18261 lt!2693717 lt!2693712)))))))

(assert (= (and d!2369685 c!1456450) b!7930192))

(assert (= (and d!2369685 (not c!1456450)) b!7930193))

(declare-fun m!8314404 () Bool)

(assert (=> b!7930193 m!8314404))

(declare-fun m!8314406 () Bool)

(assert (=> b!7930193 m!8314406))

(assert (=> d!2369223 d!2369685))

(declare-fun d!2369687 () Bool)

(declare-fun c!1456451 () Bool)

(assert (=> d!2369687 (= c!1456451 ((_ is Nil!74450) lt!2693768))))

(declare-fun e!4679848 () (InoxSet T!145818))

(assert (=> d!2369687 (= (content!15785 lt!2693768) e!4679848)))

(declare-fun b!7930194 () Bool)

(assert (=> b!7930194 (= e!4679848 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930195 () Bool)

(assert (=> b!7930195 (= e!4679848 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693768) true) (content!15785 (t!390205 lt!2693768))))))

(assert (= (and d!2369687 c!1456451) b!7930194))

(assert (= (and d!2369687 (not c!1456451)) b!7930195))

(declare-fun m!8314408 () Bool)

(assert (=> b!7930195 m!8314408))

(declare-fun m!8314410 () Bool)

(assert (=> b!7930195 m!8314410))

(assert (=> d!2369231 d!2369687))

(declare-fun d!2369689 () Bool)

(declare-fun c!1456452 () Bool)

(assert (=> d!2369689 (= c!1456452 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693717)))))

(declare-fun e!4679849 () (InoxSet T!145818))

(assert (=> d!2369689 (= (content!15785 (++!18261 lt!2693714 lt!2693717)) e!4679849)))

(declare-fun b!7930196 () Bool)

(assert (=> b!7930196 (= e!4679849 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930197 () Bool)

(assert (=> b!7930197 (= e!4679849 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (++!18261 lt!2693714 lt!2693717)) true) (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693717)))))))

(assert (= (and d!2369689 c!1456452) b!7930196))

(assert (= (and d!2369689 (not c!1456452)) b!7930197))

(declare-fun m!8314412 () Bool)

(assert (=> b!7930197 m!8314412))

(declare-fun m!8314414 () Bool)

(assert (=> b!7930197 m!8314414))

(assert (=> d!2369231 d!2369689))

(assert (=> d!2369231 d!2369473))

(declare-fun d!2369691 () Bool)

(declare-fun lt!2694010 () Int)

(assert (=> d!2369691 (>= lt!2694010 0)))

(declare-fun e!4679850 () Int)

(assert (=> d!2369691 (= lt!2694010 e!4679850)))

(declare-fun c!1456453 () Bool)

(assert (=> d!2369691 (= c!1456453 ((_ is Nil!74450) lt!2693762))))

(assert (=> d!2369691 (= (size!43253 lt!2693762) lt!2694010)))

(declare-fun b!7930198 () Bool)

(assert (=> b!7930198 (= e!4679850 0)))

(declare-fun b!7930199 () Bool)

(assert (=> b!7930199 (= e!4679850 (+ 1 (size!43253 (t!390205 lt!2693762))))))

(assert (= (and d!2369691 c!1456453) b!7930198))

(assert (= (and d!2369691 (not c!1456453)) b!7930199))

(declare-fun m!8314416 () Bool)

(assert (=> b!7930199 m!8314416))

(assert (=> b!7929324 d!2369691))

(assert (=> b!7929324 d!2369507))

(assert (=> b!7929324 d!2369499))

(declare-fun d!2369693 () Bool)

(declare-fun c!1456454 () Bool)

(assert (=> d!2369693 (= c!1456454 ((_ is Empty!15904) (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4679851 () List!74574)

(assert (=> d!2369693 (= (list!19417 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))) e!4679851)))

(declare-fun b!7930200 () Bool)

(assert (=> b!7930200 (= e!4679851 Nil!74450)))

(declare-fun b!7930203 () Bool)

(declare-fun e!4679852 () List!74574)

(assert (=> b!7930203 (= e!4679852 (++!18261 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7930202 () Bool)

(assert (=> b!7930202 (= e!4679852 (list!19419 (xs!19294 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7930201 () Bool)

(assert (=> b!7930201 (= e!4679851 e!4679852)))

(declare-fun c!1456455 () Bool)

(assert (=> b!7930201 (= c!1456455 ((_ is Leaf!30237) (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2369693 c!1456454) b!7930200))

(assert (= (and d!2369693 (not c!1456454)) b!7930201))

(assert (= (and b!7930201 c!1456455) b!7930202))

(assert (= (and b!7930201 (not c!1456455)) b!7930203))

(declare-fun m!8314418 () Bool)

(assert (=> b!7930203 m!8314418))

(declare-fun m!8314420 () Bool)

(assert (=> b!7930203 m!8314420))

(assert (=> b!7930203 m!8314418))

(assert (=> b!7930203 m!8314420))

(declare-fun m!8314422 () Bool)

(assert (=> b!7930203 m!8314422))

(declare-fun m!8314424 () Bool)

(assert (=> b!7930202 m!8314424))

(assert (=> bm!735334 d!2369693))

(declare-fun d!2369695 () Bool)

(declare-fun c!1456456 () Bool)

(assert (=> d!2369695 (= c!1456456 ((_ is Nil!74450) lt!2693770))))

(declare-fun e!4679853 () (InoxSet T!145818))

(assert (=> d!2369695 (= (content!15785 lt!2693770) e!4679853)))

(declare-fun b!7930204 () Bool)

(assert (=> b!7930204 (= e!4679853 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930205 () Bool)

(assert (=> b!7930205 (= e!4679853 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693770) true) (content!15785 (t!390205 lt!2693770))))))

(assert (= (and d!2369695 c!1456456) b!7930204))

(assert (= (and d!2369695 (not c!1456456)) b!7930205))

(declare-fun m!8314426 () Bool)

(assert (=> b!7930205 m!8314426))

(declare-fun m!8314428 () Bool)

(assert (=> b!7930205 m!8314428))

(assert (=> d!2369235 d!2369695))

(assert (=> d!2369235 d!2369399))

(assert (=> d!2369235 d!2369469))

(declare-fun d!2369697 () Bool)

(declare-fun c!1456457 () Bool)

(assert (=> d!2369697 (= c!1456457 ((_ is Empty!15904) lt!2693799))))

(declare-fun e!4679854 () List!74574)

(assert (=> d!2369697 (= (list!19417 lt!2693799) e!4679854)))

(declare-fun b!7930206 () Bool)

(assert (=> b!7930206 (= e!4679854 Nil!74450)))

(declare-fun b!7930209 () Bool)

(declare-fun e!4679855 () List!74574)

(assert (=> b!7930209 (= e!4679855 (++!18261 (list!19417 (left!56876 lt!2693799)) (list!19417 (right!57206 lt!2693799))))))

(declare-fun b!7930208 () Bool)

(assert (=> b!7930208 (= e!4679855 (list!19419 (xs!19294 lt!2693799)))))

(declare-fun b!7930207 () Bool)

(assert (=> b!7930207 (= e!4679854 e!4679855)))

(declare-fun c!1456458 () Bool)

(assert (=> b!7930207 (= c!1456458 ((_ is Leaf!30237) lt!2693799))))

(assert (= (and d!2369697 c!1456457) b!7930206))

(assert (= (and d!2369697 (not c!1456457)) b!7930207))

(assert (= (and b!7930207 c!1456458) b!7930208))

(assert (= (and b!7930207 (not c!1456458)) b!7930209))

(declare-fun m!8314430 () Bool)

(assert (=> b!7930209 m!8314430))

(declare-fun m!8314432 () Bool)

(assert (=> b!7930209 m!8314432))

(assert (=> b!7930209 m!8314430))

(assert (=> b!7930209 m!8314432))

(declare-fun m!8314434 () Bool)

(assert (=> b!7930209 m!8314434))

(declare-fun m!8314436 () Bool)

(assert (=> b!7930208 m!8314436))

(assert (=> d!2369249 d!2369697))

(declare-fun d!2369699 () Bool)

(declare-fun e!4679857 () Bool)

(assert (=> d!2369699 e!4679857))

(declare-fun res!3146595 () Bool)

(assert (=> d!2369699 (=> (not res!3146595) (not e!4679857))))

(declare-fun lt!2694014 () List!74574)

(assert (=> d!2369699 (= res!3146595 (= (content!15785 lt!2694014) ((_ map or) (content!15785 (list!19417 lt!2693713)) (content!15785 (list!19417 (right!57206 lt!2693711))))))))

(declare-fun e!4679856 () List!74574)

(assert (=> d!2369699 (= lt!2694014 e!4679856)))

(declare-fun c!1456459 () Bool)

(assert (=> d!2369699 (= c!1456459 ((_ is Nil!74450) (list!19417 lt!2693713)))))

(assert (=> d!2369699 (= (++!18261 (list!19417 lt!2693713) (list!19417 (right!57206 lt!2693711))) lt!2694014)))

(declare-fun b!7930211 () Bool)

(assert (=> b!7930211 (= e!4679856 (Cons!74450 (h!80898 (list!19417 lt!2693713)) (++!18261 (t!390205 (list!19417 lt!2693713)) (list!19417 (right!57206 lt!2693711)))))))

(declare-fun b!7930210 () Bool)

(assert (=> b!7930210 (= e!4679856 (list!19417 (right!57206 lt!2693711)))))

(declare-fun b!7930212 () Bool)

(declare-fun res!3146594 () Bool)

(assert (=> b!7930212 (=> (not res!3146594) (not e!4679857))))

(assert (=> b!7930212 (= res!3146594 (= (size!43253 lt!2694014) (+ (size!43253 (list!19417 lt!2693713)) (size!43253 (list!19417 (right!57206 lt!2693711))))))))

(declare-fun b!7930213 () Bool)

(assert (=> b!7930213 (= e!4679857 (or (not (= (list!19417 (right!57206 lt!2693711)) Nil!74450)) (= lt!2694014 (list!19417 lt!2693713))))))

(assert (= (and d!2369699 c!1456459) b!7930210))

(assert (= (and d!2369699 (not c!1456459)) b!7930211))

(assert (= (and d!2369699 res!3146595) b!7930212))

(assert (= (and b!7930212 res!3146594) b!7930213))

(declare-fun m!8314442 () Bool)

(assert (=> d!2369699 m!8314442))

(assert (=> d!2369699 m!8313058))

(declare-fun m!8314444 () Bool)

(assert (=> d!2369699 m!8314444))

(assert (=> d!2369699 m!8312794))

(declare-fun m!8314446 () Bool)

(assert (=> d!2369699 m!8314446))

(assert (=> b!7930211 m!8312794))

(declare-fun m!8314448 () Bool)

(assert (=> b!7930211 m!8314448))

(declare-fun m!8314450 () Bool)

(assert (=> b!7930212 m!8314450))

(assert (=> b!7930212 m!8313058))

(declare-fun m!8314452 () Bool)

(assert (=> b!7930212 m!8314452))

(assert (=> b!7930212 m!8312794))

(declare-fun m!8314454 () Bool)

(assert (=> b!7930212 m!8314454))

(assert (=> d!2369249 d!2369699))

(declare-fun d!2369703 () Bool)

(declare-fun c!1456462 () Bool)

(assert (=> d!2369703 (= c!1456462 ((_ is Empty!15904) lt!2693713))))

(declare-fun e!4679861 () List!74574)

(assert (=> d!2369703 (= (list!19417 lt!2693713) e!4679861)))

(declare-fun b!7930222 () Bool)

(assert (=> b!7930222 (= e!4679861 Nil!74450)))

(declare-fun b!7930225 () Bool)

(declare-fun e!4679862 () List!74574)

(assert (=> b!7930225 (= e!4679862 (++!18261 (list!19417 (left!56876 lt!2693713)) (list!19417 (right!57206 lt!2693713))))))

(declare-fun b!7930224 () Bool)

(assert (=> b!7930224 (= e!4679862 (list!19419 (xs!19294 lt!2693713)))))

(declare-fun b!7930223 () Bool)

(assert (=> b!7930223 (= e!4679861 e!4679862)))

(declare-fun c!1456463 () Bool)

(assert (=> b!7930223 (= c!1456463 ((_ is Leaf!30237) lt!2693713))))

(assert (= (and d!2369703 c!1456462) b!7930222))

(assert (= (and d!2369703 (not c!1456462)) b!7930223))

(assert (= (and b!7930223 c!1456463) b!7930224))

(assert (= (and b!7930223 (not c!1456463)) b!7930225))

(declare-fun m!8314460 () Bool)

(assert (=> b!7930225 m!8314460))

(declare-fun m!8314462 () Bool)

(assert (=> b!7930225 m!8314462))

(assert (=> b!7930225 m!8314460))

(assert (=> b!7930225 m!8314462))

(declare-fun m!8314468 () Bool)

(assert (=> b!7930225 m!8314468))

(declare-fun m!8314472 () Bool)

(assert (=> b!7930224 m!8314472))

(assert (=> d!2369249 d!2369703))

(assert (=> d!2369249 d!2369225))

(declare-fun d!2369705 () Bool)

(declare-fun lt!2694016 () (_ BitVec 32))

(assert (=> d!2369705 (and (bvsle #b00000000000000000000000000000000 lt!2694016) (bvsle lt!2694016 #b01111111111111111111111111111111))))

(declare-fun e!4679863 () (_ BitVec 32))

(assert (=> d!2369705 (= lt!2694016 e!4679863)))

(declare-fun c!1456464 () Bool)

(assert (=> d!2369705 (= c!1456464 ((_ is Nil!74450) lt!2693810))))

(assert (=> d!2369705 (= (isize!121 lt!2693810) lt!2694016)))

(declare-fun b!7930226 () Bool)

(assert (=> b!7930226 (= e!4679863 #b00000000000000000000000000000000)))

(declare-fun b!7930227 () Bool)

(declare-fun lt!2694017 () (_ BitVec 32))

(assert (=> b!7930227 (= e!4679863 (ite (= lt!2694017 #b01111111111111111111111111111111) lt!2694017 (bvadd #b00000000000000000000000000000001 lt!2694017)))))

(assert (=> b!7930227 (= lt!2694017 (isize!121 (t!390205 lt!2693810)))))

(assert (= (and d!2369705 c!1456464) b!7930226))

(assert (= (and d!2369705 (not c!1456464)) b!7930227))

(declare-fun m!8314480 () Bool)

(assert (=> b!7930227 m!8314480))

(assert (=> bm!735301 d!2369705))

(declare-fun d!2369711 () Bool)

(declare-fun lt!2694018 () Bool)

(assert (=> d!2369711 (= lt!2694018 (isEmpty!42782 (list!19417 (right!57206 t!4440))))))

(assert (=> d!2369711 (= lt!2694018 (= (size!43255 (right!57206 t!4440)) 0))))

(assert (=> d!2369711 (= (isEmpty!42779 (right!57206 t!4440)) lt!2694018)))

(declare-fun bs!1968949 () Bool)

(assert (= bs!1968949 d!2369711))

(assert (=> bs!1968949 m!8312818))

(assert (=> bs!1968949 m!8312818))

(declare-fun m!8314482 () Bool)

(assert (=> bs!1968949 m!8314482))

(assert (=> bs!1968949 m!8314120))

(assert (=> b!7929288 d!2369711))

(declare-fun d!2369713 () Bool)

(declare-fun e!4679865 () Bool)

(assert (=> d!2369713 e!4679865))

(declare-fun res!3146601 () Bool)

(assert (=> d!2369713 (=> (not res!3146601) (not e!4679865))))

(declare-fun lt!2694019 () List!74574)

(assert (=> d!2369713 (= res!3146601 (= (content!15785 lt!2694019) ((_ map or) (content!15785 (ite c!1456280 lt!2693859 lt!2693860)) (content!15785 (ite c!1456280 lt!2693872 lt!2693871)))))))

(declare-fun e!4679864 () List!74574)

(assert (=> d!2369713 (= lt!2694019 e!4679864)))

(declare-fun c!1456465 () Bool)

(assert (=> d!2369713 (= c!1456465 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693860)))))

(assert (=> d!2369713 (= (++!18261 (ite c!1456280 lt!2693859 lt!2693860) (ite c!1456280 lt!2693872 lt!2693871)) lt!2694019)))

(declare-fun b!7930229 () Bool)

(assert (=> b!7930229 (= e!4679864 (Cons!74450 (h!80898 (ite c!1456280 lt!2693859 lt!2693860)) (++!18261 (t!390205 (ite c!1456280 lt!2693859 lt!2693860)) (ite c!1456280 lt!2693872 lt!2693871))))))

(declare-fun b!7930228 () Bool)

(assert (=> b!7930228 (= e!4679864 (ite c!1456280 lt!2693872 lt!2693871))))

(declare-fun b!7930230 () Bool)

(declare-fun res!3146600 () Bool)

(assert (=> b!7930230 (=> (not res!3146600) (not e!4679865))))

(assert (=> b!7930230 (= res!3146600 (= (size!43253 lt!2694019) (+ (size!43253 (ite c!1456280 lt!2693859 lt!2693860)) (size!43253 (ite c!1456280 lt!2693872 lt!2693871)))))))

(declare-fun b!7930231 () Bool)

(assert (=> b!7930231 (= e!4679865 (or (not (= (ite c!1456280 lt!2693872 lt!2693871) Nil!74450)) (= lt!2694019 (ite c!1456280 lt!2693859 lt!2693860))))))

(assert (= (and d!2369713 c!1456465) b!7930228))

(assert (= (and d!2369713 (not c!1456465)) b!7930229))

(assert (= (and d!2369713 res!3146601) b!7930230))

(assert (= (and b!7930230 res!3146600) b!7930231))

(declare-fun m!8314484 () Bool)

(assert (=> d!2369713 m!8314484))

(declare-fun m!8314486 () Bool)

(assert (=> d!2369713 m!8314486))

(declare-fun m!8314488 () Bool)

(assert (=> d!2369713 m!8314488))

(declare-fun m!8314490 () Bool)

(assert (=> b!7930229 m!8314490))

(declare-fun m!8314492 () Bool)

(assert (=> b!7930230 m!8314492))

(declare-fun m!8314494 () Bool)

(assert (=> b!7930230 m!8314494))

(declare-fun m!8314496 () Bool)

(assert (=> b!7930230 m!8314496))

(assert (=> bm!735331 d!2369713))

(declare-fun d!2369717 () Bool)

(declare-fun res!3146604 () Bool)

(declare-fun e!4679868 () Bool)

(assert (=> d!2369717 (=> (not res!3146604) (not e!4679868))))

(assert (=> d!2369717 (= res!3146604 (= (csize!32038 (left!56876 t!4440)) (+ (size!43255 (left!56876 (left!56876 t!4440))) (size!43255 (right!57206 (left!56876 t!4440))))))))

(assert (=> d!2369717 (= (inv!95732 (left!56876 t!4440)) e!4679868)))

(declare-fun b!7930236 () Bool)

(declare-fun res!3146605 () Bool)

(assert (=> b!7930236 (=> (not res!3146605) (not e!4679868))))

(assert (=> b!7930236 (= res!3146605 (and (not (= (left!56876 (left!56876 t!4440)) Empty!15904)) (not (= (right!57206 (left!56876 t!4440)) Empty!15904))))))

(declare-fun b!7930237 () Bool)

(declare-fun res!3146606 () Bool)

(assert (=> b!7930237 (=> (not res!3146606) (not e!4679868))))

(assert (=> b!7930237 (= res!3146606 (= (cheight!16115 (left!56876 t!4440)) (+ (max!0 (height!2219 (left!56876 (left!56876 t!4440))) (height!2219 (right!57206 (left!56876 t!4440)))) 1)))))

(declare-fun b!7930238 () Bool)

(assert (=> b!7930238 (= e!4679868 (<= 0 (cheight!16115 (left!56876 t!4440))))))

(assert (= (and d!2369717 res!3146604) b!7930236))

(assert (= (and b!7930236 res!3146605) b!7930237))

(assert (= (and b!7930237 res!3146606) b!7930238))

(declare-fun m!8314512 () Bool)

(assert (=> d!2369717 m!8314512))

(declare-fun m!8314514 () Bool)

(assert (=> d!2369717 m!8314514))

(assert (=> b!7930237 m!8313886))

(assert (=> b!7930237 m!8313890))

(assert (=> b!7930237 m!8313886))

(assert (=> b!7930237 m!8313890))

(declare-fun m!8314516 () Bool)

(assert (=> b!7930237 m!8314516))

(assert (=> b!7929447 d!2369717))

(declare-fun d!2369721 () Bool)

(assert (=> d!2369721 (= (inv!95731 (xs!19294 (right!57206 t!4440))) (<= (size!43253 (innerList!15992 (xs!19294 (right!57206 t!4440)))) 2147483647))))

(declare-fun bs!1968951 () Bool)

(assert (= bs!1968951 d!2369721))

(declare-fun m!8314522 () Bool)

(assert (=> bs!1968951 m!8314522))

(assert (=> b!7929687 d!2369721))

(declare-fun d!2369723 () Bool)

(declare-fun e!4679874 () Bool)

(assert (=> d!2369723 e!4679874))

(declare-fun res!3146608 () Bool)

(assert (=> d!2369723 (=> (not res!3146608) (not e!4679874))))

(declare-fun lt!2694021 () List!74574)

(assert (=> d!2369723 (= res!3146608 (= (content!15785 lt!2694021) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 lt!2693711)))) (content!15785 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun e!4679873 () List!74574)

(assert (=> d!2369723 (= lt!2694021 e!4679873)))

(declare-fun c!1456470 () Bool)

(assert (=> d!2369723 (= c!1456470 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 lt!2693711)))))))

(assert (=> d!2369723 (= (++!18261 (list!19417 (left!56876 (right!57206 lt!2693711))) (list!19417 (right!57206 (right!57206 lt!2693711)))) lt!2694021)))

(declare-fun b!7930248 () Bool)

(assert (=> b!7930248 (= e!4679873 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 lt!2693711)))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711)))) (list!19417 (right!57206 (right!57206 lt!2693711))))))))

(declare-fun b!7930247 () Bool)

(assert (=> b!7930247 (= e!4679873 (list!19417 (right!57206 (right!57206 lt!2693711))))))

(declare-fun b!7930249 () Bool)

(declare-fun res!3146607 () Bool)

(assert (=> b!7930249 (=> (not res!3146607) (not e!4679874))))

(assert (=> b!7930249 (= res!3146607 (= (size!43253 lt!2694021) (+ (size!43253 (list!19417 (left!56876 (right!57206 lt!2693711)))) (size!43253 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun b!7930250 () Bool)

(assert (=> b!7930250 (= e!4679874 (or (not (= (list!19417 (right!57206 (right!57206 lt!2693711))) Nil!74450)) (= lt!2694021 (list!19417 (left!56876 (right!57206 lt!2693711))))))))

(assert (= (and d!2369723 c!1456470) b!7930247))

(assert (= (and d!2369723 (not c!1456470)) b!7930248))

(assert (= (and d!2369723 res!3146608) b!7930249))

(assert (= (and b!7930249 res!3146607) b!7930250))

(declare-fun m!8314536 () Bool)

(assert (=> d!2369723 m!8314536))

(assert (=> d!2369723 m!8312872))

(declare-fun m!8314538 () Bool)

(assert (=> d!2369723 m!8314538))

(assert (=> d!2369723 m!8312874))

(declare-fun m!8314540 () Bool)

(assert (=> d!2369723 m!8314540))

(assert (=> b!7930248 m!8312874))

(declare-fun m!8314542 () Bool)

(assert (=> b!7930248 m!8314542))

(declare-fun m!8314544 () Bool)

(assert (=> b!7930249 m!8314544))

(assert (=> b!7930249 m!8312872))

(declare-fun m!8314546 () Bool)

(assert (=> b!7930249 m!8314546))

(assert (=> b!7930249 m!8312874))

(declare-fun m!8314548 () Bool)

(assert (=> b!7930249 m!8314548))

(assert (=> b!7929351 d!2369723))

(declare-fun d!2369729 () Bool)

(declare-fun c!1456473 () Bool)

(assert (=> d!2369729 (= c!1456473 ((_ is Empty!15904) (left!56876 (right!57206 lt!2693711))))))

(declare-fun e!4679876 () List!74574)

(assert (=> d!2369729 (= (list!19417 (left!56876 (right!57206 lt!2693711))) e!4679876)))

(declare-fun b!7930253 () Bool)

(assert (=> b!7930253 (= e!4679876 Nil!74450)))

(declare-fun b!7930256 () Bool)

(declare-fun e!4679877 () List!74574)

(assert (=> b!7930256 (= e!4679877 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711)))) (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711))))))))

(declare-fun b!7930255 () Bool)

(assert (=> b!7930255 (= e!4679877 (list!19419 (xs!19294 (left!56876 (right!57206 lt!2693711)))))))

(declare-fun b!7930254 () Bool)

(assert (=> b!7930254 (= e!4679876 e!4679877)))

(declare-fun c!1456474 () Bool)

(assert (=> b!7930254 (= c!1456474 ((_ is Leaf!30237) (left!56876 (right!57206 lt!2693711))))))

(assert (= (and d!2369729 c!1456473) b!7930253))

(assert (= (and d!2369729 (not c!1456473)) b!7930254))

(assert (= (and b!7930254 c!1456474) b!7930255))

(assert (= (and b!7930254 (not c!1456474)) b!7930256))

(declare-fun m!8314558 () Bool)

(assert (=> b!7930256 m!8314558))

(declare-fun m!8314560 () Bool)

(assert (=> b!7930256 m!8314560))

(assert (=> b!7930256 m!8314558))

(assert (=> b!7930256 m!8314560))

(declare-fun m!8314562 () Bool)

(assert (=> b!7930256 m!8314562))

(declare-fun m!8314564 () Bool)

(assert (=> b!7930255 m!8314564))

(assert (=> b!7929351 d!2369729))

(declare-fun d!2369735 () Bool)

(declare-fun c!1456477 () Bool)

(assert (=> d!2369735 (= c!1456477 ((_ is Empty!15904) (right!57206 (right!57206 lt!2693711))))))

(declare-fun e!4679881 () List!74574)

(assert (=> d!2369735 (= (list!19417 (right!57206 (right!57206 lt!2693711))) e!4679881)))

(declare-fun b!7930263 () Bool)

(assert (=> b!7930263 (= e!4679881 Nil!74450)))

(declare-fun b!7930266 () Bool)

(declare-fun e!4679882 () List!74574)

(assert (=> b!7930266 (= e!4679882 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711)))) (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711))))))))

(declare-fun b!7930265 () Bool)

(assert (=> b!7930265 (= e!4679882 (list!19419 (xs!19294 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun b!7930264 () Bool)

(assert (=> b!7930264 (= e!4679881 e!4679882)))

(declare-fun c!1456478 () Bool)

(assert (=> b!7930264 (= c!1456478 ((_ is Leaf!30237) (right!57206 (right!57206 lt!2693711))))))

(assert (= (and d!2369735 c!1456477) b!7930263))

(assert (= (and d!2369735 (not c!1456477)) b!7930264))

(assert (= (and b!7930264 c!1456478) b!7930265))

(assert (= (and b!7930264 (not c!1456478)) b!7930266))

(declare-fun m!8314568 () Bool)

(assert (=> b!7930266 m!8314568))

(declare-fun m!8314572 () Bool)

(assert (=> b!7930266 m!8314572))

(assert (=> b!7930266 m!8314568))

(assert (=> b!7930266 m!8314572))

(declare-fun m!8314576 () Bool)

(assert (=> b!7930266 m!8314576))

(declare-fun m!8314578 () Bool)

(assert (=> b!7930265 m!8314578))

(assert (=> b!7929351 d!2369735))

(declare-fun d!2369739 () Bool)

(declare-fun res!3146613 () Bool)

(declare-fun e!4679885 () Bool)

(assert (=> d!2369739 (=> (not res!3146613) (not e!4679885))))

(assert (=> d!2369739 (= res!3146613 (<= (size!43253 (list!19419 (xs!19294 (left!56876 t!4440)))) 512))))

(assert (=> d!2369739 (= (inv!95733 (left!56876 t!4440)) e!4679885)))

(declare-fun b!7930270 () Bool)

(declare-fun res!3146614 () Bool)

(assert (=> b!7930270 (=> (not res!3146614) (not e!4679885))))

(assert (=> b!7930270 (= res!3146614 (= (csize!32039 (left!56876 t!4440)) (size!43253 (list!19419 (xs!19294 (left!56876 t!4440))))))))

(declare-fun b!7930272 () Bool)

(assert (=> b!7930272 (= e!4679885 (and (> (csize!32039 (left!56876 t!4440)) 0) (<= (csize!32039 (left!56876 t!4440)) 512)))))

(assert (= (and d!2369739 res!3146613) b!7930270))

(assert (= (and b!7930270 res!3146614) b!7930272))

(assert (=> d!2369739 m!8313076))

(assert (=> d!2369739 m!8313076))

(declare-fun m!8314582 () Bool)

(assert (=> d!2369739 m!8314582))

(assert (=> b!7930270 m!8313076))

(assert (=> b!7930270 m!8313076))

(assert (=> b!7930270 m!8314582))

(assert (=> b!7929449 d!2369739))

(declare-fun d!2369741 () Bool)

(declare-fun lt!2694028 () IArray!31869)

(declare-fun fill!284 (Int T!145818) List!74574)

(assert (=> d!2369741 (= lt!2694028 (IArray!31870 (fill!284 1 v!5484)))))

(declare-fun choose!59836 (Int T!145818) IArray!31869)

(assert (=> d!2369741 (= lt!2694028 (choose!59836 1 v!5484))))

(assert (=> d!2369741 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2369741 (= (fill!283 1 v!5484) lt!2694028)))

(declare-fun bs!1968952 () Bool)

(assert (= bs!1968952 d!2369741))

(declare-fun m!8314594 () Bool)

(assert (=> bs!1968952 m!8314594))

(declare-fun m!8314596 () Bool)

(assert (=> bs!1968952 m!8314596))

(assert (=> bm!735332 d!2369741))

(declare-fun d!2369747 () Bool)

(assert (=> d!2369747 (= (height!2219 (right!57206 lt!2693711)) (ite ((_ is Empty!15904) (right!57206 lt!2693711)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693711)) 1 (cheight!16115 (right!57206 lt!2693711)))))))

(assert (=> b!7929430 d!2369747))

(assert (=> b!7929430 d!2369325))

(declare-fun d!2369749 () Bool)

(assert (=> d!2369749 (= (max!0 (height!2219 lt!2693713) (height!2219 (right!57206 lt!2693711))) (ite (< (height!2219 lt!2693713) (height!2219 (right!57206 lt!2693711))) (height!2219 (right!57206 lt!2693711)) (height!2219 lt!2693713)))))

(assert (=> b!7929430 d!2369749))

(declare-fun d!2369751 () Bool)

(declare-fun lt!2694030 () Int)

(assert (=> d!2369751 (= lt!2694030 (size!43253 (list!19417 lt!2693713)))))

(assert (=> d!2369751 (= lt!2694030 (ite ((_ is Empty!15904) lt!2693713) 0 (ite ((_ is Leaf!30237) lt!2693713) (csize!32039 lt!2693713) (csize!32038 lt!2693713))))))

(assert (=> d!2369751 (= (size!43255 lt!2693713) lt!2694030)))

(declare-fun bs!1968954 () Bool)

(assert (= bs!1968954 d!2369751))

(assert (=> bs!1968954 m!8313058))

(assert (=> bs!1968954 m!8313058))

(assert (=> bs!1968954 m!8314452))

(assert (=> b!7929430 d!2369751))

(declare-fun d!2369755 () Bool)

(declare-fun lt!2694032 () Int)

(assert (=> d!2369755 (= lt!2694032 (size!43253 (list!19417 (right!57206 lt!2693711))))))

(assert (=> d!2369755 (= lt!2694032 (ite ((_ is Empty!15904) (right!57206 lt!2693711)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693711)) (csize!32039 (right!57206 lt!2693711)) (csize!32038 (right!57206 lt!2693711)))))))

(assert (=> d!2369755 (= (size!43255 (right!57206 lt!2693711)) lt!2694032)))

(declare-fun bs!1968955 () Bool)

(assert (= bs!1968955 d!2369755))

(assert (=> bs!1968955 m!8312794))

(assert (=> bs!1968955 m!8312794))

(assert (=> bs!1968955 m!8314454))

(assert (=> b!7929430 d!2369755))

(declare-fun d!2369759 () Bool)

(declare-fun e!4679890 () Bool)

(assert (=> d!2369759 e!4679890))

(declare-fun res!3146619 () Bool)

(assert (=> d!2369759 (=> (not res!3146619) (not e!4679890))))

(declare-fun lt!2694034 () List!74574)

(assert (=> d!2369759 (= res!3146619 (= (content!15785 lt!2694034) ((_ map or) (content!15785 (t!390205 lt!2693714)) (content!15785 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun e!4679889 () List!74574)

(assert (=> d!2369759 (= lt!2694034 e!4679889)))

(declare-fun c!1456482 () Bool)

(assert (=> d!2369759 (= c!1456482 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(assert (=> d!2369759 (= (++!18261 (t!390205 lt!2693714) (++!18261 lt!2693717 lt!2693712)) lt!2694034)))

(declare-fun b!7930281 () Bool)

(assert (=> b!7930281 (= e!4679889 (Cons!74450 (h!80898 (t!390205 lt!2693714)) (++!18261 (t!390205 (t!390205 lt!2693714)) (++!18261 lt!2693717 lt!2693712))))))

(declare-fun b!7930280 () Bool)

(assert (=> b!7930280 (= e!4679889 (++!18261 lt!2693717 lt!2693712))))

(declare-fun b!7930282 () Bool)

(declare-fun res!3146618 () Bool)

(assert (=> b!7930282 (=> (not res!3146618) (not e!4679890))))

(assert (=> b!7930282 (= res!3146618 (= (size!43253 lt!2694034) (+ (size!43253 (t!390205 lt!2693714)) (size!43253 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun b!7930283 () Bool)

(assert (=> b!7930283 (= e!4679890 (or (not (= (++!18261 lt!2693717 lt!2693712) Nil!74450)) (= lt!2694034 (t!390205 lt!2693714))))))

(assert (= (and d!2369759 c!1456482) b!7930280))

(assert (= (and d!2369759 (not c!1456482)) b!7930281))

(assert (= (and d!2369759 res!3146619) b!7930282))

(assert (= (and b!7930282 res!3146618) b!7930283))

(declare-fun m!8314604 () Bool)

(assert (=> d!2369759 m!8314604))

(assert (=> d!2369759 m!8313534))

(assert (=> d!2369759 m!8312798))

(assert (=> d!2369759 m!8312862))

(assert (=> b!7930281 m!8312798))

(declare-fun m!8314606 () Bool)

(assert (=> b!7930281 m!8314606))

(declare-fun m!8314608 () Bool)

(assert (=> b!7930282 m!8314608))

(assert (=> b!7930282 m!8313540))

(assert (=> b!7930282 m!8312798))

(assert (=> b!7930282 m!8312870))

(assert (=> b!7929331 d!2369759))

(declare-fun d!2369767 () Bool)

(declare-fun c!1456485 () Bool)

(assert (=> d!2369767 (= c!1456485 ((_ is Empty!15904) lt!2693873))))

(declare-fun e!4679894 () List!74574)

(assert (=> d!2369767 (= (list!19417 lt!2693873) e!4679894)))

(declare-fun b!7930290 () Bool)

(assert (=> b!7930290 (= e!4679894 Nil!74450)))

(declare-fun b!7930293 () Bool)

(declare-fun e!4679895 () List!74574)

(assert (=> b!7930293 (= e!4679895 (++!18261 (list!19417 (left!56876 lt!2693873)) (list!19417 (right!57206 lt!2693873))))))

(declare-fun b!7930292 () Bool)

(assert (=> b!7930292 (= e!4679895 (list!19419 (xs!19294 lt!2693873)))))

(declare-fun b!7930291 () Bool)

(assert (=> b!7930291 (= e!4679894 e!4679895)))

(declare-fun c!1456486 () Bool)

(assert (=> b!7930291 (= c!1456486 ((_ is Leaf!30237) lt!2693873))))

(assert (= (and d!2369767 c!1456485) b!7930290))

(assert (= (and d!2369767 (not c!1456485)) b!7930291))

(assert (= (and b!7930291 c!1456486) b!7930292))

(assert (= (and b!7930291 (not c!1456486)) b!7930293))

(declare-fun m!8314616 () Bool)

(assert (=> b!7930293 m!8314616))

(declare-fun m!8314618 () Bool)

(assert (=> b!7930293 m!8314618))

(assert (=> b!7930293 m!8314616))

(assert (=> b!7930293 m!8314618))

(declare-fun m!8314622 () Bool)

(assert (=> b!7930293 m!8314622))

(declare-fun m!8314624 () Bool)

(assert (=> b!7930292 m!8314624))

(assert (=> d!2369327 d!2369767))

(declare-fun d!2369771 () Bool)

(declare-fun e!4679899 () Bool)

(assert (=> d!2369771 e!4679899))

(declare-fun res!3146625 () Bool)

(assert (=> d!2369771 (=> (not res!3146625) (not e!4679899))))

(declare-fun lt!2694036 () List!74574)

(assert (=> d!2369771 (= res!3146625 (= (content!15785 lt!2694036) ((_ map or) (content!15785 (list!19417 (left!56876 t!4440))) (content!15785 (list!19417 (left!56876 lt!2693711))))))))

(declare-fun e!4679898 () List!74574)

(assert (=> d!2369771 (= lt!2694036 e!4679898)))

(declare-fun c!1456488 () Bool)

(assert (=> d!2369771 (= c!1456488 ((_ is Nil!74450) (list!19417 (left!56876 t!4440))))))

(assert (=> d!2369771 (= (++!18261 (list!19417 (left!56876 t!4440)) (list!19417 (left!56876 lt!2693711))) lt!2694036)))

(declare-fun b!7930299 () Bool)

(assert (=> b!7930299 (= e!4679898 (Cons!74450 (h!80898 (list!19417 (left!56876 t!4440))) (++!18261 (t!390205 (list!19417 (left!56876 t!4440))) (list!19417 (left!56876 lt!2693711)))))))

(declare-fun b!7930298 () Bool)

(assert (=> b!7930298 (= e!4679898 (list!19417 (left!56876 lt!2693711)))))

(declare-fun b!7930300 () Bool)

(declare-fun res!3146624 () Bool)

(assert (=> b!7930300 (=> (not res!3146624) (not e!4679899))))

(assert (=> b!7930300 (= res!3146624 (= (size!43253 lt!2694036) (+ (size!43253 (list!19417 (left!56876 t!4440))) (size!43253 (list!19417 (left!56876 lt!2693711))))))))

(declare-fun b!7930301 () Bool)

(assert (=> b!7930301 (= e!4679899 (or (not (= (list!19417 (left!56876 lt!2693711)) Nil!74450)) (= lt!2694036 (list!19417 (left!56876 t!4440)))))))

(assert (= (and d!2369771 c!1456488) b!7930298))

(assert (= (and d!2369771 (not c!1456488)) b!7930299))

(assert (= (and d!2369771 res!3146625) b!7930300))

(assert (= (and b!7930300 res!3146624) b!7930301))

(declare-fun m!8314632 () Bool)

(assert (=> d!2369771 m!8314632))

(assert (=> d!2369771 m!8312792))

(assert (=> d!2369771 m!8314394))

(assert (=> d!2369771 m!8312804))

(declare-fun m!8314638 () Bool)

(assert (=> d!2369771 m!8314638))

(assert (=> b!7930299 m!8312804))

(declare-fun m!8314640 () Bool)

(assert (=> b!7930299 m!8314640))

(declare-fun m!8314642 () Bool)

(assert (=> b!7930300 m!8314642))

(assert (=> b!7930300 m!8312792))

(assert (=> b!7930300 m!8314168))

(assert (=> b!7930300 m!8312804))

(assert (=> b!7930300 m!8314190))

(assert (=> d!2369327 d!2369771))

(assert (=> d!2369327 d!2369257))

(assert (=> d!2369327 d!2369259))

(declare-fun d!2369775 () Bool)

(declare-fun lt!2694043 () IArray!31869)

(assert (=> d!2369775 (= lt!2694043 (IArray!31870 ($colon+!317 (list!19419 (xs!19294 (right!57206 t!4440))) v!5484)))))

(declare-fun choose!59838 (IArray!31869 T!145818) IArray!31869)

(assert (=> d!2369775 (= lt!2694043 (choose!59838 (xs!19294 (right!57206 t!4440)) v!5484))))

(declare-fun size!43257 (IArray!31869) Int)

(assert (=> d!2369775 (<= (+ (size!43257 (xs!19294 (right!57206 t!4440))) 1) 2147483647)))

(assert (=> d!2369775 (= (append!1150 (xs!19294 (right!57206 t!4440)) v!5484) lt!2694043)))

(declare-fun bs!1968959 () Bool)

(assert (= bs!1968959 d!2369775))

(assert (=> bs!1968959 m!8312944))

(assert (=> bs!1968959 m!8312944))

(assert (=> bs!1968959 m!8313346))

(declare-fun m!8314676 () Bool)

(assert (=> bs!1968959 m!8314676))

(declare-fun m!8314680 () Bool)

(assert (=> bs!1968959 m!8314680))

(assert (=> b!7929660 d!2369775))

(declare-fun b!7930323 () Bool)

(declare-fun res!3146630 () Bool)

(declare-fun e!4679910 () Bool)

(assert (=> b!7930323 (=> (not res!3146630) (not e!4679910))))

(declare-fun lt!2694044 () List!74574)

(assert (=> b!7930323 (= res!3146630 (= (size!43253 lt!2694044) (+ (size!43253 (list!19419 (xs!19294 (right!57206 t!4440)))) 1)))))

(declare-fun b!7930324 () Bool)

(declare-fun e!4679912 () Bool)

(declare-fun call!735373 () (_ BitVec 32))

(declare-fun call!735374 () (_ BitVec 32))

(assert (=> b!7930324 (= e!4679912 (= call!735373 (bvadd call!735374 #b00000000000000000000000000000001)))))

(declare-fun b!7930325 () Bool)

(declare-fun res!3146631 () Bool)

(assert (=> b!7930325 (=> (not res!3146631) (not e!4679910))))

(assert (=> b!7930325 (= res!3146631 e!4679912)))

(declare-fun c!1456499 () Bool)

(assert (=> b!7930325 (= c!1456499 (bvslt (isize!121 (list!19419 (xs!19294 (right!57206 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7930326 () Bool)

(declare-fun e!4679911 () List!74574)

(assert (=> b!7930326 (= e!4679911 (Cons!74450 (h!80898 (list!19419 (xs!19294 (right!57206 t!4440)))) ($colon+!317 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))) v!5484)))))

(declare-fun b!7930327 () Bool)

(assert (=> b!7930327 (= e!4679910 (= lt!2694044 (++!18261 (list!19419 (xs!19294 (right!57206 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930328 () Bool)

(assert (=> b!7930328 (= e!4679911 (Cons!74450 v!5484 (list!19419 (xs!19294 (right!57206 t!4440)))))))

(declare-fun b!7930329 () Bool)

(declare-fun res!3146632 () Bool)

(assert (=> b!7930329 (=> (not res!3146632) (not e!4679910))))

(assert (=> b!7930329 (= res!3146632 (= (content!15785 lt!2694044) ((_ map or) (content!15785 (list!19419 (xs!19294 (right!57206 t!4440)))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735369 () Bool)

(assert (=> bm!735369 (= call!735373 (isize!121 lt!2694044))))

(declare-fun b!7930330 () Bool)

(assert (=> b!7930330 (= e!4679912 (= call!735373 call!735374))))

(declare-fun bm!735368 () Bool)

(assert (=> bm!735368 (= call!735374 (isize!121 (list!19419 (xs!19294 (right!57206 t!4440)))))))

(declare-fun d!2369805 () Bool)

(assert (=> d!2369805 e!4679910))

(declare-fun res!3146629 () Bool)

(assert (=> d!2369805 (=> (not res!3146629) (not e!4679910))))

(assert (=> d!2369805 (= res!3146629 ((_ is Cons!74450) lt!2694044))))

(assert (=> d!2369805 (= lt!2694044 e!4679911)))

(declare-fun c!1456498 () Bool)

(assert (=> d!2369805 (= c!1456498 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 t!4440)))))))

(assert (=> d!2369805 (= ($colon+!317 (list!19419 (xs!19294 (right!57206 t!4440))) v!5484) lt!2694044)))

(assert (= (and d!2369805 c!1456498) b!7930328))

(assert (= (and d!2369805 (not c!1456498)) b!7930326))

(assert (= (and d!2369805 res!3146629) b!7930323))

(assert (= (and b!7930323 res!3146630) b!7930325))

(assert (= (and b!7930325 c!1456499) b!7930324))

(assert (= (and b!7930325 (not c!1456499)) b!7930330))

(assert (= (or b!7930324 b!7930330) bm!735369))

(assert (= (or b!7930324 b!7930330) bm!735368))

(assert (= (and b!7930325 res!3146631) b!7930329))

(assert (= (and b!7930329 res!3146632) b!7930327))

(declare-fun m!8314700 () Bool)

(assert (=> b!7930323 m!8314700))

(assert (=> b!7930323 m!8312944))

(declare-fun m!8314702 () Bool)

(assert (=> b!7930323 m!8314702))

(assert (=> b!7930325 m!8312944))

(declare-fun m!8314704 () Bool)

(assert (=> b!7930325 m!8314704))

(assert (=> b!7930327 m!8312944))

(declare-fun m!8314708 () Bool)

(assert (=> b!7930327 m!8314708))

(declare-fun m!8314710 () Bool)

(assert (=> b!7930329 m!8314710))

(assert (=> b!7930329 m!8312944))

(declare-fun m!8314712 () Bool)

(assert (=> b!7930329 m!8314712))

(assert (=> b!7930329 m!8313196))

(assert (=> bm!735368 m!8312944))

(assert (=> bm!735368 m!8314704))

(declare-fun m!8314714 () Bool)

(assert (=> bm!735369 m!8314714))

(declare-fun m!8314716 () Bool)

(assert (=> b!7930326 m!8314716))

(assert (=> b!7929660 d!2369805))

(assert (=> b!7929660 d!2369555))

(declare-fun b!7930339 () Bool)

(declare-fun res!3146638 () Bool)

(declare-fun e!4679917 () Bool)

(assert (=> b!7930339 (=> (not res!3146638) (not e!4679917))))

(assert (=> b!7930339 (= res!3146638 (isBalanced!4530 (left!56876 (left!56876 lt!2693719))))))

(declare-fun d!2369815 () Bool)

(declare-fun res!3146635 () Bool)

(declare-fun e!4679918 () Bool)

(assert (=> d!2369815 (=> res!3146635 e!4679918)))

(assert (=> d!2369815 (= res!3146635 (not ((_ is Node!15904) (left!56876 lt!2693719))))))

(assert (=> d!2369815 (= (isBalanced!4530 (left!56876 lt!2693719)) e!4679918)))

(declare-fun b!7930340 () Bool)

(declare-fun res!3146640 () Bool)

(assert (=> b!7930340 (=> (not res!3146640) (not e!4679917))))

(assert (=> b!7930340 (= res!3146640 (isBalanced!4530 (right!57206 (left!56876 lt!2693719))))))

(declare-fun b!7930341 () Bool)

(declare-fun res!3146636 () Bool)

(assert (=> b!7930341 (=> (not res!3146636) (not e!4679917))))

(assert (=> b!7930341 (= res!3146636 (not (isEmpty!42779 (left!56876 (left!56876 lt!2693719)))))))

(declare-fun b!7930342 () Bool)

(declare-fun res!3146637 () Bool)

(assert (=> b!7930342 (=> (not res!3146637) (not e!4679917))))

(assert (=> b!7930342 (= res!3146637 (<= (- (height!2219 (left!56876 (left!56876 lt!2693719))) (height!2219 (right!57206 (left!56876 lt!2693719)))) 1))))

(declare-fun b!7930343 () Bool)

(assert (=> b!7930343 (= e!4679918 e!4679917)))

(declare-fun res!3146639 () Bool)

(assert (=> b!7930343 (=> (not res!3146639) (not e!4679917))))

(assert (=> b!7930343 (= res!3146639 (<= (- 1) (- (height!2219 (left!56876 (left!56876 lt!2693719))) (height!2219 (right!57206 (left!56876 lt!2693719))))))))

(declare-fun b!7930344 () Bool)

(assert (=> b!7930344 (= e!4679917 (not (isEmpty!42779 (right!57206 (left!56876 lt!2693719)))))))

(assert (= (and d!2369815 (not res!3146635)) b!7930343))

(assert (= (and b!7930343 res!3146639) b!7930342))

(assert (= (and b!7930342 res!3146637) b!7930339))

(assert (= (and b!7930339 res!3146638) b!7930340))

(assert (= (and b!7930340 res!3146640) b!7930341))

(assert (= (and b!7930341 res!3146636) b!7930344))

(declare-fun m!8314724 () Bool)

(assert (=> b!7930344 m!8314724))

(declare-fun m!8314726 () Bool)

(assert (=> b!7930343 m!8314726))

(declare-fun m!8314728 () Bool)

(assert (=> b!7930343 m!8314728))

(declare-fun m!8314730 () Bool)

(assert (=> b!7930340 m!8314730))

(declare-fun m!8314732 () Bool)

(assert (=> b!7930339 m!8314732))

(assert (=> b!7930342 m!8314726))

(assert (=> b!7930342 m!8314728))

(declare-fun m!8314734 () Bool)

(assert (=> b!7930341 m!8314734))

(assert (=> b!7929393 d!2369815))

(declare-fun d!2369821 () Bool)

(declare-fun lt!2694050 () Conc!15904)

(assert (=> d!2369821 (= (list!19417 lt!2694050) (++!18261 (list!19417 call!735337) (list!19417 (right!57206 lt!2693858))))))

(declare-fun e!4679923 () Conc!15904)

(assert (=> d!2369821 (= lt!2694050 e!4679923)))

(declare-fun c!1456505 () Bool)

(assert (=> d!2369821 (= c!1456505 (= call!735337 Empty!15904))))

(assert (=> d!2369821 (= (<>!426 call!735337 (right!57206 lt!2693858)) lt!2694050)))

(declare-fun b!7930352 () Bool)

(declare-fun e!4679922 () Conc!15904)

(assert (=> b!7930352 (= e!4679923 e!4679922)))

(declare-fun c!1456506 () Bool)

(assert (=> b!7930352 (= c!1456506 (= (right!57206 lt!2693858) Empty!15904))))

(declare-fun b!7930351 () Bool)

(assert (=> b!7930351 (= e!4679923 (right!57206 lt!2693858))))

(declare-fun b!7930353 () Bool)

(assert (=> b!7930353 (= e!4679922 call!735337)))

(declare-fun b!7930354 () Bool)

(assert (=> b!7930354 (= e!4679922 (Node!15904 call!735337 (right!57206 lt!2693858) (+ (size!43255 call!735337) (size!43255 (right!57206 lt!2693858))) (+ (max!0 (height!2219 call!735337) (height!2219 (right!57206 lt!2693858))) 1)))))

(assert (= (and d!2369821 c!1456505) b!7930351))

(assert (= (and d!2369821 (not c!1456505)) b!7930352))

(assert (= (and b!7930352 c!1456506) b!7930353))

(assert (= (and b!7930352 (not c!1456506)) b!7930354))

(declare-fun m!8314742 () Bool)

(assert (=> d!2369821 m!8314742))

(declare-fun m!8314744 () Bool)

(assert (=> d!2369821 m!8314744))

(assert (=> d!2369821 m!8313326))

(assert (=> d!2369821 m!8314744))

(assert (=> d!2369821 m!8313326))

(declare-fun m!8314746 () Bool)

(assert (=> d!2369821 m!8314746))

(declare-fun m!8314748 () Bool)

(assert (=> b!7930354 m!8314748))

(declare-fun m!8314750 () Bool)

(assert (=> b!7930354 m!8314750))

(declare-fun m!8314752 () Bool)

(assert (=> b!7930354 m!8314752))

(declare-fun m!8314754 () Bool)

(assert (=> b!7930354 m!8314754))

(declare-fun m!8314756 () Bool)

(assert (=> b!7930354 m!8314756))

(assert (=> b!7930354 m!8314750))

(assert (=> b!7930354 m!8314752))

(assert (=> b!7929655 d!2369821))

(declare-fun d!2369825 () Bool)

(declare-fun e!4679927 () Bool)

(assert (=> d!2369825 e!4679927))

(declare-fun res!3146646 () Bool)

(assert (=> d!2369825 (=> (not res!3146646) (not e!4679927))))

(declare-fun lt!2694052 () List!74574)

(assert (=> d!2369825 (= res!3146646 (= (content!15785 lt!2694052) ((_ map or) (content!15785 lt!2693860) (content!15785 call!735338))))))

(declare-fun e!4679926 () List!74574)

(assert (=> d!2369825 (= lt!2694052 e!4679926)))

(declare-fun c!1456508 () Bool)

(assert (=> d!2369825 (= c!1456508 ((_ is Nil!74450) lt!2693860))))

(assert (=> d!2369825 (= (++!18261 lt!2693860 call!735338) lt!2694052)))

(declare-fun b!7930360 () Bool)

(assert (=> b!7930360 (= e!4679926 (Cons!74450 (h!80898 lt!2693860) (++!18261 (t!390205 lt!2693860) call!735338)))))

(declare-fun b!7930359 () Bool)

(assert (=> b!7930359 (= e!4679926 call!735338)))

(declare-fun b!7930361 () Bool)

(declare-fun res!3146645 () Bool)

(assert (=> b!7930361 (=> (not res!3146645) (not e!4679927))))

(assert (=> b!7930361 (= res!3146645 (= (size!43253 lt!2694052) (+ (size!43253 lt!2693860) (size!43253 call!735338))))))

(declare-fun b!7930362 () Bool)

(assert (=> b!7930362 (= e!4679927 (or (not (= call!735338 Nil!74450)) (= lt!2694052 lt!2693860)))))

(assert (= (and d!2369825 c!1456508) b!7930359))

(assert (= (and d!2369825 (not c!1456508)) b!7930360))

(assert (= (and d!2369825 res!3146646) b!7930361))

(assert (= (and b!7930361 res!3146645) b!7930362))

(declare-fun m!8314764 () Bool)

(assert (=> d!2369825 m!8314764))

(declare-fun m!8314766 () Bool)

(assert (=> d!2369825 m!8314766))

(declare-fun m!8314768 () Bool)

(assert (=> d!2369825 m!8314768))

(declare-fun m!8314770 () Bool)

(assert (=> b!7930360 m!8314770))

(declare-fun m!8314772 () Bool)

(assert (=> b!7930361 m!8314772))

(declare-fun m!8314774 () Bool)

(assert (=> b!7930361 m!8314774))

(declare-fun m!8314776 () Bool)

(assert (=> b!7930361 m!8314776))

(assert (=> b!7929655 d!2369825))

(declare-fun d!2369829 () Bool)

(declare-fun e!4679931 () Bool)

(assert (=> d!2369829 e!4679931))

(declare-fun res!3146650 () Bool)

(assert (=> d!2369829 (=> (not res!3146650) (not e!4679931))))

(declare-fun lt!2694054 () List!74574)

(assert (=> d!2369829 (= res!3146650 (= (content!15785 lt!2694054) ((_ map or) (content!15785 lt!2693865) (content!15785 call!735339))))))

(declare-fun e!4679930 () List!74574)

(assert (=> d!2369829 (= lt!2694054 e!4679930)))

(declare-fun c!1456510 () Bool)

(assert (=> d!2369829 (= c!1456510 ((_ is Nil!74450) lt!2693865))))

(assert (=> d!2369829 (= (++!18261 lt!2693865 call!735339) lt!2694054)))

(declare-fun b!7930368 () Bool)

(assert (=> b!7930368 (= e!4679930 (Cons!74450 (h!80898 lt!2693865) (++!18261 (t!390205 lt!2693865) call!735339)))))

(declare-fun b!7930367 () Bool)

(assert (=> b!7930367 (= e!4679930 call!735339)))

(declare-fun b!7930369 () Bool)

(declare-fun res!3146649 () Bool)

(assert (=> b!7930369 (=> (not res!3146649) (not e!4679931))))

(assert (=> b!7930369 (= res!3146649 (= (size!43253 lt!2694054) (+ (size!43253 lt!2693865) (size!43253 call!735339))))))

(declare-fun b!7930370 () Bool)

(assert (=> b!7930370 (= e!4679931 (or (not (= call!735339 Nil!74450)) (= lt!2694054 lt!2693865)))))

(assert (= (and d!2369829 c!1456510) b!7930367))

(assert (= (and d!2369829 (not c!1456510)) b!7930368))

(assert (= (and d!2369829 res!3146650) b!7930369))

(assert (= (and b!7930369 res!3146649) b!7930370))

(declare-fun m!8314792 () Bool)

(assert (=> d!2369829 m!8314792))

(declare-fun m!8314794 () Bool)

(assert (=> d!2369829 m!8314794))

(declare-fun m!8314796 () Bool)

(assert (=> d!2369829 m!8314796))

(declare-fun m!8314798 () Bool)

(assert (=> b!7930368 m!8314798))

(declare-fun m!8314802 () Bool)

(assert (=> b!7930369 m!8314802))

(declare-fun m!8314806 () Bool)

(assert (=> b!7930369 m!8314806))

(declare-fun m!8314808 () Bool)

(assert (=> b!7930369 m!8314808))

(assert (=> b!7929655 d!2369829))

(declare-fun d!2369833 () Bool)

(declare-fun e!4679935 () Bool)

(assert (=> d!2369833 e!4679935))

(declare-fun res!3146652 () Bool)

(assert (=> d!2369833 (=> (not res!3146652) (not e!4679935))))

(declare-fun lt!2694055 () List!74574)

(assert (=> d!2369833 (= res!3146652 (= (content!15785 lt!2694055) ((_ map or) (content!15785 call!735335) (content!15785 lt!2693864))))))

(declare-fun e!4679934 () List!74574)

(assert (=> d!2369833 (= lt!2694055 e!4679934)))

(declare-fun c!1456513 () Bool)

(assert (=> d!2369833 (= c!1456513 ((_ is Nil!74450) call!735335))))

(assert (=> d!2369833 (= (++!18261 call!735335 lt!2693864) lt!2694055)))

(declare-fun b!7930376 () Bool)

(assert (=> b!7930376 (= e!4679934 (Cons!74450 (h!80898 call!735335) (++!18261 (t!390205 call!735335) lt!2693864)))))

(declare-fun b!7930375 () Bool)

(assert (=> b!7930375 (= e!4679934 lt!2693864)))

(declare-fun b!7930377 () Bool)

(declare-fun res!3146651 () Bool)

(assert (=> b!7930377 (=> (not res!3146651) (not e!4679935))))

(assert (=> b!7930377 (= res!3146651 (= (size!43253 lt!2694055) (+ (size!43253 call!735335) (size!43253 lt!2693864))))))

(declare-fun b!7930378 () Bool)

(assert (=> b!7930378 (= e!4679935 (or (not (= lt!2693864 Nil!74450)) (= lt!2694055 call!735335)))))

(assert (= (and d!2369833 c!1456513) b!7930375))

(assert (= (and d!2369833 (not c!1456513)) b!7930376))

(assert (= (and d!2369833 res!3146652) b!7930377))

(assert (= (and b!7930377 res!3146651) b!7930378))

(declare-fun m!8314816 () Bool)

(assert (=> d!2369833 m!8314816))

(declare-fun m!8314820 () Bool)

(assert (=> d!2369833 m!8314820))

(declare-fun m!8314824 () Bool)

(assert (=> d!2369833 m!8314824))

(declare-fun m!8314826 () Bool)

(assert (=> b!7930376 m!8314826))

(declare-fun m!8314828 () Bool)

(assert (=> b!7930377 m!8314828))

(declare-fun m!8314830 () Bool)

(assert (=> b!7930377 m!8314830))

(declare-fun m!8314834 () Bool)

(assert (=> b!7930377 m!8314834))

(assert (=> b!7929655 d!2369833))

(assert (=> b!7929655 d!2369375))

(declare-fun d!2369839 () Bool)

(declare-fun c!1456516 () Bool)

(assert (=> d!2369839 (= c!1456516 ((_ is Empty!15904) (right!57206 lt!2693858)))))

(declare-fun e!4679938 () List!74574)

(assert (=> d!2369839 (= (list!19417 (right!57206 lt!2693858)) e!4679938)))

(declare-fun b!7930383 () Bool)

(assert (=> b!7930383 (= e!4679938 Nil!74450)))

(declare-fun b!7930386 () Bool)

(declare-fun e!4679939 () List!74574)

(assert (=> b!7930386 (= e!4679939 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693858))) (list!19417 (right!57206 (right!57206 lt!2693858)))))))

(declare-fun b!7930385 () Bool)

(assert (=> b!7930385 (= e!4679939 (list!19419 (xs!19294 (right!57206 lt!2693858))))))

(declare-fun b!7930384 () Bool)

(assert (=> b!7930384 (= e!4679938 e!4679939)))

(declare-fun c!1456517 () Bool)

(assert (=> b!7930384 (= c!1456517 ((_ is Leaf!30237) (right!57206 lt!2693858)))))

(assert (= (and d!2369839 c!1456516) b!7930383))

(assert (= (and d!2369839 (not c!1456516)) b!7930384))

(assert (= (and b!7930384 c!1456517) b!7930385))

(assert (= (and b!7930384 (not c!1456517)) b!7930386))

(declare-fun m!8314836 () Bool)

(assert (=> b!7930386 m!8314836))

(declare-fun m!8314838 () Bool)

(assert (=> b!7930386 m!8314838))

(assert (=> b!7930386 m!8314836))

(assert (=> b!7930386 m!8314838))

(declare-fun m!8314840 () Bool)

(assert (=> b!7930386 m!8314840))

(declare-fun m!8314842 () Bool)

(assert (=> b!7930385 m!8314842))

(assert (=> b!7929655 d!2369839))

(declare-fun d!2369841 () Bool)

(declare-fun e!4679943 () Bool)

(assert (=> d!2369841 e!4679943))

(declare-fun res!3146656 () Bool)

(assert (=> d!2369841 (=> (not res!3146656) (not e!4679943))))

(declare-fun lt!2694057 () List!74574)

(assert (=> d!2369841 (= res!3146656 (= (content!15785 lt!2694057) ((_ map or) (content!15785 call!735334) (content!15785 lt!2693866))))))

(declare-fun e!4679942 () List!74574)

(assert (=> d!2369841 (= lt!2694057 e!4679942)))

(declare-fun c!1456519 () Bool)

(assert (=> d!2369841 (= c!1456519 ((_ is Nil!74450) call!735334))))

(assert (=> d!2369841 (= (++!18261 call!735334 lt!2693866) lt!2694057)))

(declare-fun b!7930392 () Bool)

(assert (=> b!7930392 (= e!4679942 (Cons!74450 (h!80898 call!735334) (++!18261 (t!390205 call!735334) lt!2693866)))))

(declare-fun b!7930391 () Bool)

(assert (=> b!7930391 (= e!4679942 lt!2693866)))

(declare-fun b!7930393 () Bool)

(declare-fun res!3146655 () Bool)

(assert (=> b!7930393 (=> (not res!3146655) (not e!4679943))))

(assert (=> b!7930393 (= res!3146655 (= (size!43253 lt!2694057) (+ (size!43253 call!735334) (size!43253 lt!2693866))))))

(declare-fun b!7930394 () Bool)

(assert (=> b!7930394 (= e!4679943 (or (not (= lt!2693866 Nil!74450)) (= lt!2694057 call!735334)))))

(assert (= (and d!2369841 c!1456519) b!7930391))

(assert (= (and d!2369841 (not c!1456519)) b!7930392))

(assert (= (and d!2369841 res!3146656) b!7930393))

(assert (= (and b!7930393 res!3146655) b!7930394))

(declare-fun m!8314858 () Bool)

(assert (=> d!2369841 m!8314858))

(declare-fun m!8314860 () Bool)

(assert (=> d!2369841 m!8314860))

(declare-fun m!8314862 () Bool)

(assert (=> d!2369841 m!8314862))

(declare-fun m!8314864 () Bool)

(assert (=> b!7930392 m!8314864))

(declare-fun m!8314866 () Bool)

(assert (=> b!7930393 m!8314866))

(declare-fun m!8314868 () Bool)

(assert (=> b!7930393 m!8314868))

(declare-fun m!8314870 () Bool)

(assert (=> b!7930393 m!8314870))

(assert (=> b!7929655 d!2369841))

(declare-fun d!2369843 () Bool)

(assert (=> d!2369843 (= (++!18261 (++!18261 lt!2693865 lt!2693863) lt!2693866) (++!18261 lt!2693865 (++!18261 lt!2693863 lt!2693866)))))

(declare-fun lt!2694058 () Unit!169569)

(assert (=> d!2369843 (= lt!2694058 (choose!59834 lt!2693865 lt!2693863 lt!2693866))))

(assert (=> d!2369843 (= (lemmaConcatAssociativity!3164 lt!2693865 lt!2693863 lt!2693866) lt!2694058)))

(declare-fun bs!1968960 () Bool)

(assert (= bs!1968960 d!2369843))

(declare-fun m!8314872 () Bool)

(assert (=> bs!1968960 m!8314872))

(declare-fun m!8314874 () Bool)

(assert (=> bs!1968960 m!8314874))

(declare-fun m!8314876 () Bool)

(assert (=> bs!1968960 m!8314876))

(declare-fun m!8314878 () Bool)

(assert (=> bs!1968960 m!8314878))

(assert (=> bs!1968960 m!8314872))

(declare-fun m!8314880 () Bool)

(assert (=> bs!1968960 m!8314880))

(assert (=> bs!1968960 m!8314874))

(assert (=> b!7929655 d!2369843))

(declare-fun d!2369845 () Bool)

(declare-fun e!4679950 () Bool)

(assert (=> d!2369845 e!4679950))

(declare-fun res!3146658 () Bool)

(assert (=> d!2369845 (=> (not res!3146658) (not e!4679950))))

(declare-fun lt!2694059 () List!74574)

(assert (=> d!2369845 (= res!3146658 (= (content!15785 lt!2694059) ((_ map or) (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693717))) (content!15785 lt!2693712))))))

(declare-fun e!4679948 () List!74574)

(assert (=> d!2369845 (= lt!2694059 e!4679948)))

(declare-fun c!1456520 () Bool)

(assert (=> d!2369845 (= c!1456520 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693717))))))

(assert (=> d!2369845 (= (++!18261 (t!390205 (++!18261 lt!2693714 lt!2693717)) lt!2693712) lt!2694059)))

(declare-fun b!7930403 () Bool)

(assert (=> b!7930403 (= e!4679948 (Cons!74450 (h!80898 (t!390205 (++!18261 lt!2693714 lt!2693717))) (++!18261 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717))) lt!2693712)))))

(declare-fun b!7930402 () Bool)

(assert (=> b!7930402 (= e!4679948 lt!2693712)))

(declare-fun b!7930404 () Bool)

(declare-fun res!3146657 () Bool)

(assert (=> b!7930404 (=> (not res!3146657) (not e!4679950))))

(assert (=> b!7930404 (= res!3146657 (= (size!43253 lt!2694059) (+ (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693717))) (size!43253 lt!2693712))))))

(declare-fun b!7930405 () Bool)

(assert (=> b!7930405 (= e!4679950 (or (not (= lt!2693712 Nil!74450)) (= lt!2694059 (t!390205 (++!18261 lt!2693714 lt!2693717)))))))

(assert (= (and d!2369845 c!1456520) b!7930402))

(assert (= (and d!2369845 (not c!1456520)) b!7930403))

(assert (= (and d!2369845 res!3146658) b!7930404))

(assert (= (and b!7930404 res!3146657) b!7930405))

(declare-fun m!8314894 () Bool)

(assert (=> d!2369845 m!8314894))

(assert (=> d!2369845 m!8314414))

(assert (=> d!2369845 m!8312848))

(declare-fun m!8314896 () Bool)

(assert (=> b!7930403 m!8314896))

(declare-fun m!8314898 () Bool)

(assert (=> b!7930404 m!8314898))

(assert (=> b!7930404 m!8313864))

(assert (=> b!7930404 m!8312856))

(assert (=> b!7929357 d!2369845))

(declare-fun d!2369847 () Bool)

(declare-fun lt!2694060 () Int)

(assert (=> d!2369847 (>= lt!2694060 0)))

(declare-fun e!4679954 () Int)

(assert (=> d!2369847 (= lt!2694060 e!4679954)))

(declare-fun c!1456521 () Bool)

(assert (=> d!2369847 (= c!1456521 ((_ is Nil!74450) lt!2693789))))

(assert (=> d!2369847 (= (size!43253 lt!2693789) lt!2694060)))

(declare-fun b!7930410 () Bool)

(assert (=> b!7930410 (= e!4679954 0)))

(declare-fun b!7930411 () Bool)

(assert (=> b!7930411 (= e!4679954 (+ 1 (size!43253 (t!390205 lt!2693789))))))

(assert (= (and d!2369847 c!1456521) b!7930410))

(assert (= (and d!2369847 (not c!1456521)) b!7930411))

(declare-fun m!8314906 () Bool)

(assert (=> b!7930411 m!8314906))

(assert (=> b!7929383 d!2369847))

(assert (=> b!7929383 d!2369457))

(declare-fun d!2369849 () Bool)

(declare-fun lt!2694061 () Int)

(assert (=> d!2369849 (>= lt!2694061 0)))

(declare-fun e!4679957 () Int)

(assert (=> d!2369849 (= lt!2694061 e!4679957)))

(declare-fun c!1456522 () Bool)

(assert (=> d!2369849 (= c!1456522 ((_ is Nil!74450) (++!18261 lt!2693715 lt!2693721)))))

(assert (=> d!2369849 (= (size!43253 (++!18261 lt!2693715 lt!2693721)) lt!2694061)))

(declare-fun b!7930415 () Bool)

(assert (=> b!7930415 (= e!4679957 0)))

(declare-fun b!7930416 () Bool)

(assert (=> b!7930416 (= e!4679957 (+ 1 (size!43253 (t!390205 (++!18261 lt!2693715 lt!2693721)))))))

(assert (= (and d!2369849 c!1456522) b!7930415))

(assert (= (and d!2369849 (not c!1456522)) b!7930416))

(declare-fun m!8314910 () Bool)

(assert (=> b!7930416 m!8314910))

(assert (=> b!7929383 d!2369849))

(declare-fun d!2369851 () Bool)

(declare-fun res!3146659 () Bool)

(declare-fun e!4679958 () Bool)

(assert (=> d!2369851 (=> (not res!3146659) (not e!4679958))))

(assert (=> d!2369851 (= res!3146659 (<= (size!43253 (list!19419 (xs!19294 (right!57206 t!4440)))) 512))))

(assert (=> d!2369851 (= (inv!95733 (right!57206 t!4440)) e!4679958)))

(declare-fun b!7930417 () Bool)

(declare-fun res!3146660 () Bool)

(assert (=> b!7930417 (=> (not res!3146660) (not e!4679958))))

(assert (=> b!7930417 (= res!3146660 (= (csize!32039 (right!57206 t!4440)) (size!43253 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(declare-fun b!7930418 () Bool)

(assert (=> b!7930418 (= e!4679958 (and (> (csize!32039 (right!57206 t!4440)) 0) (<= (csize!32039 (right!57206 t!4440)) 512)))))

(assert (= (and d!2369851 res!3146659) b!7930417))

(assert (= (and b!7930417 res!3146660) b!7930418))

(assert (=> d!2369851 m!8312944))

(assert (=> d!2369851 m!8312944))

(assert (=> d!2369851 m!8314702))

(assert (=> b!7930417 m!8312944))

(assert (=> b!7930417 m!8312944))

(assert (=> b!7930417 m!8314702))

(assert (=> b!7929452 d!2369851))

(assert (=> d!2369229 d!2369227))

(declare-fun d!2369853 () Bool)

(assert (=> d!2369853 (= (++!18261 (++!18261 lt!2693714 lt!2693715) lt!2693721) (++!18261 lt!2693714 (++!18261 lt!2693715 lt!2693721)))))

(assert (=> d!2369853 true))

(declare-fun _$15!904 () Unit!169569)

(assert (=> d!2369853 (= (choose!59834 lt!2693714 lt!2693715 lt!2693721) _$15!904)))

(declare-fun bs!1968961 () Bool)

(assert (= bs!1968961 d!2369853))

(assert (=> bs!1968961 m!8312806))

(assert (=> bs!1968961 m!8312806))

(assert (=> bs!1968961 m!8312808))

(assert (=> bs!1968961 m!8312814))

(assert (=> bs!1968961 m!8312814))

(assert (=> bs!1968961 m!8312816))

(assert (=> d!2369229 d!2369853))

(assert (=> d!2369229 d!2369233))

(assert (=> d!2369229 d!2369237))

(assert (=> d!2369229 d!2369239))

(declare-fun d!2369855 () Bool)

(declare-fun e!4679961 () Bool)

(assert (=> d!2369855 e!4679961))

(declare-fun res!3146662 () Bool)

(assert (=> d!2369855 (=> (not res!3146662) (not e!4679961))))

(declare-fun lt!2694062 () List!74574)

(assert (=> d!2369855 (= res!3146662 (= (content!15785 lt!2694062) ((_ map or) (content!15785 (list!19417 t!4440)) (content!15785 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun e!4679960 () List!74574)

(assert (=> d!2369855 (= lt!2694062 e!4679960)))

(declare-fun c!1456523 () Bool)

(assert (=> d!2369855 (= c!1456523 ((_ is Nil!74450) (list!19417 t!4440)))))

(assert (=> d!2369855 (= (++!18261 (list!19417 t!4440) (Cons!74450 v!5484 Nil!74450)) lt!2694062)))

(declare-fun b!7930421 () Bool)

(assert (=> b!7930421 (= e!4679960 (Cons!74450 (h!80898 (list!19417 t!4440)) (++!18261 (t!390205 (list!19417 t!4440)) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930420 () Bool)

(assert (=> b!7930420 (= e!4679960 (Cons!74450 v!5484 Nil!74450))))

(declare-fun b!7930422 () Bool)

(declare-fun res!3146661 () Bool)

(assert (=> b!7930422 (=> (not res!3146661) (not e!4679961))))

(assert (=> b!7930422 (= res!3146661 (= (size!43253 lt!2694062) (+ (size!43253 (list!19417 t!4440)) (size!43253 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun b!7930423 () Bool)

(assert (=> b!7930423 (= e!4679961 (or (not (= (Cons!74450 v!5484 Nil!74450) Nil!74450)) (= lt!2694062 (list!19417 t!4440))))))

(assert (= (and d!2369855 c!1456523) b!7930420))

(assert (= (and d!2369855 (not c!1456523)) b!7930421))

(assert (= (and d!2369855 res!3146662) b!7930422))

(assert (= (and b!7930422 res!3146661) b!7930423))

(declare-fun m!8314916 () Bool)

(assert (=> d!2369855 m!8314916))

(assert (=> d!2369855 m!8312770))

(assert (=> d!2369855 m!8313194))

(declare-fun m!8314918 () Bool)

(assert (=> d!2369855 m!8314918))

(assert (=> b!7930421 m!8313852))

(declare-fun m!8314920 () Bool)

(assert (=> b!7930422 m!8314920))

(assert (=> b!7930422 m!8312770))

(assert (=> b!7930422 m!8313186))

(declare-fun m!8314922 () Bool)

(assert (=> b!7930422 m!8314922))

(assert (=> b!7929527 d!2369855))

(assert (=> b!7929284 d!2369513))

(declare-fun d!2369857 () Bool)

(declare-fun e!4679963 () Bool)

(assert (=> d!2369857 e!4679963))

(declare-fun res!3146664 () Bool)

(assert (=> d!2369857 (=> (not res!3146664) (not e!4679963))))

(declare-fun lt!2694063 () List!74574)

(assert (=> d!2369857 (= res!3146664 (= (content!15785 lt!2694063) ((_ map or) (content!15785 (t!390205 lt!2693714)) (content!15785 lt!2693717))))))

(declare-fun e!4679962 () List!74574)

(assert (=> d!2369857 (= lt!2694063 e!4679962)))

(declare-fun c!1456524 () Bool)

(assert (=> d!2369857 (= c!1456524 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(assert (=> d!2369857 (= (++!18261 (t!390205 lt!2693714) lt!2693717) lt!2694063)))

(declare-fun b!7930425 () Bool)

(assert (=> b!7930425 (= e!4679962 (Cons!74450 (h!80898 (t!390205 lt!2693714)) (++!18261 (t!390205 (t!390205 lt!2693714)) lt!2693717)))))

(declare-fun b!7930424 () Bool)

(assert (=> b!7930424 (= e!4679962 lt!2693717)))

(declare-fun b!7930426 () Bool)

(declare-fun res!3146663 () Bool)

(assert (=> b!7930426 (=> (not res!3146663) (not e!4679963))))

(assert (=> b!7930426 (= res!3146663 (= (size!43253 lt!2694063) (+ (size!43253 (t!390205 lt!2693714)) (size!43253 lt!2693717))))))

(declare-fun b!7930427 () Bool)

(assert (=> b!7930427 (= e!4679963 (or (not (= lt!2693717 Nil!74450)) (= lt!2694063 (t!390205 lt!2693714))))))

(assert (= (and d!2369857 c!1456524) b!7930424))

(assert (= (and d!2369857 (not c!1456524)) b!7930425))

(assert (= (and d!2369857 res!3146664) b!7930426))

(assert (= (and b!7930426 res!3146663) b!7930427))

(declare-fun m!8314924 () Bool)

(assert (=> d!2369857 m!8314924))

(assert (=> d!2369857 m!8313534))

(assert (=> d!2369857 m!8312846))

(declare-fun m!8314926 () Bool)

(assert (=> b!7930425 m!8314926))

(declare-fun m!8314928 () Bool)

(assert (=> b!7930426 m!8314928))

(assert (=> b!7930426 m!8313540))

(assert (=> b!7930426 m!8312854))

(assert (=> b!7929365 d!2369857))

(declare-fun d!2369859 () Bool)

(declare-fun lt!2694064 () Int)

(assert (=> d!2369859 (>= lt!2694064 0)))

(declare-fun e!4679964 () Int)

(assert (=> d!2369859 (= lt!2694064 e!4679964)))

(declare-fun c!1456525 () Bool)

(assert (=> d!2369859 (= c!1456525 ((_ is Nil!74450) lt!2693769))))

(assert (=> d!2369859 (= (size!43253 lt!2693769) lt!2694064)))

(declare-fun b!7930428 () Bool)

(assert (=> b!7930428 (= e!4679964 0)))

(declare-fun b!7930429 () Bool)

(assert (=> b!7930429 (= e!4679964 (+ 1 (size!43253 (t!390205 lt!2693769))))))

(assert (= (and d!2369859 c!1456525) b!7930428))

(assert (= (and d!2369859 (not c!1456525)) b!7930429))

(declare-fun m!8314930 () Bool)

(assert (=> b!7930429 m!8314930))

(assert (=> b!7929362 d!2369859))

(assert (=> b!7929362 d!2369491))

(declare-fun d!2369861 () Bool)

(declare-fun lt!2694065 () Int)

(assert (=> d!2369861 (>= lt!2694065 0)))

(declare-fun e!4679965 () Int)

(assert (=> d!2369861 (= lt!2694065 e!4679965)))

(declare-fun c!1456526 () Bool)

(assert (=> d!2369861 (= c!1456526 ((_ is Nil!74450) lt!2693721))))

(assert (=> d!2369861 (= (size!43253 lt!2693721) lt!2694065)))

(declare-fun b!7930430 () Bool)

(assert (=> b!7930430 (= e!4679965 0)))

(declare-fun b!7930431 () Bool)

(assert (=> b!7930431 (= e!4679965 (+ 1 (size!43253 (t!390205 lt!2693721))))))

(assert (= (and d!2369861 c!1456526) b!7930430))

(assert (= (and d!2369861 (not c!1456526)) b!7930431))

(declare-fun m!8314932 () Bool)

(assert (=> b!7930431 m!8314932))

(assert (=> b!7929362 d!2369861))

(assert (=> b!7929286 d!2369303))

(assert (=> b!7929286 d!2369383))

(declare-fun d!2369863 () Bool)

(declare-fun lt!2694066 () Bool)

(assert (=> d!2369863 (= lt!2694066 (isEmpty!42782 (list!19417 (left!56876 lt!2693719))))))

(assert (=> d!2369863 (= lt!2694066 (= (size!43255 (left!56876 lt!2693719)) 0))))

(assert (=> d!2369863 (= (isEmpty!42779 (left!56876 lt!2693719)) lt!2694066)))

(declare-fun bs!1968962 () Bool)

(assert (= bs!1968962 d!2369863))

(assert (=> bs!1968962 m!8313094))

(assert (=> bs!1968962 m!8313094))

(declare-fun m!8314934 () Bool)

(assert (=> bs!1968962 m!8314934))

(declare-fun m!8314936 () Bool)

(assert (=> bs!1968962 m!8314936))

(assert (=> b!7929395 d!2369863))

(assert (=> bm!735300 d!2369643))

(assert (=> b!7929397 d!2369539))

(assert (=> b!7929397 d!2369541))

(declare-fun d!2369865 () Bool)

(declare-fun lt!2694067 () Int)

(assert (=> d!2369865 (>= lt!2694067 0)))

(declare-fun e!4679966 () Int)

(assert (=> d!2369865 (= lt!2694067 e!4679966)))

(declare-fun c!1456527 () Bool)

(assert (=> d!2369865 (= c!1456527 ((_ is Nil!74450) lt!2693764))))

(assert (=> d!2369865 (= (size!43253 lt!2693764) lt!2694067)))

(declare-fun b!7930432 () Bool)

(assert (=> b!7930432 (= e!4679966 0)))

(declare-fun b!7930433 () Bool)

(assert (=> b!7930433 (= e!4679966 (+ 1 (size!43253 (t!390205 lt!2693764))))))

(assert (= (and d!2369865 c!1456527) b!7930432))

(assert (= (and d!2369865 (not c!1456527)) b!7930433))

(declare-fun m!8314938 () Bool)

(assert (=> b!7930433 m!8314938))

(assert (=> b!7929354 d!2369865))

(declare-fun d!2369867 () Bool)

(declare-fun lt!2694068 () Int)

(assert (=> d!2369867 (>= lt!2694068 0)))

(declare-fun e!4679967 () Int)

(assert (=> d!2369867 (= lt!2694068 e!4679967)))

(declare-fun c!1456528 () Bool)

(assert (=> d!2369867 (= c!1456528 ((_ is Nil!74450) (++!18261 lt!2693714 lt!2693715)))))

(assert (=> d!2369867 (= (size!43253 (++!18261 lt!2693714 lt!2693715)) lt!2694068)))

(declare-fun b!7930434 () Bool)

(assert (=> b!7930434 (= e!4679967 0)))

(declare-fun b!7930435 () Bool)

(assert (=> b!7930435 (= e!4679967 (+ 1 (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693715)))))))

(assert (= (and d!2369867 c!1456528) b!7930434))

(assert (= (and d!2369867 (not c!1456528)) b!7930435))

(assert (=> b!7930435 m!8314024))

(assert (=> b!7929354 d!2369867))

(assert (=> b!7929354 d!2369861))

(declare-fun d!2369869 () Bool)

(declare-fun e!4679969 () Bool)

(assert (=> d!2369869 e!4679969))

(declare-fun res!3146666 () Bool)

(assert (=> d!2369869 (=> (not res!3146666) (not e!4679969))))

(declare-fun lt!2694069 () List!74574)

(assert (=> d!2369869 (= res!3146666 (= (content!15785 lt!2694069) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 lt!2693711)))) (content!15785 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun e!4679968 () List!74574)

(assert (=> d!2369869 (= lt!2694069 e!4679968)))

(declare-fun c!1456529 () Bool)

(assert (=> d!2369869 (= c!1456529 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 lt!2693711)))))))

(assert (=> d!2369869 (= (++!18261 (list!19417 (left!56876 (left!56876 lt!2693711))) (list!19417 (right!57206 (left!56876 lt!2693711)))) lt!2694069)))

(declare-fun b!7930437 () Bool)

(assert (=> b!7930437 (= e!4679968 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 lt!2693711)))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711)))) (list!19417 (right!57206 (left!56876 lt!2693711))))))))

(declare-fun b!7930436 () Bool)

(assert (=> b!7930436 (= e!4679968 (list!19417 (right!57206 (left!56876 lt!2693711))))))

(declare-fun b!7930438 () Bool)

(declare-fun res!3146665 () Bool)

(assert (=> b!7930438 (=> (not res!3146665) (not e!4679969))))

(assert (=> b!7930438 (= res!3146665 (= (size!43253 lt!2694069) (+ (size!43253 (list!19417 (left!56876 (left!56876 lt!2693711)))) (size!43253 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun b!7930439 () Bool)

(assert (=> b!7930439 (= e!4679969 (or (not (= (list!19417 (right!57206 (left!56876 lt!2693711))) Nil!74450)) (= lt!2694069 (list!19417 (left!56876 (left!56876 lt!2693711))))))))

(assert (= (and d!2369869 c!1456529) b!7930436))

(assert (= (and d!2369869 (not c!1456529)) b!7930437))

(assert (= (and d!2369869 res!3146666) b!7930438))

(assert (= (and b!7930438 res!3146665) b!7930439))

(declare-fun m!8314940 () Bool)

(assert (=> d!2369869 m!8314940))

(assert (=> d!2369869 m!8313078))

(declare-fun m!8314942 () Bool)

(assert (=> d!2369869 m!8314942))

(assert (=> d!2369869 m!8313080))

(declare-fun m!8314944 () Bool)

(assert (=> d!2369869 m!8314944))

(assert (=> b!7930437 m!8313080))

(declare-fun m!8314946 () Bool)

(assert (=> b!7930437 m!8314946))

(declare-fun m!8314948 () Bool)

(assert (=> b!7930438 m!8314948))

(assert (=> b!7930438 m!8313078))

(declare-fun m!8314950 () Bool)

(assert (=> b!7930438 m!8314950))

(assert (=> b!7930438 m!8313080))

(declare-fun m!8314952 () Bool)

(assert (=> b!7930438 m!8314952))

(assert (=> b!7929442 d!2369869))

(declare-fun d!2369871 () Bool)

(declare-fun c!1456530 () Bool)

(assert (=> d!2369871 (= c!1456530 ((_ is Empty!15904) (left!56876 (left!56876 lt!2693711))))))

(declare-fun e!4679970 () List!74574)

(assert (=> d!2369871 (= (list!19417 (left!56876 (left!56876 lt!2693711))) e!4679970)))

(declare-fun b!7930440 () Bool)

(assert (=> b!7930440 (= e!4679970 Nil!74450)))

(declare-fun b!7930443 () Bool)

(declare-fun e!4679971 () List!74574)

(assert (=> b!7930443 (= e!4679971 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711)))) (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711))))))))

(declare-fun b!7930442 () Bool)

(assert (=> b!7930442 (= e!4679971 (list!19419 (xs!19294 (left!56876 (left!56876 lt!2693711)))))))

(declare-fun b!7930441 () Bool)

(assert (=> b!7930441 (= e!4679970 e!4679971)))

(declare-fun c!1456531 () Bool)

(assert (=> b!7930441 (= c!1456531 ((_ is Leaf!30237) (left!56876 (left!56876 lt!2693711))))))

(assert (= (and d!2369871 c!1456530) b!7930440))

(assert (= (and d!2369871 (not c!1456530)) b!7930441))

(assert (= (and b!7930441 c!1456531) b!7930442))

(assert (= (and b!7930441 (not c!1456531)) b!7930443))

(declare-fun m!8314954 () Bool)

(assert (=> b!7930443 m!8314954))

(declare-fun m!8314956 () Bool)

(assert (=> b!7930443 m!8314956))

(assert (=> b!7930443 m!8314954))

(assert (=> b!7930443 m!8314956))

(declare-fun m!8314958 () Bool)

(assert (=> b!7930443 m!8314958))

(declare-fun m!8314960 () Bool)

(assert (=> b!7930442 m!8314960))

(assert (=> b!7929442 d!2369871))

(declare-fun d!2369873 () Bool)

(declare-fun c!1456532 () Bool)

(assert (=> d!2369873 (= c!1456532 ((_ is Empty!15904) (right!57206 (left!56876 lt!2693711))))))

(declare-fun e!4679972 () List!74574)

(assert (=> d!2369873 (= (list!19417 (right!57206 (left!56876 lt!2693711))) e!4679972)))

(declare-fun b!7930444 () Bool)

(assert (=> b!7930444 (= e!4679972 Nil!74450)))

(declare-fun b!7930447 () Bool)

(declare-fun e!4679973 () List!74574)

(assert (=> b!7930447 (= e!4679973 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711)))) (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711))))))))

(declare-fun b!7930446 () Bool)

(assert (=> b!7930446 (= e!4679973 (list!19419 (xs!19294 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun b!7930445 () Bool)

(assert (=> b!7930445 (= e!4679972 e!4679973)))

(declare-fun c!1456533 () Bool)

(assert (=> b!7930445 (= c!1456533 ((_ is Leaf!30237) (right!57206 (left!56876 lt!2693711))))))

(assert (= (and d!2369873 c!1456532) b!7930444))

(assert (= (and d!2369873 (not c!1456532)) b!7930445))

(assert (= (and b!7930445 c!1456533) b!7930446))

(assert (= (and b!7930445 (not c!1456533)) b!7930447))

(declare-fun m!8314962 () Bool)

(assert (=> b!7930447 m!8314962))

(declare-fun m!8314964 () Bool)

(assert (=> b!7930447 m!8314964))

(assert (=> b!7930447 m!8314962))

(assert (=> b!7930447 m!8314964))

(declare-fun m!8314966 () Bool)

(assert (=> b!7930447 m!8314966))

(declare-fun m!8314968 () Bool)

(assert (=> b!7930446 m!8314968))

(assert (=> b!7929442 d!2369873))

(declare-fun b!7930448 () Bool)

(declare-fun e!4679974 () Bool)

(declare-fun tp!2358898 () Bool)

(assert (=> b!7930448 (= e!4679974 (and tp_is_empty!53233 tp!2358898))))

(assert (=> b!7929674 (= tp!2358870 e!4679974)))

(assert (= (and b!7929674 ((_ is Cons!74450) (t!390205 (innerList!15992 (xs!19294 t!4440))))) b!7930448))

(declare-fun e!4679976 () Bool)

(declare-fun b!7930449 () Bool)

(declare-fun tp!2358900 () Bool)

(declare-fun tp!2358899 () Bool)

(assert (=> b!7930449 (= e!4679976 (and (inv!95730 (left!56876 (left!56876 (right!57206 t!4440)))) tp!2358900 (inv!95730 (right!57206 (left!56876 (right!57206 t!4440)))) tp!2358899))))

(declare-fun b!7930451 () Bool)

(declare-fun e!4679975 () Bool)

(declare-fun tp!2358901 () Bool)

(assert (=> b!7930451 (= e!4679975 tp!2358901)))

(declare-fun b!7930450 () Bool)

(assert (=> b!7930450 (= e!4679976 (and (inv!95731 (xs!19294 (left!56876 (right!57206 t!4440)))) e!4679975))))

(assert (=> b!7929686 (= tp!2358881 (and (inv!95730 (left!56876 (right!57206 t!4440))) e!4679976))))

(assert (= (and b!7929686 ((_ is Node!15904) (left!56876 (right!57206 t!4440)))) b!7930449))

(assert (= b!7930450 b!7930451))

(assert (= (and b!7929686 ((_ is Leaf!30237) (left!56876 (right!57206 t!4440)))) b!7930450))

(declare-fun m!8314970 () Bool)

(assert (=> b!7930449 m!8314970))

(declare-fun m!8314972 () Bool)

(assert (=> b!7930449 m!8314972))

(declare-fun m!8314974 () Bool)

(assert (=> b!7930450 m!8314974))

(assert (=> b!7929686 m!8313368))

(declare-fun e!4679978 () Bool)

(declare-fun b!7930452 () Bool)

(declare-fun tp!2358903 () Bool)

(declare-fun tp!2358902 () Bool)

(assert (=> b!7930452 (= e!4679978 (and (inv!95730 (left!56876 (right!57206 (right!57206 t!4440)))) tp!2358903 (inv!95730 (right!57206 (right!57206 (right!57206 t!4440)))) tp!2358902))))

(declare-fun b!7930454 () Bool)

(declare-fun e!4679977 () Bool)

(declare-fun tp!2358904 () Bool)

(assert (=> b!7930454 (= e!4679977 tp!2358904)))

(declare-fun b!7930453 () Bool)

(assert (=> b!7930453 (= e!4679978 (and (inv!95731 (xs!19294 (right!57206 (right!57206 t!4440)))) e!4679977))))

(assert (=> b!7929686 (= tp!2358880 (and (inv!95730 (right!57206 (right!57206 t!4440))) e!4679978))))

(assert (= (and b!7929686 ((_ is Node!15904) (right!57206 (right!57206 t!4440)))) b!7930452))

(assert (= b!7930453 b!7930454))

(assert (= (and b!7929686 ((_ is Leaf!30237) (right!57206 (right!57206 t!4440)))) b!7930453))

(declare-fun m!8314976 () Bool)

(assert (=> b!7930452 m!8314976))

(declare-fun m!8314978 () Bool)

(assert (=> b!7930452 m!8314978))

(declare-fun m!8314980 () Bool)

(assert (=> b!7930453 m!8314980))

(assert (=> b!7929686 m!8313370))

(declare-fun tp!2358905 () Bool)

(declare-fun b!7930455 () Bool)

(declare-fun e!4679980 () Bool)

(declare-fun tp!2358906 () Bool)

(assert (=> b!7930455 (= e!4679980 (and (inv!95730 (left!56876 (left!56876 (left!56876 t!4440)))) tp!2358906 (inv!95730 (right!57206 (left!56876 (left!56876 t!4440)))) tp!2358905))))

(declare-fun b!7930457 () Bool)

(declare-fun e!4679979 () Bool)

(declare-fun tp!2358907 () Bool)

(assert (=> b!7930457 (= e!4679979 tp!2358907)))

(declare-fun b!7930456 () Bool)

(assert (=> b!7930456 (= e!4679980 (and (inv!95731 (xs!19294 (left!56876 (left!56876 t!4440)))) e!4679979))))

(assert (=> b!7929683 (= tp!2358878 (and (inv!95730 (left!56876 (left!56876 t!4440))) e!4679980))))

(assert (= (and b!7929683 ((_ is Node!15904) (left!56876 (left!56876 t!4440)))) b!7930455))

(assert (= b!7930456 b!7930457))

(assert (= (and b!7929683 ((_ is Leaf!30237) (left!56876 (left!56876 t!4440)))) b!7930456))

(declare-fun m!8314982 () Bool)

(assert (=> b!7930455 m!8314982))

(declare-fun m!8314984 () Bool)

(assert (=> b!7930455 m!8314984))

(declare-fun m!8314986 () Bool)

(assert (=> b!7930456 m!8314986))

(assert (=> b!7929683 m!8313362))

(declare-fun e!4679982 () Bool)

(declare-fun b!7930458 () Bool)

(declare-fun tp!2358909 () Bool)

(declare-fun tp!2358908 () Bool)

(assert (=> b!7930458 (= e!4679982 (and (inv!95730 (left!56876 (right!57206 (left!56876 t!4440)))) tp!2358909 (inv!95730 (right!57206 (right!57206 (left!56876 t!4440)))) tp!2358908))))

(declare-fun b!7930460 () Bool)

(declare-fun e!4679981 () Bool)

(declare-fun tp!2358910 () Bool)

(assert (=> b!7930460 (= e!4679981 tp!2358910)))

(declare-fun b!7930459 () Bool)

(assert (=> b!7930459 (= e!4679982 (and (inv!95731 (xs!19294 (right!57206 (left!56876 t!4440)))) e!4679981))))

(assert (=> b!7929683 (= tp!2358877 (and (inv!95730 (right!57206 (left!56876 t!4440))) e!4679982))))

(assert (= (and b!7929683 ((_ is Node!15904) (right!57206 (left!56876 t!4440)))) b!7930458))

(assert (= b!7930459 b!7930460))

(assert (= (and b!7929683 ((_ is Leaf!30237) (right!57206 (left!56876 t!4440)))) b!7930459))

(declare-fun m!8314988 () Bool)

(assert (=> b!7930458 m!8314988))

(declare-fun m!8314990 () Bool)

(assert (=> b!7930458 m!8314990))

(declare-fun m!8314992 () Bool)

(assert (=> b!7930459 m!8314992))

(assert (=> b!7929683 m!8313364))

(declare-fun b!7930461 () Bool)

(declare-fun e!4679983 () Bool)

(declare-fun tp!2358911 () Bool)

(assert (=> b!7930461 (= e!4679983 (and tp_is_empty!53233 tp!2358911))))

(assert (=> b!7929688 (= tp!2358882 e!4679983)))

(assert (= (and b!7929688 ((_ is Cons!74450) (innerList!15992 (xs!19294 (right!57206 t!4440))))) b!7930461))

(declare-fun b!7930462 () Bool)

(declare-fun e!4679984 () Bool)

(declare-fun tp!2358912 () Bool)

(assert (=> b!7930462 (= e!4679984 (and tp_is_empty!53233 tp!2358912))))

(assert (=> b!7929685 (= tp!2358879 e!4679984)))

(assert (= (and b!7929685 ((_ is Cons!74450) (innerList!15992 (xs!19294 (left!56876 t!4440))))) b!7930462))

(check-sat (not b!7930325) (not b!7930454) (not b!7930211) (not b!7929768) (not b!7929938) (not bm!735352) (not b!7930421) (not b!7930191) (not b!7929911) (not b!7929952) (not b!7930205) (not d!2369717) (not b!7930446) (not d!2369531) (not b!7930376) (not d!2369441) (not d!2369461) (not bm!735360) (not b!7929956) (not b!7930417) (not b!7930150) (not b!7929939) (not b!7929973) (not b!7929959) (not b!7929944) (not b!7929961) (not d!2369503) (not bm!735356) (not b!7930462) tp_is_empty!53233 (not b!7930342) (not b!7929822) (not b!7929887) (not b!7929831) (not bm!735361) (not b!7930000) (not b!7929937) (not b!7930012) (not b!7929954) (not d!2369825) (not b!7929807) (not b!7930225) (not b!7930452) (not b!7929743) (not b!7929835) (not b!7930435) (not b!7930018) (not b!7929761) (not b!7929958) (not b!7930248) (not d!2369661) (not d!2369439) (not b!7929805) (not b!7929729) (not b!7929923) (not b!7929941) (not b!7930393) (not d!2369851) (not b!7930339) (not b!7930183) (not b!7929842) (not b!7929760) (not b!7929962) (not b!7930256) (not b!7930442) (not b!7930202) (not d!2369607) (not b!7929876) (not b!7930327) (not b!7930091) (not b!7930180) (not b!7929951) (not b!7929963) (not b!7930017) (not b!7930404) (not b!7929986) (not d!2369857) (not b!7929987) (not d!2369371) (not b!7930340) (not d!2369845) (not b!7929935) (not b!7929885) (not b!7930368) (not d!2369393) (not b!7930182) (not b!7929946) (not b!7930082) (not b!7930377) (not b!7929844) (not b!7930433) (not b!7930103) (not d!2369435) (not d!2369739) (not b!7929988) (not bm!735341) (not b!7929950) (not d!2369759) (not b!7930159) (not d!2369711) (not bm!735364) (not b!7930447) (not b!7930266) (not bm!735340) (not bm!735369) (not b!7929830) (not b!7930456) (not b!7929907) (not d!2369723) (not b!7930193) (not b!7930158) (not bm!735357) (not b!7930443) (not b!7930185) (not b!7930169) (not b!7929976) (not bm!735359) (not d!2369829) (not b!7929899) (not b!7930323) (not b!7929840) (not b!7930009) (not b!7930455) (not b!7929989) (not b!7929755) (not b!7929750) (not d!2369635) (not d!2369853) (not b!7930386) (not b!7929749) (not b!7929791) (not b!7929834) (not b!7930112) (not b!7929843) (not b!7930450) (not b!7930403) (not d!2369413) (not b!7929972) (not d!2369613) (not d!2369553) (not b!7930115) (not b!7930459) (not b!7930437) (not b!7930208) (not d!2369755) (not b!7930199) (not d!2369751) (not b!7929787) (not b!7929964) (not b!7930422) (not b!7930195) (not b!7930046) (not b!7930451) (not d!2369821) (not b!7930293) (not b!7930426) (not b!7929985) (not b!7929775) (not bm!735368) (not b!7929683) (not b!7929889) (not b!7929776) (not b!7930197) (not b!7930014) (not b!7929919) (not b!7930255) (not b!7930249) (not b!7930431) (not b!7930227) (not b!7930449) (not bm!735362) (not d!2369585) (not b!7929877) (not d!2369621) (not d!2369841) (not b!7930152) (not d!2369699) (not b!7930341) (not b!7930270) (not d!2369771) (not b!7929874) (not b!7929949) (not b!7930081) (not b!7930429) (not b!7930438) (not b!7930096) (not b!7930461) (not b!7930265) (not b!7930237) (not b!7929974) (not b!7929846) (not b!7929823) (not b!7930329) (not d!2369775) (not b!7930458) (not b!7929799) (not b!7929893) (not b!7930114) (not d!2369543) (not d!2369477) (not b!7930425) (not b!7930354) (not bm!735365) (not b!7930167) (not b!7930098) (not b!7930361) (not b!7930129) (not d!2369679) (not b!7929879) (not b!7930282) (not b!7930094) (not b!7929912) (not b!7929975) (not b!7929731) (not b!7930111) (not d!2369833) (not b!7929814) (not d!2369637) (not d!2369385) (not d!2369389) (not b!7930187) (not d!2369559) (not b!7930203) (not bm!735358) (not b!7929767) (not b!7929788) (not b!7930460) (not b!7930448) (not b!7929903) (not b!7930188) (not d!2369721) (not b!7930212) (not d!2369713) (not b!7930369) (not b!7930299) (not b!7930457) (not b!7929960) (not b!7929797) (not b!7930008) (not d!2369741) (not b!7930343) (not b!7930209) (not b!7930360) (not b!7930344) (not b!7930224) (not b!7930229) (not d!2369843) (not b!7930099) (not d!2369855) (not d!2369863) (not b!7929990) (not bm!735353) (not b!7930230) (not b!7930001) (not b!7929686) (not b!7930292) (not b!7929733) (not d!2369629) (not b!7930164) (not b!7930326) (not b!7930281) (not b!7930385) (not b!7930104) (not b!7929813) (not b!7929953) (not b!7930300) (not d!2369869) (not b!7930168) (not b!7930392) (not b!7929754) (not b!7930453) (not b!7930411) (not b!7929948) (not b!7929971) (not b!7930416))
(check-sat)
(get-model)

(declare-fun b!7930463 () Bool)

(declare-fun res!3146670 () Bool)

(declare-fun e!4679985 () Bool)

(assert (=> b!7930463 (=> (not res!3146670) (not e!4679985))))

(assert (=> b!7930463 (= res!3146670 (isBalanced!4530 (left!56876 (left!56876 (right!57206 t!4440)))))))

(declare-fun d!2369875 () Bool)

(declare-fun res!3146667 () Bool)

(declare-fun e!4679986 () Bool)

(assert (=> d!2369875 (=> res!3146667 e!4679986)))

(assert (=> d!2369875 (= res!3146667 (not ((_ is Node!15904) (left!56876 (right!57206 t!4440)))))))

(assert (=> d!2369875 (= (isBalanced!4530 (left!56876 (right!57206 t!4440))) e!4679986)))

(declare-fun b!7930464 () Bool)

(declare-fun res!3146672 () Bool)

(assert (=> b!7930464 (=> (not res!3146672) (not e!4679985))))

(assert (=> b!7930464 (= res!3146672 (isBalanced!4530 (right!57206 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7930465 () Bool)

(declare-fun res!3146668 () Bool)

(assert (=> b!7930465 (=> (not res!3146668) (not e!4679985))))

(assert (=> b!7930465 (= res!3146668 (not (isEmpty!42779 (left!56876 (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7930466 () Bool)

(declare-fun res!3146669 () Bool)

(assert (=> b!7930466 (=> (not res!3146669) (not e!4679985))))

(assert (=> b!7930466 (= res!3146669 (<= (- (height!2219 (left!56876 (left!56876 (right!57206 t!4440)))) (height!2219 (right!57206 (left!56876 (right!57206 t!4440))))) 1))))

(declare-fun b!7930467 () Bool)

(assert (=> b!7930467 (= e!4679986 e!4679985)))

(declare-fun res!3146671 () Bool)

(assert (=> b!7930467 (=> (not res!3146671) (not e!4679985))))

(assert (=> b!7930467 (= res!3146671 (<= (- 1) (- (height!2219 (left!56876 (left!56876 (right!57206 t!4440)))) (height!2219 (right!57206 (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7930468 () Bool)

(assert (=> b!7930468 (= e!4679985 (not (isEmpty!42779 (right!57206 (left!56876 (right!57206 t!4440))))))))

(assert (= (and d!2369875 (not res!3146667)) b!7930467))

(assert (= (and b!7930467 res!3146671) b!7930466))

(assert (= (and b!7930466 res!3146669) b!7930463))

(assert (= (and b!7930463 res!3146670) b!7930464))

(assert (= (and b!7930464 res!3146672) b!7930465))

(assert (= (and b!7930465 res!3146668) b!7930468))

(declare-fun m!8314994 () Bool)

(assert (=> b!7930468 m!8314994))

(declare-fun m!8314996 () Bool)

(assert (=> b!7930467 m!8314996))

(declare-fun m!8314998 () Bool)

(assert (=> b!7930467 m!8314998))

(declare-fun m!8315000 () Bool)

(assert (=> b!7930464 m!8315000))

(declare-fun m!8315002 () Bool)

(assert (=> b!7930463 m!8315002))

(assert (=> b!7930466 m!8314996))

(assert (=> b!7930466 m!8314998))

(declare-fun m!8315004 () Bool)

(assert (=> b!7930465 m!8315004))

(assert (=> b!7929971 d!2369875))

(declare-fun d!2369877 () Bool)

(assert (=> d!2369877 (= (height!2219 (left!56876 (left!56876 t!4440))) (ite ((_ is Empty!15904) (left!56876 (left!56876 t!4440))) 0 (ite ((_ is Leaf!30237) (left!56876 (left!56876 t!4440))) 1 (cheight!16115 (left!56876 (left!56876 t!4440))))))))

(assert (=> b!7929952 d!2369877))

(declare-fun d!2369879 () Bool)

(assert (=> d!2369879 (= (height!2219 (right!57206 (left!56876 t!4440))) (ite ((_ is Empty!15904) (right!57206 (left!56876 t!4440))) 0 (ite ((_ is Leaf!30237) (right!57206 (left!56876 t!4440))) 1 (cheight!16115 (right!57206 (left!56876 t!4440))))))))

(assert (=> b!7929952 d!2369879))

(declare-fun d!2369881 () Bool)

(assert (=> d!2369881 (= (list!19419 (xs!19294 (right!57206 (right!57206 lt!2693711)))) (innerList!15992 (xs!19294 (right!57206 (right!57206 lt!2693711)))))))

(assert (=> b!7930265 d!2369881))

(declare-fun d!2369883 () Bool)

(declare-fun c!1456534 () Bool)

(assert (=> d!2369883 (= c!1456534 ((_ is Nil!74450) (t!390205 lt!2693769)))))

(declare-fun e!4679987 () (InoxSet T!145818))

(assert (=> d!2369883 (= (content!15785 (t!390205 lt!2693769)) e!4679987)))

(declare-fun b!7930469 () Bool)

(assert (=> b!7930469 (= e!4679987 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930470 () Bool)

(assert (=> b!7930470 (= e!4679987 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693769)) true) (content!15785 (t!390205 (t!390205 lt!2693769)))))))

(assert (= (and d!2369883 c!1456534) b!7930469))

(assert (= (and d!2369883 (not c!1456534)) b!7930470))

(declare-fun m!8315006 () Bool)

(assert (=> b!7930470 m!8315006))

(declare-fun m!8315008 () Bool)

(assert (=> b!7930470 m!8315008))

(assert (=> b!7929805 d!2369883))

(declare-fun d!2369885 () Bool)

(assert (=> d!2369885 (= (isEmpty!42782 (list!19417 (left!56876 t!4440))) ((_ is Nil!74450) (list!19417 (left!56876 t!4440))))))

(assert (=> d!2369503 d!2369885))

(assert (=> d!2369503 d!2369257))

(assert (=> d!2369503 d!2369585))

(declare-fun d!2369887 () Bool)

(declare-fun lt!2694070 () Int)

(assert (=> d!2369887 (>= lt!2694070 0)))

(declare-fun e!4679988 () Int)

(assert (=> d!2369887 (= lt!2694070 e!4679988)))

(declare-fun c!1456535 () Bool)

(assert (=> d!2369887 (= c!1456535 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693717 lt!2693712))))))

(assert (=> d!2369887 (= (size!43253 (t!390205 (++!18261 lt!2693717 lt!2693712))) lt!2694070)))

(declare-fun b!7930471 () Bool)

(assert (=> b!7930471 (= e!4679988 0)))

(declare-fun b!7930472 () Bool)

(assert (=> b!7930472 (= e!4679988 (+ 1 (size!43253 (t!390205 (t!390205 (++!18261 lt!2693717 lt!2693712))))))))

(assert (= (and d!2369887 c!1456535) b!7930471))

(assert (= (and d!2369887 (not c!1456535)) b!7930472))

(declare-fun m!8315010 () Bool)

(assert (=> b!7930472 m!8315010))

(assert (=> b!7929889 d!2369887))

(declare-fun d!2369889 () Bool)

(declare-fun lt!2694071 () Int)

(assert (=> d!2369889 (>= lt!2694071 0)))

(declare-fun e!4679989 () Int)

(assert (=> d!2369889 (= lt!2694071 e!4679989)))

(declare-fun c!1456536 () Bool)

(assert (=> d!2369889 (= c!1456536 ((_ is Nil!74450) (t!390205 lt!2693768)))))

(assert (=> d!2369889 (= (size!43253 (t!390205 lt!2693768)) lt!2694071)))

(declare-fun b!7930473 () Bool)

(assert (=> b!7930473 (= e!4679989 0)))

(declare-fun b!7930474 () Bool)

(assert (=> b!7930474 (= e!4679989 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693768)))))))

(assert (= (and d!2369889 c!1456536) b!7930473))

(assert (= (and d!2369889 (not c!1456536)) b!7930474))

(declare-fun m!8315012 () Bool)

(assert (=> b!7930474 m!8315012))

(assert (=> b!7929944 d!2369889))

(declare-fun d!2369891 () Bool)

(declare-fun e!4679991 () Bool)

(assert (=> d!2369891 e!4679991))

(declare-fun res!3146674 () Bool)

(assert (=> d!2369891 (=> (not res!3146674) (not e!4679991))))

(declare-fun lt!2694072 () List!74574)

(assert (=> d!2369891 (= res!3146674 (= (content!15785 lt!2694072) ((_ map or) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717)))) (content!15785 lt!2693712))))))

(declare-fun e!4679990 () List!74574)

(assert (=> d!2369891 (= lt!2694072 e!4679990)))

(declare-fun c!1456537 () Bool)

(assert (=> d!2369891 (= c!1456537 ((_ is Nil!74450) (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717)))))))

(assert (=> d!2369891 (= (++!18261 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717))) lt!2693712) lt!2694072)))

(declare-fun b!7930476 () Bool)

(assert (=> b!7930476 (= e!4679990 (Cons!74450 (h!80898 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717)))) (++!18261 (t!390205 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717)))) lt!2693712)))))

(declare-fun b!7930475 () Bool)

(assert (=> b!7930475 (= e!4679990 lt!2693712)))

(declare-fun b!7930477 () Bool)

(declare-fun res!3146673 () Bool)

(assert (=> b!7930477 (=> (not res!3146673) (not e!4679991))))

(assert (=> b!7930477 (= res!3146673 (= (size!43253 lt!2694072) (+ (size!43253 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717)))) (size!43253 lt!2693712))))))

(declare-fun b!7930478 () Bool)

(assert (=> b!7930478 (= e!4679991 (or (not (= lt!2693712 Nil!74450)) (= lt!2694072 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717))))))))

(assert (= (and d!2369891 c!1456537) b!7930475))

(assert (= (and d!2369891 (not c!1456537)) b!7930476))

(assert (= (and d!2369891 res!3146674) b!7930477))

(assert (= (and b!7930477 res!3146673) b!7930478))

(declare-fun m!8315014 () Bool)

(assert (=> d!2369891 m!8315014))

(declare-fun m!8315016 () Bool)

(assert (=> d!2369891 m!8315016))

(assert (=> d!2369891 m!8312848))

(declare-fun m!8315018 () Bool)

(assert (=> b!7930476 m!8315018))

(declare-fun m!8315020 () Bool)

(assert (=> b!7930477 m!8315020))

(declare-fun m!8315022 () Bool)

(assert (=> b!7930477 m!8315022))

(assert (=> b!7930477 m!8312856))

(assert (=> b!7930403 d!2369891))

(declare-fun d!2369893 () Bool)

(declare-fun e!4679993 () Bool)

(assert (=> d!2369893 e!4679993))

(declare-fun res!3146676 () Bool)

(assert (=> d!2369893 (=> (not res!3146676) (not e!4679993))))

(declare-fun lt!2694073 () List!74574)

(assert (=> d!2369893 (= res!3146676 (= (content!15785 lt!2694073) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711))))) (content!15785 (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711))))))))))

(declare-fun e!4679992 () List!74574)

(assert (=> d!2369893 (= lt!2694073 e!4679992)))

(declare-fun c!1456538 () Bool)

(assert (=> d!2369893 (= c!1456538 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711))))))))

(assert (=> d!2369893 (= (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711)))) (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711))))) lt!2694073)))

(declare-fun b!7930480 () Bool)

(assert (=> b!7930480 (= e!4679992 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711))))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711))))) (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711)))))))))

(declare-fun b!7930479 () Bool)

(assert (=> b!7930479 (= e!4679992 (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711)))))))

(declare-fun b!7930481 () Bool)

(declare-fun res!3146675 () Bool)

(assert (=> b!7930481 (=> (not res!3146675) (not e!4679993))))

(assert (=> b!7930481 (= res!3146675 (= (size!43253 lt!2694073) (+ (size!43253 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711))))) (size!43253 (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711))))))))))

(declare-fun b!7930482 () Bool)

(assert (=> b!7930482 (= e!4679993 (or (not (= (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711)))) Nil!74450)) (= lt!2694073 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711)))))))))

(assert (= (and d!2369893 c!1456538) b!7930479))

(assert (= (and d!2369893 (not c!1456538)) b!7930480))

(assert (= (and d!2369893 res!3146676) b!7930481))

(assert (= (and b!7930481 res!3146675) b!7930482))

(declare-fun m!8315024 () Bool)

(assert (=> d!2369893 m!8315024))

(assert (=> d!2369893 m!8314954))

(declare-fun m!8315026 () Bool)

(assert (=> d!2369893 m!8315026))

(assert (=> d!2369893 m!8314956))

(declare-fun m!8315028 () Bool)

(assert (=> d!2369893 m!8315028))

(assert (=> b!7930480 m!8314956))

(declare-fun m!8315030 () Bool)

(assert (=> b!7930480 m!8315030))

(declare-fun m!8315032 () Bool)

(assert (=> b!7930481 m!8315032))

(assert (=> b!7930481 m!8314954))

(declare-fun m!8315034 () Bool)

(assert (=> b!7930481 m!8315034))

(assert (=> b!7930481 m!8314956))

(declare-fun m!8315036 () Bool)

(assert (=> b!7930481 m!8315036))

(assert (=> b!7930443 d!2369893))

(declare-fun d!2369895 () Bool)

(declare-fun c!1456539 () Bool)

(assert (=> d!2369895 (= c!1456539 ((_ is Empty!15904) (left!56876 (left!56876 (left!56876 lt!2693711)))))))

(declare-fun e!4679994 () List!74574)

(assert (=> d!2369895 (= (list!19417 (left!56876 (left!56876 (left!56876 lt!2693711)))) e!4679994)))

(declare-fun b!7930483 () Bool)

(assert (=> b!7930483 (= e!4679994 Nil!74450)))

(declare-fun b!7930486 () Bool)

(declare-fun e!4679995 () List!74574)

(assert (=> b!7930486 (= e!4679995 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 (left!56876 lt!2693711))))) (list!19417 (right!57206 (left!56876 (left!56876 (left!56876 lt!2693711)))))))))

(declare-fun b!7930485 () Bool)

(assert (=> b!7930485 (= e!4679995 (list!19419 (xs!19294 (left!56876 (left!56876 (left!56876 lt!2693711))))))))

(declare-fun b!7930484 () Bool)

(assert (=> b!7930484 (= e!4679994 e!4679995)))

(declare-fun c!1456540 () Bool)

(assert (=> b!7930484 (= c!1456540 ((_ is Leaf!30237) (left!56876 (left!56876 (left!56876 lt!2693711)))))))

(assert (= (and d!2369895 c!1456539) b!7930483))

(assert (= (and d!2369895 (not c!1456539)) b!7930484))

(assert (= (and b!7930484 c!1456540) b!7930485))

(assert (= (and b!7930484 (not c!1456540)) b!7930486))

(declare-fun m!8315038 () Bool)

(assert (=> b!7930486 m!8315038))

(declare-fun m!8315040 () Bool)

(assert (=> b!7930486 m!8315040))

(assert (=> b!7930486 m!8315038))

(assert (=> b!7930486 m!8315040))

(declare-fun m!8315042 () Bool)

(assert (=> b!7930486 m!8315042))

(declare-fun m!8315044 () Bool)

(assert (=> b!7930485 m!8315044))

(assert (=> b!7930443 d!2369895))

(declare-fun d!2369897 () Bool)

(declare-fun c!1456541 () Bool)

(assert (=> d!2369897 (= c!1456541 ((_ is Empty!15904) (right!57206 (left!56876 (left!56876 lt!2693711)))))))

(declare-fun e!4679996 () List!74574)

(assert (=> d!2369897 (= (list!19417 (right!57206 (left!56876 (left!56876 lt!2693711)))) e!4679996)))

(declare-fun b!7930487 () Bool)

(assert (=> b!7930487 (= e!4679996 Nil!74450)))

(declare-fun b!7930490 () Bool)

(declare-fun e!4679997 () List!74574)

(assert (=> b!7930490 (= e!4679997 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 (left!56876 lt!2693711))))) (list!19417 (right!57206 (right!57206 (left!56876 (left!56876 lt!2693711)))))))))

(declare-fun b!7930489 () Bool)

(assert (=> b!7930489 (= e!4679997 (list!19419 (xs!19294 (right!57206 (left!56876 (left!56876 lt!2693711))))))))

(declare-fun b!7930488 () Bool)

(assert (=> b!7930488 (= e!4679996 e!4679997)))

(declare-fun c!1456542 () Bool)

(assert (=> b!7930488 (= c!1456542 ((_ is Leaf!30237) (right!57206 (left!56876 (left!56876 lt!2693711)))))))

(assert (= (and d!2369897 c!1456541) b!7930487))

(assert (= (and d!2369897 (not c!1456541)) b!7930488))

(assert (= (and b!7930488 c!1456542) b!7930489))

(assert (= (and b!7930488 (not c!1456542)) b!7930490))

(declare-fun m!8315046 () Bool)

(assert (=> b!7930490 m!8315046))

(declare-fun m!8315048 () Bool)

(assert (=> b!7930490 m!8315048))

(assert (=> b!7930490 m!8315046))

(assert (=> b!7930490 m!8315048))

(declare-fun m!8315050 () Bool)

(assert (=> b!7930490 m!8315050))

(declare-fun m!8315052 () Bool)

(assert (=> b!7930489 m!8315052))

(assert (=> b!7930443 d!2369897))

(declare-fun d!2369899 () Bool)

(declare-fun lt!2694074 () Int)

(assert (=> d!2369899 (>= lt!2694074 0)))

(declare-fun e!4679998 () Int)

(assert (=> d!2369899 (= lt!2694074 e!4679998)))

(declare-fun c!1456543 () Bool)

(assert (=> d!2369899 (= c!1456543 ((_ is Nil!74450) lt!2693948))))

(assert (=> d!2369899 (= (size!43253 lt!2693948) lt!2694074)))

(declare-fun b!7930491 () Bool)

(assert (=> b!7930491 (= e!4679998 0)))

(declare-fun b!7930492 () Bool)

(assert (=> b!7930492 (= e!4679998 (+ 1 (size!43253 (t!390205 lt!2693948))))))

(assert (= (and d!2369899 c!1456543) b!7930491))

(assert (= (and d!2369899 (not c!1456543)) b!7930492))

(declare-fun m!8315054 () Bool)

(assert (=> b!7930492 m!8315054))

(assert (=> b!7930009 d!2369899))

(declare-fun d!2369901 () Bool)

(declare-fun lt!2694075 () Int)

(assert (=> d!2369901 (>= lt!2694075 0)))

(declare-fun e!4679999 () Int)

(assert (=> d!2369901 (= lt!2694075 e!4679999)))

(declare-fun c!1456544 () Bool)

(assert (=> d!2369901 (= c!1456544 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693715))))))

(assert (=> d!2369901 (= (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693715))) lt!2694075)))

(declare-fun b!7930493 () Bool)

(assert (=> b!7930493 (= e!4679999 0)))

(declare-fun b!7930494 () Bool)

(assert (=> b!7930494 (= e!4679999 (+ 1 (size!43253 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715))))))))

(assert (= (and d!2369901 c!1456544) b!7930493))

(assert (= (and d!2369901 (not c!1456544)) b!7930494))

(declare-fun m!8315056 () Bool)

(assert (=> b!7930494 m!8315056))

(assert (=> b!7930009 d!2369901))

(assert (=> b!7930009 d!2369861))

(declare-fun d!2369903 () Bool)

(declare-fun lt!2694076 () Int)

(assert (=> d!2369903 (>= lt!2694076 0)))

(declare-fun e!4680000 () Int)

(assert (=> d!2369903 (= lt!2694076 e!4680000)))

(declare-fun c!1456545 () Bool)

(assert (=> d!2369903 (= c!1456545 ((_ is Nil!74450) lt!2694069))))

(assert (=> d!2369903 (= (size!43253 lt!2694069) lt!2694076)))

(declare-fun b!7930495 () Bool)

(assert (=> b!7930495 (= e!4680000 0)))

(declare-fun b!7930496 () Bool)

(assert (=> b!7930496 (= e!4680000 (+ 1 (size!43253 (t!390205 lt!2694069))))))

(assert (= (and d!2369903 c!1456545) b!7930495))

(assert (= (and d!2369903 (not c!1456545)) b!7930496))

(declare-fun m!8315058 () Bool)

(assert (=> b!7930496 m!8315058))

(assert (=> b!7930438 d!2369903))

(declare-fun d!2369905 () Bool)

(declare-fun lt!2694077 () Int)

(assert (=> d!2369905 (>= lt!2694077 0)))

(declare-fun e!4680001 () Int)

(assert (=> d!2369905 (= lt!2694077 e!4680001)))

(declare-fun c!1456546 () Bool)

(assert (=> d!2369905 (= c!1456546 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 lt!2693711)))))))

(assert (=> d!2369905 (= (size!43253 (list!19417 (left!56876 (left!56876 lt!2693711)))) lt!2694077)))

(declare-fun b!7930497 () Bool)

(assert (=> b!7930497 (= e!4680001 0)))

(declare-fun b!7930498 () Bool)

(assert (=> b!7930498 (= e!4680001 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711)))))))))

(assert (= (and d!2369905 c!1456546) b!7930497))

(assert (= (and d!2369905 (not c!1456546)) b!7930498))

(declare-fun m!8315060 () Bool)

(assert (=> b!7930498 m!8315060))

(assert (=> b!7930438 d!2369905))

(declare-fun d!2369907 () Bool)

(declare-fun lt!2694078 () Int)

(assert (=> d!2369907 (>= lt!2694078 0)))

(declare-fun e!4680002 () Int)

(assert (=> d!2369907 (= lt!2694078 e!4680002)))

(declare-fun c!1456547 () Bool)

(assert (=> d!2369907 (= c!1456547 ((_ is Nil!74450) (list!19417 (right!57206 (left!56876 lt!2693711)))))))

(assert (=> d!2369907 (= (size!43253 (list!19417 (right!57206 (left!56876 lt!2693711)))) lt!2694078)))

(declare-fun b!7930499 () Bool)

(assert (=> b!7930499 (= e!4680002 0)))

(declare-fun b!7930500 () Bool)

(assert (=> b!7930500 (= e!4680002 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(assert (= (and d!2369907 c!1456547) b!7930499))

(assert (= (and d!2369907 (not c!1456547)) b!7930500))

(declare-fun m!8315062 () Bool)

(assert (=> b!7930500 m!8315062))

(assert (=> b!7930438 d!2369907))

(declare-fun d!2369909 () Bool)

(declare-fun c!1456548 () Bool)

(assert (=> d!2369909 (= c!1456548 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693715))))))

(declare-fun e!4680003 () (InoxSet T!145818))

(assert (=> d!2369909 (= (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693715))) e!4680003)))

(declare-fun b!7930501 () Bool)

(assert (=> b!7930501 (= e!4680003 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930502 () Bool)

(assert (=> b!7930502 (= e!4680003 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 (++!18261 lt!2693714 lt!2693715))) true) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715))))))))

(assert (= (and d!2369909 c!1456548) b!7930501))

(assert (= (and d!2369909 (not c!1456548)) b!7930502))

(declare-fun m!8315064 () Bool)

(assert (=> b!7930502 m!8315064))

(declare-fun m!8315066 () Bool)

(assert (=> b!7930502 m!8315066))

(assert (=> b!7929731 d!2369909))

(declare-fun d!2369911 () Bool)

(assert (=> d!2369911 (= (list!19419 (xs!19294 (right!57206 (left!56876 t!4440)))) (innerList!15992 (xs!19294 (right!57206 (left!56876 t!4440)))))))

(assert (=> b!7930111 d!2369911))

(declare-fun d!2369913 () Bool)

(declare-fun c!1456549 () Bool)

(assert (=> d!2369913 (= c!1456549 ((_ is Nil!74450) lt!2693936))))

(declare-fun e!4680004 () (InoxSet T!145818))

(assert (=> d!2369913 (= (content!15785 lt!2693936) e!4680004)))

(declare-fun b!7930503 () Bool)

(assert (=> b!7930503 (= e!4680004 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930504 () Bool)

(assert (=> b!7930504 (= e!4680004 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693936) true) (content!15785 (t!390205 lt!2693936))))))

(assert (= (and d!2369913 c!1456549) b!7930503))

(assert (= (and d!2369913 (not c!1456549)) b!7930504))

(declare-fun m!8315068 () Bool)

(assert (=> b!7930504 m!8315068))

(declare-fun m!8315070 () Bool)

(assert (=> b!7930504 m!8315070))

(assert (=> b!7929941 d!2369913))

(declare-fun d!2369915 () Bool)

(declare-fun c!1456550 () Bool)

(assert (=> d!2369915 (= c!1456550 ((_ is Nil!74450) (t!390205 (list!19417 t!4440))))))

(declare-fun e!4680005 () (InoxSet T!145818))

(assert (=> d!2369915 (= (content!15785 (t!390205 (list!19417 t!4440))) e!4680005)))

(declare-fun b!7930505 () Bool)

(assert (=> b!7930505 (= e!4680005 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930506 () Bool)

(assert (=> b!7930506 (= e!4680005 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 (list!19417 t!4440))) true) (content!15785 (t!390205 (t!390205 (list!19417 t!4440))))))))

(assert (= (and d!2369915 c!1456550) b!7930505))

(assert (= (and d!2369915 (not c!1456550)) b!7930506))

(declare-fun m!8315072 () Bool)

(assert (=> b!7930506 m!8315072))

(declare-fun m!8315074 () Bool)

(assert (=> b!7930506 m!8315074))

(assert (=> b!7929941 d!2369915))

(declare-fun d!2369917 () Bool)

(declare-fun e!4680007 () Bool)

(assert (=> d!2369917 e!4680007))

(declare-fun res!3146678 () Bool)

(assert (=> d!2369917 (=> (not res!3146678) (not e!4680007))))

(declare-fun lt!2694079 () List!74574)

(assert (=> d!2369917 (= res!3146678 (= (content!15785 lt!2694079) ((_ map or) (content!15785 (t!390205 call!735334)) (content!15785 lt!2693866))))))

(declare-fun e!4680006 () List!74574)

(assert (=> d!2369917 (= lt!2694079 e!4680006)))

(declare-fun c!1456551 () Bool)

(assert (=> d!2369917 (= c!1456551 ((_ is Nil!74450) (t!390205 call!735334)))))

(assert (=> d!2369917 (= (++!18261 (t!390205 call!735334) lt!2693866) lt!2694079)))

(declare-fun b!7930508 () Bool)

(assert (=> b!7930508 (= e!4680006 (Cons!74450 (h!80898 (t!390205 call!735334)) (++!18261 (t!390205 (t!390205 call!735334)) lt!2693866)))))

(declare-fun b!7930507 () Bool)

(assert (=> b!7930507 (= e!4680006 lt!2693866)))

(declare-fun b!7930509 () Bool)

(declare-fun res!3146677 () Bool)

(assert (=> b!7930509 (=> (not res!3146677) (not e!4680007))))

(assert (=> b!7930509 (= res!3146677 (= (size!43253 lt!2694079) (+ (size!43253 (t!390205 call!735334)) (size!43253 lt!2693866))))))

(declare-fun b!7930510 () Bool)

(assert (=> b!7930510 (= e!4680007 (or (not (= lt!2693866 Nil!74450)) (= lt!2694079 (t!390205 call!735334))))))

(assert (= (and d!2369917 c!1456551) b!7930507))

(assert (= (and d!2369917 (not c!1456551)) b!7930508))

(assert (= (and d!2369917 res!3146678) b!7930509))

(assert (= (and b!7930509 res!3146677) b!7930510))

(declare-fun m!8315076 () Bool)

(assert (=> d!2369917 m!8315076))

(declare-fun m!8315078 () Bool)

(assert (=> d!2369917 m!8315078))

(assert (=> d!2369917 m!8314862))

(declare-fun m!8315080 () Bool)

(assert (=> b!7930508 m!8315080))

(declare-fun m!8315082 () Bool)

(assert (=> b!7930509 m!8315082))

(declare-fun m!8315084 () Bool)

(assert (=> b!7930509 m!8315084))

(assert (=> b!7930509 m!8314870))

(assert (=> b!7930392 d!2369917))

(declare-fun d!2369919 () Bool)

(assert (=> d!2369919 (= (list!19419 (xs!19294 (right!57206 (left!56876 lt!2693711)))) (innerList!15992 (xs!19294 (right!57206 (left!56876 lt!2693711)))))))

(assert (=> b!7930446 d!2369919))

(declare-fun d!2369921 () Bool)

(declare-fun c!1456552 () Bool)

(assert (=> d!2369921 (= c!1456552 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693717))))))

(declare-fun e!4680008 () (InoxSet T!145818))

(assert (=> d!2369921 (= (content!15785 (t!390205 (++!18261 lt!2693714 lt!2693717))) e!4680008)))

(declare-fun b!7930511 () Bool)

(assert (=> b!7930511 (= e!4680008 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930512 () Bool)

(assert (=> b!7930512 (= e!4680008 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 (++!18261 lt!2693714 lt!2693717))) true) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717))))))))

(assert (= (and d!2369921 c!1456552) b!7930511))

(assert (= (and d!2369921 (not c!1456552)) b!7930512))

(declare-fun m!8315086 () Bool)

(assert (=> b!7930512 m!8315086))

(assert (=> b!7930512 m!8315016))

(assert (=> b!7930197 d!2369921))

(declare-fun d!2369923 () Bool)

(declare-fun lt!2694080 () Int)

(assert (=> d!2369923 (>= lt!2694080 0)))

(declare-fun e!4680009 () Int)

(assert (=> d!2369923 (= lt!2694080 e!4680009)))

(declare-fun c!1456553 () Bool)

(assert (=> d!2369923 (= c!1456553 ((_ is Nil!74450) lt!2693891))))

(assert (=> d!2369923 (= (size!43253 lt!2693891) lt!2694080)))

(declare-fun b!7930513 () Bool)

(assert (=> b!7930513 (= e!4680009 0)))

(declare-fun b!7930514 () Bool)

(assert (=> b!7930514 (= e!4680009 (+ 1 (size!43253 (t!390205 lt!2693891))))))

(assert (= (and d!2369923 c!1456553) b!7930513))

(assert (= (and d!2369923 (not c!1456553)) b!7930514))

(declare-fun m!8315088 () Bool)

(assert (=> b!7930514 m!8315088))

(assert (=> b!7929768 d!2369923))

(declare-fun d!2369925 () Bool)

(declare-fun lt!2694081 () Int)

(assert (=> d!2369925 (>= lt!2694081 0)))

(declare-fun e!4680010 () Int)

(assert (=> d!2369925 (= lt!2694081 e!4680010)))

(declare-fun c!1456554 () Bool)

(assert (=> d!2369925 (= c!1456554 ((_ is Nil!74450) (ite c!1456280 call!735334 lt!2693871)))))

(assert (=> d!2369925 (= (size!43253 (ite c!1456280 call!735334 lt!2693871)) lt!2694081)))

(declare-fun b!7930515 () Bool)

(assert (=> b!7930515 (= e!4680010 0)))

(declare-fun b!7930516 () Bool)

(assert (=> b!7930516 (= e!4680010 (+ 1 (size!43253 (t!390205 (ite c!1456280 call!735334 lt!2693871)))))))

(assert (= (and d!2369925 c!1456554) b!7930515))

(assert (= (and d!2369925 (not c!1456554)) b!7930516))

(declare-fun m!8315090 () Bool)

(assert (=> b!7930516 m!8315090))

(assert (=> b!7929768 d!2369925))

(declare-fun d!2369927 () Bool)

(declare-fun lt!2694082 () Int)

(assert (=> d!2369927 (>= lt!2694082 0)))

(declare-fun e!4680011 () Int)

(assert (=> d!2369927 (= lt!2694082 e!4680011)))

(declare-fun c!1456555 () Bool)

(assert (=> d!2369927 (= c!1456555 ((_ is Nil!74450) (ite c!1456280 lt!2693872 lt!2693864)))))

(assert (=> d!2369927 (= (size!43253 (ite c!1456280 lt!2693872 lt!2693864)) lt!2694082)))

(declare-fun b!7930517 () Bool)

(assert (=> b!7930517 (= e!4680011 0)))

(declare-fun b!7930518 () Bool)

(assert (=> b!7930518 (= e!4680011 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693872 lt!2693864)))))))

(assert (= (and d!2369927 c!1456555) b!7930517))

(assert (= (and d!2369927 (not c!1456555)) b!7930518))

(declare-fun m!8315092 () Bool)

(assert (=> b!7930518 m!8315092))

(assert (=> b!7929768 d!2369927))

(declare-fun d!2369929 () Bool)

(declare-fun e!4680013 () Bool)

(assert (=> d!2369929 e!4680013))

(declare-fun res!3146680 () Bool)

(assert (=> d!2369929 (=> (not res!3146680) (not e!4680013))))

(declare-fun lt!2694083 () List!74574)

(assert (=> d!2369929 (= res!3146680 (= (content!15785 lt!2694083) ((_ map or) (content!15785 (ite c!1456438 lt!2693995 lt!2693999)) (content!15785 (ite c!1456438 lt!2693993 lt!2693997)))))))

(declare-fun e!4680012 () List!74574)

(assert (=> d!2369929 (= lt!2694083 e!4680012)))

(declare-fun c!1456556 () Bool)

(assert (=> d!2369929 (= c!1456556 ((_ is Nil!74450) (ite c!1456438 lt!2693995 lt!2693999)))))

(assert (=> d!2369929 (= (++!18261 (ite c!1456438 lt!2693995 lt!2693999) (ite c!1456438 lt!2693993 lt!2693997)) lt!2694083)))

(declare-fun b!7930520 () Bool)

(assert (=> b!7930520 (= e!4680012 (Cons!74450 (h!80898 (ite c!1456438 lt!2693995 lt!2693999)) (++!18261 (t!390205 (ite c!1456438 lt!2693995 lt!2693999)) (ite c!1456438 lt!2693993 lt!2693997))))))

(declare-fun b!7930519 () Bool)

(assert (=> b!7930519 (= e!4680012 (ite c!1456438 lt!2693993 lt!2693997))))

(declare-fun b!7930521 () Bool)

(declare-fun res!3146679 () Bool)

(assert (=> b!7930521 (=> (not res!3146679) (not e!4680013))))

(assert (=> b!7930521 (= res!3146679 (= (size!43253 lt!2694083) (+ (size!43253 (ite c!1456438 lt!2693995 lt!2693999)) (size!43253 (ite c!1456438 lt!2693993 lt!2693997)))))))

(declare-fun b!7930522 () Bool)

(assert (=> b!7930522 (= e!4680013 (or (not (= (ite c!1456438 lt!2693993 lt!2693997) Nil!74450)) (= lt!2694083 (ite c!1456438 lt!2693995 lt!2693999))))))

(assert (= (and d!2369929 c!1456556) b!7930519))

(assert (= (and d!2369929 (not c!1456556)) b!7930520))

(assert (= (and d!2369929 res!3146680) b!7930521))

(assert (= (and b!7930521 res!3146679) b!7930522))

(declare-fun m!8315094 () Bool)

(assert (=> d!2369929 m!8315094))

(declare-fun m!8315096 () Bool)

(assert (=> d!2369929 m!8315096))

(declare-fun m!8315098 () Bool)

(assert (=> d!2369929 m!8315098))

(declare-fun m!8315100 () Bool)

(assert (=> b!7930520 m!8315100))

(declare-fun m!8315102 () Bool)

(assert (=> b!7930521 m!8315102))

(declare-fun m!8315104 () Bool)

(assert (=> b!7930521 m!8315104))

(declare-fun m!8315106 () Bool)

(assert (=> b!7930521 m!8315106))

(assert (=> bm!735365 d!2369929))

(declare-fun d!2369931 () Bool)

(assert (=> d!2369931 (= (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))) (innerList!15992 (xs!19294 (right!57206 (right!57206 t!4440)))))))

(assert (=> b!7929760 d!2369931))

(declare-fun d!2369933 () Bool)

(assert (=> d!2369933 (= (list!19419 (xs!19294 lt!2693873)) (innerList!15992 (xs!19294 lt!2693873)))))

(assert (=> b!7930292 d!2369933))

(assert (=> d!2369853 d!2369227))

(assert (=> d!2369853 d!2369239))

(assert (=> d!2369853 d!2369237))

(assert (=> d!2369853 d!2369233))

(declare-fun d!2369935 () Bool)

(declare-fun c!1456557 () Bool)

(assert (=> d!2369935 (= c!1456557 ((_ is Nil!74450) lt!2693948))))

(declare-fun e!4680014 () (InoxSet T!145818))

(assert (=> d!2369935 (= (content!15785 lt!2693948) e!4680014)))

(declare-fun b!7930523 () Bool)

(assert (=> b!7930523 (= e!4680014 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930524 () Bool)

(assert (=> b!7930524 (= e!4680014 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693948) true) (content!15785 (t!390205 lt!2693948))))))

(assert (= (and d!2369935 c!1456557) b!7930523))

(assert (= (and d!2369935 (not c!1456557)) b!7930524))

(declare-fun m!8315108 () Bool)

(assert (=> b!7930524 m!8315108))

(declare-fun m!8315110 () Bool)

(assert (=> b!7930524 m!8315110))

(assert (=> d!2369543 d!2369935))

(assert (=> d!2369543 d!2369909))

(assert (=> d!2369543 d!2369361))

(declare-fun d!2369937 () Bool)

(declare-fun lt!2694084 () Int)

(assert (=> d!2369937 (>= lt!2694084 0)))

(declare-fun e!4680015 () Int)

(assert (=> d!2369937 (= lt!2694084 e!4680015)))

(declare-fun c!1456558 () Bool)

(assert (=> d!2369937 (= c!1456558 ((_ is Nil!74450) lt!2694054))))

(assert (=> d!2369937 (= (size!43253 lt!2694054) lt!2694084)))

(declare-fun b!7930525 () Bool)

(assert (=> b!7930525 (= e!4680015 0)))

(declare-fun b!7930526 () Bool)

(assert (=> b!7930526 (= e!4680015 (+ 1 (size!43253 (t!390205 lt!2694054))))))

(assert (= (and d!2369937 c!1456558) b!7930525))

(assert (= (and d!2369937 (not c!1456558)) b!7930526))

(declare-fun m!8315112 () Bool)

(assert (=> b!7930526 m!8315112))

(assert (=> b!7930369 d!2369937))

(declare-fun d!2369939 () Bool)

(declare-fun lt!2694085 () Int)

(assert (=> d!2369939 (>= lt!2694085 0)))

(declare-fun e!4680016 () Int)

(assert (=> d!2369939 (= lt!2694085 e!4680016)))

(declare-fun c!1456559 () Bool)

(assert (=> d!2369939 (= c!1456559 ((_ is Nil!74450) lt!2693865))))

(assert (=> d!2369939 (= (size!43253 lt!2693865) lt!2694085)))

(declare-fun b!7930527 () Bool)

(assert (=> b!7930527 (= e!4680016 0)))

(declare-fun b!7930528 () Bool)

(assert (=> b!7930528 (= e!4680016 (+ 1 (size!43253 (t!390205 lt!2693865))))))

(assert (= (and d!2369939 c!1456559) b!7930527))

(assert (= (and d!2369939 (not c!1456559)) b!7930528))

(declare-fun m!8315114 () Bool)

(assert (=> b!7930528 m!8315114))

(assert (=> b!7930369 d!2369939))

(declare-fun d!2369941 () Bool)

(declare-fun lt!2694086 () Int)

(assert (=> d!2369941 (>= lt!2694086 0)))

(declare-fun e!4680017 () Int)

(assert (=> d!2369941 (= lt!2694086 e!4680017)))

(declare-fun c!1456560 () Bool)

(assert (=> d!2369941 (= c!1456560 ((_ is Nil!74450) call!735339))))

(assert (=> d!2369941 (= (size!43253 call!735339) lt!2694086)))

(declare-fun b!7930529 () Bool)

(assert (=> b!7930529 (= e!4680017 0)))

(declare-fun b!7930530 () Bool)

(assert (=> b!7930530 (= e!4680017 (+ 1 (size!43253 (t!390205 call!735339))))))

(assert (= (and d!2369941 c!1456560) b!7930529))

(assert (= (and d!2369941 (not c!1456560)) b!7930530))

(declare-fun m!8315116 () Bool)

(assert (=> b!7930530 m!8315116))

(assert (=> b!7930369 d!2369941))

(declare-fun d!2369943 () Bool)

(declare-fun c!1456561 () Bool)

(assert (=> d!2369943 (= c!1456561 ((_ is Nil!74450) lt!2694069))))

(declare-fun e!4680018 () (InoxSet T!145818))

(assert (=> d!2369943 (= (content!15785 lt!2694069) e!4680018)))

(declare-fun b!7930531 () Bool)

(assert (=> b!7930531 (= e!4680018 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930532 () Bool)

(assert (=> b!7930532 (= e!4680018 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694069) true) (content!15785 (t!390205 lt!2694069))))))

(assert (= (and d!2369943 c!1456561) b!7930531))

(assert (= (and d!2369943 (not c!1456561)) b!7930532))

(declare-fun m!8315118 () Bool)

(assert (=> b!7930532 m!8315118))

(declare-fun m!8315120 () Bool)

(assert (=> b!7930532 m!8315120))

(assert (=> d!2369869 d!2369943))

(declare-fun d!2369945 () Bool)

(declare-fun c!1456562 () Bool)

(assert (=> d!2369945 (= c!1456562 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 lt!2693711)))))))

(declare-fun e!4680019 () (InoxSet T!145818))

(assert (=> d!2369945 (= (content!15785 (list!19417 (left!56876 (left!56876 lt!2693711)))) e!4680019)))

(declare-fun b!7930533 () Bool)

(assert (=> b!7930533 (= e!4680019 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930534 () Bool)

(assert (=> b!7930534 (= e!4680019 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 (left!56876 lt!2693711)))) true) (content!15785 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711)))))))))

(assert (= (and d!2369945 c!1456562) b!7930533))

(assert (= (and d!2369945 (not c!1456562)) b!7930534))

(declare-fun m!8315122 () Bool)

(assert (=> b!7930534 m!8315122))

(declare-fun m!8315124 () Bool)

(assert (=> b!7930534 m!8315124))

(assert (=> d!2369869 d!2369945))

(declare-fun d!2369947 () Bool)

(declare-fun c!1456563 () Bool)

(assert (=> d!2369947 (= c!1456563 ((_ is Nil!74450) (list!19417 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun e!4680020 () (InoxSet T!145818))

(assert (=> d!2369947 (= (content!15785 (list!19417 (right!57206 (left!56876 lt!2693711)))) e!4680020)))

(declare-fun b!7930535 () Bool)

(assert (=> b!7930535 (= e!4680020 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930536 () Bool)

(assert (=> b!7930536 (= e!4680020 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 (left!56876 lt!2693711)))) true) (content!15785 (t!390205 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(assert (= (and d!2369947 c!1456563) b!7930535))

(assert (= (and d!2369947 (not c!1456563)) b!7930536))

(declare-fun m!8315126 () Bool)

(assert (=> b!7930536 m!8315126))

(declare-fun m!8315128 () Bool)

(assert (=> b!7930536 m!8315128))

(assert (=> d!2369869 d!2369947))

(declare-fun b!7930537 () Bool)

(declare-fun res!3146684 () Bool)

(declare-fun e!4680021 () Bool)

(assert (=> b!7930537 (=> (not res!3146684) (not e!4680021))))

(assert (=> b!7930537 (= res!3146684 (isBalanced!4530 (left!56876 (left!56876 (right!57206 lt!2693719)))))))

(declare-fun d!2369949 () Bool)

(declare-fun res!3146681 () Bool)

(declare-fun e!4680022 () Bool)

(assert (=> d!2369949 (=> res!3146681 e!4680022)))

(assert (=> d!2369949 (= res!3146681 (not ((_ is Node!15904) (left!56876 (right!57206 lt!2693719)))))))

(assert (=> d!2369949 (= (isBalanced!4530 (left!56876 (right!57206 lt!2693719))) e!4680022)))

(declare-fun b!7930538 () Bool)

(declare-fun res!3146686 () Bool)

(assert (=> b!7930538 (=> (not res!3146686) (not e!4680021))))

(assert (=> b!7930538 (= res!3146686 (isBalanced!4530 (right!57206 (left!56876 (right!57206 lt!2693719)))))))

(declare-fun b!7930539 () Bool)

(declare-fun res!3146682 () Bool)

(assert (=> b!7930539 (=> (not res!3146682) (not e!4680021))))

(assert (=> b!7930539 (= res!3146682 (not (isEmpty!42779 (left!56876 (left!56876 (right!57206 lt!2693719))))))))

(declare-fun b!7930540 () Bool)

(declare-fun res!3146683 () Bool)

(assert (=> b!7930540 (=> (not res!3146683) (not e!4680021))))

(assert (=> b!7930540 (= res!3146683 (<= (- (height!2219 (left!56876 (left!56876 (right!57206 lt!2693719)))) (height!2219 (right!57206 (left!56876 (right!57206 lt!2693719))))) 1))))

(declare-fun b!7930541 () Bool)

(assert (=> b!7930541 (= e!4680022 e!4680021)))

(declare-fun res!3146685 () Bool)

(assert (=> b!7930541 (=> (not res!3146685) (not e!4680021))))

(assert (=> b!7930541 (= res!3146685 (<= (- 1) (- (height!2219 (left!56876 (left!56876 (right!57206 lt!2693719)))) (height!2219 (right!57206 (left!56876 (right!57206 lt!2693719)))))))))

(declare-fun b!7930542 () Bool)

(assert (=> b!7930542 (= e!4680021 (not (isEmpty!42779 (right!57206 (left!56876 (right!57206 lt!2693719))))))))

(assert (= (and d!2369949 (not res!3146681)) b!7930541))

(assert (= (and b!7930541 res!3146685) b!7930540))

(assert (= (and b!7930540 res!3146683) b!7930537))

(assert (= (and b!7930537 res!3146684) b!7930538))

(assert (= (and b!7930538 res!3146686) b!7930539))

(assert (= (and b!7930539 res!3146682) b!7930542))

(declare-fun m!8315130 () Bool)

(assert (=> b!7930542 m!8315130))

(declare-fun m!8315132 () Bool)

(assert (=> b!7930541 m!8315132))

(declare-fun m!8315134 () Bool)

(assert (=> b!7930541 m!8315134))

(declare-fun m!8315136 () Bool)

(assert (=> b!7930538 m!8315136))

(declare-fun m!8315138 () Bool)

(assert (=> b!7930537 m!8315138))

(assert (=> b!7930540 m!8315132))

(assert (=> b!7930540 m!8315134))

(declare-fun m!8315140 () Bool)

(assert (=> b!7930539 m!8315140))

(assert (=> b!7929985 d!2369949))

(declare-fun d!2369951 () Bool)

(assert (=> d!2369951 (= (inv!95731 (xs!19294 (right!57206 (right!57206 t!4440)))) (<= (size!43253 (innerList!15992 (xs!19294 (right!57206 (right!57206 t!4440))))) 2147483647))))

(declare-fun bs!1968963 () Bool)

(assert (= bs!1968963 d!2369951))

(declare-fun m!8315142 () Bool)

(assert (=> bs!1968963 m!8315142))

(assert (=> b!7930453 d!2369951))

(declare-fun d!2369953 () Bool)

(declare-fun lt!2694087 () Int)

(assert (=> d!2369953 (>= lt!2694087 0)))

(declare-fun e!4680023 () Int)

(assert (=> d!2369953 (= lt!2694087 e!4680023)))

(declare-fun c!1456564 () Bool)

(assert (=> d!2369953 (= c!1456564 ((_ is Nil!74450) lt!2693902))))

(assert (=> d!2369953 (= (size!43253 lt!2693902) lt!2694087)))

(declare-fun b!7930543 () Bool)

(assert (=> b!7930543 (= e!4680023 0)))

(declare-fun b!7930544 () Bool)

(assert (=> b!7930544 (= e!4680023 (+ 1 (size!43253 (t!390205 lt!2693902))))))

(assert (= (and d!2369953 c!1456564) b!7930543))

(assert (= (and d!2369953 (not c!1456564)) b!7930544))

(declare-fun m!8315144 () Bool)

(assert (=> b!7930544 m!8315144))

(assert (=> b!7929840 d!2369953))

(declare-fun d!2369955 () Bool)

(declare-fun lt!2694088 () Int)

(assert (=> d!2369955 (>= lt!2694088 0)))

(declare-fun e!4680024 () Int)

(assert (=> d!2369955 (= lt!2694088 e!4680024)))

(declare-fun c!1456565 () Bool)

(assert (=> d!2369955 (= c!1456565 ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(assert (=> d!2369955 (= (size!43253 (list!19417 (right!57206 t!4440))) lt!2694088)))

(declare-fun b!7930545 () Bool)

(assert (=> b!7930545 (= e!4680024 0)))

(declare-fun b!7930546 () Bool)

(assert (=> b!7930546 (= e!4680024 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 t!4440))))))))

(assert (= (and d!2369955 c!1456565) b!7930545))

(assert (= (and d!2369955 (not c!1456565)) b!7930546))

(declare-fun m!8315146 () Bool)

(assert (=> b!7930546 m!8315146))

(assert (=> b!7929840 d!2369955))

(declare-fun d!2369957 () Bool)

(declare-fun lt!2694089 () (_ BitVec 32))

(assert (=> d!2369957 (and (bvsle #b00000000000000000000000000000000 lt!2694089) (bvsle lt!2694089 #b01111111111111111111111111111111))))

(declare-fun e!4680025 () (_ BitVec 32))

(assert (=> d!2369957 (= lt!2694089 e!4680025)))

(declare-fun c!1456566 () Bool)

(assert (=> d!2369957 (= c!1456566 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 t!4440)))))))

(assert (=> d!2369957 (= (isize!121 (list!19419 (xs!19294 (right!57206 t!4440)))) lt!2694089)))

(declare-fun b!7930547 () Bool)

(assert (=> b!7930547 (= e!4680025 #b00000000000000000000000000000000)))

(declare-fun b!7930548 () Bool)

(declare-fun lt!2694090 () (_ BitVec 32))

(assert (=> b!7930548 (= e!4680025 (ite (= lt!2694090 #b01111111111111111111111111111111) lt!2694090 (bvadd #b00000000000000000000000000000001 lt!2694090)))))

(assert (=> b!7930548 (= lt!2694090 (isize!121 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(assert (= (and d!2369957 c!1456566) b!7930547))

(assert (= (and d!2369957 (not c!1456566)) b!7930548))

(declare-fun m!8315148 () Bool)

(assert (=> b!7930548 m!8315148))

(assert (=> b!7930325 d!2369957))

(declare-fun d!2369959 () Bool)

(declare-fun lt!2694091 () Bool)

(assert (=> d!2369959 (= lt!2694091 (isEmpty!42782 (list!19417 (right!57206 lt!2693867))))))

(assert (=> d!2369959 (= lt!2694091 (= (size!43255 (right!57206 lt!2693867)) 0))))

(assert (=> d!2369959 (= (isEmpty!42779 (right!57206 lt!2693867)) lt!2694091)))

(declare-fun bs!1968964 () Bool)

(assert (= bs!1968964 d!2369959))

(assert (=> bs!1968964 m!8313688))

(assert (=> bs!1968964 m!8313688))

(declare-fun m!8315150 () Bool)

(assert (=> bs!1968964 m!8315150))

(declare-fun m!8315152 () Bool)

(assert (=> bs!1968964 m!8315152))

(assert (=> b!7929964 d!2369959))

(declare-fun d!2369961 () Bool)

(declare-fun c!1456567 () Bool)

(assert (=> d!2369961 (= c!1456567 ((_ is Nil!74450) lt!2693970))))

(declare-fun e!4680026 () (InoxSet T!145818))

(assert (=> d!2369961 (= (content!15785 lt!2693970) e!4680026)))

(declare-fun b!7930549 () Bool)

(assert (=> b!7930549 (= e!4680026 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930550 () Bool)

(assert (=> b!7930550 (= e!4680026 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693970) true) (content!15785 (t!390205 lt!2693970))))))

(assert (= (and d!2369961 c!1456567) b!7930549))

(assert (= (and d!2369961 (not c!1456567)) b!7930550))

(declare-fun m!8315154 () Bool)

(assert (=> b!7930550 m!8315154))

(declare-fun m!8315156 () Bool)

(assert (=> b!7930550 m!8315156))

(assert (=> d!2369629 d!2369961))

(declare-fun d!2369963 () Bool)

(declare-fun c!1456568 () Bool)

(assert (=> d!2369963 (= c!1456568 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 t!4440)))))))

(declare-fun e!4680027 () (InoxSet T!145818))

(assert (=> d!2369963 (= (content!15785 (list!19417 (left!56876 (left!56876 t!4440)))) e!4680027)))

(declare-fun b!7930551 () Bool)

(assert (=> b!7930551 (= e!4680027 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930552 () Bool)

(assert (=> b!7930552 (= e!4680027 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 (left!56876 t!4440)))) true) (content!15785 (t!390205 (list!19417 (left!56876 (left!56876 t!4440)))))))))

(assert (= (and d!2369963 c!1456568) b!7930551))

(assert (= (and d!2369963 (not c!1456568)) b!7930552))

(declare-fun m!8315158 () Bool)

(assert (=> b!7930552 m!8315158))

(declare-fun m!8315160 () Bool)

(assert (=> b!7930552 m!8315160))

(assert (=> d!2369629 d!2369963))

(declare-fun d!2369965 () Bool)

(declare-fun c!1456569 () Bool)

(assert (=> d!2369965 (= c!1456569 ((_ is Nil!74450) (list!19417 (right!57206 (left!56876 t!4440)))))))

(declare-fun e!4680028 () (InoxSet T!145818))

(assert (=> d!2369965 (= (content!15785 (list!19417 (right!57206 (left!56876 t!4440)))) e!4680028)))

(declare-fun b!7930553 () Bool)

(assert (=> b!7930553 (= e!4680028 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930554 () Bool)

(assert (=> b!7930554 (= e!4680028 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 (left!56876 t!4440)))) true) (content!15785 (t!390205 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(assert (= (and d!2369965 c!1456569) b!7930553))

(assert (= (and d!2369965 (not c!1456569)) b!7930554))

(declare-fun m!8315162 () Bool)

(assert (=> b!7930554 m!8315162))

(declare-fun m!8315164 () Bool)

(assert (=> b!7930554 m!8315164))

(assert (=> d!2369629 d!2369965))

(declare-fun d!2369967 () Bool)

(assert (=> d!2369967 (= (list!19419 (xs!19294 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) (innerList!15992 (xs!19294 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(assert (=> b!7930017 d!2369967))

(declare-fun d!2369969 () Bool)

(declare-fun e!4680030 () Bool)

(assert (=> d!2369969 e!4680030))

(declare-fun res!3146688 () Bool)

(assert (=> d!2369969 (=> (not res!3146688) (not e!4680030))))

(declare-fun lt!2694092 () List!74574)

(assert (=> d!2369969 (= res!3146688 (= (content!15785 lt!2694092) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711))))) (content!15785 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun e!4680029 () List!74574)

(assert (=> d!2369969 (= lt!2694092 e!4680029)))

(declare-fun c!1456570 () Bool)

(assert (=> d!2369969 (= c!1456570 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711))))))))

(assert (=> d!2369969 (= (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711)))) (list!19417 (right!57206 (right!57206 lt!2693711)))) lt!2694092)))

(declare-fun b!7930556 () Bool)

(assert (=> b!7930556 (= e!4680029 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711))))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711))))) (list!19417 (right!57206 (right!57206 lt!2693711))))))))

(declare-fun b!7930555 () Bool)

(assert (=> b!7930555 (= e!4680029 (list!19417 (right!57206 (right!57206 lt!2693711))))))

(declare-fun b!7930557 () Bool)

(declare-fun res!3146687 () Bool)

(assert (=> b!7930557 (=> (not res!3146687) (not e!4680030))))

(assert (=> b!7930557 (= res!3146687 (= (size!43253 lt!2694092) (+ (size!43253 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711))))) (size!43253 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun b!7930558 () Bool)

(assert (=> b!7930558 (= e!4680030 (or (not (= (list!19417 (right!57206 (right!57206 lt!2693711))) Nil!74450)) (= lt!2694092 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711)))))))))

(assert (= (and d!2369969 c!1456570) b!7930555))

(assert (= (and d!2369969 (not c!1456570)) b!7930556))

(assert (= (and d!2369969 res!3146688) b!7930557))

(assert (= (and b!7930557 res!3146687) b!7930558))

(declare-fun m!8315166 () Bool)

(assert (=> d!2369969 m!8315166))

(declare-fun m!8315168 () Bool)

(assert (=> d!2369969 m!8315168))

(assert (=> d!2369969 m!8312874))

(assert (=> d!2369969 m!8314540))

(assert (=> b!7930556 m!8312874))

(declare-fun m!8315170 () Bool)

(assert (=> b!7930556 m!8315170))

(declare-fun m!8315172 () Bool)

(assert (=> b!7930557 m!8315172))

(declare-fun m!8315174 () Bool)

(assert (=> b!7930557 m!8315174))

(assert (=> b!7930557 m!8312874))

(assert (=> b!7930557 m!8314548))

(assert (=> b!7930248 d!2369969))

(declare-fun b!7930559 () Bool)

(declare-fun res!3146692 () Bool)

(declare-fun e!4680031 () Bool)

(assert (=> b!7930559 (=> (not res!3146692) (not e!4680031))))

(assert (=> b!7930559 (= res!3146692 (isBalanced!4530 (left!56876 (right!57206 (right!57206 t!4440)))))))

(declare-fun d!2369971 () Bool)

(declare-fun res!3146689 () Bool)

(declare-fun e!4680032 () Bool)

(assert (=> d!2369971 (=> res!3146689 e!4680032)))

(assert (=> d!2369971 (= res!3146689 (not ((_ is Node!15904) (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2369971 (= (isBalanced!4530 (right!57206 (right!57206 t!4440))) e!4680032)))

(declare-fun b!7930560 () Bool)

(declare-fun res!3146694 () Bool)

(assert (=> b!7930560 (=> (not res!3146694) (not e!4680031))))

(assert (=> b!7930560 (= res!3146694 (isBalanced!4530 (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7930561 () Bool)

(declare-fun res!3146690 () Bool)

(assert (=> b!7930561 (=> (not res!3146690) (not e!4680031))))

(assert (=> b!7930561 (= res!3146690 (not (isEmpty!42779 (left!56876 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7930562 () Bool)

(declare-fun res!3146691 () Bool)

(assert (=> b!7930562 (=> (not res!3146691) (not e!4680031))))

(assert (=> b!7930562 (= res!3146691 (<= (- (height!2219 (left!56876 (right!57206 (right!57206 t!4440)))) (height!2219 (right!57206 (right!57206 (right!57206 t!4440))))) 1))))

(declare-fun b!7930563 () Bool)

(assert (=> b!7930563 (= e!4680032 e!4680031)))

(declare-fun res!3146693 () Bool)

(assert (=> b!7930563 (=> (not res!3146693) (not e!4680031))))

(assert (=> b!7930563 (= res!3146693 (<= (- 1) (- (height!2219 (left!56876 (right!57206 (right!57206 t!4440)))) (height!2219 (right!57206 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7930564 () Bool)

(assert (=> b!7930564 (= e!4680031 (not (isEmpty!42779 (right!57206 (right!57206 (right!57206 t!4440))))))))

(assert (= (and d!2369971 (not res!3146689)) b!7930563))

(assert (= (and b!7930563 res!3146693) b!7930562))

(assert (= (and b!7930562 res!3146691) b!7930559))

(assert (= (and b!7930559 res!3146692) b!7930560))

(assert (= (and b!7930560 res!3146694) b!7930561))

(assert (= (and b!7930561 res!3146690) b!7930564))

(declare-fun m!8315176 () Bool)

(assert (=> b!7930564 m!8315176))

(assert (=> b!7930563 m!8314340))

(declare-fun m!8315178 () Bool)

(assert (=> b!7930563 m!8315178))

(declare-fun m!8315180 () Bool)

(assert (=> b!7930560 m!8315180))

(declare-fun m!8315182 () Bool)

(assert (=> b!7930559 m!8315182))

(assert (=> b!7930562 m!8314340))

(assert (=> b!7930562 m!8315178))

(declare-fun m!8315184 () Bool)

(assert (=> b!7930561 m!8315184))

(assert (=> b!7929972 d!2369971))

(declare-fun d!2369973 () Bool)

(declare-fun c!1456571 () Bool)

(assert (=> d!2369973 (= c!1456571 ((_ is Node!15904) (left!56876 (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4680033 () Bool)

(assert (=> d!2369973 (= (inv!95730 (left!56876 (left!56876 (right!57206 t!4440)))) e!4680033)))

(declare-fun b!7930565 () Bool)

(assert (=> b!7930565 (= e!4680033 (inv!95732 (left!56876 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7930566 () Bool)

(declare-fun e!4680034 () Bool)

(assert (=> b!7930566 (= e!4680033 e!4680034)))

(declare-fun res!3146695 () Bool)

(assert (=> b!7930566 (= res!3146695 (not ((_ is Leaf!30237) (left!56876 (left!56876 (right!57206 t!4440))))))))

(assert (=> b!7930566 (=> res!3146695 e!4680034)))

(declare-fun b!7930567 () Bool)

(assert (=> b!7930567 (= e!4680034 (inv!95733 (left!56876 (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2369973 c!1456571) b!7930565))

(assert (= (and d!2369973 (not c!1456571)) b!7930566))

(assert (= (and b!7930566 (not res!3146695)) b!7930567))

(declare-fun m!8315186 () Bool)

(assert (=> b!7930565 m!8315186))

(declare-fun m!8315188 () Bool)

(assert (=> b!7930567 m!8315188))

(assert (=> b!7930449 d!2369973))

(declare-fun d!2369975 () Bool)

(declare-fun c!1456572 () Bool)

(assert (=> d!2369975 (= c!1456572 ((_ is Node!15904) (right!57206 (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4680035 () Bool)

(assert (=> d!2369975 (= (inv!95730 (right!57206 (left!56876 (right!57206 t!4440)))) e!4680035)))

(declare-fun b!7930568 () Bool)

(assert (=> b!7930568 (= e!4680035 (inv!95732 (right!57206 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7930569 () Bool)

(declare-fun e!4680036 () Bool)

(assert (=> b!7930569 (= e!4680035 e!4680036)))

(declare-fun res!3146696 () Bool)

(assert (=> b!7930569 (= res!3146696 (not ((_ is Leaf!30237) (right!57206 (left!56876 (right!57206 t!4440))))))))

(assert (=> b!7930569 (=> res!3146696 e!4680036)))

(declare-fun b!7930570 () Bool)

(assert (=> b!7930570 (= e!4680036 (inv!95733 (right!57206 (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2369975 c!1456572) b!7930568))

(assert (= (and d!2369975 (not c!1456572)) b!7930569))

(assert (= (and b!7930569 (not res!3146696)) b!7930570))

(declare-fun m!8315190 () Bool)

(assert (=> b!7930568 m!8315190))

(declare-fun m!8315192 () Bool)

(assert (=> b!7930570 m!8315192))

(assert (=> b!7930449 d!2369975))

(declare-fun d!2369977 () Bool)

(declare-fun e!4680038 () Bool)

(assert (=> d!2369977 e!4680038))

(declare-fun res!3146698 () Bool)

(assert (=> d!2369977 (=> (not res!3146698) (not e!4680038))))

(declare-fun lt!2694093 () List!74574)

(assert (=> d!2369977 (= res!3146698 (= (content!15785 lt!2694093) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711))))) (content!15785 (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711))))))))))

(declare-fun e!4680037 () List!74574)

(assert (=> d!2369977 (= lt!2694093 e!4680037)))

(declare-fun c!1456573 () Bool)

(assert (=> d!2369977 (= c!1456573 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711))))))))

(assert (=> d!2369977 (= (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711)))) (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711))))) lt!2694093)))

(declare-fun b!7930572 () Bool)

(assert (=> b!7930572 (= e!4680037 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711))))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711))))) (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun b!7930571 () Bool)

(assert (=> b!7930571 (= e!4680037 (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun b!7930573 () Bool)

(declare-fun res!3146697 () Bool)

(assert (=> b!7930573 (=> (not res!3146697) (not e!4680038))))

(assert (=> b!7930573 (= res!3146697 (= (size!43253 lt!2694093) (+ (size!43253 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711))))) (size!43253 (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711))))))))))

(declare-fun b!7930574 () Bool)

(assert (=> b!7930574 (= e!4680038 (or (not (= (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711)))) Nil!74450)) (= lt!2694093 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711)))))))))

(assert (= (and d!2369977 c!1456573) b!7930571))

(assert (= (and d!2369977 (not c!1456573)) b!7930572))

(assert (= (and d!2369977 res!3146698) b!7930573))

(assert (= (and b!7930573 res!3146697) b!7930574))

(declare-fun m!8315194 () Bool)

(assert (=> d!2369977 m!8315194))

(assert (=> d!2369977 m!8314568))

(declare-fun m!8315196 () Bool)

(assert (=> d!2369977 m!8315196))

(assert (=> d!2369977 m!8314572))

(declare-fun m!8315198 () Bool)

(assert (=> d!2369977 m!8315198))

(assert (=> b!7930572 m!8314572))

(declare-fun m!8315200 () Bool)

(assert (=> b!7930572 m!8315200))

(declare-fun m!8315202 () Bool)

(assert (=> b!7930573 m!8315202))

(assert (=> b!7930573 m!8314568))

(declare-fun m!8315204 () Bool)

(assert (=> b!7930573 m!8315204))

(assert (=> b!7930573 m!8314572))

(declare-fun m!8315206 () Bool)

(assert (=> b!7930573 m!8315206))

(assert (=> b!7930266 d!2369977))

(declare-fun d!2369979 () Bool)

(declare-fun c!1456574 () Bool)

(assert (=> d!2369979 (= c!1456574 ((_ is Empty!15904) (left!56876 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun e!4680039 () List!74574)

(assert (=> d!2369979 (= (list!19417 (left!56876 (right!57206 (right!57206 lt!2693711)))) e!4680039)))

(declare-fun b!7930575 () Bool)

(assert (=> b!7930575 (= e!4680039 Nil!74450)))

(declare-fun b!7930578 () Bool)

(declare-fun e!4680040 () List!74574)

(assert (=> b!7930578 (= e!4680040 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 (right!57206 lt!2693711))))) (list!19417 (right!57206 (left!56876 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun b!7930577 () Bool)

(assert (=> b!7930577 (= e!4680040 (list!19419 (xs!19294 (left!56876 (right!57206 (right!57206 lt!2693711))))))))

(declare-fun b!7930576 () Bool)

(assert (=> b!7930576 (= e!4680039 e!4680040)))

(declare-fun c!1456575 () Bool)

(assert (=> b!7930576 (= c!1456575 ((_ is Leaf!30237) (left!56876 (right!57206 (right!57206 lt!2693711)))))))

(assert (= (and d!2369979 c!1456574) b!7930575))

(assert (= (and d!2369979 (not c!1456574)) b!7930576))

(assert (= (and b!7930576 c!1456575) b!7930577))

(assert (= (and b!7930576 (not c!1456575)) b!7930578))

(declare-fun m!8315208 () Bool)

(assert (=> b!7930578 m!8315208))

(declare-fun m!8315210 () Bool)

(assert (=> b!7930578 m!8315210))

(assert (=> b!7930578 m!8315208))

(assert (=> b!7930578 m!8315210))

(declare-fun m!8315212 () Bool)

(assert (=> b!7930578 m!8315212))

(declare-fun m!8315214 () Bool)

(assert (=> b!7930577 m!8315214))

(assert (=> b!7930266 d!2369979))

(declare-fun d!2369981 () Bool)

(declare-fun c!1456576 () Bool)

(assert (=> d!2369981 (= c!1456576 ((_ is Empty!15904) (right!57206 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun e!4680041 () List!74574)

(assert (=> d!2369981 (= (list!19417 (right!57206 (right!57206 (right!57206 lt!2693711)))) e!4680041)))

(declare-fun b!7930579 () Bool)

(assert (=> b!7930579 (= e!4680041 Nil!74450)))

(declare-fun b!7930582 () Bool)

(declare-fun e!4680042 () List!74574)

(assert (=> b!7930582 (= e!4680042 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 (right!57206 lt!2693711))))) (list!19417 (right!57206 (right!57206 (right!57206 (right!57206 lt!2693711)))))))))

(declare-fun b!7930581 () Bool)

(assert (=> b!7930581 (= e!4680042 (list!19419 (xs!19294 (right!57206 (right!57206 (right!57206 lt!2693711))))))))

(declare-fun b!7930580 () Bool)

(assert (=> b!7930580 (= e!4680041 e!4680042)))

(declare-fun c!1456577 () Bool)

(assert (=> b!7930580 (= c!1456577 ((_ is Leaf!30237) (right!57206 (right!57206 (right!57206 lt!2693711)))))))

(assert (= (and d!2369981 c!1456576) b!7930579))

(assert (= (and d!2369981 (not c!1456576)) b!7930580))

(assert (= (and b!7930580 c!1456577) b!7930581))

(assert (= (and b!7930580 (not c!1456577)) b!7930582))

(declare-fun m!8315216 () Bool)

(assert (=> b!7930582 m!8315216))

(declare-fun m!8315218 () Bool)

(assert (=> b!7930582 m!8315218))

(assert (=> b!7930582 m!8315216))

(assert (=> b!7930582 m!8315218))

(declare-fun m!8315220 () Bool)

(assert (=> b!7930582 m!8315220))

(declare-fun m!8315222 () Bool)

(assert (=> b!7930581 m!8315222))

(assert (=> b!7930266 d!2369981))

(assert (=> b!7929953 d!2369877))

(assert (=> b!7929953 d!2369879))

(declare-fun d!2369983 () Bool)

(declare-fun c!1456578 () Bool)

(assert (=> d!2369983 (= c!1456578 ((_ is Node!15904) (left!56876 (right!57206 (left!56876 t!4440)))))))

(declare-fun e!4680043 () Bool)

(assert (=> d!2369983 (= (inv!95730 (left!56876 (right!57206 (left!56876 t!4440)))) e!4680043)))

(declare-fun b!7930583 () Bool)

(assert (=> b!7930583 (= e!4680043 (inv!95732 (left!56876 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7930584 () Bool)

(declare-fun e!4680044 () Bool)

(assert (=> b!7930584 (= e!4680043 e!4680044)))

(declare-fun res!3146699 () Bool)

(assert (=> b!7930584 (= res!3146699 (not ((_ is Leaf!30237) (left!56876 (right!57206 (left!56876 t!4440))))))))

(assert (=> b!7930584 (=> res!3146699 e!4680044)))

(declare-fun b!7930585 () Bool)

(assert (=> b!7930585 (= e!4680044 (inv!95733 (left!56876 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2369983 c!1456578) b!7930583))

(assert (= (and d!2369983 (not c!1456578)) b!7930584))

(assert (= (and b!7930584 (not res!3146699)) b!7930585))

(declare-fun m!8315224 () Bool)

(assert (=> b!7930583 m!8315224))

(declare-fun m!8315226 () Bool)

(assert (=> b!7930585 m!8315226))

(assert (=> b!7930458 d!2369983))

(declare-fun d!2369985 () Bool)

(declare-fun c!1456579 () Bool)

(assert (=> d!2369985 (= c!1456579 ((_ is Node!15904) (right!57206 (right!57206 (left!56876 t!4440)))))))

(declare-fun e!4680045 () Bool)

(assert (=> d!2369985 (= (inv!95730 (right!57206 (right!57206 (left!56876 t!4440)))) e!4680045)))

(declare-fun b!7930586 () Bool)

(assert (=> b!7930586 (= e!4680045 (inv!95732 (right!57206 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7930587 () Bool)

(declare-fun e!4680046 () Bool)

(assert (=> b!7930587 (= e!4680045 e!4680046)))

(declare-fun res!3146700 () Bool)

(assert (=> b!7930587 (= res!3146700 (not ((_ is Leaf!30237) (right!57206 (right!57206 (left!56876 t!4440))))))))

(assert (=> b!7930587 (=> res!3146700 e!4680046)))

(declare-fun b!7930588 () Bool)

(assert (=> b!7930588 (= e!4680046 (inv!95733 (right!57206 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2369985 c!1456579) b!7930586))

(assert (= (and d!2369985 (not c!1456579)) b!7930587))

(assert (= (and b!7930587 (not res!3146700)) b!7930588))

(declare-fun m!8315228 () Bool)

(assert (=> b!7930586 m!8315228))

(declare-fun m!8315230 () Bool)

(assert (=> b!7930588 m!8315230))

(assert (=> b!7930458 d!2369985))

(declare-fun d!2369987 () Bool)

(declare-fun lt!2694094 () Int)

(assert (=> d!2369987 (>= lt!2694094 0)))

(declare-fun e!4680047 () Int)

(assert (=> d!2369987 (= lt!2694094 e!4680047)))

(declare-fun c!1456580 () Bool)

(assert (=> d!2369987 (= c!1456580 ((_ is Nil!74450) lt!2694059))))

(assert (=> d!2369987 (= (size!43253 lt!2694059) lt!2694094)))

(declare-fun b!7930589 () Bool)

(assert (=> b!7930589 (= e!4680047 0)))

(declare-fun b!7930590 () Bool)

(assert (=> b!7930590 (= e!4680047 (+ 1 (size!43253 (t!390205 lt!2694059))))))

(assert (= (and d!2369987 c!1456580) b!7930589))

(assert (= (and d!2369987 (not c!1456580)) b!7930590))

(declare-fun m!8315232 () Bool)

(assert (=> b!7930590 m!8315232))

(assert (=> b!7930404 d!2369987))

(declare-fun d!2369989 () Bool)

(declare-fun lt!2694095 () Int)

(assert (=> d!2369989 (>= lt!2694095 0)))

(declare-fun e!4680048 () Int)

(assert (=> d!2369989 (= lt!2694095 e!4680048)))

(declare-fun c!1456581 () Bool)

(assert (=> d!2369989 (= c!1456581 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693714 lt!2693717))))))

(assert (=> d!2369989 (= (size!43253 (t!390205 (++!18261 lt!2693714 lt!2693717))) lt!2694095)))

(declare-fun b!7930591 () Bool)

(assert (=> b!7930591 (= e!4680048 0)))

(declare-fun b!7930592 () Bool)

(assert (=> b!7930592 (= e!4680048 (+ 1 (size!43253 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693717))))))))

(assert (= (and d!2369989 c!1456581) b!7930591))

(assert (= (and d!2369989 (not c!1456581)) b!7930592))

(assert (=> b!7930592 m!8315022))

(assert (=> b!7930404 d!2369989))

(assert (=> b!7930404 d!2369499))

(declare-fun d!2369991 () Bool)

(declare-fun c!1456582 () Bool)

(assert (=> d!2369991 (= c!1456582 ((_ is Nil!74450) (t!390205 lt!2693790)))))

(declare-fun e!4680049 () (InoxSet T!145818))

(assert (=> d!2369991 (= (content!15785 (t!390205 lt!2693790)) e!4680049)))

(declare-fun b!7930593 () Bool)

(assert (=> b!7930593 (= e!4680049 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930594 () Bool)

(assert (=> b!7930594 (= e!4680049 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693790)) true) (content!15785 (t!390205 (t!390205 lt!2693790)))))))

(assert (= (and d!2369991 c!1456582) b!7930593))

(assert (= (and d!2369991 (not c!1456582)) b!7930594))

(declare-fun m!8315234 () Bool)

(assert (=> b!7930594 m!8315234))

(declare-fun m!8315236 () Bool)

(assert (=> b!7930594 m!8315236))

(assert (=> b!7930152 d!2369991))

(declare-fun d!2369993 () Bool)

(assert (=> d!2369993 (= (list!19419 (xs!19294 (right!57206 lt!2693858))) (innerList!15992 (xs!19294 (right!57206 lt!2693858))))))

(assert (=> b!7930385 d!2369993))

(declare-fun d!2369995 () Bool)

(declare-fun e!4680051 () Bool)

(assert (=> d!2369995 e!4680051))

(declare-fun res!3146702 () Bool)

(assert (=> d!2369995 (=> (not res!3146702) (not e!4680051))))

(declare-fun lt!2694096 () List!74574)

(assert (=> d!2369995 (= res!3146702 (= (content!15785 lt!2694096) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 (left!56876 t!4440))))) (content!15785 (list!19417 (right!57206 (right!57206 (left!56876 t!4440))))))))))

(declare-fun e!4680050 () List!74574)

(assert (=> d!2369995 (= lt!2694096 e!4680050)))

(declare-fun c!1456583 () Bool)

(assert (=> d!2369995 (= c!1456583 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 (left!56876 t!4440))))))))

(assert (=> d!2369995 (= (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 t!4440)))) (list!19417 (right!57206 (right!57206 (left!56876 t!4440))))) lt!2694096)))

(declare-fun b!7930596 () Bool)

(assert (=> b!7930596 (= e!4680050 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 (left!56876 t!4440))))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 (left!56876 t!4440))))) (list!19417 (right!57206 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7930595 () Bool)

(assert (=> b!7930595 (= e!4680050 (list!19417 (right!57206 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7930597 () Bool)

(declare-fun res!3146701 () Bool)

(assert (=> b!7930597 (=> (not res!3146701) (not e!4680051))))

(assert (=> b!7930597 (= res!3146701 (= (size!43253 lt!2694096) (+ (size!43253 (list!19417 (left!56876 (right!57206 (left!56876 t!4440))))) (size!43253 (list!19417 (right!57206 (right!57206 (left!56876 t!4440))))))))))

(declare-fun b!7930598 () Bool)

(assert (=> b!7930598 (= e!4680051 (or (not (= (list!19417 (right!57206 (right!57206 (left!56876 t!4440)))) Nil!74450)) (= lt!2694096 (list!19417 (left!56876 (right!57206 (left!56876 t!4440)))))))))

(assert (= (and d!2369995 c!1456583) b!7930595))

(assert (= (and d!2369995 (not c!1456583)) b!7930596))

(assert (= (and d!2369995 res!3146702) b!7930597))

(assert (= (and b!7930597 res!3146701) b!7930598))

(declare-fun m!8315238 () Bool)

(assert (=> d!2369995 m!8315238))

(assert (=> d!2369995 m!8314252))

(declare-fun m!8315240 () Bool)

(assert (=> d!2369995 m!8315240))

(assert (=> d!2369995 m!8314254))

(declare-fun m!8315242 () Bool)

(assert (=> d!2369995 m!8315242))

(assert (=> b!7930596 m!8314254))

(declare-fun m!8315244 () Bool)

(assert (=> b!7930596 m!8315244))

(declare-fun m!8315246 () Bool)

(assert (=> b!7930597 m!8315246))

(assert (=> b!7930597 m!8314252))

(declare-fun m!8315248 () Bool)

(assert (=> b!7930597 m!8315248))

(assert (=> b!7930597 m!8314254))

(declare-fun m!8315250 () Bool)

(assert (=> b!7930597 m!8315250))

(assert (=> b!7930112 d!2369995))

(declare-fun d!2369997 () Bool)

(declare-fun c!1456584 () Bool)

(assert (=> d!2369997 (= c!1456584 ((_ is Empty!15904) (left!56876 (right!57206 (left!56876 t!4440)))))))

(declare-fun e!4680052 () List!74574)

(assert (=> d!2369997 (= (list!19417 (left!56876 (right!57206 (left!56876 t!4440)))) e!4680052)))

(declare-fun b!7930599 () Bool)

(assert (=> b!7930599 (= e!4680052 Nil!74450)))

(declare-fun b!7930602 () Bool)

(declare-fun e!4680053 () List!74574)

(assert (=> b!7930602 (= e!4680053 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 (left!56876 t!4440))))) (list!19417 (right!57206 (left!56876 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7930601 () Bool)

(assert (=> b!7930601 (= e!4680053 (list!19419 (xs!19294 (left!56876 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7930600 () Bool)

(assert (=> b!7930600 (= e!4680052 e!4680053)))

(declare-fun c!1456585 () Bool)

(assert (=> b!7930600 (= c!1456585 ((_ is Leaf!30237) (left!56876 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2369997 c!1456584) b!7930599))

(assert (= (and d!2369997 (not c!1456584)) b!7930600))

(assert (= (and b!7930600 c!1456585) b!7930601))

(assert (= (and b!7930600 (not c!1456585)) b!7930602))

(declare-fun m!8315252 () Bool)

(assert (=> b!7930602 m!8315252))

(declare-fun m!8315254 () Bool)

(assert (=> b!7930602 m!8315254))

(assert (=> b!7930602 m!8315252))

(assert (=> b!7930602 m!8315254))

(declare-fun m!8315256 () Bool)

(assert (=> b!7930602 m!8315256))

(declare-fun m!8315258 () Bool)

(assert (=> b!7930601 m!8315258))

(assert (=> b!7930112 d!2369997))

(declare-fun d!2369999 () Bool)

(declare-fun c!1456586 () Bool)

(assert (=> d!2369999 (= c!1456586 ((_ is Empty!15904) (right!57206 (right!57206 (left!56876 t!4440)))))))

(declare-fun e!4680054 () List!74574)

(assert (=> d!2369999 (= (list!19417 (right!57206 (right!57206 (left!56876 t!4440)))) e!4680054)))

(declare-fun b!7930603 () Bool)

(assert (=> b!7930603 (= e!4680054 Nil!74450)))

(declare-fun b!7930606 () Bool)

(declare-fun e!4680055 () List!74574)

(assert (=> b!7930606 (= e!4680055 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 (left!56876 t!4440))))) (list!19417 (right!57206 (right!57206 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7930605 () Bool)

(assert (=> b!7930605 (= e!4680055 (list!19419 (xs!19294 (right!57206 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7930604 () Bool)

(assert (=> b!7930604 (= e!4680054 e!4680055)))

(declare-fun c!1456587 () Bool)

(assert (=> b!7930604 (= c!1456587 ((_ is Leaf!30237) (right!57206 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2369999 c!1456586) b!7930603))

(assert (= (and d!2369999 (not c!1456586)) b!7930604))

(assert (= (and b!7930604 c!1456587) b!7930605))

(assert (= (and b!7930604 (not c!1456587)) b!7930606))

(declare-fun m!8315260 () Bool)

(assert (=> b!7930606 m!8315260))

(declare-fun m!8315262 () Bool)

(assert (=> b!7930606 m!8315262))

(assert (=> b!7930606 m!8315260))

(assert (=> b!7930606 m!8315262))

(declare-fun m!8315264 () Bool)

(assert (=> b!7930606 m!8315264))

(declare-fun m!8315266 () Bool)

(assert (=> b!7930605 m!8315266))

(assert (=> b!7930112 d!2369999))

(declare-fun d!2370001 () Bool)

(declare-fun e!4680057 () Bool)

(assert (=> d!2370001 e!4680057))

(declare-fun res!3146704 () Bool)

(assert (=> d!2370001 (=> (not res!3146704) (not e!4680057))))

(declare-fun lt!2694097 () List!74574)

(assert (=> d!2370001 (= res!3146704 (= (content!15785 lt!2694097) ((_ map or) (content!15785 (t!390205 (list!19417 lt!2693713))) (content!15785 (list!19417 (right!57206 lt!2693711))))))))

(declare-fun e!4680056 () List!74574)

(assert (=> d!2370001 (= lt!2694097 e!4680056)))

(declare-fun c!1456588 () Bool)

(assert (=> d!2370001 (= c!1456588 ((_ is Nil!74450) (t!390205 (list!19417 lt!2693713))))))

(assert (=> d!2370001 (= (++!18261 (t!390205 (list!19417 lt!2693713)) (list!19417 (right!57206 lt!2693711))) lt!2694097)))

(declare-fun b!7930608 () Bool)

(assert (=> b!7930608 (= e!4680056 (Cons!74450 (h!80898 (t!390205 (list!19417 lt!2693713))) (++!18261 (t!390205 (t!390205 (list!19417 lt!2693713))) (list!19417 (right!57206 lt!2693711)))))))

(declare-fun b!7930607 () Bool)

(assert (=> b!7930607 (= e!4680056 (list!19417 (right!57206 lt!2693711)))))

(declare-fun b!7930609 () Bool)

(declare-fun res!3146703 () Bool)

(assert (=> b!7930609 (=> (not res!3146703) (not e!4680057))))

(assert (=> b!7930609 (= res!3146703 (= (size!43253 lt!2694097) (+ (size!43253 (t!390205 (list!19417 lt!2693713))) (size!43253 (list!19417 (right!57206 lt!2693711))))))))

(declare-fun b!7930610 () Bool)

(assert (=> b!7930610 (= e!4680057 (or (not (= (list!19417 (right!57206 lt!2693711)) Nil!74450)) (= lt!2694097 (t!390205 (list!19417 lt!2693713)))))))

(assert (= (and d!2370001 c!1456588) b!7930607))

(assert (= (and d!2370001 (not c!1456588)) b!7930608))

(assert (= (and d!2370001 res!3146704) b!7930609))

(assert (= (and b!7930609 res!3146703) b!7930610))

(declare-fun m!8315268 () Bool)

(assert (=> d!2370001 m!8315268))

(declare-fun m!8315270 () Bool)

(assert (=> d!2370001 m!8315270))

(assert (=> d!2370001 m!8312794))

(assert (=> d!2370001 m!8314446))

(assert (=> b!7930608 m!8312794))

(declare-fun m!8315272 () Bool)

(assert (=> b!7930608 m!8315272))

(declare-fun m!8315274 () Bool)

(assert (=> b!7930609 m!8315274))

(declare-fun m!8315276 () Bool)

(assert (=> b!7930609 m!8315276))

(assert (=> b!7930609 m!8312794))

(assert (=> b!7930609 m!8314454))

(assert (=> b!7930211 d!2370001))

(declare-fun d!2370003 () Bool)

(declare-fun e!4680059 () Bool)

(assert (=> d!2370003 e!4680059))

(declare-fun res!3146706 () Bool)

(assert (=> d!2370003 (=> (not res!3146706) (not e!4680059))))

(declare-fun lt!2694098 () List!74574)

(assert (=> d!2370003 (= res!3146706 (= (content!15785 lt!2694098) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711))))) (content!15785 (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711))))))))))

(declare-fun e!4680058 () List!74574)

(assert (=> d!2370003 (= lt!2694098 e!4680058)))

(declare-fun c!1456589 () Bool)

(assert (=> d!2370003 (= c!1456589 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711))))))))

(assert (=> d!2370003 (= (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711)))) (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711))))) lt!2694098)))

(declare-fun b!7930612 () Bool)

(assert (=> b!7930612 (= e!4680058 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711))))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711))))) (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun b!7930611 () Bool)

(assert (=> b!7930611 (= e!4680058 (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun b!7930613 () Bool)

(declare-fun res!3146705 () Bool)

(assert (=> b!7930613 (=> (not res!3146705) (not e!4680059))))

(assert (=> b!7930613 (= res!3146705 (= (size!43253 lt!2694098) (+ (size!43253 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711))))) (size!43253 (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711))))))))))

(declare-fun b!7930614 () Bool)

(assert (=> b!7930614 (= e!4680059 (or (not (= (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711)))) Nil!74450)) (= lt!2694098 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711)))))))))

(assert (= (and d!2370003 c!1456589) b!7930611))

(assert (= (and d!2370003 (not c!1456589)) b!7930612))

(assert (= (and d!2370003 res!3146706) b!7930613))

(assert (= (and b!7930613 res!3146705) b!7930614))

(declare-fun m!8315278 () Bool)

(assert (=> d!2370003 m!8315278))

(assert (=> d!2370003 m!8314962))

(declare-fun m!8315280 () Bool)

(assert (=> d!2370003 m!8315280))

(assert (=> d!2370003 m!8314964))

(declare-fun m!8315282 () Bool)

(assert (=> d!2370003 m!8315282))

(assert (=> b!7930612 m!8314964))

(declare-fun m!8315284 () Bool)

(assert (=> b!7930612 m!8315284))

(declare-fun m!8315286 () Bool)

(assert (=> b!7930613 m!8315286))

(assert (=> b!7930613 m!8314962))

(declare-fun m!8315288 () Bool)

(assert (=> b!7930613 m!8315288))

(assert (=> b!7930613 m!8314964))

(declare-fun m!8315290 () Bool)

(assert (=> b!7930613 m!8315290))

(assert (=> b!7930447 d!2370003))

(declare-fun d!2370005 () Bool)

(declare-fun c!1456590 () Bool)

(assert (=> d!2370005 (= c!1456590 ((_ is Empty!15904) (left!56876 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun e!4680060 () List!74574)

(assert (=> d!2370005 (= (list!19417 (left!56876 (right!57206 (left!56876 lt!2693711)))) e!4680060)))

(declare-fun b!7930615 () Bool)

(assert (=> b!7930615 (= e!4680060 Nil!74450)))

(declare-fun b!7930618 () Bool)

(declare-fun e!4680061 () List!74574)

(assert (=> b!7930618 (= e!4680061 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 (left!56876 lt!2693711))))) (list!19417 (right!57206 (left!56876 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun b!7930617 () Bool)

(assert (=> b!7930617 (= e!4680061 (list!19419 (xs!19294 (left!56876 (right!57206 (left!56876 lt!2693711))))))))

(declare-fun b!7930616 () Bool)

(assert (=> b!7930616 (= e!4680060 e!4680061)))

(declare-fun c!1456591 () Bool)

(assert (=> b!7930616 (= c!1456591 ((_ is Leaf!30237) (left!56876 (right!57206 (left!56876 lt!2693711)))))))

(assert (= (and d!2370005 c!1456590) b!7930615))

(assert (= (and d!2370005 (not c!1456590)) b!7930616))

(assert (= (and b!7930616 c!1456591) b!7930617))

(assert (= (and b!7930616 (not c!1456591)) b!7930618))

(declare-fun m!8315292 () Bool)

(assert (=> b!7930618 m!8315292))

(declare-fun m!8315294 () Bool)

(assert (=> b!7930618 m!8315294))

(assert (=> b!7930618 m!8315292))

(assert (=> b!7930618 m!8315294))

(declare-fun m!8315296 () Bool)

(assert (=> b!7930618 m!8315296))

(declare-fun m!8315298 () Bool)

(assert (=> b!7930617 m!8315298))

(assert (=> b!7930447 d!2370005))

(declare-fun d!2370007 () Bool)

(declare-fun c!1456592 () Bool)

(assert (=> d!2370007 (= c!1456592 ((_ is Empty!15904) (right!57206 (right!57206 (left!56876 lt!2693711)))))))

(declare-fun e!4680062 () List!74574)

(assert (=> d!2370007 (= (list!19417 (right!57206 (right!57206 (left!56876 lt!2693711)))) e!4680062)))

(declare-fun b!7930619 () Bool)

(assert (=> b!7930619 (= e!4680062 Nil!74450)))

(declare-fun b!7930622 () Bool)

(declare-fun e!4680063 () List!74574)

(assert (=> b!7930622 (= e!4680063 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 (left!56876 lt!2693711))))) (list!19417 (right!57206 (right!57206 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun b!7930621 () Bool)

(assert (=> b!7930621 (= e!4680063 (list!19419 (xs!19294 (right!57206 (right!57206 (left!56876 lt!2693711))))))))

(declare-fun b!7930620 () Bool)

(assert (=> b!7930620 (= e!4680062 e!4680063)))

(declare-fun c!1456593 () Bool)

(assert (=> b!7930620 (= c!1456593 ((_ is Leaf!30237) (right!57206 (right!57206 (left!56876 lt!2693711)))))))

(assert (= (and d!2370007 c!1456592) b!7930619))

(assert (= (and d!2370007 (not c!1456592)) b!7930620))

(assert (= (and b!7930620 c!1456593) b!7930621))

(assert (= (and b!7930620 (not c!1456593)) b!7930622))

(declare-fun m!8315300 () Bool)

(assert (=> b!7930622 m!8315300))

(declare-fun m!8315302 () Bool)

(assert (=> b!7930622 m!8315302))

(assert (=> b!7930622 m!8315300))

(assert (=> b!7930622 m!8315302))

(declare-fun m!8315304 () Bool)

(assert (=> b!7930622 m!8315304))

(declare-fun m!8315306 () Bool)

(assert (=> b!7930621 m!8315306))

(assert (=> b!7930447 d!2370007))

(declare-fun d!2370009 () Bool)

(declare-fun lt!2694099 () (_ BitVec 32))

(assert (=> d!2370009 (and (bvsle #b00000000000000000000000000000000 lt!2694099) (bvsle lt!2694099 #b01111111111111111111111111111111))))

(declare-fun e!4680064 () (_ BitVec 32))

(assert (=> d!2370009 (= lt!2694099 e!4680064)))

(declare-fun c!1456594 () Bool)

(assert (=> d!2370009 (= c!1456594 ((_ is Nil!74450) lt!2693936))))

(assert (=> d!2370009 (= (isize!121 lt!2693936) lt!2694099)))

(declare-fun b!7930623 () Bool)

(assert (=> b!7930623 (= e!4680064 #b00000000000000000000000000000000)))

(declare-fun b!7930624 () Bool)

(declare-fun lt!2694100 () (_ BitVec 32))

(assert (=> b!7930624 (= e!4680064 (ite (= lt!2694100 #b01111111111111111111111111111111) lt!2694100 (bvadd #b00000000000000000000000000000001 lt!2694100)))))

(assert (=> b!7930624 (= lt!2694100 (isize!121 (t!390205 lt!2693936)))))

(assert (= (and d!2370009 c!1456594) b!7930623))

(assert (= (and d!2370009 (not c!1456594)) b!7930624))

(declare-fun m!8315308 () Bool)

(assert (=> b!7930624 m!8315308))

(assert (=> bm!735353 d!2370009))

(declare-fun d!2370011 () Bool)

(declare-fun lt!2694101 () Int)

(assert (=> d!2370011 (>= lt!2694101 0)))

(declare-fun e!4680065 () Int)

(assert (=> d!2370011 (= lt!2694101 e!4680065)))

(declare-fun c!1456595 () Bool)

(assert (=> d!2370011 (= c!1456595 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(assert (=> d!2370011 (= (size!43253 (t!390205 lt!2693714)) lt!2694101)))

(declare-fun b!7930625 () Bool)

(assert (=> b!7930625 (= e!4680065 0)))

(declare-fun b!7930626 () Bool)

(assert (=> b!7930626 (= e!4680065 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370011 c!1456595) b!7930625))

(assert (= (and d!2370011 (not c!1456595)) b!7930626))

(declare-fun m!8315310 () Bool)

(assert (=> b!7930626 m!8315310))

(assert (=> b!7929887 d!2370011))

(declare-fun d!2370013 () Bool)

(declare-fun lt!2694102 () Int)

(assert (=> d!2370013 (>= lt!2694102 0)))

(declare-fun e!4680066 () Int)

(assert (=> d!2370013 (= lt!2694102 e!4680066)))

(declare-fun c!1456596 () Bool)

(assert (=> d!2370013 (= c!1456596 ((_ is Nil!74450) (list!19419 (xs!19294 t!4440))))))

(assert (=> d!2370013 (= (size!43253 (list!19419 (xs!19294 t!4440))) lt!2694102)))

(declare-fun b!7930627 () Bool)

(assert (=> b!7930627 (= e!4680066 0)))

(declare-fun b!7930628 () Bool)

(assert (=> b!7930628 (= e!4680066 (+ 1 (size!43253 (t!390205 (list!19419 (xs!19294 t!4440))))))))

(assert (= (and d!2370013 c!1456596) b!7930627))

(assert (= (and d!2370013 (not c!1456596)) b!7930628))

(declare-fun m!8315312 () Bool)

(assert (=> b!7930628 m!8315312))

(assert (=> b!7930129 d!2370013))

(assert (=> b!7930129 d!2369405))

(declare-fun d!2370015 () Bool)

(declare-fun lt!2694103 () Int)

(assert (=> d!2370015 (>= lt!2694103 0)))

(declare-fun e!4680067 () Int)

(assert (=> d!2370015 (= lt!2694103 e!4680067)))

(declare-fun c!1456597 () Bool)

(assert (=> d!2370015 (= c!1456597 ((_ is Nil!74450) (t!390205 lt!2693712)))))

(assert (=> d!2370015 (= (size!43253 (t!390205 lt!2693712)) lt!2694103)))

(declare-fun b!7930629 () Bool)

(assert (=> b!7930629 (= e!4680067 0)))

(declare-fun b!7930630 () Bool)

(assert (=> b!7930630 (= e!4680067 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693712)))))))

(assert (= (and d!2370015 c!1456597) b!7930629))

(assert (= (and d!2370015 (not c!1456597)) b!7930630))

(declare-fun m!8315314 () Bool)

(assert (=> b!7930630 m!8315314))

(assert (=> b!7929948 d!2370015))

(declare-fun d!2370017 () Bool)

(declare-fun lt!2694104 () Int)

(assert (=> d!2370017 (>= lt!2694104 0)))

(declare-fun e!4680068 () Int)

(assert (=> d!2370017 (= lt!2694104 e!4680068)))

(declare-fun c!1456598 () Bool)

(assert (=> d!2370017 (= c!1456598 ((_ is Nil!74450) lt!2694057))))

(assert (=> d!2370017 (= (size!43253 lt!2694057) lt!2694104)))

(declare-fun b!7930631 () Bool)

(assert (=> b!7930631 (= e!4680068 0)))

(declare-fun b!7930632 () Bool)

(assert (=> b!7930632 (= e!4680068 (+ 1 (size!43253 (t!390205 lt!2694057))))))

(assert (= (and d!2370017 c!1456598) b!7930631))

(assert (= (and d!2370017 (not c!1456598)) b!7930632))

(declare-fun m!8315316 () Bool)

(assert (=> b!7930632 m!8315316))

(assert (=> b!7930393 d!2370017))

(declare-fun d!2370019 () Bool)

(declare-fun lt!2694105 () Int)

(assert (=> d!2370019 (>= lt!2694105 0)))

(declare-fun e!4680069 () Int)

(assert (=> d!2370019 (= lt!2694105 e!4680069)))

(declare-fun c!1456599 () Bool)

(assert (=> d!2370019 (= c!1456599 ((_ is Nil!74450) call!735334))))

(assert (=> d!2370019 (= (size!43253 call!735334) lt!2694105)))

(declare-fun b!7930633 () Bool)

(assert (=> b!7930633 (= e!4680069 0)))

(declare-fun b!7930634 () Bool)

(assert (=> b!7930634 (= e!4680069 (+ 1 (size!43253 (t!390205 call!735334))))))

(assert (= (and d!2370019 c!1456599) b!7930633))

(assert (= (and d!2370019 (not c!1456599)) b!7930634))

(assert (=> b!7930634 m!8315084))

(assert (=> b!7930393 d!2370019))

(declare-fun d!2370021 () Bool)

(declare-fun lt!2694106 () Int)

(assert (=> d!2370021 (>= lt!2694106 0)))

(declare-fun e!4680070 () Int)

(assert (=> d!2370021 (= lt!2694106 e!4680070)))

(declare-fun c!1456600 () Bool)

(assert (=> d!2370021 (= c!1456600 ((_ is Nil!74450) lt!2693866))))

(assert (=> d!2370021 (= (size!43253 lt!2693866) lt!2694106)))

(declare-fun b!7930635 () Bool)

(assert (=> b!7930635 (= e!4680070 0)))

(declare-fun b!7930636 () Bool)

(assert (=> b!7930636 (= e!4680070 (+ 1 (size!43253 (t!390205 lt!2693866))))))

(assert (= (and d!2370021 c!1456600) b!7930635))

(assert (= (and d!2370021 (not c!1456600)) b!7930636))

(declare-fun m!8315318 () Bool)

(assert (=> b!7930636 m!8315318))

(assert (=> b!7930393 d!2370021))

(declare-fun d!2370023 () Bool)

(declare-fun c!1456601 () Bool)

(assert (=> d!2370023 (= c!1456601 ((_ is Nil!74450) lt!2694054))))

(declare-fun e!4680071 () (InoxSet T!145818))

(assert (=> d!2370023 (= (content!15785 lt!2694054) e!4680071)))

(declare-fun b!7930637 () Bool)

(assert (=> b!7930637 (= e!4680071 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930638 () Bool)

(assert (=> b!7930638 (= e!4680071 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694054) true) (content!15785 (t!390205 lt!2694054))))))

(assert (= (and d!2370023 c!1456601) b!7930637))

(assert (= (and d!2370023 (not c!1456601)) b!7930638))

(declare-fun m!8315320 () Bool)

(assert (=> b!7930638 m!8315320))

(declare-fun m!8315322 () Bool)

(assert (=> b!7930638 m!8315322))

(assert (=> d!2369829 d!2370023))

(declare-fun d!2370025 () Bool)

(declare-fun c!1456602 () Bool)

(assert (=> d!2370025 (= c!1456602 ((_ is Nil!74450) lt!2693865))))

(declare-fun e!4680072 () (InoxSet T!145818))

(assert (=> d!2370025 (= (content!15785 lt!2693865) e!4680072)))

(declare-fun b!7930639 () Bool)

(assert (=> b!7930639 (= e!4680072 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930640 () Bool)

(assert (=> b!7930640 (= e!4680072 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693865) true) (content!15785 (t!390205 lt!2693865))))))

(assert (= (and d!2370025 c!1456602) b!7930639))

(assert (= (and d!2370025 (not c!1456602)) b!7930640))

(declare-fun m!8315324 () Bool)

(assert (=> b!7930640 m!8315324))

(declare-fun m!8315326 () Bool)

(assert (=> b!7930640 m!8315326))

(assert (=> d!2369829 d!2370025))

(declare-fun d!2370027 () Bool)

(declare-fun c!1456603 () Bool)

(assert (=> d!2370027 (= c!1456603 ((_ is Nil!74450) call!735339))))

(declare-fun e!4680073 () (InoxSet T!145818))

(assert (=> d!2370027 (= (content!15785 call!735339) e!4680073)))

(declare-fun b!7930641 () Bool)

(assert (=> b!7930641 (= e!4680073 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930642 () Bool)

(assert (=> b!7930642 (= e!4680073 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 call!735339) true) (content!15785 (t!390205 call!735339))))))

(assert (= (and d!2370027 c!1456603) b!7930641))

(assert (= (and d!2370027 (not c!1456603)) b!7930642))

(declare-fun m!8315328 () Bool)

(assert (=> b!7930642 m!8315328))

(declare-fun m!8315330 () Bool)

(assert (=> b!7930642 m!8315330))

(assert (=> d!2369829 d!2370027))

(declare-fun d!2370029 () Bool)

(declare-fun c!1456604 () Bool)

(assert (=> d!2370029 (= c!1456604 ((_ is Nil!74450) lt!2694052))))

(declare-fun e!4680074 () (InoxSet T!145818))

(assert (=> d!2370029 (= (content!15785 lt!2694052) e!4680074)))

(declare-fun b!7930643 () Bool)

(assert (=> b!7930643 (= e!4680074 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930644 () Bool)

(assert (=> b!7930644 (= e!4680074 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694052) true) (content!15785 (t!390205 lt!2694052))))))

(assert (= (and d!2370029 c!1456604) b!7930643))

(assert (= (and d!2370029 (not c!1456604)) b!7930644))

(declare-fun m!8315332 () Bool)

(assert (=> b!7930644 m!8315332))

(declare-fun m!8315334 () Bool)

(assert (=> b!7930644 m!8315334))

(assert (=> d!2369825 d!2370029))

(declare-fun d!2370031 () Bool)

(declare-fun c!1456605 () Bool)

(assert (=> d!2370031 (= c!1456605 ((_ is Nil!74450) lt!2693860))))

(declare-fun e!4680075 () (InoxSet T!145818))

(assert (=> d!2370031 (= (content!15785 lt!2693860) e!4680075)))

(declare-fun b!7930645 () Bool)

(assert (=> b!7930645 (= e!4680075 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930646 () Bool)

(assert (=> b!7930646 (= e!4680075 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693860) true) (content!15785 (t!390205 lt!2693860))))))

(assert (= (and d!2370031 c!1456605) b!7930645))

(assert (= (and d!2370031 (not c!1456605)) b!7930646))

(declare-fun m!8315336 () Bool)

(assert (=> b!7930646 m!8315336))

(declare-fun m!8315338 () Bool)

(assert (=> b!7930646 m!8315338))

(assert (=> d!2369825 d!2370031))

(declare-fun d!2370033 () Bool)

(declare-fun c!1456606 () Bool)

(assert (=> d!2370033 (= c!1456606 ((_ is Nil!74450) call!735338))))

(declare-fun e!4680076 () (InoxSet T!145818))

(assert (=> d!2370033 (= (content!15785 call!735338) e!4680076)))

(declare-fun b!7930647 () Bool)

(assert (=> b!7930647 (= e!4680076 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930648 () Bool)

(assert (=> b!7930648 (= e!4680076 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 call!735338) true) (content!15785 (t!390205 call!735338))))))

(assert (= (and d!2370033 c!1456606) b!7930647))

(assert (= (and d!2370033 (not c!1456606)) b!7930648))

(declare-fun m!8315340 () Bool)

(assert (=> b!7930648 m!8315340))

(declare-fun m!8315342 () Bool)

(assert (=> b!7930648 m!8315342))

(assert (=> d!2369825 d!2370033))

(declare-fun d!2370035 () Bool)

(declare-fun e!4680078 () Bool)

(assert (=> d!2370035 e!4680078))

(declare-fun res!3146708 () Bool)

(assert (=> d!2370035 (=> (not res!3146708) (not e!4680078))))

(declare-fun lt!2694107 () List!74574)

(assert (=> d!2370035 (= res!3146708 (= (content!15785 lt!2694107) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693714))) (content!15785 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun e!4680077 () List!74574)

(assert (=> d!2370035 (= lt!2694107 e!4680077)))

(declare-fun c!1456607 () Bool)

(assert (=> d!2370035 (= c!1456607 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693714))))))

(assert (=> d!2370035 (= (++!18261 (t!390205 (t!390205 lt!2693714)) (++!18261 lt!2693715 lt!2693721)) lt!2694107)))

(declare-fun b!7930650 () Bool)

(assert (=> b!7930650 (= e!4680077 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693714))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693714))) (++!18261 lt!2693715 lt!2693721))))))

(declare-fun b!7930649 () Bool)

(assert (=> b!7930649 (= e!4680077 (++!18261 lt!2693715 lt!2693721))))

(declare-fun b!7930651 () Bool)

(declare-fun res!3146707 () Bool)

(assert (=> b!7930651 (=> (not res!3146707) (not e!4680078))))

(assert (=> b!7930651 (= res!3146707 (= (size!43253 lt!2694107) (+ (size!43253 (t!390205 (t!390205 lt!2693714))) (size!43253 (++!18261 lt!2693715 lt!2693721)))))))

(declare-fun b!7930652 () Bool)

(assert (=> b!7930652 (= e!4680078 (or (not (= (++!18261 lt!2693715 lt!2693721) Nil!74450)) (= lt!2694107 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370035 c!1456607) b!7930649))

(assert (= (and d!2370035 (not c!1456607)) b!7930650))

(assert (= (and d!2370035 res!3146708) b!7930651))

(assert (= (and b!7930651 res!3146707) b!7930652))

(declare-fun m!8315344 () Bool)

(assert (=> d!2370035 m!8315344))

(declare-fun m!8315346 () Bool)

(assert (=> d!2370035 m!8315346))

(assert (=> d!2370035 m!8312814))

(assert (=> d!2370035 m!8312924))

(assert (=> b!7930650 m!8312814))

(declare-fun m!8315348 () Bool)

(assert (=> b!7930650 m!8315348))

(declare-fun m!8315350 () Bool)

(assert (=> b!7930651 m!8315350))

(assert (=> b!7930651 m!8315310))

(assert (=> b!7930651 m!8312814))

(assert (=> b!7930651 m!8312930))

(assert (=> b!7929775 d!2370035))

(declare-fun d!2370037 () Bool)

(assert (=> d!2370037 (= (list!19419 (xs!19294 (left!56876 lt!2693719))) (innerList!15992 (xs!19294 (left!56876 lt!2693719))))))

(assert (=> b!7929822 d!2370037))

(declare-fun d!2370039 () Bool)

(declare-fun e!4680080 () Bool)

(assert (=> d!2370039 e!4680080))

(declare-fun res!3146710 () Bool)

(assert (=> d!2370039 (=> (not res!3146710) (not e!4680080))))

(declare-fun lt!2694108 () List!74574)

(assert (=> d!2370039 (= res!3146710 (= (content!15785 lt!2694108) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 (right!57206 t!4440))))) (content!15785 (list!19417 (right!57206 (right!57206 (right!57206 t!4440))))))))))

(declare-fun e!4680079 () List!74574)

(assert (=> d!2370039 (= lt!2694108 e!4680079)))

(declare-fun c!1456608 () Bool)

(assert (=> d!2370039 (= c!1456608 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 (right!57206 t!4440))))))))

(assert (=> d!2370039 (= (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 t!4440)))) (list!19417 (right!57206 (right!57206 (right!57206 t!4440))))) lt!2694108)))

(declare-fun b!7930654 () Bool)

(assert (=> b!7930654 (= e!4680079 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 (right!57206 t!4440))))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 (right!57206 t!4440))))) (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7930653 () Bool)

(assert (=> b!7930653 (= e!4680079 (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7930655 () Bool)

(declare-fun res!3146709 () Bool)

(assert (=> b!7930655 (=> (not res!3146709) (not e!4680080))))

(assert (=> b!7930655 (= res!3146709 (= (size!43253 lt!2694108) (+ (size!43253 (list!19417 (left!56876 (right!57206 (right!57206 t!4440))))) (size!43253 (list!19417 (right!57206 (right!57206 (right!57206 t!4440))))))))))

(declare-fun b!7930656 () Bool)

(assert (=> b!7930656 (= e!4680080 (or (not (= (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))) Nil!74450)) (= lt!2694108 (list!19417 (left!56876 (right!57206 (right!57206 t!4440)))))))))

(assert (= (and d!2370039 c!1456608) b!7930653))

(assert (= (and d!2370039 (not c!1456608)) b!7930654))

(assert (= (and d!2370039 res!3146710) b!7930655))

(assert (= (and b!7930655 res!3146709) b!7930656))

(declare-fun m!8315352 () Bool)

(assert (=> d!2370039 m!8315352))

(assert (=> d!2370039 m!8313500))

(declare-fun m!8315354 () Bool)

(assert (=> d!2370039 m!8315354))

(assert (=> d!2370039 m!8313502))

(declare-fun m!8315356 () Bool)

(assert (=> d!2370039 m!8315356))

(assert (=> b!7930654 m!8313502))

(declare-fun m!8315358 () Bool)

(assert (=> b!7930654 m!8315358))

(declare-fun m!8315360 () Bool)

(assert (=> b!7930655 m!8315360))

(assert (=> b!7930655 m!8313500))

(declare-fun m!8315362 () Bool)

(assert (=> b!7930655 m!8315362))

(assert (=> b!7930655 m!8313502))

(declare-fun m!8315364 () Bool)

(assert (=> b!7930655 m!8315364))

(assert (=> b!7929761 d!2370039))

(declare-fun d!2370041 () Bool)

(declare-fun c!1456609 () Bool)

(assert (=> d!2370041 (= c!1456609 ((_ is Empty!15904) (left!56876 (right!57206 (right!57206 t!4440)))))))

(declare-fun e!4680081 () List!74574)

(assert (=> d!2370041 (= (list!19417 (left!56876 (right!57206 (right!57206 t!4440)))) e!4680081)))

(declare-fun b!7930657 () Bool)

(assert (=> b!7930657 (= e!4680081 Nil!74450)))

(declare-fun b!7930660 () Bool)

(declare-fun e!4680082 () List!74574)

(assert (=> b!7930660 (= e!4680082 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 (right!57206 t!4440))))) (list!19417 (right!57206 (left!56876 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7930659 () Bool)

(assert (=> b!7930659 (= e!4680082 (list!19419 (xs!19294 (left!56876 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7930658 () Bool)

(assert (=> b!7930658 (= e!4680081 e!4680082)))

(declare-fun c!1456610 () Bool)

(assert (=> b!7930658 (= c!1456610 ((_ is Leaf!30237) (left!56876 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2370041 c!1456609) b!7930657))

(assert (= (and d!2370041 (not c!1456609)) b!7930658))

(assert (= (and b!7930658 c!1456610) b!7930659))

(assert (= (and b!7930658 (not c!1456610)) b!7930660))

(declare-fun m!8315366 () Bool)

(assert (=> b!7930660 m!8315366))

(declare-fun m!8315368 () Bool)

(assert (=> b!7930660 m!8315368))

(assert (=> b!7930660 m!8315366))

(assert (=> b!7930660 m!8315368))

(declare-fun m!8315370 () Bool)

(assert (=> b!7930660 m!8315370))

(declare-fun m!8315372 () Bool)

(assert (=> b!7930659 m!8315372))

(assert (=> b!7929761 d!2370041))

(declare-fun d!2370043 () Bool)

(declare-fun c!1456611 () Bool)

(assert (=> d!2370043 (= c!1456611 ((_ is Empty!15904) (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun e!4680083 () List!74574)

(assert (=> d!2370043 (= (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))) e!4680083)))

(declare-fun b!7930661 () Bool)

(assert (=> b!7930661 (= e!4680083 Nil!74450)))

(declare-fun b!7930664 () Bool)

(declare-fun e!4680084 () List!74574)

(assert (=> b!7930664 (= e!4680084 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 (right!57206 t!4440))))) (list!19417 (right!57206 (right!57206 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7930663 () Bool)

(assert (=> b!7930663 (= e!4680084 (list!19419 (xs!19294 (right!57206 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7930662 () Bool)

(assert (=> b!7930662 (= e!4680083 e!4680084)))

(declare-fun c!1456612 () Bool)

(assert (=> b!7930662 (= c!1456612 ((_ is Leaf!30237) (right!57206 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2370043 c!1456611) b!7930661))

(assert (= (and d!2370043 (not c!1456611)) b!7930662))

(assert (= (and b!7930662 c!1456612) b!7930663))

(assert (= (and b!7930662 (not c!1456612)) b!7930664))

(declare-fun m!8315374 () Bool)

(assert (=> b!7930664 m!8315374))

(declare-fun m!8315376 () Bool)

(assert (=> b!7930664 m!8315376))

(assert (=> b!7930664 m!8315374))

(assert (=> b!7930664 m!8315376))

(declare-fun m!8315378 () Bool)

(assert (=> b!7930664 m!8315378))

(declare-fun m!8315380 () Bool)

(assert (=> b!7930663 m!8315380))

(assert (=> b!7929761 d!2370043))

(declare-fun d!2370045 () Bool)

(declare-fun c!1456613 () Bool)

(assert (=> d!2370045 (= c!1456613 ((_ is Nil!74450) (t!390205 lt!2693762)))))

(declare-fun e!4680085 () (InoxSet T!145818))

(assert (=> d!2370045 (= (content!15785 (t!390205 lt!2693762)) e!4680085)))

(declare-fun b!7930665 () Bool)

(assert (=> b!7930665 (= e!4680085 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930666 () Bool)

(assert (=> b!7930666 (= e!4680085 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693762)) true) (content!15785 (t!390205 (t!390205 lt!2693762)))))))

(assert (= (and d!2370045 c!1456613) b!7930665))

(assert (= (and d!2370045 (not c!1456613)) b!7930666))

(declare-fun m!8315382 () Bool)

(assert (=> b!7930666 m!8315382))

(declare-fun m!8315384 () Bool)

(assert (=> b!7930666 m!8315384))

(assert (=> b!7929899 d!2370045))

(declare-fun d!2370047 () Bool)

(declare-fun e!4680087 () Bool)

(assert (=> d!2370047 e!4680087))

(declare-fun res!3146712 () Bool)

(assert (=> d!2370047 (=> (not res!3146712) (not e!4680087))))

(declare-fun lt!2694109 () List!74574)

(assert (=> d!2370047 (= res!3146712 (= (content!15785 lt!2694109) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 (left!56876 t!4440))))) (content!15785 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(declare-fun e!4680086 () List!74574)

(assert (=> d!2370047 (= lt!2694109 e!4680086)))

(declare-fun c!1456614 () Bool)

(assert (=> d!2370047 (= c!1456614 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 (left!56876 t!4440))))))))

(assert (=> d!2370047 (= (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 t!4440)))) (list!19417 (right!57206 (left!56876 t!4440)))) lt!2694109)))

(declare-fun b!7930668 () Bool)

(assert (=> b!7930668 (= e!4680086 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 (left!56876 t!4440))))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 (left!56876 t!4440))))) (list!19417 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7930667 () Bool)

(assert (=> b!7930667 (= e!4680086 (list!19417 (right!57206 (left!56876 t!4440))))))

(declare-fun b!7930669 () Bool)

(declare-fun res!3146711 () Bool)

(assert (=> b!7930669 (=> (not res!3146711) (not e!4680087))))

(assert (=> b!7930669 (= res!3146711 (= (size!43253 lt!2694109) (+ (size!43253 (t!390205 (list!19417 (left!56876 (left!56876 t!4440))))) (size!43253 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7930670 () Bool)

(assert (=> b!7930670 (= e!4680087 (or (not (= (list!19417 (right!57206 (left!56876 t!4440))) Nil!74450)) (= lt!2694109 (t!390205 (list!19417 (left!56876 (left!56876 t!4440)))))))))

(assert (= (and d!2370047 c!1456614) b!7930667))

(assert (= (and d!2370047 (not c!1456614)) b!7930668))

(assert (= (and d!2370047 res!3146712) b!7930669))

(assert (= (and b!7930669 res!3146711) b!7930670))

(declare-fun m!8315386 () Bool)

(assert (=> d!2370047 m!8315386))

(assert (=> d!2370047 m!8315160))

(assert (=> d!2370047 m!8313072))

(assert (=> d!2370047 m!8314234))

(assert (=> b!7930668 m!8313072))

(declare-fun m!8315388 () Bool)

(assert (=> b!7930668 m!8315388))

(declare-fun m!8315390 () Bool)

(assert (=> b!7930669 m!8315390))

(declare-fun m!8315392 () Bool)

(assert (=> b!7930669 m!8315392))

(assert (=> b!7930669 m!8313072))

(assert (=> b!7930669 m!8314242))

(assert (=> b!7930098 d!2370047))

(declare-fun d!2370049 () Bool)

(declare-fun e!4680089 () Bool)

(assert (=> d!2370049 e!4680089))

(declare-fun res!3146714 () Bool)

(assert (=> d!2370049 (=> (not res!3146714) (not e!4680089))))

(declare-fun lt!2694110 () List!74574)

(assert (=> d!2370049 (= res!3146714 (= (content!15785 lt!2694110) ((_ map or) (content!15785 (list!19417 (left!56876 lt!2693873))) (content!15785 (list!19417 (right!57206 lt!2693873))))))))

(declare-fun e!4680088 () List!74574)

(assert (=> d!2370049 (= lt!2694110 e!4680088)))

(declare-fun c!1456615 () Bool)

(assert (=> d!2370049 (= c!1456615 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693873))))))

(assert (=> d!2370049 (= (++!18261 (list!19417 (left!56876 lt!2693873)) (list!19417 (right!57206 lt!2693873))) lt!2694110)))

(declare-fun b!7930672 () Bool)

(assert (=> b!7930672 (= e!4680088 (Cons!74450 (h!80898 (list!19417 (left!56876 lt!2693873))) (++!18261 (t!390205 (list!19417 (left!56876 lt!2693873))) (list!19417 (right!57206 lt!2693873)))))))

(declare-fun b!7930671 () Bool)

(assert (=> b!7930671 (= e!4680088 (list!19417 (right!57206 lt!2693873)))))

(declare-fun b!7930673 () Bool)

(declare-fun res!3146713 () Bool)

(assert (=> b!7930673 (=> (not res!3146713) (not e!4680089))))

(assert (=> b!7930673 (= res!3146713 (= (size!43253 lt!2694110) (+ (size!43253 (list!19417 (left!56876 lt!2693873))) (size!43253 (list!19417 (right!57206 lt!2693873))))))))

(declare-fun b!7930674 () Bool)

(assert (=> b!7930674 (= e!4680089 (or (not (= (list!19417 (right!57206 lt!2693873)) Nil!74450)) (= lt!2694110 (list!19417 (left!56876 lt!2693873)))))))

(assert (= (and d!2370049 c!1456615) b!7930671))

(assert (= (and d!2370049 (not c!1456615)) b!7930672))

(assert (= (and d!2370049 res!3146714) b!7930673))

(assert (= (and b!7930673 res!3146713) b!7930674))

(declare-fun m!8315394 () Bool)

(assert (=> d!2370049 m!8315394))

(assert (=> d!2370049 m!8314616))

(declare-fun m!8315396 () Bool)

(assert (=> d!2370049 m!8315396))

(assert (=> d!2370049 m!8314618))

(declare-fun m!8315398 () Bool)

(assert (=> d!2370049 m!8315398))

(assert (=> b!7930672 m!8314618))

(declare-fun m!8315400 () Bool)

(assert (=> b!7930672 m!8315400))

(declare-fun m!8315402 () Bool)

(assert (=> b!7930673 m!8315402))

(assert (=> b!7930673 m!8314616))

(declare-fun m!8315404 () Bool)

(assert (=> b!7930673 m!8315404))

(assert (=> b!7930673 m!8314618))

(declare-fun m!8315406 () Bool)

(assert (=> b!7930673 m!8315406))

(assert (=> b!7930293 d!2370049))

(declare-fun d!2370051 () Bool)

(declare-fun c!1456616 () Bool)

(assert (=> d!2370051 (= c!1456616 ((_ is Empty!15904) (left!56876 lt!2693873)))))

(declare-fun e!4680090 () List!74574)

(assert (=> d!2370051 (= (list!19417 (left!56876 lt!2693873)) e!4680090)))

(declare-fun b!7930675 () Bool)

(assert (=> b!7930675 (= e!4680090 Nil!74450)))

(declare-fun b!7930678 () Bool)

(declare-fun e!4680091 () List!74574)

(assert (=> b!7930678 (= e!4680091 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693873))) (list!19417 (right!57206 (left!56876 lt!2693873)))))))

(declare-fun b!7930677 () Bool)

(assert (=> b!7930677 (= e!4680091 (list!19419 (xs!19294 (left!56876 lt!2693873))))))

(declare-fun b!7930676 () Bool)

(assert (=> b!7930676 (= e!4680090 e!4680091)))

(declare-fun c!1456617 () Bool)

(assert (=> b!7930676 (= c!1456617 ((_ is Leaf!30237) (left!56876 lt!2693873)))))

(assert (= (and d!2370051 c!1456616) b!7930675))

(assert (= (and d!2370051 (not c!1456616)) b!7930676))

(assert (= (and b!7930676 c!1456617) b!7930677))

(assert (= (and b!7930676 (not c!1456617)) b!7930678))

(declare-fun m!8315408 () Bool)

(assert (=> b!7930678 m!8315408))

(declare-fun m!8315410 () Bool)

(assert (=> b!7930678 m!8315410))

(assert (=> b!7930678 m!8315408))

(assert (=> b!7930678 m!8315410))

(declare-fun m!8315412 () Bool)

(assert (=> b!7930678 m!8315412))

(declare-fun m!8315414 () Bool)

(assert (=> b!7930677 m!8315414))

(assert (=> b!7930293 d!2370051))

(declare-fun d!2370053 () Bool)

(declare-fun c!1456618 () Bool)

(assert (=> d!2370053 (= c!1456618 ((_ is Empty!15904) (right!57206 lt!2693873)))))

(declare-fun e!4680092 () List!74574)

(assert (=> d!2370053 (= (list!19417 (right!57206 lt!2693873)) e!4680092)))

(declare-fun b!7930679 () Bool)

(assert (=> b!7930679 (= e!4680092 Nil!74450)))

(declare-fun b!7930682 () Bool)

(declare-fun e!4680093 () List!74574)

(assert (=> b!7930682 (= e!4680093 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693873))) (list!19417 (right!57206 (right!57206 lt!2693873)))))))

(declare-fun b!7930681 () Bool)

(assert (=> b!7930681 (= e!4680093 (list!19419 (xs!19294 (right!57206 lt!2693873))))))

(declare-fun b!7930680 () Bool)

(assert (=> b!7930680 (= e!4680092 e!4680093)))

(declare-fun c!1456619 () Bool)

(assert (=> b!7930680 (= c!1456619 ((_ is Leaf!30237) (right!57206 lt!2693873)))))

(assert (= (and d!2370053 c!1456618) b!7930679))

(assert (= (and d!2370053 (not c!1456618)) b!7930680))

(assert (= (and b!7930680 c!1456619) b!7930681))

(assert (= (and b!7930680 (not c!1456619)) b!7930682))

(declare-fun m!8315416 () Bool)

(assert (=> b!7930682 m!8315416))

(declare-fun m!8315418 () Bool)

(assert (=> b!7930682 m!8315418))

(assert (=> b!7930682 m!8315416))

(assert (=> b!7930682 m!8315418))

(declare-fun m!8315420 () Bool)

(assert (=> b!7930682 m!8315420))

(declare-fun m!8315422 () Bool)

(assert (=> b!7930681 m!8315422))

(assert (=> b!7930293 d!2370053))

(assert (=> d!2369559 d!2369585))

(declare-fun d!2370055 () Bool)

(declare-fun lt!2694111 () Int)

(assert (=> d!2370055 (= lt!2694111 (size!43253 (list!19417 (right!57206 t!4440))))))

(assert (=> d!2370055 (= lt!2694111 (ite ((_ is Empty!15904) (right!57206 t!4440)) 0 (ite ((_ is Leaf!30237) (right!57206 t!4440)) (csize!32039 (right!57206 t!4440)) (csize!32038 (right!57206 t!4440)))))))

(assert (=> d!2370055 (= (size!43255 (right!57206 t!4440)) lt!2694111)))

(declare-fun bs!1968965 () Bool)

(assert (= bs!1968965 d!2370055))

(assert (=> bs!1968965 m!8312818))

(assert (=> bs!1968965 m!8312818))

(assert (=> bs!1968965 m!8313720))

(assert (=> d!2369559 d!2370055))

(declare-fun d!2370057 () Bool)

(declare-fun e!4680095 () Bool)

(assert (=> d!2370057 e!4680095))

(declare-fun res!3146716 () Bool)

(assert (=> d!2370057 (=> (not res!3146716) (not e!4680095))))

(declare-fun lt!2694112 () List!74574)

(assert (=> d!2370057 (= res!3146716 (= (content!15785 lt!2694112) ((_ map or) (content!15785 (ite c!1456438 lt!2693995 lt!2693997)) (content!15785 (ite c!1456438 call!735363 lt!2694000)))))))

(declare-fun e!4680094 () List!74574)

(assert (=> d!2370057 (= lt!2694112 e!4680094)))

(declare-fun c!1456620 () Bool)

(assert (=> d!2370057 (= c!1456620 ((_ is Nil!74450) (ite c!1456438 lt!2693995 lt!2693997)))))

(assert (=> d!2370057 (= (++!18261 (ite c!1456438 lt!2693995 lt!2693997) (ite c!1456438 call!735363 lt!2694000)) lt!2694112)))

(declare-fun b!7930684 () Bool)

(assert (=> b!7930684 (= e!4680094 (Cons!74450 (h!80898 (ite c!1456438 lt!2693995 lt!2693997)) (++!18261 (t!390205 (ite c!1456438 lt!2693995 lt!2693997)) (ite c!1456438 call!735363 lt!2694000))))))

(declare-fun b!7930683 () Bool)

(assert (=> b!7930683 (= e!4680094 (ite c!1456438 call!735363 lt!2694000))))

(declare-fun b!7930685 () Bool)

(declare-fun res!3146715 () Bool)

(assert (=> b!7930685 (=> (not res!3146715) (not e!4680095))))

(assert (=> b!7930685 (= res!3146715 (= (size!43253 lt!2694112) (+ (size!43253 (ite c!1456438 lt!2693995 lt!2693997)) (size!43253 (ite c!1456438 call!735363 lt!2694000)))))))

(declare-fun b!7930686 () Bool)

(assert (=> b!7930686 (= e!4680095 (or (not (= (ite c!1456438 call!735363 lt!2694000) Nil!74450)) (= lt!2694112 (ite c!1456438 lt!2693995 lt!2693997))))))

(assert (= (and d!2370057 c!1456620) b!7930683))

(assert (= (and d!2370057 (not c!1456620)) b!7930684))

(assert (= (and d!2370057 res!3146716) b!7930685))

(assert (= (and b!7930685 res!3146715) b!7930686))

(declare-fun m!8315424 () Bool)

(assert (=> d!2370057 m!8315424))

(declare-fun m!8315426 () Bool)

(assert (=> d!2370057 m!8315426))

(declare-fun m!8315428 () Bool)

(assert (=> d!2370057 m!8315428))

(declare-fun m!8315430 () Bool)

(assert (=> b!7930684 m!8315430))

(declare-fun m!8315432 () Bool)

(assert (=> b!7930685 m!8315432))

(declare-fun m!8315434 () Bool)

(assert (=> b!7930685 m!8315434))

(declare-fun m!8315436 () Bool)

(assert (=> b!7930685 m!8315436))

(assert (=> bm!735357 d!2370057))

(declare-fun b!7930687 () Bool)

(declare-fun res!3146720 () Bool)

(declare-fun e!4680096 () Bool)

(assert (=> b!7930687 (=> (not res!3146720) (not e!4680096))))

(assert (=> b!7930687 (= res!3146720 (isBalanced!4530 (left!56876 (right!57206 (right!57206 lt!2693719)))))))

(declare-fun d!2370059 () Bool)

(declare-fun res!3146717 () Bool)

(declare-fun e!4680097 () Bool)

(assert (=> d!2370059 (=> res!3146717 e!4680097)))

(assert (=> d!2370059 (= res!3146717 (not ((_ is Node!15904) (right!57206 (right!57206 lt!2693719)))))))

(assert (=> d!2370059 (= (isBalanced!4530 (right!57206 (right!57206 lt!2693719))) e!4680097)))

(declare-fun b!7930688 () Bool)

(declare-fun res!3146722 () Bool)

(assert (=> b!7930688 (=> (not res!3146722) (not e!4680096))))

(assert (=> b!7930688 (= res!3146722 (isBalanced!4530 (right!57206 (right!57206 (right!57206 lt!2693719)))))))

(declare-fun b!7930689 () Bool)

(declare-fun res!3146718 () Bool)

(assert (=> b!7930689 (=> (not res!3146718) (not e!4680096))))

(assert (=> b!7930689 (= res!3146718 (not (isEmpty!42779 (left!56876 (right!57206 (right!57206 lt!2693719))))))))

(declare-fun b!7930690 () Bool)

(declare-fun res!3146719 () Bool)

(assert (=> b!7930690 (=> (not res!3146719) (not e!4680096))))

(assert (=> b!7930690 (= res!3146719 (<= (- (height!2219 (left!56876 (right!57206 (right!57206 lt!2693719)))) (height!2219 (right!57206 (right!57206 (right!57206 lt!2693719))))) 1))))

(declare-fun b!7930691 () Bool)

(assert (=> b!7930691 (= e!4680097 e!4680096)))

(declare-fun res!3146721 () Bool)

(assert (=> b!7930691 (=> (not res!3146721) (not e!4680096))))

(assert (=> b!7930691 (= res!3146721 (<= (- 1) (- (height!2219 (left!56876 (right!57206 (right!57206 lt!2693719)))) (height!2219 (right!57206 (right!57206 (right!57206 lt!2693719)))))))))

(declare-fun b!7930692 () Bool)

(assert (=> b!7930692 (= e!4680096 (not (isEmpty!42779 (right!57206 (right!57206 (right!57206 lt!2693719))))))))

(assert (= (and d!2370059 (not res!3146717)) b!7930691))

(assert (= (and b!7930691 res!3146721) b!7930690))

(assert (= (and b!7930690 res!3146719) b!7930687))

(assert (= (and b!7930687 res!3146720) b!7930688))

(assert (= (and b!7930688 res!3146722) b!7930689))

(assert (= (and b!7930689 res!3146718) b!7930692))

(declare-fun m!8315438 () Bool)

(assert (=> b!7930692 m!8315438))

(declare-fun m!8315440 () Bool)

(assert (=> b!7930691 m!8315440))

(declare-fun m!8315442 () Bool)

(assert (=> b!7930691 m!8315442))

(declare-fun m!8315444 () Bool)

(assert (=> b!7930688 m!8315444))

(declare-fun m!8315446 () Bool)

(assert (=> b!7930687 m!8315446))

(assert (=> b!7930690 m!8315440))

(assert (=> b!7930690 m!8315442))

(declare-fun m!8315448 () Bool)

(assert (=> b!7930689 m!8315448))

(assert (=> b!7929986 d!2370059))

(declare-fun d!2370061 () Bool)

(declare-fun c!1456621 () Bool)

(assert (=> d!2370061 (= c!1456621 ((_ is Nil!74450) lt!2694014))))

(declare-fun e!4680098 () (InoxSet T!145818))

(assert (=> d!2370061 (= (content!15785 lt!2694014) e!4680098)))

(declare-fun b!7930693 () Bool)

(assert (=> b!7930693 (= e!4680098 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930694 () Bool)

(assert (=> b!7930694 (= e!4680098 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694014) true) (content!15785 (t!390205 lt!2694014))))))

(assert (= (and d!2370061 c!1456621) b!7930693))

(assert (= (and d!2370061 (not c!1456621)) b!7930694))

(declare-fun m!8315450 () Bool)

(assert (=> b!7930694 m!8315450))

(declare-fun m!8315452 () Bool)

(assert (=> b!7930694 m!8315452))

(assert (=> d!2369699 d!2370061))

(declare-fun d!2370063 () Bool)

(declare-fun c!1456622 () Bool)

(assert (=> d!2370063 (= c!1456622 ((_ is Nil!74450) (list!19417 lt!2693713)))))

(declare-fun e!4680099 () (InoxSet T!145818))

(assert (=> d!2370063 (= (content!15785 (list!19417 lt!2693713)) e!4680099)))

(declare-fun b!7930695 () Bool)

(assert (=> b!7930695 (= e!4680099 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930696 () Bool)

(assert (=> b!7930696 (= e!4680099 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 lt!2693713)) true) (content!15785 (t!390205 (list!19417 lt!2693713)))))))

(assert (= (and d!2370063 c!1456622) b!7930695))

(assert (= (and d!2370063 (not c!1456622)) b!7930696))

(declare-fun m!8315454 () Bool)

(assert (=> b!7930696 m!8315454))

(assert (=> b!7930696 m!8315270))

(assert (=> d!2369699 d!2370063))

(declare-fun d!2370065 () Bool)

(declare-fun c!1456623 () Bool)

(assert (=> d!2370065 (= c!1456623 ((_ is Nil!74450) (list!19417 (right!57206 lt!2693711))))))

(declare-fun e!4680100 () (InoxSet T!145818))

(assert (=> d!2370065 (= (content!15785 (list!19417 (right!57206 lt!2693711))) e!4680100)))

(declare-fun b!7930697 () Bool)

(assert (=> b!7930697 (= e!4680100 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930698 () Bool)

(assert (=> b!7930698 (= e!4680100 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 lt!2693711))) true) (content!15785 (t!390205 (list!19417 (right!57206 lt!2693711))))))))

(assert (= (and d!2370065 c!1456623) b!7930697))

(assert (= (and d!2370065 (not c!1456623)) b!7930698))

(declare-fun m!8315456 () Bool)

(assert (=> b!7930698 m!8315456))

(declare-fun m!8315458 () Bool)

(assert (=> b!7930698 m!8315458))

(assert (=> d!2369699 d!2370065))

(assert (=> b!7929946 d!2369989))

(declare-fun d!2370067 () Bool)

(declare-fun c!1456624 () Bool)

(assert (=> d!2370067 (= c!1456624 ((_ is Nil!74450) lt!2693967))))

(declare-fun e!4680101 () (InoxSet T!145818))

(assert (=> d!2370067 (= (content!15785 lt!2693967) e!4680101)))

(declare-fun b!7930699 () Bool)

(assert (=> b!7930699 (= e!4680101 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930700 () Bool)

(assert (=> b!7930700 (= e!4680101 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693967) true) (content!15785 (t!390205 lt!2693967))))))

(assert (= (and d!2370067 c!1456624) b!7930699))

(assert (= (and d!2370067 (not c!1456624)) b!7930700))

(declare-fun m!8315460 () Bool)

(assert (=> b!7930700 m!8315460))

(declare-fun m!8315462 () Bool)

(assert (=> b!7930700 m!8315462))

(assert (=> d!2369613 d!2370067))

(declare-fun d!2370069 () Bool)

(declare-fun c!1456625 () Bool)

(assert (=> d!2370069 (= c!1456625 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693865)))))

(declare-fun e!4680102 () (InoxSet T!145818))

(assert (=> d!2370069 (= (content!15785 (ite c!1456280 lt!2693861 lt!2693865)) e!4680102)))

(declare-fun b!7930701 () Bool)

(assert (=> b!7930701 (= e!4680102 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930702 () Bool)

(assert (=> b!7930702 (= e!4680102 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693861 lt!2693865)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693861 lt!2693865)))))))

(assert (= (and d!2370069 c!1456625) b!7930701))

(assert (= (and d!2370069 (not c!1456625)) b!7930702))

(declare-fun m!8315464 () Bool)

(assert (=> b!7930702 m!8315464))

(declare-fun m!8315466 () Bool)

(assert (=> b!7930702 m!8315466))

(assert (=> d!2369613 d!2370069))

(declare-fun d!2370071 () Bool)

(declare-fun c!1456626 () Bool)

(assert (=> d!2370071 (= c!1456626 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693863)))))

(declare-fun e!4680103 () (InoxSet T!145818))

(assert (=> d!2370071 (= (content!15785 (ite c!1456280 lt!2693859 lt!2693863)) e!4680103)))

(declare-fun b!7930703 () Bool)

(assert (=> b!7930703 (= e!4680103 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930704 () Bool)

(assert (=> b!7930704 (= e!4680103 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693859 lt!2693863)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693859 lt!2693863)))))))

(assert (= (and d!2370071 c!1456626) b!7930703))

(assert (= (and d!2370071 (not c!1456626)) b!7930704))

(declare-fun m!8315468 () Bool)

(assert (=> b!7930704 m!8315468))

(declare-fun m!8315470 () Bool)

(assert (=> b!7930704 m!8315470))

(assert (=> d!2369613 d!2370071))

(declare-fun d!2370073 () Bool)

(declare-fun lt!2694113 () Int)

(assert (=> d!2370073 (>= lt!2694113 0)))

(declare-fun e!4680104 () Int)

(assert (=> d!2370073 (= lt!2694113 e!4680104)))

(declare-fun c!1456627 () Bool)

(assert (=> d!2370073 (= c!1456627 ((_ is Nil!74450) (t!390205 lt!2693770)))))

(assert (=> d!2370073 (= (size!43253 (t!390205 lt!2693770)) lt!2694113)))

(declare-fun b!7930705 () Bool)

(assert (=> b!7930705 (= e!4680104 0)))

(declare-fun b!7930706 () Bool)

(assert (=> b!7930706 (= e!4680104 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693770)))))))

(assert (= (and d!2370073 c!1456627) b!7930705))

(assert (= (and d!2370073 (not c!1456627)) b!7930706))

(declare-fun m!8315472 () Bool)

(assert (=> b!7930706 m!8315472))

(assert (=> b!7929956 d!2370073))

(declare-fun d!2370075 () Bool)

(assert (=> d!2370075 (= (isEmpty!42782 (list!19417 (left!56876 lt!2693719))) ((_ is Nil!74450) (list!19417 (left!56876 lt!2693719))))))

(assert (=> d!2369863 d!2370075))

(assert (=> d!2369863 d!2369417))

(declare-fun d!2370077 () Bool)

(declare-fun lt!2694114 () Int)

(assert (=> d!2370077 (= lt!2694114 (size!43253 (list!19417 (left!56876 lt!2693719))))))

(assert (=> d!2370077 (= lt!2694114 (ite ((_ is Empty!15904) (left!56876 lt!2693719)) 0 (ite ((_ is Leaf!30237) (left!56876 lt!2693719)) (csize!32039 (left!56876 lt!2693719)) (csize!32038 (left!56876 lt!2693719)))))))

(assert (=> d!2370077 (= (size!43255 (left!56876 lt!2693719)) lt!2694114)))

(declare-fun bs!1968966 () Bool)

(assert (= bs!1968966 d!2370077))

(assert (=> bs!1968966 m!8313094))

(assert (=> bs!1968966 m!8313094))

(assert (=> bs!1968966 m!8313628))

(assert (=> d!2369863 d!2370077))

(declare-fun d!2370079 () Bool)

(assert (=> d!2370079 (= (list!19419 (xs!19294 (left!56876 (left!56876 t!4440)))) (innerList!15992 (xs!19294 (left!56876 (left!56876 t!4440)))))))

(assert (=> b!7930103 d!2370079))

(declare-fun d!2370081 () Bool)

(declare-fun c!1456628 () Bool)

(assert (=> d!2370081 (= c!1456628 ((_ is Nil!74450) (t!390205 lt!2693770)))))

(declare-fun e!4680105 () (InoxSet T!145818))

(assert (=> d!2370081 (= (content!15785 (t!390205 lt!2693770)) e!4680105)))

(declare-fun b!7930707 () Bool)

(assert (=> b!7930707 (= e!4680105 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930708 () Bool)

(assert (=> b!7930708 (= e!4680105 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693770)) true) (content!15785 (t!390205 (t!390205 lt!2693770)))))))

(assert (= (and d!2370081 c!1456628) b!7930707))

(assert (= (and d!2370081 (not c!1456628)) b!7930708))

(declare-fun m!8315474 () Bool)

(assert (=> b!7930708 m!8315474))

(declare-fun m!8315476 () Bool)

(assert (=> b!7930708 m!8315476))

(assert (=> b!7930205 d!2370081))

(declare-fun b!7930709 () Bool)

(declare-fun res!3146724 () Bool)

(declare-fun e!4680106 () Bool)

(assert (=> b!7930709 (=> (not res!3146724) (not e!4680106))))

(declare-fun lt!2694115 () List!74574)

(assert (=> b!7930709 (= res!3146724 (= (size!43253 lt!2694115) (+ (size!43253 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))) 1)))))

(declare-fun b!7930710 () Bool)

(declare-fun e!4680108 () Bool)

(declare-fun call!735375 () (_ BitVec 32))

(declare-fun call!735376 () (_ BitVec 32))

(assert (=> b!7930710 (= e!4680108 (= call!735375 (bvadd call!735376 #b00000000000000000000000000000001)))))

(declare-fun b!7930711 () Bool)

(declare-fun res!3146725 () Bool)

(assert (=> b!7930711 (=> (not res!3146725) (not e!4680106))))

(assert (=> b!7930711 (= res!3146725 e!4680108)))

(declare-fun c!1456630 () Bool)

(assert (=> b!7930711 (= c!1456630 (bvslt (isize!121 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))) #b01111111111111111111111111111111))))

(declare-fun b!7930712 () Bool)

(declare-fun e!4680107 () List!74574)

(assert (=> b!7930712 (= e!4680107 (Cons!74450 (h!80898 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))) ($colon+!317 (t!390205 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))) v!5484)))))

(declare-fun b!7930713 () Bool)

(assert (=> b!7930713 (= e!4680106 (= lt!2694115 (++!18261 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930714 () Bool)

(assert (=> b!7930714 (= e!4680107 (Cons!74450 v!5484 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(declare-fun b!7930715 () Bool)

(declare-fun res!3146726 () Bool)

(assert (=> b!7930715 (=> (not res!3146726) (not e!4680106))))

(assert (=> b!7930715 (= res!3146726 (= (content!15785 lt!2694115) ((_ map or) (content!15785 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735371 () Bool)

(assert (=> bm!735371 (= call!735375 (isize!121 lt!2694115))))

(declare-fun b!7930716 () Bool)

(assert (=> b!7930716 (= e!4680108 (= call!735375 call!735376))))

(declare-fun bm!735370 () Bool)

(assert (=> bm!735370 (= call!735376 (isize!121 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(declare-fun d!2370083 () Bool)

(assert (=> d!2370083 e!4680106))

(declare-fun res!3146723 () Bool)

(assert (=> d!2370083 (=> (not res!3146723) (not e!4680106))))

(assert (=> d!2370083 (= res!3146723 ((_ is Cons!74450) lt!2694115))))

(assert (=> d!2370083 (= lt!2694115 e!4680107)))

(declare-fun c!1456629 () Bool)

(assert (=> d!2370083 (= c!1456629 ((_ is Nil!74450) (t!390205 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(assert (=> d!2370083 (= ($colon+!317 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))) v!5484) lt!2694115)))

(assert (= (and d!2370083 c!1456629) b!7930714))

(assert (= (and d!2370083 (not c!1456629)) b!7930712))

(assert (= (and d!2370083 res!3146723) b!7930709))

(assert (= (and b!7930709 res!3146724) b!7930711))

(assert (= (and b!7930711 c!1456630) b!7930710))

(assert (= (and b!7930711 (not c!1456630)) b!7930716))

(assert (= (or b!7930710 b!7930716) bm!735371))

(assert (= (or b!7930710 b!7930716) bm!735370))

(assert (= (and b!7930711 res!3146725) b!7930715))

(assert (= (and b!7930715 res!3146726) b!7930713))

(declare-fun m!8315478 () Bool)

(assert (=> b!7930709 m!8315478))

(declare-fun m!8315480 () Bool)

(assert (=> b!7930709 m!8315480))

(assert (=> b!7930711 m!8315148))

(declare-fun m!8315482 () Bool)

(assert (=> b!7930713 m!8315482))

(declare-fun m!8315484 () Bool)

(assert (=> b!7930715 m!8315484))

(declare-fun m!8315486 () Bool)

(assert (=> b!7930715 m!8315486))

(assert (=> b!7930715 m!8313196))

(assert (=> bm!735370 m!8315148))

(declare-fun m!8315488 () Bool)

(assert (=> bm!735371 m!8315488))

(declare-fun m!8315490 () Bool)

(assert (=> b!7930712 m!8315490))

(assert (=> b!7930326 d!2370083))

(declare-fun d!2370085 () Bool)

(declare-fun lt!2694116 () Int)

(assert (=> d!2370085 (>= lt!2694116 0)))

(declare-fun e!4680109 () Int)

(assert (=> d!2370085 (= lt!2694116 e!4680109)))

(declare-fun c!1456631 () Bool)

(assert (=> d!2370085 (= c!1456631 ((_ is Nil!74450) (t!390205 lt!2693763)))))

(assert (=> d!2370085 (= (size!43253 (t!390205 lt!2693763)) lt!2694116)))

(declare-fun b!7930717 () Bool)

(assert (=> b!7930717 (= e!4680109 0)))

(declare-fun b!7930718 () Bool)

(assert (=> b!7930718 (= e!4680109 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693763)))))))

(assert (= (and d!2370085 c!1456631) b!7930717))

(assert (= (and d!2370085 (not c!1456631)) b!7930718))

(declare-fun m!8315492 () Bool)

(assert (=> b!7930718 m!8315492))

(assert (=> b!7929885 d!2370085))

(declare-fun d!2370087 () Bool)

(declare-fun lt!2694117 () Bool)

(assert (=> d!2370087 (= lt!2694117 (isEmpty!42782 (list!19417 (left!56876 (right!57206 t!4440)))))))

(assert (=> d!2370087 (= lt!2694117 (= (size!43255 (left!56876 (right!57206 t!4440))) 0))))

(assert (=> d!2370087 (= (isEmpty!42779 (left!56876 (right!57206 t!4440))) lt!2694117)))

(declare-fun bs!1968967 () Bool)

(assert (= bs!1968967 d!2370087))

(assert (=> bs!1968967 m!8312938))

(assert (=> bs!1968967 m!8312938))

(declare-fun m!8315494 () Bool)

(assert (=> bs!1968967 m!8315494))

(assert (=> bs!1968967 m!8314222))

(assert (=> b!7929973 d!2370087))

(declare-fun d!2370089 () Bool)

(declare-fun e!4680111 () Bool)

(assert (=> d!2370089 e!4680111))

(declare-fun res!3146728 () Bool)

(assert (=> d!2370089 (=> (not res!3146728) (not e!4680111))))

(declare-fun lt!2694118 () List!74574)

(assert (=> d!2370089 (= res!3146728 (= (content!15785 lt!2694118) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693714))) (content!15785 lt!2693715))))))

(declare-fun e!4680110 () List!74574)

(assert (=> d!2370089 (= lt!2694118 e!4680110)))

(declare-fun c!1456632 () Bool)

(assert (=> d!2370089 (= c!1456632 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693714))))))

(assert (=> d!2370089 (= (++!18261 (t!390205 (t!390205 lt!2693714)) lt!2693715) lt!2694118)))

(declare-fun b!7930720 () Bool)

(assert (=> b!7930720 (= e!4680110 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693714))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693714))) lt!2693715)))))

(declare-fun b!7930719 () Bool)

(assert (=> b!7930719 (= e!4680110 lt!2693715)))

(declare-fun b!7930721 () Bool)

(declare-fun res!3146727 () Bool)

(assert (=> b!7930721 (=> (not res!3146727) (not e!4680111))))

(assert (=> b!7930721 (= res!3146727 (= (size!43253 lt!2694118) (+ (size!43253 (t!390205 (t!390205 lt!2693714))) (size!43253 lt!2693715))))))

(declare-fun b!7930722 () Bool)

(assert (=> b!7930722 (= e!4680111 (or (not (= lt!2693715 Nil!74450)) (= lt!2694118 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370089 c!1456632) b!7930719))

(assert (= (and d!2370089 (not c!1456632)) b!7930720))

(assert (= (and d!2370089 res!3146728) b!7930721))

(assert (= (and b!7930721 res!3146727) b!7930722))

(declare-fun m!8315496 () Bool)

(assert (=> d!2370089 m!8315496))

(assert (=> d!2370089 m!8315346))

(assert (=> d!2370089 m!8312908))

(declare-fun m!8315498 () Bool)

(assert (=> b!7930720 m!8315498))

(declare-fun m!8315500 () Bool)

(assert (=> b!7930721 m!8315500))

(assert (=> b!7930721 m!8315310))

(assert (=> b!7930721 m!8312914))

(assert (=> b!7930114 d!2370089))

(declare-fun d!2370091 () Bool)

(declare-fun lt!2694119 () Int)

(assert (=> d!2370091 (>= lt!2694119 0)))

(declare-fun e!4680112 () Int)

(assert (=> d!2370091 (= lt!2694119 e!4680112)))

(declare-fun c!1456633 () Bool)

(assert (=> d!2370091 (= c!1456633 ((_ is Nil!74450) lt!2694021))))

(assert (=> d!2370091 (= (size!43253 lt!2694021) lt!2694119)))

(declare-fun b!7930723 () Bool)

(assert (=> b!7930723 (= e!4680112 0)))

(declare-fun b!7930724 () Bool)

(assert (=> b!7930724 (= e!4680112 (+ 1 (size!43253 (t!390205 lt!2694021))))))

(assert (= (and d!2370091 c!1456633) b!7930723))

(assert (= (and d!2370091 (not c!1456633)) b!7930724))

(declare-fun m!8315502 () Bool)

(assert (=> b!7930724 m!8315502))

(assert (=> b!7930249 d!2370091))

(declare-fun d!2370093 () Bool)

(declare-fun lt!2694120 () Int)

(assert (=> d!2370093 (>= lt!2694120 0)))

(declare-fun e!4680113 () Int)

(assert (=> d!2370093 (= lt!2694120 e!4680113)))

(declare-fun c!1456634 () Bool)

(assert (=> d!2370093 (= c!1456634 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 lt!2693711)))))))

(assert (=> d!2370093 (= (size!43253 (list!19417 (left!56876 (right!57206 lt!2693711)))) lt!2694120)))

(declare-fun b!7930725 () Bool)

(assert (=> b!7930725 (= e!4680113 0)))

(declare-fun b!7930726 () Bool)

(assert (=> b!7930726 (= e!4680113 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711)))))))))

(assert (= (and d!2370093 c!1456634) b!7930725))

(assert (= (and d!2370093 (not c!1456634)) b!7930726))

(assert (=> b!7930726 m!8315174))

(assert (=> b!7930249 d!2370093))

(declare-fun d!2370095 () Bool)

(declare-fun lt!2694121 () Int)

(assert (=> d!2370095 (>= lt!2694121 0)))

(declare-fun e!4680114 () Int)

(assert (=> d!2370095 (= lt!2694121 e!4680114)))

(declare-fun c!1456635 () Bool)

(assert (=> d!2370095 (= c!1456635 ((_ is Nil!74450) (list!19417 (right!57206 (right!57206 lt!2693711)))))))

(assert (=> d!2370095 (= (size!43253 (list!19417 (right!57206 (right!57206 lt!2693711)))) lt!2694121)))

(declare-fun b!7930727 () Bool)

(assert (=> b!7930727 (= e!4680114 0)))

(declare-fun b!7930728 () Bool)

(assert (=> b!7930728 (= e!4680114 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(assert (= (and d!2370095 c!1456635) b!7930727))

(assert (= (and d!2370095 (not c!1456635)) b!7930728))

(declare-fun m!8315504 () Bool)

(assert (=> b!7930728 m!8315504))

(assert (=> b!7930249 d!2370095))

(declare-fun d!2370097 () Bool)

(assert (=> d!2370097 (= (inv!95731 (xs!19294 (right!57206 (left!56876 t!4440)))) (<= (size!43253 (innerList!15992 (xs!19294 (right!57206 (left!56876 t!4440))))) 2147483647))))

(declare-fun bs!1968968 () Bool)

(assert (= bs!1968968 d!2370097))

(declare-fun m!8315506 () Bool)

(assert (=> bs!1968968 m!8315506))

(assert (=> b!7930459 d!2370097))

(declare-fun d!2370099 () Bool)

(declare-fun lt!2694122 () Bool)

(assert (=> d!2370099 (= lt!2694122 (isEmpty!42782 (list!19417 (right!57206 (left!56876 t!4440)))))))

(assert (=> d!2370099 (= lt!2694122 (= (size!43255 (right!57206 (left!56876 t!4440))) 0))))

(assert (=> d!2370099 (= (isEmpty!42779 (right!57206 (left!56876 t!4440))) lt!2694122)))

(declare-fun bs!1968969 () Bool)

(assert (= bs!1968969 d!2370099))

(assert (=> bs!1968969 m!8313072))

(assert (=> bs!1968969 m!8313072))

(declare-fun m!8315508 () Bool)

(assert (=> bs!1968969 m!8315508))

(assert (=> bs!1968969 m!8314514))

(assert (=> b!7929954 d!2370099))

(declare-fun d!2370101 () Bool)

(declare-fun c!1456636 () Bool)

(assert (=> d!2370101 (= c!1456636 ((_ is Nil!74450) lt!2694019))))

(declare-fun e!4680115 () (InoxSet T!145818))

(assert (=> d!2370101 (= (content!15785 lt!2694019) e!4680115)))

(declare-fun b!7930729 () Bool)

(assert (=> b!7930729 (= e!4680115 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930730 () Bool)

(assert (=> b!7930730 (= e!4680115 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694019) true) (content!15785 (t!390205 lt!2694019))))))

(assert (= (and d!2370101 c!1456636) b!7930729))

(assert (= (and d!2370101 (not c!1456636)) b!7930730))

(declare-fun m!8315510 () Bool)

(assert (=> b!7930730 m!8315510))

(declare-fun m!8315512 () Bool)

(assert (=> b!7930730 m!8315512))

(assert (=> d!2369713 d!2370101))

(declare-fun d!2370103 () Bool)

(declare-fun c!1456637 () Bool)

(assert (=> d!2370103 (= c!1456637 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693860)))))

(declare-fun e!4680116 () (InoxSet T!145818))

(assert (=> d!2370103 (= (content!15785 (ite c!1456280 lt!2693859 lt!2693860)) e!4680116)))

(declare-fun b!7930731 () Bool)

(assert (=> b!7930731 (= e!4680116 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930732 () Bool)

(assert (=> b!7930732 (= e!4680116 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693859 lt!2693860)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693859 lt!2693860)))))))

(assert (= (and d!2370103 c!1456637) b!7930731))

(assert (= (and d!2370103 (not c!1456637)) b!7930732))

(declare-fun m!8315514 () Bool)

(assert (=> b!7930732 m!8315514))

(declare-fun m!8315516 () Bool)

(assert (=> b!7930732 m!8315516))

(assert (=> d!2369713 d!2370103))

(declare-fun c!1456638 () Bool)

(declare-fun d!2370105 () Bool)

(assert (=> d!2370105 (= c!1456638 ((_ is Nil!74450) (ite c!1456280 lt!2693872 lt!2693871)))))

(declare-fun e!4680117 () (InoxSet T!145818))

(assert (=> d!2370105 (= (content!15785 (ite c!1456280 lt!2693872 lt!2693871)) e!4680117)))

(declare-fun b!7930733 () Bool)

(assert (=> b!7930733 (= e!4680117 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930734 () Bool)

(assert (=> b!7930734 (= e!4680117 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693872 lt!2693871)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693872 lt!2693871)))))))

(assert (= (and d!2370105 c!1456638) b!7930733))

(assert (= (and d!2370105 (not c!1456638)) b!7930734))

(declare-fun m!8315518 () Bool)

(assert (=> b!7930734 m!8315518))

(declare-fun m!8315520 () Bool)

(assert (=> b!7930734 m!8315520))

(assert (=> d!2369713 d!2370105))

(declare-fun d!2370107 () Bool)

(assert (=> d!2370107 (= (inv!95731 (xs!19294 (left!56876 (right!57206 t!4440)))) (<= (size!43253 (innerList!15992 (xs!19294 (left!56876 (right!57206 t!4440))))) 2147483647))))

(declare-fun bs!1968970 () Bool)

(assert (= bs!1968970 d!2370107))

(declare-fun m!8315522 () Bool)

(assert (=> bs!1968970 m!8315522))

(assert (=> b!7930450 d!2370107))

(declare-fun d!2370109 () Bool)

(declare-fun e!4680122 () Bool)

(assert (=> d!2370109 e!4680122))

(declare-fun res!3146731 () Bool)

(assert (=> d!2370109 (=> (not res!3146731) (not e!4680122))))

(declare-fun lt!2694125 () List!74574)

(assert (=> d!2370109 (= res!3146731 (= (content!15785 lt!2694125) (ite (<= 1 0) ((as const (Array T!145818 Bool)) false) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun e!4680123 () List!74574)

(assert (=> d!2370109 (= lt!2694125 e!4680123)))

(declare-fun c!1456641 () Bool)

(assert (=> d!2370109 (= c!1456641 (<= 1 0))))

(assert (=> d!2370109 (= (fill!284 1 v!5484) lt!2694125)))

(declare-fun b!7930741 () Bool)

(assert (=> b!7930741 (= e!4680123 Nil!74450)))

(declare-fun b!7930742 () Bool)

(assert (=> b!7930742 (= e!4680123 (Cons!74450 v!5484 (fill!284 (- 1 1) v!5484)))))

(declare-fun b!7930743 () Bool)

(assert (=> b!7930743 (= e!4680122 (= (size!43253 lt!2694125) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2370109 c!1456641) b!7930741))

(assert (= (and d!2370109 (not c!1456641)) b!7930742))

(assert (= (and d!2370109 res!3146731) b!7930743))

(declare-fun m!8315524 () Bool)

(assert (=> d!2370109 m!8315524))

(assert (=> d!2370109 m!8313196))

(declare-fun m!8315526 () Bool)

(assert (=> b!7930742 m!8315526))

(declare-fun m!8315528 () Bool)

(assert (=> b!7930743 m!8315528))

(assert (=> d!2369741 d!2370109))

(declare-fun d!2370111 () Bool)

(declare-fun _$14!1633 () IArray!31869)

(assert (=> d!2370111 (= _$14!1633 (IArray!31870 (fill!284 1 v!5484)))))

(declare-fun e!4680126 () Bool)

(assert (=> d!2370111 (and (inv!95731 _$14!1633) e!4680126)))

(assert (=> d!2370111 (= (choose!59836 1 v!5484) _$14!1633)))

(declare-fun b!7930746 () Bool)

(declare-fun tp!2358915 () Bool)

(assert (=> b!7930746 (= e!4680126 tp!2358915)))

(assert (= d!2370111 b!7930746))

(assert (=> d!2370111 m!8314594))

(declare-fun m!8315530 () Bool)

(assert (=> d!2370111 m!8315530))

(assert (=> d!2369741 d!2370111))

(declare-fun d!2370113 () Bool)

(declare-fun c!1456642 () Bool)

(assert (=> d!2370113 (= c!1456642 ((_ is Nil!74450) lt!2694009))))

(declare-fun e!4680127 () (InoxSet T!145818))

(assert (=> d!2370113 (= (content!15785 lt!2694009) e!4680127)))

(declare-fun b!7930747 () Bool)

(assert (=> b!7930747 (= e!4680127 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930748 () Bool)

(assert (=> b!7930748 (= e!4680127 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694009) true) (content!15785 (t!390205 lt!2694009))))))

(assert (= (and d!2370113 c!1456642) b!7930747))

(assert (= (and d!2370113 (not c!1456642)) b!7930748))

(declare-fun m!8315532 () Bool)

(assert (=> b!7930748 m!8315532))

(declare-fun m!8315534 () Bool)

(assert (=> b!7930748 m!8315534))

(assert (=> d!2369679 d!2370113))

(declare-fun d!2370115 () Bool)

(declare-fun c!1456643 () Bool)

(assert (=> d!2370115 (= c!1456643 ((_ is Nil!74450) (list!19417 (left!56876 t!4440))))))

(declare-fun e!4680128 () (InoxSet T!145818))

(assert (=> d!2370115 (= (content!15785 (list!19417 (left!56876 t!4440))) e!4680128)))

(declare-fun b!7930749 () Bool)

(assert (=> b!7930749 (= e!4680128 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930750 () Bool)

(assert (=> b!7930750 (= e!4680128 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 t!4440))) true) (content!15785 (t!390205 (list!19417 (left!56876 t!4440))))))))

(assert (= (and d!2370115 c!1456643) b!7930749))

(assert (= (and d!2370115 (not c!1456643)) b!7930750))

(declare-fun m!8315536 () Bool)

(assert (=> b!7930750 m!8315536))

(declare-fun m!8315538 () Bool)

(assert (=> b!7930750 m!8315538))

(assert (=> d!2369679 d!2370115))

(declare-fun d!2370117 () Bool)

(declare-fun c!1456644 () Bool)

(assert (=> d!2370117 (= c!1456644 ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(declare-fun e!4680129 () (InoxSet T!145818))

(assert (=> d!2370117 (= (content!15785 (list!19417 (right!57206 t!4440))) e!4680129)))

(declare-fun b!7930751 () Bool)

(assert (=> b!7930751 (= e!4680129 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930752 () Bool)

(assert (=> b!7930752 (= e!4680129 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 t!4440))) true) (content!15785 (t!390205 (list!19417 (right!57206 t!4440))))))))

(assert (= (and d!2370117 c!1456644) b!7930751))

(assert (= (and d!2370117 (not c!1456644)) b!7930752))

(declare-fun m!8315540 () Bool)

(assert (=> b!7930752 m!8315540))

(declare-fun m!8315542 () Bool)

(assert (=> b!7930752 m!8315542))

(assert (=> d!2369679 d!2370117))

(declare-fun d!2370119 () Bool)

(assert (=> d!2370119 (= (++!18261 (++!18261 (ite c!1456438 lt!2693995 lt!2693994) (ite c!1456438 lt!2693993 lt!2694005)) (ite c!1456438 lt!2694006 lt!2693998)) (++!18261 (ite c!1456438 lt!2693995 lt!2693994) (++!18261 (ite c!1456438 lt!2693993 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998))))))

(declare-fun lt!2694126 () Unit!169569)

(assert (=> d!2370119 (= lt!2694126 (choose!59834 (ite c!1456438 lt!2693995 lt!2693994) (ite c!1456438 lt!2693993 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998)))))

(assert (=> d!2370119 (= (lemmaConcatAssociativity!3164 (ite c!1456438 lt!2693995 lt!2693994) (ite c!1456438 lt!2693993 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998)) lt!2694126)))

(declare-fun bs!1968971 () Bool)

(assert (= bs!1968971 d!2370119))

(declare-fun m!8315544 () Bool)

(assert (=> bs!1968971 m!8315544))

(declare-fun m!8315546 () Bool)

(assert (=> bs!1968971 m!8315546))

(declare-fun m!8315548 () Bool)

(assert (=> bs!1968971 m!8315548))

(declare-fun m!8315550 () Bool)

(assert (=> bs!1968971 m!8315550))

(assert (=> bs!1968971 m!8315544))

(declare-fun m!8315552 () Bool)

(assert (=> bs!1968971 m!8315552))

(assert (=> bs!1968971 m!8315546))

(assert (=> bm!735358 d!2370119))

(declare-fun d!2370121 () Bool)

(declare-fun c!1456645 () Bool)

(assert (=> d!2370121 (= c!1456645 ((_ is Empty!15904) lt!2694050))))

(declare-fun e!4680130 () List!74574)

(assert (=> d!2370121 (= (list!19417 lt!2694050) e!4680130)))

(declare-fun b!7930753 () Bool)

(assert (=> b!7930753 (= e!4680130 Nil!74450)))

(declare-fun b!7930756 () Bool)

(declare-fun e!4680131 () List!74574)

(assert (=> b!7930756 (= e!4680131 (++!18261 (list!19417 (left!56876 lt!2694050)) (list!19417 (right!57206 lt!2694050))))))

(declare-fun b!7930755 () Bool)

(assert (=> b!7930755 (= e!4680131 (list!19419 (xs!19294 lt!2694050)))))

(declare-fun b!7930754 () Bool)

(assert (=> b!7930754 (= e!4680130 e!4680131)))

(declare-fun c!1456646 () Bool)

(assert (=> b!7930754 (= c!1456646 ((_ is Leaf!30237) lt!2694050))))

(assert (= (and d!2370121 c!1456645) b!7930753))

(assert (= (and d!2370121 (not c!1456645)) b!7930754))

(assert (= (and b!7930754 c!1456646) b!7930755))

(assert (= (and b!7930754 (not c!1456646)) b!7930756))

(declare-fun m!8315554 () Bool)

(assert (=> b!7930756 m!8315554))

(declare-fun m!8315556 () Bool)

(assert (=> b!7930756 m!8315556))

(assert (=> b!7930756 m!8315554))

(assert (=> b!7930756 m!8315556))

(declare-fun m!8315558 () Bool)

(assert (=> b!7930756 m!8315558))

(declare-fun m!8315560 () Bool)

(assert (=> b!7930755 m!8315560))

(assert (=> d!2369821 d!2370121))

(declare-fun d!2370123 () Bool)

(declare-fun e!4680133 () Bool)

(assert (=> d!2370123 e!4680133))

(declare-fun res!3146733 () Bool)

(assert (=> d!2370123 (=> (not res!3146733) (not e!4680133))))

(declare-fun lt!2694127 () List!74574)

(assert (=> d!2370123 (= res!3146733 (= (content!15785 lt!2694127) ((_ map or) (content!15785 (list!19417 call!735337)) (content!15785 (list!19417 (right!57206 lt!2693858))))))))

(declare-fun e!4680132 () List!74574)

(assert (=> d!2370123 (= lt!2694127 e!4680132)))

(declare-fun c!1456647 () Bool)

(assert (=> d!2370123 (= c!1456647 ((_ is Nil!74450) (list!19417 call!735337)))))

(assert (=> d!2370123 (= (++!18261 (list!19417 call!735337) (list!19417 (right!57206 lt!2693858))) lt!2694127)))

(declare-fun b!7930758 () Bool)

(assert (=> b!7930758 (= e!4680132 (Cons!74450 (h!80898 (list!19417 call!735337)) (++!18261 (t!390205 (list!19417 call!735337)) (list!19417 (right!57206 lt!2693858)))))))

(declare-fun b!7930757 () Bool)

(assert (=> b!7930757 (= e!4680132 (list!19417 (right!57206 lt!2693858)))))

(declare-fun b!7930759 () Bool)

(declare-fun res!3146732 () Bool)

(assert (=> b!7930759 (=> (not res!3146732) (not e!4680133))))

(assert (=> b!7930759 (= res!3146732 (= (size!43253 lt!2694127) (+ (size!43253 (list!19417 call!735337)) (size!43253 (list!19417 (right!57206 lt!2693858))))))))

(declare-fun b!7930760 () Bool)

(assert (=> b!7930760 (= e!4680133 (or (not (= (list!19417 (right!57206 lt!2693858)) Nil!74450)) (= lt!2694127 (list!19417 call!735337))))))

(assert (= (and d!2370123 c!1456647) b!7930757))

(assert (= (and d!2370123 (not c!1456647)) b!7930758))

(assert (= (and d!2370123 res!3146733) b!7930759))

(assert (= (and b!7930759 res!3146732) b!7930760))

(declare-fun m!8315562 () Bool)

(assert (=> d!2370123 m!8315562))

(assert (=> d!2370123 m!8314744))

(declare-fun m!8315564 () Bool)

(assert (=> d!2370123 m!8315564))

(assert (=> d!2370123 m!8313326))

(declare-fun m!8315566 () Bool)

(assert (=> d!2370123 m!8315566))

(assert (=> b!7930758 m!8313326))

(declare-fun m!8315568 () Bool)

(assert (=> b!7930758 m!8315568))

(declare-fun m!8315570 () Bool)

(assert (=> b!7930759 m!8315570))

(assert (=> b!7930759 m!8314744))

(declare-fun m!8315572 () Bool)

(assert (=> b!7930759 m!8315572))

(assert (=> b!7930759 m!8313326))

(declare-fun m!8315574 () Bool)

(assert (=> b!7930759 m!8315574))

(assert (=> d!2369821 d!2370123))

(declare-fun d!2370125 () Bool)

(declare-fun c!1456648 () Bool)

(assert (=> d!2370125 (= c!1456648 ((_ is Empty!15904) call!735337))))

(declare-fun e!4680134 () List!74574)

(assert (=> d!2370125 (= (list!19417 call!735337) e!4680134)))

(declare-fun b!7930761 () Bool)

(assert (=> b!7930761 (= e!4680134 Nil!74450)))

(declare-fun b!7930764 () Bool)

(declare-fun e!4680135 () List!74574)

(assert (=> b!7930764 (= e!4680135 (++!18261 (list!19417 (left!56876 call!735337)) (list!19417 (right!57206 call!735337))))))

(declare-fun b!7930763 () Bool)

(assert (=> b!7930763 (= e!4680135 (list!19419 (xs!19294 call!735337)))))

(declare-fun b!7930762 () Bool)

(assert (=> b!7930762 (= e!4680134 e!4680135)))

(declare-fun c!1456649 () Bool)

(assert (=> b!7930762 (= c!1456649 ((_ is Leaf!30237) call!735337))))

(assert (= (and d!2370125 c!1456648) b!7930761))

(assert (= (and d!2370125 (not c!1456648)) b!7930762))

(assert (= (and b!7930762 c!1456649) b!7930763))

(assert (= (and b!7930762 (not c!1456649)) b!7930764))

(declare-fun m!8315576 () Bool)

(assert (=> b!7930764 m!8315576))

(declare-fun m!8315578 () Bool)

(assert (=> b!7930764 m!8315578))

(assert (=> b!7930764 m!8315576))

(assert (=> b!7930764 m!8315578))

(declare-fun m!8315580 () Bool)

(assert (=> b!7930764 m!8315580))

(declare-fun m!8315582 () Bool)

(assert (=> b!7930763 m!8315582))

(assert (=> d!2369821 d!2370125))

(assert (=> d!2369821 d!2369839))

(declare-fun d!2370127 () Bool)

(assert (=> d!2370127 (= (height!2219 (left!56876 (right!57206 lt!2693719))) (ite ((_ is Empty!15904) (left!56876 (right!57206 lt!2693719))) 0 (ite ((_ is Leaf!30237) (left!56876 (right!57206 lt!2693719))) 1 (cheight!16115 (left!56876 (right!57206 lt!2693719))))))))

(assert (=> b!7929988 d!2370127))

(declare-fun d!2370129 () Bool)

(assert (=> d!2370129 (= (height!2219 (right!57206 (right!57206 lt!2693719))) (ite ((_ is Empty!15904) (right!57206 (right!57206 lt!2693719))) 0 (ite ((_ is Leaf!30237) (right!57206 (right!57206 lt!2693719))) 1 (cheight!16115 (right!57206 (right!57206 lt!2693719))))))))

(assert (=> b!7929988 d!2370129))

(declare-fun b!7930765 () Bool)

(declare-fun res!3146737 () Bool)

(declare-fun e!4680136 () Bool)

(assert (=> b!7930765 (=> (not res!3146737) (not e!4680136))))

(assert (=> b!7930765 (= res!3146737 (isBalanced!4530 (left!56876 (right!57206 (left!56876 lt!2693719)))))))

(declare-fun d!2370131 () Bool)

(declare-fun res!3146734 () Bool)

(declare-fun e!4680137 () Bool)

(assert (=> d!2370131 (=> res!3146734 e!4680137)))

(assert (=> d!2370131 (= res!3146734 (not ((_ is Node!15904) (right!57206 (left!56876 lt!2693719)))))))

(assert (=> d!2370131 (= (isBalanced!4530 (right!57206 (left!56876 lt!2693719))) e!4680137)))

(declare-fun b!7930766 () Bool)

(declare-fun res!3146739 () Bool)

(assert (=> b!7930766 (=> (not res!3146739) (not e!4680136))))

(assert (=> b!7930766 (= res!3146739 (isBalanced!4530 (right!57206 (right!57206 (left!56876 lt!2693719)))))))

(declare-fun b!7930767 () Bool)

(declare-fun res!3146735 () Bool)

(assert (=> b!7930767 (=> (not res!3146735) (not e!4680136))))

(assert (=> b!7930767 (= res!3146735 (not (isEmpty!42779 (left!56876 (right!57206 (left!56876 lt!2693719))))))))

(declare-fun b!7930768 () Bool)

(declare-fun res!3146736 () Bool)

(assert (=> b!7930768 (=> (not res!3146736) (not e!4680136))))

(assert (=> b!7930768 (= res!3146736 (<= (- (height!2219 (left!56876 (right!57206 (left!56876 lt!2693719)))) (height!2219 (right!57206 (right!57206 (left!56876 lt!2693719))))) 1))))

(declare-fun b!7930769 () Bool)

(assert (=> b!7930769 (= e!4680137 e!4680136)))

(declare-fun res!3146738 () Bool)

(assert (=> b!7930769 (=> (not res!3146738) (not e!4680136))))

(assert (=> b!7930769 (= res!3146738 (<= (- 1) (- (height!2219 (left!56876 (right!57206 (left!56876 lt!2693719)))) (height!2219 (right!57206 (right!57206 (left!56876 lt!2693719)))))))))

(declare-fun b!7930770 () Bool)

(assert (=> b!7930770 (= e!4680136 (not (isEmpty!42779 (right!57206 (right!57206 (left!56876 lt!2693719))))))))

(assert (= (and d!2370131 (not res!3146734)) b!7930769))

(assert (= (and b!7930769 res!3146738) b!7930768))

(assert (= (and b!7930768 res!3146736) b!7930765))

(assert (= (and b!7930765 res!3146737) b!7930766))

(assert (= (and b!7930766 res!3146739) b!7930767))

(assert (= (and b!7930767 res!3146735) b!7930770))

(declare-fun m!8315584 () Bool)

(assert (=> b!7930770 m!8315584))

(declare-fun m!8315586 () Bool)

(assert (=> b!7930769 m!8315586))

(declare-fun m!8315588 () Bool)

(assert (=> b!7930769 m!8315588))

(declare-fun m!8315590 () Bool)

(assert (=> b!7930766 m!8315590))

(declare-fun m!8315592 () Bool)

(assert (=> b!7930765 m!8315592))

(assert (=> b!7930768 m!8315586))

(assert (=> b!7930768 m!8315588))

(declare-fun m!8315594 () Bool)

(assert (=> b!7930767 m!8315594))

(assert (=> b!7930340 d!2370131))

(declare-fun d!2370133 () Bool)

(declare-fun e!4680139 () Bool)

(assert (=> d!2370133 e!4680139))

(declare-fun res!3146741 () Bool)

(assert (=> d!2370133 (=> (not res!3146741) (not e!4680139))))

(declare-fun lt!2694128 () List!74574)

(assert (=> d!2370133 (= res!3146741 (= (content!15785 lt!2694128) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 t!4440)))) (content!15785 (list!19417 (right!57206 t!4440))))))))

(declare-fun e!4680138 () List!74574)

(assert (=> d!2370133 (= lt!2694128 e!4680138)))

(declare-fun c!1456650 () Bool)

(assert (=> d!2370133 (= c!1456650 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 t!4440)))))))

(assert (=> d!2370133 (= (++!18261 (t!390205 (list!19417 (left!56876 t!4440))) (list!19417 (right!57206 t!4440))) lt!2694128)))

(declare-fun b!7930772 () Bool)

(assert (=> b!7930772 (= e!4680138 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 t!4440)))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 t!4440)))) (list!19417 (right!57206 t!4440)))))))

(declare-fun b!7930771 () Bool)

(assert (=> b!7930771 (= e!4680138 (list!19417 (right!57206 t!4440)))))

(declare-fun b!7930773 () Bool)

(declare-fun res!3146740 () Bool)

(assert (=> b!7930773 (=> (not res!3146740) (not e!4680139))))

(assert (=> b!7930773 (= res!3146740 (= (size!43253 lt!2694128) (+ (size!43253 (t!390205 (list!19417 (left!56876 t!4440)))) (size!43253 (list!19417 (right!57206 t!4440))))))))

(declare-fun b!7930774 () Bool)

(assert (=> b!7930774 (= e!4680139 (or (not (= (list!19417 (right!57206 t!4440)) Nil!74450)) (= lt!2694128 (t!390205 (list!19417 (left!56876 t!4440))))))))

(assert (= (and d!2370133 c!1456650) b!7930771))

(assert (= (and d!2370133 (not c!1456650)) b!7930772))

(assert (= (and d!2370133 res!3146741) b!7930773))

(assert (= (and b!7930773 res!3146740) b!7930774))

(declare-fun m!8315596 () Bool)

(assert (=> d!2370133 m!8315596))

(assert (=> d!2370133 m!8315538))

(assert (=> d!2370133 m!8312818))

(assert (=> d!2370133 m!8313730))

(assert (=> b!7930772 m!8312818))

(declare-fun m!8315598 () Bool)

(assert (=> b!7930772 m!8315598))

(declare-fun m!8315600 () Bool)

(assert (=> b!7930773 m!8315600))

(declare-fun m!8315602 () Bool)

(assert (=> b!7930773 m!8315602))

(assert (=> b!7930773 m!8312818))

(assert (=> b!7930773 m!8313720))

(assert (=> b!7930187 d!2370133))

(declare-fun d!2370135 () Bool)

(assert (=> d!2370135 (= (height!2219 lt!2693992) (ite ((_ is Empty!15904) lt!2693992) 0 (ite ((_ is Leaf!30237) lt!2693992) 1 (cheight!16115 lt!2693992))))))

(assert (=> b!7930167 d!2370135))

(declare-fun d!2370137 () Bool)

(assert (=> d!2370137 (= (height!2219 (left!56876 (right!57206 (right!57206 t!4440)))) (ite ((_ is Empty!15904) (left!56876 (right!57206 (right!57206 t!4440)))) 0 (ite ((_ is Leaf!30237) (left!56876 (right!57206 (right!57206 t!4440)))) 1 (cheight!16115 (left!56876 (right!57206 (right!57206 t!4440)))))))))

(assert (=> b!7930167 d!2370137))

(declare-fun b!7930775 () Bool)

(declare-fun e!4680141 () Conc!15904)

(declare-fun call!735380 () IArray!31869)

(assert (=> b!7930775 (= e!4680141 (Leaf!30237 call!735380 1))))

(declare-fun b!7930776 () Bool)

(declare-fun res!3146744 () Bool)

(declare-fun e!4680142 () Bool)

(assert (=> b!7930776 (=> (not res!3146744) (not e!4680142))))

(declare-fun lt!2694141 () Conc!15904)

(assert (=> b!7930776 (= res!3146744 (<= (height!2219 (right!57206 (right!57206 (right!57206 t!4440)))) (height!2219 lt!2694141)))))

(declare-fun c!1456652 () Bool)

(declare-fun lt!2694146 () List!74574)

(declare-fun call!735378 () List!74574)

(declare-fun bm!735372 () Bool)

(declare-fun call!735382 () List!74574)

(declare-fun lt!2694138 () List!74574)

(declare-fun lt!2694145 () List!74574)

(assert (=> bm!735372 (= call!735382 (++!18261 (ite c!1456652 call!735378 lt!2694145) (ite c!1456652 lt!2694146 lt!2694138)))))

(declare-fun b!7930777 () Bool)

(declare-fun e!4680144 () Conc!15904)

(declare-fun call!735381 () Conc!15904)

(declare-fun lt!2694132 () Conc!15904)

(assert (=> b!7930777 (= e!4680144 (<>!426 call!735381 (right!57206 lt!2694132)))))

(declare-fun lt!2694134 () List!74574)

(declare-fun call!735384 () List!74574)

(assert (=> b!7930777 (= lt!2694134 call!735384)))

(declare-fun call!735377 () List!74574)

(assert (=> b!7930777 (= lt!2694145 call!735377)))

(assert (=> b!7930777 (= lt!2694138 (list!19417 (right!57206 lt!2694132)))))

(declare-fun lt!2694142 () Unit!169569)

(declare-fun call!735385 () Unit!169569)

(assert (=> b!7930777 (= lt!2694142 call!735385)))

(declare-fun call!735379 () List!74574)

(assert (=> b!7930777 (= (++!18261 call!735379 lt!2694138) (++!18261 lt!2694134 call!735382))))

(declare-fun lt!2694130 () Unit!169569)

(assert (=> b!7930777 (= lt!2694130 lt!2694142)))

(declare-fun lt!2694139 () List!74574)

(assert (=> b!7930777 (= lt!2694139 call!735384)))

(declare-fun lt!2694137 () List!74574)

(assert (=> b!7930777 (= lt!2694137 (list!19417 (right!57206 (right!57206 (right!57206 (right!57206 t!4440))))))))

(declare-fun lt!2694140 () List!74574)

(assert (=> b!7930777 (= lt!2694140 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2694129 () Unit!169569)

(assert (=> b!7930777 (= lt!2694129 (lemmaConcatAssociativity!3164 lt!2694139 lt!2694137 lt!2694140))))

(declare-fun call!735383 () List!74574)

(assert (=> b!7930777 (= (++!18261 call!735378 lt!2694140) (++!18261 lt!2694139 call!735383))))

(declare-fun lt!2694144 () Unit!169569)

(assert (=> b!7930777 (= lt!2694144 lt!2694129)))

(declare-fun b!7930778 () Bool)

(declare-fun e!4680145 () Conc!15904)

(assert (=> b!7930778 (= e!4680145 (ite c!1456652 lt!2694132 (left!56876 lt!2694132)))))

(declare-fun b!7930779 () Bool)

(declare-fun c!1456651 () Bool)

(assert (=> b!7930779 (= c!1456651 (< (csize!32039 (right!57206 (right!57206 (right!57206 t!4440)))) 512))))

(declare-fun e!4680143 () Conc!15904)

(declare-fun e!4680140 () Conc!15904)

(assert (=> b!7930779 (= e!4680143 e!4680140)))

(declare-fun bm!735373 () Bool)

(declare-fun lt!2694135 () List!74574)

(assert (=> bm!735373 (= call!735383 (++!18261 (ite c!1456652 lt!2694135 lt!2694137) (ite c!1456652 call!735379 lt!2694140)))))

(declare-fun b!7930780 () Bool)

(declare-fun call!735386 () Conc!15904)

(assert (=> b!7930780 (= e!4680140 call!735386)))

(declare-fun bm!735374 () Bool)

(declare-fun lt!2694133 () List!74574)

(assert (=> bm!735374 (= call!735385 (lemmaConcatAssociativity!3164 (ite c!1456652 lt!2694135 lt!2694134) (ite c!1456652 lt!2694133 lt!2694145) (ite c!1456652 lt!2694146 lt!2694138)))))

(declare-fun bm!735375 () Bool)

(assert (=> bm!735375 (= call!735379 (++!18261 (ite c!1456652 lt!2694133 lt!2694134) (ite c!1456652 lt!2694146 lt!2694145)))))

(declare-fun b!7930781 () Bool)

(assert (=> b!7930781 (= e!4680145 (Leaf!30237 call!735380 1))))

(declare-fun bm!735376 () Bool)

(assert (=> bm!735376 (= call!735380 (fill!283 1 v!5484))))

(declare-fun bm!735377 () Bool)

(declare-fun c!1456654 () Bool)

(declare-fun c!1456655 () Bool)

(assert (=> bm!735377 (= c!1456654 c!1456655)))

(assert (=> bm!735377 (= call!735386 (<>!426 (ite c!1456655 (left!56876 (right!57206 (right!57206 (right!57206 t!4440)))) (right!57206 (right!57206 (right!57206 t!4440)))) e!4680145))))

(declare-fun b!7930782 () Bool)

(assert (=> b!7930782 (= e!4680140 (Leaf!30237 (append!1150 (xs!19294 (right!57206 (right!57206 (right!57206 t!4440)))) v!5484) (+ (csize!32039 (right!57206 (right!57206 (right!57206 t!4440)))) 1)))))

(declare-fun lt!2694143 () List!74574)

(assert (=> b!7930782 (= lt!2694143 ($colon+!317 (list!19419 (xs!19294 (right!57206 (right!57206 (right!57206 t!4440))))) v!5484))))

(declare-fun b!7930783 () Bool)

(assert (=> b!7930783 (= e!4680141 e!4680143)))

(assert (=> b!7930783 (= c!1456655 ((_ is Node!15904) (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7930784 () Bool)

(assert (=> b!7930784 (= e!4680144 call!735381)))

(assert (=> b!7930784 (= lt!2694135 call!735377)))

(assert (=> b!7930784 (= lt!2694133 call!735384)))

(assert (=> b!7930784 (= lt!2694146 (Cons!74450 v!5484 Nil!74450))))

(declare-fun lt!2694136 () Unit!169569)

(assert (=> b!7930784 (= lt!2694136 call!735385)))

(assert (=> b!7930784 (= call!735382 call!735383)))

(declare-fun lt!2694131 () Unit!169569)

(assert (=> b!7930784 (= lt!2694131 lt!2694136)))

(declare-fun b!7930785 () Bool)

(assert (=> b!7930785 (= c!1456652 (<= (height!2219 lt!2694132) (+ (height!2219 (left!56876 (right!57206 (right!57206 (right!57206 t!4440))))) 1)))))

(assert (=> b!7930785 (= lt!2694132 (append!1148 (right!57206 (right!57206 (right!57206 (right!57206 t!4440)))) v!5484))))

(assert (=> b!7930785 (= e!4680143 e!4680144)))

(declare-fun b!7930786 () Bool)

(assert (=> b!7930786 (= e!4680142 (= (list!19417 lt!2694141) ($colon+!317 (list!19417 (right!57206 (right!57206 (right!57206 t!4440)))) v!5484)))))

(declare-fun bm!735378 () Bool)

(assert (=> bm!735378 (= call!735384 (list!19417 (ite c!1456652 (right!57206 (right!57206 (right!57206 (right!57206 t!4440)))) (left!56876 (right!57206 (right!57206 (right!57206 t!4440)))))))))

(declare-fun bm!735379 () Bool)

(assert (=> bm!735379 (= call!735381 call!735386)))

(declare-fun bm!735380 () Bool)

(assert (=> bm!735380 (= call!735377 (list!19417 (ite c!1456652 (left!56876 (right!57206 (right!57206 (right!57206 t!4440)))) (left!56876 lt!2694132))))))

(declare-fun b!7930787 () Bool)

(declare-fun res!3146743 () Bool)

(assert (=> b!7930787 (=> (not res!3146743) (not e!4680142))))

(assert (=> b!7930787 (= res!3146743 (<= (height!2219 lt!2694141) (+ (height!2219 (right!57206 (right!57206 (right!57206 t!4440)))) 1)))))

(declare-fun d!2370139 () Bool)

(assert (=> d!2370139 e!4680142))

(declare-fun res!3146742 () Bool)

(assert (=> d!2370139 (=> (not res!3146742) (not e!4680142))))

(assert (=> d!2370139 (= res!3146742 (isBalanced!4530 lt!2694141))))

(assert (=> d!2370139 (= lt!2694141 e!4680141)))

(declare-fun c!1456653 () Bool)

(assert (=> d!2370139 (= c!1456653 ((_ is Empty!15904) (right!57206 (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2370139 (isBalanced!4530 (right!57206 (right!57206 (right!57206 t!4440))))))

(assert (=> d!2370139 (= (append!1148 (right!57206 (right!57206 (right!57206 t!4440))) v!5484) lt!2694141)))

(declare-fun bm!735381 () Bool)

(assert (=> bm!735381 (= call!735378 (++!18261 (ite c!1456652 lt!2694135 lt!2694139) (ite c!1456652 lt!2694133 lt!2694137)))))

(assert (= (and d!2370139 c!1456653) b!7930775))

(assert (= (and d!2370139 (not c!1456653)) b!7930783))

(assert (= (and b!7930783 c!1456655) b!7930785))

(assert (= (and b!7930783 (not c!1456655)) b!7930779))

(assert (= (and b!7930785 c!1456652) b!7930784))

(assert (= (and b!7930785 (not c!1456652)) b!7930777))

(assert (= (or b!7930784 b!7930777) bm!735380))

(assert (= (or b!7930784 b!7930777) bm!735379))

(assert (= (or b!7930784 b!7930777) bm!735378))

(assert (= (or b!7930784 b!7930777) bm!735381))

(assert (= (or b!7930784 b!7930777) bm!735375))

(assert (= (or b!7930784 b!7930777) bm!735374))

(assert (= (or b!7930784 b!7930777) bm!735372))

(assert (= (or b!7930784 b!7930777) bm!735373))

(assert (= (and b!7930779 c!1456651) b!7930782))

(assert (= (and b!7930779 (not c!1456651)) b!7930780))

(assert (= (or bm!735379 b!7930780) bm!735377))

(assert (= (and bm!735377 c!1456654) b!7930778))

(assert (= (and bm!735377 (not c!1456654)) b!7930781))

(assert (= (or b!7930775 b!7930781) bm!735376))

(assert (= (and d!2370139 res!3146742) b!7930776))

(assert (= (and b!7930776 res!3146744) b!7930787))

(assert (= (and b!7930787 res!3146743) b!7930786))

(declare-fun m!8315604 () Bool)

(assert (=> d!2370139 m!8315604))

(assert (=> d!2370139 m!8315180))

(declare-fun m!8315606 () Bool)

(assert (=> b!7930785 m!8315606))

(declare-fun m!8315608 () Bool)

(assert (=> b!7930785 m!8315608))

(declare-fun m!8315610 () Bool)

(assert (=> b!7930785 m!8315610))

(declare-fun m!8315612 () Bool)

(assert (=> bm!735375 m!8315612))

(declare-fun m!8315614 () Bool)

(assert (=> b!7930786 m!8315614))

(assert (=> b!7930786 m!8313502))

(assert (=> b!7930786 m!8313502))

(declare-fun m!8315616 () Bool)

(assert (=> b!7930786 m!8315616))

(declare-fun m!8315618 () Bool)

(assert (=> bm!735381 m!8315618))

(declare-fun m!8315620 () Bool)

(assert (=> bm!735372 m!8315620))

(declare-fun m!8315622 () Bool)

(assert (=> bm!735380 m!8315622))

(declare-fun m!8315624 () Bool)

(assert (=> b!7930787 m!8315624))

(assert (=> b!7930787 m!8315178))

(assert (=> b!7930776 m!8315178))

(assert (=> b!7930776 m!8315624))

(declare-fun m!8315626 () Bool)

(assert (=> bm!735377 m!8315626))

(declare-fun m!8315628 () Bool)

(assert (=> b!7930777 m!8315628))

(declare-fun m!8315630 () Bool)

(assert (=> b!7930777 m!8315630))

(declare-fun m!8315632 () Bool)

(assert (=> b!7930777 m!8315632))

(declare-fun m!8315634 () Bool)

(assert (=> b!7930777 m!8315634))

(assert (=> b!7930777 m!8315376))

(declare-fun m!8315636 () Bool)

(assert (=> b!7930777 m!8315636))

(declare-fun m!8315638 () Bool)

(assert (=> b!7930777 m!8315638))

(declare-fun m!8315640 () Bool)

(assert (=> b!7930777 m!8315640))

(declare-fun m!8315642 () Bool)

(assert (=> bm!735374 m!8315642))

(declare-fun m!8315644 () Bool)

(assert (=> bm!735378 m!8315644))

(declare-fun m!8315646 () Bool)

(assert (=> bm!735373 m!8315646))

(declare-fun m!8315648 () Bool)

(assert (=> b!7930782 m!8315648))

(assert (=> b!7930782 m!8315380))

(assert (=> b!7930782 m!8315380))

(declare-fun m!8315650 () Bool)

(assert (=> b!7930782 m!8315650))

(assert (=> bm!735376 m!8313348))

(assert (=> b!7930167 d!2370139))

(declare-fun d!2370141 () Bool)

(declare-fun e!4680147 () Bool)

(assert (=> d!2370141 e!4680147))

(declare-fun res!3146746 () Bool)

(assert (=> d!2370141 (=> (not res!3146746) (not e!4680147))))

(declare-fun lt!2694147 () List!74574)

(assert (=> d!2370141 (= res!3146746 (= (content!15785 lt!2694147) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 lt!2693858)))) (content!15785 (list!19417 (right!57206 (right!57206 lt!2693858)))))))))

(declare-fun e!4680146 () List!74574)

(assert (=> d!2370141 (= lt!2694147 e!4680146)))

(declare-fun c!1456656 () Bool)

(assert (=> d!2370141 (= c!1456656 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 lt!2693858)))))))

(assert (=> d!2370141 (= (++!18261 (list!19417 (left!56876 (right!57206 lt!2693858))) (list!19417 (right!57206 (right!57206 lt!2693858)))) lt!2694147)))

(declare-fun b!7930789 () Bool)

(assert (=> b!7930789 (= e!4680146 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 lt!2693858)))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693858)))) (list!19417 (right!57206 (right!57206 lt!2693858))))))))

(declare-fun b!7930788 () Bool)

(assert (=> b!7930788 (= e!4680146 (list!19417 (right!57206 (right!57206 lt!2693858))))))

(declare-fun b!7930790 () Bool)

(declare-fun res!3146745 () Bool)

(assert (=> b!7930790 (=> (not res!3146745) (not e!4680147))))

(assert (=> b!7930790 (= res!3146745 (= (size!43253 lt!2694147) (+ (size!43253 (list!19417 (left!56876 (right!57206 lt!2693858)))) (size!43253 (list!19417 (right!57206 (right!57206 lt!2693858)))))))))

(declare-fun b!7930791 () Bool)

(assert (=> b!7930791 (= e!4680147 (or (not (= (list!19417 (right!57206 (right!57206 lt!2693858))) Nil!74450)) (= lt!2694147 (list!19417 (left!56876 (right!57206 lt!2693858))))))))

(assert (= (and d!2370141 c!1456656) b!7930788))

(assert (= (and d!2370141 (not c!1456656)) b!7930789))

(assert (= (and d!2370141 res!3146746) b!7930790))

(assert (= (and b!7930790 res!3146745) b!7930791))

(declare-fun m!8315652 () Bool)

(assert (=> d!2370141 m!8315652))

(assert (=> d!2370141 m!8314836))

(declare-fun m!8315654 () Bool)

(assert (=> d!2370141 m!8315654))

(assert (=> d!2370141 m!8314838))

(declare-fun m!8315656 () Bool)

(assert (=> d!2370141 m!8315656))

(assert (=> b!7930789 m!8314838))

(declare-fun m!8315658 () Bool)

(assert (=> b!7930789 m!8315658))

(declare-fun m!8315660 () Bool)

(assert (=> b!7930790 m!8315660))

(assert (=> b!7930790 m!8314836))

(declare-fun m!8315662 () Bool)

(assert (=> b!7930790 m!8315662))

(assert (=> b!7930790 m!8314838))

(declare-fun m!8315664 () Bool)

(assert (=> b!7930790 m!8315664))

(assert (=> b!7930386 d!2370141))

(declare-fun d!2370143 () Bool)

(declare-fun c!1456657 () Bool)

(assert (=> d!2370143 (= c!1456657 ((_ is Empty!15904) (left!56876 (right!57206 lt!2693858))))))

(declare-fun e!4680148 () List!74574)

(assert (=> d!2370143 (= (list!19417 (left!56876 (right!57206 lt!2693858))) e!4680148)))

(declare-fun b!7930792 () Bool)

(assert (=> b!7930792 (= e!4680148 Nil!74450)))

(declare-fun b!7930795 () Bool)

(declare-fun e!4680149 () List!74574)

(assert (=> b!7930795 (= e!4680149 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693858)))) (list!19417 (right!57206 (left!56876 (right!57206 lt!2693858))))))))

(declare-fun b!7930794 () Bool)

(assert (=> b!7930794 (= e!4680149 (list!19419 (xs!19294 (left!56876 (right!57206 lt!2693858)))))))

(declare-fun b!7930793 () Bool)

(assert (=> b!7930793 (= e!4680148 e!4680149)))

(declare-fun c!1456658 () Bool)

(assert (=> b!7930793 (= c!1456658 ((_ is Leaf!30237) (left!56876 (right!57206 lt!2693858))))))

(assert (= (and d!2370143 c!1456657) b!7930792))

(assert (= (and d!2370143 (not c!1456657)) b!7930793))

(assert (= (and b!7930793 c!1456658) b!7930794))

(assert (= (and b!7930793 (not c!1456658)) b!7930795))

(declare-fun m!8315666 () Bool)

(assert (=> b!7930795 m!8315666))

(declare-fun m!8315668 () Bool)

(assert (=> b!7930795 m!8315668))

(assert (=> b!7930795 m!8315666))

(assert (=> b!7930795 m!8315668))

(declare-fun m!8315670 () Bool)

(assert (=> b!7930795 m!8315670))

(declare-fun m!8315672 () Bool)

(assert (=> b!7930794 m!8315672))

(assert (=> b!7930386 d!2370143))

(declare-fun d!2370145 () Bool)

(declare-fun c!1456659 () Bool)

(assert (=> d!2370145 (= c!1456659 ((_ is Empty!15904) (right!57206 (right!57206 lt!2693858))))))

(declare-fun e!4680150 () List!74574)

(assert (=> d!2370145 (= (list!19417 (right!57206 (right!57206 lt!2693858))) e!4680150)))

(declare-fun b!7930796 () Bool)

(assert (=> b!7930796 (= e!4680150 Nil!74450)))

(declare-fun b!7930799 () Bool)

(declare-fun e!4680151 () List!74574)

(assert (=> b!7930799 (= e!4680151 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693858)))) (list!19417 (right!57206 (right!57206 (right!57206 lt!2693858))))))))

(declare-fun b!7930798 () Bool)

(assert (=> b!7930798 (= e!4680151 (list!19419 (xs!19294 (right!57206 (right!57206 lt!2693858)))))))

(declare-fun b!7930797 () Bool)

(assert (=> b!7930797 (= e!4680150 e!4680151)))

(declare-fun c!1456660 () Bool)

(assert (=> b!7930797 (= c!1456660 ((_ is Leaf!30237) (right!57206 (right!57206 lt!2693858))))))

(assert (= (and d!2370145 c!1456659) b!7930796))

(assert (= (and d!2370145 (not c!1456659)) b!7930797))

(assert (= (and b!7930797 c!1456660) b!7930798))

(assert (= (and b!7930797 (not c!1456660)) b!7930799))

(declare-fun m!8315674 () Bool)

(assert (=> b!7930799 m!8315674))

(declare-fun m!8315676 () Bool)

(assert (=> b!7930799 m!8315676))

(assert (=> b!7930799 m!8315674))

(assert (=> b!7930799 m!8315676))

(declare-fun m!8315678 () Bool)

(assert (=> b!7930799 m!8315678))

(declare-fun m!8315680 () Bool)

(assert (=> b!7930798 m!8315680))

(assert (=> b!7930386 d!2370145))

(declare-fun d!2370147 () Bool)

(declare-fun lt!2694148 () Int)

(assert (=> d!2370147 (>= lt!2694148 0)))

(declare-fun e!4680152 () Int)

(assert (=> d!2370147 (= lt!2694148 e!4680152)))

(declare-fun c!1456661 () Bool)

(assert (=> d!2370147 (= c!1456661 ((_ is Nil!74450) lt!2694014))))

(assert (=> d!2370147 (= (size!43253 lt!2694014) lt!2694148)))

(declare-fun b!7930800 () Bool)

(assert (=> b!7930800 (= e!4680152 0)))

(declare-fun b!7930801 () Bool)

(assert (=> b!7930801 (= e!4680152 (+ 1 (size!43253 (t!390205 lt!2694014))))))

(assert (= (and d!2370147 c!1456661) b!7930800))

(assert (= (and d!2370147 (not c!1456661)) b!7930801))

(declare-fun m!8315682 () Bool)

(assert (=> b!7930801 m!8315682))

(assert (=> b!7930212 d!2370147))

(declare-fun d!2370149 () Bool)

(declare-fun lt!2694149 () Int)

(assert (=> d!2370149 (>= lt!2694149 0)))

(declare-fun e!4680153 () Int)

(assert (=> d!2370149 (= lt!2694149 e!4680153)))

(declare-fun c!1456662 () Bool)

(assert (=> d!2370149 (= c!1456662 ((_ is Nil!74450) (list!19417 lt!2693713)))))

(assert (=> d!2370149 (= (size!43253 (list!19417 lt!2693713)) lt!2694149)))

(declare-fun b!7930802 () Bool)

(assert (=> b!7930802 (= e!4680153 0)))

(declare-fun b!7930803 () Bool)

(assert (=> b!7930803 (= e!4680153 (+ 1 (size!43253 (t!390205 (list!19417 lt!2693713)))))))

(assert (= (and d!2370149 c!1456662) b!7930802))

(assert (= (and d!2370149 (not c!1456662)) b!7930803))

(assert (=> b!7930803 m!8315276))

(assert (=> b!7930212 d!2370149))

(declare-fun d!2370151 () Bool)

(declare-fun lt!2694150 () Int)

(assert (=> d!2370151 (>= lt!2694150 0)))

(declare-fun e!4680154 () Int)

(assert (=> d!2370151 (= lt!2694150 e!4680154)))

(declare-fun c!1456663 () Bool)

(assert (=> d!2370151 (= c!1456663 ((_ is Nil!74450) (list!19417 (right!57206 lt!2693711))))))

(assert (=> d!2370151 (= (size!43253 (list!19417 (right!57206 lt!2693711))) lt!2694150)))

(declare-fun b!7930804 () Bool)

(assert (=> b!7930804 (= e!4680154 0)))

(declare-fun b!7930805 () Bool)

(assert (=> b!7930805 (= e!4680154 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 lt!2693711))))))))

(assert (= (and d!2370151 c!1456663) b!7930804))

(assert (= (and d!2370151 (not c!1456663)) b!7930805))

(declare-fun m!8315684 () Bool)

(assert (=> b!7930805 m!8315684))

(assert (=> b!7930212 d!2370151))

(declare-fun d!2370153 () Bool)

(declare-fun e!4680156 () Bool)

(assert (=> d!2370153 e!4680156))

(declare-fun res!3146748 () Bool)

(assert (=> d!2370153 (=> (not res!3146748) (not e!4680156))))

(declare-fun lt!2694151 () List!74574)

(assert (=> d!2370153 (= res!3146748 (= (content!15785 lt!2694151) ((_ map or) (content!15785 (t!390205 (ite c!1456280 lt!2693861 lt!2693865))) (content!15785 (ite c!1456280 lt!2693859 lt!2693863)))))))

(declare-fun e!4680155 () List!74574)

(assert (=> d!2370153 (= lt!2694151 e!4680155)))

(declare-fun c!1456664 () Bool)

(assert (=> d!2370153 (= c!1456664 ((_ is Nil!74450) (t!390205 (ite c!1456280 lt!2693861 lt!2693865))))))

(assert (=> d!2370153 (= (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693865)) (ite c!1456280 lt!2693859 lt!2693863)) lt!2694151)))

(declare-fun b!7930807 () Bool)

(assert (=> b!7930807 (= e!4680155 (Cons!74450 (h!80898 (t!390205 (ite c!1456280 lt!2693861 lt!2693865))) (++!18261 (t!390205 (t!390205 (ite c!1456280 lt!2693861 lt!2693865))) (ite c!1456280 lt!2693859 lt!2693863))))))

(declare-fun b!7930806 () Bool)

(assert (=> b!7930806 (= e!4680155 (ite c!1456280 lt!2693859 lt!2693863))))

(declare-fun b!7930808 () Bool)

(declare-fun res!3146747 () Bool)

(assert (=> b!7930808 (=> (not res!3146747) (not e!4680156))))

(assert (=> b!7930808 (= res!3146747 (= (size!43253 lt!2694151) (+ (size!43253 (t!390205 (ite c!1456280 lt!2693861 lt!2693865))) (size!43253 (ite c!1456280 lt!2693859 lt!2693863)))))))

(declare-fun b!7930809 () Bool)

(assert (=> b!7930809 (= e!4680156 (or (not (= (ite c!1456280 lt!2693859 lt!2693863) Nil!74450)) (= lt!2694151 (t!390205 (ite c!1456280 lt!2693861 lt!2693865)))))))

(assert (= (and d!2370153 c!1456664) b!7930806))

(assert (= (and d!2370153 (not c!1456664)) b!7930807))

(assert (= (and d!2370153 res!3146748) b!7930808))

(assert (= (and b!7930808 res!3146747) b!7930809))

(declare-fun m!8315686 () Bool)

(assert (=> d!2370153 m!8315686))

(assert (=> d!2370153 m!8315466))

(assert (=> d!2370153 m!8314208))

(declare-fun m!8315688 () Bool)

(assert (=> b!7930807 m!8315688))

(declare-fun m!8315690 () Bool)

(assert (=> b!7930808 m!8315690))

(declare-fun m!8315692 () Bool)

(assert (=> b!7930808 m!8315692))

(assert (=> b!7930808 m!8314216))

(assert (=> b!7930081 d!2370153))

(declare-fun d!2370155 () Bool)

(declare-fun c!1456665 () Bool)

(assert (=> d!2370155 (= c!1456665 ((_ is Nil!74450) lt!2693947))))

(declare-fun e!4680157 () (InoxSet T!145818))

(assert (=> d!2370155 (= (content!15785 lt!2693947) e!4680157)))

(declare-fun b!7930810 () Bool)

(assert (=> b!7930810 (= e!4680157 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930811 () Bool)

(assert (=> b!7930811 (= e!4680157 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693947) true) (content!15785 (t!390205 lt!2693947))))))

(assert (= (and d!2370155 c!1456665) b!7930810))

(assert (= (and d!2370155 (not c!1456665)) b!7930811))

(declare-fun m!8315694 () Bool)

(assert (=> b!7930811 m!8315694))

(declare-fun m!8315696 () Bool)

(assert (=> b!7930811 m!8315696))

(assert (=> d!2369531 d!2370155))

(declare-fun c!1456666 () Bool)

(declare-fun d!2370157 () Bool)

(assert (=> d!2370157 (= c!1456666 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693863)))))

(declare-fun e!4680158 () (InoxSet T!145818))

(assert (=> d!2370157 (= (content!15785 (ite c!1456280 lt!2693861 lt!2693863)) e!4680158)))

(declare-fun b!7930812 () Bool)

(assert (=> b!7930812 (= e!4680158 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930813 () Bool)

(assert (=> b!7930813 (= e!4680158 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693861 lt!2693863)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693861 lt!2693863)))))))

(assert (= (and d!2370157 c!1456666) b!7930812))

(assert (= (and d!2370157 (not c!1456666)) b!7930813))

(declare-fun m!8315698 () Bool)

(assert (=> b!7930813 m!8315698))

(declare-fun m!8315700 () Bool)

(assert (=> b!7930813 m!8315700))

(assert (=> d!2369531 d!2370157))

(declare-fun d!2370159 () Bool)

(declare-fun c!1456667 () Bool)

(assert (=> d!2370159 (= c!1456667 ((_ is Nil!74450) (ite c!1456280 call!735335 lt!2693866)))))

(declare-fun e!4680159 () (InoxSet T!145818))

(assert (=> d!2370159 (= (content!15785 (ite c!1456280 call!735335 lt!2693866)) e!4680159)))

(declare-fun b!7930814 () Bool)

(assert (=> b!7930814 (= e!4680159 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930815 () Bool)

(assert (=> b!7930815 (= e!4680159 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 call!735335 lt!2693866)) true) (content!15785 (t!390205 (ite c!1456280 call!735335 lt!2693866)))))))

(assert (= (and d!2370159 c!1456667) b!7930814))

(assert (= (and d!2370159 (not c!1456667)) b!7930815))

(declare-fun m!8315702 () Bool)

(assert (=> b!7930815 m!8315702))

(declare-fun m!8315704 () Bool)

(assert (=> b!7930815 m!8315704))

(assert (=> d!2369531 d!2370159))

(declare-fun d!2370161 () Bool)

(declare-fun lt!2694152 () Int)

(assert (=> d!2370161 (>= lt!2694152 0)))

(declare-fun e!4680160 () Int)

(assert (=> d!2370161 (= lt!2694152 e!4680160)))

(declare-fun c!1456668 () Bool)

(assert (=> d!2370161 (= c!1456668 ((_ is Nil!74450) (t!390205 lt!2693762)))))

(assert (=> d!2370161 (= (size!43253 (t!390205 lt!2693762)) lt!2694152)))

(declare-fun b!7930816 () Bool)

(assert (=> b!7930816 (= e!4680160 0)))

(declare-fun b!7930817 () Bool)

(assert (=> b!7930817 (= e!4680160 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693762)))))))

(assert (= (and d!2370161 c!1456668) b!7930816))

(assert (= (and d!2370161 (not c!1456668)) b!7930817))

(declare-fun m!8315706 () Bool)

(assert (=> b!7930817 m!8315706))

(assert (=> b!7930199 d!2370161))

(declare-fun d!2370163 () Bool)

(declare-fun e!4680162 () Bool)

(assert (=> d!2370163 e!4680162))

(declare-fun res!3146750 () Bool)

(assert (=> d!2370163 (=> (not res!3146750) (not e!4680162))))

(declare-fun lt!2694153 () List!74574)

(assert (=> d!2370163 (= res!3146750 (= (content!15785 lt!2694153) ((_ map or) (content!15785 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (content!15785 (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))))

(declare-fun e!4680161 () List!74574)

(assert (=> d!2370163 (= lt!2694153 e!4680161)))

(declare-fun c!1456669 () Bool)

(assert (=> d!2370163 (= c!1456669 ((_ is Nil!74450) (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))

(assert (=> d!2370163 (= (++!18261 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) lt!2694153)))

(declare-fun b!7930819 () Bool)

(assert (=> b!7930819 (= e!4680161 (Cons!74450 (h!80898 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (++!18261 (t!390205 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))))

(declare-fun b!7930818 () Bool)

(assert (=> b!7930818 (= e!4680161 (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(declare-fun b!7930820 () Bool)

(declare-fun res!3146749 () Bool)

(assert (=> b!7930820 (=> (not res!3146749) (not e!4680162))))

(assert (=> b!7930820 (= res!3146749 (= (size!43253 lt!2694153) (+ (size!43253 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (size!43253 (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))))

(declare-fun b!7930821 () Bool)

(assert (=> b!7930821 (= e!4680162 (or (not (= (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) Nil!74450)) (= lt!2694153 (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))))

(assert (= (and d!2370163 c!1456669) b!7930818))

(assert (= (and d!2370163 (not c!1456669)) b!7930819))

(assert (= (and d!2370163 res!3146750) b!7930820))

(assert (= (and b!7930820 res!3146749) b!7930821))

(declare-fun m!8315708 () Bool)

(assert (=> d!2370163 m!8315708))

(assert (=> d!2370163 m!8314042))

(declare-fun m!8315710 () Bool)

(assert (=> d!2370163 m!8315710))

(assert (=> d!2370163 m!8314044))

(declare-fun m!8315712 () Bool)

(assert (=> d!2370163 m!8315712))

(assert (=> b!7930819 m!8314044))

(declare-fun m!8315714 () Bool)

(assert (=> b!7930819 m!8315714))

(declare-fun m!8315716 () Bool)

(assert (=> b!7930820 m!8315716))

(assert (=> b!7930820 m!8314042))

(declare-fun m!8315718 () Bool)

(assert (=> b!7930820 m!8315718))

(assert (=> b!7930820 m!8314044))

(declare-fun m!8315720 () Bool)

(assert (=> b!7930820 m!8315720))

(assert (=> b!7930018 d!2370163))

(declare-fun d!2370165 () Bool)

(declare-fun c!1456670 () Bool)

(assert (=> d!2370165 (= c!1456670 ((_ is Empty!15904) (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(declare-fun e!4680163 () List!74574)

(assert (=> d!2370165 (= (list!19417 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) e!4680163)))

(declare-fun b!7930822 () Bool)

(assert (=> b!7930822 (= e!4680163 Nil!74450)))

(declare-fun e!4680164 () List!74574)

(declare-fun b!7930825 () Bool)

(assert (=> b!7930825 (= e!4680164 (++!18261 (list!19417 (left!56876 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (list!19417 (right!57206 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))))

(declare-fun b!7930824 () Bool)

(assert (=> b!7930824 (= e!4680164 (list!19419 (xs!19294 (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))

(declare-fun b!7930823 () Bool)

(assert (=> b!7930823 (= e!4680163 e!4680164)))

(declare-fun c!1456671 () Bool)

(assert (=> b!7930823 (= c!1456671 ((_ is Leaf!30237) (left!56876 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(assert (= (and d!2370165 c!1456670) b!7930822))

(assert (= (and d!2370165 (not c!1456670)) b!7930823))

(assert (= (and b!7930823 c!1456671) b!7930824))

(assert (= (and b!7930823 (not c!1456671)) b!7930825))

(declare-fun m!8315722 () Bool)

(assert (=> b!7930825 m!8315722))

(declare-fun m!8315724 () Bool)

(assert (=> b!7930825 m!8315724))

(assert (=> b!7930825 m!8315722))

(assert (=> b!7930825 m!8315724))

(declare-fun m!8315726 () Bool)

(assert (=> b!7930825 m!8315726))

(declare-fun m!8315728 () Bool)

(assert (=> b!7930824 m!8315728))

(assert (=> b!7930018 d!2370165))

(declare-fun c!1456672 () Bool)

(declare-fun d!2370167 () Bool)

(assert (=> d!2370167 (= c!1456672 ((_ is Empty!15904) (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(declare-fun e!4680165 () List!74574)

(assert (=> d!2370167 (= (list!19417 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))) e!4680165)))

(declare-fun b!7930826 () Bool)

(assert (=> b!7930826 (= e!4680165 Nil!74450)))

(declare-fun e!4680166 () List!74574)

(declare-fun b!7930829 () Bool)

(assert (=> b!7930829 (= e!4680166 (++!18261 (list!19417 (left!56876 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))) (list!19417 (right!57206 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))))

(declare-fun b!7930828 () Bool)

(assert (=> b!7930828 (= e!4680166 (list!19419 (xs!19294 (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858))))))))

(declare-fun b!7930827 () Bool)

(assert (=> b!7930827 (= e!4680165 e!4680166)))

(declare-fun c!1456673 () Bool)

(assert (=> b!7930827 (= c!1456673 ((_ is Leaf!30237) (right!57206 (ite c!1456280 (left!56876 (right!57206 t!4440)) (left!56876 lt!2693858)))))))

(assert (= (and d!2370167 c!1456672) b!7930826))

(assert (= (and d!2370167 (not c!1456672)) b!7930827))

(assert (= (and b!7930827 c!1456673) b!7930828))

(assert (= (and b!7930827 (not c!1456673)) b!7930829))

(declare-fun m!8315730 () Bool)

(assert (=> b!7930829 m!8315730))

(declare-fun m!8315732 () Bool)

(assert (=> b!7930829 m!8315732))

(assert (=> b!7930829 m!8315730))

(assert (=> b!7930829 m!8315732))

(declare-fun m!8315734 () Bool)

(assert (=> b!7930829 m!8315734))

(declare-fun m!8315736 () Bool)

(assert (=> b!7930828 m!8315736))

(assert (=> b!7930018 d!2370167))

(declare-fun d!2370169 () Bool)

(declare-fun lt!2694154 () (_ BitVec 32))

(assert (=> d!2370169 (and (bvsle #b00000000000000000000000000000000 lt!2694154) (bvsle lt!2694154 #b01111111111111111111111111111111))))

(declare-fun e!4680167 () (_ BitVec 32))

(assert (=> d!2370169 (= lt!2694154 e!4680167)))

(declare-fun c!1456674 () Bool)

(assert (=> d!2370169 (= c!1456674 ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(assert (=> d!2370169 (= (isize!121 (list!19417 (right!57206 t!4440))) lt!2694154)))

(declare-fun b!7930830 () Bool)

(assert (=> b!7930830 (= e!4680167 #b00000000000000000000000000000000)))

(declare-fun b!7930831 () Bool)

(declare-fun lt!2694155 () (_ BitVec 32))

(assert (=> b!7930831 (= e!4680167 (ite (= lt!2694155 #b01111111111111111111111111111111) lt!2694155 (bvadd #b00000000000000000000000000000001 lt!2694155)))))

(assert (=> b!7930831 (= lt!2694155 (isize!121 (t!390205 (list!19417 (right!57206 t!4440)))))))

(assert (= (and d!2370169 c!1456674) b!7930830))

(assert (= (and d!2370169 (not c!1456674)) b!7930831))

(declare-fun m!8315738 () Bool)

(assert (=> b!7930831 m!8315738))

(assert (=> b!7929842 d!2370169))

(assert (=> b!7929686 d!2369451))

(assert (=> b!7929686 d!2369453))

(declare-fun d!2370171 () Bool)

(declare-fun lt!2694156 () Int)

(assert (=> d!2370171 (>= lt!2694156 0)))

(declare-fun e!4680168 () Int)

(assert (=> d!2370171 (= lt!2694156 e!4680168)))

(declare-fun c!1456675 () Bool)

(assert (=> d!2370171 (= c!1456675 ((_ is Nil!74450) lt!2693970))))

(assert (=> d!2370171 (= (size!43253 lt!2693970) lt!2694156)))

(declare-fun b!7930832 () Bool)

(assert (=> b!7930832 (= e!4680168 0)))

(declare-fun b!7930833 () Bool)

(assert (=> b!7930833 (= e!4680168 (+ 1 (size!43253 (t!390205 lt!2693970))))))

(assert (= (and d!2370171 c!1456675) b!7930832))

(assert (= (and d!2370171 (not c!1456675)) b!7930833))

(declare-fun m!8315740 () Bool)

(assert (=> b!7930833 m!8315740))

(assert (=> b!7930099 d!2370171))

(declare-fun d!2370173 () Bool)

(declare-fun lt!2694157 () Int)

(assert (=> d!2370173 (>= lt!2694157 0)))

(declare-fun e!4680169 () Int)

(assert (=> d!2370173 (= lt!2694157 e!4680169)))

(declare-fun c!1456676 () Bool)

(assert (=> d!2370173 (= c!1456676 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 t!4440)))))))

(assert (=> d!2370173 (= (size!43253 (list!19417 (left!56876 (left!56876 t!4440)))) lt!2694157)))

(declare-fun b!7930834 () Bool)

(assert (=> b!7930834 (= e!4680169 0)))

(declare-fun b!7930835 () Bool)

(assert (=> b!7930835 (= e!4680169 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 (left!56876 t!4440)))))))))

(assert (= (and d!2370173 c!1456676) b!7930834))

(assert (= (and d!2370173 (not c!1456676)) b!7930835))

(assert (=> b!7930835 m!8315392))

(assert (=> b!7930099 d!2370173))

(declare-fun d!2370175 () Bool)

(declare-fun lt!2694158 () Int)

(assert (=> d!2370175 (>= lt!2694158 0)))

(declare-fun e!4680170 () Int)

(assert (=> d!2370175 (= lt!2694158 e!4680170)))

(declare-fun c!1456677 () Bool)

(assert (=> d!2370175 (= c!1456677 ((_ is Nil!74450) (list!19417 (right!57206 (left!56876 t!4440)))))))

(assert (=> d!2370175 (= (size!43253 (list!19417 (right!57206 (left!56876 t!4440)))) lt!2694158)))

(declare-fun b!7930836 () Bool)

(assert (=> b!7930836 (= e!4680170 0)))

(declare-fun b!7930837 () Bool)

(assert (=> b!7930837 (= e!4680170 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 (left!56876 t!4440)))))))))

(assert (= (and d!2370175 c!1456677) b!7930836))

(assert (= (and d!2370175 (not c!1456677)) b!7930837))

(declare-fun m!8315742 () Bool)

(assert (=> b!7930837 m!8315742))

(assert (=> b!7930099 d!2370175))

(declare-fun d!2370177 () Bool)

(declare-fun lt!2694159 () Int)

(assert (=> d!2370177 (>= lt!2694159 0)))

(declare-fun e!4680171 () Int)

(assert (=> d!2370177 (= lt!2694159 e!4680171)))

(declare-fun c!1456678 () Bool)

(assert (=> d!2370177 (= c!1456678 ((_ is Nil!74450) lt!2693892))))

(assert (=> d!2370177 (= (size!43253 lt!2693892) lt!2694159)))

(declare-fun b!7930838 () Bool)

(assert (=> b!7930838 (= e!4680171 0)))

(declare-fun b!7930839 () Bool)

(assert (=> b!7930839 (= e!4680171 (+ 1 (size!43253 (t!390205 lt!2693892))))))

(assert (= (and d!2370177 c!1456678) b!7930838))

(assert (= (and d!2370177 (not c!1456678)) b!7930839))

(declare-fun m!8315744 () Bool)

(assert (=> b!7930839 m!8315744))

(assert (=> b!7929776 d!2370177))

(assert (=> b!7929776 d!2370011))

(assert (=> b!7929776 d!2369849))

(declare-fun d!2370179 () Bool)

(declare-fun lt!2694160 () Int)

(assert (=> d!2370179 (>= lt!2694160 0)))

(declare-fun e!4680172 () Int)

(assert (=> d!2370179 (= lt!2694160 e!4680172)))

(declare-fun c!1456679 () Bool)

(assert (=> d!2370179 (= c!1456679 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 t!4440)))))))

(assert (=> d!2370179 (= (size!43253 (list!19419 (xs!19294 (right!57206 t!4440)))) lt!2694160)))

(declare-fun b!7930840 () Bool)

(assert (=> b!7930840 (= e!4680172 0)))

(declare-fun b!7930841 () Bool)

(assert (=> b!7930841 (= e!4680172 (+ 1 (size!43253 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))))))))

(assert (= (and d!2370179 c!1456679) b!7930840))

(assert (= (and d!2370179 (not c!1456679)) b!7930841))

(assert (=> b!7930841 m!8315480))

(assert (=> b!7930417 d!2370179))

(assert (=> b!7930417 d!2369555))

(declare-fun d!2370181 () Bool)

(declare-fun e!4680174 () Bool)

(assert (=> d!2370181 e!4680174))

(declare-fun res!3146752 () Bool)

(assert (=> d!2370181 (=> (not res!3146752) (not e!4680174))))

(declare-fun lt!2694161 () List!74574)

(assert (=> d!2370181 (= res!3146752 (= (content!15785 lt!2694161) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 lt!2693719)))) (content!15785 (list!19417 (right!57206 (left!56876 lt!2693719)))))))))

(declare-fun e!4680173 () List!74574)

(assert (=> d!2370181 (= lt!2694161 e!4680173)))

(declare-fun c!1456680 () Bool)

(assert (=> d!2370181 (= c!1456680 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 lt!2693719)))))))

(assert (=> d!2370181 (= (++!18261 (list!19417 (left!56876 (left!56876 lt!2693719))) (list!19417 (right!57206 (left!56876 lt!2693719)))) lt!2694161)))

(declare-fun b!7930843 () Bool)

(assert (=> b!7930843 (= e!4680173 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 lt!2693719)))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693719)))) (list!19417 (right!57206 (left!56876 lt!2693719))))))))

(declare-fun b!7930842 () Bool)

(assert (=> b!7930842 (= e!4680173 (list!19417 (right!57206 (left!56876 lt!2693719))))))

(declare-fun b!7930844 () Bool)

(declare-fun res!3146751 () Bool)

(assert (=> b!7930844 (=> (not res!3146751) (not e!4680174))))

(assert (=> b!7930844 (= res!3146751 (= (size!43253 lt!2694161) (+ (size!43253 (list!19417 (left!56876 (left!56876 lt!2693719)))) (size!43253 (list!19417 (right!57206 (left!56876 lt!2693719)))))))))

(declare-fun b!7930845 () Bool)

(assert (=> b!7930845 (= e!4680174 (or (not (= (list!19417 (right!57206 (left!56876 lt!2693719))) Nil!74450)) (= lt!2694161 (list!19417 (left!56876 (left!56876 lt!2693719))))))))

(assert (= (and d!2370181 c!1456680) b!7930842))

(assert (= (and d!2370181 (not c!1456680)) b!7930843))

(assert (= (and d!2370181 res!3146752) b!7930844))

(assert (= (and b!7930844 res!3146751) b!7930845))

(declare-fun m!8315746 () Bool)

(assert (=> d!2370181 m!8315746))

(assert (=> d!2370181 m!8313646))

(declare-fun m!8315748 () Bool)

(assert (=> d!2370181 m!8315748))

(assert (=> d!2370181 m!8313648))

(declare-fun m!8315750 () Bool)

(assert (=> d!2370181 m!8315750))

(assert (=> b!7930843 m!8313648))

(declare-fun m!8315752 () Bool)

(assert (=> b!7930843 m!8315752))

(declare-fun m!8315754 () Bool)

(assert (=> b!7930844 m!8315754))

(assert (=> b!7930844 m!8313646))

(declare-fun m!8315756 () Bool)

(assert (=> b!7930844 m!8315756))

(assert (=> b!7930844 m!8313648))

(declare-fun m!8315758 () Bool)

(assert (=> b!7930844 m!8315758))

(assert (=> b!7929823 d!2370181))

(declare-fun d!2370183 () Bool)

(declare-fun c!1456681 () Bool)

(assert (=> d!2370183 (= c!1456681 ((_ is Empty!15904) (left!56876 (left!56876 lt!2693719))))))

(declare-fun e!4680175 () List!74574)

(assert (=> d!2370183 (= (list!19417 (left!56876 (left!56876 lt!2693719))) e!4680175)))

(declare-fun b!7930846 () Bool)

(assert (=> b!7930846 (= e!4680175 Nil!74450)))

(declare-fun b!7930849 () Bool)

(declare-fun e!4680176 () List!74574)

(assert (=> b!7930849 (= e!4680176 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 lt!2693719)))) (list!19417 (right!57206 (left!56876 (left!56876 lt!2693719))))))))

(declare-fun b!7930848 () Bool)

(assert (=> b!7930848 (= e!4680176 (list!19419 (xs!19294 (left!56876 (left!56876 lt!2693719)))))))

(declare-fun b!7930847 () Bool)

(assert (=> b!7930847 (= e!4680175 e!4680176)))

(declare-fun c!1456682 () Bool)

(assert (=> b!7930847 (= c!1456682 ((_ is Leaf!30237) (left!56876 (left!56876 lt!2693719))))))

(assert (= (and d!2370183 c!1456681) b!7930846))

(assert (= (and d!2370183 (not c!1456681)) b!7930847))

(assert (= (and b!7930847 c!1456682) b!7930848))

(assert (= (and b!7930847 (not c!1456682)) b!7930849))

(declare-fun m!8315760 () Bool)

(assert (=> b!7930849 m!8315760))

(declare-fun m!8315762 () Bool)

(assert (=> b!7930849 m!8315762))

(assert (=> b!7930849 m!8315760))

(assert (=> b!7930849 m!8315762))

(declare-fun m!8315764 () Bool)

(assert (=> b!7930849 m!8315764))

(declare-fun m!8315766 () Bool)

(assert (=> b!7930848 m!8315766))

(assert (=> b!7929823 d!2370183))

(declare-fun d!2370185 () Bool)

(declare-fun c!1456683 () Bool)

(assert (=> d!2370185 (= c!1456683 ((_ is Empty!15904) (right!57206 (left!56876 lt!2693719))))))

(declare-fun e!4680177 () List!74574)

(assert (=> d!2370185 (= (list!19417 (right!57206 (left!56876 lt!2693719))) e!4680177)))

(declare-fun b!7930850 () Bool)

(assert (=> b!7930850 (= e!4680177 Nil!74450)))

(declare-fun b!7930853 () Bool)

(declare-fun e!4680178 () List!74574)

(assert (=> b!7930853 (= e!4680178 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 lt!2693719)))) (list!19417 (right!57206 (right!57206 (left!56876 lt!2693719))))))))

(declare-fun b!7930852 () Bool)

(assert (=> b!7930852 (= e!4680178 (list!19419 (xs!19294 (right!57206 (left!56876 lt!2693719)))))))

(declare-fun b!7930851 () Bool)

(assert (=> b!7930851 (= e!4680177 e!4680178)))

(declare-fun c!1456684 () Bool)

(assert (=> b!7930851 (= c!1456684 ((_ is Leaf!30237) (right!57206 (left!56876 lt!2693719))))))

(assert (= (and d!2370185 c!1456683) b!7930850))

(assert (= (and d!2370185 (not c!1456683)) b!7930851))

(assert (= (and b!7930851 c!1456684) b!7930852))

(assert (= (and b!7930851 (not c!1456684)) b!7930853))

(declare-fun m!8315768 () Bool)

(assert (=> b!7930853 m!8315768))

(declare-fun m!8315770 () Bool)

(assert (=> b!7930853 m!8315770))

(assert (=> b!7930853 m!8315768))

(assert (=> b!7930853 m!8315770))

(declare-fun m!8315772 () Bool)

(assert (=> b!7930853 m!8315772))

(declare-fun m!8315774 () Bool)

(assert (=> b!7930852 m!8315774))

(assert (=> b!7929823 d!2370185))

(declare-fun b!7930854 () Bool)

(declare-fun res!3146756 () Bool)

(declare-fun e!4680179 () Bool)

(assert (=> b!7930854 (=> (not res!3146756) (not e!4680179))))

(assert (=> b!7930854 (= res!3146756 (isBalanced!4530 (left!56876 lt!2694001)))))

(declare-fun d!2370187 () Bool)

(declare-fun res!3146753 () Bool)

(declare-fun e!4680180 () Bool)

(assert (=> d!2370187 (=> res!3146753 e!4680180)))

(assert (=> d!2370187 (= res!3146753 (not ((_ is Node!15904) lt!2694001)))))

(assert (=> d!2370187 (= (isBalanced!4530 lt!2694001) e!4680180)))

(declare-fun b!7930855 () Bool)

(declare-fun res!3146758 () Bool)

(assert (=> b!7930855 (=> (not res!3146758) (not e!4680179))))

(assert (=> b!7930855 (= res!3146758 (isBalanced!4530 (right!57206 lt!2694001)))))

(declare-fun b!7930856 () Bool)

(declare-fun res!3146754 () Bool)

(assert (=> b!7930856 (=> (not res!3146754) (not e!4680179))))

(assert (=> b!7930856 (= res!3146754 (not (isEmpty!42779 (left!56876 lt!2694001))))))

(declare-fun b!7930857 () Bool)

(declare-fun res!3146755 () Bool)

(assert (=> b!7930857 (=> (not res!3146755) (not e!4680179))))

(assert (=> b!7930857 (= res!3146755 (<= (- (height!2219 (left!56876 lt!2694001)) (height!2219 (right!57206 lt!2694001))) 1))))

(declare-fun b!7930858 () Bool)

(assert (=> b!7930858 (= e!4680180 e!4680179)))

(declare-fun res!3146757 () Bool)

(assert (=> b!7930858 (=> (not res!3146757) (not e!4680179))))

(assert (=> b!7930858 (= res!3146757 (<= (- 1) (- (height!2219 (left!56876 lt!2694001)) (height!2219 (right!57206 lt!2694001)))))))

(declare-fun b!7930859 () Bool)

(assert (=> b!7930859 (= e!4680179 (not (isEmpty!42779 (right!57206 lt!2694001))))))

(assert (= (and d!2370187 (not res!3146753)) b!7930858))

(assert (= (and b!7930858 res!3146757) b!7930857))

(assert (= (and b!7930857 res!3146755) b!7930854))

(assert (= (and b!7930854 res!3146756) b!7930855))

(assert (= (and b!7930855 res!3146758) b!7930856))

(assert (= (and b!7930856 res!3146754) b!7930859))

(declare-fun m!8315776 () Bool)

(assert (=> b!7930859 m!8315776))

(declare-fun m!8315778 () Bool)

(assert (=> b!7930858 m!8315778))

(declare-fun m!8315780 () Bool)

(assert (=> b!7930858 m!8315780))

(declare-fun m!8315782 () Bool)

(assert (=> b!7930855 m!8315782))

(declare-fun m!8315784 () Bool)

(assert (=> b!7930854 m!8315784))

(assert (=> b!7930857 m!8315778))

(assert (=> b!7930857 m!8315780))

(declare-fun m!8315786 () Bool)

(assert (=> b!7930856 m!8315786))

(assert (=> d!2369661 d!2370187))

(assert (=> d!2369661 d!2369971))

(declare-fun d!2370189 () Bool)

(declare-fun c!1456685 () Bool)

(assert (=> d!2370189 (= c!1456685 ((_ is Nil!74450) (t!390205 lt!2693715)))))

(declare-fun e!4680181 () (InoxSet T!145818))

(assert (=> d!2370189 (= (content!15785 (t!390205 lt!2693715)) e!4680181)))

(declare-fun b!7930860 () Bool)

(assert (=> b!7930860 (= e!4680181 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930861 () Bool)

(assert (=> b!7930861 (= e!4680181 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693715)) true) (content!15785 (t!390205 (t!390205 lt!2693715)))))))

(assert (= (and d!2370189 c!1456685) b!7930860))

(assert (= (and d!2370189 (not c!1456685)) b!7930861))

(declare-fun m!8315788 () Bool)

(assert (=> b!7930861 m!8315788))

(declare-fun m!8315790 () Bool)

(assert (=> b!7930861 m!8315790))

(assert (=> b!7929807 d!2370189))

(declare-fun d!2370191 () Bool)

(declare-fun lt!2694162 () Int)

(assert (=> d!2370191 (>= lt!2694162 0)))

(declare-fun e!4680182 () Int)

(assert (=> d!2370191 (= lt!2694162 e!4680182)))

(declare-fun c!1456686 () Bool)

(assert (=> d!2370191 (= c!1456686 ((_ is Nil!74450) (t!390205 (innerList!15992 (xs!19294 t!4440)))))))

(assert (=> d!2370191 (= (size!43253 (t!390205 (innerList!15992 (xs!19294 t!4440)))) lt!2694162)))

(declare-fun b!7930862 () Bool)

(assert (=> b!7930862 (= e!4680182 0)))

(declare-fun b!7930863 () Bool)

(assert (=> b!7930863 (= e!4680182 (+ 1 (size!43253 (t!390205 (t!390205 (innerList!15992 (xs!19294 t!4440)))))))))

(assert (= (and d!2370191 c!1456686) b!7930862))

(assert (= (and d!2370191 (not c!1456686)) b!7930863))

(declare-fun m!8315792 () Bool)

(assert (=> b!7930863 m!8315792))

(assert (=> b!7929743 d!2370191))

(declare-fun d!2370193 () Bool)

(declare-fun e!4680184 () Bool)

(assert (=> d!2370193 e!4680184))

(declare-fun res!3146760 () Bool)

(assert (=> d!2370193 (=> (not res!3146760) (not e!4680184))))

(declare-fun lt!2694163 () List!74574)

(assert (=> d!2370193 (= res!3146760 (= (content!15785 lt!2694163) ((_ map or) (content!15785 (t!390205 (ite c!1456280 lt!2693859 lt!2693860))) (content!15785 (ite c!1456280 lt!2693872 lt!2693871)))))))

(declare-fun e!4680183 () List!74574)

(assert (=> d!2370193 (= lt!2694163 e!4680183)))

(declare-fun c!1456687 () Bool)

(assert (=> d!2370193 (= c!1456687 ((_ is Nil!74450) (t!390205 (ite c!1456280 lt!2693859 lt!2693860))))))

(assert (=> d!2370193 (= (++!18261 (t!390205 (ite c!1456280 lt!2693859 lt!2693860)) (ite c!1456280 lt!2693872 lt!2693871)) lt!2694163)))

(declare-fun b!7930865 () Bool)

(assert (=> b!7930865 (= e!4680183 (Cons!74450 (h!80898 (t!390205 (ite c!1456280 lt!2693859 lt!2693860))) (++!18261 (t!390205 (t!390205 (ite c!1456280 lt!2693859 lt!2693860))) (ite c!1456280 lt!2693872 lt!2693871))))))

(declare-fun b!7930864 () Bool)

(assert (=> b!7930864 (= e!4680183 (ite c!1456280 lt!2693872 lt!2693871))))

(declare-fun b!7930866 () Bool)

(declare-fun res!3146759 () Bool)

(assert (=> b!7930866 (=> (not res!3146759) (not e!4680184))))

(assert (=> b!7930866 (= res!3146759 (= (size!43253 lt!2694163) (+ (size!43253 (t!390205 (ite c!1456280 lt!2693859 lt!2693860))) (size!43253 (ite c!1456280 lt!2693872 lt!2693871)))))))

(declare-fun b!7930867 () Bool)

(assert (=> b!7930867 (= e!4680184 (or (not (= (ite c!1456280 lt!2693872 lt!2693871) Nil!74450)) (= lt!2694163 (t!390205 (ite c!1456280 lt!2693859 lt!2693860)))))))

(assert (= (and d!2370193 c!1456687) b!7930864))

(assert (= (and d!2370193 (not c!1456687)) b!7930865))

(assert (= (and d!2370193 res!3146760) b!7930866))

(assert (= (and b!7930866 res!3146759) b!7930867))

(declare-fun m!8315794 () Bool)

(assert (=> d!2370193 m!8315794))

(assert (=> d!2370193 m!8315516))

(assert (=> d!2370193 m!8314488))

(declare-fun m!8315796 () Bool)

(assert (=> b!7930865 m!8315796))

(declare-fun m!8315798 () Bool)

(assert (=> b!7930866 m!8315798))

(declare-fun m!8315800 () Bool)

(assert (=> b!7930866 m!8315800))

(assert (=> b!7930866 m!8314496))

(assert (=> b!7930229 d!2370193))

(declare-fun d!2370195 () Bool)

(assert (=> d!2370195 (= (max!0 (height!2219 (left!56876 t!4440)) (height!2219 (right!57206 t!4440))) (ite (< (height!2219 (left!56876 t!4440)) (height!2219 (right!57206 t!4440))) (height!2219 (right!57206 t!4440)) (height!2219 (left!56876 t!4440))))))

(assert (=> b!7930046 d!2370195))

(assert (=> b!7930046 d!2369303))

(assert (=> b!7930046 d!2369383))

(declare-fun d!2370197 () Bool)

(declare-fun lt!2694164 () Int)

(assert (=> d!2370197 (>= lt!2694164 0)))

(declare-fun e!4680185 () Int)

(assert (=> d!2370197 (= lt!2694164 e!4680185)))

(declare-fun c!1456688 () Bool)

(assert (=> d!2370197 (= c!1456688 ((_ is Nil!74450) lt!2693936))))

(assert (=> d!2370197 (= (size!43253 lt!2693936) lt!2694164)))

(declare-fun b!7930868 () Bool)

(assert (=> b!7930868 (= e!4680185 0)))

(declare-fun b!7930869 () Bool)

(assert (=> b!7930869 (= e!4680185 (+ 1 (size!43253 (t!390205 lt!2693936))))))

(assert (= (and d!2370197 c!1456688) b!7930868))

(assert (= (and d!2370197 (not c!1456688)) b!7930869))

(declare-fun m!8315802 () Bool)

(assert (=> b!7930869 m!8315802))

(assert (=> b!7929935 d!2370197))

(declare-fun d!2370199 () Bool)

(declare-fun lt!2694165 () Int)

(assert (=> d!2370199 (>= lt!2694165 0)))

(declare-fun e!4680186 () Int)

(assert (=> d!2370199 (= lt!2694165 e!4680186)))

(declare-fun c!1456689 () Bool)

(assert (=> d!2370199 (= c!1456689 ((_ is Nil!74450) (t!390205 (list!19417 t!4440))))))

(assert (=> d!2370199 (= (size!43253 (t!390205 (list!19417 t!4440))) lt!2694165)))

(declare-fun b!7930870 () Bool)

(assert (=> b!7930870 (= e!4680186 0)))

(declare-fun b!7930871 () Bool)

(assert (=> b!7930871 (= e!4680186 (+ 1 (size!43253 (t!390205 (t!390205 (list!19417 t!4440))))))))

(assert (= (and d!2370199 c!1456689) b!7930870))

(assert (= (and d!2370199 (not c!1456689)) b!7930871))

(declare-fun m!8315804 () Bool)

(assert (=> b!7930871 m!8315804))

(assert (=> b!7929935 d!2370199))

(declare-fun d!2370201 () Bool)

(declare-fun lt!2694166 () Bool)

(assert (=> d!2370201 (= lt!2694166 (isEmpty!42782 (list!19417 (left!56876 (right!57206 lt!2693719)))))))

(assert (=> d!2370201 (= lt!2694166 (= (size!43255 (left!56876 (right!57206 lt!2693719))) 0))))

(assert (=> d!2370201 (= (isEmpty!42779 (left!56876 (right!57206 lt!2693719))) lt!2694166)))

(declare-fun bs!1968972 () Bool)

(assert (= bs!1968972 d!2370201))

(assert (=> bs!1968972 m!8313668))

(assert (=> bs!1968972 m!8313668))

(declare-fun m!8315806 () Bool)

(assert (=> bs!1968972 m!8315806))

(declare-fun m!8315808 () Bool)

(assert (=> bs!1968972 m!8315808))

(assert (=> b!7929987 d!2370201))

(declare-fun b!7930872 () Bool)

(declare-fun res!3146764 () Bool)

(declare-fun e!4680187 () Bool)

(assert (=> b!7930872 (=> (not res!3146764) (not e!4680187))))

(assert (=> b!7930872 (= res!3146764 (isBalanced!4530 (left!56876 (left!56876 (left!56876 lt!2693719)))))))

(declare-fun d!2370203 () Bool)

(declare-fun res!3146761 () Bool)

(declare-fun e!4680188 () Bool)

(assert (=> d!2370203 (=> res!3146761 e!4680188)))

(assert (=> d!2370203 (= res!3146761 (not ((_ is Node!15904) (left!56876 (left!56876 lt!2693719)))))))

(assert (=> d!2370203 (= (isBalanced!4530 (left!56876 (left!56876 lt!2693719))) e!4680188)))

(declare-fun b!7930873 () Bool)

(declare-fun res!3146766 () Bool)

(assert (=> b!7930873 (=> (not res!3146766) (not e!4680187))))

(assert (=> b!7930873 (= res!3146766 (isBalanced!4530 (right!57206 (left!56876 (left!56876 lt!2693719)))))))

(declare-fun b!7930874 () Bool)

(declare-fun res!3146762 () Bool)

(assert (=> b!7930874 (=> (not res!3146762) (not e!4680187))))

(assert (=> b!7930874 (= res!3146762 (not (isEmpty!42779 (left!56876 (left!56876 (left!56876 lt!2693719))))))))

(declare-fun b!7930875 () Bool)

(declare-fun res!3146763 () Bool)

(assert (=> b!7930875 (=> (not res!3146763) (not e!4680187))))

(assert (=> b!7930875 (= res!3146763 (<= (- (height!2219 (left!56876 (left!56876 (left!56876 lt!2693719)))) (height!2219 (right!57206 (left!56876 (left!56876 lt!2693719))))) 1))))

(declare-fun b!7930876 () Bool)

(assert (=> b!7930876 (= e!4680188 e!4680187)))

(declare-fun res!3146765 () Bool)

(assert (=> b!7930876 (=> (not res!3146765) (not e!4680187))))

(assert (=> b!7930876 (= res!3146765 (<= (- 1) (- (height!2219 (left!56876 (left!56876 (left!56876 lt!2693719)))) (height!2219 (right!57206 (left!56876 (left!56876 lt!2693719)))))))))

(declare-fun b!7930877 () Bool)

(assert (=> b!7930877 (= e!4680187 (not (isEmpty!42779 (right!57206 (left!56876 (left!56876 lt!2693719))))))))

(assert (= (and d!2370203 (not res!3146761)) b!7930876))

(assert (= (and b!7930876 res!3146765) b!7930875))

(assert (= (and b!7930875 res!3146763) b!7930872))

(assert (= (and b!7930872 res!3146764) b!7930873))

(assert (= (and b!7930873 res!3146766) b!7930874))

(assert (= (and b!7930874 res!3146762) b!7930877))

(declare-fun m!8315810 () Bool)

(assert (=> b!7930877 m!8315810))

(declare-fun m!8315812 () Bool)

(assert (=> b!7930876 m!8315812))

(declare-fun m!8315814 () Bool)

(assert (=> b!7930876 m!8315814))

(declare-fun m!8315816 () Bool)

(assert (=> b!7930873 m!8315816))

(declare-fun m!8315818 () Bool)

(assert (=> b!7930872 m!8315818))

(assert (=> b!7930875 m!8315812))

(assert (=> b!7930875 m!8315814))

(declare-fun m!8315820 () Bool)

(assert (=> b!7930874 m!8315820))

(assert (=> b!7930339 d!2370203))

(declare-fun d!2370205 () Bool)

(declare-fun res!3146767 () Bool)

(declare-fun e!4680189 () Bool)

(assert (=> d!2370205 (=> (not res!3146767) (not e!4680189))))

(assert (=> d!2370205 (= res!3146767 (= (csize!32038 (right!57206 (right!57206 t!4440))) (+ (size!43255 (left!56876 (right!57206 (right!57206 t!4440)))) (size!43255 (right!57206 (right!57206 (right!57206 t!4440)))))))))

(assert (=> d!2370205 (= (inv!95732 (right!57206 (right!57206 t!4440))) e!4680189)))

(declare-fun b!7930878 () Bool)

(declare-fun res!3146768 () Bool)

(assert (=> b!7930878 (=> (not res!3146768) (not e!4680189))))

(assert (=> b!7930878 (= res!3146768 (and (not (= (left!56876 (right!57206 (right!57206 t!4440))) Empty!15904)) (not (= (right!57206 (right!57206 (right!57206 t!4440))) Empty!15904))))))

(declare-fun b!7930879 () Bool)

(declare-fun res!3146769 () Bool)

(assert (=> b!7930879 (=> (not res!3146769) (not e!4680189))))

(assert (=> b!7930879 (= res!3146769 (= (cheight!16115 (right!57206 (right!57206 t!4440))) (+ (max!0 (height!2219 (left!56876 (right!57206 (right!57206 t!4440)))) (height!2219 (right!57206 (right!57206 (right!57206 t!4440))))) 1)))))

(declare-fun b!7930880 () Bool)

(assert (=> b!7930880 (= e!4680189 (<= 0 (cheight!16115 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2370205 res!3146767) b!7930878))

(assert (= (and b!7930878 res!3146768) b!7930879))

(assert (= (and b!7930879 res!3146769) b!7930880))

(declare-fun m!8315822 () Bool)

(assert (=> d!2370205 m!8315822))

(declare-fun m!8315824 () Bool)

(assert (=> d!2370205 m!8315824))

(assert (=> b!7930879 m!8314340))

(assert (=> b!7930879 m!8315178))

(assert (=> b!7930879 m!8314340))

(assert (=> b!7930879 m!8315178))

(declare-fun m!8315826 () Bool)

(assert (=> b!7930879 m!8315826))

(assert (=> b!7929877 d!2370205))

(assert (=> d!2369755 d!2370151))

(assert (=> d!2369755 d!2369225))

(declare-fun d!2370207 () Bool)

(declare-fun e!4680191 () Bool)

(assert (=> d!2370207 e!4680191))

(declare-fun res!3146771 () Bool)

(assert (=> d!2370207 (=> (not res!3146771) (not e!4680191))))

(declare-fun lt!2694167 () List!74574)

(assert (=> d!2370207 (= res!3146771 (= (content!15785 lt!2694167) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 (left!56876 t!4440))))) (content!15785 (list!19417 (right!57206 (left!56876 (left!56876 t!4440))))))))))

(declare-fun e!4680190 () List!74574)

(assert (=> d!2370207 (= lt!2694167 e!4680190)))

(declare-fun c!1456690 () Bool)

(assert (=> d!2370207 (= c!1456690 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 (left!56876 t!4440))))))))

(assert (=> d!2370207 (= (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 t!4440)))) (list!19417 (right!57206 (left!56876 (left!56876 t!4440))))) lt!2694167)))

(declare-fun b!7930882 () Bool)

(assert (=> b!7930882 (= e!4680190 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 (left!56876 t!4440))))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 (left!56876 t!4440))))) (list!19417 (right!57206 (left!56876 (left!56876 t!4440)))))))))

(declare-fun b!7930881 () Bool)

(assert (=> b!7930881 (= e!4680190 (list!19417 (right!57206 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7930883 () Bool)

(declare-fun res!3146770 () Bool)

(assert (=> b!7930883 (=> (not res!3146770) (not e!4680191))))

(assert (=> b!7930883 (= res!3146770 (= (size!43253 lt!2694167) (+ (size!43253 (list!19417 (left!56876 (left!56876 (left!56876 t!4440))))) (size!43253 (list!19417 (right!57206 (left!56876 (left!56876 t!4440))))))))))

(declare-fun b!7930884 () Bool)

(assert (=> b!7930884 (= e!4680191 (or (not (= (list!19417 (right!57206 (left!56876 (left!56876 t!4440)))) Nil!74450)) (= lt!2694167 (list!19417 (left!56876 (left!56876 (left!56876 t!4440)))))))))

(assert (= (and d!2370207 c!1456690) b!7930881))

(assert (= (and d!2370207 (not c!1456690)) b!7930882))

(assert (= (and d!2370207 res!3146771) b!7930883))

(assert (= (and b!7930883 res!3146770) b!7930884))

(declare-fun m!8315828 () Bool)

(assert (=> d!2370207 m!8315828))

(assert (=> d!2370207 m!8314244))

(declare-fun m!8315830 () Bool)

(assert (=> d!2370207 m!8315830))

(assert (=> d!2370207 m!8314246))

(declare-fun m!8315832 () Bool)

(assert (=> d!2370207 m!8315832))

(assert (=> b!7930882 m!8314246))

(declare-fun m!8315834 () Bool)

(assert (=> b!7930882 m!8315834))

(declare-fun m!8315836 () Bool)

(assert (=> b!7930883 m!8315836))

(assert (=> b!7930883 m!8314244))

(declare-fun m!8315838 () Bool)

(assert (=> b!7930883 m!8315838))

(assert (=> b!7930883 m!8314246))

(declare-fun m!8315840 () Bool)

(assert (=> b!7930883 m!8315840))

(assert (=> b!7930104 d!2370207))

(declare-fun d!2370209 () Bool)

(declare-fun c!1456691 () Bool)

(assert (=> d!2370209 (= c!1456691 ((_ is Empty!15904) (left!56876 (left!56876 (left!56876 t!4440)))))))

(declare-fun e!4680192 () List!74574)

(assert (=> d!2370209 (= (list!19417 (left!56876 (left!56876 (left!56876 t!4440)))) e!4680192)))

(declare-fun b!7930885 () Bool)

(assert (=> b!7930885 (= e!4680192 Nil!74450)))

(declare-fun b!7930888 () Bool)

(declare-fun e!4680193 () List!74574)

(assert (=> b!7930888 (= e!4680193 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 (left!56876 t!4440))))) (list!19417 (right!57206 (left!56876 (left!56876 (left!56876 t!4440)))))))))

(declare-fun b!7930887 () Bool)

(assert (=> b!7930887 (= e!4680193 (list!19419 (xs!19294 (left!56876 (left!56876 (left!56876 t!4440))))))))

(declare-fun b!7930886 () Bool)

(assert (=> b!7930886 (= e!4680192 e!4680193)))

(declare-fun c!1456692 () Bool)

(assert (=> b!7930886 (= c!1456692 ((_ is Leaf!30237) (left!56876 (left!56876 (left!56876 t!4440)))))))

(assert (= (and d!2370209 c!1456691) b!7930885))

(assert (= (and d!2370209 (not c!1456691)) b!7930886))

(assert (= (and b!7930886 c!1456692) b!7930887))

(assert (= (and b!7930886 (not c!1456692)) b!7930888))

(declare-fun m!8315842 () Bool)

(assert (=> b!7930888 m!8315842))

(declare-fun m!8315844 () Bool)

(assert (=> b!7930888 m!8315844))

(assert (=> b!7930888 m!8315842))

(assert (=> b!7930888 m!8315844))

(declare-fun m!8315846 () Bool)

(assert (=> b!7930888 m!8315846))

(declare-fun m!8315848 () Bool)

(assert (=> b!7930887 m!8315848))

(assert (=> b!7930104 d!2370209))

(declare-fun d!2370211 () Bool)

(declare-fun c!1456693 () Bool)

(assert (=> d!2370211 (= c!1456693 ((_ is Empty!15904) (right!57206 (left!56876 (left!56876 t!4440)))))))

(declare-fun e!4680194 () List!74574)

(assert (=> d!2370211 (= (list!19417 (right!57206 (left!56876 (left!56876 t!4440)))) e!4680194)))

(declare-fun b!7930889 () Bool)

(assert (=> b!7930889 (= e!4680194 Nil!74450)))

(declare-fun b!7930892 () Bool)

(declare-fun e!4680195 () List!74574)

(assert (=> b!7930892 (= e!4680195 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 (left!56876 t!4440))))) (list!19417 (right!57206 (right!57206 (left!56876 (left!56876 t!4440)))))))))

(declare-fun b!7930891 () Bool)

(assert (=> b!7930891 (= e!4680195 (list!19419 (xs!19294 (right!57206 (left!56876 (left!56876 t!4440))))))))

(declare-fun b!7930890 () Bool)

(assert (=> b!7930890 (= e!4680194 e!4680195)))

(declare-fun c!1456694 () Bool)

(assert (=> b!7930890 (= c!1456694 ((_ is Leaf!30237) (right!57206 (left!56876 (left!56876 t!4440)))))))

(assert (= (and d!2370211 c!1456693) b!7930889))

(assert (= (and d!2370211 (not c!1456693)) b!7930890))

(assert (= (and b!7930890 c!1456694) b!7930891))

(assert (= (and b!7930890 (not c!1456694)) b!7930892))

(declare-fun m!8315850 () Bool)

(assert (=> b!7930892 m!8315850))

(declare-fun m!8315852 () Bool)

(assert (=> b!7930892 m!8315852))

(assert (=> b!7930892 m!8315850))

(assert (=> b!7930892 m!8315852))

(declare-fun m!8315854 () Bool)

(assert (=> b!7930892 m!8315854))

(declare-fun m!8315856 () Bool)

(assert (=> b!7930891 m!8315856))

(assert (=> b!7930104 d!2370211))

(declare-fun d!2370213 () Bool)

(declare-fun e!4680197 () Bool)

(assert (=> d!2370213 e!4680197))

(declare-fun res!3146773 () Bool)

(assert (=> d!2370213 (=> (not res!3146773) (not e!4680197))))

(declare-fun lt!2694168 () List!74574)

(assert (=> d!2370213 (= res!3146773 (= (content!15785 lt!2694168) ((_ map or) (content!15785 (list!19419 (xs!19294 (right!57206 t!4440)))) (content!15785 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun e!4680196 () List!74574)

(assert (=> d!2370213 (= lt!2694168 e!4680196)))

(declare-fun c!1456695 () Bool)

(assert (=> d!2370213 (= c!1456695 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 t!4440)))))))

(assert (=> d!2370213 (= (++!18261 (list!19419 (xs!19294 (right!57206 t!4440))) (Cons!74450 v!5484 Nil!74450)) lt!2694168)))

(declare-fun b!7930894 () Bool)

(assert (=> b!7930894 (= e!4680196 (Cons!74450 (h!80898 (list!19419 (xs!19294 (right!57206 t!4440)))) (++!18261 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930893 () Bool)

(assert (=> b!7930893 (= e!4680196 (Cons!74450 v!5484 Nil!74450))))

(declare-fun b!7930895 () Bool)

(declare-fun res!3146772 () Bool)

(assert (=> b!7930895 (=> (not res!3146772) (not e!4680197))))

(assert (=> b!7930895 (= res!3146772 (= (size!43253 lt!2694168) (+ (size!43253 (list!19419 (xs!19294 (right!57206 t!4440)))) (size!43253 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun b!7930896 () Bool)

(assert (=> b!7930896 (= e!4680197 (or (not (= (Cons!74450 v!5484 Nil!74450) Nil!74450)) (= lt!2694168 (list!19419 (xs!19294 (right!57206 t!4440))))))))

(assert (= (and d!2370213 c!1456695) b!7930893))

(assert (= (and d!2370213 (not c!1456695)) b!7930894))

(assert (= (and d!2370213 res!3146773) b!7930895))

(assert (= (and b!7930895 res!3146772) b!7930896))

(declare-fun m!8315858 () Bool)

(assert (=> d!2370213 m!8315858))

(assert (=> d!2370213 m!8312944))

(assert (=> d!2370213 m!8314712))

(assert (=> d!2370213 m!8314918))

(assert (=> b!7930894 m!8315482))

(declare-fun m!8315860 () Bool)

(assert (=> b!7930895 m!8315860))

(assert (=> b!7930895 m!8312944))

(assert (=> b!7930895 m!8314702))

(assert (=> b!7930895 m!8314922))

(assert (=> b!7930327 d!2370213))

(declare-fun d!2370215 () Bool)

(declare-fun c!1456696 () Bool)

(assert (=> d!2370215 (= c!1456696 ((_ is Nil!74450) lt!2694062))))

(declare-fun e!4680198 () (InoxSet T!145818))

(assert (=> d!2370215 (= (content!15785 lt!2694062) e!4680198)))

(declare-fun b!7930897 () Bool)

(assert (=> b!7930897 (= e!4680198 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930898 () Bool)

(assert (=> b!7930898 (= e!4680198 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694062) true) (content!15785 (t!390205 lt!2694062))))))

(assert (= (and d!2370215 c!1456696) b!7930897))

(assert (= (and d!2370215 (not c!1456696)) b!7930898))

(declare-fun m!8315862 () Bool)

(assert (=> b!7930898 m!8315862))

(declare-fun m!8315864 () Bool)

(assert (=> b!7930898 m!8315864))

(assert (=> d!2369855 d!2370215))

(assert (=> d!2369855 d!2369549))

(declare-fun d!2370217 () Bool)

(declare-fun c!1456697 () Bool)

(assert (=> d!2370217 (= c!1456697 ((_ is Nil!74450) (Cons!74450 v!5484 Nil!74450)))))

(declare-fun e!4680199 () (InoxSet T!145818))

(assert (=> d!2370217 (= (content!15785 (Cons!74450 v!5484 Nil!74450)) e!4680199)))

(declare-fun b!7930899 () Bool)

(assert (=> b!7930899 (= e!4680199 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930900 () Bool)

(assert (=> b!7930900 (= e!4680199 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (Cons!74450 v!5484 Nil!74450)) true) (content!15785 (t!390205 (Cons!74450 v!5484 Nil!74450)))))))

(assert (= (and d!2370217 c!1456697) b!7930899))

(assert (= (and d!2370217 (not c!1456697)) b!7930900))

(declare-fun m!8315866 () Bool)

(assert (=> b!7930900 m!8315866))

(declare-fun m!8315868 () Bool)

(assert (=> b!7930900 m!8315868))

(assert (=> d!2369855 d!2370217))

(declare-fun d!2370219 () Bool)

(declare-fun e!4680201 () Bool)

(assert (=> d!2370219 e!4680201))

(declare-fun res!3146775 () Bool)

(assert (=> d!2370219 (=> (not res!3146775) (not e!4680201))))

(declare-fun lt!2694169 () List!74574)

(assert (=> d!2370219 (= res!3146775 (= (content!15785 lt!2694169) ((_ map or) (content!15785 (ite c!1456280 lt!2693861 lt!2693860)) (content!15785 (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864))))))))

(declare-fun e!4680200 () List!74574)

(assert (=> d!2370219 (= lt!2694169 e!4680200)))

(declare-fun c!1456698 () Bool)

(assert (=> d!2370219 (= c!1456698 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693860)))))

(assert (=> d!2370219 (= (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864))) lt!2694169)))

(declare-fun b!7930902 () Bool)

(assert (=> b!7930902 (= e!4680200 (Cons!74450 (h!80898 (ite c!1456280 lt!2693861 lt!2693860)) (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693860)) (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun b!7930901 () Bool)

(assert (=> b!7930901 (= e!4680200 (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)))))

(declare-fun b!7930903 () Bool)

(declare-fun res!3146774 () Bool)

(assert (=> b!7930903 (=> (not res!3146774) (not e!4680201))))

(assert (=> b!7930903 (= res!3146774 (= (size!43253 lt!2694169) (+ (size!43253 (ite c!1456280 lt!2693861 lt!2693860)) (size!43253 (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864))))))))

(declare-fun b!7930904 () Bool)

(assert (=> b!7930904 (= e!4680201 (or (not (= (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)) Nil!74450)) (= lt!2694169 (ite c!1456280 lt!2693861 lt!2693860))))))

(assert (= (and d!2370219 c!1456698) b!7930901))

(assert (= (and d!2370219 (not c!1456698)) b!7930902))

(assert (= (and d!2370219 res!3146775) b!7930903))

(assert (= (and b!7930903 res!3146774) b!7930904))

(declare-fun m!8315870 () Bool)

(assert (=> d!2370219 m!8315870))

(declare-fun m!8315872 () Bool)

(assert (=> d!2370219 m!8315872))

(assert (=> d!2370219 m!8314034))

(declare-fun m!8315874 () Bool)

(assert (=> d!2370219 m!8315874))

(assert (=> b!7930902 m!8314034))

(declare-fun m!8315876 () Bool)

(assert (=> b!7930902 m!8315876))

(declare-fun m!8315878 () Bool)

(assert (=> b!7930903 m!8315878))

(declare-fun m!8315880 () Bool)

(assert (=> b!7930903 m!8315880))

(assert (=> b!7930903 m!8314034))

(declare-fun m!8315882 () Bool)

(assert (=> b!7930903 m!8315882))

(assert (=> d!2369553 d!2370219))

(declare-fun d!2370221 () Bool)

(declare-fun e!4680203 () Bool)

(assert (=> d!2370221 e!4680203))

(declare-fun res!3146777 () Bool)

(assert (=> d!2370221 (=> (not res!3146777) (not e!4680203))))

(declare-fun lt!2694170 () List!74574)

(assert (=> d!2370221 (= res!3146777 (= (content!15785 lt!2694170) ((_ map or) (content!15785 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871))) (content!15785 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun e!4680202 () List!74574)

(assert (=> d!2370221 (= lt!2694170 e!4680202)))

(declare-fun c!1456699 () Bool)

(assert (=> d!2370221 (= c!1456699 ((_ is Nil!74450) (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871))))))

(assert (=> d!2370221 (= (++!18261 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864)) lt!2694170)))

(declare-fun b!7930906 () Bool)

(assert (=> b!7930906 (= e!4680202 (Cons!74450 (h!80898 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871))) (++!18261 (t!390205 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871))) (ite c!1456280 lt!2693872 lt!2693864))))))

(declare-fun b!7930905 () Bool)

(assert (=> b!7930905 (= e!4680202 (ite c!1456280 lt!2693872 lt!2693864))))

(declare-fun b!7930907 () Bool)

(declare-fun res!3146776 () Bool)

(assert (=> b!7930907 (=> (not res!3146776) (not e!4680203))))

(assert (=> b!7930907 (= res!3146776 (= (size!43253 lt!2694170) (+ (size!43253 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871))) (size!43253 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun b!7930908 () Bool)

(assert (=> b!7930908 (= e!4680203 (or (not (= (ite c!1456280 lt!2693872 lt!2693864) Nil!74450)) (= lt!2694170 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871)))))))

(assert (= (and d!2370221 c!1456699) b!7930905))

(assert (= (and d!2370221 (not c!1456699)) b!7930906))

(assert (= (and d!2370221 res!3146777) b!7930907))

(assert (= (and b!7930907 res!3146776) b!7930908))

(declare-fun m!8315884 () Bool)

(assert (=> d!2370221 m!8315884))

(assert (=> d!2370221 m!8314032))

(declare-fun m!8315886 () Bool)

(assert (=> d!2370221 m!8315886))

(assert (=> d!2370221 m!8313518))

(declare-fun m!8315888 () Bool)

(assert (=> b!7930906 m!8315888))

(declare-fun m!8315890 () Bool)

(assert (=> b!7930907 m!8315890))

(assert (=> b!7930907 m!8314032))

(declare-fun m!8315892 () Bool)

(assert (=> b!7930907 m!8315892))

(assert (=> b!7930907 m!8313528))

(assert (=> d!2369553 d!2370221))

(declare-fun d!2370223 () Bool)

(declare-fun e!4680205 () Bool)

(assert (=> d!2370223 e!4680205))

(declare-fun res!3146779 () Bool)

(assert (=> d!2370223 (=> (not res!3146779) (not e!4680205))))

(declare-fun lt!2694171 () List!74574)

(assert (=> d!2370223 (= res!3146779 (= (content!15785 lt!2694171) ((_ map or) (content!15785 (ite c!1456280 lt!2693861 lt!2693860)) (content!15785 (ite c!1456280 lt!2693859 lt!2693871)))))))

(declare-fun e!4680204 () List!74574)

(assert (=> d!2370223 (= lt!2694171 e!4680204)))

(declare-fun c!1456700 () Bool)

(assert (=> d!2370223 (= c!1456700 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693860)))))

(assert (=> d!2370223 (= (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871)) lt!2694171)))

(declare-fun b!7930910 () Bool)

(assert (=> b!7930910 (= e!4680204 (Cons!74450 (h!80898 (ite c!1456280 lt!2693861 lt!2693860)) (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693860)) (ite c!1456280 lt!2693859 lt!2693871))))))

(declare-fun b!7930909 () Bool)

(assert (=> b!7930909 (= e!4680204 (ite c!1456280 lt!2693859 lt!2693871))))

(declare-fun b!7930911 () Bool)

(declare-fun res!3146778 () Bool)

(assert (=> b!7930911 (=> (not res!3146778) (not e!4680205))))

(assert (=> b!7930911 (= res!3146778 (= (size!43253 lt!2694171) (+ (size!43253 (ite c!1456280 lt!2693861 lt!2693860)) (size!43253 (ite c!1456280 lt!2693859 lt!2693871)))))))

(declare-fun b!7930912 () Bool)

(assert (=> b!7930912 (= e!4680205 (or (not (= (ite c!1456280 lt!2693859 lt!2693871) Nil!74450)) (= lt!2694171 (ite c!1456280 lt!2693861 lt!2693860))))))

(assert (= (and d!2370223 c!1456700) b!7930909))

(assert (= (and d!2370223 (not c!1456700)) b!7930910))

(assert (= (and d!2370223 res!3146779) b!7930911))

(assert (= (and b!7930911 res!3146778) b!7930912))

(declare-fun m!8315894 () Bool)

(assert (=> d!2370223 m!8315894))

(assert (=> d!2370223 m!8315872))

(declare-fun m!8315896 () Bool)

(assert (=> d!2370223 m!8315896))

(declare-fun m!8315898 () Bool)

(assert (=> b!7930910 m!8315898))

(declare-fun m!8315900 () Bool)

(assert (=> b!7930911 m!8315900))

(assert (=> b!7930911 m!8315880))

(declare-fun m!8315902 () Bool)

(assert (=> b!7930911 m!8315902))

(assert (=> d!2369553 d!2370223))

(declare-fun d!2370225 () Bool)

(declare-fun e!4680207 () Bool)

(assert (=> d!2370225 e!4680207))

(declare-fun res!3146781 () Bool)

(assert (=> d!2370225 (=> (not res!3146781) (not e!4680207))))

(declare-fun lt!2694172 () List!74574)

(assert (=> d!2370225 (= res!3146781 (= (content!15785 lt!2694172) ((_ map or) (content!15785 (ite c!1456280 lt!2693859 lt!2693871)) (content!15785 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun e!4680206 () List!74574)

(assert (=> d!2370225 (= lt!2694172 e!4680206)))

(declare-fun c!1456701 () Bool)

(assert (=> d!2370225 (= c!1456701 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693871)))))

(assert (=> d!2370225 (= (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)) lt!2694172)))

(declare-fun b!7930914 () Bool)

(assert (=> b!7930914 (= e!4680206 (Cons!74450 (h!80898 (ite c!1456280 lt!2693859 lt!2693871)) (++!18261 (t!390205 (ite c!1456280 lt!2693859 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864))))))

(declare-fun b!7930913 () Bool)

(assert (=> b!7930913 (= e!4680206 (ite c!1456280 lt!2693872 lt!2693864))))

(declare-fun b!7930915 () Bool)

(declare-fun res!3146780 () Bool)

(assert (=> b!7930915 (=> (not res!3146780) (not e!4680207))))

(assert (=> b!7930915 (= res!3146780 (= (size!43253 lt!2694172) (+ (size!43253 (ite c!1456280 lt!2693859 lt!2693871)) (size!43253 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun b!7930916 () Bool)

(assert (=> b!7930916 (= e!4680207 (or (not (= (ite c!1456280 lt!2693872 lt!2693864) Nil!74450)) (= lt!2694172 (ite c!1456280 lt!2693859 lt!2693871))))))

(assert (= (and d!2370225 c!1456701) b!7930913))

(assert (= (and d!2370225 (not c!1456701)) b!7930914))

(assert (= (and d!2370225 res!3146781) b!7930915))

(assert (= (and b!7930915 res!3146780) b!7930916))

(declare-fun m!8315904 () Bool)

(assert (=> d!2370225 m!8315904))

(assert (=> d!2370225 m!8315896))

(assert (=> d!2370225 m!8313518))

(declare-fun m!8315906 () Bool)

(assert (=> b!7930914 m!8315906))

(declare-fun m!8315908 () Bool)

(assert (=> b!7930915 m!8315908))

(assert (=> b!7930915 m!8315902))

(assert (=> b!7930915 m!8313528))

(assert (=> d!2369553 d!2370225))

(declare-fun d!2370227 () Bool)

(assert (=> d!2370227 (= (++!18261 (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864)) (++!18261 (ite c!1456280 lt!2693861 lt!2693860) (++!18261 (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864))))))

(assert (=> d!2370227 true))

(declare-fun _$15!905 () Unit!169569)

(assert (=> d!2370227 (= (choose!59834 (ite c!1456280 lt!2693861 lt!2693860) (ite c!1456280 lt!2693859 lt!2693871) (ite c!1456280 lt!2693872 lt!2693864)) _$15!905)))

(declare-fun bs!1968973 () Bool)

(assert (= bs!1968973 d!2370227))

(assert (=> bs!1968973 m!8314032))

(assert (=> bs!1968973 m!8314032))

(assert (=> bs!1968973 m!8314040))

(assert (=> bs!1968973 m!8314034))

(assert (=> bs!1968973 m!8314034))

(assert (=> bs!1968973 m!8314036))

(assert (=> d!2369553 d!2370227))

(declare-fun d!2370229 () Bool)

(declare-fun lt!2694173 () Bool)

(assert (=> d!2370229 (= lt!2694173 (isEmpty!42782 (list!19417 (left!56876 (left!56876 lt!2693719)))))))

(assert (=> d!2370229 (= lt!2694173 (= (size!43255 (left!56876 (left!56876 lt!2693719))) 0))))

(assert (=> d!2370229 (= (isEmpty!42779 (left!56876 (left!56876 lt!2693719))) lt!2694173)))

(declare-fun bs!1968974 () Bool)

(assert (= bs!1968974 d!2370229))

(assert (=> bs!1968974 m!8313646))

(assert (=> bs!1968974 m!8313646))

(declare-fun m!8315910 () Bool)

(assert (=> bs!1968974 m!8315910))

(declare-fun m!8315912 () Bool)

(assert (=> bs!1968974 m!8315912))

(assert (=> b!7930341 d!2370229))

(declare-fun d!2370231 () Bool)

(declare-fun lt!2694174 () (_ BitVec 32))

(assert (=> d!2370231 (and (bvsle #b00000000000000000000000000000000 lt!2694174) (bvsle lt!2694174 #b01111111111111111111111111111111))))

(declare-fun e!4680208 () (_ BitVec 32))

(assert (=> d!2370231 (= lt!2694174 e!4680208)))

(declare-fun c!1456702 () Bool)

(assert (=> d!2370231 (= c!1456702 ((_ is Nil!74450) (t!390205 (list!19417 t!4440))))))

(assert (=> d!2370231 (= (isize!121 (t!390205 (list!19417 t!4440))) lt!2694174)))

(declare-fun b!7930917 () Bool)

(assert (=> b!7930917 (= e!4680208 #b00000000000000000000000000000000)))

(declare-fun b!7930918 () Bool)

(declare-fun lt!2694175 () (_ BitVec 32))

(assert (=> b!7930918 (= e!4680208 (ite (= lt!2694175 #b01111111111111111111111111111111) lt!2694175 (bvadd #b00000000000000000000000000000001 lt!2694175)))))

(assert (=> b!7930918 (= lt!2694175 (isize!121 (t!390205 (t!390205 (list!19417 t!4440)))))))

(assert (= (and d!2370231 c!1456702) b!7930917))

(assert (= (and d!2370231 (not c!1456702)) b!7930918))

(declare-fun m!8315914 () Bool)

(assert (=> b!7930918 m!8315914))

(assert (=> b!7929937 d!2370231))

(declare-fun d!2370233 () Bool)

(declare-fun e!4680210 () Bool)

(assert (=> d!2370233 e!4680210))

(declare-fun res!3146783 () Bool)

(assert (=> d!2370233 (=> (not res!3146783) (not e!4680210))))

(declare-fun lt!2694176 () List!74574)

(assert (=> d!2370233 (= res!3146783 (= (content!15785 lt!2694176) ((_ map or) (content!15785 (ite c!1456438 lt!2693993 lt!2693994)) (content!15785 (ite c!1456438 lt!2694006 lt!2694005)))))))

(declare-fun e!4680209 () List!74574)

(assert (=> d!2370233 (= lt!2694176 e!4680209)))

(declare-fun c!1456703 () Bool)

(assert (=> d!2370233 (= c!1456703 ((_ is Nil!74450) (ite c!1456438 lt!2693993 lt!2693994)))))

(assert (=> d!2370233 (= (++!18261 (ite c!1456438 lt!2693993 lt!2693994) (ite c!1456438 lt!2694006 lt!2694005)) lt!2694176)))

(declare-fun b!7930920 () Bool)

(assert (=> b!7930920 (= e!4680209 (Cons!74450 (h!80898 (ite c!1456438 lt!2693993 lt!2693994)) (++!18261 (t!390205 (ite c!1456438 lt!2693993 lt!2693994)) (ite c!1456438 lt!2694006 lt!2694005))))))

(declare-fun b!7930919 () Bool)

(assert (=> b!7930919 (= e!4680209 (ite c!1456438 lt!2694006 lt!2694005))))

(declare-fun b!7930921 () Bool)

(declare-fun res!3146782 () Bool)

(assert (=> b!7930921 (=> (not res!3146782) (not e!4680210))))

(assert (=> b!7930921 (= res!3146782 (= (size!43253 lt!2694176) (+ (size!43253 (ite c!1456438 lt!2693993 lt!2693994)) (size!43253 (ite c!1456438 lt!2694006 lt!2694005)))))))

(declare-fun b!7930922 () Bool)

(assert (=> b!7930922 (= e!4680210 (or (not (= (ite c!1456438 lt!2694006 lt!2694005) Nil!74450)) (= lt!2694176 (ite c!1456438 lt!2693993 lt!2693994))))))

(assert (= (and d!2370233 c!1456703) b!7930919))

(assert (= (and d!2370233 (not c!1456703)) b!7930920))

(assert (= (and d!2370233 res!3146783) b!7930921))

(assert (= (and b!7930921 res!3146782) b!7930922))

(declare-fun m!8315916 () Bool)

(assert (=> d!2370233 m!8315916))

(declare-fun m!8315918 () Bool)

(assert (=> d!2370233 m!8315918))

(declare-fun m!8315920 () Bool)

(assert (=> d!2370233 m!8315920))

(declare-fun m!8315922 () Bool)

(assert (=> b!7930920 m!8315922))

(declare-fun m!8315924 () Bool)

(assert (=> b!7930921 m!8315924))

(declare-fun m!8315926 () Bool)

(assert (=> b!7930921 m!8315926))

(declare-fun m!8315928 () Bool)

(assert (=> b!7930921 m!8315928))

(assert (=> bm!735359 d!2370233))

(assert (=> b!7929989 d!2370127))

(assert (=> b!7929989 d!2370129))

(declare-fun d!2370235 () Bool)

(declare-fun c!1456704 () Bool)

(assert (=> d!2370235 (= c!1456704 ((_ is Nil!74450) lt!2693894))))

(declare-fun e!4680211 () (InoxSet T!145818))

(assert (=> d!2370235 (= (content!15785 lt!2693894) e!4680211)))

(declare-fun b!7930923 () Bool)

(assert (=> b!7930923 (= e!4680211 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930924 () Bool)

(assert (=> b!7930924 (= e!4680211 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693894) true) (content!15785 (t!390205 lt!2693894))))))

(assert (= (and d!2370235 c!1456704) b!7930923))

(assert (= (and d!2370235 (not c!1456704)) b!7930924))

(declare-fun m!8315930 () Bool)

(assert (=> b!7930924 m!8315930))

(declare-fun m!8315932 () Bool)

(assert (=> b!7930924 m!8315932))

(assert (=> d!2369393 d!2370235))

(declare-fun d!2370237 () Bool)

(declare-fun c!1456705 () Bool)

(assert (=> d!2370237 (= c!1456705 ((_ is Nil!74450) (t!390205 lt!2693717)))))

(declare-fun e!4680212 () (InoxSet T!145818))

(assert (=> d!2370237 (= (content!15785 (t!390205 lt!2693717)) e!4680212)))

(declare-fun b!7930925 () Bool)

(assert (=> b!7930925 (= e!4680212 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930926 () Bool)

(assert (=> b!7930926 (= e!4680212 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693717)) true) (content!15785 (t!390205 (t!390205 lt!2693717)))))))

(assert (= (and d!2370237 c!1456705) b!7930925))

(assert (= (and d!2370237 (not c!1456705)) b!7930926))

(declare-fun m!8315934 () Bool)

(assert (=> b!7930926 m!8315934))

(declare-fun m!8315936 () Bool)

(assert (=> b!7930926 m!8315936))

(assert (=> d!2369393 d!2370237))

(assert (=> d!2369393 d!2369473))

(declare-fun d!2370239 () Bool)

(declare-fun c!1456706 () Bool)

(assert (=> d!2370239 (= c!1456706 ((_ is Empty!15904) lt!2694001))))

(declare-fun e!4680213 () List!74574)

(assert (=> d!2370239 (= (list!19417 lt!2694001) e!4680213)))

(declare-fun b!7930927 () Bool)

(assert (=> b!7930927 (= e!4680213 Nil!74450)))

(declare-fun b!7930930 () Bool)

(declare-fun e!4680214 () List!74574)

(assert (=> b!7930930 (= e!4680214 (++!18261 (list!19417 (left!56876 lt!2694001)) (list!19417 (right!57206 lt!2694001))))))

(declare-fun b!7930929 () Bool)

(assert (=> b!7930929 (= e!4680214 (list!19419 (xs!19294 lt!2694001)))))

(declare-fun b!7930928 () Bool)

(assert (=> b!7930928 (= e!4680213 e!4680214)))

(declare-fun c!1456707 () Bool)

(assert (=> b!7930928 (= c!1456707 ((_ is Leaf!30237) lt!2694001))))

(assert (= (and d!2370239 c!1456706) b!7930927))

(assert (= (and d!2370239 (not c!1456706)) b!7930928))

(assert (= (and b!7930928 c!1456707) b!7930929))

(assert (= (and b!7930928 (not c!1456707)) b!7930930))

(declare-fun m!8315938 () Bool)

(assert (=> b!7930930 m!8315938))

(declare-fun m!8315940 () Bool)

(assert (=> b!7930930 m!8315940))

(assert (=> b!7930930 m!8315938))

(assert (=> b!7930930 m!8315940))

(declare-fun m!8315942 () Bool)

(assert (=> b!7930930 m!8315942))

(declare-fun m!8315944 () Bool)

(assert (=> b!7930929 m!8315944))

(assert (=> b!7930168 d!2370239))

(declare-fun b!7930931 () Bool)

(declare-fun res!3146785 () Bool)

(declare-fun e!4680215 () Bool)

(assert (=> b!7930931 (=> (not res!3146785) (not e!4680215))))

(declare-fun lt!2694177 () List!74574)

(assert (=> b!7930931 (= res!3146785 (= (size!43253 lt!2694177) (+ (size!43253 (list!19417 (right!57206 (right!57206 t!4440)))) 1)))))

(declare-fun b!7930932 () Bool)

(declare-fun e!4680217 () Bool)

(declare-fun call!735387 () (_ BitVec 32))

(declare-fun call!735388 () (_ BitVec 32))

(assert (=> b!7930932 (= e!4680217 (= call!735387 (bvadd call!735388 #b00000000000000000000000000000001)))))

(declare-fun b!7930933 () Bool)

(declare-fun res!3146786 () Bool)

(assert (=> b!7930933 (=> (not res!3146786) (not e!4680215))))

(assert (=> b!7930933 (= res!3146786 e!4680217)))

(declare-fun c!1456709 () Bool)

(assert (=> b!7930933 (= c!1456709 (bvslt (isize!121 (list!19417 (right!57206 (right!57206 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7930934 () Bool)

(declare-fun e!4680216 () List!74574)

(assert (=> b!7930934 (= e!4680216 (Cons!74450 (h!80898 (list!19417 (right!57206 (right!57206 t!4440)))) ($colon+!317 (t!390205 (list!19417 (right!57206 (right!57206 t!4440)))) v!5484)))))

(declare-fun b!7930935 () Bool)

(assert (=> b!7930935 (= e!4680215 (= lt!2694177 (++!18261 (list!19417 (right!57206 (right!57206 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930936 () Bool)

(assert (=> b!7930936 (= e!4680216 (Cons!74450 v!5484 (list!19417 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7930937 () Bool)

(declare-fun res!3146787 () Bool)

(assert (=> b!7930937 (=> (not res!3146787) (not e!4680215))))

(assert (=> b!7930937 (= res!3146787 (= (content!15785 lt!2694177) ((_ map or) (content!15785 (list!19417 (right!57206 (right!57206 t!4440)))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735383 () Bool)

(assert (=> bm!735383 (= call!735387 (isize!121 lt!2694177))))

(declare-fun b!7930938 () Bool)

(assert (=> b!7930938 (= e!4680217 (= call!735387 call!735388))))

(declare-fun bm!735382 () Bool)

(assert (=> bm!735382 (= call!735388 (isize!121 (list!19417 (right!57206 (right!57206 t!4440)))))))

(declare-fun d!2370241 () Bool)

(assert (=> d!2370241 e!4680215))

(declare-fun res!3146784 () Bool)

(assert (=> d!2370241 (=> (not res!3146784) (not e!4680215))))

(assert (=> d!2370241 (= res!3146784 ((_ is Cons!74450) lt!2694177))))

(assert (=> d!2370241 (= lt!2694177 e!4680216)))

(declare-fun c!1456708 () Bool)

(assert (=> d!2370241 (= c!1456708 ((_ is Nil!74450) (list!19417 (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2370241 (= ($colon+!317 (list!19417 (right!57206 (right!57206 t!4440))) v!5484) lt!2694177)))

(assert (= (and d!2370241 c!1456708) b!7930936))

(assert (= (and d!2370241 (not c!1456708)) b!7930934))

(assert (= (and d!2370241 res!3146784) b!7930931))

(assert (= (and b!7930931 res!3146785) b!7930933))

(assert (= (and b!7930933 c!1456709) b!7930932))

(assert (= (and b!7930933 (not c!1456709)) b!7930938))

(assert (= (or b!7930932 b!7930938) bm!735383))

(assert (= (or b!7930932 b!7930938) bm!735382))

(assert (= (and b!7930933 res!3146786) b!7930937))

(assert (= (and b!7930937 res!3146787) b!7930935))

(declare-fun m!8315946 () Bool)

(assert (=> b!7930931 m!8315946))

(assert (=> b!7930931 m!8312940))

(assert (=> b!7930931 m!8313486))

(assert (=> b!7930933 m!8312940))

(declare-fun m!8315948 () Bool)

(assert (=> b!7930933 m!8315948))

(assert (=> b!7930935 m!8312940))

(declare-fun m!8315950 () Bool)

(assert (=> b!7930935 m!8315950))

(declare-fun m!8315952 () Bool)

(assert (=> b!7930937 m!8315952))

(assert (=> b!7930937 m!8312940))

(assert (=> b!7930937 m!8313478))

(assert (=> b!7930937 m!8313196))

(assert (=> bm!735382 m!8312940))

(assert (=> bm!735382 m!8315948))

(declare-fun m!8315954 () Bool)

(assert (=> bm!735383 m!8315954))

(declare-fun m!8315956 () Bool)

(assert (=> b!7930934 m!8315956))

(assert (=> b!7930168 d!2370241))

(assert (=> b!7930168 d!2369375))

(assert (=> b!7929683 d!2369673))

(assert (=> b!7929683 d!2369677))

(declare-fun d!2370243 () Bool)

(declare-fun lt!2694178 () Int)

(assert (=> d!2370243 (>= lt!2694178 0)))

(declare-fun e!4680218 () Int)

(assert (=> d!2370243 (= lt!2694178 e!4680218)))

(declare-fun c!1456710 () Bool)

(assert (=> d!2370243 (= c!1456710 ((_ is Nil!74450) lt!2693967))))

(assert (=> d!2370243 (= (size!43253 lt!2693967) lt!2694178)))

(declare-fun b!7930939 () Bool)

(assert (=> b!7930939 (= e!4680218 0)))

(declare-fun b!7930940 () Bool)

(assert (=> b!7930940 (= e!4680218 (+ 1 (size!43253 (t!390205 lt!2693967))))))

(assert (= (and d!2370243 c!1456710) b!7930939))

(assert (= (and d!2370243 (not c!1456710)) b!7930940))

(declare-fun m!8315958 () Bool)

(assert (=> b!7930940 m!8315958))

(assert (=> b!7930082 d!2370243))

(declare-fun d!2370245 () Bool)

(declare-fun lt!2694179 () Int)

(assert (=> d!2370245 (>= lt!2694179 0)))

(declare-fun e!4680219 () Int)

(assert (=> d!2370245 (= lt!2694179 e!4680219)))

(declare-fun c!1456711 () Bool)

(assert (=> d!2370245 (= c!1456711 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693865)))))

(assert (=> d!2370245 (= (size!43253 (ite c!1456280 lt!2693861 lt!2693865)) lt!2694179)))

(declare-fun b!7930941 () Bool)

(assert (=> b!7930941 (= e!4680219 0)))

(declare-fun b!7930942 () Bool)

(assert (=> b!7930942 (= e!4680219 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693861 lt!2693865)))))))

(assert (= (and d!2370245 c!1456711) b!7930941))

(assert (= (and d!2370245 (not c!1456711)) b!7930942))

(assert (=> b!7930942 m!8315692))

(assert (=> b!7930082 d!2370245))

(declare-fun d!2370247 () Bool)

(declare-fun lt!2694180 () Int)

(assert (=> d!2370247 (>= lt!2694180 0)))

(declare-fun e!4680220 () Int)

(assert (=> d!2370247 (= lt!2694180 e!4680220)))

(declare-fun c!1456712 () Bool)

(assert (=> d!2370247 (= c!1456712 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693863)))))

(assert (=> d!2370247 (= (size!43253 (ite c!1456280 lt!2693859 lt!2693863)) lt!2694180)))

(declare-fun b!7930943 () Bool)

(assert (=> b!7930943 (= e!4680220 0)))

(declare-fun b!7930944 () Bool)

(assert (=> b!7930944 (= e!4680220 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693859 lt!2693863)))))))

(assert (= (and d!2370247 c!1456712) b!7930943))

(assert (= (and d!2370247 (not c!1456712)) b!7930944))

(declare-fun m!8315960 () Bool)

(assert (=> b!7930944 m!8315960))

(assert (=> b!7930082 d!2370247))

(declare-fun d!2370249 () Bool)

(declare-fun lt!2694181 () (_ BitVec 32))

(assert (=> d!2370249 (and (bvsle #b00000000000000000000000000000000 lt!2694181) (bvsle lt!2694181 #b01111111111111111111111111111111))))

(declare-fun e!4680221 () (_ BitVec 32))

(assert (=> d!2370249 (= lt!2694181 e!4680221)))

(declare-fun c!1456713 () Bool)

(assert (=> d!2370249 (= c!1456713 ((_ is Nil!74450) (t!390205 lt!2693810)))))

(assert (=> d!2370249 (= (isize!121 (t!390205 lt!2693810)) lt!2694181)))

(declare-fun b!7930945 () Bool)

(assert (=> b!7930945 (= e!4680221 #b00000000000000000000000000000000)))

(declare-fun b!7930946 () Bool)

(declare-fun lt!2694182 () (_ BitVec 32))

(assert (=> b!7930946 (= e!4680221 (ite (= lt!2694182 #b01111111111111111111111111111111) lt!2694182 (bvadd #b00000000000000000000000000000001 lt!2694182)))))

(assert (=> b!7930946 (= lt!2694182 (isize!121 (t!390205 (t!390205 lt!2693810))))))

(assert (= (and d!2370249 c!1456713) b!7930945))

(assert (= (and d!2370249 (not c!1456713)) b!7930946))

(declare-fun m!8315962 () Bool)

(assert (=> b!7930946 m!8315962))

(assert (=> b!7930227 d!2370249))

(declare-fun d!2370251 () Bool)

(assert (=> d!2370251 (= (height!2219 call!735337) (ite ((_ is Empty!15904) call!735337) 0 (ite ((_ is Leaf!30237) call!735337) 1 (cheight!16115 call!735337))))))

(assert (=> b!7930354 d!2370251))

(declare-fun d!2370253 () Bool)

(assert (=> d!2370253 (= (height!2219 (right!57206 lt!2693858)) (ite ((_ is Empty!15904) (right!57206 lt!2693858)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693858)) 1 (cheight!16115 (right!57206 lt!2693858)))))))

(assert (=> b!7930354 d!2370253))

(declare-fun d!2370255 () Bool)

(declare-fun lt!2694183 () Int)

(assert (=> d!2370255 (= lt!2694183 (size!43253 (list!19417 call!735337)))))

(assert (=> d!2370255 (= lt!2694183 (ite ((_ is Empty!15904) call!735337) 0 (ite ((_ is Leaf!30237) call!735337) (csize!32039 call!735337) (csize!32038 call!735337))))))

(assert (=> d!2370255 (= (size!43255 call!735337) lt!2694183)))

(declare-fun bs!1968975 () Bool)

(assert (= bs!1968975 d!2370255))

(assert (=> bs!1968975 m!8314744))

(assert (=> bs!1968975 m!8314744))

(assert (=> bs!1968975 m!8315572))

(assert (=> b!7930354 d!2370255))

(declare-fun d!2370257 () Bool)

(assert (=> d!2370257 (= (max!0 (height!2219 call!735337) (height!2219 (right!57206 lt!2693858))) (ite (< (height!2219 call!735337) (height!2219 (right!57206 lt!2693858))) (height!2219 (right!57206 lt!2693858)) (height!2219 call!735337)))))

(assert (=> b!7930354 d!2370257))

(declare-fun d!2370259 () Bool)

(declare-fun lt!2694184 () Int)

(assert (=> d!2370259 (= lt!2694184 (size!43253 (list!19417 (right!57206 lt!2693858))))))

(assert (=> d!2370259 (= lt!2694184 (ite ((_ is Empty!15904) (right!57206 lt!2693858)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693858)) (csize!32039 (right!57206 lt!2693858)) (csize!32038 (right!57206 lt!2693858)))))))

(assert (=> d!2370259 (= (size!43255 (right!57206 lt!2693858)) lt!2694184)))

(declare-fun bs!1968976 () Bool)

(assert (= bs!1968976 d!2370259))

(assert (=> bs!1968976 m!8313326))

(assert (=> bs!1968976 m!8313326))

(assert (=> bs!1968976 m!8315574))

(assert (=> b!7930354 d!2370259))

(declare-fun d!2370261 () Bool)

(assert (=> d!2370261 (= (isEmpty!42782 (list!19417 (right!57206 lt!2693719))) ((_ is Nil!74450) (list!19417 (right!57206 lt!2693719))))))

(assert (=> d!2369441 d!2370261))

(assert (=> d!2369441 d!2369421))

(declare-fun d!2370263 () Bool)

(declare-fun lt!2694185 () Int)

(assert (=> d!2370263 (= lt!2694185 (size!43253 (list!19417 (right!57206 lt!2693719))))))

(assert (=> d!2370263 (= lt!2694185 (ite ((_ is Empty!15904) (right!57206 lt!2693719)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693719)) (csize!32039 (right!57206 lt!2693719)) (csize!32038 (right!57206 lt!2693719)))))))

(assert (=> d!2370263 (= (size!43255 (right!57206 lt!2693719)) lt!2694185)))

(declare-fun bs!1968977 () Bool)

(assert (= bs!1968977 d!2370263))

(assert (=> bs!1968977 m!8313096))

(assert (=> bs!1968977 m!8313096))

(assert (=> bs!1968977 m!8313630))

(assert (=> d!2369441 d!2370263))

(declare-fun d!2370265 () Bool)

(declare-fun c!1456714 () Bool)

(assert (=> d!2370265 (= c!1456714 ((_ is Nil!74450) lt!2693891))))

(declare-fun e!4680222 () (InoxSet T!145818))

(assert (=> d!2370265 (= (content!15785 lt!2693891) e!4680222)))

(declare-fun b!7930947 () Bool)

(assert (=> b!7930947 (= e!4680222 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930948 () Bool)

(assert (=> b!7930948 (= e!4680222 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693891) true) (content!15785 (t!390205 lt!2693891))))))

(assert (= (and d!2370265 c!1456714) b!7930947))

(assert (= (and d!2370265 (not c!1456714)) b!7930948))

(declare-fun m!8315964 () Bool)

(assert (=> b!7930948 m!8315964))

(declare-fun m!8315966 () Bool)

(assert (=> b!7930948 m!8315966))

(assert (=> d!2369385 d!2370265))

(declare-fun d!2370267 () Bool)

(declare-fun c!1456715 () Bool)

(assert (=> d!2370267 (= c!1456715 ((_ is Nil!74450) (ite c!1456280 call!735334 lt!2693871)))))

(declare-fun e!4680223 () (InoxSet T!145818))

(assert (=> d!2370267 (= (content!15785 (ite c!1456280 call!735334 lt!2693871)) e!4680223)))

(declare-fun b!7930949 () Bool)

(assert (=> b!7930949 (= e!4680223 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930950 () Bool)

(assert (=> b!7930950 (= e!4680223 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 call!735334 lt!2693871)) true) (content!15785 (t!390205 (ite c!1456280 call!735334 lt!2693871)))))))

(assert (= (and d!2370267 c!1456715) b!7930949))

(assert (= (and d!2370267 (not c!1456715)) b!7930950))

(declare-fun m!8315968 () Bool)

(assert (=> b!7930950 m!8315968))

(declare-fun m!8315970 () Bool)

(assert (=> b!7930950 m!8315970))

(assert (=> d!2369385 d!2370267))

(declare-fun c!1456716 () Bool)

(declare-fun d!2370269 () Bool)

(assert (=> d!2370269 (= c!1456716 ((_ is Nil!74450) (ite c!1456280 lt!2693872 lt!2693864)))))

(declare-fun e!4680224 () (InoxSet T!145818))

(assert (=> d!2370269 (= (content!15785 (ite c!1456280 lt!2693872 lt!2693864)) e!4680224)))

(declare-fun b!7930951 () Bool)

(assert (=> b!7930951 (= e!4680224 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930952 () Bool)

(assert (=> b!7930952 (= e!4680224 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (ite c!1456280 lt!2693872 lt!2693864)) true) (content!15785 (t!390205 (ite c!1456280 lt!2693872 lt!2693864)))))))

(assert (= (and d!2370269 c!1456716) b!7930951))

(assert (= (and d!2370269 (not c!1456716)) b!7930952))

(declare-fun m!8315972 () Bool)

(assert (=> b!7930952 m!8315972))

(declare-fun m!8315974 () Bool)

(assert (=> b!7930952 m!8315974))

(assert (=> d!2369385 d!2370269))

(declare-fun d!2370271 () Bool)

(declare-fun c!1456717 () Bool)

(assert (=> d!2370271 (= c!1456717 ((_ is Nil!74450) (t!390205 lt!2693763)))))

(declare-fun e!4680225 () (InoxSet T!145818))

(assert (=> d!2370271 (= (content!15785 (t!390205 lt!2693763)) e!4680225)))

(declare-fun b!7930953 () Bool)

(assert (=> b!7930953 (= e!4680225 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930954 () Bool)

(assert (=> b!7930954 (= e!4680225 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693763)) true) (content!15785 (t!390205 (t!390205 lt!2693763)))))))

(assert (= (and d!2370271 c!1456717) b!7930953))

(assert (= (and d!2370271 (not c!1456717)) b!7930954))

(declare-fun m!8315976 () Bool)

(assert (=> b!7930954 m!8315976))

(declare-fun m!8315978 () Bool)

(assert (=> b!7930954 m!8315978))

(assert (=> b!7930191 d!2370271))

(assert (=> b!7929974 d!2369659))

(declare-fun d!2370273 () Bool)

(assert (=> d!2370273 (= (height!2219 (right!57206 (right!57206 t!4440))) (ite ((_ is Empty!15904) (right!57206 (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (right!57206 (right!57206 t!4440))) 1 (cheight!16115 (right!57206 (right!57206 t!4440))))))))

(assert (=> b!7929974 d!2370273))

(declare-fun d!2370275 () Bool)

(declare-fun lt!2694186 () Int)

(assert (=> d!2370275 (>= lt!2694186 0)))

(declare-fun e!4680226 () Int)

(assert (=> d!2370275 (= lt!2694186 e!4680226)))

(declare-fun c!1456718 () Bool)

(assert (=> d!2370275 (= c!1456718 ((_ is Nil!74450) lt!2693975))))

(assert (=> d!2370275 (= (size!43253 lt!2693975) lt!2694186)))

(declare-fun b!7930955 () Bool)

(assert (=> b!7930955 (= e!4680226 0)))

(declare-fun b!7930956 () Bool)

(assert (=> b!7930956 (= e!4680226 (+ 1 (size!43253 (t!390205 lt!2693975))))))

(assert (= (and d!2370275 c!1456718) b!7930955))

(assert (= (and d!2370275 (not c!1456718)) b!7930956))

(declare-fun m!8315980 () Bool)

(assert (=> b!7930956 m!8315980))

(assert (=> b!7930115 d!2370275))

(assert (=> b!7930115 d!2370011))

(assert (=> b!7930115 d!2369491))

(declare-fun d!2370277 () Bool)

(declare-fun res!3146788 () Bool)

(declare-fun e!4680227 () Bool)

(assert (=> d!2370277 (=> (not res!3146788) (not e!4680227))))

(assert (=> d!2370277 (= res!3146788 (= (csize!32038 (right!57206 (left!56876 t!4440))) (+ (size!43255 (left!56876 (right!57206 (left!56876 t!4440)))) (size!43255 (right!57206 (right!57206 (left!56876 t!4440)))))))))

(assert (=> d!2370277 (= (inv!95732 (right!57206 (left!56876 t!4440))) e!4680227)))

(declare-fun b!7930957 () Bool)

(declare-fun res!3146789 () Bool)

(assert (=> b!7930957 (=> (not res!3146789) (not e!4680227))))

(assert (=> b!7930957 (= res!3146789 (and (not (= (left!56876 (right!57206 (left!56876 t!4440))) Empty!15904)) (not (= (right!57206 (right!57206 (left!56876 t!4440))) Empty!15904))))))

(declare-fun b!7930958 () Bool)

(declare-fun res!3146790 () Bool)

(assert (=> b!7930958 (=> (not res!3146790) (not e!4680227))))

(assert (=> b!7930958 (= res!3146790 (= (cheight!16115 (right!57206 (left!56876 t!4440))) (+ (max!0 (height!2219 (left!56876 (right!57206 (left!56876 t!4440)))) (height!2219 (right!57206 (right!57206 (left!56876 t!4440))))) 1)))))

(declare-fun b!7930959 () Bool)

(assert (=> b!7930959 (= e!4680227 (<= 0 (cheight!16115 (right!57206 (left!56876 t!4440)))))))

(assert (= (and d!2370277 res!3146788) b!7930957))

(assert (= (and b!7930957 res!3146789) b!7930958))

(assert (= (and b!7930958 res!3146790) b!7930959))

(declare-fun m!8315982 () Bool)

(assert (=> d!2370277 m!8315982))

(declare-fun m!8315984 () Bool)

(assert (=> d!2370277 m!8315984))

(declare-fun m!8315986 () Bool)

(assert (=> b!7930958 m!8315986))

(declare-fun m!8315988 () Bool)

(assert (=> b!7930958 m!8315988))

(assert (=> b!7930958 m!8315986))

(assert (=> b!7930958 m!8315988))

(declare-fun m!8315990 () Bool)

(assert (=> b!7930958 m!8315990))

(assert (=> b!7930183 d!2370277))

(declare-fun b!7930960 () Bool)

(declare-fun res!3146792 () Bool)

(declare-fun e!4680228 () Bool)

(assert (=> b!7930960 (=> (not res!3146792) (not e!4680228))))

(declare-fun lt!2694187 () List!74574)

(assert (=> b!7930960 (= res!3146792 (= (size!43253 lt!2694187) (+ (size!43253 (t!390205 (list!19417 (right!57206 t!4440)))) 1)))))

(declare-fun b!7930961 () Bool)

(declare-fun e!4680230 () Bool)

(declare-fun call!735389 () (_ BitVec 32))

(declare-fun call!735390 () (_ BitVec 32))

(assert (=> b!7930961 (= e!4680230 (= call!735389 (bvadd call!735390 #b00000000000000000000000000000001)))))

(declare-fun b!7930962 () Bool)

(declare-fun res!3146793 () Bool)

(assert (=> b!7930962 (=> (not res!3146793) (not e!4680228))))

(assert (=> b!7930962 (= res!3146793 e!4680230)))

(declare-fun c!1456720 () Bool)

(assert (=> b!7930962 (= c!1456720 (bvslt (isize!121 (t!390205 (list!19417 (right!57206 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7930963 () Bool)

(declare-fun e!4680229 () List!74574)

(assert (=> b!7930963 (= e!4680229 (Cons!74450 (h!80898 (t!390205 (list!19417 (right!57206 t!4440)))) ($colon+!317 (t!390205 (t!390205 (list!19417 (right!57206 t!4440)))) v!5484)))))

(declare-fun b!7930964 () Bool)

(assert (=> b!7930964 (= e!4680228 (= lt!2694187 (++!18261 (t!390205 (list!19417 (right!57206 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930965 () Bool)

(assert (=> b!7930965 (= e!4680229 (Cons!74450 v!5484 (t!390205 (list!19417 (right!57206 t!4440)))))))

(declare-fun b!7930966 () Bool)

(declare-fun res!3146794 () Bool)

(assert (=> b!7930966 (=> (not res!3146794) (not e!4680228))))

(assert (=> b!7930966 (= res!3146794 (= (content!15785 lt!2694187) ((_ map or) (content!15785 (t!390205 (list!19417 (right!57206 t!4440)))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735385 () Bool)

(assert (=> bm!735385 (= call!735389 (isize!121 lt!2694187))))

(declare-fun b!7930967 () Bool)

(assert (=> b!7930967 (= e!4680230 (= call!735389 call!735390))))

(declare-fun bm!735384 () Bool)

(assert (=> bm!735384 (= call!735390 (isize!121 (t!390205 (list!19417 (right!57206 t!4440)))))))

(declare-fun d!2370279 () Bool)

(assert (=> d!2370279 e!4680228))

(declare-fun res!3146791 () Bool)

(assert (=> d!2370279 (=> (not res!3146791) (not e!4680228))))

(assert (=> d!2370279 (= res!3146791 ((_ is Cons!74450) lt!2694187))))

(assert (=> d!2370279 (= lt!2694187 e!4680229)))

(declare-fun c!1456719 () Bool)

(assert (=> d!2370279 (= c!1456719 ((_ is Nil!74450) (t!390205 (list!19417 (right!57206 t!4440)))))))

(assert (=> d!2370279 (= ($colon+!317 (t!390205 (list!19417 (right!57206 t!4440))) v!5484) lt!2694187)))

(assert (= (and d!2370279 c!1456719) b!7930965))

(assert (= (and d!2370279 (not c!1456719)) b!7930963))

(assert (= (and d!2370279 res!3146791) b!7930960))

(assert (= (and b!7930960 res!3146792) b!7930962))

(assert (= (and b!7930962 c!1456720) b!7930961))

(assert (= (and b!7930962 (not c!1456720)) b!7930967))

(assert (= (or b!7930961 b!7930967) bm!735385))

(assert (= (or b!7930961 b!7930967) bm!735384))

(assert (= (and b!7930962 res!3146793) b!7930966))

(assert (= (and b!7930966 res!3146794) b!7930964))

(declare-fun m!8315992 () Bool)

(assert (=> b!7930960 m!8315992))

(assert (=> b!7930960 m!8315146))

(assert (=> b!7930962 m!8315738))

(declare-fun m!8315994 () Bool)

(assert (=> b!7930964 m!8315994))

(declare-fun m!8315996 () Bool)

(assert (=> b!7930966 m!8315996))

(assert (=> b!7930966 m!8315542))

(assert (=> b!7930966 m!8313196))

(assert (=> bm!735384 m!8315738))

(declare-fun m!8315998 () Bool)

(assert (=> bm!735385 m!8315998))

(declare-fun m!8316000 () Bool)

(assert (=> b!7930963 m!8316000))

(assert (=> b!7929843 d!2370279))

(declare-fun d!2370281 () Bool)

(declare-fun e!4680232 () Bool)

(assert (=> d!2370281 e!4680232))

(declare-fun res!3146796 () Bool)

(assert (=> d!2370281 (=> (not res!3146796) (not e!4680232))))

(declare-fun lt!2694188 () List!74574)

(assert (=> d!2370281 (= res!3146796 (= (content!15785 lt!2694188) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693717))) (content!15785 lt!2693712))))))

(declare-fun e!4680231 () List!74574)

(assert (=> d!2370281 (= lt!2694188 e!4680231)))

(declare-fun c!1456721 () Bool)

(assert (=> d!2370281 (= c!1456721 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693717))))))

(assert (=> d!2370281 (= (++!18261 (t!390205 (t!390205 lt!2693717)) lt!2693712) lt!2694188)))

(declare-fun b!7930969 () Bool)

(assert (=> b!7930969 (= e!4680231 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693717))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693717))) lt!2693712)))))

(declare-fun b!7930968 () Bool)

(assert (=> b!7930968 (= e!4680231 lt!2693712)))

(declare-fun b!7930970 () Bool)

(declare-fun res!3146795 () Bool)

(assert (=> b!7930970 (=> (not res!3146795) (not e!4680232))))

(assert (=> b!7930970 (= res!3146795 (= (size!43253 lt!2694188) (+ (size!43253 (t!390205 (t!390205 lt!2693717))) (size!43253 lt!2693712))))))

(declare-fun b!7930971 () Bool)

(assert (=> b!7930971 (= e!4680232 (or (not (= lt!2693712 Nil!74450)) (= lt!2694188 (t!390205 (t!390205 lt!2693717)))))))

(assert (= (and d!2370281 c!1456721) b!7930968))

(assert (= (and d!2370281 (not c!1456721)) b!7930969))

(assert (= (and d!2370281 res!3146796) b!7930970))

(assert (= (and b!7930970 res!3146795) b!7930971))

(declare-fun m!8316002 () Bool)

(assert (=> d!2370281 m!8316002))

(assert (=> d!2370281 m!8315936))

(assert (=> d!2370281 m!8312848))

(declare-fun m!8316004 () Bool)

(assert (=> b!7930969 m!8316004))

(declare-fun m!8316006 () Bool)

(assert (=> b!7930970 m!8316006))

(declare-fun m!8316008 () Bool)

(assert (=> b!7930970 m!8316008))

(assert (=> b!7930970 m!8312856))

(assert (=> b!7929787 d!2370281))

(declare-fun d!2370283 () Bool)

(assert (=> d!2370283 (= (list!19419 (xs!19294 (right!57206 lt!2693719))) (innerList!15992 (xs!19294 (right!57206 lt!2693719))))))

(assert (=> b!7929830 d!2370283))

(declare-fun d!2370285 () Bool)

(declare-fun lt!2694189 () Int)

(assert (=> d!2370285 (>= lt!2694189 0)))

(declare-fun e!4680233 () Int)

(assert (=> d!2370285 (= lt!2694189 e!4680233)))

(declare-fun c!1456722 () Bool)

(assert (=> d!2370285 (= c!1456722 ((_ is Nil!74450) lt!2694009))))

(assert (=> d!2370285 (= (size!43253 lt!2694009) lt!2694189)))

(declare-fun b!7930972 () Bool)

(assert (=> b!7930972 (= e!4680233 0)))

(declare-fun b!7930973 () Bool)

(assert (=> b!7930973 (= e!4680233 (+ 1 (size!43253 (t!390205 lt!2694009))))))

(assert (= (and d!2370285 c!1456722) b!7930972))

(assert (= (and d!2370285 (not c!1456722)) b!7930973))

(declare-fun m!8316010 () Bool)

(assert (=> b!7930973 m!8316010))

(assert (=> b!7930188 d!2370285))

(declare-fun d!2370287 () Bool)

(declare-fun lt!2694190 () Int)

(assert (=> d!2370287 (>= lt!2694190 0)))

(declare-fun e!4680234 () Int)

(assert (=> d!2370287 (= lt!2694190 e!4680234)))

(declare-fun c!1456723 () Bool)

(assert (=> d!2370287 (= c!1456723 ((_ is Nil!74450) (list!19417 (left!56876 t!4440))))))

(assert (=> d!2370287 (= (size!43253 (list!19417 (left!56876 t!4440))) lt!2694190)))

(declare-fun b!7930974 () Bool)

(assert (=> b!7930974 (= e!4680234 0)))

(declare-fun b!7930975 () Bool)

(assert (=> b!7930975 (= e!4680234 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 t!4440))))))))

(assert (= (and d!2370287 c!1456723) b!7930974))

(assert (= (and d!2370287 (not c!1456723)) b!7930975))

(assert (=> b!7930975 m!8315602))

(assert (=> b!7930188 d!2370287))

(assert (=> b!7930188 d!2369955))

(declare-fun d!2370289 () Bool)

(declare-fun e!4680236 () Bool)

(assert (=> d!2370289 e!4680236))

(declare-fun res!3146798 () Bool)

(assert (=> d!2370289 (=> (not res!3146798) (not e!4680236))))

(declare-fun lt!2694191 () List!74574)

(assert (=> d!2370289 (= res!3146798 (= (content!15785 lt!2694191) ((_ map or) (content!15785 (t!390205 (list!19417 t!4440))) (content!15785 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun e!4680235 () List!74574)

(assert (=> d!2370289 (= lt!2694191 e!4680235)))

(declare-fun c!1456724 () Bool)

(assert (=> d!2370289 (= c!1456724 ((_ is Nil!74450) (t!390205 (list!19417 t!4440))))))

(assert (=> d!2370289 (= (++!18261 (t!390205 (list!19417 t!4440)) (Cons!74450 v!5484 Nil!74450)) lt!2694191)))

(declare-fun b!7930977 () Bool)

(assert (=> b!7930977 (= e!4680235 (Cons!74450 (h!80898 (t!390205 (list!19417 t!4440))) (++!18261 (t!390205 (t!390205 (list!19417 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7930976 () Bool)

(assert (=> b!7930976 (= e!4680235 (Cons!74450 v!5484 Nil!74450))))

(declare-fun b!7930978 () Bool)

(declare-fun res!3146797 () Bool)

(assert (=> b!7930978 (=> (not res!3146797) (not e!4680236))))

(assert (=> b!7930978 (= res!3146797 (= (size!43253 lt!2694191) (+ (size!43253 (t!390205 (list!19417 t!4440))) (size!43253 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun b!7930979 () Bool)

(assert (=> b!7930979 (= e!4680236 (or (not (= (Cons!74450 v!5484 Nil!74450) Nil!74450)) (= lt!2694191 (t!390205 (list!19417 t!4440)))))))

(assert (= (and d!2370289 c!1456724) b!7930976))

(assert (= (and d!2370289 (not c!1456724)) b!7930977))

(assert (= (and d!2370289 res!3146798) b!7930978))

(assert (= (and b!7930978 res!3146797) b!7930979))

(declare-fun m!8316012 () Bool)

(assert (=> d!2370289 m!8316012))

(assert (=> d!2370289 m!8313856))

(assert (=> d!2370289 m!8314918))

(declare-fun m!8316014 () Bool)

(assert (=> b!7930977 m!8316014))

(declare-fun m!8316016 () Bool)

(assert (=> b!7930978 m!8316016))

(assert (=> b!7930978 m!8313848))

(assert (=> b!7930978 m!8314922))

(assert (=> b!7930421 d!2370289))

(declare-fun d!2370291 () Bool)

(declare-fun lt!2694192 () Int)

(assert (=> d!2370291 (>= lt!2694192 0)))

(declare-fun e!4680237 () Int)

(assert (=> d!2370291 (= lt!2694192 e!4680237)))

(declare-fun c!1456725 () Bool)

(assert (=> d!2370291 (= c!1456725 ((_ is Nil!74450) lt!2694019))))

(assert (=> d!2370291 (= (size!43253 lt!2694019) lt!2694192)))

(declare-fun b!7930980 () Bool)

(assert (=> b!7930980 (= e!4680237 0)))

(declare-fun b!7930981 () Bool)

(assert (=> b!7930981 (= e!4680237 (+ 1 (size!43253 (t!390205 lt!2694019))))))

(assert (= (and d!2370291 c!1456725) b!7930980))

(assert (= (and d!2370291 (not c!1456725)) b!7930981))

(declare-fun m!8316018 () Bool)

(assert (=> b!7930981 m!8316018))

(assert (=> b!7930230 d!2370291))

(declare-fun d!2370293 () Bool)

(declare-fun lt!2694193 () Int)

(assert (=> d!2370293 (>= lt!2694193 0)))

(declare-fun e!4680238 () Int)

(assert (=> d!2370293 (= lt!2694193 e!4680238)))

(declare-fun c!1456726 () Bool)

(assert (=> d!2370293 (= c!1456726 ((_ is Nil!74450) (ite c!1456280 lt!2693859 lt!2693860)))))

(assert (=> d!2370293 (= (size!43253 (ite c!1456280 lt!2693859 lt!2693860)) lt!2694193)))

(declare-fun b!7930982 () Bool)

(assert (=> b!7930982 (= e!4680238 0)))

(declare-fun b!7930983 () Bool)

(assert (=> b!7930983 (= e!4680238 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693859 lt!2693860)))))))

(assert (= (and d!2370293 c!1456726) b!7930982))

(assert (= (and d!2370293 (not c!1456726)) b!7930983))

(assert (=> b!7930983 m!8315800))

(assert (=> b!7930230 d!2370293))

(declare-fun d!2370295 () Bool)

(declare-fun lt!2694194 () Int)

(assert (=> d!2370295 (>= lt!2694194 0)))

(declare-fun e!4680239 () Int)

(assert (=> d!2370295 (= lt!2694194 e!4680239)))

(declare-fun c!1456727 () Bool)

(assert (=> d!2370295 (= c!1456727 ((_ is Nil!74450) (ite c!1456280 lt!2693872 lt!2693871)))))

(assert (=> d!2370295 (= (size!43253 (ite c!1456280 lt!2693872 lt!2693871)) lt!2694194)))

(declare-fun b!7930984 () Bool)

(assert (=> b!7930984 (= e!4680239 0)))

(declare-fun b!7930985 () Bool)

(assert (=> b!7930985 (= e!4680239 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693872 lt!2693871)))))))

(assert (= (and d!2370295 c!1456727) b!7930984))

(assert (= (and d!2370295 (not c!1456727)) b!7930985))

(declare-fun m!8316020 () Bool)

(assert (=> b!7930985 m!8316020))

(assert (=> b!7930230 d!2370295))

(declare-fun b!7930986 () Bool)

(declare-fun res!3146802 () Bool)

(declare-fun e!4680240 () Bool)

(assert (=> b!7930986 (=> (not res!3146802) (not e!4680240))))

(assert (=> b!7930986 (= res!3146802 (isBalanced!4530 (left!56876 (left!56876 lt!2693867))))))

(declare-fun d!2370297 () Bool)

(declare-fun res!3146799 () Bool)

(declare-fun e!4680241 () Bool)

(assert (=> d!2370297 (=> res!3146799 e!4680241)))

(assert (=> d!2370297 (= res!3146799 (not ((_ is Node!15904) (left!56876 lt!2693867))))))

(assert (=> d!2370297 (= (isBalanced!4530 (left!56876 lt!2693867)) e!4680241)))

(declare-fun b!7930987 () Bool)

(declare-fun res!3146804 () Bool)

(assert (=> b!7930987 (=> (not res!3146804) (not e!4680240))))

(assert (=> b!7930987 (= res!3146804 (isBalanced!4530 (right!57206 (left!56876 lt!2693867))))))

(declare-fun b!7930988 () Bool)

(declare-fun res!3146800 () Bool)

(assert (=> b!7930988 (=> (not res!3146800) (not e!4680240))))

(assert (=> b!7930988 (= res!3146800 (not (isEmpty!42779 (left!56876 (left!56876 lt!2693867)))))))

(declare-fun b!7930989 () Bool)

(declare-fun res!3146801 () Bool)

(assert (=> b!7930989 (=> (not res!3146801) (not e!4680240))))

(assert (=> b!7930989 (= res!3146801 (<= (- (height!2219 (left!56876 (left!56876 lt!2693867))) (height!2219 (right!57206 (left!56876 lt!2693867)))) 1))))

(declare-fun b!7930990 () Bool)

(assert (=> b!7930990 (= e!4680241 e!4680240)))

(declare-fun res!3146803 () Bool)

(assert (=> b!7930990 (=> (not res!3146803) (not e!4680240))))

(assert (=> b!7930990 (= res!3146803 (<= (- 1) (- (height!2219 (left!56876 (left!56876 lt!2693867))) (height!2219 (right!57206 (left!56876 lt!2693867))))))))

(declare-fun b!7930991 () Bool)

(assert (=> b!7930991 (= e!4680240 (not (isEmpty!42779 (right!57206 (left!56876 lt!2693867)))))))

(assert (= (and d!2370297 (not res!3146799)) b!7930990))

(assert (= (and b!7930990 res!3146803) b!7930989))

(assert (= (and b!7930989 res!3146801) b!7930986))

(assert (= (and b!7930986 res!3146802) b!7930987))

(assert (= (and b!7930987 res!3146804) b!7930988))

(assert (= (and b!7930988 res!3146800) b!7930991))

(declare-fun m!8316022 () Bool)

(assert (=> b!7930991 m!8316022))

(declare-fun m!8316024 () Bool)

(assert (=> b!7930990 m!8316024))

(declare-fun m!8316026 () Bool)

(assert (=> b!7930990 m!8316026))

(declare-fun m!8316028 () Bool)

(assert (=> b!7930987 m!8316028))

(declare-fun m!8316030 () Bool)

(assert (=> b!7930986 m!8316030))

(assert (=> b!7930989 m!8316024))

(assert (=> b!7930989 m!8316026))

(declare-fun m!8316032 () Bool)

(assert (=> b!7930988 m!8316032))

(assert (=> b!7929959 d!2370297))

(declare-fun d!2370299 () Bool)

(declare-fun lt!2694195 () Int)

(assert (=> d!2370299 (>= lt!2694195 0)))

(declare-fun e!4680242 () Int)

(assert (=> d!2370299 (= lt!2694195 e!4680242)))

(declare-fun c!1456728 () Bool)

(assert (=> d!2370299 (= c!1456728 ((_ is Nil!74450) (list!19419 (xs!19294 (left!56876 t!4440)))))))

(assert (=> d!2370299 (= (size!43253 (list!19419 (xs!19294 (left!56876 t!4440)))) lt!2694195)))

(declare-fun b!7930992 () Bool)

(assert (=> b!7930992 (= e!4680242 0)))

(declare-fun b!7930993 () Bool)

(assert (=> b!7930993 (= e!4680242 (+ 1 (size!43253 (t!390205 (list!19419 (xs!19294 (left!56876 t!4440)))))))))

(assert (= (and d!2370299 c!1456728) b!7930992))

(assert (= (and d!2370299 (not c!1456728)) b!7930993))

(declare-fun m!8316034 () Bool)

(assert (=> b!7930993 m!8316034))

(assert (=> d!2369739 d!2370299))

(assert (=> d!2369739 d!2369369))

(declare-fun d!2370301 () Bool)

(declare-fun c!1456729 () Bool)

(assert (=> d!2370301 (= c!1456729 ((_ is Nil!74450) lt!2693975))))

(declare-fun e!4680243 () (InoxSet T!145818))

(assert (=> d!2370301 (= (content!15785 lt!2693975) e!4680243)))

(declare-fun b!7930994 () Bool)

(assert (=> b!7930994 (= e!4680243 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930995 () Bool)

(assert (=> b!7930995 (= e!4680243 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693975) true) (content!15785 (t!390205 lt!2693975))))))

(assert (= (and d!2370301 c!1456729) b!7930994))

(assert (= (and d!2370301 (not c!1456729)) b!7930995))

(declare-fun m!8316036 () Bool)

(assert (=> b!7930995 m!8316036))

(declare-fun m!8316038 () Bool)

(assert (=> b!7930995 m!8316038))

(assert (=> d!2369635 d!2370301))

(declare-fun d!2370303 () Bool)

(declare-fun c!1456730 () Bool)

(assert (=> d!2370303 (= c!1456730 ((_ is Nil!74450) (t!390205 lt!2693714)))))

(declare-fun e!4680244 () (InoxSet T!145818))

(assert (=> d!2370303 (= (content!15785 (t!390205 lt!2693714)) e!4680244)))

(declare-fun b!7930996 () Bool)

(assert (=> b!7930996 (= e!4680244 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7930997 () Bool)

(assert (=> b!7930997 (= e!4680244 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693714)) true) (content!15785 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370303 c!1456730) b!7930996))

(assert (= (and d!2370303 (not c!1456730)) b!7930997))

(declare-fun m!8316040 () Bool)

(assert (=> b!7930997 m!8316040))

(assert (=> b!7930997 m!8315346))

(assert (=> d!2369635 d!2370303))

(assert (=> d!2369635 d!2369409))

(declare-fun d!2370305 () Bool)

(declare-fun e!4680246 () Bool)

(assert (=> d!2370305 e!4680246))

(declare-fun res!3146806 () Bool)

(assert (=> d!2370305 (=> (not res!3146806) (not e!4680246))))

(declare-fun lt!2694196 () List!74574)

(assert (=> d!2370305 (= res!3146806 (= (content!15785 lt!2694196) ((_ map or) (content!15785 (t!390205 lt!2693860)) (content!15785 call!735338))))))

(declare-fun e!4680245 () List!74574)

(assert (=> d!2370305 (= lt!2694196 e!4680245)))

(declare-fun c!1456731 () Bool)

(assert (=> d!2370305 (= c!1456731 ((_ is Nil!74450) (t!390205 lt!2693860)))))

(assert (=> d!2370305 (= (++!18261 (t!390205 lt!2693860) call!735338) lt!2694196)))

(declare-fun b!7930999 () Bool)

(assert (=> b!7930999 (= e!4680245 (Cons!74450 (h!80898 (t!390205 lt!2693860)) (++!18261 (t!390205 (t!390205 lt!2693860)) call!735338)))))

(declare-fun b!7930998 () Bool)

(assert (=> b!7930998 (= e!4680245 call!735338)))

(declare-fun b!7931000 () Bool)

(declare-fun res!3146805 () Bool)

(assert (=> b!7931000 (=> (not res!3146805) (not e!4680246))))

(assert (=> b!7931000 (= res!3146805 (= (size!43253 lt!2694196) (+ (size!43253 (t!390205 lt!2693860)) (size!43253 call!735338))))))

(declare-fun b!7931001 () Bool)

(assert (=> b!7931001 (= e!4680246 (or (not (= call!735338 Nil!74450)) (= lt!2694196 (t!390205 lt!2693860))))))

(assert (= (and d!2370305 c!1456731) b!7930998))

(assert (= (and d!2370305 (not c!1456731)) b!7930999))

(assert (= (and d!2370305 res!3146806) b!7931000))

(assert (= (and b!7931000 res!3146805) b!7931001))

(declare-fun m!8316042 () Bool)

(assert (=> d!2370305 m!8316042))

(assert (=> d!2370305 m!8315338))

(assert (=> d!2370305 m!8314768))

(declare-fun m!8316044 () Bool)

(assert (=> b!7930999 m!8316044))

(declare-fun m!8316046 () Bool)

(assert (=> b!7931000 m!8316046))

(declare-fun m!8316048 () Bool)

(assert (=> b!7931000 m!8316048))

(assert (=> b!7931000 m!8314776))

(assert (=> b!7930360 d!2370305))

(declare-fun d!2370307 () Bool)

(declare-fun lt!2694197 () Int)

(assert (=> d!2370307 (>= lt!2694197 0)))

(declare-fun e!4680247 () Int)

(assert (=> d!2370307 (= lt!2694197 e!4680247)))

(declare-fun c!1456732 () Bool)

(assert (=> d!2370307 (= c!1456732 ((_ is Nil!74450) (t!390205 lt!2693790)))))

(assert (=> d!2370307 (= (size!43253 (t!390205 lt!2693790)) lt!2694197)))

(declare-fun b!7931002 () Bool)

(assert (=> b!7931002 (= e!4680247 0)))

(declare-fun b!7931003 () Bool)

(assert (=> b!7931003 (= e!4680247 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693790)))))))

(assert (= (and d!2370307 c!1456732) b!7931002))

(assert (= (and d!2370307 (not c!1456732)) b!7931003))

(declare-fun m!8316050 () Bool)

(assert (=> b!7931003 m!8316050))

(assert (=> b!7929919 d!2370307))

(declare-fun d!2370309 () Bool)

(assert (=> d!2370309 (= (max!0 (height!2219 (left!56876 (left!56876 t!4440))) (height!2219 (right!57206 (left!56876 t!4440)))) (ite (< (height!2219 (left!56876 (left!56876 t!4440))) (height!2219 (right!57206 (left!56876 t!4440)))) (height!2219 (right!57206 (left!56876 t!4440))) (height!2219 (left!56876 (left!56876 t!4440)))))))

(assert (=> b!7930237 d!2370309))

(assert (=> b!7930237 d!2369877))

(assert (=> b!7930237 d!2369879))

(assert (=> b!7929797 d!2370303))

(declare-fun d!2370311 () Bool)

(assert (=> d!2370311 (= (height!2219 (left!56876 (left!56876 lt!2693719))) (ite ((_ is Empty!15904) (left!56876 (left!56876 lt!2693719))) 0 (ite ((_ is Leaf!30237) (left!56876 (left!56876 lt!2693719))) 1 (cheight!16115 (left!56876 (left!56876 lt!2693719))))))))

(assert (=> b!7930342 d!2370311))

(declare-fun d!2370313 () Bool)

(assert (=> d!2370313 (= (height!2219 (right!57206 (left!56876 lt!2693719))) (ite ((_ is Empty!15904) (right!57206 (left!56876 lt!2693719))) 0 (ite ((_ is Leaf!30237) (right!57206 (left!56876 lt!2693719))) 1 (cheight!16115 (right!57206 (left!56876 lt!2693719))))))))

(assert (=> b!7930342 d!2370313))

(declare-fun d!2370315 () Bool)

(declare-fun lt!2694198 () Int)

(assert (=> d!2370315 (>= lt!2694198 0)))

(declare-fun e!4680248 () Int)

(assert (=> d!2370315 (= lt!2694198 e!4680248)))

(declare-fun c!1456733 () Bool)

(assert (=> d!2370315 (= c!1456733 ((_ is Nil!74450) (t!390205 lt!2693769)))))

(assert (=> d!2370315 (= (size!43253 (t!390205 lt!2693769)) lt!2694198)))

(declare-fun b!7931004 () Bool)

(assert (=> b!7931004 (= e!4680248 0)))

(declare-fun b!7931005 () Bool)

(assert (=> b!7931005 (= e!4680248 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693769)))))))

(assert (= (and d!2370315 c!1456733) b!7931004))

(assert (= (and d!2370315 (not c!1456733)) b!7931005))

(declare-fun m!8316052 () Bool)

(assert (=> b!7931005 m!8316052))

(assert (=> b!7930429 d!2370315))

(declare-fun b!7931006 () Bool)

(declare-fun res!3146808 () Bool)

(declare-fun e!4680249 () Bool)

(assert (=> b!7931006 (=> (not res!3146808) (not e!4680249))))

(declare-fun lt!2694199 () List!74574)

(assert (=> b!7931006 (= res!3146808 (= (size!43253 lt!2694199) (+ (size!43253 (t!390205 (t!390205 (list!19417 t!4440)))) 1)))))

(declare-fun b!7931007 () Bool)

(declare-fun e!4680251 () Bool)

(declare-fun call!735391 () (_ BitVec 32))

(declare-fun call!735392 () (_ BitVec 32))

(assert (=> b!7931007 (= e!4680251 (= call!735391 (bvadd call!735392 #b00000000000000000000000000000001)))))

(declare-fun b!7931008 () Bool)

(declare-fun res!3146809 () Bool)

(assert (=> b!7931008 (=> (not res!3146809) (not e!4680249))))

(assert (=> b!7931008 (= res!3146809 e!4680251)))

(declare-fun c!1456735 () Bool)

(assert (=> b!7931008 (= c!1456735 (bvslt (isize!121 (t!390205 (t!390205 (list!19417 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7931009 () Bool)

(declare-fun e!4680250 () List!74574)

(assert (=> b!7931009 (= e!4680250 (Cons!74450 (h!80898 (t!390205 (t!390205 (list!19417 t!4440)))) ($colon+!317 (t!390205 (t!390205 (t!390205 (list!19417 t!4440)))) v!5484)))))

(declare-fun b!7931010 () Bool)

(assert (=> b!7931010 (= e!4680249 (= lt!2694199 (++!18261 (t!390205 (t!390205 (list!19417 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7931011 () Bool)

(assert (=> b!7931011 (= e!4680250 (Cons!74450 v!5484 (t!390205 (t!390205 (list!19417 t!4440)))))))

(declare-fun b!7931012 () Bool)

(declare-fun res!3146810 () Bool)

(assert (=> b!7931012 (=> (not res!3146810) (not e!4680249))))

(assert (=> b!7931012 (= res!3146810 (= (content!15785 lt!2694199) ((_ map or) (content!15785 (t!390205 (t!390205 (list!19417 t!4440)))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735387 () Bool)

(assert (=> bm!735387 (= call!735391 (isize!121 lt!2694199))))

(declare-fun b!7931013 () Bool)

(assert (=> b!7931013 (= e!4680251 (= call!735391 call!735392))))

(declare-fun bm!735386 () Bool)

(assert (=> bm!735386 (= call!735392 (isize!121 (t!390205 (t!390205 (list!19417 t!4440)))))))

(declare-fun d!2370317 () Bool)

(assert (=> d!2370317 e!4680249))

(declare-fun res!3146807 () Bool)

(assert (=> d!2370317 (=> (not res!3146807) (not e!4680249))))

(assert (=> d!2370317 (= res!3146807 ((_ is Cons!74450) lt!2694199))))

(assert (=> d!2370317 (= lt!2694199 e!4680250)))

(declare-fun c!1456734 () Bool)

(assert (=> d!2370317 (= c!1456734 ((_ is Nil!74450) (t!390205 (t!390205 (list!19417 t!4440)))))))

(assert (=> d!2370317 (= ($colon+!317 (t!390205 (t!390205 (list!19417 t!4440))) v!5484) lt!2694199)))

(assert (= (and d!2370317 c!1456734) b!7931011))

(assert (= (and d!2370317 (not c!1456734)) b!7931009))

(assert (= (and d!2370317 res!3146807) b!7931006))

(assert (= (and b!7931006 res!3146808) b!7931008))

(assert (= (and b!7931008 c!1456735) b!7931007))

(assert (= (and b!7931008 (not c!1456735)) b!7931013))

(assert (= (or b!7931007 b!7931013) bm!735387))

(assert (= (or b!7931007 b!7931013) bm!735386))

(assert (= (and b!7931008 res!3146809) b!7931012))

(assert (= (and b!7931012 res!3146810) b!7931010))

(declare-fun m!8316054 () Bool)

(assert (=> b!7931006 m!8316054))

(assert (=> b!7931006 m!8315804))

(assert (=> b!7931008 m!8315914))

(assert (=> b!7931010 m!8316014))

(declare-fun m!8316056 () Bool)

(assert (=> b!7931012 m!8316056))

(assert (=> b!7931012 m!8315074))

(assert (=> b!7931012 m!8313196))

(assert (=> bm!735386 m!8315914))

(declare-fun m!8316058 () Bool)

(assert (=> bm!735387 m!8316058))

(declare-fun m!8316060 () Bool)

(assert (=> b!7931009 m!8316060))

(assert (=> b!7929938 d!2370317))

(declare-fun d!2370319 () Bool)

(declare-fun lt!2694200 () Bool)

(assert (=> d!2370319 (= lt!2694200 (isEmpty!42782 (list!19417 (right!57206 (right!57206 lt!2693719)))))))

(assert (=> d!2370319 (= lt!2694200 (= (size!43255 (right!57206 (right!57206 lt!2693719))) 0))))

(assert (=> d!2370319 (= (isEmpty!42779 (right!57206 (right!57206 lt!2693719))) lt!2694200)))

(declare-fun bs!1968978 () Bool)

(assert (= bs!1968978 d!2370319))

(assert (=> bs!1968978 m!8313670))

(assert (=> bs!1968978 m!8313670))

(declare-fun m!8316062 () Bool)

(assert (=> bs!1968978 m!8316062))

(declare-fun m!8316064 () Bool)

(assert (=> bs!1968978 m!8316064))

(assert (=> b!7929990 d!2370319))

(declare-fun d!2370321 () Bool)

(declare-fun c!1456736 () Bool)

(assert (=> d!2370321 (= c!1456736 ((_ is Nil!74450) lt!2693913))))

(declare-fun e!4680252 () (InoxSet T!145818))

(assert (=> d!2370321 (= (content!15785 lt!2693913) e!4680252)))

(declare-fun b!7931014 () Bool)

(assert (=> b!7931014 (= e!4680252 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931015 () Bool)

(assert (=> b!7931015 (= e!4680252 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693913) true) (content!15785 (t!390205 lt!2693913))))))

(assert (= (and d!2370321 c!1456736) b!7931014))

(assert (= (and d!2370321 (not c!1456736)) b!7931015))

(declare-fun m!8316066 () Bool)

(assert (=> b!7931015 m!8316066))

(declare-fun m!8316068 () Bool)

(assert (=> b!7931015 m!8316068))

(assert (=> d!2369477 d!2370321))

(assert (=> d!2369477 d!2370189))

(assert (=> d!2369477 d!2369361))

(declare-fun d!2370323 () Bool)

(declare-fun res!3146811 () Bool)

(declare-fun e!4680253 () Bool)

(assert (=> d!2370323 (=> (not res!3146811) (not e!4680253))))

(assert (=> d!2370323 (= res!3146811 (= (csize!32038 (left!56876 (left!56876 t!4440))) (+ (size!43255 (left!56876 (left!56876 (left!56876 t!4440)))) (size!43255 (right!57206 (left!56876 (left!56876 t!4440)))))))))

(assert (=> d!2370323 (= (inv!95732 (left!56876 (left!56876 t!4440))) e!4680253)))

(declare-fun b!7931016 () Bool)

(declare-fun res!3146812 () Bool)

(assert (=> b!7931016 (=> (not res!3146812) (not e!4680253))))

(assert (=> b!7931016 (= res!3146812 (and (not (= (left!56876 (left!56876 (left!56876 t!4440))) Empty!15904)) (not (= (right!57206 (left!56876 (left!56876 t!4440))) Empty!15904))))))

(declare-fun b!7931017 () Bool)

(declare-fun res!3146813 () Bool)

(assert (=> b!7931017 (=> (not res!3146813) (not e!4680253))))

(assert (=> b!7931017 (= res!3146813 (= (cheight!16115 (left!56876 (left!56876 t!4440))) (+ (max!0 (height!2219 (left!56876 (left!56876 (left!56876 t!4440)))) (height!2219 (right!57206 (left!56876 (left!56876 t!4440))))) 1)))))

(declare-fun b!7931018 () Bool)

(assert (=> b!7931018 (= e!4680253 (<= 0 (cheight!16115 (left!56876 (left!56876 t!4440)))))))

(assert (= (and d!2370323 res!3146811) b!7931016))

(assert (= (and b!7931016 res!3146812) b!7931017))

(assert (= (and b!7931017 res!3146813) b!7931018))

(declare-fun m!8316070 () Bool)

(assert (=> d!2370323 m!8316070))

(declare-fun m!8316072 () Bool)

(assert (=> d!2370323 m!8316072))

(declare-fun m!8316074 () Bool)

(assert (=> b!7931017 m!8316074))

(declare-fun m!8316076 () Bool)

(assert (=> b!7931017 m!8316076))

(assert (=> b!7931017 m!8316074))

(assert (=> b!7931017 m!8316076))

(declare-fun m!8316078 () Bool)

(assert (=> b!7931017 m!8316078))

(assert (=> b!7930180 d!2370323))

(declare-fun d!2370325 () Bool)

(declare-fun lt!2694201 () Int)

(assert (=> d!2370325 (>= lt!2694201 0)))

(declare-fun e!4680254 () Int)

(assert (=> d!2370325 (= lt!2694201 e!4680254)))

(declare-fun c!1456737 () Bool)

(assert (=> d!2370325 (= c!1456737 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693715 lt!2693721))))))

(assert (=> d!2370325 (= (size!43253 (t!390205 (++!18261 lt!2693715 lt!2693721))) lt!2694201)))

(declare-fun b!7931019 () Bool)

(assert (=> b!7931019 (= e!4680254 0)))

(declare-fun b!7931020 () Bool)

(assert (=> b!7931020 (= e!4680254 (+ 1 (size!43253 (t!390205 (t!390205 (++!18261 lt!2693715 lt!2693721))))))))

(assert (= (and d!2370325 c!1456737) b!7931019))

(assert (= (and d!2370325 (not c!1456737)) b!7931020))

(declare-fun m!8316080 () Bool)

(assert (=> b!7931020 m!8316080))

(assert (=> b!7930416 d!2370325))

(declare-fun d!2370327 () Bool)

(declare-fun c!1456738 () Bool)

(assert (=> d!2370327 (= c!1456738 ((_ is Node!15904) (left!56876 (left!56876 (left!56876 t!4440)))))))

(declare-fun e!4680255 () Bool)

(assert (=> d!2370327 (= (inv!95730 (left!56876 (left!56876 (left!56876 t!4440)))) e!4680255)))

(declare-fun b!7931021 () Bool)

(assert (=> b!7931021 (= e!4680255 (inv!95732 (left!56876 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7931022 () Bool)

(declare-fun e!4680256 () Bool)

(assert (=> b!7931022 (= e!4680255 e!4680256)))

(declare-fun res!3146814 () Bool)

(assert (=> b!7931022 (= res!3146814 (not ((_ is Leaf!30237) (left!56876 (left!56876 (left!56876 t!4440))))))))

(assert (=> b!7931022 (=> res!3146814 e!4680256)))

(declare-fun b!7931023 () Bool)

(assert (=> b!7931023 (= e!4680256 (inv!95733 (left!56876 (left!56876 (left!56876 t!4440)))))))

(assert (= (and d!2370327 c!1456738) b!7931021))

(assert (= (and d!2370327 (not c!1456738)) b!7931022))

(assert (= (and b!7931022 (not res!3146814)) b!7931023))

(declare-fun m!8316082 () Bool)

(assert (=> b!7931021 m!8316082))

(declare-fun m!8316084 () Bool)

(assert (=> b!7931023 m!8316084))

(assert (=> b!7930455 d!2370327))

(declare-fun d!2370329 () Bool)

(declare-fun c!1456739 () Bool)

(assert (=> d!2370329 (= c!1456739 ((_ is Node!15904) (right!57206 (left!56876 (left!56876 t!4440)))))))

(declare-fun e!4680257 () Bool)

(assert (=> d!2370329 (= (inv!95730 (right!57206 (left!56876 (left!56876 t!4440)))) e!4680257)))

(declare-fun b!7931024 () Bool)

(assert (=> b!7931024 (= e!4680257 (inv!95732 (right!57206 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7931025 () Bool)

(declare-fun e!4680258 () Bool)

(assert (=> b!7931025 (= e!4680257 e!4680258)))

(declare-fun res!3146815 () Bool)

(assert (=> b!7931025 (= res!3146815 (not ((_ is Leaf!30237) (right!57206 (left!56876 (left!56876 t!4440))))))))

(assert (=> b!7931025 (=> res!3146815 e!4680258)))

(declare-fun b!7931026 () Bool)

(assert (=> b!7931026 (= e!4680258 (inv!95733 (right!57206 (left!56876 (left!56876 t!4440)))))))

(assert (= (and d!2370329 c!1456739) b!7931024))

(assert (= (and d!2370329 (not c!1456739)) b!7931025))

(assert (= (and b!7931025 (not res!3146815)) b!7931026))

(declare-fun m!8316086 () Bool)

(assert (=> b!7931024 m!8316086))

(declare-fun m!8316088 () Bool)

(assert (=> b!7931026 m!8316088))

(assert (=> b!7930455 d!2370329))

(assert (=> d!2369439 d!2369231))

(assert (=> d!2369439 d!2369235))

(assert (=> d!2369439 d!2369223))

(assert (=> d!2369439 d!2369221))

(assert (=> d!2369851 d!2370179))

(assert (=> d!2369851 d!2369555))

(declare-fun d!2370331 () Bool)

(assert (=> d!2370331 (= (height!2219 e!4679595) (ite ((_ is Empty!15904) e!4679595) 0 (ite ((_ is Leaf!30237) e!4679595) 1 (cheight!16115 e!4679595))))))

(assert (=> b!7929893 d!2370331))

(declare-fun d!2370333 () Bool)

(assert (=> d!2370333 (= (max!0 (height!2219 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (height!2219 e!4679595)) (ite (< (height!2219 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (height!2219 e!4679595)) (height!2219 e!4679595) (height!2219 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))))))

(assert (=> b!7929893 d!2370333))

(declare-fun d!2370335 () Bool)

(assert (=> d!2370335 (= (height!2219 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (ite ((_ is Empty!15904) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) 1 (cheight!16115 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))))

(assert (=> b!7929893 d!2370335))

(declare-fun d!2370337 () Bool)

(declare-fun lt!2694202 () Int)

(assert (=> d!2370337 (= lt!2694202 (size!43253 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))))))

(assert (=> d!2370337 (= lt!2694202 (ite ((_ is Empty!15904) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (csize!32039 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (csize!32038 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))))

(assert (=> d!2370337 (= (size!43255 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) lt!2694202)))

(declare-fun bs!1968979 () Bool)

(assert (= bs!1968979 d!2370337))

(assert (=> bs!1968979 m!8313790))

(assert (=> bs!1968979 m!8313790))

(declare-fun m!8316090 () Bool)

(assert (=> bs!1968979 m!8316090))

(assert (=> b!7929893 d!2370337))

(declare-fun d!2370339 () Bool)

(declare-fun lt!2694203 () Int)

(assert (=> d!2370339 (= lt!2694203 (size!43253 (list!19417 e!4679595)))))

(assert (=> d!2370339 (= lt!2694203 (ite ((_ is Empty!15904) e!4679595) 0 (ite ((_ is Leaf!30237) e!4679595) (csize!32039 e!4679595) (csize!32038 e!4679595))))))

(assert (=> d!2370339 (= (size!43255 e!4679595) lt!2694203)))

(declare-fun bs!1968980 () Bool)

(assert (= bs!1968980 d!2370339))

(assert (=> bs!1968980 m!8313792))

(assert (=> bs!1968980 m!8313792))

(declare-fun m!8316092 () Bool)

(assert (=> bs!1968980 m!8316092))

(assert (=> b!7929893 d!2370339))

(declare-fun d!2370341 () Bool)

(declare-fun c!1456740 () Bool)

(assert (=> d!2370341 (= c!1456740 ((_ is Nil!74450) (t!390205 lt!2693810)))))

(declare-fun e!4680259 () (InoxSet T!145818))

(assert (=> d!2370341 (= (content!15785 (t!390205 lt!2693810)) e!4680259)))

(declare-fun b!7931027 () Bool)

(assert (=> b!7931027 (= e!4680259 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931028 () Bool)

(assert (=> b!7931028 (= e!4680259 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693810)) true) (content!15785 (t!390205 (t!390205 lt!2693810)))))))

(assert (= (and d!2370341 c!1456740) b!7931027))

(assert (= (and d!2370341 (not c!1456740)) b!7931028))

(declare-fun m!8316094 () Bool)

(assert (=> b!7931028 m!8316094))

(declare-fun m!8316096 () Bool)

(assert (=> b!7931028 m!8316096))

(assert (=> b!7930012 d!2370341))

(assert (=> b!7929975 d!2369659))

(assert (=> b!7929975 d!2370273))

(declare-fun d!2370343 () Bool)

(assert (=> d!2370343 (= (list!19419 (xs!19294 (left!56876 (right!57206 lt!2693711)))) (innerList!15992 (xs!19294 (left!56876 (right!57206 lt!2693711)))))))

(assert (=> b!7930255 d!2370343))

(declare-fun d!2370345 () Bool)

(declare-fun lt!2694204 () Int)

(assert (=> d!2370345 (>= lt!2694204 0)))

(declare-fun e!4680260 () Int)

(assert (=> d!2370345 (= lt!2694204 e!4680260)))

(declare-fun c!1456741 () Bool)

(assert (=> d!2370345 (= c!1456741 ((_ is Nil!74450) (innerList!15992 (xs!19294 (right!57206 t!4440)))))))

(assert (=> d!2370345 (= (size!43253 (innerList!15992 (xs!19294 (right!57206 t!4440)))) lt!2694204)))

(declare-fun b!7931029 () Bool)

(assert (=> b!7931029 (= e!4680260 0)))

(declare-fun b!7931030 () Bool)

(assert (=> b!7931030 (= e!4680260 (+ 1 (size!43253 (t!390205 (innerList!15992 (xs!19294 (right!57206 t!4440)))))))))

(assert (= (and d!2370345 c!1456741) b!7931029))

(assert (= (and d!2370345 (not c!1456741)) b!7931030))

(declare-fun m!8316098 () Bool)

(assert (=> b!7931030 m!8316098))

(assert (=> d!2369721 d!2370345))

(declare-fun d!2370347 () Bool)

(declare-fun e!4680262 () Bool)

(assert (=> d!2370347 e!4680262))

(declare-fun res!3146817 () Bool)

(assert (=> d!2370347 (=> (not res!3146817) (not e!4680262))))

(declare-fun lt!2694205 () List!74574)

(assert (=> d!2370347 (= res!3146817 (= (content!15785 lt!2694205) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693715))) (content!15785 lt!2693721))))))

(declare-fun e!4680261 () List!74574)

(assert (=> d!2370347 (= lt!2694205 e!4680261)))

(declare-fun c!1456742 () Bool)

(assert (=> d!2370347 (= c!1456742 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693715))))))

(assert (=> d!2370347 (= (++!18261 (t!390205 (t!390205 lt!2693715)) lt!2693721) lt!2694205)))

(declare-fun b!7931032 () Bool)

(assert (=> b!7931032 (= e!4680261 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693715))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693715))) lt!2693721)))))

(declare-fun b!7931031 () Bool)

(assert (=> b!7931031 (= e!4680261 lt!2693721)))

(declare-fun b!7931033 () Bool)

(declare-fun res!3146816 () Bool)

(assert (=> b!7931033 (=> (not res!3146816) (not e!4680262))))

(assert (=> b!7931033 (= res!3146816 (= (size!43253 lt!2694205) (+ (size!43253 (t!390205 (t!390205 lt!2693715))) (size!43253 lt!2693721))))))

(declare-fun b!7931034 () Bool)

(assert (=> b!7931034 (= e!4680262 (or (not (= lt!2693721 Nil!74450)) (= lt!2694205 (t!390205 (t!390205 lt!2693715)))))))

(assert (= (and d!2370347 c!1456742) b!7931031))

(assert (= (and d!2370347 (not c!1456742)) b!7931032))

(assert (= (and d!2370347 res!3146817) b!7931033))

(assert (= (and b!7931033 res!3146816) b!7931034))

(declare-fun m!8316100 () Bool)

(assert (=> d!2370347 m!8316100))

(assert (=> d!2370347 m!8315790))

(assert (=> d!2370347 m!8312884))

(declare-fun m!8316102 () Bool)

(assert (=> b!7931032 m!8316102))

(declare-fun m!8316104 () Bool)

(assert (=> b!7931033 m!8316104))

(declare-fun m!8316106 () Bool)

(assert (=> b!7931033 m!8316106))

(assert (=> b!7931033 m!8312892))

(assert (=> b!7929911 d!2370347))

(assert (=> d!2369637 d!2370013))

(assert (=> d!2369637 d!2369405))

(assert (=> b!7930158 d!2370273))

(declare-fun d!2370349 () Bool)

(assert (=> d!2370349 (= (height!2219 lt!2694001) (ite ((_ is Empty!15904) lt!2694001) 0 (ite ((_ is Leaf!30237) lt!2694001) 1 (cheight!16115 lt!2694001))))))

(assert (=> b!7930158 d!2370349))

(assert (=> b!7929903 d!2370237))

(declare-fun d!2370351 () Bool)

(declare-fun e!4680264 () Bool)

(assert (=> d!2370351 e!4680264))

(declare-fun res!3146819 () Bool)

(assert (=> d!2370351 (=> (not res!3146819) (not e!4680264))))

(declare-fun lt!2694206 () List!74574)

(assert (=> d!2370351 (= res!3146819 (= (content!15785 lt!2694206) ((_ map or) (content!15785 (list!19417 (right!57206 t!4440))) (content!15785 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun e!4680263 () List!74574)

(assert (=> d!2370351 (= lt!2694206 e!4680263)))

(declare-fun c!1456743 () Bool)

(assert (=> d!2370351 (= c!1456743 ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(assert (=> d!2370351 (= (++!18261 (list!19417 (right!57206 t!4440)) (Cons!74450 v!5484 Nil!74450)) lt!2694206)))

(declare-fun b!7931036 () Bool)

(assert (=> b!7931036 (= e!4680263 (Cons!74450 (h!80898 (list!19417 (right!57206 t!4440))) (++!18261 (t!390205 (list!19417 (right!57206 t!4440))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7931035 () Bool)

(assert (=> b!7931035 (= e!4680263 (Cons!74450 v!5484 Nil!74450))))

(declare-fun b!7931037 () Bool)

(declare-fun res!3146818 () Bool)

(assert (=> b!7931037 (=> (not res!3146818) (not e!4680264))))

(assert (=> b!7931037 (= res!3146818 (= (size!43253 lt!2694206) (+ (size!43253 (list!19417 (right!57206 t!4440))) (size!43253 (Cons!74450 v!5484 Nil!74450)))))))

(declare-fun b!7931038 () Bool)

(assert (=> b!7931038 (= e!4680264 (or (not (= (Cons!74450 v!5484 Nil!74450) Nil!74450)) (= lt!2694206 (list!19417 (right!57206 t!4440)))))))

(assert (= (and d!2370351 c!1456743) b!7931035))

(assert (= (and d!2370351 (not c!1456743)) b!7931036))

(assert (= (and d!2370351 res!3146819) b!7931037))

(assert (= (and b!7931037 res!3146818) b!7931038))

(declare-fun m!8316108 () Bool)

(assert (=> d!2370351 m!8316108))

(assert (=> d!2370351 m!8312818))

(assert (=> d!2370351 m!8313730))

(assert (=> d!2370351 m!8314918))

(assert (=> b!7931036 m!8315994))

(declare-fun m!8316110 () Bool)

(assert (=> b!7931037 m!8316110))

(assert (=> b!7931037 m!8312818))

(assert (=> b!7931037 m!8313720))

(assert (=> b!7931037 m!8314922))

(assert (=> b!7929844 d!2370351))

(declare-fun d!2370353 () Bool)

(declare-fun lt!2694207 () Int)

(assert (=> d!2370353 (>= lt!2694207 0)))

(declare-fun e!4680265 () Int)

(assert (=> d!2370353 (= lt!2694207 e!4680265)))

(declare-fun c!1456744 () Bool)

(assert (=> d!2370353 (= c!1456744 ((_ is Nil!74450) lt!2694062))))

(assert (=> d!2370353 (= (size!43253 lt!2694062) lt!2694207)))

(declare-fun b!7931039 () Bool)

(assert (=> b!7931039 (= e!4680265 0)))

(declare-fun b!7931040 () Bool)

(assert (=> b!7931040 (= e!4680265 (+ 1 (size!43253 (t!390205 lt!2694062))))))

(assert (= (and d!2370353 c!1456744) b!7931039))

(assert (= (and d!2370353 (not c!1456744)) b!7931040))

(declare-fun m!8316112 () Bool)

(assert (=> b!7931040 m!8316112))

(assert (=> b!7930422 d!2370353))

(assert (=> b!7930422 d!2369627))

(declare-fun d!2370355 () Bool)

(declare-fun lt!2694208 () Int)

(assert (=> d!2370355 (>= lt!2694208 0)))

(declare-fun e!4680266 () Int)

(assert (=> d!2370355 (= lt!2694208 e!4680266)))

(declare-fun c!1456745 () Bool)

(assert (=> d!2370355 (= c!1456745 ((_ is Nil!74450) (Cons!74450 v!5484 Nil!74450)))))

(assert (=> d!2370355 (= (size!43253 (Cons!74450 v!5484 Nil!74450)) lt!2694208)))

(declare-fun b!7931041 () Bool)

(assert (=> b!7931041 (= e!4680266 0)))

(declare-fun b!7931042 () Bool)

(assert (=> b!7931042 (= e!4680266 (+ 1 (size!43253 (t!390205 (Cons!74450 v!5484 Nil!74450)))))))

(assert (= (and d!2370355 c!1456745) b!7931041))

(assert (= (and d!2370355 (not c!1456745)) b!7931042))

(declare-fun m!8316114 () Bool)

(assert (=> b!7931042 m!8316114))

(assert (=> b!7930422 d!2370355))

(declare-fun d!2370357 () Bool)

(declare-fun lt!2694209 () Int)

(assert (=> d!2370357 (>= lt!2694209 0)))

(declare-fun e!4680267 () Int)

(assert (=> d!2370357 (= lt!2694209 e!4680267)))

(declare-fun c!1456746 () Bool)

(assert (=> d!2370357 (= c!1456746 ((_ is Nil!74450) lt!2693894))))

(assert (=> d!2370357 (= (size!43253 lt!2693894) lt!2694209)))

(declare-fun b!7931043 () Bool)

(assert (=> b!7931043 (= e!4680267 0)))

(declare-fun b!7931044 () Bool)

(assert (=> b!7931044 (= e!4680267 (+ 1 (size!43253 (t!390205 lt!2693894))))))

(assert (= (and d!2370357 c!1456746) b!7931043))

(assert (= (and d!2370357 (not c!1456746)) b!7931044))

(declare-fun m!8316116 () Bool)

(assert (=> b!7931044 m!8316116))

(assert (=> b!7929788 d!2370357))

(declare-fun d!2370359 () Bool)

(declare-fun lt!2694210 () Int)

(assert (=> d!2370359 (>= lt!2694210 0)))

(declare-fun e!4680268 () Int)

(assert (=> d!2370359 (= lt!2694210 e!4680268)))

(declare-fun c!1456747 () Bool)

(assert (=> d!2370359 (= c!1456747 ((_ is Nil!74450) (t!390205 lt!2693717)))))

(assert (=> d!2370359 (= (size!43253 (t!390205 lt!2693717)) lt!2694210)))

(declare-fun b!7931045 () Bool)

(assert (=> b!7931045 (= e!4680268 0)))

(declare-fun b!7931046 () Bool)

(assert (=> b!7931046 (= e!4680268 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693717)))))))

(assert (= (and d!2370359 c!1456747) b!7931045))

(assert (= (and d!2370359 (not c!1456747)) b!7931046))

(assert (=> b!7931046 m!8316008))

(assert (=> b!7929788 d!2370359))

(assert (=> b!7929788 d!2369499))

(declare-fun d!2370361 () Bool)

(declare-fun e!4680270 () Bool)

(assert (=> d!2370361 e!4680270))

(declare-fun res!3146821 () Bool)

(assert (=> d!2370361 (=> (not res!3146821) (not e!4680270))))

(declare-fun lt!2694211 () List!74574)

(assert (=> d!2370361 (= res!3146821 (= (content!15785 lt!2694211) ((_ map or) (content!15785 (list!19417 (left!56876 (right!57206 lt!2693719)))) (content!15785 (list!19417 (right!57206 (right!57206 lt!2693719)))))))))

(declare-fun e!4680269 () List!74574)

(assert (=> d!2370361 (= lt!2694211 e!4680269)))

(declare-fun c!1456748 () Bool)

(assert (=> d!2370361 (= c!1456748 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 lt!2693719)))))))

(assert (=> d!2370361 (= (++!18261 (list!19417 (left!56876 (right!57206 lt!2693719))) (list!19417 (right!57206 (right!57206 lt!2693719)))) lt!2694211)))

(declare-fun b!7931048 () Bool)

(assert (=> b!7931048 (= e!4680269 (Cons!74450 (h!80898 (list!19417 (left!56876 (right!57206 lt!2693719)))) (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693719)))) (list!19417 (right!57206 (right!57206 lt!2693719))))))))

(declare-fun b!7931047 () Bool)

(assert (=> b!7931047 (= e!4680269 (list!19417 (right!57206 (right!57206 lt!2693719))))))

(declare-fun b!7931049 () Bool)

(declare-fun res!3146820 () Bool)

(assert (=> b!7931049 (=> (not res!3146820) (not e!4680270))))

(assert (=> b!7931049 (= res!3146820 (= (size!43253 lt!2694211) (+ (size!43253 (list!19417 (left!56876 (right!57206 lt!2693719)))) (size!43253 (list!19417 (right!57206 (right!57206 lt!2693719)))))))))

(declare-fun b!7931050 () Bool)

(assert (=> b!7931050 (= e!4680270 (or (not (= (list!19417 (right!57206 (right!57206 lt!2693719))) Nil!74450)) (= lt!2694211 (list!19417 (left!56876 (right!57206 lt!2693719))))))))

(assert (= (and d!2370361 c!1456748) b!7931047))

(assert (= (and d!2370361 (not c!1456748)) b!7931048))

(assert (= (and d!2370361 res!3146821) b!7931049))

(assert (= (and b!7931049 res!3146820) b!7931050))

(declare-fun m!8316118 () Bool)

(assert (=> d!2370361 m!8316118))

(assert (=> d!2370361 m!8313668))

(declare-fun m!8316120 () Bool)

(assert (=> d!2370361 m!8316120))

(assert (=> d!2370361 m!8313670))

(declare-fun m!8316122 () Bool)

(assert (=> d!2370361 m!8316122))

(assert (=> b!7931048 m!8313670))

(declare-fun m!8316124 () Bool)

(assert (=> b!7931048 m!8316124))

(declare-fun m!8316126 () Bool)

(assert (=> b!7931049 m!8316126))

(assert (=> b!7931049 m!8313668))

(declare-fun m!8316128 () Bool)

(assert (=> b!7931049 m!8316128))

(assert (=> b!7931049 m!8313670))

(declare-fun m!8316130 () Bool)

(assert (=> b!7931049 m!8316130))

(assert (=> b!7929831 d!2370361))

(declare-fun d!2370363 () Bool)

(declare-fun c!1456749 () Bool)

(assert (=> d!2370363 (= c!1456749 ((_ is Empty!15904) (left!56876 (right!57206 lt!2693719))))))

(declare-fun e!4680271 () List!74574)

(assert (=> d!2370363 (= (list!19417 (left!56876 (right!57206 lt!2693719))) e!4680271)))

(declare-fun b!7931051 () Bool)

(assert (=> b!7931051 (= e!4680271 Nil!74450)))

(declare-fun b!7931054 () Bool)

(declare-fun e!4680272 () List!74574)

(assert (=> b!7931054 (= e!4680272 (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693719)))) (list!19417 (right!57206 (left!56876 (right!57206 lt!2693719))))))))

(declare-fun b!7931053 () Bool)

(assert (=> b!7931053 (= e!4680272 (list!19419 (xs!19294 (left!56876 (right!57206 lt!2693719)))))))

(declare-fun b!7931052 () Bool)

(assert (=> b!7931052 (= e!4680271 e!4680272)))

(declare-fun c!1456750 () Bool)

(assert (=> b!7931052 (= c!1456750 ((_ is Leaf!30237) (left!56876 (right!57206 lt!2693719))))))

(assert (= (and d!2370363 c!1456749) b!7931051))

(assert (= (and d!2370363 (not c!1456749)) b!7931052))

(assert (= (and b!7931052 c!1456750) b!7931053))

(assert (= (and b!7931052 (not c!1456750)) b!7931054))

(declare-fun m!8316132 () Bool)

(assert (=> b!7931054 m!8316132))

(declare-fun m!8316134 () Bool)

(assert (=> b!7931054 m!8316134))

(assert (=> b!7931054 m!8316132))

(assert (=> b!7931054 m!8316134))

(declare-fun m!8316136 () Bool)

(assert (=> b!7931054 m!8316136))

(declare-fun m!8316138 () Bool)

(assert (=> b!7931053 m!8316138))

(assert (=> b!7929831 d!2370363))

(declare-fun d!2370365 () Bool)

(declare-fun c!1456751 () Bool)

(assert (=> d!2370365 (= c!1456751 ((_ is Empty!15904) (right!57206 (right!57206 lt!2693719))))))

(declare-fun e!4680273 () List!74574)

(assert (=> d!2370365 (= (list!19417 (right!57206 (right!57206 lt!2693719))) e!4680273)))

(declare-fun b!7931055 () Bool)

(assert (=> b!7931055 (= e!4680273 Nil!74450)))

(declare-fun b!7931058 () Bool)

(declare-fun e!4680274 () List!74574)

(assert (=> b!7931058 (= e!4680274 (++!18261 (list!19417 (left!56876 (right!57206 (right!57206 lt!2693719)))) (list!19417 (right!57206 (right!57206 (right!57206 lt!2693719))))))))

(declare-fun b!7931057 () Bool)

(assert (=> b!7931057 (= e!4680274 (list!19419 (xs!19294 (right!57206 (right!57206 lt!2693719)))))))

(declare-fun b!7931056 () Bool)

(assert (=> b!7931056 (= e!4680273 e!4680274)))

(declare-fun c!1456752 () Bool)

(assert (=> b!7931056 (= c!1456752 ((_ is Leaf!30237) (right!57206 (right!57206 lt!2693719))))))

(assert (= (and d!2370365 c!1456751) b!7931055))

(assert (= (and d!2370365 (not c!1456751)) b!7931056))

(assert (= (and b!7931056 c!1456752) b!7931057))

(assert (= (and b!7931056 (not c!1456752)) b!7931058))

(declare-fun m!8316140 () Bool)

(assert (=> b!7931058 m!8316140))

(declare-fun m!8316142 () Bool)

(assert (=> b!7931058 m!8316142))

(assert (=> b!7931058 m!8316140))

(assert (=> b!7931058 m!8316142))

(declare-fun m!8316144 () Bool)

(assert (=> b!7931058 m!8316144))

(declare-fun m!8316146 () Bool)

(assert (=> b!7931057 m!8316146))

(assert (=> b!7929831 d!2370365))

(declare-fun b!7931059 () Bool)

(declare-fun res!3146825 () Bool)

(declare-fun e!4680275 () Bool)

(assert (=> b!7931059 (=> (not res!3146825) (not e!4680275))))

(assert (=> b!7931059 (= res!3146825 (isBalanced!4530 (left!56876 (right!57206 lt!2693867))))))

(declare-fun d!2370367 () Bool)

(declare-fun res!3146822 () Bool)

(declare-fun e!4680276 () Bool)

(assert (=> d!2370367 (=> res!3146822 e!4680276)))

(assert (=> d!2370367 (= res!3146822 (not ((_ is Node!15904) (right!57206 lt!2693867))))))

(assert (=> d!2370367 (= (isBalanced!4530 (right!57206 lt!2693867)) e!4680276)))

(declare-fun b!7931060 () Bool)

(declare-fun res!3146827 () Bool)

(assert (=> b!7931060 (=> (not res!3146827) (not e!4680275))))

(assert (=> b!7931060 (= res!3146827 (isBalanced!4530 (right!57206 (right!57206 lt!2693867))))))

(declare-fun b!7931061 () Bool)

(declare-fun res!3146823 () Bool)

(assert (=> b!7931061 (=> (not res!3146823) (not e!4680275))))

(assert (=> b!7931061 (= res!3146823 (not (isEmpty!42779 (left!56876 (right!57206 lt!2693867)))))))

(declare-fun b!7931062 () Bool)

(declare-fun res!3146824 () Bool)

(assert (=> b!7931062 (=> (not res!3146824) (not e!4680275))))

(assert (=> b!7931062 (= res!3146824 (<= (- (height!2219 (left!56876 (right!57206 lt!2693867))) (height!2219 (right!57206 (right!57206 lt!2693867)))) 1))))

(declare-fun b!7931063 () Bool)

(assert (=> b!7931063 (= e!4680276 e!4680275)))

(declare-fun res!3146826 () Bool)

(assert (=> b!7931063 (=> (not res!3146826) (not e!4680275))))

(assert (=> b!7931063 (= res!3146826 (<= (- 1) (- (height!2219 (left!56876 (right!57206 lt!2693867))) (height!2219 (right!57206 (right!57206 lt!2693867))))))))

(declare-fun b!7931064 () Bool)

(assert (=> b!7931064 (= e!4680275 (not (isEmpty!42779 (right!57206 (right!57206 lt!2693867)))))))

(assert (= (and d!2370367 (not res!3146822)) b!7931063))

(assert (= (and b!7931063 res!3146826) b!7931062))

(assert (= (and b!7931062 res!3146824) b!7931059))

(assert (= (and b!7931059 res!3146825) b!7931060))

(assert (= (and b!7931060 res!3146827) b!7931061))

(assert (= (and b!7931061 res!3146823) b!7931064))

(declare-fun m!8316148 () Bool)

(assert (=> b!7931064 m!8316148))

(declare-fun m!8316150 () Bool)

(assert (=> b!7931063 m!8316150))

(declare-fun m!8316152 () Bool)

(assert (=> b!7931063 m!8316152))

(declare-fun m!8316154 () Bool)

(assert (=> b!7931060 m!8316154))

(declare-fun m!8316156 () Bool)

(assert (=> b!7931059 m!8316156))

(assert (=> b!7931062 m!8316150))

(assert (=> b!7931062 m!8316152))

(declare-fun m!8316158 () Bool)

(assert (=> b!7931061 m!8316158))

(assert (=> b!7929960 d!2370367))

(declare-fun d!2370369 () Bool)

(declare-fun c!1456753 () Bool)

(assert (=> d!2370369 (= c!1456753 ((_ is Empty!15904) (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440))))))))

(declare-fun e!4680277 () List!74574)

(assert (=> d!2370369 (= (list!19417 (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440))))) e!4680277)))

(declare-fun b!7931065 () Bool)

(assert (=> b!7931065 (= e!4680277 Nil!74450)))

(declare-fun b!7931068 () Bool)

(declare-fun e!4680278 () List!74574)

(assert (=> b!7931068 (= e!4680278 (++!18261 (list!19417 (left!56876 (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440)))))) (list!19417 (right!57206 (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440))))))))))

(declare-fun b!7931067 () Bool)

(assert (=> b!7931067 (= e!4680278 (list!19419 (xs!19294 (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7931066 () Bool)

(assert (=> b!7931066 (= e!4680277 e!4680278)))

(declare-fun c!1456754 () Bool)

(assert (=> b!7931066 (= c!1456754 ((_ is Leaf!30237) (ite c!1456438 (right!57206 (right!57206 (right!57206 t!4440))) (left!56876 (right!57206 (right!57206 t!4440))))))))

(assert (= (and d!2370369 c!1456753) b!7931065))

(assert (= (and d!2370369 (not c!1456753)) b!7931066))

(assert (= (and b!7931066 c!1456754) b!7931067))

(assert (= (and b!7931066 (not c!1456754)) b!7931068))

(declare-fun m!8316160 () Bool)

(assert (=> b!7931068 m!8316160))

(declare-fun m!8316162 () Bool)

(assert (=> b!7931068 m!8316162))

(assert (=> b!7931068 m!8316160))

(assert (=> b!7931068 m!8316162))

(declare-fun m!8316164 () Bool)

(assert (=> b!7931068 m!8316164))

(declare-fun m!8316166 () Bool)

(assert (=> b!7931067 m!8316166))

(assert (=> bm!735362 d!2370369))

(declare-fun d!2370371 () Bool)

(declare-fun c!1456755 () Bool)

(assert (=> d!2370371 (= c!1456755 ((_ is Nil!74450) lt!2694036))))

(declare-fun e!4680279 () (InoxSet T!145818))

(assert (=> d!2370371 (= (content!15785 lt!2694036) e!4680279)))

(declare-fun b!7931069 () Bool)

(assert (=> b!7931069 (= e!4680279 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931070 () Bool)

(assert (=> b!7931070 (= e!4680279 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694036) true) (content!15785 (t!390205 lt!2694036))))))

(assert (= (and d!2370371 c!1456755) b!7931069))

(assert (= (and d!2370371 (not c!1456755)) b!7931070))

(declare-fun m!8316168 () Bool)

(assert (=> b!7931070 m!8316168))

(declare-fun m!8316170 () Bool)

(assert (=> b!7931070 m!8316170))

(assert (=> d!2369771 d!2370371))

(assert (=> d!2369771 d!2370115))

(declare-fun d!2370373 () Bool)

(declare-fun c!1456756 () Bool)

(assert (=> d!2370373 (= c!1456756 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693711))))))

(declare-fun e!4680280 () (InoxSet T!145818))

(assert (=> d!2370373 (= (content!15785 (list!19417 (left!56876 lt!2693711))) e!4680280)))

(declare-fun b!7931071 () Bool)

(assert (=> b!7931071 (= e!4680280 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931072 () Bool)

(assert (=> b!7931072 (= e!4680280 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 lt!2693711))) true) (content!15785 (t!390205 (list!19417 (left!56876 lt!2693711))))))))

(assert (= (and d!2370373 c!1456756) b!7931071))

(assert (= (and d!2370373 (not c!1456756)) b!7931072))

(declare-fun m!8316172 () Bool)

(assert (=> b!7931072 m!8316172))

(declare-fun m!8316174 () Bool)

(assert (=> b!7931072 m!8316174))

(assert (=> d!2369771 d!2370373))

(declare-fun d!2370375 () Bool)

(assert (=> d!2370375 (= (list!19419 (xs!19294 lt!2693867)) (innerList!15992 (xs!19294 lt!2693867)))))

(assert (=> b!7929834 d!2370375))

(assert (=> bm!735368 d!2369957))

(assert (=> d!2369775 d!2369805))

(assert (=> d!2369775 d!2369555))

(declare-fun d!2370377 () Bool)

(declare-fun _$6!632 () IArray!31869)

(assert (=> d!2370377 (= _$6!632 (IArray!31870 ($colon+!317 (list!19419 (xs!19294 (right!57206 t!4440))) v!5484)))))

(declare-fun e!4680283 () Bool)

(assert (=> d!2370377 (and (inv!95731 _$6!632) e!4680283)))

(assert (=> d!2370377 (= (choose!59838 (xs!19294 (right!57206 t!4440)) v!5484) _$6!632)))

(declare-fun b!7931075 () Bool)

(declare-fun tp!2358918 () Bool)

(assert (=> b!7931075 (= e!4680283 tp!2358918)))

(assert (= d!2370377 b!7931075))

(assert (=> d!2370377 m!8312944))

(assert (=> d!2370377 m!8312944))

(assert (=> d!2370377 m!8313346))

(declare-fun m!8316176 () Bool)

(assert (=> d!2370377 m!8316176))

(assert (=> d!2369775 d!2370377))

(declare-fun d!2370379 () Bool)

(declare-fun lt!2694214 () Int)

(assert (=> d!2370379 (= lt!2694214 (size!43253 (list!19419 (xs!19294 (right!57206 t!4440)))))))

(declare-fun choose!59840 (IArray!31869) Int)

(assert (=> d!2370379 (= lt!2694214 (choose!59840 (xs!19294 (right!57206 t!4440))))))

(assert (=> d!2370379 (= (size!43257 (xs!19294 (right!57206 t!4440))) lt!2694214)))

(declare-fun bs!1968981 () Bool)

(assert (= bs!1968981 d!2370379))

(assert (=> bs!1968981 m!8312944))

(assert (=> bs!1968981 m!8312944))

(assert (=> bs!1968981 m!8314702))

(declare-fun m!8316178 () Bool)

(assert (=> bs!1968981 m!8316178))

(assert (=> d!2369775 d!2370379))

(declare-fun d!2370381 () Bool)

(declare-fun lt!2694215 () Int)

(assert (=> d!2370381 (>= lt!2694215 0)))

(declare-fun e!4680284 () Int)

(assert (=> d!2370381 (= lt!2694215 e!4680284)))

(declare-fun c!1456757 () Bool)

(assert (=> d!2370381 (= c!1456757 ((_ is Nil!74450) lt!2694052))))

(assert (=> d!2370381 (= (size!43253 lt!2694052) lt!2694215)))

(declare-fun b!7931076 () Bool)

(assert (=> b!7931076 (= e!4680284 0)))

(declare-fun b!7931077 () Bool)

(assert (=> b!7931077 (= e!4680284 (+ 1 (size!43253 (t!390205 lt!2694052))))))

(assert (= (and d!2370381 c!1456757) b!7931076))

(assert (= (and d!2370381 (not c!1456757)) b!7931077))

(declare-fun m!8316180 () Bool)

(assert (=> b!7931077 m!8316180))

(assert (=> b!7930361 d!2370381))

(declare-fun d!2370383 () Bool)

(declare-fun lt!2694216 () Int)

(assert (=> d!2370383 (>= lt!2694216 0)))

(declare-fun e!4680285 () Int)

(assert (=> d!2370383 (= lt!2694216 e!4680285)))

(declare-fun c!1456758 () Bool)

(assert (=> d!2370383 (= c!1456758 ((_ is Nil!74450) lt!2693860))))

(assert (=> d!2370383 (= (size!43253 lt!2693860) lt!2694216)))

(declare-fun b!7931078 () Bool)

(assert (=> b!7931078 (= e!4680285 0)))

(declare-fun b!7931079 () Bool)

(assert (=> b!7931079 (= e!4680285 (+ 1 (size!43253 (t!390205 lt!2693860))))))

(assert (= (and d!2370383 c!1456758) b!7931078))

(assert (= (and d!2370383 (not c!1456758)) b!7931079))

(assert (=> b!7931079 m!8316048))

(assert (=> b!7930361 d!2370383))

(declare-fun d!2370385 () Bool)

(declare-fun lt!2694217 () Int)

(assert (=> d!2370385 (>= lt!2694217 0)))

(declare-fun e!4680286 () Int)

(assert (=> d!2370385 (= lt!2694217 e!4680286)))

(declare-fun c!1456759 () Bool)

(assert (=> d!2370385 (= c!1456759 ((_ is Nil!74450) call!735338))))

(assert (=> d!2370385 (= (size!43253 call!735338) lt!2694217)))

(declare-fun b!7931080 () Bool)

(assert (=> b!7931080 (= e!4680286 0)))

(declare-fun b!7931081 () Bool)

(assert (=> b!7931081 (= e!4680286 (+ 1 (size!43253 (t!390205 call!735338))))))

(assert (= (and d!2370385 c!1456759) b!7931080))

(assert (= (and d!2370385 (not c!1456759)) b!7931081))

(declare-fun m!8316182 () Bool)

(assert (=> b!7931081 m!8316182))

(assert (=> b!7930361 d!2370385))

(declare-fun d!2370387 () Bool)

(declare-fun c!1456760 () Bool)

(assert (=> d!2370387 (= c!1456760 ((_ is Empty!15904) lt!2693910))))

(declare-fun e!4680287 () List!74574)

(assert (=> d!2370387 (= (list!19417 lt!2693910) e!4680287)))

(declare-fun b!7931082 () Bool)

(assert (=> b!7931082 (= e!4680287 Nil!74450)))

(declare-fun b!7931085 () Bool)

(declare-fun e!4680288 () List!74574)

(assert (=> b!7931085 (= e!4680288 (++!18261 (list!19417 (left!56876 lt!2693910)) (list!19417 (right!57206 lt!2693910))))))

(declare-fun b!7931084 () Bool)

(assert (=> b!7931084 (= e!4680288 (list!19419 (xs!19294 lt!2693910)))))

(declare-fun b!7931083 () Bool)

(assert (=> b!7931083 (= e!4680287 e!4680288)))

(declare-fun c!1456761 () Bool)

(assert (=> b!7931083 (= c!1456761 ((_ is Leaf!30237) lt!2693910))))

(assert (= (and d!2370387 c!1456760) b!7931082))

(assert (= (and d!2370387 (not c!1456760)) b!7931083))

(assert (= (and b!7931083 c!1456761) b!7931084))

(assert (= (and b!7931083 (not c!1456761)) b!7931085))

(declare-fun m!8316184 () Bool)

(assert (=> b!7931085 m!8316184))

(declare-fun m!8316186 () Bool)

(assert (=> b!7931085 m!8316186))

(assert (=> b!7931085 m!8316184))

(assert (=> b!7931085 m!8316186))

(declare-fun m!8316188 () Bool)

(assert (=> b!7931085 m!8316188))

(declare-fun m!8316190 () Bool)

(assert (=> b!7931084 m!8316190))

(assert (=> d!2369461 d!2370387))

(declare-fun d!2370389 () Bool)

(declare-fun e!4680290 () Bool)

(assert (=> d!2370389 e!4680290))

(declare-fun res!3146829 () Bool)

(assert (=> d!2370389 (=> (not res!3146829) (not e!4680290))))

(declare-fun lt!2694218 () List!74574)

(assert (=> d!2370389 (= res!3146829 (= (content!15785 lt!2694218) ((_ map or) (content!15785 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))) (content!15785 (list!19417 e!4679595)))))))

(declare-fun e!4680289 () List!74574)

(assert (=> d!2370389 (= lt!2694218 e!4680289)))

(declare-fun c!1456762 () Bool)

(assert (=> d!2370389 (= c!1456762 ((_ is Nil!74450) (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))))))

(assert (=> d!2370389 (= (++!18261 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) (list!19417 e!4679595)) lt!2694218)))

(declare-fun b!7931087 () Bool)

(assert (=> b!7931087 (= e!4680289 (Cons!74450 (h!80898 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))) (++!18261 (t!390205 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))) (list!19417 e!4679595))))))

(declare-fun b!7931086 () Bool)

(assert (=> b!7931086 (= e!4680289 (list!19417 e!4679595))))

(declare-fun b!7931088 () Bool)

(declare-fun res!3146828 () Bool)

(assert (=> b!7931088 (=> (not res!3146828) (not e!4680290))))

(assert (=> b!7931088 (= res!3146828 (= (size!43253 lt!2694218) (+ (size!43253 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))) (size!43253 (list!19417 e!4679595)))))))

(declare-fun b!7931089 () Bool)

(assert (=> b!7931089 (= e!4680290 (or (not (= (list!19417 e!4679595) Nil!74450)) (= lt!2694218 (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))))

(assert (= (and d!2370389 c!1456762) b!7931086))

(assert (= (and d!2370389 (not c!1456762)) b!7931087))

(assert (= (and d!2370389 res!3146829) b!7931088))

(assert (= (and b!7931088 res!3146828) b!7931089))

(declare-fun m!8316192 () Bool)

(assert (=> d!2370389 m!8316192))

(assert (=> d!2370389 m!8313790))

(declare-fun m!8316194 () Bool)

(assert (=> d!2370389 m!8316194))

(assert (=> d!2370389 m!8313792))

(declare-fun m!8316196 () Bool)

(assert (=> d!2370389 m!8316196))

(assert (=> b!7931087 m!8313792))

(declare-fun m!8316198 () Bool)

(assert (=> b!7931087 m!8316198))

(declare-fun m!8316200 () Bool)

(assert (=> b!7931088 m!8316200))

(assert (=> b!7931088 m!8313790))

(assert (=> b!7931088 m!8316090))

(assert (=> b!7931088 m!8313792))

(assert (=> b!7931088 m!8316092))

(assert (=> d!2369461 d!2370389))

(declare-fun d!2370391 () Bool)

(declare-fun c!1456763 () Bool)

(assert (=> d!2370391 (= c!1456763 ((_ is Empty!15904) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))

(declare-fun e!4680291 () List!74574)

(assert (=> d!2370391 (= (list!19417 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))) e!4680291)))

(declare-fun b!7931090 () Bool)

(assert (=> b!7931090 (= e!4680291 Nil!74450)))

(declare-fun b!7931093 () Bool)

(declare-fun e!4680292 () List!74574)

(assert (=> b!7931093 (= e!4680292 (++!18261 (list!19417 (left!56876 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))) (list!19417 (right!57206 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))))

(declare-fun b!7931092 () Bool)

(assert (=> b!7931092 (= e!4680292 (list!19419 (xs!19294 (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440)))))))

(declare-fun b!7931091 () Bool)

(assert (=> b!7931091 (= e!4680291 e!4680292)))

(declare-fun c!1456764 () Bool)

(assert (=> b!7931091 (= c!1456764 ((_ is Leaf!30237) (ite c!1456283 (left!56876 (right!57206 t!4440)) (right!57206 t!4440))))))

(assert (= (and d!2370391 c!1456763) b!7931090))

(assert (= (and d!2370391 (not c!1456763)) b!7931091))

(assert (= (and b!7931091 c!1456764) b!7931092))

(assert (= (and b!7931091 (not c!1456764)) b!7931093))

(declare-fun m!8316202 () Bool)

(assert (=> b!7931093 m!8316202))

(declare-fun m!8316204 () Bool)

(assert (=> b!7931093 m!8316204))

(assert (=> b!7931093 m!8316202))

(assert (=> b!7931093 m!8316204))

(declare-fun m!8316206 () Bool)

(assert (=> b!7931093 m!8316206))

(declare-fun m!8316208 () Bool)

(assert (=> b!7931092 m!8316208))

(assert (=> d!2369461 d!2370391))

(declare-fun d!2370393 () Bool)

(declare-fun c!1456765 () Bool)

(assert (=> d!2370393 (= c!1456765 ((_ is Empty!15904) e!4679595))))

(declare-fun e!4680293 () List!74574)

(assert (=> d!2370393 (= (list!19417 e!4679595) e!4680293)))

(declare-fun b!7931094 () Bool)

(assert (=> b!7931094 (= e!4680293 Nil!74450)))

(declare-fun b!7931097 () Bool)

(declare-fun e!4680294 () List!74574)

(assert (=> b!7931097 (= e!4680294 (++!18261 (list!19417 (left!56876 e!4679595)) (list!19417 (right!57206 e!4679595))))))

(declare-fun b!7931096 () Bool)

(assert (=> b!7931096 (= e!4680294 (list!19419 (xs!19294 e!4679595)))))

(declare-fun b!7931095 () Bool)

(assert (=> b!7931095 (= e!4680293 e!4680294)))

(declare-fun c!1456766 () Bool)

(assert (=> b!7931095 (= c!1456766 ((_ is Leaf!30237) e!4679595))))

(assert (= (and d!2370393 c!1456765) b!7931094))

(assert (= (and d!2370393 (not c!1456765)) b!7931095))

(assert (= (and b!7931095 c!1456766) b!7931096))

(assert (= (and b!7931095 (not c!1456766)) b!7931097))

(declare-fun m!8316210 () Bool)

(assert (=> b!7931097 m!8316210))

(declare-fun m!8316212 () Bool)

(assert (=> b!7931097 m!8316212))

(assert (=> b!7931097 m!8316210))

(assert (=> b!7931097 m!8316212))

(declare-fun m!8316214 () Bool)

(assert (=> b!7931097 m!8316214))

(declare-fun m!8316216 () Bool)

(assert (=> b!7931096 m!8316216))

(assert (=> d!2369461 d!2370393))

(declare-fun d!2370395 () Bool)

(declare-fun c!1456767 () Bool)

(assert (=> d!2370395 (= c!1456767 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693715 lt!2693721))))))

(declare-fun e!4680295 () (InoxSet T!145818))

(assert (=> d!2370395 (= (content!15785 (t!390205 (++!18261 lt!2693715 lt!2693721))) e!4680295)))

(declare-fun b!7931098 () Bool)

(assert (=> b!7931098 (= e!4680295 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931099 () Bool)

(assert (=> b!7931099 (= e!4680295 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 (++!18261 lt!2693715 lt!2693721))) true) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693715 lt!2693721))))))))

(assert (= (and d!2370395 c!1456767) b!7931098))

(assert (= (and d!2370395 (not c!1456767)) b!7931099))

(declare-fun m!8316218 () Bool)

(assert (=> b!7931099 m!8316218))

(declare-fun m!8316220 () Bool)

(assert (=> b!7931099 m!8316220))

(assert (=> b!7929799 d!2370395))

(declare-fun d!2370397 () Bool)

(assert (=> d!2370397 (= (list!19419 (xs!19294 lt!2693713)) (innerList!15992 (xs!19294 lt!2693713)))))

(assert (=> b!7930224 d!2370397))

(declare-fun d!2370399 () Bool)

(declare-fun res!3146830 () Bool)

(declare-fun e!4680296 () Bool)

(assert (=> d!2370399 (=> (not res!3146830) (not e!4680296))))

(assert (=> d!2370399 (= res!3146830 (<= (size!43253 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) 512))))

(assert (=> d!2370399 (= (inv!95733 (right!57206 (right!57206 t!4440))) e!4680296)))

(declare-fun b!7931100 () Bool)

(declare-fun res!3146831 () Bool)

(assert (=> b!7931100 (=> (not res!3146831) (not e!4680296))))

(assert (=> b!7931100 (= res!3146831 (= (csize!32039 (right!57206 (right!57206 t!4440))) (size!43253 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7931101 () Bool)

(assert (=> b!7931101 (= e!4680296 (and (> (csize!32039 (right!57206 (right!57206 t!4440))) 0) (<= (csize!32039 (right!57206 (right!57206 t!4440))) 512)))))

(assert (= (and d!2370399 res!3146830) b!7931100))

(assert (= (and b!7931100 res!3146831) b!7931101))

(assert (=> d!2370399 m!8313506))

(assert (=> d!2370399 m!8313506))

(declare-fun m!8316222 () Bool)

(assert (=> d!2370399 m!8316222))

(assert (=> b!7931100 m!8313506))

(assert (=> b!7931100 m!8313506))

(assert (=> b!7931100 m!8316222))

(assert (=> b!7929879 d!2370399))

(declare-fun d!2370401 () Bool)

(assert (=> d!2370401 (= (isEmpty!42782 (list!19417 (right!57206 t!4440))) ((_ is Nil!74450) (list!19417 (right!57206 t!4440))))))

(assert (=> d!2369711 d!2370401))

(assert (=> d!2369711 d!2369241))

(assert (=> d!2369711 d!2370055))

(declare-fun d!2370403 () Bool)

(declare-fun c!1456768 () Bool)

(assert (=> d!2370403 (= c!1456768 ((_ is Nil!74450) (t!390205 lt!2693721)))))

(declare-fun e!4680297 () (InoxSet T!145818))

(assert (=> d!2370403 (= (content!15785 (t!390205 lt!2693721)) e!4680297)))

(declare-fun b!7931102 () Bool)

(assert (=> b!7931102 (= e!4680297 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931103 () Bool)

(assert (=> b!7931103 (= e!4680297 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693721)) true) (content!15785 (t!390205 (t!390205 lt!2693721)))))))

(assert (= (and d!2370403 c!1456768) b!7931102))

(assert (= (and d!2370403 (not c!1456768)) b!7931103))

(declare-fun m!8316224 () Bool)

(assert (=> b!7931103 m!8316224))

(declare-fun m!8316226 () Bool)

(assert (=> b!7931103 m!8316226))

(assert (=> b!7929733 d!2370403))

(assert (=> b!7929939 d!2370289))

(assert (=> bm!735360 d!2369741))

(assert (=> b!7930343 d!2370311))

(assert (=> b!7930343 d!2370313))

(declare-fun d!2370405 () Bool)

(declare-fun lt!2694219 () (_ BitVec 32))

(assert (=> d!2370405 (and (bvsle #b00000000000000000000000000000000 lt!2694219) (bvsle lt!2694219 #b01111111111111111111111111111111))))

(declare-fun e!4680298 () (_ BitVec 32))

(assert (=> d!2370405 (= lt!2694219 e!4680298)))

(declare-fun c!1456769 () Bool)

(assert (=> d!2370405 (= c!1456769 ((_ is Nil!74450) lt!2694044))))

(assert (=> d!2370405 (= (isize!121 lt!2694044) lt!2694219)))

(declare-fun b!7931104 () Bool)

(assert (=> b!7931104 (= e!4680298 #b00000000000000000000000000000000)))

(declare-fun b!7931105 () Bool)

(declare-fun lt!2694220 () (_ BitVec 32))

(assert (=> b!7931105 (= e!4680298 (ite (= lt!2694220 #b01111111111111111111111111111111) lt!2694220 (bvadd #b00000000000000000000000000000001 lt!2694220)))))

(assert (=> b!7931105 (= lt!2694220 (isize!121 (t!390205 lt!2694044)))))

(assert (= (and d!2370405 c!1456769) b!7931104))

(assert (= (and d!2370405 (not c!1456769)) b!7931105))

(declare-fun m!8316228 () Bool)

(assert (=> b!7931105 m!8316228))

(assert (=> bm!735369 d!2370405))

(declare-fun d!2370407 () Bool)

(declare-fun res!3146832 () Bool)

(declare-fun e!4680299 () Bool)

(assert (=> d!2370407 (=> (not res!3146832) (not e!4680299))))

(assert (=> d!2370407 (= res!3146832 (= (csize!32038 (left!56876 (right!57206 t!4440))) (+ (size!43255 (left!56876 (left!56876 (right!57206 t!4440)))) (size!43255 (right!57206 (left!56876 (right!57206 t!4440)))))))))

(assert (=> d!2370407 (= (inv!95732 (left!56876 (right!57206 t!4440))) e!4680299)))

(declare-fun b!7931106 () Bool)

(declare-fun res!3146833 () Bool)

(assert (=> b!7931106 (=> (not res!3146833) (not e!4680299))))

(assert (=> b!7931106 (= res!3146833 (and (not (= (left!56876 (left!56876 (right!57206 t!4440))) Empty!15904)) (not (= (right!57206 (left!56876 (right!57206 t!4440))) Empty!15904))))))

(declare-fun b!7931107 () Bool)

(declare-fun res!3146834 () Bool)

(assert (=> b!7931107 (=> (not res!3146834) (not e!4680299))))

(assert (=> b!7931107 (= res!3146834 (= (cheight!16115 (left!56876 (right!57206 t!4440))) (+ (max!0 (height!2219 (left!56876 (left!56876 (right!57206 t!4440)))) (height!2219 (right!57206 (left!56876 (right!57206 t!4440))))) 1)))))

(declare-fun b!7931108 () Bool)

(assert (=> b!7931108 (= e!4680299 (<= 0 (cheight!16115 (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2370407 res!3146832) b!7931106))

(assert (= (and b!7931106 res!3146833) b!7931107))

(assert (= (and b!7931107 res!3146834) b!7931108))

(declare-fun m!8316230 () Bool)

(assert (=> d!2370407 m!8316230))

(declare-fun m!8316232 () Bool)

(assert (=> d!2370407 m!8316232))

(assert (=> b!7931107 m!8314996))

(assert (=> b!7931107 m!8314998))

(assert (=> b!7931107 m!8314996))

(assert (=> b!7931107 m!8314998))

(declare-fun m!8316234 () Bool)

(assert (=> b!7931107 m!8316234))

(assert (=> b!7929874 d!2370407))

(declare-fun d!2370409 () Bool)

(assert (=> d!2370409 (= (inv!95731 (xs!19294 (left!56876 (left!56876 t!4440)))) (<= (size!43253 (innerList!15992 (xs!19294 (left!56876 (left!56876 t!4440))))) 2147483647))))

(declare-fun bs!1968982 () Bool)

(assert (= bs!1968982 d!2370409))

(declare-fun m!8316236 () Bool)

(assert (=> bs!1968982 m!8316236))

(assert (=> b!7930456 d!2370409))

(declare-fun d!2370411 () Bool)

(declare-fun lt!2694221 () Int)

(assert (=> d!2370411 (>= lt!2694221 0)))

(declare-fun e!4680300 () Int)

(assert (=> d!2370411 (= lt!2694221 e!4680300)))

(declare-fun c!1456770 () Bool)

(assert (=> d!2370411 (= c!1456770 ((_ is Nil!74450) (t!390205 lt!2693764)))))

(assert (=> d!2370411 (= (size!43253 (t!390205 lt!2693764)) lt!2694221)))

(declare-fun b!7931109 () Bool)

(assert (=> b!7931109 (= e!4680300 0)))

(declare-fun b!7931110 () Bool)

(assert (=> b!7931110 (= e!4680300 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693764)))))))

(assert (= (and d!2370411 c!1456770) b!7931109))

(assert (= (and d!2370411 (not c!1456770)) b!7931110))

(declare-fun m!8316238 () Bool)

(assert (=> b!7931110 m!8316238))

(assert (=> b!7930433 d!2370411))

(declare-fun d!2370413 () Bool)

(declare-fun lt!2694222 () Bool)

(assert (=> d!2370413 (= lt!2694222 (isEmpty!42782 (list!19417 (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2370413 (= lt!2694222 (= (size!43255 (right!57206 (right!57206 t!4440))) 0))))

(assert (=> d!2370413 (= (isEmpty!42779 (right!57206 (right!57206 t!4440))) lt!2694222)))

(declare-fun bs!1968983 () Bool)

(assert (= bs!1968983 d!2370413))

(assert (=> bs!1968983 m!8312940))

(assert (=> bs!1968983 m!8312940))

(declare-fun m!8316240 () Bool)

(assert (=> bs!1968983 m!8316240))

(assert (=> bs!1968983 m!8314224))

(assert (=> b!7929976 d!2370413))

(declare-fun d!2370415 () Bool)

(declare-fun e!4680302 () Bool)

(assert (=> d!2370415 e!4680302))

(declare-fun res!3146836 () Bool)

(assert (=> d!2370415 (=> (not res!3146836) (not e!4680302))))

(declare-fun lt!2694223 () List!74574)

(assert (=> d!2370415 (= res!3146836 (= (content!15785 lt!2694223) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711))))) (content!15785 (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711))))))))))

(declare-fun e!4680301 () List!74574)

(assert (=> d!2370415 (= lt!2694223 e!4680301)))

(declare-fun c!1456771 () Bool)

(assert (=> d!2370415 (= c!1456771 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711))))))))

(assert (=> d!2370415 (= (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711)))) (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711))))) lt!2694223)))

(declare-fun b!7931112 () Bool)

(assert (=> b!7931112 (= e!4680301 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711))))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711))))) (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711)))))))))

(declare-fun b!7931111 () Bool)

(assert (=> b!7931111 (= e!4680301 (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711)))))))

(declare-fun b!7931113 () Bool)

(declare-fun res!3146835 () Bool)

(assert (=> b!7931113 (=> (not res!3146835) (not e!4680302))))

(assert (=> b!7931113 (= res!3146835 (= (size!43253 lt!2694223) (+ (size!43253 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711))))) (size!43253 (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711))))))))))

(declare-fun b!7931114 () Bool)

(assert (=> b!7931114 (= e!4680302 (or (not (= (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711)))) Nil!74450)) (= lt!2694223 (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711)))))))))

(assert (= (and d!2370415 c!1456771) b!7931111))

(assert (= (and d!2370415 (not c!1456771)) b!7931112))

(assert (= (and d!2370415 res!3146836) b!7931113))

(assert (= (and b!7931113 res!3146835) b!7931114))

(declare-fun m!8316242 () Bool)

(assert (=> d!2370415 m!8316242))

(assert (=> d!2370415 m!8314558))

(declare-fun m!8316244 () Bool)

(assert (=> d!2370415 m!8316244))

(assert (=> d!2370415 m!8314560))

(declare-fun m!8316246 () Bool)

(assert (=> d!2370415 m!8316246))

(assert (=> b!7931112 m!8314560))

(declare-fun m!8316248 () Bool)

(assert (=> b!7931112 m!8316248))

(declare-fun m!8316250 () Bool)

(assert (=> b!7931113 m!8316250))

(assert (=> b!7931113 m!8314558))

(declare-fun m!8316252 () Bool)

(assert (=> b!7931113 m!8316252))

(assert (=> b!7931113 m!8314560))

(declare-fun m!8316254 () Bool)

(assert (=> b!7931113 m!8316254))

(assert (=> b!7930256 d!2370415))

(declare-fun d!2370417 () Bool)

(declare-fun c!1456772 () Bool)

(assert (=> d!2370417 (= c!1456772 ((_ is Empty!15904) (left!56876 (left!56876 (right!57206 lt!2693711)))))))

(declare-fun e!4680303 () List!74574)

(assert (=> d!2370417 (= (list!19417 (left!56876 (left!56876 (right!57206 lt!2693711)))) e!4680303)))

(declare-fun b!7931115 () Bool)

(assert (=> b!7931115 (= e!4680303 Nil!74450)))

(declare-fun b!7931118 () Bool)

(declare-fun e!4680304 () List!74574)

(assert (=> b!7931118 (= e!4680304 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 (right!57206 lt!2693711))))) (list!19417 (right!57206 (left!56876 (left!56876 (right!57206 lt!2693711)))))))))

(declare-fun b!7931117 () Bool)

(assert (=> b!7931117 (= e!4680304 (list!19419 (xs!19294 (left!56876 (left!56876 (right!57206 lt!2693711))))))))

(declare-fun b!7931116 () Bool)

(assert (=> b!7931116 (= e!4680303 e!4680304)))

(declare-fun c!1456773 () Bool)

(assert (=> b!7931116 (= c!1456773 ((_ is Leaf!30237) (left!56876 (left!56876 (right!57206 lt!2693711)))))))

(assert (= (and d!2370417 c!1456772) b!7931115))

(assert (= (and d!2370417 (not c!1456772)) b!7931116))

(assert (= (and b!7931116 c!1456773) b!7931117))

(assert (= (and b!7931116 (not c!1456773)) b!7931118))

(declare-fun m!8316256 () Bool)

(assert (=> b!7931118 m!8316256))

(declare-fun m!8316258 () Bool)

(assert (=> b!7931118 m!8316258))

(assert (=> b!7931118 m!8316256))

(assert (=> b!7931118 m!8316258))

(declare-fun m!8316260 () Bool)

(assert (=> b!7931118 m!8316260))

(declare-fun m!8316262 () Bool)

(assert (=> b!7931117 m!8316262))

(assert (=> b!7930256 d!2370417))

(declare-fun d!2370419 () Bool)

(declare-fun c!1456774 () Bool)

(assert (=> d!2370419 (= c!1456774 ((_ is Empty!15904) (right!57206 (left!56876 (right!57206 lt!2693711)))))))

(declare-fun e!4680305 () List!74574)

(assert (=> d!2370419 (= (list!19417 (right!57206 (left!56876 (right!57206 lt!2693711)))) e!4680305)))

(declare-fun b!7931119 () Bool)

(assert (=> b!7931119 (= e!4680305 Nil!74450)))

(declare-fun b!7931122 () Bool)

(declare-fun e!4680306 () List!74574)

(assert (=> b!7931122 (= e!4680306 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 (right!57206 lt!2693711))))) (list!19417 (right!57206 (right!57206 (left!56876 (right!57206 lt!2693711)))))))))

(declare-fun b!7931121 () Bool)

(assert (=> b!7931121 (= e!4680306 (list!19419 (xs!19294 (right!57206 (left!56876 (right!57206 lt!2693711))))))))

(declare-fun b!7931120 () Bool)

(assert (=> b!7931120 (= e!4680305 e!4680306)))

(declare-fun c!1456775 () Bool)

(assert (=> b!7931120 (= c!1456775 ((_ is Leaf!30237) (right!57206 (left!56876 (right!57206 lt!2693711)))))))

(assert (= (and d!2370419 c!1456774) b!7931119))

(assert (= (and d!2370419 (not c!1456774)) b!7931120))

(assert (= (and b!7931120 c!1456775) b!7931121))

(assert (= (and b!7931120 (not c!1456775)) b!7931122))

(declare-fun m!8316264 () Bool)

(assert (=> b!7931122 m!8316264))

(declare-fun m!8316266 () Bool)

(assert (=> b!7931122 m!8316266))

(assert (=> b!7931122 m!8316264))

(assert (=> b!7931122 m!8316266))

(declare-fun m!8316268 () Bool)

(assert (=> b!7931122 m!8316268))

(declare-fun m!8316270 () Bool)

(assert (=> b!7931121 m!8316270))

(assert (=> b!7930256 d!2370419))

(declare-fun d!2370421 () Bool)

(declare-fun e!4680308 () Bool)

(assert (=> d!2370421 e!4680308))

(declare-fun res!3146838 () Bool)

(assert (=> d!2370421 (=> (not res!3146838) (not e!4680308))))

(declare-fun lt!2694224 () List!74574)

(assert (=> d!2370421 (= res!3146838 (= (content!15785 lt!2694224) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 t!4440)))) (content!15785 (list!19417 (left!56876 lt!2693711))))))))

(declare-fun e!4680307 () List!74574)

(assert (=> d!2370421 (= lt!2694224 e!4680307)))

(declare-fun c!1456776 () Bool)

(assert (=> d!2370421 (= c!1456776 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 t!4440)))))))

(assert (=> d!2370421 (= (++!18261 (t!390205 (list!19417 (left!56876 t!4440))) (list!19417 (left!56876 lt!2693711))) lt!2694224)))

(declare-fun b!7931124 () Bool)

(assert (=> b!7931124 (= e!4680307 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 t!4440)))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 t!4440)))) (list!19417 (left!56876 lt!2693711)))))))

(declare-fun b!7931123 () Bool)

(assert (=> b!7931123 (= e!4680307 (list!19417 (left!56876 lt!2693711)))))

(declare-fun b!7931125 () Bool)

(declare-fun res!3146837 () Bool)

(assert (=> b!7931125 (=> (not res!3146837) (not e!4680308))))

(assert (=> b!7931125 (= res!3146837 (= (size!43253 lt!2694224) (+ (size!43253 (t!390205 (list!19417 (left!56876 t!4440)))) (size!43253 (list!19417 (left!56876 lt!2693711))))))))

(declare-fun b!7931126 () Bool)

(assert (=> b!7931126 (= e!4680308 (or (not (= (list!19417 (left!56876 lt!2693711)) Nil!74450)) (= lt!2694224 (t!390205 (list!19417 (left!56876 t!4440))))))))

(assert (= (and d!2370421 c!1456776) b!7931123))

(assert (= (and d!2370421 (not c!1456776)) b!7931124))

(assert (= (and d!2370421 res!3146838) b!7931125))

(assert (= (and b!7931125 res!3146837) b!7931126))

(declare-fun m!8316272 () Bool)

(assert (=> d!2370421 m!8316272))

(assert (=> d!2370421 m!8315538))

(assert (=> d!2370421 m!8312804))

(assert (=> d!2370421 m!8314638))

(assert (=> b!7931124 m!8312804))

(declare-fun m!8316274 () Bool)

(assert (=> b!7931124 m!8316274))

(declare-fun m!8316276 () Bool)

(assert (=> b!7931125 m!8316276))

(assert (=> b!7931125 m!8315602))

(assert (=> b!7931125 m!8312804))

(assert (=> b!7931125 m!8314190))

(assert (=> b!7930299 d!2370421))

(declare-fun d!2370423 () Bool)

(assert (=> d!2370423 (= (list!19419 (xs!19294 lt!2693799)) (innerList!15992 (xs!19294 lt!2693799)))))

(assert (=> b!7930208 d!2370423))

(declare-fun d!2370425 () Bool)

(declare-fun c!1456777 () Bool)

(assert (=> d!2370425 (= c!1456777 ((_ is Nil!74450) lt!2694057))))

(declare-fun e!4680309 () (InoxSet T!145818))

(assert (=> d!2370425 (= (content!15785 lt!2694057) e!4680309)))

(declare-fun b!7931127 () Bool)

(assert (=> b!7931127 (= e!4680309 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931128 () Bool)

(assert (=> b!7931128 (= e!4680309 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694057) true) (content!15785 (t!390205 lt!2694057))))))

(assert (= (and d!2370425 c!1456777) b!7931127))

(assert (= (and d!2370425 (not c!1456777)) b!7931128))

(declare-fun m!8316278 () Bool)

(assert (=> b!7931128 m!8316278))

(declare-fun m!8316280 () Bool)

(assert (=> b!7931128 m!8316280))

(assert (=> d!2369841 d!2370425))

(declare-fun d!2370427 () Bool)

(declare-fun c!1456778 () Bool)

(assert (=> d!2370427 (= c!1456778 ((_ is Nil!74450) call!735334))))

(declare-fun e!4680310 () (InoxSet T!145818))

(assert (=> d!2370427 (= (content!15785 call!735334) e!4680310)))

(declare-fun b!7931129 () Bool)

(assert (=> b!7931129 (= e!4680310 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931130 () Bool)

(assert (=> b!7931130 (= e!4680310 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 call!735334) true) (content!15785 (t!390205 call!735334))))))

(assert (= (and d!2370427 c!1456778) b!7931129))

(assert (= (and d!2370427 (not c!1456778)) b!7931130))

(declare-fun m!8316282 () Bool)

(assert (=> b!7931130 m!8316282))

(assert (=> b!7931130 m!8315078))

(assert (=> d!2369841 d!2370427))

(declare-fun d!2370429 () Bool)

(declare-fun c!1456779 () Bool)

(assert (=> d!2370429 (= c!1456779 ((_ is Nil!74450) lt!2693866))))

(declare-fun e!4680311 () (InoxSet T!145818))

(assert (=> d!2370429 (= (content!15785 lt!2693866) e!4680311)))

(declare-fun b!7931131 () Bool)

(assert (=> b!7931131 (= e!4680311 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931132 () Bool)

(assert (=> b!7931132 (= e!4680311 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693866) true) (content!15785 (t!390205 lt!2693866))))))

(assert (= (and d!2370429 c!1456779) b!7931131))

(assert (= (and d!2370429 (not c!1456779)) b!7931132))

(declare-fun m!8316284 () Bool)

(assert (=> b!7931132 m!8316284))

(declare-fun m!8316286 () Bool)

(assert (=> b!7931132 m!8316286))

(assert (=> d!2369841 d!2370429))

(assert (=> d!2369751 d!2370149))

(assert (=> d!2369751 d!2369703))

(declare-fun d!2370431 () Bool)

(declare-fun lt!2694225 () Int)

(assert (=> d!2370431 (>= lt!2694225 0)))

(declare-fun e!4680312 () Int)

(assert (=> d!2370431 (= lt!2694225 e!4680312)))

(declare-fun c!1456780 () Bool)

(assert (=> d!2370431 (= c!1456780 ((_ is Nil!74450) lt!2693913))))

(assert (=> d!2370431 (= (size!43253 lt!2693913) lt!2694225)))

(declare-fun b!7931133 () Bool)

(assert (=> b!7931133 (= e!4680312 0)))

(declare-fun b!7931134 () Bool)

(assert (=> b!7931134 (= e!4680312 (+ 1 (size!43253 (t!390205 lt!2693913))))))

(assert (= (and d!2370431 c!1456780) b!7931133))

(assert (= (and d!2370431 (not c!1456780)) b!7931134))

(declare-fun m!8316288 () Bool)

(assert (=> b!7931134 m!8316288))

(assert (=> b!7929912 d!2370431))

(declare-fun d!2370433 () Bool)

(declare-fun lt!2694226 () Int)

(assert (=> d!2370433 (>= lt!2694226 0)))

(declare-fun e!4680313 () Int)

(assert (=> d!2370433 (= lt!2694226 e!4680313)))

(declare-fun c!1456781 () Bool)

(assert (=> d!2370433 (= c!1456781 ((_ is Nil!74450) (t!390205 lt!2693715)))))

(assert (=> d!2370433 (= (size!43253 (t!390205 lt!2693715)) lt!2694226)))

(declare-fun b!7931135 () Bool)

(assert (=> b!7931135 (= e!4680313 0)))

(declare-fun b!7931136 () Bool)

(assert (=> b!7931136 (= e!4680313 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693715)))))))

(assert (= (and d!2370433 c!1456781) b!7931135))

(assert (= (and d!2370433 (not c!1456781)) b!7931136))

(assert (=> b!7931136 m!8316106))

(assert (=> b!7929912 d!2370433))

(assert (=> b!7929912 d!2369861))

(declare-fun d!2370435 () Bool)

(declare-fun lt!2694227 () Bool)

(assert (=> d!2370435 (= lt!2694227 (isEmpty!42782 (list!19417 (left!56876 lt!2693867))))))

(assert (=> d!2370435 (= lt!2694227 (= (size!43255 (left!56876 lt!2693867)) 0))))

(assert (=> d!2370435 (= (isEmpty!42779 (left!56876 lt!2693867)) lt!2694227)))

(declare-fun bs!1968984 () Bool)

(assert (= bs!1968984 d!2370435))

(assert (=> bs!1968984 m!8313686))

(assert (=> bs!1968984 m!8313686))

(declare-fun m!8316290 () Bool)

(assert (=> bs!1968984 m!8316290))

(declare-fun m!8316292 () Bool)

(assert (=> bs!1968984 m!8316292))

(assert (=> b!7929961 d!2370435))

(declare-fun d!2370437 () Bool)

(declare-fun lt!2694228 () Int)

(assert (=> d!2370437 (>= lt!2694228 0)))

(declare-fun e!4680314 () Int)

(assert (=> d!2370437 (= lt!2694228 e!4680314)))

(declare-fun c!1456782 () Bool)

(assert (=> d!2370437 (= c!1456782 ((_ is Nil!74450) (t!390205 lt!2693721)))))

(assert (=> d!2370437 (= (size!43253 (t!390205 lt!2693721)) lt!2694228)))

(declare-fun b!7931137 () Bool)

(assert (=> b!7931137 (= e!4680314 0)))

(declare-fun b!7931138 () Bool)

(assert (=> b!7931138 (= e!4680314 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693721)))))))

(assert (= (and d!2370437 c!1456782) b!7931137))

(assert (= (and d!2370437 (not c!1456782)) b!7931138))

(declare-fun m!8316294 () Bool)

(assert (=> b!7931138 m!8316294))

(assert (=> b!7930431 d!2370437))

(declare-fun d!2370439 () Bool)

(declare-fun c!1456783 () Bool)

(assert (=> d!2370439 (= c!1456783 ((_ is Nil!74450) lt!2694059))))

(declare-fun e!4680315 () (InoxSet T!145818))

(assert (=> d!2370439 (= (content!15785 lt!2694059) e!4680315)))

(declare-fun b!7931139 () Bool)

(assert (=> b!7931139 (= e!4680315 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931140 () Bool)

(assert (=> b!7931140 (= e!4680315 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694059) true) (content!15785 (t!390205 lt!2694059))))))

(assert (= (and d!2370439 c!1456783) b!7931139))

(assert (= (and d!2370439 (not c!1456783)) b!7931140))

(declare-fun m!8316296 () Bool)

(assert (=> b!7931140 m!8316296))

(declare-fun m!8316298 () Bool)

(assert (=> b!7931140 m!8316298))

(assert (=> d!2369845 d!2370439))

(assert (=> d!2369845 d!2369921))

(assert (=> d!2369845 d!2369473))

(declare-fun d!2370441 () Bool)

(declare-fun c!1456784 () Bool)

(assert (=> d!2370441 (= c!1456784 ((_ is Nil!74450) lt!2694044))))

(declare-fun e!4680316 () (InoxSet T!145818))

(assert (=> d!2370441 (= (content!15785 lt!2694044) e!4680316)))

(declare-fun b!7931141 () Bool)

(assert (=> b!7931141 (= e!4680316 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931142 () Bool)

(assert (=> b!7931142 (= e!4680316 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694044) true) (content!15785 (t!390205 lt!2694044))))))

(assert (= (and d!2370441 c!1456784) b!7931141))

(assert (= (and d!2370441 (not c!1456784)) b!7931142))

(declare-fun m!8316300 () Bool)

(assert (=> b!7931142 m!8316300))

(declare-fun m!8316302 () Bool)

(assert (=> b!7931142 m!8316302))

(assert (=> b!7930329 d!2370441))

(declare-fun d!2370443 () Bool)

(declare-fun c!1456785 () Bool)

(assert (=> d!2370443 (= c!1456785 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 t!4440)))))))

(declare-fun e!4680317 () (InoxSet T!145818))

(assert (=> d!2370443 (= (content!15785 (list!19419 (xs!19294 (right!57206 t!4440)))) e!4680317)))

(declare-fun b!7931143 () Bool)

(assert (=> b!7931143 (= e!4680317 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931144 () Bool)

(assert (=> b!7931144 (= e!4680317 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19419 (xs!19294 (right!57206 t!4440)))) true) (content!15785 (t!390205 (list!19419 (xs!19294 (right!57206 t!4440)))))))))

(assert (= (and d!2370443 c!1456785) b!7931143))

(assert (= (and d!2370443 (not c!1456785)) b!7931144))

(declare-fun m!8316304 () Bool)

(assert (=> b!7931144 m!8316304))

(assert (=> b!7931144 m!8315486))

(assert (=> b!7930329 d!2370443))

(declare-fun d!2370445 () Bool)

(declare-fun e!4680319 () Bool)

(assert (=> d!2370445 e!4680319))

(declare-fun res!3146840 () Bool)

(assert (=> d!2370445 (=> (not res!3146840) (not e!4680319))))

(declare-fun lt!2694229 () List!74574)

(assert (=> d!2370445 (= res!3146840 (= (content!15785 lt!2694229) ((_ map or) (content!15785 (list!19417 (left!56876 lt!2693867))) (content!15785 (list!19417 (right!57206 lt!2693867))))))))

(declare-fun e!4680318 () List!74574)

(assert (=> d!2370445 (= lt!2694229 e!4680318)))

(declare-fun c!1456786 () Bool)

(assert (=> d!2370445 (= c!1456786 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693867))))))

(assert (=> d!2370445 (= (++!18261 (list!19417 (left!56876 lt!2693867)) (list!19417 (right!57206 lt!2693867))) lt!2694229)))

(declare-fun b!7931146 () Bool)

(assert (=> b!7931146 (= e!4680318 (Cons!74450 (h!80898 (list!19417 (left!56876 lt!2693867))) (++!18261 (t!390205 (list!19417 (left!56876 lt!2693867))) (list!19417 (right!57206 lt!2693867)))))))

(declare-fun b!7931145 () Bool)

(assert (=> b!7931145 (= e!4680318 (list!19417 (right!57206 lt!2693867)))))

(declare-fun b!7931147 () Bool)

(declare-fun res!3146839 () Bool)

(assert (=> b!7931147 (=> (not res!3146839) (not e!4680319))))

(assert (=> b!7931147 (= res!3146839 (= (size!43253 lt!2694229) (+ (size!43253 (list!19417 (left!56876 lt!2693867))) (size!43253 (list!19417 (right!57206 lt!2693867))))))))

(declare-fun b!7931148 () Bool)

(assert (=> b!7931148 (= e!4680319 (or (not (= (list!19417 (right!57206 lt!2693867)) Nil!74450)) (= lt!2694229 (list!19417 (left!56876 lt!2693867)))))))

(assert (= (and d!2370445 c!1456786) b!7931145))

(assert (= (and d!2370445 (not c!1456786)) b!7931146))

(assert (= (and d!2370445 res!3146840) b!7931147))

(assert (= (and b!7931147 res!3146839) b!7931148))

(declare-fun m!8316306 () Bool)

(assert (=> d!2370445 m!8316306))

(assert (=> d!2370445 m!8313686))

(declare-fun m!8316308 () Bool)

(assert (=> d!2370445 m!8316308))

(assert (=> d!2370445 m!8313688))

(declare-fun m!8316310 () Bool)

(assert (=> d!2370445 m!8316310))

(assert (=> b!7931146 m!8313688))

(declare-fun m!8316312 () Bool)

(assert (=> b!7931146 m!8316312))

(declare-fun m!8316314 () Bool)

(assert (=> b!7931147 m!8316314))

(assert (=> b!7931147 m!8313686))

(declare-fun m!8316316 () Bool)

(assert (=> b!7931147 m!8316316))

(assert (=> b!7931147 m!8313688))

(declare-fun m!8316318 () Bool)

(assert (=> b!7931147 m!8316318))

(assert (=> b!7929835 d!2370445))

(declare-fun d!2370447 () Bool)

(declare-fun c!1456787 () Bool)

(assert (=> d!2370447 (= c!1456787 ((_ is Empty!15904) (left!56876 lt!2693867)))))

(declare-fun e!4680320 () List!74574)

(assert (=> d!2370447 (= (list!19417 (left!56876 lt!2693867)) e!4680320)))

(declare-fun b!7931149 () Bool)

(assert (=> b!7931149 (= e!4680320 Nil!74450)))

(declare-fun b!7931152 () Bool)

(declare-fun e!4680321 () List!74574)

(assert (=> b!7931152 (= e!4680321 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693867))) (list!19417 (right!57206 (left!56876 lt!2693867)))))))

(declare-fun b!7931151 () Bool)

(assert (=> b!7931151 (= e!4680321 (list!19419 (xs!19294 (left!56876 lt!2693867))))))

(declare-fun b!7931150 () Bool)

(assert (=> b!7931150 (= e!4680320 e!4680321)))

(declare-fun c!1456788 () Bool)

(assert (=> b!7931150 (= c!1456788 ((_ is Leaf!30237) (left!56876 lt!2693867)))))

(assert (= (and d!2370447 c!1456787) b!7931149))

(assert (= (and d!2370447 (not c!1456787)) b!7931150))

(assert (= (and b!7931150 c!1456788) b!7931151))

(assert (= (and b!7931150 (not c!1456788)) b!7931152))

(declare-fun m!8316320 () Bool)

(assert (=> b!7931152 m!8316320))

(declare-fun m!8316322 () Bool)

(assert (=> b!7931152 m!8316322))

(assert (=> b!7931152 m!8316320))

(assert (=> b!7931152 m!8316322))

(declare-fun m!8316324 () Bool)

(assert (=> b!7931152 m!8316324))

(declare-fun m!8316326 () Bool)

(assert (=> b!7931151 m!8316326))

(assert (=> b!7929835 d!2370447))

(declare-fun d!2370449 () Bool)

(declare-fun c!1456789 () Bool)

(assert (=> d!2370449 (= c!1456789 ((_ is Empty!15904) (right!57206 lt!2693867)))))

(declare-fun e!4680322 () List!74574)

(assert (=> d!2370449 (= (list!19417 (right!57206 lt!2693867)) e!4680322)))

(declare-fun b!7931153 () Bool)

(assert (=> b!7931153 (= e!4680322 Nil!74450)))

(declare-fun b!7931156 () Bool)

(declare-fun e!4680323 () List!74574)

(assert (=> b!7931156 (= e!4680323 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693867))) (list!19417 (right!57206 (right!57206 lt!2693867)))))))

(declare-fun b!7931155 () Bool)

(assert (=> b!7931155 (= e!4680323 (list!19419 (xs!19294 (right!57206 lt!2693867))))))

(declare-fun b!7931154 () Bool)

(assert (=> b!7931154 (= e!4680322 e!4680323)))

(declare-fun c!1456790 () Bool)

(assert (=> b!7931154 (= c!1456790 ((_ is Leaf!30237) (right!57206 lt!2693867)))))

(assert (= (and d!2370449 c!1456789) b!7931153))

(assert (= (and d!2370449 (not c!1456789)) b!7931154))

(assert (= (and b!7931154 c!1456790) b!7931155))

(assert (= (and b!7931154 (not c!1456790)) b!7931156))

(declare-fun m!8316328 () Bool)

(assert (=> b!7931156 m!8316328))

(declare-fun m!8316330 () Bool)

(assert (=> b!7931156 m!8316330))

(assert (=> b!7931156 m!8316328))

(assert (=> b!7931156 m!8316330))

(declare-fun m!8316332 () Bool)

(assert (=> b!7931156 m!8316332))

(declare-fun m!8316334 () Bool)

(assert (=> b!7931155 m!8316334))

(assert (=> b!7929835 d!2370449))

(declare-fun d!2370451 () Bool)

(declare-fun e!4680325 () Bool)

(assert (=> d!2370451 e!4680325))

(declare-fun res!3146842 () Bool)

(assert (=> d!2370451 (=> (not res!3146842) (not e!4680325))))

(declare-fun lt!2694230 () List!74574)

(assert (=> d!2370451 (= res!3146842 (= (content!15785 lt!2694230) ((_ map or) (content!15785 (list!19417 (left!56876 lt!2693713))) (content!15785 (list!19417 (right!57206 lt!2693713))))))))

(declare-fun e!4680324 () List!74574)

(assert (=> d!2370451 (= lt!2694230 e!4680324)))

(declare-fun c!1456791 () Bool)

(assert (=> d!2370451 (= c!1456791 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693713))))))

(assert (=> d!2370451 (= (++!18261 (list!19417 (left!56876 lt!2693713)) (list!19417 (right!57206 lt!2693713))) lt!2694230)))

(declare-fun b!7931158 () Bool)

(assert (=> b!7931158 (= e!4680324 (Cons!74450 (h!80898 (list!19417 (left!56876 lt!2693713))) (++!18261 (t!390205 (list!19417 (left!56876 lt!2693713))) (list!19417 (right!57206 lt!2693713)))))))

(declare-fun b!7931157 () Bool)

(assert (=> b!7931157 (= e!4680324 (list!19417 (right!57206 lt!2693713)))))

(declare-fun b!7931159 () Bool)

(declare-fun res!3146841 () Bool)

(assert (=> b!7931159 (=> (not res!3146841) (not e!4680325))))

(assert (=> b!7931159 (= res!3146841 (= (size!43253 lt!2694230) (+ (size!43253 (list!19417 (left!56876 lt!2693713))) (size!43253 (list!19417 (right!57206 lt!2693713))))))))

(declare-fun b!7931160 () Bool)

(assert (=> b!7931160 (= e!4680325 (or (not (= (list!19417 (right!57206 lt!2693713)) Nil!74450)) (= lt!2694230 (list!19417 (left!56876 lt!2693713)))))))

(assert (= (and d!2370451 c!1456791) b!7931157))

(assert (= (and d!2370451 (not c!1456791)) b!7931158))

(assert (= (and d!2370451 res!3146842) b!7931159))

(assert (= (and b!7931159 res!3146841) b!7931160))

(declare-fun m!8316336 () Bool)

(assert (=> d!2370451 m!8316336))

(assert (=> d!2370451 m!8314460))

(declare-fun m!8316338 () Bool)

(assert (=> d!2370451 m!8316338))

(assert (=> d!2370451 m!8314462))

(declare-fun m!8316340 () Bool)

(assert (=> d!2370451 m!8316340))

(assert (=> b!7931158 m!8314462))

(declare-fun m!8316342 () Bool)

(assert (=> b!7931158 m!8316342))

(declare-fun m!8316344 () Bool)

(assert (=> b!7931159 m!8316344))

(assert (=> b!7931159 m!8314460))

(declare-fun m!8316346 () Bool)

(assert (=> b!7931159 m!8316346))

(assert (=> b!7931159 m!8314462))

(declare-fun m!8316348 () Bool)

(assert (=> b!7931159 m!8316348))

(assert (=> b!7930225 d!2370451))

(declare-fun d!2370453 () Bool)

(declare-fun c!1456792 () Bool)

(assert (=> d!2370453 (= c!1456792 ((_ is Empty!15904) (left!56876 lt!2693713)))))

(declare-fun e!4680326 () List!74574)

(assert (=> d!2370453 (= (list!19417 (left!56876 lt!2693713)) e!4680326)))

(declare-fun b!7931161 () Bool)

(assert (=> b!7931161 (= e!4680326 Nil!74450)))

(declare-fun b!7931164 () Bool)

(declare-fun e!4680327 () List!74574)

(assert (=> b!7931164 (= e!4680327 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693713))) (list!19417 (right!57206 (left!56876 lt!2693713)))))))

(declare-fun b!7931163 () Bool)

(assert (=> b!7931163 (= e!4680327 (list!19419 (xs!19294 (left!56876 lt!2693713))))))

(declare-fun b!7931162 () Bool)

(assert (=> b!7931162 (= e!4680326 e!4680327)))

(declare-fun c!1456793 () Bool)

(assert (=> b!7931162 (= c!1456793 ((_ is Leaf!30237) (left!56876 lt!2693713)))))

(assert (= (and d!2370453 c!1456792) b!7931161))

(assert (= (and d!2370453 (not c!1456792)) b!7931162))

(assert (= (and b!7931162 c!1456793) b!7931163))

(assert (= (and b!7931162 (not c!1456793)) b!7931164))

(declare-fun m!8316350 () Bool)

(assert (=> b!7931164 m!8316350))

(declare-fun m!8316352 () Bool)

(assert (=> b!7931164 m!8316352))

(assert (=> b!7931164 m!8316350))

(assert (=> b!7931164 m!8316352))

(declare-fun m!8316354 () Bool)

(assert (=> b!7931164 m!8316354))

(declare-fun m!8316356 () Bool)

(assert (=> b!7931163 m!8316356))

(assert (=> b!7930225 d!2370453))

(declare-fun d!2370455 () Bool)

(declare-fun c!1456794 () Bool)

(assert (=> d!2370455 (= c!1456794 ((_ is Empty!15904) (right!57206 lt!2693713)))))

(declare-fun e!4680328 () List!74574)

(assert (=> d!2370455 (= (list!19417 (right!57206 lt!2693713)) e!4680328)))

(declare-fun b!7931165 () Bool)

(assert (=> b!7931165 (= e!4680328 Nil!74450)))

(declare-fun b!7931168 () Bool)

(declare-fun e!4680329 () List!74574)

(assert (=> b!7931168 (= e!4680329 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693713))) (list!19417 (right!57206 (right!57206 lt!2693713)))))))

(declare-fun b!7931167 () Bool)

(assert (=> b!7931167 (= e!4680329 (list!19419 (xs!19294 (right!57206 lt!2693713))))))

(declare-fun b!7931166 () Bool)

(assert (=> b!7931166 (= e!4680328 e!4680329)))

(declare-fun c!1456795 () Bool)

(assert (=> b!7931166 (= c!1456795 ((_ is Leaf!30237) (right!57206 lt!2693713)))))

(assert (= (and d!2370455 c!1456794) b!7931165))

(assert (= (and d!2370455 (not c!1456794)) b!7931166))

(assert (= (and b!7931166 c!1456795) b!7931167))

(assert (= (and b!7931166 (not c!1456795)) b!7931168))

(declare-fun m!8316358 () Bool)

(assert (=> b!7931168 m!8316358))

(declare-fun m!8316360 () Bool)

(assert (=> b!7931168 m!8316360))

(assert (=> b!7931168 m!8316358))

(assert (=> b!7931168 m!8316360))

(declare-fun m!8316362 () Bool)

(assert (=> b!7931168 m!8316362))

(declare-fun m!8316364 () Bool)

(assert (=> b!7931167 m!8316364))

(assert (=> b!7930225 d!2370455))

(assert (=> b!7929958 d!2370359))

(declare-fun d!2370457 () Bool)

(declare-fun res!3146843 () Bool)

(declare-fun e!4680330 () Bool)

(assert (=> d!2370457 (=> (not res!3146843) (not e!4680330))))

(assert (=> d!2370457 (= res!3146843 (<= (size!43253 (list!19419 (xs!19294 (right!57206 (left!56876 t!4440))))) 512))))

(assert (=> d!2370457 (= (inv!95733 (right!57206 (left!56876 t!4440))) e!4680330)))

(declare-fun b!7931169 () Bool)

(declare-fun res!3146844 () Bool)

(assert (=> b!7931169 (=> (not res!3146844) (not e!4680330))))

(assert (=> b!7931169 (= res!3146844 (= (csize!32039 (right!57206 (left!56876 t!4440))) (size!43253 (list!19419 (xs!19294 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7931170 () Bool)

(assert (=> b!7931170 (= e!4680330 (and (> (csize!32039 (right!57206 (left!56876 t!4440))) 0) (<= (csize!32039 (right!57206 (left!56876 t!4440))) 512)))))

(assert (= (and d!2370457 res!3146843) b!7931169))

(assert (= (and b!7931169 res!3146844) b!7931170))

(assert (=> d!2370457 m!8314258))

(assert (=> d!2370457 m!8314258))

(declare-fun m!8316366 () Bool)

(assert (=> d!2370457 m!8316366))

(assert (=> b!7931169 m!8314258))

(assert (=> b!7931169 m!8314258))

(assert (=> b!7931169 m!8316366))

(assert (=> b!7930185 d!2370457))

(declare-fun d!2370459 () Bool)

(declare-fun c!1456796 () Bool)

(assert (=> d!2370459 (= c!1456796 ((_ is Nil!74450) (t!390205 (++!18261 lt!2693717 lt!2693712))))))

(declare-fun e!4680331 () (InoxSet T!145818))

(assert (=> d!2370459 (= (content!15785 (t!390205 (++!18261 lt!2693717 lt!2693712))) e!4680331)))

(declare-fun b!7931171 () Bool)

(assert (=> b!7931171 (= e!4680331 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931172 () Bool)

(assert (=> b!7931172 (= e!4680331 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 (++!18261 lt!2693717 lt!2693712))) true) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693717 lt!2693712))))))))

(assert (= (and d!2370459 c!1456796) b!7931171))

(assert (= (and d!2370459 (not c!1456796)) b!7931172))

(declare-fun m!8316368 () Bool)

(assert (=> b!7931172 m!8316368))

(declare-fun m!8316370 () Bool)

(assert (=> b!7931172 m!8316370))

(assert (=> b!7930193 d!2370459))

(declare-fun d!2370461 () Bool)

(declare-fun e!4680333 () Bool)

(assert (=> d!2370461 e!4680333))

(declare-fun res!3146846 () Bool)

(assert (=> d!2370461 (=> (not res!3146846) (not e!4680333))))

(declare-fun lt!2694231 () List!74574)

(assert (=> d!2370461 (= res!3146846 (= (content!15785 lt!2694231) ((_ map or) (content!15785 (ite c!1456438 call!735362 lt!2694005)) (content!15785 (ite c!1456438 lt!2694006 lt!2693998)))))))

(declare-fun e!4680332 () List!74574)

(assert (=> d!2370461 (= lt!2694231 e!4680332)))

(declare-fun c!1456797 () Bool)

(assert (=> d!2370461 (= c!1456797 ((_ is Nil!74450) (ite c!1456438 call!735362 lt!2694005)))))

(assert (=> d!2370461 (= (++!18261 (ite c!1456438 call!735362 lt!2694005) (ite c!1456438 lt!2694006 lt!2693998)) lt!2694231)))

(declare-fun b!7931174 () Bool)

(assert (=> b!7931174 (= e!4680332 (Cons!74450 (h!80898 (ite c!1456438 call!735362 lt!2694005)) (++!18261 (t!390205 (ite c!1456438 call!735362 lt!2694005)) (ite c!1456438 lt!2694006 lt!2693998))))))

(declare-fun b!7931173 () Bool)

(assert (=> b!7931173 (= e!4680332 (ite c!1456438 lt!2694006 lt!2693998))))

(declare-fun b!7931175 () Bool)

(declare-fun res!3146845 () Bool)

(assert (=> b!7931175 (=> (not res!3146845) (not e!4680333))))

(assert (=> b!7931175 (= res!3146845 (= (size!43253 lt!2694231) (+ (size!43253 (ite c!1456438 call!735362 lt!2694005)) (size!43253 (ite c!1456438 lt!2694006 lt!2693998)))))))

(declare-fun b!7931176 () Bool)

(assert (=> b!7931176 (= e!4680333 (or (not (= (ite c!1456438 lt!2694006 lt!2693998) Nil!74450)) (= lt!2694231 (ite c!1456438 call!735362 lt!2694005))))))

(assert (= (and d!2370461 c!1456797) b!7931173))

(assert (= (and d!2370461 (not c!1456797)) b!7931174))

(assert (= (and d!2370461 res!3146846) b!7931175))

(assert (= (and b!7931175 res!3146845) b!7931176))

(declare-fun m!8316372 () Bool)

(assert (=> d!2370461 m!8316372))

(declare-fun m!8316374 () Bool)

(assert (=> d!2370461 m!8316374))

(declare-fun m!8316376 () Bool)

(assert (=> d!2370461 m!8316376))

(declare-fun m!8316378 () Bool)

(assert (=> b!7931174 m!8316378))

(declare-fun m!8316380 () Bool)

(assert (=> b!7931175 m!8316380))

(declare-fun m!8316382 () Bool)

(assert (=> b!7931175 m!8316382))

(declare-fun m!8316384 () Bool)

(assert (=> b!7931175 m!8316384))

(assert (=> bm!735356 d!2370461))

(declare-fun d!2370463 () Bool)

(declare-fun c!1456798 () Bool)

(assert (=> d!2370463 (= c!1456798 ((_ is Nil!74450) lt!2694055))))

(declare-fun e!4680334 () (InoxSet T!145818))

(assert (=> d!2370463 (= (content!15785 lt!2694055) e!4680334)))

(declare-fun b!7931177 () Bool)

(assert (=> b!7931177 (= e!4680334 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931178 () Bool)

(assert (=> b!7931178 (= e!4680334 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694055) true) (content!15785 (t!390205 lt!2694055))))))

(assert (= (and d!2370463 c!1456798) b!7931177))

(assert (= (and d!2370463 (not c!1456798)) b!7931178))

(declare-fun m!8316386 () Bool)

(assert (=> b!7931178 m!8316386))

(declare-fun m!8316388 () Bool)

(assert (=> b!7931178 m!8316388))

(assert (=> d!2369833 d!2370463))

(declare-fun d!2370465 () Bool)

(declare-fun c!1456799 () Bool)

(assert (=> d!2370465 (= c!1456799 ((_ is Nil!74450) call!735335))))

(declare-fun e!4680335 () (InoxSet T!145818))

(assert (=> d!2370465 (= (content!15785 call!735335) e!4680335)))

(declare-fun b!7931179 () Bool)

(assert (=> b!7931179 (= e!4680335 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931180 () Bool)

(assert (=> b!7931180 (= e!4680335 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 call!735335) true) (content!15785 (t!390205 call!735335))))))

(assert (= (and d!2370465 c!1456799) b!7931179))

(assert (= (and d!2370465 (not c!1456799)) b!7931180))

(declare-fun m!8316390 () Bool)

(assert (=> b!7931180 m!8316390))

(declare-fun m!8316392 () Bool)

(assert (=> b!7931180 m!8316392))

(assert (=> d!2369833 d!2370465))

(declare-fun d!2370467 () Bool)

(declare-fun c!1456800 () Bool)

(assert (=> d!2370467 (= c!1456800 ((_ is Nil!74450) lt!2693864))))

(declare-fun e!4680336 () (InoxSet T!145818))

(assert (=> d!2370467 (= (content!15785 lt!2693864) e!4680336)))

(declare-fun b!7931181 () Bool)

(assert (=> b!7931181 (= e!4680336 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931182 () Bool)

(assert (=> b!7931182 (= e!4680336 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693864) true) (content!15785 (t!390205 lt!2693864))))))

(assert (= (and d!2370467 c!1456800) b!7931181))

(assert (= (and d!2370467 (not c!1456800)) b!7931182))

(declare-fun m!8316394 () Bool)

(assert (=> b!7931182 m!8316394))

(declare-fun m!8316396 () Bool)

(assert (=> b!7931182 m!8316396))

(assert (=> d!2369833 d!2370467))

(declare-fun d!2370469 () Bool)

(assert (=> d!2370469 (= (list!19419 (xs!19294 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) (innerList!15992 (xs!19294 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(assert (=> b!7930202 d!2370469))

(declare-fun d!2370471 () Bool)

(declare-fun lt!2694232 () Conc!15904)

(assert (=> d!2370471 (= (list!19417 lt!2694232) (++!18261 (list!19417 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440)))) (list!19417 e!4679833)))))

(declare-fun e!4680338 () Conc!15904)

(assert (=> d!2370471 (= lt!2694232 e!4680338)))

(declare-fun c!1456801 () Bool)

(assert (=> d!2370471 (= c!1456801 (= (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440))) Empty!15904))))

(assert (=> d!2370471 (= (<>!426 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440))) e!4679833) lt!2694232)))

(declare-fun b!7931184 () Bool)

(declare-fun e!4680337 () Conc!15904)

(assert (=> b!7931184 (= e!4680338 e!4680337)))

(declare-fun c!1456802 () Bool)

(assert (=> b!7931184 (= c!1456802 (= e!4679833 Empty!15904))))

(declare-fun b!7931183 () Bool)

(assert (=> b!7931183 (= e!4680338 e!4679833)))

(declare-fun b!7931185 () Bool)

(assert (=> b!7931185 (= e!4680337 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440))))))

(declare-fun b!7931186 () Bool)

(assert (=> b!7931186 (= e!4680337 (Node!15904 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440))) e!4679833 (+ (size!43255 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440)))) (size!43255 e!4679833)) (+ (max!0 (height!2219 (ite c!1456441 (left!56876 (right!57206 (right!57206 t!4440))) (right!57206 (right!57206 t!4440)))) (height!2219 e!4679833)) 1)))))

(assert (= (and d!2370471 c!1456801) b!7931183))

(assert (= (and d!2370471 (not c!1456801)) b!7931184))

(assert (= (and b!7931184 c!1456802) b!7931185))

(assert (= (and b!7931184 (not c!1456802)) b!7931186))

(declare-fun m!8316398 () Bool)

(assert (=> d!2370471 m!8316398))

(declare-fun m!8316400 () Bool)

(assert (=> d!2370471 m!8316400))

(declare-fun m!8316402 () Bool)

(assert (=> d!2370471 m!8316402))

(assert (=> d!2370471 m!8316400))

(assert (=> d!2370471 m!8316402))

(declare-fun m!8316404 () Bool)

(assert (=> d!2370471 m!8316404))

(declare-fun m!8316406 () Bool)

(assert (=> b!7931186 m!8316406))

(declare-fun m!8316408 () Bool)

(assert (=> b!7931186 m!8316408))

(declare-fun m!8316410 () Bool)

(assert (=> b!7931186 m!8316410))

(declare-fun m!8316412 () Bool)

(assert (=> b!7931186 m!8316412))

(declare-fun m!8316414 () Bool)

(assert (=> b!7931186 m!8316414))

(assert (=> b!7931186 m!8316408))

(assert (=> b!7931186 m!8316410))

(assert (=> bm!735361 d!2370471))

(declare-fun d!2370473 () Bool)

(declare-fun lt!2694233 () Bool)

(assert (=> d!2370473 (= lt!2694233 (isEmpty!42782 (list!19417 (right!57206 (left!56876 lt!2693719)))))))

(assert (=> d!2370473 (= lt!2694233 (= (size!43255 (right!57206 (left!56876 lt!2693719))) 0))))

(assert (=> d!2370473 (= (isEmpty!42779 (right!57206 (left!56876 lt!2693719))) lt!2694233)))

(declare-fun bs!1968985 () Bool)

(assert (= bs!1968985 d!2370473))

(assert (=> bs!1968985 m!8313648))

(assert (=> bs!1968985 m!8313648))

(declare-fun m!8316416 () Bool)

(assert (=> bs!1968985 m!8316416))

(declare-fun m!8316418 () Bool)

(assert (=> bs!1968985 m!8316418))

(assert (=> b!7930344 d!2370473))

(declare-fun d!2370475 () Bool)

(declare-fun res!3146847 () Bool)

(declare-fun e!4680339 () Bool)

(assert (=> d!2370475 (=> (not res!3146847) (not e!4680339))))

(assert (=> d!2370475 (= res!3146847 (<= (size!43253 (list!19419 (xs!19294 (left!56876 (left!56876 t!4440))))) 512))))

(assert (=> d!2370475 (= (inv!95733 (left!56876 (left!56876 t!4440))) e!4680339)))

(declare-fun b!7931187 () Bool)

(declare-fun res!3146848 () Bool)

(assert (=> b!7931187 (=> (not res!3146848) (not e!4680339))))

(assert (=> b!7931187 (= res!3146848 (= (csize!32039 (left!56876 (left!56876 t!4440))) (size!43253 (list!19419 (xs!19294 (left!56876 (left!56876 t!4440)))))))))

(declare-fun b!7931188 () Bool)

(assert (=> b!7931188 (= e!4680339 (and (> (csize!32039 (left!56876 (left!56876 t!4440))) 0) (<= (csize!32039 (left!56876 (left!56876 t!4440))) 512)))))

(assert (= (and d!2370475 res!3146847) b!7931187))

(assert (= (and b!7931187 res!3146848) b!7931188))

(assert (=> d!2370475 m!8314250))

(assert (=> d!2370475 m!8314250))

(declare-fun m!8316420 () Bool)

(assert (=> d!2370475 m!8316420))

(assert (=> b!7931187 m!8314250))

(assert (=> b!7931187 m!8314250))

(assert (=> b!7931187 m!8316420))

(assert (=> b!7930182 d!2370475))

(declare-fun d!2370477 () Bool)

(declare-fun e!4680341 () Bool)

(assert (=> d!2370477 e!4680341))

(declare-fun res!3146850 () Bool)

(assert (=> d!2370477 (=> (not res!3146850) (not e!4680341))))

(declare-fun lt!2694234 () List!74574)

(assert (=> d!2370477 (= res!3146850 (= (content!15785 lt!2694234) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 (right!57206 t!4440))))) (content!15785 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(declare-fun e!4680340 () List!74574)

(assert (=> d!2370477 (= lt!2694234 e!4680340)))

(declare-fun c!1456803 () Bool)

(assert (=> d!2370477 (= c!1456803 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 (right!57206 t!4440))))))))

(assert (=> d!2370477 (= (++!18261 (t!390205 (list!19417 (left!56876 (right!57206 t!4440)))) (list!19417 (right!57206 (right!57206 t!4440)))) lt!2694234)))

(declare-fun b!7931190 () Bool)

(assert (=> b!7931190 (= e!4680340 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 (right!57206 t!4440))))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7931189 () Bool)

(assert (=> b!7931189 (= e!4680340 (list!19417 (right!57206 (right!57206 t!4440))))))

(declare-fun b!7931191 () Bool)

(declare-fun res!3146849 () Bool)

(assert (=> b!7931191 (=> (not res!3146849) (not e!4680341))))

(assert (=> b!7931191 (= res!3146849 (= (size!43253 lt!2694234) (+ (size!43253 (t!390205 (list!19417 (left!56876 (right!57206 t!4440))))) (size!43253 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(declare-fun b!7931192 () Bool)

(assert (=> b!7931192 (= e!4680341 (or (not (= (list!19417 (right!57206 (right!57206 t!4440))) Nil!74450)) (= lt!2694234 (t!390205 (list!19417 (left!56876 (right!57206 t!4440)))))))))

(assert (= (and d!2370477 c!1456803) b!7931189))

(assert (= (and d!2370477 (not c!1456803)) b!7931190))

(assert (= (and d!2370477 res!3146850) b!7931191))

(assert (= (and b!7931191 res!3146849) b!7931192))

(declare-fun m!8316422 () Bool)

(assert (=> d!2370477 m!8316422))

(declare-fun m!8316424 () Bool)

(assert (=> d!2370477 m!8316424))

(assert (=> d!2370477 m!8312940))

(assert (=> d!2370477 m!8313478))

(assert (=> b!7931190 m!8312940))

(declare-fun m!8316426 () Bool)

(assert (=> b!7931190 m!8316426))

(declare-fun m!8316428 () Bool)

(assert (=> b!7931191 m!8316428))

(declare-fun m!8316430 () Bool)

(assert (=> b!7931191 m!8316430))

(assert (=> b!7931191 m!8312940))

(assert (=> b!7931191 m!8313486))

(assert (=> b!7929749 d!2370477))

(declare-fun d!2370479 () Bool)

(declare-fun c!1456804 () Bool)

(assert (=> d!2370479 (= c!1456804 ((_ is Nil!74450) lt!2694063))))

(declare-fun e!4680342 () (InoxSet T!145818))

(assert (=> d!2370479 (= (content!15785 lt!2694063) e!4680342)))

(declare-fun b!7931193 () Bool)

(assert (=> b!7931193 (= e!4680342 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931194 () Bool)

(assert (=> b!7931194 (= e!4680342 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694063) true) (content!15785 (t!390205 lt!2694063))))))

(assert (= (and d!2370479 c!1456804) b!7931193))

(assert (= (and d!2370479 (not c!1456804)) b!7931194))

(declare-fun m!8316432 () Bool)

(assert (=> b!7931194 m!8316432))

(declare-fun m!8316434 () Bool)

(assert (=> b!7931194 m!8316434))

(assert (=> d!2369857 d!2370479))

(assert (=> d!2369857 d!2370303))

(assert (=> d!2369857 d!2369469))

(declare-fun d!2370481 () Bool)

(declare-fun c!1456805 () Bool)

(assert (=> d!2370481 (= c!1456805 ((_ is Nil!74450) lt!2693902))))

(declare-fun e!4680343 () (InoxSet T!145818))

(assert (=> d!2370481 (= (content!15785 lt!2693902) e!4680343)))

(declare-fun b!7931195 () Bool)

(assert (=> b!7931195 (= e!4680343 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931196 () Bool)

(assert (=> b!7931196 (= e!4680343 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693902) true) (content!15785 (t!390205 lt!2693902))))))

(assert (= (and d!2370481 c!1456805) b!7931195))

(assert (= (and d!2370481 (not c!1456805)) b!7931196))

(declare-fun m!8316436 () Bool)

(assert (=> b!7931196 m!8316436))

(declare-fun m!8316438 () Bool)

(assert (=> b!7931196 m!8316438))

(assert (=> b!7929846 d!2370481))

(assert (=> b!7929846 d!2370117))

(declare-fun d!2370483 () Bool)

(declare-fun c!1456806 () Bool)

(assert (=> d!2370483 (= c!1456806 ((_ is Nil!74450) lt!2693887))))

(declare-fun e!4680344 () (InoxSet T!145818))

(assert (=> d!2370483 (= (content!15785 lt!2693887) e!4680344)))

(declare-fun b!7931197 () Bool)

(assert (=> b!7931197 (= e!4680344 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931198 () Bool)

(assert (=> b!7931198 (= e!4680344 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693887) true) (content!15785 (t!390205 lt!2693887))))))

(assert (= (and d!2370483 c!1456806) b!7931197))

(assert (= (and d!2370483 (not c!1456806)) b!7931198))

(declare-fun m!8316440 () Bool)

(assert (=> b!7931198 m!8316440))

(declare-fun m!8316442 () Bool)

(assert (=> b!7931198 m!8316442))

(assert (=> d!2369371 d!2370483))

(declare-fun d!2370485 () Bool)

(declare-fun c!1456807 () Bool)

(assert (=> d!2370485 (= c!1456807 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4680345 () (InoxSet T!145818))

(assert (=> d!2370485 (= (content!15785 (list!19417 (left!56876 (right!57206 t!4440)))) e!4680345)))

(declare-fun b!7931199 () Bool)

(assert (=> b!7931199 (= e!4680345 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931200 () Bool)

(assert (=> b!7931200 (= e!4680345 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 (right!57206 t!4440)))) true) (content!15785 (t!390205 (list!19417 (left!56876 (right!57206 t!4440)))))))))

(assert (= (and d!2370485 c!1456807) b!7931199))

(assert (= (and d!2370485 (not c!1456807)) b!7931200))

(declare-fun m!8316444 () Bool)

(assert (=> b!7931200 m!8316444))

(assert (=> b!7931200 m!8316424))

(assert (=> d!2369371 d!2370485))

(declare-fun d!2370487 () Bool)

(declare-fun c!1456808 () Bool)

(assert (=> d!2370487 (= c!1456808 ((_ is Nil!74450) (list!19417 (right!57206 (right!57206 t!4440)))))))

(declare-fun e!4680346 () (InoxSet T!145818))

(assert (=> d!2370487 (= (content!15785 (list!19417 (right!57206 (right!57206 t!4440)))) e!4680346)))

(declare-fun b!7931201 () Bool)

(assert (=> b!7931201 (= e!4680346 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931202 () Bool)

(assert (=> b!7931202 (= e!4680346 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 (right!57206 t!4440)))) true) (content!15785 (t!390205 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(assert (= (and d!2370487 c!1456808) b!7931201))

(assert (= (and d!2370487 (not c!1456808)) b!7931202))

(declare-fun m!8316446 () Bool)

(assert (=> b!7931202 m!8316446))

(declare-fun m!8316448 () Bool)

(assert (=> b!7931202 m!8316448))

(assert (=> d!2369371 d!2370487))

(declare-fun d!2370489 () Bool)

(declare-fun c!1456809 () Bool)

(assert (=> d!2370489 (= c!1456809 ((_ is Nil!74450) lt!2694034))))

(declare-fun e!4680347 () (InoxSet T!145818))

(assert (=> d!2370489 (= (content!15785 lt!2694034) e!4680347)))

(declare-fun b!7931203 () Bool)

(assert (=> b!7931203 (= e!4680347 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931204 () Bool)

(assert (=> b!7931204 (= e!4680347 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694034) true) (content!15785 (t!390205 lt!2694034))))))

(assert (= (and d!2370489 c!1456809) b!7931203))

(assert (= (and d!2370489 (not c!1456809)) b!7931204))

(declare-fun m!8316450 () Bool)

(assert (=> b!7931204 m!8316450))

(declare-fun m!8316452 () Bool)

(assert (=> b!7931204 m!8316452))

(assert (=> d!2369759 d!2370489))

(assert (=> d!2369759 d!2370303))

(assert (=> d!2369759 d!2369685))

(declare-fun d!2370491 () Bool)

(declare-fun e!4680349 () Bool)

(assert (=> d!2370491 e!4680349))

(declare-fun res!3146852 () Bool)

(assert (=> d!2370491 (=> (not res!3146852) (not e!4680349))))

(declare-fun lt!2694235 () List!74574)

(assert (=> d!2370491 (= res!3146852 (= (content!15785 lt!2694235) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693714))) (content!15785 lt!2693717))))))

(declare-fun e!4680348 () List!74574)

(assert (=> d!2370491 (= lt!2694235 e!4680348)))

(declare-fun c!1456810 () Bool)

(assert (=> d!2370491 (= c!1456810 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693714))))))

(assert (=> d!2370491 (= (++!18261 (t!390205 (t!390205 lt!2693714)) lt!2693717) lt!2694235)))

(declare-fun b!7931206 () Bool)

(assert (=> b!7931206 (= e!4680348 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693714))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693714))) lt!2693717)))))

(declare-fun b!7931205 () Bool)

(assert (=> b!7931205 (= e!4680348 lt!2693717)))

(declare-fun b!7931207 () Bool)

(declare-fun res!3146851 () Bool)

(assert (=> b!7931207 (=> (not res!3146851) (not e!4680349))))

(assert (=> b!7931207 (= res!3146851 (= (size!43253 lt!2694235) (+ (size!43253 (t!390205 (t!390205 lt!2693714))) (size!43253 lt!2693717))))))

(declare-fun b!7931208 () Bool)

(assert (=> b!7931208 (= e!4680349 (or (not (= lt!2693717 Nil!74450)) (= lt!2694235 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370491 c!1456810) b!7931205))

(assert (= (and d!2370491 (not c!1456810)) b!7931206))

(assert (= (and d!2370491 res!3146852) b!7931207))

(assert (= (and b!7931207 res!3146851) b!7931208))

(declare-fun m!8316454 () Bool)

(assert (=> d!2370491 m!8316454))

(assert (=> d!2370491 m!8315346))

(assert (=> d!2370491 m!8312846))

(declare-fun m!8316456 () Bool)

(assert (=> b!7931206 m!8316456))

(declare-fun m!8316458 () Bool)

(assert (=> b!7931207 m!8316458))

(assert (=> b!7931207 m!8315310))

(assert (=> b!7931207 m!8312854))

(assert (=> b!7930425 d!2370491))

(declare-fun d!2370493 () Bool)

(declare-fun lt!2694236 () Int)

(assert (=> d!2370493 (>= lt!2694236 0)))

(declare-fun e!4680350 () Int)

(assert (=> d!2370493 (= lt!2694236 e!4680350)))

(declare-fun c!1456811 () Bool)

(assert (=> d!2370493 (= c!1456811 ((_ is Nil!74450) lt!2694036))))

(assert (=> d!2370493 (= (size!43253 lt!2694036) lt!2694236)))

(declare-fun b!7931209 () Bool)

(assert (=> b!7931209 (= e!4680350 0)))

(declare-fun b!7931210 () Bool)

(assert (=> b!7931210 (= e!4680350 (+ 1 (size!43253 (t!390205 lt!2694036))))))

(assert (= (and d!2370493 c!1456811) b!7931209))

(assert (= (and d!2370493 (not c!1456811)) b!7931210))

(declare-fun m!8316460 () Bool)

(assert (=> b!7931210 m!8316460))

(assert (=> b!7930300 d!2370493))

(assert (=> b!7930300 d!2370287))

(declare-fun d!2370495 () Bool)

(declare-fun lt!2694237 () Int)

(assert (=> d!2370495 (>= lt!2694237 0)))

(declare-fun e!4680351 () Int)

(assert (=> d!2370495 (= lt!2694237 e!4680351)))

(declare-fun c!1456812 () Bool)

(assert (=> d!2370495 (= c!1456812 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693711))))))

(assert (=> d!2370495 (= (size!43253 (list!19417 (left!56876 lt!2693711))) lt!2694237)))

(declare-fun b!7931211 () Bool)

(assert (=> b!7931211 (= e!4680351 0)))

(declare-fun b!7931212 () Bool)

(assert (=> b!7931212 (= e!4680351 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 lt!2693711))))))))

(assert (= (and d!2370495 c!1456812) b!7931211))

(assert (= (and d!2370495 (not c!1456812)) b!7931212))

(declare-fun m!8316462 () Bool)

(assert (=> b!7931212 m!8316462))

(assert (=> b!7930300 d!2370495))

(declare-fun d!2370497 () Bool)

(declare-fun e!4680353 () Bool)

(assert (=> d!2370497 e!4680353))

(declare-fun res!3146854 () Bool)

(assert (=> d!2370497 (=> (not res!3146854) (not e!4680353))))

(declare-fun lt!2694238 () List!74574)

(assert (=> d!2370497 (= res!3146854 (= (content!15785 lt!2694238) ((_ map or) (content!15785 (list!19417 (left!56876 lt!2693799))) (content!15785 (list!19417 (right!57206 lt!2693799))))))))

(declare-fun e!4680352 () List!74574)

(assert (=> d!2370497 (= lt!2694238 e!4680352)))

(declare-fun c!1456813 () Bool)

(assert (=> d!2370497 (= c!1456813 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693799))))))

(assert (=> d!2370497 (= (++!18261 (list!19417 (left!56876 lt!2693799)) (list!19417 (right!57206 lt!2693799))) lt!2694238)))

(declare-fun b!7931214 () Bool)

(assert (=> b!7931214 (= e!4680352 (Cons!74450 (h!80898 (list!19417 (left!56876 lt!2693799))) (++!18261 (t!390205 (list!19417 (left!56876 lt!2693799))) (list!19417 (right!57206 lt!2693799)))))))

(declare-fun b!7931213 () Bool)

(assert (=> b!7931213 (= e!4680352 (list!19417 (right!57206 lt!2693799)))))

(declare-fun b!7931215 () Bool)

(declare-fun res!3146853 () Bool)

(assert (=> b!7931215 (=> (not res!3146853) (not e!4680353))))

(assert (=> b!7931215 (= res!3146853 (= (size!43253 lt!2694238) (+ (size!43253 (list!19417 (left!56876 lt!2693799))) (size!43253 (list!19417 (right!57206 lt!2693799))))))))

(declare-fun b!7931216 () Bool)

(assert (=> b!7931216 (= e!4680353 (or (not (= (list!19417 (right!57206 lt!2693799)) Nil!74450)) (= lt!2694238 (list!19417 (left!56876 lt!2693799)))))))

(assert (= (and d!2370497 c!1456813) b!7931213))

(assert (= (and d!2370497 (not c!1456813)) b!7931214))

(assert (= (and d!2370497 res!3146854) b!7931215))

(assert (= (and b!7931215 res!3146853) b!7931216))

(declare-fun m!8316464 () Bool)

(assert (=> d!2370497 m!8316464))

(assert (=> d!2370497 m!8314430))

(declare-fun m!8316466 () Bool)

(assert (=> d!2370497 m!8316466))

(assert (=> d!2370497 m!8314432))

(declare-fun m!8316468 () Bool)

(assert (=> d!2370497 m!8316468))

(assert (=> b!7931214 m!8314432))

(declare-fun m!8316470 () Bool)

(assert (=> b!7931214 m!8316470))

(declare-fun m!8316472 () Bool)

(assert (=> b!7931215 m!8316472))

(assert (=> b!7931215 m!8314430))

(declare-fun m!8316474 () Bool)

(assert (=> b!7931215 m!8316474))

(assert (=> b!7931215 m!8314432))

(declare-fun m!8316476 () Bool)

(assert (=> b!7931215 m!8316476))

(assert (=> b!7930209 d!2370497))

(declare-fun d!2370499 () Bool)

(declare-fun c!1456814 () Bool)

(assert (=> d!2370499 (= c!1456814 ((_ is Empty!15904) (left!56876 lt!2693799)))))

(declare-fun e!4680354 () List!74574)

(assert (=> d!2370499 (= (list!19417 (left!56876 lt!2693799)) e!4680354)))

(declare-fun b!7931217 () Bool)

(assert (=> b!7931217 (= e!4680354 Nil!74450)))

(declare-fun b!7931220 () Bool)

(declare-fun e!4680355 () List!74574)

(assert (=> b!7931220 (= e!4680355 (++!18261 (list!19417 (left!56876 (left!56876 lt!2693799))) (list!19417 (right!57206 (left!56876 lt!2693799)))))))

(declare-fun b!7931219 () Bool)

(assert (=> b!7931219 (= e!4680355 (list!19419 (xs!19294 (left!56876 lt!2693799))))))

(declare-fun b!7931218 () Bool)

(assert (=> b!7931218 (= e!4680354 e!4680355)))

(declare-fun c!1456815 () Bool)

(assert (=> b!7931218 (= c!1456815 ((_ is Leaf!30237) (left!56876 lt!2693799)))))

(assert (= (and d!2370499 c!1456814) b!7931217))

(assert (= (and d!2370499 (not c!1456814)) b!7931218))

(assert (= (and b!7931218 c!1456815) b!7931219))

(assert (= (and b!7931218 (not c!1456815)) b!7931220))

(declare-fun m!8316478 () Bool)

(assert (=> b!7931220 m!8316478))

(declare-fun m!8316480 () Bool)

(assert (=> b!7931220 m!8316480))

(assert (=> b!7931220 m!8316478))

(assert (=> b!7931220 m!8316480))

(declare-fun m!8316482 () Bool)

(assert (=> b!7931220 m!8316482))

(declare-fun m!8316484 () Bool)

(assert (=> b!7931219 m!8316484))

(assert (=> b!7930209 d!2370499))

(declare-fun d!2370501 () Bool)

(declare-fun c!1456816 () Bool)

(assert (=> d!2370501 (= c!1456816 ((_ is Empty!15904) (right!57206 lt!2693799)))))

(declare-fun e!4680356 () List!74574)

(assert (=> d!2370501 (= (list!19417 (right!57206 lt!2693799)) e!4680356)))

(declare-fun b!7931221 () Bool)

(assert (=> b!7931221 (= e!4680356 Nil!74450)))

(declare-fun b!7931224 () Bool)

(declare-fun e!4680357 () List!74574)

(assert (=> b!7931224 (= e!4680357 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693799))) (list!19417 (right!57206 (right!57206 lt!2693799)))))))

(declare-fun b!7931223 () Bool)

(assert (=> b!7931223 (= e!4680357 (list!19419 (xs!19294 (right!57206 lt!2693799))))))

(declare-fun b!7931222 () Bool)

(assert (=> b!7931222 (= e!4680356 e!4680357)))

(declare-fun c!1456817 () Bool)

(assert (=> b!7931222 (= c!1456817 ((_ is Leaf!30237) (right!57206 lt!2693799)))))

(assert (= (and d!2370501 c!1456816) b!7931221))

(assert (= (and d!2370501 (not c!1456816)) b!7931222))

(assert (= (and b!7931222 c!1456817) b!7931223))

(assert (= (and b!7931222 (not c!1456817)) b!7931224))

(declare-fun m!8316486 () Bool)

(assert (=> b!7931224 m!8316486))

(declare-fun m!8316488 () Bool)

(assert (=> b!7931224 m!8316488))

(assert (=> b!7931224 m!8316486))

(assert (=> b!7931224 m!8316488))

(declare-fun m!8316490 () Bool)

(assert (=> b!7931224 m!8316490))

(declare-fun m!8316492 () Bool)

(assert (=> b!7931223 m!8316492))

(assert (=> b!7930209 d!2370501))

(declare-fun d!2370503 () Bool)

(declare-fun e!4680359 () Bool)

(assert (=> d!2370503 e!4680359))

(declare-fun res!3146856 () Bool)

(assert (=> d!2370503 (=> (not res!3146856) (not e!4680359))))

(declare-fun lt!2694239 () List!74574)

(assert (=> d!2370503 (= res!3146856 (= (content!15785 lt!2694239) ((_ map or) (content!15785 (++!18261 lt!2693865 lt!2693863)) (content!15785 lt!2693866))))))

(declare-fun e!4680358 () List!74574)

(assert (=> d!2370503 (= lt!2694239 e!4680358)))

(declare-fun c!1456818 () Bool)

(assert (=> d!2370503 (= c!1456818 ((_ is Nil!74450) (++!18261 lt!2693865 lt!2693863)))))

(assert (=> d!2370503 (= (++!18261 (++!18261 lt!2693865 lt!2693863) lt!2693866) lt!2694239)))

(declare-fun b!7931226 () Bool)

(assert (=> b!7931226 (= e!4680358 (Cons!74450 (h!80898 (++!18261 lt!2693865 lt!2693863)) (++!18261 (t!390205 (++!18261 lt!2693865 lt!2693863)) lt!2693866)))))

(declare-fun b!7931225 () Bool)

(assert (=> b!7931225 (= e!4680358 lt!2693866)))

(declare-fun b!7931227 () Bool)

(declare-fun res!3146855 () Bool)

(assert (=> b!7931227 (=> (not res!3146855) (not e!4680359))))

(assert (=> b!7931227 (= res!3146855 (= (size!43253 lt!2694239) (+ (size!43253 (++!18261 lt!2693865 lt!2693863)) (size!43253 lt!2693866))))))

(declare-fun b!7931228 () Bool)

(assert (=> b!7931228 (= e!4680359 (or (not (= lt!2693866 Nil!74450)) (= lt!2694239 (++!18261 lt!2693865 lt!2693863))))))

(assert (= (and d!2370503 c!1456818) b!7931225))

(assert (= (and d!2370503 (not c!1456818)) b!7931226))

(assert (= (and d!2370503 res!3146856) b!7931227))

(assert (= (and b!7931227 res!3146855) b!7931228))

(declare-fun m!8316494 () Bool)

(assert (=> d!2370503 m!8316494))

(assert (=> d!2370503 m!8314872))

(declare-fun m!8316496 () Bool)

(assert (=> d!2370503 m!8316496))

(assert (=> d!2370503 m!8314862))

(declare-fun m!8316498 () Bool)

(assert (=> b!7931226 m!8316498))

(declare-fun m!8316500 () Bool)

(assert (=> b!7931227 m!8316500))

(assert (=> b!7931227 m!8314872))

(declare-fun m!8316502 () Bool)

(assert (=> b!7931227 m!8316502))

(assert (=> b!7931227 m!8314870))

(assert (=> d!2369843 d!2370503))

(declare-fun d!2370505 () Bool)

(assert (=> d!2370505 (= (++!18261 (++!18261 lt!2693865 lt!2693863) lt!2693866) (++!18261 lt!2693865 (++!18261 lt!2693863 lt!2693866)))))

(assert (=> d!2370505 true))

(declare-fun _$15!906 () Unit!169569)

(assert (=> d!2370505 (= (choose!59834 lt!2693865 lt!2693863 lt!2693866) _$15!906)))

(declare-fun bs!1968986 () Bool)

(assert (= bs!1968986 d!2370505))

(assert (=> bs!1968986 m!8314872))

(assert (=> bs!1968986 m!8314872))

(assert (=> bs!1968986 m!8314880))

(assert (=> bs!1968986 m!8314874))

(assert (=> bs!1968986 m!8314874))

(assert (=> bs!1968986 m!8314876))

(assert (=> d!2369843 d!2370505))

(declare-fun d!2370507 () Bool)

(declare-fun e!4680361 () Bool)

(assert (=> d!2370507 e!4680361))

(declare-fun res!3146858 () Bool)

(assert (=> d!2370507 (=> (not res!3146858) (not e!4680361))))

(declare-fun lt!2694240 () List!74574)

(assert (=> d!2370507 (= res!3146858 (= (content!15785 lt!2694240) ((_ map or) (content!15785 lt!2693863) (content!15785 lt!2693866))))))

(declare-fun e!4680360 () List!74574)

(assert (=> d!2370507 (= lt!2694240 e!4680360)))

(declare-fun c!1456819 () Bool)

(assert (=> d!2370507 (= c!1456819 ((_ is Nil!74450) lt!2693863))))

(assert (=> d!2370507 (= (++!18261 lt!2693863 lt!2693866) lt!2694240)))

(declare-fun b!7931230 () Bool)

(assert (=> b!7931230 (= e!4680360 (Cons!74450 (h!80898 lt!2693863) (++!18261 (t!390205 lt!2693863) lt!2693866)))))

(declare-fun b!7931229 () Bool)

(assert (=> b!7931229 (= e!4680360 lt!2693866)))

(declare-fun b!7931231 () Bool)

(declare-fun res!3146857 () Bool)

(assert (=> b!7931231 (=> (not res!3146857) (not e!4680361))))

(assert (=> b!7931231 (= res!3146857 (= (size!43253 lt!2694240) (+ (size!43253 lt!2693863) (size!43253 lt!2693866))))))

(declare-fun b!7931232 () Bool)

(assert (=> b!7931232 (= e!4680361 (or (not (= lt!2693866 Nil!74450)) (= lt!2694240 lt!2693863)))))

(assert (= (and d!2370507 c!1456819) b!7931229))

(assert (= (and d!2370507 (not c!1456819)) b!7931230))

(assert (= (and d!2370507 res!3146858) b!7931231))

(assert (= (and b!7931231 res!3146857) b!7931232))

(declare-fun m!8316504 () Bool)

(assert (=> d!2370507 m!8316504))

(declare-fun m!8316506 () Bool)

(assert (=> d!2370507 m!8316506))

(assert (=> d!2370507 m!8314862))

(declare-fun m!8316508 () Bool)

(assert (=> b!7931230 m!8316508))

(declare-fun m!8316510 () Bool)

(assert (=> b!7931231 m!8316510))

(declare-fun m!8316512 () Bool)

(assert (=> b!7931231 m!8316512))

(assert (=> b!7931231 m!8314870))

(assert (=> d!2369843 d!2370507))

(declare-fun d!2370509 () Bool)

(declare-fun e!4680363 () Bool)

(assert (=> d!2370509 e!4680363))

(declare-fun res!3146860 () Bool)

(assert (=> d!2370509 (=> (not res!3146860) (not e!4680363))))

(declare-fun lt!2694241 () List!74574)

(assert (=> d!2370509 (= res!3146860 (= (content!15785 lt!2694241) ((_ map or) (content!15785 lt!2693865) (content!15785 (++!18261 lt!2693863 lt!2693866)))))))

(declare-fun e!4680362 () List!74574)

(assert (=> d!2370509 (= lt!2694241 e!4680362)))

(declare-fun c!1456820 () Bool)

(assert (=> d!2370509 (= c!1456820 ((_ is Nil!74450) lt!2693865))))

(assert (=> d!2370509 (= (++!18261 lt!2693865 (++!18261 lt!2693863 lt!2693866)) lt!2694241)))

(declare-fun b!7931234 () Bool)

(assert (=> b!7931234 (= e!4680362 (Cons!74450 (h!80898 lt!2693865) (++!18261 (t!390205 lt!2693865) (++!18261 lt!2693863 lt!2693866))))))

(declare-fun b!7931233 () Bool)

(assert (=> b!7931233 (= e!4680362 (++!18261 lt!2693863 lt!2693866))))

(declare-fun b!7931235 () Bool)

(declare-fun res!3146859 () Bool)

(assert (=> b!7931235 (=> (not res!3146859) (not e!4680363))))

(assert (=> b!7931235 (= res!3146859 (= (size!43253 lt!2694241) (+ (size!43253 lt!2693865) (size!43253 (++!18261 lt!2693863 lt!2693866)))))))

(declare-fun b!7931236 () Bool)

(assert (=> b!7931236 (= e!4680363 (or (not (= (++!18261 lt!2693863 lt!2693866) Nil!74450)) (= lt!2694241 lt!2693865)))))

(assert (= (and d!2370509 c!1456820) b!7931233))

(assert (= (and d!2370509 (not c!1456820)) b!7931234))

(assert (= (and d!2370509 res!3146860) b!7931235))

(assert (= (and b!7931235 res!3146859) b!7931236))

(declare-fun m!8316514 () Bool)

(assert (=> d!2370509 m!8316514))

(assert (=> d!2370509 m!8314794))

(assert (=> d!2370509 m!8314874))

(declare-fun m!8316516 () Bool)

(assert (=> d!2370509 m!8316516))

(assert (=> b!7931234 m!8314874))

(declare-fun m!8316518 () Bool)

(assert (=> b!7931234 m!8316518))

(declare-fun m!8316520 () Bool)

(assert (=> b!7931235 m!8316520))

(assert (=> b!7931235 m!8314806))

(assert (=> b!7931235 m!8314874))

(declare-fun m!8316522 () Bool)

(assert (=> b!7931235 m!8316522))

(assert (=> d!2369843 d!2370509))

(declare-fun d!2370511 () Bool)

(declare-fun e!4680365 () Bool)

(assert (=> d!2370511 e!4680365))

(declare-fun res!3146862 () Bool)

(assert (=> d!2370511 (=> (not res!3146862) (not e!4680365))))

(declare-fun lt!2694242 () List!74574)

(assert (=> d!2370511 (= res!3146862 (= (content!15785 lt!2694242) ((_ map or) (content!15785 lt!2693865) (content!15785 lt!2693863))))))

(declare-fun e!4680364 () List!74574)

(assert (=> d!2370511 (= lt!2694242 e!4680364)))

(declare-fun c!1456821 () Bool)

(assert (=> d!2370511 (= c!1456821 ((_ is Nil!74450) lt!2693865))))

(assert (=> d!2370511 (= (++!18261 lt!2693865 lt!2693863) lt!2694242)))

(declare-fun b!7931238 () Bool)

(assert (=> b!7931238 (= e!4680364 (Cons!74450 (h!80898 lt!2693865) (++!18261 (t!390205 lt!2693865) lt!2693863)))))

(declare-fun b!7931237 () Bool)

(assert (=> b!7931237 (= e!4680364 lt!2693863)))

(declare-fun b!7931239 () Bool)

(declare-fun res!3146861 () Bool)

(assert (=> b!7931239 (=> (not res!3146861) (not e!4680365))))

(assert (=> b!7931239 (= res!3146861 (= (size!43253 lt!2694242) (+ (size!43253 lt!2693865) (size!43253 lt!2693863))))))

(declare-fun b!7931240 () Bool)

(assert (=> b!7931240 (= e!4680365 (or (not (= lt!2693863 Nil!74450)) (= lt!2694242 lt!2693865)))))

(assert (= (and d!2370511 c!1456821) b!7931237))

(assert (= (and d!2370511 (not c!1456821)) b!7931238))

(assert (= (and d!2370511 res!3146862) b!7931239))

(assert (= (and b!7931239 res!3146861) b!7931240))

(declare-fun m!8316524 () Bool)

(assert (=> d!2370511 m!8316524))

(assert (=> d!2370511 m!8314794))

(assert (=> d!2370511 m!8316506))

(declare-fun m!8316526 () Bool)

(assert (=> b!7931238 m!8316526))

(declare-fun m!8316528 () Bool)

(assert (=> b!7931239 m!8316528))

(assert (=> b!7931239 m!8314806))

(assert (=> b!7931239 m!8316512))

(assert (=> d!2369843 d!2370511))

(declare-fun d!2370513 () Bool)

(declare-fun e!4680367 () Bool)

(assert (=> d!2370513 e!4680367))

(declare-fun res!3146864 () Bool)

(assert (=> d!2370513 (=> (not res!3146864) (not e!4680367))))

(declare-fun lt!2694243 () List!74574)

(assert (=> d!2370513 (= res!3146864 (= (content!15785 lt!2694243) ((_ map or) (content!15785 (t!390205 call!735335)) (content!15785 lt!2693864))))))

(declare-fun e!4680366 () List!74574)

(assert (=> d!2370513 (= lt!2694243 e!4680366)))

(declare-fun c!1456822 () Bool)

(assert (=> d!2370513 (= c!1456822 ((_ is Nil!74450) (t!390205 call!735335)))))

(assert (=> d!2370513 (= (++!18261 (t!390205 call!735335) lt!2693864) lt!2694243)))

(declare-fun b!7931242 () Bool)

(assert (=> b!7931242 (= e!4680366 (Cons!74450 (h!80898 (t!390205 call!735335)) (++!18261 (t!390205 (t!390205 call!735335)) lt!2693864)))))

(declare-fun b!7931241 () Bool)

(assert (=> b!7931241 (= e!4680366 lt!2693864)))

(declare-fun b!7931243 () Bool)

(declare-fun res!3146863 () Bool)

(assert (=> b!7931243 (=> (not res!3146863) (not e!4680367))))

(assert (=> b!7931243 (= res!3146863 (= (size!43253 lt!2694243) (+ (size!43253 (t!390205 call!735335)) (size!43253 lt!2693864))))))

(declare-fun b!7931244 () Bool)

(assert (=> b!7931244 (= e!4680367 (or (not (= lt!2693864 Nil!74450)) (= lt!2694243 (t!390205 call!735335))))))

(assert (= (and d!2370513 c!1456822) b!7931241))

(assert (= (and d!2370513 (not c!1456822)) b!7931242))

(assert (= (and d!2370513 res!3146864) b!7931243))

(assert (= (and b!7931243 res!3146863) b!7931244))

(declare-fun m!8316530 () Bool)

(assert (=> d!2370513 m!8316530))

(assert (=> d!2370513 m!8316392))

(assert (=> d!2370513 m!8314824))

(declare-fun m!8316532 () Bool)

(assert (=> b!7931242 m!8316532))

(declare-fun m!8316534 () Bool)

(assert (=> b!7931243 m!8316534))

(declare-fun m!8316536 () Bool)

(assert (=> b!7931243 m!8316536))

(assert (=> b!7931243 m!8314834))

(assert (=> b!7930376 d!2370513))

(declare-fun d!2370515 () Bool)

(declare-fun c!1456823 () Bool)

(assert (=> d!2370515 (= c!1456823 ((_ is Nil!74450) lt!2694021))))

(declare-fun e!4680368 () (InoxSet T!145818))

(assert (=> d!2370515 (= (content!15785 lt!2694021) e!4680368)))

(declare-fun b!7931245 () Bool)

(assert (=> b!7931245 (= e!4680368 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931246 () Bool)

(assert (=> b!7931246 (= e!4680368 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2694021) true) (content!15785 (t!390205 lt!2694021))))))

(assert (= (and d!2370515 c!1456823) b!7931245))

(assert (= (and d!2370515 (not c!1456823)) b!7931246))

(declare-fun m!8316538 () Bool)

(assert (=> b!7931246 m!8316538))

(declare-fun m!8316540 () Bool)

(assert (=> b!7931246 m!8316540))

(assert (=> d!2369723 d!2370515))

(declare-fun d!2370517 () Bool)

(declare-fun c!1456824 () Bool)

(assert (=> d!2370517 (= c!1456824 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 lt!2693711)))))))

(declare-fun e!4680369 () (InoxSet T!145818))

(assert (=> d!2370517 (= (content!15785 (list!19417 (left!56876 (right!57206 lt!2693711)))) e!4680369)))

(declare-fun b!7931247 () Bool)

(assert (=> b!7931247 (= e!4680369 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931248 () Bool)

(assert (=> b!7931248 (= e!4680369 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 (right!57206 lt!2693711)))) true) (content!15785 (t!390205 (list!19417 (left!56876 (right!57206 lt!2693711)))))))))

(assert (= (and d!2370517 c!1456824) b!7931247))

(assert (= (and d!2370517 (not c!1456824)) b!7931248))

(declare-fun m!8316542 () Bool)

(assert (=> b!7931248 m!8316542))

(assert (=> b!7931248 m!8315168))

(assert (=> d!2369723 d!2370517))

(declare-fun d!2370519 () Bool)

(declare-fun c!1456825 () Bool)

(assert (=> d!2370519 (= c!1456825 ((_ is Nil!74450) (list!19417 (right!57206 (right!57206 lt!2693711)))))))

(declare-fun e!4680370 () (InoxSet T!145818))

(assert (=> d!2370519 (= (content!15785 (list!19417 (right!57206 (right!57206 lt!2693711)))) e!4680370)))

(declare-fun b!7931249 () Bool)

(assert (=> b!7931249 (= e!4680370 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931250 () Bool)

(assert (=> b!7931250 (= e!4680370 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 (right!57206 lt!2693711)))) true) (content!15785 (t!390205 (list!19417 (right!57206 (right!57206 lt!2693711)))))))))

(assert (= (and d!2370519 c!1456825) b!7931249))

(assert (= (and d!2370519 (not c!1456825)) b!7931250))

(declare-fun m!8316544 () Bool)

(assert (=> b!7931250 m!8316544))

(declare-fun m!8316546 () Bool)

(assert (=> b!7931250 m!8316546))

(assert (=> d!2369723 d!2370519))

(declare-fun d!2370521 () Bool)

(declare-fun c!1456826 () Bool)

(assert (=> d!2370521 (= c!1456826 ((_ is Nil!74450) (t!390205 lt!2693768)))))

(declare-fun e!4680371 () (InoxSet T!145818))

(assert (=> d!2370521 (= (content!15785 (t!390205 lt!2693768)) e!4680371)))

(declare-fun b!7931251 () Bool)

(assert (=> b!7931251 (= e!4680371 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931252 () Bool)

(assert (=> b!7931252 (= e!4680371 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693768)) true) (content!15785 (t!390205 (t!390205 lt!2693768)))))))

(assert (= (and d!2370521 c!1456826) b!7931251))

(assert (= (and d!2370521 (not c!1456826)) b!7931252))

(declare-fun m!8316548 () Bool)

(assert (=> b!7931252 m!8316548))

(declare-fun m!8316550 () Bool)

(assert (=> b!7931252 m!8316550))

(assert (=> b!7930195 d!2370521))

(declare-fun d!2370523 () Bool)

(assert (=> d!2370523 (= (height!2219 (left!56876 lt!2693867)) (ite ((_ is Empty!15904) (left!56876 lt!2693867)) 0 (ite ((_ is Leaf!30237) (left!56876 lt!2693867)) 1 (cheight!16115 (left!56876 lt!2693867)))))))

(assert (=> b!7929962 d!2370523))

(declare-fun d!2370525 () Bool)

(assert (=> d!2370525 (= (height!2219 (right!57206 lt!2693867)) (ite ((_ is Empty!15904) (right!57206 lt!2693867)) 0 (ite ((_ is Leaf!30237) (right!57206 lt!2693867)) 1 (cheight!16115 (right!57206 lt!2693867)))))))

(assert (=> b!7929962 d!2370525))

(declare-fun d!2370527 () Bool)

(declare-fun lt!2694244 () Int)

(assert (=> d!2370527 (>= lt!2694244 0)))

(declare-fun e!4680372 () Int)

(assert (=> d!2370527 (= lt!2694244 e!4680372)))

(declare-fun c!1456827 () Bool)

(assert (=> d!2370527 (= c!1456827 ((_ is Nil!74450) lt!2694044))))

(assert (=> d!2370527 (= (size!43253 lt!2694044) lt!2694244)))

(declare-fun b!7931253 () Bool)

(assert (=> b!7931253 (= e!4680372 0)))

(declare-fun b!7931254 () Bool)

(assert (=> b!7931254 (= e!4680372 (+ 1 (size!43253 (t!390205 lt!2694044))))))

(assert (= (and d!2370527 c!1456827) b!7931253))

(assert (= (and d!2370527 (not c!1456827)) b!7931254))

(declare-fun m!8316552 () Bool)

(assert (=> b!7931254 m!8316552))

(assert (=> b!7930323 d!2370527))

(assert (=> b!7930323 d!2370179))

(declare-fun c!1456828 () Bool)

(declare-fun d!2370529 () Bool)

(assert (=> d!2370529 (= c!1456828 ((_ is Empty!15904) (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992))))))

(declare-fun e!4680373 () List!74574)

(assert (=> d!2370529 (= (list!19417 (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992))) e!4680373)))

(declare-fun b!7931255 () Bool)

(assert (=> b!7931255 (= e!4680373 Nil!74450)))

(declare-fun b!7931258 () Bool)

(declare-fun e!4680374 () List!74574)

(assert (=> b!7931258 (= e!4680374 (++!18261 (list!19417 (left!56876 (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992)))) (list!19417 (right!57206 (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992))))))))

(declare-fun b!7931257 () Bool)

(assert (=> b!7931257 (= e!4680374 (list!19419 (xs!19294 (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992)))))))

(declare-fun b!7931256 () Bool)

(assert (=> b!7931256 (= e!4680373 e!4680374)))

(declare-fun c!1456829 () Bool)

(assert (=> b!7931256 (= c!1456829 ((_ is Leaf!30237) (ite c!1456438 (left!56876 (right!57206 (right!57206 t!4440))) (left!56876 lt!2693992))))))

(assert (= (and d!2370529 c!1456828) b!7931255))

(assert (= (and d!2370529 (not c!1456828)) b!7931256))

(assert (= (and b!7931256 c!1456829) b!7931257))

(assert (= (and b!7931256 (not c!1456829)) b!7931258))

(declare-fun m!8316554 () Bool)

(assert (=> b!7931258 m!8316554))

(declare-fun m!8316556 () Bool)

(assert (=> b!7931258 m!8316556))

(assert (=> b!7931258 m!8316554))

(assert (=> b!7931258 m!8316556))

(declare-fun m!8316558 () Bool)

(assert (=> b!7931258 m!8316558))

(declare-fun m!8316560 () Bool)

(assert (=> b!7931257 m!8316560))

(assert (=> bm!735364 d!2370529))

(assert (=> bm!735340 d!2370169))

(declare-fun d!2370531 () Bool)

(declare-fun lt!2694245 () Int)

(assert (=> d!2370531 (= lt!2694245 (size!43253 (list!19417 (left!56876 (right!57206 t!4440)))))))

(assert (=> d!2370531 (= lt!2694245 (ite ((_ is Empty!15904) (left!56876 (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (left!56876 (right!57206 t!4440))) (csize!32039 (left!56876 (right!57206 t!4440))) (csize!32038 (left!56876 (right!57206 t!4440))))))))

(assert (=> d!2370531 (= (size!43255 (left!56876 (right!57206 t!4440))) lt!2694245)))

(declare-fun bs!1968987 () Bool)

(assert (= bs!1968987 d!2370531))

(assert (=> bs!1968987 m!8312938))

(assert (=> bs!1968987 m!8312938))

(assert (=> bs!1968987 m!8313484))

(assert (=> d!2369621 d!2370531))

(declare-fun d!2370533 () Bool)

(declare-fun lt!2694246 () Int)

(assert (=> d!2370533 (= lt!2694246 (size!43253 (list!19417 (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2370533 (= lt!2694246 (ite ((_ is Empty!15904) (right!57206 (right!57206 t!4440))) 0 (ite ((_ is Leaf!30237) (right!57206 (right!57206 t!4440))) (csize!32039 (right!57206 (right!57206 t!4440))) (csize!32038 (right!57206 (right!57206 t!4440))))))))

(assert (=> d!2370533 (= (size!43255 (right!57206 (right!57206 t!4440))) lt!2694246)))

(declare-fun bs!1968988 () Bool)

(assert (= bs!1968988 d!2370533))

(assert (=> bs!1968988 m!8312940))

(assert (=> bs!1968988 m!8312940))

(assert (=> bs!1968988 m!8313486))

(assert (=> d!2369621 d!2370533))

(declare-fun d!2370535 () Bool)

(assert (=> d!2370535 (= (list!19419 (xs!19294 (left!56876 (right!57206 t!4440)))) (innerList!15992 (xs!19294 (left!56876 (right!57206 t!4440)))))))

(assert (=> b!7929754 d!2370535))

(assert (=> d!2369607 d!2370495))

(assert (=> d!2369607 d!2369259))

(declare-fun b!7931259 () Bool)

(declare-fun res!3146868 () Bool)

(declare-fun e!4680375 () Bool)

(assert (=> b!7931259 (=> (not res!3146868) (not e!4680375))))

(assert (=> b!7931259 (= res!3146868 (isBalanced!4530 (left!56876 (left!56876 (left!56876 t!4440)))))))

(declare-fun d!2370537 () Bool)

(declare-fun res!3146865 () Bool)

(declare-fun e!4680376 () Bool)

(assert (=> d!2370537 (=> res!3146865 e!4680376)))

(assert (=> d!2370537 (= res!3146865 (not ((_ is Node!15904) (left!56876 (left!56876 t!4440)))))))

(assert (=> d!2370537 (= (isBalanced!4530 (left!56876 (left!56876 t!4440))) e!4680376)))

(declare-fun b!7931260 () Bool)

(declare-fun res!3146870 () Bool)

(assert (=> b!7931260 (=> (not res!3146870) (not e!4680375))))

(assert (=> b!7931260 (= res!3146870 (isBalanced!4530 (right!57206 (left!56876 (left!56876 t!4440)))))))

(declare-fun b!7931261 () Bool)

(declare-fun res!3146866 () Bool)

(assert (=> b!7931261 (=> (not res!3146866) (not e!4680375))))

(assert (=> b!7931261 (= res!3146866 (not (isEmpty!42779 (left!56876 (left!56876 (left!56876 t!4440))))))))

(declare-fun b!7931262 () Bool)

(declare-fun res!3146867 () Bool)

(assert (=> b!7931262 (=> (not res!3146867) (not e!4680375))))

(assert (=> b!7931262 (= res!3146867 (<= (- (height!2219 (left!56876 (left!56876 (left!56876 t!4440)))) (height!2219 (right!57206 (left!56876 (left!56876 t!4440))))) 1))))

(declare-fun b!7931263 () Bool)

(assert (=> b!7931263 (= e!4680376 e!4680375)))

(declare-fun res!3146869 () Bool)

(assert (=> b!7931263 (=> (not res!3146869) (not e!4680375))))

(assert (=> b!7931263 (= res!3146869 (<= (- 1) (- (height!2219 (left!56876 (left!56876 (left!56876 t!4440)))) (height!2219 (right!57206 (left!56876 (left!56876 t!4440)))))))))

(declare-fun b!7931264 () Bool)

(assert (=> b!7931264 (= e!4680375 (not (isEmpty!42779 (right!57206 (left!56876 (left!56876 t!4440))))))))

(assert (= (and d!2370537 (not res!3146865)) b!7931263))

(assert (= (and b!7931263 res!3146869) b!7931262))

(assert (= (and b!7931262 res!3146867) b!7931259))

(assert (= (and b!7931259 res!3146868) b!7931260))

(assert (= (and b!7931260 res!3146870) b!7931261))

(assert (= (and b!7931261 res!3146866) b!7931264))

(declare-fun m!8316562 () Bool)

(assert (=> b!7931264 m!8316562))

(assert (=> b!7931263 m!8316074))

(assert (=> b!7931263 m!8316076))

(declare-fun m!8316564 () Bool)

(assert (=> b!7931260 m!8316564))

(declare-fun m!8316566 () Bool)

(assert (=> b!7931259 m!8316566))

(assert (=> b!7931262 m!8316074))

(assert (=> b!7931262 m!8316076))

(declare-fun m!8316568 () Bool)

(assert (=> b!7931261 m!8316568))

(assert (=> b!7929949 d!2370537))

(declare-fun d!2370539 () Bool)

(declare-fun e!4680378 () Bool)

(assert (=> d!2370539 e!4680378))

(declare-fun res!3146872 () Bool)

(assert (=> d!2370539 (=> (not res!3146872) (not e!4680378))))

(declare-fun lt!2694247 () List!74574)

(assert (=> d!2370539 (= res!3146872 (= (content!15785 lt!2694247) ((_ map or) (content!15785 (t!390205 (ite c!1456280 lt!2693861 lt!2693863))) (content!15785 (ite c!1456280 call!735335 lt!2693866)))))))

(declare-fun e!4680377 () List!74574)

(assert (=> d!2370539 (= lt!2694247 e!4680377)))

(declare-fun c!1456830 () Bool)

(assert (=> d!2370539 (= c!1456830 ((_ is Nil!74450) (t!390205 (ite c!1456280 lt!2693861 lt!2693863))))))

(assert (=> d!2370539 (= (++!18261 (t!390205 (ite c!1456280 lt!2693861 lt!2693863)) (ite c!1456280 call!735335 lt!2693866)) lt!2694247)))

(declare-fun b!7931266 () Bool)

(assert (=> b!7931266 (= e!4680377 (Cons!74450 (h!80898 (t!390205 (ite c!1456280 lt!2693861 lt!2693863))) (++!18261 (t!390205 (t!390205 (ite c!1456280 lt!2693861 lt!2693863))) (ite c!1456280 call!735335 lt!2693866))))))

(declare-fun b!7931265 () Bool)

(assert (=> b!7931265 (= e!4680377 (ite c!1456280 call!735335 lt!2693866))))

(declare-fun b!7931267 () Bool)

(declare-fun res!3146871 () Bool)

(assert (=> b!7931267 (=> (not res!3146871) (not e!4680378))))

(assert (=> b!7931267 (= res!3146871 (= (size!43253 lt!2694247) (+ (size!43253 (t!390205 (ite c!1456280 lt!2693861 lt!2693863))) (size!43253 (ite c!1456280 call!735335 lt!2693866)))))))

(declare-fun b!7931268 () Bool)

(assert (=> b!7931268 (= e!4680378 (or (not (= (ite c!1456280 call!735335 lt!2693866) Nil!74450)) (= lt!2694247 (t!390205 (ite c!1456280 lt!2693861 lt!2693863)))))))

(assert (= (and d!2370539 c!1456830) b!7931265))

(assert (= (and d!2370539 (not c!1456830)) b!7931266))

(assert (= (and d!2370539 res!3146872) b!7931267))

(assert (= (and b!7931267 res!3146871) b!7931268))

(declare-fun m!8316570 () Bool)

(assert (=> d!2370539 m!8316570))

(assert (=> d!2370539 m!8315700))

(assert (=> d!2370539 m!8314008))

(declare-fun m!8316572 () Bool)

(assert (=> b!7931266 m!8316572))

(declare-fun m!8316574 () Bool)

(assert (=> b!7931267 m!8316574))

(declare-fun m!8316576 () Bool)

(assert (=> b!7931267 m!8316576))

(assert (=> b!7931267 m!8314016))

(assert (=> b!7930000 d!2370539))

(declare-fun d!2370541 () Bool)

(assert (=> d!2370541 (= (max!0 (height!2219 (left!56876 (right!57206 t!4440))) (height!2219 (right!57206 (right!57206 t!4440)))) (ite (< (height!2219 (left!56876 (right!57206 t!4440))) (height!2219 (right!57206 (right!57206 t!4440)))) (height!2219 (right!57206 (right!57206 t!4440))) (height!2219 (left!56876 (right!57206 t!4440)))))))

(assert (=> b!7930091 d!2370541))

(assert (=> b!7930091 d!2369659))

(assert (=> b!7930091 d!2370273))

(assert (=> d!2369585 d!2370287))

(assert (=> d!2369585 d!2369257))

(declare-fun d!2370543 () Bool)

(declare-fun e!4680380 () Bool)

(assert (=> d!2370543 e!4680380))

(declare-fun res!3146874 () Bool)

(assert (=> d!2370543 (=> (not res!3146874) (not e!4680380))))

(declare-fun lt!2694248 () List!74574)

(assert (=> d!2370543 (= res!3146874 (= (content!15785 lt!2694248) ((_ map or) (content!15785 (t!390205 (t!390205 lt!2693714))) (content!15785 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun e!4680379 () List!74574)

(assert (=> d!2370543 (= lt!2694248 e!4680379)))

(declare-fun c!1456831 () Bool)

(assert (=> d!2370543 (= c!1456831 ((_ is Nil!74450) (t!390205 (t!390205 lt!2693714))))))

(assert (=> d!2370543 (= (++!18261 (t!390205 (t!390205 lt!2693714)) (++!18261 lt!2693717 lt!2693712)) lt!2694248)))

(declare-fun b!7931270 () Bool)

(assert (=> b!7931270 (= e!4680379 (Cons!74450 (h!80898 (t!390205 (t!390205 lt!2693714))) (++!18261 (t!390205 (t!390205 (t!390205 lt!2693714))) (++!18261 lt!2693717 lt!2693712))))))

(declare-fun b!7931269 () Bool)

(assert (=> b!7931269 (= e!4680379 (++!18261 lt!2693717 lt!2693712))))

(declare-fun b!7931271 () Bool)

(declare-fun res!3146873 () Bool)

(assert (=> b!7931271 (=> (not res!3146873) (not e!4680380))))

(assert (=> b!7931271 (= res!3146873 (= (size!43253 lt!2694248) (+ (size!43253 (t!390205 (t!390205 lt!2693714))) (size!43253 (++!18261 lt!2693717 lt!2693712)))))))

(declare-fun b!7931272 () Bool)

(assert (=> b!7931272 (= e!4680380 (or (not (= (++!18261 lt!2693717 lt!2693712) Nil!74450)) (= lt!2694248 (t!390205 (t!390205 lt!2693714)))))))

(assert (= (and d!2370543 c!1456831) b!7931269))

(assert (= (and d!2370543 (not c!1456831)) b!7931270))

(assert (= (and d!2370543 res!3146874) b!7931271))

(assert (= (and b!7931271 res!3146873) b!7931272))

(declare-fun m!8316578 () Bool)

(assert (=> d!2370543 m!8316578))

(assert (=> d!2370543 m!8315346))

(assert (=> d!2370543 m!8312798))

(assert (=> d!2370543 m!8312862))

(assert (=> b!7931270 m!8312798))

(declare-fun m!8316580 () Bool)

(assert (=> b!7931270 m!8316580))

(declare-fun m!8316582 () Bool)

(assert (=> b!7931271 m!8316582))

(assert (=> b!7931271 m!8315310))

(assert (=> b!7931271 m!8312798))

(assert (=> b!7931271 m!8312870))

(assert (=> b!7930281 d!2370543))

(assert (=> b!7930014 d!2369915))

(assert (=> b!7930150 d!2370231))

(declare-fun d!2370545 () Bool)

(declare-fun e!4680382 () Bool)

(assert (=> d!2370545 e!4680382))

(declare-fun res!3146876 () Bool)

(assert (=> d!2370545 (=> (not res!3146876) (not e!4680382))))

(declare-fun lt!2694249 () List!74574)

(assert (=> d!2370545 (= res!3146876 (= (content!15785 lt!2694249) ((_ map or) (content!15785 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (content!15785 (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))))

(declare-fun e!4680381 () List!74574)

(assert (=> d!2370545 (= lt!2694249 e!4680381)))

(declare-fun c!1456832 () Bool)

(assert (=> d!2370545 (= c!1456832 ((_ is Nil!74450) (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))

(assert (=> d!2370545 (= (++!18261 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) lt!2694249)))

(declare-fun b!7931274 () Bool)

(assert (=> b!7931274 (= e!4680381 (Cons!74450 (h!80898 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (++!18261 (t!390205 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))))

(declare-fun b!7931273 () Bool)

(assert (=> b!7931273 (= e!4680381 (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7931275 () Bool)

(declare-fun res!3146875 () Bool)

(assert (=> b!7931275 (=> (not res!3146875) (not e!4680382))))

(assert (=> b!7931275 (= res!3146875 (= (size!43253 lt!2694249) (+ (size!43253 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (size!43253 (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))))

(declare-fun b!7931276 () Bool)

(assert (=> b!7931276 (= e!4680382 (or (not (= (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) Nil!74450)) (= lt!2694249 (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))))

(assert (= (and d!2370545 c!1456832) b!7931273))

(assert (= (and d!2370545 (not c!1456832)) b!7931274))

(assert (= (and d!2370545 res!3146876) b!7931275))

(assert (= (and b!7931275 res!3146875) b!7931276))

(declare-fun m!8316584 () Bool)

(assert (=> d!2370545 m!8316584))

(assert (=> d!2370545 m!8314418))

(declare-fun m!8316586 () Bool)

(assert (=> d!2370545 m!8316586))

(assert (=> d!2370545 m!8314420))

(declare-fun m!8316588 () Bool)

(assert (=> d!2370545 m!8316588))

(assert (=> b!7931274 m!8314420))

(declare-fun m!8316590 () Bool)

(assert (=> b!7931274 m!8316590))

(declare-fun m!8316592 () Bool)

(assert (=> b!7931275 m!8316592))

(assert (=> b!7931275 m!8314418))

(declare-fun m!8316594 () Bool)

(assert (=> b!7931275 m!8316594))

(assert (=> b!7931275 m!8314420))

(declare-fun m!8316596 () Bool)

(assert (=> b!7931275 m!8316596))

(assert (=> b!7930203 d!2370545))

(declare-fun d!2370547 () Bool)

(declare-fun c!1456833 () Bool)

(assert (=> d!2370547 (= c!1456833 ((_ is Empty!15904) (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(declare-fun e!4680383 () List!74574)

(assert (=> d!2370547 (= (list!19417 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) e!4680383)))

(declare-fun b!7931277 () Bool)

(assert (=> b!7931277 (= e!4680383 Nil!74450)))

(declare-fun b!7931280 () Bool)

(declare-fun e!4680384 () List!74574)

(assert (=> b!7931280 (= e!4680384 (++!18261 (list!19417 (left!56876 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (list!19417 (right!57206 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))))

(declare-fun b!7931279 () Bool)

(assert (=> b!7931279 (= e!4680384 (list!19419 (xs!19294 (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931278 () Bool)

(assert (=> b!7931278 (= e!4680383 e!4680384)))

(declare-fun c!1456834 () Bool)

(assert (=> b!7931278 (= c!1456834 ((_ is Leaf!30237) (left!56876 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(assert (= (and d!2370547 c!1456833) b!7931277))

(assert (= (and d!2370547 (not c!1456833)) b!7931278))

(assert (= (and b!7931278 c!1456834) b!7931279))

(assert (= (and b!7931278 (not c!1456834)) b!7931280))

(declare-fun m!8316598 () Bool)

(assert (=> b!7931280 m!8316598))

(declare-fun m!8316600 () Bool)

(assert (=> b!7931280 m!8316600))

(assert (=> b!7931280 m!8316598))

(assert (=> b!7931280 m!8316600))

(declare-fun m!8316602 () Bool)

(assert (=> b!7931280 m!8316602))

(declare-fun m!8316604 () Bool)

(assert (=> b!7931279 m!8316604))

(assert (=> b!7930203 d!2370547))

(declare-fun d!2370549 () Bool)

(declare-fun c!1456835 () Bool)

(assert (=> d!2370549 (= c!1456835 ((_ is Empty!15904) (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(declare-fun e!4680385 () List!74574)

(assert (=> d!2370549 (= (list!19417 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))) e!4680385)))

(declare-fun b!7931281 () Bool)

(assert (=> b!7931281 (= e!4680385 Nil!74450)))

(declare-fun b!7931284 () Bool)

(declare-fun e!4680386 () List!74574)

(assert (=> b!7931284 (= e!4680386 (++!18261 (list!19417 (left!56876 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))) (list!19417 (right!57206 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))))

(declare-fun b!7931283 () Bool)

(assert (=> b!7931283 (= e!4680386 (list!19419 (xs!19294 (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931282 () Bool)

(assert (=> b!7931282 (= e!4680385 e!4680386)))

(declare-fun c!1456836 () Bool)

(assert (=> b!7931282 (= c!1456836 ((_ is Leaf!30237) (right!57206 (ite c!1456280 (right!57206 (right!57206 t!4440)) (left!56876 (right!57206 t!4440))))))))

(assert (= (and d!2370549 c!1456835) b!7931281))

(assert (= (and d!2370549 (not c!1456835)) b!7931282))

(assert (= (and b!7931282 c!1456836) b!7931283))

(assert (= (and b!7931282 (not c!1456836)) b!7931284))

(declare-fun m!8316606 () Bool)

(assert (=> b!7931284 m!8316606))

(declare-fun m!8316608 () Bool)

(assert (=> b!7931284 m!8316608))

(assert (=> b!7931284 m!8316606))

(assert (=> b!7931284 m!8316608))

(declare-fun m!8316610 () Bool)

(assert (=> b!7931284 m!8316610))

(declare-fun m!8316612 () Bool)

(assert (=> b!7931283 m!8316612))

(assert (=> b!7930203 d!2370549))

(declare-fun d!2370551 () Bool)

(declare-fun c!1456837 () Bool)

(assert (=> d!2370551 (= c!1456837 ((_ is Nil!74450) (t!390205 lt!2693712)))))

(declare-fun e!4680387 () (InoxSet T!145818))

(assert (=> d!2370551 (= (content!15785 (t!390205 lt!2693712)) e!4680387)))

(declare-fun b!7931285 () Bool)

(assert (=> b!7931285 (= e!4680387 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931286 () Bool)

(assert (=> b!7931286 (= e!4680387 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693712)) true) (content!15785 (t!390205 (t!390205 lt!2693712)))))))

(assert (= (and d!2370551 c!1456837) b!7931285))

(assert (= (and d!2370551 (not c!1456837)) b!7931286))

(declare-fun m!8316614 () Bool)

(assert (=> b!7931286 m!8316614))

(declare-fun m!8316616 () Bool)

(assert (=> b!7931286 m!8316616))

(assert (=> b!7929907 d!2370551))

(declare-fun d!2370553 () Bool)

(declare-fun e!4680389 () Bool)

(assert (=> d!2370553 e!4680389))

(declare-fun res!3146878 () Bool)

(assert (=> d!2370553 (=> (not res!3146878) (not e!4680389))))

(declare-fun lt!2694250 () List!74574)

(assert (=> d!2370553 (= res!3146878 (= (content!15785 lt!2694250) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 lt!2693719)))) (content!15785 (list!19417 (right!57206 lt!2693719))))))))

(declare-fun e!4680388 () List!74574)

(assert (=> d!2370553 (= lt!2694250 e!4680388)))

(declare-fun c!1456838 () Bool)

(assert (=> d!2370553 (= c!1456838 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 lt!2693719)))))))

(assert (=> d!2370553 (= (++!18261 (t!390205 (list!19417 (left!56876 lt!2693719))) (list!19417 (right!57206 lt!2693719))) lt!2694250)))

(declare-fun b!7931288 () Bool)

(assert (=> b!7931288 (= e!4680388 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 lt!2693719)))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 lt!2693719)))) (list!19417 (right!57206 lt!2693719)))))))

(declare-fun b!7931287 () Bool)

(assert (=> b!7931287 (= e!4680388 (list!19417 (right!57206 lt!2693719)))))

(declare-fun b!7931289 () Bool)

(declare-fun res!3146877 () Bool)

(assert (=> b!7931289 (=> (not res!3146877) (not e!4680389))))

(assert (=> b!7931289 (= res!3146877 (= (size!43253 lt!2694250) (+ (size!43253 (t!390205 (list!19417 (left!56876 lt!2693719)))) (size!43253 (list!19417 (right!57206 lt!2693719))))))))

(declare-fun b!7931290 () Bool)

(assert (=> b!7931290 (= e!4680389 (or (not (= (list!19417 (right!57206 lt!2693719)) Nil!74450)) (= lt!2694250 (t!390205 (list!19417 (left!56876 lt!2693719))))))))

(assert (= (and d!2370553 c!1456838) b!7931287))

(assert (= (and d!2370553 (not c!1456838)) b!7931288))

(assert (= (and d!2370553 res!3146878) b!7931289))

(assert (= (and b!7931289 res!3146877) b!7931290))

(declare-fun m!8316618 () Bool)

(assert (=> d!2370553 m!8316618))

(declare-fun m!8316620 () Bool)

(assert (=> d!2370553 m!8316620))

(assert (=> d!2370553 m!8313096))

(assert (=> d!2370553 m!8313622))

(assert (=> b!7931288 m!8313096))

(declare-fun m!8316622 () Bool)

(assert (=> b!7931288 m!8316622))

(declare-fun m!8316624 () Bool)

(assert (=> b!7931289 m!8316624))

(declare-fun m!8316626 () Bool)

(assert (=> b!7931289 m!8316626))

(assert (=> b!7931289 m!8313096))

(assert (=> b!7931289 m!8313630))

(assert (=> b!7929813 d!2370553))

(declare-fun d!2370555 () Bool)

(declare-fun e!4680391 () Bool)

(assert (=> d!2370555 e!4680391))

(declare-fun res!3146880 () Bool)

(assert (=> d!2370555 (=> (not res!3146880) (not e!4680391))))

(declare-fun lt!2694251 () List!74574)

(assert (=> d!2370555 (= res!3146880 (= (content!15785 lt!2694251) ((_ map or) (content!15785 lt!2693999) (content!15785 call!735367))))))

(declare-fun e!4680390 () List!74574)

(assert (=> d!2370555 (= lt!2694251 e!4680390)))

(declare-fun c!1456839 () Bool)

(assert (=> d!2370555 (= c!1456839 ((_ is Nil!74450) lt!2693999))))

(assert (=> d!2370555 (= (++!18261 lt!2693999 call!735367) lt!2694251)))

(declare-fun b!7931292 () Bool)

(assert (=> b!7931292 (= e!4680390 (Cons!74450 (h!80898 lt!2693999) (++!18261 (t!390205 lt!2693999) call!735367)))))

(declare-fun b!7931291 () Bool)

(assert (=> b!7931291 (= e!4680390 call!735367)))

(declare-fun b!7931293 () Bool)

(declare-fun res!3146879 () Bool)

(assert (=> b!7931293 (=> (not res!3146879) (not e!4680391))))

(assert (=> b!7931293 (= res!3146879 (= (size!43253 lt!2694251) (+ (size!43253 lt!2693999) (size!43253 call!735367))))))

(declare-fun b!7931294 () Bool)

(assert (=> b!7931294 (= e!4680391 (or (not (= call!735367 Nil!74450)) (= lt!2694251 lt!2693999)))))

(assert (= (and d!2370555 c!1456839) b!7931291))

(assert (= (and d!2370555 (not c!1456839)) b!7931292))

(assert (= (and d!2370555 res!3146880) b!7931293))

(assert (= (and b!7931293 res!3146879) b!7931294))

(declare-fun m!8316628 () Bool)

(assert (=> d!2370555 m!8316628))

(declare-fun m!8316630 () Bool)

(assert (=> d!2370555 m!8316630))

(declare-fun m!8316632 () Bool)

(assert (=> d!2370555 m!8316632))

(declare-fun m!8316634 () Bool)

(assert (=> b!7931292 m!8316634))

(declare-fun m!8316636 () Bool)

(assert (=> b!7931293 m!8316636))

(declare-fun m!8316638 () Bool)

(assert (=> b!7931293 m!8316638))

(declare-fun m!8316640 () Bool)

(assert (=> b!7931293 m!8316640))

(assert (=> b!7930159 d!2370555))

(declare-fun d!2370557 () Bool)

(declare-fun lt!2694252 () Conc!15904)

(assert (=> d!2370557 (= (list!19417 lt!2694252) (++!18261 (list!19417 call!735365) (list!19417 (right!57206 lt!2693992))))))

(declare-fun e!4680393 () Conc!15904)

(assert (=> d!2370557 (= lt!2694252 e!4680393)))

(declare-fun c!1456840 () Bool)

(assert (=> d!2370557 (= c!1456840 (= call!735365 Empty!15904))))

(assert (=> d!2370557 (= (<>!426 call!735365 (right!57206 lt!2693992)) lt!2694252)))

(declare-fun b!7931296 () Bool)

(declare-fun e!4680392 () Conc!15904)

(assert (=> b!7931296 (= e!4680393 e!4680392)))

(declare-fun c!1456841 () Bool)

(assert (=> b!7931296 (= c!1456841 (= (right!57206 lt!2693992) Empty!15904))))

(declare-fun b!7931295 () Bool)

(assert (=> b!7931295 (= e!4680393 (right!57206 lt!2693992))))

(declare-fun b!7931297 () Bool)

(assert (=> b!7931297 (= e!4680392 call!735365)))

(declare-fun b!7931298 () Bool)

(assert (=> b!7931298 (= e!4680392 (Node!15904 call!735365 (right!57206 lt!2693992) (+ (size!43255 call!735365) (size!43255 (right!57206 lt!2693992))) (+ (max!0 (height!2219 call!735365) (height!2219 (right!57206 lt!2693992))) 1)))))

(assert (= (and d!2370557 c!1456840) b!7931295))

(assert (= (and d!2370557 (not c!1456840)) b!7931296))

(assert (= (and b!7931296 c!1456841) b!7931297))

(assert (= (and b!7931296 (not c!1456841)) b!7931298))

(declare-fun m!8316642 () Bool)

(assert (=> d!2370557 m!8316642))

(declare-fun m!8316644 () Bool)

(assert (=> d!2370557 m!8316644))

(assert (=> d!2370557 m!8314362))

(assert (=> d!2370557 m!8316644))

(assert (=> d!2370557 m!8314362))

(declare-fun m!8316646 () Bool)

(assert (=> d!2370557 m!8316646))

(declare-fun m!8316648 () Bool)

(assert (=> b!7931298 m!8316648))

(declare-fun m!8316650 () Bool)

(assert (=> b!7931298 m!8316650))

(declare-fun m!8316652 () Bool)

(assert (=> b!7931298 m!8316652))

(declare-fun m!8316654 () Bool)

(assert (=> b!7931298 m!8316654))

(declare-fun m!8316656 () Bool)

(assert (=> b!7931298 m!8316656))

(assert (=> b!7931298 m!8316650))

(assert (=> b!7931298 m!8316652))

(assert (=> b!7930159 d!2370557))

(assert (=> b!7930159 d!2370043))

(declare-fun d!2370559 () Bool)

(assert (=> d!2370559 (= (++!18261 (++!18261 lt!2693999 lt!2693997) lt!2694000) (++!18261 lt!2693999 (++!18261 lt!2693997 lt!2694000)))))

(declare-fun lt!2694253 () Unit!169569)

(assert (=> d!2370559 (= lt!2694253 (choose!59834 lt!2693999 lt!2693997 lt!2694000))))

(assert (=> d!2370559 (= (lemmaConcatAssociativity!3164 lt!2693999 lt!2693997 lt!2694000) lt!2694253)))

(declare-fun bs!1968989 () Bool)

(assert (= bs!1968989 d!2370559))

(declare-fun m!8316658 () Bool)

(assert (=> bs!1968989 m!8316658))

(declare-fun m!8316660 () Bool)

(assert (=> bs!1968989 m!8316660))

(declare-fun m!8316662 () Bool)

(assert (=> bs!1968989 m!8316662))

(declare-fun m!8316664 () Bool)

(assert (=> bs!1968989 m!8316664))

(assert (=> bs!1968989 m!8316658))

(declare-fun m!8316666 () Bool)

(assert (=> bs!1968989 m!8316666))

(assert (=> bs!1968989 m!8316660))

(assert (=> b!7930159 d!2370559))

(declare-fun d!2370561 () Bool)

(declare-fun e!4680395 () Bool)

(assert (=> d!2370561 e!4680395))

(declare-fun res!3146882 () Bool)

(assert (=> d!2370561 (=> (not res!3146882) (not e!4680395))))

(declare-fun lt!2694254 () List!74574)

(assert (=> d!2370561 (= res!3146882 (= (content!15785 lt!2694254) ((_ map or) (content!15785 call!735363) (content!15785 lt!2693998))))))

(declare-fun e!4680394 () List!74574)

(assert (=> d!2370561 (= lt!2694254 e!4680394)))

(declare-fun c!1456842 () Bool)

(assert (=> d!2370561 (= c!1456842 ((_ is Nil!74450) call!735363))))

(assert (=> d!2370561 (= (++!18261 call!735363 lt!2693998) lt!2694254)))

(declare-fun b!7931300 () Bool)

(assert (=> b!7931300 (= e!4680394 (Cons!74450 (h!80898 call!735363) (++!18261 (t!390205 call!735363) lt!2693998)))))

(declare-fun b!7931299 () Bool)

(assert (=> b!7931299 (= e!4680394 lt!2693998)))

(declare-fun b!7931301 () Bool)

(declare-fun res!3146881 () Bool)

(assert (=> b!7931301 (=> (not res!3146881) (not e!4680395))))

(assert (=> b!7931301 (= res!3146881 (= (size!43253 lt!2694254) (+ (size!43253 call!735363) (size!43253 lt!2693998))))))

(declare-fun b!7931302 () Bool)

(assert (=> b!7931302 (= e!4680395 (or (not (= lt!2693998 Nil!74450)) (= lt!2694254 call!735363)))))

(assert (= (and d!2370561 c!1456842) b!7931299))

(assert (= (and d!2370561 (not c!1456842)) b!7931300))

(assert (= (and d!2370561 res!3146882) b!7931301))

(assert (= (and b!7931301 res!3146881) b!7931302))

(declare-fun m!8316668 () Bool)

(assert (=> d!2370561 m!8316668))

(declare-fun m!8316670 () Bool)

(assert (=> d!2370561 m!8316670))

(declare-fun m!8316672 () Bool)

(assert (=> d!2370561 m!8316672))

(declare-fun m!8316674 () Bool)

(assert (=> b!7931300 m!8316674))

(declare-fun m!8316676 () Bool)

(assert (=> b!7931301 m!8316676))

(declare-fun m!8316678 () Bool)

(assert (=> b!7931301 m!8316678))

(declare-fun m!8316680 () Bool)

(assert (=> b!7931301 m!8316680))

(assert (=> b!7930159 d!2370561))

(declare-fun d!2370563 () Bool)

(declare-fun e!4680397 () Bool)

(assert (=> d!2370563 e!4680397))

(declare-fun res!3146884 () Bool)

(assert (=> d!2370563 (=> (not res!3146884) (not e!4680397))))

(declare-fun lt!2694255 () List!74574)

(assert (=> d!2370563 (= res!3146884 (= (content!15785 lt!2694255) ((_ map or) (content!15785 lt!2693994) (content!15785 call!735366))))))

(declare-fun e!4680396 () List!74574)

(assert (=> d!2370563 (= lt!2694255 e!4680396)))

(declare-fun c!1456843 () Bool)

(assert (=> d!2370563 (= c!1456843 ((_ is Nil!74450) lt!2693994))))

(assert (=> d!2370563 (= (++!18261 lt!2693994 call!735366) lt!2694255)))

(declare-fun b!7931304 () Bool)

(assert (=> b!7931304 (= e!4680396 (Cons!74450 (h!80898 lt!2693994) (++!18261 (t!390205 lt!2693994) call!735366)))))

(declare-fun b!7931303 () Bool)

(assert (=> b!7931303 (= e!4680396 call!735366)))

(declare-fun b!7931305 () Bool)

(declare-fun res!3146883 () Bool)

(assert (=> b!7931305 (=> (not res!3146883) (not e!4680397))))

(assert (=> b!7931305 (= res!3146883 (= (size!43253 lt!2694255) (+ (size!43253 lt!2693994) (size!43253 call!735366))))))

(declare-fun b!7931306 () Bool)

(assert (=> b!7931306 (= e!4680397 (or (not (= call!735366 Nil!74450)) (= lt!2694255 lt!2693994)))))

(assert (= (and d!2370563 c!1456843) b!7931303))

(assert (= (and d!2370563 (not c!1456843)) b!7931304))

(assert (= (and d!2370563 res!3146884) b!7931305))

(assert (= (and b!7931305 res!3146883) b!7931306))

(declare-fun m!8316682 () Bool)

(assert (=> d!2370563 m!8316682))

(declare-fun m!8316684 () Bool)

(assert (=> d!2370563 m!8316684))

(declare-fun m!8316686 () Bool)

(assert (=> d!2370563 m!8316686))

(declare-fun m!8316688 () Bool)

(assert (=> b!7931304 m!8316688))

(declare-fun m!8316690 () Bool)

(assert (=> b!7931305 m!8316690))

(declare-fun m!8316692 () Bool)

(assert (=> b!7931305 m!8316692))

(declare-fun m!8316694 () Bool)

(assert (=> b!7931305 m!8316694))

(assert (=> b!7930159 d!2370563))

(declare-fun d!2370565 () Bool)

(declare-fun c!1456844 () Bool)

(assert (=> d!2370565 (= c!1456844 ((_ is Empty!15904) (right!57206 lt!2693992)))))

(declare-fun e!4680398 () List!74574)

(assert (=> d!2370565 (= (list!19417 (right!57206 lt!2693992)) e!4680398)))

(declare-fun b!7931307 () Bool)

(assert (=> b!7931307 (= e!4680398 Nil!74450)))

(declare-fun b!7931310 () Bool)

(declare-fun e!4680399 () List!74574)

(assert (=> b!7931310 (= e!4680399 (++!18261 (list!19417 (left!56876 (right!57206 lt!2693992))) (list!19417 (right!57206 (right!57206 lt!2693992)))))))

(declare-fun b!7931309 () Bool)

(assert (=> b!7931309 (= e!4680399 (list!19419 (xs!19294 (right!57206 lt!2693992))))))

(declare-fun b!7931308 () Bool)

(assert (=> b!7931308 (= e!4680398 e!4680399)))

(declare-fun c!1456845 () Bool)

(assert (=> b!7931308 (= c!1456845 ((_ is Leaf!30237) (right!57206 lt!2693992)))))

(assert (= (and d!2370565 c!1456844) b!7931307))

(assert (= (and d!2370565 (not c!1456844)) b!7931308))

(assert (= (and b!7931308 c!1456845) b!7931309))

(assert (= (and b!7931308 (not c!1456845)) b!7931310))

(declare-fun m!8316696 () Bool)

(assert (=> b!7931310 m!8316696))

(declare-fun m!8316698 () Bool)

(assert (=> b!7931310 m!8316698))

(assert (=> b!7931310 m!8316696))

(assert (=> b!7931310 m!8316698))

(declare-fun m!8316700 () Bool)

(assert (=> b!7931310 m!8316700))

(declare-fun m!8316702 () Bool)

(assert (=> b!7931309 m!8316702))

(assert (=> b!7930159 d!2370565))

(declare-fun d!2370567 () Bool)

(declare-fun e!4680401 () Bool)

(assert (=> d!2370567 e!4680401))

(declare-fun res!3146886 () Bool)

(assert (=> d!2370567 (=> (not res!3146886) (not e!4680401))))

(declare-fun lt!2694256 () List!74574)

(assert (=> d!2370567 (= res!3146886 (= (content!15785 lt!2694256) ((_ map or) (content!15785 call!735362) (content!15785 lt!2694000))))))

(declare-fun e!4680400 () List!74574)

(assert (=> d!2370567 (= lt!2694256 e!4680400)))

(declare-fun c!1456846 () Bool)

(assert (=> d!2370567 (= c!1456846 ((_ is Nil!74450) call!735362))))

(assert (=> d!2370567 (= (++!18261 call!735362 lt!2694000) lt!2694256)))

(declare-fun b!7931312 () Bool)

(assert (=> b!7931312 (= e!4680400 (Cons!74450 (h!80898 call!735362) (++!18261 (t!390205 call!735362) lt!2694000)))))

(declare-fun b!7931311 () Bool)

(assert (=> b!7931311 (= e!4680400 lt!2694000)))

(declare-fun b!7931313 () Bool)

(declare-fun res!3146885 () Bool)

(assert (=> b!7931313 (=> (not res!3146885) (not e!4680401))))

(assert (=> b!7931313 (= res!3146885 (= (size!43253 lt!2694256) (+ (size!43253 call!735362) (size!43253 lt!2694000))))))

(declare-fun b!7931314 () Bool)

(assert (=> b!7931314 (= e!4680401 (or (not (= lt!2694000 Nil!74450)) (= lt!2694256 call!735362)))))

(assert (= (and d!2370567 c!1456846) b!7931311))

(assert (= (and d!2370567 (not c!1456846)) b!7931312))

(assert (= (and d!2370567 res!3146886) b!7931313))

(assert (= (and b!7931313 res!3146885) b!7931314))

(declare-fun m!8316704 () Bool)

(assert (=> d!2370567 m!8316704))

(declare-fun m!8316706 () Bool)

(assert (=> d!2370567 m!8316706))

(declare-fun m!8316708 () Bool)

(assert (=> d!2370567 m!8316708))

(declare-fun m!8316710 () Bool)

(assert (=> b!7931312 m!8316710))

(declare-fun m!8316712 () Bool)

(assert (=> b!7931313 m!8316712))

(declare-fun m!8316714 () Bool)

(assert (=> b!7931313 m!8316714))

(declare-fun m!8316716 () Bool)

(assert (=> b!7931313 m!8316716))

(assert (=> b!7930159 d!2370567))

(declare-fun d!2370569 () Bool)

(declare-fun lt!2694257 () Int)

(assert (=> d!2370569 (>= lt!2694257 0)))

(declare-fun e!4680402 () Int)

(assert (=> d!2370569 (= lt!2694257 e!4680402)))

(declare-fun c!1456847 () Bool)

(assert (=> d!2370569 (= c!1456847 ((_ is Nil!74450) (innerList!15992 (xs!19294 (left!56876 t!4440)))))))

(assert (=> d!2370569 (= (size!43253 (innerList!15992 (xs!19294 (left!56876 t!4440)))) lt!2694257)))

(declare-fun b!7931315 () Bool)

(assert (=> b!7931315 (= e!4680402 0)))

(declare-fun b!7931316 () Bool)

(assert (=> b!7931316 (= e!4680402 (+ 1 (size!43253 (t!390205 (innerList!15992 (xs!19294 (left!56876 t!4440)))))))))

(assert (= (and d!2370569 c!1456847) b!7931315))

(assert (= (and d!2370569 (not c!1456847)) b!7931316))

(declare-fun m!8316718 () Bool)

(assert (=> b!7931316 m!8316718))

(assert (=> d!2369435 d!2370569))

(assert (=> b!7930435 d!2369901))

(declare-fun d!2370571 () Bool)

(declare-fun c!1456848 () Bool)

(assert (=> d!2370571 (= c!1456848 ((_ is Nil!74450) (t!390205 lt!2693789)))))

(declare-fun e!4680403 () (InoxSet T!145818))

(assert (=> d!2370571 (= (content!15785 (t!390205 lt!2693789)) e!4680403)))

(declare-fun b!7931317 () Bool)

(assert (=> b!7931317 (= e!4680403 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931318 () Bool)

(assert (=> b!7931318 (= e!4680403 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693789)) true) (content!15785 (t!390205 (t!390205 lt!2693789)))))))

(assert (= (and d!2370571 c!1456848) b!7931317))

(assert (= (and d!2370571 (not c!1456848)) b!7931318))

(declare-fun m!8316720 () Bool)

(assert (=> b!7931318 m!8316720))

(declare-fun m!8316722 () Bool)

(assert (=> b!7931318 m!8316722))

(assert (=> b!7929791 d!2370571))

(assert (=> b!7929923 d!2370433))

(declare-fun d!2370573 () Bool)

(declare-fun c!1456849 () Bool)

(assert (=> d!2370573 (= c!1456849 ((_ is Nil!74450) lt!2693892))))

(declare-fun e!4680404 () (InoxSet T!145818))

(assert (=> d!2370573 (= (content!15785 lt!2693892) e!4680404)))

(declare-fun b!7931319 () Bool)

(assert (=> b!7931319 (= e!4680404 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931320 () Bool)

(assert (=> b!7931320 (= e!4680404 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693892) true) (content!15785 (t!390205 lt!2693892))))))

(assert (= (and d!2370573 c!1456849) b!7931319))

(assert (= (and d!2370573 (not c!1456849)) b!7931320))

(declare-fun m!8316724 () Bool)

(assert (=> b!7931320 m!8316724))

(declare-fun m!8316726 () Bool)

(assert (=> b!7931320 m!8316726))

(assert (=> d!2369389 d!2370573))

(assert (=> d!2369389 d!2370303))

(assert (=> d!2369389 d!2369401))

(assert (=> b!7930096 d!2370199))

(declare-fun d!2370575 () Bool)

(declare-fun lt!2694258 () Int)

(assert (=> d!2370575 (>= lt!2694258 0)))

(declare-fun e!4680405 () Int)

(assert (=> d!2370575 (= lt!2694258 e!4680405)))

(declare-fun c!1456850 () Bool)

(assert (=> d!2370575 (= c!1456850 ((_ is Nil!74450) lt!2693887))))

(assert (=> d!2370575 (= (size!43253 lt!2693887) lt!2694258)))

(declare-fun b!7931321 () Bool)

(assert (=> b!7931321 (= e!4680405 0)))

(declare-fun b!7931322 () Bool)

(assert (=> b!7931322 (= e!4680405 (+ 1 (size!43253 (t!390205 lt!2693887))))))

(assert (= (and d!2370575 c!1456850) b!7931321))

(assert (= (and d!2370575 (not c!1456850)) b!7931322))

(declare-fun m!8316728 () Bool)

(assert (=> b!7931322 m!8316728))

(assert (=> b!7929750 d!2370575))

(declare-fun d!2370577 () Bool)

(declare-fun lt!2694259 () Int)

(assert (=> d!2370577 (>= lt!2694259 0)))

(declare-fun e!4680406 () Int)

(assert (=> d!2370577 (= lt!2694259 e!4680406)))

(declare-fun c!1456851 () Bool)

(assert (=> d!2370577 (= c!1456851 ((_ is Nil!74450) (list!19417 (left!56876 (right!57206 t!4440)))))))

(assert (=> d!2370577 (= (size!43253 (list!19417 (left!56876 (right!57206 t!4440)))) lt!2694259)))

(declare-fun b!7931323 () Bool)

(assert (=> b!7931323 (= e!4680406 0)))

(declare-fun b!7931324 () Bool)

(assert (=> b!7931324 (= e!4680406 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 (right!57206 t!4440)))))))))

(assert (= (and d!2370577 c!1456851) b!7931323))

(assert (= (and d!2370577 (not c!1456851)) b!7931324))

(assert (=> b!7931324 m!8316430))

(assert (=> b!7929750 d!2370577))

(declare-fun d!2370579 () Bool)

(declare-fun lt!2694260 () Int)

(assert (=> d!2370579 (>= lt!2694260 0)))

(declare-fun e!4680407 () Int)

(assert (=> d!2370579 (= lt!2694260 e!4680407)))

(declare-fun c!1456852 () Bool)

(assert (=> d!2370579 (= c!1456852 ((_ is Nil!74450) (list!19417 (right!57206 (right!57206 t!4440)))))))

(assert (=> d!2370579 (= (size!43253 (list!19417 (right!57206 (right!57206 t!4440)))) lt!2694260)))

(declare-fun b!7931325 () Bool)

(assert (=> b!7931325 (= e!4680407 0)))

(declare-fun b!7931326 () Bool)

(assert (=> b!7931326 (= e!4680407 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 (right!57206 t!4440)))))))))

(assert (= (and d!2370579 c!1456852) b!7931325))

(assert (= (and d!2370579 (not c!1456852)) b!7931326))

(declare-fun m!8316730 () Bool)

(assert (=> b!7931326 m!8316730))

(assert (=> b!7929750 d!2370579))

(declare-fun d!2370581 () Bool)

(declare-fun lt!2694261 () Bool)

(assert (=> d!2370581 (= lt!2694261 (isEmpty!42782 (list!19417 (left!56876 (left!56876 t!4440)))))))

(assert (=> d!2370581 (= lt!2694261 (= (size!43255 (left!56876 (left!56876 t!4440))) 0))))

(assert (=> d!2370581 (= (isEmpty!42779 (left!56876 (left!56876 t!4440))) lt!2694261)))

(declare-fun bs!1968990 () Bool)

(assert (= bs!1968990 d!2370581))

(assert (=> bs!1968990 m!8313070))

(assert (=> bs!1968990 m!8313070))

(declare-fun m!8316732 () Bool)

(assert (=> bs!1968990 m!8316732))

(assert (=> bs!1968990 m!8314512))

(assert (=> b!7929951 d!2370581))

(declare-fun d!2370583 () Bool)

(assert (=> d!2370583 (= (list!19419 (xs!19294 (left!56876 (left!56876 lt!2693711)))) (innerList!15992 (xs!19294 (left!56876 (left!56876 lt!2693711)))))))

(assert (=> b!7930442 d!2370583))

(declare-fun d!2370585 () Bool)

(declare-fun lt!2694262 () (_ BitVec 32))

(assert (=> d!2370585 (and (bvsle #b00000000000000000000000000000000 lt!2694262) (bvsle lt!2694262 #b01111111111111111111111111111111))))

(declare-fun e!4680408 () (_ BitVec 32))

(assert (=> d!2370585 (= lt!2694262 e!4680408)))

(declare-fun c!1456853 () Bool)

(assert (=> d!2370585 (= c!1456853 ((_ is Nil!74450) lt!2693902))))

(assert (=> d!2370585 (= (isize!121 lt!2693902) lt!2694262)))

(declare-fun b!7931327 () Bool)

(assert (=> b!7931327 (= e!4680408 #b00000000000000000000000000000000)))

(declare-fun b!7931328 () Bool)

(declare-fun lt!2694263 () (_ BitVec 32))

(assert (=> b!7931328 (= e!4680408 (ite (= lt!2694263 #b01111111111111111111111111111111) lt!2694263 (bvadd #b00000000000000000000000000000001 lt!2694263)))))

(assert (=> b!7931328 (= lt!2694263 (isize!121 (t!390205 lt!2693902)))))

(assert (= (and d!2370585 c!1456853) b!7931327))

(assert (= (and d!2370585 (not c!1456853)) b!7931328))

(declare-fun m!8316734 () Bool)

(assert (=> b!7931328 m!8316734))

(assert (=> bm!735341 d!2370585))

(declare-fun d!2370587 () Bool)

(declare-fun res!3146887 () Bool)

(declare-fun e!4680409 () Bool)

(assert (=> d!2370587 (=> (not res!3146887) (not e!4680409))))

(assert (=> d!2370587 (= res!3146887 (<= (size!43253 (list!19419 (xs!19294 (left!56876 (right!57206 t!4440))))) 512))))

(assert (=> d!2370587 (= (inv!95733 (left!56876 (right!57206 t!4440))) e!4680409)))

(declare-fun b!7931329 () Bool)

(declare-fun res!3146888 () Bool)

(assert (=> b!7931329 (=> (not res!3146888) (not e!4680409))))

(assert (=> b!7931329 (= res!3146888 (= (csize!32039 (left!56876 (right!57206 t!4440))) (size!43253 (list!19419 (xs!19294 (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931330 () Bool)

(assert (=> b!7931330 (= e!4680409 (and (> (csize!32039 (left!56876 (right!57206 t!4440))) 0) (<= (csize!32039 (left!56876 (right!57206 t!4440))) 512)))))

(assert (= (and d!2370587 res!3146887) b!7931329))

(assert (= (and b!7931329 res!3146888) b!7931330))

(assert (=> d!2370587 m!8313494))

(assert (=> d!2370587 m!8313494))

(declare-fun m!8316736 () Bool)

(assert (=> d!2370587 m!8316736))

(assert (=> b!7931329 m!8313494))

(assert (=> b!7931329 m!8313494))

(assert (=> b!7931329 m!8316736))

(assert (=> b!7929876 d!2370587))

(declare-fun d!2370589 () Bool)

(declare-fun e!4680411 () Bool)

(assert (=> d!2370589 e!4680411))

(declare-fun res!3146890 () Bool)

(assert (=> d!2370589 (=> (not res!3146890) (not e!4680411))))

(declare-fun lt!2694264 () List!74574)

(assert (=> d!2370589 (= res!3146890 (= (content!15785 lt!2694264) ((_ map or) (content!15785 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715)))) (content!15785 lt!2693721))))))

(declare-fun e!4680410 () List!74574)

(assert (=> d!2370589 (= lt!2694264 e!4680410)))

(declare-fun c!1456854 () Bool)

(assert (=> d!2370589 (= c!1456854 ((_ is Nil!74450) (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715)))))))

(assert (=> d!2370589 (= (++!18261 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715))) lt!2693721) lt!2694264)))

(declare-fun b!7931332 () Bool)

(assert (=> b!7931332 (= e!4680410 (Cons!74450 (h!80898 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715)))) (++!18261 (t!390205 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715)))) lt!2693721)))))

(declare-fun b!7931331 () Bool)

(assert (=> b!7931331 (= e!4680410 lt!2693721)))

(declare-fun b!7931333 () Bool)

(declare-fun res!3146889 () Bool)

(assert (=> b!7931333 (=> (not res!3146889) (not e!4680411))))

(assert (=> b!7931333 (= res!3146889 (= (size!43253 lt!2694264) (+ (size!43253 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715)))) (size!43253 lt!2693721))))))

(declare-fun b!7931334 () Bool)

(assert (=> b!7931334 (= e!4680411 (or (not (= lt!2693721 Nil!74450)) (= lt!2694264 (t!390205 (t!390205 (++!18261 lt!2693714 lt!2693715))))))))

(assert (= (and d!2370589 c!1456854) b!7931331))

(assert (= (and d!2370589 (not c!1456854)) b!7931332))

(assert (= (and d!2370589 res!3146890) b!7931333))

(assert (= (and b!7931333 res!3146889) b!7931334))

(declare-fun m!8316738 () Bool)

(assert (=> d!2370589 m!8316738))

(assert (=> d!2370589 m!8315066))

(assert (=> d!2370589 m!8312884))

(declare-fun m!8316740 () Bool)

(assert (=> b!7931332 m!8316740))

(declare-fun m!8316742 () Bool)

(assert (=> b!7931333 m!8316742))

(assert (=> b!7931333 m!8315056))

(assert (=> b!7931333 m!8312892))

(assert (=> b!7930008 d!2370589))

(declare-fun d!2370591 () Bool)

(declare-fun lt!2694265 () Int)

(assert (=> d!2370591 (>= lt!2694265 0)))

(declare-fun e!4680412 () Int)

(assert (=> d!2370591 (= lt!2694265 e!4680412)))

(declare-fun c!1456855 () Bool)

(assert (=> d!2370591 (= c!1456855 ((_ is Nil!74450) lt!2694055))))

(assert (=> d!2370591 (= (size!43253 lt!2694055) lt!2694265)))

(declare-fun b!7931335 () Bool)

(assert (=> b!7931335 (= e!4680412 0)))

(declare-fun b!7931336 () Bool)

(assert (=> b!7931336 (= e!4680412 (+ 1 (size!43253 (t!390205 lt!2694055))))))

(assert (= (and d!2370591 c!1456855) b!7931335))

(assert (= (and d!2370591 (not c!1456855)) b!7931336))

(declare-fun m!8316744 () Bool)

(assert (=> b!7931336 m!8316744))

(assert (=> b!7930377 d!2370591))

(declare-fun d!2370593 () Bool)

(declare-fun lt!2694266 () Int)

(assert (=> d!2370593 (>= lt!2694266 0)))

(declare-fun e!4680413 () Int)

(assert (=> d!2370593 (= lt!2694266 e!4680413)))

(declare-fun c!1456856 () Bool)

(assert (=> d!2370593 (= c!1456856 ((_ is Nil!74450) call!735335))))

(assert (=> d!2370593 (= (size!43253 call!735335) lt!2694266)))

(declare-fun b!7931337 () Bool)

(assert (=> b!7931337 (= e!4680413 0)))

(declare-fun b!7931338 () Bool)

(assert (=> b!7931338 (= e!4680413 (+ 1 (size!43253 (t!390205 call!735335))))))

(assert (= (and d!2370593 c!1456856) b!7931337))

(assert (= (and d!2370593 (not c!1456856)) b!7931338))

(assert (=> b!7931338 m!8316536))

(assert (=> b!7930377 d!2370593))

(declare-fun d!2370595 () Bool)

(declare-fun lt!2694267 () Int)

(assert (=> d!2370595 (>= lt!2694267 0)))

(declare-fun e!4680414 () Int)

(assert (=> d!2370595 (= lt!2694267 e!4680414)))

(declare-fun c!1456857 () Bool)

(assert (=> d!2370595 (= c!1456857 ((_ is Nil!74450) lt!2693864))))

(assert (=> d!2370595 (= (size!43253 lt!2693864) lt!2694267)))

(declare-fun b!7931339 () Bool)

(assert (=> b!7931339 (= e!4680414 0)))

(declare-fun b!7931340 () Bool)

(assert (=> b!7931340 (= e!4680414 (+ 1 (size!43253 (t!390205 lt!2693864))))))

(assert (= (and d!2370595 c!1456857) b!7931339))

(assert (= (and d!2370595 (not c!1456857)) b!7931340))

(declare-fun m!8316746 () Bool)

(assert (=> b!7931340 m!8316746))

(assert (=> b!7930377 d!2370595))

(declare-fun d!2370597 () Bool)

(declare-fun e!4680416 () Bool)

(assert (=> d!2370597 e!4680416))

(declare-fun res!3146892 () Bool)

(assert (=> d!2370597 (=> (not res!3146892) (not e!4680416))))

(declare-fun lt!2694268 () List!74574)

(assert (=> d!2370597 (= res!3146892 (= (content!15785 lt!2694268) ((_ map or) (content!15785 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711))))) (content!15785 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun e!4680415 () List!74574)

(assert (=> d!2370597 (= lt!2694268 e!4680415)))

(declare-fun c!1456858 () Bool)

(assert (=> d!2370597 (= c!1456858 ((_ is Nil!74450) (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711))))))))

(assert (=> d!2370597 (= (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711)))) (list!19417 (right!57206 (left!56876 lt!2693711)))) lt!2694268)))

(declare-fun b!7931342 () Bool)

(assert (=> b!7931342 (= e!4680415 (Cons!74450 (h!80898 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711))))) (++!18261 (t!390205 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711))))) (list!19417 (right!57206 (left!56876 lt!2693711))))))))

(declare-fun b!7931341 () Bool)

(assert (=> b!7931341 (= e!4680415 (list!19417 (right!57206 (left!56876 lt!2693711))))))

(declare-fun b!7931343 () Bool)

(declare-fun res!3146891 () Bool)

(assert (=> b!7931343 (=> (not res!3146891) (not e!4680416))))

(assert (=> b!7931343 (= res!3146891 (= (size!43253 lt!2694268) (+ (size!43253 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711))))) (size!43253 (list!19417 (right!57206 (left!56876 lt!2693711)))))))))

(declare-fun b!7931344 () Bool)

(assert (=> b!7931344 (= e!4680416 (or (not (= (list!19417 (right!57206 (left!56876 lt!2693711))) Nil!74450)) (= lt!2694268 (t!390205 (list!19417 (left!56876 (left!56876 lt!2693711)))))))))

(assert (= (and d!2370597 c!1456858) b!7931341))

(assert (= (and d!2370597 (not c!1456858)) b!7931342))

(assert (= (and d!2370597 res!3146892) b!7931343))

(assert (= (and b!7931343 res!3146891) b!7931344))

(declare-fun m!8316748 () Bool)

(assert (=> d!2370597 m!8316748))

(assert (=> d!2370597 m!8315124))

(assert (=> d!2370597 m!8313080))

(assert (=> d!2370597 m!8314944))

(assert (=> b!7931342 m!8313080))

(declare-fun m!8316750 () Bool)

(assert (=> b!7931342 m!8316750))

(declare-fun m!8316752 () Bool)

(assert (=> b!7931343 m!8316752))

(assert (=> b!7931343 m!8315060))

(assert (=> b!7931343 m!8313080))

(assert (=> b!7931343 m!8314952))

(assert (=> b!7930437 d!2370597))

(assert (=> bm!735352 d!2370231))

(declare-fun d!2370599 () Bool)

(declare-fun lt!2694269 () IArray!31869)

(assert (=> d!2370599 (= lt!2694269 (IArray!31870 ($colon+!317 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))) v!5484)))))

(assert (=> d!2370599 (= lt!2694269 (choose!59838 (xs!19294 (right!57206 (right!57206 t!4440))) v!5484))))

(assert (=> d!2370599 (<= (+ (size!43257 (xs!19294 (right!57206 (right!57206 t!4440)))) 1) 2147483647)))

(assert (=> d!2370599 (= (append!1150 (xs!19294 (right!57206 (right!57206 t!4440))) v!5484) lt!2694269)))

(declare-fun bs!1968991 () Bool)

(assert (= bs!1968991 d!2370599))

(assert (=> bs!1968991 m!8313506))

(assert (=> bs!1968991 m!8313506))

(assert (=> bs!1968991 m!8314382))

(declare-fun m!8316754 () Bool)

(assert (=> bs!1968991 m!8316754))

(declare-fun m!8316756 () Bool)

(assert (=> bs!1968991 m!8316756))

(assert (=> b!7930164 d!2370599))

(declare-fun b!7931345 () Bool)

(declare-fun res!3146894 () Bool)

(declare-fun e!4680417 () Bool)

(assert (=> b!7931345 (=> (not res!3146894) (not e!4680417))))

(declare-fun lt!2694270 () List!74574)

(assert (=> b!7931345 (= res!3146894 (= (size!43253 lt!2694270) (+ (size!43253 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) 1)))))

(declare-fun b!7931346 () Bool)

(declare-fun e!4680419 () Bool)

(declare-fun call!735393 () (_ BitVec 32))

(declare-fun call!735394 () (_ BitVec 32))

(assert (=> b!7931346 (= e!4680419 (= call!735393 (bvadd call!735394 #b00000000000000000000000000000001)))))

(declare-fun b!7931347 () Bool)

(declare-fun res!3146895 () Bool)

(assert (=> b!7931347 (=> (not res!3146895) (not e!4680417))))

(assert (=> b!7931347 (= res!3146895 e!4680419)))

(declare-fun c!1456860 () Bool)

(assert (=> b!7931347 (= c!1456860 (bvslt (isize!121 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) #b01111111111111111111111111111111))))

(declare-fun b!7931348 () Bool)

(declare-fun e!4680418 () List!74574)

(assert (=> b!7931348 (= e!4680418 (Cons!74450 (h!80898 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) ($colon+!317 (t!390205 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) v!5484)))))

(declare-fun b!7931349 () Bool)

(assert (=> b!7931349 (= e!4680417 (= lt!2694270 (++!18261 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))) (Cons!74450 v!5484 Nil!74450))))))

(declare-fun b!7931350 () Bool)

(assert (=> b!7931350 (= e!4680418 (Cons!74450 v!5484 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))))))

(declare-fun b!7931351 () Bool)

(declare-fun res!3146896 () Bool)

(assert (=> b!7931351 (=> (not res!3146896) (not e!4680417))))

(assert (=> b!7931351 (= res!3146896 (= (content!15785 lt!2694270) ((_ map or) (content!15785 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))) (store ((as const (Array T!145818 Bool)) false) v!5484 true))))))

(declare-fun bm!735389 () Bool)

(assert (=> bm!735389 (= call!735393 (isize!121 lt!2694270))))

(declare-fun b!7931352 () Bool)

(assert (=> b!7931352 (= e!4680419 (= call!735393 call!735394))))

(declare-fun bm!735388 () Bool)

(assert (=> bm!735388 (= call!735394 (isize!121 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))))))

(declare-fun d!2370601 () Bool)

(assert (=> d!2370601 e!4680417))

(declare-fun res!3146893 () Bool)

(assert (=> d!2370601 (=> (not res!3146893) (not e!4680417))))

(assert (=> d!2370601 (= res!3146893 ((_ is Cons!74450) lt!2694270))))

(assert (=> d!2370601 (= lt!2694270 e!4680418)))

(declare-fun c!1456859 () Bool)

(assert (=> d!2370601 (= c!1456859 ((_ is Nil!74450) (list!19419 (xs!19294 (right!57206 (right!57206 t!4440))))))))

(assert (=> d!2370601 (= ($colon+!317 (list!19419 (xs!19294 (right!57206 (right!57206 t!4440)))) v!5484) lt!2694270)))

(assert (= (and d!2370601 c!1456859) b!7931350))

(assert (= (and d!2370601 (not c!1456859)) b!7931348))

(assert (= (and d!2370601 res!3146893) b!7931345))

(assert (= (and b!7931345 res!3146894) b!7931347))

(assert (= (and b!7931347 c!1456860) b!7931346))

(assert (= (and b!7931347 (not c!1456860)) b!7931352))

(assert (= (or b!7931346 b!7931352) bm!735389))

(assert (= (or b!7931346 b!7931352) bm!735388))

(assert (= (and b!7931347 res!3146895) b!7931351))

(assert (= (and b!7931351 res!3146896) b!7931349))

(declare-fun m!8316758 () Bool)

(assert (=> b!7931345 m!8316758))

(assert (=> b!7931345 m!8313506))

(assert (=> b!7931345 m!8316222))

(assert (=> b!7931347 m!8313506))

(declare-fun m!8316760 () Bool)

(assert (=> b!7931347 m!8316760))

(assert (=> b!7931349 m!8313506))

(declare-fun m!8316762 () Bool)

(assert (=> b!7931349 m!8316762))

(declare-fun m!8316764 () Bool)

(assert (=> b!7931351 m!8316764))

(assert (=> b!7931351 m!8313506))

(declare-fun m!8316766 () Bool)

(assert (=> b!7931351 m!8316766))

(assert (=> b!7931351 m!8313196))

(assert (=> bm!735388 m!8313506))

(assert (=> bm!735388 m!8316760))

(declare-fun m!8316768 () Bool)

(assert (=> bm!735389 m!8316768))

(declare-fun m!8316770 () Bool)

(assert (=> b!7931348 m!8316770))

(assert (=> b!7930164 d!2370601))

(assert (=> b!7930164 d!2369931))

(declare-fun d!2370603 () Bool)

(declare-fun lt!2694271 () Int)

(assert (=> d!2370603 (>= lt!2694271 0)))

(declare-fun e!4680420 () Int)

(assert (=> d!2370603 (= lt!2694271 e!4680420)))

(declare-fun c!1456861 () Bool)

(assert (=> d!2370603 (= c!1456861 ((_ is Nil!74450) lt!2693897))))

(assert (=> d!2370603 (= (size!43253 lt!2693897) lt!2694271)))

(declare-fun b!7931353 () Bool)

(assert (=> b!7931353 (= e!4680420 0)))

(declare-fun b!7931354 () Bool)

(assert (=> b!7931354 (= e!4680420 (+ 1 (size!43253 (t!390205 lt!2693897))))))

(assert (= (and d!2370603 c!1456861) b!7931353))

(assert (= (and d!2370603 (not c!1456861)) b!7931354))

(declare-fun m!8316772 () Bool)

(assert (=> b!7931354 m!8316772))

(assert (=> b!7929814 d!2370603))

(declare-fun d!2370605 () Bool)

(declare-fun lt!2694272 () Int)

(assert (=> d!2370605 (>= lt!2694272 0)))

(declare-fun e!4680421 () Int)

(assert (=> d!2370605 (= lt!2694272 e!4680421)))

(declare-fun c!1456862 () Bool)

(assert (=> d!2370605 (= c!1456862 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693719))))))

(assert (=> d!2370605 (= (size!43253 (list!19417 (left!56876 lt!2693719))) lt!2694272)))

(declare-fun b!7931355 () Bool)

(assert (=> b!7931355 (= e!4680421 0)))

(declare-fun b!7931356 () Bool)

(assert (=> b!7931356 (= e!4680421 (+ 1 (size!43253 (t!390205 (list!19417 (left!56876 lt!2693719))))))))

(assert (= (and d!2370605 c!1456862) b!7931355))

(assert (= (and d!2370605 (not c!1456862)) b!7931356))

(assert (=> b!7931356 m!8316626))

(assert (=> b!7929814 d!2370605))

(declare-fun d!2370607 () Bool)

(declare-fun lt!2694273 () Int)

(assert (=> d!2370607 (>= lt!2694273 0)))

(declare-fun e!4680422 () Int)

(assert (=> d!2370607 (= lt!2694273 e!4680422)))

(declare-fun c!1456863 () Bool)

(assert (=> d!2370607 (= c!1456863 ((_ is Nil!74450) (list!19417 (right!57206 lt!2693719))))))

(assert (=> d!2370607 (= (size!43253 (list!19417 (right!57206 lt!2693719))) lt!2694273)))

(declare-fun b!7931357 () Bool)

(assert (=> b!7931357 (= e!4680422 0)))

(declare-fun b!7931358 () Bool)

(assert (=> b!7931358 (= e!4680422 (+ 1 (size!43253 (t!390205 (list!19417 (right!57206 lt!2693719))))))))

(assert (= (and d!2370607 c!1456863) b!7931357))

(assert (= (and d!2370607 (not c!1456863)) b!7931358))

(declare-fun m!8316774 () Bool)

(assert (=> b!7931358 m!8316774))

(assert (=> b!7929814 d!2370607))

(declare-fun d!2370609 () Bool)

(declare-fun lt!2694274 () Int)

(assert (=> d!2370609 (>= lt!2694274 0)))

(declare-fun e!4680423 () Int)

(assert (=> d!2370609 (= lt!2694274 e!4680423)))

(declare-fun c!1456864 () Bool)

(assert (=> d!2370609 (= c!1456864 ((_ is Nil!74450) (t!390205 lt!2693810)))))

(assert (=> d!2370609 (= (size!43253 (t!390205 lt!2693810)) lt!2694274)))

(declare-fun b!7931359 () Bool)

(assert (=> b!7931359 (= e!4680423 0)))

(declare-fun b!7931360 () Bool)

(assert (=> b!7931360 (= e!4680423 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693810)))))))

(assert (= (and d!2370609 c!1456864) b!7931359))

(assert (= (and d!2370609 (not c!1456864)) b!7931360))

(declare-fun m!8316776 () Bool)

(assert (=> b!7931360 m!8316776))

(assert (=> b!7930094 d!2370609))

(assert (=> b!7929963 d!2370523))

(assert (=> b!7929963 d!2370525))

(assert (=> b!7930169 d!2370349))

(assert (=> b!7930169 d!2370273))

(assert (=> b!7930270 d!2370299))

(assert (=> b!7930270 d!2369369))

(declare-fun d!2370611 () Bool)

(declare-fun c!1456865 () Bool)

(assert (=> d!2370611 (= c!1456865 ((_ is Nil!74450) lt!2693897))))

(declare-fun e!4680424 () (InoxSet T!145818))

(assert (=> d!2370611 (= (content!15785 lt!2693897) e!4680424)))

(declare-fun b!7931361 () Bool)

(assert (=> b!7931361 (= e!4680424 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931362 () Bool)

(assert (=> b!7931362 (= e!4680424 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 lt!2693897) true) (content!15785 (t!390205 lt!2693897))))))

(assert (= (and d!2370611 c!1456865) b!7931361))

(assert (= (and d!2370611 (not c!1456865)) b!7931362))

(declare-fun m!8316778 () Bool)

(assert (=> b!7931362 m!8316778))

(declare-fun m!8316780 () Bool)

(assert (=> b!7931362 m!8316780))

(assert (=> d!2369413 d!2370611))

(declare-fun d!2370613 () Bool)

(declare-fun c!1456866 () Bool)

(assert (=> d!2370613 (= c!1456866 ((_ is Nil!74450) (list!19417 (left!56876 lt!2693719))))))

(declare-fun e!4680425 () (InoxSet T!145818))

(assert (=> d!2370613 (= (content!15785 (list!19417 (left!56876 lt!2693719))) e!4680425)))

(declare-fun b!7931363 () Bool)

(assert (=> b!7931363 (= e!4680425 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931364 () Bool)

(assert (=> b!7931364 (= e!4680425 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (left!56876 lt!2693719))) true) (content!15785 (t!390205 (list!19417 (left!56876 lt!2693719))))))))

(assert (= (and d!2370613 c!1456866) b!7931363))

(assert (= (and d!2370613 (not c!1456866)) b!7931364))

(declare-fun m!8316782 () Bool)

(assert (=> b!7931364 m!8316782))

(assert (=> b!7931364 m!8316620))

(assert (=> d!2369413 d!2370613))

(declare-fun d!2370615 () Bool)

(declare-fun c!1456867 () Bool)

(assert (=> d!2370615 (= c!1456867 ((_ is Nil!74450) (list!19417 (right!57206 lt!2693719))))))

(declare-fun e!4680426 () (InoxSet T!145818))

(assert (=> d!2370615 (= (content!15785 (list!19417 (right!57206 lt!2693719))) e!4680426)))

(declare-fun b!7931365 () Bool)

(assert (=> b!7931365 (= e!4680426 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931366 () Bool)

(assert (=> b!7931366 (= e!4680426 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (list!19417 (right!57206 lt!2693719))) true) (content!15785 (t!390205 (list!19417 (right!57206 lt!2693719))))))))

(assert (= (and d!2370615 c!1456867) b!7931365))

(assert (= (and d!2370615 (not c!1456867)) b!7931366))

(declare-fun m!8316784 () Bool)

(assert (=> b!7931366 m!8316784))

(declare-fun m!8316786 () Bool)

(assert (=> b!7931366 m!8316786))

(assert (=> d!2369413 d!2370615))

(declare-fun d!2370617 () Bool)

(declare-fun lt!2694275 () Int)

(assert (=> d!2370617 (>= lt!2694275 0)))

(declare-fun e!4680427 () Int)

(assert (=> d!2370617 (= lt!2694275 e!4680427)))

(declare-fun c!1456868 () Bool)

(assert (=> d!2370617 (= c!1456868 ((_ is Nil!74450) lt!2694063))))

(assert (=> d!2370617 (= (size!43253 lt!2694063) lt!2694275)))

(declare-fun b!7931367 () Bool)

(assert (=> b!7931367 (= e!4680427 0)))

(declare-fun b!7931368 () Bool)

(assert (=> b!7931368 (= e!4680427 (+ 1 (size!43253 (t!390205 lt!2694063))))))

(assert (= (and d!2370617 c!1456868) b!7931367))

(assert (= (and d!2370617 (not c!1456868)) b!7931368))

(declare-fun m!8316788 () Bool)

(assert (=> b!7931368 m!8316788))

(assert (=> b!7930426 d!2370617))

(assert (=> b!7930426 d!2370011))

(assert (=> b!7930426 d!2369507))

(declare-fun b!7931369 () Bool)

(declare-fun res!3146900 () Bool)

(declare-fun e!4680428 () Bool)

(assert (=> b!7931369 (=> (not res!3146900) (not e!4680428))))

(assert (=> b!7931369 (= res!3146900 (isBalanced!4530 (left!56876 (right!57206 (left!56876 t!4440)))))))

(declare-fun d!2370619 () Bool)

(declare-fun res!3146897 () Bool)

(declare-fun e!4680429 () Bool)

(assert (=> d!2370619 (=> res!3146897 e!4680429)))

(assert (=> d!2370619 (= res!3146897 (not ((_ is Node!15904) (right!57206 (left!56876 t!4440)))))))

(assert (=> d!2370619 (= (isBalanced!4530 (right!57206 (left!56876 t!4440))) e!4680429)))

(declare-fun b!7931370 () Bool)

(declare-fun res!3146902 () Bool)

(assert (=> b!7931370 (=> (not res!3146902) (not e!4680428))))

(assert (=> b!7931370 (= res!3146902 (isBalanced!4530 (right!57206 (right!57206 (left!56876 t!4440)))))))

(declare-fun b!7931371 () Bool)

(declare-fun res!3146898 () Bool)

(assert (=> b!7931371 (=> (not res!3146898) (not e!4680428))))

(assert (=> b!7931371 (= res!3146898 (not (isEmpty!42779 (left!56876 (right!57206 (left!56876 t!4440))))))))

(declare-fun b!7931372 () Bool)

(declare-fun res!3146899 () Bool)

(assert (=> b!7931372 (=> (not res!3146899) (not e!4680428))))

(assert (=> b!7931372 (= res!3146899 (<= (- (height!2219 (left!56876 (right!57206 (left!56876 t!4440)))) (height!2219 (right!57206 (right!57206 (left!56876 t!4440))))) 1))))

(declare-fun b!7931373 () Bool)

(assert (=> b!7931373 (= e!4680429 e!4680428)))

(declare-fun res!3146901 () Bool)

(assert (=> b!7931373 (=> (not res!3146901) (not e!4680428))))

(assert (=> b!7931373 (= res!3146901 (<= (- 1) (- (height!2219 (left!56876 (right!57206 (left!56876 t!4440)))) (height!2219 (right!57206 (right!57206 (left!56876 t!4440)))))))))

(declare-fun b!7931374 () Bool)

(assert (=> b!7931374 (= e!4680428 (not (isEmpty!42779 (right!57206 (right!57206 (left!56876 t!4440))))))))

(assert (= (and d!2370619 (not res!3146897)) b!7931373))

(assert (= (and b!7931373 res!3146901) b!7931372))

(assert (= (and b!7931372 res!3146899) b!7931369))

(assert (= (and b!7931369 res!3146900) b!7931370))

(assert (= (and b!7931370 res!3146902) b!7931371))

(assert (= (and b!7931371 res!3146898) b!7931374))

(declare-fun m!8316790 () Bool)

(assert (=> b!7931374 m!8316790))

(assert (=> b!7931373 m!8315986))

(assert (=> b!7931373 m!8315988))

(declare-fun m!8316792 () Bool)

(assert (=> b!7931370 m!8316792))

(declare-fun m!8316794 () Bool)

(assert (=> b!7931369 m!8316794))

(assert (=> b!7931372 m!8315986))

(assert (=> b!7931372 m!8315988))

(declare-fun m!8316796 () Bool)

(assert (=> b!7931371 m!8316796))

(assert (=> b!7929950 d!2370619))

(declare-fun d!2370621 () Bool)

(declare-fun lt!2694276 () Int)

(assert (=> d!2370621 (>= lt!2694276 0)))

(declare-fun e!4680430 () Int)

(assert (=> d!2370621 (= lt!2694276 e!4680430)))

(declare-fun c!1456869 () Bool)

(assert (=> d!2370621 (= c!1456869 ((_ is Nil!74450) (t!390205 lt!2693789)))))

(assert (=> d!2370621 (= (size!43253 (t!390205 lt!2693789)) lt!2694276)))

(declare-fun b!7931375 () Bool)

(assert (=> b!7931375 (= e!4680430 0)))

(declare-fun b!7931376 () Bool)

(assert (=> b!7931376 (= e!4680430 (+ 1 (size!43253 (t!390205 (t!390205 lt!2693789)))))))

(assert (= (and d!2370621 c!1456869) b!7931375))

(assert (= (and d!2370621 (not c!1456869)) b!7931376))

(declare-fun m!8316798 () Bool)

(assert (=> b!7931376 m!8316798))

(assert (=> b!7930411 d!2370621))

(declare-fun d!2370623 () Bool)

(declare-fun lt!2694277 () Int)

(assert (=> d!2370623 (>= lt!2694277 0)))

(declare-fun e!4680431 () Int)

(assert (=> d!2370623 (= lt!2694277 e!4680431)))

(declare-fun c!1456870 () Bool)

(assert (=> d!2370623 (= c!1456870 ((_ is Nil!74450) lt!2693947))))

(assert (=> d!2370623 (= (size!43253 lt!2693947) lt!2694277)))

(declare-fun b!7931377 () Bool)

(assert (=> b!7931377 (= e!4680431 0)))

(declare-fun b!7931378 () Bool)

(assert (=> b!7931378 (= e!4680431 (+ 1 (size!43253 (t!390205 lt!2693947))))))

(assert (= (and d!2370623 c!1456870) b!7931377))

(assert (= (and d!2370623 (not c!1456870)) b!7931378))

(declare-fun m!8316800 () Bool)

(assert (=> b!7931378 m!8316800))

(assert (=> b!7930001 d!2370623))

(declare-fun d!2370625 () Bool)

(declare-fun lt!2694278 () Int)

(assert (=> d!2370625 (>= lt!2694278 0)))

(declare-fun e!4680432 () Int)

(assert (=> d!2370625 (= lt!2694278 e!4680432)))

(declare-fun c!1456871 () Bool)

(assert (=> d!2370625 (= c!1456871 ((_ is Nil!74450) (ite c!1456280 lt!2693861 lt!2693863)))))

(assert (=> d!2370625 (= (size!43253 (ite c!1456280 lt!2693861 lt!2693863)) lt!2694278)))

(declare-fun b!7931379 () Bool)

(assert (=> b!7931379 (= e!4680432 0)))

(declare-fun b!7931380 () Bool)

(assert (=> b!7931380 (= e!4680432 (+ 1 (size!43253 (t!390205 (ite c!1456280 lt!2693861 lt!2693863)))))))

(assert (= (and d!2370625 c!1456871) b!7931379))

(assert (= (and d!2370625 (not c!1456871)) b!7931380))

(assert (=> b!7931380 m!8316576))

(assert (=> b!7930001 d!2370625))

(declare-fun d!2370627 () Bool)

(declare-fun lt!2694279 () Int)

(assert (=> d!2370627 (>= lt!2694279 0)))

(declare-fun e!4680433 () Int)

(assert (=> d!2370627 (= lt!2694279 e!4680433)))

(declare-fun c!1456872 () Bool)

(assert (=> d!2370627 (= c!1456872 ((_ is Nil!74450) (ite c!1456280 call!735335 lt!2693866)))))

(assert (=> d!2370627 (= (size!43253 (ite c!1456280 call!735335 lt!2693866)) lt!2694279)))

(declare-fun b!7931381 () Bool)

(assert (=> b!7931381 (= e!4680433 0)))

(declare-fun b!7931382 () Bool)

(assert (=> b!7931382 (= e!4680433 (+ 1 (size!43253 (t!390205 (ite c!1456280 call!735335 lt!2693866)))))))

(assert (= (and d!2370627 c!1456872) b!7931381))

(assert (= (and d!2370627 (not c!1456872)) b!7931382))

(declare-fun m!8316802 () Bool)

(assert (=> b!7931382 m!8316802))

(assert (=> b!7930001 d!2370627))

(declare-fun d!2370629 () Bool)

(declare-fun lt!2694280 () Int)

(assert (=> d!2370629 (= lt!2694280 (size!43253 (list!19417 (left!56876 (left!56876 t!4440)))))))

(assert (=> d!2370629 (= lt!2694280 (ite ((_ is Empty!15904) (left!56876 (left!56876 t!4440))) 0 (ite ((_ is Leaf!30237) (left!56876 (left!56876 t!4440))) (csize!32039 (left!56876 (left!56876 t!4440))) (csize!32038 (left!56876 (left!56876 t!4440))))))))

(assert (=> d!2370629 (= (size!43255 (left!56876 (left!56876 t!4440))) lt!2694280)))

(declare-fun bs!1968992 () Bool)

(assert (= bs!1968992 d!2370629))

(assert (=> bs!1968992 m!8313070))

(assert (=> bs!1968992 m!8313070))

(assert (=> bs!1968992 m!8314240))

(assert (=> d!2369717 d!2370629))

(declare-fun d!2370631 () Bool)

(declare-fun lt!2694281 () Int)

(assert (=> d!2370631 (= lt!2694281 (size!43253 (list!19417 (right!57206 (left!56876 t!4440)))))))

(assert (=> d!2370631 (= lt!2694281 (ite ((_ is Empty!15904) (right!57206 (left!56876 t!4440))) 0 (ite ((_ is Leaf!30237) (right!57206 (left!56876 t!4440))) (csize!32039 (right!57206 (left!56876 t!4440))) (csize!32038 (right!57206 (left!56876 t!4440))))))))

(assert (=> d!2370631 (= (size!43255 (right!57206 (left!56876 t!4440))) lt!2694281)))

(declare-fun bs!1968993 () Bool)

(assert (= bs!1968993 d!2370631))

(assert (=> bs!1968993 m!8313072))

(assert (=> bs!1968993 m!8313072))

(assert (=> bs!1968993 m!8314242))

(assert (=> d!2369717 d!2370631))

(declare-fun d!2370633 () Bool)

(declare-fun e!4680435 () Bool)

(assert (=> d!2370633 e!4680435))

(declare-fun res!3146904 () Bool)

(assert (=> d!2370633 (=> (not res!3146904) (not e!4680435))))

(declare-fun lt!2694282 () List!74574)

(assert (=> d!2370633 (= res!3146904 (= (content!15785 lt!2694282) ((_ map or) (content!15785 (list!19417 (left!56876 (left!56876 (right!57206 t!4440))))) (content!15785 (list!19417 (right!57206 (left!56876 (right!57206 t!4440))))))))))

(declare-fun e!4680434 () List!74574)

(assert (=> d!2370633 (= lt!2694282 e!4680434)))

(declare-fun c!1456873 () Bool)

(assert (=> d!2370633 (= c!1456873 ((_ is Nil!74450) (list!19417 (left!56876 (left!56876 (right!57206 t!4440))))))))

(assert (=> d!2370633 (= (++!18261 (list!19417 (left!56876 (left!56876 (right!57206 t!4440)))) (list!19417 (right!57206 (left!56876 (right!57206 t!4440))))) lt!2694282)))

(declare-fun b!7931384 () Bool)

(assert (=> b!7931384 (= e!4680434 (Cons!74450 (h!80898 (list!19417 (left!56876 (left!56876 (right!57206 t!4440))))) (++!18261 (t!390205 (list!19417 (left!56876 (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931383 () Bool)

(assert (=> b!7931383 (= e!4680434 (list!19417 (right!57206 (left!56876 (right!57206 t!4440)))))))

(declare-fun b!7931385 () Bool)

(declare-fun res!3146903 () Bool)

(assert (=> b!7931385 (=> (not res!3146903) (not e!4680435))))

(assert (=> b!7931385 (= res!3146903 (= (size!43253 lt!2694282) (+ (size!43253 (list!19417 (left!56876 (left!56876 (right!57206 t!4440))))) (size!43253 (list!19417 (right!57206 (left!56876 (right!57206 t!4440))))))))))

(declare-fun b!7931386 () Bool)

(assert (=> b!7931386 (= e!4680435 (or (not (= (list!19417 (right!57206 (left!56876 (right!57206 t!4440)))) Nil!74450)) (= lt!2694282 (list!19417 (left!56876 (left!56876 (right!57206 t!4440)))))))))

(assert (= (and d!2370633 c!1456873) b!7931383))

(assert (= (and d!2370633 (not c!1456873)) b!7931384))

(assert (= (and d!2370633 res!3146904) b!7931385))

(assert (= (and b!7931385 res!3146903) b!7931386))

(declare-fun m!8316804 () Bool)

(assert (=> d!2370633 m!8316804))

(assert (=> d!2370633 m!8313488))

(declare-fun m!8316806 () Bool)

(assert (=> d!2370633 m!8316806))

(assert (=> d!2370633 m!8313490))

(declare-fun m!8316808 () Bool)

(assert (=> d!2370633 m!8316808))

(assert (=> b!7931384 m!8313490))

(declare-fun m!8316810 () Bool)

(assert (=> b!7931384 m!8316810))

(declare-fun m!8316812 () Bool)

(assert (=> b!7931385 m!8316812))

(assert (=> b!7931385 m!8313488))

(declare-fun m!8316814 () Bool)

(assert (=> b!7931385 m!8316814))

(assert (=> b!7931385 m!8313490))

(declare-fun m!8316816 () Bool)

(assert (=> b!7931385 m!8316816))

(assert (=> b!7929755 d!2370633))

(declare-fun d!2370635 () Bool)

(declare-fun c!1456874 () Bool)

(assert (=> d!2370635 (= c!1456874 ((_ is Empty!15904) (left!56876 (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4680436 () List!74574)

(assert (=> d!2370635 (= (list!19417 (left!56876 (left!56876 (right!57206 t!4440)))) e!4680436)))

(declare-fun b!7931387 () Bool)

(assert (=> b!7931387 (= e!4680436 Nil!74450)))

(declare-fun b!7931390 () Bool)

(declare-fun e!4680437 () List!74574)

(assert (=> b!7931390 (= e!4680437 (++!18261 (list!19417 (left!56876 (left!56876 (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (left!56876 (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931389 () Bool)

(assert (=> b!7931389 (= e!4680437 (list!19419 (xs!19294 (left!56876 (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7931388 () Bool)

(assert (=> b!7931388 (= e!4680436 e!4680437)))

(declare-fun c!1456875 () Bool)

(assert (=> b!7931388 (= c!1456875 ((_ is Leaf!30237) (left!56876 (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2370635 c!1456874) b!7931387))

(assert (= (and d!2370635 (not c!1456874)) b!7931388))

(assert (= (and b!7931388 c!1456875) b!7931389))

(assert (= (and b!7931388 (not c!1456875)) b!7931390))

(declare-fun m!8316818 () Bool)

(assert (=> b!7931390 m!8316818))

(declare-fun m!8316820 () Bool)

(assert (=> b!7931390 m!8316820))

(assert (=> b!7931390 m!8316818))

(assert (=> b!7931390 m!8316820))

(declare-fun m!8316822 () Bool)

(assert (=> b!7931390 m!8316822))

(declare-fun m!8316824 () Bool)

(assert (=> b!7931389 m!8316824))

(assert (=> b!7929755 d!2370635))

(declare-fun d!2370637 () Bool)

(declare-fun c!1456876 () Bool)

(assert (=> d!2370637 (= c!1456876 ((_ is Empty!15904) (right!57206 (left!56876 (right!57206 t!4440)))))))

(declare-fun e!4680438 () List!74574)

(assert (=> d!2370637 (= (list!19417 (right!57206 (left!56876 (right!57206 t!4440)))) e!4680438)))

(declare-fun b!7931391 () Bool)

(assert (=> b!7931391 (= e!4680438 Nil!74450)))

(declare-fun b!7931394 () Bool)

(declare-fun e!4680439 () List!74574)

(assert (=> b!7931394 (= e!4680439 (++!18261 (list!19417 (left!56876 (right!57206 (left!56876 (right!57206 t!4440))))) (list!19417 (right!57206 (right!57206 (left!56876 (right!57206 t!4440)))))))))

(declare-fun b!7931393 () Bool)

(assert (=> b!7931393 (= e!4680439 (list!19419 (xs!19294 (right!57206 (left!56876 (right!57206 t!4440))))))))

(declare-fun b!7931392 () Bool)

(assert (=> b!7931392 (= e!4680438 e!4680439)))

(declare-fun c!1456877 () Bool)

(assert (=> b!7931392 (= c!1456877 ((_ is Leaf!30237) (right!57206 (left!56876 (right!57206 t!4440)))))))

(assert (= (and d!2370637 c!1456876) b!7931391))

(assert (= (and d!2370637 (not c!1456876)) b!7931392))

(assert (= (and b!7931392 c!1456877) b!7931393))

(assert (= (and b!7931392 (not c!1456877)) b!7931394))

(declare-fun m!8316826 () Bool)

(assert (=> b!7931394 m!8316826))

(declare-fun m!8316828 () Bool)

(assert (=> b!7931394 m!8316828))

(assert (=> b!7931394 m!8316826))

(assert (=> b!7931394 m!8316828))

(declare-fun m!8316830 () Bool)

(assert (=> b!7931394 m!8316830))

(declare-fun m!8316832 () Bool)

(assert (=> b!7931393 m!8316832))

(assert (=> b!7929755 d!2370637))

(declare-fun d!2370639 () Bool)

(declare-fun e!4680441 () Bool)

(assert (=> d!2370639 e!4680441))

(declare-fun res!3146906 () Bool)

(assert (=> d!2370639 (=> (not res!3146906) (not e!4680441))))

(declare-fun lt!2694283 () List!74574)

(assert (=> d!2370639 (= res!3146906 (= (content!15785 lt!2694283) ((_ map or) (content!15785 (t!390205 lt!2693865)) (content!15785 call!735339))))))

(declare-fun e!4680440 () List!74574)

(assert (=> d!2370639 (= lt!2694283 e!4680440)))

(declare-fun c!1456878 () Bool)

(assert (=> d!2370639 (= c!1456878 ((_ is Nil!74450) (t!390205 lt!2693865)))))

(assert (=> d!2370639 (= (++!18261 (t!390205 lt!2693865) call!735339) lt!2694283)))

(declare-fun b!7931396 () Bool)

(assert (=> b!7931396 (= e!4680440 (Cons!74450 (h!80898 (t!390205 lt!2693865)) (++!18261 (t!390205 (t!390205 lt!2693865)) call!735339)))))

(declare-fun b!7931395 () Bool)

(assert (=> b!7931395 (= e!4680440 call!735339)))

(declare-fun b!7931397 () Bool)

(declare-fun res!3146905 () Bool)

(assert (=> b!7931397 (=> (not res!3146905) (not e!4680441))))

(assert (=> b!7931397 (= res!3146905 (= (size!43253 lt!2694283) (+ (size!43253 (t!390205 lt!2693865)) (size!43253 call!735339))))))

(declare-fun b!7931398 () Bool)

(assert (=> b!7931398 (= e!4680441 (or (not (= call!735339 Nil!74450)) (= lt!2694283 (t!390205 lt!2693865))))))

(assert (= (and d!2370639 c!1456878) b!7931395))

(assert (= (and d!2370639 (not c!1456878)) b!7931396))

(assert (= (and d!2370639 res!3146906) b!7931397))

(assert (= (and b!7931397 res!3146905) b!7931398))

(declare-fun m!8316834 () Bool)

(assert (=> d!2370639 m!8316834))

(assert (=> d!2370639 m!8315326))

(assert (=> d!2370639 m!8314796))

(declare-fun m!8316836 () Bool)

(assert (=> b!7931396 m!8316836))

(declare-fun m!8316838 () Bool)

(assert (=> b!7931397 m!8316838))

(assert (=> b!7931397 m!8315114))

(assert (=> b!7931397 m!8314808))

(assert (=> b!7930368 d!2370639))

(declare-fun d!2370641 () Bool)

(declare-fun lt!2694284 () Int)

(assert (=> d!2370641 (>= lt!2694284 0)))

(declare-fun e!4680442 () Int)

(assert (=> d!2370641 (= lt!2694284 e!4680442)))

(declare-fun c!1456879 () Bool)

(assert (=> d!2370641 (= c!1456879 ((_ is Nil!74450) lt!2694034))))

(assert (=> d!2370641 (= (size!43253 lt!2694034) lt!2694284)))

(declare-fun b!7931399 () Bool)

(assert (=> b!7931399 (= e!4680442 0)))

(declare-fun b!7931400 () Bool)

(assert (=> b!7931400 (= e!4680442 (+ 1 (size!43253 (t!390205 lt!2694034))))))

(assert (= (and d!2370641 c!1456879) b!7931399))

(assert (= (and d!2370641 (not c!1456879)) b!7931400))

(declare-fun m!8316840 () Bool)

(assert (=> b!7931400 m!8316840))

(assert (=> b!7930282 d!2370641))

(assert (=> b!7930282 d!2370011))

(assert (=> b!7930282 d!2369459))

(declare-fun d!2370643 () Bool)

(declare-fun c!1456880 () Bool)

(assert (=> d!2370643 (= c!1456880 ((_ is Nil!74450) (t!390205 lt!2693764)))))

(declare-fun e!4680443 () (InoxSet T!145818))

(assert (=> d!2370643 (= (content!15785 (t!390205 lt!2693764)) e!4680443)))

(declare-fun b!7931401 () Bool)

(assert (=> b!7931401 (= e!4680443 ((as const (Array T!145818 Bool)) false))))

(declare-fun b!7931402 () Bool)

(assert (=> b!7931402 (= e!4680443 ((_ map or) (store ((as const (Array T!145818 Bool)) false) (h!80898 (t!390205 lt!2693764)) true) (content!15785 (t!390205 (t!390205 lt!2693764)))))))

(assert (= (and d!2370643 c!1456880) b!7931401))

(assert (= (and d!2370643 (not c!1456880)) b!7931402))

(declare-fun m!8316842 () Bool)

(assert (=> b!7931402 m!8316842))

(declare-fun m!8316844 () Bool)

(assert (=> b!7931402 m!8316844))

(assert (=> b!7929729 d!2370643))

(declare-fun d!2370645 () Bool)

(declare-fun e!4680445 () Bool)

(assert (=> d!2370645 e!4680445))

(declare-fun res!3146908 () Bool)

(assert (=> d!2370645 (=> (not res!3146908) (not e!4680445))))

(declare-fun lt!2694285 () List!74574)

(assert (=> d!2370645 (= res!3146908 (= (content!15785 lt!2694285) ((_ map or) (content!15785 (t!390205 (ite c!1456280 call!735334 lt!2693871))) (content!15785 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun e!4680444 () List!74574)

(assert (=> d!2370645 (= lt!2694285 e!4680444)))

(declare-fun c!1456881 () Bool)

(assert (=> d!2370645 (= c!1456881 ((_ is Nil!74450) (t!390205 (ite c!1456280 call!735334 lt!2693871))))))

(assert (=> d!2370645 (= (++!18261 (t!390205 (ite c!1456280 call!735334 lt!2693871)) (ite c!1456280 lt!2693872 lt!2693864)) lt!2694285)))

(declare-fun b!7931404 () Bool)

(assert (=> b!7931404 (= e!4680444 (Cons!74450 (h!80898 (t!390205 (ite c!1456280 call!735334 lt!2693871))) (++!18261 (t!390205 (t!390205 (ite c!1456280 call!735334 lt!2693871))) (ite c!1456280 lt!2693872 lt!2693864))))))

(declare-fun b!7931403 () Bool)

(assert (=> b!7931403 (= e!4680444 (ite c!1456280 lt!2693872 lt!2693864))))

(declare-fun b!7931405 () Bool)

(declare-fun res!3146907 () Bool)

(assert (=> b!7931405 (=> (not res!3146907) (not e!4680445))))

(assert (=> b!7931405 (= res!3146907 (= (size!43253 lt!2694285) (+ (size!43253 (t!390205 (ite c!1456280 call!735334 lt!2693871))) (size!43253 (ite c!1456280 lt!2693872 lt!2693864)))))))

(declare-fun b!7931406 () Bool)

(assert (=> b!7931406 (= e!4680445 (or (not (= (ite c!1456280 lt!2693872 lt!2693864) Nil!74450)) (= lt!2694285 (t!390205 (ite c!1456280 call!735334 lt!2693871)))))))

(assert (= (and d!2370645 c!1456881) b!7931403))

(assert (= (and d!2370645 (not c!1456881)) b!7931404))

(assert (= (and d!2370645 res!3146908) b!7931405))

(assert (= (and b!7931405 res!3146907) b!7931406))

(declare-fun m!8316846 () Bool)

(assert (=> d!2370645 m!8316846))

(assert (=> d!2370645 m!8315970))

(assert (=> d!2370645 m!8313518))

(declare-fun m!8316848 () Bool)

(assert (=> b!7931404 m!8316848))

(declare-fun m!8316850 () Bool)

(assert (=> b!7931405 m!8316850))

(assert (=> b!7931405 m!8315090))

(assert (=> b!7931405 m!8313528))

(assert (=> b!7929767 d!2370645))

(declare-fun d!2370647 () Bool)

(declare-fun c!1456882 () Bool)

(assert (=> d!2370647 (= c!1456882 ((_ is Node!15904) (left!56876 (right!57206 (right!57206 t!4440)))))))

(declare-fun e!4680446 () Bool)

(assert (=> d!2370647 (= (inv!95730 (left!56876 (right!57206 (right!57206 t!4440)))) e!4680446)))

(declare-fun b!7931407 () Bool)

(assert (=> b!7931407 (= e!4680446 (inv!95732 (left!56876 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7931408 () Bool)

(declare-fun e!4680447 () Bool)

(assert (=> b!7931408 (= e!4680446 e!4680447)))

(declare-fun res!3146909 () Bool)

(assert (=> b!7931408 (= res!3146909 (not ((_ is Leaf!30237) (left!56876 (right!57206 (right!57206 t!4440))))))))

(assert (=> b!7931408 (=> res!3146909 e!4680447)))

(declare-fun b!7931409 () Bool)

(assert (=> b!7931409 (= e!4680447 (inv!95733 (left!56876 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2370647 c!1456882) b!7931407))

(assert (= (and d!2370647 (not c!1456882)) b!7931408))

(assert (= (and b!7931408 (not res!3146909)) b!7931409))

(declare-fun m!8316852 () Bool)

(assert (=> b!7931407 m!8316852))

(declare-fun m!8316854 () Bool)

(assert (=> b!7931409 m!8316854))

(assert (=> b!7930452 d!2370647))

(declare-fun d!2370649 () Bool)

(declare-fun c!1456883 () Bool)

(assert (=> d!2370649 (= c!1456883 ((_ is Node!15904) (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun e!4680448 () Bool)

(assert (=> d!2370649 (= (inv!95730 (right!57206 (right!57206 (right!57206 t!4440)))) e!4680448)))

(declare-fun b!7931410 () Bool)

(assert (=> b!7931410 (= e!4680448 (inv!95732 (right!57206 (right!57206 (right!57206 t!4440)))))))

(declare-fun b!7931411 () Bool)

(declare-fun e!4680449 () Bool)

(assert (=> b!7931411 (= e!4680448 e!4680449)))

(declare-fun res!3146910 () Bool)

(assert (=> b!7931411 (= res!3146910 (not ((_ is Leaf!30237) (right!57206 (right!57206 (right!57206 t!4440))))))))

(assert (=> b!7931411 (=> res!3146910 e!4680449)))

(declare-fun b!7931412 () Bool)

(assert (=> b!7931412 (= e!4680449 (inv!95733 (right!57206 (right!57206 (right!57206 t!4440)))))))

(assert (= (and d!2370649 c!1456883) b!7931410))

(assert (= (and d!2370649 (not c!1456883)) b!7931411))

(assert (= (and b!7931411 (not res!3146910)) b!7931412))

(declare-fun m!8316856 () Bool)

(assert (=> b!7931410 m!8316856))

(declare-fun m!8316858 () Bool)

(assert (=> b!7931412 m!8316858))

(assert (=> b!7930452 d!2370649))

(declare-fun b!7931413 () Bool)

(declare-fun e!4680450 () Bool)

(declare-fun tp!2358919 () Bool)

(assert (=> b!7931413 (= e!4680450 (and tp_is_empty!53233 tp!2358919))))

(assert (=> b!7930460 (= tp!2358910 e!4680450)))

(assert (= (and b!7930460 ((_ is Cons!74450) (innerList!15992 (xs!19294 (right!57206 (left!56876 t!4440)))))) b!7931413))

(declare-fun b!7931414 () Bool)

(declare-fun e!4680451 () Bool)

(declare-fun tp!2358920 () Bool)

(assert (=> b!7931414 (= e!4680451 (and tp_is_empty!53233 tp!2358920))))

(assert (=> b!7930451 (= tp!2358901 e!4680451)))

(assert (= (and b!7930451 ((_ is Cons!74450) (innerList!15992 (xs!19294 (left!56876 (right!57206 t!4440)))))) b!7931414))

(declare-fun tp!2358922 () Bool)

(declare-fun b!7931415 () Bool)

(declare-fun e!4680453 () Bool)

(declare-fun tp!2358921 () Bool)

(assert (=> b!7931415 (= e!4680453 (and (inv!95730 (left!56876 (left!56876 (left!56876 (right!57206 t!4440))))) tp!2358922 (inv!95730 (right!57206 (left!56876 (left!56876 (right!57206 t!4440))))) tp!2358921))))

(declare-fun b!7931417 () Bool)

(declare-fun e!4680452 () Bool)

(declare-fun tp!2358923 () Bool)

(assert (=> b!7931417 (= e!4680452 tp!2358923)))

(declare-fun b!7931416 () Bool)

(assert (=> b!7931416 (= e!4680453 (and (inv!95731 (xs!19294 (left!56876 (left!56876 (right!57206 t!4440))))) e!4680452))))

(assert (=> b!7930449 (= tp!2358900 (and (inv!95730 (left!56876 (left!56876 (right!57206 t!4440)))) e!4680453))))

(assert (= (and b!7930449 ((_ is Node!15904) (left!56876 (left!56876 (right!57206 t!4440))))) b!7931415))

(assert (= b!7931416 b!7931417))

(assert (= (and b!7930449 ((_ is Leaf!30237) (left!56876 (left!56876 (right!57206 t!4440))))) b!7931416))

(declare-fun m!8316860 () Bool)

(assert (=> b!7931415 m!8316860))

(declare-fun m!8316862 () Bool)

(assert (=> b!7931415 m!8316862))

(declare-fun m!8316864 () Bool)

(assert (=> b!7931416 m!8316864))

(assert (=> b!7930449 m!8314970))

(declare-fun tp!2358924 () Bool)

(declare-fun b!7931418 () Bool)

(declare-fun e!4680455 () Bool)

(declare-fun tp!2358925 () Bool)

(assert (=> b!7931418 (= e!4680455 (and (inv!95730 (left!56876 (right!57206 (left!56876 (right!57206 t!4440))))) tp!2358925 (inv!95730 (right!57206 (right!57206 (left!56876 (right!57206 t!4440))))) tp!2358924))))

(declare-fun b!7931420 () Bool)

(declare-fun e!4680454 () Bool)

(declare-fun tp!2358926 () Bool)

(assert (=> b!7931420 (= e!4680454 tp!2358926)))

(declare-fun b!7931419 () Bool)

(assert (=> b!7931419 (= e!4680455 (and (inv!95731 (xs!19294 (right!57206 (left!56876 (right!57206 t!4440))))) e!4680454))))

(assert (=> b!7930449 (= tp!2358899 (and (inv!95730 (right!57206 (left!56876 (right!57206 t!4440)))) e!4680455))))

(assert (= (and b!7930449 ((_ is Node!15904) (right!57206 (left!56876 (right!57206 t!4440))))) b!7931418))

(assert (= b!7931419 b!7931420))

(assert (= (and b!7930449 ((_ is Leaf!30237) (right!57206 (left!56876 (right!57206 t!4440))))) b!7931419))

(declare-fun m!8316866 () Bool)

(assert (=> b!7931418 m!8316866))

(declare-fun m!8316868 () Bool)

(assert (=> b!7931418 m!8316868))

(declare-fun m!8316870 () Bool)

(assert (=> b!7931419 m!8316870))

(assert (=> b!7930449 m!8314972))

(declare-fun b!7931421 () Bool)

(declare-fun e!4680456 () Bool)

(declare-fun tp!2358927 () Bool)

(assert (=> b!7931421 (= e!4680456 (and tp_is_empty!53233 tp!2358927))))

(assert (=> b!7930461 (= tp!2358911 e!4680456)))

(assert (= (and b!7930461 ((_ is Cons!74450) (t!390205 (innerList!15992 (xs!19294 (right!57206 t!4440)))))) b!7931421))

(declare-fun tp!2358928 () Bool)

(declare-fun tp!2358929 () Bool)

(declare-fun e!4680458 () Bool)

(declare-fun b!7931422 () Bool)

(assert (=> b!7931422 (= e!4680458 (and (inv!95730 (left!56876 (left!56876 (right!57206 (left!56876 t!4440))))) tp!2358929 (inv!95730 (right!57206 (left!56876 (right!57206 (left!56876 t!4440))))) tp!2358928))))

(declare-fun b!7931424 () Bool)

(declare-fun e!4680457 () Bool)

(declare-fun tp!2358930 () Bool)

(assert (=> b!7931424 (= e!4680457 tp!2358930)))

(declare-fun b!7931423 () Bool)

(assert (=> b!7931423 (= e!4680458 (and (inv!95731 (xs!19294 (left!56876 (right!57206 (left!56876 t!4440))))) e!4680457))))

(assert (=> b!7930458 (= tp!2358909 (and (inv!95730 (left!56876 (right!57206 (left!56876 t!4440)))) e!4680458))))

(assert (= (and b!7930458 ((_ is Node!15904) (left!56876 (right!57206 (left!56876 t!4440))))) b!7931422))

(assert (= b!7931423 b!7931424))

(assert (= (and b!7930458 ((_ is Leaf!30237) (left!56876 (right!57206 (left!56876 t!4440))))) b!7931423))

(declare-fun m!8316872 () Bool)

(assert (=> b!7931422 m!8316872))

(declare-fun m!8316874 () Bool)

(assert (=> b!7931422 m!8316874))

(declare-fun m!8316876 () Bool)

(assert (=> b!7931423 m!8316876))

(assert (=> b!7930458 m!8314988))

(declare-fun e!4680460 () Bool)

(declare-fun tp!2358932 () Bool)

(declare-fun tp!2358931 () Bool)

(declare-fun b!7931425 () Bool)

(assert (=> b!7931425 (= e!4680460 (and (inv!95730 (left!56876 (right!57206 (right!57206 (left!56876 t!4440))))) tp!2358932 (inv!95730 (right!57206 (right!57206 (right!57206 (left!56876 t!4440))))) tp!2358931))))

(declare-fun b!7931427 () Bool)

(declare-fun e!4680459 () Bool)

(declare-fun tp!2358933 () Bool)

(assert (=> b!7931427 (= e!4680459 tp!2358933)))

(declare-fun b!7931426 () Bool)

(assert (=> b!7931426 (= e!4680460 (and (inv!95731 (xs!19294 (right!57206 (right!57206 (left!56876 t!4440))))) e!4680459))))

(assert (=> b!7930458 (= tp!2358908 (and (inv!95730 (right!57206 (right!57206 (left!56876 t!4440)))) e!4680460))))

(assert (= (and b!7930458 ((_ is Node!15904) (right!57206 (right!57206 (left!56876 t!4440))))) b!7931425))

(assert (= b!7931426 b!7931427))

(assert (= (and b!7930458 ((_ is Leaf!30237) (right!57206 (right!57206 (left!56876 t!4440))))) b!7931426))

(declare-fun m!8316878 () Bool)

(assert (=> b!7931425 m!8316878))

(declare-fun m!8316880 () Bool)

(assert (=> b!7931425 m!8316880))

(declare-fun m!8316882 () Bool)

(assert (=> b!7931426 m!8316882))

(assert (=> b!7930458 m!8314990))

(declare-fun b!7931428 () Bool)

(declare-fun e!4680461 () Bool)

(declare-fun tp!2358934 () Bool)

(assert (=> b!7931428 (= e!4680461 (and tp_is_empty!53233 tp!2358934))))

(assert (=> b!7930457 (= tp!2358907 e!4680461)))

(assert (= (and b!7930457 ((_ is Cons!74450) (innerList!15992 (xs!19294 (left!56876 (left!56876 t!4440)))))) b!7931428))

(declare-fun b!7931429 () Bool)

(declare-fun tp!2358935 () Bool)

(declare-fun e!4680463 () Bool)

(declare-fun tp!2358936 () Bool)

(assert (=> b!7931429 (= e!4680463 (and (inv!95730 (left!56876 (left!56876 (left!56876 (left!56876 t!4440))))) tp!2358936 (inv!95730 (right!57206 (left!56876 (left!56876 (left!56876 t!4440))))) tp!2358935))))

(declare-fun b!7931431 () Bool)

(declare-fun e!4680462 () Bool)

(declare-fun tp!2358937 () Bool)

(assert (=> b!7931431 (= e!4680462 tp!2358937)))

(declare-fun b!7931430 () Bool)

(assert (=> b!7931430 (= e!4680463 (and (inv!95731 (xs!19294 (left!56876 (left!56876 (left!56876 t!4440))))) e!4680462))))

(assert (=> b!7930455 (= tp!2358906 (and (inv!95730 (left!56876 (left!56876 (left!56876 t!4440)))) e!4680463))))

(assert (= (and b!7930455 ((_ is Node!15904) (left!56876 (left!56876 (left!56876 t!4440))))) b!7931429))

(assert (= b!7931430 b!7931431))

(assert (= (and b!7930455 ((_ is Leaf!30237) (left!56876 (left!56876 (left!56876 t!4440))))) b!7931430))

(declare-fun m!8316884 () Bool)

(assert (=> b!7931429 m!8316884))

(declare-fun m!8316886 () Bool)

(assert (=> b!7931429 m!8316886))

(declare-fun m!8316888 () Bool)

(assert (=> b!7931430 m!8316888))

(assert (=> b!7930455 m!8314982))

(declare-fun tp!2358939 () Bool)

(declare-fun tp!2358938 () Bool)

(declare-fun b!7931432 () Bool)

(declare-fun e!4680465 () Bool)

(assert (=> b!7931432 (= e!4680465 (and (inv!95730 (left!56876 (right!57206 (left!56876 (left!56876 t!4440))))) tp!2358939 (inv!95730 (right!57206 (right!57206 (left!56876 (left!56876 t!4440))))) tp!2358938))))

(declare-fun b!7931434 () Bool)

(declare-fun e!4680464 () Bool)

(declare-fun tp!2358940 () Bool)

(assert (=> b!7931434 (= e!4680464 tp!2358940)))

(declare-fun b!7931433 () Bool)

(assert (=> b!7931433 (= e!4680465 (and (inv!95731 (xs!19294 (right!57206 (left!56876 (left!56876 t!4440))))) e!4680464))))

(assert (=> b!7930455 (= tp!2358905 (and (inv!95730 (right!57206 (left!56876 (left!56876 t!4440)))) e!4680465))))

(assert (= (and b!7930455 ((_ is Node!15904) (right!57206 (left!56876 (left!56876 t!4440))))) b!7931432))

(assert (= b!7931433 b!7931434))

(assert (= (and b!7930455 ((_ is Leaf!30237) (right!57206 (left!56876 (left!56876 t!4440))))) b!7931433))

(declare-fun m!8316890 () Bool)

(assert (=> b!7931432 m!8316890))

(declare-fun m!8316892 () Bool)

(assert (=> b!7931432 m!8316892))

(declare-fun m!8316894 () Bool)

(assert (=> b!7931433 m!8316894))

(assert (=> b!7930455 m!8314984))

(declare-fun b!7931435 () Bool)

(declare-fun e!4680466 () Bool)

(declare-fun tp!2358941 () Bool)

(assert (=> b!7931435 (= e!4680466 (and tp_is_empty!53233 tp!2358941))))

(assert (=> b!7930454 (= tp!2358904 e!4680466)))

(assert (= (and b!7930454 ((_ is Cons!74450) (innerList!15992 (xs!19294 (right!57206 (right!57206 t!4440)))))) b!7931435))

(declare-fun b!7931436 () Bool)

(declare-fun e!4680467 () Bool)

(declare-fun tp!2358942 () Bool)

(assert (=> b!7931436 (= e!4680467 (and tp_is_empty!53233 tp!2358942))))

(assert (=> b!7930448 (= tp!2358898 e!4680467)))

(assert (= (and b!7930448 ((_ is Cons!74450) (t!390205 (t!390205 (innerList!15992 (xs!19294 t!4440)))))) b!7931436))

(declare-fun b!7931437 () Bool)

(declare-fun e!4680468 () Bool)

(declare-fun tp!2358943 () Bool)

(assert (=> b!7931437 (= e!4680468 (and tp_is_empty!53233 tp!2358943))))

(assert (=> b!7930462 (= tp!2358912 e!4680468)))

(assert (= (and b!7930462 ((_ is Cons!74450) (t!390205 (innerList!15992 (xs!19294 (left!56876 t!4440)))))) b!7931437))

(declare-fun tp!2358945 () Bool)

(declare-fun e!4680470 () Bool)

(declare-fun tp!2358944 () Bool)

(declare-fun b!7931438 () Bool)

(assert (=> b!7931438 (= e!4680470 (and (inv!95730 (left!56876 (left!56876 (right!57206 (right!57206 t!4440))))) tp!2358945 (inv!95730 (right!57206 (left!56876 (right!57206 (right!57206 t!4440))))) tp!2358944))))

(declare-fun b!7931440 () Bool)

(declare-fun e!4680469 () Bool)

(declare-fun tp!2358946 () Bool)

(assert (=> b!7931440 (= e!4680469 tp!2358946)))

(declare-fun b!7931439 () Bool)

(assert (=> b!7931439 (= e!4680470 (and (inv!95731 (xs!19294 (left!56876 (right!57206 (right!57206 t!4440))))) e!4680469))))

(assert (=> b!7930452 (= tp!2358903 (and (inv!95730 (left!56876 (right!57206 (right!57206 t!4440)))) e!4680470))))

(assert (= (and b!7930452 ((_ is Node!15904) (left!56876 (right!57206 (right!57206 t!4440))))) b!7931438))

(assert (= b!7931439 b!7931440))

(assert (= (and b!7930452 ((_ is Leaf!30237) (left!56876 (right!57206 (right!57206 t!4440))))) b!7931439))

(declare-fun m!8316896 () Bool)

(assert (=> b!7931438 m!8316896))

(declare-fun m!8316898 () Bool)

(assert (=> b!7931438 m!8316898))

(declare-fun m!8316900 () Bool)

(assert (=> b!7931439 m!8316900))

(assert (=> b!7930452 m!8314976))

(declare-fun e!4680472 () Bool)

(declare-fun b!7931441 () Bool)

(declare-fun tp!2358948 () Bool)

(declare-fun tp!2358947 () Bool)

(assert (=> b!7931441 (= e!4680472 (and (inv!95730 (left!56876 (right!57206 (right!57206 (right!57206 t!4440))))) tp!2358948 (inv!95730 (right!57206 (right!57206 (right!57206 (right!57206 t!4440))))) tp!2358947))))

(declare-fun b!7931443 () Bool)

(declare-fun e!4680471 () Bool)

(declare-fun tp!2358949 () Bool)

(assert (=> b!7931443 (= e!4680471 tp!2358949)))

(declare-fun b!7931442 () Bool)

(assert (=> b!7931442 (= e!4680472 (and (inv!95731 (xs!19294 (right!57206 (right!57206 (right!57206 t!4440))))) e!4680471))))

(assert (=> b!7930452 (= tp!2358902 (and (inv!95730 (right!57206 (right!57206 (right!57206 t!4440)))) e!4680472))))

(assert (= (and b!7930452 ((_ is Node!15904) (right!57206 (right!57206 (right!57206 t!4440))))) b!7931441))

(assert (= b!7931442 b!7931443))

(assert (= (and b!7930452 ((_ is Leaf!30237) (right!57206 (right!57206 (right!57206 t!4440))))) b!7931442))

(declare-fun m!8316902 () Bool)

(assert (=> b!7931441 m!8316902))

(declare-fun m!8316904 () Bool)

(assert (=> b!7931441 m!8316904))

(declare-fun m!8316906 () Bool)

(assert (=> b!7931442 m!8316906))

(assert (=> b!7930452 m!8314978))

(check-sat (not b!7930859) (not b!7931252) (not b!7930609) (not d!2370409) (not d!2370049) (not b!7931374) (not b!7930624) (not b!7930853) (not bm!735384) (not b!7930986) (not b!7931416) (not b!7931279) (not b!7930937) (not b!7930837) (not b!7930568) (not b!7931070) (not b!7930892) (not b!7930990) (not d!2370213) (not b!7930820) (not b!7930728) (not b!7930848) (not b!7930898) (not b!7930713) (not b!7930492) (not b!7931112) (not b!7931368) (not b!7931264) (not b!7931402) (not b!7931248) (not d!2370001) (not d!2370389) (not b!7930942) (not b!7930664) (not b!7931151) (not d!2370229) (not d!2370225) (not b!7930669) (not d!2369929) (not b!7931254) (not d!2370319) (not b!7930995) (not b!7931340) (not b!7931364) (not d!2370413) (not b!7931147) (not b!7930542) (not b!7930824) (not b!7930750) (not b!7931187) (not bm!735374) (not b!7931058) (not b!7931142) (not b!7931422) (not b!7930559) tp_is_empty!53233 (not b!7930811) (not b!7930706) (not b!7931428) (not b!7930552) (not b!7930644) (not d!2370509) (not d!2370461) (not b!7930690) (not b!7931234) (not d!2370097) (not b!7930962) (not bm!735373) (not b!7930601) (not b!7931246) (not b!7930546) (not b!7931342) (not b!7931429) (not b!7930765) (not b!7930752) (not d!2370379) (not b!7930512) (not d!2370055) (not b!7930498) (not d!2370087) (not b!7930988) (not b!7930467) (not b!7930712) (not b!7931136) (not b!7930536) (not b!7930794) (not b!7931064) (not b!7930452) (not d!2370559) (not b!7930648) (not b!7930950) (not d!2370361) (not b!7931130) (not b!7930756) (not d!2370567) (not b!7930882) (not b!7931378) (not d!2370289) (not b!7931328) (not b!7930562) (not b!7930983) (not b!7931110) (not b!7930872) (not b!7930518) (not b!7930626) (not b!7931300) (not b!7930777) (not b!7930481) (not b!7931267) (not b!7931186) (not b!7931085) (not b!7931310) (not b!7931242) (not d!2370119) (not d!2370181) (not b!7930605) (not b!7931423) (not b!7930748) (not b!7931351) (not d!2370351) (not d!2370377) (not b!7931333) (not b!7931113) (not b!7931020) (not d!2370233) (not b!7931117) (not d!2370511) (not b!7930813) (not d!2370219) (not b!7930929) (not b!7931326) (not b!7931393) (not b!7930628) (not b!7931182) (not b!7930700) (not d!2370587) (not b!7930857) (not b!7930873) (not b!7931057) (not b!7930677) (not d!2370543) (not d!2370451) (not b!7931144) (not b!7930660) (not b!7931219) (not b!7930494) (not d!2369893) (not b!7931128) (not b!7930532) (not b!7931239) (not b!7931099) (not b!7931125) (not b!7931207) (not d!2370631) (not b!7931275) (not b!7931068) (not b!7930931) (not b!7931434) (not d!2370305) (not b!7931012) (not b!7930696) (not b!7930544) (not b!7931088) (not b!7930973) (not b!7930742) (not b!7930618) (not b!7931036) (not b!7930894) (not b!7931349) (not d!2370221) (not b!7931415) (not b!7931105) (not d!2370227) (not d!2370099) (not d!2369959) (not b!7930835) (not b!7930563) (not bm!735380) (not b!7930663) (not d!2370553) (not b!7930964) (not b!7931146) (not b!7931158) (not d!2370263) (not b!7930521) (not b!7930702) (not b!7930963) (not b!7930874) (not b!7930785) (not b!7930921) (not b!7930650) (not d!2370207) (not bm!735378) (not d!2370111) (not b!7931336) (not b!7931409) (not b!7930673) (not b!7930548) (not b!7930496) (not b!7930585) (not b!7931400) (not b!7931226) (not b!7931021) (not b!7930691) (not d!2370557) (not b!7931258) (not d!2370399) (not b!7930594) (not b!7930856) (not b!7930608) (not b!7931369) (not b!7931420) (not b!7930622) (not b!7930887) (not b!7931063) (not d!2370513) (not d!2370545) (not b!7930572) (not b!7931048) (not b!7930944) (not b!7930801) (not b!7931037) (not b!7931100) (not b!7931061) (not b!7930586) (not b!7930989) (not b!7930755) (not bm!735385) (not d!2370077) (not b!7930734) (not b!7930508) (not b!7931152) (not b!7931413) (not b!7931059) (not b!7931220) (not b!7931075) (not b!7930583) (not b!7931298) (not b!7930746) (not b!7930948) (not b!7930632) (not b!7931362) (not bm!735389) (not d!2370503) (not b!7930844) (not b!7930863) (not b!7931196) (not b!7930640) (not b!7930895) (not b!7930918) (not d!2370089) (not b!7930920) (not b!7930888) (not b!7931023) (not b!7931436) (not d!2370057) (not d!2370633) (not b!7931172) (not b!7930642) (not b!7930861) (not b!7930843) (not b!7930516) (not d!2370533) (not b!7930970) (not d!2370497) (not b!7931206) (not d!2370323) (not b!7931312) (not b!7930787) (not b!7931371) (not b!7930803) (not b!7931424) (not b!7930975) (not b!7931009) (not b!7930815) (not b!7931382) (not b!7930617) (not b!7930768) (not d!2370277) (not b!7930952) (not b!7930465) (not b!7931215) (not d!2370421) (not b!7931358) (not d!2369917) (not b!7931370) (not b!7930732) (not b!7931305) (not b!7930946) (not b!7930472) (not bm!735387) (not d!2370539) (not b!7930455) (not b!7931223) (not b!7930926) (not b!7930672) (not b!7930500) (not b!7930646) (not d!2370477) (not b!7931231) (not b!7930789) (not b!7931053) (not bm!735372) (not b!7931270) (not b!7930659) (not d!2370435) (not b!7931360) (not b!7930504) (not bm!735386) (not d!2370407) (not b!7931026) (not b!7931438) (not b!7930588) (not b!7930808) (not b!7930954) (not b!7931062) (not b!7931190) (not b!7931103) (not b!7931286) (not b!7931132) (not d!2370645) (not b!7930509) (not b!7931118) (not b!7931072) (not b!7931235) (not b!7931338) (not b!7931163) (not b!7931212) (not b!7931028) (not d!2369951) (not b!7930798) (not b!7930684) (not b!7930966) (not d!2370599) (not b!7931442) (not b!7930877) (not d!2370003) (not b!7931316) (not b!7931354) (not b!7931280) (not b!7930956) (not b!7930704) (not b!7931435) (not b!7930534) (not b!7930770) (not b!7930709) (not d!2370035) (not b!7931049) (not b!7931274) (not b!7930772) (not b!7931389) (not d!2370039) (not b!7931159) (not b!7930692) (not b!7930638) (not d!2370639) (not b!7931345) (not b!7931079) (not b!7930849) (not b!7931313) (not b!7930708) (not b!7930726) (not b!7930485) (not b!7930875) (not b!7930578) (not b!7931250) (not b!7931329) (not b!7930911) (not b!7930554) (not d!2370415) (not d!2370457) (not b!7931194) (not b!7931015) (not b!7930476) (not b!7931366) (not d!2370597) (not d!2370555) (not b!7930612) (not b!7931304) (not b!7930582) (not b!7931439) (not b!7930907) (not d!2370193) (not b!7931301) (not b!7930528) (not b!7931081) (not b!7931169) (not d!2370139) (not b!7930466) (not b!7930977) (not b!7930858) (not b!7931380) (not b!7930993) (not b!7931431) (not bm!735381) (not b!7930654) (not b!7930902) (not b!7930799) (not b!7930556) (not b!7930474) (not b!7930486) (not b!7931430) (not b!7930730) (not b!7931309) (not b!7930698) (not b!7931373) (not b!7930449) (not d!2370629) (not b!7931410) (not b!7930773) (not b!7931263) (not b!7931042) (not b!7931261) (not d!2370109) (not b!7930655) (not d!2370047) (not b!7930506) (not b!7930833) (not b!7931175) (not d!2370563) (not b!7930570) (not b!7930592) (not b!7931418) (not b!7931046) (not b!7930682) (not b!7930782) (not b!7930630) (not b!7931412) (not b!7930759) (not b!7930514) (not b!7931174) (not d!2370201) (not b!7931425) (not b!7931067) (not b!7930688) (not d!2370337) (not b!7931292) (not b!7931238) (not d!2370259) (not b!7931437) (not d!2370163) (not b!7930573) (not b!7931384) (not b!7931008) (not bm!735383) (not b!7930541) (not b!7930891) (not b!7931200) (not b!7931259) (not b!7930987) (not b!7930621) (not d!2370281) (not b!7930900) (not d!2370223) (not b!7931372) (not b!7931432) (not b!7931202) (not b!7930524) (not b!7931107) (not b!7930718) (not b!7930981) (not b!7931180) (not b!7930458) (not b!7930839) (not d!2370475) (not b!7931260) (not b!7930711) (not b!7930550) (not b!7931394) (not d!2370507) (not b!7930526) (not b!7931124) (not d!2370471) (not b!7931003) (not b!7931440) (not b!7931167) (not b!7931096) (not b!7931404) (not b!7930805) (not b!7931000) (not b!7931084) (not b!7931257) (not bm!735388) (not b!7931156) (not d!2370445) (not b!7930489) (not b!7931214) (not b!7930681) (not b!7930557) (not b!7930819) (not b!7931040) (not b!7931320) (not b!7931024) (not b!7930596) (not b!7931224) (not b!7931433) (not b!7930999) (not d!2370347) (not b!7930678) (not b!7930866) (not b!7930978) (not b!7930869) (not d!2370561) (not b!7930817) (not b!7930769) (not b!7930807) (not b!7931087) (not b!7930590) (not b!7930790) (not b!7930934) (not d!2370531) (not b!7930828) (not b!7930724) (not b!7930689) (not b!7930935) (not b!7931032) (not b!7931396) (not b!7931134) (not b!7930910) (not d!2370123) (not b!7931390) (not b!7931407) (not b!7930786) (not b!7930855) (not b!7930876) (not b!7930530) (not d!2370491) (not b!7930958) (not b!7931017) (not b!7930764) (not b!7931044) (not b!7931283) (not b!7931227) (not d!2369977) (not b!7930825) (not b!7931343) (not b!7931405) (not b!7931010) (not b!7931347) (not d!2369969) (not b!7931168) (not b!7930636) (not b!7930930) (not d!2369995) (not b!7930776) (not b!7930766) (not b!7930602) (not b!7930577) (not b!7930960) (not b!7931005) (not b!7931092) (not b!7930985) (not b!7930468) (not bm!735370) (not b!7930537) (not b!7931289) (not d!2370153) (not d!2370339) (not bm!735377) (not b!7930865) (not b!7930538) (not b!7930687) (not b!7930933) (not b!7931140) (not b!7930463) (not b!7931348) (not b!7930668) (not b!7931210) (not b!7930841) (not b!7930694) (not b!7931417) (not b!7931060) (not b!7931318) (not b!7930721) (not b!7931324) (not b!7931288) (not b!7931155) (not b!7931093) (not b!7931204) (not b!7930560) (not b!7930581) (not d!2370581) (not b!7931376) (not bm!735382) (not b!7931121) (not b!7930666) (not b!7931230) (not b!7931178) (not b!7930502) (not b!7930767) (not b!7931385) (not b!7930879) (not b!7931427) (not d!2370141) (not b!7930477) (not b!7930539) (not b!7930720) (not d!2370107) (not b!7930480) (not d!2370505) (not b!7930829) (not b!7930997) (not b!7931443) (not b!7930871) (not b!7931191) (not b!7931397) (not b!7930634) (not b!7930854) (not b!7931243) (not b!7931322) (not b!7930490) (not d!2370473) (not b!7931164) (not b!7930613) (not b!7931284) (not b!7930606) (not b!7930685) (not b!7930743) (not b!7930567) (not bm!735371) (not b!7931419) (not b!7930883) (not d!2370133) (not b!7930758) (not b!7931262) (not b!7930597) (not d!2370205) (not b!7931293) (not d!2369891) (not b!7930831) (not b!7930906) (not b!7930852) (not b!7930914) (not b!7931356) (not b!7930903) (not b!7930715) (not d!2370589) (not b!7930969) (not b!7931077) (not b!7930464) (not b!7930991) (not b!7931332) (not b!7931138) (not b!7931426) (not b!7931441) (not b!7931414) (not b!7930470) (not d!2370255) (not b!7931122) (not b!7930520) (not b!7930565) (not b!7930795) (not b!7930924) (not b!7930561) (not bm!735376) (not b!7930540) (not b!7931030) (not b!7931033) (not b!7930915) (not b!7931198) (not b!7931421) (not b!7931054) (not bm!735375) (not b!7931006) (not b!7930940) (not b!7931271) (not b!7931266) (not b!7930763) (not b!7930564) (not b!7930651) (not b!7931097))
(check-sat)
