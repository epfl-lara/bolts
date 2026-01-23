; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339270 () Bool)

(assert start!339270)

(declare-fun b!3635962 () Bool)

(declare-fun b_free!95209 () Bool)

(declare-fun b_next!95913 () Bool)

(assert (=> b!3635962 (= b_free!95209 (not b_next!95913))))

(declare-fun tp!1109696 () Bool)

(declare-fun b_and!267459 () Bool)

(assert (=> b!3635962 (= tp!1109696 b_and!267459)))

(declare-fun b_free!95211 () Bool)

(declare-fun b_next!95915 () Bool)

(assert (=> b!3635962 (= b_free!95211 (not b_next!95915))))

(declare-fun tp!1109706 () Bool)

(declare-fun b_and!267461 () Bool)

(assert (=> b!3635962 (= tp!1109706 b_and!267461)))

(declare-fun b!3635950 () Bool)

(declare-fun b_free!95213 () Bool)

(declare-fun b_next!95917 () Bool)

(assert (=> b!3635950 (= b_free!95213 (not b_next!95917))))

(declare-fun tp!1109699 () Bool)

(declare-fun b_and!267463 () Bool)

(assert (=> b!3635950 (= tp!1109699 b_and!267463)))

(declare-fun b_free!95215 () Bool)

(declare-fun b_next!95919 () Bool)

(assert (=> b!3635950 (= b_free!95215 (not b_next!95919))))

(declare-fun tp!1109694 () Bool)

(declare-fun b_and!267465 () Bool)

(assert (=> b!3635950 (= tp!1109694 b_and!267465)))

(declare-fun b!3635942 () Bool)

(declare-fun b_free!95217 () Bool)

(declare-fun b_next!95921 () Bool)

(assert (=> b!3635942 (= b_free!95217 (not b_next!95921))))

(declare-fun tp!1109695 () Bool)

(declare-fun b_and!267467 () Bool)

(assert (=> b!3635942 (= tp!1109695 b_and!267467)))

(declare-fun b_free!95219 () Bool)

(declare-fun b_next!95923 () Bool)

(assert (=> b!3635942 (= b_free!95219 (not b_next!95923))))

(declare-fun tp!1109698 () Bool)

(declare-fun b_and!267469 () Bool)

(assert (=> b!3635942 (= tp!1109698 b_and!267469)))

(declare-fun b!3635944 () Bool)

(declare-fun b_free!95221 () Bool)

(declare-fun b_next!95925 () Bool)

(assert (=> b!3635944 (= b_free!95221 (not b_next!95925))))

(declare-fun tp!1109692 () Bool)

(declare-fun b_and!267471 () Bool)

(assert (=> b!3635944 (= tp!1109692 b_and!267471)))

(declare-fun b_free!95223 () Bool)

(declare-fun b_next!95927 () Bool)

(assert (=> b!3635944 (= b_free!95223 (not b_next!95927))))

(declare-fun tp!1109700 () Bool)

(declare-fun b_and!267473 () Bool)

(assert (=> b!3635944 (= tp!1109700 b_and!267473)))

(declare-fun b!3635935 () Bool)

(declare-fun res!1473014 () Bool)

(declare-fun e!2250691 () Bool)

(assert (=> b!3635935 (=> res!1473014 e!2250691)))

(declare-datatypes ((List!38439 0))(
  ( (Nil!38315) (Cons!38315 (h!43735 (_ BitVec 16)) (t!295862 List!38439)) )
))
(declare-datatypes ((TokenValue!5950 0))(
  ( (FloatLiteralValue!11900 (text!42095 List!38439)) (TokenValueExt!5949 (__x!24117 Int)) (Broken!29750 (value!183454 List!38439)) (Object!6073) (End!5950) (Def!5950) (Underscore!5950) (Match!5950) (Else!5950) (Error!5950) (Case!5950) (If!5950) (Extends!5950) (Abstract!5950) (Class!5950) (Val!5950) (DelimiterValue!11900 (del!6010 List!38439)) (KeywordValue!5956 (value!183455 List!38439)) (CommentValue!11900 (value!183456 List!38439)) (WhitespaceValue!11900 (value!183457 List!38439)) (IndentationValue!5950 (value!183458 List!38439)) (String!43083) (Int32!5950) (Broken!29751 (value!183459 List!38439)) (Boolean!5951) (Unit!55141) (OperatorValue!5953 (op!6010 List!38439)) (IdentifierValue!11900 (value!183460 List!38439)) (IdentifierValue!11901 (value!183461 List!38439)) (WhitespaceValue!11901 (value!183462 List!38439)) (True!11900) (False!11900) (Broken!29752 (value!183463 List!38439)) (Broken!29753 (value!183464 List!38439)) (True!11901) (RightBrace!5950) (RightBracket!5950) (Colon!5950) (Null!5950) (Comma!5950) (LeftBracket!5950) (False!11901) (LeftBrace!5950) (ImaginaryLiteralValue!5950 (text!42096 List!38439)) (StringLiteralValue!17850 (value!183465 List!38439)) (EOFValue!5950 (value!183466 List!38439)) (IdentValue!5950 (value!183467 List!38439)) (DelimiterValue!11901 (value!183468 List!38439)) (DedentValue!5950 (value!183469 List!38439)) (NewLineValue!5950 (value!183470 List!38439)) (IntegerValue!17850 (value!183471 (_ BitVec 32)) (text!42097 List!38439)) (IntegerValue!17851 (value!183472 Int) (text!42098 List!38439)) (Times!5950) (Or!5950) (Equal!5950) (Minus!5950) (Broken!29754 (value!183473 List!38439)) (And!5950) (Div!5950) (LessEqual!5950) (Mod!5950) (Concat!16429) (Not!5950) (Plus!5950) (SpaceValue!5950 (value!183474 List!38439)) (IntegerValue!17852 (value!183475 Int) (text!42099 List!38439)) (StringLiteralValue!17851 (text!42100 List!38439)) (FloatLiteralValue!11901 (text!42101 List!38439)) (BytesLiteralValue!5950 (value!183476 List!38439)) (CommentValue!11901 (value!183477 List!38439)) (StringLiteralValue!17852 (value!183478 List!38439)) (ErrorTokenValue!5950 (msg!6011 List!38439)) )
))
(declare-datatypes ((C!21144 0))(
  ( (C!21145 (val!12620 Int)) )
))
(declare-datatypes ((Regex!10479 0))(
  ( (ElementMatch!10479 (c!628824 C!21144)) (Concat!16430 (regOne!21470 Regex!10479) (regTwo!21470 Regex!10479)) (EmptyExpr!10479) (Star!10479 (reg!10808 Regex!10479)) (EmptyLang!10479) (Union!10479 (regOne!21471 Regex!10479) (regTwo!21471 Regex!10479)) )
))
(declare-datatypes ((String!43084 0))(
  ( (String!43085 (value!183479 String)) )
))
(declare-datatypes ((List!38440 0))(
  ( (Nil!38316) (Cons!38316 (h!43736 C!21144) (t!295863 List!38440)) )
))
(declare-datatypes ((IArray!23395 0))(
  ( (IArray!23396 (innerList!11755 List!38440)) )
))
(declare-datatypes ((Conc!11695 0))(
  ( (Node!11695 (left!29913 Conc!11695) (right!30243 Conc!11695) (csize!23620 Int) (cheight!11906 Int)) (Leaf!18166 (xs!14897 IArray!23395) (csize!23621 Int)) (Empty!11695) )
))
(declare-datatypes ((BalanceConc!23004 0))(
  ( (BalanceConc!23005 (c!628825 Conc!11695)) )
))
(declare-datatypes ((TokenValueInjection!11328 0))(
  ( (TokenValueInjection!11329 (toValue!8012 Int) (toChars!7871 Int)) )
))
(declare-datatypes ((Rule!11240 0))(
  ( (Rule!11241 (regex!5720 Regex!10479) (tag!6460 String!43084) (isSeparator!5720 Bool) (transformation!5720 TokenValueInjection!11328)) )
))
(declare-datatypes ((List!38441 0))(
  ( (Nil!38317) (Cons!38317 (h!43737 Rule!11240) (t!295864 List!38441)) )
))
(declare-fun rules!3307 () List!38441)

(declare-fun sepAndNonSepRulesDisjointChars!1888 (List!38441 List!38441) Bool)

(assert (=> b!3635935 (= res!1473014 (not (sepAndNonSepRulesDisjointChars!1888 rules!3307 rules!3307)))))

(declare-fun e!2250689 () Bool)

(declare-fun tp!1109693 () Bool)

(declare-fun rule!403 () Rule!11240)

(declare-fun e!2250712 () Bool)

(declare-fun b!3635936 () Bool)

(declare-fun inv!51741 (String!43084) Bool)

(declare-fun inv!51744 (TokenValueInjection!11328) Bool)

(assert (=> b!3635936 (= e!2250712 (and tp!1109693 (inv!51741 (tag!6460 rule!403)) (inv!51744 (transformation!5720 rule!403)) e!2250689))))

(declare-fun b!3635937 () Bool)

(declare-fun e!2250709 () Bool)

(declare-fun tp_is_empty!18041 () Bool)

(declare-fun tp!1109704 () Bool)

(assert (=> b!3635937 (= e!2250709 (and tp_is_empty!18041 tp!1109704))))

(declare-fun b!3635938 () Bool)

(declare-fun e!2250700 () Bool)

(declare-fun e!2250696 () Bool)

(assert (=> b!3635938 (= e!2250700 e!2250696)))

(declare-fun res!1473025 () Bool)

(assert (=> b!3635938 (=> (not res!1473025) (not e!2250696))))

(declare-datatypes ((Token!10806 0))(
  ( (Token!10807 (value!183480 TokenValue!5950) (rule!8494 Rule!11240) (size!29239 Int) (originalCharacters!6434 List!38440)) )
))
(declare-datatypes ((tuple2!38180 0))(
  ( (tuple2!38181 (_1!22224 Token!10806) (_2!22224 List!38440)) )
))
(declare-fun lt!1258115 () tuple2!38180)

(declare-fun token!511 () Token!10806)

(assert (=> b!3635938 (= res!1473025 (= (_1!22224 lt!1258115) token!511))))

(declare-datatypes ((Option!8068 0))(
  ( (None!8067) (Some!8067 (v!37879 tuple2!38180)) )
))
(declare-fun lt!1258106 () Option!8068)

(declare-fun get!12538 (Option!8068) tuple2!38180)

(assert (=> b!3635938 (= lt!1258115 (get!12538 lt!1258106))))

(declare-fun b!3635939 () Bool)

(declare-fun res!1473019 () Bool)

(assert (=> b!3635939 (=> res!1473019 e!2250691)))

(declare-fun anOtherTypeRule!33 () Rule!11240)

(declare-fun lt!1258113 () C!21144)

(declare-fun contains!7505 (List!38440 C!21144) Bool)

(declare-fun usedCharacters!932 (Regex!10479) List!38440)

(assert (=> b!3635939 (= res!1473019 (not (contains!7505 (usedCharacters!932 (regex!5720 anOtherTypeRule!33)) lt!1258113)))))

(declare-fun b!3635940 () Bool)

(declare-fun res!1473028 () Bool)

(declare-fun e!2250714 () Bool)

(assert (=> b!3635940 (=> res!1473028 e!2250714)))

(declare-fun lt!1258108 () tuple2!38180)

(declare-fun lt!1258124 () List!38440)

(declare-fun matchR!5048 (Regex!10479 List!38440) Bool)

(assert (=> b!3635940 (= res!1473028 (not (matchR!5048 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258124)))))

(declare-fun res!1473017 () Bool)

(declare-fun e!2250698 () Bool)

(assert (=> start!339270 (=> (not res!1473017) (not e!2250698))))

(declare-datatypes ((LexerInterface!5309 0))(
  ( (LexerInterfaceExt!5306 (__x!24118 Int)) (Lexer!5307) )
))
(declare-fun thiss!23823 () LexerInterface!5309)

(get-info :version)

(assert (=> start!339270 (= res!1473017 ((_ is Lexer!5307) thiss!23823))))

(assert (=> start!339270 e!2250698))

(declare-fun e!2250699 () Bool)

(assert (=> start!339270 e!2250699))

(assert (=> start!339270 e!2250709))

(assert (=> start!339270 true))

(declare-fun e!2250707 () Bool)

(declare-fun inv!51745 (Token!10806) Bool)

(assert (=> start!339270 (and (inv!51745 token!511) e!2250707)))

(assert (=> start!339270 e!2250712))

(declare-fun e!2250702 () Bool)

(assert (=> start!339270 e!2250702))

(declare-fun b!3635941 () Bool)

(declare-fun res!1473032 () Bool)

(declare-fun e!2250693 () Bool)

(assert (=> b!3635941 (=> res!1473032 e!2250693)))

(declare-fun suffix!1395 () List!38440)

(declare-fun isEmpty!22676 (List!38440) Bool)

(assert (=> b!3635941 (= res!1473032 (isEmpty!22676 suffix!1395))))

(assert (=> b!3635942 (= e!2250689 (and tp!1109695 tp!1109698))))

(declare-fun tp!1109701 () Bool)

(declare-fun b!3635943 () Bool)

(declare-fun e!2250692 () Bool)

(assert (=> b!3635943 (= e!2250702 (and tp!1109701 (inv!51741 (tag!6460 anOtherTypeRule!33)) (inv!51744 (transformation!5720 anOtherTypeRule!33)) e!2250692))))

(assert (=> b!3635944 (= e!2250692 (and tp!1109692 tp!1109700))))

(declare-fun b!3635945 () Bool)

(assert (=> b!3635945 (= e!2250698 e!2250700)))

(declare-fun res!1473021 () Bool)

(assert (=> b!3635945 (=> (not res!1473021) (not e!2250700))))

(declare-fun isDefined!6300 (Option!8068) Bool)

(assert (=> b!3635945 (= res!1473021 (isDefined!6300 lt!1258106))))

(declare-fun lt!1258118 () List!38440)

(declare-fun maxPrefix!2843 (LexerInterface!5309 List!38441 List!38440) Option!8068)

(assert (=> b!3635945 (= lt!1258106 (maxPrefix!2843 thiss!23823 rules!3307 lt!1258118))))

(declare-fun list!14174 (BalanceConc!23004) List!38440)

(declare-fun charsOf!3734 (Token!10806) BalanceConc!23004)

(assert (=> b!3635945 (= lt!1258118 (list!14174 (charsOf!3734 token!511)))))

(declare-fun e!2250705 () Bool)

(declare-fun b!3635946 () Bool)

(declare-fun tp!1109705 () Bool)

(declare-fun e!2250704 () Bool)

(assert (=> b!3635946 (= e!2250704 (and tp!1109705 (inv!51741 (tag!6460 (rule!8494 token!511))) (inv!51744 (transformation!5720 (rule!8494 token!511))) e!2250705))))

(declare-fun b!3635947 () Bool)

(declare-fun res!1473022 () Bool)

(assert (=> b!3635947 (=> (not res!1473022) (not e!2250698))))

(declare-fun contains!7506 (List!38441 Rule!11240) Bool)

(assert (=> b!3635947 (= res!1473022 (contains!7506 rules!3307 rule!403))))

(declare-fun b!3635948 () Bool)

(declare-fun e!2250697 () Bool)

(declare-fun tp!1109703 () Bool)

(assert (=> b!3635948 (= e!2250699 (and e!2250697 tp!1109703))))

(declare-fun b!3635949 () Bool)

(declare-fun e!2250710 () Bool)

(assert (=> b!3635949 (= e!2250714 e!2250710)))

(declare-fun res!1473031 () Bool)

(assert (=> b!3635949 (=> res!1473031 e!2250710)))

(declare-fun lt!1258126 () BalanceConc!23004)

(declare-fun lt!1258121 () Option!8068)

(declare-fun apply!9222 (TokenValueInjection!11328 BalanceConc!23004) TokenValue!5950)

(declare-fun size!29240 (BalanceConc!23004) Int)

(assert (=> b!3635949 (= res!1473031 (not (= lt!1258121 (Some!8067 (tuple2!38181 (Token!10807 (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126) (rule!8494 (_1!22224 lt!1258108)) (size!29240 lt!1258126) lt!1258124) (_2!22224 lt!1258108))))))))

(declare-datatypes ((Unit!55142 0))(
  ( (Unit!55143) )
))
(declare-fun lt!1258107 () Unit!55142)

(declare-fun lemmaCharactersSize!765 (Token!10806) Unit!55142)

(assert (=> b!3635949 (= lt!1258107 (lemmaCharactersSize!765 (_1!22224 lt!1258108)))))

(declare-fun lt!1258123 () Unit!55142)

(declare-fun lemmaEqSameImage!903 (TokenValueInjection!11328 BalanceConc!23004 BalanceConc!23004) Unit!55142)

(declare-fun seqFromList!4269 (List!38440) BalanceConc!23004)

(assert (=> b!3635949 (= lt!1258123 (lemmaEqSameImage!903 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126 (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108)))))))

(declare-fun lt!1258125 () Unit!55142)

(declare-fun lemmaSemiInverse!1469 (TokenValueInjection!11328 BalanceConc!23004) Unit!55142)

(assert (=> b!3635949 (= lt!1258125 (lemmaSemiInverse!1469 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126))))

(assert (=> b!3635950 (= e!2250705 (and tp!1109699 tp!1109694))))

(declare-fun b!3635951 () Bool)

(declare-fun e!2250695 () Bool)

(assert (=> b!3635951 (= e!2250710 e!2250695)))

(declare-fun res!1473026 () Bool)

(assert (=> b!3635951 (=> res!1473026 e!2250695)))

(declare-fun lt!1258120 () List!38440)

(declare-fun lt!1258105 () List!38440)

(assert (=> b!3635951 (= res!1473026 (not (= lt!1258120 lt!1258105)))))

(declare-fun lt!1258114 () List!38440)

(declare-fun getSuffix!1636 (List!38440 List!38440) List!38440)

(assert (=> b!3635951 (= lt!1258114 (getSuffix!1636 lt!1258105 lt!1258124))))

(declare-fun maxPrefixOneRule!1981 (LexerInterface!5309 Rule!11240 List!38440) Option!8068)

(declare-fun size!29241 (List!38440) Int)

(assert (=> b!3635951 (= (maxPrefixOneRule!1981 thiss!23823 (rule!8494 (_1!22224 lt!1258108)) lt!1258105) (Some!8067 (tuple2!38181 (Token!10807 (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) (seqFromList!4269 lt!1258124)) (rule!8494 (_1!22224 lt!1258108)) (size!29241 lt!1258124) lt!1258124) (_2!22224 lt!1258108))))))

(declare-fun lt!1258111 () Unit!55142)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1037 (LexerInterface!5309 List!38441 List!38440 List!38440 List!38440 Rule!11240) Unit!55142)

(assert (=> b!3635951 (= lt!1258111 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1037 thiss!23823 rules!3307 lt!1258124 lt!1258105 (_2!22224 lt!1258108) (rule!8494 (_1!22224 lt!1258108))))))

(declare-fun b!3635952 () Bool)

(declare-fun ++!9536 (List!38440 List!38440) List!38440)

(assert (=> b!3635952 (= e!2250695 (= (++!9536 lt!1258124 lt!1258114) lt!1258105))))

(declare-fun b!3635953 () Bool)

(declare-fun res!1473020 () Bool)

(assert (=> b!3635953 (=> (not res!1473020) (not e!2250698))))

(declare-fun isEmpty!22677 (List!38441) Bool)

(assert (=> b!3635953 (= res!1473020 (not (isEmpty!22677 rules!3307)))))

(declare-fun b!3635954 () Bool)

(declare-fun res!1473027 () Bool)

(assert (=> b!3635954 (=> (not res!1473027) (not e!2250698))))

(assert (=> b!3635954 (= res!1473027 (not (= (isSeparator!5720 anOtherTypeRule!33) (isSeparator!5720 rule!403))))))

(declare-fun b!3635955 () Bool)

(declare-fun e!2250708 () Bool)

(declare-fun lt!1258119 () Rule!11240)

(assert (=> b!3635955 (= e!2250708 (= (rule!8494 (_1!22224 lt!1258108)) lt!1258119))))

(declare-fun b!3635956 () Bool)

(declare-fun res!1473015 () Bool)

(assert (=> b!3635956 (=> (not res!1473015) (not e!2250698))))

(declare-fun rulesInvariant!4706 (LexerInterface!5309 List!38441) Bool)

(assert (=> b!3635956 (= res!1473015 (rulesInvariant!4706 thiss!23823 rules!3307))))

(declare-fun b!3635957 () Bool)

(assert (=> b!3635957 (= e!2250693 e!2250691)))

(declare-fun res!1473024 () Bool)

(assert (=> b!3635957 (=> res!1473024 e!2250691)))

(assert (=> b!3635957 (= res!1473024 (contains!7505 (usedCharacters!932 (regex!5720 rule!403)) lt!1258113))))

(declare-fun head!7710 (List!38440) C!21144)

(assert (=> b!3635957 (= lt!1258113 (head!7710 suffix!1395))))

(declare-fun b!3635958 () Bool)

(declare-fun res!1473029 () Bool)

(assert (=> b!3635958 (=> (not res!1473029) (not e!2250698))))

(assert (=> b!3635958 (= res!1473029 (contains!7506 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3635959 () Bool)

(declare-fun res!1473012 () Bool)

(assert (=> b!3635959 (=> (not res!1473012) (not e!2250696))))

(assert (=> b!3635959 (= res!1473012 (= (rule!8494 token!511) rule!403))))

(declare-fun b!3635960 () Bool)

(assert (=> b!3635960 (= e!2250691 e!2250714)))

(declare-fun res!1473018 () Bool)

(assert (=> b!3635960 (=> res!1473018 e!2250714)))

(declare-fun isPrefix!3083 (List!38440 List!38440) Bool)

(assert (=> b!3635960 (= res!1473018 (not (isPrefix!3083 lt!1258124 lt!1258105)))))

(assert (=> b!3635960 (isPrefix!3083 lt!1258124 lt!1258120)))

(assert (=> b!3635960 (= lt!1258120 (++!9536 lt!1258124 (_2!22224 lt!1258108)))))

(declare-fun lt!1258117 () Unit!55142)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2002 (List!38440 List!38440) Unit!55142)

(assert (=> b!3635960 (= lt!1258117 (lemmaConcatTwoListThenFirstIsPrefix!2002 lt!1258124 (_2!22224 lt!1258108)))))

(assert (=> b!3635960 (= lt!1258124 (list!14174 lt!1258126))))

(assert (=> b!3635960 (= lt!1258126 (charsOf!3734 (_1!22224 lt!1258108)))))

(declare-fun e!2250706 () Bool)

(assert (=> b!3635960 e!2250706))

(declare-fun res!1473023 () Bool)

(assert (=> b!3635960 (=> (not res!1473023) (not e!2250706))))

(declare-datatypes ((Option!8069 0))(
  ( (None!8068) (Some!8068 (v!37880 Rule!11240)) )
))
(declare-fun lt!1258110 () Option!8069)

(declare-fun isDefined!6301 (Option!8069) Bool)

(assert (=> b!3635960 (= res!1473023 (isDefined!6301 lt!1258110))))

(declare-fun getRuleFromTag!1324 (LexerInterface!5309 List!38441 String!43084) Option!8069)

(assert (=> b!3635960 (= lt!1258110 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))))

(declare-fun lt!1258109 () Unit!55142)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1324 (LexerInterface!5309 List!38441 List!38440 Token!10806) Unit!55142)

(assert (=> b!3635960 (= lt!1258109 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1324 thiss!23823 rules!3307 lt!1258105 (_1!22224 lt!1258108)))))

(assert (=> b!3635960 (= lt!1258108 (get!12538 lt!1258121))))

(declare-fun lt!1258116 () Unit!55142)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!987 (LexerInterface!5309 List!38441 List!38440 List!38440) Unit!55142)

(assert (=> b!3635960 (= lt!1258116 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!987 thiss!23823 rules!3307 lt!1258118 suffix!1395))))

(assert (=> b!3635960 (= lt!1258121 (maxPrefix!2843 thiss!23823 rules!3307 lt!1258105))))

(assert (=> b!3635960 (isPrefix!3083 lt!1258118 lt!1258105)))

(declare-fun lt!1258112 () Unit!55142)

(assert (=> b!3635960 (= lt!1258112 (lemmaConcatTwoListThenFirstIsPrefix!2002 lt!1258118 suffix!1395))))

(assert (=> b!3635960 (= lt!1258105 (++!9536 lt!1258118 suffix!1395))))

(declare-fun b!3635961 () Bool)

(assert (=> b!3635961 (= e!2250706 e!2250708)))

(declare-fun res!1473016 () Bool)

(assert (=> b!3635961 (=> (not res!1473016) (not e!2250708))))

(assert (=> b!3635961 (= res!1473016 (matchR!5048 (regex!5720 lt!1258119) (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))))))

(declare-fun get!12539 (Option!8069) Rule!11240)

(assert (=> b!3635961 (= lt!1258119 (get!12539 lt!1258110))))

(declare-fun e!2250703 () Bool)

(assert (=> b!3635962 (= e!2250703 (and tp!1109696 tp!1109706))))

(declare-fun b!3635963 () Bool)

(assert (=> b!3635963 (= e!2250696 (not e!2250693))))

(declare-fun res!1473030 () Bool)

(assert (=> b!3635963 (=> res!1473030 e!2250693)))

(assert (=> b!3635963 (= res!1473030 (not (matchR!5048 (regex!5720 rule!403) lt!1258118)))))

(declare-fun ruleValid!1984 (LexerInterface!5309 Rule!11240) Bool)

(assert (=> b!3635963 (ruleValid!1984 thiss!23823 rule!403)))

(declare-fun lt!1258122 () Unit!55142)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1138 (LexerInterface!5309 Rule!11240 List!38441) Unit!55142)

(assert (=> b!3635963 (= lt!1258122 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1138 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3635964 () Bool)

(declare-fun res!1473013 () Bool)

(assert (=> b!3635964 (=> (not res!1473013) (not e!2250696))))

(assert (=> b!3635964 (= res!1473013 (isEmpty!22676 (_2!22224 lt!1258115)))))

(declare-fun b!3635965 () Bool)

(declare-fun tp!1109697 () Bool)

(assert (=> b!3635965 (= e!2250697 (and tp!1109697 (inv!51741 (tag!6460 (h!43737 rules!3307))) (inv!51744 (transformation!5720 (h!43737 rules!3307))) e!2250703))))

(declare-fun tp!1109702 () Bool)

(declare-fun b!3635966 () Bool)

(declare-fun inv!21 (TokenValue!5950) Bool)

(assert (=> b!3635966 (= e!2250707 (and (inv!21 (value!183480 token!511)) e!2250704 tp!1109702))))

(assert (= (and start!339270 res!1473017) b!3635953))

(assert (= (and b!3635953 res!1473020) b!3635956))

(assert (= (and b!3635956 res!1473015) b!3635947))

(assert (= (and b!3635947 res!1473022) b!3635958))

(assert (= (and b!3635958 res!1473029) b!3635954))

(assert (= (and b!3635954 res!1473027) b!3635945))

(assert (= (and b!3635945 res!1473021) b!3635938))

(assert (= (and b!3635938 res!1473025) b!3635964))

(assert (= (and b!3635964 res!1473013) b!3635959))

(assert (= (and b!3635959 res!1473012) b!3635963))

(assert (= (and b!3635963 (not res!1473030)) b!3635941))

(assert (= (and b!3635941 (not res!1473032)) b!3635957))

(assert (= (and b!3635957 (not res!1473024)) b!3635939))

(assert (= (and b!3635939 (not res!1473019)) b!3635935))

(assert (= (and b!3635935 (not res!1473014)) b!3635960))

(assert (= (and b!3635960 res!1473023) b!3635961))

(assert (= (and b!3635961 res!1473016) b!3635955))

(assert (= (and b!3635960 (not res!1473018)) b!3635940))

(assert (= (and b!3635940 (not res!1473028)) b!3635949))

(assert (= (and b!3635949 (not res!1473031)) b!3635951))

(assert (= (and b!3635951 (not res!1473026)) b!3635952))

(assert (= b!3635965 b!3635962))

(assert (= b!3635948 b!3635965))

(assert (= (and start!339270 ((_ is Cons!38317) rules!3307)) b!3635948))

(assert (= (and start!339270 ((_ is Cons!38316) suffix!1395)) b!3635937))

(assert (= b!3635946 b!3635950))

(assert (= b!3635966 b!3635946))

(assert (= start!339270 b!3635966))

(assert (= b!3635936 b!3635942))

(assert (= start!339270 b!3635936))

(assert (= b!3635943 b!3635944))

(assert (= start!339270 b!3635943))

(declare-fun m!4138193 () Bool)

(assert (=> b!3635945 m!4138193))

(declare-fun m!4138195 () Bool)

(assert (=> b!3635945 m!4138195))

(declare-fun m!4138197 () Bool)

(assert (=> b!3635945 m!4138197))

(assert (=> b!3635945 m!4138197))

(declare-fun m!4138199 () Bool)

(assert (=> b!3635945 m!4138199))

(declare-fun m!4138201 () Bool)

(assert (=> start!339270 m!4138201))

(declare-fun m!4138203 () Bool)

(assert (=> b!3635943 m!4138203))

(declare-fun m!4138205 () Bool)

(assert (=> b!3635943 m!4138205))

(declare-fun m!4138207 () Bool)

(assert (=> b!3635941 m!4138207))

(declare-fun m!4138209 () Bool)

(assert (=> b!3635956 m!4138209))

(declare-fun m!4138211 () Bool)

(assert (=> b!3635936 m!4138211))

(declare-fun m!4138213 () Bool)

(assert (=> b!3635936 m!4138213))

(declare-fun m!4138215 () Bool)

(assert (=> b!3635957 m!4138215))

(assert (=> b!3635957 m!4138215))

(declare-fun m!4138217 () Bool)

(assert (=> b!3635957 m!4138217))

(declare-fun m!4138219 () Bool)

(assert (=> b!3635957 m!4138219))

(declare-fun m!4138221 () Bool)

(assert (=> b!3635953 m!4138221))

(declare-fun m!4138223 () Bool)

(assert (=> b!3635939 m!4138223))

(assert (=> b!3635939 m!4138223))

(declare-fun m!4138225 () Bool)

(assert (=> b!3635939 m!4138225))

(declare-fun m!4138227 () Bool)

(assert (=> b!3635949 m!4138227))

(declare-fun m!4138229 () Bool)

(assert (=> b!3635949 m!4138229))

(declare-fun m!4138231 () Bool)

(assert (=> b!3635949 m!4138231))

(declare-fun m!4138233 () Bool)

(assert (=> b!3635949 m!4138233))

(declare-fun m!4138235 () Bool)

(assert (=> b!3635949 m!4138235))

(assert (=> b!3635949 m!4138233))

(declare-fun m!4138237 () Bool)

(assert (=> b!3635949 m!4138237))

(declare-fun m!4138239 () Bool)

(assert (=> b!3635947 m!4138239))

(declare-fun m!4138241 () Bool)

(assert (=> b!3635938 m!4138241))

(declare-fun m!4138243 () Bool)

(assert (=> b!3635963 m!4138243))

(declare-fun m!4138245 () Bool)

(assert (=> b!3635963 m!4138245))

(declare-fun m!4138247 () Bool)

(assert (=> b!3635963 m!4138247))

(declare-fun m!4138249 () Bool)

(assert (=> b!3635961 m!4138249))

(assert (=> b!3635961 m!4138249))

(declare-fun m!4138251 () Bool)

(assert (=> b!3635961 m!4138251))

(assert (=> b!3635961 m!4138251))

(declare-fun m!4138253 () Bool)

(assert (=> b!3635961 m!4138253))

(declare-fun m!4138255 () Bool)

(assert (=> b!3635961 m!4138255))

(declare-fun m!4138257 () Bool)

(assert (=> b!3635940 m!4138257))

(declare-fun m!4138259 () Bool)

(assert (=> b!3635964 m!4138259))

(declare-fun m!4138261 () Bool)

(assert (=> b!3635952 m!4138261))

(declare-fun m!4138263 () Bool)

(assert (=> b!3635935 m!4138263))

(declare-fun m!4138265 () Bool)

(assert (=> b!3635946 m!4138265))

(declare-fun m!4138267 () Bool)

(assert (=> b!3635946 m!4138267))

(declare-fun m!4138269 () Bool)

(assert (=> b!3635958 m!4138269))

(declare-fun m!4138271 () Bool)

(assert (=> b!3635965 m!4138271))

(declare-fun m!4138273 () Bool)

(assert (=> b!3635965 m!4138273))

(declare-fun m!4138275 () Bool)

(assert (=> b!3635966 m!4138275))

(declare-fun m!4138277 () Bool)

(assert (=> b!3635951 m!4138277))

(declare-fun m!4138279 () Bool)

(assert (=> b!3635951 m!4138279))

(declare-fun m!4138281 () Bool)

(assert (=> b!3635951 m!4138281))

(declare-fun m!4138283 () Bool)

(assert (=> b!3635951 m!4138283))

(declare-fun m!4138285 () Bool)

(assert (=> b!3635951 m!4138285))

(declare-fun m!4138287 () Bool)

(assert (=> b!3635951 m!4138287))

(assert (=> b!3635951 m!4138279))

(declare-fun m!4138289 () Bool)

(assert (=> b!3635960 m!4138289))

(declare-fun m!4138291 () Bool)

(assert (=> b!3635960 m!4138291))

(declare-fun m!4138293 () Bool)

(assert (=> b!3635960 m!4138293))

(declare-fun m!4138295 () Bool)

(assert (=> b!3635960 m!4138295))

(declare-fun m!4138297 () Bool)

(assert (=> b!3635960 m!4138297))

(declare-fun m!4138299 () Bool)

(assert (=> b!3635960 m!4138299))

(declare-fun m!4138301 () Bool)

(assert (=> b!3635960 m!4138301))

(declare-fun m!4138303 () Bool)

(assert (=> b!3635960 m!4138303))

(declare-fun m!4138305 () Bool)

(assert (=> b!3635960 m!4138305))

(declare-fun m!4138307 () Bool)

(assert (=> b!3635960 m!4138307))

(declare-fun m!4138309 () Bool)

(assert (=> b!3635960 m!4138309))

(declare-fun m!4138311 () Bool)

(assert (=> b!3635960 m!4138311))

(declare-fun m!4138313 () Bool)

(assert (=> b!3635960 m!4138313))

(assert (=> b!3635960 m!4138249))

(declare-fun m!4138315 () Bool)

(assert (=> b!3635960 m!4138315))

(check-sat (not b_next!95923) (not b!3635958) (not b!3635939) (not b_next!95925) (not b_next!95913) (not b!3635964) b_and!267467 (not b!3635935) (not b!3635938) (not b!3635946) (not b!3635948) (not b!3635945) (not b!3635941) b_and!267473 (not b_next!95927) (not b!3635957) (not b!3635947) (not b!3635960) b_and!267465 (not b!3635953) b_and!267471 (not b_next!95919) (not b!3635963) (not b!3635949) (not start!339270) b_and!267469 (not b!3635965) (not b_next!95915) (not b!3635956) tp_is_empty!18041 b_and!267463 (not b!3635952) (not b_next!95917) (not b!3635936) (not b_next!95921) (not b!3635943) b_and!267459 (not b!3635961) (not b!3635940) (not b!3635937) (not b!3635951) b_and!267461 (not b!3635966))
(check-sat (not b_next!95923) (not b_next!95925) b_and!267465 (not b_next!95913) b_and!267471 (not b_next!95919) b_and!267467 b_and!267469 (not b_next!95915) b_and!267461 b_and!267473 (not b_next!95927) b_and!267463 (not b_next!95917) (not b_next!95921) b_and!267459)
(get-model)

(declare-fun d!1069291 () Bool)

(assert (=> d!1069291 (= (inv!51741 (tag!6460 rule!403)) (= (mod (str.len (value!183479 (tag!6460 rule!403))) 2) 0))))

(assert (=> b!3635936 d!1069291))

(declare-fun d!1069297 () Bool)

(declare-fun res!1473093 () Bool)

(declare-fun e!2250774 () Bool)

(assert (=> d!1069297 (=> (not res!1473093) (not e!2250774))))

(declare-fun semiInverseModEq!2432 (Int Int) Bool)

(assert (=> d!1069297 (= res!1473093 (semiInverseModEq!2432 (toChars!7871 (transformation!5720 rule!403)) (toValue!8012 (transformation!5720 rule!403))))))

(assert (=> d!1069297 (= (inv!51744 (transformation!5720 rule!403)) e!2250774)))

(declare-fun b!3636064 () Bool)

(declare-fun equivClasses!2331 (Int Int) Bool)

(assert (=> b!3636064 (= e!2250774 (equivClasses!2331 (toChars!7871 (transformation!5720 rule!403)) (toValue!8012 (transformation!5720 rule!403))))))

(assert (= (and d!1069297 res!1473093) b!3636064))

(declare-fun m!4138375 () Bool)

(assert (=> d!1069297 m!4138375))

(declare-fun m!4138377 () Bool)

(assert (=> b!3636064 m!4138377))

(assert (=> b!3635936 d!1069297))

(declare-fun d!1069299 () Bool)

(declare-fun lt!1258144 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5506 (List!38440) (InoxSet C!21144))

(assert (=> d!1069299 (= lt!1258144 (select (content!5506 (usedCharacters!932 (regex!5720 rule!403))) lt!1258113))))

(declare-fun e!2250780 () Bool)

(assert (=> d!1069299 (= lt!1258144 e!2250780)))

(declare-fun res!1473098 () Bool)

(assert (=> d!1069299 (=> (not res!1473098) (not e!2250780))))

(assert (=> d!1069299 (= res!1473098 ((_ is Cons!38316) (usedCharacters!932 (regex!5720 rule!403))))))

(assert (=> d!1069299 (= (contains!7505 (usedCharacters!932 (regex!5720 rule!403)) lt!1258113) lt!1258144)))

(declare-fun b!3636069 () Bool)

(declare-fun e!2250779 () Bool)

(assert (=> b!3636069 (= e!2250780 e!2250779)))

(declare-fun res!1473099 () Bool)

(assert (=> b!3636069 (=> res!1473099 e!2250779)))

(assert (=> b!3636069 (= res!1473099 (= (h!43736 (usedCharacters!932 (regex!5720 rule!403))) lt!1258113))))

(declare-fun b!3636070 () Bool)

(assert (=> b!3636070 (= e!2250779 (contains!7505 (t!295863 (usedCharacters!932 (regex!5720 rule!403))) lt!1258113))))

(assert (= (and d!1069299 res!1473098) b!3636069))

(assert (= (and b!3636069 (not res!1473099)) b!3636070))

(assert (=> d!1069299 m!4138215))

(declare-fun m!4138379 () Bool)

(assert (=> d!1069299 m!4138379))

(declare-fun m!4138381 () Bool)

(assert (=> d!1069299 m!4138381))

(declare-fun m!4138383 () Bool)

(assert (=> b!3636070 m!4138383))

(assert (=> b!3635957 d!1069299))

(declare-fun b!3636091 () Bool)

(declare-fun e!2250792 () List!38440)

(declare-fun call!262921 () List!38440)

(assert (=> b!3636091 (= e!2250792 call!262921)))

(declare-fun bm!262913 () Bool)

(declare-fun call!262918 () List!38440)

(declare-fun c!628857 () Bool)

(assert (=> bm!262913 (= call!262918 (usedCharacters!932 (ite c!628857 (regTwo!21471 (regex!5720 rule!403)) (regOne!21470 (regex!5720 rule!403)))))))

(declare-fun b!3636092 () Bool)

(declare-fun e!2250794 () List!38440)

(declare-fun call!262920 () List!38440)

(assert (=> b!3636092 (= e!2250794 call!262920)))

(declare-fun b!3636093 () Bool)

(assert (=> b!3636093 (= e!2250794 call!262920)))

(declare-fun b!3636094 () Bool)

(declare-fun e!2250791 () List!38440)

(declare-fun e!2250793 () List!38440)

(assert (=> b!3636094 (= e!2250791 e!2250793)))

(declare-fun c!628860 () Bool)

(assert (=> b!3636094 (= c!628860 ((_ is ElementMatch!10479) (regex!5720 rule!403)))))

(declare-fun bm!262914 () Bool)

(declare-fun c!628858 () Bool)

(assert (=> bm!262914 (= call!262921 (usedCharacters!932 (ite c!628858 (reg!10808 (regex!5720 rule!403)) (ite c!628857 (regOne!21471 (regex!5720 rule!403)) (regTwo!21470 (regex!5720 rule!403))))))))

(declare-fun d!1069301 () Bool)

(declare-fun c!628859 () Bool)

(assert (=> d!1069301 (= c!628859 (or ((_ is EmptyExpr!10479) (regex!5720 rule!403)) ((_ is EmptyLang!10479) (regex!5720 rule!403))))))

(assert (=> d!1069301 (= (usedCharacters!932 (regex!5720 rule!403)) e!2250791)))

(declare-fun b!3636095 () Bool)

(assert (=> b!3636095 (= c!628858 ((_ is Star!10479) (regex!5720 rule!403)))))

(assert (=> b!3636095 (= e!2250793 e!2250792)))

(declare-fun b!3636096 () Bool)

(assert (=> b!3636096 (= e!2250793 (Cons!38316 (c!628824 (regex!5720 rule!403)) Nil!38316))))

(declare-fun bm!262915 () Bool)

(declare-fun call!262919 () List!38440)

(assert (=> bm!262915 (= call!262919 call!262921)))

(declare-fun b!3636097 () Bool)

(assert (=> b!3636097 (= e!2250791 Nil!38316)))

(declare-fun bm!262916 () Bool)

(assert (=> bm!262916 (= call!262920 (++!9536 (ite c!628857 call!262919 call!262918) (ite c!628857 call!262918 call!262919)))))

(declare-fun b!3636098 () Bool)

(assert (=> b!3636098 (= e!2250792 e!2250794)))

(assert (=> b!3636098 (= c!628857 ((_ is Union!10479) (regex!5720 rule!403)))))

(assert (= (and d!1069301 c!628859) b!3636097))

(assert (= (and d!1069301 (not c!628859)) b!3636094))

(assert (= (and b!3636094 c!628860) b!3636096))

(assert (= (and b!3636094 (not c!628860)) b!3636095))

(assert (= (and b!3636095 c!628858) b!3636091))

(assert (= (and b!3636095 (not c!628858)) b!3636098))

(assert (= (and b!3636098 c!628857) b!3636092))

(assert (= (and b!3636098 (not c!628857)) b!3636093))

(assert (= (or b!3636092 b!3636093) bm!262915))

(assert (= (or b!3636092 b!3636093) bm!262913))

(assert (= (or b!3636092 b!3636093) bm!262916))

(assert (= (or b!3636091 bm!262915) bm!262914))

(declare-fun m!4138385 () Bool)

(assert (=> bm!262913 m!4138385))

(declare-fun m!4138387 () Bool)

(assert (=> bm!262914 m!4138387))

(declare-fun m!4138389 () Bool)

(assert (=> bm!262916 m!4138389))

(assert (=> b!3635957 d!1069301))

(declare-fun d!1069303 () Bool)

(assert (=> d!1069303 (= (head!7710 suffix!1395) (h!43736 suffix!1395))))

(assert (=> b!3635957 d!1069303))

(declare-fun d!1069305 () Bool)

(declare-fun res!1473125 () Bool)

(declare-fun e!2250806 () Bool)

(assert (=> d!1069305 (=> res!1473125 e!2250806)))

(assert (=> d!1069305 (= res!1473125 (not ((_ is Cons!38317) rules!3307)))))

(assert (=> d!1069305 (= (sepAndNonSepRulesDisjointChars!1888 rules!3307 rules!3307) e!2250806)))

(declare-fun b!3636126 () Bool)

(declare-fun e!2250807 () Bool)

(assert (=> b!3636126 (= e!2250806 e!2250807)))

(declare-fun res!1473126 () Bool)

(assert (=> b!3636126 (=> (not res!1473126) (not e!2250807))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!857 (Rule!11240 List!38441) Bool)

(assert (=> b!3636126 (= res!1473126 (ruleDisjointCharsFromAllFromOtherType!857 (h!43737 rules!3307) rules!3307))))

(declare-fun b!3636127 () Bool)

(assert (=> b!3636127 (= e!2250807 (sepAndNonSepRulesDisjointChars!1888 rules!3307 (t!295864 rules!3307)))))

(assert (= (and d!1069305 (not res!1473125)) b!3636126))

(assert (= (and b!3636126 res!1473126) b!3636127))

(declare-fun m!4138417 () Bool)

(assert (=> b!3636126 m!4138417))

(declare-fun m!4138421 () Bool)

(assert (=> b!3636127 m!4138421))

(assert (=> b!3635935 d!1069305))

(declare-fun d!1069307 () Bool)

(declare-fun res!1473131 () Bool)

(declare-fun e!2250810 () Bool)

(assert (=> d!1069307 (=> (not res!1473131) (not e!2250810))))

(assert (=> d!1069307 (= res!1473131 (not (isEmpty!22676 (originalCharacters!6434 token!511))))))

(assert (=> d!1069307 (= (inv!51745 token!511) e!2250810)))

(declare-fun b!3636132 () Bool)

(declare-fun res!1473132 () Bool)

(assert (=> b!3636132 (=> (not res!1473132) (not e!2250810))))

(declare-fun dynLambda!16639 (Int TokenValue!5950) BalanceConc!23004)

(assert (=> b!3636132 (= res!1473132 (= (originalCharacters!6434 token!511) (list!14174 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (value!183480 token!511)))))))

(declare-fun b!3636133 () Bool)

(assert (=> b!3636133 (= e!2250810 (= (size!29239 token!511) (size!29241 (originalCharacters!6434 token!511))))))

(assert (= (and d!1069307 res!1473131) b!3636132))

(assert (= (and b!3636132 res!1473132) b!3636133))

(declare-fun b_lambda!107725 () Bool)

(assert (=> (not b_lambda!107725) (not b!3636132)))

(declare-fun tb!209189 () Bool)

(declare-fun t!295874 () Bool)

(assert (=> (and b!3635962 (= (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toChars!7871 (transformation!5720 (rule!8494 token!511)))) t!295874) tb!209189))

(declare-fun b!3636142 () Bool)

(declare-fun e!2250815 () Bool)

(declare-fun tp!1109712 () Bool)

(declare-fun inv!51748 (Conc!11695) Bool)

(assert (=> b!3636142 (= e!2250815 (and (inv!51748 (c!628825 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (value!183480 token!511)))) tp!1109712))))

(declare-fun result!254812 () Bool)

(declare-fun inv!51749 (BalanceConc!23004) Bool)

(assert (=> tb!209189 (= result!254812 (and (inv!51749 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (value!183480 token!511))) e!2250815))))

(assert (= tb!209189 b!3636142))

(declare-fun m!4138429 () Bool)

(assert (=> b!3636142 m!4138429))

(declare-fun m!4138431 () Bool)

(assert (=> tb!209189 m!4138431))

(assert (=> b!3636132 t!295874))

(declare-fun b_and!267483 () Bool)

(assert (= b_and!267461 (and (=> t!295874 result!254812) b_and!267483)))

(declare-fun t!295876 () Bool)

(declare-fun tb!209191 () Bool)

(assert (=> (and b!3635950 (= (toChars!7871 (transformation!5720 (rule!8494 token!511))) (toChars!7871 (transformation!5720 (rule!8494 token!511)))) t!295876) tb!209191))

(declare-fun result!254816 () Bool)

(assert (= result!254816 result!254812))

(assert (=> b!3636132 t!295876))

(declare-fun b_and!267485 () Bool)

(assert (= b_and!267465 (and (=> t!295876 result!254816) b_and!267485)))

(declare-fun t!295878 () Bool)

(declare-fun tb!209193 () Bool)

(assert (=> (and b!3635942 (= (toChars!7871 (transformation!5720 rule!403)) (toChars!7871 (transformation!5720 (rule!8494 token!511)))) t!295878) tb!209193))

(declare-fun result!254818 () Bool)

(assert (= result!254818 result!254812))

(assert (=> b!3636132 t!295878))

(declare-fun b_and!267487 () Bool)

(assert (= b_and!267469 (and (=> t!295878 result!254818) b_and!267487)))

(declare-fun tb!209195 () Bool)

(declare-fun t!295880 () Bool)

(assert (=> (and b!3635944 (= (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toChars!7871 (transformation!5720 (rule!8494 token!511)))) t!295880) tb!209195))

(declare-fun result!254820 () Bool)

(assert (= result!254820 result!254812))

(assert (=> b!3636132 t!295880))

(declare-fun b_and!267489 () Bool)

(assert (= b_and!267473 (and (=> t!295880 result!254820) b_and!267489)))

(declare-fun m!4138433 () Bool)

(assert (=> d!1069307 m!4138433))

(declare-fun m!4138435 () Bool)

(assert (=> b!3636132 m!4138435))

(assert (=> b!3636132 m!4138435))

(declare-fun m!4138437 () Bool)

(assert (=> b!3636132 m!4138437))

(declare-fun m!4138439 () Bool)

(assert (=> b!3636133 m!4138439))

(assert (=> start!339270 d!1069307))

(declare-fun d!1069311 () Bool)

(declare-fun lt!1258171 () Bool)

(declare-fun content!5507 (List!38441) (InoxSet Rule!11240))

(assert (=> d!1069311 (= lt!1258171 (select (content!5507 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2250831 () Bool)

(assert (=> d!1069311 (= lt!1258171 e!2250831)))

(declare-fun res!1473143 () Bool)

(assert (=> d!1069311 (=> (not res!1473143) (not e!2250831))))

(assert (=> d!1069311 (= res!1473143 ((_ is Cons!38317) rules!3307))))

(assert (=> d!1069311 (= (contains!7506 rules!3307 anOtherTypeRule!33) lt!1258171)))

(declare-fun b!3636161 () Bool)

(declare-fun e!2250830 () Bool)

(assert (=> b!3636161 (= e!2250831 e!2250830)))

(declare-fun res!1473144 () Bool)

(assert (=> b!3636161 (=> res!1473144 e!2250830)))

(assert (=> b!3636161 (= res!1473144 (= (h!43737 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3636162 () Bool)

(assert (=> b!3636162 (= e!2250830 (contains!7506 (t!295864 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1069311 res!1473143) b!3636161))

(assert (= (and b!3636161 (not res!1473144)) b!3636162))

(declare-fun m!4138453 () Bool)

(assert (=> d!1069311 m!4138453))

(declare-fun m!4138455 () Bool)

(assert (=> d!1069311 m!4138455))

(declare-fun m!4138457 () Bool)

(assert (=> b!3636162 m!4138457))

(assert (=> b!3635958 d!1069311))

(declare-fun d!1069315 () Bool)

(declare-fun e!2250849 () Bool)

(assert (=> d!1069315 e!2250849))

(declare-fun res!1473166 () Bool)

(assert (=> d!1069315 (=> (not res!1473166) (not e!2250849))))

(declare-fun lt!1258182 () List!38440)

(assert (=> d!1069315 (= res!1473166 (= (content!5506 lt!1258182) ((_ map or) (content!5506 lt!1258124) (content!5506 (_2!22224 lt!1258108)))))))

(declare-fun e!2250850 () List!38440)

(assert (=> d!1069315 (= lt!1258182 e!2250850)))

(declare-fun c!628872 () Bool)

(assert (=> d!1069315 (= c!628872 ((_ is Nil!38316) lt!1258124))))

(assert (=> d!1069315 (= (++!9536 lt!1258124 (_2!22224 lt!1258108)) lt!1258182)))

(declare-fun b!3636192 () Bool)

(assert (=> b!3636192 (= e!2250850 (Cons!38316 (h!43736 lt!1258124) (++!9536 (t!295863 lt!1258124) (_2!22224 lt!1258108))))))

(declare-fun b!3636191 () Bool)

(assert (=> b!3636191 (= e!2250850 (_2!22224 lt!1258108))))

(declare-fun b!3636194 () Bool)

(assert (=> b!3636194 (= e!2250849 (or (not (= (_2!22224 lt!1258108) Nil!38316)) (= lt!1258182 lt!1258124)))))

(declare-fun b!3636193 () Bool)

(declare-fun res!1473165 () Bool)

(assert (=> b!3636193 (=> (not res!1473165) (not e!2250849))))

(assert (=> b!3636193 (= res!1473165 (= (size!29241 lt!1258182) (+ (size!29241 lt!1258124) (size!29241 (_2!22224 lt!1258108)))))))

(assert (= (and d!1069315 c!628872) b!3636191))

(assert (= (and d!1069315 (not c!628872)) b!3636192))

(assert (= (and d!1069315 res!1473166) b!3636193))

(assert (= (and b!3636193 res!1473165) b!3636194))

(declare-fun m!4138489 () Bool)

(assert (=> d!1069315 m!4138489))

(declare-fun m!4138491 () Bool)

(assert (=> d!1069315 m!4138491))

(declare-fun m!4138493 () Bool)

(assert (=> d!1069315 m!4138493))

(declare-fun m!4138495 () Bool)

(assert (=> b!3636192 m!4138495))

(declare-fun m!4138497 () Bool)

(assert (=> b!3636193 m!4138497))

(assert (=> b!3636193 m!4138285))

(declare-fun m!4138499 () Bool)

(assert (=> b!3636193 m!4138499))

(assert (=> b!3635960 d!1069315))

(declare-fun b!3636290 () Bool)

(declare-fun res!1473219 () Bool)

(declare-fun e!2250908 () Bool)

(assert (=> b!3636290 (=> (not res!1473219) (not e!2250908))))

(declare-fun lt!1258294 () Token!10806)

(assert (=> b!3636290 (= res!1473219 (matchR!5048 (regex!5720 (get!12539 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 lt!1258294))))) (list!14174 (charsOf!3734 lt!1258294))))))

(declare-fun d!1069323 () Bool)

(assert (=> d!1069323 (isDefined!6300 (maxPrefix!2843 thiss!23823 rules!3307 (++!9536 lt!1258118 suffix!1395)))))

(declare-fun lt!1258286 () Unit!55142)

(declare-fun e!2250909 () Unit!55142)

(assert (=> d!1069323 (= lt!1258286 e!2250909)))

(declare-fun c!628895 () Bool)

(declare-fun isEmpty!22680 (Option!8068) Bool)

(assert (=> d!1069323 (= c!628895 (isEmpty!22680 (maxPrefix!2843 thiss!23823 rules!3307 (++!9536 lt!1258118 suffix!1395))))))

(declare-fun lt!1258293 () Unit!55142)

(declare-fun lt!1258289 () Unit!55142)

(assert (=> d!1069323 (= lt!1258293 lt!1258289)))

(assert (=> d!1069323 e!2250908))

(declare-fun res!1473220 () Bool)

(assert (=> d!1069323 (=> (not res!1473220) (not e!2250908))))

(assert (=> d!1069323 (= res!1473220 (isDefined!6301 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 lt!1258294)))))))

(assert (=> d!1069323 (= lt!1258289 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1324 thiss!23823 rules!3307 lt!1258118 lt!1258294))))

(declare-fun lt!1258283 () Unit!55142)

(declare-fun lt!1258281 () Unit!55142)

(assert (=> d!1069323 (= lt!1258283 lt!1258281)))

(declare-fun lt!1258285 () List!38440)

(assert (=> d!1069323 (isPrefix!3083 lt!1258285 (++!9536 lt!1258118 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!484 (List!38440 List!38440 List!38440) Unit!55142)

(assert (=> d!1069323 (= lt!1258281 (lemmaPrefixStaysPrefixWhenAddingToSuffix!484 lt!1258285 lt!1258118 suffix!1395))))

(assert (=> d!1069323 (= lt!1258285 (list!14174 (charsOf!3734 lt!1258294)))))

(declare-fun lt!1258290 () Unit!55142)

(declare-fun lt!1258280 () Unit!55142)

(assert (=> d!1069323 (= lt!1258290 lt!1258280)))

(declare-fun lt!1258284 () List!38440)

(declare-fun lt!1258292 () List!38440)

(assert (=> d!1069323 (isPrefix!3083 lt!1258284 (++!9536 lt!1258284 lt!1258292))))

(assert (=> d!1069323 (= lt!1258280 (lemmaConcatTwoListThenFirstIsPrefix!2002 lt!1258284 lt!1258292))))

(assert (=> d!1069323 (= lt!1258292 (_2!22224 (get!12538 (maxPrefix!2843 thiss!23823 rules!3307 lt!1258118))))))

(assert (=> d!1069323 (= lt!1258284 (list!14174 (charsOf!3734 lt!1258294)))))

(declare-datatypes ((List!38444 0))(
  ( (Nil!38320) (Cons!38320 (h!43740 Token!10806) (t!295987 List!38444)) )
))
(declare-fun head!7712 (List!38444) Token!10806)

(declare-datatypes ((IArray!23399 0))(
  ( (IArray!23400 (innerList!11757 List!38444)) )
))
(declare-datatypes ((Conc!11697 0))(
  ( (Node!11697 (left!29919 Conc!11697) (right!30249 Conc!11697) (csize!23624 Int) (cheight!11908 Int)) (Leaf!18168 (xs!14899 IArray!23399) (csize!23625 Int)) (Empty!11697) )
))
(declare-datatypes ((BalanceConc!23008 0))(
  ( (BalanceConc!23009 (c!628957 Conc!11697)) )
))
(declare-fun list!14177 (BalanceConc!23008) List!38444)

(declare-datatypes ((tuple2!38184 0))(
  ( (tuple2!38185 (_1!22226 BalanceConc!23008) (_2!22226 BalanceConc!23004)) )
))
(declare-fun lex!2516 (LexerInterface!5309 List!38441 BalanceConc!23004) tuple2!38184)

(assert (=> d!1069323 (= lt!1258294 (head!7712 (list!14177 (_1!22226 (lex!2516 thiss!23823 rules!3307 (seqFromList!4269 lt!1258118))))))))

(assert (=> d!1069323 (not (isEmpty!22677 rules!3307))))

(assert (=> d!1069323 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!987 thiss!23823 rules!3307 lt!1258118 suffix!1395) lt!1258286)))

(declare-fun b!3636292 () Bool)

(declare-fun Unit!55146 () Unit!55142)

(assert (=> b!3636292 (= e!2250909 Unit!55146)))

(declare-fun lt!1258288 () List!38440)

(assert (=> b!3636292 (= lt!1258288 (++!9536 lt!1258118 suffix!1395))))

(declare-fun lt!1258291 () Unit!55142)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!520 (LexerInterface!5309 Rule!11240 List!38441 List!38440) Unit!55142)

(assert (=> b!3636292 (= lt!1258291 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!520 thiss!23823 (rule!8494 lt!1258294) rules!3307 lt!1258288))))

(assert (=> b!3636292 (isEmpty!22680 (maxPrefixOneRule!1981 thiss!23823 (rule!8494 lt!1258294) lt!1258288))))

(declare-fun lt!1258287 () Unit!55142)

(assert (=> b!3636292 (= lt!1258287 lt!1258291)))

(declare-fun lt!1258282 () List!38440)

(assert (=> b!3636292 (= lt!1258282 (list!14174 (charsOf!3734 lt!1258294)))))

(declare-fun lt!1258279 () Unit!55142)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!508 (LexerInterface!5309 Rule!11240 List!38440 List!38440) Unit!55142)

(assert (=> b!3636292 (= lt!1258279 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!508 thiss!23823 (rule!8494 lt!1258294) lt!1258282 (++!9536 lt!1258118 suffix!1395)))))

(assert (=> b!3636292 (not (matchR!5048 (regex!5720 (rule!8494 lt!1258294)) lt!1258282))))

(declare-fun lt!1258295 () Unit!55142)

(assert (=> b!3636292 (= lt!1258295 lt!1258279)))

(assert (=> b!3636292 false))

(declare-fun b!3636293 () Bool)

(declare-fun Unit!55147 () Unit!55142)

(assert (=> b!3636293 (= e!2250909 Unit!55147)))

(declare-fun b!3636291 () Bool)

(assert (=> b!3636291 (= e!2250908 (= (rule!8494 lt!1258294) (get!12539 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 lt!1258294))))))))

(assert (= (and d!1069323 res!1473220) b!3636290))

(assert (= (and b!3636290 res!1473219) b!3636291))

(assert (= (and d!1069323 c!628895) b!3636292))

(assert (= (and d!1069323 (not c!628895)) b!3636293))

(declare-fun m!4138649 () Bool)

(assert (=> b!3636290 m!4138649))

(declare-fun m!4138651 () Bool)

(assert (=> b!3636290 m!4138651))

(declare-fun m!4138653 () Bool)

(assert (=> b!3636290 m!4138653))

(declare-fun m!4138655 () Bool)

(assert (=> b!3636290 m!4138655))

(assert (=> b!3636290 m!4138649))

(declare-fun m!4138657 () Bool)

(assert (=> b!3636290 m!4138657))

(assert (=> b!3636290 m!4138657))

(assert (=> b!3636290 m!4138653))

(assert (=> d!1069323 m!4138315))

(declare-fun m!4138659 () Bool)

(assert (=> d!1069323 m!4138659))

(assert (=> d!1069323 m!4138315))

(declare-fun m!4138661 () Bool)

(assert (=> d!1069323 m!4138661))

(assert (=> d!1069323 m!4138221))

(declare-fun m!4138663 () Bool)

(assert (=> d!1069323 m!4138663))

(declare-fun m!4138665 () Bool)

(assert (=> d!1069323 m!4138665))

(declare-fun m!4138667 () Bool)

(assert (=> d!1069323 m!4138667))

(assert (=> d!1069323 m!4138649))

(assert (=> d!1069323 m!4138195))

(assert (=> d!1069323 m!4138657))

(assert (=> d!1069323 m!4138653))

(assert (=> d!1069323 m!4138661))

(declare-fun m!4138669 () Bool)

(assert (=> d!1069323 m!4138669))

(declare-fun m!4138671 () Bool)

(assert (=> d!1069323 m!4138671))

(assert (=> d!1069323 m!4138661))

(declare-fun m!4138673 () Bool)

(assert (=> d!1069323 m!4138673))

(declare-fun m!4138675 () Bool)

(assert (=> d!1069323 m!4138675))

(assert (=> d!1069323 m!4138649))

(declare-fun m!4138677 () Bool)

(assert (=> d!1069323 m!4138677))

(assert (=> d!1069323 m!4138663))

(declare-fun m!4138679 () Bool)

(assert (=> d!1069323 m!4138679))

(assert (=> d!1069323 m!4138195))

(declare-fun m!4138681 () Bool)

(assert (=> d!1069323 m!4138681))

(declare-fun m!4138683 () Bool)

(assert (=> d!1069323 m!4138683))

(assert (=> d!1069323 m!4138667))

(declare-fun m!4138685 () Bool)

(assert (=> d!1069323 m!4138685))

(assert (=> d!1069323 m!4138675))

(declare-fun m!4138687 () Bool)

(assert (=> d!1069323 m!4138687))

(assert (=> d!1069323 m!4138657))

(assert (=> d!1069323 m!4138315))

(declare-fun m!4138689 () Bool)

(assert (=> b!3636292 m!4138689))

(assert (=> b!3636292 m!4138689))

(declare-fun m!4138691 () Bool)

(assert (=> b!3636292 m!4138691))

(declare-fun m!4138693 () Bool)

(assert (=> b!3636292 m!4138693))

(assert (=> b!3636292 m!4138657))

(assert (=> b!3636292 m!4138653))

(assert (=> b!3636292 m!4138657))

(assert (=> b!3636292 m!4138315))

(declare-fun m!4138695 () Bool)

(assert (=> b!3636292 m!4138695))

(declare-fun m!4138697 () Bool)

(assert (=> b!3636292 m!4138697))

(assert (=> b!3636292 m!4138315))

(assert (=> b!3636291 m!4138649))

(assert (=> b!3636291 m!4138649))

(assert (=> b!3636291 m!4138651))

(assert (=> b!3635960 d!1069323))

(declare-fun d!1069371 () Bool)

(declare-fun isEmpty!22681 (Option!8069) Bool)

(assert (=> d!1069371 (= (isDefined!6301 lt!1258110) (not (isEmpty!22681 lt!1258110)))))

(declare-fun bs!571805 () Bool)

(assert (= bs!571805 d!1069371))

(declare-fun m!4138699 () Bool)

(assert (=> bs!571805 m!4138699))

(assert (=> b!3635960 d!1069371))

(declare-fun d!1069373 () Bool)

(assert (=> d!1069373 (isPrefix!3083 lt!1258118 (++!9536 lt!1258118 suffix!1395))))

(declare-fun lt!1258298 () Unit!55142)

(declare-fun choose!21361 (List!38440 List!38440) Unit!55142)

(assert (=> d!1069373 (= lt!1258298 (choose!21361 lt!1258118 suffix!1395))))

(assert (=> d!1069373 (= (lemmaConcatTwoListThenFirstIsPrefix!2002 lt!1258118 suffix!1395) lt!1258298)))

(declare-fun bs!571806 () Bool)

(assert (= bs!571806 d!1069373))

(assert (=> bs!571806 m!4138315))

(assert (=> bs!571806 m!4138315))

(declare-fun m!4138701 () Bool)

(assert (=> bs!571806 m!4138701))

(declare-fun m!4138703 () Bool)

(assert (=> bs!571806 m!4138703))

(assert (=> b!3635960 d!1069373))

(declare-fun b!3636305 () Bool)

(declare-fun e!2250918 () Bool)

(assert (=> b!3636305 (= e!2250918 (>= (size!29241 lt!1258105) (size!29241 lt!1258118)))))

(declare-fun b!3636302 () Bool)

(declare-fun e!2250916 () Bool)

(declare-fun e!2250917 () Bool)

(assert (=> b!3636302 (= e!2250916 e!2250917)))

(declare-fun res!1473232 () Bool)

(assert (=> b!3636302 (=> (not res!1473232) (not e!2250917))))

(assert (=> b!3636302 (= res!1473232 (not ((_ is Nil!38316) lt!1258105)))))

(declare-fun b!3636304 () Bool)

(declare-fun tail!5631 (List!38440) List!38440)

(assert (=> b!3636304 (= e!2250917 (isPrefix!3083 (tail!5631 lt!1258118) (tail!5631 lt!1258105)))))

(declare-fun d!1069375 () Bool)

(assert (=> d!1069375 e!2250918))

(declare-fun res!1473231 () Bool)

(assert (=> d!1069375 (=> res!1473231 e!2250918)))

(declare-fun lt!1258301 () Bool)

(assert (=> d!1069375 (= res!1473231 (not lt!1258301))))

(assert (=> d!1069375 (= lt!1258301 e!2250916)))

(declare-fun res!1473229 () Bool)

(assert (=> d!1069375 (=> res!1473229 e!2250916)))

(assert (=> d!1069375 (= res!1473229 ((_ is Nil!38316) lt!1258118))))

(assert (=> d!1069375 (= (isPrefix!3083 lt!1258118 lt!1258105) lt!1258301)))

(declare-fun b!3636303 () Bool)

(declare-fun res!1473230 () Bool)

(assert (=> b!3636303 (=> (not res!1473230) (not e!2250917))))

(assert (=> b!3636303 (= res!1473230 (= (head!7710 lt!1258118) (head!7710 lt!1258105)))))

(assert (= (and d!1069375 (not res!1473229)) b!3636302))

(assert (= (and b!3636302 res!1473232) b!3636303))

(assert (= (and b!3636303 res!1473230) b!3636304))

(assert (= (and d!1069375 (not res!1473231)) b!3636305))

(declare-fun m!4138705 () Bool)

(assert (=> b!3636305 m!4138705))

(declare-fun m!4138707 () Bool)

(assert (=> b!3636305 m!4138707))

(declare-fun m!4138709 () Bool)

(assert (=> b!3636304 m!4138709))

(declare-fun m!4138711 () Bool)

(assert (=> b!3636304 m!4138711))

(assert (=> b!3636304 m!4138709))

(assert (=> b!3636304 m!4138711))

(declare-fun m!4138713 () Bool)

(assert (=> b!3636304 m!4138713))

(declare-fun m!4138715 () Bool)

(assert (=> b!3636303 m!4138715))

(declare-fun m!4138717 () Bool)

(assert (=> b!3636303 m!4138717))

(assert (=> b!3635960 d!1069375))

(declare-fun d!1069377 () Bool)

(assert (=> d!1069377 (isPrefix!3083 lt!1258124 (++!9536 lt!1258124 (_2!22224 lt!1258108)))))

(declare-fun lt!1258302 () Unit!55142)

(assert (=> d!1069377 (= lt!1258302 (choose!21361 lt!1258124 (_2!22224 lt!1258108)))))

(assert (=> d!1069377 (= (lemmaConcatTwoListThenFirstIsPrefix!2002 lt!1258124 (_2!22224 lt!1258108)) lt!1258302)))

(declare-fun bs!571807 () Bool)

(assert (= bs!571807 d!1069377))

(assert (=> bs!571807 m!4138301))

(assert (=> bs!571807 m!4138301))

(declare-fun m!4138719 () Bool)

(assert (=> bs!571807 m!4138719))

(declare-fun m!4138721 () Bool)

(assert (=> bs!571807 m!4138721))

(assert (=> b!3635960 d!1069377))

(declare-fun b!3636309 () Bool)

(declare-fun e!2250921 () Bool)

(assert (=> b!3636309 (= e!2250921 (>= (size!29241 lt!1258120) (size!29241 lt!1258124)))))

(declare-fun b!3636306 () Bool)

(declare-fun e!2250919 () Bool)

(declare-fun e!2250920 () Bool)

(assert (=> b!3636306 (= e!2250919 e!2250920)))

(declare-fun res!1473236 () Bool)

(assert (=> b!3636306 (=> (not res!1473236) (not e!2250920))))

(assert (=> b!3636306 (= res!1473236 (not ((_ is Nil!38316) lt!1258120)))))

(declare-fun b!3636308 () Bool)

(assert (=> b!3636308 (= e!2250920 (isPrefix!3083 (tail!5631 lt!1258124) (tail!5631 lt!1258120)))))

(declare-fun d!1069379 () Bool)

(assert (=> d!1069379 e!2250921))

(declare-fun res!1473235 () Bool)

(assert (=> d!1069379 (=> res!1473235 e!2250921)))

(declare-fun lt!1258303 () Bool)

(assert (=> d!1069379 (= res!1473235 (not lt!1258303))))

(assert (=> d!1069379 (= lt!1258303 e!2250919)))

(declare-fun res!1473233 () Bool)

(assert (=> d!1069379 (=> res!1473233 e!2250919)))

(assert (=> d!1069379 (= res!1473233 ((_ is Nil!38316) lt!1258124))))

(assert (=> d!1069379 (= (isPrefix!3083 lt!1258124 lt!1258120) lt!1258303)))

(declare-fun b!3636307 () Bool)

(declare-fun res!1473234 () Bool)

(assert (=> b!3636307 (=> (not res!1473234) (not e!2250920))))

(assert (=> b!3636307 (= res!1473234 (= (head!7710 lt!1258124) (head!7710 lt!1258120)))))

(assert (= (and d!1069379 (not res!1473233)) b!3636306))

(assert (= (and b!3636306 res!1473236) b!3636307))

(assert (= (and b!3636307 res!1473234) b!3636308))

(assert (= (and d!1069379 (not res!1473235)) b!3636309))

(declare-fun m!4138723 () Bool)

(assert (=> b!3636309 m!4138723))

(assert (=> b!3636309 m!4138285))

(declare-fun m!4138725 () Bool)

(assert (=> b!3636308 m!4138725))

(declare-fun m!4138727 () Bool)

(assert (=> b!3636308 m!4138727))

(assert (=> b!3636308 m!4138725))

(assert (=> b!3636308 m!4138727))

(declare-fun m!4138729 () Bool)

(assert (=> b!3636308 m!4138729))

(declare-fun m!4138731 () Bool)

(assert (=> b!3636307 m!4138731))

(declare-fun m!4138733 () Bool)

(assert (=> b!3636307 m!4138733))

(assert (=> b!3635960 d!1069379))

(declare-fun b!3636322 () Bool)

(declare-fun e!2250930 () Bool)

(declare-fun e!2250931 () Bool)

(assert (=> b!3636322 (= e!2250930 e!2250931)))

(declare-fun res!1473242 () Bool)

(assert (=> b!3636322 (=> (not res!1473242) (not e!2250931))))

(declare-fun lt!1258310 () Option!8069)

(assert (=> b!3636322 (= res!1473242 (contains!7506 rules!3307 (get!12539 lt!1258310)))))

(declare-fun b!3636323 () Bool)

(declare-fun lt!1258312 () Unit!55142)

(declare-fun lt!1258311 () Unit!55142)

(assert (=> b!3636323 (= lt!1258312 lt!1258311)))

(assert (=> b!3636323 (rulesInvariant!4706 thiss!23823 (t!295864 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!563 (LexerInterface!5309 Rule!11240 List!38441) Unit!55142)

(assert (=> b!3636323 (= lt!1258311 (lemmaInvariantOnRulesThenOnTail!563 thiss!23823 (h!43737 rules!3307) (t!295864 rules!3307)))))

(declare-fun e!2250933 () Option!8069)

(assert (=> b!3636323 (= e!2250933 (getRuleFromTag!1324 thiss!23823 (t!295864 rules!3307) (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))))

(declare-fun b!3636324 () Bool)

(declare-fun e!2250932 () Option!8069)

(assert (=> b!3636324 (= e!2250932 (Some!8068 (h!43737 rules!3307)))))

(declare-fun b!3636325 () Bool)

(assert (=> b!3636325 (= e!2250933 None!8068)))

(declare-fun d!1069381 () Bool)

(assert (=> d!1069381 e!2250930))

(declare-fun res!1473241 () Bool)

(assert (=> d!1069381 (=> res!1473241 e!2250930)))

(assert (=> d!1069381 (= res!1473241 (isEmpty!22681 lt!1258310))))

(assert (=> d!1069381 (= lt!1258310 e!2250932)))

(declare-fun c!628901 () Bool)

(assert (=> d!1069381 (= c!628901 (and ((_ is Cons!38317) rules!3307) (= (tag!6460 (h!43737 rules!3307)) (tag!6460 (rule!8494 (_1!22224 lt!1258108))))))))

(assert (=> d!1069381 (rulesInvariant!4706 thiss!23823 rules!3307)))

(assert (=> d!1069381 (= (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 (_1!22224 lt!1258108)))) lt!1258310)))

(declare-fun b!3636326 () Bool)

(assert (=> b!3636326 (= e!2250931 (= (tag!6460 (get!12539 lt!1258310)) (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))))

(declare-fun b!3636327 () Bool)

(assert (=> b!3636327 (= e!2250932 e!2250933)))

(declare-fun c!628900 () Bool)

(assert (=> b!3636327 (= c!628900 (and ((_ is Cons!38317) rules!3307) (not (= (tag!6460 (h!43737 rules!3307)) (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))))))

(assert (= (and d!1069381 c!628901) b!3636324))

(assert (= (and d!1069381 (not c!628901)) b!3636327))

(assert (= (and b!3636327 c!628900) b!3636323))

(assert (= (and b!3636327 (not c!628900)) b!3636325))

(assert (= (and d!1069381 (not res!1473241)) b!3636322))

(assert (= (and b!3636322 res!1473242) b!3636326))

(declare-fun m!4138735 () Bool)

(assert (=> b!3636322 m!4138735))

(assert (=> b!3636322 m!4138735))

(declare-fun m!4138737 () Bool)

(assert (=> b!3636322 m!4138737))

(declare-fun m!4138739 () Bool)

(assert (=> b!3636323 m!4138739))

(declare-fun m!4138741 () Bool)

(assert (=> b!3636323 m!4138741))

(declare-fun m!4138743 () Bool)

(assert (=> b!3636323 m!4138743))

(declare-fun m!4138745 () Bool)

(assert (=> d!1069381 m!4138745))

(assert (=> d!1069381 m!4138209))

(assert (=> b!3636326 m!4138735))

(assert (=> b!3635960 d!1069381))

(declare-fun d!1069383 () Bool)

(declare-fun lt!1258315 () BalanceConc!23004)

(assert (=> d!1069383 (= (list!14174 lt!1258315) (originalCharacters!6434 (_1!22224 lt!1258108)))))

(assert (=> d!1069383 (= lt!1258315 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (value!183480 (_1!22224 lt!1258108))))))

(assert (=> d!1069383 (= (charsOf!3734 (_1!22224 lt!1258108)) lt!1258315)))

(declare-fun b_lambda!107729 () Bool)

(assert (=> (not b_lambda!107729) (not d!1069383)))

(declare-fun t!295890 () Bool)

(declare-fun tb!209205 () Bool)

(assert (=> (and b!3635962 (= (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295890) tb!209205))

(declare-fun b!3636328 () Bool)

(declare-fun e!2250934 () Bool)

(declare-fun tp!1109714 () Bool)

(assert (=> b!3636328 (= e!2250934 (and (inv!51748 (c!628825 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (value!183480 (_1!22224 lt!1258108))))) tp!1109714))))

(declare-fun result!254830 () Bool)

(assert (=> tb!209205 (= result!254830 (and (inv!51749 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (value!183480 (_1!22224 lt!1258108)))) e!2250934))))

(assert (= tb!209205 b!3636328))

(declare-fun m!4138747 () Bool)

(assert (=> b!3636328 m!4138747))

(declare-fun m!4138749 () Bool)

(assert (=> tb!209205 m!4138749))

(assert (=> d!1069383 t!295890))

(declare-fun b_and!267499 () Bool)

(assert (= b_and!267483 (and (=> t!295890 result!254830) b_and!267499)))

(declare-fun t!295892 () Bool)

(declare-fun tb!209207 () Bool)

(assert (=> (and b!3635950 (= (toChars!7871 (transformation!5720 (rule!8494 token!511))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295892) tb!209207))

(declare-fun result!254832 () Bool)

(assert (= result!254832 result!254830))

(assert (=> d!1069383 t!295892))

(declare-fun b_and!267501 () Bool)

(assert (= b_and!267485 (and (=> t!295892 result!254832) b_and!267501)))

(declare-fun t!295894 () Bool)

(declare-fun tb!209209 () Bool)

(assert (=> (and b!3635942 (= (toChars!7871 (transformation!5720 rule!403)) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295894) tb!209209))

(declare-fun result!254834 () Bool)

(assert (= result!254834 result!254830))

(assert (=> d!1069383 t!295894))

(declare-fun b_and!267503 () Bool)

(assert (= b_and!267487 (and (=> t!295894 result!254834) b_and!267503)))

(declare-fun tb!209211 () Bool)

(declare-fun t!295896 () Bool)

(assert (=> (and b!3635944 (= (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295896) tb!209211))

(declare-fun result!254836 () Bool)

(assert (= result!254836 result!254830))

(assert (=> d!1069383 t!295896))

(declare-fun b_and!267505 () Bool)

(assert (= b_and!267489 (and (=> t!295896 result!254836) b_and!267505)))

(declare-fun m!4138751 () Bool)

(assert (=> d!1069383 m!4138751))

(declare-fun m!4138753 () Bool)

(assert (=> d!1069383 m!4138753))

(assert (=> b!3635960 d!1069383))

(declare-fun b!3636347 () Bool)

(declare-fun e!2250943 () Option!8068)

(declare-fun call!262930 () Option!8068)

(assert (=> b!3636347 (= e!2250943 call!262930)))

(declare-fun b!3636348 () Bool)

(declare-fun res!1473257 () Bool)

(declare-fun e!2250941 () Bool)

(assert (=> b!3636348 (=> (not res!1473257) (not e!2250941))))

(declare-fun lt!1258327 () Option!8068)

(assert (=> b!3636348 (= res!1473257 (= (value!183480 (_1!22224 (get!12538 lt!1258327))) (apply!9222 (transformation!5720 (rule!8494 (_1!22224 (get!12538 lt!1258327)))) (seqFromList!4269 (originalCharacters!6434 (_1!22224 (get!12538 lt!1258327)))))))))

(declare-fun b!3636349 () Bool)

(declare-fun res!1473258 () Bool)

(assert (=> b!3636349 (=> (not res!1473258) (not e!2250941))))

(assert (=> b!3636349 (= res!1473258 (< (size!29241 (_2!22224 (get!12538 lt!1258327))) (size!29241 lt!1258105)))))

(declare-fun b!3636350 () Bool)

(declare-fun res!1473261 () Bool)

(assert (=> b!3636350 (=> (not res!1473261) (not e!2250941))))

(assert (=> b!3636350 (= res!1473261 (= (++!9536 (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258327)))) (_2!22224 (get!12538 lt!1258327))) lt!1258105))))

(declare-fun bm!262925 () Bool)

(assert (=> bm!262925 (= call!262930 (maxPrefixOneRule!1981 thiss!23823 (h!43737 rules!3307) lt!1258105))))

(declare-fun b!3636352 () Bool)

(assert (=> b!3636352 (= e!2250941 (contains!7506 rules!3307 (rule!8494 (_1!22224 (get!12538 lt!1258327)))))))

(declare-fun b!3636353 () Bool)

(declare-fun e!2250942 () Bool)

(assert (=> b!3636353 (= e!2250942 e!2250941)))

(declare-fun res!1473260 () Bool)

(assert (=> b!3636353 (=> (not res!1473260) (not e!2250941))))

(assert (=> b!3636353 (= res!1473260 (isDefined!6300 lt!1258327))))

(declare-fun b!3636351 () Bool)

(declare-fun res!1473262 () Bool)

(assert (=> b!3636351 (=> (not res!1473262) (not e!2250941))))

(assert (=> b!3636351 (= res!1473262 (matchR!5048 (regex!5720 (rule!8494 (_1!22224 (get!12538 lt!1258327)))) (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258327))))))))

(declare-fun d!1069385 () Bool)

(assert (=> d!1069385 e!2250942))

(declare-fun res!1473259 () Bool)

(assert (=> d!1069385 (=> res!1473259 e!2250942)))

(assert (=> d!1069385 (= res!1473259 (isEmpty!22680 lt!1258327))))

(assert (=> d!1069385 (= lt!1258327 e!2250943)))

(declare-fun c!628904 () Bool)

(assert (=> d!1069385 (= c!628904 (and ((_ is Cons!38317) rules!3307) ((_ is Nil!38317) (t!295864 rules!3307))))))

(declare-fun lt!1258326 () Unit!55142)

(declare-fun lt!1258330 () Unit!55142)

(assert (=> d!1069385 (= lt!1258326 lt!1258330)))

(assert (=> d!1069385 (isPrefix!3083 lt!1258105 lt!1258105)))

(declare-fun lemmaIsPrefixRefl!1954 (List!38440 List!38440) Unit!55142)

(assert (=> d!1069385 (= lt!1258330 (lemmaIsPrefixRefl!1954 lt!1258105 lt!1258105))))

(declare-fun rulesValidInductive!2019 (LexerInterface!5309 List!38441) Bool)

(assert (=> d!1069385 (rulesValidInductive!2019 thiss!23823 rules!3307)))

(assert (=> d!1069385 (= (maxPrefix!2843 thiss!23823 rules!3307 lt!1258105) lt!1258327)))

(declare-fun b!3636354 () Bool)

(declare-fun res!1473263 () Bool)

(assert (=> b!3636354 (=> (not res!1473263) (not e!2250941))))

(assert (=> b!3636354 (= res!1473263 (= (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258327)))) (originalCharacters!6434 (_1!22224 (get!12538 lt!1258327)))))))

(declare-fun b!3636355 () Bool)

(declare-fun lt!1258329 () Option!8068)

(declare-fun lt!1258328 () Option!8068)

(assert (=> b!3636355 (= e!2250943 (ite (and ((_ is None!8067) lt!1258329) ((_ is None!8067) lt!1258328)) None!8067 (ite ((_ is None!8067) lt!1258328) lt!1258329 (ite ((_ is None!8067) lt!1258329) lt!1258328 (ite (>= (size!29239 (_1!22224 (v!37879 lt!1258329))) (size!29239 (_1!22224 (v!37879 lt!1258328)))) lt!1258329 lt!1258328)))))))

(assert (=> b!3636355 (= lt!1258329 call!262930)))

(assert (=> b!3636355 (= lt!1258328 (maxPrefix!2843 thiss!23823 (t!295864 rules!3307) lt!1258105))))

(assert (= (and d!1069385 c!628904) b!3636347))

(assert (= (and d!1069385 (not c!628904)) b!3636355))

(assert (= (or b!3636347 b!3636355) bm!262925))

(assert (= (and d!1069385 (not res!1473259)) b!3636353))

(assert (= (and b!3636353 res!1473260) b!3636354))

(assert (= (and b!3636354 res!1473263) b!3636349))

(assert (= (and b!3636349 res!1473258) b!3636350))

(assert (= (and b!3636350 res!1473261) b!3636348))

(assert (= (and b!3636348 res!1473257) b!3636351))

(assert (= (and b!3636351 res!1473262) b!3636352))

(declare-fun m!4138755 () Bool)

(assert (=> b!3636350 m!4138755))

(declare-fun m!4138757 () Bool)

(assert (=> b!3636350 m!4138757))

(assert (=> b!3636350 m!4138757))

(declare-fun m!4138759 () Bool)

(assert (=> b!3636350 m!4138759))

(assert (=> b!3636350 m!4138759))

(declare-fun m!4138761 () Bool)

(assert (=> b!3636350 m!4138761))

(declare-fun m!4138763 () Bool)

(assert (=> b!3636355 m!4138763))

(assert (=> b!3636351 m!4138755))

(assert (=> b!3636351 m!4138757))

(assert (=> b!3636351 m!4138757))

(assert (=> b!3636351 m!4138759))

(assert (=> b!3636351 m!4138759))

(declare-fun m!4138765 () Bool)

(assert (=> b!3636351 m!4138765))

(declare-fun m!4138767 () Bool)

(assert (=> bm!262925 m!4138767))

(declare-fun m!4138769 () Bool)

(assert (=> d!1069385 m!4138769))

(declare-fun m!4138771 () Bool)

(assert (=> d!1069385 m!4138771))

(declare-fun m!4138773 () Bool)

(assert (=> d!1069385 m!4138773))

(declare-fun m!4138775 () Bool)

(assert (=> d!1069385 m!4138775))

(assert (=> b!3636352 m!4138755))

(declare-fun m!4138777 () Bool)

(assert (=> b!3636352 m!4138777))

(assert (=> b!3636348 m!4138755))

(declare-fun m!4138779 () Bool)

(assert (=> b!3636348 m!4138779))

(assert (=> b!3636348 m!4138779))

(declare-fun m!4138781 () Bool)

(assert (=> b!3636348 m!4138781))

(assert (=> b!3636349 m!4138755))

(declare-fun m!4138783 () Bool)

(assert (=> b!3636349 m!4138783))

(assert (=> b!3636349 m!4138705))

(declare-fun m!4138785 () Bool)

(assert (=> b!3636353 m!4138785))

(assert (=> b!3636354 m!4138755))

(assert (=> b!3636354 m!4138757))

(assert (=> b!3636354 m!4138757))

(assert (=> b!3636354 m!4138759))

(assert (=> b!3635960 d!1069385))

(declare-fun d!1069387 () Bool)

(declare-fun list!14178 (Conc!11695) List!38440)

(assert (=> d!1069387 (= (list!14174 lt!1258126) (list!14178 (c!628825 lt!1258126)))))

(declare-fun bs!571808 () Bool)

(assert (= bs!571808 d!1069387))

(declare-fun m!4138787 () Bool)

(assert (=> bs!571808 m!4138787))

(assert (=> b!3635960 d!1069387))

(declare-fun d!1069389 () Bool)

(assert (=> d!1069389 (= (get!12538 lt!1258121) (v!37879 lt!1258121))))

(assert (=> b!3635960 d!1069389))

(declare-fun d!1069391 () Bool)

(declare-fun e!2250946 () Bool)

(assert (=> d!1069391 e!2250946))

(declare-fun res!1473268 () Bool)

(assert (=> d!1069391 (=> (not res!1473268) (not e!2250946))))

(assert (=> d!1069391 (= res!1473268 (isDefined!6301 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 (_1!22224 lt!1258108))))))))

(declare-fun lt!1258333 () Unit!55142)

(declare-fun choose!21362 (LexerInterface!5309 List!38441 List!38440 Token!10806) Unit!55142)

(assert (=> d!1069391 (= lt!1258333 (choose!21362 thiss!23823 rules!3307 lt!1258105 (_1!22224 lt!1258108)))))

(assert (=> d!1069391 (rulesInvariant!4706 thiss!23823 rules!3307)))

(assert (=> d!1069391 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1324 thiss!23823 rules!3307 lt!1258105 (_1!22224 lt!1258108)) lt!1258333)))

(declare-fun b!3636360 () Bool)

(declare-fun res!1473269 () Bool)

(assert (=> b!3636360 (=> (not res!1473269) (not e!2250946))))

(assert (=> b!3636360 (= res!1473269 (matchR!5048 (regex!5720 (get!12539 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))) (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))))))

(declare-fun b!3636361 () Bool)

(assert (=> b!3636361 (= e!2250946 (= (rule!8494 (_1!22224 lt!1258108)) (get!12539 (getRuleFromTag!1324 thiss!23823 rules!3307 (tag!6460 (rule!8494 (_1!22224 lt!1258108)))))))))

(assert (= (and d!1069391 res!1473268) b!3636360))

(assert (= (and b!3636360 res!1473269) b!3636361))

(assert (=> d!1069391 m!4138313))

(assert (=> d!1069391 m!4138313))

(declare-fun m!4138789 () Bool)

(assert (=> d!1069391 m!4138789))

(declare-fun m!4138791 () Bool)

(assert (=> d!1069391 m!4138791))

(assert (=> d!1069391 m!4138209))

(assert (=> b!3636360 m!4138249))

(assert (=> b!3636360 m!4138313))

(declare-fun m!4138793 () Bool)

(assert (=> b!3636360 m!4138793))

(assert (=> b!3636360 m!4138313))

(assert (=> b!3636360 m!4138251))

(declare-fun m!4138795 () Bool)

(assert (=> b!3636360 m!4138795))

(assert (=> b!3636360 m!4138249))

(assert (=> b!3636360 m!4138251))

(assert (=> b!3636361 m!4138313))

(assert (=> b!3636361 m!4138313))

(assert (=> b!3636361 m!4138793))

(assert (=> b!3635960 d!1069391))

(declare-fun d!1069393 () Bool)

(declare-fun e!2250947 () Bool)

(assert (=> d!1069393 e!2250947))

(declare-fun res!1473271 () Bool)

(assert (=> d!1069393 (=> (not res!1473271) (not e!2250947))))

(declare-fun lt!1258334 () List!38440)

(assert (=> d!1069393 (= res!1473271 (= (content!5506 lt!1258334) ((_ map or) (content!5506 lt!1258118) (content!5506 suffix!1395))))))

(declare-fun e!2250948 () List!38440)

(assert (=> d!1069393 (= lt!1258334 e!2250948)))

(declare-fun c!628905 () Bool)

(assert (=> d!1069393 (= c!628905 ((_ is Nil!38316) lt!1258118))))

(assert (=> d!1069393 (= (++!9536 lt!1258118 suffix!1395) lt!1258334)))

(declare-fun b!3636363 () Bool)

(assert (=> b!3636363 (= e!2250948 (Cons!38316 (h!43736 lt!1258118) (++!9536 (t!295863 lt!1258118) suffix!1395)))))

(declare-fun b!3636362 () Bool)

(assert (=> b!3636362 (= e!2250948 suffix!1395)))

(declare-fun b!3636365 () Bool)

(assert (=> b!3636365 (= e!2250947 (or (not (= suffix!1395 Nil!38316)) (= lt!1258334 lt!1258118)))))

(declare-fun b!3636364 () Bool)

(declare-fun res!1473270 () Bool)

(assert (=> b!3636364 (=> (not res!1473270) (not e!2250947))))

(assert (=> b!3636364 (= res!1473270 (= (size!29241 lt!1258334) (+ (size!29241 lt!1258118) (size!29241 suffix!1395))))))

(assert (= (and d!1069393 c!628905) b!3636362))

(assert (= (and d!1069393 (not c!628905)) b!3636363))

(assert (= (and d!1069393 res!1473271) b!3636364))

(assert (= (and b!3636364 res!1473270) b!3636365))

(declare-fun m!4138797 () Bool)

(assert (=> d!1069393 m!4138797))

(declare-fun m!4138799 () Bool)

(assert (=> d!1069393 m!4138799))

(declare-fun m!4138801 () Bool)

(assert (=> d!1069393 m!4138801))

(declare-fun m!4138803 () Bool)

(assert (=> b!3636363 m!4138803))

(declare-fun m!4138805 () Bool)

(assert (=> b!3636364 m!4138805))

(assert (=> b!3636364 m!4138707))

(declare-fun m!4138807 () Bool)

(assert (=> b!3636364 m!4138807))

(assert (=> b!3635960 d!1069393))

(declare-fun b!3636369 () Bool)

(declare-fun e!2250951 () Bool)

(assert (=> b!3636369 (= e!2250951 (>= (size!29241 lt!1258105) (size!29241 lt!1258124)))))

(declare-fun b!3636366 () Bool)

(declare-fun e!2250949 () Bool)

(declare-fun e!2250950 () Bool)

(assert (=> b!3636366 (= e!2250949 e!2250950)))

(declare-fun res!1473275 () Bool)

(assert (=> b!3636366 (=> (not res!1473275) (not e!2250950))))

(assert (=> b!3636366 (= res!1473275 (not ((_ is Nil!38316) lt!1258105)))))

(declare-fun b!3636368 () Bool)

(assert (=> b!3636368 (= e!2250950 (isPrefix!3083 (tail!5631 lt!1258124) (tail!5631 lt!1258105)))))

(declare-fun d!1069395 () Bool)

(assert (=> d!1069395 e!2250951))

(declare-fun res!1473274 () Bool)

(assert (=> d!1069395 (=> res!1473274 e!2250951)))

(declare-fun lt!1258335 () Bool)

(assert (=> d!1069395 (= res!1473274 (not lt!1258335))))

(assert (=> d!1069395 (= lt!1258335 e!2250949)))

(declare-fun res!1473272 () Bool)

(assert (=> d!1069395 (=> res!1473272 e!2250949)))

(assert (=> d!1069395 (= res!1473272 ((_ is Nil!38316) lt!1258124))))

(assert (=> d!1069395 (= (isPrefix!3083 lt!1258124 lt!1258105) lt!1258335)))

(declare-fun b!3636367 () Bool)

(declare-fun res!1473273 () Bool)

(assert (=> b!3636367 (=> (not res!1473273) (not e!2250950))))

(assert (=> b!3636367 (= res!1473273 (= (head!7710 lt!1258124) (head!7710 lt!1258105)))))

(assert (= (and d!1069395 (not res!1473272)) b!3636366))

(assert (= (and b!3636366 res!1473275) b!3636367))

(assert (= (and b!3636367 res!1473273) b!3636368))

(assert (= (and d!1069395 (not res!1473274)) b!3636369))

(assert (=> b!3636369 m!4138705))

(assert (=> b!3636369 m!4138285))

(assert (=> b!3636368 m!4138725))

(assert (=> b!3636368 m!4138711))

(assert (=> b!3636368 m!4138725))

(assert (=> b!3636368 m!4138711))

(declare-fun m!4138809 () Bool)

(assert (=> b!3636368 m!4138809))

(assert (=> b!3636367 m!4138731))

(assert (=> b!3636367 m!4138717))

(assert (=> b!3635960 d!1069395))

(declare-fun d!1069397 () Bool)

(assert (=> d!1069397 (= (get!12538 lt!1258106) (v!37879 lt!1258106))))

(assert (=> b!3635938 d!1069397))

(declare-fun b!3636399 () Bool)

(declare-fun e!2250967 () Bool)

(declare-fun lt!1258338 () Bool)

(assert (=> b!3636399 (= e!2250967 (not lt!1258338))))

(declare-fun b!3636400 () Bool)

(declare-fun e!2250971 () Bool)

(declare-fun call!262933 () Bool)

(assert (=> b!3636400 (= e!2250971 (= lt!1258338 call!262933))))

(declare-fun bm!262928 () Bool)

(assert (=> bm!262928 (= call!262933 (isEmpty!22676 lt!1258124))))

(declare-fun b!3636401 () Bool)

(declare-fun e!2250969 () Bool)

(assert (=> b!3636401 (= e!2250969 (= (head!7710 lt!1258124) (c!628824 (regex!5720 (rule!8494 (_1!22224 lt!1258108))))))))

(declare-fun b!3636402 () Bool)

(declare-fun res!1473293 () Bool)

(assert (=> b!3636402 (=> (not res!1473293) (not e!2250969))))

(assert (=> b!3636402 (= res!1473293 (isEmpty!22676 (tail!5631 lt!1258124)))))

(declare-fun b!3636403 () Bool)

(declare-fun res!1473299 () Bool)

(declare-fun e!2250972 () Bool)

(assert (=> b!3636403 (=> res!1473299 e!2250972)))

(assert (=> b!3636403 (= res!1473299 (not ((_ is ElementMatch!10479) (regex!5720 (rule!8494 (_1!22224 lt!1258108))))))))

(assert (=> b!3636403 (= e!2250967 e!2250972)))

(declare-fun b!3636404 () Bool)

(assert (=> b!3636404 (= e!2250971 e!2250967)))

(declare-fun c!628914 () Bool)

(assert (=> b!3636404 (= c!628914 ((_ is EmptyLang!10479) (regex!5720 (rule!8494 (_1!22224 lt!1258108)))))))

(declare-fun b!3636405 () Bool)

(declare-fun e!2250966 () Bool)

(assert (=> b!3636405 (= e!2250972 e!2250966)))

(declare-fun res!1473295 () Bool)

(assert (=> b!3636405 (=> (not res!1473295) (not e!2250966))))

(assert (=> b!3636405 (= res!1473295 (not lt!1258338))))

(declare-fun b!3636406 () Bool)

(declare-fun e!2250970 () Bool)

(declare-fun nullable!3633 (Regex!10479) Bool)

(assert (=> b!3636406 (= e!2250970 (nullable!3633 (regex!5720 (rule!8494 (_1!22224 lt!1258108)))))))

(declare-fun b!3636407 () Bool)

(declare-fun res!1473297 () Bool)

(assert (=> b!3636407 (=> (not res!1473297) (not e!2250969))))

(assert (=> b!3636407 (= res!1473297 (not call!262933))))

(declare-fun b!3636398 () Bool)

(declare-fun res!1473292 () Bool)

(declare-fun e!2250968 () Bool)

(assert (=> b!3636398 (=> res!1473292 e!2250968)))

(assert (=> b!3636398 (= res!1473292 (not (isEmpty!22676 (tail!5631 lt!1258124))))))

(declare-fun d!1069399 () Bool)

(assert (=> d!1069399 e!2250971))

(declare-fun c!628912 () Bool)

(assert (=> d!1069399 (= c!628912 ((_ is EmptyExpr!10479) (regex!5720 (rule!8494 (_1!22224 lt!1258108)))))))

(assert (=> d!1069399 (= lt!1258338 e!2250970)))

(declare-fun c!628913 () Bool)

(assert (=> d!1069399 (= c!628913 (isEmpty!22676 lt!1258124))))

(declare-fun validRegex!4795 (Regex!10479) Bool)

(assert (=> d!1069399 (validRegex!4795 (regex!5720 (rule!8494 (_1!22224 lt!1258108))))))

(assert (=> d!1069399 (= (matchR!5048 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258124) lt!1258338)))

(declare-fun b!3636408 () Bool)

(declare-fun derivativeStep!3182 (Regex!10479 C!21144) Regex!10479)

(assert (=> b!3636408 (= e!2250970 (matchR!5048 (derivativeStep!3182 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) (head!7710 lt!1258124)) (tail!5631 lt!1258124)))))

(declare-fun b!3636409 () Bool)

(assert (=> b!3636409 (= e!2250966 e!2250968)))

(declare-fun res!1473296 () Bool)

(assert (=> b!3636409 (=> res!1473296 e!2250968)))

(assert (=> b!3636409 (= res!1473296 call!262933)))

(declare-fun b!3636410 () Bool)

(assert (=> b!3636410 (= e!2250968 (not (= (head!7710 lt!1258124) (c!628824 (regex!5720 (rule!8494 (_1!22224 lt!1258108)))))))))

(declare-fun b!3636411 () Bool)

(declare-fun res!1473298 () Bool)

(assert (=> b!3636411 (=> res!1473298 e!2250972)))

(assert (=> b!3636411 (= res!1473298 e!2250969)))

(declare-fun res!1473294 () Bool)

(assert (=> b!3636411 (=> (not res!1473294) (not e!2250969))))

(assert (=> b!3636411 (= res!1473294 lt!1258338)))

(assert (= (and d!1069399 c!628913) b!3636406))

(assert (= (and d!1069399 (not c!628913)) b!3636408))

(assert (= (and d!1069399 c!628912) b!3636400))

(assert (= (and d!1069399 (not c!628912)) b!3636404))

(assert (= (and b!3636404 c!628914) b!3636399))

(assert (= (and b!3636404 (not c!628914)) b!3636403))

(assert (= (and b!3636403 (not res!1473299)) b!3636411))

(assert (= (and b!3636411 res!1473294) b!3636407))

(assert (= (and b!3636407 res!1473297) b!3636402))

(assert (= (and b!3636402 res!1473293) b!3636401))

(assert (= (and b!3636411 (not res!1473298)) b!3636405))

(assert (= (and b!3636405 res!1473295) b!3636409))

(assert (= (and b!3636409 (not res!1473296)) b!3636398))

(assert (= (and b!3636398 (not res!1473292)) b!3636410))

(assert (= (or b!3636400 b!3636409 b!3636407) bm!262928))

(assert (=> b!3636398 m!4138725))

(assert (=> b!3636398 m!4138725))

(declare-fun m!4138811 () Bool)

(assert (=> b!3636398 m!4138811))

(declare-fun m!4138813 () Bool)

(assert (=> d!1069399 m!4138813))

(declare-fun m!4138815 () Bool)

(assert (=> d!1069399 m!4138815))

(assert (=> bm!262928 m!4138813))

(assert (=> b!3636410 m!4138731))

(assert (=> b!3636402 m!4138725))

(assert (=> b!3636402 m!4138725))

(assert (=> b!3636402 m!4138811))

(declare-fun m!4138817 () Bool)

(assert (=> b!3636406 m!4138817))

(assert (=> b!3636401 m!4138731))

(assert (=> b!3636408 m!4138731))

(assert (=> b!3636408 m!4138731))

(declare-fun m!4138819 () Bool)

(assert (=> b!3636408 m!4138819))

(assert (=> b!3636408 m!4138725))

(assert (=> b!3636408 m!4138819))

(assert (=> b!3636408 m!4138725))

(declare-fun m!4138821 () Bool)

(assert (=> b!3636408 m!4138821))

(assert (=> b!3635940 d!1069399))

(declare-fun b!3636413 () Bool)

(declare-fun e!2250974 () Bool)

(declare-fun lt!1258339 () Bool)

(assert (=> b!3636413 (= e!2250974 (not lt!1258339))))

(declare-fun b!3636414 () Bool)

(declare-fun e!2250978 () Bool)

(declare-fun call!262934 () Bool)

(assert (=> b!3636414 (= e!2250978 (= lt!1258339 call!262934))))

(declare-fun bm!262929 () Bool)

(assert (=> bm!262929 (= call!262934 (isEmpty!22676 (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))))))

(declare-fun b!3636415 () Bool)

(declare-fun e!2250976 () Bool)

(assert (=> b!3636415 (= e!2250976 (= (head!7710 (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))) (c!628824 (regex!5720 lt!1258119))))))

(declare-fun b!3636416 () Bool)

(declare-fun res!1473301 () Bool)

(assert (=> b!3636416 (=> (not res!1473301) (not e!2250976))))

(assert (=> b!3636416 (= res!1473301 (isEmpty!22676 (tail!5631 (list!14174 (charsOf!3734 (_1!22224 lt!1258108))))))))

(declare-fun b!3636417 () Bool)

(declare-fun res!1473307 () Bool)

(declare-fun e!2250979 () Bool)

(assert (=> b!3636417 (=> res!1473307 e!2250979)))

(assert (=> b!3636417 (= res!1473307 (not ((_ is ElementMatch!10479) (regex!5720 lt!1258119))))))

(assert (=> b!3636417 (= e!2250974 e!2250979)))

(declare-fun b!3636418 () Bool)

(assert (=> b!3636418 (= e!2250978 e!2250974)))

(declare-fun c!628917 () Bool)

(assert (=> b!3636418 (= c!628917 ((_ is EmptyLang!10479) (regex!5720 lt!1258119)))))

(declare-fun b!3636419 () Bool)

(declare-fun e!2250973 () Bool)

(assert (=> b!3636419 (= e!2250979 e!2250973)))

(declare-fun res!1473303 () Bool)

(assert (=> b!3636419 (=> (not res!1473303) (not e!2250973))))

(assert (=> b!3636419 (= res!1473303 (not lt!1258339))))

(declare-fun b!3636420 () Bool)

(declare-fun e!2250977 () Bool)

(assert (=> b!3636420 (= e!2250977 (nullable!3633 (regex!5720 lt!1258119)))))

(declare-fun b!3636421 () Bool)

(declare-fun res!1473305 () Bool)

(assert (=> b!3636421 (=> (not res!1473305) (not e!2250976))))

(assert (=> b!3636421 (= res!1473305 (not call!262934))))

(declare-fun b!3636412 () Bool)

(declare-fun res!1473300 () Bool)

(declare-fun e!2250975 () Bool)

(assert (=> b!3636412 (=> res!1473300 e!2250975)))

(assert (=> b!3636412 (= res!1473300 (not (isEmpty!22676 (tail!5631 (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))))))))

(declare-fun d!1069401 () Bool)

(assert (=> d!1069401 e!2250978))

(declare-fun c!628915 () Bool)

(assert (=> d!1069401 (= c!628915 ((_ is EmptyExpr!10479) (regex!5720 lt!1258119)))))

(assert (=> d!1069401 (= lt!1258339 e!2250977)))

(declare-fun c!628916 () Bool)

(assert (=> d!1069401 (= c!628916 (isEmpty!22676 (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))))))

(assert (=> d!1069401 (validRegex!4795 (regex!5720 lt!1258119))))

(assert (=> d!1069401 (= (matchR!5048 (regex!5720 lt!1258119) (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))) lt!1258339)))

(declare-fun b!3636422 () Bool)

(assert (=> b!3636422 (= e!2250977 (matchR!5048 (derivativeStep!3182 (regex!5720 lt!1258119) (head!7710 (list!14174 (charsOf!3734 (_1!22224 lt!1258108))))) (tail!5631 (list!14174 (charsOf!3734 (_1!22224 lt!1258108))))))))

(declare-fun b!3636423 () Bool)

(assert (=> b!3636423 (= e!2250973 e!2250975)))

(declare-fun res!1473304 () Bool)

(assert (=> b!3636423 (=> res!1473304 e!2250975)))

(assert (=> b!3636423 (= res!1473304 call!262934)))

(declare-fun b!3636424 () Bool)

(assert (=> b!3636424 (= e!2250975 (not (= (head!7710 (list!14174 (charsOf!3734 (_1!22224 lt!1258108)))) (c!628824 (regex!5720 lt!1258119)))))))

(declare-fun b!3636425 () Bool)

(declare-fun res!1473306 () Bool)

(assert (=> b!3636425 (=> res!1473306 e!2250979)))

(assert (=> b!3636425 (= res!1473306 e!2250976)))

(declare-fun res!1473302 () Bool)

(assert (=> b!3636425 (=> (not res!1473302) (not e!2250976))))

(assert (=> b!3636425 (= res!1473302 lt!1258339)))

(assert (= (and d!1069401 c!628916) b!3636420))

(assert (= (and d!1069401 (not c!628916)) b!3636422))

(assert (= (and d!1069401 c!628915) b!3636414))

(assert (= (and d!1069401 (not c!628915)) b!3636418))

(assert (= (and b!3636418 c!628917) b!3636413))

(assert (= (and b!3636418 (not c!628917)) b!3636417))

(assert (= (and b!3636417 (not res!1473307)) b!3636425))

(assert (= (and b!3636425 res!1473302) b!3636421))

(assert (= (and b!3636421 res!1473305) b!3636416))

(assert (= (and b!3636416 res!1473301) b!3636415))

(assert (= (and b!3636425 (not res!1473306)) b!3636419))

(assert (= (and b!3636419 res!1473303) b!3636423))

(assert (= (and b!3636423 (not res!1473304)) b!3636412))

(assert (= (and b!3636412 (not res!1473300)) b!3636424))

(assert (= (or b!3636414 b!3636423 b!3636421) bm!262929))

(assert (=> b!3636412 m!4138251))

(declare-fun m!4138823 () Bool)

(assert (=> b!3636412 m!4138823))

(assert (=> b!3636412 m!4138823))

(declare-fun m!4138825 () Bool)

(assert (=> b!3636412 m!4138825))

(assert (=> d!1069401 m!4138251))

(declare-fun m!4138827 () Bool)

(assert (=> d!1069401 m!4138827))

(declare-fun m!4138829 () Bool)

(assert (=> d!1069401 m!4138829))

(assert (=> bm!262929 m!4138251))

(assert (=> bm!262929 m!4138827))

(assert (=> b!3636424 m!4138251))

(declare-fun m!4138831 () Bool)

(assert (=> b!3636424 m!4138831))

(assert (=> b!3636416 m!4138251))

(assert (=> b!3636416 m!4138823))

(assert (=> b!3636416 m!4138823))

(assert (=> b!3636416 m!4138825))

(declare-fun m!4138833 () Bool)

(assert (=> b!3636420 m!4138833))

(assert (=> b!3636415 m!4138251))

(assert (=> b!3636415 m!4138831))

(assert (=> b!3636422 m!4138251))

(assert (=> b!3636422 m!4138831))

(assert (=> b!3636422 m!4138831))

(declare-fun m!4138835 () Bool)

(assert (=> b!3636422 m!4138835))

(assert (=> b!3636422 m!4138251))

(assert (=> b!3636422 m!4138823))

(assert (=> b!3636422 m!4138835))

(assert (=> b!3636422 m!4138823))

(declare-fun m!4138837 () Bool)

(assert (=> b!3636422 m!4138837))

(assert (=> b!3635961 d!1069401))

(declare-fun d!1069403 () Bool)

(assert (=> d!1069403 (= (list!14174 (charsOf!3734 (_1!22224 lt!1258108))) (list!14178 (c!628825 (charsOf!3734 (_1!22224 lt!1258108)))))))

(declare-fun bs!571809 () Bool)

(assert (= bs!571809 d!1069403))

(declare-fun m!4138839 () Bool)

(assert (=> bs!571809 m!4138839))

(assert (=> b!3635961 d!1069403))

(assert (=> b!3635961 d!1069383))

(declare-fun d!1069405 () Bool)

(assert (=> d!1069405 (= (get!12539 lt!1258110) (v!37880 lt!1258110))))

(assert (=> b!3635961 d!1069405))

(declare-fun d!1069407 () Bool)

(declare-fun lt!1258340 () Bool)

(assert (=> d!1069407 (= lt!1258340 (select (content!5506 (usedCharacters!932 (regex!5720 anOtherTypeRule!33))) lt!1258113))))

(declare-fun e!2250981 () Bool)

(assert (=> d!1069407 (= lt!1258340 e!2250981)))

(declare-fun res!1473308 () Bool)

(assert (=> d!1069407 (=> (not res!1473308) (not e!2250981))))

(assert (=> d!1069407 (= res!1473308 ((_ is Cons!38316) (usedCharacters!932 (regex!5720 anOtherTypeRule!33))))))

(assert (=> d!1069407 (= (contains!7505 (usedCharacters!932 (regex!5720 anOtherTypeRule!33)) lt!1258113) lt!1258340)))

(declare-fun b!3636426 () Bool)

(declare-fun e!2250980 () Bool)

(assert (=> b!3636426 (= e!2250981 e!2250980)))

(declare-fun res!1473309 () Bool)

(assert (=> b!3636426 (=> res!1473309 e!2250980)))

(assert (=> b!3636426 (= res!1473309 (= (h!43736 (usedCharacters!932 (regex!5720 anOtherTypeRule!33))) lt!1258113))))

(declare-fun b!3636427 () Bool)

(assert (=> b!3636427 (= e!2250980 (contains!7505 (t!295863 (usedCharacters!932 (regex!5720 anOtherTypeRule!33))) lt!1258113))))

(assert (= (and d!1069407 res!1473308) b!3636426))

(assert (= (and b!3636426 (not res!1473309)) b!3636427))

(assert (=> d!1069407 m!4138223))

(declare-fun m!4138841 () Bool)

(assert (=> d!1069407 m!4138841))

(declare-fun m!4138843 () Bool)

(assert (=> d!1069407 m!4138843))

(declare-fun m!4138845 () Bool)

(assert (=> b!3636427 m!4138845))

(assert (=> b!3635939 d!1069407))

(declare-fun b!3636428 () Bool)

(declare-fun e!2250983 () List!38440)

(declare-fun call!262938 () List!38440)

(assert (=> b!3636428 (= e!2250983 call!262938)))

(declare-fun bm!262930 () Bool)

(declare-fun call!262935 () List!38440)

(declare-fun c!628918 () Bool)

(assert (=> bm!262930 (= call!262935 (usedCharacters!932 (ite c!628918 (regTwo!21471 (regex!5720 anOtherTypeRule!33)) (regOne!21470 (regex!5720 anOtherTypeRule!33)))))))

(declare-fun b!3636429 () Bool)

(declare-fun e!2250985 () List!38440)

(declare-fun call!262937 () List!38440)

(assert (=> b!3636429 (= e!2250985 call!262937)))

(declare-fun b!3636430 () Bool)

(assert (=> b!3636430 (= e!2250985 call!262937)))

(declare-fun b!3636431 () Bool)

(declare-fun e!2250982 () List!38440)

(declare-fun e!2250984 () List!38440)

(assert (=> b!3636431 (= e!2250982 e!2250984)))

(declare-fun c!628921 () Bool)

(assert (=> b!3636431 (= c!628921 ((_ is ElementMatch!10479) (regex!5720 anOtherTypeRule!33)))))

(declare-fun bm!262931 () Bool)

(declare-fun c!628919 () Bool)

(assert (=> bm!262931 (= call!262938 (usedCharacters!932 (ite c!628919 (reg!10808 (regex!5720 anOtherTypeRule!33)) (ite c!628918 (regOne!21471 (regex!5720 anOtherTypeRule!33)) (regTwo!21470 (regex!5720 anOtherTypeRule!33))))))))

(declare-fun d!1069409 () Bool)

(declare-fun c!628920 () Bool)

(assert (=> d!1069409 (= c!628920 (or ((_ is EmptyExpr!10479) (regex!5720 anOtherTypeRule!33)) ((_ is EmptyLang!10479) (regex!5720 anOtherTypeRule!33))))))

(assert (=> d!1069409 (= (usedCharacters!932 (regex!5720 anOtherTypeRule!33)) e!2250982)))

(declare-fun b!3636432 () Bool)

(assert (=> b!3636432 (= c!628919 ((_ is Star!10479) (regex!5720 anOtherTypeRule!33)))))

(assert (=> b!3636432 (= e!2250984 e!2250983)))

(declare-fun b!3636433 () Bool)

(assert (=> b!3636433 (= e!2250984 (Cons!38316 (c!628824 (regex!5720 anOtherTypeRule!33)) Nil!38316))))

(declare-fun bm!262932 () Bool)

(declare-fun call!262936 () List!38440)

(assert (=> bm!262932 (= call!262936 call!262938)))

(declare-fun b!3636434 () Bool)

(assert (=> b!3636434 (= e!2250982 Nil!38316)))

(declare-fun bm!262933 () Bool)

(assert (=> bm!262933 (= call!262937 (++!9536 (ite c!628918 call!262936 call!262935) (ite c!628918 call!262935 call!262936)))))

(declare-fun b!3636435 () Bool)

(assert (=> b!3636435 (= e!2250983 e!2250985)))

(assert (=> b!3636435 (= c!628918 ((_ is Union!10479) (regex!5720 anOtherTypeRule!33)))))

(assert (= (and d!1069409 c!628920) b!3636434))

(assert (= (and d!1069409 (not c!628920)) b!3636431))

(assert (= (and b!3636431 c!628921) b!3636433))

(assert (= (and b!3636431 (not c!628921)) b!3636432))

(assert (= (and b!3636432 c!628919) b!3636428))

(assert (= (and b!3636432 (not c!628919)) b!3636435))

(assert (= (and b!3636435 c!628918) b!3636429))

(assert (= (and b!3636435 (not c!628918)) b!3636430))

(assert (= (or b!3636429 b!3636430) bm!262932))

(assert (= (or b!3636429 b!3636430) bm!262930))

(assert (= (or b!3636429 b!3636430) bm!262933))

(assert (= (or b!3636428 bm!262932) bm!262931))

(declare-fun m!4138847 () Bool)

(assert (=> bm!262930 m!4138847))

(declare-fun m!4138849 () Bool)

(assert (=> bm!262931 m!4138849))

(declare-fun m!4138851 () Bool)

(assert (=> bm!262933 m!4138851))

(assert (=> b!3635939 d!1069409))

(declare-fun d!1069411 () Bool)

(assert (=> d!1069411 (= (isEmpty!22676 suffix!1395) ((_ is Nil!38316) suffix!1395))))

(assert (=> b!3635941 d!1069411))

(declare-fun d!1069413 () Bool)

(assert (=> d!1069413 (= (isEmpty!22676 (_2!22224 lt!1258115)) ((_ is Nil!38316) (_2!22224 lt!1258115)))))

(assert (=> b!3635964 d!1069413))

(declare-fun b!3636437 () Bool)

(declare-fun e!2250987 () Bool)

(declare-fun lt!1258341 () Bool)

(assert (=> b!3636437 (= e!2250987 (not lt!1258341))))

(declare-fun b!3636438 () Bool)

(declare-fun e!2250991 () Bool)

(declare-fun call!262939 () Bool)

(assert (=> b!3636438 (= e!2250991 (= lt!1258341 call!262939))))

(declare-fun bm!262934 () Bool)

(assert (=> bm!262934 (= call!262939 (isEmpty!22676 lt!1258118))))

(declare-fun b!3636439 () Bool)

(declare-fun e!2250989 () Bool)

(assert (=> b!3636439 (= e!2250989 (= (head!7710 lt!1258118) (c!628824 (regex!5720 rule!403))))))

(declare-fun b!3636440 () Bool)

(declare-fun res!1473311 () Bool)

(assert (=> b!3636440 (=> (not res!1473311) (not e!2250989))))

(assert (=> b!3636440 (= res!1473311 (isEmpty!22676 (tail!5631 lt!1258118)))))

(declare-fun b!3636441 () Bool)

(declare-fun res!1473317 () Bool)

(declare-fun e!2250992 () Bool)

(assert (=> b!3636441 (=> res!1473317 e!2250992)))

(assert (=> b!3636441 (= res!1473317 (not ((_ is ElementMatch!10479) (regex!5720 rule!403))))))

(assert (=> b!3636441 (= e!2250987 e!2250992)))

(declare-fun b!3636442 () Bool)

(assert (=> b!3636442 (= e!2250991 e!2250987)))

(declare-fun c!628924 () Bool)

(assert (=> b!3636442 (= c!628924 ((_ is EmptyLang!10479) (regex!5720 rule!403)))))

(declare-fun b!3636443 () Bool)

(declare-fun e!2250986 () Bool)

(assert (=> b!3636443 (= e!2250992 e!2250986)))

(declare-fun res!1473313 () Bool)

(assert (=> b!3636443 (=> (not res!1473313) (not e!2250986))))

(assert (=> b!3636443 (= res!1473313 (not lt!1258341))))

(declare-fun b!3636444 () Bool)

(declare-fun e!2250990 () Bool)

(assert (=> b!3636444 (= e!2250990 (nullable!3633 (regex!5720 rule!403)))))

(declare-fun b!3636445 () Bool)

(declare-fun res!1473315 () Bool)

(assert (=> b!3636445 (=> (not res!1473315) (not e!2250989))))

(assert (=> b!3636445 (= res!1473315 (not call!262939))))

(declare-fun b!3636436 () Bool)

(declare-fun res!1473310 () Bool)

(declare-fun e!2250988 () Bool)

(assert (=> b!3636436 (=> res!1473310 e!2250988)))

(assert (=> b!3636436 (= res!1473310 (not (isEmpty!22676 (tail!5631 lt!1258118))))))

(declare-fun d!1069415 () Bool)

(assert (=> d!1069415 e!2250991))

(declare-fun c!628922 () Bool)

(assert (=> d!1069415 (= c!628922 ((_ is EmptyExpr!10479) (regex!5720 rule!403)))))

(assert (=> d!1069415 (= lt!1258341 e!2250990)))

(declare-fun c!628923 () Bool)

(assert (=> d!1069415 (= c!628923 (isEmpty!22676 lt!1258118))))

(assert (=> d!1069415 (validRegex!4795 (regex!5720 rule!403))))

(assert (=> d!1069415 (= (matchR!5048 (regex!5720 rule!403) lt!1258118) lt!1258341)))

(declare-fun b!3636446 () Bool)

(assert (=> b!3636446 (= e!2250990 (matchR!5048 (derivativeStep!3182 (regex!5720 rule!403) (head!7710 lt!1258118)) (tail!5631 lt!1258118)))))

(declare-fun b!3636447 () Bool)

(assert (=> b!3636447 (= e!2250986 e!2250988)))

(declare-fun res!1473314 () Bool)

(assert (=> b!3636447 (=> res!1473314 e!2250988)))

(assert (=> b!3636447 (= res!1473314 call!262939)))

(declare-fun b!3636448 () Bool)

(assert (=> b!3636448 (= e!2250988 (not (= (head!7710 lt!1258118) (c!628824 (regex!5720 rule!403)))))))

(declare-fun b!3636449 () Bool)

(declare-fun res!1473316 () Bool)

(assert (=> b!3636449 (=> res!1473316 e!2250992)))

(assert (=> b!3636449 (= res!1473316 e!2250989)))

(declare-fun res!1473312 () Bool)

(assert (=> b!3636449 (=> (not res!1473312) (not e!2250989))))

(assert (=> b!3636449 (= res!1473312 lt!1258341)))

(assert (= (and d!1069415 c!628923) b!3636444))

(assert (= (and d!1069415 (not c!628923)) b!3636446))

(assert (= (and d!1069415 c!628922) b!3636438))

(assert (= (and d!1069415 (not c!628922)) b!3636442))

(assert (= (and b!3636442 c!628924) b!3636437))

(assert (= (and b!3636442 (not c!628924)) b!3636441))

(assert (= (and b!3636441 (not res!1473317)) b!3636449))

(assert (= (and b!3636449 res!1473312) b!3636445))

(assert (= (and b!3636445 res!1473315) b!3636440))

(assert (= (and b!3636440 res!1473311) b!3636439))

(assert (= (and b!3636449 (not res!1473316)) b!3636443))

(assert (= (and b!3636443 res!1473313) b!3636447))

(assert (= (and b!3636447 (not res!1473314)) b!3636436))

(assert (= (and b!3636436 (not res!1473310)) b!3636448))

(assert (= (or b!3636438 b!3636447 b!3636445) bm!262934))

(assert (=> b!3636436 m!4138709))

(assert (=> b!3636436 m!4138709))

(declare-fun m!4138853 () Bool)

(assert (=> b!3636436 m!4138853))

(declare-fun m!4138855 () Bool)

(assert (=> d!1069415 m!4138855))

(declare-fun m!4138857 () Bool)

(assert (=> d!1069415 m!4138857))

(assert (=> bm!262934 m!4138855))

(assert (=> b!3636448 m!4138715))

(assert (=> b!3636440 m!4138709))

(assert (=> b!3636440 m!4138709))

(assert (=> b!3636440 m!4138853))

(declare-fun m!4138859 () Bool)

(assert (=> b!3636444 m!4138859))

(assert (=> b!3636439 m!4138715))

(assert (=> b!3636446 m!4138715))

(assert (=> b!3636446 m!4138715))

(declare-fun m!4138861 () Bool)

(assert (=> b!3636446 m!4138861))

(assert (=> b!3636446 m!4138709))

(assert (=> b!3636446 m!4138861))

(assert (=> b!3636446 m!4138709))

(declare-fun m!4138863 () Bool)

(assert (=> b!3636446 m!4138863))

(assert (=> b!3635963 d!1069415))

(declare-fun d!1069417 () Bool)

(declare-fun res!1473322 () Bool)

(declare-fun e!2250995 () Bool)

(assert (=> d!1069417 (=> (not res!1473322) (not e!2250995))))

(assert (=> d!1069417 (= res!1473322 (validRegex!4795 (regex!5720 rule!403)))))

(assert (=> d!1069417 (= (ruleValid!1984 thiss!23823 rule!403) e!2250995)))

(declare-fun b!3636454 () Bool)

(declare-fun res!1473323 () Bool)

(assert (=> b!3636454 (=> (not res!1473323) (not e!2250995))))

(assert (=> b!3636454 (= res!1473323 (not (nullable!3633 (regex!5720 rule!403))))))

(declare-fun b!3636455 () Bool)

(assert (=> b!3636455 (= e!2250995 (not (= (tag!6460 rule!403) (String!43085 ""))))))

(assert (= (and d!1069417 res!1473322) b!3636454))

(assert (= (and b!3636454 res!1473323) b!3636455))

(assert (=> d!1069417 m!4138857))

(assert (=> b!3636454 m!4138859))

(assert (=> b!3635963 d!1069417))

(declare-fun d!1069419 () Bool)

(assert (=> d!1069419 (ruleValid!1984 thiss!23823 rule!403)))

(declare-fun lt!1258344 () Unit!55142)

(declare-fun choose!21365 (LexerInterface!5309 Rule!11240 List!38441) Unit!55142)

(assert (=> d!1069419 (= lt!1258344 (choose!21365 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1069419 (contains!7506 rules!3307 rule!403)))

(assert (=> d!1069419 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1138 thiss!23823 rule!403 rules!3307) lt!1258344)))

(declare-fun bs!571810 () Bool)

(assert (= bs!571810 d!1069419))

(assert (=> bs!571810 m!4138245))

(declare-fun m!4138865 () Bool)

(assert (=> bs!571810 m!4138865))

(assert (=> bs!571810 m!4138239))

(assert (=> b!3635963 d!1069419))

(declare-fun d!1069421 () Bool)

(assert (=> d!1069421 (= (inv!51741 (tag!6460 (h!43737 rules!3307))) (= (mod (str.len (value!183479 (tag!6460 (h!43737 rules!3307)))) 2) 0))))

(assert (=> b!3635965 d!1069421))

(declare-fun d!1069423 () Bool)

(declare-fun res!1473324 () Bool)

(declare-fun e!2250996 () Bool)

(assert (=> d!1069423 (=> (not res!1473324) (not e!2250996))))

(assert (=> d!1069423 (= res!1473324 (semiInverseModEq!2432 (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toValue!8012 (transformation!5720 (h!43737 rules!3307)))))))

(assert (=> d!1069423 (= (inv!51744 (transformation!5720 (h!43737 rules!3307))) e!2250996)))

(declare-fun b!3636456 () Bool)

(assert (=> b!3636456 (= e!2250996 (equivClasses!2331 (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toValue!8012 (transformation!5720 (h!43737 rules!3307)))))))

(assert (= (and d!1069423 res!1473324) b!3636456))

(declare-fun m!4138867 () Bool)

(assert (=> d!1069423 m!4138867))

(declare-fun m!4138869 () Bool)

(assert (=> b!3636456 m!4138869))

(assert (=> b!3635965 d!1069423))

(declare-fun d!1069425 () Bool)

(assert (=> d!1069425 (= (inv!51741 (tag!6460 anOtherTypeRule!33)) (= (mod (str.len (value!183479 (tag!6460 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3635943 d!1069425))

(declare-fun d!1069427 () Bool)

(declare-fun res!1473325 () Bool)

(declare-fun e!2250997 () Bool)

(assert (=> d!1069427 (=> (not res!1473325) (not e!2250997))))

(assert (=> d!1069427 (= res!1473325 (semiInverseModEq!2432 (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toValue!8012 (transformation!5720 anOtherTypeRule!33))))))

(assert (=> d!1069427 (= (inv!51744 (transformation!5720 anOtherTypeRule!33)) e!2250997)))

(declare-fun b!3636457 () Bool)

(assert (=> b!3636457 (= e!2250997 (equivClasses!2331 (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toValue!8012 (transformation!5720 anOtherTypeRule!33))))))

(assert (= (and d!1069427 res!1473325) b!3636457))

(declare-fun m!4138871 () Bool)

(assert (=> d!1069427 m!4138871))

(declare-fun m!4138873 () Bool)

(assert (=> b!3636457 m!4138873))

(assert (=> b!3635943 d!1069427))

(declare-fun d!1069429 () Bool)

(assert (=> d!1069429 (= (isDefined!6300 lt!1258106) (not (isEmpty!22680 lt!1258106)))))

(declare-fun bs!571811 () Bool)

(assert (= bs!571811 d!1069429))

(declare-fun m!4138875 () Bool)

(assert (=> bs!571811 m!4138875))

(assert (=> b!3635945 d!1069429))

(declare-fun b!3636458 () Bool)

(declare-fun e!2251000 () Option!8068)

(declare-fun call!262940 () Option!8068)

(assert (=> b!3636458 (= e!2251000 call!262940)))

(declare-fun b!3636459 () Bool)

(declare-fun res!1473326 () Bool)

(declare-fun e!2250998 () Bool)

(assert (=> b!3636459 (=> (not res!1473326) (not e!2250998))))

(declare-fun lt!1258346 () Option!8068)

(assert (=> b!3636459 (= res!1473326 (= (value!183480 (_1!22224 (get!12538 lt!1258346))) (apply!9222 (transformation!5720 (rule!8494 (_1!22224 (get!12538 lt!1258346)))) (seqFromList!4269 (originalCharacters!6434 (_1!22224 (get!12538 lt!1258346)))))))))

(declare-fun b!3636460 () Bool)

(declare-fun res!1473327 () Bool)

(assert (=> b!3636460 (=> (not res!1473327) (not e!2250998))))

(assert (=> b!3636460 (= res!1473327 (< (size!29241 (_2!22224 (get!12538 lt!1258346))) (size!29241 lt!1258118)))))

(declare-fun b!3636461 () Bool)

(declare-fun res!1473330 () Bool)

(assert (=> b!3636461 (=> (not res!1473330) (not e!2250998))))

(assert (=> b!3636461 (= res!1473330 (= (++!9536 (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258346)))) (_2!22224 (get!12538 lt!1258346))) lt!1258118))))

(declare-fun bm!262935 () Bool)

(assert (=> bm!262935 (= call!262940 (maxPrefixOneRule!1981 thiss!23823 (h!43737 rules!3307) lt!1258118))))

(declare-fun b!3636463 () Bool)

(assert (=> b!3636463 (= e!2250998 (contains!7506 rules!3307 (rule!8494 (_1!22224 (get!12538 lt!1258346)))))))

(declare-fun b!3636464 () Bool)

(declare-fun e!2250999 () Bool)

(assert (=> b!3636464 (= e!2250999 e!2250998)))

(declare-fun res!1473329 () Bool)

(assert (=> b!3636464 (=> (not res!1473329) (not e!2250998))))

(assert (=> b!3636464 (= res!1473329 (isDefined!6300 lt!1258346))))

(declare-fun b!3636462 () Bool)

(declare-fun res!1473331 () Bool)

(assert (=> b!3636462 (=> (not res!1473331) (not e!2250998))))

(assert (=> b!3636462 (= res!1473331 (matchR!5048 (regex!5720 (rule!8494 (_1!22224 (get!12538 lt!1258346)))) (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258346))))))))

(declare-fun d!1069431 () Bool)

(assert (=> d!1069431 e!2250999))

(declare-fun res!1473328 () Bool)

(assert (=> d!1069431 (=> res!1473328 e!2250999)))

(assert (=> d!1069431 (= res!1473328 (isEmpty!22680 lt!1258346))))

(assert (=> d!1069431 (= lt!1258346 e!2251000)))

(declare-fun c!628925 () Bool)

(assert (=> d!1069431 (= c!628925 (and ((_ is Cons!38317) rules!3307) ((_ is Nil!38317) (t!295864 rules!3307))))))

(declare-fun lt!1258345 () Unit!55142)

(declare-fun lt!1258349 () Unit!55142)

(assert (=> d!1069431 (= lt!1258345 lt!1258349)))

(assert (=> d!1069431 (isPrefix!3083 lt!1258118 lt!1258118)))

(assert (=> d!1069431 (= lt!1258349 (lemmaIsPrefixRefl!1954 lt!1258118 lt!1258118))))

(assert (=> d!1069431 (rulesValidInductive!2019 thiss!23823 rules!3307)))

(assert (=> d!1069431 (= (maxPrefix!2843 thiss!23823 rules!3307 lt!1258118) lt!1258346)))

(declare-fun b!3636465 () Bool)

(declare-fun res!1473332 () Bool)

(assert (=> b!3636465 (=> (not res!1473332) (not e!2250998))))

(assert (=> b!3636465 (= res!1473332 (= (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258346)))) (originalCharacters!6434 (_1!22224 (get!12538 lt!1258346)))))))

(declare-fun b!3636466 () Bool)

(declare-fun lt!1258348 () Option!8068)

(declare-fun lt!1258347 () Option!8068)

(assert (=> b!3636466 (= e!2251000 (ite (and ((_ is None!8067) lt!1258348) ((_ is None!8067) lt!1258347)) None!8067 (ite ((_ is None!8067) lt!1258347) lt!1258348 (ite ((_ is None!8067) lt!1258348) lt!1258347 (ite (>= (size!29239 (_1!22224 (v!37879 lt!1258348))) (size!29239 (_1!22224 (v!37879 lt!1258347)))) lt!1258348 lt!1258347)))))))

(assert (=> b!3636466 (= lt!1258348 call!262940)))

(assert (=> b!3636466 (= lt!1258347 (maxPrefix!2843 thiss!23823 (t!295864 rules!3307) lt!1258118))))

(assert (= (and d!1069431 c!628925) b!3636458))

(assert (= (and d!1069431 (not c!628925)) b!3636466))

(assert (= (or b!3636458 b!3636466) bm!262935))

(assert (= (and d!1069431 (not res!1473328)) b!3636464))

(assert (= (and b!3636464 res!1473329) b!3636465))

(assert (= (and b!3636465 res!1473332) b!3636460))

(assert (= (and b!3636460 res!1473327) b!3636461))

(assert (= (and b!3636461 res!1473330) b!3636459))

(assert (= (and b!3636459 res!1473326) b!3636462))

(assert (= (and b!3636462 res!1473331) b!3636463))

(declare-fun m!4138877 () Bool)

(assert (=> b!3636461 m!4138877))

(declare-fun m!4138879 () Bool)

(assert (=> b!3636461 m!4138879))

(assert (=> b!3636461 m!4138879))

(declare-fun m!4138881 () Bool)

(assert (=> b!3636461 m!4138881))

(assert (=> b!3636461 m!4138881))

(declare-fun m!4138883 () Bool)

(assert (=> b!3636461 m!4138883))

(declare-fun m!4138885 () Bool)

(assert (=> b!3636466 m!4138885))

(assert (=> b!3636462 m!4138877))

(assert (=> b!3636462 m!4138879))

(assert (=> b!3636462 m!4138879))

(assert (=> b!3636462 m!4138881))

(assert (=> b!3636462 m!4138881))

(declare-fun m!4138887 () Bool)

(assert (=> b!3636462 m!4138887))

(declare-fun m!4138889 () Bool)

(assert (=> bm!262935 m!4138889))

(declare-fun m!4138891 () Bool)

(assert (=> d!1069431 m!4138891))

(declare-fun m!4138893 () Bool)

(assert (=> d!1069431 m!4138893))

(declare-fun m!4138895 () Bool)

(assert (=> d!1069431 m!4138895))

(assert (=> d!1069431 m!4138775))

(assert (=> b!3636463 m!4138877))

(declare-fun m!4138897 () Bool)

(assert (=> b!3636463 m!4138897))

(assert (=> b!3636459 m!4138877))

(declare-fun m!4138899 () Bool)

(assert (=> b!3636459 m!4138899))

(assert (=> b!3636459 m!4138899))

(declare-fun m!4138901 () Bool)

(assert (=> b!3636459 m!4138901))

(assert (=> b!3636460 m!4138877))

(declare-fun m!4138903 () Bool)

(assert (=> b!3636460 m!4138903))

(assert (=> b!3636460 m!4138707))

(declare-fun m!4138905 () Bool)

(assert (=> b!3636464 m!4138905))

(assert (=> b!3636465 m!4138877))

(assert (=> b!3636465 m!4138879))

(assert (=> b!3636465 m!4138879))

(assert (=> b!3636465 m!4138881))

(assert (=> b!3635945 d!1069431))

(declare-fun d!1069433 () Bool)

(assert (=> d!1069433 (= (list!14174 (charsOf!3734 token!511)) (list!14178 (c!628825 (charsOf!3734 token!511))))))

(declare-fun bs!571812 () Bool)

(assert (= bs!571812 d!1069433))

(declare-fun m!4138907 () Bool)

(assert (=> bs!571812 m!4138907))

(assert (=> b!3635945 d!1069433))

(declare-fun d!1069435 () Bool)

(declare-fun lt!1258350 () BalanceConc!23004)

(assert (=> d!1069435 (= (list!14174 lt!1258350) (originalCharacters!6434 token!511))))

(assert (=> d!1069435 (= lt!1258350 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (value!183480 token!511)))))

(assert (=> d!1069435 (= (charsOf!3734 token!511) lt!1258350)))

(declare-fun b_lambda!107731 () Bool)

(assert (=> (not b_lambda!107731) (not d!1069435)))

(assert (=> d!1069435 t!295874))

(declare-fun b_and!267507 () Bool)

(assert (= b_and!267499 (and (=> t!295874 result!254812) b_and!267507)))

(assert (=> d!1069435 t!295876))

(declare-fun b_and!267509 () Bool)

(assert (= b_and!267501 (and (=> t!295876 result!254816) b_and!267509)))

(assert (=> d!1069435 t!295878))

(declare-fun b_and!267511 () Bool)

(assert (= b_and!267503 (and (=> t!295878 result!254818) b_and!267511)))

(assert (=> d!1069435 t!295880))

(declare-fun b_and!267513 () Bool)

(assert (= b_and!267505 (and (=> t!295880 result!254820) b_and!267513)))

(declare-fun m!4138909 () Bool)

(assert (=> d!1069435 m!4138909))

(assert (=> d!1069435 m!4138435))

(assert (=> b!3635945 d!1069435))

(declare-fun b!3636477 () Bool)

(declare-fun e!2251008 () Bool)

(declare-fun e!2251009 () Bool)

(assert (=> b!3636477 (= e!2251008 e!2251009)))

(declare-fun c!628931 () Bool)

(assert (=> b!3636477 (= c!628931 ((_ is IntegerValue!17851) (value!183480 token!511)))))

(declare-fun b!3636479 () Bool)

(declare-fun inv!16 (TokenValue!5950) Bool)

(assert (=> b!3636479 (= e!2251008 (inv!16 (value!183480 token!511)))))

(declare-fun b!3636480 () Bool)

(declare-fun res!1473335 () Bool)

(declare-fun e!2251007 () Bool)

(assert (=> b!3636480 (=> res!1473335 e!2251007)))

(assert (=> b!3636480 (= res!1473335 (not ((_ is IntegerValue!17852) (value!183480 token!511))))))

(assert (=> b!3636480 (= e!2251009 e!2251007)))

(declare-fun b!3636481 () Bool)

(declare-fun inv!17 (TokenValue!5950) Bool)

(assert (=> b!3636481 (= e!2251009 (inv!17 (value!183480 token!511)))))

(declare-fun b!3636478 () Bool)

(declare-fun inv!15 (TokenValue!5950) Bool)

(assert (=> b!3636478 (= e!2251007 (inv!15 (value!183480 token!511)))))

(declare-fun d!1069437 () Bool)

(declare-fun c!628930 () Bool)

(assert (=> d!1069437 (= c!628930 ((_ is IntegerValue!17850) (value!183480 token!511)))))

(assert (=> d!1069437 (= (inv!21 (value!183480 token!511)) e!2251008)))

(assert (= (and d!1069437 c!628930) b!3636479))

(assert (= (and d!1069437 (not c!628930)) b!3636477))

(assert (= (and b!3636477 c!628931) b!3636481))

(assert (= (and b!3636477 (not c!628931)) b!3636480))

(assert (= (and b!3636480 (not res!1473335)) b!3636478))

(declare-fun m!4138911 () Bool)

(assert (=> b!3636479 m!4138911))

(declare-fun m!4138913 () Bool)

(assert (=> b!3636481 m!4138913))

(declare-fun m!4138915 () Bool)

(assert (=> b!3636478 m!4138915))

(assert (=> b!3635966 d!1069437))

(declare-fun d!1069439 () Bool)

(assert (=> d!1069439 (= (inv!51741 (tag!6460 (rule!8494 token!511))) (= (mod (str.len (value!183479 (tag!6460 (rule!8494 token!511)))) 2) 0))))

(assert (=> b!3635946 d!1069439))

(declare-fun d!1069441 () Bool)

(declare-fun res!1473336 () Bool)

(declare-fun e!2251010 () Bool)

(assert (=> d!1069441 (=> (not res!1473336) (not e!2251010))))

(assert (=> d!1069441 (= res!1473336 (semiInverseModEq!2432 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (toValue!8012 (transformation!5720 (rule!8494 token!511)))))))

(assert (=> d!1069441 (= (inv!51744 (transformation!5720 (rule!8494 token!511))) e!2251010)))

(declare-fun b!3636482 () Bool)

(assert (=> b!3636482 (= e!2251010 (equivClasses!2331 (toChars!7871 (transformation!5720 (rule!8494 token!511))) (toValue!8012 (transformation!5720 (rule!8494 token!511)))))))

(assert (= (and d!1069441 res!1473336) b!3636482))

(declare-fun m!4138917 () Bool)

(assert (=> d!1069441 m!4138917))

(declare-fun m!4138919 () Bool)

(assert (=> b!3636482 m!4138919))

(assert (=> b!3635946 d!1069441))

(declare-fun d!1069443 () Bool)

(declare-fun lt!1258351 () Bool)

(assert (=> d!1069443 (= lt!1258351 (select (content!5507 rules!3307) rule!403))))

(declare-fun e!2251012 () Bool)

(assert (=> d!1069443 (= lt!1258351 e!2251012)))

(declare-fun res!1473337 () Bool)

(assert (=> d!1069443 (=> (not res!1473337) (not e!2251012))))

(assert (=> d!1069443 (= res!1473337 ((_ is Cons!38317) rules!3307))))

(assert (=> d!1069443 (= (contains!7506 rules!3307 rule!403) lt!1258351)))

(declare-fun b!3636483 () Bool)

(declare-fun e!2251011 () Bool)

(assert (=> b!3636483 (= e!2251012 e!2251011)))

(declare-fun res!1473338 () Bool)

(assert (=> b!3636483 (=> res!1473338 e!2251011)))

(assert (=> b!3636483 (= res!1473338 (= (h!43737 rules!3307) rule!403))))

(declare-fun b!3636484 () Bool)

(assert (=> b!3636484 (= e!2251011 (contains!7506 (t!295864 rules!3307) rule!403))))

(assert (= (and d!1069443 res!1473337) b!3636483))

(assert (= (and b!3636483 (not res!1473338)) b!3636484))

(assert (=> d!1069443 m!4138453))

(declare-fun m!4138921 () Bool)

(assert (=> d!1069443 m!4138921))

(declare-fun m!4138923 () Bool)

(assert (=> b!3636484 m!4138923))

(assert (=> b!3635947 d!1069443))

(declare-fun d!1069445 () Bool)

(declare-fun fromListB!1969 (List!38440) BalanceConc!23004)

(assert (=> d!1069445 (= (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108))) (fromListB!1969 (originalCharacters!6434 (_1!22224 lt!1258108))))))

(declare-fun bs!571813 () Bool)

(assert (= bs!571813 d!1069445))

(declare-fun m!4138925 () Bool)

(assert (=> bs!571813 m!4138925))

(assert (=> b!3635949 d!1069445))

(declare-fun d!1069447 () Bool)

(assert (=> d!1069447 (= (size!29239 (_1!22224 lt!1258108)) (size!29241 (originalCharacters!6434 (_1!22224 lt!1258108))))))

(declare-fun Unit!55149 () Unit!55142)

(assert (=> d!1069447 (= (lemmaCharactersSize!765 (_1!22224 lt!1258108)) Unit!55149)))

(declare-fun bs!571814 () Bool)

(assert (= bs!571814 d!1069447))

(declare-fun m!4138927 () Bool)

(assert (=> bs!571814 m!4138927))

(assert (=> b!3635949 d!1069447))

(declare-fun b!3636617 () Bool)

(declare-fun e!2251084 () Bool)

(assert (=> b!3636617 (= e!2251084 true)))

(declare-fun d!1069449 () Bool)

(assert (=> d!1069449 e!2251084))

(assert (= d!1069449 b!3636617))

(declare-fun order!21019 () Int)

(declare-fun lambda!124340 () Int)

(declare-fun order!21021 () Int)

(declare-fun dynLambda!16645 (Int Int) Int)

(declare-fun dynLambda!16646 (Int Int) Int)

(assert (=> b!3636617 (< (dynLambda!16645 order!21019 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) (dynLambda!16646 order!21021 lambda!124340))))

(declare-fun order!21023 () Int)

(declare-fun dynLambda!16647 (Int Int) Int)

(assert (=> b!3636617 (< (dynLambda!16647 order!21023 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) (dynLambda!16646 order!21021 lambda!124340))))

(declare-fun dynLambda!16648 (Int BalanceConc!23004) TokenValue!5950)

(assert (=> d!1069449 (= (list!14174 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126))) (list!14174 lt!1258126))))

(declare-fun lt!1258395 () Unit!55142)

(declare-fun ForallOf!690 (Int BalanceConc!23004) Unit!55142)

(assert (=> d!1069449 (= lt!1258395 (ForallOf!690 lambda!124340 lt!1258126))))

(assert (=> d!1069449 (= (lemmaSemiInverse!1469 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126) lt!1258395)))

(declare-fun b_lambda!107751 () Bool)

(assert (=> (not b_lambda!107751) (not d!1069449)))

(declare-fun t!295942 () Bool)

(declare-fun tb!209257 () Bool)

(assert (=> (and b!3635962 (= (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295942) tb!209257))

(declare-fun e!2251085 () Bool)

(declare-fun b!3636618 () Bool)

(declare-fun tp!1109762 () Bool)

(assert (=> b!3636618 (= e!2251085 (and (inv!51748 (c!628825 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126)))) tp!1109762))))

(declare-fun result!254890 () Bool)

(assert (=> tb!209257 (= result!254890 (and (inv!51749 (dynLambda!16639 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126))) e!2251085))))

(assert (= tb!209257 b!3636618))

(declare-fun m!4139079 () Bool)

(assert (=> b!3636618 m!4139079))

(declare-fun m!4139081 () Bool)

(assert (=> tb!209257 m!4139081))

(assert (=> d!1069449 t!295942))

(declare-fun b_and!267575 () Bool)

(assert (= b_and!267507 (and (=> t!295942 result!254890) b_and!267575)))

(declare-fun t!295944 () Bool)

(declare-fun tb!209259 () Bool)

(assert (=> (and b!3635950 (= (toChars!7871 (transformation!5720 (rule!8494 token!511))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295944) tb!209259))

(declare-fun result!254892 () Bool)

(assert (= result!254892 result!254890))

(assert (=> d!1069449 t!295944))

(declare-fun b_and!267577 () Bool)

(assert (= b_and!267509 (and (=> t!295944 result!254892) b_and!267577)))

(declare-fun t!295946 () Bool)

(declare-fun tb!209261 () Bool)

(assert (=> (and b!3635942 (= (toChars!7871 (transformation!5720 rule!403)) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295946) tb!209261))

(declare-fun result!254894 () Bool)

(assert (= result!254894 result!254890))

(assert (=> d!1069449 t!295946))

(declare-fun b_and!267579 () Bool)

(assert (= b_and!267511 (and (=> t!295946 result!254894) b_and!267579)))

(declare-fun tb!209263 () Bool)

(declare-fun t!295948 () Bool)

(assert (=> (and b!3635944 (= (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295948) tb!209263))

(declare-fun result!254896 () Bool)

(assert (= result!254896 result!254890))

(assert (=> d!1069449 t!295948))

(declare-fun b_and!267581 () Bool)

(assert (= b_and!267513 (and (=> t!295948 result!254896) b_and!267581)))

(declare-fun b_lambda!107753 () Bool)

(assert (=> (not b_lambda!107753) (not d!1069449)))

(declare-fun tb!209265 () Bool)

(declare-fun t!295950 () Bool)

(assert (=> (and b!3635962 (= (toValue!8012 (transformation!5720 (h!43737 rules!3307))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295950) tb!209265))

(declare-fun result!254898 () Bool)

(assert (=> tb!209265 (= result!254898 (inv!21 (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126)))))

(declare-fun m!4139083 () Bool)

(assert (=> tb!209265 m!4139083))

(assert (=> d!1069449 t!295950))

(declare-fun b_and!267583 () Bool)

(assert (= b_and!267459 (and (=> t!295950 result!254898) b_and!267583)))

(declare-fun tb!209267 () Bool)

(declare-fun t!295952 () Bool)

(assert (=> (and b!3635950 (= (toValue!8012 (transformation!5720 (rule!8494 token!511))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295952) tb!209267))

(declare-fun result!254902 () Bool)

(assert (= result!254902 result!254898))

(assert (=> d!1069449 t!295952))

(declare-fun b_and!267585 () Bool)

(assert (= b_and!267463 (and (=> t!295952 result!254902) b_and!267585)))

(declare-fun tb!209269 () Bool)

(declare-fun t!295954 () Bool)

(assert (=> (and b!3635942 (= (toValue!8012 (transformation!5720 rule!403)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295954) tb!209269))

(declare-fun result!254904 () Bool)

(assert (= result!254904 result!254898))

(assert (=> d!1069449 t!295954))

(declare-fun b_and!267587 () Bool)

(assert (= b_and!267467 (and (=> t!295954 result!254904) b_and!267587)))

(declare-fun tb!209271 () Bool)

(declare-fun t!295956 () Bool)

(assert (=> (and b!3635944 (= (toValue!8012 (transformation!5720 anOtherTypeRule!33)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295956) tb!209271))

(declare-fun result!254906 () Bool)

(assert (= result!254906 result!254898))

(assert (=> d!1069449 t!295956))

(declare-fun b_and!267589 () Bool)

(assert (= b_and!267471 (and (=> t!295956 result!254906) b_and!267589)))

(declare-fun m!4139085 () Bool)

(assert (=> d!1069449 m!4139085))

(declare-fun m!4139087 () Bool)

(assert (=> d!1069449 m!4139087))

(declare-fun m!4139089 () Bool)

(assert (=> d!1069449 m!4139089))

(declare-fun m!4139091 () Bool)

(assert (=> d!1069449 m!4139091))

(assert (=> d!1069449 m!4138303))

(assert (=> d!1069449 m!4139087))

(assert (=> d!1069449 m!4139089))

(assert (=> b!3635949 d!1069449))

(declare-fun d!1069497 () Bool)

(assert (=> d!1069497 (= (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126))))

(declare-fun b_lambda!107755 () Bool)

(assert (=> (not b_lambda!107755) (not d!1069497)))

(assert (=> d!1069497 t!295950))

(declare-fun b_and!267591 () Bool)

(assert (= b_and!267583 (and (=> t!295950 result!254898) b_and!267591)))

(assert (=> d!1069497 t!295952))

(declare-fun b_and!267593 () Bool)

(assert (= b_and!267585 (and (=> t!295952 result!254902) b_and!267593)))

(assert (=> d!1069497 t!295954))

(declare-fun b_and!267595 () Bool)

(assert (= b_and!267587 (and (=> t!295954 result!254904) b_and!267595)))

(assert (=> d!1069497 t!295956))

(declare-fun b_and!267597 () Bool)

(assert (= b_and!267589 (and (=> t!295956 result!254906) b_and!267597)))

(assert (=> d!1069497 m!4139087))

(assert (=> b!3635949 d!1069497))

(declare-fun b!3636627 () Bool)

(declare-fun e!2251093 () Bool)

(assert (=> b!3636627 (= e!2251093 true)))

(declare-fun d!1069499 () Bool)

(assert (=> d!1069499 e!2251093))

(assert (= d!1069499 b!3636627))

(declare-fun lambda!124343 () Int)

(declare-fun order!21025 () Int)

(declare-fun dynLambda!16649 (Int Int) Int)

(assert (=> b!3636627 (< (dynLambda!16645 order!21019 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) (dynLambda!16649 order!21025 lambda!124343))))

(assert (=> b!3636627 (< (dynLambda!16647 order!21023 (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) (dynLambda!16649 order!21025 lambda!124343))))

(assert (=> d!1069499 (= (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) lt!1258126) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108)))))))

(declare-fun lt!1258398 () Unit!55142)

(declare-fun Forall2of!348 (Int BalanceConc!23004 BalanceConc!23004) Unit!55142)

(assert (=> d!1069499 (= lt!1258398 (Forall2of!348 lambda!124343 lt!1258126 (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108)))))))

(assert (=> d!1069499 (= (list!14174 lt!1258126) (list!14174 (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108)))))))

(assert (=> d!1069499 (= (lemmaEqSameImage!903 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258126 (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108)))) lt!1258398)))

(declare-fun b_lambda!107757 () Bool)

(assert (=> (not b_lambda!107757) (not d!1069499)))

(assert (=> d!1069499 t!295950))

(declare-fun b_and!267599 () Bool)

(assert (= b_and!267591 (and (=> t!295950 result!254898) b_and!267599)))

(assert (=> d!1069499 t!295952))

(declare-fun b_and!267601 () Bool)

(assert (= b_and!267593 (and (=> t!295952 result!254902) b_and!267601)))

(assert (=> d!1069499 t!295954))

(declare-fun b_and!267603 () Bool)

(assert (= b_and!267595 (and (=> t!295954 result!254904) b_and!267603)))

(assert (=> d!1069499 t!295956))

(declare-fun b_and!267605 () Bool)

(assert (= b_and!267597 (and (=> t!295956 result!254906) b_and!267605)))

(declare-fun b_lambda!107759 () Bool)

(assert (=> (not b_lambda!107759) (not d!1069499)))

(declare-fun tb!209273 () Bool)

(declare-fun t!295958 () Bool)

(assert (=> (and b!3635962 (= (toValue!8012 (transformation!5720 (h!43737 rules!3307))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295958) tb!209273))

(declare-fun result!254908 () Bool)

(assert (=> tb!209273 (= result!254908 (inv!21 (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (seqFromList!4269 (originalCharacters!6434 (_1!22224 lt!1258108))))))))

(declare-fun m!4139093 () Bool)

(assert (=> tb!209273 m!4139093))

(assert (=> d!1069499 t!295958))

(declare-fun b_and!267607 () Bool)

(assert (= b_and!267599 (and (=> t!295958 result!254908) b_and!267607)))

(declare-fun t!295960 () Bool)

(declare-fun tb!209275 () Bool)

(assert (=> (and b!3635950 (= (toValue!8012 (transformation!5720 (rule!8494 token!511))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295960) tb!209275))

(declare-fun result!254910 () Bool)

(assert (= result!254910 result!254908))

(assert (=> d!1069499 t!295960))

(declare-fun b_and!267609 () Bool)

(assert (= b_and!267601 (and (=> t!295960 result!254910) b_and!267609)))

(declare-fun tb!209277 () Bool)

(declare-fun t!295962 () Bool)

(assert (=> (and b!3635942 (= (toValue!8012 (transformation!5720 rule!403)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295962) tb!209277))

(declare-fun result!254912 () Bool)

(assert (= result!254912 result!254908))

(assert (=> d!1069499 t!295962))

(declare-fun b_and!267611 () Bool)

(assert (= b_and!267603 (and (=> t!295962 result!254912) b_and!267611)))

(declare-fun tb!209279 () Bool)

(declare-fun t!295964 () Bool)

(assert (=> (and b!3635944 (= (toValue!8012 (transformation!5720 anOtherTypeRule!33)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295964) tb!209279))

(declare-fun result!254914 () Bool)

(assert (= result!254914 result!254908))

(assert (=> d!1069499 t!295964))

(declare-fun b_and!267613 () Bool)

(assert (= b_and!267605 (and (=> t!295964 result!254914) b_and!267613)))

(assert (=> d!1069499 m!4138233))

(declare-fun m!4139095 () Bool)

(assert (=> d!1069499 m!4139095))

(assert (=> d!1069499 m!4138233))

(declare-fun m!4139097 () Bool)

(assert (=> d!1069499 m!4139097))

(assert (=> d!1069499 m!4139087))

(assert (=> d!1069499 m!4138233))

(declare-fun m!4139099 () Bool)

(assert (=> d!1069499 m!4139099))

(assert (=> d!1069499 m!4138303))

(assert (=> b!3635949 d!1069499))

(declare-fun d!1069501 () Bool)

(declare-fun lt!1258401 () Int)

(assert (=> d!1069501 (= lt!1258401 (size!29241 (list!14174 lt!1258126)))))

(declare-fun size!29243 (Conc!11695) Int)

(assert (=> d!1069501 (= lt!1258401 (size!29243 (c!628825 lt!1258126)))))

(assert (=> d!1069501 (= (size!29240 lt!1258126) lt!1258401)))

(declare-fun bs!571823 () Bool)

(assert (= bs!571823 d!1069501))

(assert (=> bs!571823 m!4138303))

(assert (=> bs!571823 m!4138303))

(declare-fun m!4139101 () Bool)

(assert (=> bs!571823 m!4139101))

(declare-fun m!4139103 () Bool)

(assert (=> bs!571823 m!4139103))

(assert (=> b!3635949 d!1069501))

(declare-fun d!1069503 () Bool)

(declare-fun e!2251095 () Bool)

(assert (=> d!1069503 e!2251095))

(declare-fun res!1473388 () Bool)

(assert (=> d!1069503 (=> (not res!1473388) (not e!2251095))))

(declare-fun lt!1258402 () List!38440)

(assert (=> d!1069503 (= res!1473388 (= (content!5506 lt!1258402) ((_ map or) (content!5506 lt!1258124) (content!5506 lt!1258114))))))

(declare-fun e!2251096 () List!38440)

(assert (=> d!1069503 (= lt!1258402 e!2251096)))

(declare-fun c!628946 () Bool)

(assert (=> d!1069503 (= c!628946 ((_ is Nil!38316) lt!1258124))))

(assert (=> d!1069503 (= (++!9536 lt!1258124 lt!1258114) lt!1258402)))

(declare-fun b!3636629 () Bool)

(assert (=> b!3636629 (= e!2251096 (Cons!38316 (h!43736 lt!1258124) (++!9536 (t!295863 lt!1258124) lt!1258114)))))

(declare-fun b!3636628 () Bool)

(assert (=> b!3636628 (= e!2251096 lt!1258114)))

(declare-fun b!3636631 () Bool)

(assert (=> b!3636631 (= e!2251095 (or (not (= lt!1258114 Nil!38316)) (= lt!1258402 lt!1258124)))))

(declare-fun b!3636630 () Bool)

(declare-fun res!1473387 () Bool)

(assert (=> b!3636630 (=> (not res!1473387) (not e!2251095))))

(assert (=> b!3636630 (= res!1473387 (= (size!29241 lt!1258402) (+ (size!29241 lt!1258124) (size!29241 lt!1258114))))))

(assert (= (and d!1069503 c!628946) b!3636628))

(assert (= (and d!1069503 (not c!628946)) b!3636629))

(assert (= (and d!1069503 res!1473388) b!3636630))

(assert (= (and b!3636630 res!1473387) b!3636631))

(declare-fun m!4139105 () Bool)

(assert (=> d!1069503 m!4139105))

(assert (=> d!1069503 m!4138491))

(declare-fun m!4139107 () Bool)

(assert (=> d!1069503 m!4139107))

(declare-fun m!4139109 () Bool)

(assert (=> b!3636629 m!4139109))

(declare-fun m!4139111 () Bool)

(assert (=> b!3636630 m!4139111))

(assert (=> b!3636630 m!4138285))

(declare-fun m!4139113 () Bool)

(assert (=> b!3636630 m!4139113))

(assert (=> b!3635952 d!1069503))

(declare-fun d!1069505 () Bool)

(assert (=> d!1069505 (= (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) (seqFromList!4269 lt!1258124)) (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (seqFromList!4269 lt!1258124)))))

(declare-fun b_lambda!107761 () Bool)

(assert (=> (not b_lambda!107761) (not d!1069505)))

(declare-fun tb!209281 () Bool)

(declare-fun t!295966 () Bool)

(assert (=> (and b!3635962 (= (toValue!8012 (transformation!5720 (h!43737 rules!3307))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295966) tb!209281))

(declare-fun result!254916 () Bool)

(assert (=> tb!209281 (= result!254916 (inv!21 (dynLambda!16648 (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108)))) (seqFromList!4269 lt!1258124))))))

(declare-fun m!4139115 () Bool)

(assert (=> tb!209281 m!4139115))

(assert (=> d!1069505 t!295966))

(declare-fun b_and!267615 () Bool)

(assert (= b_and!267607 (and (=> t!295966 result!254916) b_and!267615)))

(declare-fun tb!209283 () Bool)

(declare-fun t!295968 () Bool)

(assert (=> (and b!3635950 (= (toValue!8012 (transformation!5720 (rule!8494 token!511))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295968) tb!209283))

(declare-fun result!254918 () Bool)

(assert (= result!254918 result!254916))

(assert (=> d!1069505 t!295968))

(declare-fun b_and!267617 () Bool)

(assert (= b_and!267609 (and (=> t!295968 result!254918) b_and!267617)))

(declare-fun t!295970 () Bool)

(declare-fun tb!209285 () Bool)

(assert (=> (and b!3635942 (= (toValue!8012 (transformation!5720 rule!403)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295970) tb!209285))

(declare-fun result!254920 () Bool)

(assert (= result!254920 result!254916))

(assert (=> d!1069505 t!295970))

(declare-fun b_and!267619 () Bool)

(assert (= b_and!267611 (and (=> t!295970 result!254920) b_and!267619)))

(declare-fun tb!209287 () Bool)

(declare-fun t!295972 () Bool)

(assert (=> (and b!3635944 (= (toValue!8012 (transformation!5720 anOtherTypeRule!33)) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295972) tb!209287))

(declare-fun result!254922 () Bool)

(assert (= result!254922 result!254916))

(assert (=> d!1069505 t!295972))

(declare-fun b_and!267621 () Bool)

(assert (= b_and!267613 (and (=> t!295972 result!254922) b_and!267621)))

(assert (=> d!1069505 m!4138279))

(declare-fun m!4139117 () Bool)

(assert (=> d!1069505 m!4139117))

(assert (=> b!3635951 d!1069505))

(declare-fun d!1069507 () Bool)

(declare-fun lt!1258405 () List!38440)

(assert (=> d!1069507 (= (++!9536 lt!1258124 lt!1258405) lt!1258105)))

(declare-fun e!2251100 () List!38440)

(assert (=> d!1069507 (= lt!1258405 e!2251100)))

(declare-fun c!628949 () Bool)

(assert (=> d!1069507 (= c!628949 ((_ is Cons!38316) lt!1258124))))

(assert (=> d!1069507 (>= (size!29241 lt!1258105) (size!29241 lt!1258124))))

(assert (=> d!1069507 (= (getSuffix!1636 lt!1258105 lt!1258124) lt!1258405)))

(declare-fun b!3636636 () Bool)

(assert (=> b!3636636 (= e!2251100 (getSuffix!1636 (tail!5631 lt!1258105) (t!295863 lt!1258124)))))

(declare-fun b!3636637 () Bool)

(assert (=> b!3636637 (= e!2251100 lt!1258105)))

(assert (= (and d!1069507 c!628949) b!3636636))

(assert (= (and d!1069507 (not c!628949)) b!3636637))

(declare-fun m!4139119 () Bool)

(assert (=> d!1069507 m!4139119))

(assert (=> d!1069507 m!4138705))

(assert (=> d!1069507 m!4138285))

(assert (=> b!3636636 m!4138711))

(assert (=> b!3636636 m!4138711))

(declare-fun m!4139121 () Bool)

(assert (=> b!3636636 m!4139121))

(assert (=> b!3635951 d!1069507))

(declare-fun d!1069509 () Bool)

(assert (=> d!1069509 (= (seqFromList!4269 lt!1258124) (fromListB!1969 lt!1258124))))

(declare-fun bs!571824 () Bool)

(assert (= bs!571824 d!1069509))

(declare-fun m!4139123 () Bool)

(assert (=> bs!571824 m!4139123))

(assert (=> b!3635951 d!1069509))

(declare-fun d!1069511 () Bool)

(assert (=> d!1069511 (= (maxPrefixOneRule!1981 thiss!23823 (rule!8494 (_1!22224 lt!1258108)) lt!1258105) (Some!8067 (tuple2!38181 (Token!10807 (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) (seqFromList!4269 lt!1258124)) (rule!8494 (_1!22224 lt!1258108)) (size!29241 lt!1258124) lt!1258124) (_2!22224 lt!1258108))))))

(declare-fun lt!1258408 () Unit!55142)

(declare-fun choose!21366 (LexerInterface!5309 List!38441 List!38440 List!38440 List!38440 Rule!11240) Unit!55142)

(assert (=> d!1069511 (= lt!1258408 (choose!21366 thiss!23823 rules!3307 lt!1258124 lt!1258105 (_2!22224 lt!1258108) (rule!8494 (_1!22224 lt!1258108))))))

(assert (=> d!1069511 (not (isEmpty!22677 rules!3307))))

(assert (=> d!1069511 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1037 thiss!23823 rules!3307 lt!1258124 lt!1258105 (_2!22224 lt!1258108) (rule!8494 (_1!22224 lt!1258108))) lt!1258408)))

(declare-fun bs!571825 () Bool)

(assert (= bs!571825 d!1069511))

(assert (=> bs!571825 m!4138277))

(assert (=> bs!571825 m!4138285))

(assert (=> bs!571825 m!4138279))

(declare-fun m!4139125 () Bool)

(assert (=> bs!571825 m!4139125))

(assert (=> bs!571825 m!4138279))

(assert (=> bs!571825 m!4138281))

(assert (=> bs!571825 m!4138221))

(assert (=> b!3635951 d!1069511))

(declare-fun d!1069513 () Bool)

(declare-fun lt!1258411 () Int)

(assert (=> d!1069513 (>= lt!1258411 0)))

(declare-fun e!2251103 () Int)

(assert (=> d!1069513 (= lt!1258411 e!2251103)))

(declare-fun c!628952 () Bool)

(assert (=> d!1069513 (= c!628952 ((_ is Nil!38316) lt!1258124))))

(assert (=> d!1069513 (= (size!29241 lt!1258124) lt!1258411)))

(declare-fun b!3636642 () Bool)

(assert (=> b!3636642 (= e!2251103 0)))

(declare-fun b!3636643 () Bool)

(assert (=> b!3636643 (= e!2251103 (+ 1 (size!29241 (t!295863 lt!1258124))))))

(assert (= (and d!1069513 c!628952) b!3636642))

(assert (= (and d!1069513 (not c!628952)) b!3636643))

(declare-fun m!4139127 () Bool)

(assert (=> b!3636643 m!4139127))

(assert (=> b!3635951 d!1069513))

(declare-fun b!3636662 () Bool)

(declare-fun res!1473403 () Bool)

(declare-fun e!2251113 () Bool)

(assert (=> b!3636662 (=> (not res!1473403) (not e!2251113))))

(declare-fun lt!1258422 () Option!8068)

(assert (=> b!3636662 (= res!1473403 (= (rule!8494 (_1!22224 (get!12538 lt!1258422))) (rule!8494 (_1!22224 lt!1258108))))))

(declare-fun b!3636663 () Bool)

(declare-fun e!2251115 () Bool)

(declare-datatypes ((tuple2!38188 0))(
  ( (tuple2!38189 (_1!22228 List!38440) (_2!22228 List!38440)) )
))
(declare-fun findLongestMatchInner!1029 (Regex!10479 List!38440 Int List!38440 List!38440 Int) tuple2!38188)

(assert (=> b!3636663 (= e!2251115 (matchR!5048 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) (_1!22228 (findLongestMatchInner!1029 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) Nil!38316 (size!29241 Nil!38316) lt!1258105 lt!1258105 (size!29241 lt!1258105)))))))

(declare-fun b!3636664 () Bool)

(declare-fun res!1473409 () Bool)

(assert (=> b!3636664 (=> (not res!1473409) (not e!2251113))))

(assert (=> b!3636664 (= res!1473409 (< (size!29241 (_2!22224 (get!12538 lt!1258422))) (size!29241 lt!1258105)))))

(declare-fun d!1069515 () Bool)

(declare-fun e!2251112 () Bool)

(assert (=> d!1069515 e!2251112))

(declare-fun res!1473404 () Bool)

(assert (=> d!1069515 (=> res!1473404 e!2251112)))

(assert (=> d!1069515 (= res!1473404 (isEmpty!22680 lt!1258422))))

(declare-fun e!2251114 () Option!8068)

(assert (=> d!1069515 (= lt!1258422 e!2251114)))

(declare-fun c!628955 () Bool)

(declare-fun lt!1258426 () tuple2!38188)

(assert (=> d!1069515 (= c!628955 (isEmpty!22676 (_1!22228 lt!1258426)))))

(declare-fun findLongestMatch!944 (Regex!10479 List!38440) tuple2!38188)

(assert (=> d!1069515 (= lt!1258426 (findLongestMatch!944 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258105))))

(assert (=> d!1069515 (ruleValid!1984 thiss!23823 (rule!8494 (_1!22224 lt!1258108)))))

(assert (=> d!1069515 (= (maxPrefixOneRule!1981 thiss!23823 (rule!8494 (_1!22224 lt!1258108)) lt!1258105) lt!1258422)))

(declare-fun b!3636665 () Bool)

(assert (=> b!3636665 (= e!2251113 (= (size!29239 (_1!22224 (get!12538 lt!1258422))) (size!29241 (originalCharacters!6434 (_1!22224 (get!12538 lt!1258422))))))))

(declare-fun b!3636666 () Bool)

(declare-fun res!1473406 () Bool)

(assert (=> b!3636666 (=> (not res!1473406) (not e!2251113))))

(assert (=> b!3636666 (= res!1473406 (= (value!183480 (_1!22224 (get!12538 lt!1258422))) (apply!9222 (transformation!5720 (rule!8494 (_1!22224 (get!12538 lt!1258422)))) (seqFromList!4269 (originalCharacters!6434 (_1!22224 (get!12538 lt!1258422)))))))))

(declare-fun b!3636667 () Bool)

(assert (=> b!3636667 (= e!2251112 e!2251113)))

(declare-fun res!1473408 () Bool)

(assert (=> b!3636667 (=> (not res!1473408) (not e!2251113))))

(assert (=> b!3636667 (= res!1473408 (matchR!5048 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258422))))))))

(declare-fun b!3636668 () Bool)

(assert (=> b!3636668 (= e!2251114 (Some!8067 (tuple2!38181 (Token!10807 (apply!9222 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) (seqFromList!4269 (_1!22228 lt!1258426))) (rule!8494 (_1!22224 lt!1258108)) (size!29240 (seqFromList!4269 (_1!22228 lt!1258426))) (_1!22228 lt!1258426)) (_2!22228 lt!1258426))))))

(declare-fun lt!1258423 () Unit!55142)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1002 (Regex!10479 List!38440) Unit!55142)

(assert (=> b!3636668 (= lt!1258423 (longestMatchIsAcceptedByMatchOrIsEmpty!1002 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) lt!1258105))))

(declare-fun res!1473405 () Bool)

(assert (=> b!3636668 (= res!1473405 (isEmpty!22676 (_1!22228 (findLongestMatchInner!1029 (regex!5720 (rule!8494 (_1!22224 lt!1258108))) Nil!38316 (size!29241 Nil!38316) lt!1258105 lt!1258105 (size!29241 lt!1258105)))))))

(assert (=> b!3636668 (=> res!1473405 e!2251115)))

(assert (=> b!3636668 e!2251115))

(declare-fun lt!1258425 () Unit!55142)

(assert (=> b!3636668 (= lt!1258425 lt!1258423)))

(declare-fun lt!1258424 () Unit!55142)

(assert (=> b!3636668 (= lt!1258424 (lemmaSemiInverse!1469 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))) (seqFromList!4269 (_1!22228 lt!1258426))))))

(declare-fun b!3636669 () Bool)

(assert (=> b!3636669 (= e!2251114 None!8067)))

(declare-fun b!3636670 () Bool)

(declare-fun res!1473407 () Bool)

(assert (=> b!3636670 (=> (not res!1473407) (not e!2251113))))

(assert (=> b!3636670 (= res!1473407 (= (++!9536 (list!14174 (charsOf!3734 (_1!22224 (get!12538 lt!1258422)))) (_2!22224 (get!12538 lt!1258422))) lt!1258105))))

(assert (= (and d!1069515 c!628955) b!3636669))

(assert (= (and d!1069515 (not c!628955)) b!3636668))

(assert (= (and b!3636668 (not res!1473405)) b!3636663))

(assert (= (and d!1069515 (not res!1473404)) b!3636667))

(assert (= (and b!3636667 res!1473408) b!3636670))

(assert (= (and b!3636670 res!1473407) b!3636664))

(assert (= (and b!3636664 res!1473409) b!3636662))

(assert (= (and b!3636662 res!1473403) b!3636666))

(assert (= (and b!3636666 res!1473406) b!3636665))

(declare-fun m!4139129 () Bool)

(assert (=> b!3636666 m!4139129))

(declare-fun m!4139131 () Bool)

(assert (=> b!3636666 m!4139131))

(assert (=> b!3636666 m!4139131))

(declare-fun m!4139133 () Bool)

(assert (=> b!3636666 m!4139133))

(declare-fun m!4139135 () Bool)

(assert (=> b!3636668 m!4139135))

(declare-fun m!4139137 () Bool)

(assert (=> b!3636668 m!4139137))

(declare-fun m!4139139 () Bool)

(assert (=> b!3636668 m!4139139))

(assert (=> b!3636668 m!4139135))

(declare-fun m!4139141 () Bool)

(assert (=> b!3636668 m!4139141))

(assert (=> b!3636668 m!4138705))

(assert (=> b!3636668 m!4139135))

(declare-fun m!4139143 () Bool)

(assert (=> b!3636668 m!4139143))

(declare-fun m!4139145 () Bool)

(assert (=> b!3636668 m!4139145))

(assert (=> b!3636668 m!4138705))

(declare-fun m!4139147 () Bool)

(assert (=> b!3636668 m!4139147))

(declare-fun m!4139149 () Bool)

(assert (=> b!3636668 m!4139149))

(assert (=> b!3636668 m!4139145))

(assert (=> b!3636668 m!4139135))

(assert (=> b!3636662 m!4139129))

(assert (=> b!3636663 m!4139145))

(assert (=> b!3636663 m!4138705))

(assert (=> b!3636663 m!4139145))

(assert (=> b!3636663 m!4138705))

(assert (=> b!3636663 m!4139147))

(declare-fun m!4139151 () Bool)

(assert (=> b!3636663 m!4139151))

(assert (=> b!3636665 m!4139129))

(declare-fun m!4139153 () Bool)

(assert (=> b!3636665 m!4139153))

(assert (=> b!3636664 m!4139129))

(declare-fun m!4139155 () Bool)

(assert (=> b!3636664 m!4139155))

(assert (=> b!3636664 m!4138705))

(assert (=> b!3636670 m!4139129))

(declare-fun m!4139157 () Bool)

(assert (=> b!3636670 m!4139157))

(assert (=> b!3636670 m!4139157))

(declare-fun m!4139159 () Bool)

(assert (=> b!3636670 m!4139159))

(assert (=> b!3636670 m!4139159))

(declare-fun m!4139161 () Bool)

(assert (=> b!3636670 m!4139161))

(declare-fun m!4139163 () Bool)

(assert (=> d!1069515 m!4139163))

(declare-fun m!4139165 () Bool)

(assert (=> d!1069515 m!4139165))

(declare-fun m!4139167 () Bool)

(assert (=> d!1069515 m!4139167))

(declare-fun m!4139169 () Bool)

(assert (=> d!1069515 m!4139169))

(assert (=> b!3636667 m!4139129))

(assert (=> b!3636667 m!4139157))

(assert (=> b!3636667 m!4139157))

(assert (=> b!3636667 m!4139159))

(assert (=> b!3636667 m!4139159))

(declare-fun m!4139171 () Bool)

(assert (=> b!3636667 m!4139171))

(assert (=> b!3635951 d!1069515))

(declare-fun d!1069517 () Bool)

(assert (=> d!1069517 (= (isEmpty!22677 rules!3307) ((_ is Nil!38317) rules!3307))))

(assert (=> b!3635953 d!1069517))

(declare-fun d!1069519 () Bool)

(declare-fun res!1473412 () Bool)

(declare-fun e!2251118 () Bool)

(assert (=> d!1069519 (=> (not res!1473412) (not e!2251118))))

(declare-fun rulesValid!2190 (LexerInterface!5309 List!38441) Bool)

(assert (=> d!1069519 (= res!1473412 (rulesValid!2190 thiss!23823 rules!3307))))

(assert (=> d!1069519 (= (rulesInvariant!4706 thiss!23823 rules!3307) e!2251118)))

(declare-fun b!3636673 () Bool)

(declare-datatypes ((List!38445 0))(
  ( (Nil!38321) (Cons!38321 (h!43741 String!43084) (t!295988 List!38445)) )
))
(declare-fun noDuplicateTag!2186 (LexerInterface!5309 List!38441 List!38445) Bool)

(assert (=> b!3636673 (= e!2251118 (noDuplicateTag!2186 thiss!23823 rules!3307 Nil!38321))))

(assert (= (and d!1069519 res!1473412) b!3636673))

(declare-fun m!4139173 () Bool)

(assert (=> d!1069519 m!4139173))

(declare-fun m!4139175 () Bool)

(assert (=> b!3636673 m!4139175))

(assert (=> b!3635956 d!1069519))

(declare-fun b!3636685 () Bool)

(declare-fun e!2251121 () Bool)

(declare-fun tp!1109775 () Bool)

(declare-fun tp!1109776 () Bool)

(assert (=> b!3636685 (= e!2251121 (and tp!1109775 tp!1109776))))

(declare-fun b!3636684 () Bool)

(assert (=> b!3636684 (= e!2251121 tp_is_empty!18041)))

(declare-fun b!3636686 () Bool)

(declare-fun tp!1109774 () Bool)

(assert (=> b!3636686 (= e!2251121 tp!1109774)))

(declare-fun b!3636687 () Bool)

(declare-fun tp!1109773 () Bool)

(declare-fun tp!1109777 () Bool)

(assert (=> b!3636687 (= e!2251121 (and tp!1109773 tp!1109777))))

(assert (=> b!3635936 (= tp!1109693 e!2251121)))

(assert (= (and b!3635936 ((_ is ElementMatch!10479) (regex!5720 rule!403))) b!3636684))

(assert (= (and b!3635936 ((_ is Concat!16430) (regex!5720 rule!403))) b!3636685))

(assert (= (and b!3635936 ((_ is Star!10479) (regex!5720 rule!403))) b!3636686))

(assert (= (and b!3635936 ((_ is Union!10479) (regex!5720 rule!403))) b!3636687))

(declare-fun b!3636689 () Bool)

(declare-fun e!2251122 () Bool)

(declare-fun tp!1109780 () Bool)

(declare-fun tp!1109781 () Bool)

(assert (=> b!3636689 (= e!2251122 (and tp!1109780 tp!1109781))))

(declare-fun b!3636688 () Bool)

(assert (=> b!3636688 (= e!2251122 tp_is_empty!18041)))

(declare-fun b!3636690 () Bool)

(declare-fun tp!1109779 () Bool)

(assert (=> b!3636690 (= e!2251122 tp!1109779)))

(declare-fun b!3636691 () Bool)

(declare-fun tp!1109778 () Bool)

(declare-fun tp!1109782 () Bool)

(assert (=> b!3636691 (= e!2251122 (and tp!1109778 tp!1109782))))

(assert (=> b!3635946 (= tp!1109705 e!2251122)))

(assert (= (and b!3635946 ((_ is ElementMatch!10479) (regex!5720 (rule!8494 token!511)))) b!3636688))

(assert (= (and b!3635946 ((_ is Concat!16430) (regex!5720 (rule!8494 token!511)))) b!3636689))

(assert (= (and b!3635946 ((_ is Star!10479) (regex!5720 (rule!8494 token!511)))) b!3636690))

(assert (= (and b!3635946 ((_ is Union!10479) (regex!5720 (rule!8494 token!511)))) b!3636691))

(declare-fun b!3636702 () Bool)

(declare-fun b_free!95229 () Bool)

(declare-fun b_next!95933 () Bool)

(assert (=> b!3636702 (= b_free!95229 (not b_next!95933))))

(declare-fun tb!209289 () Bool)

(declare-fun t!295975 () Bool)

(assert (=> (and b!3636702 (= (toValue!8012 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295975) tb!209289))

(declare-fun result!254928 () Bool)

(assert (= result!254928 result!254908))

(assert (=> d!1069499 t!295975))

(declare-fun tb!209291 () Bool)

(declare-fun t!295977 () Bool)

(assert (=> (and b!3636702 (= (toValue!8012 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295977) tb!209291))

(declare-fun result!254930 () Bool)

(assert (= result!254930 result!254916))

(assert (=> d!1069505 t!295977))

(declare-fun tb!209293 () Bool)

(declare-fun t!295979 () Bool)

(assert (=> (and b!3636702 (= (toValue!8012 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toValue!8012 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295979) tb!209293))

(declare-fun result!254932 () Bool)

(assert (= result!254932 result!254898))

(assert (=> d!1069499 t!295979))

(assert (=> d!1069497 t!295979))

(assert (=> d!1069449 t!295979))

(declare-fun b_and!267623 () Bool)

(declare-fun tp!1109792 () Bool)

(assert (=> b!3636702 (= tp!1109792 (and (=> t!295975 result!254928) (=> t!295977 result!254930) (=> t!295979 result!254932) b_and!267623))))

(declare-fun b_free!95231 () Bool)

(declare-fun b_next!95935 () Bool)

(assert (=> b!3636702 (= b_free!95231 (not b_next!95935))))

(declare-fun t!295981 () Bool)

(declare-fun tb!209295 () Bool)

(assert (=> (and b!3636702 (= (toChars!7871 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toChars!7871 (transformation!5720 (rule!8494 token!511)))) t!295981) tb!209295))

(declare-fun result!254934 () Bool)

(assert (= result!254934 result!254812))

(assert (=> b!3636132 t!295981))

(declare-fun tb!209297 () Bool)

(declare-fun t!295983 () Bool)

(assert (=> (and b!3636702 (= (toChars!7871 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295983) tb!209297))

(declare-fun result!254936 () Bool)

(assert (= result!254936 result!254830))

(assert (=> d!1069383 t!295983))

(assert (=> d!1069435 t!295981))

(declare-fun t!295985 () Bool)

(declare-fun tb!209299 () Bool)

(assert (=> (and b!3636702 (= (toChars!7871 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toChars!7871 (transformation!5720 (rule!8494 (_1!22224 lt!1258108))))) t!295985) tb!209299))

(declare-fun result!254938 () Bool)

(assert (= result!254938 result!254890))

(assert (=> d!1069449 t!295985))

(declare-fun tp!1109794 () Bool)

(declare-fun b_and!267625 () Bool)

(assert (=> b!3636702 (= tp!1109794 (and (=> t!295981 result!254934) (=> t!295983 result!254936) (=> t!295985 result!254938) b_and!267625))))

(declare-fun e!2251131 () Bool)

(assert (=> b!3636702 (= e!2251131 (and tp!1109792 tp!1109794))))

(declare-fun e!2251133 () Bool)

(declare-fun b!3636701 () Bool)

(declare-fun tp!1109791 () Bool)

(assert (=> b!3636701 (= e!2251133 (and tp!1109791 (inv!51741 (tag!6460 (h!43737 (t!295864 rules!3307)))) (inv!51744 (transformation!5720 (h!43737 (t!295864 rules!3307)))) e!2251131))))

(declare-fun b!3636700 () Bool)

(declare-fun e!2251134 () Bool)

(declare-fun tp!1109793 () Bool)

(assert (=> b!3636700 (= e!2251134 (and e!2251133 tp!1109793))))

(assert (=> b!3635948 (= tp!1109703 e!2251134)))

(assert (= b!3636701 b!3636702))

(assert (= b!3636700 b!3636701))

(assert (= (and b!3635948 ((_ is Cons!38317) (t!295864 rules!3307))) b!3636700))

(declare-fun m!4139177 () Bool)

(assert (=> b!3636701 m!4139177))

(declare-fun m!4139179 () Bool)

(assert (=> b!3636701 m!4139179))

(declare-fun b!3636707 () Bool)

(declare-fun e!2251137 () Bool)

(declare-fun tp!1109797 () Bool)

(assert (=> b!3636707 (= e!2251137 (and tp_is_empty!18041 tp!1109797))))

(assert (=> b!3635937 (= tp!1109704 e!2251137)))

(assert (= (and b!3635937 ((_ is Cons!38316) (t!295863 suffix!1395))) b!3636707))

(declare-fun b!3636709 () Bool)

(declare-fun e!2251138 () Bool)

(declare-fun tp!1109800 () Bool)

(declare-fun tp!1109801 () Bool)

(assert (=> b!3636709 (= e!2251138 (and tp!1109800 tp!1109801))))

(declare-fun b!3636708 () Bool)

(assert (=> b!3636708 (= e!2251138 tp_is_empty!18041)))

(declare-fun b!3636710 () Bool)

(declare-fun tp!1109799 () Bool)

(assert (=> b!3636710 (= e!2251138 tp!1109799)))

(declare-fun b!3636711 () Bool)

(declare-fun tp!1109798 () Bool)

(declare-fun tp!1109802 () Bool)

(assert (=> b!3636711 (= e!2251138 (and tp!1109798 tp!1109802))))

(assert (=> b!3635965 (= tp!1109697 e!2251138)))

(assert (= (and b!3635965 ((_ is ElementMatch!10479) (regex!5720 (h!43737 rules!3307)))) b!3636708))

(assert (= (and b!3635965 ((_ is Concat!16430) (regex!5720 (h!43737 rules!3307)))) b!3636709))

(assert (= (and b!3635965 ((_ is Star!10479) (regex!5720 (h!43737 rules!3307)))) b!3636710))

(assert (= (and b!3635965 ((_ is Union!10479) (regex!5720 (h!43737 rules!3307)))) b!3636711))

(declare-fun b!3636713 () Bool)

(declare-fun e!2251139 () Bool)

(declare-fun tp!1109805 () Bool)

(declare-fun tp!1109806 () Bool)

(assert (=> b!3636713 (= e!2251139 (and tp!1109805 tp!1109806))))

(declare-fun b!3636712 () Bool)

(assert (=> b!3636712 (= e!2251139 tp_is_empty!18041)))

(declare-fun b!3636714 () Bool)

(declare-fun tp!1109804 () Bool)

(assert (=> b!3636714 (= e!2251139 tp!1109804)))

(declare-fun b!3636715 () Bool)

(declare-fun tp!1109803 () Bool)

(declare-fun tp!1109807 () Bool)

(assert (=> b!3636715 (= e!2251139 (and tp!1109803 tp!1109807))))

(assert (=> b!3635943 (= tp!1109701 e!2251139)))

(assert (= (and b!3635943 ((_ is ElementMatch!10479) (regex!5720 anOtherTypeRule!33))) b!3636712))

(assert (= (and b!3635943 ((_ is Concat!16430) (regex!5720 anOtherTypeRule!33))) b!3636713))

(assert (= (and b!3635943 ((_ is Star!10479) (regex!5720 anOtherTypeRule!33))) b!3636714))

(assert (= (and b!3635943 ((_ is Union!10479) (regex!5720 anOtherTypeRule!33))) b!3636715))

(declare-fun b!3636716 () Bool)

(declare-fun e!2251140 () Bool)

(declare-fun tp!1109808 () Bool)

(assert (=> b!3636716 (= e!2251140 (and tp_is_empty!18041 tp!1109808))))

(assert (=> b!3635966 (= tp!1109702 e!2251140)))

(assert (= (and b!3635966 ((_ is Cons!38316) (originalCharacters!6434 token!511))) b!3636716))

(declare-fun b_lambda!107763 () Bool)

(assert (= b_lambda!107731 (or (and b!3636702 b_free!95231 (= (toChars!7871 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635950 b_free!95215) (and b!3635944 b_free!95223 (= (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635942 b_free!95219 (= (toChars!7871 (transformation!5720 rule!403)) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635962 b_free!95211 (= (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) b_lambda!107763)))

(declare-fun b_lambda!107765 () Bool)

(assert (= b_lambda!107725 (or (and b!3636702 b_free!95231 (= (toChars!7871 (transformation!5720 (h!43737 (t!295864 rules!3307)))) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635950 b_free!95215) (and b!3635944 b_free!95223 (= (toChars!7871 (transformation!5720 anOtherTypeRule!33)) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635942 b_free!95219 (= (toChars!7871 (transformation!5720 rule!403)) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) (and b!3635962 b_free!95211 (= (toChars!7871 (transformation!5720 (h!43737 rules!3307))) (toChars!7871 (transformation!5720 (rule!8494 token!511))))) b_lambda!107765)))

(check-sat (not bm!262930) b_and!267619 (not b!3636454) (not d!1069383) (not b!3636464) (not d!1069423) (not d!1069387) (not b_lambda!107755) (not b!3636663) (not b_next!95923) b_and!267579 (not b!3636367) (not b!3636309) b_and!267625 (not b!3636422) b_and!267621 (not bm!262913) (not b!3636363) (not b!3636292) (not b!3636665) (not b!3636436) (not b!3636308) (not tb!209189) (not bm!262934) (not b_lambda!107753) (not d!1069431) (not b_lambda!107759) (not bm!262935) (not d!1069503) b_and!267623 (not d!1069401) (not b!3636291) (not b!3636132) (not d!1069509) (not b!3636716) (not b_next!95927) (not bm!262933) (not b!3636456) (not b!3636664) (not b!3636424) (not b_next!95925) (not b!3636349) b_and!267617 (not b!3636715) (not b!3636687) (not d!1069445) (not d!1069427) (not d!1069441) (not tb!209273) (not d!1069449) (not b_lambda!107729) (not b!3636353) (not b!3636689) (not d!1069399) (not tb!209265) (not b!3636364) (not b!3636636) (not b!3636459) (not b!3636323) b_and!267577 (not b!3636667) (not d!1069297) (not b_lambda!107757) (not d!1069417) (not b!3636070) (not d!1069373) (not b!3636466) (not d!1069323) (not b!3636710) (not d!1069443) (not b!3636416) (not b!3636668) (not b!3636461) (not b!3636326) (not bm!262929) (not b!3636465) b_and!267581 (not b!3636630) (not b!3636406) (not b!3636482) (not b_next!95913) (not b!3636444) (not b!3636350) (not b!3636304) (not b!3636690) (not d!1069515) (not b!3636398) (not b!3636410) (not b!3636700) (not b_next!95919) (not b!3636713) (not b!3636707) (not b!3636408) (not b_lambda!107763) (not b!3636412) (not bm!262925) (not b!3636685) (not d!1069311) (not b!3636701) (not b!3636193) (not d!1069391) (not b_lambda!107761) (not d!1069403) (not tb!209281) (not b!3636460) (not d!1069419) (not b!3636303) (not b!3636427) (not b!3636305) (not b!3636439) (not b!3636064) (not b_lambda!107765) (not bm!262928) (not tb!209257) (not b!3636618) (not b!3636352) (not d!1069511) (not b!3636307) (not b_next!95915) (not b!3636401) (not b!3636478) (not b_next!95935) (not b!3636162) (not d!1069415) tp_is_empty!18041 (not b!3636126) (not b!3636629) (not b!3636354) (not b!3636402) (not d!1069385) (not d!1069499) (not d!1069507) (not b!3636328) (not d!1069377) (not b!3636355) (not tb!209205) (not b!3636666) (not d!1069519) (not d!1069447) (not d!1069435) (not b!3636192) (not b_next!95917) (not b!3636322) (not b!3636673) (not b!3636290) (not b_next!95921) (not b!3636368) (not b!3636479) (not b!3636457) (not d!1069371) (not b!3636348) (not b!3636360) (not d!1069501) (not d!1069315) (not d!1069307) b_and!267615 (not b!3636462) (not b!3636481) (not d!1069433) (not d!1069407) (not b!3636691) (not b!3636351) (not b!3636714) (not b!3636369) (not b_lambda!107751) (not d!1069381) (not d!1069429) (not b!3636643) (not b!3636361) (not d!1069299) (not b!3636686) b_and!267575 (not bm!262914) (not b!3636142) (not b!3636484) (not b!3636415) (not d!1069393) (not b!3636709) (not b!3636440) (not b!3636448) (not b!3636711) (not b!3636133) (not b!3636662) (not b!3636670) (not b!3636127) (not bm!262931) (not b_next!95933) (not b!3636420) (not bm!262916) (not b!3636463) (not b!3636446))
(check-sat b_and!267619 b_and!267623 (not b_next!95927) b_and!267577 (not b_next!95919) (not b_next!95917) (not b_next!95921) b_and!267615 b_and!267575 (not b_next!95933) b_and!267579 (not b_next!95923) b_and!267625 b_and!267621 b_and!267617 (not b_next!95925) b_and!267581 (not b_next!95913) (not b_next!95915) (not b_next!95935))
