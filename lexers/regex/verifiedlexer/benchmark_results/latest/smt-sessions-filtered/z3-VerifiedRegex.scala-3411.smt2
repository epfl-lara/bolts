; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192272 () Bool)

(assert start!192272)

(declare-fun b!1919112 () Bool)

(declare-fun b_free!54673 () Bool)

(declare-fun b_next!55377 () Bool)

(assert (=> b!1919112 (= b_free!54673 (not b_next!55377))))

(declare-fun tp!548084 () Bool)

(declare-fun b_and!149879 () Bool)

(assert (=> b!1919112 (= tp!548084 b_and!149879)))

(declare-fun b_free!54675 () Bool)

(declare-fun b_next!55379 () Bool)

(assert (=> b!1919112 (= b_free!54675 (not b_next!55379))))

(declare-fun tp!548085 () Bool)

(declare-fun b_and!149881 () Bool)

(assert (=> b!1919112 (= tp!548085 b_and!149881)))

(declare-fun b!1919137 () Bool)

(declare-fun b_free!54677 () Bool)

(declare-fun b_next!55381 () Bool)

(assert (=> b!1919137 (= b_free!54677 (not b_next!55381))))

(declare-fun tp!548080 () Bool)

(declare-fun b_and!149883 () Bool)

(assert (=> b!1919137 (= tp!548080 b_and!149883)))

(declare-fun b_free!54679 () Bool)

(declare-fun b_next!55383 () Bool)

(assert (=> b!1919137 (= b_free!54679 (not b_next!55383))))

(declare-fun tp!548077 () Bool)

(declare-fun b_and!149885 () Bool)

(assert (=> b!1919137 (= tp!548077 b_and!149885)))

(declare-fun b!1919118 () Bool)

(declare-fun b_free!54681 () Bool)

(declare-fun b_next!55385 () Bool)

(assert (=> b!1919118 (= b_free!54681 (not b_next!55385))))

(declare-fun tp!548078 () Bool)

(declare-fun b_and!149887 () Bool)

(assert (=> b!1919118 (= tp!548078 b_and!149887)))

(declare-fun b_free!54683 () Bool)

(declare-fun b_next!55387 () Bool)

(assert (=> b!1919118 (= b_free!54683 (not b_next!55387))))

(declare-fun tp!548086 () Bool)

(declare-fun b_and!149889 () Bool)

(assert (=> b!1919118 (= tp!548086 b_and!149889)))

(declare-fun e!1226521 () Bool)

(assert (=> b!1919112 (= e!1226521 (and tp!548084 tp!548085))))

(declare-fun b!1919113 () Bool)

(declare-fun e!1226512 () Bool)

(declare-fun e!1226529 () Bool)

(declare-fun tp!548083 () Bool)

(assert (=> b!1919113 (= e!1226512 (and e!1226529 tp!548083))))

(declare-fun e!1226520 () Bool)

(declare-fun b!1919114 () Bool)

(declare-fun e!1226515 () Bool)

(declare-fun tp!548082 () Bool)

(declare-datatypes ((List!21860 0))(
  ( (Nil!21778) (Cons!21778 (h!27179 (_ BitVec 16)) (t!178653 List!21860)) )
))
(declare-datatypes ((TokenValue!4034 0))(
  ( (FloatLiteralValue!8068 (text!28683 List!21860)) (TokenValueExt!4033 (__x!13566 Int)) (Broken!20170 (value!122658 List!21860)) (Object!4115) (End!4034) (Def!4034) (Underscore!4034) (Match!4034) (Else!4034) (Error!4034) (Case!4034) (If!4034) (Extends!4034) (Abstract!4034) (Class!4034) (Val!4034) (DelimiterValue!8068 (del!4094 List!21860)) (KeywordValue!4040 (value!122659 List!21860)) (CommentValue!8068 (value!122660 List!21860)) (WhitespaceValue!8068 (value!122661 List!21860)) (IndentationValue!4034 (value!122662 List!21860)) (String!25287) (Int32!4034) (Broken!20171 (value!122663 List!21860)) (Boolean!4035) (Unit!36153) (OperatorValue!4037 (op!4094 List!21860)) (IdentifierValue!8068 (value!122664 List!21860)) (IdentifierValue!8069 (value!122665 List!21860)) (WhitespaceValue!8069 (value!122666 List!21860)) (True!8068) (False!8068) (Broken!20172 (value!122667 List!21860)) (Broken!20173 (value!122668 List!21860)) (True!8069) (RightBrace!4034) (RightBracket!4034) (Colon!4034) (Null!4034) (Comma!4034) (LeftBracket!4034) (False!8069) (LeftBrace!4034) (ImaginaryLiteralValue!4034 (text!28684 List!21860)) (StringLiteralValue!12102 (value!122669 List!21860)) (EOFValue!4034 (value!122670 List!21860)) (IdentValue!4034 (value!122671 List!21860)) (DelimiterValue!8069 (value!122672 List!21860)) (DedentValue!4034 (value!122673 List!21860)) (NewLineValue!4034 (value!122674 List!21860)) (IntegerValue!12102 (value!122675 (_ BitVec 32)) (text!28685 List!21860)) (IntegerValue!12103 (value!122676 Int) (text!28686 List!21860)) (Times!4034) (Or!4034) (Equal!4034) (Minus!4034) (Broken!20174 (value!122677 List!21860)) (And!4034) (Div!4034) (LessEqual!4034) (Mod!4034) (Concat!9357) (Not!4034) (Plus!4034) (SpaceValue!4034 (value!122678 List!21860)) (IntegerValue!12104 (value!122679 Int) (text!28687 List!21860)) (StringLiteralValue!12103 (text!28688 List!21860)) (FloatLiteralValue!8069 (text!28689 List!21860)) (BytesLiteralValue!4034 (value!122680 List!21860)) (CommentValue!8069 (value!122681 List!21860)) (StringLiteralValue!12104 (value!122682 List!21860)) (ErrorTokenValue!4034 (msg!4095 List!21860)) )
))
(declare-datatypes ((C!10792 0))(
  ( (C!10793 (val!6348 Int)) )
))
(declare-datatypes ((List!21861 0))(
  ( (Nil!21779) (Cons!21779 (h!27180 C!10792) (t!178654 List!21861)) )
))
(declare-datatypes ((Regex!5323 0))(
  ( (ElementMatch!5323 (c!312119 C!10792)) (Concat!9358 (regOne!11158 Regex!5323) (regTwo!11158 Regex!5323)) (EmptyExpr!5323) (Star!5323 (reg!5652 Regex!5323)) (EmptyLang!5323) (Union!5323 (regOne!11159 Regex!5323) (regTwo!11159 Regex!5323)) )
))
(declare-datatypes ((String!25288 0))(
  ( (String!25289 (value!122683 String)) )
))
(declare-datatypes ((IArray!14547 0))(
  ( (IArray!14548 (innerList!7331 List!21861)) )
))
(declare-datatypes ((Conc!7271 0))(
  ( (Node!7271 (left!17354 Conc!7271) (right!17684 Conc!7271) (csize!14772 Int) (cheight!7482 Int)) (Leaf!10683 (xs!10165 IArray!14547) (csize!14773 Int)) (Empty!7271) )
))
(declare-datatypes ((BalanceConc!14358 0))(
  ( (BalanceConc!14359 (c!312120 Conc!7271)) )
))
(declare-datatypes ((TokenValueInjection!7652 0))(
  ( (TokenValueInjection!7653 (toValue!5527 Int) (toChars!5386 Int)) )
))
(declare-datatypes ((Rule!7596 0))(
  ( (Rule!7597 (regex!3898 Regex!5323) (tag!4338 String!25288) (isSeparator!3898 Bool) (transformation!3898 TokenValueInjection!7652)) )
))
(declare-datatypes ((Token!7348 0))(
  ( (Token!7349 (value!122684 TokenValue!4034) (rule!6101 Rule!7596) (size!17044 Int) (originalCharacters!4705 List!21861)) )
))
(declare-datatypes ((List!21862 0))(
  ( (Nil!21780) (Cons!21780 (h!27181 Token!7348) (t!178655 List!21862)) )
))
(declare-fun tokens!598 () List!21862)

(declare-fun inv!21 (TokenValue!4034) Bool)

(assert (=> b!1919114 (= e!1226515 (and (inv!21 (value!122684 (h!27181 tokens!598))) e!1226520 tp!548082))))

(declare-fun b!1919115 () Bool)

(declare-fun res!858188 () Bool)

(declare-fun e!1226527 () Bool)

(assert (=> b!1919115 (=> (not res!858188) (not e!1226527))))

(declare-datatypes ((List!21863 0))(
  ( (Nil!21781) (Cons!21781 (h!27182 Rule!7596) (t!178656 List!21863)) )
))
(declare-fun rules!3198 () List!21863)

(declare-fun isEmpty!13401 (List!21863) Bool)

(assert (=> b!1919115 (= res!858188 (not (isEmpty!13401 rules!3198)))))

(declare-fun b!1919116 () Bool)

(declare-fun e!1226513 () Bool)

(declare-fun e!1226517 () Bool)

(assert (=> b!1919116 (= e!1226513 e!1226517)))

(declare-fun res!858192 () Bool)

(assert (=> b!1919116 (=> (not res!858192) (not e!1226517))))

(declare-fun lt!736092 () Rule!7596)

(declare-fun lt!736082 () List!21861)

(declare-fun matchR!2609 (Regex!5323 List!21861) Bool)

(assert (=> b!1919116 (= res!858192 (matchR!2609 (regex!3898 lt!736092) lt!736082))))

(declare-datatypes ((Option!4501 0))(
  ( (None!4500) (Some!4500 (v!26573 Rule!7596)) )
))
(declare-fun lt!736090 () Option!4501)

(declare-fun get!6857 (Option!4501) Rule!7596)

(assert (=> b!1919116 (= lt!736092 (get!6857 lt!736090))))

(declare-fun b!1919117 () Bool)

(declare-fun e!1226518 () Bool)

(declare-fun e!1226514 () Bool)

(assert (=> b!1919117 (= e!1226518 e!1226514)))

(declare-fun res!858182 () Bool)

(assert (=> b!1919117 (=> (not res!858182) (not e!1226514))))

(declare-fun lt!736086 () Rule!7596)

(declare-fun lt!736079 () List!21861)

(assert (=> b!1919117 (= res!858182 (matchR!2609 (regex!3898 lt!736086) lt!736079))))

(declare-fun lt!736084 () Option!4501)

(assert (=> b!1919117 (= lt!736086 (get!6857 lt!736084))))

(declare-fun e!1226525 () Bool)

(assert (=> b!1919118 (= e!1226525 (and tp!548078 tp!548086))))

(declare-fun b!1919119 () Bool)

(declare-fun e!1226528 () Bool)

(declare-datatypes ((tuple2!20460 0))(
  ( (tuple2!20461 (_1!11699 Token!7348) (_2!11699 List!21861)) )
))
(declare-datatypes ((Option!4502 0))(
  ( (None!4501) (Some!4501 (v!26574 tuple2!20460)) )
))
(declare-fun lt!736081 () Option!4502)

(declare-fun get!6858 (Option!4502) tuple2!20460)

(assert (=> b!1919119 (= e!1226528 (= (_1!11699 (get!6858 lt!736081)) (h!27181 tokens!598)))))

(declare-fun b!1919120 () Bool)

(declare-fun res!858191 () Bool)

(assert (=> b!1919120 (=> (not res!858191) (not e!1226527))))

(get-info :version)

(assert (=> b!1919120 (= res!858191 ((_ is Cons!21780) tokens!598))))

(declare-fun b!1919121 () Bool)

(declare-fun separatorToken!354 () Token!7348)

(assert (=> b!1919121 (= e!1226514 (= (rule!6101 separatorToken!354) lt!736086))))

(declare-fun b!1919122 () Bool)

(declare-fun res!858190 () Bool)

(declare-fun e!1226526 () Bool)

(assert (=> b!1919122 (=> res!858190 e!1226526)))

(declare-fun isEmpty!13402 (List!21862) Bool)

(assert (=> b!1919122 (= res!858190 (isEmpty!13402 tokens!598))))

(declare-fun e!1226523 () Bool)

(declare-fun tp!548088 () Bool)

(declare-fun b!1919123 () Bool)

(declare-fun inv!28861 (Token!7348) Bool)

(assert (=> b!1919123 (= e!1226523 (and (inv!28861 (h!27181 tokens!598)) e!1226515 tp!548088))))

(declare-fun tp!548087 () Bool)

(declare-fun b!1919124 () Bool)

(declare-fun inv!28858 (String!25288) Bool)

(declare-fun inv!28862 (TokenValueInjection!7652) Bool)

(assert (=> b!1919124 (= e!1226520 (and tp!548087 (inv!28858 (tag!4338 (rule!6101 (h!27181 tokens!598)))) (inv!28862 (transformation!3898 (rule!6101 (h!27181 tokens!598)))) e!1226525))))

(declare-fun e!1226516 () Bool)

(declare-fun tp!548079 () Bool)

(declare-fun e!1226509 () Bool)

(declare-fun b!1919126 () Bool)

(assert (=> b!1919126 (= e!1226516 (and tp!548079 (inv!28858 (tag!4338 (rule!6101 separatorToken!354))) (inv!28862 (transformation!3898 (rule!6101 separatorToken!354))) e!1226509))))

(declare-fun b!1919127 () Bool)

(declare-fun res!858178 () Bool)

(assert (=> b!1919127 (=> (not res!858178) (not e!1226527))))

(assert (=> b!1919127 (= res!858178 (isSeparator!3898 (rule!6101 separatorToken!354)))))

(declare-fun b!1919128 () Bool)

(declare-fun tp!548076 () Bool)

(assert (=> b!1919128 (= e!1226529 (and tp!548076 (inv!28858 (tag!4338 (h!27182 rules!3198))) (inv!28862 (transformation!3898 (h!27182 rules!3198))) e!1226521))))

(declare-fun b!1919129 () Bool)

(declare-fun res!858184 () Bool)

(assert (=> b!1919129 (=> res!858184 e!1226526)))

(declare-datatypes ((LexerInterface!3511 0))(
  ( (LexerInterfaceExt!3508 (__x!13567 Int)) (Lexer!3509) )
))
(declare-fun thiss!23328 () LexerInterface!3511)

(declare-fun isDefined!3799 (Option!4502) Bool)

(declare-fun maxPrefix!1957 (LexerInterface!3511 List!21863 List!21861) Option!4502)

(declare-fun printWithSeparatorTokenWhenNeededList!554 (LexerInterface!3511 List!21863 List!21862 Token!7348) List!21861)

(assert (=> b!1919129 (= res!858184 (not (isDefined!3799 (maxPrefix!1957 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!554 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1919130 () Bool)

(assert (=> b!1919130 (= e!1226527 (not e!1226526))))

(declare-fun res!858185 () Bool)

(assert (=> b!1919130 (=> res!858185 e!1226526)))

(declare-fun lt!736085 () Bool)

(declare-fun lt!736089 () Option!4502)

(assert (=> b!1919130 (= res!858185 (or (and (not lt!736085) (= (_1!11699 (v!26574 lt!736089)) (h!27181 tokens!598))) (and (not lt!736085) (not (= (_1!11699 (v!26574 lt!736089)) (h!27181 tokens!598)))) ((_ is None!4501) lt!736089)))))

(assert (=> b!1919130 (= lt!736085 (not ((_ is Some!4501) lt!736089)))))

(declare-fun ++!5853 (List!21861 List!21861) List!21861)

(assert (=> b!1919130 (= lt!736089 (maxPrefix!1957 thiss!23328 rules!3198 (++!5853 lt!736082 (printWithSeparatorTokenWhenNeededList!554 thiss!23328 rules!3198 (t!178655 tokens!598) separatorToken!354))))))

(assert (=> b!1919130 e!1226513))

(declare-fun res!858177 () Bool)

(assert (=> b!1919130 (=> (not res!858177) (not e!1226513))))

(declare-fun isDefined!3800 (Option!4501) Bool)

(assert (=> b!1919130 (= res!858177 (isDefined!3800 lt!736090))))

(declare-fun getRuleFromTag!741 (LexerInterface!3511 List!21863 String!25288) Option!4501)

(assert (=> b!1919130 (= lt!736090 (getRuleFromTag!741 thiss!23328 rules!3198 (tag!4338 (rule!6101 (h!27181 tokens!598)))))))

(declare-datatypes ((Unit!36154 0))(
  ( (Unit!36155) )
))
(declare-fun lt!736088 () Unit!36154)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!741 (LexerInterface!3511 List!21863 List!21861 Token!7348) Unit!36154)

(assert (=> b!1919130 (= lt!736088 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!741 thiss!23328 rules!3198 lt!736082 (h!27181 tokens!598)))))

(assert (=> b!1919130 e!1226528))

(declare-fun res!858180 () Bool)

(assert (=> b!1919130 (=> (not res!858180) (not e!1226528))))

(assert (=> b!1919130 (= res!858180 (isDefined!3799 lt!736081))))

(assert (=> b!1919130 (= lt!736081 (maxPrefix!1957 thiss!23328 rules!3198 lt!736082))))

(declare-fun lt!736083 () BalanceConc!14358)

(declare-fun list!8830 (BalanceConc!14358) List!21861)

(assert (=> b!1919130 (= lt!736082 (list!8830 lt!736083))))

(assert (=> b!1919130 e!1226518))

(declare-fun res!858179 () Bool)

(assert (=> b!1919130 (=> (not res!858179) (not e!1226518))))

(assert (=> b!1919130 (= res!858179 (isDefined!3800 lt!736084))))

(assert (=> b!1919130 (= lt!736084 (getRuleFromTag!741 thiss!23328 rules!3198 (tag!4338 (rule!6101 separatorToken!354))))))

(declare-fun lt!736080 () Unit!36154)

(assert (=> b!1919130 (= lt!736080 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!741 thiss!23328 rules!3198 lt!736079 separatorToken!354))))

(declare-fun charsOf!2454 (Token!7348) BalanceConc!14358)

(assert (=> b!1919130 (= lt!736079 (list!8830 (charsOf!2454 separatorToken!354)))))

(declare-fun lt!736087 () Unit!36154)

(declare-fun lemmaEqSameImage!606 (TokenValueInjection!7652 BalanceConc!14358 BalanceConc!14358) Unit!36154)

(declare-fun seqFromList!2770 (List!21861) BalanceConc!14358)

(assert (=> b!1919130 (= lt!736087 (lemmaEqSameImage!606 (transformation!3898 (rule!6101 (h!27181 tokens!598))) lt!736083 (seqFromList!2770 (originalCharacters!4705 (h!27181 tokens!598)))))))

(declare-fun lt!736091 () Unit!36154)

(declare-fun lemmaSemiInverse!877 (TokenValueInjection!7652 BalanceConc!14358) Unit!36154)

(assert (=> b!1919130 (= lt!736091 (lemmaSemiInverse!877 (transformation!3898 (rule!6101 (h!27181 tokens!598))) lt!736083))))

(assert (=> b!1919130 (= lt!736083 (charsOf!2454 (h!27181 tokens!598)))))

(declare-fun b!1919131 () Bool)

(declare-fun res!858186 () Bool)

(assert (=> b!1919131 (=> (not res!858186) (not e!1226527))))

(declare-fun rulesInvariant!3118 (LexerInterface!3511 List!21863) Bool)

(assert (=> b!1919131 (= res!858186 (rulesInvariant!3118 thiss!23328 rules!3198))))

(declare-fun b!1919132 () Bool)

(assert (=> b!1919132 (= e!1226517 (= (rule!6101 (h!27181 tokens!598)) lt!736092))))

(declare-fun b!1919133 () Bool)

(declare-fun res!858176 () Bool)

(assert (=> b!1919133 (=> (not res!858176) (not e!1226527))))

(declare-fun rulesProduceEachTokenIndividuallyList!1242 (LexerInterface!3511 List!21863 List!21862) Bool)

(assert (=> b!1919133 (= res!858176 (rulesProduceEachTokenIndividuallyList!1242 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919134 () Bool)

(declare-fun rulesValidInductive!1320 (LexerInterface!3511 List!21863) Bool)

(assert (=> b!1919134 (= e!1226526 (rulesValidInductive!1320 thiss!23328 rules!3198))))

(declare-fun e!1226524 () Bool)

(declare-fun b!1919135 () Bool)

(declare-fun tp!548081 () Bool)

(assert (=> b!1919135 (= e!1226524 (and (inv!21 (value!122684 separatorToken!354)) e!1226516 tp!548081))))

(declare-fun b!1919136 () Bool)

(declare-fun res!858181 () Bool)

(assert (=> b!1919136 (=> (not res!858181) (not e!1226527))))

(declare-fun lambda!74901 () Int)

(declare-fun forall!4594 (List!21862 Int) Bool)

(assert (=> b!1919136 (= res!858181 (forall!4594 tokens!598 lambda!74901))))

(assert (=> b!1919137 (= e!1226509 (and tp!548080 tp!548077))))

(declare-fun b!1919138 () Bool)

(declare-fun res!858183 () Bool)

(assert (=> b!1919138 (=> (not res!858183) (not e!1226527))))

(declare-fun sepAndNonSepRulesDisjointChars!996 (List!21863 List!21863) Bool)

(assert (=> b!1919138 (= res!858183 (sepAndNonSepRulesDisjointChars!996 rules!3198 rules!3198))))

(declare-fun b!1919125 () Bool)

(declare-fun res!858189 () Bool)

(assert (=> b!1919125 (=> (not res!858189) (not e!1226527))))

(declare-fun rulesProduceIndividualToken!1683 (LexerInterface!3511 List!21863 Token!7348) Bool)

(assert (=> b!1919125 (= res!858189 (rulesProduceIndividualToken!1683 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!858187 () Bool)

(assert (=> start!192272 (=> (not res!858187) (not e!1226527))))

(assert (=> start!192272 (= res!858187 ((_ is Lexer!3509) thiss!23328))))

(assert (=> start!192272 e!1226527))

(assert (=> start!192272 true))

(assert (=> start!192272 e!1226512))

(assert (=> start!192272 e!1226523))

(assert (=> start!192272 (and (inv!28861 separatorToken!354) e!1226524)))

(assert (= (and start!192272 res!858187) b!1919115))

(assert (= (and b!1919115 res!858188) b!1919131))

(assert (= (and b!1919131 res!858186) b!1919133))

(assert (= (and b!1919133 res!858176) b!1919125))

(assert (= (and b!1919125 res!858189) b!1919127))

(assert (= (and b!1919127 res!858178) b!1919136))

(assert (= (and b!1919136 res!858181) b!1919138))

(assert (= (and b!1919138 res!858183) b!1919120))

(assert (= (and b!1919120 res!858191) b!1919130))

(assert (= (and b!1919130 res!858179) b!1919117))

(assert (= (and b!1919117 res!858182) b!1919121))

(assert (= (and b!1919130 res!858180) b!1919119))

(assert (= (and b!1919130 res!858177) b!1919116))

(assert (= (and b!1919116 res!858192) b!1919132))

(assert (= (and b!1919130 (not res!858185)) b!1919122))

(assert (= (and b!1919122 (not res!858190)) b!1919129))

(assert (= (and b!1919129 (not res!858184)) b!1919134))

(assert (= b!1919128 b!1919112))

(assert (= b!1919113 b!1919128))

(assert (= (and start!192272 ((_ is Cons!21781) rules!3198)) b!1919113))

(assert (= b!1919124 b!1919118))

(assert (= b!1919114 b!1919124))

(assert (= b!1919123 b!1919114))

(assert (= (and start!192272 ((_ is Cons!21780) tokens!598)) b!1919123))

(assert (= b!1919126 b!1919137))

(assert (= b!1919135 b!1919126))

(assert (= start!192272 b!1919135))

(declare-fun m!2354555 () Bool)

(assert (=> b!1919124 m!2354555))

(declare-fun m!2354557 () Bool)

(assert (=> b!1919124 m!2354557))

(declare-fun m!2354559 () Bool)

(assert (=> b!1919115 m!2354559))

(declare-fun m!2354561 () Bool)

(assert (=> b!1919129 m!2354561))

(assert (=> b!1919129 m!2354561))

(declare-fun m!2354563 () Bool)

(assert (=> b!1919129 m!2354563))

(assert (=> b!1919129 m!2354563))

(declare-fun m!2354565 () Bool)

(assert (=> b!1919129 m!2354565))

(declare-fun m!2354567 () Bool)

(assert (=> b!1919119 m!2354567))

(declare-fun m!2354569 () Bool)

(assert (=> b!1919130 m!2354569))

(declare-fun m!2354571 () Bool)

(assert (=> b!1919130 m!2354571))

(declare-fun m!2354573 () Bool)

(assert (=> b!1919130 m!2354573))

(declare-fun m!2354575 () Bool)

(assert (=> b!1919130 m!2354575))

(declare-fun m!2354577 () Bool)

(assert (=> b!1919130 m!2354577))

(declare-fun m!2354579 () Bool)

(assert (=> b!1919130 m!2354579))

(declare-fun m!2354581 () Bool)

(assert (=> b!1919130 m!2354581))

(declare-fun m!2354583 () Bool)

(assert (=> b!1919130 m!2354583))

(declare-fun m!2354585 () Bool)

(assert (=> b!1919130 m!2354585))

(assert (=> b!1919130 m!2354579))

(declare-fun m!2354587 () Bool)

(assert (=> b!1919130 m!2354587))

(declare-fun m!2354589 () Bool)

(assert (=> b!1919130 m!2354589))

(assert (=> b!1919130 m!2354573))

(declare-fun m!2354591 () Bool)

(assert (=> b!1919130 m!2354591))

(assert (=> b!1919130 m!2354587))

(declare-fun m!2354593 () Bool)

(assert (=> b!1919130 m!2354593))

(declare-fun m!2354595 () Bool)

(assert (=> b!1919130 m!2354595))

(declare-fun m!2354597 () Bool)

(assert (=> b!1919130 m!2354597))

(declare-fun m!2354599 () Bool)

(assert (=> b!1919130 m!2354599))

(assert (=> b!1919130 m!2354581))

(declare-fun m!2354601 () Bool)

(assert (=> b!1919130 m!2354601))

(declare-fun m!2354603 () Bool)

(assert (=> b!1919130 m!2354603))

(declare-fun m!2354605 () Bool)

(assert (=> b!1919116 m!2354605))

(declare-fun m!2354607 () Bool)

(assert (=> b!1919116 m!2354607))

(declare-fun m!2354609 () Bool)

(assert (=> b!1919134 m!2354609))

(declare-fun m!2354611 () Bool)

(assert (=> b!1919125 m!2354611))

(declare-fun m!2354613 () Bool)

(assert (=> b!1919126 m!2354613))

(declare-fun m!2354615 () Bool)

(assert (=> b!1919126 m!2354615))

(declare-fun m!2354617 () Bool)

(assert (=> b!1919131 m!2354617))

(declare-fun m!2354619 () Bool)

(assert (=> b!1919117 m!2354619))

(declare-fun m!2354621 () Bool)

(assert (=> b!1919117 m!2354621))

(declare-fun m!2354623 () Bool)

(assert (=> b!1919138 m!2354623))

(declare-fun m!2354625 () Bool)

(assert (=> b!1919114 m!2354625))

(declare-fun m!2354627 () Bool)

(assert (=> b!1919133 m!2354627))

(declare-fun m!2354629 () Bool)

(assert (=> b!1919135 m!2354629))

(declare-fun m!2354631 () Bool)

(assert (=> b!1919136 m!2354631))

(declare-fun m!2354633 () Bool)

(assert (=> start!192272 m!2354633))

(declare-fun m!2354635 () Bool)

(assert (=> b!1919128 m!2354635))

(declare-fun m!2354637 () Bool)

(assert (=> b!1919128 m!2354637))

(declare-fun m!2354639 () Bool)

(assert (=> b!1919123 m!2354639))

(declare-fun m!2354641 () Bool)

(assert (=> b!1919122 m!2354641))

(check-sat (not b!1919131) b_and!149883 (not b_next!55387) b_and!149879 (not b_next!55381) (not b!1919117) (not b!1919135) (not b!1919123) (not b!1919133) b_and!149881 (not b_next!55379) b_and!149885 (not b!1919126) (not b_next!55385) (not b!1919125) (not b!1919129) (not b!1919115) (not b!1919138) (not b!1919134) (not b!1919124) (not b!1919113) (not b_next!55383) (not b!1919119) (not start!192272) (not b!1919130) (not b_next!55377) (not b!1919128) b_and!149887 (not b!1919114) (not b!1919122) (not b!1919116) b_and!149889 (not b!1919136))
(check-sat (not b_next!55385) b_and!149883 (not b_next!55387) b_and!149879 (not b_next!55381) (not b_next!55383) b_and!149889 b_and!149881 (not b_next!55379) b_and!149885 b_and!149887 (not b_next!55377))
