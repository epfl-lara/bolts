; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533266 () Bool)

(assert start!533266)

(declare-fun b!5040918 () Bool)

(declare-fun e!3148087 () Bool)

(declare-datatypes ((T!104208 0))(
  ( (T!104209 (val!23518 Int)) )
))
(declare-datatypes ((List!58428 0))(
  ( (Nil!58304) (Cons!58304 (h!64752 T!104208) (t!370985 List!58428)) )
))
(declare-datatypes ((IArray!31093 0))(
  ( (IArray!31094 (innerList!15604 List!58428)) )
))
(declare-datatypes ((Conc!15516 0))(
  ( (Node!15516 (left!42703 Conc!15516) (right!43033 Conc!15516) (csize!31262 Int) (cheight!15727 Int)) (Leaf!25738 (xs!18842 IArray!31093) (csize!31263 Int)) (Empty!15516) )
))
(declare-fun t!4198 () Conc!15516)

(declare-fun i!618 () Int)

(declare-fun inv!77172 (Conc!15516) Bool)

(declare-fun slice!852 (IArray!31093 Int Int) IArray!31093)

(assert (=> b!5040918 (= e!3148087 (inv!77172 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))

(declare-fun b!5040919 () Bool)

(declare-fun res!2147658 () Bool)

(declare-fun e!3148090 () Bool)

(assert (=> b!5040919 (=> (not res!2147658) (not e!3148090))))

(assert (=> b!5040919 (= res!2147658 (<= 0 i!618))))

(declare-fun b!5040920 () Bool)

(declare-fun res!2147656 () Bool)

(assert (=> b!5040920 (=> (not res!2147656) (not e!3148090))))

(declare-fun size!38906 (Conc!15516) Int)

(assert (=> b!5040920 (= res!2147656 (<= i!618 (size!38906 t!4198)))))

(declare-fun b!5040921 () Bool)

(declare-fun e!3148089 () Bool)

(declare-fun e!3148092 () Bool)

(assert (=> b!5040921 (= e!3148089 e!3148092)))

(declare-fun res!2147657 () Bool)

(assert (=> b!5040921 (=> (not res!2147657) (not e!3148092))))

(declare-datatypes ((tuple2!63242 0))(
  ( (tuple2!63243 (_1!34924 List!58428) (_2!34924 List!58428)) )
))
(declare-fun lt!2084339 () tuple2!63242)

(declare-fun lt!2084338 () List!58428)

(assert (=> b!5040921 (= res!2147657 (= (_2!34924 lt!2084339) lt!2084338))))

(declare-fun lt!2084337 () List!58428)

(declare-fun drop!2634 (List!58428 Int) List!58428)

(assert (=> b!5040921 (= lt!2084338 (drop!2634 lt!2084337 i!618))))

(declare-fun b!5040922 () Bool)

(assert (=> b!5040922 (= e!3148092 (not e!3148087))))

(declare-fun res!2147659 () Bool)

(assert (=> b!5040922 (=> res!2147659 e!3148087)))

(declare-fun slice!853 (List!58428 Int Int) List!58428)

(assert (=> b!5040922 (= res!2147659 (not (= (_1!34924 lt!2084339) (slice!853 lt!2084337 0 i!618))))))

(declare-fun size!38907 (List!58428) Int)

(assert (=> b!5040922 (= lt!2084338 (slice!853 lt!2084337 i!618 (size!38907 lt!2084337)))))

(declare-datatypes ((Unit!149491 0))(
  ( (Unit!149492) )
))
(declare-fun lt!2084336 () Unit!149491)

(declare-fun dropLemma!72 (List!58428 Int) Unit!149491)

(assert (=> b!5040922 (= lt!2084336 (dropLemma!72 lt!2084337 i!618))))

(declare-fun b!5040923 () Bool)

(declare-fun res!2147661 () Bool)

(assert (=> b!5040923 (=> (not res!2147661) (not e!3148090))))

(get-info :version)

(assert (=> b!5040923 (= res!2147661 (and (not ((_ is Empty!15516) t!4198)) ((_ is Leaf!25738) t!4198) (> i!618 0) (not (= i!618 (csize!31263 t!4198)))))))

(declare-fun b!5040924 () Bool)

(declare-fun e!3148091 () Bool)

(declare-fun e!3148088 () Bool)

(declare-fun inv!77173 (IArray!31093) Bool)

(assert (=> b!5040924 (= e!3148091 (and (inv!77173 (xs!18842 t!4198)) e!3148088))))

(declare-fun tp!1411097 () Bool)

(declare-fun b!5040925 () Bool)

(declare-fun tp!1411098 () Bool)

(assert (=> b!5040925 (= e!3148091 (and (inv!77172 (left!42703 t!4198)) tp!1411097 (inv!77172 (right!43033 t!4198)) tp!1411098))))

(declare-fun res!2147660 () Bool)

(assert (=> start!533266 (=> (not res!2147660) (not e!3148090))))

(declare-fun isBalanced!4378 (Conc!15516) Bool)

(assert (=> start!533266 (= res!2147660 (isBalanced!4378 t!4198))))

(assert (=> start!533266 e!3148090))

(assert (=> start!533266 (and (inv!77172 t!4198) e!3148091)))

(assert (=> start!533266 true))

(declare-fun b!5040926 () Bool)

(declare-fun tp!1411099 () Bool)

(assert (=> b!5040926 (= e!3148088 tp!1411099)))

(declare-fun b!5040927 () Bool)

(assert (=> b!5040927 (= e!3148090 e!3148089)))

(declare-fun res!2147655 () Bool)

(assert (=> b!5040927 (=> (not res!2147655) (not e!3148089))))

(declare-fun take!827 (List!58428 Int) List!58428)

(assert (=> b!5040927 (= res!2147655 (= (_1!34924 lt!2084339) (take!827 lt!2084337 i!618)))))

(declare-fun splitAtIndex!211 (List!58428 Int) tuple2!63242)

(assert (=> b!5040927 (= lt!2084339 (splitAtIndex!211 lt!2084337 i!618))))

(declare-fun list!18917 (IArray!31093) List!58428)

(assert (=> b!5040927 (= lt!2084337 (list!18917 (xs!18842 t!4198)))))

(assert (= (and start!533266 res!2147660) b!5040919))

(assert (= (and b!5040919 res!2147658) b!5040920))

(assert (= (and b!5040920 res!2147656) b!5040923))

(assert (= (and b!5040923 res!2147661) b!5040927))

(assert (= (and b!5040927 res!2147655) b!5040921))

(assert (= (and b!5040921 res!2147657) b!5040922))

(assert (= (and b!5040922 (not res!2147659)) b!5040918))

(assert (= (and start!533266 ((_ is Node!15516) t!4198)) b!5040925))

(assert (= b!5040924 b!5040926))

(assert (= (and start!533266 ((_ is Leaf!25738) t!4198)) b!5040924))

(declare-fun m!6075030 () Bool)

(assert (=> b!5040918 m!6075030))

(declare-fun m!6075032 () Bool)

(assert (=> b!5040918 m!6075032))

(declare-fun m!6075034 () Bool)

(assert (=> b!5040927 m!6075034))

(declare-fun m!6075036 () Bool)

(assert (=> b!5040927 m!6075036))

(declare-fun m!6075038 () Bool)

(assert (=> b!5040927 m!6075038))

(declare-fun m!6075040 () Bool)

(assert (=> b!5040922 m!6075040))

(declare-fun m!6075042 () Bool)

(assert (=> b!5040922 m!6075042))

(assert (=> b!5040922 m!6075042))

(declare-fun m!6075044 () Bool)

(assert (=> b!5040922 m!6075044))

(declare-fun m!6075046 () Bool)

(assert (=> b!5040922 m!6075046))

(declare-fun m!6075048 () Bool)

(assert (=> start!533266 m!6075048))

(declare-fun m!6075050 () Bool)

(assert (=> start!533266 m!6075050))

(declare-fun m!6075052 () Bool)

(assert (=> b!5040921 m!6075052))

(declare-fun m!6075054 () Bool)

(assert (=> b!5040924 m!6075054))

(declare-fun m!6075056 () Bool)

(assert (=> b!5040925 m!6075056))

(declare-fun m!6075058 () Bool)

(assert (=> b!5040925 m!6075058))

(declare-fun m!6075060 () Bool)

(assert (=> b!5040920 m!6075060))

(check-sat (not b!5040927) (not b!5040921) (not b!5040924) (not b!5040922) (not b!5040918) (not b!5040925) (not b!5040920) (not start!533266) (not b!5040926))
(check-sat)
(get-model)

(declare-fun d!1621688 () Bool)

(declare-fun c!863696 () Bool)

(assert (=> d!1621688 (= c!863696 ((_ is Node!15516) (left!42703 t!4198)))))

(declare-fun e!3148101 () Bool)

(assert (=> d!1621688 (= (inv!77172 (left!42703 t!4198)) e!3148101)))

(declare-fun b!5040946 () Bool)

(declare-fun inv!77176 (Conc!15516) Bool)

(assert (=> b!5040946 (= e!3148101 (inv!77176 (left!42703 t!4198)))))

(declare-fun b!5040947 () Bool)

(declare-fun e!3148102 () Bool)

(assert (=> b!5040947 (= e!3148101 e!3148102)))

(declare-fun res!2147676 () Bool)

(assert (=> b!5040947 (= res!2147676 (not ((_ is Leaf!25738) (left!42703 t!4198))))))

(assert (=> b!5040947 (=> res!2147676 e!3148102)))

(declare-fun b!5040948 () Bool)

(declare-fun inv!77177 (Conc!15516) Bool)

(assert (=> b!5040948 (= e!3148102 (inv!77177 (left!42703 t!4198)))))

(assert (= (and d!1621688 c!863696) b!5040946))

(assert (= (and d!1621688 (not c!863696)) b!5040947))

(assert (= (and b!5040947 (not res!2147676)) b!5040948))

(declare-fun m!6075062 () Bool)

(assert (=> b!5040946 m!6075062))

(declare-fun m!6075064 () Bool)

(assert (=> b!5040948 m!6075064))

(assert (=> b!5040925 d!1621688))

(declare-fun d!1621690 () Bool)

(declare-fun c!863697 () Bool)

(assert (=> d!1621690 (= c!863697 ((_ is Node!15516) (right!43033 t!4198)))))

(declare-fun e!3148103 () Bool)

(assert (=> d!1621690 (= (inv!77172 (right!43033 t!4198)) e!3148103)))

(declare-fun b!5040949 () Bool)

(assert (=> b!5040949 (= e!3148103 (inv!77176 (right!43033 t!4198)))))

(declare-fun b!5040950 () Bool)

(declare-fun e!3148104 () Bool)

(assert (=> b!5040950 (= e!3148103 e!3148104)))

(declare-fun res!2147677 () Bool)

(assert (=> b!5040950 (= res!2147677 (not ((_ is Leaf!25738) (right!43033 t!4198))))))

(assert (=> b!5040950 (=> res!2147677 e!3148104)))

(declare-fun b!5040951 () Bool)

(assert (=> b!5040951 (= e!3148104 (inv!77177 (right!43033 t!4198)))))

(assert (= (and d!1621690 c!863697) b!5040949))

(assert (= (and d!1621690 (not c!863697)) b!5040950))

(assert (= (and b!5040950 (not res!2147677)) b!5040951))

(declare-fun m!6075066 () Bool)

(assert (=> b!5040949 m!6075066))

(declare-fun m!6075068 () Bool)

(assert (=> b!5040951 m!6075068))

(assert (=> b!5040925 d!1621690))

(declare-fun d!1621692 () Bool)

(assert (=> d!1621692 (= (inv!77173 (xs!18842 t!4198)) (<= (size!38907 (innerList!15604 (xs!18842 t!4198))) 2147483647))))

(declare-fun bs!1188920 () Bool)

(assert (= bs!1188920 d!1621692))

(declare-fun m!6075080 () Bool)

(assert (=> bs!1188920 m!6075080))

(assert (=> b!5040924 d!1621692))

(declare-fun b!5040991 () Bool)

(declare-fun e!3148127 () Int)

(declare-fun e!3148130 () Int)

(assert (=> b!5040991 (= e!3148127 e!3148130)))

(declare-fun c!863714 () Bool)

(declare-fun call!351410 () Int)

(assert (=> b!5040991 (= c!863714 (>= i!618 call!351410))))

(declare-fun b!5040992 () Bool)

(assert (=> b!5040992 (= e!3148130 (- call!351410 i!618))))

(declare-fun b!5040993 () Bool)

(declare-fun e!3148128 () List!58428)

(declare-fun e!3148129 () List!58428)

(assert (=> b!5040993 (= e!3148128 e!3148129)))

(declare-fun c!863715 () Bool)

(assert (=> b!5040993 (= c!863715 (<= i!618 0))))

(declare-fun b!5040994 () Bool)

(assert (=> b!5040994 (= e!3148127 call!351410)))

(declare-fun b!5040995 () Bool)

(declare-fun e!3148126 () Bool)

(declare-fun lt!2084345 () List!58428)

(assert (=> b!5040995 (= e!3148126 (= (size!38907 lt!2084345) e!3148127))))

(declare-fun c!863713 () Bool)

(assert (=> b!5040995 (= c!863713 (<= i!618 0))))

(declare-fun b!5040996 () Bool)

(assert (=> b!5040996 (= e!3148129 (drop!2634 (t!370985 lt!2084337) (- i!618 1)))))

(declare-fun b!5040997 () Bool)

(assert (=> b!5040997 (= e!3148129 lt!2084337)))

(declare-fun d!1621696 () Bool)

(assert (=> d!1621696 e!3148126))

(declare-fun res!2147689 () Bool)

(assert (=> d!1621696 (=> (not res!2147689) (not e!3148126))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10356 (List!58428) (InoxSet T!104208))

(assert (=> d!1621696 (= res!2147689 (= ((_ map implies) (content!10356 lt!2084345) (content!10356 lt!2084337)) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1621696 (= lt!2084345 e!3148128)))

(declare-fun c!863712 () Bool)

(assert (=> d!1621696 (= c!863712 ((_ is Nil!58304) lt!2084337))))

(assert (=> d!1621696 (= (drop!2634 lt!2084337 i!618) lt!2084345)))

(declare-fun bm!351405 () Bool)

(assert (=> bm!351405 (= call!351410 (size!38907 lt!2084337))))

(declare-fun b!5040998 () Bool)

(assert (=> b!5040998 (= e!3148128 Nil!58304)))

(declare-fun b!5040999 () Bool)

(assert (=> b!5040999 (= e!3148130 0)))

(assert (= (and d!1621696 c!863712) b!5040998))

(assert (= (and d!1621696 (not c!863712)) b!5040993))

(assert (= (and b!5040993 c!863715) b!5040997))

(assert (= (and b!5040993 (not c!863715)) b!5040996))

(assert (= (and d!1621696 res!2147689) b!5040995))

(assert (= (and b!5040995 c!863713) b!5040994))

(assert (= (and b!5040995 (not c!863713)) b!5040991))

(assert (= (and b!5040991 c!863714) b!5040999))

(assert (= (and b!5040991 (not c!863714)) b!5040992))

(assert (= (or b!5040994 b!5040991 b!5040992) bm!351405))

(declare-fun m!6075096 () Bool)

(assert (=> b!5040995 m!6075096))

(declare-fun m!6075098 () Bool)

(assert (=> b!5040996 m!6075098))

(declare-fun m!6075100 () Bool)

(assert (=> d!1621696 m!6075100))

(declare-fun m!6075102 () Bool)

(assert (=> d!1621696 m!6075102))

(assert (=> bm!351405 m!6075042))

(assert (=> b!5040921 d!1621696))

(declare-fun d!1621706 () Bool)

(declare-fun lt!2084350 () Int)

(declare-fun list!18919 (Conc!15516) List!58428)

(assert (=> d!1621706 (= lt!2084350 (size!38907 (list!18919 t!4198)))))

(assert (=> d!1621706 (= lt!2084350 (ite ((_ is Empty!15516) t!4198) 0 (ite ((_ is Leaf!25738) t!4198) (csize!31263 t!4198) (csize!31262 t!4198))))))

(assert (=> d!1621706 (= (size!38906 t!4198) lt!2084350)))

(declare-fun bs!1188923 () Bool)

(assert (= bs!1188923 d!1621706))

(declare-fun m!6075104 () Bool)

(assert (=> bs!1188923 m!6075104))

(assert (=> bs!1188923 m!6075104))

(declare-fun m!6075106 () Bool)

(assert (=> bs!1188923 m!6075106))

(assert (=> b!5040920 d!1621706))

(declare-fun d!1621708 () Bool)

(assert (=> d!1621708 (= (slice!853 lt!2084337 0 i!618) (take!827 (drop!2634 lt!2084337 0) (- i!618 0)))))

(declare-fun bs!1188924 () Bool)

(assert (= bs!1188924 d!1621708))

(declare-fun m!6075110 () Bool)

(assert (=> bs!1188924 m!6075110))

(assert (=> bs!1188924 m!6075110))

(declare-fun m!6075112 () Bool)

(assert (=> bs!1188924 m!6075112))

(assert (=> b!5040922 d!1621708))

(declare-fun d!1621712 () Bool)

(assert (=> d!1621712 (= (slice!853 lt!2084337 i!618 (size!38907 lt!2084337)) (take!827 (drop!2634 lt!2084337 i!618) (- (size!38907 lt!2084337) i!618)))))

(declare-fun bs!1188925 () Bool)

(assert (= bs!1188925 d!1621712))

(assert (=> bs!1188925 m!6075052))

(assert (=> bs!1188925 m!6075052))

(declare-fun m!6075114 () Bool)

(assert (=> bs!1188925 m!6075114))

(assert (=> b!5040922 d!1621712))

(declare-fun d!1621714 () Bool)

(declare-fun lt!2084357 () Int)

(assert (=> d!1621714 (>= lt!2084357 0)))

(declare-fun e!3148140 () Int)

(assert (=> d!1621714 (= lt!2084357 e!3148140)))

(declare-fun c!863720 () Bool)

(assert (=> d!1621714 (= c!863720 ((_ is Nil!58304) lt!2084337))))

(assert (=> d!1621714 (= (size!38907 lt!2084337) lt!2084357)))

(declare-fun b!5041013 () Bool)

(assert (=> b!5041013 (= e!3148140 0)))

(declare-fun b!5041014 () Bool)

(assert (=> b!5041014 (= e!3148140 (+ 1 (size!38907 (t!370985 lt!2084337))))))

(assert (= (and d!1621714 c!863720) b!5041013))

(assert (= (and d!1621714 (not c!863720)) b!5041014))

(declare-fun m!6075128 () Bool)

(assert (=> b!5041014 m!6075128))

(assert (=> b!5040922 d!1621714))

(declare-fun d!1621722 () Bool)

(assert (=> d!1621722 (= (drop!2634 lt!2084337 i!618) (slice!853 lt!2084337 i!618 (size!38907 lt!2084337)))))

(declare-fun lt!2084362 () Unit!149491)

(declare-fun choose!37254 (List!58428 Int) Unit!149491)

(assert (=> d!1621722 (= lt!2084362 (choose!37254 lt!2084337 i!618))))

(declare-fun e!3148147 () Bool)

(assert (=> d!1621722 e!3148147))

(declare-fun res!2147697 () Bool)

(assert (=> d!1621722 (=> (not res!2147697) (not e!3148147))))

(assert (=> d!1621722 (= res!2147697 (<= 0 i!618))))

(assert (=> d!1621722 (= (dropLemma!72 lt!2084337 i!618) lt!2084362)))

(declare-fun b!5041025 () Bool)

(assert (=> b!5041025 (= e!3148147 (<= i!618 (size!38907 lt!2084337)))))

(assert (= (and d!1621722 res!2147697) b!5041025))

(assert (=> d!1621722 m!6075052))

(assert (=> d!1621722 m!6075042))

(assert (=> d!1621722 m!6075042))

(assert (=> d!1621722 m!6075044))

(declare-fun m!6075130 () Bool)

(assert (=> d!1621722 m!6075130))

(assert (=> b!5041025 m!6075042))

(assert (=> b!5040922 d!1621722))

(declare-fun b!5041057 () Bool)

(declare-fun res!2147716 () Bool)

(declare-fun e!3148164 () Bool)

(assert (=> b!5041057 (=> (not res!2147716) (not e!3148164))))

(assert (=> b!5041057 (= res!2147716 (isBalanced!4378 (right!43033 t!4198)))))

(declare-fun b!5041058 () Bool)

(declare-fun e!3148163 () Bool)

(assert (=> b!5041058 (= e!3148163 e!3148164)))

(declare-fun res!2147717 () Bool)

(assert (=> b!5041058 (=> (not res!2147717) (not e!3148164))))

(declare-fun height!2095 (Conc!15516) Int)

(assert (=> b!5041058 (= res!2147717 (<= (- 1) (- (height!2095 (left!42703 t!4198)) (height!2095 (right!43033 t!4198)))))))

(declare-fun b!5041060 () Bool)

(declare-fun isEmpty!31538 (Conc!15516) Bool)

(assert (=> b!5041060 (= e!3148164 (not (isEmpty!31538 (right!43033 t!4198))))))

(declare-fun b!5041061 () Bool)

(declare-fun res!2147715 () Bool)

(assert (=> b!5041061 (=> (not res!2147715) (not e!3148164))))

(assert (=> b!5041061 (= res!2147715 (<= (- (height!2095 (left!42703 t!4198)) (height!2095 (right!43033 t!4198))) 1))))

(declare-fun b!5041062 () Bool)

(declare-fun res!2147714 () Bool)

(assert (=> b!5041062 (=> (not res!2147714) (not e!3148164))))

(assert (=> b!5041062 (= res!2147714 (isBalanced!4378 (left!42703 t!4198)))))

(declare-fun b!5041059 () Bool)

(declare-fun res!2147713 () Bool)

(assert (=> b!5041059 (=> (not res!2147713) (not e!3148164))))

(assert (=> b!5041059 (= res!2147713 (not (isEmpty!31538 (left!42703 t!4198))))))

(declare-fun d!1621724 () Bool)

(declare-fun res!2147718 () Bool)

(assert (=> d!1621724 (=> res!2147718 e!3148163)))

(assert (=> d!1621724 (= res!2147718 (not ((_ is Node!15516) t!4198)))))

(assert (=> d!1621724 (= (isBalanced!4378 t!4198) e!3148163)))

(assert (= (and d!1621724 (not res!2147718)) b!5041058))

(assert (= (and b!5041058 res!2147717) b!5041061))

(assert (= (and b!5041061 res!2147715) b!5041062))

(assert (= (and b!5041062 res!2147714) b!5041057))

(assert (= (and b!5041057 res!2147716) b!5041059))

(assert (= (and b!5041059 res!2147713) b!5041060))

(declare-fun m!6075142 () Bool)

(assert (=> b!5041061 m!6075142))

(declare-fun m!6075144 () Bool)

(assert (=> b!5041061 m!6075144))

(declare-fun m!6075146 () Bool)

(assert (=> b!5041059 m!6075146))

(assert (=> b!5041058 m!6075142))

(assert (=> b!5041058 m!6075144))

(declare-fun m!6075148 () Bool)

(assert (=> b!5041062 m!6075148))

(declare-fun m!6075150 () Bool)

(assert (=> b!5041057 m!6075150))

(declare-fun m!6075152 () Bool)

(assert (=> b!5041060 m!6075152))

(assert (=> start!533266 d!1621724))

(declare-fun d!1621730 () Bool)

(declare-fun c!863735 () Bool)

(assert (=> d!1621730 (= c!863735 ((_ is Node!15516) t!4198))))

(declare-fun e!3148167 () Bool)

(assert (=> d!1621730 (= (inv!77172 t!4198) e!3148167)))

(declare-fun b!5041067 () Bool)

(assert (=> b!5041067 (= e!3148167 (inv!77176 t!4198))))

(declare-fun b!5041068 () Bool)

(declare-fun e!3148168 () Bool)

(assert (=> b!5041068 (= e!3148167 e!3148168)))

(declare-fun res!2147719 () Bool)

(assert (=> b!5041068 (= res!2147719 (not ((_ is Leaf!25738) t!4198)))))

(assert (=> b!5041068 (=> res!2147719 e!3148168)))

(declare-fun b!5041069 () Bool)

(assert (=> b!5041069 (= e!3148168 (inv!77177 t!4198))))

(assert (= (and d!1621730 c!863735) b!5041067))

(assert (= (and d!1621730 (not c!863735)) b!5041068))

(assert (= (and b!5041068 (not res!2147719)) b!5041069))

(declare-fun m!6075154 () Bool)

(assert (=> b!5041067 m!6075154))

(declare-fun m!6075156 () Bool)

(assert (=> b!5041069 m!6075156))

(assert (=> start!533266 d!1621730))

(declare-fun d!1621732 () Bool)

(declare-fun e!3148193 () Bool)

(assert (=> d!1621732 e!3148193))

(declare-fun res!2147725 () Bool)

(assert (=> d!1621732 (=> (not res!2147725) (not e!3148193))))

(declare-fun lt!2084373 () List!58428)

(assert (=> d!1621732 (= res!2147725 (= ((_ map implies) (content!10356 lt!2084373) (content!10356 lt!2084337)) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148194 () List!58428)

(assert (=> d!1621732 (= lt!2084373 e!3148194)))

(declare-fun c!863755 () Bool)

(assert (=> d!1621732 (= c!863755 (or ((_ is Nil!58304) lt!2084337) (<= i!618 0)))))

(assert (=> d!1621732 (= (take!827 lt!2084337 i!618) lt!2084373)))

(declare-fun b!5041109 () Bool)

(declare-fun e!3148191 () Int)

(assert (=> b!5041109 (= e!3148191 (size!38907 lt!2084337))))

(declare-fun b!5041110 () Bool)

(declare-fun e!3148192 () Int)

(assert (=> b!5041110 (= e!3148192 e!3148191)))

(declare-fun c!863753 () Bool)

(assert (=> b!5041110 (= c!863753 (>= i!618 (size!38907 lt!2084337)))))

(declare-fun b!5041111 () Bool)

(assert (=> b!5041111 (= e!3148191 i!618)))

(declare-fun b!5041112 () Bool)

(assert (=> b!5041112 (= e!3148193 (= (size!38907 lt!2084373) e!3148192))))

(declare-fun c!863754 () Bool)

(assert (=> b!5041112 (= c!863754 (<= i!618 0))))

(declare-fun b!5041113 () Bool)

(assert (=> b!5041113 (= e!3148194 (Cons!58304 (h!64752 lt!2084337) (take!827 (t!370985 lt!2084337) (- i!618 1))))))

(declare-fun b!5041114 () Bool)

(assert (=> b!5041114 (= e!3148194 Nil!58304)))

(declare-fun b!5041115 () Bool)

(assert (=> b!5041115 (= e!3148192 0)))

(assert (= (and d!1621732 c!863755) b!5041114))

(assert (= (and d!1621732 (not c!863755)) b!5041113))

(assert (= (and d!1621732 res!2147725) b!5041112))

(assert (= (and b!5041112 c!863754) b!5041115))

(assert (= (and b!5041112 (not c!863754)) b!5041110))

(assert (= (and b!5041110 c!863753) b!5041109))

(assert (= (and b!5041110 (not c!863753)) b!5041111))

(declare-fun m!6075164 () Bool)

(assert (=> d!1621732 m!6075164))

(assert (=> d!1621732 m!6075102))

(declare-fun m!6075166 () Bool)

(assert (=> b!5041113 m!6075166))

(declare-fun m!6075168 () Bool)

(assert (=> b!5041112 m!6075168))

(assert (=> b!5041110 m!6075042))

(assert (=> b!5041109 m!6075042))

(assert (=> b!5040927 d!1621732))

(declare-fun lt!2084384 () tuple2!63242)

(declare-fun e!3148220 () Bool)

(declare-fun b!5041157 () Bool)

(assert (=> b!5041157 (= e!3148220 (= (_2!34924 lt!2084384) (drop!2634 lt!2084337 i!618)))))

(declare-fun b!5041158 () Bool)

(declare-fun res!2147741 () Bool)

(assert (=> b!5041158 (=> (not res!2147741) (not e!3148220))))

(assert (=> b!5041158 (= res!2147741 (= (_1!34924 lt!2084384) (take!827 lt!2084337 i!618)))))

(declare-fun b!5041159 () Bool)

(declare-fun e!3148218 () tuple2!63242)

(assert (=> b!5041159 (= e!3148218 (tuple2!63243 Nil!58304 lt!2084337))))

(declare-fun b!5041160 () Bool)

(declare-fun lt!2084383 () tuple2!63242)

(assert (=> b!5041160 (= lt!2084383 (splitAtIndex!211 (t!370985 lt!2084337) (- i!618 1)))))

(assert (=> b!5041160 (= e!3148218 (tuple2!63243 (Cons!58304 (h!64752 lt!2084337) (_1!34924 lt!2084383)) (_2!34924 lt!2084383)))))

(declare-fun d!1621736 () Bool)

(assert (=> d!1621736 e!3148220))

(declare-fun res!2147740 () Bool)

(assert (=> d!1621736 (=> (not res!2147740) (not e!3148220))))

(declare-fun ++!12729 (List!58428 List!58428) List!58428)

(assert (=> d!1621736 (= res!2147740 (= (++!12729 (_1!34924 lt!2084384) (_2!34924 lt!2084384)) lt!2084337))))

(declare-fun e!3148219 () tuple2!63242)

(assert (=> d!1621736 (= lt!2084384 e!3148219)))

(declare-fun c!863764 () Bool)

(assert (=> d!1621736 (= c!863764 ((_ is Nil!58304) lt!2084337))))

(assert (=> d!1621736 (= (splitAtIndex!211 lt!2084337 i!618) lt!2084384)))

(declare-fun b!5041161 () Bool)

(assert (=> b!5041161 (= e!3148219 e!3148218)))

(declare-fun c!863763 () Bool)

(assert (=> b!5041161 (= c!863763 (<= i!618 0))))

(declare-fun b!5041162 () Bool)

(assert (=> b!5041162 (= e!3148219 (tuple2!63243 Nil!58304 Nil!58304))))

(assert (= (and d!1621736 c!863764) b!5041162))

(assert (= (and d!1621736 (not c!863764)) b!5041161))

(assert (= (and b!5041161 c!863763) b!5041159))

(assert (= (and b!5041161 (not c!863763)) b!5041160))

(assert (= (and d!1621736 res!2147740) b!5041158))

(assert (= (and b!5041158 res!2147741) b!5041157))

(assert (=> b!5041157 m!6075052))

(assert (=> b!5041158 m!6075034))

(declare-fun m!6075184 () Bool)

(assert (=> b!5041160 m!6075184))

(declare-fun m!6075186 () Bool)

(assert (=> d!1621736 m!6075186))

(assert (=> b!5040927 d!1621736))

(declare-fun d!1621744 () Bool)

(assert (=> d!1621744 (= (list!18917 (xs!18842 t!4198)) (innerList!15604 (xs!18842 t!4198)))))

(assert (=> b!5040927 d!1621744))

(declare-fun d!1621746 () Bool)

(declare-fun c!863765 () Bool)

(assert (=> d!1621746 (= c!863765 ((_ is Node!15516) (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))

(declare-fun e!3148225 () Bool)

(assert (=> d!1621746 (= (inv!77172 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) e!3148225)))

(declare-fun b!5041169 () Bool)

(assert (=> b!5041169 (= e!3148225 (inv!77176 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))

(declare-fun b!5041170 () Bool)

(declare-fun e!3148226 () Bool)

(assert (=> b!5041170 (= e!3148225 e!3148226)))

(declare-fun res!2147742 () Bool)

(assert (=> b!5041170 (= res!2147742 (not ((_ is Leaf!25738) (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))

(assert (=> b!5041170 (=> res!2147742 e!3148226)))

(declare-fun b!5041171 () Bool)

(assert (=> b!5041171 (= e!3148226 (inv!77177 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))

(assert (= (and d!1621746 c!863765) b!5041169))

(assert (= (and d!1621746 (not c!863765)) b!5041170))

(assert (= (and b!5041170 (not res!2147742)) b!5041171))

(declare-fun m!6075200 () Bool)

(assert (=> b!5041169 m!6075200))

(declare-fun m!6075202 () Bool)

(assert (=> b!5041171 m!6075202))

(assert (=> b!5040918 d!1621746))

(declare-fun d!1621748 () Bool)

(declare-fun lt!2084387 () IArray!31093)

(assert (=> d!1621748 (= lt!2084387 (IArray!31094 (slice!853 (list!18917 (xs!18842 t!4198)) 0 i!618)))))

(declare-fun choose!37256 (IArray!31093 Int Int) IArray!31093)

(assert (=> d!1621748 (= lt!2084387 (choose!37256 (xs!18842 t!4198) 0 i!618))))

(declare-fun e!3148229 () Bool)

(assert (=> d!1621748 e!3148229))

(declare-fun res!2147745 () Bool)

(assert (=> d!1621748 (=> (not res!2147745) (not e!3148229))))

(assert (=> d!1621748 (= res!2147745 (and (<= 0 0) (<= 0 i!618)))))

(assert (=> d!1621748 (= (slice!852 (xs!18842 t!4198) 0 i!618) lt!2084387)))

(declare-fun b!5041174 () Bool)

(declare-fun size!38909 (IArray!31093) Int)

(assert (=> b!5041174 (= e!3148229 (<= i!618 (size!38909 (xs!18842 t!4198))))))

(assert (= (and d!1621748 res!2147745) b!5041174))

(assert (=> d!1621748 m!6075038))

(assert (=> d!1621748 m!6075038))

(declare-fun m!6075204 () Bool)

(assert (=> d!1621748 m!6075204))

(declare-fun m!6075206 () Bool)

(assert (=> d!1621748 m!6075206))

(declare-fun m!6075208 () Bool)

(assert (=> b!5041174 m!6075208))

(assert (=> b!5040918 d!1621748))

(declare-fun tp!1411123 () Bool)

(declare-fun b!5041183 () Bool)

(declare-fun e!3148234 () Bool)

(declare-fun tp!1411122 () Bool)

(assert (=> b!5041183 (= e!3148234 (and (inv!77172 (left!42703 (left!42703 t!4198))) tp!1411123 (inv!77172 (right!43033 (left!42703 t!4198))) tp!1411122))))

(declare-fun b!5041185 () Bool)

(declare-fun e!3148235 () Bool)

(declare-fun tp!1411121 () Bool)

(assert (=> b!5041185 (= e!3148235 tp!1411121)))

(declare-fun b!5041184 () Bool)

(assert (=> b!5041184 (= e!3148234 (and (inv!77173 (xs!18842 (left!42703 t!4198))) e!3148235))))

(assert (=> b!5040925 (= tp!1411097 (and (inv!77172 (left!42703 t!4198)) e!3148234))))

(assert (= (and b!5040925 ((_ is Node!15516) (left!42703 t!4198))) b!5041183))

(assert (= b!5041184 b!5041185))

(assert (= (and b!5040925 ((_ is Leaf!25738) (left!42703 t!4198))) b!5041184))

(declare-fun m!6075210 () Bool)

(assert (=> b!5041183 m!6075210))

(declare-fun m!6075212 () Bool)

(assert (=> b!5041183 m!6075212))

(declare-fun m!6075214 () Bool)

(assert (=> b!5041184 m!6075214))

(assert (=> b!5040925 m!6075056))

(declare-fun e!3148236 () Bool)

(declare-fun tp!1411125 () Bool)

(declare-fun tp!1411126 () Bool)

(declare-fun b!5041186 () Bool)

(assert (=> b!5041186 (= e!3148236 (and (inv!77172 (left!42703 (right!43033 t!4198))) tp!1411126 (inv!77172 (right!43033 (right!43033 t!4198))) tp!1411125))))

(declare-fun b!5041188 () Bool)

(declare-fun e!3148237 () Bool)

(declare-fun tp!1411124 () Bool)

(assert (=> b!5041188 (= e!3148237 tp!1411124)))

(declare-fun b!5041187 () Bool)

(assert (=> b!5041187 (= e!3148236 (and (inv!77173 (xs!18842 (right!43033 t!4198))) e!3148237))))

(assert (=> b!5040925 (= tp!1411098 (and (inv!77172 (right!43033 t!4198)) e!3148236))))

(assert (= (and b!5040925 ((_ is Node!15516) (right!43033 t!4198))) b!5041186))

(assert (= b!5041187 b!5041188))

(assert (= (and b!5040925 ((_ is Leaf!25738) (right!43033 t!4198))) b!5041187))

(declare-fun m!6075216 () Bool)

(assert (=> b!5041186 m!6075216))

(declare-fun m!6075218 () Bool)

(assert (=> b!5041186 m!6075218))

(declare-fun m!6075220 () Bool)

(assert (=> b!5041187 m!6075220))

(assert (=> b!5040925 m!6075058))

(declare-fun b!5041193 () Bool)

(declare-fun e!3148240 () Bool)

(declare-fun tp_is_empty!36795 () Bool)

(declare-fun tp!1411129 () Bool)

(assert (=> b!5041193 (= e!3148240 (and tp_is_empty!36795 tp!1411129))))

(assert (=> b!5040926 (= tp!1411099 e!3148240)))

(assert (= (and b!5040926 ((_ is Cons!58304) (innerList!15604 (xs!18842 t!4198)))) b!5041193))

(check-sat (not d!1621712) (not b!5041186) (not b!5041061) (not b!5041069) (not b!5040948) (not bm!351405) (not d!1621706) (not b!5041109) (not d!1621722) (not b!5041112) (not d!1621696) (not b!5040946) (not b!5041060) (not b!5040996) (not b!5040951) (not b!5041057) (not b!5041110) (not d!1621748) (not b!5041014) (not b!5041183) (not b!5041184) (not b!5041160) (not b!5041188) (not b!5041185) (not b!5041062) (not b!5041059) (not b!5041067) (not b!5041169) (not b!5041193) (not d!1621692) (not b!5040995) (not b!5040949) (not d!1621708) (not b!5041174) (not b!5041171) (not d!1621736) (not b!5041158) (not b!5040925) tp_is_empty!36795 (not b!5041058) (not b!5041187) (not d!1621732) (not b!5041157) (not b!5041025) (not b!5041113))
(check-sat)
(get-model)

(declare-fun d!1621750 () Bool)

(declare-fun c!863766 () Bool)

(assert (=> d!1621750 (= c!863766 ((_ is Node!15516) (left!42703 (right!43033 t!4198))))))

(declare-fun e!3148241 () Bool)

(assert (=> d!1621750 (= (inv!77172 (left!42703 (right!43033 t!4198))) e!3148241)))

(declare-fun b!5041194 () Bool)

(assert (=> b!5041194 (= e!3148241 (inv!77176 (left!42703 (right!43033 t!4198))))))

(declare-fun b!5041195 () Bool)

(declare-fun e!3148242 () Bool)

(assert (=> b!5041195 (= e!3148241 e!3148242)))

(declare-fun res!2147746 () Bool)

(assert (=> b!5041195 (= res!2147746 (not ((_ is Leaf!25738) (left!42703 (right!43033 t!4198)))))))

(assert (=> b!5041195 (=> res!2147746 e!3148242)))

(declare-fun b!5041196 () Bool)

(assert (=> b!5041196 (= e!3148242 (inv!77177 (left!42703 (right!43033 t!4198))))))

(assert (= (and d!1621750 c!863766) b!5041194))

(assert (= (and d!1621750 (not c!863766)) b!5041195))

(assert (= (and b!5041195 (not res!2147746)) b!5041196))

(declare-fun m!6075222 () Bool)

(assert (=> b!5041194 m!6075222))

(declare-fun m!6075224 () Bool)

(assert (=> b!5041196 m!6075224))

(assert (=> b!5041186 d!1621750))

(declare-fun d!1621752 () Bool)

(declare-fun c!863767 () Bool)

(assert (=> d!1621752 (= c!863767 ((_ is Node!15516) (right!43033 (right!43033 t!4198))))))

(declare-fun e!3148243 () Bool)

(assert (=> d!1621752 (= (inv!77172 (right!43033 (right!43033 t!4198))) e!3148243)))

(declare-fun b!5041197 () Bool)

(assert (=> b!5041197 (= e!3148243 (inv!77176 (right!43033 (right!43033 t!4198))))))

(declare-fun b!5041198 () Bool)

(declare-fun e!3148244 () Bool)

(assert (=> b!5041198 (= e!3148243 e!3148244)))

(declare-fun res!2147747 () Bool)

(assert (=> b!5041198 (= res!2147747 (not ((_ is Leaf!25738) (right!43033 (right!43033 t!4198)))))))

(assert (=> b!5041198 (=> res!2147747 e!3148244)))

(declare-fun b!5041199 () Bool)

(assert (=> b!5041199 (= e!3148244 (inv!77177 (right!43033 (right!43033 t!4198))))))

(assert (= (and d!1621752 c!863767) b!5041197))

(assert (= (and d!1621752 (not c!863767)) b!5041198))

(assert (= (and b!5041198 (not res!2147747)) b!5041199))

(declare-fun m!6075226 () Bool)

(assert (=> b!5041197 m!6075226))

(declare-fun m!6075228 () Bool)

(assert (=> b!5041199 m!6075228))

(assert (=> b!5041186 d!1621752))

(declare-fun d!1621754 () Bool)

(assert (=> d!1621754 (= (inv!77173 (xs!18842 (right!43033 t!4198))) (<= (size!38907 (innerList!15604 (xs!18842 (right!43033 t!4198)))) 2147483647))))

(declare-fun bs!1188928 () Bool)

(assert (= bs!1188928 d!1621754))

(declare-fun m!6075230 () Bool)

(assert (=> bs!1188928 m!6075230))

(assert (=> b!5041187 d!1621754))

(assert (=> b!5041157 d!1621696))

(declare-fun d!1621756 () Bool)

(declare-fun lt!2084390 () Bool)

(declare-fun isEmpty!31539 (List!58428) Bool)

(assert (=> d!1621756 (= lt!2084390 (isEmpty!31539 (list!18919 (left!42703 t!4198))))))

(assert (=> d!1621756 (= lt!2084390 (= (size!38906 (left!42703 t!4198)) 0))))

(assert (=> d!1621756 (= (isEmpty!31538 (left!42703 t!4198)) lt!2084390)))

(declare-fun bs!1188929 () Bool)

(assert (= bs!1188929 d!1621756))

(declare-fun m!6075232 () Bool)

(assert (=> bs!1188929 m!6075232))

(assert (=> bs!1188929 m!6075232))

(declare-fun m!6075234 () Bool)

(assert (=> bs!1188929 m!6075234))

(declare-fun m!6075236 () Bool)

(assert (=> bs!1188929 m!6075236))

(assert (=> b!5041059 d!1621756))

(declare-fun d!1621758 () Bool)

(declare-fun lt!2084393 () Int)

(assert (=> d!1621758 (= lt!2084393 (size!38907 (list!18917 (xs!18842 t!4198))))))

(declare-fun choose!37257 (IArray!31093) Int)

(assert (=> d!1621758 (= lt!2084393 (choose!37257 (xs!18842 t!4198)))))

(assert (=> d!1621758 (= (size!38909 (xs!18842 t!4198)) lt!2084393)))

(declare-fun bs!1188930 () Bool)

(assert (= bs!1188930 d!1621758))

(assert (=> bs!1188930 m!6075038))

(assert (=> bs!1188930 m!6075038))

(declare-fun m!6075238 () Bool)

(assert (=> bs!1188930 m!6075238))

(declare-fun m!6075240 () Bool)

(assert (=> bs!1188930 m!6075240))

(assert (=> b!5041174 d!1621758))

(declare-fun d!1621760 () Bool)

(declare-fun lt!2084394 () Int)

(assert (=> d!1621760 (>= lt!2084394 0)))

(declare-fun e!3148245 () Int)

(assert (=> d!1621760 (= lt!2084394 e!3148245)))

(declare-fun c!863768 () Bool)

(assert (=> d!1621760 (= c!863768 ((_ is Nil!58304) lt!2084345))))

(assert (=> d!1621760 (= (size!38907 lt!2084345) lt!2084394)))

(declare-fun b!5041200 () Bool)

(assert (=> b!5041200 (= e!3148245 0)))

(declare-fun b!5041201 () Bool)

(assert (=> b!5041201 (= e!3148245 (+ 1 (size!38907 (t!370985 lt!2084345))))))

(assert (= (and d!1621760 c!863768) b!5041200))

(assert (= (and d!1621760 (not c!863768)) b!5041201))

(declare-fun m!6075242 () Bool)

(assert (=> b!5041201 m!6075242))

(assert (=> b!5040995 d!1621760))

(assert (=> b!5040925 d!1621688))

(assert (=> b!5040925 d!1621690))

(assert (=> d!1621722 d!1621696))

(assert (=> d!1621722 d!1621712))

(assert (=> d!1621722 d!1621714))

(declare-fun d!1621762 () Bool)

(assert (=> d!1621762 (= (drop!2634 lt!2084337 i!618) (slice!853 lt!2084337 i!618 (size!38907 lt!2084337)))))

(assert (=> d!1621762 true))

(declare-fun _$10!206 () Unit!149491)

(assert (=> d!1621762 (= (choose!37254 lt!2084337 i!618) _$10!206)))

(declare-fun bs!1188931 () Bool)

(assert (= bs!1188931 d!1621762))

(assert (=> bs!1188931 m!6075052))

(assert (=> bs!1188931 m!6075042))

(assert (=> bs!1188931 m!6075042))

(assert (=> bs!1188931 m!6075044))

(assert (=> d!1621722 d!1621762))

(declare-fun b!5041202 () Bool)

(declare-fun e!3148247 () Int)

(declare-fun e!3148250 () Int)

(assert (=> b!5041202 (= e!3148247 e!3148250)))

(declare-fun c!863771 () Bool)

(declare-fun call!351414 () Int)

(assert (=> b!5041202 (= c!863771 (>= (- i!618 1) call!351414))))

(declare-fun b!5041203 () Bool)

(assert (=> b!5041203 (= e!3148250 (- call!351414 (- i!618 1)))))

(declare-fun b!5041204 () Bool)

(declare-fun e!3148248 () List!58428)

(declare-fun e!3148249 () List!58428)

(assert (=> b!5041204 (= e!3148248 e!3148249)))

(declare-fun c!863772 () Bool)

(assert (=> b!5041204 (= c!863772 (<= (- i!618 1) 0))))

(declare-fun b!5041205 () Bool)

(assert (=> b!5041205 (= e!3148247 call!351414)))

(declare-fun b!5041206 () Bool)

(declare-fun e!3148246 () Bool)

(declare-fun lt!2084395 () List!58428)

(assert (=> b!5041206 (= e!3148246 (= (size!38907 lt!2084395) e!3148247))))

(declare-fun c!863770 () Bool)

(assert (=> b!5041206 (= c!863770 (<= (- i!618 1) 0))))

(declare-fun b!5041207 () Bool)

(assert (=> b!5041207 (= e!3148249 (drop!2634 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1)))))

(declare-fun b!5041208 () Bool)

(assert (=> b!5041208 (= e!3148249 (t!370985 lt!2084337))))

(declare-fun d!1621764 () Bool)

(assert (=> d!1621764 e!3148246))

(declare-fun res!2147748 () Bool)

(assert (=> d!1621764 (=> (not res!2147748) (not e!3148246))))

(assert (=> d!1621764 (= res!2147748 (= ((_ map implies) (content!10356 lt!2084395) (content!10356 (t!370985 lt!2084337))) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1621764 (= lt!2084395 e!3148248)))

(declare-fun c!863769 () Bool)

(assert (=> d!1621764 (= c!863769 ((_ is Nil!58304) (t!370985 lt!2084337)))))

(assert (=> d!1621764 (= (drop!2634 (t!370985 lt!2084337) (- i!618 1)) lt!2084395)))

(declare-fun bm!351409 () Bool)

(assert (=> bm!351409 (= call!351414 (size!38907 (t!370985 lt!2084337)))))

(declare-fun b!5041209 () Bool)

(assert (=> b!5041209 (= e!3148248 Nil!58304)))

(declare-fun b!5041210 () Bool)

(assert (=> b!5041210 (= e!3148250 0)))

(assert (= (and d!1621764 c!863769) b!5041209))

(assert (= (and d!1621764 (not c!863769)) b!5041204))

(assert (= (and b!5041204 c!863772) b!5041208))

(assert (= (and b!5041204 (not c!863772)) b!5041207))

(assert (= (and d!1621764 res!2147748) b!5041206))

(assert (= (and b!5041206 c!863770) b!5041205))

(assert (= (and b!5041206 (not c!863770)) b!5041202))

(assert (= (and b!5041202 c!863771) b!5041210))

(assert (= (and b!5041202 (not c!863771)) b!5041203))

(assert (= (or b!5041205 b!5041202 b!5041203) bm!351409))

(declare-fun m!6075244 () Bool)

(assert (=> b!5041206 m!6075244))

(declare-fun m!6075246 () Bool)

(assert (=> b!5041207 m!6075246))

(declare-fun m!6075248 () Bool)

(assert (=> d!1621764 m!6075248))

(declare-fun m!6075250 () Bool)

(assert (=> d!1621764 m!6075250))

(assert (=> bm!351409 m!6075128))

(assert (=> b!5040996 d!1621764))

(declare-fun d!1621766 () Bool)

(declare-fun c!863775 () Bool)

(assert (=> d!1621766 (= c!863775 ((_ is Nil!58304) lt!2084373))))

(declare-fun e!3148253 () (InoxSet T!104208))

(assert (=> d!1621766 (= (content!10356 lt!2084373) e!3148253)))

(declare-fun b!5041215 () Bool)

(assert (=> b!5041215 (= e!3148253 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041216 () Bool)

(assert (=> b!5041216 (= e!3148253 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084373) true) (content!10356 (t!370985 lt!2084373))))))

(assert (= (and d!1621766 c!863775) b!5041215))

(assert (= (and d!1621766 (not c!863775)) b!5041216))

(declare-fun m!6075252 () Bool)

(assert (=> b!5041216 m!6075252))

(declare-fun m!6075254 () Bool)

(assert (=> b!5041216 m!6075254))

(assert (=> d!1621732 d!1621766))

(declare-fun d!1621768 () Bool)

(declare-fun c!863776 () Bool)

(assert (=> d!1621768 (= c!863776 ((_ is Nil!58304) lt!2084337))))

(declare-fun e!3148254 () (InoxSet T!104208))

(assert (=> d!1621768 (= (content!10356 lt!2084337) e!3148254)))

(declare-fun b!5041217 () Bool)

(assert (=> b!5041217 (= e!3148254 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041218 () Bool)

(assert (=> b!5041218 (= e!3148254 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084337) true) (content!10356 (t!370985 lt!2084337))))))

(assert (= (and d!1621768 c!863776) b!5041217))

(assert (= (and d!1621768 (not c!863776)) b!5041218))

(declare-fun m!6075256 () Bool)

(assert (=> b!5041218 m!6075256))

(assert (=> b!5041218 m!6075250))

(assert (=> d!1621732 d!1621768))

(declare-fun d!1621770 () Bool)

(declare-fun lt!2084396 () Bool)

(assert (=> d!1621770 (= lt!2084396 (isEmpty!31539 (list!18919 (right!43033 t!4198))))))

(assert (=> d!1621770 (= lt!2084396 (= (size!38906 (right!43033 t!4198)) 0))))

(assert (=> d!1621770 (= (isEmpty!31538 (right!43033 t!4198)) lt!2084396)))

(declare-fun bs!1188932 () Bool)

(assert (= bs!1188932 d!1621770))

(declare-fun m!6075258 () Bool)

(assert (=> bs!1188932 m!6075258))

(assert (=> bs!1188932 m!6075258))

(declare-fun m!6075260 () Bool)

(assert (=> bs!1188932 m!6075260))

(declare-fun m!6075262 () Bool)

(assert (=> bs!1188932 m!6075262))

(assert (=> b!5041060 d!1621770))

(declare-fun b!5041219 () Bool)

(declare-fun res!2147752 () Bool)

(declare-fun e!3148256 () Bool)

(assert (=> b!5041219 (=> (not res!2147752) (not e!3148256))))

(assert (=> b!5041219 (= res!2147752 (isBalanced!4378 (right!43033 (left!42703 t!4198))))))

(declare-fun b!5041220 () Bool)

(declare-fun e!3148255 () Bool)

(assert (=> b!5041220 (= e!3148255 e!3148256)))

(declare-fun res!2147753 () Bool)

(assert (=> b!5041220 (=> (not res!2147753) (not e!3148256))))

(assert (=> b!5041220 (= res!2147753 (<= (- 1) (- (height!2095 (left!42703 (left!42703 t!4198))) (height!2095 (right!43033 (left!42703 t!4198))))))))

(declare-fun b!5041222 () Bool)

(assert (=> b!5041222 (= e!3148256 (not (isEmpty!31538 (right!43033 (left!42703 t!4198)))))))

(declare-fun b!5041223 () Bool)

(declare-fun res!2147751 () Bool)

(assert (=> b!5041223 (=> (not res!2147751) (not e!3148256))))

(assert (=> b!5041223 (= res!2147751 (<= (- (height!2095 (left!42703 (left!42703 t!4198))) (height!2095 (right!43033 (left!42703 t!4198)))) 1))))

(declare-fun b!5041224 () Bool)

(declare-fun res!2147750 () Bool)

(assert (=> b!5041224 (=> (not res!2147750) (not e!3148256))))

(assert (=> b!5041224 (= res!2147750 (isBalanced!4378 (left!42703 (left!42703 t!4198))))))

(declare-fun b!5041221 () Bool)

(declare-fun res!2147749 () Bool)

(assert (=> b!5041221 (=> (not res!2147749) (not e!3148256))))

(assert (=> b!5041221 (= res!2147749 (not (isEmpty!31538 (left!42703 (left!42703 t!4198)))))))

(declare-fun d!1621772 () Bool)

(declare-fun res!2147754 () Bool)

(assert (=> d!1621772 (=> res!2147754 e!3148255)))

(assert (=> d!1621772 (= res!2147754 (not ((_ is Node!15516) (left!42703 t!4198))))))

(assert (=> d!1621772 (= (isBalanced!4378 (left!42703 t!4198)) e!3148255)))

(assert (= (and d!1621772 (not res!2147754)) b!5041220))

(assert (= (and b!5041220 res!2147753) b!5041223))

(assert (= (and b!5041223 res!2147751) b!5041224))

(assert (= (and b!5041224 res!2147750) b!5041219))

(assert (= (and b!5041219 res!2147752) b!5041221))

(assert (= (and b!5041221 res!2147749) b!5041222))

(declare-fun m!6075264 () Bool)

(assert (=> b!5041223 m!6075264))

(declare-fun m!6075266 () Bool)

(assert (=> b!5041223 m!6075266))

(declare-fun m!6075268 () Bool)

(assert (=> b!5041221 m!6075268))

(assert (=> b!5041220 m!6075264))

(assert (=> b!5041220 m!6075266))

(declare-fun m!6075270 () Bool)

(assert (=> b!5041224 m!6075270))

(declare-fun m!6075272 () Bool)

(assert (=> b!5041219 m!6075272))

(declare-fun m!6075274 () Bool)

(assert (=> b!5041222 m!6075274))

(assert (=> b!5041062 d!1621772))

(declare-fun d!1621774 () Bool)

(assert (=> d!1621774 (= (slice!853 (list!18917 (xs!18842 t!4198)) 0 i!618) (take!827 (drop!2634 (list!18917 (xs!18842 t!4198)) 0) (- i!618 0)))))

(declare-fun bs!1188933 () Bool)

(assert (= bs!1188933 d!1621774))

(assert (=> bs!1188933 m!6075038))

(declare-fun m!6075276 () Bool)

(assert (=> bs!1188933 m!6075276))

(assert (=> bs!1188933 m!6075276))

(declare-fun m!6075278 () Bool)

(assert (=> bs!1188933 m!6075278))

(assert (=> d!1621748 d!1621774))

(assert (=> d!1621748 d!1621744))

(declare-fun d!1621776 () Bool)

(declare-fun _$4!1199 () IArray!31093)

(assert (=> d!1621776 (= _$4!1199 (IArray!31094 (slice!853 (list!18917 (xs!18842 t!4198)) 0 i!618)))))

(declare-fun e!3148259 () Bool)

(assert (=> d!1621776 (and (inv!77173 _$4!1199) e!3148259)))

(assert (=> d!1621776 (= (choose!37256 (xs!18842 t!4198) 0 i!618) _$4!1199)))

(declare-fun b!5041227 () Bool)

(declare-fun tp!1411132 () Bool)

(assert (=> b!5041227 (= e!3148259 tp!1411132)))

(assert (= d!1621776 b!5041227))

(assert (=> d!1621776 m!6075038))

(assert (=> d!1621776 m!6075038))

(assert (=> d!1621776 m!6075204))

(declare-fun m!6075280 () Bool)

(assert (=> d!1621776 m!6075280))

(assert (=> d!1621748 d!1621776))

(declare-fun d!1621778 () Bool)

(declare-fun lt!2084397 () Int)

(assert (=> d!1621778 (>= lt!2084397 0)))

(declare-fun e!3148260 () Int)

(assert (=> d!1621778 (= lt!2084397 e!3148260)))

(declare-fun c!863777 () Bool)

(assert (=> d!1621778 (= c!863777 ((_ is Nil!58304) (innerList!15604 (xs!18842 t!4198))))))

(assert (=> d!1621778 (= (size!38907 (innerList!15604 (xs!18842 t!4198))) lt!2084397)))

(declare-fun b!5041228 () Bool)

(assert (=> b!5041228 (= e!3148260 0)))

(declare-fun b!5041229 () Bool)

(assert (=> b!5041229 (= e!3148260 (+ 1 (size!38907 (t!370985 (innerList!15604 (xs!18842 t!4198))))))))

(assert (= (and d!1621778 c!863777) b!5041228))

(assert (= (and d!1621778 (not c!863777)) b!5041229))

(declare-fun m!6075282 () Bool)

(assert (=> b!5041229 m!6075282))

(assert (=> d!1621692 d!1621778))

(declare-fun d!1621780 () Bool)

(assert (=> d!1621780 (= (height!2095 (left!42703 t!4198)) (ite ((_ is Empty!15516) (left!42703 t!4198)) 0 (ite ((_ is Leaf!25738) (left!42703 t!4198)) 1 (cheight!15727 (left!42703 t!4198)))))))

(assert (=> b!5041061 d!1621780))

(declare-fun d!1621782 () Bool)

(assert (=> d!1621782 (= (height!2095 (right!43033 t!4198)) (ite ((_ is Empty!15516) (right!43033 t!4198)) 0 (ite ((_ is Leaf!25738) (right!43033 t!4198)) 1 (cheight!15727 (right!43033 t!4198)))))))

(assert (=> b!5041061 d!1621782))

(declare-fun d!1621784 () Bool)

(declare-fun res!2147761 () Bool)

(declare-fun e!3148264 () Bool)

(assert (=> d!1621784 (=> (not res!2147761) (not e!3148264))))

(assert (=> d!1621784 (= res!2147761 (= (csize!31262 (left!42703 t!4198)) (+ (size!38906 (left!42703 (left!42703 t!4198))) (size!38906 (right!43033 (left!42703 t!4198))))))))

(assert (=> d!1621784 (= (inv!77176 (left!42703 t!4198)) e!3148264)))

(declare-fun b!5041238 () Bool)

(declare-fun res!2147762 () Bool)

(assert (=> b!5041238 (=> (not res!2147762) (not e!3148264))))

(assert (=> b!5041238 (= res!2147762 (and (not (= (left!42703 (left!42703 t!4198)) Empty!15516)) (not (= (right!43033 (left!42703 t!4198)) Empty!15516))))))

(declare-fun b!5041239 () Bool)

(declare-fun res!2147763 () Bool)

(assert (=> b!5041239 (=> (not res!2147763) (not e!3148264))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5041239 (= res!2147763 (= (cheight!15727 (left!42703 t!4198)) (+ (max!0 (height!2095 (left!42703 (left!42703 t!4198))) (height!2095 (right!43033 (left!42703 t!4198)))) 1)))))

(declare-fun b!5041240 () Bool)

(assert (=> b!5041240 (= e!3148264 (<= 0 (cheight!15727 (left!42703 t!4198))))))

(assert (= (and d!1621784 res!2147761) b!5041238))

(assert (= (and b!5041238 res!2147762) b!5041239))

(assert (= (and b!5041239 res!2147763) b!5041240))

(declare-fun m!6075286 () Bool)

(assert (=> d!1621784 m!6075286))

(declare-fun m!6075288 () Bool)

(assert (=> d!1621784 m!6075288))

(assert (=> b!5041239 m!6075264))

(assert (=> b!5041239 m!6075266))

(assert (=> b!5041239 m!6075264))

(assert (=> b!5041239 m!6075266))

(declare-fun m!6075290 () Bool)

(assert (=> b!5041239 m!6075290))

(assert (=> b!5040946 d!1621784))

(declare-fun d!1621790 () Bool)

(declare-fun res!2147772 () Bool)

(declare-fun e!3148269 () Bool)

(assert (=> d!1621790 (=> (not res!2147772) (not e!3148269))))

(assert (=> d!1621790 (= res!2147772 (<= (size!38907 (list!18917 (xs!18842 (left!42703 t!4198)))) 512))))

(assert (=> d!1621790 (= (inv!77177 (left!42703 t!4198)) e!3148269)))

(declare-fun b!5041249 () Bool)

(declare-fun res!2147773 () Bool)

(assert (=> b!5041249 (=> (not res!2147773) (not e!3148269))))

(assert (=> b!5041249 (= res!2147773 (= (csize!31263 (left!42703 t!4198)) (size!38907 (list!18917 (xs!18842 (left!42703 t!4198))))))))

(declare-fun b!5041250 () Bool)

(assert (=> b!5041250 (= e!3148269 (and (> (csize!31263 (left!42703 t!4198)) 0) (<= (csize!31263 (left!42703 t!4198)) 512)))))

(assert (= (and d!1621790 res!2147772) b!5041249))

(assert (= (and b!5041249 res!2147773) b!5041250))

(declare-fun m!6075292 () Bool)

(assert (=> d!1621790 m!6075292))

(assert (=> d!1621790 m!6075292))

(declare-fun m!6075294 () Bool)

(assert (=> d!1621790 m!6075294))

(assert (=> b!5041249 m!6075292))

(assert (=> b!5041249 m!6075292))

(assert (=> b!5041249 m!6075294))

(assert (=> b!5040948 d!1621790))

(assert (=> b!5041025 d!1621714))

(declare-fun d!1621792 () Bool)

(declare-fun lt!2084399 () Int)

(assert (=> d!1621792 (>= lt!2084399 0)))

(declare-fun e!3148271 () Int)

(assert (=> d!1621792 (= lt!2084399 e!3148271)))

(declare-fun c!863779 () Bool)

(assert (=> d!1621792 (= c!863779 ((_ is Nil!58304) (list!18919 t!4198)))))

(assert (=> d!1621792 (= (size!38907 (list!18919 t!4198)) lt!2084399)))

(declare-fun b!5041253 () Bool)

(assert (=> b!5041253 (= e!3148271 0)))

(declare-fun b!5041254 () Bool)

(assert (=> b!5041254 (= e!3148271 (+ 1 (size!38907 (t!370985 (list!18919 t!4198)))))))

(assert (= (and d!1621792 c!863779) b!5041253))

(assert (= (and d!1621792 (not c!863779)) b!5041254))

(declare-fun m!6075300 () Bool)

(assert (=> b!5041254 m!6075300))

(assert (=> d!1621706 d!1621792))

(declare-fun b!5041265 () Bool)

(declare-fun e!3148277 () List!58428)

(assert (=> b!5041265 (= e!3148277 (list!18917 (xs!18842 t!4198)))))

(declare-fun d!1621794 () Bool)

(declare-fun c!863784 () Bool)

(assert (=> d!1621794 (= c!863784 ((_ is Empty!15516) t!4198))))

(declare-fun e!3148276 () List!58428)

(assert (=> d!1621794 (= (list!18919 t!4198) e!3148276)))

(declare-fun b!5041263 () Bool)

(assert (=> b!5041263 (= e!3148276 Nil!58304)))

(declare-fun b!5041264 () Bool)

(assert (=> b!5041264 (= e!3148276 e!3148277)))

(declare-fun c!863785 () Bool)

(assert (=> b!5041264 (= c!863785 ((_ is Leaf!25738) t!4198))))

(declare-fun b!5041266 () Bool)

(assert (=> b!5041266 (= e!3148277 (++!12729 (list!18919 (left!42703 t!4198)) (list!18919 (right!43033 t!4198))))))

(assert (= (and d!1621794 c!863784) b!5041263))

(assert (= (and d!1621794 (not c!863784)) b!5041264))

(assert (= (and b!5041264 c!863785) b!5041265))

(assert (= (and b!5041264 (not c!863785)) b!5041266))

(assert (=> b!5041265 m!6075038))

(assert (=> b!5041266 m!6075232))

(assert (=> b!5041266 m!6075258))

(assert (=> b!5041266 m!6075232))

(assert (=> b!5041266 m!6075258))

(declare-fun m!6075302 () Bool)

(assert (=> b!5041266 m!6075302))

(assert (=> d!1621706 d!1621794))

(declare-fun d!1621798 () Bool)

(declare-fun res!2147776 () Bool)

(declare-fun e!3148280 () Bool)

(assert (=> d!1621798 (=> (not res!2147776) (not e!3148280))))

(assert (=> d!1621798 (= res!2147776 (= (csize!31262 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) (+ (size!38906 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (size!38906 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(assert (=> d!1621798 (= (inv!77176 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) e!3148280)))

(declare-fun b!5041271 () Bool)

(declare-fun res!2147777 () Bool)

(assert (=> b!5041271 (=> (not res!2147777) (not e!3148280))))

(assert (=> b!5041271 (= res!2147777 (and (not (= (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) Empty!15516)) (not (= (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) Empty!15516))))))

(declare-fun b!5041272 () Bool)

(declare-fun res!2147778 () Bool)

(assert (=> b!5041272 (=> (not res!2147778) (not e!3148280))))

(assert (=> b!5041272 (= res!2147778 (= (cheight!15727 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) (+ (max!0 (height!2095 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (height!2095 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))) 1)))))

(declare-fun b!5041273 () Bool)

(assert (=> b!5041273 (= e!3148280 (<= 0 (cheight!15727 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))

(assert (= (and d!1621798 res!2147776) b!5041271))

(assert (= (and b!5041271 res!2147777) b!5041272))

(assert (= (and b!5041272 res!2147778) b!5041273))

(declare-fun m!6075304 () Bool)

(assert (=> d!1621798 m!6075304))

(declare-fun m!6075306 () Bool)

(assert (=> d!1621798 m!6075306))

(declare-fun m!6075308 () Bool)

(assert (=> b!5041272 m!6075308))

(declare-fun m!6075310 () Bool)

(assert (=> b!5041272 m!6075310))

(assert (=> b!5041272 m!6075308))

(assert (=> b!5041272 m!6075310))

(declare-fun m!6075312 () Bool)

(assert (=> b!5041272 m!6075312))

(assert (=> b!5041169 d!1621798))

(declare-fun d!1621800 () Bool)

(declare-fun res!2147783 () Bool)

(declare-fun e!3148283 () Bool)

(assert (=> d!1621800 (=> (not res!2147783) (not e!3148283))))

(assert (=> d!1621800 (= res!2147783 (= (csize!31262 (right!43033 t!4198)) (+ (size!38906 (left!42703 (right!43033 t!4198))) (size!38906 (right!43033 (right!43033 t!4198))))))))

(assert (=> d!1621800 (= (inv!77176 (right!43033 t!4198)) e!3148283)))

(declare-fun b!5041278 () Bool)

(declare-fun res!2147784 () Bool)

(assert (=> b!5041278 (=> (not res!2147784) (not e!3148283))))

(assert (=> b!5041278 (= res!2147784 (and (not (= (left!42703 (right!43033 t!4198)) Empty!15516)) (not (= (right!43033 (right!43033 t!4198)) Empty!15516))))))

(declare-fun b!5041279 () Bool)

(declare-fun res!2147785 () Bool)

(assert (=> b!5041279 (=> (not res!2147785) (not e!3148283))))

(assert (=> b!5041279 (= res!2147785 (= (cheight!15727 (right!43033 t!4198)) (+ (max!0 (height!2095 (left!42703 (right!43033 t!4198))) (height!2095 (right!43033 (right!43033 t!4198)))) 1)))))

(declare-fun b!5041280 () Bool)

(assert (=> b!5041280 (= e!3148283 (<= 0 (cheight!15727 (right!43033 t!4198))))))

(assert (= (and d!1621800 res!2147783) b!5041278))

(assert (= (and b!5041278 res!2147784) b!5041279))

(assert (= (and b!5041279 res!2147785) b!5041280))

(declare-fun m!6075314 () Bool)

(assert (=> d!1621800 m!6075314))

(declare-fun m!6075316 () Bool)

(assert (=> d!1621800 m!6075316))

(declare-fun m!6075318 () Bool)

(assert (=> b!5041279 m!6075318))

(declare-fun m!6075320 () Bool)

(assert (=> b!5041279 m!6075320))

(assert (=> b!5041279 m!6075318))

(assert (=> b!5041279 m!6075320))

(declare-fun m!6075322 () Bool)

(assert (=> b!5041279 m!6075322))

(assert (=> b!5040949 d!1621800))

(declare-fun d!1621802 () Bool)

(declare-fun res!2147786 () Bool)

(declare-fun e!3148284 () Bool)

(assert (=> d!1621802 (=> (not res!2147786) (not e!3148284))))

(assert (=> d!1621802 (= res!2147786 (<= (size!38907 (list!18917 (xs!18842 (right!43033 t!4198)))) 512))))

(assert (=> d!1621802 (= (inv!77177 (right!43033 t!4198)) e!3148284)))

(declare-fun b!5041281 () Bool)

(declare-fun res!2147787 () Bool)

(assert (=> b!5041281 (=> (not res!2147787) (not e!3148284))))

(assert (=> b!5041281 (= res!2147787 (= (csize!31263 (right!43033 t!4198)) (size!38907 (list!18917 (xs!18842 (right!43033 t!4198))))))))

(declare-fun b!5041282 () Bool)

(assert (=> b!5041282 (= e!3148284 (and (> (csize!31263 (right!43033 t!4198)) 0) (<= (csize!31263 (right!43033 t!4198)) 512)))))

(assert (= (and d!1621802 res!2147786) b!5041281))

(assert (= (and b!5041281 res!2147787) b!5041282))

(declare-fun m!6075324 () Bool)

(assert (=> d!1621802 m!6075324))

(assert (=> d!1621802 m!6075324))

(declare-fun m!6075326 () Bool)

(assert (=> d!1621802 m!6075326))

(assert (=> b!5041281 m!6075324))

(assert (=> b!5041281 m!6075324))

(assert (=> b!5041281 m!6075326))

(assert (=> b!5040951 d!1621802))

(assert (=> bm!351405 d!1621714))

(declare-fun d!1621804 () Bool)

(declare-fun c!863788 () Bool)

(assert (=> d!1621804 (= c!863788 ((_ is Nil!58304) lt!2084345))))

(declare-fun e!3148285 () (InoxSet T!104208))

(assert (=> d!1621804 (= (content!10356 lt!2084345) e!3148285)))

(declare-fun b!5041283 () Bool)

(assert (=> b!5041283 (= e!3148285 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041284 () Bool)

(assert (=> b!5041284 (= e!3148285 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084345) true) (content!10356 (t!370985 lt!2084345))))))

(assert (= (and d!1621804 c!863788) b!5041283))

(assert (= (and d!1621804 (not c!863788)) b!5041284))

(declare-fun m!6075328 () Bool)

(assert (=> b!5041284 m!6075328))

(declare-fun m!6075330 () Bool)

(assert (=> b!5041284 m!6075330))

(assert (=> d!1621696 d!1621804))

(assert (=> d!1621696 d!1621768))

(declare-fun d!1621806 () Bool)

(declare-fun res!2147788 () Bool)

(declare-fun e!3148286 () Bool)

(assert (=> d!1621806 (=> (not res!2147788) (not e!3148286))))

(assert (=> d!1621806 (= res!2147788 (<= (size!38907 (list!18917 (xs!18842 t!4198))) 512))))

(assert (=> d!1621806 (= (inv!77177 t!4198) e!3148286)))

(declare-fun b!5041285 () Bool)

(declare-fun res!2147789 () Bool)

(assert (=> b!5041285 (=> (not res!2147789) (not e!3148286))))

(assert (=> b!5041285 (= res!2147789 (= (csize!31263 t!4198) (size!38907 (list!18917 (xs!18842 t!4198)))))))

(declare-fun b!5041286 () Bool)

(assert (=> b!5041286 (= e!3148286 (and (> (csize!31263 t!4198) 0) (<= (csize!31263 t!4198) 512)))))

(assert (= (and d!1621806 res!2147788) b!5041285))

(assert (= (and b!5041285 res!2147789) b!5041286))

(assert (=> d!1621806 m!6075038))

(assert (=> d!1621806 m!6075038))

(assert (=> d!1621806 m!6075238))

(assert (=> b!5041285 m!6075038))

(assert (=> b!5041285 m!6075038))

(assert (=> b!5041285 m!6075238))

(assert (=> b!5041069 d!1621806))

(declare-fun d!1621808 () Bool)

(declare-fun lt!2084402 () Int)

(assert (=> d!1621808 (>= lt!2084402 0)))

(declare-fun e!3148287 () Int)

(assert (=> d!1621808 (= lt!2084402 e!3148287)))

(declare-fun c!863789 () Bool)

(assert (=> d!1621808 (= c!863789 ((_ is Nil!58304) (t!370985 lt!2084337)))))

(assert (=> d!1621808 (= (size!38907 (t!370985 lt!2084337)) lt!2084402)))

(declare-fun b!5041287 () Bool)

(assert (=> b!5041287 (= e!3148287 0)))

(declare-fun b!5041288 () Bool)

(assert (=> b!5041288 (= e!3148287 (+ 1 (size!38907 (t!370985 (t!370985 lt!2084337)))))))

(assert (= (and d!1621808 c!863789) b!5041287))

(assert (= (and d!1621808 (not c!863789)) b!5041288))

(declare-fun m!6075332 () Bool)

(assert (=> b!5041288 m!6075332))

(assert (=> b!5041014 d!1621808))

(declare-fun d!1621810 () Bool)

(declare-fun res!2147790 () Bool)

(declare-fun e!3148288 () Bool)

(assert (=> d!1621810 (=> (not res!2147790) (not e!3148288))))

(assert (=> d!1621810 (= res!2147790 (<= (size!38907 (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))) 512))))

(assert (=> d!1621810 (= (inv!77177 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) e!3148288)))

(declare-fun b!5041289 () Bool)

(declare-fun res!2147791 () Bool)

(assert (=> b!5041289 (=> (not res!2147791) (not e!3148288))))

(assert (=> b!5041289 (= res!2147791 (= (csize!31263 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) (size!38907 (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(declare-fun b!5041290 () Bool)

(assert (=> b!5041290 (= e!3148288 (and (> (csize!31263 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) 0) (<= (csize!31263 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)) 512)))))

(assert (= (and d!1621810 res!2147790) b!5041289))

(assert (= (and b!5041289 res!2147791) b!5041290))

(declare-fun m!6075334 () Bool)

(assert (=> d!1621810 m!6075334))

(assert (=> d!1621810 m!6075334))

(declare-fun m!6075336 () Bool)

(assert (=> d!1621810 m!6075336))

(assert (=> b!5041289 m!6075334))

(assert (=> b!5041289 m!6075334))

(assert (=> b!5041289 m!6075336))

(assert (=> b!5041171 d!1621810))

(declare-fun d!1621812 () Bool)

(declare-fun e!3148293 () Bool)

(assert (=> d!1621812 e!3148293))

(declare-fun res!2147794 () Bool)

(assert (=> d!1621812 (=> (not res!2147794) (not e!3148293))))

(declare-fun lt!2084404 () List!58428)

(assert (=> d!1621812 (= res!2147794 (= ((_ map implies) (content!10356 lt!2084404) (content!10356 (drop!2634 lt!2084337 i!618))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148294 () List!58428)

(assert (=> d!1621812 (= lt!2084404 e!3148294)))

(declare-fun c!863793 () Bool)

(assert (=> d!1621812 (= c!863793 (or ((_ is Nil!58304) (drop!2634 lt!2084337 i!618)) (<= (- (size!38907 lt!2084337) i!618) 0)))))

(assert (=> d!1621812 (= (take!827 (drop!2634 lt!2084337 i!618) (- (size!38907 lt!2084337) i!618)) lt!2084404)))

(declare-fun b!5041295 () Bool)

(declare-fun e!3148291 () Int)

(assert (=> b!5041295 (= e!3148291 (size!38907 (drop!2634 lt!2084337 i!618)))))

(declare-fun b!5041296 () Bool)

(declare-fun e!3148292 () Int)

(assert (=> b!5041296 (= e!3148292 e!3148291)))

(declare-fun c!863791 () Bool)

(assert (=> b!5041296 (= c!863791 (>= (- (size!38907 lt!2084337) i!618) (size!38907 (drop!2634 lt!2084337 i!618))))))

(declare-fun b!5041297 () Bool)

(assert (=> b!5041297 (= e!3148291 (- (size!38907 lt!2084337) i!618))))

(declare-fun b!5041298 () Bool)

(assert (=> b!5041298 (= e!3148293 (= (size!38907 lt!2084404) e!3148292))))

(declare-fun c!863792 () Bool)

(assert (=> b!5041298 (= c!863792 (<= (- (size!38907 lt!2084337) i!618) 0))))

(declare-fun b!5041299 () Bool)

(assert (=> b!5041299 (= e!3148294 (Cons!58304 (h!64752 (drop!2634 lt!2084337 i!618)) (take!827 (t!370985 (drop!2634 lt!2084337 i!618)) (- (- (size!38907 lt!2084337) i!618) 1))))))

(declare-fun b!5041300 () Bool)

(assert (=> b!5041300 (= e!3148294 Nil!58304)))

(declare-fun b!5041301 () Bool)

(assert (=> b!5041301 (= e!3148292 0)))

(assert (= (and d!1621812 c!863793) b!5041300))

(assert (= (and d!1621812 (not c!863793)) b!5041299))

(assert (= (and d!1621812 res!2147794) b!5041298))

(assert (= (and b!5041298 c!863792) b!5041301))

(assert (= (and b!5041298 (not c!863792)) b!5041296))

(assert (= (and b!5041296 c!863791) b!5041295))

(assert (= (and b!5041296 (not c!863791)) b!5041297))

(declare-fun m!6075352 () Bool)

(assert (=> d!1621812 m!6075352))

(assert (=> d!1621812 m!6075052))

(declare-fun m!6075354 () Bool)

(assert (=> d!1621812 m!6075354))

(declare-fun m!6075356 () Bool)

(assert (=> b!5041299 m!6075356))

(declare-fun m!6075358 () Bool)

(assert (=> b!5041298 m!6075358))

(assert (=> b!5041296 m!6075052))

(declare-fun m!6075360 () Bool)

(assert (=> b!5041296 m!6075360))

(assert (=> b!5041295 m!6075052))

(assert (=> b!5041295 m!6075360))

(assert (=> d!1621712 d!1621812))

(assert (=> d!1621712 d!1621696))

(declare-fun d!1621816 () Bool)

(declare-fun e!3148298 () Bool)

(assert (=> d!1621816 e!3148298))

(declare-fun res!2147795 () Bool)

(assert (=> d!1621816 (=> (not res!2147795) (not e!3148298))))

(declare-fun lt!2084406 () List!58428)

(assert (=> d!1621816 (= res!2147795 (= ((_ map implies) (content!10356 lt!2084406) (content!10356 (drop!2634 lt!2084337 0))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148299 () List!58428)

(assert (=> d!1621816 (= lt!2084406 e!3148299)))

(declare-fun c!863797 () Bool)

(assert (=> d!1621816 (= c!863797 (or ((_ is Nil!58304) (drop!2634 lt!2084337 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1621816 (= (take!827 (drop!2634 lt!2084337 0) (- i!618 0)) lt!2084406)))

(declare-fun b!5041304 () Bool)

(declare-fun e!3148296 () Int)

(assert (=> b!5041304 (= e!3148296 (size!38907 (drop!2634 lt!2084337 0)))))

(declare-fun b!5041305 () Bool)

(declare-fun e!3148297 () Int)

(assert (=> b!5041305 (= e!3148297 e!3148296)))

(declare-fun c!863795 () Bool)

(assert (=> b!5041305 (= c!863795 (>= (- i!618 0) (size!38907 (drop!2634 lt!2084337 0))))))

(declare-fun b!5041306 () Bool)

(assert (=> b!5041306 (= e!3148296 (- i!618 0))))

(declare-fun b!5041307 () Bool)

(assert (=> b!5041307 (= e!3148298 (= (size!38907 lt!2084406) e!3148297))))

(declare-fun c!863796 () Bool)

(assert (=> b!5041307 (= c!863796 (<= (- i!618 0) 0))))

(declare-fun b!5041308 () Bool)

(assert (=> b!5041308 (= e!3148299 (Cons!58304 (h!64752 (drop!2634 lt!2084337 0)) (take!827 (t!370985 (drop!2634 lt!2084337 0)) (- (- i!618 0) 1))))))

(declare-fun b!5041309 () Bool)

(assert (=> b!5041309 (= e!3148299 Nil!58304)))

(declare-fun b!5041310 () Bool)

(assert (=> b!5041310 (= e!3148297 0)))

(assert (= (and d!1621816 c!863797) b!5041309))

(assert (= (and d!1621816 (not c!863797)) b!5041308))

(assert (= (and d!1621816 res!2147795) b!5041307))

(assert (= (and b!5041307 c!863796) b!5041310))

(assert (= (and b!5041307 (not c!863796)) b!5041305))

(assert (= (and b!5041305 c!863795) b!5041304))

(assert (= (and b!5041305 (not c!863795)) b!5041306))

(declare-fun m!6075364 () Bool)

(assert (=> d!1621816 m!6075364))

(assert (=> d!1621816 m!6075110))

(declare-fun m!6075366 () Bool)

(assert (=> d!1621816 m!6075366))

(declare-fun m!6075368 () Bool)

(assert (=> b!5041308 m!6075368))

(declare-fun m!6075370 () Bool)

(assert (=> b!5041307 m!6075370))

(assert (=> b!5041305 m!6075110))

(declare-fun m!6075372 () Bool)

(assert (=> b!5041305 m!6075372))

(assert (=> b!5041304 m!6075110))

(assert (=> b!5041304 m!6075372))

(assert (=> d!1621708 d!1621816))

(declare-fun b!5041311 () Bool)

(declare-fun e!3148301 () Int)

(declare-fun e!3148304 () Int)

(assert (=> b!5041311 (= e!3148301 e!3148304)))

(declare-fun c!863800 () Bool)

(declare-fun call!351415 () Int)

(assert (=> b!5041311 (= c!863800 (>= 0 call!351415))))

(declare-fun b!5041312 () Bool)

(assert (=> b!5041312 (= e!3148304 (- call!351415 0))))

(declare-fun b!5041313 () Bool)

(declare-fun e!3148302 () List!58428)

(declare-fun e!3148303 () List!58428)

(assert (=> b!5041313 (= e!3148302 e!3148303)))

(declare-fun c!863801 () Bool)

(assert (=> b!5041313 (= c!863801 (<= 0 0))))

(declare-fun b!5041314 () Bool)

(assert (=> b!5041314 (= e!3148301 call!351415)))

(declare-fun b!5041315 () Bool)

(declare-fun e!3148300 () Bool)

(declare-fun lt!2084407 () List!58428)

(assert (=> b!5041315 (= e!3148300 (= (size!38907 lt!2084407) e!3148301))))

(declare-fun c!863799 () Bool)

(assert (=> b!5041315 (= c!863799 (<= 0 0))))

(declare-fun b!5041316 () Bool)

(assert (=> b!5041316 (= e!3148303 (drop!2634 (t!370985 lt!2084337) (- 0 1)))))

(declare-fun b!5041317 () Bool)

(assert (=> b!5041317 (= e!3148303 lt!2084337)))

(declare-fun d!1621820 () Bool)

(assert (=> d!1621820 e!3148300))

(declare-fun res!2147796 () Bool)

(assert (=> d!1621820 (=> (not res!2147796) (not e!3148300))))

(assert (=> d!1621820 (= res!2147796 (= ((_ map implies) (content!10356 lt!2084407) (content!10356 lt!2084337)) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1621820 (= lt!2084407 e!3148302)))

(declare-fun c!863798 () Bool)

(assert (=> d!1621820 (= c!863798 ((_ is Nil!58304) lt!2084337))))

(assert (=> d!1621820 (= (drop!2634 lt!2084337 0) lt!2084407)))

(declare-fun bm!351410 () Bool)

(assert (=> bm!351410 (= call!351415 (size!38907 lt!2084337))))

(declare-fun b!5041318 () Bool)

(assert (=> b!5041318 (= e!3148302 Nil!58304)))

(declare-fun b!5041319 () Bool)

(assert (=> b!5041319 (= e!3148304 0)))

(assert (= (and d!1621820 c!863798) b!5041318))

(assert (= (and d!1621820 (not c!863798)) b!5041313))

(assert (= (and b!5041313 c!863801) b!5041317))

(assert (= (and b!5041313 (not c!863801)) b!5041316))

(assert (= (and d!1621820 res!2147796) b!5041315))

(assert (= (and b!5041315 c!863799) b!5041314))

(assert (= (and b!5041315 (not c!863799)) b!5041311))

(assert (= (and b!5041311 c!863800) b!5041319))

(assert (= (and b!5041311 (not c!863800)) b!5041312))

(assert (= (or b!5041314 b!5041311 b!5041312) bm!351410))

(declare-fun m!6075374 () Bool)

(assert (=> b!5041315 m!6075374))

(declare-fun m!6075376 () Bool)

(assert (=> b!5041316 m!6075376))

(declare-fun m!6075378 () Bool)

(assert (=> d!1621820 m!6075378))

(assert (=> d!1621820 m!6075102))

(assert (=> bm!351410 m!6075042))

(assert (=> d!1621708 d!1621820))

(assert (=> b!5041058 d!1621780))

(assert (=> b!5041058 d!1621782))

(declare-fun b!5041320 () Bool)

(declare-fun res!2147800 () Bool)

(declare-fun e!3148306 () Bool)

(assert (=> b!5041320 (=> (not res!2147800) (not e!3148306))))

(assert (=> b!5041320 (= res!2147800 (isBalanced!4378 (right!43033 (right!43033 t!4198))))))

(declare-fun b!5041321 () Bool)

(declare-fun e!3148305 () Bool)

(assert (=> b!5041321 (= e!3148305 e!3148306)))

(declare-fun res!2147801 () Bool)

(assert (=> b!5041321 (=> (not res!2147801) (not e!3148306))))

(assert (=> b!5041321 (= res!2147801 (<= (- 1) (- (height!2095 (left!42703 (right!43033 t!4198))) (height!2095 (right!43033 (right!43033 t!4198))))))))

(declare-fun b!5041323 () Bool)

(assert (=> b!5041323 (= e!3148306 (not (isEmpty!31538 (right!43033 (right!43033 t!4198)))))))

(declare-fun b!5041324 () Bool)

(declare-fun res!2147799 () Bool)

(assert (=> b!5041324 (=> (not res!2147799) (not e!3148306))))

(assert (=> b!5041324 (= res!2147799 (<= (- (height!2095 (left!42703 (right!43033 t!4198))) (height!2095 (right!43033 (right!43033 t!4198)))) 1))))

(declare-fun b!5041325 () Bool)

(declare-fun res!2147798 () Bool)

(assert (=> b!5041325 (=> (not res!2147798) (not e!3148306))))

(assert (=> b!5041325 (= res!2147798 (isBalanced!4378 (left!42703 (right!43033 t!4198))))))

(declare-fun b!5041322 () Bool)

(declare-fun res!2147797 () Bool)

(assert (=> b!5041322 (=> (not res!2147797) (not e!3148306))))

(assert (=> b!5041322 (= res!2147797 (not (isEmpty!31538 (left!42703 (right!43033 t!4198)))))))

(declare-fun d!1621822 () Bool)

(declare-fun res!2147802 () Bool)

(assert (=> d!1621822 (=> res!2147802 e!3148305)))

(assert (=> d!1621822 (= res!2147802 (not ((_ is Node!15516) (right!43033 t!4198))))))

(assert (=> d!1621822 (= (isBalanced!4378 (right!43033 t!4198)) e!3148305)))

(assert (= (and d!1621822 (not res!2147802)) b!5041321))

(assert (= (and b!5041321 res!2147801) b!5041324))

(assert (= (and b!5041324 res!2147799) b!5041325))

(assert (= (and b!5041325 res!2147798) b!5041320))

(assert (= (and b!5041320 res!2147800) b!5041322))

(assert (= (and b!5041322 res!2147797) b!5041323))

(assert (=> b!5041324 m!6075318))

(assert (=> b!5041324 m!6075320))

(declare-fun m!6075380 () Bool)

(assert (=> b!5041322 m!6075380))

(assert (=> b!5041321 m!6075318))

(assert (=> b!5041321 m!6075320))

(declare-fun m!6075382 () Bool)

(assert (=> b!5041325 m!6075382))

(declare-fun m!6075384 () Bool)

(assert (=> b!5041320 m!6075384))

(declare-fun m!6075386 () Bool)

(assert (=> b!5041323 m!6075386))

(assert (=> b!5041057 d!1621822))

(assert (=> b!5041109 d!1621714))

(assert (=> b!5041158 d!1621732))

(assert (=> b!5041110 d!1621714))

(declare-fun e!3148313 () Bool)

(declare-fun lt!2084409 () tuple2!63242)

(declare-fun b!5041334 () Bool)

(assert (=> b!5041334 (= e!3148313 (= (_2!34924 lt!2084409) (drop!2634 (t!370985 lt!2084337) (- i!618 1))))))

(declare-fun b!5041335 () Bool)

(declare-fun res!2147804 () Bool)

(assert (=> b!5041335 (=> (not res!2147804) (not e!3148313))))

(assert (=> b!5041335 (= res!2147804 (= (_1!34924 lt!2084409) (take!827 (t!370985 lt!2084337) (- i!618 1))))))

(declare-fun b!5041336 () Bool)

(declare-fun e!3148311 () tuple2!63242)

(assert (=> b!5041336 (= e!3148311 (tuple2!63243 Nil!58304 (t!370985 lt!2084337)))))

(declare-fun b!5041337 () Bool)

(declare-fun lt!2084408 () tuple2!63242)

(assert (=> b!5041337 (= lt!2084408 (splitAtIndex!211 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1)))))

(assert (=> b!5041337 (= e!3148311 (tuple2!63243 (Cons!58304 (h!64752 (t!370985 lt!2084337)) (_1!34924 lt!2084408)) (_2!34924 lt!2084408)))))

(declare-fun d!1621824 () Bool)

(assert (=> d!1621824 e!3148313))

(declare-fun res!2147803 () Bool)

(assert (=> d!1621824 (=> (not res!2147803) (not e!3148313))))

(assert (=> d!1621824 (= res!2147803 (= (++!12729 (_1!34924 lt!2084409) (_2!34924 lt!2084409)) (t!370985 lt!2084337)))))

(declare-fun e!3148312 () tuple2!63242)

(assert (=> d!1621824 (= lt!2084409 e!3148312)))

(declare-fun c!863807 () Bool)

(assert (=> d!1621824 (= c!863807 ((_ is Nil!58304) (t!370985 lt!2084337)))))

(assert (=> d!1621824 (= (splitAtIndex!211 (t!370985 lt!2084337) (- i!618 1)) lt!2084409)))

(declare-fun b!5041338 () Bool)

(assert (=> b!5041338 (= e!3148312 e!3148311)))

(declare-fun c!863806 () Bool)

(assert (=> b!5041338 (= c!863806 (<= (- i!618 1) 0))))

(declare-fun b!5041339 () Bool)

(assert (=> b!5041339 (= e!3148312 (tuple2!63243 Nil!58304 Nil!58304))))

(assert (= (and d!1621824 c!863807) b!5041339))

(assert (= (and d!1621824 (not c!863807)) b!5041338))

(assert (= (and b!5041338 c!863806) b!5041336))

(assert (= (and b!5041338 (not c!863806)) b!5041337))

(assert (= (and d!1621824 res!2147803) b!5041335))

(assert (= (and b!5041335 res!2147804) b!5041334))

(assert (=> b!5041334 m!6075098))

(assert (=> b!5041335 m!6075166))

(declare-fun m!6075388 () Bool)

(assert (=> b!5041337 m!6075388))

(declare-fun m!6075390 () Bool)

(assert (=> d!1621824 m!6075390))

(assert (=> b!5041160 d!1621824))

(declare-fun b!5041354 () Bool)

(declare-fun res!2147809 () Bool)

(declare-fun e!3148321 () Bool)

(assert (=> b!5041354 (=> (not res!2147809) (not e!3148321))))

(declare-fun lt!2084412 () List!58428)

(assert (=> b!5041354 (= res!2147809 (= (size!38907 lt!2084412) (+ (size!38907 (_1!34924 lt!2084384)) (size!38907 (_2!34924 lt!2084384)))))))

(declare-fun d!1621826 () Bool)

(assert (=> d!1621826 e!3148321))

(declare-fun res!2147810 () Bool)

(assert (=> d!1621826 (=> (not res!2147810) (not e!3148321))))

(assert (=> d!1621826 (= res!2147810 (= (content!10356 lt!2084412) ((_ map or) (content!10356 (_1!34924 lt!2084384)) (content!10356 (_2!34924 lt!2084384)))))))

(declare-fun e!3148320 () List!58428)

(assert (=> d!1621826 (= lt!2084412 e!3148320)))

(declare-fun c!863812 () Bool)

(assert (=> d!1621826 (= c!863812 ((_ is Nil!58304) (_1!34924 lt!2084384)))))

(assert (=> d!1621826 (= (++!12729 (_1!34924 lt!2084384) (_2!34924 lt!2084384)) lt!2084412)))

(declare-fun b!5041353 () Bool)

(assert (=> b!5041353 (= e!3148320 (Cons!58304 (h!64752 (_1!34924 lt!2084384)) (++!12729 (t!370985 (_1!34924 lt!2084384)) (_2!34924 lt!2084384))))))

(declare-fun b!5041352 () Bool)

(assert (=> b!5041352 (= e!3148320 (_2!34924 lt!2084384))))

(declare-fun b!5041355 () Bool)

(assert (=> b!5041355 (= e!3148321 (or (not (= (_2!34924 lt!2084384) Nil!58304)) (= lt!2084412 (_1!34924 lt!2084384))))))

(assert (= (and d!1621826 c!863812) b!5041352))

(assert (= (and d!1621826 (not c!863812)) b!5041353))

(assert (= (and d!1621826 res!2147810) b!5041354))

(assert (= (and b!5041354 res!2147809) b!5041355))

(declare-fun m!6075402 () Bool)

(assert (=> b!5041354 m!6075402))

(declare-fun m!6075404 () Bool)

(assert (=> b!5041354 m!6075404))

(declare-fun m!6075406 () Bool)

(assert (=> b!5041354 m!6075406))

(declare-fun m!6075408 () Bool)

(assert (=> d!1621826 m!6075408))

(declare-fun m!6075410 () Bool)

(assert (=> d!1621826 m!6075410))

(declare-fun m!6075412 () Bool)

(assert (=> d!1621826 m!6075412))

(declare-fun m!6075414 () Bool)

(assert (=> b!5041353 m!6075414))

(assert (=> d!1621736 d!1621826))

(declare-fun d!1621834 () Bool)

(declare-fun lt!2084413 () Int)

(assert (=> d!1621834 (>= lt!2084413 0)))

(declare-fun e!3148324 () Int)

(assert (=> d!1621834 (= lt!2084413 e!3148324)))

(declare-fun c!863813 () Bool)

(assert (=> d!1621834 (= c!863813 ((_ is Nil!58304) lt!2084373))))

(assert (=> d!1621834 (= (size!38907 lt!2084373) lt!2084413)))

(declare-fun b!5041358 () Bool)

(assert (=> b!5041358 (= e!3148324 0)))

(declare-fun b!5041359 () Bool)

(assert (=> b!5041359 (= e!3148324 (+ 1 (size!38907 (t!370985 lt!2084373))))))

(assert (= (and d!1621834 c!863813) b!5041358))

(assert (= (and d!1621834 (not c!863813)) b!5041359))

(declare-fun m!6075416 () Bool)

(assert (=> b!5041359 m!6075416))

(assert (=> b!5041112 d!1621834))

(declare-fun d!1621836 () Bool)

(declare-fun c!863814 () Bool)

(assert (=> d!1621836 (= c!863814 ((_ is Node!15516) (left!42703 (left!42703 t!4198))))))

(declare-fun e!3148325 () Bool)

(assert (=> d!1621836 (= (inv!77172 (left!42703 (left!42703 t!4198))) e!3148325)))

(declare-fun b!5041360 () Bool)

(assert (=> b!5041360 (= e!3148325 (inv!77176 (left!42703 (left!42703 t!4198))))))

(declare-fun b!5041361 () Bool)

(declare-fun e!3148326 () Bool)

(assert (=> b!5041361 (= e!3148325 e!3148326)))

(declare-fun res!2147811 () Bool)

(assert (=> b!5041361 (= res!2147811 (not ((_ is Leaf!25738) (left!42703 (left!42703 t!4198)))))))

(assert (=> b!5041361 (=> res!2147811 e!3148326)))

(declare-fun b!5041362 () Bool)

(assert (=> b!5041362 (= e!3148326 (inv!77177 (left!42703 (left!42703 t!4198))))))

(assert (= (and d!1621836 c!863814) b!5041360))

(assert (= (and d!1621836 (not c!863814)) b!5041361))

(assert (= (and b!5041361 (not res!2147811)) b!5041362))

(declare-fun m!6075418 () Bool)

(assert (=> b!5041360 m!6075418))

(declare-fun m!6075420 () Bool)

(assert (=> b!5041362 m!6075420))

(assert (=> b!5041183 d!1621836))

(declare-fun d!1621838 () Bool)

(declare-fun c!863815 () Bool)

(assert (=> d!1621838 (= c!863815 ((_ is Node!15516) (right!43033 (left!42703 t!4198))))))

(declare-fun e!3148328 () Bool)

(assert (=> d!1621838 (= (inv!77172 (right!43033 (left!42703 t!4198))) e!3148328)))

(declare-fun b!5041364 () Bool)

(assert (=> b!5041364 (= e!3148328 (inv!77176 (right!43033 (left!42703 t!4198))))))

(declare-fun b!5041365 () Bool)

(declare-fun e!3148329 () Bool)

(assert (=> b!5041365 (= e!3148328 e!3148329)))

(declare-fun res!2147812 () Bool)

(assert (=> b!5041365 (= res!2147812 (not ((_ is Leaf!25738) (right!43033 (left!42703 t!4198)))))))

(assert (=> b!5041365 (=> res!2147812 e!3148329)))

(declare-fun b!5041366 () Bool)

(assert (=> b!5041366 (= e!3148329 (inv!77177 (right!43033 (left!42703 t!4198))))))

(assert (= (and d!1621838 c!863815) b!5041364))

(assert (= (and d!1621838 (not c!863815)) b!5041365))

(assert (= (and b!5041365 (not res!2147812)) b!5041366))

(declare-fun m!6075422 () Bool)

(assert (=> b!5041364 m!6075422))

(declare-fun m!6075426 () Bool)

(assert (=> b!5041366 m!6075426))

(assert (=> b!5041183 d!1621838))

(declare-fun d!1621842 () Bool)

(declare-fun e!3148332 () Bool)

(assert (=> d!1621842 e!3148332))

(declare-fun res!2147813 () Bool)

(assert (=> d!1621842 (=> (not res!2147813) (not e!3148332))))

(declare-fun lt!2084414 () List!58428)

(assert (=> d!1621842 (= res!2147813 (= ((_ map implies) (content!10356 lt!2084414) (content!10356 (t!370985 lt!2084337))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148334 () List!58428)

(assert (=> d!1621842 (= lt!2084414 e!3148334)))

(declare-fun c!863819 () Bool)

(assert (=> d!1621842 (= c!863819 (or ((_ is Nil!58304) (t!370985 lt!2084337)) (<= (- i!618 1) 0)))))

(assert (=> d!1621842 (= (take!827 (t!370985 lt!2084337) (- i!618 1)) lt!2084414)))

(declare-fun b!5041367 () Bool)

(declare-fun e!3148330 () Int)

(assert (=> b!5041367 (= e!3148330 (size!38907 (t!370985 lt!2084337)))))

(declare-fun b!5041368 () Bool)

(declare-fun e!3148331 () Int)

(assert (=> b!5041368 (= e!3148331 e!3148330)))

(declare-fun c!863816 () Bool)

(assert (=> b!5041368 (= c!863816 (>= (- i!618 1) (size!38907 (t!370985 lt!2084337))))))

(declare-fun b!5041369 () Bool)

(assert (=> b!5041369 (= e!3148330 (- i!618 1))))

(declare-fun b!5041370 () Bool)

(assert (=> b!5041370 (= e!3148332 (= (size!38907 lt!2084414) e!3148331))))

(declare-fun c!863817 () Bool)

(assert (=> b!5041370 (= c!863817 (<= (- i!618 1) 0))))

(declare-fun b!5041371 () Bool)

(assert (=> b!5041371 (= e!3148334 (Cons!58304 (h!64752 (t!370985 lt!2084337)) (take!827 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1))))))

(declare-fun b!5041372 () Bool)

(assert (=> b!5041372 (= e!3148334 Nil!58304)))

(declare-fun b!5041373 () Bool)

(assert (=> b!5041373 (= e!3148331 0)))

(assert (= (and d!1621842 c!863819) b!5041372))

(assert (= (and d!1621842 (not c!863819)) b!5041371))

(assert (= (and d!1621842 res!2147813) b!5041370))

(assert (= (and b!5041370 c!863817) b!5041373))

(assert (= (and b!5041370 (not c!863817)) b!5041368))

(assert (= (and b!5041368 c!863816) b!5041367))

(assert (= (and b!5041368 (not c!863816)) b!5041369))

(declare-fun m!6075428 () Bool)

(assert (=> d!1621842 m!6075428))

(assert (=> d!1621842 m!6075250))

(declare-fun m!6075430 () Bool)

(assert (=> b!5041371 m!6075430))

(declare-fun m!6075432 () Bool)

(assert (=> b!5041370 m!6075432))

(assert (=> b!5041368 m!6075128))

(assert (=> b!5041367 m!6075128))

(assert (=> b!5041113 d!1621842))

(declare-fun d!1621844 () Bool)

(declare-fun res!2147815 () Bool)

(declare-fun e!3148338 () Bool)

(assert (=> d!1621844 (=> (not res!2147815) (not e!3148338))))

(assert (=> d!1621844 (= res!2147815 (= (csize!31262 t!4198) (+ (size!38906 (left!42703 t!4198)) (size!38906 (right!43033 t!4198)))))))

(assert (=> d!1621844 (= (inv!77176 t!4198) e!3148338)))

(declare-fun b!5041381 () Bool)

(declare-fun res!2147816 () Bool)

(assert (=> b!5041381 (=> (not res!2147816) (not e!3148338))))

(assert (=> b!5041381 (= res!2147816 (and (not (= (left!42703 t!4198) Empty!15516)) (not (= (right!43033 t!4198) Empty!15516))))))

(declare-fun b!5041382 () Bool)

(declare-fun res!2147817 () Bool)

(assert (=> b!5041382 (=> (not res!2147817) (not e!3148338))))

(assert (=> b!5041382 (= res!2147817 (= (cheight!15727 t!4198) (+ (max!0 (height!2095 (left!42703 t!4198)) (height!2095 (right!43033 t!4198))) 1)))))

(declare-fun b!5041383 () Bool)

(assert (=> b!5041383 (= e!3148338 (<= 0 (cheight!15727 t!4198)))))

(assert (= (and d!1621844 res!2147815) b!5041381))

(assert (= (and b!5041381 res!2147816) b!5041382))

(assert (= (and b!5041382 res!2147817) b!5041383))

(assert (=> d!1621844 m!6075236))

(assert (=> d!1621844 m!6075262))

(assert (=> b!5041382 m!6075142))

(assert (=> b!5041382 m!6075144))

(assert (=> b!5041382 m!6075142))

(assert (=> b!5041382 m!6075144))

(declare-fun m!6075444 () Bool)

(assert (=> b!5041382 m!6075444))

(assert (=> b!5041067 d!1621844))

(declare-fun d!1621848 () Bool)

(assert (=> d!1621848 (= (inv!77173 (xs!18842 (left!42703 t!4198))) (<= (size!38907 (innerList!15604 (xs!18842 (left!42703 t!4198)))) 2147483647))))

(declare-fun bs!1188936 () Bool)

(assert (= bs!1188936 d!1621848))

(declare-fun m!6075446 () Bool)

(assert (=> bs!1188936 m!6075446))

(assert (=> b!5041184 d!1621848))

(declare-fun b!5041393 () Bool)

(declare-fun e!3148344 () Bool)

(declare-fun tp!1411136 () Bool)

(assert (=> b!5041393 (= e!3148344 (and tp_is_empty!36795 tp!1411136))))

(assert (=> b!5041185 (= tp!1411121 e!3148344)))

(assert (= (and b!5041185 ((_ is Cons!58304) (innerList!15604 (xs!18842 (left!42703 t!4198))))) b!5041393))

(declare-fun b!5041394 () Bool)

(declare-fun e!3148345 () Bool)

(declare-fun tp!1411137 () Bool)

(assert (=> b!5041394 (= e!3148345 (and tp_is_empty!36795 tp!1411137))))

(assert (=> b!5041193 (= tp!1411129 e!3148345)))

(assert (= (and b!5041193 ((_ is Cons!58304) (t!370985 (innerList!15604 (xs!18842 t!4198))))) b!5041394))

(declare-fun tp!1411139 () Bool)

(declare-fun tp!1411140 () Bool)

(declare-fun b!5041395 () Bool)

(declare-fun e!3148346 () Bool)

(assert (=> b!5041395 (= e!3148346 (and (inv!77172 (left!42703 (left!42703 (right!43033 t!4198)))) tp!1411140 (inv!77172 (right!43033 (left!42703 (right!43033 t!4198)))) tp!1411139))))

(declare-fun b!5041397 () Bool)

(declare-fun e!3148347 () Bool)

(declare-fun tp!1411138 () Bool)

(assert (=> b!5041397 (= e!3148347 tp!1411138)))

(declare-fun b!5041396 () Bool)

(assert (=> b!5041396 (= e!3148346 (and (inv!77173 (xs!18842 (left!42703 (right!43033 t!4198)))) e!3148347))))

(assert (=> b!5041186 (= tp!1411126 (and (inv!77172 (left!42703 (right!43033 t!4198))) e!3148346))))

(assert (= (and b!5041186 ((_ is Node!15516) (left!42703 (right!43033 t!4198)))) b!5041395))

(assert (= b!5041396 b!5041397))

(assert (= (and b!5041186 ((_ is Leaf!25738) (left!42703 (right!43033 t!4198)))) b!5041396))

(declare-fun m!6075458 () Bool)

(assert (=> b!5041395 m!6075458))

(declare-fun m!6075460 () Bool)

(assert (=> b!5041395 m!6075460))

(declare-fun m!6075464 () Bool)

(assert (=> b!5041396 m!6075464))

(assert (=> b!5041186 m!6075216))

(declare-fun e!3148349 () Bool)

(declare-fun tp!1411142 () Bool)

(declare-fun b!5041400 () Bool)

(declare-fun tp!1411143 () Bool)

(assert (=> b!5041400 (= e!3148349 (and (inv!77172 (left!42703 (right!43033 (right!43033 t!4198)))) tp!1411143 (inv!77172 (right!43033 (right!43033 (right!43033 t!4198)))) tp!1411142))))

(declare-fun b!5041402 () Bool)

(declare-fun e!3148350 () Bool)

(declare-fun tp!1411141 () Bool)

(assert (=> b!5041402 (= e!3148350 tp!1411141)))

(declare-fun b!5041401 () Bool)

(assert (=> b!5041401 (= e!3148349 (and (inv!77173 (xs!18842 (right!43033 (right!43033 t!4198)))) e!3148350))))

(assert (=> b!5041186 (= tp!1411125 (and (inv!77172 (right!43033 (right!43033 t!4198))) e!3148349))))

(assert (= (and b!5041186 ((_ is Node!15516) (right!43033 (right!43033 t!4198)))) b!5041400))

(assert (= b!5041401 b!5041402))

(assert (= (and b!5041186 ((_ is Leaf!25738) (right!43033 (right!43033 t!4198)))) b!5041401))

(declare-fun m!6075466 () Bool)

(assert (=> b!5041400 m!6075466))

(declare-fun m!6075468 () Bool)

(assert (=> b!5041400 m!6075468))

(declare-fun m!6075470 () Bool)

(assert (=> b!5041401 m!6075470))

(assert (=> b!5041186 m!6075218))

(declare-fun tp!1411146 () Bool)

(declare-fun b!5041403 () Bool)

(declare-fun tp!1411145 () Bool)

(declare-fun e!3148351 () Bool)

(assert (=> b!5041403 (= e!3148351 (and (inv!77172 (left!42703 (left!42703 (left!42703 t!4198)))) tp!1411146 (inv!77172 (right!43033 (left!42703 (left!42703 t!4198)))) tp!1411145))))

(declare-fun b!5041405 () Bool)

(declare-fun e!3148352 () Bool)

(declare-fun tp!1411144 () Bool)

(assert (=> b!5041405 (= e!3148352 tp!1411144)))

(declare-fun b!5041404 () Bool)

(assert (=> b!5041404 (= e!3148351 (and (inv!77173 (xs!18842 (left!42703 (left!42703 t!4198)))) e!3148352))))

(assert (=> b!5041183 (= tp!1411123 (and (inv!77172 (left!42703 (left!42703 t!4198))) e!3148351))))

(assert (= (and b!5041183 ((_ is Node!15516) (left!42703 (left!42703 t!4198)))) b!5041403))

(assert (= b!5041404 b!5041405))

(assert (= (and b!5041183 ((_ is Leaf!25738) (left!42703 (left!42703 t!4198)))) b!5041404))

(declare-fun m!6075472 () Bool)

(assert (=> b!5041403 m!6075472))

(declare-fun m!6075474 () Bool)

(assert (=> b!5041403 m!6075474))

(declare-fun m!6075476 () Bool)

(assert (=> b!5041404 m!6075476))

(assert (=> b!5041183 m!6075210))

(declare-fun e!3148353 () Bool)

(declare-fun tp!1411149 () Bool)

(declare-fun b!5041406 () Bool)

(declare-fun tp!1411148 () Bool)

(assert (=> b!5041406 (= e!3148353 (and (inv!77172 (left!42703 (right!43033 (left!42703 t!4198)))) tp!1411149 (inv!77172 (right!43033 (right!43033 (left!42703 t!4198)))) tp!1411148))))

(declare-fun b!5041408 () Bool)

(declare-fun e!3148354 () Bool)

(declare-fun tp!1411147 () Bool)

(assert (=> b!5041408 (= e!3148354 tp!1411147)))

(declare-fun b!5041407 () Bool)

(assert (=> b!5041407 (= e!3148353 (and (inv!77173 (xs!18842 (right!43033 (left!42703 t!4198)))) e!3148354))))

(assert (=> b!5041183 (= tp!1411122 (and (inv!77172 (right!43033 (left!42703 t!4198))) e!3148353))))

(assert (= (and b!5041183 ((_ is Node!15516) (right!43033 (left!42703 t!4198)))) b!5041406))

(assert (= b!5041407 b!5041408))

(assert (= (and b!5041183 ((_ is Leaf!25738) (right!43033 (left!42703 t!4198)))) b!5041407))

(declare-fun m!6075478 () Bool)

(assert (=> b!5041406 m!6075478))

(declare-fun m!6075480 () Bool)

(assert (=> b!5041406 m!6075480))

(declare-fun m!6075482 () Bool)

(assert (=> b!5041407 m!6075482))

(assert (=> b!5041183 m!6075212))

(declare-fun b!5041409 () Bool)

(declare-fun e!3148355 () Bool)

(declare-fun tp!1411150 () Bool)

(assert (=> b!5041409 (= e!3148355 (and tp_is_empty!36795 tp!1411150))))

(assert (=> b!5041188 (= tp!1411124 e!3148355)))

(assert (= (and b!5041188 ((_ is Cons!58304) (innerList!15604 (xs!18842 (right!43033 t!4198))))) b!5041409))

(check-sat (not b!5041218) (not b!5041405) (not b!5041382) (not b!5041299) (not d!1621762) (not b!5041315) (not d!1621812) (not b!5041337) (not d!1621756) (not d!1621844) (not b!5041403) (not b!5041272) (not d!1621806) (not b!5041308) (not b!5041295) (not b!5041186) (not d!1621798) (not b!5041219) (not b!5041321) (not b!5041285) (not b!5041407) (not b!5041296) (not b!5041305) (not b!5041401) (not b!5041298) (not b!5041404) (not b!5041289) (not d!1621816) (not b!5041281) (not b!5041397) (not b!5041353) (not b!5041227) (not b!5041220) (not d!1621802) (not bm!351410) (not b!5041201) (not b!5041194) (not b!5041409) (not b!5041222) (not b!5041183) (not d!1621790) (not d!1621842) (not b!5041406) (not d!1621784) (not b!5041408) (not b!5041320) (not d!1621848) (not b!5041322) (not b!5041394) (not b!5041206) (not b!5041265) (not b!5041279) (not b!5041229) (not b!5041359) (not d!1621770) (not d!1621776) (not b!5041307) (not b!5041199) (not d!1621754) (not d!1621764) (not d!1621774) (not b!5041207) (not b!5041239) (not b!5041304) (not b!5041216) (not b!5041284) (not b!5041197) (not b!5041223) (not b!5041254) (not b!5041400) (not b!5041266) (not b!5041395) (not b!5041249) (not b!5041288) (not d!1621826) (not b!5041396) (not b!5041370) (not b!5041335) (not d!1621824) (not b!5041371) (not b!5041316) (not b!5041393) (not d!1621800) (not b!5041367) (not b!5041368) (not b!5041364) (not b!5041354) (not bm!351409) (not d!1621758) (not d!1621810) (not b!5041366) tp_is_empty!36795 (not d!1621820) (not b!5041362) (not b!5041324) (not b!5041402) (not b!5041196) (not b!5041221) (not b!5041224) (not b!5041360) (not b!5041323) (not b!5041325) (not b!5041334))
(check-sat)
(get-model)

(declare-fun d!1621910 () Bool)

(declare-fun lt!2084432 () Int)

(assert (=> d!1621910 (>= lt!2084432 0)))

(declare-fun e!3148411 () Int)

(assert (=> d!1621910 (= lt!2084432 e!3148411)))

(declare-fun c!863850 () Bool)

(assert (=> d!1621910 (= c!863850 ((_ is Nil!58304) (t!370985 (t!370985 lt!2084337))))))

(assert (=> d!1621910 (= (size!38907 (t!370985 (t!370985 lt!2084337))) lt!2084432)))

(declare-fun b!5041516 () Bool)

(assert (=> b!5041516 (= e!3148411 0)))

(declare-fun b!5041517 () Bool)

(assert (=> b!5041517 (= e!3148411 (+ 1 (size!38907 (t!370985 (t!370985 (t!370985 lt!2084337))))))))

(assert (= (and d!1621910 c!863850) b!5041516))

(assert (= (and d!1621910 (not c!863850)) b!5041517))

(declare-fun m!6075634 () Bool)

(assert (=> b!5041517 m!6075634))

(assert (=> b!5041288 d!1621910))

(assert (=> b!5041186 d!1621750))

(assert (=> b!5041186 d!1621752))

(declare-fun d!1621912 () Bool)

(assert (=> d!1621912 (= (height!2095 (left!42703 (right!43033 t!4198))) (ite ((_ is Empty!15516) (left!42703 (right!43033 t!4198))) 0 (ite ((_ is Leaf!25738) (left!42703 (right!43033 t!4198))) 1 (cheight!15727 (left!42703 (right!43033 t!4198))))))))

(assert (=> b!5041324 d!1621912))

(declare-fun d!1621914 () Bool)

(assert (=> d!1621914 (= (height!2095 (right!43033 (right!43033 t!4198))) (ite ((_ is Empty!15516) (right!43033 (right!43033 t!4198))) 0 (ite ((_ is Leaf!25738) (right!43033 (right!43033 t!4198))) 1 (cheight!15727 (right!43033 (right!43033 t!4198))))))))

(assert (=> b!5041324 d!1621914))

(declare-fun d!1621916 () Bool)

(declare-fun c!863851 () Bool)

(assert (=> d!1621916 (= c!863851 ((_ is Node!15516) (left!42703 (left!42703 (left!42703 t!4198)))))))

(declare-fun e!3148412 () Bool)

(assert (=> d!1621916 (= (inv!77172 (left!42703 (left!42703 (left!42703 t!4198)))) e!3148412)))

(declare-fun b!5041518 () Bool)

(assert (=> b!5041518 (= e!3148412 (inv!77176 (left!42703 (left!42703 (left!42703 t!4198)))))))

(declare-fun b!5041519 () Bool)

(declare-fun e!3148413 () Bool)

(assert (=> b!5041519 (= e!3148412 e!3148413)))

(declare-fun res!2147864 () Bool)

(assert (=> b!5041519 (= res!2147864 (not ((_ is Leaf!25738) (left!42703 (left!42703 (left!42703 t!4198))))))))

(assert (=> b!5041519 (=> res!2147864 e!3148413)))

(declare-fun b!5041520 () Bool)

(assert (=> b!5041520 (= e!3148413 (inv!77177 (left!42703 (left!42703 (left!42703 t!4198)))))))

(assert (= (and d!1621916 c!863851) b!5041518))

(assert (= (and d!1621916 (not c!863851)) b!5041519))

(assert (= (and b!5041519 (not res!2147864)) b!5041520))

(declare-fun m!6075636 () Bool)

(assert (=> b!5041518 m!6075636))

(declare-fun m!6075638 () Bool)

(assert (=> b!5041520 m!6075638))

(assert (=> b!5041403 d!1621916))

(declare-fun d!1621918 () Bool)

(declare-fun c!863852 () Bool)

(assert (=> d!1621918 (= c!863852 ((_ is Node!15516) (right!43033 (left!42703 (left!42703 t!4198)))))))

(declare-fun e!3148414 () Bool)

(assert (=> d!1621918 (= (inv!77172 (right!43033 (left!42703 (left!42703 t!4198)))) e!3148414)))

(declare-fun b!5041521 () Bool)

(assert (=> b!5041521 (= e!3148414 (inv!77176 (right!43033 (left!42703 (left!42703 t!4198)))))))

(declare-fun b!5041522 () Bool)

(declare-fun e!3148415 () Bool)

(assert (=> b!5041522 (= e!3148414 e!3148415)))

(declare-fun res!2147865 () Bool)

(assert (=> b!5041522 (= res!2147865 (not ((_ is Leaf!25738) (right!43033 (left!42703 (left!42703 t!4198))))))))

(assert (=> b!5041522 (=> res!2147865 e!3148415)))

(declare-fun b!5041523 () Bool)

(assert (=> b!5041523 (= e!3148415 (inv!77177 (right!43033 (left!42703 (left!42703 t!4198)))))))

(assert (= (and d!1621918 c!863852) b!5041521))

(assert (= (and d!1621918 (not c!863852)) b!5041522))

(assert (= (and b!5041522 (not res!2147865)) b!5041523))

(declare-fun m!6075640 () Bool)

(assert (=> b!5041521 m!6075640))

(declare-fun m!6075642 () Bool)

(assert (=> b!5041523 m!6075642))

(assert (=> b!5041403 d!1621918))

(declare-fun d!1621920 () Bool)

(declare-fun c!863853 () Bool)

(assert (=> d!1621920 (= c!863853 ((_ is Node!15516) (left!42703 (left!42703 (right!43033 t!4198)))))))

(declare-fun e!3148416 () Bool)

(assert (=> d!1621920 (= (inv!77172 (left!42703 (left!42703 (right!43033 t!4198)))) e!3148416)))

(declare-fun b!5041524 () Bool)

(assert (=> b!5041524 (= e!3148416 (inv!77176 (left!42703 (left!42703 (right!43033 t!4198)))))))

(declare-fun b!5041525 () Bool)

(declare-fun e!3148417 () Bool)

(assert (=> b!5041525 (= e!3148416 e!3148417)))

(declare-fun res!2147866 () Bool)

(assert (=> b!5041525 (= res!2147866 (not ((_ is Leaf!25738) (left!42703 (left!42703 (right!43033 t!4198))))))))

(assert (=> b!5041525 (=> res!2147866 e!3148417)))

(declare-fun b!5041526 () Bool)

(assert (=> b!5041526 (= e!3148417 (inv!77177 (left!42703 (left!42703 (right!43033 t!4198)))))))

(assert (= (and d!1621920 c!863853) b!5041524))

(assert (= (and d!1621920 (not c!863853)) b!5041525))

(assert (= (and b!5041525 (not res!2147866)) b!5041526))

(declare-fun m!6075644 () Bool)

(assert (=> b!5041524 m!6075644))

(declare-fun m!6075646 () Bool)

(assert (=> b!5041526 m!6075646))

(assert (=> b!5041395 d!1621920))

(declare-fun d!1621922 () Bool)

(declare-fun c!863854 () Bool)

(assert (=> d!1621922 (= c!863854 ((_ is Node!15516) (right!43033 (left!42703 (right!43033 t!4198)))))))

(declare-fun e!3148418 () Bool)

(assert (=> d!1621922 (= (inv!77172 (right!43033 (left!42703 (right!43033 t!4198)))) e!3148418)))

(declare-fun b!5041527 () Bool)

(assert (=> b!5041527 (= e!3148418 (inv!77176 (right!43033 (left!42703 (right!43033 t!4198)))))))

(declare-fun b!5041528 () Bool)

(declare-fun e!3148419 () Bool)

(assert (=> b!5041528 (= e!3148418 e!3148419)))

(declare-fun res!2147867 () Bool)

(assert (=> b!5041528 (= res!2147867 (not ((_ is Leaf!25738) (right!43033 (left!42703 (right!43033 t!4198))))))))

(assert (=> b!5041528 (=> res!2147867 e!3148419)))

(declare-fun b!5041529 () Bool)

(assert (=> b!5041529 (= e!3148419 (inv!77177 (right!43033 (left!42703 (right!43033 t!4198)))))))

(assert (= (and d!1621922 c!863854) b!5041527))

(assert (= (and d!1621922 (not c!863854)) b!5041528))

(assert (= (and b!5041528 (not res!2147867)) b!5041529))

(declare-fun m!6075648 () Bool)

(assert (=> b!5041527 m!6075648))

(declare-fun m!6075650 () Bool)

(assert (=> b!5041529 m!6075650))

(assert (=> b!5041395 d!1621922))

(declare-fun d!1621924 () Bool)

(declare-fun lt!2084433 () Int)

(assert (=> d!1621924 (>= lt!2084433 0)))

(declare-fun e!3148420 () Int)

(assert (=> d!1621924 (= lt!2084433 e!3148420)))

(declare-fun c!863855 () Bool)

(assert (=> d!1621924 (= c!863855 ((_ is Nil!58304) (drop!2634 lt!2084337 0)))))

(assert (=> d!1621924 (= (size!38907 (drop!2634 lt!2084337 0)) lt!2084433)))

(declare-fun b!5041530 () Bool)

(assert (=> b!5041530 (= e!3148420 0)))

(declare-fun b!5041531 () Bool)

(assert (=> b!5041531 (= e!3148420 (+ 1 (size!38907 (t!370985 (drop!2634 lt!2084337 0)))))))

(assert (= (and d!1621924 c!863855) b!5041530))

(assert (= (and d!1621924 (not c!863855)) b!5041531))

(declare-fun m!6075652 () Bool)

(assert (=> b!5041531 m!6075652))

(assert (=> b!5041304 d!1621924))

(declare-fun d!1621926 () Bool)

(declare-fun lt!2084434 () Int)

(assert (=> d!1621926 (>= lt!2084434 0)))

(declare-fun e!3148421 () Int)

(assert (=> d!1621926 (= lt!2084434 e!3148421)))

(declare-fun c!863856 () Bool)

(assert (=> d!1621926 (= c!863856 ((_ is Nil!58304) (drop!2634 lt!2084337 i!618)))))

(assert (=> d!1621926 (= (size!38907 (drop!2634 lt!2084337 i!618)) lt!2084434)))

(declare-fun b!5041532 () Bool)

(assert (=> b!5041532 (= e!3148421 0)))

(declare-fun b!5041533 () Bool)

(assert (=> b!5041533 (= e!3148421 (+ 1 (size!38907 (t!370985 (drop!2634 lt!2084337 i!618)))))))

(assert (= (and d!1621926 c!863856) b!5041532))

(assert (= (and d!1621926 (not c!863856)) b!5041533))

(declare-fun m!6075654 () Bool)

(assert (=> b!5041533 m!6075654))

(assert (=> b!5041296 d!1621926))

(declare-fun d!1621928 () Bool)

(declare-fun c!863857 () Bool)

(assert (=> d!1621928 (= c!863857 ((_ is Nil!58304) lt!2084395))))

(declare-fun e!3148422 () (InoxSet T!104208))

(assert (=> d!1621928 (= (content!10356 lt!2084395) e!3148422)))

(declare-fun b!5041534 () Bool)

(assert (=> b!5041534 (= e!3148422 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041535 () Bool)

(assert (=> b!5041535 (= e!3148422 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084395) true) (content!10356 (t!370985 lt!2084395))))))

(assert (= (and d!1621928 c!863857) b!5041534))

(assert (= (and d!1621928 (not c!863857)) b!5041535))

(declare-fun m!6075656 () Bool)

(assert (=> b!5041535 m!6075656))

(declare-fun m!6075658 () Bool)

(assert (=> b!5041535 m!6075658))

(assert (=> d!1621764 d!1621928))

(declare-fun d!1621930 () Bool)

(declare-fun c!863858 () Bool)

(assert (=> d!1621930 (= c!863858 ((_ is Nil!58304) (t!370985 lt!2084337)))))

(declare-fun e!3148423 () (InoxSet T!104208))

(assert (=> d!1621930 (= (content!10356 (t!370985 lt!2084337)) e!3148423)))

(declare-fun b!5041536 () Bool)

(assert (=> b!5041536 (= e!3148423 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041537 () Bool)

(assert (=> b!5041537 (= e!3148423 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (t!370985 lt!2084337)) true) (content!10356 (t!370985 (t!370985 lt!2084337)))))))

(assert (= (and d!1621930 c!863858) b!5041536))

(assert (= (and d!1621930 (not c!863858)) b!5041537))

(declare-fun m!6075660 () Bool)

(assert (=> b!5041537 m!6075660))

(declare-fun m!6075662 () Bool)

(assert (=> b!5041537 m!6075662))

(assert (=> d!1621764 d!1621930))

(declare-fun d!1621932 () Bool)

(assert (=> d!1621932 (= (inv!77173 (xs!18842 (right!43033 (left!42703 t!4198)))) (<= (size!38907 (innerList!15604 (xs!18842 (right!43033 (left!42703 t!4198))))) 2147483647))))

(declare-fun bs!1188942 () Bool)

(assert (= bs!1188942 d!1621932))

(declare-fun m!6075664 () Bool)

(assert (=> bs!1188942 m!6075664))

(assert (=> b!5041407 d!1621932))

(declare-fun d!1621934 () Bool)

(declare-fun lt!2084435 () Int)

(assert (=> d!1621934 (>= lt!2084435 0)))

(declare-fun e!3148424 () Int)

(assert (=> d!1621934 (= lt!2084435 e!3148424)))

(declare-fun c!863859 () Bool)

(assert (=> d!1621934 (= c!863859 ((_ is Nil!58304) lt!2084404))))

(assert (=> d!1621934 (= (size!38907 lt!2084404) lt!2084435)))

(declare-fun b!5041538 () Bool)

(assert (=> b!5041538 (= e!3148424 0)))

(declare-fun b!5041539 () Bool)

(assert (=> b!5041539 (= e!3148424 (+ 1 (size!38907 (t!370985 lt!2084404))))))

(assert (= (and d!1621934 c!863859) b!5041538))

(assert (= (and d!1621934 (not c!863859)) b!5041539))

(declare-fun m!6075666 () Bool)

(assert (=> b!5041539 m!6075666))

(assert (=> b!5041298 d!1621934))

(declare-fun d!1621936 () Bool)

(declare-fun lt!2084436 () Int)

(assert (=> d!1621936 (>= lt!2084436 0)))

(declare-fun e!3148425 () Int)

(assert (=> d!1621936 (= lt!2084436 e!3148425)))

(declare-fun c!863860 () Bool)

(assert (=> d!1621936 (= c!863860 ((_ is Nil!58304) lt!2084407))))

(assert (=> d!1621936 (= (size!38907 lt!2084407) lt!2084436)))

(declare-fun b!5041540 () Bool)

(assert (=> b!5041540 (= e!3148425 0)))

(declare-fun b!5041541 () Bool)

(assert (=> b!5041541 (= e!3148425 (+ 1 (size!38907 (t!370985 lt!2084407))))))

(assert (= (and d!1621936 c!863860) b!5041540))

(assert (= (and d!1621936 (not c!863860)) b!5041541))

(declare-fun m!6075668 () Bool)

(assert (=> b!5041541 m!6075668))

(assert (=> b!5041315 d!1621936))

(declare-fun b!5041542 () Bool)

(declare-fun res!2147871 () Bool)

(declare-fun e!3148427 () Bool)

(assert (=> b!5041542 (=> (not res!2147871) (not e!3148427))))

(assert (=> b!5041542 (= res!2147871 (isBalanced!4378 (right!43033 (right!43033 (right!43033 t!4198)))))))

(declare-fun b!5041543 () Bool)

(declare-fun e!3148426 () Bool)

(assert (=> b!5041543 (= e!3148426 e!3148427)))

(declare-fun res!2147872 () Bool)

(assert (=> b!5041543 (=> (not res!2147872) (not e!3148427))))

(assert (=> b!5041543 (= res!2147872 (<= (- 1) (- (height!2095 (left!42703 (right!43033 (right!43033 t!4198)))) (height!2095 (right!43033 (right!43033 (right!43033 t!4198)))))))))

(declare-fun b!5041545 () Bool)

(assert (=> b!5041545 (= e!3148427 (not (isEmpty!31538 (right!43033 (right!43033 (right!43033 t!4198))))))))

(declare-fun b!5041546 () Bool)

(declare-fun res!2147870 () Bool)

(assert (=> b!5041546 (=> (not res!2147870) (not e!3148427))))

(assert (=> b!5041546 (= res!2147870 (<= (- (height!2095 (left!42703 (right!43033 (right!43033 t!4198)))) (height!2095 (right!43033 (right!43033 (right!43033 t!4198))))) 1))))

(declare-fun b!5041547 () Bool)

(declare-fun res!2147869 () Bool)

(assert (=> b!5041547 (=> (not res!2147869) (not e!3148427))))

(assert (=> b!5041547 (= res!2147869 (isBalanced!4378 (left!42703 (right!43033 (right!43033 t!4198)))))))

(declare-fun b!5041544 () Bool)

(declare-fun res!2147868 () Bool)

(assert (=> b!5041544 (=> (not res!2147868) (not e!3148427))))

(assert (=> b!5041544 (= res!2147868 (not (isEmpty!31538 (left!42703 (right!43033 (right!43033 t!4198))))))))

(declare-fun d!1621938 () Bool)

(declare-fun res!2147873 () Bool)

(assert (=> d!1621938 (=> res!2147873 e!3148426)))

(assert (=> d!1621938 (= res!2147873 (not ((_ is Node!15516) (right!43033 (right!43033 t!4198)))))))

(assert (=> d!1621938 (= (isBalanced!4378 (right!43033 (right!43033 t!4198))) e!3148426)))

(assert (= (and d!1621938 (not res!2147873)) b!5041543))

(assert (= (and b!5041543 res!2147872) b!5041546))

(assert (= (and b!5041546 res!2147870) b!5041547))

(assert (= (and b!5041547 res!2147869) b!5041542))

(assert (= (and b!5041542 res!2147871) b!5041544))

(assert (= (and b!5041544 res!2147868) b!5041545))

(declare-fun m!6075670 () Bool)

(assert (=> b!5041546 m!6075670))

(declare-fun m!6075672 () Bool)

(assert (=> b!5041546 m!6075672))

(declare-fun m!6075674 () Bool)

(assert (=> b!5041544 m!6075674))

(assert (=> b!5041543 m!6075670))

(assert (=> b!5041543 m!6075672))

(declare-fun m!6075676 () Bool)

(assert (=> b!5041547 m!6075676))

(declare-fun m!6075678 () Bool)

(assert (=> b!5041542 m!6075678))

(declare-fun m!6075680 () Bool)

(assert (=> b!5041545 m!6075680))

(assert (=> b!5041320 d!1621938))

(declare-fun d!1621940 () Bool)

(assert (=> d!1621940 (= (max!0 (height!2095 (left!42703 (right!43033 t!4198))) (height!2095 (right!43033 (right!43033 t!4198)))) (ite (< (height!2095 (left!42703 (right!43033 t!4198))) (height!2095 (right!43033 (right!43033 t!4198)))) (height!2095 (right!43033 (right!43033 t!4198))) (height!2095 (left!42703 (right!43033 t!4198)))))))

(assert (=> b!5041279 d!1621940))

(assert (=> b!5041279 d!1621912))

(assert (=> b!5041279 d!1621914))

(declare-fun d!1621942 () Bool)

(declare-fun lt!2084437 () Int)

(assert (=> d!1621942 (>= lt!2084437 0)))

(declare-fun e!3148428 () Int)

(assert (=> d!1621942 (= lt!2084437 e!3148428)))

(declare-fun c!863861 () Bool)

(assert (=> d!1621942 (= c!863861 ((_ is Nil!58304) (list!18917 (xs!18842 (left!42703 t!4198)))))))

(assert (=> d!1621942 (= (size!38907 (list!18917 (xs!18842 (left!42703 t!4198)))) lt!2084437)))

(declare-fun b!5041548 () Bool)

(assert (=> b!5041548 (= e!3148428 0)))

(declare-fun b!5041549 () Bool)

(assert (=> b!5041549 (= e!3148428 (+ 1 (size!38907 (t!370985 (list!18917 (xs!18842 (left!42703 t!4198)))))))))

(assert (= (and d!1621942 c!863861) b!5041548))

(assert (= (and d!1621942 (not c!863861)) b!5041549))

(declare-fun m!6075682 () Bool)

(assert (=> b!5041549 m!6075682))

(assert (=> b!5041249 d!1621942))

(declare-fun d!1621944 () Bool)

(assert (=> d!1621944 (= (list!18917 (xs!18842 (left!42703 t!4198))) (innerList!15604 (xs!18842 (left!42703 t!4198))))))

(assert (=> b!5041249 d!1621944))

(declare-fun d!1621946 () Bool)

(declare-fun lt!2084438 () Int)

(assert (=> d!1621946 (>= lt!2084438 0)))

(declare-fun e!3148429 () Int)

(assert (=> d!1621946 (= lt!2084438 e!3148429)))

(declare-fun c!863862 () Bool)

(assert (=> d!1621946 (= c!863862 ((_ is Nil!58304) (innerList!15604 (xs!18842 (left!42703 t!4198)))))))

(assert (=> d!1621946 (= (size!38907 (innerList!15604 (xs!18842 (left!42703 t!4198)))) lt!2084438)))

(declare-fun b!5041550 () Bool)

(assert (=> b!5041550 (= e!3148429 0)))

(declare-fun b!5041551 () Bool)

(assert (=> b!5041551 (= e!3148429 (+ 1 (size!38907 (t!370985 (innerList!15604 (xs!18842 (left!42703 t!4198)))))))))

(assert (= (and d!1621946 c!863862) b!5041550))

(assert (= (and d!1621946 (not c!863862)) b!5041551))

(declare-fun m!6075684 () Bool)

(assert (=> b!5041551 m!6075684))

(assert (=> d!1621848 d!1621946))

(assert (=> b!5041334 d!1621764))

(declare-fun d!1621948 () Bool)

(declare-fun lt!2084439 () Int)

(assert (=> d!1621948 (>= lt!2084439 0)))

(declare-fun e!3148430 () Int)

(assert (=> d!1621948 (= lt!2084439 e!3148430)))

(declare-fun c!863863 () Bool)

(assert (=> d!1621948 (= c!863863 ((_ is Nil!58304) (t!370985 (innerList!15604 (xs!18842 t!4198)))))))

(assert (=> d!1621948 (= (size!38907 (t!370985 (innerList!15604 (xs!18842 t!4198)))) lt!2084439)))

(declare-fun b!5041552 () Bool)

(assert (=> b!5041552 (= e!3148430 0)))

(declare-fun b!5041553 () Bool)

(assert (=> b!5041553 (= e!3148430 (+ 1 (size!38907 (t!370985 (t!370985 (innerList!15604 (xs!18842 t!4198)))))))))

(assert (= (and d!1621948 c!863863) b!5041552))

(assert (= (and d!1621948 (not c!863863)) b!5041553))

(declare-fun m!6075686 () Bool)

(assert (=> b!5041553 m!6075686))

(assert (=> b!5041229 d!1621948))

(declare-fun d!1621950 () Bool)

(declare-fun lt!2084440 () Bool)

(assert (=> d!1621950 (= lt!2084440 (isEmpty!31539 (list!18919 (left!42703 (right!43033 t!4198)))))))

(assert (=> d!1621950 (= lt!2084440 (= (size!38906 (left!42703 (right!43033 t!4198))) 0))))

(assert (=> d!1621950 (= (isEmpty!31538 (left!42703 (right!43033 t!4198))) lt!2084440)))

(declare-fun bs!1188943 () Bool)

(assert (= bs!1188943 d!1621950))

(declare-fun m!6075688 () Bool)

(assert (=> bs!1188943 m!6075688))

(assert (=> bs!1188943 m!6075688))

(declare-fun m!6075690 () Bool)

(assert (=> bs!1188943 m!6075690))

(assert (=> bs!1188943 m!6075314))

(assert (=> b!5041322 d!1621950))

(declare-fun d!1621952 () Bool)

(declare-fun lt!2084441 () Int)

(assert (=> d!1621952 (>= lt!2084441 0)))

(declare-fun e!3148431 () Int)

(assert (=> d!1621952 (= lt!2084441 e!3148431)))

(declare-fun c!863864 () Bool)

(assert (=> d!1621952 (= c!863864 ((_ is Nil!58304) (list!18917 (xs!18842 t!4198))))))

(assert (=> d!1621952 (= (size!38907 (list!18917 (xs!18842 t!4198))) lt!2084441)))

(declare-fun b!5041554 () Bool)

(assert (=> b!5041554 (= e!3148431 0)))

(declare-fun b!5041555 () Bool)

(assert (=> b!5041555 (= e!3148431 (+ 1 (size!38907 (t!370985 (list!18917 (xs!18842 t!4198))))))))

(assert (= (and d!1621952 c!863864) b!5041554))

(assert (= (and d!1621952 (not c!863864)) b!5041555))

(declare-fun m!6075692 () Bool)

(assert (=> b!5041555 m!6075692))

(assert (=> d!1621806 d!1621952))

(assert (=> d!1621806 d!1621744))

(declare-fun b!5041558 () Bool)

(declare-fun res!2147874 () Bool)

(declare-fun e!3148433 () Bool)

(assert (=> b!5041558 (=> (not res!2147874) (not e!3148433))))

(declare-fun lt!2084442 () List!58428)

(assert (=> b!5041558 (= res!2147874 (= (size!38907 lt!2084442) (+ (size!38907 (t!370985 (_1!34924 lt!2084384))) (size!38907 (_2!34924 lt!2084384)))))))

(declare-fun d!1621954 () Bool)

(assert (=> d!1621954 e!3148433))

(declare-fun res!2147875 () Bool)

(assert (=> d!1621954 (=> (not res!2147875) (not e!3148433))))

(assert (=> d!1621954 (= res!2147875 (= (content!10356 lt!2084442) ((_ map or) (content!10356 (t!370985 (_1!34924 lt!2084384))) (content!10356 (_2!34924 lt!2084384)))))))

(declare-fun e!3148432 () List!58428)

(assert (=> d!1621954 (= lt!2084442 e!3148432)))

(declare-fun c!863865 () Bool)

(assert (=> d!1621954 (= c!863865 ((_ is Nil!58304) (t!370985 (_1!34924 lt!2084384))))))

(assert (=> d!1621954 (= (++!12729 (t!370985 (_1!34924 lt!2084384)) (_2!34924 lt!2084384)) lt!2084442)))

(declare-fun b!5041557 () Bool)

(assert (=> b!5041557 (= e!3148432 (Cons!58304 (h!64752 (t!370985 (_1!34924 lt!2084384))) (++!12729 (t!370985 (t!370985 (_1!34924 lt!2084384))) (_2!34924 lt!2084384))))))

(declare-fun b!5041556 () Bool)

(assert (=> b!5041556 (= e!3148432 (_2!34924 lt!2084384))))

(declare-fun b!5041559 () Bool)

(assert (=> b!5041559 (= e!3148433 (or (not (= (_2!34924 lt!2084384) Nil!58304)) (= lt!2084442 (t!370985 (_1!34924 lt!2084384)))))))

(assert (= (and d!1621954 c!863865) b!5041556))

(assert (= (and d!1621954 (not c!863865)) b!5041557))

(assert (= (and d!1621954 res!2147875) b!5041558))

(assert (= (and b!5041558 res!2147874) b!5041559))

(declare-fun m!6075694 () Bool)

(assert (=> b!5041558 m!6075694))

(declare-fun m!6075696 () Bool)

(assert (=> b!5041558 m!6075696))

(assert (=> b!5041558 m!6075406))

(declare-fun m!6075698 () Bool)

(assert (=> d!1621954 m!6075698))

(declare-fun m!6075700 () Bool)

(assert (=> d!1621954 m!6075700))

(assert (=> d!1621954 m!6075412))

(declare-fun m!6075702 () Bool)

(assert (=> b!5041557 m!6075702))

(assert (=> b!5041353 d!1621954))

(declare-fun d!1621956 () Bool)

(declare-fun c!863866 () Bool)

(assert (=> d!1621956 (= c!863866 ((_ is Nil!58304) lt!2084406))))

(declare-fun e!3148434 () (InoxSet T!104208))

(assert (=> d!1621956 (= (content!10356 lt!2084406) e!3148434)))

(declare-fun b!5041560 () Bool)

(assert (=> b!5041560 (= e!3148434 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041561 () Bool)

(assert (=> b!5041561 (= e!3148434 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084406) true) (content!10356 (t!370985 lt!2084406))))))

(assert (= (and d!1621956 c!863866) b!5041560))

(assert (= (and d!1621956 (not c!863866)) b!5041561))

(declare-fun m!6075704 () Bool)

(assert (=> b!5041561 m!6075704))

(declare-fun m!6075706 () Bool)

(assert (=> b!5041561 m!6075706))

(assert (=> d!1621816 d!1621956))

(declare-fun d!1621958 () Bool)

(declare-fun c!863867 () Bool)

(assert (=> d!1621958 (= c!863867 ((_ is Nil!58304) (drop!2634 lt!2084337 0)))))

(declare-fun e!3148435 () (InoxSet T!104208))

(assert (=> d!1621958 (= (content!10356 (drop!2634 lt!2084337 0)) e!3148435)))

(declare-fun b!5041562 () Bool)

(assert (=> b!5041562 (= e!3148435 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041563 () Bool)

(assert (=> b!5041563 (= e!3148435 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (drop!2634 lt!2084337 0)) true) (content!10356 (t!370985 (drop!2634 lt!2084337 0)))))))

(assert (= (and d!1621958 c!863867) b!5041562))

(assert (= (and d!1621958 (not c!863867)) b!5041563))

(declare-fun m!6075708 () Bool)

(assert (=> b!5041563 m!6075708))

(declare-fun m!6075710 () Bool)

(assert (=> b!5041563 m!6075710))

(assert (=> d!1621816 d!1621958))

(declare-fun b!5041564 () Bool)

(declare-fun res!2147879 () Bool)

(declare-fun e!3148437 () Bool)

(assert (=> b!5041564 (=> (not res!2147879) (not e!3148437))))

(assert (=> b!5041564 (= res!2147879 (isBalanced!4378 (right!43033 (right!43033 (left!42703 t!4198)))))))

(declare-fun b!5041565 () Bool)

(declare-fun e!3148436 () Bool)

(assert (=> b!5041565 (= e!3148436 e!3148437)))

(declare-fun res!2147880 () Bool)

(assert (=> b!5041565 (=> (not res!2147880) (not e!3148437))))

(assert (=> b!5041565 (= res!2147880 (<= (- 1) (- (height!2095 (left!42703 (right!43033 (left!42703 t!4198)))) (height!2095 (right!43033 (right!43033 (left!42703 t!4198)))))))))

(declare-fun b!5041567 () Bool)

(assert (=> b!5041567 (= e!3148437 (not (isEmpty!31538 (right!43033 (right!43033 (left!42703 t!4198))))))))

(declare-fun b!5041568 () Bool)

(declare-fun res!2147878 () Bool)

(assert (=> b!5041568 (=> (not res!2147878) (not e!3148437))))

(assert (=> b!5041568 (= res!2147878 (<= (- (height!2095 (left!42703 (right!43033 (left!42703 t!4198)))) (height!2095 (right!43033 (right!43033 (left!42703 t!4198))))) 1))))

(declare-fun b!5041569 () Bool)

(declare-fun res!2147877 () Bool)

(assert (=> b!5041569 (=> (not res!2147877) (not e!3148437))))

(assert (=> b!5041569 (= res!2147877 (isBalanced!4378 (left!42703 (right!43033 (left!42703 t!4198)))))))

(declare-fun b!5041566 () Bool)

(declare-fun res!2147876 () Bool)

(assert (=> b!5041566 (=> (not res!2147876) (not e!3148437))))

(assert (=> b!5041566 (= res!2147876 (not (isEmpty!31538 (left!42703 (right!43033 (left!42703 t!4198))))))))

(declare-fun d!1621960 () Bool)

(declare-fun res!2147881 () Bool)

(assert (=> d!1621960 (=> res!2147881 e!3148436)))

(assert (=> d!1621960 (= res!2147881 (not ((_ is Node!15516) (right!43033 (left!42703 t!4198)))))))

(assert (=> d!1621960 (= (isBalanced!4378 (right!43033 (left!42703 t!4198))) e!3148436)))

(assert (= (and d!1621960 (not res!2147881)) b!5041565))

(assert (= (and b!5041565 res!2147880) b!5041568))

(assert (= (and b!5041568 res!2147878) b!5041569))

(assert (= (and b!5041569 res!2147877) b!5041564))

(assert (= (and b!5041564 res!2147879) b!5041566))

(assert (= (and b!5041566 res!2147876) b!5041567))

(declare-fun m!6075712 () Bool)

(assert (=> b!5041568 m!6075712))

(declare-fun m!6075714 () Bool)

(assert (=> b!5041568 m!6075714))

(declare-fun m!6075716 () Bool)

(assert (=> b!5041566 m!6075716))

(assert (=> b!5041565 m!6075712))

(assert (=> b!5041565 m!6075714))

(declare-fun m!6075718 () Bool)

(assert (=> b!5041569 m!6075718))

(declare-fun m!6075720 () Bool)

(assert (=> b!5041564 m!6075720))

(declare-fun m!6075722 () Bool)

(assert (=> b!5041567 m!6075722))

(assert (=> b!5041219 d!1621960))

(declare-fun d!1621962 () Bool)

(declare-fun lt!2084443 () Int)

(assert (=> d!1621962 (>= lt!2084443 0)))

(declare-fun e!3148438 () Int)

(assert (=> d!1621962 (= lt!2084443 e!3148438)))

(declare-fun c!863868 () Bool)

(assert (=> d!1621962 (= c!863868 ((_ is Nil!58304) (list!18917 (xs!18842 (right!43033 t!4198)))))))

(assert (=> d!1621962 (= (size!38907 (list!18917 (xs!18842 (right!43033 t!4198)))) lt!2084443)))

(declare-fun b!5041570 () Bool)

(assert (=> b!5041570 (= e!3148438 0)))

(declare-fun b!5041571 () Bool)

(assert (=> b!5041571 (= e!3148438 (+ 1 (size!38907 (t!370985 (list!18917 (xs!18842 (right!43033 t!4198)))))))))

(assert (= (and d!1621962 c!863868) b!5041570))

(assert (= (and d!1621962 (not c!863868)) b!5041571))

(declare-fun m!6075724 () Bool)

(assert (=> b!5041571 m!6075724))

(assert (=> d!1621802 d!1621962))

(declare-fun d!1621964 () Bool)

(assert (=> d!1621964 (= (list!18917 (xs!18842 (right!43033 t!4198))) (innerList!15604 (xs!18842 (right!43033 t!4198))))))

(assert (=> d!1621802 d!1621964))

(declare-fun d!1621966 () Bool)

(assert (=> d!1621966 (= (max!0 (height!2095 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (height!2095 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))) (ite (< (height!2095 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (height!2095 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))) (height!2095 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (height!2095 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))))

(assert (=> b!5041272 d!1621966))

(declare-fun d!1621968 () Bool)

(assert (=> d!1621968 (= (height!2095 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (ite ((_ is Empty!15516) (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 0 (ite ((_ is Leaf!25738) (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 1 (cheight!15727 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(assert (=> b!5041272 d!1621968))

(declare-fun d!1621970 () Bool)

(assert (=> d!1621970 (= (height!2095 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (ite ((_ is Empty!15516) (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 0 (ite ((_ is Leaf!25738) (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 1 (cheight!15727 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(assert (=> b!5041272 d!1621970))

(declare-fun d!1621972 () Bool)

(assert (=> d!1621972 (= (isEmpty!31539 (list!18919 (right!43033 t!4198))) ((_ is Nil!58304) (list!18919 (right!43033 t!4198))))))

(assert (=> d!1621770 d!1621972))

(declare-fun b!5041574 () Bool)

(declare-fun e!3148440 () List!58428)

(assert (=> b!5041574 (= e!3148440 (list!18917 (xs!18842 (right!43033 t!4198))))))

(declare-fun d!1621974 () Bool)

(declare-fun c!863869 () Bool)

(assert (=> d!1621974 (= c!863869 ((_ is Empty!15516) (right!43033 t!4198)))))

(declare-fun e!3148439 () List!58428)

(assert (=> d!1621974 (= (list!18919 (right!43033 t!4198)) e!3148439)))

(declare-fun b!5041572 () Bool)

(assert (=> b!5041572 (= e!3148439 Nil!58304)))

(declare-fun b!5041573 () Bool)

(assert (=> b!5041573 (= e!3148439 e!3148440)))

(declare-fun c!863870 () Bool)

(assert (=> b!5041573 (= c!863870 ((_ is Leaf!25738) (right!43033 t!4198)))))

(declare-fun b!5041575 () Bool)

(assert (=> b!5041575 (= e!3148440 (++!12729 (list!18919 (left!42703 (right!43033 t!4198))) (list!18919 (right!43033 (right!43033 t!4198)))))))

(assert (= (and d!1621974 c!863869) b!5041572))

(assert (= (and d!1621974 (not c!863869)) b!5041573))

(assert (= (and b!5041573 c!863870) b!5041574))

(assert (= (and b!5041573 (not c!863870)) b!5041575))

(assert (=> b!5041574 m!6075324))

(assert (=> b!5041575 m!6075688))

(declare-fun m!6075726 () Bool)

(assert (=> b!5041575 m!6075726))

(assert (=> b!5041575 m!6075688))

(assert (=> b!5041575 m!6075726))

(declare-fun m!6075728 () Bool)

(assert (=> b!5041575 m!6075728))

(assert (=> d!1621770 d!1621974))

(declare-fun d!1621976 () Bool)

(declare-fun lt!2084444 () Int)

(assert (=> d!1621976 (= lt!2084444 (size!38907 (list!18919 (right!43033 t!4198))))))

(assert (=> d!1621976 (= lt!2084444 (ite ((_ is Empty!15516) (right!43033 t!4198)) 0 (ite ((_ is Leaf!25738) (right!43033 t!4198)) (csize!31263 (right!43033 t!4198)) (csize!31262 (right!43033 t!4198)))))))

(assert (=> d!1621976 (= (size!38906 (right!43033 t!4198)) lt!2084444)))

(declare-fun bs!1188944 () Bool)

(assert (= bs!1188944 d!1621976))

(assert (=> bs!1188944 m!6075258))

(assert (=> bs!1188944 m!6075258))

(declare-fun m!6075730 () Bool)

(assert (=> bs!1188944 m!6075730))

(assert (=> d!1621770 d!1621976))

(declare-fun d!1621978 () Bool)

(declare-fun lt!2084445 () Int)

(assert (=> d!1621978 (= lt!2084445 (size!38907 (list!18919 (left!42703 (right!43033 t!4198)))))))

(assert (=> d!1621978 (= lt!2084445 (ite ((_ is Empty!15516) (left!42703 (right!43033 t!4198))) 0 (ite ((_ is Leaf!25738) (left!42703 (right!43033 t!4198))) (csize!31263 (left!42703 (right!43033 t!4198))) (csize!31262 (left!42703 (right!43033 t!4198))))))))

(assert (=> d!1621978 (= (size!38906 (left!42703 (right!43033 t!4198))) lt!2084445)))

(declare-fun bs!1188945 () Bool)

(assert (= bs!1188945 d!1621978))

(assert (=> bs!1188945 m!6075688))

(assert (=> bs!1188945 m!6075688))

(declare-fun m!6075732 () Bool)

(assert (=> bs!1188945 m!6075732))

(assert (=> d!1621800 d!1621978))

(declare-fun d!1621980 () Bool)

(declare-fun lt!2084446 () Int)

(assert (=> d!1621980 (= lt!2084446 (size!38907 (list!18919 (right!43033 (right!43033 t!4198)))))))

(assert (=> d!1621980 (= lt!2084446 (ite ((_ is Empty!15516) (right!43033 (right!43033 t!4198))) 0 (ite ((_ is Leaf!25738) (right!43033 (right!43033 t!4198))) (csize!31263 (right!43033 (right!43033 t!4198))) (csize!31262 (right!43033 (right!43033 t!4198))))))))

(assert (=> d!1621980 (= (size!38906 (right!43033 (right!43033 t!4198))) lt!2084446)))

(declare-fun bs!1188946 () Bool)

(assert (= bs!1188946 d!1621980))

(assert (=> bs!1188946 m!6075726))

(assert (=> bs!1188946 m!6075726))

(declare-fun m!6075734 () Bool)

(assert (=> bs!1188946 m!6075734))

(assert (=> d!1621800 d!1621980))

(declare-fun d!1621982 () Bool)

(declare-fun lt!2084447 () Bool)

(assert (=> d!1621982 (= lt!2084447 (isEmpty!31539 (list!18919 (left!42703 (left!42703 t!4198)))))))

(assert (=> d!1621982 (= lt!2084447 (= (size!38906 (left!42703 (left!42703 t!4198))) 0))))

(assert (=> d!1621982 (= (isEmpty!31538 (left!42703 (left!42703 t!4198))) lt!2084447)))

(declare-fun bs!1188947 () Bool)

(assert (= bs!1188947 d!1621982))

(declare-fun m!6075736 () Bool)

(assert (=> bs!1188947 m!6075736))

(assert (=> bs!1188947 m!6075736))

(declare-fun m!6075738 () Bool)

(assert (=> bs!1188947 m!6075738))

(assert (=> bs!1188947 m!6075286))

(assert (=> b!5041221 d!1621982))

(declare-fun b!5041576 () Bool)

(declare-fun e!3148442 () Int)

(declare-fun e!3148445 () Int)

(assert (=> b!5041576 (= e!3148442 e!3148445)))

(declare-fun c!863873 () Bool)

(declare-fun call!351418 () Int)

(assert (=> b!5041576 (= c!863873 (>= (- (- i!618 1) 1) call!351418))))

(declare-fun b!5041577 () Bool)

(assert (=> b!5041577 (= e!3148445 (- call!351418 (- (- i!618 1) 1)))))

(declare-fun b!5041578 () Bool)

(declare-fun e!3148443 () List!58428)

(declare-fun e!3148444 () List!58428)

(assert (=> b!5041578 (= e!3148443 e!3148444)))

(declare-fun c!863874 () Bool)

(assert (=> b!5041578 (= c!863874 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5041579 () Bool)

(assert (=> b!5041579 (= e!3148442 call!351418)))

(declare-fun b!5041580 () Bool)

(declare-fun e!3148441 () Bool)

(declare-fun lt!2084448 () List!58428)

(assert (=> b!5041580 (= e!3148441 (= (size!38907 lt!2084448) e!3148442))))

(declare-fun c!863872 () Bool)

(assert (=> b!5041580 (= c!863872 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5041581 () Bool)

(assert (=> b!5041581 (= e!3148444 (drop!2634 (t!370985 (t!370985 (t!370985 lt!2084337))) (- (- (- i!618 1) 1) 1)))))

(declare-fun b!5041582 () Bool)

(assert (=> b!5041582 (= e!3148444 (t!370985 (t!370985 lt!2084337)))))

(declare-fun d!1621984 () Bool)

(assert (=> d!1621984 e!3148441))

(declare-fun res!2147882 () Bool)

(assert (=> d!1621984 (=> (not res!2147882) (not e!3148441))))

(assert (=> d!1621984 (= res!2147882 (= ((_ map implies) (content!10356 lt!2084448) (content!10356 (t!370985 (t!370985 lt!2084337)))) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1621984 (= lt!2084448 e!3148443)))

(declare-fun c!863871 () Bool)

(assert (=> d!1621984 (= c!863871 ((_ is Nil!58304) (t!370985 (t!370985 lt!2084337))))))

(assert (=> d!1621984 (= (drop!2634 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1)) lt!2084448)))

(declare-fun bm!351413 () Bool)

(assert (=> bm!351413 (= call!351418 (size!38907 (t!370985 (t!370985 lt!2084337))))))

(declare-fun b!5041583 () Bool)

(assert (=> b!5041583 (= e!3148443 Nil!58304)))

(declare-fun b!5041584 () Bool)

(assert (=> b!5041584 (= e!3148445 0)))

(assert (= (and d!1621984 c!863871) b!5041583))

(assert (= (and d!1621984 (not c!863871)) b!5041578))

(assert (= (and b!5041578 c!863874) b!5041582))

(assert (= (and b!5041578 (not c!863874)) b!5041581))

(assert (= (and d!1621984 res!2147882) b!5041580))

(assert (= (and b!5041580 c!863872) b!5041579))

(assert (= (and b!5041580 (not c!863872)) b!5041576))

(assert (= (and b!5041576 c!863873) b!5041584))

(assert (= (and b!5041576 (not c!863873)) b!5041577))

(assert (= (or b!5041579 b!5041576 b!5041577) bm!351413))

(declare-fun m!6075740 () Bool)

(assert (=> b!5041580 m!6075740))

(declare-fun m!6075742 () Bool)

(assert (=> b!5041581 m!6075742))

(declare-fun m!6075744 () Bool)

(assert (=> d!1621984 m!6075744))

(assert (=> d!1621984 m!6075662))

(assert (=> bm!351413 m!6075332))

(assert (=> b!5041207 d!1621984))

(declare-fun d!1621986 () Bool)

(declare-fun lt!2084449 () Int)

(assert (=> d!1621986 (>= lt!2084449 0)))

(declare-fun e!3148446 () Int)

(assert (=> d!1621986 (= lt!2084449 e!3148446)))

(declare-fun c!863875 () Bool)

(assert (=> d!1621986 (= c!863875 ((_ is Nil!58304) (t!370985 (list!18919 t!4198))))))

(assert (=> d!1621986 (= (size!38907 (t!370985 (list!18919 t!4198))) lt!2084449)))

(declare-fun b!5041585 () Bool)

(assert (=> b!5041585 (= e!3148446 0)))

(declare-fun b!5041586 () Bool)

(assert (=> b!5041586 (= e!3148446 (+ 1 (size!38907 (t!370985 (t!370985 (list!18919 t!4198))))))))

(assert (= (and d!1621986 c!863875) b!5041585))

(assert (= (and d!1621986 (not c!863875)) b!5041586))

(declare-fun m!6075746 () Bool)

(assert (=> b!5041586 m!6075746))

(assert (=> b!5041254 d!1621986))

(assert (=> b!5041285 d!1621952))

(assert (=> b!5041285 d!1621744))

(declare-fun d!1621988 () Bool)

(assert (=> d!1621988 (= (height!2095 (left!42703 (left!42703 t!4198))) (ite ((_ is Empty!15516) (left!42703 (left!42703 t!4198))) 0 (ite ((_ is Leaf!25738) (left!42703 (left!42703 t!4198))) 1 (cheight!15727 (left!42703 (left!42703 t!4198))))))))

(assert (=> b!5041223 d!1621988))

(declare-fun d!1621990 () Bool)

(assert (=> d!1621990 (= (height!2095 (right!43033 (left!42703 t!4198))) (ite ((_ is Empty!15516) (right!43033 (left!42703 t!4198))) 0 (ite ((_ is Leaf!25738) (right!43033 (left!42703 t!4198))) 1 (cheight!15727 (right!43033 (left!42703 t!4198))))))))

(assert (=> b!5041223 d!1621990))

(assert (=> b!5041281 d!1621962))

(assert (=> b!5041281 d!1621964))

(assert (=> b!5041305 d!1621924))

(declare-fun d!1621992 () Bool)

(declare-fun lt!2084450 () Int)

(assert (=> d!1621992 (= lt!2084450 (size!38907 (list!18919 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))))

(assert (=> d!1621992 (= lt!2084450 (ite ((_ is Empty!15516) (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 0 (ite ((_ is Leaf!25738) (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (csize!31263 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (csize!31262 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(assert (=> d!1621992 (= (size!38906 (left!42703 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) lt!2084450)))

(declare-fun bs!1188948 () Bool)

(assert (= bs!1188948 d!1621992))

(declare-fun m!6075748 () Bool)

(assert (=> bs!1188948 m!6075748))

(assert (=> bs!1188948 m!6075748))

(declare-fun m!6075750 () Bool)

(assert (=> bs!1188948 m!6075750))

(assert (=> d!1621798 d!1621992))

(declare-fun d!1621994 () Bool)

(declare-fun lt!2084451 () Int)

(assert (=> d!1621994 (= lt!2084451 (size!38907 (list!18919 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))))

(assert (=> d!1621994 (= lt!2084451 (ite ((_ is Empty!15516) (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) 0 (ite ((_ is Leaf!25738) (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (csize!31263 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (csize!31262 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))))

(assert (=> d!1621994 (= (size!38906 (right!43033 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) lt!2084451)))

(declare-fun bs!1188949 () Bool)

(assert (= bs!1188949 d!1621994))

(declare-fun m!6075752 () Bool)

(assert (=> bs!1188949 m!6075752))

(assert (=> bs!1188949 m!6075752))

(declare-fun m!6075754 () Bool)

(assert (=> bs!1188949 m!6075754))

(assert (=> d!1621798 d!1621994))

(assert (=> d!1621762 d!1621696))

(assert (=> d!1621762 d!1621712))

(assert (=> d!1621762 d!1621714))

(declare-fun d!1621996 () Bool)

(declare-fun res!2147883 () Bool)

(declare-fun e!3148447 () Bool)

(assert (=> d!1621996 (=> (not res!2147883) (not e!3148447))))

(assert (=> d!1621996 (= res!2147883 (= (csize!31262 (left!42703 (right!43033 t!4198))) (+ (size!38906 (left!42703 (left!42703 (right!43033 t!4198)))) (size!38906 (right!43033 (left!42703 (right!43033 t!4198)))))))))

(assert (=> d!1621996 (= (inv!77176 (left!42703 (right!43033 t!4198))) e!3148447)))

(declare-fun b!5041587 () Bool)

(declare-fun res!2147884 () Bool)

(assert (=> b!5041587 (=> (not res!2147884) (not e!3148447))))

(assert (=> b!5041587 (= res!2147884 (and (not (= (left!42703 (left!42703 (right!43033 t!4198))) Empty!15516)) (not (= (right!43033 (left!42703 (right!43033 t!4198))) Empty!15516))))))

(declare-fun b!5041588 () Bool)

(declare-fun res!2147885 () Bool)

(assert (=> b!5041588 (=> (not res!2147885) (not e!3148447))))

(assert (=> b!5041588 (= res!2147885 (= (cheight!15727 (left!42703 (right!43033 t!4198))) (+ (max!0 (height!2095 (left!42703 (left!42703 (right!43033 t!4198)))) (height!2095 (right!43033 (left!42703 (right!43033 t!4198))))) 1)))))

(declare-fun b!5041589 () Bool)

(assert (=> b!5041589 (= e!3148447 (<= 0 (cheight!15727 (left!42703 (right!43033 t!4198)))))))

(assert (= (and d!1621996 res!2147883) b!5041587))

(assert (= (and b!5041587 res!2147884) b!5041588))

(assert (= (and b!5041588 res!2147885) b!5041589))

(declare-fun m!6075756 () Bool)

(assert (=> d!1621996 m!6075756))

(declare-fun m!6075758 () Bool)

(assert (=> d!1621996 m!6075758))

(declare-fun m!6075760 () Bool)

(assert (=> b!5041588 m!6075760))

(declare-fun m!6075762 () Bool)

(assert (=> b!5041588 m!6075762))

(assert (=> b!5041588 m!6075760))

(assert (=> b!5041588 m!6075762))

(declare-fun m!6075764 () Bool)

(assert (=> b!5041588 m!6075764))

(assert (=> b!5041194 d!1621996))

(declare-fun d!1621998 () Bool)

(declare-fun lt!2084452 () Int)

(assert (=> d!1621998 (>= lt!2084452 0)))

(declare-fun e!3148448 () Int)

(assert (=> d!1621998 (= lt!2084452 e!3148448)))

(declare-fun c!863876 () Bool)

(assert (=> d!1621998 (= c!863876 ((_ is Nil!58304) (innerList!15604 (xs!18842 (right!43033 t!4198)))))))

(assert (=> d!1621998 (= (size!38907 (innerList!15604 (xs!18842 (right!43033 t!4198)))) lt!2084452)))

(declare-fun b!5041590 () Bool)

(assert (=> b!5041590 (= e!3148448 0)))

(declare-fun b!5041591 () Bool)

(assert (=> b!5041591 (= e!3148448 (+ 1 (size!38907 (t!370985 (innerList!15604 (xs!18842 (right!43033 t!4198)))))))))

(assert (= (and d!1621998 c!863876) b!5041590))

(assert (= (and d!1621998 (not c!863876)) b!5041591))

(declare-fun m!6075766 () Bool)

(assert (=> b!5041591 m!6075766))

(assert (=> d!1621754 d!1621998))

(declare-fun d!1622000 () Bool)

(declare-fun lt!2084453 () Int)

(assert (=> d!1622000 (>= lt!2084453 0)))

(declare-fun e!3148449 () Int)

(assert (=> d!1622000 (= lt!2084453 e!3148449)))

(declare-fun c!863877 () Bool)

(assert (=> d!1622000 (= c!863877 ((_ is Nil!58304) lt!2084406))))

(assert (=> d!1622000 (= (size!38907 lt!2084406) lt!2084453)))

(declare-fun b!5041592 () Bool)

(assert (=> b!5041592 (= e!3148449 0)))

(declare-fun b!5041593 () Bool)

(assert (=> b!5041593 (= e!3148449 (+ 1 (size!38907 (t!370985 lt!2084406))))))

(assert (= (and d!1622000 c!863877) b!5041592))

(assert (= (and d!1622000 (not c!863877)) b!5041593))

(declare-fun m!6075768 () Bool)

(assert (=> b!5041593 m!6075768))

(assert (=> b!5041307 d!1622000))

(assert (=> bm!351409 d!1621808))

(assert (=> b!5041265 d!1621744))

(declare-fun d!1622002 () Bool)

(declare-fun e!3148452 () Bool)

(assert (=> d!1622002 e!3148452))

(declare-fun res!2147886 () Bool)

(assert (=> d!1622002 (=> (not res!2147886) (not e!3148452))))

(declare-fun lt!2084454 () List!58428)

(assert (=> d!1622002 (= res!2147886 (= ((_ map implies) (content!10356 lt!2084454) (content!10356 (drop!2634 (list!18917 (xs!18842 t!4198)) 0))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148453 () List!58428)

(assert (=> d!1622002 (= lt!2084454 e!3148453)))

(declare-fun c!863880 () Bool)

(assert (=> d!1622002 (= c!863880 (or ((_ is Nil!58304) (drop!2634 (list!18917 (xs!18842 t!4198)) 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1622002 (= (take!827 (drop!2634 (list!18917 (xs!18842 t!4198)) 0) (- i!618 0)) lt!2084454)))

(declare-fun b!5041594 () Bool)

(declare-fun e!3148450 () Int)

(assert (=> b!5041594 (= e!3148450 (size!38907 (drop!2634 (list!18917 (xs!18842 t!4198)) 0)))))

(declare-fun b!5041595 () Bool)

(declare-fun e!3148451 () Int)

(assert (=> b!5041595 (= e!3148451 e!3148450)))

(declare-fun c!863878 () Bool)

(assert (=> b!5041595 (= c!863878 (>= (- i!618 0) (size!38907 (drop!2634 (list!18917 (xs!18842 t!4198)) 0))))))

(declare-fun b!5041596 () Bool)

(assert (=> b!5041596 (= e!3148450 (- i!618 0))))

(declare-fun b!5041597 () Bool)

(assert (=> b!5041597 (= e!3148452 (= (size!38907 lt!2084454) e!3148451))))

(declare-fun c!863879 () Bool)

(assert (=> b!5041597 (= c!863879 (<= (- i!618 0) 0))))

(declare-fun b!5041598 () Bool)

(assert (=> b!5041598 (= e!3148453 (Cons!58304 (h!64752 (drop!2634 (list!18917 (xs!18842 t!4198)) 0)) (take!827 (t!370985 (drop!2634 (list!18917 (xs!18842 t!4198)) 0)) (- (- i!618 0) 1))))))

(declare-fun b!5041599 () Bool)

(assert (=> b!5041599 (= e!3148453 Nil!58304)))

(declare-fun b!5041600 () Bool)

(assert (=> b!5041600 (= e!3148451 0)))

(assert (= (and d!1622002 c!863880) b!5041599))

(assert (= (and d!1622002 (not c!863880)) b!5041598))

(assert (= (and d!1622002 res!2147886) b!5041597))

(assert (= (and b!5041597 c!863879) b!5041600))

(assert (= (and b!5041597 (not c!863879)) b!5041595))

(assert (= (and b!5041595 c!863878) b!5041594))

(assert (= (and b!5041595 (not c!863878)) b!5041596))

(declare-fun m!6075770 () Bool)

(assert (=> d!1622002 m!6075770))

(assert (=> d!1622002 m!6075276))

(declare-fun m!6075772 () Bool)

(assert (=> d!1622002 m!6075772))

(declare-fun m!6075774 () Bool)

(assert (=> b!5041598 m!6075774))

(declare-fun m!6075776 () Bool)

(assert (=> b!5041597 m!6075776))

(assert (=> b!5041595 m!6075276))

(declare-fun m!6075778 () Bool)

(assert (=> b!5041595 m!6075778))

(assert (=> b!5041594 m!6075276))

(assert (=> b!5041594 m!6075778))

(assert (=> d!1621774 d!1622002))

(declare-fun b!5041601 () Bool)

(declare-fun e!3148455 () Int)

(declare-fun e!3148458 () Int)

(assert (=> b!5041601 (= e!3148455 e!3148458)))

(declare-fun c!863883 () Bool)

(declare-fun call!351419 () Int)

(assert (=> b!5041601 (= c!863883 (>= 0 call!351419))))

(declare-fun b!5041602 () Bool)

(assert (=> b!5041602 (= e!3148458 (- call!351419 0))))

(declare-fun b!5041603 () Bool)

(declare-fun e!3148456 () List!58428)

(declare-fun e!3148457 () List!58428)

(assert (=> b!5041603 (= e!3148456 e!3148457)))

(declare-fun c!863884 () Bool)

(assert (=> b!5041603 (= c!863884 (<= 0 0))))

(declare-fun b!5041604 () Bool)

(assert (=> b!5041604 (= e!3148455 call!351419)))

(declare-fun b!5041605 () Bool)

(declare-fun e!3148454 () Bool)

(declare-fun lt!2084455 () List!58428)

(assert (=> b!5041605 (= e!3148454 (= (size!38907 lt!2084455) e!3148455))))

(declare-fun c!863882 () Bool)

(assert (=> b!5041605 (= c!863882 (<= 0 0))))

(declare-fun b!5041606 () Bool)

(assert (=> b!5041606 (= e!3148457 (drop!2634 (t!370985 (list!18917 (xs!18842 t!4198))) (- 0 1)))))

(declare-fun b!5041607 () Bool)

(assert (=> b!5041607 (= e!3148457 (list!18917 (xs!18842 t!4198)))))

(declare-fun d!1622004 () Bool)

(assert (=> d!1622004 e!3148454))

(declare-fun res!2147887 () Bool)

(assert (=> d!1622004 (=> (not res!2147887) (not e!3148454))))

(assert (=> d!1622004 (= res!2147887 (= ((_ map implies) (content!10356 lt!2084455) (content!10356 (list!18917 (xs!18842 t!4198)))) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1622004 (= lt!2084455 e!3148456)))

(declare-fun c!863881 () Bool)

(assert (=> d!1622004 (= c!863881 ((_ is Nil!58304) (list!18917 (xs!18842 t!4198))))))

(assert (=> d!1622004 (= (drop!2634 (list!18917 (xs!18842 t!4198)) 0) lt!2084455)))

(declare-fun bm!351414 () Bool)

(assert (=> bm!351414 (= call!351419 (size!38907 (list!18917 (xs!18842 t!4198))))))

(declare-fun b!5041608 () Bool)

(assert (=> b!5041608 (= e!3148456 Nil!58304)))

(declare-fun b!5041609 () Bool)

(assert (=> b!5041609 (= e!3148458 0)))

(assert (= (and d!1622004 c!863881) b!5041608))

(assert (= (and d!1622004 (not c!863881)) b!5041603))

(assert (= (and b!5041603 c!863884) b!5041607))

(assert (= (and b!5041603 (not c!863884)) b!5041606))

(assert (= (and d!1622004 res!2147887) b!5041605))

(assert (= (and b!5041605 c!863882) b!5041604))

(assert (= (and b!5041605 (not c!863882)) b!5041601))

(assert (= (and b!5041601 c!863883) b!5041609))

(assert (= (and b!5041601 (not c!863883)) b!5041602))

(assert (= (or b!5041604 b!5041601 b!5041602) bm!351414))

(declare-fun m!6075780 () Bool)

(assert (=> b!5041605 m!6075780))

(declare-fun m!6075782 () Bool)

(assert (=> b!5041606 m!6075782))

(declare-fun m!6075784 () Bool)

(assert (=> d!1622004 m!6075784))

(assert (=> d!1622004 m!6075038))

(declare-fun m!6075786 () Bool)

(assert (=> d!1622004 m!6075786))

(assert (=> bm!351414 m!6075038))

(assert (=> bm!351414 m!6075238))

(assert (=> d!1621774 d!1622004))

(assert (=> b!5041183 d!1621836))

(assert (=> b!5041183 d!1621838))

(assert (=> b!5041218 d!1621930))

(declare-fun d!1622006 () Bool)

(declare-fun res!2147888 () Bool)

(declare-fun e!3148459 () Bool)

(assert (=> d!1622006 (=> (not res!2147888) (not e!3148459))))

(assert (=> d!1622006 (= res!2147888 (<= (size!38907 (list!18917 (xs!18842 (left!42703 (right!43033 t!4198))))) 512))))

(assert (=> d!1622006 (= (inv!77177 (left!42703 (right!43033 t!4198))) e!3148459)))

(declare-fun b!5041610 () Bool)

(declare-fun res!2147889 () Bool)

(assert (=> b!5041610 (=> (not res!2147889) (not e!3148459))))

(assert (=> b!5041610 (= res!2147889 (= (csize!31263 (left!42703 (right!43033 t!4198))) (size!38907 (list!18917 (xs!18842 (left!42703 (right!43033 t!4198)))))))))

(declare-fun b!5041611 () Bool)

(assert (=> b!5041611 (= e!3148459 (and (> (csize!31263 (left!42703 (right!43033 t!4198))) 0) (<= (csize!31263 (left!42703 (right!43033 t!4198))) 512)))))

(assert (= (and d!1622006 res!2147888) b!5041610))

(assert (= (and b!5041610 res!2147889) b!5041611))

(declare-fun m!6075788 () Bool)

(assert (=> d!1622006 m!6075788))

(assert (=> d!1622006 m!6075788))

(declare-fun m!6075790 () Bool)

(assert (=> d!1622006 m!6075790))

(assert (=> b!5041610 m!6075788))

(assert (=> b!5041610 m!6075788))

(assert (=> b!5041610 m!6075790))

(assert (=> b!5041196 d!1622006))

(declare-fun d!1622008 () Bool)

(declare-fun c!863885 () Bool)

(assert (=> d!1622008 (= c!863885 ((_ is Nil!58304) lt!2084412))))

(declare-fun e!3148460 () (InoxSet T!104208))

(assert (=> d!1622008 (= (content!10356 lt!2084412) e!3148460)))

(declare-fun b!5041612 () Bool)

(assert (=> b!5041612 (= e!3148460 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041613 () Bool)

(assert (=> b!5041613 (= e!3148460 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084412) true) (content!10356 (t!370985 lt!2084412))))))

(assert (= (and d!1622008 c!863885) b!5041612))

(assert (= (and d!1622008 (not c!863885)) b!5041613))

(declare-fun m!6075792 () Bool)

(assert (=> b!5041613 m!6075792))

(declare-fun m!6075794 () Bool)

(assert (=> b!5041613 m!6075794))

(assert (=> d!1621826 d!1622008))

(declare-fun d!1622010 () Bool)

(declare-fun c!863886 () Bool)

(assert (=> d!1622010 (= c!863886 ((_ is Nil!58304) (_1!34924 lt!2084384)))))

(declare-fun e!3148461 () (InoxSet T!104208))

(assert (=> d!1622010 (= (content!10356 (_1!34924 lt!2084384)) e!3148461)))

(declare-fun b!5041614 () Bool)

(assert (=> b!5041614 (= e!3148461 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041615 () Bool)

(assert (=> b!5041615 (= e!3148461 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (_1!34924 lt!2084384)) true) (content!10356 (t!370985 (_1!34924 lt!2084384)))))))

(assert (= (and d!1622010 c!863886) b!5041614))

(assert (= (and d!1622010 (not c!863886)) b!5041615))

(declare-fun m!6075796 () Bool)

(assert (=> b!5041615 m!6075796))

(assert (=> b!5041615 m!6075700))

(assert (=> d!1621826 d!1622010))

(declare-fun d!1622012 () Bool)

(declare-fun c!863887 () Bool)

(assert (=> d!1622012 (= c!863887 ((_ is Nil!58304) (_2!34924 lt!2084384)))))

(declare-fun e!3148462 () (InoxSet T!104208))

(assert (=> d!1622012 (= (content!10356 (_2!34924 lt!2084384)) e!3148462)))

(declare-fun b!5041616 () Bool)

(assert (=> b!5041616 (= e!3148462 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041617 () Bool)

(assert (=> b!5041617 (= e!3148462 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (_2!34924 lt!2084384)) true) (content!10356 (t!370985 (_2!34924 lt!2084384)))))))

(assert (= (and d!1622012 c!863887) b!5041616))

(assert (= (and d!1622012 (not c!863887)) b!5041617))

(declare-fun m!6075798 () Bool)

(assert (=> b!5041617 m!6075798))

(declare-fun m!6075800 () Bool)

(assert (=> b!5041617 m!6075800))

(assert (=> d!1621826 d!1622012))

(declare-fun d!1622014 () Bool)

(declare-fun c!863888 () Bool)

(assert (=> d!1622014 (= c!863888 ((_ is Node!15516) (left!42703 (right!43033 (right!43033 t!4198)))))))

(declare-fun e!3148463 () Bool)

(assert (=> d!1622014 (= (inv!77172 (left!42703 (right!43033 (right!43033 t!4198)))) e!3148463)))

(declare-fun b!5041618 () Bool)

(assert (=> b!5041618 (= e!3148463 (inv!77176 (left!42703 (right!43033 (right!43033 t!4198)))))))

(declare-fun b!5041619 () Bool)

(declare-fun e!3148464 () Bool)

(assert (=> b!5041619 (= e!3148463 e!3148464)))

(declare-fun res!2147890 () Bool)

(assert (=> b!5041619 (= res!2147890 (not ((_ is Leaf!25738) (left!42703 (right!43033 (right!43033 t!4198))))))))

(assert (=> b!5041619 (=> res!2147890 e!3148464)))

(declare-fun b!5041620 () Bool)

(assert (=> b!5041620 (= e!3148464 (inv!77177 (left!42703 (right!43033 (right!43033 t!4198)))))))

(assert (= (and d!1622014 c!863888) b!5041618))

(assert (= (and d!1622014 (not c!863888)) b!5041619))

(assert (= (and b!5041619 (not res!2147890)) b!5041620))

(declare-fun m!6075802 () Bool)

(assert (=> b!5041618 m!6075802))

(declare-fun m!6075804 () Bool)

(assert (=> b!5041620 m!6075804))

(assert (=> b!5041400 d!1622014))

(declare-fun d!1622016 () Bool)

(declare-fun c!863889 () Bool)

(assert (=> d!1622016 (= c!863889 ((_ is Node!15516) (right!43033 (right!43033 (right!43033 t!4198)))))))

(declare-fun e!3148465 () Bool)

(assert (=> d!1622016 (= (inv!77172 (right!43033 (right!43033 (right!43033 t!4198)))) e!3148465)))

(declare-fun b!5041621 () Bool)

(assert (=> b!5041621 (= e!3148465 (inv!77176 (right!43033 (right!43033 (right!43033 t!4198)))))))

(declare-fun b!5041622 () Bool)

(declare-fun e!3148466 () Bool)

(assert (=> b!5041622 (= e!3148465 e!3148466)))

(declare-fun res!2147891 () Bool)

(assert (=> b!5041622 (= res!2147891 (not ((_ is Leaf!25738) (right!43033 (right!43033 (right!43033 t!4198))))))))

(assert (=> b!5041622 (=> res!2147891 e!3148466)))

(declare-fun b!5041623 () Bool)

(assert (=> b!5041623 (= e!3148466 (inv!77177 (right!43033 (right!43033 (right!43033 t!4198)))))))

(assert (= (and d!1622016 c!863889) b!5041621))

(assert (= (and d!1622016 (not c!863889)) b!5041622))

(assert (= (and b!5041622 (not res!2147891)) b!5041623))

(declare-fun m!6075806 () Bool)

(assert (=> b!5041621 m!6075806))

(declare-fun m!6075808 () Bool)

(assert (=> b!5041623 m!6075808))

(assert (=> b!5041400 d!1622016))

(declare-fun d!1622018 () Bool)

(declare-fun lt!2084456 () Int)

(assert (=> d!1622018 (= lt!2084456 (size!38907 (list!18919 (left!42703 (left!42703 t!4198)))))))

(assert (=> d!1622018 (= lt!2084456 (ite ((_ is Empty!15516) (left!42703 (left!42703 t!4198))) 0 (ite ((_ is Leaf!25738) (left!42703 (left!42703 t!4198))) (csize!31263 (left!42703 (left!42703 t!4198))) (csize!31262 (left!42703 (left!42703 t!4198))))))))

(assert (=> d!1622018 (= (size!38906 (left!42703 (left!42703 t!4198))) lt!2084456)))

(declare-fun bs!1188950 () Bool)

(assert (= bs!1188950 d!1622018))

(assert (=> bs!1188950 m!6075736))

(assert (=> bs!1188950 m!6075736))

(declare-fun m!6075810 () Bool)

(assert (=> bs!1188950 m!6075810))

(assert (=> d!1621784 d!1622018))

(declare-fun d!1622020 () Bool)

(declare-fun lt!2084457 () Int)

(assert (=> d!1622020 (= lt!2084457 (size!38907 (list!18919 (right!43033 (left!42703 t!4198)))))))

(assert (=> d!1622020 (= lt!2084457 (ite ((_ is Empty!15516) (right!43033 (left!42703 t!4198))) 0 (ite ((_ is Leaf!25738) (right!43033 (left!42703 t!4198))) (csize!31263 (right!43033 (left!42703 t!4198))) (csize!31262 (right!43033 (left!42703 t!4198))))))))

(assert (=> d!1622020 (= (size!38906 (right!43033 (left!42703 t!4198))) lt!2084457)))

(declare-fun bs!1188951 () Bool)

(assert (= bs!1188951 d!1622020))

(declare-fun m!6075812 () Bool)

(assert (=> bs!1188951 m!6075812))

(assert (=> bs!1188951 m!6075812))

(declare-fun m!6075814 () Bool)

(assert (=> bs!1188951 m!6075814))

(assert (=> d!1621784 d!1622020))

(declare-fun b!5041626 () Bool)

(declare-fun res!2147892 () Bool)

(declare-fun e!3148468 () Bool)

(assert (=> b!5041626 (=> (not res!2147892) (not e!3148468))))

(declare-fun lt!2084458 () List!58428)

(assert (=> b!5041626 (= res!2147892 (= (size!38907 lt!2084458) (+ (size!38907 (_1!34924 lt!2084409)) (size!38907 (_2!34924 lt!2084409)))))))

(declare-fun d!1622022 () Bool)

(assert (=> d!1622022 e!3148468))

(declare-fun res!2147893 () Bool)

(assert (=> d!1622022 (=> (not res!2147893) (not e!3148468))))

(assert (=> d!1622022 (= res!2147893 (= (content!10356 lt!2084458) ((_ map or) (content!10356 (_1!34924 lt!2084409)) (content!10356 (_2!34924 lt!2084409)))))))

(declare-fun e!3148467 () List!58428)

(assert (=> d!1622022 (= lt!2084458 e!3148467)))

(declare-fun c!863890 () Bool)

(assert (=> d!1622022 (= c!863890 ((_ is Nil!58304) (_1!34924 lt!2084409)))))

(assert (=> d!1622022 (= (++!12729 (_1!34924 lt!2084409) (_2!34924 lt!2084409)) lt!2084458)))

(declare-fun b!5041625 () Bool)

(assert (=> b!5041625 (= e!3148467 (Cons!58304 (h!64752 (_1!34924 lt!2084409)) (++!12729 (t!370985 (_1!34924 lt!2084409)) (_2!34924 lt!2084409))))))

(declare-fun b!5041624 () Bool)

(assert (=> b!5041624 (= e!3148467 (_2!34924 lt!2084409))))

(declare-fun b!5041627 () Bool)

(assert (=> b!5041627 (= e!3148468 (or (not (= (_2!34924 lt!2084409) Nil!58304)) (= lt!2084458 (_1!34924 lt!2084409))))))

(assert (= (and d!1622022 c!863890) b!5041624))

(assert (= (and d!1622022 (not c!863890)) b!5041625))

(assert (= (and d!1622022 res!2147893) b!5041626))

(assert (= (and b!5041626 res!2147892) b!5041627))

(declare-fun m!6075816 () Bool)

(assert (=> b!5041626 m!6075816))

(declare-fun m!6075818 () Bool)

(assert (=> b!5041626 m!6075818))

(declare-fun m!6075820 () Bool)

(assert (=> b!5041626 m!6075820))

(declare-fun m!6075822 () Bool)

(assert (=> d!1622022 m!6075822))

(declare-fun m!6075824 () Bool)

(assert (=> d!1622022 m!6075824))

(declare-fun m!6075826 () Bool)

(assert (=> d!1622022 m!6075826))

(declare-fun m!6075828 () Bool)

(assert (=> b!5041625 m!6075828))

(assert (=> d!1621824 d!1622022))

(declare-fun d!1622024 () Bool)

(declare-fun lt!2084459 () Bool)

(assert (=> d!1622024 (= lt!2084459 (isEmpty!31539 (list!18919 (right!43033 (right!43033 t!4198)))))))

(assert (=> d!1622024 (= lt!2084459 (= (size!38906 (right!43033 (right!43033 t!4198))) 0))))

(assert (=> d!1622024 (= (isEmpty!31538 (right!43033 (right!43033 t!4198))) lt!2084459)))

(declare-fun bs!1188952 () Bool)

(assert (= bs!1188952 d!1622024))

(assert (=> bs!1188952 m!6075726))

(assert (=> bs!1188952 m!6075726))

(declare-fun m!6075830 () Bool)

(assert (=> bs!1188952 m!6075830))

(assert (=> bs!1188952 m!6075316))

(assert (=> b!5041323 d!1622024))

(declare-fun d!1622026 () Bool)

(declare-fun c!863891 () Bool)

(assert (=> d!1622026 (= c!863891 ((_ is Nil!58304) lt!2084407))))

(declare-fun e!3148469 () (InoxSet T!104208))

(assert (=> d!1622026 (= (content!10356 lt!2084407) e!3148469)))

(declare-fun b!5041628 () Bool)

(assert (=> b!5041628 (= e!3148469 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041629 () Bool)

(assert (=> b!5041629 (= e!3148469 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084407) true) (content!10356 (t!370985 lt!2084407))))))

(assert (= (and d!1622026 c!863891) b!5041628))

(assert (= (and d!1622026 (not c!863891)) b!5041629))

(declare-fun m!6075832 () Bool)

(assert (=> b!5041629 m!6075832))

(declare-fun m!6075834 () Bool)

(assert (=> b!5041629 m!6075834))

(assert (=> d!1621820 d!1622026))

(assert (=> d!1621820 d!1621768))

(declare-fun d!1622028 () Bool)

(assert (=> d!1622028 (= (max!0 (height!2095 (left!42703 (left!42703 t!4198))) (height!2095 (right!43033 (left!42703 t!4198)))) (ite (< (height!2095 (left!42703 (left!42703 t!4198))) (height!2095 (right!43033 (left!42703 t!4198)))) (height!2095 (right!43033 (left!42703 t!4198))) (height!2095 (left!42703 (left!42703 t!4198)))))))

(assert (=> b!5041239 d!1622028))

(assert (=> b!5041239 d!1621988))

(assert (=> b!5041239 d!1621990))

(declare-fun e!3148472 () Bool)

(declare-fun b!5041630 () Bool)

(declare-fun lt!2084461 () tuple2!63242)

(assert (=> b!5041630 (= e!3148472 (= (_2!34924 lt!2084461) (drop!2634 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1))))))

(declare-fun b!5041631 () Bool)

(declare-fun res!2147895 () Bool)

(assert (=> b!5041631 (=> (not res!2147895) (not e!3148472))))

(assert (=> b!5041631 (= res!2147895 (= (_1!34924 lt!2084461) (take!827 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1))))))

(declare-fun b!5041632 () Bool)

(declare-fun e!3148470 () tuple2!63242)

(assert (=> b!5041632 (= e!3148470 (tuple2!63243 Nil!58304 (t!370985 (t!370985 lt!2084337))))))

(declare-fun b!5041633 () Bool)

(declare-fun lt!2084460 () tuple2!63242)

(assert (=> b!5041633 (= lt!2084460 (splitAtIndex!211 (t!370985 (t!370985 (t!370985 lt!2084337))) (- (- (- i!618 1) 1) 1)))))

(assert (=> b!5041633 (= e!3148470 (tuple2!63243 (Cons!58304 (h!64752 (t!370985 (t!370985 lt!2084337))) (_1!34924 lt!2084460)) (_2!34924 lt!2084460)))))

(declare-fun d!1622030 () Bool)

(assert (=> d!1622030 e!3148472))

(declare-fun res!2147894 () Bool)

(assert (=> d!1622030 (=> (not res!2147894) (not e!3148472))))

(assert (=> d!1622030 (= res!2147894 (= (++!12729 (_1!34924 lt!2084461) (_2!34924 lt!2084461)) (t!370985 (t!370985 lt!2084337))))))

(declare-fun e!3148471 () tuple2!63242)

(assert (=> d!1622030 (= lt!2084461 e!3148471)))

(declare-fun c!863893 () Bool)

(assert (=> d!1622030 (= c!863893 ((_ is Nil!58304) (t!370985 (t!370985 lt!2084337))))))

(assert (=> d!1622030 (= (splitAtIndex!211 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1)) lt!2084461)))

(declare-fun b!5041634 () Bool)

(assert (=> b!5041634 (= e!3148471 e!3148470)))

(declare-fun c!863892 () Bool)

(assert (=> b!5041634 (= c!863892 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5041635 () Bool)

(assert (=> b!5041635 (= e!3148471 (tuple2!63243 Nil!58304 Nil!58304))))

(assert (= (and d!1622030 c!863893) b!5041635))

(assert (= (and d!1622030 (not c!863893)) b!5041634))

(assert (= (and b!5041634 c!863892) b!5041632))

(assert (= (and b!5041634 (not c!863892)) b!5041633))

(assert (= (and d!1622030 res!2147894) b!5041631))

(assert (= (and b!5041631 res!2147895) b!5041630))

(assert (=> b!5041630 m!6075246))

(assert (=> b!5041631 m!6075430))

(declare-fun m!6075836 () Bool)

(assert (=> b!5041633 m!6075836))

(declare-fun m!6075838 () Bool)

(assert (=> d!1622030 m!6075838))

(assert (=> b!5041337 d!1622030))

(declare-fun d!1622032 () Bool)

(declare-fun res!2147896 () Bool)

(declare-fun e!3148473 () Bool)

(assert (=> d!1622032 (=> (not res!2147896) (not e!3148473))))

(assert (=> d!1622032 (= res!2147896 (<= (size!38907 (list!18917 (xs!18842 (right!43033 (right!43033 t!4198))))) 512))))

(assert (=> d!1622032 (= (inv!77177 (right!43033 (right!43033 t!4198))) e!3148473)))

(declare-fun b!5041636 () Bool)

(declare-fun res!2147897 () Bool)

(assert (=> b!5041636 (=> (not res!2147897) (not e!3148473))))

(assert (=> b!5041636 (= res!2147897 (= (csize!31263 (right!43033 (right!43033 t!4198))) (size!38907 (list!18917 (xs!18842 (right!43033 (right!43033 t!4198)))))))))

(declare-fun b!5041637 () Bool)

(assert (=> b!5041637 (= e!3148473 (and (> (csize!31263 (right!43033 (right!43033 t!4198))) 0) (<= (csize!31263 (right!43033 (right!43033 t!4198))) 512)))))

(assert (= (and d!1622032 res!2147896) b!5041636))

(assert (= (and b!5041636 res!2147897) b!5041637))

(declare-fun m!6075840 () Bool)

(assert (=> d!1622032 m!6075840))

(assert (=> d!1622032 m!6075840))

(declare-fun m!6075842 () Bool)

(assert (=> d!1622032 m!6075842))

(assert (=> b!5041636 m!6075840))

(assert (=> b!5041636 m!6075840))

(assert (=> b!5041636 m!6075842))

(assert (=> b!5041199 d!1622032))

(declare-fun b!5041638 () Bool)

(declare-fun res!2147901 () Bool)

(declare-fun e!3148475 () Bool)

(assert (=> b!5041638 (=> (not res!2147901) (not e!3148475))))

(assert (=> b!5041638 (= res!2147901 (isBalanced!4378 (right!43033 (left!42703 (right!43033 t!4198)))))))

(declare-fun b!5041639 () Bool)

(declare-fun e!3148474 () Bool)

(assert (=> b!5041639 (= e!3148474 e!3148475)))

(declare-fun res!2147902 () Bool)

(assert (=> b!5041639 (=> (not res!2147902) (not e!3148475))))

(assert (=> b!5041639 (= res!2147902 (<= (- 1) (- (height!2095 (left!42703 (left!42703 (right!43033 t!4198)))) (height!2095 (right!43033 (left!42703 (right!43033 t!4198)))))))))

(declare-fun b!5041641 () Bool)

(assert (=> b!5041641 (= e!3148475 (not (isEmpty!31538 (right!43033 (left!42703 (right!43033 t!4198))))))))

(declare-fun b!5041642 () Bool)

(declare-fun res!2147900 () Bool)

(assert (=> b!5041642 (=> (not res!2147900) (not e!3148475))))

(assert (=> b!5041642 (= res!2147900 (<= (- (height!2095 (left!42703 (left!42703 (right!43033 t!4198)))) (height!2095 (right!43033 (left!42703 (right!43033 t!4198))))) 1))))

(declare-fun b!5041643 () Bool)

(declare-fun res!2147899 () Bool)

(assert (=> b!5041643 (=> (not res!2147899) (not e!3148475))))

(assert (=> b!5041643 (= res!2147899 (isBalanced!4378 (left!42703 (left!42703 (right!43033 t!4198)))))))

(declare-fun b!5041640 () Bool)

(declare-fun res!2147898 () Bool)

(assert (=> b!5041640 (=> (not res!2147898) (not e!3148475))))

(assert (=> b!5041640 (= res!2147898 (not (isEmpty!31538 (left!42703 (left!42703 (right!43033 t!4198))))))))

(declare-fun d!1622034 () Bool)

(declare-fun res!2147903 () Bool)

(assert (=> d!1622034 (=> res!2147903 e!3148474)))

(assert (=> d!1622034 (= res!2147903 (not ((_ is Node!15516) (left!42703 (right!43033 t!4198)))))))

(assert (=> d!1622034 (= (isBalanced!4378 (left!42703 (right!43033 t!4198))) e!3148474)))

(assert (= (and d!1622034 (not res!2147903)) b!5041639))

(assert (= (and b!5041639 res!2147902) b!5041642))

(assert (= (and b!5041642 res!2147900) b!5041643))

(assert (= (and b!5041643 res!2147899) b!5041638))

(assert (= (and b!5041638 res!2147901) b!5041640))

(assert (= (and b!5041640 res!2147898) b!5041641))

(assert (=> b!5041642 m!6075760))

(assert (=> b!5041642 m!6075762))

(declare-fun m!6075844 () Bool)

(assert (=> b!5041640 m!6075844))

(assert (=> b!5041639 m!6075760))

(assert (=> b!5041639 m!6075762))

(declare-fun m!6075846 () Bool)

(assert (=> b!5041643 m!6075846))

(declare-fun m!6075848 () Bool)

(assert (=> b!5041638 m!6075848))

(declare-fun m!6075850 () Bool)

(assert (=> b!5041641 m!6075850))

(assert (=> b!5041325 d!1622034))

(declare-fun d!1622036 () Bool)

(declare-fun lt!2084462 () Int)

(assert (=> d!1622036 (>= lt!2084462 0)))

(declare-fun e!3148476 () Int)

(assert (=> d!1622036 (= lt!2084462 e!3148476)))

(declare-fun c!863894 () Bool)

(assert (=> d!1622036 (= c!863894 ((_ is Nil!58304) (t!370985 lt!2084345)))))

(assert (=> d!1622036 (= (size!38907 (t!370985 lt!2084345)) lt!2084462)))

(declare-fun b!5041644 () Bool)

(assert (=> b!5041644 (= e!3148476 0)))

(declare-fun b!5041645 () Bool)

(assert (=> b!5041645 (= e!3148476 (+ 1 (size!38907 (t!370985 (t!370985 lt!2084345)))))))

(assert (= (and d!1622036 c!863894) b!5041644))

(assert (= (and d!1622036 (not c!863894)) b!5041645))

(declare-fun m!6075852 () Bool)

(assert (=> b!5041645 m!6075852))

(assert (=> b!5041201 d!1622036))

(declare-fun d!1622038 () Bool)

(assert (=> d!1622038 (= (inv!77173 (xs!18842 (left!42703 (left!42703 t!4198)))) (<= (size!38907 (innerList!15604 (xs!18842 (left!42703 (left!42703 t!4198))))) 2147483647))))

(declare-fun bs!1188953 () Bool)

(assert (= bs!1188953 d!1622038))

(declare-fun m!6075854 () Bool)

(assert (=> bs!1188953 m!6075854))

(assert (=> b!5041404 d!1622038))

(declare-fun d!1622040 () Bool)

(assert (=> d!1622040 (= (inv!77173 (xs!18842 (left!42703 (right!43033 t!4198)))) (<= (size!38907 (innerList!15604 (xs!18842 (left!42703 (right!43033 t!4198))))) 2147483647))))

(declare-fun bs!1188954 () Bool)

(assert (= bs!1188954 d!1622040))

(declare-fun m!6075856 () Bool)

(assert (=> bs!1188954 m!6075856))

(assert (=> b!5041396 d!1622040))

(declare-fun d!1622042 () Bool)

(declare-fun lt!2084463 () Int)

(assert (=> d!1622042 (>= lt!2084463 0)))

(declare-fun e!3148477 () Int)

(assert (=> d!1622042 (= lt!2084463 e!3148477)))

(declare-fun c!863895 () Bool)

(assert (=> d!1622042 (= c!863895 ((_ is Nil!58304) (t!370985 lt!2084373)))))

(assert (=> d!1622042 (= (size!38907 (t!370985 lt!2084373)) lt!2084463)))

(declare-fun b!5041646 () Bool)

(assert (=> b!5041646 (= e!3148477 0)))

(declare-fun b!5041647 () Bool)

(assert (=> b!5041647 (= e!3148477 (+ 1 (size!38907 (t!370985 (t!370985 lt!2084373)))))))

(assert (= (and d!1622042 c!863895) b!5041646))

(assert (= (and d!1622042 (not c!863895)) b!5041647))

(declare-fun m!6075858 () Bool)

(assert (=> b!5041647 m!6075858))

(assert (=> b!5041359 d!1622042))

(declare-fun d!1622044 () Bool)

(declare-fun c!863896 () Bool)

(assert (=> d!1622044 (= c!863896 ((_ is Nil!58304) (t!370985 lt!2084345)))))

(declare-fun e!3148478 () (InoxSet T!104208))

(assert (=> d!1622044 (= (content!10356 (t!370985 lt!2084345)) e!3148478)))

(declare-fun b!5041648 () Bool)

(assert (=> b!5041648 (= e!3148478 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041649 () Bool)

(assert (=> b!5041649 (= e!3148478 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (t!370985 lt!2084345)) true) (content!10356 (t!370985 (t!370985 lt!2084345)))))))

(assert (= (and d!1622044 c!863896) b!5041648))

(assert (= (and d!1622044 (not c!863896)) b!5041649))

(declare-fun m!6075860 () Bool)

(assert (=> b!5041649 m!6075860))

(declare-fun m!6075862 () Bool)

(assert (=> b!5041649 m!6075862))

(assert (=> b!5041284 d!1622044))

(declare-fun d!1622046 () Bool)

(assert (=> d!1622046 (= (max!0 (height!2095 (left!42703 t!4198)) (height!2095 (right!43033 t!4198))) (ite (< (height!2095 (left!42703 t!4198)) (height!2095 (right!43033 t!4198))) (height!2095 (right!43033 t!4198)) (height!2095 (left!42703 t!4198))))))

(assert (=> b!5041382 d!1622046))

(assert (=> b!5041382 d!1621780))

(assert (=> b!5041382 d!1621782))

(declare-fun b!5041650 () Bool)

(declare-fun res!2147907 () Bool)

(declare-fun e!3148480 () Bool)

(assert (=> b!5041650 (=> (not res!2147907) (not e!3148480))))

(assert (=> b!5041650 (= res!2147907 (isBalanced!4378 (right!43033 (left!42703 (left!42703 t!4198)))))))

(declare-fun b!5041651 () Bool)

(declare-fun e!3148479 () Bool)

(assert (=> b!5041651 (= e!3148479 e!3148480)))

(declare-fun res!2147908 () Bool)

(assert (=> b!5041651 (=> (not res!2147908) (not e!3148480))))

(assert (=> b!5041651 (= res!2147908 (<= (- 1) (- (height!2095 (left!42703 (left!42703 (left!42703 t!4198)))) (height!2095 (right!43033 (left!42703 (left!42703 t!4198)))))))))

(declare-fun b!5041653 () Bool)

(assert (=> b!5041653 (= e!3148480 (not (isEmpty!31538 (right!43033 (left!42703 (left!42703 t!4198))))))))

(declare-fun b!5041654 () Bool)

(declare-fun res!2147906 () Bool)

(assert (=> b!5041654 (=> (not res!2147906) (not e!3148480))))

(assert (=> b!5041654 (= res!2147906 (<= (- (height!2095 (left!42703 (left!42703 (left!42703 t!4198)))) (height!2095 (right!43033 (left!42703 (left!42703 t!4198))))) 1))))

(declare-fun b!5041655 () Bool)

(declare-fun res!2147905 () Bool)

(assert (=> b!5041655 (=> (not res!2147905) (not e!3148480))))

(assert (=> b!5041655 (= res!2147905 (isBalanced!4378 (left!42703 (left!42703 (left!42703 t!4198)))))))

(declare-fun b!5041652 () Bool)

(declare-fun res!2147904 () Bool)

(assert (=> b!5041652 (=> (not res!2147904) (not e!3148480))))

(assert (=> b!5041652 (= res!2147904 (not (isEmpty!31538 (left!42703 (left!42703 (left!42703 t!4198))))))))

(declare-fun d!1622048 () Bool)

(declare-fun res!2147909 () Bool)

(assert (=> d!1622048 (=> res!2147909 e!3148479)))

(assert (=> d!1622048 (= res!2147909 (not ((_ is Node!15516) (left!42703 (left!42703 t!4198)))))))

(assert (=> d!1622048 (= (isBalanced!4378 (left!42703 (left!42703 t!4198))) e!3148479)))

(assert (= (and d!1622048 (not res!2147909)) b!5041651))

(assert (= (and b!5041651 res!2147908) b!5041654))

(assert (= (and b!5041654 res!2147906) b!5041655))

(assert (= (and b!5041655 res!2147905) b!5041650))

(assert (= (and b!5041650 res!2147907) b!5041652))

(assert (= (and b!5041652 res!2147904) b!5041653))

(declare-fun m!6075864 () Bool)

(assert (=> b!5041654 m!6075864))

(declare-fun m!6075866 () Bool)

(assert (=> b!5041654 m!6075866))

(declare-fun m!6075868 () Bool)

(assert (=> b!5041652 m!6075868))

(assert (=> b!5041651 m!6075864))

(assert (=> b!5041651 m!6075866))

(declare-fun m!6075870 () Bool)

(assert (=> b!5041655 m!6075870))

(declare-fun m!6075872 () Bool)

(assert (=> b!5041650 m!6075872))

(declare-fun m!6075874 () Bool)

(assert (=> b!5041653 m!6075874))

(assert (=> b!5041224 d!1622048))

(declare-fun d!1622050 () Bool)

(declare-fun c!863897 () Bool)

(assert (=> d!1622050 (= c!863897 ((_ is Node!15516) (left!42703 (right!43033 (left!42703 t!4198)))))))

(declare-fun e!3148481 () Bool)

(assert (=> d!1622050 (= (inv!77172 (left!42703 (right!43033 (left!42703 t!4198)))) e!3148481)))

(declare-fun b!5041656 () Bool)

(assert (=> b!5041656 (= e!3148481 (inv!77176 (left!42703 (right!43033 (left!42703 t!4198)))))))

(declare-fun b!5041657 () Bool)

(declare-fun e!3148482 () Bool)

(assert (=> b!5041657 (= e!3148481 e!3148482)))

(declare-fun res!2147910 () Bool)

(assert (=> b!5041657 (= res!2147910 (not ((_ is Leaf!25738) (left!42703 (right!43033 (left!42703 t!4198))))))))

(assert (=> b!5041657 (=> res!2147910 e!3148482)))

(declare-fun b!5041658 () Bool)

(assert (=> b!5041658 (= e!3148482 (inv!77177 (left!42703 (right!43033 (left!42703 t!4198)))))))

(assert (= (and d!1622050 c!863897) b!5041656))

(assert (= (and d!1622050 (not c!863897)) b!5041657))

(assert (= (and b!5041657 (not res!2147910)) b!5041658))

(declare-fun m!6075876 () Bool)

(assert (=> b!5041656 m!6075876))

(declare-fun m!6075878 () Bool)

(assert (=> b!5041658 m!6075878))

(assert (=> b!5041406 d!1622050))

(declare-fun d!1622052 () Bool)

(declare-fun c!863898 () Bool)

(assert (=> d!1622052 (= c!863898 ((_ is Node!15516) (right!43033 (right!43033 (left!42703 t!4198)))))))

(declare-fun e!3148483 () Bool)

(assert (=> d!1622052 (= (inv!77172 (right!43033 (right!43033 (left!42703 t!4198)))) e!3148483)))

(declare-fun b!5041659 () Bool)

(assert (=> b!5041659 (= e!3148483 (inv!77176 (right!43033 (right!43033 (left!42703 t!4198)))))))

(declare-fun b!5041660 () Bool)

(declare-fun e!3148484 () Bool)

(assert (=> b!5041660 (= e!3148483 e!3148484)))

(declare-fun res!2147911 () Bool)

(assert (=> b!5041660 (= res!2147911 (not ((_ is Leaf!25738) (right!43033 (right!43033 (left!42703 t!4198))))))))

(assert (=> b!5041660 (=> res!2147911 e!3148484)))

(declare-fun b!5041661 () Bool)

(assert (=> b!5041661 (= e!3148484 (inv!77177 (right!43033 (right!43033 (left!42703 t!4198)))))))

(assert (= (and d!1622052 c!863898) b!5041659))

(assert (= (and d!1622052 (not c!863898)) b!5041660))

(assert (= (and b!5041660 (not res!2147911)) b!5041661))

(declare-fun m!6075880 () Bool)

(assert (=> b!5041659 m!6075880))

(declare-fun m!6075882 () Bool)

(assert (=> b!5041661 m!6075882))

(assert (=> b!5041406 d!1622052))

(assert (=> d!1621776 d!1621774))

(assert (=> d!1621776 d!1621744))

(declare-fun d!1622054 () Bool)

(assert (=> d!1622054 (= (inv!77173 _$4!1199) (<= (size!38907 (innerList!15604 _$4!1199)) 2147483647))))

(declare-fun bs!1188955 () Bool)

(assert (= bs!1188955 d!1622054))

(declare-fun m!6075884 () Bool)

(assert (=> bs!1188955 m!6075884))

(assert (=> d!1621776 d!1622054))

(declare-fun d!1622056 () Bool)

(declare-fun lt!2084464 () Int)

(assert (=> d!1622056 (>= lt!2084464 0)))

(declare-fun e!3148485 () Int)

(assert (=> d!1622056 (= lt!2084464 e!3148485)))

(declare-fun c!863899 () Bool)

(assert (=> d!1622056 (= c!863899 ((_ is Nil!58304) lt!2084414))))

(assert (=> d!1622056 (= (size!38907 lt!2084414) lt!2084464)))

(declare-fun b!5041662 () Bool)

(assert (=> b!5041662 (= e!3148485 0)))

(declare-fun b!5041663 () Bool)

(assert (=> b!5041663 (= e!3148485 (+ 1 (size!38907 (t!370985 lt!2084414))))))

(assert (= (and d!1622056 c!863899) b!5041662))

(assert (= (and d!1622056 (not c!863899)) b!5041663))

(declare-fun m!6075886 () Bool)

(assert (=> b!5041663 m!6075886))

(assert (=> b!5041370 d!1622056))

(assert (=> b!5041321 d!1621912))

(assert (=> b!5041321 d!1621914))

(declare-fun d!1622058 () Bool)

(declare-fun e!3148488 () Bool)

(assert (=> d!1622058 e!3148488))

(declare-fun res!2147912 () Bool)

(assert (=> d!1622058 (=> (not res!2147912) (not e!3148488))))

(declare-fun lt!2084465 () List!58428)

(assert (=> d!1622058 (= res!2147912 (= ((_ map implies) (content!10356 lt!2084465) (content!10356 (t!370985 (drop!2634 lt!2084337 i!618)))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148489 () List!58428)

(assert (=> d!1622058 (= lt!2084465 e!3148489)))

(declare-fun c!863902 () Bool)

(assert (=> d!1622058 (= c!863902 (or ((_ is Nil!58304) (t!370985 (drop!2634 lt!2084337 i!618))) (<= (- (- (size!38907 lt!2084337) i!618) 1) 0)))))

(assert (=> d!1622058 (= (take!827 (t!370985 (drop!2634 lt!2084337 i!618)) (- (- (size!38907 lt!2084337) i!618) 1)) lt!2084465)))

(declare-fun b!5041664 () Bool)

(declare-fun e!3148486 () Int)

(assert (=> b!5041664 (= e!3148486 (size!38907 (t!370985 (drop!2634 lt!2084337 i!618))))))

(declare-fun b!5041665 () Bool)

(declare-fun e!3148487 () Int)

(assert (=> b!5041665 (= e!3148487 e!3148486)))

(declare-fun c!863900 () Bool)

(assert (=> b!5041665 (= c!863900 (>= (- (- (size!38907 lt!2084337) i!618) 1) (size!38907 (t!370985 (drop!2634 lt!2084337 i!618)))))))

(declare-fun b!5041666 () Bool)

(assert (=> b!5041666 (= e!3148486 (- (- (size!38907 lt!2084337) i!618) 1))))

(declare-fun b!5041667 () Bool)

(assert (=> b!5041667 (= e!3148488 (= (size!38907 lt!2084465) e!3148487))))

(declare-fun c!863901 () Bool)

(assert (=> b!5041667 (= c!863901 (<= (- (- (size!38907 lt!2084337) i!618) 1) 0))))

(declare-fun b!5041668 () Bool)

(assert (=> b!5041668 (= e!3148489 (Cons!58304 (h!64752 (t!370985 (drop!2634 lt!2084337 i!618))) (take!827 (t!370985 (t!370985 (drop!2634 lt!2084337 i!618))) (- (- (- (size!38907 lt!2084337) i!618) 1) 1))))))

(declare-fun b!5041669 () Bool)

(assert (=> b!5041669 (= e!3148489 Nil!58304)))

(declare-fun b!5041670 () Bool)

(assert (=> b!5041670 (= e!3148487 0)))

(assert (= (and d!1622058 c!863902) b!5041669))

(assert (= (and d!1622058 (not c!863902)) b!5041668))

(assert (= (and d!1622058 res!2147912) b!5041667))

(assert (= (and b!5041667 c!863901) b!5041670))

(assert (= (and b!5041667 (not c!863901)) b!5041665))

(assert (= (and b!5041665 c!863900) b!5041664))

(assert (= (and b!5041665 (not c!863900)) b!5041666))

(declare-fun m!6075888 () Bool)

(assert (=> d!1622058 m!6075888))

(declare-fun m!6075890 () Bool)

(assert (=> d!1622058 m!6075890))

(declare-fun m!6075892 () Bool)

(assert (=> b!5041668 m!6075892))

(declare-fun m!6075894 () Bool)

(assert (=> b!5041667 m!6075894))

(assert (=> b!5041665 m!6075654))

(assert (=> b!5041664 m!6075654))

(assert (=> b!5041299 d!1622058))

(declare-fun d!1622060 () Bool)

(declare-fun e!3148492 () Bool)

(assert (=> d!1622060 e!3148492))

(declare-fun res!2147913 () Bool)

(assert (=> d!1622060 (=> (not res!2147913) (not e!3148492))))

(declare-fun lt!2084466 () List!58428)

(assert (=> d!1622060 (= res!2147913 (= ((_ map implies) (content!10356 lt!2084466) (content!10356 (t!370985 (t!370985 lt!2084337)))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148493 () List!58428)

(assert (=> d!1622060 (= lt!2084466 e!3148493)))

(declare-fun c!863905 () Bool)

(assert (=> d!1622060 (= c!863905 (or ((_ is Nil!58304) (t!370985 (t!370985 lt!2084337))) (<= (- (- i!618 1) 1) 0)))))

(assert (=> d!1622060 (= (take!827 (t!370985 (t!370985 lt!2084337)) (- (- i!618 1) 1)) lt!2084466)))

(declare-fun b!5041671 () Bool)

(declare-fun e!3148490 () Int)

(assert (=> b!5041671 (= e!3148490 (size!38907 (t!370985 (t!370985 lt!2084337))))))

(declare-fun b!5041672 () Bool)

(declare-fun e!3148491 () Int)

(assert (=> b!5041672 (= e!3148491 e!3148490)))

(declare-fun c!863903 () Bool)

(assert (=> b!5041672 (= c!863903 (>= (- (- i!618 1) 1) (size!38907 (t!370985 (t!370985 lt!2084337)))))))

(declare-fun b!5041673 () Bool)

(assert (=> b!5041673 (= e!3148490 (- (- i!618 1) 1))))

(declare-fun b!5041674 () Bool)

(assert (=> b!5041674 (= e!3148492 (= (size!38907 lt!2084466) e!3148491))))

(declare-fun c!863904 () Bool)

(assert (=> b!5041674 (= c!863904 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5041675 () Bool)

(assert (=> b!5041675 (= e!3148493 (Cons!58304 (h!64752 (t!370985 (t!370985 lt!2084337))) (take!827 (t!370985 (t!370985 (t!370985 lt!2084337))) (- (- (- i!618 1) 1) 1))))))

(declare-fun b!5041676 () Bool)

(assert (=> b!5041676 (= e!3148493 Nil!58304)))

(declare-fun b!5041677 () Bool)

(assert (=> b!5041677 (= e!3148491 0)))

(assert (= (and d!1622060 c!863905) b!5041676))

(assert (= (and d!1622060 (not c!863905)) b!5041675))

(assert (= (and d!1622060 res!2147913) b!5041674))

(assert (= (and b!5041674 c!863904) b!5041677))

(assert (= (and b!5041674 (not c!863904)) b!5041672))

(assert (= (and b!5041672 c!863903) b!5041671))

(assert (= (and b!5041672 (not c!863903)) b!5041673))

(declare-fun m!6075896 () Bool)

(assert (=> d!1622060 m!6075896))

(assert (=> d!1622060 m!6075662))

(declare-fun m!6075898 () Bool)

(assert (=> b!5041675 m!6075898))

(declare-fun m!6075900 () Bool)

(assert (=> b!5041674 m!6075900))

(assert (=> b!5041672 m!6075332))

(assert (=> b!5041671 m!6075332))

(assert (=> b!5041371 d!1622060))

(declare-fun d!1622062 () Bool)

(declare-fun lt!2084467 () Int)

(assert (=> d!1622062 (= lt!2084467 (size!38907 (list!18919 (left!42703 t!4198))))))

(assert (=> d!1622062 (= lt!2084467 (ite ((_ is Empty!15516) (left!42703 t!4198)) 0 (ite ((_ is Leaf!25738) (left!42703 t!4198)) (csize!31263 (left!42703 t!4198)) (csize!31262 (left!42703 t!4198)))))))

(assert (=> d!1622062 (= (size!38906 (left!42703 t!4198)) lt!2084467)))

(declare-fun bs!1188956 () Bool)

(assert (= bs!1188956 d!1622062))

(assert (=> bs!1188956 m!6075232))

(assert (=> bs!1188956 m!6075232))

(declare-fun m!6075902 () Bool)

(assert (=> bs!1188956 m!6075902))

(assert (=> d!1621844 d!1622062))

(assert (=> d!1621844 d!1621976))

(declare-fun b!5041678 () Bool)

(declare-fun e!3148495 () Int)

(declare-fun e!3148498 () Int)

(assert (=> b!5041678 (= e!3148495 e!3148498)))

(declare-fun c!863908 () Bool)

(declare-fun call!351420 () Int)

(assert (=> b!5041678 (= c!863908 (>= (- 0 1) call!351420))))

(declare-fun b!5041679 () Bool)

(assert (=> b!5041679 (= e!3148498 (- call!351420 (- 0 1)))))

(declare-fun b!5041680 () Bool)

(declare-fun e!3148496 () List!58428)

(declare-fun e!3148497 () List!58428)

(assert (=> b!5041680 (= e!3148496 e!3148497)))

(declare-fun c!863909 () Bool)

(assert (=> b!5041680 (= c!863909 (<= (- 0 1) 0))))

(declare-fun b!5041681 () Bool)

(assert (=> b!5041681 (= e!3148495 call!351420)))

(declare-fun b!5041682 () Bool)

(declare-fun e!3148494 () Bool)

(declare-fun lt!2084468 () List!58428)

(assert (=> b!5041682 (= e!3148494 (= (size!38907 lt!2084468) e!3148495))))

(declare-fun c!863907 () Bool)

(assert (=> b!5041682 (= c!863907 (<= (- 0 1) 0))))

(declare-fun b!5041683 () Bool)

(assert (=> b!5041683 (= e!3148497 (drop!2634 (t!370985 (t!370985 lt!2084337)) (- (- 0 1) 1)))))

(declare-fun b!5041684 () Bool)

(assert (=> b!5041684 (= e!3148497 (t!370985 lt!2084337))))

(declare-fun d!1622064 () Bool)

(assert (=> d!1622064 e!3148494))

(declare-fun res!2147914 () Bool)

(assert (=> d!1622064 (=> (not res!2147914) (not e!3148494))))

(assert (=> d!1622064 (= res!2147914 (= ((_ map implies) (content!10356 lt!2084468) (content!10356 (t!370985 lt!2084337))) ((as const (InoxSet T!104208)) true)))))

(assert (=> d!1622064 (= lt!2084468 e!3148496)))

(declare-fun c!863906 () Bool)

(assert (=> d!1622064 (= c!863906 ((_ is Nil!58304) (t!370985 lt!2084337)))))

(assert (=> d!1622064 (= (drop!2634 (t!370985 lt!2084337) (- 0 1)) lt!2084468)))

(declare-fun bm!351415 () Bool)

(assert (=> bm!351415 (= call!351420 (size!38907 (t!370985 lt!2084337)))))

(declare-fun b!5041685 () Bool)

(assert (=> b!5041685 (= e!3148496 Nil!58304)))

(declare-fun b!5041686 () Bool)

(assert (=> b!5041686 (= e!3148498 0)))

(assert (= (and d!1622064 c!863906) b!5041685))

(assert (= (and d!1622064 (not c!863906)) b!5041680))

(assert (= (and b!5041680 c!863909) b!5041684))

(assert (= (and b!5041680 (not c!863909)) b!5041683))

(assert (= (and d!1622064 res!2147914) b!5041682))

(assert (= (and b!5041682 c!863907) b!5041681))

(assert (= (and b!5041682 (not c!863907)) b!5041678))

(assert (= (and b!5041678 c!863908) b!5041686))

(assert (= (and b!5041678 (not c!863908)) b!5041679))

(assert (= (or b!5041681 b!5041678 b!5041679) bm!351415))

(declare-fun m!6075904 () Bool)

(assert (=> b!5041682 m!6075904))

(declare-fun m!6075906 () Bool)

(assert (=> b!5041683 m!6075906))

(declare-fun m!6075908 () Bool)

(assert (=> d!1622064 m!6075908))

(assert (=> d!1622064 m!6075250))

(assert (=> bm!351415 m!6075128))

(assert (=> b!5041316 d!1622064))

(declare-fun d!1622066 () Bool)

(declare-fun c!863910 () Bool)

(assert (=> d!1622066 (= c!863910 ((_ is Nil!58304) (t!370985 lt!2084373)))))

(declare-fun e!3148499 () (InoxSet T!104208))

(assert (=> d!1622066 (= (content!10356 (t!370985 lt!2084373)) e!3148499)))

(declare-fun b!5041687 () Bool)

(assert (=> b!5041687 (= e!3148499 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041688 () Bool)

(assert (=> b!5041688 (= e!3148499 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (t!370985 lt!2084373)) true) (content!10356 (t!370985 (t!370985 lt!2084373)))))))

(assert (= (and d!1622066 c!863910) b!5041687))

(assert (= (and d!1622066 (not c!863910)) b!5041688))

(declare-fun m!6075910 () Bool)

(assert (=> b!5041688 m!6075910))

(declare-fun m!6075912 () Bool)

(assert (=> b!5041688 m!6075912))

(assert (=> b!5041216 d!1622066))

(assert (=> b!5041335 d!1621842))

(declare-fun d!1622068 () Bool)

(declare-fun res!2147915 () Bool)

(declare-fun e!3148500 () Bool)

(assert (=> d!1622068 (=> (not res!2147915) (not e!3148500))))

(assert (=> d!1622068 (= res!2147915 (= (csize!31262 (right!43033 (right!43033 t!4198))) (+ (size!38906 (left!42703 (right!43033 (right!43033 t!4198)))) (size!38906 (right!43033 (right!43033 (right!43033 t!4198)))))))))

(assert (=> d!1622068 (= (inv!77176 (right!43033 (right!43033 t!4198))) e!3148500)))

(declare-fun b!5041689 () Bool)

(declare-fun res!2147916 () Bool)

(assert (=> b!5041689 (=> (not res!2147916) (not e!3148500))))

(assert (=> b!5041689 (= res!2147916 (and (not (= (left!42703 (right!43033 (right!43033 t!4198))) Empty!15516)) (not (= (right!43033 (right!43033 (right!43033 t!4198))) Empty!15516))))))

(declare-fun b!5041690 () Bool)

(declare-fun res!2147917 () Bool)

(assert (=> b!5041690 (=> (not res!2147917) (not e!3148500))))

(assert (=> b!5041690 (= res!2147917 (= (cheight!15727 (right!43033 (right!43033 t!4198))) (+ (max!0 (height!2095 (left!42703 (right!43033 (right!43033 t!4198)))) (height!2095 (right!43033 (right!43033 (right!43033 t!4198))))) 1)))))

(declare-fun b!5041691 () Bool)

(assert (=> b!5041691 (= e!3148500 (<= 0 (cheight!15727 (right!43033 (right!43033 t!4198)))))))

(assert (= (and d!1622068 res!2147915) b!5041689))

(assert (= (and b!5041689 res!2147916) b!5041690))

(assert (= (and b!5041690 res!2147917) b!5041691))

(declare-fun m!6075914 () Bool)

(assert (=> d!1622068 m!6075914))

(declare-fun m!6075916 () Bool)

(assert (=> d!1622068 m!6075916))

(assert (=> b!5041690 m!6075670))

(assert (=> b!5041690 m!6075672))

(assert (=> b!5041690 m!6075670))

(assert (=> b!5041690 m!6075672))

(declare-fun m!6075918 () Bool)

(assert (=> b!5041690 m!6075918))

(assert (=> b!5041197 d!1622068))

(declare-fun d!1622070 () Bool)

(declare-fun c!863911 () Bool)

(assert (=> d!1622070 (= c!863911 ((_ is Nil!58304) lt!2084414))))

(declare-fun e!3148501 () (InoxSet T!104208))

(assert (=> d!1622070 (= (content!10356 lt!2084414) e!3148501)))

(declare-fun b!5041692 () Bool)

(assert (=> b!5041692 (= e!3148501 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041693 () Bool)

(assert (=> b!5041693 (= e!3148501 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084414) true) (content!10356 (t!370985 lt!2084414))))))

(assert (= (and d!1622070 c!863911) b!5041692))

(assert (= (and d!1622070 (not c!863911)) b!5041693))

(declare-fun m!6075920 () Bool)

(assert (=> b!5041693 m!6075920))

(declare-fun m!6075922 () Bool)

(assert (=> b!5041693 m!6075922))

(assert (=> d!1621842 d!1622070))

(assert (=> d!1621842 d!1621930))

(assert (=> d!1621790 d!1621942))

(assert (=> d!1621790 d!1621944))

(declare-fun d!1622072 () Bool)

(declare-fun res!2147918 () Bool)

(declare-fun e!3148502 () Bool)

(assert (=> d!1622072 (=> (not res!2147918) (not e!3148502))))

(assert (=> d!1622072 (= res!2147918 (<= (size!38907 (list!18917 (xs!18842 (right!43033 (left!42703 t!4198))))) 512))))

(assert (=> d!1622072 (= (inv!77177 (right!43033 (left!42703 t!4198))) e!3148502)))

(declare-fun b!5041694 () Bool)

(declare-fun res!2147919 () Bool)

(assert (=> b!5041694 (=> (not res!2147919) (not e!3148502))))

(assert (=> b!5041694 (= res!2147919 (= (csize!31263 (right!43033 (left!42703 t!4198))) (size!38907 (list!18917 (xs!18842 (right!43033 (left!42703 t!4198)))))))))

(declare-fun b!5041695 () Bool)

(assert (=> b!5041695 (= e!3148502 (and (> (csize!31263 (right!43033 (left!42703 t!4198))) 0) (<= (csize!31263 (right!43033 (left!42703 t!4198))) 512)))))

(assert (= (and d!1622072 res!2147918) b!5041694))

(assert (= (and b!5041694 res!2147919) b!5041695))

(declare-fun m!6075924 () Bool)

(assert (=> d!1622072 m!6075924))

(assert (=> d!1622072 m!6075924))

(declare-fun m!6075926 () Bool)

(assert (=> d!1622072 m!6075926))

(assert (=> b!5041694 m!6075924))

(assert (=> b!5041694 m!6075924))

(assert (=> b!5041694 m!6075926))

(assert (=> b!5041366 d!1622072))

(declare-fun d!1622074 () Bool)

(declare-fun lt!2084469 () Int)

(assert (=> d!1622074 (>= lt!2084469 0)))

(declare-fun e!3148503 () Int)

(assert (=> d!1622074 (= lt!2084469 e!3148503)))

(declare-fun c!863912 () Bool)

(assert (=> d!1622074 (= c!863912 ((_ is Nil!58304) lt!2084412))))

(assert (=> d!1622074 (= (size!38907 lt!2084412) lt!2084469)))

(declare-fun b!5041696 () Bool)

(assert (=> b!5041696 (= e!3148503 0)))

(declare-fun b!5041697 () Bool)

(assert (=> b!5041697 (= e!3148503 (+ 1 (size!38907 (t!370985 lt!2084412))))))

(assert (= (and d!1622074 c!863912) b!5041696))

(assert (= (and d!1622074 (not c!863912)) b!5041697))

(declare-fun m!6075928 () Bool)

(assert (=> b!5041697 m!6075928))

(assert (=> b!5041354 d!1622074))

(declare-fun d!1622076 () Bool)

(declare-fun lt!2084470 () Int)

(assert (=> d!1622076 (>= lt!2084470 0)))

(declare-fun e!3148504 () Int)

(assert (=> d!1622076 (= lt!2084470 e!3148504)))

(declare-fun c!863913 () Bool)

(assert (=> d!1622076 (= c!863913 ((_ is Nil!58304) (_1!34924 lt!2084384)))))

(assert (=> d!1622076 (= (size!38907 (_1!34924 lt!2084384)) lt!2084470)))

(declare-fun b!5041698 () Bool)

(assert (=> b!5041698 (= e!3148504 0)))

(declare-fun b!5041699 () Bool)

(assert (=> b!5041699 (= e!3148504 (+ 1 (size!38907 (t!370985 (_1!34924 lt!2084384)))))))

(assert (= (and d!1622076 c!863913) b!5041698))

(assert (= (and d!1622076 (not c!863913)) b!5041699))

(assert (=> b!5041699 m!6075696))

(assert (=> b!5041354 d!1622076))

(declare-fun d!1622078 () Bool)

(declare-fun lt!2084471 () Int)

(assert (=> d!1622078 (>= lt!2084471 0)))

(declare-fun e!3148505 () Int)

(assert (=> d!1622078 (= lt!2084471 e!3148505)))

(declare-fun c!863914 () Bool)

(assert (=> d!1622078 (= c!863914 ((_ is Nil!58304) (_2!34924 lt!2084384)))))

(assert (=> d!1622078 (= (size!38907 (_2!34924 lt!2084384)) lt!2084471)))

(declare-fun b!5041700 () Bool)

(assert (=> b!5041700 (= e!3148505 0)))

(declare-fun b!5041701 () Bool)

(assert (=> b!5041701 (= e!3148505 (+ 1 (size!38907 (t!370985 (_2!34924 lt!2084384)))))))

(assert (= (and d!1622078 c!863914) b!5041700))

(assert (= (and d!1622078 (not c!863914)) b!5041701))

(declare-fun m!6075930 () Bool)

(assert (=> b!5041701 m!6075930))

(assert (=> b!5041354 d!1622078))

(assert (=> b!5041220 d!1621988))

(assert (=> b!5041220 d!1621990))

(declare-fun d!1622080 () Bool)

(assert (=> d!1622080 (= (isEmpty!31539 (list!18919 (left!42703 t!4198))) ((_ is Nil!58304) (list!18919 (left!42703 t!4198))))))

(assert (=> d!1621756 d!1622080))

(declare-fun b!5041704 () Bool)

(declare-fun e!3148507 () List!58428)

(assert (=> b!5041704 (= e!3148507 (list!18917 (xs!18842 (left!42703 t!4198))))))

(declare-fun d!1622082 () Bool)

(declare-fun c!863915 () Bool)

(assert (=> d!1622082 (= c!863915 ((_ is Empty!15516) (left!42703 t!4198)))))

(declare-fun e!3148506 () List!58428)

(assert (=> d!1622082 (= (list!18919 (left!42703 t!4198)) e!3148506)))

(declare-fun b!5041702 () Bool)

(assert (=> b!5041702 (= e!3148506 Nil!58304)))

(declare-fun b!5041703 () Bool)

(assert (=> b!5041703 (= e!3148506 e!3148507)))

(declare-fun c!863916 () Bool)

(assert (=> b!5041703 (= c!863916 ((_ is Leaf!25738) (left!42703 t!4198)))))

(declare-fun b!5041705 () Bool)

(assert (=> b!5041705 (= e!3148507 (++!12729 (list!18919 (left!42703 (left!42703 t!4198))) (list!18919 (right!43033 (left!42703 t!4198)))))))

(assert (= (and d!1622082 c!863915) b!5041702))

(assert (= (and d!1622082 (not c!863915)) b!5041703))

(assert (= (and b!5041703 c!863916) b!5041704))

(assert (= (and b!5041703 (not c!863916)) b!5041705))

(assert (=> b!5041704 m!6075292))

(assert (=> b!5041705 m!6075736))

(assert (=> b!5041705 m!6075812))

(assert (=> b!5041705 m!6075736))

(assert (=> b!5041705 m!6075812))

(declare-fun m!6075932 () Bool)

(assert (=> b!5041705 m!6075932))

(assert (=> d!1621756 d!1622082))

(assert (=> d!1621756 d!1622062))

(assert (=> b!5041367 d!1621808))

(declare-fun d!1622084 () Bool)

(declare-fun res!2147920 () Bool)

(declare-fun e!3148508 () Bool)

(assert (=> d!1622084 (=> (not res!2147920) (not e!3148508))))

(assert (=> d!1622084 (= res!2147920 (= (csize!31262 (left!42703 (left!42703 t!4198))) (+ (size!38906 (left!42703 (left!42703 (left!42703 t!4198)))) (size!38906 (right!43033 (left!42703 (left!42703 t!4198)))))))))

(assert (=> d!1622084 (= (inv!77176 (left!42703 (left!42703 t!4198))) e!3148508)))

(declare-fun b!5041706 () Bool)

(declare-fun res!2147921 () Bool)

(assert (=> b!5041706 (=> (not res!2147921) (not e!3148508))))

(assert (=> b!5041706 (= res!2147921 (and (not (= (left!42703 (left!42703 (left!42703 t!4198))) Empty!15516)) (not (= (right!43033 (left!42703 (left!42703 t!4198))) Empty!15516))))))

(declare-fun b!5041707 () Bool)

(declare-fun res!2147922 () Bool)

(assert (=> b!5041707 (=> (not res!2147922) (not e!3148508))))

(assert (=> b!5041707 (= res!2147922 (= (cheight!15727 (left!42703 (left!42703 t!4198))) (+ (max!0 (height!2095 (left!42703 (left!42703 (left!42703 t!4198)))) (height!2095 (right!43033 (left!42703 (left!42703 t!4198))))) 1)))))

(declare-fun b!5041708 () Bool)

(assert (=> b!5041708 (= e!3148508 (<= 0 (cheight!15727 (left!42703 (left!42703 t!4198)))))))

(assert (= (and d!1622084 res!2147920) b!5041706))

(assert (= (and b!5041706 res!2147921) b!5041707))

(assert (= (and b!5041707 res!2147922) b!5041708))

(declare-fun m!6075934 () Bool)

(assert (=> d!1622084 m!6075934))

(declare-fun m!6075936 () Bool)

(assert (=> d!1622084 m!6075936))

(assert (=> b!5041707 m!6075864))

(assert (=> b!5041707 m!6075866))

(assert (=> b!5041707 m!6075864))

(assert (=> b!5041707 m!6075866))

(declare-fun m!6075938 () Bool)

(assert (=> b!5041707 m!6075938))

(assert (=> b!5041360 d!1622084))

(declare-fun d!1622086 () Bool)

(declare-fun lt!2084472 () Int)

(assert (=> d!1622086 (>= lt!2084472 0)))

(declare-fun e!3148509 () Int)

(assert (=> d!1622086 (= lt!2084472 e!3148509)))

(declare-fun c!863917 () Bool)

(assert (=> d!1622086 (= c!863917 ((_ is Nil!58304) lt!2084395))))

(assert (=> d!1622086 (= (size!38907 lt!2084395) lt!2084472)))

(declare-fun b!5041709 () Bool)

(assert (=> b!5041709 (= e!3148509 0)))

(declare-fun b!5041710 () Bool)

(assert (=> b!5041710 (= e!3148509 (+ 1 (size!38907 (t!370985 lt!2084395))))))

(assert (= (and d!1622086 c!863917) b!5041709))

(assert (= (and d!1622086 (not c!863917)) b!5041710))

(declare-fun m!6075940 () Bool)

(assert (=> b!5041710 m!6075940))

(assert (=> b!5041206 d!1622086))

(declare-fun d!1622088 () Bool)

(declare-fun lt!2084473 () Bool)

(assert (=> d!1622088 (= lt!2084473 (isEmpty!31539 (list!18919 (right!43033 (left!42703 t!4198)))))))

(assert (=> d!1622088 (= lt!2084473 (= (size!38906 (right!43033 (left!42703 t!4198))) 0))))

(assert (=> d!1622088 (= (isEmpty!31538 (right!43033 (left!42703 t!4198))) lt!2084473)))

(declare-fun bs!1188957 () Bool)

(assert (= bs!1188957 d!1622088))

(assert (=> bs!1188957 m!6075812))

(assert (=> bs!1188957 m!6075812))

(declare-fun m!6075942 () Bool)

(assert (=> bs!1188957 m!6075942))

(assert (=> bs!1188957 m!6075288))

(assert (=> b!5041222 d!1622088))

(assert (=> b!5041368 d!1621808))

(assert (=> bm!351410 d!1621714))

(declare-fun d!1622090 () Bool)

(declare-fun res!2147923 () Bool)

(declare-fun e!3148510 () Bool)

(assert (=> d!1622090 (=> (not res!2147923) (not e!3148510))))

(assert (=> d!1622090 (= res!2147923 (<= (size!38907 (list!18917 (xs!18842 (left!42703 (left!42703 t!4198))))) 512))))

(assert (=> d!1622090 (= (inv!77177 (left!42703 (left!42703 t!4198))) e!3148510)))

(declare-fun b!5041711 () Bool)

(declare-fun res!2147924 () Bool)

(assert (=> b!5041711 (=> (not res!2147924) (not e!3148510))))

(assert (=> b!5041711 (= res!2147924 (= (csize!31263 (left!42703 (left!42703 t!4198))) (size!38907 (list!18917 (xs!18842 (left!42703 (left!42703 t!4198)))))))))

(declare-fun b!5041712 () Bool)

(assert (=> b!5041712 (= e!3148510 (and (> (csize!31263 (left!42703 (left!42703 t!4198))) 0) (<= (csize!31263 (left!42703 (left!42703 t!4198))) 512)))))

(assert (= (and d!1622090 res!2147923) b!5041711))

(assert (= (and b!5041711 res!2147924) b!5041712))

(declare-fun m!6075944 () Bool)

(assert (=> d!1622090 m!6075944))

(assert (=> d!1622090 m!6075944))

(declare-fun m!6075946 () Bool)

(assert (=> d!1622090 m!6075946))

(assert (=> b!5041711 m!6075944))

(assert (=> b!5041711 m!6075944))

(assert (=> b!5041711 m!6075946))

(assert (=> b!5041362 d!1622090))

(assert (=> b!5041295 d!1621926))

(declare-fun d!1622092 () Bool)

(declare-fun lt!2084474 () Int)

(assert (=> d!1622092 (>= lt!2084474 0)))

(declare-fun e!3148511 () Int)

(assert (=> d!1622092 (= lt!2084474 e!3148511)))

(declare-fun c!863918 () Bool)

(assert (=> d!1622092 (= c!863918 ((_ is Nil!58304) (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))))

(assert (=> d!1622092 (= (size!38907 (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))) lt!2084474)))

(declare-fun b!5041713 () Bool)

(assert (=> b!5041713 (= e!3148511 0)))

(declare-fun b!5041714 () Bool)

(assert (=> b!5041714 (= e!3148511 (+ 1 (size!38907 (t!370985 (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618)))))))))

(assert (= (and d!1622092 c!863918) b!5041713))

(assert (= (and d!1622092 (not c!863918)) b!5041714))

(declare-fun m!6075948 () Bool)

(assert (=> b!5041714 m!6075948))

(assert (=> d!1621810 d!1622092))

(declare-fun d!1622094 () Bool)

(assert (=> d!1622094 (= (list!18917 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))) (innerList!15604 (xs!18842 (Leaf!25738 (slice!852 (xs!18842 t!4198) 0 i!618) i!618))))))

(assert (=> d!1621810 d!1622094))

(declare-fun d!1622096 () Bool)

(declare-fun c!863919 () Bool)

(assert (=> d!1622096 (= c!863919 ((_ is Nil!58304) lt!2084404))))

(declare-fun e!3148512 () (InoxSet T!104208))

(assert (=> d!1622096 (= (content!10356 lt!2084404) e!3148512)))

(declare-fun b!5041715 () Bool)

(assert (=> b!5041715 (= e!3148512 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041716 () Bool)

(assert (=> b!5041716 (= e!3148512 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 lt!2084404) true) (content!10356 (t!370985 lt!2084404))))))

(assert (= (and d!1622096 c!863919) b!5041715))

(assert (= (and d!1622096 (not c!863919)) b!5041716))

(declare-fun m!6075950 () Bool)

(assert (=> b!5041716 m!6075950))

(declare-fun m!6075952 () Bool)

(assert (=> b!5041716 m!6075952))

(assert (=> d!1621812 d!1622096))

(declare-fun d!1622098 () Bool)

(declare-fun c!863920 () Bool)

(assert (=> d!1622098 (= c!863920 ((_ is Nil!58304) (drop!2634 lt!2084337 i!618)))))

(declare-fun e!3148513 () (InoxSet T!104208))

(assert (=> d!1622098 (= (content!10356 (drop!2634 lt!2084337 i!618)) e!3148513)))

(declare-fun b!5041717 () Bool)

(assert (=> b!5041717 (= e!3148513 ((as const (Array T!104208 Bool)) false))))

(declare-fun b!5041718 () Bool)

(assert (=> b!5041718 (= e!3148513 ((_ map or) (store ((as const (Array T!104208 Bool)) false) (h!64752 (drop!2634 lt!2084337 i!618)) true) (content!10356 (t!370985 (drop!2634 lt!2084337 i!618)))))))

(assert (= (and d!1622098 c!863920) b!5041717))

(assert (= (and d!1622098 (not c!863920)) b!5041718))

(declare-fun m!6075954 () Bool)

(assert (=> b!5041718 m!6075954))

(assert (=> b!5041718 m!6075890))

(assert (=> d!1621812 d!1622098))

(assert (=> d!1621758 d!1621952))

(assert (=> d!1621758 d!1621744))

(declare-fun d!1622100 () Bool)

(declare-fun _$1!11283 () Int)

(assert (=> d!1622100 (= _$1!11283 (size!38907 (list!18917 (xs!18842 t!4198))))))

(assert (=> d!1622100 true))

(assert (=> d!1622100 (= (choose!37257 (xs!18842 t!4198)) _$1!11283)))

(declare-fun bs!1188958 () Bool)

(assert (= bs!1188958 d!1622100))

(assert (=> bs!1188958 m!6075038))

(assert (=> bs!1188958 m!6075038))

(assert (=> bs!1188958 m!6075238))

(assert (=> d!1621758 d!1622100))

(declare-fun d!1622102 () Bool)

(declare-fun e!3148516 () Bool)

(assert (=> d!1622102 e!3148516))

(declare-fun res!2147925 () Bool)

(assert (=> d!1622102 (=> (not res!2147925) (not e!3148516))))

(declare-fun lt!2084475 () List!58428)

(assert (=> d!1622102 (= res!2147925 (= ((_ map implies) (content!10356 lt!2084475) (content!10356 (t!370985 (drop!2634 lt!2084337 0)))) ((as const (InoxSet T!104208)) true)))))

(declare-fun e!3148517 () List!58428)

(assert (=> d!1622102 (= lt!2084475 e!3148517)))

(declare-fun c!863923 () Bool)

(assert (=> d!1622102 (= c!863923 (or ((_ is Nil!58304) (t!370985 (drop!2634 lt!2084337 0))) (<= (- (- i!618 0) 1) 0)))))

(assert (=> d!1622102 (= (take!827 (t!370985 (drop!2634 lt!2084337 0)) (- (- i!618 0) 1)) lt!2084475)))

(declare-fun b!5041719 () Bool)

(declare-fun e!3148514 () Int)

(assert (=> b!5041719 (= e!3148514 (size!38907 (t!370985 (drop!2634 lt!2084337 0))))))

(declare-fun b!5041720 () Bool)

(declare-fun e!3148515 () Int)

(assert (=> b!5041720 (= e!3148515 e!3148514)))

(declare-fun c!863921 () Bool)

(assert (=> b!5041720 (= c!863921 (>= (- (- i!618 0) 1) (size!38907 (t!370985 (drop!2634 lt!2084337 0)))))))

(declare-fun b!5041721 () Bool)

(assert (=> b!5041721 (= e!3148514 (- (- i!618 0) 1))))

(declare-fun b!5041722 () Bool)

(assert (=> b!5041722 (= e!3148516 (= (size!38907 lt!2084475) e!3148515))))

(declare-fun c!863922 () Bool)

(assert (=> b!5041722 (= c!863922 (<= (- (- i!618 0) 1) 0))))

(declare-fun b!5041723 () Bool)

(assert (=> b!5041723 (= e!3148517 (Cons!58304 (h!64752 (t!370985 (drop!2634 lt!2084337 0))) (take!827 (t!370985 (t!370985 (drop!2634 lt!2084337 0))) (- (- (- i!618 0) 1) 1))))))

(declare-fun b!5041724 () Bool)

(assert (=> b!5041724 (= e!3148517 Nil!58304)))

(declare-fun b!5041725 () Bool)

(assert (=> b!5041725 (= e!3148515 0)))

(assert (= (and d!1622102 c!863923) b!5041724))

(assert (= (and d!1622102 (not c!863923)) b!5041723))

(assert (= (and d!1622102 res!2147925) b!5041722))

(assert (= (and b!5041722 c!863922) b!5041725))

(assert (= (and b!5041722 (not c!863922)) b!5041720))

(assert (= (and b!5041720 c!863921) b!5041719))

(assert (= (and b!5041720 (not c!863921)) b!5041721))

(declare-fun m!6075956 () Bool)

(assert (=> d!1622102 m!6075956))

(assert (=> d!1622102 m!6075710))

(declare-fun m!6075958 () Bool)

(assert (=> b!5041723 m!6075958))

(declare-fun m!6075960 () Bool)

(assert (=> b!5041722 m!6075960))

(assert (=> b!5041720 m!6075652))

(assert (=> b!5041719 m!6075652))

(assert (=> b!5041308 d!1622102))

(declare-fun d!1622104 () Bool)

(declare-fun res!2147926 () Bool)

(declare-fun e!3148518 () Bool)

(assert (=> d!1622104 (=> (not res!2147926) (not e!3148518))))

(assert (=> d!1622104 (= res!2147926 (= (csize!31262 (right!43033 (left!42703 t!4198))) (+ (size!38906 (left!42703 (right!43033 (left!42703 t!4198)))) (size!38906 (right!43033 (right!43033 (left!42703 t!4198)))))))))

(assert (=> d!1622104 (= (inv!77176 (right!43033 (left!42703 t!4198))) e!3148518)))

(declare-fun b!5041726 () Bool)

(declare-fun res!2147927 () Bool)

(assert (=> b!5041726 (=> (not res!2147927) (not e!3148518))))

(assert (=> b!5041726 (= res!2147927 (and (not (= (left!42703 (right!43033 (left!42703 t!4198))) Empty!15516)) (not (= (right!43033 (right!43033 (left!42703 t!4198))) Empty!15516))))))

(declare-fun b!5041727 () Bool)

(declare-fun res!2147928 () Bool)

(assert (=> b!5041727 (=> (not res!2147928) (not e!3148518))))

(assert (=> b!5041727 (= res!2147928 (= (cheight!15727 (right!43033 (left!42703 t!4198))) (+ (max!0 (height!2095 (left!42703 (right!43033 (left!42703 t!4198)))) (height!2095 (right!43033 (right!43033 (left!42703 t!4198))))) 1)))))

(declare-fun b!5041728 () Bool)

(assert (=> b!5041728 (= e!3148518 (<= 0 (cheight!15727 (right!43033 (left!42703 t!4198)))))))

(assert (= (and d!1622104 res!2147926) b!5041726))

(assert (= (and b!5041726 res!2147927) b!5041727))

(assert (= (and b!5041727 res!2147928) b!5041728))

(declare-fun m!6075962 () Bool)

(assert (=> d!1622104 m!6075962))

(declare-fun m!6075964 () Bool)

(assert (=> d!1622104 m!6075964))

(assert (=> b!5041727 m!6075712))

(assert (=> b!5041727 m!6075714))

(assert (=> b!5041727 m!6075712))

(assert (=> b!5041727 m!6075714))

(declare-fun m!6075966 () Bool)

(assert (=> b!5041727 m!6075966))

(assert (=> b!5041364 d!1622104))

(assert (=> b!5041289 d!1622092))

(assert (=> b!5041289 d!1622094))

(declare-fun b!5041731 () Bool)

(declare-fun res!2147929 () Bool)

(declare-fun e!3148520 () Bool)

(assert (=> b!5041731 (=> (not res!2147929) (not e!3148520))))

(declare-fun lt!2084476 () List!58428)

(assert (=> b!5041731 (= res!2147929 (= (size!38907 lt!2084476) (+ (size!38907 (list!18919 (left!42703 t!4198))) (size!38907 (list!18919 (right!43033 t!4198))))))))

(declare-fun d!1622106 () Bool)

(assert (=> d!1622106 e!3148520))

(declare-fun res!2147930 () Bool)

(assert (=> d!1622106 (=> (not res!2147930) (not e!3148520))))

(assert (=> d!1622106 (= res!2147930 (= (content!10356 lt!2084476) ((_ map or) (content!10356 (list!18919 (left!42703 t!4198))) (content!10356 (list!18919 (right!43033 t!4198))))))))

(declare-fun e!3148519 () List!58428)

(assert (=> d!1622106 (= lt!2084476 e!3148519)))

(declare-fun c!863924 () Bool)

(assert (=> d!1622106 (= c!863924 ((_ is Nil!58304) (list!18919 (left!42703 t!4198))))))

(assert (=> d!1622106 (= (++!12729 (list!18919 (left!42703 t!4198)) (list!18919 (right!43033 t!4198))) lt!2084476)))

(declare-fun b!5041730 () Bool)

(assert (=> b!5041730 (= e!3148519 (Cons!58304 (h!64752 (list!18919 (left!42703 t!4198))) (++!12729 (t!370985 (list!18919 (left!42703 t!4198))) (list!18919 (right!43033 t!4198)))))))

(declare-fun b!5041729 () Bool)

(assert (=> b!5041729 (= e!3148519 (list!18919 (right!43033 t!4198)))))

(declare-fun b!5041732 () Bool)

(assert (=> b!5041732 (= e!3148520 (or (not (= (list!18919 (right!43033 t!4198)) Nil!58304)) (= lt!2084476 (list!18919 (left!42703 t!4198)))))))

(assert (= (and d!1622106 c!863924) b!5041729))

(assert (= (and d!1622106 (not c!863924)) b!5041730))

(assert (= (and d!1622106 res!2147930) b!5041731))

(assert (= (and b!5041731 res!2147929) b!5041732))

(declare-fun m!6075968 () Bool)

(assert (=> b!5041731 m!6075968))

(assert (=> b!5041731 m!6075232))

(assert (=> b!5041731 m!6075902))

(assert (=> b!5041731 m!6075258))

(assert (=> b!5041731 m!6075730))

(declare-fun m!6075970 () Bool)

(assert (=> d!1622106 m!6075970))

(assert (=> d!1622106 m!6075232))

(declare-fun m!6075972 () Bool)

(assert (=> d!1622106 m!6075972))

(assert (=> d!1622106 m!6075258))

(declare-fun m!6075974 () Bool)

(assert (=> d!1622106 m!6075974))

(assert (=> b!5041730 m!6075258))

(declare-fun m!6075976 () Bool)

(assert (=> b!5041730 m!6075976))

(assert (=> b!5041266 d!1622106))

(assert (=> b!5041266 d!1622082))

(assert (=> b!5041266 d!1621974))

(declare-fun d!1622108 () Bool)

(assert (=> d!1622108 (= (inv!77173 (xs!18842 (right!43033 (right!43033 t!4198)))) (<= (size!38907 (innerList!15604 (xs!18842 (right!43033 (right!43033 t!4198))))) 2147483647))))

(declare-fun bs!1188959 () Bool)

(assert (= bs!1188959 d!1622108))

(declare-fun m!6075978 () Bool)

(assert (=> bs!1188959 m!6075978))

(assert (=> b!5041401 d!1622108))

(declare-fun b!5041733 () Bool)

(declare-fun e!3148521 () Bool)

(declare-fun tp!1411166 () Bool)

(assert (=> b!5041733 (= e!3148521 (and tp_is_empty!36795 tp!1411166))))

(assert (=> b!5041227 (= tp!1411132 e!3148521)))

(assert (= (and b!5041227 ((_ is Cons!58304) (innerList!15604 _$4!1199))) b!5041733))

(declare-fun b!5041734 () Bool)

(declare-fun e!3148522 () Bool)

(declare-fun tp!1411167 () Bool)

(assert (=> b!5041734 (= e!3148522 (and tp_is_empty!36795 tp!1411167))))

(assert (=> b!5041402 (= tp!1411141 e!3148522)))

(assert (= (and b!5041402 ((_ is Cons!58304) (innerList!15604 (xs!18842 (right!43033 (right!43033 t!4198)))))) b!5041734))

(declare-fun b!5041735 () Bool)

(declare-fun e!3148523 () Bool)

(declare-fun tp!1411169 () Bool)

(declare-fun tp!1411170 () Bool)

(assert (=> b!5041735 (= e!3148523 (and (inv!77172 (left!42703 (left!42703 (left!42703 (left!42703 t!4198))))) tp!1411170 (inv!77172 (right!43033 (left!42703 (left!42703 (left!42703 t!4198))))) tp!1411169))))

(declare-fun b!5041737 () Bool)

(declare-fun e!3148524 () Bool)

(declare-fun tp!1411168 () Bool)

(assert (=> b!5041737 (= e!3148524 tp!1411168)))

(declare-fun b!5041736 () Bool)

(assert (=> b!5041736 (= e!3148523 (and (inv!77173 (xs!18842 (left!42703 (left!42703 (left!42703 t!4198))))) e!3148524))))

(assert (=> b!5041403 (= tp!1411146 (and (inv!77172 (left!42703 (left!42703 (left!42703 t!4198)))) e!3148523))))

(assert (= (and b!5041403 ((_ is Node!15516) (left!42703 (left!42703 (left!42703 t!4198))))) b!5041735))

(assert (= b!5041736 b!5041737))

(assert (= (and b!5041403 ((_ is Leaf!25738) (left!42703 (left!42703 (left!42703 t!4198))))) b!5041736))

(declare-fun m!6075980 () Bool)

(assert (=> b!5041735 m!6075980))

(declare-fun m!6075982 () Bool)

(assert (=> b!5041735 m!6075982))

(declare-fun m!6075984 () Bool)

(assert (=> b!5041736 m!6075984))

(assert (=> b!5041403 m!6075472))

(declare-fun tp!1411172 () Bool)

(declare-fun e!3148525 () Bool)

(declare-fun b!5041738 () Bool)

(declare-fun tp!1411173 () Bool)

(assert (=> b!5041738 (= e!3148525 (and (inv!77172 (left!42703 (right!43033 (left!42703 (left!42703 t!4198))))) tp!1411173 (inv!77172 (right!43033 (right!43033 (left!42703 (left!42703 t!4198))))) tp!1411172))))

(declare-fun b!5041740 () Bool)

(declare-fun e!3148526 () Bool)

(declare-fun tp!1411171 () Bool)

(assert (=> b!5041740 (= e!3148526 tp!1411171)))

(declare-fun b!5041739 () Bool)

(assert (=> b!5041739 (= e!3148525 (and (inv!77173 (xs!18842 (right!43033 (left!42703 (left!42703 t!4198))))) e!3148526))))

(assert (=> b!5041403 (= tp!1411145 (and (inv!77172 (right!43033 (left!42703 (left!42703 t!4198)))) e!3148525))))

(assert (= (and b!5041403 ((_ is Node!15516) (right!43033 (left!42703 (left!42703 t!4198))))) b!5041738))

(assert (= b!5041739 b!5041740))

(assert (= (and b!5041403 ((_ is Leaf!25738) (right!43033 (left!42703 (left!42703 t!4198))))) b!5041739))

(declare-fun m!6075986 () Bool)

(assert (=> b!5041738 m!6075986))

(declare-fun m!6075988 () Bool)

(assert (=> b!5041738 m!6075988))

(declare-fun m!6075990 () Bool)

(assert (=> b!5041739 m!6075990))

(assert (=> b!5041403 m!6075474))

(declare-fun e!3148527 () Bool)

(declare-fun tp!1411176 () Bool)

(declare-fun tp!1411175 () Bool)

(declare-fun b!5041741 () Bool)

(assert (=> b!5041741 (= e!3148527 (and (inv!77172 (left!42703 (left!42703 (left!42703 (right!43033 t!4198))))) tp!1411176 (inv!77172 (right!43033 (left!42703 (left!42703 (right!43033 t!4198))))) tp!1411175))))

(declare-fun b!5041743 () Bool)

(declare-fun e!3148528 () Bool)

(declare-fun tp!1411174 () Bool)

(assert (=> b!5041743 (= e!3148528 tp!1411174)))

(declare-fun b!5041742 () Bool)

(assert (=> b!5041742 (= e!3148527 (and (inv!77173 (xs!18842 (left!42703 (left!42703 (right!43033 t!4198))))) e!3148528))))

(assert (=> b!5041395 (= tp!1411140 (and (inv!77172 (left!42703 (left!42703 (right!43033 t!4198)))) e!3148527))))

(assert (= (and b!5041395 ((_ is Node!15516) (left!42703 (left!42703 (right!43033 t!4198))))) b!5041741))

(assert (= b!5041742 b!5041743))

(assert (= (and b!5041395 ((_ is Leaf!25738) (left!42703 (left!42703 (right!43033 t!4198))))) b!5041742))

(declare-fun m!6075992 () Bool)

(assert (=> b!5041741 m!6075992))

(declare-fun m!6075994 () Bool)

(assert (=> b!5041741 m!6075994))

(declare-fun m!6075996 () Bool)

(assert (=> b!5041742 m!6075996))

(assert (=> b!5041395 m!6075458))

(declare-fun tp!1411179 () Bool)

(declare-fun b!5041744 () Bool)

(declare-fun e!3148529 () Bool)

(declare-fun tp!1411178 () Bool)

(assert (=> b!5041744 (= e!3148529 (and (inv!77172 (left!42703 (right!43033 (left!42703 (right!43033 t!4198))))) tp!1411179 (inv!77172 (right!43033 (right!43033 (left!42703 (right!43033 t!4198))))) tp!1411178))))

(declare-fun b!5041746 () Bool)

(declare-fun e!3148530 () Bool)

(declare-fun tp!1411177 () Bool)

(assert (=> b!5041746 (= e!3148530 tp!1411177)))

(declare-fun b!5041745 () Bool)

(assert (=> b!5041745 (= e!3148529 (and (inv!77173 (xs!18842 (right!43033 (left!42703 (right!43033 t!4198))))) e!3148530))))

(assert (=> b!5041395 (= tp!1411139 (and (inv!77172 (right!43033 (left!42703 (right!43033 t!4198)))) e!3148529))))

(assert (= (and b!5041395 ((_ is Node!15516) (right!43033 (left!42703 (right!43033 t!4198))))) b!5041744))

(assert (= b!5041745 b!5041746))

(assert (= (and b!5041395 ((_ is Leaf!25738) (right!43033 (left!42703 (right!43033 t!4198))))) b!5041745))

(declare-fun m!6075998 () Bool)

(assert (=> b!5041744 m!6075998))

(declare-fun m!6076000 () Bool)

(assert (=> b!5041744 m!6076000))

(declare-fun m!6076002 () Bool)

(assert (=> b!5041745 m!6076002))

(assert (=> b!5041395 m!6075460))

(declare-fun b!5041747 () Bool)

(declare-fun e!3148531 () Bool)

(declare-fun tp!1411180 () Bool)

(assert (=> b!5041747 (= e!3148531 (and tp_is_empty!36795 tp!1411180))))

(assert (=> b!5041405 (= tp!1411144 e!3148531)))

(assert (= (and b!5041405 ((_ is Cons!58304) (innerList!15604 (xs!18842 (left!42703 (left!42703 t!4198)))))) b!5041747))

(declare-fun b!5041748 () Bool)

(declare-fun e!3148532 () Bool)

(declare-fun tp!1411181 () Bool)

(assert (=> b!5041748 (= e!3148532 (and tp_is_empty!36795 tp!1411181))))

(assert (=> b!5041393 (= tp!1411136 e!3148532)))

(assert (= (and b!5041393 ((_ is Cons!58304) (t!370985 (innerList!15604 (xs!18842 (left!42703 t!4198)))))) b!5041748))

(declare-fun b!5041749 () Bool)

(declare-fun e!3148533 () Bool)

(declare-fun tp!1411182 () Bool)

(assert (=> b!5041749 (= e!3148533 (and tp_is_empty!36795 tp!1411182))))

(assert (=> b!5041397 (= tp!1411138 e!3148533)))

(assert (= (and b!5041397 ((_ is Cons!58304) (innerList!15604 (xs!18842 (left!42703 (right!43033 t!4198)))))) b!5041749))

(declare-fun b!5041750 () Bool)

(declare-fun e!3148534 () Bool)

(declare-fun tp!1411184 () Bool)

(declare-fun tp!1411185 () Bool)

(assert (=> b!5041750 (= e!3148534 (and (inv!77172 (left!42703 (left!42703 (right!43033 (left!42703 t!4198))))) tp!1411185 (inv!77172 (right!43033 (left!42703 (right!43033 (left!42703 t!4198))))) tp!1411184))))

(declare-fun b!5041752 () Bool)

(declare-fun e!3148535 () Bool)

(declare-fun tp!1411183 () Bool)

(assert (=> b!5041752 (= e!3148535 tp!1411183)))

(declare-fun b!5041751 () Bool)

(assert (=> b!5041751 (= e!3148534 (and (inv!77173 (xs!18842 (left!42703 (right!43033 (left!42703 t!4198))))) e!3148535))))

(assert (=> b!5041406 (= tp!1411149 (and (inv!77172 (left!42703 (right!43033 (left!42703 t!4198)))) e!3148534))))

(assert (= (and b!5041406 ((_ is Node!15516) (left!42703 (right!43033 (left!42703 t!4198))))) b!5041750))

(assert (= b!5041751 b!5041752))

(assert (= (and b!5041406 ((_ is Leaf!25738) (left!42703 (right!43033 (left!42703 t!4198))))) b!5041751))

(declare-fun m!6076004 () Bool)

(assert (=> b!5041750 m!6076004))

(declare-fun m!6076006 () Bool)

(assert (=> b!5041750 m!6076006))

(declare-fun m!6076008 () Bool)

(assert (=> b!5041751 m!6076008))

(assert (=> b!5041406 m!6075478))

(declare-fun e!3148536 () Bool)

(declare-fun tp!1411187 () Bool)

(declare-fun tp!1411188 () Bool)

(declare-fun b!5041753 () Bool)

(assert (=> b!5041753 (= e!3148536 (and (inv!77172 (left!42703 (right!43033 (right!43033 (left!42703 t!4198))))) tp!1411188 (inv!77172 (right!43033 (right!43033 (right!43033 (left!42703 t!4198))))) tp!1411187))))

(declare-fun b!5041755 () Bool)

(declare-fun e!3148537 () Bool)

(declare-fun tp!1411186 () Bool)

(assert (=> b!5041755 (= e!3148537 tp!1411186)))

(declare-fun b!5041754 () Bool)

(assert (=> b!5041754 (= e!3148536 (and (inv!77173 (xs!18842 (right!43033 (right!43033 (left!42703 t!4198))))) e!3148537))))

(assert (=> b!5041406 (= tp!1411148 (and (inv!77172 (right!43033 (right!43033 (left!42703 t!4198)))) e!3148536))))

(assert (= (and b!5041406 ((_ is Node!15516) (right!43033 (right!43033 (left!42703 t!4198))))) b!5041753))

(assert (= b!5041754 b!5041755))

(assert (= (and b!5041406 ((_ is Leaf!25738) (right!43033 (right!43033 (left!42703 t!4198))))) b!5041754))

(declare-fun m!6076010 () Bool)

(assert (=> b!5041753 m!6076010))

(declare-fun m!6076012 () Bool)

(assert (=> b!5041753 m!6076012))

(declare-fun m!6076014 () Bool)

(assert (=> b!5041754 m!6076014))

(assert (=> b!5041406 m!6075480))

(declare-fun b!5041756 () Bool)

(declare-fun e!3148538 () Bool)

(declare-fun tp!1411189 () Bool)

(assert (=> b!5041756 (= e!3148538 (and tp_is_empty!36795 tp!1411189))))

(assert (=> b!5041409 (= tp!1411150 e!3148538)))

(assert (= (and b!5041409 ((_ is Cons!58304) (t!370985 (innerList!15604 (xs!18842 (right!43033 t!4198)))))) b!5041756))

(declare-fun b!5041757 () Bool)

(declare-fun e!3148539 () Bool)

(declare-fun tp!1411190 () Bool)

(assert (=> b!5041757 (= e!3148539 (and tp_is_empty!36795 tp!1411190))))

(assert (=> b!5041408 (= tp!1411147 e!3148539)))

(assert (= (and b!5041408 ((_ is Cons!58304) (innerList!15604 (xs!18842 (right!43033 (left!42703 t!4198)))))) b!5041757))

(declare-fun tp!1411192 () Bool)

(declare-fun tp!1411193 () Bool)

(declare-fun e!3148540 () Bool)

(declare-fun b!5041758 () Bool)

(assert (=> b!5041758 (= e!3148540 (and (inv!77172 (left!42703 (left!42703 (right!43033 (right!43033 t!4198))))) tp!1411193 (inv!77172 (right!43033 (left!42703 (right!43033 (right!43033 t!4198))))) tp!1411192))))

(declare-fun b!5041760 () Bool)

(declare-fun e!3148541 () Bool)

(declare-fun tp!1411191 () Bool)

(assert (=> b!5041760 (= e!3148541 tp!1411191)))

(declare-fun b!5041759 () Bool)

(assert (=> b!5041759 (= e!3148540 (and (inv!77173 (xs!18842 (left!42703 (right!43033 (right!43033 t!4198))))) e!3148541))))

(assert (=> b!5041400 (= tp!1411143 (and (inv!77172 (left!42703 (right!43033 (right!43033 t!4198)))) e!3148540))))

(assert (= (and b!5041400 ((_ is Node!15516) (left!42703 (right!43033 (right!43033 t!4198))))) b!5041758))

(assert (= b!5041759 b!5041760))

(assert (= (and b!5041400 ((_ is Leaf!25738) (left!42703 (right!43033 (right!43033 t!4198))))) b!5041759))

(declare-fun m!6076016 () Bool)

(assert (=> b!5041758 m!6076016))

(declare-fun m!6076018 () Bool)

(assert (=> b!5041758 m!6076018))

(declare-fun m!6076020 () Bool)

(assert (=> b!5041759 m!6076020))

(assert (=> b!5041400 m!6075466))

(declare-fun e!3148542 () Bool)

(declare-fun b!5041761 () Bool)

(declare-fun tp!1411196 () Bool)

(declare-fun tp!1411195 () Bool)

(assert (=> b!5041761 (= e!3148542 (and (inv!77172 (left!42703 (right!43033 (right!43033 (right!43033 t!4198))))) tp!1411196 (inv!77172 (right!43033 (right!43033 (right!43033 (right!43033 t!4198))))) tp!1411195))))

(declare-fun b!5041763 () Bool)

(declare-fun e!3148543 () Bool)

(declare-fun tp!1411194 () Bool)

(assert (=> b!5041763 (= e!3148543 tp!1411194)))

(declare-fun b!5041762 () Bool)

(assert (=> b!5041762 (= e!3148542 (and (inv!77173 (xs!18842 (right!43033 (right!43033 (right!43033 t!4198))))) e!3148543))))

(assert (=> b!5041400 (= tp!1411142 (and (inv!77172 (right!43033 (right!43033 (right!43033 t!4198)))) e!3148542))))

(assert (= (and b!5041400 ((_ is Node!15516) (right!43033 (right!43033 (right!43033 t!4198))))) b!5041761))

(assert (= b!5041762 b!5041763))

(assert (= (and b!5041400 ((_ is Leaf!25738) (right!43033 (right!43033 (right!43033 t!4198))))) b!5041762))

(declare-fun m!6076022 () Bool)

(assert (=> b!5041761 m!6076022))

(declare-fun m!6076024 () Bool)

(assert (=> b!5041761 m!6076024))

(declare-fun m!6076026 () Bool)

(assert (=> b!5041762 m!6076026))

(assert (=> b!5041400 m!6075468))

(declare-fun b!5041764 () Bool)

(declare-fun e!3148544 () Bool)

(declare-fun tp!1411197 () Bool)

(assert (=> b!5041764 (= e!3148544 (and tp_is_empty!36795 tp!1411197))))

(assert (=> b!5041394 (= tp!1411137 e!3148544)))

(assert (= (and b!5041394 ((_ is Cons!58304) (t!370985 (t!370985 (innerList!15604 (xs!18842 t!4198)))))) b!5041764))

(check-sat (not d!1622100) (not b!5041664) (not b!5041626) (not bm!351415) (not b!5041649) (not b!5041694) (not d!1621984) (not b!5041742) (not b!5041403) (not d!1622062) (not b!5041745) (not d!1622088) (not b!5041723) (not b!5041658) (not b!5041735) (not b!5041563) (not b!5041731) (not b!5041711) (not b!5041652) (not b!5041606) (not b!5041594) (not b!5041537) (not b!5041736) (not b!5041740) (not b!5041542) (not b!5041683) (not d!1621976) (not d!1622024) (not b!5041675) (not b!5041531) (not b!5041547) (not b!5041613) (not d!1622068) (not b!5041690) (not b!5041762) (not b!5041718) (not b!5041575) (not d!1622108) (not d!1621992) (not b!5041707) (not d!1622064) (not b!5041641) (not b!5041654) (not b!5041748) (not b!5041630) (not b!5041647) (not d!1622104) (not b!5041668) (not b!5041663) (not b!5041665) (not b!5041720) (not b!5041574) (not b!5041621) (not b!5041661) (not b!5041734) (not b!5041535) (not d!1621932) (not b!5041631) (not b!5041764) (not b!5041730) (not d!1622030) (not d!1622084) (not d!1621982) (not b!5041638) (not b!5041704) (not b!5041705) (not b!5041618) (not b!5041580) (not d!1621996) (not d!1622006) (not b!5041645) (not d!1621978) (not b!5041605) (not b!5041553) (not b!5041564) (not b!5041751) (not b!5041756) (not b!5041406) (not b!5041750) (not b!5041567) (not b!5041682) (not b!5041741) (not b!5041617) (not b!5041749) (not b!5041591) (not b!5041518) (not b!5041733) (not b!5041517) (not b!5041737) (not b!5041597) (not b!5041557) (not b!5041752) (not b!5041593) (not b!5041588) (not d!1622072) (not d!1621954) (not b!5041615) (not b!5041738) (not d!1622020) (not b!5041598) (not b!5041650) (not b!5041565) (not d!1622002) (not b!5041636) (not d!1622032) (not b!5041693) (not d!1621950) (not b!5041719) (not b!5041743) (not d!1622040) (not b!5041659) (not b!5041716) (not d!1622054) (not b!5041639) (not b!5041558) (not b!5041581) (not b!5041653) (not b!5041543) (not b!5041710) (not b!5041754) (not b!5041523) (not b!5041671) (not b!5041633) (not b!5041568) (not b!5041755) (not b!5041526) (not b!5041714) (not b!5041521) (not b!5041623) (not b!5041656) (not d!1621994) (not b!5041569) (not b!5041571) (not b!5041739) (not b!5041640) (not b!5041400) (not b!5041747) (not b!5041758) (not bm!351413) (not b!5041688) (not d!1622058) (not b!5041395) (not b!5041667) (not b!5041759) (not b!5041672) (not d!1622004) (not b!5041674) (not d!1622106) (not b!5041566) (not b!5041655) (not b!5041629) (not b!5041595) (not b!5041541) (not b!5041746) (not b!5041757) (not d!1622018) (not b!5041520) (not b!5041651) (not b!5041727) (not b!5041643) (not b!5041524) (not b!5041555) (not b!5041625) (not b!5041546) (not d!1622102) (not b!5041744) (not bm!351414) tp_is_empty!36795 (not d!1622090) (not b!5041760) (not b!5041753) (not d!1622022) (not b!5041545) (not b!5041529) (not b!5041561) (not b!5041539) (not d!1622038) (not b!5041620) (not b!5041722) (not b!5041544) (not b!5041610) (not b!5041697) (not b!5041701) (not d!1622060) (not b!5041763) (not b!5041551) (not b!5041642) (not b!5041527) (not b!5041533) (not d!1621980) (not b!5041761) (not b!5041586) (not b!5041549) (not b!5041699))
(check-sat)
