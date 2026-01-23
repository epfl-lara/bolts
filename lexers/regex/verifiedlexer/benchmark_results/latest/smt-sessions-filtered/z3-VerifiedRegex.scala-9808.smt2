; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513440 () Bool)

(assert start!513440)

(declare-fun b!4900969 () Bool)

(declare-fun b_free!131683 () Bool)

(declare-fun b_next!132473 () Bool)

(assert (=> b!4900969 (= b_free!131683 (not b_next!132473))))

(declare-fun tp!1378819 () Bool)

(declare-fun b_and!346067 () Bool)

(assert (=> b!4900969 (= tp!1378819 b_and!346067)))

(declare-fun b_free!131685 () Bool)

(declare-fun b_next!132475 () Bool)

(assert (=> b!4900969 (= b_free!131685 (not b_next!132475))))

(declare-fun tp!1378822 () Bool)

(declare-fun b_and!346069 () Bool)

(assert (=> b!4900969 (= tp!1378822 b_and!346069)))

(declare-fun b!4900963 () Bool)

(declare-fun e!3063444 () Bool)

(declare-fun e!3063445 () Bool)

(declare-fun tp!1378823 () Bool)

(assert (=> b!4900963 (= e!3063444 (and e!3063445 tp!1378823))))

(declare-fun res!2093321 () Bool)

(declare-fun e!3063442 () Bool)

(assert (=> start!513440 (=> (not res!2093321) (not e!3063442))))

(declare-datatypes ((LexerInterface!7776 0))(
  ( (LexerInterfaceExt!7773 (__x!34281 Int)) (Lexer!7774) )
))
(declare-fun thiss!14805 () LexerInterface!7776)

(get-info :version)

(assert (=> start!513440 (= res!2093321 ((_ is Lexer!7774) thiss!14805))))

(assert (=> start!513440 e!3063442))

(assert (=> start!513440 true))

(assert (=> start!513440 e!3063444))

(declare-datatypes ((C!26716 0))(
  ( (C!26717 (val!22692 Int)) )
))
(declare-datatypes ((List!56563 0))(
  ( (Nil!56439) (Cons!56439 (h!62887 C!26716) (t!366643 List!56563)) )
))
(declare-datatypes ((IArray!29565 0))(
  ( (IArray!29566 (innerList!14840 List!56563)) )
))
(declare-datatypes ((Conc!14752 0))(
  ( (Node!14752 (left!41010 Conc!14752) (right!41340 Conc!14752) (csize!29734 Int) (cheight!14963 Int)) (Leaf!24561 (xs!18068 IArray!29565) (csize!29735 Int)) (Empty!14752) )
))
(declare-datatypes ((BalanceConc!28934 0))(
  ( (BalanceConc!28935 (c!833067 Conc!14752)) )
))
(declare-fun input!1236 () BalanceConc!28934)

(declare-fun e!3063441 () Bool)

(declare-fun inv!72752 (BalanceConc!28934) Bool)

(assert (=> start!513440 (and (inv!72752 input!1236) e!3063441)))

(declare-fun b!4900964 () Bool)

(declare-fun res!2093320 () Bool)

(assert (=> b!4900964 (=> (not res!2093320) (not e!3063442))))

(declare-datatypes ((List!56564 0))(
  ( (Nil!56440) (Cons!56440 (h!62888 (_ BitVec 16)) (t!366644 List!56564)) )
))
(declare-datatypes ((TokenValue!8494 0))(
  ( (FloatLiteralValue!16988 (text!59903 List!56564)) (TokenValueExt!8493 (__x!34282 Int)) (Broken!42470 (value!262367 List!56564)) (Object!8617) (End!8494) (Def!8494) (Underscore!8494) (Match!8494) (Else!8494) (Error!8494) (Case!8494) (If!8494) (Extends!8494) (Abstract!8494) (Class!8494) (Val!8494) (DelimiterValue!16988 (del!8554 List!56564)) (KeywordValue!8500 (value!262368 List!56564)) (CommentValue!16988 (value!262369 List!56564)) (WhitespaceValue!16988 (value!262370 List!56564)) (IndentationValue!8494 (value!262371 List!56564)) (String!63911) (Int32!8494) (Broken!42471 (value!262372 List!56564)) (Boolean!8495) (Unit!146544) (OperatorValue!8497 (op!8554 List!56564)) (IdentifierValue!16988 (value!262373 List!56564)) (IdentifierValue!16989 (value!262374 List!56564)) (WhitespaceValue!16989 (value!262375 List!56564)) (True!16988) (False!16988) (Broken!42472 (value!262376 List!56564)) (Broken!42473 (value!262377 List!56564)) (True!16989) (RightBrace!8494) (RightBracket!8494) (Colon!8494) (Null!8494) (Comma!8494) (LeftBracket!8494) (False!16989) (LeftBrace!8494) (ImaginaryLiteralValue!8494 (text!59904 List!56564)) (StringLiteralValue!25482 (value!262378 List!56564)) (EOFValue!8494 (value!262379 List!56564)) (IdentValue!8494 (value!262380 List!56564)) (DelimiterValue!16989 (value!262381 List!56564)) (DedentValue!8494 (value!262382 List!56564)) (NewLineValue!8494 (value!262383 List!56564)) (IntegerValue!25482 (value!262384 (_ BitVec 32)) (text!59905 List!56564)) (IntegerValue!25483 (value!262385 Int) (text!59906 List!56564)) (Times!8494) (Or!8494) (Equal!8494) (Minus!8494) (Broken!42474 (value!262386 List!56564)) (And!8494) (Div!8494) (LessEqual!8494) (Mod!8494) (Concat!21753) (Not!8494) (Plus!8494) (SpaceValue!8494 (value!262387 List!56564)) (IntegerValue!25484 (value!262388 Int) (text!59907 List!56564)) (StringLiteralValue!25483 (text!59908 List!56564)) (FloatLiteralValue!16989 (text!59909 List!56564)) (BytesLiteralValue!8494 (value!262389 List!56564)) (CommentValue!16989 (value!262390 List!56564)) (StringLiteralValue!25484 (value!262391 List!56564)) (ErrorTokenValue!8494 (msg!8555 List!56564)) )
))
(declare-datatypes ((String!63912 0))(
  ( (String!63913 (value!262392 String)) )
))
(declare-datatypes ((Regex!13259 0))(
  ( (ElementMatch!13259 (c!833068 C!26716)) (Concat!21754 (regOne!27030 Regex!13259) (regTwo!27030 Regex!13259)) (EmptyExpr!13259) (Star!13259 (reg!13588 Regex!13259)) (EmptyLang!13259) (Union!13259 (regOne!27031 Regex!13259) (regTwo!27031 Regex!13259)) )
))
(declare-datatypes ((TokenValueInjection!16296 0))(
  ( (TokenValueInjection!16297 (toValue!11095 Int) (toChars!10954 Int)) )
))
(declare-datatypes ((Rule!16168 0))(
  ( (Rule!16169 (regex!8184 Regex!13259) (tag!9048 String!63912) (isSeparator!8184 Bool) (transformation!8184 TokenValueInjection!16296)) )
))
(declare-datatypes ((List!56565 0))(
  ( (Nil!56441) (Cons!56441 (h!62889 Rule!16168) (t!366645 List!56565)) )
))
(declare-fun rulesArg!165 () List!56565)

(declare-fun rulesValidInductive!3163 (LexerInterface!7776 List!56565) Bool)

(assert (=> b!4900964 (= res!2093320 (rulesValidInductive!3163 thiss!14805 rulesArg!165))))

(declare-fun b!4900965 () Bool)

(assert (=> b!4900965 (= e!3063442 (not (or (and ((_ is Cons!56441) rulesArg!165) ((_ is Nil!56441) (t!366645 rulesArg!165))) ((_ is Cons!56441) rulesArg!165))))))

(declare-fun lt!2009795 () List!56563)

(declare-fun isPrefix!4904 (List!56563 List!56563) Bool)

(assert (=> b!4900965 (isPrefix!4904 lt!2009795 lt!2009795)))

(declare-datatypes ((Unit!146545 0))(
  ( (Unit!146546) )
))
(declare-fun lt!2009794 () Unit!146545)

(declare-fun lemmaIsPrefixRefl!3301 (List!56563 List!56563) Unit!146545)

(assert (=> b!4900965 (= lt!2009794 (lemmaIsPrefixRefl!3301 lt!2009795 lt!2009795))))

(declare-fun list!17752 (BalanceConc!28934) List!56563)

(assert (=> b!4900965 (= lt!2009795 (list!17752 input!1236))))

(declare-fun tp!1378820 () Bool)

(declare-fun b!4900966 () Bool)

(declare-fun e!3063443 () Bool)

(declare-fun inv!72748 (String!63912) Bool)

(declare-fun inv!72753 (TokenValueInjection!16296) Bool)

(assert (=> b!4900966 (= e!3063445 (and tp!1378820 (inv!72748 (tag!9048 (h!62889 rulesArg!165))) (inv!72753 (transformation!8184 (h!62889 rulesArg!165))) e!3063443))))

(declare-fun b!4900967 () Bool)

(declare-fun tp!1378821 () Bool)

(declare-fun inv!72754 (Conc!14752) Bool)

(assert (=> b!4900967 (= e!3063441 (and (inv!72754 (c!833067 input!1236)) tp!1378821))))

(declare-fun b!4900968 () Bool)

(declare-fun res!2093322 () Bool)

(assert (=> b!4900968 (=> (not res!2093322) (not e!3063442))))

(declare-fun isEmpty!30314 (List!56565) Bool)

(assert (=> b!4900968 (= res!2093322 (not (isEmpty!30314 rulesArg!165)))))

(assert (=> b!4900969 (= e!3063443 (and tp!1378819 tp!1378822))))

(assert (= (and start!513440 res!2093321) b!4900964))

(assert (= (and b!4900964 res!2093320) b!4900968))

(assert (= (and b!4900968 res!2093322) b!4900965))

(assert (= b!4900966 b!4900969))

(assert (= b!4900963 b!4900966))

(assert (= (and start!513440 ((_ is Cons!56441) rulesArg!165)) b!4900963))

(assert (= start!513440 b!4900967))

(declare-fun m!5909836 () Bool)

(assert (=> start!513440 m!5909836))

(declare-fun m!5909838 () Bool)

(assert (=> b!4900964 m!5909838))

(declare-fun m!5909840 () Bool)

(assert (=> b!4900966 m!5909840))

(declare-fun m!5909842 () Bool)

(assert (=> b!4900966 m!5909842))

(declare-fun m!5909844 () Bool)

(assert (=> b!4900967 m!5909844))

(declare-fun m!5909846 () Bool)

(assert (=> b!4900965 m!5909846))

(declare-fun m!5909848 () Bool)

(assert (=> b!4900965 m!5909848))

(declare-fun m!5909850 () Bool)

(assert (=> b!4900965 m!5909850))

(declare-fun m!5909852 () Bool)

(assert (=> b!4900968 m!5909852))

(check-sat (not b!4900964) (not b_next!132473) (not b!4900965) (not b!4900967) (not b!4900966) (not start!513440) b_and!346069 (not b!4900963) (not b_next!132475) b_and!346067 (not b!4900968))
(check-sat b_and!346069 b_and!346067 (not b_next!132473) (not b_next!132475))
(get-model)

(declare-fun d!1575417 () Bool)

(assert (=> d!1575417 true))

(declare-fun lt!2009807 () Bool)

(declare-fun lambda!244218 () Int)

(declare-fun forall!13100 (List!56565 Int) Bool)

(assert (=> d!1575417 (= lt!2009807 (forall!13100 rulesArg!165 lambda!244218))))

(declare-fun e!3063496 () Bool)

(assert (=> d!1575417 (= lt!2009807 e!3063496)))

(declare-fun res!2093351 () Bool)

(assert (=> d!1575417 (=> res!2093351 e!3063496)))

(assert (=> d!1575417 (= res!2093351 (not ((_ is Cons!56441) rulesArg!165)))))

(assert (=> d!1575417 (= (rulesValidInductive!3163 thiss!14805 rulesArg!165) lt!2009807)))

(declare-fun b!4901042 () Bool)

(declare-fun e!3063497 () Bool)

(assert (=> b!4901042 (= e!3063496 e!3063497)))

(declare-fun res!2093352 () Bool)

(assert (=> b!4901042 (=> (not res!2093352) (not e!3063497))))

(declare-fun ruleValid!3682 (LexerInterface!7776 Rule!16168) Bool)

(assert (=> b!4901042 (= res!2093352 (ruleValid!3682 thiss!14805 (h!62889 rulesArg!165)))))

(declare-fun b!4901043 () Bool)

(assert (=> b!4901043 (= e!3063497 (rulesValidInductive!3163 thiss!14805 (t!366645 rulesArg!165)))))

(assert (= (and d!1575417 (not res!2093351)) b!4901042))

(assert (= (and b!4901042 res!2093352) b!4901043))

(declare-fun m!5909892 () Bool)

(assert (=> d!1575417 m!5909892))

(declare-fun m!5909894 () Bool)

(assert (=> b!4901042 m!5909894))

(declare-fun m!5909896 () Bool)

(assert (=> b!4901043 m!5909896))

(assert (=> b!4900964 d!1575417))

(declare-fun d!1575437 () Bool)

(declare-fun isBalanced!4022 (Conc!14752) Bool)

(assert (=> d!1575437 (= (inv!72752 input!1236) (isBalanced!4022 (c!833067 input!1236)))))

(declare-fun bs!1176796 () Bool)

(assert (= bs!1176796 d!1575437))

(declare-fun m!5909898 () Bool)

(assert (=> bs!1176796 m!5909898))

(assert (=> start!513440 d!1575437))

(declare-fun d!1575439 () Bool)

(assert (=> d!1575439 (= (isEmpty!30314 rulesArg!165) ((_ is Nil!56441) rulesArg!165))))

(assert (=> b!4900968 d!1575439))

(declare-fun d!1575441 () Bool)

(declare-fun c!833074 () Bool)

(assert (=> d!1575441 (= c!833074 ((_ is Node!14752) (c!833067 input!1236)))))

(declare-fun e!3063502 () Bool)

(assert (=> d!1575441 (= (inv!72754 (c!833067 input!1236)) e!3063502)))

(declare-fun b!4901052 () Bool)

(declare-fun inv!72757 (Conc!14752) Bool)

(assert (=> b!4901052 (= e!3063502 (inv!72757 (c!833067 input!1236)))))

(declare-fun b!4901053 () Bool)

(declare-fun e!3063503 () Bool)

(assert (=> b!4901053 (= e!3063502 e!3063503)))

(declare-fun res!2093355 () Bool)

(assert (=> b!4901053 (= res!2093355 (not ((_ is Leaf!24561) (c!833067 input!1236))))))

(assert (=> b!4901053 (=> res!2093355 e!3063503)))

(declare-fun b!4901054 () Bool)

(declare-fun inv!72759 (Conc!14752) Bool)

(assert (=> b!4901054 (= e!3063503 (inv!72759 (c!833067 input!1236)))))

(assert (= (and d!1575441 c!833074) b!4901052))

(assert (= (and d!1575441 (not c!833074)) b!4901053))

(assert (= (and b!4901053 (not res!2093355)) b!4901054))

(declare-fun m!5909900 () Bool)

(assert (=> b!4901052 m!5909900))

(declare-fun m!5909902 () Bool)

(assert (=> b!4901054 m!5909902))

(assert (=> b!4900967 d!1575441))

(declare-fun d!1575443 () Bool)

(assert (=> d!1575443 (= (inv!72748 (tag!9048 (h!62889 rulesArg!165))) (= (mod (str.len (value!262392 (tag!9048 (h!62889 rulesArg!165)))) 2) 0))))

(assert (=> b!4900966 d!1575443))

(declare-fun d!1575445 () Bool)

(declare-fun res!2093358 () Bool)

(declare-fun e!3063506 () Bool)

(assert (=> d!1575445 (=> (not res!2093358) (not e!3063506))))

(declare-fun semiInverseModEq!3596 (Int Int) Bool)

(assert (=> d!1575445 (= res!2093358 (semiInverseModEq!3596 (toChars!10954 (transformation!8184 (h!62889 rulesArg!165))) (toValue!11095 (transformation!8184 (h!62889 rulesArg!165)))))))

(assert (=> d!1575445 (= (inv!72753 (transformation!8184 (h!62889 rulesArg!165))) e!3063506)))

(declare-fun b!4901057 () Bool)

(declare-fun equivClasses!3475 (Int Int) Bool)

(assert (=> b!4901057 (= e!3063506 (equivClasses!3475 (toChars!10954 (transformation!8184 (h!62889 rulesArg!165))) (toValue!11095 (transformation!8184 (h!62889 rulesArg!165)))))))

(assert (= (and d!1575445 res!2093358) b!4901057))

(declare-fun m!5909904 () Bool)

(assert (=> d!1575445 m!5909904))

(declare-fun m!5909906 () Bool)

(assert (=> b!4901057 m!5909906))

(assert (=> b!4900966 d!1575445))

(declare-fun b!4901069 () Bool)

(declare-fun e!3063513 () Bool)

(declare-fun size!37176 (List!56563) Int)

(assert (=> b!4901069 (= e!3063513 (>= (size!37176 lt!2009795) (size!37176 lt!2009795)))))

(declare-fun d!1575447 () Bool)

(assert (=> d!1575447 e!3063513))

(declare-fun res!2093370 () Bool)

(assert (=> d!1575447 (=> res!2093370 e!3063513)))

(declare-fun lt!2009810 () Bool)

(assert (=> d!1575447 (= res!2093370 (not lt!2009810))))

(declare-fun e!3063514 () Bool)

(assert (=> d!1575447 (= lt!2009810 e!3063514)))

(declare-fun res!2093369 () Bool)

(assert (=> d!1575447 (=> res!2093369 e!3063514)))

(assert (=> d!1575447 (= res!2093369 ((_ is Nil!56439) lt!2009795))))

(assert (=> d!1575447 (= (isPrefix!4904 lt!2009795 lt!2009795) lt!2009810)))

(declare-fun b!4901066 () Bool)

(declare-fun e!3063515 () Bool)

(assert (=> b!4901066 (= e!3063514 e!3063515)))

(declare-fun res!2093368 () Bool)

(assert (=> b!4901066 (=> (not res!2093368) (not e!3063515))))

(assert (=> b!4901066 (= res!2093368 (not ((_ is Nil!56439) lt!2009795)))))

(declare-fun b!4901068 () Bool)

(declare-fun tail!9611 (List!56563) List!56563)

(assert (=> b!4901068 (= e!3063515 (isPrefix!4904 (tail!9611 lt!2009795) (tail!9611 lt!2009795)))))

(declare-fun b!4901067 () Bool)

(declare-fun res!2093367 () Bool)

(assert (=> b!4901067 (=> (not res!2093367) (not e!3063515))))

(declare-fun head!10465 (List!56563) C!26716)

(assert (=> b!4901067 (= res!2093367 (= (head!10465 lt!2009795) (head!10465 lt!2009795)))))

(assert (= (and d!1575447 (not res!2093369)) b!4901066))

(assert (= (and b!4901066 res!2093368) b!4901067))

(assert (= (and b!4901067 res!2093367) b!4901068))

(assert (= (and d!1575447 (not res!2093370)) b!4901069))

(declare-fun m!5909908 () Bool)

(assert (=> b!4901069 m!5909908))

(assert (=> b!4901069 m!5909908))

(declare-fun m!5909910 () Bool)

(assert (=> b!4901068 m!5909910))

(assert (=> b!4901068 m!5909910))

(assert (=> b!4901068 m!5909910))

(assert (=> b!4901068 m!5909910))

(declare-fun m!5909912 () Bool)

(assert (=> b!4901068 m!5909912))

(declare-fun m!5909914 () Bool)

(assert (=> b!4901067 m!5909914))

(assert (=> b!4901067 m!5909914))

(assert (=> b!4900965 d!1575447))

(declare-fun d!1575449 () Bool)

(assert (=> d!1575449 (isPrefix!4904 lt!2009795 lt!2009795)))

(declare-fun lt!2009813 () Unit!146545)

(declare-fun choose!35793 (List!56563 List!56563) Unit!146545)

(assert (=> d!1575449 (= lt!2009813 (choose!35793 lt!2009795 lt!2009795))))

(assert (=> d!1575449 (= (lemmaIsPrefixRefl!3301 lt!2009795 lt!2009795) lt!2009813)))

(declare-fun bs!1176797 () Bool)

(assert (= bs!1176797 d!1575449))

(assert (=> bs!1176797 m!5909846))

(declare-fun m!5909916 () Bool)

(assert (=> bs!1176797 m!5909916))

(assert (=> b!4900965 d!1575449))

(declare-fun d!1575451 () Bool)

(declare-fun list!17754 (Conc!14752) List!56563)

(assert (=> d!1575451 (= (list!17752 input!1236) (list!17754 (c!833067 input!1236)))))

(declare-fun bs!1176798 () Bool)

(assert (= bs!1176798 d!1575451))

(declare-fun m!5909918 () Bool)

(assert (=> bs!1176798 m!5909918))

(assert (=> b!4900965 d!1575451))

(declare-fun b!4901080 () Bool)

(declare-fun b_free!131691 () Bool)

(declare-fun b_next!132481 () Bool)

(assert (=> b!4901080 (= b_free!131691 (not b_next!132481))))

(declare-fun tp!1378870 () Bool)

(declare-fun b_and!346075 () Bool)

(assert (=> b!4901080 (= tp!1378870 b_and!346075)))

(declare-fun b_free!131693 () Bool)

(declare-fun b_next!132483 () Bool)

(assert (=> b!4901080 (= b_free!131693 (not b_next!132483))))

(declare-fun tp!1378868 () Bool)

(declare-fun b_and!346077 () Bool)

(assert (=> b!4901080 (= tp!1378868 b_and!346077)))

(declare-fun e!3063527 () Bool)

(assert (=> b!4901080 (= e!3063527 (and tp!1378870 tp!1378868))))

(declare-fun tp!1378869 () Bool)

(declare-fun e!3063526 () Bool)

(declare-fun b!4901079 () Bool)

(assert (=> b!4901079 (= e!3063526 (and tp!1378869 (inv!72748 (tag!9048 (h!62889 (t!366645 rulesArg!165)))) (inv!72753 (transformation!8184 (h!62889 (t!366645 rulesArg!165)))) e!3063527))))

(declare-fun b!4901078 () Bool)

(declare-fun e!3063525 () Bool)

(declare-fun tp!1378871 () Bool)

(assert (=> b!4901078 (= e!3063525 (and e!3063526 tp!1378871))))

(assert (=> b!4900963 (= tp!1378823 e!3063525)))

(assert (= b!4901079 b!4901080))

(assert (= b!4901078 b!4901079))

(assert (= (and b!4900963 ((_ is Cons!56441) (t!366645 rulesArg!165))) b!4901078))

(declare-fun m!5909920 () Bool)

(assert (=> b!4901079 m!5909920))

(declare-fun m!5909922 () Bool)

(assert (=> b!4901079 m!5909922))

(declare-fun e!3063533 () Bool)

(declare-fun b!4901089 () Bool)

(declare-fun tp!1378880 () Bool)

(declare-fun tp!1378879 () Bool)

(assert (=> b!4901089 (= e!3063533 (and (inv!72754 (left!41010 (c!833067 input!1236))) tp!1378880 (inv!72754 (right!41340 (c!833067 input!1236))) tp!1378879))))

(declare-fun b!4901091 () Bool)

(declare-fun e!3063532 () Bool)

(declare-fun tp!1378878 () Bool)

(assert (=> b!4901091 (= e!3063532 tp!1378878)))

(declare-fun b!4901090 () Bool)

(declare-fun inv!72760 (IArray!29565) Bool)

(assert (=> b!4901090 (= e!3063533 (and (inv!72760 (xs!18068 (c!833067 input!1236))) e!3063532))))

(assert (=> b!4900967 (= tp!1378821 (and (inv!72754 (c!833067 input!1236)) e!3063533))))

(assert (= (and b!4900967 ((_ is Node!14752) (c!833067 input!1236))) b!4901089))

(assert (= b!4901090 b!4901091))

(assert (= (and b!4900967 ((_ is Leaf!24561) (c!833067 input!1236))) b!4901090))

(declare-fun m!5909924 () Bool)

(assert (=> b!4901089 m!5909924))

(declare-fun m!5909926 () Bool)

(assert (=> b!4901089 m!5909926))

(declare-fun m!5909928 () Bool)

(assert (=> b!4901090 m!5909928))

(assert (=> b!4900967 m!5909844))

(declare-fun b!4901103 () Bool)

(declare-fun e!3063536 () Bool)

(declare-fun tp!1378891 () Bool)

(declare-fun tp!1378894 () Bool)

(assert (=> b!4901103 (= e!3063536 (and tp!1378891 tp!1378894))))

(assert (=> b!4900966 (= tp!1378820 e!3063536)))

(declare-fun b!4901105 () Bool)

(declare-fun tp!1378892 () Bool)

(declare-fun tp!1378893 () Bool)

(assert (=> b!4901105 (= e!3063536 (and tp!1378892 tp!1378893))))

(declare-fun b!4901102 () Bool)

(declare-fun tp_is_empty!35799 () Bool)

(assert (=> b!4901102 (= e!3063536 tp_is_empty!35799)))

(declare-fun b!4901104 () Bool)

(declare-fun tp!1378895 () Bool)

(assert (=> b!4901104 (= e!3063536 tp!1378895)))

(assert (= (and b!4900966 ((_ is ElementMatch!13259) (regex!8184 (h!62889 rulesArg!165)))) b!4901102))

(assert (= (and b!4900966 ((_ is Concat!21754) (regex!8184 (h!62889 rulesArg!165)))) b!4901103))

(assert (= (and b!4900966 ((_ is Star!13259) (regex!8184 (h!62889 rulesArg!165)))) b!4901104))

(assert (= (and b!4900966 ((_ is Union!13259) (regex!8184 (h!62889 rulesArg!165)))) b!4901105))

(check-sat b_and!346069 b_and!346075 (not b_next!132473) (not b!4901068) (not b!4901054) (not d!1575451) (not b!4901103) (not b!4901052) (not b!4900967) (not b!4901057) (not b!4901043) (not d!1575437) (not d!1575449) (not d!1575417) (not b!4901079) (not b!4901091) (not b!4901105) (not b!4901042) (not b!4901089) (not b_next!132481) (not b!4901069) (not b!4901067) (not b_next!132475) (not b!4901104) (not b!4901078) (not d!1575445) tp_is_empty!35799 b_and!346077 (not b_next!132483) b_and!346067 (not b!4901090))
(check-sat (not b_next!132481) b_and!346069 b_and!346075 (not b_next!132473) (not b_next!132475) b_and!346067 b_and!346077 (not b_next!132483))
