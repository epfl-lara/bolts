; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510944 () Bool)

(assert start!510944)

(declare-fun b!4882890 () Bool)

(declare-fun b_free!131003 () Bool)

(declare-fun b_next!131793 () Bool)

(assert (=> b!4882890 (= b_free!131003 (not b_next!131793))))

(declare-fun tp!1373919 () Bool)

(declare-fun b_and!343835 () Bool)

(assert (=> b!4882890 (= tp!1373919 b_and!343835)))

(declare-fun b_free!131005 () Bool)

(declare-fun b_next!131795 () Bool)

(assert (=> b!4882890 (= b_free!131005 (not b_next!131795))))

(declare-fun tp!1373916 () Bool)

(declare-fun b_and!343837 () Bool)

(assert (=> b!4882890 (= tp!1373916 b_and!343837)))

(declare-fun b!4882885 () Bool)

(declare-fun e!3051785 () Bool)

(declare-fun e!3051786 () Bool)

(assert (=> b!4882885 (= e!3051785 (not e!3051786))))

(declare-fun res!2084460 () Bool)

(assert (=> b!4882885 (=> res!2084460 e!3051786)))

(declare-datatypes ((C!26508 0))(
  ( (C!26509 (val!22588 Int)) )
))
(declare-datatypes ((List!56245 0))(
  ( (Nil!56121) (Cons!56121 (h!62569 C!26508) (t!364891 List!56245)) )
))
(declare-datatypes ((IArray!29357 0))(
  ( (IArray!29358 (innerList!14736 List!56245)) )
))
(declare-datatypes ((Conc!14648 0))(
  ( (Node!14648 (left!40778 Conc!14648) (right!41108 Conc!14648) (csize!29526 Int) (cheight!14859 Int)) (Leaf!24405 (xs!17964 IArray!29357) (csize!29527 Int)) (Empty!14648) )
))
(declare-datatypes ((BalanceConc!28726 0))(
  ( (BalanceConc!28727 (c!830409 Conc!14648)) )
))
(declare-datatypes ((List!56246 0))(
  ( (Nil!56122) (Cons!56122 (h!62570 (_ BitVec 16)) (t!364892 List!56246)) )
))
(declare-datatypes ((TokenValue!8390 0))(
  ( (FloatLiteralValue!16780 (text!59175 List!56246)) (TokenValueExt!8389 (__x!34073 Int)) (Broken!41950 (value!259406 List!56246)) (Object!8513) (End!8390) (Def!8390) (Underscore!8390) (Match!8390) (Else!8390) (Error!8390) (Case!8390) (If!8390) (Extends!8390) (Abstract!8390) (Class!8390) (Val!8390) (DelimiterValue!16780 (del!8450 List!56246)) (KeywordValue!8396 (value!259407 List!56246)) (CommentValue!16780 (value!259408 List!56246)) (WhitespaceValue!16780 (value!259409 List!56246)) (IndentationValue!8390 (value!259410 List!56246)) (String!63391) (Int32!8390) (Broken!41951 (value!259411 List!56246)) (Boolean!8391) (Unit!146111) (OperatorValue!8393 (op!8450 List!56246)) (IdentifierValue!16780 (value!259412 List!56246)) (IdentifierValue!16781 (value!259413 List!56246)) (WhitespaceValue!16781 (value!259414 List!56246)) (True!16780) (False!16780) (Broken!41952 (value!259415 List!56246)) (Broken!41953 (value!259416 List!56246)) (True!16781) (RightBrace!8390) (RightBracket!8390) (Colon!8390) (Null!8390) (Comma!8390) (LeftBracket!8390) (False!16781) (LeftBrace!8390) (ImaginaryLiteralValue!8390 (text!59176 List!56246)) (StringLiteralValue!25170 (value!259417 List!56246)) (EOFValue!8390 (value!259418 List!56246)) (IdentValue!8390 (value!259419 List!56246)) (DelimiterValue!16781 (value!259420 List!56246)) (DedentValue!8390 (value!259421 List!56246)) (NewLineValue!8390 (value!259422 List!56246)) (IntegerValue!25170 (value!259423 (_ BitVec 32)) (text!59177 List!56246)) (IntegerValue!25171 (value!259424 Int) (text!59178 List!56246)) (Times!8390) (Or!8390) (Equal!8390) (Minus!8390) (Broken!41954 (value!259425 List!56246)) (And!8390) (Div!8390) (LessEqual!8390) (Mod!8390) (Concat!21545) (Not!8390) (Plus!8390) (SpaceValue!8390 (value!259426 List!56246)) (IntegerValue!25172 (value!259427 Int) (text!59179 List!56246)) (StringLiteralValue!25171 (text!59180 List!56246)) (FloatLiteralValue!16781 (text!59181 List!56246)) (BytesLiteralValue!8390 (value!259428 List!56246)) (CommentValue!16781 (value!259429 List!56246)) (StringLiteralValue!25172 (value!259430 List!56246)) (ErrorTokenValue!8390 (msg!8451 List!56246)) )
))
(declare-datatypes ((Regex!13155 0))(
  ( (ElementMatch!13155 (c!830410 C!26508)) (Concat!21546 (regOne!26822 Regex!13155) (regTwo!26822 Regex!13155)) (EmptyExpr!13155) (Star!13155 (reg!13484 Regex!13155)) (EmptyLang!13155) (Union!13155 (regOne!26823 Regex!13155) (regTwo!26823 Regex!13155)) )
))
(declare-datatypes ((String!63392 0))(
  ( (String!63393 (value!259431 String)) )
))
(declare-datatypes ((TokenValueInjection!16088 0))(
  ( (TokenValueInjection!16089 (toValue!10967 Int) (toChars!10826 Int)) )
))
(declare-datatypes ((Rule!15960 0))(
  ( (Rule!15961 (regex!8080 Regex!13155) (tag!8944 String!63392) (isSeparator!8080 Bool) (transformation!8080 TokenValueInjection!16088)) )
))
(declare-datatypes ((List!56247 0))(
  ( (Nil!56123) (Cons!56123 (h!62571 Rule!15960) (t!364893 List!56247)) )
))
(declare-fun rulesArg!165 () List!56247)

(get-info :version)

(assert (=> b!4882885 (= res!2084460 (or (and ((_ is Cons!56123) rulesArg!165) ((_ is Nil!56123) (t!364893 rulesArg!165))) (not ((_ is Cons!56123) rulesArg!165))))))

(declare-fun lt!2000160 () List!56245)

(declare-fun isPrefix!4802 (List!56245 List!56245) Bool)

(assert (=> b!4882885 (isPrefix!4802 lt!2000160 lt!2000160)))

(declare-datatypes ((Unit!146112 0))(
  ( (Unit!146113) )
))
(declare-fun lt!2000162 () Unit!146112)

(declare-fun lemmaIsPrefixRefl!3199 (List!56245 List!56245) Unit!146112)

(assert (=> b!4882885 (= lt!2000162 (lemmaIsPrefixRefl!3199 lt!2000160 lt!2000160))))

(declare-fun input!1236 () BalanceConc!28726)

(declare-fun list!17603 (BalanceConc!28726) List!56245)

(assert (=> b!4882885 (= lt!2000160 (list!17603 input!1236))))

(declare-fun b!4882886 () Bool)

(declare-fun e!3051784 () Bool)

(declare-fun isEmpty!30077 (List!56247) Bool)

(assert (=> b!4882886 (= e!3051784 (not (isEmpty!30077 (t!364893 rulesArg!165))))))

(declare-fun b!4882887 () Bool)

(assert (=> b!4882887 (= e!3051786 e!3051784)))

(declare-fun res!2084462 () Bool)

(assert (=> b!4882887 (=> res!2084462 e!3051784)))

(declare-datatypes ((LexerInterface!7672 0))(
  ( (LexerInterfaceExt!7669 (__x!34074 Int)) (Lexer!7670) )
))
(declare-fun thiss!14805 () LexerInterface!7672)

(declare-fun rulesValidInductive!3059 (LexerInterface!7672 List!56247) Bool)

(assert (=> b!4882887 (= res!2084462 (not (rulesValidInductive!3059 thiss!14805 (t!364893 rulesArg!165))))))

(declare-datatypes ((Token!14728 0))(
  ( (Token!14729 (value!259432 TokenValue!8390) (rule!11240 Rule!15960) (size!36995 Int) (originalCharacters!8395 List!56245)) )
))
(declare-datatypes ((tuple2!60010 0))(
  ( (tuple2!60011 (_1!33308 Token!14728) (_2!33308 BalanceConc!28726)) )
))
(declare-datatypes ((Option!13844 0))(
  ( (None!13843) (Some!13843 (v!49793 tuple2!60010)) )
))
(declare-fun lt!2000161 () Option!13844)

(declare-fun maxPrefixOneRuleZipperSequence!606 (LexerInterface!7672 Rule!15960 BalanceConc!28726) Option!13844)

(assert (=> b!4882887 (= lt!2000161 (maxPrefixOneRuleZipperSequence!606 thiss!14805 (h!62571 rulesArg!165) input!1236))))

(declare-fun b!4882888 () Bool)

(declare-fun res!2084463 () Bool)

(assert (=> b!4882888 (=> (not res!2084463) (not e!3051785))))

(assert (=> b!4882888 (= res!2084463 (rulesValidInductive!3059 thiss!14805 rulesArg!165))))

(declare-fun b!4882889 () Bool)

(declare-fun e!3051779 () Bool)

(declare-fun tp!1373917 () Bool)

(declare-fun inv!72178 (Conc!14648) Bool)

(assert (=> b!4882889 (= e!3051779 (and (inv!72178 (c!830409 input!1236)) tp!1373917))))

(declare-fun e!3051780 () Bool)

(assert (=> b!4882890 (= e!3051780 (and tp!1373919 tp!1373916))))

(declare-fun res!2084461 () Bool)

(assert (=> start!510944 (=> (not res!2084461) (not e!3051785))))

(assert (=> start!510944 (= res!2084461 ((_ is Lexer!7670) thiss!14805))))

(assert (=> start!510944 e!3051785))

(assert (=> start!510944 true))

(declare-fun e!3051782 () Bool)

(assert (=> start!510944 e!3051782))

(declare-fun inv!72179 (BalanceConc!28726) Bool)

(assert (=> start!510944 (and (inv!72179 input!1236) e!3051779)))

(declare-fun e!3051783 () Bool)

(declare-fun tp!1373915 () Bool)

(declare-fun b!4882884 () Bool)

(declare-fun inv!72174 (String!63392) Bool)

(declare-fun inv!72180 (TokenValueInjection!16088) Bool)

(assert (=> b!4882884 (= e!3051783 (and tp!1373915 (inv!72174 (tag!8944 (h!62571 rulesArg!165))) (inv!72180 (transformation!8080 (h!62571 rulesArg!165))) e!3051780))))

(declare-fun b!4882891 () Bool)

(declare-fun res!2084459 () Bool)

(assert (=> b!4882891 (=> (not res!2084459) (not e!3051785))))

(assert (=> b!4882891 (= res!2084459 (not (isEmpty!30077 rulesArg!165)))))

(declare-fun b!4882892 () Bool)

(declare-fun tp!1373918 () Bool)

(assert (=> b!4882892 (= e!3051782 (and e!3051783 tp!1373918))))

(assert (= (and start!510944 res!2084461) b!4882888))

(assert (= (and b!4882888 res!2084463) b!4882891))

(assert (= (and b!4882891 res!2084459) b!4882885))

(assert (= (and b!4882885 (not res!2084460)) b!4882887))

(assert (= (and b!4882887 (not res!2084462)) b!4882886))

(assert (= b!4882884 b!4882890))

(assert (= b!4882892 b!4882884))

(assert (= (and start!510944 ((_ is Cons!56123) rulesArg!165)) b!4882892))

(assert (= start!510944 b!4882889))

(declare-fun m!5886940 () Bool)

(assert (=> b!4882888 m!5886940))

(declare-fun m!5886942 () Bool)

(assert (=> b!4882884 m!5886942))

(declare-fun m!5886944 () Bool)

(assert (=> b!4882884 m!5886944))

(declare-fun m!5886946 () Bool)

(assert (=> b!4882886 m!5886946))

(declare-fun m!5886948 () Bool)

(assert (=> b!4882891 m!5886948))

(declare-fun m!5886950 () Bool)

(assert (=> start!510944 m!5886950))

(declare-fun m!5886952 () Bool)

(assert (=> b!4882887 m!5886952))

(declare-fun m!5886954 () Bool)

(assert (=> b!4882887 m!5886954))

(declare-fun m!5886956 () Bool)

(assert (=> b!4882889 m!5886956))

(declare-fun m!5886958 () Bool)

(assert (=> b!4882885 m!5886958))

(declare-fun m!5886960 () Bool)

(assert (=> b!4882885 m!5886960))

(declare-fun m!5886962 () Bool)

(assert (=> b!4882885 m!5886962))

(check-sat (not b!4882891) (not b!4882887) (not start!510944) b_and!343835 b_and!343837 (not b_next!131793) (not b!4882892) (not b!4882885) (not b_next!131795) (not b!4882888) (not b!4882889) (not b!4882884) (not b!4882886))
(check-sat b_and!343837 b_and!343835 (not b_next!131793) (not b_next!131795))
(get-model)

(declare-fun d!1569157 () Bool)

(assert (=> d!1569157 (= (isEmpty!30077 (t!364893 rulesArg!165)) ((_ is Nil!56123) (t!364893 rulesArg!165)))))

(assert (=> b!4882886 d!1569157))

(declare-fun d!1569161 () Bool)

(assert (=> d!1569161 (= (isEmpty!30077 rulesArg!165) ((_ is Nil!56123) rulesArg!165))))

(assert (=> b!4882891 d!1569161))

(declare-fun d!1569163 () Bool)

(declare-fun isBalanced!3988 (Conc!14648) Bool)

(assert (=> d!1569163 (= (inv!72179 input!1236) (isBalanced!3988 (c!830409 input!1236)))))

(declare-fun bs!1175481 () Bool)

(assert (= bs!1175481 d!1569163))

(declare-fun m!5886970 () Bool)

(assert (=> bs!1175481 m!5886970))

(assert (=> start!510944 d!1569163))

(declare-fun d!1569165 () Bool)

(assert (=> d!1569165 true))

(declare-fun lt!2000175 () Bool)

(declare-fun lambda!243756 () Int)

(declare-fun forall!13066 (List!56247 Int) Bool)

(assert (=> d!1569165 (= lt!2000175 (forall!13066 (t!364893 rulesArg!165) lambda!243756))))

(declare-fun e!3051818 () Bool)

(assert (=> d!1569165 (= lt!2000175 e!3051818)))

(declare-fun res!2084501 () Bool)

(assert (=> d!1569165 (=> res!2084501 e!3051818)))

(assert (=> d!1569165 (= res!2084501 (not ((_ is Cons!56123) (t!364893 rulesArg!165))))))

(assert (=> d!1569165 (= (rulesValidInductive!3059 thiss!14805 (t!364893 rulesArg!165)) lt!2000175)))

(declare-fun b!4882931 () Bool)

(declare-fun e!3051817 () Bool)

(assert (=> b!4882931 (= e!3051818 e!3051817)))

(declare-fun res!2084500 () Bool)

(assert (=> b!4882931 (=> (not res!2084500) (not e!3051817))))

(declare-fun ruleValid!3648 (LexerInterface!7672 Rule!15960) Bool)

(assert (=> b!4882931 (= res!2084500 (ruleValid!3648 thiss!14805 (h!62571 (t!364893 rulesArg!165))))))

(declare-fun b!4882932 () Bool)

(assert (=> b!4882932 (= e!3051817 (rulesValidInductive!3059 thiss!14805 (t!364893 (t!364893 rulesArg!165))))))

(assert (= (and d!1569165 (not res!2084501)) b!4882931))

(assert (= (and b!4882931 res!2084500) b!4882932))

(declare-fun m!5886998 () Bool)

(assert (=> d!1569165 m!5886998))

(declare-fun m!5887000 () Bool)

(assert (=> b!4882931 m!5887000))

(declare-fun m!5887002 () Bool)

(assert (=> b!4882932 m!5887002))

(assert (=> b!4882887 d!1569165))

(declare-fun b!4882986 () Bool)

(declare-fun e!3051860 () Bool)

(assert (=> b!4882986 (= e!3051860 true)))

(declare-fun b!4882985 () Bool)

(declare-fun e!3051859 () Bool)

(assert (=> b!4882985 (= e!3051859 e!3051860)))

(declare-fun b!4882975 () Bool)

(assert (=> b!4882975 e!3051859))

(assert (= b!4882985 b!4882986))

(assert (= b!4882975 b!4882985))

(declare-fun lambda!243766 () Int)

(declare-fun order!25335 () Int)

(declare-fun order!25333 () Int)

(declare-fun dynLambda!22552 (Int Int) Int)

(declare-fun dynLambda!22553 (Int Int) Int)

(assert (=> b!4882986 (< (dynLambda!22552 order!25333 (toValue!10967 (transformation!8080 (h!62571 rulesArg!165)))) (dynLambda!22553 order!25335 lambda!243766))))

(declare-fun order!25337 () Int)

(declare-fun dynLambda!22554 (Int Int) Int)

(assert (=> b!4882986 (< (dynLambda!22554 order!25337 (toChars!10826 (transformation!8080 (h!62571 rulesArg!165)))) (dynLambda!22553 order!25335 lambda!243766))))

(declare-fun b!4882971 () Bool)

(declare-fun e!3051852 () Bool)

(declare-fun lt!2000226 () List!56245)

(declare-fun matchR!6505 (Regex!13155 List!56245) Bool)

(declare-datatypes ((tuple2!60016 0))(
  ( (tuple2!60017 (_1!33311 List!56245) (_2!33311 List!56245)) )
))
(declare-fun findLongestMatchInner!1735 (Regex!13155 List!56245 Int List!56245 List!56245 Int) tuple2!60016)

(declare-fun size!36998 (List!56245) Int)

(assert (=> b!4882971 (= e!3051852 (matchR!6505 (regex!8080 (h!62571 rulesArg!165)) (_1!33311 (findLongestMatchInner!1735 (regex!8080 (h!62571 rulesArg!165)) Nil!56121 (size!36998 Nil!56121) lt!2000226 lt!2000226 (size!36998 lt!2000226)))))))

(declare-fun b!4882972 () Bool)

(declare-fun e!3051851 () Bool)

(declare-fun e!3051848 () Bool)

(assert (=> b!4882972 (= e!3051851 e!3051848)))

(declare-fun res!2084523 () Bool)

(assert (=> b!4882972 (=> res!2084523 e!3051848)))

(declare-fun lt!2000232 () Option!13844)

(declare-fun isDefined!10892 (Option!13844) Bool)

(assert (=> b!4882972 (= res!2084523 (not (isDefined!10892 lt!2000232)))))

(declare-fun d!1569179 () Bool)

(assert (=> d!1569179 e!3051851))

(declare-fun res!2084522 () Bool)

(assert (=> d!1569179 (=> (not res!2084522) (not e!3051851))))

(declare-datatypes ((tuple2!60018 0))(
  ( (tuple2!60019 (_1!33312 Token!14728) (_2!33312 List!56245)) )
))
(declare-datatypes ((Option!13845 0))(
  ( (None!13844) (Some!13844 (v!49794 tuple2!60018)) )
))
(declare-fun isDefined!10893 (Option!13845) Bool)

(declare-fun maxPrefixOneRule!3504 (LexerInterface!7672 Rule!15960 List!56245) Option!13845)

(assert (=> d!1569179 (= res!2084522 (= (isDefined!10892 lt!2000232) (isDefined!10893 (maxPrefixOneRule!3504 thiss!14805 (h!62571 rulesArg!165) (list!17603 input!1236)))))))

(declare-fun e!3051850 () Option!13844)

(assert (=> d!1569179 (= lt!2000232 e!3051850)))

(declare-fun c!830421 () Bool)

(declare-datatypes ((tuple2!60022 0))(
  ( (tuple2!60023 (_1!33314 BalanceConc!28726) (_2!33314 BalanceConc!28726)) )
))
(declare-fun lt!2000234 () tuple2!60022)

(declare-fun isEmpty!30079 (BalanceConc!28726) Bool)

(assert (=> d!1569179 (= c!830421 (isEmpty!30079 (_1!33314 lt!2000234)))))

(declare-fun findLongestMatchWithZipperSequence!249 (Regex!13155 BalanceConc!28726) tuple2!60022)

(assert (=> d!1569179 (= lt!2000234 (findLongestMatchWithZipperSequence!249 (regex!8080 (h!62571 rulesArg!165)) input!1236))))

(assert (=> d!1569179 (ruleValid!3648 thiss!14805 (h!62571 rulesArg!165))))

(assert (=> d!1569179 (= (maxPrefixOneRuleZipperSequence!606 thiss!14805 (h!62571 rulesArg!165) input!1236) lt!2000232)))

(declare-fun b!4882973 () Bool)

(declare-fun e!3051849 () Bool)

(assert (=> b!4882973 (= e!3051848 e!3051849)))

(declare-fun res!2084524 () Bool)

(assert (=> b!4882973 (=> (not res!2084524) (not e!3051849))))

(declare-fun get!19299 (Option!13844) tuple2!60010)

(declare-fun get!19300 (Option!13845) tuple2!60018)

(assert (=> b!4882973 (= res!2084524 (= (_1!33308 (get!19299 lt!2000232)) (_1!33312 (get!19300 (maxPrefixOneRule!3504 thiss!14805 (h!62571 rulesArg!165) (list!17603 input!1236))))))))

(declare-fun b!4882974 () Bool)

(assert (=> b!4882974 (= e!3051849 (= (list!17603 (_2!33308 (get!19299 lt!2000232))) (_2!33312 (get!19300 (maxPrefixOneRule!3504 thiss!14805 (h!62571 rulesArg!165) (list!17603 input!1236))))))))

(declare-fun apply!13516 (TokenValueInjection!16088 BalanceConc!28726) TokenValue!8390)

(declare-fun size!36999 (BalanceConc!28726) Int)

(assert (=> b!4882975 (= e!3051850 (Some!13843 (tuple2!60011 (Token!14729 (apply!13516 (transformation!8080 (h!62571 rulesArg!165)) (_1!33314 lt!2000234)) (h!62571 rulesArg!165) (size!36999 (_1!33314 lt!2000234)) (list!17603 (_1!33314 lt!2000234))) (_2!33314 lt!2000234))))))

(assert (=> b!4882975 (= lt!2000226 (list!17603 input!1236))))

(declare-fun lt!2000231 () Unit!146112)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1698 (Regex!13155 List!56245) Unit!146112)

(assert (=> b!4882975 (= lt!2000231 (longestMatchIsAcceptedByMatchOrIsEmpty!1698 (regex!8080 (h!62571 rulesArg!165)) lt!2000226))))

(declare-fun res!2084525 () Bool)

(declare-fun isEmpty!30081 (List!56245) Bool)

(assert (=> b!4882975 (= res!2084525 (isEmpty!30081 (_1!33311 (findLongestMatchInner!1735 (regex!8080 (h!62571 rulesArg!165)) Nil!56121 (size!36998 Nil!56121) lt!2000226 lt!2000226 (size!36998 lt!2000226)))))))

(assert (=> b!4882975 (=> res!2084525 e!3051852)))

(assert (=> b!4882975 e!3051852))

(declare-fun lt!2000228 () Unit!146112)

(assert (=> b!4882975 (= lt!2000228 lt!2000231)))

(declare-fun lt!2000235 () Unit!146112)

(declare-fun lemmaInv!1218 (TokenValueInjection!16088) Unit!146112)

(assert (=> b!4882975 (= lt!2000235 (lemmaInv!1218 (transformation!8080 (h!62571 rulesArg!165))))))

(declare-fun lt!2000229 () Unit!146112)

(declare-fun ForallOf!1115 (Int BalanceConc!28726) Unit!146112)

(assert (=> b!4882975 (= lt!2000229 (ForallOf!1115 lambda!243766 (_1!33314 lt!2000234)))))

(declare-fun lt!2000227 () Unit!146112)

(declare-fun seqFromList!5912 (List!56245) BalanceConc!28726)

(assert (=> b!4882975 (= lt!2000227 (ForallOf!1115 lambda!243766 (seqFromList!5912 (list!17603 (_1!33314 lt!2000234)))))))

(declare-fun lt!2000233 () Option!13844)

(assert (=> b!4882975 (= lt!2000233 (Some!13843 (tuple2!60011 (Token!14729 (apply!13516 (transformation!8080 (h!62571 rulesArg!165)) (_1!33314 lt!2000234)) (h!62571 rulesArg!165) (size!36999 (_1!33314 lt!2000234)) (list!17603 (_1!33314 lt!2000234))) (_2!33314 lt!2000234))))))

(declare-fun lt!2000230 () Unit!146112)

(declare-fun lemmaEqSameImage!1072 (TokenValueInjection!16088 BalanceConc!28726 BalanceConc!28726) Unit!146112)

(assert (=> b!4882975 (= lt!2000230 (lemmaEqSameImage!1072 (transformation!8080 (h!62571 rulesArg!165)) (_1!33314 lt!2000234) (seqFromList!5912 (list!17603 (_1!33314 lt!2000234)))))))

(declare-fun b!4882976 () Bool)

(assert (=> b!4882976 (= e!3051850 None!13843)))

(assert (= (and d!1569179 c!830421) b!4882976))

(assert (= (and d!1569179 (not c!830421)) b!4882975))

(assert (= (and b!4882975 (not res!2084525)) b!4882971))

(assert (= (and d!1569179 res!2084522) b!4882972))

(assert (= (and b!4882972 (not res!2084523)) b!4882973))

(assert (= (and b!4882973 res!2084524) b!4882974))

(declare-fun m!5887048 () Bool)

(assert (=> b!4882973 m!5887048))

(assert (=> b!4882973 m!5886962))

(assert (=> b!4882973 m!5886962))

(declare-fun m!5887050 () Bool)

(assert (=> b!4882973 m!5887050))

(assert (=> b!4882973 m!5887050))

(declare-fun m!5887052 () Bool)

(assert (=> b!4882973 m!5887052))

(declare-fun m!5887054 () Bool)

(assert (=> b!4882975 m!5887054))

(declare-fun m!5887056 () Bool)

(assert (=> b!4882975 m!5887056))

(declare-fun m!5887058 () Bool)

(assert (=> b!4882975 m!5887058))

(assert (=> b!4882975 m!5887054))

(declare-fun m!5887060 () Bool)

(assert (=> b!4882975 m!5887060))

(declare-fun m!5887062 () Bool)

(assert (=> b!4882975 m!5887062))

(assert (=> b!4882975 m!5887056))

(declare-fun m!5887064 () Bool)

(assert (=> b!4882975 m!5887064))

(declare-fun m!5887066 () Bool)

(assert (=> b!4882975 m!5887066))

(declare-fun m!5887068 () Bool)

(assert (=> b!4882975 m!5887068))

(assert (=> b!4882975 m!5886962))

(declare-fun m!5887070 () Bool)

(assert (=> b!4882975 m!5887070))

(declare-fun m!5887072 () Bool)

(assert (=> b!4882975 m!5887072))

(declare-fun m!5887074 () Bool)

(assert (=> b!4882975 m!5887074))

(declare-fun m!5887076 () Bool)

(assert (=> b!4882975 m!5887076))

(assert (=> b!4882975 m!5887060))

(declare-fun m!5887078 () Bool)

(assert (=> b!4882975 m!5887078))

(assert (=> b!4882975 m!5887056))

(assert (=> b!4882975 m!5887078))

(assert (=> d!1569179 m!5886962))

(assert (=> d!1569179 m!5887050))

(declare-fun m!5887080 () Bool)

(assert (=> d!1569179 m!5887080))

(declare-fun m!5887082 () Bool)

(assert (=> d!1569179 m!5887082))

(assert (=> d!1569179 m!5886962))

(declare-fun m!5887084 () Bool)

(assert (=> d!1569179 m!5887084))

(declare-fun m!5887086 () Bool)

(assert (=> d!1569179 m!5887086))

(assert (=> d!1569179 m!5887050))

(declare-fun m!5887088 () Bool)

(assert (=> d!1569179 m!5887088))

(declare-fun m!5887090 () Bool)

(assert (=> b!4882974 m!5887090))

(assert (=> b!4882974 m!5887048))

(assert (=> b!4882974 m!5886962))

(assert (=> b!4882974 m!5887050))

(assert (=> b!4882974 m!5887052))

(assert (=> b!4882974 m!5886962))

(assert (=> b!4882974 m!5887050))

(assert (=> b!4882971 m!5887054))

(assert (=> b!4882971 m!5887060))

(assert (=> b!4882971 m!5887054))

(assert (=> b!4882971 m!5887060))

(assert (=> b!4882971 m!5887062))

(declare-fun m!5887092 () Bool)

(assert (=> b!4882971 m!5887092))

(assert (=> b!4882972 m!5887082))

(assert (=> b!4882887 d!1569179))

(declare-fun bs!1175485 () Bool)

(declare-fun d!1569185 () Bool)

(assert (= bs!1175485 (and d!1569185 d!1569165)))

(declare-fun lambda!243767 () Int)

(assert (=> bs!1175485 (= lambda!243767 lambda!243756)))

(assert (=> d!1569185 true))

(declare-fun lt!2000236 () Bool)

(assert (=> d!1569185 (= lt!2000236 (forall!13066 rulesArg!165 lambda!243767))))

(declare-fun e!3051865 () Bool)

(assert (=> d!1569185 (= lt!2000236 e!3051865)))

(declare-fun res!2084527 () Bool)

(assert (=> d!1569185 (=> res!2084527 e!3051865)))

(assert (=> d!1569185 (= res!2084527 (not ((_ is Cons!56123) rulesArg!165)))))

(assert (=> d!1569185 (= (rulesValidInductive!3059 thiss!14805 rulesArg!165) lt!2000236)))

(declare-fun b!4883001 () Bool)

(declare-fun e!3051864 () Bool)

(assert (=> b!4883001 (= e!3051865 e!3051864)))

(declare-fun res!2084526 () Bool)

(assert (=> b!4883001 (=> (not res!2084526) (not e!3051864))))

(assert (=> b!4883001 (= res!2084526 (ruleValid!3648 thiss!14805 (h!62571 rulesArg!165)))))

(declare-fun b!4883002 () Bool)

(assert (=> b!4883002 (= e!3051864 (rulesValidInductive!3059 thiss!14805 (t!364893 rulesArg!165)))))

(assert (= (and d!1569185 (not res!2084527)) b!4883001))

(assert (= (and b!4883001 res!2084526) b!4883002))

(declare-fun m!5887094 () Bool)

(assert (=> d!1569185 m!5887094))

(assert (=> b!4883001 m!5887080))

(assert (=> b!4883002 m!5886952))

(assert (=> b!4882888 d!1569185))

(declare-fun d!1569187 () Bool)

(assert (=> d!1569187 (= (inv!72174 (tag!8944 (h!62571 rulesArg!165))) (= (mod (str.len (value!259431 (tag!8944 (h!62571 rulesArg!165)))) 2) 0))))

(assert (=> b!4882884 d!1569187))

(declare-fun d!1569189 () Bool)

(declare-fun res!2084530 () Bool)

(declare-fun e!3051882 () Bool)

(assert (=> d!1569189 (=> (not res!2084530) (not e!3051882))))

(declare-fun semiInverseModEq!3562 (Int Int) Bool)

(assert (=> d!1569189 (= res!2084530 (semiInverseModEq!3562 (toChars!10826 (transformation!8080 (h!62571 rulesArg!165))) (toValue!10967 (transformation!8080 (h!62571 rulesArg!165)))))))

(assert (=> d!1569189 (= (inv!72180 (transformation!8080 (h!62571 rulesArg!165))) e!3051882)))

(declare-fun b!4883024 () Bool)

(declare-fun equivClasses!3441 (Int Int) Bool)

(assert (=> b!4883024 (= e!3051882 (equivClasses!3441 (toChars!10826 (transformation!8080 (h!62571 rulesArg!165))) (toValue!10967 (transformation!8080 (h!62571 rulesArg!165)))))))

(assert (= (and d!1569189 res!2084530) b!4883024))

(declare-fun m!5887102 () Bool)

(assert (=> d!1569189 m!5887102))

(declare-fun m!5887104 () Bool)

(assert (=> b!4883024 m!5887104))

(assert (=> b!4882884 d!1569189))

(declare-fun d!1569191 () Bool)

(declare-fun c!830424 () Bool)

(assert (=> d!1569191 (= c!830424 ((_ is Node!14648) (c!830409 input!1236)))))

(declare-fun e!3051891 () Bool)

(assert (=> d!1569191 (= (inv!72178 (c!830409 input!1236)) e!3051891)))

(declare-fun b!4883034 () Bool)

(declare-fun inv!72184 (Conc!14648) Bool)

(assert (=> b!4883034 (= e!3051891 (inv!72184 (c!830409 input!1236)))))

(declare-fun b!4883035 () Bool)

(declare-fun e!3051892 () Bool)

(assert (=> b!4883035 (= e!3051891 e!3051892)))

(declare-fun res!2084533 () Bool)

(assert (=> b!4883035 (= res!2084533 (not ((_ is Leaf!24405) (c!830409 input!1236))))))

(assert (=> b!4883035 (=> res!2084533 e!3051892)))

(declare-fun b!4883036 () Bool)

(declare-fun inv!72185 (Conc!14648) Bool)

(assert (=> b!4883036 (= e!3051892 (inv!72185 (c!830409 input!1236)))))

(assert (= (and d!1569191 c!830424) b!4883034))

(assert (= (and d!1569191 (not c!830424)) b!4883035))

(assert (= (and b!4883035 (not res!2084533)) b!4883036))

(declare-fun m!5887110 () Bool)

(assert (=> b!4883034 m!5887110))

(declare-fun m!5887112 () Bool)

(assert (=> b!4883036 m!5887112))

(assert (=> b!4882889 d!1569191))

(declare-fun b!4883048 () Bool)

(declare-fun e!3051899 () Bool)

(assert (=> b!4883048 (= e!3051899 (>= (size!36998 lt!2000160) (size!36998 lt!2000160)))))

(declare-fun b!4883045 () Bool)

(declare-fun e!3051900 () Bool)

(declare-fun e!3051901 () Bool)

(assert (=> b!4883045 (= e!3051900 e!3051901)))

(declare-fun res!2084544 () Bool)

(assert (=> b!4883045 (=> (not res!2084544) (not e!3051901))))

(assert (=> b!4883045 (= res!2084544 (not ((_ is Nil!56121) lt!2000160)))))

(declare-fun d!1569193 () Bool)

(assert (=> d!1569193 e!3051899))

(declare-fun res!2084543 () Bool)

(assert (=> d!1569193 (=> res!2084543 e!3051899)))

(declare-fun lt!2000239 () Bool)

(assert (=> d!1569193 (= res!2084543 (not lt!2000239))))

(assert (=> d!1569193 (= lt!2000239 e!3051900)))

(declare-fun res!2084545 () Bool)

(assert (=> d!1569193 (=> res!2084545 e!3051900)))

(assert (=> d!1569193 (= res!2084545 ((_ is Nil!56121) lt!2000160))))

(assert (=> d!1569193 (= (isPrefix!4802 lt!2000160 lt!2000160) lt!2000239)))

(declare-fun b!4883046 () Bool)

(declare-fun res!2084542 () Bool)

(assert (=> b!4883046 (=> (not res!2084542) (not e!3051901))))

(declare-fun head!10430 (List!56245) C!26508)

(assert (=> b!4883046 (= res!2084542 (= (head!10430 lt!2000160) (head!10430 lt!2000160)))))

(declare-fun b!4883047 () Bool)

(declare-fun tail!9576 (List!56245) List!56245)

(assert (=> b!4883047 (= e!3051901 (isPrefix!4802 (tail!9576 lt!2000160) (tail!9576 lt!2000160)))))

(assert (= (and d!1569193 (not res!2084545)) b!4883045))

(assert (= (and b!4883045 res!2084544) b!4883046))

(assert (= (and b!4883046 res!2084542) b!4883047))

(assert (= (and d!1569193 (not res!2084543)) b!4883048))

(declare-fun m!5887114 () Bool)

(assert (=> b!4883048 m!5887114))

(assert (=> b!4883048 m!5887114))

(declare-fun m!5887116 () Bool)

(assert (=> b!4883046 m!5887116))

(assert (=> b!4883046 m!5887116))

(declare-fun m!5887118 () Bool)

(assert (=> b!4883047 m!5887118))

(assert (=> b!4883047 m!5887118))

(assert (=> b!4883047 m!5887118))

(assert (=> b!4883047 m!5887118))

(declare-fun m!5887120 () Bool)

(assert (=> b!4883047 m!5887120))

(assert (=> b!4882885 d!1569193))

(declare-fun d!1569195 () Bool)

(assert (=> d!1569195 (isPrefix!4802 lt!2000160 lt!2000160)))

(declare-fun lt!2000242 () Unit!146112)

(declare-fun choose!35668 (List!56245 List!56245) Unit!146112)

(assert (=> d!1569195 (= lt!2000242 (choose!35668 lt!2000160 lt!2000160))))

(assert (=> d!1569195 (= (lemmaIsPrefixRefl!3199 lt!2000160 lt!2000160) lt!2000242)))

(declare-fun bs!1175486 () Bool)

(assert (= bs!1175486 d!1569195))

(assert (=> bs!1175486 m!5886958))

(declare-fun m!5887122 () Bool)

(assert (=> bs!1175486 m!5887122))

(assert (=> b!4882885 d!1569195))

(declare-fun d!1569197 () Bool)

(declare-fun list!17605 (Conc!14648) List!56245)

(assert (=> d!1569197 (= (list!17603 input!1236) (list!17605 (c!830409 input!1236)))))

(declare-fun bs!1175487 () Bool)

(assert (= bs!1175487 d!1569197))

(declare-fun m!5887124 () Bool)

(assert (=> bs!1175487 m!5887124))

(assert (=> b!4882885 d!1569197))

(declare-fun b!4883059 () Bool)

(declare-fun b_free!131011 () Bool)

(declare-fun b_next!131801 () Bool)

(assert (=> b!4883059 (= b_free!131011 (not b_next!131801))))

(declare-fun tp!1373966 () Bool)

(declare-fun b_and!343843 () Bool)

(assert (=> b!4883059 (= tp!1373966 b_and!343843)))

(declare-fun b_free!131013 () Bool)

(declare-fun b_next!131803 () Bool)

(assert (=> b!4883059 (= b_free!131013 (not b_next!131803))))

(declare-fun tp!1373964 () Bool)

(declare-fun b_and!343845 () Bool)

(assert (=> b!4883059 (= tp!1373964 b_and!343845)))

(declare-fun e!3051910 () Bool)

(assert (=> b!4883059 (= e!3051910 (and tp!1373966 tp!1373964))))

(declare-fun b!4883058 () Bool)

(declare-fun tp!1373965 () Bool)

(declare-fun e!3051911 () Bool)

(assert (=> b!4883058 (= e!3051911 (and tp!1373965 (inv!72174 (tag!8944 (h!62571 (t!364893 rulesArg!165)))) (inv!72180 (transformation!8080 (h!62571 (t!364893 rulesArg!165)))) e!3051910))))

(declare-fun b!4883057 () Bool)

(declare-fun e!3051913 () Bool)

(declare-fun tp!1373967 () Bool)

(assert (=> b!4883057 (= e!3051913 (and e!3051911 tp!1373967))))

(assert (=> b!4882892 (= tp!1373918 e!3051913)))

(assert (= b!4883058 b!4883059))

(assert (= b!4883057 b!4883058))

(assert (= (and b!4882892 ((_ is Cons!56123) (t!364893 rulesArg!165))) b!4883057))

(declare-fun m!5887126 () Bool)

(assert (=> b!4883058 m!5887126))

(declare-fun m!5887128 () Bool)

(assert (=> b!4883058 m!5887128))

(declare-fun b!4883073 () Bool)

(declare-fun e!3051916 () Bool)

(declare-fun tp!1373979 () Bool)

(declare-fun tp!1373981 () Bool)

(assert (=> b!4883073 (= e!3051916 (and tp!1373979 tp!1373981))))

(declare-fun b!4883071 () Bool)

(declare-fun tp!1373980 () Bool)

(declare-fun tp!1373982 () Bool)

(assert (=> b!4883071 (= e!3051916 (and tp!1373980 tp!1373982))))

(assert (=> b!4882884 (= tp!1373915 e!3051916)))

(declare-fun b!4883070 () Bool)

(declare-fun tp_is_empty!35723 () Bool)

(assert (=> b!4883070 (= e!3051916 tp_is_empty!35723)))

(declare-fun b!4883072 () Bool)

(declare-fun tp!1373978 () Bool)

(assert (=> b!4883072 (= e!3051916 tp!1373978)))

(assert (= (and b!4882884 ((_ is ElementMatch!13155) (regex!8080 (h!62571 rulesArg!165)))) b!4883070))

(assert (= (and b!4882884 ((_ is Concat!21546) (regex!8080 (h!62571 rulesArg!165)))) b!4883071))

(assert (= (and b!4882884 ((_ is Star!13155) (regex!8080 (h!62571 rulesArg!165)))) b!4883072))

(assert (= (and b!4882884 ((_ is Union!13155) (regex!8080 (h!62571 rulesArg!165)))) b!4883073))

(declare-fun b!4883082 () Bool)

(declare-fun e!3051921 () Bool)

(declare-fun tp!1373989 () Bool)

(declare-fun tp!1373990 () Bool)

(assert (=> b!4883082 (= e!3051921 (and (inv!72178 (left!40778 (c!830409 input!1236))) tp!1373989 (inv!72178 (right!41108 (c!830409 input!1236))) tp!1373990))))

(declare-fun b!4883084 () Bool)

(declare-fun e!3051922 () Bool)

(declare-fun tp!1373991 () Bool)

(assert (=> b!4883084 (= e!3051922 tp!1373991)))

(declare-fun b!4883083 () Bool)

(declare-fun inv!72186 (IArray!29357) Bool)

(assert (=> b!4883083 (= e!3051921 (and (inv!72186 (xs!17964 (c!830409 input!1236))) e!3051922))))

(assert (=> b!4882889 (= tp!1373917 (and (inv!72178 (c!830409 input!1236)) e!3051921))))

(assert (= (and b!4882889 ((_ is Node!14648) (c!830409 input!1236))) b!4883082))

(assert (= b!4883083 b!4883084))

(assert (= (and b!4882889 ((_ is Leaf!24405) (c!830409 input!1236))) b!4883083))

(declare-fun m!5887130 () Bool)

(assert (=> b!4883082 m!5887130))

(declare-fun m!5887132 () Bool)

(assert (=> b!4883082 m!5887132))

(declare-fun m!5887134 () Bool)

(assert (=> b!4883083 m!5887134))

(assert (=> b!4882889 m!5886956))

(check-sat (not b!4883047) (not b!4882932) (not b!4883058) b_and!343835 b_and!343837 (not b!4883057) (not b_next!131795) tp_is_empty!35723 (not b_next!131803) (not d!1569179) (not d!1569197) (not b!4883072) (not b!4882931) (not b!4883036) (not b!4883071) (not b!4883073) (not b!4883048) (not b!4882974) (not b!4882973) (not d!1569189) (not b!4883084) (not b!4883082) (not b!4883046) (not b!4883083) (not d!1569185) (not d!1569165) b_and!343845 (not b_next!131801) (not b!4883024) (not b!4883002) (not b!4882972) (not b_next!131793) (not b!4883034) b_and!343843 (not b!4882971) (not b!4882975) (not d!1569163) (not d!1569195) (not b!4883001) (not b!4882889))
(check-sat b_and!343845 (not b_next!131801) b_and!343835 b_and!343837 (not b_next!131795) (not b_next!131803) (not b_next!131793) b_and!343843)
