; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231466 () Bool)

(assert start!231466)

(declare-fun b!2359910 () Bool)

(declare-fun b_free!70481 () Bool)

(declare-fun b_next!71185 () Bool)

(assert (=> b!2359910 (= b_free!70481 (not b_next!71185))))

(declare-fun tp!754756 () Bool)

(declare-fun b_and!185417 () Bool)

(assert (=> b!2359910 (= tp!754756 b_and!185417)))

(declare-fun b_free!70483 () Bool)

(declare-fun b_next!71187 () Bool)

(assert (=> b!2359910 (= b_free!70483 (not b_next!71187))))

(declare-fun tp!754757 () Bool)

(declare-fun b_and!185419 () Bool)

(assert (=> b!2359910 (= tp!754757 b_and!185419)))

(declare-fun b!2359905 () Bool)

(declare-fun e!1507422 () Bool)

(declare-fun tp_is_empty!11219 () Bool)

(declare-fun tp!754754 () Bool)

(assert (=> b!2359905 (= e!1507422 (and tp_is_empty!11219 tp!754754))))

(declare-fun res!1001512 () Bool)

(declare-fun e!1507421 () Bool)

(assert (=> start!231466 (=> (not res!1001512) (not e!1507421))))

(declare-datatypes ((LexerInterface!4040 0))(
  ( (LexerInterfaceExt!4037 (__x!18513 Int)) (Lexer!4038) )
))
(declare-fun thiss!13512 () LexerInterface!4040)

(get-info :version)

(assert (=> start!231466 (= res!1001512 ((_ is Lexer!4038) thiss!13512))))

(assert (=> start!231466 e!1507421))

(assert (=> start!231466 true))

(declare-fun e!1507418 () Bool)

(assert (=> start!231466 e!1507418))

(assert (=> start!231466 e!1507422))

(declare-fun b!2359906 () Bool)

(declare-fun res!1001511 () Bool)

(assert (=> b!2359906 (=> (not res!1001511) (not e!1507421))))

(declare-datatypes ((List!28024 0))(
  ( (Nil!27926) (Cons!27926 (h!33327 (_ BitVec 16)) (t!207901 List!28024)) )
))
(declare-datatypes ((TokenValue!4629 0))(
  ( (FloatLiteralValue!9258 (text!32848 List!28024)) (TokenValueExt!4628 (__x!18514 Int)) (Broken!23145 (value!141475 List!28024)) (Object!4726) (End!4629) (Def!4629) (Underscore!4629) (Match!4629) (Else!4629) (Error!4629) (Case!4629) (If!4629) (Extends!4629) (Abstract!4629) (Class!4629) (Val!4629) (DelimiterValue!9258 (del!4689 List!28024)) (KeywordValue!4635 (value!141476 List!28024)) (CommentValue!9258 (value!141477 List!28024)) (WhitespaceValue!9258 (value!141478 List!28024)) (IndentationValue!4629 (value!141479 List!28024)) (String!30744) (Int32!4629) (Broken!23146 (value!141480 List!28024)) (Boolean!4630) (Unit!40836) (OperatorValue!4632 (op!4689 List!28024)) (IdentifierValue!9258 (value!141481 List!28024)) (IdentifierValue!9259 (value!141482 List!28024)) (WhitespaceValue!9259 (value!141483 List!28024)) (True!9258) (False!9258) (Broken!23147 (value!141484 List!28024)) (Broken!23148 (value!141485 List!28024)) (True!9259) (RightBrace!4629) (RightBracket!4629) (Colon!4629) (Null!4629) (Comma!4629) (LeftBracket!4629) (False!9259) (LeftBrace!4629) (ImaginaryLiteralValue!4629 (text!32849 List!28024)) (StringLiteralValue!13887 (value!141486 List!28024)) (EOFValue!4629 (value!141487 List!28024)) (IdentValue!4629 (value!141488 List!28024)) (DelimiterValue!9259 (value!141489 List!28024)) (DedentValue!4629 (value!141490 List!28024)) (NewLineValue!4629 (value!141491 List!28024)) (IntegerValue!13887 (value!141492 (_ BitVec 32)) (text!32850 List!28024)) (IntegerValue!13888 (value!141493 Int) (text!32851 List!28024)) (Times!4629) (Or!4629) (Equal!4629) (Minus!4629) (Broken!23149 (value!141494 List!28024)) (And!4629) (Div!4629) (LessEqual!4629) (Mod!4629) (Concat!11530) (Not!4629) (Plus!4629) (SpaceValue!4629 (value!141495 List!28024)) (IntegerValue!13889 (value!141496 Int) (text!32852 List!28024)) (StringLiteralValue!13888 (text!32853 List!28024)) (FloatLiteralValue!9259 (text!32854 List!28024)) (BytesLiteralValue!4629 (value!141497 List!28024)) (CommentValue!9259 (value!141498 List!28024)) (StringLiteralValue!13889 (value!141499 List!28024)) (ErrorTokenValue!4629 (msg!4690 List!28024)) )
))
(declare-datatypes ((String!30745 0))(
  ( (String!30746 (value!141500 String)) )
))
(declare-datatypes ((C!13960 0))(
  ( (C!13961 (val!8222 Int)) )
))
(declare-datatypes ((Regex!6901 0))(
  ( (ElementMatch!6901 (c!375104 C!13960)) (Concat!11531 (regOne!14314 Regex!6901) (regTwo!14314 Regex!6901)) (EmptyExpr!6901) (Star!6901 (reg!7230 Regex!6901)) (EmptyLang!6901) (Union!6901 (regOne!14315 Regex!6901) (regTwo!14315 Regex!6901)) )
))
(declare-datatypes ((List!28025 0))(
  ( (Nil!27927) (Cons!27927 (h!33328 C!13960) (t!207902 List!28025)) )
))
(declare-datatypes ((IArray!18295 0))(
  ( (IArray!18296 (innerList!9205 List!28025)) )
))
(declare-datatypes ((Conc!9145 0))(
  ( (Node!9145 (left!21231 Conc!9145) (right!21561 Conc!9145) (csize!18520 Int) (cheight!9356 Int)) (Leaf!13500 (xs!12125 IArray!18295) (csize!18521 Int)) (Empty!9145) )
))
(declare-datatypes ((BalanceConc!17902 0))(
  ( (BalanceConc!17903 (c!375105 Conc!9145)) )
))
(declare-datatypes ((TokenValueInjection!8758 0))(
  ( (TokenValueInjection!8759 (toValue!6283 Int) (toChars!6142 Int)) )
))
(declare-datatypes ((Rule!8686 0))(
  ( (Rule!8687 (regex!4443 Regex!6901) (tag!4933 String!30745) (isSeparator!4443 Bool) (transformation!4443 TokenValueInjection!8758)) )
))
(declare-datatypes ((List!28026 0))(
  ( (Nil!27928) (Cons!27928 (h!33329 Rule!8686) (t!207903 List!28026)) )
))
(declare-fun rules!1706 () List!28026)

(declare-fun rulesInvariant!3540 (LexerInterface!4040 List!28026) Bool)

(assert (=> b!2359906 (= res!1001511 (rulesInvariant!3540 thiss!13512 rules!1706))))

(declare-fun b!2359907 () Bool)

(declare-fun e!1507420 () Bool)

(declare-fun tp!754755 () Bool)

(assert (=> b!2359907 (= e!1507418 (and e!1507420 tp!754755))))

(declare-fun b!2359908 () Bool)

(declare-fun e!1507423 () Bool)

(declare-datatypes ((Token!8356 0))(
  ( (Token!8357 (value!141501 TokenValue!4629) (rule!6795 Rule!8686) (size!22111 Int) (originalCharacters!5209 List!28025)) )
))
(declare-datatypes ((tuple2!27660 0))(
  ( (tuple2!27661 (_1!16371 Token!8356) (_2!16371 List!28025)) )
))
(declare-datatypes ((Option!5450 0))(
  ( (None!5449) (Some!5449 (v!30851 tuple2!27660)) )
))
(declare-fun lt!864093 () Option!5450)

(declare-fun input!1160 () List!28025)

(declare-fun ++!6876 (List!28025 List!28025) List!28025)

(declare-fun list!11077 (BalanceConc!17902) List!28025)

(declare-fun charsOf!2803 (Token!8356) BalanceConc!17902)

(assert (=> b!2359908 (= e!1507423 (not (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))) (_2!16371 (v!30851 lt!864093))) input!1160)))))

(declare-datatypes ((List!28027 0))(
  ( (Nil!27929) (Cons!27929 (h!33330 Token!8356) (t!207904 List!28027)) )
))
(declare-datatypes ((tuple2!27662 0))(
  ( (tuple2!27663 (_1!16372 List!28027) (_2!16372 List!28025)) )
))
(declare-fun lt!864094 () tuple2!27662)

(declare-fun lexRegexList!2 (LexerInterface!4040 List!28026 List!28025) tuple2!27662)

(assert (=> b!2359908 (= lt!864094 (lexRegexList!2 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864093))))))

(declare-fun b!2359909 () Bool)

(declare-fun res!1001514 () Bool)

(assert (=> b!2359909 (=> (not res!1001514) (not e!1507421))))

(declare-fun isEmpty!15861 (List!28026) Bool)

(assert (=> b!2359909 (= res!1001514 (not (isEmpty!15861 rules!1706)))))

(declare-fun e!1507419 () Bool)

(assert (=> b!2359910 (= e!1507419 (and tp!754756 tp!754757))))

(declare-fun tp!754753 () Bool)

(declare-fun b!2359911 () Bool)

(declare-fun inv!38143 (String!30745) Bool)

(declare-fun inv!38145 (TokenValueInjection!8758) Bool)

(assert (=> b!2359911 (= e!1507420 (and tp!754753 (inv!38143 (tag!4933 (h!33329 rules!1706))) (inv!38145 (transformation!4443 (h!33329 rules!1706))) e!1507419))))

(declare-fun b!2359912 () Bool)

(assert (=> b!2359912 (= e!1507421 e!1507423)))

(declare-fun res!1001513 () Bool)

(assert (=> b!2359912 (=> (not res!1001513) (not e!1507423))))

(assert (=> b!2359912 (= res!1001513 ((_ is Some!5449) lt!864093))))

(declare-fun maxPrefix!2270 (LexerInterface!4040 List!28026 List!28025) Option!5450)

(assert (=> b!2359912 (= lt!864093 (maxPrefix!2270 thiss!13512 rules!1706 input!1160))))

(assert (= (and start!231466 res!1001512) b!2359909))

(assert (= (and b!2359909 res!1001514) b!2359906))

(assert (= (and b!2359906 res!1001511) b!2359912))

(assert (= (and b!2359912 res!1001513) b!2359908))

(assert (= b!2359911 b!2359910))

(assert (= b!2359907 b!2359911))

(assert (= (and start!231466 ((_ is Cons!27928) rules!1706)) b!2359907))

(assert (= (and start!231466 ((_ is Cons!27927) input!1160)) b!2359905))

(declare-fun m!2772293 () Bool)

(assert (=> b!2359906 m!2772293))

(declare-fun m!2772295 () Bool)

(assert (=> b!2359911 m!2772295))

(declare-fun m!2772297 () Bool)

(assert (=> b!2359911 m!2772297))

(declare-fun m!2772299 () Bool)

(assert (=> b!2359912 m!2772299))

(declare-fun m!2772301 () Bool)

(assert (=> b!2359908 m!2772301))

(assert (=> b!2359908 m!2772301))

(declare-fun m!2772303 () Bool)

(assert (=> b!2359908 m!2772303))

(assert (=> b!2359908 m!2772303))

(declare-fun m!2772305 () Bool)

(assert (=> b!2359908 m!2772305))

(declare-fun m!2772307 () Bool)

(assert (=> b!2359908 m!2772307))

(declare-fun m!2772309 () Bool)

(assert (=> b!2359909 m!2772309))

(check-sat (not b_next!71187) (not b!2359906) (not b!2359907) (not b!2359905) b_and!185419 (not b!2359911) b_and!185417 (not b!2359909) (not b!2359912) tp_is_empty!11219 (not b!2359908) (not b_next!71185))
(check-sat b_and!185419 b_and!185417 (not b_next!71185) (not b_next!71187))
(get-model)

(declare-fun b!2359955 () Bool)

(declare-fun res!1001554 () Bool)

(declare-fun e!1507444 () Bool)

(assert (=> b!2359955 (=> (not res!1001554) (not e!1507444))))

(declare-fun lt!864117 () Option!5450)

(declare-fun get!8472 (Option!5450) tuple2!27660)

(assert (=> b!2359955 (= res!1001554 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))) (_2!16371 (get!8472 lt!864117))) input!1160))))

(declare-fun b!2359956 () Bool)

(declare-fun e!1507445 () Bool)

(assert (=> b!2359956 (= e!1507445 e!1507444)))

(declare-fun res!1001557 () Bool)

(assert (=> b!2359956 (=> (not res!1001557) (not e!1507444))))

(declare-fun isDefined!4278 (Option!5450) Bool)

(assert (=> b!2359956 (= res!1001557 (isDefined!4278 lt!864117))))

(declare-fun b!2359957 () Bool)

(declare-fun res!1001558 () Bool)

(assert (=> b!2359957 (=> (not res!1001558) (not e!1507444))))

(declare-fun size!22113 (List!28025) Int)

(assert (=> b!2359957 (= res!1001558 (< (size!22113 (_2!16371 (get!8472 lt!864117))) (size!22113 input!1160)))))

(declare-fun b!2359958 () Bool)

(declare-fun e!1507443 () Option!5450)

(declare-fun call!143635 () Option!5450)

(assert (=> b!2359958 (= e!1507443 call!143635)))

(declare-fun d!693653 () Bool)

(assert (=> d!693653 e!1507445))

(declare-fun res!1001556 () Bool)

(assert (=> d!693653 (=> res!1001556 e!1507445)))

(declare-fun isEmpty!15864 (Option!5450) Bool)

(assert (=> d!693653 (= res!1001556 (isEmpty!15864 lt!864117))))

(assert (=> d!693653 (= lt!864117 e!1507443)))

(declare-fun c!375110 () Bool)

(assert (=> d!693653 (= c!375110 (and ((_ is Cons!27928) rules!1706) ((_ is Nil!27928) (t!207903 rules!1706))))))

(declare-datatypes ((Unit!40839 0))(
  ( (Unit!40840) )
))
(declare-fun lt!864115 () Unit!40839)

(declare-fun lt!864119 () Unit!40839)

(assert (=> d!693653 (= lt!864115 lt!864119)))

(declare-fun isPrefix!2405 (List!28025 List!28025) Bool)

(assert (=> d!693653 (isPrefix!2405 input!1160 input!1160)))

(declare-fun lemmaIsPrefixRefl!1531 (List!28025 List!28025) Unit!40839)

(assert (=> d!693653 (= lt!864119 (lemmaIsPrefixRefl!1531 input!1160 input!1160))))

(declare-fun rulesValidInductive!1573 (LexerInterface!4040 List!28026) Bool)

(assert (=> d!693653 (rulesValidInductive!1573 thiss!13512 rules!1706)))

(assert (=> d!693653 (= (maxPrefix!2270 thiss!13512 rules!1706 input!1160) lt!864117)))

(declare-fun b!2359959 () Bool)

(declare-fun lt!864116 () Option!5450)

(declare-fun lt!864118 () Option!5450)

(assert (=> b!2359959 (= e!1507443 (ite (and ((_ is None!5449) lt!864116) ((_ is None!5449) lt!864118)) None!5449 (ite ((_ is None!5449) lt!864118) lt!864116 (ite ((_ is None!5449) lt!864116) lt!864118 (ite (>= (size!22111 (_1!16371 (v!30851 lt!864116))) (size!22111 (_1!16371 (v!30851 lt!864118)))) lt!864116 lt!864118)))))))

(assert (=> b!2359959 (= lt!864116 call!143635)))

(assert (=> b!2359959 (= lt!864118 (maxPrefix!2270 thiss!13512 (t!207903 rules!1706) input!1160))))

(declare-fun b!2359960 () Bool)

(declare-fun contains!4876 (List!28026 Rule!8686) Bool)

(assert (=> b!2359960 (= e!1507444 (contains!4876 rules!1706 (rule!6795 (_1!16371 (get!8472 lt!864117)))))))

(declare-fun b!2359961 () Bool)

(declare-fun res!1001559 () Bool)

(assert (=> b!2359961 (=> (not res!1001559) (not e!1507444))))

(declare-fun matchR!3022 (Regex!6901 List!28025) Bool)

(assert (=> b!2359961 (= res!1001559 (matchR!3022 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun bm!143630 () Bool)

(declare-fun maxPrefixOneRule!1438 (LexerInterface!4040 Rule!8686 List!28025) Option!5450)

(assert (=> bm!143630 (= call!143635 (maxPrefixOneRule!1438 thiss!13512 (h!33329 rules!1706) input!1160))))

(declare-fun b!2359962 () Bool)

(declare-fun res!1001553 () Bool)

(assert (=> b!2359962 (=> (not res!1001553) (not e!1507444))))

(assert (=> b!2359962 (= res!1001553 (= (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))) (originalCharacters!5209 (_1!16371 (get!8472 lt!864117)))))))

(declare-fun b!2359963 () Bool)

(declare-fun res!1001555 () Bool)

(assert (=> b!2359963 (=> (not res!1001555) (not e!1507444))))

(declare-fun apply!6710 (TokenValueInjection!8758 BalanceConc!17902) TokenValue!4629)

(declare-fun seqFromList!3129 (List!28025) BalanceConc!17902)

(assert (=> b!2359963 (= res!1001555 (= (value!141501 (_1!16371 (get!8472 lt!864117))) (apply!6710 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117)))))))))

(assert (= (and d!693653 c!375110) b!2359958))

(assert (= (and d!693653 (not c!375110)) b!2359959))

(assert (= (or b!2359958 b!2359959) bm!143630))

(assert (= (and d!693653 (not res!1001556)) b!2359956))

(assert (= (and b!2359956 res!1001557) b!2359962))

(assert (= (and b!2359962 res!1001553) b!2359957))

(assert (= (and b!2359957 res!1001558) b!2359955))

(assert (= (and b!2359955 res!1001554) b!2359963))

(assert (= (and b!2359963 res!1001555) b!2359961))

(assert (= (and b!2359961 res!1001559) b!2359960))

(declare-fun m!2772319 () Bool)

(assert (=> b!2359959 m!2772319))

(declare-fun m!2772321 () Bool)

(assert (=> b!2359956 m!2772321))

(declare-fun m!2772323 () Bool)

(assert (=> b!2359960 m!2772323))

(declare-fun m!2772325 () Bool)

(assert (=> b!2359960 m!2772325))

(declare-fun m!2772327 () Bool)

(assert (=> d!693653 m!2772327))

(declare-fun m!2772329 () Bool)

(assert (=> d!693653 m!2772329))

(declare-fun m!2772331 () Bool)

(assert (=> d!693653 m!2772331))

(declare-fun m!2772333 () Bool)

(assert (=> d!693653 m!2772333))

(assert (=> b!2359961 m!2772323))

(declare-fun m!2772335 () Bool)

(assert (=> b!2359961 m!2772335))

(assert (=> b!2359961 m!2772335))

(declare-fun m!2772337 () Bool)

(assert (=> b!2359961 m!2772337))

(assert (=> b!2359961 m!2772337))

(declare-fun m!2772339 () Bool)

(assert (=> b!2359961 m!2772339))

(assert (=> b!2359955 m!2772323))

(assert (=> b!2359955 m!2772335))

(assert (=> b!2359955 m!2772335))

(assert (=> b!2359955 m!2772337))

(assert (=> b!2359955 m!2772337))

(declare-fun m!2772341 () Bool)

(assert (=> b!2359955 m!2772341))

(declare-fun m!2772343 () Bool)

(assert (=> bm!143630 m!2772343))

(assert (=> b!2359963 m!2772323))

(declare-fun m!2772345 () Bool)

(assert (=> b!2359963 m!2772345))

(assert (=> b!2359963 m!2772345))

(declare-fun m!2772347 () Bool)

(assert (=> b!2359963 m!2772347))

(assert (=> b!2359957 m!2772323))

(declare-fun m!2772349 () Bool)

(assert (=> b!2359957 m!2772349))

(declare-fun m!2772351 () Bool)

(assert (=> b!2359957 m!2772351))

(assert (=> b!2359962 m!2772323))

(assert (=> b!2359962 m!2772335))

(assert (=> b!2359962 m!2772335))

(assert (=> b!2359962 m!2772337))

(assert (=> b!2359912 d!693653))

(declare-fun d!693665 () Bool)

(declare-fun res!1001569 () Bool)

(declare-fun e!1507451 () Bool)

(assert (=> d!693665 (=> (not res!1001569) (not e!1507451))))

(declare-fun rulesValid!1649 (LexerInterface!4040 List!28026) Bool)

(assert (=> d!693665 (= res!1001569 (rulesValid!1649 thiss!13512 rules!1706))))

(assert (=> d!693665 (= (rulesInvariant!3540 thiss!13512 rules!1706) e!1507451)))

(declare-fun b!2359975 () Bool)

(declare-datatypes ((List!28029 0))(
  ( (Nil!27931) (Cons!27931 (h!33332 String!30745) (t!207914 List!28029)) )
))
(declare-fun noDuplicateTag!1647 (LexerInterface!4040 List!28026 List!28029) Bool)

(assert (=> b!2359975 (= e!1507451 (noDuplicateTag!1647 thiss!13512 rules!1706 Nil!27931))))

(assert (= (and d!693665 res!1001569) b!2359975))

(declare-fun m!2772387 () Bool)

(assert (=> d!693665 m!2772387))

(declare-fun m!2772389 () Bool)

(assert (=> b!2359975 m!2772389))

(assert (=> b!2359906 d!693665))

(declare-fun d!693669 () Bool)

(assert (=> d!693669 (= (inv!38143 (tag!4933 (h!33329 rules!1706))) (= (mod (str.len (value!141500 (tag!4933 (h!33329 rules!1706)))) 2) 0))))

(assert (=> b!2359911 d!693669))

(declare-fun d!693671 () Bool)

(declare-fun res!1001578 () Bool)

(declare-fun e!1507460 () Bool)

(assert (=> d!693671 (=> (not res!1001578) (not e!1507460))))

(declare-fun semiInverseModEq!1824 (Int Int) Bool)

(assert (=> d!693671 (= res!1001578 (semiInverseModEq!1824 (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toValue!6283 (transformation!4443 (h!33329 rules!1706)))))))

(assert (=> d!693671 (= (inv!38145 (transformation!4443 (h!33329 rules!1706))) e!1507460)))

(declare-fun b!2359990 () Bool)

(declare-fun equivClasses!1735 (Int Int) Bool)

(assert (=> b!2359990 (= e!1507460 (equivClasses!1735 (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toValue!6283 (transformation!4443 (h!33329 rules!1706)))))))

(assert (= (and d!693671 res!1001578) b!2359990))

(declare-fun m!2772407 () Bool)

(assert (=> d!693671 m!2772407))

(declare-fun m!2772409 () Bool)

(assert (=> b!2359990 m!2772409))

(assert (=> b!2359911 d!693671))

(declare-fun d!693677 () Bool)

(assert (=> d!693677 (= (isEmpty!15861 rules!1706) ((_ is Nil!27928) rules!1706))))

(assert (=> b!2359909 d!693677))

(declare-fun b!2360005 () Bool)

(declare-fun e!1507469 () List!28025)

(assert (=> b!2360005 (= e!1507469 (Cons!27927 (h!33328 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) (++!6876 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) (_2!16371 (v!30851 lt!864093)))))))

(declare-fun d!693679 () Bool)

(declare-fun e!1507468 () Bool)

(assert (=> d!693679 e!1507468))

(declare-fun res!1001584 () Bool)

(assert (=> d!693679 (=> (not res!1001584) (not e!1507468))))

(declare-fun lt!864133 () List!28025)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3789 (List!28025) (InoxSet C!13960))

(assert (=> d!693679 (= res!1001584 (= (content!3789 lt!864133) ((_ map or) (content!3789 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) (content!3789 (_2!16371 (v!30851 lt!864093))))))))

(assert (=> d!693679 (= lt!864133 e!1507469)))

(declare-fun c!375117 () Bool)

(assert (=> d!693679 (= c!375117 ((_ is Nil!27927) (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(assert (=> d!693679 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))) (_2!16371 (v!30851 lt!864093))) lt!864133)))

(declare-fun b!2360004 () Bool)

(assert (=> b!2360004 (= e!1507469 (_2!16371 (v!30851 lt!864093)))))

(declare-fun b!2360006 () Bool)

(declare-fun res!1001583 () Bool)

(assert (=> b!2360006 (=> (not res!1001583) (not e!1507468))))

(assert (=> b!2360006 (= res!1001583 (= (size!22113 lt!864133) (+ (size!22113 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) (size!22113 (_2!16371 (v!30851 lt!864093))))))))

(declare-fun b!2360007 () Bool)

(assert (=> b!2360007 (= e!1507468 (or (not (= (_2!16371 (v!30851 lt!864093)) Nil!27927)) (= lt!864133 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))))))

(assert (= (and d!693679 c!375117) b!2360004))

(assert (= (and d!693679 (not c!375117)) b!2360005))

(assert (= (and d!693679 res!1001584) b!2360006))

(assert (= (and b!2360006 res!1001583) b!2360007))

(declare-fun m!2772419 () Bool)

(assert (=> b!2360005 m!2772419))

(declare-fun m!2772421 () Bool)

(assert (=> d!693679 m!2772421))

(assert (=> d!693679 m!2772303))

(declare-fun m!2772423 () Bool)

(assert (=> d!693679 m!2772423))

(declare-fun m!2772425 () Bool)

(assert (=> d!693679 m!2772425))

(declare-fun m!2772427 () Bool)

(assert (=> b!2360006 m!2772427))

(assert (=> b!2360006 m!2772303))

(declare-fun m!2772429 () Bool)

(assert (=> b!2360006 m!2772429))

(declare-fun m!2772431 () Bool)

(assert (=> b!2360006 m!2772431))

(assert (=> b!2359908 d!693679))

(declare-fun d!693683 () Bool)

(declare-fun list!11079 (Conc!9145) List!28025)

(assert (=> d!693683 (= (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))) (list!11079 (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(declare-fun bs!460503 () Bool)

(assert (= bs!460503 d!693683))

(declare-fun m!2772433 () Bool)

(assert (=> bs!460503 m!2772433))

(assert (=> b!2359908 d!693683))

(declare-fun d!693685 () Bool)

(declare-fun lt!864142 () BalanceConc!17902)

(assert (=> d!693685 (= (list!11077 lt!864142) (originalCharacters!5209 (_1!16371 (v!30851 lt!864093))))))

(declare-fun dynLambda!12017 (Int TokenValue!4629) BalanceConc!17902)

(assert (=> d!693685 (= lt!864142 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))))

(assert (=> d!693685 (= (charsOf!2803 (_1!16371 (v!30851 lt!864093))) lt!864142)))

(declare-fun b_lambda!73765 () Bool)

(assert (=> (not b_lambda!73765) (not d!693685)))

(declare-fun tb!138743 () Bool)

(declare-fun t!207908 () Bool)

(assert (=> (and b!2359910 (= (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093)))))) t!207908) tb!138743))

(declare-fun b!2360037 () Bool)

(declare-fun e!1507483 () Bool)

(declare-fun tp!754769 () Bool)

(declare-fun inv!38148 (Conc!9145) Bool)

(assert (=> b!2360037 (= e!1507483 (and (inv!38148 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))) tp!754769))))

(declare-fun result!169652 () Bool)

(declare-fun inv!38149 (BalanceConc!17902) Bool)

(assert (=> tb!138743 (= result!169652 (and (inv!38149 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))) e!1507483))))

(assert (= tb!138743 b!2360037))

(declare-fun m!2772445 () Bool)

(assert (=> b!2360037 m!2772445))

(declare-fun m!2772447 () Bool)

(assert (=> tb!138743 m!2772447))

(assert (=> d!693685 t!207908))

(declare-fun b_and!185423 () Bool)

(assert (= b_and!185419 (and (=> t!207908 result!169652) b_and!185423)))

(declare-fun m!2772449 () Bool)

(assert (=> d!693685 m!2772449))

(declare-fun m!2772451 () Bool)

(assert (=> d!693685 m!2772451))

(assert (=> b!2359908 d!693685))

(declare-fun b!2360068 () Bool)

(declare-fun e!1507508 () tuple2!27662)

(assert (=> b!2360068 (= e!1507508 (tuple2!27663 Nil!27929 (_2!16371 (v!30851 lt!864093))))))

(declare-fun d!693687 () Bool)

(declare-fun e!1507507 () Bool)

(assert (=> d!693687 e!1507507))

(declare-fun c!375128 () Bool)

(declare-fun lt!864154 () tuple2!27662)

(declare-fun size!22115 (List!28027) Int)

(assert (=> d!693687 (= c!375128 (> (size!22115 (_1!16372 lt!864154)) 0))))

(assert (=> d!693687 (= lt!864154 e!1507508)))

(declare-fun c!375129 () Bool)

(declare-fun lt!864152 () Option!5450)

(assert (=> d!693687 (= c!375129 ((_ is Some!5449) lt!864152))))

(assert (=> d!693687 (= lt!864152 (maxPrefix!2270 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864093))))))

(assert (=> d!693687 (= (lexRegexList!2 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864093))) lt!864154)))

(declare-fun b!2360069 () Bool)

(declare-fun e!1507506 () Bool)

(declare-fun isEmpty!15865 (List!28027) Bool)

(assert (=> b!2360069 (= e!1507506 (not (isEmpty!15865 (_1!16372 lt!864154))))))

(declare-fun b!2360070 () Bool)

(assert (=> b!2360070 (= e!1507507 (= (_2!16372 lt!864154) (_2!16371 (v!30851 lt!864093))))))

(declare-fun b!2360071 () Bool)

(assert (=> b!2360071 (= e!1507507 e!1507506)))

(declare-fun res!1001590 () Bool)

(assert (=> b!2360071 (= res!1001590 (< (size!22113 (_2!16372 lt!864154)) (size!22113 (_2!16371 (v!30851 lt!864093)))))))

(assert (=> b!2360071 (=> (not res!1001590) (not e!1507506))))

(declare-fun b!2360072 () Bool)

(declare-fun lt!864153 () tuple2!27662)

(assert (=> b!2360072 (= e!1507508 (tuple2!27663 (Cons!27929 (_1!16371 (v!30851 lt!864152)) (_1!16372 lt!864153)) (_2!16372 lt!864153)))))

(assert (=> b!2360072 (= lt!864153 (lexRegexList!2 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864152))))))

(assert (= (and d!693687 c!375129) b!2360072))

(assert (= (and d!693687 (not c!375129)) b!2360068))

(assert (= (and d!693687 c!375128) b!2360071))

(assert (= (and d!693687 (not c!375128)) b!2360070))

(assert (= (and b!2360071 res!1001590) b!2360069))

(declare-fun m!2772457 () Bool)

(assert (=> d!693687 m!2772457))

(declare-fun m!2772459 () Bool)

(assert (=> d!693687 m!2772459))

(declare-fun m!2772461 () Bool)

(assert (=> b!2360069 m!2772461))

(declare-fun m!2772463 () Bool)

(assert (=> b!2360071 m!2772463))

(assert (=> b!2360071 m!2772431))

(declare-fun m!2772465 () Bool)

(assert (=> b!2360072 m!2772465))

(assert (=> b!2359908 d!693687))

(declare-fun b!2360083 () Bool)

(declare-fun b_free!70489 () Bool)

(declare-fun b_next!71193 () Bool)

(assert (=> b!2360083 (= b_free!70489 (not b_next!71193))))

(declare-fun tp!754802 () Bool)

(declare-fun b_and!185429 () Bool)

(assert (=> b!2360083 (= tp!754802 b_and!185429)))

(declare-fun b_free!70491 () Bool)

(declare-fun b_next!71195 () Bool)

(assert (=> b!2360083 (= b_free!70491 (not b_next!71195))))

(declare-fun t!207913 () Bool)

(declare-fun tb!138747 () Bool)

(assert (=> (and b!2360083 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093)))))) t!207913) tb!138747))

(declare-fun result!169666 () Bool)

(assert (= result!169666 result!169652))

(assert (=> d!693685 t!207913))

(declare-fun tp!754805 () Bool)

(declare-fun b_and!185431 () Bool)

(assert (=> b!2360083 (= tp!754805 (and (=> t!207913 result!169666) b_and!185431))))

(declare-fun e!1507517 () Bool)

(assert (=> b!2360083 (= e!1507517 (and tp!754802 tp!754805))))

(declare-fun tp!754804 () Bool)

(declare-fun b!2360082 () Bool)

(declare-fun e!1507520 () Bool)

(assert (=> b!2360082 (= e!1507520 (and tp!754804 (inv!38143 (tag!4933 (h!33329 (t!207903 rules!1706)))) (inv!38145 (transformation!4443 (h!33329 (t!207903 rules!1706)))) e!1507517))))

(declare-fun b!2360081 () Bool)

(declare-fun e!1507518 () Bool)

(declare-fun tp!754803 () Bool)

(assert (=> b!2360081 (= e!1507518 (and e!1507520 tp!754803))))

(assert (=> b!2359907 (= tp!754755 e!1507518)))

(assert (= b!2360082 b!2360083))

(assert (= b!2360081 b!2360082))

(assert (= (and b!2359907 ((_ is Cons!27928) (t!207903 rules!1706))) b!2360081))

(declare-fun m!2772467 () Bool)

(assert (=> b!2360082 m!2772467))

(declare-fun m!2772469 () Bool)

(assert (=> b!2360082 m!2772469))

(declare-fun b!2360095 () Bool)

(declare-fun e!1507523 () Bool)

(declare-fun tp!754818 () Bool)

(declare-fun tp!754819 () Bool)

(assert (=> b!2360095 (= e!1507523 (and tp!754818 tp!754819))))

(declare-fun b!2360094 () Bool)

(assert (=> b!2360094 (= e!1507523 tp_is_empty!11219)))

(declare-fun b!2360097 () Bool)

(declare-fun tp!754816 () Bool)

(declare-fun tp!754817 () Bool)

(assert (=> b!2360097 (= e!1507523 (and tp!754816 tp!754817))))

(assert (=> b!2359911 (= tp!754753 e!1507523)))

(declare-fun b!2360096 () Bool)

(declare-fun tp!754820 () Bool)

(assert (=> b!2360096 (= e!1507523 tp!754820)))

(assert (= (and b!2359911 ((_ is ElementMatch!6901) (regex!4443 (h!33329 rules!1706)))) b!2360094))

(assert (= (and b!2359911 ((_ is Concat!11531) (regex!4443 (h!33329 rules!1706)))) b!2360095))

(assert (= (and b!2359911 ((_ is Star!6901) (regex!4443 (h!33329 rules!1706)))) b!2360096))

(assert (= (and b!2359911 ((_ is Union!6901) (regex!4443 (h!33329 rules!1706)))) b!2360097))

(declare-fun b!2360102 () Bool)

(declare-fun e!1507526 () Bool)

(declare-fun tp!754823 () Bool)

(assert (=> b!2360102 (= e!1507526 (and tp_is_empty!11219 tp!754823))))

(assert (=> b!2359905 (= tp!754754 e!1507526)))

(assert (= (and b!2359905 ((_ is Cons!27927) (t!207902 input!1160))) b!2360102))

(check-sat (not b_next!71187) (not b!2359957) (not b!2360096) (not b!2359990) b_and!185423 (not b!2360069) b_and!185417 (not b!2359956) (not tb!138743) (not d!693679) (not b!2359963) (not b!2360037) b_and!185429 (not b!2359962) (not b!2360072) (not d!693653) (not d!693665) (not b!2360005) (not bm!143630) (not b!2359961) (not b!2360071) (not b!2360095) (not d!693687) b_and!185431 (not b!2360102) (not d!693685) (not b_next!71193) (not d!693671) (not b_next!71185) (not b!2359975) (not b!2360081) (not b!2360097) (not d!693683) (not b_next!71195) (not b!2360082) (not b!2360006) (not b_lambda!73765) (not b!2359955) (not b!2359959) (not b!2359960) tp_is_empty!11219)
(check-sat (not b_next!71187) b_and!185429 b_and!185423 b_and!185417 b_and!185431 (not b_next!71193) (not b_next!71185) (not b_next!71195))
(get-model)

(declare-fun d!693711 () Bool)

(assert (=> d!693711 (= (get!8472 lt!864117) (v!30851 lt!864117))))

(assert (=> b!2359963 d!693711))

(declare-fun d!693715 () Bool)

(declare-fun dynLambda!12019 (Int BalanceConc!17902) TokenValue!4629)

(assert (=> d!693715 (= (apply!6710 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117))))) (dynLambda!12019 (toValue!6283 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun b_lambda!73771 () Bool)

(assert (=> (not b_lambda!73771) (not d!693715)))

(declare-fun tb!138757 () Bool)

(declare-fun t!207925 () Bool)

(assert (=> (and b!2359910 (= (toValue!6283 (transformation!4443 (h!33329 rules!1706))) (toValue!6283 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207925) tb!138757))

(declare-fun result!169682 () Bool)

(declare-fun inv!21 (TokenValue!4629) Bool)

(assert (=> tb!138757 (= result!169682 (inv!21 (dynLambda!12019 (toValue!6283 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117)))))))))

(declare-fun m!2772517 () Bool)

(assert (=> tb!138757 m!2772517))

(assert (=> d!693715 t!207925))

(declare-fun b_and!185441 () Bool)

(assert (= b_and!185417 (and (=> t!207925 result!169682) b_and!185441)))

(declare-fun t!207927 () Bool)

(declare-fun tb!138759 () Bool)

(assert (=> (and b!2360083 (= (toValue!6283 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toValue!6283 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207927) tb!138759))

(declare-fun result!169686 () Bool)

(assert (= result!169686 result!169682))

(assert (=> d!693715 t!207927))

(declare-fun b_and!185443 () Bool)

(assert (= b_and!185429 (and (=> t!207927 result!169686) b_and!185443)))

(assert (=> d!693715 m!2772345))

(declare-fun m!2772531 () Bool)

(assert (=> d!693715 m!2772531))

(assert (=> b!2359963 d!693715))

(declare-fun d!693717 () Bool)

(declare-fun fromListB!1413 (List!28025) BalanceConc!17902)

(assert (=> d!693717 (= (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117)))) (fromListB!1413 (originalCharacters!5209 (_1!16371 (get!8472 lt!864117)))))))

(declare-fun bs!460507 () Bool)

(assert (= bs!460507 d!693717))

(declare-fun m!2772547 () Bool)

(assert (=> bs!460507 m!2772547))

(assert (=> b!2359963 d!693717))

(declare-fun d!693721 () Bool)

(assert (=> d!693721 true))

(declare-fun order!15451 () Int)

(declare-fun lambda!86809 () Int)

(declare-fun order!15449 () Int)

(declare-fun dynLambda!12020 (Int Int) Int)

(declare-fun dynLambda!12021 (Int Int) Int)

(assert (=> d!693721 (< (dynLambda!12020 order!15449 (toValue!6283 (transformation!4443 (h!33329 rules!1706)))) (dynLambda!12021 order!15451 lambda!86809))))

(declare-fun Forall2!736 (Int) Bool)

(assert (=> d!693721 (= (equivClasses!1735 (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toValue!6283 (transformation!4443 (h!33329 rules!1706)))) (Forall2!736 lambda!86809))))

(declare-fun bs!460510 () Bool)

(assert (= bs!460510 d!693721))

(declare-fun m!2772563 () Bool)

(assert (=> bs!460510 m!2772563))

(assert (=> b!2359990 d!693721))

(declare-fun d!693735 () Bool)

(declare-fun lt!864175 () Int)

(assert (=> d!693735 (>= lt!864175 0)))

(declare-fun e!1507571 () Int)

(assert (=> d!693735 (= lt!864175 e!1507571)))

(declare-fun c!375151 () Bool)

(assert (=> d!693735 (= c!375151 ((_ is Nil!27927) lt!864133))))

(assert (=> d!693735 (= (size!22113 lt!864133) lt!864175)))

(declare-fun b!2360177 () Bool)

(assert (=> b!2360177 (= e!1507571 0)))

(declare-fun b!2360178 () Bool)

(assert (=> b!2360178 (= e!1507571 (+ 1 (size!22113 (t!207902 lt!864133))))))

(assert (= (and d!693735 c!375151) b!2360177))

(assert (= (and d!693735 (not c!375151)) b!2360178))

(declare-fun m!2772577 () Bool)

(assert (=> b!2360178 m!2772577))

(assert (=> b!2360006 d!693735))

(declare-fun d!693743 () Bool)

(declare-fun lt!864176 () Int)

(assert (=> d!693743 (>= lt!864176 0)))

(declare-fun e!1507572 () Int)

(assert (=> d!693743 (= lt!864176 e!1507572)))

(declare-fun c!375152 () Bool)

(assert (=> d!693743 (= c!375152 ((_ is Nil!27927) (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(assert (=> d!693743 (= (size!22113 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) lt!864176)))

(declare-fun b!2360179 () Bool)

(assert (=> b!2360179 (= e!1507572 0)))

(declare-fun b!2360180 () Bool)

(assert (=> b!2360180 (= e!1507572 (+ 1 (size!22113 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))))

(assert (= (and d!693743 c!375152) b!2360179))

(assert (= (and d!693743 (not c!375152)) b!2360180))

(declare-fun m!2772579 () Bool)

(assert (=> b!2360180 m!2772579))

(assert (=> b!2360006 d!693743))

(declare-fun d!693745 () Bool)

(declare-fun lt!864177 () Int)

(assert (=> d!693745 (>= lt!864177 0)))

(declare-fun e!1507573 () Int)

(assert (=> d!693745 (= lt!864177 e!1507573)))

(declare-fun c!375153 () Bool)

(assert (=> d!693745 (= c!375153 ((_ is Nil!27927) (_2!16371 (v!30851 lt!864093))))))

(assert (=> d!693745 (= (size!22113 (_2!16371 (v!30851 lt!864093))) lt!864177)))

(declare-fun b!2360181 () Bool)

(assert (=> b!2360181 (= e!1507573 0)))

(declare-fun b!2360182 () Bool)

(assert (=> b!2360182 (= e!1507573 (+ 1 (size!22113 (t!207902 (_2!16371 (v!30851 lt!864093))))))))

(assert (= (and d!693745 c!375153) b!2360181))

(assert (= (and d!693745 (not c!375153)) b!2360182))

(declare-fun m!2772581 () Bool)

(assert (=> b!2360182 m!2772581))

(assert (=> b!2360006 d!693745))

(declare-fun d!693747 () Bool)

(declare-fun lt!864180 () Int)

(assert (=> d!693747 (>= lt!864180 0)))

(declare-fun e!1507576 () Int)

(assert (=> d!693747 (= lt!864180 e!1507576)))

(declare-fun c!375156 () Bool)

(assert (=> d!693747 (= c!375156 ((_ is Nil!27929) (_1!16372 lt!864154)))))

(assert (=> d!693747 (= (size!22115 (_1!16372 lt!864154)) lt!864180)))

(declare-fun b!2360187 () Bool)

(assert (=> b!2360187 (= e!1507576 0)))

(declare-fun b!2360188 () Bool)

(assert (=> b!2360188 (= e!1507576 (+ 1 (size!22115 (t!207904 (_1!16372 lt!864154)))))))

(assert (= (and d!693747 c!375156) b!2360187))

(assert (= (and d!693747 (not c!375156)) b!2360188))

(declare-fun m!2772583 () Bool)

(assert (=> b!2360188 m!2772583))

(assert (=> d!693687 d!693747))

(declare-fun b!2360189 () Bool)

(declare-fun res!1001621 () Bool)

(declare-fun e!1507578 () Bool)

(assert (=> b!2360189 (=> (not res!1001621) (not e!1507578))))

(declare-fun lt!864183 () Option!5450)

(assert (=> b!2360189 (= res!1001621 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864183)))) (_2!16371 (get!8472 lt!864183))) (_2!16371 (v!30851 lt!864093))))))

(declare-fun b!2360190 () Bool)

(declare-fun e!1507579 () Bool)

(assert (=> b!2360190 (= e!1507579 e!1507578)))

(declare-fun res!1001624 () Bool)

(assert (=> b!2360190 (=> (not res!1001624) (not e!1507578))))

(assert (=> b!2360190 (= res!1001624 (isDefined!4278 lt!864183))))

(declare-fun b!2360191 () Bool)

(declare-fun res!1001625 () Bool)

(assert (=> b!2360191 (=> (not res!1001625) (not e!1507578))))

(assert (=> b!2360191 (= res!1001625 (< (size!22113 (_2!16371 (get!8472 lt!864183))) (size!22113 (_2!16371 (v!30851 lt!864093)))))))

(declare-fun b!2360192 () Bool)

(declare-fun e!1507577 () Option!5450)

(declare-fun call!143638 () Option!5450)

(assert (=> b!2360192 (= e!1507577 call!143638)))

(declare-fun d!693749 () Bool)

(assert (=> d!693749 e!1507579))

(declare-fun res!1001623 () Bool)

(assert (=> d!693749 (=> res!1001623 e!1507579)))

(assert (=> d!693749 (= res!1001623 (isEmpty!15864 lt!864183))))

(assert (=> d!693749 (= lt!864183 e!1507577)))

(declare-fun c!375157 () Bool)

(assert (=> d!693749 (= c!375157 (and ((_ is Cons!27928) rules!1706) ((_ is Nil!27928) (t!207903 rules!1706))))))

(declare-fun lt!864181 () Unit!40839)

(declare-fun lt!864185 () Unit!40839)

(assert (=> d!693749 (= lt!864181 lt!864185)))

(assert (=> d!693749 (isPrefix!2405 (_2!16371 (v!30851 lt!864093)) (_2!16371 (v!30851 lt!864093)))))

(assert (=> d!693749 (= lt!864185 (lemmaIsPrefixRefl!1531 (_2!16371 (v!30851 lt!864093)) (_2!16371 (v!30851 lt!864093))))))

(assert (=> d!693749 (rulesValidInductive!1573 thiss!13512 rules!1706)))

(assert (=> d!693749 (= (maxPrefix!2270 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864093))) lt!864183)))

(declare-fun b!2360193 () Bool)

(declare-fun lt!864182 () Option!5450)

(declare-fun lt!864184 () Option!5450)

(assert (=> b!2360193 (= e!1507577 (ite (and ((_ is None!5449) lt!864182) ((_ is None!5449) lt!864184)) None!5449 (ite ((_ is None!5449) lt!864184) lt!864182 (ite ((_ is None!5449) lt!864182) lt!864184 (ite (>= (size!22111 (_1!16371 (v!30851 lt!864182))) (size!22111 (_1!16371 (v!30851 lt!864184)))) lt!864182 lt!864184)))))))

(assert (=> b!2360193 (= lt!864182 call!143638)))

(assert (=> b!2360193 (= lt!864184 (maxPrefix!2270 thiss!13512 (t!207903 rules!1706) (_2!16371 (v!30851 lt!864093))))))

(declare-fun b!2360194 () Bool)

(assert (=> b!2360194 (= e!1507578 (contains!4876 rules!1706 (rule!6795 (_1!16371 (get!8472 lt!864183)))))))

(declare-fun b!2360195 () Bool)

(declare-fun res!1001626 () Bool)

(assert (=> b!2360195 (=> (not res!1001626) (not e!1507578))))

(assert (=> b!2360195 (= res!1001626 (matchR!3022 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864183)))) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864183))))))))

(declare-fun bm!143633 () Bool)

(assert (=> bm!143633 (= call!143638 (maxPrefixOneRule!1438 thiss!13512 (h!33329 rules!1706) (_2!16371 (v!30851 lt!864093))))))

(declare-fun b!2360196 () Bool)

(declare-fun res!1001620 () Bool)

(assert (=> b!2360196 (=> (not res!1001620) (not e!1507578))))

(assert (=> b!2360196 (= res!1001620 (= (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864183)))) (originalCharacters!5209 (_1!16371 (get!8472 lt!864183)))))))

(declare-fun b!2360197 () Bool)

(declare-fun res!1001622 () Bool)

(assert (=> b!2360197 (=> (not res!1001622) (not e!1507578))))

(assert (=> b!2360197 (= res!1001622 (= (value!141501 (_1!16371 (get!8472 lt!864183))) (apply!6710 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864183)))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864183)))))))))

(assert (= (and d!693749 c!375157) b!2360192))

(assert (= (and d!693749 (not c!375157)) b!2360193))

(assert (= (or b!2360192 b!2360193) bm!143633))

(assert (= (and d!693749 (not res!1001623)) b!2360190))

(assert (= (and b!2360190 res!1001624) b!2360196))

(assert (= (and b!2360196 res!1001620) b!2360191))

(assert (= (and b!2360191 res!1001625) b!2360189))

(assert (= (and b!2360189 res!1001621) b!2360197))

(assert (= (and b!2360197 res!1001622) b!2360195))

(assert (= (and b!2360195 res!1001626) b!2360194))

(declare-fun m!2772585 () Bool)

(assert (=> b!2360193 m!2772585))

(declare-fun m!2772587 () Bool)

(assert (=> b!2360190 m!2772587))

(declare-fun m!2772589 () Bool)

(assert (=> b!2360194 m!2772589))

(declare-fun m!2772591 () Bool)

(assert (=> b!2360194 m!2772591))

(declare-fun m!2772593 () Bool)

(assert (=> d!693749 m!2772593))

(declare-fun m!2772595 () Bool)

(assert (=> d!693749 m!2772595))

(declare-fun m!2772597 () Bool)

(assert (=> d!693749 m!2772597))

(assert (=> d!693749 m!2772333))

(assert (=> b!2360195 m!2772589))

(declare-fun m!2772599 () Bool)

(assert (=> b!2360195 m!2772599))

(assert (=> b!2360195 m!2772599))

(declare-fun m!2772601 () Bool)

(assert (=> b!2360195 m!2772601))

(assert (=> b!2360195 m!2772601))

(declare-fun m!2772603 () Bool)

(assert (=> b!2360195 m!2772603))

(assert (=> b!2360189 m!2772589))

(assert (=> b!2360189 m!2772599))

(assert (=> b!2360189 m!2772599))

(assert (=> b!2360189 m!2772601))

(assert (=> b!2360189 m!2772601))

(declare-fun m!2772605 () Bool)

(assert (=> b!2360189 m!2772605))

(declare-fun m!2772607 () Bool)

(assert (=> bm!143633 m!2772607))

(assert (=> b!2360197 m!2772589))

(declare-fun m!2772609 () Bool)

(assert (=> b!2360197 m!2772609))

(assert (=> b!2360197 m!2772609))

(declare-fun m!2772611 () Bool)

(assert (=> b!2360197 m!2772611))

(assert (=> b!2360191 m!2772589))

(declare-fun m!2772613 () Bool)

(assert (=> b!2360191 m!2772613))

(assert (=> b!2360191 m!2772431))

(assert (=> b!2360196 m!2772589))

(assert (=> b!2360196 m!2772599))

(assert (=> b!2360196 m!2772599))

(assert (=> b!2360196 m!2772601))

(assert (=> d!693687 d!693749))

(declare-fun b!2360199 () Bool)

(declare-fun e!1507581 () List!28025)

(assert (=> b!2360199 (= e!1507581 (Cons!27927 (h!33328 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))) (++!6876 (t!207902 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))) (_2!16371 (v!30851 lt!864093)))))))

(declare-fun d!693751 () Bool)

(declare-fun e!1507580 () Bool)

(assert (=> d!693751 e!1507580))

(declare-fun res!1001628 () Bool)

(assert (=> d!693751 (=> (not res!1001628) (not e!1507580))))

(declare-fun lt!864186 () List!28025)

(assert (=> d!693751 (= res!1001628 (= (content!3789 lt!864186) ((_ map or) (content!3789 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))) (content!3789 (_2!16371 (v!30851 lt!864093))))))))

(assert (=> d!693751 (= lt!864186 e!1507581)))

(declare-fun c!375158 () Bool)

(assert (=> d!693751 (= c!375158 ((_ is Nil!27927) (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))))))

(assert (=> d!693751 (= (++!6876 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) (_2!16371 (v!30851 lt!864093))) lt!864186)))

(declare-fun b!2360198 () Bool)

(assert (=> b!2360198 (= e!1507581 (_2!16371 (v!30851 lt!864093)))))

(declare-fun b!2360200 () Bool)

(declare-fun res!1001627 () Bool)

(assert (=> b!2360200 (=> (not res!1001627) (not e!1507580))))

(assert (=> b!2360200 (= res!1001627 (= (size!22113 lt!864186) (+ (size!22113 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))) (size!22113 (_2!16371 (v!30851 lt!864093))))))))

(declare-fun b!2360201 () Bool)

(assert (=> b!2360201 (= e!1507580 (or (not (= (_2!16371 (v!30851 lt!864093)) Nil!27927)) (= lt!864186 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))))

(assert (= (and d!693751 c!375158) b!2360198))

(assert (= (and d!693751 (not c!375158)) b!2360199))

(assert (= (and d!693751 res!1001628) b!2360200))

(assert (= (and b!2360200 res!1001627) b!2360201))

(declare-fun m!2772615 () Bool)

(assert (=> b!2360199 m!2772615))

(declare-fun m!2772617 () Bool)

(assert (=> d!693751 m!2772617))

(declare-fun m!2772619 () Bool)

(assert (=> d!693751 m!2772619))

(assert (=> d!693751 m!2772425))

(declare-fun m!2772621 () Bool)

(assert (=> b!2360200 m!2772621))

(assert (=> b!2360200 m!2772579))

(assert (=> b!2360200 m!2772431))

(assert (=> b!2360005 d!693751))

(declare-fun d!693753 () Bool)

(assert (=> d!693753 (= (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))) (list!11079 (c!375105 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun bs!460511 () Bool)

(assert (= bs!460511 d!693753))

(declare-fun m!2772623 () Bool)

(assert (=> bs!460511 m!2772623))

(assert (=> b!2359962 d!693753))

(declare-fun d!693755 () Bool)

(declare-fun lt!864187 () BalanceConc!17902)

(assert (=> d!693755 (= (list!11077 lt!864187) (originalCharacters!5209 (_1!16371 (get!8472 lt!864117))))))

(assert (=> d!693755 (= lt!864187 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))) (value!141501 (_1!16371 (get!8472 lt!864117)))))))

(assert (=> d!693755 (= (charsOf!2803 (_1!16371 (get!8472 lt!864117))) lt!864187)))

(declare-fun b_lambda!73773 () Bool)

(assert (=> (not b_lambda!73773) (not d!693755)))

(declare-fun t!207929 () Bool)

(declare-fun tb!138761 () Bool)

(assert (=> (and b!2359910 (= (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207929) tb!138761))

(declare-fun b!2360202 () Bool)

(declare-fun e!1507582 () Bool)

(declare-fun tp!754825 () Bool)

(assert (=> b!2360202 (= e!1507582 (and (inv!38148 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))) (value!141501 (_1!16371 (get!8472 lt!864117)))))) tp!754825))))

(declare-fun result!169688 () Bool)

(assert (=> tb!138761 (= result!169688 (and (inv!38149 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))) (value!141501 (_1!16371 (get!8472 lt!864117))))) e!1507582))))

(assert (= tb!138761 b!2360202))

(declare-fun m!2772625 () Bool)

(assert (=> b!2360202 m!2772625))

(declare-fun m!2772627 () Bool)

(assert (=> tb!138761 m!2772627))

(assert (=> d!693755 t!207929))

(declare-fun b_and!185445 () Bool)

(assert (= b_and!185423 (and (=> t!207929 result!169688) b_and!185445)))

(declare-fun t!207931 () Bool)

(declare-fun tb!138763 () Bool)

(assert (=> (and b!2360083 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207931) tb!138763))

(declare-fun result!169690 () Bool)

(assert (= result!169690 result!169688))

(assert (=> d!693755 t!207931))

(declare-fun b_and!185447 () Bool)

(assert (= b_and!185431 (and (=> t!207931 result!169690) b_and!185447)))

(declare-fun m!2772629 () Bool)

(assert (=> d!693755 m!2772629))

(declare-fun m!2772631 () Bool)

(assert (=> d!693755 m!2772631))

(assert (=> b!2359962 d!693755))

(assert (=> b!2359962 d!693711))

(declare-fun d!693757 () Bool)

(assert (=> d!693757 true))

(declare-fun lt!864190 () Bool)

(assert (=> d!693757 (= lt!864190 (rulesValidInductive!1573 thiss!13512 rules!1706))))

(declare-fun lambda!86812 () Int)

(declare-fun forall!5536 (List!28026 Int) Bool)

(assert (=> d!693757 (= lt!864190 (forall!5536 rules!1706 lambda!86812))))

(assert (=> d!693757 (= (rulesValid!1649 thiss!13512 rules!1706) lt!864190)))

(declare-fun bs!460512 () Bool)

(assert (= bs!460512 d!693757))

(assert (=> bs!460512 m!2772333))

(declare-fun m!2772633 () Bool)

(assert (=> bs!460512 m!2772633))

(assert (=> d!693665 d!693757))

(declare-fun d!693759 () Bool)

(assert (=> d!693759 (= (isEmpty!15864 lt!864117) (not ((_ is Some!5449) lt!864117)))))

(assert (=> d!693653 d!693759))

(declare-fun b!2360213 () Bool)

(declare-fun e!1507590 () Bool)

(declare-fun e!1507589 () Bool)

(assert (=> b!2360213 (= e!1507590 e!1507589)))

(declare-fun res!1001640 () Bool)

(assert (=> b!2360213 (=> (not res!1001640) (not e!1507589))))

(assert (=> b!2360213 (= res!1001640 (not ((_ is Nil!27927) input!1160)))))

(declare-fun d!693761 () Bool)

(declare-fun e!1507591 () Bool)

(assert (=> d!693761 e!1507591))

(declare-fun res!1001639 () Bool)

(assert (=> d!693761 (=> res!1001639 e!1507591)))

(declare-fun lt!864193 () Bool)

(assert (=> d!693761 (= res!1001639 (not lt!864193))))

(assert (=> d!693761 (= lt!864193 e!1507590)))

(declare-fun res!1001638 () Bool)

(assert (=> d!693761 (=> res!1001638 e!1507590)))

(assert (=> d!693761 (= res!1001638 ((_ is Nil!27927) input!1160))))

(assert (=> d!693761 (= (isPrefix!2405 input!1160 input!1160) lt!864193)))

(declare-fun b!2360215 () Bool)

(declare-fun tail!3344 (List!28025) List!28025)

(assert (=> b!2360215 (= e!1507589 (isPrefix!2405 (tail!3344 input!1160) (tail!3344 input!1160)))))

(declare-fun b!2360214 () Bool)

(declare-fun res!1001637 () Bool)

(assert (=> b!2360214 (=> (not res!1001637) (not e!1507589))))

(declare-fun head!5075 (List!28025) C!13960)

(assert (=> b!2360214 (= res!1001637 (= (head!5075 input!1160) (head!5075 input!1160)))))

(declare-fun b!2360216 () Bool)

(assert (=> b!2360216 (= e!1507591 (>= (size!22113 input!1160) (size!22113 input!1160)))))

(assert (= (and d!693761 (not res!1001638)) b!2360213))

(assert (= (and b!2360213 res!1001640) b!2360214))

(assert (= (and b!2360214 res!1001637) b!2360215))

(assert (= (and d!693761 (not res!1001639)) b!2360216))

(declare-fun m!2772635 () Bool)

(assert (=> b!2360215 m!2772635))

(assert (=> b!2360215 m!2772635))

(assert (=> b!2360215 m!2772635))

(assert (=> b!2360215 m!2772635))

(declare-fun m!2772637 () Bool)

(assert (=> b!2360215 m!2772637))

(declare-fun m!2772639 () Bool)

(assert (=> b!2360214 m!2772639))

(assert (=> b!2360214 m!2772639))

(assert (=> b!2360216 m!2772351))

(assert (=> b!2360216 m!2772351))

(assert (=> d!693653 d!693761))

(declare-fun d!693763 () Bool)

(assert (=> d!693763 (isPrefix!2405 input!1160 input!1160)))

(declare-fun lt!864196 () Unit!40839)

(declare-fun choose!13689 (List!28025 List!28025) Unit!40839)

(assert (=> d!693763 (= lt!864196 (choose!13689 input!1160 input!1160))))

(assert (=> d!693763 (= (lemmaIsPrefixRefl!1531 input!1160 input!1160) lt!864196)))

(declare-fun bs!460513 () Bool)

(assert (= bs!460513 d!693763))

(assert (=> bs!460513 m!2772329))

(declare-fun m!2772641 () Bool)

(assert (=> bs!460513 m!2772641))

(assert (=> d!693653 d!693763))

(declare-fun bs!460514 () Bool)

(declare-fun d!693765 () Bool)

(assert (= bs!460514 (and d!693765 d!693757)))

(declare-fun lambda!86815 () Int)

(assert (=> bs!460514 (= lambda!86815 lambda!86812)))

(assert (=> d!693765 true))

(declare-fun lt!864199 () Bool)

(assert (=> d!693765 (= lt!864199 (forall!5536 rules!1706 lambda!86815))))

(declare-fun e!1507596 () Bool)

(assert (=> d!693765 (= lt!864199 e!1507596)))

(declare-fun res!1001646 () Bool)

(assert (=> d!693765 (=> res!1001646 e!1507596)))

(assert (=> d!693765 (= res!1001646 (not ((_ is Cons!27928) rules!1706)))))

(assert (=> d!693765 (= (rulesValidInductive!1573 thiss!13512 rules!1706) lt!864199)))

(declare-fun b!2360221 () Bool)

(declare-fun e!1507597 () Bool)

(assert (=> b!2360221 (= e!1507596 e!1507597)))

(declare-fun res!1001645 () Bool)

(assert (=> b!2360221 (=> (not res!1001645) (not e!1507597))))

(declare-fun ruleValid!1506 (LexerInterface!4040 Rule!8686) Bool)

(assert (=> b!2360221 (= res!1001645 (ruleValid!1506 thiss!13512 (h!33329 rules!1706)))))

(declare-fun b!2360222 () Bool)

(assert (=> b!2360222 (= e!1507597 (rulesValidInductive!1573 thiss!13512 (t!207903 rules!1706)))))

(assert (= (and d!693765 (not res!1001646)) b!2360221))

(assert (= (and b!2360221 res!1001645) b!2360222))

(declare-fun m!2772643 () Bool)

(assert (=> d!693765 m!2772643))

(declare-fun m!2772645 () Bool)

(assert (=> b!2360221 m!2772645))

(declare-fun m!2772647 () Bool)

(assert (=> b!2360222 m!2772647))

(assert (=> d!693653 d!693765))

(declare-fun b!2360296 () Bool)

(declare-fun res!1001710 () Bool)

(declare-fun e!1507639 () Bool)

(assert (=> b!2360296 (=> (not res!1001710) (not e!1507639))))

(declare-fun lt!864237 () Option!5450)

(assert (=> b!2360296 (= res!1001710 (= (value!141501 (_1!16371 (get!8472 lt!864237))) (apply!6710 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864237)))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864237)))))))))

(declare-fun b!2360297 () Bool)

(declare-fun e!1507642 () Option!5450)

(declare-datatypes ((tuple2!27664 0))(
  ( (tuple2!27665 (_1!16373 List!28025) (_2!16373 List!28025)) )
))
(declare-fun lt!864241 () tuple2!27664)

(declare-fun size!22116 (BalanceConc!17902) Int)

(assert (=> b!2360297 (= e!1507642 (Some!5449 (tuple2!27661 (Token!8357 (apply!6710 (transformation!4443 (h!33329 rules!1706)) (seqFromList!3129 (_1!16373 lt!864241))) (h!33329 rules!1706) (size!22116 (seqFromList!3129 (_1!16373 lt!864241))) (_1!16373 lt!864241)) (_2!16373 lt!864241))))))

(declare-fun lt!864240 () Unit!40839)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!715 (Regex!6901 List!28025) Unit!40839)

(assert (=> b!2360297 (= lt!864240 (longestMatchIsAcceptedByMatchOrIsEmpty!715 (regex!4443 (h!33329 rules!1706)) input!1160))))

(declare-fun res!1001708 () Bool)

(declare-fun isEmpty!15866 (List!28025) Bool)

(declare-fun findLongestMatchInner!742 (Regex!6901 List!28025 Int List!28025 List!28025 Int) tuple2!27664)

(assert (=> b!2360297 (= res!1001708 (isEmpty!15866 (_1!16373 (findLongestMatchInner!742 (regex!4443 (h!33329 rules!1706)) Nil!27927 (size!22113 Nil!27927) input!1160 input!1160 (size!22113 input!1160)))))))

(declare-fun e!1507641 () Bool)

(assert (=> b!2360297 (=> res!1001708 e!1507641)))

(assert (=> b!2360297 e!1507641))

(declare-fun lt!864239 () Unit!40839)

(assert (=> b!2360297 (= lt!864239 lt!864240)))

(declare-fun lt!864238 () Unit!40839)

(declare-fun lemmaSemiInverse!1093 (TokenValueInjection!8758 BalanceConc!17902) Unit!40839)

(assert (=> b!2360297 (= lt!864238 (lemmaSemiInverse!1093 (transformation!4443 (h!33329 rules!1706)) (seqFromList!3129 (_1!16373 lt!864241))))))

(declare-fun b!2360298 () Bool)

(assert (=> b!2360298 (= e!1507639 (= (size!22111 (_1!16371 (get!8472 lt!864237))) (size!22113 (originalCharacters!5209 (_1!16371 (get!8472 lt!864237))))))))

(declare-fun d!693767 () Bool)

(declare-fun e!1507640 () Bool)

(assert (=> d!693767 e!1507640))

(declare-fun res!1001709 () Bool)

(assert (=> d!693767 (=> res!1001709 e!1507640)))

(assert (=> d!693767 (= res!1001709 (isEmpty!15864 lt!864237))))

(assert (=> d!693767 (= lt!864237 e!1507642)))

(declare-fun c!375164 () Bool)

(assert (=> d!693767 (= c!375164 (isEmpty!15866 (_1!16373 lt!864241)))))

(declare-fun findLongestMatch!671 (Regex!6901 List!28025) tuple2!27664)

(assert (=> d!693767 (= lt!864241 (findLongestMatch!671 (regex!4443 (h!33329 rules!1706)) input!1160))))

(assert (=> d!693767 (ruleValid!1506 thiss!13512 (h!33329 rules!1706))))

(assert (=> d!693767 (= (maxPrefixOneRule!1438 thiss!13512 (h!33329 rules!1706) input!1160) lt!864237)))

(declare-fun b!2360299 () Bool)

(declare-fun res!1001712 () Bool)

(assert (=> b!2360299 (=> (not res!1001712) (not e!1507639))))

(assert (=> b!2360299 (= res!1001712 (< (size!22113 (_2!16371 (get!8472 lt!864237))) (size!22113 input!1160)))))

(declare-fun b!2360300 () Bool)

(assert (=> b!2360300 (= e!1507642 None!5449)))

(declare-fun b!2360301 () Bool)

(assert (=> b!2360301 (= e!1507640 e!1507639)))

(declare-fun res!1001707 () Bool)

(assert (=> b!2360301 (=> (not res!1001707) (not e!1507639))))

(assert (=> b!2360301 (= res!1001707 (matchR!3022 (regex!4443 (h!33329 rules!1706)) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864237))))))))

(declare-fun b!2360302 () Bool)

(declare-fun res!1001711 () Bool)

(assert (=> b!2360302 (=> (not res!1001711) (not e!1507639))))

(assert (=> b!2360302 (= res!1001711 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864237)))) (_2!16371 (get!8472 lt!864237))) input!1160))))

(declare-fun b!2360303 () Bool)

(assert (=> b!2360303 (= e!1507641 (matchR!3022 (regex!4443 (h!33329 rules!1706)) (_1!16373 (findLongestMatchInner!742 (regex!4443 (h!33329 rules!1706)) Nil!27927 (size!22113 Nil!27927) input!1160 input!1160 (size!22113 input!1160)))))))

(declare-fun b!2360304 () Bool)

(declare-fun res!1001706 () Bool)

(assert (=> b!2360304 (=> (not res!1001706) (not e!1507639))))

(assert (=> b!2360304 (= res!1001706 (= (rule!6795 (_1!16371 (get!8472 lt!864237))) (h!33329 rules!1706)))))

(assert (= (and d!693767 c!375164) b!2360300))

(assert (= (and d!693767 (not c!375164)) b!2360297))

(assert (= (and b!2360297 (not res!1001708)) b!2360303))

(assert (= (and d!693767 (not res!1001709)) b!2360301))

(assert (= (and b!2360301 res!1001707) b!2360302))

(assert (= (and b!2360302 res!1001711) b!2360299))

(assert (= (and b!2360299 res!1001712) b!2360304))

(assert (= (and b!2360304 res!1001706) b!2360296))

(assert (= (and b!2360296 res!1001710) b!2360298))

(declare-fun m!2772711 () Bool)

(assert (=> d!693767 m!2772711))

(declare-fun m!2772713 () Bool)

(assert (=> d!693767 m!2772713))

(declare-fun m!2772715 () Bool)

(assert (=> d!693767 m!2772715))

(assert (=> d!693767 m!2772645))

(declare-fun m!2772717 () Bool)

(assert (=> b!2360301 m!2772717))

(declare-fun m!2772719 () Bool)

(assert (=> b!2360301 m!2772719))

(assert (=> b!2360301 m!2772719))

(declare-fun m!2772721 () Bool)

(assert (=> b!2360301 m!2772721))

(assert (=> b!2360301 m!2772721))

(declare-fun m!2772723 () Bool)

(assert (=> b!2360301 m!2772723))

(assert (=> b!2360298 m!2772717))

(declare-fun m!2772725 () Bool)

(assert (=> b!2360298 m!2772725))

(assert (=> b!2360304 m!2772717))

(declare-fun m!2772727 () Bool)

(assert (=> b!2360303 m!2772727))

(assert (=> b!2360303 m!2772351))

(assert (=> b!2360303 m!2772727))

(assert (=> b!2360303 m!2772351))

(declare-fun m!2772729 () Bool)

(assert (=> b!2360303 m!2772729))

(declare-fun m!2772731 () Bool)

(assert (=> b!2360303 m!2772731))

(assert (=> b!2360296 m!2772717))

(declare-fun m!2772733 () Bool)

(assert (=> b!2360296 m!2772733))

(assert (=> b!2360296 m!2772733))

(declare-fun m!2772735 () Bool)

(assert (=> b!2360296 m!2772735))

(assert (=> b!2360299 m!2772717))

(declare-fun m!2772737 () Bool)

(assert (=> b!2360299 m!2772737))

(assert (=> b!2360299 m!2772351))

(declare-fun m!2772739 () Bool)

(assert (=> b!2360297 m!2772739))

(declare-fun m!2772741 () Bool)

(assert (=> b!2360297 m!2772741))

(assert (=> b!2360297 m!2772739))

(declare-fun m!2772743 () Bool)

(assert (=> b!2360297 m!2772743))

(assert (=> b!2360297 m!2772727))

(assert (=> b!2360297 m!2772351))

(assert (=> b!2360297 m!2772729))

(declare-fun m!2772745 () Bool)

(assert (=> b!2360297 m!2772745))

(assert (=> b!2360297 m!2772739))

(declare-fun m!2772747 () Bool)

(assert (=> b!2360297 m!2772747))

(assert (=> b!2360297 m!2772727))

(assert (=> b!2360297 m!2772351))

(assert (=> b!2360297 m!2772739))

(declare-fun m!2772749 () Bool)

(assert (=> b!2360297 m!2772749))

(assert (=> b!2360302 m!2772717))

(assert (=> b!2360302 m!2772719))

(assert (=> b!2360302 m!2772719))

(assert (=> b!2360302 m!2772721))

(assert (=> b!2360302 m!2772721))

(declare-fun m!2772751 () Bool)

(assert (=> b!2360302 m!2772751))

(assert (=> bm!143630 d!693767))

(declare-fun d!693783 () Bool)

(declare-fun lt!864242 () Int)

(assert (=> d!693783 (>= lt!864242 0)))

(declare-fun e!1507643 () Int)

(assert (=> d!693783 (= lt!864242 e!1507643)))

(declare-fun c!375165 () Bool)

(assert (=> d!693783 (= c!375165 ((_ is Nil!27927) (_2!16372 lt!864154)))))

(assert (=> d!693783 (= (size!22113 (_2!16372 lt!864154)) lt!864242)))

(declare-fun b!2360305 () Bool)

(assert (=> b!2360305 (= e!1507643 0)))

(declare-fun b!2360306 () Bool)

(assert (=> b!2360306 (= e!1507643 (+ 1 (size!22113 (t!207902 (_2!16372 lt!864154)))))))

(assert (= (and d!693783 c!375165) b!2360305))

(assert (= (and d!693783 (not c!375165)) b!2360306))

(declare-fun m!2772753 () Bool)

(assert (=> b!2360306 m!2772753))

(assert (=> b!2360071 d!693783))

(assert (=> b!2360071 d!693745))

(declare-fun d!693785 () Bool)

(declare-fun isBalanced!2787 (Conc!9145) Bool)

(assert (=> d!693785 (= (inv!38149 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))) (isBalanced!2787 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))))))

(declare-fun bs!460518 () Bool)

(assert (= bs!460518 d!693785))

(declare-fun m!2772755 () Bool)

(assert (=> bs!460518 m!2772755))

(assert (=> tb!138743 d!693785))

(declare-fun d!693787 () Bool)

(declare-fun c!375174 () Bool)

(assert (=> d!693787 (= c!375174 ((_ is Node!9145) (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))))))

(declare-fun e!1507662 () Bool)

(assert (=> d!693787 (= (inv!38148 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))) e!1507662)))

(declare-fun b!2360341 () Bool)

(declare-fun inv!38152 (Conc!9145) Bool)

(assert (=> b!2360341 (= e!1507662 (inv!38152 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))))))

(declare-fun b!2360342 () Bool)

(declare-fun e!1507663 () Bool)

(assert (=> b!2360342 (= e!1507662 e!1507663)))

(declare-fun res!1001731 () Bool)

(assert (=> b!2360342 (= res!1001731 (not ((_ is Leaf!13500) (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))))))

(assert (=> b!2360342 (=> res!1001731 e!1507663)))

(declare-fun b!2360343 () Bool)

(declare-fun inv!38153 (Conc!9145) Bool)

(assert (=> b!2360343 (= e!1507663 (inv!38153 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))))))

(assert (= (and d!693787 c!375174) b!2360341))

(assert (= (and d!693787 (not c!375174)) b!2360342))

(assert (= (and b!2360342 (not res!1001731)) b!2360343))

(declare-fun m!2772757 () Bool)

(assert (=> b!2360341 m!2772757))

(declare-fun m!2772759 () Bool)

(assert (=> b!2360343 m!2772759))

(assert (=> b!2360037 d!693787))

(declare-fun d!693789 () Bool)

(declare-fun res!1001744 () Bool)

(declare-fun e!1507675 () Bool)

(assert (=> d!693789 (=> res!1001744 e!1507675)))

(assert (=> d!693789 (= res!1001744 ((_ is Nil!27928) rules!1706))))

(assert (=> d!693789 (= (noDuplicateTag!1647 thiss!13512 rules!1706 Nil!27931) e!1507675)))

(declare-fun b!2360362 () Bool)

(declare-fun e!1507676 () Bool)

(assert (=> b!2360362 (= e!1507675 e!1507676)))

(declare-fun res!1001745 () Bool)

(assert (=> b!2360362 (=> (not res!1001745) (not e!1507676))))

(declare-fun contains!4878 (List!28029 String!30745) Bool)

(assert (=> b!2360362 (= res!1001745 (not (contains!4878 Nil!27931 (tag!4933 (h!33329 rules!1706)))))))

(declare-fun b!2360363 () Bool)

(assert (=> b!2360363 (= e!1507676 (noDuplicateTag!1647 thiss!13512 (t!207903 rules!1706) (Cons!27931 (tag!4933 (h!33329 rules!1706)) Nil!27931)))))

(assert (= (and d!693789 (not res!1001744)) b!2360362))

(assert (= (and b!2360362 res!1001745) b!2360363))

(declare-fun m!2772777 () Bool)

(assert (=> b!2360362 m!2772777))

(declare-fun m!2772779 () Bool)

(assert (=> b!2360363 m!2772779))

(assert (=> b!2359975 d!693789))

(declare-fun d!693793 () Bool)

(assert (=> d!693793 (= (list!11077 lt!864142) (list!11079 (c!375105 lt!864142)))))

(declare-fun bs!460519 () Bool)

(assert (= bs!460519 d!693793))

(declare-fun m!2772781 () Bool)

(assert (=> bs!460519 m!2772781))

(assert (=> d!693685 d!693793))

(declare-fun d!693795 () Bool)

(assert (=> d!693795 (= (isEmpty!15865 (_1!16372 lt!864154)) ((_ is Nil!27929) (_1!16372 lt!864154)))))

(assert (=> b!2360069 d!693795))

(declare-fun b!2360365 () Bool)

(declare-fun e!1507678 () List!28025)

(assert (=> b!2360365 (= e!1507678 (Cons!27927 (h!33328 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (++!6876 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (_2!16371 (get!8472 lt!864117)))))))

(declare-fun d!693797 () Bool)

(declare-fun e!1507677 () Bool)

(assert (=> d!693797 e!1507677))

(declare-fun res!1001747 () Bool)

(assert (=> d!693797 (=> (not res!1001747) (not e!1507677))))

(declare-fun lt!864246 () List!28025)

(assert (=> d!693797 (= res!1001747 (= (content!3789 lt!864246) ((_ map or) (content!3789 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (content!3789 (_2!16371 (get!8472 lt!864117))))))))

(assert (=> d!693797 (= lt!864246 e!1507678)))

(declare-fun c!375178 () Bool)

(assert (=> d!693797 (= c!375178 ((_ is Nil!27927) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))

(assert (=> d!693797 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))) (_2!16371 (get!8472 lt!864117))) lt!864246)))

(declare-fun b!2360364 () Bool)

(assert (=> b!2360364 (= e!1507678 (_2!16371 (get!8472 lt!864117)))))

(declare-fun b!2360366 () Bool)

(declare-fun res!1001746 () Bool)

(assert (=> b!2360366 (=> (not res!1001746) (not e!1507677))))

(assert (=> b!2360366 (= res!1001746 (= (size!22113 lt!864246) (+ (size!22113 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (size!22113 (_2!16371 (get!8472 lt!864117))))))))

(declare-fun b!2360367 () Bool)

(assert (=> b!2360367 (= e!1507677 (or (not (= (_2!16371 (get!8472 lt!864117)) Nil!27927)) (= lt!864246 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))))))))

(assert (= (and d!693797 c!375178) b!2360364))

(assert (= (and d!693797 (not c!375178)) b!2360365))

(assert (= (and d!693797 res!1001747) b!2360366))

(assert (= (and b!2360366 res!1001746) b!2360367))

(declare-fun m!2772783 () Bool)

(assert (=> b!2360365 m!2772783))

(declare-fun m!2772785 () Bool)

(assert (=> d!693797 m!2772785))

(assert (=> d!693797 m!2772337))

(declare-fun m!2772787 () Bool)

(assert (=> d!693797 m!2772787))

(declare-fun m!2772789 () Bool)

(assert (=> d!693797 m!2772789))

(declare-fun m!2772791 () Bool)

(assert (=> b!2360366 m!2772791))

(assert (=> b!2360366 m!2772337))

(declare-fun m!2772793 () Bool)

(assert (=> b!2360366 m!2772793))

(assert (=> b!2360366 m!2772349))

(assert (=> b!2359955 d!693797))

(assert (=> b!2359955 d!693753))

(assert (=> b!2359955 d!693755))

(assert (=> b!2359955 d!693711))

(declare-fun b!2360368 () Bool)

(declare-fun e!1507681 () tuple2!27662)

(assert (=> b!2360368 (= e!1507681 (tuple2!27663 Nil!27929 (_2!16371 (v!30851 lt!864152))))))

(declare-fun d!693799 () Bool)

(declare-fun e!1507680 () Bool)

(assert (=> d!693799 e!1507680))

(declare-fun c!375179 () Bool)

(declare-fun lt!864249 () tuple2!27662)

(assert (=> d!693799 (= c!375179 (> (size!22115 (_1!16372 lt!864249)) 0))))

(assert (=> d!693799 (= lt!864249 e!1507681)))

(declare-fun c!375181 () Bool)

(declare-fun lt!864247 () Option!5450)

(assert (=> d!693799 (= c!375181 ((_ is Some!5449) lt!864247))))

(assert (=> d!693799 (= lt!864247 (maxPrefix!2270 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864152))))))

(assert (=> d!693799 (= (lexRegexList!2 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864152))) lt!864249)))

(declare-fun b!2360369 () Bool)

(declare-fun e!1507679 () Bool)

(assert (=> b!2360369 (= e!1507679 (not (isEmpty!15865 (_1!16372 lt!864249))))))

(declare-fun b!2360370 () Bool)

(assert (=> b!2360370 (= e!1507680 (= (_2!16372 lt!864249) (_2!16371 (v!30851 lt!864152))))))

(declare-fun b!2360371 () Bool)

(assert (=> b!2360371 (= e!1507680 e!1507679)))

(declare-fun res!1001748 () Bool)

(assert (=> b!2360371 (= res!1001748 (< (size!22113 (_2!16372 lt!864249)) (size!22113 (_2!16371 (v!30851 lt!864152)))))))

(assert (=> b!2360371 (=> (not res!1001748) (not e!1507679))))

(declare-fun b!2360372 () Bool)

(declare-fun lt!864248 () tuple2!27662)

(assert (=> b!2360372 (= e!1507681 (tuple2!27663 (Cons!27929 (_1!16371 (v!30851 lt!864247)) (_1!16372 lt!864248)) (_2!16372 lt!864248)))))

(assert (=> b!2360372 (= lt!864248 (lexRegexList!2 thiss!13512 rules!1706 (_2!16371 (v!30851 lt!864247))))))

(assert (= (and d!693799 c!375181) b!2360372))

(assert (= (and d!693799 (not c!375181)) b!2360368))

(assert (= (and d!693799 c!375179) b!2360371))

(assert (= (and d!693799 (not c!375179)) b!2360370))

(assert (= (and b!2360371 res!1001748) b!2360369))

(declare-fun m!2772797 () Bool)

(assert (=> d!693799 m!2772797))

(declare-fun m!2772799 () Bool)

(assert (=> d!693799 m!2772799))

(declare-fun m!2772801 () Bool)

(assert (=> b!2360369 m!2772801))

(declare-fun m!2772805 () Bool)

(assert (=> b!2360371 m!2772805))

(declare-fun m!2772807 () Bool)

(assert (=> b!2360371 m!2772807))

(declare-fun m!2772813 () Bool)

(assert (=> b!2360372 m!2772813))

(assert (=> b!2360072 d!693799))

(declare-fun d!693803 () Bool)

(assert (=> d!693803 true))

(declare-fun lambda!86824 () Int)

(declare-fun order!15461 () Int)

(declare-fun order!15459 () Int)

(declare-fun dynLambda!12025 (Int Int) Int)

(declare-fun dynLambda!12026 (Int Int) Int)

(assert (=> d!693803 (< (dynLambda!12025 order!15459 (toChars!6142 (transformation!4443 (h!33329 rules!1706)))) (dynLambda!12026 order!15461 lambda!86824))))

(assert (=> d!693803 true))

(assert (=> d!693803 (< (dynLambda!12020 order!15449 (toValue!6283 (transformation!4443 (h!33329 rules!1706)))) (dynLambda!12026 order!15461 lambda!86824))))

(declare-fun Forall!1128 (Int) Bool)

(assert (=> d!693803 (= (semiInverseModEq!1824 (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toValue!6283 (transformation!4443 (h!33329 rules!1706)))) (Forall!1128 lambda!86824))))

(declare-fun bs!460521 () Bool)

(assert (= bs!460521 d!693803))

(declare-fun m!2772823 () Bool)

(assert (=> bs!460521 m!2772823))

(assert (=> d!693671 d!693803))

(declare-fun b!2360407 () Bool)

(declare-fun e!1507696 () List!28025)

(declare-fun list!11081 (IArray!18295) List!28025)

(assert (=> b!2360407 (= e!1507696 (list!11081 (xs!12125 (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))))))

(declare-fun b!2360406 () Bool)

(declare-fun e!1507695 () List!28025)

(assert (=> b!2360406 (= e!1507695 e!1507696)))

(declare-fun c!375192 () Bool)

(assert (=> b!2360406 (= c!375192 ((_ is Leaf!13500) (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(declare-fun b!2360408 () Bool)

(assert (=> b!2360408 (= e!1507696 (++!6876 (list!11079 (left!21231 (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093)))))) (list!11079 (right!21561 (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))))

(declare-fun b!2360405 () Bool)

(assert (=> b!2360405 (= e!1507695 Nil!27927)))

(declare-fun d!693811 () Bool)

(declare-fun c!375191 () Bool)

(assert (=> d!693811 (= c!375191 ((_ is Empty!9145) (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(assert (=> d!693811 (= (list!11079 (c!375105 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) e!1507695)))

(assert (= (and d!693811 c!375191) b!2360405))

(assert (= (and d!693811 (not c!375191)) b!2360406))

(assert (= (and b!2360406 c!375192) b!2360407))

(assert (= (and b!2360406 (not c!375192)) b!2360408))

(declare-fun m!2772855 () Bool)

(assert (=> b!2360407 m!2772855))

(declare-fun m!2772857 () Bool)

(assert (=> b!2360408 m!2772857))

(declare-fun m!2772859 () Bool)

(assert (=> b!2360408 m!2772859))

(assert (=> b!2360408 m!2772857))

(assert (=> b!2360408 m!2772859))

(declare-fun m!2772861 () Bool)

(assert (=> b!2360408 m!2772861))

(assert (=> d!693683 d!693811))

(declare-fun b!2360492 () Bool)

(declare-fun e!1507742 () Bool)

(assert (=> b!2360492 (= e!1507742 (= (head!5075 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (c!375104 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))))))

(declare-fun b!2360493 () Bool)

(declare-fun res!1001782 () Bool)

(assert (=> b!2360493 (=> (not res!1001782) (not e!1507742))))

(assert (=> b!2360493 (= res!1001782 (isEmpty!15866 (tail!3344 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))))))))

(declare-fun b!2360494 () Bool)

(declare-fun e!1507740 () Bool)

(declare-fun lt!864264 () Bool)

(declare-fun call!143645 () Bool)

(assert (=> b!2360494 (= e!1507740 (= lt!864264 call!143645))))

(declare-fun b!2360495 () Bool)

(declare-fun e!1507738 () Bool)

(declare-fun nullable!1974 (Regex!6901) Bool)

(assert (=> b!2360495 (= e!1507738 (nullable!1974 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun b!2360496 () Bool)

(declare-fun e!1507739 () Bool)

(assert (=> b!2360496 (= e!1507740 e!1507739)))

(declare-fun c!375205 () Bool)

(assert (=> b!2360496 (= c!375205 ((_ is EmptyLang!6901) (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun b!2360497 () Bool)

(declare-fun res!1001781 () Bool)

(assert (=> b!2360497 (=> (not res!1001781) (not e!1507742))))

(assert (=> b!2360497 (= res!1001781 (not call!143645))))

(declare-fun b!2360498 () Bool)

(declare-fun e!1507737 () Bool)

(declare-fun e!1507741 () Bool)

(assert (=> b!2360498 (= e!1507737 e!1507741)))

(declare-fun res!1001780 () Bool)

(assert (=> b!2360498 (=> res!1001780 e!1507741)))

(assert (=> b!2360498 (= res!1001780 call!143645)))

(declare-fun d!693815 () Bool)

(assert (=> d!693815 e!1507740))

(declare-fun c!375206 () Bool)

(assert (=> d!693815 (= c!375206 ((_ is EmptyExpr!6901) (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))))))

(assert (=> d!693815 (= lt!864264 e!1507738)))

(declare-fun c!375207 () Bool)

(assert (=> d!693815 (= c!375207 (isEmpty!15866 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun validRegex!2641 (Regex!6901) Bool)

(assert (=> d!693815 (validRegex!2641 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))))

(assert (=> d!693815 (= (matchR!3022 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) lt!864264)))

(declare-fun b!2360499 () Bool)

(declare-fun e!1507736 () Bool)

(assert (=> b!2360499 (= e!1507736 e!1507737)))

(declare-fun res!1001779 () Bool)

(assert (=> b!2360499 (=> (not res!1001779) (not e!1507737))))

(assert (=> b!2360499 (= res!1001779 (not lt!864264))))

(declare-fun bm!143640 () Bool)

(assert (=> bm!143640 (= call!143645 (isEmpty!15866 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))

(declare-fun b!2360500 () Bool)

(declare-fun derivativeStep!1634 (Regex!6901 C!13960) Regex!6901)

(assert (=> b!2360500 (= e!1507738 (matchR!3022 (derivativeStep!1634 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))) (head!5075 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))))) (tail!3344 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117)))))))))

(declare-fun b!2360501 () Bool)

(declare-fun res!1001776 () Bool)

(assert (=> b!2360501 (=> res!1001776 e!1507741)))

(assert (=> b!2360501 (= res!1001776 (not (isEmpty!15866 (tail!3344 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))))))))

(declare-fun b!2360502 () Bool)

(declare-fun res!1001775 () Bool)

(assert (=> b!2360502 (=> res!1001775 e!1507736)))

(assert (=> b!2360502 (= res!1001775 e!1507742)))

(declare-fun res!1001778 () Bool)

(assert (=> b!2360502 (=> (not res!1001778) (not e!1507742))))

(assert (=> b!2360502 (= res!1001778 lt!864264)))

(declare-fun b!2360503 () Bool)

(assert (=> b!2360503 (= e!1507741 (not (= (head!5075 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864117))))) (c!375104 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117))))))))))

(declare-fun b!2360504 () Bool)

(declare-fun res!1001777 () Bool)

(assert (=> b!2360504 (=> res!1001777 e!1507736)))

(assert (=> b!2360504 (= res!1001777 (not ((_ is ElementMatch!6901) (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))))))

(assert (=> b!2360504 (= e!1507739 e!1507736)))

(declare-fun b!2360505 () Bool)

(assert (=> b!2360505 (= e!1507739 (not lt!864264))))

(assert (= (and d!693815 c!375207) b!2360495))

(assert (= (and d!693815 (not c!375207)) b!2360500))

(assert (= (and d!693815 c!375206) b!2360494))

(assert (= (and d!693815 (not c!375206)) b!2360496))

(assert (= (and b!2360496 c!375205) b!2360505))

(assert (= (and b!2360496 (not c!375205)) b!2360504))

(assert (= (and b!2360504 (not res!1001777)) b!2360502))

(assert (= (and b!2360502 res!1001778) b!2360497))

(assert (= (and b!2360497 res!1001781) b!2360493))

(assert (= (and b!2360493 res!1001782) b!2360492))

(assert (= (and b!2360502 (not res!1001775)) b!2360499))

(assert (= (and b!2360499 res!1001779) b!2360498))

(assert (= (and b!2360498 (not res!1001780)) b!2360501))

(assert (= (and b!2360501 (not res!1001776)) b!2360503))

(assert (= (or b!2360494 b!2360497 b!2360498) bm!143640))

(assert (=> b!2360492 m!2772337))

(declare-fun m!2772887 () Bool)

(assert (=> b!2360492 m!2772887))

(assert (=> b!2360493 m!2772337))

(declare-fun m!2772889 () Bool)

(assert (=> b!2360493 m!2772889))

(assert (=> b!2360493 m!2772889))

(declare-fun m!2772891 () Bool)

(assert (=> b!2360493 m!2772891))

(assert (=> b!2360501 m!2772337))

(assert (=> b!2360501 m!2772889))

(assert (=> b!2360501 m!2772889))

(assert (=> b!2360501 m!2772891))

(assert (=> b!2360500 m!2772337))

(assert (=> b!2360500 m!2772887))

(assert (=> b!2360500 m!2772887))

(declare-fun m!2772893 () Bool)

(assert (=> b!2360500 m!2772893))

(assert (=> b!2360500 m!2772337))

(assert (=> b!2360500 m!2772889))

(assert (=> b!2360500 m!2772893))

(assert (=> b!2360500 m!2772889))

(declare-fun m!2772895 () Bool)

(assert (=> b!2360500 m!2772895))

(assert (=> b!2360503 m!2772337))

(assert (=> b!2360503 m!2772887))

(assert (=> bm!143640 m!2772337))

(declare-fun m!2772897 () Bool)

(assert (=> bm!143640 m!2772897))

(declare-fun m!2772899 () Bool)

(assert (=> b!2360495 m!2772899))

(assert (=> d!693815 m!2772337))

(assert (=> d!693815 m!2772897))

(declare-fun m!2772901 () Bool)

(assert (=> d!693815 m!2772901))

(assert (=> b!2359961 d!693815))

(assert (=> b!2359961 d!693711))

(assert (=> b!2359961 d!693753))

(assert (=> b!2359961 d!693755))

(declare-fun d!693825 () Bool)

(declare-fun lt!864267 () Bool)

(declare-fun content!3791 (List!28026) (InoxSet Rule!8686))

(assert (=> d!693825 (= lt!864267 (select (content!3791 rules!1706) (rule!6795 (_1!16371 (get!8472 lt!864117)))))))

(declare-fun e!1507748 () Bool)

(assert (=> d!693825 (= lt!864267 e!1507748)))

(declare-fun res!1001787 () Bool)

(assert (=> d!693825 (=> (not res!1001787) (not e!1507748))))

(assert (=> d!693825 (= res!1001787 ((_ is Cons!27928) rules!1706))))

(assert (=> d!693825 (= (contains!4876 rules!1706 (rule!6795 (_1!16371 (get!8472 lt!864117)))) lt!864267)))

(declare-fun b!2360510 () Bool)

(declare-fun e!1507747 () Bool)

(assert (=> b!2360510 (= e!1507748 e!1507747)))

(declare-fun res!1001788 () Bool)

(assert (=> b!2360510 (=> res!1001788 e!1507747)))

(assert (=> b!2360510 (= res!1001788 (= (h!33329 rules!1706) (rule!6795 (_1!16371 (get!8472 lt!864117)))))))

(declare-fun b!2360511 () Bool)

(assert (=> b!2360511 (= e!1507747 (contains!4876 (t!207903 rules!1706) (rule!6795 (_1!16371 (get!8472 lt!864117)))))))

(assert (= (and d!693825 res!1001787) b!2360510))

(assert (= (and b!2360510 (not res!1001788)) b!2360511))

(declare-fun m!2772903 () Bool)

(assert (=> d!693825 m!2772903))

(declare-fun m!2772905 () Bool)

(assert (=> d!693825 m!2772905))

(declare-fun m!2772907 () Bool)

(assert (=> b!2360511 m!2772907))

(assert (=> b!2359960 d!693825))

(assert (=> b!2359960 d!693711))

(declare-fun d!693827 () Bool)

(declare-fun c!375210 () Bool)

(assert (=> d!693827 (= c!375210 ((_ is Nil!27927) lt!864133))))

(declare-fun e!1507751 () (InoxSet C!13960))

(assert (=> d!693827 (= (content!3789 lt!864133) e!1507751)))

(declare-fun b!2360516 () Bool)

(assert (=> b!2360516 (= e!1507751 ((as const (Array C!13960 Bool)) false))))

(declare-fun b!2360517 () Bool)

(assert (=> b!2360517 (= e!1507751 ((_ map or) (store ((as const (Array C!13960 Bool)) false) (h!33328 lt!864133) true) (content!3789 (t!207902 lt!864133))))))

(assert (= (and d!693827 c!375210) b!2360516))

(assert (= (and d!693827 (not c!375210)) b!2360517))

(declare-fun m!2772909 () Bool)

(assert (=> b!2360517 m!2772909))

(declare-fun m!2772911 () Bool)

(assert (=> b!2360517 m!2772911))

(assert (=> d!693679 d!693827))

(declare-fun d!693829 () Bool)

(declare-fun c!375211 () Bool)

(assert (=> d!693829 (= c!375211 ((_ is Nil!27927) (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))

(declare-fun e!1507752 () (InoxSet C!13960))

(assert (=> d!693829 (= (content!3789 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) e!1507752)))

(declare-fun b!2360518 () Bool)

(assert (=> b!2360518 (= e!1507752 ((as const (Array C!13960 Bool)) false))))

(declare-fun b!2360519 () Bool)

(assert (=> b!2360519 (= e!1507752 ((_ map or) (store ((as const (Array C!13960 Bool)) false) (h!33328 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))) true) (content!3789 (t!207902 (list!11077 (charsOf!2803 (_1!16371 (v!30851 lt!864093))))))))))

(assert (= (and d!693829 c!375211) b!2360518))

(assert (= (and d!693829 (not c!375211)) b!2360519))

(declare-fun m!2772913 () Bool)

(assert (=> b!2360519 m!2772913))

(assert (=> b!2360519 m!2772619))

(assert (=> d!693679 d!693829))

(declare-fun d!693831 () Bool)

(declare-fun c!375212 () Bool)

(assert (=> d!693831 (= c!375212 ((_ is Nil!27927) (_2!16371 (v!30851 lt!864093))))))

(declare-fun e!1507753 () (InoxSet C!13960))

(assert (=> d!693831 (= (content!3789 (_2!16371 (v!30851 lt!864093))) e!1507753)))

(declare-fun b!2360520 () Bool)

(assert (=> b!2360520 (= e!1507753 ((as const (Array C!13960 Bool)) false))))

(declare-fun b!2360521 () Bool)

(assert (=> b!2360521 (= e!1507753 ((_ map or) (store ((as const (Array C!13960 Bool)) false) (h!33328 (_2!16371 (v!30851 lt!864093))) true) (content!3789 (t!207902 (_2!16371 (v!30851 lt!864093))))))))

(assert (= (and d!693831 c!375212) b!2360520))

(assert (= (and d!693831 (not c!375212)) b!2360521))

(declare-fun m!2772915 () Bool)

(assert (=> b!2360521 m!2772915))

(declare-fun m!2772917 () Bool)

(assert (=> b!2360521 m!2772917))

(assert (=> d!693679 d!693831))

(declare-fun b!2360522 () Bool)

(declare-fun res!1001790 () Bool)

(declare-fun e!1507755 () Bool)

(assert (=> b!2360522 (=> (not res!1001790) (not e!1507755))))

(declare-fun lt!864270 () Option!5450)

(assert (=> b!2360522 (= res!1001790 (= (++!6876 (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864270)))) (_2!16371 (get!8472 lt!864270))) input!1160))))

(declare-fun b!2360523 () Bool)

(declare-fun e!1507756 () Bool)

(assert (=> b!2360523 (= e!1507756 e!1507755)))

(declare-fun res!1001793 () Bool)

(assert (=> b!2360523 (=> (not res!1001793) (not e!1507755))))

(assert (=> b!2360523 (= res!1001793 (isDefined!4278 lt!864270))))

(declare-fun b!2360524 () Bool)

(declare-fun res!1001794 () Bool)

(assert (=> b!2360524 (=> (not res!1001794) (not e!1507755))))

(assert (=> b!2360524 (= res!1001794 (< (size!22113 (_2!16371 (get!8472 lt!864270))) (size!22113 input!1160)))))

(declare-fun b!2360525 () Bool)

(declare-fun e!1507754 () Option!5450)

(declare-fun call!143646 () Option!5450)

(assert (=> b!2360525 (= e!1507754 call!143646)))

(declare-fun d!693833 () Bool)

(assert (=> d!693833 e!1507756))

(declare-fun res!1001792 () Bool)

(assert (=> d!693833 (=> res!1001792 e!1507756)))

(assert (=> d!693833 (= res!1001792 (isEmpty!15864 lt!864270))))

(assert (=> d!693833 (= lt!864270 e!1507754)))

(declare-fun c!375213 () Bool)

(assert (=> d!693833 (= c!375213 (and ((_ is Cons!27928) (t!207903 rules!1706)) ((_ is Nil!27928) (t!207903 (t!207903 rules!1706)))))))

(declare-fun lt!864268 () Unit!40839)

(declare-fun lt!864272 () Unit!40839)

(assert (=> d!693833 (= lt!864268 lt!864272)))

(assert (=> d!693833 (isPrefix!2405 input!1160 input!1160)))

(assert (=> d!693833 (= lt!864272 (lemmaIsPrefixRefl!1531 input!1160 input!1160))))

(assert (=> d!693833 (rulesValidInductive!1573 thiss!13512 (t!207903 rules!1706))))

(assert (=> d!693833 (= (maxPrefix!2270 thiss!13512 (t!207903 rules!1706) input!1160) lt!864270)))

(declare-fun b!2360526 () Bool)

(declare-fun lt!864269 () Option!5450)

(declare-fun lt!864271 () Option!5450)

(assert (=> b!2360526 (= e!1507754 (ite (and ((_ is None!5449) lt!864269) ((_ is None!5449) lt!864271)) None!5449 (ite ((_ is None!5449) lt!864271) lt!864269 (ite ((_ is None!5449) lt!864269) lt!864271 (ite (>= (size!22111 (_1!16371 (v!30851 lt!864269))) (size!22111 (_1!16371 (v!30851 lt!864271)))) lt!864269 lt!864271)))))))

(assert (=> b!2360526 (= lt!864269 call!143646)))

(assert (=> b!2360526 (= lt!864271 (maxPrefix!2270 thiss!13512 (t!207903 (t!207903 rules!1706)) input!1160))))

(declare-fun b!2360527 () Bool)

(assert (=> b!2360527 (= e!1507755 (contains!4876 (t!207903 rules!1706) (rule!6795 (_1!16371 (get!8472 lt!864270)))))))

(declare-fun b!2360528 () Bool)

(declare-fun res!1001795 () Bool)

(assert (=> b!2360528 (=> (not res!1001795) (not e!1507755))))

(assert (=> b!2360528 (= res!1001795 (matchR!3022 (regex!4443 (rule!6795 (_1!16371 (get!8472 lt!864270)))) (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864270))))))))

(declare-fun bm!143641 () Bool)

(assert (=> bm!143641 (= call!143646 (maxPrefixOneRule!1438 thiss!13512 (h!33329 (t!207903 rules!1706)) input!1160))))

(declare-fun b!2360529 () Bool)

(declare-fun res!1001789 () Bool)

(assert (=> b!2360529 (=> (not res!1001789) (not e!1507755))))

(assert (=> b!2360529 (= res!1001789 (= (list!11077 (charsOf!2803 (_1!16371 (get!8472 lt!864270)))) (originalCharacters!5209 (_1!16371 (get!8472 lt!864270)))))))

(declare-fun b!2360530 () Bool)

(declare-fun res!1001791 () Bool)

(assert (=> b!2360530 (=> (not res!1001791) (not e!1507755))))

(assert (=> b!2360530 (= res!1001791 (= (value!141501 (_1!16371 (get!8472 lt!864270))) (apply!6710 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864270)))) (seqFromList!3129 (originalCharacters!5209 (_1!16371 (get!8472 lt!864270)))))))))

(assert (= (and d!693833 c!375213) b!2360525))

(assert (= (and d!693833 (not c!375213)) b!2360526))

(assert (= (or b!2360525 b!2360526) bm!143641))

(assert (= (and d!693833 (not res!1001792)) b!2360523))

(assert (= (and b!2360523 res!1001793) b!2360529))

(assert (= (and b!2360529 res!1001789) b!2360524))

(assert (= (and b!2360524 res!1001794) b!2360522))

(assert (= (and b!2360522 res!1001790) b!2360530))

(assert (= (and b!2360530 res!1001791) b!2360528))

(assert (= (and b!2360528 res!1001795) b!2360527))

(declare-fun m!2772919 () Bool)

(assert (=> b!2360526 m!2772919))

(declare-fun m!2772921 () Bool)

(assert (=> b!2360523 m!2772921))

(declare-fun m!2772923 () Bool)

(assert (=> b!2360527 m!2772923))

(declare-fun m!2772925 () Bool)

(assert (=> b!2360527 m!2772925))

(declare-fun m!2772927 () Bool)

(assert (=> d!693833 m!2772927))

(assert (=> d!693833 m!2772329))

(assert (=> d!693833 m!2772331))

(assert (=> d!693833 m!2772647))

(assert (=> b!2360528 m!2772923))

(declare-fun m!2772929 () Bool)

(assert (=> b!2360528 m!2772929))

(assert (=> b!2360528 m!2772929))

(declare-fun m!2772931 () Bool)

(assert (=> b!2360528 m!2772931))

(assert (=> b!2360528 m!2772931))

(declare-fun m!2772933 () Bool)

(assert (=> b!2360528 m!2772933))

(assert (=> b!2360522 m!2772923))

(assert (=> b!2360522 m!2772929))

(assert (=> b!2360522 m!2772929))

(assert (=> b!2360522 m!2772931))

(assert (=> b!2360522 m!2772931))

(declare-fun m!2772935 () Bool)

(assert (=> b!2360522 m!2772935))

(declare-fun m!2772937 () Bool)

(assert (=> bm!143641 m!2772937))

(assert (=> b!2360530 m!2772923))

(declare-fun m!2772939 () Bool)

(assert (=> b!2360530 m!2772939))

(assert (=> b!2360530 m!2772939))

(declare-fun m!2772941 () Bool)

(assert (=> b!2360530 m!2772941))

(assert (=> b!2360524 m!2772923))

(declare-fun m!2772943 () Bool)

(assert (=> b!2360524 m!2772943))

(assert (=> b!2360524 m!2772351))

(assert (=> b!2360529 m!2772923))

(assert (=> b!2360529 m!2772929))

(assert (=> b!2360529 m!2772929))

(assert (=> b!2360529 m!2772931))

(assert (=> b!2359959 d!693833))

(declare-fun d!693835 () Bool)

(declare-fun lt!864273 () Int)

(assert (=> d!693835 (>= lt!864273 0)))

(declare-fun e!1507757 () Int)

(assert (=> d!693835 (= lt!864273 e!1507757)))

(declare-fun c!375214 () Bool)

(assert (=> d!693835 (= c!375214 ((_ is Nil!27927) (_2!16371 (get!8472 lt!864117))))))

(assert (=> d!693835 (= (size!22113 (_2!16371 (get!8472 lt!864117))) lt!864273)))

(declare-fun b!2360531 () Bool)

(assert (=> b!2360531 (= e!1507757 0)))

(declare-fun b!2360532 () Bool)

(assert (=> b!2360532 (= e!1507757 (+ 1 (size!22113 (t!207902 (_2!16371 (get!8472 lt!864117))))))))

(assert (= (and d!693835 c!375214) b!2360531))

(assert (= (and d!693835 (not c!375214)) b!2360532))

(declare-fun m!2772945 () Bool)

(assert (=> b!2360532 m!2772945))

(assert (=> b!2359957 d!693835))

(assert (=> b!2359957 d!693711))

(declare-fun d!693837 () Bool)

(declare-fun lt!864274 () Int)

(assert (=> d!693837 (>= lt!864274 0)))

(declare-fun e!1507758 () Int)

(assert (=> d!693837 (= lt!864274 e!1507758)))

(declare-fun c!375215 () Bool)

(assert (=> d!693837 (= c!375215 ((_ is Nil!27927) input!1160))))

(assert (=> d!693837 (= (size!22113 input!1160) lt!864274)))

(declare-fun b!2360533 () Bool)

(assert (=> b!2360533 (= e!1507758 0)))

(declare-fun b!2360534 () Bool)

(assert (=> b!2360534 (= e!1507758 (+ 1 (size!22113 (t!207902 input!1160))))))

(assert (= (and d!693837 c!375215) b!2360533))

(assert (= (and d!693837 (not c!375215)) b!2360534))

(declare-fun m!2772947 () Bool)

(assert (=> b!2360534 m!2772947))

(assert (=> b!2359957 d!693837))

(declare-fun d!693839 () Bool)

(assert (=> d!693839 (= (isDefined!4278 lt!864117) (not (isEmpty!15864 lt!864117)))))

(declare-fun bs!460523 () Bool)

(assert (= bs!460523 d!693839))

(assert (=> bs!460523 m!2772327))

(assert (=> b!2359956 d!693839))

(declare-fun d!693841 () Bool)

(assert (=> d!693841 (= (inv!38143 (tag!4933 (h!33329 (t!207903 rules!1706)))) (= (mod (str.len (value!141500 (tag!4933 (h!33329 (t!207903 rules!1706))))) 2) 0))))

(assert (=> b!2360082 d!693841))

(declare-fun d!693843 () Bool)

(declare-fun res!1001796 () Bool)

(declare-fun e!1507759 () Bool)

(assert (=> d!693843 (=> (not res!1001796) (not e!1507759))))

(assert (=> d!693843 (= res!1001796 (semiInverseModEq!1824 (toChars!6142 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toValue!6283 (transformation!4443 (h!33329 (t!207903 rules!1706))))))))

(assert (=> d!693843 (= (inv!38145 (transformation!4443 (h!33329 (t!207903 rules!1706)))) e!1507759)))

(declare-fun b!2360535 () Bool)

(assert (=> b!2360535 (= e!1507759 (equivClasses!1735 (toChars!6142 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toValue!6283 (transformation!4443 (h!33329 (t!207903 rules!1706))))))))

(assert (= (and d!693843 res!1001796) b!2360535))

(declare-fun m!2772949 () Bool)

(assert (=> d!693843 m!2772949))

(declare-fun m!2772951 () Bool)

(assert (=> b!2360535 m!2772951))

(assert (=> b!2360082 d!693843))

(declare-fun b!2360544 () Bool)

(declare-fun e!1507764 () Bool)

(declare-fun tp!754877 () Bool)

(declare-fun tp!754876 () Bool)

(assert (=> b!2360544 (= e!1507764 (and (inv!38148 (left!21231 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))) tp!754877 (inv!38148 (right!21561 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))) tp!754876))))

(declare-fun b!2360546 () Bool)

(declare-fun e!1507765 () Bool)

(declare-fun tp!754878 () Bool)

(assert (=> b!2360546 (= e!1507765 tp!754878)))

(declare-fun b!2360545 () Bool)

(declare-fun inv!38154 (IArray!18295) Bool)

(assert (=> b!2360545 (= e!1507764 (and (inv!38154 (xs!12125 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))) e!1507765))))

(assert (=> b!2360037 (= tp!754769 (and (inv!38148 (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093)))))) e!1507764))))

(assert (= (and b!2360037 ((_ is Node!9145) (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))) b!2360544))

(assert (= b!2360545 b!2360546))

(assert (= (and b!2360037 ((_ is Leaf!13500) (c!375105 (dynLambda!12017 (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))) (value!141501 (_1!16371 (v!30851 lt!864093))))))) b!2360545))

(declare-fun m!2772953 () Bool)

(assert (=> b!2360544 m!2772953))

(declare-fun m!2772955 () Bool)

(assert (=> b!2360544 m!2772955))

(declare-fun m!2772957 () Bool)

(assert (=> b!2360545 m!2772957))

(assert (=> b!2360037 m!2772445))

(declare-fun b!2360548 () Bool)

(declare-fun e!1507766 () Bool)

(declare-fun tp!754881 () Bool)

(declare-fun tp!754882 () Bool)

(assert (=> b!2360548 (= e!1507766 (and tp!754881 tp!754882))))

(declare-fun b!2360547 () Bool)

(assert (=> b!2360547 (= e!1507766 tp_is_empty!11219)))

(declare-fun b!2360550 () Bool)

(declare-fun tp!754879 () Bool)

(declare-fun tp!754880 () Bool)

(assert (=> b!2360550 (= e!1507766 (and tp!754879 tp!754880))))

(assert (=> b!2360097 (= tp!754816 e!1507766)))

(declare-fun b!2360549 () Bool)

(declare-fun tp!754883 () Bool)

(assert (=> b!2360549 (= e!1507766 tp!754883)))

(assert (= (and b!2360097 ((_ is ElementMatch!6901) (regOne!14315 (regex!4443 (h!33329 rules!1706))))) b!2360547))

(assert (= (and b!2360097 ((_ is Concat!11531) (regOne!14315 (regex!4443 (h!33329 rules!1706))))) b!2360548))

(assert (= (and b!2360097 ((_ is Star!6901) (regOne!14315 (regex!4443 (h!33329 rules!1706))))) b!2360549))

(assert (= (and b!2360097 ((_ is Union!6901) (regOne!14315 (regex!4443 (h!33329 rules!1706))))) b!2360550))

(declare-fun b!2360552 () Bool)

(declare-fun e!1507767 () Bool)

(declare-fun tp!754886 () Bool)

(declare-fun tp!754887 () Bool)

(assert (=> b!2360552 (= e!1507767 (and tp!754886 tp!754887))))

(declare-fun b!2360551 () Bool)

(assert (=> b!2360551 (= e!1507767 tp_is_empty!11219)))

(declare-fun b!2360554 () Bool)

(declare-fun tp!754884 () Bool)

(declare-fun tp!754885 () Bool)

(assert (=> b!2360554 (= e!1507767 (and tp!754884 tp!754885))))

(assert (=> b!2360097 (= tp!754817 e!1507767)))

(declare-fun b!2360553 () Bool)

(declare-fun tp!754888 () Bool)

(assert (=> b!2360553 (= e!1507767 tp!754888)))

(assert (= (and b!2360097 ((_ is ElementMatch!6901) (regTwo!14315 (regex!4443 (h!33329 rules!1706))))) b!2360551))

(assert (= (and b!2360097 ((_ is Concat!11531) (regTwo!14315 (regex!4443 (h!33329 rules!1706))))) b!2360552))

(assert (= (and b!2360097 ((_ is Star!6901) (regTwo!14315 (regex!4443 (h!33329 rules!1706))))) b!2360553))

(assert (= (and b!2360097 ((_ is Union!6901) (regTwo!14315 (regex!4443 (h!33329 rules!1706))))) b!2360554))

(declare-fun b!2360555 () Bool)

(declare-fun e!1507768 () Bool)

(declare-fun tp!754889 () Bool)

(assert (=> b!2360555 (= e!1507768 (and tp_is_empty!11219 tp!754889))))

(assert (=> b!2360102 (= tp!754823 e!1507768)))

(assert (= (and b!2360102 ((_ is Cons!27927) (t!207902 (t!207902 input!1160)))) b!2360555))

(declare-fun b!2360557 () Bool)

(declare-fun e!1507769 () Bool)

(declare-fun tp!754892 () Bool)

(declare-fun tp!754893 () Bool)

(assert (=> b!2360557 (= e!1507769 (and tp!754892 tp!754893))))

(declare-fun b!2360556 () Bool)

(assert (=> b!2360556 (= e!1507769 tp_is_empty!11219)))

(declare-fun b!2360559 () Bool)

(declare-fun tp!754890 () Bool)

(declare-fun tp!754891 () Bool)

(assert (=> b!2360559 (= e!1507769 (and tp!754890 tp!754891))))

(assert (=> b!2360095 (= tp!754818 e!1507769)))

(declare-fun b!2360558 () Bool)

(declare-fun tp!754894 () Bool)

(assert (=> b!2360558 (= e!1507769 tp!754894)))

(assert (= (and b!2360095 ((_ is ElementMatch!6901) (regOne!14314 (regex!4443 (h!33329 rules!1706))))) b!2360556))

(assert (= (and b!2360095 ((_ is Concat!11531) (regOne!14314 (regex!4443 (h!33329 rules!1706))))) b!2360557))

(assert (= (and b!2360095 ((_ is Star!6901) (regOne!14314 (regex!4443 (h!33329 rules!1706))))) b!2360558))

(assert (= (and b!2360095 ((_ is Union!6901) (regOne!14314 (regex!4443 (h!33329 rules!1706))))) b!2360559))

(declare-fun b!2360561 () Bool)

(declare-fun e!1507770 () Bool)

(declare-fun tp!754897 () Bool)

(declare-fun tp!754898 () Bool)

(assert (=> b!2360561 (= e!1507770 (and tp!754897 tp!754898))))

(declare-fun b!2360560 () Bool)

(assert (=> b!2360560 (= e!1507770 tp_is_empty!11219)))

(declare-fun b!2360563 () Bool)

(declare-fun tp!754895 () Bool)

(declare-fun tp!754896 () Bool)

(assert (=> b!2360563 (= e!1507770 (and tp!754895 tp!754896))))

(assert (=> b!2360095 (= tp!754819 e!1507770)))

(declare-fun b!2360562 () Bool)

(declare-fun tp!754899 () Bool)

(assert (=> b!2360562 (= e!1507770 tp!754899)))

(assert (= (and b!2360095 ((_ is ElementMatch!6901) (regTwo!14314 (regex!4443 (h!33329 rules!1706))))) b!2360560))

(assert (= (and b!2360095 ((_ is Concat!11531) (regTwo!14314 (regex!4443 (h!33329 rules!1706))))) b!2360561))

(assert (= (and b!2360095 ((_ is Star!6901) (regTwo!14314 (regex!4443 (h!33329 rules!1706))))) b!2360562))

(assert (= (and b!2360095 ((_ is Union!6901) (regTwo!14314 (regex!4443 (h!33329 rules!1706))))) b!2360563))

(declare-fun b!2360565 () Bool)

(declare-fun e!1507771 () Bool)

(declare-fun tp!754902 () Bool)

(declare-fun tp!754903 () Bool)

(assert (=> b!2360565 (= e!1507771 (and tp!754902 tp!754903))))

(declare-fun b!2360564 () Bool)

(assert (=> b!2360564 (= e!1507771 tp_is_empty!11219)))

(declare-fun b!2360567 () Bool)

(declare-fun tp!754900 () Bool)

(declare-fun tp!754901 () Bool)

(assert (=> b!2360567 (= e!1507771 (and tp!754900 tp!754901))))

(assert (=> b!2360096 (= tp!754820 e!1507771)))

(declare-fun b!2360566 () Bool)

(declare-fun tp!754904 () Bool)

(assert (=> b!2360566 (= e!1507771 tp!754904)))

(assert (= (and b!2360096 ((_ is ElementMatch!6901) (reg!7230 (regex!4443 (h!33329 rules!1706))))) b!2360564))

(assert (= (and b!2360096 ((_ is Concat!11531) (reg!7230 (regex!4443 (h!33329 rules!1706))))) b!2360565))

(assert (= (and b!2360096 ((_ is Star!6901) (reg!7230 (regex!4443 (h!33329 rules!1706))))) b!2360566))

(assert (= (and b!2360096 ((_ is Union!6901) (reg!7230 (regex!4443 (h!33329 rules!1706))))) b!2360567))

(declare-fun b!2360570 () Bool)

(declare-fun b_free!70497 () Bool)

(declare-fun b_next!71201 () Bool)

(assert (=> b!2360570 (= b_free!70497 (not b_next!71201))))

(declare-fun tb!138771 () Bool)

(declare-fun t!207940 () Bool)

(assert (=> (and b!2360570 (= (toValue!6283 (transformation!4443 (h!33329 (t!207903 (t!207903 rules!1706))))) (toValue!6283 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207940) tb!138771))

(declare-fun result!169702 () Bool)

(assert (= result!169702 result!169682))

(assert (=> d!693715 t!207940))

(declare-fun tp!754905 () Bool)

(declare-fun b_and!185453 () Bool)

(assert (=> b!2360570 (= tp!754905 (and (=> t!207940 result!169702) b_and!185453))))

(declare-fun b_free!70499 () Bool)

(declare-fun b_next!71203 () Bool)

(assert (=> b!2360570 (= b_free!70499 (not b_next!71203))))

(declare-fun t!207942 () Bool)

(declare-fun tb!138773 () Bool)

(assert (=> (and b!2360570 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 (t!207903 rules!1706))))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093)))))) t!207942) tb!138773))

(declare-fun result!169704 () Bool)

(assert (= result!169704 result!169652))

(assert (=> d!693685 t!207942))

(declare-fun tb!138775 () Bool)

(declare-fun t!207944 () Bool)

(assert (=> (and b!2360570 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 (t!207903 rules!1706))))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (get!8472 lt!864117)))))) t!207944) tb!138775))

(declare-fun result!169706 () Bool)

(assert (= result!169706 result!169688))

(assert (=> d!693755 t!207944))

(declare-fun b_and!185455 () Bool)

(declare-fun tp!754908 () Bool)

(assert (=> b!2360570 (= tp!754908 (and (=> t!207942 result!169704) (=> t!207944 result!169706) b_and!185455))))

(declare-fun e!1507772 () Bool)

(assert (=> b!2360570 (= e!1507772 (and tp!754905 tp!754908))))

(declare-fun tp!754907 () Bool)

(declare-fun b!2360569 () Bool)

(declare-fun e!1507775 () Bool)

(assert (=> b!2360569 (= e!1507775 (and tp!754907 (inv!38143 (tag!4933 (h!33329 (t!207903 (t!207903 rules!1706))))) (inv!38145 (transformation!4443 (h!33329 (t!207903 (t!207903 rules!1706))))) e!1507772))))

(declare-fun b!2360568 () Bool)

(declare-fun e!1507773 () Bool)

(declare-fun tp!754906 () Bool)

(assert (=> b!2360568 (= e!1507773 (and e!1507775 tp!754906))))

(assert (=> b!2360081 (= tp!754803 e!1507773)))

(assert (= b!2360569 b!2360570))

(assert (= b!2360568 b!2360569))

(assert (= (and b!2360081 ((_ is Cons!27928) (t!207903 (t!207903 rules!1706)))) b!2360568))

(declare-fun m!2772959 () Bool)

(assert (=> b!2360569 m!2772959))

(declare-fun m!2772961 () Bool)

(assert (=> b!2360569 m!2772961))

(declare-fun b!2360572 () Bool)

(declare-fun e!1507776 () Bool)

(declare-fun tp!754911 () Bool)

(declare-fun tp!754912 () Bool)

(assert (=> b!2360572 (= e!1507776 (and tp!754911 tp!754912))))

(declare-fun b!2360571 () Bool)

(assert (=> b!2360571 (= e!1507776 tp_is_empty!11219)))

(declare-fun b!2360574 () Bool)

(declare-fun tp!754909 () Bool)

(declare-fun tp!754910 () Bool)

(assert (=> b!2360574 (= e!1507776 (and tp!754909 tp!754910))))

(assert (=> b!2360082 (= tp!754804 e!1507776)))

(declare-fun b!2360573 () Bool)

(declare-fun tp!754913 () Bool)

(assert (=> b!2360573 (= e!1507776 tp!754913)))

(assert (= (and b!2360082 ((_ is ElementMatch!6901) (regex!4443 (h!33329 (t!207903 rules!1706))))) b!2360571))

(assert (= (and b!2360082 ((_ is Concat!11531) (regex!4443 (h!33329 (t!207903 rules!1706))))) b!2360572))

(assert (= (and b!2360082 ((_ is Star!6901) (regex!4443 (h!33329 (t!207903 rules!1706))))) b!2360573))

(assert (= (and b!2360082 ((_ is Union!6901) (regex!4443 (h!33329 (t!207903 rules!1706))))) b!2360574))

(declare-fun b_lambda!73777 () Bool)

(assert (= b_lambda!73765 (or (and b!2359910 b_free!70483 (= (toChars!6142 (transformation!4443 (h!33329 rules!1706))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))))) (and b!2360083 b_free!70491 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 rules!1706)))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))))) (and b!2360570 b_free!70499 (= (toChars!6142 (transformation!4443 (h!33329 (t!207903 (t!207903 rules!1706))))) (toChars!6142 (transformation!4443 (rule!6795 (_1!16371 (v!30851 lt!864093))))))) b_lambda!73777)))

(check-sat (not b_lambda!73777) (not d!693749) (not b!2360573) (not b_next!71193) (not b!2360188) (not bm!143641) (not b!2360200) (not b!2360535) (not d!693803) (not b!2360199) (not b!2360303) (not b_next!71187) (not b!2360371) b_and!185447 (not b!2360182) (not d!693833) (not b!2360296) (not b!2360190) (not d!693797) (not b!2360553) (not b!2360569) b_and!185443 (not b!2360545) (not b!2360194) (not b!2360366) (not b!2360555) (not d!693785) (not b_lambda!73773) (not b!2360550) (not b!2360196) (not b!2360299) (not b_next!71201) (not d!693793) (not d!693763) (not b!2360572) (not d!693839) (not b_lambda!73771) (not b!2360301) (not d!693751) (not b!2360221) b_and!185441 (not b!2360574) (not b!2360216) (not b!2360527) (not d!693799) (not b!2360302) (not b!2360565) (not b!2360526) (not b!2360306) (not b!2360558) (not b!2360202) b_and!185445 (not b!2360522) (not b!2360500) (not b!2360519) (not b!2360549) (not d!693757) (not b!2360178) (not b!2360365) (not b!2360189) (not b!2360297) (not b!2360554) (not b!2360407) (not tb!138761) (not b!2360191) (not b!2360215) (not b!2360341) (not b!2360363) (not b!2360195) (not d!693755) (not b!2360567) (not b!2360222) (not b!2360501) (not b!2360369) (not b!2360524) (not b!2360372) (not b!2360544) (not d!693717) b_and!185455 (not b!2360552) (not b_next!71185) (not d!693815) (not b!2360534) (not d!693825) (not b!2360180) (not b!2360528) (not d!693765) (not b!2360548) (not b!2360197) (not b!2360521) (not d!693767) (not b!2360529) (not b_next!71203) (not b!2360493) (not b!2360546) (not b!2360562) (not b!2360561) (not b!2360523) (not b!2360559) (not b!2360568) (not b!2360517) (not b!2360566) (not bm!143640) (not bm!143633) (not b!2360530) (not d!693843) (not b!2360193) (not b_next!71195) (not b!2360304) (not d!693753) (not b!2360343) (not b!2360503) (not b!2360492) (not b!2360037) (not b!2360362) (not b!2360511) (not b!2360557) (not b!2360298) (not d!693721) (not b!2360214) (not b!2360563) (not tb!138757) (not b!2360408) (not b!2360532) b_and!185453 tp_is_empty!11219 (not b!2360495))
(check-sat b_and!185443 (not b_next!71201) b_and!185441 b_and!185445 (not b_next!71193) (not b_next!71203) (not b_next!71195) b_and!185453 b_and!185447 (not b_next!71187) b_and!185455 (not b_next!71185))
