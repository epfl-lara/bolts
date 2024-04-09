; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137412 () Bool)

(assert start!137412)

(declare-fun b!1581167 () Bool)

(declare-fun e!882267 () Bool)

(declare-fun e!882266 () Bool)

(assert (=> b!1581167 (= e!882267 e!882266)))

(declare-fun res!1080320 () Bool)

(assert (=> b!1581167 (=> (not res!1080320) (not e!882266))))

(declare-datatypes ((B!2692 0))(
  ( (B!2693 (val!19708 Int)) )
))
(declare-datatypes ((tuple2!25732 0))(
  ( (tuple2!25733 (_1!12876 (_ BitVec 64)) (_2!12876 B!2692)) )
))
(declare-datatypes ((List!36989 0))(
  ( (Nil!36986) (Cons!36985 (h!38529 tuple2!25732) (t!51910 List!36989)) )
))
(declare-fun l!1390 () List!36989)

(declare-fun lt!676833 () tuple2!25732)

(declare-fun contains!10517 (List!36989 tuple2!25732) Bool)

(assert (=> b!1581167 (= res!1080320 (contains!10517 l!1390 lt!676833))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2692)

(assert (=> b!1581167 (= lt!676833 (tuple2!25733 key!405 value!194))))

(declare-fun b!1581168 () Bool)

(declare-fun res!1080325 () Bool)

(assert (=> b!1581168 (=> (not res!1080325) (not e!882267))))

(declare-fun containsKey!930 (List!36989 (_ BitVec 64)) Bool)

(assert (=> b!1581168 (= res!1080325 (containsKey!930 l!1390 key!405))))

(declare-fun b!1581169 () Bool)

(declare-fun e!882269 () Bool)

(assert (=> b!1581169 (= e!882266 e!882269)))

(declare-fun res!1080326 () Bool)

(assert (=> b!1581169 (=> (not res!1080326) (not e!882269))))

(declare-fun e!882270 () Bool)

(assert (=> b!1581169 (= res!1080326 e!882270)))

(declare-fun res!1080321 () Bool)

(assert (=> b!1581169 (=> res!1080321 e!882270)))

(declare-datatypes ((tuple2!25734 0))(
  ( (tuple2!25735 (_1!12877 tuple2!25732) (_2!12877 List!36989)) )
))
(declare-datatypes ((Option!922 0))(
  ( (Some!921 (v!22430 tuple2!25734)) (None!920) )
))
(declare-fun lt!676834 () Option!922)

(declare-fun isEmpty!1181 (Option!922) Bool)

(assert (=> b!1581169 (= res!1080321 (isEmpty!1181 lt!676834))))

(declare-fun unapply!95 (List!36989) Option!922)

(assert (=> b!1581169 (= lt!676834 (unapply!95 l!1390))))

(declare-fun b!1581170 () Bool)

(declare-fun res!1080322 () Bool)

(assert (=> b!1581170 (=> (not res!1080322) (not e!882269))))

(assert (=> b!1581170 (= res!1080322 (contains!10517 (t!51910 l!1390) lt!676833))))

(declare-fun b!1581171 () Bool)

(get-info :version)

(declare-fun get!26842 (Option!922) tuple2!25734)

(assert (=> b!1581171 (= e!882270 (not ((_ is Nil!36986) (_2!12877 (get!26842 lt!676834)))))))

(declare-fun b!1581172 () Bool)

(declare-fun res!1080318 () Bool)

(assert (=> b!1581172 (=> (not res!1080318) (not e!882269))))

(assert (=> b!1581172 (= res!1080318 (containsKey!930 (t!51910 l!1390) key!405))))

(declare-fun b!1581173 () Bool)

(declare-fun ListPrimitiveSize!197 (List!36989) Int)

(assert (=> b!1581173 (= e!882269 (>= (ListPrimitiveSize!197 (t!51910 l!1390)) (ListPrimitiveSize!197 l!1390)))))

(declare-fun b!1581175 () Bool)

(declare-fun res!1080319 () Bool)

(assert (=> b!1581175 (=> (not res!1080319) (not e!882269))))

(assert (=> b!1581175 (= res!1080319 (and (or (not ((_ is Cons!36985) l!1390)) (not (= (_1!12876 (h!38529 l!1390)) key!405))) ((_ is Cons!36985) l!1390)))))

(declare-fun b!1581176 () Bool)

(declare-fun res!1080324 () Bool)

(assert (=> b!1581176 (=> (not res!1080324) (not e!882269))))

(declare-fun isStrictlySorted!1084 (List!36989) Bool)

(assert (=> b!1581176 (= res!1080324 (isStrictlySorted!1084 (t!51910 l!1390)))))

(declare-fun b!1581174 () Bool)

(declare-fun e!882268 () Bool)

(declare-fun tp_is_empty!39237 () Bool)

(declare-fun tp!114565 () Bool)

(assert (=> b!1581174 (= e!882268 (and tp_is_empty!39237 tp!114565))))

(declare-fun res!1080323 () Bool)

(assert (=> start!137412 (=> (not res!1080323) (not e!882267))))

(assert (=> start!137412 (= res!1080323 (isStrictlySorted!1084 l!1390))))

(assert (=> start!137412 e!882267))

(assert (=> start!137412 e!882268))

(assert (=> start!137412 true))

(assert (=> start!137412 tp_is_empty!39237))

(assert (= (and start!137412 res!1080323) b!1581168))

(assert (= (and b!1581168 res!1080325) b!1581167))

(assert (= (and b!1581167 res!1080320) b!1581169))

(assert (= (and b!1581169 (not res!1080321)) b!1581171))

(assert (= (and b!1581169 res!1080326) b!1581175))

(assert (= (and b!1581175 res!1080319) b!1581176))

(assert (= (and b!1581176 res!1080324) b!1581172))

(assert (= (and b!1581172 res!1080318) b!1581170))

(assert (= (and b!1581170 res!1080322) b!1581173))

(assert (= (and start!137412 ((_ is Cons!36985) l!1390)) b!1581174))

(declare-fun m!1452249 () Bool)

(assert (=> b!1581171 m!1452249))

(declare-fun m!1452251 () Bool)

(assert (=> start!137412 m!1452251))

(declare-fun m!1452253 () Bool)

(assert (=> b!1581170 m!1452253))

(declare-fun m!1452255 () Bool)

(assert (=> b!1581168 m!1452255))

(declare-fun m!1452257 () Bool)

(assert (=> b!1581173 m!1452257))

(declare-fun m!1452259 () Bool)

(assert (=> b!1581173 m!1452259))

(declare-fun m!1452261 () Bool)

(assert (=> b!1581167 m!1452261))

(declare-fun m!1452263 () Bool)

(assert (=> b!1581176 m!1452263))

(declare-fun m!1452265 () Bool)

(assert (=> b!1581172 m!1452265))

(declare-fun m!1452267 () Bool)

(assert (=> b!1581169 m!1452267))

(declare-fun m!1452269 () Bool)

(assert (=> b!1581169 m!1452269))

(check-sat (not b!1581173) (not b!1581167) tp_is_empty!39237 (not b!1581169) (not b!1581172) (not b!1581171) (not b!1581168) (not start!137412) (not b!1581174) (not b!1581176) (not b!1581170))
(check-sat)
(get-model)

(declare-fun d!166615 () Bool)

(declare-fun res!1080358 () Bool)

(declare-fun e!882290 () Bool)

(assert (=> d!166615 (=> res!1080358 e!882290)))

(assert (=> d!166615 (= res!1080358 (or ((_ is Nil!36986) l!1390) ((_ is Nil!36986) (t!51910 l!1390))))))

(assert (=> d!166615 (= (isStrictlySorted!1084 l!1390) e!882290)))

(declare-fun b!1581211 () Bool)

(declare-fun e!882291 () Bool)

(assert (=> b!1581211 (= e!882290 e!882291)))

(declare-fun res!1080359 () Bool)

(assert (=> b!1581211 (=> (not res!1080359) (not e!882291))))

(assert (=> b!1581211 (= res!1080359 (bvslt (_1!12876 (h!38529 l!1390)) (_1!12876 (h!38529 (t!51910 l!1390)))))))

(declare-fun b!1581212 () Bool)

(assert (=> b!1581212 (= e!882291 (isStrictlySorted!1084 (t!51910 l!1390)))))

(assert (= (and d!166615 (not res!1080358)) b!1581211))

(assert (= (and b!1581211 res!1080359) b!1581212))

(assert (=> b!1581212 m!1452263))

(assert (=> start!137412 d!166615))

(declare-fun d!166617 () Bool)

(declare-fun lt!676847 () Int)

(assert (=> d!166617 (>= lt!676847 0)))

(declare-fun e!882302 () Int)

(assert (=> d!166617 (= lt!676847 e!882302)))

(declare-fun c!146524 () Bool)

(assert (=> d!166617 (= c!146524 ((_ is Nil!36986) (t!51910 l!1390)))))

(assert (=> d!166617 (= (ListPrimitiveSize!197 (t!51910 l!1390)) lt!676847)))

(declare-fun b!1581229 () Bool)

(assert (=> b!1581229 (= e!882302 0)))

(declare-fun b!1581230 () Bool)

(assert (=> b!1581230 (= e!882302 (+ 1 (ListPrimitiveSize!197 (t!51910 (t!51910 l!1390)))))))

(assert (= (and d!166617 c!146524) b!1581229))

(assert (= (and d!166617 (not c!146524)) b!1581230))

(declare-fun m!1452295 () Bool)

(assert (=> b!1581230 m!1452295))

(assert (=> b!1581173 d!166617))

(declare-fun d!166629 () Bool)

(declare-fun lt!676848 () Int)

(assert (=> d!166629 (>= lt!676848 0)))

(declare-fun e!882304 () Int)

(assert (=> d!166629 (= lt!676848 e!882304)))

(declare-fun c!146525 () Bool)

(assert (=> d!166629 (= c!146525 ((_ is Nil!36986) l!1390))))

(assert (=> d!166629 (= (ListPrimitiveSize!197 l!1390) lt!676848)))

(declare-fun b!1581231 () Bool)

(assert (=> b!1581231 (= e!882304 0)))

(declare-fun b!1581232 () Bool)

(assert (=> b!1581232 (= e!882304 (+ 1 (ListPrimitiveSize!197 (t!51910 l!1390))))))

(assert (= (and d!166629 c!146525) b!1581231))

(assert (= (and d!166629 (not c!146525)) b!1581232))

(assert (=> b!1581232 m!1452257))

(assert (=> b!1581173 d!166629))

(declare-fun d!166631 () Bool)

(declare-fun res!1080386 () Bool)

(declare-fun e!882326 () Bool)

(assert (=> d!166631 (=> res!1080386 e!882326)))

(assert (=> d!166631 (= res!1080386 (and ((_ is Cons!36985) l!1390) (= (_1!12876 (h!38529 l!1390)) key!405)))))

(assert (=> d!166631 (= (containsKey!930 l!1390 key!405) e!882326)))

(declare-fun b!1581255 () Bool)

(declare-fun e!882327 () Bool)

(assert (=> b!1581255 (= e!882326 e!882327)))

(declare-fun res!1080387 () Bool)

(assert (=> b!1581255 (=> (not res!1080387) (not e!882327))))

(assert (=> b!1581255 (= res!1080387 (and (or (not ((_ is Cons!36985) l!1390)) (bvsle (_1!12876 (h!38529 l!1390)) key!405)) ((_ is Cons!36985) l!1390) (bvslt (_1!12876 (h!38529 l!1390)) key!405)))))

(declare-fun b!1581256 () Bool)

(assert (=> b!1581256 (= e!882327 (containsKey!930 (t!51910 l!1390) key!405))))

(assert (= (and d!166631 (not res!1080386)) b!1581255))

(assert (= (and b!1581255 res!1080387) b!1581256))

(assert (=> b!1581256 m!1452265))

(assert (=> b!1581168 d!166631))

(declare-fun d!166639 () Bool)

(declare-fun lt!676857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!851 (List!36989) (InoxSet tuple2!25732))

(assert (=> d!166639 (= lt!676857 (select (content!851 (t!51910 l!1390)) lt!676833))))

(declare-fun e!882344 () Bool)

(assert (=> d!166639 (= lt!676857 e!882344)))

(declare-fun res!1080404 () Bool)

(assert (=> d!166639 (=> (not res!1080404) (not e!882344))))

(assert (=> d!166639 (= res!1080404 ((_ is Cons!36985) (t!51910 l!1390)))))

(assert (=> d!166639 (= (contains!10517 (t!51910 l!1390) lt!676833) lt!676857)))

(declare-fun b!1581273 () Bool)

(declare-fun e!882345 () Bool)

(assert (=> b!1581273 (= e!882344 e!882345)))

(declare-fun res!1080405 () Bool)

(assert (=> b!1581273 (=> res!1080405 e!882345)))

(assert (=> b!1581273 (= res!1080405 (= (h!38529 (t!51910 l!1390)) lt!676833))))

(declare-fun b!1581274 () Bool)

(assert (=> b!1581274 (= e!882345 (contains!10517 (t!51910 (t!51910 l!1390)) lt!676833))))

(assert (= (and d!166639 res!1080404) b!1581273))

(assert (= (and b!1581273 (not res!1080405)) b!1581274))

(declare-fun m!1452309 () Bool)

(assert (=> d!166639 m!1452309))

(declare-fun m!1452313 () Bool)

(assert (=> d!166639 m!1452313))

(declare-fun m!1452315 () Bool)

(assert (=> b!1581274 m!1452315))

(assert (=> b!1581170 d!166639))

(declare-fun d!166651 () Bool)

(assert (=> d!166651 (= (isEmpty!1181 lt!676834) (not ((_ is Some!921) lt!676834)))))

(assert (=> b!1581169 d!166651))

(declare-fun d!166659 () Bool)

(assert (=> d!166659 (= (unapply!95 l!1390) (ite ((_ is Nil!36986) l!1390) None!920 (Some!921 (tuple2!25735 (h!38529 l!1390) (t!51910 l!1390)))))))

(assert (=> b!1581169 d!166659))

(declare-fun d!166663 () Bool)

(assert (=> d!166663 (= (get!26842 lt!676834) (v!22430 lt!676834))))

(assert (=> b!1581171 d!166663))

(declare-fun d!166665 () Bool)

(declare-fun res!1080418 () Bool)

(declare-fun e!882363 () Bool)

(assert (=> d!166665 (=> res!1080418 e!882363)))

(assert (=> d!166665 (= res!1080418 (or ((_ is Nil!36986) (t!51910 l!1390)) ((_ is Nil!36986) (t!51910 (t!51910 l!1390)))))))

(assert (=> d!166665 (= (isStrictlySorted!1084 (t!51910 l!1390)) e!882363)))

(declare-fun b!1581296 () Bool)

(declare-fun e!882364 () Bool)

(assert (=> b!1581296 (= e!882363 e!882364)))

(declare-fun res!1080419 () Bool)

(assert (=> b!1581296 (=> (not res!1080419) (not e!882364))))

(assert (=> b!1581296 (= res!1080419 (bvslt (_1!12876 (h!38529 (t!51910 l!1390))) (_1!12876 (h!38529 (t!51910 (t!51910 l!1390))))))))

(declare-fun b!1581297 () Bool)

(assert (=> b!1581297 (= e!882364 (isStrictlySorted!1084 (t!51910 (t!51910 l!1390))))))

(assert (= (and d!166665 (not res!1080418)) b!1581296))

(assert (= (and b!1581296 res!1080419) b!1581297))

(declare-fun m!1452325 () Bool)

(assert (=> b!1581297 m!1452325))

(assert (=> b!1581176 d!166665))

(declare-fun d!166667 () Bool)

(declare-fun lt!676861 () Bool)

(assert (=> d!166667 (= lt!676861 (select (content!851 l!1390) lt!676833))))

(declare-fun e!882365 () Bool)

(assert (=> d!166667 (= lt!676861 e!882365)))

(declare-fun res!1080420 () Bool)

(assert (=> d!166667 (=> (not res!1080420) (not e!882365))))

(assert (=> d!166667 (= res!1080420 ((_ is Cons!36985) l!1390))))

(assert (=> d!166667 (= (contains!10517 l!1390 lt!676833) lt!676861)))

(declare-fun b!1581298 () Bool)

(declare-fun e!882366 () Bool)

(assert (=> b!1581298 (= e!882365 e!882366)))

(declare-fun res!1080421 () Bool)

(assert (=> b!1581298 (=> res!1080421 e!882366)))

(assert (=> b!1581298 (= res!1080421 (= (h!38529 l!1390) lt!676833))))

(declare-fun b!1581299 () Bool)

(assert (=> b!1581299 (= e!882366 (contains!10517 (t!51910 l!1390) lt!676833))))

(assert (= (and d!166667 res!1080420) b!1581298))

(assert (= (and b!1581298 (not res!1080421)) b!1581299))

(declare-fun m!1452327 () Bool)

(assert (=> d!166667 m!1452327))

(declare-fun m!1452329 () Bool)

(assert (=> d!166667 m!1452329))

(assert (=> b!1581299 m!1452253))

(assert (=> b!1581167 d!166667))

(declare-fun d!166669 () Bool)

(declare-fun res!1080422 () Bool)

(declare-fun e!882368 () Bool)

(assert (=> d!166669 (=> res!1080422 e!882368)))

(assert (=> d!166669 (= res!1080422 (and ((_ is Cons!36985) (t!51910 l!1390)) (= (_1!12876 (h!38529 (t!51910 l!1390))) key!405)))))

(assert (=> d!166669 (= (containsKey!930 (t!51910 l!1390) key!405) e!882368)))

(declare-fun b!1581302 () Bool)

(declare-fun e!882369 () Bool)

(assert (=> b!1581302 (= e!882368 e!882369)))

(declare-fun res!1080423 () Bool)

(assert (=> b!1581302 (=> (not res!1080423) (not e!882369))))

(assert (=> b!1581302 (= res!1080423 (and (or (not ((_ is Cons!36985) (t!51910 l!1390))) (bvsle (_1!12876 (h!38529 (t!51910 l!1390))) key!405)) ((_ is Cons!36985) (t!51910 l!1390)) (bvslt (_1!12876 (h!38529 (t!51910 l!1390))) key!405)))))

(declare-fun b!1581303 () Bool)

(assert (=> b!1581303 (= e!882369 (containsKey!930 (t!51910 (t!51910 l!1390)) key!405))))

(assert (= (and d!166669 (not res!1080422)) b!1581302))

(assert (= (and b!1581302 res!1080423) b!1581303))

(declare-fun m!1452333 () Bool)

(assert (=> b!1581303 m!1452333))

(assert (=> b!1581172 d!166669))

(declare-fun b!1581312 () Bool)

(declare-fun e!882375 () Bool)

(declare-fun tp!114574 () Bool)

(assert (=> b!1581312 (= e!882375 (and tp_is_empty!39237 tp!114574))))

(assert (=> b!1581174 (= tp!114565 e!882375)))

(assert (= (and b!1581174 ((_ is Cons!36985) (t!51910 l!1390))) b!1581312))

(check-sat (not b!1581230) (not d!166667) (not b!1581297) (not b!1581212) (not b!1581312) tp_is_empty!39237 (not b!1581299) (not b!1581274) (not b!1581256) (not d!166639) (not b!1581232) (not b!1581303))
