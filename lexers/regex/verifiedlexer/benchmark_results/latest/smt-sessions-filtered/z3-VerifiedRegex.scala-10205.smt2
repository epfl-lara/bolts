; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532642 () Bool)

(assert start!532642)

(declare-fun e!3144925 () Bool)

(declare-datatypes ((T!103984 0))(
  ( (T!103985 (val!23486 Int)) )
))
(declare-datatypes ((List!58396 0))(
  ( (Nil!58272) (Cons!58272 (h!64720 T!103984) (t!370857 List!58396)) )
))
(declare-fun lt!2083088 () List!58396)

(declare-fun b!5034789 () Bool)

(declare-fun lt!2083086 () List!58396)

(declare-datatypes ((tuple2!63182 0))(
  ( (tuple2!63183 (_1!34894 List!58396) (_2!34894 List!58396)) )
))
(declare-fun lt!2083084 () tuple2!63182)

(assert (=> b!5034789 (= e!3144925 (= lt!2083084 (tuple2!63183 lt!2083088 lt!2083086)))))

(declare-fun res!2145430 () Bool)

(declare-fun e!3144927 () Bool)

(assert (=> start!532642 (=> (not res!2145430) (not e!3144927))))

(declare-datatypes ((IArray!31029 0))(
  ( (IArray!31030 (innerList!15572 List!58396)) )
))
(declare-datatypes ((Conc!15484 0))(
  ( (Node!15484 (left!42655 Conc!15484) (right!42985 Conc!15484) (csize!31198 Int) (cheight!15695 Int)) (Leaf!25690 (xs!18810 IArray!31029) (csize!31199 Int)) (Empty!15484) )
))
(declare-fun t!4198 () Conc!15484)

(declare-fun isBalanced!4346 (Conc!15484) Bool)

(assert (=> start!532642 (= res!2145430 (isBalanced!4346 t!4198))))

(assert (=> start!532642 e!3144927))

(declare-fun e!3144923 () Bool)

(declare-fun inv!77002 (Conc!15484) Bool)

(assert (=> start!532642 (and (inv!77002 t!4198) e!3144923)))

(assert (=> start!532642 true))

(declare-fun b!5034790 () Bool)

(declare-fun lt!2083087 () tuple2!63182)

(declare-fun call!351175 () tuple2!63182)

(assert (=> b!5034790 (= lt!2083087 call!351175)))

(declare-fun e!3144926 () tuple2!63182)

(declare-fun call!351176 () List!58396)

(assert (=> b!5034790 (= e!3144926 (tuple2!63183 (_1!34894 lt!2083087) call!351176))))

(declare-fun b!5034791 () Bool)

(assert (=> b!5034791 (= e!3144925 (= lt!2083084 e!3144926))))

(declare-fun c!862280 () Bool)

(declare-fun i!618 () Int)

(declare-fun lt!2083083 () Int)

(assert (=> b!5034791 (= c!862280 (< i!618 lt!2083083))))

(declare-fun b!5034792 () Bool)

(declare-fun e!3144924 () Bool)

(assert (=> b!5034792 (= e!3144924 (isBalanced!4346 (left!42655 t!4198)))))

(declare-fun b!5034793 () Bool)

(declare-fun lt!2083089 () tuple2!63182)

(assert (=> b!5034793 (= lt!2083089 call!351175)))

(assert (=> b!5034793 (= e!3144926 (tuple2!63183 call!351176 (_2!34894 lt!2083089)))))

(declare-fun bm!351170 () Bool)

(declare-fun splitAtIndex!185 (List!58396 Int) tuple2!63182)

(assert (=> bm!351170 (= call!351175 (splitAtIndex!185 (ite c!862280 lt!2083088 lt!2083086) (ite c!862280 i!618 (- i!618 lt!2083083))))))

(declare-fun b!5034794 () Bool)

(assert (=> b!5034794 (= e!3144927 (not e!3144924))))

(declare-fun res!2145431 () Bool)

(assert (=> b!5034794 (=> res!2145431 e!3144924)))

(declare-fun lt!2083085 () Int)

(assert (=> b!5034794 (= res!2145431 (or (= lt!2083085 i!618) (>= i!618 lt!2083085)))))

(declare-fun size!38842 (Conc!15484) Int)

(assert (=> b!5034794 (= lt!2083085 (size!38842 (left!42655 t!4198)))))

(assert (=> b!5034794 e!3144925))

(declare-fun c!862281 () Bool)

(assert (=> b!5034794 (= c!862281 (= lt!2083083 i!618))))

(declare-fun ++!12699 (List!58396 List!58396) List!58396)

(assert (=> b!5034794 (= lt!2083084 (splitAtIndex!185 (++!12699 lt!2083088 lt!2083086) i!618))))

(declare-fun size!38843 (List!58396) Int)

(assert (=> b!5034794 (= lt!2083083 (size!38843 lt!2083088))))

(declare-datatypes ((Unit!149463 0))(
  ( (Unit!149464) )
))
(declare-fun lt!2083090 () Unit!149463)

(declare-fun splitAtLemma!60 (List!58396 List!58396 Int) Unit!149463)

(assert (=> b!5034794 (= lt!2083090 (splitAtLemma!60 lt!2083088 lt!2083086 i!618))))

(declare-fun list!18861 (Conc!15484) List!58396)

(assert (=> b!5034794 (= lt!2083086 (list!18861 (right!42985 t!4198)))))

(assert (=> b!5034794 (= lt!2083088 (list!18861 (left!42655 t!4198)))))

(declare-fun tp!1410144 () Bool)

(declare-fun b!5034795 () Bool)

(declare-fun tp!1410145 () Bool)

(assert (=> b!5034795 (= e!3144923 (and (inv!77002 (left!42655 t!4198)) tp!1410144 (inv!77002 (right!42985 t!4198)) tp!1410145))))

(declare-fun b!5034796 () Bool)

(declare-fun res!2145429 () Bool)

(assert (=> b!5034796 (=> (not res!2145429) (not e!3144927))))

(get-info :version)

(assert (=> b!5034796 (= res!2145429 (and (not ((_ is Empty!15484) t!4198)) (not ((_ is Leaf!25690) t!4198))))))

(declare-fun b!5034797 () Bool)

(declare-fun res!2145428 () Bool)

(assert (=> b!5034797 (=> (not res!2145428) (not e!3144927))))

(assert (=> b!5034797 (= res!2145428 (<= i!618 (size!38842 t!4198)))))

(declare-fun b!5034798 () Bool)

(declare-fun res!2145427 () Bool)

(assert (=> b!5034798 (=> (not res!2145427) (not e!3144927))))

(assert (=> b!5034798 (= res!2145427 (<= 0 i!618))))

(declare-fun bm!351171 () Bool)

(assert (=> bm!351171 (= call!351176 (++!12699 (ite c!862280 (_2!34894 lt!2083087) lt!2083088) (ite c!862280 lt!2083086 (_1!34894 lt!2083089))))))

(declare-fun b!5034799 () Bool)

(declare-fun e!3144928 () Bool)

(declare-fun tp!1410146 () Bool)

(assert (=> b!5034799 (= e!3144928 tp!1410146)))

(declare-fun b!5034800 () Bool)

(declare-fun inv!77003 (IArray!31029) Bool)

(assert (=> b!5034800 (= e!3144923 (and (inv!77003 (xs!18810 t!4198)) e!3144928))))

(assert (= (and start!532642 res!2145430) b!5034798))

(assert (= (and b!5034798 res!2145427) b!5034797))

(assert (= (and b!5034797 res!2145428) b!5034796))

(assert (= (and b!5034796 res!2145429) b!5034794))

(assert (= (and b!5034794 c!862281) b!5034789))

(assert (= (and b!5034794 (not c!862281)) b!5034791))

(assert (= (and b!5034791 c!862280) b!5034790))

(assert (= (and b!5034791 (not c!862280)) b!5034793))

(assert (= (or b!5034790 b!5034793) bm!351171))

(assert (= (or b!5034790 b!5034793) bm!351170))

(assert (= (and b!5034794 (not res!2145431)) b!5034792))

(assert (= (and start!532642 ((_ is Node!15484) t!4198)) b!5034795))

(assert (= b!5034800 b!5034799))

(assert (= (and start!532642 ((_ is Leaf!25690) t!4198)) b!5034800))

(declare-fun m!6069244 () Bool)

(assert (=> b!5034800 m!6069244))

(declare-fun m!6069246 () Bool)

(assert (=> b!5034794 m!6069246))

(declare-fun m!6069248 () Bool)

(assert (=> b!5034794 m!6069248))

(declare-fun m!6069250 () Bool)

(assert (=> b!5034794 m!6069250))

(declare-fun m!6069252 () Bool)

(assert (=> b!5034794 m!6069252))

(declare-fun m!6069254 () Bool)

(assert (=> b!5034794 m!6069254))

(declare-fun m!6069256 () Bool)

(assert (=> b!5034794 m!6069256))

(assert (=> b!5034794 m!6069248))

(declare-fun m!6069258 () Bool)

(assert (=> b!5034794 m!6069258))

(declare-fun m!6069260 () Bool)

(assert (=> b!5034795 m!6069260))

(declare-fun m!6069262 () Bool)

(assert (=> b!5034795 m!6069262))

(declare-fun m!6069264 () Bool)

(assert (=> b!5034792 m!6069264))

(declare-fun m!6069266 () Bool)

(assert (=> bm!351170 m!6069266))

(declare-fun m!6069268 () Bool)

(assert (=> b!5034797 m!6069268))

(declare-fun m!6069270 () Bool)

(assert (=> start!532642 m!6069270))

(declare-fun m!6069272 () Bool)

(assert (=> start!532642 m!6069272))

(declare-fun m!6069274 () Bool)

(assert (=> bm!351171 m!6069274))

(check-sat (not bm!351170) (not b!5034800) (not b!5034792) (not b!5034795) (not b!5034794) (not b!5034799) (not bm!351171) (not start!532642) (not b!5034797))
(check-sat)
(get-model)

(declare-fun b!5034829 () Bool)

(declare-fun res!2145443 () Bool)

(declare-fun e!3144942 () Bool)

(assert (=> b!5034829 (=> (not res!2145443) (not e!3144942))))

(declare-fun lt!2083099 () List!58396)

(assert (=> b!5034829 (= res!2145443 (= (size!38843 lt!2083099) (+ (size!38843 (ite c!862280 (_2!34894 lt!2083087) lt!2083088)) (size!38843 (ite c!862280 lt!2083086 (_1!34894 lt!2083089))))))))

(declare-fun b!5034830 () Bool)

(assert (=> b!5034830 (= e!3144942 (or (not (= (ite c!862280 lt!2083086 (_1!34894 lt!2083089)) Nil!58272)) (= lt!2083099 (ite c!862280 (_2!34894 lt!2083087) lt!2083088))))))

(declare-fun e!3144943 () List!58396)

(declare-fun b!5034827 () Bool)

(assert (=> b!5034827 (= e!3144943 (ite c!862280 lt!2083086 (_1!34894 lt!2083089)))))

(declare-fun d!1619888 () Bool)

(assert (=> d!1619888 e!3144942))

(declare-fun res!2145442 () Bool)

(assert (=> d!1619888 (=> (not res!2145442) (not e!3144942))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10336 (List!58396) (InoxSet T!103984))

(assert (=> d!1619888 (= res!2145442 (= (content!10336 lt!2083099) ((_ map or) (content!10336 (ite c!862280 (_2!34894 lt!2083087) lt!2083088)) (content!10336 (ite c!862280 lt!2083086 (_1!34894 lt!2083089))))))))

(assert (=> d!1619888 (= lt!2083099 e!3144943)))

(declare-fun c!862290 () Bool)

(assert (=> d!1619888 (= c!862290 ((_ is Nil!58272) (ite c!862280 (_2!34894 lt!2083087) lt!2083088)))))

(assert (=> d!1619888 (= (++!12699 (ite c!862280 (_2!34894 lt!2083087) lt!2083088) (ite c!862280 lt!2083086 (_1!34894 lt!2083089))) lt!2083099)))

(declare-fun b!5034828 () Bool)

(assert (=> b!5034828 (= e!3144943 (Cons!58272 (h!64720 (ite c!862280 (_2!34894 lt!2083087) lt!2083088)) (++!12699 (t!370857 (ite c!862280 (_2!34894 lt!2083087) lt!2083088)) (ite c!862280 lt!2083086 (_1!34894 lt!2083089)))))))

(assert (= (and d!1619888 c!862290) b!5034827))

(assert (= (and d!1619888 (not c!862290)) b!5034828))

(assert (= (and d!1619888 res!2145442) b!5034829))

(assert (= (and b!5034829 res!2145443) b!5034830))

(declare-fun m!6069278 () Bool)

(assert (=> b!5034829 m!6069278))

(declare-fun m!6069282 () Bool)

(assert (=> b!5034829 m!6069282))

(declare-fun m!6069284 () Bool)

(assert (=> b!5034829 m!6069284))

(declare-fun m!6069288 () Bool)

(assert (=> d!1619888 m!6069288))

(declare-fun m!6069290 () Bool)

(assert (=> d!1619888 m!6069290))

(declare-fun m!6069294 () Bool)

(assert (=> d!1619888 m!6069294))

(declare-fun m!6069296 () Bool)

(assert (=> b!5034828 m!6069296))

(assert (=> bm!351171 d!1619888))

(declare-fun d!1619892 () Bool)

(declare-fun lt!2083105 () Int)

(assert (=> d!1619892 (>= lt!2083105 0)))

(declare-fun e!3144946 () Int)

(assert (=> d!1619892 (= lt!2083105 e!3144946)))

(declare-fun c!862293 () Bool)

(assert (=> d!1619892 (= c!862293 ((_ is Nil!58272) lt!2083088))))

(assert (=> d!1619892 (= (size!38843 lt!2083088) lt!2083105)))

(declare-fun b!5034835 () Bool)

(assert (=> b!5034835 (= e!3144946 0)))

(declare-fun b!5034836 () Bool)

(assert (=> b!5034836 (= e!3144946 (+ 1 (size!38843 (t!370857 lt!2083088))))))

(assert (= (and d!1619892 c!862293) b!5034835))

(assert (= (and d!1619892 (not c!862293)) b!5034836))

(declare-fun m!6069302 () Bool)

(assert (=> b!5034836 m!6069302))

(assert (=> b!5034794 d!1619892))

(declare-fun b!5034845 () Bool)

(declare-fun e!3144951 () List!58396)

(assert (=> b!5034845 (= e!3144951 Nil!58272)))

(declare-fun d!1619896 () Bool)

(declare-fun c!862298 () Bool)

(assert (=> d!1619896 (= c!862298 ((_ is Empty!15484) (left!42655 t!4198)))))

(assert (=> d!1619896 (= (list!18861 (left!42655 t!4198)) e!3144951)))

(declare-fun b!5034848 () Bool)

(declare-fun e!3144952 () List!58396)

(assert (=> b!5034848 (= e!3144952 (++!12699 (list!18861 (left!42655 (left!42655 t!4198))) (list!18861 (right!42985 (left!42655 t!4198)))))))

(declare-fun b!5034846 () Bool)

(assert (=> b!5034846 (= e!3144951 e!3144952)))

(declare-fun c!862299 () Bool)

(assert (=> b!5034846 (= c!862299 ((_ is Leaf!25690) (left!42655 t!4198)))))

(declare-fun b!5034847 () Bool)

(declare-fun list!18863 (IArray!31029) List!58396)

(assert (=> b!5034847 (= e!3144952 (list!18863 (xs!18810 (left!42655 t!4198))))))

(assert (= (and d!1619896 c!862298) b!5034845))

(assert (= (and d!1619896 (not c!862298)) b!5034846))

(assert (= (and b!5034846 c!862299) b!5034847))

(assert (= (and b!5034846 (not c!862299)) b!5034848))

(declare-fun m!6069304 () Bool)

(assert (=> b!5034848 m!6069304))

(declare-fun m!6069306 () Bool)

(assert (=> b!5034848 m!6069306))

(assert (=> b!5034848 m!6069304))

(assert (=> b!5034848 m!6069306))

(declare-fun m!6069308 () Bool)

(assert (=> b!5034848 m!6069308))

(declare-fun m!6069310 () Bool)

(assert (=> b!5034847 m!6069310))

(assert (=> b!5034794 d!1619896))

(declare-fun d!1619898 () Bool)

(declare-fun lt!2083108 () Int)

(assert (=> d!1619898 (= lt!2083108 (size!38843 (list!18861 (left!42655 t!4198))))))

(assert (=> d!1619898 (= lt!2083108 (ite ((_ is Empty!15484) (left!42655 t!4198)) 0 (ite ((_ is Leaf!25690) (left!42655 t!4198)) (csize!31199 (left!42655 t!4198)) (csize!31198 (left!42655 t!4198)))))))

(assert (=> d!1619898 (= (size!38842 (left!42655 t!4198)) lt!2083108)))

(declare-fun bs!1188735 () Bool)

(assert (= bs!1188735 d!1619898))

(assert (=> bs!1188735 m!6069246))

(assert (=> bs!1188735 m!6069246))

(declare-fun m!6069312 () Bool)

(assert (=> bs!1188735 m!6069312))

(assert (=> b!5034794 d!1619898))

(declare-fun lt!2083122 () tuple2!63182)

(declare-fun e!3144973 () Bool)

(declare-fun b!5034882 () Bool)

(declare-fun drop!2610 (List!58396 Int) List!58396)

(assert (=> b!5034882 (= e!3144973 (= (_2!34894 lt!2083122) (drop!2610 (++!12699 lt!2083088 lt!2083086) i!618)))))

(declare-fun d!1619900 () Bool)

(assert (=> d!1619900 e!3144973))

(declare-fun res!2145451 () Bool)

(assert (=> d!1619900 (=> (not res!2145451) (not e!3144973))))

(assert (=> d!1619900 (= res!2145451 (= (++!12699 (_1!34894 lt!2083122) (_2!34894 lt!2083122)) (++!12699 lt!2083088 lt!2083086)))))

(declare-fun e!3144972 () tuple2!63182)

(assert (=> d!1619900 (= lt!2083122 e!3144972)))

(declare-fun c!862313 () Bool)

(assert (=> d!1619900 (= c!862313 ((_ is Nil!58272) (++!12699 lt!2083088 lt!2083086)))))

(assert (=> d!1619900 (= (splitAtIndex!185 (++!12699 lt!2083088 lt!2083086) i!618) lt!2083122)))

(declare-fun b!5034883 () Bool)

(declare-fun e!3144971 () tuple2!63182)

(assert (=> b!5034883 (= e!3144972 e!3144971)))

(declare-fun c!862314 () Bool)

(assert (=> b!5034883 (= c!862314 (<= i!618 0))))

(declare-fun b!5034884 () Bool)

(declare-fun lt!2083123 () tuple2!63182)

(assert (=> b!5034884 (= lt!2083123 (splitAtIndex!185 (t!370857 (++!12699 lt!2083088 lt!2083086)) (- i!618 1)))))

(assert (=> b!5034884 (= e!3144971 (tuple2!63183 (Cons!58272 (h!64720 (++!12699 lt!2083088 lt!2083086)) (_1!34894 lt!2083123)) (_2!34894 lt!2083123)))))

(declare-fun b!5034885 () Bool)

(declare-fun res!2145452 () Bool)

(assert (=> b!5034885 (=> (not res!2145452) (not e!3144973))))

(declare-fun take!803 (List!58396 Int) List!58396)

(assert (=> b!5034885 (= res!2145452 (= (_1!34894 lt!2083122) (take!803 (++!12699 lt!2083088 lt!2083086) i!618)))))

(declare-fun b!5034886 () Bool)

(assert (=> b!5034886 (= e!3144971 (tuple2!63183 Nil!58272 (++!12699 lt!2083088 lt!2083086)))))

(declare-fun b!5034887 () Bool)

(assert (=> b!5034887 (= e!3144972 (tuple2!63183 Nil!58272 Nil!58272))))

(assert (= (and d!1619900 c!862313) b!5034887))

(assert (= (and d!1619900 (not c!862313)) b!5034883))

(assert (= (and b!5034883 c!862314) b!5034886))

(assert (= (and b!5034883 (not c!862314)) b!5034884))

(assert (= (and d!1619900 res!2145451) b!5034885))

(assert (= (and b!5034885 res!2145452) b!5034882))

(assert (=> b!5034882 m!6069248))

(declare-fun m!6069322 () Bool)

(assert (=> b!5034882 m!6069322))

(declare-fun m!6069324 () Bool)

(assert (=> d!1619900 m!6069324))

(declare-fun m!6069326 () Bool)

(assert (=> b!5034884 m!6069326))

(assert (=> b!5034885 m!6069248))

(declare-fun m!6069328 () Bool)

(assert (=> b!5034885 m!6069328))

(assert (=> b!5034794 d!1619900))

(declare-fun b!5034890 () Bool)

(declare-fun res!2145454 () Bool)

(declare-fun e!3144974 () Bool)

(assert (=> b!5034890 (=> (not res!2145454) (not e!3144974))))

(declare-fun lt!2083124 () List!58396)

(assert (=> b!5034890 (= res!2145454 (= (size!38843 lt!2083124) (+ (size!38843 lt!2083088) (size!38843 lt!2083086))))))

(declare-fun b!5034891 () Bool)

(assert (=> b!5034891 (= e!3144974 (or (not (= lt!2083086 Nil!58272)) (= lt!2083124 lt!2083088)))))

(declare-fun b!5034888 () Bool)

(declare-fun e!3144975 () List!58396)

(assert (=> b!5034888 (= e!3144975 lt!2083086)))

(declare-fun d!1619904 () Bool)

(assert (=> d!1619904 e!3144974))

(declare-fun res!2145453 () Bool)

(assert (=> d!1619904 (=> (not res!2145453) (not e!3144974))))

(assert (=> d!1619904 (= res!2145453 (= (content!10336 lt!2083124) ((_ map or) (content!10336 lt!2083088) (content!10336 lt!2083086))))))

(assert (=> d!1619904 (= lt!2083124 e!3144975)))

(declare-fun c!862315 () Bool)

(assert (=> d!1619904 (= c!862315 ((_ is Nil!58272) lt!2083088))))

(assert (=> d!1619904 (= (++!12699 lt!2083088 lt!2083086) lt!2083124)))

(declare-fun b!5034889 () Bool)

(assert (=> b!5034889 (= e!3144975 (Cons!58272 (h!64720 lt!2083088) (++!12699 (t!370857 lt!2083088) lt!2083086)))))

(assert (= (and d!1619904 c!862315) b!5034888))

(assert (= (and d!1619904 (not c!862315)) b!5034889))

(assert (= (and d!1619904 res!2145453) b!5034890))

(assert (= (and b!5034890 res!2145454) b!5034891))

(declare-fun m!6069330 () Bool)

(assert (=> b!5034890 m!6069330))

(assert (=> b!5034890 m!6069252))

(declare-fun m!6069332 () Bool)

(assert (=> b!5034890 m!6069332))

(declare-fun m!6069334 () Bool)

(assert (=> d!1619904 m!6069334))

(declare-fun m!6069336 () Bool)

(assert (=> d!1619904 m!6069336))

(declare-fun m!6069338 () Bool)

(assert (=> d!1619904 m!6069338))

(declare-fun m!6069340 () Bool)

(assert (=> b!5034889 m!6069340))

(assert (=> b!5034794 d!1619904))

(declare-fun b!5034958 () Bool)

(declare-fun e!3145010 () tuple2!63182)

(assert (=> b!5034958 (= e!3145010 (tuple2!63183 lt!2083088 lt!2083086))))

(declare-fun d!1619906 () Bool)

(assert (=> d!1619906 (= (splitAtIndex!185 (++!12699 lt!2083088 lt!2083086) i!618) e!3145010)))

(declare-fun c!862339 () Bool)

(assert (=> d!1619906 (= c!862339 (= (size!38843 lt!2083088) i!618))))

(declare-fun lt!2083141 () Unit!149463)

(declare-fun choose!37243 (List!58396 List!58396 Int) Unit!149463)

(assert (=> d!1619906 (= lt!2083141 (choose!37243 lt!2083088 lt!2083086 i!618))))

(declare-fun e!3145008 () Bool)

(assert (=> d!1619906 e!3145008))

(declare-fun res!2145477 () Bool)

(assert (=> d!1619906 (=> (not res!2145477) (not e!3145008))))

(assert (=> d!1619906 (= res!2145477 (<= 0 i!618))))

(assert (=> d!1619906 (= (splitAtLemma!60 lt!2083088 lt!2083086 i!618) lt!2083141)))

(declare-fun b!5034959 () Bool)

(declare-fun e!3145011 () Int)

(assert (=> b!5034959 (= e!3145011 i!618)))

(declare-fun bm!351182 () Bool)

(declare-fun c!862338 () Bool)

(declare-fun c!862340 () Bool)

(assert (=> bm!351182 (= c!862338 c!862340)))

(declare-fun call!351187 () tuple2!63182)

(assert (=> bm!351182 (= call!351187 (splitAtIndex!185 (ite c!862340 lt!2083088 lt!2083086) e!3145011))))

(declare-fun lt!2083140 () tuple2!63182)

(declare-fun call!351188 () List!58396)

(declare-fun bm!351183 () Bool)

(declare-fun lt!2083142 () tuple2!63182)

(assert (=> bm!351183 (= call!351188 (++!12699 (ite c!862340 (_2!34894 lt!2083140) lt!2083088) (ite c!862340 lt!2083086 (_1!34894 lt!2083142))))))

(declare-fun b!5034960 () Bool)

(declare-fun e!3145009 () tuple2!63182)

(assert (=> b!5034960 (= e!3145010 e!3145009)))

(assert (=> b!5034960 (= c!862340 (< i!618 (size!38843 lt!2083088)))))

(declare-fun b!5034961 () Bool)

(assert (=> b!5034961 (= lt!2083142 call!351187)))

(assert (=> b!5034961 (= e!3145009 (tuple2!63183 call!351188 (_2!34894 lt!2083142)))))

(declare-fun b!5034962 () Bool)

(assert (=> b!5034962 (= lt!2083140 call!351187)))

(assert (=> b!5034962 (= e!3145009 (tuple2!63183 (_1!34894 lt!2083140) call!351188))))

(declare-fun b!5034963 () Bool)

(assert (=> b!5034963 (= e!3145011 (- i!618 (size!38843 lt!2083088)))))

(declare-fun b!5034964 () Bool)

(assert (=> b!5034964 (= e!3145008 (<= i!618 (+ (size!38843 lt!2083088) (size!38843 lt!2083086))))))

(assert (= (and d!1619906 res!2145477) b!5034964))

(assert (= (and d!1619906 c!862339) b!5034958))

(assert (= (and d!1619906 (not c!862339)) b!5034960))

(assert (= (and b!5034960 c!862340) b!5034962))

(assert (= (and b!5034960 (not c!862340)) b!5034961))

(assert (= (or b!5034962 b!5034961) bm!351183))

(assert (= (or b!5034962 b!5034961) bm!351182))

(assert (= (and bm!351182 c!862338) b!5034959))

(assert (= (and bm!351182 (not c!862338)) b!5034963))

(declare-fun m!6069382 () Bool)

(assert (=> bm!351183 m!6069382))

(assert (=> b!5034964 m!6069252))

(assert (=> b!5034964 m!6069332))

(declare-fun m!6069384 () Bool)

(assert (=> bm!351182 m!6069384))

(assert (=> d!1619906 m!6069248))

(assert (=> d!1619906 m!6069248))

(assert (=> d!1619906 m!6069258))

(assert (=> d!1619906 m!6069252))

(declare-fun m!6069386 () Bool)

(assert (=> d!1619906 m!6069386))

(assert (=> b!5034960 m!6069252))

(assert (=> b!5034963 m!6069252))

(assert (=> b!5034794 d!1619906))

(declare-fun b!5034965 () Bool)

(declare-fun e!3145012 () List!58396)

(assert (=> b!5034965 (= e!3145012 Nil!58272)))

(declare-fun d!1619922 () Bool)

(declare-fun c!862341 () Bool)

(assert (=> d!1619922 (= c!862341 ((_ is Empty!15484) (right!42985 t!4198)))))

(assert (=> d!1619922 (= (list!18861 (right!42985 t!4198)) e!3145012)))

(declare-fun b!5034968 () Bool)

(declare-fun e!3145013 () List!58396)

(assert (=> b!5034968 (= e!3145013 (++!12699 (list!18861 (left!42655 (right!42985 t!4198))) (list!18861 (right!42985 (right!42985 t!4198)))))))

(declare-fun b!5034966 () Bool)

(assert (=> b!5034966 (= e!3145012 e!3145013)))

(declare-fun c!862342 () Bool)

(assert (=> b!5034966 (= c!862342 ((_ is Leaf!25690) (right!42985 t!4198)))))

(declare-fun b!5034967 () Bool)

(assert (=> b!5034967 (= e!3145013 (list!18863 (xs!18810 (right!42985 t!4198))))))

(assert (= (and d!1619922 c!862341) b!5034965))

(assert (= (and d!1619922 (not c!862341)) b!5034966))

(assert (= (and b!5034966 c!862342) b!5034967))

(assert (= (and b!5034966 (not c!862342)) b!5034968))

(declare-fun m!6069388 () Bool)

(assert (=> b!5034968 m!6069388))

(declare-fun m!6069390 () Bool)

(assert (=> b!5034968 m!6069390))

(assert (=> b!5034968 m!6069388))

(assert (=> b!5034968 m!6069390))

(declare-fun m!6069392 () Bool)

(assert (=> b!5034968 m!6069392))

(declare-fun m!6069394 () Bool)

(assert (=> b!5034967 m!6069394))

(assert (=> b!5034794 d!1619922))

(declare-fun lt!2083143 () tuple2!63182)

(declare-fun e!3145018 () Bool)

(declare-fun b!5034975 () Bool)

(assert (=> b!5034975 (= e!3145018 (= (_2!34894 lt!2083143) (drop!2610 (ite c!862280 lt!2083088 lt!2083086) (ite c!862280 i!618 (- i!618 lt!2083083)))))))

(declare-fun d!1619924 () Bool)

(assert (=> d!1619924 e!3145018))

(declare-fun res!2145484 () Bool)

(assert (=> d!1619924 (=> (not res!2145484) (not e!3145018))))

(assert (=> d!1619924 (= res!2145484 (= (++!12699 (_1!34894 lt!2083143) (_2!34894 lt!2083143)) (ite c!862280 lt!2083088 lt!2083086)))))

(declare-fun e!3145017 () tuple2!63182)

(assert (=> d!1619924 (= lt!2083143 e!3145017)))

(declare-fun c!862343 () Bool)

(assert (=> d!1619924 (= c!862343 ((_ is Nil!58272) (ite c!862280 lt!2083088 lt!2083086)))))

(assert (=> d!1619924 (= (splitAtIndex!185 (ite c!862280 lt!2083088 lt!2083086) (ite c!862280 i!618 (- i!618 lt!2083083))) lt!2083143)))

(declare-fun b!5034976 () Bool)

(declare-fun e!3145016 () tuple2!63182)

(assert (=> b!5034976 (= e!3145017 e!3145016)))

(declare-fun c!862344 () Bool)

(assert (=> b!5034976 (= c!862344 (<= (ite c!862280 i!618 (- i!618 lt!2083083)) 0))))

(declare-fun b!5034977 () Bool)

(declare-fun lt!2083144 () tuple2!63182)

(assert (=> b!5034977 (= lt!2083144 (splitAtIndex!185 (t!370857 (ite c!862280 lt!2083088 lt!2083086)) (- (ite c!862280 i!618 (- i!618 lt!2083083)) 1)))))

(assert (=> b!5034977 (= e!3145016 (tuple2!63183 (Cons!58272 (h!64720 (ite c!862280 lt!2083088 lt!2083086)) (_1!34894 lt!2083144)) (_2!34894 lt!2083144)))))

(declare-fun b!5034978 () Bool)

(declare-fun res!2145485 () Bool)

(assert (=> b!5034978 (=> (not res!2145485) (not e!3145018))))

(assert (=> b!5034978 (= res!2145485 (= (_1!34894 lt!2083143) (take!803 (ite c!862280 lt!2083088 lt!2083086) (ite c!862280 i!618 (- i!618 lt!2083083)))))))

(declare-fun b!5034979 () Bool)

(assert (=> b!5034979 (= e!3145016 (tuple2!63183 Nil!58272 (ite c!862280 lt!2083088 lt!2083086)))))

(declare-fun b!5034980 () Bool)

(assert (=> b!5034980 (= e!3145017 (tuple2!63183 Nil!58272 Nil!58272))))

(assert (= (and d!1619924 c!862343) b!5034980))

(assert (= (and d!1619924 (not c!862343)) b!5034976))

(assert (= (and b!5034976 c!862344) b!5034979))

(assert (= (and b!5034976 (not c!862344)) b!5034977))

(assert (= (and d!1619924 res!2145484) b!5034978))

(assert (= (and b!5034978 res!2145485) b!5034975))

(declare-fun m!6069408 () Bool)

(assert (=> b!5034975 m!6069408))

(declare-fun m!6069410 () Bool)

(assert (=> d!1619924 m!6069410))

(declare-fun m!6069412 () Bool)

(assert (=> b!5034977 m!6069412))

(declare-fun m!6069414 () Bool)

(assert (=> b!5034978 m!6069414))

(assert (=> bm!351170 d!1619924))

(declare-fun b!5035034 () Bool)

(declare-fun e!3145047 () Bool)

(declare-fun e!3145046 () Bool)

(assert (=> b!5035034 (= e!3145047 e!3145046)))

(declare-fun res!2145511 () Bool)

(assert (=> b!5035034 (=> (not res!2145511) (not e!3145046))))

(declare-fun height!2065 (Conc!15484) Int)

(assert (=> b!5035034 (= res!2145511 (<= (- 1) (- (height!2065 (left!42655 t!4198)) (height!2065 (right!42985 t!4198)))))))

(declare-fun b!5035035 () Bool)

(declare-fun res!2145514 () Bool)

(assert (=> b!5035035 (=> (not res!2145514) (not e!3145046))))

(assert (=> b!5035035 (= res!2145514 (isBalanced!4346 (right!42985 t!4198)))))

(declare-fun d!1619928 () Bool)

(declare-fun res!2145516 () Bool)

(assert (=> d!1619928 (=> res!2145516 e!3145047)))

(assert (=> d!1619928 (= res!2145516 (not ((_ is Node!15484) t!4198)))))

(assert (=> d!1619928 (= (isBalanced!4346 t!4198) e!3145047)))

(declare-fun b!5035036 () Bool)

(declare-fun isEmpty!31502 (Conc!15484) Bool)

(assert (=> b!5035036 (= e!3145046 (not (isEmpty!31502 (right!42985 t!4198))))))

(declare-fun b!5035037 () Bool)

(declare-fun res!2145513 () Bool)

(assert (=> b!5035037 (=> (not res!2145513) (not e!3145046))))

(assert (=> b!5035037 (= res!2145513 (isBalanced!4346 (left!42655 t!4198)))))

(declare-fun b!5035038 () Bool)

(declare-fun res!2145515 () Bool)

(assert (=> b!5035038 (=> (not res!2145515) (not e!3145046))))

(assert (=> b!5035038 (= res!2145515 (not (isEmpty!31502 (left!42655 t!4198))))))

(declare-fun b!5035039 () Bool)

(declare-fun res!2145512 () Bool)

(assert (=> b!5035039 (=> (not res!2145512) (not e!3145046))))

(assert (=> b!5035039 (= res!2145512 (<= (- (height!2065 (left!42655 t!4198)) (height!2065 (right!42985 t!4198))) 1))))

(assert (= (and d!1619928 (not res!2145516)) b!5035034))

(assert (= (and b!5035034 res!2145511) b!5035039))

(assert (= (and b!5035039 res!2145512) b!5035037))

(assert (= (and b!5035037 res!2145513) b!5035035))

(assert (= (and b!5035035 res!2145514) b!5035038))

(assert (= (and b!5035038 res!2145515) b!5035036))

(declare-fun m!6069464 () Bool)

(assert (=> b!5035034 m!6069464))

(declare-fun m!6069466 () Bool)

(assert (=> b!5035034 m!6069466))

(assert (=> b!5035039 m!6069464))

(assert (=> b!5035039 m!6069466))

(assert (=> b!5035037 m!6069264))

(declare-fun m!6069468 () Bool)

(assert (=> b!5035036 m!6069468))

(declare-fun m!6069470 () Bool)

(assert (=> b!5035038 m!6069470))

(declare-fun m!6069472 () Bool)

(assert (=> b!5035035 m!6069472))

(assert (=> start!532642 d!1619928))

(declare-fun d!1619938 () Bool)

(declare-fun c!862353 () Bool)

(assert (=> d!1619938 (= c!862353 ((_ is Node!15484) t!4198))))

(declare-fun e!3145054 () Bool)

(assert (=> d!1619938 (= (inv!77002 t!4198) e!3145054)))

(declare-fun b!5035049 () Bool)

(declare-fun inv!77006 (Conc!15484) Bool)

(assert (=> b!5035049 (= e!3145054 (inv!77006 t!4198))))

(declare-fun b!5035050 () Bool)

(declare-fun e!3145055 () Bool)

(assert (=> b!5035050 (= e!3145054 e!3145055)))

(declare-fun res!2145519 () Bool)

(assert (=> b!5035050 (= res!2145519 (not ((_ is Leaf!25690) t!4198)))))

(assert (=> b!5035050 (=> res!2145519 e!3145055)))

(declare-fun b!5035051 () Bool)

(declare-fun inv!77007 (Conc!15484) Bool)

(assert (=> b!5035051 (= e!3145055 (inv!77007 t!4198))))

(assert (= (and d!1619938 c!862353) b!5035049))

(assert (= (and d!1619938 (not c!862353)) b!5035050))

(assert (= (and b!5035050 (not res!2145519)) b!5035051))

(declare-fun m!6069474 () Bool)

(assert (=> b!5035049 m!6069474))

(declare-fun m!6069476 () Bool)

(assert (=> b!5035051 m!6069476))

(assert (=> start!532642 d!1619938))

(declare-fun b!5035052 () Bool)

(declare-fun e!3145057 () Bool)

(declare-fun e!3145056 () Bool)

(assert (=> b!5035052 (= e!3145057 e!3145056)))

(declare-fun res!2145520 () Bool)

(assert (=> b!5035052 (=> (not res!2145520) (not e!3145056))))

(assert (=> b!5035052 (= res!2145520 (<= (- 1) (- (height!2065 (left!42655 (left!42655 t!4198))) (height!2065 (right!42985 (left!42655 t!4198))))))))

(declare-fun b!5035053 () Bool)

(declare-fun res!2145523 () Bool)

(assert (=> b!5035053 (=> (not res!2145523) (not e!3145056))))

(assert (=> b!5035053 (= res!2145523 (isBalanced!4346 (right!42985 (left!42655 t!4198))))))

(declare-fun d!1619940 () Bool)

(declare-fun res!2145525 () Bool)

(assert (=> d!1619940 (=> res!2145525 e!3145057)))

(assert (=> d!1619940 (= res!2145525 (not ((_ is Node!15484) (left!42655 t!4198))))))

(assert (=> d!1619940 (= (isBalanced!4346 (left!42655 t!4198)) e!3145057)))

(declare-fun b!5035054 () Bool)

(assert (=> b!5035054 (= e!3145056 (not (isEmpty!31502 (right!42985 (left!42655 t!4198)))))))

(declare-fun b!5035055 () Bool)

(declare-fun res!2145522 () Bool)

(assert (=> b!5035055 (=> (not res!2145522) (not e!3145056))))

(assert (=> b!5035055 (= res!2145522 (isBalanced!4346 (left!42655 (left!42655 t!4198))))))

(declare-fun b!5035056 () Bool)

(declare-fun res!2145524 () Bool)

(assert (=> b!5035056 (=> (not res!2145524) (not e!3145056))))

(assert (=> b!5035056 (= res!2145524 (not (isEmpty!31502 (left!42655 (left!42655 t!4198)))))))

(declare-fun b!5035057 () Bool)

(declare-fun res!2145521 () Bool)

(assert (=> b!5035057 (=> (not res!2145521) (not e!3145056))))

(assert (=> b!5035057 (= res!2145521 (<= (- (height!2065 (left!42655 (left!42655 t!4198))) (height!2065 (right!42985 (left!42655 t!4198)))) 1))))

(assert (= (and d!1619940 (not res!2145525)) b!5035052))

(assert (= (and b!5035052 res!2145520) b!5035057))

(assert (= (and b!5035057 res!2145521) b!5035055))

(assert (= (and b!5035055 res!2145522) b!5035053))

(assert (= (and b!5035053 res!2145523) b!5035056))

(assert (= (and b!5035056 res!2145524) b!5035054))

(declare-fun m!6069478 () Bool)

(assert (=> b!5035052 m!6069478))

(declare-fun m!6069480 () Bool)

(assert (=> b!5035052 m!6069480))

(assert (=> b!5035057 m!6069478))

(assert (=> b!5035057 m!6069480))

(declare-fun m!6069482 () Bool)

(assert (=> b!5035055 m!6069482))

(declare-fun m!6069484 () Bool)

(assert (=> b!5035054 m!6069484))

(declare-fun m!6069486 () Bool)

(assert (=> b!5035056 m!6069486))

(declare-fun m!6069488 () Bool)

(assert (=> b!5035053 m!6069488))

(assert (=> b!5034792 d!1619940))

(declare-fun d!1619942 () Bool)

(declare-fun lt!2083146 () Int)

(assert (=> d!1619942 (= lt!2083146 (size!38843 (list!18861 t!4198)))))

(assert (=> d!1619942 (= lt!2083146 (ite ((_ is Empty!15484) t!4198) 0 (ite ((_ is Leaf!25690) t!4198) (csize!31199 t!4198) (csize!31198 t!4198))))))

(assert (=> d!1619942 (= (size!38842 t!4198) lt!2083146)))

(declare-fun bs!1188738 () Bool)

(assert (= bs!1188738 d!1619942))

(declare-fun m!6069490 () Bool)

(assert (=> bs!1188738 m!6069490))

(assert (=> bs!1188738 m!6069490))

(declare-fun m!6069492 () Bool)

(assert (=> bs!1188738 m!6069492))

(assert (=> b!5034797 d!1619942))

(declare-fun d!1619944 () Bool)

(declare-fun c!862354 () Bool)

(assert (=> d!1619944 (= c!862354 ((_ is Node!15484) (left!42655 t!4198)))))

(declare-fun e!3145058 () Bool)

(assert (=> d!1619944 (= (inv!77002 (left!42655 t!4198)) e!3145058)))

(declare-fun b!5035058 () Bool)

(assert (=> b!5035058 (= e!3145058 (inv!77006 (left!42655 t!4198)))))

(declare-fun b!5035059 () Bool)

(declare-fun e!3145059 () Bool)

(assert (=> b!5035059 (= e!3145058 e!3145059)))

(declare-fun res!2145526 () Bool)

(assert (=> b!5035059 (= res!2145526 (not ((_ is Leaf!25690) (left!42655 t!4198))))))

(assert (=> b!5035059 (=> res!2145526 e!3145059)))

(declare-fun b!5035060 () Bool)

(assert (=> b!5035060 (= e!3145059 (inv!77007 (left!42655 t!4198)))))

(assert (= (and d!1619944 c!862354) b!5035058))

(assert (= (and d!1619944 (not c!862354)) b!5035059))

(assert (= (and b!5035059 (not res!2145526)) b!5035060))

(declare-fun m!6069494 () Bool)

(assert (=> b!5035058 m!6069494))

(declare-fun m!6069496 () Bool)

(assert (=> b!5035060 m!6069496))

(assert (=> b!5034795 d!1619944))

(declare-fun d!1619946 () Bool)

(declare-fun c!862355 () Bool)

(assert (=> d!1619946 (= c!862355 ((_ is Node!15484) (right!42985 t!4198)))))

(declare-fun e!3145060 () Bool)

(assert (=> d!1619946 (= (inv!77002 (right!42985 t!4198)) e!3145060)))

(declare-fun b!5035061 () Bool)

(assert (=> b!5035061 (= e!3145060 (inv!77006 (right!42985 t!4198)))))

(declare-fun b!5035062 () Bool)

(declare-fun e!3145061 () Bool)

(assert (=> b!5035062 (= e!3145060 e!3145061)))

(declare-fun res!2145527 () Bool)

(assert (=> b!5035062 (= res!2145527 (not ((_ is Leaf!25690) (right!42985 t!4198))))))

(assert (=> b!5035062 (=> res!2145527 e!3145061)))

(declare-fun b!5035063 () Bool)

(assert (=> b!5035063 (= e!3145061 (inv!77007 (right!42985 t!4198)))))

(assert (= (and d!1619946 c!862355) b!5035061))

(assert (= (and d!1619946 (not c!862355)) b!5035062))

(assert (= (and b!5035062 (not res!2145527)) b!5035063))

(declare-fun m!6069498 () Bool)

(assert (=> b!5035061 m!6069498))

(declare-fun m!6069500 () Bool)

(assert (=> b!5035063 m!6069500))

(assert (=> b!5034795 d!1619946))

(declare-fun d!1619948 () Bool)

(assert (=> d!1619948 (= (inv!77003 (xs!18810 t!4198)) (<= (size!38843 (innerList!15572 (xs!18810 t!4198))) 2147483647))))

(declare-fun bs!1188739 () Bool)

(assert (= bs!1188739 d!1619948))

(declare-fun m!6069502 () Bool)

(assert (=> bs!1188739 m!6069502))

(assert (=> b!5034800 d!1619948))

(declare-fun b!5035068 () Bool)

(declare-fun e!3145064 () Bool)

(declare-fun tp_is_empty!36735 () Bool)

(declare-fun tp!1410164 () Bool)

(assert (=> b!5035068 (= e!3145064 (and tp_is_empty!36735 tp!1410164))))

(assert (=> b!5034799 (= tp!1410146 e!3145064)))

(assert (= (and b!5034799 ((_ is Cons!58272) (innerList!15572 (xs!18810 t!4198)))) b!5035068))

(declare-fun tp!1410172 () Bool)

(declare-fun tp!1410171 () Bool)

(declare-fun e!3145069 () Bool)

(declare-fun b!5035077 () Bool)

(assert (=> b!5035077 (= e!3145069 (and (inv!77002 (left!42655 (left!42655 t!4198))) tp!1410171 (inv!77002 (right!42985 (left!42655 t!4198))) tp!1410172))))

(declare-fun b!5035079 () Bool)

(declare-fun e!3145070 () Bool)

(declare-fun tp!1410173 () Bool)

(assert (=> b!5035079 (= e!3145070 tp!1410173)))

(declare-fun b!5035078 () Bool)

(assert (=> b!5035078 (= e!3145069 (and (inv!77003 (xs!18810 (left!42655 t!4198))) e!3145070))))

(assert (=> b!5034795 (= tp!1410144 (and (inv!77002 (left!42655 t!4198)) e!3145069))))

(assert (= (and b!5034795 ((_ is Node!15484) (left!42655 t!4198))) b!5035077))

(assert (= b!5035078 b!5035079))

(assert (= (and b!5034795 ((_ is Leaf!25690) (left!42655 t!4198))) b!5035078))

(declare-fun m!6069504 () Bool)

(assert (=> b!5035077 m!6069504))

(declare-fun m!6069506 () Bool)

(assert (=> b!5035077 m!6069506))

(declare-fun m!6069508 () Bool)

(assert (=> b!5035078 m!6069508))

(assert (=> b!5034795 m!6069260))

(declare-fun tp!1410174 () Bool)

(declare-fun tp!1410175 () Bool)

(declare-fun e!3145071 () Bool)

(declare-fun b!5035080 () Bool)

(assert (=> b!5035080 (= e!3145071 (and (inv!77002 (left!42655 (right!42985 t!4198))) tp!1410174 (inv!77002 (right!42985 (right!42985 t!4198))) tp!1410175))))

(declare-fun b!5035082 () Bool)

(declare-fun e!3145072 () Bool)

(declare-fun tp!1410176 () Bool)

(assert (=> b!5035082 (= e!3145072 tp!1410176)))

(declare-fun b!5035081 () Bool)

(assert (=> b!5035081 (= e!3145071 (and (inv!77003 (xs!18810 (right!42985 t!4198))) e!3145072))))

(assert (=> b!5034795 (= tp!1410145 (and (inv!77002 (right!42985 t!4198)) e!3145071))))

(assert (= (and b!5034795 ((_ is Node!15484) (right!42985 t!4198))) b!5035080))

(assert (= b!5035081 b!5035082))

(assert (= (and b!5034795 ((_ is Leaf!25690) (right!42985 t!4198))) b!5035081))

(declare-fun m!6069510 () Bool)

(assert (=> b!5035080 m!6069510))

(declare-fun m!6069512 () Bool)

(assert (=> b!5035080 m!6069512))

(declare-fun m!6069514 () Bool)

(assert (=> b!5035081 m!6069514))

(assert (=> b!5034795 m!6069262))

(check-sat (not b!5035068) (not d!1619942) (not b!5035051) (not b!5034795) (not b!5035054) (not d!1619948) (not b!5034967) (not b!5034884) (not b!5034960) (not b!5035039) (not b!5034975) (not b!5035049) (not b!5034890) (not b!5035052) (not b!5034963) (not bm!351183) (not b!5035063) (not b!5035080) (not b!5035060) (not b!5035035) (not b!5034882) (not b!5034848) tp_is_empty!36735 (not b!5035036) (not b!5034977) (not b!5034829) (not b!5035058) (not d!1619898) (not b!5035037) (not b!5035082) (not b!5034828) (not b!5035079) (not b!5035061) (not d!1619906) (not b!5034978) (not b!5035057) (not d!1619924) (not bm!351182) (not b!5035081) (not b!5035053) (not b!5035056) (not d!1619904) (not b!5034847) (not b!5035078) (not d!1619900) (not b!5034885) (not b!5034889) (not d!1619888) (not b!5035034) (not b!5035055) (not b!5035038) (not b!5034964) (not b!5035077) (not b!5034968) (not b!5034836))
(check-sat)
