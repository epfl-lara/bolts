; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187212 () Bool)

(assert start!187212)

(declare-fun b!1870145 () Bool)

(declare-fun e!1193208 () Bool)

(declare-datatypes ((T!33256 0))(
  ( (T!33257 (val!5962 Int)) )
))
(declare-datatypes ((List!20779 0))(
  ( (Nil!20697) (Cons!20697 (h!26098 T!33256) (t!172976 List!20779)) )
))
(declare-datatypes ((IArray!13789 0))(
  ( (IArray!13790 (innerList!6952 List!20779)) )
))
(declare-datatypes ((Conc!6892 0))(
  ( (Node!6892 (left!16691 Conc!6892) (right!17021 Conc!6892) (csize!14014 Int) (cheight!7103 Int)) (Leaf!10106 (xs!9776 IArray!13789) (csize!14015 Int)) (Empty!6892) )
))
(declare-fun t!4595 () Conc!6892)

(get-info :version)

(assert (=> b!1870145 (= e!1193208 (not ((_ is Node!6892) t!4595)))))

(declare-fun b!1870146 () Bool)

(declare-fun e!1193209 () Bool)

(declare-fun tp!532057 () Bool)

(declare-fun tp!532058 () Bool)

(declare-fun inv!27462 (Conc!6892) Bool)

(assert (=> b!1870146 (= e!1193209 (and (inv!27462 (left!16691 t!4595)) tp!532057 (inv!27462 (right!17021 t!4595)) tp!532058))))

(declare-fun b!1870147 () Bool)

(declare-fun e!1193207 () Bool)

(declare-fun isEmpty!12935 (Conc!6892) Bool)

(assert (=> b!1870147 (= e!1193207 (not (isEmpty!12935 (left!16691 t!4595))))))

(declare-fun b!1870148 () Bool)

(declare-fun e!1193206 () Bool)

(declare-fun inv!27463 (IArray!13789) Bool)

(assert (=> b!1870148 (= e!1193209 (and (inv!27463 (xs!9776 t!4595)) e!1193206))))

(declare-fun b!1870149 () Bool)

(declare-fun res!837212 () Bool)

(assert (=> b!1870149 (=> (not res!837212) (not e!1193208))))

(assert (=> b!1870149 (= res!837212 (not (isEmpty!12935 t!4595)))))

(declare-fun b!1870150 () Bool)

(declare-fun res!837213 () Bool)

(assert (=> b!1870150 (=> (not res!837213) (not e!1193208))))

(assert (=> b!1870150 (= res!837213 e!1193207)))

(declare-fun res!837209 () Bool)

(assert (=> b!1870150 (=> res!837209 e!1193207)))

(assert (=> b!1870150 (= res!837209 (not ((_ is Node!6892) t!4595)))))

(declare-fun b!1870151 () Bool)

(declare-fun tp!532059 () Bool)

(assert (=> b!1870151 (= e!1193206 tp!532059)))

(declare-fun b!1870152 () Bool)

(declare-fun res!837210 () Bool)

(assert (=> b!1870152 (=> (not res!837210) (not e!1193208))))

(assert (=> b!1870152 (= res!837210 (not ((_ is Leaf!10106) t!4595)))))

(declare-fun res!837211 () Bool)

(assert (=> start!187212 (=> (not res!837211) (not e!1193208))))

(declare-fun isBalanced!2193 (Conc!6892) Bool)

(assert (=> start!187212 (= res!837211 (isBalanced!2193 t!4595))))

(assert (=> start!187212 e!1193208))

(assert (=> start!187212 (and (inv!27462 t!4595) e!1193209)))

(assert (= (and start!187212 res!837211) b!1870149))

(assert (= (and b!1870149 res!837212) b!1870152))

(assert (= (and b!1870152 res!837210) b!1870150))

(assert (= (and b!1870150 (not res!837209)) b!1870147))

(assert (= (and b!1870150 res!837213) b!1870145))

(assert (= (and start!187212 ((_ is Node!6892) t!4595)) b!1870146))

(assert (= b!1870148 b!1870151))

(assert (= (and start!187212 ((_ is Leaf!10106) t!4595)) b!1870148))

(declare-fun m!2296001 () Bool)

(assert (=> b!1870146 m!2296001))

(declare-fun m!2296003 () Bool)

(assert (=> b!1870146 m!2296003))

(declare-fun m!2296005 () Bool)

(assert (=> b!1870148 m!2296005))

(declare-fun m!2296007 () Bool)

(assert (=> b!1870147 m!2296007))

(declare-fun m!2296009 () Bool)

(assert (=> b!1870149 m!2296009))

(declare-fun m!2296011 () Bool)

(assert (=> start!187212 m!2296011))

(declare-fun m!2296013 () Bool)

(assert (=> start!187212 m!2296013))

(check-sat (not b!1870148) (not b!1870147) (not b!1870149) (not b!1870146) (not start!187212) (not b!1870151))
(check-sat)
(get-model)

(declare-fun d!571660 () Bool)

(declare-fun lt!719216 () Bool)

(declare-fun isEmpty!12936 (List!20779) Bool)

(declare-fun list!8489 (Conc!6892) List!20779)

(assert (=> d!571660 (= lt!719216 (isEmpty!12936 (list!8489 (left!16691 t!4595))))))

(declare-fun size!16425 (Conc!6892) Int)

(assert (=> d!571660 (= lt!719216 (= (size!16425 (left!16691 t!4595)) 0))))

(assert (=> d!571660 (= (isEmpty!12935 (left!16691 t!4595)) lt!719216)))

(declare-fun bs!411936 () Bool)

(assert (= bs!411936 d!571660))

(declare-fun m!2296015 () Bool)

(assert (=> bs!411936 m!2296015))

(assert (=> bs!411936 m!2296015))

(declare-fun m!2296017 () Bool)

(assert (=> bs!411936 m!2296017))

(declare-fun m!2296019 () Bool)

(assert (=> bs!411936 m!2296019))

(assert (=> b!1870147 d!571660))

(declare-fun b!1870192 () Bool)

(declare-fun e!1193226 () Bool)

(declare-fun e!1193227 () Bool)

(assert (=> b!1870192 (= e!1193226 e!1193227)))

(declare-fun res!837251 () Bool)

(assert (=> b!1870192 (=> (not res!837251) (not e!1193227))))

(declare-fun height!1079 (Conc!6892) Int)

(assert (=> b!1870192 (= res!837251 (<= (- 1) (- (height!1079 (left!16691 t!4595)) (height!1079 (right!17021 t!4595)))))))

(declare-fun b!1870193 () Bool)

(declare-fun res!837252 () Bool)

(assert (=> b!1870193 (=> (not res!837252) (not e!1193227))))

(assert (=> b!1870193 (= res!837252 (isBalanced!2193 (right!17021 t!4595)))))

(declare-fun b!1870194 () Bool)

(assert (=> b!1870194 (= e!1193227 (not (isEmpty!12935 (right!17021 t!4595))))))

(declare-fun b!1870195 () Bool)

(declare-fun res!837247 () Bool)

(assert (=> b!1870195 (=> (not res!837247) (not e!1193227))))

(assert (=> b!1870195 (= res!837247 (isBalanced!2193 (left!16691 t!4595)))))

(declare-fun d!571662 () Bool)

(declare-fun res!837250 () Bool)

(assert (=> d!571662 (=> res!837250 e!1193226)))

(assert (=> d!571662 (= res!837250 (not ((_ is Node!6892) t!4595)))))

(assert (=> d!571662 (= (isBalanced!2193 t!4595) e!1193226)))

(declare-fun b!1870196 () Bool)

(declare-fun res!837248 () Bool)

(assert (=> b!1870196 (=> (not res!837248) (not e!1193227))))

(assert (=> b!1870196 (= res!837248 (not (isEmpty!12935 (left!16691 t!4595))))))

(declare-fun b!1870197 () Bool)

(declare-fun res!837249 () Bool)

(assert (=> b!1870197 (=> (not res!837249) (not e!1193227))))

(assert (=> b!1870197 (= res!837249 (<= (- (height!1079 (left!16691 t!4595)) (height!1079 (right!17021 t!4595))) 1))))

(assert (= (and d!571662 (not res!837250)) b!1870192))

(assert (= (and b!1870192 res!837251) b!1870197))

(assert (= (and b!1870197 res!837249) b!1870195))

(assert (= (and b!1870195 res!837247) b!1870193))

(assert (= (and b!1870193 res!837252) b!1870196))

(assert (= (and b!1870196 res!837248) b!1870194))

(declare-fun m!2296035 () Bool)

(assert (=> b!1870194 m!2296035))

(declare-fun m!2296037 () Bool)

(assert (=> b!1870192 m!2296037))

(declare-fun m!2296039 () Bool)

(assert (=> b!1870192 m!2296039))

(declare-fun m!2296041 () Bool)

(assert (=> b!1870193 m!2296041))

(assert (=> b!1870196 m!2296007))

(assert (=> b!1870197 m!2296037))

(assert (=> b!1870197 m!2296039))

(declare-fun m!2296043 () Bool)

(assert (=> b!1870195 m!2296043))

(assert (=> start!187212 d!571662))

(declare-fun d!571668 () Bool)

(declare-fun c!304771 () Bool)

(assert (=> d!571668 (= c!304771 ((_ is Node!6892) t!4595))))

(declare-fun e!1193236 () Bool)

(assert (=> d!571668 (= (inv!27462 t!4595) e!1193236)))

(declare-fun b!1870210 () Bool)

(declare-fun inv!27466 (Conc!6892) Bool)

(assert (=> b!1870210 (= e!1193236 (inv!27466 t!4595))))

(declare-fun b!1870211 () Bool)

(declare-fun e!1193237 () Bool)

(assert (=> b!1870211 (= e!1193236 e!1193237)))

(declare-fun res!837257 () Bool)

(assert (=> b!1870211 (= res!837257 (not ((_ is Leaf!10106) t!4595)))))

(assert (=> b!1870211 (=> res!837257 e!1193237)))

(declare-fun b!1870212 () Bool)

(declare-fun inv!27467 (Conc!6892) Bool)

(assert (=> b!1870212 (= e!1193237 (inv!27467 t!4595))))

(assert (= (and d!571668 c!304771) b!1870210))

(assert (= (and d!571668 (not c!304771)) b!1870211))

(assert (= (and b!1870211 (not res!837257)) b!1870212))

(declare-fun m!2296067 () Bool)

(assert (=> b!1870210 m!2296067))

(declare-fun m!2296069 () Bool)

(assert (=> b!1870212 m!2296069))

(assert (=> start!187212 d!571668))

(declare-fun d!571678 () Bool)

(declare-fun c!304772 () Bool)

(assert (=> d!571678 (= c!304772 ((_ is Node!6892) (left!16691 t!4595)))))

(declare-fun e!1193240 () Bool)

(assert (=> d!571678 (= (inv!27462 (left!16691 t!4595)) e!1193240)))

(declare-fun b!1870217 () Bool)

(assert (=> b!1870217 (= e!1193240 (inv!27466 (left!16691 t!4595)))))

(declare-fun b!1870218 () Bool)

(declare-fun e!1193241 () Bool)

(assert (=> b!1870218 (= e!1193240 e!1193241)))

(declare-fun res!837258 () Bool)

(assert (=> b!1870218 (= res!837258 (not ((_ is Leaf!10106) (left!16691 t!4595))))))

(assert (=> b!1870218 (=> res!837258 e!1193241)))

(declare-fun b!1870219 () Bool)

(assert (=> b!1870219 (= e!1193241 (inv!27467 (left!16691 t!4595)))))

(assert (= (and d!571678 c!304772) b!1870217))

(assert (= (and d!571678 (not c!304772)) b!1870218))

(assert (= (and b!1870218 (not res!837258)) b!1870219))

(declare-fun m!2296071 () Bool)

(assert (=> b!1870217 m!2296071))

(declare-fun m!2296073 () Bool)

(assert (=> b!1870219 m!2296073))

(assert (=> b!1870146 d!571678))

(declare-fun d!571680 () Bool)

(declare-fun c!304773 () Bool)

(assert (=> d!571680 (= c!304773 ((_ is Node!6892) (right!17021 t!4595)))))

(declare-fun e!1193243 () Bool)

(assert (=> d!571680 (= (inv!27462 (right!17021 t!4595)) e!1193243)))

(declare-fun b!1870221 () Bool)

(assert (=> b!1870221 (= e!1193243 (inv!27466 (right!17021 t!4595)))))

(declare-fun b!1870222 () Bool)

(declare-fun e!1193244 () Bool)

(assert (=> b!1870222 (= e!1193243 e!1193244)))

(declare-fun res!837259 () Bool)

(assert (=> b!1870222 (= res!837259 (not ((_ is Leaf!10106) (right!17021 t!4595))))))

(assert (=> b!1870222 (=> res!837259 e!1193244)))

(declare-fun b!1870223 () Bool)

(assert (=> b!1870223 (= e!1193244 (inv!27467 (right!17021 t!4595)))))

(assert (= (and d!571680 c!304773) b!1870221))

(assert (= (and d!571680 (not c!304773)) b!1870222))

(assert (= (and b!1870222 (not res!837259)) b!1870223))

(declare-fun m!2296075 () Bool)

(assert (=> b!1870221 m!2296075))

(declare-fun m!2296077 () Bool)

(assert (=> b!1870223 m!2296077))

(assert (=> b!1870146 d!571680))

(declare-fun d!571682 () Bool)

(declare-fun size!16428 (List!20779) Int)

(assert (=> d!571682 (= (inv!27463 (xs!9776 t!4595)) (<= (size!16428 (innerList!6952 (xs!9776 t!4595))) 2147483647))))

(declare-fun bs!411940 () Bool)

(assert (= bs!411940 d!571682))

(declare-fun m!2296079 () Bool)

(assert (=> bs!411940 m!2296079))

(assert (=> b!1870148 d!571682))

(declare-fun d!571684 () Bool)

(declare-fun lt!719221 () Bool)

(assert (=> d!571684 (= lt!719221 (isEmpty!12936 (list!8489 t!4595)))))

(assert (=> d!571684 (= lt!719221 (= (size!16425 t!4595) 0))))

(assert (=> d!571684 (= (isEmpty!12935 t!4595) lt!719221)))

(declare-fun bs!411941 () Bool)

(assert (= bs!411941 d!571684))

(declare-fun m!2296081 () Bool)

(assert (=> bs!411941 m!2296081))

(assert (=> bs!411941 m!2296081))

(declare-fun m!2296083 () Bool)

(assert (=> bs!411941 m!2296083))

(declare-fun m!2296085 () Bool)

(assert (=> bs!411941 m!2296085))

(assert (=> b!1870149 d!571684))

(declare-fun b!1870242 () Bool)

(declare-fun e!1193255 () Bool)

(declare-fun tp_is_empty!8703 () Bool)

(declare-fun tp!532077 () Bool)

(assert (=> b!1870242 (= e!1193255 (and tp_is_empty!8703 tp!532077))))

(assert (=> b!1870151 (= tp!532059 e!1193255)))

(assert (= (and b!1870151 ((_ is Cons!20697) (innerList!6952 (xs!9776 t!4595)))) b!1870242))

(declare-fun tp!532086 () Bool)

(declare-fun e!1193260 () Bool)

(declare-fun tp!532085 () Bool)

(declare-fun b!1870251 () Bool)

(assert (=> b!1870251 (= e!1193260 (and (inv!27462 (left!16691 (left!16691 t!4595))) tp!532086 (inv!27462 (right!17021 (left!16691 t!4595))) tp!532085))))

(declare-fun b!1870253 () Bool)

(declare-fun e!1193261 () Bool)

(declare-fun tp!532084 () Bool)

(assert (=> b!1870253 (= e!1193261 tp!532084)))

(declare-fun b!1870252 () Bool)

(assert (=> b!1870252 (= e!1193260 (and (inv!27463 (xs!9776 (left!16691 t!4595))) e!1193261))))

(assert (=> b!1870146 (= tp!532057 (and (inv!27462 (left!16691 t!4595)) e!1193260))))

(assert (= (and b!1870146 ((_ is Node!6892) (left!16691 t!4595))) b!1870251))

(assert (= b!1870252 b!1870253))

(assert (= (and b!1870146 ((_ is Leaf!10106) (left!16691 t!4595))) b!1870252))

(declare-fun m!2296099 () Bool)

(assert (=> b!1870251 m!2296099))

(declare-fun m!2296101 () Bool)

(assert (=> b!1870251 m!2296101))

(declare-fun m!2296103 () Bool)

(assert (=> b!1870252 m!2296103))

(assert (=> b!1870146 m!2296001))

(declare-fun tp!532088 () Bool)

(declare-fun tp!532089 () Bool)

(declare-fun e!1193262 () Bool)

(declare-fun b!1870254 () Bool)

(assert (=> b!1870254 (= e!1193262 (and (inv!27462 (left!16691 (right!17021 t!4595))) tp!532089 (inv!27462 (right!17021 (right!17021 t!4595))) tp!532088))))

(declare-fun b!1870256 () Bool)

(declare-fun e!1193263 () Bool)

(declare-fun tp!532087 () Bool)

(assert (=> b!1870256 (= e!1193263 tp!532087)))

(declare-fun b!1870255 () Bool)

(assert (=> b!1870255 (= e!1193262 (and (inv!27463 (xs!9776 (right!17021 t!4595))) e!1193263))))

(assert (=> b!1870146 (= tp!532058 (and (inv!27462 (right!17021 t!4595)) e!1193262))))

(assert (= (and b!1870146 ((_ is Node!6892) (right!17021 t!4595))) b!1870254))

(assert (= b!1870255 b!1870256))

(assert (= (and b!1870146 ((_ is Leaf!10106) (right!17021 t!4595))) b!1870255))

(declare-fun m!2296105 () Bool)

(assert (=> b!1870254 m!2296105))

(declare-fun m!2296107 () Bool)

(assert (=> b!1870254 m!2296107))

(declare-fun m!2296109 () Bool)

(assert (=> b!1870255 m!2296109))

(assert (=> b!1870146 m!2296003))

(check-sat (not b!1870217) (not b!1870256) (not d!571660) (not b!1870219) (not b!1870194) (not b!1870192) (not d!571684) (not b!1870195) (not b!1870212) (not b!1870210) (not b!1870251) tp_is_empty!8703 (not d!571682) (not b!1870255) (not b!1870223) (not b!1870252) (not b!1870254) (not b!1870197) (not b!1870242) (not b!1870196) (not b!1870193) (not b!1870221) (not b!1870146) (not b!1870253))
(check-sat)
(get-model)

(declare-fun d!571686 () Bool)

(assert (=> d!571686 (= (isEmpty!12936 (list!8489 (left!16691 t!4595))) ((_ is Nil!20697) (list!8489 (left!16691 t!4595))))))

(assert (=> d!571660 d!571686))

(declare-fun d!571688 () Bool)

(declare-fun c!304778 () Bool)

(assert (=> d!571688 (= c!304778 ((_ is Empty!6892) (left!16691 t!4595)))))

(declare-fun e!1193271 () List!20779)

(assert (=> d!571688 (= (list!8489 (left!16691 t!4595)) e!1193271)))

(declare-fun b!1870271 () Bool)

(assert (=> b!1870271 (= e!1193271 Nil!20697)))

(declare-fun b!1870273 () Bool)

(declare-fun e!1193272 () List!20779)

(declare-fun list!8491 (IArray!13789) List!20779)

(assert (=> b!1870273 (= e!1193272 (list!8491 (xs!9776 (left!16691 t!4595))))))

(declare-fun b!1870274 () Bool)

(declare-fun ++!5621 (List!20779 List!20779) List!20779)

(assert (=> b!1870274 (= e!1193272 (++!5621 (list!8489 (left!16691 (left!16691 t!4595))) (list!8489 (right!17021 (left!16691 t!4595)))))))

(declare-fun b!1870272 () Bool)

(assert (=> b!1870272 (= e!1193271 e!1193272)))

(declare-fun c!304779 () Bool)

(assert (=> b!1870272 (= c!304779 ((_ is Leaf!10106) (left!16691 t!4595)))))

(assert (= (and d!571688 c!304778) b!1870271))

(assert (= (and d!571688 (not c!304778)) b!1870272))

(assert (= (and b!1870272 c!304779) b!1870273))

(assert (= (and b!1870272 (not c!304779)) b!1870274))

(declare-fun m!2296115 () Bool)

(assert (=> b!1870273 m!2296115))

(declare-fun m!2296117 () Bool)

(assert (=> b!1870274 m!2296117))

(declare-fun m!2296119 () Bool)

(assert (=> b!1870274 m!2296119))

(assert (=> b!1870274 m!2296117))

(assert (=> b!1870274 m!2296119))

(declare-fun m!2296121 () Bool)

(assert (=> b!1870274 m!2296121))

(assert (=> d!571660 d!571688))

(declare-fun d!571694 () Bool)

(declare-fun lt!719224 () Int)

(assert (=> d!571694 (= lt!719224 (size!16428 (list!8489 (left!16691 t!4595))))))

(assert (=> d!571694 (= lt!719224 (ite ((_ is Empty!6892) (left!16691 t!4595)) 0 (ite ((_ is Leaf!10106) (left!16691 t!4595)) (csize!14015 (left!16691 t!4595)) (csize!14014 (left!16691 t!4595)))))))

(assert (=> d!571694 (= (size!16425 (left!16691 t!4595)) lt!719224)))

(declare-fun bs!411942 () Bool)

(assert (= bs!411942 d!571694))

(assert (=> bs!411942 m!2296015))

(assert (=> bs!411942 m!2296015))

(declare-fun m!2296131 () Bool)

(assert (=> bs!411942 m!2296131))

(assert (=> d!571660 d!571694))

(declare-fun d!571700 () Bool)

(declare-fun c!304782 () Bool)

(assert (=> d!571700 (= c!304782 ((_ is Node!6892) (left!16691 (right!17021 t!4595))))))

(declare-fun e!1193277 () Bool)

(assert (=> d!571700 (= (inv!27462 (left!16691 (right!17021 t!4595))) e!1193277)))

(declare-fun b!1870281 () Bool)

(assert (=> b!1870281 (= e!1193277 (inv!27466 (left!16691 (right!17021 t!4595))))))

(declare-fun b!1870282 () Bool)

(declare-fun e!1193278 () Bool)

(assert (=> b!1870282 (= e!1193277 e!1193278)))

(declare-fun res!837268 () Bool)

(assert (=> b!1870282 (= res!837268 (not ((_ is Leaf!10106) (left!16691 (right!17021 t!4595)))))))

(assert (=> b!1870282 (=> res!837268 e!1193278)))

(declare-fun b!1870283 () Bool)

(assert (=> b!1870283 (= e!1193278 (inv!27467 (left!16691 (right!17021 t!4595))))))

(assert (= (and d!571700 c!304782) b!1870281))

(assert (= (and d!571700 (not c!304782)) b!1870282))

(assert (= (and b!1870282 (not res!837268)) b!1870283))

(declare-fun m!2296133 () Bool)

(assert (=> b!1870281 m!2296133))

(declare-fun m!2296135 () Bool)

(assert (=> b!1870283 m!2296135))

(assert (=> b!1870254 d!571700))

(declare-fun d!571702 () Bool)

(declare-fun c!304783 () Bool)

(assert (=> d!571702 (= c!304783 ((_ is Node!6892) (right!17021 (right!17021 t!4595))))))

(declare-fun e!1193279 () Bool)

(assert (=> d!571702 (= (inv!27462 (right!17021 (right!17021 t!4595))) e!1193279)))

(declare-fun b!1870284 () Bool)

(assert (=> b!1870284 (= e!1193279 (inv!27466 (right!17021 (right!17021 t!4595))))))

(declare-fun b!1870285 () Bool)

(declare-fun e!1193280 () Bool)

(assert (=> b!1870285 (= e!1193279 e!1193280)))

(declare-fun res!837269 () Bool)

(assert (=> b!1870285 (= res!837269 (not ((_ is Leaf!10106) (right!17021 (right!17021 t!4595)))))))

(assert (=> b!1870285 (=> res!837269 e!1193280)))

(declare-fun b!1870286 () Bool)

(assert (=> b!1870286 (= e!1193280 (inv!27467 (right!17021 (right!17021 t!4595))))))

(assert (= (and d!571702 c!304783) b!1870284))

(assert (= (and d!571702 (not c!304783)) b!1870285))

(assert (= (and b!1870285 (not res!837269)) b!1870286))

(declare-fun m!2296137 () Bool)

(assert (=> b!1870284 m!2296137))

(declare-fun m!2296139 () Bool)

(assert (=> b!1870286 m!2296139))

(assert (=> b!1870254 d!571702))

(declare-fun d!571704 () Bool)

(declare-fun res!837283 () Bool)

(declare-fun e!1193286 () Bool)

(assert (=> d!571704 (=> (not res!837283) (not e!1193286))))

(assert (=> d!571704 (= res!837283 (<= (size!16428 (list!8491 (xs!9776 (left!16691 t!4595)))) 512))))

(assert (=> d!571704 (= (inv!27467 (left!16691 t!4595)) e!1193286)))

(declare-fun b!1870300 () Bool)

(declare-fun res!837284 () Bool)

(assert (=> b!1870300 (=> (not res!837284) (not e!1193286))))

(assert (=> b!1870300 (= res!837284 (= (csize!14015 (left!16691 t!4595)) (size!16428 (list!8491 (xs!9776 (left!16691 t!4595))))))))

(declare-fun b!1870301 () Bool)

(assert (=> b!1870301 (= e!1193286 (and (> (csize!14015 (left!16691 t!4595)) 0) (<= (csize!14015 (left!16691 t!4595)) 512)))))

(assert (= (and d!571704 res!837283) b!1870300))

(assert (= (and b!1870300 res!837284) b!1870301))

(assert (=> d!571704 m!2296115))

(assert (=> d!571704 m!2296115))

(declare-fun m!2296145 () Bool)

(assert (=> d!571704 m!2296145))

(assert (=> b!1870300 m!2296115))

(assert (=> b!1870300 m!2296115))

(assert (=> b!1870300 m!2296145))

(assert (=> b!1870219 d!571704))

(declare-fun d!571708 () Bool)

(declare-fun res!837297 () Bool)

(declare-fun e!1193295 () Bool)

(assert (=> d!571708 (=> (not res!837297) (not e!1193295))))

(assert (=> d!571708 (= res!837297 (= (csize!14014 (left!16691 t!4595)) (+ (size!16425 (left!16691 (left!16691 t!4595))) (size!16425 (right!17021 (left!16691 t!4595))))))))

(assert (=> d!571708 (= (inv!27466 (left!16691 t!4595)) e!1193295)))

(declare-fun b!1870322 () Bool)

(declare-fun res!837298 () Bool)

(assert (=> b!1870322 (=> (not res!837298) (not e!1193295))))

(assert (=> b!1870322 (= res!837298 (and (not (= (left!16691 (left!16691 t!4595)) Empty!6892)) (not (= (right!17021 (left!16691 t!4595)) Empty!6892))))))

(declare-fun b!1870323 () Bool)

(declare-fun res!837299 () Bool)

(assert (=> b!1870323 (=> (not res!837299) (not e!1193295))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1870323 (= res!837299 (= (cheight!7103 (left!16691 t!4595)) (+ (max!0 (height!1079 (left!16691 (left!16691 t!4595))) (height!1079 (right!17021 (left!16691 t!4595)))) 1)))))

(declare-fun b!1870324 () Bool)

(assert (=> b!1870324 (= e!1193295 (<= 0 (cheight!7103 (left!16691 t!4595))))))

(assert (= (and d!571708 res!837297) b!1870322))

(assert (= (and b!1870322 res!837298) b!1870323))

(assert (= (and b!1870323 res!837299) b!1870324))

(declare-fun m!2296159 () Bool)

(assert (=> d!571708 m!2296159))

(declare-fun m!2296161 () Bool)

(assert (=> d!571708 m!2296161))

(declare-fun m!2296163 () Bool)

(assert (=> b!1870323 m!2296163))

(declare-fun m!2296165 () Bool)

(assert (=> b!1870323 m!2296165))

(assert (=> b!1870323 m!2296163))

(assert (=> b!1870323 m!2296165))

(declare-fun m!2296167 () Bool)

(assert (=> b!1870323 m!2296167))

(assert (=> b!1870217 d!571708))

(declare-fun d!571714 () Bool)

(assert (=> d!571714 (= (inv!27463 (xs!9776 (right!17021 t!4595))) (<= (size!16428 (innerList!6952 (xs!9776 (right!17021 t!4595)))) 2147483647))))

(declare-fun bs!411943 () Bool)

(assert (= bs!411943 d!571714))

(declare-fun m!2296169 () Bool)

(assert (=> bs!411943 m!2296169))

(assert (=> b!1870255 d!571714))

(declare-fun d!571716 () Bool)

(assert (=> d!571716 (= (isEmpty!12936 (list!8489 t!4595)) ((_ is Nil!20697) (list!8489 t!4595)))))

(assert (=> d!571684 d!571716))

(declare-fun d!571718 () Bool)

(declare-fun c!304788 () Bool)

(assert (=> d!571718 (= c!304788 ((_ is Empty!6892) t!4595))))

(declare-fun e!1193296 () List!20779)

(assert (=> d!571718 (= (list!8489 t!4595) e!1193296)))

(declare-fun b!1870325 () Bool)

(assert (=> b!1870325 (= e!1193296 Nil!20697)))

(declare-fun b!1870327 () Bool)

(declare-fun e!1193297 () List!20779)

(assert (=> b!1870327 (= e!1193297 (list!8491 (xs!9776 t!4595)))))

(declare-fun b!1870328 () Bool)

(assert (=> b!1870328 (= e!1193297 (++!5621 (list!8489 (left!16691 t!4595)) (list!8489 (right!17021 t!4595))))))

(declare-fun b!1870326 () Bool)

(assert (=> b!1870326 (= e!1193296 e!1193297)))

(declare-fun c!304789 () Bool)

(assert (=> b!1870326 (= c!304789 ((_ is Leaf!10106) t!4595))))

(assert (= (and d!571718 c!304788) b!1870325))

(assert (= (and d!571718 (not c!304788)) b!1870326))

(assert (= (and b!1870326 c!304789) b!1870327))

(assert (= (and b!1870326 (not c!304789)) b!1870328))

(declare-fun m!2296171 () Bool)

(assert (=> b!1870327 m!2296171))

(assert (=> b!1870328 m!2296015))

(declare-fun m!2296173 () Bool)

(assert (=> b!1870328 m!2296173))

(assert (=> b!1870328 m!2296015))

(assert (=> b!1870328 m!2296173))

(declare-fun m!2296175 () Bool)

(assert (=> b!1870328 m!2296175))

(assert (=> d!571684 d!571718))

(declare-fun d!571720 () Bool)

(declare-fun lt!719225 () Int)

(assert (=> d!571720 (= lt!719225 (size!16428 (list!8489 t!4595)))))

(assert (=> d!571720 (= lt!719225 (ite ((_ is Empty!6892) t!4595) 0 (ite ((_ is Leaf!10106) t!4595) (csize!14015 t!4595) (csize!14014 t!4595))))))

(assert (=> d!571720 (= (size!16425 t!4595) lt!719225)))

(declare-fun bs!411944 () Bool)

(assert (= bs!411944 d!571720))

(assert (=> bs!411944 m!2296081))

(assert (=> bs!411944 m!2296081))

(declare-fun m!2296181 () Bool)

(assert (=> bs!411944 m!2296181))

(assert (=> d!571684 d!571720))

(declare-fun d!571724 () Bool)

(assert (=> d!571724 (= (height!1079 (left!16691 t!4595)) (ite ((_ is Empty!6892) (left!16691 t!4595)) 0 (ite ((_ is Leaf!10106) (left!16691 t!4595)) 1 (cheight!7103 (left!16691 t!4595)))))))

(assert (=> b!1870197 d!571724))

(declare-fun d!571726 () Bool)

(assert (=> d!571726 (= (height!1079 (right!17021 t!4595)) (ite ((_ is Empty!6892) (right!17021 t!4595)) 0 (ite ((_ is Leaf!10106) (right!17021 t!4595)) 1 (cheight!7103 (right!17021 t!4595)))))))

(assert (=> b!1870197 d!571726))

(declare-fun d!571728 () Bool)

(assert (=> d!571728 (= (inv!27463 (xs!9776 (left!16691 t!4595))) (<= (size!16428 (innerList!6952 (xs!9776 (left!16691 t!4595)))) 2147483647))))

(declare-fun bs!411945 () Bool)

(assert (= bs!411945 d!571728))

(declare-fun m!2296183 () Bool)

(assert (=> bs!411945 m!2296183))

(assert (=> b!1870252 d!571728))

(declare-fun b!1870333 () Bool)

(declare-fun e!1193300 () Bool)

(declare-fun e!1193301 () Bool)

(assert (=> b!1870333 (= e!1193300 e!1193301)))

(declare-fun res!837304 () Bool)

(assert (=> b!1870333 (=> (not res!837304) (not e!1193301))))

(assert (=> b!1870333 (= res!837304 (<= (- 1) (- (height!1079 (left!16691 (left!16691 t!4595))) (height!1079 (right!17021 (left!16691 t!4595))))))))

(declare-fun b!1870334 () Bool)

(declare-fun res!837305 () Bool)

(assert (=> b!1870334 (=> (not res!837305) (not e!1193301))))

(assert (=> b!1870334 (= res!837305 (isBalanced!2193 (right!17021 (left!16691 t!4595))))))

(declare-fun b!1870335 () Bool)

(assert (=> b!1870335 (= e!1193301 (not (isEmpty!12935 (right!17021 (left!16691 t!4595)))))))

(declare-fun b!1870336 () Bool)

(declare-fun res!837300 () Bool)

(assert (=> b!1870336 (=> (not res!837300) (not e!1193301))))

(assert (=> b!1870336 (= res!837300 (isBalanced!2193 (left!16691 (left!16691 t!4595))))))

(declare-fun d!571730 () Bool)

(declare-fun res!837303 () Bool)

(assert (=> d!571730 (=> res!837303 e!1193300)))

(assert (=> d!571730 (= res!837303 (not ((_ is Node!6892) (left!16691 t!4595))))))

(assert (=> d!571730 (= (isBalanced!2193 (left!16691 t!4595)) e!1193300)))

(declare-fun b!1870337 () Bool)

(declare-fun res!837301 () Bool)

(assert (=> b!1870337 (=> (not res!837301) (not e!1193301))))

(assert (=> b!1870337 (= res!837301 (not (isEmpty!12935 (left!16691 (left!16691 t!4595)))))))

(declare-fun b!1870338 () Bool)

(declare-fun res!837302 () Bool)

(assert (=> b!1870338 (=> (not res!837302) (not e!1193301))))

(assert (=> b!1870338 (= res!837302 (<= (- (height!1079 (left!16691 (left!16691 t!4595))) (height!1079 (right!17021 (left!16691 t!4595)))) 1))))

(assert (= (and d!571730 (not res!837303)) b!1870333))

(assert (= (and b!1870333 res!837304) b!1870338))

(assert (= (and b!1870338 res!837302) b!1870336))

(assert (= (and b!1870336 res!837300) b!1870334))

(assert (= (and b!1870334 res!837305) b!1870337))

(assert (= (and b!1870337 res!837301) b!1870335))

(declare-fun m!2296185 () Bool)

(assert (=> b!1870335 m!2296185))

(assert (=> b!1870333 m!2296163))

(assert (=> b!1870333 m!2296165))

(declare-fun m!2296187 () Bool)

(assert (=> b!1870334 m!2296187))

(declare-fun m!2296189 () Bool)

(assert (=> b!1870337 m!2296189))

(assert (=> b!1870338 m!2296163))

(assert (=> b!1870338 m!2296165))

(declare-fun m!2296191 () Bool)

(assert (=> b!1870336 m!2296191))

(assert (=> b!1870195 d!571730))

(assert (=> b!1870196 d!571660))

(declare-fun d!571732 () Bool)

(declare-fun lt!719228 () Bool)

(assert (=> d!571732 (= lt!719228 (isEmpty!12936 (list!8489 (right!17021 t!4595))))))

(assert (=> d!571732 (= lt!719228 (= (size!16425 (right!17021 t!4595)) 0))))

(assert (=> d!571732 (= (isEmpty!12935 (right!17021 t!4595)) lt!719228)))

(declare-fun bs!411946 () Bool)

(assert (= bs!411946 d!571732))

(assert (=> bs!411946 m!2296173))

(assert (=> bs!411946 m!2296173))

(declare-fun m!2296193 () Bool)

(assert (=> bs!411946 m!2296193))

(declare-fun m!2296195 () Bool)

(assert (=> bs!411946 m!2296195))

(assert (=> b!1870194 d!571732))

(declare-fun d!571734 () Bool)

(declare-fun res!837306 () Bool)

(declare-fun e!1193302 () Bool)

(assert (=> d!571734 (=> (not res!837306) (not e!1193302))))

(assert (=> d!571734 (= res!837306 (<= (size!16428 (list!8491 (xs!9776 t!4595))) 512))))

(assert (=> d!571734 (= (inv!27467 t!4595) e!1193302)))

(declare-fun b!1870339 () Bool)

(declare-fun res!837307 () Bool)

(assert (=> b!1870339 (=> (not res!837307) (not e!1193302))))

(assert (=> b!1870339 (= res!837307 (= (csize!14015 t!4595) (size!16428 (list!8491 (xs!9776 t!4595)))))))

(declare-fun b!1870340 () Bool)

(assert (=> b!1870340 (= e!1193302 (and (> (csize!14015 t!4595) 0) (<= (csize!14015 t!4595) 512)))))

(assert (= (and d!571734 res!837306) b!1870339))

(assert (= (and b!1870339 res!837307) b!1870340))

(assert (=> d!571734 m!2296171))

(assert (=> d!571734 m!2296171))

(declare-fun m!2296199 () Bool)

(assert (=> d!571734 m!2296199))

(assert (=> b!1870339 m!2296171))

(assert (=> b!1870339 m!2296171))

(assert (=> b!1870339 m!2296199))

(assert (=> b!1870212 d!571734))

(declare-fun d!571738 () Bool)

(declare-fun lt!719233 () Int)

(assert (=> d!571738 (>= lt!719233 0)))

(declare-fun e!1193307 () Int)

(assert (=> d!571738 (= lt!719233 e!1193307)))

(declare-fun c!304794 () Bool)

(assert (=> d!571738 (= c!304794 ((_ is Nil!20697) (innerList!6952 (xs!9776 t!4595))))))

(assert (=> d!571738 (= (size!16428 (innerList!6952 (xs!9776 t!4595))) lt!719233)))

(declare-fun b!1870350 () Bool)

(assert (=> b!1870350 (= e!1193307 0)))

(declare-fun b!1870351 () Bool)

(assert (=> b!1870351 (= e!1193307 (+ 1 (size!16428 (t!172976 (innerList!6952 (xs!9776 t!4595))))))))

(assert (= (and d!571738 c!304794) b!1870350))

(assert (= (and d!571738 (not c!304794)) b!1870351))

(declare-fun m!2296215 () Bool)

(assert (=> b!1870351 m!2296215))

(assert (=> d!571682 d!571738))

(declare-fun d!571752 () Bool)

(declare-fun res!837319 () Bool)

(declare-fun e!1193310 () Bool)

(assert (=> d!571752 (=> (not res!837319) (not e!1193310))))

(assert (=> d!571752 (= res!837319 (<= (size!16428 (list!8491 (xs!9776 (right!17021 t!4595)))) 512))))

(assert (=> d!571752 (= (inv!27467 (right!17021 t!4595)) e!1193310)))

(declare-fun b!1870358 () Bool)

(declare-fun res!837320 () Bool)

(assert (=> b!1870358 (=> (not res!837320) (not e!1193310))))

(assert (=> b!1870358 (= res!837320 (= (csize!14015 (right!17021 t!4595)) (size!16428 (list!8491 (xs!9776 (right!17021 t!4595))))))))

(declare-fun b!1870359 () Bool)

(assert (=> b!1870359 (= e!1193310 (and (> (csize!14015 (right!17021 t!4595)) 0) (<= (csize!14015 (right!17021 t!4595)) 512)))))

(assert (= (and d!571752 res!837319) b!1870358))

(assert (= (and b!1870358 res!837320) b!1870359))

(declare-fun m!2296217 () Bool)

(assert (=> d!571752 m!2296217))

(assert (=> d!571752 m!2296217))

(declare-fun m!2296219 () Bool)

(assert (=> d!571752 m!2296219))

(assert (=> b!1870358 m!2296217))

(assert (=> b!1870358 m!2296217))

(assert (=> b!1870358 m!2296219))

(assert (=> b!1870223 d!571752))

(declare-fun d!571754 () Bool)

(declare-fun res!837321 () Bool)

(declare-fun e!1193311 () Bool)

(assert (=> d!571754 (=> (not res!837321) (not e!1193311))))

(assert (=> d!571754 (= res!837321 (= (csize!14014 (right!17021 t!4595)) (+ (size!16425 (left!16691 (right!17021 t!4595))) (size!16425 (right!17021 (right!17021 t!4595))))))))

(assert (=> d!571754 (= (inv!27466 (right!17021 t!4595)) e!1193311)))

(declare-fun b!1870360 () Bool)

(declare-fun res!837322 () Bool)

(assert (=> b!1870360 (=> (not res!837322) (not e!1193311))))

(assert (=> b!1870360 (= res!837322 (and (not (= (left!16691 (right!17021 t!4595)) Empty!6892)) (not (= (right!17021 (right!17021 t!4595)) Empty!6892))))))

(declare-fun b!1870361 () Bool)

(declare-fun res!837323 () Bool)

(assert (=> b!1870361 (=> (not res!837323) (not e!1193311))))

(assert (=> b!1870361 (= res!837323 (= (cheight!7103 (right!17021 t!4595)) (+ (max!0 (height!1079 (left!16691 (right!17021 t!4595))) (height!1079 (right!17021 (right!17021 t!4595)))) 1)))))

(declare-fun b!1870362 () Bool)

(assert (=> b!1870362 (= e!1193311 (<= 0 (cheight!7103 (right!17021 t!4595))))))

(assert (= (and d!571754 res!837321) b!1870360))

(assert (= (and b!1870360 res!837322) b!1870361))

(assert (= (and b!1870361 res!837323) b!1870362))

(declare-fun m!2296233 () Bool)

(assert (=> d!571754 m!2296233))

(declare-fun m!2296237 () Bool)

(assert (=> d!571754 m!2296237))

(declare-fun m!2296241 () Bool)

(assert (=> b!1870361 m!2296241))

(declare-fun m!2296243 () Bool)

(assert (=> b!1870361 m!2296243))

(assert (=> b!1870361 m!2296241))

(assert (=> b!1870361 m!2296243))

(declare-fun m!2296245 () Bool)

(assert (=> b!1870361 m!2296245))

(assert (=> b!1870221 d!571754))

(assert (=> b!1870146 d!571678))

(assert (=> b!1870146 d!571680))

(declare-fun b!1870369 () Bool)

(declare-fun e!1193316 () Bool)

(declare-fun e!1193317 () Bool)

(assert (=> b!1870369 (= e!1193316 e!1193317)))

(declare-fun res!837330 () Bool)

(assert (=> b!1870369 (=> (not res!837330) (not e!1193317))))

(assert (=> b!1870369 (= res!837330 (<= (- 1) (- (height!1079 (left!16691 (right!17021 t!4595))) (height!1079 (right!17021 (right!17021 t!4595))))))))

(declare-fun b!1870370 () Bool)

(declare-fun res!837331 () Bool)

(assert (=> b!1870370 (=> (not res!837331) (not e!1193317))))

(assert (=> b!1870370 (= res!837331 (isBalanced!2193 (right!17021 (right!17021 t!4595))))))

(declare-fun b!1870371 () Bool)

(assert (=> b!1870371 (= e!1193317 (not (isEmpty!12935 (right!17021 (right!17021 t!4595)))))))

(declare-fun b!1870372 () Bool)

(declare-fun res!837326 () Bool)

(assert (=> b!1870372 (=> (not res!837326) (not e!1193317))))

(assert (=> b!1870372 (= res!837326 (isBalanced!2193 (left!16691 (right!17021 t!4595))))))

(declare-fun d!571760 () Bool)

(declare-fun res!837329 () Bool)

(assert (=> d!571760 (=> res!837329 e!1193316)))

(assert (=> d!571760 (= res!837329 (not ((_ is Node!6892) (right!17021 t!4595))))))

(assert (=> d!571760 (= (isBalanced!2193 (right!17021 t!4595)) e!1193316)))

(declare-fun b!1870373 () Bool)

(declare-fun res!837327 () Bool)

(assert (=> b!1870373 (=> (not res!837327) (not e!1193317))))

(assert (=> b!1870373 (= res!837327 (not (isEmpty!12935 (left!16691 (right!17021 t!4595)))))))

(declare-fun b!1870374 () Bool)

(declare-fun res!837328 () Bool)

(assert (=> b!1870374 (=> (not res!837328) (not e!1193317))))

(assert (=> b!1870374 (= res!837328 (<= (- (height!1079 (left!16691 (right!17021 t!4595))) (height!1079 (right!17021 (right!17021 t!4595)))) 1))))

(assert (= (and d!571760 (not res!837329)) b!1870369))

(assert (= (and b!1870369 res!837330) b!1870374))

(assert (= (and b!1870374 res!837328) b!1870372))

(assert (= (and b!1870372 res!837326) b!1870370))

(assert (= (and b!1870370 res!837331) b!1870373))

(assert (= (and b!1870373 res!837327) b!1870371))

(declare-fun m!2296255 () Bool)

(assert (=> b!1870371 m!2296255))

(assert (=> b!1870369 m!2296241))

(assert (=> b!1870369 m!2296243))

(declare-fun m!2296257 () Bool)

(assert (=> b!1870370 m!2296257))

(declare-fun m!2296259 () Bool)

(assert (=> b!1870373 m!2296259))

(assert (=> b!1870374 m!2296241))

(assert (=> b!1870374 m!2296243))

(declare-fun m!2296261 () Bool)

(assert (=> b!1870372 m!2296261))

(assert (=> b!1870193 d!571760))

(declare-fun d!571766 () Bool)

(declare-fun c!304797 () Bool)

(assert (=> d!571766 (= c!304797 ((_ is Node!6892) (left!16691 (left!16691 t!4595))))))

(declare-fun e!1193319 () Bool)

(assert (=> d!571766 (= (inv!27462 (left!16691 (left!16691 t!4595))) e!1193319)))

(declare-fun b!1870377 () Bool)

(assert (=> b!1870377 (= e!1193319 (inv!27466 (left!16691 (left!16691 t!4595))))))

(declare-fun b!1870378 () Bool)

(declare-fun e!1193320 () Bool)

(assert (=> b!1870378 (= e!1193319 e!1193320)))

(declare-fun res!837334 () Bool)

(assert (=> b!1870378 (= res!837334 (not ((_ is Leaf!10106) (left!16691 (left!16691 t!4595)))))))

(assert (=> b!1870378 (=> res!837334 e!1193320)))

(declare-fun b!1870379 () Bool)

(assert (=> b!1870379 (= e!1193320 (inv!27467 (left!16691 (left!16691 t!4595))))))

(assert (= (and d!571766 c!304797) b!1870377))

(assert (= (and d!571766 (not c!304797)) b!1870378))

(assert (= (and b!1870378 (not res!837334)) b!1870379))

(declare-fun m!2296263 () Bool)

(assert (=> b!1870377 m!2296263))

(declare-fun m!2296265 () Bool)

(assert (=> b!1870379 m!2296265))

(assert (=> b!1870251 d!571766))

(declare-fun d!571768 () Bool)

(declare-fun c!304798 () Bool)

(assert (=> d!571768 (= c!304798 ((_ is Node!6892) (right!17021 (left!16691 t!4595))))))

(declare-fun e!1193321 () Bool)

(assert (=> d!571768 (= (inv!27462 (right!17021 (left!16691 t!4595))) e!1193321)))

(declare-fun b!1870380 () Bool)

(assert (=> b!1870380 (= e!1193321 (inv!27466 (right!17021 (left!16691 t!4595))))))

(declare-fun b!1870381 () Bool)

(declare-fun e!1193322 () Bool)

(assert (=> b!1870381 (= e!1193321 e!1193322)))

(declare-fun res!837335 () Bool)

(assert (=> b!1870381 (= res!837335 (not ((_ is Leaf!10106) (right!17021 (left!16691 t!4595)))))))

(assert (=> b!1870381 (=> res!837335 e!1193322)))

(declare-fun b!1870382 () Bool)

(assert (=> b!1870382 (= e!1193322 (inv!27467 (right!17021 (left!16691 t!4595))))))

(assert (= (and d!571768 c!304798) b!1870380))

(assert (= (and d!571768 (not c!304798)) b!1870381))

(assert (= (and b!1870381 (not res!837335)) b!1870382))

(declare-fun m!2296267 () Bool)

(assert (=> b!1870380 m!2296267))

(declare-fun m!2296269 () Bool)

(assert (=> b!1870382 m!2296269))

(assert (=> b!1870251 d!571768))

(assert (=> b!1870192 d!571724))

(assert (=> b!1870192 d!571726))

(declare-fun d!571770 () Bool)

(declare-fun res!837336 () Bool)

(declare-fun e!1193323 () Bool)

(assert (=> d!571770 (=> (not res!837336) (not e!1193323))))

(assert (=> d!571770 (= res!837336 (= (csize!14014 t!4595) (+ (size!16425 (left!16691 t!4595)) (size!16425 (right!17021 t!4595)))))))

(assert (=> d!571770 (= (inv!27466 t!4595) e!1193323)))

(declare-fun b!1870383 () Bool)

(declare-fun res!837337 () Bool)

(assert (=> b!1870383 (=> (not res!837337) (not e!1193323))))

(assert (=> b!1870383 (= res!837337 (and (not (= (left!16691 t!4595) Empty!6892)) (not (= (right!17021 t!4595) Empty!6892))))))

(declare-fun b!1870384 () Bool)

(declare-fun res!837338 () Bool)

(assert (=> b!1870384 (=> (not res!837338) (not e!1193323))))

(assert (=> b!1870384 (= res!837338 (= (cheight!7103 t!4595) (+ (max!0 (height!1079 (left!16691 t!4595)) (height!1079 (right!17021 t!4595))) 1)))))

(declare-fun b!1870385 () Bool)

(assert (=> b!1870385 (= e!1193323 (<= 0 (cheight!7103 t!4595)))))

(assert (= (and d!571770 res!837336) b!1870383))

(assert (= (and b!1870383 res!837337) b!1870384))

(assert (= (and b!1870384 res!837338) b!1870385))

(assert (=> d!571770 m!2296019))

(assert (=> d!571770 m!2296195))

(assert (=> b!1870384 m!2296037))

(assert (=> b!1870384 m!2296039))

(assert (=> b!1870384 m!2296037))

(assert (=> b!1870384 m!2296039))

(declare-fun m!2296271 () Bool)

(assert (=> b!1870384 m!2296271))

(assert (=> b!1870210 d!571770))

(declare-fun b!1870390 () Bool)

(declare-fun e!1193326 () Bool)

(declare-fun tp!532092 () Bool)

(declare-fun tp!532091 () Bool)

(assert (=> b!1870390 (= e!1193326 (and (inv!27462 (left!16691 (left!16691 (right!17021 t!4595)))) tp!532092 (inv!27462 (right!17021 (left!16691 (right!17021 t!4595)))) tp!532091))))

(declare-fun b!1870392 () Bool)

(declare-fun e!1193327 () Bool)

(declare-fun tp!532090 () Bool)

(assert (=> b!1870392 (= e!1193327 tp!532090)))

(declare-fun b!1870391 () Bool)

(assert (=> b!1870391 (= e!1193326 (and (inv!27463 (xs!9776 (left!16691 (right!17021 t!4595)))) e!1193327))))

(assert (=> b!1870254 (= tp!532089 (and (inv!27462 (left!16691 (right!17021 t!4595))) e!1193326))))

(assert (= (and b!1870254 ((_ is Node!6892) (left!16691 (right!17021 t!4595)))) b!1870390))

(assert (= b!1870391 b!1870392))

(assert (= (and b!1870254 ((_ is Leaf!10106) (left!16691 (right!17021 t!4595)))) b!1870391))

(declare-fun m!2296273 () Bool)

(assert (=> b!1870390 m!2296273))

(declare-fun m!2296275 () Bool)

(assert (=> b!1870390 m!2296275))

(declare-fun m!2296277 () Bool)

(assert (=> b!1870391 m!2296277))

(assert (=> b!1870254 m!2296105))

(declare-fun b!1870393 () Bool)

(declare-fun e!1193328 () Bool)

(declare-fun tp!532095 () Bool)

(declare-fun tp!532094 () Bool)

(assert (=> b!1870393 (= e!1193328 (and (inv!27462 (left!16691 (right!17021 (right!17021 t!4595)))) tp!532095 (inv!27462 (right!17021 (right!17021 (right!17021 t!4595)))) tp!532094))))

(declare-fun b!1870395 () Bool)

(declare-fun e!1193329 () Bool)

(declare-fun tp!532093 () Bool)

(assert (=> b!1870395 (= e!1193329 tp!532093)))

(declare-fun b!1870394 () Bool)

(assert (=> b!1870394 (= e!1193328 (and (inv!27463 (xs!9776 (right!17021 (right!17021 t!4595)))) e!1193329))))

(assert (=> b!1870254 (= tp!532088 (and (inv!27462 (right!17021 (right!17021 t!4595))) e!1193328))))

(assert (= (and b!1870254 ((_ is Node!6892) (right!17021 (right!17021 t!4595)))) b!1870393))

(assert (= b!1870394 b!1870395))

(assert (= (and b!1870254 ((_ is Leaf!10106) (right!17021 (right!17021 t!4595)))) b!1870394))

(declare-fun m!2296279 () Bool)

(assert (=> b!1870393 m!2296279))

(declare-fun m!2296281 () Bool)

(assert (=> b!1870393 m!2296281))

(declare-fun m!2296283 () Bool)

(assert (=> b!1870394 m!2296283))

(assert (=> b!1870254 m!2296107))

(declare-fun b!1870396 () Bool)

(declare-fun e!1193330 () Bool)

(declare-fun tp!532096 () Bool)

(assert (=> b!1870396 (= e!1193330 (and tp_is_empty!8703 tp!532096))))

(assert (=> b!1870242 (= tp!532077 e!1193330)))

(assert (= (and b!1870242 ((_ is Cons!20697) (t!172976 (innerList!6952 (xs!9776 t!4595))))) b!1870396))

(declare-fun b!1870399 () Bool)

(declare-fun tp!532099 () Bool)

(declare-fun e!1193332 () Bool)

(declare-fun tp!532098 () Bool)

(assert (=> b!1870399 (= e!1193332 (and (inv!27462 (left!16691 (left!16691 (left!16691 t!4595)))) tp!532099 (inv!27462 (right!17021 (left!16691 (left!16691 t!4595)))) tp!532098))))

(declare-fun b!1870401 () Bool)

(declare-fun e!1193333 () Bool)

(declare-fun tp!532097 () Bool)

(assert (=> b!1870401 (= e!1193333 tp!532097)))

(declare-fun b!1870400 () Bool)

(assert (=> b!1870400 (= e!1193332 (and (inv!27463 (xs!9776 (left!16691 (left!16691 t!4595)))) e!1193333))))

(assert (=> b!1870251 (= tp!532086 (and (inv!27462 (left!16691 (left!16691 t!4595))) e!1193332))))

(assert (= (and b!1870251 ((_ is Node!6892) (left!16691 (left!16691 t!4595)))) b!1870399))

(assert (= b!1870400 b!1870401))

(assert (= (and b!1870251 ((_ is Leaf!10106) (left!16691 (left!16691 t!4595)))) b!1870400))

(declare-fun m!2296287 () Bool)

(assert (=> b!1870399 m!2296287))

(declare-fun m!2296289 () Bool)

(assert (=> b!1870399 m!2296289))

(declare-fun m!2296291 () Bool)

(assert (=> b!1870400 m!2296291))

(assert (=> b!1870251 m!2296099))

(declare-fun tp!532101 () Bool)

(declare-fun e!1193334 () Bool)

(declare-fun tp!532102 () Bool)

(declare-fun b!1870402 () Bool)

(assert (=> b!1870402 (= e!1193334 (and (inv!27462 (left!16691 (right!17021 (left!16691 t!4595)))) tp!532102 (inv!27462 (right!17021 (right!17021 (left!16691 t!4595)))) tp!532101))))

(declare-fun b!1870404 () Bool)

(declare-fun e!1193335 () Bool)

(declare-fun tp!532100 () Bool)

(assert (=> b!1870404 (= e!1193335 tp!532100)))

(declare-fun b!1870403 () Bool)

(assert (=> b!1870403 (= e!1193334 (and (inv!27463 (xs!9776 (right!17021 (left!16691 t!4595)))) e!1193335))))

(assert (=> b!1870251 (= tp!532085 (and (inv!27462 (right!17021 (left!16691 t!4595))) e!1193334))))

(assert (= (and b!1870251 ((_ is Node!6892) (right!17021 (left!16691 t!4595)))) b!1870402))

(assert (= b!1870403 b!1870404))

(assert (= (and b!1870251 ((_ is Leaf!10106) (right!17021 (left!16691 t!4595)))) b!1870403))

(declare-fun m!2296295 () Bool)

(assert (=> b!1870402 m!2296295))

(declare-fun m!2296297 () Bool)

(assert (=> b!1870402 m!2296297))

(declare-fun m!2296299 () Bool)

(assert (=> b!1870403 m!2296299))

(assert (=> b!1870251 m!2296101))

(declare-fun b!1870409 () Bool)

(declare-fun e!1193338 () Bool)

(declare-fun tp!532103 () Bool)

(assert (=> b!1870409 (= e!1193338 (and tp_is_empty!8703 tp!532103))))

(assert (=> b!1870253 (= tp!532084 e!1193338)))

(assert (= (and b!1870253 ((_ is Cons!20697) (innerList!6952 (xs!9776 (left!16691 t!4595))))) b!1870409))

(declare-fun b!1870410 () Bool)

(declare-fun e!1193339 () Bool)

(declare-fun tp!532104 () Bool)

(assert (=> b!1870410 (= e!1193339 (and tp_is_empty!8703 tp!532104))))

(assert (=> b!1870256 (= tp!532087 e!1193339)))

(assert (= (and b!1870256 ((_ is Cons!20697) (innerList!6952 (xs!9776 (right!17021 t!4595))))) b!1870410))

(check-sat (not b!1870379) (not b!1870391) (not b!1870370) (not d!571714) (not b!1870394) (not b!1870373) (not b!1870336) (not b!1870390) (not b!1870371) (not b!1870284) (not b!1870403) (not b!1870273) (not b!1870372) (not b!1870334) (not b!1870404) (not d!571720) (not b!1870358) (not d!571728) (not b!1870286) (not b!1870396) (not d!571694) (not b!1870393) (not d!571704) (not b!1870361) (not b!1870409) (not b!1870337) (not b!1870328) (not b!1870274) (not b!1870410) (not b!1870281) (not b!1870351) (not b!1870339) (not d!571734) (not d!571754) (not d!571732) (not b!1870323) (not d!571770) (not b!1870384) (not b!1870335) (not b!1870327) (not b!1870380) (not b!1870283) (not d!571752) (not b!1870254) (not b!1870395) (not b!1870369) (not b!1870251) (not b!1870402) (not b!1870333) (not b!1870401) (not b!1870392) (not b!1870377) tp_is_empty!8703 (not b!1870338) (not b!1870300) (not b!1870400) (not b!1870382) (not b!1870374) (not b!1870399) (not d!571708))
(check-sat)
