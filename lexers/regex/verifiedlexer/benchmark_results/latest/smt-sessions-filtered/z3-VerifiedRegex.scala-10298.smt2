; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535886 () Bool)

(assert start!535886)

(declare-fun b!5086121 () Bool)

(declare-fun res!2165193 () Bool)

(declare-fun e!3172154 () Bool)

(assert (=> b!5086121 (=> (not res!2165193) (not e!3172154))))

(declare-datatypes ((T!105286 0))(
  ( (T!105287 (val!23672 Int)) )
))
(declare-datatypes ((List!58582 0))(
  ( (Nil!58458) (Cons!58458 (h!64906 T!105286) (t!371429 List!58582)) )
))
(declare-datatypes ((IArray!31237 0))(
  ( (IArray!31238 (innerList!15676 List!58582)) )
))
(declare-datatypes ((Conc!15588 0))(
  ( (Node!15588 (left!42852 Conc!15588) (right!43182 Conc!15588) (csize!31406 Int) (cheight!15799 Int)) (Leaf!25887 (xs!18968 IArray!31237) (csize!31407 Int)) (Empty!15588) )
))
(declare-fun ys!41 () Conc!15588)

(declare-fun isBalanced!4450 (Conc!15588) Bool)

(assert (=> b!5086121 (= res!2165193 (isBalanced!4450 ys!41))))

(declare-fun tp!1417954 () Bool)

(declare-fun tp!1417959 () Bool)

(declare-fun e!3172157 () Bool)

(declare-fun b!5086122 () Bool)

(declare-fun inv!77687 (Conc!15588) Bool)

(assert (=> b!5086122 (= e!3172157 (and (inv!77687 (left!42852 ys!41)) tp!1417954 (inv!77687 (right!43182 ys!41)) tp!1417959))))

(declare-fun b!5086123 () Bool)

(declare-fun res!2165195 () Bool)

(assert (=> b!5086123 (=> (not res!2165195) (not e!3172154))))

(declare-fun xs!286 () Conc!15588)

(assert (=> b!5086123 (= res!2165195 (and (not (= xs!286 Empty!15588)) (not (= ys!41 Empty!15588))))))

(declare-fun b!5086124 () Bool)

(declare-fun e!3172156 () Bool)

(declare-fun tp!1417956 () Bool)

(assert (=> b!5086124 (= e!3172156 tp!1417956)))

(declare-fun b!5086125 () Bool)

(declare-fun e!3172158 () Bool)

(declare-fun tp!1417958 () Bool)

(assert (=> b!5086125 (= e!3172158 tp!1417958)))

(declare-fun res!2165194 () Bool)

(assert (=> start!535886 (=> (not res!2165194) (not e!3172154))))

(assert (=> start!535886 (= res!2165194 (isBalanced!4450 xs!286))))

(assert (=> start!535886 e!3172154))

(declare-fun e!3172155 () Bool)

(assert (=> start!535886 (and (inv!77687 xs!286) e!3172155)))

(assert (=> start!535886 (and (inv!77687 ys!41) e!3172157)))

(declare-fun b!5086126 () Bool)

(declare-fun inv!77688 (IArray!31237) Bool)

(assert (=> b!5086126 (= e!3172157 (and (inv!77688 (xs!18968 ys!41)) e!3172156))))

(declare-fun b!5086127 () Bool)

(declare-fun lt!2091683 () Int)

(get-info :version)

(assert (=> b!5086127 (= e!3172154 (and (or (> (- 1) lt!2091683) (> lt!2091683 1)) (>= lt!2091683 (- 1)) (not ((_ is Node!15588) ys!41))))))

(declare-fun height!2165 (Conc!15588) Int)

(assert (=> b!5086127 (= lt!2091683 (- (height!2165 ys!41) (height!2165 xs!286)))))

(declare-fun b!5086128 () Bool)

(assert (=> b!5086128 (= e!3172155 (and (inv!77688 (xs!18968 xs!286)) e!3172158))))

(declare-fun tp!1417957 () Bool)

(declare-fun b!5086129 () Bool)

(declare-fun tp!1417955 () Bool)

(assert (=> b!5086129 (= e!3172155 (and (inv!77687 (left!42852 xs!286)) tp!1417957 (inv!77687 (right!43182 xs!286)) tp!1417955))))

(assert (= (and start!535886 res!2165194) b!5086121))

(assert (= (and b!5086121 res!2165193) b!5086123))

(assert (= (and b!5086123 res!2165195) b!5086127))

(assert (= (and start!535886 ((_ is Node!15588) xs!286)) b!5086129))

(assert (= b!5086128 b!5086125))

(assert (= (and start!535886 ((_ is Leaf!25887) xs!286)) b!5086128))

(assert (= (and start!535886 ((_ is Node!15588) ys!41)) b!5086122))

(assert (= b!5086126 b!5086124))

(assert (= (and start!535886 ((_ is Leaf!25887) ys!41)) b!5086126))

(declare-fun m!6143262 () Bool)

(assert (=> b!5086122 m!6143262))

(declare-fun m!6143264 () Bool)

(assert (=> b!5086122 m!6143264))

(declare-fun m!6143266 () Bool)

(assert (=> b!5086126 m!6143266))

(declare-fun m!6143268 () Bool)

(assert (=> b!5086127 m!6143268))

(declare-fun m!6143270 () Bool)

(assert (=> b!5086127 m!6143270))

(declare-fun m!6143272 () Bool)

(assert (=> b!5086121 m!6143272))

(declare-fun m!6143274 () Bool)

(assert (=> b!5086128 m!6143274))

(declare-fun m!6143276 () Bool)

(assert (=> start!535886 m!6143276))

(declare-fun m!6143278 () Bool)

(assert (=> start!535886 m!6143278))

(declare-fun m!6143280 () Bool)

(assert (=> start!535886 m!6143280))

(declare-fun m!6143282 () Bool)

(assert (=> b!5086129 m!6143282))

(declare-fun m!6143284 () Bool)

(assert (=> b!5086129 m!6143284))

(check-sat (not start!535886) (not b!5086121) (not b!5086126) (not b!5086124) (not b!5086125) (not b!5086128) (not b!5086127) (not b!5086129) (not b!5086122))
(check-sat)
(get-model)

(declare-fun d!1646183 () Bool)

(declare-fun c!873916 () Bool)

(assert (=> d!1646183 (= c!873916 ((_ is Node!15588) (left!42852 xs!286)))))

(declare-fun e!3172163 () Bool)

(assert (=> d!1646183 (= (inv!77687 (left!42852 xs!286)) e!3172163)))

(declare-fun b!5086136 () Bool)

(declare-fun inv!77689 (Conc!15588) Bool)

(assert (=> b!5086136 (= e!3172163 (inv!77689 (left!42852 xs!286)))))

(declare-fun b!5086137 () Bool)

(declare-fun e!3172164 () Bool)

(assert (=> b!5086137 (= e!3172163 e!3172164)))

(declare-fun res!2165198 () Bool)

(assert (=> b!5086137 (= res!2165198 (not ((_ is Leaf!25887) (left!42852 xs!286))))))

(assert (=> b!5086137 (=> res!2165198 e!3172164)))

(declare-fun b!5086138 () Bool)

(declare-fun inv!77690 (Conc!15588) Bool)

(assert (=> b!5086138 (= e!3172164 (inv!77690 (left!42852 xs!286)))))

(assert (= (and d!1646183 c!873916) b!5086136))

(assert (= (and d!1646183 (not c!873916)) b!5086137))

(assert (= (and b!5086137 (not res!2165198)) b!5086138))

(declare-fun m!6143286 () Bool)

(assert (=> b!5086136 m!6143286))

(declare-fun m!6143288 () Bool)

(assert (=> b!5086138 m!6143288))

(assert (=> b!5086129 d!1646183))

(declare-fun d!1646187 () Bool)

(declare-fun c!873919 () Bool)

(assert (=> d!1646187 (= c!873919 ((_ is Node!15588) (right!43182 xs!286)))))

(declare-fun e!3172167 () Bool)

(assert (=> d!1646187 (= (inv!77687 (right!43182 xs!286)) e!3172167)))

(declare-fun b!5086143 () Bool)

(assert (=> b!5086143 (= e!3172167 (inv!77689 (right!43182 xs!286)))))

(declare-fun b!5086144 () Bool)

(declare-fun e!3172168 () Bool)

(assert (=> b!5086144 (= e!3172167 e!3172168)))

(declare-fun res!2165199 () Bool)

(assert (=> b!5086144 (= res!2165199 (not ((_ is Leaf!25887) (right!43182 xs!286))))))

(assert (=> b!5086144 (=> res!2165199 e!3172168)))

(declare-fun b!5086145 () Bool)

(assert (=> b!5086145 (= e!3172168 (inv!77690 (right!43182 xs!286)))))

(assert (= (and d!1646187 c!873919) b!5086143))

(assert (= (and d!1646187 (not c!873919)) b!5086144))

(assert (= (and b!5086144 (not res!2165199)) b!5086145))

(declare-fun m!6143290 () Bool)

(assert (=> b!5086143 m!6143290))

(declare-fun m!6143292 () Bool)

(assert (=> b!5086145 m!6143292))

(assert (=> b!5086129 d!1646187))

(declare-fun d!1646189 () Bool)

(declare-fun size!39122 (List!58582) Int)

(assert (=> d!1646189 (= (inv!77688 (xs!18968 xs!286)) (<= (size!39122 (innerList!15676 (xs!18968 xs!286))) 2147483647))))

(declare-fun bs!1190942 () Bool)

(assert (= bs!1190942 d!1646189))

(declare-fun m!6143298 () Bool)

(assert (=> bs!1190942 m!6143298))

(assert (=> b!5086128 d!1646189))

(declare-fun d!1646193 () Bool)

(declare-fun c!873922 () Bool)

(assert (=> d!1646193 (= c!873922 ((_ is Node!15588) (left!42852 ys!41)))))

(declare-fun e!3172175 () Bool)

(assert (=> d!1646193 (= (inv!77687 (left!42852 ys!41)) e!3172175)))

(declare-fun b!5086154 () Bool)

(assert (=> b!5086154 (= e!3172175 (inv!77689 (left!42852 ys!41)))))

(declare-fun b!5086155 () Bool)

(declare-fun e!3172176 () Bool)

(assert (=> b!5086155 (= e!3172175 e!3172176)))

(declare-fun res!2165204 () Bool)

(assert (=> b!5086155 (= res!2165204 (not ((_ is Leaf!25887) (left!42852 ys!41))))))

(assert (=> b!5086155 (=> res!2165204 e!3172176)))

(declare-fun b!5086156 () Bool)

(assert (=> b!5086156 (= e!3172176 (inv!77690 (left!42852 ys!41)))))

(assert (= (and d!1646193 c!873922) b!5086154))

(assert (= (and d!1646193 (not c!873922)) b!5086155))

(assert (= (and b!5086155 (not res!2165204)) b!5086156))

(declare-fun m!6143304 () Bool)

(assert (=> b!5086154 m!6143304))

(declare-fun m!6143306 () Bool)

(assert (=> b!5086156 m!6143306))

(assert (=> b!5086122 d!1646193))

(declare-fun d!1646197 () Bool)

(declare-fun c!873923 () Bool)

(assert (=> d!1646197 (= c!873923 ((_ is Node!15588) (right!43182 ys!41)))))

(declare-fun e!3172177 () Bool)

(assert (=> d!1646197 (= (inv!77687 (right!43182 ys!41)) e!3172177)))

(declare-fun b!5086157 () Bool)

(assert (=> b!5086157 (= e!3172177 (inv!77689 (right!43182 ys!41)))))

(declare-fun b!5086158 () Bool)

(declare-fun e!3172178 () Bool)

(assert (=> b!5086158 (= e!3172177 e!3172178)))

(declare-fun res!2165205 () Bool)

(assert (=> b!5086158 (= res!2165205 (not ((_ is Leaf!25887) (right!43182 ys!41))))))

(assert (=> b!5086158 (=> res!2165205 e!3172178)))

(declare-fun b!5086159 () Bool)

(assert (=> b!5086159 (= e!3172178 (inv!77690 (right!43182 ys!41)))))

(assert (= (and d!1646197 c!873923) b!5086157))

(assert (= (and d!1646197 (not c!873923)) b!5086158))

(assert (= (and b!5086158 (not res!2165205)) b!5086159))

(declare-fun m!6143308 () Bool)

(assert (=> b!5086157 m!6143308))

(declare-fun m!6143310 () Bool)

(assert (=> b!5086159 m!6143310))

(assert (=> b!5086122 d!1646197))

(declare-fun d!1646199 () Bool)

(assert (=> d!1646199 (= (height!2165 ys!41) (ite ((_ is Empty!15588) ys!41) 0 (ite ((_ is Leaf!25887) ys!41) 1 (cheight!15799 ys!41))))))

(assert (=> b!5086127 d!1646199))

(declare-fun d!1646201 () Bool)

(assert (=> d!1646201 (= (height!2165 xs!286) (ite ((_ is Empty!15588) xs!286) 0 (ite ((_ is Leaf!25887) xs!286) 1 (cheight!15799 xs!286))))))

(assert (=> b!5086127 d!1646201))

(declare-fun d!1646203 () Bool)

(declare-fun res!2165232 () Bool)

(declare-fun e!3172187 () Bool)

(assert (=> d!1646203 (=> res!2165232 e!3172187)))

(assert (=> d!1646203 (= res!2165232 (not ((_ is Node!15588) xs!286)))))

(assert (=> d!1646203 (= (isBalanced!4450 xs!286) e!3172187)))

(declare-fun b!5086184 () Bool)

(declare-fun e!3172188 () Bool)

(assert (=> b!5086184 (= e!3172187 e!3172188)))

(declare-fun res!2165233 () Bool)

(assert (=> b!5086184 (=> (not res!2165233) (not e!3172188))))

(assert (=> b!5086184 (= res!2165233 (<= (- 1) (- (height!2165 (left!42852 xs!286)) (height!2165 (right!43182 xs!286)))))))

(declare-fun b!5086185 () Bool)

(declare-fun res!2165234 () Bool)

(assert (=> b!5086185 (=> (not res!2165234) (not e!3172188))))

(assert (=> b!5086185 (= res!2165234 (isBalanced!4450 (right!43182 xs!286)))))

(declare-fun b!5086186 () Bool)

(declare-fun res!2165231 () Bool)

(assert (=> b!5086186 (=> (not res!2165231) (not e!3172188))))

(assert (=> b!5086186 (= res!2165231 (<= (- (height!2165 (left!42852 xs!286)) (height!2165 (right!43182 xs!286))) 1))))

(declare-fun b!5086187 () Bool)

(declare-fun isEmpty!31679 (Conc!15588) Bool)

(assert (=> b!5086187 (= e!3172188 (not (isEmpty!31679 (right!43182 xs!286))))))

(declare-fun b!5086188 () Bool)

(declare-fun res!2165230 () Bool)

(assert (=> b!5086188 (=> (not res!2165230) (not e!3172188))))

(assert (=> b!5086188 (= res!2165230 (not (isEmpty!31679 (left!42852 xs!286))))))

(declare-fun b!5086189 () Bool)

(declare-fun res!2165235 () Bool)

(assert (=> b!5086189 (=> (not res!2165235) (not e!3172188))))

(assert (=> b!5086189 (= res!2165235 (isBalanced!4450 (left!42852 xs!286)))))

(assert (= (and d!1646203 (not res!2165232)) b!5086184))

(assert (= (and b!5086184 res!2165233) b!5086186))

(assert (= (and b!5086186 res!2165231) b!5086189))

(assert (= (and b!5086189 res!2165235) b!5086185))

(assert (= (and b!5086185 res!2165234) b!5086188))

(assert (= (and b!5086188 res!2165230) b!5086187))

(declare-fun m!6143316 () Bool)

(assert (=> b!5086184 m!6143316))

(declare-fun m!6143318 () Bool)

(assert (=> b!5086184 m!6143318))

(declare-fun m!6143320 () Bool)

(assert (=> b!5086185 m!6143320))

(declare-fun m!6143322 () Bool)

(assert (=> b!5086187 m!6143322))

(declare-fun m!6143324 () Bool)

(assert (=> b!5086188 m!6143324))

(assert (=> b!5086186 m!6143316))

(assert (=> b!5086186 m!6143318))

(declare-fun m!6143326 () Bool)

(assert (=> b!5086189 m!6143326))

(assert (=> start!535886 d!1646203))

(declare-fun d!1646209 () Bool)

(declare-fun c!873924 () Bool)

(assert (=> d!1646209 (= c!873924 ((_ is Node!15588) xs!286))))

(declare-fun e!3172191 () Bool)

(assert (=> d!1646209 (= (inv!77687 xs!286) e!3172191)))

(declare-fun b!5086196 () Bool)

(assert (=> b!5086196 (= e!3172191 (inv!77689 xs!286))))

(declare-fun b!5086197 () Bool)

(declare-fun e!3172192 () Bool)

(assert (=> b!5086197 (= e!3172191 e!3172192)))

(declare-fun res!2165242 () Bool)

(assert (=> b!5086197 (= res!2165242 (not ((_ is Leaf!25887) xs!286)))))

(assert (=> b!5086197 (=> res!2165242 e!3172192)))

(declare-fun b!5086198 () Bool)

(assert (=> b!5086198 (= e!3172192 (inv!77690 xs!286))))

(assert (= (and d!1646209 c!873924) b!5086196))

(assert (= (and d!1646209 (not c!873924)) b!5086197))

(assert (= (and b!5086197 (not res!2165242)) b!5086198))

(declare-fun m!6143338 () Bool)

(assert (=> b!5086196 m!6143338))

(declare-fun m!6143342 () Bool)

(assert (=> b!5086198 m!6143342))

(assert (=> start!535886 d!1646209))

(declare-fun d!1646213 () Bool)

(declare-fun c!873926 () Bool)

(assert (=> d!1646213 (= c!873926 ((_ is Node!15588) ys!41))))

(declare-fun e!3172194 () Bool)

(assert (=> d!1646213 (= (inv!77687 ys!41) e!3172194)))

(declare-fun b!5086200 () Bool)

(assert (=> b!5086200 (= e!3172194 (inv!77689 ys!41))))

(declare-fun b!5086202 () Bool)

(declare-fun e!3172196 () Bool)

(assert (=> b!5086202 (= e!3172194 e!3172196)))

(declare-fun res!2165244 () Bool)

(assert (=> b!5086202 (= res!2165244 (not ((_ is Leaf!25887) ys!41)))))

(assert (=> b!5086202 (=> res!2165244 e!3172196)))

(declare-fun b!5086204 () Bool)

(assert (=> b!5086204 (= e!3172196 (inv!77690 ys!41))))

(assert (= (and d!1646213 c!873926) b!5086200))

(assert (= (and d!1646213 (not c!873926)) b!5086202))

(assert (= (and b!5086202 (not res!2165244)) b!5086204))

(declare-fun m!6143344 () Bool)

(assert (=> b!5086200 m!6143344))

(declare-fun m!6143346 () Bool)

(assert (=> b!5086204 m!6143346))

(assert (=> start!535886 d!1646213))

(declare-fun d!1646215 () Bool)

(declare-fun res!2165247 () Bool)

(declare-fun e!3172197 () Bool)

(assert (=> d!1646215 (=> res!2165247 e!3172197)))

(assert (=> d!1646215 (= res!2165247 (not ((_ is Node!15588) ys!41)))))

(assert (=> d!1646215 (= (isBalanced!4450 ys!41) e!3172197)))

(declare-fun b!5086205 () Bool)

(declare-fun e!3172198 () Bool)

(assert (=> b!5086205 (= e!3172197 e!3172198)))

(declare-fun res!2165248 () Bool)

(assert (=> b!5086205 (=> (not res!2165248) (not e!3172198))))

(assert (=> b!5086205 (= res!2165248 (<= (- 1) (- (height!2165 (left!42852 ys!41)) (height!2165 (right!43182 ys!41)))))))

(declare-fun b!5086206 () Bool)

(declare-fun res!2165249 () Bool)

(assert (=> b!5086206 (=> (not res!2165249) (not e!3172198))))

(assert (=> b!5086206 (= res!2165249 (isBalanced!4450 (right!43182 ys!41)))))

(declare-fun b!5086207 () Bool)

(declare-fun res!2165246 () Bool)

(assert (=> b!5086207 (=> (not res!2165246) (not e!3172198))))

(assert (=> b!5086207 (= res!2165246 (<= (- (height!2165 (left!42852 ys!41)) (height!2165 (right!43182 ys!41))) 1))))

(declare-fun b!5086208 () Bool)

(assert (=> b!5086208 (= e!3172198 (not (isEmpty!31679 (right!43182 ys!41))))))

(declare-fun b!5086210 () Bool)

(declare-fun res!2165245 () Bool)

(assert (=> b!5086210 (=> (not res!2165245) (not e!3172198))))

(assert (=> b!5086210 (= res!2165245 (not (isEmpty!31679 (left!42852 ys!41))))))

(declare-fun b!5086212 () Bool)

(declare-fun res!2165250 () Bool)

(assert (=> b!5086212 (=> (not res!2165250) (not e!3172198))))

(assert (=> b!5086212 (= res!2165250 (isBalanced!4450 (left!42852 ys!41)))))

(assert (= (and d!1646215 (not res!2165247)) b!5086205))

(assert (= (and b!5086205 res!2165248) b!5086207))

(assert (= (and b!5086207 res!2165246) b!5086212))

(assert (= (and b!5086212 res!2165250) b!5086206))

(assert (= (and b!5086206 res!2165249) b!5086210))

(assert (= (and b!5086210 res!2165245) b!5086208))

(declare-fun m!6143356 () Bool)

(assert (=> b!5086205 m!6143356))

(declare-fun m!6143358 () Bool)

(assert (=> b!5086205 m!6143358))

(declare-fun m!6143360 () Bool)

(assert (=> b!5086206 m!6143360))

(declare-fun m!6143362 () Bool)

(assert (=> b!5086208 m!6143362))

(declare-fun m!6143364 () Bool)

(assert (=> b!5086210 m!6143364))

(assert (=> b!5086207 m!6143356))

(assert (=> b!5086207 m!6143358))

(declare-fun m!6143366 () Bool)

(assert (=> b!5086212 m!6143366))

(assert (=> b!5086121 d!1646215))

(declare-fun d!1646221 () Bool)

(assert (=> d!1646221 (= (inv!77688 (xs!18968 ys!41)) (<= (size!39122 (innerList!15676 (xs!18968 ys!41))) 2147483647))))

(declare-fun bs!1190945 () Bool)

(assert (= bs!1190945 d!1646221))

(declare-fun m!6143368 () Bool)

(assert (=> bs!1190945 m!6143368))

(assert (=> b!5086126 d!1646221))

(declare-fun b!5086224 () Bool)

(declare-fun e!3172205 () Bool)

(declare-fun tp_is_empty!37097 () Bool)

(declare-fun tp!1417962 () Bool)

(assert (=> b!5086224 (= e!3172205 (and tp_is_empty!37097 tp!1417962))))

(assert (=> b!5086124 (= tp!1417956 e!3172205)))

(assert (= (and b!5086124 ((_ is Cons!58458) (innerList!15676 (xs!18968 ys!41)))) b!5086224))

(declare-fun tp!1417977 () Bool)

(declare-fun b!5086247 () Bool)

(declare-fun e!3172218 () Bool)

(declare-fun tp!1417975 () Bool)

(assert (=> b!5086247 (= e!3172218 (and (inv!77687 (left!42852 (left!42852 xs!286))) tp!1417975 (inv!77687 (right!43182 (left!42852 xs!286))) tp!1417977))))

(declare-fun b!5086249 () Bool)

(declare-fun e!3172219 () Bool)

(declare-fun tp!1417976 () Bool)

(assert (=> b!5086249 (= e!3172219 tp!1417976)))

(declare-fun b!5086248 () Bool)

(assert (=> b!5086248 (= e!3172218 (and (inv!77688 (xs!18968 (left!42852 xs!286))) e!3172219))))

(assert (=> b!5086129 (= tp!1417957 (and (inv!77687 (left!42852 xs!286)) e!3172218))))

(assert (= (and b!5086129 ((_ is Node!15588) (left!42852 xs!286))) b!5086247))

(assert (= b!5086248 b!5086249))

(assert (= (and b!5086129 ((_ is Leaf!25887) (left!42852 xs!286))) b!5086248))

(declare-fun m!6143390 () Bool)

(assert (=> b!5086247 m!6143390))

(declare-fun m!6143392 () Bool)

(assert (=> b!5086247 m!6143392))

(declare-fun m!6143394 () Bool)

(assert (=> b!5086248 m!6143394))

(assert (=> b!5086129 m!6143282))

(declare-fun tp!1417978 () Bool)

(declare-fun b!5086250 () Bool)

(declare-fun e!3172220 () Bool)

(declare-fun tp!1417980 () Bool)

(assert (=> b!5086250 (= e!3172220 (and (inv!77687 (left!42852 (right!43182 xs!286))) tp!1417978 (inv!77687 (right!43182 (right!43182 xs!286))) tp!1417980))))

(declare-fun b!5086252 () Bool)

(declare-fun e!3172221 () Bool)

(declare-fun tp!1417979 () Bool)

(assert (=> b!5086252 (= e!3172221 tp!1417979)))

(declare-fun b!5086251 () Bool)

(assert (=> b!5086251 (= e!3172220 (and (inv!77688 (xs!18968 (right!43182 xs!286))) e!3172221))))

(assert (=> b!5086129 (= tp!1417955 (and (inv!77687 (right!43182 xs!286)) e!3172220))))

(assert (= (and b!5086129 ((_ is Node!15588) (right!43182 xs!286))) b!5086250))

(assert (= b!5086251 b!5086252))

(assert (= (and b!5086129 ((_ is Leaf!25887) (right!43182 xs!286))) b!5086251))

(declare-fun m!6143396 () Bool)

(assert (=> b!5086250 m!6143396))

(declare-fun m!6143398 () Bool)

(assert (=> b!5086250 m!6143398))

(declare-fun m!6143400 () Bool)

(assert (=> b!5086251 m!6143400))

(assert (=> b!5086129 m!6143284))

(declare-fun tp!1417983 () Bool)

(declare-fun b!5086253 () Bool)

(declare-fun tp!1417981 () Bool)

(declare-fun e!3172222 () Bool)

(assert (=> b!5086253 (= e!3172222 (and (inv!77687 (left!42852 (left!42852 ys!41))) tp!1417981 (inv!77687 (right!43182 (left!42852 ys!41))) tp!1417983))))

(declare-fun b!5086255 () Bool)

(declare-fun e!3172223 () Bool)

(declare-fun tp!1417982 () Bool)

(assert (=> b!5086255 (= e!3172223 tp!1417982)))

(declare-fun b!5086254 () Bool)

(assert (=> b!5086254 (= e!3172222 (and (inv!77688 (xs!18968 (left!42852 ys!41))) e!3172223))))

(assert (=> b!5086122 (= tp!1417954 (and (inv!77687 (left!42852 ys!41)) e!3172222))))

(assert (= (and b!5086122 ((_ is Node!15588) (left!42852 ys!41))) b!5086253))

(assert (= b!5086254 b!5086255))

(assert (= (and b!5086122 ((_ is Leaf!25887) (left!42852 ys!41))) b!5086254))

(declare-fun m!6143402 () Bool)

(assert (=> b!5086253 m!6143402))

(declare-fun m!6143404 () Bool)

(assert (=> b!5086253 m!6143404))

(declare-fun m!6143406 () Bool)

(assert (=> b!5086254 m!6143406))

(assert (=> b!5086122 m!6143262))

(declare-fun tp!1417989 () Bool)

(declare-fun e!3172226 () Bool)

(declare-fun b!5086259 () Bool)

(declare-fun tp!1417987 () Bool)

(assert (=> b!5086259 (= e!3172226 (and (inv!77687 (left!42852 (right!43182 ys!41))) tp!1417987 (inv!77687 (right!43182 (right!43182 ys!41))) tp!1417989))))

(declare-fun b!5086261 () Bool)

(declare-fun e!3172227 () Bool)

(declare-fun tp!1417988 () Bool)

(assert (=> b!5086261 (= e!3172227 tp!1417988)))

(declare-fun b!5086260 () Bool)

(assert (=> b!5086260 (= e!3172226 (and (inv!77688 (xs!18968 (right!43182 ys!41))) e!3172227))))

(assert (=> b!5086122 (= tp!1417959 (and (inv!77687 (right!43182 ys!41)) e!3172226))))

(assert (= (and b!5086122 ((_ is Node!15588) (right!43182 ys!41))) b!5086259))

(assert (= b!5086260 b!5086261))

(assert (= (and b!5086122 ((_ is Leaf!25887) (right!43182 ys!41))) b!5086260))

(declare-fun m!6143414 () Bool)

(assert (=> b!5086259 m!6143414))

(declare-fun m!6143416 () Bool)

(assert (=> b!5086259 m!6143416))

(declare-fun m!6143418 () Bool)

(assert (=> b!5086260 m!6143418))

(assert (=> b!5086122 m!6143264))

(declare-fun b!5086265 () Bool)

(declare-fun e!3172230 () Bool)

(declare-fun tp!1417993 () Bool)

(assert (=> b!5086265 (= e!3172230 (and tp_is_empty!37097 tp!1417993))))

(assert (=> b!5086125 (= tp!1417958 e!3172230)))

(assert (= (and b!5086125 ((_ is Cons!58458) (innerList!15676 (xs!18968 xs!286)))) b!5086265))

(check-sat (not b!5086159) (not b!5086156) (not b!5086248) tp_is_empty!37097 (not b!5086198) (not b!5086247) (not b!5086143) (not b!5086188) (not b!5086249) (not b!5086184) (not b!5086187) (not b!5086206) (not b!5086154) (not b!5086250) (not b!5086252) (not b!5086186) (not b!5086265) (not d!1646189) (not b!5086259) (not b!5086196) (not b!5086208) (not b!5086138) (not b!5086200) (not b!5086207) (not b!5086210) (not b!5086189) (not b!5086212) (not b!5086136) (not b!5086260) (not b!5086254) (not b!5086251) (not b!5086145) (not b!5086255) (not b!5086253) (not b!5086224) (not b!5086157) (not b!5086205) (not b!5086204) (not b!5086261) (not b!5086185) (not b!5086129) (not b!5086122) (not d!1646221))
(check-sat)
(get-model)

(declare-fun d!1646231 () Bool)

(declare-fun lt!2091686 () Bool)

(declare-fun isEmpty!31680 (List!58582) Bool)

(declare-fun list!19036 (Conc!15588) List!58582)

(assert (=> d!1646231 (= lt!2091686 (isEmpty!31680 (list!19036 (right!43182 xs!286))))))

(declare-fun size!39124 (Conc!15588) Int)

(assert (=> d!1646231 (= lt!2091686 (= (size!39124 (right!43182 xs!286)) 0))))

(assert (=> d!1646231 (= (isEmpty!31679 (right!43182 xs!286)) lt!2091686)))

(declare-fun bs!1190946 () Bool)

(assert (= bs!1190946 d!1646231))

(declare-fun m!6143438 () Bool)

(assert (=> bs!1190946 m!6143438))

(assert (=> bs!1190946 m!6143438))

(declare-fun m!6143440 () Bool)

(assert (=> bs!1190946 m!6143440))

(declare-fun m!6143442 () Bool)

(assert (=> bs!1190946 m!6143442))

(assert (=> b!5086187 d!1646231))

(declare-fun d!1646233 () Bool)

(declare-fun res!2165266 () Bool)

(declare-fun e!3172241 () Bool)

(assert (=> d!1646233 (=> (not res!2165266) (not e!3172241))))

(assert (=> d!1646233 (= res!2165266 (= (csize!31406 (left!42852 xs!286)) (+ (size!39124 (left!42852 (left!42852 xs!286))) (size!39124 (right!43182 (left!42852 xs!286))))))))

(assert (=> d!1646233 (= (inv!77689 (left!42852 xs!286)) e!3172241)))

(declare-fun b!5086284 () Bool)

(declare-fun res!2165267 () Bool)

(assert (=> b!5086284 (=> (not res!2165267) (not e!3172241))))

(assert (=> b!5086284 (= res!2165267 (and (not (= (left!42852 (left!42852 xs!286)) Empty!15588)) (not (= (right!43182 (left!42852 xs!286)) Empty!15588))))))

(declare-fun b!5086285 () Bool)

(declare-fun res!2165268 () Bool)

(assert (=> b!5086285 (=> (not res!2165268) (not e!3172241))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5086285 (= res!2165268 (= (cheight!15799 (left!42852 xs!286)) (+ (max!0 (height!2165 (left!42852 (left!42852 xs!286))) (height!2165 (right!43182 (left!42852 xs!286)))) 1)))))

(declare-fun b!5086286 () Bool)

(assert (=> b!5086286 (= e!3172241 (<= 0 (cheight!15799 (left!42852 xs!286))))))

(assert (= (and d!1646233 res!2165266) b!5086284))

(assert (= (and b!5086284 res!2165267) b!5086285))

(assert (= (and b!5086285 res!2165268) b!5086286))

(declare-fun m!6143444 () Bool)

(assert (=> d!1646233 m!6143444))

(declare-fun m!6143446 () Bool)

(assert (=> d!1646233 m!6143446))

(declare-fun m!6143448 () Bool)

(assert (=> b!5086285 m!6143448))

(declare-fun m!6143450 () Bool)

(assert (=> b!5086285 m!6143450))

(assert (=> b!5086285 m!6143448))

(assert (=> b!5086285 m!6143450))

(declare-fun m!6143452 () Bool)

(assert (=> b!5086285 m!6143452))

(assert (=> b!5086136 d!1646233))

(declare-fun d!1646235 () Bool)

(assert (=> d!1646235 (= (height!2165 (left!42852 xs!286)) (ite ((_ is Empty!15588) (left!42852 xs!286)) 0 (ite ((_ is Leaf!25887) (left!42852 xs!286)) 1 (cheight!15799 (left!42852 xs!286)))))))

(assert (=> b!5086186 d!1646235))

(declare-fun d!1646237 () Bool)

(assert (=> d!1646237 (= (height!2165 (right!43182 xs!286)) (ite ((_ is Empty!15588) (right!43182 xs!286)) 0 (ite ((_ is Leaf!25887) (right!43182 xs!286)) 1 (cheight!15799 (right!43182 xs!286)))))))

(assert (=> b!5086186 d!1646237))

(declare-fun d!1646239 () Bool)

(declare-fun res!2165271 () Bool)

(declare-fun e!3172242 () Bool)

(assert (=> d!1646239 (=> res!2165271 e!3172242)))

(assert (=> d!1646239 (= res!2165271 (not ((_ is Node!15588) (right!43182 xs!286))))))

(assert (=> d!1646239 (= (isBalanced!4450 (right!43182 xs!286)) e!3172242)))

(declare-fun b!5086287 () Bool)

(declare-fun e!3172243 () Bool)

(assert (=> b!5086287 (= e!3172242 e!3172243)))

(declare-fun res!2165272 () Bool)

(assert (=> b!5086287 (=> (not res!2165272) (not e!3172243))))

(assert (=> b!5086287 (= res!2165272 (<= (- 1) (- (height!2165 (left!42852 (right!43182 xs!286))) (height!2165 (right!43182 (right!43182 xs!286))))))))

(declare-fun b!5086288 () Bool)

(declare-fun res!2165273 () Bool)

(assert (=> b!5086288 (=> (not res!2165273) (not e!3172243))))

(assert (=> b!5086288 (= res!2165273 (isBalanced!4450 (right!43182 (right!43182 xs!286))))))

(declare-fun b!5086289 () Bool)

(declare-fun res!2165270 () Bool)

(assert (=> b!5086289 (=> (not res!2165270) (not e!3172243))))

(assert (=> b!5086289 (= res!2165270 (<= (- (height!2165 (left!42852 (right!43182 xs!286))) (height!2165 (right!43182 (right!43182 xs!286)))) 1))))

(declare-fun b!5086290 () Bool)

(assert (=> b!5086290 (= e!3172243 (not (isEmpty!31679 (right!43182 (right!43182 xs!286)))))))

(declare-fun b!5086291 () Bool)

(declare-fun res!2165269 () Bool)

(assert (=> b!5086291 (=> (not res!2165269) (not e!3172243))))

(assert (=> b!5086291 (= res!2165269 (not (isEmpty!31679 (left!42852 (right!43182 xs!286)))))))

(declare-fun b!5086292 () Bool)

(declare-fun res!2165274 () Bool)

(assert (=> b!5086292 (=> (not res!2165274) (not e!3172243))))

(assert (=> b!5086292 (= res!2165274 (isBalanced!4450 (left!42852 (right!43182 xs!286))))))

(assert (= (and d!1646239 (not res!2165271)) b!5086287))

(assert (= (and b!5086287 res!2165272) b!5086289))

(assert (= (and b!5086289 res!2165270) b!5086292))

(assert (= (and b!5086292 res!2165274) b!5086288))

(assert (= (and b!5086288 res!2165273) b!5086291))

(assert (= (and b!5086291 res!2165269) b!5086290))

(declare-fun m!6143454 () Bool)

(assert (=> b!5086287 m!6143454))

(declare-fun m!6143456 () Bool)

(assert (=> b!5086287 m!6143456))

(declare-fun m!6143458 () Bool)

(assert (=> b!5086288 m!6143458))

(declare-fun m!6143460 () Bool)

(assert (=> b!5086290 m!6143460))

(declare-fun m!6143462 () Bool)

(assert (=> b!5086291 m!6143462))

(assert (=> b!5086289 m!6143454))

(assert (=> b!5086289 m!6143456))

(declare-fun m!6143464 () Bool)

(assert (=> b!5086292 m!6143464))

(assert (=> b!5086185 d!1646239))

(declare-fun d!1646241 () Bool)

(assert (=> d!1646241 (= (inv!77688 (xs!18968 (left!42852 xs!286))) (<= (size!39122 (innerList!15676 (xs!18968 (left!42852 xs!286)))) 2147483647))))

(declare-fun bs!1190947 () Bool)

(assert (= bs!1190947 d!1646241))

(declare-fun m!6143466 () Bool)

(assert (=> bs!1190947 m!6143466))

(assert (=> b!5086248 d!1646241))

(assert (=> b!5086184 d!1646235))

(assert (=> b!5086184 d!1646237))

(declare-fun d!1646243 () Bool)

(declare-fun c!873930 () Bool)

(assert (=> d!1646243 (= c!873930 ((_ is Node!15588) (left!42852 (left!42852 xs!286))))))

(declare-fun e!3172244 () Bool)

(assert (=> d!1646243 (= (inv!77687 (left!42852 (left!42852 xs!286))) e!3172244)))

(declare-fun b!5086293 () Bool)

(assert (=> b!5086293 (= e!3172244 (inv!77689 (left!42852 (left!42852 xs!286))))))

(declare-fun b!5086294 () Bool)

(declare-fun e!3172245 () Bool)

(assert (=> b!5086294 (= e!3172244 e!3172245)))

(declare-fun res!2165275 () Bool)

(assert (=> b!5086294 (= res!2165275 (not ((_ is Leaf!25887) (left!42852 (left!42852 xs!286)))))))

(assert (=> b!5086294 (=> res!2165275 e!3172245)))

(declare-fun b!5086295 () Bool)

(assert (=> b!5086295 (= e!3172245 (inv!77690 (left!42852 (left!42852 xs!286))))))

(assert (= (and d!1646243 c!873930) b!5086293))

(assert (= (and d!1646243 (not c!873930)) b!5086294))

(assert (= (and b!5086294 (not res!2165275)) b!5086295))

(declare-fun m!6143468 () Bool)

(assert (=> b!5086293 m!6143468))

(declare-fun m!6143470 () Bool)

(assert (=> b!5086295 m!6143470))

(assert (=> b!5086247 d!1646243))

(declare-fun d!1646245 () Bool)

(declare-fun c!873931 () Bool)

(assert (=> d!1646245 (= c!873931 ((_ is Node!15588) (right!43182 (left!42852 xs!286))))))

(declare-fun e!3172246 () Bool)

(assert (=> d!1646245 (= (inv!77687 (right!43182 (left!42852 xs!286))) e!3172246)))

(declare-fun b!5086296 () Bool)

(assert (=> b!5086296 (= e!3172246 (inv!77689 (right!43182 (left!42852 xs!286))))))

(declare-fun b!5086297 () Bool)

(declare-fun e!3172247 () Bool)

(assert (=> b!5086297 (= e!3172246 e!3172247)))

(declare-fun res!2165276 () Bool)

(assert (=> b!5086297 (= res!2165276 (not ((_ is Leaf!25887) (right!43182 (left!42852 xs!286)))))))

(assert (=> b!5086297 (=> res!2165276 e!3172247)))

(declare-fun b!5086298 () Bool)

(assert (=> b!5086298 (= e!3172247 (inv!77690 (right!43182 (left!42852 xs!286))))))

(assert (= (and d!1646245 c!873931) b!5086296))

(assert (= (and d!1646245 (not c!873931)) b!5086297))

(assert (= (and b!5086297 (not res!2165276)) b!5086298))

(declare-fun m!6143472 () Bool)

(assert (=> b!5086296 m!6143472))

(declare-fun m!6143474 () Bool)

(assert (=> b!5086298 m!6143474))

(assert (=> b!5086247 d!1646245))

(declare-fun d!1646247 () Bool)

(declare-fun res!2165279 () Bool)

(declare-fun e!3172248 () Bool)

(assert (=> d!1646247 (=> res!2165279 e!3172248)))

(assert (=> d!1646247 (= res!2165279 (not ((_ is Node!15588) (left!42852 ys!41))))))

(assert (=> d!1646247 (= (isBalanced!4450 (left!42852 ys!41)) e!3172248)))

(declare-fun b!5086299 () Bool)

(declare-fun e!3172249 () Bool)

(assert (=> b!5086299 (= e!3172248 e!3172249)))

(declare-fun res!2165280 () Bool)

(assert (=> b!5086299 (=> (not res!2165280) (not e!3172249))))

(assert (=> b!5086299 (= res!2165280 (<= (- 1) (- (height!2165 (left!42852 (left!42852 ys!41))) (height!2165 (right!43182 (left!42852 ys!41))))))))

(declare-fun b!5086300 () Bool)

(declare-fun res!2165281 () Bool)

(assert (=> b!5086300 (=> (not res!2165281) (not e!3172249))))

(assert (=> b!5086300 (= res!2165281 (isBalanced!4450 (right!43182 (left!42852 ys!41))))))

(declare-fun b!5086301 () Bool)

(declare-fun res!2165278 () Bool)

(assert (=> b!5086301 (=> (not res!2165278) (not e!3172249))))

(assert (=> b!5086301 (= res!2165278 (<= (- (height!2165 (left!42852 (left!42852 ys!41))) (height!2165 (right!43182 (left!42852 ys!41)))) 1))))

(declare-fun b!5086302 () Bool)

(assert (=> b!5086302 (= e!3172249 (not (isEmpty!31679 (right!43182 (left!42852 ys!41)))))))

(declare-fun b!5086303 () Bool)

(declare-fun res!2165277 () Bool)

(assert (=> b!5086303 (=> (not res!2165277) (not e!3172249))))

(assert (=> b!5086303 (= res!2165277 (not (isEmpty!31679 (left!42852 (left!42852 ys!41)))))))

(declare-fun b!5086304 () Bool)

(declare-fun res!2165282 () Bool)

(assert (=> b!5086304 (=> (not res!2165282) (not e!3172249))))

(assert (=> b!5086304 (= res!2165282 (isBalanced!4450 (left!42852 (left!42852 ys!41))))))

(assert (= (and d!1646247 (not res!2165279)) b!5086299))

(assert (= (and b!5086299 res!2165280) b!5086301))

(assert (= (and b!5086301 res!2165278) b!5086304))

(assert (= (and b!5086304 res!2165282) b!5086300))

(assert (= (and b!5086300 res!2165281) b!5086303))

(assert (= (and b!5086303 res!2165277) b!5086302))

(declare-fun m!6143476 () Bool)

(assert (=> b!5086299 m!6143476))

(declare-fun m!6143478 () Bool)

(assert (=> b!5086299 m!6143478))

(declare-fun m!6143480 () Bool)

(assert (=> b!5086300 m!6143480))

(declare-fun m!6143482 () Bool)

(assert (=> b!5086302 m!6143482))

(declare-fun m!6143484 () Bool)

(assert (=> b!5086303 m!6143484))

(assert (=> b!5086301 m!6143476))

(assert (=> b!5086301 m!6143478))

(declare-fun m!6143486 () Bool)

(assert (=> b!5086304 m!6143486))

(assert (=> b!5086212 d!1646247))

(declare-fun d!1646249 () Bool)

(declare-fun lt!2091689 () Int)

(assert (=> d!1646249 (>= lt!2091689 0)))

(declare-fun e!3172252 () Int)

(assert (=> d!1646249 (= lt!2091689 e!3172252)))

(declare-fun c!873934 () Bool)

(assert (=> d!1646249 (= c!873934 ((_ is Nil!58458) (innerList!15676 (xs!18968 ys!41))))))

(assert (=> d!1646249 (= (size!39122 (innerList!15676 (xs!18968 ys!41))) lt!2091689)))

(declare-fun b!5086309 () Bool)

(assert (=> b!5086309 (= e!3172252 0)))

(declare-fun b!5086310 () Bool)

(assert (=> b!5086310 (= e!3172252 (+ 1 (size!39122 (t!371429 (innerList!15676 (xs!18968 ys!41))))))))

(assert (= (and d!1646249 c!873934) b!5086309))

(assert (= (and d!1646249 (not c!873934)) b!5086310))

(declare-fun m!6143488 () Bool)

(assert (=> b!5086310 m!6143488))

(assert (=> d!1646221 d!1646249))

(declare-fun d!1646251 () Bool)

(declare-fun lt!2091690 () Int)

(assert (=> d!1646251 (>= lt!2091690 0)))

(declare-fun e!3172253 () Int)

(assert (=> d!1646251 (= lt!2091690 e!3172253)))

(declare-fun c!873935 () Bool)

(assert (=> d!1646251 (= c!873935 ((_ is Nil!58458) (innerList!15676 (xs!18968 xs!286))))))

(assert (=> d!1646251 (= (size!39122 (innerList!15676 (xs!18968 xs!286))) lt!2091690)))

(declare-fun b!5086311 () Bool)

(assert (=> b!5086311 (= e!3172253 0)))

(declare-fun b!5086312 () Bool)

(assert (=> b!5086312 (= e!3172253 (+ 1 (size!39122 (t!371429 (innerList!15676 (xs!18968 xs!286))))))))

(assert (= (and d!1646251 c!873935) b!5086311))

(assert (= (and d!1646251 (not c!873935)) b!5086312))

(declare-fun m!6143490 () Bool)

(assert (=> b!5086312 m!6143490))

(assert (=> d!1646189 d!1646251))

(declare-fun d!1646253 () Bool)

(declare-fun res!2165287 () Bool)

(declare-fun e!3172256 () Bool)

(assert (=> d!1646253 (=> (not res!2165287) (not e!3172256))))

(declare-fun list!19037 (IArray!31237) List!58582)

(assert (=> d!1646253 (= res!2165287 (<= (size!39122 (list!19037 (xs!18968 xs!286))) 512))))

(assert (=> d!1646253 (= (inv!77690 xs!286) e!3172256)))

(declare-fun b!5086317 () Bool)

(declare-fun res!2165288 () Bool)

(assert (=> b!5086317 (=> (not res!2165288) (not e!3172256))))

(assert (=> b!5086317 (= res!2165288 (= (csize!31407 xs!286) (size!39122 (list!19037 (xs!18968 xs!286)))))))

(declare-fun b!5086318 () Bool)

(assert (=> b!5086318 (= e!3172256 (and (> (csize!31407 xs!286) 0) (<= (csize!31407 xs!286) 512)))))

(assert (= (and d!1646253 res!2165287) b!5086317))

(assert (= (and b!5086317 res!2165288) b!5086318))

(declare-fun m!6143492 () Bool)

(assert (=> d!1646253 m!6143492))

(assert (=> d!1646253 m!6143492))

(declare-fun m!6143494 () Bool)

(assert (=> d!1646253 m!6143494))

(assert (=> b!5086317 m!6143492))

(assert (=> b!5086317 m!6143492))

(assert (=> b!5086317 m!6143494))

(assert (=> b!5086198 d!1646253))

(declare-fun d!1646255 () Bool)

(declare-fun lt!2091691 () Bool)

(assert (=> d!1646255 (= lt!2091691 (isEmpty!31680 (list!19036 (left!42852 ys!41))))))

(assert (=> d!1646255 (= lt!2091691 (= (size!39124 (left!42852 ys!41)) 0))))

(assert (=> d!1646255 (= (isEmpty!31679 (left!42852 ys!41)) lt!2091691)))

(declare-fun bs!1190948 () Bool)

(assert (= bs!1190948 d!1646255))

(declare-fun m!6143496 () Bool)

(assert (=> bs!1190948 m!6143496))

(assert (=> bs!1190948 m!6143496))

(declare-fun m!6143498 () Bool)

(assert (=> bs!1190948 m!6143498))

(declare-fun m!6143500 () Bool)

(assert (=> bs!1190948 m!6143500))

(assert (=> b!5086210 d!1646255))

(declare-fun d!1646257 () Bool)

(declare-fun res!2165289 () Bool)

(declare-fun e!3172257 () Bool)

(assert (=> d!1646257 (=> (not res!2165289) (not e!3172257))))

(assert (=> d!1646257 (= res!2165289 (= (csize!31406 xs!286) (+ (size!39124 (left!42852 xs!286)) (size!39124 (right!43182 xs!286)))))))

(assert (=> d!1646257 (= (inv!77689 xs!286) e!3172257)))

(declare-fun b!5086319 () Bool)

(declare-fun res!2165290 () Bool)

(assert (=> b!5086319 (=> (not res!2165290) (not e!3172257))))

(assert (=> b!5086319 (= res!2165290 (and (not (= (left!42852 xs!286) Empty!15588)) (not (= (right!43182 xs!286) Empty!15588))))))

(declare-fun b!5086320 () Bool)

(declare-fun res!2165291 () Bool)

(assert (=> b!5086320 (=> (not res!2165291) (not e!3172257))))

(assert (=> b!5086320 (= res!2165291 (= (cheight!15799 xs!286) (+ (max!0 (height!2165 (left!42852 xs!286)) (height!2165 (right!43182 xs!286))) 1)))))

(declare-fun b!5086321 () Bool)

(assert (=> b!5086321 (= e!3172257 (<= 0 (cheight!15799 xs!286)))))

(assert (= (and d!1646257 res!2165289) b!5086319))

(assert (= (and b!5086319 res!2165290) b!5086320))

(assert (= (and b!5086320 res!2165291) b!5086321))

(declare-fun m!6143502 () Bool)

(assert (=> d!1646257 m!6143502))

(assert (=> d!1646257 m!6143442))

(assert (=> b!5086320 m!6143316))

(assert (=> b!5086320 m!6143318))

(assert (=> b!5086320 m!6143316))

(assert (=> b!5086320 m!6143318))

(declare-fun m!6143504 () Bool)

(assert (=> b!5086320 m!6143504))

(assert (=> b!5086196 d!1646257))

(declare-fun d!1646259 () Bool)

(declare-fun lt!2091692 () Bool)

(assert (=> d!1646259 (= lt!2091692 (isEmpty!31680 (list!19036 (right!43182 ys!41))))))

(assert (=> d!1646259 (= lt!2091692 (= (size!39124 (right!43182 ys!41)) 0))))

(assert (=> d!1646259 (= (isEmpty!31679 (right!43182 ys!41)) lt!2091692)))

(declare-fun bs!1190949 () Bool)

(assert (= bs!1190949 d!1646259))

(declare-fun m!6143506 () Bool)

(assert (=> bs!1190949 m!6143506))

(assert (=> bs!1190949 m!6143506))

(declare-fun m!6143508 () Bool)

(assert (=> bs!1190949 m!6143508))

(declare-fun m!6143510 () Bool)

(assert (=> bs!1190949 m!6143510))

(assert (=> b!5086208 d!1646259))

(declare-fun d!1646261 () Bool)

(assert (=> d!1646261 (= (inv!77688 (xs!18968 (right!43182 xs!286))) (<= (size!39122 (innerList!15676 (xs!18968 (right!43182 xs!286)))) 2147483647))))

(declare-fun bs!1190950 () Bool)

(assert (= bs!1190950 d!1646261))

(declare-fun m!6143512 () Bool)

(assert (=> bs!1190950 m!6143512))

(assert (=> b!5086251 d!1646261))

(declare-fun d!1646263 () Bool)

(assert (=> d!1646263 (= (height!2165 (left!42852 ys!41)) (ite ((_ is Empty!15588) (left!42852 ys!41)) 0 (ite ((_ is Leaf!25887) (left!42852 ys!41)) 1 (cheight!15799 (left!42852 ys!41)))))))

(assert (=> b!5086207 d!1646263))

(declare-fun d!1646265 () Bool)

(assert (=> d!1646265 (= (height!2165 (right!43182 ys!41)) (ite ((_ is Empty!15588) (right!43182 ys!41)) 0 (ite ((_ is Leaf!25887) (right!43182 ys!41)) 1 (cheight!15799 (right!43182 ys!41)))))))

(assert (=> b!5086207 d!1646265))

(declare-fun d!1646267 () Bool)

(declare-fun c!873936 () Bool)

(assert (=> d!1646267 (= c!873936 ((_ is Node!15588) (left!42852 (right!43182 xs!286))))))

(declare-fun e!3172258 () Bool)

(assert (=> d!1646267 (= (inv!77687 (left!42852 (right!43182 xs!286))) e!3172258)))

(declare-fun b!5086322 () Bool)

(assert (=> b!5086322 (= e!3172258 (inv!77689 (left!42852 (right!43182 xs!286))))))

(declare-fun b!5086323 () Bool)

(declare-fun e!3172259 () Bool)

(assert (=> b!5086323 (= e!3172258 e!3172259)))

(declare-fun res!2165292 () Bool)

(assert (=> b!5086323 (= res!2165292 (not ((_ is Leaf!25887) (left!42852 (right!43182 xs!286)))))))

(assert (=> b!5086323 (=> res!2165292 e!3172259)))

(declare-fun b!5086324 () Bool)

(assert (=> b!5086324 (= e!3172259 (inv!77690 (left!42852 (right!43182 xs!286))))))

(assert (= (and d!1646267 c!873936) b!5086322))

(assert (= (and d!1646267 (not c!873936)) b!5086323))

(assert (= (and b!5086323 (not res!2165292)) b!5086324))

(declare-fun m!6143514 () Bool)

(assert (=> b!5086322 m!6143514))

(declare-fun m!6143516 () Bool)

(assert (=> b!5086324 m!6143516))

(assert (=> b!5086250 d!1646267))

(declare-fun d!1646269 () Bool)

(declare-fun c!873937 () Bool)

(assert (=> d!1646269 (= c!873937 ((_ is Node!15588) (right!43182 (right!43182 xs!286))))))

(declare-fun e!3172260 () Bool)

(assert (=> d!1646269 (= (inv!77687 (right!43182 (right!43182 xs!286))) e!3172260)))

(declare-fun b!5086325 () Bool)

(assert (=> b!5086325 (= e!3172260 (inv!77689 (right!43182 (right!43182 xs!286))))))

(declare-fun b!5086326 () Bool)

(declare-fun e!3172261 () Bool)

(assert (=> b!5086326 (= e!3172260 e!3172261)))

(declare-fun res!2165293 () Bool)

(assert (=> b!5086326 (= res!2165293 (not ((_ is Leaf!25887) (right!43182 (right!43182 xs!286)))))))

(assert (=> b!5086326 (=> res!2165293 e!3172261)))

(declare-fun b!5086327 () Bool)

(assert (=> b!5086327 (= e!3172261 (inv!77690 (right!43182 (right!43182 xs!286))))))

(assert (= (and d!1646269 c!873937) b!5086325))

(assert (= (and d!1646269 (not c!873937)) b!5086326))

(assert (= (and b!5086326 (not res!2165293)) b!5086327))

(declare-fun m!6143518 () Bool)

(assert (=> b!5086325 m!6143518))

(declare-fun m!6143520 () Bool)

(assert (=> b!5086327 m!6143520))

(assert (=> b!5086250 d!1646269))

(assert (=> b!5086129 d!1646183))

(assert (=> b!5086129 d!1646187))

(declare-fun d!1646271 () Bool)

(declare-fun res!2165296 () Bool)

(declare-fun e!3172262 () Bool)

(assert (=> d!1646271 (=> res!2165296 e!3172262)))

(assert (=> d!1646271 (= res!2165296 (not ((_ is Node!15588) (right!43182 ys!41))))))

(assert (=> d!1646271 (= (isBalanced!4450 (right!43182 ys!41)) e!3172262)))

(declare-fun b!5086328 () Bool)

(declare-fun e!3172263 () Bool)

(assert (=> b!5086328 (= e!3172262 e!3172263)))

(declare-fun res!2165297 () Bool)

(assert (=> b!5086328 (=> (not res!2165297) (not e!3172263))))

(assert (=> b!5086328 (= res!2165297 (<= (- 1) (- (height!2165 (left!42852 (right!43182 ys!41))) (height!2165 (right!43182 (right!43182 ys!41))))))))

(declare-fun b!5086329 () Bool)

(declare-fun res!2165298 () Bool)

(assert (=> b!5086329 (=> (not res!2165298) (not e!3172263))))

(assert (=> b!5086329 (= res!2165298 (isBalanced!4450 (right!43182 (right!43182 ys!41))))))

(declare-fun b!5086330 () Bool)

(declare-fun res!2165295 () Bool)

(assert (=> b!5086330 (=> (not res!2165295) (not e!3172263))))

(assert (=> b!5086330 (= res!2165295 (<= (- (height!2165 (left!42852 (right!43182 ys!41))) (height!2165 (right!43182 (right!43182 ys!41)))) 1))))

(declare-fun b!5086331 () Bool)

(assert (=> b!5086331 (= e!3172263 (not (isEmpty!31679 (right!43182 (right!43182 ys!41)))))))

(declare-fun b!5086332 () Bool)

(declare-fun res!2165294 () Bool)

(assert (=> b!5086332 (=> (not res!2165294) (not e!3172263))))

(assert (=> b!5086332 (= res!2165294 (not (isEmpty!31679 (left!42852 (right!43182 ys!41)))))))

(declare-fun b!5086333 () Bool)

(declare-fun res!2165299 () Bool)

(assert (=> b!5086333 (=> (not res!2165299) (not e!3172263))))

(assert (=> b!5086333 (= res!2165299 (isBalanced!4450 (left!42852 (right!43182 ys!41))))))

(assert (= (and d!1646271 (not res!2165296)) b!5086328))

(assert (= (and b!5086328 res!2165297) b!5086330))

(assert (= (and b!5086330 res!2165295) b!5086333))

(assert (= (and b!5086333 res!2165299) b!5086329))

(assert (= (and b!5086329 res!2165298) b!5086332))

(assert (= (and b!5086332 res!2165294) b!5086331))

(declare-fun m!6143522 () Bool)

(assert (=> b!5086328 m!6143522))

(declare-fun m!6143524 () Bool)

(assert (=> b!5086328 m!6143524))

(declare-fun m!6143526 () Bool)

(assert (=> b!5086329 m!6143526))

(declare-fun m!6143528 () Bool)

(assert (=> b!5086331 m!6143528))

(declare-fun m!6143530 () Bool)

(assert (=> b!5086332 m!6143530))

(assert (=> b!5086330 m!6143522))

(assert (=> b!5086330 m!6143524))

(declare-fun m!6143532 () Bool)

(assert (=> b!5086333 m!6143532))

(assert (=> b!5086206 d!1646271))

(declare-fun d!1646273 () Bool)

(declare-fun res!2165300 () Bool)

(declare-fun e!3172264 () Bool)

(assert (=> d!1646273 (=> (not res!2165300) (not e!3172264))))

(assert (=> d!1646273 (= res!2165300 (<= (size!39122 (list!19037 (xs!18968 (left!42852 ys!41)))) 512))))

(assert (=> d!1646273 (= (inv!77690 (left!42852 ys!41)) e!3172264)))

(declare-fun b!5086334 () Bool)

(declare-fun res!2165301 () Bool)

(assert (=> b!5086334 (=> (not res!2165301) (not e!3172264))))

(assert (=> b!5086334 (= res!2165301 (= (csize!31407 (left!42852 ys!41)) (size!39122 (list!19037 (xs!18968 (left!42852 ys!41))))))))

(declare-fun b!5086335 () Bool)

(assert (=> b!5086335 (= e!3172264 (and (> (csize!31407 (left!42852 ys!41)) 0) (<= (csize!31407 (left!42852 ys!41)) 512)))))

(assert (= (and d!1646273 res!2165300) b!5086334))

(assert (= (and b!5086334 res!2165301) b!5086335))

(declare-fun m!6143534 () Bool)

(assert (=> d!1646273 m!6143534))

(assert (=> d!1646273 m!6143534))

(declare-fun m!6143536 () Bool)

(assert (=> d!1646273 m!6143536))

(assert (=> b!5086334 m!6143534))

(assert (=> b!5086334 m!6143534))

(assert (=> b!5086334 m!6143536))

(assert (=> b!5086156 d!1646273))

(assert (=> b!5086205 d!1646263))

(assert (=> b!5086205 d!1646265))

(declare-fun d!1646275 () Bool)

(declare-fun res!2165302 () Bool)

(declare-fun e!3172265 () Bool)

(assert (=> d!1646275 (=> (not res!2165302) (not e!3172265))))

(assert (=> d!1646275 (= res!2165302 (= (csize!31406 (left!42852 ys!41)) (+ (size!39124 (left!42852 (left!42852 ys!41))) (size!39124 (right!43182 (left!42852 ys!41))))))))

(assert (=> d!1646275 (= (inv!77689 (left!42852 ys!41)) e!3172265)))

(declare-fun b!5086336 () Bool)

(declare-fun res!2165303 () Bool)

(assert (=> b!5086336 (=> (not res!2165303) (not e!3172265))))

(assert (=> b!5086336 (= res!2165303 (and (not (= (left!42852 (left!42852 ys!41)) Empty!15588)) (not (= (right!43182 (left!42852 ys!41)) Empty!15588))))))

(declare-fun b!5086337 () Bool)

(declare-fun res!2165304 () Bool)

(assert (=> b!5086337 (=> (not res!2165304) (not e!3172265))))

(assert (=> b!5086337 (= res!2165304 (= (cheight!15799 (left!42852 ys!41)) (+ (max!0 (height!2165 (left!42852 (left!42852 ys!41))) (height!2165 (right!43182 (left!42852 ys!41)))) 1)))))

(declare-fun b!5086338 () Bool)

(assert (=> b!5086338 (= e!3172265 (<= 0 (cheight!15799 (left!42852 ys!41))))))

(assert (= (and d!1646275 res!2165302) b!5086336))

(assert (= (and b!5086336 res!2165303) b!5086337))

(assert (= (and b!5086337 res!2165304) b!5086338))

(declare-fun m!6143538 () Bool)

(assert (=> d!1646275 m!6143538))

(declare-fun m!6143540 () Bool)

(assert (=> d!1646275 m!6143540))

(assert (=> b!5086337 m!6143476))

(assert (=> b!5086337 m!6143478))

(assert (=> b!5086337 m!6143476))

(assert (=> b!5086337 m!6143478))

(declare-fun m!6143542 () Bool)

(assert (=> b!5086337 m!6143542))

(assert (=> b!5086154 d!1646275))

(declare-fun d!1646277 () Bool)

(declare-fun res!2165305 () Bool)

(declare-fun e!3172266 () Bool)

(assert (=> d!1646277 (=> (not res!2165305) (not e!3172266))))

(assert (=> d!1646277 (= res!2165305 (<= (size!39122 (list!19037 (xs!18968 ys!41))) 512))))

(assert (=> d!1646277 (= (inv!77690 ys!41) e!3172266)))

(declare-fun b!5086339 () Bool)

(declare-fun res!2165306 () Bool)

(assert (=> b!5086339 (=> (not res!2165306) (not e!3172266))))

(assert (=> b!5086339 (= res!2165306 (= (csize!31407 ys!41) (size!39122 (list!19037 (xs!18968 ys!41)))))))

(declare-fun b!5086340 () Bool)

(assert (=> b!5086340 (= e!3172266 (and (> (csize!31407 ys!41) 0) (<= (csize!31407 ys!41) 512)))))

(assert (= (and d!1646277 res!2165305) b!5086339))

(assert (= (and b!5086339 res!2165306) b!5086340))

(declare-fun m!6143544 () Bool)

(assert (=> d!1646277 m!6143544))

(assert (=> d!1646277 m!6143544))

(declare-fun m!6143546 () Bool)

(assert (=> d!1646277 m!6143546))

(assert (=> b!5086339 m!6143544))

(assert (=> b!5086339 m!6143544))

(assert (=> b!5086339 m!6143546))

(assert (=> b!5086204 d!1646277))

(declare-fun d!1646279 () Bool)

(declare-fun res!2165307 () Bool)

(declare-fun e!3172267 () Bool)

(assert (=> d!1646279 (=> (not res!2165307) (not e!3172267))))

(assert (=> d!1646279 (= res!2165307 (<= (size!39122 (list!19037 (xs!18968 (right!43182 ys!41)))) 512))))

(assert (=> d!1646279 (= (inv!77690 (right!43182 ys!41)) e!3172267)))

(declare-fun b!5086341 () Bool)

(declare-fun res!2165308 () Bool)

(assert (=> b!5086341 (=> (not res!2165308) (not e!3172267))))

(assert (=> b!5086341 (= res!2165308 (= (csize!31407 (right!43182 ys!41)) (size!39122 (list!19037 (xs!18968 (right!43182 ys!41))))))))

(declare-fun b!5086342 () Bool)

(assert (=> b!5086342 (= e!3172267 (and (> (csize!31407 (right!43182 ys!41)) 0) (<= (csize!31407 (right!43182 ys!41)) 512)))))

(assert (= (and d!1646279 res!2165307) b!5086341))

(assert (= (and b!5086341 res!2165308) b!5086342))

(declare-fun m!6143548 () Bool)

(assert (=> d!1646279 m!6143548))

(assert (=> d!1646279 m!6143548))

(declare-fun m!6143550 () Bool)

(assert (=> d!1646279 m!6143550))

(assert (=> b!5086341 m!6143548))

(assert (=> b!5086341 m!6143548))

(assert (=> b!5086341 m!6143550))

(assert (=> b!5086159 d!1646279))

(declare-fun d!1646281 () Bool)

(assert (=> d!1646281 (= (inv!77688 (xs!18968 (right!43182 ys!41))) (<= (size!39122 (innerList!15676 (xs!18968 (right!43182 ys!41)))) 2147483647))))

(declare-fun bs!1190951 () Bool)

(assert (= bs!1190951 d!1646281))

(declare-fun m!6143552 () Bool)

(assert (=> bs!1190951 m!6143552))

(assert (=> b!5086260 d!1646281))

(declare-fun d!1646283 () Bool)

(declare-fun res!2165309 () Bool)

(declare-fun e!3172268 () Bool)

(assert (=> d!1646283 (=> (not res!2165309) (not e!3172268))))

(assert (=> d!1646283 (= res!2165309 (= (csize!31406 (right!43182 ys!41)) (+ (size!39124 (left!42852 (right!43182 ys!41))) (size!39124 (right!43182 (right!43182 ys!41))))))))

(assert (=> d!1646283 (= (inv!77689 (right!43182 ys!41)) e!3172268)))

(declare-fun b!5086343 () Bool)

(declare-fun res!2165310 () Bool)

(assert (=> b!5086343 (=> (not res!2165310) (not e!3172268))))

(assert (=> b!5086343 (= res!2165310 (and (not (= (left!42852 (right!43182 ys!41)) Empty!15588)) (not (= (right!43182 (right!43182 ys!41)) Empty!15588))))))

(declare-fun b!5086344 () Bool)

(declare-fun res!2165311 () Bool)

(assert (=> b!5086344 (=> (not res!2165311) (not e!3172268))))

(assert (=> b!5086344 (= res!2165311 (= (cheight!15799 (right!43182 ys!41)) (+ (max!0 (height!2165 (left!42852 (right!43182 ys!41))) (height!2165 (right!43182 (right!43182 ys!41)))) 1)))))

(declare-fun b!5086345 () Bool)

(assert (=> b!5086345 (= e!3172268 (<= 0 (cheight!15799 (right!43182 ys!41))))))

(assert (= (and d!1646283 res!2165309) b!5086343))

(assert (= (and b!5086343 res!2165310) b!5086344))

(assert (= (and b!5086344 res!2165311) b!5086345))

(declare-fun m!6143554 () Bool)

(assert (=> d!1646283 m!6143554))

(declare-fun m!6143556 () Bool)

(assert (=> d!1646283 m!6143556))

(assert (=> b!5086344 m!6143522))

(assert (=> b!5086344 m!6143524))

(assert (=> b!5086344 m!6143522))

(assert (=> b!5086344 m!6143524))

(declare-fun m!6143558 () Bool)

(assert (=> b!5086344 m!6143558))

(assert (=> b!5086157 d!1646283))

(declare-fun d!1646285 () Bool)

(declare-fun res!2165312 () Bool)

(declare-fun e!3172269 () Bool)

(assert (=> d!1646285 (=> (not res!2165312) (not e!3172269))))

(assert (=> d!1646285 (= res!2165312 (<= (size!39122 (list!19037 (xs!18968 (right!43182 xs!286)))) 512))))

(assert (=> d!1646285 (= (inv!77690 (right!43182 xs!286)) e!3172269)))

(declare-fun b!5086346 () Bool)

(declare-fun res!2165313 () Bool)

(assert (=> b!5086346 (=> (not res!2165313) (not e!3172269))))

(assert (=> b!5086346 (= res!2165313 (= (csize!31407 (right!43182 xs!286)) (size!39122 (list!19037 (xs!18968 (right!43182 xs!286))))))))

(declare-fun b!5086347 () Bool)

(assert (=> b!5086347 (= e!3172269 (and (> (csize!31407 (right!43182 xs!286)) 0) (<= (csize!31407 (right!43182 xs!286)) 512)))))

(assert (= (and d!1646285 res!2165312) b!5086346))

(assert (= (and b!5086346 res!2165313) b!5086347))

(declare-fun m!6143560 () Bool)

(assert (=> d!1646285 m!6143560))

(assert (=> d!1646285 m!6143560))

(declare-fun m!6143562 () Bool)

(assert (=> d!1646285 m!6143562))

(assert (=> b!5086346 m!6143560))

(assert (=> b!5086346 m!6143560))

(assert (=> b!5086346 m!6143562))

(assert (=> b!5086145 d!1646285))

(declare-fun d!1646287 () Bool)

(assert (=> d!1646287 (= (inv!77688 (xs!18968 (left!42852 ys!41))) (<= (size!39122 (innerList!15676 (xs!18968 (left!42852 ys!41)))) 2147483647))))

(declare-fun bs!1190952 () Bool)

(assert (= bs!1190952 d!1646287))

(declare-fun m!6143564 () Bool)

(assert (=> bs!1190952 m!6143564))

(assert (=> b!5086254 d!1646287))

(declare-fun d!1646289 () Bool)

(declare-fun c!873938 () Bool)

(assert (=> d!1646289 (= c!873938 ((_ is Node!15588) (left!42852 (right!43182 ys!41))))))

(declare-fun e!3172270 () Bool)

(assert (=> d!1646289 (= (inv!77687 (left!42852 (right!43182 ys!41))) e!3172270)))

(declare-fun b!5086348 () Bool)

(assert (=> b!5086348 (= e!3172270 (inv!77689 (left!42852 (right!43182 ys!41))))))

(declare-fun b!5086349 () Bool)

(declare-fun e!3172271 () Bool)

(assert (=> b!5086349 (= e!3172270 e!3172271)))

(declare-fun res!2165314 () Bool)

(assert (=> b!5086349 (= res!2165314 (not ((_ is Leaf!25887) (left!42852 (right!43182 ys!41)))))))

(assert (=> b!5086349 (=> res!2165314 e!3172271)))

(declare-fun b!5086350 () Bool)

(assert (=> b!5086350 (= e!3172271 (inv!77690 (left!42852 (right!43182 ys!41))))))

(assert (= (and d!1646289 c!873938) b!5086348))

(assert (= (and d!1646289 (not c!873938)) b!5086349))

(assert (= (and b!5086349 (not res!2165314)) b!5086350))

(declare-fun m!6143566 () Bool)

(assert (=> b!5086348 m!6143566))

(declare-fun m!6143568 () Bool)

(assert (=> b!5086350 m!6143568))

(assert (=> b!5086259 d!1646289))

(declare-fun d!1646291 () Bool)

(declare-fun c!873939 () Bool)

(assert (=> d!1646291 (= c!873939 ((_ is Node!15588) (right!43182 (right!43182 ys!41))))))

(declare-fun e!3172272 () Bool)

(assert (=> d!1646291 (= (inv!77687 (right!43182 (right!43182 ys!41))) e!3172272)))

(declare-fun b!5086351 () Bool)

(assert (=> b!5086351 (= e!3172272 (inv!77689 (right!43182 (right!43182 ys!41))))))

(declare-fun b!5086352 () Bool)

(declare-fun e!3172273 () Bool)

(assert (=> b!5086352 (= e!3172272 e!3172273)))

(declare-fun res!2165315 () Bool)

(assert (=> b!5086352 (= res!2165315 (not ((_ is Leaf!25887) (right!43182 (right!43182 ys!41)))))))

(assert (=> b!5086352 (=> res!2165315 e!3172273)))

(declare-fun b!5086353 () Bool)

(assert (=> b!5086353 (= e!3172273 (inv!77690 (right!43182 (right!43182 ys!41))))))

(assert (= (and d!1646291 c!873939) b!5086351))

(assert (= (and d!1646291 (not c!873939)) b!5086352))

(assert (= (and b!5086352 (not res!2165315)) b!5086353))

(declare-fun m!6143570 () Bool)

(assert (=> b!5086351 m!6143570))

(declare-fun m!6143572 () Bool)

(assert (=> b!5086353 m!6143572))

(assert (=> b!5086259 d!1646291))

(declare-fun d!1646293 () Bool)

(declare-fun c!873940 () Bool)

(assert (=> d!1646293 (= c!873940 ((_ is Node!15588) (left!42852 (left!42852 ys!41))))))

(declare-fun e!3172274 () Bool)

(assert (=> d!1646293 (= (inv!77687 (left!42852 (left!42852 ys!41))) e!3172274)))

(declare-fun b!5086354 () Bool)

(assert (=> b!5086354 (= e!3172274 (inv!77689 (left!42852 (left!42852 ys!41))))))

(declare-fun b!5086355 () Bool)

(declare-fun e!3172275 () Bool)

(assert (=> b!5086355 (= e!3172274 e!3172275)))

(declare-fun res!2165316 () Bool)

(assert (=> b!5086355 (= res!2165316 (not ((_ is Leaf!25887) (left!42852 (left!42852 ys!41)))))))

(assert (=> b!5086355 (=> res!2165316 e!3172275)))

(declare-fun b!5086356 () Bool)

(assert (=> b!5086356 (= e!3172275 (inv!77690 (left!42852 (left!42852 ys!41))))))

(assert (= (and d!1646293 c!873940) b!5086354))

(assert (= (and d!1646293 (not c!873940)) b!5086355))

(assert (= (and b!5086355 (not res!2165316)) b!5086356))

(declare-fun m!6143574 () Bool)

(assert (=> b!5086354 m!6143574))

(declare-fun m!6143576 () Bool)

(assert (=> b!5086356 m!6143576))

(assert (=> b!5086253 d!1646293))

(declare-fun d!1646295 () Bool)

(declare-fun c!873941 () Bool)

(assert (=> d!1646295 (= c!873941 ((_ is Node!15588) (right!43182 (left!42852 ys!41))))))

(declare-fun e!3172276 () Bool)

(assert (=> d!1646295 (= (inv!77687 (right!43182 (left!42852 ys!41))) e!3172276)))

(declare-fun b!5086357 () Bool)

(assert (=> b!5086357 (= e!3172276 (inv!77689 (right!43182 (left!42852 ys!41))))))

(declare-fun b!5086358 () Bool)

(declare-fun e!3172277 () Bool)

(assert (=> b!5086358 (= e!3172276 e!3172277)))

(declare-fun res!2165317 () Bool)

(assert (=> b!5086358 (= res!2165317 (not ((_ is Leaf!25887) (right!43182 (left!42852 ys!41)))))))

(assert (=> b!5086358 (=> res!2165317 e!3172277)))

(declare-fun b!5086359 () Bool)

(assert (=> b!5086359 (= e!3172277 (inv!77690 (right!43182 (left!42852 ys!41))))))

(assert (= (and d!1646295 c!873941) b!5086357))

(assert (= (and d!1646295 (not c!873941)) b!5086358))

(assert (= (and b!5086358 (not res!2165317)) b!5086359))

(declare-fun m!6143578 () Bool)

(assert (=> b!5086357 m!6143578))

(declare-fun m!6143580 () Bool)

(assert (=> b!5086359 m!6143580))

(assert (=> b!5086253 d!1646295))

(assert (=> b!5086122 d!1646193))

(assert (=> b!5086122 d!1646197))

(declare-fun d!1646297 () Bool)

(declare-fun res!2165318 () Bool)

(declare-fun e!3172278 () Bool)

(assert (=> d!1646297 (=> (not res!2165318) (not e!3172278))))

(assert (=> d!1646297 (= res!2165318 (= (csize!31406 ys!41) (+ (size!39124 (left!42852 ys!41)) (size!39124 (right!43182 ys!41)))))))

(assert (=> d!1646297 (= (inv!77689 ys!41) e!3172278)))

(declare-fun b!5086360 () Bool)

(declare-fun res!2165319 () Bool)

(assert (=> b!5086360 (=> (not res!2165319) (not e!3172278))))

(assert (=> b!5086360 (= res!2165319 (and (not (= (left!42852 ys!41) Empty!15588)) (not (= (right!43182 ys!41) Empty!15588))))))

(declare-fun b!5086361 () Bool)

(declare-fun res!2165320 () Bool)

(assert (=> b!5086361 (=> (not res!2165320) (not e!3172278))))

(assert (=> b!5086361 (= res!2165320 (= (cheight!15799 ys!41) (+ (max!0 (height!2165 (left!42852 ys!41)) (height!2165 (right!43182 ys!41))) 1)))))

(declare-fun b!5086362 () Bool)

(assert (=> b!5086362 (= e!3172278 (<= 0 (cheight!15799 ys!41)))))

(assert (= (and d!1646297 res!2165318) b!5086360))

(assert (= (and b!5086360 res!2165319) b!5086361))

(assert (= (and b!5086361 res!2165320) b!5086362))

(assert (=> d!1646297 m!6143500))

(assert (=> d!1646297 m!6143510))

(assert (=> b!5086361 m!6143356))

(assert (=> b!5086361 m!6143358))

(assert (=> b!5086361 m!6143356))

(assert (=> b!5086361 m!6143358))

(declare-fun m!6143582 () Bool)

(assert (=> b!5086361 m!6143582))

(assert (=> b!5086200 d!1646297))

(declare-fun d!1646299 () Bool)

(declare-fun res!2165321 () Bool)

(declare-fun e!3172279 () Bool)

(assert (=> d!1646299 (=> (not res!2165321) (not e!3172279))))

(assert (=> d!1646299 (= res!2165321 (= (csize!31406 (right!43182 xs!286)) (+ (size!39124 (left!42852 (right!43182 xs!286))) (size!39124 (right!43182 (right!43182 xs!286))))))))

(assert (=> d!1646299 (= (inv!77689 (right!43182 xs!286)) e!3172279)))

(declare-fun b!5086363 () Bool)

(declare-fun res!2165322 () Bool)

(assert (=> b!5086363 (=> (not res!2165322) (not e!3172279))))

(assert (=> b!5086363 (= res!2165322 (and (not (= (left!42852 (right!43182 xs!286)) Empty!15588)) (not (= (right!43182 (right!43182 xs!286)) Empty!15588))))))

(declare-fun b!5086364 () Bool)

(declare-fun res!2165323 () Bool)

(assert (=> b!5086364 (=> (not res!2165323) (not e!3172279))))

(assert (=> b!5086364 (= res!2165323 (= (cheight!15799 (right!43182 xs!286)) (+ (max!0 (height!2165 (left!42852 (right!43182 xs!286))) (height!2165 (right!43182 (right!43182 xs!286)))) 1)))))

(declare-fun b!5086365 () Bool)

(assert (=> b!5086365 (= e!3172279 (<= 0 (cheight!15799 (right!43182 xs!286))))))

(assert (= (and d!1646299 res!2165321) b!5086363))

(assert (= (and b!5086363 res!2165322) b!5086364))

(assert (= (and b!5086364 res!2165323) b!5086365))

(declare-fun m!6143584 () Bool)

(assert (=> d!1646299 m!6143584))

(declare-fun m!6143586 () Bool)

(assert (=> d!1646299 m!6143586))

(assert (=> b!5086364 m!6143454))

(assert (=> b!5086364 m!6143456))

(assert (=> b!5086364 m!6143454))

(assert (=> b!5086364 m!6143456))

(declare-fun m!6143588 () Bool)

(assert (=> b!5086364 m!6143588))

(assert (=> b!5086143 d!1646299))

(declare-fun d!1646301 () Bool)

(declare-fun res!2165326 () Bool)

(declare-fun e!3172280 () Bool)

(assert (=> d!1646301 (=> res!2165326 e!3172280)))

(assert (=> d!1646301 (= res!2165326 (not ((_ is Node!15588) (left!42852 xs!286))))))

(assert (=> d!1646301 (= (isBalanced!4450 (left!42852 xs!286)) e!3172280)))

(declare-fun b!5086366 () Bool)

(declare-fun e!3172281 () Bool)

(assert (=> b!5086366 (= e!3172280 e!3172281)))

(declare-fun res!2165327 () Bool)

(assert (=> b!5086366 (=> (not res!2165327) (not e!3172281))))

(assert (=> b!5086366 (= res!2165327 (<= (- 1) (- (height!2165 (left!42852 (left!42852 xs!286))) (height!2165 (right!43182 (left!42852 xs!286))))))))

(declare-fun b!5086367 () Bool)

(declare-fun res!2165328 () Bool)

(assert (=> b!5086367 (=> (not res!2165328) (not e!3172281))))

(assert (=> b!5086367 (= res!2165328 (isBalanced!4450 (right!43182 (left!42852 xs!286))))))

(declare-fun b!5086368 () Bool)

(declare-fun res!2165325 () Bool)

(assert (=> b!5086368 (=> (not res!2165325) (not e!3172281))))

(assert (=> b!5086368 (= res!2165325 (<= (- (height!2165 (left!42852 (left!42852 xs!286))) (height!2165 (right!43182 (left!42852 xs!286)))) 1))))

(declare-fun b!5086369 () Bool)

(assert (=> b!5086369 (= e!3172281 (not (isEmpty!31679 (right!43182 (left!42852 xs!286)))))))

(declare-fun b!5086370 () Bool)

(declare-fun res!2165324 () Bool)

(assert (=> b!5086370 (=> (not res!2165324) (not e!3172281))))

(assert (=> b!5086370 (= res!2165324 (not (isEmpty!31679 (left!42852 (left!42852 xs!286)))))))

(declare-fun b!5086371 () Bool)

(declare-fun res!2165329 () Bool)

(assert (=> b!5086371 (=> (not res!2165329) (not e!3172281))))

(assert (=> b!5086371 (= res!2165329 (isBalanced!4450 (left!42852 (left!42852 xs!286))))))

(assert (= (and d!1646301 (not res!2165326)) b!5086366))

(assert (= (and b!5086366 res!2165327) b!5086368))

(assert (= (and b!5086368 res!2165325) b!5086371))

(assert (= (and b!5086371 res!2165329) b!5086367))

(assert (= (and b!5086367 res!2165328) b!5086370))

(assert (= (and b!5086370 res!2165324) b!5086369))

(assert (=> b!5086366 m!6143448))

(assert (=> b!5086366 m!6143450))

(declare-fun m!6143590 () Bool)

(assert (=> b!5086367 m!6143590))

(declare-fun m!6143592 () Bool)

(assert (=> b!5086369 m!6143592))

(declare-fun m!6143594 () Bool)

(assert (=> b!5086370 m!6143594))

(assert (=> b!5086368 m!6143448))

(assert (=> b!5086368 m!6143450))

(declare-fun m!6143596 () Bool)

(assert (=> b!5086371 m!6143596))

(assert (=> b!5086189 d!1646301))

(declare-fun d!1646305 () Bool)

(declare-fun res!2165330 () Bool)

(declare-fun e!3172282 () Bool)

(assert (=> d!1646305 (=> (not res!2165330) (not e!3172282))))

(assert (=> d!1646305 (= res!2165330 (<= (size!39122 (list!19037 (xs!18968 (left!42852 xs!286)))) 512))))

(assert (=> d!1646305 (= (inv!77690 (left!42852 xs!286)) e!3172282)))

(declare-fun b!5086372 () Bool)

(declare-fun res!2165331 () Bool)

(assert (=> b!5086372 (=> (not res!2165331) (not e!3172282))))

(assert (=> b!5086372 (= res!2165331 (= (csize!31407 (left!42852 xs!286)) (size!39122 (list!19037 (xs!18968 (left!42852 xs!286))))))))

(declare-fun b!5086373 () Bool)

(assert (=> b!5086373 (= e!3172282 (and (> (csize!31407 (left!42852 xs!286)) 0) (<= (csize!31407 (left!42852 xs!286)) 512)))))

(assert (= (and d!1646305 res!2165330) b!5086372))

(assert (= (and b!5086372 res!2165331) b!5086373))

(declare-fun m!6143598 () Bool)

(assert (=> d!1646305 m!6143598))

(assert (=> d!1646305 m!6143598))

(declare-fun m!6143600 () Bool)

(assert (=> d!1646305 m!6143600))

(assert (=> b!5086372 m!6143598))

(assert (=> b!5086372 m!6143598))

(assert (=> b!5086372 m!6143600))

(assert (=> b!5086138 d!1646305))

(declare-fun d!1646307 () Bool)

(declare-fun lt!2091693 () Bool)

(assert (=> d!1646307 (= lt!2091693 (isEmpty!31680 (list!19036 (left!42852 xs!286))))))

(assert (=> d!1646307 (= lt!2091693 (= (size!39124 (left!42852 xs!286)) 0))))

(assert (=> d!1646307 (= (isEmpty!31679 (left!42852 xs!286)) lt!2091693)))

(declare-fun bs!1190953 () Bool)

(assert (= bs!1190953 d!1646307))

(declare-fun m!6143602 () Bool)

(assert (=> bs!1190953 m!6143602))

(assert (=> bs!1190953 m!6143602))

(declare-fun m!6143604 () Bool)

(assert (=> bs!1190953 m!6143604))

(assert (=> bs!1190953 m!6143502))

(assert (=> b!5086188 d!1646307))

(declare-fun b!5086374 () Bool)

(declare-fun e!3172283 () Bool)

(declare-fun tp!1418004 () Bool)

(assert (=> b!5086374 (= e!3172283 (and tp_is_empty!37097 tp!1418004))))

(assert (=> b!5086255 (= tp!1417982 e!3172283)))

(assert (= (and b!5086255 ((_ is Cons!58458) (innerList!15676 (xs!18968 (left!42852 ys!41))))) b!5086374))

(declare-fun tp!1418005 () Bool)

(declare-fun b!5086375 () Bool)

(declare-fun e!3172284 () Bool)

(declare-fun tp!1418007 () Bool)

(assert (=> b!5086375 (= e!3172284 (and (inv!77687 (left!42852 (left!42852 (right!43182 xs!286)))) tp!1418005 (inv!77687 (right!43182 (left!42852 (right!43182 xs!286)))) tp!1418007))))

(declare-fun b!5086377 () Bool)

(declare-fun e!3172285 () Bool)

(declare-fun tp!1418006 () Bool)

(assert (=> b!5086377 (= e!3172285 tp!1418006)))

(declare-fun b!5086376 () Bool)

(assert (=> b!5086376 (= e!3172284 (and (inv!77688 (xs!18968 (left!42852 (right!43182 xs!286)))) e!3172285))))

(assert (=> b!5086250 (= tp!1417978 (and (inv!77687 (left!42852 (right!43182 xs!286))) e!3172284))))

(assert (= (and b!5086250 ((_ is Node!15588) (left!42852 (right!43182 xs!286)))) b!5086375))

(assert (= b!5086376 b!5086377))

(assert (= (and b!5086250 ((_ is Leaf!25887) (left!42852 (right!43182 xs!286)))) b!5086376))

(declare-fun m!6143606 () Bool)

(assert (=> b!5086375 m!6143606))

(declare-fun m!6143608 () Bool)

(assert (=> b!5086375 m!6143608))

(declare-fun m!6143610 () Bool)

(assert (=> b!5086376 m!6143610))

(assert (=> b!5086250 m!6143396))

(declare-fun b!5086378 () Bool)

(declare-fun e!3172286 () Bool)

(declare-fun tp!1418010 () Bool)

(declare-fun tp!1418008 () Bool)

(assert (=> b!5086378 (= e!3172286 (and (inv!77687 (left!42852 (right!43182 (right!43182 xs!286)))) tp!1418008 (inv!77687 (right!43182 (right!43182 (right!43182 xs!286)))) tp!1418010))))

(declare-fun b!5086380 () Bool)

(declare-fun e!3172287 () Bool)

(declare-fun tp!1418009 () Bool)

(assert (=> b!5086380 (= e!3172287 tp!1418009)))

(declare-fun b!5086379 () Bool)

(assert (=> b!5086379 (= e!3172286 (and (inv!77688 (xs!18968 (right!43182 (right!43182 xs!286)))) e!3172287))))

(assert (=> b!5086250 (= tp!1417980 (and (inv!77687 (right!43182 (right!43182 xs!286))) e!3172286))))

(assert (= (and b!5086250 ((_ is Node!15588) (right!43182 (right!43182 xs!286)))) b!5086378))

(assert (= b!5086379 b!5086380))

(assert (= (and b!5086250 ((_ is Leaf!25887) (right!43182 (right!43182 xs!286)))) b!5086379))

(declare-fun m!6143612 () Bool)

(assert (=> b!5086378 m!6143612))

(declare-fun m!6143614 () Bool)

(assert (=> b!5086378 m!6143614))

(declare-fun m!6143616 () Bool)

(assert (=> b!5086379 m!6143616))

(assert (=> b!5086250 m!6143398))

(declare-fun b!5086381 () Bool)

(declare-fun e!3172288 () Bool)

(declare-fun tp!1418011 () Bool)

(assert (=> b!5086381 (= e!3172288 (and tp_is_empty!37097 tp!1418011))))

(assert (=> b!5086224 (= tp!1417962 e!3172288)))

(assert (= (and b!5086224 ((_ is Cons!58458) (t!371429 (innerList!15676 (xs!18968 ys!41))))) b!5086381))

(declare-fun e!3172289 () Bool)

(declare-fun tp!1418014 () Bool)

(declare-fun tp!1418012 () Bool)

(declare-fun b!5086382 () Bool)

(assert (=> b!5086382 (= e!3172289 (and (inv!77687 (left!42852 (left!42852 (right!43182 ys!41)))) tp!1418012 (inv!77687 (right!43182 (left!42852 (right!43182 ys!41)))) tp!1418014))))

(declare-fun b!5086384 () Bool)

(declare-fun e!3172290 () Bool)

(declare-fun tp!1418013 () Bool)

(assert (=> b!5086384 (= e!3172290 tp!1418013)))

(declare-fun b!5086383 () Bool)

(assert (=> b!5086383 (= e!3172289 (and (inv!77688 (xs!18968 (left!42852 (right!43182 ys!41)))) e!3172290))))

(assert (=> b!5086259 (= tp!1417987 (and (inv!77687 (left!42852 (right!43182 ys!41))) e!3172289))))

(assert (= (and b!5086259 ((_ is Node!15588) (left!42852 (right!43182 ys!41)))) b!5086382))

(assert (= b!5086383 b!5086384))

(assert (= (and b!5086259 ((_ is Leaf!25887) (left!42852 (right!43182 ys!41)))) b!5086383))

(declare-fun m!6143618 () Bool)

(assert (=> b!5086382 m!6143618))

(declare-fun m!6143620 () Bool)

(assert (=> b!5086382 m!6143620))

(declare-fun m!6143622 () Bool)

(assert (=> b!5086383 m!6143622))

(assert (=> b!5086259 m!6143414))

(declare-fun b!5086385 () Bool)

(declare-fun tp!1418015 () Bool)

(declare-fun e!3172291 () Bool)

(declare-fun tp!1418017 () Bool)

(assert (=> b!5086385 (= e!3172291 (and (inv!77687 (left!42852 (right!43182 (right!43182 ys!41)))) tp!1418015 (inv!77687 (right!43182 (right!43182 (right!43182 ys!41)))) tp!1418017))))

(declare-fun b!5086387 () Bool)

(declare-fun e!3172292 () Bool)

(declare-fun tp!1418016 () Bool)

(assert (=> b!5086387 (= e!3172292 tp!1418016)))

(declare-fun b!5086386 () Bool)

(assert (=> b!5086386 (= e!3172291 (and (inv!77688 (xs!18968 (right!43182 (right!43182 ys!41)))) e!3172292))))

(assert (=> b!5086259 (= tp!1417989 (and (inv!77687 (right!43182 (right!43182 ys!41))) e!3172291))))

(assert (= (and b!5086259 ((_ is Node!15588) (right!43182 (right!43182 ys!41)))) b!5086385))

(assert (= b!5086386 b!5086387))

(assert (= (and b!5086259 ((_ is Leaf!25887) (right!43182 (right!43182 ys!41)))) b!5086386))

(declare-fun m!6143624 () Bool)

(assert (=> b!5086385 m!6143624))

(declare-fun m!6143626 () Bool)

(assert (=> b!5086385 m!6143626))

(declare-fun m!6143628 () Bool)

(assert (=> b!5086386 m!6143628))

(assert (=> b!5086259 m!6143416))

(declare-fun b!5086388 () Bool)

(declare-fun e!3172293 () Bool)

(declare-fun tp!1418018 () Bool)

(assert (=> b!5086388 (= e!3172293 (and tp_is_empty!37097 tp!1418018))))

(assert (=> b!5086249 (= tp!1417976 e!3172293)))

(assert (= (and b!5086249 ((_ is Cons!58458) (innerList!15676 (xs!18968 (left!42852 xs!286))))) b!5086388))

(declare-fun e!3172294 () Bool)

(declare-fun tp!1418019 () Bool)

(declare-fun tp!1418021 () Bool)

(declare-fun b!5086389 () Bool)

(assert (=> b!5086389 (= e!3172294 (and (inv!77687 (left!42852 (left!42852 (left!42852 ys!41)))) tp!1418019 (inv!77687 (right!43182 (left!42852 (left!42852 ys!41)))) tp!1418021))))

(declare-fun b!5086391 () Bool)

(declare-fun e!3172295 () Bool)

(declare-fun tp!1418020 () Bool)

(assert (=> b!5086391 (= e!3172295 tp!1418020)))

(declare-fun b!5086390 () Bool)

(assert (=> b!5086390 (= e!3172294 (and (inv!77688 (xs!18968 (left!42852 (left!42852 ys!41)))) e!3172295))))

(assert (=> b!5086253 (= tp!1417981 (and (inv!77687 (left!42852 (left!42852 ys!41))) e!3172294))))

(assert (= (and b!5086253 ((_ is Node!15588) (left!42852 (left!42852 ys!41)))) b!5086389))

(assert (= b!5086390 b!5086391))

(assert (= (and b!5086253 ((_ is Leaf!25887) (left!42852 (left!42852 ys!41)))) b!5086390))

(declare-fun m!6143630 () Bool)

(assert (=> b!5086389 m!6143630))

(declare-fun m!6143632 () Bool)

(assert (=> b!5086389 m!6143632))

(declare-fun m!6143634 () Bool)

(assert (=> b!5086390 m!6143634))

(assert (=> b!5086253 m!6143402))

(declare-fun e!3172296 () Bool)

(declare-fun tp!1418022 () Bool)

(declare-fun tp!1418024 () Bool)

(declare-fun b!5086392 () Bool)

(assert (=> b!5086392 (= e!3172296 (and (inv!77687 (left!42852 (right!43182 (left!42852 ys!41)))) tp!1418022 (inv!77687 (right!43182 (right!43182 (left!42852 ys!41)))) tp!1418024))))

(declare-fun b!5086394 () Bool)

(declare-fun e!3172297 () Bool)

(declare-fun tp!1418023 () Bool)

(assert (=> b!5086394 (= e!3172297 tp!1418023)))

(declare-fun b!5086393 () Bool)

(assert (=> b!5086393 (= e!3172296 (and (inv!77688 (xs!18968 (right!43182 (left!42852 ys!41)))) e!3172297))))

(assert (=> b!5086253 (= tp!1417983 (and (inv!77687 (right!43182 (left!42852 ys!41))) e!3172296))))

(assert (= (and b!5086253 ((_ is Node!15588) (right!43182 (left!42852 ys!41)))) b!5086392))

(assert (= b!5086393 b!5086394))

(assert (= (and b!5086253 ((_ is Leaf!25887) (right!43182 (left!42852 ys!41)))) b!5086393))

(declare-fun m!6143636 () Bool)

(assert (=> b!5086392 m!6143636))

(declare-fun m!6143638 () Bool)

(assert (=> b!5086392 m!6143638))

(declare-fun m!6143640 () Bool)

(assert (=> b!5086393 m!6143640))

(assert (=> b!5086253 m!6143404))

(declare-fun b!5086395 () Bool)

(declare-fun e!3172298 () Bool)

(declare-fun tp!1418025 () Bool)

(assert (=> b!5086395 (= e!3172298 (and tp_is_empty!37097 tp!1418025))))

(assert (=> b!5086265 (= tp!1417993 e!3172298)))

(assert (= (and b!5086265 ((_ is Cons!58458) (t!371429 (innerList!15676 (xs!18968 xs!286))))) b!5086395))

(declare-fun b!5086396 () Bool)

(declare-fun e!3172299 () Bool)

(declare-fun tp!1418026 () Bool)

(assert (=> b!5086396 (= e!3172299 (and tp_is_empty!37097 tp!1418026))))

(assert (=> b!5086252 (= tp!1417979 e!3172299)))

(assert (= (and b!5086252 ((_ is Cons!58458) (innerList!15676 (xs!18968 (right!43182 xs!286))))) b!5086396))

(declare-fun tp!1418027 () Bool)

(declare-fun e!3172302 () Bool)

(declare-fun tp!1418029 () Bool)

(declare-fun b!5086397 () Bool)

(assert (=> b!5086397 (= e!3172302 (and (inv!77687 (left!42852 (left!42852 (left!42852 xs!286)))) tp!1418027 (inv!77687 (right!43182 (left!42852 (left!42852 xs!286)))) tp!1418029))))

(declare-fun b!5086399 () Bool)

(declare-fun e!3172303 () Bool)

(declare-fun tp!1418028 () Bool)

(assert (=> b!5086399 (= e!3172303 tp!1418028)))

(declare-fun b!5086398 () Bool)

(assert (=> b!5086398 (= e!3172302 (and (inv!77688 (xs!18968 (left!42852 (left!42852 xs!286)))) e!3172303))))

(assert (=> b!5086247 (= tp!1417975 (and (inv!77687 (left!42852 (left!42852 xs!286))) e!3172302))))

(assert (= (and b!5086247 ((_ is Node!15588) (left!42852 (left!42852 xs!286)))) b!5086397))

(assert (= b!5086398 b!5086399))

(assert (= (and b!5086247 ((_ is Leaf!25887) (left!42852 (left!42852 xs!286)))) b!5086398))

(declare-fun m!6143642 () Bool)

(assert (=> b!5086397 m!6143642))

(declare-fun m!6143644 () Bool)

(assert (=> b!5086397 m!6143644))

(declare-fun m!6143646 () Bool)

(assert (=> b!5086398 m!6143646))

(assert (=> b!5086247 m!6143390))

(declare-fun b!5086406 () Bool)

(declare-fun tp!1418030 () Bool)

(declare-fun tp!1418032 () Bool)

(declare-fun e!3172304 () Bool)

(assert (=> b!5086406 (= e!3172304 (and (inv!77687 (left!42852 (right!43182 (left!42852 xs!286)))) tp!1418030 (inv!77687 (right!43182 (right!43182 (left!42852 xs!286)))) tp!1418032))))

(declare-fun b!5086408 () Bool)

(declare-fun e!3172305 () Bool)

(declare-fun tp!1418031 () Bool)

(assert (=> b!5086408 (= e!3172305 tp!1418031)))

(declare-fun b!5086407 () Bool)

(assert (=> b!5086407 (= e!3172304 (and (inv!77688 (xs!18968 (right!43182 (left!42852 xs!286)))) e!3172305))))

(assert (=> b!5086247 (= tp!1417977 (and (inv!77687 (right!43182 (left!42852 xs!286))) e!3172304))))

(assert (= (and b!5086247 ((_ is Node!15588) (right!43182 (left!42852 xs!286)))) b!5086406))

(assert (= b!5086407 b!5086408))

(assert (= (and b!5086247 ((_ is Leaf!25887) (right!43182 (left!42852 xs!286)))) b!5086407))

(declare-fun m!6143648 () Bool)

(assert (=> b!5086406 m!6143648))

(declare-fun m!6143650 () Bool)

(assert (=> b!5086406 m!6143650))

(declare-fun m!6143652 () Bool)

(assert (=> b!5086407 m!6143652))

(assert (=> b!5086247 m!6143392))

(declare-fun b!5086409 () Bool)

(declare-fun e!3172306 () Bool)

(declare-fun tp!1418033 () Bool)

(assert (=> b!5086409 (= e!3172306 (and tp_is_empty!37097 tp!1418033))))

(assert (=> b!5086261 (= tp!1417988 e!3172306)))

(assert (= (and b!5086261 ((_ is Cons!58458) (innerList!15676 (xs!18968 (right!43182 ys!41))))) b!5086409))

(check-sat (not b!5086302) (not b!5086408) (not b!5086392) (not b!5086394) (not b!5086250) (not b!5086371) (not b!5086288) (not b!5086381) (not b!5086339) (not d!1646275) (not b!5086303) (not b!5086368) (not b!5086390) (not b!5086382) (not b!5086395) (not b!5086293) (not b!5086312) (not b!5086332) (not b!5086259) (not b!5086351) (not b!5086377) (not b!5086357) (not b!5086369) (not d!1646307) (not b!5086378) (not b!5086300) (not b!5086331) (not b!5086341) (not b!5086299) (not b!5086396) (not b!5086359) (not d!1646253) (not d!1646273) (not b!5086285) (not b!5086356) (not b!5086387) (not b!5086391) (not b!5086295) (not b!5086304) (not d!1646285) (not b!5086289) (not b!5086386) (not b!5086393) (not b!5086291) (not d!1646281) tp_is_empty!37097 (not d!1646305) (not b!5086398) (not b!5086374) (not b!5086409) (not d!1646279) (not b!5086322) (not b!5086328) (not d!1646299) (not b!5086350) (not b!5086333) (not b!5086383) (not b!5086375) (not b!5086247) (not b!5086364) (not d!1646297) (not d!1646287) (not d!1646283) (not d!1646261) (not b!5086337) (not b!5086354) (not b!5086367) (not d!1646231) (not b!5086406) (not b!5086388) (not b!5086372) (not b!5086366) (not b!5086301) (not b!5086290) (not d!1646233) (not b!5086320) (not b!5086287) (not b!5086376) (not b!5086407) (not b!5086324) (not b!5086317) (not b!5086253) (not b!5086298) (not b!5086389) (not b!5086353) (not b!5086325) (not b!5086327) (not b!5086399) (not b!5086296) (not b!5086310) (not b!5086334) (not b!5086329) (not b!5086344) (not b!5086348) (not b!5086346) (not b!5086370) (not d!1646255) (not d!1646241) (not d!1646259) (not b!5086292) (not b!5086384) (not b!5086385) (not b!5086361) (not d!1646257) (not b!5086379) (not b!5086397) (not d!1646277) (not b!5086330) (not b!5086380))
(check-sat)
