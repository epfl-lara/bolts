; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190276 () Bool)

(assert start!190276)

(declare-fun b!1897748 () Bool)

(declare-fun b_free!53121 () Bool)

(declare-fun b_next!53825 () Bool)

(assert (=> b!1897748 (= b_free!53121 (not b_next!53825))))

(declare-fun tp!541797 () Bool)

(declare-fun b_and!146611 () Bool)

(assert (=> b!1897748 (= tp!541797 b_and!146611)))

(declare-fun b_free!53123 () Bool)

(declare-fun b_next!53827 () Bool)

(assert (=> b!1897748 (= b_free!53123 (not b_next!53827))))

(declare-fun tp!541802 () Bool)

(declare-fun b_and!146613 () Bool)

(assert (=> b!1897748 (= tp!541802 b_and!146613)))

(declare-fun b!1897730 () Bool)

(declare-fun b_free!53125 () Bool)

(declare-fun b_next!53829 () Bool)

(assert (=> b!1897730 (= b_free!53125 (not b_next!53829))))

(declare-fun tp!541798 () Bool)

(declare-fun b_and!146615 () Bool)

(assert (=> b!1897730 (= tp!541798 b_and!146615)))

(declare-fun b_free!53127 () Bool)

(declare-fun b_next!53831 () Bool)

(assert (=> b!1897730 (= b_free!53127 (not b_next!53831))))

(declare-fun tp!541803 () Bool)

(declare-fun b_and!146617 () Bool)

(assert (=> b!1897730 (= tp!541803 b_and!146617)))

(declare-fun b!1897742 () Bool)

(declare-fun b_free!53129 () Bool)

(declare-fun b_next!53833 () Bool)

(assert (=> b!1897742 (= b_free!53129 (not b_next!53833))))

(declare-fun tp!541792 () Bool)

(declare-fun b_and!146619 () Bool)

(assert (=> b!1897742 (= tp!541792 b_and!146619)))

(declare-fun b_free!53131 () Bool)

(declare-fun b_next!53835 () Bool)

(assert (=> b!1897742 (= b_free!53131 (not b_next!53835))))

(declare-fun tp!541800 () Bool)

(declare-fun b_and!146621 () Bool)

(assert (=> b!1897742 (= tp!541800 b_and!146621)))

(declare-fun b!1897724 () Bool)

(declare-fun res!847082 () Bool)

(declare-fun e!1211738 () Bool)

(assert (=> b!1897724 (=> (not res!847082) (not e!1211738))))

(declare-datatypes ((LexerInterface!3399 0))(
  ( (LexerInterfaceExt!3396 (__x!13342 Int)) (Lexer!3397) )
))
(declare-fun thiss!23328 () LexerInterface!3399)

(declare-datatypes ((List!21392 0))(
  ( (Nil!21310) (Cons!21310 (h!26711 (_ BitVec 16)) (t!176447 List!21392)) )
))
(declare-datatypes ((TokenValue!3922 0))(
  ( (FloatLiteralValue!7844 (text!27899 List!21392)) (TokenValueExt!3921 (__x!13343 Int)) (Broken!19610 (value!119466 List!21392)) (Object!4003) (End!3922) (Def!3922) (Underscore!3922) (Match!3922) (Else!3922) (Error!3922) (Case!3922) (If!3922) (Extends!3922) (Abstract!3922) (Class!3922) (Val!3922) (DelimiterValue!7844 (del!3982 List!21392)) (KeywordValue!3928 (value!119467 List!21392)) (CommentValue!7844 (value!119468 List!21392)) (WhitespaceValue!7844 (value!119469 List!21392)) (IndentationValue!3922 (value!119470 List!21392)) (String!24727) (Int32!3922) (Broken!19611 (value!119471 List!21392)) (Boolean!3923) (Unit!35653) (OperatorValue!3925 (op!3982 List!21392)) (IdentifierValue!7844 (value!119472 List!21392)) (IdentifierValue!7845 (value!119473 List!21392)) (WhitespaceValue!7845 (value!119474 List!21392)) (True!7844) (False!7844) (Broken!19612 (value!119475 List!21392)) (Broken!19613 (value!119476 List!21392)) (True!7845) (RightBrace!3922) (RightBracket!3922) (Colon!3922) (Null!3922) (Comma!3922) (LeftBracket!3922) (False!7845) (LeftBrace!3922) (ImaginaryLiteralValue!3922 (text!27900 List!21392)) (StringLiteralValue!11766 (value!119477 List!21392)) (EOFValue!3922 (value!119478 List!21392)) (IdentValue!3922 (value!119479 List!21392)) (DelimiterValue!7845 (value!119480 List!21392)) (DedentValue!3922 (value!119481 List!21392)) (NewLineValue!3922 (value!119482 List!21392)) (IntegerValue!11766 (value!119483 (_ BitVec 32)) (text!27901 List!21392)) (IntegerValue!11767 (value!119484 Int) (text!27902 List!21392)) (Times!3922) (Or!3922) (Equal!3922) (Minus!3922) (Broken!19614 (value!119485 List!21392)) (And!3922) (Div!3922) (LessEqual!3922) (Mod!3922) (Concat!9133) (Not!3922) (Plus!3922) (SpaceValue!3922 (value!119486 List!21392)) (IntegerValue!11768 (value!119487 Int) (text!27903 List!21392)) (StringLiteralValue!11767 (text!27904 List!21392)) (FloatLiteralValue!7845 (text!27905 List!21392)) (BytesLiteralValue!3922 (value!119488 List!21392)) (CommentValue!7845 (value!119489 List!21392)) (StringLiteralValue!11768 (value!119490 List!21392)) (ErrorTokenValue!3922 (msg!3983 List!21392)) )
))
(declare-datatypes ((C!10568 0))(
  ( (C!10569 (val!6236 Int)) )
))
(declare-datatypes ((List!21393 0))(
  ( (Nil!21311) (Cons!21311 (h!26712 C!10568) (t!176448 List!21393)) )
))
(declare-datatypes ((String!24728 0))(
  ( (String!24729 (value!119491 String)) )
))
(declare-datatypes ((IArray!14191 0))(
  ( (IArray!14192 (innerList!7153 List!21393)) )
))
(declare-datatypes ((Conc!7093 0))(
  ( (Node!7093 (left!17080 Conc!7093) (right!17410 Conc!7093) (csize!14416 Int) (cheight!7304 Int)) (Leaf!10449 (xs!9987 IArray!14191) (csize!14417 Int)) (Empty!7093) )
))
(declare-datatypes ((BalanceConc!14002 0))(
  ( (BalanceConc!14003 (c!309427 Conc!7093)) )
))
(declare-datatypes ((TokenValueInjection!7428 0))(
  ( (TokenValueInjection!7429 (toValue!5403 Int) (toChars!5262 Int)) )
))
(declare-datatypes ((Regex!5211 0))(
  ( (ElementMatch!5211 (c!309428 C!10568)) (Concat!9134 (regOne!10934 Regex!5211) (regTwo!10934 Regex!5211)) (EmptyExpr!5211) (Star!5211 (reg!5540 Regex!5211)) (EmptyLang!5211) (Union!5211 (regOne!10935 Regex!5211) (regTwo!10935 Regex!5211)) )
))
(declare-datatypes ((Rule!7372 0))(
  ( (Rule!7373 (regex!3786 Regex!5211) (tag!4206 String!24728) (isSeparator!3786 Bool) (transformation!3786 TokenValueInjection!7428)) )
))
(declare-datatypes ((List!21394 0))(
  ( (Nil!21312) (Cons!21312 (h!26713 Rule!7372) (t!176449 List!21394)) )
))
(declare-fun rules!3198 () List!21394)

(declare-fun rulesInvariant!3006 (LexerInterface!3399 List!21394) Bool)

(assert (=> b!1897724 (= res!847082 (rulesInvariant!3006 thiss!23328 rules!3198))))

(declare-fun b!1897725 () Bool)

(declare-fun res!847084 () Bool)

(assert (=> b!1897725 (=> (not res!847084) (not e!1211738))))

(declare-datatypes ((Token!7124 0))(
  ( (Token!7125 (value!119492 TokenValue!3922) (rule!5979 Rule!7372) (size!16868 Int) (originalCharacters!4593 List!21393)) )
))
(declare-datatypes ((List!21395 0))(
  ( (Nil!21313) (Cons!21313 (h!26714 Token!7124) (t!176450 List!21395)) )
))
(declare-fun tokens!598 () List!21395)

(declare-fun lambda!74153 () Int)

(declare-fun forall!4464 (List!21395 Int) Bool)

(assert (=> b!1897725 (= res!847084 (forall!4464 tokens!598 lambda!74153))))

(declare-fun b!1897726 () Bool)

(declare-fun res!847086 () Bool)

(assert (=> b!1897726 (=> (not res!847086) (not e!1211738))))

(get-info :version)

(assert (=> b!1897726 (= res!847086 ((_ is Cons!21313) tokens!598))))

(declare-fun b!1897727 () Bool)

(declare-fun res!847085 () Bool)

(assert (=> b!1897727 (=> (not res!847085) (not e!1211738))))

(declare-fun separatorToken!354 () Token!7124)

(assert (=> b!1897727 (= res!847085 (isSeparator!3786 (rule!5979 separatorToken!354)))))

(declare-fun res!847079 () Bool)

(assert (=> start!190276 (=> (not res!847079) (not e!1211738))))

(assert (=> start!190276 (= res!847079 ((_ is Lexer!3397) thiss!23328))))

(assert (=> start!190276 e!1211738))

(assert (=> start!190276 true))

(declare-fun e!1211739 () Bool)

(assert (=> start!190276 e!1211739))

(declare-fun e!1211740 () Bool)

(assert (=> start!190276 e!1211740))

(declare-fun e!1211733 () Bool)

(declare-fun inv!28411 (Token!7124) Bool)

(assert (=> start!190276 (and (inv!28411 separatorToken!354) e!1211733)))

(declare-fun b!1897728 () Bool)

(declare-fun res!847091 () Bool)

(assert (=> b!1897728 (=> (not res!847091) (not e!1211738))))

(declare-fun isEmpty!13076 (List!21394) Bool)

(assert (=> b!1897728 (= res!847091 (not (isEmpty!13076 rules!3198)))))

(declare-fun b!1897729 () Bool)

(declare-fun res!847083 () Bool)

(assert (=> b!1897729 (=> (not res!847083) (not e!1211738))))

(declare-fun sepAndNonSepRulesDisjointChars!884 (List!21394 List!21394) Bool)

(assert (=> b!1897729 (= res!847083 (sepAndNonSepRulesDisjointChars!884 rules!3198 rules!3198))))

(declare-fun e!1211730 () Bool)

(assert (=> b!1897730 (= e!1211730 (and tp!541798 tp!541803))))

(declare-fun b!1897731 () Bool)

(declare-fun e!1211748 () Bool)

(declare-fun tp!541795 () Bool)

(assert (=> b!1897731 (= e!1211739 (and e!1211748 tp!541795))))

(declare-fun b!1897732 () Bool)

(declare-fun e!1211727 () Bool)

(declare-fun lt!725762 () Rule!7372)

(assert (=> b!1897732 (= e!1211727 (= (rule!5979 (h!26714 tokens!598)) lt!725762))))

(declare-fun tp!541793 () Bool)

(declare-fun e!1211742 () Bool)

(declare-fun b!1897733 () Bool)

(assert (=> b!1897733 (= e!1211740 (and (inv!28411 (h!26714 tokens!598)) e!1211742 tp!541793))))

(declare-fun b!1897734 () Bool)

(declare-fun e!1211732 () Bool)

(declare-fun lt!725761 () Rule!7372)

(assert (=> b!1897734 (= e!1211732 (= (rule!5979 separatorToken!354) lt!725761))))

(declare-fun e!1211743 () Bool)

(declare-fun tp!541801 () Bool)

(declare-fun b!1897735 () Bool)

(declare-fun inv!21 (TokenValue!3922) Bool)

(assert (=> b!1897735 (= e!1211733 (and (inv!21 (value!119492 separatorToken!354)) e!1211743 tp!541801))))

(declare-fun e!1211737 () Bool)

(declare-fun b!1897736 () Bool)

(declare-fun tp!541794 () Bool)

(declare-fun inv!28408 (String!24728) Bool)

(declare-fun inv!28412 (TokenValueInjection!7428) Bool)

(assert (=> b!1897736 (= e!1211748 (and tp!541794 (inv!28408 (tag!4206 (h!26713 rules!3198))) (inv!28412 (transformation!3786 (h!26713 rules!3198))) e!1211737))))

(declare-fun b!1897737 () Bool)

(declare-fun e!1211734 () Bool)

(assert (=> b!1897737 (= e!1211734 e!1211732)))

(declare-fun res!847090 () Bool)

(assert (=> b!1897737 (=> (not res!847090) (not e!1211732))))

(declare-fun lt!725758 () List!21393)

(declare-fun matchR!2497 (Regex!5211 List!21393) Bool)

(assert (=> b!1897737 (= res!847090 (matchR!2497 (regex!3786 lt!725761) lt!725758))))

(declare-datatypes ((Option!4277 0))(
  ( (None!4276) (Some!4276 (v!26305 Rule!7372)) )
))
(declare-fun lt!725759 () Option!4277)

(declare-fun get!6577 (Option!4277) Rule!7372)

(assert (=> b!1897737 (= lt!725761 (get!6577 lt!725759))))

(declare-fun b!1897738 () Bool)

(declare-fun res!847089 () Bool)

(assert (=> b!1897738 (=> (not res!847089) (not e!1211738))))

(declare-fun rulesProduceIndividualToken!1571 (LexerInterface!3399 List!21394 Token!7124) Bool)

(assert (=> b!1897738 (= res!847089 (rulesProduceIndividualToken!1571 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1897739 () Bool)

(declare-fun e!1211746 () Bool)

(declare-fun tp!541799 () Bool)

(assert (=> b!1897739 (= e!1211743 (and tp!541799 (inv!28408 (tag!4206 (rule!5979 separatorToken!354))) (inv!28412 (transformation!3786 (rule!5979 separatorToken!354))) e!1211746))))

(declare-fun b!1897740 () Bool)

(declare-fun tp!541796 () Bool)

(declare-fun e!1211741 () Bool)

(assert (=> b!1897740 (= e!1211742 (and (inv!21 (value!119492 (h!26714 tokens!598))) e!1211741 tp!541796))))

(declare-fun b!1897741 () Bool)

(declare-fun e!1211745 () Bool)

(declare-datatypes ((tuple2!20100 0))(
  ( (tuple2!20101 (_1!11519 Token!7124) (_2!11519 List!21393)) )
))
(declare-datatypes ((Option!4278 0))(
  ( (None!4277) (Some!4277 (v!26306 tuple2!20100)) )
))
(declare-fun lt!725757 () Option!4278)

(declare-fun get!6578 (Option!4278) tuple2!20100)

(assert (=> b!1897741 (= e!1211745 (= (_1!11519 (get!6578 lt!725757)) (h!26714 tokens!598)))))

(assert (=> b!1897742 (= e!1211746 (and tp!541792 tp!541800))))

(declare-fun b!1897743 () Bool)

(declare-fun e!1211735 () Bool)

(assert (=> b!1897743 (= e!1211738 (not e!1211735))))

(declare-fun res!847087 () Bool)

(assert (=> b!1897743 (=> res!847087 e!1211735)))

(declare-fun rulesProduceEachTokenIndividuallyList!1130 (LexerInterface!3399 List!21394 List!21395) Bool)

(assert (=> b!1897743 (= res!847087 (not (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 (t!176450 tokens!598))))))

(declare-fun e!1211744 () Bool)

(assert (=> b!1897743 e!1211744))

(declare-fun res!847081 () Bool)

(assert (=> b!1897743 (=> (not res!847081) (not e!1211744))))

(declare-fun lt!725760 () Option!4277)

(declare-fun isDefined!3575 (Option!4277) Bool)

(assert (=> b!1897743 (= res!847081 (isDefined!3575 lt!725760))))

(declare-fun getRuleFromTag!629 (LexerInterface!3399 List!21394 String!24728) Option!4277)

(assert (=> b!1897743 (= lt!725760 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 (h!26714 tokens!598)))))))

(declare-fun lt!725752 () List!21393)

(declare-datatypes ((Unit!35654 0))(
  ( (Unit!35655) )
))
(declare-fun lt!725751 () Unit!35654)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!629 (LexerInterface!3399 List!21394 List!21393 Token!7124) Unit!35654)

(assert (=> b!1897743 (= lt!725751 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!629 thiss!23328 rules!3198 lt!725752 (h!26714 tokens!598)))))

(assert (=> b!1897743 e!1211745))

(declare-fun res!847078 () Bool)

(assert (=> b!1897743 (=> (not res!847078) (not e!1211745))))

(declare-fun isDefined!3576 (Option!4278) Bool)

(assert (=> b!1897743 (= res!847078 (isDefined!3576 lt!725757))))

(declare-fun maxPrefix!1845 (LexerInterface!3399 List!21394 List!21393) Option!4278)

(assert (=> b!1897743 (= lt!725757 (maxPrefix!1845 thiss!23328 rules!3198 lt!725752))))

(declare-fun lt!725756 () BalanceConc!14002)

(declare-fun list!8666 (BalanceConc!14002) List!21393)

(assert (=> b!1897743 (= lt!725752 (list!8666 lt!725756))))

(assert (=> b!1897743 e!1211734))

(declare-fun res!847080 () Bool)

(assert (=> b!1897743 (=> (not res!847080) (not e!1211734))))

(assert (=> b!1897743 (= res!847080 (isDefined!3575 lt!725759))))

(assert (=> b!1897743 (= lt!725759 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 separatorToken!354))))))

(declare-fun lt!725755 () Unit!35654)

(assert (=> b!1897743 (= lt!725755 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!629 thiss!23328 rules!3198 lt!725758 separatorToken!354))))

(declare-fun charsOf!2342 (Token!7124) BalanceConc!14002)

(assert (=> b!1897743 (= lt!725758 (list!8666 (charsOf!2342 separatorToken!354)))))

(declare-fun lt!725754 () Unit!35654)

(declare-fun lemmaEqSameImage!494 (TokenValueInjection!7428 BalanceConc!14002 BalanceConc!14002) Unit!35654)

(declare-fun seqFromList!2658 (List!21393) BalanceConc!14002)

(assert (=> b!1897743 (= lt!725754 (lemmaEqSameImage!494 (transformation!3786 (rule!5979 (h!26714 tokens!598))) lt!725756 (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598)))))))

(declare-fun lt!725753 () Unit!35654)

(declare-fun lemmaSemiInverse!765 (TokenValueInjection!7428 BalanceConc!14002) Unit!35654)

(assert (=> b!1897743 (= lt!725753 (lemmaSemiInverse!765 (transformation!3786 (rule!5979 (h!26714 tokens!598))) lt!725756))))

(assert (=> b!1897743 (= lt!725756 (charsOf!2342 (h!26714 tokens!598)))))

(declare-fun b!1897744 () Bool)

(assert (=> b!1897744 (= e!1211735 (forall!4464 (t!176450 tokens!598) lambda!74153))))

(declare-fun b!1897745 () Bool)

(declare-fun tp!541804 () Bool)

(assert (=> b!1897745 (= e!1211741 (and tp!541804 (inv!28408 (tag!4206 (rule!5979 (h!26714 tokens!598)))) (inv!28412 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) e!1211730))))

(declare-fun b!1897746 () Bool)

(declare-fun res!847077 () Bool)

(assert (=> b!1897746 (=> (not res!847077) (not e!1211738))))

(assert (=> b!1897746 (= res!847077 (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1897747 () Bool)

(assert (=> b!1897747 (= e!1211744 e!1211727)))

(declare-fun res!847088 () Bool)

(assert (=> b!1897747 (=> (not res!847088) (not e!1211727))))

(assert (=> b!1897747 (= res!847088 (matchR!2497 (regex!3786 lt!725762) lt!725752))))

(assert (=> b!1897747 (= lt!725762 (get!6577 lt!725760))))

(assert (=> b!1897748 (= e!1211737 (and tp!541797 tp!541802))))

(assert (= (and start!190276 res!847079) b!1897728))

(assert (= (and b!1897728 res!847091) b!1897724))

(assert (= (and b!1897724 res!847082) b!1897746))

(assert (= (and b!1897746 res!847077) b!1897738))

(assert (= (and b!1897738 res!847089) b!1897727))

(assert (= (and b!1897727 res!847085) b!1897725))

(assert (= (and b!1897725 res!847084) b!1897729))

(assert (= (and b!1897729 res!847083) b!1897726))

(assert (= (and b!1897726 res!847086) b!1897743))

(assert (= (and b!1897743 res!847080) b!1897737))

(assert (= (and b!1897737 res!847090) b!1897734))

(assert (= (and b!1897743 res!847078) b!1897741))

(assert (= (and b!1897743 res!847081) b!1897747))

(assert (= (and b!1897747 res!847088) b!1897732))

(assert (= (and b!1897743 (not res!847087)) b!1897744))

(assert (= b!1897736 b!1897748))

(assert (= b!1897731 b!1897736))

(assert (= (and start!190276 ((_ is Cons!21312) rules!3198)) b!1897731))

(assert (= b!1897745 b!1897730))

(assert (= b!1897740 b!1897745))

(assert (= b!1897733 b!1897740))

(assert (= (and start!190276 ((_ is Cons!21313) tokens!598)) b!1897733))

(assert (= b!1897739 b!1897742))

(assert (= b!1897735 b!1897739))

(assert (= start!190276 b!1897735))

(declare-fun m!2328883 () Bool)

(assert (=> b!1897745 m!2328883))

(declare-fun m!2328885 () Bool)

(assert (=> b!1897745 m!2328885))

(declare-fun m!2328887 () Bool)

(assert (=> b!1897743 m!2328887))

(declare-fun m!2328889 () Bool)

(assert (=> b!1897743 m!2328889))

(declare-fun m!2328891 () Bool)

(assert (=> b!1897743 m!2328891))

(declare-fun m!2328893 () Bool)

(assert (=> b!1897743 m!2328893))

(declare-fun m!2328895 () Bool)

(assert (=> b!1897743 m!2328895))

(assert (=> b!1897743 m!2328889))

(declare-fun m!2328897 () Bool)

(assert (=> b!1897743 m!2328897))

(declare-fun m!2328899 () Bool)

(assert (=> b!1897743 m!2328899))

(declare-fun m!2328901 () Bool)

(assert (=> b!1897743 m!2328901))

(declare-fun m!2328903 () Bool)

(assert (=> b!1897743 m!2328903))

(declare-fun m!2328905 () Bool)

(assert (=> b!1897743 m!2328905))

(declare-fun m!2328907 () Bool)

(assert (=> b!1897743 m!2328907))

(declare-fun m!2328909 () Bool)

(assert (=> b!1897743 m!2328909))

(declare-fun m!2328911 () Bool)

(assert (=> b!1897743 m!2328911))

(assert (=> b!1897743 m!2328901))

(declare-fun m!2328913 () Bool)

(assert (=> b!1897743 m!2328913))

(declare-fun m!2328915 () Bool)

(assert (=> b!1897743 m!2328915))

(declare-fun m!2328917 () Bool)

(assert (=> b!1897743 m!2328917))

(declare-fun m!2328919 () Bool)

(assert (=> b!1897729 m!2328919))

(declare-fun m!2328921 () Bool)

(assert (=> b!1897737 m!2328921))

(declare-fun m!2328923 () Bool)

(assert (=> b!1897737 m!2328923))

(declare-fun m!2328925 () Bool)

(assert (=> b!1897741 m!2328925))

(declare-fun m!2328927 () Bool)

(assert (=> b!1897736 m!2328927))

(declare-fun m!2328929 () Bool)

(assert (=> b!1897736 m!2328929))

(declare-fun m!2328931 () Bool)

(assert (=> b!1897740 m!2328931))

(declare-fun m!2328933 () Bool)

(assert (=> b!1897725 m!2328933))

(declare-fun m!2328935 () Bool)

(assert (=> b!1897746 m!2328935))

(declare-fun m!2328937 () Bool)

(assert (=> b!1897738 m!2328937))

(declare-fun m!2328939 () Bool)

(assert (=> b!1897728 m!2328939))

(declare-fun m!2328941 () Bool)

(assert (=> b!1897739 m!2328941))

(declare-fun m!2328943 () Bool)

(assert (=> b!1897739 m!2328943))

(declare-fun m!2328945 () Bool)

(assert (=> b!1897747 m!2328945))

(declare-fun m!2328947 () Bool)

(assert (=> b!1897747 m!2328947))

(declare-fun m!2328949 () Bool)

(assert (=> b!1897735 m!2328949))

(declare-fun m!2328951 () Bool)

(assert (=> start!190276 m!2328951))

(declare-fun m!2328953 () Bool)

(assert (=> b!1897744 m!2328953))

(declare-fun m!2328955 () Bool)

(assert (=> b!1897724 m!2328955))

(declare-fun m!2328957 () Bool)

(assert (=> b!1897733 m!2328957))

(check-sat (not b!1897725) (not b!1897733) (not b!1897729) b_and!146621 (not b_next!53835) (not b!1897745) b_and!146619 b_and!146613 (not b!1897738) (not b_next!53827) (not b!1897736) (not b!1897731) (not b!1897746) (not b!1897728) (not b_next!53833) (not b_next!53825) (not b!1897741) (not b!1897739) (not b!1897735) b_and!146617 b_and!146611 (not b_next!53829) (not start!190276) (not b!1897743) (not b!1897724) (not b!1897744) (not b_next!53831) (not b!1897747) (not b!1897737) (not b!1897740) b_and!146615)
(check-sat (not b_next!53825) b_and!146617 b_and!146621 (not b_next!53835) b_and!146619 b_and!146613 (not b_next!53827) (not b_next!53831) (not b_next!53833) b_and!146615 b_and!146611 (not b_next!53829))
(get-model)

(declare-fun b!1897844 () Bool)

(declare-fun e!1211805 () Bool)

(declare-fun e!1211808 () Bool)

(assert (=> b!1897844 (= e!1211805 e!1211808)))

(declare-fun res!847163 () Bool)

(assert (=> b!1897844 (=> (not res!847163) (not e!1211808))))

(declare-fun lt!725768 () Bool)

(assert (=> b!1897844 (= res!847163 (not lt!725768))))

(declare-fun b!1897845 () Bool)

(declare-fun res!847164 () Bool)

(declare-fun e!1211804 () Bool)

(assert (=> b!1897845 (=> (not res!847164) (not e!1211804))))

(declare-fun isEmpty!13081 (List!21393) Bool)

(declare-fun tail!2936 (List!21393) List!21393)

(assert (=> b!1897845 (= res!847164 (isEmpty!13081 (tail!2936 lt!725752)))))

(declare-fun b!1897846 () Bool)

(declare-fun e!1211810 () Bool)

(assert (=> b!1897846 (= e!1211810 (not lt!725768))))

(declare-fun b!1897847 () Bool)

(declare-fun e!1211807 () Bool)

(declare-fun call!116986 () Bool)

(assert (=> b!1897847 (= e!1211807 (= lt!725768 call!116986))))

(declare-fun d!581038 () Bool)

(assert (=> d!581038 e!1211807))

(declare-fun c!309444 () Bool)

(assert (=> d!581038 (= c!309444 ((_ is EmptyExpr!5211) (regex!3786 lt!725762)))))

(declare-fun e!1211806 () Bool)

(assert (=> d!581038 (= lt!725768 e!1211806)))

(declare-fun c!309446 () Bool)

(assert (=> d!581038 (= c!309446 (isEmpty!13081 lt!725752))))

(declare-fun validRegex!2107 (Regex!5211) Bool)

(assert (=> d!581038 (validRegex!2107 (regex!3786 lt!725762))))

(assert (=> d!581038 (= (matchR!2497 (regex!3786 lt!725762) lt!725752) lt!725768)))

(declare-fun b!1897848 () Bool)

(declare-fun res!847165 () Bool)

(assert (=> b!1897848 (=> (not res!847165) (not e!1211804))))

(assert (=> b!1897848 (= res!847165 (not call!116986))))

(declare-fun bm!116981 () Bool)

(assert (=> bm!116981 (= call!116986 (isEmpty!13081 lt!725752))))

(declare-fun b!1897849 () Bool)

(declare-fun derivativeStep!1342 (Regex!5211 C!10568) Regex!5211)

(declare-fun head!4410 (List!21393) C!10568)

(assert (=> b!1897849 (= e!1211806 (matchR!2497 (derivativeStep!1342 (regex!3786 lt!725762) (head!4410 lt!725752)) (tail!2936 lt!725752)))))

(declare-fun b!1897850 () Bool)

(assert (=> b!1897850 (= e!1211807 e!1211810)))

(declare-fun c!309445 () Bool)

(assert (=> b!1897850 (= c!309445 ((_ is EmptyLang!5211) (regex!3786 lt!725762)))))

(declare-fun b!1897851 () Bool)

(assert (=> b!1897851 (= e!1211804 (= (head!4410 lt!725752) (c!309428 (regex!3786 lt!725762))))))

(declare-fun b!1897852 () Bool)

(declare-fun e!1211809 () Bool)

(assert (=> b!1897852 (= e!1211809 (not (= (head!4410 lt!725752) (c!309428 (regex!3786 lt!725762)))))))

(declare-fun b!1897853 () Bool)

(assert (=> b!1897853 (= e!1211808 e!1211809)))

(declare-fun res!847162 () Bool)

(assert (=> b!1897853 (=> res!847162 e!1211809)))

(assert (=> b!1897853 (= res!847162 call!116986)))

(declare-fun b!1897854 () Bool)

(declare-fun res!847166 () Bool)

(assert (=> b!1897854 (=> res!847166 e!1211805)))

(assert (=> b!1897854 (= res!847166 (not ((_ is ElementMatch!5211) (regex!3786 lt!725762))))))

(assert (=> b!1897854 (= e!1211810 e!1211805)))

(declare-fun b!1897855 () Bool)

(declare-fun nullable!1583 (Regex!5211) Bool)

(assert (=> b!1897855 (= e!1211806 (nullable!1583 (regex!3786 lt!725762)))))

(declare-fun b!1897856 () Bool)

(declare-fun res!847161 () Bool)

(assert (=> b!1897856 (=> res!847161 e!1211809)))

(assert (=> b!1897856 (= res!847161 (not (isEmpty!13081 (tail!2936 lt!725752))))))

(declare-fun b!1897857 () Bool)

(declare-fun res!847168 () Bool)

(assert (=> b!1897857 (=> res!847168 e!1211805)))

(assert (=> b!1897857 (= res!847168 e!1211804)))

(declare-fun res!847167 () Bool)

(assert (=> b!1897857 (=> (not res!847167) (not e!1211804))))

(assert (=> b!1897857 (= res!847167 lt!725768)))

(assert (= (and d!581038 c!309446) b!1897855))

(assert (= (and d!581038 (not c!309446)) b!1897849))

(assert (= (and d!581038 c!309444) b!1897847))

(assert (= (and d!581038 (not c!309444)) b!1897850))

(assert (= (and b!1897850 c!309445) b!1897846))

(assert (= (and b!1897850 (not c!309445)) b!1897854))

(assert (= (and b!1897854 (not res!847166)) b!1897857))

(assert (= (and b!1897857 res!847167) b!1897848))

(assert (= (and b!1897848 res!847165) b!1897845))

(assert (= (and b!1897845 res!847164) b!1897851))

(assert (= (and b!1897857 (not res!847168)) b!1897844))

(assert (= (and b!1897844 res!847163) b!1897853))

(assert (= (and b!1897853 (not res!847162)) b!1897856))

(assert (= (and b!1897856 (not res!847161)) b!1897852))

(assert (= (or b!1897847 b!1897848 b!1897853) bm!116981))

(declare-fun m!2329001 () Bool)

(assert (=> b!1897851 m!2329001))

(declare-fun m!2329003 () Bool)

(assert (=> bm!116981 m!2329003))

(declare-fun m!2329005 () Bool)

(assert (=> b!1897856 m!2329005))

(assert (=> b!1897856 m!2329005))

(declare-fun m!2329007 () Bool)

(assert (=> b!1897856 m!2329007))

(assert (=> b!1897852 m!2329001))

(declare-fun m!2329009 () Bool)

(assert (=> b!1897855 m!2329009))

(assert (=> d!581038 m!2329003))

(declare-fun m!2329011 () Bool)

(assert (=> d!581038 m!2329011))

(assert (=> b!1897845 m!2329005))

(assert (=> b!1897845 m!2329005))

(assert (=> b!1897845 m!2329007))

(assert (=> b!1897849 m!2329001))

(assert (=> b!1897849 m!2329001))

(declare-fun m!2329013 () Bool)

(assert (=> b!1897849 m!2329013))

(assert (=> b!1897849 m!2329005))

(assert (=> b!1897849 m!2329013))

(assert (=> b!1897849 m!2329005))

(declare-fun m!2329015 () Bool)

(assert (=> b!1897849 m!2329015))

(assert (=> b!1897747 d!581038))

(declare-fun d!581040 () Bool)

(assert (=> d!581040 (= (get!6577 lt!725760) (v!26305 lt!725760))))

(assert (=> b!1897747 d!581040))

(declare-fun b!1897858 () Bool)

(declare-fun e!1211812 () Bool)

(declare-fun e!1211815 () Bool)

(assert (=> b!1897858 (= e!1211812 e!1211815)))

(declare-fun res!847171 () Bool)

(assert (=> b!1897858 (=> (not res!847171) (not e!1211815))))

(declare-fun lt!725769 () Bool)

(assert (=> b!1897858 (= res!847171 (not lt!725769))))

(declare-fun b!1897859 () Bool)

(declare-fun res!847172 () Bool)

(declare-fun e!1211811 () Bool)

(assert (=> b!1897859 (=> (not res!847172) (not e!1211811))))

(assert (=> b!1897859 (= res!847172 (isEmpty!13081 (tail!2936 lt!725758)))))

(declare-fun b!1897860 () Bool)

(declare-fun e!1211817 () Bool)

(assert (=> b!1897860 (= e!1211817 (not lt!725769))))

(declare-fun b!1897861 () Bool)

(declare-fun e!1211814 () Bool)

(declare-fun call!116987 () Bool)

(assert (=> b!1897861 (= e!1211814 (= lt!725769 call!116987))))

(declare-fun d!581042 () Bool)

(assert (=> d!581042 e!1211814))

(declare-fun c!309447 () Bool)

(assert (=> d!581042 (= c!309447 ((_ is EmptyExpr!5211) (regex!3786 lt!725761)))))

(declare-fun e!1211813 () Bool)

(assert (=> d!581042 (= lt!725769 e!1211813)))

(declare-fun c!309449 () Bool)

(assert (=> d!581042 (= c!309449 (isEmpty!13081 lt!725758))))

(assert (=> d!581042 (validRegex!2107 (regex!3786 lt!725761))))

(assert (=> d!581042 (= (matchR!2497 (regex!3786 lt!725761) lt!725758) lt!725769)))

(declare-fun b!1897862 () Bool)

(declare-fun res!847173 () Bool)

(assert (=> b!1897862 (=> (not res!847173) (not e!1211811))))

(assert (=> b!1897862 (= res!847173 (not call!116987))))

(declare-fun bm!116982 () Bool)

(assert (=> bm!116982 (= call!116987 (isEmpty!13081 lt!725758))))

(declare-fun b!1897863 () Bool)

(assert (=> b!1897863 (= e!1211813 (matchR!2497 (derivativeStep!1342 (regex!3786 lt!725761) (head!4410 lt!725758)) (tail!2936 lt!725758)))))

(declare-fun b!1897864 () Bool)

(assert (=> b!1897864 (= e!1211814 e!1211817)))

(declare-fun c!309448 () Bool)

(assert (=> b!1897864 (= c!309448 ((_ is EmptyLang!5211) (regex!3786 lt!725761)))))

(declare-fun b!1897865 () Bool)

(assert (=> b!1897865 (= e!1211811 (= (head!4410 lt!725758) (c!309428 (regex!3786 lt!725761))))))

(declare-fun b!1897866 () Bool)

(declare-fun e!1211816 () Bool)

(assert (=> b!1897866 (= e!1211816 (not (= (head!4410 lt!725758) (c!309428 (regex!3786 lt!725761)))))))

(declare-fun b!1897867 () Bool)

(assert (=> b!1897867 (= e!1211815 e!1211816)))

(declare-fun res!847170 () Bool)

(assert (=> b!1897867 (=> res!847170 e!1211816)))

(assert (=> b!1897867 (= res!847170 call!116987)))

(declare-fun b!1897868 () Bool)

(declare-fun res!847174 () Bool)

(assert (=> b!1897868 (=> res!847174 e!1211812)))

(assert (=> b!1897868 (= res!847174 (not ((_ is ElementMatch!5211) (regex!3786 lt!725761))))))

(assert (=> b!1897868 (= e!1211817 e!1211812)))

(declare-fun b!1897869 () Bool)

(assert (=> b!1897869 (= e!1211813 (nullable!1583 (regex!3786 lt!725761)))))

(declare-fun b!1897870 () Bool)

(declare-fun res!847169 () Bool)

(assert (=> b!1897870 (=> res!847169 e!1211816)))

(assert (=> b!1897870 (= res!847169 (not (isEmpty!13081 (tail!2936 lt!725758))))))

(declare-fun b!1897871 () Bool)

(declare-fun res!847176 () Bool)

(assert (=> b!1897871 (=> res!847176 e!1211812)))

(assert (=> b!1897871 (= res!847176 e!1211811)))

(declare-fun res!847175 () Bool)

(assert (=> b!1897871 (=> (not res!847175) (not e!1211811))))

(assert (=> b!1897871 (= res!847175 lt!725769)))

(assert (= (and d!581042 c!309449) b!1897869))

(assert (= (and d!581042 (not c!309449)) b!1897863))

(assert (= (and d!581042 c!309447) b!1897861))

(assert (= (and d!581042 (not c!309447)) b!1897864))

(assert (= (and b!1897864 c!309448) b!1897860))

(assert (= (and b!1897864 (not c!309448)) b!1897868))

(assert (= (and b!1897868 (not res!847174)) b!1897871))

(assert (= (and b!1897871 res!847175) b!1897862))

(assert (= (and b!1897862 res!847173) b!1897859))

(assert (= (and b!1897859 res!847172) b!1897865))

(assert (= (and b!1897871 (not res!847176)) b!1897858))

(assert (= (and b!1897858 res!847171) b!1897867))

(assert (= (and b!1897867 (not res!847170)) b!1897870))

(assert (= (and b!1897870 (not res!847169)) b!1897866))

(assert (= (or b!1897861 b!1897862 b!1897867) bm!116982))

(declare-fun m!2329017 () Bool)

(assert (=> b!1897865 m!2329017))

(declare-fun m!2329019 () Bool)

(assert (=> bm!116982 m!2329019))

(declare-fun m!2329021 () Bool)

(assert (=> b!1897870 m!2329021))

(assert (=> b!1897870 m!2329021))

(declare-fun m!2329023 () Bool)

(assert (=> b!1897870 m!2329023))

(assert (=> b!1897866 m!2329017))

(declare-fun m!2329025 () Bool)

(assert (=> b!1897869 m!2329025))

(assert (=> d!581042 m!2329019))

(declare-fun m!2329027 () Bool)

(assert (=> d!581042 m!2329027))

(assert (=> b!1897859 m!2329021))

(assert (=> b!1897859 m!2329021))

(assert (=> b!1897859 m!2329023))

(assert (=> b!1897863 m!2329017))

(assert (=> b!1897863 m!2329017))

(declare-fun m!2329029 () Bool)

(assert (=> b!1897863 m!2329029))

(assert (=> b!1897863 m!2329021))

(assert (=> b!1897863 m!2329029))

(assert (=> b!1897863 m!2329021))

(declare-fun m!2329031 () Bool)

(assert (=> b!1897863 m!2329031))

(assert (=> b!1897737 d!581042))

(declare-fun d!581044 () Bool)

(assert (=> d!581044 (= (get!6577 lt!725759) (v!26305 lt!725759))))

(assert (=> b!1897737 d!581044))

(declare-fun d!581046 () Bool)

(declare-fun lt!725776 () Bool)

(declare-fun e!1211826 () Bool)

(assert (=> d!581046 (= lt!725776 e!1211826)))

(declare-fun res!847189 () Bool)

(assert (=> d!581046 (=> (not res!847189) (not e!1211826))))

(declare-datatypes ((IArray!14195 0))(
  ( (IArray!14196 (innerList!7155 List!21395)) )
))
(declare-datatypes ((Conc!7095 0))(
  ( (Node!7095 (left!17086 Conc!7095) (right!17416 Conc!7095) (csize!14420 Int) (cheight!7306 Int)) (Leaf!10451 (xs!9989 IArray!14195) (csize!14421 Int)) (Empty!7095) )
))
(declare-datatypes ((BalanceConc!14006 0))(
  ( (BalanceConc!14007 (c!309494 Conc!7095)) )
))
(declare-fun list!8669 (BalanceConc!14006) List!21395)

(declare-datatypes ((tuple2!20104 0))(
  ( (tuple2!20105 (_1!11521 BalanceConc!14006) (_2!11521 BalanceConc!14002)) )
))
(declare-fun lex!1512 (LexerInterface!3399 List!21394 BalanceConc!14002) tuple2!20104)

(declare-fun print!1441 (LexerInterface!3399 BalanceConc!14006) BalanceConc!14002)

(declare-fun singletonSeq!1839 (Token!7124) BalanceConc!14006)

(assert (=> d!581046 (= res!847189 (= (list!8669 (_1!11521 (lex!1512 thiss!23328 rules!3198 (print!1441 thiss!23328 (singletonSeq!1839 separatorToken!354))))) (list!8669 (singletonSeq!1839 separatorToken!354))))))

(declare-fun e!1211827 () Bool)

(assert (=> d!581046 (= lt!725776 e!1211827)))

(declare-fun res!847188 () Bool)

(assert (=> d!581046 (=> (not res!847188) (not e!1211827))))

(declare-fun lt!725777 () tuple2!20104)

(declare-fun size!16871 (BalanceConc!14006) Int)

(assert (=> d!581046 (= res!847188 (= (size!16871 (_1!11521 lt!725777)) 1))))

(assert (=> d!581046 (= lt!725777 (lex!1512 thiss!23328 rules!3198 (print!1441 thiss!23328 (singletonSeq!1839 separatorToken!354))))))

(assert (=> d!581046 (not (isEmpty!13076 rules!3198))))

(assert (=> d!581046 (= (rulesProduceIndividualToken!1571 thiss!23328 rules!3198 separatorToken!354) lt!725776)))

(declare-fun b!1897882 () Bool)

(declare-fun res!847187 () Bool)

(assert (=> b!1897882 (=> (not res!847187) (not e!1211827))))

(declare-fun apply!5607 (BalanceConc!14006 Int) Token!7124)

(assert (=> b!1897882 (= res!847187 (= (apply!5607 (_1!11521 lt!725777) 0) separatorToken!354))))

(declare-fun b!1897883 () Bool)

(declare-fun isEmpty!13082 (BalanceConc!14002) Bool)

(assert (=> b!1897883 (= e!1211827 (isEmpty!13082 (_2!11521 lt!725777)))))

(declare-fun b!1897884 () Bool)

(assert (=> b!1897884 (= e!1211826 (isEmpty!13082 (_2!11521 (lex!1512 thiss!23328 rules!3198 (print!1441 thiss!23328 (singletonSeq!1839 separatorToken!354))))))))

(assert (= (and d!581046 res!847188) b!1897882))

(assert (= (and b!1897882 res!847187) b!1897883))

(assert (= (and d!581046 res!847189) b!1897884))

(declare-fun m!2329033 () Bool)

(assert (=> d!581046 m!2329033))

(declare-fun m!2329035 () Bool)

(assert (=> d!581046 m!2329035))

(assert (=> d!581046 m!2329035))

(declare-fun m!2329037 () Bool)

(assert (=> d!581046 m!2329037))

(declare-fun m!2329039 () Bool)

(assert (=> d!581046 m!2329039))

(assert (=> d!581046 m!2329033))

(declare-fun m!2329041 () Bool)

(assert (=> d!581046 m!2329041))

(declare-fun m!2329043 () Bool)

(assert (=> d!581046 m!2329043))

(assert (=> d!581046 m!2329033))

(assert (=> d!581046 m!2328939))

(declare-fun m!2329045 () Bool)

(assert (=> b!1897882 m!2329045))

(declare-fun m!2329047 () Bool)

(assert (=> b!1897883 m!2329047))

(assert (=> b!1897884 m!2329033))

(assert (=> b!1897884 m!2329033))

(assert (=> b!1897884 m!2329035))

(assert (=> b!1897884 m!2329035))

(assert (=> b!1897884 m!2329037))

(declare-fun m!2329049 () Bool)

(assert (=> b!1897884 m!2329049))

(assert (=> b!1897738 d!581046))

(declare-fun d!581048 () Bool)

(assert (=> d!581048 (= (isEmpty!13076 rules!3198) ((_ is Nil!21312) rules!3198))))

(assert (=> b!1897728 d!581048))

(declare-fun d!581050 () Bool)

(assert (=> d!581050 (= (inv!28408 (tag!4206 (rule!5979 (h!26714 tokens!598)))) (= (mod (str.len (value!119491 (tag!4206 (rule!5979 (h!26714 tokens!598))))) 2) 0))))

(assert (=> b!1897745 d!581050))

(declare-fun d!581052 () Bool)

(declare-fun res!847192 () Bool)

(declare-fun e!1211830 () Bool)

(assert (=> d!581052 (=> (not res!847192) (not e!1211830))))

(declare-fun semiInverseModEq!1533 (Int Int) Bool)

(assert (=> d!581052 (= res!847192 (semiInverseModEq!1533 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))))))

(assert (=> d!581052 (= (inv!28412 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) e!1211830)))

(declare-fun b!1897887 () Bool)

(declare-fun equivClasses!1460 (Int Int) Bool)

(assert (=> b!1897887 (= e!1211830 (equivClasses!1460 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))))))

(assert (= (and d!581052 res!847192) b!1897887))

(declare-fun m!2329051 () Bool)

(assert (=> d!581052 m!2329051))

(declare-fun m!2329053 () Bool)

(assert (=> b!1897887 m!2329053))

(assert (=> b!1897745 d!581052))

(declare-fun d!581054 () Bool)

(declare-fun res!847195 () Bool)

(declare-fun e!1211833 () Bool)

(assert (=> d!581054 (=> (not res!847195) (not e!1211833))))

(declare-fun rulesValid!1420 (LexerInterface!3399 List!21394) Bool)

(assert (=> d!581054 (= res!847195 (rulesValid!1420 thiss!23328 rules!3198))))

(assert (=> d!581054 (= (rulesInvariant!3006 thiss!23328 rules!3198) e!1211833)))

(declare-fun b!1897890 () Bool)

(declare-datatypes ((List!21397 0))(
  ( (Nil!21315) (Cons!21315 (h!26716 String!24728) (t!176558 List!21397)) )
))
(declare-fun noDuplicateTag!1418 (LexerInterface!3399 List!21394 List!21397) Bool)

(assert (=> b!1897890 (= e!1211833 (noDuplicateTag!1418 thiss!23328 rules!3198 Nil!21315))))

(assert (= (and d!581054 res!847195) b!1897890))

(declare-fun m!2329055 () Bool)

(assert (=> d!581054 m!2329055))

(declare-fun m!2329057 () Bool)

(assert (=> b!1897890 m!2329057))

(assert (=> b!1897724 d!581054))

(declare-fun b!1897901 () Bool)

(declare-fun e!1211841 () Bool)

(declare-fun inv!15 (TokenValue!3922) Bool)

(assert (=> b!1897901 (= e!1211841 (inv!15 (value!119492 separatorToken!354)))))

(declare-fun b!1897902 () Bool)

(declare-fun e!1211840 () Bool)

(declare-fun inv!16 (TokenValue!3922) Bool)

(assert (=> b!1897902 (= e!1211840 (inv!16 (value!119492 separatorToken!354)))))

(declare-fun d!581056 () Bool)

(declare-fun c!309454 () Bool)

(assert (=> d!581056 (= c!309454 ((_ is IntegerValue!11766) (value!119492 separatorToken!354)))))

(assert (=> d!581056 (= (inv!21 (value!119492 separatorToken!354)) e!1211840)))

(declare-fun b!1897903 () Bool)

(declare-fun res!847198 () Bool)

(assert (=> b!1897903 (=> res!847198 e!1211841)))

(assert (=> b!1897903 (= res!847198 (not ((_ is IntegerValue!11768) (value!119492 separatorToken!354))))))

(declare-fun e!1211842 () Bool)

(assert (=> b!1897903 (= e!1211842 e!1211841)))

(declare-fun b!1897904 () Bool)

(declare-fun inv!17 (TokenValue!3922) Bool)

(assert (=> b!1897904 (= e!1211842 (inv!17 (value!119492 separatorToken!354)))))

(declare-fun b!1897905 () Bool)

(assert (=> b!1897905 (= e!1211840 e!1211842)))

(declare-fun c!309455 () Bool)

(assert (=> b!1897905 (= c!309455 ((_ is IntegerValue!11767) (value!119492 separatorToken!354)))))

(assert (= (and d!581056 c!309454) b!1897902))

(assert (= (and d!581056 (not c!309454)) b!1897905))

(assert (= (and b!1897905 c!309455) b!1897904))

(assert (= (and b!1897905 (not c!309455)) b!1897903))

(assert (= (and b!1897903 (not res!847198)) b!1897901))

(declare-fun m!2329059 () Bool)

(assert (=> b!1897901 m!2329059))

(declare-fun m!2329061 () Bool)

(assert (=> b!1897902 m!2329061))

(declare-fun m!2329063 () Bool)

(assert (=> b!1897904 m!2329063))

(assert (=> b!1897735 d!581056))

(declare-fun bs!413506 () Bool)

(declare-fun d!581058 () Bool)

(assert (= bs!413506 (and d!581058 b!1897725)))

(declare-fun lambda!74166 () Int)

(assert (=> bs!413506 (not (= lambda!74166 lambda!74153))))

(declare-fun b!1898084 () Bool)

(declare-fun e!1211968 () Bool)

(assert (=> b!1898084 (= e!1211968 true)))

(declare-fun b!1898083 () Bool)

(declare-fun e!1211967 () Bool)

(assert (=> b!1898083 (= e!1211967 e!1211968)))

(declare-fun b!1898082 () Bool)

(declare-fun e!1211966 () Bool)

(assert (=> b!1898082 (= e!1211966 e!1211967)))

(assert (=> d!581058 e!1211966))

(assert (= b!1898083 b!1898084))

(assert (= b!1898082 b!1898083))

(assert (= (and d!581058 ((_ is Cons!21312) rules!3198)) b!1898082))

(declare-fun order!13471 () Int)

(declare-fun order!13473 () Int)

(declare-fun dynLambda!10374 (Int Int) Int)

(declare-fun dynLambda!10375 (Int Int) Int)

(assert (=> b!1898084 (< (dynLambda!10374 order!13471 (toValue!5403 (transformation!3786 (h!26713 rules!3198)))) (dynLambda!10375 order!13473 lambda!74166))))

(declare-fun order!13475 () Int)

(declare-fun dynLambda!10376 (Int Int) Int)

(assert (=> b!1898084 (< (dynLambda!10376 order!13475 (toChars!5262 (transformation!3786 (h!26713 rules!3198)))) (dynLambda!10375 order!13473 lambda!74166))))

(assert (=> d!581058 true))

(declare-fun lt!725830 () Bool)

(assert (=> d!581058 (= lt!725830 (forall!4464 tokens!598 lambda!74166))))

(declare-fun e!1211951 () Bool)

(assert (=> d!581058 (= lt!725830 e!1211951)))

(declare-fun res!847277 () Bool)

(assert (=> d!581058 (=> res!847277 e!1211951)))

(assert (=> d!581058 (= res!847277 (not ((_ is Cons!21313) tokens!598)))))

(assert (=> d!581058 (not (isEmpty!13076 rules!3198))))

(assert (=> d!581058 (= (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 tokens!598) lt!725830)))

(declare-fun b!1898066 () Bool)

(declare-fun e!1211948 () Bool)

(assert (=> b!1898066 (= e!1211951 e!1211948)))

(declare-fun res!847278 () Bool)

(assert (=> b!1898066 (=> (not res!847278) (not e!1211948))))

(assert (=> b!1898066 (= res!847278 (rulesProduceIndividualToken!1571 thiss!23328 rules!3198 (h!26714 tokens!598)))))

(declare-fun b!1898067 () Bool)

(assert (=> b!1898067 (= e!1211948 (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 (t!176450 tokens!598)))))

(assert (= (and d!581058 (not res!847277)) b!1898066))

(assert (= (and b!1898066 res!847278) b!1898067))

(declare-fun m!2329263 () Bool)

(assert (=> d!581058 m!2329263))

(assert (=> d!581058 m!2328939))

(declare-fun m!2329265 () Bool)

(assert (=> b!1898066 m!2329265))

(assert (=> b!1898067 m!2328911))

(assert (=> b!1897746 d!581058))

(declare-fun d!581118 () Bool)

(declare-fun res!847283 () Bool)

(declare-fun e!1211988 () Bool)

(assert (=> d!581118 (=> res!847283 e!1211988)))

(assert (=> d!581118 (= res!847283 ((_ is Nil!21313) tokens!598))))

(assert (=> d!581118 (= (forall!4464 tokens!598 lambda!74153) e!1211988)))

(declare-fun b!1898122 () Bool)

(declare-fun e!1211989 () Bool)

(assert (=> b!1898122 (= e!1211988 e!1211989)))

(declare-fun res!847284 () Bool)

(assert (=> b!1898122 (=> (not res!847284) (not e!1211989))))

(declare-fun dynLambda!10377 (Int Token!7124) Bool)

(assert (=> b!1898122 (= res!847284 (dynLambda!10377 lambda!74153 (h!26714 tokens!598)))))

(declare-fun b!1898123 () Bool)

(assert (=> b!1898123 (= e!1211989 (forall!4464 (t!176450 tokens!598) lambda!74153))))

(assert (= (and d!581118 (not res!847283)) b!1898122))

(assert (= (and b!1898122 res!847284) b!1898123))

(declare-fun b_lambda!62441 () Bool)

(assert (=> (not b_lambda!62441) (not b!1898122)))

(declare-fun m!2329267 () Bool)

(assert (=> b!1898122 m!2329267))

(assert (=> b!1898123 m!2328953))

(assert (=> b!1897725 d!581118))

(declare-fun d!581120 () Bool)

(assert (=> d!581120 (= (inv!28408 (tag!4206 (h!26713 rules!3198))) (= (mod (str.len (value!119491 (tag!4206 (h!26713 rules!3198)))) 2) 0))))

(assert (=> b!1897736 d!581120))

(declare-fun d!581122 () Bool)

(declare-fun res!847285 () Bool)

(declare-fun e!1211990 () Bool)

(assert (=> d!581122 (=> (not res!847285) (not e!1211990))))

(assert (=> d!581122 (= res!847285 (semiInverseModEq!1533 (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (h!26713 rules!3198)))))))

(assert (=> d!581122 (= (inv!28412 (transformation!3786 (h!26713 rules!3198))) e!1211990)))

(declare-fun b!1898124 () Bool)

(assert (=> b!1898124 (= e!1211990 (equivClasses!1460 (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (h!26713 rules!3198)))))))

(assert (= (and d!581122 res!847285) b!1898124))

(declare-fun m!2329269 () Bool)

(assert (=> d!581122 m!2329269))

(declare-fun m!2329271 () Bool)

(assert (=> b!1898124 m!2329271))

(assert (=> b!1897736 d!581122))

(declare-fun d!581124 () Bool)

(declare-fun list!8670 (Conc!7093) List!21393)

(assert (=> d!581124 (= (list!8666 lt!725756) (list!8670 (c!309427 lt!725756)))))

(declare-fun bs!413507 () Bool)

(assert (= bs!413507 d!581124))

(declare-fun m!2329273 () Bool)

(assert (=> bs!413507 m!2329273))

(assert (=> b!1897743 d!581124))

(declare-fun d!581126 () Bool)

(declare-fun e!1211999 () Bool)

(assert (=> d!581126 e!1211999))

(declare-fun res!847290 () Bool)

(assert (=> d!581126 (=> (not res!847290) (not e!1211999))))

(assert (=> d!581126 (= res!847290 (isDefined!3575 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 separatorToken!354)))))))

(declare-fun lt!725833 () Unit!35654)

(declare-fun choose!11842 (LexerInterface!3399 List!21394 List!21393 Token!7124) Unit!35654)

(assert (=> d!581126 (= lt!725833 (choose!11842 thiss!23328 rules!3198 lt!725758 separatorToken!354))))

(assert (=> d!581126 (rulesInvariant!3006 thiss!23328 rules!3198)))

(assert (=> d!581126 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!629 thiss!23328 rules!3198 lt!725758 separatorToken!354) lt!725833)))

(declare-fun b!1898137 () Bool)

(declare-fun res!847291 () Bool)

(assert (=> b!1898137 (=> (not res!847291) (not e!1211999))))

(assert (=> b!1898137 (= res!847291 (matchR!2497 (regex!3786 (get!6577 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 separatorToken!354))))) (list!8666 (charsOf!2342 separatorToken!354))))))

(declare-fun b!1898138 () Bool)

(assert (=> b!1898138 (= e!1211999 (= (rule!5979 separatorToken!354) (get!6577 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 separatorToken!354))))))))

(assert (= (and d!581126 res!847290) b!1898137))

(assert (= (and b!1898137 res!847291) b!1898138))

(assert (=> d!581126 m!2328895))

(assert (=> d!581126 m!2328895))

(declare-fun m!2329279 () Bool)

(assert (=> d!581126 m!2329279))

(declare-fun m!2329281 () Bool)

(assert (=> d!581126 m!2329281))

(assert (=> d!581126 m!2328955))

(assert (=> b!1898137 m!2328903))

(declare-fun m!2329283 () Bool)

(assert (=> b!1898137 m!2329283))

(assert (=> b!1898137 m!2328895))

(declare-fun m!2329285 () Bool)

(assert (=> b!1898137 m!2329285))

(assert (=> b!1898137 m!2328895))

(assert (=> b!1898137 m!2328901))

(assert (=> b!1898137 m!2328903))

(assert (=> b!1898137 m!2328901))

(assert (=> b!1898138 m!2328895))

(assert (=> b!1898138 m!2328895))

(assert (=> b!1898138 m!2329285))

(assert (=> b!1897743 d!581126))

(declare-fun d!581132 () Bool)

(declare-fun isEmpty!13083 (Option!4278) Bool)

(assert (=> d!581132 (= (isDefined!3576 lt!725757) (not (isEmpty!13083 lt!725757)))))

(declare-fun bs!413510 () Bool)

(assert (= bs!413510 d!581132))

(declare-fun m!2329287 () Bool)

(assert (=> bs!413510 m!2329287))

(assert (=> b!1897743 d!581132))

(declare-fun d!581134 () Bool)

(declare-fun isEmpty!13084 (Option!4277) Bool)

(assert (=> d!581134 (= (isDefined!3575 lt!725760) (not (isEmpty!13084 lt!725760)))))

(declare-fun bs!413511 () Bool)

(assert (= bs!413511 d!581134))

(declare-fun m!2329289 () Bool)

(assert (=> bs!413511 m!2329289))

(assert (=> b!1897743 d!581134))

(declare-fun d!581136 () Bool)

(assert (=> d!581136 (= (isDefined!3575 lt!725759) (not (isEmpty!13084 lt!725759)))))

(declare-fun bs!413512 () Bool)

(assert (= bs!413512 d!581136))

(declare-fun m!2329291 () Bool)

(assert (=> bs!413512 m!2329291))

(assert (=> b!1897743 d!581136))

(declare-fun bs!413513 () Bool)

(declare-fun d!581138 () Bool)

(assert (= bs!413513 (and d!581138 b!1897725)))

(declare-fun lambda!74167 () Int)

(assert (=> bs!413513 (not (= lambda!74167 lambda!74153))))

(declare-fun bs!413514 () Bool)

(assert (= bs!413514 (and d!581138 d!581058)))

(assert (=> bs!413514 (= lambda!74167 lambda!74166)))

(declare-fun b!1898143 () Bool)

(declare-fun e!1212004 () Bool)

(assert (=> b!1898143 (= e!1212004 true)))

(declare-fun b!1898142 () Bool)

(declare-fun e!1212003 () Bool)

(assert (=> b!1898142 (= e!1212003 e!1212004)))

(declare-fun b!1898141 () Bool)

(declare-fun e!1212002 () Bool)

(assert (=> b!1898141 (= e!1212002 e!1212003)))

(assert (=> d!581138 e!1212002))

(assert (= b!1898142 b!1898143))

(assert (= b!1898141 b!1898142))

(assert (= (and d!581138 ((_ is Cons!21312) rules!3198)) b!1898141))

(assert (=> b!1898143 (< (dynLambda!10374 order!13471 (toValue!5403 (transformation!3786 (h!26713 rules!3198)))) (dynLambda!10375 order!13473 lambda!74167))))

(assert (=> b!1898143 (< (dynLambda!10376 order!13475 (toChars!5262 (transformation!3786 (h!26713 rules!3198)))) (dynLambda!10375 order!13473 lambda!74167))))

(assert (=> d!581138 true))

(declare-fun lt!725834 () Bool)

(assert (=> d!581138 (= lt!725834 (forall!4464 (t!176450 tokens!598) lambda!74167))))

(declare-fun e!1212001 () Bool)

(assert (=> d!581138 (= lt!725834 e!1212001)))

(declare-fun res!847292 () Bool)

(assert (=> d!581138 (=> res!847292 e!1212001)))

(assert (=> d!581138 (= res!847292 (not ((_ is Cons!21313) (t!176450 tokens!598))))))

(assert (=> d!581138 (not (isEmpty!13076 rules!3198))))

(assert (=> d!581138 (= (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 (t!176450 tokens!598)) lt!725834)))

(declare-fun b!1898139 () Bool)

(declare-fun e!1212000 () Bool)

(assert (=> b!1898139 (= e!1212001 e!1212000)))

(declare-fun res!847293 () Bool)

(assert (=> b!1898139 (=> (not res!847293) (not e!1212000))))

(assert (=> b!1898139 (= res!847293 (rulesProduceIndividualToken!1571 thiss!23328 rules!3198 (h!26714 (t!176450 tokens!598))))))

(declare-fun b!1898140 () Bool)

(assert (=> b!1898140 (= e!1212000 (rulesProduceEachTokenIndividuallyList!1130 thiss!23328 rules!3198 (t!176450 (t!176450 tokens!598))))))

(assert (= (and d!581138 (not res!847292)) b!1898139))

(assert (= (and b!1898139 res!847293) b!1898140))

(declare-fun m!2329293 () Bool)

(assert (=> d!581138 m!2329293))

(assert (=> d!581138 m!2328939))

(declare-fun m!2329295 () Bool)

(assert (=> b!1898139 m!2329295))

(declare-fun m!2329297 () Bool)

(assert (=> b!1898140 m!2329297))

(assert (=> b!1897743 d!581138))

(declare-fun d!581140 () Bool)

(assert (=> d!581140 (= (list!8666 (charsOf!2342 separatorToken!354)) (list!8670 (c!309427 (charsOf!2342 separatorToken!354))))))

(declare-fun bs!413515 () Bool)

(assert (= bs!413515 d!581140))

(declare-fun m!2329299 () Bool)

(assert (=> bs!413515 m!2329299))

(assert (=> b!1897743 d!581140))

(declare-fun b!1898148 () Bool)

(declare-fun e!1212007 () Bool)

(assert (=> b!1898148 (= e!1212007 true)))

(declare-fun d!581142 () Bool)

(assert (=> d!581142 e!1212007))

(assert (= d!581142 b!1898148))

(declare-fun order!13477 () Int)

(declare-fun lambda!74170 () Int)

(declare-fun dynLambda!10378 (Int Int) Int)

(assert (=> b!1898148 (< (dynLambda!10374 order!13471 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) (dynLambda!10378 order!13477 lambda!74170))))

(assert (=> b!1898148 (< (dynLambda!10376 order!13475 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) (dynLambda!10378 order!13477 lambda!74170))))

(declare-fun dynLambda!10379 (Int TokenValue!3922) BalanceConc!14002)

(declare-fun dynLambda!10380 (Int BalanceConc!14002) TokenValue!3922)

(assert (=> d!581142 (= (list!8666 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) lt!725756))) (list!8666 lt!725756))))

(declare-fun lt!725837 () Unit!35654)

(declare-fun ForallOf!379 (Int BalanceConc!14002) Unit!35654)

(assert (=> d!581142 (= lt!725837 (ForallOf!379 lambda!74170 lt!725756))))

(assert (=> d!581142 (= (lemmaSemiInverse!765 (transformation!3786 (rule!5979 (h!26714 tokens!598))) lt!725756) lt!725837)))

(declare-fun b_lambda!62463 () Bool)

(assert (=> (not b_lambda!62463) (not d!581142)))

(declare-fun t!176508 () Bool)

(declare-fun tb!115699 () Bool)

(assert (=> (and b!1897748 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176508) tb!115699))

(declare-fun e!1212010 () Bool)

(declare-fun tp!541868 () Bool)

(declare-fun b!1898153 () Bool)

(declare-fun inv!28415 (Conc!7093) Bool)

(assert (=> b!1898153 (= e!1212010 (and (inv!28415 (c!309427 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) lt!725756)))) tp!541868))))

(declare-fun result!139890 () Bool)

(declare-fun inv!28416 (BalanceConc!14002) Bool)

(assert (=> tb!115699 (= result!139890 (and (inv!28416 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) lt!725756))) e!1212010))))

(assert (= tb!115699 b!1898153))

(declare-fun m!2329301 () Bool)

(assert (=> b!1898153 m!2329301))

(declare-fun m!2329303 () Bool)

(assert (=> tb!115699 m!2329303))

(assert (=> d!581142 t!176508))

(declare-fun b_and!146679 () Bool)

(assert (= b_and!146613 (and (=> t!176508 result!139890) b_and!146679)))

(declare-fun t!176510 () Bool)

(declare-fun tb!115701 () Bool)

(assert (=> (and b!1897730 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176510) tb!115701))

(declare-fun result!139894 () Bool)

(assert (= result!139894 result!139890))

(assert (=> d!581142 t!176510))

(declare-fun b_and!146681 () Bool)

(assert (= b_and!146617 (and (=> t!176510 result!139894) b_and!146681)))

(declare-fun tb!115703 () Bool)

(declare-fun t!176512 () Bool)

(assert (=> (and b!1897742 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176512) tb!115703))

(declare-fun result!139896 () Bool)

(assert (= result!139896 result!139890))

(assert (=> d!581142 t!176512))

(declare-fun b_and!146683 () Bool)

(assert (= b_and!146621 (and (=> t!176512 result!139896) b_and!146683)))

(declare-fun b_lambda!62465 () Bool)

(assert (=> (not b_lambda!62465) (not d!581142)))

(declare-fun tb!115705 () Bool)

(declare-fun t!176514 () Bool)

(assert (=> (and b!1897748 (= (toValue!5403 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176514) tb!115705))

(declare-fun result!139898 () Bool)

(assert (=> tb!115705 (= result!139898 (inv!21 (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) lt!725756)))))

(declare-fun m!2329305 () Bool)

(assert (=> tb!115705 m!2329305))

(assert (=> d!581142 t!176514))

(declare-fun b_and!146685 () Bool)

(assert (= b_and!146611 (and (=> t!176514 result!139898) b_and!146685)))

(declare-fun t!176516 () Bool)

(declare-fun tb!115707 () Bool)

(assert (=> (and b!1897730 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176516) tb!115707))

(declare-fun result!139902 () Bool)

(assert (= result!139902 result!139898))

(assert (=> d!581142 t!176516))

(declare-fun b_and!146687 () Bool)

(assert (= b_and!146615 (and (=> t!176516 result!139902) b_and!146687)))

(declare-fun t!176518 () Bool)

(declare-fun tb!115709 () Bool)

(assert (=> (and b!1897742 (= (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176518) tb!115709))

(declare-fun result!139904 () Bool)

(assert (= result!139904 result!139898))

(assert (=> d!581142 t!176518))

(declare-fun b_and!146689 () Bool)

(assert (= b_and!146619 (and (=> t!176518 result!139904) b_and!146689)))

(declare-fun m!2329307 () Bool)

(assert (=> d!581142 m!2329307))

(declare-fun m!2329309 () Bool)

(assert (=> d!581142 m!2329309))

(declare-fun m!2329311 () Bool)

(assert (=> d!581142 m!2329311))

(declare-fun m!2329313 () Bool)

(assert (=> d!581142 m!2329313))

(assert (=> d!581142 m!2329307))

(assert (=> d!581142 m!2328893))

(assert (=> d!581142 m!2329313))

(assert (=> b!1897743 d!581142))

(declare-fun b!1898162 () Bool)

(declare-fun e!1212018 () Bool)

(assert (=> b!1898162 (= e!1212018 true)))

(declare-fun d!581144 () Bool)

(assert (=> d!581144 e!1212018))

(assert (= d!581144 b!1898162))

(declare-fun lambda!74173 () Int)

(declare-fun order!13479 () Int)

(declare-fun dynLambda!10381 (Int Int) Int)

(assert (=> b!1898162 (< (dynLambda!10374 order!13471 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) (dynLambda!10381 order!13479 lambda!74173))))

(assert (=> b!1898162 (< (dynLambda!10376 order!13475 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) (dynLambda!10381 order!13479 lambda!74173))))

(assert (=> d!581144 (= (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) lt!725756) (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598)))))))

(declare-fun lt!725840 () Unit!35654)

(declare-fun Forall2of!175 (Int BalanceConc!14002 BalanceConc!14002) Unit!35654)

(assert (=> d!581144 (= lt!725840 (Forall2of!175 lambda!74173 lt!725756 (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598)))))))

(assert (=> d!581144 (= (list!8666 lt!725756) (list!8666 (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598)))))))

(assert (=> d!581144 (= (lemmaEqSameImage!494 (transformation!3786 (rule!5979 (h!26714 tokens!598))) lt!725756 (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598)))) lt!725840)))

(declare-fun b_lambda!62467 () Bool)

(assert (=> (not b_lambda!62467) (not d!581144)))

(assert (=> d!581144 t!176514))

(declare-fun b_and!146691 () Bool)

(assert (= b_and!146685 (and (=> t!176514 result!139898) b_and!146691)))

(assert (=> d!581144 t!176516))

(declare-fun b_and!146693 () Bool)

(assert (= b_and!146687 (and (=> t!176516 result!139902) b_and!146693)))

(assert (=> d!581144 t!176518))

(declare-fun b_and!146695 () Bool)

(assert (= b_and!146689 (and (=> t!176518 result!139904) b_and!146695)))

(declare-fun b_lambda!62469 () Bool)

(assert (=> (not b_lambda!62469) (not d!581144)))

(declare-fun t!176520 () Bool)

(declare-fun tb!115711 () Bool)

(assert (=> (and b!1897748 (= (toValue!5403 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176520) tb!115711))

(declare-fun result!139906 () Bool)

(assert (=> tb!115711 (= result!139906 (inv!21 (dynLambda!10380 (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598))))))))

(declare-fun m!2329315 () Bool)

(assert (=> tb!115711 m!2329315))

(assert (=> d!581144 t!176520))

(declare-fun b_and!146697 () Bool)

(assert (= b_and!146691 (and (=> t!176520 result!139906) b_and!146697)))

(declare-fun t!176522 () Bool)

(declare-fun tb!115713 () Bool)

(assert (=> (and b!1897730 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176522) tb!115713))

(declare-fun result!139908 () Bool)

(assert (= result!139908 result!139906))

(assert (=> d!581144 t!176522))

(declare-fun b_and!146699 () Bool)

(assert (= b_and!146693 (and (=> t!176522 result!139908) b_and!146699)))

(declare-fun tb!115715 () Bool)

(declare-fun t!176524 () Bool)

(assert (=> (and b!1897742 (= (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176524) tb!115715))

(declare-fun result!139910 () Bool)

(assert (= result!139910 result!139906))

(assert (=> d!581144 t!176524))

(declare-fun b_and!146701 () Bool)

(assert (= b_and!146695 (and (=> t!176524 result!139910) b_and!146701)))

(assert (=> d!581144 m!2329313))

(assert (=> d!581144 m!2328893))

(assert (=> d!581144 m!2328889))

(declare-fun m!2329317 () Bool)

(assert (=> d!581144 m!2329317))

(assert (=> d!581144 m!2328889))

(declare-fun m!2329319 () Bool)

(assert (=> d!581144 m!2329319))

(assert (=> d!581144 m!2328889))

(declare-fun m!2329321 () Bool)

(assert (=> d!581144 m!2329321))

(assert (=> b!1897743 d!581144))

(declare-fun d!581146 () Bool)

(declare-fun lt!725843 () BalanceConc!14002)

(assert (=> d!581146 (= (list!8666 lt!725843) (originalCharacters!4593 separatorToken!354))))

(assert (=> d!581146 (= lt!725843 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (value!119492 separatorToken!354)))))

(assert (=> d!581146 (= (charsOf!2342 separatorToken!354) lt!725843)))

(declare-fun b_lambda!62471 () Bool)

(assert (=> (not b_lambda!62471) (not d!581146)))

(declare-fun t!176526 () Bool)

(declare-fun tb!115717 () Bool)

(assert (=> (and b!1897748 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354)))) t!176526) tb!115717))

(declare-fun b!1898163 () Bool)

(declare-fun e!1212020 () Bool)

(declare-fun tp!541869 () Bool)

(assert (=> b!1898163 (= e!1212020 (and (inv!28415 (c!309427 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (value!119492 separatorToken!354)))) tp!541869))))

(declare-fun result!139912 () Bool)

(assert (=> tb!115717 (= result!139912 (and (inv!28416 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (value!119492 separatorToken!354))) e!1212020))))

(assert (= tb!115717 b!1898163))

(declare-fun m!2329323 () Bool)

(assert (=> b!1898163 m!2329323))

(declare-fun m!2329325 () Bool)

(assert (=> tb!115717 m!2329325))

(assert (=> d!581146 t!176526))

(declare-fun b_and!146703 () Bool)

(assert (= b_and!146679 (and (=> t!176526 result!139912) b_and!146703)))

(declare-fun t!176528 () Bool)

(declare-fun tb!115719 () Bool)

(assert (=> (and b!1897730 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354)))) t!176528) tb!115719))

(declare-fun result!139914 () Bool)

(assert (= result!139914 result!139912))

(assert (=> d!581146 t!176528))

(declare-fun b_and!146705 () Bool)

(assert (= b_and!146681 (and (=> t!176528 result!139914) b_and!146705)))

(declare-fun t!176530 () Bool)

(declare-fun tb!115721 () Bool)

(assert (=> (and b!1897742 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354)))) t!176530) tb!115721))

(declare-fun result!139916 () Bool)

(assert (= result!139916 result!139912))

(assert (=> d!581146 t!176530))

(declare-fun b_and!146707 () Bool)

(assert (= b_and!146683 (and (=> t!176530 result!139916) b_and!146707)))

(declare-fun m!2329327 () Bool)

(assert (=> d!581146 m!2329327))

(declare-fun m!2329329 () Bool)

(assert (=> d!581146 m!2329329))

(assert (=> b!1897743 d!581146))

(declare-fun b!1898182 () Bool)

(declare-fun res!847310 () Bool)

(declare-fun e!1212029 () Bool)

(assert (=> b!1898182 (=> (not res!847310) (not e!1212029))))

(declare-fun lt!725854 () Option!4278)

(declare-fun apply!5608 (TokenValueInjection!7428 BalanceConc!14002) TokenValue!3922)

(assert (=> b!1898182 (= res!847310 (= (value!119492 (_1!11519 (get!6578 lt!725854))) (apply!5608 (transformation!3786 (rule!5979 (_1!11519 (get!6578 lt!725854)))) (seqFromList!2658 (originalCharacters!4593 (_1!11519 (get!6578 lt!725854)))))))))

(declare-fun call!116994 () Option!4278)

(declare-fun bm!116989 () Bool)

(declare-fun maxPrefixOneRule!1193 (LexerInterface!3399 Rule!7372 List!21393) Option!4278)

(assert (=> bm!116989 (= call!116994 (maxPrefixOneRule!1193 thiss!23328 (h!26713 rules!3198) lt!725752))))

(declare-fun b!1898183 () Bool)

(declare-fun e!1212028 () Option!4278)

(declare-fun lt!725856 () Option!4278)

(declare-fun lt!725858 () Option!4278)

(assert (=> b!1898183 (= e!1212028 (ite (and ((_ is None!4277) lt!725856) ((_ is None!4277) lt!725858)) None!4277 (ite ((_ is None!4277) lt!725858) lt!725856 (ite ((_ is None!4277) lt!725856) lt!725858 (ite (>= (size!16868 (_1!11519 (v!26306 lt!725856))) (size!16868 (_1!11519 (v!26306 lt!725858)))) lt!725856 lt!725858)))))))

(assert (=> b!1898183 (= lt!725856 call!116994)))

(assert (=> b!1898183 (= lt!725858 (maxPrefix!1845 thiss!23328 (t!176449 rules!3198) lt!725752))))

(declare-fun b!1898184 () Bool)

(declare-fun e!1212027 () Bool)

(assert (=> b!1898184 (= e!1212027 e!1212029)))

(declare-fun res!847312 () Bool)

(assert (=> b!1898184 (=> (not res!847312) (not e!1212029))))

(assert (=> b!1898184 (= res!847312 (isDefined!3576 lt!725854))))

(declare-fun b!1898185 () Bool)

(declare-fun res!847314 () Bool)

(assert (=> b!1898185 (=> (not res!847314) (not e!1212029))))

(declare-fun ++!5731 (List!21393 List!21393) List!21393)

(assert (=> b!1898185 (= res!847314 (= (++!5731 (list!8666 (charsOf!2342 (_1!11519 (get!6578 lt!725854)))) (_2!11519 (get!6578 lt!725854))) lt!725752))))

(declare-fun b!1898186 () Bool)

(declare-fun res!847316 () Bool)

(assert (=> b!1898186 (=> (not res!847316) (not e!1212029))))

(declare-fun size!16872 (List!21393) Int)

(assert (=> b!1898186 (= res!847316 (< (size!16872 (_2!11519 (get!6578 lt!725854))) (size!16872 lt!725752)))))

(declare-fun b!1898187 () Bool)

(assert (=> b!1898187 (= e!1212028 call!116994)))

(declare-fun b!1898188 () Bool)

(declare-fun contains!3839 (List!21394 Rule!7372) Bool)

(assert (=> b!1898188 (= e!1212029 (contains!3839 rules!3198 (rule!5979 (_1!11519 (get!6578 lt!725854)))))))

(declare-fun d!581148 () Bool)

(assert (=> d!581148 e!1212027))

(declare-fun res!847313 () Bool)

(assert (=> d!581148 (=> res!847313 e!1212027)))

(assert (=> d!581148 (= res!847313 (isEmpty!13083 lt!725854))))

(assert (=> d!581148 (= lt!725854 e!1212028)))

(declare-fun c!309483 () Bool)

(assert (=> d!581148 (= c!309483 (and ((_ is Cons!21312) rules!3198) ((_ is Nil!21312) (t!176449 rules!3198))))))

(declare-fun lt!725857 () Unit!35654)

(declare-fun lt!725855 () Unit!35654)

(assert (=> d!581148 (= lt!725857 lt!725855)))

(declare-fun isPrefix!1911 (List!21393 List!21393) Bool)

(assert (=> d!581148 (isPrefix!1911 lt!725752 lt!725752)))

(declare-fun lemmaIsPrefixRefl!1229 (List!21393 List!21393) Unit!35654)

(assert (=> d!581148 (= lt!725855 (lemmaIsPrefixRefl!1229 lt!725752 lt!725752))))

(declare-fun rulesValidInductive!1284 (LexerInterface!3399 List!21394) Bool)

(assert (=> d!581148 (rulesValidInductive!1284 thiss!23328 rules!3198)))

(assert (=> d!581148 (= (maxPrefix!1845 thiss!23328 rules!3198 lt!725752) lt!725854)))

(declare-fun b!1898189 () Bool)

(declare-fun res!847311 () Bool)

(assert (=> b!1898189 (=> (not res!847311) (not e!1212029))))

(assert (=> b!1898189 (= res!847311 (= (list!8666 (charsOf!2342 (_1!11519 (get!6578 lt!725854)))) (originalCharacters!4593 (_1!11519 (get!6578 lt!725854)))))))

(declare-fun b!1898190 () Bool)

(declare-fun res!847315 () Bool)

(assert (=> b!1898190 (=> (not res!847315) (not e!1212029))))

(assert (=> b!1898190 (= res!847315 (matchR!2497 (regex!3786 (rule!5979 (_1!11519 (get!6578 lt!725854)))) (list!8666 (charsOf!2342 (_1!11519 (get!6578 lt!725854))))))))

(assert (= (and d!581148 c!309483) b!1898187))

(assert (= (and d!581148 (not c!309483)) b!1898183))

(assert (= (or b!1898187 b!1898183) bm!116989))

(assert (= (and d!581148 (not res!847313)) b!1898184))

(assert (= (and b!1898184 res!847312) b!1898189))

(assert (= (and b!1898189 res!847311) b!1898186))

(assert (= (and b!1898186 res!847316) b!1898185))

(assert (= (and b!1898185 res!847314) b!1898182))

(assert (= (and b!1898182 res!847310) b!1898190))

(assert (= (and b!1898190 res!847315) b!1898188))

(declare-fun m!2329331 () Bool)

(assert (=> b!1898186 m!2329331))

(declare-fun m!2329333 () Bool)

(assert (=> b!1898186 m!2329333))

(declare-fun m!2329335 () Bool)

(assert (=> b!1898186 m!2329335))

(declare-fun m!2329337 () Bool)

(assert (=> b!1898184 m!2329337))

(declare-fun m!2329339 () Bool)

(assert (=> bm!116989 m!2329339))

(declare-fun m!2329341 () Bool)

(assert (=> d!581148 m!2329341))

(declare-fun m!2329343 () Bool)

(assert (=> d!581148 m!2329343))

(declare-fun m!2329345 () Bool)

(assert (=> d!581148 m!2329345))

(declare-fun m!2329347 () Bool)

(assert (=> d!581148 m!2329347))

(assert (=> b!1898182 m!2329331))

(declare-fun m!2329349 () Bool)

(assert (=> b!1898182 m!2329349))

(assert (=> b!1898182 m!2329349))

(declare-fun m!2329351 () Bool)

(assert (=> b!1898182 m!2329351))

(assert (=> b!1898188 m!2329331))

(declare-fun m!2329353 () Bool)

(assert (=> b!1898188 m!2329353))

(assert (=> b!1898185 m!2329331))

(declare-fun m!2329355 () Bool)

(assert (=> b!1898185 m!2329355))

(assert (=> b!1898185 m!2329355))

(declare-fun m!2329357 () Bool)

(assert (=> b!1898185 m!2329357))

(assert (=> b!1898185 m!2329357))

(declare-fun m!2329359 () Bool)

(assert (=> b!1898185 m!2329359))

(declare-fun m!2329361 () Bool)

(assert (=> b!1898183 m!2329361))

(assert (=> b!1898189 m!2329331))

(assert (=> b!1898189 m!2329355))

(assert (=> b!1898189 m!2329355))

(assert (=> b!1898189 m!2329357))

(assert (=> b!1898190 m!2329331))

(assert (=> b!1898190 m!2329355))

(assert (=> b!1898190 m!2329355))

(assert (=> b!1898190 m!2329357))

(assert (=> b!1898190 m!2329357))

(declare-fun m!2329363 () Bool)

(assert (=> b!1898190 m!2329363))

(assert (=> b!1897743 d!581148))

(declare-fun b!1898203 () Bool)

(declare-fun lt!725866 () Unit!35654)

(declare-fun lt!725867 () Unit!35654)

(assert (=> b!1898203 (= lt!725866 lt!725867)))

(assert (=> b!1898203 (rulesInvariant!3006 thiss!23328 (t!176449 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!244 (LexerInterface!3399 Rule!7372 List!21394) Unit!35654)

(assert (=> b!1898203 (= lt!725867 (lemmaInvariantOnRulesThenOnTail!244 thiss!23328 (h!26713 rules!3198) (t!176449 rules!3198)))))

(declare-fun e!1212039 () Option!4277)

(assert (=> b!1898203 (= e!1212039 (getRuleFromTag!629 thiss!23328 (t!176449 rules!3198) (tag!4206 (rule!5979 (h!26714 tokens!598)))))))

(declare-fun b!1898204 () Bool)

(declare-fun e!1212041 () Option!4277)

(assert (=> b!1898204 (= e!1212041 (Some!4276 (h!26713 rules!3198)))))

(declare-fun b!1898205 () Bool)

(declare-fun e!1212040 () Bool)

(declare-fun lt!725865 () Option!4277)

(assert (=> b!1898205 (= e!1212040 (= (tag!4206 (get!6577 lt!725865)) (tag!4206 (rule!5979 (h!26714 tokens!598)))))))

(declare-fun b!1898206 () Bool)

(assert (=> b!1898206 (= e!1212039 None!4276)))

(declare-fun d!581150 () Bool)

(declare-fun e!1212038 () Bool)

(assert (=> d!581150 e!1212038))

(declare-fun res!847321 () Bool)

(assert (=> d!581150 (=> res!847321 e!1212038)))

(assert (=> d!581150 (= res!847321 (isEmpty!13084 lt!725865))))

(assert (=> d!581150 (= lt!725865 e!1212041)))

(declare-fun c!309488 () Bool)

(assert (=> d!581150 (= c!309488 (and ((_ is Cons!21312) rules!3198) (= (tag!4206 (h!26713 rules!3198)) (tag!4206 (rule!5979 (h!26714 tokens!598))))))))

(assert (=> d!581150 (rulesInvariant!3006 thiss!23328 rules!3198)))

(assert (=> d!581150 (= (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 (h!26714 tokens!598)))) lt!725865)))

(declare-fun b!1898207 () Bool)

(assert (=> b!1898207 (= e!1212041 e!1212039)))

(declare-fun c!309489 () Bool)

(assert (=> b!1898207 (= c!309489 (and ((_ is Cons!21312) rules!3198) (not (= (tag!4206 (h!26713 rules!3198)) (tag!4206 (rule!5979 (h!26714 tokens!598)))))))))

(declare-fun b!1898208 () Bool)

(assert (=> b!1898208 (= e!1212038 e!1212040)))

(declare-fun res!847322 () Bool)

(assert (=> b!1898208 (=> (not res!847322) (not e!1212040))))

(assert (=> b!1898208 (= res!847322 (contains!3839 rules!3198 (get!6577 lt!725865)))))

(assert (= (and d!581150 c!309488) b!1898204))

(assert (= (and d!581150 (not c!309488)) b!1898207))

(assert (= (and b!1898207 c!309489) b!1898203))

(assert (= (and b!1898207 (not c!309489)) b!1898206))

(assert (= (and d!581150 (not res!847321)) b!1898208))

(assert (= (and b!1898208 res!847322) b!1898205))

(declare-fun m!2329365 () Bool)

(assert (=> b!1898203 m!2329365))

(declare-fun m!2329367 () Bool)

(assert (=> b!1898203 m!2329367))

(declare-fun m!2329369 () Bool)

(assert (=> b!1898203 m!2329369))

(declare-fun m!2329371 () Bool)

(assert (=> b!1898205 m!2329371))

(declare-fun m!2329373 () Bool)

(assert (=> d!581150 m!2329373))

(assert (=> d!581150 m!2328955))

(assert (=> b!1898208 m!2329371))

(assert (=> b!1898208 m!2329371))

(declare-fun m!2329375 () Bool)

(assert (=> b!1898208 m!2329375))

(assert (=> b!1897743 d!581150))

(declare-fun d!581152 () Bool)

(declare-fun lt!725868 () BalanceConc!14002)

(assert (=> d!581152 (= (list!8666 lt!725868) (originalCharacters!4593 (h!26714 tokens!598)))))

(assert (=> d!581152 (= lt!725868 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (value!119492 (h!26714 tokens!598))))))

(assert (=> d!581152 (= (charsOf!2342 (h!26714 tokens!598)) lt!725868)))

(declare-fun b_lambda!62473 () Bool)

(assert (=> (not b_lambda!62473) (not d!581152)))

(declare-fun tb!115723 () Bool)

(declare-fun t!176533 () Bool)

(assert (=> (and b!1897748 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176533) tb!115723))

(declare-fun b!1898209 () Bool)

(declare-fun e!1212042 () Bool)

(declare-fun tp!541870 () Bool)

(assert (=> b!1898209 (= e!1212042 (and (inv!28415 (c!309427 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (value!119492 (h!26714 tokens!598))))) tp!541870))))

(declare-fun result!139918 () Bool)

(assert (=> tb!115723 (= result!139918 (and (inv!28416 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (value!119492 (h!26714 tokens!598)))) e!1212042))))

(assert (= tb!115723 b!1898209))

(declare-fun m!2329377 () Bool)

(assert (=> b!1898209 m!2329377))

(declare-fun m!2329379 () Bool)

(assert (=> tb!115723 m!2329379))

(assert (=> d!581152 t!176533))

(declare-fun b_and!146709 () Bool)

(assert (= b_and!146703 (and (=> t!176533 result!139918) b_and!146709)))

(declare-fun t!176535 () Bool)

(declare-fun tb!115725 () Bool)

(assert (=> (and b!1897730 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176535) tb!115725))

(declare-fun result!139920 () Bool)

(assert (= result!139920 result!139918))

(assert (=> d!581152 t!176535))

(declare-fun b_and!146711 () Bool)

(assert (= b_and!146705 (and (=> t!176535 result!139920) b_and!146711)))

(declare-fun t!176537 () Bool)

(declare-fun tb!115727 () Bool)

(assert (=> (and b!1897742 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176537) tb!115727))

(declare-fun result!139922 () Bool)

(assert (= result!139922 result!139918))

(assert (=> d!581152 t!176537))

(declare-fun b_and!146713 () Bool)

(assert (= b_and!146707 (and (=> t!176537 result!139922) b_and!146713)))

(declare-fun m!2329381 () Bool)

(assert (=> d!581152 m!2329381))

(declare-fun m!2329383 () Bool)

(assert (=> d!581152 m!2329383))

(assert (=> b!1897743 d!581152))

(declare-fun d!581154 () Bool)

(declare-fun fromListB!1212 (List!21393) BalanceConc!14002)

(assert (=> d!581154 (= (seqFromList!2658 (originalCharacters!4593 (h!26714 tokens!598))) (fromListB!1212 (originalCharacters!4593 (h!26714 tokens!598))))))

(declare-fun bs!413516 () Bool)

(assert (= bs!413516 d!581154))

(declare-fun m!2329385 () Bool)

(assert (=> bs!413516 m!2329385))

(assert (=> b!1897743 d!581154))

(declare-fun d!581156 () Bool)

(declare-fun e!1212043 () Bool)

(assert (=> d!581156 e!1212043))

(declare-fun res!847323 () Bool)

(assert (=> d!581156 (=> (not res!847323) (not e!1212043))))

(assert (=> d!581156 (= res!847323 (isDefined!3575 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 (h!26714 tokens!598))))))))

(declare-fun lt!725869 () Unit!35654)

(assert (=> d!581156 (= lt!725869 (choose!11842 thiss!23328 rules!3198 lt!725752 (h!26714 tokens!598)))))

(assert (=> d!581156 (rulesInvariant!3006 thiss!23328 rules!3198)))

(assert (=> d!581156 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!629 thiss!23328 rules!3198 lt!725752 (h!26714 tokens!598)) lt!725869)))

(declare-fun b!1898210 () Bool)

(declare-fun res!847324 () Bool)

(assert (=> b!1898210 (=> (not res!847324) (not e!1212043))))

(assert (=> b!1898210 (= res!847324 (matchR!2497 (regex!3786 (get!6577 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 (h!26714 tokens!598)))))) (list!8666 (charsOf!2342 (h!26714 tokens!598)))))))

(declare-fun b!1898211 () Bool)

(assert (=> b!1898211 (= e!1212043 (= (rule!5979 (h!26714 tokens!598)) (get!6577 (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 (h!26714 tokens!598)))))))))

(assert (= (and d!581156 res!847323) b!1898210))

(assert (= (and b!1898210 res!847324) b!1898211))

(assert (=> d!581156 m!2328905))

(assert (=> d!581156 m!2328905))

(declare-fun m!2329387 () Bool)

(assert (=> d!581156 m!2329387))

(declare-fun m!2329389 () Bool)

(assert (=> d!581156 m!2329389))

(assert (=> d!581156 m!2328955))

(declare-fun m!2329391 () Bool)

(assert (=> b!1898210 m!2329391))

(declare-fun m!2329393 () Bool)

(assert (=> b!1898210 m!2329393))

(assert (=> b!1898210 m!2328905))

(declare-fun m!2329395 () Bool)

(assert (=> b!1898210 m!2329395))

(assert (=> b!1898210 m!2328905))

(assert (=> b!1898210 m!2328899))

(assert (=> b!1898210 m!2329391))

(assert (=> b!1898210 m!2328899))

(assert (=> b!1898211 m!2328905))

(assert (=> b!1898211 m!2328905))

(assert (=> b!1898211 m!2329395))

(assert (=> b!1897743 d!581156))

(declare-fun b!1898212 () Bool)

(declare-fun lt!725871 () Unit!35654)

(declare-fun lt!725872 () Unit!35654)

(assert (=> b!1898212 (= lt!725871 lt!725872)))

(assert (=> b!1898212 (rulesInvariant!3006 thiss!23328 (t!176449 rules!3198))))

(assert (=> b!1898212 (= lt!725872 (lemmaInvariantOnRulesThenOnTail!244 thiss!23328 (h!26713 rules!3198) (t!176449 rules!3198)))))

(declare-fun e!1212045 () Option!4277)

(assert (=> b!1898212 (= e!1212045 (getRuleFromTag!629 thiss!23328 (t!176449 rules!3198) (tag!4206 (rule!5979 separatorToken!354))))))

(declare-fun b!1898213 () Bool)

(declare-fun e!1212047 () Option!4277)

(assert (=> b!1898213 (= e!1212047 (Some!4276 (h!26713 rules!3198)))))

(declare-fun b!1898214 () Bool)

(declare-fun e!1212046 () Bool)

(declare-fun lt!725870 () Option!4277)

(assert (=> b!1898214 (= e!1212046 (= (tag!4206 (get!6577 lt!725870)) (tag!4206 (rule!5979 separatorToken!354))))))

(declare-fun b!1898215 () Bool)

(assert (=> b!1898215 (= e!1212045 None!4276)))

(declare-fun d!581158 () Bool)

(declare-fun e!1212044 () Bool)

(assert (=> d!581158 e!1212044))

(declare-fun res!847325 () Bool)

(assert (=> d!581158 (=> res!847325 e!1212044)))

(assert (=> d!581158 (= res!847325 (isEmpty!13084 lt!725870))))

(assert (=> d!581158 (= lt!725870 e!1212047)))

(declare-fun c!309490 () Bool)

(assert (=> d!581158 (= c!309490 (and ((_ is Cons!21312) rules!3198) (= (tag!4206 (h!26713 rules!3198)) (tag!4206 (rule!5979 separatorToken!354)))))))

(assert (=> d!581158 (rulesInvariant!3006 thiss!23328 rules!3198)))

(assert (=> d!581158 (= (getRuleFromTag!629 thiss!23328 rules!3198 (tag!4206 (rule!5979 separatorToken!354))) lt!725870)))

(declare-fun b!1898216 () Bool)

(assert (=> b!1898216 (= e!1212047 e!1212045)))

(declare-fun c!309491 () Bool)

(assert (=> b!1898216 (= c!309491 (and ((_ is Cons!21312) rules!3198) (not (= (tag!4206 (h!26713 rules!3198)) (tag!4206 (rule!5979 separatorToken!354))))))))

(declare-fun b!1898217 () Bool)

(assert (=> b!1898217 (= e!1212044 e!1212046)))

(declare-fun res!847326 () Bool)

(assert (=> b!1898217 (=> (not res!847326) (not e!1212046))))

(assert (=> b!1898217 (= res!847326 (contains!3839 rules!3198 (get!6577 lt!725870)))))

(assert (= (and d!581158 c!309490) b!1898213))

(assert (= (and d!581158 (not c!309490)) b!1898216))

(assert (= (and b!1898216 c!309491) b!1898212))

(assert (= (and b!1898216 (not c!309491)) b!1898215))

(assert (= (and d!581158 (not res!847325)) b!1898217))

(assert (= (and b!1898217 res!847326) b!1898214))

(assert (=> b!1898212 m!2329365))

(assert (=> b!1898212 m!2329367))

(declare-fun m!2329397 () Bool)

(assert (=> b!1898212 m!2329397))

(declare-fun m!2329399 () Bool)

(assert (=> b!1898214 m!2329399))

(declare-fun m!2329401 () Bool)

(assert (=> d!581158 m!2329401))

(assert (=> d!581158 m!2328955))

(assert (=> b!1898217 m!2329399))

(assert (=> b!1898217 m!2329399))

(declare-fun m!2329403 () Bool)

(assert (=> b!1898217 m!2329403))

(assert (=> b!1897743 d!581158))

(declare-fun d!581160 () Bool)

(declare-fun res!847331 () Bool)

(declare-fun e!1212050 () Bool)

(assert (=> d!581160 (=> (not res!847331) (not e!1212050))))

(assert (=> d!581160 (= res!847331 (not (isEmpty!13081 (originalCharacters!4593 (h!26714 tokens!598)))))))

(assert (=> d!581160 (= (inv!28411 (h!26714 tokens!598)) e!1212050)))

(declare-fun b!1898222 () Bool)

(declare-fun res!847332 () Bool)

(assert (=> b!1898222 (=> (not res!847332) (not e!1212050))))

(assert (=> b!1898222 (= res!847332 (= (originalCharacters!4593 (h!26714 tokens!598)) (list!8666 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (value!119492 (h!26714 tokens!598))))))))

(declare-fun b!1898223 () Bool)

(assert (=> b!1898223 (= e!1212050 (= (size!16868 (h!26714 tokens!598)) (size!16872 (originalCharacters!4593 (h!26714 tokens!598)))))))

(assert (= (and d!581160 res!847331) b!1898222))

(assert (= (and b!1898222 res!847332) b!1898223))

(declare-fun b_lambda!62475 () Bool)

(assert (=> (not b_lambda!62475) (not b!1898222)))

(assert (=> b!1898222 t!176533))

(declare-fun b_and!146715 () Bool)

(assert (= b_and!146709 (and (=> t!176533 result!139918) b_and!146715)))

(assert (=> b!1898222 t!176535))

(declare-fun b_and!146717 () Bool)

(assert (= b_and!146711 (and (=> t!176535 result!139920) b_and!146717)))

(assert (=> b!1898222 t!176537))

(declare-fun b_and!146719 () Bool)

(assert (= b_and!146713 (and (=> t!176537 result!139922) b_and!146719)))

(declare-fun m!2329405 () Bool)

(assert (=> d!581160 m!2329405))

(assert (=> b!1898222 m!2329383))

(assert (=> b!1898222 m!2329383))

(declare-fun m!2329407 () Bool)

(assert (=> b!1898222 m!2329407))

(declare-fun m!2329409 () Bool)

(assert (=> b!1898223 m!2329409))

(assert (=> b!1897733 d!581160))

(declare-fun d!581162 () Bool)

(declare-fun res!847333 () Bool)

(declare-fun e!1212051 () Bool)

(assert (=> d!581162 (=> res!847333 e!1212051)))

(assert (=> d!581162 (= res!847333 ((_ is Nil!21313) (t!176450 tokens!598)))))

(assert (=> d!581162 (= (forall!4464 (t!176450 tokens!598) lambda!74153) e!1212051)))

(declare-fun b!1898224 () Bool)

(declare-fun e!1212052 () Bool)

(assert (=> b!1898224 (= e!1212051 e!1212052)))

(declare-fun res!847334 () Bool)

(assert (=> b!1898224 (=> (not res!847334) (not e!1212052))))

(assert (=> b!1898224 (= res!847334 (dynLambda!10377 lambda!74153 (h!26714 (t!176450 tokens!598))))))

(declare-fun b!1898225 () Bool)

(assert (=> b!1898225 (= e!1212052 (forall!4464 (t!176450 (t!176450 tokens!598)) lambda!74153))))

(assert (= (and d!581162 (not res!847333)) b!1898224))

(assert (= (and b!1898224 res!847334) b!1898225))

(declare-fun b_lambda!62477 () Bool)

(assert (=> (not b_lambda!62477) (not b!1898224)))

(declare-fun m!2329411 () Bool)

(assert (=> b!1898224 m!2329411))

(declare-fun m!2329413 () Bool)

(assert (=> b!1898225 m!2329413))

(assert (=> b!1897744 d!581162))

(declare-fun d!581164 () Bool)

(assert (=> d!581164 (= (inv!28408 (tag!4206 (rule!5979 separatorToken!354))) (= (mod (str.len (value!119491 (tag!4206 (rule!5979 separatorToken!354)))) 2) 0))))

(assert (=> b!1897739 d!581164))

(declare-fun d!581166 () Bool)

(declare-fun res!847335 () Bool)

(declare-fun e!1212053 () Bool)

(assert (=> d!581166 (=> (not res!847335) (not e!1212053))))

(assert (=> d!581166 (= res!847335 (semiInverseModEq!1533 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354)))))))

(assert (=> d!581166 (= (inv!28412 (transformation!3786 (rule!5979 separatorToken!354))) e!1212053)))

(declare-fun b!1898226 () Bool)

(assert (=> b!1898226 (= e!1212053 (equivClasses!1460 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354)))))))

(assert (= (and d!581166 res!847335) b!1898226))

(declare-fun m!2329415 () Bool)

(assert (=> d!581166 m!2329415))

(declare-fun m!2329417 () Bool)

(assert (=> b!1898226 m!2329417))

(assert (=> b!1897739 d!581166))

(declare-fun d!581168 () Bool)

(declare-fun res!847340 () Bool)

(declare-fun e!1212058 () Bool)

(assert (=> d!581168 (=> res!847340 e!1212058)))

(assert (=> d!581168 (= res!847340 (not ((_ is Cons!21312) rules!3198)))))

(assert (=> d!581168 (= (sepAndNonSepRulesDisjointChars!884 rules!3198 rules!3198) e!1212058)))

(declare-fun b!1898231 () Bool)

(declare-fun e!1212059 () Bool)

(assert (=> b!1898231 (= e!1212058 e!1212059)))

(declare-fun res!847341 () Bool)

(assert (=> b!1898231 (=> (not res!847341) (not e!1212059))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!418 (Rule!7372 List!21394) Bool)

(assert (=> b!1898231 (= res!847341 (ruleDisjointCharsFromAllFromOtherType!418 (h!26713 rules!3198) rules!3198))))

(declare-fun b!1898232 () Bool)

(assert (=> b!1898232 (= e!1212059 (sepAndNonSepRulesDisjointChars!884 rules!3198 (t!176449 rules!3198)))))

(assert (= (and d!581168 (not res!847340)) b!1898231))

(assert (= (and b!1898231 res!847341) b!1898232))

(declare-fun m!2329419 () Bool)

(assert (=> b!1898231 m!2329419))

(declare-fun m!2329421 () Bool)

(assert (=> b!1898232 m!2329421))

(assert (=> b!1897729 d!581168))

(declare-fun b!1898233 () Bool)

(declare-fun e!1212061 () Bool)

(assert (=> b!1898233 (= e!1212061 (inv!15 (value!119492 (h!26714 tokens!598))))))

(declare-fun b!1898234 () Bool)

(declare-fun e!1212060 () Bool)

(assert (=> b!1898234 (= e!1212060 (inv!16 (value!119492 (h!26714 tokens!598))))))

(declare-fun d!581170 () Bool)

(declare-fun c!309492 () Bool)

(assert (=> d!581170 (= c!309492 ((_ is IntegerValue!11766) (value!119492 (h!26714 tokens!598))))))

(assert (=> d!581170 (= (inv!21 (value!119492 (h!26714 tokens!598))) e!1212060)))

(declare-fun b!1898235 () Bool)

(declare-fun res!847342 () Bool)

(assert (=> b!1898235 (=> res!847342 e!1212061)))

(assert (=> b!1898235 (= res!847342 (not ((_ is IntegerValue!11768) (value!119492 (h!26714 tokens!598)))))))

(declare-fun e!1212062 () Bool)

(assert (=> b!1898235 (= e!1212062 e!1212061)))

(declare-fun b!1898236 () Bool)

(assert (=> b!1898236 (= e!1212062 (inv!17 (value!119492 (h!26714 tokens!598))))))

(declare-fun b!1898237 () Bool)

(assert (=> b!1898237 (= e!1212060 e!1212062)))

(declare-fun c!309493 () Bool)

(assert (=> b!1898237 (= c!309493 ((_ is IntegerValue!11767) (value!119492 (h!26714 tokens!598))))))

(assert (= (and d!581170 c!309492) b!1898234))

(assert (= (and d!581170 (not c!309492)) b!1898237))

(assert (= (and b!1898237 c!309493) b!1898236))

(assert (= (and b!1898237 (not c!309493)) b!1898235))

(assert (= (and b!1898235 (not res!847342)) b!1898233))

(declare-fun m!2329423 () Bool)

(assert (=> b!1898233 m!2329423))

(declare-fun m!2329425 () Bool)

(assert (=> b!1898234 m!2329425))

(declare-fun m!2329427 () Bool)

(assert (=> b!1898236 m!2329427))

(assert (=> b!1897740 d!581170))

(declare-fun d!581172 () Bool)

(declare-fun res!847343 () Bool)

(declare-fun e!1212063 () Bool)

(assert (=> d!581172 (=> (not res!847343) (not e!1212063))))

(assert (=> d!581172 (= res!847343 (not (isEmpty!13081 (originalCharacters!4593 separatorToken!354))))))

(assert (=> d!581172 (= (inv!28411 separatorToken!354) e!1212063)))

(declare-fun b!1898238 () Bool)

(declare-fun res!847344 () Bool)

(assert (=> b!1898238 (=> (not res!847344) (not e!1212063))))

(assert (=> b!1898238 (= res!847344 (= (originalCharacters!4593 separatorToken!354) (list!8666 (dynLambda!10379 (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (value!119492 separatorToken!354)))))))

(declare-fun b!1898239 () Bool)

(assert (=> b!1898239 (= e!1212063 (= (size!16868 separatorToken!354) (size!16872 (originalCharacters!4593 separatorToken!354))))))

(assert (= (and d!581172 res!847343) b!1898238))

(assert (= (and b!1898238 res!847344) b!1898239))

(declare-fun b_lambda!62479 () Bool)

(assert (=> (not b_lambda!62479) (not b!1898238)))

(assert (=> b!1898238 t!176526))

(declare-fun b_and!146721 () Bool)

(assert (= b_and!146715 (and (=> t!176526 result!139912) b_and!146721)))

(assert (=> b!1898238 t!176528))

(declare-fun b_and!146723 () Bool)

(assert (= b_and!146717 (and (=> t!176528 result!139914) b_and!146723)))

(assert (=> b!1898238 t!176530))

(declare-fun b_and!146725 () Bool)

(assert (= b_and!146719 (and (=> t!176530 result!139916) b_and!146725)))

(declare-fun m!2329429 () Bool)

(assert (=> d!581172 m!2329429))

(assert (=> b!1898238 m!2329329))

(assert (=> b!1898238 m!2329329))

(declare-fun m!2329431 () Bool)

(assert (=> b!1898238 m!2329431))

(declare-fun m!2329433 () Bool)

(assert (=> b!1898239 m!2329433))

(assert (=> start!190276 d!581172))

(declare-fun d!581174 () Bool)

(assert (=> d!581174 (= (get!6578 lt!725757) (v!26306 lt!725757))))

(assert (=> b!1897741 d!581174))

(declare-fun b!1898250 () Bool)

(declare-fun e!1212066 () Bool)

(declare-fun tp_is_empty!9073 () Bool)

(assert (=> b!1898250 (= e!1212066 tp_is_empty!9073)))

(assert (=> b!1897745 (= tp!541804 e!1212066)))

(declare-fun b!1898253 () Bool)

(declare-fun tp!541882 () Bool)

(declare-fun tp!541883 () Bool)

(assert (=> b!1898253 (= e!1212066 (and tp!541882 tp!541883))))

(declare-fun b!1898252 () Bool)

(declare-fun tp!541881 () Bool)

(assert (=> b!1898252 (= e!1212066 tp!541881)))

(declare-fun b!1898251 () Bool)

(declare-fun tp!541885 () Bool)

(declare-fun tp!541884 () Bool)

(assert (=> b!1898251 (= e!1212066 (and tp!541885 tp!541884))))

(assert (= (and b!1897745 ((_ is ElementMatch!5211) (regex!3786 (rule!5979 (h!26714 tokens!598))))) b!1898250))

(assert (= (and b!1897745 ((_ is Concat!9134) (regex!3786 (rule!5979 (h!26714 tokens!598))))) b!1898251))

(assert (= (and b!1897745 ((_ is Star!5211) (regex!3786 (rule!5979 (h!26714 tokens!598))))) b!1898252))

(assert (= (and b!1897745 ((_ is Union!5211) (regex!3786 (rule!5979 (h!26714 tokens!598))))) b!1898253))

(declare-fun b!1898258 () Bool)

(declare-fun e!1212069 () Bool)

(declare-fun tp!541888 () Bool)

(assert (=> b!1898258 (= e!1212069 (and tp_is_empty!9073 tp!541888))))

(assert (=> b!1897735 (= tp!541801 e!1212069)))

(assert (= (and b!1897735 ((_ is Cons!21311) (originalCharacters!4593 separatorToken!354))) b!1898258))

(declare-fun b!1898259 () Bool)

(declare-fun e!1212070 () Bool)

(assert (=> b!1898259 (= e!1212070 tp_is_empty!9073)))

(assert (=> b!1897736 (= tp!541794 e!1212070)))

(declare-fun b!1898262 () Bool)

(declare-fun tp!541890 () Bool)

(declare-fun tp!541891 () Bool)

(assert (=> b!1898262 (= e!1212070 (and tp!541890 tp!541891))))

(declare-fun b!1898261 () Bool)

(declare-fun tp!541889 () Bool)

(assert (=> b!1898261 (= e!1212070 tp!541889)))

(declare-fun b!1898260 () Bool)

(declare-fun tp!541893 () Bool)

(declare-fun tp!541892 () Bool)

(assert (=> b!1898260 (= e!1212070 (and tp!541893 tp!541892))))

(assert (= (and b!1897736 ((_ is ElementMatch!5211) (regex!3786 (h!26713 rules!3198)))) b!1898259))

(assert (= (and b!1897736 ((_ is Concat!9134) (regex!3786 (h!26713 rules!3198)))) b!1898260))

(assert (= (and b!1897736 ((_ is Star!5211) (regex!3786 (h!26713 rules!3198)))) b!1898261))

(assert (= (and b!1897736 ((_ is Union!5211) (regex!3786 (h!26713 rules!3198)))) b!1898262))

(declare-fun b!1898273 () Bool)

(declare-fun b_free!53141 () Bool)

(declare-fun b_next!53845 () Bool)

(assert (=> b!1898273 (= b_free!53141 (not b_next!53845))))

(declare-fun t!176539 () Bool)

(declare-fun tb!115729 () Bool)

(assert (=> (and b!1898273 (= (toValue!5403 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176539) tb!115729))

(declare-fun result!139930 () Bool)

(assert (= result!139930 result!139898))

(assert (=> d!581142 t!176539))

(assert (=> d!581144 t!176539))

(declare-fun t!176541 () Bool)

(declare-fun tb!115731 () Bool)

(assert (=> (and b!1898273 (= (toValue!5403 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176541) tb!115731))

(declare-fun result!139932 () Bool)

(assert (= result!139932 result!139906))

(assert (=> d!581144 t!176541))

(declare-fun tp!541904 () Bool)

(declare-fun b_and!146727 () Bool)

(assert (=> b!1898273 (= tp!541904 (and (=> t!176539 result!139930) (=> t!176541 result!139932) b_and!146727))))

(declare-fun b_free!53143 () Bool)

(declare-fun b_next!53847 () Bool)

(assert (=> b!1898273 (= b_free!53143 (not b_next!53847))))

(declare-fun t!176543 () Bool)

(declare-fun tb!115733 () Bool)

(assert (=> (and b!1898273 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354)))) t!176543) tb!115733))

(declare-fun result!139934 () Bool)

(assert (= result!139934 result!139912))

(assert (=> b!1898238 t!176543))

(assert (=> d!581146 t!176543))

(declare-fun t!176545 () Bool)

(declare-fun tb!115735 () Bool)

(assert (=> (and b!1898273 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176545) tb!115735))

(declare-fun result!139936 () Bool)

(assert (= result!139936 result!139918))

(assert (=> b!1898222 t!176545))

(assert (=> d!581152 t!176545))

(declare-fun tb!115737 () Bool)

(declare-fun t!176547 () Bool)

(assert (=> (and b!1898273 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176547) tb!115737))

(declare-fun result!139938 () Bool)

(assert (= result!139938 result!139890))

(assert (=> d!581142 t!176547))

(declare-fun b_and!146729 () Bool)

(declare-fun tp!541902 () Bool)

(assert (=> b!1898273 (= tp!541902 (and (=> t!176545 result!139936) (=> t!176543 result!139934) (=> t!176547 result!139938) b_and!146729))))

(declare-fun e!1212080 () Bool)

(assert (=> b!1898273 (= e!1212080 (and tp!541904 tp!541902))))

(declare-fun e!1212081 () Bool)

(declare-fun tp!541905 () Bool)

(declare-fun b!1898272 () Bool)

(assert (=> b!1898272 (= e!1212081 (and tp!541905 (inv!28408 (tag!4206 (h!26713 (t!176449 rules!3198)))) (inv!28412 (transformation!3786 (h!26713 (t!176449 rules!3198)))) e!1212080))))

(declare-fun b!1898271 () Bool)

(declare-fun e!1212082 () Bool)

(declare-fun tp!541903 () Bool)

(assert (=> b!1898271 (= e!1212082 (and e!1212081 tp!541903))))

(assert (=> b!1897731 (= tp!541795 e!1212082)))

(assert (= b!1898272 b!1898273))

(assert (= b!1898271 b!1898272))

(assert (= (and b!1897731 ((_ is Cons!21312) (t!176449 rules!3198))) b!1898271))

(declare-fun m!2329435 () Bool)

(assert (=> b!1898272 m!2329435))

(declare-fun m!2329437 () Bool)

(assert (=> b!1898272 m!2329437))

(declare-fun b!1898287 () Bool)

(declare-fun b_free!53145 () Bool)

(declare-fun b_next!53849 () Bool)

(assert (=> b!1898287 (= b_free!53145 (not b_next!53849))))

(declare-fun t!176549 () Bool)

(declare-fun tb!115739 () Bool)

(assert (=> (and b!1898287 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176549) tb!115739))

(declare-fun result!139942 () Bool)

(assert (= result!139942 result!139898))

(assert (=> d!581142 t!176549))

(assert (=> d!581144 t!176549))

(declare-fun t!176551 () Bool)

(declare-fun tb!115741 () Bool)

(assert (=> (and b!1898287 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176551) tb!115741))

(declare-fun result!139944 () Bool)

(assert (= result!139944 result!139906))

(assert (=> d!581144 t!176551))

(declare-fun b_and!146731 () Bool)

(declare-fun tp!541916 () Bool)

(assert (=> b!1898287 (= tp!541916 (and (=> t!176549 result!139942) (=> t!176551 result!139944) b_and!146731))))

(declare-fun b_free!53147 () Bool)

(declare-fun b_next!53851 () Bool)

(assert (=> b!1898287 (= b_free!53147 (not b_next!53851))))

(declare-fun t!176553 () Bool)

(declare-fun tb!115743 () Bool)

(assert (=> (and b!1898287 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354)))) t!176553) tb!115743))

(declare-fun result!139946 () Bool)

(assert (= result!139946 result!139912))

(assert (=> b!1898238 t!176553))

(assert (=> d!581146 t!176553))

(declare-fun t!176555 () Bool)

(declare-fun tb!115745 () Bool)

(assert (=> (and b!1898287 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176555) tb!115745))

(declare-fun result!139948 () Bool)

(assert (= result!139948 result!139918))

(assert (=> b!1898222 t!176555))

(assert (=> d!581152 t!176555))

(declare-fun t!176557 () Bool)

(declare-fun tb!115747 () Bool)

(assert (=> (and b!1898287 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598))))) t!176557) tb!115747))

(declare-fun result!139950 () Bool)

(assert (= result!139950 result!139890))

(assert (=> d!581142 t!176557))

(declare-fun b_and!146733 () Bool)

(declare-fun tp!541919 () Bool)

(assert (=> b!1898287 (= tp!541919 (and (=> t!176557 result!139950) (=> t!176553 result!139946) (=> t!176555 result!139948) b_and!146733))))

(declare-fun e!1212099 () Bool)

(declare-fun b!1898286 () Bool)

(declare-fun tp!541920 () Bool)

(declare-fun e!1212097 () Bool)

(assert (=> b!1898286 (= e!1212097 (and tp!541920 (inv!28408 (tag!4206 (rule!5979 (h!26714 (t!176450 tokens!598))))) (inv!28412 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) e!1212099))))

(declare-fun e!1212098 () Bool)

(declare-fun e!1212096 () Bool)

(declare-fun b!1898284 () Bool)

(declare-fun tp!541918 () Bool)

(assert (=> b!1898284 (= e!1212096 (and (inv!28411 (h!26714 (t!176450 tokens!598))) e!1212098 tp!541918))))

(assert (=> b!1898287 (= e!1212099 (and tp!541916 tp!541919))))

(declare-fun b!1898285 () Bool)

(declare-fun tp!541917 () Bool)

(assert (=> b!1898285 (= e!1212098 (and (inv!21 (value!119492 (h!26714 (t!176450 tokens!598)))) e!1212097 tp!541917))))

(assert (=> b!1897733 (= tp!541793 e!1212096)))

(assert (= b!1898286 b!1898287))

(assert (= b!1898285 b!1898286))

(assert (= b!1898284 b!1898285))

(assert (= (and b!1897733 ((_ is Cons!21313) (t!176450 tokens!598))) b!1898284))

(declare-fun m!2329439 () Bool)

(assert (=> b!1898286 m!2329439))

(declare-fun m!2329441 () Bool)

(assert (=> b!1898286 m!2329441))

(declare-fun m!2329443 () Bool)

(assert (=> b!1898284 m!2329443))

(declare-fun m!2329445 () Bool)

(assert (=> b!1898285 m!2329445))

(declare-fun b!1898288 () Bool)

(declare-fun e!1212101 () Bool)

(assert (=> b!1898288 (= e!1212101 tp_is_empty!9073)))

(assert (=> b!1897739 (= tp!541799 e!1212101)))

(declare-fun b!1898291 () Bool)

(declare-fun tp!541922 () Bool)

(declare-fun tp!541923 () Bool)

(assert (=> b!1898291 (= e!1212101 (and tp!541922 tp!541923))))

(declare-fun b!1898290 () Bool)

(declare-fun tp!541921 () Bool)

(assert (=> b!1898290 (= e!1212101 tp!541921)))

(declare-fun b!1898289 () Bool)

(declare-fun tp!541925 () Bool)

(declare-fun tp!541924 () Bool)

(assert (=> b!1898289 (= e!1212101 (and tp!541925 tp!541924))))

(assert (= (and b!1897739 ((_ is ElementMatch!5211) (regex!3786 (rule!5979 separatorToken!354)))) b!1898288))

(assert (= (and b!1897739 ((_ is Concat!9134) (regex!3786 (rule!5979 separatorToken!354)))) b!1898289))

(assert (= (and b!1897739 ((_ is Star!5211) (regex!3786 (rule!5979 separatorToken!354)))) b!1898290))

(assert (= (and b!1897739 ((_ is Union!5211) (regex!3786 (rule!5979 separatorToken!354)))) b!1898291))

(declare-fun b!1898292 () Bool)

(declare-fun e!1212102 () Bool)

(declare-fun tp!541926 () Bool)

(assert (=> b!1898292 (= e!1212102 (and tp_is_empty!9073 tp!541926))))

(assert (=> b!1897740 (= tp!541796 e!1212102)))

(assert (= (and b!1897740 ((_ is Cons!21311) (originalCharacters!4593 (h!26714 tokens!598)))) b!1898292))

(declare-fun b_lambda!62481 () Bool)

(assert (= b_lambda!62441 (or b!1897725 b_lambda!62481)))

(declare-fun bs!413517 () Bool)

(declare-fun d!581176 () Bool)

(assert (= bs!413517 (and d!581176 b!1897725)))

(assert (=> bs!413517 (= (dynLambda!10377 lambda!74153 (h!26714 tokens!598)) (not (isSeparator!3786 (rule!5979 (h!26714 tokens!598)))))))

(assert (=> b!1898122 d!581176))

(declare-fun b_lambda!62483 () Bool)

(assert (= b_lambda!62473 (or (and b!1897742 b_free!53131 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897730 b_free!53127) (and b!1898287 b_free!53147 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53123 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898273 b_free!53143 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62483)))

(declare-fun b_lambda!62485 () Bool)

(assert (= b_lambda!62467 (or (and b!1897730 b_free!53125) (and b!1898273 b_free!53141 (= (toValue!5403 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898287 b_free!53145 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53121 (= (toValue!5403 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897742 b_free!53129 (= (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62485)))

(declare-fun b_lambda!62487 () Bool)

(assert (= b_lambda!62471 (or (and b!1897742 b_free!53131) (and b!1897730 b_free!53127 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1898287 b_free!53147 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1897748 b_free!53123 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1898273 b_free!53143 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) b_lambda!62487)))

(declare-fun b_lambda!62489 () Bool)

(assert (= b_lambda!62479 (or (and b!1897742 b_free!53131) (and b!1897730 b_free!53127 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1898287 b_free!53147 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1897748 b_free!53123 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) (and b!1898273 b_free!53143 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))))) b_lambda!62489)))

(declare-fun b_lambda!62491 () Bool)

(assert (= b_lambda!62475 (or (and b!1897742 b_free!53131 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897730 b_free!53127) (and b!1898287 b_free!53147 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53123 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898273 b_free!53143 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62491)))

(declare-fun b_lambda!62493 () Bool)

(assert (= b_lambda!62463 (or (and b!1897742 b_free!53131 (= (toChars!5262 (transformation!3786 (rule!5979 separatorToken!354))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897730 b_free!53127) (and b!1898287 b_free!53147 (= (toChars!5262 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53123 (= (toChars!5262 (transformation!3786 (h!26713 rules!3198))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898273 b_free!53143 (= (toChars!5262 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toChars!5262 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62493)))

(declare-fun b_lambda!62495 () Bool)

(assert (= b_lambda!62465 (or (and b!1897730 b_free!53125) (and b!1898273 b_free!53141 (= (toValue!5403 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898287 b_free!53145 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53121 (= (toValue!5403 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897742 b_free!53129 (= (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62495)))

(declare-fun b_lambda!62497 () Bool)

(assert (= b_lambda!62477 (or b!1897725 b_lambda!62497)))

(declare-fun bs!413518 () Bool)

(declare-fun d!581178 () Bool)

(assert (= bs!413518 (and d!581178 b!1897725)))

(assert (=> bs!413518 (= (dynLambda!10377 lambda!74153 (h!26714 (t!176450 tokens!598))) (not (isSeparator!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))))))

(assert (=> b!1898224 d!581178))

(declare-fun b_lambda!62499 () Bool)

(assert (= b_lambda!62469 (or (and b!1897730 b_free!53125) (and b!1898273 b_free!53141 (= (toValue!5403 (transformation!3786 (h!26713 (t!176449 rules!3198)))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1898287 b_free!53145 (= (toValue!5403 (transformation!3786 (rule!5979 (h!26714 (t!176450 tokens!598))))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897748 b_free!53121 (= (toValue!5403 (transformation!3786 (h!26713 rules!3198))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) (and b!1897742 b_free!53129 (= (toValue!5403 (transformation!3786 (rule!5979 separatorToken!354))) (toValue!5403 (transformation!3786 (rule!5979 (h!26714 tokens!598)))))) b_lambda!62499)))

(check-sat (not b!1898252) (not d!581160) (not b!1898208) (not b!1898223) (not b!1897856) (not b!1898214) (not b!1897866) (not d!581042) (not b!1898251) b_and!146697 (not b_next!53825) (not b!1897902) (not b!1898285) b_and!146725 (not b!1897863) (not b!1898239) (not b!1898210) (not b!1898290) (not d!581156) (not b!1897849) (not b!1898260) (not b!1898272) (not d!581148) (not b!1898212) b_and!146733 (not b!1897882) (not b!1898233) (not b!1897884) (not b!1898205) (not b!1898291) (not d!581054) (not tb!115711) (not b_lambda!62499) (not b!1898261) (not bm!116989) (not b_next!53829) (not b!1898217) (not b_lambda!62497) (not b!1898225) (not b!1898262) (not b!1897883) (not b_lambda!62495) (not b!1898234) (not b!1898292) (not d!581052) (not tb!115717) (not b!1897890) b_and!146731 b_and!146721 (not tb!115699) (not b!1898082) b_and!146729 (not b!1898226) (not d!581126) (not b!1897870) (not b!1898188) (not b!1898183) (not b!1898184) (not b!1898066) b_and!146701 (not tb!115723) (not b!1897869) (not b!1898211) (not b!1898232) (not b_lambda!62481) (not b!1898253) (not b_next!53835) (not d!581158) (not b!1898182) b_and!146699 (not b!1897852) (not b_lambda!62489) (not b_next!53847) (not b_lambda!62487) b_and!146727 (not d!581046) (not bm!116981) (not d!581134) (not b_lambda!62491) (not d!581144) (not b!1898139) (not b!1898067) (not d!581172) (not b!1897865) (not b_lambda!62493) (not b!1898231) (not b_lambda!62483) (not tb!115705) (not b!1897855) (not b_next!53851) (not b!1898222) (not d!581058) (not b!1897901) (not d!581136) b_and!146723 (not b!1898140) (not b!1897859) (not b!1898124) (not d!581154) (not b!1898209) (not d!581152) (not b!1898190) (not b!1898238) (not b_next!53827) (not b!1897904) (not b!1897851) (not b!1898289) tp_is_empty!9073 (not b!1898258) (not d!581122) (not b!1898186) (not d!581166) (not b!1897887) (not b!1898137) (not b_next!53849) (not b!1898141) (not d!581150) (not d!581142) (not b!1898286) (not b!1898153) (not b!1898236) (not d!581124) (not b_next!53831) (not d!581146) (not b!1898284) (not b!1898271) (not bm!116982) (not d!581132) (not b!1898203) (not b!1897845) (not b!1898163) (not b_next!53845) (not b_next!53833) (not b!1898185) (not d!581138) (not d!581140) (not b!1898138) (not b_lambda!62485) (not d!581038) (not b!1898123) (not b!1898189))
(check-sat b_and!146733 (not b_next!53829) b_and!146731 b_and!146721 b_and!146729 b_and!146701 (not b_next!53835) b_and!146699 (not b_next!53851) b_and!146723 (not b_next!53827) (not b_next!53849) (not b_next!53831) b_and!146697 (not b_next!53825) b_and!146725 (not b_next!53847) b_and!146727 (not b_next!53845) (not b_next!53833))
