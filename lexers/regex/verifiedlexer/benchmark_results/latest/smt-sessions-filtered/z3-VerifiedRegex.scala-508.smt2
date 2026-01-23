; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14106 () Bool)

(assert start!14106)

(declare-fun b!135109 () Bool)

(declare-fun res!63226 () Bool)

(declare-fun e!78393 () Bool)

(assert (=> b!135109 (=> (not res!63226) (not e!78393))))

(declare-datatypes ((B!853 0))(
  ( (B!854 (val!912 Int)) )
))
(declare-datatypes ((List!2230 0))(
  ( (Nil!2224) (Cons!2224 (h!7621 B!853) (t!22816 List!2230)) )
))
(declare-fun sub!16 () List!2230)

(declare-fun lt!40664 () List!2230)

(get-info :version)

(assert (=> b!135109 (= res!63226 (and (not ((_ is Nil!2224) sub!16)) ((_ is Cons!2224) lt!40664)))))

(declare-fun b!135110 () Bool)

(declare-fun e!78395 () Bool)

(declare-fun tp_is_empty!1497 () Bool)

(declare-fun tp!70894 () Bool)

(assert (=> b!135110 (= e!78395 (and tp_is_empty!1497 tp!70894))))

(declare-fun b!135111 () Bool)

(declare-fun e!78394 () Bool)

(declare-fun tp!70895 () Bool)

(assert (=> b!135111 (= e!78394 (and tp_is_empty!1497 tp!70895))))

(declare-fun b!135112 () Bool)

(declare-fun res!63228 () Bool)

(assert (=> b!135112 (=> (not res!63228) (not e!78393))))

(declare-fun l1!1230 () List!2230)

(declare-fun isEmpty!866 (List!2230) Bool)

(assert (=> b!135112 (= res!63228 (isEmpty!866 l1!1230))))

(declare-fun b!135113 () Bool)

(declare-fun e!78392 () Bool)

(declare-fun tp!70896 () Bool)

(assert (=> b!135113 (= e!78392 (and tp_is_empty!1497 tp!70896))))

(declare-fun b!135114 () Bool)

(declare-fun l2!1199 () List!2230)

(declare-fun subseq!71 (List!2230 List!2230) Bool)

(assert (=> b!135114 (= e!78393 (not (subseq!71 sub!16 l2!1199)))))

(declare-fun res!63227 () Bool)

(assert (=> start!14106 (=> (not res!63227) (not e!78393))))

(assert (=> start!14106 (= res!63227 (subseq!71 sub!16 lt!40664))))

(declare-fun ++!498 (List!2230 List!2230) List!2230)

(assert (=> start!14106 (= lt!40664 (++!498 l1!1230 l2!1199))))

(assert (=> start!14106 e!78393))

(assert (=> start!14106 e!78394))

(assert (=> start!14106 e!78392))

(assert (=> start!14106 e!78395))

(assert (= (and start!14106 res!63227) b!135109))

(assert (= (and b!135109 res!63226) b!135112))

(assert (= (and b!135112 res!63228) b!135114))

(assert (= (and start!14106 ((_ is Cons!2224) l1!1230)) b!135111))

(assert (= (and start!14106 ((_ is Cons!2224) l2!1199)) b!135113))

(assert (= (and start!14106 ((_ is Cons!2224) sub!16)) b!135110))

(declare-fun m!119937 () Bool)

(assert (=> b!135112 m!119937))

(declare-fun m!119939 () Bool)

(assert (=> b!135114 m!119939))

(declare-fun m!119941 () Bool)

(assert (=> start!14106 m!119941))

(declare-fun m!119943 () Bool)

(assert (=> start!14106 m!119943))

(check-sat (not b!135111) (not start!14106) (not b!135114) tp_is_empty!1497 (not b!135113) (not b!135112) (not b!135110))
(check-sat)
(get-model)

(declare-fun b!135126 () Bool)

(declare-fun e!78406 () Bool)

(assert (=> b!135126 (= e!78406 (subseq!71 sub!16 (t!22816 lt!40664)))))

(declare-fun d!32397 () Bool)

(declare-fun res!63240 () Bool)

(declare-fun e!78404 () Bool)

(assert (=> d!32397 (=> res!63240 e!78404)))

(assert (=> d!32397 (= res!63240 ((_ is Nil!2224) sub!16))))

(assert (=> d!32397 (= (subseq!71 sub!16 lt!40664) e!78404)))

(declare-fun b!135125 () Bool)

(declare-fun e!78407 () Bool)

(assert (=> b!135125 (= e!78407 (subseq!71 (t!22816 sub!16) (t!22816 lt!40664)))))

(declare-fun b!135123 () Bool)

(declare-fun e!78405 () Bool)

(assert (=> b!135123 (= e!78404 e!78405)))

(declare-fun res!63239 () Bool)

(assert (=> b!135123 (=> (not res!63239) (not e!78405))))

(assert (=> b!135123 (= res!63239 ((_ is Cons!2224) lt!40664))))

(declare-fun b!135124 () Bool)

(assert (=> b!135124 (= e!78405 e!78406)))

(declare-fun res!63238 () Bool)

(assert (=> b!135124 (=> res!63238 e!78406)))

(assert (=> b!135124 (= res!63238 e!78407)))

(declare-fun res!63237 () Bool)

(assert (=> b!135124 (=> (not res!63237) (not e!78407))))

(assert (=> b!135124 (= res!63237 (= (h!7621 sub!16) (h!7621 lt!40664)))))

(assert (= (and d!32397 (not res!63240)) b!135123))

(assert (= (and b!135123 res!63239) b!135124))

(assert (= (and b!135124 res!63237) b!135125))

(assert (= (and b!135124 (not res!63238)) b!135126))

(declare-fun m!119945 () Bool)

(assert (=> b!135126 m!119945))

(declare-fun m!119947 () Bool)

(assert (=> b!135125 m!119947))

(assert (=> start!14106 d!32397))

(declare-fun b!135147 () Bool)

(declare-fun e!78425 () List!2230)

(assert (=> b!135147 (= e!78425 l2!1199)))

(declare-fun lt!40667 () List!2230)

(declare-fun e!78424 () Bool)

(declare-fun b!135150 () Bool)

(assert (=> b!135150 (= e!78424 (or (not (= l2!1199 Nil!2224)) (= lt!40667 l1!1230)))))

(declare-fun d!32401 () Bool)

(assert (=> d!32401 e!78424))

(declare-fun res!63258 () Bool)

(assert (=> d!32401 (=> (not res!63258) (not e!78424))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!324 (List!2230) (InoxSet B!853))

(assert (=> d!32401 (= res!63258 (= (content!324 lt!40667) ((_ map or) (content!324 l1!1230) (content!324 l2!1199))))))

(assert (=> d!32401 (= lt!40667 e!78425)))

(declare-fun c!28811 () Bool)

(assert (=> d!32401 (= c!28811 ((_ is Nil!2224) l1!1230))))

(assert (=> d!32401 (= (++!498 l1!1230 l2!1199) lt!40667)))

(declare-fun b!135148 () Bool)

(assert (=> b!135148 (= e!78425 (Cons!2224 (h!7621 l1!1230) (++!498 (t!22816 l1!1230) l2!1199)))))

(declare-fun b!135149 () Bool)

(declare-fun res!63257 () Bool)

(assert (=> b!135149 (=> (not res!63257) (not e!78424))))

(declare-fun size!2012 (List!2230) Int)

(assert (=> b!135149 (= res!63257 (= (size!2012 lt!40667) (+ (size!2012 l1!1230) (size!2012 l2!1199))))))

(assert (= (and d!32401 c!28811) b!135147))

(assert (= (and d!32401 (not c!28811)) b!135148))

(assert (= (and d!32401 res!63258) b!135149))

(assert (= (and b!135149 res!63257) b!135150))

(declare-fun m!119953 () Bool)

(assert (=> d!32401 m!119953))

(declare-fun m!119955 () Bool)

(assert (=> d!32401 m!119955))

(declare-fun m!119957 () Bool)

(assert (=> d!32401 m!119957))

(declare-fun m!119959 () Bool)

(assert (=> b!135148 m!119959))

(declare-fun m!119961 () Bool)

(assert (=> b!135149 m!119961))

(declare-fun m!119963 () Bool)

(assert (=> b!135149 m!119963))

(declare-fun m!119965 () Bool)

(assert (=> b!135149 m!119965))

(assert (=> start!14106 d!32401))

(declare-fun b!135154 () Bool)

(declare-fun e!78428 () Bool)

(assert (=> b!135154 (= e!78428 (subseq!71 sub!16 (t!22816 l2!1199)))))

(declare-fun d!32405 () Bool)

(declare-fun res!63262 () Bool)

(declare-fun e!78426 () Bool)

(assert (=> d!32405 (=> res!63262 e!78426)))

(assert (=> d!32405 (= res!63262 ((_ is Nil!2224) sub!16))))

(assert (=> d!32405 (= (subseq!71 sub!16 l2!1199) e!78426)))

(declare-fun b!135153 () Bool)

(declare-fun e!78429 () Bool)

(assert (=> b!135153 (= e!78429 (subseq!71 (t!22816 sub!16) (t!22816 l2!1199)))))

(declare-fun b!135151 () Bool)

(declare-fun e!78427 () Bool)

(assert (=> b!135151 (= e!78426 e!78427)))

(declare-fun res!63261 () Bool)

(assert (=> b!135151 (=> (not res!63261) (not e!78427))))

(assert (=> b!135151 (= res!63261 ((_ is Cons!2224) l2!1199))))

(declare-fun b!135152 () Bool)

(assert (=> b!135152 (= e!78427 e!78428)))

(declare-fun res!63260 () Bool)

(assert (=> b!135152 (=> res!63260 e!78428)))

(assert (=> b!135152 (= res!63260 e!78429)))

(declare-fun res!63259 () Bool)

(assert (=> b!135152 (=> (not res!63259) (not e!78429))))

(assert (=> b!135152 (= res!63259 (= (h!7621 sub!16) (h!7621 l2!1199)))))

(assert (= (and d!32405 (not res!63262)) b!135151))

(assert (= (and b!135151 res!63261) b!135152))

(assert (= (and b!135152 res!63259) b!135153))

(assert (= (and b!135152 (not res!63260)) b!135154))

(declare-fun m!119967 () Bool)

(assert (=> b!135154 m!119967))

(declare-fun m!119969 () Bool)

(assert (=> b!135153 m!119969))

(assert (=> b!135114 d!32405))

(declare-fun d!32407 () Bool)

(assert (=> d!32407 (= (isEmpty!866 l1!1230) ((_ is Nil!2224) l1!1230))))

(assert (=> b!135112 d!32407))

(declare-fun b!135159 () Bool)

(declare-fun e!78432 () Bool)

(declare-fun tp!70899 () Bool)

(assert (=> b!135159 (= e!78432 (and tp_is_empty!1497 tp!70899))))

(assert (=> b!135111 (= tp!70895 e!78432)))

(assert (= (and b!135111 ((_ is Cons!2224) (t!22816 l1!1230))) b!135159))

(declare-fun b!135160 () Bool)

(declare-fun e!78433 () Bool)

(declare-fun tp!70900 () Bool)

(assert (=> b!135160 (= e!78433 (and tp_is_empty!1497 tp!70900))))

(assert (=> b!135110 (= tp!70894 e!78433)))

(assert (= (and b!135110 ((_ is Cons!2224) (t!22816 sub!16))) b!135160))

(declare-fun b!135161 () Bool)

(declare-fun e!78434 () Bool)

(declare-fun tp!70901 () Bool)

(assert (=> b!135161 (= e!78434 (and tp_is_empty!1497 tp!70901))))

(assert (=> b!135113 (= tp!70896 e!78434)))

(assert (= (and b!135113 ((_ is Cons!2224) (t!22816 l2!1199))) b!135161))

(check-sat (not d!32401) (not b!135159) (not b!135154) (not b!135149) (not b!135148) (not b!135161) (not b!135126) (not b!135160) (not b!135125) (not b!135153) tp_is_empty!1497)
(check-sat)
