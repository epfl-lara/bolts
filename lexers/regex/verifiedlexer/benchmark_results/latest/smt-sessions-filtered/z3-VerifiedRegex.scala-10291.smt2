; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535398 () Bool)

(assert start!535398)

(declare-fun b!5073159 () Bool)

(declare-fun e!3165330 () Bool)

(declare-datatypes ((T!105188 0))(
  ( (T!105189 (val!23658 Int)) )
))
(declare-datatypes ((List!58568 0))(
  ( (Nil!58444) (Cons!58444 (h!64892 T!105188) (t!371345 List!58568)) )
))
(declare-datatypes ((IArray!31209 0))(
  ( (IArray!31210 (innerList!15662 List!58568)) )
))
(declare-datatypes ((Conc!15574 0))(
  ( (Node!15574 (left!42831 Conc!15574) (right!43161 Conc!15574) (csize!31378 Int) (cheight!15785 Int)) (Leaf!25866 (xs!18934 IArray!31209) (csize!31379 Int)) (Empty!15574) )
))
(declare-fun ys!41 () Conc!15574)

(declare-fun e!3165329 () Bool)

(declare-fun inv!77610 (IArray!31209) Bool)

(assert (=> b!5073159 (= e!3165330 (and (inv!77610 (xs!18934 ys!41)) e!3165329))))

(declare-fun b!5073160 () Bool)

(declare-fun e!3165325 () Bool)

(declare-fun tp!1415983 () Bool)

(assert (=> b!5073160 (= e!3165325 tp!1415983)))

(declare-fun b!5073161 () Bool)

(declare-fun tp!1415982 () Bool)

(assert (=> b!5073161 (= e!3165329 tp!1415982)))

(declare-fun b!5073162 () Bool)

(declare-fun e!3165327 () Bool)

(declare-fun xs!286 () Conc!15574)

(assert (=> b!5073162 (= e!3165327 (and (inv!77610 (xs!18934 xs!286)) e!3165325))))

(declare-fun b!5073163 () Bool)

(declare-fun res!2159963 () Bool)

(declare-fun e!3165326 () Bool)

(assert (=> b!5073163 (=> (not res!2159963) (not e!3165326))))

(declare-fun isBalanced!4436 (Conc!15574) Bool)

(assert (=> b!5073163 (= res!2159963 (isBalanced!4436 ys!41))))

(declare-fun b!5073164 () Bool)

(declare-fun e!3165328 () Bool)

(declare-fun e!3165324 () Bool)

(assert (=> b!5073164 (= e!3165328 e!3165324)))

(declare-fun res!2159962 () Bool)

(assert (=> b!5073164 (=> (not res!2159962) (not e!3165324))))

(declare-fun lt!2089818 () Int)

(declare-fun height!2151 (Conc!15574) Int)

(assert (=> b!5073164 (= res!2159962 (>= (height!2151 (right!43161 ys!41)) lt!2089818))))

(assert (=> b!5073164 (= lt!2089818 (height!2151 (left!42831 ys!41)))))

(declare-fun res!2159959 () Bool)

(assert (=> start!535398 (=> (not res!2159959) (not e!3165326))))

(assert (=> start!535398 (= res!2159959 (isBalanced!4436 xs!286))))

(assert (=> start!535398 e!3165326))

(declare-fun inv!77611 (Conc!15574) Bool)

(assert (=> start!535398 (and (inv!77611 xs!286) e!3165327)))

(assert (=> start!535398 (and (inv!77611 ys!41) e!3165330)))

(declare-fun b!5073165 () Bool)

(declare-fun res!2159960 () Bool)

(assert (=> b!5073165 (=> (not res!2159960) (not e!3165326))))

(assert (=> b!5073165 (= res!2159960 (and (not (= xs!286 Empty!15574)) (not (= ys!41 Empty!15574))))))

(declare-fun b!5073166 () Bool)

(assert (=> b!5073166 (= e!3165326 e!3165328)))

(declare-fun res!2159961 () Bool)

(assert (=> b!5073166 (=> (not res!2159961) (not e!3165328))))

(declare-fun lt!2089819 () Int)

(get-info :version)

(assert (=> b!5073166 (= res!2159961 (and (or (> (- 1) lt!2089819) (> lt!2089819 1)) (>= lt!2089819 (- 1)) ((_ is Node!15574) ys!41)))))

(declare-fun lt!2089816 () Int)

(declare-fun lt!2089817 () Int)

(assert (=> b!5073166 (= lt!2089819 (- lt!2089816 lt!2089817))))

(assert (=> b!5073166 (= lt!2089817 (height!2151 xs!286))))

(assert (=> b!5073166 (= lt!2089816 (height!2151 ys!41))))

(declare-fun b!5073167 () Bool)

(declare-fun abs!0 (Int) Int)

(assert (=> b!5073167 (= e!3165324 (>= (abs!0 (- lt!2089817 lt!2089818)) (abs!0 (- lt!2089817 lt!2089816))))))

(declare-fun tp!1415985 () Bool)

(declare-fun tp!1415987 () Bool)

(declare-fun b!5073168 () Bool)

(assert (=> b!5073168 (= e!3165330 (and (inv!77611 (left!42831 ys!41)) tp!1415987 (inv!77611 (right!43161 ys!41)) tp!1415985))))

(declare-fun b!5073169 () Bool)

(declare-fun tp!1415984 () Bool)

(declare-fun tp!1415986 () Bool)

(assert (=> b!5073169 (= e!3165327 (and (inv!77611 (left!42831 xs!286)) tp!1415984 (inv!77611 (right!43161 xs!286)) tp!1415986))))

(assert (= (and start!535398 res!2159959) b!5073163))

(assert (= (and b!5073163 res!2159963) b!5073165))

(assert (= (and b!5073165 res!2159960) b!5073166))

(assert (= (and b!5073166 res!2159961) b!5073164))

(assert (= (and b!5073164 res!2159962) b!5073167))

(assert (= (and start!535398 ((_ is Node!15574) xs!286)) b!5073169))

(assert (= b!5073162 b!5073160))

(assert (= (and start!535398 ((_ is Leaf!25866) xs!286)) b!5073162))

(assert (= (and start!535398 ((_ is Node!15574) ys!41)) b!5073168))

(assert (= b!5073159 b!5073161))

(assert (= (and start!535398 ((_ is Leaf!25866) ys!41)) b!5073159))

(declare-fun m!6120410 () Bool)

(assert (=> b!5073164 m!6120410))

(declare-fun m!6120412 () Bool)

(assert (=> b!5073164 m!6120412))

(declare-fun m!6120414 () Bool)

(assert (=> b!5073159 m!6120414))

(declare-fun m!6120416 () Bool)

(assert (=> b!5073169 m!6120416))

(declare-fun m!6120418 () Bool)

(assert (=> b!5073169 m!6120418))

(declare-fun m!6120420 () Bool)

(assert (=> b!5073166 m!6120420))

(declare-fun m!6120422 () Bool)

(assert (=> b!5073166 m!6120422))

(declare-fun m!6120424 () Bool)

(assert (=> b!5073168 m!6120424))

(declare-fun m!6120426 () Bool)

(assert (=> b!5073168 m!6120426))

(declare-fun m!6120428 () Bool)

(assert (=> b!5073167 m!6120428))

(declare-fun m!6120430 () Bool)

(assert (=> b!5073167 m!6120430))

(declare-fun m!6120432 () Bool)

(assert (=> b!5073163 m!6120432))

(declare-fun m!6120434 () Bool)

(assert (=> b!5073162 m!6120434))

(declare-fun m!6120436 () Bool)

(assert (=> start!535398 m!6120436))

(declare-fun m!6120438 () Bool)

(assert (=> start!535398 m!6120438))

(declare-fun m!6120440 () Bool)

(assert (=> start!535398 m!6120440))

(check-sat (not b!5073166) (not b!5073161) (not b!5073164) (not start!535398) (not b!5073163) (not b!5073159) (not b!5073160) (not b!5073167) (not b!5073169) (not b!5073168) (not b!5073162))
(check-sat)
(get-model)

(declare-fun d!1637776 () Bool)

(declare-fun c!871066 () Bool)

(assert (=> d!1637776 (= c!871066 ((_ is Node!15574) (left!42831 xs!286)))))

(declare-fun e!3165335 () Bool)

(assert (=> d!1637776 (= (inv!77611 (left!42831 xs!286)) e!3165335)))

(declare-fun b!5073176 () Bool)

(declare-fun inv!77612 (Conc!15574) Bool)

(assert (=> b!5073176 (= e!3165335 (inv!77612 (left!42831 xs!286)))))

(declare-fun b!5073177 () Bool)

(declare-fun e!3165336 () Bool)

(assert (=> b!5073177 (= e!3165335 e!3165336)))

(declare-fun res!2159966 () Bool)

(assert (=> b!5073177 (= res!2159966 (not ((_ is Leaf!25866) (left!42831 xs!286))))))

(assert (=> b!5073177 (=> res!2159966 e!3165336)))

(declare-fun b!5073178 () Bool)

(declare-fun inv!77613 (Conc!15574) Bool)

(assert (=> b!5073178 (= e!3165336 (inv!77613 (left!42831 xs!286)))))

(assert (= (and d!1637776 c!871066) b!5073176))

(assert (= (and d!1637776 (not c!871066)) b!5073177))

(assert (= (and b!5073177 (not res!2159966)) b!5073178))

(declare-fun m!6120442 () Bool)

(assert (=> b!5073176 m!6120442))

(declare-fun m!6120444 () Bool)

(assert (=> b!5073178 m!6120444))

(assert (=> b!5073169 d!1637776))

(declare-fun d!1637778 () Bool)

(declare-fun c!871067 () Bool)

(assert (=> d!1637778 (= c!871067 ((_ is Node!15574) (right!43161 xs!286)))))

(declare-fun e!3165337 () Bool)

(assert (=> d!1637778 (= (inv!77611 (right!43161 xs!286)) e!3165337)))

(declare-fun b!5073179 () Bool)

(assert (=> b!5073179 (= e!3165337 (inv!77612 (right!43161 xs!286)))))

(declare-fun b!5073180 () Bool)

(declare-fun e!3165338 () Bool)

(assert (=> b!5073180 (= e!3165337 e!3165338)))

(declare-fun res!2159967 () Bool)

(assert (=> b!5073180 (= res!2159967 (not ((_ is Leaf!25866) (right!43161 xs!286))))))

(assert (=> b!5073180 (=> res!2159967 e!3165338)))

(declare-fun b!5073181 () Bool)

(assert (=> b!5073181 (= e!3165338 (inv!77613 (right!43161 xs!286)))))

(assert (= (and d!1637778 c!871067) b!5073179))

(assert (= (and d!1637778 (not c!871067)) b!5073180))

(assert (= (and b!5073180 (not res!2159967)) b!5073181))

(declare-fun m!6120446 () Bool)

(assert (=> b!5073179 m!6120446))

(declare-fun m!6120448 () Bool)

(assert (=> b!5073181 m!6120448))

(assert (=> b!5073169 d!1637778))

(declare-fun d!1637780 () Bool)

(assert (=> d!1637780 (= (height!2151 (right!43161 ys!41)) (ite ((_ is Empty!15574) (right!43161 ys!41)) 0 (ite ((_ is Leaf!25866) (right!43161 ys!41)) 1 (cheight!15785 (right!43161 ys!41)))))))

(assert (=> b!5073164 d!1637780))

(declare-fun d!1637782 () Bool)

(assert (=> d!1637782 (= (height!2151 (left!42831 ys!41)) (ite ((_ is Empty!15574) (left!42831 ys!41)) 0 (ite ((_ is Leaf!25866) (left!42831 ys!41)) 1 (cheight!15785 (left!42831 ys!41)))))))

(assert (=> b!5073164 d!1637782))

(declare-fun b!5073194 () Bool)

(declare-fun e!3165344 () Bool)

(declare-fun e!3165343 () Bool)

(assert (=> b!5073194 (= e!3165344 e!3165343)))

(declare-fun res!2159981 () Bool)

(assert (=> b!5073194 (=> (not res!2159981) (not e!3165343))))

(assert (=> b!5073194 (= res!2159981 (<= (- 1) (- (height!2151 (left!42831 ys!41)) (height!2151 (right!43161 ys!41)))))))

(declare-fun b!5073195 () Bool)

(declare-fun res!2159985 () Bool)

(assert (=> b!5073195 (=> (not res!2159985) (not e!3165343))))

(assert (=> b!5073195 (= res!2159985 (<= (- (height!2151 (left!42831 ys!41)) (height!2151 (right!43161 ys!41))) 1))))

(declare-fun b!5073196 () Bool)

(declare-fun isEmpty!31650 (Conc!15574) Bool)

(assert (=> b!5073196 (= e!3165343 (not (isEmpty!31650 (right!43161 ys!41))))))

(declare-fun d!1637784 () Bool)

(declare-fun res!2159984 () Bool)

(assert (=> d!1637784 (=> res!2159984 e!3165344)))

(assert (=> d!1637784 (= res!2159984 (not ((_ is Node!15574) ys!41)))))

(assert (=> d!1637784 (= (isBalanced!4436 ys!41) e!3165344)))

(declare-fun b!5073197 () Bool)

(declare-fun res!2159982 () Bool)

(assert (=> b!5073197 (=> (not res!2159982) (not e!3165343))))

(assert (=> b!5073197 (= res!2159982 (isBalanced!4436 (right!43161 ys!41)))))

(declare-fun b!5073198 () Bool)

(declare-fun res!2159983 () Bool)

(assert (=> b!5073198 (=> (not res!2159983) (not e!3165343))))

(assert (=> b!5073198 (= res!2159983 (not (isEmpty!31650 (left!42831 ys!41))))))

(declare-fun b!5073199 () Bool)

(declare-fun res!2159980 () Bool)

(assert (=> b!5073199 (=> (not res!2159980) (not e!3165343))))

(assert (=> b!5073199 (= res!2159980 (isBalanced!4436 (left!42831 ys!41)))))

(assert (= (and d!1637784 (not res!2159984)) b!5073194))

(assert (= (and b!5073194 res!2159981) b!5073195))

(assert (= (and b!5073195 res!2159985) b!5073199))

(assert (= (and b!5073199 res!2159980) b!5073197))

(assert (= (and b!5073197 res!2159982) b!5073198))

(assert (= (and b!5073198 res!2159983) b!5073196))

(declare-fun m!6120450 () Bool)

(assert (=> b!5073199 m!6120450))

(declare-fun m!6120452 () Bool)

(assert (=> b!5073196 m!6120452))

(declare-fun m!6120454 () Bool)

(assert (=> b!5073197 m!6120454))

(assert (=> b!5073194 m!6120412))

(assert (=> b!5073194 m!6120410))

(declare-fun m!6120456 () Bool)

(assert (=> b!5073198 m!6120456))

(assert (=> b!5073195 m!6120412))

(assert (=> b!5073195 m!6120410))

(assert (=> b!5073163 d!1637784))

(declare-fun d!1637788 () Bool)

(declare-fun c!871068 () Bool)

(assert (=> d!1637788 (= c!871068 ((_ is Node!15574) (left!42831 ys!41)))))

(declare-fun e!3165345 () Bool)

(assert (=> d!1637788 (= (inv!77611 (left!42831 ys!41)) e!3165345)))

(declare-fun b!5073200 () Bool)

(assert (=> b!5073200 (= e!3165345 (inv!77612 (left!42831 ys!41)))))

(declare-fun b!5073201 () Bool)

(declare-fun e!3165346 () Bool)

(assert (=> b!5073201 (= e!3165345 e!3165346)))

(declare-fun res!2159986 () Bool)

(assert (=> b!5073201 (= res!2159986 (not ((_ is Leaf!25866) (left!42831 ys!41))))))

(assert (=> b!5073201 (=> res!2159986 e!3165346)))

(declare-fun b!5073202 () Bool)

(assert (=> b!5073202 (= e!3165346 (inv!77613 (left!42831 ys!41)))))

(assert (= (and d!1637788 c!871068) b!5073200))

(assert (= (and d!1637788 (not c!871068)) b!5073201))

(assert (= (and b!5073201 (not res!2159986)) b!5073202))

(declare-fun m!6120458 () Bool)

(assert (=> b!5073200 m!6120458))

(declare-fun m!6120460 () Bool)

(assert (=> b!5073202 m!6120460))

(assert (=> b!5073168 d!1637788))

(declare-fun d!1637790 () Bool)

(declare-fun c!871069 () Bool)

(assert (=> d!1637790 (= c!871069 ((_ is Node!15574) (right!43161 ys!41)))))

(declare-fun e!3165347 () Bool)

(assert (=> d!1637790 (= (inv!77611 (right!43161 ys!41)) e!3165347)))

(declare-fun b!5073203 () Bool)

(assert (=> b!5073203 (= e!3165347 (inv!77612 (right!43161 ys!41)))))

(declare-fun b!5073204 () Bool)

(declare-fun e!3165348 () Bool)

(assert (=> b!5073204 (= e!3165347 e!3165348)))

(declare-fun res!2159987 () Bool)

(assert (=> b!5073204 (= res!2159987 (not ((_ is Leaf!25866) (right!43161 ys!41))))))

(assert (=> b!5073204 (=> res!2159987 e!3165348)))

(declare-fun b!5073205 () Bool)

(assert (=> b!5073205 (= e!3165348 (inv!77613 (right!43161 ys!41)))))

(assert (= (and d!1637790 c!871069) b!5073203))

(assert (= (and d!1637790 (not c!871069)) b!5073204))

(assert (= (and b!5073204 (not res!2159987)) b!5073205))

(declare-fun m!6120462 () Bool)

(assert (=> b!5073203 m!6120462))

(declare-fun m!6120464 () Bool)

(assert (=> b!5073205 m!6120464))

(assert (=> b!5073168 d!1637790))

(declare-fun d!1637792 () Bool)

(assert (=> d!1637792 (= (abs!0 (- lt!2089817 lt!2089818)) (ite (<= 0 (- lt!2089817 lt!2089818)) (- lt!2089817 lt!2089818) (- (- lt!2089817 lt!2089818))))))

(assert (=> b!5073167 d!1637792))

(declare-fun d!1637794 () Bool)

(assert (=> d!1637794 (= (abs!0 (- lt!2089817 lt!2089816)) (ite (<= 0 (- lt!2089817 lt!2089816)) (- lt!2089817 lt!2089816) (- (- lt!2089817 lt!2089816))))))

(assert (=> b!5073167 d!1637794))

(declare-fun d!1637796 () Bool)

(declare-fun size!39095 (List!58568) Int)

(assert (=> d!1637796 (= (inv!77610 (xs!18934 xs!286)) (<= (size!39095 (innerList!15662 (xs!18934 xs!286))) 2147483647))))

(declare-fun bs!1190252 () Bool)

(assert (= bs!1190252 d!1637796))

(declare-fun m!6120474 () Bool)

(assert (=> bs!1190252 m!6120474))

(assert (=> b!5073162 d!1637796))

(declare-fun d!1637802 () Bool)

(assert (=> d!1637802 (= (height!2151 xs!286) (ite ((_ is Empty!15574) xs!286) 0 (ite ((_ is Leaf!25866) xs!286) 1 (cheight!15785 xs!286))))))

(assert (=> b!5073166 d!1637802))

(declare-fun d!1637804 () Bool)

(assert (=> d!1637804 (= (height!2151 ys!41) (ite ((_ is Empty!15574) ys!41) 0 (ite ((_ is Leaf!25866) ys!41) 1 (cheight!15785 ys!41))))))

(assert (=> b!5073166 d!1637804))

(declare-fun b!5073218 () Bool)

(declare-fun e!3165358 () Bool)

(declare-fun e!3165357 () Bool)

(assert (=> b!5073218 (= e!3165358 e!3165357)))

(declare-fun res!2159993 () Bool)

(assert (=> b!5073218 (=> (not res!2159993) (not e!3165357))))

(assert (=> b!5073218 (= res!2159993 (<= (- 1) (- (height!2151 (left!42831 xs!286)) (height!2151 (right!43161 xs!286)))))))

(declare-fun b!5073219 () Bool)

(declare-fun res!2159997 () Bool)

(assert (=> b!5073219 (=> (not res!2159997) (not e!3165357))))

(assert (=> b!5073219 (= res!2159997 (<= (- (height!2151 (left!42831 xs!286)) (height!2151 (right!43161 xs!286))) 1))))

(declare-fun b!5073220 () Bool)

(assert (=> b!5073220 (= e!3165357 (not (isEmpty!31650 (right!43161 xs!286))))))

(declare-fun d!1637806 () Bool)

(declare-fun res!2159996 () Bool)

(assert (=> d!1637806 (=> res!2159996 e!3165358)))

(assert (=> d!1637806 (= res!2159996 (not ((_ is Node!15574) xs!286)))))

(assert (=> d!1637806 (= (isBalanced!4436 xs!286) e!3165358)))

(declare-fun b!5073221 () Bool)

(declare-fun res!2159994 () Bool)

(assert (=> b!5073221 (=> (not res!2159994) (not e!3165357))))

(assert (=> b!5073221 (= res!2159994 (isBalanced!4436 (right!43161 xs!286)))))

(declare-fun b!5073222 () Bool)

(declare-fun res!2159995 () Bool)

(assert (=> b!5073222 (=> (not res!2159995) (not e!3165357))))

(assert (=> b!5073222 (= res!2159995 (not (isEmpty!31650 (left!42831 xs!286))))))

(declare-fun b!5073223 () Bool)

(declare-fun res!2159992 () Bool)

(assert (=> b!5073223 (=> (not res!2159992) (not e!3165357))))

(assert (=> b!5073223 (= res!2159992 (isBalanced!4436 (left!42831 xs!286)))))

(assert (= (and d!1637806 (not res!2159996)) b!5073218))

(assert (= (and b!5073218 res!2159993) b!5073219))

(assert (= (and b!5073219 res!2159997) b!5073223))

(assert (= (and b!5073223 res!2159992) b!5073221))

(assert (= (and b!5073221 res!2159994) b!5073222))

(assert (= (and b!5073222 res!2159995) b!5073220))

(declare-fun m!6120476 () Bool)

(assert (=> b!5073223 m!6120476))

(declare-fun m!6120478 () Bool)

(assert (=> b!5073220 m!6120478))

(declare-fun m!6120480 () Bool)

(assert (=> b!5073221 m!6120480))

(declare-fun m!6120482 () Bool)

(assert (=> b!5073218 m!6120482))

(declare-fun m!6120484 () Bool)

(assert (=> b!5073218 m!6120484))

(declare-fun m!6120486 () Bool)

(assert (=> b!5073222 m!6120486))

(assert (=> b!5073219 m!6120482))

(assert (=> b!5073219 m!6120484))

(assert (=> start!535398 d!1637806))

(declare-fun d!1637808 () Bool)

(declare-fun c!871074 () Bool)

(assert (=> d!1637808 (= c!871074 ((_ is Node!15574) xs!286))))

(declare-fun e!3165359 () Bool)

(assert (=> d!1637808 (= (inv!77611 xs!286) e!3165359)))

(declare-fun b!5073224 () Bool)

(assert (=> b!5073224 (= e!3165359 (inv!77612 xs!286))))

(declare-fun b!5073225 () Bool)

(declare-fun e!3165360 () Bool)

(assert (=> b!5073225 (= e!3165359 e!3165360)))

(declare-fun res!2159998 () Bool)

(assert (=> b!5073225 (= res!2159998 (not ((_ is Leaf!25866) xs!286)))))

(assert (=> b!5073225 (=> res!2159998 e!3165360)))

(declare-fun b!5073226 () Bool)

(assert (=> b!5073226 (= e!3165360 (inv!77613 xs!286))))

(assert (= (and d!1637808 c!871074) b!5073224))

(assert (= (and d!1637808 (not c!871074)) b!5073225))

(assert (= (and b!5073225 (not res!2159998)) b!5073226))

(declare-fun m!6120490 () Bool)

(assert (=> b!5073224 m!6120490))

(declare-fun m!6120492 () Bool)

(assert (=> b!5073226 m!6120492))

(assert (=> start!535398 d!1637808))

(declare-fun d!1637812 () Bool)

(declare-fun c!871075 () Bool)

(assert (=> d!1637812 (= c!871075 ((_ is Node!15574) ys!41))))

(declare-fun e!3165361 () Bool)

(assert (=> d!1637812 (= (inv!77611 ys!41) e!3165361)))

(declare-fun b!5073227 () Bool)

(assert (=> b!5073227 (= e!3165361 (inv!77612 ys!41))))

(declare-fun b!5073228 () Bool)

(declare-fun e!3165362 () Bool)

(assert (=> b!5073228 (= e!3165361 e!3165362)))

(declare-fun res!2159999 () Bool)

(assert (=> b!5073228 (= res!2159999 (not ((_ is Leaf!25866) ys!41)))))

(assert (=> b!5073228 (=> res!2159999 e!3165362)))

(declare-fun b!5073229 () Bool)

(assert (=> b!5073229 (= e!3165362 (inv!77613 ys!41))))

(assert (= (and d!1637812 c!871075) b!5073227))

(assert (= (and d!1637812 (not c!871075)) b!5073228))

(assert (= (and b!5073228 (not res!2159999)) b!5073229))

(declare-fun m!6120494 () Bool)

(assert (=> b!5073227 m!6120494))

(declare-fun m!6120496 () Bool)

(assert (=> b!5073229 m!6120496))

(assert (=> start!535398 d!1637812))

(declare-fun d!1637814 () Bool)

(assert (=> d!1637814 (= (inv!77610 (xs!18934 ys!41)) (<= (size!39095 (innerList!15662 (xs!18934 ys!41))) 2147483647))))

(declare-fun bs!1190254 () Bool)

(assert (= bs!1190254 d!1637814))

(declare-fun m!6120498 () Bool)

(assert (=> bs!1190254 m!6120498))

(assert (=> b!5073159 d!1637814))

(declare-fun e!3165367 () Bool)

(declare-fun tp!1415996 () Bool)

(declare-fun b!5073238 () Bool)

(declare-fun tp!1415995 () Bool)

(assert (=> b!5073238 (= e!3165367 (and (inv!77611 (left!42831 (left!42831 xs!286))) tp!1415995 (inv!77611 (right!43161 (left!42831 xs!286))) tp!1415996))))

(declare-fun b!5073240 () Bool)

(declare-fun e!3165368 () Bool)

(declare-fun tp!1415994 () Bool)

(assert (=> b!5073240 (= e!3165368 tp!1415994)))

(declare-fun b!5073239 () Bool)

(assert (=> b!5073239 (= e!3165367 (and (inv!77610 (xs!18934 (left!42831 xs!286))) e!3165368))))

(assert (=> b!5073169 (= tp!1415984 (and (inv!77611 (left!42831 xs!286)) e!3165367))))

(assert (= (and b!5073169 ((_ is Node!15574) (left!42831 xs!286))) b!5073238))

(assert (= b!5073239 b!5073240))

(assert (= (and b!5073169 ((_ is Leaf!25866) (left!42831 xs!286))) b!5073239))

(declare-fun m!6120500 () Bool)

(assert (=> b!5073238 m!6120500))

(declare-fun m!6120502 () Bool)

(assert (=> b!5073238 m!6120502))

(declare-fun m!6120504 () Bool)

(assert (=> b!5073239 m!6120504))

(assert (=> b!5073169 m!6120416))

(declare-fun tp!1415998 () Bool)

(declare-fun tp!1415999 () Bool)

(declare-fun e!3165369 () Bool)

(declare-fun b!5073241 () Bool)

(assert (=> b!5073241 (= e!3165369 (and (inv!77611 (left!42831 (right!43161 xs!286))) tp!1415998 (inv!77611 (right!43161 (right!43161 xs!286))) tp!1415999))))

(declare-fun b!5073243 () Bool)

(declare-fun e!3165370 () Bool)

(declare-fun tp!1415997 () Bool)

(assert (=> b!5073243 (= e!3165370 tp!1415997)))

(declare-fun b!5073242 () Bool)

(assert (=> b!5073242 (= e!3165369 (and (inv!77610 (xs!18934 (right!43161 xs!286))) e!3165370))))

(assert (=> b!5073169 (= tp!1415986 (and (inv!77611 (right!43161 xs!286)) e!3165369))))

(assert (= (and b!5073169 ((_ is Node!15574) (right!43161 xs!286))) b!5073241))

(assert (= b!5073242 b!5073243))

(assert (= (and b!5073169 ((_ is Leaf!25866) (right!43161 xs!286))) b!5073242))

(declare-fun m!6120506 () Bool)

(assert (=> b!5073241 m!6120506))

(declare-fun m!6120508 () Bool)

(assert (=> b!5073241 m!6120508))

(declare-fun m!6120510 () Bool)

(assert (=> b!5073242 m!6120510))

(assert (=> b!5073169 m!6120418))

(declare-fun tp!1416001 () Bool)

(declare-fun tp!1416002 () Bool)

(declare-fun b!5073244 () Bool)

(declare-fun e!3165371 () Bool)

(assert (=> b!5073244 (= e!3165371 (and (inv!77611 (left!42831 (left!42831 ys!41))) tp!1416001 (inv!77611 (right!43161 (left!42831 ys!41))) tp!1416002))))

(declare-fun b!5073246 () Bool)

(declare-fun e!3165372 () Bool)

(declare-fun tp!1416000 () Bool)

(assert (=> b!5073246 (= e!3165372 tp!1416000)))

(declare-fun b!5073245 () Bool)

(assert (=> b!5073245 (= e!3165371 (and (inv!77610 (xs!18934 (left!42831 ys!41))) e!3165372))))

(assert (=> b!5073168 (= tp!1415987 (and (inv!77611 (left!42831 ys!41)) e!3165371))))

(assert (= (and b!5073168 ((_ is Node!15574) (left!42831 ys!41))) b!5073244))

(assert (= b!5073245 b!5073246))

(assert (= (and b!5073168 ((_ is Leaf!25866) (left!42831 ys!41))) b!5073245))

(declare-fun m!6120512 () Bool)

(assert (=> b!5073244 m!6120512))

(declare-fun m!6120514 () Bool)

(assert (=> b!5073244 m!6120514))

(declare-fun m!6120516 () Bool)

(assert (=> b!5073245 m!6120516))

(assert (=> b!5073168 m!6120424))

(declare-fun tp!1416005 () Bool)

(declare-fun e!3165373 () Bool)

(declare-fun b!5073247 () Bool)

(declare-fun tp!1416004 () Bool)

(assert (=> b!5073247 (= e!3165373 (and (inv!77611 (left!42831 (right!43161 ys!41))) tp!1416004 (inv!77611 (right!43161 (right!43161 ys!41))) tp!1416005))))

(declare-fun b!5073249 () Bool)

(declare-fun e!3165374 () Bool)

(declare-fun tp!1416003 () Bool)

(assert (=> b!5073249 (= e!3165374 tp!1416003)))

(declare-fun b!5073248 () Bool)

(assert (=> b!5073248 (= e!3165373 (and (inv!77610 (xs!18934 (right!43161 ys!41))) e!3165374))))

(assert (=> b!5073168 (= tp!1415985 (and (inv!77611 (right!43161 ys!41)) e!3165373))))

(assert (= (and b!5073168 ((_ is Node!15574) (right!43161 ys!41))) b!5073247))

(assert (= b!5073248 b!5073249))

(assert (= (and b!5073168 ((_ is Leaf!25866) (right!43161 ys!41))) b!5073248))

(declare-fun m!6120518 () Bool)

(assert (=> b!5073247 m!6120518))

(declare-fun m!6120520 () Bool)

(assert (=> b!5073247 m!6120520))

(declare-fun m!6120522 () Bool)

(assert (=> b!5073248 m!6120522))

(assert (=> b!5073168 m!6120426))

(declare-fun b!5073266 () Bool)

(declare-fun e!3165381 () Bool)

(declare-fun tp_is_empty!37069 () Bool)

(declare-fun tp!1416008 () Bool)

(assert (=> b!5073266 (= e!3165381 (and tp_is_empty!37069 tp!1416008))))

(assert (=> b!5073161 (= tp!1415982 e!3165381)))

(assert (= (and b!5073161 ((_ is Cons!58444) (innerList!15662 (xs!18934 ys!41)))) b!5073266))

(declare-fun b!5073267 () Bool)

(declare-fun e!3165382 () Bool)

(declare-fun tp!1416009 () Bool)

(assert (=> b!5073267 (= e!3165382 (and tp_is_empty!37069 tp!1416009))))

(assert (=> b!5073160 (= tp!1415983 e!3165382)))

(assert (= (and b!5073160 ((_ is Cons!58444) (innerList!15662 (xs!18934 xs!286)))) b!5073267))

(check-sat (not b!5073267) (not b!5073224) (not b!5073245) (not b!5073246) (not b!5073196) (not b!5073176) (not b!5073202) (not b!5073242) (not b!5073244) (not b!5073241) (not d!1637796) (not b!5073229) (not b!5073226) (not b!5073266) (not b!5073247) (not d!1637814) (not b!5073239) (not b!5073197) (not b!5073220) (not b!5073238) (not b!5073218) (not b!5073219) (not b!5073240) (not b!5073181) (not b!5073200) (not b!5073227) (not b!5073179) (not b!5073222) (not b!5073195) (not b!5073205) (not b!5073223) (not b!5073169) tp_is_empty!37069 (not b!5073248) (not b!5073243) (not b!5073168) (not b!5073221) (not b!5073203) (not b!5073194) (not b!5073249) (not b!5073199) (not b!5073198) (not b!5073178))
(check-sat)
(get-model)

(declare-fun d!1637848 () Bool)

(declare-fun res!2160044 () Bool)

(declare-fun e!3165424 () Bool)

(assert (=> d!1637848 (=> (not res!2160044) (not e!3165424))))

(declare-fun list!19010 (IArray!31209) List!58568)

(assert (=> d!1637848 (= res!2160044 (<= (size!39095 (list!19010 (xs!18934 (right!43161 xs!286)))) 512))))

(assert (=> d!1637848 (= (inv!77613 (right!43161 xs!286)) e!3165424)))

(declare-fun b!5073344 () Bool)

(declare-fun res!2160045 () Bool)

(assert (=> b!5073344 (=> (not res!2160045) (not e!3165424))))

(assert (=> b!5073344 (= res!2160045 (= (csize!31379 (right!43161 xs!286)) (size!39095 (list!19010 (xs!18934 (right!43161 xs!286))))))))

(declare-fun b!5073345 () Bool)

(assert (=> b!5073345 (= e!3165424 (and (> (csize!31379 (right!43161 xs!286)) 0) (<= (csize!31379 (right!43161 xs!286)) 512)))))

(assert (= (and d!1637848 res!2160044) b!5073344))

(assert (= (and b!5073344 res!2160045) b!5073345))

(declare-fun m!6120614 () Bool)

(assert (=> d!1637848 m!6120614))

(assert (=> d!1637848 m!6120614))

(declare-fun m!6120616 () Bool)

(assert (=> d!1637848 m!6120616))

(assert (=> b!5073344 m!6120614))

(assert (=> b!5073344 m!6120614))

(assert (=> b!5073344 m!6120616))

(assert (=> b!5073181 d!1637848))

(declare-fun d!1637854 () Bool)

(declare-fun lt!2089828 () Bool)

(declare-fun isEmpty!31653 (List!58568) Bool)

(declare-fun list!19011 (Conc!15574) List!58568)

(assert (=> d!1637854 (= lt!2089828 (isEmpty!31653 (list!19011 (left!42831 xs!286))))))

(declare-fun size!39097 (Conc!15574) Int)

(assert (=> d!1637854 (= lt!2089828 (= (size!39097 (left!42831 xs!286)) 0))))

(assert (=> d!1637854 (= (isEmpty!31650 (left!42831 xs!286)) lt!2089828)))

(declare-fun bs!1190257 () Bool)

(assert (= bs!1190257 d!1637854))

(declare-fun m!6120654 () Bool)

(assert (=> bs!1190257 m!6120654))

(assert (=> bs!1190257 m!6120654))

(declare-fun m!6120656 () Bool)

(assert (=> bs!1190257 m!6120656))

(declare-fun m!6120658 () Bool)

(assert (=> bs!1190257 m!6120658))

(assert (=> b!5073222 d!1637854))

(declare-fun b!5073364 () Bool)

(declare-fun e!3165433 () Bool)

(declare-fun e!3165432 () Bool)

(assert (=> b!5073364 (= e!3165433 e!3165432)))

(declare-fun res!2160065 () Bool)

(assert (=> b!5073364 (=> (not res!2160065) (not e!3165432))))

(assert (=> b!5073364 (= res!2160065 (<= (- 1) (- (height!2151 (left!42831 (right!43161 xs!286))) (height!2151 (right!43161 (right!43161 xs!286))))))))

(declare-fun b!5073365 () Bool)

(declare-fun res!2160069 () Bool)

(assert (=> b!5073365 (=> (not res!2160069) (not e!3165432))))

(assert (=> b!5073365 (= res!2160069 (<= (- (height!2151 (left!42831 (right!43161 xs!286))) (height!2151 (right!43161 (right!43161 xs!286)))) 1))))

(declare-fun b!5073366 () Bool)

(assert (=> b!5073366 (= e!3165432 (not (isEmpty!31650 (right!43161 (right!43161 xs!286)))))))

(declare-fun d!1637866 () Bool)

(declare-fun res!2160068 () Bool)

(assert (=> d!1637866 (=> res!2160068 e!3165433)))

(assert (=> d!1637866 (= res!2160068 (not ((_ is Node!15574) (right!43161 xs!286))))))

(assert (=> d!1637866 (= (isBalanced!4436 (right!43161 xs!286)) e!3165433)))

(declare-fun b!5073367 () Bool)

(declare-fun res!2160066 () Bool)

(assert (=> b!5073367 (=> (not res!2160066) (not e!3165432))))

(assert (=> b!5073367 (= res!2160066 (isBalanced!4436 (right!43161 (right!43161 xs!286))))))

(declare-fun b!5073368 () Bool)

(declare-fun res!2160067 () Bool)

(assert (=> b!5073368 (=> (not res!2160067) (not e!3165432))))

(assert (=> b!5073368 (= res!2160067 (not (isEmpty!31650 (left!42831 (right!43161 xs!286)))))))

(declare-fun b!5073369 () Bool)

(declare-fun res!2160064 () Bool)

(assert (=> b!5073369 (=> (not res!2160064) (not e!3165432))))

(assert (=> b!5073369 (= res!2160064 (isBalanced!4436 (left!42831 (right!43161 xs!286))))))

(assert (= (and d!1637866 (not res!2160068)) b!5073364))

(assert (= (and b!5073364 res!2160065) b!5073365))

(assert (= (and b!5073365 res!2160069) b!5073369))

(assert (= (and b!5073369 res!2160064) b!5073367))

(assert (= (and b!5073367 res!2160066) b!5073368))

(assert (= (and b!5073368 res!2160067) b!5073366))

(declare-fun m!6120660 () Bool)

(assert (=> b!5073369 m!6120660))

(declare-fun m!6120662 () Bool)

(assert (=> b!5073366 m!6120662))

(declare-fun m!6120664 () Bool)

(assert (=> b!5073367 m!6120664))

(declare-fun m!6120666 () Bool)

(assert (=> b!5073364 m!6120666))

(declare-fun m!6120668 () Bool)

(assert (=> b!5073364 m!6120668))

(declare-fun m!6120670 () Bool)

(assert (=> b!5073368 m!6120670))

(assert (=> b!5073365 m!6120666))

(assert (=> b!5073365 m!6120668))

(assert (=> b!5073221 d!1637866))

(declare-fun d!1637868 () Bool)

(declare-fun res!2160112 () Bool)

(declare-fun e!3165460 () Bool)

(assert (=> d!1637868 (=> (not res!2160112) (not e!3165460))))

(assert (=> d!1637868 (= res!2160112 (= (csize!31378 ys!41) (+ (size!39097 (left!42831 ys!41)) (size!39097 (right!43161 ys!41)))))))

(assert (=> d!1637868 (= (inv!77612 ys!41) e!3165460)))

(declare-fun b!5073426 () Bool)

(declare-fun res!2160113 () Bool)

(assert (=> b!5073426 (=> (not res!2160113) (not e!3165460))))

(assert (=> b!5073426 (= res!2160113 (and (not (= (left!42831 ys!41) Empty!15574)) (not (= (right!43161 ys!41) Empty!15574))))))

(declare-fun b!5073427 () Bool)

(declare-fun res!2160114 () Bool)

(assert (=> b!5073427 (=> (not res!2160114) (not e!3165460))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5073427 (= res!2160114 (= (cheight!15785 ys!41) (+ (max!0 (height!2151 (left!42831 ys!41)) (height!2151 (right!43161 ys!41))) 1)))))

(declare-fun b!5073428 () Bool)

(assert (=> b!5073428 (= e!3165460 (<= 0 (cheight!15785 ys!41)))))

(assert (= (and d!1637868 res!2160112) b!5073426))

(assert (= (and b!5073426 res!2160113) b!5073427))

(assert (= (and b!5073427 res!2160114) b!5073428))

(declare-fun m!6120764 () Bool)

(assert (=> d!1637868 m!6120764))

(declare-fun m!6120770 () Bool)

(assert (=> d!1637868 m!6120770))

(assert (=> b!5073427 m!6120412))

(assert (=> b!5073427 m!6120410))

(assert (=> b!5073427 m!6120412))

(assert (=> b!5073427 m!6120410))

(declare-fun m!6120778 () Bool)

(assert (=> b!5073427 m!6120778))

(assert (=> b!5073227 d!1637868))

(declare-fun d!1637920 () Bool)

(declare-fun res!2160121 () Bool)

(declare-fun e!3165463 () Bool)

(assert (=> d!1637920 (=> (not res!2160121) (not e!3165463))))

(assert (=> d!1637920 (= res!2160121 (= (csize!31378 (right!43161 xs!286)) (+ (size!39097 (left!42831 (right!43161 xs!286))) (size!39097 (right!43161 (right!43161 xs!286))))))))

(assert (=> d!1637920 (= (inv!77612 (right!43161 xs!286)) e!3165463)))

(declare-fun b!5073435 () Bool)

(declare-fun res!2160122 () Bool)

(assert (=> b!5073435 (=> (not res!2160122) (not e!3165463))))

(assert (=> b!5073435 (= res!2160122 (and (not (= (left!42831 (right!43161 xs!286)) Empty!15574)) (not (= (right!43161 (right!43161 xs!286)) Empty!15574))))))

(declare-fun b!5073436 () Bool)

(declare-fun res!2160123 () Bool)

(assert (=> b!5073436 (=> (not res!2160123) (not e!3165463))))

(assert (=> b!5073436 (= res!2160123 (= (cheight!15785 (right!43161 xs!286)) (+ (max!0 (height!2151 (left!42831 (right!43161 xs!286))) (height!2151 (right!43161 (right!43161 xs!286)))) 1)))))

(declare-fun b!5073437 () Bool)

(assert (=> b!5073437 (= e!3165463 (<= 0 (cheight!15785 (right!43161 xs!286))))))

(assert (= (and d!1637920 res!2160121) b!5073435))

(assert (= (and b!5073435 res!2160122) b!5073436))

(assert (= (and b!5073436 res!2160123) b!5073437))

(declare-fun m!6120788 () Bool)

(assert (=> d!1637920 m!6120788))

(declare-fun m!6120790 () Bool)

(assert (=> d!1637920 m!6120790))

(assert (=> b!5073436 m!6120666))

(assert (=> b!5073436 m!6120668))

(assert (=> b!5073436 m!6120666))

(assert (=> b!5073436 m!6120668))

(declare-fun m!6120792 () Bool)

(assert (=> b!5073436 m!6120792))

(assert (=> b!5073179 d!1637920))

(declare-fun d!1637922 () Bool)

(declare-fun lt!2089833 () Bool)

(assert (=> d!1637922 (= lt!2089833 (isEmpty!31653 (list!19011 (right!43161 xs!286))))))

(assert (=> d!1637922 (= lt!2089833 (= (size!39097 (right!43161 xs!286)) 0))))

(assert (=> d!1637922 (= (isEmpty!31650 (right!43161 xs!286)) lt!2089833)))

(declare-fun bs!1190265 () Bool)

(assert (= bs!1190265 d!1637922))

(declare-fun m!6120800 () Bool)

(assert (=> bs!1190265 m!6120800))

(assert (=> bs!1190265 m!6120800))

(declare-fun m!6120802 () Bool)

(assert (=> bs!1190265 m!6120802))

(declare-fun m!6120804 () Bool)

(assert (=> bs!1190265 m!6120804))

(assert (=> b!5073220 d!1637922))

(declare-fun d!1637924 () Bool)

(assert (=> d!1637924 (= (height!2151 (left!42831 xs!286)) (ite ((_ is Empty!15574) (left!42831 xs!286)) 0 (ite ((_ is Leaf!25866) (left!42831 xs!286)) 1 (cheight!15785 (left!42831 xs!286)))))))

(assert (=> b!5073219 d!1637924))

(declare-fun d!1637926 () Bool)

(assert (=> d!1637926 (= (height!2151 (right!43161 xs!286)) (ite ((_ is Empty!15574) (right!43161 xs!286)) 0 (ite ((_ is Leaf!25866) (right!43161 xs!286)) 1 (cheight!15785 (right!43161 xs!286)))))))

(assert (=> b!5073219 d!1637926))

(declare-fun b!5073452 () Bool)

(declare-fun e!3165475 () Bool)

(declare-fun e!3165474 () Bool)

(assert (=> b!5073452 (= e!3165475 e!3165474)))

(declare-fun res!2160125 () Bool)

(assert (=> b!5073452 (=> (not res!2160125) (not e!3165474))))

(assert (=> b!5073452 (= res!2160125 (<= (- 1) (- (height!2151 (left!42831 (left!42831 ys!41))) (height!2151 (right!43161 (left!42831 ys!41))))))))

(declare-fun b!5073453 () Bool)

(declare-fun res!2160129 () Bool)

(assert (=> b!5073453 (=> (not res!2160129) (not e!3165474))))

(assert (=> b!5073453 (= res!2160129 (<= (- (height!2151 (left!42831 (left!42831 ys!41))) (height!2151 (right!43161 (left!42831 ys!41)))) 1))))

(declare-fun b!5073454 () Bool)

(assert (=> b!5073454 (= e!3165474 (not (isEmpty!31650 (right!43161 (left!42831 ys!41)))))))

(declare-fun d!1637928 () Bool)

(declare-fun res!2160128 () Bool)

(assert (=> d!1637928 (=> res!2160128 e!3165475)))

(assert (=> d!1637928 (= res!2160128 (not ((_ is Node!15574) (left!42831 ys!41))))))

(assert (=> d!1637928 (= (isBalanced!4436 (left!42831 ys!41)) e!3165475)))

(declare-fun b!5073455 () Bool)

(declare-fun res!2160126 () Bool)

(assert (=> b!5073455 (=> (not res!2160126) (not e!3165474))))

(assert (=> b!5073455 (= res!2160126 (isBalanced!4436 (right!43161 (left!42831 ys!41))))))

(declare-fun b!5073456 () Bool)

(declare-fun res!2160127 () Bool)

(assert (=> b!5073456 (=> (not res!2160127) (not e!3165474))))

(assert (=> b!5073456 (= res!2160127 (not (isEmpty!31650 (left!42831 (left!42831 ys!41)))))))

(declare-fun b!5073457 () Bool)

(declare-fun res!2160124 () Bool)

(assert (=> b!5073457 (=> (not res!2160124) (not e!3165474))))

(assert (=> b!5073457 (= res!2160124 (isBalanced!4436 (left!42831 (left!42831 ys!41))))))

(assert (= (and d!1637928 (not res!2160128)) b!5073452))

(assert (= (and b!5073452 res!2160125) b!5073453))

(assert (= (and b!5073453 res!2160129) b!5073457))

(assert (= (and b!5073457 res!2160124) b!5073455))

(assert (= (and b!5073455 res!2160126) b!5073456))

(assert (= (and b!5073456 res!2160127) b!5073454))

(declare-fun m!6120828 () Bool)

(assert (=> b!5073457 m!6120828))

(declare-fun m!6120832 () Bool)

(assert (=> b!5073454 m!6120832))

(declare-fun m!6120834 () Bool)

(assert (=> b!5073455 m!6120834))

(declare-fun m!6120836 () Bool)

(assert (=> b!5073452 m!6120836))

(declare-fun m!6120838 () Bool)

(assert (=> b!5073452 m!6120838))

(declare-fun m!6120840 () Bool)

(assert (=> b!5073456 m!6120840))

(assert (=> b!5073453 m!6120836))

(assert (=> b!5073453 m!6120838))

(assert (=> b!5073199 d!1637928))

(declare-fun d!1637930 () Bool)

(assert (=> d!1637930 (= (inv!77610 (xs!18934 (left!42831 xs!286))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 xs!286)))) 2147483647))))

(declare-fun bs!1190266 () Bool)

(assert (= bs!1190266 d!1637930))

(declare-fun m!6120848 () Bool)

(assert (=> bs!1190266 m!6120848))

(assert (=> b!5073239 d!1637930))

(assert (=> b!5073218 d!1637924))

(assert (=> b!5073218 d!1637926))

(declare-fun d!1637932 () Bool)

(assert (=> d!1637932 (= (inv!77610 (xs!18934 (right!43161 ys!41))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 ys!41)))) 2147483647))))

(declare-fun bs!1190267 () Bool)

(assert (= bs!1190267 d!1637932))

(declare-fun m!6120850 () Bool)

(assert (=> bs!1190267 m!6120850))

(assert (=> b!5073248 d!1637932))

(declare-fun d!1637934 () Bool)

(declare-fun lt!2089834 () Bool)

(assert (=> d!1637934 (= lt!2089834 (isEmpty!31653 (list!19011 (left!42831 ys!41))))))

(assert (=> d!1637934 (= lt!2089834 (= (size!39097 (left!42831 ys!41)) 0))))

(assert (=> d!1637934 (= (isEmpty!31650 (left!42831 ys!41)) lt!2089834)))

(declare-fun bs!1190268 () Bool)

(assert (= bs!1190268 d!1637934))

(declare-fun m!6120858 () Bool)

(assert (=> bs!1190268 m!6120858))

(assert (=> bs!1190268 m!6120858))

(declare-fun m!6120860 () Bool)

(assert (=> bs!1190268 m!6120860))

(assert (=> bs!1190268 m!6120764))

(assert (=> b!5073198 d!1637934))

(declare-fun d!1637936 () Bool)

(declare-fun c!871092 () Bool)

(assert (=> d!1637936 (= c!871092 ((_ is Node!15574) (left!42831 (left!42831 xs!286))))))

(declare-fun e!3165488 () Bool)

(assert (=> d!1637936 (= (inv!77611 (left!42831 (left!42831 xs!286))) e!3165488)))

(declare-fun b!5073474 () Bool)

(assert (=> b!5073474 (= e!3165488 (inv!77612 (left!42831 (left!42831 xs!286))))))

(declare-fun b!5073475 () Bool)

(declare-fun e!3165489 () Bool)

(assert (=> b!5073475 (= e!3165488 e!3165489)))

(declare-fun res!2160130 () Bool)

(assert (=> b!5073475 (= res!2160130 (not ((_ is Leaf!25866) (left!42831 (left!42831 xs!286)))))))

(assert (=> b!5073475 (=> res!2160130 e!3165489)))

(declare-fun b!5073476 () Bool)

(assert (=> b!5073476 (= e!3165489 (inv!77613 (left!42831 (left!42831 xs!286))))))

(assert (= (and d!1637936 c!871092) b!5073474))

(assert (= (and d!1637936 (not c!871092)) b!5073475))

(assert (= (and b!5073475 (not res!2160130)) b!5073476))

(declare-fun m!6120862 () Bool)

(assert (=> b!5073474 m!6120862))

(declare-fun m!6120864 () Bool)

(assert (=> b!5073476 m!6120864))

(assert (=> b!5073238 d!1637936))

(declare-fun d!1637938 () Bool)

(declare-fun c!871093 () Bool)

(assert (=> d!1637938 (= c!871093 ((_ is Node!15574) (right!43161 (left!42831 xs!286))))))

(declare-fun e!3165490 () Bool)

(assert (=> d!1637938 (= (inv!77611 (right!43161 (left!42831 xs!286))) e!3165490)))

(declare-fun b!5073477 () Bool)

(assert (=> b!5073477 (= e!3165490 (inv!77612 (right!43161 (left!42831 xs!286))))))

(declare-fun b!5073478 () Bool)

(declare-fun e!3165491 () Bool)

(assert (=> b!5073478 (= e!3165490 e!3165491)))

(declare-fun res!2160131 () Bool)

(assert (=> b!5073478 (= res!2160131 (not ((_ is Leaf!25866) (right!43161 (left!42831 xs!286)))))))

(assert (=> b!5073478 (=> res!2160131 e!3165491)))

(declare-fun b!5073479 () Bool)

(assert (=> b!5073479 (= e!3165491 (inv!77613 (right!43161 (left!42831 xs!286))))))

(assert (= (and d!1637938 c!871093) b!5073477))

(assert (= (and d!1637938 (not c!871093)) b!5073478))

(assert (= (and b!5073478 (not res!2160131)) b!5073479))

(declare-fun m!6120866 () Bool)

(assert (=> b!5073477 m!6120866))

(declare-fun m!6120868 () Bool)

(assert (=> b!5073479 m!6120868))

(assert (=> b!5073238 d!1637938))

(declare-fun b!5073480 () Bool)

(declare-fun e!3165493 () Bool)

(declare-fun e!3165492 () Bool)

(assert (=> b!5073480 (= e!3165493 e!3165492)))

(declare-fun res!2160133 () Bool)

(assert (=> b!5073480 (=> (not res!2160133) (not e!3165492))))

(assert (=> b!5073480 (= res!2160133 (<= (- 1) (- (height!2151 (left!42831 (right!43161 ys!41))) (height!2151 (right!43161 (right!43161 ys!41))))))))

(declare-fun b!5073481 () Bool)

(declare-fun res!2160137 () Bool)

(assert (=> b!5073481 (=> (not res!2160137) (not e!3165492))))

(assert (=> b!5073481 (= res!2160137 (<= (- (height!2151 (left!42831 (right!43161 ys!41))) (height!2151 (right!43161 (right!43161 ys!41)))) 1))))

(declare-fun b!5073482 () Bool)

(assert (=> b!5073482 (= e!3165492 (not (isEmpty!31650 (right!43161 (right!43161 ys!41)))))))

(declare-fun d!1637940 () Bool)

(declare-fun res!2160136 () Bool)

(assert (=> d!1637940 (=> res!2160136 e!3165493)))

(assert (=> d!1637940 (= res!2160136 (not ((_ is Node!15574) (right!43161 ys!41))))))

(assert (=> d!1637940 (= (isBalanced!4436 (right!43161 ys!41)) e!3165493)))

(declare-fun b!5073483 () Bool)

(declare-fun res!2160134 () Bool)

(assert (=> b!5073483 (=> (not res!2160134) (not e!3165492))))

(assert (=> b!5073483 (= res!2160134 (isBalanced!4436 (right!43161 (right!43161 ys!41))))))

(declare-fun b!5073484 () Bool)

(declare-fun res!2160135 () Bool)

(assert (=> b!5073484 (=> (not res!2160135) (not e!3165492))))

(assert (=> b!5073484 (= res!2160135 (not (isEmpty!31650 (left!42831 (right!43161 ys!41)))))))

(declare-fun b!5073485 () Bool)

(declare-fun res!2160132 () Bool)

(assert (=> b!5073485 (=> (not res!2160132) (not e!3165492))))

(assert (=> b!5073485 (= res!2160132 (isBalanced!4436 (left!42831 (right!43161 ys!41))))))

(assert (= (and d!1637940 (not res!2160136)) b!5073480))

(assert (= (and b!5073480 res!2160133) b!5073481))

(assert (= (and b!5073481 res!2160137) b!5073485))

(assert (= (and b!5073485 res!2160132) b!5073483))

(assert (= (and b!5073483 res!2160134) b!5073484))

(assert (= (and b!5073484 res!2160135) b!5073482))

(declare-fun m!6120870 () Bool)

(assert (=> b!5073485 m!6120870))

(declare-fun m!6120872 () Bool)

(assert (=> b!5073482 m!6120872))

(declare-fun m!6120874 () Bool)

(assert (=> b!5073483 m!6120874))

(declare-fun m!6120876 () Bool)

(assert (=> b!5073480 m!6120876))

(declare-fun m!6120878 () Bool)

(assert (=> b!5073480 m!6120878))

(declare-fun m!6120880 () Bool)

(assert (=> b!5073484 m!6120880))

(assert (=> b!5073481 m!6120876))

(assert (=> b!5073481 m!6120878))

(assert (=> b!5073197 d!1637940))

(declare-fun d!1637942 () Bool)

(declare-fun c!871094 () Bool)

(assert (=> d!1637942 (= c!871094 ((_ is Node!15574) (left!42831 (right!43161 ys!41))))))

(declare-fun e!3165494 () Bool)

(assert (=> d!1637942 (= (inv!77611 (left!42831 (right!43161 ys!41))) e!3165494)))

(declare-fun b!5073486 () Bool)

(assert (=> b!5073486 (= e!3165494 (inv!77612 (left!42831 (right!43161 ys!41))))))

(declare-fun b!5073487 () Bool)

(declare-fun e!3165495 () Bool)

(assert (=> b!5073487 (= e!3165494 e!3165495)))

(declare-fun res!2160138 () Bool)

(assert (=> b!5073487 (= res!2160138 (not ((_ is Leaf!25866) (left!42831 (right!43161 ys!41)))))))

(assert (=> b!5073487 (=> res!2160138 e!3165495)))

(declare-fun b!5073488 () Bool)

(assert (=> b!5073488 (= e!3165495 (inv!77613 (left!42831 (right!43161 ys!41))))))

(assert (= (and d!1637942 c!871094) b!5073486))

(assert (= (and d!1637942 (not c!871094)) b!5073487))

(assert (= (and b!5073487 (not res!2160138)) b!5073488))

(declare-fun m!6120882 () Bool)

(assert (=> b!5073486 m!6120882))

(declare-fun m!6120884 () Bool)

(assert (=> b!5073488 m!6120884))

(assert (=> b!5073247 d!1637942))

(declare-fun d!1637944 () Bool)

(declare-fun c!871095 () Bool)

(assert (=> d!1637944 (= c!871095 ((_ is Node!15574) (right!43161 (right!43161 ys!41))))))

(declare-fun e!3165496 () Bool)

(assert (=> d!1637944 (= (inv!77611 (right!43161 (right!43161 ys!41))) e!3165496)))

(declare-fun b!5073489 () Bool)

(assert (=> b!5073489 (= e!3165496 (inv!77612 (right!43161 (right!43161 ys!41))))))

(declare-fun b!5073490 () Bool)

(declare-fun e!3165497 () Bool)

(assert (=> b!5073490 (= e!3165496 e!3165497)))

(declare-fun res!2160139 () Bool)

(assert (=> b!5073490 (= res!2160139 (not ((_ is Leaf!25866) (right!43161 (right!43161 ys!41)))))))

(assert (=> b!5073490 (=> res!2160139 e!3165497)))

(declare-fun b!5073491 () Bool)

(assert (=> b!5073491 (= e!3165497 (inv!77613 (right!43161 (right!43161 ys!41))))))

(assert (= (and d!1637944 c!871095) b!5073489))

(assert (= (and d!1637944 (not c!871095)) b!5073490))

(assert (= (and b!5073490 (not res!2160139)) b!5073491))

(declare-fun m!6120886 () Bool)

(assert (=> b!5073489 m!6120886))

(declare-fun m!6120888 () Bool)

(assert (=> b!5073491 m!6120888))

(assert (=> b!5073247 d!1637944))

(declare-fun d!1637946 () Bool)

(declare-fun lt!2089835 () Bool)

(assert (=> d!1637946 (= lt!2089835 (isEmpty!31653 (list!19011 (right!43161 ys!41))))))

(assert (=> d!1637946 (= lt!2089835 (= (size!39097 (right!43161 ys!41)) 0))))

(assert (=> d!1637946 (= (isEmpty!31650 (right!43161 ys!41)) lt!2089835)))

(declare-fun bs!1190269 () Bool)

(assert (= bs!1190269 d!1637946))

(declare-fun m!6120890 () Bool)

(assert (=> bs!1190269 m!6120890))

(assert (=> bs!1190269 m!6120890))

(declare-fun m!6120892 () Bool)

(assert (=> bs!1190269 m!6120892))

(assert (=> bs!1190269 m!6120770))

(assert (=> b!5073196 d!1637946))

(declare-fun d!1637948 () Bool)

(declare-fun lt!2089838 () Int)

(assert (=> d!1637948 (>= lt!2089838 0)))

(declare-fun e!3165500 () Int)

(assert (=> d!1637948 (= lt!2089838 e!3165500)))

(declare-fun c!871098 () Bool)

(assert (=> d!1637948 (= c!871098 ((_ is Nil!58444) (innerList!15662 (xs!18934 xs!286))))))

(assert (=> d!1637948 (= (size!39095 (innerList!15662 (xs!18934 xs!286))) lt!2089838)))

(declare-fun b!5073496 () Bool)

(assert (=> b!5073496 (= e!3165500 0)))

(declare-fun b!5073497 () Bool)

(assert (=> b!5073497 (= e!3165500 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 xs!286))))))))

(assert (= (and d!1637948 c!871098) b!5073496))

(assert (= (and d!1637948 (not c!871098)) b!5073497))

(declare-fun m!6120894 () Bool)

(assert (=> b!5073497 m!6120894))

(assert (=> d!1637796 d!1637948))

(assert (=> b!5073195 d!1637782))

(assert (=> b!5073195 d!1637780))

(declare-fun d!1637950 () Bool)

(declare-fun res!2160140 () Bool)

(declare-fun e!3165501 () Bool)

(assert (=> d!1637950 (=> (not res!2160140) (not e!3165501))))

(assert (=> d!1637950 (= res!2160140 (<= (size!39095 (list!19010 (xs!18934 (left!42831 ys!41)))) 512))))

(assert (=> d!1637950 (= (inv!77613 (left!42831 ys!41)) e!3165501)))

(declare-fun b!5073498 () Bool)

(declare-fun res!2160141 () Bool)

(assert (=> b!5073498 (=> (not res!2160141) (not e!3165501))))

(assert (=> b!5073498 (= res!2160141 (= (csize!31379 (left!42831 ys!41)) (size!39095 (list!19010 (xs!18934 (left!42831 ys!41))))))))

(declare-fun b!5073499 () Bool)

(assert (=> b!5073499 (= e!3165501 (and (> (csize!31379 (left!42831 ys!41)) 0) (<= (csize!31379 (left!42831 ys!41)) 512)))))

(assert (= (and d!1637950 res!2160140) b!5073498))

(assert (= (and b!5073498 res!2160141) b!5073499))

(declare-fun m!6120896 () Bool)

(assert (=> d!1637950 m!6120896))

(assert (=> d!1637950 m!6120896))

(declare-fun m!6120898 () Bool)

(assert (=> d!1637950 m!6120898))

(assert (=> b!5073498 m!6120896))

(assert (=> b!5073498 m!6120896))

(assert (=> b!5073498 m!6120898))

(assert (=> b!5073202 d!1637950))

(assert (=> b!5073194 d!1637782))

(assert (=> b!5073194 d!1637780))

(assert (=> b!5073169 d!1637776))

(assert (=> b!5073169 d!1637778))

(declare-fun d!1637952 () Bool)

(declare-fun res!2160142 () Bool)

(declare-fun e!3165502 () Bool)

(assert (=> d!1637952 (=> (not res!2160142) (not e!3165502))))

(assert (=> d!1637952 (= res!2160142 (= (csize!31378 (left!42831 ys!41)) (+ (size!39097 (left!42831 (left!42831 ys!41))) (size!39097 (right!43161 (left!42831 ys!41))))))))

(assert (=> d!1637952 (= (inv!77612 (left!42831 ys!41)) e!3165502)))

(declare-fun b!5073500 () Bool)

(declare-fun res!2160143 () Bool)

(assert (=> b!5073500 (=> (not res!2160143) (not e!3165502))))

(assert (=> b!5073500 (= res!2160143 (and (not (= (left!42831 (left!42831 ys!41)) Empty!15574)) (not (= (right!43161 (left!42831 ys!41)) Empty!15574))))))

(declare-fun b!5073501 () Bool)

(declare-fun res!2160144 () Bool)

(assert (=> b!5073501 (=> (not res!2160144) (not e!3165502))))

(assert (=> b!5073501 (= res!2160144 (= (cheight!15785 (left!42831 ys!41)) (+ (max!0 (height!2151 (left!42831 (left!42831 ys!41))) (height!2151 (right!43161 (left!42831 ys!41)))) 1)))))

(declare-fun b!5073502 () Bool)

(assert (=> b!5073502 (= e!3165502 (<= 0 (cheight!15785 (left!42831 ys!41))))))

(assert (= (and d!1637952 res!2160142) b!5073500))

(assert (= (and b!5073500 res!2160143) b!5073501))

(assert (= (and b!5073501 res!2160144) b!5073502))

(declare-fun m!6120900 () Bool)

(assert (=> d!1637952 m!6120900))

(declare-fun m!6120902 () Bool)

(assert (=> d!1637952 m!6120902))

(assert (=> b!5073501 m!6120836))

(assert (=> b!5073501 m!6120838))

(assert (=> b!5073501 m!6120836))

(assert (=> b!5073501 m!6120838))

(declare-fun m!6120904 () Bool)

(assert (=> b!5073501 m!6120904))

(assert (=> b!5073200 d!1637952))

(declare-fun d!1637954 () Bool)

(assert (=> d!1637954 (= (inv!77610 (xs!18934 (right!43161 xs!286))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 xs!286)))) 2147483647))))

(declare-fun bs!1190270 () Bool)

(assert (= bs!1190270 d!1637954))

(declare-fun m!6120906 () Bool)

(assert (=> bs!1190270 m!6120906))

(assert (=> b!5073242 d!1637954))

(assert (=> b!5073168 d!1637788))

(assert (=> b!5073168 d!1637790))

(declare-fun d!1637956 () Bool)

(declare-fun c!871099 () Bool)

(assert (=> d!1637956 (= c!871099 ((_ is Node!15574) (left!42831 (right!43161 xs!286))))))

(declare-fun e!3165503 () Bool)

(assert (=> d!1637956 (= (inv!77611 (left!42831 (right!43161 xs!286))) e!3165503)))

(declare-fun b!5073503 () Bool)

(assert (=> b!5073503 (= e!3165503 (inv!77612 (left!42831 (right!43161 xs!286))))))

(declare-fun b!5073504 () Bool)

(declare-fun e!3165504 () Bool)

(assert (=> b!5073504 (= e!3165503 e!3165504)))

(declare-fun res!2160145 () Bool)

(assert (=> b!5073504 (= res!2160145 (not ((_ is Leaf!25866) (left!42831 (right!43161 xs!286)))))))

(assert (=> b!5073504 (=> res!2160145 e!3165504)))

(declare-fun b!5073505 () Bool)

(assert (=> b!5073505 (= e!3165504 (inv!77613 (left!42831 (right!43161 xs!286))))))

(assert (= (and d!1637956 c!871099) b!5073503))

(assert (= (and d!1637956 (not c!871099)) b!5073504))

(assert (= (and b!5073504 (not res!2160145)) b!5073505))

(declare-fun m!6120908 () Bool)

(assert (=> b!5073503 m!6120908))

(declare-fun m!6120910 () Bool)

(assert (=> b!5073505 m!6120910))

(assert (=> b!5073241 d!1637956))

(declare-fun d!1637958 () Bool)

(declare-fun c!871100 () Bool)

(assert (=> d!1637958 (= c!871100 ((_ is Node!15574) (right!43161 (right!43161 xs!286))))))

(declare-fun e!3165505 () Bool)

(assert (=> d!1637958 (= (inv!77611 (right!43161 (right!43161 xs!286))) e!3165505)))

(declare-fun b!5073506 () Bool)

(assert (=> b!5073506 (= e!3165505 (inv!77612 (right!43161 (right!43161 xs!286))))))

(declare-fun b!5073507 () Bool)

(declare-fun e!3165506 () Bool)

(assert (=> b!5073507 (= e!3165505 e!3165506)))

(declare-fun res!2160146 () Bool)

(assert (=> b!5073507 (= res!2160146 (not ((_ is Leaf!25866) (right!43161 (right!43161 xs!286)))))))

(assert (=> b!5073507 (=> res!2160146 e!3165506)))

(declare-fun b!5073508 () Bool)

(assert (=> b!5073508 (= e!3165506 (inv!77613 (right!43161 (right!43161 xs!286))))))

(assert (= (and d!1637958 c!871100) b!5073506))

(assert (= (and d!1637958 (not c!871100)) b!5073507))

(assert (= (and b!5073507 (not res!2160146)) b!5073508))

(declare-fun m!6120912 () Bool)

(assert (=> b!5073506 m!6120912))

(declare-fun m!6120914 () Bool)

(assert (=> b!5073508 m!6120914))

(assert (=> b!5073241 d!1637958))

(declare-fun d!1637960 () Bool)

(declare-fun res!2160147 () Bool)

(declare-fun e!3165507 () Bool)

(assert (=> d!1637960 (=> (not res!2160147) (not e!3165507))))

(assert (=> d!1637960 (= res!2160147 (<= (size!39095 (list!19010 (xs!18934 (left!42831 xs!286)))) 512))))

(assert (=> d!1637960 (= (inv!77613 (left!42831 xs!286)) e!3165507)))

(declare-fun b!5073509 () Bool)

(declare-fun res!2160148 () Bool)

(assert (=> b!5073509 (=> (not res!2160148) (not e!3165507))))

(assert (=> b!5073509 (= res!2160148 (= (csize!31379 (left!42831 xs!286)) (size!39095 (list!19010 (xs!18934 (left!42831 xs!286))))))))

(declare-fun b!5073510 () Bool)

(assert (=> b!5073510 (= e!3165507 (and (> (csize!31379 (left!42831 xs!286)) 0) (<= (csize!31379 (left!42831 xs!286)) 512)))))

(assert (= (and d!1637960 res!2160147) b!5073509))

(assert (= (and b!5073509 res!2160148) b!5073510))

(declare-fun m!6120916 () Bool)

(assert (=> d!1637960 m!6120916))

(assert (=> d!1637960 m!6120916))

(declare-fun m!6120918 () Bool)

(assert (=> d!1637960 m!6120918))

(assert (=> b!5073509 m!6120916))

(assert (=> b!5073509 m!6120916))

(assert (=> b!5073509 m!6120918))

(assert (=> b!5073178 d!1637960))

(declare-fun d!1637962 () Bool)

(declare-fun lt!2089839 () Int)

(assert (=> d!1637962 (>= lt!2089839 0)))

(declare-fun e!3165508 () Int)

(assert (=> d!1637962 (= lt!2089839 e!3165508)))

(declare-fun c!871101 () Bool)

(assert (=> d!1637962 (= c!871101 ((_ is Nil!58444) (innerList!15662 (xs!18934 ys!41))))))

(assert (=> d!1637962 (= (size!39095 (innerList!15662 (xs!18934 ys!41))) lt!2089839)))

(declare-fun b!5073511 () Bool)

(assert (=> b!5073511 (= e!3165508 0)))

(declare-fun b!5073512 () Bool)

(assert (=> b!5073512 (= e!3165508 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 ys!41))))))))

(assert (= (and d!1637962 c!871101) b!5073511))

(assert (= (and d!1637962 (not c!871101)) b!5073512))

(declare-fun m!6120920 () Bool)

(assert (=> b!5073512 m!6120920))

(assert (=> d!1637814 d!1637962))

(declare-fun d!1637964 () Bool)

(declare-fun res!2160149 () Bool)

(declare-fun e!3165509 () Bool)

(assert (=> d!1637964 (=> (not res!2160149) (not e!3165509))))

(assert (=> d!1637964 (= res!2160149 (<= (size!39095 (list!19010 (xs!18934 xs!286))) 512))))

(assert (=> d!1637964 (= (inv!77613 xs!286) e!3165509)))

(declare-fun b!5073513 () Bool)

(declare-fun res!2160150 () Bool)

(assert (=> b!5073513 (=> (not res!2160150) (not e!3165509))))

(assert (=> b!5073513 (= res!2160150 (= (csize!31379 xs!286) (size!39095 (list!19010 (xs!18934 xs!286)))))))

(declare-fun b!5073514 () Bool)

(assert (=> b!5073514 (= e!3165509 (and (> (csize!31379 xs!286) 0) (<= (csize!31379 xs!286) 512)))))

(assert (= (and d!1637964 res!2160149) b!5073513))

(assert (= (and b!5073513 res!2160150) b!5073514))

(declare-fun m!6120922 () Bool)

(assert (=> d!1637964 m!6120922))

(assert (=> d!1637964 m!6120922))

(declare-fun m!6120924 () Bool)

(assert (=> d!1637964 m!6120924))

(assert (=> b!5073513 m!6120922))

(assert (=> b!5073513 m!6120922))

(assert (=> b!5073513 m!6120924))

(assert (=> b!5073226 d!1637964))

(declare-fun d!1637966 () Bool)

(declare-fun res!2160151 () Bool)

(declare-fun e!3165510 () Bool)

(assert (=> d!1637966 (=> (not res!2160151) (not e!3165510))))

(assert (=> d!1637966 (= res!2160151 (= (csize!31378 (left!42831 xs!286)) (+ (size!39097 (left!42831 (left!42831 xs!286))) (size!39097 (right!43161 (left!42831 xs!286))))))))

(assert (=> d!1637966 (= (inv!77612 (left!42831 xs!286)) e!3165510)))

(declare-fun b!5073515 () Bool)

(declare-fun res!2160152 () Bool)

(assert (=> b!5073515 (=> (not res!2160152) (not e!3165510))))

(assert (=> b!5073515 (= res!2160152 (and (not (= (left!42831 (left!42831 xs!286)) Empty!15574)) (not (= (right!43161 (left!42831 xs!286)) Empty!15574))))))

(declare-fun b!5073516 () Bool)

(declare-fun res!2160153 () Bool)

(assert (=> b!5073516 (=> (not res!2160153) (not e!3165510))))

(assert (=> b!5073516 (= res!2160153 (= (cheight!15785 (left!42831 xs!286)) (+ (max!0 (height!2151 (left!42831 (left!42831 xs!286))) (height!2151 (right!43161 (left!42831 xs!286)))) 1)))))

(declare-fun b!5073517 () Bool)

(assert (=> b!5073517 (= e!3165510 (<= 0 (cheight!15785 (left!42831 xs!286))))))

(assert (= (and d!1637966 res!2160151) b!5073515))

(assert (= (and b!5073515 res!2160152) b!5073516))

(assert (= (and b!5073516 res!2160153) b!5073517))

(declare-fun m!6120926 () Bool)

(assert (=> d!1637966 m!6120926))

(declare-fun m!6120928 () Bool)

(assert (=> d!1637966 m!6120928))

(declare-fun m!6120930 () Bool)

(assert (=> b!5073516 m!6120930))

(declare-fun m!6120932 () Bool)

(assert (=> b!5073516 m!6120932))

(assert (=> b!5073516 m!6120930))

(assert (=> b!5073516 m!6120932))

(declare-fun m!6120934 () Bool)

(assert (=> b!5073516 m!6120934))

(assert (=> b!5073176 d!1637966))

(declare-fun d!1637968 () Bool)

(declare-fun res!2160154 () Bool)

(declare-fun e!3165511 () Bool)

(assert (=> d!1637968 (=> (not res!2160154) (not e!3165511))))

(assert (=> d!1637968 (= res!2160154 (<= (size!39095 (list!19010 (xs!18934 (right!43161 ys!41)))) 512))))

(assert (=> d!1637968 (= (inv!77613 (right!43161 ys!41)) e!3165511)))

(declare-fun b!5073518 () Bool)

(declare-fun res!2160155 () Bool)

(assert (=> b!5073518 (=> (not res!2160155) (not e!3165511))))

(assert (=> b!5073518 (= res!2160155 (= (csize!31379 (right!43161 ys!41)) (size!39095 (list!19010 (xs!18934 (right!43161 ys!41))))))))

(declare-fun b!5073519 () Bool)

(assert (=> b!5073519 (= e!3165511 (and (> (csize!31379 (right!43161 ys!41)) 0) (<= (csize!31379 (right!43161 ys!41)) 512)))))

(assert (= (and d!1637968 res!2160154) b!5073518))

(assert (= (and b!5073518 res!2160155) b!5073519))

(declare-fun m!6120936 () Bool)

(assert (=> d!1637968 m!6120936))

(assert (=> d!1637968 m!6120936))

(declare-fun m!6120938 () Bool)

(assert (=> d!1637968 m!6120938))

(assert (=> b!5073518 m!6120936))

(assert (=> b!5073518 m!6120936))

(assert (=> b!5073518 m!6120938))

(assert (=> b!5073205 d!1637968))

(declare-fun d!1637970 () Bool)

(declare-fun res!2160156 () Bool)

(declare-fun e!3165512 () Bool)

(assert (=> d!1637970 (=> (not res!2160156) (not e!3165512))))

(assert (=> d!1637970 (= res!2160156 (= (csize!31378 xs!286) (+ (size!39097 (left!42831 xs!286)) (size!39097 (right!43161 xs!286)))))))

(assert (=> d!1637970 (= (inv!77612 xs!286) e!3165512)))

(declare-fun b!5073520 () Bool)

(declare-fun res!2160157 () Bool)

(assert (=> b!5073520 (=> (not res!2160157) (not e!3165512))))

(assert (=> b!5073520 (= res!2160157 (and (not (= (left!42831 xs!286) Empty!15574)) (not (= (right!43161 xs!286) Empty!15574))))))

(declare-fun b!5073521 () Bool)

(declare-fun res!2160158 () Bool)

(assert (=> b!5073521 (=> (not res!2160158) (not e!3165512))))

(assert (=> b!5073521 (= res!2160158 (= (cheight!15785 xs!286) (+ (max!0 (height!2151 (left!42831 xs!286)) (height!2151 (right!43161 xs!286))) 1)))))

(declare-fun b!5073522 () Bool)

(assert (=> b!5073522 (= e!3165512 (<= 0 (cheight!15785 xs!286)))))

(assert (= (and d!1637970 res!2160156) b!5073520))

(assert (= (and b!5073520 res!2160157) b!5073521))

(assert (= (and b!5073521 res!2160158) b!5073522))

(assert (=> d!1637970 m!6120658))

(assert (=> d!1637970 m!6120804))

(assert (=> b!5073521 m!6120482))

(assert (=> b!5073521 m!6120484))

(assert (=> b!5073521 m!6120482))

(assert (=> b!5073521 m!6120484))

(declare-fun m!6120940 () Bool)

(assert (=> b!5073521 m!6120940))

(assert (=> b!5073224 d!1637970))

(declare-fun d!1637972 () Bool)

(declare-fun res!2160159 () Bool)

(declare-fun e!3165513 () Bool)

(assert (=> d!1637972 (=> (not res!2160159) (not e!3165513))))

(assert (=> d!1637972 (= res!2160159 (= (csize!31378 (right!43161 ys!41)) (+ (size!39097 (left!42831 (right!43161 ys!41))) (size!39097 (right!43161 (right!43161 ys!41))))))))

(assert (=> d!1637972 (= (inv!77612 (right!43161 ys!41)) e!3165513)))

(declare-fun b!5073523 () Bool)

(declare-fun res!2160160 () Bool)

(assert (=> b!5073523 (=> (not res!2160160) (not e!3165513))))

(assert (=> b!5073523 (= res!2160160 (and (not (= (left!42831 (right!43161 ys!41)) Empty!15574)) (not (= (right!43161 (right!43161 ys!41)) Empty!15574))))))

(declare-fun b!5073524 () Bool)

(declare-fun res!2160161 () Bool)

(assert (=> b!5073524 (=> (not res!2160161) (not e!3165513))))

(assert (=> b!5073524 (= res!2160161 (= (cheight!15785 (right!43161 ys!41)) (+ (max!0 (height!2151 (left!42831 (right!43161 ys!41))) (height!2151 (right!43161 (right!43161 ys!41)))) 1)))))

(declare-fun b!5073525 () Bool)

(assert (=> b!5073525 (= e!3165513 (<= 0 (cheight!15785 (right!43161 ys!41))))))

(assert (= (and d!1637972 res!2160159) b!5073523))

(assert (= (and b!5073523 res!2160160) b!5073524))

(assert (= (and b!5073524 res!2160161) b!5073525))

(declare-fun m!6120942 () Bool)

(assert (=> d!1637972 m!6120942))

(declare-fun m!6120944 () Bool)

(assert (=> d!1637972 m!6120944))

(assert (=> b!5073524 m!6120876))

(assert (=> b!5073524 m!6120878))

(assert (=> b!5073524 m!6120876))

(assert (=> b!5073524 m!6120878))

(declare-fun m!6120946 () Bool)

(assert (=> b!5073524 m!6120946))

(assert (=> b!5073203 d!1637972))

(declare-fun d!1637974 () Bool)

(assert (=> d!1637974 (= (inv!77610 (xs!18934 (left!42831 ys!41))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 ys!41)))) 2147483647))))

(declare-fun bs!1190271 () Bool)

(assert (= bs!1190271 d!1637974))

(declare-fun m!6120948 () Bool)

(assert (=> bs!1190271 m!6120948))

(assert (=> b!5073245 d!1637974))

(declare-fun b!5073526 () Bool)

(declare-fun e!3165515 () Bool)

(declare-fun e!3165514 () Bool)

(assert (=> b!5073526 (= e!3165515 e!3165514)))

(declare-fun res!2160163 () Bool)

(assert (=> b!5073526 (=> (not res!2160163) (not e!3165514))))

(assert (=> b!5073526 (= res!2160163 (<= (- 1) (- (height!2151 (left!42831 (left!42831 xs!286))) (height!2151 (right!43161 (left!42831 xs!286))))))))

(declare-fun b!5073527 () Bool)

(declare-fun res!2160167 () Bool)

(assert (=> b!5073527 (=> (not res!2160167) (not e!3165514))))

(assert (=> b!5073527 (= res!2160167 (<= (- (height!2151 (left!42831 (left!42831 xs!286))) (height!2151 (right!43161 (left!42831 xs!286)))) 1))))

(declare-fun b!5073528 () Bool)

(assert (=> b!5073528 (= e!3165514 (not (isEmpty!31650 (right!43161 (left!42831 xs!286)))))))

(declare-fun d!1637976 () Bool)

(declare-fun res!2160166 () Bool)

(assert (=> d!1637976 (=> res!2160166 e!3165515)))

(assert (=> d!1637976 (= res!2160166 (not ((_ is Node!15574) (left!42831 xs!286))))))

(assert (=> d!1637976 (= (isBalanced!4436 (left!42831 xs!286)) e!3165515)))

(declare-fun b!5073529 () Bool)

(declare-fun res!2160164 () Bool)

(assert (=> b!5073529 (=> (not res!2160164) (not e!3165514))))

(assert (=> b!5073529 (= res!2160164 (isBalanced!4436 (right!43161 (left!42831 xs!286))))))

(declare-fun b!5073530 () Bool)

(declare-fun res!2160165 () Bool)

(assert (=> b!5073530 (=> (not res!2160165) (not e!3165514))))

(assert (=> b!5073530 (= res!2160165 (not (isEmpty!31650 (left!42831 (left!42831 xs!286)))))))

(declare-fun b!5073531 () Bool)

(declare-fun res!2160162 () Bool)

(assert (=> b!5073531 (=> (not res!2160162) (not e!3165514))))

(assert (=> b!5073531 (= res!2160162 (isBalanced!4436 (left!42831 (left!42831 xs!286))))))

(assert (= (and d!1637976 (not res!2160166)) b!5073526))

(assert (= (and b!5073526 res!2160163) b!5073527))

(assert (= (and b!5073527 res!2160167) b!5073531))

(assert (= (and b!5073531 res!2160162) b!5073529))

(assert (= (and b!5073529 res!2160164) b!5073530))

(assert (= (and b!5073530 res!2160165) b!5073528))

(declare-fun m!6120950 () Bool)

(assert (=> b!5073531 m!6120950))

(declare-fun m!6120952 () Bool)

(assert (=> b!5073528 m!6120952))

(declare-fun m!6120954 () Bool)

(assert (=> b!5073529 m!6120954))

(assert (=> b!5073526 m!6120930))

(assert (=> b!5073526 m!6120932))

(declare-fun m!6120956 () Bool)

(assert (=> b!5073530 m!6120956))

(assert (=> b!5073527 m!6120930))

(assert (=> b!5073527 m!6120932))

(assert (=> b!5073223 d!1637976))

(declare-fun d!1637978 () Bool)

(declare-fun c!871102 () Bool)

(assert (=> d!1637978 (= c!871102 ((_ is Node!15574) (left!42831 (left!42831 ys!41))))))

(declare-fun e!3165516 () Bool)

(assert (=> d!1637978 (= (inv!77611 (left!42831 (left!42831 ys!41))) e!3165516)))

(declare-fun b!5073532 () Bool)

(assert (=> b!5073532 (= e!3165516 (inv!77612 (left!42831 (left!42831 ys!41))))))

(declare-fun b!5073533 () Bool)

(declare-fun e!3165517 () Bool)

(assert (=> b!5073533 (= e!3165516 e!3165517)))

(declare-fun res!2160168 () Bool)

(assert (=> b!5073533 (= res!2160168 (not ((_ is Leaf!25866) (left!42831 (left!42831 ys!41)))))))

(assert (=> b!5073533 (=> res!2160168 e!3165517)))

(declare-fun b!5073534 () Bool)

(assert (=> b!5073534 (= e!3165517 (inv!77613 (left!42831 (left!42831 ys!41))))))

(assert (= (and d!1637978 c!871102) b!5073532))

(assert (= (and d!1637978 (not c!871102)) b!5073533))

(assert (= (and b!5073533 (not res!2160168)) b!5073534))

(declare-fun m!6120958 () Bool)

(assert (=> b!5073532 m!6120958))

(declare-fun m!6120960 () Bool)

(assert (=> b!5073534 m!6120960))

(assert (=> b!5073244 d!1637978))

(declare-fun d!1637980 () Bool)

(declare-fun c!871103 () Bool)

(assert (=> d!1637980 (= c!871103 ((_ is Node!15574) (right!43161 (left!42831 ys!41))))))

(declare-fun e!3165518 () Bool)

(assert (=> d!1637980 (= (inv!77611 (right!43161 (left!42831 ys!41))) e!3165518)))

(declare-fun b!5073535 () Bool)

(assert (=> b!5073535 (= e!3165518 (inv!77612 (right!43161 (left!42831 ys!41))))))

(declare-fun b!5073536 () Bool)

(declare-fun e!3165519 () Bool)

(assert (=> b!5073536 (= e!3165518 e!3165519)))

(declare-fun res!2160169 () Bool)

(assert (=> b!5073536 (= res!2160169 (not ((_ is Leaf!25866) (right!43161 (left!42831 ys!41)))))))

(assert (=> b!5073536 (=> res!2160169 e!3165519)))

(declare-fun b!5073537 () Bool)

(assert (=> b!5073537 (= e!3165519 (inv!77613 (right!43161 (left!42831 ys!41))))))

(assert (= (and d!1637980 c!871103) b!5073535))

(assert (= (and d!1637980 (not c!871103)) b!5073536))

(assert (= (and b!5073536 (not res!2160169)) b!5073537))

(declare-fun m!6120962 () Bool)

(assert (=> b!5073535 m!6120962))

(declare-fun m!6120964 () Bool)

(assert (=> b!5073537 m!6120964))

(assert (=> b!5073244 d!1637980))

(declare-fun d!1637982 () Bool)

(declare-fun res!2160170 () Bool)

(declare-fun e!3165520 () Bool)

(assert (=> d!1637982 (=> (not res!2160170) (not e!3165520))))

(assert (=> d!1637982 (= res!2160170 (<= (size!39095 (list!19010 (xs!18934 ys!41))) 512))))

(assert (=> d!1637982 (= (inv!77613 ys!41) e!3165520)))

(declare-fun b!5073538 () Bool)

(declare-fun res!2160171 () Bool)

(assert (=> b!5073538 (=> (not res!2160171) (not e!3165520))))

(assert (=> b!5073538 (= res!2160171 (= (csize!31379 ys!41) (size!39095 (list!19010 (xs!18934 ys!41)))))))

(declare-fun b!5073539 () Bool)

(assert (=> b!5073539 (= e!3165520 (and (> (csize!31379 ys!41) 0) (<= (csize!31379 ys!41) 512)))))

(assert (= (and d!1637982 res!2160170) b!5073538))

(assert (= (and b!5073538 res!2160171) b!5073539))

(declare-fun m!6120966 () Bool)

(assert (=> d!1637982 m!6120966))

(assert (=> d!1637982 m!6120966))

(declare-fun m!6120968 () Bool)

(assert (=> d!1637982 m!6120968))

(assert (=> b!5073538 m!6120966))

(assert (=> b!5073538 m!6120966))

(assert (=> b!5073538 m!6120968))

(assert (=> b!5073229 d!1637982))

(declare-fun b!5073540 () Bool)

(declare-fun e!3165521 () Bool)

(declare-fun tp!1416062 () Bool)

(assert (=> b!5073540 (= e!3165521 (and tp_is_empty!37069 tp!1416062))))

(assert (=> b!5073267 (= tp!1416009 e!3165521)))

(assert (= (and b!5073267 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 xs!286))))) b!5073540))

(declare-fun tp!1416065 () Bool)

(declare-fun e!3165522 () Bool)

(declare-fun b!5073541 () Bool)

(declare-fun tp!1416064 () Bool)

(assert (=> b!5073541 (= e!3165522 (and (inv!77611 (left!42831 (left!42831 (left!42831 xs!286)))) tp!1416064 (inv!77611 (right!43161 (left!42831 (left!42831 xs!286)))) tp!1416065))))

(declare-fun b!5073543 () Bool)

(declare-fun e!3165523 () Bool)

(declare-fun tp!1416063 () Bool)

(assert (=> b!5073543 (= e!3165523 tp!1416063)))

(declare-fun b!5073542 () Bool)

(assert (=> b!5073542 (= e!3165522 (and (inv!77610 (xs!18934 (left!42831 (left!42831 xs!286)))) e!3165523))))

(assert (=> b!5073238 (= tp!1415995 (and (inv!77611 (left!42831 (left!42831 xs!286))) e!3165522))))

(assert (= (and b!5073238 ((_ is Node!15574) (left!42831 (left!42831 xs!286)))) b!5073541))

(assert (= b!5073542 b!5073543))

(assert (= (and b!5073238 ((_ is Leaf!25866) (left!42831 (left!42831 xs!286)))) b!5073542))

(declare-fun m!6120970 () Bool)

(assert (=> b!5073541 m!6120970))

(declare-fun m!6120972 () Bool)

(assert (=> b!5073541 m!6120972))

(declare-fun m!6120974 () Bool)

(assert (=> b!5073542 m!6120974))

(assert (=> b!5073238 m!6120500))

(declare-fun tp!1416068 () Bool)

(declare-fun e!3165524 () Bool)

(declare-fun tp!1416067 () Bool)

(declare-fun b!5073544 () Bool)

(assert (=> b!5073544 (= e!3165524 (and (inv!77611 (left!42831 (right!43161 (left!42831 xs!286)))) tp!1416067 (inv!77611 (right!43161 (right!43161 (left!42831 xs!286)))) tp!1416068))))

(declare-fun b!5073546 () Bool)

(declare-fun e!3165525 () Bool)

(declare-fun tp!1416066 () Bool)

(assert (=> b!5073546 (= e!3165525 tp!1416066)))

(declare-fun b!5073545 () Bool)

(assert (=> b!5073545 (= e!3165524 (and (inv!77610 (xs!18934 (right!43161 (left!42831 xs!286)))) e!3165525))))

(assert (=> b!5073238 (= tp!1415996 (and (inv!77611 (right!43161 (left!42831 xs!286))) e!3165524))))

(assert (= (and b!5073238 ((_ is Node!15574) (right!43161 (left!42831 xs!286)))) b!5073544))

(assert (= b!5073545 b!5073546))

(assert (= (and b!5073238 ((_ is Leaf!25866) (right!43161 (left!42831 xs!286)))) b!5073545))

(declare-fun m!6120976 () Bool)

(assert (=> b!5073544 m!6120976))

(declare-fun m!6120978 () Bool)

(assert (=> b!5073544 m!6120978))

(declare-fun m!6120980 () Bool)

(assert (=> b!5073545 m!6120980))

(assert (=> b!5073238 m!6120502))

(declare-fun b!5073547 () Bool)

(declare-fun e!3165526 () Bool)

(declare-fun tp!1416069 () Bool)

(assert (=> b!5073547 (= e!3165526 (and tp_is_empty!37069 tp!1416069))))

(assert (=> b!5073243 (= tp!1415997 e!3165526)))

(assert (= (and b!5073243 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 xs!286))))) b!5073547))

(declare-fun e!3165527 () Bool)

(declare-fun tp!1416072 () Bool)

(declare-fun tp!1416071 () Bool)

(declare-fun b!5073548 () Bool)

(assert (=> b!5073548 (= e!3165527 (and (inv!77611 (left!42831 (left!42831 (right!43161 ys!41)))) tp!1416071 (inv!77611 (right!43161 (left!42831 (right!43161 ys!41)))) tp!1416072))))

(declare-fun b!5073550 () Bool)

(declare-fun e!3165528 () Bool)

(declare-fun tp!1416070 () Bool)

(assert (=> b!5073550 (= e!3165528 tp!1416070)))

(declare-fun b!5073549 () Bool)

(assert (=> b!5073549 (= e!3165527 (and (inv!77610 (xs!18934 (left!42831 (right!43161 ys!41)))) e!3165528))))

(assert (=> b!5073247 (= tp!1416004 (and (inv!77611 (left!42831 (right!43161 ys!41))) e!3165527))))

(assert (= (and b!5073247 ((_ is Node!15574) (left!42831 (right!43161 ys!41)))) b!5073548))

(assert (= b!5073549 b!5073550))

(assert (= (and b!5073247 ((_ is Leaf!25866) (left!42831 (right!43161 ys!41)))) b!5073549))

(declare-fun m!6120982 () Bool)

(assert (=> b!5073548 m!6120982))

(declare-fun m!6120984 () Bool)

(assert (=> b!5073548 m!6120984))

(declare-fun m!6120986 () Bool)

(assert (=> b!5073549 m!6120986))

(assert (=> b!5073247 m!6120518))

(declare-fun tp!1416074 () Bool)

(declare-fun b!5073551 () Bool)

(declare-fun e!3165529 () Bool)

(declare-fun tp!1416075 () Bool)

(assert (=> b!5073551 (= e!3165529 (and (inv!77611 (left!42831 (right!43161 (right!43161 ys!41)))) tp!1416074 (inv!77611 (right!43161 (right!43161 (right!43161 ys!41)))) tp!1416075))))

(declare-fun b!5073553 () Bool)

(declare-fun e!3165530 () Bool)

(declare-fun tp!1416073 () Bool)

(assert (=> b!5073553 (= e!3165530 tp!1416073)))

(declare-fun b!5073552 () Bool)

(assert (=> b!5073552 (= e!3165529 (and (inv!77610 (xs!18934 (right!43161 (right!43161 ys!41)))) e!3165530))))

(assert (=> b!5073247 (= tp!1416005 (and (inv!77611 (right!43161 (right!43161 ys!41))) e!3165529))))

(assert (= (and b!5073247 ((_ is Node!15574) (right!43161 (right!43161 ys!41)))) b!5073551))

(assert (= b!5073552 b!5073553))

(assert (= (and b!5073247 ((_ is Leaf!25866) (right!43161 (right!43161 ys!41)))) b!5073552))

(declare-fun m!6120988 () Bool)

(assert (=> b!5073551 m!6120988))

(declare-fun m!6120990 () Bool)

(assert (=> b!5073551 m!6120990))

(declare-fun m!6120992 () Bool)

(assert (=> b!5073552 m!6120992))

(assert (=> b!5073247 m!6120520))

(declare-fun b!5073554 () Bool)

(declare-fun e!3165531 () Bool)

(declare-fun tp!1416076 () Bool)

(assert (=> b!5073554 (= e!3165531 (and tp_is_empty!37069 tp!1416076))))

(assert (=> b!5073246 (= tp!1416000 e!3165531)))

(assert (= (and b!5073246 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 ys!41))))) b!5073554))

(declare-fun e!3165532 () Bool)

(declare-fun tp!1416078 () Bool)

(declare-fun b!5073555 () Bool)

(declare-fun tp!1416079 () Bool)

(assert (=> b!5073555 (= e!3165532 (and (inv!77611 (left!42831 (left!42831 (right!43161 xs!286)))) tp!1416078 (inv!77611 (right!43161 (left!42831 (right!43161 xs!286)))) tp!1416079))))

(declare-fun b!5073557 () Bool)

(declare-fun e!3165533 () Bool)

(declare-fun tp!1416077 () Bool)

(assert (=> b!5073557 (= e!3165533 tp!1416077)))

(declare-fun b!5073556 () Bool)

(assert (=> b!5073556 (= e!3165532 (and (inv!77610 (xs!18934 (left!42831 (right!43161 xs!286)))) e!3165533))))

(assert (=> b!5073241 (= tp!1415998 (and (inv!77611 (left!42831 (right!43161 xs!286))) e!3165532))))

(assert (= (and b!5073241 ((_ is Node!15574) (left!42831 (right!43161 xs!286)))) b!5073555))

(assert (= b!5073556 b!5073557))

(assert (= (and b!5073241 ((_ is Leaf!25866) (left!42831 (right!43161 xs!286)))) b!5073556))

(declare-fun m!6120994 () Bool)

(assert (=> b!5073555 m!6120994))

(declare-fun m!6120996 () Bool)

(assert (=> b!5073555 m!6120996))

(declare-fun m!6120998 () Bool)

(assert (=> b!5073556 m!6120998))

(assert (=> b!5073241 m!6120506))

(declare-fun tp!1416081 () Bool)

(declare-fun tp!1416082 () Bool)

(declare-fun b!5073558 () Bool)

(declare-fun e!3165534 () Bool)

(assert (=> b!5073558 (= e!3165534 (and (inv!77611 (left!42831 (right!43161 (right!43161 xs!286)))) tp!1416081 (inv!77611 (right!43161 (right!43161 (right!43161 xs!286)))) tp!1416082))))

(declare-fun b!5073560 () Bool)

(declare-fun e!3165535 () Bool)

(declare-fun tp!1416080 () Bool)

(assert (=> b!5073560 (= e!3165535 tp!1416080)))

(declare-fun b!5073559 () Bool)

(assert (=> b!5073559 (= e!3165534 (and (inv!77610 (xs!18934 (right!43161 (right!43161 xs!286)))) e!3165535))))

(assert (=> b!5073241 (= tp!1415999 (and (inv!77611 (right!43161 (right!43161 xs!286))) e!3165534))))

(assert (= (and b!5073241 ((_ is Node!15574) (right!43161 (right!43161 xs!286)))) b!5073558))

(assert (= b!5073559 b!5073560))

(assert (= (and b!5073241 ((_ is Leaf!25866) (right!43161 (right!43161 xs!286)))) b!5073559))

(declare-fun m!6121000 () Bool)

(assert (=> b!5073558 m!6121000))

(declare-fun m!6121002 () Bool)

(assert (=> b!5073558 m!6121002))

(declare-fun m!6121004 () Bool)

(assert (=> b!5073559 m!6121004))

(assert (=> b!5073241 m!6120508))

(declare-fun b!5073561 () Bool)

(declare-fun e!3165536 () Bool)

(declare-fun tp!1416083 () Bool)

(assert (=> b!5073561 (= e!3165536 (and tp_is_empty!37069 tp!1416083))))

(assert (=> b!5073249 (= tp!1416003 e!3165536)))

(assert (= (and b!5073249 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 ys!41))))) b!5073561))

(declare-fun b!5073562 () Bool)

(declare-fun e!3165537 () Bool)

(declare-fun tp!1416084 () Bool)

(assert (=> b!5073562 (= e!3165537 (and tp_is_empty!37069 tp!1416084))))

(assert (=> b!5073240 (= tp!1415994 e!3165537)))

(assert (= (and b!5073240 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 xs!286))))) b!5073562))

(declare-fun b!5073563 () Bool)

(declare-fun e!3165538 () Bool)

(declare-fun tp!1416085 () Bool)

(assert (=> b!5073563 (= e!3165538 (and tp_is_empty!37069 tp!1416085))))

(assert (=> b!5073266 (= tp!1416008 e!3165538)))

(assert (= (and b!5073266 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 ys!41))))) b!5073563))

(declare-fun b!5073564 () Bool)

(declare-fun tp!1416088 () Bool)

(declare-fun e!3165539 () Bool)

(declare-fun tp!1416087 () Bool)

(assert (=> b!5073564 (= e!3165539 (and (inv!77611 (left!42831 (left!42831 (left!42831 ys!41)))) tp!1416087 (inv!77611 (right!43161 (left!42831 (left!42831 ys!41)))) tp!1416088))))

(declare-fun b!5073566 () Bool)

(declare-fun e!3165540 () Bool)

(declare-fun tp!1416086 () Bool)

(assert (=> b!5073566 (= e!3165540 tp!1416086)))

(declare-fun b!5073565 () Bool)

(assert (=> b!5073565 (= e!3165539 (and (inv!77610 (xs!18934 (left!42831 (left!42831 ys!41)))) e!3165540))))

(assert (=> b!5073244 (= tp!1416001 (and (inv!77611 (left!42831 (left!42831 ys!41))) e!3165539))))

(assert (= (and b!5073244 ((_ is Node!15574) (left!42831 (left!42831 ys!41)))) b!5073564))

(assert (= b!5073565 b!5073566))

(assert (= (and b!5073244 ((_ is Leaf!25866) (left!42831 (left!42831 ys!41)))) b!5073565))

(declare-fun m!6121006 () Bool)

(assert (=> b!5073564 m!6121006))

(declare-fun m!6121008 () Bool)

(assert (=> b!5073564 m!6121008))

(declare-fun m!6121010 () Bool)

(assert (=> b!5073565 m!6121010))

(assert (=> b!5073244 m!6120512))

(declare-fun tp!1416091 () Bool)

(declare-fun b!5073567 () Bool)

(declare-fun tp!1416090 () Bool)

(declare-fun e!3165541 () Bool)

(assert (=> b!5073567 (= e!3165541 (and (inv!77611 (left!42831 (right!43161 (left!42831 ys!41)))) tp!1416090 (inv!77611 (right!43161 (right!43161 (left!42831 ys!41)))) tp!1416091))))

(declare-fun b!5073569 () Bool)

(declare-fun e!3165542 () Bool)

(declare-fun tp!1416089 () Bool)

(assert (=> b!5073569 (= e!3165542 tp!1416089)))

(declare-fun b!5073568 () Bool)

(assert (=> b!5073568 (= e!3165541 (and (inv!77610 (xs!18934 (right!43161 (left!42831 ys!41)))) e!3165542))))

(assert (=> b!5073244 (= tp!1416002 (and (inv!77611 (right!43161 (left!42831 ys!41))) e!3165541))))

(assert (= (and b!5073244 ((_ is Node!15574) (right!43161 (left!42831 ys!41)))) b!5073567))

(assert (= b!5073568 b!5073569))

(assert (= (and b!5073244 ((_ is Leaf!25866) (right!43161 (left!42831 ys!41)))) b!5073568))

(declare-fun m!6121012 () Bool)

(assert (=> b!5073567 m!6121012))

(declare-fun m!6121014 () Bool)

(assert (=> b!5073567 m!6121014))

(declare-fun m!6121016 () Bool)

(assert (=> b!5073568 m!6121016))

(assert (=> b!5073244 m!6120514))

(check-sat (not d!1637972) (not b!5073505) (not d!1637868) (not b!5073241) (not d!1637854) (not b!5073555) (not d!1637946) (not b!5073484) (not b!5073366) (not b!5073537) (not b!5073528) (not b!5073247) (not b!5073364) (not b!5073557) (not d!1637964) (not b!5073482) (not b!5073556) (not b!5073508) (not b!5073543) (not b!5073534) (not b!5073531) (not b!5073365) (not b!5073561) (not b!5073549) (not b!5073238) (not b!5073541) (not d!1637966) (not d!1637968) (not b!5073489) (not b!5073558) (not b!5073532) (not b!5073513) (not b!5073521) (not d!1637930) (not b!5073457) (not b!5073344) (not b!5073564) (not b!5073477) (not b!5073436) (not b!5073518) (not d!1637932) (not b!5073559) (not d!1637920) (not b!5073542) (not b!5073529) (not b!5073544) (not d!1637982) (not b!5073509) (not b!5073497) (not b!5073453) (not b!5073563) (not b!5073550) (not b!5073554) (not d!1637974) (not b!5073427) (not b!5073486) (not b!5073367) (not b!5073498) (not b!5073538) (not d!1637970) (not d!1637954) (not b!5073474) (not b!5073553) (not b!5073552) (not b!5073506) (not b!5073456) (not d!1637934) (not b!5073535) (not b!5073562) (not b!5073480) (not b!5073560) (not b!5073545) (not b!5073476) (not b!5073551) (not b!5073547) (not b!5073568) (not b!5073569) (not b!5073481) (not b!5073483) (not d!1637922) (not b!5073548) (not b!5073244) (not b!5073530) (not b!5073567) (not d!1637952) (not b!5073524) (not b!5073540) (not b!5073488) (not b!5073503) (not d!1637950) (not d!1637848) (not b!5073546) (not b!5073516) (not b!5073526) (not b!5073455) (not b!5073368) (not b!5073527) (not b!5073512) tp_is_empty!37069 (not b!5073491) (not b!5073566) (not b!5073501) (not b!5073454) (not b!5073369) (not b!5073479) (not b!5073452) (not d!1637960) (not b!5073565) (not b!5073485))
(check-sat)
(get-model)

(declare-fun d!1638048 () Bool)

(declare-fun lt!2089852 () Int)

(assert (=> d!1638048 (>= lt!2089852 0)))

(declare-fun e!3165570 () Int)

(assert (=> d!1638048 (= lt!2089852 e!3165570)))

(declare-fun c!871119 () Bool)

(assert (=> d!1638048 (= c!871119 ((_ is Nil!58444) (list!19010 (xs!18934 (left!42831 ys!41)))))))

(assert (=> d!1638048 (= (size!39095 (list!19010 (xs!18934 (left!42831 ys!41)))) lt!2089852)))

(declare-fun b!5073626 () Bool)

(assert (=> b!5073626 (= e!3165570 0)))

(declare-fun b!5073627 () Bool)

(assert (=> b!5073627 (= e!3165570 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 (left!42831 ys!41)))))))))

(assert (= (and d!1638048 c!871119) b!5073626))

(assert (= (and d!1638048 (not c!871119)) b!5073627))

(declare-fun m!6121126 () Bool)

(assert (=> b!5073627 m!6121126))

(assert (=> d!1637950 d!1638048))

(declare-fun d!1638052 () Bool)

(assert (=> d!1638052 (= (list!19010 (xs!18934 (left!42831 ys!41))) (innerList!15662 (xs!18934 (left!42831 ys!41))))))

(assert (=> d!1637950 d!1638052))

(declare-fun d!1638066 () Bool)

(declare-fun lt!2089853 () Bool)

(assert (=> d!1638066 (= lt!2089853 (isEmpty!31653 (list!19011 (left!42831 (right!43161 xs!286)))))))

(assert (=> d!1638066 (= lt!2089853 (= (size!39097 (left!42831 (right!43161 xs!286))) 0))))

(assert (=> d!1638066 (= (isEmpty!31650 (left!42831 (right!43161 xs!286))) lt!2089853)))

(declare-fun bs!1190283 () Bool)

(assert (= bs!1190283 d!1638066))

(declare-fun m!6121138 () Bool)

(assert (=> bs!1190283 m!6121138))

(assert (=> bs!1190283 m!6121138))

(declare-fun m!6121140 () Bool)

(assert (=> bs!1190283 m!6121140))

(assert (=> bs!1190283 m!6120788))

(assert (=> b!5073368 d!1638066))

(declare-fun d!1638072 () Bool)

(declare-fun c!871123 () Bool)

(assert (=> d!1638072 (= c!871123 ((_ is Node!15574) (left!42831 (right!43161 (left!42831 xs!286)))))))

(declare-fun e!3165576 () Bool)

(assert (=> d!1638072 (= (inv!77611 (left!42831 (right!43161 (left!42831 xs!286)))) e!3165576)))

(declare-fun b!5073636 () Bool)

(assert (=> b!5073636 (= e!3165576 (inv!77612 (left!42831 (right!43161 (left!42831 xs!286)))))))

(declare-fun b!5073637 () Bool)

(declare-fun e!3165577 () Bool)

(assert (=> b!5073637 (= e!3165576 e!3165577)))

(declare-fun res!2160200 () Bool)

(assert (=> b!5073637 (= res!2160200 (not ((_ is Leaf!25866) (left!42831 (right!43161 (left!42831 xs!286))))))))

(assert (=> b!5073637 (=> res!2160200 e!3165577)))

(declare-fun b!5073638 () Bool)

(assert (=> b!5073638 (= e!3165577 (inv!77613 (left!42831 (right!43161 (left!42831 xs!286)))))))

(assert (= (and d!1638072 c!871123) b!5073636))

(assert (= (and d!1638072 (not c!871123)) b!5073637))

(assert (= (and b!5073637 (not res!2160200)) b!5073638))

(declare-fun m!6121148 () Bool)

(assert (=> b!5073636 m!6121148))

(declare-fun m!6121150 () Bool)

(assert (=> b!5073638 m!6121150))

(assert (=> b!5073544 d!1638072))

(declare-fun d!1638080 () Bool)

(declare-fun c!871124 () Bool)

(assert (=> d!1638080 (= c!871124 ((_ is Node!15574) (right!43161 (right!43161 (left!42831 xs!286)))))))

(declare-fun e!3165581 () Bool)

(assert (=> d!1638080 (= (inv!77611 (right!43161 (right!43161 (left!42831 xs!286)))) e!3165581)))

(declare-fun b!5073647 () Bool)

(assert (=> b!5073647 (= e!3165581 (inv!77612 (right!43161 (right!43161 (left!42831 xs!286)))))))

(declare-fun b!5073648 () Bool)

(declare-fun e!3165582 () Bool)

(assert (=> b!5073648 (= e!3165581 e!3165582)))

(declare-fun res!2160209 () Bool)

(assert (=> b!5073648 (= res!2160209 (not ((_ is Leaf!25866) (right!43161 (right!43161 (left!42831 xs!286))))))))

(assert (=> b!5073648 (=> res!2160209 e!3165582)))

(declare-fun b!5073649 () Bool)

(assert (=> b!5073649 (= e!3165582 (inv!77613 (right!43161 (right!43161 (left!42831 xs!286)))))))

(assert (= (and d!1638080 c!871124) b!5073647))

(assert (= (and d!1638080 (not c!871124)) b!5073648))

(assert (= (and b!5073648 (not res!2160209)) b!5073649))

(declare-fun m!6121152 () Bool)

(assert (=> b!5073647 m!6121152))

(declare-fun m!6121154 () Bool)

(assert (=> b!5073649 m!6121154))

(assert (=> b!5073544 d!1638080))

(declare-fun d!1638082 () Bool)

(declare-fun lt!2089855 () Bool)

(assert (=> d!1638082 (= lt!2089855 (isEmpty!31653 (list!19011 (right!43161 (right!43161 xs!286)))))))

(assert (=> d!1638082 (= lt!2089855 (= (size!39097 (right!43161 (right!43161 xs!286))) 0))))

(assert (=> d!1638082 (= (isEmpty!31650 (right!43161 (right!43161 xs!286))) lt!2089855)))

(declare-fun bs!1190284 () Bool)

(assert (= bs!1190284 d!1638082))

(declare-fun m!6121160 () Bool)

(assert (=> bs!1190284 m!6121160))

(assert (=> bs!1190284 m!6121160))

(declare-fun m!6121166 () Bool)

(assert (=> bs!1190284 m!6121166))

(assert (=> bs!1190284 m!6120790))

(assert (=> b!5073366 d!1638082))

(declare-fun d!1638086 () Bool)

(declare-fun lt!2089857 () Int)

(assert (=> d!1638086 (>= lt!2089857 0)))

(declare-fun e!3165583 () Int)

(assert (=> d!1638086 (= lt!2089857 e!3165583)))

(declare-fun c!871125 () Bool)

(assert (=> d!1638086 (= c!871125 ((_ is Nil!58444) (innerList!15662 (xs!18934 (left!42831 xs!286)))))))

(assert (=> d!1638086 (= (size!39095 (innerList!15662 (xs!18934 (left!42831 xs!286)))) lt!2089857)))

(declare-fun b!5073650 () Bool)

(assert (=> b!5073650 (= e!3165583 0)))

(declare-fun b!5073651 () Bool)

(assert (=> b!5073651 (= e!3165583 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 (left!42831 xs!286)))))))))

(assert (= (and d!1638086 c!871125) b!5073650))

(assert (= (and d!1638086 (not c!871125)) b!5073651))

(declare-fun m!6121172 () Bool)

(assert (=> b!5073651 m!6121172))

(assert (=> d!1637930 d!1638086))

(declare-fun d!1638090 () Bool)

(assert (=> d!1638090 (= (inv!77610 (xs!18934 (right!43161 (right!43161 xs!286)))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 (right!43161 xs!286))))) 2147483647))))

(declare-fun bs!1190286 () Bool)

(assert (= bs!1190286 d!1638090))

(declare-fun m!6121178 () Bool)

(assert (=> bs!1190286 m!6121178))

(assert (=> b!5073559 d!1638090))

(declare-fun b!5073655 () Bool)

(declare-fun e!3165586 () Bool)

(declare-fun e!3165585 () Bool)

(assert (=> b!5073655 (= e!3165586 e!3165585)))

(declare-fun res!2160214 () Bool)

(assert (=> b!5073655 (=> (not res!2160214) (not e!3165585))))

(assert (=> b!5073655 (= res!2160214 (<= (- 1) (- (height!2151 (left!42831 (left!42831 (left!42831 ys!41)))) (height!2151 (right!43161 (left!42831 (left!42831 ys!41)))))))))

(declare-fun b!5073656 () Bool)

(declare-fun res!2160218 () Bool)

(assert (=> b!5073656 (=> (not res!2160218) (not e!3165585))))

(assert (=> b!5073656 (= res!2160218 (<= (- (height!2151 (left!42831 (left!42831 (left!42831 ys!41)))) (height!2151 (right!43161 (left!42831 (left!42831 ys!41))))) 1))))

(declare-fun b!5073657 () Bool)

(assert (=> b!5073657 (= e!3165585 (not (isEmpty!31650 (right!43161 (left!42831 (left!42831 ys!41))))))))

(declare-fun d!1638092 () Bool)

(declare-fun res!2160217 () Bool)

(assert (=> d!1638092 (=> res!2160217 e!3165586)))

(assert (=> d!1638092 (= res!2160217 (not ((_ is Node!15574) (left!42831 (left!42831 ys!41)))))))

(assert (=> d!1638092 (= (isBalanced!4436 (left!42831 (left!42831 ys!41))) e!3165586)))

(declare-fun b!5073658 () Bool)

(declare-fun res!2160215 () Bool)

(assert (=> b!5073658 (=> (not res!2160215) (not e!3165585))))

(assert (=> b!5073658 (= res!2160215 (isBalanced!4436 (right!43161 (left!42831 (left!42831 ys!41)))))))

(declare-fun b!5073659 () Bool)

(declare-fun res!2160216 () Bool)

(assert (=> b!5073659 (=> (not res!2160216) (not e!3165585))))

(assert (=> b!5073659 (= res!2160216 (not (isEmpty!31650 (left!42831 (left!42831 (left!42831 ys!41))))))))

(declare-fun b!5073660 () Bool)

(declare-fun res!2160213 () Bool)

(assert (=> b!5073660 (=> (not res!2160213) (not e!3165585))))

(assert (=> b!5073660 (= res!2160213 (isBalanced!4436 (left!42831 (left!42831 (left!42831 ys!41)))))))

(assert (= (and d!1638092 (not res!2160217)) b!5073655))

(assert (= (and b!5073655 res!2160214) b!5073656))

(assert (= (and b!5073656 res!2160218) b!5073660))

(assert (= (and b!5073660 res!2160213) b!5073658))

(assert (= (and b!5073658 res!2160215) b!5073659))

(assert (= (and b!5073659 res!2160216) b!5073657))

(declare-fun m!6121190 () Bool)

(assert (=> b!5073660 m!6121190))

(declare-fun m!6121192 () Bool)

(assert (=> b!5073657 m!6121192))

(declare-fun m!6121194 () Bool)

(assert (=> b!5073658 m!6121194))

(declare-fun m!6121196 () Bool)

(assert (=> b!5073655 m!6121196))

(declare-fun m!6121200 () Bool)

(assert (=> b!5073655 m!6121200))

(declare-fun m!6121202 () Bool)

(assert (=> b!5073659 m!6121202))

(assert (=> b!5073656 m!6121196))

(assert (=> b!5073656 m!6121200))

(assert (=> b!5073457 d!1638092))

(declare-fun d!1638106 () Bool)

(declare-fun lt!2089863 () Int)

(assert (=> d!1638106 (>= lt!2089863 0)))

(declare-fun e!3165588 () Int)

(assert (=> d!1638106 (= lt!2089863 e!3165588)))

(declare-fun c!871127 () Bool)

(assert (=> d!1638106 (= c!871127 ((_ is Nil!58444) (list!19010 (xs!18934 (left!42831 xs!286)))))))

(assert (=> d!1638106 (= (size!39095 (list!19010 (xs!18934 (left!42831 xs!286)))) lt!2089863)))

(declare-fun b!5073663 () Bool)

(assert (=> b!5073663 (= e!3165588 0)))

(declare-fun b!5073664 () Bool)

(assert (=> b!5073664 (= e!3165588 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 (left!42831 xs!286)))))))))

(assert (= (and d!1638106 c!871127) b!5073663))

(assert (= (and d!1638106 (not c!871127)) b!5073664))

(declare-fun m!6121208 () Bool)

(assert (=> b!5073664 m!6121208))

(assert (=> b!5073509 d!1638106))

(declare-fun d!1638112 () Bool)

(assert (=> d!1638112 (= (list!19010 (xs!18934 (left!42831 xs!286))) (innerList!15662 (xs!18934 (left!42831 xs!286))))))

(assert (=> b!5073509 d!1638112))

(declare-fun d!1638114 () Bool)

(declare-fun lt!2089865 () Int)

(assert (=> d!1638114 (>= lt!2089865 0)))

(declare-fun e!3165591 () Int)

(assert (=> d!1638114 (= lt!2089865 e!3165591)))

(declare-fun c!871128 () Bool)

(assert (=> d!1638114 (= c!871128 ((_ is Nil!58444) (innerList!15662 (xs!18934 (left!42831 ys!41)))))))

(assert (=> d!1638114 (= (size!39095 (innerList!15662 (xs!18934 (left!42831 ys!41)))) lt!2089865)))

(declare-fun b!5073671 () Bool)

(assert (=> b!5073671 (= e!3165591 0)))

(declare-fun b!5073672 () Bool)

(assert (=> b!5073672 (= e!3165591 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 (left!42831 ys!41)))))))))

(assert (= (and d!1638114 c!871128) b!5073671))

(assert (= (and d!1638114 (not c!871128)) b!5073672))

(declare-fun m!6121210 () Bool)

(assert (=> b!5073672 m!6121210))

(assert (=> d!1637974 d!1638114))

(declare-fun d!1638116 () Bool)

(declare-fun c!871129 () Bool)

(assert (=> d!1638116 (= c!871129 ((_ is Node!15574) (left!42831 (left!42831 (right!43161 ys!41)))))))

(declare-fun e!3165592 () Bool)

(assert (=> d!1638116 (= (inv!77611 (left!42831 (left!42831 (right!43161 ys!41)))) e!3165592)))

(declare-fun b!5073673 () Bool)

(assert (=> b!5073673 (= e!3165592 (inv!77612 (left!42831 (left!42831 (right!43161 ys!41)))))))

(declare-fun b!5073674 () Bool)

(declare-fun e!3165593 () Bool)

(assert (=> b!5073674 (= e!3165592 e!3165593)))

(declare-fun res!2160225 () Bool)

(assert (=> b!5073674 (= res!2160225 (not ((_ is Leaf!25866) (left!42831 (left!42831 (right!43161 ys!41))))))))

(assert (=> b!5073674 (=> res!2160225 e!3165593)))

(declare-fun b!5073675 () Bool)

(assert (=> b!5073675 (= e!3165593 (inv!77613 (left!42831 (left!42831 (right!43161 ys!41)))))))

(assert (= (and d!1638116 c!871129) b!5073673))

(assert (= (and d!1638116 (not c!871129)) b!5073674))

(assert (= (and b!5073674 (not res!2160225)) b!5073675))

(declare-fun m!6121228 () Bool)

(assert (=> b!5073673 m!6121228))

(declare-fun m!6121230 () Bool)

(assert (=> b!5073675 m!6121230))

(assert (=> b!5073548 d!1638116))

(declare-fun d!1638122 () Bool)

(declare-fun c!871130 () Bool)

(assert (=> d!1638122 (= c!871130 ((_ is Node!15574) (right!43161 (left!42831 (right!43161 ys!41)))))))

(declare-fun e!3165594 () Bool)

(assert (=> d!1638122 (= (inv!77611 (right!43161 (left!42831 (right!43161 ys!41)))) e!3165594)))

(declare-fun b!5073676 () Bool)

(assert (=> b!5073676 (= e!3165594 (inv!77612 (right!43161 (left!42831 (right!43161 ys!41)))))))

(declare-fun b!5073677 () Bool)

(declare-fun e!3165595 () Bool)

(assert (=> b!5073677 (= e!3165594 e!3165595)))

(declare-fun res!2160226 () Bool)

(assert (=> b!5073677 (= res!2160226 (not ((_ is Leaf!25866) (right!43161 (left!42831 (right!43161 ys!41))))))))

(assert (=> b!5073677 (=> res!2160226 e!3165595)))

(declare-fun b!5073678 () Bool)

(assert (=> b!5073678 (= e!3165595 (inv!77613 (right!43161 (left!42831 (right!43161 ys!41)))))))

(assert (= (and d!1638122 c!871130) b!5073676))

(assert (= (and d!1638122 (not c!871130)) b!5073677))

(assert (= (and b!5073677 (not res!2160226)) b!5073678))

(declare-fun m!6121234 () Bool)

(assert (=> b!5073676 m!6121234))

(declare-fun m!6121236 () Bool)

(assert (=> b!5073678 m!6121236))

(assert (=> b!5073548 d!1638122))

(declare-fun d!1638128 () Bool)

(declare-fun lt!2089867 () Int)

(assert (=> d!1638128 (>= lt!2089867 0)))

(declare-fun e!3165598 () Int)

(assert (=> d!1638128 (= lt!2089867 e!3165598)))

(declare-fun c!871131 () Bool)

(assert (=> d!1638128 (= c!871131 ((_ is Nil!58444) (t!371345 (innerList!15662 (xs!18934 xs!286)))))))

(assert (=> d!1638128 (= (size!39095 (t!371345 (innerList!15662 (xs!18934 xs!286)))) lt!2089867)))

(declare-fun b!5073685 () Bool)

(assert (=> b!5073685 (= e!3165598 0)))

(declare-fun b!5073686 () Bool)

(assert (=> b!5073686 (= e!3165598 (+ 1 (size!39095 (t!371345 (t!371345 (innerList!15662 (xs!18934 xs!286)))))))))

(assert (= (and d!1638128 c!871131) b!5073685))

(assert (= (and d!1638128 (not c!871131)) b!5073686))

(declare-fun m!6121240 () Bool)

(assert (=> b!5073686 m!6121240))

(assert (=> b!5073497 d!1638128))

(declare-fun d!1638130 () Bool)

(declare-fun lt!2089868 () Int)

(assert (=> d!1638130 (>= lt!2089868 0)))

(declare-fun e!3165599 () Int)

(assert (=> d!1638130 (= lt!2089868 e!3165599)))

(declare-fun c!871132 () Bool)

(assert (=> d!1638130 (= c!871132 ((_ is Nil!58444) (innerList!15662 (xs!18934 (right!43161 ys!41)))))))

(assert (=> d!1638130 (= (size!39095 (innerList!15662 (xs!18934 (right!43161 ys!41)))) lt!2089868)))

(declare-fun b!5073687 () Bool)

(assert (=> b!5073687 (= e!3165599 0)))

(declare-fun b!5073688 () Bool)

(assert (=> b!5073688 (= e!3165599 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 (right!43161 ys!41)))))))))

(assert (= (and d!1638130 c!871132) b!5073687))

(assert (= (and d!1638130 (not c!871132)) b!5073688))

(declare-fun m!6121252 () Bool)

(assert (=> b!5073688 m!6121252))

(assert (=> d!1637932 d!1638130))

(declare-fun d!1638134 () Bool)

(assert (=> d!1638134 (= (max!0 (height!2151 (left!42831 (left!42831 ys!41))) (height!2151 (right!43161 (left!42831 ys!41)))) (ite (< (height!2151 (left!42831 (left!42831 ys!41))) (height!2151 (right!43161 (left!42831 ys!41)))) (height!2151 (right!43161 (left!42831 ys!41))) (height!2151 (left!42831 (left!42831 ys!41)))))))

(assert (=> b!5073501 d!1638134))

(declare-fun d!1638148 () Bool)

(assert (=> d!1638148 (= (height!2151 (left!42831 (left!42831 ys!41))) (ite ((_ is Empty!15574) (left!42831 (left!42831 ys!41))) 0 (ite ((_ is Leaf!25866) (left!42831 (left!42831 ys!41))) 1 (cheight!15785 (left!42831 (left!42831 ys!41))))))))

(assert (=> b!5073501 d!1638148))

(declare-fun d!1638150 () Bool)

(assert (=> d!1638150 (= (height!2151 (right!43161 (left!42831 ys!41))) (ite ((_ is Empty!15574) (right!43161 (left!42831 ys!41))) 0 (ite ((_ is Leaf!25866) (right!43161 (left!42831 ys!41))) 1 (cheight!15785 (right!43161 (left!42831 ys!41))))))))

(assert (=> b!5073501 d!1638150))

(declare-fun d!1638152 () Bool)

(assert (=> d!1638152 (= (height!2151 (left!42831 (right!43161 xs!286))) (ite ((_ is Empty!15574) (left!42831 (right!43161 xs!286))) 0 (ite ((_ is Leaf!25866) (left!42831 (right!43161 xs!286))) 1 (cheight!15785 (left!42831 (right!43161 xs!286))))))))

(assert (=> b!5073364 d!1638152))

(declare-fun d!1638154 () Bool)

(assert (=> d!1638154 (= (height!2151 (right!43161 (right!43161 xs!286))) (ite ((_ is Empty!15574) (right!43161 (right!43161 xs!286))) 0 (ite ((_ is Leaf!25866) (right!43161 (right!43161 xs!286))) 1 (cheight!15785 (right!43161 (right!43161 xs!286))))))))

(assert (=> b!5073364 d!1638154))

(assert (=> b!5073238 d!1637936))

(assert (=> b!5073238 d!1637938))

(declare-fun b!5073707 () Bool)

(declare-fun e!3165611 () Bool)

(declare-fun e!3165610 () Bool)

(assert (=> b!5073707 (= e!3165611 e!3165610)))

(declare-fun res!2160244 () Bool)

(assert (=> b!5073707 (=> (not res!2160244) (not e!3165610))))

(assert (=> b!5073707 (= res!2160244 (<= (- 1) (- (height!2151 (left!42831 (right!43161 (left!42831 ys!41)))) (height!2151 (right!43161 (right!43161 (left!42831 ys!41)))))))))

(declare-fun b!5073708 () Bool)

(declare-fun res!2160248 () Bool)

(assert (=> b!5073708 (=> (not res!2160248) (not e!3165610))))

(assert (=> b!5073708 (= res!2160248 (<= (- (height!2151 (left!42831 (right!43161 (left!42831 ys!41)))) (height!2151 (right!43161 (right!43161 (left!42831 ys!41))))) 1))))

(declare-fun b!5073709 () Bool)

(assert (=> b!5073709 (= e!3165610 (not (isEmpty!31650 (right!43161 (right!43161 (left!42831 ys!41))))))))

(declare-fun d!1638156 () Bool)

(declare-fun res!2160247 () Bool)

(assert (=> d!1638156 (=> res!2160247 e!3165611)))

(assert (=> d!1638156 (= res!2160247 (not ((_ is Node!15574) (right!43161 (left!42831 ys!41)))))))

(assert (=> d!1638156 (= (isBalanced!4436 (right!43161 (left!42831 ys!41))) e!3165611)))

(declare-fun b!5073710 () Bool)

(declare-fun res!2160245 () Bool)

(assert (=> b!5073710 (=> (not res!2160245) (not e!3165610))))

(assert (=> b!5073710 (= res!2160245 (isBalanced!4436 (right!43161 (right!43161 (left!42831 ys!41)))))))

(declare-fun b!5073711 () Bool)

(declare-fun res!2160246 () Bool)

(assert (=> b!5073711 (=> (not res!2160246) (not e!3165610))))

(assert (=> b!5073711 (= res!2160246 (not (isEmpty!31650 (left!42831 (right!43161 (left!42831 ys!41))))))))

(declare-fun b!5073712 () Bool)

(declare-fun res!2160243 () Bool)

(assert (=> b!5073712 (=> (not res!2160243) (not e!3165610))))

(assert (=> b!5073712 (= res!2160243 (isBalanced!4436 (left!42831 (right!43161 (left!42831 ys!41)))))))

(assert (= (and d!1638156 (not res!2160247)) b!5073707))

(assert (= (and b!5073707 res!2160244) b!5073708))

(assert (= (and b!5073708 res!2160248) b!5073712))

(assert (= (and b!5073712 res!2160243) b!5073710))

(assert (= (and b!5073710 res!2160245) b!5073711))

(assert (= (and b!5073711 res!2160246) b!5073709))

(declare-fun m!6121292 () Bool)

(assert (=> b!5073712 m!6121292))

(declare-fun m!6121294 () Bool)

(assert (=> b!5073709 m!6121294))

(declare-fun m!6121298 () Bool)

(assert (=> b!5073710 m!6121298))

(declare-fun m!6121302 () Bool)

(assert (=> b!5073707 m!6121302))

(declare-fun m!6121304 () Bool)

(assert (=> b!5073707 m!6121304))

(declare-fun m!6121306 () Bool)

(assert (=> b!5073711 m!6121306))

(assert (=> b!5073708 m!6121302))

(assert (=> b!5073708 m!6121304))

(assert (=> b!5073455 d!1638156))

(declare-fun b!5073723 () Bool)

(declare-fun e!3165619 () Bool)

(declare-fun e!3165618 () Bool)

(assert (=> b!5073723 (= e!3165619 e!3165618)))

(declare-fun res!2160256 () Bool)

(assert (=> b!5073723 (=> (not res!2160256) (not e!3165618))))

(assert (=> b!5073723 (= res!2160256 (<= (- 1) (- (height!2151 (left!42831 (left!42831 (left!42831 xs!286)))) (height!2151 (right!43161 (left!42831 (left!42831 xs!286)))))))))

(declare-fun b!5073724 () Bool)

(declare-fun res!2160260 () Bool)

(assert (=> b!5073724 (=> (not res!2160260) (not e!3165618))))

(assert (=> b!5073724 (= res!2160260 (<= (- (height!2151 (left!42831 (left!42831 (left!42831 xs!286)))) (height!2151 (right!43161 (left!42831 (left!42831 xs!286))))) 1))))

(declare-fun b!5073725 () Bool)

(assert (=> b!5073725 (= e!3165618 (not (isEmpty!31650 (right!43161 (left!42831 (left!42831 xs!286))))))))

(declare-fun d!1638168 () Bool)

(declare-fun res!2160259 () Bool)

(assert (=> d!1638168 (=> res!2160259 e!3165619)))

(assert (=> d!1638168 (= res!2160259 (not ((_ is Node!15574) (left!42831 (left!42831 xs!286)))))))

(assert (=> d!1638168 (= (isBalanced!4436 (left!42831 (left!42831 xs!286))) e!3165619)))

(declare-fun b!5073726 () Bool)

(declare-fun res!2160257 () Bool)

(assert (=> b!5073726 (=> (not res!2160257) (not e!3165618))))

(assert (=> b!5073726 (= res!2160257 (isBalanced!4436 (right!43161 (left!42831 (left!42831 xs!286)))))))

(declare-fun b!5073727 () Bool)

(declare-fun res!2160258 () Bool)

(assert (=> b!5073727 (=> (not res!2160258) (not e!3165618))))

(assert (=> b!5073727 (= res!2160258 (not (isEmpty!31650 (left!42831 (left!42831 (left!42831 xs!286))))))))

(declare-fun b!5073728 () Bool)

(declare-fun res!2160255 () Bool)

(assert (=> b!5073728 (=> (not res!2160255) (not e!3165618))))

(assert (=> b!5073728 (= res!2160255 (isBalanced!4436 (left!42831 (left!42831 (left!42831 xs!286)))))))

(assert (= (and d!1638168 (not res!2160259)) b!5073723))

(assert (= (and b!5073723 res!2160256) b!5073724))

(assert (= (and b!5073724 res!2160260) b!5073728))

(assert (= (and b!5073728 res!2160255) b!5073726))

(assert (= (and b!5073726 res!2160257) b!5073727))

(assert (= (and b!5073727 res!2160258) b!5073725))

(declare-fun m!6121318 () Bool)

(assert (=> b!5073728 m!6121318))

(declare-fun m!6121320 () Bool)

(assert (=> b!5073725 m!6121320))

(declare-fun m!6121322 () Bool)

(assert (=> b!5073726 m!6121322))

(declare-fun m!6121324 () Bool)

(assert (=> b!5073723 m!6121324))

(declare-fun m!6121328 () Bool)

(assert (=> b!5073723 m!6121328))

(declare-fun m!6121330 () Bool)

(assert (=> b!5073727 m!6121330))

(assert (=> b!5073724 m!6121324))

(assert (=> b!5073724 m!6121328))

(assert (=> b!5073531 d!1638168))

(declare-fun d!1638176 () Bool)

(declare-fun res!2160269 () Bool)

(declare-fun e!3165623 () Bool)

(assert (=> d!1638176 (=> (not res!2160269) (not e!3165623))))

(assert (=> d!1638176 (= res!2160269 (<= (size!39095 (list!19010 (xs!18934 (left!42831 (right!43161 xs!286))))) 512))))

(assert (=> d!1638176 (= (inv!77613 (left!42831 (right!43161 xs!286))) e!3165623)))

(declare-fun b!5073737 () Bool)

(declare-fun res!2160270 () Bool)

(assert (=> b!5073737 (=> (not res!2160270) (not e!3165623))))

(assert (=> b!5073737 (= res!2160270 (= (csize!31379 (left!42831 (right!43161 xs!286))) (size!39095 (list!19010 (xs!18934 (left!42831 (right!43161 xs!286)))))))))

(declare-fun b!5073738 () Bool)

(assert (=> b!5073738 (= e!3165623 (and (> (csize!31379 (left!42831 (right!43161 xs!286))) 0) (<= (csize!31379 (left!42831 (right!43161 xs!286))) 512)))))

(assert (= (and d!1638176 res!2160269) b!5073737))

(assert (= (and b!5073737 res!2160270) b!5073738))

(declare-fun m!6121340 () Bool)

(assert (=> d!1638176 m!6121340))

(assert (=> d!1638176 m!6121340))

(declare-fun m!6121342 () Bool)

(assert (=> d!1638176 m!6121342))

(assert (=> b!5073737 m!6121340))

(assert (=> b!5073737 m!6121340))

(assert (=> b!5073737 m!6121342))

(assert (=> b!5073505 d!1638176))

(declare-fun d!1638182 () Bool)

(declare-fun res!2160274 () Bool)

(declare-fun e!3165625 () Bool)

(assert (=> d!1638182 (=> (not res!2160274) (not e!3165625))))

(assert (=> d!1638182 (= res!2160274 (<= (size!39095 (list!19010 (xs!18934 (right!43161 (left!42831 xs!286))))) 512))))

(assert (=> d!1638182 (= (inv!77613 (right!43161 (left!42831 xs!286))) e!3165625)))

(declare-fun b!5073742 () Bool)

(declare-fun res!2160275 () Bool)

(assert (=> b!5073742 (=> (not res!2160275) (not e!3165625))))

(assert (=> b!5073742 (= res!2160275 (= (csize!31379 (right!43161 (left!42831 xs!286))) (size!39095 (list!19010 (xs!18934 (right!43161 (left!42831 xs!286)))))))))

(declare-fun b!5073743 () Bool)

(assert (=> b!5073743 (= e!3165625 (and (> (csize!31379 (right!43161 (left!42831 xs!286))) 0) (<= (csize!31379 (right!43161 (left!42831 xs!286))) 512)))))

(assert (= (and d!1638182 res!2160274) b!5073742))

(assert (= (and b!5073742 res!2160275) b!5073743))

(declare-fun m!6121350 () Bool)

(assert (=> d!1638182 m!6121350))

(assert (=> d!1638182 m!6121350))

(declare-fun m!6121354 () Bool)

(assert (=> d!1638182 m!6121354))

(assert (=> b!5073742 m!6121350))

(assert (=> b!5073742 m!6121350))

(assert (=> b!5073742 m!6121354))

(assert (=> b!5073479 d!1638182))

(assert (=> b!5073247 d!1637942))

(assert (=> b!5073247 d!1637944))

(assert (=> b!5073453 d!1638148))

(assert (=> b!5073453 d!1638150))

(declare-fun b!5073747 () Bool)

(declare-fun e!3165629 () Bool)

(declare-fun e!3165628 () Bool)

(assert (=> b!5073747 (= e!3165629 e!3165628)))

(declare-fun res!2160278 () Bool)

(assert (=> b!5073747 (=> (not res!2160278) (not e!3165628))))

(assert (=> b!5073747 (= res!2160278 (<= (- 1) (- (height!2151 (left!42831 (right!43161 (left!42831 xs!286)))) (height!2151 (right!43161 (right!43161 (left!42831 xs!286)))))))))

(declare-fun b!5073748 () Bool)

(declare-fun res!2160282 () Bool)

(assert (=> b!5073748 (=> (not res!2160282) (not e!3165628))))

(assert (=> b!5073748 (= res!2160282 (<= (- (height!2151 (left!42831 (right!43161 (left!42831 xs!286)))) (height!2151 (right!43161 (right!43161 (left!42831 xs!286))))) 1))))

(declare-fun b!5073749 () Bool)

(assert (=> b!5073749 (= e!3165628 (not (isEmpty!31650 (right!43161 (right!43161 (left!42831 xs!286))))))))

(declare-fun d!1638186 () Bool)

(declare-fun res!2160281 () Bool)

(assert (=> d!1638186 (=> res!2160281 e!3165629)))

(assert (=> d!1638186 (= res!2160281 (not ((_ is Node!15574) (right!43161 (left!42831 xs!286)))))))

(assert (=> d!1638186 (= (isBalanced!4436 (right!43161 (left!42831 xs!286))) e!3165629)))

(declare-fun b!5073750 () Bool)

(declare-fun res!2160279 () Bool)

(assert (=> b!5073750 (=> (not res!2160279) (not e!3165628))))

(assert (=> b!5073750 (= res!2160279 (isBalanced!4436 (right!43161 (right!43161 (left!42831 xs!286)))))))

(declare-fun b!5073751 () Bool)

(declare-fun res!2160280 () Bool)

(assert (=> b!5073751 (=> (not res!2160280) (not e!3165628))))

(assert (=> b!5073751 (= res!2160280 (not (isEmpty!31650 (left!42831 (right!43161 (left!42831 xs!286))))))))

(declare-fun b!5073752 () Bool)

(declare-fun res!2160277 () Bool)

(assert (=> b!5073752 (=> (not res!2160277) (not e!3165628))))

(assert (=> b!5073752 (= res!2160277 (isBalanced!4436 (left!42831 (right!43161 (left!42831 xs!286)))))))

(assert (= (and d!1638186 (not res!2160281)) b!5073747))

(assert (= (and b!5073747 res!2160278) b!5073748))

(assert (= (and b!5073748 res!2160282) b!5073752))

(assert (= (and b!5073752 res!2160277) b!5073750))

(assert (= (and b!5073750 res!2160279) b!5073751))

(assert (= (and b!5073751 res!2160280) b!5073749))

(declare-fun m!6121368 () Bool)

(assert (=> b!5073752 m!6121368))

(declare-fun m!6121370 () Bool)

(assert (=> b!5073749 m!6121370))

(declare-fun m!6121372 () Bool)

(assert (=> b!5073750 m!6121372))

(declare-fun m!6121374 () Bool)

(assert (=> b!5073747 m!6121374))

(declare-fun m!6121378 () Bool)

(assert (=> b!5073747 m!6121378))

(declare-fun m!6121380 () Bool)

(assert (=> b!5073751 m!6121380))

(assert (=> b!5073748 m!6121374))

(assert (=> b!5073748 m!6121378))

(assert (=> b!5073529 d!1638186))

(declare-fun d!1638198 () Bool)

(declare-fun res!2160284 () Bool)

(declare-fun e!3165633 () Bool)

(assert (=> d!1638198 (=> (not res!2160284) (not e!3165633))))

(assert (=> d!1638198 (= res!2160284 (= (csize!31378 (left!42831 (right!43161 xs!286))) (+ (size!39097 (left!42831 (left!42831 (right!43161 xs!286)))) (size!39097 (right!43161 (left!42831 (right!43161 xs!286)))))))))

(assert (=> d!1638198 (= (inv!77612 (left!42831 (right!43161 xs!286))) e!3165633)))

(declare-fun b!5073758 () Bool)

(declare-fun res!2160285 () Bool)

(assert (=> b!5073758 (=> (not res!2160285) (not e!3165633))))

(assert (=> b!5073758 (= res!2160285 (and (not (= (left!42831 (left!42831 (right!43161 xs!286))) Empty!15574)) (not (= (right!43161 (left!42831 (right!43161 xs!286))) Empty!15574))))))

(declare-fun b!5073759 () Bool)

(declare-fun res!2160286 () Bool)

(assert (=> b!5073759 (=> (not res!2160286) (not e!3165633))))

(assert (=> b!5073759 (= res!2160286 (= (cheight!15785 (left!42831 (right!43161 xs!286))) (+ (max!0 (height!2151 (left!42831 (left!42831 (right!43161 xs!286)))) (height!2151 (right!43161 (left!42831 (right!43161 xs!286))))) 1)))))

(declare-fun b!5073760 () Bool)

(assert (=> b!5073760 (= e!3165633 (<= 0 (cheight!15785 (left!42831 (right!43161 xs!286)))))))

(assert (= (and d!1638198 res!2160284) b!5073758))

(assert (= (and b!5073758 res!2160285) b!5073759))

(assert (= (and b!5073759 res!2160286) b!5073760))

(declare-fun m!6121386 () Bool)

(assert (=> d!1638198 m!6121386))

(declare-fun m!6121388 () Bool)

(assert (=> d!1638198 m!6121388))

(declare-fun m!6121390 () Bool)

(assert (=> b!5073759 m!6121390))

(declare-fun m!6121392 () Bool)

(assert (=> b!5073759 m!6121392))

(assert (=> b!5073759 m!6121390))

(assert (=> b!5073759 m!6121392))

(declare-fun m!6121394 () Bool)

(assert (=> b!5073759 m!6121394))

(assert (=> b!5073503 d!1638198))

(declare-fun d!1638208 () Bool)

(declare-fun res!2160287 () Bool)

(declare-fun e!3165636 () Bool)

(assert (=> d!1638208 (=> (not res!2160287) (not e!3165636))))

(assert (=> d!1638208 (= res!2160287 (= (csize!31378 (right!43161 (left!42831 xs!286))) (+ (size!39097 (left!42831 (right!43161 (left!42831 xs!286)))) (size!39097 (right!43161 (right!43161 (left!42831 xs!286)))))))))

(assert (=> d!1638208 (= (inv!77612 (right!43161 (left!42831 xs!286))) e!3165636)))

(declare-fun b!5073765 () Bool)

(declare-fun res!2160288 () Bool)

(assert (=> b!5073765 (=> (not res!2160288) (not e!3165636))))

(assert (=> b!5073765 (= res!2160288 (and (not (= (left!42831 (right!43161 (left!42831 xs!286))) Empty!15574)) (not (= (right!43161 (right!43161 (left!42831 xs!286))) Empty!15574))))))

(declare-fun b!5073766 () Bool)

(declare-fun res!2160289 () Bool)

(assert (=> b!5073766 (=> (not res!2160289) (not e!3165636))))

(assert (=> b!5073766 (= res!2160289 (= (cheight!15785 (right!43161 (left!42831 xs!286))) (+ (max!0 (height!2151 (left!42831 (right!43161 (left!42831 xs!286)))) (height!2151 (right!43161 (right!43161 (left!42831 xs!286))))) 1)))))

(declare-fun b!5073767 () Bool)

(assert (=> b!5073767 (= e!3165636 (<= 0 (cheight!15785 (right!43161 (left!42831 xs!286)))))))

(assert (= (and d!1638208 res!2160287) b!5073765))

(assert (= (and b!5073765 res!2160288) b!5073766))

(assert (= (and b!5073766 res!2160289) b!5073767))

(declare-fun m!6121400 () Bool)

(assert (=> d!1638208 m!6121400))

(declare-fun m!6121402 () Bool)

(assert (=> d!1638208 m!6121402))

(assert (=> b!5073766 m!6121374))

(assert (=> b!5073766 m!6121378))

(assert (=> b!5073766 m!6121374))

(assert (=> b!5073766 m!6121378))

(declare-fun m!6121406 () Bool)

(assert (=> b!5073766 m!6121406))

(assert (=> b!5073477 d!1638208))

(assert (=> d!1637960 d!1638106))

(assert (=> d!1637960 d!1638112))

(declare-fun d!1638218 () Bool)

(declare-fun lt!2089875 () Bool)

(assert (=> d!1638218 (= lt!2089875 (isEmpty!31653 (list!19011 (left!42831 (right!43161 ys!41)))))))

(assert (=> d!1638218 (= lt!2089875 (= (size!39097 (left!42831 (right!43161 ys!41))) 0))))

(assert (=> d!1638218 (= (isEmpty!31650 (left!42831 (right!43161 ys!41))) lt!2089875)))

(declare-fun bs!1190300 () Bool)

(assert (= bs!1190300 d!1638218))

(declare-fun m!6121410 () Bool)

(assert (=> bs!1190300 m!6121410))

(assert (=> bs!1190300 m!6121410))

(declare-fun m!6121412 () Bool)

(assert (=> bs!1190300 m!6121412))

(assert (=> bs!1190300 m!6120942))

(assert (=> b!5073484 d!1638218))

(declare-fun d!1638224 () Bool)

(declare-fun c!871149 () Bool)

(assert (=> d!1638224 (= c!871149 ((_ is Node!15574) (left!42831 (right!43161 (left!42831 ys!41)))))))

(declare-fun e!3165643 () Bool)

(assert (=> d!1638224 (= (inv!77611 (left!42831 (right!43161 (left!42831 ys!41)))) e!3165643)))

(declare-fun b!5073779 () Bool)

(assert (=> b!5073779 (= e!3165643 (inv!77612 (left!42831 (right!43161 (left!42831 ys!41)))))))

(declare-fun b!5073780 () Bool)

(declare-fun e!3165644 () Bool)

(assert (=> b!5073780 (= e!3165643 e!3165644)))

(declare-fun res!2160291 () Bool)

(assert (=> b!5073780 (= res!2160291 (not ((_ is Leaf!25866) (left!42831 (right!43161 (left!42831 ys!41))))))))

(assert (=> b!5073780 (=> res!2160291 e!3165644)))

(declare-fun b!5073781 () Bool)

(assert (=> b!5073781 (= e!3165644 (inv!77613 (left!42831 (right!43161 (left!42831 ys!41)))))))

(assert (= (and d!1638224 c!871149) b!5073779))

(assert (= (and d!1638224 (not c!871149)) b!5073780))

(assert (= (and b!5073780 (not res!2160291)) b!5073781))

(declare-fun m!6121418 () Bool)

(assert (=> b!5073779 m!6121418))

(declare-fun m!6121424 () Bool)

(assert (=> b!5073781 m!6121424))

(assert (=> b!5073567 d!1638224))

(declare-fun d!1638230 () Bool)

(declare-fun c!871151 () Bool)

(assert (=> d!1638230 (= c!871151 ((_ is Node!15574) (right!43161 (right!43161 (left!42831 ys!41)))))))

(declare-fun e!3165647 () Bool)

(assert (=> d!1638230 (= (inv!77611 (right!43161 (right!43161 (left!42831 ys!41)))) e!3165647)))

(declare-fun b!5073785 () Bool)

(assert (=> b!5073785 (= e!3165647 (inv!77612 (right!43161 (right!43161 (left!42831 ys!41)))))))

(declare-fun b!5073786 () Bool)

(declare-fun e!3165648 () Bool)

(assert (=> b!5073786 (= e!3165647 e!3165648)))

(declare-fun res!2160293 () Bool)

(assert (=> b!5073786 (= res!2160293 (not ((_ is Leaf!25866) (right!43161 (right!43161 (left!42831 ys!41))))))))

(assert (=> b!5073786 (=> res!2160293 e!3165648)))

(declare-fun b!5073787 () Bool)

(assert (=> b!5073787 (= e!3165648 (inv!77613 (right!43161 (right!43161 (left!42831 ys!41)))))))

(assert (= (and d!1638230 c!871151) b!5073785))

(assert (= (and d!1638230 (not c!871151)) b!5073786))

(assert (= (and b!5073786 (not res!2160293)) b!5073787))

(declare-fun m!6121428 () Bool)

(assert (=> b!5073785 m!6121428))

(declare-fun m!6121430 () Bool)

(assert (=> b!5073787 m!6121430))

(assert (=> b!5073567 d!1638230))

(declare-fun d!1638236 () Bool)

(assert (=> d!1638236 (= (height!2151 (left!42831 (left!42831 xs!286))) (ite ((_ is Empty!15574) (left!42831 (left!42831 xs!286))) 0 (ite ((_ is Leaf!25866) (left!42831 (left!42831 xs!286))) 1 (cheight!15785 (left!42831 (left!42831 xs!286))))))))

(assert (=> b!5073527 d!1638236))

(declare-fun d!1638238 () Bool)

(assert (=> d!1638238 (= (height!2151 (right!43161 (left!42831 xs!286))) (ite ((_ is Empty!15574) (right!43161 (left!42831 xs!286))) 0 (ite ((_ is Leaf!25866) (right!43161 (left!42831 xs!286))) 1 (cheight!15785 (right!43161 (left!42831 xs!286))))))))

(assert (=> b!5073527 d!1638238))

(declare-fun d!1638240 () Bool)

(declare-fun res!2160300 () Bool)

(declare-fun e!3165651 () Bool)

(assert (=> d!1638240 (=> (not res!2160300) (not e!3165651))))

(assert (=> d!1638240 (= res!2160300 (<= (size!39095 (list!19010 (xs!18934 (left!42831 (left!42831 ys!41))))) 512))))

(assert (=> d!1638240 (= (inv!77613 (left!42831 (left!42831 ys!41))) e!3165651)))

(declare-fun b!5073794 () Bool)

(declare-fun res!2160301 () Bool)

(assert (=> b!5073794 (=> (not res!2160301) (not e!3165651))))

(assert (=> b!5073794 (= res!2160301 (= (csize!31379 (left!42831 (left!42831 ys!41))) (size!39095 (list!19010 (xs!18934 (left!42831 (left!42831 ys!41)))))))))

(declare-fun b!5073795 () Bool)

(assert (=> b!5073795 (= e!3165651 (and (> (csize!31379 (left!42831 (left!42831 ys!41))) 0) (<= (csize!31379 (left!42831 (left!42831 ys!41))) 512)))))

(assert (= (and d!1638240 res!2160300) b!5073794))

(assert (= (and b!5073794 res!2160301) b!5073795))

(declare-fun m!6121440 () Bool)

(assert (=> d!1638240 m!6121440))

(assert (=> d!1638240 m!6121440))

(declare-fun m!6121442 () Bool)

(assert (=> d!1638240 m!6121442))

(assert (=> b!5073794 m!6121440))

(assert (=> b!5073794 m!6121440))

(assert (=> b!5073794 m!6121442))

(assert (=> b!5073534 d!1638240))

(declare-fun d!1638246 () Bool)

(declare-fun lt!2089878 () Bool)

(assert (=> d!1638246 (= lt!2089878 (isEmpty!31653 (list!19011 (right!43161 (right!43161 ys!41)))))))

(assert (=> d!1638246 (= lt!2089878 (= (size!39097 (right!43161 (right!43161 ys!41))) 0))))

(assert (=> d!1638246 (= (isEmpty!31650 (right!43161 (right!43161 ys!41))) lt!2089878)))

(declare-fun bs!1190302 () Bool)

(assert (= bs!1190302 d!1638246))

(declare-fun m!6121446 () Bool)

(assert (=> bs!1190302 m!6121446))

(assert (=> bs!1190302 m!6121446))

(declare-fun m!6121448 () Bool)

(assert (=> bs!1190302 m!6121448))

(assert (=> bs!1190302 m!6120944))

(assert (=> b!5073482 d!1638246))

(declare-fun d!1638250 () Bool)

(assert (=> d!1638250 (= (height!2151 (left!42831 (right!43161 ys!41))) (ite ((_ is Empty!15574) (left!42831 (right!43161 ys!41))) 0 (ite ((_ is Leaf!25866) (left!42831 (right!43161 ys!41))) 1 (cheight!15785 (left!42831 (right!43161 ys!41))))))))

(assert (=> b!5073481 d!1638250))

(declare-fun d!1638254 () Bool)

(assert (=> d!1638254 (= (height!2151 (right!43161 (right!43161 ys!41))) (ite ((_ is Empty!15574) (right!43161 (right!43161 ys!41))) 0 (ite ((_ is Leaf!25866) (right!43161 (right!43161 ys!41))) 1 (cheight!15785 (right!43161 (right!43161 ys!41))))))))

(assert (=> b!5073481 d!1638254))

(declare-fun d!1638256 () Bool)

(assert (=> d!1638256 (= (max!0 (height!2151 (left!42831 (right!43161 xs!286))) (height!2151 (right!43161 (right!43161 xs!286)))) (ite (< (height!2151 (left!42831 (right!43161 xs!286))) (height!2151 (right!43161 (right!43161 xs!286)))) (height!2151 (right!43161 (right!43161 xs!286))) (height!2151 (left!42831 (right!43161 xs!286)))))))

(assert (=> b!5073436 d!1638256))

(assert (=> b!5073436 d!1638152))

(assert (=> b!5073436 d!1638154))

(declare-fun d!1638262 () Bool)

(declare-fun lt!2089880 () Int)

(assert (=> d!1638262 (>= lt!2089880 0)))

(declare-fun e!3165656 () Int)

(assert (=> d!1638262 (= lt!2089880 e!3165656)))

(declare-fun c!871154 () Bool)

(assert (=> d!1638262 (= c!871154 ((_ is Nil!58444) (list!19010 (xs!18934 ys!41))))))

(assert (=> d!1638262 (= (size!39095 (list!19010 (xs!18934 ys!41))) lt!2089880)))

(declare-fun b!5073804 () Bool)

(assert (=> b!5073804 (= e!3165656 0)))

(declare-fun b!5073805 () Bool)

(assert (=> b!5073805 (= e!3165656 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 ys!41))))))))

(assert (= (and d!1638262 c!871154) b!5073804))

(assert (= (and d!1638262 (not c!871154)) b!5073805))

(declare-fun m!6121460 () Bool)

(assert (=> b!5073805 m!6121460))

(assert (=> d!1637982 d!1638262))

(declare-fun d!1638266 () Bool)

(assert (=> d!1638266 (= (list!19010 (xs!18934 ys!41)) (innerList!15662 (xs!18934 ys!41)))))

(assert (=> d!1637982 d!1638266))

(declare-fun d!1638268 () Bool)

(declare-fun lt!2089881 () Int)

(assert (=> d!1638268 (>= lt!2089881 0)))

(declare-fun e!3165658 () Int)

(assert (=> d!1638268 (= lt!2089881 e!3165658)))

(declare-fun c!871155 () Bool)

(assert (=> d!1638268 (= c!871155 ((_ is Nil!58444) (t!371345 (innerList!15662 (xs!18934 ys!41)))))))

(assert (=> d!1638268 (= (size!39095 (t!371345 (innerList!15662 (xs!18934 ys!41)))) lt!2089881)))

(declare-fun b!5073809 () Bool)

(assert (=> b!5073809 (= e!3165658 0)))

(declare-fun b!5073810 () Bool)

(assert (=> b!5073810 (= e!3165658 (+ 1 (size!39095 (t!371345 (t!371345 (innerList!15662 (xs!18934 ys!41)))))))))

(assert (= (and d!1638268 c!871155) b!5073809))

(assert (= (and d!1638268 (not c!871155)) b!5073810))

(declare-fun m!6121470 () Bool)

(assert (=> b!5073810 m!6121470))

(assert (=> b!5073512 d!1638268))

(declare-fun d!1638270 () Bool)

(declare-fun c!871156 () Bool)

(assert (=> d!1638270 (= c!871156 ((_ is Node!15574) (left!42831 (right!43161 (right!43161 ys!41)))))))

(declare-fun e!3165659 () Bool)

(assert (=> d!1638270 (= (inv!77611 (left!42831 (right!43161 (right!43161 ys!41)))) e!3165659)))

(declare-fun b!5073811 () Bool)

(assert (=> b!5073811 (= e!3165659 (inv!77612 (left!42831 (right!43161 (right!43161 ys!41)))))))

(declare-fun b!5073812 () Bool)

(declare-fun e!3165660 () Bool)

(assert (=> b!5073812 (= e!3165659 e!3165660)))

(declare-fun res!2160309 () Bool)

(assert (=> b!5073812 (= res!2160309 (not ((_ is Leaf!25866) (left!42831 (right!43161 (right!43161 ys!41))))))))

(assert (=> b!5073812 (=> res!2160309 e!3165660)))

(declare-fun b!5073813 () Bool)

(assert (=> b!5073813 (= e!3165660 (inv!77613 (left!42831 (right!43161 (right!43161 ys!41)))))))

(assert (= (and d!1638270 c!871156) b!5073811))

(assert (= (and d!1638270 (not c!871156)) b!5073812))

(assert (= (and b!5073812 (not res!2160309)) b!5073813))

(declare-fun m!6121476 () Bool)

(assert (=> b!5073811 m!6121476))

(declare-fun m!6121478 () Bool)

(assert (=> b!5073813 m!6121478))

(assert (=> b!5073551 d!1638270))

(declare-fun d!1638276 () Bool)

(declare-fun c!871158 () Bool)

(assert (=> d!1638276 (= c!871158 ((_ is Node!15574) (right!43161 (right!43161 (right!43161 ys!41)))))))

(declare-fun e!3165662 () Bool)

(assert (=> d!1638276 (= (inv!77611 (right!43161 (right!43161 (right!43161 ys!41)))) e!3165662)))

(declare-fun b!5073816 () Bool)

(assert (=> b!5073816 (= e!3165662 (inv!77612 (right!43161 (right!43161 (right!43161 ys!41)))))))

(declare-fun b!5073817 () Bool)

(declare-fun e!3165663 () Bool)

(assert (=> b!5073817 (= e!3165662 e!3165663)))

(declare-fun res!2160310 () Bool)

(assert (=> b!5073817 (= res!2160310 (not ((_ is Leaf!25866) (right!43161 (right!43161 (right!43161 ys!41))))))))

(assert (=> b!5073817 (=> res!2160310 e!3165663)))

(declare-fun b!5073818 () Bool)

(assert (=> b!5073818 (= e!3165663 (inv!77613 (right!43161 (right!43161 (right!43161 ys!41)))))))

(assert (= (and d!1638276 c!871158) b!5073816))

(assert (= (and d!1638276 (not c!871158)) b!5073817))

(assert (= (and b!5073817 (not res!2160310)) b!5073818))

(declare-fun m!6121484 () Bool)

(assert (=> b!5073816 m!6121484))

(declare-fun m!6121486 () Bool)

(assert (=> b!5073818 m!6121486))

(assert (=> b!5073551 d!1638276))

(declare-fun d!1638282 () Bool)

(assert (=> d!1638282 (= (max!0 (height!2151 (left!42831 (right!43161 ys!41))) (height!2151 (right!43161 (right!43161 ys!41)))) (ite (< (height!2151 (left!42831 (right!43161 ys!41))) (height!2151 (right!43161 (right!43161 ys!41)))) (height!2151 (right!43161 (right!43161 ys!41))) (height!2151 (left!42831 (right!43161 ys!41)))))))

(assert (=> b!5073524 d!1638282))

(assert (=> b!5073524 d!1638250))

(assert (=> b!5073524 d!1638254))

(assert (=> b!5073241 d!1637956))

(assert (=> b!5073241 d!1637958))

(declare-fun d!1638284 () Bool)

(assert (=> d!1638284 (= (inv!77610 (xs!18934 (left!42831 (left!42831 xs!286)))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 (left!42831 xs!286))))) 2147483647))))

(declare-fun bs!1190305 () Bool)

(assert (= bs!1190305 d!1638284))

(declare-fun m!6121492 () Bool)

(assert (=> bs!1190305 m!6121492))

(assert (=> b!5073542 d!1638284))

(declare-fun d!1638286 () Bool)

(assert (=> d!1638286 (= (max!0 (height!2151 (left!42831 (left!42831 xs!286))) (height!2151 (right!43161 (left!42831 xs!286)))) (ite (< (height!2151 (left!42831 (left!42831 xs!286))) (height!2151 (right!43161 (left!42831 xs!286)))) (height!2151 (right!43161 (left!42831 xs!286))) (height!2151 (left!42831 (left!42831 xs!286)))))))

(assert (=> b!5073516 d!1638286))

(assert (=> b!5073516 d!1638236))

(assert (=> b!5073516 d!1638238))

(declare-fun d!1638290 () Bool)

(declare-fun res!2160320 () Bool)

(declare-fun e!3165667 () Bool)

(assert (=> d!1638290 (=> (not res!2160320) (not e!3165667))))

(assert (=> d!1638290 (= res!2160320 (<= (size!39095 (list!19010 (xs!18934 (right!43161 (right!43161 ys!41))))) 512))))

(assert (=> d!1638290 (= (inv!77613 (right!43161 (right!43161 ys!41))) e!3165667)))

(declare-fun b!5073828 () Bool)

(declare-fun res!2160321 () Bool)

(assert (=> b!5073828 (=> (not res!2160321) (not e!3165667))))

(assert (=> b!5073828 (= res!2160321 (= (csize!31379 (right!43161 (right!43161 ys!41))) (size!39095 (list!19010 (xs!18934 (right!43161 (right!43161 ys!41)))))))))

(declare-fun b!5073829 () Bool)

(assert (=> b!5073829 (= e!3165667 (and (> (csize!31379 (right!43161 (right!43161 ys!41))) 0) (<= (csize!31379 (right!43161 (right!43161 ys!41))) 512)))))

(assert (= (and d!1638290 res!2160320) b!5073828))

(assert (= (and b!5073828 res!2160321) b!5073829))

(declare-fun m!6121496 () Bool)

(assert (=> d!1638290 m!6121496))

(assert (=> d!1638290 m!6121496))

(declare-fun m!6121499 () Bool)

(assert (=> d!1638290 m!6121499))

(assert (=> b!5073828 m!6121496))

(assert (=> b!5073828 m!6121496))

(assert (=> b!5073828 m!6121499))

(assert (=> b!5073491 d!1638290))

(declare-fun d!1638294 () Bool)

(declare-fun lt!2089888 () Int)

(assert (=> d!1638294 (= lt!2089888 (size!39095 (list!19011 (left!42831 (right!43161 xs!286)))))))

(assert (=> d!1638294 (= lt!2089888 (ite ((_ is Empty!15574) (left!42831 (right!43161 xs!286))) 0 (ite ((_ is Leaf!25866) (left!42831 (right!43161 xs!286))) (csize!31379 (left!42831 (right!43161 xs!286))) (csize!31378 (left!42831 (right!43161 xs!286))))))))

(assert (=> d!1638294 (= (size!39097 (left!42831 (right!43161 xs!286))) lt!2089888)))

(declare-fun bs!1190306 () Bool)

(assert (= bs!1190306 d!1638294))

(assert (=> bs!1190306 m!6121138))

(assert (=> bs!1190306 m!6121138))

(declare-fun m!6121558 () Bool)

(assert (=> bs!1190306 m!6121558))

(assert (=> d!1637920 d!1638294))

(declare-fun d!1638296 () Bool)

(declare-fun lt!2089889 () Int)

(assert (=> d!1638296 (= lt!2089889 (size!39095 (list!19011 (right!43161 (right!43161 xs!286)))))))

(assert (=> d!1638296 (= lt!2089889 (ite ((_ is Empty!15574) (right!43161 (right!43161 xs!286))) 0 (ite ((_ is Leaf!25866) (right!43161 (right!43161 xs!286))) (csize!31379 (right!43161 (right!43161 xs!286))) (csize!31378 (right!43161 (right!43161 xs!286))))))))

(assert (=> d!1638296 (= (size!39097 (right!43161 (right!43161 xs!286))) lt!2089889)))

(declare-fun bs!1190307 () Bool)

(assert (= bs!1190307 d!1638296))

(assert (=> bs!1190307 m!6121160))

(assert (=> bs!1190307 m!6121160))

(declare-fun m!6121566 () Bool)

(assert (=> bs!1190307 m!6121566))

(assert (=> d!1637920 d!1638296))

(declare-fun d!1638298 () Bool)

(declare-fun c!871160 () Bool)

(assert (=> d!1638298 (= c!871160 ((_ is Node!15574) (left!42831 (left!42831 (right!43161 xs!286)))))))

(declare-fun e!3165696 () Bool)

(assert (=> d!1638298 (= (inv!77611 (left!42831 (left!42831 (right!43161 xs!286)))) e!3165696)))

(declare-fun b!5073869 () Bool)

(assert (=> b!5073869 (= e!3165696 (inv!77612 (left!42831 (left!42831 (right!43161 xs!286)))))))

(declare-fun b!5073870 () Bool)

(declare-fun e!3165697 () Bool)

(assert (=> b!5073870 (= e!3165696 e!3165697)))

(declare-fun res!2160322 () Bool)

(assert (=> b!5073870 (= res!2160322 (not ((_ is Leaf!25866) (left!42831 (left!42831 (right!43161 xs!286))))))))

(assert (=> b!5073870 (=> res!2160322 e!3165697)))

(declare-fun b!5073871 () Bool)

(assert (=> b!5073871 (= e!3165697 (inv!77613 (left!42831 (left!42831 (right!43161 xs!286)))))))

(assert (= (and d!1638298 c!871160) b!5073869))

(assert (= (and d!1638298 (not c!871160)) b!5073870))

(assert (= (and b!5073870 (not res!2160322)) b!5073871))

(declare-fun m!6121580 () Bool)

(assert (=> b!5073869 m!6121580))

(declare-fun m!6121582 () Bool)

(assert (=> b!5073871 m!6121582))

(assert (=> b!5073555 d!1638298))

(declare-fun d!1638300 () Bool)

(declare-fun c!871161 () Bool)

(assert (=> d!1638300 (= c!871161 ((_ is Node!15574) (right!43161 (left!42831 (right!43161 xs!286)))))))

(declare-fun e!3165702 () Bool)

(assert (=> d!1638300 (= (inv!77611 (right!43161 (left!42831 (right!43161 xs!286)))) e!3165702)))

(declare-fun b!5073878 () Bool)

(assert (=> b!5073878 (= e!3165702 (inv!77612 (right!43161 (left!42831 (right!43161 xs!286)))))))

(declare-fun b!5073879 () Bool)

(declare-fun e!3165703 () Bool)

(assert (=> b!5073879 (= e!3165702 e!3165703)))

(declare-fun res!2160323 () Bool)

(assert (=> b!5073879 (= res!2160323 (not ((_ is Leaf!25866) (right!43161 (left!42831 (right!43161 xs!286))))))))

(assert (=> b!5073879 (=> res!2160323 e!3165703)))

(declare-fun b!5073880 () Bool)

(assert (=> b!5073880 (= e!3165703 (inv!77613 (right!43161 (left!42831 (right!43161 xs!286)))))))

(assert (= (and d!1638300 c!871161) b!5073878))

(assert (= (and d!1638300 (not c!871161)) b!5073879))

(assert (= (and b!5073879 (not res!2160323)) b!5073880))

(declare-fun m!6121590 () Bool)

(assert (=> b!5073878 m!6121590))

(declare-fun m!6121592 () Bool)

(assert (=> b!5073880 m!6121592))

(assert (=> b!5073555 d!1638300))

(declare-fun d!1638302 () Bool)

(declare-fun lt!2089890 () Int)

(assert (=> d!1638302 (>= lt!2089890 0)))

(declare-fun e!3165709 () Int)

(assert (=> d!1638302 (= lt!2089890 e!3165709)))

(declare-fun c!871162 () Bool)

(assert (=> d!1638302 (= c!871162 ((_ is Nil!58444) (list!19010 (xs!18934 (right!43161 xs!286)))))))

(assert (=> d!1638302 (= (size!39095 (list!19010 (xs!18934 (right!43161 xs!286)))) lt!2089890)))

(declare-fun b!5073887 () Bool)

(assert (=> b!5073887 (= e!3165709 0)))

(declare-fun b!5073888 () Bool)

(assert (=> b!5073888 (= e!3165709 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 (right!43161 xs!286)))))))))

(assert (= (and d!1638302 c!871162) b!5073887))

(assert (= (and d!1638302 (not c!871162)) b!5073888))

(declare-fun m!6121600 () Bool)

(assert (=> b!5073888 m!6121600))

(assert (=> b!5073344 d!1638302))

(declare-fun d!1638304 () Bool)

(assert (=> d!1638304 (= (list!19010 (xs!18934 (right!43161 xs!286))) (innerList!15662 (xs!18934 (right!43161 xs!286))))))

(assert (=> b!5073344 d!1638304))

(declare-fun d!1638306 () Bool)

(declare-fun lt!2089891 () Int)

(assert (=> d!1638306 (= lt!2089891 (size!39095 (list!19011 (left!42831 (right!43161 ys!41)))))))

(assert (=> d!1638306 (= lt!2089891 (ite ((_ is Empty!15574) (left!42831 (right!43161 ys!41))) 0 (ite ((_ is Leaf!25866) (left!42831 (right!43161 ys!41))) (csize!31379 (left!42831 (right!43161 ys!41))) (csize!31378 (left!42831 (right!43161 ys!41))))))))

(assert (=> d!1638306 (= (size!39097 (left!42831 (right!43161 ys!41))) lt!2089891)))

(declare-fun bs!1190308 () Bool)

(assert (= bs!1190308 d!1638306))

(assert (=> bs!1190308 m!6121410))

(assert (=> bs!1190308 m!6121410))

(declare-fun m!6121608 () Bool)

(assert (=> bs!1190308 m!6121608))

(assert (=> d!1637972 d!1638306))

(declare-fun d!1638308 () Bool)

(declare-fun lt!2089892 () Int)

(assert (=> d!1638308 (= lt!2089892 (size!39095 (list!19011 (right!43161 (right!43161 ys!41)))))))

(assert (=> d!1638308 (= lt!2089892 (ite ((_ is Empty!15574) (right!43161 (right!43161 ys!41))) 0 (ite ((_ is Leaf!25866) (right!43161 (right!43161 ys!41))) (csize!31379 (right!43161 (right!43161 ys!41))) (csize!31378 (right!43161 (right!43161 ys!41))))))))

(assert (=> d!1638308 (= (size!39097 (right!43161 (right!43161 ys!41))) lt!2089892)))

(declare-fun bs!1190309 () Bool)

(assert (= bs!1190309 d!1638308))

(assert (=> bs!1190309 m!6121446))

(assert (=> bs!1190309 m!6121446))

(declare-fun m!6121616 () Bool)

(assert (=> bs!1190309 m!6121616))

(assert (=> d!1637972 d!1638308))

(assert (=> b!5073498 d!1638048))

(assert (=> b!5073498 d!1638052))

(declare-fun d!1638310 () Bool)

(declare-fun res!2160324 () Bool)

(declare-fun e!3165717 () Bool)

(assert (=> d!1638310 (=> (not res!2160324) (not e!3165717))))

(assert (=> d!1638310 (= res!2160324 (<= (size!39095 (list!19010 (xs!18934 (left!42831 (left!42831 xs!286))))) 512))))

(assert (=> d!1638310 (= (inv!77613 (left!42831 (left!42831 xs!286))) e!3165717)))

(declare-fun b!5073899 () Bool)

(declare-fun res!2160325 () Bool)

(assert (=> b!5073899 (=> (not res!2160325) (not e!3165717))))

(assert (=> b!5073899 (= res!2160325 (= (csize!31379 (left!42831 (left!42831 xs!286))) (size!39095 (list!19010 (xs!18934 (left!42831 (left!42831 xs!286)))))))))

(declare-fun b!5073900 () Bool)

(assert (=> b!5073900 (= e!3165717 (and (> (csize!31379 (left!42831 (left!42831 xs!286))) 0) (<= (csize!31379 (left!42831 (left!42831 xs!286))) 512)))))

(assert (= (and d!1638310 res!2160324) b!5073899))

(assert (= (and b!5073899 res!2160325) b!5073900))

(declare-fun m!6121624 () Bool)

(assert (=> d!1638310 m!6121624))

(assert (=> d!1638310 m!6121624))

(declare-fun m!6121626 () Bool)

(assert (=> d!1638310 m!6121626))

(assert (=> b!5073899 m!6121624))

(assert (=> b!5073899 m!6121624))

(assert (=> b!5073899 m!6121626))

(assert (=> b!5073476 d!1638310))

(declare-fun d!1638312 () Bool)

(declare-fun res!2160326 () Bool)

(declare-fun e!3165721 () Bool)

(assert (=> d!1638312 (=> (not res!2160326) (not e!3165721))))

(assert (=> d!1638312 (= res!2160326 (= (csize!31378 (right!43161 (right!43161 ys!41))) (+ (size!39097 (left!42831 (right!43161 (right!43161 ys!41)))) (size!39097 (right!43161 (right!43161 (right!43161 ys!41)))))))))

(assert (=> d!1638312 (= (inv!77612 (right!43161 (right!43161 ys!41))) e!3165721)))

(declare-fun b!5073904 () Bool)

(declare-fun res!2160327 () Bool)

(assert (=> b!5073904 (=> (not res!2160327) (not e!3165721))))

(assert (=> b!5073904 (= res!2160327 (and (not (= (left!42831 (right!43161 (right!43161 ys!41))) Empty!15574)) (not (= (right!43161 (right!43161 (right!43161 ys!41))) Empty!15574))))))

(declare-fun b!5073905 () Bool)

(declare-fun res!2160328 () Bool)

(assert (=> b!5073905 (=> (not res!2160328) (not e!3165721))))

(assert (=> b!5073905 (= res!2160328 (= (cheight!15785 (right!43161 (right!43161 ys!41))) (+ (max!0 (height!2151 (left!42831 (right!43161 (right!43161 ys!41)))) (height!2151 (right!43161 (right!43161 (right!43161 ys!41))))) 1)))))

(declare-fun b!5073906 () Bool)

(assert (=> b!5073906 (= e!3165721 (<= 0 (cheight!15785 (right!43161 (right!43161 ys!41)))))))

(assert (= (and d!1638312 res!2160326) b!5073904))

(assert (= (and b!5073904 res!2160327) b!5073905))

(assert (= (and b!5073905 res!2160328) b!5073906))

(declare-fun m!6121628 () Bool)

(assert (=> d!1638312 m!6121628))

(declare-fun m!6121630 () Bool)

(assert (=> d!1638312 m!6121630))

(declare-fun m!6121632 () Bool)

(assert (=> b!5073905 m!6121632))

(declare-fun m!6121634 () Bool)

(assert (=> b!5073905 m!6121634))

(assert (=> b!5073905 m!6121632))

(assert (=> b!5073905 m!6121634))

(declare-fun m!6121636 () Bool)

(assert (=> b!5073905 m!6121636))

(assert (=> b!5073489 d!1638312))

(declare-fun d!1638314 () Bool)

(declare-fun lt!2089893 () Int)

(assert (=> d!1638314 (= lt!2089893 (size!39095 (list!19011 (left!42831 (left!42831 xs!286)))))))

(assert (=> d!1638314 (= lt!2089893 (ite ((_ is Empty!15574) (left!42831 (left!42831 xs!286))) 0 (ite ((_ is Leaf!25866) (left!42831 (left!42831 xs!286))) (csize!31379 (left!42831 (left!42831 xs!286))) (csize!31378 (left!42831 (left!42831 xs!286))))))))

(assert (=> d!1638314 (= (size!39097 (left!42831 (left!42831 xs!286))) lt!2089893)))

(declare-fun bs!1190310 () Bool)

(assert (= bs!1190310 d!1638314))

(declare-fun m!6121638 () Bool)

(assert (=> bs!1190310 m!6121638))

(assert (=> bs!1190310 m!6121638))

(declare-fun m!6121640 () Bool)

(assert (=> bs!1190310 m!6121640))

(assert (=> d!1637966 d!1638314))

(declare-fun d!1638316 () Bool)

(declare-fun lt!2089894 () Int)

(assert (=> d!1638316 (= lt!2089894 (size!39095 (list!19011 (right!43161 (left!42831 xs!286)))))))

(assert (=> d!1638316 (= lt!2089894 (ite ((_ is Empty!15574) (right!43161 (left!42831 xs!286))) 0 (ite ((_ is Leaf!25866) (right!43161 (left!42831 xs!286))) (csize!31379 (right!43161 (left!42831 xs!286))) (csize!31378 (right!43161 (left!42831 xs!286))))))))

(assert (=> d!1638316 (= (size!39097 (right!43161 (left!42831 xs!286))) lt!2089894)))

(declare-fun bs!1190311 () Bool)

(assert (= bs!1190311 d!1638316))

(declare-fun m!6121642 () Bool)

(assert (=> bs!1190311 m!6121642))

(assert (=> bs!1190311 m!6121642))

(declare-fun m!6121644 () Bool)

(assert (=> bs!1190311 m!6121644))

(assert (=> d!1637966 d!1638316))

(declare-fun d!1638318 () Bool)

(assert (=> d!1638318 (= (isEmpty!31653 (list!19011 (right!43161 xs!286))) ((_ is Nil!58444) (list!19011 (right!43161 xs!286))))))

(assert (=> d!1637922 d!1638318))

(declare-fun b!5073915 () Bool)

(declare-fun e!3165726 () List!58568)

(assert (=> b!5073915 (= e!3165726 Nil!58444)))

(declare-fun b!5073916 () Bool)

(declare-fun e!3165727 () List!58568)

(assert (=> b!5073916 (= e!3165726 e!3165727)))

(declare-fun c!871168 () Bool)

(assert (=> b!5073916 (= c!871168 ((_ is Leaf!25866) (right!43161 xs!286)))))

(declare-fun b!5073918 () Bool)

(declare-fun ++!12797 (List!58568 List!58568) List!58568)

(assert (=> b!5073918 (= e!3165727 (++!12797 (list!19011 (left!42831 (right!43161 xs!286))) (list!19011 (right!43161 (right!43161 xs!286)))))))

(declare-fun b!5073917 () Bool)

(assert (=> b!5073917 (= e!3165727 (list!19010 (xs!18934 (right!43161 xs!286))))))

(declare-fun d!1638320 () Bool)

(declare-fun c!871167 () Bool)

(assert (=> d!1638320 (= c!871167 ((_ is Empty!15574) (right!43161 xs!286)))))

(assert (=> d!1638320 (= (list!19011 (right!43161 xs!286)) e!3165726)))

(assert (= (and d!1638320 c!871167) b!5073915))

(assert (= (and d!1638320 (not c!871167)) b!5073916))

(assert (= (and b!5073916 c!871168) b!5073917))

(assert (= (and b!5073916 (not c!871168)) b!5073918))

(assert (=> b!5073918 m!6121138))

(assert (=> b!5073918 m!6121160))

(assert (=> b!5073918 m!6121138))

(assert (=> b!5073918 m!6121160))

(declare-fun m!6121646 () Bool)

(assert (=> b!5073918 m!6121646))

(assert (=> b!5073917 m!6120614))

(assert (=> d!1637922 d!1638320))

(declare-fun d!1638322 () Bool)

(declare-fun lt!2089895 () Int)

(assert (=> d!1638322 (= lt!2089895 (size!39095 (list!19011 (right!43161 xs!286))))))

(assert (=> d!1638322 (= lt!2089895 (ite ((_ is Empty!15574) (right!43161 xs!286)) 0 (ite ((_ is Leaf!25866) (right!43161 xs!286)) (csize!31379 (right!43161 xs!286)) (csize!31378 (right!43161 xs!286)))))))

(assert (=> d!1638322 (= (size!39097 (right!43161 xs!286)) lt!2089895)))

(declare-fun bs!1190312 () Bool)

(assert (= bs!1190312 d!1638322))

(assert (=> bs!1190312 m!6120800))

(assert (=> bs!1190312 m!6120800))

(declare-fun m!6121648 () Bool)

(assert (=> bs!1190312 m!6121648))

(assert (=> d!1637922 d!1638322))

(declare-fun d!1638324 () Bool)

(assert (=> d!1638324 (= (inv!77610 (xs!18934 (left!42831 (left!42831 ys!41)))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 (left!42831 ys!41))))) 2147483647))))

(declare-fun bs!1190313 () Bool)

(assert (= bs!1190313 d!1638324))

(declare-fun m!6121650 () Bool)

(assert (=> bs!1190313 m!6121650))

(assert (=> b!5073565 d!1638324))

(assert (=> d!1637848 d!1638302))

(assert (=> d!1637848 d!1638304))

(declare-fun d!1638326 () Bool)

(declare-fun res!2160329 () Bool)

(declare-fun e!3165728 () Bool)

(assert (=> d!1638326 (=> (not res!2160329) (not e!3165728))))

(assert (=> d!1638326 (= res!2160329 (= (csize!31378 (left!42831 (left!42831 xs!286))) (+ (size!39097 (left!42831 (left!42831 (left!42831 xs!286)))) (size!39097 (right!43161 (left!42831 (left!42831 xs!286)))))))))

(assert (=> d!1638326 (= (inv!77612 (left!42831 (left!42831 xs!286))) e!3165728)))

(declare-fun b!5073919 () Bool)

(declare-fun res!2160330 () Bool)

(assert (=> b!5073919 (=> (not res!2160330) (not e!3165728))))

(assert (=> b!5073919 (= res!2160330 (and (not (= (left!42831 (left!42831 (left!42831 xs!286))) Empty!15574)) (not (= (right!43161 (left!42831 (left!42831 xs!286))) Empty!15574))))))

(declare-fun b!5073920 () Bool)

(declare-fun res!2160331 () Bool)

(assert (=> b!5073920 (=> (not res!2160331) (not e!3165728))))

(assert (=> b!5073920 (= res!2160331 (= (cheight!15785 (left!42831 (left!42831 xs!286))) (+ (max!0 (height!2151 (left!42831 (left!42831 (left!42831 xs!286)))) (height!2151 (right!43161 (left!42831 (left!42831 xs!286))))) 1)))))

(declare-fun b!5073921 () Bool)

(assert (=> b!5073921 (= e!3165728 (<= 0 (cheight!15785 (left!42831 (left!42831 xs!286)))))))

(assert (= (and d!1638326 res!2160329) b!5073919))

(assert (= (and b!5073919 res!2160330) b!5073920))

(assert (= (and b!5073920 res!2160331) b!5073921))

(declare-fun m!6121652 () Bool)

(assert (=> d!1638326 m!6121652))

(declare-fun m!6121654 () Bool)

(assert (=> d!1638326 m!6121654))

(assert (=> b!5073920 m!6121324))

(assert (=> b!5073920 m!6121328))

(assert (=> b!5073920 m!6121324))

(assert (=> b!5073920 m!6121328))

(declare-fun m!6121656 () Bool)

(assert (=> b!5073920 m!6121656))

(assert (=> b!5073474 d!1638326))

(declare-fun d!1638328 () Bool)

(declare-fun c!871169 () Bool)

(assert (=> d!1638328 (= c!871169 ((_ is Node!15574) (left!42831 (left!42831 (left!42831 ys!41)))))))

(declare-fun e!3165729 () Bool)

(assert (=> d!1638328 (= (inv!77611 (left!42831 (left!42831 (left!42831 ys!41)))) e!3165729)))

(declare-fun b!5073922 () Bool)

(assert (=> b!5073922 (= e!3165729 (inv!77612 (left!42831 (left!42831 (left!42831 ys!41)))))))

(declare-fun b!5073923 () Bool)

(declare-fun e!3165730 () Bool)

(assert (=> b!5073923 (= e!3165729 e!3165730)))

(declare-fun res!2160332 () Bool)

(assert (=> b!5073923 (= res!2160332 (not ((_ is Leaf!25866) (left!42831 (left!42831 (left!42831 ys!41))))))))

(assert (=> b!5073923 (=> res!2160332 e!3165730)))

(declare-fun b!5073924 () Bool)

(assert (=> b!5073924 (= e!3165730 (inv!77613 (left!42831 (left!42831 (left!42831 ys!41)))))))

(assert (= (and d!1638328 c!871169) b!5073922))

(assert (= (and d!1638328 (not c!871169)) b!5073923))

(assert (= (and b!5073923 (not res!2160332)) b!5073924))

(declare-fun m!6121658 () Bool)

(assert (=> b!5073922 m!6121658))

(declare-fun m!6121660 () Bool)

(assert (=> b!5073924 m!6121660))

(assert (=> b!5073564 d!1638328))

(declare-fun d!1638330 () Bool)

(declare-fun c!871170 () Bool)

(assert (=> d!1638330 (= c!871170 ((_ is Node!15574) (right!43161 (left!42831 (left!42831 ys!41)))))))

(declare-fun e!3165731 () Bool)

(assert (=> d!1638330 (= (inv!77611 (right!43161 (left!42831 (left!42831 ys!41)))) e!3165731)))

(declare-fun b!5073925 () Bool)

(assert (=> b!5073925 (= e!3165731 (inv!77612 (right!43161 (left!42831 (left!42831 ys!41)))))))

(declare-fun b!5073926 () Bool)

(declare-fun e!3165732 () Bool)

(assert (=> b!5073926 (= e!3165731 e!3165732)))

(declare-fun res!2160333 () Bool)

(assert (=> b!5073926 (= res!2160333 (not ((_ is Leaf!25866) (right!43161 (left!42831 (left!42831 ys!41))))))))

(assert (=> b!5073926 (=> res!2160333 e!3165732)))

(declare-fun b!5073927 () Bool)

(assert (=> b!5073927 (= e!3165732 (inv!77613 (right!43161 (left!42831 (left!42831 ys!41)))))))

(assert (= (and d!1638330 c!871170) b!5073925))

(assert (= (and d!1638330 (not c!871170)) b!5073926))

(assert (= (and b!5073926 (not res!2160333)) b!5073927))

(declare-fun m!6121662 () Bool)

(assert (=> b!5073925 m!6121662))

(declare-fun m!6121664 () Bool)

(assert (=> b!5073927 m!6121664))

(assert (=> b!5073564 d!1638330))

(declare-fun d!1638332 () Bool)

(declare-fun c!871171 () Bool)

(assert (=> d!1638332 (= c!871171 ((_ is Node!15574) (left!42831 (right!43161 (right!43161 xs!286)))))))

(declare-fun e!3165733 () Bool)

(assert (=> d!1638332 (= (inv!77611 (left!42831 (right!43161 (right!43161 xs!286)))) e!3165733)))

(declare-fun b!5073928 () Bool)

(assert (=> b!5073928 (= e!3165733 (inv!77612 (left!42831 (right!43161 (right!43161 xs!286)))))))

(declare-fun b!5073929 () Bool)

(declare-fun e!3165734 () Bool)

(assert (=> b!5073929 (= e!3165733 e!3165734)))

(declare-fun res!2160334 () Bool)

(assert (=> b!5073929 (= res!2160334 (not ((_ is Leaf!25866) (left!42831 (right!43161 (right!43161 xs!286))))))))

(assert (=> b!5073929 (=> res!2160334 e!3165734)))

(declare-fun b!5073930 () Bool)

(assert (=> b!5073930 (= e!3165734 (inv!77613 (left!42831 (right!43161 (right!43161 xs!286)))))))

(assert (= (and d!1638332 c!871171) b!5073928))

(assert (= (and d!1638332 (not c!871171)) b!5073929))

(assert (= (and b!5073929 (not res!2160334)) b!5073930))

(declare-fun m!6121666 () Bool)

(assert (=> b!5073928 m!6121666))

(declare-fun m!6121668 () Bool)

(assert (=> b!5073930 m!6121668))

(assert (=> b!5073558 d!1638332))

(declare-fun d!1638334 () Bool)

(declare-fun c!871172 () Bool)

(assert (=> d!1638334 (= c!871172 ((_ is Node!15574) (right!43161 (right!43161 (right!43161 xs!286)))))))

(declare-fun e!3165735 () Bool)

(assert (=> d!1638334 (= (inv!77611 (right!43161 (right!43161 (right!43161 xs!286)))) e!3165735)))

(declare-fun b!5073931 () Bool)

(assert (=> b!5073931 (= e!3165735 (inv!77612 (right!43161 (right!43161 (right!43161 xs!286)))))))

(declare-fun b!5073932 () Bool)

(declare-fun e!3165736 () Bool)

(assert (=> b!5073932 (= e!3165735 e!3165736)))

(declare-fun res!2160335 () Bool)

(assert (=> b!5073932 (= res!2160335 (not ((_ is Leaf!25866) (right!43161 (right!43161 (right!43161 xs!286))))))))

(assert (=> b!5073932 (=> res!2160335 e!3165736)))

(declare-fun b!5073933 () Bool)

(assert (=> b!5073933 (= e!3165736 (inv!77613 (right!43161 (right!43161 (right!43161 xs!286)))))))

(assert (= (and d!1638334 c!871172) b!5073931))

(assert (= (and d!1638334 (not c!871172)) b!5073932))

(assert (= (and b!5073932 (not res!2160335)) b!5073933))

(declare-fun m!6121670 () Bool)

(assert (=> b!5073931 m!6121670))

(declare-fun m!6121672 () Bool)

(assert (=> b!5073933 m!6121672))

(assert (=> b!5073558 d!1638334))

(declare-fun b!5073934 () Bool)

(declare-fun e!3165738 () Bool)

(declare-fun e!3165737 () Bool)

(assert (=> b!5073934 (= e!3165738 e!3165737)))

(declare-fun res!2160337 () Bool)

(assert (=> b!5073934 (=> (not res!2160337) (not e!3165737))))

(assert (=> b!5073934 (= res!2160337 (<= (- 1) (- (height!2151 (left!42831 (right!43161 (right!43161 xs!286)))) (height!2151 (right!43161 (right!43161 (right!43161 xs!286)))))))))

(declare-fun b!5073935 () Bool)

(declare-fun res!2160341 () Bool)

(assert (=> b!5073935 (=> (not res!2160341) (not e!3165737))))

(assert (=> b!5073935 (= res!2160341 (<= (- (height!2151 (left!42831 (right!43161 (right!43161 xs!286)))) (height!2151 (right!43161 (right!43161 (right!43161 xs!286))))) 1))))

(declare-fun b!5073936 () Bool)

(assert (=> b!5073936 (= e!3165737 (not (isEmpty!31650 (right!43161 (right!43161 (right!43161 xs!286))))))))

(declare-fun d!1638336 () Bool)

(declare-fun res!2160340 () Bool)

(assert (=> d!1638336 (=> res!2160340 e!3165738)))

(assert (=> d!1638336 (= res!2160340 (not ((_ is Node!15574) (right!43161 (right!43161 xs!286)))))))

(assert (=> d!1638336 (= (isBalanced!4436 (right!43161 (right!43161 xs!286))) e!3165738)))

(declare-fun b!5073937 () Bool)

(declare-fun res!2160338 () Bool)

(assert (=> b!5073937 (=> (not res!2160338) (not e!3165737))))

(assert (=> b!5073937 (= res!2160338 (isBalanced!4436 (right!43161 (right!43161 (right!43161 xs!286)))))))

(declare-fun b!5073938 () Bool)

(declare-fun res!2160339 () Bool)

(assert (=> b!5073938 (=> (not res!2160339) (not e!3165737))))

(assert (=> b!5073938 (= res!2160339 (not (isEmpty!31650 (left!42831 (right!43161 (right!43161 xs!286))))))))

(declare-fun b!5073939 () Bool)

(declare-fun res!2160336 () Bool)

(assert (=> b!5073939 (=> (not res!2160336) (not e!3165737))))

(assert (=> b!5073939 (= res!2160336 (isBalanced!4436 (left!42831 (right!43161 (right!43161 xs!286)))))))

(assert (= (and d!1638336 (not res!2160340)) b!5073934))

(assert (= (and b!5073934 res!2160337) b!5073935))

(assert (= (and b!5073935 res!2160341) b!5073939))

(assert (= (and b!5073939 res!2160336) b!5073937))

(assert (= (and b!5073937 res!2160338) b!5073938))

(assert (= (and b!5073938 res!2160339) b!5073936))

(declare-fun m!6121674 () Bool)

(assert (=> b!5073939 m!6121674))

(declare-fun m!6121676 () Bool)

(assert (=> b!5073936 m!6121676))

(declare-fun m!6121678 () Bool)

(assert (=> b!5073937 m!6121678))

(declare-fun m!6121680 () Bool)

(assert (=> b!5073934 m!6121680))

(declare-fun m!6121682 () Bool)

(assert (=> b!5073934 m!6121682))

(declare-fun m!6121684 () Bool)

(assert (=> b!5073938 m!6121684))

(assert (=> b!5073935 m!6121680))

(assert (=> b!5073935 m!6121682))

(assert (=> b!5073367 d!1638336))

(declare-fun d!1638338 () Bool)

(assert (=> d!1638338 (= (max!0 (height!2151 (left!42831 xs!286)) (height!2151 (right!43161 xs!286))) (ite (< (height!2151 (left!42831 xs!286)) (height!2151 (right!43161 xs!286))) (height!2151 (right!43161 xs!286)) (height!2151 (left!42831 xs!286))))))

(assert (=> b!5073521 d!1638338))

(assert (=> b!5073521 d!1637924))

(assert (=> b!5073521 d!1637926))

(assert (=> b!5073365 d!1638152))

(assert (=> b!5073365 d!1638154))

(declare-fun d!1638340 () Bool)

(assert (=> d!1638340 (= (inv!77610 (xs!18934 (left!42831 (right!43161 ys!41)))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 (right!43161 ys!41))))) 2147483647))))

(declare-fun bs!1190314 () Bool)

(assert (= bs!1190314 d!1638340))

(declare-fun m!6121686 () Bool)

(assert (=> bs!1190314 m!6121686))

(assert (=> b!5073549 d!1638340))

(declare-fun d!1638342 () Bool)

(declare-fun lt!2089896 () Int)

(assert (=> d!1638342 (>= lt!2089896 0)))

(declare-fun e!3165739 () Int)

(assert (=> d!1638342 (= lt!2089896 e!3165739)))

(declare-fun c!871173 () Bool)

(assert (=> d!1638342 (= c!871173 ((_ is Nil!58444) (list!19010 (xs!18934 xs!286))))))

(assert (=> d!1638342 (= (size!39095 (list!19010 (xs!18934 xs!286))) lt!2089896)))

(declare-fun b!5073940 () Bool)

(assert (=> b!5073940 (= e!3165739 0)))

(declare-fun b!5073941 () Bool)

(assert (=> b!5073941 (= e!3165739 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 xs!286))))))))

(assert (= (and d!1638342 c!871173) b!5073940))

(assert (= (and d!1638342 (not c!871173)) b!5073941))

(declare-fun m!6121688 () Bool)

(assert (=> b!5073941 m!6121688))

(assert (=> b!5073513 d!1638342))

(declare-fun d!1638344 () Bool)

(assert (=> d!1638344 (= (list!19010 (xs!18934 xs!286)) (innerList!15662 (xs!18934 xs!286)))))

(assert (=> b!5073513 d!1638344))

(declare-fun d!1638346 () Bool)

(declare-fun lt!2089897 () Bool)

(assert (=> d!1638346 (= lt!2089897 (isEmpty!31653 (list!19011 (left!42831 (left!42831 ys!41)))))))

(assert (=> d!1638346 (= lt!2089897 (= (size!39097 (left!42831 (left!42831 ys!41))) 0))))

(assert (=> d!1638346 (= (isEmpty!31650 (left!42831 (left!42831 ys!41))) lt!2089897)))

(declare-fun bs!1190315 () Bool)

(assert (= bs!1190315 d!1638346))

(declare-fun m!6121690 () Bool)

(assert (=> bs!1190315 m!6121690))

(assert (=> bs!1190315 m!6121690))

(declare-fun m!6121692 () Bool)

(assert (=> bs!1190315 m!6121692))

(assert (=> bs!1190315 m!6120900))

(assert (=> b!5073456 d!1638346))

(declare-fun d!1638348 () Bool)

(declare-fun lt!2089898 () Bool)

(assert (=> d!1638348 (= lt!2089898 (isEmpty!31653 (list!19011 (right!43161 (left!42831 ys!41)))))))

(assert (=> d!1638348 (= lt!2089898 (= (size!39097 (right!43161 (left!42831 ys!41))) 0))))

(assert (=> d!1638348 (= (isEmpty!31650 (right!43161 (left!42831 ys!41))) lt!2089898)))

(declare-fun bs!1190316 () Bool)

(assert (= bs!1190316 d!1638348))

(declare-fun m!6121694 () Bool)

(assert (=> bs!1190316 m!6121694))

(assert (=> bs!1190316 m!6121694))

(declare-fun m!6121696 () Bool)

(assert (=> bs!1190316 m!6121696))

(assert (=> bs!1190316 m!6120902))

(assert (=> b!5073454 d!1638348))

(declare-fun d!1638350 () Bool)

(declare-fun lt!2089899 () Bool)

(assert (=> d!1638350 (= lt!2089899 (isEmpty!31653 (list!19011 (left!42831 (left!42831 xs!286)))))))

(assert (=> d!1638350 (= lt!2089899 (= (size!39097 (left!42831 (left!42831 xs!286))) 0))))

(assert (=> d!1638350 (= (isEmpty!31650 (left!42831 (left!42831 xs!286))) lt!2089899)))

(declare-fun bs!1190317 () Bool)

(assert (= bs!1190317 d!1638350))

(assert (=> bs!1190317 m!6121638))

(assert (=> bs!1190317 m!6121638))

(declare-fun m!6121698 () Bool)

(assert (=> bs!1190317 m!6121698))

(assert (=> bs!1190317 m!6120926))

(assert (=> b!5073530 d!1638350))

(declare-fun d!1638352 () Bool)

(declare-fun lt!2089900 () Int)

(assert (=> d!1638352 (= lt!2089900 (size!39095 (list!19011 (left!42831 xs!286))))))

(assert (=> d!1638352 (= lt!2089900 (ite ((_ is Empty!15574) (left!42831 xs!286)) 0 (ite ((_ is Leaf!25866) (left!42831 xs!286)) (csize!31379 (left!42831 xs!286)) (csize!31378 (left!42831 xs!286)))))))

(assert (=> d!1638352 (= (size!39097 (left!42831 xs!286)) lt!2089900)))

(declare-fun bs!1190318 () Bool)

(assert (= bs!1190318 d!1638352))

(assert (=> bs!1190318 m!6120654))

(assert (=> bs!1190318 m!6120654))

(declare-fun m!6121700 () Bool)

(assert (=> bs!1190318 m!6121700))

(assert (=> d!1637970 d!1638352))

(assert (=> d!1637970 d!1638322))

(declare-fun b!5073942 () Bool)

(declare-fun e!3165741 () Bool)

(declare-fun e!3165740 () Bool)

(assert (=> b!5073942 (= e!3165741 e!3165740)))

(declare-fun res!2160343 () Bool)

(assert (=> b!5073942 (=> (not res!2160343) (not e!3165740))))

(assert (=> b!5073942 (= res!2160343 (<= (- 1) (- (height!2151 (left!42831 (left!42831 (right!43161 ys!41)))) (height!2151 (right!43161 (left!42831 (right!43161 ys!41)))))))))

(declare-fun b!5073943 () Bool)

(declare-fun res!2160347 () Bool)

(assert (=> b!5073943 (=> (not res!2160347) (not e!3165740))))

(assert (=> b!5073943 (= res!2160347 (<= (- (height!2151 (left!42831 (left!42831 (right!43161 ys!41)))) (height!2151 (right!43161 (left!42831 (right!43161 ys!41))))) 1))))

(declare-fun b!5073944 () Bool)

(assert (=> b!5073944 (= e!3165740 (not (isEmpty!31650 (right!43161 (left!42831 (right!43161 ys!41))))))))

(declare-fun d!1638354 () Bool)

(declare-fun res!2160346 () Bool)

(assert (=> d!1638354 (=> res!2160346 e!3165741)))

(assert (=> d!1638354 (= res!2160346 (not ((_ is Node!15574) (left!42831 (right!43161 ys!41)))))))

(assert (=> d!1638354 (= (isBalanced!4436 (left!42831 (right!43161 ys!41))) e!3165741)))

(declare-fun b!5073945 () Bool)

(declare-fun res!2160344 () Bool)

(assert (=> b!5073945 (=> (not res!2160344) (not e!3165740))))

(assert (=> b!5073945 (= res!2160344 (isBalanced!4436 (right!43161 (left!42831 (right!43161 ys!41)))))))

(declare-fun b!5073946 () Bool)

(declare-fun res!2160345 () Bool)

(assert (=> b!5073946 (=> (not res!2160345) (not e!3165740))))

(assert (=> b!5073946 (= res!2160345 (not (isEmpty!31650 (left!42831 (left!42831 (right!43161 ys!41))))))))

(declare-fun b!5073947 () Bool)

(declare-fun res!2160342 () Bool)

(assert (=> b!5073947 (=> (not res!2160342) (not e!3165740))))

(assert (=> b!5073947 (= res!2160342 (isBalanced!4436 (left!42831 (left!42831 (right!43161 ys!41)))))))

(assert (= (and d!1638354 (not res!2160346)) b!5073942))

(assert (= (and b!5073942 res!2160343) b!5073943))

(assert (= (and b!5073943 res!2160347) b!5073947))

(assert (= (and b!5073947 res!2160342) b!5073945))

(assert (= (and b!5073945 res!2160344) b!5073946))

(assert (= (and b!5073946 res!2160345) b!5073944))

(declare-fun m!6121702 () Bool)

(assert (=> b!5073947 m!6121702))

(declare-fun m!6121704 () Bool)

(assert (=> b!5073944 m!6121704))

(declare-fun m!6121706 () Bool)

(assert (=> b!5073945 m!6121706))

(declare-fun m!6121708 () Bool)

(assert (=> b!5073942 m!6121708))

(declare-fun m!6121710 () Bool)

(assert (=> b!5073942 m!6121710))

(declare-fun m!6121712 () Bool)

(assert (=> b!5073946 m!6121712))

(assert (=> b!5073943 m!6121708))

(assert (=> b!5073943 m!6121710))

(assert (=> b!5073485 d!1638354))

(declare-fun d!1638356 () Bool)

(assert (=> d!1638356 (= (inv!77610 (xs!18934 (right!43161 (left!42831 ys!41)))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 (left!42831 ys!41))))) 2147483647))))

(declare-fun bs!1190319 () Bool)

(assert (= bs!1190319 d!1638356))

(declare-fun m!6121714 () Bool)

(assert (=> bs!1190319 m!6121714))

(assert (=> b!5073568 d!1638356))

(assert (=> b!5073538 d!1638262))

(assert (=> b!5073538 d!1638266))

(declare-fun d!1638358 () Bool)

(declare-fun res!2160348 () Bool)

(declare-fun e!3165742 () Bool)

(assert (=> d!1638358 (=> (not res!2160348) (not e!3165742))))

(assert (=> d!1638358 (= res!2160348 (<= (size!39095 (list!19010 (xs!18934 (left!42831 (right!43161 ys!41))))) 512))))

(assert (=> d!1638358 (= (inv!77613 (left!42831 (right!43161 ys!41))) e!3165742)))

(declare-fun b!5073948 () Bool)

(declare-fun res!2160349 () Bool)

(assert (=> b!5073948 (=> (not res!2160349) (not e!3165742))))

(assert (=> b!5073948 (= res!2160349 (= (csize!31379 (left!42831 (right!43161 ys!41))) (size!39095 (list!19010 (xs!18934 (left!42831 (right!43161 ys!41)))))))))

(declare-fun b!5073949 () Bool)

(assert (=> b!5073949 (= e!3165742 (and (> (csize!31379 (left!42831 (right!43161 ys!41))) 0) (<= (csize!31379 (left!42831 (right!43161 ys!41))) 512)))))

(assert (= (and d!1638358 res!2160348) b!5073948))

(assert (= (and b!5073948 res!2160349) b!5073949))

(declare-fun m!6121716 () Bool)

(assert (=> d!1638358 m!6121716))

(assert (=> d!1638358 m!6121716))

(declare-fun m!6121718 () Bool)

(assert (=> d!1638358 m!6121718))

(assert (=> b!5073948 m!6121716))

(assert (=> b!5073948 m!6121716))

(assert (=> b!5073948 m!6121718))

(assert (=> b!5073488 d!1638358))

(declare-fun b!5073950 () Bool)

(declare-fun e!3165744 () Bool)

(declare-fun e!3165743 () Bool)

(assert (=> b!5073950 (= e!3165744 e!3165743)))

(declare-fun res!2160351 () Bool)

(assert (=> b!5073950 (=> (not res!2160351) (not e!3165743))))

(assert (=> b!5073950 (= res!2160351 (<= (- 1) (- (height!2151 (left!42831 (right!43161 (right!43161 ys!41)))) (height!2151 (right!43161 (right!43161 (right!43161 ys!41)))))))))

(declare-fun b!5073951 () Bool)

(declare-fun res!2160355 () Bool)

(assert (=> b!5073951 (=> (not res!2160355) (not e!3165743))))

(assert (=> b!5073951 (= res!2160355 (<= (- (height!2151 (left!42831 (right!43161 (right!43161 ys!41)))) (height!2151 (right!43161 (right!43161 (right!43161 ys!41))))) 1))))

(declare-fun b!5073952 () Bool)

(assert (=> b!5073952 (= e!3165743 (not (isEmpty!31650 (right!43161 (right!43161 (right!43161 ys!41))))))))

(declare-fun d!1638360 () Bool)

(declare-fun res!2160354 () Bool)

(assert (=> d!1638360 (=> res!2160354 e!3165744)))

(assert (=> d!1638360 (= res!2160354 (not ((_ is Node!15574) (right!43161 (right!43161 ys!41)))))))

(assert (=> d!1638360 (= (isBalanced!4436 (right!43161 (right!43161 ys!41))) e!3165744)))

(declare-fun b!5073953 () Bool)

(declare-fun res!2160352 () Bool)

(assert (=> b!5073953 (=> (not res!2160352) (not e!3165743))))

(assert (=> b!5073953 (= res!2160352 (isBalanced!4436 (right!43161 (right!43161 (right!43161 ys!41)))))))

(declare-fun b!5073954 () Bool)

(declare-fun res!2160353 () Bool)

(assert (=> b!5073954 (=> (not res!2160353) (not e!3165743))))

(assert (=> b!5073954 (= res!2160353 (not (isEmpty!31650 (left!42831 (right!43161 (right!43161 ys!41))))))))

(declare-fun b!5073955 () Bool)

(declare-fun res!2160350 () Bool)

(assert (=> b!5073955 (=> (not res!2160350) (not e!3165743))))

(assert (=> b!5073955 (= res!2160350 (isBalanced!4436 (left!42831 (right!43161 (right!43161 ys!41)))))))

(assert (= (and d!1638360 (not res!2160354)) b!5073950))

(assert (= (and b!5073950 res!2160351) b!5073951))

(assert (= (and b!5073951 res!2160355) b!5073955))

(assert (= (and b!5073955 res!2160350) b!5073953))

(assert (= (and b!5073953 res!2160352) b!5073954))

(assert (= (and b!5073954 res!2160353) b!5073952))

(declare-fun m!6121720 () Bool)

(assert (=> b!5073955 m!6121720))

(declare-fun m!6121722 () Bool)

(assert (=> b!5073952 m!6121722))

(declare-fun m!6121724 () Bool)

(assert (=> b!5073953 m!6121724))

(assert (=> b!5073950 m!6121632))

(assert (=> b!5073950 m!6121634))

(declare-fun m!6121726 () Bool)

(assert (=> b!5073954 m!6121726))

(assert (=> b!5073951 m!6121632))

(assert (=> b!5073951 m!6121634))

(assert (=> b!5073483 d!1638360))

(assert (=> d!1637964 d!1638342))

(assert (=> d!1637964 d!1638344))

(declare-fun d!1638362 () Bool)

(declare-fun res!2160356 () Bool)

(declare-fun e!3165745 () Bool)

(assert (=> d!1638362 (=> (not res!2160356) (not e!3165745))))

(assert (=> d!1638362 (= res!2160356 (= (csize!31378 (left!42831 (right!43161 ys!41))) (+ (size!39097 (left!42831 (left!42831 (right!43161 ys!41)))) (size!39097 (right!43161 (left!42831 (right!43161 ys!41)))))))))

(assert (=> d!1638362 (= (inv!77612 (left!42831 (right!43161 ys!41))) e!3165745)))

(declare-fun b!5073956 () Bool)

(declare-fun res!2160357 () Bool)

(assert (=> b!5073956 (=> (not res!2160357) (not e!3165745))))

(assert (=> b!5073956 (= res!2160357 (and (not (= (left!42831 (left!42831 (right!43161 ys!41))) Empty!15574)) (not (= (right!43161 (left!42831 (right!43161 ys!41))) Empty!15574))))))

(declare-fun b!5073957 () Bool)

(declare-fun res!2160358 () Bool)

(assert (=> b!5073957 (=> (not res!2160358) (not e!3165745))))

(assert (=> b!5073957 (= res!2160358 (= (cheight!15785 (left!42831 (right!43161 ys!41))) (+ (max!0 (height!2151 (left!42831 (left!42831 (right!43161 ys!41)))) (height!2151 (right!43161 (left!42831 (right!43161 ys!41))))) 1)))))

(declare-fun b!5073958 () Bool)

(assert (=> b!5073958 (= e!3165745 (<= 0 (cheight!15785 (left!42831 (right!43161 ys!41)))))))

(assert (= (and d!1638362 res!2160356) b!5073956))

(assert (= (and b!5073956 res!2160357) b!5073957))

(assert (= (and b!5073957 res!2160358) b!5073958))

(declare-fun m!6121728 () Bool)

(assert (=> d!1638362 m!6121728))

(declare-fun m!6121730 () Bool)

(assert (=> d!1638362 m!6121730))

(assert (=> b!5073957 m!6121708))

(assert (=> b!5073957 m!6121710))

(assert (=> b!5073957 m!6121708))

(assert (=> b!5073957 m!6121710))

(declare-fun m!6121732 () Bool)

(assert (=> b!5073957 m!6121732))

(assert (=> b!5073486 d!1638362))

(assert (=> b!5073452 d!1638148))

(assert (=> b!5073452 d!1638150))

(declare-fun d!1638364 () Bool)

(declare-fun lt!2089901 () Bool)

(assert (=> d!1638364 (= lt!2089901 (isEmpty!31653 (list!19011 (right!43161 (left!42831 xs!286)))))))

(assert (=> d!1638364 (= lt!2089901 (= (size!39097 (right!43161 (left!42831 xs!286))) 0))))

(assert (=> d!1638364 (= (isEmpty!31650 (right!43161 (left!42831 xs!286))) lt!2089901)))

(declare-fun bs!1190320 () Bool)

(assert (= bs!1190320 d!1638364))

(assert (=> bs!1190320 m!6121642))

(assert (=> bs!1190320 m!6121642))

(declare-fun m!6121734 () Bool)

(assert (=> bs!1190320 m!6121734))

(assert (=> bs!1190320 m!6120928))

(assert (=> b!5073528 d!1638364))

(assert (=> b!5073526 d!1638236))

(assert (=> b!5073526 d!1638238))

(declare-fun d!1638366 () Bool)

(assert (=> d!1638366 (= (isEmpty!31653 (list!19011 (right!43161 ys!41))) ((_ is Nil!58444) (list!19011 (right!43161 ys!41))))))

(assert (=> d!1637946 d!1638366))

(declare-fun b!5073959 () Bool)

(declare-fun e!3165746 () List!58568)

(assert (=> b!5073959 (= e!3165746 Nil!58444)))

(declare-fun b!5073960 () Bool)

(declare-fun e!3165747 () List!58568)

(assert (=> b!5073960 (= e!3165746 e!3165747)))

(declare-fun c!871175 () Bool)

(assert (=> b!5073960 (= c!871175 ((_ is Leaf!25866) (right!43161 ys!41)))))

(declare-fun b!5073962 () Bool)

(assert (=> b!5073962 (= e!3165747 (++!12797 (list!19011 (left!42831 (right!43161 ys!41))) (list!19011 (right!43161 (right!43161 ys!41)))))))

(declare-fun b!5073961 () Bool)

(assert (=> b!5073961 (= e!3165747 (list!19010 (xs!18934 (right!43161 ys!41))))))

(declare-fun d!1638368 () Bool)

(declare-fun c!871174 () Bool)

(assert (=> d!1638368 (= c!871174 ((_ is Empty!15574) (right!43161 ys!41)))))

(assert (=> d!1638368 (= (list!19011 (right!43161 ys!41)) e!3165746)))

(assert (= (and d!1638368 c!871174) b!5073959))

(assert (= (and d!1638368 (not c!871174)) b!5073960))

(assert (= (and b!5073960 c!871175) b!5073961))

(assert (= (and b!5073960 (not c!871175)) b!5073962))

(assert (=> b!5073962 m!6121410))

(assert (=> b!5073962 m!6121446))

(assert (=> b!5073962 m!6121410))

(assert (=> b!5073962 m!6121446))

(declare-fun m!6121736 () Bool)

(assert (=> b!5073962 m!6121736))

(assert (=> b!5073961 m!6120936))

(assert (=> d!1637946 d!1638368))

(declare-fun d!1638370 () Bool)

(declare-fun lt!2089902 () Int)

(assert (=> d!1638370 (= lt!2089902 (size!39095 (list!19011 (right!43161 ys!41))))))

(assert (=> d!1638370 (= lt!2089902 (ite ((_ is Empty!15574) (right!43161 ys!41)) 0 (ite ((_ is Leaf!25866) (right!43161 ys!41)) (csize!31379 (right!43161 ys!41)) (csize!31378 (right!43161 ys!41)))))))

(assert (=> d!1638370 (= (size!39097 (right!43161 ys!41)) lt!2089902)))

(declare-fun bs!1190321 () Bool)

(assert (= bs!1190321 d!1638370))

(assert (=> bs!1190321 m!6120890))

(assert (=> bs!1190321 m!6120890))

(declare-fun m!6121738 () Bool)

(assert (=> bs!1190321 m!6121738))

(assert (=> d!1637946 d!1638370))

(declare-fun d!1638372 () Bool)

(assert (=> d!1638372 (= (isEmpty!31653 (list!19011 (left!42831 xs!286))) ((_ is Nil!58444) (list!19011 (left!42831 xs!286))))))

(assert (=> d!1637854 d!1638372))

(declare-fun b!5073963 () Bool)

(declare-fun e!3165748 () List!58568)

(assert (=> b!5073963 (= e!3165748 Nil!58444)))

(declare-fun b!5073964 () Bool)

(declare-fun e!3165749 () List!58568)

(assert (=> b!5073964 (= e!3165748 e!3165749)))

(declare-fun c!871177 () Bool)

(assert (=> b!5073964 (= c!871177 ((_ is Leaf!25866) (left!42831 xs!286)))))

(declare-fun b!5073966 () Bool)

(assert (=> b!5073966 (= e!3165749 (++!12797 (list!19011 (left!42831 (left!42831 xs!286))) (list!19011 (right!43161 (left!42831 xs!286)))))))

(declare-fun b!5073965 () Bool)

(assert (=> b!5073965 (= e!3165749 (list!19010 (xs!18934 (left!42831 xs!286))))))

(declare-fun d!1638374 () Bool)

(declare-fun c!871176 () Bool)

(assert (=> d!1638374 (= c!871176 ((_ is Empty!15574) (left!42831 xs!286)))))

(assert (=> d!1638374 (= (list!19011 (left!42831 xs!286)) e!3165748)))

(assert (= (and d!1638374 c!871176) b!5073963))

(assert (= (and d!1638374 (not c!871176)) b!5073964))

(assert (= (and b!5073964 c!871177) b!5073965))

(assert (= (and b!5073964 (not c!871177)) b!5073966))

(assert (=> b!5073966 m!6121638))

(assert (=> b!5073966 m!6121642))

(assert (=> b!5073966 m!6121638))

(assert (=> b!5073966 m!6121642))

(declare-fun m!6121740 () Bool)

(assert (=> b!5073966 m!6121740))

(assert (=> b!5073965 m!6120916))

(assert (=> d!1637854 d!1638374))

(assert (=> d!1637854 d!1638352))

(declare-fun d!1638376 () Bool)

(declare-fun res!2160359 () Bool)

(declare-fun e!3165750 () Bool)

(assert (=> d!1638376 (=> (not res!2160359) (not e!3165750))))

(assert (=> d!1638376 (= res!2160359 (= (csize!31378 (left!42831 (left!42831 ys!41))) (+ (size!39097 (left!42831 (left!42831 (left!42831 ys!41)))) (size!39097 (right!43161 (left!42831 (left!42831 ys!41)))))))))

(assert (=> d!1638376 (= (inv!77612 (left!42831 (left!42831 ys!41))) e!3165750)))

(declare-fun b!5073967 () Bool)

(declare-fun res!2160360 () Bool)

(assert (=> b!5073967 (=> (not res!2160360) (not e!3165750))))

(assert (=> b!5073967 (= res!2160360 (and (not (= (left!42831 (left!42831 (left!42831 ys!41))) Empty!15574)) (not (= (right!43161 (left!42831 (left!42831 ys!41))) Empty!15574))))))

(declare-fun b!5073968 () Bool)

(declare-fun res!2160361 () Bool)

(assert (=> b!5073968 (=> (not res!2160361) (not e!3165750))))

(assert (=> b!5073968 (= res!2160361 (= (cheight!15785 (left!42831 (left!42831 ys!41))) (+ (max!0 (height!2151 (left!42831 (left!42831 (left!42831 ys!41)))) (height!2151 (right!43161 (left!42831 (left!42831 ys!41))))) 1)))))

(declare-fun b!5073969 () Bool)

(assert (=> b!5073969 (= e!3165750 (<= 0 (cheight!15785 (left!42831 (left!42831 ys!41)))))))

(assert (= (and d!1638376 res!2160359) b!5073967))

(assert (= (and b!5073967 res!2160360) b!5073968))

(assert (= (and b!5073968 res!2160361) b!5073969))

(declare-fun m!6121742 () Bool)

(assert (=> d!1638376 m!6121742))

(declare-fun m!6121744 () Bool)

(assert (=> d!1638376 m!6121744))

(assert (=> b!5073968 m!6121196))

(assert (=> b!5073968 m!6121200))

(assert (=> b!5073968 m!6121196))

(assert (=> b!5073968 m!6121200))

(declare-fun m!6121746 () Bool)

(assert (=> b!5073968 m!6121746))

(assert (=> b!5073532 d!1638376))

(assert (=> b!5073480 d!1638250))

(assert (=> b!5073480 d!1638254))

(declare-fun d!1638378 () Bool)

(declare-fun lt!2089903 () Int)

(assert (=> d!1638378 (= lt!2089903 (size!39095 (list!19011 (left!42831 ys!41))))))

(assert (=> d!1638378 (= lt!2089903 (ite ((_ is Empty!15574) (left!42831 ys!41)) 0 (ite ((_ is Leaf!25866) (left!42831 ys!41)) (csize!31379 (left!42831 ys!41)) (csize!31378 (left!42831 ys!41)))))))

(assert (=> d!1638378 (= (size!39097 (left!42831 ys!41)) lt!2089903)))

(declare-fun bs!1190322 () Bool)

(assert (= bs!1190322 d!1638378))

(assert (=> bs!1190322 m!6120858))

(assert (=> bs!1190322 m!6120858))

(declare-fun m!6121748 () Bool)

(assert (=> bs!1190322 m!6121748))

(assert (=> d!1637868 d!1638378))

(assert (=> d!1637868 d!1638370))

(declare-fun d!1638380 () Bool)

(assert (=> d!1638380 (= (inv!77610 (xs!18934 (right!43161 (right!43161 ys!41)))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 (right!43161 ys!41))))) 2147483647))))

(declare-fun bs!1190323 () Bool)

(assert (= bs!1190323 d!1638380))

(declare-fun m!6121750 () Bool)

(assert (=> bs!1190323 m!6121750))

(assert (=> b!5073552 d!1638380))

(declare-fun d!1638382 () Bool)

(declare-fun lt!2089904 () Int)

(assert (=> d!1638382 (= lt!2089904 (size!39095 (list!19011 (left!42831 (left!42831 ys!41)))))))

(assert (=> d!1638382 (= lt!2089904 (ite ((_ is Empty!15574) (left!42831 (left!42831 ys!41))) 0 (ite ((_ is Leaf!25866) (left!42831 (left!42831 ys!41))) (csize!31379 (left!42831 (left!42831 ys!41))) (csize!31378 (left!42831 (left!42831 ys!41))))))))

(assert (=> d!1638382 (= (size!39097 (left!42831 (left!42831 ys!41))) lt!2089904)))

(declare-fun bs!1190324 () Bool)

(assert (= bs!1190324 d!1638382))

(assert (=> bs!1190324 m!6121690))

(assert (=> bs!1190324 m!6121690))

(declare-fun m!6121752 () Bool)

(assert (=> bs!1190324 m!6121752))

(assert (=> d!1637952 d!1638382))

(declare-fun d!1638384 () Bool)

(declare-fun lt!2089905 () Int)

(assert (=> d!1638384 (= lt!2089905 (size!39095 (list!19011 (right!43161 (left!42831 ys!41)))))))

(assert (=> d!1638384 (= lt!2089905 (ite ((_ is Empty!15574) (right!43161 (left!42831 ys!41))) 0 (ite ((_ is Leaf!25866) (right!43161 (left!42831 ys!41))) (csize!31379 (right!43161 (left!42831 ys!41))) (csize!31378 (right!43161 (left!42831 ys!41))))))))

(assert (=> d!1638384 (= (size!39097 (right!43161 (left!42831 ys!41))) lt!2089905)))

(declare-fun bs!1190325 () Bool)

(assert (= bs!1190325 d!1638384))

(assert (=> bs!1190325 m!6121694))

(assert (=> bs!1190325 m!6121694))

(declare-fun m!6121754 () Bool)

(assert (=> bs!1190325 m!6121754))

(assert (=> d!1637952 d!1638384))

(declare-fun d!1638386 () Bool)

(declare-fun c!871178 () Bool)

(assert (=> d!1638386 (= c!871178 ((_ is Node!15574) (left!42831 (left!42831 (left!42831 xs!286)))))))

(declare-fun e!3165751 () Bool)

(assert (=> d!1638386 (= (inv!77611 (left!42831 (left!42831 (left!42831 xs!286)))) e!3165751)))

(declare-fun b!5073970 () Bool)

(assert (=> b!5073970 (= e!3165751 (inv!77612 (left!42831 (left!42831 (left!42831 xs!286)))))))

(declare-fun b!5073971 () Bool)

(declare-fun e!3165752 () Bool)

(assert (=> b!5073971 (= e!3165751 e!3165752)))

(declare-fun res!2160362 () Bool)

(assert (=> b!5073971 (= res!2160362 (not ((_ is Leaf!25866) (left!42831 (left!42831 (left!42831 xs!286))))))))

(assert (=> b!5073971 (=> res!2160362 e!3165752)))

(declare-fun b!5073972 () Bool)

(assert (=> b!5073972 (= e!3165752 (inv!77613 (left!42831 (left!42831 (left!42831 xs!286)))))))

(assert (= (and d!1638386 c!871178) b!5073970))

(assert (= (and d!1638386 (not c!871178)) b!5073971))

(assert (= (and b!5073971 (not res!2160362)) b!5073972))

(declare-fun m!6121756 () Bool)

(assert (=> b!5073970 m!6121756))

(declare-fun m!6121758 () Bool)

(assert (=> b!5073972 m!6121758))

(assert (=> b!5073541 d!1638386))

(declare-fun d!1638388 () Bool)

(declare-fun c!871179 () Bool)

(assert (=> d!1638388 (= c!871179 ((_ is Node!15574) (right!43161 (left!42831 (left!42831 xs!286)))))))

(declare-fun e!3165753 () Bool)

(assert (=> d!1638388 (= (inv!77611 (right!43161 (left!42831 (left!42831 xs!286)))) e!3165753)))

(declare-fun b!5073973 () Bool)

(assert (=> b!5073973 (= e!3165753 (inv!77612 (right!43161 (left!42831 (left!42831 xs!286)))))))

(declare-fun b!5073974 () Bool)

(declare-fun e!3165754 () Bool)

(assert (=> b!5073974 (= e!3165753 e!3165754)))

(declare-fun res!2160363 () Bool)

(assert (=> b!5073974 (= res!2160363 (not ((_ is Leaf!25866) (right!43161 (left!42831 (left!42831 xs!286))))))))

(assert (=> b!5073974 (=> res!2160363 e!3165754)))

(declare-fun b!5073975 () Bool)

(assert (=> b!5073975 (= e!3165754 (inv!77613 (right!43161 (left!42831 (left!42831 xs!286)))))))

(assert (= (and d!1638388 c!871179) b!5073973))

(assert (= (and d!1638388 (not c!871179)) b!5073974))

(assert (= (and b!5073974 (not res!2160363)) b!5073975))

(declare-fun m!6121760 () Bool)

(assert (=> b!5073973 m!6121760))

(declare-fun m!6121762 () Bool)

(assert (=> b!5073975 m!6121762))

(assert (=> b!5073541 d!1638388))

(declare-fun d!1638390 () Bool)

(declare-fun res!2160364 () Bool)

(declare-fun e!3165755 () Bool)

(assert (=> d!1638390 (=> (not res!2160364) (not e!3165755))))

(assert (=> d!1638390 (= res!2160364 (<= (size!39095 (list!19010 (xs!18934 (right!43161 (right!43161 xs!286))))) 512))))

(assert (=> d!1638390 (= (inv!77613 (right!43161 (right!43161 xs!286))) e!3165755)))

(declare-fun b!5073976 () Bool)

(declare-fun res!2160365 () Bool)

(assert (=> b!5073976 (=> (not res!2160365) (not e!3165755))))

(assert (=> b!5073976 (= res!2160365 (= (csize!31379 (right!43161 (right!43161 xs!286))) (size!39095 (list!19010 (xs!18934 (right!43161 (right!43161 xs!286)))))))))

(declare-fun b!5073977 () Bool)

(assert (=> b!5073977 (= e!3165755 (and (> (csize!31379 (right!43161 (right!43161 xs!286))) 0) (<= (csize!31379 (right!43161 (right!43161 xs!286))) 512)))))

(assert (= (and d!1638390 res!2160364) b!5073976))

(assert (= (and b!5073976 res!2160365) b!5073977))

(declare-fun m!6121764 () Bool)

(assert (=> d!1638390 m!6121764))

(assert (=> d!1638390 m!6121764))

(declare-fun m!6121766 () Bool)

(assert (=> d!1638390 m!6121766))

(assert (=> b!5073976 m!6121764))

(assert (=> b!5073976 m!6121764))

(assert (=> b!5073976 m!6121766))

(assert (=> b!5073508 d!1638390))

(declare-fun d!1638392 () Bool)

(assert (=> d!1638392 (= (max!0 (height!2151 (left!42831 ys!41)) (height!2151 (right!43161 ys!41))) (ite (< (height!2151 (left!42831 ys!41)) (height!2151 (right!43161 ys!41))) (height!2151 (right!43161 ys!41)) (height!2151 (left!42831 ys!41))))))

(assert (=> b!5073427 d!1638392))

(assert (=> b!5073427 d!1637782))

(assert (=> b!5073427 d!1637780))

(declare-fun d!1638394 () Bool)

(assert (=> d!1638394 (= (inv!77610 (xs!18934 (left!42831 (right!43161 xs!286)))) (<= (size!39095 (innerList!15662 (xs!18934 (left!42831 (right!43161 xs!286))))) 2147483647))))

(declare-fun bs!1190326 () Bool)

(assert (= bs!1190326 d!1638394))

(declare-fun m!6121768 () Bool)

(assert (=> bs!1190326 m!6121768))

(assert (=> b!5073556 d!1638394))

(declare-fun d!1638396 () Bool)

(declare-fun res!2160366 () Bool)

(declare-fun e!3165756 () Bool)

(assert (=> d!1638396 (=> (not res!2160366) (not e!3165756))))

(assert (=> d!1638396 (= res!2160366 (= (csize!31378 (right!43161 (right!43161 xs!286))) (+ (size!39097 (left!42831 (right!43161 (right!43161 xs!286)))) (size!39097 (right!43161 (right!43161 (right!43161 xs!286)))))))))

(assert (=> d!1638396 (= (inv!77612 (right!43161 (right!43161 xs!286))) e!3165756)))

(declare-fun b!5073978 () Bool)

(declare-fun res!2160367 () Bool)

(assert (=> b!5073978 (=> (not res!2160367) (not e!3165756))))

(assert (=> b!5073978 (= res!2160367 (and (not (= (left!42831 (right!43161 (right!43161 xs!286))) Empty!15574)) (not (= (right!43161 (right!43161 (right!43161 xs!286))) Empty!15574))))))

(declare-fun b!5073979 () Bool)

(declare-fun res!2160368 () Bool)

(assert (=> b!5073979 (=> (not res!2160368) (not e!3165756))))

(assert (=> b!5073979 (= res!2160368 (= (cheight!15785 (right!43161 (right!43161 xs!286))) (+ (max!0 (height!2151 (left!42831 (right!43161 (right!43161 xs!286)))) (height!2151 (right!43161 (right!43161 (right!43161 xs!286))))) 1)))))

(declare-fun b!5073980 () Bool)

(assert (=> b!5073980 (= e!3165756 (<= 0 (cheight!15785 (right!43161 (right!43161 xs!286)))))))

(assert (= (and d!1638396 res!2160366) b!5073978))

(assert (= (and b!5073978 res!2160367) b!5073979))

(assert (= (and b!5073979 res!2160368) b!5073980))

(declare-fun m!6121770 () Bool)

(assert (=> d!1638396 m!6121770))

(declare-fun m!6121772 () Bool)

(assert (=> d!1638396 m!6121772))

(assert (=> b!5073979 m!6121680))

(assert (=> b!5073979 m!6121682))

(assert (=> b!5073979 m!6121680))

(assert (=> b!5073979 m!6121682))

(declare-fun m!6121774 () Bool)

(assert (=> b!5073979 m!6121774))

(assert (=> b!5073506 d!1638396))

(declare-fun d!1638398 () Bool)

(declare-fun lt!2089906 () Int)

(assert (=> d!1638398 (>= lt!2089906 0)))

(declare-fun e!3165757 () Int)

(assert (=> d!1638398 (= lt!2089906 e!3165757)))

(declare-fun c!871180 () Bool)

(assert (=> d!1638398 (= c!871180 ((_ is Nil!58444) (list!19010 (xs!18934 (right!43161 ys!41)))))))

(assert (=> d!1638398 (= (size!39095 (list!19010 (xs!18934 (right!43161 ys!41)))) lt!2089906)))

(declare-fun b!5073981 () Bool)

(assert (=> b!5073981 (= e!3165757 0)))

(declare-fun b!5073982 () Bool)

(assert (=> b!5073982 (= e!3165757 (+ 1 (size!39095 (t!371345 (list!19010 (xs!18934 (right!43161 ys!41)))))))))

(assert (= (and d!1638398 c!871180) b!5073981))

(assert (= (and d!1638398 (not c!871180)) b!5073982))

(declare-fun m!6121776 () Bool)

(assert (=> b!5073982 m!6121776))

(assert (=> b!5073518 d!1638398))

(declare-fun d!1638400 () Bool)

(assert (=> d!1638400 (= (list!19010 (xs!18934 (right!43161 ys!41))) (innerList!15662 (xs!18934 (right!43161 ys!41))))))

(assert (=> b!5073518 d!1638400))

(declare-fun d!1638402 () Bool)

(declare-fun res!2160369 () Bool)

(declare-fun e!3165758 () Bool)

(assert (=> d!1638402 (=> (not res!2160369) (not e!3165758))))

(assert (=> d!1638402 (= res!2160369 (<= (size!39095 (list!19010 (xs!18934 (right!43161 (left!42831 ys!41))))) 512))))

(assert (=> d!1638402 (= (inv!77613 (right!43161 (left!42831 ys!41))) e!3165758)))

(declare-fun b!5073983 () Bool)

(declare-fun res!2160370 () Bool)

(assert (=> b!5073983 (=> (not res!2160370) (not e!3165758))))

(assert (=> b!5073983 (= res!2160370 (= (csize!31379 (right!43161 (left!42831 ys!41))) (size!39095 (list!19010 (xs!18934 (right!43161 (left!42831 ys!41)))))))))

(declare-fun b!5073984 () Bool)

(assert (=> b!5073984 (= e!3165758 (and (> (csize!31379 (right!43161 (left!42831 ys!41))) 0) (<= (csize!31379 (right!43161 (left!42831 ys!41))) 512)))))

(assert (= (and d!1638402 res!2160369) b!5073983))

(assert (= (and b!5073983 res!2160370) b!5073984))

(declare-fun m!6121778 () Bool)

(assert (=> d!1638402 m!6121778))

(assert (=> d!1638402 m!6121778))

(declare-fun m!6121780 () Bool)

(assert (=> d!1638402 m!6121780))

(assert (=> b!5073983 m!6121778))

(assert (=> b!5073983 m!6121778))

(assert (=> b!5073983 m!6121780))

(assert (=> b!5073537 d!1638402))

(declare-fun d!1638404 () Bool)

(declare-fun lt!2089907 () Int)

(assert (=> d!1638404 (>= lt!2089907 0)))

(declare-fun e!3165759 () Int)

(assert (=> d!1638404 (= lt!2089907 e!3165759)))

(declare-fun c!871181 () Bool)

(assert (=> d!1638404 (= c!871181 ((_ is Nil!58444) (innerList!15662 (xs!18934 (right!43161 xs!286)))))))

(assert (=> d!1638404 (= (size!39095 (innerList!15662 (xs!18934 (right!43161 xs!286)))) lt!2089907)))

(declare-fun b!5073985 () Bool)

(assert (=> b!5073985 (= e!3165759 0)))

(declare-fun b!5073986 () Bool)

(assert (=> b!5073986 (= e!3165759 (+ 1 (size!39095 (t!371345 (innerList!15662 (xs!18934 (right!43161 xs!286)))))))))

(assert (= (and d!1638404 c!871181) b!5073985))

(assert (= (and d!1638404 (not c!871181)) b!5073986))

(declare-fun m!6121782 () Bool)

(assert (=> b!5073986 m!6121782))

(assert (=> d!1637954 d!1638404))

(assert (=> d!1637968 d!1638398))

(assert (=> d!1637968 d!1638400))

(declare-fun b!5073987 () Bool)

(declare-fun e!3165761 () Bool)

(declare-fun e!3165760 () Bool)

(assert (=> b!5073987 (= e!3165761 e!3165760)))

(declare-fun res!2160372 () Bool)

(assert (=> b!5073987 (=> (not res!2160372) (not e!3165760))))

(assert (=> b!5073987 (= res!2160372 (<= (- 1) (- (height!2151 (left!42831 (left!42831 (right!43161 xs!286)))) (height!2151 (right!43161 (left!42831 (right!43161 xs!286)))))))))

(declare-fun b!5073988 () Bool)

(declare-fun res!2160376 () Bool)

(assert (=> b!5073988 (=> (not res!2160376) (not e!3165760))))

(assert (=> b!5073988 (= res!2160376 (<= (- (height!2151 (left!42831 (left!42831 (right!43161 xs!286)))) (height!2151 (right!43161 (left!42831 (right!43161 xs!286))))) 1))))

(declare-fun b!5073989 () Bool)

(assert (=> b!5073989 (= e!3165760 (not (isEmpty!31650 (right!43161 (left!42831 (right!43161 xs!286))))))))

(declare-fun d!1638406 () Bool)

(declare-fun res!2160375 () Bool)

(assert (=> d!1638406 (=> res!2160375 e!3165761)))

(assert (=> d!1638406 (= res!2160375 (not ((_ is Node!15574) (left!42831 (right!43161 xs!286)))))))

(assert (=> d!1638406 (= (isBalanced!4436 (left!42831 (right!43161 xs!286))) e!3165761)))

(declare-fun b!5073990 () Bool)

(declare-fun res!2160373 () Bool)

(assert (=> b!5073990 (=> (not res!2160373) (not e!3165760))))

(assert (=> b!5073990 (= res!2160373 (isBalanced!4436 (right!43161 (left!42831 (right!43161 xs!286)))))))

(declare-fun b!5073991 () Bool)

(declare-fun res!2160374 () Bool)

(assert (=> b!5073991 (=> (not res!2160374) (not e!3165760))))

(assert (=> b!5073991 (= res!2160374 (not (isEmpty!31650 (left!42831 (left!42831 (right!43161 xs!286))))))))

(declare-fun b!5073992 () Bool)

(declare-fun res!2160371 () Bool)

(assert (=> b!5073992 (=> (not res!2160371) (not e!3165760))))

(assert (=> b!5073992 (= res!2160371 (isBalanced!4436 (left!42831 (left!42831 (right!43161 xs!286)))))))

(assert (= (and d!1638406 (not res!2160375)) b!5073987))

(assert (= (and b!5073987 res!2160372) b!5073988))

(assert (= (and b!5073988 res!2160376) b!5073992))

(assert (= (and b!5073992 res!2160371) b!5073990))

(assert (= (and b!5073990 res!2160373) b!5073991))

(assert (= (and b!5073991 res!2160374) b!5073989))

(declare-fun m!6121784 () Bool)

(assert (=> b!5073992 m!6121784))

(declare-fun m!6121786 () Bool)

(assert (=> b!5073989 m!6121786))

(declare-fun m!6121788 () Bool)

(assert (=> b!5073990 m!6121788))

(assert (=> b!5073987 m!6121390))

(assert (=> b!5073987 m!6121392))

(declare-fun m!6121790 () Bool)

(assert (=> b!5073991 m!6121790))

(assert (=> b!5073988 m!6121390))

(assert (=> b!5073988 m!6121392))

(assert (=> b!5073369 d!1638406))

(declare-fun d!1638408 () Bool)

(assert (=> d!1638408 (= (inv!77610 (xs!18934 (right!43161 (left!42831 xs!286)))) (<= (size!39095 (innerList!15662 (xs!18934 (right!43161 (left!42831 xs!286))))) 2147483647))))

(declare-fun bs!1190327 () Bool)

(assert (= bs!1190327 d!1638408))

(declare-fun m!6121792 () Bool)

(assert (=> bs!1190327 m!6121792))

(assert (=> b!5073545 d!1638408))

(assert (=> b!5073244 d!1637978))

(assert (=> b!5073244 d!1637980))

(declare-fun d!1638410 () Bool)

(assert (=> d!1638410 (= (isEmpty!31653 (list!19011 (left!42831 ys!41))) ((_ is Nil!58444) (list!19011 (left!42831 ys!41))))))

(assert (=> d!1637934 d!1638410))

(declare-fun b!5073993 () Bool)

(declare-fun e!3165762 () List!58568)

(assert (=> b!5073993 (= e!3165762 Nil!58444)))

(declare-fun b!5073994 () Bool)

(declare-fun e!3165763 () List!58568)

(assert (=> b!5073994 (= e!3165762 e!3165763)))

(declare-fun c!871183 () Bool)

(assert (=> b!5073994 (= c!871183 ((_ is Leaf!25866) (left!42831 ys!41)))))

(declare-fun b!5073996 () Bool)

(assert (=> b!5073996 (= e!3165763 (++!12797 (list!19011 (left!42831 (left!42831 ys!41))) (list!19011 (right!43161 (left!42831 ys!41)))))))

(declare-fun b!5073995 () Bool)

(assert (=> b!5073995 (= e!3165763 (list!19010 (xs!18934 (left!42831 ys!41))))))

(declare-fun d!1638412 () Bool)

(declare-fun c!871182 () Bool)

(assert (=> d!1638412 (= c!871182 ((_ is Empty!15574) (left!42831 ys!41)))))

(assert (=> d!1638412 (= (list!19011 (left!42831 ys!41)) e!3165762)))

(assert (= (and d!1638412 c!871182) b!5073993))

(assert (= (and d!1638412 (not c!871182)) b!5073994))

(assert (= (and b!5073994 c!871183) b!5073995))

(assert (= (and b!5073994 (not c!871183)) b!5073996))

(assert (=> b!5073996 m!6121690))

(assert (=> b!5073996 m!6121694))

(assert (=> b!5073996 m!6121690))

(assert (=> b!5073996 m!6121694))

(declare-fun m!6121794 () Bool)

(assert (=> b!5073996 m!6121794))

(assert (=> b!5073995 m!6120896))

(assert (=> d!1637934 d!1638412))

(assert (=> d!1637934 d!1638378))

(declare-fun d!1638414 () Bool)

(declare-fun res!2160377 () Bool)

(declare-fun e!3165764 () Bool)

(assert (=> d!1638414 (=> (not res!2160377) (not e!3165764))))

(assert (=> d!1638414 (= res!2160377 (= (csize!31378 (right!43161 (left!42831 ys!41))) (+ (size!39097 (left!42831 (right!43161 (left!42831 ys!41)))) (size!39097 (right!43161 (right!43161 (left!42831 ys!41)))))))))

(assert (=> d!1638414 (= (inv!77612 (right!43161 (left!42831 ys!41))) e!3165764)))

(declare-fun b!5073997 () Bool)

(declare-fun res!2160378 () Bool)

(assert (=> b!5073997 (=> (not res!2160378) (not e!3165764))))

(assert (=> b!5073997 (= res!2160378 (and (not (= (left!42831 (right!43161 (left!42831 ys!41))) Empty!15574)) (not (= (right!43161 (right!43161 (left!42831 ys!41))) Empty!15574))))))

(declare-fun b!5073998 () Bool)

(declare-fun res!2160379 () Bool)

(assert (=> b!5073998 (=> (not res!2160379) (not e!3165764))))

(assert (=> b!5073998 (= res!2160379 (= (cheight!15785 (right!43161 (left!42831 ys!41))) (+ (max!0 (height!2151 (left!42831 (right!43161 (left!42831 ys!41)))) (height!2151 (right!43161 (right!43161 (left!42831 ys!41))))) 1)))))

(declare-fun b!5073999 () Bool)

(assert (=> b!5073999 (= e!3165764 (<= 0 (cheight!15785 (right!43161 (left!42831 ys!41)))))))

(assert (= (and d!1638414 res!2160377) b!5073997))

(assert (= (and b!5073997 res!2160378) b!5073998))

(assert (= (and b!5073998 res!2160379) b!5073999))

(declare-fun m!6121796 () Bool)

(assert (=> d!1638414 m!6121796))

(declare-fun m!6121798 () Bool)

(assert (=> d!1638414 m!6121798))

(assert (=> b!5073998 m!6121302))

(assert (=> b!5073998 m!6121304))

(assert (=> b!5073998 m!6121302))

(assert (=> b!5073998 m!6121304))

(declare-fun m!6121800 () Bool)

(assert (=> b!5073998 m!6121800))

(assert (=> b!5073535 d!1638414))

(declare-fun e!3165765 () Bool)

(declare-fun tp!1416156 () Bool)

(declare-fun b!5074000 () Bool)

(declare-fun tp!1416155 () Bool)

(assert (=> b!5074000 (= e!3165765 (and (inv!77611 (left!42831 (left!42831 (left!42831 (left!42831 ys!41))))) tp!1416155 (inv!77611 (right!43161 (left!42831 (left!42831 (left!42831 ys!41))))) tp!1416156))))

(declare-fun b!5074002 () Bool)

(declare-fun e!3165766 () Bool)

(declare-fun tp!1416154 () Bool)

(assert (=> b!5074002 (= e!3165766 tp!1416154)))

(declare-fun b!5074001 () Bool)

(assert (=> b!5074001 (= e!3165765 (and (inv!77610 (xs!18934 (left!42831 (left!42831 (left!42831 ys!41))))) e!3165766))))

(assert (=> b!5073564 (= tp!1416087 (and (inv!77611 (left!42831 (left!42831 (left!42831 ys!41)))) e!3165765))))

(assert (= (and b!5073564 ((_ is Node!15574) (left!42831 (left!42831 (left!42831 ys!41))))) b!5074000))

(assert (= b!5074001 b!5074002))

(assert (= (and b!5073564 ((_ is Leaf!25866) (left!42831 (left!42831 (left!42831 ys!41))))) b!5074001))

(declare-fun m!6121802 () Bool)

(assert (=> b!5074000 m!6121802))

(declare-fun m!6121804 () Bool)

(assert (=> b!5074000 m!6121804))

(declare-fun m!6121806 () Bool)

(assert (=> b!5074001 m!6121806))

(assert (=> b!5073564 m!6121006))

(declare-fun e!3165767 () Bool)

(declare-fun tp!1416159 () Bool)

(declare-fun tp!1416158 () Bool)

(declare-fun b!5074003 () Bool)

(assert (=> b!5074003 (= e!3165767 (and (inv!77611 (left!42831 (right!43161 (left!42831 (left!42831 ys!41))))) tp!1416158 (inv!77611 (right!43161 (right!43161 (left!42831 (left!42831 ys!41))))) tp!1416159))))

(declare-fun b!5074005 () Bool)

(declare-fun e!3165768 () Bool)

(declare-fun tp!1416157 () Bool)

(assert (=> b!5074005 (= e!3165768 tp!1416157)))

(declare-fun b!5074004 () Bool)

(assert (=> b!5074004 (= e!3165767 (and (inv!77610 (xs!18934 (right!43161 (left!42831 (left!42831 ys!41))))) e!3165768))))

(assert (=> b!5073564 (= tp!1416088 (and (inv!77611 (right!43161 (left!42831 (left!42831 ys!41)))) e!3165767))))

(assert (= (and b!5073564 ((_ is Node!15574) (right!43161 (left!42831 (left!42831 ys!41))))) b!5074003))

(assert (= b!5074004 b!5074005))

(assert (= (and b!5073564 ((_ is Leaf!25866) (right!43161 (left!42831 (left!42831 ys!41))))) b!5074004))

(declare-fun m!6121808 () Bool)

(assert (=> b!5074003 m!6121808))

(declare-fun m!6121810 () Bool)

(assert (=> b!5074003 m!6121810))

(declare-fun m!6121812 () Bool)

(assert (=> b!5074004 m!6121812))

(assert (=> b!5073564 m!6121008))

(declare-fun b!5074006 () Bool)

(declare-fun e!3165769 () Bool)

(declare-fun tp!1416160 () Bool)

(assert (=> b!5074006 (= e!3165769 (and tp_is_empty!37069 tp!1416160))))

(assert (=> b!5073554 (= tp!1416076 e!3165769)))

(assert (= (and b!5073554 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 (left!42831 ys!41)))))) b!5074006))

(declare-fun b!5074007 () Bool)

(declare-fun e!3165770 () Bool)

(declare-fun tp!1416161 () Bool)

(assert (=> b!5074007 (= e!3165770 (and tp_is_empty!37069 tp!1416161))))

(assert (=> b!5073547 (= tp!1416069 e!3165770)))

(assert (= (and b!5073547 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 (right!43161 xs!286)))))) b!5074007))

(declare-fun tp!1416164 () Bool)

(declare-fun tp!1416163 () Bool)

(declare-fun e!3165771 () Bool)

(declare-fun b!5074008 () Bool)

(assert (=> b!5074008 (= e!3165771 (and (inv!77611 (left!42831 (left!42831 (right!43161 (left!42831 xs!286))))) tp!1416163 (inv!77611 (right!43161 (left!42831 (right!43161 (left!42831 xs!286))))) tp!1416164))))

(declare-fun b!5074010 () Bool)

(declare-fun e!3165772 () Bool)

(declare-fun tp!1416162 () Bool)

(assert (=> b!5074010 (= e!3165772 tp!1416162)))

(declare-fun b!5074009 () Bool)

(assert (=> b!5074009 (= e!3165771 (and (inv!77610 (xs!18934 (left!42831 (right!43161 (left!42831 xs!286))))) e!3165772))))

(assert (=> b!5073544 (= tp!1416067 (and (inv!77611 (left!42831 (right!43161 (left!42831 xs!286)))) e!3165771))))

(assert (= (and b!5073544 ((_ is Node!15574) (left!42831 (right!43161 (left!42831 xs!286))))) b!5074008))

(assert (= b!5074009 b!5074010))

(assert (= (and b!5073544 ((_ is Leaf!25866) (left!42831 (right!43161 (left!42831 xs!286))))) b!5074009))

(declare-fun m!6121814 () Bool)

(assert (=> b!5074008 m!6121814))

(declare-fun m!6121816 () Bool)

(assert (=> b!5074008 m!6121816))

(declare-fun m!6121818 () Bool)

(assert (=> b!5074009 m!6121818))

(assert (=> b!5073544 m!6120976))

(declare-fun e!3165773 () Bool)

(declare-fun tp!1416167 () Bool)

(declare-fun tp!1416166 () Bool)

(declare-fun b!5074011 () Bool)

(assert (=> b!5074011 (= e!3165773 (and (inv!77611 (left!42831 (right!43161 (right!43161 (left!42831 xs!286))))) tp!1416166 (inv!77611 (right!43161 (right!43161 (right!43161 (left!42831 xs!286))))) tp!1416167))))

(declare-fun b!5074013 () Bool)

(declare-fun e!3165774 () Bool)

(declare-fun tp!1416165 () Bool)

(assert (=> b!5074013 (= e!3165774 tp!1416165)))

(declare-fun b!5074012 () Bool)

(assert (=> b!5074012 (= e!3165773 (and (inv!77610 (xs!18934 (right!43161 (right!43161 (left!42831 xs!286))))) e!3165774))))

(assert (=> b!5073544 (= tp!1416068 (and (inv!77611 (right!43161 (right!43161 (left!42831 xs!286)))) e!3165773))))

(assert (= (and b!5073544 ((_ is Node!15574) (right!43161 (right!43161 (left!42831 xs!286))))) b!5074011))

(assert (= b!5074012 b!5074013))

(assert (= (and b!5073544 ((_ is Leaf!25866) (right!43161 (right!43161 (left!42831 xs!286))))) b!5074012))

(declare-fun m!6121820 () Bool)

(assert (=> b!5074011 m!6121820))

(declare-fun m!6121822 () Bool)

(assert (=> b!5074011 m!6121822))

(declare-fun m!6121824 () Bool)

(assert (=> b!5074012 m!6121824))

(assert (=> b!5073544 m!6120978))

(declare-fun b!5074014 () Bool)

(declare-fun e!3165775 () Bool)

(declare-fun tp!1416168 () Bool)

(assert (=> b!5074014 (= e!3165775 (and tp_is_empty!37069 tp!1416168))))

(assert (=> b!5073560 (= tp!1416080 e!3165775)))

(assert (= (and b!5073560 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 (right!43161 xs!286)))))) b!5074014))

(declare-fun b!5074015 () Bool)

(declare-fun e!3165776 () Bool)

(declare-fun tp!1416169 () Bool)

(assert (=> b!5074015 (= e!3165776 (and tp_is_empty!37069 tp!1416169))))

(assert (=> b!5073561 (= tp!1416083 e!3165776)))

(assert (= (and b!5073561 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 (right!43161 ys!41)))))) b!5074015))

(declare-fun tp!1416171 () Bool)

(declare-fun b!5074016 () Bool)

(declare-fun e!3165777 () Bool)

(declare-fun tp!1416172 () Bool)

(assert (=> b!5074016 (= e!3165777 (and (inv!77611 (left!42831 (left!42831 (right!43161 (right!43161 xs!286))))) tp!1416171 (inv!77611 (right!43161 (left!42831 (right!43161 (right!43161 xs!286))))) tp!1416172))))

(declare-fun b!5074018 () Bool)

(declare-fun e!3165778 () Bool)

(declare-fun tp!1416170 () Bool)

(assert (=> b!5074018 (= e!3165778 tp!1416170)))

(declare-fun b!5074017 () Bool)

(assert (=> b!5074017 (= e!3165777 (and (inv!77610 (xs!18934 (left!42831 (right!43161 (right!43161 xs!286))))) e!3165778))))

(assert (=> b!5073558 (= tp!1416081 (and (inv!77611 (left!42831 (right!43161 (right!43161 xs!286)))) e!3165777))))

(assert (= (and b!5073558 ((_ is Node!15574) (left!42831 (right!43161 (right!43161 xs!286))))) b!5074016))

(assert (= b!5074017 b!5074018))

(assert (= (and b!5073558 ((_ is Leaf!25866) (left!42831 (right!43161 (right!43161 xs!286))))) b!5074017))

(declare-fun m!6121826 () Bool)

(assert (=> b!5074016 m!6121826))

(declare-fun m!6121828 () Bool)

(assert (=> b!5074016 m!6121828))

(declare-fun m!6121830 () Bool)

(assert (=> b!5074017 m!6121830))

(assert (=> b!5073558 m!6121000))

(declare-fun e!3165779 () Bool)

(declare-fun b!5074019 () Bool)

(declare-fun tp!1416175 () Bool)

(declare-fun tp!1416174 () Bool)

(assert (=> b!5074019 (= e!3165779 (and (inv!77611 (left!42831 (right!43161 (right!43161 (right!43161 xs!286))))) tp!1416174 (inv!77611 (right!43161 (right!43161 (right!43161 (right!43161 xs!286))))) tp!1416175))))

(declare-fun b!5074021 () Bool)

(declare-fun e!3165780 () Bool)

(declare-fun tp!1416173 () Bool)

(assert (=> b!5074021 (= e!3165780 tp!1416173)))

(declare-fun b!5074020 () Bool)

(assert (=> b!5074020 (= e!3165779 (and (inv!77610 (xs!18934 (right!43161 (right!43161 (right!43161 xs!286))))) e!3165780))))

(assert (=> b!5073558 (= tp!1416082 (and (inv!77611 (right!43161 (right!43161 (right!43161 xs!286)))) e!3165779))))

(assert (= (and b!5073558 ((_ is Node!15574) (right!43161 (right!43161 (right!43161 xs!286))))) b!5074019))

(assert (= b!5074020 b!5074021))

(assert (= (and b!5073558 ((_ is Leaf!25866) (right!43161 (right!43161 (right!43161 xs!286))))) b!5074020))

(declare-fun m!6121832 () Bool)

(assert (=> b!5074019 m!6121832))

(declare-fun m!6121834 () Bool)

(assert (=> b!5074019 m!6121834))

(declare-fun m!6121836 () Bool)

(assert (=> b!5074020 m!6121836))

(assert (=> b!5073558 m!6121002))

(declare-fun e!3165781 () Bool)

(declare-fun tp!1416178 () Bool)

(declare-fun b!5074022 () Bool)

(declare-fun tp!1416177 () Bool)

(assert (=> b!5074022 (= e!3165781 (and (inv!77611 (left!42831 (left!42831 (right!43161 (right!43161 ys!41))))) tp!1416177 (inv!77611 (right!43161 (left!42831 (right!43161 (right!43161 ys!41))))) tp!1416178))))

(declare-fun b!5074024 () Bool)

(declare-fun e!3165782 () Bool)

(declare-fun tp!1416176 () Bool)

(assert (=> b!5074024 (= e!3165782 tp!1416176)))

(declare-fun b!5074023 () Bool)

(assert (=> b!5074023 (= e!3165781 (and (inv!77610 (xs!18934 (left!42831 (right!43161 (right!43161 ys!41))))) e!3165782))))

(assert (=> b!5073551 (= tp!1416074 (and (inv!77611 (left!42831 (right!43161 (right!43161 ys!41)))) e!3165781))))

(assert (= (and b!5073551 ((_ is Node!15574) (left!42831 (right!43161 (right!43161 ys!41))))) b!5074022))

(assert (= b!5074023 b!5074024))

(assert (= (and b!5073551 ((_ is Leaf!25866) (left!42831 (right!43161 (right!43161 ys!41))))) b!5074023))

(declare-fun m!6121838 () Bool)

(assert (=> b!5074022 m!6121838))

(declare-fun m!6121840 () Bool)

(assert (=> b!5074022 m!6121840))

(declare-fun m!6121842 () Bool)

(assert (=> b!5074023 m!6121842))

(assert (=> b!5073551 m!6120988))

(declare-fun b!5074025 () Bool)

(declare-fun e!3165783 () Bool)

(declare-fun tp!1416180 () Bool)

(declare-fun tp!1416181 () Bool)

(assert (=> b!5074025 (= e!3165783 (and (inv!77611 (left!42831 (right!43161 (right!43161 (right!43161 ys!41))))) tp!1416180 (inv!77611 (right!43161 (right!43161 (right!43161 (right!43161 ys!41))))) tp!1416181))))

(declare-fun b!5074027 () Bool)

(declare-fun e!3165784 () Bool)

(declare-fun tp!1416179 () Bool)

(assert (=> b!5074027 (= e!3165784 tp!1416179)))

(declare-fun b!5074026 () Bool)

(assert (=> b!5074026 (= e!3165783 (and (inv!77610 (xs!18934 (right!43161 (right!43161 (right!43161 ys!41))))) e!3165784))))

(assert (=> b!5073551 (= tp!1416075 (and (inv!77611 (right!43161 (right!43161 (right!43161 ys!41)))) e!3165783))))

(assert (= (and b!5073551 ((_ is Node!15574) (right!43161 (right!43161 (right!43161 ys!41))))) b!5074025))

(assert (= b!5074026 b!5074027))

(assert (= (and b!5073551 ((_ is Leaf!25866) (right!43161 (right!43161 (right!43161 ys!41))))) b!5074026))

(declare-fun m!6121844 () Bool)

(assert (=> b!5074025 m!6121844))

(declare-fun m!6121846 () Bool)

(assert (=> b!5074025 m!6121846))

(declare-fun m!6121848 () Bool)

(assert (=> b!5074026 m!6121848))

(assert (=> b!5073551 m!6120990))

(declare-fun b!5074028 () Bool)

(declare-fun e!3165785 () Bool)

(declare-fun tp!1416182 () Bool)

(assert (=> b!5074028 (= e!3165785 (and tp_is_empty!37069 tp!1416182))))

(assert (=> b!5073543 (= tp!1416063 e!3165785)))

(assert (= (and b!5073543 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 (left!42831 xs!286)))))) b!5074028))

(declare-fun e!3165786 () Bool)

(declare-fun tp!1416184 () Bool)

(declare-fun tp!1416185 () Bool)

(declare-fun b!5074029 () Bool)

(assert (=> b!5074029 (= e!3165786 (and (inv!77611 (left!42831 (left!42831 (left!42831 (left!42831 xs!286))))) tp!1416184 (inv!77611 (right!43161 (left!42831 (left!42831 (left!42831 xs!286))))) tp!1416185))))

(declare-fun b!5074031 () Bool)

(declare-fun e!3165787 () Bool)

(declare-fun tp!1416183 () Bool)

(assert (=> b!5074031 (= e!3165787 tp!1416183)))

(declare-fun b!5074030 () Bool)

(assert (=> b!5074030 (= e!3165786 (and (inv!77610 (xs!18934 (left!42831 (left!42831 (left!42831 xs!286))))) e!3165787))))

(assert (=> b!5073541 (= tp!1416064 (and (inv!77611 (left!42831 (left!42831 (left!42831 xs!286)))) e!3165786))))

(assert (= (and b!5073541 ((_ is Node!15574) (left!42831 (left!42831 (left!42831 xs!286))))) b!5074029))

(assert (= b!5074030 b!5074031))

(assert (= (and b!5073541 ((_ is Leaf!25866) (left!42831 (left!42831 (left!42831 xs!286))))) b!5074030))

(declare-fun m!6121850 () Bool)

(assert (=> b!5074029 m!6121850))

(declare-fun m!6121852 () Bool)

(assert (=> b!5074029 m!6121852))

(declare-fun m!6121854 () Bool)

(assert (=> b!5074030 m!6121854))

(assert (=> b!5073541 m!6120970))

(declare-fun tp!1416188 () Bool)

(declare-fun b!5074032 () Bool)

(declare-fun e!3165788 () Bool)

(declare-fun tp!1416187 () Bool)

(assert (=> b!5074032 (= e!3165788 (and (inv!77611 (left!42831 (right!43161 (left!42831 (left!42831 xs!286))))) tp!1416187 (inv!77611 (right!43161 (right!43161 (left!42831 (left!42831 xs!286))))) tp!1416188))))

(declare-fun b!5074034 () Bool)

(declare-fun e!3165789 () Bool)

(declare-fun tp!1416186 () Bool)

(assert (=> b!5074034 (= e!3165789 tp!1416186)))

(declare-fun b!5074033 () Bool)

(assert (=> b!5074033 (= e!3165788 (and (inv!77610 (xs!18934 (right!43161 (left!42831 (left!42831 xs!286))))) e!3165789))))

(assert (=> b!5073541 (= tp!1416065 (and (inv!77611 (right!43161 (left!42831 (left!42831 xs!286)))) e!3165788))))

(assert (= (and b!5073541 ((_ is Node!15574) (right!43161 (left!42831 (left!42831 xs!286))))) b!5074032))

(assert (= b!5074033 b!5074034))

(assert (= (and b!5073541 ((_ is Leaf!25866) (right!43161 (left!42831 (left!42831 xs!286))))) b!5074033))

(declare-fun m!6121856 () Bool)

(assert (=> b!5074032 m!6121856))

(declare-fun m!6121858 () Bool)

(assert (=> b!5074032 m!6121858))

(declare-fun m!6121860 () Bool)

(assert (=> b!5074033 m!6121860))

(assert (=> b!5073541 m!6120972))

(declare-fun b!5074035 () Bool)

(declare-fun e!3165790 () Bool)

(declare-fun tp!1416189 () Bool)

(assert (=> b!5074035 (= e!3165790 (and tp_is_empty!37069 tp!1416189))))

(assert (=> b!5073557 (= tp!1416077 e!3165790)))

(assert (= (and b!5073557 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 (right!43161 xs!286)))))) b!5074035))

(declare-fun b!5074036 () Bool)

(declare-fun e!3165791 () Bool)

(declare-fun tp!1416190 () Bool)

(assert (=> b!5074036 (= e!3165791 (and tp_is_empty!37069 tp!1416190))))

(assert (=> b!5073550 (= tp!1416070 e!3165791)))

(assert (= (and b!5073550 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 (right!43161 ys!41)))))) b!5074036))

(declare-fun b!5074037 () Bool)

(declare-fun e!3165792 () Bool)

(declare-fun tp!1416192 () Bool)

(declare-fun tp!1416193 () Bool)

(assert (=> b!5074037 (= e!3165792 (and (inv!77611 (left!42831 (left!42831 (left!42831 (right!43161 ys!41))))) tp!1416192 (inv!77611 (right!43161 (left!42831 (left!42831 (right!43161 ys!41))))) tp!1416193))))

(declare-fun b!5074039 () Bool)

(declare-fun e!3165793 () Bool)

(declare-fun tp!1416191 () Bool)

(assert (=> b!5074039 (= e!3165793 tp!1416191)))

(declare-fun b!5074038 () Bool)

(assert (=> b!5074038 (= e!3165792 (and (inv!77610 (xs!18934 (left!42831 (left!42831 (right!43161 ys!41))))) e!3165793))))

(assert (=> b!5073548 (= tp!1416071 (and (inv!77611 (left!42831 (left!42831 (right!43161 ys!41)))) e!3165792))))

(assert (= (and b!5073548 ((_ is Node!15574) (left!42831 (left!42831 (right!43161 ys!41))))) b!5074037))

(assert (= b!5074038 b!5074039))

(assert (= (and b!5073548 ((_ is Leaf!25866) (left!42831 (left!42831 (right!43161 ys!41))))) b!5074038))

(declare-fun m!6121862 () Bool)

(assert (=> b!5074037 m!6121862))

(declare-fun m!6121864 () Bool)

(assert (=> b!5074037 m!6121864))

(declare-fun m!6121866 () Bool)

(assert (=> b!5074038 m!6121866))

(assert (=> b!5073548 m!6120982))

(declare-fun b!5074040 () Bool)

(declare-fun tp!1416195 () Bool)

(declare-fun tp!1416196 () Bool)

(declare-fun e!3165794 () Bool)

(assert (=> b!5074040 (= e!3165794 (and (inv!77611 (left!42831 (right!43161 (left!42831 (right!43161 ys!41))))) tp!1416195 (inv!77611 (right!43161 (right!43161 (left!42831 (right!43161 ys!41))))) tp!1416196))))

(declare-fun b!5074042 () Bool)

(declare-fun e!3165795 () Bool)

(declare-fun tp!1416194 () Bool)

(assert (=> b!5074042 (= e!3165795 tp!1416194)))

(declare-fun b!5074041 () Bool)

(assert (=> b!5074041 (= e!3165794 (and (inv!77610 (xs!18934 (right!43161 (left!42831 (right!43161 ys!41))))) e!3165795))))

(assert (=> b!5073548 (= tp!1416072 (and (inv!77611 (right!43161 (left!42831 (right!43161 ys!41)))) e!3165794))))

(assert (= (and b!5073548 ((_ is Node!15574) (right!43161 (left!42831 (right!43161 ys!41))))) b!5074040))

(assert (= b!5074041 b!5074042))

(assert (= (and b!5073548 ((_ is Leaf!25866) (right!43161 (left!42831 (right!43161 ys!41))))) b!5074041))

(declare-fun m!6121868 () Bool)

(assert (=> b!5074040 m!6121868))

(declare-fun m!6121870 () Bool)

(assert (=> b!5074040 m!6121870))

(declare-fun m!6121872 () Bool)

(assert (=> b!5074041 m!6121872))

(assert (=> b!5073548 m!6120984))

(declare-fun b!5074043 () Bool)

(declare-fun e!3165796 () Bool)

(declare-fun tp!1416197 () Bool)

(assert (=> b!5074043 (= e!3165796 (and tp_is_empty!37069 tp!1416197))))

(assert (=> b!5073569 (= tp!1416089 e!3165796)))

(assert (= (and b!5073569 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 (left!42831 ys!41)))))) b!5074043))

(declare-fun tp!1416199 () Bool)

(declare-fun tp!1416200 () Bool)

(declare-fun b!5074044 () Bool)

(declare-fun e!3165797 () Bool)

(assert (=> b!5074044 (= e!3165797 (and (inv!77611 (left!42831 (left!42831 (left!42831 (right!43161 xs!286))))) tp!1416199 (inv!77611 (right!43161 (left!42831 (left!42831 (right!43161 xs!286))))) tp!1416200))))

(declare-fun b!5074046 () Bool)

(declare-fun e!3165798 () Bool)

(declare-fun tp!1416198 () Bool)

(assert (=> b!5074046 (= e!3165798 tp!1416198)))

(declare-fun b!5074045 () Bool)

(assert (=> b!5074045 (= e!3165797 (and (inv!77610 (xs!18934 (left!42831 (left!42831 (right!43161 xs!286))))) e!3165798))))

(assert (=> b!5073555 (= tp!1416078 (and (inv!77611 (left!42831 (left!42831 (right!43161 xs!286)))) e!3165797))))

(assert (= (and b!5073555 ((_ is Node!15574) (left!42831 (left!42831 (right!43161 xs!286))))) b!5074044))

(assert (= b!5074045 b!5074046))

(assert (= (and b!5073555 ((_ is Leaf!25866) (left!42831 (left!42831 (right!43161 xs!286))))) b!5074045))

(declare-fun m!6121874 () Bool)

(assert (=> b!5074044 m!6121874))

(declare-fun m!6121876 () Bool)

(assert (=> b!5074044 m!6121876))

(declare-fun m!6121878 () Bool)

(assert (=> b!5074045 m!6121878))

(assert (=> b!5073555 m!6120994))

(declare-fun b!5074047 () Bool)

(declare-fun tp!1416202 () Bool)

(declare-fun tp!1416203 () Bool)

(declare-fun e!3165799 () Bool)

(assert (=> b!5074047 (= e!3165799 (and (inv!77611 (left!42831 (right!43161 (left!42831 (right!43161 xs!286))))) tp!1416202 (inv!77611 (right!43161 (right!43161 (left!42831 (right!43161 xs!286))))) tp!1416203))))

(declare-fun b!5074049 () Bool)

(declare-fun e!3165800 () Bool)

(declare-fun tp!1416201 () Bool)

(assert (=> b!5074049 (= e!3165800 tp!1416201)))

(declare-fun b!5074048 () Bool)

(assert (=> b!5074048 (= e!3165799 (and (inv!77610 (xs!18934 (right!43161 (left!42831 (right!43161 xs!286))))) e!3165800))))

(assert (=> b!5073555 (= tp!1416079 (and (inv!77611 (right!43161 (left!42831 (right!43161 xs!286)))) e!3165799))))

(assert (= (and b!5073555 ((_ is Node!15574) (right!43161 (left!42831 (right!43161 xs!286))))) b!5074047))

(assert (= b!5074048 b!5074049))

(assert (= (and b!5073555 ((_ is Leaf!25866) (right!43161 (left!42831 (right!43161 xs!286))))) b!5074048))

(declare-fun m!6121880 () Bool)

(assert (=> b!5074047 m!6121880))

(declare-fun m!6121882 () Bool)

(assert (=> b!5074047 m!6121882))

(declare-fun m!6121884 () Bool)

(assert (=> b!5074048 m!6121884))

(assert (=> b!5073555 m!6120996))

(declare-fun b!5074050 () Bool)

(declare-fun e!3165801 () Bool)

(declare-fun tp!1416204 () Bool)

(assert (=> b!5074050 (= e!3165801 (and tp_is_empty!37069 tp!1416204))))

(assert (=> b!5073563 (= tp!1416085 e!3165801)))

(assert (= (and b!5073563 ((_ is Cons!58444) (t!371345 (t!371345 (innerList!15662 (xs!18934 ys!41)))))) b!5074050))

(declare-fun b!5074051 () Bool)

(declare-fun e!3165802 () Bool)

(declare-fun tp!1416205 () Bool)

(assert (=> b!5074051 (= e!3165802 (and tp_is_empty!37069 tp!1416205))))

(assert (=> b!5073546 (= tp!1416066 e!3165802)))

(assert (= (and b!5073546 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 (left!42831 xs!286)))))) b!5074051))

(declare-fun tp!1416208 () Bool)

(declare-fun b!5074052 () Bool)

(declare-fun tp!1416207 () Bool)

(declare-fun e!3165803 () Bool)

(assert (=> b!5074052 (= e!3165803 (and (inv!77611 (left!42831 (left!42831 (right!43161 (left!42831 ys!41))))) tp!1416207 (inv!77611 (right!43161 (left!42831 (right!43161 (left!42831 ys!41))))) tp!1416208))))

(declare-fun b!5074054 () Bool)

(declare-fun e!3165804 () Bool)

(declare-fun tp!1416206 () Bool)

(assert (=> b!5074054 (= e!3165804 tp!1416206)))

(declare-fun b!5074053 () Bool)

(assert (=> b!5074053 (= e!3165803 (and (inv!77610 (xs!18934 (left!42831 (right!43161 (left!42831 ys!41))))) e!3165804))))

(assert (=> b!5073567 (= tp!1416090 (and (inv!77611 (left!42831 (right!43161 (left!42831 ys!41)))) e!3165803))))

(assert (= (and b!5073567 ((_ is Node!15574) (left!42831 (right!43161 (left!42831 ys!41))))) b!5074052))

(assert (= b!5074053 b!5074054))

(assert (= (and b!5073567 ((_ is Leaf!25866) (left!42831 (right!43161 (left!42831 ys!41))))) b!5074053))

(declare-fun m!6121886 () Bool)

(assert (=> b!5074052 m!6121886))

(declare-fun m!6121888 () Bool)

(assert (=> b!5074052 m!6121888))

(declare-fun m!6121890 () Bool)

(assert (=> b!5074053 m!6121890))

(assert (=> b!5073567 m!6121012))

(declare-fun tp!1416210 () Bool)

(declare-fun b!5074055 () Bool)

(declare-fun tp!1416211 () Bool)

(declare-fun e!3165805 () Bool)

(assert (=> b!5074055 (= e!3165805 (and (inv!77611 (left!42831 (right!43161 (right!43161 (left!42831 ys!41))))) tp!1416210 (inv!77611 (right!43161 (right!43161 (right!43161 (left!42831 ys!41))))) tp!1416211))))

(declare-fun b!5074057 () Bool)

(declare-fun e!3165806 () Bool)

(declare-fun tp!1416209 () Bool)

(assert (=> b!5074057 (= e!3165806 tp!1416209)))

(declare-fun b!5074056 () Bool)

(assert (=> b!5074056 (= e!3165805 (and (inv!77610 (xs!18934 (right!43161 (right!43161 (left!42831 ys!41))))) e!3165806))))

(assert (=> b!5073567 (= tp!1416091 (and (inv!77611 (right!43161 (right!43161 (left!42831 ys!41)))) e!3165805))))

(assert (= (and b!5073567 ((_ is Node!15574) (right!43161 (right!43161 (left!42831 ys!41))))) b!5074055))

(assert (= b!5074056 b!5074057))

(assert (= (and b!5073567 ((_ is Leaf!25866) (right!43161 (right!43161 (left!42831 ys!41))))) b!5074056))

(declare-fun m!6121892 () Bool)

(assert (=> b!5074055 m!6121892))

(declare-fun m!6121894 () Bool)

(assert (=> b!5074055 m!6121894))

(declare-fun m!6121896 () Bool)

(assert (=> b!5074056 m!6121896))

(assert (=> b!5073567 m!6121014))

(declare-fun b!5074058 () Bool)

(declare-fun e!3165807 () Bool)

(declare-fun tp!1416212 () Bool)

(assert (=> b!5074058 (= e!3165807 (and tp_is_empty!37069 tp!1416212))))

(assert (=> b!5073553 (= tp!1416073 e!3165807)))

(assert (= (and b!5073553 ((_ is Cons!58444) (innerList!15662 (xs!18934 (right!43161 (right!43161 ys!41)))))) b!5074058))

(declare-fun b!5074059 () Bool)

(declare-fun e!3165808 () Bool)

(declare-fun tp!1416213 () Bool)

(assert (=> b!5074059 (= e!3165808 (and tp_is_empty!37069 tp!1416213))))

(assert (=> b!5073566 (= tp!1416086 e!3165808)))

(assert (= (and b!5073566 ((_ is Cons!58444) (innerList!15662 (xs!18934 (left!42831 (left!42831 ys!41)))))) b!5074059))

(declare-fun b!5074060 () Bool)

(declare-fun e!3165809 () Bool)

(declare-fun tp!1416214 () Bool)

(assert (=> b!5074060 (= e!3165809 (and tp_is_empty!37069 tp!1416214))))

(assert (=> b!5073540 (= tp!1416062 e!3165809)))

(assert (= (and b!5073540 ((_ is Cons!58444) (t!371345 (t!371345 (innerList!15662 (xs!18934 xs!286)))))) b!5074060))

(declare-fun b!5074061 () Bool)

(declare-fun e!3165810 () Bool)

(declare-fun tp!1416215 () Bool)

(assert (=> b!5074061 (= e!3165810 (and tp_is_empty!37069 tp!1416215))))

(assert (=> b!5073562 (= tp!1416084 e!3165810)))

(assert (= (and b!5073562 ((_ is Cons!58444) (t!371345 (innerList!15662 (xs!18934 (left!42831 xs!286)))))) b!5074061))

(check-sat (not b!5073811) (not b!5073751) (not d!1638176) (not b!5073948) (not b!5073991) (not b!5073638) (not b!5073555) (not b!5073647) (not b!5074057) (not b!5073936) (not b!5074021) (not b!5073955) (not b!5074051) (not b!5073737) (not b!5073953) (not b!5073880) (not b!5073989) (not d!1638348) (not b!5074011) (not b!5073712) (not b!5074004) (not d!1638290) (not b!5073724) (not b!5074040) (not b!5074025) (not b!5074048) (not b!5074024) (not d!1638218) (not b!5074056) (not b!5073966) (not b!5073987) (not b!5074013) (not b!5073933) (not b!5073636) (not b!5074032) (not b!5073927) (not b!5074034) (not d!1638182) (not b!5074023) (not b!5073673) (not b!5073996) (not b!5073961) (not b!5073990) (not b!5073982) (not b!5073658) (not d!1638316) (not d!1638384) (not b!5074029) (not d!1638358) (not b!5073726) (not b!5073970) (not b!5073951) (not b!5073678) (not d!1638346) (not b!5073651) (not b!5074014) (not d!1638350) (not b!5073941) (not b!5073937) (not b!5073749) (not b!5073957) (not d!1638314) (not b!5073710) (not d!1638394) (not b!5073541) (not b!5073899) (not b!5073945) (not b!5074039) (not b!5074052) (not b!5074002) (not b!5073942) (not b!5074035) (not b!5073558) (not b!5073688) (not b!5073962) (not b!5073627) (not b!5073564) (not d!1638390) (not b!5074050) (not d!1638198) (not d!1638306) (not b!5073998) (not b!5073750) (not b!5074041) (not b!5073924) (not b!5074006) (not b!5073920) (not b!5073968) (not b!5074001) (not b!5073723) (not b!5074055) (not b!5073965) (not b!5073805) (not b!5074010) (not b!5073747) (not b!5074043) (not b!5073972) (not b!5073544) (not b!5073878) (not b!5074019) (not b!5074022) (not d!1638380) (not b!5073934) (not b!5074027) (not b!5073973) (not d!1638356) (not b!5073813) (not d!1638082) (not b!5073664) (not d!1638414) (not d!1638066) (not d!1638090) (not b!5073675) (not b!5074015) (not b!5073988) (not b!5073785) (not b!5073869) (not d!1638326) (not b!5074054) (not b!5074016) (not b!5073950) (not b!5074028) (not b!5073995) (not b!5073794) (not d!1638408) (not b!5074031) (not b!5073649) (not b!5073748) (not d!1638378) (not b!5073939) (not b!5074049) (not b!5073992) (not b!5073931) (not b!5074037) (not b!5074042) (not d!1638294) (not d!1638312) (not b!5073742) (not b!5073983) (not b!5073816) (not b!5074009) (not b!5073676) (not d!1638296) (not b!5073928) (not b!5073727) (not d!1638308) (not d!1638324) (not b!5073728) (not b!5074030) (not b!5073922) (not b!5073551) (not d!1638382) (not b!5073930) (not b!5074060) (not b!5073888) (not d!1638396) (not d!1638240) (not b!5074017) (not d!1638376) (not b!5073548) (not b!5073711) (not b!5073725) (not d!1638370) (not b!5073943) (not d!1638246) (not b!5074036) (not b!5074061) (not b!5073986) (not d!1638362) (not b!5073918) (not b!5073567) (not b!5074045) (not d!1638310) (not b!5074000) (not b!5074059) (not b!5074005) (not b!5073659) (not b!5073656) (not b!5073686) (not b!5073954) (not b!5073708) (not b!5073946) (not b!5073818) (not b!5073976) (not b!5074026) (not b!5073672) (not b!5074046) (not b!5074007) (not d!1638208) (not b!5074012) (not b!5074058) (not b!5073707) (not d!1638352) (not b!5073979) (not b!5074047) (not b!5074033) (not d!1638340) (not b!5073828) (not b!5073779) (not b!5073766) (not b!5073925) (not b!5074008) tp_is_empty!37069 (not d!1638364) (not b!5074018) (not b!5073657) (not b!5073655) (not b!5073781) (not b!5073917) (not d!1638284) (not d!1638402) (not b!5073905) (not b!5073975) (not b!5073944) (not b!5073709) (not b!5073759) (not b!5073871) (not b!5073810) (not b!5074044) (not b!5073938) (not b!5073947) (not b!5074020) (not b!5074038) (not b!5073752) (not b!5073952) (not b!5073660) (not b!5073787) (not b!5074053) (not b!5074003) (not b!5073935) (not d!1638322))
(check-sat)
