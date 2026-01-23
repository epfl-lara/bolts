; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533630 () Bool)

(assert start!533630)

(declare-fun b!5044923 () Bool)

(declare-fun e!3150222 () Bool)

(declare-fun e!3150219 () Bool)

(assert (=> b!5044923 (= e!3150222 (not e!3150219))))

(declare-fun res!2149059 () Bool)

(assert (=> b!5044923 (=> res!2149059 e!3150219)))

(declare-datatypes ((T!104264 0))(
  ( (T!104265 (val!23526 Int)) )
))
(declare-datatypes ((List!58436 0))(
  ( (Nil!58312) (Cons!58312 (h!64760 T!104264) (t!371033 List!58436)) )
))
(declare-datatypes ((IArray!31109 0))(
  ( (IArray!31110 (innerList!15612 List!58436)) )
))
(declare-datatypes ((Conc!15524 0))(
  ( (Node!15524 (left!42715 Conc!15524) (right!43045 Conc!15524) (csize!31278 Int) (cheight!15735 Int)) (Leaf!25750 (xs!18850 IArray!31109) (csize!31279 Int)) (Empty!15524) )
))
(declare-fun t!4198 () Conc!15524)

(declare-fun i!618 () Int)

(declare-fun size!38928 (Conc!15524) Int)

(assert (=> b!5044923 (= res!2149059 (not (= (size!38928 (left!42715 t!4198)) i!618)))))

(declare-fun e!3150216 () Bool)

(assert (=> b!5044923 e!3150216))

(declare-fun c!864719 () Bool)

(declare-fun lt!2085026 () Int)

(assert (=> b!5044923 (= c!864719 (= lt!2085026 i!618))))

(declare-fun lt!2085024 () List!58436)

(declare-datatypes ((tuple2!63254 0))(
  ( (tuple2!63255 (_1!34930 List!58436) (_2!34930 List!58436)) )
))
(declare-fun lt!2085027 () tuple2!63254)

(declare-fun lt!2085029 () List!58436)

(declare-fun splitAtIndex!217 (List!58436 Int) tuple2!63254)

(declare-fun ++!12737 (List!58436 List!58436) List!58436)

(assert (=> b!5044923 (= lt!2085027 (splitAtIndex!217 (++!12737 lt!2085024 lt!2085029) i!618))))

(declare-fun size!38929 (List!58436) Int)

(assert (=> b!5044923 (= lt!2085026 (size!38929 lt!2085024))))

(declare-datatypes ((Unit!149503 0))(
  ( (Unit!149504) )
))
(declare-fun lt!2085025 () Unit!149503)

(declare-fun splitAtLemma!72 (List!58436 List!58436 Int) Unit!149503)

(assert (=> b!5044923 (= lt!2085025 (splitAtLemma!72 lt!2085024 lt!2085029 i!618))))

(declare-fun list!18933 (Conc!15524) List!58436)

(assert (=> b!5044923 (= lt!2085029 (list!18933 (right!43045 t!4198)))))

(assert (=> b!5044923 (= lt!2085024 (list!18933 (left!42715 t!4198)))))

(declare-fun lt!2085028 () tuple2!63254)

(declare-fun c!864718 () Bool)

(declare-fun lt!2085023 () tuple2!63254)

(declare-fun bm!351457 () Bool)

(declare-fun call!351462 () List!58436)

(assert (=> bm!351457 (= call!351462 (++!12737 (ite c!864718 (_2!34930 lt!2085028) lt!2085024) (ite c!864718 lt!2085029 (_1!34930 lt!2085023))))))

(declare-fun b!5044924 () Bool)

(declare-fun res!2149062 () Bool)

(assert (=> b!5044924 (=> (not res!2149062) (not e!3150222))))

(get-info :version)

(assert (=> b!5044924 (= res!2149062 (and (not ((_ is Empty!15524) t!4198)) (not ((_ is Leaf!25750) t!4198))))))

(declare-fun b!5044925 () Bool)

(declare-fun e!3150220 () Bool)

(assert (=> b!5044925 (= e!3150220 (= (tuple2!63255 lt!2085024 lt!2085029) (splitAtIndex!217 (list!18933 t!4198) i!618)))))

(declare-fun b!5044926 () Bool)

(declare-fun res!2149057 () Bool)

(assert (=> b!5044926 (=> (not res!2149057) (not e!3150222))))

(assert (=> b!5044926 (= res!2149057 (<= i!618 (size!38928 t!4198)))))

(declare-fun b!5044927 () Bool)

(assert (=> b!5044927 (= e!3150219 e!3150220)))

(declare-fun res!2149061 () Bool)

(assert (=> b!5044927 (=> (not res!2149061) (not e!3150220))))

(declare-fun isBalanced!4386 (Conc!15524) Bool)

(assert (=> b!5044927 (= res!2149061 (isBalanced!4386 (left!42715 t!4198)))))

(declare-fun b!5044928 () Bool)

(declare-fun call!351463 () tuple2!63254)

(assert (=> b!5044928 (= lt!2085023 call!351463)))

(declare-fun e!3150218 () tuple2!63254)

(assert (=> b!5044928 (= e!3150218 (tuple2!63255 call!351462 (_2!34930 lt!2085023)))))

(declare-fun b!5044929 () Bool)

(assert (=> b!5044929 (= e!3150216 (= lt!2085027 (tuple2!63255 lt!2085024 lt!2085029)))))

(declare-fun b!5044930 () Bool)

(assert (=> b!5044930 (= e!3150216 (= lt!2085027 e!3150218))))

(assert (=> b!5044930 (= c!864718 (< i!618 lt!2085026))))

(declare-fun b!5044931 () Bool)

(declare-fun res!2149058 () Bool)

(assert (=> b!5044931 (=> (not res!2149058) (not e!3150222))))

(assert (=> b!5044931 (= res!2149058 (<= 0 i!618))))

(declare-fun b!5044932 () Bool)

(declare-fun e!3150217 () Bool)

(declare-fun tp!1411619 () Bool)

(declare-fun tp!1411621 () Bool)

(declare-fun inv!77216 (Conc!15524) Bool)

(assert (=> b!5044932 (= e!3150217 (and (inv!77216 (left!42715 t!4198)) tp!1411621 (inv!77216 (right!43045 t!4198)) tp!1411619))))

(declare-fun b!5044933 () Bool)

(assert (=> b!5044933 (= lt!2085028 call!351463)))

(assert (=> b!5044933 (= e!3150218 (tuple2!63255 (_1!34930 lt!2085028) call!351462))))

(declare-fun bm!351458 () Bool)

(assert (=> bm!351458 (= call!351463 (splitAtIndex!217 (ite c!864718 lt!2085024 lt!2085029) (ite c!864718 i!618 (- i!618 lt!2085026))))))

(declare-fun res!2149060 () Bool)

(assert (=> start!533630 (=> (not res!2149060) (not e!3150222))))

(assert (=> start!533630 (= res!2149060 (isBalanced!4386 t!4198))))

(assert (=> start!533630 e!3150222))

(assert (=> start!533630 (and (inv!77216 t!4198) e!3150217)))

(assert (=> start!533630 true))

(declare-fun b!5044922 () Bool)

(declare-fun e!3150221 () Bool)

(declare-fun inv!77217 (IArray!31109) Bool)

(assert (=> b!5044922 (= e!3150217 (and (inv!77217 (xs!18850 t!4198)) e!3150221))))

(declare-fun b!5044934 () Bool)

(declare-fun res!2149063 () Bool)

(assert (=> b!5044934 (=> (not res!2149063) (not e!3150220))))

(assert (=> b!5044934 (= res!2149063 (isBalanced!4386 (right!43045 t!4198)))))

(declare-fun b!5044935 () Bool)

(declare-fun tp!1411620 () Bool)

(assert (=> b!5044935 (= e!3150221 tp!1411620)))

(assert (= (and start!533630 res!2149060) b!5044931))

(assert (= (and b!5044931 res!2149058) b!5044926))

(assert (= (and b!5044926 res!2149057) b!5044924))

(assert (= (and b!5044924 res!2149062) b!5044923))

(assert (= (and b!5044923 c!864719) b!5044929))

(assert (= (and b!5044923 (not c!864719)) b!5044930))

(assert (= (and b!5044930 c!864718) b!5044933))

(assert (= (and b!5044930 (not c!864718)) b!5044928))

(assert (= (or b!5044933 b!5044928) bm!351457))

(assert (= (or b!5044933 b!5044928) bm!351458))

(assert (= (and b!5044923 (not res!2149059)) b!5044927))

(assert (= (and b!5044927 res!2149061) b!5044934))

(assert (= (and b!5044934 res!2149063) b!5044925))

(assert (= (and start!533630 ((_ is Node!15524) t!4198)) b!5044932))

(assert (= b!5044922 b!5044935))

(assert (= (and start!533630 ((_ is Leaf!25750) t!4198)) b!5044922))

(declare-fun m!6080228 () Bool)

(assert (=> start!533630 m!6080228))

(declare-fun m!6080230 () Bool)

(assert (=> start!533630 m!6080230))

(declare-fun m!6080232 () Bool)

(assert (=> b!5044927 m!6080232))

(declare-fun m!6080234 () Bool)

(assert (=> b!5044932 m!6080234))

(declare-fun m!6080236 () Bool)

(assert (=> b!5044932 m!6080236))

(declare-fun m!6080238 () Bool)

(assert (=> b!5044925 m!6080238))

(assert (=> b!5044925 m!6080238))

(declare-fun m!6080240 () Bool)

(assert (=> b!5044925 m!6080240))

(declare-fun m!6080242 () Bool)

(assert (=> b!5044923 m!6080242))

(declare-fun m!6080244 () Bool)

(assert (=> b!5044923 m!6080244))

(declare-fun m!6080246 () Bool)

(assert (=> b!5044923 m!6080246))

(declare-fun m!6080248 () Bool)

(assert (=> b!5044923 m!6080248))

(declare-fun m!6080250 () Bool)

(assert (=> b!5044923 m!6080250))

(declare-fun m!6080252 () Bool)

(assert (=> b!5044923 m!6080252))

(assert (=> b!5044923 m!6080244))

(declare-fun m!6080254 () Bool)

(assert (=> b!5044923 m!6080254))

(declare-fun m!6080256 () Bool)

(assert (=> bm!351458 m!6080256))

(declare-fun m!6080258 () Bool)

(assert (=> b!5044922 m!6080258))

(declare-fun m!6080260 () Bool)

(assert (=> bm!351457 m!6080260))

(declare-fun m!6080262 () Bool)

(assert (=> b!5044926 m!6080262))

(declare-fun m!6080264 () Bool)

(assert (=> b!5044934 m!6080264))

(check-sat (not b!5044923) (not bm!351457) (not b!5044922) (not b!5044935) (not b!5044925) (not b!5044934) (not bm!351458) (not start!533630) (not b!5044932) (not b!5044926) (not b!5044927))
(check-sat)
(get-model)

(declare-fun d!1623790 () Bool)

(declare-fun lt!2085032 () Int)

(assert (=> d!1623790 (= lt!2085032 (size!38929 (list!18933 t!4198)))))

(assert (=> d!1623790 (= lt!2085032 (ite ((_ is Empty!15524) t!4198) 0 (ite ((_ is Leaf!25750) t!4198) (csize!31279 t!4198) (csize!31278 t!4198))))))

(assert (=> d!1623790 (= (size!38928 t!4198) lt!2085032)))

(declare-fun bs!1189116 () Bool)

(assert (= bs!1189116 d!1623790))

(assert (=> bs!1189116 m!6080238))

(assert (=> bs!1189116 m!6080238))

(declare-fun m!6080266 () Bool)

(assert (=> bs!1189116 m!6080266))

(assert (=> b!5044926 d!1623790))

(declare-fun d!1623792 () Bool)

(declare-fun c!864722 () Bool)

(assert (=> d!1623792 (= c!864722 ((_ is Node!15524) (left!42715 t!4198)))))

(declare-fun e!3150227 () Bool)

(assert (=> d!1623792 (= (inv!77216 (left!42715 t!4198)) e!3150227)))

(declare-fun b!5044942 () Bool)

(declare-fun inv!77218 (Conc!15524) Bool)

(assert (=> b!5044942 (= e!3150227 (inv!77218 (left!42715 t!4198)))))

(declare-fun b!5044943 () Bool)

(declare-fun e!3150228 () Bool)

(assert (=> b!5044943 (= e!3150227 e!3150228)))

(declare-fun res!2149066 () Bool)

(assert (=> b!5044943 (= res!2149066 (not ((_ is Leaf!25750) (left!42715 t!4198))))))

(assert (=> b!5044943 (=> res!2149066 e!3150228)))

(declare-fun b!5044944 () Bool)

(declare-fun inv!77219 (Conc!15524) Bool)

(assert (=> b!5044944 (= e!3150228 (inv!77219 (left!42715 t!4198)))))

(assert (= (and d!1623792 c!864722) b!5044942))

(assert (= (and d!1623792 (not c!864722)) b!5044943))

(assert (= (and b!5044943 (not res!2149066)) b!5044944))

(declare-fun m!6080270 () Bool)

(assert (=> b!5044942 m!6080270))

(declare-fun m!6080272 () Bool)

(assert (=> b!5044944 m!6080272))

(assert (=> b!5044932 d!1623792))

(declare-fun d!1623798 () Bool)

(declare-fun c!864723 () Bool)

(assert (=> d!1623798 (= c!864723 ((_ is Node!15524) (right!43045 t!4198)))))

(declare-fun e!3150229 () Bool)

(assert (=> d!1623798 (= (inv!77216 (right!43045 t!4198)) e!3150229)))

(declare-fun b!5044945 () Bool)

(assert (=> b!5044945 (= e!3150229 (inv!77218 (right!43045 t!4198)))))

(declare-fun b!5044946 () Bool)

(declare-fun e!3150230 () Bool)

(assert (=> b!5044946 (= e!3150229 e!3150230)))

(declare-fun res!2149067 () Bool)

(assert (=> b!5044946 (= res!2149067 (not ((_ is Leaf!25750) (right!43045 t!4198))))))

(assert (=> b!5044946 (=> res!2149067 e!3150230)))

(declare-fun b!5044947 () Bool)

(assert (=> b!5044947 (= e!3150230 (inv!77219 (right!43045 t!4198)))))

(assert (= (and d!1623798 c!864723) b!5044945))

(assert (= (and d!1623798 (not c!864723)) b!5044946))

(assert (= (and b!5044946 (not res!2149067)) b!5044947))

(declare-fun m!6080274 () Bool)

(assert (=> b!5044945 m!6080274))

(declare-fun m!6080276 () Bool)

(assert (=> b!5044947 m!6080276))

(assert (=> b!5044932 d!1623798))

(declare-fun b!5044972 () Bool)

(declare-fun res!2149087 () Bool)

(declare-fun e!3150241 () Bool)

(assert (=> b!5044972 (=> (not res!2149087) (not e!3150241))))

(declare-fun height!2102 (Conc!15524) Int)

(assert (=> b!5044972 (= res!2149087 (<= (- (height!2102 (left!42715 t!4198)) (height!2102 (right!43045 t!4198))) 1))))

(declare-fun d!1623800 () Bool)

(declare-fun res!2149089 () Bool)

(declare-fun e!3150242 () Bool)

(assert (=> d!1623800 (=> res!2149089 e!3150242)))

(assert (=> d!1623800 (= res!2149089 (not ((_ is Node!15524) t!4198)))))

(assert (=> d!1623800 (= (isBalanced!4386 t!4198) e!3150242)))

(declare-fun b!5044973 () Bool)

(declare-fun res!2149088 () Bool)

(assert (=> b!5044973 (=> (not res!2149088) (not e!3150241))))

(assert (=> b!5044973 (= res!2149088 (isBalanced!4386 (left!42715 t!4198)))))

(declare-fun b!5044974 () Bool)

(declare-fun isEmpty!31553 (Conc!15524) Bool)

(assert (=> b!5044974 (= e!3150241 (not (isEmpty!31553 (right!43045 t!4198))))))

(declare-fun b!5044975 () Bool)

(declare-fun res!2149086 () Bool)

(assert (=> b!5044975 (=> (not res!2149086) (not e!3150241))))

(assert (=> b!5044975 (= res!2149086 (not (isEmpty!31553 (left!42715 t!4198))))))

(declare-fun b!5044976 () Bool)

(assert (=> b!5044976 (= e!3150242 e!3150241)))

(declare-fun res!2149090 () Bool)

(assert (=> b!5044976 (=> (not res!2149090) (not e!3150241))))

(assert (=> b!5044976 (= res!2149090 (<= (- 1) (- (height!2102 (left!42715 t!4198)) (height!2102 (right!43045 t!4198)))))))

(declare-fun b!5044977 () Bool)

(declare-fun res!2149091 () Bool)

(assert (=> b!5044977 (=> (not res!2149091) (not e!3150241))))

(assert (=> b!5044977 (= res!2149091 (isBalanced!4386 (right!43045 t!4198)))))

(assert (= (and d!1623800 (not res!2149089)) b!5044976))

(assert (= (and b!5044976 res!2149090) b!5044972))

(assert (= (and b!5044972 res!2149087) b!5044973))

(assert (= (and b!5044973 res!2149088) b!5044977))

(assert (= (and b!5044977 res!2149091) b!5044975))

(assert (= (and b!5044975 res!2149086) b!5044974))

(declare-fun m!6080292 () Bool)

(assert (=> b!5044972 m!6080292))

(declare-fun m!6080294 () Bool)

(assert (=> b!5044972 m!6080294))

(assert (=> b!5044977 m!6080264))

(assert (=> b!5044973 m!6080232))

(assert (=> b!5044976 m!6080292))

(assert (=> b!5044976 m!6080294))

(declare-fun m!6080296 () Bool)

(assert (=> b!5044975 m!6080296))

(declare-fun m!6080298 () Bool)

(assert (=> b!5044974 m!6080298))

(assert (=> start!533630 d!1623800))

(declare-fun d!1623804 () Bool)

(declare-fun c!864727 () Bool)

(assert (=> d!1623804 (= c!864727 ((_ is Node!15524) t!4198))))

(declare-fun e!3150243 () Bool)

(assert (=> d!1623804 (= (inv!77216 t!4198) e!3150243)))

(declare-fun b!5044978 () Bool)

(assert (=> b!5044978 (= e!3150243 (inv!77218 t!4198))))

(declare-fun b!5044979 () Bool)

(declare-fun e!3150244 () Bool)

(assert (=> b!5044979 (= e!3150243 e!3150244)))

(declare-fun res!2149092 () Bool)

(assert (=> b!5044979 (= res!2149092 (not ((_ is Leaf!25750) t!4198)))))

(assert (=> b!5044979 (=> res!2149092 e!3150244)))

(declare-fun b!5044980 () Bool)

(assert (=> b!5044980 (= e!3150244 (inv!77219 t!4198))))

(assert (= (and d!1623804 c!864727) b!5044978))

(assert (= (and d!1623804 (not c!864727)) b!5044979))

(assert (= (and b!5044979 (not res!2149092)) b!5044980))

(declare-fun m!6080300 () Bool)

(assert (=> b!5044978 m!6080300))

(declare-fun m!6080302 () Bool)

(assert (=> b!5044980 m!6080302))

(assert (=> start!533630 d!1623804))

(declare-fun d!1623806 () Bool)

(assert (=> d!1623806 (= (inv!77217 (xs!18850 t!4198)) (<= (size!38929 (innerList!15612 (xs!18850 t!4198))) 2147483647))))

(declare-fun bs!1189118 () Bool)

(assert (= bs!1189118 d!1623806))

(declare-fun m!6080304 () Bool)

(assert (=> bs!1189118 m!6080304))

(assert (=> b!5044922 d!1623806))

(declare-fun b!5045002 () Bool)

(declare-fun e!3150255 () List!58436)

(declare-fun e!3150256 () List!58436)

(assert (=> b!5045002 (= e!3150255 e!3150256)))

(declare-fun c!864737 () Bool)

(assert (=> b!5045002 (= c!864737 ((_ is Leaf!25750) (right!43045 t!4198)))))

(declare-fun d!1623808 () Bool)

(declare-fun c!864736 () Bool)

(assert (=> d!1623808 (= c!864736 ((_ is Empty!15524) (right!43045 t!4198)))))

(assert (=> d!1623808 (= (list!18933 (right!43045 t!4198)) e!3150255)))

(declare-fun b!5045003 () Bool)

(declare-fun list!18935 (IArray!31109) List!58436)

(assert (=> b!5045003 (= e!3150256 (list!18935 (xs!18850 (right!43045 t!4198))))))

(declare-fun b!5045004 () Bool)

(assert (=> b!5045004 (= e!3150256 (++!12737 (list!18933 (left!42715 (right!43045 t!4198))) (list!18933 (right!43045 (right!43045 t!4198)))))))

(declare-fun b!5045001 () Bool)

(assert (=> b!5045001 (= e!3150255 Nil!58312)))

(assert (= (and d!1623808 c!864736) b!5045001))

(assert (= (and d!1623808 (not c!864736)) b!5045002))

(assert (= (and b!5045002 c!864737) b!5045003))

(assert (= (and b!5045002 (not c!864737)) b!5045004))

(declare-fun m!6080306 () Bool)

(assert (=> b!5045003 m!6080306))

(declare-fun m!6080308 () Bool)

(assert (=> b!5045004 m!6080308))

(declare-fun m!6080310 () Bool)

(assert (=> b!5045004 m!6080310))

(assert (=> b!5045004 m!6080308))

(assert (=> b!5045004 m!6080310))

(declare-fun m!6080312 () Bool)

(assert (=> b!5045004 m!6080312))

(assert (=> b!5044923 d!1623808))

(declare-fun d!1623810 () Bool)

(declare-fun lt!2085043 () Int)

(assert (=> d!1623810 (= lt!2085043 (size!38929 (list!18933 (left!42715 t!4198))))))

(assert (=> d!1623810 (= lt!2085043 (ite ((_ is Empty!15524) (left!42715 t!4198)) 0 (ite ((_ is Leaf!25750) (left!42715 t!4198)) (csize!31279 (left!42715 t!4198)) (csize!31278 (left!42715 t!4198)))))))

(assert (=> d!1623810 (= (size!38928 (left!42715 t!4198)) lt!2085043)))

(declare-fun bs!1189119 () Bool)

(assert (= bs!1189119 d!1623810))

(assert (=> bs!1189119 m!6080242))

(assert (=> bs!1189119 m!6080242))

(declare-fun m!6080314 () Bool)

(assert (=> bs!1189119 m!6080314))

(assert (=> b!5044923 d!1623810))

(declare-fun b!5045031 () Bool)

(declare-fun e!3150271 () List!58436)

(assert (=> b!5045031 (= e!3150271 lt!2085029)))

(declare-fun lt!2085048 () List!58436)

(declare-fun e!3150270 () Bool)

(declare-fun b!5045034 () Bool)

(assert (=> b!5045034 (= e!3150270 (or (not (= lt!2085029 Nil!58312)) (= lt!2085048 lt!2085024)))))

(declare-fun d!1623812 () Bool)

(assert (=> d!1623812 e!3150270))

(declare-fun res!2149104 () Bool)

(assert (=> d!1623812 (=> (not res!2149104) (not e!3150270))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10365 (List!58436) (InoxSet T!104264))

(assert (=> d!1623812 (= res!2149104 (= (content!10365 lt!2085048) ((_ map or) (content!10365 lt!2085024) (content!10365 lt!2085029))))))

(assert (=> d!1623812 (= lt!2085048 e!3150271)))

(declare-fun c!864748 () Bool)

(assert (=> d!1623812 (= c!864748 ((_ is Nil!58312) lt!2085024))))

(assert (=> d!1623812 (= (++!12737 lt!2085024 lt!2085029) lt!2085048)))

(declare-fun b!5045033 () Bool)

(declare-fun res!2149103 () Bool)

(assert (=> b!5045033 (=> (not res!2149103) (not e!3150270))))

(assert (=> b!5045033 (= res!2149103 (= (size!38929 lt!2085048) (+ (size!38929 lt!2085024) (size!38929 lt!2085029))))))

(declare-fun b!5045032 () Bool)

(assert (=> b!5045032 (= e!3150271 (Cons!58312 (h!64760 lt!2085024) (++!12737 (t!371033 lt!2085024) lt!2085029)))))

(assert (= (and d!1623812 c!864748) b!5045031))

(assert (= (and d!1623812 (not c!864748)) b!5045032))

(assert (= (and d!1623812 res!2149104) b!5045033))

(assert (= (and b!5045033 res!2149103) b!5045034))

(declare-fun m!6080328 () Bool)

(assert (=> d!1623812 m!6080328))

(declare-fun m!6080330 () Bool)

(assert (=> d!1623812 m!6080330))

(declare-fun m!6080332 () Bool)

(assert (=> d!1623812 m!6080332))

(declare-fun m!6080334 () Bool)

(assert (=> b!5045033 m!6080334))

(assert (=> b!5045033 m!6080248))

(declare-fun m!6080336 () Bool)

(assert (=> b!5045033 m!6080336))

(declare-fun m!6080338 () Bool)

(assert (=> b!5045032 m!6080338))

(assert (=> b!5044923 d!1623812))

(declare-fun b!5045036 () Bool)

(declare-fun e!3150272 () List!58436)

(declare-fun e!3150273 () List!58436)

(assert (=> b!5045036 (= e!3150272 e!3150273)))

(declare-fun c!864750 () Bool)

(assert (=> b!5045036 (= c!864750 ((_ is Leaf!25750) (left!42715 t!4198)))))

(declare-fun d!1623818 () Bool)

(declare-fun c!864749 () Bool)

(assert (=> d!1623818 (= c!864749 ((_ is Empty!15524) (left!42715 t!4198)))))

(assert (=> d!1623818 (= (list!18933 (left!42715 t!4198)) e!3150272)))

(declare-fun b!5045037 () Bool)

(assert (=> b!5045037 (= e!3150273 (list!18935 (xs!18850 (left!42715 t!4198))))))

(declare-fun b!5045038 () Bool)

(assert (=> b!5045038 (= e!3150273 (++!12737 (list!18933 (left!42715 (left!42715 t!4198))) (list!18933 (right!43045 (left!42715 t!4198)))))))

(declare-fun b!5045035 () Bool)

(assert (=> b!5045035 (= e!3150272 Nil!58312)))

(assert (= (and d!1623818 c!864749) b!5045035))

(assert (= (and d!1623818 (not c!864749)) b!5045036))

(assert (= (and b!5045036 c!864750) b!5045037))

(assert (= (and b!5045036 (not c!864750)) b!5045038))

(declare-fun m!6080340 () Bool)

(assert (=> b!5045037 m!6080340))

(declare-fun m!6080342 () Bool)

(assert (=> b!5045038 m!6080342))

(declare-fun m!6080344 () Bool)

(assert (=> b!5045038 m!6080344))

(assert (=> b!5045038 m!6080342))

(assert (=> b!5045038 m!6080344))

(declare-fun m!6080346 () Bool)

(assert (=> b!5045038 m!6080346))

(assert (=> b!5044923 d!1623818))

(declare-fun d!1623820 () Bool)

(declare-fun e!3150299 () Bool)

(assert (=> d!1623820 e!3150299))

(declare-fun res!2149138 () Bool)

(assert (=> d!1623820 (=> (not res!2149138) (not e!3150299))))

(declare-fun lt!2085056 () tuple2!63254)

(assert (=> d!1623820 (= res!2149138 (= (++!12737 (_1!34930 lt!2085056) (_2!34930 lt!2085056)) (++!12737 lt!2085024 lt!2085029)))))

(declare-fun e!3150297 () tuple2!63254)

(assert (=> d!1623820 (= lt!2085056 e!3150297)))

(declare-fun c!864760 () Bool)

(assert (=> d!1623820 (= c!864760 ((_ is Nil!58312) (++!12737 lt!2085024 lt!2085029)))))

(assert (=> d!1623820 (= (splitAtIndex!217 (++!12737 lt!2085024 lt!2085029) i!618) lt!2085056)))

(declare-fun b!5045090 () Bool)

(declare-fun drop!2640 (List!58436 Int) List!58436)

(assert (=> b!5045090 (= e!3150299 (= (_2!34930 lt!2085056) (drop!2640 (++!12737 lt!2085024 lt!2085029) i!618)))))

(declare-fun b!5045091 () Bool)

(declare-fun e!3150298 () tuple2!63254)

(assert (=> b!5045091 (= e!3150297 e!3150298)))

(declare-fun c!864761 () Bool)

(assert (=> b!5045091 (= c!864761 (<= i!618 0))))

(declare-fun b!5045092 () Bool)

(assert (=> b!5045092 (= e!3150298 (tuple2!63255 Nil!58312 (++!12737 lt!2085024 lt!2085029)))))

(declare-fun b!5045093 () Bool)

(assert (=> b!5045093 (= e!3150297 (tuple2!63255 Nil!58312 Nil!58312))))

(declare-fun lt!2085055 () tuple2!63254)

(declare-fun b!5045094 () Bool)

(assert (=> b!5045094 (= lt!2085055 (splitAtIndex!217 (t!371033 (++!12737 lt!2085024 lt!2085029)) (- i!618 1)))))

(assert (=> b!5045094 (= e!3150298 (tuple2!63255 (Cons!58312 (h!64760 (++!12737 lt!2085024 lt!2085029)) (_1!34930 lt!2085055)) (_2!34930 lt!2085055)))))

(declare-fun b!5045095 () Bool)

(declare-fun res!2149139 () Bool)

(assert (=> b!5045095 (=> (not res!2149139) (not e!3150299))))

(declare-fun take!833 (List!58436 Int) List!58436)

(assert (=> b!5045095 (= res!2149139 (= (_1!34930 lt!2085056) (take!833 (++!12737 lt!2085024 lt!2085029) i!618)))))

(assert (= (and d!1623820 c!864760) b!5045093))

(assert (= (and d!1623820 (not c!864760)) b!5045091))

(assert (= (and b!5045091 c!864761) b!5045092))

(assert (= (and b!5045091 (not c!864761)) b!5045094))

(assert (= (and d!1623820 res!2149138) b!5045095))

(assert (= (and b!5045095 res!2149139) b!5045090))

(declare-fun m!6080388 () Bool)

(assert (=> d!1623820 m!6080388))

(assert (=> b!5045090 m!6080244))

(declare-fun m!6080390 () Bool)

(assert (=> b!5045090 m!6080390))

(declare-fun m!6080392 () Bool)

(assert (=> b!5045094 m!6080392))

(assert (=> b!5045095 m!6080244))

(declare-fun m!6080394 () Bool)

(assert (=> b!5045095 m!6080394))

(assert (=> b!5044923 d!1623820))

(declare-fun b!5045155 () Bool)

(declare-fun lt!2085078 () tuple2!63254)

(declare-fun call!351474 () tuple2!63254)

(assert (=> b!5045155 (= lt!2085078 call!351474)))

(declare-fun e!3150333 () tuple2!63254)

(declare-fun call!351475 () List!58436)

(assert (=> b!5045155 (= e!3150333 (tuple2!63255 call!351475 (_2!34930 lt!2085078)))))

(declare-fun b!5045156 () Bool)

(declare-fun e!3150335 () Int)

(assert (=> b!5045156 (= e!3150335 (- i!618 (size!38929 lt!2085024)))))

(declare-fun b!5045157 () Bool)

(assert (=> b!5045157 (= e!3150335 i!618)))

(declare-fun e!3150334 () Bool)

(declare-fun b!5045158 () Bool)

(assert (=> b!5045158 (= e!3150334 (<= i!618 (+ (size!38929 lt!2085024) (size!38929 lt!2085029))))))

(declare-fun bm!351469 () Bool)

(declare-fun c!864787 () Bool)

(declare-fun c!864789 () Bool)

(assert (=> bm!351469 (= c!864787 c!864789)))

(assert (=> bm!351469 (= call!351474 (splitAtIndex!217 (ite c!864789 lt!2085024 lt!2085029) e!3150335))))

(declare-fun b!5045159 () Bool)

(declare-fun e!3150336 () tuple2!63254)

(assert (=> b!5045159 (= e!3150336 (tuple2!63255 lt!2085024 lt!2085029))))

(declare-fun d!1623834 () Bool)

(assert (=> d!1623834 (= (splitAtIndex!217 (++!12737 lt!2085024 lt!2085029) i!618) e!3150336)))

(declare-fun c!864788 () Bool)

(assert (=> d!1623834 (= c!864788 (= (size!38929 lt!2085024) i!618))))

(declare-fun lt!2085077 () Unit!149503)

(declare-fun choose!37271 (List!58436 List!58436 Int) Unit!149503)

(assert (=> d!1623834 (= lt!2085077 (choose!37271 lt!2085024 lt!2085029 i!618))))

(assert (=> d!1623834 e!3150334))

(declare-fun res!2149149 () Bool)

(assert (=> d!1623834 (=> (not res!2149149) (not e!3150334))))

(assert (=> d!1623834 (= res!2149149 (<= 0 i!618))))

(assert (=> d!1623834 (= (splitAtLemma!72 lt!2085024 lt!2085029 i!618) lt!2085077)))

(declare-fun bm!351470 () Bool)

(declare-fun lt!2085079 () tuple2!63254)

(assert (=> bm!351470 (= call!351475 (++!12737 (ite c!864789 (_2!34930 lt!2085079) lt!2085024) (ite c!864789 lt!2085029 (_1!34930 lt!2085078))))))

(declare-fun b!5045160 () Bool)

(assert (=> b!5045160 (= e!3150336 e!3150333)))

(assert (=> b!5045160 (= c!864789 (< i!618 (size!38929 lt!2085024)))))

(declare-fun b!5045161 () Bool)

(assert (=> b!5045161 (= lt!2085079 call!351474)))

(assert (=> b!5045161 (= e!3150333 (tuple2!63255 (_1!34930 lt!2085079) call!351475))))

(assert (= (and d!1623834 res!2149149) b!5045158))

(assert (= (and d!1623834 c!864788) b!5045159))

(assert (= (and d!1623834 (not c!864788)) b!5045160))

(assert (= (and b!5045160 c!864789) b!5045161))

(assert (= (and b!5045160 (not c!864789)) b!5045155))

(assert (= (or b!5045161 b!5045155) bm!351470))

(assert (= (or b!5045161 b!5045155) bm!351469))

(assert (= (and bm!351469 c!864787) b!5045157))

(assert (= (and bm!351469 (not c!864787)) b!5045156))

(assert (=> b!5045156 m!6080248))

(assert (=> b!5045160 m!6080248))

(declare-fun m!6080434 () Bool)

(assert (=> bm!351470 m!6080434))

(assert (=> d!1623834 m!6080244))

(assert (=> d!1623834 m!6080244))

(assert (=> d!1623834 m!6080254))

(assert (=> d!1623834 m!6080248))

(declare-fun m!6080436 () Bool)

(assert (=> d!1623834 m!6080436))

(declare-fun m!6080440 () Bool)

(assert (=> bm!351469 m!6080440))

(assert (=> b!5045158 m!6080248))

(assert (=> b!5045158 m!6080336))

(assert (=> b!5044923 d!1623834))

(declare-fun d!1623850 () Bool)

(declare-fun lt!2085084 () Int)

(assert (=> d!1623850 (>= lt!2085084 0)))

(declare-fun e!3150352 () Int)

(assert (=> d!1623850 (= lt!2085084 e!3150352)))

(declare-fun c!864794 () Bool)

(assert (=> d!1623850 (= c!864794 ((_ is Nil!58312) lt!2085024))))

(assert (=> d!1623850 (= (size!38929 lt!2085024) lt!2085084)))

(declare-fun b!5045192 () Bool)

(assert (=> b!5045192 (= e!3150352 0)))

(declare-fun b!5045193 () Bool)

(assert (=> b!5045193 (= e!3150352 (+ 1 (size!38929 (t!371033 lt!2085024))))))

(assert (= (and d!1623850 c!864794) b!5045192))

(assert (= (and d!1623850 (not c!864794)) b!5045193))

(declare-fun m!6080474 () Bool)

(assert (=> b!5045193 m!6080474))

(assert (=> b!5044923 d!1623850))

(declare-fun b!5045198 () Bool)

(declare-fun res!2149159 () Bool)

(declare-fun e!3150355 () Bool)

(assert (=> b!5045198 (=> (not res!2149159) (not e!3150355))))

(assert (=> b!5045198 (= res!2149159 (<= (- (height!2102 (left!42715 (left!42715 t!4198))) (height!2102 (right!43045 (left!42715 t!4198)))) 1))))

(declare-fun d!1623854 () Bool)

(declare-fun res!2149161 () Bool)

(declare-fun e!3150356 () Bool)

(assert (=> d!1623854 (=> res!2149161 e!3150356)))

(assert (=> d!1623854 (= res!2149161 (not ((_ is Node!15524) (left!42715 t!4198))))))

(assert (=> d!1623854 (= (isBalanced!4386 (left!42715 t!4198)) e!3150356)))

(declare-fun b!5045199 () Bool)

(declare-fun res!2149160 () Bool)

(assert (=> b!5045199 (=> (not res!2149160) (not e!3150355))))

(assert (=> b!5045199 (= res!2149160 (isBalanced!4386 (left!42715 (left!42715 t!4198))))))

(declare-fun b!5045200 () Bool)

(assert (=> b!5045200 (= e!3150355 (not (isEmpty!31553 (right!43045 (left!42715 t!4198)))))))

(declare-fun b!5045201 () Bool)

(declare-fun res!2149158 () Bool)

(assert (=> b!5045201 (=> (not res!2149158) (not e!3150355))))

(assert (=> b!5045201 (= res!2149158 (not (isEmpty!31553 (left!42715 (left!42715 t!4198)))))))

(declare-fun b!5045202 () Bool)

(assert (=> b!5045202 (= e!3150356 e!3150355)))

(declare-fun res!2149162 () Bool)

(assert (=> b!5045202 (=> (not res!2149162) (not e!3150355))))

(assert (=> b!5045202 (= res!2149162 (<= (- 1) (- (height!2102 (left!42715 (left!42715 t!4198))) (height!2102 (right!43045 (left!42715 t!4198))))))))

(declare-fun b!5045203 () Bool)

(declare-fun res!2149163 () Bool)

(assert (=> b!5045203 (=> (not res!2149163) (not e!3150355))))

(assert (=> b!5045203 (= res!2149163 (isBalanced!4386 (right!43045 (left!42715 t!4198))))))

(assert (= (and d!1623854 (not res!2149161)) b!5045202))

(assert (= (and b!5045202 res!2149162) b!5045198))

(assert (= (and b!5045198 res!2149159) b!5045199))

(assert (= (and b!5045199 res!2149160) b!5045203))

(assert (= (and b!5045203 res!2149163) b!5045201))

(assert (= (and b!5045201 res!2149158) b!5045200))

(declare-fun m!6080476 () Bool)

(assert (=> b!5045198 m!6080476))

(declare-fun m!6080478 () Bool)

(assert (=> b!5045198 m!6080478))

(declare-fun m!6080480 () Bool)

(assert (=> b!5045203 m!6080480))

(declare-fun m!6080482 () Bool)

(assert (=> b!5045199 m!6080482))

(assert (=> b!5045202 m!6080476))

(assert (=> b!5045202 m!6080478))

(declare-fun m!6080484 () Bool)

(assert (=> b!5045201 m!6080484))

(declare-fun m!6080486 () Bool)

(assert (=> b!5045200 m!6080486))

(assert (=> b!5044927 d!1623854))

(declare-fun d!1623856 () Bool)

(declare-fun e!3150360 () Bool)

(assert (=> d!1623856 e!3150360))

(declare-fun res!2149164 () Bool)

(assert (=> d!1623856 (=> (not res!2149164) (not e!3150360))))

(declare-fun lt!2085086 () tuple2!63254)

(assert (=> d!1623856 (= res!2149164 (= (++!12737 (_1!34930 lt!2085086) (_2!34930 lt!2085086)) (ite c!864718 lt!2085024 lt!2085029)))))

(declare-fun e!3150358 () tuple2!63254)

(assert (=> d!1623856 (= lt!2085086 e!3150358)))

(declare-fun c!864795 () Bool)

(assert (=> d!1623856 (= c!864795 ((_ is Nil!58312) (ite c!864718 lt!2085024 lt!2085029)))))

(assert (=> d!1623856 (= (splitAtIndex!217 (ite c!864718 lt!2085024 lt!2085029) (ite c!864718 i!618 (- i!618 lt!2085026))) lt!2085086)))

(declare-fun b!5045205 () Bool)

(assert (=> b!5045205 (= e!3150360 (= (_2!34930 lt!2085086) (drop!2640 (ite c!864718 lt!2085024 lt!2085029) (ite c!864718 i!618 (- i!618 lt!2085026)))))))

(declare-fun b!5045206 () Bool)

(declare-fun e!3150359 () tuple2!63254)

(assert (=> b!5045206 (= e!3150358 e!3150359)))

(declare-fun c!864796 () Bool)

(assert (=> b!5045206 (= c!864796 (<= (ite c!864718 i!618 (- i!618 lt!2085026)) 0))))

(declare-fun b!5045207 () Bool)

(assert (=> b!5045207 (= e!3150359 (tuple2!63255 Nil!58312 (ite c!864718 lt!2085024 lt!2085029)))))

(declare-fun b!5045208 () Bool)

(assert (=> b!5045208 (= e!3150358 (tuple2!63255 Nil!58312 Nil!58312))))

(declare-fun b!5045209 () Bool)

(declare-fun lt!2085085 () tuple2!63254)

(assert (=> b!5045209 (= lt!2085085 (splitAtIndex!217 (t!371033 (ite c!864718 lt!2085024 lt!2085029)) (- (ite c!864718 i!618 (- i!618 lt!2085026)) 1)))))

(assert (=> b!5045209 (= e!3150359 (tuple2!63255 (Cons!58312 (h!64760 (ite c!864718 lt!2085024 lt!2085029)) (_1!34930 lt!2085085)) (_2!34930 lt!2085085)))))

(declare-fun b!5045210 () Bool)

(declare-fun res!2149165 () Bool)

(assert (=> b!5045210 (=> (not res!2149165) (not e!3150360))))

(assert (=> b!5045210 (= res!2149165 (= (_1!34930 lt!2085086) (take!833 (ite c!864718 lt!2085024 lt!2085029) (ite c!864718 i!618 (- i!618 lt!2085026)))))))

(assert (= (and d!1623856 c!864795) b!5045208))

(assert (= (and d!1623856 (not c!864795)) b!5045206))

(assert (= (and b!5045206 c!864796) b!5045207))

(assert (= (and b!5045206 (not c!864796)) b!5045209))

(assert (= (and d!1623856 res!2149164) b!5045210))

(assert (= (and b!5045210 res!2149165) b!5045205))

(declare-fun m!6080488 () Bool)

(assert (=> d!1623856 m!6080488))

(declare-fun m!6080490 () Bool)

(assert (=> b!5045205 m!6080490))

(declare-fun m!6080492 () Bool)

(assert (=> b!5045209 m!6080492))

(declare-fun m!6080494 () Bool)

(assert (=> b!5045210 m!6080494))

(assert (=> bm!351458 d!1623856))

(declare-fun b!5045211 () Bool)

(declare-fun e!3150362 () List!58436)

(assert (=> b!5045211 (= e!3150362 (ite c!864718 lt!2085029 (_1!34930 lt!2085023)))))

(declare-fun lt!2085087 () List!58436)

(declare-fun b!5045214 () Bool)

(declare-fun e!3150361 () Bool)

(assert (=> b!5045214 (= e!3150361 (or (not (= (ite c!864718 lt!2085029 (_1!34930 lt!2085023)) Nil!58312)) (= lt!2085087 (ite c!864718 (_2!34930 lt!2085028) lt!2085024))))))

(declare-fun d!1623858 () Bool)

(assert (=> d!1623858 e!3150361))

(declare-fun res!2149167 () Bool)

(assert (=> d!1623858 (=> (not res!2149167) (not e!3150361))))

(assert (=> d!1623858 (= res!2149167 (= (content!10365 lt!2085087) ((_ map or) (content!10365 (ite c!864718 (_2!34930 lt!2085028) lt!2085024)) (content!10365 (ite c!864718 lt!2085029 (_1!34930 lt!2085023))))))))

(assert (=> d!1623858 (= lt!2085087 e!3150362)))

(declare-fun c!864797 () Bool)

(assert (=> d!1623858 (= c!864797 ((_ is Nil!58312) (ite c!864718 (_2!34930 lt!2085028) lt!2085024)))))

(assert (=> d!1623858 (= (++!12737 (ite c!864718 (_2!34930 lt!2085028) lt!2085024) (ite c!864718 lt!2085029 (_1!34930 lt!2085023))) lt!2085087)))

(declare-fun b!5045213 () Bool)

(declare-fun res!2149166 () Bool)

(assert (=> b!5045213 (=> (not res!2149166) (not e!3150361))))

(assert (=> b!5045213 (= res!2149166 (= (size!38929 lt!2085087) (+ (size!38929 (ite c!864718 (_2!34930 lt!2085028) lt!2085024)) (size!38929 (ite c!864718 lt!2085029 (_1!34930 lt!2085023))))))))

(declare-fun b!5045212 () Bool)

(assert (=> b!5045212 (= e!3150362 (Cons!58312 (h!64760 (ite c!864718 (_2!34930 lt!2085028) lt!2085024)) (++!12737 (t!371033 (ite c!864718 (_2!34930 lt!2085028) lt!2085024)) (ite c!864718 lt!2085029 (_1!34930 lt!2085023)))))))

(assert (= (and d!1623858 c!864797) b!5045211))

(assert (= (and d!1623858 (not c!864797)) b!5045212))

(assert (= (and d!1623858 res!2149167) b!5045213))

(assert (= (and b!5045213 res!2149166) b!5045214))

(declare-fun m!6080496 () Bool)

(assert (=> d!1623858 m!6080496))

(declare-fun m!6080498 () Bool)

(assert (=> d!1623858 m!6080498))

(declare-fun m!6080500 () Bool)

(assert (=> d!1623858 m!6080500))

(declare-fun m!6080502 () Bool)

(assert (=> b!5045213 m!6080502))

(declare-fun m!6080504 () Bool)

(assert (=> b!5045213 m!6080504))

(declare-fun m!6080506 () Bool)

(assert (=> b!5045213 m!6080506))

(declare-fun m!6080508 () Bool)

(assert (=> b!5045212 m!6080508))

(assert (=> bm!351457 d!1623858))

(declare-fun b!5045215 () Bool)

(declare-fun res!2149169 () Bool)

(declare-fun e!3150363 () Bool)

(assert (=> b!5045215 (=> (not res!2149169) (not e!3150363))))

(assert (=> b!5045215 (= res!2149169 (<= (- (height!2102 (left!42715 (right!43045 t!4198))) (height!2102 (right!43045 (right!43045 t!4198)))) 1))))

(declare-fun d!1623860 () Bool)

(declare-fun res!2149171 () Bool)

(declare-fun e!3150364 () Bool)

(assert (=> d!1623860 (=> res!2149171 e!3150364)))

(assert (=> d!1623860 (= res!2149171 (not ((_ is Node!15524) (right!43045 t!4198))))))

(assert (=> d!1623860 (= (isBalanced!4386 (right!43045 t!4198)) e!3150364)))

(declare-fun b!5045216 () Bool)

(declare-fun res!2149170 () Bool)

(assert (=> b!5045216 (=> (not res!2149170) (not e!3150363))))

(assert (=> b!5045216 (= res!2149170 (isBalanced!4386 (left!42715 (right!43045 t!4198))))))

(declare-fun b!5045217 () Bool)

(assert (=> b!5045217 (= e!3150363 (not (isEmpty!31553 (right!43045 (right!43045 t!4198)))))))

(declare-fun b!5045218 () Bool)

(declare-fun res!2149168 () Bool)

(assert (=> b!5045218 (=> (not res!2149168) (not e!3150363))))

(assert (=> b!5045218 (= res!2149168 (not (isEmpty!31553 (left!42715 (right!43045 t!4198)))))))

(declare-fun b!5045219 () Bool)

(assert (=> b!5045219 (= e!3150364 e!3150363)))

(declare-fun res!2149172 () Bool)

(assert (=> b!5045219 (=> (not res!2149172) (not e!3150363))))

(assert (=> b!5045219 (= res!2149172 (<= (- 1) (- (height!2102 (left!42715 (right!43045 t!4198))) (height!2102 (right!43045 (right!43045 t!4198))))))))

(declare-fun b!5045220 () Bool)

(declare-fun res!2149173 () Bool)

(assert (=> b!5045220 (=> (not res!2149173) (not e!3150363))))

(assert (=> b!5045220 (= res!2149173 (isBalanced!4386 (right!43045 (right!43045 t!4198))))))

(assert (= (and d!1623860 (not res!2149171)) b!5045219))

(assert (= (and b!5045219 res!2149172) b!5045215))

(assert (= (and b!5045215 res!2149169) b!5045216))

(assert (= (and b!5045216 res!2149170) b!5045220))

(assert (= (and b!5045220 res!2149173) b!5045218))

(assert (= (and b!5045218 res!2149168) b!5045217))

(declare-fun m!6080510 () Bool)

(assert (=> b!5045215 m!6080510))

(declare-fun m!6080512 () Bool)

(assert (=> b!5045215 m!6080512))

(declare-fun m!6080514 () Bool)

(assert (=> b!5045220 m!6080514))

(declare-fun m!6080516 () Bool)

(assert (=> b!5045216 m!6080516))

(assert (=> b!5045219 m!6080510))

(assert (=> b!5045219 m!6080512))

(declare-fun m!6080518 () Bool)

(assert (=> b!5045218 m!6080518))

(declare-fun m!6080520 () Bool)

(assert (=> b!5045217 m!6080520))

(assert (=> b!5044934 d!1623860))

(declare-fun d!1623862 () Bool)

(declare-fun e!3150367 () Bool)

(assert (=> d!1623862 e!3150367))

(declare-fun res!2149174 () Bool)

(assert (=> d!1623862 (=> (not res!2149174) (not e!3150367))))

(declare-fun lt!2085089 () tuple2!63254)

(assert (=> d!1623862 (= res!2149174 (= (++!12737 (_1!34930 lt!2085089) (_2!34930 lt!2085089)) (list!18933 t!4198)))))

(declare-fun e!3150365 () tuple2!63254)

(assert (=> d!1623862 (= lt!2085089 e!3150365)))

(declare-fun c!864798 () Bool)

(assert (=> d!1623862 (= c!864798 ((_ is Nil!58312) (list!18933 t!4198)))))

(assert (=> d!1623862 (= (splitAtIndex!217 (list!18933 t!4198) i!618) lt!2085089)))

(declare-fun b!5045221 () Bool)

(assert (=> b!5045221 (= e!3150367 (= (_2!34930 lt!2085089) (drop!2640 (list!18933 t!4198) i!618)))))

(declare-fun b!5045222 () Bool)

(declare-fun e!3150366 () tuple2!63254)

(assert (=> b!5045222 (= e!3150365 e!3150366)))

(declare-fun c!864799 () Bool)

(assert (=> b!5045222 (= c!864799 (<= i!618 0))))

(declare-fun b!5045223 () Bool)

(assert (=> b!5045223 (= e!3150366 (tuple2!63255 Nil!58312 (list!18933 t!4198)))))

(declare-fun b!5045224 () Bool)

(assert (=> b!5045224 (= e!3150365 (tuple2!63255 Nil!58312 Nil!58312))))

(declare-fun b!5045225 () Bool)

(declare-fun lt!2085088 () tuple2!63254)

(assert (=> b!5045225 (= lt!2085088 (splitAtIndex!217 (t!371033 (list!18933 t!4198)) (- i!618 1)))))

(assert (=> b!5045225 (= e!3150366 (tuple2!63255 (Cons!58312 (h!64760 (list!18933 t!4198)) (_1!34930 lt!2085088)) (_2!34930 lt!2085088)))))

(declare-fun b!5045226 () Bool)

(declare-fun res!2149175 () Bool)

(assert (=> b!5045226 (=> (not res!2149175) (not e!3150367))))

(assert (=> b!5045226 (= res!2149175 (= (_1!34930 lt!2085089) (take!833 (list!18933 t!4198) i!618)))))

(assert (= (and d!1623862 c!864798) b!5045224))

(assert (= (and d!1623862 (not c!864798)) b!5045222))

(assert (= (and b!5045222 c!864799) b!5045223))

(assert (= (and b!5045222 (not c!864799)) b!5045225))

(assert (= (and d!1623862 res!2149174) b!5045226))

(assert (= (and b!5045226 res!2149175) b!5045221))

(declare-fun m!6080522 () Bool)

(assert (=> d!1623862 m!6080522))

(assert (=> b!5045221 m!6080238))

(declare-fun m!6080524 () Bool)

(assert (=> b!5045221 m!6080524))

(declare-fun m!6080526 () Bool)

(assert (=> b!5045225 m!6080526))

(assert (=> b!5045226 m!6080238))

(declare-fun m!6080528 () Bool)

(assert (=> b!5045226 m!6080528))

(assert (=> b!5044925 d!1623862))

(declare-fun b!5045228 () Bool)

(declare-fun e!3150368 () List!58436)

(declare-fun e!3150369 () List!58436)

(assert (=> b!5045228 (= e!3150368 e!3150369)))

(declare-fun c!864801 () Bool)

(assert (=> b!5045228 (= c!864801 ((_ is Leaf!25750) t!4198))))

(declare-fun d!1623864 () Bool)

(declare-fun c!864800 () Bool)

(assert (=> d!1623864 (= c!864800 ((_ is Empty!15524) t!4198))))

(assert (=> d!1623864 (= (list!18933 t!4198) e!3150368)))

(declare-fun b!5045229 () Bool)

(assert (=> b!5045229 (= e!3150369 (list!18935 (xs!18850 t!4198)))))

(declare-fun b!5045230 () Bool)

(assert (=> b!5045230 (= e!3150369 (++!12737 (list!18933 (left!42715 t!4198)) (list!18933 (right!43045 t!4198))))))

(declare-fun b!5045227 () Bool)

(assert (=> b!5045227 (= e!3150368 Nil!58312)))

(assert (= (and d!1623864 c!864800) b!5045227))

(assert (= (and d!1623864 (not c!864800)) b!5045228))

(assert (= (and b!5045228 c!864801) b!5045229))

(assert (= (and b!5045228 (not c!864801)) b!5045230))

(declare-fun m!6080530 () Bool)

(assert (=> b!5045229 m!6080530))

(assert (=> b!5045230 m!6080242))

(assert (=> b!5045230 m!6080250))

(assert (=> b!5045230 m!6080242))

(assert (=> b!5045230 m!6080250))

(declare-fun m!6080532 () Bool)

(assert (=> b!5045230 m!6080532))

(assert (=> b!5044925 d!1623864))

(declare-fun tp!1411645 () Bool)

(declare-fun e!3150374 () Bool)

(declare-fun tp!1411643 () Bool)

(declare-fun b!5045239 () Bool)

(assert (=> b!5045239 (= e!3150374 (and (inv!77216 (left!42715 (left!42715 t!4198))) tp!1411645 (inv!77216 (right!43045 (left!42715 t!4198))) tp!1411643))))

(declare-fun b!5045241 () Bool)

(declare-fun e!3150375 () Bool)

(declare-fun tp!1411644 () Bool)

(assert (=> b!5045241 (= e!3150375 tp!1411644)))

(declare-fun b!5045240 () Bool)

(assert (=> b!5045240 (= e!3150374 (and (inv!77217 (xs!18850 (left!42715 t!4198))) e!3150375))))

(assert (=> b!5044932 (= tp!1411621 (and (inv!77216 (left!42715 t!4198)) e!3150374))))

(assert (= (and b!5044932 ((_ is Node!15524) (left!42715 t!4198))) b!5045239))

(assert (= b!5045240 b!5045241))

(assert (= (and b!5044932 ((_ is Leaf!25750) (left!42715 t!4198))) b!5045240))

(declare-fun m!6080534 () Bool)

(assert (=> b!5045239 m!6080534))

(declare-fun m!6080536 () Bool)

(assert (=> b!5045239 m!6080536))

(declare-fun m!6080538 () Bool)

(assert (=> b!5045240 m!6080538))

(assert (=> b!5044932 m!6080234))

(declare-fun tp!1411648 () Bool)

(declare-fun b!5045242 () Bool)

(declare-fun tp!1411646 () Bool)

(declare-fun e!3150376 () Bool)

(assert (=> b!5045242 (= e!3150376 (and (inv!77216 (left!42715 (right!43045 t!4198))) tp!1411648 (inv!77216 (right!43045 (right!43045 t!4198))) tp!1411646))))

(declare-fun b!5045244 () Bool)

(declare-fun e!3150377 () Bool)

(declare-fun tp!1411647 () Bool)

(assert (=> b!5045244 (= e!3150377 tp!1411647)))

(declare-fun b!5045243 () Bool)

(assert (=> b!5045243 (= e!3150376 (and (inv!77217 (xs!18850 (right!43045 t!4198))) e!3150377))))

(assert (=> b!5044932 (= tp!1411619 (and (inv!77216 (right!43045 t!4198)) e!3150376))))

(assert (= (and b!5044932 ((_ is Node!15524) (right!43045 t!4198))) b!5045242))

(assert (= b!5045243 b!5045244))

(assert (= (and b!5044932 ((_ is Leaf!25750) (right!43045 t!4198))) b!5045243))

(declare-fun m!6080540 () Bool)

(assert (=> b!5045242 m!6080540))

(declare-fun m!6080542 () Bool)

(assert (=> b!5045242 m!6080542))

(declare-fun m!6080544 () Bool)

(assert (=> b!5045243 m!6080544))

(assert (=> b!5044932 m!6080236))

(declare-fun b!5045249 () Bool)

(declare-fun e!3150380 () Bool)

(declare-fun tp_is_empty!36811 () Bool)

(declare-fun tp!1411651 () Bool)

(assert (=> b!5045249 (= e!3150380 (and tp_is_empty!36811 tp!1411651))))

(assert (=> b!5044935 (= tp!1411620 e!3150380)))

(assert (= (and b!5044935 ((_ is Cons!58312) (innerList!15612 (xs!18850 t!4198)))) b!5045249))

(check-sat (not b!5045229) (not b!5045205) (not b!5045158) (not b!5045156) (not b!5044978) (not b!5045212) (not b!5045200) (not b!5044972) (not bm!351470) (not b!5044973) (not b!5044932) (not b!5044980) (not d!1623834) (not b!5045003) (not b!5045220) (not b!5045241) (not b!5045249) (not b!5044944) (not bm!351469) (not b!5045160) (not b!5045240) (not b!5045230) (not b!5045033) (not b!5044947) (not b!5045199) (not b!5045226) tp_is_empty!36811 (not b!5045225) (not b!5045203) (not b!5045219) (not b!5044975) (not d!1623812) (not d!1623790) (not b!5045218) (not b!5045210) (not d!1623810) (not b!5045213) (not b!5045221) (not b!5045217) (not b!5045004) (not b!5045094) (not d!1623862) (not b!5045198) (not b!5045242) (not b!5045037) (not b!5044974) (not b!5045244) (not b!5045032) (not d!1623856) (not d!1623806) (not b!5045243) (not b!5045216) (not b!5044977) (not b!5045239) (not b!5044945) (not b!5045090) (not b!5045193) (not b!5045038) (not b!5044942) (not d!1623820) (not b!5045215) (not b!5045201) (not b!5045209) (not d!1623858) (not b!5045202) (not b!5044976) (not b!5045095))
(check-sat)
