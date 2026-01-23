; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297594 () Bool)

(assert start!297594)

(declare-datatypes ((T!63172 0))(
  ( (T!63173 (val!11990 Int)) )
))
(declare-fun v!5469 () T!63172)

(declare-fun e!1978993 () Bool)

(declare-fun b!3177294 () Bool)

(declare-datatypes ((List!35739 0))(
  ( (Nil!35615) (Cons!35615 (h!41035 T!63172) (t!234838 List!35739)) )
))
(declare-datatypes ((IArray!21117 0))(
  ( (IArray!21118 (innerList!10616 List!35739)) )
))
(declare-datatypes ((Conc!10556 0))(
  ( (Node!10556 (left!27711 Conc!10556) (right!28041 Conc!10556) (csize!21342 Int) (cheight!10767 Int)) (Leaf!16712 (xs!13674 IArray!21117) (csize!21343 Int)) (Empty!10556) )
))
(declare-fun t!3671 () Conc!10556)

(declare-fun e!1978992 () Bool)

(declare-fun contains!6298 (List!35739 T!63172) Bool)

(declare-fun list!12647 (Conc!10556) List!35739)

(assert (=> b!3177294 (= e!1978993 (not (= e!1978992 (contains!6298 (list!12647 t!3671) v!5469))))))

(declare-fun res!1290864 () Bool)

(assert (=> b!3177294 (=> res!1290864 e!1978992)))

(declare-fun contains!6299 (Conc!10556 T!63172) Bool)

(assert (=> b!3177294 (= res!1290864 (contains!6299 (left!27711 t!3671) v!5469))))

(declare-fun b!3177295 () Bool)

(assert (=> b!3177295 (= e!1978992 (contains!6299 (right!28041 t!3671) v!5469))))

(declare-fun tp!1004877 () Bool)

(declare-fun e!1978991 () Bool)

(declare-fun b!3177296 () Bool)

(declare-fun tp!1004878 () Bool)

(declare-fun inv!48470 (Conc!10556) Bool)

(assert (=> b!3177296 (= e!1978991 (and (inv!48470 (left!27711 t!3671)) tp!1004877 (inv!48470 (right!28041 t!3671)) tp!1004878))))

(declare-fun b!3177297 () Bool)

(declare-fun e!1978994 () Bool)

(declare-fun tp!1004876 () Bool)

(assert (=> b!3177297 (= e!1978994 tp!1004876)))

(declare-fun res!1290865 () Bool)

(assert (=> start!297594 (=> (not res!1290865) (not e!1978993))))

(get-info :version)

(assert (=> start!297594 (= res!1290865 (and (not ((_ is Empty!10556) t!3671)) (not ((_ is Leaf!16712) t!3671))))))

(assert (=> start!297594 e!1978993))

(assert (=> start!297594 (and (inv!48470 t!3671) e!1978991)))

(declare-fun tp_is_empty!17237 () Bool)

(assert (=> start!297594 tp_is_empty!17237))

(declare-fun b!3177298 () Bool)

(declare-fun inv!48471 (IArray!21117) Bool)

(assert (=> b!3177298 (= e!1978991 (and (inv!48471 (xs!13674 t!3671)) e!1978994))))

(assert (= (and start!297594 res!1290865) b!3177294))

(assert (= (and b!3177294 (not res!1290864)) b!3177295))

(assert (= (and start!297594 ((_ is Node!10556) t!3671)) b!3177296))

(assert (= b!3177298 b!3177297))

(assert (= (and start!297594 ((_ is Leaf!16712) t!3671)) b!3177298))

(declare-fun m!3433871 () Bool)

(assert (=> b!3177294 m!3433871))

(assert (=> b!3177294 m!3433871))

(declare-fun m!3433873 () Bool)

(assert (=> b!3177294 m!3433873))

(declare-fun m!3433875 () Bool)

(assert (=> b!3177294 m!3433875))

(declare-fun m!3433877 () Bool)

(assert (=> b!3177295 m!3433877))

(declare-fun m!3433879 () Bool)

(assert (=> b!3177296 m!3433879))

(declare-fun m!3433881 () Bool)

(assert (=> b!3177296 m!3433881))

(declare-fun m!3433883 () Bool)

(assert (=> start!297594 m!3433883))

(declare-fun m!3433885 () Bool)

(assert (=> b!3177298 m!3433885))

(check-sat (not b!3177298) (not start!297594) tp_is_empty!17237 (not b!3177295) (not b!3177297) (not b!3177296) (not b!3177294))
(check-sat)
(get-model)

(declare-fun b!3177317 () Bool)

(declare-fun e!1979009 () Bool)

(declare-fun contains!6300 (IArray!21117 T!63172) Bool)

(assert (=> b!3177317 (= e!1979009 (contains!6300 (xs!13674 (right!28041 t!3671)) v!5469))))

(declare-fun b!3177316 () Bool)

(declare-fun e!1979008 () Bool)

(assert (=> b!3177316 (= e!1979008 e!1979009)))

(declare-fun c!533920 () Bool)

(assert (=> b!3177316 (= c!533920 ((_ is Leaf!16712) (right!28041 t!3671)))))

(declare-fun d!869888 () Bool)

(declare-fun lt!1068089 () Bool)

(assert (=> d!869888 (= lt!1068089 (contains!6298 (list!12647 (right!28041 t!3671)) v!5469))))

(assert (=> d!869888 (= lt!1068089 e!1979008)))

(declare-fun res!1290874 () Bool)

(assert (=> d!869888 (=> (not res!1290874) (not e!1979008))))

(assert (=> d!869888 (= res!1290874 (not ((_ is Empty!10556) (right!28041 t!3671))))))

(assert (=> d!869888 (= (contains!6299 (right!28041 t!3671) v!5469) lt!1068089)))

(declare-fun b!3177319 () Bool)

(declare-fun e!1979007 () Bool)

(assert (=> b!3177319 (= e!1979007 (contains!6299 (right!28041 (right!28041 t!3671)) v!5469))))

(declare-fun b!3177318 () Bool)

(assert (=> b!3177318 (= e!1979009 e!1979007)))

(declare-fun res!1290873 () Bool)

(assert (=> b!3177318 (= res!1290873 (contains!6299 (left!27711 (right!28041 t!3671)) v!5469))))

(assert (=> b!3177318 (=> res!1290873 e!1979007)))

(assert (= (and d!869888 res!1290874) b!3177316))

(assert (= (and b!3177316 c!533920) b!3177317))

(assert (= (and b!3177316 (not c!533920)) b!3177318))

(assert (= (and b!3177318 (not res!1290873)) b!3177319))

(declare-fun m!3433891 () Bool)

(assert (=> b!3177317 m!3433891))

(declare-fun m!3433893 () Bool)

(assert (=> d!869888 m!3433893))

(assert (=> d!869888 m!3433893))

(declare-fun m!3433895 () Bool)

(assert (=> d!869888 m!3433895))

(declare-fun m!3433897 () Bool)

(assert (=> b!3177319 m!3433897))

(declare-fun m!3433899 () Bool)

(assert (=> b!3177318 m!3433899))

(assert (=> b!3177295 d!869888))

(declare-fun d!869892 () Bool)

(declare-fun lt!1068094 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4835 (List!35739) (InoxSet T!63172))

(assert (=> d!869892 (= lt!1068094 (select (content!4835 (list!12647 t!3671)) v!5469))))

(declare-fun e!1979020 () Bool)

(assert (=> d!869892 (= lt!1068094 e!1979020)))

(declare-fun res!1290884 () Bool)

(assert (=> d!869892 (=> (not res!1290884) (not e!1979020))))

(assert (=> d!869892 (= res!1290884 ((_ is Cons!35615) (list!12647 t!3671)))))

(assert (=> d!869892 (= (contains!6298 (list!12647 t!3671) v!5469) lt!1068094)))

(declare-fun b!3177332 () Bool)

(declare-fun e!1979021 () Bool)

(assert (=> b!3177332 (= e!1979020 e!1979021)))

(declare-fun res!1290883 () Bool)

(assert (=> b!3177332 (=> res!1290883 e!1979021)))

(assert (=> b!3177332 (= res!1290883 (= (h!41035 (list!12647 t!3671)) v!5469))))

(declare-fun b!3177333 () Bool)

(assert (=> b!3177333 (= e!1979021 (contains!6298 (t!234838 (list!12647 t!3671)) v!5469))))

(assert (= (and d!869892 res!1290884) b!3177332))

(assert (= (and b!3177332 (not res!1290883)) b!3177333))

(assert (=> d!869892 m!3433871))

(declare-fun m!3433901 () Bool)

(assert (=> d!869892 m!3433901))

(declare-fun m!3433903 () Bool)

(assert (=> d!869892 m!3433903))

(declare-fun m!3433905 () Bool)

(assert (=> b!3177333 m!3433905))

(assert (=> b!3177294 d!869892))

(declare-fun b!3177352 () Bool)

(declare-fun e!1979034 () List!35739)

(declare-fun list!12648 (IArray!21117) List!35739)

(assert (=> b!3177352 (= e!1979034 (list!12648 (xs!13674 t!3671)))))

(declare-fun d!869894 () Bool)

(declare-fun c!533928 () Bool)

(assert (=> d!869894 (= c!533928 ((_ is Empty!10556) t!3671))))

(declare-fun e!1979033 () List!35739)

(assert (=> d!869894 (= (list!12647 t!3671) e!1979033)))

(declare-fun b!3177350 () Bool)

(assert (=> b!3177350 (= e!1979033 Nil!35615)))

(declare-fun b!3177351 () Bool)

(assert (=> b!3177351 (= e!1979033 e!1979034)))

(declare-fun c!533929 () Bool)

(assert (=> b!3177351 (= c!533929 ((_ is Leaf!16712) t!3671))))

(declare-fun b!3177353 () Bool)

(declare-fun ++!8521 (List!35739 List!35739) List!35739)

(assert (=> b!3177353 (= e!1979034 (++!8521 (list!12647 (left!27711 t!3671)) (list!12647 (right!28041 t!3671))))))

(assert (= (and d!869894 c!533928) b!3177350))

(assert (= (and d!869894 (not c!533928)) b!3177351))

(assert (= (and b!3177351 c!533929) b!3177352))

(assert (= (and b!3177351 (not c!533929)) b!3177353))

(declare-fun m!3433917 () Bool)

(assert (=> b!3177352 m!3433917))

(declare-fun m!3433919 () Bool)

(assert (=> b!3177353 m!3433919))

(assert (=> b!3177353 m!3433893))

(assert (=> b!3177353 m!3433919))

(assert (=> b!3177353 m!3433893))

(declare-fun m!3433921 () Bool)

(assert (=> b!3177353 m!3433921))

(assert (=> b!3177294 d!869894))

(declare-fun b!3177357 () Bool)

(declare-fun e!1979039 () Bool)

(assert (=> b!3177357 (= e!1979039 (contains!6300 (xs!13674 (left!27711 t!3671)) v!5469))))

(declare-fun b!3177356 () Bool)

(declare-fun e!1979038 () Bool)

(assert (=> b!3177356 (= e!1979038 e!1979039)))

(declare-fun c!533930 () Bool)

(assert (=> b!3177356 (= c!533930 ((_ is Leaf!16712) (left!27711 t!3671)))))

(declare-fun d!869898 () Bool)

(declare-fun lt!1068099 () Bool)

(assert (=> d!869898 (= lt!1068099 (contains!6298 (list!12647 (left!27711 t!3671)) v!5469))))

(assert (=> d!869898 (= lt!1068099 e!1979038)))

(declare-fun res!1290894 () Bool)

(assert (=> d!869898 (=> (not res!1290894) (not e!1979038))))

(assert (=> d!869898 (= res!1290894 (not ((_ is Empty!10556) (left!27711 t!3671))))))

(assert (=> d!869898 (= (contains!6299 (left!27711 t!3671) v!5469) lt!1068099)))

(declare-fun b!3177359 () Bool)

(declare-fun e!1979037 () Bool)

(assert (=> b!3177359 (= e!1979037 (contains!6299 (right!28041 (left!27711 t!3671)) v!5469))))

(declare-fun b!3177358 () Bool)

(assert (=> b!3177358 (= e!1979039 e!1979037)))

(declare-fun res!1290893 () Bool)

(assert (=> b!3177358 (= res!1290893 (contains!6299 (left!27711 (left!27711 t!3671)) v!5469))))

(assert (=> b!3177358 (=> res!1290893 e!1979037)))

(assert (= (and d!869898 res!1290894) b!3177356))

(assert (= (and b!3177356 c!533930) b!3177357))

(assert (= (and b!3177356 (not c!533930)) b!3177358))

(assert (= (and b!3177358 (not res!1290893)) b!3177359))

(declare-fun m!3433929 () Bool)

(assert (=> b!3177357 m!3433929))

(assert (=> d!869898 m!3433919))

(assert (=> d!869898 m!3433919))

(declare-fun m!3433931 () Bool)

(assert (=> d!869898 m!3433931))

(declare-fun m!3433933 () Bool)

(assert (=> b!3177359 m!3433933))

(declare-fun m!3433935 () Bool)

(assert (=> b!3177358 m!3433935))

(assert (=> b!3177294 d!869898))

(declare-fun d!869902 () Bool)

(declare-fun size!26916 (List!35739) Int)

(assert (=> d!869902 (= (inv!48471 (xs!13674 t!3671)) (<= (size!26916 (innerList!10616 (xs!13674 t!3671))) 2147483647))))

(declare-fun bs!539778 () Bool)

(assert (= bs!539778 d!869902))

(declare-fun m!3433937 () Bool)

(assert (=> bs!539778 m!3433937))

(assert (=> b!3177298 d!869902))

(declare-fun d!869904 () Bool)

(declare-fun c!533937 () Bool)

(assert (=> d!869904 (= c!533937 ((_ is Node!10556) t!3671))))

(declare-fun e!1979048 () Bool)

(assert (=> d!869904 (= (inv!48470 t!3671) e!1979048)))

(declare-fun b!3177374 () Bool)

(declare-fun inv!48474 (Conc!10556) Bool)

(assert (=> b!3177374 (= e!1979048 (inv!48474 t!3671))))

(declare-fun b!3177375 () Bool)

(declare-fun e!1979049 () Bool)

(assert (=> b!3177375 (= e!1979048 e!1979049)))

(declare-fun res!1290897 () Bool)

(assert (=> b!3177375 (= res!1290897 (not ((_ is Leaf!16712) t!3671)))))

(assert (=> b!3177375 (=> res!1290897 e!1979049)))

(declare-fun b!3177376 () Bool)

(declare-fun inv!48475 (Conc!10556) Bool)

(assert (=> b!3177376 (= e!1979049 (inv!48475 t!3671))))

(assert (= (and d!869904 c!533937) b!3177374))

(assert (= (and d!869904 (not c!533937)) b!3177375))

(assert (= (and b!3177375 (not res!1290897)) b!3177376))

(declare-fun m!3433939 () Bool)

(assert (=> b!3177374 m!3433939))

(declare-fun m!3433941 () Bool)

(assert (=> b!3177376 m!3433941))

(assert (=> start!297594 d!869904))

(declare-fun d!869906 () Bool)

(declare-fun c!533938 () Bool)

(assert (=> d!869906 (= c!533938 ((_ is Node!10556) (left!27711 t!3671)))))

(declare-fun e!1979050 () Bool)

(assert (=> d!869906 (= (inv!48470 (left!27711 t!3671)) e!1979050)))

(declare-fun b!3177377 () Bool)

(assert (=> b!3177377 (= e!1979050 (inv!48474 (left!27711 t!3671)))))

(declare-fun b!3177378 () Bool)

(declare-fun e!1979051 () Bool)

(assert (=> b!3177378 (= e!1979050 e!1979051)))

(declare-fun res!1290898 () Bool)

(assert (=> b!3177378 (= res!1290898 (not ((_ is Leaf!16712) (left!27711 t!3671))))))

(assert (=> b!3177378 (=> res!1290898 e!1979051)))

(declare-fun b!3177379 () Bool)

(assert (=> b!3177379 (= e!1979051 (inv!48475 (left!27711 t!3671)))))

(assert (= (and d!869906 c!533938) b!3177377))

(assert (= (and d!869906 (not c!533938)) b!3177378))

(assert (= (and b!3177378 (not res!1290898)) b!3177379))

(declare-fun m!3433943 () Bool)

(assert (=> b!3177377 m!3433943))

(declare-fun m!3433945 () Bool)

(assert (=> b!3177379 m!3433945))

(assert (=> b!3177296 d!869906))

(declare-fun d!869908 () Bool)

(declare-fun c!533939 () Bool)

(assert (=> d!869908 (= c!533939 ((_ is Node!10556) (right!28041 t!3671)))))

(declare-fun e!1979052 () Bool)

(assert (=> d!869908 (= (inv!48470 (right!28041 t!3671)) e!1979052)))

(declare-fun b!3177380 () Bool)

(assert (=> b!3177380 (= e!1979052 (inv!48474 (right!28041 t!3671)))))

(declare-fun b!3177381 () Bool)

(declare-fun e!1979053 () Bool)

(assert (=> b!3177381 (= e!1979052 e!1979053)))

(declare-fun res!1290899 () Bool)

(assert (=> b!3177381 (= res!1290899 (not ((_ is Leaf!16712) (right!28041 t!3671))))))

(assert (=> b!3177381 (=> res!1290899 e!1979053)))

(declare-fun b!3177382 () Bool)

(assert (=> b!3177382 (= e!1979053 (inv!48475 (right!28041 t!3671)))))

(assert (= (and d!869908 c!533939) b!3177380))

(assert (= (and d!869908 (not c!533939)) b!3177381))

(assert (= (and b!3177381 (not res!1290899)) b!3177382))

(declare-fun m!3433947 () Bool)

(assert (=> b!3177380 m!3433947))

(declare-fun m!3433949 () Bool)

(assert (=> b!3177382 m!3433949))

(assert (=> b!3177296 d!869908))

(declare-fun b!3177391 () Bool)

(declare-fun e!1979058 () Bool)

(declare-fun tp!1004881 () Bool)

(assert (=> b!3177391 (= e!1979058 (and tp_is_empty!17237 tp!1004881))))

(assert (=> b!3177297 (= tp!1004876 e!1979058)))

(assert (= (and b!3177297 ((_ is Cons!35615) (innerList!10616 (xs!13674 t!3671)))) b!3177391))

(declare-fun b!3177410 () Bool)

(declare-fun tp!1004889 () Bool)

(declare-fun e!1979070 () Bool)

(declare-fun tp!1004888 () Bool)

(assert (=> b!3177410 (= e!1979070 (and (inv!48470 (left!27711 (left!27711 t!3671))) tp!1004888 (inv!48470 (right!28041 (left!27711 t!3671))) tp!1004889))))

(declare-fun b!3177412 () Bool)

(declare-fun e!1979071 () Bool)

(declare-fun tp!1004890 () Bool)

(assert (=> b!3177412 (= e!1979071 tp!1004890)))

(declare-fun b!3177411 () Bool)

(assert (=> b!3177411 (= e!1979070 (and (inv!48471 (xs!13674 (left!27711 t!3671))) e!1979071))))

(assert (=> b!3177296 (= tp!1004877 (and (inv!48470 (left!27711 t!3671)) e!1979070))))

(assert (= (and b!3177296 ((_ is Node!10556) (left!27711 t!3671))) b!3177410))

(assert (= b!3177411 b!3177412))

(assert (= (and b!3177296 ((_ is Leaf!16712) (left!27711 t!3671))) b!3177411))

(declare-fun m!3433973 () Bool)

(assert (=> b!3177410 m!3433973))

(declare-fun m!3433975 () Bool)

(assert (=> b!3177410 m!3433975))

(declare-fun m!3433977 () Bool)

(assert (=> b!3177411 m!3433977))

(assert (=> b!3177296 m!3433879))

(declare-fun tp!1004892 () Bool)

(declare-fun e!1979072 () Bool)

(declare-fun b!3177413 () Bool)

(declare-fun tp!1004891 () Bool)

(assert (=> b!3177413 (= e!1979072 (and (inv!48470 (left!27711 (right!28041 t!3671))) tp!1004891 (inv!48470 (right!28041 (right!28041 t!3671))) tp!1004892))))

(declare-fun b!3177415 () Bool)

(declare-fun e!1979073 () Bool)

(declare-fun tp!1004893 () Bool)

(assert (=> b!3177415 (= e!1979073 tp!1004893)))

(declare-fun b!3177414 () Bool)

(assert (=> b!3177414 (= e!1979072 (and (inv!48471 (xs!13674 (right!28041 t!3671))) e!1979073))))

(assert (=> b!3177296 (= tp!1004878 (and (inv!48470 (right!28041 t!3671)) e!1979072))))

(assert (= (and b!3177296 ((_ is Node!10556) (right!28041 t!3671))) b!3177413))

(assert (= b!3177414 b!3177415))

(assert (= (and b!3177296 ((_ is Leaf!16712) (right!28041 t!3671))) b!3177414))

(declare-fun m!3433979 () Bool)

(assert (=> b!3177413 m!3433979))

(declare-fun m!3433981 () Bool)

(assert (=> b!3177413 m!3433981))

(declare-fun m!3433983 () Bool)

(assert (=> b!3177414 m!3433983))

(assert (=> b!3177296 m!3433881))

(check-sat (not b!3177358) (not d!869898) (not b!3177318) (not d!869892) tp_is_empty!17237 (not b!3177359) (not b!3177410) (not b!3177333) (not b!3177412) (not b!3177413) (not b!3177382) (not b!3177353) (not b!3177391) (not b!3177380) (not d!869902) (not b!3177319) (not b!3177414) (not b!3177379) (not b!3177415) (not b!3177376) (not d!869888) (not b!3177374) (not b!3177317) (not b!3177377) (not b!3177357) (not b!3177411) (not b!3177296) (not b!3177352))
(check-sat)
(get-model)

(declare-fun d!869918 () Bool)

(declare-fun c!533945 () Bool)

(assert (=> d!869918 (= c!533945 ((_ is Node!10556) (left!27711 (left!27711 t!3671))))))

(declare-fun e!1979085 () Bool)

(assert (=> d!869918 (= (inv!48470 (left!27711 (left!27711 t!3671))) e!1979085)))

(declare-fun b!3177435 () Bool)

(assert (=> b!3177435 (= e!1979085 (inv!48474 (left!27711 (left!27711 t!3671))))))

(declare-fun b!3177436 () Bool)

(declare-fun e!1979086 () Bool)

(assert (=> b!3177436 (= e!1979085 e!1979086)))

(declare-fun res!1290904 () Bool)

(assert (=> b!3177436 (= res!1290904 (not ((_ is Leaf!16712) (left!27711 (left!27711 t!3671)))))))

(assert (=> b!3177436 (=> res!1290904 e!1979086)))

(declare-fun b!3177437 () Bool)

(assert (=> b!3177437 (= e!1979086 (inv!48475 (left!27711 (left!27711 t!3671))))))

(assert (= (and d!869918 c!533945) b!3177435))

(assert (= (and d!869918 (not c!533945)) b!3177436))

(assert (= (and b!3177436 (not res!1290904)) b!3177437))

(declare-fun m!3433999 () Bool)

(assert (=> b!3177435 m!3433999))

(declare-fun m!3434001 () Bool)

(assert (=> b!3177437 m!3434001))

(assert (=> b!3177410 d!869918))

(declare-fun d!869920 () Bool)

(declare-fun c!533946 () Bool)

(assert (=> d!869920 (= c!533946 ((_ is Node!10556) (right!28041 (left!27711 t!3671))))))

(declare-fun e!1979087 () Bool)

(assert (=> d!869920 (= (inv!48470 (right!28041 (left!27711 t!3671))) e!1979087)))

(declare-fun b!3177438 () Bool)

(assert (=> b!3177438 (= e!1979087 (inv!48474 (right!28041 (left!27711 t!3671))))))

(declare-fun b!3177439 () Bool)

(declare-fun e!1979088 () Bool)

(assert (=> b!3177439 (= e!1979087 e!1979088)))

(declare-fun res!1290905 () Bool)

(assert (=> b!3177439 (= res!1290905 (not ((_ is Leaf!16712) (right!28041 (left!27711 t!3671)))))))

(assert (=> b!3177439 (=> res!1290905 e!1979088)))

(declare-fun b!3177440 () Bool)

(assert (=> b!3177440 (= e!1979088 (inv!48475 (right!28041 (left!27711 t!3671))))))

(assert (= (and d!869920 c!533946) b!3177438))

(assert (= (and d!869920 (not c!533946)) b!3177439))

(assert (= (and b!3177439 (not res!1290905)) b!3177440))

(declare-fun m!3434003 () Bool)

(assert (=> b!3177438 m!3434003))

(declare-fun m!3434005 () Bool)

(assert (=> b!3177440 m!3434005))

(assert (=> b!3177410 d!869920))

(declare-fun d!869922 () Bool)

(assert (=> d!869922 (= (inv!48471 (xs!13674 (right!28041 t!3671))) (<= (size!26916 (innerList!10616 (xs!13674 (right!28041 t!3671)))) 2147483647))))

(declare-fun bs!539780 () Bool)

(assert (= bs!539780 d!869922))

(declare-fun m!3434007 () Bool)

(assert (=> bs!539780 m!3434007))

(assert (=> b!3177414 d!869922))

(declare-fun d!869924 () Bool)

(declare-fun res!1290910 () Bool)

(declare-fun e!1979091 () Bool)

(assert (=> d!869924 (=> (not res!1290910) (not e!1979091))))

(assert (=> d!869924 (= res!1290910 (<= (size!26916 (list!12648 (xs!13674 t!3671))) 512))))

(assert (=> d!869924 (= (inv!48475 t!3671) e!1979091)))

(declare-fun b!3177445 () Bool)

(declare-fun res!1290911 () Bool)

(assert (=> b!3177445 (=> (not res!1290911) (not e!1979091))))

(assert (=> b!3177445 (= res!1290911 (= (csize!21343 t!3671) (size!26916 (list!12648 (xs!13674 t!3671)))))))

(declare-fun b!3177446 () Bool)

(assert (=> b!3177446 (= e!1979091 (and (> (csize!21343 t!3671) 0) (<= (csize!21343 t!3671) 512)))))

(assert (= (and d!869924 res!1290910) b!3177445))

(assert (= (and b!3177445 res!1290911) b!3177446))

(assert (=> d!869924 m!3433917))

(assert (=> d!869924 m!3433917))

(declare-fun m!3434009 () Bool)

(assert (=> d!869924 m!3434009))

(assert (=> b!3177445 m!3433917))

(assert (=> b!3177445 m!3433917))

(assert (=> b!3177445 m!3434009))

(assert (=> b!3177376 d!869924))

(declare-fun d!869926 () Bool)

(declare-fun lt!1068101 () Bool)

(assert (=> d!869926 (= lt!1068101 (select (content!4835 (t!234838 (list!12647 t!3671))) v!5469))))

(declare-fun e!1979092 () Bool)

(assert (=> d!869926 (= lt!1068101 e!1979092)))

(declare-fun res!1290913 () Bool)

(assert (=> d!869926 (=> (not res!1290913) (not e!1979092))))

(assert (=> d!869926 (= res!1290913 ((_ is Cons!35615) (t!234838 (list!12647 t!3671))))))

(assert (=> d!869926 (= (contains!6298 (t!234838 (list!12647 t!3671)) v!5469) lt!1068101)))

(declare-fun b!3177447 () Bool)

(declare-fun e!1979093 () Bool)

(assert (=> b!3177447 (= e!1979092 e!1979093)))

(declare-fun res!1290912 () Bool)

(assert (=> b!3177447 (=> res!1290912 e!1979093)))

(assert (=> b!3177447 (= res!1290912 (= (h!41035 (t!234838 (list!12647 t!3671))) v!5469))))

(declare-fun b!3177448 () Bool)

(assert (=> b!3177448 (= e!1979093 (contains!6298 (t!234838 (t!234838 (list!12647 t!3671))) v!5469))))

(assert (= (and d!869926 res!1290913) b!3177447))

(assert (= (and b!3177447 (not res!1290912)) b!3177448))

(declare-fun m!3434011 () Bool)

(assert (=> d!869926 m!3434011))

(declare-fun m!3434013 () Bool)

(assert (=> d!869926 m!3434013))

(declare-fun m!3434015 () Bool)

(assert (=> b!3177448 m!3434015))

(assert (=> b!3177333 d!869926))

(declare-fun b!3177450 () Bool)

(declare-fun e!1979096 () Bool)

(assert (=> b!3177450 (= e!1979096 (contains!6300 (xs!13674 (left!27711 (right!28041 t!3671))) v!5469))))

(declare-fun b!3177449 () Bool)

(declare-fun e!1979095 () Bool)

(assert (=> b!3177449 (= e!1979095 e!1979096)))

(declare-fun c!533947 () Bool)

(assert (=> b!3177449 (= c!533947 ((_ is Leaf!16712) (left!27711 (right!28041 t!3671))))))

(declare-fun d!869928 () Bool)

(declare-fun lt!1068102 () Bool)

(assert (=> d!869928 (= lt!1068102 (contains!6298 (list!12647 (left!27711 (right!28041 t!3671))) v!5469))))

(assert (=> d!869928 (= lt!1068102 e!1979095)))

(declare-fun res!1290915 () Bool)

(assert (=> d!869928 (=> (not res!1290915) (not e!1979095))))

(assert (=> d!869928 (= res!1290915 (not ((_ is Empty!10556) (left!27711 (right!28041 t!3671)))))))

(assert (=> d!869928 (= (contains!6299 (left!27711 (right!28041 t!3671)) v!5469) lt!1068102)))

(declare-fun b!3177452 () Bool)

(declare-fun e!1979094 () Bool)

(assert (=> b!3177452 (= e!1979094 (contains!6299 (right!28041 (left!27711 (right!28041 t!3671))) v!5469))))

(declare-fun b!3177451 () Bool)

(assert (=> b!3177451 (= e!1979096 e!1979094)))

(declare-fun res!1290914 () Bool)

(assert (=> b!3177451 (= res!1290914 (contains!6299 (left!27711 (left!27711 (right!28041 t!3671))) v!5469))))

(assert (=> b!3177451 (=> res!1290914 e!1979094)))

(assert (= (and d!869928 res!1290915) b!3177449))

(assert (= (and b!3177449 c!533947) b!3177450))

(assert (= (and b!3177449 (not c!533947)) b!3177451))

(assert (= (and b!3177451 (not res!1290914)) b!3177452))

(declare-fun m!3434017 () Bool)

(assert (=> b!3177450 m!3434017))

(declare-fun m!3434019 () Bool)

(assert (=> d!869928 m!3434019))

(assert (=> d!869928 m!3434019))

(declare-fun m!3434021 () Bool)

(assert (=> d!869928 m!3434021))

(declare-fun m!3434023 () Bool)

(assert (=> b!3177452 m!3434023))

(declare-fun m!3434025 () Bool)

(assert (=> b!3177451 m!3434025))

(assert (=> b!3177318 d!869928))

(declare-fun b!3177454 () Bool)

(declare-fun e!1979099 () Bool)

(assert (=> b!3177454 (= e!1979099 (contains!6300 (xs!13674 (right!28041 (right!28041 t!3671))) v!5469))))

(declare-fun b!3177453 () Bool)

(declare-fun e!1979098 () Bool)

(assert (=> b!3177453 (= e!1979098 e!1979099)))

(declare-fun c!533948 () Bool)

(assert (=> b!3177453 (= c!533948 ((_ is Leaf!16712) (right!28041 (right!28041 t!3671))))))

(declare-fun d!869930 () Bool)

(declare-fun lt!1068103 () Bool)

(assert (=> d!869930 (= lt!1068103 (contains!6298 (list!12647 (right!28041 (right!28041 t!3671))) v!5469))))

(assert (=> d!869930 (= lt!1068103 e!1979098)))

(declare-fun res!1290917 () Bool)

(assert (=> d!869930 (=> (not res!1290917) (not e!1979098))))

(assert (=> d!869930 (= res!1290917 (not ((_ is Empty!10556) (right!28041 (right!28041 t!3671)))))))

(assert (=> d!869930 (= (contains!6299 (right!28041 (right!28041 t!3671)) v!5469) lt!1068103)))

(declare-fun b!3177456 () Bool)

(declare-fun e!1979097 () Bool)

(assert (=> b!3177456 (= e!1979097 (contains!6299 (right!28041 (right!28041 (right!28041 t!3671))) v!5469))))

(declare-fun b!3177455 () Bool)

(assert (=> b!3177455 (= e!1979099 e!1979097)))

(declare-fun res!1290916 () Bool)

(assert (=> b!3177455 (= res!1290916 (contains!6299 (left!27711 (right!28041 (right!28041 t!3671))) v!5469))))

(assert (=> b!3177455 (=> res!1290916 e!1979097)))

(assert (= (and d!869930 res!1290917) b!3177453))

(assert (= (and b!3177453 c!533948) b!3177454))

(assert (= (and b!3177453 (not c!533948)) b!3177455))

(assert (= (and b!3177455 (not res!1290916)) b!3177456))

(declare-fun m!3434027 () Bool)

(assert (=> b!3177454 m!3434027))

(declare-fun m!3434029 () Bool)

(assert (=> d!869930 m!3434029))

(assert (=> d!869930 m!3434029))

(declare-fun m!3434031 () Bool)

(assert (=> d!869930 m!3434031))

(declare-fun m!3434033 () Bool)

(assert (=> b!3177456 m!3434033))

(declare-fun m!3434035 () Bool)

(assert (=> b!3177455 m!3434035))

(assert (=> b!3177319 d!869930))

(declare-fun d!869932 () Bool)

(declare-fun c!533949 () Bool)

(assert (=> d!869932 (= c!533949 ((_ is Node!10556) (left!27711 (right!28041 t!3671))))))

(declare-fun e!1979100 () Bool)

(assert (=> d!869932 (= (inv!48470 (left!27711 (right!28041 t!3671))) e!1979100)))

(declare-fun b!3177457 () Bool)

(assert (=> b!3177457 (= e!1979100 (inv!48474 (left!27711 (right!28041 t!3671))))))

(declare-fun b!3177458 () Bool)

(declare-fun e!1979101 () Bool)

(assert (=> b!3177458 (= e!1979100 e!1979101)))

(declare-fun res!1290918 () Bool)

(assert (=> b!3177458 (= res!1290918 (not ((_ is Leaf!16712) (left!27711 (right!28041 t!3671)))))))

(assert (=> b!3177458 (=> res!1290918 e!1979101)))

(declare-fun b!3177459 () Bool)

(assert (=> b!3177459 (= e!1979101 (inv!48475 (left!27711 (right!28041 t!3671))))))

(assert (= (and d!869932 c!533949) b!3177457))

(assert (= (and d!869932 (not c!533949)) b!3177458))

(assert (= (and b!3177458 (not res!1290918)) b!3177459))

(declare-fun m!3434037 () Bool)

(assert (=> b!3177457 m!3434037))

(declare-fun m!3434039 () Bool)

(assert (=> b!3177459 m!3434039))

(assert (=> b!3177413 d!869932))

(declare-fun d!869934 () Bool)

(declare-fun c!533950 () Bool)

(assert (=> d!869934 (= c!533950 ((_ is Node!10556) (right!28041 (right!28041 t!3671))))))

(declare-fun e!1979102 () Bool)

(assert (=> d!869934 (= (inv!48470 (right!28041 (right!28041 t!3671))) e!1979102)))

(declare-fun b!3177460 () Bool)

(assert (=> b!3177460 (= e!1979102 (inv!48474 (right!28041 (right!28041 t!3671))))))

(declare-fun b!3177461 () Bool)

(declare-fun e!1979103 () Bool)

(assert (=> b!3177461 (= e!1979102 e!1979103)))

(declare-fun res!1290919 () Bool)

(assert (=> b!3177461 (= res!1290919 (not ((_ is Leaf!16712) (right!28041 (right!28041 t!3671)))))))

(assert (=> b!3177461 (=> res!1290919 e!1979103)))

(declare-fun b!3177462 () Bool)

(assert (=> b!3177462 (= e!1979103 (inv!48475 (right!28041 (right!28041 t!3671))))))

(assert (= (and d!869934 c!533950) b!3177460))

(assert (= (and d!869934 (not c!533950)) b!3177461))

(assert (= (and b!3177461 (not res!1290919)) b!3177462))

(declare-fun m!3434041 () Bool)

(assert (=> b!3177460 m!3434041))

(declare-fun m!3434043 () Bool)

(assert (=> b!3177462 m!3434043))

(assert (=> b!3177413 d!869934))

(declare-fun d!869936 () Bool)

(declare-fun res!1290920 () Bool)

(declare-fun e!1979104 () Bool)

(assert (=> d!869936 (=> (not res!1290920) (not e!1979104))))

(assert (=> d!869936 (= res!1290920 (<= (size!26916 (list!12648 (xs!13674 (right!28041 t!3671)))) 512))))

(assert (=> d!869936 (= (inv!48475 (right!28041 t!3671)) e!1979104)))

(declare-fun b!3177463 () Bool)

(declare-fun res!1290921 () Bool)

(assert (=> b!3177463 (=> (not res!1290921) (not e!1979104))))

(assert (=> b!3177463 (= res!1290921 (= (csize!21343 (right!28041 t!3671)) (size!26916 (list!12648 (xs!13674 (right!28041 t!3671))))))))

(declare-fun b!3177464 () Bool)

(assert (=> b!3177464 (= e!1979104 (and (> (csize!21343 (right!28041 t!3671)) 0) (<= (csize!21343 (right!28041 t!3671)) 512)))))

(assert (= (and d!869936 res!1290920) b!3177463))

(assert (= (and b!3177463 res!1290921) b!3177464))

(declare-fun m!3434045 () Bool)

(assert (=> d!869936 m!3434045))

(assert (=> d!869936 m!3434045))

(declare-fun m!3434047 () Bool)

(assert (=> d!869936 m!3434047))

(assert (=> b!3177463 m!3434045))

(assert (=> b!3177463 m!3434045))

(assert (=> b!3177463 m!3434047))

(assert (=> b!3177382 d!869936))

(declare-fun d!869938 () Bool)

(declare-fun res!1290928 () Bool)

(declare-fun e!1979107 () Bool)

(assert (=> d!869938 (=> (not res!1290928) (not e!1979107))))

(declare-fun size!26918 (Conc!10556) Int)

(assert (=> d!869938 (= res!1290928 (= (csize!21342 (right!28041 t!3671)) (+ (size!26918 (left!27711 (right!28041 t!3671))) (size!26918 (right!28041 (right!28041 t!3671))))))))

(assert (=> d!869938 (= (inv!48474 (right!28041 t!3671)) e!1979107)))

(declare-fun b!3177471 () Bool)

(declare-fun res!1290929 () Bool)

(assert (=> b!3177471 (=> (not res!1290929) (not e!1979107))))

(assert (=> b!3177471 (= res!1290929 (and (not (= (left!27711 (right!28041 t!3671)) Empty!10556)) (not (= (right!28041 (right!28041 t!3671)) Empty!10556))))))

(declare-fun b!3177472 () Bool)

(declare-fun res!1290930 () Bool)

(assert (=> b!3177472 (=> (not res!1290930) (not e!1979107))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1527 (Conc!10556) Int)

(assert (=> b!3177472 (= res!1290930 (= (cheight!10767 (right!28041 t!3671)) (+ (max!0 (height!1527 (left!27711 (right!28041 t!3671))) (height!1527 (right!28041 (right!28041 t!3671)))) 1)))))

(declare-fun b!3177473 () Bool)

(assert (=> b!3177473 (= e!1979107 (<= 0 (cheight!10767 (right!28041 t!3671))))))

(assert (= (and d!869938 res!1290928) b!3177471))

(assert (= (and b!3177471 res!1290929) b!3177472))

(assert (= (and b!3177472 res!1290930) b!3177473))

(declare-fun m!3434049 () Bool)

(assert (=> d!869938 m!3434049))

(declare-fun m!3434051 () Bool)

(assert (=> d!869938 m!3434051))

(declare-fun m!3434053 () Bool)

(assert (=> b!3177472 m!3434053))

(declare-fun m!3434055 () Bool)

(assert (=> b!3177472 m!3434055))

(assert (=> b!3177472 m!3434053))

(assert (=> b!3177472 m!3434055))

(declare-fun m!3434057 () Bool)

(assert (=> b!3177472 m!3434057))

(assert (=> b!3177380 d!869938))

(declare-fun d!869940 () Bool)

(assert (=> d!869940 (= (inv!48471 (xs!13674 (left!27711 t!3671))) (<= (size!26916 (innerList!10616 (xs!13674 (left!27711 t!3671)))) 2147483647))))

(declare-fun bs!539781 () Bool)

(assert (= bs!539781 d!869940))

(declare-fun m!3434059 () Bool)

(assert (=> bs!539781 m!3434059))

(assert (=> b!3177411 d!869940))

(declare-fun d!869942 () Bool)

(declare-fun lt!1068104 () Bool)

(assert (=> d!869942 (= lt!1068104 (select (content!4835 (list!12647 (left!27711 t!3671))) v!5469))))

(declare-fun e!1979108 () Bool)

(assert (=> d!869942 (= lt!1068104 e!1979108)))

(declare-fun res!1290932 () Bool)

(assert (=> d!869942 (=> (not res!1290932) (not e!1979108))))

(assert (=> d!869942 (= res!1290932 ((_ is Cons!35615) (list!12647 (left!27711 t!3671))))))

(assert (=> d!869942 (= (contains!6298 (list!12647 (left!27711 t!3671)) v!5469) lt!1068104)))

(declare-fun b!3177474 () Bool)

(declare-fun e!1979109 () Bool)

(assert (=> b!3177474 (= e!1979108 e!1979109)))

(declare-fun res!1290931 () Bool)

(assert (=> b!3177474 (=> res!1290931 e!1979109)))

(assert (=> b!3177474 (= res!1290931 (= (h!41035 (list!12647 (left!27711 t!3671))) v!5469))))

(declare-fun b!3177475 () Bool)

(assert (=> b!3177475 (= e!1979109 (contains!6298 (t!234838 (list!12647 (left!27711 t!3671))) v!5469))))

(assert (= (and d!869942 res!1290932) b!3177474))

(assert (= (and b!3177474 (not res!1290931)) b!3177475))

(assert (=> d!869942 m!3433919))

(declare-fun m!3434061 () Bool)

(assert (=> d!869942 m!3434061))

(declare-fun m!3434063 () Bool)

(assert (=> d!869942 m!3434063))

(declare-fun m!3434065 () Bool)

(assert (=> b!3177475 m!3434065))

(assert (=> d!869898 d!869942))

(declare-fun b!3177478 () Bool)

(declare-fun e!1979111 () List!35739)

(assert (=> b!3177478 (= e!1979111 (list!12648 (xs!13674 (left!27711 t!3671))))))

(declare-fun d!869946 () Bool)

(declare-fun c!533951 () Bool)

(assert (=> d!869946 (= c!533951 ((_ is Empty!10556) (left!27711 t!3671)))))

(declare-fun e!1979110 () List!35739)

(assert (=> d!869946 (= (list!12647 (left!27711 t!3671)) e!1979110)))

(declare-fun b!3177476 () Bool)

(assert (=> b!3177476 (= e!1979110 Nil!35615)))

(declare-fun b!3177477 () Bool)

(assert (=> b!3177477 (= e!1979110 e!1979111)))

(declare-fun c!533952 () Bool)

(assert (=> b!3177477 (= c!533952 ((_ is Leaf!16712) (left!27711 t!3671)))))

(declare-fun b!3177479 () Bool)

(assert (=> b!3177479 (= e!1979111 (++!8521 (list!12647 (left!27711 (left!27711 t!3671))) (list!12647 (right!28041 (left!27711 t!3671)))))))

(assert (= (and d!869946 c!533951) b!3177476))

(assert (= (and d!869946 (not c!533951)) b!3177477))

(assert (= (and b!3177477 c!533952) b!3177478))

(assert (= (and b!3177477 (not c!533952)) b!3177479))

(declare-fun m!3434067 () Bool)

(assert (=> b!3177478 m!3434067))

(declare-fun m!3434069 () Bool)

(assert (=> b!3177479 m!3434069))

(declare-fun m!3434071 () Bool)

(assert (=> b!3177479 m!3434071))

(assert (=> b!3177479 m!3434069))

(assert (=> b!3177479 m!3434071))

(declare-fun m!3434073 () Bool)

(assert (=> b!3177479 m!3434073))

(assert (=> d!869898 d!869946))

(declare-fun b!3177497 () Bool)

(declare-fun e!1979121 () List!35739)

(assert (=> b!3177497 (= e!1979121 (Cons!35615 (h!41035 (list!12647 (left!27711 t!3671))) (++!8521 (t!234838 (list!12647 (left!27711 t!3671))) (list!12647 (right!28041 t!3671)))))))

(declare-fun b!3177498 () Bool)

(declare-fun res!1290942 () Bool)

(declare-fun e!1979120 () Bool)

(assert (=> b!3177498 (=> (not res!1290942) (not e!1979120))))

(declare-fun lt!1068109 () List!35739)

(assert (=> b!3177498 (= res!1290942 (= (size!26916 lt!1068109) (+ (size!26916 (list!12647 (left!27711 t!3671))) (size!26916 (list!12647 (right!28041 t!3671))))))))

(declare-fun d!869948 () Bool)

(assert (=> d!869948 e!1979120))

(declare-fun res!1290941 () Bool)

(assert (=> d!869948 (=> (not res!1290941) (not e!1979120))))

(assert (=> d!869948 (= res!1290941 (= (content!4835 lt!1068109) ((_ map or) (content!4835 (list!12647 (left!27711 t!3671))) (content!4835 (list!12647 (right!28041 t!3671))))))))

(assert (=> d!869948 (= lt!1068109 e!1979121)))

(declare-fun c!533957 () Bool)

(assert (=> d!869948 (= c!533957 ((_ is Nil!35615) (list!12647 (left!27711 t!3671))))))

(assert (=> d!869948 (= (++!8521 (list!12647 (left!27711 t!3671)) (list!12647 (right!28041 t!3671))) lt!1068109)))

(declare-fun b!3177499 () Bool)

(assert (=> b!3177499 (= e!1979120 (or (not (= (list!12647 (right!28041 t!3671)) Nil!35615)) (= lt!1068109 (list!12647 (left!27711 t!3671)))))))

(declare-fun b!3177496 () Bool)

(assert (=> b!3177496 (= e!1979121 (list!12647 (right!28041 t!3671)))))

(assert (= (and d!869948 c!533957) b!3177496))

(assert (= (and d!869948 (not c!533957)) b!3177497))

(assert (= (and d!869948 res!1290941) b!3177498))

(assert (= (and b!3177498 res!1290942) b!3177499))

(assert (=> b!3177497 m!3433893))

(declare-fun m!3434075 () Bool)

(assert (=> b!3177497 m!3434075))

(declare-fun m!3434077 () Bool)

(assert (=> b!3177498 m!3434077))

(assert (=> b!3177498 m!3433919))

(declare-fun m!3434079 () Bool)

(assert (=> b!3177498 m!3434079))

(assert (=> b!3177498 m!3433893))

(declare-fun m!3434081 () Bool)

(assert (=> b!3177498 m!3434081))

(declare-fun m!3434083 () Bool)

(assert (=> d!869948 m!3434083))

(assert (=> d!869948 m!3433919))

(assert (=> d!869948 m!3434061))

(assert (=> d!869948 m!3433893))

(declare-fun m!3434085 () Bool)

(assert (=> d!869948 m!3434085))

(assert (=> b!3177353 d!869948))

(assert (=> b!3177353 d!869946))

(declare-fun b!3177502 () Bool)

(declare-fun e!1979123 () List!35739)

(assert (=> b!3177502 (= e!1979123 (list!12648 (xs!13674 (right!28041 t!3671))))))

(declare-fun d!869950 () Bool)

(declare-fun c!533958 () Bool)

(assert (=> d!869950 (= c!533958 ((_ is Empty!10556) (right!28041 t!3671)))))

(declare-fun e!1979122 () List!35739)

(assert (=> d!869950 (= (list!12647 (right!28041 t!3671)) e!1979122)))

(declare-fun b!3177500 () Bool)

(assert (=> b!3177500 (= e!1979122 Nil!35615)))

(declare-fun b!3177501 () Bool)

(assert (=> b!3177501 (= e!1979122 e!1979123)))

(declare-fun c!533959 () Bool)

(assert (=> b!3177501 (= c!533959 ((_ is Leaf!16712) (right!28041 t!3671)))))

(declare-fun b!3177503 () Bool)

(assert (=> b!3177503 (= e!1979123 (++!8521 (list!12647 (left!27711 (right!28041 t!3671))) (list!12647 (right!28041 (right!28041 t!3671)))))))

(assert (= (and d!869950 c!533958) b!3177500))

(assert (= (and d!869950 (not c!533958)) b!3177501))

(assert (= (and b!3177501 c!533959) b!3177502))

(assert (= (and b!3177501 (not c!533959)) b!3177503))

(assert (=> b!3177502 m!3434045))

(assert (=> b!3177503 m!3434019))

(assert (=> b!3177503 m!3434029))

(assert (=> b!3177503 m!3434019))

(assert (=> b!3177503 m!3434029))

(declare-fun m!3434087 () Bool)

(assert (=> b!3177503 m!3434087))

(assert (=> b!3177353 d!869950))

(declare-fun d!869952 () Bool)

(declare-fun c!533967 () Bool)

(assert (=> d!869952 (= c!533967 ((_ is Nil!35615) (list!12647 t!3671)))))

(declare-fun e!1979132 () (InoxSet T!63172))

(assert (=> d!869952 (= (content!4835 (list!12647 t!3671)) e!1979132)))

(declare-fun b!3177520 () Bool)

(assert (=> b!3177520 (= e!1979132 ((as const (Array T!63172 Bool)) false))))

(declare-fun b!3177521 () Bool)

(assert (=> b!3177521 (= e!1979132 ((_ map or) (store ((as const (Array T!63172 Bool)) false) (h!41035 (list!12647 t!3671)) true) (content!4835 (t!234838 (list!12647 t!3671)))))))

(assert (= (and d!869952 c!533967) b!3177520))

(assert (= (and d!869952 (not c!533967)) b!3177521))

(declare-fun m!3434119 () Bool)

(assert (=> b!3177521 m!3434119))

(assert (=> b!3177521 m!3434011))

(assert (=> d!869892 d!869952))

(declare-fun d!869960 () Bool)

(assert (=> d!869960 (= (list!12648 (xs!13674 t!3671)) (innerList!10616 (xs!13674 t!3671)))))

(assert (=> b!3177352 d!869960))

(declare-fun d!869964 () Bool)

(declare-fun res!1290947 () Bool)

(declare-fun e!1979137 () Bool)

(assert (=> d!869964 (=> (not res!1290947) (not e!1979137))))

(assert (=> d!869964 (= res!1290947 (= (csize!21342 (left!27711 t!3671)) (+ (size!26918 (left!27711 (left!27711 t!3671))) (size!26918 (right!28041 (left!27711 t!3671))))))))

(assert (=> d!869964 (= (inv!48474 (left!27711 t!3671)) e!1979137)))

(declare-fun b!3177528 () Bool)

(declare-fun res!1290948 () Bool)

(assert (=> b!3177528 (=> (not res!1290948) (not e!1979137))))

(assert (=> b!3177528 (= res!1290948 (and (not (= (left!27711 (left!27711 t!3671)) Empty!10556)) (not (= (right!28041 (left!27711 t!3671)) Empty!10556))))))

(declare-fun b!3177529 () Bool)

(declare-fun res!1290949 () Bool)

(assert (=> b!3177529 (=> (not res!1290949) (not e!1979137))))

(assert (=> b!3177529 (= res!1290949 (= (cheight!10767 (left!27711 t!3671)) (+ (max!0 (height!1527 (left!27711 (left!27711 t!3671))) (height!1527 (right!28041 (left!27711 t!3671)))) 1)))))

(declare-fun b!3177530 () Bool)

(assert (=> b!3177530 (= e!1979137 (<= 0 (cheight!10767 (left!27711 t!3671))))))

(assert (= (and d!869964 res!1290947) b!3177528))

(assert (= (and b!3177528 res!1290948) b!3177529))

(assert (= (and b!3177529 res!1290949) b!3177530))

(declare-fun m!3434131 () Bool)

(assert (=> d!869964 m!3434131))

(declare-fun m!3434133 () Bool)

(assert (=> d!869964 m!3434133))

(declare-fun m!3434135 () Bool)

(assert (=> b!3177529 m!3434135))

(declare-fun m!3434137 () Bool)

(assert (=> b!3177529 m!3434137))

(assert (=> b!3177529 m!3434135))

(assert (=> b!3177529 m!3434137))

(declare-fun m!3434139 () Bool)

(assert (=> b!3177529 m!3434139))

(assert (=> b!3177377 d!869964))

(declare-fun d!869970 () Bool)

(declare-fun lt!1068115 () Bool)

(assert (=> d!869970 (= lt!1068115 (contains!6298 (list!12648 (xs!13674 (left!27711 t!3671))) v!5469))))

(declare-fun choose!18526 (IArray!21117 T!63172) Bool)

(assert (=> d!869970 (= lt!1068115 (choose!18526 (xs!13674 (left!27711 t!3671)) v!5469))))

(assert (=> d!869970 (= (contains!6300 (xs!13674 (left!27711 t!3671)) v!5469) lt!1068115)))

(declare-fun bs!539783 () Bool)

(assert (= bs!539783 d!869970))

(assert (=> bs!539783 m!3434067))

(assert (=> bs!539783 m!3434067))

(declare-fun m!3434157 () Bool)

(assert (=> bs!539783 m!3434157))

(declare-fun m!3434159 () Bool)

(assert (=> bs!539783 m!3434159))

(assert (=> b!3177357 d!869970))

(declare-fun b!3177540 () Bool)

(declare-fun e!1979146 () Bool)

(assert (=> b!3177540 (= e!1979146 (contains!6300 (xs!13674 (left!27711 (left!27711 t!3671))) v!5469))))

(declare-fun b!3177539 () Bool)

(declare-fun e!1979145 () Bool)

(assert (=> b!3177539 (= e!1979145 e!1979146)))

(declare-fun c!533972 () Bool)

(assert (=> b!3177539 (= c!533972 ((_ is Leaf!16712) (left!27711 (left!27711 t!3671))))))

(declare-fun d!869978 () Bool)

(declare-fun lt!1068116 () Bool)

(assert (=> d!869978 (= lt!1068116 (contains!6298 (list!12647 (left!27711 (left!27711 t!3671))) v!5469))))

(assert (=> d!869978 (= lt!1068116 e!1979145)))

(declare-fun res!1290955 () Bool)

(assert (=> d!869978 (=> (not res!1290955) (not e!1979145))))

(assert (=> d!869978 (= res!1290955 (not ((_ is Empty!10556) (left!27711 (left!27711 t!3671)))))))

(assert (=> d!869978 (= (contains!6299 (left!27711 (left!27711 t!3671)) v!5469) lt!1068116)))

(declare-fun b!3177542 () Bool)

(declare-fun e!1979144 () Bool)

(assert (=> b!3177542 (= e!1979144 (contains!6299 (right!28041 (left!27711 (left!27711 t!3671))) v!5469))))

(declare-fun b!3177541 () Bool)

(assert (=> b!3177541 (= e!1979146 e!1979144)))

(declare-fun res!1290954 () Bool)

(assert (=> b!3177541 (= res!1290954 (contains!6299 (left!27711 (left!27711 (left!27711 t!3671))) v!5469))))

(assert (=> b!3177541 (=> res!1290954 e!1979144)))

(assert (= (and d!869978 res!1290955) b!3177539))

(assert (= (and b!3177539 c!533972) b!3177540))

(assert (= (and b!3177539 (not c!533972)) b!3177541))

(assert (= (and b!3177541 (not res!1290954)) b!3177542))

(declare-fun m!3434161 () Bool)

(assert (=> b!3177540 m!3434161))

(assert (=> d!869978 m!3434069))

(assert (=> d!869978 m!3434069))

(declare-fun m!3434163 () Bool)

(assert (=> d!869978 m!3434163))

(declare-fun m!3434165 () Bool)

(assert (=> b!3177542 m!3434165))

(declare-fun m!3434167 () Bool)

(assert (=> b!3177541 m!3434167))

(assert (=> b!3177358 d!869978))

(assert (=> b!3177296 d!869906))

(assert (=> b!3177296 d!869908))

(declare-fun d!869980 () Bool)

(declare-fun lt!1068119 () Int)

(assert (=> d!869980 (>= lt!1068119 0)))

(declare-fun e!1979151 () Int)

(assert (=> d!869980 (= lt!1068119 e!1979151)))

(declare-fun c!533975 () Bool)

(assert (=> d!869980 (= c!533975 ((_ is Nil!35615) (innerList!10616 (xs!13674 t!3671))))))

(assert (=> d!869980 (= (size!26916 (innerList!10616 (xs!13674 t!3671))) lt!1068119)))

(declare-fun b!3177551 () Bool)

(assert (=> b!3177551 (= e!1979151 0)))

(declare-fun b!3177552 () Bool)

(assert (=> b!3177552 (= e!1979151 (+ 1 (size!26916 (t!234838 (innerList!10616 (xs!13674 t!3671))))))))

(assert (= (and d!869980 c!533975) b!3177551))

(assert (= (and d!869980 (not c!533975)) b!3177552))

(declare-fun m!3434169 () Bool)

(assert (=> b!3177552 m!3434169))

(assert (=> d!869902 d!869980))

(declare-fun d!869982 () Bool)

(declare-fun res!1290962 () Bool)

(declare-fun e!1979153 () Bool)

(assert (=> d!869982 (=> (not res!1290962) (not e!1979153))))

(assert (=> d!869982 (= res!1290962 (<= (size!26916 (list!12648 (xs!13674 (left!27711 t!3671)))) 512))))

(assert (=> d!869982 (= (inv!48475 (left!27711 t!3671)) e!1979153)))

(declare-fun b!3177555 () Bool)

(declare-fun res!1290963 () Bool)

(assert (=> b!3177555 (=> (not res!1290963) (not e!1979153))))

(assert (=> b!3177555 (= res!1290963 (= (csize!21343 (left!27711 t!3671)) (size!26916 (list!12648 (xs!13674 (left!27711 t!3671))))))))

(declare-fun b!3177556 () Bool)

(assert (=> b!3177556 (= e!1979153 (and (> (csize!21343 (left!27711 t!3671)) 0) (<= (csize!21343 (left!27711 t!3671)) 512)))))

(assert (= (and d!869982 res!1290962) b!3177555))

(assert (= (and b!3177555 res!1290963) b!3177556))

(assert (=> d!869982 m!3434067))

(assert (=> d!869982 m!3434067))

(declare-fun m!3434171 () Bool)

(assert (=> d!869982 m!3434171))

(assert (=> b!3177555 m!3434067))

(assert (=> b!3177555 m!3434067))

(assert (=> b!3177555 m!3434171))

(assert (=> b!3177379 d!869982))

(declare-fun b!3177558 () Bool)

(declare-fun e!1979156 () Bool)

(assert (=> b!3177558 (= e!1979156 (contains!6300 (xs!13674 (right!28041 (left!27711 t!3671))) v!5469))))

(declare-fun b!3177557 () Bool)

(declare-fun e!1979155 () Bool)

(assert (=> b!3177557 (= e!1979155 e!1979156)))

(declare-fun c!533976 () Bool)

(assert (=> b!3177557 (= c!533976 ((_ is Leaf!16712) (right!28041 (left!27711 t!3671))))))

(declare-fun d!869984 () Bool)

(declare-fun lt!1068120 () Bool)

(assert (=> d!869984 (= lt!1068120 (contains!6298 (list!12647 (right!28041 (left!27711 t!3671))) v!5469))))

(assert (=> d!869984 (= lt!1068120 e!1979155)))

(declare-fun res!1290965 () Bool)

(assert (=> d!869984 (=> (not res!1290965) (not e!1979155))))

(assert (=> d!869984 (= res!1290965 (not ((_ is Empty!10556) (right!28041 (left!27711 t!3671)))))))

(assert (=> d!869984 (= (contains!6299 (right!28041 (left!27711 t!3671)) v!5469) lt!1068120)))

(declare-fun b!3177560 () Bool)

(declare-fun e!1979154 () Bool)

(assert (=> b!3177560 (= e!1979154 (contains!6299 (right!28041 (right!28041 (left!27711 t!3671))) v!5469))))

(declare-fun b!3177559 () Bool)

(assert (=> b!3177559 (= e!1979156 e!1979154)))

(declare-fun res!1290964 () Bool)

(assert (=> b!3177559 (= res!1290964 (contains!6299 (left!27711 (right!28041 (left!27711 t!3671))) v!5469))))

(assert (=> b!3177559 (=> res!1290964 e!1979154)))

(assert (= (and d!869984 res!1290965) b!3177557))

(assert (= (and b!3177557 c!533976) b!3177558))

(assert (= (and b!3177557 (not c!533976)) b!3177559))

(assert (= (and b!3177559 (not res!1290964)) b!3177560))

(declare-fun m!3434175 () Bool)

(assert (=> b!3177558 m!3434175))

(assert (=> d!869984 m!3434071))

(assert (=> d!869984 m!3434071))

(declare-fun m!3434177 () Bool)

(assert (=> d!869984 m!3434177))

(declare-fun m!3434179 () Bool)

(assert (=> b!3177560 m!3434179))

(declare-fun m!3434181 () Bool)

(assert (=> b!3177559 m!3434181))

(assert (=> b!3177359 d!869984))

(declare-fun d!869988 () Bool)

(declare-fun lt!1068121 () Bool)

(assert (=> d!869988 (= lt!1068121 (contains!6298 (list!12648 (xs!13674 (right!28041 t!3671))) v!5469))))

(assert (=> d!869988 (= lt!1068121 (choose!18526 (xs!13674 (right!28041 t!3671)) v!5469))))

(assert (=> d!869988 (= (contains!6300 (xs!13674 (right!28041 t!3671)) v!5469) lt!1068121)))

(declare-fun bs!539784 () Bool)

(assert (= bs!539784 d!869988))

(assert (=> bs!539784 m!3434045))

(assert (=> bs!539784 m!3434045))

(declare-fun m!3434183 () Bool)

(assert (=> bs!539784 m!3434183))

(declare-fun m!3434185 () Bool)

(assert (=> bs!539784 m!3434185))

(assert (=> b!3177317 d!869988))

(declare-fun d!869990 () Bool)

(declare-fun lt!1068122 () Bool)

(assert (=> d!869990 (= lt!1068122 (select (content!4835 (list!12647 (right!28041 t!3671))) v!5469))))

(declare-fun e!1979157 () Bool)

(assert (=> d!869990 (= lt!1068122 e!1979157)))

(declare-fun res!1290967 () Bool)

(assert (=> d!869990 (=> (not res!1290967) (not e!1979157))))

(assert (=> d!869990 (= res!1290967 ((_ is Cons!35615) (list!12647 (right!28041 t!3671))))))

(assert (=> d!869990 (= (contains!6298 (list!12647 (right!28041 t!3671)) v!5469) lt!1068122)))

(declare-fun b!3177561 () Bool)

(declare-fun e!1979158 () Bool)

(assert (=> b!3177561 (= e!1979157 e!1979158)))

(declare-fun res!1290966 () Bool)

(assert (=> b!3177561 (=> res!1290966 e!1979158)))

(assert (=> b!3177561 (= res!1290966 (= (h!41035 (list!12647 (right!28041 t!3671))) v!5469))))

(declare-fun b!3177562 () Bool)

(assert (=> b!3177562 (= e!1979158 (contains!6298 (t!234838 (list!12647 (right!28041 t!3671))) v!5469))))

(assert (= (and d!869990 res!1290967) b!3177561))

(assert (= (and b!3177561 (not res!1290966)) b!3177562))

(assert (=> d!869990 m!3433893))

(assert (=> d!869990 m!3434085))

(declare-fun m!3434187 () Bool)

(assert (=> d!869990 m!3434187))

(declare-fun m!3434189 () Bool)

(assert (=> b!3177562 m!3434189))

(assert (=> d!869888 d!869990))

(assert (=> d!869888 d!869950))

(declare-fun d!869992 () Bool)

(declare-fun res!1290968 () Bool)

(declare-fun e!1979159 () Bool)

(assert (=> d!869992 (=> (not res!1290968) (not e!1979159))))

(assert (=> d!869992 (= res!1290968 (= (csize!21342 t!3671) (+ (size!26918 (left!27711 t!3671)) (size!26918 (right!28041 t!3671)))))))

(assert (=> d!869992 (= (inv!48474 t!3671) e!1979159)))

(declare-fun b!3177563 () Bool)

(declare-fun res!1290969 () Bool)

(assert (=> b!3177563 (=> (not res!1290969) (not e!1979159))))

(assert (=> b!3177563 (= res!1290969 (and (not (= (left!27711 t!3671) Empty!10556)) (not (= (right!28041 t!3671) Empty!10556))))))

(declare-fun b!3177564 () Bool)

(declare-fun res!1290970 () Bool)

(assert (=> b!3177564 (=> (not res!1290970) (not e!1979159))))

(assert (=> b!3177564 (= res!1290970 (= (cheight!10767 t!3671) (+ (max!0 (height!1527 (left!27711 t!3671)) (height!1527 (right!28041 t!3671))) 1)))))

(declare-fun b!3177565 () Bool)

(assert (=> b!3177565 (= e!1979159 (<= 0 (cheight!10767 t!3671)))))

(assert (= (and d!869992 res!1290968) b!3177563))

(assert (= (and b!3177563 res!1290969) b!3177564))

(assert (= (and b!3177564 res!1290970) b!3177565))

(declare-fun m!3434191 () Bool)

(assert (=> d!869992 m!3434191))

(declare-fun m!3434193 () Bool)

(assert (=> d!869992 m!3434193))

(declare-fun m!3434195 () Bool)

(assert (=> b!3177564 m!3434195))

(declare-fun m!3434197 () Bool)

(assert (=> b!3177564 m!3434197))

(assert (=> b!3177564 m!3434195))

(assert (=> b!3177564 m!3434197))

(declare-fun m!3434199 () Bool)

(assert (=> b!3177564 m!3434199))

(assert (=> b!3177374 d!869992))

(declare-fun tp!1004910 () Bool)

(declare-fun tp!1004909 () Bool)

(declare-fun b!3177566 () Bool)

(declare-fun e!1979160 () Bool)

(assert (=> b!3177566 (= e!1979160 (and (inv!48470 (left!27711 (left!27711 (left!27711 t!3671)))) tp!1004909 (inv!48470 (right!28041 (left!27711 (left!27711 t!3671)))) tp!1004910))))

(declare-fun b!3177568 () Bool)

(declare-fun e!1979161 () Bool)

(declare-fun tp!1004911 () Bool)

(assert (=> b!3177568 (= e!1979161 tp!1004911)))

(declare-fun b!3177567 () Bool)

(assert (=> b!3177567 (= e!1979160 (and (inv!48471 (xs!13674 (left!27711 (left!27711 t!3671)))) e!1979161))))

(assert (=> b!3177410 (= tp!1004888 (and (inv!48470 (left!27711 (left!27711 t!3671))) e!1979160))))

(assert (= (and b!3177410 ((_ is Node!10556) (left!27711 (left!27711 t!3671)))) b!3177566))

(assert (= b!3177567 b!3177568))

(assert (= (and b!3177410 ((_ is Leaf!16712) (left!27711 (left!27711 t!3671)))) b!3177567))

(declare-fun m!3434201 () Bool)

(assert (=> b!3177566 m!3434201))

(declare-fun m!3434203 () Bool)

(assert (=> b!3177566 m!3434203))

(declare-fun m!3434205 () Bool)

(assert (=> b!3177567 m!3434205))

(assert (=> b!3177410 m!3433973))

(declare-fun tp!1004913 () Bool)

(declare-fun tp!1004912 () Bool)

(declare-fun b!3177569 () Bool)

(declare-fun e!1979162 () Bool)

(assert (=> b!3177569 (= e!1979162 (and (inv!48470 (left!27711 (right!28041 (left!27711 t!3671)))) tp!1004912 (inv!48470 (right!28041 (right!28041 (left!27711 t!3671)))) tp!1004913))))

(declare-fun b!3177571 () Bool)

(declare-fun e!1979163 () Bool)

(declare-fun tp!1004914 () Bool)

(assert (=> b!3177571 (= e!1979163 tp!1004914)))

(declare-fun b!3177570 () Bool)

(assert (=> b!3177570 (= e!1979162 (and (inv!48471 (xs!13674 (right!28041 (left!27711 t!3671)))) e!1979163))))

(assert (=> b!3177410 (= tp!1004889 (and (inv!48470 (right!28041 (left!27711 t!3671))) e!1979162))))

(assert (= (and b!3177410 ((_ is Node!10556) (right!28041 (left!27711 t!3671)))) b!3177569))

(assert (= b!3177570 b!3177571))

(assert (= (and b!3177410 ((_ is Leaf!16712) (right!28041 (left!27711 t!3671)))) b!3177570))

(declare-fun m!3434207 () Bool)

(assert (=> b!3177569 m!3434207))

(declare-fun m!3434209 () Bool)

(assert (=> b!3177569 m!3434209))

(declare-fun m!3434211 () Bool)

(assert (=> b!3177570 m!3434211))

(assert (=> b!3177410 m!3433975))

(declare-fun b!3177572 () Bool)

(declare-fun e!1979164 () Bool)

(declare-fun tp!1004915 () Bool)

(assert (=> b!3177572 (= e!1979164 (and tp_is_empty!17237 tp!1004915))))

(assert (=> b!3177391 (= tp!1004881 e!1979164)))

(assert (= (and b!3177391 ((_ is Cons!35615) (t!234838 (innerList!10616 (xs!13674 t!3671))))) b!3177572))

(declare-fun tp!1004916 () Bool)

(declare-fun b!3177573 () Bool)

(declare-fun e!1979165 () Bool)

(declare-fun tp!1004917 () Bool)

(assert (=> b!3177573 (= e!1979165 (and (inv!48470 (left!27711 (left!27711 (right!28041 t!3671)))) tp!1004916 (inv!48470 (right!28041 (left!27711 (right!28041 t!3671)))) tp!1004917))))

(declare-fun b!3177575 () Bool)

(declare-fun e!1979166 () Bool)

(declare-fun tp!1004918 () Bool)

(assert (=> b!3177575 (= e!1979166 tp!1004918)))

(declare-fun b!3177574 () Bool)

(assert (=> b!3177574 (= e!1979165 (and (inv!48471 (xs!13674 (left!27711 (right!28041 t!3671)))) e!1979166))))

(assert (=> b!3177413 (= tp!1004891 (and (inv!48470 (left!27711 (right!28041 t!3671))) e!1979165))))

(assert (= (and b!3177413 ((_ is Node!10556) (left!27711 (right!28041 t!3671)))) b!3177573))

(assert (= b!3177574 b!3177575))

(assert (= (and b!3177413 ((_ is Leaf!16712) (left!27711 (right!28041 t!3671)))) b!3177574))

(declare-fun m!3434213 () Bool)

(assert (=> b!3177573 m!3434213))

(declare-fun m!3434215 () Bool)

(assert (=> b!3177573 m!3434215))

(declare-fun m!3434217 () Bool)

(assert (=> b!3177574 m!3434217))

(assert (=> b!3177413 m!3433979))

(declare-fun b!3177576 () Bool)

(declare-fun e!1979167 () Bool)

(declare-fun tp!1004920 () Bool)

(declare-fun tp!1004919 () Bool)

(assert (=> b!3177576 (= e!1979167 (and (inv!48470 (left!27711 (right!28041 (right!28041 t!3671)))) tp!1004919 (inv!48470 (right!28041 (right!28041 (right!28041 t!3671)))) tp!1004920))))

(declare-fun b!3177578 () Bool)

(declare-fun e!1979168 () Bool)

(declare-fun tp!1004921 () Bool)

(assert (=> b!3177578 (= e!1979168 tp!1004921)))

(declare-fun b!3177577 () Bool)

(assert (=> b!3177577 (= e!1979167 (and (inv!48471 (xs!13674 (right!28041 (right!28041 t!3671)))) e!1979168))))

(assert (=> b!3177413 (= tp!1004892 (and (inv!48470 (right!28041 (right!28041 t!3671))) e!1979167))))

(assert (= (and b!3177413 ((_ is Node!10556) (right!28041 (right!28041 t!3671)))) b!3177576))

(assert (= b!3177577 b!3177578))

(assert (= (and b!3177413 ((_ is Leaf!16712) (right!28041 (right!28041 t!3671)))) b!3177577))

(declare-fun m!3434219 () Bool)

(assert (=> b!3177576 m!3434219))

(declare-fun m!3434221 () Bool)

(assert (=> b!3177576 m!3434221))

(declare-fun m!3434223 () Bool)

(assert (=> b!3177577 m!3434223))

(assert (=> b!3177413 m!3433981))

(declare-fun b!3177579 () Bool)

(declare-fun e!1979169 () Bool)

(declare-fun tp!1004922 () Bool)

(assert (=> b!3177579 (= e!1979169 (and tp_is_empty!17237 tp!1004922))))

(assert (=> b!3177412 (= tp!1004890 e!1979169)))

(assert (= (and b!3177412 ((_ is Cons!35615) (innerList!10616 (xs!13674 (left!27711 t!3671))))) b!3177579))

(declare-fun b!3177580 () Bool)

(declare-fun e!1979170 () Bool)

(declare-fun tp!1004923 () Bool)

(assert (=> b!3177580 (= e!1979170 (and tp_is_empty!17237 tp!1004923))))

(assert (=> b!3177415 (= tp!1004893 e!1979170)))

(assert (= (and b!3177415 ((_ is Cons!35615) (innerList!10616 (xs!13674 (right!28041 t!3671))))) b!3177580))

(check-sat (not d!869924) (not b!3177541) (not b!3177502) (not b!3177450) (not b!3177578) (not b!3177410) (not b!3177575) (not b!3177566) (not d!869982) (not d!869990) (not b!3177567) (not b!3177555) (not b!3177571) (not b!3177437) (not b!3177562) (not b!3177457) (not b!3177454) (not d!869938) (not b!3177577) (not d!869930) (not b!3177580) (not b!3177576) (not b!3177521) (not d!869964) (not b!3177462) (not b!3177558) (not b!3177542) (not b!3177479) (not d!869942) (not b!3177435) (not d!869928) (not b!3177497) (not b!3177560) (not b!3177463) tp_is_empty!17237 (not b!3177445) (not d!869978) (not b!3177579) (not b!3177559) (not b!3177475) (not b!3177456) (not b!3177472) (not d!869984) (not b!3177572) (not b!3177503) (not b!3177570) (not b!3177451) (not d!869936) (not b!3177552) (not b!3177459) (not d!869940) (not b!3177413) (not b!3177568) (not b!3177540) (not b!3177452) (not d!869922) (not d!869988) (not b!3177438) (not b!3177573) (not d!869948) (not d!869992) (not d!869970) (not b!3177564) (not b!3177574) (not b!3177569) (not d!869926) (not b!3177529) (not b!3177455) (not b!3177478) (not b!3177440) (not b!3177448) (not b!3177498) (not b!3177460))
(check-sat)
