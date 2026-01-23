; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14122 () Bool)

(assert start!14122)

(declare-fun b!135225 () Bool)

(declare-fun e!78476 () Bool)

(declare-fun tp_is_empty!1501 () Bool)

(declare-fun tp!70930 () Bool)

(assert (=> b!135225 (= e!78476 (and tp_is_empty!1501 tp!70930))))

(declare-fun b!135226 () Bool)

(declare-fun e!78475 () Bool)

(declare-fun tp!70927 () Bool)

(assert (=> b!135226 (= e!78475 (and tp_is_empty!1501 tp!70927))))

(declare-datatypes ((B!857 0))(
  ( (B!858 (val!914 Int)) )
))
(declare-datatypes ((List!2232 0))(
  ( (Nil!2226) (Cons!2226 (h!7623 B!857) (t!22818 List!2232)) )
))
(declare-fun sub!16 () List!2232)

(declare-fun l3!231 () List!2232)

(declare-fun b!135227 () Bool)

(declare-fun e!78478 () Bool)

(declare-fun l1!1230 () List!2232)

(declare-fun l2!1199 () List!2232)

(declare-fun subseq!73 (List!2232 List!2232) Bool)

(declare-fun ++!500 (List!2232 List!2232) List!2232)

(assert (=> b!135227 (= e!78478 (not (subseq!73 sub!16 (++!500 (++!500 l1!1230 l3!231) l2!1199))))))

(assert (=> b!135227 (subseq!73 sub!16 (++!500 l3!231 l2!1199))))

(declare-datatypes ((Unit!1764 0))(
  ( (Unit!1765) )
))
(declare-fun lt!40681 () Unit!1764)

(declare-fun lemmaConcatNewListPreservesSubSeq!2 (List!2232 List!2232 List!2232) Unit!1764)

(assert (=> b!135227 (= lt!40681 (lemmaConcatNewListPreservesSubSeq!2 sub!16 l3!231 l2!1199))))

(declare-fun b!135228 () Bool)

(declare-fun res!63293 () Bool)

(assert (=> b!135228 (=> (not res!63293) (not e!78478))))

(assert (=> b!135228 (= res!63293 (subseq!73 sub!16 l2!1199))))

(declare-fun b!135229 () Bool)

(declare-fun res!63296 () Bool)

(assert (=> b!135229 (=> (not res!63296) (not e!78478))))

(declare-fun isEmpty!868 (List!2232) Bool)

(assert (=> b!135229 (= res!63296 (isEmpty!868 l1!1230))))

(declare-fun res!63295 () Bool)

(assert (=> start!14122 (=> (not res!63295) (not e!78478))))

(declare-fun lt!40682 () List!2232)

(assert (=> start!14122 (= res!63295 (subseq!73 sub!16 lt!40682))))

(assert (=> start!14122 (= lt!40682 (++!500 l1!1230 l2!1199))))

(assert (=> start!14122 e!78478))

(declare-fun e!78479 () Bool)

(assert (=> start!14122 e!78479))

(assert (=> start!14122 e!78476))

(assert (=> start!14122 e!78475))

(declare-fun e!78477 () Bool)

(assert (=> start!14122 e!78477))

(declare-fun b!135230 () Bool)

(declare-fun tp!70929 () Bool)

(assert (=> b!135230 (= e!78479 (and tp_is_empty!1501 tp!70929))))

(declare-fun b!135231 () Bool)

(declare-fun res!63294 () Bool)

(assert (=> b!135231 (=> (not res!63294) (not e!78478))))

(get-info :version)

(assert (=> b!135231 (= res!63294 (and (not ((_ is Nil!2226) sub!16)) ((_ is Cons!2226) lt!40682)))))

(declare-fun b!135232 () Bool)

(declare-fun tp!70928 () Bool)

(assert (=> b!135232 (= e!78477 (and tp_is_empty!1501 tp!70928))))

(assert (= (and start!14122 res!63295) b!135231))

(assert (= (and b!135231 res!63294) b!135229))

(assert (= (and b!135229 res!63296) b!135228))

(assert (= (and b!135228 res!63293) b!135227))

(assert (= (and start!14122 ((_ is Cons!2226) sub!16)) b!135230))

(assert (= (and start!14122 ((_ is Cons!2226) l3!231)) b!135225))

(assert (= (and start!14122 ((_ is Cons!2226) l1!1230)) b!135226))

(assert (= (and start!14122 ((_ is Cons!2226) l2!1199)) b!135232))

(declare-fun m!120009 () Bool)

(assert (=> b!135227 m!120009))

(declare-fun m!120011 () Bool)

(assert (=> b!135227 m!120011))

(declare-fun m!120013 () Bool)

(assert (=> b!135227 m!120013))

(declare-fun m!120015 () Bool)

(assert (=> b!135227 m!120015))

(declare-fun m!120017 () Bool)

(assert (=> b!135227 m!120017))

(assert (=> b!135227 m!120013))

(declare-fun m!120019 () Bool)

(assert (=> b!135227 m!120019))

(assert (=> b!135227 m!120017))

(assert (=> b!135227 m!120009))

(declare-fun m!120021 () Bool)

(assert (=> b!135228 m!120021))

(declare-fun m!120023 () Bool)

(assert (=> b!135229 m!120023))

(declare-fun m!120025 () Bool)

(assert (=> start!14122 m!120025))

(declare-fun m!120027 () Bool)

(assert (=> start!14122 m!120027))

(check-sat (not b!135226) (not start!14122) (not b!135228) tp_is_empty!1501 (not b!135225) (not b!135230) (not b!135227) (not b!135229) (not b!135232))
(check-sat)
(get-model)

(declare-fun b!135243 () Bool)

(declare-fun res!63302 () Bool)

(declare-fun e!78485 () Bool)

(assert (=> b!135243 (=> (not res!63302) (not e!78485))))

(declare-fun lt!40685 () List!2232)

(declare-fun size!2014 (List!2232) Int)

(assert (=> b!135243 (= res!63302 (= (size!2014 lt!40685) (+ (size!2014 l3!231) (size!2014 l2!1199))))))

(declare-fun b!135242 () Bool)

(declare-fun e!78484 () List!2232)

(assert (=> b!135242 (= e!78484 (Cons!2226 (h!7623 l3!231) (++!500 (t!22818 l3!231) l2!1199)))))

(declare-fun d!32414 () Bool)

(assert (=> d!32414 e!78485))

(declare-fun res!63301 () Bool)

(assert (=> d!32414 (=> (not res!63301) (not e!78485))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!326 (List!2232) (InoxSet B!857))

(assert (=> d!32414 (= res!63301 (= (content!326 lt!40685) ((_ map or) (content!326 l3!231) (content!326 l2!1199))))))

(assert (=> d!32414 (= lt!40685 e!78484)))

(declare-fun c!28817 () Bool)

(assert (=> d!32414 (= c!28817 ((_ is Nil!2226) l3!231))))

(assert (=> d!32414 (= (++!500 l3!231 l2!1199) lt!40685)))

(declare-fun b!135244 () Bool)

(assert (=> b!135244 (= e!78485 (or (not (= l2!1199 Nil!2226)) (= lt!40685 l3!231)))))

(declare-fun b!135241 () Bool)

(assert (=> b!135241 (= e!78484 l2!1199)))

(assert (= (and d!32414 c!28817) b!135241))

(assert (= (and d!32414 (not c!28817)) b!135242))

(assert (= (and d!32414 res!63301) b!135243))

(assert (= (and b!135243 res!63302) b!135244))

(declare-fun m!120029 () Bool)

(assert (=> b!135243 m!120029))

(declare-fun m!120031 () Bool)

(assert (=> b!135243 m!120031))

(declare-fun m!120033 () Bool)

(assert (=> b!135243 m!120033))

(declare-fun m!120035 () Bool)

(assert (=> b!135242 m!120035))

(declare-fun m!120037 () Bool)

(assert (=> d!32414 m!120037))

(declare-fun m!120039 () Bool)

(assert (=> d!32414 m!120039))

(declare-fun m!120041 () Bool)

(assert (=> d!32414 m!120041))

(assert (=> b!135227 d!32414))

(declare-fun d!32418 () Bool)

(assert (=> d!32418 (subseq!73 sub!16 (++!500 l3!231 l2!1199))))

(declare-fun lt!40688 () Unit!1764)

(declare-fun choose!1704 (List!2232 List!2232 List!2232) Unit!1764)

(assert (=> d!32418 (= lt!40688 (choose!1704 sub!16 l3!231 l2!1199))))

(assert (=> d!32418 (subseq!73 sub!16 l2!1199)))

(assert (=> d!32418 (= (lemmaConcatNewListPreservesSubSeq!2 sub!16 l3!231 l2!1199) lt!40688)))

(declare-fun bs!12724 () Bool)

(assert (= bs!12724 d!32418))

(assert (=> bs!12724 m!120013))

(assert (=> bs!12724 m!120013))

(assert (=> bs!12724 m!120019))

(declare-fun m!120043 () Bool)

(assert (=> bs!12724 m!120043))

(assert (=> bs!12724 m!120021))

(assert (=> b!135227 d!32418))

(declare-fun e!78503 () Bool)

(declare-fun b!135263 () Bool)

(assert (=> b!135263 (= e!78503 (subseq!73 (t!22818 sub!16) (t!22818 (++!500 l3!231 l2!1199))))))

(declare-fun d!32422 () Bool)

(declare-fun res!63320 () Bool)

(declare-fun e!78502 () Bool)

(assert (=> d!32422 (=> res!63320 e!78502)))

(assert (=> d!32422 (= res!63320 ((_ is Nil!2226) sub!16))))

(assert (=> d!32422 (= (subseq!73 sub!16 (++!500 l3!231 l2!1199)) e!78502)))

(declare-fun b!135261 () Bool)

(declare-fun e!78505 () Bool)

(assert (=> b!135261 (= e!78502 e!78505)))

(declare-fun res!63321 () Bool)

(assert (=> b!135261 (=> (not res!63321) (not e!78505))))

(assert (=> b!135261 (= res!63321 ((_ is Cons!2226) (++!500 l3!231 l2!1199)))))

(declare-fun e!78504 () Bool)

(declare-fun b!135264 () Bool)

(assert (=> b!135264 (= e!78504 (subseq!73 sub!16 (t!22818 (++!500 l3!231 l2!1199))))))

(declare-fun b!135262 () Bool)

(assert (=> b!135262 (= e!78505 e!78504)))

(declare-fun res!63319 () Bool)

(assert (=> b!135262 (=> res!63319 e!78504)))

(assert (=> b!135262 (= res!63319 e!78503)))

(declare-fun res!63322 () Bool)

(assert (=> b!135262 (=> (not res!63322) (not e!78503))))

(assert (=> b!135262 (= res!63322 (= (h!7623 sub!16) (h!7623 (++!500 l3!231 l2!1199))))))

(assert (= (and d!32422 (not res!63320)) b!135261))

(assert (= (and b!135261 res!63321) b!135262))

(assert (= (and b!135262 res!63322) b!135263))

(assert (= (and b!135262 (not res!63319)) b!135264))

(declare-fun m!120045 () Bool)

(assert (=> b!135263 m!120045))

(declare-fun m!120047 () Bool)

(assert (=> b!135264 m!120047))

(assert (=> b!135227 d!32422))

(declare-fun b!135267 () Bool)

(declare-fun res!63324 () Bool)

(declare-fun e!78507 () Bool)

(assert (=> b!135267 (=> (not res!63324) (not e!78507))))

(declare-fun lt!40689 () List!2232)

(assert (=> b!135267 (= res!63324 (= (size!2014 lt!40689) (+ (size!2014 (++!500 l1!1230 l3!231)) (size!2014 l2!1199))))))

(declare-fun b!135266 () Bool)

(declare-fun e!78506 () List!2232)

(assert (=> b!135266 (= e!78506 (Cons!2226 (h!7623 (++!500 l1!1230 l3!231)) (++!500 (t!22818 (++!500 l1!1230 l3!231)) l2!1199)))))

(declare-fun d!32424 () Bool)

(assert (=> d!32424 e!78507))

(declare-fun res!63323 () Bool)

(assert (=> d!32424 (=> (not res!63323) (not e!78507))))

(assert (=> d!32424 (= res!63323 (= (content!326 lt!40689) ((_ map or) (content!326 (++!500 l1!1230 l3!231)) (content!326 l2!1199))))))

(assert (=> d!32424 (= lt!40689 e!78506)))

(declare-fun c!28818 () Bool)

(assert (=> d!32424 (= c!28818 ((_ is Nil!2226) (++!500 l1!1230 l3!231)))))

(assert (=> d!32424 (= (++!500 (++!500 l1!1230 l3!231) l2!1199) lt!40689)))

(declare-fun b!135268 () Bool)

(assert (=> b!135268 (= e!78507 (or (not (= l2!1199 Nil!2226)) (= lt!40689 (++!500 l1!1230 l3!231))))))

(declare-fun b!135265 () Bool)

(assert (=> b!135265 (= e!78506 l2!1199)))

(assert (= (and d!32424 c!28818) b!135265))

(assert (= (and d!32424 (not c!28818)) b!135266))

(assert (= (and d!32424 res!63323) b!135267))

(assert (= (and b!135267 res!63324) b!135268))

(declare-fun m!120049 () Bool)

(assert (=> b!135267 m!120049))

(assert (=> b!135267 m!120017))

(declare-fun m!120051 () Bool)

(assert (=> b!135267 m!120051))

(assert (=> b!135267 m!120033))

(declare-fun m!120053 () Bool)

(assert (=> b!135266 m!120053))

(declare-fun m!120055 () Bool)

(assert (=> d!32424 m!120055))

(assert (=> d!32424 m!120017))

(declare-fun m!120057 () Bool)

(assert (=> d!32424 m!120057))

(assert (=> d!32424 m!120041))

(assert (=> b!135227 d!32424))

(declare-fun b!135271 () Bool)

(declare-fun res!63326 () Bool)

(declare-fun e!78509 () Bool)

(assert (=> b!135271 (=> (not res!63326) (not e!78509))))

(declare-fun lt!40690 () List!2232)

(assert (=> b!135271 (= res!63326 (= (size!2014 lt!40690) (+ (size!2014 l1!1230) (size!2014 l3!231))))))

(declare-fun b!135270 () Bool)

(declare-fun e!78508 () List!2232)

(assert (=> b!135270 (= e!78508 (Cons!2226 (h!7623 l1!1230) (++!500 (t!22818 l1!1230) l3!231)))))

(declare-fun d!32426 () Bool)

(assert (=> d!32426 e!78509))

(declare-fun res!63325 () Bool)

(assert (=> d!32426 (=> (not res!63325) (not e!78509))))

(assert (=> d!32426 (= res!63325 (= (content!326 lt!40690) ((_ map or) (content!326 l1!1230) (content!326 l3!231))))))

(assert (=> d!32426 (= lt!40690 e!78508)))

(declare-fun c!28819 () Bool)

(assert (=> d!32426 (= c!28819 ((_ is Nil!2226) l1!1230))))

(assert (=> d!32426 (= (++!500 l1!1230 l3!231) lt!40690)))

(declare-fun b!135272 () Bool)

(assert (=> b!135272 (= e!78509 (or (not (= l3!231 Nil!2226)) (= lt!40690 l1!1230)))))

(declare-fun b!135269 () Bool)

(assert (=> b!135269 (= e!78508 l3!231)))

(assert (= (and d!32426 c!28819) b!135269))

(assert (= (and d!32426 (not c!28819)) b!135270))

(assert (= (and d!32426 res!63325) b!135271))

(assert (= (and b!135271 res!63326) b!135272))

(declare-fun m!120059 () Bool)

(assert (=> b!135271 m!120059))

(declare-fun m!120061 () Bool)

(assert (=> b!135271 m!120061))

(assert (=> b!135271 m!120031))

(declare-fun m!120063 () Bool)

(assert (=> b!135270 m!120063))

(declare-fun m!120065 () Bool)

(assert (=> d!32426 m!120065))

(declare-fun m!120067 () Bool)

(assert (=> d!32426 m!120067))

(assert (=> d!32426 m!120039))

(assert (=> b!135227 d!32426))

(declare-fun b!135275 () Bool)

(declare-fun e!78511 () Bool)

(assert (=> b!135275 (= e!78511 (subseq!73 (t!22818 sub!16) (t!22818 (++!500 (++!500 l1!1230 l3!231) l2!1199))))))

(declare-fun d!32428 () Bool)

(declare-fun res!63328 () Bool)

(declare-fun e!78510 () Bool)

(assert (=> d!32428 (=> res!63328 e!78510)))

(assert (=> d!32428 (= res!63328 ((_ is Nil!2226) sub!16))))

(assert (=> d!32428 (= (subseq!73 sub!16 (++!500 (++!500 l1!1230 l3!231) l2!1199)) e!78510)))

(declare-fun b!135273 () Bool)

(declare-fun e!78513 () Bool)

(assert (=> b!135273 (= e!78510 e!78513)))

(declare-fun res!63329 () Bool)

(assert (=> b!135273 (=> (not res!63329) (not e!78513))))

(assert (=> b!135273 (= res!63329 ((_ is Cons!2226) (++!500 (++!500 l1!1230 l3!231) l2!1199)))))

(declare-fun b!135276 () Bool)

(declare-fun e!78512 () Bool)

(assert (=> b!135276 (= e!78512 (subseq!73 sub!16 (t!22818 (++!500 (++!500 l1!1230 l3!231) l2!1199))))))

(declare-fun b!135274 () Bool)

(assert (=> b!135274 (= e!78513 e!78512)))

(declare-fun res!63327 () Bool)

(assert (=> b!135274 (=> res!63327 e!78512)))

(assert (=> b!135274 (= res!63327 e!78511)))

(declare-fun res!63330 () Bool)

(assert (=> b!135274 (=> (not res!63330) (not e!78511))))

(assert (=> b!135274 (= res!63330 (= (h!7623 sub!16) (h!7623 (++!500 (++!500 l1!1230 l3!231) l2!1199))))))

(assert (= (and d!32428 (not res!63328)) b!135273))

(assert (= (and b!135273 res!63329) b!135274))

(assert (= (and b!135274 res!63330) b!135275))

(assert (= (and b!135274 (not res!63327)) b!135276))

(declare-fun m!120069 () Bool)

(assert (=> b!135275 m!120069))

(declare-fun m!120071 () Bool)

(assert (=> b!135276 m!120071))

(assert (=> b!135227 d!32428))

(declare-fun b!135279 () Bool)

(declare-fun e!78515 () Bool)

(assert (=> b!135279 (= e!78515 (subseq!73 (t!22818 sub!16) (t!22818 lt!40682)))))

(declare-fun d!32430 () Bool)

(declare-fun res!63332 () Bool)

(declare-fun e!78514 () Bool)

(assert (=> d!32430 (=> res!63332 e!78514)))

(assert (=> d!32430 (= res!63332 ((_ is Nil!2226) sub!16))))

(assert (=> d!32430 (= (subseq!73 sub!16 lt!40682) e!78514)))

(declare-fun b!135277 () Bool)

(declare-fun e!78517 () Bool)

(assert (=> b!135277 (= e!78514 e!78517)))

(declare-fun res!63333 () Bool)

(assert (=> b!135277 (=> (not res!63333) (not e!78517))))

(assert (=> b!135277 (= res!63333 ((_ is Cons!2226) lt!40682))))

(declare-fun b!135280 () Bool)

(declare-fun e!78516 () Bool)

(assert (=> b!135280 (= e!78516 (subseq!73 sub!16 (t!22818 lt!40682)))))

(declare-fun b!135278 () Bool)

(assert (=> b!135278 (= e!78517 e!78516)))

(declare-fun res!63331 () Bool)

(assert (=> b!135278 (=> res!63331 e!78516)))

(assert (=> b!135278 (= res!63331 e!78515)))

(declare-fun res!63334 () Bool)

(assert (=> b!135278 (=> (not res!63334) (not e!78515))))

(assert (=> b!135278 (= res!63334 (= (h!7623 sub!16) (h!7623 lt!40682)))))

(assert (= (and d!32430 (not res!63332)) b!135277))

(assert (= (and b!135277 res!63333) b!135278))

(assert (= (and b!135278 res!63334) b!135279))

(assert (= (and b!135278 (not res!63331)) b!135280))

(declare-fun m!120073 () Bool)

(assert (=> b!135279 m!120073))

(declare-fun m!120075 () Bool)

(assert (=> b!135280 m!120075))

(assert (=> start!14122 d!32430))

(declare-fun b!135283 () Bool)

(declare-fun res!63336 () Bool)

(declare-fun e!78519 () Bool)

(assert (=> b!135283 (=> (not res!63336) (not e!78519))))

(declare-fun lt!40691 () List!2232)

(assert (=> b!135283 (= res!63336 (= (size!2014 lt!40691) (+ (size!2014 l1!1230) (size!2014 l2!1199))))))

(declare-fun b!135282 () Bool)

(declare-fun e!78518 () List!2232)

(assert (=> b!135282 (= e!78518 (Cons!2226 (h!7623 l1!1230) (++!500 (t!22818 l1!1230) l2!1199)))))

(declare-fun d!32432 () Bool)

(assert (=> d!32432 e!78519))

(declare-fun res!63335 () Bool)

(assert (=> d!32432 (=> (not res!63335) (not e!78519))))

(assert (=> d!32432 (= res!63335 (= (content!326 lt!40691) ((_ map or) (content!326 l1!1230) (content!326 l2!1199))))))

(assert (=> d!32432 (= lt!40691 e!78518)))

(declare-fun c!28820 () Bool)

(assert (=> d!32432 (= c!28820 ((_ is Nil!2226) l1!1230))))

(assert (=> d!32432 (= (++!500 l1!1230 l2!1199) lt!40691)))

(declare-fun b!135284 () Bool)

(assert (=> b!135284 (= e!78519 (or (not (= l2!1199 Nil!2226)) (= lt!40691 l1!1230)))))

(declare-fun b!135281 () Bool)

(assert (=> b!135281 (= e!78518 l2!1199)))

(assert (= (and d!32432 c!28820) b!135281))

(assert (= (and d!32432 (not c!28820)) b!135282))

(assert (= (and d!32432 res!63335) b!135283))

(assert (= (and b!135283 res!63336) b!135284))

(declare-fun m!120077 () Bool)

(assert (=> b!135283 m!120077))

(assert (=> b!135283 m!120061))

(assert (=> b!135283 m!120033))

(declare-fun m!120079 () Bool)

(assert (=> b!135282 m!120079))

(declare-fun m!120081 () Bool)

(assert (=> d!32432 m!120081))

(assert (=> d!32432 m!120067))

(assert (=> d!32432 m!120041))

(assert (=> start!14122 d!32432))

(declare-fun d!32434 () Bool)

(assert (=> d!32434 (= (isEmpty!868 l1!1230) ((_ is Nil!2226) l1!1230))))

(assert (=> b!135229 d!32434))

(declare-fun b!135287 () Bool)

(declare-fun e!78521 () Bool)

(assert (=> b!135287 (= e!78521 (subseq!73 (t!22818 sub!16) (t!22818 l2!1199)))))

(declare-fun d!32436 () Bool)

(declare-fun res!63338 () Bool)

(declare-fun e!78520 () Bool)

(assert (=> d!32436 (=> res!63338 e!78520)))

(assert (=> d!32436 (= res!63338 ((_ is Nil!2226) sub!16))))

(assert (=> d!32436 (= (subseq!73 sub!16 l2!1199) e!78520)))

(declare-fun b!135285 () Bool)

(declare-fun e!78523 () Bool)

(assert (=> b!135285 (= e!78520 e!78523)))

(declare-fun res!63339 () Bool)

(assert (=> b!135285 (=> (not res!63339) (not e!78523))))

(assert (=> b!135285 (= res!63339 ((_ is Cons!2226) l2!1199))))

(declare-fun b!135288 () Bool)

(declare-fun e!78522 () Bool)

(assert (=> b!135288 (= e!78522 (subseq!73 sub!16 (t!22818 l2!1199)))))

(declare-fun b!135286 () Bool)

(assert (=> b!135286 (= e!78523 e!78522)))

(declare-fun res!63337 () Bool)

(assert (=> b!135286 (=> res!63337 e!78522)))

(assert (=> b!135286 (= res!63337 e!78521)))

(declare-fun res!63340 () Bool)

(assert (=> b!135286 (=> (not res!63340) (not e!78521))))

(assert (=> b!135286 (= res!63340 (= (h!7623 sub!16) (h!7623 l2!1199)))))

(assert (= (and d!32436 (not res!63338)) b!135285))

(assert (= (and b!135285 res!63339) b!135286))

(assert (= (and b!135286 res!63340) b!135287))

(assert (= (and b!135286 (not res!63337)) b!135288))

(declare-fun m!120083 () Bool)

(assert (=> b!135287 m!120083))

(declare-fun m!120085 () Bool)

(assert (=> b!135288 m!120085))

(assert (=> b!135228 d!32436))

(declare-fun b!135297 () Bool)

(declare-fun e!78530 () Bool)

(declare-fun tp!70933 () Bool)

(assert (=> b!135297 (= e!78530 (and tp_is_empty!1501 tp!70933))))

(assert (=> b!135232 (= tp!70928 e!78530)))

(assert (= (and b!135232 ((_ is Cons!2226) (t!22818 l2!1199))) b!135297))

(declare-fun b!135298 () Bool)

(declare-fun e!78531 () Bool)

(declare-fun tp!70934 () Bool)

(assert (=> b!135298 (= e!78531 (and tp_is_empty!1501 tp!70934))))

(assert (=> b!135226 (= tp!70927 e!78531)))

(assert (= (and b!135226 ((_ is Cons!2226) (t!22818 l1!1230))) b!135298))

(declare-fun b!135299 () Bool)

(declare-fun e!78532 () Bool)

(declare-fun tp!70935 () Bool)

(assert (=> b!135299 (= e!78532 (and tp_is_empty!1501 tp!70935))))

(assert (=> b!135230 (= tp!70929 e!78532)))

(assert (= (and b!135230 ((_ is Cons!2226) (t!22818 sub!16))) b!135299))

(declare-fun b!135300 () Bool)

(declare-fun e!78533 () Bool)

(declare-fun tp!70936 () Bool)

(assert (=> b!135300 (= e!78533 (and tp_is_empty!1501 tp!70936))))

(assert (=> b!135225 (= tp!70930 e!78533)))

(assert (= (and b!135225 ((_ is Cons!2226) (t!22818 l3!231))) b!135300))

(check-sat (not b!135283) (not b!135287) (not b!135263) (not b!135298) (not d!32432) tp_is_empty!1501 (not b!135242) (not b!135299) (not b!135267) (not d!32418) (not d!32414) (not b!135243) (not b!135297) (not b!135279) (not d!32426) (not b!135300) (not b!135266) (not b!135275) (not b!135282) (not d!32424) (not b!135270) (not b!135288) (not b!135280) (not b!135276) (not b!135271) (not b!135264))
(check-sat)
