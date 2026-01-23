; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747966 () Bool)

(assert start!747966)

(declare-fun b!7919144 () Bool)

(declare-fun res!3142973 () Bool)

(declare-fun e!4674314 () Bool)

(assert (=> b!7919144 (=> (not res!3142973) (not e!4674314))))

(declare-datatypes ((T!145706 0))(
  ( (T!145707 (val!32046 Int)) )
))
(declare-datatypes ((List!74558 0))(
  ( (Nil!74434) (Cons!74434 (h!80882 T!145706) (t!390119 List!74558)) )
))
(declare-datatypes ((IArray!31837 0))(
  ( (IArray!31838 (innerList!15976 List!74558)) )
))
(declare-datatypes ((Conc!15888 0))(
  ( (Node!15888 (left!56852 Conc!15888) (right!57182 Conc!15888) (csize!32006 Int) (cheight!16099 Int)) (Leaf!30213 (xs!19274 IArray!31837) (csize!32007 Int)) (Empty!15888) )
))
(declare-fun t!4440 () Conc!15888)

(get-info :version)

(assert (=> b!7919144 (= res!3142973 (and (not ((_ is Empty!15888) t!4440)) ((_ is Node!15888) t!4440)))))

(declare-fun b!7919145 () Bool)

(declare-fun isBalanced!4514 (Conc!15888) Bool)

(assert (=> b!7919145 (= e!4674314 (not (isBalanced!4514 (right!57182 t!4440))))))

(declare-fun b!7919146 () Bool)

(declare-fun e!4674313 () Bool)

(declare-fun tp!2357867 () Bool)

(assert (=> b!7919146 (= e!4674313 tp!2357867)))

(declare-fun res!3142974 () Bool)

(assert (=> start!747966 (=> (not res!3142974) (not e!4674314))))

(assert (=> start!747966 (= res!3142974 (isBalanced!4514 t!4440))))

(assert (=> start!747966 e!4674314))

(declare-fun e!4674312 () Bool)

(declare-fun inv!95644 (Conc!15888) Bool)

(assert (=> start!747966 (and (inv!95644 t!4440) e!4674312)))

(declare-fun b!7919147 () Bool)

(declare-fun tp!2357866 () Bool)

(declare-fun tp!2357868 () Bool)

(assert (=> b!7919147 (= e!4674312 (and (inv!95644 (left!56852 t!4440)) tp!2357868 (inv!95644 (right!57182 t!4440)) tp!2357866))))

(declare-fun b!7919148 () Bool)

(declare-fun inv!95645 (IArray!31837) Bool)

(assert (=> b!7919148 (= e!4674312 (and (inv!95645 (xs!19274 t!4440)) e!4674313))))

(assert (= (and start!747966 res!3142974) b!7919144))

(assert (= (and b!7919144 res!3142973) b!7919145))

(assert (= (and start!747966 ((_ is Node!15888) t!4440)) b!7919147))

(assert (= b!7919148 b!7919146))

(assert (= (and start!747966 ((_ is Leaf!30213) t!4440)) b!7919148))

(declare-fun m!8295174 () Bool)

(assert (=> b!7919145 m!8295174))

(declare-fun m!8295176 () Bool)

(assert (=> start!747966 m!8295176))

(declare-fun m!8295178 () Bool)

(assert (=> start!747966 m!8295178))

(declare-fun m!8295180 () Bool)

(assert (=> b!7919147 m!8295180))

(declare-fun m!8295182 () Bool)

(assert (=> b!7919147 m!8295182))

(declare-fun m!8295184 () Bool)

(assert (=> b!7919148 m!8295184))

(check-sat (not b!7919145) (not b!7919146) (not start!747966) (not b!7919148) (not b!7919147))
(check-sat)
(get-model)

(declare-fun d!2362653 () Bool)

(declare-fun size!43218 (List!74558) Int)

(assert (=> d!2362653 (= (inv!95645 (xs!19274 t!4440)) (<= (size!43218 (innerList!15976 (xs!19274 t!4440))) 2147483647))))

(declare-fun bs!1968525 () Bool)

(assert (= bs!1968525 d!2362653))

(declare-fun m!8295186 () Bool)

(assert (=> bs!1968525 m!8295186))

(assert (=> b!7919148 d!2362653))

(declare-fun b!7919185 () Bool)

(declare-fun res!3143006 () Bool)

(declare-fun e!4674331 () Bool)

(assert (=> b!7919185 (=> (not res!3143006) (not e!4674331))))

(assert (=> b!7919185 (= res!3143006 (isBalanced!4514 (left!56852 (right!57182 t!4440))))))

(declare-fun b!7919186 () Bool)

(declare-fun res!3143008 () Bool)

(assert (=> b!7919186 (=> (not res!3143008) (not e!4674331))))

(declare-fun height!2203 (Conc!15888) Int)

(assert (=> b!7919186 (= res!3143008 (<= (- (height!2203 (left!56852 (right!57182 t!4440))) (height!2203 (right!57182 (right!57182 t!4440)))) 1))))

(declare-fun b!7919187 () Bool)

(declare-fun res!3143004 () Bool)

(assert (=> b!7919187 (=> (not res!3143004) (not e!4674331))))

(assert (=> b!7919187 (= res!3143004 (isBalanced!4514 (right!57182 (right!57182 t!4440))))))

(declare-fun b!7919188 () Bool)

(declare-fun e!4674332 () Bool)

(assert (=> b!7919188 (= e!4674332 e!4674331)))

(declare-fun res!3143007 () Bool)

(assert (=> b!7919188 (=> (not res!3143007) (not e!4674331))))

(assert (=> b!7919188 (= res!3143007 (<= (- 1) (- (height!2203 (left!56852 (right!57182 t!4440))) (height!2203 (right!57182 (right!57182 t!4440))))))))

(declare-fun b!7919189 () Bool)

(declare-fun res!3143003 () Bool)

(assert (=> b!7919189 (=> (not res!3143003) (not e!4674331))))

(declare-fun isEmpty!42752 (Conc!15888) Bool)

(assert (=> b!7919189 (= res!3143003 (not (isEmpty!42752 (left!56852 (right!57182 t!4440)))))))

(declare-fun d!2362655 () Bool)

(declare-fun res!3143005 () Bool)

(assert (=> d!2362655 (=> res!3143005 e!4674332)))

(assert (=> d!2362655 (= res!3143005 (not ((_ is Node!15888) (right!57182 t!4440))))))

(assert (=> d!2362655 (= (isBalanced!4514 (right!57182 t!4440)) e!4674332)))

(declare-fun b!7919190 () Bool)

(assert (=> b!7919190 (= e!4674331 (not (isEmpty!42752 (right!57182 (right!57182 t!4440)))))))

(assert (= (and d!2362655 (not res!3143005)) b!7919188))

(assert (= (and b!7919188 res!3143007) b!7919186))

(assert (= (and b!7919186 res!3143008) b!7919185))

(assert (= (and b!7919185 res!3143006) b!7919187))

(assert (= (and b!7919187 res!3143004) b!7919189))

(assert (= (and b!7919189 res!3143003) b!7919190))

(declare-fun m!8295196 () Bool)

(assert (=> b!7919185 m!8295196))

(declare-fun m!8295198 () Bool)

(assert (=> b!7919190 m!8295198))

(declare-fun m!8295200 () Bool)

(assert (=> b!7919189 m!8295200))

(declare-fun m!8295202 () Bool)

(assert (=> b!7919188 m!8295202))

(declare-fun m!8295204 () Bool)

(assert (=> b!7919188 m!8295204))

(assert (=> b!7919186 m!8295202))

(assert (=> b!7919186 m!8295204))

(declare-fun m!8295206 () Bool)

(assert (=> b!7919187 m!8295206))

(assert (=> b!7919145 d!2362655))

(declare-fun d!2362661 () Bool)

(declare-fun c!1453288 () Bool)

(assert (=> d!2362661 (= c!1453288 ((_ is Node!15888) (left!56852 t!4440)))))

(declare-fun e!4674345 () Bool)

(assert (=> d!2362661 (= (inv!95644 (left!56852 t!4440)) e!4674345)))

(declare-fun b!7919216 () Bool)

(declare-fun inv!95648 (Conc!15888) Bool)

(assert (=> b!7919216 (= e!4674345 (inv!95648 (left!56852 t!4440)))))

(declare-fun b!7919217 () Bool)

(declare-fun e!4674346 () Bool)

(assert (=> b!7919217 (= e!4674345 e!4674346)))

(declare-fun res!3143024 () Bool)

(assert (=> b!7919217 (= res!3143024 (not ((_ is Leaf!30213) (left!56852 t!4440))))))

(assert (=> b!7919217 (=> res!3143024 e!4674346)))

(declare-fun b!7919218 () Bool)

(declare-fun inv!95649 (Conc!15888) Bool)

(assert (=> b!7919218 (= e!4674346 (inv!95649 (left!56852 t!4440)))))

(assert (= (and d!2362661 c!1453288) b!7919216))

(assert (= (and d!2362661 (not c!1453288)) b!7919217))

(assert (= (and b!7919217 (not res!3143024)) b!7919218))

(declare-fun m!8295236 () Bool)

(assert (=> b!7919216 m!8295236))

(declare-fun m!8295238 () Bool)

(assert (=> b!7919218 m!8295238))

(assert (=> b!7919147 d!2362661))

(declare-fun d!2362669 () Bool)

(declare-fun c!1453289 () Bool)

(assert (=> d!2362669 (= c!1453289 ((_ is Node!15888) (right!57182 t!4440)))))

(declare-fun e!4674349 () Bool)

(assert (=> d!2362669 (= (inv!95644 (right!57182 t!4440)) e!4674349)))

(declare-fun b!7919223 () Bool)

(assert (=> b!7919223 (= e!4674349 (inv!95648 (right!57182 t!4440)))))

(declare-fun b!7919224 () Bool)

(declare-fun e!4674350 () Bool)

(assert (=> b!7919224 (= e!4674349 e!4674350)))

(declare-fun res!3143025 () Bool)

(assert (=> b!7919224 (= res!3143025 (not ((_ is Leaf!30213) (right!57182 t!4440))))))

(assert (=> b!7919224 (=> res!3143025 e!4674350)))

(declare-fun b!7919225 () Bool)

(assert (=> b!7919225 (= e!4674350 (inv!95649 (right!57182 t!4440)))))

(assert (= (and d!2362669 c!1453289) b!7919223))

(assert (= (and d!2362669 (not c!1453289)) b!7919224))

(assert (= (and b!7919224 (not res!3143025)) b!7919225))

(declare-fun m!8295240 () Bool)

(assert (=> b!7919223 m!8295240))

(declare-fun m!8295242 () Bool)

(assert (=> b!7919225 m!8295242))

(assert (=> b!7919147 d!2362669))

(declare-fun b!7919226 () Bool)

(declare-fun res!3143029 () Bool)

(declare-fun e!4674351 () Bool)

(assert (=> b!7919226 (=> (not res!3143029) (not e!4674351))))

(assert (=> b!7919226 (= res!3143029 (isBalanced!4514 (left!56852 t!4440)))))

(declare-fun b!7919227 () Bool)

(declare-fun res!3143031 () Bool)

(assert (=> b!7919227 (=> (not res!3143031) (not e!4674351))))

(assert (=> b!7919227 (= res!3143031 (<= (- (height!2203 (left!56852 t!4440)) (height!2203 (right!57182 t!4440))) 1))))

(declare-fun b!7919228 () Bool)

(declare-fun res!3143027 () Bool)

(assert (=> b!7919228 (=> (not res!3143027) (not e!4674351))))

(assert (=> b!7919228 (= res!3143027 (isBalanced!4514 (right!57182 t!4440)))))

(declare-fun b!7919229 () Bool)

(declare-fun e!4674352 () Bool)

(assert (=> b!7919229 (= e!4674352 e!4674351)))

(declare-fun res!3143030 () Bool)

(assert (=> b!7919229 (=> (not res!3143030) (not e!4674351))))

(assert (=> b!7919229 (= res!3143030 (<= (- 1) (- (height!2203 (left!56852 t!4440)) (height!2203 (right!57182 t!4440)))))))

(declare-fun b!7919230 () Bool)

(declare-fun res!3143026 () Bool)

(assert (=> b!7919230 (=> (not res!3143026) (not e!4674351))))

(assert (=> b!7919230 (= res!3143026 (not (isEmpty!42752 (left!56852 t!4440))))))

(declare-fun d!2362671 () Bool)

(declare-fun res!3143028 () Bool)

(assert (=> d!2362671 (=> res!3143028 e!4674352)))

(assert (=> d!2362671 (= res!3143028 (not ((_ is Node!15888) t!4440)))))

(assert (=> d!2362671 (= (isBalanced!4514 t!4440) e!4674352)))

(declare-fun b!7919231 () Bool)

(assert (=> b!7919231 (= e!4674351 (not (isEmpty!42752 (right!57182 t!4440))))))

(assert (= (and d!2362671 (not res!3143028)) b!7919229))

(assert (= (and b!7919229 res!3143030) b!7919227))

(assert (= (and b!7919227 res!3143031) b!7919226))

(assert (= (and b!7919226 res!3143029) b!7919228))

(assert (= (and b!7919228 res!3143027) b!7919230))

(assert (= (and b!7919230 res!3143026) b!7919231))

(declare-fun m!8295244 () Bool)

(assert (=> b!7919226 m!8295244))

(declare-fun m!8295246 () Bool)

(assert (=> b!7919231 m!8295246))

(declare-fun m!8295248 () Bool)

(assert (=> b!7919230 m!8295248))

(declare-fun m!8295250 () Bool)

(assert (=> b!7919229 m!8295250))

(declare-fun m!8295252 () Bool)

(assert (=> b!7919229 m!8295252))

(assert (=> b!7919227 m!8295250))

(assert (=> b!7919227 m!8295252))

(assert (=> b!7919228 m!8295174))

(assert (=> start!747966 d!2362671))

(declare-fun d!2362673 () Bool)

(declare-fun c!1453290 () Bool)

(assert (=> d!2362673 (= c!1453290 ((_ is Node!15888) t!4440))))

(declare-fun e!4674355 () Bool)

(assert (=> d!2362673 (= (inv!95644 t!4440) e!4674355)))

(declare-fun b!7919235 () Bool)

(assert (=> b!7919235 (= e!4674355 (inv!95648 t!4440))))

(declare-fun b!7919236 () Bool)

(declare-fun e!4674356 () Bool)

(assert (=> b!7919236 (= e!4674355 e!4674356)))

(declare-fun res!3143032 () Bool)

(assert (=> b!7919236 (= res!3143032 (not ((_ is Leaf!30213) t!4440)))))

(assert (=> b!7919236 (=> res!3143032 e!4674356)))

(declare-fun b!7919237 () Bool)

(assert (=> b!7919237 (= e!4674356 (inv!95649 t!4440))))

(assert (= (and d!2362673 c!1453290) b!7919235))

(assert (= (and d!2362673 (not c!1453290)) b!7919236))

(assert (= (and b!7919236 (not res!3143032)) b!7919237))

(declare-fun m!8295254 () Bool)

(assert (=> b!7919235 m!8295254))

(declare-fun m!8295256 () Bool)

(assert (=> b!7919237 m!8295256))

(assert (=> start!747966 d!2362673))

(declare-fun b!7919249 () Bool)

(declare-fun e!4674363 () Bool)

(declare-fun tp_is_empty!53199 () Bool)

(declare-fun tp!2357885 () Bool)

(assert (=> b!7919249 (= e!4674363 (and tp_is_empty!53199 tp!2357885))))

(assert (=> b!7919146 (= tp!2357867 e!4674363)))

(assert (= (and b!7919146 ((_ is Cons!74434) (innerList!15976 (xs!19274 t!4440)))) b!7919249))

(declare-fun b!7919259 () Bool)

(declare-fun tp!2357894 () Bool)

(declare-fun e!4674370 () Bool)

(declare-fun tp!2357895 () Bool)

(assert (=> b!7919259 (= e!4674370 (and (inv!95644 (left!56852 (left!56852 t!4440))) tp!2357894 (inv!95644 (right!57182 (left!56852 t!4440))) tp!2357895))))

(declare-fun b!7919261 () Bool)

(declare-fun e!4674369 () Bool)

(declare-fun tp!2357893 () Bool)

(assert (=> b!7919261 (= e!4674369 tp!2357893)))

(declare-fun b!7919260 () Bool)

(assert (=> b!7919260 (= e!4674370 (and (inv!95645 (xs!19274 (left!56852 t!4440))) e!4674369))))

(assert (=> b!7919147 (= tp!2357868 (and (inv!95644 (left!56852 t!4440)) e!4674370))))

(assert (= (and b!7919147 ((_ is Node!15888) (left!56852 t!4440))) b!7919259))

(assert (= b!7919260 b!7919261))

(assert (= (and b!7919147 ((_ is Leaf!30213) (left!56852 t!4440))) b!7919260))

(declare-fun m!8295270 () Bool)

(assert (=> b!7919259 m!8295270))

(declare-fun m!8295272 () Bool)

(assert (=> b!7919259 m!8295272))

(declare-fun m!8295274 () Bool)

(assert (=> b!7919260 m!8295274))

(assert (=> b!7919147 m!8295180))

(declare-fun b!7919262 () Bool)

(declare-fun e!4674372 () Bool)

(declare-fun tp!2357898 () Bool)

(declare-fun tp!2357897 () Bool)

(assert (=> b!7919262 (= e!4674372 (and (inv!95644 (left!56852 (right!57182 t!4440))) tp!2357897 (inv!95644 (right!57182 (right!57182 t!4440))) tp!2357898))))

(declare-fun b!7919264 () Bool)

(declare-fun e!4674371 () Bool)

(declare-fun tp!2357896 () Bool)

(assert (=> b!7919264 (= e!4674371 tp!2357896)))

(declare-fun b!7919263 () Bool)

(assert (=> b!7919263 (= e!4674372 (and (inv!95645 (xs!19274 (right!57182 t!4440))) e!4674371))))

(assert (=> b!7919147 (= tp!2357866 (and (inv!95644 (right!57182 t!4440)) e!4674372))))

(assert (= (and b!7919147 ((_ is Node!15888) (right!57182 t!4440))) b!7919262))

(assert (= b!7919263 b!7919264))

(assert (= (and b!7919147 ((_ is Leaf!30213) (right!57182 t!4440))) b!7919263))

(declare-fun m!8295276 () Bool)

(assert (=> b!7919262 m!8295276))

(declare-fun m!8295278 () Bool)

(assert (=> b!7919262 m!8295278))

(declare-fun m!8295280 () Bool)

(assert (=> b!7919263 m!8295280))

(assert (=> b!7919147 m!8295182))

(check-sat (not b!7919218) (not b!7919187) (not b!7919185) (not b!7919216) (not b!7919235) (not b!7919231) (not b!7919263) (not b!7919261) tp_is_empty!53199 (not d!2362653) (not b!7919249) (not b!7919147) (not b!7919188) (not b!7919228) (not b!7919260) (not b!7919230) (not b!7919186) (not b!7919190) (not b!7919259) (not b!7919227) (not b!7919237) (not b!7919223) (not b!7919264) (not b!7919189) (not b!7919229) (not b!7919226) (not b!7919262) (not b!7919225))
(check-sat)
