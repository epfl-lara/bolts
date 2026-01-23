; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534306 () Bool)

(assert start!534306)

(declare-fun b!5051145 () Bool)

(declare-fun e!3153609 () Bool)

(declare-fun tp_is_empty!36975 () Bool)

(declare-fun tp!1412308 () Bool)

(assert (=> b!5051145 (= e!3153609 (and tp_is_empty!36975 tp!1412308))))

(declare-fun b!5051146 () Bool)

(declare-datatypes ((T!104852 0))(
  ( (T!104853 (val!23610 Int)) )
))
(declare-datatypes ((List!58520 0))(
  ( (Nil!58396) (Cons!58396 (h!64844 T!104852) (t!371159 List!58520)) )
))
(declare-fun r!2041 () List!58520)

(declare-fun l!2757 () List!58520)

(declare-datatypes ((tuple2!63282 0))(
  ( (tuple2!63283 (_1!34944 List!58520) (_2!34944 List!58520)) )
))
(declare-fun lt!2086662 () tuple2!63282)

(declare-fun e!3153608 () Bool)

(assert (=> b!5051146 (= e!3153608 (not (= lt!2086662 (tuple2!63283 l!2757 r!2041))))))

(declare-fun b!5051147 () Bool)

(declare-fun e!3153611 () Bool)

(declare-fun e!3153612 () Bool)

(assert (=> b!5051147 (= e!3153611 e!3153612)))

(declare-fun res!2151120 () Bool)

(assert (=> b!5051147 (=> (not res!2151120) (not e!3153612))))

(declare-fun lt!2086661 () Int)

(declare-fun i!652 () Int)

(declare-fun size!39019 (List!58520) Int)

(assert (=> b!5051147 (= res!2151120 (<= i!652 (+ lt!2086661 (size!39019 r!2041))))))

(assert (=> b!5051147 (= lt!2086661 (size!39019 l!2757))))

(declare-fun b!5051148 () Bool)

(assert (=> b!5051148 (= e!3153612 e!3153608)))

(declare-fun c!866401 () Bool)

(assert (=> b!5051148 (= c!866401 (= lt!2086661 i!652))))

(declare-fun splitAtIndex!227 (List!58520 Int) tuple2!63282)

(declare-fun ++!12759 (List!58520 List!58520) List!58520)

(assert (=> b!5051148 (= lt!2086662 (splitAtIndex!227 (++!12759 l!2757 r!2041) i!652))))

(declare-fun b!5051149 () Bool)

(declare-fun e!3153607 () tuple2!63282)

(assert (=> b!5051149 (= e!3153608 (not (= lt!2086662 e!3153607)))))

(declare-fun c!866400 () Bool)

(assert (=> b!5051149 (= c!866400 (< i!652 lt!2086661))))

(declare-fun b!5051150 () Bool)

(declare-fun lt!2086660 () tuple2!63282)

(declare-fun call!351965 () tuple2!63282)

(assert (=> b!5051150 (= lt!2086660 call!351965)))

(declare-fun call!351964 () List!58520)

(assert (=> b!5051150 (= e!3153607 (tuple2!63283 (_1!34944 lt!2086660) call!351964))))

(declare-fun res!2151121 () Bool)

(assert (=> start!534306 (=> (not res!2151121) (not e!3153611))))

(assert (=> start!534306 (= res!2151121 (<= 0 i!652))))

(assert (=> start!534306 e!3153611))

(assert (=> start!534306 true))

(declare-fun e!3153610 () Bool)

(assert (=> start!534306 e!3153610))

(assert (=> start!534306 e!3153609))

(declare-fun b!5051151 () Bool)

(declare-fun res!2151119 () Bool)

(assert (=> b!5051151 (=> (not res!2151119) (not e!3153612))))

(assert (=> b!5051151 (= res!2151119 (or (= l!2757 Nil!58396) (= r!2041 Nil!58396)))))

(declare-fun b!5051152 () Bool)

(declare-fun tp!1412309 () Bool)

(assert (=> b!5051152 (= e!3153610 (and tp_is_empty!36975 tp!1412309))))

(declare-fun bm!351959 () Bool)

(declare-fun lt!2086663 () tuple2!63282)

(assert (=> bm!351959 (= call!351964 (++!12759 (ite c!866400 (_2!34944 lt!2086660) l!2757) (ite c!866400 r!2041 (_1!34944 lt!2086663))))))

(declare-fun b!5051153 () Bool)

(assert (=> b!5051153 (= lt!2086663 call!351965)))

(assert (=> b!5051153 (= e!3153607 (tuple2!63283 call!351964 (_2!34944 lt!2086663)))))

(declare-fun bm!351960 () Bool)

(assert (=> bm!351960 (= call!351965 (splitAtIndex!227 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661))))))

(assert (= (and start!534306 res!2151121) b!5051147))

(assert (= (and b!5051147 res!2151120) b!5051151))

(assert (= (and b!5051151 res!2151119) b!5051148))

(assert (= (and b!5051148 c!866401) b!5051146))

(assert (= (and b!5051148 (not c!866401)) b!5051149))

(assert (= (and b!5051149 c!866400) b!5051150))

(assert (= (and b!5051149 (not c!866400)) b!5051153))

(assert (= (or b!5051150 b!5051153) bm!351960))

(assert (= (or b!5051150 b!5051153) bm!351959))

(get-info :version)

(assert (= (and start!534306 ((_ is Cons!58396) l!2757)) b!5051152))

(assert (= (and start!534306 ((_ is Cons!58396) r!2041)) b!5051145))

(declare-fun m!6085150 () Bool)

(assert (=> b!5051147 m!6085150))

(declare-fun m!6085152 () Bool)

(assert (=> b!5051147 m!6085152))

(declare-fun m!6085154 () Bool)

(assert (=> b!5051148 m!6085154))

(assert (=> b!5051148 m!6085154))

(declare-fun m!6085156 () Bool)

(assert (=> b!5051148 m!6085156))

(declare-fun m!6085158 () Bool)

(assert (=> bm!351959 m!6085158))

(declare-fun m!6085160 () Bool)

(assert (=> bm!351960 m!6085160))

(check-sat (not b!5051148) (not b!5051145) (not bm!351959) tp_is_empty!36975 (not bm!351960) (not b!5051147) (not b!5051152))
(check-sat)
(get-model)

(declare-fun b!5051178 () Bool)

(declare-fun res!2151131 () Bool)

(declare-fun e!3153626 () Bool)

(assert (=> b!5051178 (=> (not res!2151131) (not e!3153626))))

(declare-fun lt!2086672 () tuple2!63282)

(declare-fun take!887 (List!58520 Int) List!58520)

(assert (=> b!5051178 (= res!2151131 (= (_1!34944 lt!2086672) (take!887 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661)))))))

(declare-fun d!1625144 () Bool)

(assert (=> d!1625144 e!3153626))

(declare-fun res!2151130 () Bool)

(assert (=> d!1625144 (=> (not res!2151130) (not e!3153626))))

(assert (=> d!1625144 (= res!2151130 (= (++!12759 (_1!34944 lt!2086672) (_2!34944 lt!2086672)) (ite c!866400 l!2757 r!2041)))))

(declare-fun e!3153625 () tuple2!63282)

(assert (=> d!1625144 (= lt!2086672 e!3153625)))

(declare-fun c!866410 () Bool)

(assert (=> d!1625144 (= c!866410 ((_ is Nil!58396) (ite c!866400 l!2757 r!2041)))))

(assert (=> d!1625144 (= (splitAtIndex!227 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661))) lt!2086672)))

(declare-fun b!5051179 () Bool)

(declare-fun drop!2685 (List!58520 Int) List!58520)

(assert (=> b!5051179 (= e!3153626 (= (_2!34944 lt!2086672) (drop!2685 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661)))))))

(declare-fun b!5051180 () Bool)

(assert (=> b!5051180 (= e!3153625 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun b!5051181 () Bool)

(declare-fun lt!2086673 () tuple2!63282)

(assert (=> b!5051181 (= lt!2086673 (splitAtIndex!227 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)))))

(declare-fun e!3153627 () tuple2!63282)

(assert (=> b!5051181 (= e!3153627 (tuple2!63283 (Cons!58396 (h!64844 (ite c!866400 l!2757 r!2041)) (_1!34944 lt!2086673)) (_2!34944 lt!2086673)))))

(declare-fun b!5051182 () Bool)

(assert (=> b!5051182 (= e!3153625 e!3153627)))

(declare-fun c!866411 () Bool)

(assert (=> b!5051182 (= c!866411 (<= (ite c!866400 i!652 (- i!652 lt!2086661)) 0))))

(declare-fun b!5051183 () Bool)

(assert (=> b!5051183 (= e!3153627 (tuple2!63283 Nil!58396 (ite c!866400 l!2757 r!2041)))))

(assert (= (and d!1625144 c!866410) b!5051180))

(assert (= (and d!1625144 (not c!866410)) b!5051182))

(assert (= (and b!5051182 c!866411) b!5051183))

(assert (= (and b!5051182 (not c!866411)) b!5051181))

(assert (= (and d!1625144 res!2151130) b!5051178))

(assert (= (and b!5051178 res!2151131) b!5051179))

(declare-fun m!6085162 () Bool)

(assert (=> b!5051178 m!6085162))

(declare-fun m!6085164 () Bool)

(assert (=> d!1625144 m!6085164))

(declare-fun m!6085166 () Bool)

(assert (=> b!5051179 m!6085166))

(declare-fun m!6085168 () Bool)

(assert (=> b!5051181 m!6085168))

(assert (=> bm!351960 d!1625144))

(declare-fun lt!2086680 () List!58520)

(declare-fun b!5051209 () Bool)

(declare-fun e!3153639 () Bool)

(assert (=> b!5051209 (= e!3153639 (or (not (= (ite c!866400 r!2041 (_1!34944 lt!2086663)) Nil!58396)) (= lt!2086680 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))

(declare-fun b!5051207 () Bool)

(declare-fun e!3153640 () List!58520)

(assert (=> b!5051207 (= e!3153640 (Cons!58396 (h!64844 (ite c!866400 (_2!34944 lt!2086660) l!2757)) (++!12759 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)) (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(declare-fun b!5051206 () Bool)

(assert (=> b!5051206 (= e!3153640 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))

(declare-fun b!5051208 () Bool)

(declare-fun res!2151143 () Bool)

(assert (=> b!5051208 (=> (not res!2151143) (not e!3153639))))

(assert (=> b!5051208 (= res!2151143 (= (size!39019 lt!2086680) (+ (size!39019 (ite c!866400 (_2!34944 lt!2086660) l!2757)) (size!39019 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(declare-fun d!1625148 () Bool)

(assert (=> d!1625148 e!3153639))

(declare-fun res!2151142 () Bool)

(assert (=> d!1625148 (=> (not res!2151142) (not e!3153639))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10398 (List!58520) (InoxSet T!104852))

(assert (=> d!1625148 (= res!2151142 (= (content!10398 lt!2086680) ((_ map or) (content!10398 (ite c!866400 (_2!34944 lt!2086660) l!2757)) (content!10398 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (=> d!1625148 (= lt!2086680 e!3153640)))

(declare-fun c!866418 () Bool)

(assert (=> d!1625148 (= c!866418 ((_ is Nil!58396) (ite c!866400 (_2!34944 lt!2086660) l!2757)))))

(assert (=> d!1625148 (= (++!12759 (ite c!866400 (_2!34944 lt!2086660) l!2757) (ite c!866400 r!2041 (_1!34944 lt!2086663))) lt!2086680)))

(assert (= (and d!1625148 c!866418) b!5051206))

(assert (= (and d!1625148 (not c!866418)) b!5051207))

(assert (= (and d!1625148 res!2151142) b!5051208))

(assert (= (and b!5051208 res!2151143) b!5051209))

(declare-fun m!6085178 () Bool)

(assert (=> b!5051207 m!6085178))

(declare-fun m!6085180 () Bool)

(assert (=> b!5051208 m!6085180))

(declare-fun m!6085182 () Bool)

(assert (=> b!5051208 m!6085182))

(declare-fun m!6085184 () Bool)

(assert (=> b!5051208 m!6085184))

(declare-fun m!6085186 () Bool)

(assert (=> d!1625148 m!6085186))

(declare-fun m!6085188 () Bool)

(assert (=> d!1625148 m!6085188))

(declare-fun m!6085192 () Bool)

(assert (=> d!1625148 m!6085192))

(assert (=> bm!351959 d!1625148))

(declare-fun b!5051214 () Bool)

(declare-fun res!2151147 () Bool)

(declare-fun e!3153644 () Bool)

(assert (=> b!5051214 (=> (not res!2151147) (not e!3153644))))

(declare-fun lt!2086682 () tuple2!63282)

(assert (=> b!5051214 (= res!2151147 (= (_1!34944 lt!2086682) (take!887 (++!12759 l!2757 r!2041) i!652)))))

(declare-fun d!1625152 () Bool)

(assert (=> d!1625152 e!3153644))

(declare-fun res!2151146 () Bool)

(assert (=> d!1625152 (=> (not res!2151146) (not e!3153644))))

(assert (=> d!1625152 (= res!2151146 (= (++!12759 (_1!34944 lt!2086682) (_2!34944 lt!2086682)) (++!12759 l!2757 r!2041)))))

(declare-fun e!3153643 () tuple2!63282)

(assert (=> d!1625152 (= lt!2086682 e!3153643)))

(declare-fun c!866420 () Bool)

(assert (=> d!1625152 (= c!866420 ((_ is Nil!58396) (++!12759 l!2757 r!2041)))))

(assert (=> d!1625152 (= (splitAtIndex!227 (++!12759 l!2757 r!2041) i!652) lt!2086682)))

(declare-fun b!5051215 () Bool)

(assert (=> b!5051215 (= e!3153644 (= (_2!34944 lt!2086682) (drop!2685 (++!12759 l!2757 r!2041) i!652)))))

(declare-fun b!5051216 () Bool)

(assert (=> b!5051216 (= e!3153643 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun lt!2086683 () tuple2!63282)

(declare-fun b!5051217 () Bool)

(assert (=> b!5051217 (= lt!2086683 (splitAtIndex!227 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1)))))

(declare-fun e!3153645 () tuple2!63282)

(assert (=> b!5051217 (= e!3153645 (tuple2!63283 (Cons!58396 (h!64844 (++!12759 l!2757 r!2041)) (_1!34944 lt!2086683)) (_2!34944 lt!2086683)))))

(declare-fun b!5051218 () Bool)

(assert (=> b!5051218 (= e!3153643 e!3153645)))

(declare-fun c!866421 () Bool)

(assert (=> b!5051218 (= c!866421 (<= i!652 0))))

(declare-fun b!5051219 () Bool)

(assert (=> b!5051219 (= e!3153645 (tuple2!63283 Nil!58396 (++!12759 l!2757 r!2041)))))

(assert (= (and d!1625152 c!866420) b!5051216))

(assert (= (and d!1625152 (not c!866420)) b!5051218))

(assert (= (and b!5051218 c!866421) b!5051219))

(assert (= (and b!5051218 (not c!866421)) b!5051217))

(assert (= (and d!1625152 res!2151146) b!5051214))

(assert (= (and b!5051214 res!2151147) b!5051215))

(assert (=> b!5051214 m!6085154))

(declare-fun m!6085204 () Bool)

(assert (=> b!5051214 m!6085204))

(declare-fun m!6085210 () Bool)

(assert (=> d!1625152 m!6085210))

(assert (=> b!5051215 m!6085154))

(declare-fun m!6085214 () Bool)

(assert (=> b!5051215 m!6085214))

(declare-fun m!6085220 () Bool)

(assert (=> b!5051217 m!6085220))

(assert (=> b!5051148 d!1625152))

(declare-fun b!5051227 () Bool)

(declare-fun e!3153648 () Bool)

(declare-fun lt!2086685 () List!58520)

(assert (=> b!5051227 (= e!3153648 (or (not (= r!2041 Nil!58396)) (= lt!2086685 l!2757)))))

(declare-fun b!5051225 () Bool)

(declare-fun e!3153649 () List!58520)

(assert (=> b!5051225 (= e!3153649 (Cons!58396 (h!64844 l!2757) (++!12759 (t!371159 l!2757) r!2041)))))

(declare-fun b!5051224 () Bool)

(assert (=> b!5051224 (= e!3153649 r!2041)))

(declare-fun b!5051226 () Bool)

(declare-fun res!2151151 () Bool)

(assert (=> b!5051226 (=> (not res!2151151) (not e!3153648))))

(assert (=> b!5051226 (= res!2151151 (= (size!39019 lt!2086685) (+ (size!39019 l!2757) (size!39019 r!2041))))))

(declare-fun d!1625156 () Bool)

(assert (=> d!1625156 e!3153648))

(declare-fun res!2151150 () Bool)

(assert (=> d!1625156 (=> (not res!2151150) (not e!3153648))))

(assert (=> d!1625156 (= res!2151150 (= (content!10398 lt!2086685) ((_ map or) (content!10398 l!2757) (content!10398 r!2041))))))

(assert (=> d!1625156 (= lt!2086685 e!3153649)))

(declare-fun c!866423 () Bool)

(assert (=> d!1625156 (= c!866423 ((_ is Nil!58396) l!2757))))

(assert (=> d!1625156 (= (++!12759 l!2757 r!2041) lt!2086685)))

(assert (= (and d!1625156 c!866423) b!5051224))

(assert (= (and d!1625156 (not c!866423)) b!5051225))

(assert (= (and d!1625156 res!2151150) b!5051226))

(assert (= (and b!5051226 res!2151151) b!5051227))

(declare-fun m!6085224 () Bool)

(assert (=> b!5051225 m!6085224))

(declare-fun m!6085226 () Bool)

(assert (=> b!5051226 m!6085226))

(assert (=> b!5051226 m!6085152))

(assert (=> b!5051226 m!6085150))

(declare-fun m!6085228 () Bool)

(assert (=> d!1625156 m!6085228))

(declare-fun m!6085230 () Bool)

(assert (=> d!1625156 m!6085230))

(declare-fun m!6085232 () Bool)

(assert (=> d!1625156 m!6085232))

(assert (=> b!5051148 d!1625156))

(declare-fun d!1625160 () Bool)

(declare-fun lt!2086692 () Int)

(assert (=> d!1625160 (>= lt!2086692 0)))

(declare-fun e!3153657 () Int)

(assert (=> d!1625160 (= lt!2086692 e!3153657)))

(declare-fun c!866430 () Bool)

(assert (=> d!1625160 (= c!866430 ((_ is Nil!58396) r!2041))))

(assert (=> d!1625160 (= (size!39019 r!2041) lt!2086692)))

(declare-fun b!5051242 () Bool)

(assert (=> b!5051242 (= e!3153657 0)))

(declare-fun b!5051243 () Bool)

(assert (=> b!5051243 (= e!3153657 (+ 1 (size!39019 (t!371159 r!2041))))))

(assert (= (and d!1625160 c!866430) b!5051242))

(assert (= (and d!1625160 (not c!866430)) b!5051243))

(declare-fun m!6085242 () Bool)

(assert (=> b!5051243 m!6085242))

(assert (=> b!5051147 d!1625160))

(declare-fun d!1625164 () Bool)

(declare-fun lt!2086694 () Int)

(assert (=> d!1625164 (>= lt!2086694 0)))

(declare-fun e!3153659 () Int)

(assert (=> d!1625164 (= lt!2086694 e!3153659)))

(declare-fun c!866432 () Bool)

(assert (=> d!1625164 (= c!866432 ((_ is Nil!58396) l!2757))))

(assert (=> d!1625164 (= (size!39019 l!2757) lt!2086694)))

(declare-fun b!5051246 () Bool)

(assert (=> b!5051246 (= e!3153659 0)))

(declare-fun b!5051247 () Bool)

(assert (=> b!5051247 (= e!3153659 (+ 1 (size!39019 (t!371159 l!2757))))))

(assert (= (and d!1625164 c!866432) b!5051246))

(assert (= (and d!1625164 (not c!866432)) b!5051247))

(declare-fun m!6085246 () Bool)

(assert (=> b!5051247 m!6085246))

(assert (=> b!5051147 d!1625164))

(declare-fun b!5051258 () Bool)

(declare-fun e!3153665 () Bool)

(declare-fun tp!1412314 () Bool)

(assert (=> b!5051258 (= e!3153665 (and tp_is_empty!36975 tp!1412314))))

(assert (=> b!5051152 (= tp!1412309 e!3153665)))

(assert (= (and b!5051152 ((_ is Cons!58396) (t!371159 l!2757))) b!5051258))

(declare-fun b!5051259 () Bool)

(declare-fun e!3153666 () Bool)

(declare-fun tp!1412315 () Bool)

(assert (=> b!5051259 (= e!3153666 (and tp_is_empty!36975 tp!1412315))))

(assert (=> b!5051145 (= tp!1412308 e!3153666)))

(assert (= (and b!5051145 ((_ is Cons!58396) (t!371159 r!2041))) b!5051259))

(check-sat (not b!5051226) (not d!1625156) (not b!5051179) (not b!5051247) (not b!5051215) (not b!5051178) (not b!5051258) (not b!5051243) (not b!5051217) (not b!5051214) (not b!5051259) (not b!5051207) (not d!1625148) (not d!1625152) (not d!1625144) tp_is_empty!36975 (not b!5051208) (not b!5051225) (not b!5051181))
(check-sat)
(get-model)

(declare-fun e!3153669 () Bool)

(declare-fun lt!2086696 () List!58520)

(declare-fun b!5051265 () Bool)

(assert (=> b!5051265 (= e!3153669 (or (not (= r!2041 Nil!58396)) (= lt!2086696 (t!371159 l!2757))))))

(declare-fun b!5051263 () Bool)

(declare-fun e!3153670 () List!58520)

(assert (=> b!5051263 (= e!3153670 (Cons!58396 (h!64844 (t!371159 l!2757)) (++!12759 (t!371159 (t!371159 l!2757)) r!2041)))))

(declare-fun b!5051262 () Bool)

(assert (=> b!5051262 (= e!3153670 r!2041)))

(declare-fun b!5051264 () Bool)

(declare-fun res!2151155 () Bool)

(assert (=> b!5051264 (=> (not res!2151155) (not e!3153669))))

(assert (=> b!5051264 (= res!2151155 (= (size!39019 lt!2086696) (+ (size!39019 (t!371159 l!2757)) (size!39019 r!2041))))))

(declare-fun d!1625168 () Bool)

(assert (=> d!1625168 e!3153669))

(declare-fun res!2151154 () Bool)

(assert (=> d!1625168 (=> (not res!2151154) (not e!3153669))))

(assert (=> d!1625168 (= res!2151154 (= (content!10398 lt!2086696) ((_ map or) (content!10398 (t!371159 l!2757)) (content!10398 r!2041))))))

(assert (=> d!1625168 (= lt!2086696 e!3153670)))

(declare-fun c!866434 () Bool)

(assert (=> d!1625168 (= c!866434 ((_ is Nil!58396) (t!371159 l!2757)))))

(assert (=> d!1625168 (= (++!12759 (t!371159 l!2757) r!2041) lt!2086696)))

(assert (= (and d!1625168 c!866434) b!5051262))

(assert (= (and d!1625168 (not c!866434)) b!5051263))

(assert (= (and d!1625168 res!2151154) b!5051264))

(assert (= (and b!5051264 res!2151155) b!5051265))

(declare-fun m!6085250 () Bool)

(assert (=> b!5051263 m!6085250))

(declare-fun m!6085252 () Bool)

(assert (=> b!5051264 m!6085252))

(assert (=> b!5051264 m!6085246))

(assert (=> b!5051264 m!6085150))

(declare-fun m!6085254 () Bool)

(assert (=> d!1625168 m!6085254))

(declare-fun m!6085256 () Bool)

(assert (=> d!1625168 m!6085256))

(assert (=> d!1625168 m!6085232))

(assert (=> b!5051225 d!1625168))

(declare-fun b!5051266 () Bool)

(declare-fun res!2151157 () Bool)

(declare-fun e!3153672 () Bool)

(assert (=> b!5051266 (=> (not res!2151157) (not e!3153672))))

(declare-fun lt!2086697 () tuple2!63282)

(assert (=> b!5051266 (= res!2151157 (= (_1!34944 lt!2086697) (take!887 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1))))))

(declare-fun d!1625170 () Bool)

(assert (=> d!1625170 e!3153672))

(declare-fun res!2151156 () Bool)

(assert (=> d!1625170 (=> (not res!2151156) (not e!3153672))))

(assert (=> d!1625170 (= res!2151156 (= (++!12759 (_1!34944 lt!2086697) (_2!34944 lt!2086697)) (t!371159 (ite c!866400 l!2757 r!2041))))))

(declare-fun e!3153671 () tuple2!63282)

(assert (=> d!1625170 (= lt!2086697 e!3153671)))

(declare-fun c!866435 () Bool)

(assert (=> d!1625170 (= c!866435 ((_ is Nil!58396) (t!371159 (ite c!866400 l!2757 r!2041))))))

(assert (=> d!1625170 (= (splitAtIndex!227 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)) lt!2086697)))

(declare-fun b!5051267 () Bool)

(assert (=> b!5051267 (= e!3153672 (= (_2!34944 lt!2086697) (drop!2685 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1))))))

(declare-fun b!5051268 () Bool)

(assert (=> b!5051268 (= e!3153671 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun lt!2086698 () tuple2!63282)

(declare-fun b!5051269 () Bool)

(assert (=> b!5051269 (= lt!2086698 (splitAtIndex!227 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)))))

(declare-fun e!3153673 () tuple2!63282)

(assert (=> b!5051269 (= e!3153673 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (ite c!866400 l!2757 r!2041))) (_1!34944 lt!2086698)) (_2!34944 lt!2086698)))))

(declare-fun b!5051270 () Bool)

(assert (=> b!5051270 (= e!3153671 e!3153673)))

(declare-fun c!866436 () Bool)

(assert (=> b!5051270 (= c!866436 (<= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 0))))

(declare-fun b!5051271 () Bool)

(assert (=> b!5051271 (= e!3153673 (tuple2!63283 Nil!58396 (t!371159 (ite c!866400 l!2757 r!2041))))))

(assert (= (and d!1625170 c!866435) b!5051268))

(assert (= (and d!1625170 (not c!866435)) b!5051270))

(assert (= (and b!5051270 c!866436) b!5051271))

(assert (= (and b!5051270 (not c!866436)) b!5051269))

(assert (= (and d!1625170 res!2151156) b!5051266))

(assert (= (and b!5051266 res!2151157) b!5051267))

(declare-fun m!6085258 () Bool)

(assert (=> b!5051266 m!6085258))

(declare-fun m!6085260 () Bool)

(assert (=> d!1625170 m!6085260))

(declare-fun m!6085262 () Bool)

(assert (=> b!5051267 m!6085262))

(declare-fun m!6085264 () Bool)

(assert (=> b!5051269 m!6085264))

(assert (=> b!5051181 d!1625170))

(declare-fun b!5051290 () Bool)

(declare-fun e!3153686 () Int)

(declare-fun call!351968 () Int)

(assert (=> b!5051290 (= e!3153686 call!351968)))

(declare-fun e!3153684 () List!58520)

(declare-fun b!5051291 () Bool)

(assert (=> b!5051291 (= e!3153684 (ite c!866400 l!2757 r!2041))))

(declare-fun b!5051292 () Bool)

(declare-fun e!3153687 () List!58520)

(assert (=> b!5051292 (= e!3153687 Nil!58396)))

(declare-fun b!5051293 () Bool)

(declare-fun e!3153688 () Bool)

(declare-fun lt!2086701 () List!58520)

(assert (=> b!5051293 (= e!3153688 (= (size!39019 lt!2086701) e!3153686))))

(declare-fun c!866447 () Bool)

(assert (=> b!5051293 (= c!866447 (<= (ite c!866400 i!652 (- i!652 lt!2086661)) 0))))

(declare-fun b!5051294 () Bool)

(assert (=> b!5051294 (= e!3153684 (drop!2685 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)))))

(declare-fun b!5051295 () Bool)

(declare-fun e!3153685 () Int)

(assert (=> b!5051295 (= e!3153686 e!3153685)))

(declare-fun c!866446 () Bool)

(assert (=> b!5051295 (= c!866446 (>= (ite c!866400 i!652 (- i!652 lt!2086661)) call!351968))))

(declare-fun d!1625172 () Bool)

(assert (=> d!1625172 e!3153688))

(declare-fun res!2151160 () Bool)

(assert (=> d!1625172 (=> (not res!2151160) (not e!3153688))))

(assert (=> d!1625172 (= res!2151160 (= ((_ map implies) (content!10398 lt!2086701) (content!10398 (ite c!866400 l!2757 r!2041))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625172 (= lt!2086701 e!3153687)))

(declare-fun c!866445 () Bool)

(assert (=> d!1625172 (= c!866445 ((_ is Nil!58396) (ite c!866400 l!2757 r!2041)))))

(assert (=> d!1625172 (= (drop!2685 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661))) lt!2086701)))

(declare-fun bm!351963 () Bool)

(assert (=> bm!351963 (= call!351968 (size!39019 (ite c!866400 l!2757 r!2041)))))

(declare-fun b!5051296 () Bool)

(assert (=> b!5051296 (= e!3153687 e!3153684)))

(declare-fun c!866448 () Bool)

(assert (=> b!5051296 (= c!866448 (<= (ite c!866400 i!652 (- i!652 lt!2086661)) 0))))

(declare-fun b!5051297 () Bool)

(assert (=> b!5051297 (= e!3153685 0)))

(declare-fun b!5051298 () Bool)

(assert (=> b!5051298 (= e!3153685 (- call!351968 (ite c!866400 i!652 (- i!652 lt!2086661))))))

(assert (= (and d!1625172 c!866445) b!5051292))

(assert (= (and d!1625172 (not c!866445)) b!5051296))

(assert (= (and b!5051296 c!866448) b!5051291))

(assert (= (and b!5051296 (not c!866448)) b!5051294))

(assert (= (and d!1625172 res!2151160) b!5051293))

(assert (= (and b!5051293 c!866447) b!5051290))

(assert (= (and b!5051293 (not c!866447)) b!5051295))

(assert (= (and b!5051295 c!866446) b!5051297))

(assert (= (and b!5051295 (not c!866446)) b!5051298))

(assert (= (or b!5051290 b!5051295 b!5051298) bm!351963))

(declare-fun m!6085266 () Bool)

(assert (=> b!5051293 m!6085266))

(assert (=> b!5051294 m!6085262))

(declare-fun m!6085268 () Bool)

(assert (=> d!1625172 m!6085268))

(declare-fun m!6085270 () Bool)

(assert (=> d!1625172 m!6085270))

(declare-fun m!6085272 () Bool)

(assert (=> bm!351963 m!6085272))

(assert (=> b!5051179 d!1625172))

(declare-fun d!1625174 () Bool)

(declare-fun lt!2086702 () Int)

(assert (=> d!1625174 (>= lt!2086702 0)))

(declare-fun e!3153689 () Int)

(assert (=> d!1625174 (= lt!2086702 e!3153689)))

(declare-fun c!866449 () Bool)

(assert (=> d!1625174 (= c!866449 ((_ is Nil!58396) lt!2086680))))

(assert (=> d!1625174 (= (size!39019 lt!2086680) lt!2086702)))

(declare-fun b!5051299 () Bool)

(assert (=> b!5051299 (= e!3153689 0)))

(declare-fun b!5051300 () Bool)

(assert (=> b!5051300 (= e!3153689 (+ 1 (size!39019 (t!371159 lt!2086680))))))

(assert (= (and d!1625174 c!866449) b!5051299))

(assert (= (and d!1625174 (not c!866449)) b!5051300))

(declare-fun m!6085274 () Bool)

(assert (=> b!5051300 m!6085274))

(assert (=> b!5051208 d!1625174))

(declare-fun d!1625176 () Bool)

(declare-fun lt!2086703 () Int)

(assert (=> d!1625176 (>= lt!2086703 0)))

(declare-fun e!3153690 () Int)

(assert (=> d!1625176 (= lt!2086703 e!3153690)))

(declare-fun c!866450 () Bool)

(assert (=> d!1625176 (= c!866450 ((_ is Nil!58396) (ite c!866400 (_2!34944 lt!2086660) l!2757)))))

(assert (=> d!1625176 (= (size!39019 (ite c!866400 (_2!34944 lt!2086660) l!2757)) lt!2086703)))

(declare-fun b!5051301 () Bool)

(assert (=> b!5051301 (= e!3153690 0)))

(declare-fun b!5051302 () Bool)

(assert (=> b!5051302 (= e!3153690 (+ 1 (size!39019 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(assert (= (and d!1625176 c!866450) b!5051301))

(assert (= (and d!1625176 (not c!866450)) b!5051302))

(declare-fun m!6085276 () Bool)

(assert (=> b!5051302 m!6085276))

(assert (=> b!5051208 d!1625176))

(declare-fun d!1625178 () Bool)

(declare-fun lt!2086704 () Int)

(assert (=> d!1625178 (>= lt!2086704 0)))

(declare-fun e!3153691 () Int)

(assert (=> d!1625178 (= lt!2086704 e!3153691)))

(declare-fun c!866451 () Bool)

(assert (=> d!1625178 (= c!866451 ((_ is Nil!58396) (ite c!866400 r!2041 (_1!34944 lt!2086663))))))

(assert (=> d!1625178 (= (size!39019 (ite c!866400 r!2041 (_1!34944 lt!2086663))) lt!2086704)))

(declare-fun b!5051303 () Bool)

(assert (=> b!5051303 (= e!3153691 0)))

(declare-fun b!5051304 () Bool)

(assert (=> b!5051304 (= e!3153691 (+ 1 (size!39019 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (= (and d!1625178 c!866451) b!5051303))

(assert (= (and d!1625178 (not c!866451)) b!5051304))

(declare-fun m!6085278 () Bool)

(assert (=> b!5051304 m!6085278))

(assert (=> b!5051208 d!1625178))

(declare-fun d!1625180 () Bool)

(declare-fun lt!2086705 () Int)

(assert (=> d!1625180 (>= lt!2086705 0)))

(declare-fun e!3153692 () Int)

(assert (=> d!1625180 (= lt!2086705 e!3153692)))

(declare-fun c!866452 () Bool)

(assert (=> d!1625180 (= c!866452 ((_ is Nil!58396) (t!371159 l!2757)))))

(assert (=> d!1625180 (= (size!39019 (t!371159 l!2757)) lt!2086705)))

(declare-fun b!5051305 () Bool)

(assert (=> b!5051305 (= e!3153692 0)))

(declare-fun b!5051306 () Bool)

(assert (=> b!5051306 (= e!3153692 (+ 1 (size!39019 (t!371159 (t!371159 l!2757)))))))

(assert (= (and d!1625180 c!866452) b!5051305))

(assert (= (and d!1625180 (not c!866452)) b!5051306))

(declare-fun m!6085280 () Bool)

(assert (=> b!5051306 m!6085280))

(assert (=> b!5051247 d!1625180))

(declare-fun b!5051322 () Bool)

(declare-fun e!3153703 () Int)

(assert (=> b!5051322 (= e!3153703 (size!39019 (++!12759 l!2757 r!2041)))))

(declare-fun b!5051323 () Bool)

(declare-fun e!3153701 () Int)

(assert (=> b!5051323 (= e!3153701 e!3153703)))

(declare-fun c!866459 () Bool)

(assert (=> b!5051323 (= c!866459 (>= i!652 (size!39019 (++!12759 l!2757 r!2041))))))

(declare-fun b!5051324 () Bool)

(declare-fun e!3153702 () Bool)

(declare-fun lt!2086708 () List!58520)

(assert (=> b!5051324 (= e!3153702 (= (size!39019 lt!2086708) e!3153701))))

(declare-fun c!866460 () Bool)

(assert (=> b!5051324 (= c!866460 (<= i!652 0))))

(declare-fun b!5051325 () Bool)

(assert (=> b!5051325 (= e!3153703 i!652)))

(declare-fun b!5051326 () Bool)

(declare-fun e!3153704 () List!58520)

(assert (=> b!5051326 (= e!3153704 (Cons!58396 (h!64844 (++!12759 l!2757 r!2041)) (take!887 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1))))))

(declare-fun b!5051327 () Bool)

(assert (=> b!5051327 (= e!3153704 Nil!58396)))

(declare-fun d!1625182 () Bool)

(assert (=> d!1625182 e!3153702))

(declare-fun res!2151163 () Bool)

(assert (=> d!1625182 (=> (not res!2151163) (not e!3153702))))

(assert (=> d!1625182 (= res!2151163 (= ((_ map implies) (content!10398 lt!2086708) (content!10398 (++!12759 l!2757 r!2041))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625182 (= lt!2086708 e!3153704)))

(declare-fun c!866461 () Bool)

(assert (=> d!1625182 (= c!866461 (or ((_ is Nil!58396) (++!12759 l!2757 r!2041)) (<= i!652 0)))))

(assert (=> d!1625182 (= (take!887 (++!12759 l!2757 r!2041) i!652) lt!2086708)))

(declare-fun b!5051321 () Bool)

(assert (=> b!5051321 (= e!3153701 0)))

(assert (= (and d!1625182 c!866461) b!5051327))

(assert (= (and d!1625182 (not c!866461)) b!5051326))

(assert (= (and d!1625182 res!2151163) b!5051324))

(assert (= (and b!5051324 c!866460) b!5051321))

(assert (= (and b!5051324 (not c!866460)) b!5051323))

(assert (= (and b!5051323 c!866459) b!5051322))

(assert (= (and b!5051323 (not c!866459)) b!5051325))

(assert (=> b!5051323 m!6085154))

(declare-fun m!6085282 () Bool)

(assert (=> b!5051323 m!6085282))

(declare-fun m!6085284 () Bool)

(assert (=> b!5051324 m!6085284))

(assert (=> b!5051322 m!6085154))

(assert (=> b!5051322 m!6085282))

(declare-fun m!6085286 () Bool)

(assert (=> b!5051326 m!6085286))

(declare-fun m!6085288 () Bool)

(assert (=> d!1625182 m!6085288))

(assert (=> d!1625182 m!6085154))

(declare-fun m!6085290 () Bool)

(assert (=> d!1625182 m!6085290))

(assert (=> b!5051214 d!1625182))

(declare-fun b!5051331 () Bool)

(declare-fun e!3153705 () Bool)

(declare-fun lt!2086709 () List!58520)

(assert (=> b!5051331 (= e!3153705 (or (not (= (_2!34944 lt!2086672) Nil!58396)) (= lt!2086709 (_1!34944 lt!2086672))))))

(declare-fun b!5051329 () Bool)

(declare-fun e!3153706 () List!58520)

(assert (=> b!5051329 (= e!3153706 (Cons!58396 (h!64844 (_1!34944 lt!2086672)) (++!12759 (t!371159 (_1!34944 lt!2086672)) (_2!34944 lt!2086672))))))

(declare-fun b!5051328 () Bool)

(assert (=> b!5051328 (= e!3153706 (_2!34944 lt!2086672))))

(declare-fun b!5051330 () Bool)

(declare-fun res!2151165 () Bool)

(assert (=> b!5051330 (=> (not res!2151165) (not e!3153705))))

(assert (=> b!5051330 (= res!2151165 (= (size!39019 lt!2086709) (+ (size!39019 (_1!34944 lt!2086672)) (size!39019 (_2!34944 lt!2086672)))))))

(declare-fun d!1625186 () Bool)

(assert (=> d!1625186 e!3153705))

(declare-fun res!2151164 () Bool)

(assert (=> d!1625186 (=> (not res!2151164) (not e!3153705))))

(assert (=> d!1625186 (= res!2151164 (= (content!10398 lt!2086709) ((_ map or) (content!10398 (_1!34944 lt!2086672)) (content!10398 (_2!34944 lt!2086672)))))))

(assert (=> d!1625186 (= lt!2086709 e!3153706)))

(declare-fun c!866462 () Bool)

(assert (=> d!1625186 (= c!866462 ((_ is Nil!58396) (_1!34944 lt!2086672)))))

(assert (=> d!1625186 (= (++!12759 (_1!34944 lt!2086672) (_2!34944 lt!2086672)) lt!2086709)))

(assert (= (and d!1625186 c!866462) b!5051328))

(assert (= (and d!1625186 (not c!866462)) b!5051329))

(assert (= (and d!1625186 res!2151164) b!5051330))

(assert (= (and b!5051330 res!2151165) b!5051331))

(declare-fun m!6085292 () Bool)

(assert (=> b!5051329 m!6085292))

(declare-fun m!6085294 () Bool)

(assert (=> b!5051330 m!6085294))

(declare-fun m!6085296 () Bool)

(assert (=> b!5051330 m!6085296))

(declare-fun m!6085298 () Bool)

(assert (=> b!5051330 m!6085298))

(declare-fun m!6085300 () Bool)

(assert (=> d!1625186 m!6085300))

(declare-fun m!6085302 () Bool)

(assert (=> d!1625186 m!6085302))

(declare-fun m!6085304 () Bool)

(assert (=> d!1625186 m!6085304))

(assert (=> d!1625144 d!1625186))

(declare-fun d!1625188 () Bool)

(declare-fun c!866469 () Bool)

(assert (=> d!1625188 (= c!866469 ((_ is Nil!58396) lt!2086685))))

(declare-fun e!3153713 () (InoxSet T!104852))

(assert (=> d!1625188 (= (content!10398 lt!2086685) e!3153713)))

(declare-fun b!5051344 () Bool)

(assert (=> b!5051344 (= e!3153713 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051345 () Bool)

(assert (=> b!5051345 (= e!3153713 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086685) true) (content!10398 (t!371159 lt!2086685))))))

(assert (= (and d!1625188 c!866469) b!5051344))

(assert (= (and d!1625188 (not c!866469)) b!5051345))

(declare-fun m!6085314 () Bool)

(assert (=> b!5051345 m!6085314))

(declare-fun m!6085316 () Bool)

(assert (=> b!5051345 m!6085316))

(assert (=> d!1625156 d!1625188))

(declare-fun d!1625194 () Bool)

(declare-fun c!866471 () Bool)

(assert (=> d!1625194 (= c!866471 ((_ is Nil!58396) l!2757))))

(declare-fun e!3153715 () (InoxSet T!104852))

(assert (=> d!1625194 (= (content!10398 l!2757) e!3153715)))

(declare-fun b!5051348 () Bool)

(assert (=> b!5051348 (= e!3153715 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051349 () Bool)

(assert (=> b!5051349 (= e!3153715 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 l!2757) true) (content!10398 (t!371159 l!2757))))))

(assert (= (and d!1625194 c!866471) b!5051348))

(assert (= (and d!1625194 (not c!866471)) b!5051349))

(declare-fun m!6085322 () Bool)

(assert (=> b!5051349 m!6085322))

(assert (=> b!5051349 m!6085256))

(assert (=> d!1625156 d!1625194))

(declare-fun d!1625198 () Bool)

(declare-fun c!866473 () Bool)

(assert (=> d!1625198 (= c!866473 ((_ is Nil!58396) r!2041))))

(declare-fun e!3153717 () (InoxSet T!104852))

(assert (=> d!1625198 (= (content!10398 r!2041) e!3153717)))

(declare-fun b!5051352 () Bool)

(assert (=> b!5051352 (= e!3153717 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051353 () Bool)

(assert (=> b!5051353 (= e!3153717 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 r!2041) true) (content!10398 (t!371159 r!2041))))))

(assert (= (and d!1625198 c!866473) b!5051352))

(assert (= (and d!1625198 (not c!866473)) b!5051353))

(declare-fun m!6085326 () Bool)

(assert (=> b!5051353 m!6085326))

(declare-fun m!6085328 () Bool)

(assert (=> b!5051353 m!6085328))

(assert (=> d!1625156 d!1625198))

(declare-fun d!1625202 () Bool)

(declare-fun lt!2086712 () Int)

(assert (=> d!1625202 (>= lt!2086712 0)))

(declare-fun e!3153720 () Int)

(assert (=> d!1625202 (= lt!2086712 e!3153720)))

(declare-fun c!866475 () Bool)

(assert (=> d!1625202 (= c!866475 ((_ is Nil!58396) lt!2086685))))

(assert (=> d!1625202 (= (size!39019 lt!2086685) lt!2086712)))

(declare-fun b!5051358 () Bool)

(assert (=> b!5051358 (= e!3153720 0)))

(declare-fun b!5051359 () Bool)

(assert (=> b!5051359 (= e!3153720 (+ 1 (size!39019 (t!371159 lt!2086685))))))

(assert (= (and d!1625202 c!866475) b!5051358))

(assert (= (and d!1625202 (not c!866475)) b!5051359))

(declare-fun m!6085330 () Bool)

(assert (=> b!5051359 m!6085330))

(assert (=> b!5051226 d!1625202))

(assert (=> b!5051226 d!1625164))

(assert (=> b!5051226 d!1625160))

(declare-fun b!5051360 () Bool)

(declare-fun res!2151169 () Bool)

(declare-fun e!3153722 () Bool)

(assert (=> b!5051360 (=> (not res!2151169) (not e!3153722))))

(declare-fun lt!2086713 () tuple2!63282)

(assert (=> b!5051360 (= res!2151169 (= (_1!34944 lt!2086713) (take!887 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1))))))

(declare-fun d!1625204 () Bool)

(assert (=> d!1625204 e!3153722))

(declare-fun res!2151168 () Bool)

(assert (=> d!1625204 (=> (not res!2151168) (not e!3153722))))

(assert (=> d!1625204 (= res!2151168 (= (++!12759 (_1!34944 lt!2086713) (_2!34944 lt!2086713)) (t!371159 (++!12759 l!2757 r!2041))))))

(declare-fun e!3153721 () tuple2!63282)

(assert (=> d!1625204 (= lt!2086713 e!3153721)))

(declare-fun c!866476 () Bool)

(assert (=> d!1625204 (= c!866476 ((_ is Nil!58396) (t!371159 (++!12759 l!2757 r!2041))))))

(assert (=> d!1625204 (= (splitAtIndex!227 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1)) lt!2086713)))

(declare-fun b!5051361 () Bool)

(assert (=> b!5051361 (= e!3153722 (= (_2!34944 lt!2086713) (drop!2685 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1))))))

(declare-fun b!5051362 () Bool)

(assert (=> b!5051362 (= e!3153721 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun lt!2086714 () tuple2!63282)

(declare-fun b!5051363 () Bool)

(assert (=> b!5051363 (= lt!2086714 (splitAtIndex!227 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1)))))

(declare-fun e!3153723 () tuple2!63282)

(assert (=> b!5051363 (= e!3153723 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (++!12759 l!2757 r!2041))) (_1!34944 lt!2086714)) (_2!34944 lt!2086714)))))

(declare-fun b!5051364 () Bool)

(assert (=> b!5051364 (= e!3153721 e!3153723)))

(declare-fun c!866477 () Bool)

(assert (=> b!5051364 (= c!866477 (<= (- i!652 1) 0))))

(declare-fun b!5051365 () Bool)

(assert (=> b!5051365 (= e!3153723 (tuple2!63283 Nil!58396 (t!371159 (++!12759 l!2757 r!2041))))))

(assert (= (and d!1625204 c!866476) b!5051362))

(assert (= (and d!1625204 (not c!866476)) b!5051364))

(assert (= (and b!5051364 c!866477) b!5051365))

(assert (= (and b!5051364 (not c!866477)) b!5051363))

(assert (= (and d!1625204 res!2151168) b!5051360))

(assert (= (and b!5051360 res!2151169) b!5051361))

(assert (=> b!5051360 m!6085286))

(declare-fun m!6085348 () Bool)

(assert (=> d!1625204 m!6085348))

(declare-fun m!6085350 () Bool)

(assert (=> b!5051361 m!6085350))

(declare-fun m!6085352 () Bool)

(assert (=> b!5051363 m!6085352))

(assert (=> b!5051217 d!1625204))

(declare-fun d!1625210 () Bool)

(declare-fun c!866479 () Bool)

(assert (=> d!1625210 (= c!866479 ((_ is Nil!58396) lt!2086680))))

(declare-fun e!3153725 () (InoxSet T!104852))

(assert (=> d!1625210 (= (content!10398 lt!2086680) e!3153725)))

(declare-fun b!5051368 () Bool)

(assert (=> b!5051368 (= e!3153725 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051369 () Bool)

(assert (=> b!5051369 (= e!3153725 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086680) true) (content!10398 (t!371159 lt!2086680))))))

(assert (= (and d!1625210 c!866479) b!5051368))

(assert (= (and d!1625210 (not c!866479)) b!5051369))

(declare-fun m!6085354 () Bool)

(assert (=> b!5051369 m!6085354))

(declare-fun m!6085356 () Bool)

(assert (=> b!5051369 m!6085356))

(assert (=> d!1625148 d!1625210))

(declare-fun c!866480 () Bool)

(declare-fun d!1625212 () Bool)

(assert (=> d!1625212 (= c!866480 ((_ is Nil!58396) (ite c!866400 (_2!34944 lt!2086660) l!2757)))))

(declare-fun e!3153726 () (InoxSet T!104852))

(assert (=> d!1625212 (= (content!10398 (ite c!866400 (_2!34944 lt!2086660) l!2757)) e!3153726)))

(declare-fun b!5051370 () Bool)

(assert (=> b!5051370 (= e!3153726 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051371 () Bool)

(assert (=> b!5051371 (= e!3153726 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (ite c!866400 (_2!34944 lt!2086660) l!2757)) true) (content!10398 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(assert (= (and d!1625212 c!866480) b!5051370))

(assert (= (and d!1625212 (not c!866480)) b!5051371))

(declare-fun m!6085358 () Bool)

(assert (=> b!5051371 m!6085358))

(declare-fun m!6085360 () Bool)

(assert (=> b!5051371 m!6085360))

(assert (=> d!1625148 d!1625212))

(declare-fun d!1625214 () Bool)

(declare-fun c!866481 () Bool)

(assert (=> d!1625214 (= c!866481 ((_ is Nil!58396) (ite c!866400 r!2041 (_1!34944 lt!2086663))))))

(declare-fun e!3153727 () (InoxSet T!104852))

(assert (=> d!1625214 (= (content!10398 (ite c!866400 r!2041 (_1!34944 lt!2086663))) e!3153727)))

(declare-fun b!5051372 () Bool)

(assert (=> b!5051372 (= e!3153727 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051373 () Bool)

(assert (=> b!5051373 (= e!3153727 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (ite c!866400 r!2041 (_1!34944 lt!2086663))) true) (content!10398 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (= (and d!1625214 c!866481) b!5051372))

(assert (= (and d!1625214 (not c!866481)) b!5051373))

(declare-fun m!6085362 () Bool)

(assert (=> b!5051373 m!6085362))

(declare-fun m!6085364 () Bool)

(assert (=> b!5051373 m!6085364))

(assert (=> d!1625148 d!1625214))

(declare-fun b!5051374 () Bool)

(declare-fun e!3153730 () Int)

(declare-fun call!351969 () Int)

(assert (=> b!5051374 (= e!3153730 call!351969)))

(declare-fun b!5051375 () Bool)

(declare-fun e!3153728 () List!58520)

(assert (=> b!5051375 (= e!3153728 (++!12759 l!2757 r!2041))))

(declare-fun b!5051376 () Bool)

(declare-fun e!3153731 () List!58520)

(assert (=> b!5051376 (= e!3153731 Nil!58396)))

(declare-fun b!5051377 () Bool)

(declare-fun e!3153732 () Bool)

(declare-fun lt!2086716 () List!58520)

(assert (=> b!5051377 (= e!3153732 (= (size!39019 lt!2086716) e!3153730))))

(declare-fun c!866484 () Bool)

(assert (=> b!5051377 (= c!866484 (<= i!652 0))))

(declare-fun b!5051378 () Bool)

(assert (=> b!5051378 (= e!3153728 (drop!2685 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1)))))

(declare-fun b!5051379 () Bool)

(declare-fun e!3153729 () Int)

(assert (=> b!5051379 (= e!3153730 e!3153729)))

(declare-fun c!866483 () Bool)

(assert (=> b!5051379 (= c!866483 (>= i!652 call!351969))))

(declare-fun d!1625216 () Bool)

(assert (=> d!1625216 e!3153732))

(declare-fun res!2151170 () Bool)

(assert (=> d!1625216 (=> (not res!2151170) (not e!3153732))))

(assert (=> d!1625216 (= res!2151170 (= ((_ map implies) (content!10398 lt!2086716) (content!10398 (++!12759 l!2757 r!2041))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625216 (= lt!2086716 e!3153731)))

(declare-fun c!866482 () Bool)

(assert (=> d!1625216 (= c!866482 ((_ is Nil!58396) (++!12759 l!2757 r!2041)))))

(assert (=> d!1625216 (= (drop!2685 (++!12759 l!2757 r!2041) i!652) lt!2086716)))

(declare-fun bm!351964 () Bool)

(assert (=> bm!351964 (= call!351969 (size!39019 (++!12759 l!2757 r!2041)))))

(declare-fun b!5051380 () Bool)

(assert (=> b!5051380 (= e!3153731 e!3153728)))

(declare-fun c!866485 () Bool)

(assert (=> b!5051380 (= c!866485 (<= i!652 0))))

(declare-fun b!5051381 () Bool)

(assert (=> b!5051381 (= e!3153729 0)))

(declare-fun b!5051382 () Bool)

(assert (=> b!5051382 (= e!3153729 (- call!351969 i!652))))

(assert (= (and d!1625216 c!866482) b!5051376))

(assert (= (and d!1625216 (not c!866482)) b!5051380))

(assert (= (and b!5051380 c!866485) b!5051375))

(assert (= (and b!5051380 (not c!866485)) b!5051378))

(assert (= (and d!1625216 res!2151170) b!5051377))

(assert (= (and b!5051377 c!866484) b!5051374))

(assert (= (and b!5051377 (not c!866484)) b!5051379))

(assert (= (and b!5051379 c!866483) b!5051381))

(assert (= (and b!5051379 (not c!866483)) b!5051382))

(assert (= (or b!5051374 b!5051379 b!5051382) bm!351964))

(declare-fun m!6085366 () Bool)

(assert (=> b!5051377 m!6085366))

(assert (=> b!5051378 m!6085350))

(declare-fun m!6085368 () Bool)

(assert (=> d!1625216 m!6085368))

(assert (=> d!1625216 m!6085154))

(assert (=> d!1625216 m!6085290))

(assert (=> bm!351964 m!6085154))

(assert (=> bm!351964 m!6085282))

(assert (=> b!5051215 d!1625216))

(declare-fun b!5051386 () Bool)

(declare-fun e!3153733 () Bool)

(declare-fun lt!2086717 () List!58520)

(assert (=> b!5051386 (= e!3153733 (or (not (= (_2!34944 lt!2086682) Nil!58396)) (= lt!2086717 (_1!34944 lt!2086682))))))

(declare-fun b!5051384 () Bool)

(declare-fun e!3153734 () List!58520)

(assert (=> b!5051384 (= e!3153734 (Cons!58396 (h!64844 (_1!34944 lt!2086682)) (++!12759 (t!371159 (_1!34944 lt!2086682)) (_2!34944 lt!2086682))))))

(declare-fun b!5051383 () Bool)

(assert (=> b!5051383 (= e!3153734 (_2!34944 lt!2086682))))

(declare-fun b!5051385 () Bool)

(declare-fun res!2151172 () Bool)

(assert (=> b!5051385 (=> (not res!2151172) (not e!3153733))))

(assert (=> b!5051385 (= res!2151172 (= (size!39019 lt!2086717) (+ (size!39019 (_1!34944 lt!2086682)) (size!39019 (_2!34944 lt!2086682)))))))

(declare-fun d!1625218 () Bool)

(assert (=> d!1625218 e!3153733))

(declare-fun res!2151171 () Bool)

(assert (=> d!1625218 (=> (not res!2151171) (not e!3153733))))

(assert (=> d!1625218 (= res!2151171 (= (content!10398 lt!2086717) ((_ map or) (content!10398 (_1!34944 lt!2086682)) (content!10398 (_2!34944 lt!2086682)))))))

(assert (=> d!1625218 (= lt!2086717 e!3153734)))

(declare-fun c!866486 () Bool)

(assert (=> d!1625218 (= c!866486 ((_ is Nil!58396) (_1!34944 lt!2086682)))))

(assert (=> d!1625218 (= (++!12759 (_1!34944 lt!2086682) (_2!34944 lt!2086682)) lt!2086717)))

(assert (= (and d!1625218 c!866486) b!5051383))

(assert (= (and d!1625218 (not c!866486)) b!5051384))

(assert (= (and d!1625218 res!2151171) b!5051385))

(assert (= (and b!5051385 res!2151172) b!5051386))

(declare-fun m!6085370 () Bool)

(assert (=> b!5051384 m!6085370))

(declare-fun m!6085372 () Bool)

(assert (=> b!5051385 m!6085372))

(declare-fun m!6085374 () Bool)

(assert (=> b!5051385 m!6085374))

(declare-fun m!6085376 () Bool)

(assert (=> b!5051385 m!6085376))

(declare-fun m!6085378 () Bool)

(assert (=> d!1625218 m!6085378))

(declare-fun m!6085380 () Bool)

(assert (=> d!1625218 m!6085380))

(declare-fun m!6085382 () Bool)

(assert (=> d!1625218 m!6085382))

(assert (=> d!1625152 d!1625218))

(declare-fun e!3153737 () Int)

(declare-fun b!5051388 () Bool)

(assert (=> b!5051388 (= e!3153737 (size!39019 (ite c!866400 l!2757 r!2041)))))

(declare-fun b!5051389 () Bool)

(declare-fun e!3153735 () Int)

(assert (=> b!5051389 (= e!3153735 e!3153737)))

(declare-fun c!866487 () Bool)

(assert (=> b!5051389 (= c!866487 (>= (ite c!866400 i!652 (- i!652 lt!2086661)) (size!39019 (ite c!866400 l!2757 r!2041))))))

(declare-fun b!5051390 () Bool)

(declare-fun e!3153736 () Bool)

(declare-fun lt!2086718 () List!58520)

(assert (=> b!5051390 (= e!3153736 (= (size!39019 lt!2086718) e!3153735))))

(declare-fun c!866488 () Bool)

(assert (=> b!5051390 (= c!866488 (<= (ite c!866400 i!652 (- i!652 lt!2086661)) 0))))

(declare-fun b!5051391 () Bool)

(assert (=> b!5051391 (= e!3153737 (ite c!866400 i!652 (- i!652 lt!2086661)))))

(declare-fun e!3153738 () List!58520)

(declare-fun b!5051392 () Bool)

(assert (=> b!5051392 (= e!3153738 (Cons!58396 (h!64844 (ite c!866400 l!2757 r!2041)) (take!887 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1))))))

(declare-fun b!5051393 () Bool)

(assert (=> b!5051393 (= e!3153738 Nil!58396)))

(declare-fun d!1625220 () Bool)

(assert (=> d!1625220 e!3153736))

(declare-fun res!2151173 () Bool)

(assert (=> d!1625220 (=> (not res!2151173) (not e!3153736))))

(assert (=> d!1625220 (= res!2151173 (= ((_ map implies) (content!10398 lt!2086718) (content!10398 (ite c!866400 l!2757 r!2041))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625220 (= lt!2086718 e!3153738)))

(declare-fun c!866489 () Bool)

(assert (=> d!1625220 (= c!866489 (or ((_ is Nil!58396) (ite c!866400 l!2757 r!2041)) (<= (ite c!866400 i!652 (- i!652 lt!2086661)) 0)))))

(assert (=> d!1625220 (= (take!887 (ite c!866400 l!2757 r!2041) (ite c!866400 i!652 (- i!652 lt!2086661))) lt!2086718)))

(declare-fun b!5051387 () Bool)

(assert (=> b!5051387 (= e!3153735 0)))

(assert (= (and d!1625220 c!866489) b!5051393))

(assert (= (and d!1625220 (not c!866489)) b!5051392))

(assert (= (and d!1625220 res!2151173) b!5051390))

(assert (= (and b!5051390 c!866488) b!5051387))

(assert (= (and b!5051390 (not c!866488)) b!5051389))

(assert (= (and b!5051389 c!866487) b!5051388))

(assert (= (and b!5051389 (not c!866487)) b!5051391))

(assert (=> b!5051389 m!6085272))

(declare-fun m!6085384 () Bool)

(assert (=> b!5051390 m!6085384))

(assert (=> b!5051388 m!6085272))

(assert (=> b!5051392 m!6085258))

(declare-fun m!6085386 () Bool)

(assert (=> d!1625220 m!6085386))

(assert (=> d!1625220 m!6085270))

(assert (=> b!5051178 d!1625220))

(declare-fun lt!2086719 () List!58520)

(declare-fun b!5051397 () Bool)

(declare-fun e!3153739 () Bool)

(assert (=> b!5051397 (= e!3153739 (or (not (= (ite c!866400 r!2041 (_1!34944 lt!2086663)) Nil!58396)) (= lt!2086719 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(declare-fun e!3153740 () List!58520)

(declare-fun b!5051395 () Bool)

(assert (=> b!5051395 (= e!3153740 (Cons!58396 (h!64844 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) (++!12759 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(declare-fun b!5051394 () Bool)

(assert (=> b!5051394 (= e!3153740 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))

(declare-fun b!5051396 () Bool)

(declare-fun res!2151175 () Bool)

(assert (=> b!5051396 (=> (not res!2151175) (not e!3153739))))

(assert (=> b!5051396 (= res!2151175 (= (size!39019 lt!2086719) (+ (size!39019 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) (size!39019 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(declare-fun d!1625222 () Bool)

(assert (=> d!1625222 e!3153739))

(declare-fun res!2151174 () Bool)

(assert (=> d!1625222 (=> (not res!2151174) (not e!3153739))))

(assert (=> d!1625222 (= res!2151174 (= (content!10398 lt!2086719) ((_ map or) (content!10398 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) (content!10398 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (=> d!1625222 (= lt!2086719 e!3153740)))

(declare-fun c!866490 () Bool)

(assert (=> d!1625222 (= c!866490 ((_ is Nil!58396) (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))

(assert (=> d!1625222 (= (++!12759 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)) (ite c!866400 r!2041 (_1!34944 lt!2086663))) lt!2086719)))

(assert (= (and d!1625222 c!866490) b!5051394))

(assert (= (and d!1625222 (not c!866490)) b!5051395))

(assert (= (and d!1625222 res!2151174) b!5051396))

(assert (= (and b!5051396 res!2151175) b!5051397))

(declare-fun m!6085388 () Bool)

(assert (=> b!5051395 m!6085388))

(declare-fun m!6085390 () Bool)

(assert (=> b!5051396 m!6085390))

(assert (=> b!5051396 m!6085276))

(assert (=> b!5051396 m!6085184))

(declare-fun m!6085392 () Bool)

(assert (=> d!1625222 m!6085392))

(assert (=> d!1625222 m!6085360))

(assert (=> d!1625222 m!6085192))

(assert (=> b!5051207 d!1625222))

(declare-fun d!1625224 () Bool)

(declare-fun lt!2086722 () Int)

(assert (=> d!1625224 (>= lt!2086722 0)))

(declare-fun e!3153743 () Int)

(assert (=> d!1625224 (= lt!2086722 e!3153743)))

(declare-fun c!866493 () Bool)

(assert (=> d!1625224 (= c!866493 ((_ is Nil!58396) (t!371159 r!2041)))))

(assert (=> d!1625224 (= (size!39019 (t!371159 r!2041)) lt!2086722)))

(declare-fun b!5051402 () Bool)

(assert (=> b!5051402 (= e!3153743 0)))

(declare-fun b!5051403 () Bool)

(assert (=> b!5051403 (= e!3153743 (+ 1 (size!39019 (t!371159 (t!371159 r!2041)))))))

(assert (= (and d!1625224 c!866493) b!5051402))

(assert (= (and d!1625224 (not c!866493)) b!5051403))

(declare-fun m!6085394 () Bool)

(assert (=> b!5051403 m!6085394))

(assert (=> b!5051243 d!1625224))

(declare-fun b!5051404 () Bool)

(declare-fun e!3153744 () Bool)

(declare-fun tp!1412318 () Bool)

(assert (=> b!5051404 (= e!3153744 (and tp_is_empty!36975 tp!1412318))))

(assert (=> b!5051259 (= tp!1412315 e!3153744)))

(assert (= (and b!5051259 ((_ is Cons!58396) (t!371159 (t!371159 r!2041)))) b!5051404))

(declare-fun b!5051409 () Bool)

(declare-fun e!3153747 () Bool)

(declare-fun tp!1412319 () Bool)

(assert (=> b!5051409 (= e!3153747 (and tp_is_empty!36975 tp!1412319))))

(assert (=> b!5051258 (= tp!1412314 e!3153747)))

(assert (= (and b!5051258 ((_ is Cons!58396) (t!371159 (t!371159 l!2757)))) b!5051409))

(check-sat (not b!5051304) (not b!5051266) (not b!5051409) (not d!1625186) (not b!5051353) (not b!5051389) (not b!5051359) (not b!5051396) (not d!1625168) (not b!5051377) (not b!5051264) (not b!5051361) (not b!5051263) (not b!5051384) (not b!5051269) (not b!5051360) (not bm!351964) (not b!5051390) (not b!5051392) (not d!1625170) (not bm!351963) (not b!5051294) (not b!5051369) (not d!1625216) (not d!1625220) (not b!5051371) (not d!1625222) (not b!5051326) (not b!5051404) (not b!5051378) (not d!1625218) (not b!5051349) (not b!5051322) (not b!5051300) (not d!1625204) (not d!1625182) (not b!5051324) (not d!1625172) (not b!5051395) (not b!5051385) (not b!5051329) tp_is_empty!36975 (not b!5051363) (not b!5051293) (not b!5051403) (not b!5051330) (not b!5051373) (not b!5051345) (not b!5051306) (not b!5051267) (not b!5051302) (not b!5051388) (not b!5051323))
(check-sat)
(get-model)

(declare-fun d!1625256 () Bool)

(declare-fun c!866534 () Bool)

(assert (=> d!1625256 (= c!866534 ((_ is Nil!58396) lt!2086717))))

(declare-fun e!3153801 () (InoxSet T!104852))

(assert (=> d!1625256 (= (content!10398 lt!2086717) e!3153801)))

(declare-fun b!5051506 () Bool)

(assert (=> b!5051506 (= e!3153801 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051507 () Bool)

(assert (=> b!5051507 (= e!3153801 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086717) true) (content!10398 (t!371159 lt!2086717))))))

(assert (= (and d!1625256 c!866534) b!5051506))

(assert (= (and d!1625256 (not c!866534)) b!5051507))

(declare-fun m!6085482 () Bool)

(assert (=> b!5051507 m!6085482))

(declare-fun m!6085484 () Bool)

(assert (=> b!5051507 m!6085484))

(assert (=> d!1625218 d!1625256))

(declare-fun d!1625258 () Bool)

(declare-fun c!866535 () Bool)

(assert (=> d!1625258 (= c!866535 ((_ is Nil!58396) (_1!34944 lt!2086682)))))

(declare-fun e!3153802 () (InoxSet T!104852))

(assert (=> d!1625258 (= (content!10398 (_1!34944 lt!2086682)) e!3153802)))

(declare-fun b!5051508 () Bool)

(assert (=> b!5051508 (= e!3153802 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051509 () Bool)

(assert (=> b!5051509 (= e!3153802 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_1!34944 lt!2086682)) true) (content!10398 (t!371159 (_1!34944 lt!2086682)))))))

(assert (= (and d!1625258 c!866535) b!5051508))

(assert (= (and d!1625258 (not c!866535)) b!5051509))

(declare-fun m!6085486 () Bool)

(assert (=> b!5051509 m!6085486))

(declare-fun m!6085488 () Bool)

(assert (=> b!5051509 m!6085488))

(assert (=> d!1625218 d!1625258))

(declare-fun d!1625260 () Bool)

(declare-fun c!866536 () Bool)

(assert (=> d!1625260 (= c!866536 ((_ is Nil!58396) (_2!34944 lt!2086682)))))

(declare-fun e!3153803 () (InoxSet T!104852))

(assert (=> d!1625260 (= (content!10398 (_2!34944 lt!2086682)) e!3153803)))

(declare-fun b!5051510 () Bool)

(assert (=> b!5051510 (= e!3153803 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051511 () Bool)

(assert (=> b!5051511 (= e!3153803 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_2!34944 lt!2086682)) true) (content!10398 (t!371159 (_2!34944 lt!2086682)))))))

(assert (= (and d!1625260 c!866536) b!5051510))

(assert (= (and d!1625260 (not c!866536)) b!5051511))

(declare-fun m!6085490 () Bool)

(assert (=> b!5051511 m!6085490))

(declare-fun m!6085492 () Bool)

(assert (=> b!5051511 m!6085492))

(assert (=> d!1625218 d!1625260))

(declare-fun d!1625262 () Bool)

(declare-fun lt!2086740 () Int)

(assert (=> d!1625262 (>= lt!2086740 0)))

(declare-fun e!3153804 () Int)

(assert (=> d!1625262 (= lt!2086740 e!3153804)))

(declare-fun c!866537 () Bool)

(assert (=> d!1625262 (= c!866537 ((_ is Nil!58396) (++!12759 l!2757 r!2041)))))

(assert (=> d!1625262 (= (size!39019 (++!12759 l!2757 r!2041)) lt!2086740)))

(declare-fun b!5051512 () Bool)

(assert (=> b!5051512 (= e!3153804 0)))

(declare-fun b!5051513 () Bool)

(assert (=> b!5051513 (= e!3153804 (+ 1 (size!39019 (t!371159 (++!12759 l!2757 r!2041)))))))

(assert (= (and d!1625262 c!866537) b!5051512))

(assert (= (and d!1625262 (not c!866537)) b!5051513))

(declare-fun m!6085494 () Bool)

(assert (=> b!5051513 m!6085494))

(assert (=> b!5051323 d!1625262))

(declare-fun d!1625264 () Bool)

(declare-fun c!866538 () Bool)

(assert (=> d!1625264 (= c!866538 ((_ is Nil!58396) (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))

(declare-fun e!3153805 () (InoxSet T!104852))

(assert (=> d!1625264 (= (content!10398 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) e!3153805)))

(declare-fun b!5051514 () Bool)

(assert (=> b!5051514 (= e!3153805 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051515 () Bool)

(assert (=> b!5051515 (= e!3153805 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) true) (content!10398 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))))

(assert (= (and d!1625264 c!866538) b!5051514))

(assert (= (and d!1625264 (not c!866538)) b!5051515))

(declare-fun m!6085496 () Bool)

(assert (=> b!5051515 m!6085496))

(declare-fun m!6085498 () Bool)

(assert (=> b!5051515 m!6085498))

(assert (=> b!5051371 d!1625264))

(declare-fun d!1625266 () Bool)

(declare-fun lt!2086741 () Int)

(assert (=> d!1625266 (>= lt!2086741 0)))

(declare-fun e!3153806 () Int)

(assert (=> d!1625266 (= lt!2086741 e!3153806)))

(declare-fun c!866539 () Bool)

(assert (=> d!1625266 (= c!866539 ((_ is Nil!58396) (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(assert (=> d!1625266 (= (size!39019 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))) lt!2086741)))

(declare-fun b!5051516 () Bool)

(assert (=> b!5051516 (= e!3153806 0)))

(declare-fun b!5051517 () Bool)

(assert (=> b!5051517 (= e!3153806 (+ 1 (size!39019 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))))

(assert (= (and d!1625266 c!866539) b!5051516))

(assert (= (and d!1625266 (not c!866539)) b!5051517))

(declare-fun m!6085500 () Bool)

(assert (=> b!5051517 m!6085500))

(assert (=> b!5051304 d!1625266))

(declare-fun b!5051521 () Bool)

(declare-fun e!3153807 () Bool)

(declare-fun lt!2086742 () List!58520)

(assert (=> b!5051521 (= e!3153807 (or (not (= (_2!34944 lt!2086697) Nil!58396)) (= lt!2086742 (_1!34944 lt!2086697))))))

(declare-fun b!5051519 () Bool)

(declare-fun e!3153808 () List!58520)

(assert (=> b!5051519 (= e!3153808 (Cons!58396 (h!64844 (_1!34944 lt!2086697)) (++!12759 (t!371159 (_1!34944 lt!2086697)) (_2!34944 lt!2086697))))))

(declare-fun b!5051518 () Bool)

(assert (=> b!5051518 (= e!3153808 (_2!34944 lt!2086697))))

(declare-fun b!5051520 () Bool)

(declare-fun res!2151195 () Bool)

(assert (=> b!5051520 (=> (not res!2151195) (not e!3153807))))

(assert (=> b!5051520 (= res!2151195 (= (size!39019 lt!2086742) (+ (size!39019 (_1!34944 lt!2086697)) (size!39019 (_2!34944 lt!2086697)))))))

(declare-fun d!1625268 () Bool)

(assert (=> d!1625268 e!3153807))

(declare-fun res!2151194 () Bool)

(assert (=> d!1625268 (=> (not res!2151194) (not e!3153807))))

(assert (=> d!1625268 (= res!2151194 (= (content!10398 lt!2086742) ((_ map or) (content!10398 (_1!34944 lt!2086697)) (content!10398 (_2!34944 lt!2086697)))))))

(assert (=> d!1625268 (= lt!2086742 e!3153808)))

(declare-fun c!866540 () Bool)

(assert (=> d!1625268 (= c!866540 ((_ is Nil!58396) (_1!34944 lt!2086697)))))

(assert (=> d!1625268 (= (++!12759 (_1!34944 lt!2086697) (_2!34944 lt!2086697)) lt!2086742)))

(assert (= (and d!1625268 c!866540) b!5051518))

(assert (= (and d!1625268 (not c!866540)) b!5051519))

(assert (= (and d!1625268 res!2151194) b!5051520))

(assert (= (and b!5051520 res!2151195) b!5051521))

(declare-fun m!6085502 () Bool)

(assert (=> b!5051519 m!6085502))

(declare-fun m!6085504 () Bool)

(assert (=> b!5051520 m!6085504))

(declare-fun m!6085506 () Bool)

(assert (=> b!5051520 m!6085506))

(declare-fun m!6085508 () Bool)

(assert (=> b!5051520 m!6085508))

(declare-fun m!6085510 () Bool)

(assert (=> d!1625268 m!6085510))

(declare-fun m!6085512 () Bool)

(assert (=> d!1625268 m!6085512))

(declare-fun m!6085514 () Bool)

(assert (=> d!1625268 m!6085514))

(assert (=> d!1625170 d!1625268))

(declare-fun d!1625270 () Bool)

(declare-fun c!866541 () Bool)

(assert (=> d!1625270 (= c!866541 ((_ is Nil!58396) lt!2086701))))

(declare-fun e!3153809 () (InoxSet T!104852))

(assert (=> d!1625270 (= (content!10398 lt!2086701) e!3153809)))

(declare-fun b!5051522 () Bool)

(assert (=> b!5051522 (= e!3153809 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051523 () Bool)

(assert (=> b!5051523 (= e!3153809 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086701) true) (content!10398 (t!371159 lt!2086701))))))

(assert (= (and d!1625270 c!866541) b!5051522))

(assert (= (and d!1625270 (not c!866541)) b!5051523))

(declare-fun m!6085516 () Bool)

(assert (=> b!5051523 m!6085516))

(declare-fun m!6085518 () Bool)

(assert (=> b!5051523 m!6085518))

(assert (=> d!1625172 d!1625270))

(declare-fun d!1625272 () Bool)

(declare-fun c!866542 () Bool)

(assert (=> d!1625272 (= c!866542 ((_ is Nil!58396) (ite c!866400 l!2757 r!2041)))))

(declare-fun e!3153810 () (InoxSet T!104852))

(assert (=> d!1625272 (= (content!10398 (ite c!866400 l!2757 r!2041)) e!3153810)))

(declare-fun b!5051524 () Bool)

(assert (=> b!5051524 (= e!3153810 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051525 () Bool)

(assert (=> b!5051525 (= e!3153810 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (ite c!866400 l!2757 r!2041)) true) (content!10398 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(assert (= (and d!1625272 c!866542) b!5051524))

(assert (= (and d!1625272 (not c!866542)) b!5051525))

(declare-fun m!6085520 () Bool)

(assert (=> b!5051525 m!6085520))

(declare-fun m!6085522 () Bool)

(assert (=> b!5051525 m!6085522))

(assert (=> d!1625172 d!1625272))

(declare-fun b!5051526 () Bool)

(declare-fun e!3153813 () Int)

(declare-fun call!351974 () Int)

(assert (=> b!5051526 (= e!3153813 call!351974)))

(declare-fun b!5051527 () Bool)

(declare-fun e!3153811 () List!58520)

(assert (=> b!5051527 (= e!3153811 (t!371159 (ite c!866400 l!2757 r!2041)))))

(declare-fun b!5051528 () Bool)

(declare-fun e!3153814 () List!58520)

(assert (=> b!5051528 (= e!3153814 Nil!58396)))

(declare-fun b!5051529 () Bool)

(declare-fun e!3153815 () Bool)

(declare-fun lt!2086743 () List!58520)

(assert (=> b!5051529 (= e!3153815 (= (size!39019 lt!2086743) e!3153813))))

(declare-fun c!866545 () Bool)

(assert (=> b!5051529 (= c!866545 (<= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 0))))

(declare-fun b!5051530 () Bool)

(assert (=> b!5051530 (= e!3153811 (drop!2685 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)))))

(declare-fun b!5051531 () Bool)

(declare-fun e!3153812 () Int)

(assert (=> b!5051531 (= e!3153813 e!3153812)))

(declare-fun c!866544 () Bool)

(assert (=> b!5051531 (= c!866544 (>= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) call!351974))))

(declare-fun d!1625274 () Bool)

(assert (=> d!1625274 e!3153815))

(declare-fun res!2151196 () Bool)

(assert (=> d!1625274 (=> (not res!2151196) (not e!3153815))))

(assert (=> d!1625274 (= res!2151196 (= ((_ map implies) (content!10398 lt!2086743) (content!10398 (t!371159 (ite c!866400 l!2757 r!2041)))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625274 (= lt!2086743 e!3153814)))

(declare-fun c!866543 () Bool)

(assert (=> d!1625274 (= c!866543 ((_ is Nil!58396) (t!371159 (ite c!866400 l!2757 r!2041))))))

(assert (=> d!1625274 (= (drop!2685 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)) lt!2086743)))

(declare-fun bm!351969 () Bool)

(assert (=> bm!351969 (= call!351974 (size!39019 (t!371159 (ite c!866400 l!2757 r!2041))))))

(declare-fun b!5051532 () Bool)

(assert (=> b!5051532 (= e!3153814 e!3153811)))

(declare-fun c!866546 () Bool)

(assert (=> b!5051532 (= c!866546 (<= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 0))))

(declare-fun b!5051533 () Bool)

(assert (=> b!5051533 (= e!3153812 0)))

(declare-fun b!5051534 () Bool)

(assert (=> b!5051534 (= e!3153812 (- call!351974 (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)))))

(assert (= (and d!1625274 c!866543) b!5051528))

(assert (= (and d!1625274 (not c!866543)) b!5051532))

(assert (= (and b!5051532 c!866546) b!5051527))

(assert (= (and b!5051532 (not c!866546)) b!5051530))

(assert (= (and d!1625274 res!2151196) b!5051529))

(assert (= (and b!5051529 c!866545) b!5051526))

(assert (= (and b!5051529 (not c!866545)) b!5051531))

(assert (= (and b!5051531 c!866544) b!5051533))

(assert (= (and b!5051531 (not c!866544)) b!5051534))

(assert (= (or b!5051526 b!5051531 b!5051534) bm!351969))

(declare-fun m!6085524 () Bool)

(assert (=> b!5051529 m!6085524))

(declare-fun m!6085526 () Bool)

(assert (=> b!5051530 m!6085526))

(declare-fun m!6085528 () Bool)

(assert (=> d!1625274 m!6085528))

(assert (=> d!1625274 m!6085522))

(declare-fun m!6085530 () Bool)

(assert (=> bm!351969 m!6085530))

(assert (=> b!5051294 d!1625274))

(declare-fun d!1625276 () Bool)

(declare-fun c!866547 () Bool)

(assert (=> d!1625276 (= c!866547 ((_ is Nil!58396) lt!2086719))))

(declare-fun e!3153816 () (InoxSet T!104852))

(assert (=> d!1625276 (= (content!10398 lt!2086719) e!3153816)))

(declare-fun b!5051535 () Bool)

(assert (=> b!5051535 (= e!3153816 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051536 () Bool)

(assert (=> b!5051536 (= e!3153816 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086719) true) (content!10398 (t!371159 lt!2086719))))))

(assert (= (and d!1625276 c!866547) b!5051535))

(assert (= (and d!1625276 (not c!866547)) b!5051536))

(declare-fun m!6085532 () Bool)

(assert (=> b!5051536 m!6085532))

(declare-fun m!6085534 () Bool)

(assert (=> b!5051536 m!6085534))

(assert (=> d!1625222 d!1625276))

(assert (=> d!1625222 d!1625264))

(assert (=> d!1625222 d!1625214))

(declare-fun d!1625278 () Bool)

(declare-fun lt!2086744 () Int)

(assert (=> d!1625278 (>= lt!2086744 0)))

(declare-fun e!3153817 () Int)

(assert (=> d!1625278 (= lt!2086744 e!3153817)))

(declare-fun c!866548 () Bool)

(assert (=> d!1625278 (= c!866548 ((_ is Nil!58396) lt!2086709))))

(assert (=> d!1625278 (= (size!39019 lt!2086709) lt!2086744)))

(declare-fun b!5051537 () Bool)

(assert (=> b!5051537 (= e!3153817 0)))

(declare-fun b!5051538 () Bool)

(assert (=> b!5051538 (= e!3153817 (+ 1 (size!39019 (t!371159 lt!2086709))))))

(assert (= (and d!1625278 c!866548) b!5051537))

(assert (= (and d!1625278 (not c!866548)) b!5051538))

(declare-fun m!6085536 () Bool)

(assert (=> b!5051538 m!6085536))

(assert (=> b!5051330 d!1625278))

(declare-fun d!1625280 () Bool)

(declare-fun lt!2086745 () Int)

(assert (=> d!1625280 (>= lt!2086745 0)))

(declare-fun e!3153818 () Int)

(assert (=> d!1625280 (= lt!2086745 e!3153818)))

(declare-fun c!866549 () Bool)

(assert (=> d!1625280 (= c!866549 ((_ is Nil!58396) (_1!34944 lt!2086672)))))

(assert (=> d!1625280 (= (size!39019 (_1!34944 lt!2086672)) lt!2086745)))

(declare-fun b!5051539 () Bool)

(assert (=> b!5051539 (= e!3153818 0)))

(declare-fun b!5051540 () Bool)

(assert (=> b!5051540 (= e!3153818 (+ 1 (size!39019 (t!371159 (_1!34944 lt!2086672)))))))

(assert (= (and d!1625280 c!866549) b!5051539))

(assert (= (and d!1625280 (not c!866549)) b!5051540))

(declare-fun m!6085538 () Bool)

(assert (=> b!5051540 m!6085538))

(assert (=> b!5051330 d!1625280))

(declare-fun d!1625282 () Bool)

(declare-fun lt!2086746 () Int)

(assert (=> d!1625282 (>= lt!2086746 0)))

(declare-fun e!3153819 () Int)

(assert (=> d!1625282 (= lt!2086746 e!3153819)))

(declare-fun c!866550 () Bool)

(assert (=> d!1625282 (= c!866550 ((_ is Nil!58396) (_2!34944 lt!2086672)))))

(assert (=> d!1625282 (= (size!39019 (_2!34944 lt!2086672)) lt!2086746)))

(declare-fun b!5051541 () Bool)

(assert (=> b!5051541 (= e!3153819 0)))

(declare-fun b!5051542 () Bool)

(assert (=> b!5051542 (= e!3153819 (+ 1 (size!39019 (t!371159 (_2!34944 lt!2086672)))))))

(assert (= (and d!1625282 c!866550) b!5051541))

(assert (= (and d!1625282 (not c!866550)) b!5051542))

(declare-fun m!6085540 () Bool)

(assert (=> b!5051542 m!6085540))

(assert (=> b!5051330 d!1625282))

(declare-fun d!1625284 () Bool)

(declare-fun lt!2086747 () Int)

(assert (=> d!1625284 (>= lt!2086747 0)))

(declare-fun e!3153820 () Int)

(assert (=> d!1625284 (= lt!2086747 e!3153820)))

(declare-fun c!866551 () Bool)

(assert (=> d!1625284 (= c!866551 ((_ is Nil!58396) (ite c!866400 l!2757 r!2041)))))

(assert (=> d!1625284 (= (size!39019 (ite c!866400 l!2757 r!2041)) lt!2086747)))

(declare-fun b!5051543 () Bool)

(assert (=> b!5051543 (= e!3153820 0)))

(declare-fun b!5051544 () Bool)

(assert (=> b!5051544 (= e!3153820 (+ 1 (size!39019 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(assert (= (and d!1625284 c!866551) b!5051543))

(assert (= (and d!1625284 (not c!866551)) b!5051544))

(assert (=> b!5051544 m!6085530))

(assert (=> bm!351963 d!1625284))

(declare-fun b!5051548 () Bool)

(declare-fun e!3153821 () Bool)

(declare-fun lt!2086748 () List!58520)

(assert (=> b!5051548 (= e!3153821 (or (not (= (_2!34944 lt!2086682) Nil!58396)) (= lt!2086748 (t!371159 (_1!34944 lt!2086682)))))))

(declare-fun b!5051546 () Bool)

(declare-fun e!3153822 () List!58520)

(assert (=> b!5051546 (= e!3153822 (Cons!58396 (h!64844 (t!371159 (_1!34944 lt!2086682))) (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086682))) (_2!34944 lt!2086682))))))

(declare-fun b!5051545 () Bool)

(assert (=> b!5051545 (= e!3153822 (_2!34944 lt!2086682))))

(declare-fun b!5051547 () Bool)

(declare-fun res!2151198 () Bool)

(assert (=> b!5051547 (=> (not res!2151198) (not e!3153821))))

(assert (=> b!5051547 (= res!2151198 (= (size!39019 lt!2086748) (+ (size!39019 (t!371159 (_1!34944 lt!2086682))) (size!39019 (_2!34944 lt!2086682)))))))

(declare-fun d!1625286 () Bool)

(assert (=> d!1625286 e!3153821))

(declare-fun res!2151197 () Bool)

(assert (=> d!1625286 (=> (not res!2151197) (not e!3153821))))

(assert (=> d!1625286 (= res!2151197 (= (content!10398 lt!2086748) ((_ map or) (content!10398 (t!371159 (_1!34944 lt!2086682))) (content!10398 (_2!34944 lt!2086682)))))))

(assert (=> d!1625286 (= lt!2086748 e!3153822)))

(declare-fun c!866552 () Bool)

(assert (=> d!1625286 (= c!866552 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086682))))))

(assert (=> d!1625286 (= (++!12759 (t!371159 (_1!34944 lt!2086682)) (_2!34944 lt!2086682)) lt!2086748)))

(assert (= (and d!1625286 c!866552) b!5051545))

(assert (= (and d!1625286 (not c!866552)) b!5051546))

(assert (= (and d!1625286 res!2151197) b!5051547))

(assert (= (and b!5051547 res!2151198) b!5051548))

(declare-fun m!6085542 () Bool)

(assert (=> b!5051546 m!6085542))

(declare-fun m!6085544 () Bool)

(assert (=> b!5051547 m!6085544))

(declare-fun m!6085546 () Bool)

(assert (=> b!5051547 m!6085546))

(assert (=> b!5051547 m!6085376))

(declare-fun m!6085548 () Bool)

(assert (=> d!1625286 m!6085548))

(assert (=> d!1625286 m!6085488))

(assert (=> d!1625286 m!6085382))

(assert (=> b!5051384 d!1625286))

(declare-fun b!5051549 () Bool)

(declare-fun e!3153825 () Int)

(declare-fun call!351975 () Int)

(assert (=> b!5051549 (= e!3153825 call!351975)))

(declare-fun b!5051550 () Bool)

(declare-fun e!3153823 () List!58520)

(assert (=> b!5051550 (= e!3153823 (t!371159 (++!12759 l!2757 r!2041)))))

(declare-fun b!5051551 () Bool)

(declare-fun e!3153826 () List!58520)

(assert (=> b!5051551 (= e!3153826 Nil!58396)))

(declare-fun b!5051552 () Bool)

(declare-fun e!3153827 () Bool)

(declare-fun lt!2086749 () List!58520)

(assert (=> b!5051552 (= e!3153827 (= (size!39019 lt!2086749) e!3153825))))

(declare-fun c!866555 () Bool)

(assert (=> b!5051552 (= c!866555 (<= (- i!652 1) 0))))

(declare-fun b!5051553 () Bool)

(assert (=> b!5051553 (= e!3153823 (drop!2685 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1)))))

(declare-fun b!5051554 () Bool)

(declare-fun e!3153824 () Int)

(assert (=> b!5051554 (= e!3153825 e!3153824)))

(declare-fun c!866554 () Bool)

(assert (=> b!5051554 (= c!866554 (>= (- i!652 1) call!351975))))

(declare-fun d!1625288 () Bool)

(assert (=> d!1625288 e!3153827))

(declare-fun res!2151199 () Bool)

(assert (=> d!1625288 (=> (not res!2151199) (not e!3153827))))

(assert (=> d!1625288 (= res!2151199 (= ((_ map implies) (content!10398 lt!2086749) (content!10398 (t!371159 (++!12759 l!2757 r!2041)))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625288 (= lt!2086749 e!3153826)))

(declare-fun c!866553 () Bool)

(assert (=> d!1625288 (= c!866553 ((_ is Nil!58396) (t!371159 (++!12759 l!2757 r!2041))))))

(assert (=> d!1625288 (= (drop!2685 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1)) lt!2086749)))

(declare-fun bm!351970 () Bool)

(assert (=> bm!351970 (= call!351975 (size!39019 (t!371159 (++!12759 l!2757 r!2041))))))

(declare-fun b!5051555 () Bool)

(assert (=> b!5051555 (= e!3153826 e!3153823)))

(declare-fun c!866556 () Bool)

(assert (=> b!5051555 (= c!866556 (<= (- i!652 1) 0))))

(declare-fun b!5051556 () Bool)

(assert (=> b!5051556 (= e!3153824 0)))

(declare-fun b!5051557 () Bool)

(assert (=> b!5051557 (= e!3153824 (- call!351975 (- i!652 1)))))

(assert (= (and d!1625288 c!866553) b!5051551))

(assert (= (and d!1625288 (not c!866553)) b!5051555))

(assert (= (and b!5051555 c!866556) b!5051550))

(assert (= (and b!5051555 (not c!866556)) b!5051553))

(assert (= (and d!1625288 res!2151199) b!5051552))

(assert (= (and b!5051552 c!866555) b!5051549))

(assert (= (and b!5051552 (not c!866555)) b!5051554))

(assert (= (and b!5051554 c!866554) b!5051556))

(assert (= (and b!5051554 (not c!866554)) b!5051557))

(assert (= (or b!5051549 b!5051554 b!5051557) bm!351970))

(declare-fun m!6085550 () Bool)

(assert (=> b!5051552 m!6085550))

(declare-fun m!6085552 () Bool)

(assert (=> b!5051553 m!6085552))

(declare-fun m!6085554 () Bool)

(assert (=> d!1625288 m!6085554))

(declare-fun m!6085556 () Bool)

(assert (=> d!1625288 m!6085556))

(assert (=> bm!351970 m!6085494))

(assert (=> b!5051378 d!1625288))

(declare-fun e!3153830 () Int)

(declare-fun b!5051559 () Bool)

(assert (=> b!5051559 (= e!3153830 (size!39019 (t!371159 (ite c!866400 l!2757 r!2041))))))

(declare-fun b!5051560 () Bool)

(declare-fun e!3153828 () Int)

(assert (=> b!5051560 (= e!3153828 e!3153830)))

(declare-fun c!866557 () Bool)

(assert (=> b!5051560 (= c!866557 (>= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) (size!39019 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(declare-fun b!5051561 () Bool)

(declare-fun e!3153829 () Bool)

(declare-fun lt!2086750 () List!58520)

(assert (=> b!5051561 (= e!3153829 (= (size!39019 lt!2086750) e!3153828))))

(declare-fun c!866558 () Bool)

(assert (=> b!5051561 (= c!866558 (<= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 0))))

(declare-fun b!5051562 () Bool)

(assert (=> b!5051562 (= e!3153830 (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1))))

(declare-fun e!3153831 () List!58520)

(declare-fun b!5051563 () Bool)

(assert (=> b!5051563 (= e!3153831 (Cons!58396 (h!64844 (t!371159 (ite c!866400 l!2757 r!2041))) (take!887 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1))))))

(declare-fun b!5051564 () Bool)

(assert (=> b!5051564 (= e!3153831 Nil!58396)))

(declare-fun d!1625290 () Bool)

(assert (=> d!1625290 e!3153829))

(declare-fun res!2151200 () Bool)

(assert (=> d!1625290 (=> (not res!2151200) (not e!3153829))))

(assert (=> d!1625290 (= res!2151200 (= ((_ map implies) (content!10398 lt!2086750) (content!10398 (t!371159 (ite c!866400 l!2757 r!2041)))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625290 (= lt!2086750 e!3153831)))

(declare-fun c!866559 () Bool)

(assert (=> d!1625290 (= c!866559 (or ((_ is Nil!58396) (t!371159 (ite c!866400 l!2757 r!2041))) (<= (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 0)))))

(assert (=> d!1625290 (= (take!887 (t!371159 (ite c!866400 l!2757 r!2041)) (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1)) lt!2086750)))

(declare-fun b!5051558 () Bool)

(assert (=> b!5051558 (= e!3153828 0)))

(assert (= (and d!1625290 c!866559) b!5051564))

(assert (= (and d!1625290 (not c!866559)) b!5051563))

(assert (= (and d!1625290 res!2151200) b!5051561))

(assert (= (and b!5051561 c!866558) b!5051558))

(assert (= (and b!5051561 (not c!866558)) b!5051560))

(assert (= (and b!5051560 c!866557) b!5051559))

(assert (= (and b!5051560 (not c!866557)) b!5051562))

(assert (=> b!5051560 m!6085530))

(declare-fun m!6085558 () Bool)

(assert (=> b!5051561 m!6085558))

(assert (=> b!5051559 m!6085530))

(declare-fun m!6085560 () Bool)

(assert (=> b!5051563 m!6085560))

(declare-fun m!6085562 () Bool)

(assert (=> d!1625290 m!6085562))

(assert (=> d!1625290 m!6085522))

(assert (=> b!5051266 d!1625290))

(declare-fun c!866560 () Bool)

(declare-fun d!1625292 () Bool)

(assert (=> d!1625292 (= c!866560 ((_ is Nil!58396) (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(declare-fun e!3153832 () (InoxSet T!104852))

(assert (=> d!1625292 (= (content!10398 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))) e!3153832)))

(declare-fun b!5051565 () Bool)

(assert (=> b!5051565 (= e!3153832 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051566 () Bool)

(assert (=> b!5051566 (= e!3153832 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))) true) (content!10398 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))))

(assert (= (and d!1625292 c!866560) b!5051565))

(assert (= (and d!1625292 (not c!866560)) b!5051566))

(declare-fun m!6085564 () Bool)

(assert (=> b!5051566 m!6085564))

(declare-fun m!6085566 () Bool)

(assert (=> b!5051566 m!6085566))

(assert (=> b!5051373 d!1625292))

(declare-fun b!5051567 () Bool)

(declare-fun res!2151202 () Bool)

(declare-fun e!3153834 () Bool)

(assert (=> b!5051567 (=> (not res!2151202) (not e!3153834))))

(declare-fun lt!2086751 () tuple2!63282)

(assert (=> b!5051567 (= res!2151202 (= (_1!34944 lt!2086751) (take!887 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1))))))

(declare-fun d!1625294 () Bool)

(assert (=> d!1625294 e!3153834))

(declare-fun res!2151201 () Bool)

(assert (=> d!1625294 (=> (not res!2151201) (not e!3153834))))

(assert (=> d!1625294 (= res!2151201 (= (++!12759 (_1!34944 lt!2086751) (_2!34944 lt!2086751)) (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(declare-fun e!3153833 () tuple2!63282)

(assert (=> d!1625294 (= lt!2086751 e!3153833)))

(declare-fun c!866561 () Bool)

(assert (=> d!1625294 (= c!866561 ((_ is Nil!58396) (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(assert (=> d!1625294 (= (splitAtIndex!227 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1)) lt!2086751)))

(declare-fun b!5051568 () Bool)

(assert (=> b!5051568 (= e!3153834 (= (_2!34944 lt!2086751) (drop!2685 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1))))))

(declare-fun b!5051569 () Bool)

(assert (=> b!5051569 (= e!3153833 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun lt!2086752 () tuple2!63282)

(declare-fun b!5051570 () Bool)

(assert (=> b!5051570 (= lt!2086752 (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1)))))

(declare-fun e!3153835 () tuple2!63282)

(assert (=> b!5051570 (= e!3153835 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (_1!34944 lt!2086752)) (_2!34944 lt!2086752)))))

(declare-fun b!5051571 () Bool)

(assert (=> b!5051571 (= e!3153833 e!3153835)))

(declare-fun c!866562 () Bool)

(assert (=> b!5051571 (= c!866562 (<= (- (- i!652 1) 1) 0))))

(declare-fun b!5051572 () Bool)

(assert (=> b!5051572 (= e!3153835 (tuple2!63283 Nil!58396 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(assert (= (and d!1625294 c!866561) b!5051569))

(assert (= (and d!1625294 (not c!866561)) b!5051571))

(assert (= (and b!5051571 c!866562) b!5051572))

(assert (= (and b!5051571 (not c!866562)) b!5051570))

(assert (= (and d!1625294 res!2151201) b!5051567))

(assert (= (and b!5051567 res!2151202) b!5051568))

(declare-fun m!6085568 () Bool)

(assert (=> b!5051567 m!6085568))

(declare-fun m!6085570 () Bool)

(assert (=> d!1625294 m!6085570))

(assert (=> b!5051568 m!6085552))

(declare-fun m!6085572 () Bool)

(assert (=> b!5051570 m!6085572))

(assert (=> b!5051363 d!1625294))

(declare-fun d!1625296 () Bool)

(declare-fun lt!2086753 () Int)

(assert (=> d!1625296 (>= lt!2086753 0)))

(declare-fun e!3153836 () Int)

(assert (=> d!1625296 (= lt!2086753 e!3153836)))

(declare-fun c!866563 () Bool)

(assert (=> d!1625296 (= c!866563 ((_ is Nil!58396) (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))

(assert (=> d!1625296 (= (size!39019 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) lt!2086753)))

(declare-fun b!5051573 () Bool)

(assert (=> b!5051573 (= e!3153836 0)))

(declare-fun b!5051574 () Bool)

(assert (=> b!5051574 (= e!3153836 (+ 1 (size!39019 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))))

(assert (= (and d!1625296 c!866563) b!5051573))

(assert (= (and d!1625296 (not c!866563)) b!5051574))

(declare-fun m!6085574 () Bool)

(assert (=> b!5051574 m!6085574))

(assert (=> b!5051302 d!1625296))

(declare-fun lt!2086754 () List!58520)

(declare-fun e!3153837 () Bool)

(declare-fun b!5051578 () Bool)

(assert (=> b!5051578 (= e!3153837 (or (not (= (ite c!866400 r!2041 (_1!34944 lt!2086663)) Nil!58396)) (= lt!2086754 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))))

(declare-fun e!3153838 () List!58520)

(declare-fun b!5051576 () Bool)

(assert (=> b!5051576 (= e!3153838 (Cons!58396 (h!64844 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) (++!12759 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(declare-fun b!5051575 () Bool)

(assert (=> b!5051575 (= e!3153838 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))

(declare-fun b!5051577 () Bool)

(declare-fun res!2151204 () Bool)

(assert (=> b!5051577 (=> (not res!2151204) (not e!3153837))))

(assert (=> b!5051577 (= res!2151204 (= (size!39019 lt!2086754) (+ (size!39019 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) (size!39019 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(declare-fun d!1625298 () Bool)

(assert (=> d!1625298 e!3153837))

(declare-fun res!2151203 () Bool)

(assert (=> d!1625298 (=> (not res!2151203) (not e!3153837))))

(assert (=> d!1625298 (= res!2151203 (= (content!10398 lt!2086754) ((_ map or) (content!10398 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) (content!10398 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (=> d!1625298 (= lt!2086754 e!3153838)))

(declare-fun c!866564 () Bool)

(assert (=> d!1625298 (= c!866564 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(assert (=> d!1625298 (= (++!12759 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))) (ite c!866400 r!2041 (_1!34944 lt!2086663))) lt!2086754)))

(assert (= (and d!1625298 c!866564) b!5051575))

(assert (= (and d!1625298 (not c!866564)) b!5051576))

(assert (= (and d!1625298 res!2151203) b!5051577))

(assert (= (and b!5051577 res!2151204) b!5051578))

(declare-fun m!6085576 () Bool)

(assert (=> b!5051576 m!6085576))

(declare-fun m!6085578 () Bool)

(assert (=> b!5051577 m!6085578))

(assert (=> b!5051577 m!6085574))

(assert (=> b!5051577 m!6085184))

(declare-fun m!6085580 () Bool)

(assert (=> d!1625298 m!6085580))

(assert (=> d!1625298 m!6085498))

(assert (=> d!1625298 m!6085192))

(assert (=> b!5051395 d!1625298))

(assert (=> b!5051361 d!1625288))

(declare-fun d!1625300 () Bool)

(declare-fun lt!2086755 () Int)

(assert (=> d!1625300 (>= lt!2086755 0)))

(declare-fun e!3153839 () Int)

(assert (=> d!1625300 (= lt!2086755 e!3153839)))

(declare-fun c!866565 () Bool)

(assert (=> d!1625300 (= c!866565 ((_ is Nil!58396) lt!2086696))))

(assert (=> d!1625300 (= (size!39019 lt!2086696) lt!2086755)))

(declare-fun b!5051579 () Bool)

(assert (=> b!5051579 (= e!3153839 0)))

(declare-fun b!5051580 () Bool)

(assert (=> b!5051580 (= e!3153839 (+ 1 (size!39019 (t!371159 lt!2086696))))))

(assert (= (and d!1625300 c!866565) b!5051579))

(assert (= (and d!1625300 (not c!866565)) b!5051580))

(declare-fun m!6085582 () Bool)

(assert (=> b!5051580 m!6085582))

(assert (=> b!5051264 d!1625300))

(assert (=> b!5051264 d!1625180))

(assert (=> b!5051264 d!1625160))

(assert (=> bm!351964 d!1625262))

(assert (=> b!5051388 d!1625284))

(declare-fun d!1625302 () Bool)

(declare-fun c!866566 () Bool)

(assert (=> d!1625302 (= c!866566 ((_ is Nil!58396) lt!2086709))))

(declare-fun e!3153840 () (InoxSet T!104852))

(assert (=> d!1625302 (= (content!10398 lt!2086709) e!3153840)))

(declare-fun b!5051581 () Bool)

(assert (=> b!5051581 (= e!3153840 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051582 () Bool)

(assert (=> b!5051582 (= e!3153840 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086709) true) (content!10398 (t!371159 lt!2086709))))))

(assert (= (and d!1625302 c!866566) b!5051581))

(assert (= (and d!1625302 (not c!866566)) b!5051582))

(declare-fun m!6085584 () Bool)

(assert (=> b!5051582 m!6085584))

(declare-fun m!6085586 () Bool)

(assert (=> b!5051582 m!6085586))

(assert (=> d!1625186 d!1625302))

(declare-fun d!1625304 () Bool)

(declare-fun c!866567 () Bool)

(assert (=> d!1625304 (= c!866567 ((_ is Nil!58396) (_1!34944 lt!2086672)))))

(declare-fun e!3153841 () (InoxSet T!104852))

(assert (=> d!1625304 (= (content!10398 (_1!34944 lt!2086672)) e!3153841)))

(declare-fun b!5051583 () Bool)

(assert (=> b!5051583 (= e!3153841 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051584 () Bool)

(assert (=> b!5051584 (= e!3153841 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_1!34944 lt!2086672)) true) (content!10398 (t!371159 (_1!34944 lt!2086672)))))))

(assert (= (and d!1625304 c!866567) b!5051583))

(assert (= (and d!1625304 (not c!866567)) b!5051584))

(declare-fun m!6085588 () Bool)

(assert (=> b!5051584 m!6085588))

(declare-fun m!6085590 () Bool)

(assert (=> b!5051584 m!6085590))

(assert (=> d!1625186 d!1625304))

(declare-fun d!1625306 () Bool)

(declare-fun c!866568 () Bool)

(assert (=> d!1625306 (= c!866568 ((_ is Nil!58396) (_2!34944 lt!2086672)))))

(declare-fun e!3153842 () (InoxSet T!104852))

(assert (=> d!1625306 (= (content!10398 (_2!34944 lt!2086672)) e!3153842)))

(declare-fun b!5051585 () Bool)

(assert (=> b!5051585 (= e!3153842 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051586 () Bool)

(assert (=> b!5051586 (= e!3153842 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_2!34944 lt!2086672)) true) (content!10398 (t!371159 (_2!34944 lt!2086672)))))))

(assert (= (and d!1625306 c!866568) b!5051585))

(assert (= (and d!1625306 (not c!866568)) b!5051586))

(declare-fun m!6085592 () Bool)

(assert (=> b!5051586 m!6085592))

(declare-fun m!6085594 () Bool)

(assert (=> b!5051586 m!6085594))

(assert (=> d!1625186 d!1625306))

(declare-fun d!1625308 () Bool)

(declare-fun c!866569 () Bool)

(assert (=> d!1625308 (= c!866569 ((_ is Nil!58396) (t!371159 r!2041)))))

(declare-fun e!3153843 () (InoxSet T!104852))

(assert (=> d!1625308 (= (content!10398 (t!371159 r!2041)) e!3153843)))

(declare-fun b!5051587 () Bool)

(assert (=> b!5051587 (= e!3153843 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051588 () Bool)

(assert (=> b!5051588 (= e!3153843 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 r!2041)) true) (content!10398 (t!371159 (t!371159 r!2041)))))))

(assert (= (and d!1625308 c!866569) b!5051587))

(assert (= (and d!1625308 (not c!866569)) b!5051588))

(declare-fun m!6085596 () Bool)

(assert (=> b!5051588 m!6085596))

(declare-fun m!6085598 () Bool)

(assert (=> b!5051588 m!6085598))

(assert (=> b!5051353 d!1625308))

(declare-fun d!1625310 () Bool)

(declare-fun c!866570 () Bool)

(assert (=> d!1625310 (= c!866570 ((_ is Nil!58396) lt!2086716))))

(declare-fun e!3153844 () (InoxSet T!104852))

(assert (=> d!1625310 (= (content!10398 lt!2086716) e!3153844)))

(declare-fun b!5051589 () Bool)

(assert (=> b!5051589 (= e!3153844 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051590 () Bool)

(assert (=> b!5051590 (= e!3153844 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086716) true) (content!10398 (t!371159 lt!2086716))))))

(assert (= (and d!1625310 c!866570) b!5051589))

(assert (= (and d!1625310 (not c!866570)) b!5051590))

(declare-fun m!6085600 () Bool)

(assert (=> b!5051590 m!6085600))

(declare-fun m!6085602 () Bool)

(assert (=> b!5051590 m!6085602))

(assert (=> d!1625216 d!1625310))

(declare-fun d!1625312 () Bool)

(declare-fun c!866571 () Bool)

(assert (=> d!1625312 (= c!866571 ((_ is Nil!58396) (++!12759 l!2757 r!2041)))))

(declare-fun e!3153845 () (InoxSet T!104852))

(assert (=> d!1625312 (= (content!10398 (++!12759 l!2757 r!2041)) e!3153845)))

(declare-fun b!5051591 () Bool)

(assert (=> b!5051591 (= e!3153845 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051592 () Bool)

(assert (=> b!5051592 (= e!3153845 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (++!12759 l!2757 r!2041)) true) (content!10398 (t!371159 (++!12759 l!2757 r!2041)))))))

(assert (= (and d!1625312 c!866571) b!5051591))

(assert (= (and d!1625312 (not c!866571)) b!5051592))

(declare-fun m!6085604 () Bool)

(assert (=> b!5051592 m!6085604))

(assert (=> b!5051592 m!6085556))

(assert (=> d!1625216 d!1625312))

(assert (=> b!5051322 d!1625262))

(declare-fun d!1625314 () Bool)

(declare-fun lt!2086756 () Int)

(assert (=> d!1625314 (>= lt!2086756 0)))

(declare-fun e!3153846 () Int)

(assert (=> d!1625314 (= lt!2086756 e!3153846)))

(declare-fun c!866572 () Bool)

(assert (=> d!1625314 (= c!866572 ((_ is Nil!58396) (t!371159 lt!2086685)))))

(assert (=> d!1625314 (= (size!39019 (t!371159 lt!2086685)) lt!2086756)))

(declare-fun b!5051593 () Bool)

(assert (=> b!5051593 (= e!3153846 0)))

(declare-fun b!5051594 () Bool)

(assert (=> b!5051594 (= e!3153846 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086685)))))))

(assert (= (and d!1625314 c!866572) b!5051593))

(assert (= (and d!1625314 (not c!866572)) b!5051594))

(declare-fun m!6085606 () Bool)

(assert (=> b!5051594 m!6085606))

(assert (=> b!5051359 d!1625314))

(declare-fun d!1625316 () Bool)

(declare-fun c!866573 () Bool)

(assert (=> d!1625316 (= c!866573 ((_ is Nil!58396) (t!371159 l!2757)))))

(declare-fun e!3153847 () (InoxSet T!104852))

(assert (=> d!1625316 (= (content!10398 (t!371159 l!2757)) e!3153847)))

(declare-fun b!5051595 () Bool)

(assert (=> b!5051595 (= e!3153847 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051596 () Bool)

(assert (=> b!5051596 (= e!3153847 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 l!2757)) true) (content!10398 (t!371159 (t!371159 l!2757)))))))

(assert (= (and d!1625316 c!866573) b!5051595))

(assert (= (and d!1625316 (not c!866573)) b!5051596))

(declare-fun m!6085608 () Bool)

(assert (=> b!5051596 m!6085608))

(declare-fun m!6085610 () Bool)

(assert (=> b!5051596 m!6085610))

(assert (=> b!5051349 d!1625316))

(declare-fun d!1625318 () Bool)

(declare-fun lt!2086757 () Int)

(assert (=> d!1625318 (>= lt!2086757 0)))

(declare-fun e!3153848 () Int)

(assert (=> d!1625318 (= lt!2086757 e!3153848)))

(declare-fun c!866574 () Bool)

(assert (=> d!1625318 (= c!866574 ((_ is Nil!58396) lt!2086718))))

(assert (=> d!1625318 (= (size!39019 lt!2086718) lt!2086757)))

(declare-fun b!5051597 () Bool)

(assert (=> b!5051597 (= e!3153848 0)))

(declare-fun b!5051598 () Bool)

(assert (=> b!5051598 (= e!3153848 (+ 1 (size!39019 (t!371159 lt!2086718))))))

(assert (= (and d!1625318 c!866574) b!5051597))

(assert (= (and d!1625318 (not c!866574)) b!5051598))

(declare-fun m!6085612 () Bool)

(assert (=> b!5051598 m!6085612))

(assert (=> b!5051390 d!1625318))

(declare-fun d!1625320 () Bool)

(declare-fun lt!2086758 () Int)

(assert (=> d!1625320 (>= lt!2086758 0)))

(declare-fun e!3153849 () Int)

(assert (=> d!1625320 (= lt!2086758 e!3153849)))

(declare-fun c!866575 () Bool)

(assert (=> d!1625320 (= c!866575 ((_ is Nil!58396) (t!371159 (t!371159 r!2041))))))

(assert (=> d!1625320 (= (size!39019 (t!371159 (t!371159 r!2041))) lt!2086758)))

(declare-fun b!5051599 () Bool)

(assert (=> b!5051599 (= e!3153849 0)))

(declare-fun b!5051600 () Bool)

(assert (=> b!5051600 (= e!3153849 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 r!2041))))))))

(assert (= (and d!1625320 c!866575) b!5051599))

(assert (= (and d!1625320 (not c!866575)) b!5051600))

(declare-fun m!6085614 () Bool)

(assert (=> b!5051600 m!6085614))

(assert (=> b!5051403 d!1625320))

(assert (=> b!5051392 d!1625290))

(declare-fun d!1625322 () Bool)

(declare-fun lt!2086759 () Int)

(assert (=> d!1625322 (>= lt!2086759 0)))

(declare-fun e!3153850 () Int)

(assert (=> d!1625322 (= lt!2086759 e!3153850)))

(declare-fun c!866576 () Bool)

(assert (=> d!1625322 (= c!866576 ((_ is Nil!58396) lt!2086708))))

(assert (=> d!1625322 (= (size!39019 lt!2086708) lt!2086759)))

(declare-fun b!5051601 () Bool)

(assert (=> b!5051601 (= e!3153850 0)))

(declare-fun b!5051602 () Bool)

(assert (=> b!5051602 (= e!3153850 (+ 1 (size!39019 (t!371159 lt!2086708))))))

(assert (= (and d!1625322 c!866576) b!5051601))

(assert (= (and d!1625322 (not c!866576)) b!5051602))

(declare-fun m!6085616 () Bool)

(assert (=> b!5051602 m!6085616))

(assert (=> b!5051324 d!1625322))

(declare-fun d!1625324 () Bool)

(declare-fun c!866577 () Bool)

(assert (=> d!1625324 (= c!866577 ((_ is Nil!58396) lt!2086696))))

(declare-fun e!3153851 () (InoxSet T!104852))

(assert (=> d!1625324 (= (content!10398 lt!2086696) e!3153851)))

(declare-fun b!5051603 () Bool)

(assert (=> b!5051603 (= e!3153851 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051604 () Bool)

(assert (=> b!5051604 (= e!3153851 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086696) true) (content!10398 (t!371159 lt!2086696))))))

(assert (= (and d!1625324 c!866577) b!5051603))

(assert (= (and d!1625324 (not c!866577)) b!5051604))

(declare-fun m!6085618 () Bool)

(assert (=> b!5051604 m!6085618))

(declare-fun m!6085620 () Bool)

(assert (=> b!5051604 m!6085620))

(assert (=> d!1625168 d!1625324))

(assert (=> d!1625168 d!1625316))

(assert (=> d!1625168 d!1625198))

(declare-fun b!5051608 () Bool)

(declare-fun e!3153852 () Bool)

(declare-fun lt!2086760 () List!58520)

(assert (=> b!5051608 (= e!3153852 (or (not (= (_2!34944 lt!2086672) Nil!58396)) (= lt!2086760 (t!371159 (_1!34944 lt!2086672)))))))

(declare-fun b!5051606 () Bool)

(declare-fun e!3153853 () List!58520)

(assert (=> b!5051606 (= e!3153853 (Cons!58396 (h!64844 (t!371159 (_1!34944 lt!2086672))) (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086672))) (_2!34944 lt!2086672))))))

(declare-fun b!5051605 () Bool)

(assert (=> b!5051605 (= e!3153853 (_2!34944 lt!2086672))))

(declare-fun b!5051607 () Bool)

(declare-fun res!2151206 () Bool)

(assert (=> b!5051607 (=> (not res!2151206) (not e!3153852))))

(assert (=> b!5051607 (= res!2151206 (= (size!39019 lt!2086760) (+ (size!39019 (t!371159 (_1!34944 lt!2086672))) (size!39019 (_2!34944 lt!2086672)))))))

(declare-fun d!1625326 () Bool)

(assert (=> d!1625326 e!3153852))

(declare-fun res!2151205 () Bool)

(assert (=> d!1625326 (=> (not res!2151205) (not e!3153852))))

(assert (=> d!1625326 (= res!2151205 (= (content!10398 lt!2086760) ((_ map or) (content!10398 (t!371159 (_1!34944 lt!2086672))) (content!10398 (_2!34944 lt!2086672)))))))

(assert (=> d!1625326 (= lt!2086760 e!3153853)))

(declare-fun c!866578 () Bool)

(assert (=> d!1625326 (= c!866578 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086672))))))

(assert (=> d!1625326 (= (++!12759 (t!371159 (_1!34944 lt!2086672)) (_2!34944 lt!2086672)) lt!2086760)))

(assert (= (and d!1625326 c!866578) b!5051605))

(assert (= (and d!1625326 (not c!866578)) b!5051606))

(assert (= (and d!1625326 res!2151205) b!5051607))

(assert (= (and b!5051607 res!2151206) b!5051608))

(declare-fun m!6085622 () Bool)

(assert (=> b!5051606 m!6085622))

(declare-fun m!6085624 () Bool)

(assert (=> b!5051607 m!6085624))

(assert (=> b!5051607 m!6085538))

(assert (=> b!5051607 m!6085298))

(declare-fun m!6085626 () Bool)

(assert (=> d!1625326 m!6085626))

(assert (=> d!1625326 m!6085590))

(assert (=> d!1625326 m!6085304))

(assert (=> b!5051329 d!1625326))

(declare-fun b!5051610 () Bool)

(declare-fun e!3153856 () Int)

(assert (=> b!5051610 (= e!3153856 (size!39019 (t!371159 (++!12759 l!2757 r!2041))))))

(declare-fun b!5051611 () Bool)

(declare-fun e!3153854 () Int)

(assert (=> b!5051611 (= e!3153854 e!3153856)))

(declare-fun c!866579 () Bool)

(assert (=> b!5051611 (= c!866579 (>= (- i!652 1) (size!39019 (t!371159 (++!12759 l!2757 r!2041)))))))

(declare-fun b!5051612 () Bool)

(declare-fun e!3153855 () Bool)

(declare-fun lt!2086761 () List!58520)

(assert (=> b!5051612 (= e!3153855 (= (size!39019 lt!2086761) e!3153854))))

(declare-fun c!866580 () Bool)

(assert (=> b!5051612 (= c!866580 (<= (- i!652 1) 0))))

(declare-fun b!5051613 () Bool)

(assert (=> b!5051613 (= e!3153856 (- i!652 1))))

(declare-fun e!3153857 () List!58520)

(declare-fun b!5051614 () Bool)

(assert (=> b!5051614 (= e!3153857 (Cons!58396 (h!64844 (t!371159 (++!12759 l!2757 r!2041))) (take!887 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1))))))

(declare-fun b!5051615 () Bool)

(assert (=> b!5051615 (= e!3153857 Nil!58396)))

(declare-fun d!1625328 () Bool)

(assert (=> d!1625328 e!3153855))

(declare-fun res!2151207 () Bool)

(assert (=> d!1625328 (=> (not res!2151207) (not e!3153855))))

(assert (=> d!1625328 (= res!2151207 (= ((_ map implies) (content!10398 lt!2086761) (content!10398 (t!371159 (++!12759 l!2757 r!2041)))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625328 (= lt!2086761 e!3153857)))

(declare-fun c!866581 () Bool)

(assert (=> d!1625328 (= c!866581 (or ((_ is Nil!58396) (t!371159 (++!12759 l!2757 r!2041))) (<= (- i!652 1) 0)))))

(assert (=> d!1625328 (= (take!887 (t!371159 (++!12759 l!2757 r!2041)) (- i!652 1)) lt!2086761)))

(declare-fun b!5051609 () Bool)

(assert (=> b!5051609 (= e!3153854 0)))

(assert (= (and d!1625328 c!866581) b!5051615))

(assert (= (and d!1625328 (not c!866581)) b!5051614))

(assert (= (and d!1625328 res!2151207) b!5051612))

(assert (= (and b!5051612 c!866580) b!5051609))

(assert (= (and b!5051612 (not c!866580)) b!5051611))

(assert (= (and b!5051611 c!866579) b!5051610))

(assert (= (and b!5051611 (not c!866579)) b!5051613))

(assert (=> b!5051611 m!6085494))

(declare-fun m!6085628 () Bool)

(assert (=> b!5051612 m!6085628))

(assert (=> b!5051610 m!6085494))

(assert (=> b!5051614 m!6085568))

(declare-fun m!6085630 () Bool)

(assert (=> d!1625328 m!6085630))

(assert (=> d!1625328 m!6085556))

(assert (=> b!5051326 d!1625328))

(declare-fun b!5051619 () Bool)

(declare-fun e!3153858 () Bool)

(declare-fun lt!2086762 () List!58520)

(assert (=> b!5051619 (= e!3153858 (or (not (= (_2!34944 lt!2086713) Nil!58396)) (= lt!2086762 (_1!34944 lt!2086713))))))

(declare-fun b!5051617 () Bool)

(declare-fun e!3153859 () List!58520)

(assert (=> b!5051617 (= e!3153859 (Cons!58396 (h!64844 (_1!34944 lt!2086713)) (++!12759 (t!371159 (_1!34944 lt!2086713)) (_2!34944 lt!2086713))))))

(declare-fun b!5051616 () Bool)

(assert (=> b!5051616 (= e!3153859 (_2!34944 lt!2086713))))

(declare-fun b!5051618 () Bool)

(declare-fun res!2151209 () Bool)

(assert (=> b!5051618 (=> (not res!2151209) (not e!3153858))))

(assert (=> b!5051618 (= res!2151209 (= (size!39019 lt!2086762) (+ (size!39019 (_1!34944 lt!2086713)) (size!39019 (_2!34944 lt!2086713)))))))

(declare-fun d!1625330 () Bool)

(assert (=> d!1625330 e!3153858))

(declare-fun res!2151208 () Bool)

(assert (=> d!1625330 (=> (not res!2151208) (not e!3153858))))

(assert (=> d!1625330 (= res!2151208 (= (content!10398 lt!2086762) ((_ map or) (content!10398 (_1!34944 lt!2086713)) (content!10398 (_2!34944 lt!2086713)))))))

(assert (=> d!1625330 (= lt!2086762 e!3153859)))

(declare-fun c!866582 () Bool)

(assert (=> d!1625330 (= c!866582 ((_ is Nil!58396) (_1!34944 lt!2086713)))))

(assert (=> d!1625330 (= (++!12759 (_1!34944 lt!2086713) (_2!34944 lt!2086713)) lt!2086762)))

(assert (= (and d!1625330 c!866582) b!5051616))

(assert (= (and d!1625330 (not c!866582)) b!5051617))

(assert (= (and d!1625330 res!2151208) b!5051618))

(assert (= (and b!5051618 res!2151209) b!5051619))

(declare-fun m!6085632 () Bool)

(assert (=> b!5051617 m!6085632))

(declare-fun m!6085634 () Bool)

(assert (=> b!5051618 m!6085634))

(declare-fun m!6085636 () Bool)

(assert (=> b!5051618 m!6085636))

(declare-fun m!6085638 () Bool)

(assert (=> b!5051618 m!6085638))

(declare-fun m!6085640 () Bool)

(assert (=> d!1625330 m!6085640))

(declare-fun m!6085642 () Bool)

(assert (=> d!1625330 m!6085642))

(declare-fun m!6085644 () Bool)

(assert (=> d!1625330 m!6085644))

(assert (=> d!1625204 d!1625330))

(declare-fun d!1625332 () Bool)

(declare-fun lt!2086763 () Int)

(assert (=> d!1625332 (>= lt!2086763 0)))

(declare-fun e!3153860 () Int)

(assert (=> d!1625332 (= lt!2086763 e!3153860)))

(declare-fun c!866583 () Bool)

(assert (=> d!1625332 (= c!866583 ((_ is Nil!58396) lt!2086701))))

(assert (=> d!1625332 (= (size!39019 lt!2086701) lt!2086763)))

(declare-fun b!5051620 () Bool)

(assert (=> b!5051620 (= e!3153860 0)))

(declare-fun b!5051621 () Bool)

(assert (=> b!5051621 (= e!3153860 (+ 1 (size!39019 (t!371159 lt!2086701))))))

(assert (= (and d!1625332 c!866583) b!5051620))

(assert (= (and d!1625332 (not c!866583)) b!5051621))

(declare-fun m!6085646 () Bool)

(assert (=> b!5051621 m!6085646))

(assert (=> b!5051293 d!1625332))

(declare-fun d!1625334 () Bool)

(declare-fun c!866584 () Bool)

(assert (=> d!1625334 (= c!866584 ((_ is Nil!58396) lt!2086718))))

(declare-fun e!3153861 () (InoxSet T!104852))

(assert (=> d!1625334 (= (content!10398 lt!2086718) e!3153861)))

(declare-fun b!5051622 () Bool)

(assert (=> b!5051622 (= e!3153861 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051623 () Bool)

(assert (=> b!5051623 (= e!3153861 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086718) true) (content!10398 (t!371159 lt!2086718))))))

(assert (= (and d!1625334 c!866584) b!5051622))

(assert (= (and d!1625334 (not c!866584)) b!5051623))

(declare-fun m!6085648 () Bool)

(assert (=> b!5051623 m!6085648))

(declare-fun m!6085650 () Bool)

(assert (=> b!5051623 m!6085650))

(assert (=> d!1625220 d!1625334))

(assert (=> d!1625220 d!1625272))

(declare-fun d!1625336 () Bool)

(declare-fun lt!2086764 () Int)

(assert (=> d!1625336 (>= lt!2086764 0)))

(declare-fun e!3153862 () Int)

(assert (=> d!1625336 (= lt!2086764 e!3153862)))

(declare-fun c!866585 () Bool)

(assert (=> d!1625336 (= c!866585 ((_ is Nil!58396) (t!371159 lt!2086680)))))

(assert (=> d!1625336 (= (size!39019 (t!371159 lt!2086680)) lt!2086764)))

(declare-fun b!5051624 () Bool)

(assert (=> b!5051624 (= e!3153862 0)))

(declare-fun b!5051625 () Bool)

(assert (=> b!5051625 (= e!3153862 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086680)))))))

(assert (= (and d!1625336 c!866585) b!5051624))

(assert (= (and d!1625336 (not c!866585)) b!5051625))

(declare-fun m!6085652 () Bool)

(assert (=> b!5051625 m!6085652))

(assert (=> b!5051300 d!1625336))

(declare-fun lt!2086765 () List!58520)

(declare-fun b!5051629 () Bool)

(declare-fun e!3153863 () Bool)

(assert (=> b!5051629 (= e!3153863 (or (not (= r!2041 Nil!58396)) (= lt!2086765 (t!371159 (t!371159 l!2757)))))))

(declare-fun b!5051627 () Bool)

(declare-fun e!3153864 () List!58520)

(assert (=> b!5051627 (= e!3153864 (Cons!58396 (h!64844 (t!371159 (t!371159 l!2757))) (++!12759 (t!371159 (t!371159 (t!371159 l!2757))) r!2041)))))

(declare-fun b!5051626 () Bool)

(assert (=> b!5051626 (= e!3153864 r!2041)))

(declare-fun b!5051628 () Bool)

(declare-fun res!2151211 () Bool)

(assert (=> b!5051628 (=> (not res!2151211) (not e!3153863))))

(assert (=> b!5051628 (= res!2151211 (= (size!39019 lt!2086765) (+ (size!39019 (t!371159 (t!371159 l!2757))) (size!39019 r!2041))))))

(declare-fun d!1625338 () Bool)

(assert (=> d!1625338 e!3153863))

(declare-fun res!2151210 () Bool)

(assert (=> d!1625338 (=> (not res!2151210) (not e!3153863))))

(assert (=> d!1625338 (= res!2151210 (= (content!10398 lt!2086765) ((_ map or) (content!10398 (t!371159 (t!371159 l!2757))) (content!10398 r!2041))))))

(assert (=> d!1625338 (= lt!2086765 e!3153864)))

(declare-fun c!866586 () Bool)

(assert (=> d!1625338 (= c!866586 ((_ is Nil!58396) (t!371159 (t!371159 l!2757))))))

(assert (=> d!1625338 (= (++!12759 (t!371159 (t!371159 l!2757)) r!2041) lt!2086765)))

(assert (= (and d!1625338 c!866586) b!5051626))

(assert (= (and d!1625338 (not c!866586)) b!5051627))

(assert (= (and d!1625338 res!2151210) b!5051628))

(assert (= (and b!5051628 res!2151211) b!5051629))

(declare-fun m!6085654 () Bool)

(assert (=> b!5051627 m!6085654))

(declare-fun m!6085656 () Bool)

(assert (=> b!5051628 m!6085656))

(assert (=> b!5051628 m!6085280))

(assert (=> b!5051628 m!6085150))

(declare-fun m!6085658 () Bool)

(assert (=> d!1625338 m!6085658))

(assert (=> d!1625338 m!6085610))

(assert (=> d!1625338 m!6085232))

(assert (=> b!5051263 d!1625338))

(declare-fun d!1625340 () Bool)

(declare-fun c!866587 () Bool)

(assert (=> d!1625340 (= c!866587 ((_ is Nil!58396) (t!371159 lt!2086680)))))

(declare-fun e!3153865 () (InoxSet T!104852))

(assert (=> d!1625340 (= (content!10398 (t!371159 lt!2086680)) e!3153865)))

(declare-fun b!5051630 () Bool)

(assert (=> b!5051630 (= e!3153865 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051631 () Bool)

(assert (=> b!5051631 (= e!3153865 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086680)) true) (content!10398 (t!371159 (t!371159 lt!2086680)))))))

(assert (= (and d!1625340 c!866587) b!5051630))

(assert (= (and d!1625340 (not c!866587)) b!5051631))

(declare-fun m!6085660 () Bool)

(assert (=> b!5051631 m!6085660))

(declare-fun m!6085662 () Bool)

(assert (=> b!5051631 m!6085662))

(assert (=> b!5051369 d!1625340))

(declare-fun d!1625342 () Bool)

(declare-fun lt!2086766 () Int)

(assert (=> d!1625342 (>= lt!2086766 0)))

(declare-fun e!3153866 () Int)

(assert (=> d!1625342 (= lt!2086766 e!3153866)))

(declare-fun c!866588 () Bool)

(assert (=> d!1625342 (= c!866588 ((_ is Nil!58396) (t!371159 (t!371159 l!2757))))))

(assert (=> d!1625342 (= (size!39019 (t!371159 (t!371159 l!2757))) lt!2086766)))

(declare-fun b!5051632 () Bool)

(assert (=> b!5051632 (= e!3153866 0)))

(declare-fun b!5051633 () Bool)

(assert (=> b!5051633 (= e!3153866 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 l!2757))))))))

(assert (= (and d!1625342 c!866588) b!5051632))

(assert (= (and d!1625342 (not c!866588)) b!5051633))

(declare-fun m!6085664 () Bool)

(assert (=> b!5051633 m!6085664))

(assert (=> b!5051306 d!1625342))

(assert (=> b!5051360 d!1625328))

(declare-fun d!1625344 () Bool)

(declare-fun lt!2086767 () Int)

(assert (=> d!1625344 (>= lt!2086767 0)))

(declare-fun e!3153867 () Int)

(assert (=> d!1625344 (= lt!2086767 e!3153867)))

(declare-fun c!866589 () Bool)

(assert (=> d!1625344 (= c!866589 ((_ is Nil!58396) lt!2086717))))

(assert (=> d!1625344 (= (size!39019 lt!2086717) lt!2086767)))

(declare-fun b!5051634 () Bool)

(assert (=> b!5051634 (= e!3153867 0)))

(declare-fun b!5051635 () Bool)

(assert (=> b!5051635 (= e!3153867 (+ 1 (size!39019 (t!371159 lt!2086717))))))

(assert (= (and d!1625344 c!866589) b!5051634))

(assert (= (and d!1625344 (not c!866589)) b!5051635))

(declare-fun m!6085666 () Bool)

(assert (=> b!5051635 m!6085666))

(assert (=> b!5051385 d!1625344))

(declare-fun d!1625346 () Bool)

(declare-fun lt!2086768 () Int)

(assert (=> d!1625346 (>= lt!2086768 0)))

(declare-fun e!3153868 () Int)

(assert (=> d!1625346 (= lt!2086768 e!3153868)))

(declare-fun c!866590 () Bool)

(assert (=> d!1625346 (= c!866590 ((_ is Nil!58396) (_1!34944 lt!2086682)))))

(assert (=> d!1625346 (= (size!39019 (_1!34944 lt!2086682)) lt!2086768)))

(declare-fun b!5051636 () Bool)

(assert (=> b!5051636 (= e!3153868 0)))

(declare-fun b!5051637 () Bool)

(assert (=> b!5051637 (= e!3153868 (+ 1 (size!39019 (t!371159 (_1!34944 lt!2086682)))))))

(assert (= (and d!1625346 c!866590) b!5051636))

(assert (= (and d!1625346 (not c!866590)) b!5051637))

(assert (=> b!5051637 m!6085546))

(assert (=> b!5051385 d!1625346))

(declare-fun d!1625348 () Bool)

(declare-fun lt!2086769 () Int)

(assert (=> d!1625348 (>= lt!2086769 0)))

(declare-fun e!3153869 () Int)

(assert (=> d!1625348 (= lt!2086769 e!3153869)))

(declare-fun c!866591 () Bool)

(assert (=> d!1625348 (= c!866591 ((_ is Nil!58396) (_2!34944 lt!2086682)))))

(assert (=> d!1625348 (= (size!39019 (_2!34944 lt!2086682)) lt!2086769)))

(declare-fun b!5051638 () Bool)

(assert (=> b!5051638 (= e!3153869 0)))

(declare-fun b!5051639 () Bool)

(assert (=> b!5051639 (= e!3153869 (+ 1 (size!39019 (t!371159 (_2!34944 lt!2086682)))))))

(assert (= (and d!1625348 c!866591) b!5051638))

(assert (= (and d!1625348 (not c!866591)) b!5051639))

(declare-fun m!6085668 () Bool)

(assert (=> b!5051639 m!6085668))

(assert (=> b!5051385 d!1625348))

(declare-fun d!1625350 () Bool)

(declare-fun lt!2086770 () Int)

(assert (=> d!1625350 (>= lt!2086770 0)))

(declare-fun e!3153870 () Int)

(assert (=> d!1625350 (= lt!2086770 e!3153870)))

(declare-fun c!866592 () Bool)

(assert (=> d!1625350 (= c!866592 ((_ is Nil!58396) lt!2086716))))

(assert (=> d!1625350 (= (size!39019 lt!2086716) lt!2086770)))

(declare-fun b!5051640 () Bool)

(assert (=> b!5051640 (= e!3153870 0)))

(declare-fun b!5051641 () Bool)

(assert (=> b!5051641 (= e!3153870 (+ 1 (size!39019 (t!371159 lt!2086716))))))

(assert (= (and d!1625350 c!866592) b!5051640))

(assert (= (and d!1625350 (not c!866592)) b!5051641))

(declare-fun m!6085670 () Bool)

(assert (=> b!5051641 m!6085670))

(assert (=> b!5051377 d!1625350))

(assert (=> b!5051267 d!1625274))

(declare-fun d!1625352 () Bool)

(declare-fun lt!2086771 () Int)

(assert (=> d!1625352 (>= lt!2086771 0)))

(declare-fun e!3153871 () Int)

(assert (=> d!1625352 (= lt!2086771 e!3153871)))

(declare-fun c!866593 () Bool)

(assert (=> d!1625352 (= c!866593 ((_ is Nil!58396) lt!2086719))))

(assert (=> d!1625352 (= (size!39019 lt!2086719) lt!2086771)))

(declare-fun b!5051642 () Bool)

(assert (=> b!5051642 (= e!3153871 0)))

(declare-fun b!5051643 () Bool)

(assert (=> b!5051643 (= e!3153871 (+ 1 (size!39019 (t!371159 lt!2086719))))))

(assert (= (and d!1625352 c!866593) b!5051642))

(assert (= (and d!1625352 (not c!866593)) b!5051643))

(declare-fun m!6085672 () Bool)

(assert (=> b!5051643 m!6085672))

(assert (=> b!5051396 d!1625352))

(assert (=> b!5051396 d!1625296))

(assert (=> b!5051396 d!1625178))

(declare-fun d!1625354 () Bool)

(declare-fun c!866594 () Bool)

(assert (=> d!1625354 (= c!866594 ((_ is Nil!58396) lt!2086708))))

(declare-fun e!3153872 () (InoxSet T!104852))

(assert (=> d!1625354 (= (content!10398 lt!2086708) e!3153872)))

(declare-fun b!5051644 () Bool)

(assert (=> b!5051644 (= e!3153872 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051645 () Bool)

(assert (=> b!5051645 (= e!3153872 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086708) true) (content!10398 (t!371159 lt!2086708))))))

(assert (= (and d!1625354 c!866594) b!5051644))

(assert (= (and d!1625354 (not c!866594)) b!5051645))

(declare-fun m!6085674 () Bool)

(assert (=> b!5051645 m!6085674))

(declare-fun m!6085676 () Bool)

(assert (=> b!5051645 m!6085676))

(assert (=> d!1625182 d!1625354))

(assert (=> d!1625182 d!1625312))

(declare-fun b!5051646 () Bool)

(declare-fun res!2151213 () Bool)

(declare-fun e!3153874 () Bool)

(assert (=> b!5051646 (=> (not res!2151213) (not e!3153874))))

(declare-fun lt!2086772 () tuple2!63282)

(assert (=> b!5051646 (= res!2151213 (= (_1!34944 lt!2086772) (take!887 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1))))))

(declare-fun d!1625356 () Bool)

(assert (=> d!1625356 e!3153874))

(declare-fun res!2151212 () Bool)

(assert (=> d!1625356 (=> (not res!2151212) (not e!3153874))))

(assert (=> d!1625356 (= res!2151212 (= (++!12759 (_1!34944 lt!2086772) (_2!34944 lt!2086772)) (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(declare-fun e!3153873 () tuple2!63282)

(assert (=> d!1625356 (= lt!2086772 e!3153873)))

(declare-fun c!866595 () Bool)

(assert (=> d!1625356 (= c!866595 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(assert (=> d!1625356 (= (splitAtIndex!227 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)) lt!2086772)))

(declare-fun b!5051647 () Bool)

(assert (=> b!5051647 (= e!3153874 (= (_2!34944 lt!2086772) (drop!2685 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1))))))

(declare-fun b!5051648 () Bool)

(assert (=> b!5051648 (= e!3153873 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun b!5051649 () Bool)

(declare-fun lt!2086773 () tuple2!63282)

(assert (=> b!5051649 (= lt!2086773 (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1)))))

(declare-fun e!3153875 () tuple2!63282)

(assert (=> b!5051649 (= e!3153875 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (_1!34944 lt!2086773)) (_2!34944 lt!2086773)))))

(declare-fun b!5051650 () Bool)

(assert (=> b!5051650 (= e!3153873 e!3153875)))

(declare-fun c!866596 () Bool)

(assert (=> b!5051650 (= c!866596 (<= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 0))))

(declare-fun b!5051651 () Bool)

(assert (=> b!5051651 (= e!3153875 (tuple2!63283 Nil!58396 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(assert (= (and d!1625356 c!866595) b!5051648))

(assert (= (and d!1625356 (not c!866595)) b!5051650))

(assert (= (and b!5051650 c!866596) b!5051651))

(assert (= (and b!5051650 (not c!866596)) b!5051649))

(assert (= (and d!1625356 res!2151212) b!5051646))

(assert (= (and b!5051646 res!2151213) b!5051647))

(assert (=> b!5051646 m!6085560))

(declare-fun m!6085678 () Bool)

(assert (=> d!1625356 m!6085678))

(assert (=> b!5051647 m!6085526))

(declare-fun m!6085680 () Bool)

(assert (=> b!5051649 m!6085680))

(assert (=> b!5051269 d!1625356))

(declare-fun d!1625358 () Bool)

(declare-fun c!866597 () Bool)

(assert (=> d!1625358 (= c!866597 ((_ is Nil!58396) (t!371159 lt!2086685)))))

(declare-fun e!3153876 () (InoxSet T!104852))

(assert (=> d!1625358 (= (content!10398 (t!371159 lt!2086685)) e!3153876)))

(declare-fun b!5051652 () Bool)

(assert (=> b!5051652 (= e!3153876 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051653 () Bool)

(assert (=> b!5051653 (= e!3153876 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086685)) true) (content!10398 (t!371159 (t!371159 lt!2086685)))))))

(assert (= (and d!1625358 c!866597) b!5051652))

(assert (= (and d!1625358 (not c!866597)) b!5051653))

(declare-fun m!6085682 () Bool)

(assert (=> b!5051653 m!6085682))

(declare-fun m!6085684 () Bool)

(assert (=> b!5051653 m!6085684))

(assert (=> b!5051345 d!1625358))

(assert (=> b!5051389 d!1625284))

(declare-fun b!5051654 () Bool)

(declare-fun e!3153877 () Bool)

(declare-fun tp!1412322 () Bool)

(assert (=> b!5051654 (= e!3153877 (and tp_is_empty!36975 tp!1412322))))

(assert (=> b!5051409 (= tp!1412319 e!3153877)))

(assert (= (and b!5051409 ((_ is Cons!58396) (t!371159 (t!371159 (t!371159 l!2757))))) b!5051654))

(declare-fun b!5051655 () Bool)

(declare-fun e!3153878 () Bool)

(declare-fun tp!1412323 () Bool)

(assert (=> b!5051655 (= e!3153878 (and tp_is_empty!36975 tp!1412323))))

(assert (=> b!5051404 (= tp!1412318 e!3153878)))

(assert (= (and b!5051404 ((_ is Cons!58396) (t!371159 (t!371159 (t!371159 r!2041))))) b!5051655))

(check-sat (not b!5051561) (not b!5051598) (not b!5051596) (not b!5051600) (not bm!351969) (not d!1625298) (not b!5051647) (not d!1625330) (not d!1625356) (not b!5051540) (not b!5051580) (not b!5051635) (not b!5051576) (not b!5051523) (not b!5051628) (not b!5051570) (not b!5051654) (not b!5051639) (not b!5051610) (not b!5051584) (not b!5051607) (not b!5051538) (not b!5051586) (not b!5051529) (not b!5051637) (not b!5051641) (not b!5051653) (not b!5051592) (not b!5051563) (not d!1625326) (not b!5051631) (not b!5051525) (not b!5051552) (not b!5051509) (not b!5051546) (not d!1625268) (not d!1625274) (not b!5051623) (not b!5051627) (not b!5051649) (not d!1625328) (not b!5051547) (not b!5051617) (not b!5051511) (not bm!351970) (not b!5051553) (not b!5051611) (not b!5051590) (not d!1625288) (not b!5051645) (not b!5051604) (not b!5051618) (not b!5051515) (not b!5051621) (not b!5051568) (not b!5051517) (not b!5051507) tp_is_empty!36975 (not d!1625286) (not b!5051577) (not b!5051520) (not b!5051519) (not b!5051602) (not b!5051625) (not b!5051606) (not b!5051594) (not b!5051536) (not b!5051614) (not d!1625294) (not b!5051566) (not b!5051655) (not b!5051646) (not d!1625338) (not b!5051559) (not b!5051530) (not b!5051612) (not b!5051560) (not b!5051588) (not b!5051567) (not b!5051574) (not b!5051542) (not d!1625290) (not b!5051544) (not b!5051643) (not b!5051582) (not b!5051633) (not b!5051513))
(check-sat)
(get-model)

(declare-fun d!1625464 () Bool)

(declare-fun c!866662 () Bool)

(assert (=> d!1625464 (= c!866662 ((_ is Nil!58396) lt!2086760))))

(declare-fun e!3153957 () (InoxSet T!104852))

(assert (=> d!1625464 (= (content!10398 lt!2086760) e!3153957)))

(declare-fun b!5051806 () Bool)

(assert (=> b!5051806 (= e!3153957 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051807 () Bool)

(assert (=> b!5051807 (= e!3153957 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086760) true) (content!10398 (t!371159 lt!2086760))))))

(assert (= (and d!1625464 c!866662) b!5051806))

(assert (= (and d!1625464 (not c!866662)) b!5051807))

(declare-fun m!6085890 () Bool)

(assert (=> b!5051807 m!6085890))

(declare-fun m!6085892 () Bool)

(assert (=> b!5051807 m!6085892))

(assert (=> d!1625326 d!1625464))

(declare-fun d!1625466 () Bool)

(declare-fun c!866663 () Bool)

(assert (=> d!1625466 (= c!866663 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086672))))))

(declare-fun e!3153958 () (InoxSet T!104852))

(assert (=> d!1625466 (= (content!10398 (t!371159 (_1!34944 lt!2086672))) e!3153958)))

(declare-fun b!5051808 () Bool)

(assert (=> b!5051808 (= e!3153958 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051809 () Bool)

(assert (=> b!5051809 (= e!3153958 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (_1!34944 lt!2086672))) true) (content!10398 (t!371159 (t!371159 (_1!34944 lt!2086672))))))))

(assert (= (and d!1625466 c!866663) b!5051808))

(assert (= (and d!1625466 (not c!866663)) b!5051809))

(declare-fun m!6085894 () Bool)

(assert (=> b!5051809 m!6085894))

(declare-fun m!6085896 () Bool)

(assert (=> b!5051809 m!6085896))

(assert (=> d!1625326 d!1625466))

(assert (=> d!1625326 d!1625306))

(declare-fun d!1625468 () Bool)

(declare-fun lt!2086808 () Int)

(assert (=> d!1625468 (>= lt!2086808 0)))

(declare-fun e!3153959 () Int)

(assert (=> d!1625468 (= lt!2086808 e!3153959)))

(declare-fun c!866664 () Bool)

(assert (=> d!1625468 (= c!866664 ((_ is Nil!58396) lt!2086743))))

(assert (=> d!1625468 (= (size!39019 lt!2086743) lt!2086808)))

(declare-fun b!5051810 () Bool)

(assert (=> b!5051810 (= e!3153959 0)))

(declare-fun b!5051811 () Bool)

(assert (=> b!5051811 (= e!3153959 (+ 1 (size!39019 (t!371159 lt!2086743))))))

(assert (= (and d!1625468 c!866664) b!5051810))

(assert (= (and d!1625468 (not c!866664)) b!5051811))

(declare-fun m!6085898 () Bool)

(assert (=> b!5051811 m!6085898))

(assert (=> b!5051529 d!1625468))

(declare-fun d!1625470 () Bool)

(declare-fun lt!2086809 () Int)

(assert (=> d!1625470 (>= lt!2086809 0)))

(declare-fun e!3153960 () Int)

(assert (=> d!1625470 (= lt!2086809 e!3153960)))

(declare-fun c!866665 () Bool)

(assert (=> d!1625470 (= c!866665 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(assert (=> d!1625470 (= (size!39019 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) lt!2086809)))

(declare-fun b!5051812 () Bool)

(assert (=> b!5051812 (= e!3153960 0)))

(declare-fun b!5051813 () Bool)

(assert (=> b!5051813 (= e!3153960 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))))

(assert (= (and d!1625470 c!866665) b!5051812))

(assert (= (and d!1625470 (not c!866665)) b!5051813))

(declare-fun m!6085900 () Bool)

(assert (=> b!5051813 m!6085900))

(assert (=> b!5051574 d!1625470))

(declare-fun d!1625472 () Bool)

(declare-fun lt!2086810 () Int)

(assert (=> d!1625472 (>= lt!2086810 0)))

(declare-fun e!3153961 () Int)

(assert (=> d!1625472 (= lt!2086810 e!3153961)))

(declare-fun c!866666 () Bool)

(assert (=> d!1625472 (= c!866666 ((_ is Nil!58396) (t!371159 (t!371159 lt!2086680))))))

(assert (=> d!1625472 (= (size!39019 (t!371159 (t!371159 lt!2086680))) lt!2086810)))

(declare-fun b!5051814 () Bool)

(assert (=> b!5051814 (= e!3153961 0)))

(declare-fun b!5051815 () Bool)

(assert (=> b!5051815 (= e!3153961 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 lt!2086680))))))))

(assert (= (and d!1625472 c!866666) b!5051814))

(assert (= (and d!1625472 (not c!866666)) b!5051815))

(declare-fun m!6085902 () Bool)

(assert (=> b!5051815 m!6085902))

(assert (=> b!5051625 d!1625472))

(declare-fun b!5051816 () Bool)

(declare-fun res!2151235 () Bool)

(declare-fun e!3153963 () Bool)

(assert (=> b!5051816 (=> (not res!2151235) (not e!3153963))))

(declare-fun lt!2086811 () tuple2!63282)

(assert (=> b!5051816 (= res!2151235 (= (_1!34944 lt!2086811) (take!887 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1))))))

(declare-fun d!1625474 () Bool)

(assert (=> d!1625474 e!3153963))

(declare-fun res!2151234 () Bool)

(assert (=> d!1625474 (=> (not res!2151234) (not e!3153963))))

(assert (=> d!1625474 (= res!2151234 (= (++!12759 (_1!34944 lt!2086811) (_2!34944 lt!2086811)) (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(declare-fun e!3153962 () tuple2!63282)

(assert (=> d!1625474 (= lt!2086811 e!3153962)))

(declare-fun c!866667 () Bool)

(assert (=> d!1625474 (= c!866667 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(assert (=> d!1625474 (= (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1)) lt!2086811)))

(declare-fun b!5051817 () Bool)

(assert (=> b!5051817 (= e!3153963 (= (_2!34944 lt!2086811) (drop!2685 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1))))))

(declare-fun b!5051818 () Bool)

(assert (=> b!5051818 (= e!3153962 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun lt!2086812 () tuple2!63282)

(declare-fun b!5051819 () Bool)

(assert (=> b!5051819 (= lt!2086812 (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))) (- (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1) 1)))))

(declare-fun e!3153964 () tuple2!63282)

(assert (=> b!5051819 (= e!3153964 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))) (_1!34944 lt!2086812)) (_2!34944 lt!2086812)))))

(declare-fun b!5051820 () Bool)

(assert (=> b!5051820 (= e!3153962 e!3153964)))

(declare-fun c!866668 () Bool)

(assert (=> b!5051820 (= c!866668 (<= (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1) 0))))

(declare-fun b!5051821 () Bool)

(assert (=> b!5051821 (= e!3153964 (tuple2!63283 Nil!58396 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(assert (= (and d!1625474 c!866667) b!5051818))

(assert (= (and d!1625474 (not c!866667)) b!5051820))

(assert (= (and b!5051820 c!866668) b!5051821))

(assert (= (and b!5051820 (not c!866668)) b!5051819))

(assert (= (and d!1625474 res!2151234) b!5051816))

(assert (= (and b!5051816 res!2151235) b!5051817))

(declare-fun m!6085904 () Bool)

(assert (=> b!5051816 m!6085904))

(declare-fun m!6085906 () Bool)

(assert (=> d!1625474 m!6085906))

(declare-fun m!6085908 () Bool)

(assert (=> b!5051817 m!6085908))

(declare-fun m!6085910 () Bool)

(assert (=> b!5051819 m!6085910))

(assert (=> b!5051649 d!1625474))

(declare-fun b!5051822 () Bool)

(declare-fun e!3153967 () Int)

(declare-fun call!351978 () Int)

(assert (=> b!5051822 (= e!3153967 call!351978)))

(declare-fun b!5051823 () Bool)

(declare-fun e!3153965 () List!58520)

(assert (=> b!5051823 (= e!3153965 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))

(declare-fun b!5051824 () Bool)

(declare-fun e!3153968 () List!58520)

(assert (=> b!5051824 (= e!3153968 Nil!58396)))

(declare-fun b!5051825 () Bool)

(declare-fun e!3153969 () Bool)

(declare-fun lt!2086813 () List!58520)

(assert (=> b!5051825 (= e!3153969 (= (size!39019 lt!2086813) e!3153967))))

(declare-fun c!866671 () Bool)

(assert (=> b!5051825 (= c!866671 (<= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 0))))

(declare-fun b!5051826 () Bool)

(assert (=> b!5051826 (= e!3153965 (drop!2685 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1)))))

(declare-fun b!5051827 () Bool)

(declare-fun e!3153966 () Int)

(assert (=> b!5051827 (= e!3153967 e!3153966)))

(declare-fun c!866670 () Bool)

(assert (=> b!5051827 (= c!866670 (>= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) call!351978))))

(declare-fun d!1625476 () Bool)

(assert (=> d!1625476 e!3153969))

(declare-fun res!2151236 () Bool)

(assert (=> d!1625476 (=> (not res!2151236) (not e!3153969))))

(assert (=> d!1625476 (= res!2151236 (= ((_ map implies) (content!10398 lt!2086813) (content!10398 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625476 (= lt!2086813 e!3153968)))

(declare-fun c!866669 () Bool)

(assert (=> d!1625476 (= c!866669 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(assert (=> d!1625476 (= (drop!2685 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)) lt!2086813)))

(declare-fun bm!351973 () Bool)

(assert (=> bm!351973 (= call!351978 (size!39019 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(declare-fun b!5051828 () Bool)

(assert (=> b!5051828 (= e!3153968 e!3153965)))

(declare-fun c!866672 () Bool)

(assert (=> b!5051828 (= c!866672 (<= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 0))))

(declare-fun b!5051829 () Bool)

(assert (=> b!5051829 (= e!3153966 0)))

(declare-fun b!5051830 () Bool)

(assert (=> b!5051830 (= e!3153966 (- call!351978 (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)))))

(assert (= (and d!1625476 c!866669) b!5051824))

(assert (= (and d!1625476 (not c!866669)) b!5051828))

(assert (= (and b!5051828 c!866672) b!5051823))

(assert (= (and b!5051828 (not c!866672)) b!5051826))

(assert (= (and d!1625476 res!2151236) b!5051825))

(assert (= (and b!5051825 c!866671) b!5051822))

(assert (= (and b!5051825 (not c!866671)) b!5051827))

(assert (= (and b!5051827 c!866670) b!5051829))

(assert (= (and b!5051827 (not c!866670)) b!5051830))

(assert (= (or b!5051822 b!5051827 b!5051830) bm!351973))

(declare-fun m!6085912 () Bool)

(assert (=> b!5051825 m!6085912))

(assert (=> b!5051826 m!6085908))

(declare-fun m!6085914 () Bool)

(assert (=> d!1625476 m!6085914))

(declare-fun m!6085916 () Bool)

(assert (=> d!1625476 m!6085916))

(declare-fun m!6085918 () Bool)

(assert (=> bm!351973 m!6085918))

(assert (=> b!5051647 d!1625476))

(declare-fun d!1625478 () Bool)

(declare-fun lt!2086814 () Int)

(assert (=> d!1625478 (>= lt!2086814 0)))

(declare-fun e!3153970 () Int)

(assert (=> d!1625478 (= lt!2086814 e!3153970)))

(declare-fun c!866673 () Bool)

(assert (=> d!1625478 (= c!866673 ((_ is Nil!58396) (t!371159 lt!2086701)))))

(assert (=> d!1625478 (= (size!39019 (t!371159 lt!2086701)) lt!2086814)))

(declare-fun b!5051831 () Bool)

(assert (=> b!5051831 (= e!3153970 0)))

(declare-fun b!5051832 () Bool)

(assert (=> b!5051832 (= e!3153970 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086701)))))))

(assert (= (and d!1625478 c!866673) b!5051831))

(assert (= (and d!1625478 (not c!866673)) b!5051832))

(declare-fun m!6085920 () Bool)

(assert (=> b!5051832 m!6085920))

(assert (=> b!5051621 d!1625478))

(declare-fun d!1625480 () Bool)

(declare-fun c!866674 () Bool)

(assert (=> d!1625480 (= c!866674 ((_ is Nil!58396) (t!371159 lt!2086708)))))

(declare-fun e!3153971 () (InoxSet T!104852))

(assert (=> d!1625480 (= (content!10398 (t!371159 lt!2086708)) e!3153971)))

(declare-fun b!5051833 () Bool)

(assert (=> b!5051833 (= e!3153971 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051834 () Bool)

(assert (=> b!5051834 (= e!3153971 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086708)) true) (content!10398 (t!371159 (t!371159 lt!2086708)))))))

(assert (= (and d!1625480 c!866674) b!5051833))

(assert (= (and d!1625480 (not c!866674)) b!5051834))

(declare-fun m!6085922 () Bool)

(assert (=> b!5051834 m!6085922))

(declare-fun m!6085924 () Bool)

(assert (=> b!5051834 m!6085924))

(assert (=> b!5051645 d!1625480))

(declare-fun d!1625482 () Bool)

(declare-fun lt!2086815 () Int)

(assert (=> d!1625482 (>= lt!2086815 0)))

(declare-fun e!3153972 () Int)

(assert (=> d!1625482 (= lt!2086815 e!3153972)))

(declare-fun c!866675 () Bool)

(assert (=> d!1625482 (= c!866675 ((_ is Nil!58396) (t!371159 (++!12759 l!2757 r!2041))))))

(assert (=> d!1625482 (= (size!39019 (t!371159 (++!12759 l!2757 r!2041))) lt!2086815)))

(declare-fun b!5051835 () Bool)

(assert (=> b!5051835 (= e!3153972 0)))

(declare-fun b!5051836 () Bool)

(assert (=> b!5051836 (= e!3153972 (+ 1 (size!39019 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(assert (= (and d!1625482 c!866675) b!5051835))

(assert (= (and d!1625482 (not c!866675)) b!5051836))

(declare-fun m!6085926 () Bool)

(assert (=> b!5051836 m!6085926))

(assert (=> b!5051610 d!1625482))

(declare-fun b!5051840 () Bool)

(declare-fun e!3153973 () Bool)

(declare-fun lt!2086816 () List!58520)

(assert (=> b!5051840 (= e!3153973 (or (not (= (_2!34944 lt!2086713) Nil!58396)) (= lt!2086816 (t!371159 (_1!34944 lt!2086713)))))))

(declare-fun b!5051838 () Bool)

(declare-fun e!3153974 () List!58520)

(assert (=> b!5051838 (= e!3153974 (Cons!58396 (h!64844 (t!371159 (_1!34944 lt!2086713))) (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086713))) (_2!34944 lt!2086713))))))

(declare-fun b!5051837 () Bool)

(assert (=> b!5051837 (= e!3153974 (_2!34944 lt!2086713))))

(declare-fun b!5051839 () Bool)

(declare-fun res!2151238 () Bool)

(assert (=> b!5051839 (=> (not res!2151238) (not e!3153973))))

(assert (=> b!5051839 (= res!2151238 (= (size!39019 lt!2086816) (+ (size!39019 (t!371159 (_1!34944 lt!2086713))) (size!39019 (_2!34944 lt!2086713)))))))

(declare-fun d!1625484 () Bool)

(assert (=> d!1625484 e!3153973))

(declare-fun res!2151237 () Bool)

(assert (=> d!1625484 (=> (not res!2151237) (not e!3153973))))

(assert (=> d!1625484 (= res!2151237 (= (content!10398 lt!2086816) ((_ map or) (content!10398 (t!371159 (_1!34944 lt!2086713))) (content!10398 (_2!34944 lt!2086713)))))))

(assert (=> d!1625484 (= lt!2086816 e!3153974)))

(declare-fun c!866676 () Bool)

(assert (=> d!1625484 (= c!866676 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086713))))))

(assert (=> d!1625484 (= (++!12759 (t!371159 (_1!34944 lt!2086713)) (_2!34944 lt!2086713)) lt!2086816)))

(assert (= (and d!1625484 c!866676) b!5051837))

(assert (= (and d!1625484 (not c!866676)) b!5051838))

(assert (= (and d!1625484 res!2151237) b!5051839))

(assert (= (and b!5051839 res!2151238) b!5051840))

(declare-fun m!6085928 () Bool)

(assert (=> b!5051838 m!6085928))

(declare-fun m!6085930 () Bool)

(assert (=> b!5051839 m!6085930))

(declare-fun m!6085932 () Bool)

(assert (=> b!5051839 m!6085932))

(assert (=> b!5051839 m!6085638))

(declare-fun m!6085934 () Bool)

(assert (=> d!1625484 m!6085934))

(declare-fun m!6085936 () Bool)

(assert (=> d!1625484 m!6085936))

(assert (=> d!1625484 m!6085644))

(assert (=> b!5051617 d!1625484))

(declare-fun d!1625486 () Bool)

(declare-fun c!866677 () Bool)

(assert (=> d!1625486 (= c!866677 ((_ is Nil!58396) (t!371159 (t!371159 r!2041))))))

(declare-fun e!3153975 () (InoxSet T!104852))

(assert (=> d!1625486 (= (content!10398 (t!371159 (t!371159 r!2041))) e!3153975)))

(declare-fun b!5051841 () Bool)

(assert (=> b!5051841 (= e!3153975 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051842 () Bool)

(assert (=> b!5051842 (= e!3153975 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 r!2041))) true) (content!10398 (t!371159 (t!371159 (t!371159 r!2041))))))))

(assert (= (and d!1625486 c!866677) b!5051841))

(assert (= (and d!1625486 (not c!866677)) b!5051842))

(declare-fun m!6085938 () Bool)

(assert (=> b!5051842 m!6085938))

(declare-fun m!6085940 () Bool)

(assert (=> b!5051842 m!6085940))

(assert (=> b!5051588 d!1625486))

(declare-fun d!1625488 () Bool)

(declare-fun lt!2086817 () Int)

(assert (=> d!1625488 (>= lt!2086817 0)))

(declare-fun e!3153976 () Int)

(assert (=> d!1625488 (= lt!2086817 e!3153976)))

(declare-fun c!866678 () Bool)

(assert (=> d!1625488 (= c!866678 ((_ is Nil!58396) lt!2086748))))

(assert (=> d!1625488 (= (size!39019 lt!2086748) lt!2086817)))

(declare-fun b!5051843 () Bool)

(assert (=> b!5051843 (= e!3153976 0)))

(declare-fun b!5051844 () Bool)

(assert (=> b!5051844 (= e!3153976 (+ 1 (size!39019 (t!371159 lt!2086748))))))

(assert (= (and d!1625488 c!866678) b!5051843))

(assert (= (and d!1625488 (not c!866678)) b!5051844))

(declare-fun m!6085942 () Bool)

(assert (=> b!5051844 m!6085942))

(assert (=> b!5051547 d!1625488))

(declare-fun d!1625490 () Bool)

(declare-fun lt!2086818 () Int)

(assert (=> d!1625490 (>= lt!2086818 0)))

(declare-fun e!3153977 () Int)

(assert (=> d!1625490 (= lt!2086818 e!3153977)))

(declare-fun c!866679 () Bool)

(assert (=> d!1625490 (= c!866679 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086682))))))

(assert (=> d!1625490 (= (size!39019 (t!371159 (_1!34944 lt!2086682))) lt!2086818)))

(declare-fun b!5051845 () Bool)

(assert (=> b!5051845 (= e!3153977 0)))

(declare-fun b!5051846 () Bool)

(assert (=> b!5051846 (= e!3153977 (+ 1 (size!39019 (t!371159 (t!371159 (_1!34944 lt!2086682))))))))

(assert (= (and d!1625490 c!866679) b!5051845))

(assert (= (and d!1625490 (not c!866679)) b!5051846))

(declare-fun m!6085944 () Bool)

(assert (=> b!5051846 m!6085944))

(assert (=> b!5051547 d!1625490))

(assert (=> b!5051547 d!1625348))

(declare-fun d!1625492 () Bool)

(declare-fun lt!2086819 () Int)

(assert (=> d!1625492 (>= lt!2086819 0)))

(declare-fun e!3153978 () Int)

(assert (=> d!1625492 (= lt!2086819 e!3153978)))

(declare-fun c!866680 () Bool)

(assert (=> d!1625492 (= c!866680 ((_ is Nil!58396) lt!2086761))))

(assert (=> d!1625492 (= (size!39019 lt!2086761) lt!2086819)))

(declare-fun b!5051847 () Bool)

(assert (=> b!5051847 (= e!3153978 0)))

(declare-fun b!5051848 () Bool)

(assert (=> b!5051848 (= e!3153978 (+ 1 (size!39019 (t!371159 lt!2086761))))))

(assert (= (and d!1625492 c!866680) b!5051847))

(assert (= (and d!1625492 (not c!866680)) b!5051848))

(declare-fun m!6085946 () Bool)

(assert (=> b!5051848 m!6085946))

(assert (=> b!5051612 d!1625492))

(declare-fun d!1625494 () Bool)

(declare-fun lt!2086820 () Int)

(assert (=> d!1625494 (>= lt!2086820 0)))

(declare-fun e!3153979 () Int)

(assert (=> d!1625494 (= lt!2086820 e!3153979)))

(declare-fun c!866681 () Bool)

(assert (=> d!1625494 (= c!866681 ((_ is Nil!58396) (t!371159 lt!2086696)))))

(assert (=> d!1625494 (= (size!39019 (t!371159 lt!2086696)) lt!2086820)))

(declare-fun b!5051849 () Bool)

(assert (=> b!5051849 (= e!3153979 0)))

(declare-fun b!5051850 () Bool)

(assert (=> b!5051850 (= e!3153979 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086696)))))))

(assert (= (and d!1625494 c!866681) b!5051849))

(assert (= (and d!1625494 (not c!866681)) b!5051850))

(declare-fun m!6085948 () Bool)

(assert (=> b!5051850 m!6085948))

(assert (=> b!5051580 d!1625494))

(declare-fun d!1625496 () Bool)

(declare-fun lt!2086821 () Int)

(assert (=> d!1625496 (>= lt!2086821 0)))

(declare-fun e!3153980 () Int)

(assert (=> d!1625496 (= lt!2086821 e!3153980)))

(declare-fun c!866682 () Bool)

(assert (=> d!1625496 (= c!866682 ((_ is Nil!58396) (t!371159 lt!2086717)))))

(assert (=> d!1625496 (= (size!39019 (t!371159 lt!2086717)) lt!2086821)))

(declare-fun b!5051851 () Bool)

(assert (=> b!5051851 (= e!3153980 0)))

(declare-fun b!5051852 () Bool)

(assert (=> b!5051852 (= e!3153980 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086717)))))))

(assert (= (and d!1625496 c!866682) b!5051851))

(assert (= (and d!1625496 (not c!866682)) b!5051852))

(declare-fun m!6085950 () Bool)

(assert (=> b!5051852 m!6085950))

(assert (=> b!5051635 d!1625496))

(declare-fun b!5051856 () Bool)

(declare-fun e!3153981 () Bool)

(declare-fun lt!2086822 () List!58520)

(assert (=> b!5051856 (= e!3153981 (or (not (= (_2!34944 lt!2086672) Nil!58396)) (= lt!2086822 (t!371159 (t!371159 (_1!34944 lt!2086672))))))))

(declare-fun b!5051854 () Bool)

(declare-fun e!3153982 () List!58520)

(assert (=> b!5051854 (= e!3153982 (Cons!58396 (h!64844 (t!371159 (t!371159 (_1!34944 lt!2086672)))) (++!12759 (t!371159 (t!371159 (t!371159 (_1!34944 lt!2086672)))) (_2!34944 lt!2086672))))))

(declare-fun b!5051853 () Bool)

(assert (=> b!5051853 (= e!3153982 (_2!34944 lt!2086672))))

(declare-fun b!5051855 () Bool)

(declare-fun res!2151240 () Bool)

(assert (=> b!5051855 (=> (not res!2151240) (not e!3153981))))

(assert (=> b!5051855 (= res!2151240 (= (size!39019 lt!2086822) (+ (size!39019 (t!371159 (t!371159 (_1!34944 lt!2086672)))) (size!39019 (_2!34944 lt!2086672)))))))

(declare-fun d!1625498 () Bool)

(assert (=> d!1625498 e!3153981))

(declare-fun res!2151239 () Bool)

(assert (=> d!1625498 (=> (not res!2151239) (not e!3153981))))

(assert (=> d!1625498 (= res!2151239 (= (content!10398 lt!2086822) ((_ map or) (content!10398 (t!371159 (t!371159 (_1!34944 lt!2086672)))) (content!10398 (_2!34944 lt!2086672)))))))

(assert (=> d!1625498 (= lt!2086822 e!3153982)))

(declare-fun c!866683 () Bool)

(assert (=> d!1625498 (= c!866683 ((_ is Nil!58396) (t!371159 (t!371159 (_1!34944 lt!2086672)))))))

(assert (=> d!1625498 (= (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086672))) (_2!34944 lt!2086672)) lt!2086822)))

(assert (= (and d!1625498 c!866683) b!5051853))

(assert (= (and d!1625498 (not c!866683)) b!5051854))

(assert (= (and d!1625498 res!2151239) b!5051855))

(assert (= (and b!5051855 res!2151240) b!5051856))

(declare-fun m!6085952 () Bool)

(assert (=> b!5051854 m!6085952))

(declare-fun m!6085954 () Bool)

(assert (=> b!5051855 m!6085954))

(declare-fun m!6085956 () Bool)

(assert (=> b!5051855 m!6085956))

(assert (=> b!5051855 m!6085298))

(declare-fun m!6085958 () Bool)

(assert (=> d!1625498 m!6085958))

(assert (=> d!1625498 m!6085896))

(assert (=> d!1625498 m!6085304))

(assert (=> b!5051606 d!1625498))

(declare-fun d!1625500 () Bool)

(declare-fun c!866684 () Bool)

(assert (=> d!1625500 (= c!866684 ((_ is Nil!58396) lt!2086754))))

(declare-fun e!3153983 () (InoxSet T!104852))

(assert (=> d!1625500 (= (content!10398 lt!2086754) e!3153983)))

(declare-fun b!5051857 () Bool)

(assert (=> b!5051857 (= e!3153983 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051858 () Bool)

(assert (=> b!5051858 (= e!3153983 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086754) true) (content!10398 (t!371159 lt!2086754))))))

(assert (= (and d!1625500 c!866684) b!5051857))

(assert (= (and d!1625500 (not c!866684)) b!5051858))

(declare-fun m!6085960 () Bool)

(assert (=> b!5051858 m!6085960))

(declare-fun m!6085962 () Bool)

(assert (=> b!5051858 m!6085962))

(assert (=> d!1625298 d!1625500))

(declare-fun c!866685 () Bool)

(declare-fun d!1625502 () Bool)

(assert (=> d!1625502 (= c!866685 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))

(declare-fun e!3153984 () (InoxSet T!104852))

(assert (=> d!1625502 (= (content!10398 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) e!3153984)))

(declare-fun b!5051859 () Bool)

(assert (=> b!5051859 (= e!3153984 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051860 () Bool)

(assert (=> b!5051860 (= e!3153984 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) true) (content!10398 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))))

(assert (= (and d!1625502 c!866685) b!5051859))

(assert (= (and d!1625502 (not c!866685)) b!5051860))

(declare-fun m!6085964 () Bool)

(assert (=> b!5051860 m!6085964))

(declare-fun m!6085966 () Bool)

(assert (=> b!5051860 m!6085966))

(assert (=> d!1625298 d!1625502))

(assert (=> d!1625298 d!1625214))

(declare-fun d!1625504 () Bool)

(declare-fun c!866686 () Bool)

(assert (=> d!1625504 (= c!866686 ((_ is Nil!58396) lt!2086765))))

(declare-fun e!3153985 () (InoxSet T!104852))

(assert (=> d!1625504 (= (content!10398 lt!2086765) e!3153985)))

(declare-fun b!5051861 () Bool)

(assert (=> b!5051861 (= e!3153985 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051862 () Bool)

(assert (=> b!5051862 (= e!3153985 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086765) true) (content!10398 (t!371159 lt!2086765))))))

(assert (= (and d!1625504 c!866686) b!5051861))

(assert (= (and d!1625504 (not c!866686)) b!5051862))

(declare-fun m!6085968 () Bool)

(assert (=> b!5051862 m!6085968))

(declare-fun m!6085970 () Bool)

(assert (=> b!5051862 m!6085970))

(assert (=> d!1625338 d!1625504))

(declare-fun d!1625506 () Bool)

(declare-fun c!866687 () Bool)

(assert (=> d!1625506 (= c!866687 ((_ is Nil!58396) (t!371159 (t!371159 l!2757))))))

(declare-fun e!3153986 () (InoxSet T!104852))

(assert (=> d!1625506 (= (content!10398 (t!371159 (t!371159 l!2757))) e!3153986)))

(declare-fun b!5051863 () Bool)

(assert (=> b!5051863 (= e!3153986 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051864 () Bool)

(assert (=> b!5051864 (= e!3153986 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 l!2757))) true) (content!10398 (t!371159 (t!371159 (t!371159 l!2757))))))))

(assert (= (and d!1625506 c!866687) b!5051863))

(assert (= (and d!1625506 (not c!866687)) b!5051864))

(declare-fun m!6085972 () Bool)

(assert (=> b!5051864 m!6085972))

(declare-fun m!6085974 () Bool)

(assert (=> b!5051864 m!6085974))

(assert (=> d!1625338 d!1625506))

(assert (=> d!1625338 d!1625198))

(declare-fun b!5051865 () Bool)

(declare-fun e!3153989 () Int)

(declare-fun call!351979 () Int)

(assert (=> b!5051865 (= e!3153989 call!351979)))

(declare-fun b!5051866 () Bool)

(declare-fun e!3153987 () List!58520)

(assert (=> b!5051866 (= e!3153987 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))

(declare-fun b!5051867 () Bool)

(declare-fun e!3153990 () List!58520)

(assert (=> b!5051867 (= e!3153990 Nil!58396)))

(declare-fun b!5051868 () Bool)

(declare-fun e!3153991 () Bool)

(declare-fun lt!2086823 () List!58520)

(assert (=> b!5051868 (= e!3153991 (= (size!39019 lt!2086823) e!3153989))))

(declare-fun c!866690 () Bool)

(assert (=> b!5051868 (= c!866690 (<= (- (- i!652 1) 1) 0))))

(declare-fun b!5051869 () Bool)

(assert (=> b!5051869 (= e!3153987 (drop!2685 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1)))))

(declare-fun b!5051870 () Bool)

(declare-fun e!3153988 () Int)

(assert (=> b!5051870 (= e!3153989 e!3153988)))

(declare-fun c!866689 () Bool)

(assert (=> b!5051870 (= c!866689 (>= (- (- i!652 1) 1) call!351979))))

(declare-fun d!1625508 () Bool)

(assert (=> d!1625508 e!3153991))

(declare-fun res!2151241 () Bool)

(assert (=> d!1625508 (=> (not res!2151241) (not e!3153991))))

(assert (=> d!1625508 (= res!2151241 (= ((_ map implies) (content!10398 lt!2086823) (content!10398 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625508 (= lt!2086823 e!3153990)))

(declare-fun c!866688 () Bool)

(assert (=> d!1625508 (= c!866688 ((_ is Nil!58396) (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(assert (=> d!1625508 (= (drop!2685 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1)) lt!2086823)))

(declare-fun bm!351974 () Bool)

(assert (=> bm!351974 (= call!351979 (size!39019 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(declare-fun b!5051871 () Bool)

(assert (=> b!5051871 (= e!3153990 e!3153987)))

(declare-fun c!866691 () Bool)

(assert (=> b!5051871 (= c!866691 (<= (- (- i!652 1) 1) 0))))

(declare-fun b!5051872 () Bool)

(assert (=> b!5051872 (= e!3153988 0)))

(declare-fun b!5051873 () Bool)

(assert (=> b!5051873 (= e!3153988 (- call!351979 (- (- i!652 1) 1)))))

(assert (= (and d!1625508 c!866688) b!5051867))

(assert (= (and d!1625508 (not c!866688)) b!5051871))

(assert (= (and b!5051871 c!866691) b!5051866))

(assert (= (and b!5051871 (not c!866691)) b!5051869))

(assert (= (and d!1625508 res!2151241) b!5051868))

(assert (= (and b!5051868 c!866690) b!5051865))

(assert (= (and b!5051868 (not c!866690)) b!5051870))

(assert (= (and b!5051870 c!866689) b!5051872))

(assert (= (and b!5051870 (not c!866689)) b!5051873))

(assert (= (or b!5051865 b!5051870 b!5051873) bm!351974))

(declare-fun m!6085976 () Bool)

(assert (=> b!5051868 m!6085976))

(declare-fun m!6085978 () Bool)

(assert (=> b!5051869 m!6085978))

(declare-fun m!6085980 () Bool)

(assert (=> d!1625508 m!6085980))

(declare-fun m!6085982 () Bool)

(assert (=> d!1625508 m!6085982))

(assert (=> bm!351974 m!6085926))

(assert (=> b!5051568 d!1625508))

(declare-fun d!1625510 () Bool)

(declare-fun lt!2086824 () Int)

(assert (=> d!1625510 (>= lt!2086824 0)))

(declare-fun e!3153992 () Int)

(assert (=> d!1625510 (= lt!2086824 e!3153992)))

(declare-fun c!866692 () Bool)

(assert (=> d!1625510 (= c!866692 ((_ is Nil!58396) lt!2086742))))

(assert (=> d!1625510 (= (size!39019 lt!2086742) lt!2086824)))

(declare-fun b!5051874 () Bool)

(assert (=> b!5051874 (= e!3153992 0)))

(declare-fun b!5051875 () Bool)

(assert (=> b!5051875 (= e!3153992 (+ 1 (size!39019 (t!371159 lt!2086742))))))

(assert (= (and d!1625510 c!866692) b!5051874))

(assert (= (and d!1625510 (not c!866692)) b!5051875))

(declare-fun m!6085984 () Bool)

(assert (=> b!5051875 m!6085984))

(assert (=> b!5051520 d!1625510))

(declare-fun d!1625512 () Bool)

(declare-fun lt!2086825 () Int)

(assert (=> d!1625512 (>= lt!2086825 0)))

(declare-fun e!3153993 () Int)

(assert (=> d!1625512 (= lt!2086825 e!3153993)))

(declare-fun c!866693 () Bool)

(assert (=> d!1625512 (= c!866693 ((_ is Nil!58396) (_1!34944 lt!2086697)))))

(assert (=> d!1625512 (= (size!39019 (_1!34944 lt!2086697)) lt!2086825)))

(declare-fun b!5051876 () Bool)

(assert (=> b!5051876 (= e!3153993 0)))

(declare-fun b!5051877 () Bool)

(assert (=> b!5051877 (= e!3153993 (+ 1 (size!39019 (t!371159 (_1!34944 lt!2086697)))))))

(assert (= (and d!1625512 c!866693) b!5051876))

(assert (= (and d!1625512 (not c!866693)) b!5051877))

(declare-fun m!6085986 () Bool)

(assert (=> b!5051877 m!6085986))

(assert (=> b!5051520 d!1625512))

(declare-fun d!1625514 () Bool)

(declare-fun lt!2086826 () Int)

(assert (=> d!1625514 (>= lt!2086826 0)))

(declare-fun e!3153994 () Int)

(assert (=> d!1625514 (= lt!2086826 e!3153994)))

(declare-fun c!866694 () Bool)

(assert (=> d!1625514 (= c!866694 ((_ is Nil!58396) (_2!34944 lt!2086697)))))

(assert (=> d!1625514 (= (size!39019 (_2!34944 lt!2086697)) lt!2086826)))

(declare-fun b!5051878 () Bool)

(assert (=> b!5051878 (= e!3153994 0)))

(declare-fun b!5051879 () Bool)

(assert (=> b!5051879 (= e!3153994 (+ 1 (size!39019 (t!371159 (_2!34944 lt!2086697)))))))

(assert (= (and d!1625514 c!866694) b!5051878))

(assert (= (and d!1625514 (not c!866694)) b!5051879))

(declare-fun m!6085988 () Bool)

(assert (=> b!5051879 m!6085988))

(assert (=> b!5051520 d!1625514))

(declare-fun d!1625516 () Bool)

(declare-fun c!866695 () Bool)

(assert (=> d!1625516 (= c!866695 ((_ is Nil!58396) (t!371159 lt!2086717)))))

(declare-fun e!3153995 () (InoxSet T!104852))

(assert (=> d!1625516 (= (content!10398 (t!371159 lt!2086717)) e!3153995)))

(declare-fun b!5051880 () Bool)

(assert (=> b!5051880 (= e!3153995 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051881 () Bool)

(assert (=> b!5051881 (= e!3153995 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086717)) true) (content!10398 (t!371159 (t!371159 lt!2086717)))))))

(assert (= (and d!1625516 c!866695) b!5051880))

(assert (= (and d!1625516 (not c!866695)) b!5051881))

(declare-fun m!6085990 () Bool)

(assert (=> b!5051881 m!6085990))

(declare-fun m!6085992 () Bool)

(assert (=> b!5051881 m!6085992))

(assert (=> b!5051507 d!1625516))

(declare-fun d!1625518 () Bool)

(declare-fun lt!2086827 () Int)

(assert (=> d!1625518 (>= lt!2086827 0)))

(declare-fun e!3153996 () Int)

(assert (=> d!1625518 (= lt!2086827 e!3153996)))

(declare-fun c!866696 () Bool)

(assert (=> d!1625518 (= c!866696 ((_ is Nil!58396) (t!371159 (t!371159 lt!2086685))))))

(assert (=> d!1625518 (= (size!39019 (t!371159 (t!371159 lt!2086685))) lt!2086827)))

(declare-fun b!5051882 () Bool)

(assert (=> b!5051882 (= e!3153996 0)))

(declare-fun b!5051883 () Bool)

(assert (=> b!5051883 (= e!3153996 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 lt!2086685))))))))

(assert (= (and d!1625518 c!866696) b!5051882))

(assert (= (and d!1625518 (not c!866696)) b!5051883))

(declare-fun m!6085994 () Bool)

(assert (=> b!5051883 m!6085994))

(assert (=> b!5051594 d!1625518))

(declare-fun d!1625520 () Bool)

(declare-fun c!866697 () Bool)

(assert (=> d!1625520 (= c!866697 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(declare-fun e!3153997 () (InoxSet T!104852))

(assert (=> d!1625520 (= (content!10398 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))) e!3153997)))

(declare-fun b!5051884 () Bool)

(assert (=> b!5051884 (= e!3153997 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051885 () Bool)

(assert (=> b!5051885 (= e!3153997 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))) true) (content!10398 (t!371159 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))))

(assert (= (and d!1625520 c!866697) b!5051884))

(assert (= (and d!1625520 (not c!866697)) b!5051885))

(declare-fun m!6085996 () Bool)

(assert (=> b!5051885 m!6085996))

(declare-fun m!6085998 () Bool)

(assert (=> b!5051885 m!6085998))

(assert (=> b!5051566 d!1625520))

(declare-fun d!1625522 () Bool)

(declare-fun lt!2086828 () Int)

(assert (=> d!1625522 (>= lt!2086828 0)))

(declare-fun e!3153998 () Int)

(assert (=> d!1625522 (= lt!2086828 e!3153998)))

(declare-fun c!866698 () Bool)

(assert (=> d!1625522 (= c!866698 ((_ is Nil!58396) (t!371159 lt!2086718)))))

(assert (=> d!1625522 (= (size!39019 (t!371159 lt!2086718)) lt!2086828)))

(declare-fun b!5051886 () Bool)

(assert (=> b!5051886 (= e!3153998 0)))

(declare-fun b!5051887 () Bool)

(assert (=> b!5051887 (= e!3153998 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086718)))))))

(assert (= (and d!1625522 c!866698) b!5051886))

(assert (= (and d!1625522 (not c!866698)) b!5051887))

(declare-fun m!6086000 () Bool)

(assert (=> b!5051887 m!6086000))

(assert (=> b!5051598 d!1625522))

(declare-fun b!5051888 () Bool)

(declare-fun res!2151243 () Bool)

(declare-fun e!3154000 () Bool)

(assert (=> b!5051888 (=> (not res!2151243) (not e!3154000))))

(declare-fun lt!2086829 () tuple2!63282)

(assert (=> b!5051888 (= res!2151243 (= (_1!34944 lt!2086829) (take!887 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1))))))

(declare-fun d!1625524 () Bool)

(assert (=> d!1625524 e!3154000))

(declare-fun res!2151242 () Bool)

(assert (=> d!1625524 (=> (not res!2151242) (not e!3154000))))

(assert (=> d!1625524 (= res!2151242 (= (++!12759 (_1!34944 lt!2086829) (_2!34944 lt!2086829)) (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(declare-fun e!3153999 () tuple2!63282)

(assert (=> d!1625524 (= lt!2086829 e!3153999)))

(declare-fun c!866699 () Bool)

(assert (=> d!1625524 (= c!866699 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(assert (=> d!1625524 (= (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1)) lt!2086829)))

(declare-fun b!5051889 () Bool)

(assert (=> b!5051889 (= e!3154000 (= (_2!34944 lt!2086829) (drop!2685 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1))))))

(declare-fun b!5051890 () Bool)

(assert (=> b!5051890 (= e!3153999 (tuple2!63283 Nil!58396 Nil!58396))))

(declare-fun b!5051891 () Bool)

(declare-fun lt!2086830 () tuple2!63282)

(assert (=> b!5051891 (= lt!2086830 (splitAtIndex!227 (t!371159 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))) (- (- (- (- i!652 1) 1) 1) 1)))))

(declare-fun e!3154001 () tuple2!63282)

(assert (=> b!5051891 (= e!3154001 (tuple2!63283 (Cons!58396 (h!64844 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))) (_1!34944 lt!2086830)) (_2!34944 lt!2086830)))))

(declare-fun b!5051892 () Bool)

(assert (=> b!5051892 (= e!3153999 e!3154001)))

(declare-fun c!866700 () Bool)

(assert (=> b!5051892 (= c!866700 (<= (- (- (- i!652 1) 1) 1) 0))))

(declare-fun b!5051893 () Bool)

(assert (=> b!5051893 (= e!3154001 (tuple2!63283 Nil!58396 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(assert (= (and d!1625524 c!866699) b!5051890))

(assert (= (and d!1625524 (not c!866699)) b!5051892))

(assert (= (and b!5051892 c!866700) b!5051893))

(assert (= (and b!5051892 (not c!866700)) b!5051891))

(assert (= (and d!1625524 res!2151242) b!5051888))

(assert (= (and b!5051888 res!2151243) b!5051889))

(declare-fun m!6086002 () Bool)

(assert (=> b!5051888 m!6086002))

(declare-fun m!6086004 () Bool)

(assert (=> d!1625524 m!6086004))

(assert (=> b!5051889 m!6085978))

(declare-fun m!6086006 () Bool)

(assert (=> b!5051891 m!6086006))

(assert (=> b!5051570 d!1625524))

(declare-fun d!1625526 () Bool)

(declare-fun lt!2086831 () Int)

(assert (=> d!1625526 (>= lt!2086831 0)))

(declare-fun e!3154002 () Int)

(assert (=> d!1625526 (= lt!2086831 e!3154002)))

(declare-fun c!866701 () Bool)

(assert (=> d!1625526 (= c!866701 ((_ is Nil!58396) (t!371159 lt!2086709)))))

(assert (=> d!1625526 (= (size!39019 (t!371159 lt!2086709)) lt!2086831)))

(declare-fun b!5051894 () Bool)

(assert (=> b!5051894 (= e!3154002 0)))

(declare-fun b!5051895 () Bool)

(assert (=> b!5051895 (= e!3154002 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086709)))))))

(assert (= (and d!1625526 c!866701) b!5051894))

(assert (= (and d!1625526 (not c!866701)) b!5051895))

(declare-fun m!6086008 () Bool)

(assert (=> b!5051895 m!6086008))

(assert (=> b!5051538 d!1625526))

(declare-fun b!5051897 () Bool)

(declare-fun e!3154005 () Int)

(assert (=> b!5051897 (= e!3154005 (size!39019 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))))))

(declare-fun b!5051898 () Bool)

(declare-fun e!3154003 () Int)

(assert (=> b!5051898 (= e!3154003 e!3154005)))

(declare-fun c!866702 () Bool)

(assert (=> b!5051898 (= c!866702 (>= (- (- i!652 1) 1) (size!39019 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(declare-fun b!5051899 () Bool)

(declare-fun e!3154004 () Bool)

(declare-fun lt!2086832 () List!58520)

(assert (=> b!5051899 (= e!3154004 (= (size!39019 lt!2086832) e!3154003))))

(declare-fun c!866703 () Bool)

(assert (=> b!5051899 (= c!866703 (<= (- (- i!652 1) 1) 0))))

(declare-fun b!5051900 () Bool)

(assert (=> b!5051900 (= e!3154005 (- (- i!652 1) 1))))

(declare-fun b!5051901 () Bool)

(declare-fun e!3154006 () List!58520)

(assert (=> b!5051901 (= e!3154006 (Cons!58396 (h!64844 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (take!887 (t!371159 (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (- (- (- i!652 1) 1) 1))))))

(declare-fun b!5051902 () Bool)

(assert (=> b!5051902 (= e!3154006 Nil!58396)))

(declare-fun d!1625528 () Bool)

(assert (=> d!1625528 e!3154004))

(declare-fun res!2151244 () Bool)

(assert (=> d!1625528 (=> (not res!2151244) (not e!3154004))))

(assert (=> d!1625528 (= res!2151244 (= ((_ map implies) (content!10398 lt!2086832) (content!10398 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625528 (= lt!2086832 e!3154006)))

(declare-fun c!866704 () Bool)

(assert (=> d!1625528 (= c!866704 (or ((_ is Nil!58396) (t!371159 (t!371159 (++!12759 l!2757 r!2041)))) (<= (- (- i!652 1) 1) 0)))))

(assert (=> d!1625528 (= (take!887 (t!371159 (t!371159 (++!12759 l!2757 r!2041))) (- (- i!652 1) 1)) lt!2086832)))

(declare-fun b!5051896 () Bool)

(assert (=> b!5051896 (= e!3154003 0)))

(assert (= (and d!1625528 c!866704) b!5051902))

(assert (= (and d!1625528 (not c!866704)) b!5051901))

(assert (= (and d!1625528 res!2151244) b!5051899))

(assert (= (and b!5051899 c!866703) b!5051896))

(assert (= (and b!5051899 (not c!866703)) b!5051898))

(assert (= (and b!5051898 c!866702) b!5051897))

(assert (= (and b!5051898 (not c!866702)) b!5051900))

(assert (=> b!5051898 m!6085926))

(declare-fun m!6086010 () Bool)

(assert (=> b!5051899 m!6086010))

(assert (=> b!5051897 m!6085926))

(assert (=> b!5051901 m!6086002))

(declare-fun m!6086012 () Bool)

(assert (=> d!1625528 m!6086012))

(assert (=> d!1625528 m!6085982))

(assert (=> b!5051614 d!1625528))

(declare-fun d!1625530 () Bool)

(declare-fun lt!2086833 () Int)

(assert (=> d!1625530 (>= lt!2086833 0)))

(declare-fun e!3154007 () Int)

(assert (=> d!1625530 (= lt!2086833 e!3154007)))

(declare-fun c!866705 () Bool)

(assert (=> d!1625530 (= c!866705 ((_ is Nil!58396) lt!2086749))))

(assert (=> d!1625530 (= (size!39019 lt!2086749) lt!2086833)))

(declare-fun b!5051903 () Bool)

(assert (=> b!5051903 (= e!3154007 0)))

(declare-fun b!5051904 () Bool)

(assert (=> b!5051904 (= e!3154007 (+ 1 (size!39019 (t!371159 lt!2086749))))))

(assert (= (and d!1625530 c!866705) b!5051903))

(assert (= (and d!1625530 (not c!866705)) b!5051904))

(declare-fun m!6086014 () Bool)

(assert (=> b!5051904 m!6086014))

(assert (=> b!5051552 d!1625530))

(declare-fun d!1625532 () Bool)

(declare-fun c!866706 () Bool)

(assert (=> d!1625532 (= c!866706 ((_ is Nil!58396) (t!371159 lt!2086701)))))

(declare-fun e!3154008 () (InoxSet T!104852))

(assert (=> d!1625532 (= (content!10398 (t!371159 lt!2086701)) e!3154008)))

(declare-fun b!5051905 () Bool)

(assert (=> b!5051905 (= e!3154008 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051906 () Bool)

(assert (=> b!5051906 (= e!3154008 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086701)) true) (content!10398 (t!371159 (t!371159 lt!2086701)))))))

(assert (= (and d!1625532 c!866706) b!5051905))

(assert (= (and d!1625532 (not c!866706)) b!5051906))

(declare-fun m!6086016 () Bool)

(assert (=> b!5051906 m!6086016))

(declare-fun m!6086018 () Bool)

(assert (=> b!5051906 m!6086018))

(assert (=> b!5051523 d!1625532))

(declare-fun d!1625534 () Bool)

(declare-fun lt!2086834 () Int)

(assert (=> d!1625534 (>= lt!2086834 0)))

(declare-fun e!3154009 () Int)

(assert (=> d!1625534 (= lt!2086834 e!3154009)))

(declare-fun c!866707 () Bool)

(assert (=> d!1625534 (= c!866707 ((_ is Nil!58396) (t!371159 lt!2086716)))))

(assert (=> d!1625534 (= (size!39019 (t!371159 lt!2086716)) lt!2086834)))

(declare-fun b!5051907 () Bool)

(assert (=> b!5051907 (= e!3154009 0)))

(declare-fun b!5051908 () Bool)

(assert (=> b!5051908 (= e!3154009 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086716)))))))

(assert (= (and d!1625534 c!866707) b!5051907))

(assert (= (and d!1625534 (not c!866707)) b!5051908))

(declare-fun m!6086020 () Bool)

(assert (=> b!5051908 m!6086020))

(assert (=> b!5051641 d!1625534))

(declare-fun d!1625536 () Bool)

(declare-fun c!866708 () Bool)

(assert (=> d!1625536 (= c!866708 ((_ is Nil!58396) (t!371159 lt!2086718)))))

(declare-fun e!3154010 () (InoxSet T!104852))

(assert (=> d!1625536 (= (content!10398 (t!371159 lt!2086718)) e!3154010)))

(declare-fun b!5051909 () Bool)

(assert (=> b!5051909 (= e!3154010 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051910 () Bool)

(assert (=> b!5051910 (= e!3154010 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086718)) true) (content!10398 (t!371159 (t!371159 lt!2086718)))))))

(assert (= (and d!1625536 c!866708) b!5051909))

(assert (= (and d!1625536 (not c!866708)) b!5051910))

(declare-fun m!6086022 () Bool)

(assert (=> b!5051910 m!6086022))

(declare-fun m!6086024 () Bool)

(assert (=> b!5051910 m!6086024))

(assert (=> b!5051623 d!1625536))

(declare-fun d!1625538 () Bool)

(declare-fun c!866709 () Bool)

(assert (=> d!1625538 (= c!866709 ((_ is Nil!58396) (t!371159 lt!2086716)))))

(declare-fun e!3154011 () (InoxSet T!104852))

(assert (=> d!1625538 (= (content!10398 (t!371159 lt!2086716)) e!3154011)))

(declare-fun b!5051911 () Bool)

(assert (=> b!5051911 (= e!3154011 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051912 () Bool)

(assert (=> b!5051912 (= e!3154011 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086716)) true) (content!10398 (t!371159 (t!371159 lt!2086716)))))))

(assert (= (and d!1625538 c!866709) b!5051911))

(assert (= (and d!1625538 (not c!866709)) b!5051912))

(declare-fun m!6086026 () Bool)

(assert (=> b!5051912 m!6086026))

(declare-fun m!6086028 () Bool)

(assert (=> b!5051912 m!6086028))

(assert (=> b!5051590 d!1625538))

(declare-fun b!5051916 () Bool)

(declare-fun e!3154012 () Bool)

(declare-fun lt!2086835 () List!58520)

(assert (=> b!5051916 (= e!3154012 (or (not (= (_2!34944 lt!2086772) Nil!58396)) (= lt!2086835 (_1!34944 lt!2086772))))))

(declare-fun b!5051914 () Bool)

(declare-fun e!3154013 () List!58520)

(assert (=> b!5051914 (= e!3154013 (Cons!58396 (h!64844 (_1!34944 lt!2086772)) (++!12759 (t!371159 (_1!34944 lt!2086772)) (_2!34944 lt!2086772))))))

(declare-fun b!5051913 () Bool)

(assert (=> b!5051913 (= e!3154013 (_2!34944 lt!2086772))))

(declare-fun b!5051915 () Bool)

(declare-fun res!2151246 () Bool)

(assert (=> b!5051915 (=> (not res!2151246) (not e!3154012))))

(assert (=> b!5051915 (= res!2151246 (= (size!39019 lt!2086835) (+ (size!39019 (_1!34944 lt!2086772)) (size!39019 (_2!34944 lt!2086772)))))))

(declare-fun d!1625540 () Bool)

(assert (=> d!1625540 e!3154012))

(declare-fun res!2151245 () Bool)

(assert (=> d!1625540 (=> (not res!2151245) (not e!3154012))))

(assert (=> d!1625540 (= res!2151245 (= (content!10398 lt!2086835) ((_ map or) (content!10398 (_1!34944 lt!2086772)) (content!10398 (_2!34944 lt!2086772)))))))

(assert (=> d!1625540 (= lt!2086835 e!3154013)))

(declare-fun c!866710 () Bool)

(assert (=> d!1625540 (= c!866710 ((_ is Nil!58396) (_1!34944 lt!2086772)))))

(assert (=> d!1625540 (= (++!12759 (_1!34944 lt!2086772) (_2!34944 lt!2086772)) lt!2086835)))

(assert (= (and d!1625540 c!866710) b!5051913))

(assert (= (and d!1625540 (not c!866710)) b!5051914))

(assert (= (and d!1625540 res!2151245) b!5051915))

(assert (= (and b!5051915 res!2151246) b!5051916))

(declare-fun m!6086030 () Bool)

(assert (=> b!5051914 m!6086030))

(declare-fun m!6086032 () Bool)

(assert (=> b!5051915 m!6086032))

(declare-fun m!6086034 () Bool)

(assert (=> b!5051915 m!6086034))

(declare-fun m!6086036 () Bool)

(assert (=> b!5051915 m!6086036))

(declare-fun m!6086038 () Bool)

(assert (=> d!1625540 m!6086038))

(declare-fun m!6086040 () Bool)

(assert (=> d!1625540 m!6086040))

(declare-fun m!6086042 () Bool)

(assert (=> d!1625540 m!6086042))

(assert (=> d!1625356 d!1625540))

(declare-fun d!1625542 () Bool)

(declare-fun lt!2086836 () Int)

(assert (=> d!1625542 (>= lt!2086836 0)))

(declare-fun e!3154014 () Int)

(assert (=> d!1625542 (= lt!2086836 e!3154014)))

(declare-fun c!866711 () Bool)

(assert (=> d!1625542 (= c!866711 ((_ is Nil!58396) (t!371159 (ite c!866400 l!2757 r!2041))))))

(assert (=> d!1625542 (= (size!39019 (t!371159 (ite c!866400 l!2757 r!2041))) lt!2086836)))

(declare-fun b!5051917 () Bool)

(assert (=> b!5051917 (= e!3154014 0)))

(declare-fun b!5051918 () Bool)

(assert (=> b!5051918 (= e!3154014 (+ 1 (size!39019 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(assert (= (and d!1625542 c!866711) b!5051917))

(assert (= (and d!1625542 (not c!866711)) b!5051918))

(assert (=> b!5051918 m!6085918))

(assert (=> b!5051559 d!1625542))

(declare-fun d!1625544 () Bool)

(declare-fun c!866712 () Bool)

(assert (=> d!1625544 (= c!866712 ((_ is Nil!58396) (t!371159 lt!2086709)))))

(declare-fun e!3154015 () (InoxSet T!104852))

(assert (=> d!1625544 (= (content!10398 (t!371159 lt!2086709)) e!3154015)))

(declare-fun b!5051919 () Bool)

(assert (=> b!5051919 (= e!3154015 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051920 () Bool)

(assert (=> b!5051920 (= e!3154015 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086709)) true) (content!10398 (t!371159 (t!371159 lt!2086709)))))))

(assert (= (and d!1625544 c!866712) b!5051919))

(assert (= (and d!1625544 (not c!866712)) b!5051920))

(declare-fun m!6086044 () Bool)

(assert (=> b!5051920 m!6086044))

(declare-fun m!6086046 () Bool)

(assert (=> b!5051920 m!6086046))

(assert (=> b!5051582 d!1625544))

(declare-fun d!1625546 () Bool)

(declare-fun c!866713 () Bool)

(assert (=> d!1625546 (= c!866713 ((_ is Nil!58396) lt!2086761))))

(declare-fun e!3154016 () (InoxSet T!104852))

(assert (=> d!1625546 (= (content!10398 lt!2086761) e!3154016)))

(declare-fun b!5051921 () Bool)

(assert (=> b!5051921 (= e!3154016 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051922 () Bool)

(assert (=> b!5051922 (= e!3154016 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086761) true) (content!10398 (t!371159 lt!2086761))))))

(assert (= (and d!1625546 c!866713) b!5051921))

(assert (= (and d!1625546 (not c!866713)) b!5051922))

(declare-fun m!6086048 () Bool)

(assert (=> b!5051922 m!6086048))

(declare-fun m!6086050 () Bool)

(assert (=> b!5051922 m!6086050))

(assert (=> d!1625328 d!1625546))

(declare-fun d!1625548 () Bool)

(declare-fun c!866714 () Bool)

(assert (=> d!1625548 (= c!866714 ((_ is Nil!58396) (t!371159 (++!12759 l!2757 r!2041))))))

(declare-fun e!3154017 () (InoxSet T!104852))

(assert (=> d!1625548 (= (content!10398 (t!371159 (++!12759 l!2757 r!2041))) e!3154017)))

(declare-fun b!5051923 () Bool)

(assert (=> b!5051923 (= e!3154017 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051924 () Bool)

(assert (=> b!5051924 (= e!3154017 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (++!12759 l!2757 r!2041))) true) (content!10398 (t!371159 (t!371159 (++!12759 l!2757 r!2041))))))))

(assert (= (and d!1625548 c!866714) b!5051923))

(assert (= (and d!1625548 (not c!866714)) b!5051924))

(declare-fun m!6086052 () Bool)

(assert (=> b!5051924 m!6086052))

(assert (=> b!5051924 m!6085982))

(assert (=> d!1625328 d!1625548))

(declare-fun d!1625550 () Bool)

(declare-fun c!866715 () Bool)

(assert (=> d!1625550 (= c!866715 ((_ is Nil!58396) lt!2086748))))

(declare-fun e!3154018 () (InoxSet T!104852))

(assert (=> d!1625550 (= (content!10398 lt!2086748) e!3154018)))

(declare-fun b!5051925 () Bool)

(assert (=> b!5051925 (= e!3154018 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051926 () Bool)

(assert (=> b!5051926 (= e!3154018 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086748) true) (content!10398 (t!371159 lt!2086748))))))

(assert (= (and d!1625550 c!866715) b!5051925))

(assert (= (and d!1625550 (not c!866715)) b!5051926))

(declare-fun m!6086054 () Bool)

(assert (=> b!5051926 m!6086054))

(declare-fun m!6086056 () Bool)

(assert (=> b!5051926 m!6086056))

(assert (=> d!1625286 d!1625550))

(declare-fun d!1625552 () Bool)

(declare-fun c!866716 () Bool)

(assert (=> d!1625552 (= c!866716 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086682))))))

(declare-fun e!3154019 () (InoxSet T!104852))

(assert (=> d!1625552 (= (content!10398 (t!371159 (_1!34944 lt!2086682))) e!3154019)))

(declare-fun b!5051927 () Bool)

(assert (=> b!5051927 (= e!3154019 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051928 () Bool)

(assert (=> b!5051928 (= e!3154019 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (_1!34944 lt!2086682))) true) (content!10398 (t!371159 (t!371159 (_1!34944 lt!2086682))))))))

(assert (= (and d!1625552 c!866716) b!5051927))

(assert (= (and d!1625552 (not c!866716)) b!5051928))

(declare-fun m!6086058 () Bool)

(assert (=> b!5051928 m!6086058))

(declare-fun m!6086060 () Bool)

(assert (=> b!5051928 m!6086060))

(assert (=> d!1625286 d!1625552))

(assert (=> d!1625286 d!1625260))

(declare-fun lt!2086837 () List!58520)

(declare-fun e!3154020 () Bool)

(declare-fun b!5051932 () Bool)

(assert (=> b!5051932 (= e!3154020 (or (not (= (ite c!866400 r!2041 (_1!34944 lt!2086663)) Nil!58396)) (= lt!2086837 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))))))))

(declare-fun e!3154021 () List!58520)

(declare-fun b!5051930 () Bool)

(assert (=> b!5051930 (= e!3154021 (Cons!58396 (h!64844 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))) (++!12759 (t!371159 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))) (ite c!866400 r!2041 (_1!34944 lt!2086663)))))))

(declare-fun b!5051929 () Bool)

(assert (=> b!5051929 (= e!3154021 (ite c!866400 r!2041 (_1!34944 lt!2086663)))))

(declare-fun b!5051931 () Bool)

(declare-fun res!2151248 () Bool)

(assert (=> b!5051931 (=> (not res!2151248) (not e!3154020))))

(assert (=> b!5051931 (= res!2151248 (= (size!39019 lt!2086837) (+ (size!39019 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))) (size!39019 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(declare-fun d!1625554 () Bool)

(assert (=> d!1625554 e!3154020))

(declare-fun res!2151247 () Bool)

(assert (=> d!1625554 (=> (not res!2151247) (not e!3154020))))

(assert (=> d!1625554 (= res!2151247 (= (content!10398 lt!2086837) ((_ map or) (content!10398 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))) (content!10398 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (=> d!1625554 (= lt!2086837 e!3154021)))

(declare-fun c!866717 () Bool)

(assert (=> d!1625554 (= c!866717 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757))))))))

(assert (=> d!1625554 (= (++!12759 (t!371159 (t!371159 (t!371159 (ite c!866400 (_2!34944 lt!2086660) l!2757)))) (ite c!866400 r!2041 (_1!34944 lt!2086663))) lt!2086837)))

(assert (= (and d!1625554 c!866717) b!5051929))

(assert (= (and d!1625554 (not c!866717)) b!5051930))

(assert (= (and d!1625554 res!2151247) b!5051931))

(assert (= (and b!5051931 res!2151248) b!5051932))

(declare-fun m!6086062 () Bool)

(assert (=> b!5051930 m!6086062))

(declare-fun m!6086064 () Bool)

(assert (=> b!5051931 m!6086064))

(assert (=> b!5051931 m!6085900))

(assert (=> b!5051931 m!6085184))

(declare-fun m!6086066 () Bool)

(assert (=> d!1625554 m!6086066))

(assert (=> d!1625554 m!6085966))

(assert (=> d!1625554 m!6085192))

(assert (=> b!5051576 d!1625554))

(assert (=> b!5051544 d!1625542))

(declare-fun lt!2086838 () List!58520)

(declare-fun e!3154022 () Bool)

(declare-fun b!5051936 () Bool)

(assert (=> b!5051936 (= e!3154022 (or (not (= r!2041 Nil!58396)) (= lt!2086838 (t!371159 (t!371159 (t!371159 l!2757))))))))

(declare-fun b!5051934 () Bool)

(declare-fun e!3154023 () List!58520)

(assert (=> b!5051934 (= e!3154023 (Cons!58396 (h!64844 (t!371159 (t!371159 (t!371159 l!2757)))) (++!12759 (t!371159 (t!371159 (t!371159 (t!371159 l!2757)))) r!2041)))))

(declare-fun b!5051933 () Bool)

(assert (=> b!5051933 (= e!3154023 r!2041)))

(declare-fun b!5051935 () Bool)

(declare-fun res!2151250 () Bool)

(assert (=> b!5051935 (=> (not res!2151250) (not e!3154022))))

(assert (=> b!5051935 (= res!2151250 (= (size!39019 lt!2086838) (+ (size!39019 (t!371159 (t!371159 (t!371159 l!2757)))) (size!39019 r!2041))))))

(declare-fun d!1625556 () Bool)

(assert (=> d!1625556 e!3154022))

(declare-fun res!2151249 () Bool)

(assert (=> d!1625556 (=> (not res!2151249) (not e!3154022))))

(assert (=> d!1625556 (= res!2151249 (= (content!10398 lt!2086838) ((_ map or) (content!10398 (t!371159 (t!371159 (t!371159 l!2757)))) (content!10398 r!2041))))))

(assert (=> d!1625556 (= lt!2086838 e!3154023)))

(declare-fun c!866718 () Bool)

(assert (=> d!1625556 (= c!866718 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 l!2757)))))))

(assert (=> d!1625556 (= (++!12759 (t!371159 (t!371159 (t!371159 l!2757))) r!2041) lt!2086838)))

(assert (= (and d!1625556 c!866718) b!5051933))

(assert (= (and d!1625556 (not c!866718)) b!5051934))

(assert (= (and d!1625556 res!2151249) b!5051935))

(assert (= (and b!5051935 res!2151250) b!5051936))

(declare-fun m!6086068 () Bool)

(assert (=> b!5051934 m!6086068))

(declare-fun m!6086070 () Bool)

(assert (=> b!5051935 m!6086070))

(assert (=> b!5051935 m!6085664))

(assert (=> b!5051935 m!6085150))

(declare-fun m!6086072 () Bool)

(assert (=> d!1625556 m!6086072))

(assert (=> d!1625556 m!6085974))

(assert (=> d!1625556 m!6085232))

(assert (=> b!5051627 d!1625556))

(declare-fun d!1625558 () Bool)

(declare-fun c!866719 () Bool)

(assert (=> d!1625558 (= c!866719 ((_ is Nil!58396) (t!371159 (t!371159 lt!2086685))))))

(declare-fun e!3154024 () (InoxSet T!104852))

(assert (=> d!1625558 (= (content!10398 (t!371159 (t!371159 lt!2086685))) e!3154024)))

(declare-fun b!5051937 () Bool)

(assert (=> b!5051937 (= e!3154024 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051938 () Bool)

(assert (=> b!5051938 (= e!3154024 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 lt!2086685))) true) (content!10398 (t!371159 (t!371159 (t!371159 lt!2086685))))))))

(assert (= (and d!1625558 c!866719) b!5051937))

(assert (= (and d!1625558 (not c!866719)) b!5051938))

(declare-fun m!6086074 () Bool)

(assert (=> b!5051938 m!6086074))

(declare-fun m!6086076 () Bool)

(assert (=> b!5051938 m!6086076))

(assert (=> b!5051653 d!1625558))

(declare-fun d!1625560 () Bool)

(declare-fun lt!2086839 () Int)

(assert (=> d!1625560 (>= lt!2086839 0)))

(declare-fun e!3154025 () Int)

(assert (=> d!1625560 (= lt!2086839 e!3154025)))

(declare-fun c!866720 () Bool)

(assert (=> d!1625560 (= c!866720 ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))

(assert (=> d!1625560 (= (size!39019 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))) lt!2086839)))

(declare-fun b!5051939 () Bool)

(assert (=> b!5051939 (= e!3154025 0)))

(declare-fun b!5051940 () Bool)

(assert (=> b!5051940 (= e!3154025 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 (ite c!866400 r!2041 (_1!34944 lt!2086663))))))))))

(assert (= (and d!1625560 c!866720) b!5051939))

(assert (= (and d!1625560 (not c!866720)) b!5051940))

(declare-fun m!6086078 () Bool)

(assert (=> b!5051940 m!6086078))

(assert (=> b!5051517 d!1625560))

(declare-fun d!1625562 () Bool)

(declare-fun lt!2086840 () Int)

(assert (=> d!1625562 (>= lt!2086840 0)))

(declare-fun e!3154026 () Int)

(assert (=> d!1625562 (= lt!2086840 e!3154026)))

(declare-fun c!866721 () Bool)

(assert (=> d!1625562 (= c!866721 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 l!2757)))))))

(assert (=> d!1625562 (= (size!39019 (t!371159 (t!371159 (t!371159 l!2757)))) lt!2086840)))

(declare-fun b!5051941 () Bool)

(assert (=> b!5051941 (= e!3154026 0)))

(declare-fun b!5051942 () Bool)

(assert (=> b!5051942 (= e!3154026 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 (t!371159 l!2757)))))))))

(assert (= (and d!1625562 c!866721) b!5051941))

(assert (= (and d!1625562 (not c!866721)) b!5051942))

(declare-fun m!6086080 () Bool)

(assert (=> b!5051942 m!6086080))

(assert (=> b!5051633 d!1625562))

(assert (=> b!5051596 d!1625506))

(declare-fun d!1625564 () Bool)

(declare-fun c!866722 () Bool)

(assert (=> d!1625564 (= c!866722 ((_ is Nil!58396) (t!371159 lt!2086719)))))

(declare-fun e!3154027 () (InoxSet T!104852))

(assert (=> d!1625564 (= (content!10398 (t!371159 lt!2086719)) e!3154027)))

(declare-fun b!5051943 () Bool)

(assert (=> b!5051943 (= e!3154027 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051944 () Bool)

(assert (=> b!5051944 (= e!3154027 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086719)) true) (content!10398 (t!371159 (t!371159 lt!2086719)))))))

(assert (= (and d!1625564 c!866722) b!5051943))

(assert (= (and d!1625564 (not c!866722)) b!5051944))

(declare-fun m!6086082 () Bool)

(assert (=> b!5051944 m!6086082))

(declare-fun m!6086084 () Bool)

(assert (=> b!5051944 m!6086084))

(assert (=> b!5051536 d!1625564))

(declare-fun b!5051948 () Bool)

(declare-fun e!3154028 () Bool)

(declare-fun lt!2086841 () List!58520)

(assert (=> b!5051948 (= e!3154028 (or (not (= (_2!34944 lt!2086751) Nil!58396)) (= lt!2086841 (_1!34944 lt!2086751))))))

(declare-fun b!5051946 () Bool)

(declare-fun e!3154029 () List!58520)

(assert (=> b!5051946 (= e!3154029 (Cons!58396 (h!64844 (_1!34944 lt!2086751)) (++!12759 (t!371159 (_1!34944 lt!2086751)) (_2!34944 lt!2086751))))))

(declare-fun b!5051945 () Bool)

(assert (=> b!5051945 (= e!3154029 (_2!34944 lt!2086751))))

(declare-fun b!5051947 () Bool)

(declare-fun res!2151252 () Bool)

(assert (=> b!5051947 (=> (not res!2151252) (not e!3154028))))

(assert (=> b!5051947 (= res!2151252 (= (size!39019 lt!2086841) (+ (size!39019 (_1!34944 lt!2086751)) (size!39019 (_2!34944 lt!2086751)))))))

(declare-fun d!1625566 () Bool)

(assert (=> d!1625566 e!3154028))

(declare-fun res!2151251 () Bool)

(assert (=> d!1625566 (=> (not res!2151251) (not e!3154028))))

(assert (=> d!1625566 (= res!2151251 (= (content!10398 lt!2086841) ((_ map or) (content!10398 (_1!34944 lt!2086751)) (content!10398 (_2!34944 lt!2086751)))))))

(assert (=> d!1625566 (= lt!2086841 e!3154029)))

(declare-fun c!866723 () Bool)

(assert (=> d!1625566 (= c!866723 ((_ is Nil!58396) (_1!34944 lt!2086751)))))

(assert (=> d!1625566 (= (++!12759 (_1!34944 lt!2086751) (_2!34944 lt!2086751)) lt!2086841)))

(assert (= (and d!1625566 c!866723) b!5051945))

(assert (= (and d!1625566 (not c!866723)) b!5051946))

(assert (= (and d!1625566 res!2151251) b!5051947))

(assert (= (and b!5051947 res!2151252) b!5051948))

(declare-fun m!6086086 () Bool)

(assert (=> b!5051946 m!6086086))

(declare-fun m!6086088 () Bool)

(assert (=> b!5051947 m!6086088))

(declare-fun m!6086090 () Bool)

(assert (=> b!5051947 m!6086090))

(declare-fun m!6086092 () Bool)

(assert (=> b!5051947 m!6086092))

(declare-fun m!6086094 () Bool)

(assert (=> d!1625566 m!6086094))

(declare-fun m!6086096 () Bool)

(assert (=> d!1625566 m!6086096))

(declare-fun m!6086098 () Bool)

(assert (=> d!1625566 m!6086098))

(assert (=> d!1625294 d!1625566))

(declare-fun d!1625568 () Bool)

(declare-fun lt!2086842 () Int)

(assert (=> d!1625568 (>= lt!2086842 0)))

(declare-fun e!3154030 () Int)

(assert (=> d!1625568 (= lt!2086842 e!3154030)))

(declare-fun c!866724 () Bool)

(assert (=> d!1625568 (= c!866724 ((_ is Nil!58396) lt!2086750))))

(assert (=> d!1625568 (= (size!39019 lt!2086750) lt!2086842)))

(declare-fun b!5051949 () Bool)

(assert (=> b!5051949 (= e!3154030 0)))

(declare-fun b!5051950 () Bool)

(assert (=> b!5051950 (= e!3154030 (+ 1 (size!39019 (t!371159 lt!2086750))))))

(assert (= (and d!1625568 c!866724) b!5051949))

(assert (= (and d!1625568 (not c!866724)) b!5051950))

(declare-fun m!6086100 () Bool)

(assert (=> b!5051950 m!6086100))

(assert (=> b!5051561 d!1625568))

(assert (=> b!5051509 d!1625552))

(assert (=> b!5051513 d!1625482))

(assert (=> b!5051530 d!1625476))

(declare-fun e!3154033 () Int)

(declare-fun b!5051952 () Bool)

(assert (=> b!5051952 (= e!3154033 (size!39019 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))))))

(declare-fun b!5051953 () Bool)

(declare-fun e!3154031 () Int)

(assert (=> b!5051953 (= e!3154031 e!3154033)))

(declare-fun c!866725 () Bool)

(assert (=> b!5051953 (= c!866725 (>= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) (size!39019 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(declare-fun b!5051954 () Bool)

(declare-fun e!3154032 () Bool)

(declare-fun lt!2086843 () List!58520)

(assert (=> b!5051954 (= e!3154032 (= (size!39019 lt!2086843) e!3154031))))

(declare-fun c!866726 () Bool)

(assert (=> b!5051954 (= c!866726 (<= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 0))))

(declare-fun b!5051955 () Bool)

(assert (=> b!5051955 (= e!3154033 (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1))))

(declare-fun e!3154034 () List!58520)

(declare-fun b!5051956 () Bool)

(assert (=> b!5051956 (= e!3154034 (Cons!58396 (h!64844 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (take!887 (t!371159 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (- (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 1))))))

(declare-fun b!5051957 () Bool)

(assert (=> b!5051957 (= e!3154034 Nil!58396)))

(declare-fun d!1625570 () Bool)

(assert (=> d!1625570 e!3154032))

(declare-fun res!2151253 () Bool)

(assert (=> d!1625570 (=> (not res!2151253) (not e!3154032))))

(assert (=> d!1625570 (= res!2151253 (= ((_ map implies) (content!10398 lt!2086843) (content!10398 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))) ((as const (InoxSet T!104852)) true)))))

(assert (=> d!1625570 (= lt!2086843 e!3154034)))

(declare-fun c!866727 () Bool)

(assert (=> d!1625570 (= c!866727 (or ((_ is Nil!58396) (t!371159 (t!371159 (ite c!866400 l!2757 r!2041)))) (<= (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1) 0)))))

(assert (=> d!1625570 (= (take!887 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))) (- (- (ite c!866400 i!652 (- i!652 lt!2086661)) 1) 1)) lt!2086843)))

(declare-fun b!5051951 () Bool)

(assert (=> b!5051951 (= e!3154031 0)))

(assert (= (and d!1625570 c!866727) b!5051957))

(assert (= (and d!1625570 (not c!866727)) b!5051956))

(assert (= (and d!1625570 res!2151253) b!5051954))

(assert (= (and b!5051954 c!866726) b!5051951))

(assert (= (and b!5051954 (not c!866726)) b!5051953))

(assert (= (and b!5051953 c!866725) b!5051952))

(assert (= (and b!5051953 (not c!866725)) b!5051955))

(assert (=> b!5051953 m!6085918))

(declare-fun m!6086102 () Bool)

(assert (=> b!5051954 m!6086102))

(assert (=> b!5051952 m!6085918))

(assert (=> b!5051956 m!6085904))

(declare-fun m!6086104 () Bool)

(assert (=> d!1625570 m!6086104))

(assert (=> d!1625570 m!6085916))

(assert (=> b!5051646 d!1625570))

(assert (=> b!5051563 d!1625570))

(declare-fun d!1625572 () Bool)

(declare-fun c!866728 () Bool)

(assert (=> d!1625572 (= c!866728 ((_ is Nil!58396) (t!371159 (ite c!866400 l!2757 r!2041))))))

(declare-fun e!3154035 () (InoxSet T!104852))

(assert (=> d!1625572 (= (content!10398 (t!371159 (ite c!866400 l!2757 r!2041))) e!3154035)))

(declare-fun b!5051958 () Bool)

(assert (=> b!5051958 (= e!3154035 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051959 () Bool)

(assert (=> b!5051959 (= e!3154035 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (ite c!866400 l!2757 r!2041))) true) (content!10398 (t!371159 (t!371159 (ite c!866400 l!2757 r!2041))))))))

(assert (= (and d!1625572 c!866728) b!5051958))

(assert (= (and d!1625572 (not c!866728)) b!5051959))

(declare-fun m!6086106 () Bool)

(assert (=> b!5051959 m!6086106))

(assert (=> b!5051959 m!6085916))

(assert (=> b!5051525 d!1625572))

(assert (=> b!5051592 d!1625548))

(assert (=> bm!351969 d!1625542))

(declare-fun b!5051963 () Bool)

(declare-fun e!3154036 () Bool)

(declare-fun lt!2086844 () List!58520)

(assert (=> b!5051963 (= e!3154036 (or (not (= (_2!34944 lt!2086682) Nil!58396)) (= lt!2086844 (t!371159 (t!371159 (_1!34944 lt!2086682))))))))

(declare-fun b!5051961 () Bool)

(declare-fun e!3154037 () List!58520)

(assert (=> b!5051961 (= e!3154037 (Cons!58396 (h!64844 (t!371159 (t!371159 (_1!34944 lt!2086682)))) (++!12759 (t!371159 (t!371159 (t!371159 (_1!34944 lt!2086682)))) (_2!34944 lt!2086682))))))

(declare-fun b!5051960 () Bool)

(assert (=> b!5051960 (= e!3154037 (_2!34944 lt!2086682))))

(declare-fun b!5051962 () Bool)

(declare-fun res!2151255 () Bool)

(assert (=> b!5051962 (=> (not res!2151255) (not e!3154036))))

(assert (=> b!5051962 (= res!2151255 (= (size!39019 lt!2086844) (+ (size!39019 (t!371159 (t!371159 (_1!34944 lt!2086682)))) (size!39019 (_2!34944 lt!2086682)))))))

(declare-fun d!1625574 () Bool)

(assert (=> d!1625574 e!3154036))

(declare-fun res!2151254 () Bool)

(assert (=> d!1625574 (=> (not res!2151254) (not e!3154036))))

(assert (=> d!1625574 (= res!2151254 (= (content!10398 lt!2086844) ((_ map or) (content!10398 (t!371159 (t!371159 (_1!34944 lt!2086682)))) (content!10398 (_2!34944 lt!2086682)))))))

(assert (=> d!1625574 (= lt!2086844 e!3154037)))

(declare-fun c!866729 () Bool)

(assert (=> d!1625574 (= c!866729 ((_ is Nil!58396) (t!371159 (t!371159 (_1!34944 lt!2086682)))))))

(assert (=> d!1625574 (= (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086682))) (_2!34944 lt!2086682)) lt!2086844)))

(assert (= (and d!1625574 c!866729) b!5051960))

(assert (= (and d!1625574 (not c!866729)) b!5051961))

(assert (= (and d!1625574 res!2151254) b!5051962))

(assert (= (and b!5051962 res!2151255) b!5051963))

(declare-fun m!6086108 () Bool)

(assert (=> b!5051961 m!6086108))

(declare-fun m!6086110 () Bool)

(assert (=> b!5051962 m!6086110))

(assert (=> b!5051962 m!6085944))

(assert (=> b!5051962 m!6085376))

(declare-fun m!6086112 () Bool)

(assert (=> d!1625574 m!6086112))

(assert (=> d!1625574 m!6086060))

(assert (=> d!1625574 m!6085382))

(assert (=> b!5051546 d!1625574))

(declare-fun d!1625576 () Bool)

(declare-fun lt!2086845 () Int)

(assert (=> d!1625576 (>= lt!2086845 0)))

(declare-fun e!3154038 () Int)

(assert (=> d!1625576 (= lt!2086845 e!3154038)))

(declare-fun c!866730 () Bool)

(assert (=> d!1625576 (= c!866730 ((_ is Nil!58396) (t!371159 (_2!34944 lt!2086682))))))

(assert (=> d!1625576 (= (size!39019 (t!371159 (_2!34944 lt!2086682))) lt!2086845)))

(declare-fun b!5051964 () Bool)

(assert (=> b!5051964 (= e!3154038 0)))

(declare-fun b!5051965 () Bool)

(assert (=> b!5051965 (= e!3154038 (+ 1 (size!39019 (t!371159 (t!371159 (_2!34944 lt!2086682))))))))

(assert (= (and d!1625576 c!866730) b!5051964))

(assert (= (and d!1625576 (not c!866730)) b!5051965))

(declare-fun m!6086114 () Bool)

(assert (=> b!5051965 m!6086114))

(assert (=> b!5051639 d!1625576))

(declare-fun d!1625578 () Bool)

(declare-fun c!866731 () Bool)

(assert (=> d!1625578 (= c!866731 ((_ is Nil!58396) lt!2086742))))

(declare-fun e!3154039 () (InoxSet T!104852))

(assert (=> d!1625578 (= (content!10398 lt!2086742) e!3154039)))

(declare-fun b!5051966 () Bool)

(assert (=> b!5051966 (= e!3154039 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051967 () Bool)

(assert (=> b!5051967 (= e!3154039 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086742) true) (content!10398 (t!371159 lt!2086742))))))

(assert (= (and d!1625578 c!866731) b!5051966))

(assert (= (and d!1625578 (not c!866731)) b!5051967))

(declare-fun m!6086116 () Bool)

(assert (=> b!5051967 m!6086116))

(declare-fun m!6086118 () Bool)

(assert (=> b!5051967 m!6086118))

(assert (=> d!1625268 d!1625578))

(declare-fun d!1625580 () Bool)

(declare-fun c!866732 () Bool)

(assert (=> d!1625580 (= c!866732 ((_ is Nil!58396) (_1!34944 lt!2086697)))))

(declare-fun e!3154040 () (InoxSet T!104852))

(assert (=> d!1625580 (= (content!10398 (_1!34944 lt!2086697)) e!3154040)))

(declare-fun b!5051968 () Bool)

(assert (=> b!5051968 (= e!3154040 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051969 () Bool)

(assert (=> b!5051969 (= e!3154040 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_1!34944 lt!2086697)) true) (content!10398 (t!371159 (_1!34944 lt!2086697)))))))

(assert (= (and d!1625580 c!866732) b!5051968))

(assert (= (and d!1625580 (not c!866732)) b!5051969))

(declare-fun m!6086120 () Bool)

(assert (=> b!5051969 m!6086120))

(declare-fun m!6086122 () Bool)

(assert (=> b!5051969 m!6086122))

(assert (=> d!1625268 d!1625580))

(declare-fun d!1625582 () Bool)

(declare-fun c!866733 () Bool)

(assert (=> d!1625582 (= c!866733 ((_ is Nil!58396) (_2!34944 lt!2086697)))))

(declare-fun e!3154041 () (InoxSet T!104852))

(assert (=> d!1625582 (= (content!10398 (_2!34944 lt!2086697)) e!3154041)))

(declare-fun b!5051970 () Bool)

(assert (=> b!5051970 (= e!3154041 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051971 () Bool)

(assert (=> b!5051971 (= e!3154041 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_2!34944 lt!2086697)) true) (content!10398 (t!371159 (_2!34944 lt!2086697)))))))

(assert (= (and d!1625582 c!866733) b!5051970))

(assert (= (and d!1625582 (not c!866733)) b!5051971))

(declare-fun m!6086124 () Bool)

(assert (=> b!5051971 m!6086124))

(declare-fun m!6086126 () Bool)

(assert (=> b!5051971 m!6086126))

(assert (=> d!1625268 d!1625582))

(assert (=> b!5051584 d!1625466))

(declare-fun d!1625584 () Bool)

(declare-fun lt!2086846 () Int)

(assert (=> d!1625584 (>= lt!2086846 0)))

(declare-fun e!3154042 () Int)

(assert (=> d!1625584 (= lt!2086846 e!3154042)))

(declare-fun c!866734 () Bool)

(assert (=> d!1625584 (= c!866734 ((_ is Nil!58396) (t!371159 lt!2086708)))))

(assert (=> d!1625584 (= (size!39019 (t!371159 lt!2086708)) lt!2086846)))

(declare-fun b!5051972 () Bool)

(assert (=> b!5051972 (= e!3154042 0)))

(declare-fun b!5051973 () Bool)

(assert (=> b!5051973 (= e!3154042 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086708)))))))

(assert (= (and d!1625584 c!866734) b!5051972))

(assert (= (and d!1625584 (not c!866734)) b!5051973))

(declare-fun m!6086128 () Bool)

(assert (=> b!5051973 m!6086128))

(assert (=> b!5051602 d!1625584))

(declare-fun d!1625586 () Bool)

(declare-fun lt!2086847 () Int)

(assert (=> d!1625586 (>= lt!2086847 0)))

(declare-fun e!3154043 () Int)

(assert (=> d!1625586 (= lt!2086847 e!3154043)))

(declare-fun c!866735 () Bool)

(assert (=> d!1625586 (= c!866735 ((_ is Nil!58396) (t!371159 (_2!34944 lt!2086672))))))

(assert (=> d!1625586 (= (size!39019 (t!371159 (_2!34944 lt!2086672))) lt!2086847)))

(declare-fun b!5051974 () Bool)

(assert (=> b!5051974 (= e!3154043 0)))

(declare-fun b!5051975 () Bool)

(assert (=> b!5051975 (= e!3154043 (+ 1 (size!39019 (t!371159 (t!371159 (_2!34944 lt!2086672))))))))

(assert (= (and d!1625586 c!866735) b!5051974))

(assert (= (and d!1625586 (not c!866735)) b!5051975))

(declare-fun m!6086130 () Bool)

(assert (=> b!5051975 m!6086130))

(assert (=> b!5051542 d!1625586))

(assert (=> b!5051567 d!1625528))

(declare-fun d!1625588 () Bool)

(declare-fun lt!2086848 () Int)

(assert (=> d!1625588 (>= lt!2086848 0)))

(declare-fun e!3154044 () Int)

(assert (=> d!1625588 (= lt!2086848 e!3154044)))

(declare-fun c!866736 () Bool)

(assert (=> d!1625588 (= c!866736 ((_ is Nil!58396) lt!2086762))))

(assert (=> d!1625588 (= (size!39019 lt!2086762) lt!2086848)))

(declare-fun b!5051976 () Bool)

(assert (=> b!5051976 (= e!3154044 0)))

(declare-fun b!5051977 () Bool)

(assert (=> b!5051977 (= e!3154044 (+ 1 (size!39019 (t!371159 lt!2086762))))))

(assert (= (and d!1625588 c!866736) b!5051976))

(assert (= (and d!1625588 (not c!866736)) b!5051977))

(declare-fun m!6086132 () Bool)

(assert (=> b!5051977 m!6086132))

(assert (=> b!5051618 d!1625588))

(declare-fun d!1625590 () Bool)

(declare-fun lt!2086849 () Int)

(assert (=> d!1625590 (>= lt!2086849 0)))

(declare-fun e!3154045 () Int)

(assert (=> d!1625590 (= lt!2086849 e!3154045)))

(declare-fun c!866737 () Bool)

(assert (=> d!1625590 (= c!866737 ((_ is Nil!58396) (_1!34944 lt!2086713)))))

(assert (=> d!1625590 (= (size!39019 (_1!34944 lt!2086713)) lt!2086849)))

(declare-fun b!5051978 () Bool)

(assert (=> b!5051978 (= e!3154045 0)))

(declare-fun b!5051979 () Bool)

(assert (=> b!5051979 (= e!3154045 (+ 1 (size!39019 (t!371159 (_1!34944 lt!2086713)))))))

(assert (= (and d!1625590 c!866737) b!5051978))

(assert (= (and d!1625590 (not c!866737)) b!5051979))

(assert (=> b!5051979 m!6085932))

(assert (=> b!5051618 d!1625590))

(declare-fun d!1625592 () Bool)

(declare-fun lt!2086850 () Int)

(assert (=> d!1625592 (>= lt!2086850 0)))

(declare-fun e!3154046 () Int)

(assert (=> d!1625592 (= lt!2086850 e!3154046)))

(declare-fun c!866738 () Bool)

(assert (=> d!1625592 (= c!866738 ((_ is Nil!58396) (_2!34944 lt!2086713)))))

(assert (=> d!1625592 (= (size!39019 (_2!34944 lt!2086713)) lt!2086850)))

(declare-fun b!5051980 () Bool)

(assert (=> b!5051980 (= e!3154046 0)))

(declare-fun b!5051981 () Bool)

(assert (=> b!5051981 (= e!3154046 (+ 1 (size!39019 (t!371159 (_2!34944 lt!2086713)))))))

(assert (= (and d!1625592 c!866738) b!5051980))

(assert (= (and d!1625592 (not c!866738)) b!5051981))

(declare-fun m!6086134 () Bool)

(assert (=> b!5051981 m!6086134))

(assert (=> b!5051618 d!1625592))

(declare-fun d!1625594 () Bool)

(declare-fun c!866739 () Bool)

(assert (=> d!1625594 (= c!866739 ((_ is Nil!58396) lt!2086750))))

(declare-fun e!3154047 () (InoxSet T!104852))

(assert (=> d!1625594 (= (content!10398 lt!2086750) e!3154047)))

(declare-fun b!5051982 () Bool)

(assert (=> b!5051982 (= e!3154047 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051983 () Bool)

(assert (=> b!5051983 (= e!3154047 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086750) true) (content!10398 (t!371159 lt!2086750))))))

(assert (= (and d!1625594 c!866739) b!5051982))

(assert (= (and d!1625594 (not c!866739)) b!5051983))

(declare-fun m!6086136 () Bool)

(assert (=> b!5051983 m!6086136))

(declare-fun m!6086138 () Bool)

(assert (=> b!5051983 m!6086138))

(assert (=> d!1625290 d!1625594))

(assert (=> d!1625290 d!1625572))

(declare-fun d!1625596 () Bool)

(declare-fun c!866740 () Bool)

(assert (=> d!1625596 (= c!866740 ((_ is Nil!58396) lt!2086743))))

(declare-fun e!3154048 () (InoxSet T!104852))

(assert (=> d!1625596 (= (content!10398 lt!2086743) e!3154048)))

(declare-fun b!5051984 () Bool)

(assert (=> b!5051984 (= e!3154048 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051985 () Bool)

(assert (=> b!5051985 (= e!3154048 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086743) true) (content!10398 (t!371159 lt!2086743))))))

(assert (= (and d!1625596 c!866740) b!5051984))

(assert (= (and d!1625596 (not c!866740)) b!5051985))

(declare-fun m!6086140 () Bool)

(assert (=> b!5051985 m!6086140))

(declare-fun m!6086142 () Bool)

(assert (=> b!5051985 m!6086142))

(assert (=> d!1625274 d!1625596))

(assert (=> d!1625274 d!1625572))

(declare-fun d!1625598 () Bool)

(declare-fun c!866741 () Bool)

(assert (=> d!1625598 (= c!866741 ((_ is Nil!58396) (t!371159 (t!371159 lt!2086680))))))

(declare-fun e!3154049 () (InoxSet T!104852))

(assert (=> d!1625598 (= (content!10398 (t!371159 (t!371159 lt!2086680))) e!3154049)))

(declare-fun b!5051986 () Bool)

(assert (=> b!5051986 (= e!3154049 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051987 () Bool)

(assert (=> b!5051987 (= e!3154049 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (t!371159 lt!2086680))) true) (content!10398 (t!371159 (t!371159 (t!371159 lt!2086680))))))))

(assert (= (and d!1625598 c!866741) b!5051986))

(assert (= (and d!1625598 (not c!866741)) b!5051987))

(declare-fun m!6086144 () Bool)

(assert (=> b!5051987 m!6086144))

(declare-fun m!6086146 () Bool)

(assert (=> b!5051987 m!6086146))

(assert (=> b!5051631 d!1625598))

(assert (=> b!5051515 d!1625502))

(assert (=> b!5051611 d!1625482))

(declare-fun d!1625600 () Bool)

(declare-fun lt!2086851 () Int)

(assert (=> d!1625600 (>= lt!2086851 0)))

(declare-fun e!3154050 () Int)

(assert (=> d!1625600 (= lt!2086851 e!3154050)))

(declare-fun c!866742 () Bool)

(assert (=> d!1625600 (= c!866742 ((_ is Nil!58396) lt!2086760))))

(assert (=> d!1625600 (= (size!39019 lt!2086760) lt!2086851)))

(declare-fun b!5051988 () Bool)

(assert (=> b!5051988 (= e!3154050 0)))

(declare-fun b!5051989 () Bool)

(assert (=> b!5051989 (= e!3154050 (+ 1 (size!39019 (t!371159 lt!2086760))))))

(assert (= (and d!1625600 c!866742) b!5051988))

(assert (= (and d!1625600 (not c!866742)) b!5051989))

(declare-fun m!6086148 () Bool)

(assert (=> b!5051989 m!6086148))

(assert (=> b!5051607 d!1625600))

(declare-fun d!1625602 () Bool)

(declare-fun lt!2086852 () Int)

(assert (=> d!1625602 (>= lt!2086852 0)))

(declare-fun e!3154051 () Int)

(assert (=> d!1625602 (= lt!2086852 e!3154051)))

(declare-fun c!866743 () Bool)

(assert (=> d!1625602 (= c!866743 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086672))))))

(assert (=> d!1625602 (= (size!39019 (t!371159 (_1!34944 lt!2086672))) lt!2086852)))

(declare-fun b!5051990 () Bool)

(assert (=> b!5051990 (= e!3154051 0)))

(declare-fun b!5051991 () Bool)

(assert (=> b!5051991 (= e!3154051 (+ 1 (size!39019 (t!371159 (t!371159 (_1!34944 lt!2086672))))))))

(assert (= (and d!1625602 c!866743) b!5051990))

(assert (= (and d!1625602 (not c!866743)) b!5051991))

(assert (=> b!5051991 m!6085956))

(assert (=> b!5051607 d!1625602))

(assert (=> b!5051607 d!1625282))

(assert (=> b!5051553 d!1625508))

(declare-fun b!5051995 () Bool)

(declare-fun e!3154052 () Bool)

(declare-fun lt!2086853 () List!58520)

(assert (=> b!5051995 (= e!3154052 (or (not (= (_2!34944 lt!2086697) Nil!58396)) (= lt!2086853 (t!371159 (_1!34944 lt!2086697)))))))

(declare-fun b!5051993 () Bool)

(declare-fun e!3154053 () List!58520)

(assert (=> b!5051993 (= e!3154053 (Cons!58396 (h!64844 (t!371159 (_1!34944 lt!2086697))) (++!12759 (t!371159 (t!371159 (_1!34944 lt!2086697))) (_2!34944 lt!2086697))))))

(declare-fun b!5051992 () Bool)

(assert (=> b!5051992 (= e!3154053 (_2!34944 lt!2086697))))

(declare-fun b!5051994 () Bool)

(declare-fun res!2151257 () Bool)

(assert (=> b!5051994 (=> (not res!2151257) (not e!3154052))))

(assert (=> b!5051994 (= res!2151257 (= (size!39019 lt!2086853) (+ (size!39019 (t!371159 (_1!34944 lt!2086697))) (size!39019 (_2!34944 lt!2086697)))))))

(declare-fun d!1625604 () Bool)

(assert (=> d!1625604 e!3154052))

(declare-fun res!2151256 () Bool)

(assert (=> d!1625604 (=> (not res!2151256) (not e!3154052))))

(assert (=> d!1625604 (= res!2151256 (= (content!10398 lt!2086853) ((_ map or) (content!10398 (t!371159 (_1!34944 lt!2086697))) (content!10398 (_2!34944 lt!2086697)))))))

(assert (=> d!1625604 (= lt!2086853 e!3154053)))

(declare-fun c!866744 () Bool)

(assert (=> d!1625604 (= c!866744 ((_ is Nil!58396) (t!371159 (_1!34944 lt!2086697))))))

(assert (=> d!1625604 (= (++!12759 (t!371159 (_1!34944 lt!2086697)) (_2!34944 lt!2086697)) lt!2086853)))

(assert (= (and d!1625604 c!866744) b!5051992))

(assert (= (and d!1625604 (not c!866744)) b!5051993))

(assert (= (and d!1625604 res!2151256) b!5051994))

(assert (= (and b!5051994 res!2151257) b!5051995))

(declare-fun m!6086150 () Bool)

(assert (=> b!5051993 m!6086150))

(declare-fun m!6086152 () Bool)

(assert (=> b!5051994 m!6086152))

(assert (=> b!5051994 m!6085986))

(assert (=> b!5051994 m!6085508))

(declare-fun m!6086154 () Bool)

(assert (=> d!1625604 m!6086154))

(assert (=> d!1625604 m!6086122))

(assert (=> d!1625604 m!6085514))

(assert (=> b!5051519 d!1625604))

(declare-fun d!1625606 () Bool)

(declare-fun c!866745 () Bool)

(assert (=> d!1625606 (= c!866745 ((_ is Nil!58396) (t!371159 (_2!34944 lt!2086682))))))

(declare-fun e!3154054 () (InoxSet T!104852))

(assert (=> d!1625606 (= (content!10398 (t!371159 (_2!34944 lt!2086682))) e!3154054)))

(declare-fun b!5051996 () Bool)

(assert (=> b!5051996 (= e!3154054 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051997 () Bool)

(assert (=> b!5051997 (= e!3154054 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (_2!34944 lt!2086682))) true) (content!10398 (t!371159 (t!371159 (_2!34944 lt!2086682))))))))

(assert (= (and d!1625606 c!866745) b!5051996))

(assert (= (and d!1625606 (not c!866745)) b!5051997))

(declare-fun m!6086156 () Bool)

(assert (=> b!5051997 m!6086156))

(declare-fun m!6086158 () Bool)

(assert (=> b!5051997 m!6086158))

(assert (=> b!5051511 d!1625606))

(assert (=> bm!351970 d!1625482))

(declare-fun d!1625608 () Bool)

(declare-fun c!866746 () Bool)

(assert (=> d!1625608 (= c!866746 ((_ is Nil!58396) (t!371159 lt!2086696)))))

(declare-fun e!3154055 () (InoxSet T!104852))

(assert (=> d!1625608 (= (content!10398 (t!371159 lt!2086696)) e!3154055)))

(declare-fun b!5051998 () Bool)

(assert (=> b!5051998 (= e!3154055 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5051999 () Bool)

(assert (=> b!5051999 (= e!3154055 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 lt!2086696)) true) (content!10398 (t!371159 (t!371159 lt!2086696)))))))

(assert (= (and d!1625608 c!866746) b!5051998))

(assert (= (and d!1625608 (not c!866746)) b!5051999))

(declare-fun m!6086160 () Bool)

(assert (=> b!5051999 m!6086160))

(declare-fun m!6086162 () Bool)

(assert (=> b!5051999 m!6086162))

(assert (=> b!5051604 d!1625608))

(declare-fun d!1625610 () Bool)

(declare-fun lt!2086854 () Int)

(assert (=> d!1625610 (>= lt!2086854 0)))

(declare-fun e!3154056 () Int)

(assert (=> d!1625610 (= lt!2086854 e!3154056)))

(declare-fun c!866747 () Bool)

(assert (=> d!1625610 (= c!866747 ((_ is Nil!58396) lt!2086754))))

(assert (=> d!1625610 (= (size!39019 lt!2086754) lt!2086854)))

(declare-fun b!5052000 () Bool)

(assert (=> b!5052000 (= e!3154056 0)))

(declare-fun b!5052001 () Bool)

(assert (=> b!5052001 (= e!3154056 (+ 1 (size!39019 (t!371159 lt!2086754))))))

(assert (= (and d!1625610 c!866747) b!5052000))

(assert (= (and d!1625610 (not c!866747)) b!5052001))

(declare-fun m!6086164 () Bool)

(assert (=> b!5052001 m!6086164))

(assert (=> b!5051577 d!1625610))

(assert (=> b!5051577 d!1625470))

(assert (=> b!5051577 d!1625178))

(declare-fun d!1625612 () Bool)

(declare-fun lt!2086855 () Int)

(assert (=> d!1625612 (>= lt!2086855 0)))

(declare-fun e!3154057 () Int)

(assert (=> d!1625612 (= lt!2086855 e!3154057)))

(declare-fun c!866748 () Bool)

(assert (=> d!1625612 (= c!866748 ((_ is Nil!58396) lt!2086765))))

(assert (=> d!1625612 (= (size!39019 lt!2086765) lt!2086855)))

(declare-fun b!5052002 () Bool)

(assert (=> b!5052002 (= e!3154057 0)))

(declare-fun b!5052003 () Bool)

(assert (=> b!5052003 (= e!3154057 (+ 1 (size!39019 (t!371159 lt!2086765))))))

(assert (= (and d!1625612 c!866748) b!5052002))

(assert (= (and d!1625612 (not c!866748)) b!5052003))

(declare-fun m!6086166 () Bool)

(assert (=> b!5052003 m!6086166))

(assert (=> b!5051628 d!1625612))

(assert (=> b!5051628 d!1625342))

(assert (=> b!5051628 d!1625160))

(assert (=> b!5051560 d!1625542))

(declare-fun d!1625614 () Bool)

(declare-fun c!866749 () Bool)

(assert (=> d!1625614 (= c!866749 ((_ is Nil!58396) (t!371159 (_2!34944 lt!2086672))))))

(declare-fun e!3154058 () (InoxSet T!104852))

(assert (=> d!1625614 (= (content!10398 (t!371159 (_2!34944 lt!2086672))) e!3154058)))

(declare-fun b!5052004 () Bool)

(assert (=> b!5052004 (= e!3154058 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5052005 () Bool)

(assert (=> b!5052005 (= e!3154058 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (t!371159 (_2!34944 lt!2086672))) true) (content!10398 (t!371159 (t!371159 (_2!34944 lt!2086672))))))))

(assert (= (and d!1625614 c!866749) b!5052004))

(assert (= (and d!1625614 (not c!866749)) b!5052005))

(declare-fun m!6086168 () Bool)

(assert (=> b!5052005 m!6086168))

(declare-fun m!6086170 () Bool)

(assert (=> b!5052005 m!6086170))

(assert (=> b!5051586 d!1625614))

(assert (=> b!5051637 d!1625490))

(declare-fun d!1625616 () Bool)

(declare-fun c!866750 () Bool)

(assert (=> d!1625616 (= c!866750 ((_ is Nil!58396) lt!2086749))))

(declare-fun e!3154059 () (InoxSet T!104852))

(assert (=> d!1625616 (= (content!10398 lt!2086749) e!3154059)))

(declare-fun b!5052006 () Bool)

(assert (=> b!5052006 (= e!3154059 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5052007 () Bool)

(assert (=> b!5052007 (= e!3154059 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086749) true) (content!10398 (t!371159 lt!2086749))))))

(assert (= (and d!1625616 c!866750) b!5052006))

(assert (= (and d!1625616 (not c!866750)) b!5052007))

(declare-fun m!6086172 () Bool)

(assert (=> b!5052007 m!6086172))

(declare-fun m!6086174 () Bool)

(assert (=> b!5052007 m!6086174))

(assert (=> d!1625288 d!1625616))

(assert (=> d!1625288 d!1625548))

(declare-fun d!1625618 () Bool)

(declare-fun lt!2086856 () Int)

(assert (=> d!1625618 (>= lt!2086856 0)))

(declare-fun e!3154060 () Int)

(assert (=> d!1625618 (= lt!2086856 e!3154060)))

(declare-fun c!866751 () Bool)

(assert (=> d!1625618 (= c!866751 ((_ is Nil!58396) (t!371159 lt!2086719)))))

(assert (=> d!1625618 (= (size!39019 (t!371159 lt!2086719)) lt!2086856)))

(declare-fun b!5052008 () Bool)

(assert (=> b!5052008 (= e!3154060 0)))

(declare-fun b!5052009 () Bool)

(assert (=> b!5052009 (= e!3154060 (+ 1 (size!39019 (t!371159 (t!371159 lt!2086719)))))))

(assert (= (and d!1625618 c!866751) b!5052008))

(assert (= (and d!1625618 (not c!866751)) b!5052009))

(declare-fun m!6086176 () Bool)

(assert (=> b!5052009 m!6086176))

(assert (=> b!5051643 d!1625618))

(declare-fun d!1625620 () Bool)

(declare-fun c!866752 () Bool)

(assert (=> d!1625620 (= c!866752 ((_ is Nil!58396) lt!2086762))))

(declare-fun e!3154061 () (InoxSet T!104852))

(assert (=> d!1625620 (= (content!10398 lt!2086762) e!3154061)))

(declare-fun b!5052010 () Bool)

(assert (=> b!5052010 (= e!3154061 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5052011 () Bool)

(assert (=> b!5052011 (= e!3154061 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 lt!2086762) true) (content!10398 (t!371159 lt!2086762))))))

(assert (= (and d!1625620 c!866752) b!5052010))

(assert (= (and d!1625620 (not c!866752)) b!5052011))

(declare-fun m!6086178 () Bool)

(assert (=> b!5052011 m!6086178))

(declare-fun m!6086180 () Bool)

(assert (=> b!5052011 m!6086180))

(assert (=> d!1625330 d!1625620))

(declare-fun d!1625622 () Bool)

(declare-fun c!866753 () Bool)

(assert (=> d!1625622 (= c!866753 ((_ is Nil!58396) (_1!34944 lt!2086713)))))

(declare-fun e!3154062 () (InoxSet T!104852))

(assert (=> d!1625622 (= (content!10398 (_1!34944 lt!2086713)) e!3154062)))

(declare-fun b!5052012 () Bool)

(assert (=> b!5052012 (= e!3154062 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5052013 () Bool)

(assert (=> b!5052013 (= e!3154062 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_1!34944 lt!2086713)) true) (content!10398 (t!371159 (_1!34944 lt!2086713)))))))

(assert (= (and d!1625622 c!866753) b!5052012))

(assert (= (and d!1625622 (not c!866753)) b!5052013))

(declare-fun m!6086182 () Bool)

(assert (=> b!5052013 m!6086182))

(assert (=> b!5052013 m!6085936))

(assert (=> d!1625330 d!1625622))

(declare-fun d!1625624 () Bool)

(declare-fun c!866754 () Bool)

(assert (=> d!1625624 (= c!866754 ((_ is Nil!58396) (_2!34944 lt!2086713)))))

(declare-fun e!3154063 () (InoxSet T!104852))

(assert (=> d!1625624 (= (content!10398 (_2!34944 lt!2086713)) e!3154063)))

(declare-fun b!5052014 () Bool)

(assert (=> b!5052014 (= e!3154063 ((as const (Array T!104852 Bool)) false))))

(declare-fun b!5052015 () Bool)

(assert (=> b!5052015 (= e!3154063 ((_ map or) (store ((as const (Array T!104852 Bool)) false) (h!64844 (_2!34944 lt!2086713)) true) (content!10398 (t!371159 (_2!34944 lt!2086713)))))))

(assert (= (and d!1625624 c!866754) b!5052014))

(assert (= (and d!1625624 (not c!866754)) b!5052015))

(declare-fun m!6086184 () Bool)

(assert (=> b!5052015 m!6086184))

(declare-fun m!6086186 () Bool)

(assert (=> b!5052015 m!6086186))

(assert (=> d!1625330 d!1625624))

(declare-fun d!1625626 () Bool)

(declare-fun lt!2086857 () Int)

(assert (=> d!1625626 (>= lt!2086857 0)))

(declare-fun e!3154064 () Int)

(assert (=> d!1625626 (= lt!2086857 e!3154064)))

(declare-fun c!866755 () Bool)

(assert (=> d!1625626 (= c!866755 ((_ is Nil!58396) (t!371159 (t!371159 (t!371159 r!2041)))))))

(assert (=> d!1625626 (= (size!39019 (t!371159 (t!371159 (t!371159 r!2041)))) lt!2086857)))

(declare-fun b!5052016 () Bool)

(assert (=> b!5052016 (= e!3154064 0)))

(declare-fun b!5052017 () Bool)

(assert (=> b!5052017 (= e!3154064 (+ 1 (size!39019 (t!371159 (t!371159 (t!371159 (t!371159 r!2041)))))))))

(assert (= (and d!1625626 c!866755) b!5052016))

(assert (= (and d!1625626 (not c!866755)) b!5052017))

(declare-fun m!6086188 () Bool)

(assert (=> b!5052017 m!6086188))

(assert (=> b!5051600 d!1625626))

(assert (=> b!5051540 d!1625602))

(declare-fun b!5052018 () Bool)

(declare-fun e!3154065 () Bool)

(declare-fun tp!1412326 () Bool)

(assert (=> b!5052018 (= e!3154065 (and tp_is_empty!36975 tp!1412326))))

(assert (=> b!5051655 (= tp!1412323 e!3154065)))

(assert (= (and b!5051655 ((_ is Cons!58396) (t!371159 (t!371159 (t!371159 (t!371159 r!2041)))))) b!5052018))

(declare-fun b!5052019 () Bool)

(declare-fun e!3154066 () Bool)

(declare-fun tp!1412327 () Bool)

(assert (=> b!5052019 (= e!3154066 (and tp_is_empty!36975 tp!1412327))))

(assert (=> b!5051654 (= tp!1412322 e!3154066)))

(assert (= (and b!5051654 ((_ is Cons!58396) (t!371159 (t!371159 (t!371159 (t!371159 l!2757)))))) b!5052019))

(check-sat (not d!1625566) (not b!5051965) (not b!5051944) (not b!5051912) (not b!5051938) (not b!5051816) (not b!5051922) (not b!5051930) (not b!5051910) (not b!5051908) (not b!5051899) (not b!5051924) (not b!5051953) (not b!5051928) (not b!5051883) (not b!5051947) (not b!5051926) (not b!5051969) (not b!5051961) (not b!5051983) (not b!5051807) (not b!5051920) (not b!5052003) (not b!5051887) (not b!5051868) (not b!5051952) (not b!5051846) (not b!5052011) (not b!5051838) (not b!5051904) (not b!5051950) (not b!5051971) (not b!5051875) (not b!5051959) (not b!5052007) (not d!1625604) (not b!5051935) (not d!1625540) (not b!5051877) (not b!5051817) (not b!5051819) (not b!5052001) (not d!1625554) (not b!5051940) (not d!1625524) (not b!5051991) (not b!5051813) (not d!1625528) (not b!5051946) (not b!5051855) (not b!5051973) (not b!5051826) (not b!5051981) (not b!5051985) (not b!5051993) (not b!5051898) (not b!5051879) (not d!1625508) (not bm!351973) (not d!1625556) (not b!5051825) (not b!5052009) (not bm!351974) (not b!5051901) (not b!5051962) (not b!5051832) (not b!5051956) (not b!5052017) (not d!1625474) (not b!5051891) (not b!5051987) (not b!5051815) (not b!5052018) (not d!1625570) (not b!5051918) (not b!5051889) (not b!5051977) (not b!5051942) (not b!5051914) (not b!5051842) (not b!5051881) (not b!5051906) (not d!1625484) (not b!5051858) (not b!5051854) (not b!5052005) (not b!5051897) (not b!5051839) tp_is_empty!36975 (not b!5052019) (not b!5051888) (not b!5051811) (not b!5051979) (not b!5052013) (not b!5051852) (not b!5051975) (not b!5051997) (not b!5052015) (not d!1625574) (not b!5051967) (not b!5051931) (not b!5051934) (not b!5051994) (not d!1625498) (not b!5051954) (not b!5051836) (not b!5051809) (not b!5051862) (not d!1625476) (not b!5051895) (not b!5051844) (not b!5051864) (not b!5051860) (not b!5051989) (not b!5051885) (not b!5051834) (not b!5051848) (not b!5051850) (not b!5051915) (not b!5051869) (not b!5051999))
(check-sat)
