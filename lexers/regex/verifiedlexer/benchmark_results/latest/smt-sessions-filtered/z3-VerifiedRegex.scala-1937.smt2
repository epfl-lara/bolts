; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95438 () Bool)

(assert start!95438)

(declare-fun res!490117 () Bool)

(declare-fun e!700872 () Bool)

(assert (=> start!95438 (=> res!490117 e!700872)))

(declare-fun lt!375730 () Int)

(declare-fun lt!375733 () Int)

(assert (=> start!95438 (= res!490117 (not (= lt!375730 lt!375733)))))

(declare-datatypes ((T!19912 0))(
  ( (T!19913 (val!3576 Int)) )
))
(declare-datatypes ((List!10792 0))(
  ( (Nil!10769) (Cons!10769 (h!16170 T!19912) (t!105349 List!10792)) )
))
(declare-fun lt!375731 () List!10792)

(declare-fun size!8379 (List!10792) Int)

(assert (=> start!95438 (= lt!375733 (size!8379 lt!375731))))

(declare-datatypes ((Object!1945 0) (List!10794 0) (IArray!6815 0) (Conc!3405 0) (BalanceConc!6832 0))(
  ( (BalanceConc!6831 (value!60890 BalanceConc!6832)) (List!10793 (value!60891 List!10794)) (Character!22 (value!60892 (_ BitVec 16))) (Open!22 (value!60893 Int)) )
  ( (Nil!10770) (Cons!10770 (h!16171 Object!1945) (t!105350 List!10794)) )
  ( (IArray!6816 (innerList!3465 List!10794)) )
  ( (Node!3405 (left!9368 Conc!3405) (right!9698 Conc!3405) (csize!7040 Int) (cheight!3616 Int)) (Leaf!5343 (xs!6098 IArray!6815) (csize!7041 Int)) (Empty!3405) )
  ( (BalanceConc!6833 (c!187793 Conc!3405)) )
))
(declare-datatypes ((Vector!48 0))(
  ( (Vector!49 (underlying!2716 Object!1945) (overflowing!81 List!10792)) )
))
(declare-fun other!25 () Vector!48)

(declare-fun list!3890 (Vector!48) List!10792)

(assert (=> start!95438 (= lt!375731 (list!3890 other!25))))

(declare-fun size!8380 (Vector!48) Int)

(assert (=> start!95438 (= lt!375733 (size!8380 other!25))))

(declare-fun lt!375732 () List!10792)

(assert (=> start!95438 (= lt!375730 (size!8379 lt!375732))))

(declare-fun thiss!9530 () Vector!48)

(assert (=> start!95438 (= lt!375732 (list!3890 thiss!9530))))

(assert (=> start!95438 (= lt!375730 (size!8380 thiss!9530))))

(assert (=> start!95438 (not e!700872)))

(declare-fun e!700874 () Bool)

(assert (=> start!95438 e!700874))

(declare-fun e!700873 () Bool)

(assert (=> start!95438 e!700873))

(declare-fun b!1105857 () Bool)

(declare-fun equivalentSequenceAsSameSize!2 (Vector!48 Vector!48 Int) Bool)

(assert (=> b!1105857 (= e!700872 (= (equivalentSequenceAsSameSize!2 thiss!9530 other!25 0) (= lt!375732 lt!375731)))))

(declare-fun b!1105858 () Bool)

(declare-fun tp!327449 () Bool)

(declare-fun tp!327451 () Bool)

(assert (=> b!1105858 (= e!700874 (and tp!327449 tp!327451))))

(declare-fun b!1105859 () Bool)

(declare-fun tp!327452 () Bool)

(declare-fun tp!327450 () Bool)

(assert (=> b!1105859 (= e!700873 (and tp!327452 tp!327450))))

(assert (= (and start!95438 (not res!490117)) b!1105857))

(assert (= start!95438 b!1105858))

(assert (= start!95438 b!1105859))

(declare-fun m!1263457 () Bool)

(assert (=> start!95438 m!1263457))

(declare-fun m!1263459 () Bool)

(assert (=> start!95438 m!1263459))

(declare-fun m!1263461 () Bool)

(assert (=> start!95438 m!1263461))

(declare-fun m!1263463 () Bool)

(assert (=> start!95438 m!1263463))

(declare-fun m!1263465 () Bool)

(assert (=> start!95438 m!1263465))

(declare-fun m!1263467 () Bool)

(assert (=> start!95438 m!1263467))

(declare-fun m!1263469 () Bool)

(assert (=> b!1105857 m!1263469))

(check-sat (not start!95438) (not b!1105857) (not b!1105858) (not b!1105859))
(check-sat)
(get-model)

(declare-fun d!313172 () Bool)

(declare-fun choose!7167 (Vector!48) List!10792)

(assert (=> d!313172 (= (list!3890 other!25) (choose!7167 other!25))))

(declare-fun bs!260029 () Bool)

(assert (= bs!260029 d!313172))

(declare-fun m!1263471 () Bool)

(assert (=> bs!260029 m!1263471))

(assert (=> start!95438 d!313172))

(declare-fun d!313176 () Bool)

(declare-fun lt!375736 () Int)

(assert (=> d!313176 (>= lt!375736 0)))

(declare-fun e!700877 () Int)

(assert (=> d!313176 (= lt!375736 e!700877)))

(declare-fun c!187796 () Bool)

(get-info :version)

(assert (=> d!313176 (= c!187796 ((_ is Nil!10769) lt!375731))))

(assert (=> d!313176 (= (size!8379 lt!375731) lt!375736)))

(declare-fun b!1105864 () Bool)

(assert (=> b!1105864 (= e!700877 0)))

(declare-fun b!1105865 () Bool)

(assert (=> b!1105865 (= e!700877 (+ 1 (size!8379 (t!105349 lt!375731))))))

(assert (= (and d!313176 c!187796) b!1105864))

(assert (= (and d!313176 (not c!187796)) b!1105865))

(declare-fun m!1263473 () Bool)

(assert (=> b!1105865 m!1263473))

(assert (=> start!95438 d!313176))

(declare-fun d!313178 () Bool)

(declare-fun lt!375739 () Int)

(assert (=> d!313178 (= lt!375739 (size!8379 (list!3890 thiss!9530)))))

(declare-fun choose!7168 (Vector!48) Int)

(assert (=> d!313178 (= lt!375739 (choose!7168 thiss!9530))))

(assert (=> d!313178 (= (size!8380 thiss!9530) lt!375739)))

(declare-fun bs!260030 () Bool)

(assert (= bs!260030 d!313178))

(assert (=> bs!260030 m!1263459))

(assert (=> bs!260030 m!1263459))

(declare-fun m!1263475 () Bool)

(assert (=> bs!260030 m!1263475))

(declare-fun m!1263477 () Bool)

(assert (=> bs!260030 m!1263477))

(assert (=> start!95438 d!313178))

(declare-fun d!313180 () Bool)

(declare-fun lt!375740 () Int)

(assert (=> d!313180 (>= lt!375740 0)))

(declare-fun e!700878 () Int)

(assert (=> d!313180 (= lt!375740 e!700878)))

(declare-fun c!187797 () Bool)

(assert (=> d!313180 (= c!187797 ((_ is Nil!10769) lt!375732))))

(assert (=> d!313180 (= (size!8379 lt!375732) lt!375740)))

(declare-fun b!1105866 () Bool)

(assert (=> b!1105866 (= e!700878 0)))

(declare-fun b!1105867 () Bool)

(assert (=> b!1105867 (= e!700878 (+ 1 (size!8379 (t!105349 lt!375732))))))

(assert (= (and d!313180 c!187797) b!1105866))

(assert (= (and d!313180 (not c!187797)) b!1105867))

(declare-fun m!1263479 () Bool)

(assert (=> b!1105867 m!1263479))

(assert (=> start!95438 d!313180))

(declare-fun d!313182 () Bool)

(assert (=> d!313182 (= (list!3890 thiss!9530) (choose!7167 thiss!9530))))

(declare-fun bs!260031 () Bool)

(assert (= bs!260031 d!313182))

(declare-fun m!1263481 () Bool)

(assert (=> bs!260031 m!1263481))

(assert (=> start!95438 d!313182))

(declare-fun d!313184 () Bool)

(declare-fun lt!375741 () Int)

(assert (=> d!313184 (= lt!375741 (size!8379 (list!3890 other!25)))))

(assert (=> d!313184 (= lt!375741 (choose!7168 other!25))))

(assert (=> d!313184 (= (size!8380 other!25) lt!375741)))

(declare-fun bs!260032 () Bool)

(assert (= bs!260032 d!313184))

(assert (=> bs!260032 m!1263467))

(assert (=> bs!260032 m!1263467))

(declare-fun m!1263483 () Bool)

(assert (=> bs!260032 m!1263483))

(declare-fun m!1263485 () Bool)

(assert (=> bs!260032 m!1263485))

(assert (=> start!95438 d!313184))

(declare-fun d!313186 () Bool)

(declare-fun lt!375840 () Bool)

(declare-fun drop!409 (List!10792 Int) List!10792)

(assert (=> d!313186 (= lt!375840 (= (drop!409 (list!3890 thiss!9530) 0) (drop!409 (list!3890 other!25) 0)))))

(declare-fun e!700897 () Bool)

(assert (=> d!313186 (= lt!375840 e!700897)))

(declare-fun res!490135 () Bool)

(assert (=> d!313186 (=> res!490135 e!700897)))

(declare-fun lt!375846 () Int)

(assert (=> d!313186 (= res!490135 (= 0 lt!375846))))

(assert (=> d!313186 (= lt!375846 (size!8379 (list!3890 thiss!9530)))))

(assert (=> d!313186 (= lt!375846 (size!8380 thiss!9530))))

(declare-fun e!700899 () Bool)

(assert (=> d!313186 e!700899))

(declare-fun res!490134 () Bool)

(assert (=> d!313186 (=> (not res!490134) (not e!700899))))

(assert (=> d!313186 (= res!490134 (<= 0 0))))

(assert (=> d!313186 (= (equivalentSequenceAsSameSize!2 thiss!9530 other!25 0) lt!375840)))

(declare-fun b!1105889 () Bool)

(declare-fun lt!375845 () Int)

(assert (=> b!1105889 (= e!700899 (<= 0 lt!375845))))

(assert (=> b!1105889 (= lt!375845 (size!8379 (list!3890 thiss!9530)))))

(assert (=> b!1105889 (= lt!375845 (size!8380 thiss!9530))))

(declare-fun b!1105890 () Bool)

(declare-fun e!700898 () Bool)

(assert (=> b!1105890 (= e!700897 e!700898)))

(declare-fun res!490133 () Bool)

(assert (=> b!1105890 (=> (not res!490133) (not e!700898))))

(declare-fun lt!375849 () T!19912)

(declare-fun lt!375838 () T!19912)

(assert (=> b!1105890 (= res!490133 (= lt!375849 lt!375838))))

(declare-fun apply!2214 (List!10792 Int) T!19912)

(assert (=> b!1105890 (= lt!375838 (apply!2214 (list!3890 other!25) 0))))

(declare-fun apply!2215 (Vector!48 Int) T!19912)

(assert (=> b!1105890 (= lt!375838 (apply!2215 other!25 0))))

(assert (=> b!1105890 (= lt!375849 (apply!2214 (list!3890 thiss!9530) 0))))

(assert (=> b!1105890 (= lt!375849 (apply!2215 thiss!9530 0))))

(declare-datatypes ((Unit!16453 0))(
  ( (Unit!16454) )
))
(declare-fun lt!375837 () Unit!16453)

(declare-fun lt!375847 () Unit!16453)

(assert (=> b!1105890 (= lt!375837 lt!375847)))

(declare-fun lt!375834 () List!10792)

(declare-fun tail!1601 (List!10792) List!10792)

(assert (=> b!1105890 (= (tail!1601 (drop!409 lt!375834 0)) (drop!409 lt!375834 (+ 0 1)))))

(declare-fun lemmaDropTail!314 (List!10792 Int) Unit!16453)

(assert (=> b!1105890 (= lt!375847 (lemmaDropTail!314 lt!375834 0))))

(assert (=> b!1105890 (= lt!375834 (list!3890 other!25))))

(declare-fun lt!375842 () Unit!16453)

(declare-fun lt!375832 () Unit!16453)

(assert (=> b!1105890 (= lt!375842 lt!375832)))

(declare-fun lt!375843 () List!10792)

(assert (=> b!1105890 (= (tail!1601 (drop!409 lt!375843 0)) (drop!409 lt!375843 (+ 0 1)))))

(assert (=> b!1105890 (= lt!375832 (lemmaDropTail!314 lt!375843 0))))

(assert (=> b!1105890 (= lt!375843 (list!3890 thiss!9530))))

(declare-fun lt!375836 () Unit!16453)

(declare-fun lt!375839 () Unit!16453)

(assert (=> b!1105890 (= lt!375836 lt!375839)))

(declare-fun lt!375841 () List!10792)

(declare-fun head!2041 (List!10792) T!19912)

(assert (=> b!1105890 (= (head!2041 (drop!409 lt!375841 0)) (apply!2214 lt!375841 0))))

(declare-fun lemmaDropApply!326 (List!10792 Int) Unit!16453)

(assert (=> b!1105890 (= lt!375839 (lemmaDropApply!326 lt!375841 0))))

(assert (=> b!1105890 (= lt!375841 (list!3890 other!25))))

(declare-fun lt!375833 () Unit!16453)

(declare-fun lt!375844 () Unit!16453)

(assert (=> b!1105890 (= lt!375833 lt!375844)))

(declare-fun lt!375835 () List!10792)

(assert (=> b!1105890 (= (head!2041 (drop!409 lt!375835 0)) (apply!2214 lt!375835 0))))

(assert (=> b!1105890 (= lt!375844 (lemmaDropApply!326 lt!375835 0))))

(assert (=> b!1105890 (= lt!375835 (list!3890 thiss!9530))))

(declare-fun b!1105891 () Bool)

(assert (=> b!1105891 (= e!700898 (equivalentSequenceAsSameSize!2 thiss!9530 other!25 (+ 0 1)))))

(assert (= (and d!313186 res!490134) b!1105889))

(assert (= (and d!313186 (not res!490135)) b!1105890))

(assert (= (and b!1105890 res!490133) b!1105891))

(assert (=> d!313186 m!1263459))

(assert (=> d!313186 m!1263475))

(assert (=> d!313186 m!1263459))

(assert (=> d!313186 m!1263467))

(assert (=> d!313186 m!1263461))

(assert (=> d!313186 m!1263459))

(declare-fun m!1263549 () Bool)

(assert (=> d!313186 m!1263549))

(assert (=> d!313186 m!1263467))

(declare-fun m!1263551 () Bool)

(assert (=> d!313186 m!1263551))

(assert (=> b!1105889 m!1263459))

(assert (=> b!1105889 m!1263459))

(assert (=> b!1105889 m!1263475))

(assert (=> b!1105889 m!1263461))

(declare-fun m!1263553 () Bool)

(assert (=> b!1105890 m!1263553))

(declare-fun m!1263555 () Bool)

(assert (=> b!1105890 m!1263555))

(declare-fun m!1263557 () Bool)

(assert (=> b!1105890 m!1263557))

(assert (=> b!1105890 m!1263553))

(declare-fun m!1263559 () Bool)

(assert (=> b!1105890 m!1263559))

(assert (=> b!1105890 m!1263467))

(declare-fun m!1263561 () Bool)

(assert (=> b!1105890 m!1263561))

(declare-fun m!1263563 () Bool)

(assert (=> b!1105890 m!1263563))

(declare-fun m!1263565 () Bool)

(assert (=> b!1105890 m!1263565))

(declare-fun m!1263567 () Bool)

(assert (=> b!1105890 m!1263567))

(declare-fun m!1263569 () Bool)

(assert (=> b!1105890 m!1263569))

(declare-fun m!1263571 () Bool)

(assert (=> b!1105890 m!1263571))

(declare-fun m!1263573 () Bool)

(assert (=> b!1105890 m!1263573))

(declare-fun m!1263575 () Bool)

(assert (=> b!1105890 m!1263575))

(assert (=> b!1105890 m!1263575))

(declare-fun m!1263577 () Bool)

(assert (=> b!1105890 m!1263577))

(declare-fun m!1263579 () Bool)

(assert (=> b!1105890 m!1263579))

(assert (=> b!1105890 m!1263561))

(assert (=> b!1105890 m!1263567))

(declare-fun m!1263581 () Bool)

(assert (=> b!1105890 m!1263581))

(declare-fun m!1263583 () Bool)

(assert (=> b!1105890 m!1263583))

(assert (=> b!1105890 m!1263459))

(declare-fun m!1263585 () Bool)

(assert (=> b!1105890 m!1263585))

(assert (=> b!1105890 m!1263459))

(declare-fun m!1263587 () Bool)

(assert (=> b!1105890 m!1263587))

(declare-fun m!1263589 () Bool)

(assert (=> b!1105890 m!1263589))

(assert (=> b!1105890 m!1263467))

(declare-fun m!1263591 () Bool)

(assert (=> b!1105890 m!1263591))

(declare-fun m!1263593 () Bool)

(assert (=> b!1105891 m!1263593))

(assert (=> b!1105857 d!313186))

(declare-fun b!1105923 () Bool)

(declare-fun e!700918 () Bool)

(declare-fun tp!327469 () Bool)

(declare-fun inv!13839 (Conc!3405) Bool)

(assert (=> b!1105923 (= e!700918 (and (inv!13839 (c!187793 (value!60890 (underlying!2716 thiss!9530)))) tp!327469))))

(declare-fun b!1105922 () Bool)

(declare-fun e!700917 () Bool)

(declare-fun inv!13840 (BalanceConc!6832) Bool)

(assert (=> b!1105922 (= e!700917 (and (inv!13840 (value!60890 (underlying!2716 thiss!9530))) e!700918))))

(declare-fun b!1105924 () Bool)

(declare-fun tp!327470 () Bool)

(assert (=> b!1105924 (= e!700917 tp!327470)))

(assert (=> b!1105858 (= tp!327449 e!700917)))

(assert (= b!1105922 b!1105923))

(assert (= (and b!1105858 ((_ is BalanceConc!6831) (underlying!2716 thiss!9530))) b!1105922))

(assert (= (and b!1105858 ((_ is List!10793) (underlying!2716 thiss!9530))) b!1105924))

(declare-fun m!1263603 () Bool)

(assert (=> b!1105923 m!1263603))

(declare-fun m!1263605 () Bool)

(assert (=> b!1105922 m!1263605))

(declare-fun b!1105929 () Bool)

(declare-fun e!700921 () Bool)

(declare-fun tp_is_empty!5709 () Bool)

(declare-fun tp!327473 () Bool)

(assert (=> b!1105929 (= e!700921 (and tp_is_empty!5709 tp!327473))))

(assert (=> b!1105858 (= tp!327451 e!700921)))

(assert (= (and b!1105858 ((_ is Cons!10769) (overflowing!81 thiss!9530))) b!1105929))

(declare-fun b!1105931 () Bool)

(declare-fun e!700923 () Bool)

(declare-fun tp!327474 () Bool)

(assert (=> b!1105931 (= e!700923 (and (inv!13839 (c!187793 (value!60890 (underlying!2716 other!25)))) tp!327474))))

(declare-fun b!1105930 () Bool)

(declare-fun e!700922 () Bool)

(assert (=> b!1105930 (= e!700922 (and (inv!13840 (value!60890 (underlying!2716 other!25))) e!700923))))

(declare-fun b!1105932 () Bool)

(declare-fun tp!327475 () Bool)

(assert (=> b!1105932 (= e!700922 tp!327475)))

(assert (=> b!1105859 (= tp!327452 e!700922)))

(assert (= b!1105930 b!1105931))

(assert (= (and b!1105859 ((_ is BalanceConc!6831) (underlying!2716 other!25))) b!1105930))

(assert (= (and b!1105859 ((_ is List!10793) (underlying!2716 other!25))) b!1105932))

(declare-fun m!1263607 () Bool)

(assert (=> b!1105931 m!1263607))

(declare-fun m!1263609 () Bool)

(assert (=> b!1105930 m!1263609))

(declare-fun b!1105933 () Bool)

(declare-fun e!700924 () Bool)

(declare-fun tp!327476 () Bool)

(assert (=> b!1105933 (= e!700924 (and tp_is_empty!5709 tp!327476))))

(assert (=> b!1105859 (= tp!327450 e!700924)))

(assert (= (and b!1105859 ((_ is Cons!10769) (overflowing!81 other!25))) b!1105933))

(check-sat (not b!1105922) (not b!1105931) (not d!313172) (not b!1105933) (not b!1105923) (not b!1105890) (not b!1105867) (not b!1105932) (not b!1105929) (not b!1105891) (not b!1105865) (not b!1105930) tp_is_empty!5709 (not d!313182) (not d!313178) (not d!313186) (not b!1105889) (not d!313184) (not b!1105924))
(check-sat)
(get-model)

(declare-fun d!313200 () Bool)

(declare-fun lt!375852 () Int)

(assert (=> d!313200 (>= lt!375852 0)))

(declare-fun e!700925 () Int)

(assert (=> d!313200 (= lt!375852 e!700925)))

(declare-fun c!187802 () Bool)

(assert (=> d!313200 (= c!187802 ((_ is Nil!10769) (t!105349 lt!375731)))))

(assert (=> d!313200 (= (size!8379 (t!105349 lt!375731)) lt!375852)))

(declare-fun b!1105934 () Bool)

(assert (=> b!1105934 (= e!700925 0)))

(declare-fun b!1105935 () Bool)

(assert (=> b!1105935 (= e!700925 (+ 1 (size!8379 (t!105349 (t!105349 lt!375731)))))))

(assert (= (and d!313200 c!187802) b!1105934))

(assert (= (and d!313200 (not c!187802)) b!1105935))

(declare-fun m!1263611 () Bool)

(assert (=> b!1105935 m!1263611))

(assert (=> b!1105865 d!313200))

(declare-fun d!313202 () Bool)

(declare-fun lt!375853 () Int)

(assert (=> d!313202 (>= lt!375853 0)))

(declare-fun e!700926 () Int)

(assert (=> d!313202 (= lt!375853 e!700926)))

(declare-fun c!187803 () Bool)

(assert (=> d!313202 (= c!187803 ((_ is Nil!10769) (list!3890 other!25)))))

(assert (=> d!313202 (= (size!8379 (list!3890 other!25)) lt!375853)))

(declare-fun b!1105936 () Bool)

(assert (=> b!1105936 (= e!700926 0)))

(declare-fun b!1105937 () Bool)

(assert (=> b!1105937 (= e!700926 (+ 1 (size!8379 (t!105349 (list!3890 other!25)))))))

(assert (= (and d!313202 c!187803) b!1105936))

(assert (= (and d!313202 (not c!187803)) b!1105937))

(declare-fun m!1263613 () Bool)

(assert (=> b!1105937 m!1263613))

(assert (=> d!313184 d!313202))

(assert (=> d!313184 d!313172))

(declare-fun d!313204 () Bool)

(declare-fun res!490138 () Int)

(assert (=> d!313204 (= res!490138 (size!8379 (list!3890 other!25)))))

(assert (=> d!313204 true))

(assert (=> d!313204 (= (choose!7168 other!25) res!490138)))

(declare-fun bs!260037 () Bool)

(assert (= bs!260037 d!313204))

(assert (=> bs!260037 m!1263467))

(assert (=> bs!260037 m!1263467))

(assert (=> bs!260037 m!1263483))

(assert (=> d!313184 d!313204))

(declare-fun d!313206 () Bool)

(declare-fun c!187806 () Bool)

(assert (=> d!313206 (= c!187806 ((_ is Node!3405) (c!187793 (value!60890 (underlying!2716 other!25)))))))

(declare-fun e!700931 () Bool)

(assert (=> d!313206 (= (inv!13839 (c!187793 (value!60890 (underlying!2716 other!25)))) e!700931)))

(declare-fun b!1105944 () Bool)

(declare-fun inv!13843 (Conc!3405) Bool)

(assert (=> b!1105944 (= e!700931 (inv!13843 (c!187793 (value!60890 (underlying!2716 other!25)))))))

(declare-fun b!1105945 () Bool)

(declare-fun e!700932 () Bool)

(assert (=> b!1105945 (= e!700931 e!700932)))

(declare-fun res!490141 () Bool)

(assert (=> b!1105945 (= res!490141 (not ((_ is Leaf!5343) (c!187793 (value!60890 (underlying!2716 other!25))))))))

(assert (=> b!1105945 (=> res!490141 e!700932)))

(declare-fun b!1105946 () Bool)

(declare-fun inv!13844 (Conc!3405) Bool)

(assert (=> b!1105946 (= e!700932 (inv!13844 (c!187793 (value!60890 (underlying!2716 other!25)))))))

(assert (= (and d!313206 c!187806) b!1105944))

(assert (= (and d!313206 (not c!187806)) b!1105945))

(assert (= (and b!1105945 (not res!490141)) b!1105946))

(declare-fun m!1263615 () Bool)

(assert (=> b!1105944 m!1263615))

(declare-fun m!1263617 () Bool)

(assert (=> b!1105946 m!1263617))

(assert (=> b!1105931 d!313206))

(declare-fun d!313208 () Bool)

(declare-fun isBalanced!934 (Conc!3405) Bool)

(assert (=> d!313208 (= (inv!13840 (value!60890 (underlying!2716 other!25))) (isBalanced!934 (c!187793 (value!60890 (underlying!2716 other!25)))))))

(declare-fun bs!260038 () Bool)

(assert (= bs!260038 d!313208))

(declare-fun m!1263619 () Bool)

(assert (=> bs!260038 m!1263619))

(assert (=> b!1105930 d!313208))

(declare-fun d!313210 () Bool)

(declare-fun e!700944 () Bool)

(assert (=> d!313210 e!700944))

(declare-fun res!490144 () Bool)

(assert (=> d!313210 (=> (not res!490144) (not e!700944))))

(declare-fun lt!375856 () List!10792)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1553 (List!10792) (InoxSet T!19912))

(assert (=> d!313210 (= res!490144 (= ((_ map implies) (content!1553 lt!375856) (content!1553 lt!375835)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!700947 () List!10792)

(assert (=> d!313210 (= lt!375856 e!700947)))

(declare-fun c!187818 () Bool)

(assert (=> d!313210 (= c!187818 ((_ is Nil!10769) lt!375835))))

(assert (=> d!313210 (= (drop!409 lt!375835 0) lt!375856)))

(declare-fun b!1105965 () Bool)

(declare-fun e!700946 () Int)

(declare-fun e!700945 () Int)

(assert (=> b!1105965 (= e!700946 e!700945)))

(declare-fun c!187816 () Bool)

(declare-fun call!80505 () Int)

(assert (=> b!1105965 (= c!187816 (>= 0 call!80505))))

(declare-fun b!1105966 () Bool)

(assert (=> b!1105966 (= e!700946 call!80505)))

(declare-fun b!1105967 () Bool)

(assert (=> b!1105967 (= e!700945 0)))

(declare-fun b!1105968 () Bool)

(declare-fun e!700943 () List!10792)

(assert (=> b!1105968 (= e!700943 lt!375835)))

(declare-fun b!1105969 () Bool)

(assert (=> b!1105969 (= e!700945 (- call!80505 0))))

(declare-fun b!1105970 () Bool)

(assert (=> b!1105970 (= e!700947 Nil!10769)))

(declare-fun b!1105971 () Bool)

(assert (=> b!1105971 (= e!700944 (= (size!8379 lt!375856) e!700946))))

(declare-fun c!187815 () Bool)

(assert (=> b!1105971 (= c!187815 (<= 0 0))))

(declare-fun b!1105972 () Bool)

(assert (=> b!1105972 (= e!700943 (drop!409 (t!105349 lt!375835) (- 0 1)))))

(declare-fun bm!80500 () Bool)

(assert (=> bm!80500 (= call!80505 (size!8379 lt!375835))))

(declare-fun b!1105973 () Bool)

(assert (=> b!1105973 (= e!700947 e!700943)))

(declare-fun c!187817 () Bool)

(assert (=> b!1105973 (= c!187817 (<= 0 0))))

(assert (= (and d!313210 c!187818) b!1105970))

(assert (= (and d!313210 (not c!187818)) b!1105973))

(assert (= (and b!1105973 c!187817) b!1105968))

(assert (= (and b!1105973 (not c!187817)) b!1105972))

(assert (= (and d!313210 res!490144) b!1105971))

(assert (= (and b!1105971 c!187815) b!1105966))

(assert (= (and b!1105971 (not c!187815)) b!1105965))

(assert (= (and b!1105965 c!187816) b!1105967))

(assert (= (and b!1105965 (not c!187816)) b!1105969))

(assert (= (or b!1105966 b!1105965 b!1105969) bm!80500))

(declare-fun m!1263621 () Bool)

(assert (=> d!313210 m!1263621))

(declare-fun m!1263623 () Bool)

(assert (=> d!313210 m!1263623))

(declare-fun m!1263625 () Bool)

(assert (=> b!1105971 m!1263625))

(declare-fun m!1263627 () Bool)

(assert (=> b!1105972 m!1263627))

(declare-fun m!1263629 () Bool)

(assert (=> bm!80500 m!1263629))

(assert (=> b!1105890 d!313210))

(declare-fun d!313212 () Bool)

(declare-fun e!700949 () Bool)

(assert (=> d!313212 e!700949))

(declare-fun res!490145 () Bool)

(assert (=> d!313212 (=> (not res!490145) (not e!700949))))

(declare-fun lt!375857 () List!10792)

(assert (=> d!313212 (= res!490145 (= ((_ map implies) (content!1553 lt!375857) (content!1553 lt!375843)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!700952 () List!10792)

(assert (=> d!313212 (= lt!375857 e!700952)))

(declare-fun c!187822 () Bool)

(assert (=> d!313212 (= c!187822 ((_ is Nil!10769) lt!375843))))

(assert (=> d!313212 (= (drop!409 lt!375843 0) lt!375857)))

(declare-fun b!1105974 () Bool)

(declare-fun e!700951 () Int)

(declare-fun e!700950 () Int)

(assert (=> b!1105974 (= e!700951 e!700950)))

(declare-fun c!187820 () Bool)

(declare-fun call!80506 () Int)

(assert (=> b!1105974 (= c!187820 (>= 0 call!80506))))

(declare-fun b!1105975 () Bool)

(assert (=> b!1105975 (= e!700951 call!80506)))

(declare-fun b!1105976 () Bool)

(assert (=> b!1105976 (= e!700950 0)))

(declare-fun b!1105977 () Bool)

(declare-fun e!700948 () List!10792)

(assert (=> b!1105977 (= e!700948 lt!375843)))

(declare-fun b!1105978 () Bool)

(assert (=> b!1105978 (= e!700950 (- call!80506 0))))

(declare-fun b!1105979 () Bool)

(assert (=> b!1105979 (= e!700952 Nil!10769)))

(declare-fun b!1105980 () Bool)

(assert (=> b!1105980 (= e!700949 (= (size!8379 lt!375857) e!700951))))

(declare-fun c!187819 () Bool)

(assert (=> b!1105980 (= c!187819 (<= 0 0))))

(declare-fun b!1105981 () Bool)

(assert (=> b!1105981 (= e!700948 (drop!409 (t!105349 lt!375843) (- 0 1)))))

(declare-fun bm!80501 () Bool)

(assert (=> bm!80501 (= call!80506 (size!8379 lt!375843))))

(declare-fun b!1105982 () Bool)

(assert (=> b!1105982 (= e!700952 e!700948)))

(declare-fun c!187821 () Bool)

(assert (=> b!1105982 (= c!187821 (<= 0 0))))

(assert (= (and d!313212 c!187822) b!1105979))

(assert (= (and d!313212 (not c!187822)) b!1105982))

(assert (= (and b!1105982 c!187821) b!1105977))

(assert (= (and b!1105982 (not c!187821)) b!1105981))

(assert (= (and d!313212 res!490145) b!1105980))

(assert (= (and b!1105980 c!187819) b!1105975))

(assert (= (and b!1105980 (not c!187819)) b!1105974))

(assert (= (and b!1105974 c!187820) b!1105976))

(assert (= (and b!1105974 (not c!187820)) b!1105978))

(assert (= (or b!1105975 b!1105974 b!1105978) bm!80501))

(declare-fun m!1263631 () Bool)

(assert (=> d!313212 m!1263631))

(declare-fun m!1263633 () Bool)

(assert (=> d!313212 m!1263633))

(declare-fun m!1263635 () Bool)

(assert (=> b!1105980 m!1263635))

(declare-fun m!1263637 () Bool)

(assert (=> b!1105981 m!1263637))

(declare-fun m!1263639 () Bool)

(assert (=> bm!80501 m!1263639))

(assert (=> b!1105890 d!313212))

(declare-fun d!313214 () Bool)

(declare-fun e!700954 () Bool)

(assert (=> d!313214 e!700954))

(declare-fun res!490146 () Bool)

(assert (=> d!313214 (=> (not res!490146) (not e!700954))))

(declare-fun lt!375858 () List!10792)

(assert (=> d!313214 (= res!490146 (= ((_ map implies) (content!1553 lt!375858) (content!1553 lt!375841)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!700957 () List!10792)

(assert (=> d!313214 (= lt!375858 e!700957)))

(declare-fun c!187826 () Bool)

(assert (=> d!313214 (= c!187826 ((_ is Nil!10769) lt!375841))))

(assert (=> d!313214 (= (drop!409 lt!375841 0) lt!375858)))

(declare-fun b!1105983 () Bool)

(declare-fun e!700956 () Int)

(declare-fun e!700955 () Int)

(assert (=> b!1105983 (= e!700956 e!700955)))

(declare-fun c!187824 () Bool)

(declare-fun call!80507 () Int)

(assert (=> b!1105983 (= c!187824 (>= 0 call!80507))))

(declare-fun b!1105984 () Bool)

(assert (=> b!1105984 (= e!700956 call!80507)))

(declare-fun b!1105985 () Bool)

(assert (=> b!1105985 (= e!700955 0)))

(declare-fun b!1105986 () Bool)

(declare-fun e!700953 () List!10792)

(assert (=> b!1105986 (= e!700953 lt!375841)))

(declare-fun b!1105987 () Bool)

(assert (=> b!1105987 (= e!700955 (- call!80507 0))))

(declare-fun b!1105988 () Bool)

(assert (=> b!1105988 (= e!700957 Nil!10769)))

(declare-fun b!1105989 () Bool)

(assert (=> b!1105989 (= e!700954 (= (size!8379 lt!375858) e!700956))))

(declare-fun c!187823 () Bool)

(assert (=> b!1105989 (= c!187823 (<= 0 0))))

(declare-fun b!1105990 () Bool)

(assert (=> b!1105990 (= e!700953 (drop!409 (t!105349 lt!375841) (- 0 1)))))

(declare-fun bm!80502 () Bool)

(assert (=> bm!80502 (= call!80507 (size!8379 lt!375841))))

(declare-fun b!1105991 () Bool)

(assert (=> b!1105991 (= e!700957 e!700953)))

(declare-fun c!187825 () Bool)

(assert (=> b!1105991 (= c!187825 (<= 0 0))))

(assert (= (and d!313214 c!187826) b!1105988))

(assert (= (and d!313214 (not c!187826)) b!1105991))

(assert (= (and b!1105991 c!187825) b!1105986))

(assert (= (and b!1105991 (not c!187825)) b!1105990))

(assert (= (and d!313214 res!490146) b!1105989))

(assert (= (and b!1105989 c!187823) b!1105984))

(assert (= (and b!1105989 (not c!187823)) b!1105983))

(assert (= (and b!1105983 c!187824) b!1105985))

(assert (= (and b!1105983 (not c!187824)) b!1105987))

(assert (= (or b!1105984 b!1105983 b!1105987) bm!80502))

(declare-fun m!1263641 () Bool)

(assert (=> d!313214 m!1263641))

(declare-fun m!1263643 () Bool)

(assert (=> d!313214 m!1263643))

(declare-fun m!1263645 () Bool)

(assert (=> b!1105989 m!1263645))

(declare-fun m!1263647 () Bool)

(assert (=> b!1105990 m!1263647))

(declare-fun m!1263649 () Bool)

(assert (=> bm!80502 m!1263649))

(assert (=> b!1105890 d!313214))

(declare-fun d!313216 () Bool)

(assert (=> d!313216 (= (head!2041 (drop!409 lt!375841 0)) (apply!2214 lt!375841 0))))

(declare-fun lt!375862 () Unit!16453)

(declare-fun choose!7171 (List!10792 Int) Unit!16453)

(assert (=> d!313216 (= lt!375862 (choose!7171 lt!375841 0))))

(declare-fun e!700961 () Bool)

(assert (=> d!313216 e!700961))

(declare-fun res!490149 () Bool)

(assert (=> d!313216 (=> (not res!490149) (not e!700961))))

(assert (=> d!313216 (= res!490149 (>= 0 0))))

(assert (=> d!313216 (= (lemmaDropApply!326 lt!375841 0) lt!375862)))

(declare-fun b!1105996 () Bool)

(assert (=> b!1105996 (= e!700961 (< 0 (size!8379 lt!375841)))))

(assert (= (and d!313216 res!490149) b!1105996))

(assert (=> d!313216 m!1263553))

(assert (=> d!313216 m!1263553))

(assert (=> d!313216 m!1263559))

(assert (=> d!313216 m!1263571))

(declare-fun m!1263653 () Bool)

(assert (=> d!313216 m!1263653))

(assert (=> b!1105996 m!1263649))

(assert (=> b!1105890 d!313216))

(declare-fun d!313222 () Bool)

(declare-fun lt!375867 () T!19912)

(declare-fun contains!1940 (List!10792 T!19912) Bool)

(assert (=> d!313222 (contains!1940 (list!3890 other!25) lt!375867)))

(declare-fun e!700977 () T!19912)

(assert (=> d!313222 (= lt!375867 e!700977)))

(declare-fun c!187838 () Bool)

(assert (=> d!313222 (= c!187838 (= 0 0))))

(declare-fun e!700976 () Bool)

(assert (=> d!313222 e!700976))

(declare-fun res!490154 () Bool)

(assert (=> d!313222 (=> (not res!490154) (not e!700976))))

(assert (=> d!313222 (= res!490154 (<= 0 0))))

(assert (=> d!313222 (= (apply!2214 (list!3890 other!25) 0) lt!375867)))

(declare-fun b!1106021 () Bool)

(assert (=> b!1106021 (= e!700976 (< 0 (size!8379 (list!3890 other!25))))))

(declare-fun b!1106022 () Bool)

(assert (=> b!1106022 (= e!700977 (head!2041 (list!3890 other!25)))))

(declare-fun b!1106023 () Bool)

(assert (=> b!1106023 (= e!700977 (apply!2214 (tail!1601 (list!3890 other!25)) (- 0 1)))))

(assert (= (and d!313222 res!490154) b!1106021))

(assert (= (and d!313222 c!187838) b!1106022))

(assert (= (and d!313222 (not c!187838)) b!1106023))

(assert (=> d!313222 m!1263467))

(declare-fun m!1263655 () Bool)

(assert (=> d!313222 m!1263655))

(assert (=> b!1106021 m!1263467))

(assert (=> b!1106021 m!1263483))

(assert (=> b!1106022 m!1263467))

(declare-fun m!1263657 () Bool)

(assert (=> b!1106022 m!1263657))

(assert (=> b!1106023 m!1263467))

(declare-fun m!1263659 () Bool)

(assert (=> b!1106023 m!1263659))

(assert (=> b!1106023 m!1263659))

(declare-fun m!1263661 () Bool)

(assert (=> b!1106023 m!1263661))

(assert (=> b!1105890 d!313222))

(declare-fun d!313224 () Bool)

(declare-fun lt!375868 () T!19912)

(assert (=> d!313224 (contains!1940 lt!375835 lt!375868)))

(declare-fun e!700979 () T!19912)

(assert (=> d!313224 (= lt!375868 e!700979)))

(declare-fun c!187839 () Bool)

(assert (=> d!313224 (= c!187839 (= 0 0))))

(declare-fun e!700978 () Bool)

(assert (=> d!313224 e!700978))

(declare-fun res!490155 () Bool)

(assert (=> d!313224 (=> (not res!490155) (not e!700978))))

(assert (=> d!313224 (= res!490155 (<= 0 0))))

(assert (=> d!313224 (= (apply!2214 lt!375835 0) lt!375868)))

(declare-fun b!1106024 () Bool)

(assert (=> b!1106024 (= e!700978 (< 0 (size!8379 lt!375835)))))

(declare-fun b!1106025 () Bool)

(assert (=> b!1106025 (= e!700979 (head!2041 lt!375835))))

(declare-fun b!1106026 () Bool)

(assert (=> b!1106026 (= e!700979 (apply!2214 (tail!1601 lt!375835) (- 0 1)))))

(assert (= (and d!313224 res!490155) b!1106024))

(assert (= (and d!313224 c!187839) b!1106025))

(assert (= (and d!313224 (not c!187839)) b!1106026))

(declare-fun m!1263663 () Bool)

(assert (=> d!313224 m!1263663))

(assert (=> b!1106024 m!1263629))

(declare-fun m!1263665 () Bool)

(assert (=> b!1106025 m!1263665))

(declare-fun m!1263667 () Bool)

(assert (=> b!1106026 m!1263667))

(assert (=> b!1106026 m!1263667))

(declare-fun m!1263669 () Bool)

(assert (=> b!1106026 m!1263669))

(assert (=> b!1105890 d!313224))

(declare-fun d!313226 () Bool)

(declare-fun lt!375869 () T!19912)

(assert (=> d!313226 (contains!1940 lt!375841 lt!375869)))

(declare-fun e!700981 () T!19912)

(assert (=> d!313226 (= lt!375869 e!700981)))

(declare-fun c!187840 () Bool)

(assert (=> d!313226 (= c!187840 (= 0 0))))

(declare-fun e!700980 () Bool)

(assert (=> d!313226 e!700980))

(declare-fun res!490156 () Bool)

(assert (=> d!313226 (=> (not res!490156) (not e!700980))))

(assert (=> d!313226 (= res!490156 (<= 0 0))))

(assert (=> d!313226 (= (apply!2214 lt!375841 0) lt!375869)))

(declare-fun b!1106027 () Bool)

(assert (=> b!1106027 (= e!700980 (< 0 (size!8379 lt!375841)))))

(declare-fun b!1106028 () Bool)

(assert (=> b!1106028 (= e!700981 (head!2041 lt!375841))))

(declare-fun b!1106029 () Bool)

(assert (=> b!1106029 (= e!700981 (apply!2214 (tail!1601 lt!375841) (- 0 1)))))

(assert (= (and d!313226 res!490156) b!1106027))

(assert (= (and d!313226 c!187840) b!1106028))

(assert (= (and d!313226 (not c!187840)) b!1106029))

(declare-fun m!1263671 () Bool)

(assert (=> d!313226 m!1263671))

(assert (=> b!1106027 m!1263649))

(declare-fun m!1263673 () Bool)

(assert (=> b!1106028 m!1263673))

(declare-fun m!1263675 () Bool)

(assert (=> b!1106029 m!1263675))

(assert (=> b!1106029 m!1263675))

(declare-fun m!1263677 () Bool)

(assert (=> b!1106029 m!1263677))

(assert (=> b!1105890 d!313226))

(declare-fun d!313228 () Bool)

(assert (=> d!313228 (= (tail!1601 (drop!409 lt!375843 0)) (t!105349 (drop!409 lt!375843 0)))))

(assert (=> b!1105890 d!313228))

(declare-fun d!313230 () Bool)

(assert (=> d!313230 (= (head!2041 (drop!409 lt!375835 0)) (h!16170 (drop!409 lt!375835 0)))))

(assert (=> b!1105890 d!313230))

(declare-fun d!313232 () Bool)

(assert (=> d!313232 (= (tail!1601 (drop!409 lt!375834 0)) (t!105349 (drop!409 lt!375834 0)))))

(assert (=> b!1105890 d!313232))

(declare-fun d!313234 () Bool)

(assert (=> d!313234 (= (head!2041 (drop!409 lt!375835 0)) (apply!2214 lt!375835 0))))

(declare-fun lt!375871 () Unit!16453)

(assert (=> d!313234 (= lt!375871 (choose!7171 lt!375835 0))))

(declare-fun e!700987 () Bool)

(assert (=> d!313234 e!700987))

(declare-fun res!490158 () Bool)

(assert (=> d!313234 (=> (not res!490158) (not e!700987))))

(assert (=> d!313234 (= res!490158 (>= 0 0))))

(assert (=> d!313234 (= (lemmaDropApply!326 lt!375835 0) lt!375871)))

(declare-fun b!1106039 () Bool)

(assert (=> b!1106039 (= e!700987 (< 0 (size!8379 lt!375835)))))

(assert (= (and d!313234 res!490158) b!1106039))

(assert (=> d!313234 m!1263567))

(assert (=> d!313234 m!1263567))

(assert (=> d!313234 m!1263569))

(assert (=> d!313234 m!1263565))

(declare-fun m!1263679 () Bool)

(assert (=> d!313234 m!1263679))

(assert (=> b!1106039 m!1263629))

(assert (=> b!1105890 d!313234))

(declare-fun d!313236 () Bool)

(declare-fun e!700989 () Bool)

(assert (=> d!313236 e!700989))

(declare-fun res!490159 () Bool)

(assert (=> d!313236 (=> (not res!490159) (not e!700989))))

(declare-fun lt!375872 () List!10792)

(assert (=> d!313236 (= res!490159 (= ((_ map implies) (content!1553 lt!375872) (content!1553 lt!375834)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!700992 () List!10792)

(assert (=> d!313236 (= lt!375872 e!700992)))

(declare-fun c!187848 () Bool)

(assert (=> d!313236 (= c!187848 ((_ is Nil!10769) lt!375834))))

(assert (=> d!313236 (= (drop!409 lt!375834 0) lt!375872)))

(declare-fun b!1106040 () Bool)

(declare-fun e!700991 () Int)

(declare-fun e!700990 () Int)

(assert (=> b!1106040 (= e!700991 e!700990)))

(declare-fun c!187846 () Bool)

(declare-fun call!80511 () Int)

(assert (=> b!1106040 (= c!187846 (>= 0 call!80511))))

(declare-fun b!1106041 () Bool)

(assert (=> b!1106041 (= e!700991 call!80511)))

(declare-fun b!1106042 () Bool)

(assert (=> b!1106042 (= e!700990 0)))

(declare-fun b!1106043 () Bool)

(declare-fun e!700988 () List!10792)

(assert (=> b!1106043 (= e!700988 lt!375834)))

(declare-fun b!1106044 () Bool)

(assert (=> b!1106044 (= e!700990 (- call!80511 0))))

(declare-fun b!1106045 () Bool)

(assert (=> b!1106045 (= e!700992 Nil!10769)))

(declare-fun b!1106046 () Bool)

(assert (=> b!1106046 (= e!700989 (= (size!8379 lt!375872) e!700991))))

(declare-fun c!187845 () Bool)

(assert (=> b!1106046 (= c!187845 (<= 0 0))))

(declare-fun b!1106047 () Bool)

(assert (=> b!1106047 (= e!700988 (drop!409 (t!105349 lt!375834) (- 0 1)))))

(declare-fun bm!80506 () Bool)

(assert (=> bm!80506 (= call!80511 (size!8379 lt!375834))))

(declare-fun b!1106048 () Bool)

(assert (=> b!1106048 (= e!700992 e!700988)))

(declare-fun c!187847 () Bool)

(assert (=> b!1106048 (= c!187847 (<= 0 0))))

(assert (= (and d!313236 c!187848) b!1106045))

(assert (= (and d!313236 (not c!187848)) b!1106048))

(assert (= (and b!1106048 c!187847) b!1106043))

(assert (= (and b!1106048 (not c!187847)) b!1106047))

(assert (= (and d!313236 res!490159) b!1106046))

(assert (= (and b!1106046 c!187845) b!1106041))

(assert (= (and b!1106046 (not c!187845)) b!1106040))

(assert (= (and b!1106040 c!187846) b!1106042))

(assert (= (and b!1106040 (not c!187846)) b!1106044))

(assert (= (or b!1106041 b!1106040 b!1106044) bm!80506))

(declare-fun m!1263689 () Bool)

(assert (=> d!313236 m!1263689))

(declare-fun m!1263691 () Bool)

(assert (=> d!313236 m!1263691))

(declare-fun m!1263693 () Bool)

(assert (=> b!1106046 m!1263693))

(declare-fun m!1263695 () Bool)

(assert (=> b!1106047 m!1263695))

(declare-fun m!1263697 () Bool)

(assert (=> bm!80506 m!1263697))

(assert (=> b!1105890 d!313236))

(declare-fun d!313240 () Bool)

(declare-fun lt!375899 () T!19912)

(assert (=> d!313240 (= lt!375899 (apply!2214 (list!3890 other!25) 0))))

(declare-fun choose!7172 (Vector!48 Int) T!19912)

(assert (=> d!313240 (= lt!375899 (choose!7172 other!25 0))))

(declare-fun e!701006 () Bool)

(assert (=> d!313240 e!701006))

(declare-fun res!490168 () Bool)

(assert (=> d!313240 (=> (not res!490168) (not e!701006))))

(assert (=> d!313240 (= res!490168 (<= 0 0))))

(assert (=> d!313240 (= (apply!2215 other!25 0) lt!375899)))

(declare-fun b!1106069 () Bool)

(declare-fun lt!375898 () Int)

(assert (=> b!1106069 (= e!701006 (< 0 lt!375898))))

(assert (=> b!1106069 (= lt!375898 (size!8379 (list!3890 other!25)))))

(assert (=> b!1106069 (= lt!375898 (size!8380 other!25))))

(assert (= (and d!313240 res!490168) b!1106069))

(assert (=> d!313240 m!1263467))

(assert (=> d!313240 m!1263467))

(assert (=> d!313240 m!1263591))

(declare-fun m!1263759 () Bool)

(assert (=> d!313240 m!1263759))

(assert (=> b!1106069 m!1263467))

(assert (=> b!1106069 m!1263467))

(assert (=> b!1106069 m!1263483))

(assert (=> b!1106069 m!1263463))

(assert (=> b!1105890 d!313240))

(declare-fun d!313254 () Bool)

(declare-fun lt!375901 () T!19912)

(assert (=> d!313254 (= lt!375901 (apply!2214 (list!3890 thiss!9530) 0))))

(assert (=> d!313254 (= lt!375901 (choose!7172 thiss!9530 0))))

(declare-fun e!701007 () Bool)

(assert (=> d!313254 e!701007))

(declare-fun res!490170 () Bool)

(assert (=> d!313254 (=> (not res!490170) (not e!701007))))

(assert (=> d!313254 (= res!490170 (<= 0 0))))

(assert (=> d!313254 (= (apply!2215 thiss!9530 0) lt!375901)))

(declare-fun b!1106070 () Bool)

(declare-fun lt!375900 () Int)

(assert (=> b!1106070 (= e!701007 (< 0 lt!375900))))

(assert (=> b!1106070 (= lt!375900 (size!8379 (list!3890 thiss!9530)))))

(assert (=> b!1106070 (= lt!375900 (size!8380 thiss!9530))))

(assert (= (and d!313254 res!490170) b!1106070))

(assert (=> d!313254 m!1263459))

(assert (=> d!313254 m!1263459))

(assert (=> d!313254 m!1263587))

(declare-fun m!1263761 () Bool)

(assert (=> d!313254 m!1263761))

(assert (=> b!1106070 m!1263459))

(assert (=> b!1106070 m!1263459))

(assert (=> b!1106070 m!1263475))

(assert (=> b!1106070 m!1263461))

(assert (=> b!1105890 d!313254))

(assert (=> b!1105890 d!313172))

(declare-fun d!313256 () Bool)

(declare-fun lt!375902 () T!19912)

(assert (=> d!313256 (contains!1940 (list!3890 thiss!9530) lt!375902)))

(declare-fun e!701011 () T!19912)

(assert (=> d!313256 (= lt!375902 e!701011)))

(declare-fun c!187856 () Bool)

(assert (=> d!313256 (= c!187856 (= 0 0))))

(declare-fun e!701010 () Bool)

(assert (=> d!313256 e!701010))

(declare-fun res!490173 () Bool)

(assert (=> d!313256 (=> (not res!490173) (not e!701010))))

(assert (=> d!313256 (= res!490173 (<= 0 0))))

(assert (=> d!313256 (= (apply!2214 (list!3890 thiss!9530) 0) lt!375902)))

(declare-fun b!1106073 () Bool)

(assert (=> b!1106073 (= e!701010 (< 0 (size!8379 (list!3890 thiss!9530))))))

(declare-fun b!1106074 () Bool)

(assert (=> b!1106074 (= e!701011 (head!2041 (list!3890 thiss!9530)))))

(declare-fun b!1106075 () Bool)

(assert (=> b!1106075 (= e!701011 (apply!2214 (tail!1601 (list!3890 thiss!9530)) (- 0 1)))))

(assert (= (and d!313256 res!490173) b!1106073))

(assert (= (and d!313256 c!187856) b!1106074))

(assert (= (and d!313256 (not c!187856)) b!1106075))

(assert (=> d!313256 m!1263459))

(declare-fun m!1263763 () Bool)

(assert (=> d!313256 m!1263763))

(assert (=> b!1106073 m!1263459))

(assert (=> b!1106073 m!1263475))

(assert (=> b!1106074 m!1263459))

(declare-fun m!1263765 () Bool)

(assert (=> b!1106074 m!1263765))

(assert (=> b!1106075 m!1263459))

(declare-fun m!1263767 () Bool)

(assert (=> b!1106075 m!1263767))

(assert (=> b!1106075 m!1263767))

(declare-fun m!1263769 () Bool)

(assert (=> b!1106075 m!1263769))

(assert (=> b!1105890 d!313256))

(declare-fun d!313258 () Bool)

(declare-fun e!701014 () Bool)

(assert (=> d!313258 e!701014))

(declare-fun res!490175 () Bool)

(assert (=> d!313258 (=> (not res!490175) (not e!701014))))

(declare-fun lt!375903 () List!10792)

(assert (=> d!313258 (= res!490175 (= ((_ map implies) (content!1553 lt!375903) (content!1553 lt!375834)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!701017 () List!10792)

(assert (=> d!313258 (= lt!375903 e!701017)))

(declare-fun c!187860 () Bool)

(assert (=> d!313258 (= c!187860 ((_ is Nil!10769) lt!375834))))

(assert (=> d!313258 (= (drop!409 lt!375834 (+ 0 1)) lt!375903)))

(declare-fun b!1106077 () Bool)

(declare-fun e!701016 () Int)

(declare-fun e!701015 () Int)

(assert (=> b!1106077 (= e!701016 e!701015)))

(declare-fun c!187858 () Bool)

(declare-fun call!80513 () Int)

(assert (=> b!1106077 (= c!187858 (>= (+ 0 1) call!80513))))

(declare-fun b!1106078 () Bool)

(assert (=> b!1106078 (= e!701016 call!80513)))

(declare-fun b!1106079 () Bool)

(assert (=> b!1106079 (= e!701015 0)))

(declare-fun b!1106080 () Bool)

(declare-fun e!701013 () List!10792)

(assert (=> b!1106080 (= e!701013 lt!375834)))

(declare-fun b!1106081 () Bool)

(assert (=> b!1106081 (= e!701015 (- call!80513 (+ 0 1)))))

(declare-fun b!1106082 () Bool)

(assert (=> b!1106082 (= e!701017 Nil!10769)))

(declare-fun b!1106083 () Bool)

(assert (=> b!1106083 (= e!701014 (= (size!8379 lt!375903) e!701016))))

(declare-fun c!187857 () Bool)

(assert (=> b!1106083 (= c!187857 (<= (+ 0 1) 0))))

(declare-fun b!1106084 () Bool)

(assert (=> b!1106084 (= e!701013 (drop!409 (t!105349 lt!375834) (- (+ 0 1) 1)))))

(declare-fun bm!80508 () Bool)

(assert (=> bm!80508 (= call!80513 (size!8379 lt!375834))))

(declare-fun b!1106085 () Bool)

(assert (=> b!1106085 (= e!701017 e!701013)))

(declare-fun c!187859 () Bool)

(assert (=> b!1106085 (= c!187859 (<= (+ 0 1) 0))))

(assert (= (and d!313258 c!187860) b!1106082))

(assert (= (and d!313258 (not c!187860)) b!1106085))

(assert (= (and b!1106085 c!187859) b!1106080))

(assert (= (and b!1106085 (not c!187859)) b!1106084))

(assert (= (and d!313258 res!490175) b!1106083))

(assert (= (and b!1106083 c!187857) b!1106078))

(assert (= (and b!1106083 (not c!187857)) b!1106077))

(assert (= (and b!1106077 c!187858) b!1106079))

(assert (= (and b!1106077 (not c!187858)) b!1106081))

(assert (= (or b!1106078 b!1106077 b!1106081) bm!80508))

(declare-fun m!1263771 () Bool)

(assert (=> d!313258 m!1263771))

(assert (=> d!313258 m!1263691))

(declare-fun m!1263773 () Bool)

(assert (=> b!1106083 m!1263773))

(declare-fun m!1263775 () Bool)

(assert (=> b!1106084 m!1263775))

(assert (=> bm!80508 m!1263697))

(assert (=> b!1105890 d!313258))

(declare-fun d!313262 () Bool)

(assert (=> d!313262 (= (tail!1601 (drop!409 lt!375834 0)) (drop!409 lt!375834 (+ 0 1)))))

(declare-fun lt!375906 () Unit!16453)

(declare-fun choose!7173 (List!10792 Int) Unit!16453)

(assert (=> d!313262 (= lt!375906 (choose!7173 lt!375834 0))))

(declare-fun e!701024 () Bool)

(assert (=> d!313262 e!701024))

(declare-fun res!490180 () Bool)

(assert (=> d!313262 (=> (not res!490180) (not e!701024))))

(assert (=> d!313262 (= res!490180 (>= 0 0))))

(assert (=> d!313262 (= (lemmaDropTail!314 lt!375834 0) lt!375906)))

(declare-fun b!1106094 () Bool)

(assert (=> b!1106094 (= e!701024 (< 0 (size!8379 lt!375834)))))

(assert (= (and d!313262 res!490180) b!1106094))

(assert (=> d!313262 m!1263561))

(assert (=> d!313262 m!1263561))

(assert (=> d!313262 m!1263563))

(assert (=> d!313262 m!1263555))

(declare-fun m!1263781 () Bool)

(assert (=> d!313262 m!1263781))

(assert (=> b!1106094 m!1263697))

(assert (=> b!1105890 d!313262))

(declare-fun d!313266 () Bool)

(assert (=> d!313266 (= (head!2041 (drop!409 lt!375841 0)) (h!16170 (drop!409 lt!375841 0)))))

(assert (=> b!1105890 d!313266))

(assert (=> b!1105890 d!313182))

(declare-fun d!313268 () Bool)

(assert (=> d!313268 (= (tail!1601 (drop!409 lt!375843 0)) (drop!409 lt!375843 (+ 0 1)))))

(declare-fun lt!375907 () Unit!16453)

(assert (=> d!313268 (= lt!375907 (choose!7173 lt!375843 0))))

(declare-fun e!701027 () Bool)

(assert (=> d!313268 e!701027))

(declare-fun res!490182 () Bool)

(assert (=> d!313268 (=> (not res!490182) (not e!701027))))

(assert (=> d!313268 (= res!490182 (>= 0 0))))

(assert (=> d!313268 (= (lemmaDropTail!314 lt!375843 0) lt!375907)))

(declare-fun b!1106098 () Bool)

(assert (=> b!1106098 (= e!701027 (< 0 (size!8379 lt!375843)))))

(assert (= (and d!313268 res!490182) b!1106098))

(assert (=> d!313268 m!1263575))

(assert (=> d!313268 m!1263575))

(assert (=> d!313268 m!1263577))

(assert (=> d!313268 m!1263557))

(declare-fun m!1263783 () Bool)

(assert (=> d!313268 m!1263783))

(assert (=> b!1106098 m!1263639))

(assert (=> b!1105890 d!313268))

(declare-fun d!313270 () Bool)

(declare-fun e!701029 () Bool)

(assert (=> d!313270 e!701029))

(declare-fun res!490183 () Bool)

(assert (=> d!313270 (=> (not res!490183) (not e!701029))))

(declare-fun lt!375908 () List!10792)

(assert (=> d!313270 (= res!490183 (= ((_ map implies) (content!1553 lt!375908) (content!1553 lt!375843)) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!701032 () List!10792)

(assert (=> d!313270 (= lt!375908 e!701032)))

(declare-fun c!187867 () Bool)

(assert (=> d!313270 (= c!187867 ((_ is Nil!10769) lt!375843))))

(assert (=> d!313270 (= (drop!409 lt!375843 (+ 0 1)) lt!375908)))

(declare-fun b!1106099 () Bool)

(declare-fun e!701031 () Int)

(declare-fun e!701030 () Int)

(assert (=> b!1106099 (= e!701031 e!701030)))

(declare-fun c!187865 () Bool)

(declare-fun call!80514 () Int)

(assert (=> b!1106099 (= c!187865 (>= (+ 0 1) call!80514))))

(declare-fun b!1106100 () Bool)

(assert (=> b!1106100 (= e!701031 call!80514)))

(declare-fun b!1106101 () Bool)

(assert (=> b!1106101 (= e!701030 0)))

(declare-fun b!1106102 () Bool)

(declare-fun e!701028 () List!10792)

(assert (=> b!1106102 (= e!701028 lt!375843)))

(declare-fun b!1106103 () Bool)

(assert (=> b!1106103 (= e!701030 (- call!80514 (+ 0 1)))))

(declare-fun b!1106104 () Bool)

(assert (=> b!1106104 (= e!701032 Nil!10769)))

(declare-fun b!1106105 () Bool)

(assert (=> b!1106105 (= e!701029 (= (size!8379 lt!375908) e!701031))))

(declare-fun c!187864 () Bool)

(assert (=> b!1106105 (= c!187864 (<= (+ 0 1) 0))))

(declare-fun b!1106106 () Bool)

(assert (=> b!1106106 (= e!701028 (drop!409 (t!105349 lt!375843) (- (+ 0 1) 1)))))

(declare-fun bm!80509 () Bool)

(assert (=> bm!80509 (= call!80514 (size!8379 lt!375843))))

(declare-fun b!1106107 () Bool)

(assert (=> b!1106107 (= e!701032 e!701028)))

(declare-fun c!187866 () Bool)

(assert (=> b!1106107 (= c!187866 (<= (+ 0 1) 0))))

(assert (= (and d!313270 c!187867) b!1106104))

(assert (= (and d!313270 (not c!187867)) b!1106107))

(assert (= (and b!1106107 c!187866) b!1106102))

(assert (= (and b!1106107 (not c!187866)) b!1106106))

(assert (= (and d!313270 res!490183) b!1106105))

(assert (= (and b!1106105 c!187864) b!1106100))

(assert (= (and b!1106105 (not c!187864)) b!1106099))

(assert (= (and b!1106099 c!187865) b!1106101))

(assert (= (and b!1106099 (not c!187865)) b!1106103))

(assert (= (or b!1106100 b!1106099 b!1106103) bm!80509))

(declare-fun m!1263785 () Bool)

(assert (=> d!313270 m!1263785))

(assert (=> d!313270 m!1263633))

(declare-fun m!1263787 () Bool)

(assert (=> b!1106105 m!1263787))

(declare-fun m!1263789 () Bool)

(assert (=> b!1106106 m!1263789))

(assert (=> bm!80509 m!1263639))

(assert (=> b!1105890 d!313270))

(declare-fun d!313272 () Bool)

(assert (=> d!313272 (= (inv!13840 (value!60890 (underlying!2716 thiss!9530))) (isBalanced!934 (c!187793 (value!60890 (underlying!2716 thiss!9530)))))))

(declare-fun bs!260040 () Bool)

(assert (= bs!260040 d!313272))

(declare-fun m!1263791 () Bool)

(assert (=> bs!260040 m!1263791))

(assert (=> b!1105922 d!313272))

(declare-fun d!313274 () Bool)

(declare-fun lt!375909 () Int)

(assert (=> d!313274 (>= lt!375909 0)))

(declare-fun e!701033 () Int)

(assert (=> d!313274 (= lt!375909 e!701033)))

(declare-fun c!187868 () Bool)

(assert (=> d!313274 (= c!187868 ((_ is Nil!10769) (list!3890 thiss!9530)))))

(assert (=> d!313274 (= (size!8379 (list!3890 thiss!9530)) lt!375909)))

(declare-fun b!1106108 () Bool)

(assert (=> b!1106108 (= e!701033 0)))

(declare-fun b!1106109 () Bool)

(assert (=> b!1106109 (= e!701033 (+ 1 (size!8379 (t!105349 (list!3890 thiss!9530)))))))

(assert (= (and d!313274 c!187868) b!1106108))

(assert (= (and d!313274 (not c!187868)) b!1106109))

(declare-fun m!1263793 () Bool)

(assert (=> b!1106109 m!1263793))

(assert (=> b!1105889 d!313274))

(assert (=> b!1105889 d!313182))

(assert (=> b!1105889 d!313178))

(declare-fun d!313276 () Bool)

(declare-fun lt!375910 () Int)

(assert (=> d!313276 (>= lt!375910 0)))

(declare-fun e!701034 () Int)

(assert (=> d!313276 (= lt!375910 e!701034)))

(declare-fun c!187869 () Bool)

(assert (=> d!313276 (= c!187869 ((_ is Nil!10769) (t!105349 lt!375732)))))

(assert (=> d!313276 (= (size!8379 (t!105349 lt!375732)) lt!375910)))

(declare-fun b!1106110 () Bool)

(assert (=> b!1106110 (= e!701034 0)))

(declare-fun b!1106111 () Bool)

(assert (=> b!1106111 (= e!701034 (+ 1 (size!8379 (t!105349 (t!105349 lt!375732)))))))

(assert (= (and d!313276 c!187869) b!1106110))

(assert (= (and d!313276 (not c!187869)) b!1106111))

(declare-fun m!1263797 () Bool)

(assert (=> b!1106111 m!1263797))

(assert (=> b!1105867 d!313276))

(declare-fun d!313280 () Bool)

(assert (=> d!313280 true))

(declare-fun e!701042 () Bool)

(assert (=> d!313280 e!701042))

(declare-fun res!490188 () List!10792)

(assert (=> d!313280 (= (choose!7167 thiss!9530) res!490188)))

(declare-fun b!1106123 () Bool)

(declare-fun tp!327482 () Bool)

(assert (=> b!1106123 (= e!701042 (and tp_is_empty!5709 tp!327482))))

(assert (= (and d!313280 ((_ is Cons!10769) res!490188)) b!1106123))

(assert (=> d!313182 d!313280))

(declare-fun d!313286 () Bool)

(assert (=> d!313286 true))

(declare-fun e!701043 () Bool)

(assert (=> d!313286 e!701043))

(declare-fun res!490189 () List!10792)

(assert (=> d!313286 (= (choose!7167 other!25) res!490189)))

(declare-fun b!1106124 () Bool)

(declare-fun tp!327483 () Bool)

(assert (=> b!1106124 (= e!701043 (and tp_is_empty!5709 tp!327483))))

(assert (= (and d!313286 ((_ is Cons!10769) res!490189)) b!1106124))

(assert (=> d!313172 d!313286))

(assert (=> d!313178 d!313274))

(assert (=> d!313178 d!313182))

(declare-fun d!313288 () Bool)

(declare-fun res!490190 () Int)

(assert (=> d!313288 (= res!490190 (size!8379 (list!3890 thiss!9530)))))

(assert (=> d!313288 true))

(assert (=> d!313288 (= (choose!7168 thiss!9530) res!490190)))

(declare-fun bs!260043 () Bool)

(assert (= bs!260043 d!313288))

(assert (=> bs!260043 m!1263459))

(assert (=> bs!260043 m!1263459))

(assert (=> bs!260043 m!1263475))

(assert (=> d!313178 d!313288))

(declare-fun d!313290 () Bool)

(declare-fun lt!375920 () Bool)

(assert (=> d!313290 (= lt!375920 (= (drop!409 (list!3890 thiss!9530) (+ 0 1)) (drop!409 (list!3890 other!25) (+ 0 1))))))

(declare-fun e!701044 () Bool)

(assert (=> d!313290 (= lt!375920 e!701044)))

(declare-fun res!490193 () Bool)

(assert (=> d!313290 (=> res!490193 e!701044)))

(declare-fun lt!375926 () Int)

(assert (=> d!313290 (= res!490193 (= (+ 0 1) lt!375926))))

(assert (=> d!313290 (= lt!375926 (size!8379 (list!3890 thiss!9530)))))

(assert (=> d!313290 (= lt!375926 (size!8380 thiss!9530))))

(declare-fun e!701046 () Bool)

(assert (=> d!313290 e!701046))

(declare-fun res!490192 () Bool)

(assert (=> d!313290 (=> (not res!490192) (not e!701046))))

(assert (=> d!313290 (= res!490192 (<= 0 (+ 0 1)))))

(assert (=> d!313290 (= (equivalentSequenceAsSameSize!2 thiss!9530 other!25 (+ 0 1)) lt!375920)))

(declare-fun b!1106125 () Bool)

(declare-fun lt!375925 () Int)

(assert (=> b!1106125 (= e!701046 (<= (+ 0 1) lt!375925))))

(assert (=> b!1106125 (= lt!375925 (size!8379 (list!3890 thiss!9530)))))

(assert (=> b!1106125 (= lt!375925 (size!8380 thiss!9530))))

(declare-fun b!1106126 () Bool)

(declare-fun e!701045 () Bool)

(assert (=> b!1106126 (= e!701044 e!701045)))

(declare-fun res!490191 () Bool)

(assert (=> b!1106126 (=> (not res!490191) (not e!701045))))

(declare-fun lt!375928 () T!19912)

(declare-fun lt!375918 () T!19912)

(assert (=> b!1106126 (= res!490191 (= lt!375928 lt!375918))))

(assert (=> b!1106126 (= lt!375918 (apply!2214 (list!3890 other!25) (+ 0 1)))))

(assert (=> b!1106126 (= lt!375918 (apply!2215 other!25 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375928 (apply!2214 (list!3890 thiss!9530) (+ 0 1)))))

(assert (=> b!1106126 (= lt!375928 (apply!2215 thiss!9530 (+ 0 1)))))

(declare-fun lt!375917 () Unit!16453)

(declare-fun lt!375927 () Unit!16453)

(assert (=> b!1106126 (= lt!375917 lt!375927)))

(declare-fun lt!375914 () List!10792)

(assert (=> b!1106126 (= (tail!1601 (drop!409 lt!375914 (+ 0 1))) (drop!409 lt!375914 (+ 0 1 1)))))

(assert (=> b!1106126 (= lt!375927 (lemmaDropTail!314 lt!375914 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375914 (list!3890 other!25))))

(declare-fun lt!375922 () Unit!16453)

(declare-fun lt!375912 () Unit!16453)

(assert (=> b!1106126 (= lt!375922 lt!375912)))

(declare-fun lt!375923 () List!10792)

(assert (=> b!1106126 (= (tail!1601 (drop!409 lt!375923 (+ 0 1))) (drop!409 lt!375923 (+ 0 1 1)))))

(assert (=> b!1106126 (= lt!375912 (lemmaDropTail!314 lt!375923 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375923 (list!3890 thiss!9530))))

(declare-fun lt!375916 () Unit!16453)

(declare-fun lt!375919 () Unit!16453)

(assert (=> b!1106126 (= lt!375916 lt!375919)))

(declare-fun lt!375921 () List!10792)

(assert (=> b!1106126 (= (head!2041 (drop!409 lt!375921 (+ 0 1))) (apply!2214 lt!375921 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375919 (lemmaDropApply!326 lt!375921 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375921 (list!3890 other!25))))

(declare-fun lt!375913 () Unit!16453)

(declare-fun lt!375924 () Unit!16453)

(assert (=> b!1106126 (= lt!375913 lt!375924)))

(declare-fun lt!375915 () List!10792)

(assert (=> b!1106126 (= (head!2041 (drop!409 lt!375915 (+ 0 1))) (apply!2214 lt!375915 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375924 (lemmaDropApply!326 lt!375915 (+ 0 1)))))

(assert (=> b!1106126 (= lt!375915 (list!3890 thiss!9530))))

(declare-fun b!1106127 () Bool)

(assert (=> b!1106127 (= e!701045 (equivalentSequenceAsSameSize!2 thiss!9530 other!25 (+ 0 1 1)))))

(assert (= (and d!313290 res!490192) b!1106125))

(assert (= (and d!313290 (not res!490193)) b!1106126))

(assert (= (and b!1106126 res!490191) b!1106127))

(assert (=> d!313290 m!1263459))

(assert (=> d!313290 m!1263475))

(assert (=> d!313290 m!1263459))

(assert (=> d!313290 m!1263467))

(assert (=> d!313290 m!1263461))

(assert (=> d!313290 m!1263459))

(declare-fun m!1263809 () Bool)

(assert (=> d!313290 m!1263809))

(assert (=> d!313290 m!1263467))

(declare-fun m!1263811 () Bool)

(assert (=> d!313290 m!1263811))

(assert (=> b!1106125 m!1263459))

(assert (=> b!1106125 m!1263459))

(assert (=> b!1106125 m!1263475))

(assert (=> b!1106125 m!1263461))

(declare-fun m!1263813 () Bool)

(assert (=> b!1106126 m!1263813))

(declare-fun m!1263815 () Bool)

(assert (=> b!1106126 m!1263815))

(declare-fun m!1263817 () Bool)

(assert (=> b!1106126 m!1263817))

(assert (=> b!1106126 m!1263813))

(declare-fun m!1263819 () Bool)

(assert (=> b!1106126 m!1263819))

(assert (=> b!1106126 m!1263467))

(declare-fun m!1263821 () Bool)

(assert (=> b!1106126 m!1263821))

(declare-fun m!1263823 () Bool)

(assert (=> b!1106126 m!1263823))

(declare-fun m!1263825 () Bool)

(assert (=> b!1106126 m!1263825))

(declare-fun m!1263827 () Bool)

(assert (=> b!1106126 m!1263827))

(declare-fun m!1263829 () Bool)

(assert (=> b!1106126 m!1263829))

(declare-fun m!1263831 () Bool)

(assert (=> b!1106126 m!1263831))

(declare-fun m!1263833 () Bool)

(assert (=> b!1106126 m!1263833))

(declare-fun m!1263835 () Bool)

(assert (=> b!1106126 m!1263835))

(assert (=> b!1106126 m!1263835))

(declare-fun m!1263837 () Bool)

(assert (=> b!1106126 m!1263837))

(declare-fun m!1263839 () Bool)

(assert (=> b!1106126 m!1263839))

(assert (=> b!1106126 m!1263821))

(assert (=> b!1106126 m!1263827))

(declare-fun m!1263841 () Bool)

(assert (=> b!1106126 m!1263841))

(declare-fun m!1263843 () Bool)

(assert (=> b!1106126 m!1263843))

(assert (=> b!1106126 m!1263459))

(declare-fun m!1263845 () Bool)

(assert (=> b!1106126 m!1263845))

(assert (=> b!1106126 m!1263459))

(declare-fun m!1263847 () Bool)

(assert (=> b!1106126 m!1263847))

(declare-fun m!1263849 () Bool)

(assert (=> b!1106126 m!1263849))

(assert (=> b!1106126 m!1263467))

(declare-fun m!1263851 () Bool)

(assert (=> b!1106126 m!1263851))

(declare-fun m!1263853 () Bool)

(assert (=> b!1106127 m!1263853))

(assert (=> b!1105891 d!313290))

(declare-fun d!313292 () Bool)

(declare-fun c!187874 () Bool)

(assert (=> d!313292 (= c!187874 ((_ is Node!3405) (c!187793 (value!60890 (underlying!2716 thiss!9530)))))))

(declare-fun e!701049 () Bool)

(assert (=> d!313292 (= (inv!13839 (c!187793 (value!60890 (underlying!2716 thiss!9530)))) e!701049)))

(declare-fun b!1106130 () Bool)

(assert (=> b!1106130 (= e!701049 (inv!13843 (c!187793 (value!60890 (underlying!2716 thiss!9530)))))))

(declare-fun b!1106131 () Bool)

(declare-fun e!701050 () Bool)

(assert (=> b!1106131 (= e!701049 e!701050)))

(declare-fun res!490196 () Bool)

(assert (=> b!1106131 (= res!490196 (not ((_ is Leaf!5343) (c!187793 (value!60890 (underlying!2716 thiss!9530))))))))

(assert (=> b!1106131 (=> res!490196 e!701050)))

(declare-fun b!1106132 () Bool)

(assert (=> b!1106132 (= e!701050 (inv!13844 (c!187793 (value!60890 (underlying!2716 thiss!9530)))))))

(assert (= (and d!313292 c!187874) b!1106130))

(assert (= (and d!313292 (not c!187874)) b!1106131))

(assert (= (and b!1106131 (not res!490196)) b!1106132))

(declare-fun m!1263855 () Bool)

(assert (=> b!1106130 m!1263855))

(declare-fun m!1263857 () Bool)

(assert (=> b!1106132 m!1263857))

(assert (=> b!1105923 d!313292))

(assert (=> d!313186 d!313172))

(declare-fun d!313294 () Bool)

(declare-fun e!701052 () Bool)

(assert (=> d!313294 e!701052))

(declare-fun res!490197 () Bool)

(assert (=> d!313294 (=> (not res!490197) (not e!701052))))

(declare-fun lt!375931 () List!10792)

(assert (=> d!313294 (= res!490197 (= ((_ map implies) (content!1553 lt!375931) (content!1553 (list!3890 thiss!9530))) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!701055 () List!10792)

(assert (=> d!313294 (= lt!375931 e!701055)))

(declare-fun c!187878 () Bool)

(assert (=> d!313294 (= c!187878 ((_ is Nil!10769) (list!3890 thiss!9530)))))

(assert (=> d!313294 (= (drop!409 (list!3890 thiss!9530) 0) lt!375931)))

(declare-fun b!1106133 () Bool)

(declare-fun e!701054 () Int)

(declare-fun e!701053 () Int)

(assert (=> b!1106133 (= e!701054 e!701053)))

(declare-fun c!187876 () Bool)

(declare-fun call!80516 () Int)

(assert (=> b!1106133 (= c!187876 (>= 0 call!80516))))

(declare-fun b!1106134 () Bool)

(assert (=> b!1106134 (= e!701054 call!80516)))

(declare-fun b!1106135 () Bool)

(assert (=> b!1106135 (= e!701053 0)))

(declare-fun b!1106136 () Bool)

(declare-fun e!701051 () List!10792)

(assert (=> b!1106136 (= e!701051 (list!3890 thiss!9530))))

(declare-fun b!1106137 () Bool)

(assert (=> b!1106137 (= e!701053 (- call!80516 0))))

(declare-fun b!1106138 () Bool)

(assert (=> b!1106138 (= e!701055 Nil!10769)))

(declare-fun b!1106139 () Bool)

(assert (=> b!1106139 (= e!701052 (= (size!8379 lt!375931) e!701054))))

(declare-fun c!187875 () Bool)

(assert (=> b!1106139 (= c!187875 (<= 0 0))))

(declare-fun b!1106140 () Bool)

(assert (=> b!1106140 (= e!701051 (drop!409 (t!105349 (list!3890 thiss!9530)) (- 0 1)))))

(declare-fun bm!80511 () Bool)

(assert (=> bm!80511 (= call!80516 (size!8379 (list!3890 thiss!9530)))))

(declare-fun b!1106141 () Bool)

(assert (=> b!1106141 (= e!701055 e!701051)))

(declare-fun c!187877 () Bool)

(assert (=> b!1106141 (= c!187877 (<= 0 0))))

(assert (= (and d!313294 c!187878) b!1106138))

(assert (= (and d!313294 (not c!187878)) b!1106141))

(assert (= (and b!1106141 c!187877) b!1106136))

(assert (= (and b!1106141 (not c!187877)) b!1106140))

(assert (= (and d!313294 res!490197) b!1106139))

(assert (= (and b!1106139 c!187875) b!1106134))

(assert (= (and b!1106139 (not c!187875)) b!1106133))

(assert (= (and b!1106133 c!187876) b!1106135))

(assert (= (and b!1106133 (not c!187876)) b!1106137))

(assert (= (or b!1106134 b!1106133 b!1106137) bm!80511))

(declare-fun m!1263859 () Bool)

(assert (=> d!313294 m!1263859))

(assert (=> d!313294 m!1263459))

(declare-fun m!1263861 () Bool)

(assert (=> d!313294 m!1263861))

(declare-fun m!1263863 () Bool)

(assert (=> b!1106139 m!1263863))

(declare-fun m!1263865 () Bool)

(assert (=> b!1106140 m!1263865))

(assert (=> bm!80511 m!1263459))

(assert (=> bm!80511 m!1263475))

(assert (=> d!313186 d!313294))

(assert (=> d!313186 d!313178))

(assert (=> d!313186 d!313182))

(declare-fun d!313296 () Bool)

(declare-fun e!701058 () Bool)

(assert (=> d!313296 e!701058))

(declare-fun res!490199 () Bool)

(assert (=> d!313296 (=> (not res!490199) (not e!701058))))

(declare-fun lt!375933 () List!10792)

(assert (=> d!313296 (= res!490199 (= ((_ map implies) (content!1553 lt!375933) (content!1553 (list!3890 other!25))) ((as const (InoxSet T!19912)) true)))))

(declare-fun e!701061 () List!10792)

(assert (=> d!313296 (= lt!375933 e!701061)))

(declare-fun c!187882 () Bool)

(assert (=> d!313296 (= c!187882 ((_ is Nil!10769) (list!3890 other!25)))))

(assert (=> d!313296 (= (drop!409 (list!3890 other!25) 0) lt!375933)))

(declare-fun b!1106143 () Bool)

(declare-fun e!701060 () Int)

(declare-fun e!701059 () Int)

(assert (=> b!1106143 (= e!701060 e!701059)))

(declare-fun c!187880 () Bool)

(declare-fun call!80517 () Int)

(assert (=> b!1106143 (= c!187880 (>= 0 call!80517))))

(declare-fun b!1106144 () Bool)

(assert (=> b!1106144 (= e!701060 call!80517)))

(declare-fun b!1106145 () Bool)

(assert (=> b!1106145 (= e!701059 0)))

(declare-fun b!1106146 () Bool)

(declare-fun e!701057 () List!10792)

(assert (=> b!1106146 (= e!701057 (list!3890 other!25))))

(declare-fun b!1106147 () Bool)

(assert (=> b!1106147 (= e!701059 (- call!80517 0))))

(declare-fun b!1106148 () Bool)

(assert (=> b!1106148 (= e!701061 Nil!10769)))

(declare-fun b!1106149 () Bool)

(assert (=> b!1106149 (= e!701058 (= (size!8379 lt!375933) e!701060))))

(declare-fun c!187879 () Bool)

(assert (=> b!1106149 (= c!187879 (<= 0 0))))

(declare-fun b!1106150 () Bool)

(assert (=> b!1106150 (= e!701057 (drop!409 (t!105349 (list!3890 other!25)) (- 0 1)))))

(declare-fun bm!80512 () Bool)

(assert (=> bm!80512 (= call!80517 (size!8379 (list!3890 other!25)))))

(declare-fun b!1106151 () Bool)

(assert (=> b!1106151 (= e!701061 e!701057)))

(declare-fun c!187881 () Bool)

(assert (=> b!1106151 (= c!187881 (<= 0 0))))

(assert (= (and d!313296 c!187882) b!1106148))

(assert (= (and d!313296 (not c!187882)) b!1106151))

(assert (= (and b!1106151 c!187881) b!1106146))

(assert (= (and b!1106151 (not c!187881)) b!1106150))

(assert (= (and d!313296 res!490199) b!1106149))

(assert (= (and b!1106149 c!187879) b!1106144))

(assert (= (and b!1106149 (not c!187879)) b!1106143))

(assert (= (and b!1106143 c!187880) b!1106145))

(assert (= (and b!1106143 (not c!187880)) b!1106147))

(assert (= (or b!1106144 b!1106143 b!1106147) bm!80512))

(declare-fun m!1263875 () Bool)

(assert (=> d!313296 m!1263875))

(assert (=> d!313296 m!1263467))

(declare-fun m!1263877 () Bool)

(assert (=> d!313296 m!1263877))

(declare-fun m!1263879 () Bool)

(assert (=> b!1106149 m!1263879))

(declare-fun m!1263881 () Bool)

(assert (=> b!1106150 m!1263881))

(assert (=> bm!80512 m!1263467))

(assert (=> bm!80512 m!1263483))

(assert (=> d!313186 d!313296))

(assert (=> d!313186 d!313274))

(declare-fun b!1106166 () Bool)

(declare-fun e!701070 () Bool)

(declare-fun tp!327488 () Bool)

(declare-fun tp!327489 () Bool)

(assert (=> b!1106166 (= e!701070 (and tp!327488 tp!327489))))

(assert (=> b!1105932 (= tp!327475 e!701070)))

(assert (= (and b!1105932 ((_ is Cons!10770) (value!60891 (underlying!2716 other!25)))) b!1106166))

(declare-fun tp!327496 () Bool)

(declare-fun b!1106175 () Bool)

(declare-fun tp!327497 () Bool)

(declare-fun e!701075 () Bool)

(assert (=> b!1106175 (= e!701075 (and (inv!13839 (left!9368 (c!187793 (value!60890 (underlying!2716 other!25))))) tp!327496 (inv!13839 (right!9698 (c!187793 (value!60890 (underlying!2716 other!25))))) tp!327497))))

(declare-fun b!1106177 () Bool)

(declare-fun e!701076 () Bool)

(declare-fun tp!327498 () Bool)

(assert (=> b!1106177 (= e!701076 tp!327498)))

(declare-fun b!1106176 () Bool)

(declare-fun inv!13847 (IArray!6815) Bool)

(assert (=> b!1106176 (= e!701075 (and (inv!13847 (xs!6098 (c!187793 (value!60890 (underlying!2716 other!25))))) e!701076))))

(assert (=> b!1105931 (= tp!327474 (and (inv!13839 (c!187793 (value!60890 (underlying!2716 other!25)))) e!701075))))

(assert (= (and b!1105931 ((_ is Node!3405) (c!187793 (value!60890 (underlying!2716 other!25))))) b!1106175))

(assert (= b!1106176 b!1106177))

(assert (= (and b!1105931 ((_ is Leaf!5343) (c!187793 (value!60890 (underlying!2716 other!25))))) b!1106176))

(declare-fun m!1263893 () Bool)

(assert (=> b!1106175 m!1263893))

(declare-fun m!1263895 () Bool)

(assert (=> b!1106175 m!1263895))

(declare-fun m!1263897 () Bool)

(assert (=> b!1106176 m!1263897))

(assert (=> b!1105931 m!1263607))

(declare-fun b!1106178 () Bool)

(declare-fun e!701077 () Bool)

(declare-fun tp!327499 () Bool)

(assert (=> b!1106178 (= e!701077 (and tp_is_empty!5709 tp!327499))))

(assert (=> b!1105929 (= tp!327473 e!701077)))

(assert (= (and b!1105929 ((_ is Cons!10769) (t!105349 (overflowing!81 thiss!9530)))) b!1106178))

(declare-fun b!1106181 () Bool)

(declare-fun e!701080 () Bool)

(declare-fun tp!327500 () Bool)

(declare-fun tp!327501 () Bool)

(assert (=> b!1106181 (= e!701080 (and tp!327500 tp!327501))))

(assert (=> b!1105924 (= tp!327470 e!701080)))

(assert (= (and b!1105924 ((_ is Cons!10770) (value!60891 (underlying!2716 thiss!9530)))) b!1106181))

(declare-fun tp!327503 () Bool)

(declare-fun tp!327502 () Bool)

(declare-fun b!1106182 () Bool)

(declare-fun e!701081 () Bool)

(assert (=> b!1106182 (= e!701081 (and (inv!13839 (left!9368 (c!187793 (value!60890 (underlying!2716 thiss!9530))))) tp!327502 (inv!13839 (right!9698 (c!187793 (value!60890 (underlying!2716 thiss!9530))))) tp!327503))))

(declare-fun b!1106184 () Bool)

(declare-fun e!701082 () Bool)

(declare-fun tp!327504 () Bool)

(assert (=> b!1106184 (= e!701082 tp!327504)))

(declare-fun b!1106183 () Bool)

(assert (=> b!1106183 (= e!701081 (and (inv!13847 (xs!6098 (c!187793 (value!60890 (underlying!2716 thiss!9530))))) e!701082))))

(assert (=> b!1105923 (= tp!327469 (and (inv!13839 (c!187793 (value!60890 (underlying!2716 thiss!9530)))) e!701081))))

(assert (= (and b!1105923 ((_ is Node!3405) (c!187793 (value!60890 (underlying!2716 thiss!9530))))) b!1106182))

(assert (= b!1106183 b!1106184))

(assert (= (and b!1105923 ((_ is Leaf!5343) (c!187793 (value!60890 (underlying!2716 thiss!9530))))) b!1106183))

(declare-fun m!1263899 () Bool)

(assert (=> b!1106182 m!1263899))

(declare-fun m!1263901 () Bool)

(assert (=> b!1106182 m!1263901))

(declare-fun m!1263903 () Bool)

(assert (=> b!1106183 m!1263903))

(assert (=> b!1105923 m!1263603))

(declare-fun b!1106185 () Bool)

(declare-fun e!701083 () Bool)

(declare-fun tp!327505 () Bool)

(assert (=> b!1106185 (= e!701083 (and tp_is_empty!5709 tp!327505))))

(assert (=> b!1105933 (= tp!327476 e!701083)))

(assert (= (and b!1105933 ((_ is Cons!10769) (t!105349 (overflowing!81 other!25)))) b!1106185))

(check-sat (not b!1106109) (not b!1106149) (not b!1106075) (not b!1106106) (not b!1106021) (not b!1106175) (not d!313204) (not b!1106127) (not bm!80506) (not b!1106123) (not b!1106111) (not b!1106069) (not b!1106084) (not d!313262) (not b!1106074) (not b!1106028) (not b!1106029) (not b!1105996) (not b!1106178) (not b!1105931) (not b!1105972) (not b!1106184) (not b!1106126) (not d!313258) (not d!313222) (not b!1106027) (not d!313210) (not b!1105923) (not d!313288) (not b!1105990) (not bm!80502) (not d!313256) (not b!1106039) (not d!313216) (not d!313270) (not b!1105946) (not d!313296) (not bm!80512) (not bm!80511) (not bm!80509) (not bm!80501) (not d!313234) (not b!1106026) (not d!313268) (not b!1106047) (not b!1106140) (not b!1106024) (not d!313240) (not d!313290) (not b!1106181) (not b!1106098) (not d!313236) (not b!1106166) (not d!313212) (not b!1106125) (not b!1106105) (not b!1106183) (not b!1106185) (not b!1106139) (not b!1106022) (not b!1106177) (not d!313294) (not b!1106094) (not b!1106023) (not b!1106130) (not d!313226) (not b!1105935) (not b!1105944) (not b!1105981) (not b!1106124) (not b!1106176) (not d!313208) (not d!313224) (not b!1105980) (not b!1105971) (not b!1106070) (not b!1106182) (not b!1106046) (not d!313272) (not b!1105989) (not d!313214) (not bm!80500) (not b!1105937) (not b!1106025) (not b!1106083) (not b!1106132) (not b!1106073) tp_is_empty!5709 (not b!1106150) (not bm!80508) (not d!313254))
(check-sat)
