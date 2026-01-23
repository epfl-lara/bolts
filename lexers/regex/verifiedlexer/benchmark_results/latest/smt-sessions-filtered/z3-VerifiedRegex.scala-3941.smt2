; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215952 () Bool)

(assert start!215952)

(declare-fun b_free!64099 () Bool)

(declare-fun b_next!64803 () Bool)

(assert (=> start!215952 (= b_free!64099 (not b_next!64803))))

(declare-fun tp!690175 () Bool)

(declare-fun b_and!173887 () Bool)

(assert (=> start!215952 (= tp!690175 b_and!173887)))

(declare-fun b!2216582 () Bool)

(declare-fun b_free!64101 () Bool)

(declare-fun b_next!64805 () Bool)

(assert (=> b!2216582 (= b_free!64101 (not b_next!64805))))

(declare-fun tp!690190 () Bool)

(declare-fun b_and!173889 () Bool)

(assert (=> b!2216582 (= tp!690190 b_and!173889)))

(declare-fun b_free!64103 () Bool)

(declare-fun b_next!64807 () Bool)

(assert (=> b!2216582 (= b_free!64103 (not b_next!64807))))

(declare-fun tp!690187 () Bool)

(declare-fun b_and!173891 () Bool)

(assert (=> b!2216582 (= tp!690187 b_and!173891)))

(declare-fun b!2216592 () Bool)

(declare-fun b_free!64105 () Bool)

(declare-fun b_next!64809 () Bool)

(assert (=> b!2216592 (= b_free!64105 (not b_next!64809))))

(declare-fun tp!690180 () Bool)

(declare-fun b_and!173893 () Bool)

(assert (=> b!2216592 (= tp!690180 b_and!173893)))

(declare-fun b_free!64107 () Bool)

(declare-fun b_next!64811 () Bool)

(assert (=> b!2216592 (= b_free!64107 (not b_next!64811))))

(declare-fun tp!690178 () Bool)

(declare-fun b_and!173895 () Bool)

(assert (=> b!2216592 (= tp!690178 b_and!173895)))

(declare-fun b!2216577 () Bool)

(declare-fun b_free!64109 () Bool)

(declare-fun b_next!64813 () Bool)

(assert (=> b!2216577 (= b_free!64109 (not b_next!64813))))

(declare-fun tp!690181 () Bool)

(declare-fun b_and!173897 () Bool)

(assert (=> b!2216577 (= tp!690181 b_and!173897)))

(declare-fun b_free!64111 () Bool)

(declare-fun b_next!64815 () Bool)

(assert (=> b!2216577 (= b_free!64111 (not b_next!64815))))

(declare-fun tp!690183 () Bool)

(declare-fun b_and!173899 () Bool)

(assert (=> b!2216577 (= tp!690183 b_and!173899)))

(declare-fun b!2216581 () Bool)

(declare-fun b_free!64113 () Bool)

(declare-fun b_next!64817 () Bool)

(assert (=> b!2216581 (= b_free!64113 (not b_next!64817))))

(declare-fun tp!690186 () Bool)

(declare-fun b_and!173901 () Bool)

(assert (=> b!2216581 (= tp!690186 b_and!173901)))

(declare-fun b_free!64115 () Bool)

(declare-fun b_next!64819 () Bool)

(assert (=> b!2216581 (= b_free!64115 (not b_next!64819))))

(declare-fun tp!690176 () Bool)

(declare-fun b_and!173903 () Bool)

(assert (=> b!2216581 (= tp!690176 b_and!173903)))

(declare-fun b!2216573 () Bool)

(declare-fun res!952031 () Bool)

(declare-fun e!1415308 () Bool)

(assert (=> b!2216573 (=> (not res!952031) (not e!1415308))))

(declare-fun i!1797 () Int)

(declare-datatypes ((List!26009 0))(
  ( (Nil!25925) (Cons!25925 (h!31326 (_ BitVec 16)) (t!199081 List!26009)) )
))
(declare-datatypes ((TokenValue!4315 0))(
  ( (FloatLiteralValue!8630 (text!30650 List!26009)) (TokenValueExt!4314 (__x!17083 Int)) (Broken!21575 (value!131808 List!26009)) (Object!4398) (End!4315) (Def!4315) (Underscore!4315) (Match!4315) (Else!4315) (Error!4315) (Case!4315) (If!4315) (Extends!4315) (Abstract!4315) (Class!4315) (Val!4315) (DelimiterValue!8630 (del!4375 List!26009)) (KeywordValue!4321 (value!131809 List!26009)) (CommentValue!8630 (value!131810 List!26009)) (WhitespaceValue!8630 (value!131811 List!26009)) (IndentationValue!4315 (value!131812 List!26009)) (String!28250) (Int32!4315) (Broken!21576 (value!131813 List!26009)) (Boolean!4316) (Unit!38927) (OperatorValue!4318 (op!4375 List!26009)) (IdentifierValue!8630 (value!131814 List!26009)) (IdentifierValue!8631 (value!131815 List!26009)) (WhitespaceValue!8631 (value!131816 List!26009)) (True!8630) (False!8630) (Broken!21577 (value!131817 List!26009)) (Broken!21578 (value!131818 List!26009)) (True!8631) (RightBrace!4315) (RightBracket!4315) (Colon!4315) (Null!4315) (Comma!4315) (LeftBracket!4315) (False!8631) (LeftBrace!4315) (ImaginaryLiteralValue!4315 (text!30651 List!26009)) (StringLiteralValue!12945 (value!131819 List!26009)) (EOFValue!4315 (value!131820 List!26009)) (IdentValue!4315 (value!131821 List!26009)) (DelimiterValue!8631 (value!131822 List!26009)) (DedentValue!4315 (value!131823 List!26009)) (NewLineValue!4315 (value!131824 List!26009)) (IntegerValue!12945 (value!131825 (_ BitVec 32)) (text!30652 List!26009)) (IntegerValue!12946 (value!131826 Int) (text!30653 List!26009)) (Times!4315) (Or!4315) (Equal!4315) (Minus!4315) (Broken!21579 (value!131827 List!26009)) (And!4315) (Div!4315) (LessEqual!4315) (Mod!4315) (Concat!10638) (Not!4315) (Plus!4315) (SpaceValue!4315 (value!131828 List!26009)) (IntegerValue!12947 (value!131829 Int) (text!30654 List!26009)) (StringLiteralValue!12946 (text!30655 List!26009)) (FloatLiteralValue!8631 (text!30656 List!26009)) (BytesLiteralValue!4315 (value!131830 List!26009)) (CommentValue!8631 (value!131831 List!26009)) (StringLiteralValue!12947 (value!131832 List!26009)) (ErrorTokenValue!4315 (msg!4376 List!26009)) )
))
(declare-datatypes ((C!12792 0))(
  ( (C!12793 (val!7408 Int)) )
))
(declare-datatypes ((List!26010 0))(
  ( (Nil!25926) (Cons!25926 (h!31327 C!12792) (t!199082 List!26010)) )
))
(declare-datatypes ((IArray!16967 0))(
  ( (IArray!16968 (innerList!8541 List!26010)) )
))
(declare-datatypes ((Conc!8481 0))(
  ( (Node!8481 (left!19930 Conc!8481) (right!20260 Conc!8481) (csize!17192 Int) (cheight!8692 Int)) (Leaf!12423 (xs!11423 IArray!16967) (csize!17193 Int)) (Empty!8481) )
))
(declare-datatypes ((BalanceConc!16680 0))(
  ( (BalanceConc!16681 (c!354001 Conc!8481)) )
))
(declare-datatypes ((Regex!6323 0))(
  ( (ElementMatch!6323 (c!354002 C!12792)) (Concat!10639 (regOne!13158 Regex!6323) (regTwo!13158 Regex!6323)) (EmptyExpr!6323) (Star!6323 (reg!6652 Regex!6323)) (EmptyLang!6323) (Union!6323 (regOne!13159 Regex!6323) (regTwo!13159 Regex!6323)) )
))
(declare-datatypes ((TokenValueInjection!8214 0))(
  ( (TokenValueInjection!8215 (toValue!5894 Int) (toChars!5753 Int)) )
))
(declare-datatypes ((String!28251 0))(
  ( (String!28252 (value!131833 String)) )
))
(declare-datatypes ((Rule!8158 0))(
  ( (Rule!8159 (regex!4179 Regex!6323) (tag!4669 String!28251) (isSeparator!4179 Bool) (transformation!4179 TokenValueInjection!8214)) )
))
(declare-datatypes ((Token!7840 0))(
  ( (Token!7841 (value!131834 TokenValue!4315) (rule!6479 Rule!8158) (size!20237 Int) (originalCharacters!4951 List!26010)) )
))
(declare-fun t2!61 () Token!7840)

(declare-datatypes ((List!26011 0))(
  ( (Nil!25927) (Cons!25927 (h!31328 Token!7840) (t!199083 List!26011)) )
))
(declare-fun l!6601 () List!26011)

(declare-fun apply!6425 (List!26011 Int) Token!7840)

(assert (=> b!2216573 (= res!952031 (= (apply!6425 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun e!1415296 () Bool)

(declare-fun tp!690184 () Bool)

(declare-fun e!1415301 () Bool)

(declare-fun b!2216574 () Bool)

(declare-fun inv!21 (TokenValue!4315) Bool)

(assert (=> b!2216574 (= e!1415296 (and (inv!21 (value!131834 t2!61)) e!1415301 tp!690184))))

(declare-fun b!2216575 () Bool)

(declare-fun res!952037 () Bool)

(assert (=> b!2216575 (=> (not res!952037) (not e!1415308))))

(declare-fun t1!61 () Token!7840)

(assert (=> b!2216575 (= res!952037 (= (apply!6425 l!6601 i!1797) t1!61))))

(declare-fun b!2216576 () Bool)

(declare-fun res!952033 () Bool)

(assert (=> b!2216576 (=> (not res!952033) (not e!1415308))))

(declare-fun size!20238 (List!26011) Int)

(assert (=> b!2216576 (= res!952033 (< (+ 1 i!1797) (size!20238 l!6601)))))

(declare-fun e!1415309 () Bool)

(assert (=> b!2216577 (= e!1415309 (and tp!690181 tp!690183))))

(declare-fun res!952032 () Bool)

(assert (=> start!215952 (=> (not res!952032) (not e!1415308))))

(declare-datatypes ((LexerInterface!3776 0))(
  ( (LexerInterfaceExt!3773 (__x!17084 Int)) (Lexer!3774) )
))
(declare-fun thiss!27908 () LexerInterface!3776)

(get-info :version)

(assert (=> start!215952 (= res!952032 ((_ is Lexer!3774) thiss!27908))))

(assert (=> start!215952 e!1415308))

(assert (=> start!215952 true))

(declare-fun e!1415297 () Bool)

(assert (=> start!215952 e!1415297))

(declare-fun inv!35136 (Token!7840) Bool)

(assert (=> start!215952 (and (inv!35136 t2!61) e!1415296)))

(assert (=> start!215952 tp!690175))

(declare-fun e!1415307 () Bool)

(assert (=> start!215952 e!1415307))

(declare-fun e!1415305 () Bool)

(assert (=> start!215952 (and (inv!35136 t1!61) e!1415305)))

(declare-fun b!2216578 () Bool)

(declare-fun res!952036 () Bool)

(assert (=> b!2216578 (=> (not res!952036) (not e!1415308))))

(assert (=> b!2216578 (= res!952036 (>= i!1797 0))))

(declare-fun e!1415300 () Bool)

(declare-fun tp!690173 () Bool)

(declare-fun b!2216579 () Bool)

(assert (=> b!2216579 (= e!1415307 (and (inv!35136 (h!31328 l!6601)) e!1415300 tp!690173))))

(declare-fun tp!690179 () Bool)

(declare-fun e!1415293 () Bool)

(declare-datatypes ((List!26012 0))(
  ( (Nil!25928) (Cons!25928 (h!31329 Rule!8158) (t!199084 List!26012)) )
))
(declare-fun rules!4462 () List!26012)

(declare-fun b!2216580 () Bool)

(declare-fun inv!35133 (String!28251) Bool)

(declare-fun inv!35137 (TokenValueInjection!8214) Bool)

(assert (=> b!2216580 (= e!1415293 (and tp!690179 (inv!35133 (tag!4669 (h!31329 rules!4462))) (inv!35137 (transformation!4179 (h!31329 rules!4462))) e!1415309))))

(declare-fun e!1415295 () Bool)

(assert (=> b!2216581 (= e!1415295 (and tp!690186 tp!690176))))

(declare-fun e!1415303 () Bool)

(assert (=> b!2216582 (= e!1415303 (and tp!690190 tp!690187))))

(declare-fun b!2216583 () Bool)

(declare-fun res!952034 () Bool)

(assert (=> b!2216583 (=> (not res!952034) (not e!1415308))))

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!46 (LexerInterface!3776 List!26011 List!26012 Int) Bool)

(assert (=> b!2216583 (= res!952034 (tokensListTwoByTwoPredicateList!46 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2216584 () Bool)

(declare-fun tp!690188 () Bool)

(assert (=> b!2216584 (= e!1415301 (and tp!690188 (inv!35133 (tag!4669 (rule!6479 t2!61))) (inv!35137 (transformation!4179 (rule!6479 t2!61))) e!1415295))))

(declare-fun b!2216585 () Bool)

(declare-fun tp!690189 () Bool)

(assert (=> b!2216585 (= e!1415297 (and e!1415293 tp!690189))))

(declare-fun e!1415304 () Bool)

(declare-fun tp!690182 () Bool)

(declare-fun e!1415313 () Bool)

(declare-fun b!2216586 () Bool)

(assert (=> b!2216586 (= e!1415313 (and tp!690182 (inv!35133 (tag!4669 (rule!6479 (h!31328 l!6601)))) (inv!35137 (transformation!4179 (rule!6479 (h!31328 l!6601)))) e!1415304))))

(declare-fun b!2216587 () Bool)

(declare-fun tail!3220 (List!26011) List!26011)

(assert (=> b!2216587 (= e!1415308 (not (tokensListTwoByTwoPredicateList!46 thiss!27908 (tail!3220 l!6601) rules!4462 p!3128)))))

(declare-fun b!2216588 () Bool)

(declare-fun tp!690177 () Bool)

(assert (=> b!2216588 (= e!1415300 (and (inv!21 (value!131834 (h!31328 l!6601))) e!1415313 tp!690177))))

(declare-fun b!2216589 () Bool)

(declare-fun res!952035 () Bool)

(assert (=> b!2216589 (=> (not res!952035) (not e!1415308))))

(assert (=> b!2216589 (= res!952035 (not (= i!1797 0)))))

(declare-fun e!1415302 () Bool)

(declare-fun b!2216590 () Bool)

(declare-fun tp!690185 () Bool)

(assert (=> b!2216590 (= e!1415305 (and (inv!21 (value!131834 t1!61)) e!1415302 tp!690185))))

(declare-fun b!2216591 () Bool)

(declare-fun tp!690174 () Bool)

(assert (=> b!2216591 (= e!1415302 (and tp!690174 (inv!35133 (tag!4669 (rule!6479 t1!61))) (inv!35137 (transformation!4179 (rule!6479 t1!61))) e!1415303))))

(assert (=> b!2216592 (= e!1415304 (and tp!690180 tp!690178))))

(assert (= (and start!215952 res!952032) b!2216583))

(assert (= (and b!2216583 res!952034) b!2216578))

(assert (= (and b!2216578 res!952036) b!2216576))

(assert (= (and b!2216576 res!952033) b!2216575))

(assert (= (and b!2216575 res!952037) b!2216573))

(assert (= (and b!2216573 res!952031) b!2216589))

(assert (= (and b!2216589 res!952035) b!2216587))

(assert (= b!2216580 b!2216577))

(assert (= b!2216585 b!2216580))

(assert (= (and start!215952 ((_ is Cons!25928) rules!4462)) b!2216585))

(assert (= b!2216584 b!2216581))

(assert (= b!2216574 b!2216584))

(assert (= start!215952 b!2216574))

(assert (= b!2216586 b!2216592))

(assert (= b!2216588 b!2216586))

(assert (= b!2216579 b!2216588))

(assert (= (and start!215952 ((_ is Cons!25927) l!6601)) b!2216579))

(assert (= b!2216591 b!2216582))

(assert (= b!2216590 b!2216591))

(assert (= start!215952 b!2216590))

(declare-fun m!2657823 () Bool)

(assert (=> b!2216576 m!2657823))

(declare-fun m!2657825 () Bool)

(assert (=> b!2216583 m!2657825))

(declare-fun m!2657827 () Bool)

(assert (=> b!2216574 m!2657827))

(declare-fun m!2657829 () Bool)

(assert (=> b!2216587 m!2657829))

(assert (=> b!2216587 m!2657829))

(declare-fun m!2657831 () Bool)

(assert (=> b!2216587 m!2657831))

(declare-fun m!2657833 () Bool)

(assert (=> b!2216584 m!2657833))

(declare-fun m!2657835 () Bool)

(assert (=> b!2216584 m!2657835))

(declare-fun m!2657837 () Bool)

(assert (=> start!215952 m!2657837))

(declare-fun m!2657839 () Bool)

(assert (=> start!215952 m!2657839))

(declare-fun m!2657841 () Bool)

(assert (=> b!2216573 m!2657841))

(declare-fun m!2657843 () Bool)

(assert (=> b!2216580 m!2657843))

(declare-fun m!2657845 () Bool)

(assert (=> b!2216580 m!2657845))

(declare-fun m!2657847 () Bool)

(assert (=> b!2216586 m!2657847))

(declare-fun m!2657849 () Bool)

(assert (=> b!2216586 m!2657849))

(declare-fun m!2657851 () Bool)

(assert (=> b!2216591 m!2657851))

(declare-fun m!2657853 () Bool)

(assert (=> b!2216591 m!2657853))

(declare-fun m!2657855 () Bool)

(assert (=> b!2216588 m!2657855))

(declare-fun m!2657857 () Bool)

(assert (=> b!2216590 m!2657857))

(declare-fun m!2657859 () Bool)

(assert (=> b!2216575 m!2657859))

(declare-fun m!2657861 () Bool)

(assert (=> b!2216579 m!2657861))

(check-sat (not b_next!64803) (not b_next!64817) (not b!2216591) (not b!2216584) (not b_next!64807) (not b!2216585) b_and!173893 (not b!2216580) (not b!2216575) (not start!215952) (not b!2216573) b_and!173901 (not b!2216583) (not b!2216586) (not b_next!64819) b_and!173895 (not b!2216587) (not b!2216588) (not b!2216590) (not b_next!64805) b_and!173897 b_and!173887 (not b!2216576) (not b_next!64815) (not b_next!64809) b_and!173903 (not b_next!64813) b_and!173899 b_and!173891 (not b!2216574) (not b!2216579) b_and!173889 (not b_next!64811))
(check-sat (not b_next!64803) b_and!173901 (not b_next!64805) (not b_next!64817) (not b_next!64807) b_and!173891 b_and!173893 (not b_next!64819) b_and!173895 b_and!173897 b_and!173887 (not b_next!64815) (not b_next!64809) b_and!173903 (not b_next!64813) b_and!173899 b_and!173889 (not b_next!64811))
(get-model)

(declare-fun d!662706 () Bool)

(assert (=> d!662706 (= (inv!35133 (tag!4669 (rule!6479 t2!61))) (= (mod (str.len (value!131833 (tag!4669 (rule!6479 t2!61)))) 2) 0))))

(assert (=> b!2216584 d!662706))

(declare-fun d!662708 () Bool)

(declare-fun res!952046 () Bool)

(declare-fun e!1415316 () Bool)

(assert (=> d!662708 (=> (not res!952046) (not e!1415316))))

(declare-fun semiInverseModEq!1669 (Int Int) Bool)

(assert (=> d!662708 (= res!952046 (semiInverseModEq!1669 (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toValue!5894 (transformation!4179 (rule!6479 t2!61)))))))

(assert (=> d!662708 (= (inv!35137 (transformation!4179 (rule!6479 t2!61))) e!1415316)))

(declare-fun b!2216595 () Bool)

(declare-fun equivClasses!1596 (Int Int) Bool)

(assert (=> b!2216595 (= e!1415316 (equivClasses!1596 (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toValue!5894 (transformation!4179 (rule!6479 t2!61)))))))

(assert (= (and d!662708 res!952046) b!2216595))

(declare-fun m!2657863 () Bool)

(assert (=> d!662708 m!2657863))

(declare-fun m!2657865 () Bool)

(assert (=> b!2216595 m!2657865))

(assert (=> b!2216584 d!662708))

(declare-fun d!662710 () Bool)

(declare-fun lt!826828 () Token!7840)

(declare-fun contains!4302 (List!26011 Token!7840) Bool)

(assert (=> d!662710 (contains!4302 l!6601 lt!826828)))

(declare-fun e!1415322 () Token!7840)

(assert (=> d!662710 (= lt!826828 e!1415322)))

(declare-fun c!354005 () Bool)

(assert (=> d!662710 (= c!354005 (= (+ 1 i!1797) 0))))

(declare-fun e!1415321 () Bool)

(assert (=> d!662710 e!1415321))

(declare-fun res!952051 () Bool)

(assert (=> d!662710 (=> (not res!952051) (not e!1415321))))

(assert (=> d!662710 (= res!952051 (<= 0 (+ 1 i!1797)))))

(assert (=> d!662710 (= (apply!6425 l!6601 (+ 1 i!1797)) lt!826828)))

(declare-fun b!2216602 () Bool)

(assert (=> b!2216602 (= e!1415321 (< (+ 1 i!1797) (size!20238 l!6601)))))

(declare-fun b!2216603 () Bool)

(declare-fun head!4734 (List!26011) Token!7840)

(assert (=> b!2216603 (= e!1415322 (head!4734 l!6601))))

(declare-fun b!2216604 () Bool)

(assert (=> b!2216604 (= e!1415322 (apply!6425 (tail!3220 l!6601) (- (+ 1 i!1797) 1)))))

(assert (= (and d!662710 res!952051) b!2216602))

(assert (= (and d!662710 c!354005) b!2216603))

(assert (= (and d!662710 (not c!354005)) b!2216604))

(declare-fun m!2657867 () Bool)

(assert (=> d!662710 m!2657867))

(assert (=> b!2216602 m!2657823))

(declare-fun m!2657869 () Bool)

(assert (=> b!2216603 m!2657869))

(assert (=> b!2216604 m!2657829))

(assert (=> b!2216604 m!2657829))

(declare-fun m!2657871 () Bool)

(assert (=> b!2216604 m!2657871))

(assert (=> b!2216573 d!662710))

(declare-fun d!662716 () Bool)

(declare-fun res!952058 () Bool)

(declare-fun e!1415329 () Bool)

(assert (=> d!662716 (=> res!952058 e!1415329)))

(assert (=> d!662716 (= res!952058 (or (not ((_ is Cons!25927) l!6601)) (not ((_ is Cons!25927) (t!199083 l!6601)))))))

(assert (=> d!662716 (= (tokensListTwoByTwoPredicateList!46 thiss!27908 l!6601 rules!4462 p!3128) e!1415329)))

(declare-fun b!2216611 () Bool)

(declare-fun e!1415330 () Bool)

(assert (=> b!2216611 (= e!1415329 e!1415330)))

(declare-fun res!952059 () Bool)

(assert (=> b!2216611 (=> (not res!952059) (not e!1415330))))

(declare-fun dynLambda!11478 (Int Token!7840 Token!7840 List!26012) Bool)

(assert (=> b!2216611 (= res!952059 (dynLambda!11478 p!3128 (h!31328 l!6601) (h!31328 (t!199083 l!6601)) rules!4462))))

(declare-fun b!2216612 () Bool)

(assert (=> b!2216612 (= e!1415330 (tokensListTwoByTwoPredicateList!46 thiss!27908 (Cons!25927 (h!31328 (t!199083 l!6601)) (t!199083 (t!199083 l!6601))) rules!4462 p!3128))))

(assert (= (and d!662716 (not res!952058)) b!2216611))

(assert (= (and b!2216611 res!952059) b!2216612))

(declare-fun b_lambda!71389 () Bool)

(assert (=> (not b_lambda!71389) (not b!2216611)))

(declare-fun t!199086 () Bool)

(declare-fun tb!132593 () Bool)

(assert (=> (and start!215952 (= p!3128 p!3128) t!199086) tb!132593))

(declare-fun result!160850 () Bool)

(assert (=> tb!132593 (= result!160850 true)))

(assert (=> b!2216611 t!199086))

(declare-fun b_and!173905 () Bool)

(assert (= b_and!173887 (and (=> t!199086 result!160850) b_and!173905)))

(declare-fun m!2657877 () Bool)

(assert (=> b!2216611 m!2657877))

(declare-fun m!2657879 () Bool)

(assert (=> b!2216612 m!2657879))

(assert (=> b!2216583 d!662716))

(declare-fun d!662720 () Bool)

(declare-fun lt!826831 () Int)

(assert (=> d!662720 (>= lt!826831 0)))

(declare-fun e!1415338 () Int)

(assert (=> d!662720 (= lt!826831 e!1415338)))

(declare-fun c!354012 () Bool)

(assert (=> d!662720 (= c!354012 ((_ is Nil!25927) l!6601))))

(assert (=> d!662720 (= (size!20238 l!6601) lt!826831)))

(declare-fun b!2216626 () Bool)

(assert (=> b!2216626 (= e!1415338 0)))

(declare-fun b!2216627 () Bool)

(assert (=> b!2216627 (= e!1415338 (+ 1 (size!20238 (t!199083 l!6601))))))

(assert (= (and d!662720 c!354012) b!2216626))

(assert (= (and d!662720 (not c!354012)) b!2216627))

(declare-fun m!2657881 () Bool)

(assert (=> b!2216627 m!2657881))

(assert (=> b!2216576 d!662720))

(declare-fun d!662722 () Bool)

(declare-fun res!952063 () Bool)

(declare-fun e!1415341 () Bool)

(assert (=> d!662722 (=> res!952063 e!1415341)))

(assert (=> d!662722 (= res!952063 (or (not ((_ is Cons!25927) (tail!3220 l!6601))) (not ((_ is Cons!25927) (t!199083 (tail!3220 l!6601))))))))

(assert (=> d!662722 (= (tokensListTwoByTwoPredicateList!46 thiss!27908 (tail!3220 l!6601) rules!4462 p!3128) e!1415341)))

(declare-fun b!2216630 () Bool)

(declare-fun e!1415342 () Bool)

(assert (=> b!2216630 (= e!1415341 e!1415342)))

(declare-fun res!952064 () Bool)

(assert (=> b!2216630 (=> (not res!952064) (not e!1415342))))

(assert (=> b!2216630 (= res!952064 (dynLambda!11478 p!3128 (h!31328 (tail!3220 l!6601)) (h!31328 (t!199083 (tail!3220 l!6601))) rules!4462))))

(declare-fun b!2216631 () Bool)

(assert (=> b!2216631 (= e!1415342 (tokensListTwoByTwoPredicateList!46 thiss!27908 (Cons!25927 (h!31328 (t!199083 (tail!3220 l!6601))) (t!199083 (t!199083 (tail!3220 l!6601)))) rules!4462 p!3128))))

(assert (= (and d!662722 (not res!952063)) b!2216630))

(assert (= (and b!2216630 res!952064) b!2216631))

(declare-fun b_lambda!71391 () Bool)

(assert (=> (not b_lambda!71391) (not b!2216630)))

(declare-fun t!199088 () Bool)

(declare-fun tb!132595 () Bool)

(assert (=> (and start!215952 (= p!3128 p!3128) t!199088) tb!132595))

(declare-fun result!160852 () Bool)

(assert (=> tb!132595 (= result!160852 true)))

(assert (=> b!2216630 t!199088))

(declare-fun b_and!173907 () Bool)

(assert (= b_and!173905 (and (=> t!199088 result!160852) b_and!173907)))

(declare-fun m!2657883 () Bool)

(assert (=> b!2216630 m!2657883))

(declare-fun m!2657885 () Bool)

(assert (=> b!2216631 m!2657885))

(assert (=> b!2216587 d!662722))

(declare-fun d!662724 () Bool)

(assert (=> d!662724 (= (tail!3220 l!6601) (t!199083 l!6601))))

(assert (=> b!2216587 d!662724))

(declare-fun d!662726 () Bool)

(declare-fun res!952071 () Bool)

(declare-fun e!1415349 () Bool)

(assert (=> d!662726 (=> (not res!952071) (not e!1415349))))

(declare-fun isEmpty!14833 (List!26010) Bool)

(assert (=> d!662726 (= res!952071 (not (isEmpty!14833 (originalCharacters!4951 t2!61))))))

(assert (=> d!662726 (= (inv!35136 t2!61) e!1415349)))

(declare-fun b!2216642 () Bool)

(declare-fun res!952072 () Bool)

(assert (=> b!2216642 (=> (not res!952072) (not e!1415349))))

(declare-fun list!10059 (BalanceConc!16680) List!26010)

(declare-fun dynLambda!11479 (Int TokenValue!4315) BalanceConc!16680)

(assert (=> b!2216642 (= res!952072 (= (originalCharacters!4951 t2!61) (list!10059 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (value!131834 t2!61)))))))

(declare-fun b!2216643 () Bool)

(declare-fun size!20239 (List!26010) Int)

(assert (=> b!2216643 (= e!1415349 (= (size!20237 t2!61) (size!20239 (originalCharacters!4951 t2!61))))))

(assert (= (and d!662726 res!952071) b!2216642))

(assert (= (and b!2216642 res!952072) b!2216643))

(declare-fun b_lambda!71393 () Bool)

(assert (=> (not b_lambda!71393) (not b!2216642)))

(declare-fun tb!132597 () Bool)

(declare-fun t!199090 () Bool)

(assert (=> (and b!2216582 (= (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199090) tb!132597))

(declare-fun b!2216648 () Bool)

(declare-fun e!1415352 () Bool)

(declare-fun tp!690193 () Bool)

(declare-fun inv!35138 (Conc!8481) Bool)

(assert (=> b!2216648 (= e!1415352 (and (inv!35138 (c!354001 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (value!131834 t2!61)))) tp!690193))))

(declare-fun result!160854 () Bool)

(declare-fun inv!35139 (BalanceConc!16680) Bool)

(assert (=> tb!132597 (= result!160854 (and (inv!35139 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (value!131834 t2!61))) e!1415352))))

(assert (= tb!132597 b!2216648))

(declare-fun m!2657897 () Bool)

(assert (=> b!2216648 m!2657897))

(declare-fun m!2657899 () Bool)

(assert (=> tb!132597 m!2657899))

(assert (=> b!2216642 t!199090))

(declare-fun b_and!173909 () Bool)

(assert (= b_and!173891 (and (=> t!199090 result!160854) b_and!173909)))

(declare-fun t!199092 () Bool)

(declare-fun tb!132599 () Bool)

(assert (=> (and b!2216592 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199092) tb!132599))

(declare-fun result!160858 () Bool)

(assert (= result!160858 result!160854))

(assert (=> b!2216642 t!199092))

(declare-fun b_and!173911 () Bool)

(assert (= b_and!173895 (and (=> t!199092 result!160858) b_and!173911)))

(declare-fun tb!132601 () Bool)

(declare-fun t!199094 () Bool)

(assert (=> (and b!2216577 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199094) tb!132601))

(declare-fun result!160860 () Bool)

(assert (= result!160860 result!160854))

(assert (=> b!2216642 t!199094))

(declare-fun b_and!173913 () Bool)

(assert (= b_and!173899 (and (=> t!199094 result!160860) b_and!173913)))

(declare-fun t!199096 () Bool)

(declare-fun tb!132603 () Bool)

(assert (=> (and b!2216581 (= (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199096) tb!132603))

(declare-fun result!160862 () Bool)

(assert (= result!160862 result!160854))

(assert (=> b!2216642 t!199096))

(declare-fun b_and!173915 () Bool)

(assert (= b_and!173903 (and (=> t!199096 result!160862) b_and!173915)))

(declare-fun m!2657901 () Bool)

(assert (=> d!662726 m!2657901))

(declare-fun m!2657903 () Bool)

(assert (=> b!2216642 m!2657903))

(assert (=> b!2216642 m!2657903))

(declare-fun m!2657905 () Bool)

(assert (=> b!2216642 m!2657905))

(declare-fun m!2657907 () Bool)

(assert (=> b!2216643 m!2657907))

(assert (=> start!215952 d!662726))

(declare-fun d!662734 () Bool)

(declare-fun res!952075 () Bool)

(declare-fun e!1415357 () Bool)

(assert (=> d!662734 (=> (not res!952075) (not e!1415357))))

(assert (=> d!662734 (= res!952075 (not (isEmpty!14833 (originalCharacters!4951 t1!61))))))

(assert (=> d!662734 (= (inv!35136 t1!61) e!1415357)))

(declare-fun b!2216655 () Bool)

(declare-fun res!952076 () Bool)

(assert (=> b!2216655 (=> (not res!952076) (not e!1415357))))

(assert (=> b!2216655 (= res!952076 (= (originalCharacters!4951 t1!61) (list!10059 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (value!131834 t1!61)))))))

(declare-fun b!2216656 () Bool)

(assert (=> b!2216656 (= e!1415357 (= (size!20237 t1!61) (size!20239 (originalCharacters!4951 t1!61))))))

(assert (= (and d!662734 res!952075) b!2216655))

(assert (= (and b!2216655 res!952076) b!2216656))

(declare-fun b_lambda!71395 () Bool)

(assert (=> (not b_lambda!71395) (not b!2216655)))

(declare-fun t!199098 () Bool)

(declare-fun tb!132605 () Bool)

(assert (=> (and b!2216582 (= (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199098) tb!132605))

(declare-fun b!2216657 () Bool)

(declare-fun e!1415358 () Bool)

(declare-fun tp!690194 () Bool)

(assert (=> b!2216657 (= e!1415358 (and (inv!35138 (c!354001 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (value!131834 t1!61)))) tp!690194))))

(declare-fun result!160864 () Bool)

(assert (=> tb!132605 (= result!160864 (and (inv!35139 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (value!131834 t1!61))) e!1415358))))

(assert (= tb!132605 b!2216657))

(declare-fun m!2657909 () Bool)

(assert (=> b!2216657 m!2657909))

(declare-fun m!2657911 () Bool)

(assert (=> tb!132605 m!2657911))

(assert (=> b!2216655 t!199098))

(declare-fun b_and!173917 () Bool)

(assert (= b_and!173909 (and (=> t!199098 result!160864) b_and!173917)))

(declare-fun t!199100 () Bool)

(declare-fun tb!132607 () Bool)

(assert (=> (and b!2216592 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199100) tb!132607))

(declare-fun result!160866 () Bool)

(assert (= result!160866 result!160864))

(assert (=> b!2216655 t!199100))

(declare-fun b_and!173919 () Bool)

(assert (= b_and!173911 (and (=> t!199100 result!160866) b_and!173919)))

(declare-fun tb!132609 () Bool)

(declare-fun t!199102 () Bool)

(assert (=> (and b!2216577 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199102) tb!132609))

(declare-fun result!160868 () Bool)

(assert (= result!160868 result!160864))

(assert (=> b!2216655 t!199102))

(declare-fun b_and!173921 () Bool)

(assert (= b_and!173913 (and (=> t!199102 result!160868) b_and!173921)))

(declare-fun t!199104 () Bool)

(declare-fun tb!132611 () Bool)

(assert (=> (and b!2216581 (= (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199104) tb!132611))

(declare-fun result!160870 () Bool)

(assert (= result!160870 result!160864))

(assert (=> b!2216655 t!199104))

(declare-fun b_and!173923 () Bool)

(assert (= b_and!173915 (and (=> t!199104 result!160870) b_and!173923)))

(declare-fun m!2657913 () Bool)

(assert (=> d!662734 m!2657913))

(declare-fun m!2657915 () Bool)

(assert (=> b!2216655 m!2657915))

(assert (=> b!2216655 m!2657915))

(declare-fun m!2657917 () Bool)

(assert (=> b!2216655 m!2657917))

(declare-fun m!2657919 () Bool)

(assert (=> b!2216656 m!2657919))

(assert (=> start!215952 d!662734))

(declare-fun d!662736 () Bool)

(assert (=> d!662736 (= (inv!35133 (tag!4669 (rule!6479 (h!31328 l!6601)))) (= (mod (str.len (value!131833 (tag!4669 (rule!6479 (h!31328 l!6601))))) 2) 0))))

(assert (=> b!2216586 d!662736))

(declare-fun d!662738 () Bool)

(declare-fun res!952077 () Bool)

(declare-fun e!1415359 () Bool)

(assert (=> d!662738 (=> (not res!952077) (not e!1415359))))

(assert (=> d!662738 (= res!952077 (semiInverseModEq!1669 (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toValue!5894 (transformation!4179 (rule!6479 (h!31328 l!6601))))))))

(assert (=> d!662738 (= (inv!35137 (transformation!4179 (rule!6479 (h!31328 l!6601)))) e!1415359)))

(declare-fun b!2216658 () Bool)

(assert (=> b!2216658 (= e!1415359 (equivClasses!1596 (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toValue!5894 (transformation!4179 (rule!6479 (h!31328 l!6601))))))))

(assert (= (and d!662738 res!952077) b!2216658))

(declare-fun m!2657921 () Bool)

(assert (=> d!662738 m!2657921))

(declare-fun m!2657923 () Bool)

(assert (=> b!2216658 m!2657923))

(assert (=> b!2216586 d!662738))

(declare-fun d!662740 () Bool)

(declare-fun lt!826835 () Token!7840)

(assert (=> d!662740 (contains!4302 l!6601 lt!826835)))

(declare-fun e!1415363 () Token!7840)

(assert (=> d!662740 (= lt!826835 e!1415363)))

(declare-fun c!354018 () Bool)

(assert (=> d!662740 (= c!354018 (= i!1797 0))))

(declare-fun e!1415362 () Bool)

(assert (=> d!662740 e!1415362))

(declare-fun res!952079 () Bool)

(assert (=> d!662740 (=> (not res!952079) (not e!1415362))))

(assert (=> d!662740 (= res!952079 (<= 0 i!1797))))

(assert (=> d!662740 (= (apply!6425 l!6601 i!1797) lt!826835)))

(declare-fun b!2216662 () Bool)

(assert (=> b!2216662 (= e!1415362 (< i!1797 (size!20238 l!6601)))))

(declare-fun b!2216663 () Bool)

(assert (=> b!2216663 (= e!1415363 (head!4734 l!6601))))

(declare-fun b!2216664 () Bool)

(assert (=> b!2216664 (= e!1415363 (apply!6425 (tail!3220 l!6601) (- i!1797 1)))))

(assert (= (and d!662740 res!952079) b!2216662))

(assert (= (and d!662740 c!354018) b!2216663))

(assert (= (and d!662740 (not c!354018)) b!2216664))

(declare-fun m!2657925 () Bool)

(assert (=> d!662740 m!2657925))

(assert (=> b!2216662 m!2657823))

(assert (=> b!2216663 m!2657869))

(assert (=> b!2216664 m!2657829))

(assert (=> b!2216664 m!2657829))

(declare-fun m!2657929 () Bool)

(assert (=> b!2216664 m!2657929))

(assert (=> b!2216575 d!662740))

(declare-fun b!2216680 () Bool)

(declare-fun e!1415374 () Bool)

(declare-fun inv!16 (TokenValue!4315) Bool)

(assert (=> b!2216680 (= e!1415374 (inv!16 (value!131834 t2!61)))))

(declare-fun b!2216681 () Bool)

(declare-fun res!952087 () Bool)

(declare-fun e!1415375 () Bool)

(assert (=> b!2216681 (=> res!952087 e!1415375)))

(assert (=> b!2216681 (= res!952087 (not ((_ is IntegerValue!12947) (value!131834 t2!61))))))

(declare-fun e!1415373 () Bool)

(assert (=> b!2216681 (= e!1415373 e!1415375)))

(declare-fun b!2216682 () Bool)

(assert (=> b!2216682 (= e!1415374 e!1415373)))

(declare-fun c!354023 () Bool)

(assert (=> b!2216682 (= c!354023 ((_ is IntegerValue!12946) (value!131834 t2!61)))))

(declare-fun b!2216683 () Bool)

(declare-fun inv!15 (TokenValue!4315) Bool)

(assert (=> b!2216683 (= e!1415375 (inv!15 (value!131834 t2!61)))))

(declare-fun d!662742 () Bool)

(declare-fun c!354024 () Bool)

(assert (=> d!662742 (= c!354024 ((_ is IntegerValue!12945) (value!131834 t2!61)))))

(assert (=> d!662742 (= (inv!21 (value!131834 t2!61)) e!1415374)))

(declare-fun b!2216684 () Bool)

(declare-fun inv!17 (TokenValue!4315) Bool)

(assert (=> b!2216684 (= e!1415373 (inv!17 (value!131834 t2!61)))))

(assert (= (and d!662742 c!354024) b!2216680))

(assert (= (and d!662742 (not c!354024)) b!2216682))

(assert (= (and b!2216682 c!354023) b!2216684))

(assert (= (and b!2216682 (not c!354023)) b!2216681))

(assert (= (and b!2216681 (not res!952087)) b!2216683))

(declare-fun m!2657939 () Bool)

(assert (=> b!2216680 m!2657939))

(declare-fun m!2657941 () Bool)

(assert (=> b!2216683 m!2657941))

(declare-fun m!2657943 () Bool)

(assert (=> b!2216684 m!2657943))

(assert (=> b!2216574 d!662742))

(declare-fun d!662750 () Bool)

(declare-fun res!952088 () Bool)

(declare-fun e!1415376 () Bool)

(assert (=> d!662750 (=> (not res!952088) (not e!1415376))))

(assert (=> d!662750 (= res!952088 (not (isEmpty!14833 (originalCharacters!4951 (h!31328 l!6601)))))))

(assert (=> d!662750 (= (inv!35136 (h!31328 l!6601)) e!1415376)))

(declare-fun b!2216685 () Bool)

(declare-fun res!952089 () Bool)

(assert (=> b!2216685 (=> (not res!952089) (not e!1415376))))

(assert (=> b!2216685 (= res!952089 (= (originalCharacters!4951 (h!31328 l!6601)) (list!10059 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (value!131834 (h!31328 l!6601))))))))

(declare-fun b!2216686 () Bool)

(assert (=> b!2216686 (= e!1415376 (= (size!20237 (h!31328 l!6601)) (size!20239 (originalCharacters!4951 (h!31328 l!6601)))))))

(assert (= (and d!662750 res!952088) b!2216685))

(assert (= (and b!2216685 res!952089) b!2216686))

(declare-fun b_lambda!71397 () Bool)

(assert (=> (not b_lambda!71397) (not b!2216685)))

(declare-fun tb!132613 () Bool)

(declare-fun t!199106 () Bool)

(assert (=> (and b!2216582 (= (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199106) tb!132613))

(declare-fun b!2216689 () Bool)

(declare-fun e!1415378 () Bool)

(declare-fun tp!690195 () Bool)

(assert (=> b!2216689 (= e!1415378 (and (inv!35138 (c!354001 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (value!131834 (h!31328 l!6601))))) tp!690195))))

(declare-fun result!160872 () Bool)

(assert (=> tb!132613 (= result!160872 (and (inv!35139 (dynLambda!11479 (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (value!131834 (h!31328 l!6601)))) e!1415378))))

(assert (= tb!132613 b!2216689))

(declare-fun m!2657945 () Bool)

(assert (=> b!2216689 m!2657945))

(declare-fun m!2657947 () Bool)

(assert (=> tb!132613 m!2657947))

(assert (=> b!2216685 t!199106))

(declare-fun b_and!173925 () Bool)

(assert (= b_and!173917 (and (=> t!199106 result!160872) b_and!173925)))

(declare-fun t!199108 () Bool)

(declare-fun tb!132615 () Bool)

(assert (=> (and b!2216592 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199108) tb!132615))

(declare-fun result!160874 () Bool)

(assert (= result!160874 result!160872))

(assert (=> b!2216685 t!199108))

(declare-fun b_and!173927 () Bool)

(assert (= b_and!173919 (and (=> t!199108 result!160874) b_and!173927)))

(declare-fun t!199110 () Bool)

(declare-fun tb!132617 () Bool)

(assert (=> (and b!2216577 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199110) tb!132617))

(declare-fun result!160876 () Bool)

(assert (= result!160876 result!160872))

(assert (=> b!2216685 t!199110))

(declare-fun b_and!173929 () Bool)

(assert (= b_and!173921 (and (=> t!199110 result!160876) b_and!173929)))

(declare-fun tb!132619 () Bool)

(declare-fun t!199112 () Bool)

(assert (=> (and b!2216581 (= (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199112) tb!132619))

(declare-fun result!160878 () Bool)

(assert (= result!160878 result!160872))

(assert (=> b!2216685 t!199112))

(declare-fun b_and!173931 () Bool)

(assert (= b_and!173923 (and (=> t!199112 result!160878) b_and!173931)))

(declare-fun m!2657949 () Bool)

(assert (=> d!662750 m!2657949))

(declare-fun m!2657951 () Bool)

(assert (=> b!2216685 m!2657951))

(assert (=> b!2216685 m!2657951))

(declare-fun m!2657953 () Bool)

(assert (=> b!2216685 m!2657953))

(declare-fun m!2657955 () Bool)

(assert (=> b!2216686 m!2657955))

(assert (=> b!2216579 d!662750))

(declare-fun b!2216694 () Bool)

(declare-fun e!1415382 () Bool)

(assert (=> b!2216694 (= e!1415382 (inv!16 (value!131834 (h!31328 l!6601))))))

(declare-fun b!2216695 () Bool)

(declare-fun res!952092 () Bool)

(declare-fun e!1415383 () Bool)

(assert (=> b!2216695 (=> res!952092 e!1415383)))

(assert (=> b!2216695 (= res!952092 (not ((_ is IntegerValue!12947) (value!131834 (h!31328 l!6601)))))))

(declare-fun e!1415381 () Bool)

(assert (=> b!2216695 (= e!1415381 e!1415383)))

(declare-fun b!2216696 () Bool)

(assert (=> b!2216696 (= e!1415382 e!1415381)))

(declare-fun c!354025 () Bool)

(assert (=> b!2216696 (= c!354025 ((_ is IntegerValue!12946) (value!131834 (h!31328 l!6601))))))

(declare-fun b!2216697 () Bool)

(assert (=> b!2216697 (= e!1415383 (inv!15 (value!131834 (h!31328 l!6601))))))

(declare-fun d!662752 () Bool)

(declare-fun c!354026 () Bool)

(assert (=> d!662752 (= c!354026 ((_ is IntegerValue!12945) (value!131834 (h!31328 l!6601))))))

(assert (=> d!662752 (= (inv!21 (value!131834 (h!31328 l!6601))) e!1415382)))

(declare-fun b!2216698 () Bool)

(assert (=> b!2216698 (= e!1415381 (inv!17 (value!131834 (h!31328 l!6601))))))

(assert (= (and d!662752 c!354026) b!2216694))

(assert (= (and d!662752 (not c!354026)) b!2216696))

(assert (= (and b!2216696 c!354025) b!2216698))

(assert (= (and b!2216696 (not c!354025)) b!2216695))

(assert (= (and b!2216695 (not res!952092)) b!2216697))

(declare-fun m!2657957 () Bool)

(assert (=> b!2216694 m!2657957))

(declare-fun m!2657959 () Bool)

(assert (=> b!2216697 m!2657959))

(declare-fun m!2657961 () Bool)

(assert (=> b!2216698 m!2657961))

(assert (=> b!2216588 d!662752))

(declare-fun d!662754 () Bool)

(assert (=> d!662754 (= (inv!35133 (tag!4669 (h!31329 rules!4462))) (= (mod (str.len (value!131833 (tag!4669 (h!31329 rules!4462)))) 2) 0))))

(assert (=> b!2216580 d!662754))

(declare-fun d!662756 () Bool)

(declare-fun res!952093 () Bool)

(declare-fun e!1415384 () Bool)

(assert (=> d!662756 (=> (not res!952093) (not e!1415384))))

(assert (=> d!662756 (= res!952093 (semiInverseModEq!1669 (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toValue!5894 (transformation!4179 (h!31329 rules!4462)))))))

(assert (=> d!662756 (= (inv!35137 (transformation!4179 (h!31329 rules!4462))) e!1415384)))

(declare-fun b!2216699 () Bool)

(assert (=> b!2216699 (= e!1415384 (equivClasses!1596 (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toValue!5894 (transformation!4179 (h!31329 rules!4462)))))))

(assert (= (and d!662756 res!952093) b!2216699))

(declare-fun m!2657963 () Bool)

(assert (=> d!662756 m!2657963))

(declare-fun m!2657965 () Bool)

(assert (=> b!2216699 m!2657965))

(assert (=> b!2216580 d!662756))

(declare-fun d!662758 () Bool)

(assert (=> d!662758 (= (inv!35133 (tag!4669 (rule!6479 t1!61))) (= (mod (str.len (value!131833 (tag!4669 (rule!6479 t1!61)))) 2) 0))))

(assert (=> b!2216591 d!662758))

(declare-fun d!662760 () Bool)

(declare-fun res!952094 () Bool)

(declare-fun e!1415385 () Bool)

(assert (=> d!662760 (=> (not res!952094) (not e!1415385))))

(assert (=> d!662760 (= res!952094 (semiInverseModEq!1669 (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toValue!5894 (transformation!4179 (rule!6479 t1!61)))))))

(assert (=> d!662760 (= (inv!35137 (transformation!4179 (rule!6479 t1!61))) e!1415385)))

(declare-fun b!2216700 () Bool)

(assert (=> b!2216700 (= e!1415385 (equivClasses!1596 (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toValue!5894 (transformation!4179 (rule!6479 t1!61)))))))

(assert (= (and d!662760 res!952094) b!2216700))

(declare-fun m!2657967 () Bool)

(assert (=> d!662760 m!2657967))

(declare-fun m!2657969 () Bool)

(assert (=> b!2216700 m!2657969))

(assert (=> b!2216591 d!662760))

(declare-fun b!2216702 () Bool)

(declare-fun e!1415388 () Bool)

(assert (=> b!2216702 (= e!1415388 (inv!16 (value!131834 t1!61)))))

(declare-fun b!2216703 () Bool)

(declare-fun res!952095 () Bool)

(declare-fun e!1415389 () Bool)

(assert (=> b!2216703 (=> res!952095 e!1415389)))

(assert (=> b!2216703 (= res!952095 (not ((_ is IntegerValue!12947) (value!131834 t1!61))))))

(declare-fun e!1415387 () Bool)

(assert (=> b!2216703 (= e!1415387 e!1415389)))

(declare-fun b!2216704 () Bool)

(assert (=> b!2216704 (= e!1415388 e!1415387)))

(declare-fun c!354027 () Bool)

(assert (=> b!2216704 (= c!354027 ((_ is IntegerValue!12946) (value!131834 t1!61)))))

(declare-fun b!2216705 () Bool)

(assert (=> b!2216705 (= e!1415389 (inv!15 (value!131834 t1!61)))))

(declare-fun d!662762 () Bool)

(declare-fun c!354028 () Bool)

(assert (=> d!662762 (= c!354028 ((_ is IntegerValue!12945) (value!131834 t1!61)))))

(assert (=> d!662762 (= (inv!21 (value!131834 t1!61)) e!1415388)))

(declare-fun b!2216706 () Bool)

(assert (=> b!2216706 (= e!1415387 (inv!17 (value!131834 t1!61)))))

(assert (= (and d!662762 c!354028) b!2216702))

(assert (= (and d!662762 (not c!354028)) b!2216704))

(assert (= (and b!2216704 c!354027) b!2216706))

(assert (= (and b!2216704 (not c!354027)) b!2216703))

(assert (= (and b!2216703 (not res!952095)) b!2216705))

(declare-fun m!2657975 () Bool)

(assert (=> b!2216702 m!2657975))

(declare-fun m!2657977 () Bool)

(assert (=> b!2216705 m!2657977))

(declare-fun m!2657979 () Bool)

(assert (=> b!2216706 m!2657979))

(assert (=> b!2216590 d!662762))

(declare-fun b!2216722 () Bool)

(declare-fun e!1415394 () Bool)

(declare-fun tp!690212 () Bool)

(assert (=> b!2216722 (= e!1415394 tp!690212)))

(declare-fun b!2216723 () Bool)

(declare-fun tp!690213 () Bool)

(declare-fun tp!690214 () Bool)

(assert (=> b!2216723 (= e!1415394 (and tp!690213 tp!690214))))

(declare-fun b!2216721 () Bool)

(declare-fun tp!690210 () Bool)

(declare-fun tp!690211 () Bool)

(assert (=> b!2216721 (= e!1415394 (and tp!690210 tp!690211))))

(declare-fun b!2216720 () Bool)

(declare-fun tp_is_empty!9819 () Bool)

(assert (=> b!2216720 (= e!1415394 tp_is_empty!9819)))

(assert (=> b!2216584 (= tp!690188 e!1415394)))

(assert (= (and b!2216584 ((_ is ElementMatch!6323) (regex!4179 (rule!6479 t2!61)))) b!2216720))

(assert (= (and b!2216584 ((_ is Concat!10639) (regex!4179 (rule!6479 t2!61)))) b!2216721))

(assert (= (and b!2216584 ((_ is Star!6323) (regex!4179 (rule!6479 t2!61)))) b!2216722))

(assert (= (and b!2216584 ((_ is Union!6323) (regex!4179 (rule!6479 t2!61)))) b!2216723))

(declare-fun b!2216726 () Bool)

(declare-fun e!1415395 () Bool)

(declare-fun tp!690217 () Bool)

(assert (=> b!2216726 (= e!1415395 tp!690217)))

(declare-fun b!2216727 () Bool)

(declare-fun tp!690218 () Bool)

(declare-fun tp!690219 () Bool)

(assert (=> b!2216727 (= e!1415395 (and tp!690218 tp!690219))))

(declare-fun b!2216725 () Bool)

(declare-fun tp!690215 () Bool)

(declare-fun tp!690216 () Bool)

(assert (=> b!2216725 (= e!1415395 (and tp!690215 tp!690216))))

(declare-fun b!2216724 () Bool)

(assert (=> b!2216724 (= e!1415395 tp_is_empty!9819)))

(assert (=> b!2216586 (= tp!690182 e!1415395)))

(assert (= (and b!2216586 ((_ is ElementMatch!6323) (regex!4179 (rule!6479 (h!31328 l!6601))))) b!2216724))

(assert (= (and b!2216586 ((_ is Concat!10639) (regex!4179 (rule!6479 (h!31328 l!6601))))) b!2216725))

(assert (= (and b!2216586 ((_ is Star!6323) (regex!4179 (rule!6479 (h!31328 l!6601))))) b!2216726))

(assert (= (and b!2216586 ((_ is Union!6323) (regex!4179 (rule!6479 (h!31328 l!6601))))) b!2216727))

(declare-fun b!2216732 () Bool)

(declare-fun e!1415398 () Bool)

(declare-fun tp!690222 () Bool)

(assert (=> b!2216732 (= e!1415398 (and tp_is_empty!9819 tp!690222))))

(assert (=> b!2216574 (= tp!690184 e!1415398)))

(assert (= (and b!2216574 ((_ is Cons!25926) (originalCharacters!4951 t2!61))) b!2216732))

(declare-fun b!2216749 () Bool)

(declare-fun b_free!64117 () Bool)

(declare-fun b_next!64821 () Bool)

(assert (=> b!2216749 (= b_free!64117 (not b_next!64821))))

(declare-fun tp!690231 () Bool)

(declare-fun b_and!173949 () Bool)

(assert (=> b!2216749 (= tp!690231 b_and!173949)))

(declare-fun b_free!64119 () Bool)

(declare-fun b_next!64823 () Bool)

(assert (=> b!2216749 (= b_free!64119 (not b_next!64823))))

(declare-fun t!199130 () Bool)

(declare-fun tb!132637 () Bool)

(assert (=> (and b!2216749 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199130) tb!132637))

(declare-fun result!160904 () Bool)

(assert (= result!160904 result!160854))

(assert (=> b!2216642 t!199130))

(declare-fun t!199132 () Bool)

(declare-fun tb!132639 () Bool)

(assert (=> (and b!2216749 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199132) tb!132639))

(declare-fun result!160906 () Bool)

(assert (= result!160906 result!160864))

(assert (=> b!2216655 t!199132))

(declare-fun tb!132641 () Bool)

(declare-fun t!199134 () Bool)

(assert (=> (and b!2216749 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199134) tb!132641))

(declare-fun result!160908 () Bool)

(assert (= result!160908 result!160872))

(assert (=> b!2216685 t!199134))

(declare-fun tp!690233 () Bool)

(declare-fun b_and!173951 () Bool)

(assert (=> b!2216749 (= tp!690233 (and (=> t!199130 result!160904) (=> t!199132 result!160906) (=> t!199134 result!160908) b_and!173951))))

(declare-fun e!1415411 () Bool)

(assert (=> b!2216749 (= e!1415411 (and tp!690231 tp!690233))))

(declare-fun e!1415413 () Bool)

(declare-fun tp!690232 () Bool)

(declare-fun b!2216748 () Bool)

(assert (=> b!2216748 (= e!1415413 (and tp!690232 (inv!35133 (tag!4669 (h!31329 (t!199084 rules!4462)))) (inv!35137 (transformation!4179 (h!31329 (t!199084 rules!4462)))) e!1415411))))

(declare-fun b!2216747 () Bool)

(declare-fun e!1415412 () Bool)

(declare-fun tp!690234 () Bool)

(assert (=> b!2216747 (= e!1415412 (and e!1415413 tp!690234))))

(assert (=> b!2216585 (= tp!690189 e!1415412)))

(assert (= b!2216748 b!2216749))

(assert (= b!2216747 b!2216748))

(assert (= (and b!2216585 ((_ is Cons!25928) (t!199084 rules!4462))) b!2216747))

(declare-fun m!2658007 () Bool)

(assert (=> b!2216748 m!2658007))

(declare-fun m!2658009 () Bool)

(assert (=> b!2216748 m!2658009))

(declare-fun b!2216780 () Bool)

(declare-fun b_free!64121 () Bool)

(declare-fun b_next!64825 () Bool)

(assert (=> b!2216780 (= b_free!64121 (not b_next!64825))))

(declare-fun tp!690249 () Bool)

(declare-fun b_and!173961 () Bool)

(assert (=> b!2216780 (= tp!690249 b_and!173961)))

(declare-fun b_free!64123 () Bool)

(declare-fun b_next!64827 () Bool)

(assert (=> b!2216780 (= b_free!64123 (not b_next!64827))))

(declare-fun t!199144 () Bool)

(declare-fun tb!132651 () Bool)

(assert (=> (and b!2216780 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 t2!61)))) t!199144) tb!132651))

(declare-fun result!160920 () Bool)

(assert (= result!160920 result!160854))

(assert (=> b!2216642 t!199144))

(declare-fun tb!132653 () Bool)

(declare-fun t!199146 () Bool)

(assert (=> (and b!2216780 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 t1!61)))) t!199146) tb!132653))

(declare-fun result!160922 () Bool)

(assert (= result!160922 result!160864))

(assert (=> b!2216655 t!199146))

(declare-fun t!199148 () Bool)

(declare-fun tb!132655 () Bool)

(assert (=> (and b!2216780 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601))))) t!199148) tb!132655))

(declare-fun result!160924 () Bool)

(assert (= result!160924 result!160872))

(assert (=> b!2216685 t!199148))

(declare-fun tp!690246 () Bool)

(declare-fun b_and!173963 () Bool)

(assert (=> b!2216780 (= tp!690246 (and (=> t!199144 result!160920) (=> t!199146 result!160922) (=> t!199148 result!160924) b_and!173963))))

(declare-fun tp!690247 () Bool)

(declare-fun e!1415438 () Bool)

(declare-fun b!2216777 () Bool)

(declare-fun e!1415441 () Bool)

(assert (=> b!2216777 (= e!1415438 (and (inv!35136 (h!31328 (t!199083 l!6601))) e!1415441 tp!690247))))

(declare-fun e!1415442 () Bool)

(assert (=> b!2216780 (= e!1415442 (and tp!690249 tp!690246))))

(declare-fun e!1415439 () Bool)

(declare-fun b!2216779 () Bool)

(declare-fun tp!690248 () Bool)

(assert (=> b!2216779 (= e!1415439 (and tp!690248 (inv!35133 (tag!4669 (rule!6479 (h!31328 (t!199083 l!6601))))) (inv!35137 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) e!1415442))))

(assert (=> b!2216579 (= tp!690173 e!1415438)))

(declare-fun tp!690250 () Bool)

(declare-fun b!2216778 () Bool)

(assert (=> b!2216778 (= e!1415441 (and (inv!21 (value!131834 (h!31328 (t!199083 l!6601)))) e!1415439 tp!690250))))

(assert (= b!2216779 b!2216780))

(assert (= b!2216778 b!2216779))

(assert (= b!2216777 b!2216778))

(assert (= (and b!2216579 ((_ is Cons!25927) (t!199083 l!6601))) b!2216777))

(declare-fun m!2658039 () Bool)

(assert (=> b!2216777 m!2658039))

(declare-fun m!2658041 () Bool)

(assert (=> b!2216779 m!2658041))

(declare-fun m!2658043 () Bool)

(assert (=> b!2216779 m!2658043))

(declare-fun m!2658045 () Bool)

(assert (=> b!2216778 m!2658045))

(declare-fun b!2216785 () Bool)

(declare-fun e!1415447 () Bool)

(declare-fun tp!690251 () Bool)

(assert (=> b!2216785 (= e!1415447 (and tp_is_empty!9819 tp!690251))))

(assert (=> b!2216588 (= tp!690177 e!1415447)))

(assert (= (and b!2216588 ((_ is Cons!25926) (originalCharacters!4951 (h!31328 l!6601)))) b!2216785))

(declare-fun b!2216788 () Bool)

(declare-fun e!1415448 () Bool)

(declare-fun tp!690254 () Bool)

(assert (=> b!2216788 (= e!1415448 tp!690254)))

(declare-fun b!2216789 () Bool)

(declare-fun tp!690255 () Bool)

(declare-fun tp!690256 () Bool)

(assert (=> b!2216789 (= e!1415448 (and tp!690255 tp!690256))))

(declare-fun b!2216787 () Bool)

(declare-fun tp!690252 () Bool)

(declare-fun tp!690253 () Bool)

(assert (=> b!2216787 (= e!1415448 (and tp!690252 tp!690253))))

(declare-fun b!2216786 () Bool)

(assert (=> b!2216786 (= e!1415448 tp_is_empty!9819)))

(assert (=> b!2216580 (= tp!690179 e!1415448)))

(assert (= (and b!2216580 ((_ is ElementMatch!6323) (regex!4179 (h!31329 rules!4462)))) b!2216786))

(assert (= (and b!2216580 ((_ is Concat!10639) (regex!4179 (h!31329 rules!4462)))) b!2216787))

(assert (= (and b!2216580 ((_ is Star!6323) (regex!4179 (h!31329 rules!4462)))) b!2216788))

(assert (= (and b!2216580 ((_ is Union!6323) (regex!4179 (h!31329 rules!4462)))) b!2216789))

(declare-fun b!2216792 () Bool)

(declare-fun e!1415449 () Bool)

(declare-fun tp!690259 () Bool)

(assert (=> b!2216792 (= e!1415449 tp!690259)))

(declare-fun b!2216793 () Bool)

(declare-fun tp!690260 () Bool)

(declare-fun tp!690261 () Bool)

(assert (=> b!2216793 (= e!1415449 (and tp!690260 tp!690261))))

(declare-fun b!2216791 () Bool)

(declare-fun tp!690257 () Bool)

(declare-fun tp!690258 () Bool)

(assert (=> b!2216791 (= e!1415449 (and tp!690257 tp!690258))))

(declare-fun b!2216790 () Bool)

(assert (=> b!2216790 (= e!1415449 tp_is_empty!9819)))

(assert (=> b!2216591 (= tp!690174 e!1415449)))

(assert (= (and b!2216591 ((_ is ElementMatch!6323) (regex!4179 (rule!6479 t1!61)))) b!2216790))

(assert (= (and b!2216591 ((_ is Concat!10639) (regex!4179 (rule!6479 t1!61)))) b!2216791))

(assert (= (and b!2216591 ((_ is Star!6323) (regex!4179 (rule!6479 t1!61)))) b!2216792))

(assert (= (and b!2216591 ((_ is Union!6323) (regex!4179 (rule!6479 t1!61)))) b!2216793))

(declare-fun b!2216794 () Bool)

(declare-fun e!1415450 () Bool)

(declare-fun tp!690262 () Bool)

(assert (=> b!2216794 (= e!1415450 (and tp_is_empty!9819 tp!690262))))

(assert (=> b!2216590 (= tp!690185 e!1415450)))

(assert (= (and b!2216590 ((_ is Cons!25926) (originalCharacters!4951 t1!61))) b!2216794))

(declare-fun b_lambda!71405 () Bool)

(assert (= b_lambda!71395 (or (and b!2216749 b_free!64119 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 t1!61))))) (and b!2216577 b_free!64111 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 t1!61))))) (and b!2216582 b_free!64103) (and b!2216592 b_free!64107 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toChars!5753 (transformation!4179 (rule!6479 t1!61))))) (and b!2216780 b_free!64123 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 t1!61))))) (and b!2216581 b_free!64115 (= (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toChars!5753 (transformation!4179 (rule!6479 t1!61))))) b_lambda!71405)))

(declare-fun b_lambda!71407 () Bool)

(assert (= b_lambda!71393 (or (and b!2216581 b_free!64115) (and b!2216780 b_free!64123 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 t2!61))))) (and b!2216592 b_free!64107 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))) (toChars!5753 (transformation!4179 (rule!6479 t2!61))))) (and b!2216577 b_free!64111 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 t2!61))))) (and b!2216582 b_free!64103 (= (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toChars!5753 (transformation!4179 (rule!6479 t2!61))))) (and b!2216749 b_free!64119 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 t2!61))))) b_lambda!71407)))

(declare-fun b_lambda!71409 () Bool)

(assert (= b_lambda!71389 (or (and start!215952 b_free!64099) b_lambda!71409)))

(declare-fun b_lambda!71411 () Bool)

(assert (= b_lambda!71391 (or (and start!215952 b_free!64099) b_lambda!71411)))

(declare-fun b_lambda!71413 () Bool)

(assert (= b_lambda!71397 (or (and b!2216780 b_free!64123 (= (toChars!5753 (transformation!4179 (rule!6479 (h!31328 (t!199083 l!6601))))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))))) (and b!2216749 b_free!64119 (= (toChars!5753 (transformation!4179 (h!31329 (t!199084 rules!4462)))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))))) (and b!2216582 b_free!64103 (= (toChars!5753 (transformation!4179 (rule!6479 t1!61))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))))) (and b!2216577 b_free!64111 (= (toChars!5753 (transformation!4179 (h!31329 rules!4462))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))))) (and b!2216592 b_free!64107) (and b!2216581 b_free!64115 (= (toChars!5753 (transformation!4179 (rule!6479 t2!61))) (toChars!5753 (transformation!4179 (rule!6479 (h!31328 l!6601)))))) b_lambda!71413)))

(check-sat (not b!2216595) (not b!2216694) (not b!2216603) (not b!2216702) b_and!173893 b_and!173951 (not b!2216685) tp_is_empty!9819 (not b!2216663) (not b!2216725) b_and!173927 b_and!173929 (not b!2216723) (not b!2216787) (not b!2216785) (not b!2216747) (not b!2216726) (not b!2216642) (not b!2216792) (not b!2216655) (not b!2216697) (not b_next!64803) (not d!662726) (not b!2216689) b_and!173949 (not b_next!64821) (not b!2216602) (not b_lambda!71411) b_and!173901 (not b!2216656) (not d!662760) (not b!2216779) b_and!173925 (not b!2216631) (not d!662734) (not b!2216662) (not b!2216683) (not b!2216604) (not b_next!64819) b_and!173907 (not tb!132613) (not b!2216788) b_and!173961 (not b!2216721) (not b_lambda!71409) (not b!2216732) (not d!662750) (not d!662756) (not b!2216664) (not b!2216748) (not b_next!64827) (not b!2216627) (not b!2216700) (not b_lambda!71405) (not d!662710) (not b!2216648) (not d!662708) (not b_next!64805) (not b!2216680) (not b_next!64817) (not b!2216686) b_and!173897 (not d!662738) (not b!2216793) (not b_next!64815) b_and!173931 (not b_next!64809) (not b!2216705) (not b!2216684) (not b_next!64823) (not b_lambda!71413) (not b!2216643) (not b_next!64807) (not b_lambda!71407) b_and!173963 (not b!2216791) (not b!2216794) (not b!2216727) (not b!2216657) (not b_next!64813) (not b!2216778) (not b!2216658) (not b!2216699) (not b!2216789) (not b!2216698) (not b_next!64825) (not d!662740) (not tb!132597) b_and!173889 (not b!2216722) (not b_next!64811) (not b!2216612) (not b!2216706) (not b!2216777) (not tb!132605))
(check-sat (not b_next!64803) b_and!173961 (not b_next!64827) (not b_next!64805) (not b_next!64817) b_and!173897 (not b_next!64823) (not b_next!64807) b_and!173963 (not b_next!64813) b_and!173893 (not b_next!64825) b_and!173951 b_and!173927 b_and!173929 b_and!173949 (not b_next!64821) b_and!173901 b_and!173925 (not b_next!64819) b_and!173907 (not b_next!64815) b_and!173931 (not b_next!64809) b_and!173889 (not b_next!64811))
