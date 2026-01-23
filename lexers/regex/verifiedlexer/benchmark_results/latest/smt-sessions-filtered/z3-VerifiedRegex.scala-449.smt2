; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13186 () Bool)

(assert start!13186)

(declare-fun b!128126 () Bool)

(declare-fun e!73627 () Bool)

(declare-datatypes ((B!653 0))(
  ( (B!654 (val!790 Int)) )
))
(declare-datatypes ((List!2121 0))(
  ( (Nil!2115) (Cons!2115 (h!7512 B!653) (t!22697 List!2121)) )
))
(declare-fun p!1997 () List!2121)

(declare-fun ListPrimitiveSize!16 (List!2121) Int)

(assert (=> b!128126 (= e!73627 (>= (ListPrimitiveSize!16 (t!22697 p!1997)) (ListPrimitiveSize!16 p!1997)))))

(declare-fun b!128127 () Bool)

(declare-fun res!59107 () Bool)

(assert (=> b!128127 (=> (not res!59107) (not e!73627))))

(get-info :version)

(assert (=> b!128127 (= res!59107 ((_ is Cons!2115) p!1997))))

(declare-fun b!128128 () Bool)

(declare-fun e!73629 () Bool)

(declare-fun tp_is_empty!1261 () Bool)

(declare-fun tp!69842 () Bool)

(assert (=> b!128128 (= e!73629 (and tp_is_empty!1261 tp!69842))))

(declare-fun b!128129 () Bool)

(declare-fun res!59108 () Bool)

(assert (=> b!128129 (=> (not res!59108) (not e!73627))))

(declare-fun s!1511 () List!2121)

(declare-fun isEmpty!845 (List!2121) Bool)

(assert (=> b!128129 (= res!59108 (not (isEmpty!845 s!1511)))))

(declare-fun b!128130 () Bool)

(declare-fun e!73626 () Bool)

(declare-fun tp!69841 () Bool)

(assert (=> b!128130 (= e!73626 (and tp_is_empty!1261 tp!69841))))

(declare-fun res!59105 () Bool)

(assert (=> start!13186 (=> (not res!59105) (not e!73627))))

(declare-fun l!3367 () List!2121)

(declare-fun ++!412 (List!2121 List!2121) List!2121)

(assert (=> start!13186 (= res!59105 (= (++!412 p!1997 s!1511) l!3367))))

(assert (=> start!13186 e!73627))

(assert (=> start!13186 e!73626))

(declare-fun e!73628 () Bool)

(assert (=> start!13186 e!73628))

(assert (=> start!13186 e!73629))

(declare-fun b!128131 () Bool)

(declare-fun res!59106 () Bool)

(assert (=> b!128131 (=> (not res!59106) (not e!73627))))

(declare-fun tail!260 (List!2121) List!2121)

(assert (=> b!128131 (= res!59106 (= (++!412 (t!22697 p!1997) s!1511) (tail!260 l!3367)))))

(declare-fun b!128132 () Bool)

(declare-fun tp!69843 () Bool)

(assert (=> b!128132 (= e!73628 (and tp_is_empty!1261 tp!69843))))

(assert (= (and start!13186 res!59105) b!128129))

(assert (= (and b!128129 res!59108) b!128127))

(assert (= (and b!128127 res!59107) b!128131))

(assert (= (and b!128131 res!59106) b!128126))

(assert (= (and start!13186 ((_ is Cons!2115) p!1997)) b!128130))

(assert (= (and start!13186 ((_ is Cons!2115) s!1511)) b!128132))

(assert (= (and start!13186 ((_ is Cons!2115) l!3367)) b!128128))

(declare-fun m!112809 () Bool)

(assert (=> b!128126 m!112809))

(declare-fun m!112811 () Bool)

(assert (=> b!128126 m!112811))

(declare-fun m!112813 () Bool)

(assert (=> b!128129 m!112813))

(declare-fun m!112815 () Bool)

(assert (=> start!13186 m!112815))

(declare-fun m!112817 () Bool)

(assert (=> b!128131 m!112817))

(declare-fun m!112819 () Bool)

(assert (=> b!128131 m!112819))

(check-sat (not b!128131) (not start!13186) (not b!128126) (not b!128130) tp_is_empty!1261 (not b!128129) (not b!128132) (not b!128128))
(check-sat)
(get-model)

(declare-fun d!30232 () Bool)

(declare-fun lt!38338 () Int)

(assert (=> d!30232 (>= lt!38338 0)))

(declare-fun e!73640 () Int)

(assert (=> d!30232 (= lt!38338 e!73640)))

(declare-fun c!27999 () Bool)

(assert (=> d!30232 (= c!27999 ((_ is Nil!2115) (t!22697 p!1997)))))

(assert (=> d!30232 (= (ListPrimitiveSize!16 (t!22697 p!1997)) lt!38338)))

(declare-fun b!128153 () Bool)

(assert (=> b!128153 (= e!73640 0)))

(declare-fun b!128154 () Bool)

(assert (=> b!128154 (= e!73640 (+ 1 (ListPrimitiveSize!16 (t!22697 (t!22697 p!1997)))))))

(assert (= (and d!30232 c!27999) b!128153))

(assert (= (and d!30232 (not c!27999)) b!128154))

(declare-fun m!112843 () Bool)

(assert (=> b!128154 m!112843))

(assert (=> b!128126 d!30232))

(declare-fun d!30240 () Bool)

(declare-fun lt!38339 () Int)

(assert (=> d!30240 (>= lt!38339 0)))

(declare-fun e!73641 () Int)

(assert (=> d!30240 (= lt!38339 e!73641)))

(declare-fun c!28000 () Bool)

(assert (=> d!30240 (= c!28000 ((_ is Nil!2115) p!1997))))

(assert (=> d!30240 (= (ListPrimitiveSize!16 p!1997) lt!38339)))

(declare-fun b!128155 () Bool)

(assert (=> b!128155 (= e!73641 0)))

(declare-fun b!128156 () Bool)

(assert (=> b!128156 (= e!73641 (+ 1 (ListPrimitiveSize!16 (t!22697 p!1997))))))

(assert (= (and d!30240 c!28000) b!128155))

(assert (= (and d!30240 (not c!28000)) b!128156))

(assert (=> b!128156 m!112809))

(assert (=> b!128126 d!30240))

(declare-fun b!128180 () Bool)

(declare-fun e!73655 () List!2121)

(assert (=> b!128180 (= e!73655 s!1511)))

(declare-fun b!128182 () Bool)

(declare-fun res!59121 () Bool)

(declare-fun e!73656 () Bool)

(assert (=> b!128182 (=> (not res!59121) (not e!73656))))

(declare-fun lt!38346 () List!2121)

(declare-fun size!1933 (List!2121) Int)

(assert (=> b!128182 (= res!59121 (= (size!1933 lt!38346) (+ (size!1933 (t!22697 p!1997)) (size!1933 s!1511))))))

(declare-fun b!128181 () Bool)

(assert (=> b!128181 (= e!73655 (Cons!2115 (h!7512 (t!22697 p!1997)) (++!412 (t!22697 (t!22697 p!1997)) s!1511)))))

(declare-fun b!128183 () Bool)

(assert (=> b!128183 (= e!73656 (or (not (= s!1511 Nil!2115)) (= lt!38346 (t!22697 p!1997))))))

(declare-fun d!30242 () Bool)

(assert (=> d!30242 e!73656))

(declare-fun res!59122 () Bool)

(assert (=> d!30242 (=> (not res!59122) (not e!73656))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!251 (List!2121) (InoxSet B!653))

(assert (=> d!30242 (= res!59122 (= (content!251 lt!38346) ((_ map or) (content!251 (t!22697 p!1997)) (content!251 s!1511))))))

(assert (=> d!30242 (= lt!38346 e!73655)))

(declare-fun c!28007 () Bool)

(assert (=> d!30242 (= c!28007 ((_ is Nil!2115) (t!22697 p!1997)))))

(assert (=> d!30242 (= (++!412 (t!22697 p!1997) s!1511) lt!38346)))

(assert (= (and d!30242 c!28007) b!128180))

(assert (= (and d!30242 (not c!28007)) b!128181))

(assert (= (and d!30242 res!59122) b!128182))

(assert (= (and b!128182 res!59121) b!128183))

(declare-fun m!112847 () Bool)

(assert (=> b!128182 m!112847))

(declare-fun m!112849 () Bool)

(assert (=> b!128182 m!112849))

(declare-fun m!112851 () Bool)

(assert (=> b!128182 m!112851))

(declare-fun m!112853 () Bool)

(assert (=> b!128181 m!112853))

(declare-fun m!112855 () Bool)

(assert (=> d!30242 m!112855))

(declare-fun m!112857 () Bool)

(assert (=> d!30242 m!112857))

(declare-fun m!112859 () Bool)

(assert (=> d!30242 m!112859))

(assert (=> b!128131 d!30242))

(declare-fun d!30246 () Bool)

(assert (=> d!30246 (= (tail!260 l!3367) (t!22697 l!3367))))

(assert (=> b!128131 d!30246))

(declare-fun b!128184 () Bool)

(declare-fun e!73657 () List!2121)

(assert (=> b!128184 (= e!73657 s!1511)))

(declare-fun b!128186 () Bool)

(declare-fun res!59123 () Bool)

(declare-fun e!73658 () Bool)

(assert (=> b!128186 (=> (not res!59123) (not e!73658))))

(declare-fun lt!38347 () List!2121)

(assert (=> b!128186 (= res!59123 (= (size!1933 lt!38347) (+ (size!1933 p!1997) (size!1933 s!1511))))))

(declare-fun b!128185 () Bool)

(assert (=> b!128185 (= e!73657 (Cons!2115 (h!7512 p!1997) (++!412 (t!22697 p!1997) s!1511)))))

(declare-fun b!128187 () Bool)

(assert (=> b!128187 (= e!73658 (or (not (= s!1511 Nil!2115)) (= lt!38347 p!1997)))))

(declare-fun d!30248 () Bool)

(assert (=> d!30248 e!73658))

(declare-fun res!59124 () Bool)

(assert (=> d!30248 (=> (not res!59124) (not e!73658))))

(assert (=> d!30248 (= res!59124 (= (content!251 lt!38347) ((_ map or) (content!251 p!1997) (content!251 s!1511))))))

(assert (=> d!30248 (= lt!38347 e!73657)))

(declare-fun c!28008 () Bool)

(assert (=> d!30248 (= c!28008 ((_ is Nil!2115) p!1997))))

(assert (=> d!30248 (= (++!412 p!1997 s!1511) lt!38347)))

(assert (= (and d!30248 c!28008) b!128184))

(assert (= (and d!30248 (not c!28008)) b!128185))

(assert (= (and d!30248 res!59124) b!128186))

(assert (= (and b!128186 res!59123) b!128187))

(declare-fun m!112861 () Bool)

(assert (=> b!128186 m!112861))

(declare-fun m!112863 () Bool)

(assert (=> b!128186 m!112863))

(assert (=> b!128186 m!112851))

(assert (=> b!128185 m!112817))

(declare-fun m!112865 () Bool)

(assert (=> d!30248 m!112865))

(declare-fun m!112867 () Bool)

(assert (=> d!30248 m!112867))

(assert (=> d!30248 m!112859))

(assert (=> start!13186 d!30248))

(declare-fun d!30250 () Bool)

(assert (=> d!30250 (= (isEmpty!845 s!1511) ((_ is Nil!2115) s!1511))))

(assert (=> b!128129 d!30250))

(declare-fun b!128192 () Bool)

(declare-fun e!73661 () Bool)

(declare-fun tp!69851 () Bool)

(assert (=> b!128192 (= e!73661 (and tp_is_empty!1261 tp!69851))))

(assert (=> b!128130 (= tp!69841 e!73661)))

(assert (= (and b!128130 ((_ is Cons!2115) (t!22697 p!1997))) b!128192))

(declare-fun b!128193 () Bool)

(declare-fun e!73662 () Bool)

(declare-fun tp!69852 () Bool)

(assert (=> b!128193 (= e!73662 (and tp_is_empty!1261 tp!69852))))

(assert (=> b!128132 (= tp!69843 e!73662)))

(assert (= (and b!128132 ((_ is Cons!2115) (t!22697 s!1511))) b!128193))

(declare-fun b!128194 () Bool)

(declare-fun e!73663 () Bool)

(declare-fun tp!69853 () Bool)

(assert (=> b!128194 (= e!73663 (and tp_is_empty!1261 tp!69853))))

(assert (=> b!128128 (= tp!69842 e!73663)))

(assert (= (and b!128128 ((_ is Cons!2115) (t!22697 l!3367))) b!128194))

(check-sat (not b!128182) (not d!30248) (not b!128156) (not b!128186) (not b!128154) (not d!30242) tp_is_empty!1261 (not b!128192) (not b!128193) (not b!128185) (not b!128181) (not b!128194))
(check-sat)
