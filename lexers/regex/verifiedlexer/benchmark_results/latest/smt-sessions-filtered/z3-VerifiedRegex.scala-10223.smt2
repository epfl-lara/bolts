; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533474 () Bool)

(assert start!533474)

(declare-fun b!5043220 () Bool)

(declare-fun e!3149342 () Bool)

(declare-fun tp!1411393 () Bool)

(assert (=> b!5043220 (= e!3149342 tp!1411393)))

(declare-fun b!5043222 () Bool)

(declare-fun res!2148423 () Bool)

(declare-fun e!3149339 () Bool)

(assert (=> b!5043222 (=> (not res!2148423) (not e!3149339))))

(declare-datatypes ((T!104236 0))(
  ( (T!104237 (val!23522 Int)) )
))
(declare-datatypes ((List!58432 0))(
  ( (Nil!58308) (Cons!58308 (h!64756 T!104236) (t!371009 List!58432)) )
))
(declare-datatypes ((IArray!31101 0))(
  ( (IArray!31102 (innerList!15608 List!58432)) )
))
(declare-datatypes ((Conc!15520 0))(
  ( (Node!15520 (left!42709 Conc!15520) (right!43039 Conc!15520) (csize!31270 Int) (cheight!15731 Int)) (Leaf!25744 (xs!18846 IArray!31101) (csize!31271 Int)) (Empty!15520) )
))
(declare-fun lt!2084760 () Conc!15520)

(declare-fun isBalanced!4382 (Conc!15520) Bool)

(assert (=> b!5043222 (= res!2148423 (isBalanced!4382 lt!2084760))))

(declare-fun b!5043223 () Bool)

(declare-fun e!3149338 () Bool)

(declare-fun e!3149341 () Bool)

(assert (=> b!5043223 (= e!3149338 e!3149341)))

(declare-fun res!2148427 () Bool)

(assert (=> b!5043223 (=> (not res!2148427) (not e!3149341))))

(declare-fun i!618 () Int)

(declare-datatypes ((tuple2!63250 0))(
  ( (tuple2!63251 (_1!34928 List!58432) (_2!34928 List!58432)) )
))
(declare-fun lt!2084758 () tuple2!63250)

(declare-fun lt!2084761 () List!58432)

(declare-fun take!831 (List!58432 Int) List!58432)

(assert (=> b!5043223 (= res!2148427 (= (_1!34928 lt!2084758) (take!831 lt!2084761 i!618)))))

(declare-fun splitAtIndex!215 (List!58432 Int) tuple2!63250)

(assert (=> b!5043223 (= lt!2084758 (splitAtIndex!215 lt!2084761 i!618))))

(declare-fun t!4198 () Conc!15520)

(declare-fun list!18926 (IArray!31101) List!58432)

(assert (=> b!5043223 (= lt!2084761 (list!18926 (xs!18846 t!4198)))))

(declare-fun b!5043224 () Bool)

(declare-fun e!3149337 () Bool)

(assert (=> b!5043224 (= e!3149341 e!3149337)))

(declare-fun res!2148422 () Bool)

(assert (=> b!5043224 (=> (not res!2148422) (not e!3149337))))

(declare-fun lt!2084759 () List!58432)

(assert (=> b!5043224 (= res!2148422 (= (_2!34928 lt!2084758) lt!2084759))))

(declare-fun drop!2638 (List!58432 Int) List!58432)

(assert (=> b!5043224 (= lt!2084759 (drop!2638 lt!2084761 i!618))))

(declare-fun b!5043225 () Bool)

(declare-fun e!3149340 () Bool)

(declare-fun inv!77194 (IArray!31101) Bool)

(assert (=> b!5043225 (= e!3149340 (and (inv!77194 (xs!18846 t!4198)) e!3149342))))

(declare-fun b!5043226 () Bool)

(declare-fun res!2148428 () Bool)

(assert (=> b!5043226 (=> (not res!2148428) (not e!3149338))))

(declare-fun size!38918 (Conc!15520) Int)

(assert (=> b!5043226 (= res!2148428 (<= i!618 (size!38918 t!4198)))))

(declare-fun b!5043227 () Bool)

(declare-fun res!2148424 () Bool)

(assert (=> b!5043227 (=> (not res!2148424) (not e!3149338))))

(assert (=> b!5043227 (= res!2148424 (<= 0 i!618))))

(declare-fun tp!1411394 () Bool)

(declare-fun b!5043228 () Bool)

(declare-fun tp!1411395 () Bool)

(declare-fun inv!77195 (Conc!15520) Bool)

(assert (=> b!5043228 (= e!3149340 (and (inv!77195 (left!42709 t!4198)) tp!1411394 (inv!77195 (right!43039 t!4198)) tp!1411395))))

(declare-fun b!5043229 () Bool)

(declare-fun e!3149336 () Bool)

(assert (=> b!5043229 (= e!3149336 e!3149339)))

(declare-fun res!2148425 () Bool)

(assert (=> b!5043229 (=> (not res!2148425) (not e!3149339))))

(declare-fun lt!2084762 () Conc!15520)

(assert (=> b!5043229 (= res!2148425 (isBalanced!4382 lt!2084762))))

(declare-fun slice!860 (IArray!31101 Int Int) IArray!31101)

(assert (=> b!5043229 (= lt!2084760 (Leaf!25744 (slice!860 (xs!18846 t!4198) i!618 (csize!31271 t!4198)) (- (csize!31271 t!4198) i!618)))))

(assert (=> b!5043229 (= lt!2084762 (Leaf!25744 (slice!860 (xs!18846 t!4198) 0 i!618) i!618))))

(declare-fun res!2148426 () Bool)

(assert (=> start!533474 (=> (not res!2148426) (not e!3149338))))

(assert (=> start!533474 (= res!2148426 (isBalanced!4382 t!4198))))

(assert (=> start!533474 e!3149338))

(assert (=> start!533474 (and (inv!77195 t!4198) e!3149340)))

(assert (=> start!533474 true))

(declare-fun b!5043221 () Bool)

(declare-fun list!18927 (Conc!15520) List!58432)

(assert (=> b!5043221 (= e!3149339 (= (tuple2!63251 (list!18927 lt!2084762) (list!18927 lt!2084760)) (splitAtIndex!215 (list!18927 t!4198) i!618)))))

(declare-fun b!5043230 () Bool)

(declare-fun res!2148421 () Bool)

(assert (=> b!5043230 (=> (not res!2148421) (not e!3149338))))

(get-info :version)

(assert (=> b!5043230 (= res!2148421 (and (not ((_ is Empty!15520) t!4198)) ((_ is Leaf!25744) t!4198) (> i!618 0) (not (= i!618 (csize!31271 t!4198)))))))

(declare-fun b!5043231 () Bool)

(assert (=> b!5043231 (= e!3149337 (not e!3149336))))

(declare-fun res!2148429 () Bool)

(assert (=> b!5043231 (=> res!2148429 e!3149336)))

(declare-fun slice!861 (List!58432 Int Int) List!58432)

(assert (=> b!5043231 (= res!2148429 (not (= (_1!34928 lt!2084758) (slice!861 lt!2084761 0 i!618))))))

(declare-fun size!38919 (List!58432) Int)

(assert (=> b!5043231 (= lt!2084759 (slice!861 lt!2084761 i!618 (size!38919 lt!2084761)))))

(declare-datatypes ((Unit!149499 0))(
  ( (Unit!149500) )
))
(declare-fun lt!2084763 () Unit!149499)

(declare-fun dropLemma!76 (List!58432 Int) Unit!149499)

(assert (=> b!5043231 (= lt!2084763 (dropLemma!76 lt!2084761 i!618))))

(assert (= (and start!533474 res!2148426) b!5043227))

(assert (= (and b!5043227 res!2148424) b!5043226))

(assert (= (and b!5043226 res!2148428) b!5043230))

(assert (= (and b!5043230 res!2148421) b!5043223))

(assert (= (and b!5043223 res!2148427) b!5043224))

(assert (= (and b!5043224 res!2148422) b!5043231))

(assert (= (and b!5043231 (not res!2148429)) b!5043229))

(assert (= (and b!5043229 res!2148425) b!5043222))

(assert (= (and b!5043222 res!2148423) b!5043221))

(assert (= (and start!533474 ((_ is Node!15520) t!4198)) b!5043228))

(assert (= b!5043225 b!5043220))

(assert (= (and start!533474 ((_ is Leaf!25744) t!4198)) b!5043225))

(declare-fun m!6077890 () Bool)

(assert (=> b!5043221 m!6077890))

(declare-fun m!6077892 () Bool)

(assert (=> b!5043221 m!6077892))

(declare-fun m!6077894 () Bool)

(assert (=> b!5043221 m!6077894))

(assert (=> b!5043221 m!6077894))

(declare-fun m!6077896 () Bool)

(assert (=> b!5043221 m!6077896))

(declare-fun m!6077898 () Bool)

(assert (=> start!533474 m!6077898))

(declare-fun m!6077900 () Bool)

(assert (=> start!533474 m!6077900))

(declare-fun m!6077902 () Bool)

(assert (=> b!5043225 m!6077902))

(declare-fun m!6077904 () Bool)

(assert (=> b!5043222 m!6077904))

(declare-fun m!6077906 () Bool)

(assert (=> b!5043226 m!6077906))

(declare-fun m!6077908 () Bool)

(assert (=> b!5043228 m!6077908))

(declare-fun m!6077910 () Bool)

(assert (=> b!5043228 m!6077910))

(declare-fun m!6077912 () Bool)

(assert (=> b!5043223 m!6077912))

(declare-fun m!6077914 () Bool)

(assert (=> b!5043223 m!6077914))

(declare-fun m!6077916 () Bool)

(assert (=> b!5043223 m!6077916))

(declare-fun m!6077918 () Bool)

(assert (=> b!5043224 m!6077918))

(declare-fun m!6077920 () Bool)

(assert (=> b!5043229 m!6077920))

(declare-fun m!6077922 () Bool)

(assert (=> b!5043229 m!6077922))

(declare-fun m!6077924 () Bool)

(assert (=> b!5043229 m!6077924))

(declare-fun m!6077926 () Bool)

(assert (=> b!5043231 m!6077926))

(declare-fun m!6077928 () Bool)

(assert (=> b!5043231 m!6077928))

(assert (=> b!5043231 m!6077928))

(declare-fun m!6077930 () Bool)

(assert (=> b!5043231 m!6077930))

(declare-fun m!6077932 () Bool)

(assert (=> b!5043231 m!6077932))

(check-sat (not b!5043221) (not b!5043225) (not b!5043231) (not start!533474) (not b!5043223) (not b!5043226) (not b!5043228) (not b!5043222) (not b!5043224) (not b!5043229) (not b!5043220))
(check-sat)
(get-model)

(declare-fun d!1622936 () Bool)

(assert (=> d!1622936 (= (inv!77194 (xs!18846 t!4198)) (<= (size!38919 (innerList!15608 (xs!18846 t!4198))) 2147483647))))

(declare-fun bs!1189040 () Bool)

(assert (= bs!1189040 d!1622936))

(declare-fun m!6077934 () Bool)

(assert (=> bs!1189040 m!6077934))

(assert (=> b!5043225 d!1622936))

(declare-fun d!1622938 () Bool)

(assert (=> d!1622938 (= (slice!861 lt!2084761 0 i!618) (take!831 (drop!2638 lt!2084761 0) (- i!618 0)))))

(declare-fun bs!1189041 () Bool)

(assert (= bs!1189041 d!1622938))

(declare-fun m!6077936 () Bool)

(assert (=> bs!1189041 m!6077936))

(assert (=> bs!1189041 m!6077936))

(declare-fun m!6077938 () Bool)

(assert (=> bs!1189041 m!6077938))

(assert (=> b!5043231 d!1622938))

(declare-fun d!1622940 () Bool)

(assert (=> d!1622940 (= (slice!861 lt!2084761 i!618 (size!38919 lt!2084761)) (take!831 (drop!2638 lt!2084761 i!618) (- (size!38919 lt!2084761) i!618)))))

(declare-fun bs!1189042 () Bool)

(assert (= bs!1189042 d!1622940))

(assert (=> bs!1189042 m!6077918))

(assert (=> bs!1189042 m!6077918))

(declare-fun m!6077940 () Bool)

(assert (=> bs!1189042 m!6077940))

(assert (=> b!5043231 d!1622940))

(declare-fun d!1622942 () Bool)

(declare-fun lt!2084766 () Int)

(assert (=> d!1622942 (>= lt!2084766 0)))

(declare-fun e!3149345 () Int)

(assert (=> d!1622942 (= lt!2084766 e!3149345)))

(declare-fun c!864308 () Bool)

(assert (=> d!1622942 (= c!864308 ((_ is Nil!58308) lt!2084761))))

(assert (=> d!1622942 (= (size!38919 lt!2084761) lt!2084766)))

(declare-fun b!5043236 () Bool)

(assert (=> b!5043236 (= e!3149345 0)))

(declare-fun b!5043237 () Bool)

(assert (=> b!5043237 (= e!3149345 (+ 1 (size!38919 (t!371009 lt!2084761))))))

(assert (= (and d!1622942 c!864308) b!5043236))

(assert (= (and d!1622942 (not c!864308)) b!5043237))

(declare-fun m!6077942 () Bool)

(assert (=> b!5043237 m!6077942))

(assert (=> b!5043231 d!1622942))

(declare-fun d!1622946 () Bool)

(assert (=> d!1622946 (= (drop!2638 lt!2084761 i!618) (slice!861 lt!2084761 i!618 (size!38919 lt!2084761)))))

(declare-fun lt!2084771 () Unit!149499)

(declare-fun choose!37265 (List!58432 Int) Unit!149499)

(assert (=> d!1622946 (= lt!2084771 (choose!37265 lt!2084761 i!618))))

(declare-fun e!3149350 () Bool)

(assert (=> d!1622946 e!3149350))

(declare-fun res!2148432 () Bool)

(assert (=> d!1622946 (=> (not res!2148432) (not e!3149350))))

(assert (=> d!1622946 (= res!2148432 (<= 0 i!618))))

(assert (=> d!1622946 (= (dropLemma!76 lt!2084761 i!618) lt!2084771)))

(declare-fun b!5043244 () Bool)

(assert (=> b!5043244 (= e!3149350 (<= i!618 (size!38919 lt!2084761)))))

(assert (= (and d!1622946 res!2148432) b!5043244))

(assert (=> d!1622946 m!6077918))

(assert (=> d!1622946 m!6077928))

(assert (=> d!1622946 m!6077928))

(assert (=> d!1622946 m!6077930))

(declare-fun m!6077944 () Bool)

(assert (=> d!1622946 m!6077944))

(assert (=> b!5043244 m!6077928))

(assert (=> b!5043231 d!1622946))

(declare-fun d!1622948 () Bool)

(declare-fun lt!2084774 () Int)

(assert (=> d!1622948 (= lt!2084774 (size!38919 (list!18927 t!4198)))))

(assert (=> d!1622948 (= lt!2084774 (ite ((_ is Empty!15520) t!4198) 0 (ite ((_ is Leaf!25744) t!4198) (csize!31271 t!4198) (csize!31270 t!4198))))))

(assert (=> d!1622948 (= (size!38918 t!4198) lt!2084774)))

(declare-fun bs!1189043 () Bool)

(assert (= bs!1189043 d!1622948))

(assert (=> bs!1189043 m!6077894))

(assert (=> bs!1189043 m!6077894))

(declare-fun m!6077946 () Bool)

(assert (=> bs!1189043 m!6077946))

(assert (=> b!5043226 d!1622948))

(declare-fun b!5043273 () Bool)

(declare-fun e!3149366 () List!58432)

(declare-fun ++!12733 (List!58432 List!58432) List!58432)

(assert (=> b!5043273 (= e!3149366 (++!12733 (list!18927 (left!42709 lt!2084762)) (list!18927 (right!43039 lt!2084762))))))

(declare-fun b!5043270 () Bool)

(declare-fun e!3149365 () List!58432)

(assert (=> b!5043270 (= e!3149365 Nil!58308)))

(declare-fun b!5043271 () Bool)

(assert (=> b!5043271 (= e!3149365 e!3149366)))

(declare-fun c!864323 () Bool)

(assert (=> b!5043271 (= c!864323 ((_ is Leaf!25744) lt!2084762))))

(declare-fun b!5043272 () Bool)

(assert (=> b!5043272 (= e!3149366 (list!18926 (xs!18846 lt!2084762)))))

(declare-fun d!1622950 () Bool)

(declare-fun c!864322 () Bool)

(assert (=> d!1622950 (= c!864322 ((_ is Empty!15520) lt!2084762))))

(assert (=> d!1622950 (= (list!18927 lt!2084762) e!3149365)))

(assert (= (and d!1622950 c!864322) b!5043270))

(assert (= (and d!1622950 (not c!864322)) b!5043271))

(assert (= (and b!5043271 c!864323) b!5043272))

(assert (= (and b!5043271 (not c!864323)) b!5043273))

(declare-fun m!6077956 () Bool)

(assert (=> b!5043273 m!6077956))

(declare-fun m!6077958 () Bool)

(assert (=> b!5043273 m!6077958))

(assert (=> b!5043273 m!6077956))

(assert (=> b!5043273 m!6077958))

(declare-fun m!6077960 () Bool)

(assert (=> b!5043273 m!6077960))

(declare-fun m!6077962 () Bool)

(assert (=> b!5043272 m!6077962))

(assert (=> b!5043221 d!1622950))

(declare-fun b!5043277 () Bool)

(declare-fun e!3149368 () List!58432)

(assert (=> b!5043277 (= e!3149368 (++!12733 (list!18927 (left!42709 lt!2084760)) (list!18927 (right!43039 lt!2084760))))))

(declare-fun b!5043274 () Bool)

(declare-fun e!3149367 () List!58432)

(assert (=> b!5043274 (= e!3149367 Nil!58308)))

(declare-fun b!5043275 () Bool)

(assert (=> b!5043275 (= e!3149367 e!3149368)))

(declare-fun c!864325 () Bool)

(assert (=> b!5043275 (= c!864325 ((_ is Leaf!25744) lt!2084760))))

(declare-fun b!5043276 () Bool)

(assert (=> b!5043276 (= e!3149368 (list!18926 (xs!18846 lt!2084760)))))

(declare-fun d!1622954 () Bool)

(declare-fun c!864324 () Bool)

(assert (=> d!1622954 (= c!864324 ((_ is Empty!15520) lt!2084760))))

(assert (=> d!1622954 (= (list!18927 lt!2084760) e!3149367)))

(assert (= (and d!1622954 c!864324) b!5043274))

(assert (= (and d!1622954 (not c!864324)) b!5043275))

(assert (= (and b!5043275 c!864325) b!5043276))

(assert (= (and b!5043275 (not c!864325)) b!5043277))

(declare-fun m!6077964 () Bool)

(assert (=> b!5043277 m!6077964))

(declare-fun m!6077966 () Bool)

(assert (=> b!5043277 m!6077966))

(assert (=> b!5043277 m!6077964))

(assert (=> b!5043277 m!6077966))

(declare-fun m!6077968 () Bool)

(assert (=> b!5043277 m!6077968))

(declare-fun m!6077970 () Bool)

(assert (=> b!5043276 m!6077970))

(assert (=> b!5043221 d!1622954))

(declare-fun b!5043308 () Bool)

(declare-fun e!3149386 () tuple2!63250)

(assert (=> b!5043308 (= e!3149386 (tuple2!63251 Nil!58308 (list!18927 t!4198)))))

(declare-fun d!1622956 () Bool)

(declare-fun e!3149384 () Bool)

(assert (=> d!1622956 e!3149384))

(declare-fun res!2148447 () Bool)

(assert (=> d!1622956 (=> (not res!2148447) (not e!3149384))))

(declare-fun lt!2084786 () tuple2!63250)

(assert (=> d!1622956 (= res!2148447 (= (++!12733 (_1!34928 lt!2084786) (_2!34928 lt!2084786)) (list!18927 t!4198)))))

(declare-fun e!3149385 () tuple2!63250)

(assert (=> d!1622956 (= lt!2084786 e!3149385)))

(declare-fun c!864337 () Bool)

(assert (=> d!1622956 (= c!864337 ((_ is Nil!58308) (list!18927 t!4198)))))

(assert (=> d!1622956 (= (splitAtIndex!215 (list!18927 t!4198) i!618) lt!2084786)))

(declare-fun b!5043309 () Bool)

(assert (=> b!5043309 (= e!3149385 e!3149386)))

(declare-fun c!864336 () Bool)

(assert (=> b!5043309 (= c!864336 (<= i!618 0))))

(declare-fun b!5043310 () Bool)

(assert (=> b!5043310 (= e!3149385 (tuple2!63251 Nil!58308 Nil!58308))))

(declare-fun b!5043311 () Bool)

(declare-fun res!2148446 () Bool)

(assert (=> b!5043311 (=> (not res!2148446) (not e!3149384))))

(assert (=> b!5043311 (= res!2148446 (= (_1!34928 lt!2084786) (take!831 (list!18927 t!4198) i!618)))))

(declare-fun b!5043312 () Bool)

(declare-fun lt!2084787 () tuple2!63250)

(assert (=> b!5043312 (= lt!2084787 (splitAtIndex!215 (t!371009 (list!18927 t!4198)) (- i!618 1)))))

(assert (=> b!5043312 (= e!3149386 (tuple2!63251 (Cons!58308 (h!64756 (list!18927 t!4198)) (_1!34928 lt!2084787)) (_2!34928 lt!2084787)))))

(declare-fun b!5043313 () Bool)

(assert (=> b!5043313 (= e!3149384 (= (_2!34928 lt!2084786) (drop!2638 (list!18927 t!4198) i!618)))))

(assert (= (and d!1622956 c!864337) b!5043310))

(assert (= (and d!1622956 (not c!864337)) b!5043309))

(assert (= (and b!5043309 c!864336) b!5043308))

(assert (= (and b!5043309 (not c!864336)) b!5043312))

(assert (= (and d!1622956 res!2148447) b!5043311))

(assert (= (and b!5043311 res!2148446) b!5043313))

(declare-fun m!6077976 () Bool)

(assert (=> d!1622956 m!6077976))

(assert (=> b!5043311 m!6077894))

(declare-fun m!6077978 () Bool)

(assert (=> b!5043311 m!6077978))

(declare-fun m!6077980 () Bool)

(assert (=> b!5043312 m!6077980))

(assert (=> b!5043313 m!6077894))

(declare-fun m!6077982 () Bool)

(assert (=> b!5043313 m!6077982))

(assert (=> b!5043221 d!1622956))

(declare-fun b!5043317 () Bool)

(declare-fun e!3149388 () List!58432)

(assert (=> b!5043317 (= e!3149388 (++!12733 (list!18927 (left!42709 t!4198)) (list!18927 (right!43039 t!4198))))))

(declare-fun b!5043314 () Bool)

(declare-fun e!3149387 () List!58432)

(assert (=> b!5043314 (= e!3149387 Nil!58308)))

(declare-fun b!5043315 () Bool)

(assert (=> b!5043315 (= e!3149387 e!3149388)))

(declare-fun c!864339 () Bool)

(assert (=> b!5043315 (= c!864339 ((_ is Leaf!25744) t!4198))))

(declare-fun b!5043316 () Bool)

(assert (=> b!5043316 (= e!3149388 (list!18926 (xs!18846 t!4198)))))

(declare-fun d!1622962 () Bool)

(declare-fun c!864338 () Bool)

(assert (=> d!1622962 (= c!864338 ((_ is Empty!15520) t!4198))))

(assert (=> d!1622962 (= (list!18927 t!4198) e!3149387)))

(assert (= (and d!1622962 c!864338) b!5043314))

(assert (= (and d!1622962 (not c!864338)) b!5043315))

(assert (= (and b!5043315 c!864339) b!5043316))

(assert (= (and b!5043315 (not c!864339)) b!5043317))

(declare-fun m!6077984 () Bool)

(assert (=> b!5043317 m!6077984))

(declare-fun m!6077986 () Bool)

(assert (=> b!5043317 m!6077986))

(assert (=> b!5043317 m!6077984))

(assert (=> b!5043317 m!6077986))

(declare-fun m!6077988 () Bool)

(assert (=> b!5043317 m!6077988))

(assert (=> b!5043316 m!6077916))

(assert (=> b!5043221 d!1622962))

(declare-fun b!5043348 () Bool)

(declare-fun e!3149399 () Bool)

(declare-fun isEmpty!31546 (Conc!15520) Bool)

(assert (=> b!5043348 (= e!3149399 (not (isEmpty!31546 (right!43039 t!4198))))))

(declare-fun b!5043349 () Bool)

(declare-fun res!2148482 () Bool)

(assert (=> b!5043349 (=> (not res!2148482) (not e!3149399))))

(assert (=> b!5043349 (= res!2148482 (isBalanced!4382 (left!42709 t!4198)))))

(declare-fun d!1622964 () Bool)

(declare-fun res!2148478 () Bool)

(declare-fun e!3149400 () Bool)

(assert (=> d!1622964 (=> res!2148478 e!3149400)))

(assert (=> d!1622964 (= res!2148478 (not ((_ is Node!15520) t!4198)))))

(assert (=> d!1622964 (= (isBalanced!4382 t!4198) e!3149400)))

(declare-fun b!5043350 () Bool)

(declare-fun res!2148483 () Bool)

(assert (=> b!5043350 (=> (not res!2148483) (not e!3149399))))

(declare-fun height!2099 (Conc!15520) Int)

(assert (=> b!5043350 (= res!2148483 (<= (- (height!2099 (left!42709 t!4198)) (height!2099 (right!43039 t!4198))) 1))))

(declare-fun b!5043351 () Bool)

(declare-fun res!2148479 () Bool)

(assert (=> b!5043351 (=> (not res!2148479) (not e!3149399))))

(assert (=> b!5043351 (= res!2148479 (isBalanced!4382 (right!43039 t!4198)))))

(declare-fun b!5043352 () Bool)

(assert (=> b!5043352 (= e!3149400 e!3149399)))

(declare-fun res!2148480 () Bool)

(assert (=> b!5043352 (=> (not res!2148480) (not e!3149399))))

(assert (=> b!5043352 (= res!2148480 (<= (- 1) (- (height!2099 (left!42709 t!4198)) (height!2099 (right!43039 t!4198)))))))

(declare-fun b!5043353 () Bool)

(declare-fun res!2148481 () Bool)

(assert (=> b!5043353 (=> (not res!2148481) (not e!3149399))))

(assert (=> b!5043353 (= res!2148481 (not (isEmpty!31546 (left!42709 t!4198))))))

(assert (= (and d!1622964 (not res!2148478)) b!5043352))

(assert (= (and b!5043352 res!2148480) b!5043350))

(assert (= (and b!5043350 res!2148483) b!5043349))

(assert (= (and b!5043349 res!2148482) b!5043351))

(assert (= (and b!5043351 res!2148479) b!5043353))

(assert (= (and b!5043353 res!2148481) b!5043348))

(declare-fun m!6078002 () Bool)

(assert (=> b!5043352 m!6078002))

(declare-fun m!6078004 () Bool)

(assert (=> b!5043352 m!6078004))

(declare-fun m!6078006 () Bool)

(assert (=> b!5043351 m!6078006))

(declare-fun m!6078008 () Bool)

(assert (=> b!5043349 m!6078008))

(declare-fun m!6078010 () Bool)

(assert (=> b!5043353 m!6078010))

(assert (=> b!5043350 m!6078002))

(assert (=> b!5043350 m!6078004))

(declare-fun m!6078012 () Bool)

(assert (=> b!5043348 m!6078012))

(assert (=> start!533474 d!1622964))

(declare-fun d!1622968 () Bool)

(declare-fun c!864346 () Bool)

(assert (=> d!1622968 (= c!864346 ((_ is Node!15520) t!4198))))

(declare-fun e!3149413 () Bool)

(assert (=> d!1622968 (= (inv!77195 t!4198) e!3149413)))

(declare-fun b!5043372 () Bool)

(declare-fun inv!77196 (Conc!15520) Bool)

(assert (=> b!5043372 (= e!3149413 (inv!77196 t!4198))))

(declare-fun b!5043373 () Bool)

(declare-fun e!3149414 () Bool)

(assert (=> b!5043373 (= e!3149413 e!3149414)))

(declare-fun res!2148490 () Bool)

(assert (=> b!5043373 (= res!2148490 (not ((_ is Leaf!25744) t!4198)))))

(assert (=> b!5043373 (=> res!2148490 e!3149414)))

(declare-fun b!5043374 () Bool)

(declare-fun inv!77197 (Conc!15520) Bool)

(assert (=> b!5043374 (= e!3149414 (inv!77197 t!4198))))

(assert (= (and d!1622968 c!864346) b!5043372))

(assert (= (and d!1622968 (not c!864346)) b!5043373))

(assert (= (and b!5043373 (not res!2148490)) b!5043374))

(declare-fun m!6078026 () Bool)

(assert (=> b!5043372 m!6078026))

(declare-fun m!6078028 () Bool)

(assert (=> b!5043374 m!6078028))

(assert (=> start!533474 d!1622968))

(declare-fun b!5043375 () Bool)

(declare-fun e!3149415 () Bool)

(assert (=> b!5043375 (= e!3149415 (not (isEmpty!31546 (right!43039 lt!2084760))))))

(declare-fun b!5043376 () Bool)

(declare-fun res!2148495 () Bool)

(assert (=> b!5043376 (=> (not res!2148495) (not e!3149415))))

(assert (=> b!5043376 (= res!2148495 (isBalanced!4382 (left!42709 lt!2084760)))))

(declare-fun d!1622976 () Bool)

(declare-fun res!2148491 () Bool)

(declare-fun e!3149416 () Bool)

(assert (=> d!1622976 (=> res!2148491 e!3149416)))

(assert (=> d!1622976 (= res!2148491 (not ((_ is Node!15520) lt!2084760)))))

(assert (=> d!1622976 (= (isBalanced!4382 lt!2084760) e!3149416)))

(declare-fun b!5043377 () Bool)

(declare-fun res!2148496 () Bool)

(assert (=> b!5043377 (=> (not res!2148496) (not e!3149415))))

(assert (=> b!5043377 (= res!2148496 (<= (- (height!2099 (left!42709 lt!2084760)) (height!2099 (right!43039 lt!2084760))) 1))))

(declare-fun b!5043378 () Bool)

(declare-fun res!2148492 () Bool)

(assert (=> b!5043378 (=> (not res!2148492) (not e!3149415))))

(assert (=> b!5043378 (= res!2148492 (isBalanced!4382 (right!43039 lt!2084760)))))

(declare-fun b!5043379 () Bool)

(assert (=> b!5043379 (= e!3149416 e!3149415)))

(declare-fun res!2148493 () Bool)

(assert (=> b!5043379 (=> (not res!2148493) (not e!3149415))))

(assert (=> b!5043379 (= res!2148493 (<= (- 1) (- (height!2099 (left!42709 lt!2084760)) (height!2099 (right!43039 lt!2084760)))))))

(declare-fun b!5043380 () Bool)

(declare-fun res!2148494 () Bool)

(assert (=> b!5043380 (=> (not res!2148494) (not e!3149415))))

(assert (=> b!5043380 (= res!2148494 (not (isEmpty!31546 (left!42709 lt!2084760))))))

(assert (= (and d!1622976 (not res!2148491)) b!5043379))

(assert (= (and b!5043379 res!2148493) b!5043377))

(assert (= (and b!5043377 res!2148496) b!5043376))

(assert (= (and b!5043376 res!2148495) b!5043378))

(assert (= (and b!5043378 res!2148492) b!5043380))

(assert (= (and b!5043380 res!2148494) b!5043375))

(declare-fun m!6078030 () Bool)

(assert (=> b!5043379 m!6078030))

(declare-fun m!6078032 () Bool)

(assert (=> b!5043379 m!6078032))

(declare-fun m!6078034 () Bool)

(assert (=> b!5043378 m!6078034))

(declare-fun m!6078036 () Bool)

(assert (=> b!5043376 m!6078036))

(declare-fun m!6078038 () Bool)

(assert (=> b!5043380 m!6078038))

(assert (=> b!5043377 m!6078030))

(assert (=> b!5043377 m!6078032))

(declare-fun m!6078040 () Bool)

(assert (=> b!5043375 m!6078040))

(assert (=> b!5043222 d!1622976))

(declare-fun d!1622978 () Bool)

(declare-fun c!864349 () Bool)

(assert (=> d!1622978 (= c!864349 ((_ is Node!15520) (left!42709 t!4198)))))

(declare-fun e!3149419 () Bool)

(assert (=> d!1622978 (= (inv!77195 (left!42709 t!4198)) e!3149419)))

(declare-fun b!5043385 () Bool)

(assert (=> b!5043385 (= e!3149419 (inv!77196 (left!42709 t!4198)))))

(declare-fun b!5043386 () Bool)

(declare-fun e!3149420 () Bool)

(assert (=> b!5043386 (= e!3149419 e!3149420)))

(declare-fun res!2148497 () Bool)

(assert (=> b!5043386 (= res!2148497 (not ((_ is Leaf!25744) (left!42709 t!4198))))))

(assert (=> b!5043386 (=> res!2148497 e!3149420)))

(declare-fun b!5043387 () Bool)

(assert (=> b!5043387 (= e!3149420 (inv!77197 (left!42709 t!4198)))))

(assert (= (and d!1622978 c!864349) b!5043385))

(assert (= (and d!1622978 (not c!864349)) b!5043386))

(assert (= (and b!5043386 (not res!2148497)) b!5043387))

(declare-fun m!6078042 () Bool)

(assert (=> b!5043385 m!6078042))

(declare-fun m!6078044 () Bool)

(assert (=> b!5043387 m!6078044))

(assert (=> b!5043228 d!1622978))

(declare-fun d!1622980 () Bool)

(declare-fun c!864350 () Bool)

(assert (=> d!1622980 (= c!864350 ((_ is Node!15520) (right!43039 t!4198)))))

(declare-fun e!3149421 () Bool)

(assert (=> d!1622980 (= (inv!77195 (right!43039 t!4198)) e!3149421)))

(declare-fun b!5043388 () Bool)

(assert (=> b!5043388 (= e!3149421 (inv!77196 (right!43039 t!4198)))))

(declare-fun b!5043389 () Bool)

(declare-fun e!3149422 () Bool)

(assert (=> b!5043389 (= e!3149421 e!3149422)))

(declare-fun res!2148498 () Bool)

(assert (=> b!5043389 (= res!2148498 (not ((_ is Leaf!25744) (right!43039 t!4198))))))

(assert (=> b!5043389 (=> res!2148498 e!3149422)))

(declare-fun b!5043390 () Bool)

(assert (=> b!5043390 (= e!3149422 (inv!77197 (right!43039 t!4198)))))

(assert (= (and d!1622980 c!864350) b!5043388))

(assert (= (and d!1622980 (not c!864350)) b!5043389))

(assert (= (and b!5043389 (not res!2148498)) b!5043390))

(declare-fun m!6078054 () Bool)

(assert (=> b!5043388 m!6078054))

(declare-fun m!6078056 () Bool)

(assert (=> b!5043390 m!6078056))

(assert (=> b!5043228 d!1622980))

(declare-fun b!5043427 () Bool)

(declare-fun e!3149446 () Int)

(assert (=> b!5043427 (= e!3149446 i!618)))

(declare-fun d!1622984 () Bool)

(declare-fun e!3149444 () Bool)

(assert (=> d!1622984 e!3149444))

(declare-fun res!2148505 () Bool)

(assert (=> d!1622984 (=> (not res!2148505) (not e!3149444))))

(declare-fun lt!2084801 () List!58432)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10361 (List!58432) (InoxSet T!104236))

(assert (=> d!1622984 (= res!2148505 (= ((_ map implies) (content!10361 lt!2084801) (content!10361 lt!2084761)) ((as const (InoxSet T!104236)) true)))))

(declare-fun e!3149443 () List!58432)

(assert (=> d!1622984 (= lt!2084801 e!3149443)))

(declare-fun c!864368 () Bool)

(assert (=> d!1622984 (= c!864368 (or ((_ is Nil!58308) lt!2084761) (<= i!618 0)))))

(assert (=> d!1622984 (= (take!831 lt!2084761 i!618) lt!2084801)))

(declare-fun b!5043428 () Bool)

(assert (=> b!5043428 (= e!3149443 (Cons!58308 (h!64756 lt!2084761) (take!831 (t!371009 lt!2084761) (- i!618 1))))))

(declare-fun b!5043429 () Bool)

(declare-fun e!3149445 () Int)

(assert (=> b!5043429 (= e!3149444 (= (size!38919 lt!2084801) e!3149445))))

(declare-fun c!864366 () Bool)

(assert (=> b!5043429 (= c!864366 (<= i!618 0))))

(declare-fun b!5043430 () Bool)

(assert (=> b!5043430 (= e!3149445 0)))

(declare-fun b!5043431 () Bool)

(assert (=> b!5043431 (= e!3149445 e!3149446)))

(declare-fun c!864367 () Bool)

(assert (=> b!5043431 (= c!864367 (>= i!618 (size!38919 lt!2084761)))))

(declare-fun b!5043432 () Bool)

(assert (=> b!5043432 (= e!3149446 (size!38919 lt!2084761))))

(declare-fun b!5043433 () Bool)

(assert (=> b!5043433 (= e!3149443 Nil!58308)))

(assert (= (and d!1622984 c!864368) b!5043433))

(assert (= (and d!1622984 (not c!864368)) b!5043428))

(assert (= (and d!1622984 res!2148505) b!5043429))

(assert (= (and b!5043429 c!864366) b!5043430))

(assert (= (and b!5043429 (not c!864366)) b!5043431))

(assert (= (and b!5043431 c!864367) b!5043432))

(assert (= (and b!5043431 (not c!864367)) b!5043427))

(declare-fun m!6078088 () Bool)

(assert (=> b!5043428 m!6078088))

(assert (=> b!5043432 m!6077928))

(declare-fun m!6078090 () Bool)

(assert (=> d!1622984 m!6078090))

(declare-fun m!6078092 () Bool)

(assert (=> d!1622984 m!6078092))

(assert (=> b!5043431 m!6077928))

(declare-fun m!6078094 () Bool)

(assert (=> b!5043429 m!6078094))

(assert (=> b!5043223 d!1622984))

(declare-fun b!5043435 () Bool)

(declare-fun e!3149450 () tuple2!63250)

(assert (=> b!5043435 (= e!3149450 (tuple2!63251 Nil!58308 lt!2084761))))

(declare-fun d!1622998 () Bool)

(declare-fun e!3149448 () Bool)

(assert (=> d!1622998 e!3149448))

(declare-fun res!2148508 () Bool)

(assert (=> d!1622998 (=> (not res!2148508) (not e!3149448))))

(declare-fun lt!2084803 () tuple2!63250)

(assert (=> d!1622998 (= res!2148508 (= (++!12733 (_1!34928 lt!2084803) (_2!34928 lt!2084803)) lt!2084761))))

(declare-fun e!3149449 () tuple2!63250)

(assert (=> d!1622998 (= lt!2084803 e!3149449)))

(declare-fun c!864370 () Bool)

(assert (=> d!1622998 (= c!864370 ((_ is Nil!58308) lt!2084761))))

(assert (=> d!1622998 (= (splitAtIndex!215 lt!2084761 i!618) lt!2084803)))

(declare-fun b!5043436 () Bool)

(assert (=> b!5043436 (= e!3149449 e!3149450)))

(declare-fun c!864369 () Bool)

(assert (=> b!5043436 (= c!864369 (<= i!618 0))))

(declare-fun b!5043437 () Bool)

(assert (=> b!5043437 (= e!3149449 (tuple2!63251 Nil!58308 Nil!58308))))

(declare-fun b!5043438 () Bool)

(declare-fun res!2148507 () Bool)

(assert (=> b!5043438 (=> (not res!2148507) (not e!3149448))))

(assert (=> b!5043438 (= res!2148507 (= (_1!34928 lt!2084803) (take!831 lt!2084761 i!618)))))

(declare-fun b!5043439 () Bool)

(declare-fun lt!2084804 () tuple2!63250)

(assert (=> b!5043439 (= lt!2084804 (splitAtIndex!215 (t!371009 lt!2084761) (- i!618 1)))))

(assert (=> b!5043439 (= e!3149450 (tuple2!63251 (Cons!58308 (h!64756 lt!2084761) (_1!34928 lt!2084804)) (_2!34928 lt!2084804)))))

(declare-fun b!5043440 () Bool)

(assert (=> b!5043440 (= e!3149448 (= (_2!34928 lt!2084803) (drop!2638 lt!2084761 i!618)))))

(assert (= (and d!1622998 c!864370) b!5043437))

(assert (= (and d!1622998 (not c!864370)) b!5043436))

(assert (= (and b!5043436 c!864369) b!5043435))

(assert (= (and b!5043436 (not c!864369)) b!5043439))

(assert (= (and d!1622998 res!2148508) b!5043438))

(assert (= (and b!5043438 res!2148507) b!5043440))

(declare-fun m!6078098 () Bool)

(assert (=> d!1622998 m!6078098))

(assert (=> b!5043438 m!6077912))

(declare-fun m!6078100 () Bool)

(assert (=> b!5043439 m!6078100))

(assert (=> b!5043440 m!6077918))

(assert (=> b!5043223 d!1622998))

(declare-fun d!1623002 () Bool)

(assert (=> d!1623002 (= (list!18926 (xs!18846 t!4198)) (innerList!15608 (xs!18846 t!4198)))))

(assert (=> b!5043223 d!1623002))

(declare-fun b!5043441 () Bool)

(declare-fun e!3149451 () Bool)

(assert (=> b!5043441 (= e!3149451 (not (isEmpty!31546 (right!43039 lt!2084762))))))

(declare-fun b!5043442 () Bool)

(declare-fun res!2148513 () Bool)

(assert (=> b!5043442 (=> (not res!2148513) (not e!3149451))))

(assert (=> b!5043442 (= res!2148513 (isBalanced!4382 (left!42709 lt!2084762)))))

(declare-fun d!1623004 () Bool)

(declare-fun res!2148509 () Bool)

(declare-fun e!3149452 () Bool)

(assert (=> d!1623004 (=> res!2148509 e!3149452)))

(assert (=> d!1623004 (= res!2148509 (not ((_ is Node!15520) lt!2084762)))))

(assert (=> d!1623004 (= (isBalanced!4382 lt!2084762) e!3149452)))

(declare-fun b!5043443 () Bool)

(declare-fun res!2148514 () Bool)

(assert (=> b!5043443 (=> (not res!2148514) (not e!3149451))))

(assert (=> b!5043443 (= res!2148514 (<= (- (height!2099 (left!42709 lt!2084762)) (height!2099 (right!43039 lt!2084762))) 1))))

(declare-fun b!5043444 () Bool)

(declare-fun res!2148510 () Bool)

(assert (=> b!5043444 (=> (not res!2148510) (not e!3149451))))

(assert (=> b!5043444 (= res!2148510 (isBalanced!4382 (right!43039 lt!2084762)))))

(declare-fun b!5043445 () Bool)

(assert (=> b!5043445 (= e!3149452 e!3149451)))

(declare-fun res!2148511 () Bool)

(assert (=> b!5043445 (=> (not res!2148511) (not e!3149451))))

(assert (=> b!5043445 (= res!2148511 (<= (- 1) (- (height!2099 (left!42709 lt!2084762)) (height!2099 (right!43039 lt!2084762)))))))

(declare-fun b!5043446 () Bool)

(declare-fun res!2148512 () Bool)

(assert (=> b!5043446 (=> (not res!2148512) (not e!3149451))))

(assert (=> b!5043446 (= res!2148512 (not (isEmpty!31546 (left!42709 lt!2084762))))))

(assert (= (and d!1623004 (not res!2148509)) b!5043445))

(assert (= (and b!5043445 res!2148511) b!5043443))

(assert (= (and b!5043443 res!2148514) b!5043442))

(assert (= (and b!5043442 res!2148513) b!5043444))

(assert (= (and b!5043444 res!2148510) b!5043446))

(assert (= (and b!5043446 res!2148512) b!5043441))

(declare-fun m!6078102 () Bool)

(assert (=> b!5043445 m!6078102))

(declare-fun m!6078104 () Bool)

(assert (=> b!5043445 m!6078104))

(declare-fun m!6078106 () Bool)

(assert (=> b!5043444 m!6078106))

(declare-fun m!6078108 () Bool)

(assert (=> b!5043442 m!6078108))

(declare-fun m!6078110 () Bool)

(assert (=> b!5043446 m!6078110))

(assert (=> b!5043443 m!6078102))

(assert (=> b!5043443 m!6078104))

(declare-fun m!6078114 () Bool)

(assert (=> b!5043441 m!6078114))

(assert (=> b!5043229 d!1623004))

(declare-fun d!1623008 () Bool)

(declare-fun lt!2084810 () IArray!31101)

(assert (=> d!1623008 (= lt!2084810 (IArray!31102 (slice!861 (list!18926 (xs!18846 t!4198)) i!618 (csize!31271 t!4198))))))

(declare-fun choose!37268 (IArray!31101 Int Int) IArray!31101)

(assert (=> d!1623008 (= lt!2084810 (choose!37268 (xs!18846 t!4198) i!618 (csize!31271 t!4198)))))

(declare-fun e!3149467 () Bool)

(assert (=> d!1623008 e!3149467))

(declare-fun res!2148528 () Bool)

(assert (=> d!1623008 (=> (not res!2148528) (not e!3149467))))

(assert (=> d!1623008 (= res!2148528 (and (<= 0 i!618) (<= i!618 (csize!31271 t!4198))))))

(assert (=> d!1623008 (= (slice!860 (xs!18846 t!4198) i!618 (csize!31271 t!4198)) lt!2084810)))

(declare-fun b!5043470 () Bool)

(declare-fun size!38921 (IArray!31101) Int)

(assert (=> b!5043470 (= e!3149467 (<= (csize!31271 t!4198) (size!38921 (xs!18846 t!4198))))))

(assert (= (and d!1623008 res!2148528) b!5043470))

(assert (=> d!1623008 m!6077916))

(assert (=> d!1623008 m!6077916))

(declare-fun m!6078140 () Bool)

(assert (=> d!1623008 m!6078140))

(declare-fun m!6078142 () Bool)

(assert (=> d!1623008 m!6078142))

(declare-fun m!6078144 () Bool)

(assert (=> b!5043470 m!6078144))

(assert (=> b!5043229 d!1623008))

(declare-fun d!1623018 () Bool)

(declare-fun lt!2084811 () IArray!31101)

(assert (=> d!1623018 (= lt!2084811 (IArray!31102 (slice!861 (list!18926 (xs!18846 t!4198)) 0 i!618)))))

(assert (=> d!1623018 (= lt!2084811 (choose!37268 (xs!18846 t!4198) 0 i!618))))

(declare-fun e!3149468 () Bool)

(assert (=> d!1623018 e!3149468))

(declare-fun res!2148529 () Bool)

(assert (=> d!1623018 (=> (not res!2148529) (not e!3149468))))

(assert (=> d!1623018 (= res!2148529 (and (<= 0 0) (<= 0 i!618)))))

(assert (=> d!1623018 (= (slice!860 (xs!18846 t!4198) 0 i!618) lt!2084811)))

(declare-fun b!5043471 () Bool)

(assert (=> b!5043471 (= e!3149468 (<= i!618 (size!38921 (xs!18846 t!4198))))))

(assert (= (and d!1623018 res!2148529) b!5043471))

(assert (=> d!1623018 m!6077916))

(assert (=> d!1623018 m!6077916))

(declare-fun m!6078146 () Bool)

(assert (=> d!1623018 m!6078146))

(declare-fun m!6078148 () Bool)

(assert (=> d!1623018 m!6078148))

(assert (=> b!5043471 m!6078144))

(assert (=> b!5043229 d!1623018))

(declare-fun b!5043534 () Bool)

(declare-fun e!3149506 () List!58432)

(assert (=> b!5043534 (= e!3149506 lt!2084761)))

(declare-fun b!5043535 () Bool)

(declare-fun e!3149503 () Bool)

(declare-fun lt!2084817 () List!58432)

(declare-fun e!3149502 () Int)

(assert (=> b!5043535 (= e!3149503 (= (size!38919 lt!2084817) e!3149502))))

(declare-fun c!864398 () Bool)

(assert (=> b!5043535 (= c!864398 (<= i!618 0))))

(declare-fun b!5043536 () Bool)

(declare-fun e!3149505 () Int)

(assert (=> b!5043536 (= e!3149502 e!3149505)))

(declare-fun c!864399 () Bool)

(declare-fun call!351445 () Int)

(assert (=> b!5043536 (= c!864399 (>= i!618 call!351445))))

(declare-fun b!5043537 () Bool)

(assert (=> b!5043537 (= e!3149502 call!351445)))

(declare-fun b!5043538 () Bool)

(assert (=> b!5043538 (= e!3149505 0)))

(declare-fun bm!351440 () Bool)

(assert (=> bm!351440 (= call!351445 (size!38919 lt!2084761))))

(declare-fun b!5043540 () Bool)

(assert (=> b!5043540 (= e!3149506 (drop!2638 (t!371009 lt!2084761) (- i!618 1)))))

(declare-fun b!5043541 () Bool)

(declare-fun e!3149504 () List!58432)

(assert (=> b!5043541 (= e!3149504 e!3149506)))

(declare-fun c!864397 () Bool)

(assert (=> b!5043541 (= c!864397 (<= i!618 0))))

(declare-fun b!5043542 () Bool)

(assert (=> b!5043542 (= e!3149505 (- call!351445 i!618))))

(declare-fun b!5043539 () Bool)

(assert (=> b!5043539 (= e!3149504 Nil!58308)))

(declare-fun d!1623020 () Bool)

(assert (=> d!1623020 e!3149503))

(declare-fun res!2148541 () Bool)

(assert (=> d!1623020 (=> (not res!2148541) (not e!3149503))))

(assert (=> d!1623020 (= res!2148541 (= ((_ map implies) (content!10361 lt!2084817) (content!10361 lt!2084761)) ((as const (InoxSet T!104236)) true)))))

(assert (=> d!1623020 (= lt!2084817 e!3149504)))

(declare-fun c!864396 () Bool)

(assert (=> d!1623020 (= c!864396 ((_ is Nil!58308) lt!2084761))))

(assert (=> d!1623020 (= (drop!2638 lt!2084761 i!618) lt!2084817)))

(assert (= (and d!1623020 c!864396) b!5043539))

(assert (= (and d!1623020 (not c!864396)) b!5043541))

(assert (= (and b!5043541 c!864397) b!5043534))

(assert (= (and b!5043541 (not c!864397)) b!5043540))

(assert (= (and d!1623020 res!2148541) b!5043535))

(assert (= (and b!5043535 c!864398) b!5043537))

(assert (= (and b!5043535 (not c!864398)) b!5043536))

(assert (= (and b!5043536 c!864399) b!5043538))

(assert (= (and b!5043536 (not c!864399)) b!5043542))

(assert (= (or b!5043537 b!5043536 b!5043542) bm!351440))

(declare-fun m!6078180 () Bool)

(assert (=> b!5043535 m!6078180))

(assert (=> bm!351440 m!6077928))

(declare-fun m!6078182 () Bool)

(assert (=> b!5043540 m!6078182))

(declare-fun m!6078184 () Bool)

(assert (=> d!1623020 m!6078184))

(assert (=> d!1623020 m!6078092))

(assert (=> b!5043224 d!1623020))

(declare-fun b!5043555 () Bool)

(declare-fun e!3149514 () Bool)

(declare-fun tp_is_empty!36803 () Bool)

(declare-fun tp!1411413 () Bool)

(assert (=> b!5043555 (= e!3149514 (and tp_is_empty!36803 tp!1411413))))

(assert (=> b!5043220 (= tp!1411393 e!3149514)))

(assert (= (and b!5043220 ((_ is Cons!58308) (innerList!15608 (xs!18846 t!4198)))) b!5043555))

(declare-fun tp!1411421 () Bool)

(declare-fun e!3149519 () Bool)

(declare-fun b!5043564 () Bool)

(declare-fun tp!1411422 () Bool)

(assert (=> b!5043564 (= e!3149519 (and (inv!77195 (left!42709 (left!42709 t!4198))) tp!1411421 (inv!77195 (right!43039 (left!42709 t!4198))) tp!1411422))))

(declare-fun b!5043566 () Bool)

(declare-fun e!3149520 () Bool)

(declare-fun tp!1411420 () Bool)

(assert (=> b!5043566 (= e!3149520 tp!1411420)))

(declare-fun b!5043565 () Bool)

(assert (=> b!5043565 (= e!3149519 (and (inv!77194 (xs!18846 (left!42709 t!4198))) e!3149520))))

(assert (=> b!5043228 (= tp!1411394 (and (inv!77195 (left!42709 t!4198)) e!3149519))))

(assert (= (and b!5043228 ((_ is Node!15520) (left!42709 t!4198))) b!5043564))

(assert (= b!5043565 b!5043566))

(assert (= (and b!5043228 ((_ is Leaf!25744) (left!42709 t!4198))) b!5043565))

(declare-fun m!6078186 () Bool)

(assert (=> b!5043564 m!6078186))

(declare-fun m!6078188 () Bool)

(assert (=> b!5043564 m!6078188))

(declare-fun m!6078190 () Bool)

(assert (=> b!5043565 m!6078190))

(assert (=> b!5043228 m!6077908))

(declare-fun b!5043567 () Bool)

(declare-fun e!3149521 () Bool)

(declare-fun tp!1411425 () Bool)

(declare-fun tp!1411424 () Bool)

(assert (=> b!5043567 (= e!3149521 (and (inv!77195 (left!42709 (right!43039 t!4198))) tp!1411424 (inv!77195 (right!43039 (right!43039 t!4198))) tp!1411425))))

(declare-fun b!5043569 () Bool)

(declare-fun e!3149522 () Bool)

(declare-fun tp!1411423 () Bool)

(assert (=> b!5043569 (= e!3149522 tp!1411423)))

(declare-fun b!5043568 () Bool)

(assert (=> b!5043568 (= e!3149521 (and (inv!77194 (xs!18846 (right!43039 t!4198))) e!3149522))))

(assert (=> b!5043228 (= tp!1411395 (and (inv!77195 (right!43039 t!4198)) e!3149521))))

(assert (= (and b!5043228 ((_ is Node!15520) (right!43039 t!4198))) b!5043567))

(assert (= b!5043568 b!5043569))

(assert (= (and b!5043228 ((_ is Leaf!25744) (right!43039 t!4198))) b!5043568))

(declare-fun m!6078192 () Bool)

(assert (=> b!5043567 m!6078192))

(declare-fun m!6078194 () Bool)

(assert (=> b!5043567 m!6078194))

(declare-fun m!6078196 () Bool)

(assert (=> b!5043568 m!6078196))

(assert (=> b!5043228 m!6077910))

(check-sat (not d!1622938) (not b!5043237) (not b!5043445) (not b!5043439) (not b!5043555) (not b!5043380) (not d!1622936) (not d!1622956) (not b!5043444) (not b!5043428) (not d!1622946) (not b!5043471) (not b!5043438) (not b!5043351) (not b!5043569) (not b!5043372) (not b!5043353) (not b!5043429) (not b!5043564) (not b!5043567) (not b!5043349) (not b!5043390) (not d!1623018) (not b!5043374) (not b!5043311) (not b!5043312) (not b!5043317) (not bm!351440) (not b!5043273) (not b!5043442) (not b!5043377) (not b!5043350) (not b!5043272) (not b!5043244) (not b!5043276) (not b!5043352) (not b!5043388) (not d!1622940) (not b!5043568) (not b!5043566) (not b!5043565) (not b!5043470) tp_is_empty!36803 (not b!5043313) (not b!5043540) (not b!5043441) (not d!1622948) (not d!1623020) (not b!5043387) (not b!5043443) (not d!1622998) (not d!1622984) (not b!5043440) (not b!5043378) (not b!5043432) (not b!5043228) (not b!5043277) (not b!5043376) (not b!5043385) (not b!5043535) (not b!5043379) (not b!5043431) (not b!5043375) (not b!5043316) (not b!5043446) (not b!5043348) (not d!1623008))
(check-sat)
(get-model)

(declare-fun d!1623024 () Bool)

(declare-fun lt!2084820 () Int)

(assert (=> d!1623024 (= lt!2084820 (size!38919 (list!18926 (xs!18846 t!4198))))))

(declare-fun choose!37269 (IArray!31101) Int)

(assert (=> d!1623024 (= lt!2084820 (choose!37269 (xs!18846 t!4198)))))

(assert (=> d!1623024 (= (size!38921 (xs!18846 t!4198)) lt!2084820)))

(declare-fun bs!1189048 () Bool)

(assert (= bs!1189048 d!1623024))

(assert (=> bs!1189048 m!6077916))

(assert (=> bs!1189048 m!6077916))

(declare-fun m!6078198 () Bool)

(assert (=> bs!1189048 m!6078198))

(declare-fun m!6078200 () Bool)

(assert (=> bs!1189048 m!6078200))

(assert (=> b!5043471 d!1623024))

(declare-fun b!5043580 () Bool)

(declare-fun res!2148546 () Bool)

(declare-fun e!3149527 () Bool)

(assert (=> b!5043580 (=> (not res!2148546) (not e!3149527))))

(declare-fun lt!2084823 () List!58432)

(assert (=> b!5043580 (= res!2148546 (= (size!38919 lt!2084823) (+ (size!38919 (list!18927 (left!42709 lt!2084760))) (size!38919 (list!18927 (right!43039 lt!2084760))))))))

(declare-fun b!5043579 () Bool)

(declare-fun e!3149528 () List!58432)

(assert (=> b!5043579 (= e!3149528 (Cons!58308 (h!64756 (list!18927 (left!42709 lt!2084760))) (++!12733 (t!371009 (list!18927 (left!42709 lt!2084760))) (list!18927 (right!43039 lt!2084760)))))))

(declare-fun b!5043578 () Bool)

(assert (=> b!5043578 (= e!3149528 (list!18927 (right!43039 lt!2084760)))))

(declare-fun d!1623026 () Bool)

(assert (=> d!1623026 e!3149527))

(declare-fun res!2148547 () Bool)

(assert (=> d!1623026 (=> (not res!2148547) (not e!3149527))))

(assert (=> d!1623026 (= res!2148547 (= (content!10361 lt!2084823) ((_ map or) (content!10361 (list!18927 (left!42709 lt!2084760))) (content!10361 (list!18927 (right!43039 lt!2084760))))))))

(assert (=> d!1623026 (= lt!2084823 e!3149528)))

(declare-fun c!864402 () Bool)

(assert (=> d!1623026 (= c!864402 ((_ is Nil!58308) (list!18927 (left!42709 lt!2084760))))))

(assert (=> d!1623026 (= (++!12733 (list!18927 (left!42709 lt!2084760)) (list!18927 (right!43039 lt!2084760))) lt!2084823)))

(declare-fun b!5043581 () Bool)

(assert (=> b!5043581 (= e!3149527 (or (not (= (list!18927 (right!43039 lt!2084760)) Nil!58308)) (= lt!2084823 (list!18927 (left!42709 lt!2084760)))))))

(assert (= (and d!1623026 c!864402) b!5043578))

(assert (= (and d!1623026 (not c!864402)) b!5043579))

(assert (= (and d!1623026 res!2148547) b!5043580))

(assert (= (and b!5043580 res!2148546) b!5043581))

(declare-fun m!6078202 () Bool)

(assert (=> b!5043580 m!6078202))

(assert (=> b!5043580 m!6077964))

(declare-fun m!6078204 () Bool)

(assert (=> b!5043580 m!6078204))

(assert (=> b!5043580 m!6077966))

(declare-fun m!6078206 () Bool)

(assert (=> b!5043580 m!6078206))

(assert (=> b!5043579 m!6077966))

(declare-fun m!6078208 () Bool)

(assert (=> b!5043579 m!6078208))

(declare-fun m!6078210 () Bool)

(assert (=> d!1623026 m!6078210))

(assert (=> d!1623026 m!6077964))

(declare-fun m!6078212 () Bool)

(assert (=> d!1623026 m!6078212))

(assert (=> d!1623026 m!6077966))

(declare-fun m!6078214 () Bool)

(assert (=> d!1623026 m!6078214))

(assert (=> b!5043277 d!1623026))

(declare-fun b!5043585 () Bool)

(declare-fun e!3149530 () List!58432)

(assert (=> b!5043585 (= e!3149530 (++!12733 (list!18927 (left!42709 (left!42709 lt!2084760))) (list!18927 (right!43039 (left!42709 lt!2084760)))))))

(declare-fun b!5043582 () Bool)

(declare-fun e!3149529 () List!58432)

(assert (=> b!5043582 (= e!3149529 Nil!58308)))

(declare-fun b!5043583 () Bool)

(assert (=> b!5043583 (= e!3149529 e!3149530)))

(declare-fun c!864404 () Bool)

(assert (=> b!5043583 (= c!864404 ((_ is Leaf!25744) (left!42709 lt!2084760)))))

(declare-fun b!5043584 () Bool)

(assert (=> b!5043584 (= e!3149530 (list!18926 (xs!18846 (left!42709 lt!2084760))))))

(declare-fun d!1623028 () Bool)

(declare-fun c!864403 () Bool)

(assert (=> d!1623028 (= c!864403 ((_ is Empty!15520) (left!42709 lt!2084760)))))

(assert (=> d!1623028 (= (list!18927 (left!42709 lt!2084760)) e!3149529)))

(assert (= (and d!1623028 c!864403) b!5043582))

(assert (= (and d!1623028 (not c!864403)) b!5043583))

(assert (= (and b!5043583 c!864404) b!5043584))

(assert (= (and b!5043583 (not c!864404)) b!5043585))

(declare-fun m!6078216 () Bool)

(assert (=> b!5043585 m!6078216))

(declare-fun m!6078218 () Bool)

(assert (=> b!5043585 m!6078218))

(assert (=> b!5043585 m!6078216))

(assert (=> b!5043585 m!6078218))

(declare-fun m!6078220 () Bool)

(assert (=> b!5043585 m!6078220))

(declare-fun m!6078222 () Bool)

(assert (=> b!5043584 m!6078222))

(assert (=> b!5043277 d!1623028))

(declare-fun b!5043589 () Bool)

(declare-fun e!3149532 () List!58432)

(assert (=> b!5043589 (= e!3149532 (++!12733 (list!18927 (left!42709 (right!43039 lt!2084760))) (list!18927 (right!43039 (right!43039 lt!2084760)))))))

(declare-fun b!5043586 () Bool)

(declare-fun e!3149531 () List!58432)

(assert (=> b!5043586 (= e!3149531 Nil!58308)))

(declare-fun b!5043587 () Bool)

(assert (=> b!5043587 (= e!3149531 e!3149532)))

(declare-fun c!864406 () Bool)

(assert (=> b!5043587 (= c!864406 ((_ is Leaf!25744) (right!43039 lt!2084760)))))

(declare-fun b!5043588 () Bool)

(assert (=> b!5043588 (= e!3149532 (list!18926 (xs!18846 (right!43039 lt!2084760))))))

(declare-fun d!1623030 () Bool)

(declare-fun c!864405 () Bool)

(assert (=> d!1623030 (= c!864405 ((_ is Empty!15520) (right!43039 lt!2084760)))))

(assert (=> d!1623030 (= (list!18927 (right!43039 lt!2084760)) e!3149531)))

(assert (= (and d!1623030 c!864405) b!5043586))

(assert (= (and d!1623030 (not c!864405)) b!5043587))

(assert (= (and b!5043587 c!864406) b!5043588))

(assert (= (and b!5043587 (not c!864406)) b!5043589))

(declare-fun m!6078224 () Bool)

(assert (=> b!5043589 m!6078224))

(declare-fun m!6078226 () Bool)

(assert (=> b!5043589 m!6078226))

(assert (=> b!5043589 m!6078224))

(assert (=> b!5043589 m!6078226))

(declare-fun m!6078228 () Bool)

(assert (=> b!5043589 m!6078228))

(declare-fun m!6078230 () Bool)

(assert (=> b!5043588 m!6078230))

(assert (=> b!5043277 d!1623030))

(declare-fun d!1623032 () Bool)

(declare-fun c!864407 () Bool)

(assert (=> d!1623032 (= c!864407 ((_ is Node!15520) (left!42709 (left!42709 t!4198))))))

(declare-fun e!3149533 () Bool)

(assert (=> d!1623032 (= (inv!77195 (left!42709 (left!42709 t!4198))) e!3149533)))

(declare-fun b!5043590 () Bool)

(assert (=> b!5043590 (= e!3149533 (inv!77196 (left!42709 (left!42709 t!4198))))))

(declare-fun b!5043591 () Bool)

(declare-fun e!3149534 () Bool)

(assert (=> b!5043591 (= e!3149533 e!3149534)))

(declare-fun res!2148548 () Bool)

(assert (=> b!5043591 (= res!2148548 (not ((_ is Leaf!25744) (left!42709 (left!42709 t!4198)))))))

(assert (=> b!5043591 (=> res!2148548 e!3149534)))

(declare-fun b!5043592 () Bool)

(assert (=> b!5043592 (= e!3149534 (inv!77197 (left!42709 (left!42709 t!4198))))))

(assert (= (and d!1623032 c!864407) b!5043590))

(assert (= (and d!1623032 (not c!864407)) b!5043591))

(assert (= (and b!5043591 (not res!2148548)) b!5043592))

(declare-fun m!6078232 () Bool)

(assert (=> b!5043590 m!6078232))

(declare-fun m!6078234 () Bool)

(assert (=> b!5043592 m!6078234))

(assert (=> b!5043564 d!1623032))

(declare-fun d!1623034 () Bool)

(declare-fun c!864408 () Bool)

(assert (=> d!1623034 (= c!864408 ((_ is Node!15520) (right!43039 (left!42709 t!4198))))))

(declare-fun e!3149535 () Bool)

(assert (=> d!1623034 (= (inv!77195 (right!43039 (left!42709 t!4198))) e!3149535)))

(declare-fun b!5043593 () Bool)

(assert (=> b!5043593 (= e!3149535 (inv!77196 (right!43039 (left!42709 t!4198))))))

(declare-fun b!5043594 () Bool)

(declare-fun e!3149536 () Bool)

(assert (=> b!5043594 (= e!3149535 e!3149536)))

(declare-fun res!2148549 () Bool)

(assert (=> b!5043594 (= res!2148549 (not ((_ is Leaf!25744) (right!43039 (left!42709 t!4198)))))))

(assert (=> b!5043594 (=> res!2148549 e!3149536)))

(declare-fun b!5043595 () Bool)

(assert (=> b!5043595 (= e!3149536 (inv!77197 (right!43039 (left!42709 t!4198))))))

(assert (= (and d!1623034 c!864408) b!5043593))

(assert (= (and d!1623034 (not c!864408)) b!5043594))

(assert (= (and b!5043594 (not res!2148549)) b!5043595))

(declare-fun m!6078236 () Bool)

(assert (=> b!5043593 m!6078236))

(declare-fun m!6078238 () Bool)

(assert (=> b!5043595 m!6078238))

(assert (=> b!5043564 d!1623034))

(declare-fun d!1623036 () Bool)

(declare-fun lt!2084824 () Int)

(assert (=> d!1623036 (>= lt!2084824 0)))

(declare-fun e!3149537 () Int)

(assert (=> d!1623036 (= lt!2084824 e!3149537)))

(declare-fun c!864409 () Bool)

(assert (=> d!1623036 (= c!864409 ((_ is Nil!58308) (list!18927 t!4198)))))

(assert (=> d!1623036 (= (size!38919 (list!18927 t!4198)) lt!2084824)))

(declare-fun b!5043596 () Bool)

(assert (=> b!5043596 (= e!3149537 0)))

(declare-fun b!5043597 () Bool)

(assert (=> b!5043597 (= e!3149537 (+ 1 (size!38919 (t!371009 (list!18927 t!4198)))))))

(assert (= (and d!1623036 c!864409) b!5043596))

(assert (= (and d!1623036 (not c!864409)) b!5043597))

(declare-fun m!6078240 () Bool)

(assert (=> b!5043597 m!6078240))

(assert (=> d!1622948 d!1623036))

(assert (=> d!1622948 d!1622962))

(declare-fun d!1623038 () Bool)

(declare-fun lt!2084827 () Bool)

(declare-fun isEmpty!31547 (List!58432) Bool)

(assert (=> d!1623038 (= lt!2084827 (isEmpty!31547 (list!18927 (right!43039 lt!2084762))))))

(assert (=> d!1623038 (= lt!2084827 (= (size!38918 (right!43039 lt!2084762)) 0))))

(assert (=> d!1623038 (= (isEmpty!31546 (right!43039 lt!2084762)) lt!2084827)))

(declare-fun bs!1189049 () Bool)

(assert (= bs!1189049 d!1623038))

(assert (=> bs!1189049 m!6077958))

(assert (=> bs!1189049 m!6077958))

(declare-fun m!6078242 () Bool)

(assert (=> bs!1189049 m!6078242))

(declare-fun m!6078244 () Bool)

(assert (=> bs!1189049 m!6078244))

(assert (=> b!5043441 d!1623038))

(declare-fun d!1623040 () Bool)

(declare-fun c!864412 () Bool)

(assert (=> d!1623040 (= c!864412 ((_ is Nil!58308) lt!2084817))))

(declare-fun e!3149540 () (InoxSet T!104236))

(assert (=> d!1623040 (= (content!10361 lt!2084817) e!3149540)))

(declare-fun b!5043602 () Bool)

(assert (=> b!5043602 (= e!3149540 ((as const (Array T!104236 Bool)) false))))

(declare-fun b!5043603 () Bool)

(assert (=> b!5043603 (= e!3149540 ((_ map or) (store ((as const (Array T!104236 Bool)) false) (h!64756 lt!2084817) true) (content!10361 (t!371009 lt!2084817))))))

(assert (= (and d!1623040 c!864412) b!5043602))

(assert (= (and d!1623040 (not c!864412)) b!5043603))

(declare-fun m!6078246 () Bool)

(assert (=> b!5043603 m!6078246))

(declare-fun m!6078248 () Bool)

(assert (=> b!5043603 m!6078248))

(assert (=> d!1623020 d!1623040))

(declare-fun d!1623042 () Bool)

(declare-fun c!864413 () Bool)

(assert (=> d!1623042 (= c!864413 ((_ is Nil!58308) lt!2084761))))

(declare-fun e!3149541 () (InoxSet T!104236))

(assert (=> d!1623042 (= (content!10361 lt!2084761) e!3149541)))

(declare-fun b!5043604 () Bool)

(assert (=> b!5043604 (= e!3149541 ((as const (Array T!104236 Bool)) false))))

(declare-fun b!5043605 () Bool)

(assert (=> b!5043605 (= e!3149541 ((_ map or) (store ((as const (Array T!104236 Bool)) false) (h!64756 lt!2084761) true) (content!10361 (t!371009 lt!2084761))))))

(assert (= (and d!1623042 c!864413) b!5043604))

(assert (= (and d!1623042 (not c!864413)) b!5043605))

(declare-fun m!6078250 () Bool)

(assert (=> b!5043605 m!6078250))

(declare-fun m!6078252 () Bool)

(assert (=> b!5043605 m!6078252))

(assert (=> d!1623020 d!1623042))

(declare-fun b!5043606 () Bool)

(declare-fun e!3149542 () Bool)

(assert (=> b!5043606 (= e!3149542 (not (isEmpty!31546 (right!43039 (right!43039 lt!2084760)))))))

(declare-fun b!5043607 () Bool)

(declare-fun res!2148554 () Bool)

(assert (=> b!5043607 (=> (not res!2148554) (not e!3149542))))

(assert (=> b!5043607 (= res!2148554 (isBalanced!4382 (left!42709 (right!43039 lt!2084760))))))

(declare-fun d!1623044 () Bool)

(declare-fun res!2148550 () Bool)

(declare-fun e!3149543 () Bool)

(assert (=> d!1623044 (=> res!2148550 e!3149543)))

(assert (=> d!1623044 (= res!2148550 (not ((_ is Node!15520) (right!43039 lt!2084760))))))

(assert (=> d!1623044 (= (isBalanced!4382 (right!43039 lt!2084760)) e!3149543)))

(declare-fun b!5043608 () Bool)

(declare-fun res!2148555 () Bool)

(assert (=> b!5043608 (=> (not res!2148555) (not e!3149542))))

(assert (=> b!5043608 (= res!2148555 (<= (- (height!2099 (left!42709 (right!43039 lt!2084760))) (height!2099 (right!43039 (right!43039 lt!2084760)))) 1))))

(declare-fun b!5043609 () Bool)

(declare-fun res!2148551 () Bool)

(assert (=> b!5043609 (=> (not res!2148551) (not e!3149542))))

(assert (=> b!5043609 (= res!2148551 (isBalanced!4382 (right!43039 (right!43039 lt!2084760))))))

(declare-fun b!5043610 () Bool)

(assert (=> b!5043610 (= e!3149543 e!3149542)))

(declare-fun res!2148552 () Bool)

(assert (=> b!5043610 (=> (not res!2148552) (not e!3149542))))

(assert (=> b!5043610 (= res!2148552 (<= (- 1) (- (height!2099 (left!42709 (right!43039 lt!2084760))) (height!2099 (right!43039 (right!43039 lt!2084760))))))))

(declare-fun b!5043611 () Bool)

(declare-fun res!2148553 () Bool)

(assert (=> b!5043611 (=> (not res!2148553) (not e!3149542))))

(assert (=> b!5043611 (= res!2148553 (not (isEmpty!31546 (left!42709 (right!43039 lt!2084760)))))))

(assert (= (and d!1623044 (not res!2148550)) b!5043610))

(assert (= (and b!5043610 res!2148552) b!5043608))

(assert (= (and b!5043608 res!2148555) b!5043607))

(assert (= (and b!5043607 res!2148554) b!5043609))

(assert (= (and b!5043609 res!2148551) b!5043611))

(assert (= (and b!5043611 res!2148553) b!5043606))

(declare-fun m!6078254 () Bool)

(assert (=> b!5043610 m!6078254))

(declare-fun m!6078256 () Bool)

(assert (=> b!5043610 m!6078256))

(declare-fun m!6078258 () Bool)

(assert (=> b!5043609 m!6078258))

(declare-fun m!6078260 () Bool)

(assert (=> b!5043607 m!6078260))

(declare-fun m!6078262 () Bool)

(assert (=> b!5043611 m!6078262))

(assert (=> b!5043608 m!6078254))

(assert (=> b!5043608 m!6078256))

(declare-fun m!6078264 () Bool)

(assert (=> b!5043606 m!6078264))

(assert (=> b!5043378 d!1623044))

(declare-fun d!1623046 () Bool)

(declare-fun lt!2084828 () Int)

(assert (=> d!1623046 (>= lt!2084828 0)))

(declare-fun e!3149544 () Int)

(assert (=> d!1623046 (= lt!2084828 e!3149544)))

(declare-fun c!864414 () Bool)

(assert (=> d!1623046 (= c!864414 ((_ is Nil!58308) (innerList!15608 (xs!18846 t!4198))))))

(assert (=> d!1623046 (= (size!38919 (innerList!15608 (xs!18846 t!4198))) lt!2084828)))

(declare-fun b!5043612 () Bool)

(assert (=> b!5043612 (= e!3149544 0)))

(declare-fun b!5043613 () Bool)

(assert (=> b!5043613 (= e!3149544 (+ 1 (size!38919 (t!371009 (innerList!15608 (xs!18846 t!4198))))))))

(assert (= (and d!1623046 c!864414) b!5043612))

(assert (= (and d!1623046 (not c!864414)) b!5043613))

(declare-fun m!6078266 () Bool)

(assert (=> b!5043613 m!6078266))

(assert (=> d!1622936 d!1623046))

(declare-fun d!1623048 () Bool)

(assert (=> d!1623048 (= (height!2099 (left!42709 lt!2084762)) (ite ((_ is Empty!15520) (left!42709 lt!2084762)) 0 (ite ((_ is Leaf!25744) (left!42709 lt!2084762)) 1 (cheight!15731 (left!42709 lt!2084762)))))))

(assert (=> b!5043443 d!1623048))

(declare-fun d!1623050 () Bool)

(assert (=> d!1623050 (= (height!2099 (right!43039 lt!2084762)) (ite ((_ is Empty!15520) (right!43039 lt!2084762)) 0 (ite ((_ is Leaf!25744) (right!43039 lt!2084762)) 1 (cheight!15731 (right!43039 lt!2084762)))))))

(assert (=> b!5043443 d!1623050))

(declare-fun d!1623052 () Bool)

(assert (=> d!1623052 (= (list!18926 (xs!18846 lt!2084762)) (innerList!15608 (xs!18846 lt!2084762)))))

(assert (=> b!5043272 d!1623052))

(declare-fun b!5043614 () Bool)

(declare-fun e!3149547 () tuple2!63250)

(assert (=> b!5043614 (= e!3149547 (tuple2!63251 Nil!58308 (t!371009 lt!2084761)))))

(declare-fun d!1623054 () Bool)

(declare-fun e!3149545 () Bool)

(assert (=> d!1623054 e!3149545))

(declare-fun res!2148557 () Bool)

(assert (=> d!1623054 (=> (not res!2148557) (not e!3149545))))

(declare-fun lt!2084829 () tuple2!63250)

(assert (=> d!1623054 (= res!2148557 (= (++!12733 (_1!34928 lt!2084829) (_2!34928 lt!2084829)) (t!371009 lt!2084761)))))

(declare-fun e!3149546 () tuple2!63250)

(assert (=> d!1623054 (= lt!2084829 e!3149546)))

(declare-fun c!864416 () Bool)

(assert (=> d!1623054 (= c!864416 ((_ is Nil!58308) (t!371009 lt!2084761)))))

(assert (=> d!1623054 (= (splitAtIndex!215 (t!371009 lt!2084761) (- i!618 1)) lt!2084829)))

(declare-fun b!5043615 () Bool)

(assert (=> b!5043615 (= e!3149546 e!3149547)))

(declare-fun c!864415 () Bool)

(assert (=> b!5043615 (= c!864415 (<= (- i!618 1) 0))))

(declare-fun b!5043616 () Bool)

(assert (=> b!5043616 (= e!3149546 (tuple2!63251 Nil!58308 Nil!58308))))

(declare-fun b!5043617 () Bool)

(declare-fun res!2148556 () Bool)

(assert (=> b!5043617 (=> (not res!2148556) (not e!3149545))))

(assert (=> b!5043617 (= res!2148556 (= (_1!34928 lt!2084829) (take!831 (t!371009 lt!2084761) (- i!618 1))))))

(declare-fun b!5043618 () Bool)

(declare-fun lt!2084830 () tuple2!63250)

(assert (=> b!5043618 (= lt!2084830 (splitAtIndex!215 (t!371009 (t!371009 lt!2084761)) (- (- i!618 1) 1)))))

(assert (=> b!5043618 (= e!3149547 (tuple2!63251 (Cons!58308 (h!64756 (t!371009 lt!2084761)) (_1!34928 lt!2084830)) (_2!34928 lt!2084830)))))

(declare-fun b!5043619 () Bool)

(assert (=> b!5043619 (= e!3149545 (= (_2!34928 lt!2084829) (drop!2638 (t!371009 lt!2084761) (- i!618 1))))))

(assert (= (and d!1623054 c!864416) b!5043616))

(assert (= (and d!1623054 (not c!864416)) b!5043615))

(assert (= (and b!5043615 c!864415) b!5043614))

(assert (= (and b!5043615 (not c!864415)) b!5043618))

(assert (= (and d!1623054 res!2148557) b!5043617))

(assert (= (and b!5043617 res!2148556) b!5043619))

(declare-fun m!6078268 () Bool)

(assert (=> d!1623054 m!6078268))

(assert (=> b!5043617 m!6078088))

(declare-fun m!6078270 () Bool)

(assert (=> b!5043618 m!6078270))

(assert (=> b!5043619 m!6078182))

(assert (=> b!5043439 d!1623054))

(declare-fun b!5043620 () Bool)

(declare-fun e!3149548 () Bool)

(assert (=> b!5043620 (= e!3149548 (not (isEmpty!31546 (right!43039 (left!42709 lt!2084760)))))))

(declare-fun b!5043621 () Bool)

(declare-fun res!2148562 () Bool)

(assert (=> b!5043621 (=> (not res!2148562) (not e!3149548))))

(assert (=> b!5043621 (= res!2148562 (isBalanced!4382 (left!42709 (left!42709 lt!2084760))))))

(declare-fun d!1623056 () Bool)

(declare-fun res!2148558 () Bool)

(declare-fun e!3149549 () Bool)

(assert (=> d!1623056 (=> res!2148558 e!3149549)))

(assert (=> d!1623056 (= res!2148558 (not ((_ is Node!15520) (left!42709 lt!2084760))))))

(assert (=> d!1623056 (= (isBalanced!4382 (left!42709 lt!2084760)) e!3149549)))

(declare-fun b!5043622 () Bool)

(declare-fun res!2148563 () Bool)

(assert (=> b!5043622 (=> (not res!2148563) (not e!3149548))))

(assert (=> b!5043622 (= res!2148563 (<= (- (height!2099 (left!42709 (left!42709 lt!2084760))) (height!2099 (right!43039 (left!42709 lt!2084760)))) 1))))

(declare-fun b!5043623 () Bool)

(declare-fun res!2148559 () Bool)

(assert (=> b!5043623 (=> (not res!2148559) (not e!3149548))))

(assert (=> b!5043623 (= res!2148559 (isBalanced!4382 (right!43039 (left!42709 lt!2084760))))))

(declare-fun b!5043624 () Bool)

(assert (=> b!5043624 (= e!3149549 e!3149548)))

(declare-fun res!2148560 () Bool)

(assert (=> b!5043624 (=> (not res!2148560) (not e!3149548))))

(assert (=> b!5043624 (= res!2148560 (<= (- 1) (- (height!2099 (left!42709 (left!42709 lt!2084760))) (height!2099 (right!43039 (left!42709 lt!2084760))))))))

(declare-fun b!5043625 () Bool)

(declare-fun res!2148561 () Bool)

(assert (=> b!5043625 (=> (not res!2148561) (not e!3149548))))

(assert (=> b!5043625 (= res!2148561 (not (isEmpty!31546 (left!42709 (left!42709 lt!2084760)))))))

(assert (= (and d!1623056 (not res!2148558)) b!5043624))

(assert (= (and b!5043624 res!2148560) b!5043622))

(assert (= (and b!5043622 res!2148563) b!5043621))

(assert (= (and b!5043621 res!2148562) b!5043623))

(assert (= (and b!5043623 res!2148559) b!5043625))

(assert (= (and b!5043625 res!2148561) b!5043620))

(declare-fun m!6078272 () Bool)

(assert (=> b!5043624 m!6078272))

(declare-fun m!6078274 () Bool)

(assert (=> b!5043624 m!6078274))

(declare-fun m!6078276 () Bool)

(assert (=> b!5043623 m!6078276))

(declare-fun m!6078278 () Bool)

(assert (=> b!5043621 m!6078278))

(declare-fun m!6078280 () Bool)

(assert (=> b!5043625 m!6078280))

(assert (=> b!5043622 m!6078272))

(assert (=> b!5043622 m!6078274))

(declare-fun m!6078282 () Bool)

(assert (=> b!5043620 m!6078282))

(assert (=> b!5043376 d!1623056))

(declare-fun d!1623058 () Bool)

(declare-fun c!864417 () Bool)

(assert (=> d!1623058 (= c!864417 ((_ is Nil!58308) lt!2084801))))

(declare-fun e!3149550 () (InoxSet T!104236))

(assert (=> d!1623058 (= (content!10361 lt!2084801) e!3149550)))

(declare-fun b!5043626 () Bool)

(assert (=> b!5043626 (= e!3149550 ((as const (Array T!104236 Bool)) false))))

(declare-fun b!5043627 () Bool)

(assert (=> b!5043627 (= e!3149550 ((_ map or) (store ((as const (Array T!104236 Bool)) false) (h!64756 lt!2084801) true) (content!10361 (t!371009 lt!2084801))))))

(assert (= (and d!1623058 c!864417) b!5043626))

(assert (= (and d!1623058 (not c!864417)) b!5043627))

(declare-fun m!6078284 () Bool)

(assert (=> b!5043627 m!6078284))

(declare-fun m!6078286 () Bool)

(assert (=> b!5043627 m!6078286))

(assert (=> d!1622984 d!1623058))

(assert (=> d!1622984 d!1623042))

(declare-fun b!5043630 () Bool)

(declare-fun res!2148564 () Bool)

(declare-fun e!3149551 () Bool)

(assert (=> b!5043630 (=> (not res!2148564) (not e!3149551))))

(declare-fun lt!2084831 () List!58432)

(assert (=> b!5043630 (= res!2148564 (= (size!38919 lt!2084831) (+ (size!38919 (list!18927 (left!42709 t!4198))) (size!38919 (list!18927 (right!43039 t!4198))))))))

(declare-fun b!5043629 () Bool)

(declare-fun e!3149552 () List!58432)

(assert (=> b!5043629 (= e!3149552 (Cons!58308 (h!64756 (list!18927 (left!42709 t!4198))) (++!12733 (t!371009 (list!18927 (left!42709 t!4198))) (list!18927 (right!43039 t!4198)))))))

(declare-fun b!5043628 () Bool)

(assert (=> b!5043628 (= e!3149552 (list!18927 (right!43039 t!4198)))))

(declare-fun d!1623060 () Bool)

(assert (=> d!1623060 e!3149551))

(declare-fun res!2148565 () Bool)

(assert (=> d!1623060 (=> (not res!2148565) (not e!3149551))))

(assert (=> d!1623060 (= res!2148565 (= (content!10361 lt!2084831) ((_ map or) (content!10361 (list!18927 (left!42709 t!4198))) (content!10361 (list!18927 (right!43039 t!4198))))))))

(assert (=> d!1623060 (= lt!2084831 e!3149552)))

(declare-fun c!864418 () Bool)

(assert (=> d!1623060 (= c!864418 ((_ is Nil!58308) (list!18927 (left!42709 t!4198))))))

(assert (=> d!1623060 (= (++!12733 (list!18927 (left!42709 t!4198)) (list!18927 (right!43039 t!4198))) lt!2084831)))

(declare-fun b!5043631 () Bool)

(assert (=> b!5043631 (= e!3149551 (or (not (= (list!18927 (right!43039 t!4198)) Nil!58308)) (= lt!2084831 (list!18927 (left!42709 t!4198)))))))

(assert (= (and d!1623060 c!864418) b!5043628))

(assert (= (and d!1623060 (not c!864418)) b!5043629))

(assert (= (and d!1623060 res!2148565) b!5043630))

(assert (= (and b!5043630 res!2148564) b!5043631))

(declare-fun m!6078288 () Bool)

(assert (=> b!5043630 m!6078288))

(assert (=> b!5043630 m!6077984))

(declare-fun m!6078290 () Bool)

(assert (=> b!5043630 m!6078290))

(assert (=> b!5043630 m!6077986))

(declare-fun m!6078292 () Bool)

(assert (=> b!5043630 m!6078292))

(assert (=> b!5043629 m!6077986))

(declare-fun m!6078294 () Bool)

(assert (=> b!5043629 m!6078294))

(declare-fun m!6078296 () Bool)

(assert (=> d!1623060 m!6078296))

(assert (=> d!1623060 m!6077984))

(declare-fun m!6078298 () Bool)

(assert (=> d!1623060 m!6078298))

(assert (=> d!1623060 m!6077986))

(declare-fun m!6078300 () Bool)

(assert (=> d!1623060 m!6078300))

(assert (=> b!5043317 d!1623060))

(declare-fun b!5043635 () Bool)

(declare-fun e!3149554 () List!58432)

(assert (=> b!5043635 (= e!3149554 (++!12733 (list!18927 (left!42709 (left!42709 t!4198))) (list!18927 (right!43039 (left!42709 t!4198)))))))

(declare-fun b!5043632 () Bool)

(declare-fun e!3149553 () List!58432)

(assert (=> b!5043632 (= e!3149553 Nil!58308)))

(declare-fun b!5043633 () Bool)

(assert (=> b!5043633 (= e!3149553 e!3149554)))

(declare-fun c!864420 () Bool)

(assert (=> b!5043633 (= c!864420 ((_ is Leaf!25744) (left!42709 t!4198)))))

(declare-fun b!5043634 () Bool)

(assert (=> b!5043634 (= e!3149554 (list!18926 (xs!18846 (left!42709 t!4198))))))

(declare-fun d!1623062 () Bool)

(declare-fun c!864419 () Bool)

(assert (=> d!1623062 (= c!864419 ((_ is Empty!15520) (left!42709 t!4198)))))

(assert (=> d!1623062 (= (list!18927 (left!42709 t!4198)) e!3149553)))

(assert (= (and d!1623062 c!864419) b!5043632))

(assert (= (and d!1623062 (not c!864419)) b!5043633))

(assert (= (and b!5043633 c!864420) b!5043634))

(assert (= (and b!5043633 (not c!864420)) b!5043635))

(declare-fun m!6078302 () Bool)

(assert (=> b!5043635 m!6078302))

(declare-fun m!6078304 () Bool)

(assert (=> b!5043635 m!6078304))

(assert (=> b!5043635 m!6078302))

(assert (=> b!5043635 m!6078304))

(declare-fun m!6078306 () Bool)

(assert (=> b!5043635 m!6078306))

(declare-fun m!6078308 () Bool)

(assert (=> b!5043634 m!6078308))

(assert (=> b!5043317 d!1623062))

(declare-fun b!5043639 () Bool)

(declare-fun e!3149556 () List!58432)

(assert (=> b!5043639 (= e!3149556 (++!12733 (list!18927 (left!42709 (right!43039 t!4198))) (list!18927 (right!43039 (right!43039 t!4198)))))))

(declare-fun b!5043636 () Bool)

(declare-fun e!3149555 () List!58432)

(assert (=> b!5043636 (= e!3149555 Nil!58308)))

(declare-fun b!5043637 () Bool)

(assert (=> b!5043637 (= e!3149555 e!3149556)))

(declare-fun c!864422 () Bool)

(assert (=> b!5043637 (= c!864422 ((_ is Leaf!25744) (right!43039 t!4198)))))

(declare-fun b!5043638 () Bool)

(assert (=> b!5043638 (= e!3149556 (list!18926 (xs!18846 (right!43039 t!4198))))))

(declare-fun d!1623064 () Bool)

(declare-fun c!864421 () Bool)

(assert (=> d!1623064 (= c!864421 ((_ is Empty!15520) (right!43039 t!4198)))))

(assert (=> d!1623064 (= (list!18927 (right!43039 t!4198)) e!3149555)))

(assert (= (and d!1623064 c!864421) b!5043636))

(assert (= (and d!1623064 (not c!864421)) b!5043637))

(assert (= (and b!5043637 c!864422) b!5043638))

(assert (= (and b!5043637 (not c!864422)) b!5043639))

(declare-fun m!6078310 () Bool)

(assert (=> b!5043639 m!6078310))

(declare-fun m!6078312 () Bool)

(assert (=> b!5043639 m!6078312))

(assert (=> b!5043639 m!6078310))

(assert (=> b!5043639 m!6078312))

(declare-fun m!6078314 () Bool)

(assert (=> b!5043639 m!6078314))

(declare-fun m!6078316 () Bool)

(assert (=> b!5043638 m!6078316))

(assert (=> b!5043317 d!1623064))

(declare-fun d!1623066 () Bool)

(declare-fun lt!2084832 () Bool)

(assert (=> d!1623066 (= lt!2084832 (isEmpty!31547 (list!18927 (right!43039 t!4198))))))

(assert (=> d!1623066 (= lt!2084832 (= (size!38918 (right!43039 t!4198)) 0))))

(assert (=> d!1623066 (= (isEmpty!31546 (right!43039 t!4198)) lt!2084832)))

(declare-fun bs!1189050 () Bool)

(assert (= bs!1189050 d!1623066))

(assert (=> bs!1189050 m!6077986))

(assert (=> bs!1189050 m!6077986))

(declare-fun m!6078318 () Bool)

(assert (=> bs!1189050 m!6078318))

(declare-fun m!6078320 () Bool)

(assert (=> bs!1189050 m!6078320))

(assert (=> b!5043348 d!1623066))

(declare-fun d!1623068 () Bool)

(declare-fun lt!2084833 () Bool)

(assert (=> d!1623068 (= lt!2084833 (isEmpty!31547 (list!18927 (left!42709 lt!2084762))))))

(assert (=> d!1623068 (= lt!2084833 (= (size!38918 (left!42709 lt!2084762)) 0))))

(assert (=> d!1623068 (= (isEmpty!31546 (left!42709 lt!2084762)) lt!2084833)))

(declare-fun bs!1189051 () Bool)

(assert (= bs!1189051 d!1623068))

(assert (=> bs!1189051 m!6077956))

(assert (=> bs!1189051 m!6077956))

(declare-fun m!6078322 () Bool)

(assert (=> bs!1189051 m!6078322))

(declare-fun m!6078324 () Bool)

(assert (=> bs!1189051 m!6078324))

(assert (=> b!5043446 d!1623068))

(declare-fun d!1623070 () Bool)

(declare-fun lt!2084834 () Int)

(assert (=> d!1623070 (>= lt!2084834 0)))

(declare-fun e!3149557 () Int)

(assert (=> d!1623070 (= lt!2084834 e!3149557)))

(declare-fun c!864423 () Bool)

(assert (=> d!1623070 (= c!864423 ((_ is Nil!58308) lt!2084817))))

(assert (=> d!1623070 (= (size!38919 lt!2084817) lt!2084834)))

(declare-fun b!5043640 () Bool)

(assert (=> b!5043640 (= e!3149557 0)))

(declare-fun b!5043641 () Bool)

(assert (=> b!5043641 (= e!3149557 (+ 1 (size!38919 (t!371009 lt!2084817))))))

(assert (= (and d!1623070 c!864423) b!5043640))

(assert (= (and d!1623070 (not c!864423)) b!5043641))

(declare-fun m!6078326 () Bool)

(assert (=> b!5043641 m!6078326))

(assert (=> b!5043535 d!1623070))

(declare-fun d!1623072 () Bool)

(declare-fun res!2148572 () Bool)

(declare-fun e!3149560 () Bool)

(assert (=> d!1623072 (=> (not res!2148572) (not e!3149560))))

(assert (=> d!1623072 (= res!2148572 (= (csize!31270 t!4198) (+ (size!38918 (left!42709 t!4198)) (size!38918 (right!43039 t!4198)))))))

(assert (=> d!1623072 (= (inv!77196 t!4198) e!3149560)))

(declare-fun b!5043648 () Bool)

(declare-fun res!2148573 () Bool)

(assert (=> b!5043648 (=> (not res!2148573) (not e!3149560))))

(assert (=> b!5043648 (= res!2148573 (and (not (= (left!42709 t!4198) Empty!15520)) (not (= (right!43039 t!4198) Empty!15520))))))

(declare-fun b!5043649 () Bool)

(declare-fun res!2148574 () Bool)

(assert (=> b!5043649 (=> (not res!2148574) (not e!3149560))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5043649 (= res!2148574 (= (cheight!15731 t!4198) (+ (max!0 (height!2099 (left!42709 t!4198)) (height!2099 (right!43039 t!4198))) 1)))))

(declare-fun b!5043650 () Bool)

(assert (=> b!5043650 (= e!3149560 (<= 0 (cheight!15731 t!4198)))))

(assert (= (and d!1623072 res!2148572) b!5043648))

(assert (= (and b!5043648 res!2148573) b!5043649))

(assert (= (and b!5043649 res!2148574) b!5043650))

(declare-fun m!6078328 () Bool)

(assert (=> d!1623072 m!6078328))

(assert (=> d!1623072 m!6078320))

(assert (=> b!5043649 m!6078002))

(assert (=> b!5043649 m!6078004))

(assert (=> b!5043649 m!6078002))

(assert (=> b!5043649 m!6078004))

(declare-fun m!6078330 () Bool)

(assert (=> b!5043649 m!6078330))

(assert (=> b!5043372 d!1623072))

(declare-fun d!1623074 () Bool)

(assert (=> d!1623074 (= (inv!77194 (xs!18846 (right!43039 t!4198))) (<= (size!38919 (innerList!15608 (xs!18846 (right!43039 t!4198)))) 2147483647))))

(declare-fun bs!1189052 () Bool)

(assert (= bs!1189052 d!1623074))

(declare-fun m!6078332 () Bool)

(assert (=> bs!1189052 m!6078332))

(assert (=> b!5043568 d!1623074))

(declare-fun d!1623076 () Bool)

(declare-fun lt!2084835 () Int)

(assert (=> d!1623076 (>= lt!2084835 0)))

(declare-fun e!3149561 () Int)

(assert (=> d!1623076 (= lt!2084835 e!3149561)))

(declare-fun c!864424 () Bool)

(assert (=> d!1623076 (= c!864424 ((_ is Nil!58308) (t!371009 lt!2084761)))))

(assert (=> d!1623076 (= (size!38919 (t!371009 lt!2084761)) lt!2084835)))

(declare-fun b!5043651 () Bool)

(assert (=> b!5043651 (= e!3149561 0)))

(declare-fun b!5043652 () Bool)

(assert (=> b!5043652 (= e!3149561 (+ 1 (size!38919 (t!371009 (t!371009 lt!2084761)))))))

(assert (= (and d!1623076 c!864424) b!5043651))

(assert (= (and d!1623076 (not c!864424)) b!5043652))

(declare-fun m!6078334 () Bool)

(assert (=> b!5043652 m!6078334))

(assert (=> b!5043237 d!1623076))

(declare-fun b!5043655 () Bool)

(declare-fun res!2148575 () Bool)

(declare-fun e!3149562 () Bool)

(assert (=> b!5043655 (=> (not res!2148575) (not e!3149562))))

(declare-fun lt!2084836 () List!58432)

(assert (=> b!5043655 (= res!2148575 (= (size!38919 lt!2084836) (+ (size!38919 (_1!34928 lt!2084803)) (size!38919 (_2!34928 lt!2084803)))))))

(declare-fun b!5043654 () Bool)

(declare-fun e!3149563 () List!58432)

(assert (=> b!5043654 (= e!3149563 (Cons!58308 (h!64756 (_1!34928 lt!2084803)) (++!12733 (t!371009 (_1!34928 lt!2084803)) (_2!34928 lt!2084803))))))

(declare-fun b!5043653 () Bool)

(assert (=> b!5043653 (= e!3149563 (_2!34928 lt!2084803))))

(declare-fun d!1623078 () Bool)

(assert (=> d!1623078 e!3149562))

(declare-fun res!2148576 () Bool)

(assert (=> d!1623078 (=> (not res!2148576) (not e!3149562))))

(assert (=> d!1623078 (= res!2148576 (= (content!10361 lt!2084836) ((_ map or) (content!10361 (_1!34928 lt!2084803)) (content!10361 (_2!34928 lt!2084803)))))))

(assert (=> d!1623078 (= lt!2084836 e!3149563)))

(declare-fun c!864425 () Bool)

(assert (=> d!1623078 (= c!864425 ((_ is Nil!58308) (_1!34928 lt!2084803)))))

(assert (=> d!1623078 (= (++!12733 (_1!34928 lt!2084803) (_2!34928 lt!2084803)) lt!2084836)))

(declare-fun b!5043656 () Bool)

(assert (=> b!5043656 (= e!3149562 (or (not (= (_2!34928 lt!2084803) Nil!58308)) (= lt!2084836 (_1!34928 lt!2084803))))))

(assert (= (and d!1623078 c!864425) b!5043653))

(assert (= (and d!1623078 (not c!864425)) b!5043654))

(assert (= (and d!1623078 res!2148576) b!5043655))

(assert (= (and b!5043655 res!2148575) b!5043656))

(declare-fun m!6078336 () Bool)

(assert (=> b!5043655 m!6078336))

(declare-fun m!6078338 () Bool)

(assert (=> b!5043655 m!6078338))

(declare-fun m!6078340 () Bool)

(assert (=> b!5043655 m!6078340))

(declare-fun m!6078342 () Bool)

(assert (=> b!5043654 m!6078342))

(declare-fun m!6078344 () Bool)

(assert (=> d!1623078 m!6078344))

(declare-fun m!6078346 () Bool)

(assert (=> d!1623078 m!6078346))

(declare-fun m!6078348 () Bool)

(assert (=> d!1623078 m!6078348))

(assert (=> d!1622998 d!1623078))

(declare-fun d!1623082 () Bool)

(declare-fun res!2148593 () Bool)

(declare-fun e!3149571 () Bool)

(assert (=> d!1623082 (=> (not res!2148593) (not e!3149571))))

(assert (=> d!1623082 (= res!2148593 (<= (size!38919 (list!18926 (xs!18846 t!4198))) 512))))

(assert (=> d!1623082 (= (inv!77197 t!4198) e!3149571)))

(declare-fun b!5043675 () Bool)

(declare-fun res!2148594 () Bool)

(assert (=> b!5043675 (=> (not res!2148594) (not e!3149571))))

(assert (=> b!5043675 (= res!2148594 (= (csize!31271 t!4198) (size!38919 (list!18926 (xs!18846 t!4198)))))))

(declare-fun b!5043676 () Bool)

(assert (=> b!5043676 (= e!3149571 (and (> (csize!31271 t!4198) 0) (<= (csize!31271 t!4198) 512)))))

(assert (= (and d!1623082 res!2148593) b!5043675))

(assert (= (and b!5043675 res!2148594) b!5043676))

(assert (=> d!1623082 m!6077916))

(assert (=> d!1623082 m!6077916))

(assert (=> d!1623082 m!6078198))

(assert (=> b!5043675 m!6077916))

(assert (=> b!5043675 m!6077916))

(assert (=> b!5043675 m!6078198))

(assert (=> b!5043374 d!1623082))

(declare-fun b!5043677 () Bool)

(declare-fun e!3149575 () Int)

(assert (=> b!5043677 (= e!3149575 (- i!618 1))))

(declare-fun d!1623090 () Bool)

(declare-fun e!3149573 () Bool)

(assert (=> d!1623090 e!3149573))

(declare-fun res!2148595 () Bool)

(assert (=> d!1623090 (=> (not res!2148595) (not e!3149573))))

(declare-fun lt!2084838 () List!58432)

(assert (=> d!1623090 (= res!2148595 (= ((_ map implies) (content!10361 lt!2084838) (content!10361 (t!371009 lt!2084761))) ((as const (InoxSet T!104236)) true)))))

(declare-fun e!3149572 () List!58432)

(assert (=> d!1623090 (= lt!2084838 e!3149572)))

(declare-fun c!864429 () Bool)

(assert (=> d!1623090 (= c!864429 (or ((_ is Nil!58308) (t!371009 lt!2084761)) (<= (- i!618 1) 0)))))

(assert (=> d!1623090 (= (take!831 (t!371009 lt!2084761) (- i!618 1)) lt!2084838)))

(declare-fun b!5043678 () Bool)

(assert (=> b!5043678 (= e!3149572 (Cons!58308 (h!64756 (t!371009 lt!2084761)) (take!831 (t!371009 (t!371009 lt!2084761)) (- (- i!618 1) 1))))))

(declare-fun b!5043679 () Bool)

(declare-fun e!3149574 () Int)

(assert (=> b!5043679 (= e!3149573 (= (size!38919 lt!2084838) e!3149574))))

(declare-fun c!864427 () Bool)

(assert (=> b!5043679 (= c!864427 (<= (- i!618 1) 0))))

(declare-fun b!5043680 () Bool)

(assert (=> b!5043680 (= e!3149574 0)))

(declare-fun b!5043681 () Bool)

(assert (=> b!5043681 (= e!3149574 e!3149575)))

(declare-fun c!864428 () Bool)

(assert (=> b!5043681 (= c!864428 (>= (- i!618 1) (size!38919 (t!371009 lt!2084761))))))

(declare-fun b!5043682 () Bool)

(assert (=> b!5043682 (= e!3149575 (size!38919 (t!371009 lt!2084761)))))

(declare-fun b!5043683 () Bool)

(assert (=> b!5043683 (= e!3149572 Nil!58308)))

(assert (= (and d!1623090 c!864429) b!5043683))

(assert (= (and d!1623090 (not c!864429)) b!5043678))

(assert (= (and d!1623090 res!2148595) b!5043679))

(assert (= (and b!5043679 c!864427) b!5043680))

(assert (= (and b!5043679 (not c!864427)) b!5043681))

(assert (= (and b!5043681 c!864428) b!5043682))

(assert (= (and b!5043681 (not c!864428)) b!5043677))

(declare-fun m!6078376 () Bool)

(assert (=> b!5043678 m!6078376))

(assert (=> b!5043682 m!6077942))

(declare-fun m!6078378 () Bool)

(assert (=> d!1623090 m!6078378))

(assert (=> d!1623090 m!6078252))

(assert (=> b!5043681 m!6077942))

(declare-fun m!6078380 () Bool)

(assert (=> b!5043679 m!6078380))

(assert (=> b!5043428 d!1623090))

(declare-fun d!1623092 () Bool)

(assert (=> d!1623092 (= (slice!861 (list!18926 (xs!18846 t!4198)) 0 i!618) (take!831 (drop!2638 (list!18926 (xs!18846 t!4198)) 0) (- i!618 0)))))

(declare-fun bs!1189053 () Bool)

(assert (= bs!1189053 d!1623092))

(assert (=> bs!1189053 m!6077916))

(declare-fun m!6078382 () Bool)

(assert (=> bs!1189053 m!6078382))

(assert (=> bs!1189053 m!6078382))

(declare-fun m!6078384 () Bool)

(assert (=> bs!1189053 m!6078384))

(assert (=> d!1623018 d!1623092))

(assert (=> d!1623018 d!1623002))

(declare-fun d!1623094 () Bool)

(declare-fun _$4!1211 () IArray!31101)

(assert (=> d!1623094 (= _$4!1211 (IArray!31102 (slice!861 (list!18926 (xs!18846 t!4198)) 0 i!618)))))

(declare-fun e!3149580 () Bool)

(assert (=> d!1623094 (and (inv!77194 _$4!1211) e!3149580)))

(assert (=> d!1623094 (= (choose!37268 (xs!18846 t!4198) 0 i!618) _$4!1211)))

(declare-fun b!5043690 () Bool)

(declare-fun tp!1411428 () Bool)

(assert (=> b!5043690 (= e!3149580 tp!1411428)))

(assert (= d!1623094 b!5043690))

(assert (=> d!1623094 m!6077916))

(assert (=> d!1623094 m!6077916))

(assert (=> d!1623094 m!6078146))

(declare-fun m!6078386 () Bool)

(assert (=> d!1623094 m!6078386))

(assert (=> d!1623018 d!1623094))

(declare-fun b!5043695 () Bool)

(declare-fun e!3149587 () List!58432)

(assert (=> b!5043695 (= e!3149587 (t!371009 lt!2084761))))

(declare-fun b!5043696 () Bool)

(declare-fun e!3149584 () Bool)

(declare-fun lt!2084841 () List!58432)

(declare-fun e!3149583 () Int)

(assert (=> b!5043696 (= e!3149584 (= (size!38919 lt!2084841) e!3149583))))

(declare-fun c!864434 () Bool)

(assert (=> b!5043696 (= c!864434 (<= (- i!618 1) 0))))

(declare-fun b!5043697 () Bool)

(declare-fun e!3149586 () Int)

(assert (=> b!5043697 (= e!3149583 e!3149586)))

(declare-fun c!864435 () Bool)

(declare-fun call!351446 () Int)

(assert (=> b!5043697 (= c!864435 (>= (- i!618 1) call!351446))))

(declare-fun b!5043698 () Bool)

(assert (=> b!5043698 (= e!3149583 call!351446)))

(declare-fun b!5043699 () Bool)

(assert (=> b!5043699 (= e!3149586 0)))

(declare-fun bm!351441 () Bool)

(assert (=> bm!351441 (= call!351446 (size!38919 (t!371009 lt!2084761)))))

(declare-fun b!5043701 () Bool)

(assert (=> b!5043701 (= e!3149587 (drop!2638 (t!371009 (t!371009 lt!2084761)) (- (- i!618 1) 1)))))

(declare-fun b!5043702 () Bool)

(declare-fun e!3149585 () List!58432)

(assert (=> b!5043702 (= e!3149585 e!3149587)))

(declare-fun c!864433 () Bool)

(assert (=> b!5043702 (= c!864433 (<= (- i!618 1) 0))))

(declare-fun b!5043703 () Bool)

(assert (=> b!5043703 (= e!3149586 (- call!351446 (- i!618 1)))))

(declare-fun b!5043700 () Bool)

(assert (=> b!5043700 (= e!3149585 Nil!58308)))

(declare-fun d!1623096 () Bool)

(assert (=> d!1623096 e!3149584))

(declare-fun res!2148600 () Bool)

(assert (=> d!1623096 (=> (not res!2148600) (not e!3149584))))

(assert (=> d!1623096 (= res!2148600 (= ((_ map implies) (content!10361 lt!2084841) (content!10361 (t!371009 lt!2084761))) ((as const (InoxSet T!104236)) true)))))

(assert (=> d!1623096 (= lt!2084841 e!3149585)))

(declare-fun c!864432 () Bool)

(assert (=> d!1623096 (= c!864432 ((_ is Nil!58308) (t!371009 lt!2084761)))))

(assert (=> d!1623096 (= (drop!2638 (t!371009 lt!2084761) (- i!618 1)) lt!2084841)))

(assert (= (and d!1623096 c!864432) b!5043700))

(assert (= (and d!1623096 (not c!864432)) b!5043702))

(assert (= (and b!5043702 c!864433) b!5043695))

(assert (= (and b!5043702 (not c!864433)) b!5043701))

(assert (= (and d!1623096 res!2148600) b!5043696))

(assert (= (and b!5043696 c!864434) b!5043698))

(assert (= (and b!5043696 (not c!864434)) b!5043697))

(assert (= (and b!5043697 c!864435) b!5043699))

(assert (= (and b!5043697 (not c!864435)) b!5043703))

(assert (= (or b!5043698 b!5043697 b!5043703) bm!351441))

(declare-fun m!6078388 () Bool)

(assert (=> b!5043696 m!6078388))

(assert (=> bm!351441 m!6077942))

(declare-fun m!6078390 () Bool)

(assert (=> b!5043701 m!6078390))

(declare-fun m!6078392 () Bool)

(assert (=> d!1623096 m!6078392))

(assert (=> d!1623096 m!6078252))

(assert (=> b!5043540 d!1623096))

(assert (=> d!1622946 d!1623020))

(assert (=> d!1622946 d!1622940))

(assert (=> d!1622946 d!1622942))

(declare-fun d!1623098 () Bool)

(assert (=> d!1623098 (= (drop!2638 lt!2084761 i!618) (slice!861 lt!2084761 i!618 (size!38919 lt!2084761)))))

(assert (=> d!1623098 true))

(declare-fun _$10!218 () Unit!149499)

(assert (=> d!1623098 (= (choose!37265 lt!2084761 i!618) _$10!218)))

(declare-fun bs!1189054 () Bool)

(assert (= bs!1189054 d!1623098))

(assert (=> bs!1189054 m!6077918))

(assert (=> bs!1189054 m!6077928))

(assert (=> bs!1189054 m!6077928))

(assert (=> bs!1189054 m!6077930))

(assert (=> d!1622946 d!1623098))

(declare-fun d!1623100 () Bool)

(assert (=> d!1623100 (= (height!2099 (left!42709 t!4198)) (ite ((_ is Empty!15520) (left!42709 t!4198)) 0 (ite ((_ is Leaf!25744) (left!42709 t!4198)) 1 (cheight!15731 (left!42709 t!4198)))))))

(assert (=> b!5043350 d!1623100))

(declare-fun d!1623102 () Bool)

(assert (=> d!1623102 (= (height!2099 (right!43039 t!4198)) (ite ((_ is Empty!15520) (right!43039 t!4198)) 0 (ite ((_ is Leaf!25744) (right!43039 t!4198)) 1 (cheight!15731 (right!43039 t!4198)))))))

(assert (=> b!5043350 d!1623102))

(declare-fun b!5043708 () Bool)

(declare-fun e!3149592 () tuple2!63250)

(assert (=> b!5043708 (= e!3149592 (tuple2!63251 Nil!58308 (t!371009 (list!18927 t!4198))))))

(declare-fun d!1623104 () Bool)

(declare-fun e!3149590 () Bool)

(assert (=> d!1623104 e!3149590))

(declare-fun res!2148604 () Bool)

(assert (=> d!1623104 (=> (not res!2148604) (not e!3149590))))

(declare-fun lt!2084843 () tuple2!63250)

(assert (=> d!1623104 (= res!2148604 (= (++!12733 (_1!34928 lt!2084843) (_2!34928 lt!2084843)) (t!371009 (list!18927 t!4198))))))

(declare-fun e!3149591 () tuple2!63250)

(assert (=> d!1623104 (= lt!2084843 e!3149591)))

(declare-fun c!864438 () Bool)

(assert (=> d!1623104 (= c!864438 ((_ is Nil!58308) (t!371009 (list!18927 t!4198))))))

(assert (=> d!1623104 (= (splitAtIndex!215 (t!371009 (list!18927 t!4198)) (- i!618 1)) lt!2084843)))

(declare-fun b!5043709 () Bool)

(assert (=> b!5043709 (= e!3149591 e!3149592)))

(declare-fun c!864437 () Bool)

(assert (=> b!5043709 (= c!864437 (<= (- i!618 1) 0))))

(declare-fun b!5043710 () Bool)

(assert (=> b!5043710 (= e!3149591 (tuple2!63251 Nil!58308 Nil!58308))))

(declare-fun b!5043711 () Bool)

(declare-fun res!2148603 () Bool)

(assert (=> b!5043711 (=> (not res!2148603) (not e!3149590))))

(assert (=> b!5043711 (= res!2148603 (= (_1!34928 lt!2084843) (take!831 (t!371009 (list!18927 t!4198)) (- i!618 1))))))

(declare-fun b!5043712 () Bool)

(declare-fun lt!2084844 () tuple2!63250)

(assert (=> b!5043712 (= lt!2084844 (splitAtIndex!215 (t!371009 (t!371009 (list!18927 t!4198))) (- (- i!618 1) 1)))))

(assert (=> b!5043712 (= e!3149592 (tuple2!63251 (Cons!58308 (h!64756 (t!371009 (list!18927 t!4198))) (_1!34928 lt!2084844)) (_2!34928 lt!2084844)))))

(declare-fun b!5043713 () Bool)

(assert (=> b!5043713 (= e!3149590 (= (_2!34928 lt!2084843) (drop!2638 (t!371009 (list!18927 t!4198)) (- i!618 1))))))

(assert (= (and d!1623104 c!864438) b!5043710))

(assert (= (and d!1623104 (not c!864438)) b!5043709))

(assert (= (and b!5043709 c!864437) b!5043708))

(assert (= (and b!5043709 (not c!864437)) b!5043712))

(assert (= (and d!1623104 res!2148604) b!5043711))

(assert (= (and b!5043711 res!2148603) b!5043713))

(declare-fun m!6078408 () Bool)

(assert (=> d!1623104 m!6078408))

(declare-fun m!6078410 () Bool)

(assert (=> b!5043711 m!6078410))

(declare-fun m!6078412 () Bool)

(assert (=> b!5043712 m!6078412))

(declare-fun m!6078414 () Bool)

(assert (=> b!5043713 m!6078414))

(assert (=> b!5043312 d!1623104))

(assert (=> b!5043432 d!1622942))

(assert (=> b!5043352 d!1623100))

(assert (=> b!5043352 d!1623102))

(assert (=> b!5043244 d!1622942))

(declare-fun d!1623108 () Bool)

(assert (=> d!1623108 (= (slice!861 (list!18926 (xs!18846 t!4198)) i!618 (csize!31271 t!4198)) (take!831 (drop!2638 (list!18926 (xs!18846 t!4198)) i!618) (- (csize!31271 t!4198) i!618)))))

(declare-fun bs!1189055 () Bool)

(assert (= bs!1189055 d!1623108))

(assert (=> bs!1189055 m!6077916))

(declare-fun m!6078416 () Bool)

(assert (=> bs!1189055 m!6078416))

(assert (=> bs!1189055 m!6078416))

(declare-fun m!6078418 () Bool)

(assert (=> bs!1189055 m!6078418))

(assert (=> d!1623008 d!1623108))

(assert (=> d!1623008 d!1623002))

(declare-fun d!1623110 () Bool)

(declare-fun _$4!1212 () IArray!31101)

(assert (=> d!1623110 (= _$4!1212 (IArray!31102 (slice!861 (list!18926 (xs!18846 t!4198)) i!618 (csize!31271 t!4198))))))

(declare-fun e!3149593 () Bool)

(assert (=> d!1623110 (and (inv!77194 _$4!1212) e!3149593)))

(assert (=> d!1623110 (= (choose!37268 (xs!18846 t!4198) i!618 (csize!31271 t!4198)) _$4!1212)))

(declare-fun b!5043714 () Bool)

(declare-fun tp!1411429 () Bool)

(assert (=> b!5043714 (= e!3149593 tp!1411429)))

(assert (= d!1623110 b!5043714))

(assert (=> d!1623110 m!6077916))

(assert (=> d!1623110 m!6077916))

(assert (=> d!1623110 m!6078140))

(declare-fun m!6078420 () Bool)

(assert (=> d!1623110 m!6078420))

(assert (=> d!1623008 d!1623110))

(declare-fun d!1623112 () Bool)

(assert (=> d!1623112 (= (list!18926 (xs!18846 lt!2084760)) (innerList!15608 (xs!18846 lt!2084760)))))

(assert (=> b!5043276 d!1623112))

(declare-fun d!1623114 () Bool)

(assert (=> d!1623114 (= (inv!77194 (xs!18846 (left!42709 t!4198))) (<= (size!38919 (innerList!15608 (xs!18846 (left!42709 t!4198)))) 2147483647))))

(declare-fun bs!1189056 () Bool)

(assert (= bs!1189056 d!1623114))

(declare-fun m!6078422 () Bool)

(assert (=> bs!1189056 m!6078422))

(assert (=> b!5043565 d!1623114))

(declare-fun b!5043717 () Bool)

(declare-fun res!2148605 () Bool)

(declare-fun e!3149594 () Bool)

(assert (=> b!5043717 (=> (not res!2148605) (not e!3149594))))

(declare-fun lt!2084845 () List!58432)

(assert (=> b!5043717 (= res!2148605 (= (size!38919 lt!2084845) (+ (size!38919 (list!18927 (left!42709 lt!2084762))) (size!38919 (list!18927 (right!43039 lt!2084762))))))))

(declare-fun b!5043716 () Bool)

(declare-fun e!3149595 () List!58432)

(assert (=> b!5043716 (= e!3149595 (Cons!58308 (h!64756 (list!18927 (left!42709 lt!2084762))) (++!12733 (t!371009 (list!18927 (left!42709 lt!2084762))) (list!18927 (right!43039 lt!2084762)))))))

(declare-fun b!5043715 () Bool)

(assert (=> b!5043715 (= e!3149595 (list!18927 (right!43039 lt!2084762)))))

(declare-fun d!1623116 () Bool)

(assert (=> d!1623116 e!3149594))

(declare-fun res!2148606 () Bool)

(assert (=> d!1623116 (=> (not res!2148606) (not e!3149594))))

(assert (=> d!1623116 (= res!2148606 (= (content!10361 lt!2084845) ((_ map or) (content!10361 (list!18927 (left!42709 lt!2084762))) (content!10361 (list!18927 (right!43039 lt!2084762))))))))

(assert (=> d!1623116 (= lt!2084845 e!3149595)))

(declare-fun c!864439 () Bool)

(assert (=> d!1623116 (= c!864439 ((_ is Nil!58308) (list!18927 (left!42709 lt!2084762))))))

(assert (=> d!1623116 (= (++!12733 (list!18927 (left!42709 lt!2084762)) (list!18927 (right!43039 lt!2084762))) lt!2084845)))

(declare-fun b!5043718 () Bool)

(assert (=> b!5043718 (= e!3149594 (or (not (= (list!18927 (right!43039 lt!2084762)) Nil!58308)) (= lt!2084845 (list!18927 (left!42709 lt!2084762)))))))

(assert (= (and d!1623116 c!864439) b!5043715))

(assert (= (and d!1623116 (not c!864439)) b!5043716))

(assert (= (and d!1623116 res!2148606) b!5043717))

(assert (= (and b!5043717 res!2148605) b!5043718))

(declare-fun m!6078424 () Bool)

(assert (=> b!5043717 m!6078424))

(assert (=> b!5043717 m!6077956))

(declare-fun m!6078426 () Bool)

(assert (=> b!5043717 m!6078426))

(assert (=> b!5043717 m!6077958))

(declare-fun m!6078428 () Bool)

(assert (=> b!5043717 m!6078428))

(assert (=> b!5043716 m!6077958))

(declare-fun m!6078430 () Bool)

(assert (=> b!5043716 m!6078430))

(declare-fun m!6078432 () Bool)

(assert (=> d!1623116 m!6078432))

(assert (=> d!1623116 m!6077956))

(declare-fun m!6078434 () Bool)

(assert (=> d!1623116 m!6078434))

(assert (=> d!1623116 m!6077958))

(declare-fun m!6078436 () Bool)

(assert (=> d!1623116 m!6078436))

(assert (=> b!5043273 d!1623116))

(declare-fun b!5043722 () Bool)

(declare-fun e!3149597 () List!58432)

(assert (=> b!5043722 (= e!3149597 (++!12733 (list!18927 (left!42709 (left!42709 lt!2084762))) (list!18927 (right!43039 (left!42709 lt!2084762)))))))

(declare-fun b!5043719 () Bool)

(declare-fun e!3149596 () List!58432)

(assert (=> b!5043719 (= e!3149596 Nil!58308)))

(declare-fun b!5043720 () Bool)

(assert (=> b!5043720 (= e!3149596 e!3149597)))

(declare-fun c!864441 () Bool)

(assert (=> b!5043720 (= c!864441 ((_ is Leaf!25744) (left!42709 lt!2084762)))))

(declare-fun b!5043721 () Bool)

(assert (=> b!5043721 (= e!3149597 (list!18926 (xs!18846 (left!42709 lt!2084762))))))

(declare-fun d!1623118 () Bool)

(declare-fun c!864440 () Bool)

(assert (=> d!1623118 (= c!864440 ((_ is Empty!15520) (left!42709 lt!2084762)))))

(assert (=> d!1623118 (= (list!18927 (left!42709 lt!2084762)) e!3149596)))

(assert (= (and d!1623118 c!864440) b!5043719))

(assert (= (and d!1623118 (not c!864440)) b!5043720))

(assert (= (and b!5043720 c!864441) b!5043721))

(assert (= (and b!5043720 (not c!864441)) b!5043722))

(declare-fun m!6078438 () Bool)

(assert (=> b!5043722 m!6078438))

(declare-fun m!6078440 () Bool)

(assert (=> b!5043722 m!6078440))

(assert (=> b!5043722 m!6078438))

(assert (=> b!5043722 m!6078440))

(declare-fun m!6078442 () Bool)

(assert (=> b!5043722 m!6078442))

(declare-fun m!6078444 () Bool)

(assert (=> b!5043721 m!6078444))

(assert (=> b!5043273 d!1623118))

(declare-fun b!5043726 () Bool)

(declare-fun e!3149599 () List!58432)

(assert (=> b!5043726 (= e!3149599 (++!12733 (list!18927 (left!42709 (right!43039 lt!2084762))) (list!18927 (right!43039 (right!43039 lt!2084762)))))))

(declare-fun b!5043723 () Bool)

(declare-fun e!3149598 () List!58432)

(assert (=> b!5043723 (= e!3149598 Nil!58308)))

(declare-fun b!5043724 () Bool)

(assert (=> b!5043724 (= e!3149598 e!3149599)))

(declare-fun c!864443 () Bool)

(assert (=> b!5043724 (= c!864443 ((_ is Leaf!25744) (right!43039 lt!2084762)))))

(declare-fun b!5043725 () Bool)

(assert (=> b!5043725 (= e!3149599 (list!18926 (xs!18846 (right!43039 lt!2084762))))))

(declare-fun d!1623120 () Bool)

(declare-fun c!864442 () Bool)

(assert (=> d!1623120 (= c!864442 ((_ is Empty!15520) (right!43039 lt!2084762)))))

(assert (=> d!1623120 (= (list!18927 (right!43039 lt!2084762)) e!3149598)))

(assert (= (and d!1623120 c!864442) b!5043723))

(assert (= (and d!1623120 (not c!864442)) b!5043724))

(assert (= (and b!5043724 c!864443) b!5043725))

(assert (= (and b!5043724 (not c!864443)) b!5043726))

(declare-fun m!6078446 () Bool)

(assert (=> b!5043726 m!6078446))

(declare-fun m!6078448 () Bool)

(assert (=> b!5043726 m!6078448))

(assert (=> b!5043726 m!6078446))

(assert (=> b!5043726 m!6078448))

(declare-fun m!6078450 () Bool)

(assert (=> b!5043726 m!6078450))

(declare-fun m!6078452 () Bool)

(assert (=> b!5043725 m!6078452))

(assert (=> b!5043273 d!1623120))

(assert (=> b!5043440 d!1623020))

(declare-fun d!1623122 () Bool)

(assert (=> d!1623122 (= (height!2099 (left!42709 lt!2084760)) (ite ((_ is Empty!15520) (left!42709 lt!2084760)) 0 (ite ((_ is Leaf!25744) (left!42709 lt!2084760)) 1 (cheight!15731 (left!42709 lt!2084760)))))))

(assert (=> b!5043377 d!1623122))

(declare-fun d!1623126 () Bool)

(assert (=> d!1623126 (= (height!2099 (right!43039 lt!2084760)) (ite ((_ is Empty!15520) (right!43039 lt!2084760)) 0 (ite ((_ is Leaf!25744) (right!43039 lt!2084760)) 1 (cheight!15731 (right!43039 lt!2084760)))))))

(assert (=> b!5043377 d!1623126))

(declare-fun b!5043727 () Bool)

(declare-fun e!3149603 () Int)

(assert (=> b!5043727 (= e!3149603 (- (size!38919 lt!2084761) i!618))))

(declare-fun d!1623128 () Bool)

(declare-fun e!3149601 () Bool)

(assert (=> d!1623128 e!3149601))

(declare-fun res!2148607 () Bool)

(assert (=> d!1623128 (=> (not res!2148607) (not e!3149601))))

(declare-fun lt!2084849 () List!58432)

(assert (=> d!1623128 (= res!2148607 (= ((_ map implies) (content!10361 lt!2084849) (content!10361 (drop!2638 lt!2084761 i!618))) ((as const (InoxSet T!104236)) true)))))

(declare-fun e!3149600 () List!58432)

(assert (=> d!1623128 (= lt!2084849 e!3149600)))

(declare-fun c!864446 () Bool)

(assert (=> d!1623128 (= c!864446 (or ((_ is Nil!58308) (drop!2638 lt!2084761 i!618)) (<= (- (size!38919 lt!2084761) i!618) 0)))))

(assert (=> d!1623128 (= (take!831 (drop!2638 lt!2084761 i!618) (- (size!38919 lt!2084761) i!618)) lt!2084849)))

(declare-fun b!5043728 () Bool)

(assert (=> b!5043728 (= e!3149600 (Cons!58308 (h!64756 (drop!2638 lt!2084761 i!618)) (take!831 (t!371009 (drop!2638 lt!2084761 i!618)) (- (- (size!38919 lt!2084761) i!618) 1))))))

(declare-fun b!5043729 () Bool)

(declare-fun e!3149602 () Int)

(assert (=> b!5043729 (= e!3149601 (= (size!38919 lt!2084849) e!3149602))))

(declare-fun c!864444 () Bool)

(assert (=> b!5043729 (= c!864444 (<= (- (size!38919 lt!2084761) i!618) 0))))

(declare-fun b!5043730 () Bool)

(assert (=> b!5043730 (= e!3149602 0)))

(declare-fun b!5043731 () Bool)

(assert (=> b!5043731 (= e!3149602 e!3149603)))

(declare-fun c!864445 () Bool)

(assert (=> b!5043731 (= c!864445 (>= (- (size!38919 lt!2084761) i!618) (size!38919 (drop!2638 lt!2084761 i!618))))))

(declare-fun b!5043732 () Bool)

(assert (=> b!5043732 (= e!3149603 (size!38919 (drop!2638 lt!2084761 i!618)))))

(declare-fun b!5043733 () Bool)

(assert (=> b!5043733 (= e!3149600 Nil!58308)))

(assert (= (and d!1623128 c!864446) b!5043733))

(assert (= (and d!1623128 (not c!864446)) b!5043728))

(assert (= (and d!1623128 res!2148607) b!5043729))

(assert (= (and b!5043729 c!864444) b!5043730))

(assert (= (and b!5043729 (not c!864444)) b!5043731))

(assert (= (and b!5043731 c!864445) b!5043732))

(assert (= (and b!5043731 (not c!864445)) b!5043727))

(declare-fun m!6078458 () Bool)

(assert (=> b!5043728 m!6078458))

(assert (=> b!5043732 m!6077918))

(declare-fun m!6078460 () Bool)

(assert (=> b!5043732 m!6078460))

(declare-fun m!6078462 () Bool)

(assert (=> d!1623128 m!6078462))

(assert (=> d!1623128 m!6077918))

(declare-fun m!6078464 () Bool)

(assert (=> d!1623128 m!6078464))

(assert (=> b!5043731 m!6077918))

(assert (=> b!5043731 m!6078460))

(declare-fun m!6078466 () Bool)

(assert (=> b!5043729 m!6078466))

(assert (=> d!1622940 d!1623128))

(assert (=> d!1622940 d!1623020))

(assert (=> b!5043379 d!1623122))

(assert (=> b!5043379 d!1623126))

(assert (=> b!5043470 d!1623024))

(declare-fun b!5043734 () Bool)

(declare-fun e!3149604 () Bool)

(assert (=> b!5043734 (= e!3149604 (not (isEmpty!31546 (right!43039 (right!43039 lt!2084762)))))))

(declare-fun b!5043735 () Bool)

(declare-fun res!2148612 () Bool)

(assert (=> b!5043735 (=> (not res!2148612) (not e!3149604))))

(assert (=> b!5043735 (= res!2148612 (isBalanced!4382 (left!42709 (right!43039 lt!2084762))))))

(declare-fun d!1623130 () Bool)

(declare-fun res!2148608 () Bool)

(declare-fun e!3149605 () Bool)

(assert (=> d!1623130 (=> res!2148608 e!3149605)))

(assert (=> d!1623130 (= res!2148608 (not ((_ is Node!15520) (right!43039 lt!2084762))))))

(assert (=> d!1623130 (= (isBalanced!4382 (right!43039 lt!2084762)) e!3149605)))

(declare-fun b!5043736 () Bool)

(declare-fun res!2148613 () Bool)

(assert (=> b!5043736 (=> (not res!2148613) (not e!3149604))))

(assert (=> b!5043736 (= res!2148613 (<= (- (height!2099 (left!42709 (right!43039 lt!2084762))) (height!2099 (right!43039 (right!43039 lt!2084762)))) 1))))

(declare-fun b!5043737 () Bool)

(declare-fun res!2148609 () Bool)

(assert (=> b!5043737 (=> (not res!2148609) (not e!3149604))))

(assert (=> b!5043737 (= res!2148609 (isBalanced!4382 (right!43039 (right!43039 lt!2084762))))))

(declare-fun b!5043738 () Bool)

(assert (=> b!5043738 (= e!3149605 e!3149604)))

(declare-fun res!2148610 () Bool)

(assert (=> b!5043738 (=> (not res!2148610) (not e!3149604))))

(assert (=> b!5043738 (= res!2148610 (<= (- 1) (- (height!2099 (left!42709 (right!43039 lt!2084762))) (height!2099 (right!43039 (right!43039 lt!2084762))))))))

(declare-fun b!5043739 () Bool)

(declare-fun res!2148611 () Bool)

(assert (=> b!5043739 (=> (not res!2148611) (not e!3149604))))

(assert (=> b!5043739 (= res!2148611 (not (isEmpty!31546 (left!42709 (right!43039 lt!2084762)))))))

(assert (= (and d!1623130 (not res!2148608)) b!5043738))

(assert (= (and b!5043738 res!2148610) b!5043736))

(assert (= (and b!5043736 res!2148613) b!5043735))

(assert (= (and b!5043735 res!2148612) b!5043737))

(assert (= (and b!5043737 res!2148609) b!5043739))

(assert (= (and b!5043739 res!2148611) b!5043734))

(declare-fun m!6078472 () Bool)

(assert (=> b!5043738 m!6078472))

(declare-fun m!6078474 () Bool)

(assert (=> b!5043738 m!6078474))

(declare-fun m!6078476 () Bool)

(assert (=> b!5043737 m!6078476))

(declare-fun m!6078478 () Bool)

(assert (=> b!5043735 m!6078478))

(declare-fun m!6078480 () Bool)

(assert (=> b!5043739 m!6078480))

(assert (=> b!5043736 m!6078472))

(assert (=> b!5043736 m!6078474))

(declare-fun m!6078482 () Bool)

(assert (=> b!5043734 m!6078482))

(assert (=> b!5043444 d!1623130))

(assert (=> b!5043228 d!1622978))

(assert (=> b!5043228 d!1622980))

(assert (=> b!5043438 d!1622984))

(declare-fun d!1623138 () Bool)

(declare-fun lt!2084850 () Bool)

(assert (=> d!1623138 (= lt!2084850 (isEmpty!31547 (list!18927 (right!43039 lt!2084760))))))

(assert (=> d!1623138 (= lt!2084850 (= (size!38918 (right!43039 lt!2084760)) 0))))

(assert (=> d!1623138 (= (isEmpty!31546 (right!43039 lt!2084760)) lt!2084850)))

(declare-fun bs!1189059 () Bool)

(assert (= bs!1189059 d!1623138))

(assert (=> bs!1189059 m!6077966))

(assert (=> bs!1189059 m!6077966))

(declare-fun m!6078484 () Bool)

(assert (=> bs!1189059 m!6078484))

(declare-fun m!6078486 () Bool)

(assert (=> bs!1189059 m!6078486))

(assert (=> b!5043375 d!1623138))

(declare-fun b!5043740 () Bool)

(declare-fun e!3149606 () Bool)

(assert (=> b!5043740 (= e!3149606 (not (isEmpty!31546 (right!43039 (left!42709 lt!2084762)))))))

(declare-fun b!5043741 () Bool)

(declare-fun res!2148618 () Bool)

(assert (=> b!5043741 (=> (not res!2148618) (not e!3149606))))

(assert (=> b!5043741 (= res!2148618 (isBalanced!4382 (left!42709 (left!42709 lt!2084762))))))

(declare-fun d!1623140 () Bool)

(declare-fun res!2148614 () Bool)

(declare-fun e!3149607 () Bool)

(assert (=> d!1623140 (=> res!2148614 e!3149607)))

(assert (=> d!1623140 (= res!2148614 (not ((_ is Node!15520) (left!42709 lt!2084762))))))

(assert (=> d!1623140 (= (isBalanced!4382 (left!42709 lt!2084762)) e!3149607)))

(declare-fun b!5043742 () Bool)

(declare-fun res!2148619 () Bool)

(assert (=> b!5043742 (=> (not res!2148619) (not e!3149606))))

(assert (=> b!5043742 (= res!2148619 (<= (- (height!2099 (left!42709 (left!42709 lt!2084762))) (height!2099 (right!43039 (left!42709 lt!2084762)))) 1))))

(declare-fun b!5043743 () Bool)

(declare-fun res!2148615 () Bool)

(assert (=> b!5043743 (=> (not res!2148615) (not e!3149606))))

(assert (=> b!5043743 (= res!2148615 (isBalanced!4382 (right!43039 (left!42709 lt!2084762))))))

(declare-fun b!5043744 () Bool)

(assert (=> b!5043744 (= e!3149607 e!3149606)))

(declare-fun res!2148616 () Bool)

(assert (=> b!5043744 (=> (not res!2148616) (not e!3149606))))

(assert (=> b!5043744 (= res!2148616 (<= (- 1) (- (height!2099 (left!42709 (left!42709 lt!2084762))) (height!2099 (right!43039 (left!42709 lt!2084762))))))))

(declare-fun b!5043745 () Bool)

(declare-fun res!2148617 () Bool)

(assert (=> b!5043745 (=> (not res!2148617) (not e!3149606))))

(assert (=> b!5043745 (= res!2148617 (not (isEmpty!31546 (left!42709 (left!42709 lt!2084762)))))))

(assert (= (and d!1623140 (not res!2148614)) b!5043744))

(assert (= (and b!5043744 res!2148616) b!5043742))

(assert (= (and b!5043742 res!2148619) b!5043741))

(assert (= (and b!5043741 res!2148618) b!5043743))

(assert (= (and b!5043743 res!2148615) b!5043745))

(assert (= (and b!5043745 res!2148617) b!5043740))

(declare-fun m!6078488 () Bool)

(assert (=> b!5043744 m!6078488))

(declare-fun m!6078490 () Bool)

(assert (=> b!5043744 m!6078490))

(declare-fun m!6078492 () Bool)

(assert (=> b!5043743 m!6078492))

(declare-fun m!6078494 () Bool)

(assert (=> b!5043741 m!6078494))

(declare-fun m!6078496 () Bool)

(assert (=> b!5043745 m!6078496))

(assert (=> b!5043742 m!6078488))

(assert (=> b!5043742 m!6078490))

(declare-fun m!6078498 () Bool)

(assert (=> b!5043740 m!6078498))

(assert (=> b!5043442 d!1623140))

(declare-fun d!1623142 () Bool)

(declare-fun lt!2084851 () Int)

(assert (=> d!1623142 (>= lt!2084851 0)))

(declare-fun e!3149608 () Int)

(assert (=> d!1623142 (= lt!2084851 e!3149608)))

(declare-fun c!864447 () Bool)

(assert (=> d!1623142 (= c!864447 ((_ is Nil!58308) lt!2084801))))

(assert (=> d!1623142 (= (size!38919 lt!2084801) lt!2084851)))

(declare-fun b!5043746 () Bool)

(assert (=> b!5043746 (= e!3149608 0)))

(declare-fun b!5043747 () Bool)

(assert (=> b!5043747 (= e!3149608 (+ 1 (size!38919 (t!371009 lt!2084801))))))

(assert (= (and d!1623142 c!864447) b!5043746))

(assert (= (and d!1623142 (not c!864447)) b!5043747))

(declare-fun m!6078500 () Bool)

(assert (=> b!5043747 m!6078500))

(assert (=> b!5043429 d!1623142))

(declare-fun d!1623144 () Bool)

(declare-fun res!2148620 () Bool)

(declare-fun e!3149609 () Bool)

(assert (=> d!1623144 (=> (not res!2148620) (not e!3149609))))

(assert (=> d!1623144 (= res!2148620 (<= (size!38919 (list!18926 (xs!18846 (right!43039 t!4198)))) 512))))

(assert (=> d!1623144 (= (inv!77197 (right!43039 t!4198)) e!3149609)))

(declare-fun b!5043748 () Bool)

(declare-fun res!2148621 () Bool)

(assert (=> b!5043748 (=> (not res!2148621) (not e!3149609))))

(assert (=> b!5043748 (= res!2148621 (= (csize!31271 (right!43039 t!4198)) (size!38919 (list!18926 (xs!18846 (right!43039 t!4198))))))))

(declare-fun b!5043749 () Bool)

(assert (=> b!5043749 (= e!3149609 (and (> (csize!31271 (right!43039 t!4198)) 0) (<= (csize!31271 (right!43039 t!4198)) 512)))))

(assert (= (and d!1623144 res!2148620) b!5043748))

(assert (= (and b!5043748 res!2148621) b!5043749))

(assert (=> d!1623144 m!6078316))

(assert (=> d!1623144 m!6078316))

(declare-fun m!6078502 () Bool)

(assert (=> d!1623144 m!6078502))

(assert (=> b!5043748 m!6078316))

(assert (=> b!5043748 m!6078316))

(assert (=> b!5043748 m!6078502))

(assert (=> b!5043390 d!1623144))

(declare-fun b!5043754 () Bool)

(declare-fun res!2148622 () Bool)

(declare-fun e!3149612 () Bool)

(assert (=> b!5043754 (=> (not res!2148622) (not e!3149612))))

(declare-fun lt!2084852 () List!58432)

(assert (=> b!5043754 (= res!2148622 (= (size!38919 lt!2084852) (+ (size!38919 (_1!34928 lt!2084786)) (size!38919 (_2!34928 lt!2084786)))))))

(declare-fun b!5043753 () Bool)

(declare-fun e!3149613 () List!58432)

(assert (=> b!5043753 (= e!3149613 (Cons!58308 (h!64756 (_1!34928 lt!2084786)) (++!12733 (t!371009 (_1!34928 lt!2084786)) (_2!34928 lt!2084786))))))

(declare-fun b!5043752 () Bool)

(assert (=> b!5043752 (= e!3149613 (_2!34928 lt!2084786))))

(declare-fun d!1623146 () Bool)

(assert (=> d!1623146 e!3149612))

(declare-fun res!2148623 () Bool)

(assert (=> d!1623146 (=> (not res!2148623) (not e!3149612))))

(assert (=> d!1623146 (= res!2148623 (= (content!10361 lt!2084852) ((_ map or) (content!10361 (_1!34928 lt!2084786)) (content!10361 (_2!34928 lt!2084786)))))))

(assert (=> d!1623146 (= lt!2084852 e!3149613)))

(declare-fun c!864448 () Bool)

(assert (=> d!1623146 (= c!864448 ((_ is Nil!58308) (_1!34928 lt!2084786)))))

(assert (=> d!1623146 (= (++!12733 (_1!34928 lt!2084786) (_2!34928 lt!2084786)) lt!2084852)))

(declare-fun b!5043755 () Bool)

(assert (=> b!5043755 (= e!3149612 (or (not (= (_2!34928 lt!2084786) Nil!58308)) (= lt!2084852 (_1!34928 lt!2084786))))))

(assert (= (and d!1623146 c!864448) b!5043752))

(assert (= (and d!1623146 (not c!864448)) b!5043753))

(assert (= (and d!1623146 res!2148623) b!5043754))

(assert (= (and b!5043754 res!2148622) b!5043755))

(declare-fun m!6078504 () Bool)

(assert (=> b!5043754 m!6078504))

(declare-fun m!6078506 () Bool)

(assert (=> b!5043754 m!6078506))

(declare-fun m!6078508 () Bool)

(assert (=> b!5043754 m!6078508))

(declare-fun m!6078510 () Bool)

(assert (=> b!5043753 m!6078510))

(declare-fun m!6078512 () Bool)

(assert (=> d!1623146 m!6078512))

(declare-fun m!6078514 () Bool)

(assert (=> d!1623146 m!6078514))

(declare-fun m!6078516 () Bool)

(assert (=> d!1623146 m!6078516))

(assert (=> d!1622956 d!1623146))

(declare-fun b!5043756 () Bool)

(declare-fun e!3149614 () Bool)

(assert (=> b!5043756 (= e!3149614 (not (isEmpty!31546 (right!43039 (left!42709 t!4198)))))))

(declare-fun b!5043757 () Bool)

(declare-fun res!2148628 () Bool)

(assert (=> b!5043757 (=> (not res!2148628) (not e!3149614))))

(assert (=> b!5043757 (= res!2148628 (isBalanced!4382 (left!42709 (left!42709 t!4198))))))

(declare-fun d!1623148 () Bool)

(declare-fun res!2148624 () Bool)

(declare-fun e!3149615 () Bool)

(assert (=> d!1623148 (=> res!2148624 e!3149615)))

(assert (=> d!1623148 (= res!2148624 (not ((_ is Node!15520) (left!42709 t!4198))))))

(assert (=> d!1623148 (= (isBalanced!4382 (left!42709 t!4198)) e!3149615)))

(declare-fun b!5043758 () Bool)

(declare-fun res!2148629 () Bool)

(assert (=> b!5043758 (=> (not res!2148629) (not e!3149614))))

(assert (=> b!5043758 (= res!2148629 (<= (- (height!2099 (left!42709 (left!42709 t!4198))) (height!2099 (right!43039 (left!42709 t!4198)))) 1))))

(declare-fun b!5043759 () Bool)

(declare-fun res!2148625 () Bool)

(assert (=> b!5043759 (=> (not res!2148625) (not e!3149614))))

(assert (=> b!5043759 (= res!2148625 (isBalanced!4382 (right!43039 (left!42709 t!4198))))))

(declare-fun b!5043760 () Bool)

(assert (=> b!5043760 (= e!3149615 e!3149614)))

(declare-fun res!2148626 () Bool)

(assert (=> b!5043760 (=> (not res!2148626) (not e!3149614))))

(assert (=> b!5043760 (= res!2148626 (<= (- 1) (- (height!2099 (left!42709 (left!42709 t!4198))) (height!2099 (right!43039 (left!42709 t!4198))))))))

(declare-fun b!5043761 () Bool)

(declare-fun res!2148627 () Bool)

(assert (=> b!5043761 (=> (not res!2148627) (not e!3149614))))

(assert (=> b!5043761 (= res!2148627 (not (isEmpty!31546 (left!42709 (left!42709 t!4198)))))))

(assert (= (and d!1623148 (not res!2148624)) b!5043760))

(assert (= (and b!5043760 res!2148626) b!5043758))

(assert (= (and b!5043758 res!2148629) b!5043757))

(assert (= (and b!5043757 res!2148628) b!5043759))

(assert (= (and b!5043759 res!2148625) b!5043761))

(assert (= (and b!5043761 res!2148627) b!5043756))

(declare-fun m!6078518 () Bool)

(assert (=> b!5043760 m!6078518))

(declare-fun m!6078520 () Bool)

(assert (=> b!5043760 m!6078520))

(declare-fun m!6078522 () Bool)

(assert (=> b!5043759 m!6078522))

(declare-fun m!6078524 () Bool)

(assert (=> b!5043757 m!6078524))

(declare-fun m!6078526 () Bool)

(assert (=> b!5043761 m!6078526))

(assert (=> b!5043758 m!6078518))

(assert (=> b!5043758 m!6078520))

(declare-fun m!6078528 () Bool)

(assert (=> b!5043756 m!6078528))

(assert (=> b!5043349 d!1623148))

(declare-fun b!5043763 () Bool)

(declare-fun e!3149620 () Int)

(assert (=> b!5043763 (= e!3149620 i!618)))

(declare-fun d!1623150 () Bool)

(declare-fun e!3149618 () Bool)

(assert (=> d!1623150 e!3149618))

(declare-fun res!2148630 () Bool)

(assert (=> d!1623150 (=> (not res!2148630) (not e!3149618))))

(declare-fun lt!2084853 () List!58432)

(assert (=> d!1623150 (= res!2148630 (= ((_ map implies) (content!10361 lt!2084853) (content!10361 (list!18927 t!4198))) ((as const (InoxSet T!104236)) true)))))

(declare-fun e!3149617 () List!58432)

(assert (=> d!1623150 (= lt!2084853 e!3149617)))

(declare-fun c!864451 () Bool)

(assert (=> d!1623150 (= c!864451 (or ((_ is Nil!58308) (list!18927 t!4198)) (<= i!618 0)))))

(assert (=> d!1623150 (= (take!831 (list!18927 t!4198) i!618) lt!2084853)))

(declare-fun b!5043764 () Bool)

(assert (=> b!5043764 (= e!3149617 (Cons!58308 (h!64756 (list!18927 t!4198)) (take!831 (t!371009 (list!18927 t!4198)) (- i!618 1))))))

(declare-fun b!5043765 () Bool)

(declare-fun e!3149619 () Int)

(assert (=> b!5043765 (= e!3149618 (= (size!38919 lt!2084853) e!3149619))))

(declare-fun c!864449 () Bool)

(assert (=> b!5043765 (= c!864449 (<= i!618 0))))

(declare-fun b!5043766 () Bool)

(assert (=> b!5043766 (= e!3149619 0)))

(declare-fun b!5043767 () Bool)

(assert (=> b!5043767 (= e!3149619 e!3149620)))

(declare-fun c!864450 () Bool)

(assert (=> b!5043767 (= c!864450 (>= i!618 (size!38919 (list!18927 t!4198))))))

(declare-fun b!5043768 () Bool)

(assert (=> b!5043768 (= e!3149620 (size!38919 (list!18927 t!4198)))))

(declare-fun b!5043769 () Bool)

(assert (=> b!5043769 (= e!3149617 Nil!58308)))

(assert (= (and d!1623150 c!864451) b!5043769))

(assert (= (and d!1623150 (not c!864451)) b!5043764))

(assert (= (and d!1623150 res!2148630) b!5043765))

(assert (= (and b!5043765 c!864449) b!5043766))

(assert (= (and b!5043765 (not c!864449)) b!5043767))

(assert (= (and b!5043767 c!864450) b!5043768))

(assert (= (and b!5043767 (not c!864450)) b!5043763))

(assert (=> b!5043764 m!6078410))

(assert (=> b!5043768 m!6077894))

(assert (=> b!5043768 m!6077946))

(declare-fun m!6078536 () Bool)

(assert (=> d!1623150 m!6078536))

(assert (=> d!1623150 m!6077894))

(declare-fun m!6078538 () Bool)

(assert (=> d!1623150 m!6078538))

(assert (=> b!5043767 m!6077894))

(assert (=> b!5043767 m!6077946))

(declare-fun m!6078540 () Bool)

(assert (=> b!5043765 m!6078540))

(assert (=> b!5043311 d!1623150))

(assert (=> b!5043445 d!1623048))

(assert (=> b!5043445 d!1623050))

(assert (=> bm!351440 d!1622942))

(declare-fun d!1623158 () Bool)

(declare-fun lt!2084854 () Bool)

(assert (=> d!1623158 (= lt!2084854 (isEmpty!31547 (list!18927 (left!42709 lt!2084760))))))

(assert (=> d!1623158 (= lt!2084854 (= (size!38918 (left!42709 lt!2084760)) 0))))

(assert (=> d!1623158 (= (isEmpty!31546 (left!42709 lt!2084760)) lt!2084854)))

(declare-fun bs!1189060 () Bool)

(assert (= bs!1189060 d!1623158))

(assert (=> bs!1189060 m!6077964))

(assert (=> bs!1189060 m!6077964))

(declare-fun m!6078546 () Bool)

(assert (=> bs!1189060 m!6078546))

(declare-fun m!6078548 () Bool)

(assert (=> bs!1189060 m!6078548))

(assert (=> b!5043380 d!1623158))

(declare-fun d!1623162 () Bool)

(declare-fun c!864454 () Bool)

(assert (=> d!1623162 (= c!864454 ((_ is Node!15520) (left!42709 (right!43039 t!4198))))))

(declare-fun e!3149625 () Bool)

(assert (=> d!1623162 (= (inv!77195 (left!42709 (right!43039 t!4198))) e!3149625)))

(declare-fun b!5043776 () Bool)

(assert (=> b!5043776 (= e!3149625 (inv!77196 (left!42709 (right!43039 t!4198))))))

(declare-fun b!5043777 () Bool)

(declare-fun e!3149626 () Bool)

(assert (=> b!5043777 (= e!3149625 e!3149626)))

(declare-fun res!2148633 () Bool)

(assert (=> b!5043777 (= res!2148633 (not ((_ is Leaf!25744) (left!42709 (right!43039 t!4198)))))))

(assert (=> b!5043777 (=> res!2148633 e!3149626)))

(declare-fun b!5043778 () Bool)

(assert (=> b!5043778 (= e!3149626 (inv!77197 (left!42709 (right!43039 t!4198))))))

(assert (= (and d!1623162 c!864454) b!5043776))

(assert (= (and d!1623162 (not c!864454)) b!5043777))

(assert (= (and b!5043777 (not res!2148633)) b!5043778))

(declare-fun m!6078550 () Bool)

(assert (=> b!5043776 m!6078550))

(declare-fun m!6078552 () Bool)

(assert (=> b!5043778 m!6078552))

(assert (=> b!5043567 d!1623162))

(declare-fun d!1623164 () Bool)

(declare-fun c!864455 () Bool)

(assert (=> d!1623164 (= c!864455 ((_ is Node!15520) (right!43039 (right!43039 t!4198))))))

(declare-fun e!3149627 () Bool)

(assert (=> d!1623164 (= (inv!77195 (right!43039 (right!43039 t!4198))) e!3149627)))

(declare-fun b!5043779 () Bool)

(assert (=> b!5043779 (= e!3149627 (inv!77196 (right!43039 (right!43039 t!4198))))))

(declare-fun b!5043780 () Bool)

(declare-fun e!3149628 () Bool)

(assert (=> b!5043780 (= e!3149627 e!3149628)))

(declare-fun res!2148634 () Bool)

(assert (=> b!5043780 (= res!2148634 (not ((_ is Leaf!25744) (right!43039 (right!43039 t!4198)))))))

(assert (=> b!5043780 (=> res!2148634 e!3149628)))

(declare-fun b!5043781 () Bool)

(assert (=> b!5043781 (= e!3149628 (inv!77197 (right!43039 (right!43039 t!4198))))))

(assert (= (and d!1623164 c!864455) b!5043779))

(assert (= (and d!1623164 (not c!864455)) b!5043780))

(assert (= (and b!5043780 (not res!2148634)) b!5043781))

(declare-fun m!6078554 () Bool)

(assert (=> b!5043779 m!6078554))

(declare-fun m!6078556 () Bool)

(assert (=> b!5043781 m!6078556))

(assert (=> b!5043567 d!1623164))

(declare-fun d!1623166 () Bool)

(declare-fun res!2148635 () Bool)

(declare-fun e!3149629 () Bool)

(assert (=> d!1623166 (=> (not res!2148635) (not e!3149629))))

(assert (=> d!1623166 (= res!2148635 (= (csize!31270 (right!43039 t!4198)) (+ (size!38918 (left!42709 (right!43039 t!4198))) (size!38918 (right!43039 (right!43039 t!4198))))))))

(assert (=> d!1623166 (= (inv!77196 (right!43039 t!4198)) e!3149629)))

(declare-fun b!5043782 () Bool)

(declare-fun res!2148636 () Bool)

(assert (=> b!5043782 (=> (not res!2148636) (not e!3149629))))

(assert (=> b!5043782 (= res!2148636 (and (not (= (left!42709 (right!43039 t!4198)) Empty!15520)) (not (= (right!43039 (right!43039 t!4198)) Empty!15520))))))

(declare-fun b!5043783 () Bool)

(declare-fun res!2148637 () Bool)

(assert (=> b!5043783 (=> (not res!2148637) (not e!3149629))))

(assert (=> b!5043783 (= res!2148637 (= (cheight!15731 (right!43039 t!4198)) (+ (max!0 (height!2099 (left!42709 (right!43039 t!4198))) (height!2099 (right!43039 (right!43039 t!4198)))) 1)))))

(declare-fun b!5043784 () Bool)

(assert (=> b!5043784 (= e!3149629 (<= 0 (cheight!15731 (right!43039 t!4198))))))

(assert (= (and d!1623166 res!2148635) b!5043782))

(assert (= (and b!5043782 res!2148636) b!5043783))

(assert (= (and b!5043783 res!2148637) b!5043784))

(declare-fun m!6078558 () Bool)

(assert (=> d!1623166 m!6078558))

(declare-fun m!6078560 () Bool)

(assert (=> d!1623166 m!6078560))

(declare-fun m!6078562 () Bool)

(assert (=> b!5043783 m!6078562))

(declare-fun m!6078564 () Bool)

(assert (=> b!5043783 m!6078564))

(assert (=> b!5043783 m!6078562))

(assert (=> b!5043783 m!6078564))

(declare-fun m!6078566 () Bool)

(assert (=> b!5043783 m!6078566))

(assert (=> b!5043388 d!1623166))

(assert (=> b!5043316 d!1623002))

(declare-fun d!1623168 () Bool)

(declare-fun res!2148638 () Bool)

(declare-fun e!3149632 () Bool)

(assert (=> d!1623168 (=> (not res!2148638) (not e!3149632))))

(assert (=> d!1623168 (= res!2148638 (<= (size!38919 (list!18926 (xs!18846 (left!42709 t!4198)))) 512))))

(assert (=> d!1623168 (= (inv!77197 (left!42709 t!4198)) e!3149632)))

(declare-fun b!5043789 () Bool)

(declare-fun res!2148639 () Bool)

(assert (=> b!5043789 (=> (not res!2148639) (not e!3149632))))

(assert (=> b!5043789 (= res!2148639 (= (csize!31271 (left!42709 t!4198)) (size!38919 (list!18926 (xs!18846 (left!42709 t!4198))))))))

(declare-fun b!5043790 () Bool)

(assert (=> b!5043790 (= e!3149632 (and (> (csize!31271 (left!42709 t!4198)) 0) (<= (csize!31271 (left!42709 t!4198)) 512)))))

(assert (= (and d!1623168 res!2148638) b!5043789))

(assert (= (and b!5043789 res!2148639) b!5043790))

(assert (=> d!1623168 m!6078308))

(assert (=> d!1623168 m!6078308))

(declare-fun m!6078568 () Bool)

(assert (=> d!1623168 m!6078568))

(assert (=> b!5043789 m!6078308))

(assert (=> b!5043789 m!6078308))

(assert (=> b!5043789 m!6078568))

(assert (=> b!5043387 d!1623168))

(declare-fun d!1623170 () Bool)

(declare-fun lt!2084855 () Bool)

(assert (=> d!1623170 (= lt!2084855 (isEmpty!31547 (list!18927 (left!42709 t!4198))))))

(assert (=> d!1623170 (= lt!2084855 (= (size!38918 (left!42709 t!4198)) 0))))

(assert (=> d!1623170 (= (isEmpty!31546 (left!42709 t!4198)) lt!2084855)))

(declare-fun bs!1189061 () Bool)

(assert (= bs!1189061 d!1623170))

(assert (=> bs!1189061 m!6077984))

(assert (=> bs!1189061 m!6077984))

(declare-fun m!6078570 () Bool)

(assert (=> bs!1189061 m!6078570))

(assert (=> bs!1189061 m!6078328))

(assert (=> b!5043353 d!1623170))

(assert (=> b!5043431 d!1622942))

(declare-fun d!1623172 () Bool)

(declare-fun res!2148640 () Bool)

(declare-fun e!3149633 () Bool)

(assert (=> d!1623172 (=> (not res!2148640) (not e!3149633))))

(assert (=> d!1623172 (= res!2148640 (= (csize!31270 (left!42709 t!4198)) (+ (size!38918 (left!42709 (left!42709 t!4198))) (size!38918 (right!43039 (left!42709 t!4198))))))))

(assert (=> d!1623172 (= (inv!77196 (left!42709 t!4198)) e!3149633)))

(declare-fun b!5043791 () Bool)

(declare-fun res!2148641 () Bool)

(assert (=> b!5043791 (=> (not res!2148641) (not e!3149633))))

(assert (=> b!5043791 (= res!2148641 (and (not (= (left!42709 (left!42709 t!4198)) Empty!15520)) (not (= (right!43039 (left!42709 t!4198)) Empty!15520))))))

(declare-fun b!5043792 () Bool)

(declare-fun res!2148642 () Bool)

(assert (=> b!5043792 (=> (not res!2148642) (not e!3149633))))

(assert (=> b!5043792 (= res!2148642 (= (cheight!15731 (left!42709 t!4198)) (+ (max!0 (height!2099 (left!42709 (left!42709 t!4198))) (height!2099 (right!43039 (left!42709 t!4198)))) 1)))))

(declare-fun b!5043793 () Bool)

(assert (=> b!5043793 (= e!3149633 (<= 0 (cheight!15731 (left!42709 t!4198))))))

(assert (= (and d!1623172 res!2148640) b!5043791))

(assert (= (and b!5043791 res!2148641) b!5043792))

(assert (= (and b!5043792 res!2148642) b!5043793))

(declare-fun m!6078572 () Bool)

(assert (=> d!1623172 m!6078572))

(declare-fun m!6078574 () Bool)

(assert (=> d!1623172 m!6078574))

(assert (=> b!5043792 m!6078518))

(assert (=> b!5043792 m!6078520))

(assert (=> b!5043792 m!6078518))

(assert (=> b!5043792 m!6078520))

(declare-fun m!6078576 () Bool)

(assert (=> b!5043792 m!6078576))

(assert (=> b!5043385 d!1623172))

(declare-fun b!5043794 () Bool)

(declare-fun e!3149634 () Bool)

(assert (=> b!5043794 (= e!3149634 (not (isEmpty!31546 (right!43039 (right!43039 t!4198)))))))

(declare-fun b!5043795 () Bool)

(declare-fun res!2148647 () Bool)

(assert (=> b!5043795 (=> (not res!2148647) (not e!3149634))))

(assert (=> b!5043795 (= res!2148647 (isBalanced!4382 (left!42709 (right!43039 t!4198))))))

(declare-fun d!1623174 () Bool)

(declare-fun res!2148643 () Bool)

(declare-fun e!3149635 () Bool)

(assert (=> d!1623174 (=> res!2148643 e!3149635)))

(assert (=> d!1623174 (= res!2148643 (not ((_ is Node!15520) (right!43039 t!4198))))))

(assert (=> d!1623174 (= (isBalanced!4382 (right!43039 t!4198)) e!3149635)))

(declare-fun b!5043796 () Bool)

(declare-fun res!2148648 () Bool)

(assert (=> b!5043796 (=> (not res!2148648) (not e!3149634))))

(assert (=> b!5043796 (= res!2148648 (<= (- (height!2099 (left!42709 (right!43039 t!4198))) (height!2099 (right!43039 (right!43039 t!4198)))) 1))))

(declare-fun b!5043797 () Bool)

(declare-fun res!2148644 () Bool)

(assert (=> b!5043797 (=> (not res!2148644) (not e!3149634))))

(assert (=> b!5043797 (= res!2148644 (isBalanced!4382 (right!43039 (right!43039 t!4198))))))

(declare-fun b!5043798 () Bool)

(assert (=> b!5043798 (= e!3149635 e!3149634)))

(declare-fun res!2148645 () Bool)

(assert (=> b!5043798 (=> (not res!2148645) (not e!3149634))))

(assert (=> b!5043798 (= res!2148645 (<= (- 1) (- (height!2099 (left!42709 (right!43039 t!4198))) (height!2099 (right!43039 (right!43039 t!4198))))))))

(declare-fun b!5043799 () Bool)

(declare-fun res!2148646 () Bool)

(assert (=> b!5043799 (=> (not res!2148646) (not e!3149634))))

(assert (=> b!5043799 (= res!2148646 (not (isEmpty!31546 (left!42709 (right!43039 t!4198)))))))

(assert (= (and d!1623174 (not res!2148643)) b!5043798))

(assert (= (and b!5043798 res!2148645) b!5043796))

(assert (= (and b!5043796 res!2148648) b!5043795))

(assert (= (and b!5043795 res!2148647) b!5043797))

(assert (= (and b!5043797 res!2148644) b!5043799))

(assert (= (and b!5043799 res!2148646) b!5043794))

(assert (=> b!5043798 m!6078562))

(assert (=> b!5043798 m!6078564))

(declare-fun m!6078582 () Bool)

(assert (=> b!5043797 m!6078582))

(declare-fun m!6078584 () Bool)

(assert (=> b!5043795 m!6078584))

(declare-fun m!6078586 () Bool)

(assert (=> b!5043799 m!6078586))

(assert (=> b!5043796 m!6078562))

(assert (=> b!5043796 m!6078564))

(declare-fun m!6078588 () Bool)

(assert (=> b!5043794 m!6078588))

(assert (=> b!5043351 d!1623174))

(declare-fun b!5043804 () Bool)

(declare-fun e!3149642 () List!58432)

(assert (=> b!5043804 (= e!3149642 (list!18927 t!4198))))

(declare-fun b!5043805 () Bool)

(declare-fun e!3149639 () Bool)

(declare-fun lt!2084856 () List!58432)

(declare-fun e!3149638 () Int)

(assert (=> b!5043805 (= e!3149639 (= (size!38919 lt!2084856) e!3149638))))

(declare-fun c!864462 () Bool)

(assert (=> b!5043805 (= c!864462 (<= i!618 0))))

(declare-fun b!5043806 () Bool)

(declare-fun e!3149641 () Int)

(assert (=> b!5043806 (= e!3149638 e!3149641)))

(declare-fun c!864463 () Bool)

(declare-fun call!351447 () Int)

(assert (=> b!5043806 (= c!864463 (>= i!618 call!351447))))

(declare-fun b!5043807 () Bool)

(assert (=> b!5043807 (= e!3149638 call!351447)))

(declare-fun b!5043808 () Bool)

(assert (=> b!5043808 (= e!3149641 0)))

(declare-fun bm!351442 () Bool)

(assert (=> bm!351442 (= call!351447 (size!38919 (list!18927 t!4198)))))

(declare-fun b!5043810 () Bool)

(assert (=> b!5043810 (= e!3149642 (drop!2638 (t!371009 (list!18927 t!4198)) (- i!618 1)))))

(declare-fun b!5043811 () Bool)

(declare-fun e!3149640 () List!58432)

(assert (=> b!5043811 (= e!3149640 e!3149642)))

(declare-fun c!864461 () Bool)

(assert (=> b!5043811 (= c!864461 (<= i!618 0))))

(declare-fun b!5043812 () Bool)

(assert (=> b!5043812 (= e!3149641 (- call!351447 i!618))))

(declare-fun b!5043809 () Bool)

(assert (=> b!5043809 (= e!3149640 Nil!58308)))

(declare-fun d!1623178 () Bool)

(assert (=> d!1623178 e!3149639))

(declare-fun res!2148649 () Bool)

(assert (=> d!1623178 (=> (not res!2148649) (not e!3149639))))

(assert (=> d!1623178 (= res!2148649 (= ((_ map implies) (content!10361 lt!2084856) (content!10361 (list!18927 t!4198))) ((as const (InoxSet T!104236)) true)))))

(assert (=> d!1623178 (= lt!2084856 e!3149640)))

(declare-fun c!864460 () Bool)

(assert (=> d!1623178 (= c!864460 ((_ is Nil!58308) (list!18927 t!4198)))))

(assert (=> d!1623178 (= (drop!2638 (list!18927 t!4198) i!618) lt!2084856)))

(assert (= (and d!1623178 c!864460) b!5043809))

(assert (= (and d!1623178 (not c!864460)) b!5043811))

(assert (= (and b!5043811 c!864461) b!5043804))

(assert (= (and b!5043811 (not c!864461)) b!5043810))

(assert (= (and d!1623178 res!2148649) b!5043805))

(assert (= (and b!5043805 c!864462) b!5043807))

(assert (= (and b!5043805 (not c!864462)) b!5043806))

(assert (= (and b!5043806 c!864463) b!5043808))

(assert (= (and b!5043806 (not c!864463)) b!5043812))

(assert (= (or b!5043807 b!5043806 b!5043812) bm!351442))

(declare-fun m!6078598 () Bool)

(assert (=> b!5043805 m!6078598))

(assert (=> bm!351442 m!6077894))

(assert (=> bm!351442 m!6077946))

(assert (=> b!5043810 m!6078414))

(declare-fun m!6078600 () Bool)

(assert (=> d!1623178 m!6078600))

(assert (=> d!1623178 m!6077894))

(assert (=> d!1623178 m!6078538))

(assert (=> b!5043313 d!1623178))

(declare-fun b!5043819 () Bool)

(declare-fun e!3149649 () Int)

(assert (=> b!5043819 (= e!3149649 (- i!618 0))))

(declare-fun d!1623184 () Bool)

(declare-fun e!3149647 () Bool)

(assert (=> d!1623184 e!3149647))

(declare-fun res!2148652 () Bool)

(assert (=> d!1623184 (=> (not res!2148652) (not e!3149647))))

(declare-fun lt!2084860 () List!58432)

(assert (=> d!1623184 (= res!2148652 (= ((_ map implies) (content!10361 lt!2084860) (content!10361 (drop!2638 lt!2084761 0))) ((as const (InoxSet T!104236)) true)))))

(declare-fun e!3149646 () List!58432)

(assert (=> d!1623184 (= lt!2084860 e!3149646)))

(declare-fun c!864468 () Bool)

(assert (=> d!1623184 (= c!864468 (or ((_ is Nil!58308) (drop!2638 lt!2084761 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1623184 (= (take!831 (drop!2638 lt!2084761 0) (- i!618 0)) lt!2084860)))

(declare-fun b!5043820 () Bool)

(assert (=> b!5043820 (= e!3149646 (Cons!58308 (h!64756 (drop!2638 lt!2084761 0)) (take!831 (t!371009 (drop!2638 lt!2084761 0)) (- (- i!618 0) 1))))))

(declare-fun b!5043821 () Bool)

(declare-fun e!3149648 () Int)

(assert (=> b!5043821 (= e!3149647 (= (size!38919 lt!2084860) e!3149648))))

(declare-fun c!864466 () Bool)

(assert (=> b!5043821 (= c!864466 (<= (- i!618 0) 0))))

(declare-fun b!5043822 () Bool)

(assert (=> b!5043822 (= e!3149648 0)))

(declare-fun b!5043823 () Bool)

(assert (=> b!5043823 (= e!3149648 e!3149649)))

(declare-fun c!864467 () Bool)

(assert (=> b!5043823 (= c!864467 (>= (- i!618 0) (size!38919 (drop!2638 lt!2084761 0))))))

(declare-fun b!5043824 () Bool)

(assert (=> b!5043824 (= e!3149649 (size!38919 (drop!2638 lt!2084761 0)))))

(declare-fun b!5043825 () Bool)

(assert (=> b!5043825 (= e!3149646 Nil!58308)))

(assert (= (and d!1623184 c!864468) b!5043825))

(assert (= (and d!1623184 (not c!864468)) b!5043820))

(assert (= (and d!1623184 res!2148652) b!5043821))

(assert (= (and b!5043821 c!864466) b!5043822))

(assert (= (and b!5043821 (not c!864466)) b!5043823))

(assert (= (and b!5043823 c!864467) b!5043824))

(assert (= (and b!5043823 (not c!864467)) b!5043819))

(declare-fun m!6078608 () Bool)

(assert (=> b!5043820 m!6078608))

(assert (=> b!5043824 m!6077936))

(declare-fun m!6078612 () Bool)

(assert (=> b!5043824 m!6078612))

(declare-fun m!6078614 () Bool)

(assert (=> d!1623184 m!6078614))

(assert (=> d!1623184 m!6077936))

(declare-fun m!6078616 () Bool)

(assert (=> d!1623184 m!6078616))

(assert (=> b!5043823 m!6077936))

(assert (=> b!5043823 m!6078612))

(declare-fun m!6078618 () Bool)

(assert (=> b!5043821 m!6078618))

(assert (=> d!1622938 d!1623184))

(declare-fun b!5043826 () Bool)

(declare-fun e!3149654 () List!58432)

(assert (=> b!5043826 (= e!3149654 lt!2084761)))

(declare-fun b!5043827 () Bool)

(declare-fun e!3149651 () Bool)

(declare-fun lt!2084861 () List!58432)

(declare-fun e!3149650 () Int)

(assert (=> b!5043827 (= e!3149651 (= (size!38919 lt!2084861) e!3149650))))

(declare-fun c!864471 () Bool)

(assert (=> b!5043827 (= c!864471 (<= 0 0))))

(declare-fun b!5043828 () Bool)

(declare-fun e!3149653 () Int)

(assert (=> b!5043828 (= e!3149650 e!3149653)))

(declare-fun c!864472 () Bool)

(declare-fun call!351448 () Int)

(assert (=> b!5043828 (= c!864472 (>= 0 call!351448))))

(declare-fun b!5043829 () Bool)

(assert (=> b!5043829 (= e!3149650 call!351448)))

(declare-fun b!5043830 () Bool)

(assert (=> b!5043830 (= e!3149653 0)))

(declare-fun bm!351443 () Bool)

(assert (=> bm!351443 (= call!351448 (size!38919 lt!2084761))))

(declare-fun b!5043832 () Bool)

(assert (=> b!5043832 (= e!3149654 (drop!2638 (t!371009 lt!2084761) (- 0 1)))))

(declare-fun b!5043833 () Bool)

(declare-fun e!3149652 () List!58432)

(assert (=> b!5043833 (= e!3149652 e!3149654)))

(declare-fun c!864470 () Bool)

(assert (=> b!5043833 (= c!864470 (<= 0 0))))

(declare-fun b!5043834 () Bool)

(assert (=> b!5043834 (= e!3149653 (- call!351448 0))))

(declare-fun b!5043831 () Bool)

(assert (=> b!5043831 (= e!3149652 Nil!58308)))

(declare-fun d!1623188 () Bool)

(assert (=> d!1623188 e!3149651))

(declare-fun res!2148653 () Bool)

(assert (=> d!1623188 (=> (not res!2148653) (not e!3149651))))

(assert (=> d!1623188 (= res!2148653 (= ((_ map implies) (content!10361 lt!2084861) (content!10361 lt!2084761)) ((as const (InoxSet T!104236)) true)))))

(assert (=> d!1623188 (= lt!2084861 e!3149652)))

(declare-fun c!864469 () Bool)

(assert (=> d!1623188 (= c!864469 ((_ is Nil!58308) lt!2084761))))

(assert (=> d!1623188 (= (drop!2638 lt!2084761 0) lt!2084861)))

(assert (= (and d!1623188 c!864469) b!5043831))

(assert (= (and d!1623188 (not c!864469)) b!5043833))

(assert (= (and b!5043833 c!864470) b!5043826))

(assert (= (and b!5043833 (not c!864470)) b!5043832))

(assert (= (and d!1623188 res!2148653) b!5043827))

(assert (= (and b!5043827 c!864471) b!5043829))

(assert (= (and b!5043827 (not c!864471)) b!5043828))

(assert (= (and b!5043828 c!864472) b!5043830))

(assert (= (and b!5043828 (not c!864472)) b!5043834))

(assert (= (or b!5043829 b!5043828 b!5043834) bm!351443))

(declare-fun m!6078624 () Bool)

(assert (=> b!5043827 m!6078624))

(assert (=> bm!351443 m!6077928))

(declare-fun m!6078626 () Bool)

(assert (=> b!5043832 m!6078626))

(declare-fun m!6078628 () Bool)

(assert (=> d!1623188 m!6078628))

(assert (=> d!1623188 m!6078092))

(assert (=> d!1622938 d!1623188))

(declare-fun b!5043842 () Bool)

(declare-fun e!3149658 () Bool)

(declare-fun tp!1411434 () Bool)

(assert (=> b!5043842 (= e!3149658 (and tp_is_empty!36803 tp!1411434))))

(assert (=> b!5043566 (= tp!1411420 e!3149658)))

(assert (= (and b!5043566 ((_ is Cons!58308) (innerList!15608 (xs!18846 (left!42709 t!4198))))) b!5043842))

(declare-fun tp!1411436 () Bool)

(declare-fun tp!1411437 () Bool)

(declare-fun e!3149659 () Bool)

(declare-fun b!5043843 () Bool)

(assert (=> b!5043843 (= e!3149659 (and (inv!77195 (left!42709 (left!42709 (left!42709 t!4198)))) tp!1411436 (inv!77195 (right!43039 (left!42709 (left!42709 t!4198)))) tp!1411437))))

(declare-fun b!5043845 () Bool)

(declare-fun e!3149660 () Bool)

(declare-fun tp!1411435 () Bool)

(assert (=> b!5043845 (= e!3149660 tp!1411435)))

(declare-fun b!5043844 () Bool)

(assert (=> b!5043844 (= e!3149659 (and (inv!77194 (xs!18846 (left!42709 (left!42709 t!4198)))) e!3149660))))

(assert (=> b!5043564 (= tp!1411421 (and (inv!77195 (left!42709 (left!42709 t!4198))) e!3149659))))

(assert (= (and b!5043564 ((_ is Node!15520) (left!42709 (left!42709 t!4198)))) b!5043843))

(assert (= b!5043844 b!5043845))

(assert (= (and b!5043564 ((_ is Leaf!25744) (left!42709 (left!42709 t!4198)))) b!5043844))

(declare-fun m!6078632 () Bool)

(assert (=> b!5043843 m!6078632))

(declare-fun m!6078634 () Bool)

(assert (=> b!5043843 m!6078634))

(declare-fun m!6078636 () Bool)

(assert (=> b!5043844 m!6078636))

(assert (=> b!5043564 m!6078186))

(declare-fun e!3149661 () Bool)

(declare-fun tp!1411440 () Bool)

(declare-fun tp!1411439 () Bool)

(declare-fun b!5043846 () Bool)

(assert (=> b!5043846 (= e!3149661 (and (inv!77195 (left!42709 (right!43039 (left!42709 t!4198)))) tp!1411439 (inv!77195 (right!43039 (right!43039 (left!42709 t!4198)))) tp!1411440))))

(declare-fun b!5043848 () Bool)

(declare-fun e!3149662 () Bool)

(declare-fun tp!1411438 () Bool)

(assert (=> b!5043848 (= e!3149662 tp!1411438)))

(declare-fun b!5043847 () Bool)

(assert (=> b!5043847 (= e!3149661 (and (inv!77194 (xs!18846 (right!43039 (left!42709 t!4198)))) e!3149662))))

(assert (=> b!5043564 (= tp!1411422 (and (inv!77195 (right!43039 (left!42709 t!4198))) e!3149661))))

(assert (= (and b!5043564 ((_ is Node!15520) (right!43039 (left!42709 t!4198)))) b!5043846))

(assert (= b!5043847 b!5043848))

(assert (= (and b!5043564 ((_ is Leaf!25744) (right!43039 (left!42709 t!4198)))) b!5043847))

(declare-fun m!6078650 () Bool)

(assert (=> b!5043846 m!6078650))

(declare-fun m!6078652 () Bool)

(assert (=> b!5043846 m!6078652))

(declare-fun m!6078654 () Bool)

(assert (=> b!5043847 m!6078654))

(assert (=> b!5043564 m!6078188))

(declare-fun b!5043851 () Bool)

(declare-fun e!3149664 () Bool)

(declare-fun tp!1411441 () Bool)

(assert (=> b!5043851 (= e!3149664 (and tp_is_empty!36803 tp!1411441))))

(assert (=> b!5043569 (= tp!1411423 e!3149664)))

(assert (= (and b!5043569 ((_ is Cons!58308) (innerList!15608 (xs!18846 (right!43039 t!4198))))) b!5043851))

(declare-fun b!5043852 () Bool)

(declare-fun e!3149665 () Bool)

(declare-fun tp!1411442 () Bool)

(assert (=> b!5043852 (= e!3149665 (and tp_is_empty!36803 tp!1411442))))

(assert (=> b!5043555 (= tp!1411413 e!3149665)))

(assert (= (and b!5043555 ((_ is Cons!58308) (t!371009 (innerList!15608 (xs!18846 t!4198))))) b!5043852))

(declare-fun tp!1411444 () Bool)

(declare-fun e!3149666 () Bool)

(declare-fun tp!1411445 () Bool)

(declare-fun b!5043853 () Bool)

(assert (=> b!5043853 (= e!3149666 (and (inv!77195 (left!42709 (left!42709 (right!43039 t!4198)))) tp!1411444 (inv!77195 (right!43039 (left!42709 (right!43039 t!4198)))) tp!1411445))))

(declare-fun b!5043855 () Bool)

(declare-fun e!3149667 () Bool)

(declare-fun tp!1411443 () Bool)

(assert (=> b!5043855 (= e!3149667 tp!1411443)))

(declare-fun b!5043854 () Bool)

(assert (=> b!5043854 (= e!3149666 (and (inv!77194 (xs!18846 (left!42709 (right!43039 t!4198)))) e!3149667))))

(assert (=> b!5043567 (= tp!1411424 (and (inv!77195 (left!42709 (right!43039 t!4198))) e!3149666))))

(assert (= (and b!5043567 ((_ is Node!15520) (left!42709 (right!43039 t!4198)))) b!5043853))

(assert (= b!5043854 b!5043855))

(assert (= (and b!5043567 ((_ is Leaf!25744) (left!42709 (right!43039 t!4198)))) b!5043854))

(declare-fun m!6078658 () Bool)

(assert (=> b!5043853 m!6078658))

(declare-fun m!6078660 () Bool)

(assert (=> b!5043853 m!6078660))

(declare-fun m!6078662 () Bool)

(assert (=> b!5043854 m!6078662))

(assert (=> b!5043567 m!6078192))

(declare-fun b!5043856 () Bool)

(declare-fun tp!1411447 () Bool)

(declare-fun e!3149668 () Bool)

(declare-fun tp!1411448 () Bool)

(assert (=> b!5043856 (= e!3149668 (and (inv!77195 (left!42709 (right!43039 (right!43039 t!4198)))) tp!1411447 (inv!77195 (right!43039 (right!43039 (right!43039 t!4198)))) tp!1411448))))

(declare-fun b!5043858 () Bool)

(declare-fun e!3149669 () Bool)

(declare-fun tp!1411446 () Bool)

(assert (=> b!5043858 (= e!3149669 tp!1411446)))

(declare-fun b!5043857 () Bool)

(assert (=> b!5043857 (= e!3149668 (and (inv!77194 (xs!18846 (right!43039 (right!43039 t!4198)))) e!3149669))))

(assert (=> b!5043567 (= tp!1411425 (and (inv!77195 (right!43039 (right!43039 t!4198))) e!3149668))))

(assert (= (and b!5043567 ((_ is Node!15520) (right!43039 (right!43039 t!4198)))) b!5043856))

(assert (= b!5043857 b!5043858))

(assert (= (and b!5043567 ((_ is Leaf!25744) (right!43039 (right!43039 t!4198)))) b!5043857))

(declare-fun m!6078664 () Bool)

(assert (=> b!5043856 m!6078664))

(declare-fun m!6078666 () Bool)

(assert (=> b!5043856 m!6078666))

(declare-fun m!6078668 () Bool)

(assert (=> b!5043857 m!6078668))

(assert (=> b!5043567 m!6078194))

(check-sat (not b!5043722) (not b!5043639) (not b!5043827) (not d!1623054) (not b!5043843) (not b!5043675) (not b!5043690) (not b!5043678) (not b!5043696) (not d!1623092) (not b!5043593) (not b!5043595) (not b!5043735) (not b!5043847) (not b!5043621) (not b!5043590) (not b!5043854) (not b!5043611) (not b!5043734) (not d!1623104) (not b!5043776) (not b!5043736) (not d!1623082) (not d!1623150) (not b!5043567) (not d!1623184) (not d!1623170) (not b!5043824) (not b!5043564) (not b!5043617) (not b!5043756) (not b!5043618) (not b!5043737) (not b!5043856) (not b!5043740) (not b!5043627) (not b!5043761) (not d!1623068) (not b!5043634) (not d!1623098) (not d!1623116) (not b!5043608) (not b!5043821) (not b!5043725) (not b!5043744) (not d!1623066) (not b!5043741) (not b!5043731) (not b!5043584) (not b!5043781) (not d!1623178) (not b!5043635) (not b!5043743) (not b!5043764) (not b!5043845) (not b!5043778) (not b!5043585) (not b!5043649) (not b!5043714) (not b!5043799) (not d!1623110) (not d!1623078) (not b!5043620) (not b!5043607) (not b!5043610) (not b!5043729) (not b!5043726) (not b!5043728) (not b!5043638) (not b!5043855) (not d!1623060) (not b!5043711) (not b!5043609) (not b!5043805) (not b!5043783) (not b!5043588) (not b!5043792) (not b!5043625) (not d!1623074) (not b!5043613) (not b!5043760) (not d!1623072) (not b!5043738) (not d!1623128) (not d!1623166) (not b!5043654) (not b!5043717) (not b!5043597) (not b!5043796) (not b!5043681) (not b!5043605) (not b!5043848) (not b!5043758) (not b!5043592) (not d!1623168) (not b!5043603) (not b!5043858) (not b!5043754) (not b!5043655) (not b!5043622) (not b!5043853) tp_is_empty!36803 (not b!5043716) (not d!1623096) (not b!5043779) (not b!5043739) (not b!5043768) (not bm!351443) (not b!5043823) (not b!5043580) (not d!1623094) (not b!5043795) (not b!5043747) (not b!5043623) (not b!5043641) (not d!1623138) (not b!5043589) (not b!5043701) (not b!5043579) (not bm!351442) (not b!5043759) (not b!5043846) (not d!1623146) (not b!5043789) (not b!5043652) (not b!5043794) (not d!1623144) (not bm!351441) (not b!5043713) (not b!5043798) (not b!5043712) (not b!5043619) (not b!5043629) (not b!5043857) (not b!5043832) (not b!5043757) (not d!1623172) (not b!5043721) (not d!1623108) (not d!1623024) (not b!5043624) (not b!5043852) (not d!1623188) (not b!5043753) (not b!5043679) (not d!1623038) (not b!5043630) (not b!5043797) (not b!5043820) (not d!1623114) (not b!5043742) (not b!5043851) (not b!5043745) (not b!5043844) (not d!1623158) (not b!5043682) (not d!1623026) (not b!5043842) (not b!5043732) (not d!1623090) (not b!5043810) (not b!5043765) (not b!5043748) (not b!5043606) (not b!5043767))
(check-sat)
