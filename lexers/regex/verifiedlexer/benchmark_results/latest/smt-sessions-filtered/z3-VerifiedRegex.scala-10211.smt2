; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532854 () Bool)

(assert start!532854)

(declare-fun tp!1410403 () Bool)

(declare-fun e!3146021 () Bool)

(declare-fun tp!1410404 () Bool)

(declare-datatypes ((T!104068 0))(
  ( (T!104069 (val!23498 Int)) )
))
(declare-datatypes ((List!58408 0))(
  ( (Nil!58284) (Cons!58284 (h!64732 T!104068) (t!370903 List!58408)) )
))
(declare-datatypes ((IArray!31053 0))(
  ( (IArray!31054 (innerList!15584 List!58408)) )
))
(declare-datatypes ((Conc!15496 0))(
  ( (Node!15496 (left!42673 Conc!15496) (right!43003 Conc!15496) (csize!31222 Int) (cheight!15707 Int)) (Leaf!25708 (xs!18822 IArray!31053) (csize!31223 Int)) (Empty!15496) )
))
(declare-fun t!4198 () Conc!15496)

(declare-fun b!5036948 () Bool)

(declare-fun inv!77062 (Conc!15496) Bool)

(assert (=> b!5036948 (= e!3146021 (and (inv!77062 (left!42673 t!4198)) tp!1410403 (inv!77062 (right!43003 t!4198)) tp!1410404))))

(declare-fun b!5036949 () Bool)

(declare-fun e!3146020 () Bool)

(declare-fun lt!2083786 () List!58408)

(declare-fun i!618 () Int)

(declare-datatypes ((tuple2!63214 0))(
  ( (tuple2!63215 (_1!34910 List!58408) (_2!34910 List!58408)) )
))
(declare-fun splitAtIndex!197 (List!58408 Int) tuple2!63214)

(declare-fun take!813 (List!58408 Int) List!58408)

(assert (=> b!5036949 (= e!3146020 (not (= (_1!34910 (splitAtIndex!197 lt!2083786 i!618)) (take!813 lt!2083786 i!618))))))

(declare-fun list!18883 (IArray!31053) List!58408)

(assert (=> b!5036949 (= lt!2083786 (list!18883 (xs!18822 t!4198)))))

(declare-fun b!5036950 () Bool)

(declare-fun e!3146022 () Bool)

(declare-fun tp!1410402 () Bool)

(assert (=> b!5036950 (= e!3146022 tp!1410402)))

(declare-fun res!2146162 () Bool)

(assert (=> start!532854 (=> (not res!2146162) (not e!3146020))))

(declare-fun isBalanced!4358 (Conc!15496) Bool)

(assert (=> start!532854 (= res!2146162 (isBalanced!4358 t!4198))))

(assert (=> start!532854 e!3146020))

(assert (=> start!532854 (and (inv!77062 t!4198) e!3146021)))

(assert (=> start!532854 true))

(declare-fun b!5036951 () Bool)

(declare-fun res!2146161 () Bool)

(assert (=> b!5036951 (=> (not res!2146161) (not e!3146020))))

(get-info :version)

(assert (=> b!5036951 (= res!2146161 (and (not ((_ is Empty!15496) t!4198)) ((_ is Leaf!25708) t!4198) (> i!618 0) (not (= i!618 (csize!31223 t!4198)))))))

(declare-fun b!5036952 () Bool)

(declare-fun res!2146160 () Bool)

(assert (=> b!5036952 (=> (not res!2146160) (not e!3146020))))

(declare-fun size!38865 (Conc!15496) Int)

(assert (=> b!5036952 (= res!2146160 (<= i!618 (size!38865 t!4198)))))

(declare-fun b!5036953 () Bool)

(declare-fun res!2146163 () Bool)

(assert (=> b!5036953 (=> (not res!2146163) (not e!3146020))))

(assert (=> b!5036953 (= res!2146163 (<= 0 i!618))))

(declare-fun b!5036954 () Bool)

(declare-fun inv!77063 (IArray!31053) Bool)

(assert (=> b!5036954 (= e!3146021 (and (inv!77063 (xs!18822 t!4198)) e!3146022))))

(assert (= (and start!532854 res!2146162) b!5036953))

(assert (= (and b!5036953 res!2146163) b!5036952))

(assert (= (and b!5036952 res!2146160) b!5036951))

(assert (= (and b!5036951 res!2146161) b!5036949))

(assert (= (and start!532854 ((_ is Node!15496) t!4198)) b!5036948))

(assert (= b!5036954 b!5036950))

(assert (= (and start!532854 ((_ is Leaf!25708) t!4198)) b!5036954))

(declare-fun m!6071038 () Bool)

(assert (=> start!532854 m!6071038))

(declare-fun m!6071040 () Bool)

(assert (=> start!532854 m!6071040))

(declare-fun m!6071042 () Bool)

(assert (=> b!5036952 m!6071042))

(declare-fun m!6071044 () Bool)

(assert (=> b!5036948 m!6071044))

(declare-fun m!6071046 () Bool)

(assert (=> b!5036948 m!6071046))

(declare-fun m!6071048 () Bool)

(assert (=> b!5036954 m!6071048))

(declare-fun m!6071050 () Bool)

(assert (=> b!5036949 m!6071050))

(declare-fun m!6071052 () Bool)

(assert (=> b!5036949 m!6071052))

(declare-fun m!6071054 () Bool)

(assert (=> b!5036949 m!6071054))

(check-sat (not b!5036950) (not b!5036954) (not start!532854) (not b!5036948) (not b!5036952) (not b!5036949))
(check-sat)
(get-model)

(declare-fun d!1620234 () Bool)

(declare-fun lt!2083792 () Int)

(declare-fun size!38867 (List!58408) Int)

(declare-fun list!18885 (Conc!15496) List!58408)

(assert (=> d!1620234 (= lt!2083792 (size!38867 (list!18885 t!4198)))))

(assert (=> d!1620234 (= lt!2083792 (ite ((_ is Empty!15496) t!4198) 0 (ite ((_ is Leaf!25708) t!4198) (csize!31223 t!4198) (csize!31222 t!4198))))))

(assert (=> d!1620234 (= (size!38865 t!4198) lt!2083792)))

(declare-fun bs!1188779 () Bool)

(assert (= bs!1188779 d!1620234))

(declare-fun m!6071060 () Bool)

(assert (=> bs!1188779 m!6071060))

(assert (=> bs!1188779 m!6071060))

(declare-fun m!6071062 () Bool)

(assert (=> bs!1188779 m!6071062))

(assert (=> b!5036952 d!1620234))

(declare-fun b!5036979 () Bool)

(declare-fun e!3146034 () Bool)

(declare-fun e!3146033 () Bool)

(assert (=> b!5036979 (= e!3146034 e!3146033)))

(declare-fun res!2146185 () Bool)

(assert (=> b!5036979 (=> (not res!2146185) (not e!3146033))))

(declare-fun height!2074 (Conc!15496) Int)

(assert (=> b!5036979 (= res!2146185 (<= (- 1) (- (height!2074 (left!42673 t!4198)) (height!2074 (right!43003 t!4198)))))))

(declare-fun b!5036980 () Bool)

(declare-fun res!2146183 () Bool)

(assert (=> b!5036980 (=> (not res!2146183) (not e!3146033))))

(assert (=> b!5036980 (= res!2146183 (<= (- (height!2074 (left!42673 t!4198)) (height!2074 (right!43003 t!4198))) 1))))

(declare-fun b!5036982 () Bool)

(declare-fun res!2146180 () Bool)

(assert (=> b!5036982 (=> (not res!2146180) (not e!3146033))))

(assert (=> b!5036982 (= res!2146180 (isBalanced!4358 (left!42673 t!4198)))))

(declare-fun b!5036983 () Bool)

(declare-fun res!2146181 () Bool)

(assert (=> b!5036983 (=> (not res!2146181) (not e!3146033))))

(declare-fun isEmpty!31511 (Conc!15496) Bool)

(assert (=> b!5036983 (= res!2146181 (not (isEmpty!31511 (left!42673 t!4198))))))

(declare-fun b!5036984 () Bool)

(declare-fun res!2146184 () Bool)

(assert (=> b!5036984 (=> (not res!2146184) (not e!3146033))))

(assert (=> b!5036984 (= res!2146184 (isBalanced!4358 (right!43003 t!4198)))))

(declare-fun b!5036981 () Bool)

(assert (=> b!5036981 (= e!3146033 (not (isEmpty!31511 (right!43003 t!4198))))))

(declare-fun d!1620238 () Bool)

(declare-fun res!2146182 () Bool)

(assert (=> d!1620238 (=> res!2146182 e!3146034)))

(assert (=> d!1620238 (= res!2146182 (not ((_ is Node!15496) t!4198)))))

(assert (=> d!1620238 (= (isBalanced!4358 t!4198) e!3146034)))

(assert (= (and d!1620238 (not res!2146182)) b!5036979))

(assert (= (and b!5036979 res!2146185) b!5036980))

(assert (= (and b!5036980 res!2146183) b!5036982))

(assert (= (and b!5036982 res!2146180) b!5036984))

(assert (= (and b!5036984 res!2146184) b!5036983))

(assert (= (and b!5036983 res!2146181) b!5036981))

(declare-fun m!6071064 () Bool)

(assert (=> b!5036979 m!6071064))

(declare-fun m!6071066 () Bool)

(assert (=> b!5036979 m!6071066))

(declare-fun m!6071068 () Bool)

(assert (=> b!5036982 m!6071068))

(declare-fun m!6071070 () Bool)

(assert (=> b!5036984 m!6071070))

(assert (=> b!5036980 m!6071064))

(assert (=> b!5036980 m!6071066))

(declare-fun m!6071072 () Bool)

(assert (=> b!5036981 m!6071072))

(declare-fun m!6071074 () Bool)

(assert (=> b!5036983 m!6071074))

(assert (=> start!532854 d!1620238))

(declare-fun d!1620240 () Bool)

(declare-fun c!862852 () Bool)

(assert (=> d!1620240 (= c!862852 ((_ is Node!15496) t!4198))))

(declare-fun e!3146042 () Bool)

(assert (=> d!1620240 (= (inv!77062 t!4198) e!3146042)))

(declare-fun b!5036999 () Bool)

(declare-fun inv!77064 (Conc!15496) Bool)

(assert (=> b!5036999 (= e!3146042 (inv!77064 t!4198))))

(declare-fun b!5037000 () Bool)

(declare-fun e!3146043 () Bool)

(assert (=> b!5037000 (= e!3146042 e!3146043)))

(declare-fun res!2146190 () Bool)

(assert (=> b!5037000 (= res!2146190 (not ((_ is Leaf!25708) t!4198)))))

(assert (=> b!5037000 (=> res!2146190 e!3146043)))

(declare-fun b!5037001 () Bool)

(declare-fun inv!77065 (Conc!15496) Bool)

(assert (=> b!5037001 (= e!3146043 (inv!77065 t!4198))))

(assert (= (and d!1620240 c!862852) b!5036999))

(assert (= (and d!1620240 (not c!862852)) b!5037000))

(assert (= (and b!5037000 (not res!2146190)) b!5037001))

(declare-fun m!6071082 () Bool)

(assert (=> b!5036999 m!6071082))

(declare-fun m!6071084 () Bool)

(assert (=> b!5037001 m!6071084))

(assert (=> start!532854 d!1620240))

(declare-fun d!1620244 () Bool)

(declare-fun c!862855 () Bool)

(assert (=> d!1620244 (= c!862855 ((_ is Node!15496) (left!42673 t!4198)))))

(declare-fun e!3146046 () Bool)

(assert (=> d!1620244 (= (inv!77062 (left!42673 t!4198)) e!3146046)))

(declare-fun b!5037004 () Bool)

(assert (=> b!5037004 (= e!3146046 (inv!77064 (left!42673 t!4198)))))

(declare-fun b!5037005 () Bool)

(declare-fun e!3146047 () Bool)

(assert (=> b!5037005 (= e!3146046 e!3146047)))

(declare-fun res!2146191 () Bool)

(assert (=> b!5037005 (= res!2146191 (not ((_ is Leaf!25708) (left!42673 t!4198))))))

(assert (=> b!5037005 (=> res!2146191 e!3146047)))

(declare-fun b!5037006 () Bool)

(assert (=> b!5037006 (= e!3146047 (inv!77065 (left!42673 t!4198)))))

(assert (= (and d!1620244 c!862855) b!5037004))

(assert (= (and d!1620244 (not c!862855)) b!5037005))

(assert (= (and b!5037005 (not res!2146191)) b!5037006))

(declare-fun m!6071086 () Bool)

(assert (=> b!5037004 m!6071086))

(declare-fun m!6071088 () Bool)

(assert (=> b!5037006 m!6071088))

(assert (=> b!5036948 d!1620244))

(declare-fun d!1620246 () Bool)

(declare-fun c!862859 () Bool)

(assert (=> d!1620246 (= c!862859 ((_ is Node!15496) (right!43003 t!4198)))))

(declare-fun e!3146053 () Bool)

(assert (=> d!1620246 (= (inv!77062 (right!43003 t!4198)) e!3146053)))

(declare-fun b!5037017 () Bool)

(assert (=> b!5037017 (= e!3146053 (inv!77064 (right!43003 t!4198)))))

(declare-fun b!5037018 () Bool)

(declare-fun e!3146055 () Bool)

(assert (=> b!5037018 (= e!3146053 e!3146055)))

(declare-fun res!2146194 () Bool)

(assert (=> b!5037018 (= res!2146194 (not ((_ is Leaf!25708) (right!43003 t!4198))))))

(assert (=> b!5037018 (=> res!2146194 e!3146055)))

(declare-fun b!5037019 () Bool)

(assert (=> b!5037019 (= e!3146055 (inv!77065 (right!43003 t!4198)))))

(assert (= (and d!1620246 c!862859) b!5037017))

(assert (= (and d!1620246 (not c!862859)) b!5037018))

(assert (= (and b!5037018 (not res!2146194)) b!5037019))

(declare-fun m!6071090 () Bool)

(assert (=> b!5037017 m!6071090))

(declare-fun m!6071092 () Bool)

(assert (=> b!5037019 m!6071092))

(assert (=> b!5036948 d!1620246))

(declare-fun b!5037051 () Bool)

(declare-fun lt!2083807 () tuple2!63214)

(assert (=> b!5037051 (= lt!2083807 (splitAtIndex!197 (t!370903 lt!2083786) (- i!618 1)))))

(declare-fun e!3146072 () tuple2!63214)

(assert (=> b!5037051 (= e!3146072 (tuple2!63215 (Cons!58284 (h!64732 lt!2083786) (_1!34910 lt!2083807)) (_2!34910 lt!2083807)))))

(declare-fun b!5037052 () Bool)

(assert (=> b!5037052 (= e!3146072 (tuple2!63215 Nil!58284 lt!2083786))))

(declare-fun b!5037053 () Bool)

(declare-fun e!3146071 () tuple2!63214)

(assert (=> b!5037053 (= e!3146071 (tuple2!63215 Nil!58284 Nil!58284))))

(declare-fun b!5037054 () Bool)

(declare-fun res!2146213 () Bool)

(declare-fun e!3146070 () Bool)

(assert (=> b!5037054 (=> (not res!2146213) (not e!3146070))))

(declare-fun lt!2083806 () tuple2!63214)

(assert (=> b!5037054 (= res!2146213 (= (_1!34910 lt!2083806) (take!813 lt!2083786 i!618)))))

(declare-fun b!5037055 () Bool)

(assert (=> b!5037055 (= e!3146071 e!3146072)))

(declare-fun c!862869 () Bool)

(assert (=> b!5037055 (= c!862869 (<= i!618 0))))

(declare-fun b!5037056 () Bool)

(declare-fun drop!2620 (List!58408 Int) List!58408)

(assert (=> b!5037056 (= e!3146070 (= (_2!34910 lt!2083806) (drop!2620 lt!2083786 i!618)))))

(declare-fun d!1620248 () Bool)

(assert (=> d!1620248 e!3146070))

(declare-fun res!2146212 () Bool)

(assert (=> d!1620248 (=> (not res!2146212) (not e!3146070))))

(declare-fun ++!12715 (List!58408 List!58408) List!58408)

(assert (=> d!1620248 (= res!2146212 (= (++!12715 (_1!34910 lt!2083806) (_2!34910 lt!2083806)) lt!2083786))))

(assert (=> d!1620248 (= lt!2083806 e!3146071)))

(declare-fun c!862868 () Bool)

(assert (=> d!1620248 (= c!862868 ((_ is Nil!58284) lt!2083786))))

(assert (=> d!1620248 (= (splitAtIndex!197 lt!2083786 i!618) lt!2083806)))

(assert (= (and d!1620248 c!862868) b!5037053))

(assert (= (and d!1620248 (not c!862868)) b!5037055))

(assert (= (and b!5037055 c!862869) b!5037052))

(assert (= (and b!5037055 (not c!862869)) b!5037051))

(assert (= (and d!1620248 res!2146212) b!5037054))

(assert (= (and b!5037054 res!2146213) b!5037056))

(declare-fun m!6071104 () Bool)

(assert (=> b!5037051 m!6071104))

(assert (=> b!5037054 m!6071052))

(declare-fun m!6071106 () Bool)

(assert (=> b!5037056 m!6071106))

(declare-fun m!6071108 () Bool)

(assert (=> d!1620248 m!6071108))

(assert (=> b!5036949 d!1620248))

(declare-fun b!5037090 () Bool)

(declare-fun e!3146093 () Bool)

(declare-fun lt!2083810 () List!58408)

(declare-fun e!3146096 () Int)

(assert (=> b!5037090 (= e!3146093 (= (size!38867 lt!2083810) e!3146096))))

(declare-fun c!862881 () Bool)

(assert (=> b!5037090 (= c!862881 (<= i!618 0))))

(declare-fun b!5037092 () Bool)

(declare-fun e!3146091 () Int)

(assert (=> b!5037092 (= e!3146096 e!3146091)))

(declare-fun c!862880 () Bool)

(assert (=> b!5037092 (= c!862880 (>= i!618 (size!38867 lt!2083786)))))

(declare-fun b!5037094 () Bool)

(declare-fun e!3146092 () List!58408)

(assert (=> b!5037094 (= e!3146092 (Cons!58284 (h!64732 lt!2083786) (take!813 (t!370903 lt!2083786) (- i!618 1))))))

(declare-fun b!5037095 () Bool)

(assert (=> b!5037095 (= e!3146091 (size!38867 lt!2083786))))

(declare-fun b!5037097 () Bool)

(assert (=> b!5037097 (= e!3146091 i!618)))

(declare-fun b!5037098 () Bool)

(assert (=> b!5037098 (= e!3146092 Nil!58284)))

(declare-fun d!1620254 () Bool)

(assert (=> d!1620254 e!3146093))

(declare-fun res!2146227 () Bool)

(assert (=> d!1620254 (=> (not res!2146227) (not e!3146093))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10347 (List!58408) (InoxSet T!104068))

(assert (=> d!1620254 (= res!2146227 (= ((_ map implies) (content!10347 lt!2083810) (content!10347 lt!2083786)) ((as const (InoxSet T!104068)) true)))))

(assert (=> d!1620254 (= lt!2083810 e!3146092)))

(declare-fun c!862883 () Bool)

(assert (=> d!1620254 (= c!862883 (or ((_ is Nil!58284) lt!2083786) (<= i!618 0)))))

(assert (=> d!1620254 (= (take!813 lt!2083786 i!618) lt!2083810)))

(declare-fun b!5037096 () Bool)

(assert (=> b!5037096 (= e!3146096 0)))

(assert (= (and d!1620254 c!862883) b!5037098))

(assert (= (and d!1620254 (not c!862883)) b!5037094))

(assert (= (and d!1620254 res!2146227) b!5037090))

(assert (= (and b!5037090 c!862881) b!5037096))

(assert (= (and b!5037090 (not c!862881)) b!5037092))

(assert (= (and b!5037092 c!862880) b!5037095))

(assert (= (and b!5037092 (not c!862880)) b!5037097))

(declare-fun m!6071136 () Bool)

(assert (=> d!1620254 m!6071136))

(declare-fun m!6071138 () Bool)

(assert (=> d!1620254 m!6071138))

(declare-fun m!6071140 () Bool)

(assert (=> b!5037090 m!6071140))

(declare-fun m!6071142 () Bool)

(assert (=> b!5037095 m!6071142))

(declare-fun m!6071144 () Bool)

(assert (=> b!5037094 m!6071144))

(assert (=> b!5037092 m!6071142))

(assert (=> b!5036949 d!1620254))

(declare-fun d!1620264 () Bool)

(assert (=> d!1620264 (= (list!18883 (xs!18822 t!4198)) (innerList!15584 (xs!18822 t!4198)))))

(assert (=> b!5036949 d!1620264))

(declare-fun d!1620266 () Bool)

(assert (=> d!1620266 (= (inv!77063 (xs!18822 t!4198)) (<= (size!38867 (innerList!15584 (xs!18822 t!4198))) 2147483647))))

(declare-fun bs!1188781 () Bool)

(assert (= bs!1188781 d!1620266))

(declare-fun m!6071146 () Bool)

(assert (=> bs!1188781 m!6071146))

(assert (=> b!5036954 d!1620266))

(declare-fun tp!1410428 () Bool)

(declare-fun e!3146112 () Bool)

(declare-fun b!5037126 () Bool)

(declare-fun tp!1410426 () Bool)

(assert (=> b!5037126 (= e!3146112 (and (inv!77062 (left!42673 (left!42673 t!4198))) tp!1410426 (inv!77062 (right!43003 (left!42673 t!4198))) tp!1410428))))

(declare-fun b!5037128 () Bool)

(declare-fun e!3146113 () Bool)

(declare-fun tp!1410427 () Bool)

(assert (=> b!5037128 (= e!3146113 tp!1410427)))

(declare-fun b!5037127 () Bool)

(assert (=> b!5037127 (= e!3146112 (and (inv!77063 (xs!18822 (left!42673 t!4198))) e!3146113))))

(assert (=> b!5036948 (= tp!1410403 (and (inv!77062 (left!42673 t!4198)) e!3146112))))

(assert (= (and b!5036948 ((_ is Node!15496) (left!42673 t!4198))) b!5037126))

(assert (= b!5037127 b!5037128))

(assert (= (and b!5036948 ((_ is Leaf!25708) (left!42673 t!4198))) b!5037127))

(declare-fun m!6071160 () Bool)

(assert (=> b!5037126 m!6071160))

(declare-fun m!6071162 () Bool)

(assert (=> b!5037126 m!6071162))

(declare-fun m!6071164 () Bool)

(assert (=> b!5037127 m!6071164))

(assert (=> b!5036948 m!6071044))

(declare-fun tp!1410429 () Bool)

(declare-fun e!3146114 () Bool)

(declare-fun b!5037129 () Bool)

(declare-fun tp!1410431 () Bool)

(assert (=> b!5037129 (= e!3146114 (and (inv!77062 (left!42673 (right!43003 t!4198))) tp!1410429 (inv!77062 (right!43003 (right!43003 t!4198))) tp!1410431))))

(declare-fun b!5037131 () Bool)

(declare-fun e!3146115 () Bool)

(declare-fun tp!1410430 () Bool)

(assert (=> b!5037131 (= e!3146115 tp!1410430)))

(declare-fun b!5037130 () Bool)

(assert (=> b!5037130 (= e!3146114 (and (inv!77063 (xs!18822 (right!43003 t!4198))) e!3146115))))

(assert (=> b!5036948 (= tp!1410404 (and (inv!77062 (right!43003 t!4198)) e!3146114))))

(assert (= (and b!5036948 ((_ is Node!15496) (right!43003 t!4198))) b!5037129))

(assert (= b!5037130 b!5037131))

(assert (= (and b!5036948 ((_ is Leaf!25708) (right!43003 t!4198))) b!5037130))

(declare-fun m!6071166 () Bool)

(assert (=> b!5037129 m!6071166))

(declare-fun m!6071168 () Bool)

(assert (=> b!5037129 m!6071168))

(declare-fun m!6071170 () Bool)

(assert (=> b!5037130 m!6071170))

(assert (=> b!5036948 m!6071046))

(declare-fun b!5037136 () Bool)

(declare-fun e!3146118 () Bool)

(declare-fun tp_is_empty!36755 () Bool)

(declare-fun tp!1410434 () Bool)

(assert (=> b!5037136 (= e!3146118 (and tp_is_empty!36755 tp!1410434))))

(assert (=> b!5036950 (= tp!1410402 e!3146118)))

(assert (= (and b!5036950 ((_ is Cons!58284) (innerList!15584 (xs!18822 t!4198)))) b!5037136))

(check-sat (not b!5037006) (not b!5037094) (not b!5037004) (not d!1620254) (not b!5037095) (not b!5036999) (not b!5036980) (not d!1620248) (not d!1620234) (not b!5037128) (not b!5037001) (not b!5036979) (not b!5037092) (not b!5037127) (not b!5037051) (not b!5037131) (not b!5036984) (not b!5037017) (not b!5037130) (not b!5037090) tp_is_empty!36755 (not b!5036983) (not b!5037019) (not b!5037126) (not b!5036981) (not b!5037129) (not b!5036948) (not b!5037136) (not d!1620266) (not b!5036982) (not b!5037054) (not b!5037056))
(check-sat)
