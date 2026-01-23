; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231822 () Bool)

(assert start!231822)

(declare-fun b!2361913 () Bool)

(declare-fun b_free!70553 () Bool)

(declare-fun b_next!71257 () Bool)

(assert (=> b!2361913 (= b_free!70553 (not b_next!71257))))

(declare-fun tp!755295 () Bool)

(declare-fun b_and!185545 () Bool)

(assert (=> b!2361913 (= tp!755295 b_and!185545)))

(declare-fun b_free!70555 () Bool)

(declare-fun b_next!71259 () Bool)

(assert (=> b!2361913 (= b_free!70555 (not b_next!71259))))

(declare-fun tp!755293 () Bool)

(declare-fun b_and!185547 () Bool)

(assert (=> b!2361913 (= tp!755293 b_and!185547)))

(declare-fun tp!755292 () Bool)

(declare-fun b!2361908 () Bool)

(declare-fun e!1508530 () Bool)

(declare-datatypes ((List!28052 0))(
  ( (Nil!27954) (Cons!27954 (h!33355 (_ BitVec 16)) (t!208029 List!28052)) )
))
(declare-datatypes ((TokenValue!4635 0))(
  ( (FloatLiteralValue!9270 (text!32890 List!28052)) (TokenValueExt!4634 (__x!18525 Int)) (Broken!23175 (value!141646 List!28052)) (Object!4732) (End!4635) (Def!4635) (Underscore!4635) (Match!4635) (Else!4635) (Error!4635) (Case!4635) (If!4635) (Extends!4635) (Abstract!4635) (Class!4635) (Val!4635) (DelimiterValue!9270 (del!4695 List!28052)) (KeywordValue!4641 (value!141647 List!28052)) (CommentValue!9270 (value!141648 List!28052)) (WhitespaceValue!9270 (value!141649 List!28052)) (IndentationValue!4635 (value!141650 List!28052)) (String!30774) (Int32!4635) (Broken!23176 (value!141651 List!28052)) (Boolean!4636) (Unit!40854) (OperatorValue!4638 (op!4695 List!28052)) (IdentifierValue!9270 (value!141652 List!28052)) (IdentifierValue!9271 (value!141653 List!28052)) (WhitespaceValue!9271 (value!141654 List!28052)) (True!9270) (False!9270) (Broken!23177 (value!141655 List!28052)) (Broken!23178 (value!141656 List!28052)) (True!9271) (RightBrace!4635) (RightBracket!4635) (Colon!4635) (Null!4635) (Comma!4635) (LeftBracket!4635) (False!9271) (LeftBrace!4635) (ImaginaryLiteralValue!4635 (text!32891 List!28052)) (StringLiteralValue!13905 (value!141657 List!28052)) (EOFValue!4635 (value!141658 List!28052)) (IdentValue!4635 (value!141659 List!28052)) (DelimiterValue!9271 (value!141660 List!28052)) (DedentValue!4635 (value!141661 List!28052)) (NewLineValue!4635 (value!141662 List!28052)) (IntegerValue!13905 (value!141663 (_ BitVec 32)) (text!32892 List!28052)) (IntegerValue!13906 (value!141664 Int) (text!32893 List!28052)) (Times!4635) (Or!4635) (Equal!4635) (Minus!4635) (Broken!23179 (value!141665 List!28052)) (And!4635) (Div!4635) (LessEqual!4635) (Mod!4635) (Concat!11542) (Not!4635) (Plus!4635) (SpaceValue!4635 (value!141666 List!28052)) (IntegerValue!13907 (value!141667 Int) (text!32894 List!28052)) (StringLiteralValue!13906 (text!32895 List!28052)) (FloatLiteralValue!9271 (text!32896 List!28052)) (BytesLiteralValue!4635 (value!141668 List!28052)) (CommentValue!9271 (value!141669 List!28052)) (StringLiteralValue!13907 (value!141670 List!28052)) (ErrorTokenValue!4635 (msg!4696 List!28052)) )
))
(declare-datatypes ((String!30775 0))(
  ( (String!30776 (value!141671 String)) )
))
(declare-datatypes ((C!13972 0))(
  ( (C!13973 (val!8228 Int)) )
))
(declare-datatypes ((Regex!6907 0))(
  ( (ElementMatch!6907 (c!375410 C!13972)) (Concat!11543 (regOne!14326 Regex!6907) (regTwo!14326 Regex!6907)) (EmptyExpr!6907) (Star!6907 (reg!7236 Regex!6907)) (EmptyLang!6907) (Union!6907 (regOne!14327 Regex!6907) (regTwo!14327 Regex!6907)) )
))
(declare-datatypes ((List!28053 0))(
  ( (Nil!27955) (Cons!27955 (h!33356 C!13972) (t!208030 List!28053)) )
))
(declare-datatypes ((IArray!18307 0))(
  ( (IArray!18308 (innerList!9211 List!28053)) )
))
(declare-datatypes ((Conc!9151 0))(
  ( (Node!9151 (left!21252 Conc!9151) (right!21582 Conc!9151) (csize!18532 Int) (cheight!9362 Int)) (Leaf!13509 (xs!12131 IArray!18307) (csize!18533 Int)) (Empty!9151) )
))
(declare-datatypes ((BalanceConc!17914 0))(
  ( (BalanceConc!17915 (c!375411 Conc!9151)) )
))
(declare-datatypes ((TokenValueInjection!8770 0))(
  ( (TokenValueInjection!8771 (toValue!6301 Int) (toChars!6160 Int)) )
))
(declare-datatypes ((Rule!8698 0))(
  ( (Rule!8699 (regex!4449 Regex!6907) (tag!4939 String!30775) (isSeparator!4449 Bool) (transformation!4449 TokenValueInjection!8770)) )
))
(declare-datatypes ((List!28054 0))(
  ( (Nil!27956) (Cons!27956 (h!33357 Rule!8698) (t!208031 List!28054)) )
))
(declare-fun rules!1706 () List!28054)

(declare-fun e!1508532 () Bool)

(declare-fun inv!38182 (String!30775) Bool)

(declare-fun inv!38184 (TokenValueInjection!8770) Bool)

(assert (=> b!2361908 (= e!1508532 (and tp!755292 (inv!38182 (tag!4939 (h!33357 rules!1706))) (inv!38184 (transformation!4449 (h!33357 rules!1706))) e!1508530))))

(declare-fun b!2361909 () Bool)

(declare-fun res!1002417 () Bool)

(declare-fun e!1508533 () Bool)

(assert (=> b!2361909 (=> (not res!1002417) (not e!1508533))))

(declare-fun isEmpty!15883 (List!28054) Bool)

(assert (=> b!2361909 (= res!1002417 (not (isEmpty!15883 rules!1706)))))

(declare-fun b!2361910 () Bool)

(assert (=> b!2361910 (= e!1508533 true)))

(declare-fun lt!864626 () Int)

(declare-fun input!1160 () List!28053)

(declare-fun size!22135 (List!28053) Int)

(assert (=> b!2361910 (= lt!864626 (size!22135 input!1160))))

(declare-fun b!2361911 () Bool)

(declare-fun res!1002418 () Bool)

(assert (=> b!2361911 (=> (not res!1002418) (not e!1508533))))

(declare-datatypes ((LexerInterface!4046 0))(
  ( (LexerInterfaceExt!4043 (__x!18526 Int)) (Lexer!4044) )
))
(declare-fun thiss!13512 () LexerInterface!4046)

(get-info :version)

(declare-datatypes ((Token!8368 0))(
  ( (Token!8369 (value!141672 TokenValue!4635) (rule!6807 Rule!8698) (size!22136 Int) (originalCharacters!5215 List!28053)) )
))
(declare-datatypes ((tuple2!27690 0))(
  ( (tuple2!27691 (_1!16386 Token!8368) (_2!16386 List!28053)) )
))
(declare-datatypes ((Option!5456 0))(
  ( (None!5455) (Some!5455 (v!30863 tuple2!27690)) )
))
(declare-fun maxPrefix!2276 (LexerInterface!4046 List!28054 List!28053) Option!5456)

(assert (=> b!2361911 (= res!1002418 (not ((_ is Some!5455) (maxPrefix!2276 thiss!13512 rules!1706 input!1160))))))

(assert (=> b!2361913 (= e!1508530 (and tp!755295 tp!755293))))

(declare-fun b!2361914 () Bool)

(declare-fun e!1508534 () Bool)

(declare-fun tp_is_empty!11231 () Bool)

(declare-fun tp!755294 () Bool)

(assert (=> b!2361914 (= e!1508534 (and tp_is_empty!11231 tp!755294))))

(declare-fun b!2361915 () Bool)

(declare-fun res!1002416 () Bool)

(assert (=> b!2361915 (=> (not res!1002416) (not e!1508533))))

(declare-fun rulesInvariant!3546 (LexerInterface!4046 List!28054) Bool)

(assert (=> b!2361915 (= res!1002416 (rulesInvariant!3546 thiss!13512 rules!1706))))

(declare-fun b!2361916 () Bool)

(declare-fun e!1508531 () Bool)

(declare-fun tp!755291 () Bool)

(assert (=> b!2361916 (= e!1508531 (and e!1508532 tp!755291))))

(declare-fun res!1002414 () Bool)

(assert (=> start!231822 (=> (not res!1002414) (not e!1508533))))

(assert (=> start!231822 (= res!1002414 ((_ is Lexer!4044) thiss!13512))))

(assert (=> start!231822 e!1508533))

(assert (=> start!231822 true))

(assert (=> start!231822 e!1508531))

(assert (=> start!231822 e!1508534))

(declare-fun b!2361912 () Bool)

(declare-fun res!1002415 () Bool)

(assert (=> b!2361912 (=> (not res!1002415) (not e!1508533))))

(declare-datatypes ((List!28055 0))(
  ( (Nil!27957) (Cons!27957 (h!33358 Token!8368) (t!208032 List!28055)) )
))
(declare-fun size!22137 (List!28055) Int)

(assert (=> b!2361912 (= res!1002415 (> (size!22137 Nil!27957) 0))))

(assert (= (and start!231822 res!1002414) b!2361909))

(assert (= (and b!2361909 res!1002417) b!2361915))

(assert (= (and b!2361915 res!1002416) b!2361911))

(assert (= (and b!2361911 res!1002418) b!2361912))

(assert (= (and b!2361912 res!1002415) b!2361910))

(assert (= b!2361908 b!2361913))

(assert (= b!2361916 b!2361908))

(assert (= (and start!231822 ((_ is Cons!27956) rules!1706)) b!2361916))

(assert (= (and start!231822 ((_ is Cons!27955) input!1160)) b!2361914))

(declare-fun m!2774133 () Bool)

(assert (=> b!2361908 m!2774133))

(declare-fun m!2774135 () Bool)

(assert (=> b!2361908 m!2774135))

(declare-fun m!2774137 () Bool)

(assert (=> b!2361912 m!2774137))

(declare-fun m!2774139 () Bool)

(assert (=> b!2361911 m!2774139))

(declare-fun m!2774141 () Bool)

(assert (=> b!2361909 m!2774141))

(declare-fun m!2774143 () Bool)

(assert (=> b!2361915 m!2774143))

(declare-fun m!2774145 () Bool)

(assert (=> b!2361910 m!2774145))

(check-sat (not b!2361912) b_and!185545 (not b!2361911) (not b!2361916) (not b_next!71259) (not b!2361915) (not b!2361910) (not b!2361908) (not b!2361914) b_and!185547 tp_is_empty!11231 (not b!2361909) (not b_next!71257))
(check-sat b_and!185547 b_and!185545 (not b_next!71257) (not b_next!71259))
(get-model)

(declare-fun bm!143674 () Bool)

(declare-fun call!143679 () Option!5456)

(declare-fun maxPrefixOneRule!1443 (LexerInterface!4046 Rule!8698 List!28053) Option!5456)

(assert (=> bm!143674 (= call!143679 (maxPrefixOneRule!1443 thiss!13512 (h!33357 rules!1706) input!1160))))

(declare-fun b!2361953 () Bool)

(declare-fun res!1002440 () Bool)

(declare-fun e!1508553 () Bool)

(assert (=> b!2361953 (=> (not res!1002440) (not e!1508553))))

(declare-fun lt!864646 () Option!5456)

(declare-fun get!8480 (Option!5456) tuple2!27690)

(assert (=> b!2361953 (= res!1002440 (< (size!22135 (_2!16386 (get!8480 lt!864646))) (size!22135 input!1160)))))

(declare-fun d!694188 () Bool)

(declare-fun e!1508555 () Bool)

(assert (=> d!694188 e!1508555))

(declare-fun res!1002445 () Bool)

(assert (=> d!694188 (=> res!1002445 e!1508555)))

(declare-fun isEmpty!15884 (Option!5456) Bool)

(assert (=> d!694188 (= res!1002445 (isEmpty!15884 lt!864646))))

(declare-fun e!1508554 () Option!5456)

(assert (=> d!694188 (= lt!864646 e!1508554)))

(declare-fun c!375420 () Bool)

(assert (=> d!694188 (= c!375420 (and ((_ is Cons!27956) rules!1706) ((_ is Nil!27956) (t!208031 rules!1706))))))

(declare-datatypes ((Unit!40855 0))(
  ( (Unit!40856) )
))
(declare-fun lt!864645 () Unit!40855)

(declare-fun lt!864644 () Unit!40855)

(assert (=> d!694188 (= lt!864645 lt!864644)))

(declare-fun isPrefix!2410 (List!28053 List!28053) Bool)

(assert (=> d!694188 (isPrefix!2410 input!1160 input!1160)))

(declare-fun lemmaIsPrefixRefl!1536 (List!28053 List!28053) Unit!40855)

(assert (=> d!694188 (= lt!864644 (lemmaIsPrefixRefl!1536 input!1160 input!1160))))

(declare-fun rulesValidInductive!1578 (LexerInterface!4046 List!28054) Bool)

(assert (=> d!694188 (rulesValidInductive!1578 thiss!13512 rules!1706)))

(assert (=> d!694188 (= (maxPrefix!2276 thiss!13512 rules!1706 input!1160) lt!864646)))

(declare-fun b!2361954 () Bool)

(declare-fun res!1002439 () Bool)

(assert (=> b!2361954 (=> (not res!1002439) (not e!1508553))))

(declare-fun list!11092 (BalanceConc!17914) List!28053)

(declare-fun charsOf!2808 (Token!8368) BalanceConc!17914)

(assert (=> b!2361954 (= res!1002439 (= (list!11092 (charsOf!2808 (_1!16386 (get!8480 lt!864646)))) (originalCharacters!5215 (_1!16386 (get!8480 lt!864646)))))))

(declare-fun b!2361955 () Bool)

(declare-fun contains!4888 (List!28054 Rule!8698) Bool)

(assert (=> b!2361955 (= e!1508553 (contains!4888 rules!1706 (rule!6807 (_1!16386 (get!8480 lt!864646)))))))

(declare-fun b!2361956 () Bool)

(declare-fun res!1002441 () Bool)

(assert (=> b!2361956 (=> (not res!1002441) (not e!1508553))))

(declare-fun apply!6715 (TokenValueInjection!8770 BalanceConc!17914) TokenValue!4635)

(declare-fun seqFromList!3134 (List!28053) BalanceConc!17914)

(assert (=> b!2361956 (= res!1002441 (= (value!141672 (_1!16386 (get!8480 lt!864646))) (apply!6715 (transformation!4449 (rule!6807 (_1!16386 (get!8480 lt!864646)))) (seqFromList!3134 (originalCharacters!5215 (_1!16386 (get!8480 lt!864646)))))))))

(declare-fun b!2361957 () Bool)

(declare-fun res!1002442 () Bool)

(assert (=> b!2361957 (=> (not res!1002442) (not e!1508553))))

(declare-fun matchR!3028 (Regex!6907 List!28053) Bool)

(assert (=> b!2361957 (= res!1002442 (matchR!3028 (regex!4449 (rule!6807 (_1!16386 (get!8480 lt!864646)))) (list!11092 (charsOf!2808 (_1!16386 (get!8480 lt!864646))))))))

(declare-fun b!2361958 () Bool)

(declare-fun res!1002443 () Bool)

(assert (=> b!2361958 (=> (not res!1002443) (not e!1508553))))

(declare-fun ++!6881 (List!28053 List!28053) List!28053)

(assert (=> b!2361958 (= res!1002443 (= (++!6881 (list!11092 (charsOf!2808 (_1!16386 (get!8480 lt!864646)))) (_2!16386 (get!8480 lt!864646))) input!1160))))

(declare-fun b!2361959 () Bool)

(assert (=> b!2361959 (= e!1508554 call!143679)))

(declare-fun b!2361960 () Bool)

(assert (=> b!2361960 (= e!1508555 e!1508553)))

(declare-fun res!1002444 () Bool)

(assert (=> b!2361960 (=> (not res!1002444) (not e!1508553))))

(declare-fun isDefined!4284 (Option!5456) Bool)

(assert (=> b!2361960 (= res!1002444 (isDefined!4284 lt!864646))))

(declare-fun b!2361961 () Bool)

(declare-fun lt!864647 () Option!5456)

(declare-fun lt!864643 () Option!5456)

(assert (=> b!2361961 (= e!1508554 (ite (and ((_ is None!5455) lt!864647) ((_ is None!5455) lt!864643)) None!5455 (ite ((_ is None!5455) lt!864643) lt!864647 (ite ((_ is None!5455) lt!864647) lt!864643 (ite (>= (size!22136 (_1!16386 (v!30863 lt!864647))) (size!22136 (_1!16386 (v!30863 lt!864643)))) lt!864647 lt!864643)))))))

(assert (=> b!2361961 (= lt!864647 call!143679)))

(assert (=> b!2361961 (= lt!864643 (maxPrefix!2276 thiss!13512 (t!208031 rules!1706) input!1160))))

(assert (= (and d!694188 c!375420) b!2361959))

(assert (= (and d!694188 (not c!375420)) b!2361961))

(assert (= (or b!2361959 b!2361961) bm!143674))

(assert (= (and d!694188 (not res!1002445)) b!2361960))

(assert (= (and b!2361960 res!1002444) b!2361954))

(assert (= (and b!2361954 res!1002439) b!2361953))

(assert (= (and b!2361953 res!1002440) b!2361958))

(assert (= (and b!2361958 res!1002443) b!2361956))

(assert (= (and b!2361956 res!1002441) b!2361957))

(assert (= (and b!2361957 res!1002442) b!2361955))

(declare-fun m!2774159 () Bool)

(assert (=> b!2361958 m!2774159))

(declare-fun m!2774161 () Bool)

(assert (=> b!2361958 m!2774161))

(assert (=> b!2361958 m!2774161))

(declare-fun m!2774163 () Bool)

(assert (=> b!2361958 m!2774163))

(assert (=> b!2361958 m!2774163))

(declare-fun m!2774165 () Bool)

(assert (=> b!2361958 m!2774165))

(declare-fun m!2774167 () Bool)

(assert (=> bm!143674 m!2774167))

(declare-fun m!2774169 () Bool)

(assert (=> b!2361961 m!2774169))

(assert (=> b!2361956 m!2774159))

(declare-fun m!2774171 () Bool)

(assert (=> b!2361956 m!2774171))

(assert (=> b!2361956 m!2774171))

(declare-fun m!2774173 () Bool)

(assert (=> b!2361956 m!2774173))

(assert (=> b!2361954 m!2774159))

(assert (=> b!2361954 m!2774161))

(assert (=> b!2361954 m!2774161))

(assert (=> b!2361954 m!2774163))

(declare-fun m!2774175 () Bool)

(assert (=> d!694188 m!2774175))

(declare-fun m!2774177 () Bool)

(assert (=> d!694188 m!2774177))

(declare-fun m!2774179 () Bool)

(assert (=> d!694188 m!2774179))

(declare-fun m!2774181 () Bool)

(assert (=> d!694188 m!2774181))

(assert (=> b!2361953 m!2774159))

(declare-fun m!2774183 () Bool)

(assert (=> b!2361953 m!2774183))

(assert (=> b!2361953 m!2774145))

(assert (=> b!2361955 m!2774159))

(declare-fun m!2774185 () Bool)

(assert (=> b!2361955 m!2774185))

(assert (=> b!2361957 m!2774159))

(assert (=> b!2361957 m!2774161))

(assert (=> b!2361957 m!2774161))

(assert (=> b!2361957 m!2774163))

(assert (=> b!2361957 m!2774163))

(declare-fun m!2774187 () Bool)

(assert (=> b!2361957 m!2774187))

(declare-fun m!2774189 () Bool)

(assert (=> b!2361960 m!2774189))

(assert (=> b!2361911 d!694188))

(declare-fun d!694204 () Bool)

(declare-fun lt!864660 () Int)

(assert (=> d!694204 (>= lt!864660 0)))

(declare-fun e!1508564 () Int)

(assert (=> d!694204 (= lt!864660 e!1508564)))

(declare-fun c!375425 () Bool)

(assert (=> d!694204 (= c!375425 ((_ is Nil!27955) input!1160))))

(assert (=> d!694204 (= (size!22135 input!1160) lt!864660)))

(declare-fun b!2361984 () Bool)

(assert (=> b!2361984 (= e!1508564 0)))

(declare-fun b!2361985 () Bool)

(assert (=> b!2361985 (= e!1508564 (+ 1 (size!22135 (t!208030 input!1160))))))

(assert (= (and d!694204 c!375425) b!2361984))

(assert (= (and d!694204 (not c!375425)) b!2361985))

(declare-fun m!2774191 () Bool)

(assert (=> b!2361985 m!2774191))

(assert (=> b!2361910 d!694204))

(declare-fun d!694206 () Bool)

(declare-fun lt!864663 () Int)

(assert (=> d!694206 (>= lt!864663 0)))

(declare-fun e!1508567 () Int)

(assert (=> d!694206 (= lt!864663 e!1508567)))

(declare-fun c!375428 () Bool)

(assert (=> d!694206 (= c!375428 ((_ is Nil!27957) Nil!27957))))

(assert (=> d!694206 (= (size!22137 Nil!27957) lt!864663)))

(declare-fun b!2361990 () Bool)

(assert (=> b!2361990 (= e!1508567 0)))

(declare-fun b!2361991 () Bool)

(assert (=> b!2361991 (= e!1508567 (+ 1 (size!22137 (t!208032 Nil!27957))))))

(assert (= (and d!694206 c!375428) b!2361990))

(assert (= (and d!694206 (not c!375428)) b!2361991))

(declare-fun m!2774193 () Bool)

(assert (=> b!2361991 m!2774193))

(assert (=> b!2361912 d!694206))

(declare-fun d!694208 () Bool)

(assert (=> d!694208 (= (inv!38182 (tag!4939 (h!33357 rules!1706))) (= (mod (str.len (value!141671 (tag!4939 (h!33357 rules!1706)))) 2) 0))))

(assert (=> b!2361908 d!694208))

(declare-fun d!694210 () Bool)

(declare-fun res!1002469 () Bool)

(declare-fun e!1508575 () Bool)

(assert (=> d!694210 (=> (not res!1002469) (not e!1508575))))

(declare-fun semiInverseModEq!1830 (Int Int) Bool)

(assert (=> d!694210 (= res!1002469 (semiInverseModEq!1830 (toChars!6160 (transformation!4449 (h!33357 rules!1706))) (toValue!6301 (transformation!4449 (h!33357 rules!1706)))))))

(assert (=> d!694210 (= (inv!38184 (transformation!4449 (h!33357 rules!1706))) e!1508575)))

(declare-fun b!2362013 () Bool)

(declare-fun equivClasses!1741 (Int Int) Bool)

(assert (=> b!2362013 (= e!1508575 (equivClasses!1741 (toChars!6160 (transformation!4449 (h!33357 rules!1706))) (toValue!6301 (transformation!4449 (h!33357 rules!1706)))))))

(assert (= (and d!694210 res!1002469) b!2362013))

(declare-fun m!2774227 () Bool)

(assert (=> d!694210 m!2774227))

(declare-fun m!2774229 () Bool)

(assert (=> b!2362013 m!2774229))

(assert (=> b!2361908 d!694210))

(declare-fun d!694212 () Bool)

(declare-fun res!1002472 () Bool)

(declare-fun e!1508593 () Bool)

(assert (=> d!694212 (=> (not res!1002472) (not e!1508593))))

(declare-fun rulesValid!1655 (LexerInterface!4046 List!28054) Bool)

(assert (=> d!694212 (= res!1002472 (rulesValid!1655 thiss!13512 rules!1706))))

(assert (=> d!694212 (= (rulesInvariant!3546 thiss!13512 rules!1706) e!1508593)))

(declare-fun b!2362035 () Bool)

(declare-datatypes ((List!28057 0))(
  ( (Nil!27959) (Cons!27959 (h!33360 String!30775) (t!208034 List!28057)) )
))
(declare-fun noDuplicateTag!1653 (LexerInterface!4046 List!28054 List!28057) Bool)

(assert (=> b!2362035 (= e!1508593 (noDuplicateTag!1653 thiss!13512 rules!1706 Nil!27959))))

(assert (= (and d!694212 res!1002472) b!2362035))

(declare-fun m!2774235 () Bool)

(assert (=> d!694212 m!2774235))

(declare-fun m!2774237 () Bool)

(assert (=> b!2362035 m!2774237))

(assert (=> b!2361915 d!694212))

(declare-fun d!694214 () Bool)

(assert (=> d!694214 (= (isEmpty!15883 rules!1706) ((_ is Nil!27956) rules!1706))))

(assert (=> b!2361909 d!694214))

(declare-fun b!2362047 () Bool)

(declare-fun b_free!70561 () Bool)

(declare-fun b_next!71265 () Bool)

(assert (=> b!2362047 (= b_free!70561 (not b_next!71265))))

(declare-fun tp!755337 () Bool)

(declare-fun b_and!185553 () Bool)

(assert (=> b!2362047 (= tp!755337 b_and!185553)))

(declare-fun b_free!70563 () Bool)

(declare-fun b_next!71267 () Bool)

(assert (=> b!2362047 (= b_free!70563 (not b_next!71267))))

(declare-fun tp!755335 () Bool)

(declare-fun b_and!185555 () Bool)

(assert (=> b!2362047 (= tp!755335 b_and!185555)))

(declare-fun e!1508606 () Bool)

(assert (=> b!2362047 (= e!1508606 (and tp!755337 tp!755335))))

(declare-fun b!2362046 () Bool)

(declare-fun tp!755334 () Bool)

(declare-fun e!1508604 () Bool)

(assert (=> b!2362046 (= e!1508604 (and tp!755334 (inv!38182 (tag!4939 (h!33357 (t!208031 rules!1706)))) (inv!38184 (transformation!4449 (h!33357 (t!208031 rules!1706)))) e!1508606))))

(declare-fun b!2362045 () Bool)

(declare-fun e!1508603 () Bool)

(declare-fun tp!755336 () Bool)

(assert (=> b!2362045 (= e!1508603 (and e!1508604 tp!755336))))

(assert (=> b!2361916 (= tp!755291 e!1508603)))

(assert (= b!2362046 b!2362047))

(assert (= b!2362045 b!2362046))

(assert (= (and b!2361916 ((_ is Cons!27956) (t!208031 rules!1706))) b!2362045))

(declare-fun m!2774239 () Bool)

(assert (=> b!2362046 m!2774239))

(declare-fun m!2774241 () Bool)

(assert (=> b!2362046 m!2774241))

(declare-fun b!2362059 () Bool)

(declare-fun e!1508609 () Bool)

(declare-fun tp!755348 () Bool)

(declare-fun tp!755352 () Bool)

(assert (=> b!2362059 (= e!1508609 (and tp!755348 tp!755352))))

(assert (=> b!2361908 (= tp!755292 e!1508609)))

(declare-fun b!2362058 () Bool)

(assert (=> b!2362058 (= e!1508609 tp_is_empty!11231)))

(declare-fun b!2362060 () Bool)

(declare-fun tp!755350 () Bool)

(assert (=> b!2362060 (= e!1508609 tp!755350)))

(declare-fun b!2362061 () Bool)

(declare-fun tp!755351 () Bool)

(declare-fun tp!755349 () Bool)

(assert (=> b!2362061 (= e!1508609 (and tp!755351 tp!755349))))

(assert (= (and b!2361908 ((_ is ElementMatch!6907) (regex!4449 (h!33357 rules!1706)))) b!2362058))

(assert (= (and b!2361908 ((_ is Concat!11543) (regex!4449 (h!33357 rules!1706)))) b!2362059))

(assert (= (and b!2361908 ((_ is Star!6907) (regex!4449 (h!33357 rules!1706)))) b!2362060))

(assert (= (and b!2361908 ((_ is Union!6907) (regex!4449 (h!33357 rules!1706)))) b!2362061))

(declare-fun b!2362066 () Bool)

(declare-fun e!1508612 () Bool)

(declare-fun tp!755355 () Bool)

(assert (=> b!2362066 (= e!1508612 (and tp_is_empty!11231 tp!755355))))

(assert (=> b!2361914 (= tp!755294 e!1508612)))

(assert (= (and b!2361914 ((_ is Cons!27955) (t!208030 input!1160))) b!2362066))

(check-sat (not b!2361991) (not b_next!71257) (not d!694212) (not b!2361957) (not bm!143674) b_and!185553 (not b!2362013) b_and!185555 (not b!2362061) (not b!2362045) b_and!185545 (not b!2361956) (not b!2361985) (not b!2362046) (not b!2361958) (not b_next!71267) (not b!2362059) b_and!185547 tp_is_empty!11231 (not b!2361953) (not b_next!71265) (not b!2361955) (not b!2362060) (not d!694210) (not b!2361961) (not b!2361954) (not b!2362066) (not d!694188) (not b_next!71259) (not b!2361960) (not b!2362035))
(check-sat b_and!185545 (not b_next!71265) (not b_next!71257) b_and!185553 (not b_next!71259) b_and!185555 (not b_next!71267) b_and!185547)
