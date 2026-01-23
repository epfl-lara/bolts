; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410844 () Bool)

(assert start!410844)

(declare-fun b!4277157 () Bool)

(declare-fun e!2655470 () Bool)

(declare-datatypes ((T!79948 0))(
  ( (T!79949 (val!15266 Int)) )
))
(declare-datatypes ((List!47475 0))(
  ( (Nil!47351) (Cons!47351 (h!52771 T!79948) (t!354038 List!47475)) )
))
(declare-fun acc!259 () List!47475)

(declare-datatypes ((IArray!28671 0))(
  ( (IArray!28672 (innerList!14393 List!47475)) )
))
(declare-datatypes ((Conc!14333 0))(
  ( (Node!14333 (left!35282 Conc!14333) (right!35612 Conc!14333) (csize!28896 Int) (cheight!14544 Int)) (Leaf!22155 (xs!17639 IArray!28671) (csize!28897 Int)) (Empty!14333) )
))
(declare-fun t!3602 () Conc!14333)

(declare-fun ++!12097 (List!47475 List!47475) List!47475)

(declare-fun list!17264 (Conc!14333) List!47475)

(assert (=> b!4277157 (= e!2655470 (not (= acc!259 (++!12097 (list!17264 t!3602) acc!259))))))

(declare-fun b!4277158 () Bool)

(declare-fun e!2655471 () Bool)

(declare-fun tp_is_empty!22941 () Bool)

(declare-fun tp!1308761 () Bool)

(assert (=> b!4277158 (= e!2655471 (and tp_is_empty!22941 tp!1308761))))

(declare-fun res!1756239 () Bool)

(assert (=> start!410844 (=> (not res!1756239) (not e!2655470))))

(get-info :version)

(assert (=> start!410844 (= res!1756239 ((_ is Empty!14333) t!3602))))

(assert (=> start!410844 e!2655470))

(declare-fun e!2655472 () Bool)

(declare-fun inv!62688 (Conc!14333) Bool)

(assert (=> start!410844 (and (inv!62688 t!3602) e!2655472)))

(assert (=> start!410844 e!2655471))

(declare-fun b!4277159 () Bool)

(declare-fun e!2655473 () Bool)

(declare-fun tp!1308759 () Bool)

(assert (=> b!4277159 (= e!2655473 tp!1308759)))

(declare-fun b!4277160 () Bool)

(declare-fun tp!1308760 () Bool)

(declare-fun tp!1308762 () Bool)

(assert (=> b!4277160 (= e!2655472 (and (inv!62688 (left!35282 t!3602)) tp!1308762 (inv!62688 (right!35612 t!3602)) tp!1308760))))

(declare-fun b!4277161 () Bool)

(declare-fun inv!62689 (IArray!28671) Bool)

(assert (=> b!4277161 (= e!2655472 (and (inv!62689 (xs!17639 t!3602)) e!2655473))))

(assert (= (and start!410844 res!1756239) b!4277157))

(assert (= (and start!410844 ((_ is Node!14333) t!3602)) b!4277160))

(assert (= b!4277161 b!4277159))

(assert (= (and start!410844 ((_ is Leaf!22155) t!3602)) b!4277161))

(assert (= (and start!410844 ((_ is Cons!47351) acc!259)) b!4277158))

(declare-fun m!4873209 () Bool)

(assert (=> b!4277157 m!4873209))

(assert (=> b!4277157 m!4873209))

(declare-fun m!4873211 () Bool)

(assert (=> b!4277157 m!4873211))

(declare-fun m!4873213 () Bool)

(assert (=> start!410844 m!4873213))

(declare-fun m!4873215 () Bool)

(assert (=> b!4277160 m!4873215))

(declare-fun m!4873217 () Bool)

(assert (=> b!4277160 m!4873217))

(declare-fun m!4873219 () Bool)

(assert (=> b!4277161 m!4873219))

(check-sat (not b!4277159) (not start!410844) (not b!4277161) (not b!4277157) (not b!4277160) (not b!4277158) tp_is_empty!22941)
(check-sat)
(get-model)

(declare-fun b!4277180 () Bool)

(declare-fun e!2655485 () List!47475)

(assert (=> b!4277180 (= e!2655485 (Cons!47351 (h!52771 (list!17264 t!3602)) (++!12097 (t!354038 (list!17264 t!3602)) acc!259)))))

(declare-fun d!1262666 () Bool)

(declare-fun e!2655484 () Bool)

(assert (=> d!1262666 e!2655484))

(declare-fun res!1756248 () Bool)

(assert (=> d!1262666 (=> (not res!1756248) (not e!2655484))))

(declare-fun lt!1513997 () List!47475)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7485 (List!47475) (InoxSet T!79948))

(assert (=> d!1262666 (= res!1756248 (= (content!7485 lt!1513997) ((_ map or) (content!7485 (list!17264 t!3602)) (content!7485 acc!259))))))

(assert (=> d!1262666 (= lt!1513997 e!2655485)))

(declare-fun c!728456 () Bool)

(assert (=> d!1262666 (= c!728456 ((_ is Nil!47351) (list!17264 t!3602)))))

(assert (=> d!1262666 (= (++!12097 (list!17264 t!3602) acc!259) lt!1513997)))

(declare-fun b!4277179 () Bool)

(assert (=> b!4277179 (= e!2655485 acc!259)))

(declare-fun b!4277182 () Bool)

(assert (=> b!4277182 (= e!2655484 (or (not (= acc!259 Nil!47351)) (= lt!1513997 (list!17264 t!3602))))))

(declare-fun b!4277181 () Bool)

(declare-fun res!1756247 () Bool)

(assert (=> b!4277181 (=> (not res!1756247) (not e!2655484))))

(declare-fun size!34660 (List!47475) Int)

(assert (=> b!4277181 (= res!1756247 (= (size!34660 lt!1513997) (+ (size!34660 (list!17264 t!3602)) (size!34660 acc!259))))))

(assert (= (and d!1262666 c!728456) b!4277179))

(assert (= (and d!1262666 (not c!728456)) b!4277180))

(assert (= (and d!1262666 res!1756248) b!4277181))

(assert (= (and b!4277181 res!1756247) b!4277182))

(declare-fun m!4873225 () Bool)

(assert (=> b!4277180 m!4873225))

(declare-fun m!4873227 () Bool)

(assert (=> d!1262666 m!4873227))

(assert (=> d!1262666 m!4873209))

(declare-fun m!4873229 () Bool)

(assert (=> d!1262666 m!4873229))

(declare-fun m!4873231 () Bool)

(assert (=> d!1262666 m!4873231))

(declare-fun m!4873233 () Bool)

(assert (=> b!4277181 m!4873233))

(assert (=> b!4277181 m!4873209))

(declare-fun m!4873235 () Bool)

(assert (=> b!4277181 m!4873235))

(declare-fun m!4873237 () Bool)

(assert (=> b!4277181 m!4873237))

(assert (=> b!4277157 d!1262666))

(declare-fun b!4277202 () Bool)

(declare-fun e!2655495 () List!47475)

(assert (=> b!4277202 (= e!2655495 (++!12097 (list!17264 (left!35282 t!3602)) (list!17264 (right!35612 t!3602))))))

(declare-fun b!4277201 () Bool)

(declare-fun list!17265 (IArray!28671) List!47475)

(assert (=> b!4277201 (= e!2655495 (list!17265 (xs!17639 t!3602)))))

(declare-fun b!4277200 () Bool)

(declare-fun e!2655494 () List!47475)

(assert (=> b!4277200 (= e!2655494 e!2655495)))

(declare-fun c!728464 () Bool)

(assert (=> b!4277200 (= c!728464 ((_ is Leaf!22155) t!3602))))

(declare-fun b!4277199 () Bool)

(assert (=> b!4277199 (= e!2655494 Nil!47351)))

(declare-fun d!1262672 () Bool)

(declare-fun c!728463 () Bool)

(assert (=> d!1262672 (= c!728463 ((_ is Empty!14333) t!3602))))

(assert (=> d!1262672 (= (list!17264 t!3602) e!2655494)))

(assert (= (and d!1262672 c!728463) b!4277199))

(assert (= (and d!1262672 (not c!728463)) b!4277200))

(assert (= (and b!4277200 c!728464) b!4277201))

(assert (= (and b!4277200 (not c!728464)) b!4277202))

(declare-fun m!4873239 () Bool)

(assert (=> b!4277202 m!4873239))

(declare-fun m!4873241 () Bool)

(assert (=> b!4277202 m!4873241))

(assert (=> b!4277202 m!4873239))

(assert (=> b!4277202 m!4873241))

(declare-fun m!4873243 () Bool)

(assert (=> b!4277202 m!4873243))

(declare-fun m!4873245 () Bool)

(assert (=> b!4277201 m!4873245))

(assert (=> b!4277157 d!1262672))

(declare-fun d!1262674 () Bool)

(assert (=> d!1262674 (= (inv!62689 (xs!17639 t!3602)) (<= (size!34660 (innerList!14393 (xs!17639 t!3602))) 2147483647))))

(declare-fun bs!602577 () Bool)

(assert (= bs!602577 d!1262674))

(declare-fun m!4873261 () Bool)

(assert (=> bs!602577 m!4873261))

(assert (=> b!4277161 d!1262674))

(declare-fun d!1262678 () Bool)

(declare-fun c!728474 () Bool)

(assert (=> d!1262678 (= c!728474 ((_ is Node!14333) (left!35282 t!3602)))))

(declare-fun e!2655508 () Bool)

(assert (=> d!1262678 (= (inv!62688 (left!35282 t!3602)) e!2655508)))

(declare-fun b!4277225 () Bool)

(declare-fun inv!62692 (Conc!14333) Bool)

(assert (=> b!4277225 (= e!2655508 (inv!62692 (left!35282 t!3602)))))

(declare-fun b!4277226 () Bool)

(declare-fun e!2655509 () Bool)

(assert (=> b!4277226 (= e!2655508 e!2655509)))

(declare-fun res!1756257 () Bool)

(assert (=> b!4277226 (= res!1756257 (not ((_ is Leaf!22155) (left!35282 t!3602))))))

(assert (=> b!4277226 (=> res!1756257 e!2655509)))

(declare-fun b!4277227 () Bool)

(declare-fun inv!62693 (Conc!14333) Bool)

(assert (=> b!4277227 (= e!2655509 (inv!62693 (left!35282 t!3602)))))

(assert (= (and d!1262678 c!728474) b!4277225))

(assert (= (and d!1262678 (not c!728474)) b!4277226))

(assert (= (and b!4277226 (not res!1756257)) b!4277227))

(declare-fun m!4873271 () Bool)

(assert (=> b!4277225 m!4873271))

(declare-fun m!4873273 () Bool)

(assert (=> b!4277227 m!4873273))

(assert (=> b!4277160 d!1262678))

(declare-fun d!1262682 () Bool)

(declare-fun c!728475 () Bool)

(assert (=> d!1262682 (= c!728475 ((_ is Node!14333) (right!35612 t!3602)))))

(declare-fun e!2655510 () Bool)

(assert (=> d!1262682 (= (inv!62688 (right!35612 t!3602)) e!2655510)))

(declare-fun b!4277228 () Bool)

(assert (=> b!4277228 (= e!2655510 (inv!62692 (right!35612 t!3602)))))

(declare-fun b!4277229 () Bool)

(declare-fun e!2655511 () Bool)

(assert (=> b!4277229 (= e!2655510 e!2655511)))

(declare-fun res!1756258 () Bool)

(assert (=> b!4277229 (= res!1756258 (not ((_ is Leaf!22155) (right!35612 t!3602))))))

(assert (=> b!4277229 (=> res!1756258 e!2655511)))

(declare-fun b!4277230 () Bool)

(assert (=> b!4277230 (= e!2655511 (inv!62693 (right!35612 t!3602)))))

(assert (= (and d!1262682 c!728475) b!4277228))

(assert (= (and d!1262682 (not c!728475)) b!4277229))

(assert (= (and b!4277229 (not res!1756258)) b!4277230))

(declare-fun m!4873277 () Bool)

(assert (=> b!4277228 m!4873277))

(declare-fun m!4873279 () Bool)

(assert (=> b!4277230 m!4873279))

(assert (=> b!4277160 d!1262682))

(declare-fun d!1262686 () Bool)

(declare-fun c!728477 () Bool)

(assert (=> d!1262686 (= c!728477 ((_ is Node!14333) t!3602))))

(declare-fun e!2655514 () Bool)

(assert (=> d!1262686 (= (inv!62688 t!3602) e!2655514)))

(declare-fun b!4277234 () Bool)

(assert (=> b!4277234 (= e!2655514 (inv!62692 t!3602))))

(declare-fun b!4277235 () Bool)

(declare-fun e!2655515 () Bool)

(assert (=> b!4277235 (= e!2655514 e!2655515)))

(declare-fun res!1756260 () Bool)

(assert (=> b!4277235 (= res!1756260 (not ((_ is Leaf!22155) t!3602)))))

(assert (=> b!4277235 (=> res!1756260 e!2655515)))

(declare-fun b!4277236 () Bool)

(assert (=> b!4277236 (= e!2655515 (inv!62693 t!3602))))

(assert (= (and d!1262686 c!728477) b!4277234))

(assert (= (and d!1262686 (not c!728477)) b!4277235))

(assert (= (and b!4277235 (not res!1756260)) b!4277236))

(declare-fun m!4873281 () Bool)

(assert (=> b!4277234 m!4873281))

(declare-fun m!4873285 () Bool)

(assert (=> b!4277236 m!4873285))

(assert (=> start!410844 d!1262686))

(declare-fun tp!1308781 () Bool)

(declare-fun tp!1308779 () Bool)

(declare-fun b!4277262 () Bool)

(declare-fun e!2655530 () Bool)

(assert (=> b!4277262 (= e!2655530 (and (inv!62688 (left!35282 (left!35282 t!3602))) tp!1308781 (inv!62688 (right!35612 (left!35282 t!3602))) tp!1308779))))

(declare-fun b!4277264 () Bool)

(declare-fun e!2655531 () Bool)

(declare-fun tp!1308780 () Bool)

(assert (=> b!4277264 (= e!2655531 tp!1308780)))

(declare-fun b!4277263 () Bool)

(assert (=> b!4277263 (= e!2655530 (and (inv!62689 (xs!17639 (left!35282 t!3602))) e!2655531))))

(assert (=> b!4277160 (= tp!1308762 (and (inv!62688 (left!35282 t!3602)) e!2655530))))

(assert (= (and b!4277160 ((_ is Node!14333) (left!35282 t!3602))) b!4277262))

(assert (= b!4277263 b!4277264))

(assert (= (and b!4277160 ((_ is Leaf!22155) (left!35282 t!3602))) b!4277263))

(declare-fun m!4873293 () Bool)

(assert (=> b!4277262 m!4873293))

(declare-fun m!4873295 () Bool)

(assert (=> b!4277262 m!4873295))

(declare-fun m!4873297 () Bool)

(assert (=> b!4277263 m!4873297))

(assert (=> b!4277160 m!4873215))

(declare-fun tp!1308784 () Bool)

(declare-fun e!2655532 () Bool)

(declare-fun tp!1308782 () Bool)

(declare-fun b!4277265 () Bool)

(assert (=> b!4277265 (= e!2655532 (and (inv!62688 (left!35282 (right!35612 t!3602))) tp!1308784 (inv!62688 (right!35612 (right!35612 t!3602))) tp!1308782))))

(declare-fun b!4277267 () Bool)

(declare-fun e!2655533 () Bool)

(declare-fun tp!1308783 () Bool)

(assert (=> b!4277267 (= e!2655533 tp!1308783)))

(declare-fun b!4277266 () Bool)

(assert (=> b!4277266 (= e!2655532 (and (inv!62689 (xs!17639 (right!35612 t!3602))) e!2655533))))

(assert (=> b!4277160 (= tp!1308760 (and (inv!62688 (right!35612 t!3602)) e!2655532))))

(assert (= (and b!4277160 ((_ is Node!14333) (right!35612 t!3602))) b!4277265))

(assert (= b!4277266 b!4277267))

(assert (= (and b!4277160 ((_ is Leaf!22155) (right!35612 t!3602))) b!4277266))

(declare-fun m!4873299 () Bool)

(assert (=> b!4277265 m!4873299))

(declare-fun m!4873301 () Bool)

(assert (=> b!4277265 m!4873301))

(declare-fun m!4873303 () Bool)

(assert (=> b!4277266 m!4873303))

(assert (=> b!4277160 m!4873217))

(declare-fun b!4277275 () Bool)

(declare-fun e!2655538 () Bool)

(declare-fun tp!1308790 () Bool)

(assert (=> b!4277275 (= e!2655538 (and tp_is_empty!22941 tp!1308790))))

(assert (=> b!4277159 (= tp!1308759 e!2655538)))

(assert (= (and b!4277159 ((_ is Cons!47351) (innerList!14393 (xs!17639 t!3602)))) b!4277275))

(declare-fun b!4277276 () Bool)

(declare-fun e!2655539 () Bool)

(declare-fun tp!1308792 () Bool)

(assert (=> b!4277276 (= e!2655539 (and tp_is_empty!22941 tp!1308792))))

(assert (=> b!4277158 (= tp!1308761 e!2655539)))

(assert (= (and b!4277158 ((_ is Cons!47351) (t!354038 acc!259))) b!4277276))

(check-sat (not b!4277267) (not b!4277264) (not b!4277228) (not b!4277225) (not d!1262674) (not b!4277230) (not b!4277181) (not b!4277266) (not b!4277263) (not b!4277201) (not b!4277160) (not b!4277262) (not b!4277227) (not b!4277275) tp_is_empty!22941 (not d!1262666) (not b!4277236) (not b!4277276) (not b!4277180) (not b!4277202) (not b!4277234) (not b!4277265))
(check-sat)
