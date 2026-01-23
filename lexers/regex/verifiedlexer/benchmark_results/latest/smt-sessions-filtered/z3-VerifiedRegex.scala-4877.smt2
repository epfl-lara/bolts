; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249932 () Bool)

(assert start!249932)

(declare-fun b!2582215 () Bool)

(declare-fun b_free!72645 () Bool)

(declare-fun b_next!73349 () Bool)

(assert (=> b!2582215 (= b_free!72645 (not b_next!73349))))

(declare-fun tp!819757 () Bool)

(declare-fun b_and!188963 () Bool)

(assert (=> b!2582215 (= tp!819757 b_and!188963)))

(declare-fun b_free!72647 () Bool)

(declare-fun b_next!73351 () Bool)

(assert (=> b!2582215 (= b_free!72647 (not b_next!73351))))

(declare-fun tp!819759 () Bool)

(declare-fun b_and!188965 () Bool)

(assert (=> b!2582215 (= tp!819759 b_and!188965)))

(declare-fun b!2582205 () Bool)

(declare-fun b_free!72649 () Bool)

(declare-fun b_next!73353 () Bool)

(assert (=> b!2582205 (= b_free!72649 (not b_next!73353))))

(declare-fun tp!819751 () Bool)

(declare-fun b_and!188967 () Bool)

(assert (=> b!2582205 (= tp!819751 b_and!188967)))

(declare-fun b_free!72651 () Bool)

(declare-fun b_next!73355 () Bool)

(assert (=> b!2582205 (= b_free!72651 (not b_next!73355))))

(declare-fun tp!819747 () Bool)

(declare-fun b_and!188969 () Bool)

(assert (=> b!2582205 (= tp!819747 b_and!188969)))

(declare-fun b!2582212 () Bool)

(declare-fun b_free!72653 () Bool)

(declare-fun b_next!73357 () Bool)

(assert (=> b!2582212 (= b_free!72653 (not b_next!73357))))

(declare-fun tp!819750 () Bool)

(declare-fun b_and!188971 () Bool)

(assert (=> b!2582212 (= tp!819750 b_and!188971)))

(declare-fun b_free!72655 () Bool)

(declare-fun b_next!73359 () Bool)

(assert (=> b!2582212 (= b_free!72655 (not b_next!73359))))

(declare-fun tp!819746 () Bool)

(declare-fun b_and!188973 () Bool)

(assert (=> b!2582212 (= tp!819746 b_and!188973)))

(declare-fun b!2582204 () Bool)

(declare-fun b_free!72657 () Bool)

(declare-fun b_next!73361 () Bool)

(assert (=> b!2582204 (= b_free!72657 (not b_next!73361))))

(declare-fun tp!819744 () Bool)

(declare-fun b_and!188975 () Bool)

(assert (=> b!2582204 (= tp!819744 b_and!188975)))

(declare-fun b_free!72659 () Bool)

(declare-fun b_next!73363 () Bool)

(assert (=> b!2582204 (= b_free!72659 (not b_next!73363))))

(declare-fun tp!819748 () Bool)

(declare-fun b_and!188977 () Bool)

(assert (=> b!2582204 (= tp!819748 b_and!188977)))

(declare-fun b!2582202 () Bool)

(declare-fun res!1085901 () Bool)

(declare-fun e!1629410 () Bool)

(assert (=> b!2582202 (=> res!1085901 e!1629410)))

(declare-datatypes ((List!29829 0))(
  ( (Nil!29729) (Cons!29729 (h!35149 (_ BitVec 16)) (t!211792 List!29829)) )
))
(declare-datatypes ((TokenValue!4735 0))(
  ( (FloatLiteralValue!9470 (text!33590 List!29829)) (TokenValueExt!4734 (__x!19303 Int)) (Broken!23675 (value!145842 List!29829)) (Object!4834) (End!4735) (Def!4735) (Underscore!4735) (Match!4735) (Else!4735) (Error!4735) (Case!4735) (If!4735) (Extends!4735) (Abstract!4735) (Class!4735) (Val!4735) (DelimiterValue!9470 (del!4795 List!29829)) (KeywordValue!4741 (value!145843 List!29829)) (CommentValue!9470 (value!145844 List!29829)) (WhitespaceValue!9470 (value!145845 List!29829)) (IndentationValue!4735 (value!145846 List!29829)) (String!33082) (Int32!4735) (Broken!23676 (value!145847 List!29829)) (Boolean!4736) (Unit!43569) (OperatorValue!4738 (op!4795 List!29829)) (IdentifierValue!9470 (value!145848 List!29829)) (IdentifierValue!9471 (value!145849 List!29829)) (WhitespaceValue!9471 (value!145850 List!29829)) (True!9470) (False!9470) (Broken!23677 (value!145851 List!29829)) (Broken!23678 (value!145852 List!29829)) (True!9471) (RightBrace!4735) (RightBracket!4735) (Colon!4735) (Null!4735) (Comma!4735) (LeftBracket!4735) (False!9471) (LeftBrace!4735) (ImaginaryLiteralValue!4735 (text!33591 List!29829)) (StringLiteralValue!14205 (value!145853 List!29829)) (EOFValue!4735 (value!145854 List!29829)) (IdentValue!4735 (value!145855 List!29829)) (DelimiterValue!9471 (value!145856 List!29829)) (DedentValue!4735 (value!145857 List!29829)) (NewLineValue!4735 (value!145858 List!29829)) (IntegerValue!14205 (value!145859 (_ BitVec 32)) (text!33592 List!29829)) (IntegerValue!14206 (value!145860 Int) (text!33593 List!29829)) (Times!4735) (Or!4735) (Equal!4735) (Minus!4735) (Broken!23679 (value!145861 List!29829)) (And!4735) (Div!4735) (LessEqual!4735) (Mod!4735) (Concat!12392) (Not!4735) (Plus!4735) (SpaceValue!4735 (value!145862 List!29829)) (IntegerValue!14207 (value!145863 Int) (text!33594 List!29829)) (StringLiteralValue!14206 (text!33595 List!29829)) (FloatLiteralValue!9471 (text!33596 List!29829)) (BytesLiteralValue!4735 (value!145864 List!29829)) (CommentValue!9471 (value!145865 List!29829)) (StringLiteralValue!14207 (value!145866 List!29829)) (ErrorTokenValue!4735 (msg!4796 List!29829)) )
))
(declare-datatypes ((C!15472 0))(
  ( (C!15473 (val!9432 Int)) )
))
(declare-datatypes ((List!29830 0))(
  ( (Nil!29730) (Cons!29730 (h!35150 C!15472) (t!211793 List!29830)) )
))
(declare-datatypes ((IArray!18563 0))(
  ( (IArray!18564 (innerList!9339 List!29830)) )
))
(declare-datatypes ((Conc!9279 0))(
  ( (Node!9279 (left!22660 Conc!9279) (right!22990 Conc!9279) (csize!18788 Int) (cheight!9490 Int)) (Leaf!14157 (xs!12263 IArray!18563) (csize!18789 Int)) (Empty!9279) )
))
(declare-datatypes ((BalanceConc!18172 0))(
  ( (BalanceConc!18173 (c!416335 Conc!9279)) )
))
(declare-datatypes ((TokenValueInjection!8910 0))(
  ( (TokenValueInjection!8911 (toValue!6399 Int) (toChars!6258 Int)) )
))
(declare-datatypes ((Regex!7657 0))(
  ( (ElementMatch!7657 (c!416336 C!15472)) (Concat!12393 (regOne!15826 Regex!7657) (regTwo!15826 Regex!7657)) (EmptyExpr!7657) (Star!7657 (reg!7986 Regex!7657)) (EmptyLang!7657) (Union!7657 (regOne!15827 Regex!7657) (regTwo!15827 Regex!7657)) )
))
(declare-datatypes ((String!33083 0))(
  ( (String!33084 (value!145867 String)) )
))
(declare-datatypes ((Rule!8826 0))(
  ( (Rule!8827 (regex!4513 Regex!7657) (tag!5003 String!33083) (isSeparator!4513 Bool) (transformation!4513 TokenValueInjection!8910)) )
))
(declare-fun rule!570 () Rule!8826)

(declare-fun lt!908264 () List!29830)

(declare-fun matchR!3590 (Regex!7657 List!29830) Bool)

(assert (=> b!2582202 (= res!1085901 (not (matchR!3590 (regex!4513 rule!570) lt!908264)))))

(declare-fun b!2582203 () Bool)

(declare-fun res!1085906 () Bool)

(declare-fun e!1629393 () Bool)

(assert (=> b!2582203 (=> (not res!1085906) (not e!1629393))))

(declare-datatypes ((List!29831 0))(
  ( (Nil!29731) (Cons!29731 (h!35151 Rule!8826) (t!211794 List!29831)) )
))
(declare-fun rules!4580 () List!29831)

(declare-fun isEmpty!17085 (List!29831) Bool)

(assert (=> b!2582203 (= res!1085906 (not (isEmpty!17085 rules!4580)))))

(declare-fun e!1629409 () Bool)

(assert (=> b!2582204 (= e!1629409 (and tp!819744 tp!819748))))

(declare-fun e!1629397 () Bool)

(assert (=> b!2582205 (= e!1629397 (and tp!819751 tp!819747))))

(declare-fun b!2582206 () Bool)

(declare-fun res!1085907 () Bool)

(assert (=> b!2582206 (=> res!1085907 e!1629410)))

(declare-fun input!3654 () List!29830)

(declare-fun suffix!1684 () List!29830)

(declare-fun ++!7303 (List!29830 List!29830) List!29830)

(assert (=> b!2582206 (= res!1085907 (not (= input!3654 (++!7303 lt!908264 suffix!1684))))))

(declare-fun b!2582207 () Bool)

(declare-fun res!1085913 () Bool)

(assert (=> b!2582207 (=> (not res!1085913) (not e!1629393))))

(declare-fun contains!5315 (List!29831 Rule!8826) Bool)

(assert (=> b!2582207 (= res!1085913 (contains!5315 rules!4580 rule!570))))

(declare-fun b!2582208 () Bool)

(declare-fun e!1629400 () Bool)

(declare-fun e!1629411 () Bool)

(declare-fun tp!819752 () Bool)

(assert (=> b!2582208 (= e!1629400 (and e!1629411 tp!819752))))

(declare-fun b!2582210 () Bool)

(declare-fun rs!798 () List!29831)

(declare-fun tp!819758 () Bool)

(declare-fun inv!40143 (String!33083) Bool)

(declare-fun inv!40146 (TokenValueInjection!8910) Bool)

(assert (=> b!2582210 (= e!1629411 (and tp!819758 (inv!40143 (tag!5003 (h!35151 rs!798))) (inv!40146 (transformation!4513 (h!35151 rs!798))) e!1629397))))

(declare-fun b!2582211 () Bool)

(declare-fun e!1629407 () Bool)

(declare-fun tp_is_empty!13209 () Bool)

(declare-fun tp!819756 () Bool)

(assert (=> b!2582211 (= e!1629407 (and tp_is_empty!13209 tp!819756))))

(declare-fun e!1629396 () Bool)

(assert (=> b!2582212 (= e!1629396 (and tp!819750 tp!819746))))

(declare-fun b!2582213 () Bool)

(declare-fun e!1629405 () Bool)

(declare-fun e!1629404 () Bool)

(declare-fun tp!819745 () Bool)

(assert (=> b!2582213 (= e!1629405 (and tp!819745 (inv!40143 (tag!5003 rule!570)) (inv!40146 (transformation!4513 rule!570)) e!1629404))))

(declare-fun b!2582214 () Bool)

(declare-fun res!1085899 () Bool)

(assert (=> b!2582214 (=> (not res!1085899) (not e!1629393))))

(declare-datatypes ((LexerInterface!4110 0))(
  ( (LexerInterfaceExt!4107 (__x!19304 Int)) (Lexer!4108) )
))
(declare-fun thiss!28211 () LexerInterface!4110)

(declare-datatypes ((Token!8496 0))(
  ( (Token!8497 (value!145868 TokenValue!4735) (rule!6871 Rule!8826) (size!23047 Int) (originalCharacters!5279 List!29830)) )
))
(declare-fun token!562 () Token!8496)

(declare-datatypes ((tuple2!29686 0))(
  ( (tuple2!29687 (_1!17385 Token!8496) (_2!17385 List!29830)) )
))
(declare-datatypes ((Option!5928 0))(
  ( (None!5927) (Some!5927 (v!32022 tuple2!29686)) )
))
(declare-fun maxPrefix!2282 (LexerInterface!4110 List!29831 List!29830) Option!5928)

(assert (=> b!2582214 (= res!1085899 (= (maxPrefix!2282 thiss!28211 rules!4580 input!3654) (Some!5927 (tuple2!29687 token!562 suffix!1684))))))

(assert (=> b!2582215 (= e!1629404 (and tp!819757 tp!819759))))

(declare-fun tp!819753 () Bool)

(declare-fun b!2582216 () Bool)

(declare-fun e!1629413 () Bool)

(assert (=> b!2582216 (= e!1629413 (and tp!819753 (inv!40143 (tag!5003 (h!35151 rules!4580))) (inv!40146 (transformation!4513 (h!35151 rules!4580))) e!1629409))))

(declare-fun e!1629402 () Bool)

(declare-fun tp!819760 () Bool)

(declare-fun b!2582217 () Bool)

(declare-fun e!1629394 () Bool)

(declare-fun inv!21 (TokenValue!4735) Bool)

(assert (=> b!2582217 (= e!1629402 (and (inv!21 (value!145868 token!562)) e!1629394 tp!819760))))

(declare-fun b!2582218 () Bool)

(declare-fun res!1085905 () Bool)

(assert (=> b!2582218 (=> res!1085905 e!1629410)))

(get-info :version)

(assert (=> b!2582218 (= res!1085905 ((_ is Nil!29731) rs!798))))

(declare-fun b!2582219 () Bool)

(declare-fun res!1085904 () Bool)

(assert (=> b!2582219 (=> (not res!1085904) (not e!1629393))))

(declare-fun rulesInvariant!3610 (LexerInterface!4110 List!29831) Bool)

(assert (=> b!2582219 (= res!1085904 (rulesInvariant!3610 thiss!28211 rules!4580))))

(declare-fun b!2582220 () Bool)

(declare-fun e!1629406 () Bool)

(assert (=> b!2582220 (= e!1629410 e!1629406)))

(declare-fun res!1085903 () Bool)

(assert (=> b!2582220 (=> res!1085903 e!1629406)))

(assert (=> b!2582220 (= res!1085903 (not (matchR!3590 (regex!4513 rule!570) lt!908264)))))

(declare-fun ruleValid!1519 (LexerInterface!4110 Rule!8826) Bool)

(assert (=> b!2582220 (ruleValid!1519 thiss!28211 rule!570)))

(declare-datatypes ((Unit!43570 0))(
  ( (Unit!43571) )
))
(declare-fun lt!908262 () Unit!43570)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!912 (LexerInterface!4110 Rule!8826 List!29831) Unit!43570)

(assert (=> b!2582220 (= lt!908262 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!912 thiss!28211 rule!570 rules!4580))))

(declare-fun b!2582221 () Bool)

(declare-fun rulesValid!1685 (LexerInterface!4110 List!29831) Bool)

(assert (=> b!2582221 (= e!1629406 (rulesValid!1685 thiss!28211 (t!211794 rs!798)))))

(declare-fun b!2582222 () Bool)

(declare-fun res!1085902 () Bool)

(assert (=> b!2582222 (=> (not res!1085902) (not e!1629393))))

(declare-fun e!1629395 () Bool)

(assert (=> b!2582222 (= res!1085902 e!1629395)))

(declare-fun res!1085908 () Bool)

(assert (=> b!2582222 (=> (not res!1085908) (not e!1629395))))

(declare-fun lt!908265 () List!29830)

(assert (=> b!2582222 (= res!1085908 (= input!3654 (++!7303 lt!908265 suffix!1684)))))

(declare-fun list!11235 (BalanceConc!18172) List!29830)

(declare-fun charsOf!2842 (Token!8496) BalanceConc!18172)

(assert (=> b!2582222 (= lt!908265 (list!11235 (charsOf!2842 token!562)))))

(declare-fun b!2582223 () Bool)

(declare-fun e!1629403 () Bool)

(declare-fun tp!819754 () Bool)

(assert (=> b!2582223 (= e!1629403 (and e!1629413 tp!819754))))

(declare-fun b!2582224 () Bool)

(declare-fun res!1085910 () Bool)

(assert (=> b!2582224 (=> res!1085910 e!1629410)))

(assert (=> b!2582224 (= res!1085910 (not (rulesValid!1685 thiss!28211 rs!798)))))

(declare-fun b!2582225 () Bool)

(declare-fun e!1629412 () Bool)

(declare-fun tp!819755 () Bool)

(assert (=> b!2582225 (= e!1629412 (and tp_is_empty!13209 tp!819755))))

(declare-fun res!1085900 () Bool)

(assert (=> start!249932 (=> (not res!1085900) (not e!1629393))))

(assert (=> start!249932 (= res!1085900 ((_ is Lexer!4108) thiss!28211))))

(assert (=> start!249932 e!1629393))

(assert (=> start!249932 e!1629403))

(assert (=> start!249932 true))

(assert (=> start!249932 e!1629407))

(declare-fun inv!40147 (Token!8496) Bool)

(assert (=> start!249932 (and (inv!40147 token!562) e!1629402)))

(assert (=> start!249932 e!1629412))

(assert (=> start!249932 e!1629400))

(assert (=> start!249932 e!1629405))

(declare-fun b!2582209 () Bool)

(declare-fun res!1085909 () Bool)

(assert (=> b!2582209 (=> res!1085909 e!1629410)))

(declare-fun lt!908263 () Option!5928)

(assert (=> b!2582209 (= res!1085909 (not (= (maxPrefix!2282 thiss!28211 rules!4580 input!3654) lt!908263)))))

(declare-fun b!2582226 () Bool)

(assert (=> b!2582226 (= e!1629393 (not e!1629410))))

(declare-fun res!1085911 () Bool)

(assert (=> b!2582226 (=> res!1085911 e!1629410)))

(declare-fun lt!908266 () Option!5928)

(assert (=> b!2582226 (= res!1085911 (not (= lt!908266 lt!908263)))))

(assert (=> b!2582226 (= lt!908263 (Some!5927 (tuple2!29687 token!562 suffix!1684)))))

(declare-fun lt!908267 () TokenValue!4735)

(declare-fun lt!908268 () Int)

(assert (=> b!2582226 (= lt!908266 (Some!5927 (tuple2!29687 (Token!8497 lt!908267 rule!570 lt!908268 lt!908264) suffix!1684)))))

(declare-fun maxPrefixOneRule!1448 (LexerInterface!4110 Rule!8826 List!29830) Option!5928)

(assert (=> b!2582226 (= lt!908266 (maxPrefixOneRule!1448 thiss!28211 rule!570 input!3654))))

(declare-fun size!23048 (List!29830) Int)

(assert (=> b!2582226 (= lt!908268 (size!23048 lt!908264))))

(declare-fun apply!7018 (TokenValueInjection!8910 BalanceConc!18172) TokenValue!4735)

(declare-fun seqFromList!3153 (List!29830) BalanceConc!18172)

(assert (=> b!2582226 (= lt!908267 (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 lt!908264)))))

(declare-fun lt!908269 () Unit!43570)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!611 (LexerInterface!4110 List!29831 List!29830 List!29830 List!29830 Rule!8826) Unit!43570)

(assert (=> b!2582226 (= lt!908269 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!611 thiss!28211 rules!4580 lt!908264 input!3654 suffix!1684 rule!570))))

(assert (=> b!2582226 (= lt!908264 (list!11235 (charsOf!2842 token!562)))))

(declare-fun b!2582227 () Bool)

(declare-fun res!1085912 () Bool)

(assert (=> b!2582227 (=> (not res!1085912) (not e!1629393))))

(assert (=> b!2582227 (= res!1085912 (= (rule!6871 token!562) rule!570))))

(declare-fun b!2582228 () Bool)

(assert (=> b!2582228 (= e!1629395 (not (not (matchR!3590 (regex!4513 rule!570) lt!908265))))))

(assert (=> b!2582228 (ruleValid!1519 thiss!28211 rule!570)))

(declare-fun lt!908261 () Unit!43570)

(assert (=> b!2582228 (= lt!908261 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!912 thiss!28211 rule!570 rules!4580))))

(declare-fun tp!819749 () Bool)

(declare-fun b!2582229 () Bool)

(assert (=> b!2582229 (= e!1629394 (and tp!819749 (inv!40143 (tag!5003 (rule!6871 token!562))) (inv!40146 (transformation!4513 (rule!6871 token!562))) e!1629396))))

(assert (= (and start!249932 res!1085900) b!2582203))

(assert (= (and b!2582203 res!1085906) b!2582219))

(assert (= (and b!2582219 res!1085904) b!2582207))

(assert (= (and b!2582207 res!1085913) b!2582214))

(assert (= (and b!2582214 res!1085899) b!2582227))

(assert (= (and b!2582227 res!1085912) b!2582222))

(assert (= (and b!2582222 res!1085908) b!2582228))

(assert (= (and b!2582222 res!1085902) b!2582226))

(assert (= (and b!2582226 (not res!1085911)) b!2582202))

(assert (= (and b!2582202 (not res!1085901)) b!2582224))

(assert (= (and b!2582224 (not res!1085910)) b!2582218))

(assert (= (and b!2582218 (not res!1085905)) b!2582209))

(assert (= (and b!2582209 (not res!1085909)) b!2582206))

(assert (= (and b!2582206 (not res!1085907)) b!2582220))

(assert (= (and b!2582220 (not res!1085903)) b!2582221))

(assert (= b!2582216 b!2582204))

(assert (= b!2582223 b!2582216))

(assert (= (and start!249932 ((_ is Cons!29731) rules!4580)) b!2582223))

(assert (= (and start!249932 ((_ is Cons!29730) input!3654)) b!2582211))

(assert (= b!2582229 b!2582212))

(assert (= b!2582217 b!2582229))

(assert (= start!249932 b!2582217))

(assert (= (and start!249932 ((_ is Cons!29730) suffix!1684)) b!2582225))

(assert (= b!2582210 b!2582205))

(assert (= b!2582208 b!2582210))

(assert (= (and start!249932 ((_ is Cons!29731) rs!798)) b!2582208))

(assert (= b!2582213 b!2582215))

(assert (= start!249932 b!2582213))

(declare-fun m!2918691 () Bool)

(assert (=> b!2582221 m!2918691))

(declare-fun m!2918693 () Bool)

(assert (=> b!2582206 m!2918693))

(declare-fun m!2918695 () Bool)

(assert (=> b!2582229 m!2918695))

(declare-fun m!2918697 () Bool)

(assert (=> b!2582229 m!2918697))

(declare-fun m!2918699 () Bool)

(assert (=> start!249932 m!2918699))

(declare-fun m!2918701 () Bool)

(assert (=> b!2582222 m!2918701))

(declare-fun m!2918703 () Bool)

(assert (=> b!2582222 m!2918703))

(assert (=> b!2582222 m!2918703))

(declare-fun m!2918705 () Bool)

(assert (=> b!2582222 m!2918705))

(declare-fun m!2918707 () Bool)

(assert (=> b!2582207 m!2918707))

(declare-fun m!2918709 () Bool)

(assert (=> b!2582214 m!2918709))

(declare-fun m!2918711 () Bool)

(assert (=> b!2582217 m!2918711))

(declare-fun m!2918713 () Bool)

(assert (=> b!2582202 m!2918713))

(declare-fun m!2918715 () Bool)

(assert (=> b!2582210 m!2918715))

(declare-fun m!2918717 () Bool)

(assert (=> b!2582210 m!2918717))

(assert (=> b!2582209 m!2918709))

(declare-fun m!2918719 () Bool)

(assert (=> b!2582228 m!2918719))

(declare-fun m!2918721 () Bool)

(assert (=> b!2582228 m!2918721))

(declare-fun m!2918723 () Bool)

(assert (=> b!2582228 m!2918723))

(assert (=> b!2582220 m!2918713))

(assert (=> b!2582220 m!2918721))

(assert (=> b!2582220 m!2918723))

(declare-fun m!2918725 () Bool)

(assert (=> b!2582213 m!2918725))

(declare-fun m!2918727 () Bool)

(assert (=> b!2582213 m!2918727))

(assert (=> b!2582226 m!2918703))

(assert (=> b!2582226 m!2918705))

(assert (=> b!2582226 m!2918703))

(declare-fun m!2918729 () Bool)

(assert (=> b!2582226 m!2918729))

(declare-fun m!2918731 () Bool)

(assert (=> b!2582226 m!2918731))

(declare-fun m!2918733 () Bool)

(assert (=> b!2582226 m!2918733))

(assert (=> b!2582226 m!2918731))

(declare-fun m!2918735 () Bool)

(assert (=> b!2582226 m!2918735))

(declare-fun m!2918737 () Bool)

(assert (=> b!2582226 m!2918737))

(declare-fun m!2918739 () Bool)

(assert (=> b!2582216 m!2918739))

(declare-fun m!2918741 () Bool)

(assert (=> b!2582216 m!2918741))

(declare-fun m!2918743 () Bool)

(assert (=> b!2582224 m!2918743))

(declare-fun m!2918745 () Bool)

(assert (=> b!2582219 m!2918745))

(declare-fun m!2918747 () Bool)

(assert (=> b!2582203 m!2918747))

(check-sat (not b!2582209) (not b!2582225) (not b!2582216) b_and!188971 (not b_next!73355) b_and!188975 b_and!188977 (not b!2582228) (not b!2582208) (not b!2582219) tp_is_empty!13209 (not b_next!73363) (not b_next!73361) b_and!188969 (not b!2582222) b_and!188963 b_and!188967 b_and!188965 (not b!2582214) (not b_next!73359) (not b!2582221) (not b!2582207) (not b!2582224) b_and!188973 (not b!2582226) (not b!2582202) (not b!2582206) (not b_next!73353) (not b!2582220) (not b_next!73351) (not b_next!73357) (not b_next!73349) (not b!2582203) (not b!2582213) (not b!2582210) (not b!2582211) (not start!249932) (not b!2582229) (not b!2582223) (not b!2582217))
(check-sat b_and!188969 b_and!188965 (not b_next!73359) b_and!188973 b_and!188971 (not b_next!73353) (not b_next!73355) b_and!188975 (not b_next!73349) b_and!188977 (not b_next!73363) (not b_next!73361) b_and!188963 b_and!188967 (not b_next!73351) (not b_next!73357))
(get-model)

(declare-fun d!731214 () Bool)

(declare-fun res!1085924 () Bool)

(declare-fun e!1629419 () Bool)

(assert (=> d!731214 (=> (not res!1085924) (not e!1629419))))

(assert (=> d!731214 (= res!1085924 (rulesValid!1685 thiss!28211 rules!4580))))

(assert (=> d!731214 (= (rulesInvariant!3610 thiss!28211 rules!4580) e!1629419)))

(declare-fun b!2582238 () Bool)

(declare-datatypes ((List!29833 0))(
  ( (Nil!29733) (Cons!29733 (h!35153 String!33083) (t!211844 List!29833)) )
))
(declare-fun noDuplicateTag!1683 (LexerInterface!4110 List!29831 List!29833) Bool)

(assert (=> b!2582238 (= e!1629419 (noDuplicateTag!1683 thiss!28211 rules!4580 Nil!29733))))

(assert (= (and d!731214 res!1085924) b!2582238))

(declare-fun m!2918753 () Bool)

(assert (=> d!731214 m!2918753))

(declare-fun m!2918755 () Bool)

(assert (=> b!2582238 m!2918755))

(assert (=> b!2582219 d!731214))

(declare-fun d!731216 () Bool)

(assert (=> d!731216 (= (inv!40143 (tag!5003 (rule!6871 token!562))) (= (mod (str.len (value!145867 (tag!5003 (rule!6871 token!562)))) 2) 0))))

(assert (=> b!2582229 d!731216))

(declare-fun d!731218 () Bool)

(declare-fun res!1085927 () Bool)

(declare-fun e!1629422 () Bool)

(assert (=> d!731218 (=> (not res!1085927) (not e!1629422))))

(declare-fun semiInverseModEq!1882 (Int Int) Bool)

(assert (=> d!731218 (= res!1085927 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))))))

(assert (=> d!731218 (= (inv!40146 (transformation!4513 (rule!6871 token!562))) e!1629422)))

(declare-fun b!2582241 () Bool)

(declare-fun equivClasses!1783 (Int Int) Bool)

(assert (=> b!2582241 (= e!1629422 (equivClasses!1783 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))))))

(assert (= (and d!731218 res!1085927) b!2582241))

(declare-fun m!2918757 () Bool)

(assert (=> d!731218 m!2918757))

(declare-fun m!2918759 () Bool)

(assert (=> b!2582241 m!2918759))

(assert (=> b!2582229 d!731218))

(declare-fun d!731220 () Bool)

(declare-fun lt!908275 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4098 (List!29831) (InoxSet Rule!8826))

(assert (=> d!731220 (= lt!908275 (select (content!4098 rules!4580) rule!570))))

(declare-fun e!1629427 () Bool)

(assert (=> d!731220 (= lt!908275 e!1629427)))

(declare-fun res!1085932 () Bool)

(assert (=> d!731220 (=> (not res!1085932) (not e!1629427))))

(assert (=> d!731220 (= res!1085932 ((_ is Cons!29731) rules!4580))))

(assert (=> d!731220 (= (contains!5315 rules!4580 rule!570) lt!908275)))

(declare-fun b!2582246 () Bool)

(declare-fun e!1629428 () Bool)

(assert (=> b!2582246 (= e!1629427 e!1629428)))

(declare-fun res!1085933 () Bool)

(assert (=> b!2582246 (=> res!1085933 e!1629428)))

(assert (=> b!2582246 (= res!1085933 (= (h!35151 rules!4580) rule!570))))

(declare-fun b!2582247 () Bool)

(assert (=> b!2582247 (= e!1629428 (contains!5315 (t!211794 rules!4580) rule!570))))

(assert (= (and d!731220 res!1085932) b!2582246))

(assert (= (and b!2582246 (not res!1085933)) b!2582247))

(declare-fun m!2918761 () Bool)

(assert (=> d!731220 m!2918761))

(declare-fun m!2918763 () Bool)

(assert (=> d!731220 m!2918763))

(declare-fun m!2918765 () Bool)

(assert (=> b!2582247 m!2918765))

(assert (=> b!2582207 d!731220))

(declare-fun b!2582258 () Bool)

(declare-fun e!1629435 () Bool)

(declare-fun e!1629436 () Bool)

(assert (=> b!2582258 (= e!1629435 e!1629436)))

(declare-fun c!416345 () Bool)

(assert (=> b!2582258 (= c!416345 ((_ is IntegerValue!14206) (value!145868 token!562)))))

(declare-fun b!2582259 () Bool)

(declare-fun res!1085936 () Bool)

(declare-fun e!1629437 () Bool)

(assert (=> b!2582259 (=> res!1085936 e!1629437)))

(assert (=> b!2582259 (= res!1085936 (not ((_ is IntegerValue!14207) (value!145868 token!562))))))

(assert (=> b!2582259 (= e!1629436 e!1629437)))

(declare-fun b!2582260 () Bool)

(declare-fun inv!15 (TokenValue!4735) Bool)

(assert (=> b!2582260 (= e!1629437 (inv!15 (value!145868 token!562)))))

(declare-fun b!2582261 () Bool)

(declare-fun inv!17 (TokenValue!4735) Bool)

(assert (=> b!2582261 (= e!1629436 (inv!17 (value!145868 token!562)))))

(declare-fun b!2582262 () Bool)

(declare-fun inv!16 (TokenValue!4735) Bool)

(assert (=> b!2582262 (= e!1629435 (inv!16 (value!145868 token!562)))))

(declare-fun d!731222 () Bool)

(declare-fun c!416344 () Bool)

(assert (=> d!731222 (= c!416344 ((_ is IntegerValue!14205) (value!145868 token!562)))))

(assert (=> d!731222 (= (inv!21 (value!145868 token!562)) e!1629435)))

(assert (= (and d!731222 c!416344) b!2582262))

(assert (= (and d!731222 (not c!416344)) b!2582258))

(assert (= (and b!2582258 c!416345) b!2582261))

(assert (= (and b!2582258 (not c!416345)) b!2582259))

(assert (= (and b!2582259 (not res!1085936)) b!2582260))

(declare-fun m!2918767 () Bool)

(assert (=> b!2582260 m!2918767))

(declare-fun m!2918769 () Bool)

(assert (=> b!2582261 m!2918769))

(declare-fun m!2918771 () Bool)

(assert (=> b!2582262 m!2918771))

(assert (=> b!2582217 d!731222))

(declare-fun b!2582323 () Bool)

(declare-fun e!1629470 () Bool)

(declare-fun head!5854 (List!29830) C!15472)

(assert (=> b!2582323 (= e!1629470 (not (= (head!5854 lt!908265) (c!416336 (regex!4513 rule!570)))))))

(declare-fun d!731224 () Bool)

(declare-fun e!1629468 () Bool)

(assert (=> d!731224 e!1629468))

(declare-fun c!416356 () Bool)

(assert (=> d!731224 (= c!416356 ((_ is EmptyExpr!7657) (regex!4513 rule!570)))))

(declare-fun lt!908296 () Bool)

(declare-fun e!1629473 () Bool)

(assert (=> d!731224 (= lt!908296 e!1629473)))

(declare-fun c!416357 () Bool)

(declare-fun isEmpty!17088 (List!29830) Bool)

(assert (=> d!731224 (= c!416357 (isEmpty!17088 lt!908265))))

(declare-fun validRegex!3271 (Regex!7657) Bool)

(assert (=> d!731224 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731224 (= (matchR!3590 (regex!4513 rule!570) lt!908265) lt!908296)))

(declare-fun b!2582324 () Bool)

(declare-fun nullable!2562 (Regex!7657) Bool)

(assert (=> b!2582324 (= e!1629473 (nullable!2562 (regex!4513 rule!570)))))

(declare-fun b!2582325 () Bool)

(declare-fun derivativeStep!2214 (Regex!7657 C!15472) Regex!7657)

(declare-fun tail!4127 (List!29830) List!29830)

(assert (=> b!2582325 (= e!1629473 (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)) (tail!4127 lt!908265)))))

(declare-fun b!2582326 () Bool)

(declare-fun e!1629472 () Bool)

(assert (=> b!2582326 (= e!1629472 (not lt!908296))))

(declare-fun b!2582327 () Bool)

(declare-fun e!1629469 () Bool)

(assert (=> b!2582327 (= e!1629469 (= (head!5854 lt!908265) (c!416336 (regex!4513 rule!570))))))

(declare-fun b!2582328 () Bool)

(declare-fun e!1629471 () Bool)

(assert (=> b!2582328 (= e!1629471 e!1629470)))

(declare-fun res!1085979 () Bool)

(assert (=> b!2582328 (=> res!1085979 e!1629470)))

(declare-fun call!166779 () Bool)

(assert (=> b!2582328 (= res!1085979 call!166779)))

(declare-fun b!2582329 () Bool)

(assert (=> b!2582329 (= e!1629468 e!1629472)))

(declare-fun c!416355 () Bool)

(assert (=> b!2582329 (= c!416355 ((_ is EmptyLang!7657) (regex!4513 rule!570)))))

(declare-fun b!2582330 () Bool)

(declare-fun res!1085976 () Bool)

(declare-fun e!1629467 () Bool)

(assert (=> b!2582330 (=> res!1085976 e!1629467)))

(assert (=> b!2582330 (= res!1085976 e!1629469)))

(declare-fun res!1085977 () Bool)

(assert (=> b!2582330 (=> (not res!1085977) (not e!1629469))))

(assert (=> b!2582330 (= res!1085977 lt!908296)))

(declare-fun bm!166774 () Bool)

(assert (=> bm!166774 (= call!166779 (isEmpty!17088 lt!908265))))

(declare-fun b!2582331 () Bool)

(declare-fun res!1085980 () Bool)

(assert (=> b!2582331 (=> (not res!1085980) (not e!1629469))))

(assert (=> b!2582331 (= res!1085980 (not call!166779))))

(declare-fun b!2582332 () Bool)

(declare-fun res!1085978 () Bool)

(assert (=> b!2582332 (=> res!1085978 e!1629467)))

(assert (=> b!2582332 (= res!1085978 (not ((_ is ElementMatch!7657) (regex!4513 rule!570))))))

(assert (=> b!2582332 (= e!1629472 e!1629467)))

(declare-fun b!2582333 () Bool)

(assert (=> b!2582333 (= e!1629468 (= lt!908296 call!166779))))

(declare-fun b!2582334 () Bool)

(declare-fun res!1085975 () Bool)

(assert (=> b!2582334 (=> (not res!1085975) (not e!1629469))))

(assert (=> b!2582334 (= res!1085975 (isEmpty!17088 (tail!4127 lt!908265)))))

(declare-fun b!2582335 () Bool)

(assert (=> b!2582335 (= e!1629467 e!1629471)))

(declare-fun res!1085981 () Bool)

(assert (=> b!2582335 (=> (not res!1085981) (not e!1629471))))

(assert (=> b!2582335 (= res!1085981 (not lt!908296))))

(declare-fun b!2582336 () Bool)

(declare-fun res!1085974 () Bool)

(assert (=> b!2582336 (=> res!1085974 e!1629470)))

(assert (=> b!2582336 (= res!1085974 (not (isEmpty!17088 (tail!4127 lt!908265))))))

(assert (= (and d!731224 c!416357) b!2582324))

(assert (= (and d!731224 (not c!416357)) b!2582325))

(assert (= (and d!731224 c!416356) b!2582333))

(assert (= (and d!731224 (not c!416356)) b!2582329))

(assert (= (and b!2582329 c!416355) b!2582326))

(assert (= (and b!2582329 (not c!416355)) b!2582332))

(assert (= (and b!2582332 (not res!1085978)) b!2582330))

(assert (= (and b!2582330 res!1085977) b!2582331))

(assert (= (and b!2582331 res!1085980) b!2582334))

(assert (= (and b!2582334 res!1085975) b!2582327))

(assert (= (and b!2582330 (not res!1085976)) b!2582335))

(assert (= (and b!2582335 res!1085981) b!2582328))

(assert (= (and b!2582328 (not res!1085979)) b!2582336))

(assert (= (and b!2582336 (not res!1085974)) b!2582323))

(assert (= (or b!2582333 b!2582328 b!2582331) bm!166774))

(declare-fun m!2918827 () Bool)

(assert (=> b!2582334 m!2918827))

(assert (=> b!2582334 m!2918827))

(declare-fun m!2918829 () Bool)

(assert (=> b!2582334 m!2918829))

(assert (=> b!2582336 m!2918827))

(assert (=> b!2582336 m!2918827))

(assert (=> b!2582336 m!2918829))

(declare-fun m!2918831 () Bool)

(assert (=> b!2582324 m!2918831))

(declare-fun m!2918833 () Bool)

(assert (=> b!2582327 m!2918833))

(assert (=> b!2582325 m!2918833))

(assert (=> b!2582325 m!2918833))

(declare-fun m!2918835 () Bool)

(assert (=> b!2582325 m!2918835))

(assert (=> b!2582325 m!2918827))

(assert (=> b!2582325 m!2918835))

(assert (=> b!2582325 m!2918827))

(declare-fun m!2918837 () Bool)

(assert (=> b!2582325 m!2918837))

(assert (=> b!2582323 m!2918833))

(declare-fun m!2918839 () Bool)

(assert (=> d!731224 m!2918839))

(declare-fun m!2918841 () Bool)

(assert (=> d!731224 m!2918841))

(assert (=> bm!166774 m!2918839))

(assert (=> b!2582228 d!731224))

(declare-fun d!731232 () Bool)

(declare-fun res!1085986 () Bool)

(declare-fun e!1629476 () Bool)

(assert (=> d!731232 (=> (not res!1085986) (not e!1629476))))

(assert (=> d!731232 (= res!1085986 (validRegex!3271 (regex!4513 rule!570)))))

(assert (=> d!731232 (= (ruleValid!1519 thiss!28211 rule!570) e!1629476)))

(declare-fun b!2582341 () Bool)

(declare-fun res!1085987 () Bool)

(assert (=> b!2582341 (=> (not res!1085987) (not e!1629476))))

(assert (=> b!2582341 (= res!1085987 (not (nullable!2562 (regex!4513 rule!570))))))

(declare-fun b!2582342 () Bool)

(assert (=> b!2582342 (= e!1629476 (not (= (tag!5003 rule!570) (String!33084 ""))))))

(assert (= (and d!731232 res!1085986) b!2582341))

(assert (= (and b!2582341 res!1085987) b!2582342))

(assert (=> d!731232 m!2918841))

(assert (=> b!2582341 m!2918831))

(assert (=> b!2582228 d!731232))

(declare-fun d!731234 () Bool)

(assert (=> d!731234 (ruleValid!1519 thiss!28211 rule!570)))

(declare-fun lt!908302 () Unit!43570)

(declare-fun choose!15221 (LexerInterface!4110 Rule!8826 List!29831) Unit!43570)

(assert (=> d!731234 (= lt!908302 (choose!15221 thiss!28211 rule!570 rules!4580))))

(assert (=> d!731234 (contains!5315 rules!4580 rule!570)))

(assert (=> d!731234 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!912 thiss!28211 rule!570 rules!4580) lt!908302)))

(declare-fun bs!471518 () Bool)

(assert (= bs!471518 d!731234))

(assert (=> bs!471518 m!2918721))

(declare-fun m!2918849 () Bool)

(assert (=> bs!471518 m!2918849))

(assert (=> bs!471518 m!2918707))

(assert (=> b!2582228 d!731234))

(declare-fun b!2582368 () Bool)

(declare-fun e!1629493 () List!29830)

(assert (=> b!2582368 (= e!1629493 suffix!1684)))

(declare-fun b!2582369 () Bool)

(assert (=> b!2582369 (= e!1629493 (Cons!29730 (h!35150 lt!908265) (++!7303 (t!211793 lt!908265) suffix!1684)))))

(declare-fun d!731240 () Bool)

(declare-fun e!1629494 () Bool)

(assert (=> d!731240 e!1629494))

(declare-fun res!1085995 () Bool)

(assert (=> d!731240 (=> (not res!1085995) (not e!1629494))))

(declare-fun lt!908305 () List!29830)

(declare-fun content!4100 (List!29830) (InoxSet C!15472))

(assert (=> d!731240 (= res!1085995 (= (content!4100 lt!908305) ((_ map or) (content!4100 lt!908265) (content!4100 suffix!1684))))))

(assert (=> d!731240 (= lt!908305 e!1629493)))

(declare-fun c!416366 () Bool)

(assert (=> d!731240 (= c!416366 ((_ is Nil!29730) lt!908265))))

(assert (=> d!731240 (= (++!7303 lt!908265 suffix!1684) lt!908305)))

(declare-fun b!2582371 () Bool)

(assert (=> b!2582371 (= e!1629494 (or (not (= suffix!1684 Nil!29730)) (= lt!908305 lt!908265)))))

(declare-fun b!2582370 () Bool)

(declare-fun res!1085996 () Bool)

(assert (=> b!2582370 (=> (not res!1085996) (not e!1629494))))

(assert (=> b!2582370 (= res!1085996 (= (size!23048 lt!908305) (+ (size!23048 lt!908265) (size!23048 suffix!1684))))))

(assert (= (and d!731240 c!416366) b!2582368))

(assert (= (and d!731240 (not c!416366)) b!2582369))

(assert (= (and d!731240 res!1085995) b!2582370))

(assert (= (and b!2582370 res!1085996) b!2582371))

(declare-fun m!2918857 () Bool)

(assert (=> b!2582369 m!2918857))

(declare-fun m!2918859 () Bool)

(assert (=> d!731240 m!2918859))

(declare-fun m!2918861 () Bool)

(assert (=> d!731240 m!2918861))

(declare-fun m!2918863 () Bool)

(assert (=> d!731240 m!2918863))

(declare-fun m!2918865 () Bool)

(assert (=> b!2582370 m!2918865))

(declare-fun m!2918867 () Bool)

(assert (=> b!2582370 m!2918867))

(declare-fun m!2918869 () Bool)

(assert (=> b!2582370 m!2918869))

(assert (=> b!2582222 d!731240))

(declare-fun d!731244 () Bool)

(declare-fun list!11237 (Conc!9279) List!29830)

(assert (=> d!731244 (= (list!11235 (charsOf!2842 token!562)) (list!11237 (c!416335 (charsOf!2842 token!562))))))

(declare-fun bs!471519 () Bool)

(assert (= bs!471519 d!731244))

(declare-fun m!2918871 () Bool)

(assert (=> bs!471519 m!2918871))

(assert (=> b!2582222 d!731244))

(declare-fun d!731246 () Bool)

(declare-fun lt!908308 () BalanceConc!18172)

(assert (=> d!731246 (= (list!11235 lt!908308) (originalCharacters!5279 token!562))))

(declare-fun dynLambda!12553 (Int TokenValue!4735) BalanceConc!18172)

(assert (=> d!731246 (= lt!908308 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))

(assert (=> d!731246 (= (charsOf!2842 token!562) lt!908308)))

(declare-fun b_lambda!76611 () Bool)

(assert (=> (not b_lambda!76611) (not d!731246)))

(declare-fun tb!140457 () Bool)

(declare-fun t!211812 () Bool)

(assert (=> (and b!2582215 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211812) tb!140457))

(declare-fun b!2582376 () Bool)

(declare-fun e!1629497 () Bool)

(declare-fun tp!819766 () Bool)

(declare-fun inv!40150 (Conc!9279) Bool)

(assert (=> b!2582376 (= e!1629497 (and (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))) tp!819766))))

(declare-fun result!174640 () Bool)

(declare-fun inv!40151 (BalanceConc!18172) Bool)

(assert (=> tb!140457 (= result!174640 (and (inv!40151 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))) e!1629497))))

(assert (= tb!140457 b!2582376))

(declare-fun m!2918873 () Bool)

(assert (=> b!2582376 m!2918873))

(declare-fun m!2918875 () Bool)

(assert (=> tb!140457 m!2918875))

(assert (=> d!731246 t!211812))

(declare-fun b_and!188995 () Bool)

(assert (= b_and!188965 (and (=> t!211812 result!174640) b_and!188995)))

(declare-fun t!211814 () Bool)

(declare-fun tb!140459 () Bool)

(assert (=> (and b!2582205 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211814) tb!140459))

(declare-fun result!174644 () Bool)

(assert (= result!174644 result!174640))

(assert (=> d!731246 t!211814))

(declare-fun b_and!188997 () Bool)

(assert (= b_and!188969 (and (=> t!211814 result!174644) b_and!188997)))

(declare-fun t!211816 () Bool)

(declare-fun tb!140461 () Bool)

(assert (=> (and b!2582212 (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211816) tb!140461))

(declare-fun result!174646 () Bool)

(assert (= result!174646 result!174640))

(assert (=> d!731246 t!211816))

(declare-fun b_and!188999 () Bool)

(assert (= b_and!188973 (and (=> t!211816 result!174646) b_and!188999)))

(declare-fun t!211818 () Bool)

(declare-fun tb!140463 () Bool)

(assert (=> (and b!2582204 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211818) tb!140463))

(declare-fun result!174648 () Bool)

(assert (= result!174648 result!174640))

(assert (=> d!731246 t!211818))

(declare-fun b_and!189001 () Bool)

(assert (= b_and!188977 (and (=> t!211818 result!174648) b_and!189001)))

(declare-fun m!2918877 () Bool)

(assert (=> d!731246 m!2918877))

(declare-fun m!2918879 () Bool)

(assert (=> d!731246 m!2918879))

(assert (=> b!2582222 d!731246))

(declare-fun d!731248 () Bool)

(assert (=> d!731248 true))

(declare-fun lt!908338 () Bool)

(declare-fun rulesValidInductive!1587 (LexerInterface!4110 List!29831) Bool)

(assert (=> d!731248 (= lt!908338 (rulesValidInductive!1587 thiss!28211 (t!211794 rs!798)))))

(declare-fun lambda!95699 () Int)

(declare-fun forall!6055 (List!29831 Int) Bool)

(assert (=> d!731248 (= lt!908338 (forall!6055 (t!211794 rs!798) lambda!95699))))

(assert (=> d!731248 (= (rulesValid!1685 thiss!28211 (t!211794 rs!798)) lt!908338)))

(declare-fun bs!471524 () Bool)

(assert (= bs!471524 d!731248))

(declare-fun m!2918957 () Bool)

(assert (=> bs!471524 m!2918957))

(declare-fun m!2918967 () Bool)

(assert (=> bs!471524 m!2918967))

(assert (=> b!2582221 d!731248))

(declare-fun d!731274 () Bool)

(assert (=> d!731274 (= (inv!40143 (tag!5003 (h!35151 rs!798))) (= (mod (str.len (value!145867 (tag!5003 (h!35151 rs!798)))) 2) 0))))

(assert (=> b!2582210 d!731274))

(declare-fun d!731276 () Bool)

(declare-fun res!1086063 () Bool)

(declare-fun e!1629546 () Bool)

(assert (=> d!731276 (=> (not res!1086063) (not e!1629546))))

(assert (=> d!731276 (= res!1086063 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (h!35151 rs!798)))))))

(assert (=> d!731276 (= (inv!40146 (transformation!4513 (h!35151 rs!798))) e!1629546)))

(declare-fun b!2582479 () Bool)

(assert (=> b!2582479 (= e!1629546 (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (h!35151 rs!798)))))))

(assert (= (and d!731276 res!1086063) b!2582479))

(declare-fun m!2918977 () Bool)

(assert (=> d!731276 m!2918977))

(declare-fun m!2918979 () Bool)

(assert (=> b!2582479 m!2918979))

(assert (=> b!2582210 d!731276))

(declare-fun d!731280 () Bool)

(declare-fun res!1086080 () Bool)

(declare-fun e!1629560 () Bool)

(assert (=> d!731280 (=> (not res!1086080) (not e!1629560))))

(assert (=> d!731280 (= res!1086080 (not (isEmpty!17088 (originalCharacters!5279 token!562))))))

(assert (=> d!731280 (= (inv!40147 token!562) e!1629560)))

(declare-fun b!2582502 () Bool)

(declare-fun res!1086081 () Bool)

(assert (=> b!2582502 (=> (not res!1086081) (not e!1629560))))

(assert (=> b!2582502 (= res!1086081 (= (originalCharacters!5279 token!562) (list!11235 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(declare-fun b!2582503 () Bool)

(assert (=> b!2582503 (= e!1629560 (= (size!23047 token!562) (size!23048 (originalCharacters!5279 token!562))))))

(assert (= (and d!731280 res!1086080) b!2582502))

(assert (= (and b!2582502 res!1086081) b!2582503))

(declare-fun b_lambda!76613 () Bool)

(assert (=> (not b_lambda!76613) (not b!2582502)))

(assert (=> b!2582502 t!211812))

(declare-fun b_and!189003 () Bool)

(assert (= b_and!188995 (and (=> t!211812 result!174640) b_and!189003)))

(assert (=> b!2582502 t!211814))

(declare-fun b_and!189005 () Bool)

(assert (= b_and!188997 (and (=> t!211814 result!174644) b_and!189005)))

(assert (=> b!2582502 t!211816))

(declare-fun b_and!189007 () Bool)

(assert (= b_and!188999 (and (=> t!211816 result!174646) b_and!189007)))

(assert (=> b!2582502 t!211818))

(declare-fun b_and!189009 () Bool)

(assert (= b_and!189001 (and (=> t!211818 result!174648) b_and!189009)))

(declare-fun m!2918993 () Bool)

(assert (=> d!731280 m!2918993))

(assert (=> b!2582502 m!2918879))

(assert (=> b!2582502 m!2918879))

(declare-fun m!2918995 () Bool)

(assert (=> b!2582502 m!2918995))

(declare-fun m!2918997 () Bool)

(assert (=> b!2582503 m!2918997))

(assert (=> start!249932 d!731280))

(declare-fun b!2582579 () Bool)

(declare-fun res!1086107 () Bool)

(declare-fun e!1629602 () Bool)

(assert (=> b!2582579 (=> (not res!1086107) (not e!1629602))))

(declare-fun lt!908359 () Option!5928)

(declare-fun get!9369 (Option!5928) tuple2!29686)

(assert (=> b!2582579 (= res!1086107 (matchR!3590 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun b!2582580 () Bool)

(declare-fun e!1629603 () Option!5928)

(declare-fun lt!908358 () Option!5928)

(declare-fun lt!908355 () Option!5928)

(assert (=> b!2582580 (= e!1629603 (ite (and ((_ is None!5927) lt!908358) ((_ is None!5927) lt!908355)) None!5927 (ite ((_ is None!5927) lt!908355) lt!908358 (ite ((_ is None!5927) lt!908358) lt!908355 (ite (>= (size!23047 (_1!17385 (v!32022 lt!908358))) (size!23047 (_1!17385 (v!32022 lt!908355)))) lt!908358 lt!908355)))))))

(declare-fun call!166789 () Option!5928)

(assert (=> b!2582580 (= lt!908358 call!166789)))

(assert (=> b!2582580 (= lt!908355 (maxPrefix!2282 thiss!28211 (t!211794 rules!4580) input!3654))))

(declare-fun b!2582581 () Bool)

(declare-fun res!1086106 () Bool)

(assert (=> b!2582581 (=> (not res!1086106) (not e!1629602))))

(assert (=> b!2582581 (= res!1086106 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))) (_2!17385 (get!9369 lt!908359))) input!3654))))

(declare-fun b!2582582 () Bool)

(declare-fun res!1086109 () Bool)

(assert (=> b!2582582 (=> (not res!1086109) (not e!1629602))))

(assert (=> b!2582582 (= res!1086109 (< (size!23048 (_2!17385 (get!9369 lt!908359))) (size!23048 input!3654)))))

(declare-fun d!731284 () Bool)

(declare-fun e!1629601 () Bool)

(assert (=> d!731284 e!1629601))

(declare-fun res!1086108 () Bool)

(assert (=> d!731284 (=> res!1086108 e!1629601)))

(declare-fun isEmpty!17089 (Option!5928) Bool)

(assert (=> d!731284 (= res!1086108 (isEmpty!17089 lt!908359))))

(assert (=> d!731284 (= lt!908359 e!1629603)))

(declare-fun c!416388 () Bool)

(assert (=> d!731284 (= c!416388 (and ((_ is Cons!29731) rules!4580) ((_ is Nil!29731) (t!211794 rules!4580))))))

(declare-fun lt!908356 () Unit!43570)

(declare-fun lt!908357 () Unit!43570)

(assert (=> d!731284 (= lt!908356 lt!908357)))

(declare-fun isPrefix!2413 (List!29830 List!29830) Bool)

(assert (=> d!731284 (isPrefix!2413 input!3654 input!3654)))

(declare-fun lemmaIsPrefixRefl!1539 (List!29830 List!29830) Unit!43570)

(assert (=> d!731284 (= lt!908357 (lemmaIsPrefixRefl!1539 input!3654 input!3654))))

(assert (=> d!731284 (rulesValidInductive!1587 thiss!28211 rules!4580)))

(assert (=> d!731284 (= (maxPrefix!2282 thiss!28211 rules!4580 input!3654) lt!908359)))

(declare-fun b!2582583 () Bool)

(assert (=> b!2582583 (= e!1629601 e!1629602)))

(declare-fun res!1086110 () Bool)

(assert (=> b!2582583 (=> (not res!1086110) (not e!1629602))))

(declare-fun isDefined!4748 (Option!5928) Bool)

(assert (=> b!2582583 (= res!1086110 (isDefined!4748 lt!908359))))

(declare-fun bm!166784 () Bool)

(assert (=> bm!166784 (= call!166789 (maxPrefixOneRule!1448 thiss!28211 (h!35151 rules!4580) input!3654))))

(declare-fun b!2582584 () Bool)

(declare-fun res!1086111 () Bool)

(assert (=> b!2582584 (=> (not res!1086111) (not e!1629602))))

(assert (=> b!2582584 (= res!1086111 (= (value!145868 (_1!17385 (get!9369 lt!908359))) (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun b!2582585 () Bool)

(declare-fun res!1086112 () Bool)

(assert (=> b!2582585 (=> (not res!1086112) (not e!1629602))))

(assert (=> b!2582585 (= res!1086112 (= (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))) (originalCharacters!5279 (_1!17385 (get!9369 lt!908359)))))))

(declare-fun b!2582586 () Bool)

(assert (=> b!2582586 (= e!1629603 call!166789)))

(declare-fun b!2582587 () Bool)

(assert (=> b!2582587 (= e!1629602 (contains!5315 rules!4580 (rule!6871 (_1!17385 (get!9369 lt!908359)))))))

(assert (= (and d!731284 c!416388) b!2582586))

(assert (= (and d!731284 (not c!416388)) b!2582580))

(assert (= (or b!2582586 b!2582580) bm!166784))

(assert (= (and d!731284 (not res!1086108)) b!2582583))

(assert (= (and b!2582583 res!1086110) b!2582585))

(assert (= (and b!2582585 res!1086112) b!2582582))

(assert (= (and b!2582582 res!1086109) b!2582581))

(assert (= (and b!2582581 res!1086106) b!2582584))

(assert (= (and b!2582584 res!1086111) b!2582579))

(assert (= (and b!2582579 res!1086107) b!2582587))

(declare-fun m!2919027 () Bool)

(assert (=> b!2582579 m!2919027))

(declare-fun m!2919029 () Bool)

(assert (=> b!2582579 m!2919029))

(assert (=> b!2582579 m!2919029))

(declare-fun m!2919031 () Bool)

(assert (=> b!2582579 m!2919031))

(assert (=> b!2582579 m!2919031))

(declare-fun m!2919033 () Bool)

(assert (=> b!2582579 m!2919033))

(declare-fun m!2919035 () Bool)

(assert (=> bm!166784 m!2919035))

(assert (=> b!2582585 m!2919027))

(assert (=> b!2582585 m!2919029))

(assert (=> b!2582585 m!2919029))

(assert (=> b!2582585 m!2919031))

(assert (=> b!2582584 m!2919027))

(declare-fun m!2919037 () Bool)

(assert (=> b!2582584 m!2919037))

(assert (=> b!2582584 m!2919037))

(declare-fun m!2919039 () Bool)

(assert (=> b!2582584 m!2919039))

(assert (=> b!2582582 m!2919027))

(declare-fun m!2919041 () Bool)

(assert (=> b!2582582 m!2919041))

(declare-fun m!2919043 () Bool)

(assert (=> b!2582582 m!2919043))

(declare-fun m!2919045 () Bool)

(assert (=> d!731284 m!2919045))

(declare-fun m!2919047 () Bool)

(assert (=> d!731284 m!2919047))

(declare-fun m!2919049 () Bool)

(assert (=> d!731284 m!2919049))

(declare-fun m!2919051 () Bool)

(assert (=> d!731284 m!2919051))

(assert (=> b!2582581 m!2919027))

(assert (=> b!2582581 m!2919029))

(assert (=> b!2582581 m!2919029))

(assert (=> b!2582581 m!2919031))

(assert (=> b!2582581 m!2919031))

(declare-fun m!2919053 () Bool)

(assert (=> b!2582581 m!2919053))

(declare-fun m!2919055 () Bool)

(assert (=> b!2582583 m!2919055))

(assert (=> b!2582587 m!2919027))

(declare-fun m!2919057 () Bool)

(assert (=> b!2582587 m!2919057))

(declare-fun m!2919059 () Bool)

(assert (=> b!2582580 m!2919059))

(assert (=> b!2582209 d!731284))

(declare-fun b!2582588 () Bool)

(declare-fun e!1629607 () Bool)

(assert (=> b!2582588 (= e!1629607 (not (= (head!5854 lt!908264) (c!416336 (regex!4513 rule!570)))))))

(declare-fun d!731296 () Bool)

(declare-fun e!1629605 () Bool)

(assert (=> d!731296 e!1629605))

(declare-fun c!416390 () Bool)

(assert (=> d!731296 (= c!416390 ((_ is EmptyExpr!7657) (regex!4513 rule!570)))))

(declare-fun lt!908360 () Bool)

(declare-fun e!1629610 () Bool)

(assert (=> d!731296 (= lt!908360 e!1629610)))

(declare-fun c!416391 () Bool)

(assert (=> d!731296 (= c!416391 (isEmpty!17088 lt!908264))))

(assert (=> d!731296 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731296 (= (matchR!3590 (regex!4513 rule!570) lt!908264) lt!908360)))

(declare-fun b!2582589 () Bool)

(assert (=> b!2582589 (= e!1629610 (nullable!2562 (regex!4513 rule!570)))))

(declare-fun b!2582590 () Bool)

(assert (=> b!2582590 (= e!1629610 (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)) (tail!4127 lt!908264)))))

(declare-fun b!2582591 () Bool)

(declare-fun e!1629609 () Bool)

(assert (=> b!2582591 (= e!1629609 (not lt!908360))))

(declare-fun b!2582592 () Bool)

(declare-fun e!1629606 () Bool)

(assert (=> b!2582592 (= e!1629606 (= (head!5854 lt!908264) (c!416336 (regex!4513 rule!570))))))

(declare-fun b!2582593 () Bool)

(declare-fun e!1629608 () Bool)

(assert (=> b!2582593 (= e!1629608 e!1629607)))

(declare-fun res!1086118 () Bool)

(assert (=> b!2582593 (=> res!1086118 e!1629607)))

(declare-fun call!166790 () Bool)

(assert (=> b!2582593 (= res!1086118 call!166790)))

(declare-fun b!2582594 () Bool)

(assert (=> b!2582594 (= e!1629605 e!1629609)))

(declare-fun c!416389 () Bool)

(assert (=> b!2582594 (= c!416389 ((_ is EmptyLang!7657) (regex!4513 rule!570)))))

(declare-fun b!2582595 () Bool)

(declare-fun res!1086115 () Bool)

(declare-fun e!1629604 () Bool)

(assert (=> b!2582595 (=> res!1086115 e!1629604)))

(assert (=> b!2582595 (= res!1086115 e!1629606)))

(declare-fun res!1086116 () Bool)

(assert (=> b!2582595 (=> (not res!1086116) (not e!1629606))))

(assert (=> b!2582595 (= res!1086116 lt!908360)))

(declare-fun bm!166785 () Bool)

(assert (=> bm!166785 (= call!166790 (isEmpty!17088 lt!908264))))

(declare-fun b!2582596 () Bool)

(declare-fun res!1086119 () Bool)

(assert (=> b!2582596 (=> (not res!1086119) (not e!1629606))))

(assert (=> b!2582596 (= res!1086119 (not call!166790))))

(declare-fun b!2582597 () Bool)

(declare-fun res!1086117 () Bool)

(assert (=> b!2582597 (=> res!1086117 e!1629604)))

(assert (=> b!2582597 (= res!1086117 (not ((_ is ElementMatch!7657) (regex!4513 rule!570))))))

(assert (=> b!2582597 (= e!1629609 e!1629604)))

(declare-fun b!2582598 () Bool)

(assert (=> b!2582598 (= e!1629605 (= lt!908360 call!166790))))

(declare-fun b!2582599 () Bool)

(declare-fun res!1086114 () Bool)

(assert (=> b!2582599 (=> (not res!1086114) (not e!1629606))))

(assert (=> b!2582599 (= res!1086114 (isEmpty!17088 (tail!4127 lt!908264)))))

(declare-fun b!2582600 () Bool)

(assert (=> b!2582600 (= e!1629604 e!1629608)))

(declare-fun res!1086120 () Bool)

(assert (=> b!2582600 (=> (not res!1086120) (not e!1629608))))

(assert (=> b!2582600 (= res!1086120 (not lt!908360))))

(declare-fun b!2582601 () Bool)

(declare-fun res!1086113 () Bool)

(assert (=> b!2582601 (=> res!1086113 e!1629607)))

(assert (=> b!2582601 (= res!1086113 (not (isEmpty!17088 (tail!4127 lt!908264))))))

(assert (= (and d!731296 c!416391) b!2582589))

(assert (= (and d!731296 (not c!416391)) b!2582590))

(assert (= (and d!731296 c!416390) b!2582598))

(assert (= (and d!731296 (not c!416390)) b!2582594))

(assert (= (and b!2582594 c!416389) b!2582591))

(assert (= (and b!2582594 (not c!416389)) b!2582597))

(assert (= (and b!2582597 (not res!1086117)) b!2582595))

(assert (= (and b!2582595 res!1086116) b!2582596))

(assert (= (and b!2582596 res!1086119) b!2582599))

(assert (= (and b!2582599 res!1086114) b!2582592))

(assert (= (and b!2582595 (not res!1086115)) b!2582600))

(assert (= (and b!2582600 res!1086120) b!2582593))

(assert (= (and b!2582593 (not res!1086118)) b!2582601))

(assert (= (and b!2582601 (not res!1086113)) b!2582588))

(assert (= (or b!2582598 b!2582593 b!2582596) bm!166785))

(declare-fun m!2919061 () Bool)

(assert (=> b!2582599 m!2919061))

(assert (=> b!2582599 m!2919061))

(declare-fun m!2919063 () Bool)

(assert (=> b!2582599 m!2919063))

(assert (=> b!2582601 m!2919061))

(assert (=> b!2582601 m!2919061))

(assert (=> b!2582601 m!2919063))

(assert (=> b!2582589 m!2918831))

(declare-fun m!2919065 () Bool)

(assert (=> b!2582592 m!2919065))

(assert (=> b!2582590 m!2919065))

(assert (=> b!2582590 m!2919065))

(declare-fun m!2919067 () Bool)

(assert (=> b!2582590 m!2919067))

(assert (=> b!2582590 m!2919061))

(assert (=> b!2582590 m!2919067))

(assert (=> b!2582590 m!2919061))

(declare-fun m!2919069 () Bool)

(assert (=> b!2582590 m!2919069))

(assert (=> b!2582588 m!2919065))

(declare-fun m!2919071 () Bool)

(assert (=> d!731296 m!2919071))

(assert (=> d!731296 m!2918841))

(assert (=> bm!166785 m!2919071))

(assert (=> b!2582220 d!731296))

(assert (=> b!2582220 d!731232))

(assert (=> b!2582220 d!731234))

(declare-fun d!731298 () Bool)

(assert (=> d!731298 (= (isEmpty!17085 rules!4580) ((_ is Nil!29731) rules!4580))))

(assert (=> b!2582203 d!731298))

(assert (=> b!2582214 d!731284))

(declare-fun d!731300 () Bool)

(assert (=> d!731300 (= (inv!40143 (tag!5003 rule!570)) (= (mod (str.len (value!145867 (tag!5003 rule!570))) 2) 0))))

(assert (=> b!2582213 d!731300))

(declare-fun d!731302 () Bool)

(declare-fun res!1086121 () Bool)

(declare-fun e!1629611 () Bool)

(assert (=> d!731302 (=> (not res!1086121) (not e!1629611))))

(assert (=> d!731302 (= res!1086121 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))))))

(assert (=> d!731302 (= (inv!40146 (transformation!4513 rule!570)) e!1629611)))

(declare-fun b!2582602 () Bool)

(assert (=> b!2582602 (= e!1629611 (equivClasses!1783 (toChars!6258 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))))))

(assert (= (and d!731302 res!1086121) b!2582602))

(declare-fun m!2919073 () Bool)

(assert (=> d!731302 m!2919073))

(declare-fun m!2919075 () Bool)

(assert (=> b!2582602 m!2919075))

(assert (=> b!2582213 d!731302))

(declare-fun bs!471525 () Bool)

(declare-fun d!731304 () Bool)

(assert (= bs!471525 (and d!731304 d!731248)))

(declare-fun lambda!95700 () Int)

(assert (=> bs!471525 (= lambda!95700 lambda!95699)))

(assert (=> d!731304 true))

(declare-fun lt!908361 () Bool)

(assert (=> d!731304 (= lt!908361 (rulesValidInductive!1587 thiss!28211 rs!798))))

(assert (=> d!731304 (= lt!908361 (forall!6055 rs!798 lambda!95700))))

(assert (=> d!731304 (= (rulesValid!1685 thiss!28211 rs!798) lt!908361)))

(declare-fun bs!471526 () Bool)

(assert (= bs!471526 d!731304))

(declare-fun m!2919077 () Bool)

(assert (=> bs!471526 m!2919077))

(declare-fun m!2919079 () Bool)

(assert (=> bs!471526 m!2919079))

(assert (=> b!2582224 d!731304))

(assert (=> b!2582202 d!731296))

(declare-fun b!2582603 () Bool)

(declare-fun e!1629612 () List!29830)

(assert (=> b!2582603 (= e!1629612 suffix!1684)))

(declare-fun b!2582604 () Bool)

(assert (=> b!2582604 (= e!1629612 (Cons!29730 (h!35150 lt!908264) (++!7303 (t!211793 lt!908264) suffix!1684)))))

(declare-fun d!731306 () Bool)

(declare-fun e!1629613 () Bool)

(assert (=> d!731306 e!1629613))

(declare-fun res!1086122 () Bool)

(assert (=> d!731306 (=> (not res!1086122) (not e!1629613))))

(declare-fun lt!908362 () List!29830)

(assert (=> d!731306 (= res!1086122 (= (content!4100 lt!908362) ((_ map or) (content!4100 lt!908264) (content!4100 suffix!1684))))))

(assert (=> d!731306 (= lt!908362 e!1629612)))

(declare-fun c!416392 () Bool)

(assert (=> d!731306 (= c!416392 ((_ is Nil!29730) lt!908264))))

(assert (=> d!731306 (= (++!7303 lt!908264 suffix!1684) lt!908362)))

(declare-fun b!2582606 () Bool)

(assert (=> b!2582606 (= e!1629613 (or (not (= suffix!1684 Nil!29730)) (= lt!908362 lt!908264)))))

(declare-fun b!2582605 () Bool)

(declare-fun res!1086123 () Bool)

(assert (=> b!2582605 (=> (not res!1086123) (not e!1629613))))

(assert (=> b!2582605 (= res!1086123 (= (size!23048 lt!908362) (+ (size!23048 lt!908264) (size!23048 suffix!1684))))))

(assert (= (and d!731306 c!416392) b!2582603))

(assert (= (and d!731306 (not c!416392)) b!2582604))

(assert (= (and d!731306 res!1086122) b!2582605))

(assert (= (and b!2582605 res!1086123) b!2582606))

(declare-fun m!2919081 () Bool)

(assert (=> b!2582604 m!2919081))

(declare-fun m!2919083 () Bool)

(assert (=> d!731306 m!2919083))

(declare-fun m!2919085 () Bool)

(assert (=> d!731306 m!2919085))

(assert (=> d!731306 m!2918863))

(declare-fun m!2919087 () Bool)

(assert (=> b!2582605 m!2919087))

(assert (=> b!2582605 m!2918737))

(assert (=> b!2582605 m!2918869))

(assert (=> b!2582206 d!731306))

(declare-fun d!731308 () Bool)

(assert (=> d!731308 (= (inv!40143 (tag!5003 (h!35151 rules!4580))) (= (mod (str.len (value!145867 (tag!5003 (h!35151 rules!4580)))) 2) 0))))

(assert (=> b!2582216 d!731308))

(declare-fun d!731310 () Bool)

(declare-fun res!1086124 () Bool)

(declare-fun e!1629614 () Bool)

(assert (=> d!731310 (=> (not res!1086124) (not e!1629614))))

(assert (=> d!731310 (= res!1086124 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (h!35151 rules!4580)))))))

(assert (=> d!731310 (= (inv!40146 (transformation!4513 (h!35151 rules!4580))) e!1629614)))

(declare-fun b!2582607 () Bool)

(assert (=> b!2582607 (= e!1629614 (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (h!35151 rules!4580)))))))

(assert (= (and d!731310 res!1086124) b!2582607))

(declare-fun m!2919089 () Bool)

(assert (=> d!731310 m!2919089))

(declare-fun m!2919091 () Bool)

(assert (=> b!2582607 m!2919091))

(assert (=> b!2582216 d!731310))

(declare-fun d!731312 () Bool)

(assert (=> d!731312 (= (maxPrefixOneRule!1448 thiss!28211 rule!570 input!3654) (Some!5927 (tuple2!29687 (Token!8497 (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 lt!908264)) rule!570 (size!23048 lt!908264) lt!908264) suffix!1684)))))

(declare-fun lt!908365 () Unit!43570)

(declare-fun choose!15222 (LexerInterface!4110 List!29831 List!29830 List!29830 List!29830 Rule!8826) Unit!43570)

(assert (=> d!731312 (= lt!908365 (choose!15222 thiss!28211 rules!4580 lt!908264 input!3654 suffix!1684 rule!570))))

(assert (=> d!731312 (not (isEmpty!17085 rules!4580))))

(assert (=> d!731312 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!611 thiss!28211 rules!4580 lt!908264 input!3654 suffix!1684 rule!570) lt!908365)))

(declare-fun bs!471527 () Bool)

(assert (= bs!471527 d!731312))

(assert (=> bs!471527 m!2918731))

(assert (=> bs!471527 m!2918747))

(assert (=> bs!471527 m!2918737))

(assert (=> bs!471527 m!2918731))

(assert (=> bs!471527 m!2918733))

(declare-fun m!2919093 () Bool)

(assert (=> bs!471527 m!2919093))

(assert (=> bs!471527 m!2918729))

(assert (=> b!2582226 d!731312))

(declare-fun d!731314 () Bool)

(declare-fun dynLambda!12554 (Int BalanceConc!18172) TokenValue!4735)

(assert (=> d!731314 (= (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 lt!908264)) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264)))))

(declare-fun b_lambda!76623 () Bool)

(assert (=> (not b_lambda!76623) (not d!731314)))

(declare-fun t!211828 () Bool)

(declare-fun tb!140473 () Bool)

(assert (=> (and b!2582215 (= (toValue!6399 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))) t!211828) tb!140473))

(declare-fun result!174664 () Bool)

(assert (=> tb!140473 (= result!174664 (inv!21 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(declare-fun m!2919095 () Bool)

(assert (=> tb!140473 m!2919095))

(assert (=> d!731314 t!211828))

(declare-fun b_and!189027 () Bool)

(assert (= b_and!188963 (and (=> t!211828 result!174664) b_and!189027)))

(declare-fun tb!140475 () Bool)

(declare-fun t!211830 () Bool)

(assert (=> (and b!2582205 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570))) t!211830) tb!140475))

(declare-fun result!174668 () Bool)

(assert (= result!174668 result!174664))

(assert (=> d!731314 t!211830))

(declare-fun b_and!189029 () Bool)

(assert (= b_and!188967 (and (=> t!211830 result!174668) b_and!189029)))

(declare-fun tb!140477 () Bool)

(declare-fun t!211832 () Bool)

(assert (=> (and b!2582212 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570))) t!211832) tb!140477))

(declare-fun result!174670 () Bool)

(assert (= result!174670 result!174664))

(assert (=> d!731314 t!211832))

(declare-fun b_and!189031 () Bool)

(assert (= b_and!188971 (and (=> t!211832 result!174670) b_and!189031)))

(declare-fun t!211834 () Bool)

(declare-fun tb!140479 () Bool)

(assert (=> (and b!2582204 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570))) t!211834) tb!140479))

(declare-fun result!174672 () Bool)

(assert (= result!174672 result!174664))

(assert (=> d!731314 t!211834))

(declare-fun b_and!189033 () Bool)

(assert (= b_and!188975 (and (=> t!211834 result!174672) b_and!189033)))

(assert (=> d!731314 m!2918731))

(declare-fun m!2919097 () Bool)

(assert (=> d!731314 m!2919097))

(assert (=> b!2582226 d!731314))

(declare-fun d!731316 () Bool)

(declare-fun lt!908368 () Int)

(assert (=> d!731316 (>= lt!908368 0)))

(declare-fun e!1629620 () Int)

(assert (=> d!731316 (= lt!908368 e!1629620)))

(declare-fun c!416395 () Bool)

(assert (=> d!731316 (= c!416395 ((_ is Nil!29730) lt!908264))))

(assert (=> d!731316 (= (size!23048 lt!908264) lt!908368)))

(declare-fun b!2582614 () Bool)

(assert (=> b!2582614 (= e!1629620 0)))

(declare-fun b!2582615 () Bool)

(assert (=> b!2582615 (= e!1629620 (+ 1 (size!23048 (t!211793 lt!908264))))))

(assert (= (and d!731316 c!416395) b!2582614))

(assert (= (and d!731316 (not c!416395)) b!2582615))

(declare-fun m!2919099 () Bool)

(assert (=> b!2582615 m!2919099))

(assert (=> b!2582226 d!731316))

(assert (=> b!2582226 d!731244))

(declare-fun b!2582634 () Bool)

(declare-fun res!1086141 () Bool)

(declare-fun e!1629630 () Bool)

(assert (=> b!2582634 (=> (not res!1086141) (not e!1629630))))

(declare-fun lt!908381 () Option!5928)

(assert (=> b!2582634 (= res!1086141 (= (value!145868 (_1!17385 (get!9369 lt!908381))) (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))))))))

(declare-fun b!2582635 () Bool)

(assert (=> b!2582635 (= e!1629630 (= (size!23047 (_1!17385 (get!9369 lt!908381))) (size!23048 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381))))))))

(declare-fun b!2582636 () Bool)

(declare-fun res!1086144 () Bool)

(assert (=> b!2582636 (=> (not res!1086144) (not e!1629630))))

(assert (=> b!2582636 (= res!1086144 (< (size!23048 (_2!17385 (get!9369 lt!908381))) (size!23048 input!3654)))))

(declare-fun b!2582637 () Bool)

(declare-fun e!1629632 () Option!5928)

(assert (=> b!2582637 (= e!1629632 None!5927)))

(declare-fun b!2582639 () Bool)

(declare-fun e!1629631 () Bool)

(assert (=> b!2582639 (= e!1629631 e!1629630)))

(declare-fun res!1086145 () Bool)

(assert (=> b!2582639 (=> (not res!1086145) (not e!1629630))))

(assert (=> b!2582639 (= res!1086145 (matchR!3590 (regex!4513 rule!570) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))

(declare-fun b!2582640 () Bool)

(declare-datatypes ((tuple2!29690 0))(
  ( (tuple2!29691 (_1!17387 List!29830) (_2!17387 List!29830)) )
))
(declare-fun lt!908379 () tuple2!29690)

(declare-fun size!23050 (BalanceConc!18172) Int)

(assert (=> b!2582640 (= e!1629632 (Some!5927 (tuple2!29687 (Token!8497 (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 (_1!17387 lt!908379))) rule!570 (size!23050 (seqFromList!3153 (_1!17387 lt!908379))) (_1!17387 lt!908379)) (_2!17387 lt!908379))))))

(declare-fun lt!908383 () Unit!43570)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!722 (Regex!7657 List!29830) Unit!43570)

(assert (=> b!2582640 (= lt!908383 (longestMatchIsAcceptedByMatchOrIsEmpty!722 (regex!4513 rule!570) input!3654))))

(declare-fun res!1086142 () Bool)

(declare-fun findLongestMatchInner!749 (Regex!7657 List!29830 Int List!29830 List!29830 Int) tuple2!29690)

(assert (=> b!2582640 (= res!1086142 (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun e!1629629 () Bool)

(assert (=> b!2582640 (=> res!1086142 e!1629629)))

(assert (=> b!2582640 e!1629629))

(declare-fun lt!908382 () Unit!43570)

(assert (=> b!2582640 (= lt!908382 lt!908383)))

(declare-fun lt!908380 () Unit!43570)

(declare-fun lemmaSemiInverse!1100 (TokenValueInjection!8910 BalanceConc!18172) Unit!43570)

(assert (=> b!2582640 (= lt!908380 (lemmaSemiInverse!1100 (transformation!4513 rule!570) (seqFromList!3153 (_1!17387 lt!908379))))))

(declare-fun d!731318 () Bool)

(assert (=> d!731318 e!1629631))

(declare-fun res!1086139 () Bool)

(assert (=> d!731318 (=> res!1086139 e!1629631)))

(assert (=> d!731318 (= res!1086139 (isEmpty!17089 lt!908381))))

(assert (=> d!731318 (= lt!908381 e!1629632)))

(declare-fun c!416398 () Bool)

(assert (=> d!731318 (= c!416398 (isEmpty!17088 (_1!17387 lt!908379)))))

(declare-fun findLongestMatch!678 (Regex!7657 List!29830) tuple2!29690)

(assert (=> d!731318 (= lt!908379 (findLongestMatch!678 (regex!4513 rule!570) input!3654))))

(assert (=> d!731318 (ruleValid!1519 thiss!28211 rule!570)))

(assert (=> d!731318 (= (maxPrefixOneRule!1448 thiss!28211 rule!570 input!3654) lt!908381)))

(declare-fun b!2582638 () Bool)

(declare-fun res!1086140 () Bool)

(assert (=> b!2582638 (=> (not res!1086140) (not e!1629630))))

(assert (=> b!2582638 (= res!1086140 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))) (_2!17385 (get!9369 lt!908381))) input!3654))))

(declare-fun b!2582641 () Bool)

(assert (=> b!2582641 (= e!1629629 (matchR!3590 (regex!4513 rule!570) (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun b!2582642 () Bool)

(declare-fun res!1086143 () Bool)

(assert (=> b!2582642 (=> (not res!1086143) (not e!1629630))))

(assert (=> b!2582642 (= res!1086143 (= (rule!6871 (_1!17385 (get!9369 lt!908381))) rule!570))))

(assert (= (and d!731318 c!416398) b!2582637))

(assert (= (and d!731318 (not c!416398)) b!2582640))

(assert (= (and b!2582640 (not res!1086142)) b!2582641))

(assert (= (and d!731318 (not res!1086139)) b!2582639))

(assert (= (and b!2582639 res!1086145) b!2582638))

(assert (= (and b!2582638 res!1086140) b!2582636))

(assert (= (and b!2582636 res!1086144) b!2582642))

(assert (= (and b!2582642 res!1086143) b!2582634))

(assert (= (and b!2582634 res!1086141) b!2582635))

(declare-fun m!2919101 () Bool)

(assert (=> b!2582634 m!2919101))

(declare-fun m!2919103 () Bool)

(assert (=> b!2582634 m!2919103))

(assert (=> b!2582634 m!2919103))

(declare-fun m!2919105 () Bool)

(assert (=> b!2582634 m!2919105))

(assert (=> b!2582636 m!2919101))

(declare-fun m!2919107 () Bool)

(assert (=> b!2582636 m!2919107))

(assert (=> b!2582636 m!2919043))

(assert (=> b!2582635 m!2919101))

(declare-fun m!2919109 () Bool)

(assert (=> b!2582635 m!2919109))

(declare-fun m!2919111 () Bool)

(assert (=> b!2582641 m!2919111))

(assert (=> b!2582641 m!2919043))

(assert (=> b!2582641 m!2919111))

(assert (=> b!2582641 m!2919043))

(declare-fun m!2919113 () Bool)

(assert (=> b!2582641 m!2919113))

(declare-fun m!2919115 () Bool)

(assert (=> b!2582641 m!2919115))

(assert (=> b!2582640 m!2919111))

(assert (=> b!2582640 m!2919043))

(assert (=> b!2582640 m!2919113))

(declare-fun m!2919117 () Bool)

(assert (=> b!2582640 m!2919117))

(declare-fun m!2919119 () Bool)

(assert (=> b!2582640 m!2919119))

(declare-fun m!2919121 () Bool)

(assert (=> b!2582640 m!2919121))

(declare-fun m!2919123 () Bool)

(assert (=> b!2582640 m!2919123))

(assert (=> b!2582640 m!2919111))

(assert (=> b!2582640 m!2919043))

(assert (=> b!2582640 m!2919121))

(assert (=> b!2582640 m!2919121))

(declare-fun m!2919125 () Bool)

(assert (=> b!2582640 m!2919125))

(assert (=> b!2582640 m!2919121))

(declare-fun m!2919127 () Bool)

(assert (=> b!2582640 m!2919127))

(assert (=> b!2582642 m!2919101))

(declare-fun m!2919129 () Bool)

(assert (=> d!731318 m!2919129))

(declare-fun m!2919131 () Bool)

(assert (=> d!731318 m!2919131))

(declare-fun m!2919133 () Bool)

(assert (=> d!731318 m!2919133))

(assert (=> d!731318 m!2918721))

(assert (=> b!2582638 m!2919101))

(declare-fun m!2919135 () Bool)

(assert (=> b!2582638 m!2919135))

(assert (=> b!2582638 m!2919135))

(declare-fun m!2919137 () Bool)

(assert (=> b!2582638 m!2919137))

(assert (=> b!2582638 m!2919137))

(declare-fun m!2919139 () Bool)

(assert (=> b!2582638 m!2919139))

(assert (=> b!2582639 m!2919101))

(assert (=> b!2582639 m!2919135))

(assert (=> b!2582639 m!2919135))

(assert (=> b!2582639 m!2919137))

(assert (=> b!2582639 m!2919137))

(declare-fun m!2919141 () Bool)

(assert (=> b!2582639 m!2919141))

(assert (=> b!2582226 d!731318))

(assert (=> b!2582226 d!731246))

(declare-fun d!731320 () Bool)

(declare-fun fromListB!1424 (List!29830) BalanceConc!18172)

(assert (=> d!731320 (= (seqFromList!3153 lt!908264) (fromListB!1424 lt!908264))))

(declare-fun bs!471528 () Bool)

(assert (= bs!471528 d!731320))

(declare-fun m!2919143 () Bool)

(assert (=> bs!471528 m!2919143))

(assert (=> b!2582226 d!731320))

(declare-fun e!1629635 () Bool)

(assert (=> b!2582229 (= tp!819749 e!1629635)))

(declare-fun b!2582653 () Bool)

(assert (=> b!2582653 (= e!1629635 tp_is_empty!13209)))

(declare-fun b!2582656 () Bool)

(declare-fun tp!819832 () Bool)

(declare-fun tp!819831 () Bool)

(assert (=> b!2582656 (= e!1629635 (and tp!819832 tp!819831))))

(declare-fun b!2582655 () Bool)

(declare-fun tp!819828 () Bool)

(assert (=> b!2582655 (= e!1629635 tp!819828)))

(declare-fun b!2582654 () Bool)

(declare-fun tp!819830 () Bool)

(declare-fun tp!819829 () Bool)

(assert (=> b!2582654 (= e!1629635 (and tp!819830 tp!819829))))

(assert (= (and b!2582229 ((_ is ElementMatch!7657) (regex!4513 (rule!6871 token!562)))) b!2582653))

(assert (= (and b!2582229 ((_ is Concat!12393) (regex!4513 (rule!6871 token!562)))) b!2582654))

(assert (= (and b!2582229 ((_ is Star!7657) (regex!4513 (rule!6871 token!562)))) b!2582655))

(assert (= (and b!2582229 ((_ is Union!7657) (regex!4513 (rule!6871 token!562)))) b!2582656))

(declare-fun e!1629636 () Bool)

(assert (=> b!2582213 (= tp!819745 e!1629636)))

(declare-fun b!2582657 () Bool)

(assert (=> b!2582657 (= e!1629636 tp_is_empty!13209)))

(declare-fun b!2582660 () Bool)

(declare-fun tp!819837 () Bool)

(declare-fun tp!819836 () Bool)

(assert (=> b!2582660 (= e!1629636 (and tp!819837 tp!819836))))

(declare-fun b!2582659 () Bool)

(declare-fun tp!819833 () Bool)

(assert (=> b!2582659 (= e!1629636 tp!819833)))

(declare-fun b!2582658 () Bool)

(declare-fun tp!819835 () Bool)

(declare-fun tp!819834 () Bool)

(assert (=> b!2582658 (= e!1629636 (and tp!819835 tp!819834))))

(assert (= (and b!2582213 ((_ is ElementMatch!7657) (regex!4513 rule!570))) b!2582657))

(assert (= (and b!2582213 ((_ is Concat!12393) (regex!4513 rule!570))) b!2582658))

(assert (= (and b!2582213 ((_ is Star!7657) (regex!4513 rule!570))) b!2582659))

(assert (= (and b!2582213 ((_ is Union!7657) (regex!4513 rule!570))) b!2582660))

(declare-fun b!2582671 () Bool)

(declare-fun b_free!72669 () Bool)

(declare-fun b_next!73373 () Bool)

(assert (=> b!2582671 (= b_free!72669 (not b_next!73373))))

(declare-fun tb!140481 () Bool)

(declare-fun t!211837 () Bool)

(assert (=> (and b!2582671 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 rule!570))) t!211837) tb!140481))

(declare-fun result!174678 () Bool)

(assert (= result!174678 result!174664))

(assert (=> d!731314 t!211837))

(declare-fun tp!819848 () Bool)

(declare-fun b_and!189035 () Bool)

(assert (=> b!2582671 (= tp!819848 (and (=> t!211837 result!174678) b_and!189035))))

(declare-fun b_free!72671 () Bool)

(declare-fun b_next!73375 () Bool)

(assert (=> b!2582671 (= b_free!72671 (not b_next!73375))))

(declare-fun t!211839 () Bool)

(declare-fun tb!140483 () Bool)

(assert (=> (and b!2582671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211839) tb!140483))

(declare-fun result!174680 () Bool)

(assert (= result!174680 result!174640))

(assert (=> d!731246 t!211839))

(assert (=> b!2582502 t!211839))

(declare-fun b_and!189037 () Bool)

(declare-fun tp!819846 () Bool)

(assert (=> b!2582671 (= tp!819846 (and (=> t!211839 result!174680) b_and!189037))))

(declare-fun e!1629645 () Bool)

(assert (=> b!2582671 (= e!1629645 (and tp!819848 tp!819846))))

(declare-fun tp!819849 () Bool)

(declare-fun b!2582670 () Bool)

(declare-fun e!1629646 () Bool)

(assert (=> b!2582670 (= e!1629646 (and tp!819849 (inv!40143 (tag!5003 (h!35151 (t!211794 rs!798)))) (inv!40146 (transformation!4513 (h!35151 (t!211794 rs!798)))) e!1629645))))

(declare-fun b!2582669 () Bool)

(declare-fun e!1629648 () Bool)

(declare-fun tp!819847 () Bool)

(assert (=> b!2582669 (= e!1629648 (and e!1629646 tp!819847))))

(assert (=> b!2582208 (= tp!819752 e!1629648)))

(assert (= b!2582670 b!2582671))

(assert (= b!2582669 b!2582670))

(assert (= (and b!2582208 ((_ is Cons!29731) (t!211794 rs!798))) b!2582669))

(declare-fun m!2919145 () Bool)

(assert (=> b!2582670 m!2919145))

(declare-fun m!2919147 () Bool)

(assert (=> b!2582670 m!2919147))

(declare-fun b!2582674 () Bool)

(declare-fun b_free!72673 () Bool)

(declare-fun b_next!73377 () Bool)

(assert (=> b!2582674 (= b_free!72673 (not b_next!73377))))

(declare-fun tb!140485 () Bool)

(declare-fun t!211841 () Bool)

(assert (=> (and b!2582674 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 rule!570))) t!211841) tb!140485))

(declare-fun result!174682 () Bool)

(assert (= result!174682 result!174664))

(assert (=> d!731314 t!211841))

(declare-fun b_and!189039 () Bool)

(declare-fun tp!819852 () Bool)

(assert (=> b!2582674 (= tp!819852 (and (=> t!211841 result!174682) b_and!189039))))

(declare-fun b_free!72675 () Bool)

(declare-fun b_next!73379 () Bool)

(assert (=> b!2582674 (= b_free!72675 (not b_next!73379))))

(declare-fun t!211843 () Bool)

(declare-fun tb!140487 () Bool)

(assert (=> (and b!2582674 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!211843) tb!140487))

(declare-fun result!174684 () Bool)

(assert (= result!174684 result!174640))

(assert (=> d!731246 t!211843))

(assert (=> b!2582502 t!211843))

(declare-fun b_and!189041 () Bool)

(declare-fun tp!819850 () Bool)

(assert (=> b!2582674 (= tp!819850 (and (=> t!211843 result!174684) b_and!189041))))

(declare-fun e!1629649 () Bool)

(assert (=> b!2582674 (= e!1629649 (and tp!819852 tp!819850))))

(declare-fun tp!819853 () Bool)

(declare-fun e!1629650 () Bool)

(declare-fun b!2582673 () Bool)

(assert (=> b!2582673 (= e!1629650 (and tp!819853 (inv!40143 (tag!5003 (h!35151 (t!211794 rules!4580)))) (inv!40146 (transformation!4513 (h!35151 (t!211794 rules!4580)))) e!1629649))))

(declare-fun b!2582672 () Bool)

(declare-fun e!1629652 () Bool)

(declare-fun tp!819851 () Bool)

(assert (=> b!2582672 (= e!1629652 (and e!1629650 tp!819851))))

(assert (=> b!2582223 (= tp!819754 e!1629652)))

(assert (= b!2582673 b!2582674))

(assert (= b!2582672 b!2582673))

(assert (= (and b!2582223 ((_ is Cons!29731) (t!211794 rules!4580))) b!2582672))

(declare-fun m!2919149 () Bool)

(assert (=> b!2582673 m!2919149))

(declare-fun m!2919151 () Bool)

(assert (=> b!2582673 m!2919151))

(declare-fun b!2582679 () Bool)

(declare-fun e!1629655 () Bool)

(declare-fun tp!819856 () Bool)

(assert (=> b!2582679 (= e!1629655 (and tp_is_empty!13209 tp!819856))))

(assert (=> b!2582217 (= tp!819760 e!1629655)))

(assert (= (and b!2582217 ((_ is Cons!29730) (originalCharacters!5279 token!562))) b!2582679))

(declare-fun b!2582680 () Bool)

(declare-fun e!1629656 () Bool)

(declare-fun tp!819857 () Bool)

(assert (=> b!2582680 (= e!1629656 (and tp_is_empty!13209 tp!819857))))

(assert (=> b!2582211 (= tp!819756 e!1629656)))

(assert (= (and b!2582211 ((_ is Cons!29730) (t!211793 input!3654))) b!2582680))

(declare-fun e!1629657 () Bool)

(assert (=> b!2582216 (= tp!819753 e!1629657)))

(declare-fun b!2582681 () Bool)

(assert (=> b!2582681 (= e!1629657 tp_is_empty!13209)))

(declare-fun b!2582684 () Bool)

(declare-fun tp!819862 () Bool)

(declare-fun tp!819861 () Bool)

(assert (=> b!2582684 (= e!1629657 (and tp!819862 tp!819861))))

(declare-fun b!2582683 () Bool)

(declare-fun tp!819858 () Bool)

(assert (=> b!2582683 (= e!1629657 tp!819858)))

(declare-fun b!2582682 () Bool)

(declare-fun tp!819860 () Bool)

(declare-fun tp!819859 () Bool)

(assert (=> b!2582682 (= e!1629657 (and tp!819860 tp!819859))))

(assert (= (and b!2582216 ((_ is ElementMatch!7657) (regex!4513 (h!35151 rules!4580)))) b!2582681))

(assert (= (and b!2582216 ((_ is Concat!12393) (regex!4513 (h!35151 rules!4580)))) b!2582682))

(assert (= (and b!2582216 ((_ is Star!7657) (regex!4513 (h!35151 rules!4580)))) b!2582683))

(assert (= (and b!2582216 ((_ is Union!7657) (regex!4513 (h!35151 rules!4580)))) b!2582684))

(declare-fun e!1629658 () Bool)

(assert (=> b!2582210 (= tp!819758 e!1629658)))

(declare-fun b!2582685 () Bool)

(assert (=> b!2582685 (= e!1629658 tp_is_empty!13209)))

(declare-fun b!2582688 () Bool)

(declare-fun tp!819867 () Bool)

(declare-fun tp!819866 () Bool)

(assert (=> b!2582688 (= e!1629658 (and tp!819867 tp!819866))))

(declare-fun b!2582687 () Bool)

(declare-fun tp!819863 () Bool)

(assert (=> b!2582687 (= e!1629658 tp!819863)))

(declare-fun b!2582686 () Bool)

(declare-fun tp!819865 () Bool)

(declare-fun tp!819864 () Bool)

(assert (=> b!2582686 (= e!1629658 (and tp!819865 tp!819864))))

(assert (= (and b!2582210 ((_ is ElementMatch!7657) (regex!4513 (h!35151 rs!798)))) b!2582685))

(assert (= (and b!2582210 ((_ is Concat!12393) (regex!4513 (h!35151 rs!798)))) b!2582686))

(assert (= (and b!2582210 ((_ is Star!7657) (regex!4513 (h!35151 rs!798)))) b!2582687))

(assert (= (and b!2582210 ((_ is Union!7657) (regex!4513 (h!35151 rs!798)))) b!2582688))

(declare-fun b!2582689 () Bool)

(declare-fun e!1629659 () Bool)

(declare-fun tp!819868 () Bool)

(assert (=> b!2582689 (= e!1629659 (and tp_is_empty!13209 tp!819868))))

(assert (=> b!2582225 (= tp!819755 e!1629659)))

(assert (= (and b!2582225 ((_ is Cons!29730) (t!211793 suffix!1684))) b!2582689))

(declare-fun b_lambda!76625 () Bool)

(assert (= b_lambda!76613 (or (and b!2582674 b_free!72675 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582205 b_free!72651 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582671 b_free!72671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582212 b_free!72655) (and b!2582215 b_free!72647 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582204 b_free!72659 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) b_lambda!76625)))

(declare-fun b_lambda!76627 () Bool)

(assert (= b_lambda!76623 (or (and b!2582212 b_free!72653 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582671 b_free!72669 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582205 b_free!72649 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582674 b_free!72673 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582204 b_free!72657 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582215 b_free!72645) b_lambda!76627)))

(declare-fun b_lambda!76629 () Bool)

(assert (= b_lambda!76611 (or (and b!2582674 b_free!72675 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582205 b_free!72651 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582671 b_free!72671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582212 b_free!72655) (and b!2582215 b_free!72647 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) (and b!2582204 b_free!72659 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (rule!6871 token!562))))) b_lambda!76629)))

(check-sat (not b!2582601) (not b!2582679) (not b!2582369) (not d!731214) (not d!731244) (not b!2582502) tp_is_empty!13209 (not b!2582641) (not b!2582680) (not b_next!73379) (not b!2582238) (not d!731248) b_and!189037 (not b!2582670) (not d!731296) (not b_next!73363) (not b_next!73361) (not b!2582479) (not b!2582376) (not b!2582684) (not b!2582580) (not b!2582642) (not b_next!73375) (not b!2582587) (not b!2582581) (not b!2582247) (not d!731310) (not d!731240) (not b!2582327) (not d!731304) (not b!2582658) (not b_lambda!76627) (not b_next!73359) b_and!189029 (not d!731280) (not d!731218) (not b!2582602) (not b!2582341) b_and!189039 (not b!2582592) (not b!2582588) (not d!731234) (not b!2582589) (not b!2582615) (not b!2582640) (not b!2582261) (not b!2582585) b_and!189003 (not b!2582669) (not tb!140457) (not b!2582635) (not b!2582639) b_and!189041 b_and!189009 (not b!2582659) (not b!2582655) (not b!2582607) (not b!2582686) (not b!2582241) b_and!189033 b_and!189005 (not b!2582590) (not b!2582636) (not b!2582582) (not b!2582583) (not d!731246) (not d!731302) (not b!2582579) (not b_lambda!76629) (not d!731220) (not d!731312) (not tb!140473) (not b!2582325) (not b!2582503) (not b_next!73373) (not b!2582324) (not d!731318) (not b!2582260) (not b_next!73353) (not bm!166784) (not d!731320) (not bm!166785) (not b!2582673) (not d!731224) (not b_next!73355) b_and!189035 (not b!2582336) (not b!2582688) (not b!2582334) (not b_next!73351) (not b!2582672) (not d!731306) (not b_next!73357) (not b!2582656) (not b!2582323) (not d!731284) (not b!2582370) (not b!2582687) (not b_next!73377) (not b!2582689) (not b_next!73349) (not b!2582604) (not b!2582634) (not b!2582605) (not b!2582584) b_and!189027 (not b!2582683) (not b_lambda!76625) (not d!731276) (not b!2582262) (not b!2582654) (not b!2582682) (not bm!166774) b_and!189007 (not d!731232) (not b!2582660) b_and!189031 (not b!2582638) (not b!2582599))
(check-sat (not b_next!73379) b_and!189037 (not b_next!73375) b_and!189039 b_and!189003 b_and!189033 b_and!189005 (not b_next!73377) (not b_next!73349) b_and!189027 (not b_next!73363) (not b_next!73361) (not b_next!73359) b_and!189029 b_and!189041 b_and!189009 (not b_next!73373) (not b_next!73353) (not b_next!73355) b_and!189035 (not b_next!73351) (not b_next!73357) b_and!189007 b_and!189031)
(get-model)

(declare-fun d!731350 () Bool)

(assert (=> d!731350 true))

(declare-fun lambda!95708 () Int)

(declare-fun order!15831 () Int)

(declare-fun order!15829 () Int)

(declare-fun dynLambda!12557 (Int Int) Int)

(declare-fun dynLambda!12558 (Int Int) Int)

(assert (=> d!731350 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 rule!570))) (dynLambda!12558 order!15831 lambda!95708))))

(declare-fun Forall2!765 (Int) Bool)

(assert (=> d!731350 (= (equivClasses!1783 (toChars!6258 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))) (Forall2!765 lambda!95708))))

(declare-fun bs!471538 () Bool)

(assert (= bs!471538 d!731350))

(declare-fun m!2919189 () Bool)

(assert (=> bs!471538 m!2919189))

(assert (=> b!2582602 d!731350))

(declare-fun d!731352 () Bool)

(assert (=> d!731352 (= (head!5854 lt!908265) (h!35150 lt!908265))))

(assert (=> b!2582323 d!731352))

(declare-fun d!731354 () Bool)

(declare-fun lt!908387 () Int)

(assert (=> d!731354 (>= lt!908387 0)))

(declare-fun e!1629700 () Int)

(assert (=> d!731354 (= lt!908387 e!1629700)))

(declare-fun c!416412 () Bool)

(assert (=> d!731354 (= c!416412 ((_ is Nil!29730) lt!908362))))

(assert (=> d!731354 (= (size!23048 lt!908362) lt!908387)))

(declare-fun b!2582750 () Bool)

(assert (=> b!2582750 (= e!1629700 0)))

(declare-fun b!2582751 () Bool)

(assert (=> b!2582751 (= e!1629700 (+ 1 (size!23048 (t!211793 lt!908362))))))

(assert (= (and d!731354 c!416412) b!2582750))

(assert (= (and d!731354 (not c!416412)) b!2582751))

(declare-fun m!2919191 () Bool)

(assert (=> b!2582751 m!2919191))

(assert (=> b!2582605 d!731354))

(assert (=> b!2582605 d!731316))

(declare-fun d!731356 () Bool)

(declare-fun lt!908388 () Int)

(assert (=> d!731356 (>= lt!908388 0)))

(declare-fun e!1629701 () Int)

(assert (=> d!731356 (= lt!908388 e!1629701)))

(declare-fun c!416413 () Bool)

(assert (=> d!731356 (= c!416413 ((_ is Nil!29730) suffix!1684))))

(assert (=> d!731356 (= (size!23048 suffix!1684) lt!908388)))

(declare-fun b!2582752 () Bool)

(assert (=> b!2582752 (= e!1629701 0)))

(declare-fun b!2582753 () Bool)

(assert (=> b!2582753 (= e!1629701 (+ 1 (size!23048 (t!211793 suffix!1684))))))

(assert (= (and d!731356 c!416413) b!2582752))

(assert (= (and d!731356 (not c!416413)) b!2582753))

(declare-fun m!2919193 () Bool)

(assert (=> b!2582753 m!2919193))

(assert (=> b!2582605 d!731356))

(declare-fun b!2582754 () Bool)

(declare-fun res!1086177 () Bool)

(declare-fun e!1629703 () Bool)

(assert (=> b!2582754 (=> (not res!1086177) (not e!1629703))))

(declare-fun lt!908393 () Option!5928)

(assert (=> b!2582754 (= res!1086177 (matchR!3590 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908393)))) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908393))))))))

(declare-fun b!2582755 () Bool)

(declare-fun e!1629704 () Option!5928)

(declare-fun lt!908392 () Option!5928)

(declare-fun lt!908389 () Option!5928)

(assert (=> b!2582755 (= e!1629704 (ite (and ((_ is None!5927) lt!908392) ((_ is None!5927) lt!908389)) None!5927 (ite ((_ is None!5927) lt!908389) lt!908392 (ite ((_ is None!5927) lt!908392) lt!908389 (ite (>= (size!23047 (_1!17385 (v!32022 lt!908392))) (size!23047 (_1!17385 (v!32022 lt!908389)))) lt!908392 lt!908389)))))))

(declare-fun call!166801 () Option!5928)

(assert (=> b!2582755 (= lt!908392 call!166801)))

(assert (=> b!2582755 (= lt!908389 (maxPrefix!2282 thiss!28211 (t!211794 (t!211794 rules!4580)) input!3654))))

(declare-fun b!2582756 () Bool)

(declare-fun res!1086176 () Bool)

(assert (=> b!2582756 (=> (not res!1086176) (not e!1629703))))

(assert (=> b!2582756 (= res!1086176 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908393)))) (_2!17385 (get!9369 lt!908393))) input!3654))))

(declare-fun b!2582757 () Bool)

(declare-fun res!1086179 () Bool)

(assert (=> b!2582757 (=> (not res!1086179) (not e!1629703))))

(assert (=> b!2582757 (= res!1086179 (< (size!23048 (_2!17385 (get!9369 lt!908393))) (size!23048 input!3654)))))

(declare-fun d!731358 () Bool)

(declare-fun e!1629702 () Bool)

(assert (=> d!731358 e!1629702))

(declare-fun res!1086178 () Bool)

(assert (=> d!731358 (=> res!1086178 e!1629702)))

(assert (=> d!731358 (= res!1086178 (isEmpty!17089 lt!908393))))

(assert (=> d!731358 (= lt!908393 e!1629704)))

(declare-fun c!416414 () Bool)

(assert (=> d!731358 (= c!416414 (and ((_ is Cons!29731) (t!211794 rules!4580)) ((_ is Nil!29731) (t!211794 (t!211794 rules!4580)))))))

(declare-fun lt!908390 () Unit!43570)

(declare-fun lt!908391 () Unit!43570)

(assert (=> d!731358 (= lt!908390 lt!908391)))

(assert (=> d!731358 (isPrefix!2413 input!3654 input!3654)))

(assert (=> d!731358 (= lt!908391 (lemmaIsPrefixRefl!1539 input!3654 input!3654))))

(assert (=> d!731358 (rulesValidInductive!1587 thiss!28211 (t!211794 rules!4580))))

(assert (=> d!731358 (= (maxPrefix!2282 thiss!28211 (t!211794 rules!4580) input!3654) lt!908393)))

(declare-fun b!2582758 () Bool)

(assert (=> b!2582758 (= e!1629702 e!1629703)))

(declare-fun res!1086180 () Bool)

(assert (=> b!2582758 (=> (not res!1086180) (not e!1629703))))

(assert (=> b!2582758 (= res!1086180 (isDefined!4748 lt!908393))))

(declare-fun bm!166796 () Bool)

(assert (=> bm!166796 (= call!166801 (maxPrefixOneRule!1448 thiss!28211 (h!35151 (t!211794 rules!4580)) input!3654))))

(declare-fun b!2582759 () Bool)

(declare-fun res!1086181 () Bool)

(assert (=> b!2582759 (=> (not res!1086181) (not e!1629703))))

(assert (=> b!2582759 (= res!1086181 (= (value!145868 (_1!17385 (get!9369 lt!908393))) (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908393)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908393)))))))))

(declare-fun b!2582760 () Bool)

(declare-fun res!1086182 () Bool)

(assert (=> b!2582760 (=> (not res!1086182) (not e!1629703))))

(assert (=> b!2582760 (= res!1086182 (= (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908393)))) (originalCharacters!5279 (_1!17385 (get!9369 lt!908393)))))))

(declare-fun b!2582761 () Bool)

(assert (=> b!2582761 (= e!1629704 call!166801)))

(declare-fun b!2582762 () Bool)

(assert (=> b!2582762 (= e!1629703 (contains!5315 (t!211794 rules!4580) (rule!6871 (_1!17385 (get!9369 lt!908393)))))))

(assert (= (and d!731358 c!416414) b!2582761))

(assert (= (and d!731358 (not c!416414)) b!2582755))

(assert (= (or b!2582761 b!2582755) bm!166796))

(assert (= (and d!731358 (not res!1086178)) b!2582758))

(assert (= (and b!2582758 res!1086180) b!2582760))

(assert (= (and b!2582760 res!1086182) b!2582757))

(assert (= (and b!2582757 res!1086179) b!2582756))

(assert (= (and b!2582756 res!1086176) b!2582759))

(assert (= (and b!2582759 res!1086181) b!2582754))

(assert (= (and b!2582754 res!1086177) b!2582762))

(declare-fun m!2919195 () Bool)

(assert (=> b!2582754 m!2919195))

(declare-fun m!2919197 () Bool)

(assert (=> b!2582754 m!2919197))

(assert (=> b!2582754 m!2919197))

(declare-fun m!2919199 () Bool)

(assert (=> b!2582754 m!2919199))

(assert (=> b!2582754 m!2919199))

(declare-fun m!2919201 () Bool)

(assert (=> b!2582754 m!2919201))

(declare-fun m!2919203 () Bool)

(assert (=> bm!166796 m!2919203))

(assert (=> b!2582760 m!2919195))

(assert (=> b!2582760 m!2919197))

(assert (=> b!2582760 m!2919197))

(assert (=> b!2582760 m!2919199))

(assert (=> b!2582759 m!2919195))

(declare-fun m!2919205 () Bool)

(assert (=> b!2582759 m!2919205))

(assert (=> b!2582759 m!2919205))

(declare-fun m!2919207 () Bool)

(assert (=> b!2582759 m!2919207))

(assert (=> b!2582757 m!2919195))

(declare-fun m!2919209 () Bool)

(assert (=> b!2582757 m!2919209))

(assert (=> b!2582757 m!2919043))

(declare-fun m!2919211 () Bool)

(assert (=> d!731358 m!2919211))

(assert (=> d!731358 m!2919047))

(assert (=> d!731358 m!2919049))

(declare-fun m!2919213 () Bool)

(assert (=> d!731358 m!2919213))

(assert (=> b!2582756 m!2919195))

(assert (=> b!2582756 m!2919197))

(assert (=> b!2582756 m!2919197))

(assert (=> b!2582756 m!2919199))

(assert (=> b!2582756 m!2919199))

(declare-fun m!2919215 () Bool)

(assert (=> b!2582756 m!2919215))

(declare-fun m!2919217 () Bool)

(assert (=> b!2582758 m!2919217))

(assert (=> b!2582762 m!2919195))

(declare-fun m!2919219 () Bool)

(assert (=> b!2582762 m!2919219))

(declare-fun m!2919221 () Bool)

(assert (=> b!2582755 m!2919221))

(assert (=> b!2582580 d!731358))

(declare-fun d!731360 () Bool)

(declare-fun lt!908394 () Int)

(assert (=> d!731360 (>= lt!908394 0)))

(declare-fun e!1629705 () Int)

(assert (=> d!731360 (= lt!908394 e!1629705)))

(declare-fun c!416415 () Bool)

(assert (=> d!731360 (= c!416415 ((_ is Nil!29730) (_2!17385 (get!9369 lt!908381))))))

(assert (=> d!731360 (= (size!23048 (_2!17385 (get!9369 lt!908381))) lt!908394)))

(declare-fun b!2582763 () Bool)

(assert (=> b!2582763 (= e!1629705 0)))

(declare-fun b!2582764 () Bool)

(assert (=> b!2582764 (= e!1629705 (+ 1 (size!23048 (t!211793 (_2!17385 (get!9369 lt!908381))))))))

(assert (= (and d!731360 c!416415) b!2582763))

(assert (= (and d!731360 (not c!416415)) b!2582764))

(declare-fun m!2919223 () Bool)

(assert (=> b!2582764 m!2919223))

(assert (=> b!2582636 d!731360))

(declare-fun d!731362 () Bool)

(assert (=> d!731362 (= (get!9369 lt!908381) (v!32022 lt!908381))))

(assert (=> b!2582636 d!731362))

(declare-fun d!731364 () Bool)

(declare-fun lt!908395 () Int)

(assert (=> d!731364 (>= lt!908395 0)))

(declare-fun e!1629706 () Int)

(assert (=> d!731364 (= lt!908395 e!1629706)))

(declare-fun c!416416 () Bool)

(assert (=> d!731364 (= c!416416 ((_ is Nil!29730) input!3654))))

(assert (=> d!731364 (= (size!23048 input!3654) lt!908395)))

(declare-fun b!2582765 () Bool)

(assert (=> b!2582765 (= e!1629706 0)))

(declare-fun b!2582766 () Bool)

(assert (=> b!2582766 (= e!1629706 (+ 1 (size!23048 (t!211793 input!3654))))))

(assert (= (and d!731364 c!416416) b!2582765))

(assert (= (and d!731364 (not c!416416)) b!2582766))

(declare-fun m!2919225 () Bool)

(assert (=> b!2582766 m!2919225))

(assert (=> b!2582636 d!731364))

(assert (=> d!731234 d!731232))

(declare-fun d!731366 () Bool)

(assert (=> d!731366 (ruleValid!1519 thiss!28211 rule!570)))

(assert (=> d!731366 true))

(declare-fun _$65!1202 () Unit!43570)

(assert (=> d!731366 (= (choose!15221 thiss!28211 rule!570 rules!4580) _$65!1202)))

(declare-fun bs!471539 () Bool)

(assert (= bs!471539 d!731366))

(assert (=> bs!471539 m!2918721))

(assert (=> d!731234 d!731366))

(assert (=> d!731234 d!731220))

(declare-fun d!731368 () Bool)

(declare-fun lt!908396 () Int)

(assert (=> d!731368 (>= lt!908396 0)))

(declare-fun e!1629707 () Int)

(assert (=> d!731368 (= lt!908396 e!1629707)))

(declare-fun c!416417 () Bool)

(assert (=> d!731368 (= c!416417 ((_ is Nil!29730) lt!908305))))

(assert (=> d!731368 (= (size!23048 lt!908305) lt!908396)))

(declare-fun b!2582767 () Bool)

(assert (=> b!2582767 (= e!1629707 0)))

(declare-fun b!2582768 () Bool)

(assert (=> b!2582768 (= e!1629707 (+ 1 (size!23048 (t!211793 lt!908305))))))

(assert (= (and d!731368 c!416417) b!2582767))

(assert (= (and d!731368 (not c!416417)) b!2582768))

(declare-fun m!2919227 () Bool)

(assert (=> b!2582768 m!2919227))

(assert (=> b!2582370 d!731368))

(declare-fun d!731370 () Bool)

(declare-fun lt!908397 () Int)

(assert (=> d!731370 (>= lt!908397 0)))

(declare-fun e!1629708 () Int)

(assert (=> d!731370 (= lt!908397 e!1629708)))

(declare-fun c!416418 () Bool)

(assert (=> d!731370 (= c!416418 ((_ is Nil!29730) lt!908265))))

(assert (=> d!731370 (= (size!23048 lt!908265) lt!908397)))

(declare-fun b!2582769 () Bool)

(assert (=> b!2582769 (= e!1629708 0)))

(declare-fun b!2582770 () Bool)

(assert (=> b!2582770 (= e!1629708 (+ 1 (size!23048 (t!211793 lt!908265))))))

(assert (= (and d!731370 c!416418) b!2582769))

(assert (= (and d!731370 (not c!416418)) b!2582770))

(declare-fun m!2919229 () Bool)

(assert (=> b!2582770 m!2919229))

(assert (=> b!2582370 d!731370))

(assert (=> b!2582370 d!731356))

(assert (=> b!2582634 d!731362))

(declare-fun d!731372 () Bool)

(assert (=> d!731372 (= (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381))))) (dynLambda!12554 (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381))))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381))))))))

(declare-fun b_lambda!76633 () Bool)

(assert (=> (not b_lambda!76633) (not d!731372)))

(declare-fun t!211858 () Bool)

(declare-fun tb!140501 () Bool)

(assert (=> (and b!2582215 (= (toValue!6399 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211858) tb!140501))

(declare-fun result!174700 () Bool)

(assert (=> tb!140501 (= result!174700 (inv!21 (dynLambda!12554 (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381))))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))))))))

(declare-fun m!2919231 () Bool)

(assert (=> tb!140501 m!2919231))

(assert (=> d!731372 t!211858))

(declare-fun b_and!189055 () Bool)

(assert (= b_and!189027 (and (=> t!211858 result!174700) b_and!189055)))

(declare-fun tb!140503 () Bool)

(declare-fun t!211860 () Bool)

(assert (=> (and b!2582671 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211860) tb!140503))

(declare-fun result!174702 () Bool)

(assert (= result!174702 result!174700))

(assert (=> d!731372 t!211860))

(declare-fun b_and!189057 () Bool)

(assert (= b_and!189035 (and (=> t!211860 result!174702) b_and!189057)))

(declare-fun tb!140505 () Bool)

(declare-fun t!211862 () Bool)

(assert (=> (and b!2582212 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211862) tb!140505))

(declare-fun result!174704 () Bool)

(assert (= result!174704 result!174700))

(assert (=> d!731372 t!211862))

(declare-fun b_and!189059 () Bool)

(assert (= b_and!189031 (and (=> t!211862 result!174704) b_and!189059)))

(declare-fun t!211864 () Bool)

(declare-fun tb!140507 () Bool)

(assert (=> (and b!2582204 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211864) tb!140507))

(declare-fun result!174706 () Bool)

(assert (= result!174706 result!174700))

(assert (=> d!731372 t!211864))

(declare-fun b_and!189061 () Bool)

(assert (= b_and!189033 (and (=> t!211864 result!174706) b_and!189061)))

(declare-fun t!211866 () Bool)

(declare-fun tb!140509 () Bool)

(assert (=> (and b!2582674 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211866) tb!140509))

(declare-fun result!174708 () Bool)

(assert (= result!174708 result!174700))

(assert (=> d!731372 t!211866))

(declare-fun b_and!189063 () Bool)

(assert (= b_and!189039 (and (=> t!211866 result!174708) b_and!189063)))

(declare-fun t!211868 () Bool)

(declare-fun tb!140511 () Bool)

(assert (=> (and b!2582205 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211868) tb!140511))

(declare-fun result!174710 () Bool)

(assert (= result!174710 result!174700))

(assert (=> d!731372 t!211868))

(declare-fun b_and!189065 () Bool)

(assert (= b_and!189029 (and (=> t!211868 result!174710) b_and!189065)))

(assert (=> d!731372 m!2919103))

(declare-fun m!2919233 () Bool)

(assert (=> d!731372 m!2919233))

(assert (=> b!2582634 d!731372))

(declare-fun d!731374 () Bool)

(assert (=> d!731374 (= (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))) (fromListB!1424 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))))))

(declare-fun bs!471540 () Bool)

(assert (= bs!471540 d!731374))

(declare-fun m!2919235 () Bool)

(assert (=> bs!471540 m!2919235))

(assert (=> b!2582634 d!731374))

(declare-fun bs!471541 () Bool)

(declare-fun d!731376 () Bool)

(assert (= bs!471541 (and d!731376 d!731248)))

(declare-fun lambda!95711 () Int)

(assert (=> bs!471541 (= lambda!95711 lambda!95699)))

(declare-fun bs!471542 () Bool)

(assert (= bs!471542 (and d!731376 d!731304)))

(assert (=> bs!471542 (= lambda!95711 lambda!95700)))

(assert (=> d!731376 true))

(declare-fun lt!908400 () Bool)

(assert (=> d!731376 (= lt!908400 (forall!6055 rs!798 lambda!95711))))

(declare-fun e!1629714 () Bool)

(assert (=> d!731376 (= lt!908400 e!1629714)))

(declare-fun res!1086188 () Bool)

(assert (=> d!731376 (=> res!1086188 e!1629714)))

(assert (=> d!731376 (= res!1086188 (not ((_ is Cons!29731) rs!798)))))

(assert (=> d!731376 (= (rulesValidInductive!1587 thiss!28211 rs!798) lt!908400)))

(declare-fun b!2582775 () Bool)

(declare-fun e!1629715 () Bool)

(assert (=> b!2582775 (= e!1629714 e!1629715)))

(declare-fun res!1086187 () Bool)

(assert (=> b!2582775 (=> (not res!1086187) (not e!1629715))))

(assert (=> b!2582775 (= res!1086187 (ruleValid!1519 thiss!28211 (h!35151 rs!798)))))

(declare-fun b!2582776 () Bool)

(assert (=> b!2582776 (= e!1629715 (rulesValidInductive!1587 thiss!28211 (t!211794 rs!798)))))

(assert (= (and d!731376 (not res!1086188)) b!2582775))

(assert (= (and b!2582775 res!1086187) b!2582776))

(declare-fun m!2919237 () Bool)

(assert (=> d!731376 m!2919237))

(declare-fun m!2919239 () Bool)

(assert (=> b!2582775 m!2919239))

(assert (=> b!2582776 m!2918957))

(assert (=> d!731304 d!731376))

(declare-fun d!731378 () Bool)

(declare-fun res!1086193 () Bool)

(declare-fun e!1629720 () Bool)

(assert (=> d!731378 (=> res!1086193 e!1629720)))

(assert (=> d!731378 (= res!1086193 ((_ is Nil!29731) rs!798))))

(assert (=> d!731378 (= (forall!6055 rs!798 lambda!95700) e!1629720)))

(declare-fun b!2582781 () Bool)

(declare-fun e!1629721 () Bool)

(assert (=> b!2582781 (= e!1629720 e!1629721)))

(declare-fun res!1086194 () Bool)

(assert (=> b!2582781 (=> (not res!1086194) (not e!1629721))))

(declare-fun dynLambda!12559 (Int Rule!8826) Bool)

(assert (=> b!2582781 (= res!1086194 (dynLambda!12559 lambda!95700 (h!35151 rs!798)))))

(declare-fun b!2582782 () Bool)

(assert (=> b!2582782 (= e!1629721 (forall!6055 (t!211794 rs!798) lambda!95700))))

(assert (= (and d!731378 (not res!1086193)) b!2582781))

(assert (= (and b!2582781 res!1086194) b!2582782))

(declare-fun b_lambda!76635 () Bool)

(assert (=> (not b_lambda!76635) (not b!2582781)))

(declare-fun m!2919241 () Bool)

(assert (=> b!2582781 m!2919241))

(declare-fun m!2919243 () Bool)

(assert (=> b!2582782 m!2919243))

(assert (=> d!731304 d!731378))

(declare-fun b!2582783 () Bool)

(declare-fun e!1629722 () List!29830)

(assert (=> b!2582783 (= e!1629722 (_2!17385 (get!9369 lt!908381)))))

(declare-fun b!2582784 () Bool)

(assert (=> b!2582784 (= e!1629722 (Cons!29730 (h!35150 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (++!7303 (t!211793 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (_2!17385 (get!9369 lt!908381)))))))

(declare-fun d!731380 () Bool)

(declare-fun e!1629723 () Bool)

(assert (=> d!731380 e!1629723))

(declare-fun res!1086195 () Bool)

(assert (=> d!731380 (=> (not res!1086195) (not e!1629723))))

(declare-fun lt!908401 () List!29830)

(assert (=> d!731380 (= res!1086195 (= (content!4100 lt!908401) ((_ map or) (content!4100 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (content!4100 (_2!17385 (get!9369 lt!908381))))))))

(assert (=> d!731380 (= lt!908401 e!1629722)))

(declare-fun c!416419 () Bool)

(assert (=> d!731380 (= c!416419 ((_ is Nil!29730) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))

(assert (=> d!731380 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))) (_2!17385 (get!9369 lt!908381))) lt!908401)))

(declare-fun b!2582786 () Bool)

(assert (=> b!2582786 (= e!1629723 (or (not (= (_2!17385 (get!9369 lt!908381)) Nil!29730)) (= lt!908401 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))))))))

(declare-fun b!2582785 () Bool)

(declare-fun res!1086196 () Bool)

(assert (=> b!2582785 (=> (not res!1086196) (not e!1629723))))

(assert (=> b!2582785 (= res!1086196 (= (size!23048 lt!908401) (+ (size!23048 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (size!23048 (_2!17385 (get!9369 lt!908381))))))))

(assert (= (and d!731380 c!416419) b!2582783))

(assert (= (and d!731380 (not c!416419)) b!2582784))

(assert (= (and d!731380 res!1086195) b!2582785))

(assert (= (and b!2582785 res!1086196) b!2582786))

(declare-fun m!2919245 () Bool)

(assert (=> b!2582784 m!2919245))

(declare-fun m!2919247 () Bool)

(assert (=> d!731380 m!2919247))

(assert (=> d!731380 m!2919137))

(declare-fun m!2919249 () Bool)

(assert (=> d!731380 m!2919249))

(declare-fun m!2919251 () Bool)

(assert (=> d!731380 m!2919251))

(declare-fun m!2919253 () Bool)

(assert (=> b!2582785 m!2919253))

(assert (=> b!2582785 m!2919137))

(declare-fun m!2919255 () Bool)

(assert (=> b!2582785 m!2919255))

(assert (=> b!2582785 m!2919107))

(assert (=> b!2582638 d!731380))

(declare-fun d!731382 () Bool)

(assert (=> d!731382 (= (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))) (list!11237 (c!416335 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))

(declare-fun bs!471543 () Bool)

(assert (= bs!471543 d!731382))

(declare-fun m!2919257 () Bool)

(assert (=> bs!471543 m!2919257))

(assert (=> b!2582638 d!731382))

(declare-fun d!731384 () Bool)

(declare-fun lt!908402 () BalanceConc!18172)

(assert (=> d!731384 (= (list!11235 lt!908402) (originalCharacters!5279 (_1!17385 (get!9369 lt!908381))))))

(assert (=> d!731384 (= lt!908402 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381))))) (value!145868 (_1!17385 (get!9369 lt!908381)))))))

(assert (=> d!731384 (= (charsOf!2842 (_1!17385 (get!9369 lt!908381))) lt!908402)))

(declare-fun b_lambda!76637 () Bool)

(assert (=> (not b_lambda!76637) (not d!731384)))

(declare-fun t!211870 () Bool)

(declare-fun tb!140513 () Bool)

(assert (=> (and b!2582215 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211870) tb!140513))

(declare-fun b!2582787 () Bool)

(declare-fun e!1629724 () Bool)

(declare-fun tp!819869 () Bool)

(assert (=> b!2582787 (= e!1629724 (and (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381))))) (value!145868 (_1!17385 (get!9369 lt!908381)))))) tp!819869))))

(declare-fun result!174712 () Bool)

(assert (=> tb!140513 (= result!174712 (and (inv!40151 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381))))) (value!145868 (_1!17385 (get!9369 lt!908381))))) e!1629724))))

(assert (= tb!140513 b!2582787))

(declare-fun m!2919259 () Bool)

(assert (=> b!2582787 m!2919259))

(declare-fun m!2919261 () Bool)

(assert (=> tb!140513 m!2919261))

(assert (=> d!731384 t!211870))

(declare-fun b_and!189067 () Bool)

(assert (= b_and!189003 (and (=> t!211870 result!174712) b_and!189067)))

(declare-fun tb!140515 () Bool)

(declare-fun t!211872 () Bool)

(assert (=> (and b!2582204 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211872) tb!140515))

(declare-fun result!174714 () Bool)

(assert (= result!174714 result!174712))

(assert (=> d!731384 t!211872))

(declare-fun b_and!189069 () Bool)

(assert (= b_and!189009 (and (=> t!211872 result!174714) b_and!189069)))

(declare-fun t!211874 () Bool)

(declare-fun tb!140517 () Bool)

(assert (=> (and b!2582671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211874) tb!140517))

(declare-fun result!174716 () Bool)

(assert (= result!174716 result!174712))

(assert (=> d!731384 t!211874))

(declare-fun b_and!189071 () Bool)

(assert (= b_and!189037 (and (=> t!211874 result!174716) b_and!189071)))

(declare-fun t!211876 () Bool)

(declare-fun tb!140519 () Bool)

(assert (=> (and b!2582674 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211876) tb!140519))

(declare-fun result!174718 () Bool)

(assert (= result!174718 result!174712))

(assert (=> d!731384 t!211876))

(declare-fun b_and!189073 () Bool)

(assert (= b_and!189041 (and (=> t!211876 result!174718) b_and!189073)))

(declare-fun t!211878 () Bool)

(declare-fun tb!140521 () Bool)

(assert (=> (and b!2582212 (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211878) tb!140521))

(declare-fun result!174720 () Bool)

(assert (= result!174720 result!174712))

(assert (=> d!731384 t!211878))

(declare-fun b_and!189075 () Bool)

(assert (= b_and!189007 (and (=> t!211878 result!174720) b_and!189075)))

(declare-fun t!211880 () Bool)

(declare-fun tb!140523 () Bool)

(assert (=> (and b!2582205 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!211880) tb!140523))

(declare-fun result!174722 () Bool)

(assert (= result!174722 result!174712))

(assert (=> d!731384 t!211880))

(declare-fun b_and!189077 () Bool)

(assert (= b_and!189005 (and (=> t!211880 result!174722) b_and!189077)))

(declare-fun m!2919263 () Bool)

(assert (=> d!731384 m!2919263))

(declare-fun m!2919265 () Bool)

(assert (=> d!731384 m!2919265))

(assert (=> b!2582638 d!731384))

(assert (=> b!2582638 d!731362))

(declare-fun b!2582788 () Bool)

(declare-fun e!1629728 () Bool)

(assert (=> b!2582788 (= e!1629728 (not (= (head!5854 (tail!4127 lt!908264)) (c!416336 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264))))))))

(declare-fun d!731386 () Bool)

(declare-fun e!1629726 () Bool)

(assert (=> d!731386 e!1629726))

(declare-fun c!416421 () Bool)

(assert (=> d!731386 (= c!416421 ((_ is EmptyExpr!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264))))))

(declare-fun lt!908403 () Bool)

(declare-fun e!1629731 () Bool)

(assert (=> d!731386 (= lt!908403 e!1629731)))

(declare-fun c!416422 () Bool)

(assert (=> d!731386 (= c!416422 (isEmpty!17088 (tail!4127 lt!908264)))))

(assert (=> d!731386 (validRegex!3271 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)))))

(assert (=> d!731386 (= (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)) (tail!4127 lt!908264)) lt!908403)))

(declare-fun b!2582789 () Bool)

(assert (=> b!2582789 (= e!1629731 (nullable!2562 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264))))))

(declare-fun b!2582790 () Bool)

(assert (=> b!2582790 (= e!1629731 (matchR!3590 (derivativeStep!2214 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)) (head!5854 (tail!4127 lt!908264))) (tail!4127 (tail!4127 lt!908264))))))

(declare-fun b!2582791 () Bool)

(declare-fun e!1629730 () Bool)

(assert (=> b!2582791 (= e!1629730 (not lt!908403))))

(declare-fun b!2582792 () Bool)

(declare-fun e!1629727 () Bool)

(assert (=> b!2582792 (= e!1629727 (= (head!5854 (tail!4127 lt!908264)) (c!416336 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)))))))

(declare-fun b!2582793 () Bool)

(declare-fun e!1629729 () Bool)

(assert (=> b!2582793 (= e!1629729 e!1629728)))

(declare-fun res!1086202 () Bool)

(assert (=> b!2582793 (=> res!1086202 e!1629728)))

(declare-fun call!166802 () Bool)

(assert (=> b!2582793 (= res!1086202 call!166802)))

(declare-fun b!2582794 () Bool)

(assert (=> b!2582794 (= e!1629726 e!1629730)))

(declare-fun c!416420 () Bool)

(assert (=> b!2582794 (= c!416420 ((_ is EmptyLang!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264))))))

(declare-fun b!2582795 () Bool)

(declare-fun res!1086199 () Bool)

(declare-fun e!1629725 () Bool)

(assert (=> b!2582795 (=> res!1086199 e!1629725)))

(assert (=> b!2582795 (= res!1086199 e!1629727)))

(declare-fun res!1086200 () Bool)

(assert (=> b!2582795 (=> (not res!1086200) (not e!1629727))))

(assert (=> b!2582795 (= res!1086200 lt!908403)))

(declare-fun bm!166797 () Bool)

(assert (=> bm!166797 (= call!166802 (isEmpty!17088 (tail!4127 lt!908264)))))

(declare-fun b!2582796 () Bool)

(declare-fun res!1086203 () Bool)

(assert (=> b!2582796 (=> (not res!1086203) (not e!1629727))))

(assert (=> b!2582796 (= res!1086203 (not call!166802))))

(declare-fun b!2582797 () Bool)

(declare-fun res!1086201 () Bool)

(assert (=> b!2582797 (=> res!1086201 e!1629725)))

(assert (=> b!2582797 (= res!1086201 (not ((_ is ElementMatch!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)))))))

(assert (=> b!2582797 (= e!1629730 e!1629725)))

(declare-fun b!2582798 () Bool)

(assert (=> b!2582798 (= e!1629726 (= lt!908403 call!166802))))

(declare-fun b!2582799 () Bool)

(declare-fun res!1086198 () Bool)

(assert (=> b!2582799 (=> (not res!1086198) (not e!1629727))))

(assert (=> b!2582799 (= res!1086198 (isEmpty!17088 (tail!4127 (tail!4127 lt!908264))))))

(declare-fun b!2582800 () Bool)

(assert (=> b!2582800 (= e!1629725 e!1629729)))

(declare-fun res!1086204 () Bool)

(assert (=> b!2582800 (=> (not res!1086204) (not e!1629729))))

(assert (=> b!2582800 (= res!1086204 (not lt!908403))))

(declare-fun b!2582801 () Bool)

(declare-fun res!1086197 () Bool)

(assert (=> b!2582801 (=> res!1086197 e!1629728)))

(assert (=> b!2582801 (= res!1086197 (not (isEmpty!17088 (tail!4127 (tail!4127 lt!908264)))))))

(assert (= (and d!731386 c!416422) b!2582789))

(assert (= (and d!731386 (not c!416422)) b!2582790))

(assert (= (and d!731386 c!416421) b!2582798))

(assert (= (and d!731386 (not c!416421)) b!2582794))

(assert (= (and b!2582794 c!416420) b!2582791))

(assert (= (and b!2582794 (not c!416420)) b!2582797))

(assert (= (and b!2582797 (not res!1086201)) b!2582795))

(assert (= (and b!2582795 res!1086200) b!2582796))

(assert (= (and b!2582796 res!1086203) b!2582799))

(assert (= (and b!2582799 res!1086198) b!2582792))

(assert (= (and b!2582795 (not res!1086199)) b!2582800))

(assert (= (and b!2582800 res!1086204) b!2582793))

(assert (= (and b!2582793 (not res!1086202)) b!2582801))

(assert (= (and b!2582801 (not res!1086197)) b!2582788))

(assert (= (or b!2582798 b!2582793 b!2582796) bm!166797))

(assert (=> b!2582799 m!2919061))

(declare-fun m!2919267 () Bool)

(assert (=> b!2582799 m!2919267))

(assert (=> b!2582799 m!2919267))

(declare-fun m!2919269 () Bool)

(assert (=> b!2582799 m!2919269))

(assert (=> b!2582801 m!2919061))

(assert (=> b!2582801 m!2919267))

(assert (=> b!2582801 m!2919267))

(assert (=> b!2582801 m!2919269))

(assert (=> b!2582789 m!2919067))

(declare-fun m!2919271 () Bool)

(assert (=> b!2582789 m!2919271))

(assert (=> b!2582792 m!2919061))

(declare-fun m!2919273 () Bool)

(assert (=> b!2582792 m!2919273))

(assert (=> b!2582790 m!2919061))

(assert (=> b!2582790 m!2919273))

(assert (=> b!2582790 m!2919067))

(assert (=> b!2582790 m!2919273))

(declare-fun m!2919275 () Bool)

(assert (=> b!2582790 m!2919275))

(assert (=> b!2582790 m!2919061))

(assert (=> b!2582790 m!2919267))

(assert (=> b!2582790 m!2919275))

(assert (=> b!2582790 m!2919267))

(declare-fun m!2919277 () Bool)

(assert (=> b!2582790 m!2919277))

(assert (=> b!2582788 m!2919061))

(assert (=> b!2582788 m!2919273))

(assert (=> d!731386 m!2919061))

(assert (=> d!731386 m!2919063))

(assert (=> d!731386 m!2919067))

(declare-fun m!2919279 () Bool)

(assert (=> d!731386 m!2919279))

(assert (=> bm!166797 m!2919061))

(assert (=> bm!166797 m!2919063))

(assert (=> b!2582590 d!731386))

(declare-fun b!2582822 () Bool)

(declare-fun e!1629742 () Regex!7657)

(declare-fun e!1629746 () Regex!7657)

(assert (=> b!2582822 (= e!1629742 e!1629746)))

(declare-fun c!416435 () Bool)

(assert (=> b!2582822 (= c!416435 ((_ is Star!7657) (regex!4513 rule!570)))))

(declare-fun b!2582823 () Bool)

(declare-fun e!1629744 () Regex!7657)

(declare-fun e!1629743 () Regex!7657)

(assert (=> b!2582823 (= e!1629744 e!1629743)))

(declare-fun c!416434 () Bool)

(assert (=> b!2582823 (= c!416434 ((_ is ElementMatch!7657) (regex!4513 rule!570)))))

(declare-fun b!2582824 () Bool)

(declare-fun call!166814 () Regex!7657)

(assert (=> b!2582824 (= e!1629746 (Concat!12393 call!166814 (regex!4513 rule!570)))))

(declare-fun b!2582825 () Bool)

(declare-fun call!166811 () Regex!7657)

(declare-fun call!166812 () Regex!7657)

(assert (=> b!2582825 (= e!1629742 (Union!7657 call!166811 call!166812))))

(declare-fun bm!166806 () Bool)

(declare-fun c!416436 () Bool)

(declare-fun c!416437 () Bool)

(assert (=> bm!166806 (= call!166811 (derivativeStep!2214 (ite c!416436 (regOne!15827 (regex!4513 rule!570)) (ite c!416437 (regTwo!15826 (regex!4513 rule!570)) (regOne!15826 (regex!4513 rule!570)))) (head!5854 lt!908264)))))

(declare-fun b!2582826 () Bool)

(assert (=> b!2582826 (= e!1629744 EmptyLang!7657)))

(declare-fun b!2582827 () Bool)

(assert (=> b!2582827 (= c!416437 (nullable!2562 (regOne!15826 (regex!4513 rule!570))))))

(declare-fun e!1629745 () Regex!7657)

(assert (=> b!2582827 (= e!1629746 e!1629745)))

(declare-fun bm!166807 () Bool)

(assert (=> bm!166807 (= call!166814 call!166812)))

(declare-fun b!2582828 () Bool)

(declare-fun call!166813 () Regex!7657)

(assert (=> b!2582828 (= e!1629745 (Union!7657 (Concat!12393 call!166813 (regTwo!15826 (regex!4513 rule!570))) EmptyLang!7657))))

(declare-fun b!2582829 () Bool)

(assert (=> b!2582829 (= c!416436 ((_ is Union!7657) (regex!4513 rule!570)))))

(assert (=> b!2582829 (= e!1629743 e!1629742)))

(declare-fun b!2582830 () Bool)

(assert (=> b!2582830 (= e!1629743 (ite (= (head!5854 lt!908264) (c!416336 (regex!4513 rule!570))) EmptyExpr!7657 EmptyLang!7657))))

(declare-fun d!731388 () Bool)

(declare-fun lt!908406 () Regex!7657)

(assert (=> d!731388 (validRegex!3271 lt!908406)))

(assert (=> d!731388 (= lt!908406 e!1629744)))

(declare-fun c!416433 () Bool)

(assert (=> d!731388 (= c!416433 (or ((_ is EmptyExpr!7657) (regex!4513 rule!570)) ((_ is EmptyLang!7657) (regex!4513 rule!570))))))

(assert (=> d!731388 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731388 (= (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908264)) lt!908406)))

(declare-fun bm!166808 () Bool)

(assert (=> bm!166808 (= call!166813 call!166811)))

(declare-fun b!2582831 () Bool)

(assert (=> b!2582831 (= e!1629745 (Union!7657 (Concat!12393 call!166814 (regTwo!15826 (regex!4513 rule!570))) call!166813))))

(declare-fun bm!166809 () Bool)

(assert (=> bm!166809 (= call!166812 (derivativeStep!2214 (ite c!416436 (regTwo!15827 (regex!4513 rule!570)) (ite c!416435 (reg!7986 (regex!4513 rule!570)) (regOne!15826 (regex!4513 rule!570)))) (head!5854 lt!908264)))))

(assert (= (and d!731388 c!416433) b!2582826))

(assert (= (and d!731388 (not c!416433)) b!2582823))

(assert (= (and b!2582823 c!416434) b!2582830))

(assert (= (and b!2582823 (not c!416434)) b!2582829))

(assert (= (and b!2582829 c!416436) b!2582825))

(assert (= (and b!2582829 (not c!416436)) b!2582822))

(assert (= (and b!2582822 c!416435) b!2582824))

(assert (= (and b!2582822 (not c!416435)) b!2582827))

(assert (= (and b!2582827 c!416437) b!2582831))

(assert (= (and b!2582827 (not c!416437)) b!2582828))

(assert (= (or b!2582831 b!2582828) bm!166808))

(assert (= (or b!2582824 b!2582831) bm!166807))

(assert (= (or b!2582825 bm!166807) bm!166809))

(assert (= (or b!2582825 bm!166808) bm!166806))

(assert (=> bm!166806 m!2919065))

(declare-fun m!2919281 () Bool)

(assert (=> bm!166806 m!2919281))

(declare-fun m!2919283 () Bool)

(assert (=> b!2582827 m!2919283))

(declare-fun m!2919285 () Bool)

(assert (=> d!731388 m!2919285))

(assert (=> d!731388 m!2918841))

(assert (=> bm!166809 m!2919065))

(declare-fun m!2919287 () Bool)

(assert (=> bm!166809 m!2919287))

(assert (=> b!2582590 d!731388))

(declare-fun d!731390 () Bool)

(assert (=> d!731390 (= (head!5854 lt!908264) (h!35150 lt!908264))))

(assert (=> b!2582590 d!731390))

(declare-fun d!731392 () Bool)

(assert (=> d!731392 (= (tail!4127 lt!908264) (t!211793 lt!908264))))

(assert (=> b!2582590 d!731392))

(assert (=> b!2582588 d!731390))

(declare-fun d!731394 () Bool)

(assert (=> d!731394 (= (isEmpty!17088 lt!908264) ((_ is Nil!29730) lt!908264))))

(assert (=> d!731296 d!731394))

(declare-fun bm!166816 () Bool)

(declare-fun call!166822 () Bool)

(declare-fun call!166823 () Bool)

(assert (=> bm!166816 (= call!166822 call!166823)))

(declare-fun b!2582850 () Bool)

(declare-fun e!1629767 () Bool)

(declare-fun e!1629762 () Bool)

(assert (=> b!2582850 (= e!1629767 e!1629762)))

(declare-fun res!1086215 () Bool)

(assert (=> b!2582850 (= res!1086215 (not (nullable!2562 (reg!7986 (regex!4513 rule!570)))))))

(assert (=> b!2582850 (=> (not res!1086215) (not e!1629762))))

(declare-fun b!2582851 () Bool)

(declare-fun e!1629763 () Bool)

(assert (=> b!2582851 (= e!1629763 e!1629767)))

(declare-fun c!416442 () Bool)

(assert (=> b!2582851 (= c!416442 ((_ is Star!7657) (regex!4513 rule!570)))))

(declare-fun c!416443 () Bool)

(declare-fun bm!166817 () Bool)

(assert (=> bm!166817 (= call!166823 (validRegex!3271 (ite c!416442 (reg!7986 (regex!4513 rule!570)) (ite c!416443 (regTwo!15827 (regex!4513 rule!570)) (regTwo!15826 (regex!4513 rule!570))))))))

(declare-fun b!2582852 () Bool)

(declare-fun e!1629761 () Bool)

(assert (=> b!2582852 (= e!1629761 call!166822)))

(declare-fun bm!166818 () Bool)

(declare-fun call!166821 () Bool)

(assert (=> bm!166818 (= call!166821 (validRegex!3271 (ite c!416443 (regOne!15827 (regex!4513 rule!570)) (regOne!15826 (regex!4513 rule!570)))))))

(declare-fun b!2582853 () Bool)

(declare-fun res!1086219 () Bool)

(assert (=> b!2582853 (=> (not res!1086219) (not e!1629761))))

(assert (=> b!2582853 (= res!1086219 call!166821)))

(declare-fun e!1629764 () Bool)

(assert (=> b!2582853 (= e!1629764 e!1629761)))

(declare-fun b!2582854 () Bool)

(declare-fun res!1086217 () Bool)

(declare-fun e!1629765 () Bool)

(assert (=> b!2582854 (=> res!1086217 e!1629765)))

(assert (=> b!2582854 (= res!1086217 (not ((_ is Concat!12393) (regex!4513 rule!570))))))

(assert (=> b!2582854 (= e!1629764 e!1629765)))

(declare-fun b!2582855 () Bool)

(assert (=> b!2582855 (= e!1629762 call!166823)))

(declare-fun b!2582857 () Bool)

(declare-fun e!1629766 () Bool)

(assert (=> b!2582857 (= e!1629766 call!166822)))

(declare-fun b!2582858 () Bool)

(assert (=> b!2582858 (= e!1629767 e!1629764)))

(assert (=> b!2582858 (= c!416443 ((_ is Union!7657) (regex!4513 rule!570)))))

(declare-fun d!731396 () Bool)

(declare-fun res!1086218 () Bool)

(assert (=> d!731396 (=> res!1086218 e!1629763)))

(assert (=> d!731396 (= res!1086218 ((_ is ElementMatch!7657) (regex!4513 rule!570)))))

(assert (=> d!731396 (= (validRegex!3271 (regex!4513 rule!570)) e!1629763)))

(declare-fun b!2582856 () Bool)

(assert (=> b!2582856 (= e!1629765 e!1629766)))

(declare-fun res!1086216 () Bool)

(assert (=> b!2582856 (=> (not res!1086216) (not e!1629766))))

(assert (=> b!2582856 (= res!1086216 call!166821)))

(assert (= (and d!731396 (not res!1086218)) b!2582851))

(assert (= (and b!2582851 c!416442) b!2582850))

(assert (= (and b!2582851 (not c!416442)) b!2582858))

(assert (= (and b!2582850 res!1086215) b!2582855))

(assert (= (and b!2582858 c!416443) b!2582853))

(assert (= (and b!2582858 (not c!416443)) b!2582854))

(assert (= (and b!2582853 res!1086219) b!2582852))

(assert (= (and b!2582854 (not res!1086217)) b!2582856))

(assert (= (and b!2582856 res!1086216) b!2582857))

(assert (= (or b!2582853 b!2582856) bm!166818))

(assert (= (or b!2582852 b!2582857) bm!166816))

(assert (= (or b!2582855 bm!166816) bm!166817))

(declare-fun m!2919289 () Bool)

(assert (=> b!2582850 m!2919289))

(declare-fun m!2919291 () Bool)

(assert (=> bm!166817 m!2919291))

(declare-fun m!2919293 () Bool)

(assert (=> bm!166818 m!2919293))

(assert (=> d!731296 d!731396))

(declare-fun d!731398 () Bool)

(declare-fun res!1086224 () Bool)

(declare-fun e!1629772 () Bool)

(assert (=> d!731398 (=> res!1086224 e!1629772)))

(assert (=> d!731398 (= res!1086224 ((_ is Nil!29731) rules!4580))))

(assert (=> d!731398 (= (noDuplicateTag!1683 thiss!28211 rules!4580 Nil!29733) e!1629772)))

(declare-fun b!2582863 () Bool)

(declare-fun e!1629773 () Bool)

(assert (=> b!2582863 (= e!1629772 e!1629773)))

(declare-fun res!1086225 () Bool)

(assert (=> b!2582863 (=> (not res!1086225) (not e!1629773))))

(declare-fun contains!5316 (List!29833 String!33083) Bool)

(assert (=> b!2582863 (= res!1086225 (not (contains!5316 Nil!29733 (tag!5003 (h!35151 rules!4580)))))))

(declare-fun b!2582864 () Bool)

(assert (=> b!2582864 (= e!1629773 (noDuplicateTag!1683 thiss!28211 (t!211794 rules!4580) (Cons!29733 (tag!5003 (h!35151 rules!4580)) Nil!29733)))))

(assert (= (and d!731398 (not res!1086224)) b!2582863))

(assert (= (and b!2582863 res!1086225) b!2582864))

(declare-fun m!2919295 () Bool)

(assert (=> b!2582863 m!2919295))

(declare-fun m!2919297 () Bool)

(assert (=> b!2582864 m!2919297))

(assert (=> b!2582238 d!731398))

(declare-fun d!731400 () Bool)

(assert (=> d!731400 (= (list!11235 lt!908308) (list!11237 (c!416335 lt!908308)))))

(declare-fun bs!471544 () Bool)

(assert (= bs!471544 d!731400))

(declare-fun m!2919299 () Bool)

(assert (=> bs!471544 m!2919299))

(assert (=> d!731246 d!731400))

(declare-fun b!2582865 () Bool)

(declare-fun e!1629777 () Bool)

(assert (=> b!2582865 (= e!1629777 (not (= (head!5854 (tail!4127 lt!908265)) (c!416336 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265))))))))

(declare-fun d!731402 () Bool)

(declare-fun e!1629775 () Bool)

(assert (=> d!731402 e!1629775))

(declare-fun c!416445 () Bool)

(assert (=> d!731402 (= c!416445 ((_ is EmptyExpr!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265))))))

(declare-fun lt!908407 () Bool)

(declare-fun e!1629780 () Bool)

(assert (=> d!731402 (= lt!908407 e!1629780)))

(declare-fun c!416446 () Bool)

(assert (=> d!731402 (= c!416446 (isEmpty!17088 (tail!4127 lt!908265)))))

(assert (=> d!731402 (validRegex!3271 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)))))

(assert (=> d!731402 (= (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)) (tail!4127 lt!908265)) lt!908407)))

(declare-fun b!2582866 () Bool)

(assert (=> b!2582866 (= e!1629780 (nullable!2562 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265))))))

(declare-fun b!2582867 () Bool)

(assert (=> b!2582867 (= e!1629780 (matchR!3590 (derivativeStep!2214 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)) (head!5854 (tail!4127 lt!908265))) (tail!4127 (tail!4127 lt!908265))))))

(declare-fun b!2582868 () Bool)

(declare-fun e!1629779 () Bool)

(assert (=> b!2582868 (= e!1629779 (not lt!908407))))

(declare-fun b!2582869 () Bool)

(declare-fun e!1629776 () Bool)

(assert (=> b!2582869 (= e!1629776 (= (head!5854 (tail!4127 lt!908265)) (c!416336 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)))))))

(declare-fun b!2582870 () Bool)

(declare-fun e!1629778 () Bool)

(assert (=> b!2582870 (= e!1629778 e!1629777)))

(declare-fun res!1086231 () Bool)

(assert (=> b!2582870 (=> res!1086231 e!1629777)))

(declare-fun call!166824 () Bool)

(assert (=> b!2582870 (= res!1086231 call!166824)))

(declare-fun b!2582871 () Bool)

(assert (=> b!2582871 (= e!1629775 e!1629779)))

(declare-fun c!416444 () Bool)

(assert (=> b!2582871 (= c!416444 ((_ is EmptyLang!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265))))))

(declare-fun b!2582872 () Bool)

(declare-fun res!1086228 () Bool)

(declare-fun e!1629774 () Bool)

(assert (=> b!2582872 (=> res!1086228 e!1629774)))

(assert (=> b!2582872 (= res!1086228 e!1629776)))

(declare-fun res!1086229 () Bool)

(assert (=> b!2582872 (=> (not res!1086229) (not e!1629776))))

(assert (=> b!2582872 (= res!1086229 lt!908407)))

(declare-fun bm!166819 () Bool)

(assert (=> bm!166819 (= call!166824 (isEmpty!17088 (tail!4127 lt!908265)))))

(declare-fun b!2582873 () Bool)

(declare-fun res!1086232 () Bool)

(assert (=> b!2582873 (=> (not res!1086232) (not e!1629776))))

(assert (=> b!2582873 (= res!1086232 (not call!166824))))

(declare-fun b!2582874 () Bool)

(declare-fun res!1086230 () Bool)

(assert (=> b!2582874 (=> res!1086230 e!1629774)))

(assert (=> b!2582874 (= res!1086230 (not ((_ is ElementMatch!7657) (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)))))))

(assert (=> b!2582874 (= e!1629779 e!1629774)))

(declare-fun b!2582875 () Bool)

(assert (=> b!2582875 (= e!1629775 (= lt!908407 call!166824))))

(declare-fun b!2582876 () Bool)

(declare-fun res!1086227 () Bool)

(assert (=> b!2582876 (=> (not res!1086227) (not e!1629776))))

(assert (=> b!2582876 (= res!1086227 (isEmpty!17088 (tail!4127 (tail!4127 lt!908265))))))

(declare-fun b!2582877 () Bool)

(assert (=> b!2582877 (= e!1629774 e!1629778)))

(declare-fun res!1086233 () Bool)

(assert (=> b!2582877 (=> (not res!1086233) (not e!1629778))))

(assert (=> b!2582877 (= res!1086233 (not lt!908407))))

(declare-fun b!2582878 () Bool)

(declare-fun res!1086226 () Bool)

(assert (=> b!2582878 (=> res!1086226 e!1629777)))

(assert (=> b!2582878 (= res!1086226 (not (isEmpty!17088 (tail!4127 (tail!4127 lt!908265)))))))

(assert (= (and d!731402 c!416446) b!2582866))

(assert (= (and d!731402 (not c!416446)) b!2582867))

(assert (= (and d!731402 c!416445) b!2582875))

(assert (= (and d!731402 (not c!416445)) b!2582871))

(assert (= (and b!2582871 c!416444) b!2582868))

(assert (= (and b!2582871 (not c!416444)) b!2582874))

(assert (= (and b!2582874 (not res!1086230)) b!2582872))

(assert (= (and b!2582872 res!1086229) b!2582873))

(assert (= (and b!2582873 res!1086232) b!2582876))

(assert (= (and b!2582876 res!1086227) b!2582869))

(assert (= (and b!2582872 (not res!1086228)) b!2582877))

(assert (= (and b!2582877 res!1086233) b!2582870))

(assert (= (and b!2582870 (not res!1086231)) b!2582878))

(assert (= (and b!2582878 (not res!1086226)) b!2582865))

(assert (= (or b!2582875 b!2582870 b!2582873) bm!166819))

(assert (=> b!2582876 m!2918827))

(declare-fun m!2919301 () Bool)

(assert (=> b!2582876 m!2919301))

(assert (=> b!2582876 m!2919301))

(declare-fun m!2919303 () Bool)

(assert (=> b!2582876 m!2919303))

(assert (=> b!2582878 m!2918827))

(assert (=> b!2582878 m!2919301))

(assert (=> b!2582878 m!2919301))

(assert (=> b!2582878 m!2919303))

(assert (=> b!2582866 m!2918835))

(declare-fun m!2919305 () Bool)

(assert (=> b!2582866 m!2919305))

(assert (=> b!2582869 m!2918827))

(declare-fun m!2919307 () Bool)

(assert (=> b!2582869 m!2919307))

(assert (=> b!2582867 m!2918827))

(assert (=> b!2582867 m!2919307))

(assert (=> b!2582867 m!2918835))

(assert (=> b!2582867 m!2919307))

(declare-fun m!2919309 () Bool)

(assert (=> b!2582867 m!2919309))

(assert (=> b!2582867 m!2918827))

(assert (=> b!2582867 m!2919301))

(assert (=> b!2582867 m!2919309))

(assert (=> b!2582867 m!2919301))

(declare-fun m!2919311 () Bool)

(assert (=> b!2582867 m!2919311))

(assert (=> b!2582865 m!2918827))

(assert (=> b!2582865 m!2919307))

(assert (=> d!731402 m!2918827))

(assert (=> d!731402 m!2918829))

(assert (=> d!731402 m!2918835))

(declare-fun m!2919313 () Bool)

(assert (=> d!731402 m!2919313))

(assert (=> bm!166819 m!2918827))

(assert (=> bm!166819 m!2918829))

(assert (=> b!2582325 d!731402))

(declare-fun b!2582879 () Bool)

(declare-fun e!1629781 () Regex!7657)

(declare-fun e!1629785 () Regex!7657)

(assert (=> b!2582879 (= e!1629781 e!1629785)))

(declare-fun c!416449 () Bool)

(assert (=> b!2582879 (= c!416449 ((_ is Star!7657) (regex!4513 rule!570)))))

(declare-fun b!2582880 () Bool)

(declare-fun e!1629783 () Regex!7657)

(declare-fun e!1629782 () Regex!7657)

(assert (=> b!2582880 (= e!1629783 e!1629782)))

(declare-fun c!416448 () Bool)

(assert (=> b!2582880 (= c!416448 ((_ is ElementMatch!7657) (regex!4513 rule!570)))))

(declare-fun b!2582881 () Bool)

(declare-fun call!166828 () Regex!7657)

(assert (=> b!2582881 (= e!1629785 (Concat!12393 call!166828 (regex!4513 rule!570)))))

(declare-fun b!2582882 () Bool)

(declare-fun call!166825 () Regex!7657)

(declare-fun call!166826 () Regex!7657)

(assert (=> b!2582882 (= e!1629781 (Union!7657 call!166825 call!166826))))

(declare-fun bm!166820 () Bool)

(declare-fun c!416451 () Bool)

(declare-fun c!416450 () Bool)

(assert (=> bm!166820 (= call!166825 (derivativeStep!2214 (ite c!416450 (regOne!15827 (regex!4513 rule!570)) (ite c!416451 (regTwo!15826 (regex!4513 rule!570)) (regOne!15826 (regex!4513 rule!570)))) (head!5854 lt!908265)))))

(declare-fun b!2582883 () Bool)

(assert (=> b!2582883 (= e!1629783 EmptyLang!7657)))

(declare-fun b!2582884 () Bool)

(assert (=> b!2582884 (= c!416451 (nullable!2562 (regOne!15826 (regex!4513 rule!570))))))

(declare-fun e!1629784 () Regex!7657)

(assert (=> b!2582884 (= e!1629785 e!1629784)))

(declare-fun bm!166821 () Bool)

(assert (=> bm!166821 (= call!166828 call!166826)))

(declare-fun b!2582885 () Bool)

(declare-fun call!166827 () Regex!7657)

(assert (=> b!2582885 (= e!1629784 (Union!7657 (Concat!12393 call!166827 (regTwo!15826 (regex!4513 rule!570))) EmptyLang!7657))))

(declare-fun b!2582886 () Bool)

(assert (=> b!2582886 (= c!416450 ((_ is Union!7657) (regex!4513 rule!570)))))

(assert (=> b!2582886 (= e!1629782 e!1629781)))

(declare-fun b!2582887 () Bool)

(assert (=> b!2582887 (= e!1629782 (ite (= (head!5854 lt!908265) (c!416336 (regex!4513 rule!570))) EmptyExpr!7657 EmptyLang!7657))))

(declare-fun d!731404 () Bool)

(declare-fun lt!908408 () Regex!7657)

(assert (=> d!731404 (validRegex!3271 lt!908408)))

(assert (=> d!731404 (= lt!908408 e!1629783)))

(declare-fun c!416447 () Bool)

(assert (=> d!731404 (= c!416447 (or ((_ is EmptyExpr!7657) (regex!4513 rule!570)) ((_ is EmptyLang!7657) (regex!4513 rule!570))))))

(assert (=> d!731404 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731404 (= (derivativeStep!2214 (regex!4513 rule!570) (head!5854 lt!908265)) lt!908408)))

(declare-fun bm!166822 () Bool)

(assert (=> bm!166822 (= call!166827 call!166825)))

(declare-fun b!2582888 () Bool)

(assert (=> b!2582888 (= e!1629784 (Union!7657 (Concat!12393 call!166828 (regTwo!15826 (regex!4513 rule!570))) call!166827))))

(declare-fun bm!166823 () Bool)

(assert (=> bm!166823 (= call!166826 (derivativeStep!2214 (ite c!416450 (regTwo!15827 (regex!4513 rule!570)) (ite c!416449 (reg!7986 (regex!4513 rule!570)) (regOne!15826 (regex!4513 rule!570)))) (head!5854 lt!908265)))))

(assert (= (and d!731404 c!416447) b!2582883))

(assert (= (and d!731404 (not c!416447)) b!2582880))

(assert (= (and b!2582880 c!416448) b!2582887))

(assert (= (and b!2582880 (not c!416448)) b!2582886))

(assert (= (and b!2582886 c!416450) b!2582882))

(assert (= (and b!2582886 (not c!416450)) b!2582879))

(assert (= (and b!2582879 c!416449) b!2582881))

(assert (= (and b!2582879 (not c!416449)) b!2582884))

(assert (= (and b!2582884 c!416451) b!2582888))

(assert (= (and b!2582884 (not c!416451)) b!2582885))

(assert (= (or b!2582888 b!2582885) bm!166822))

(assert (= (or b!2582881 b!2582888) bm!166821))

(assert (= (or b!2582882 bm!166821) bm!166823))

(assert (= (or b!2582882 bm!166822) bm!166820))

(assert (=> bm!166820 m!2918833))

(declare-fun m!2919315 () Bool)

(assert (=> bm!166820 m!2919315))

(assert (=> b!2582884 m!2919283))

(declare-fun m!2919317 () Bool)

(assert (=> d!731404 m!2919317))

(assert (=> d!731404 m!2918841))

(assert (=> bm!166823 m!2918833))

(declare-fun m!2919319 () Bool)

(assert (=> bm!166823 m!2919319))

(assert (=> b!2582325 d!731404))

(assert (=> b!2582325 d!731352))

(declare-fun d!731406 () Bool)

(assert (=> d!731406 (= (tail!4127 lt!908265) (t!211793 lt!908265))))

(assert (=> b!2582325 d!731406))

(declare-fun d!731408 () Bool)

(declare-fun lt!908409 () Int)

(assert (=> d!731408 (>= lt!908409 0)))

(declare-fun e!1629786 () Int)

(assert (=> d!731408 (= lt!908409 e!1629786)))

(declare-fun c!416452 () Bool)

(assert (=> d!731408 (= c!416452 ((_ is Nil!29730) (_2!17385 (get!9369 lt!908359))))))

(assert (=> d!731408 (= (size!23048 (_2!17385 (get!9369 lt!908359))) lt!908409)))

(declare-fun b!2582889 () Bool)

(assert (=> b!2582889 (= e!1629786 0)))

(declare-fun b!2582890 () Bool)

(assert (=> b!2582890 (= e!1629786 (+ 1 (size!23048 (t!211793 (_2!17385 (get!9369 lt!908359))))))))

(assert (= (and d!731408 c!416452) b!2582889))

(assert (= (and d!731408 (not c!416452)) b!2582890))

(declare-fun m!2919321 () Bool)

(assert (=> b!2582890 m!2919321))

(assert (=> b!2582582 d!731408))

(declare-fun d!731410 () Bool)

(assert (=> d!731410 (= (get!9369 lt!908359) (v!32022 lt!908359))))

(assert (=> b!2582582 d!731410))

(assert (=> b!2582582 d!731364))

(assert (=> b!2582592 d!731390))

(declare-fun d!731412 () Bool)

(assert (=> d!731412 (= (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))) (list!11237 (c!416335 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun bs!471545 () Bool)

(assert (= bs!471545 d!731412))

(declare-fun m!2919323 () Bool)

(assert (=> bs!471545 m!2919323))

(assert (=> b!2582585 d!731412))

(declare-fun d!731414 () Bool)

(declare-fun lt!908410 () BalanceConc!18172)

(assert (=> d!731414 (= (list!11235 lt!908410) (originalCharacters!5279 (_1!17385 (get!9369 lt!908359))))))

(assert (=> d!731414 (= lt!908410 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))) (value!145868 (_1!17385 (get!9369 lt!908359)))))))

(assert (=> d!731414 (= (charsOf!2842 (_1!17385 (get!9369 lt!908359))) lt!908410)))

(declare-fun b_lambda!76639 () Bool)

(assert (=> (not b_lambda!76639) (not d!731414)))

(declare-fun t!211882 () Bool)

(declare-fun tb!140525 () Bool)

(assert (=> (and b!2582205 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211882) tb!140525))

(declare-fun b!2582891 () Bool)

(declare-fun e!1629787 () Bool)

(declare-fun tp!819870 () Bool)

(assert (=> b!2582891 (= e!1629787 (and (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))) (value!145868 (_1!17385 (get!9369 lt!908359)))))) tp!819870))))

(declare-fun result!174724 () Bool)

(assert (=> tb!140525 (= result!174724 (and (inv!40151 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))) (value!145868 (_1!17385 (get!9369 lt!908359))))) e!1629787))))

(assert (= tb!140525 b!2582891))

(declare-fun m!2919325 () Bool)

(assert (=> b!2582891 m!2919325))

(declare-fun m!2919327 () Bool)

(assert (=> tb!140525 m!2919327))

(assert (=> d!731414 t!211882))

(declare-fun b_and!189079 () Bool)

(assert (= b_and!189077 (and (=> t!211882 result!174724) b_and!189079)))

(declare-fun t!211884 () Bool)

(declare-fun tb!140527 () Bool)

(assert (=> (and b!2582212 (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211884) tb!140527))

(declare-fun result!174726 () Bool)

(assert (= result!174726 result!174724))

(assert (=> d!731414 t!211884))

(declare-fun b_and!189081 () Bool)

(assert (= b_and!189075 (and (=> t!211884 result!174726) b_and!189081)))

(declare-fun tb!140529 () Bool)

(declare-fun t!211886 () Bool)

(assert (=> (and b!2582674 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211886) tb!140529))

(declare-fun result!174728 () Bool)

(assert (= result!174728 result!174724))

(assert (=> d!731414 t!211886))

(declare-fun b_and!189083 () Bool)

(assert (= b_and!189073 (and (=> t!211886 result!174728) b_and!189083)))

(declare-fun t!211888 () Bool)

(declare-fun tb!140531 () Bool)

(assert (=> (and b!2582204 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211888) tb!140531))

(declare-fun result!174730 () Bool)

(assert (= result!174730 result!174724))

(assert (=> d!731414 t!211888))

(declare-fun b_and!189085 () Bool)

(assert (= b_and!189069 (and (=> t!211888 result!174730) b_and!189085)))

(declare-fun tb!140533 () Bool)

(declare-fun t!211890 () Bool)

(assert (=> (and b!2582215 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211890) tb!140533))

(declare-fun result!174732 () Bool)

(assert (= result!174732 result!174724))

(assert (=> d!731414 t!211890))

(declare-fun b_and!189087 () Bool)

(assert (= b_and!189067 (and (=> t!211890 result!174732) b_and!189087)))

(declare-fun tb!140535 () Bool)

(declare-fun t!211892 () Bool)

(assert (=> (and b!2582671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!211892) tb!140535))

(declare-fun result!174734 () Bool)

(assert (= result!174734 result!174724))

(assert (=> d!731414 t!211892))

(declare-fun b_and!189089 () Bool)

(assert (= b_and!189071 (and (=> t!211892 result!174734) b_and!189089)))

(declare-fun m!2919329 () Bool)

(assert (=> d!731414 m!2919329))

(declare-fun m!2919331 () Bool)

(assert (=> d!731414 m!2919331))

(assert (=> b!2582585 d!731414))

(assert (=> b!2582585 d!731410))

(declare-fun bs!471546 () Bool)

(declare-fun d!731416 () Bool)

(assert (= bs!471546 (and d!731416 d!731350)))

(declare-fun lambda!95712 () Int)

(assert (=> bs!471546 (= (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570))) (= lambda!95712 lambda!95708))))

(assert (=> d!731416 true))

(assert (=> d!731416 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (dynLambda!12558 order!15831 lambda!95712))))

(assert (=> d!731416 (= (equivClasses!1783 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (Forall2!765 lambda!95712))))

(declare-fun bs!471547 () Bool)

(assert (= bs!471547 d!731416))

(declare-fun m!2919333 () Bool)

(assert (=> bs!471547 m!2919333))

(assert (=> b!2582241 d!731416))

(assert (=> b!2582327 d!731352))

(declare-fun d!731418 () Bool)

(assert (=> d!731418 (= (list!11235 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))) (list!11237 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(declare-fun bs!471548 () Bool)

(assert (= bs!471548 d!731418))

(declare-fun m!2919335 () Bool)

(assert (=> bs!471548 m!2919335))

(assert (=> b!2582502 d!731418))

(declare-fun b!2582892 () Bool)

(declare-fun res!1086236 () Bool)

(declare-fun e!1629789 () Bool)

(assert (=> b!2582892 (=> (not res!1086236) (not e!1629789))))

(declare-fun lt!908413 () Option!5928)

(assert (=> b!2582892 (= res!1086236 (= (value!145868 (_1!17385 (get!9369 lt!908413))) (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908413)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908413)))))))))

(declare-fun b!2582893 () Bool)

(assert (=> b!2582893 (= e!1629789 (= (size!23047 (_1!17385 (get!9369 lt!908413))) (size!23048 (originalCharacters!5279 (_1!17385 (get!9369 lt!908413))))))))

(declare-fun b!2582894 () Bool)

(declare-fun res!1086239 () Bool)

(assert (=> b!2582894 (=> (not res!1086239) (not e!1629789))))

(assert (=> b!2582894 (= res!1086239 (< (size!23048 (_2!17385 (get!9369 lt!908413))) (size!23048 input!3654)))))

(declare-fun b!2582895 () Bool)

(declare-fun e!1629791 () Option!5928)

(assert (=> b!2582895 (= e!1629791 None!5927)))

(declare-fun b!2582897 () Bool)

(declare-fun e!1629790 () Bool)

(assert (=> b!2582897 (= e!1629790 e!1629789)))

(declare-fun res!1086240 () Bool)

(assert (=> b!2582897 (=> (not res!1086240) (not e!1629789))))

(assert (=> b!2582897 (= res!1086240 (matchR!3590 (regex!4513 (h!35151 rules!4580)) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908413))))))))

(declare-fun b!2582898 () Bool)

(declare-fun lt!908411 () tuple2!29690)

(assert (=> b!2582898 (= e!1629791 (Some!5927 (tuple2!29687 (Token!8497 (apply!7018 (transformation!4513 (h!35151 rules!4580)) (seqFromList!3153 (_1!17387 lt!908411))) (h!35151 rules!4580) (size!23050 (seqFromList!3153 (_1!17387 lt!908411))) (_1!17387 lt!908411)) (_2!17387 lt!908411))))))

(declare-fun lt!908415 () Unit!43570)

(assert (=> b!2582898 (= lt!908415 (longestMatchIsAcceptedByMatchOrIsEmpty!722 (regex!4513 (h!35151 rules!4580)) input!3654))))

(declare-fun res!1086237 () Bool)

(assert (=> b!2582898 (= res!1086237 (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 (h!35151 rules!4580)) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun e!1629788 () Bool)

(assert (=> b!2582898 (=> res!1086237 e!1629788)))

(assert (=> b!2582898 e!1629788))

(declare-fun lt!908414 () Unit!43570)

(assert (=> b!2582898 (= lt!908414 lt!908415)))

(declare-fun lt!908412 () Unit!43570)

(assert (=> b!2582898 (= lt!908412 (lemmaSemiInverse!1100 (transformation!4513 (h!35151 rules!4580)) (seqFromList!3153 (_1!17387 lt!908411))))))

(declare-fun d!731420 () Bool)

(assert (=> d!731420 e!1629790))

(declare-fun res!1086234 () Bool)

(assert (=> d!731420 (=> res!1086234 e!1629790)))

(assert (=> d!731420 (= res!1086234 (isEmpty!17089 lt!908413))))

(assert (=> d!731420 (= lt!908413 e!1629791)))

(declare-fun c!416453 () Bool)

(assert (=> d!731420 (= c!416453 (isEmpty!17088 (_1!17387 lt!908411)))))

(assert (=> d!731420 (= lt!908411 (findLongestMatch!678 (regex!4513 (h!35151 rules!4580)) input!3654))))

(assert (=> d!731420 (ruleValid!1519 thiss!28211 (h!35151 rules!4580))))

(assert (=> d!731420 (= (maxPrefixOneRule!1448 thiss!28211 (h!35151 rules!4580) input!3654) lt!908413)))

(declare-fun b!2582896 () Bool)

(declare-fun res!1086235 () Bool)

(assert (=> b!2582896 (=> (not res!1086235) (not e!1629789))))

(assert (=> b!2582896 (= res!1086235 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908413)))) (_2!17385 (get!9369 lt!908413))) input!3654))))

(declare-fun b!2582899 () Bool)

(assert (=> b!2582899 (= e!1629788 (matchR!3590 (regex!4513 (h!35151 rules!4580)) (_1!17387 (findLongestMatchInner!749 (regex!4513 (h!35151 rules!4580)) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun b!2582900 () Bool)

(declare-fun res!1086238 () Bool)

(assert (=> b!2582900 (=> (not res!1086238) (not e!1629789))))

(assert (=> b!2582900 (= res!1086238 (= (rule!6871 (_1!17385 (get!9369 lt!908413))) (h!35151 rules!4580)))))

(assert (= (and d!731420 c!416453) b!2582895))

(assert (= (and d!731420 (not c!416453)) b!2582898))

(assert (= (and b!2582898 (not res!1086237)) b!2582899))

(assert (= (and d!731420 (not res!1086234)) b!2582897))

(assert (= (and b!2582897 res!1086240) b!2582896))

(assert (= (and b!2582896 res!1086235) b!2582894))

(assert (= (and b!2582894 res!1086239) b!2582900))

(assert (= (and b!2582900 res!1086238) b!2582892))

(assert (= (and b!2582892 res!1086236) b!2582893))

(declare-fun m!2919337 () Bool)

(assert (=> b!2582892 m!2919337))

(declare-fun m!2919339 () Bool)

(assert (=> b!2582892 m!2919339))

(assert (=> b!2582892 m!2919339))

(declare-fun m!2919341 () Bool)

(assert (=> b!2582892 m!2919341))

(assert (=> b!2582894 m!2919337))

(declare-fun m!2919343 () Bool)

(assert (=> b!2582894 m!2919343))

(assert (=> b!2582894 m!2919043))

(assert (=> b!2582893 m!2919337))

(declare-fun m!2919345 () Bool)

(assert (=> b!2582893 m!2919345))

(assert (=> b!2582899 m!2919111))

(assert (=> b!2582899 m!2919043))

(assert (=> b!2582899 m!2919111))

(assert (=> b!2582899 m!2919043))

(declare-fun m!2919347 () Bool)

(assert (=> b!2582899 m!2919347))

(declare-fun m!2919349 () Bool)

(assert (=> b!2582899 m!2919349))

(assert (=> b!2582898 m!2919111))

(assert (=> b!2582898 m!2919043))

(assert (=> b!2582898 m!2919347))

(declare-fun m!2919351 () Bool)

(assert (=> b!2582898 m!2919351))

(declare-fun m!2919353 () Bool)

(assert (=> b!2582898 m!2919353))

(declare-fun m!2919355 () Bool)

(assert (=> b!2582898 m!2919355))

(declare-fun m!2919357 () Bool)

(assert (=> b!2582898 m!2919357))

(assert (=> b!2582898 m!2919111))

(assert (=> b!2582898 m!2919043))

(assert (=> b!2582898 m!2919355))

(assert (=> b!2582898 m!2919355))

(declare-fun m!2919359 () Bool)

(assert (=> b!2582898 m!2919359))

(assert (=> b!2582898 m!2919355))

(declare-fun m!2919361 () Bool)

(assert (=> b!2582898 m!2919361))

(assert (=> b!2582900 m!2919337))

(declare-fun m!2919363 () Bool)

(assert (=> d!731420 m!2919363))

(declare-fun m!2919365 () Bool)

(assert (=> d!731420 m!2919365))

(declare-fun m!2919367 () Bool)

(assert (=> d!731420 m!2919367))

(declare-fun m!2919369 () Bool)

(assert (=> d!731420 m!2919369))

(assert (=> b!2582896 m!2919337))

(declare-fun m!2919371 () Bool)

(assert (=> b!2582896 m!2919371))

(assert (=> b!2582896 m!2919371))

(declare-fun m!2919373 () Bool)

(assert (=> b!2582896 m!2919373))

(assert (=> b!2582896 m!2919373))

(declare-fun m!2919375 () Bool)

(assert (=> b!2582896 m!2919375))

(assert (=> b!2582897 m!2919337))

(assert (=> b!2582897 m!2919371))

(assert (=> b!2582897 m!2919371))

(assert (=> b!2582897 m!2919373))

(assert (=> b!2582897 m!2919373))

(declare-fun m!2919377 () Bool)

(assert (=> b!2582897 m!2919377))

(assert (=> bm!166784 d!731420))

(declare-fun b!2582929 () Bool)

(declare-fun e!1629806 () Bool)

(assert (=> b!2582929 (= e!1629806 true)))

(declare-fun d!731422 () Bool)

(assert (=> d!731422 e!1629806))

(assert (= d!731422 b!2582929))

(declare-fun order!15833 () Int)

(declare-fun lambda!95715 () Int)

(declare-fun dynLambda!12561 (Int Int) Int)

(assert (=> b!2582929 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 rule!570))) (dynLambda!12561 order!15833 lambda!95715))))

(declare-fun order!15835 () Int)

(declare-fun dynLambda!12562 (Int Int) Int)

(assert (=> b!2582929 (< (dynLambda!12562 order!15835 (toChars!6258 (transformation!4513 rule!570))) (dynLambda!12561 order!15833 lambda!95715))))

(assert (=> d!731422 (= (list!11235 (dynLambda!12553 (toChars!6258 (transformation!4513 rule!570)) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 (_1!17387 lt!908379))))) (list!11235 (seqFromList!3153 (_1!17387 lt!908379))))))

(declare-fun lt!908464 () Unit!43570)

(declare-fun ForallOf!504 (Int BalanceConc!18172) Unit!43570)

(assert (=> d!731422 (= lt!908464 (ForallOf!504 lambda!95715 (seqFromList!3153 (_1!17387 lt!908379))))))

(assert (=> d!731422 (= (lemmaSemiInverse!1100 (transformation!4513 rule!570) (seqFromList!3153 (_1!17387 lt!908379))) lt!908464)))

(declare-fun b_lambda!76641 () Bool)

(assert (=> (not b_lambda!76641) (not d!731422)))

(declare-fun tb!140537 () Bool)

(declare-fun t!211894 () Bool)

(assert (=> (and b!2582671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 rule!570))) t!211894) tb!140537))

(declare-fun tp!819871 () Bool)

(declare-fun e!1629807 () Bool)

(declare-fun b!2582930 () Bool)

(assert (=> b!2582930 (= e!1629807 (and (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 rule!570)) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 (_1!17387 lt!908379)))))) tp!819871))))

(declare-fun result!174736 () Bool)

(assert (=> tb!140537 (= result!174736 (and (inv!40151 (dynLambda!12553 (toChars!6258 (transformation!4513 rule!570)) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 (_1!17387 lt!908379))))) e!1629807))))

(assert (= tb!140537 b!2582930))

(declare-fun m!2919379 () Bool)

(assert (=> b!2582930 m!2919379))

(declare-fun m!2919381 () Bool)

(assert (=> tb!140537 m!2919381))

(assert (=> d!731422 t!211894))

(declare-fun b_and!189091 () Bool)

(assert (= b_and!189089 (and (=> t!211894 result!174736) b_and!189091)))

(declare-fun t!211896 () Bool)

(declare-fun tb!140539 () Bool)

(assert (=> (and b!2582215 (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 rule!570))) t!211896) tb!140539))

(declare-fun result!174738 () Bool)

(assert (= result!174738 result!174736))

(assert (=> d!731422 t!211896))

(declare-fun b_and!189093 () Bool)

(assert (= b_and!189087 (and (=> t!211896 result!174738) b_and!189093)))

(declare-fun tb!140541 () Bool)

(declare-fun t!211898 () Bool)

(assert (=> (and b!2582674 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 rule!570))) t!211898) tb!140541))

(declare-fun result!174740 () Bool)

(assert (= result!174740 result!174736))

(assert (=> d!731422 t!211898))

(declare-fun b_and!189095 () Bool)

(assert (= b_and!189083 (and (=> t!211898 result!174740) b_and!189095)))

(declare-fun tb!140543 () Bool)

(declare-fun t!211900 () Bool)

(assert (=> (and b!2582212 (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 rule!570))) t!211900) tb!140543))

(declare-fun result!174742 () Bool)

(assert (= result!174742 result!174736))

(assert (=> d!731422 t!211900))

(declare-fun b_and!189097 () Bool)

(assert (= b_and!189081 (and (=> t!211900 result!174742) b_and!189097)))

(declare-fun tb!140545 () Bool)

(declare-fun t!211902 () Bool)

(assert (=> (and b!2582205 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 rule!570))) t!211902) tb!140545))

(declare-fun result!174744 () Bool)

(assert (= result!174744 result!174736))

(assert (=> d!731422 t!211902))

(declare-fun b_and!189099 () Bool)

(assert (= b_and!189079 (and (=> t!211902 result!174744) b_and!189099)))

(declare-fun tb!140547 () Bool)

(declare-fun t!211904 () Bool)

(assert (=> (and b!2582204 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 rule!570))) t!211904) tb!140547))

(declare-fun result!174746 () Bool)

(assert (= result!174746 result!174736))

(assert (=> d!731422 t!211904))

(declare-fun b_and!189101 () Bool)

(assert (= b_and!189085 (and (=> t!211904 result!174746) b_and!189101)))

(declare-fun b_lambda!76643 () Bool)

(assert (=> (not b_lambda!76643) (not d!731422)))

(declare-fun tb!140549 () Bool)

(declare-fun t!211906 () Bool)

(assert (=> (and b!2582205 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570))) t!211906) tb!140549))

(declare-fun result!174748 () Bool)

(assert (=> tb!140549 (= result!174748 (inv!21 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 (_1!17387 lt!908379)))))))

(declare-fun m!2919383 () Bool)

(assert (=> tb!140549 m!2919383))

(assert (=> d!731422 t!211906))

(declare-fun b_and!189103 () Bool)

(assert (= b_and!189065 (and (=> t!211906 result!174748) b_and!189103)))

(declare-fun t!211908 () Bool)

(declare-fun tb!140551 () Bool)

(assert (=> (and b!2582215 (= (toValue!6399 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))) t!211908) tb!140551))

(declare-fun result!174750 () Bool)

(assert (= result!174750 result!174748))

(assert (=> d!731422 t!211908))

(declare-fun b_and!189105 () Bool)

(assert (= b_and!189055 (and (=> t!211908 result!174750) b_and!189105)))

(declare-fun t!211910 () Bool)

(declare-fun tb!140553 () Bool)

(assert (=> (and b!2582671 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 rule!570))) t!211910) tb!140553))

(declare-fun result!174752 () Bool)

(assert (= result!174752 result!174748))

(assert (=> d!731422 t!211910))

(declare-fun b_and!189107 () Bool)

(assert (= b_and!189057 (and (=> t!211910 result!174752) b_and!189107)))

(declare-fun tb!140555 () Bool)

(declare-fun t!211912 () Bool)

(assert (=> (and b!2582212 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570))) t!211912) tb!140555))

(declare-fun result!174754 () Bool)

(assert (= result!174754 result!174748))

(assert (=> d!731422 t!211912))

(declare-fun b_and!189109 () Bool)

(assert (= b_and!189059 (and (=> t!211912 result!174754) b_and!189109)))

(declare-fun t!211914 () Bool)

(declare-fun tb!140557 () Bool)

(assert (=> (and b!2582674 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 rule!570))) t!211914) tb!140557))

(declare-fun result!174756 () Bool)

(assert (= result!174756 result!174748))

(assert (=> d!731422 t!211914))

(declare-fun b_and!189111 () Bool)

(assert (= b_and!189063 (and (=> t!211914 result!174756) b_and!189111)))

(declare-fun t!211916 () Bool)

(declare-fun tb!140559 () Bool)

(assert (=> (and b!2582204 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570))) t!211916) tb!140559))

(declare-fun result!174758 () Bool)

(assert (= result!174758 result!174748))

(assert (=> d!731422 t!211916))

(declare-fun b_and!189113 () Bool)

(assert (= b_and!189061 (and (=> t!211916 result!174758) b_and!189113)))

(assert (=> d!731422 m!2919121))

(declare-fun m!2919385 () Bool)

(assert (=> d!731422 m!2919385))

(declare-fun m!2919387 () Bool)

(assert (=> d!731422 m!2919387))

(declare-fun m!2919389 () Bool)

(assert (=> d!731422 m!2919389))

(assert (=> d!731422 m!2919121))

(declare-fun m!2919391 () Bool)

(assert (=> d!731422 m!2919391))

(assert (=> d!731422 m!2919121))

(declare-fun m!2919393 () Bool)

(assert (=> d!731422 m!2919393))

(assert (=> d!731422 m!2919391))

(assert (=> d!731422 m!2919387))

(assert (=> b!2582640 d!731422))

(declare-fun d!731424 () Bool)

(assert (=> d!731424 (= (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))) ((_ is Nil!29730) (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(assert (=> b!2582640 d!731424))

(assert (=> b!2582640 d!731364))

(declare-fun d!731426 () Bool)

(assert (=> d!731426 (= (seqFromList!3153 (_1!17387 lt!908379)) (fromListB!1424 (_1!17387 lt!908379)))))

(declare-fun bs!471549 () Bool)

(assert (= bs!471549 d!731426))

(declare-fun m!2919395 () Bool)

(assert (=> bs!471549 m!2919395))

(assert (=> b!2582640 d!731426))

(declare-fun d!731428 () Bool)

(declare-fun e!1629815 () Bool)

(assert (=> d!731428 e!1629815))

(declare-fun res!1086247 () Bool)

(assert (=> d!731428 (=> res!1086247 e!1629815)))

(assert (=> d!731428 (= res!1086247 (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun lt!908477 () Unit!43570)

(declare-fun choose!15223 (Regex!7657 List!29830) Unit!43570)

(assert (=> d!731428 (= lt!908477 (choose!15223 (regex!4513 rule!570) input!3654))))

(assert (=> d!731428 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731428 (= (longestMatchIsAcceptedByMatchOrIsEmpty!722 (regex!4513 rule!570) input!3654) lt!908477)))

(declare-fun b!2582937 () Bool)

(assert (=> b!2582937 (= e!1629815 (matchR!3590 (regex!4513 rule!570) (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(assert (= (and d!731428 (not res!1086247)) b!2582937))

(assert (=> d!731428 m!2919111))

(assert (=> d!731428 m!2919043))

(assert (=> d!731428 m!2919113))

(assert (=> d!731428 m!2919117))

(assert (=> d!731428 m!2919043))

(assert (=> d!731428 m!2919111))

(assert (=> d!731428 m!2918841))

(declare-fun m!2919397 () Bool)

(assert (=> d!731428 m!2919397))

(assert (=> b!2582937 m!2919111))

(assert (=> b!2582937 m!2919043))

(assert (=> b!2582937 m!2919111))

(assert (=> b!2582937 m!2919043))

(assert (=> b!2582937 m!2919113))

(assert (=> b!2582937 m!2919115))

(assert (=> b!2582640 d!731428))

(declare-fun d!731430 () Bool)

(declare-fun lt!908508 () Int)

(assert (=> d!731430 (= lt!908508 (size!23048 (list!11235 (seqFromList!3153 (_1!17387 lt!908379)))))))

(declare-fun size!23051 (Conc!9279) Int)

(assert (=> d!731430 (= lt!908508 (size!23051 (c!416335 (seqFromList!3153 (_1!17387 lt!908379)))))))

(assert (=> d!731430 (= (size!23050 (seqFromList!3153 (_1!17387 lt!908379))) lt!908508)))

(declare-fun bs!471550 () Bool)

(assert (= bs!471550 d!731430))

(assert (=> bs!471550 m!2919121))

(assert (=> bs!471550 m!2919385))

(assert (=> bs!471550 m!2919385))

(declare-fun m!2919437 () Bool)

(assert (=> bs!471550 m!2919437))

(declare-fun m!2919439 () Bool)

(assert (=> bs!471550 m!2919439))

(assert (=> b!2582640 d!731430))

(declare-fun d!731432 () Bool)

(assert (=> d!731432 (= (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 (_1!17387 lt!908379))) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 (_1!17387 lt!908379))))))

(declare-fun b_lambda!76645 () Bool)

(assert (=> (not b_lambda!76645) (not d!731432)))

(assert (=> d!731432 t!211914))

(declare-fun b_and!189115 () Bool)

(assert (= b_and!189111 (and (=> t!211914 result!174756) b_and!189115)))

(assert (=> d!731432 t!211908))

(declare-fun b_and!189117 () Bool)

(assert (= b_and!189105 (and (=> t!211908 result!174750) b_and!189117)))

(assert (=> d!731432 t!211910))

(declare-fun b_and!189119 () Bool)

(assert (= b_and!189107 (and (=> t!211910 result!174752) b_and!189119)))

(assert (=> d!731432 t!211916))

(declare-fun b_and!189121 () Bool)

(assert (= b_and!189113 (and (=> t!211916 result!174758) b_and!189121)))

(assert (=> d!731432 t!211906))

(declare-fun b_and!189123 () Bool)

(assert (= b_and!189103 (and (=> t!211906 result!174748) b_and!189123)))

(assert (=> d!731432 t!211912))

(declare-fun b_and!189125 () Bool)

(assert (= b_and!189109 (and (=> t!211912 result!174754) b_and!189125)))

(assert (=> d!731432 m!2919121))

(assert (=> d!731432 m!2919391))

(assert (=> b!2582640 d!731432))

(declare-fun d!731436 () Bool)

(declare-fun lt!908511 () Int)

(assert (=> d!731436 (>= lt!908511 0)))

(declare-fun e!1629826 () Int)

(assert (=> d!731436 (= lt!908511 e!1629826)))

(declare-fun c!416475 () Bool)

(assert (=> d!731436 (= c!416475 ((_ is Nil!29730) Nil!29730))))

(assert (=> d!731436 (= (size!23048 Nil!29730) lt!908511)))

(declare-fun b!2582956 () Bool)

(assert (=> b!2582956 (= e!1629826 0)))

(declare-fun b!2582957 () Bool)

(assert (=> b!2582957 (= e!1629826 (+ 1 (size!23048 (t!211793 Nil!29730))))))

(assert (= (and d!731436 c!416475) b!2582956))

(assert (= (and d!731436 (not c!416475)) b!2582957))

(declare-fun m!2919455 () Bool)

(assert (=> b!2582957 m!2919455))

(assert (=> b!2582640 d!731436))

(declare-fun b!2583151 () Bool)

(declare-fun c!416535 () Bool)

(declare-fun call!166889 () Bool)

(assert (=> b!2583151 (= c!416535 call!166889)))

(declare-fun lt!908626 () Unit!43570)

(declare-fun lt!908643 () Unit!43570)

(assert (=> b!2583151 (= lt!908626 lt!908643)))

(declare-fun lt!908647 () C!15472)

(declare-fun lt!908635 () List!29830)

(assert (=> b!2583151 (= (++!7303 (++!7303 Nil!29730 (Cons!29730 lt!908647 Nil!29730)) lt!908635) input!3654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!815 (List!29830 C!15472 List!29830 List!29830) Unit!43570)

(assert (=> b!2583151 (= lt!908643 (lemmaMoveElementToOtherListKeepsConcatEq!815 Nil!29730 lt!908647 lt!908635 input!3654))))

(assert (=> b!2583151 (= lt!908635 (tail!4127 input!3654))))

(assert (=> b!2583151 (= lt!908647 (head!5854 input!3654))))

(declare-fun lt!908632 () Unit!43570)

(declare-fun lt!908629 () Unit!43570)

(assert (=> b!2583151 (= lt!908632 lt!908629)))

(declare-fun getSuffix!1184 (List!29830 List!29830) List!29830)

(assert (=> b!2583151 (isPrefix!2413 (++!7303 Nil!29730 (Cons!29730 (head!5854 (getSuffix!1184 input!3654 Nil!29730)) Nil!29730)) input!3654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!403 (List!29830 List!29830) Unit!43570)

(assert (=> b!2583151 (= lt!908629 (lemmaAddHeadSuffixToPrefixStillPrefix!403 Nil!29730 input!3654))))

(declare-fun lt!908649 () Unit!43570)

(declare-fun lt!908633 () Unit!43570)

(assert (=> b!2583151 (= lt!908649 lt!908633)))

(assert (=> b!2583151 (= lt!908633 (lemmaAddHeadSuffixToPrefixStillPrefix!403 Nil!29730 input!3654))))

(declare-fun lt!908642 () List!29830)

(assert (=> b!2583151 (= lt!908642 (++!7303 Nil!29730 (Cons!29730 (head!5854 input!3654) Nil!29730)))))

(declare-fun lt!908625 () Unit!43570)

(declare-fun e!1629939 () Unit!43570)

(assert (=> b!2583151 (= lt!908625 e!1629939)))

(declare-fun c!416537 () Bool)

(assert (=> b!2583151 (= c!416537 (= (size!23048 Nil!29730) (size!23048 input!3654)))))

(declare-fun lt!908651 () Unit!43570)

(declare-fun lt!908639 () Unit!43570)

(assert (=> b!2583151 (= lt!908651 lt!908639)))

(assert (=> b!2583151 (<= (size!23048 Nil!29730) (size!23048 input!3654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!206 (List!29830 List!29830) Unit!43570)

(assert (=> b!2583151 (= lt!908639 (lemmaIsPrefixThenSmallerEqSize!206 Nil!29730 input!3654))))

(declare-fun e!1629935 () tuple2!29690)

(declare-fun e!1629937 () tuple2!29690)

(assert (=> b!2583151 (= e!1629935 e!1629937)))

(declare-fun bm!166880 () Bool)

(declare-fun call!166890 () List!29830)

(assert (=> bm!166880 (= call!166890 (tail!4127 input!3654))))

(declare-fun bm!166881 () Bool)

(declare-fun call!166892 () C!15472)

(assert (=> bm!166881 (= call!166892 (head!5854 input!3654))))

(declare-fun bm!166882 () Bool)

(declare-fun call!166885 () Bool)

(assert (=> bm!166882 (= call!166885 (isPrefix!2413 input!3654 input!3654))))

(declare-fun b!2583152 () Bool)

(declare-fun Unit!43575 () Unit!43570)

(assert (=> b!2583152 (= e!1629939 Unit!43575)))

(declare-fun lt!908638 () Unit!43570)

(declare-fun call!166887 () Unit!43570)

(assert (=> b!2583152 (= lt!908638 call!166887)))

(assert (=> b!2583152 call!166885))

(declare-fun lt!908624 () Unit!43570)

(assert (=> b!2583152 (= lt!908624 lt!908638)))

(declare-fun lt!908641 () Unit!43570)

(declare-fun call!166886 () Unit!43570)

(assert (=> b!2583152 (= lt!908641 call!166886)))

(assert (=> b!2583152 (= input!3654 Nil!29730)))

(declare-fun lt!908650 () Unit!43570)

(assert (=> b!2583152 (= lt!908650 lt!908641)))

(assert (=> b!2583152 false))

(declare-fun b!2583153 () Bool)

(declare-fun e!1629940 () tuple2!29690)

(declare-fun lt!908630 () tuple2!29690)

(assert (=> b!2583153 (= e!1629940 lt!908630)))

(declare-fun bm!166883 () Bool)

(assert (=> bm!166883 (= call!166889 (nullable!2562 (regex!4513 rule!570)))))

(declare-fun bm!166884 () Bool)

(declare-fun call!166888 () Regex!7657)

(assert (=> bm!166884 (= call!166888 (derivativeStep!2214 (regex!4513 rule!570) call!166892))))

(declare-fun b!2583155 () Bool)

(declare-fun call!166891 () tuple2!29690)

(assert (=> b!2583155 (= e!1629937 call!166891)))

(declare-fun b!2583156 () Bool)

(declare-fun Unit!43576 () Unit!43570)

(assert (=> b!2583156 (= e!1629939 Unit!43576)))

(declare-fun b!2583157 () Bool)

(declare-fun e!1629938 () Bool)

(declare-fun e!1629942 () Bool)

(assert (=> b!2583157 (= e!1629938 e!1629942)))

(declare-fun res!1086320 () Bool)

(assert (=> b!2583157 (=> res!1086320 e!1629942)))

(declare-fun lt!908648 () tuple2!29690)

(assert (=> b!2583157 (= res!1086320 (isEmpty!17088 (_1!17387 lt!908648)))))

(declare-fun bm!166885 () Bool)

(assert (=> bm!166885 (= call!166891 (findLongestMatchInner!749 call!166888 lt!908642 (+ (size!23048 Nil!29730) 1) call!166890 input!3654 (size!23048 input!3654)))))

(declare-fun b!2583158 () Bool)

(declare-fun e!1629936 () tuple2!29690)

(assert (=> b!2583158 (= e!1629936 (tuple2!29691 Nil!29730 input!3654))))

(declare-fun bm!166886 () Bool)

(assert (=> bm!166886 (= call!166887 (lemmaIsPrefixRefl!1539 input!3654 input!3654))))

(declare-fun bm!166887 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!405 (List!29830 List!29830 List!29830) Unit!43570)

(assert (=> bm!166887 (= call!166886 (lemmaIsPrefixSameLengthThenSameList!405 input!3654 Nil!29730 input!3654))))

(declare-fun b!2583159 () Bool)

(assert (=> b!2583159 (= e!1629937 e!1629940)))

(assert (=> b!2583159 (= lt!908630 call!166891)))

(declare-fun c!416538 () Bool)

(assert (=> b!2583159 (= c!416538 (isEmpty!17088 (_1!17387 lt!908630)))))

(declare-fun b!2583160 () Bool)

(assert (=> b!2583160 (= e!1629940 (tuple2!29691 Nil!29730 input!3654))))

(declare-fun b!2583154 () Bool)

(assert (=> b!2583154 (= e!1629936 (tuple2!29691 Nil!29730 Nil!29730))))

(declare-fun d!731442 () Bool)

(assert (=> d!731442 e!1629938))

(declare-fun res!1086319 () Bool)

(assert (=> d!731442 (=> (not res!1086319) (not e!1629938))))

(assert (=> d!731442 (= res!1086319 (= (++!7303 (_1!17387 lt!908648) (_2!17387 lt!908648)) input!3654))))

(declare-fun e!1629941 () tuple2!29690)

(assert (=> d!731442 (= lt!908648 e!1629941)))

(declare-fun c!416539 () Bool)

(declare-fun lostCause!696 (Regex!7657) Bool)

(assert (=> d!731442 (= c!416539 (lostCause!696 (regex!4513 rule!570)))))

(declare-fun lt!908627 () Unit!43570)

(declare-fun Unit!43577 () Unit!43570)

(assert (=> d!731442 (= lt!908627 Unit!43577)))

(assert (=> d!731442 (= (getSuffix!1184 input!3654 Nil!29730) input!3654)))

(declare-fun lt!908640 () Unit!43570)

(declare-fun lt!908631 () Unit!43570)

(assert (=> d!731442 (= lt!908640 lt!908631)))

(declare-fun lt!908645 () List!29830)

(assert (=> d!731442 (= input!3654 lt!908645)))

(declare-fun lemmaSamePrefixThenSameSuffix!1086 (List!29830 List!29830 List!29830 List!29830 List!29830) Unit!43570)

(assert (=> d!731442 (= lt!908631 (lemmaSamePrefixThenSameSuffix!1086 Nil!29730 input!3654 Nil!29730 lt!908645 input!3654))))

(assert (=> d!731442 (= lt!908645 (getSuffix!1184 input!3654 Nil!29730))))

(declare-fun lt!908637 () Unit!43570)

(declare-fun lt!908646 () Unit!43570)

(assert (=> d!731442 (= lt!908637 lt!908646)))

(assert (=> d!731442 (isPrefix!2413 Nil!29730 (++!7303 Nil!29730 input!3654))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1598 (List!29830 List!29830) Unit!43570)

(assert (=> d!731442 (= lt!908646 (lemmaConcatTwoListThenFirstIsPrefix!1598 Nil!29730 input!3654))))

(assert (=> d!731442 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731442 (= (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)) lt!908648)))

(declare-fun b!2583161 () Bool)

(declare-fun c!416536 () Bool)

(assert (=> b!2583161 (= c!416536 call!166889)))

(declare-fun lt!908628 () Unit!43570)

(declare-fun lt!908634 () Unit!43570)

(assert (=> b!2583161 (= lt!908628 lt!908634)))

(assert (=> b!2583161 (= input!3654 Nil!29730)))

(assert (=> b!2583161 (= lt!908634 call!166886)))

(declare-fun lt!908636 () Unit!43570)

(declare-fun lt!908644 () Unit!43570)

(assert (=> b!2583161 (= lt!908636 lt!908644)))

(assert (=> b!2583161 call!166885))

(assert (=> b!2583161 (= lt!908644 call!166887)))

(assert (=> b!2583161 (= e!1629935 e!1629936)))

(declare-fun b!2583162 () Bool)

(assert (=> b!2583162 (= e!1629941 (tuple2!29691 Nil!29730 input!3654))))

(declare-fun b!2583163 () Bool)

(assert (=> b!2583163 (= e!1629941 e!1629935)))

(declare-fun c!416540 () Bool)

(assert (=> b!2583163 (= c!416540 (= (size!23048 Nil!29730) (size!23048 input!3654)))))

(declare-fun b!2583164 () Bool)

(assert (=> b!2583164 (= e!1629942 (>= (size!23048 (_1!17387 lt!908648)) (size!23048 Nil!29730)))))

(assert (= (and d!731442 c!416539) b!2583162))

(assert (= (and d!731442 (not c!416539)) b!2583163))

(assert (= (and b!2583163 c!416540) b!2583161))

(assert (= (and b!2583163 (not c!416540)) b!2583151))

(assert (= (and b!2583161 c!416536) b!2583154))

(assert (= (and b!2583161 (not c!416536)) b!2583158))

(assert (= (and b!2583151 c!416537) b!2583152))

(assert (= (and b!2583151 (not c!416537)) b!2583156))

(assert (= (and b!2583151 c!416535) b!2583159))

(assert (= (and b!2583151 (not c!416535)) b!2583155))

(assert (= (and b!2583159 c!416538) b!2583160))

(assert (= (and b!2583159 (not c!416538)) b!2583153))

(assert (= (or b!2583159 b!2583155) bm!166880))

(assert (= (or b!2583159 b!2583155) bm!166881))

(assert (= (or b!2583159 b!2583155) bm!166884))

(assert (= (or b!2583159 b!2583155) bm!166885))

(assert (= (or b!2583161 b!2583152) bm!166882))

(assert (= (or b!2583161 b!2583151) bm!166883))

(assert (= (or b!2583161 b!2583152) bm!166887))

(assert (= (or b!2583161 b!2583152) bm!166886))

(assert (= (and d!731442 res!1086319) b!2583157))

(assert (= (and b!2583157 (not res!1086320)) b!2583164))

(declare-fun m!2919727 () Bool)

(assert (=> b!2583164 m!2919727))

(assert (=> b!2583164 m!2919111))

(assert (=> bm!166886 m!2919049))

(declare-fun m!2919729 () Bool)

(assert (=> bm!166881 m!2919729))

(declare-fun m!2919731 () Bool)

(assert (=> bm!166884 m!2919731))

(declare-fun m!2919733 () Bool)

(assert (=> b!2583157 m!2919733))

(declare-fun m!2919735 () Bool)

(assert (=> d!731442 m!2919735))

(assert (=> d!731442 m!2919735))

(declare-fun m!2919737 () Bool)

(assert (=> d!731442 m!2919737))

(assert (=> d!731442 m!2918841))

(declare-fun m!2919739 () Bool)

(assert (=> d!731442 m!2919739))

(declare-fun m!2919741 () Bool)

(assert (=> d!731442 m!2919741))

(declare-fun m!2919743 () Bool)

(assert (=> d!731442 m!2919743))

(declare-fun m!2919745 () Bool)

(assert (=> d!731442 m!2919745))

(declare-fun m!2919747 () Bool)

(assert (=> d!731442 m!2919747))

(declare-fun m!2919749 () Bool)

(assert (=> bm!166887 m!2919749))

(declare-fun m!2919751 () Bool)

(assert (=> b!2583151 m!2919751))

(declare-fun m!2919753 () Bool)

(assert (=> b!2583151 m!2919753))

(declare-fun m!2919755 () Bool)

(assert (=> b!2583151 m!2919755))

(declare-fun m!2919757 () Bool)

(assert (=> b!2583151 m!2919757))

(declare-fun m!2919759 () Bool)

(assert (=> b!2583151 m!2919759))

(declare-fun m!2919761 () Bool)

(assert (=> b!2583151 m!2919761))

(assert (=> b!2583151 m!2919743))

(assert (=> b!2583151 m!2919111))

(assert (=> b!2583151 m!2919729))

(declare-fun m!2919763 () Bool)

(assert (=> b!2583151 m!2919763))

(assert (=> b!2583151 m!2919755))

(declare-fun m!2919765 () Bool)

(assert (=> b!2583151 m!2919765))

(assert (=> b!2583151 m!2919043))

(assert (=> b!2583151 m!2919743))

(declare-fun m!2919767 () Bool)

(assert (=> b!2583151 m!2919767))

(assert (=> b!2583151 m!2919751))

(declare-fun m!2919769 () Bool)

(assert (=> b!2583151 m!2919769))

(assert (=> bm!166883 m!2918831))

(assert (=> bm!166885 m!2919043))

(declare-fun m!2919771 () Bool)

(assert (=> bm!166885 m!2919771))

(declare-fun m!2919773 () Bool)

(assert (=> b!2583159 m!2919773))

(assert (=> bm!166880 m!2919769))

(assert (=> bm!166882 m!2919047))

(assert (=> b!2582640 d!731442))

(declare-fun bs!471578 () Bool)

(declare-fun d!731550 () Bool)

(assert (= bs!471578 (and d!731550 d!731422)))

(declare-fun lambda!95731 () Int)

(assert (=> bs!471578 (= (and (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 rule!570))) (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570)))) (= lambda!95731 lambda!95715))))

(assert (=> d!731550 true))

(assert (=> d!731550 (< (dynLambda!12562 order!15835 (toChars!6258 (transformation!4513 (h!35151 rs!798)))) (dynLambda!12561 order!15833 lambda!95731))))

(assert (=> d!731550 true))

(assert (=> d!731550 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (h!35151 rs!798)))) (dynLambda!12561 order!15833 lambda!95731))))

(declare-fun Forall!1166 (Int) Bool)

(assert (=> d!731550 (= (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (h!35151 rs!798)))) (Forall!1166 lambda!95731))))

(declare-fun bs!471579 () Bool)

(assert (= bs!471579 d!731550))

(declare-fun m!2919787 () Bool)

(assert (=> bs!471579 m!2919787))

(assert (=> d!731276 d!731550))

(declare-fun d!731554 () Bool)

(assert (=> d!731554 (= (isEmpty!17088 lt!908265) ((_ is Nil!29730) lt!908265))))

(assert (=> bm!166774 d!731554))

(declare-fun d!731556 () Bool)

(declare-fun lt!908655 () Bool)

(assert (=> d!731556 (= lt!908655 (select (content!4098 rules!4580) (rule!6871 (_1!17385 (get!9369 lt!908359)))))))

(declare-fun e!1629947 () Bool)

(assert (=> d!731556 (= lt!908655 e!1629947)))

(declare-fun res!1086321 () Bool)

(assert (=> d!731556 (=> (not res!1086321) (not e!1629947))))

(assert (=> d!731556 (= res!1086321 ((_ is Cons!29731) rules!4580))))

(assert (=> d!731556 (= (contains!5315 rules!4580 (rule!6871 (_1!17385 (get!9369 lt!908359)))) lt!908655)))

(declare-fun b!2583175 () Bool)

(declare-fun e!1629948 () Bool)

(assert (=> b!2583175 (= e!1629947 e!1629948)))

(declare-fun res!1086322 () Bool)

(assert (=> b!2583175 (=> res!1086322 e!1629948)))

(assert (=> b!2583175 (= res!1086322 (= (h!35151 rules!4580) (rule!6871 (_1!17385 (get!9369 lt!908359)))))))

(declare-fun b!2583176 () Bool)

(assert (=> b!2583176 (= e!1629948 (contains!5315 (t!211794 rules!4580) (rule!6871 (_1!17385 (get!9369 lt!908359)))))))

(assert (= (and d!731556 res!1086321) b!2583175))

(assert (= (and b!2583175 (not res!1086322)) b!2583176))

(assert (=> d!731556 m!2918761))

(declare-fun m!2919789 () Bool)

(assert (=> d!731556 m!2919789))

(declare-fun m!2919791 () Bool)

(assert (=> b!2583176 m!2919791))

(assert (=> b!2582587 d!731556))

(assert (=> b!2582587 d!731410))

(declare-fun d!731558 () Bool)

(declare-fun e!1629951 () Bool)

(assert (=> d!731558 e!1629951))

(declare-fun res!1086325 () Bool)

(assert (=> d!731558 (=> (not res!1086325) (not e!1629951))))

(declare-fun lt!908658 () BalanceConc!18172)

(assert (=> d!731558 (= res!1086325 (= (list!11235 lt!908658) lt!908264))))

(declare-fun fromList!559 (List!29830) Conc!9279)

(assert (=> d!731558 (= lt!908658 (BalanceConc!18173 (fromList!559 lt!908264)))))

(assert (=> d!731558 (= (fromListB!1424 lt!908264) lt!908658)))

(declare-fun b!2583179 () Bool)

(declare-fun isBalanced!2832 (Conc!9279) Bool)

(assert (=> b!2583179 (= e!1629951 (isBalanced!2832 (fromList!559 lt!908264)))))

(assert (= (and d!731558 res!1086325) b!2583179))

(declare-fun m!2919793 () Bool)

(assert (=> d!731558 m!2919793))

(declare-fun m!2919795 () Bool)

(assert (=> d!731558 m!2919795))

(assert (=> b!2583179 m!2919795))

(assert (=> b!2583179 m!2919795))

(declare-fun m!2919797 () Bool)

(assert (=> b!2583179 m!2919797))

(assert (=> d!731320 d!731558))

(declare-fun d!731560 () Bool)

(declare-fun lt!908659 () Int)

(assert (=> d!731560 (>= lt!908659 0)))

(declare-fun e!1629952 () Int)

(assert (=> d!731560 (= lt!908659 e!1629952)))

(declare-fun c!416543 () Bool)

(assert (=> d!731560 (= c!416543 ((_ is Nil!29730) (t!211793 lt!908264)))))

(assert (=> d!731560 (= (size!23048 (t!211793 lt!908264)) lt!908659)))

(declare-fun b!2583180 () Bool)

(assert (=> b!2583180 (= e!1629952 0)))

(declare-fun b!2583181 () Bool)

(assert (=> b!2583181 (= e!1629952 (+ 1 (size!23048 (t!211793 (t!211793 lt!908264)))))))

(assert (= (and d!731560 c!416543) b!2583180))

(assert (= (and d!731560 (not c!416543)) b!2583181))

(declare-fun m!2919799 () Bool)

(assert (=> b!2583181 m!2919799))

(assert (=> b!2582615 d!731560))

(assert (=> b!2582642 d!731362))

(declare-fun bs!471580 () Bool)

(declare-fun d!731562 () Bool)

(assert (= bs!471580 (and d!731562 d!731248)))

(declare-fun lambda!95732 () Int)

(assert (=> bs!471580 (= lambda!95732 lambda!95699)))

(declare-fun bs!471581 () Bool)

(assert (= bs!471581 (and d!731562 d!731304)))

(assert (=> bs!471581 (= lambda!95732 lambda!95700)))

(declare-fun bs!471582 () Bool)

(assert (= bs!471582 (and d!731562 d!731376)))

(assert (=> bs!471582 (= lambda!95732 lambda!95711)))

(assert (=> d!731562 true))

(declare-fun lt!908660 () Bool)

(assert (=> d!731562 (= lt!908660 (forall!6055 (t!211794 rs!798) lambda!95732))))

(declare-fun e!1629953 () Bool)

(assert (=> d!731562 (= lt!908660 e!1629953)))

(declare-fun res!1086327 () Bool)

(assert (=> d!731562 (=> res!1086327 e!1629953)))

(assert (=> d!731562 (= res!1086327 (not ((_ is Cons!29731) (t!211794 rs!798))))))

(assert (=> d!731562 (= (rulesValidInductive!1587 thiss!28211 (t!211794 rs!798)) lt!908660)))

(declare-fun b!2583182 () Bool)

(declare-fun e!1629954 () Bool)

(assert (=> b!2583182 (= e!1629953 e!1629954)))

(declare-fun res!1086326 () Bool)

(assert (=> b!2583182 (=> (not res!1086326) (not e!1629954))))

(assert (=> b!2583182 (= res!1086326 (ruleValid!1519 thiss!28211 (h!35151 (t!211794 rs!798))))))

(declare-fun b!2583183 () Bool)

(assert (=> b!2583183 (= e!1629954 (rulesValidInductive!1587 thiss!28211 (t!211794 (t!211794 rs!798))))))

(assert (= (and d!731562 (not res!1086327)) b!2583182))

(assert (= (and b!2583182 res!1086326) b!2583183))

(declare-fun m!2919801 () Bool)

(assert (=> d!731562 m!2919801))

(declare-fun m!2919803 () Bool)

(assert (=> b!2583182 m!2919803))

(declare-fun m!2919805 () Bool)

(assert (=> b!2583183 m!2919805))

(assert (=> d!731248 d!731562))

(declare-fun d!731564 () Bool)

(declare-fun res!1086328 () Bool)

(declare-fun e!1629955 () Bool)

(assert (=> d!731564 (=> res!1086328 e!1629955)))

(assert (=> d!731564 (= res!1086328 ((_ is Nil!29731) (t!211794 rs!798)))))

(assert (=> d!731564 (= (forall!6055 (t!211794 rs!798) lambda!95699) e!1629955)))

(declare-fun b!2583184 () Bool)

(declare-fun e!1629956 () Bool)

(assert (=> b!2583184 (= e!1629955 e!1629956)))

(declare-fun res!1086329 () Bool)

(assert (=> b!2583184 (=> (not res!1086329) (not e!1629956))))

(assert (=> b!2583184 (= res!1086329 (dynLambda!12559 lambda!95699 (h!35151 (t!211794 rs!798))))))

(declare-fun b!2583185 () Bool)

(assert (=> b!2583185 (= e!1629956 (forall!6055 (t!211794 (t!211794 rs!798)) lambda!95699))))

(assert (= (and d!731564 (not res!1086328)) b!2583184))

(assert (= (and b!2583184 res!1086329) b!2583185))

(declare-fun b_lambda!76661 () Bool)

(assert (=> (not b_lambda!76661) (not b!2583184)))

(declare-fun m!2919807 () Bool)

(assert (=> b!2583184 m!2919807))

(declare-fun m!2919809 () Bool)

(assert (=> b!2583185 m!2919809))

(assert (=> d!731248 d!731564))

(declare-fun d!731566 () Bool)

(assert (=> d!731566 (= (inv!40143 (tag!5003 (h!35151 (t!211794 rules!4580)))) (= (mod (str.len (value!145867 (tag!5003 (h!35151 (t!211794 rules!4580))))) 2) 0))))

(assert (=> b!2582673 d!731566))

(declare-fun d!731568 () Bool)

(declare-fun res!1086332 () Bool)

(declare-fun e!1629959 () Bool)

(assert (=> d!731568 (=> (not res!1086332) (not e!1629959))))

(assert (=> d!731568 (= res!1086332 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580))))))))

(assert (=> d!731568 (= (inv!40146 (transformation!4513 (h!35151 (t!211794 rules!4580)))) e!1629959)))

(declare-fun b!2583188 () Bool)

(assert (=> b!2583188 (= e!1629959 (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580))))))))

(assert (= (and d!731568 res!1086332) b!2583188))

(declare-fun m!2919811 () Bool)

(assert (=> d!731568 m!2919811))

(declare-fun m!2919813 () Bool)

(assert (=> b!2583188 m!2919813))

(assert (=> b!2582673 d!731568))

(declare-fun bs!471583 () Bool)

(declare-fun d!731570 () Bool)

(assert (= bs!471583 (and d!731570 d!731248)))

(declare-fun lambda!95733 () Int)

(assert (=> bs!471583 (= lambda!95733 lambda!95699)))

(declare-fun bs!471584 () Bool)

(assert (= bs!471584 (and d!731570 d!731304)))

(assert (=> bs!471584 (= lambda!95733 lambda!95700)))

(declare-fun bs!471585 () Bool)

(assert (= bs!471585 (and d!731570 d!731376)))

(assert (=> bs!471585 (= lambda!95733 lambda!95711)))

(declare-fun bs!471586 () Bool)

(assert (= bs!471586 (and d!731570 d!731562)))

(assert (=> bs!471586 (= lambda!95733 lambda!95732)))

(assert (=> d!731570 true))

(declare-fun lt!908663 () Bool)

(assert (=> d!731570 (= lt!908663 (rulesValidInductive!1587 thiss!28211 rules!4580))))

(assert (=> d!731570 (= lt!908663 (forall!6055 rules!4580 lambda!95733))))

(assert (=> d!731570 (= (rulesValid!1685 thiss!28211 rules!4580) lt!908663)))

(declare-fun bs!471587 () Bool)

(assert (= bs!471587 d!731570))

(assert (=> bs!471587 m!2919051))

(declare-fun m!2919815 () Bool)

(assert (=> bs!471587 m!2919815))

(assert (=> d!731214 d!731570))

(declare-fun d!731572 () Bool)

(assert (=> d!731572 (= (isEmpty!17088 (originalCharacters!5279 token!562)) ((_ is Nil!29730) (originalCharacters!5279 token!562)))))

(assert (=> d!731280 d!731572))

(assert (=> bm!166785 d!731394))

(declare-fun d!731574 () Bool)

(declare-fun c!416546 () Bool)

(assert (=> d!731574 (= c!416546 ((_ is Nil!29731) rules!4580))))

(declare-fun e!1629963 () (InoxSet Rule!8826))

(assert (=> d!731574 (= (content!4098 rules!4580) e!1629963)))

(declare-fun b!2583194 () Bool)

(assert (=> b!2583194 (= e!1629963 ((as const (Array Rule!8826 Bool)) false))))

(declare-fun b!2583195 () Bool)

(assert (=> b!2583195 (= e!1629963 ((_ map or) (store ((as const (Array Rule!8826 Bool)) false) (h!35151 rules!4580) true) (content!4098 (t!211794 rules!4580))))))

(assert (= (and d!731574 c!416546) b!2583194))

(assert (= (and d!731574 (not c!416546)) b!2583195))

(declare-fun m!2919819 () Bool)

(assert (=> b!2583195 m!2919819))

(declare-fun m!2919821 () Bool)

(assert (=> b!2583195 m!2919821))

(assert (=> d!731220 d!731574))

(declare-fun d!731578 () Bool)

(declare-fun c!416549 () Bool)

(assert (=> d!731578 (= c!416549 ((_ is Node!9279) (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(declare-fun e!1629969 () Bool)

(assert (=> d!731578 (= (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))) e!1629969)))

(declare-fun b!2583202 () Bool)

(declare-fun inv!40154 (Conc!9279) Bool)

(assert (=> b!2583202 (= e!1629969 (inv!40154 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(declare-fun b!2583203 () Bool)

(declare-fun e!1629970 () Bool)

(assert (=> b!2583203 (= e!1629969 e!1629970)))

(declare-fun res!1086336 () Bool)

(assert (=> b!2583203 (= res!1086336 (not ((_ is Leaf!14157) (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))))))

(assert (=> b!2583203 (=> res!1086336 e!1629970)))

(declare-fun b!2583204 () Bool)

(declare-fun inv!40155 (Conc!9279) Bool)

(assert (=> b!2583204 (= e!1629970 (inv!40155 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(assert (= (and d!731578 c!416549) b!2583202))

(assert (= (and d!731578 (not c!416549)) b!2583203))

(assert (= (and b!2583203 (not res!1086336)) b!2583204))

(declare-fun m!2919833 () Bool)

(assert (=> b!2583202 m!2919833))

(declare-fun m!2919835 () Bool)

(assert (=> b!2583204 m!2919835))

(assert (=> b!2582376 d!731578))

(declare-fun d!731586 () Bool)

(declare-fun lt!908669 () Bool)

(assert (=> d!731586 (= lt!908669 (select (content!4098 (t!211794 rules!4580)) rule!570))))

(declare-fun e!1629972 () Bool)

(assert (=> d!731586 (= lt!908669 e!1629972)))

(declare-fun res!1086337 () Bool)

(assert (=> d!731586 (=> (not res!1086337) (not e!1629972))))

(assert (=> d!731586 (= res!1086337 ((_ is Cons!29731) (t!211794 rules!4580)))))

(assert (=> d!731586 (= (contains!5315 (t!211794 rules!4580) rule!570) lt!908669)))

(declare-fun b!2583207 () Bool)

(declare-fun e!1629973 () Bool)

(assert (=> b!2583207 (= e!1629972 e!1629973)))

(declare-fun res!1086338 () Bool)

(assert (=> b!2583207 (=> res!1086338 e!1629973)))

(assert (=> b!2583207 (= res!1086338 (= (h!35151 (t!211794 rules!4580)) rule!570))))

(declare-fun b!2583208 () Bool)

(assert (=> b!2583208 (= e!1629973 (contains!5315 (t!211794 (t!211794 rules!4580)) rule!570))))

(assert (= (and d!731586 res!1086337) b!2583207))

(assert (= (and b!2583207 (not res!1086338)) b!2583208))

(assert (=> d!731586 m!2919821))

(declare-fun m!2919839 () Bool)

(assert (=> d!731586 m!2919839))

(declare-fun m!2919841 () Bool)

(assert (=> b!2583208 m!2919841))

(assert (=> b!2582247 d!731586))

(declare-fun d!731592 () Bool)

(assert (=> d!731592 (= (isEmpty!17088 (tail!4127 lt!908264)) ((_ is Nil!29730) (tail!4127 lt!908264)))))

(assert (=> b!2582599 d!731592))

(assert (=> b!2582599 d!731392))

(declare-fun d!731594 () Bool)

(assert (=> d!731594 (= (inv!40151 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))) (isBalanced!2832 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))))))

(declare-fun bs!471590 () Bool)

(assert (= bs!471590 d!731594))

(declare-fun m!2919843 () Bool)

(assert (=> bs!471590 m!2919843))

(assert (=> tb!140457 d!731594))

(declare-fun d!731596 () Bool)

(assert (=> d!731596 (= (isEmpty!17088 (tail!4127 lt!908265)) ((_ is Nil!29730) (tail!4127 lt!908265)))))

(assert (=> b!2582336 d!731596))

(assert (=> b!2582336 d!731406))

(assert (=> b!2582334 d!731596))

(assert (=> b!2582334 d!731406))

(declare-fun d!731598 () Bool)

(declare-fun charsToBigInt!0 (List!29829 Int) Int)

(assert (=> d!731598 (= (inv!15 (value!145868 token!562)) (= (charsToBigInt!0 (text!33594 (value!145868 token!562)) 0) (value!145863 (value!145868 token!562))))))

(declare-fun bs!471591 () Bool)

(assert (= bs!471591 d!731598))

(declare-fun m!2919845 () Bool)

(assert (=> bs!471591 m!2919845))

(assert (=> b!2582260 d!731598))

(declare-fun d!731600 () Bool)

(declare-fun c!416553 () Bool)

(assert (=> d!731600 (= c!416553 ((_ is Nil!29730) lt!908362))))

(declare-fun e!1629985 () (InoxSet C!15472))

(assert (=> d!731600 (= (content!4100 lt!908362) e!1629985)))

(declare-fun b!2583225 () Bool)

(assert (=> b!2583225 (= e!1629985 ((as const (Array C!15472 Bool)) false))))

(declare-fun b!2583226 () Bool)

(assert (=> b!2583226 (= e!1629985 ((_ map or) (store ((as const (Array C!15472 Bool)) false) (h!35150 lt!908362) true) (content!4100 (t!211793 lt!908362))))))

(assert (= (and d!731600 c!416553) b!2583225))

(assert (= (and d!731600 (not c!416553)) b!2583226))

(declare-fun m!2919849 () Bool)

(assert (=> b!2583226 m!2919849))

(declare-fun m!2919851 () Bool)

(assert (=> b!2583226 m!2919851))

(assert (=> d!731306 d!731600))

(declare-fun d!731604 () Bool)

(declare-fun c!416554 () Bool)

(assert (=> d!731604 (= c!416554 ((_ is Nil!29730) lt!908264))))

(declare-fun e!1629986 () (InoxSet C!15472))

(assert (=> d!731604 (= (content!4100 lt!908264) e!1629986)))

(declare-fun b!2583227 () Bool)

(assert (=> b!2583227 (= e!1629986 ((as const (Array C!15472 Bool)) false))))

(declare-fun b!2583228 () Bool)

(assert (=> b!2583228 (= e!1629986 ((_ map or) (store ((as const (Array C!15472 Bool)) false) (h!35150 lt!908264) true) (content!4100 (t!211793 lt!908264))))))

(assert (= (and d!731604 c!416554) b!2583227))

(assert (= (and d!731604 (not c!416554)) b!2583228))

(declare-fun m!2919853 () Bool)

(assert (=> b!2583228 m!2919853))

(declare-fun m!2919855 () Bool)

(assert (=> b!2583228 m!2919855))

(assert (=> d!731306 d!731604))

(declare-fun d!731606 () Bool)

(declare-fun c!416555 () Bool)

(assert (=> d!731606 (= c!416555 ((_ is Nil!29730) suffix!1684))))

(declare-fun e!1629987 () (InoxSet C!15472))

(assert (=> d!731606 (= (content!4100 suffix!1684) e!1629987)))

(declare-fun b!2583229 () Bool)

(assert (=> b!2583229 (= e!1629987 ((as const (Array C!15472 Bool)) false))))

(declare-fun b!2583230 () Bool)

(assert (=> b!2583230 (= e!1629987 ((_ map or) (store ((as const (Array C!15472 Bool)) false) (h!35150 suffix!1684) true) (content!4100 (t!211793 suffix!1684))))))

(assert (= (and d!731606 c!416555) b!2583229))

(assert (= (and d!731606 (not c!416555)) b!2583230))

(declare-fun m!2919859 () Bool)

(assert (=> b!2583230 m!2919859))

(declare-fun m!2919861 () Bool)

(assert (=> b!2583230 m!2919861))

(assert (=> d!731306 d!731606))

(declare-fun d!731610 () Bool)

(assert (=> d!731610 (= (isEmpty!17089 lt!908381) (not ((_ is Some!5927) lt!908381)))))

(assert (=> d!731318 d!731610))

(declare-fun d!731612 () Bool)

(assert (=> d!731612 (= (isEmpty!17088 (_1!17387 lt!908379)) ((_ is Nil!29730) (_1!17387 lt!908379)))))

(assert (=> d!731318 d!731612))

(declare-fun d!731614 () Bool)

(declare-fun lt!908699 () tuple2!29690)

(assert (=> d!731614 (= (++!7303 (_1!17387 lt!908699) (_2!17387 lt!908699)) input!3654)))

(declare-fun sizeTr!138 (List!29830 Int) Int)

(assert (=> d!731614 (= lt!908699 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 0 input!3654 input!3654 (sizeTr!138 input!3654 0)))))

(declare-fun lt!908705 () Unit!43570)

(declare-fun lt!908701 () Unit!43570)

(assert (=> d!731614 (= lt!908705 lt!908701)))

(declare-fun lt!908702 () List!29830)

(declare-fun lt!908703 () Int)

(assert (=> d!731614 (= (sizeTr!138 lt!908702 lt!908703) (+ (size!23048 lt!908702) lt!908703))))

(declare-fun lemmaSizeTrEqualsSize!137 (List!29830 Int) Unit!43570)

(assert (=> d!731614 (= lt!908701 (lemmaSizeTrEqualsSize!137 lt!908702 lt!908703))))

(assert (=> d!731614 (= lt!908703 0)))

(assert (=> d!731614 (= lt!908702 Nil!29730)))

(declare-fun lt!908698 () Unit!43570)

(declare-fun lt!908700 () Unit!43570)

(assert (=> d!731614 (= lt!908698 lt!908700)))

(declare-fun lt!908704 () Int)

(assert (=> d!731614 (= (sizeTr!138 input!3654 lt!908704) (+ (size!23048 input!3654) lt!908704))))

(assert (=> d!731614 (= lt!908700 (lemmaSizeTrEqualsSize!137 input!3654 lt!908704))))

(assert (=> d!731614 (= lt!908704 0)))

(assert (=> d!731614 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731614 (= (findLongestMatch!678 (regex!4513 rule!570) input!3654) lt!908699)))

(declare-fun bs!471603 () Bool)

(assert (= bs!471603 d!731614))

(declare-fun m!2919895 () Bool)

(assert (=> bs!471603 m!2919895))

(declare-fun m!2919897 () Bool)

(assert (=> bs!471603 m!2919897))

(declare-fun m!2919899 () Bool)

(assert (=> bs!471603 m!2919899))

(declare-fun m!2919901 () Bool)

(assert (=> bs!471603 m!2919901))

(assert (=> bs!471603 m!2918841))

(assert (=> bs!471603 m!2919899))

(declare-fun m!2919903 () Bool)

(assert (=> bs!471603 m!2919903))

(declare-fun m!2919905 () Bool)

(assert (=> bs!471603 m!2919905))

(declare-fun m!2919909 () Bool)

(assert (=> bs!471603 m!2919909))

(declare-fun m!2919911 () Bool)

(assert (=> bs!471603 m!2919911))

(assert (=> bs!471603 m!2919043))

(assert (=> d!731318 d!731614))

(assert (=> d!731318 d!731232))

(declare-fun bs!471605 () Bool)

(declare-fun d!731636 () Bool)

(assert (= bs!471605 (and d!731636 d!731350)))

(declare-fun lambda!95737 () Int)

(assert (=> bs!471605 (= (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570))) (= lambda!95737 lambda!95708))))

(declare-fun bs!471607 () Bool)

(assert (= bs!471607 (and d!731636 d!731416)))

(assert (=> bs!471607 (= (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (= lambda!95737 lambda!95712))))

(assert (=> d!731636 true))

(assert (=> d!731636 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (h!35151 rules!4580)))) (dynLambda!12558 order!15831 lambda!95737))))

(assert (=> d!731636 (= (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (h!35151 rules!4580)))) (Forall2!765 lambda!95737))))

(declare-fun bs!471610 () Bool)

(assert (= bs!471610 d!731636))

(declare-fun m!2919913 () Bool)

(assert (=> bs!471610 m!2919913))

(assert (=> b!2582607 d!731636))

(declare-fun d!731638 () Bool)

(declare-fun charsToInt!0 (List!29829) (_ BitVec 32))

(assert (=> d!731638 (= (inv!16 (value!145868 token!562)) (= (charsToInt!0 (text!33592 (value!145868 token!562))) (value!145859 (value!145868 token!562))))))

(declare-fun bs!471614 () Bool)

(assert (= bs!471614 d!731638))

(declare-fun m!2919921 () Bool)

(assert (=> bs!471614 m!2919921))

(assert (=> b!2582262 d!731638))

(declare-fun bs!471616 () Bool)

(declare-fun d!731646 () Bool)

(assert (= bs!471616 (and d!731646 d!731422)))

(declare-fun lambda!95738 () Int)

(assert (=> bs!471616 (= lambda!95738 lambda!95715)))

(declare-fun bs!471617 () Bool)

(assert (= bs!471617 (and d!731646 d!731550)))

(assert (=> bs!471617 (= (and (= (toChars!6258 (transformation!4513 rule!570)) (toChars!6258 (transformation!4513 (h!35151 rs!798)))) (= (toValue!6399 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 (h!35151 rs!798))))) (= lambda!95738 lambda!95731))))

(assert (=> d!731646 true))

(assert (=> d!731646 (< (dynLambda!12562 order!15835 (toChars!6258 (transformation!4513 rule!570))) (dynLambda!12561 order!15833 lambda!95738))))

(assert (=> d!731646 true))

(assert (=> d!731646 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 rule!570))) (dynLambda!12561 order!15833 lambda!95738))))

(assert (=> d!731646 (= (semiInverseModEq!1882 (toChars!6258 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 rule!570))) (Forall!1166 lambda!95738))))

(declare-fun bs!471618 () Bool)

(assert (= bs!471618 d!731646))

(declare-fun m!2919927 () Bool)

(assert (=> bs!471618 m!2919927))

(assert (=> d!731302 d!731646))

(assert (=> b!2582601 d!731592))

(assert (=> b!2582601 d!731392))

(declare-fun b!2583260 () Bool)

(declare-fun e!1630008 () List!29830)

(assert (=> b!2583260 (= e!1630008 suffix!1684)))

(declare-fun b!2583261 () Bool)

(assert (=> b!2583261 (= e!1630008 (Cons!29730 (h!35150 (t!211793 lt!908265)) (++!7303 (t!211793 (t!211793 lt!908265)) suffix!1684)))))

(declare-fun d!731654 () Bool)

(declare-fun e!1630009 () Bool)

(assert (=> d!731654 e!1630009))

(declare-fun res!1086366 () Bool)

(assert (=> d!731654 (=> (not res!1086366) (not e!1630009))))

(declare-fun lt!908707 () List!29830)

(assert (=> d!731654 (= res!1086366 (= (content!4100 lt!908707) ((_ map or) (content!4100 (t!211793 lt!908265)) (content!4100 suffix!1684))))))

(assert (=> d!731654 (= lt!908707 e!1630008)))

(declare-fun c!416564 () Bool)

(assert (=> d!731654 (= c!416564 ((_ is Nil!29730) (t!211793 lt!908265)))))

(assert (=> d!731654 (= (++!7303 (t!211793 lt!908265) suffix!1684) lt!908707)))

(declare-fun b!2583264 () Bool)

(assert (=> b!2583264 (= e!1630009 (or (not (= suffix!1684 Nil!29730)) (= lt!908707 (t!211793 lt!908265))))))

(declare-fun b!2583262 () Bool)

(declare-fun res!1086367 () Bool)

(assert (=> b!2583262 (=> (not res!1086367) (not e!1630009))))

(assert (=> b!2583262 (= res!1086367 (= (size!23048 lt!908707) (+ (size!23048 (t!211793 lt!908265)) (size!23048 suffix!1684))))))

(assert (= (and d!731654 c!416564) b!2583260))

(assert (= (and d!731654 (not c!416564)) b!2583261))

(assert (= (and d!731654 res!1086366) b!2583262))

(assert (= (and b!2583262 res!1086367) b!2583264))

(declare-fun m!2919935 () Bool)

(assert (=> b!2583261 m!2919935))

(declare-fun m!2919937 () Bool)

(assert (=> d!731654 m!2919937))

(declare-fun m!2919939 () Bool)

(assert (=> d!731654 m!2919939))

(assert (=> d!731654 m!2918863))

(declare-fun m!2919941 () Bool)

(assert (=> b!2583262 m!2919941))

(assert (=> b!2583262 m!2919229))

(assert (=> b!2583262 m!2918869))

(assert (=> b!2582369 d!731654))

(declare-fun d!731660 () Bool)

(declare-fun nullableFct!787 (Regex!7657) Bool)

(assert (=> d!731660 (= (nullable!2562 (regex!4513 rule!570)) (nullableFct!787 (regex!4513 rule!570)))))

(declare-fun bs!471619 () Bool)

(assert (= bs!471619 d!731660))

(declare-fun m!2919945 () Bool)

(assert (=> bs!471619 m!2919945))

(assert (=> b!2582341 d!731660))

(declare-fun d!731662 () Bool)

(declare-fun c!416569 () Bool)

(assert (=> d!731662 (= c!416569 ((_ is Nil!29730) lt!908305))))

(declare-fun e!1630018 () (InoxSet C!15472))

(assert (=> d!731662 (= (content!4100 lt!908305) e!1630018)))

(declare-fun b!2583280 () Bool)

(assert (=> b!2583280 (= e!1630018 ((as const (Array C!15472 Bool)) false))))

(declare-fun b!2583281 () Bool)

(assert (=> b!2583281 (= e!1630018 ((_ map or) (store ((as const (Array C!15472 Bool)) false) (h!35150 lt!908305) true) (content!4100 (t!211793 lt!908305))))))

(assert (= (and d!731662 c!416569) b!2583280))

(assert (= (and d!731662 (not c!416569)) b!2583281))

(declare-fun m!2919957 () Bool)

(assert (=> b!2583281 m!2919957))

(declare-fun m!2919959 () Bool)

(assert (=> b!2583281 m!2919959))

(assert (=> d!731240 d!731662))

(declare-fun d!731664 () Bool)

(declare-fun c!416570 () Bool)

(assert (=> d!731664 (= c!416570 ((_ is Nil!29730) lt!908265))))

(declare-fun e!1630019 () (InoxSet C!15472))

(assert (=> d!731664 (= (content!4100 lt!908265) e!1630019)))

(declare-fun b!2583282 () Bool)

(assert (=> b!2583282 (= e!1630019 ((as const (Array C!15472 Bool)) false))))

(declare-fun b!2583283 () Bool)

(assert (=> b!2583283 (= e!1630019 ((_ map or) (store ((as const (Array C!15472 Bool)) false) (h!35150 lt!908265) true) (content!4100 (t!211793 lt!908265))))))

(assert (= (and d!731664 c!416570) b!2583282))

(assert (= (and d!731664 (not c!416570)) b!2583283))

(declare-fun m!2919963 () Bool)

(assert (=> b!2583283 m!2919963))

(assert (=> b!2583283 m!2919939))

(assert (=> d!731240 d!731664))

(assert (=> d!731240 d!731606))

(assert (=> b!2582635 d!731362))

(declare-fun d!731668 () Bool)

(declare-fun lt!908710 () Int)

(assert (=> d!731668 (>= lt!908710 0)))

(declare-fun e!1630025 () Int)

(assert (=> d!731668 (= lt!908710 e!1630025)))

(declare-fun c!416576 () Bool)

(assert (=> d!731668 (= c!416576 ((_ is Nil!29730) (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))))))

(assert (=> d!731668 (= (size!23048 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))) lt!908710)))

(declare-fun b!2583294 () Bool)

(assert (=> b!2583294 (= e!1630025 0)))

(declare-fun b!2583295 () Bool)

(assert (=> b!2583295 (= e!1630025 (+ 1 (size!23048 (t!211793 (originalCharacters!5279 (_1!17385 (get!9369 lt!908381)))))))))

(assert (= (and d!731668 c!416576) b!2583294))

(assert (= (and d!731668 (not c!416576)) b!2583295))

(declare-fun m!2919965 () Bool)

(assert (=> b!2583295 m!2919965))

(assert (=> b!2582635 d!731668))

(assert (=> b!2582324 d!731660))

(assert (=> d!731312 d!731314))

(assert (=> d!731312 d!731316))

(assert (=> d!731312 d!731298))

(assert (=> d!731312 d!731318))

(declare-fun d!731670 () Bool)

(assert (=> d!731670 (= (maxPrefixOneRule!1448 thiss!28211 rule!570 input!3654) (Some!5927 (tuple2!29687 (Token!8497 (apply!7018 (transformation!4513 rule!570) (seqFromList!3153 lt!908264)) rule!570 (size!23048 lt!908264) lt!908264) suffix!1684)))))

(assert (=> d!731670 true))

(declare-fun _$59!341 () Unit!43570)

(assert (=> d!731670 (= (choose!15222 thiss!28211 rules!4580 lt!908264 input!3654 suffix!1684 rule!570) _$59!341)))

(declare-fun bs!471620 () Bool)

(assert (= bs!471620 d!731670))

(assert (=> bs!471620 m!2918729))

(assert (=> bs!471620 m!2918731))

(assert (=> bs!471620 m!2918731))

(assert (=> bs!471620 m!2918733))

(assert (=> bs!471620 m!2918737))

(assert (=> d!731312 d!731670))

(assert (=> d!731312 d!731320))

(declare-fun b!2583404 () Bool)

(declare-fun e!1630065 () List!29830)

(assert (=> b!2583404 (= e!1630065 suffix!1684)))

(declare-fun b!2583405 () Bool)

(assert (=> b!2583405 (= e!1630065 (Cons!29730 (h!35150 (t!211793 lt!908264)) (++!7303 (t!211793 (t!211793 lt!908264)) suffix!1684)))))

(declare-fun d!731672 () Bool)

(declare-fun e!1630066 () Bool)

(assert (=> d!731672 e!1630066))

(declare-fun res!1086376 () Bool)

(assert (=> d!731672 (=> (not res!1086376) (not e!1630066))))

(declare-fun lt!908711 () List!29830)

(assert (=> d!731672 (= res!1086376 (= (content!4100 lt!908711) ((_ map or) (content!4100 (t!211793 lt!908264)) (content!4100 suffix!1684))))))

(assert (=> d!731672 (= lt!908711 e!1630065)))

(declare-fun c!416577 () Bool)

(assert (=> d!731672 (= c!416577 ((_ is Nil!29730) (t!211793 lt!908264)))))

(assert (=> d!731672 (= (++!7303 (t!211793 lt!908264) suffix!1684) lt!908711)))

(declare-fun b!2583407 () Bool)

(assert (=> b!2583407 (= e!1630066 (or (not (= suffix!1684 Nil!29730)) (= lt!908711 (t!211793 lt!908264))))))

(declare-fun b!2583406 () Bool)

(declare-fun res!1086377 () Bool)

(assert (=> b!2583406 (=> (not res!1086377) (not e!1630066))))

(assert (=> b!2583406 (= res!1086377 (= (size!23048 lt!908711) (+ (size!23048 (t!211793 lt!908264)) (size!23048 suffix!1684))))))

(assert (= (and d!731672 c!416577) b!2583404))

(assert (= (and d!731672 (not c!416577)) b!2583405))

(assert (= (and d!731672 res!1086376) b!2583406))

(assert (= (and b!2583406 res!1086377) b!2583407))

(declare-fun m!2919987 () Bool)

(assert (=> b!2583405 m!2919987))

(declare-fun m!2919989 () Bool)

(assert (=> d!731672 m!2919989))

(assert (=> d!731672 m!2919855))

(assert (=> d!731672 m!2918863))

(declare-fun m!2919991 () Bool)

(assert (=> b!2583406 m!2919991))

(assert (=> b!2583406 m!2919099))

(assert (=> b!2583406 m!2918869))

(assert (=> b!2582604 d!731672))

(declare-fun b!2583408 () Bool)

(declare-fun e!1630070 () Bool)

(assert (=> b!2583408 (= e!1630070 (not (= (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (c!416336 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))))))))

(declare-fun d!731678 () Bool)

(declare-fun e!1630068 () Bool)

(assert (=> d!731678 e!1630068))

(declare-fun c!416579 () Bool)

(assert (=> d!731678 (= c!416579 ((_ is EmptyExpr!7657) (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun lt!908712 () Bool)

(declare-fun e!1630073 () Bool)

(assert (=> d!731678 (= lt!908712 e!1630073)))

(declare-fun c!416580 () Bool)

(assert (=> d!731678 (= c!416580 (isEmpty!17088 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))

(assert (=> d!731678 (validRegex!3271 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))))

(assert (=> d!731678 (= (matchR!3590 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) lt!908712)))

(declare-fun b!2583409 () Bool)

(assert (=> b!2583409 (= e!1630073 (nullable!2562 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun b!2583410 () Bool)

(assert (=> b!2583410 (= e!1630073 (matchR!3590 (derivativeStep!2214 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))) (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))))) (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun b!2583411 () Bool)

(declare-fun e!1630072 () Bool)

(assert (=> b!2583411 (= e!1630072 (not lt!908712))))

(declare-fun b!2583412 () Bool)

(declare-fun e!1630069 () Bool)

(assert (=> b!2583412 (= e!1630069 (= (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (c!416336 (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun b!2583413 () Bool)

(declare-fun e!1630071 () Bool)

(assert (=> b!2583413 (= e!1630071 e!1630070)))

(declare-fun res!1086383 () Bool)

(assert (=> b!2583413 (=> res!1086383 e!1630070)))

(declare-fun call!166898 () Bool)

(assert (=> b!2583413 (= res!1086383 call!166898)))

(declare-fun b!2583414 () Bool)

(assert (=> b!2583414 (= e!1630068 e!1630072)))

(declare-fun c!416578 () Bool)

(assert (=> b!2583414 (= c!416578 ((_ is EmptyLang!7657) (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun b!2583415 () Bool)

(declare-fun res!1086380 () Bool)

(declare-fun e!1630067 () Bool)

(assert (=> b!2583415 (=> res!1086380 e!1630067)))

(assert (=> b!2583415 (= res!1086380 e!1630069)))

(declare-fun res!1086381 () Bool)

(assert (=> b!2583415 (=> (not res!1086381) (not e!1630069))))

(assert (=> b!2583415 (= res!1086381 lt!908712)))

(declare-fun bm!166893 () Bool)

(assert (=> bm!166893 (= call!166898 (isEmpty!17088 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun b!2583416 () Bool)

(declare-fun res!1086384 () Bool)

(assert (=> b!2583416 (=> (not res!1086384) (not e!1630069))))

(assert (=> b!2583416 (= res!1086384 (not call!166898))))

(declare-fun b!2583417 () Bool)

(declare-fun res!1086382 () Bool)

(assert (=> b!2583417 (=> res!1086382 e!1630067)))

(assert (=> b!2583417 (= res!1086382 (not ((_ is ElementMatch!7657) (regex!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))))))

(assert (=> b!2583417 (= e!1630072 e!1630067)))

(declare-fun b!2583418 () Bool)

(assert (=> b!2583418 (= e!1630068 (= lt!908712 call!166898))))

(declare-fun b!2583419 () Bool)

(declare-fun res!1086379 () Bool)

(assert (=> b!2583419 (=> (not res!1086379) (not e!1630069))))

(assert (=> b!2583419 (= res!1086379 (isEmpty!17088 (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun b!2583420 () Bool)

(assert (=> b!2583420 (= e!1630067 e!1630071)))

(declare-fun res!1086385 () Bool)

(assert (=> b!2583420 (=> (not res!1086385) (not e!1630071))))

(assert (=> b!2583420 (= res!1086385 (not lt!908712))))

(declare-fun b!2583421 () Bool)

(declare-fun res!1086378 () Bool)

(assert (=> b!2583421 (=> res!1086378 e!1630070)))

(assert (=> b!2583421 (= res!1086378 (not (isEmpty!17088 (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))))

(assert (= (and d!731678 c!416580) b!2583409))

(assert (= (and d!731678 (not c!416580)) b!2583410))

(assert (= (and d!731678 c!416579) b!2583418))

(assert (= (and d!731678 (not c!416579)) b!2583414))

(assert (= (and b!2583414 c!416578) b!2583411))

(assert (= (and b!2583414 (not c!416578)) b!2583417))

(assert (= (and b!2583417 (not res!1086382)) b!2583415))

(assert (= (and b!2583415 res!1086381) b!2583416))

(assert (= (and b!2583416 res!1086384) b!2583419))

(assert (= (and b!2583419 res!1086379) b!2583412))

(assert (= (and b!2583415 (not res!1086380)) b!2583420))

(assert (= (and b!2583420 res!1086385) b!2583413))

(assert (= (and b!2583413 (not res!1086383)) b!2583421))

(assert (= (and b!2583421 (not res!1086378)) b!2583408))

(assert (= (or b!2583418 b!2583413 b!2583416) bm!166893))

(assert (=> b!2583419 m!2919031))

(declare-fun m!2919993 () Bool)

(assert (=> b!2583419 m!2919993))

(assert (=> b!2583419 m!2919993))

(declare-fun m!2919995 () Bool)

(assert (=> b!2583419 m!2919995))

(assert (=> b!2583421 m!2919031))

(assert (=> b!2583421 m!2919993))

(assert (=> b!2583421 m!2919993))

(assert (=> b!2583421 m!2919995))

(declare-fun m!2919997 () Bool)

(assert (=> b!2583409 m!2919997))

(assert (=> b!2583412 m!2919031))

(declare-fun m!2919999 () Bool)

(assert (=> b!2583412 m!2919999))

(assert (=> b!2583410 m!2919031))

(assert (=> b!2583410 m!2919999))

(assert (=> b!2583410 m!2919999))

(declare-fun m!2920001 () Bool)

(assert (=> b!2583410 m!2920001))

(assert (=> b!2583410 m!2919031))

(assert (=> b!2583410 m!2919993))

(assert (=> b!2583410 m!2920001))

(assert (=> b!2583410 m!2919993))

(declare-fun m!2920003 () Bool)

(assert (=> b!2583410 m!2920003))

(assert (=> b!2583408 m!2919031))

(assert (=> b!2583408 m!2919999))

(assert (=> d!731678 m!2919031))

(declare-fun m!2920005 () Bool)

(assert (=> d!731678 m!2920005))

(declare-fun m!2920007 () Bool)

(assert (=> d!731678 m!2920007))

(assert (=> bm!166893 m!2919031))

(assert (=> bm!166893 m!2920005))

(assert (=> b!2582579 d!731678))

(assert (=> b!2582579 d!731410))

(assert (=> b!2582579 d!731412))

(assert (=> b!2582579 d!731414))

(declare-fun d!731680 () Bool)

(assert (=> d!731680 (= (isDefined!4748 lt!908359) (not (isEmpty!17089 lt!908359)))))

(declare-fun bs!471623 () Bool)

(assert (= bs!471623 d!731680))

(assert (=> bs!471623 m!2919045))

(assert (=> b!2582583 d!731680))

(assert (=> d!731224 d!731554))

(assert (=> d!731224 d!731396))

(declare-fun b!2583422 () Bool)

(declare-fun e!1630074 () List!29830)

(assert (=> b!2583422 (= e!1630074 (_2!17385 (get!9369 lt!908359)))))

(declare-fun b!2583423 () Bool)

(assert (=> b!2583423 (= e!1630074 (Cons!29730 (h!35150 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (++!7303 (t!211793 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (_2!17385 (get!9369 lt!908359)))))))

(declare-fun d!731682 () Bool)

(declare-fun e!1630075 () Bool)

(assert (=> d!731682 e!1630075))

(declare-fun res!1086386 () Bool)

(assert (=> d!731682 (=> (not res!1086386) (not e!1630075))))

(declare-fun lt!908713 () List!29830)

(assert (=> d!731682 (= res!1086386 (= (content!4100 lt!908713) ((_ map or) (content!4100 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (content!4100 (_2!17385 (get!9369 lt!908359))))))))

(assert (=> d!731682 (= lt!908713 e!1630074)))

(declare-fun c!416581 () Bool)

(assert (=> d!731682 (= c!416581 ((_ is Nil!29730) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))))))

(assert (=> d!731682 (= (++!7303 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))) (_2!17385 (get!9369 lt!908359))) lt!908713)))

(declare-fun b!2583425 () Bool)

(assert (=> b!2583425 (= e!1630075 (or (not (= (_2!17385 (get!9369 lt!908359)) Nil!29730)) (= lt!908713 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun b!2583424 () Bool)

(declare-fun res!1086387 () Bool)

(assert (=> b!2583424 (=> (not res!1086387) (not e!1630075))))

(assert (=> b!2583424 (= res!1086387 (= (size!23048 lt!908713) (+ (size!23048 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908359))))) (size!23048 (_2!17385 (get!9369 lt!908359))))))))

(assert (= (and d!731682 c!416581) b!2583422))

(assert (= (and d!731682 (not c!416581)) b!2583423))

(assert (= (and d!731682 res!1086386) b!2583424))

(assert (= (and b!2583424 res!1086387) b!2583425))

(declare-fun m!2920009 () Bool)

(assert (=> b!2583423 m!2920009))

(declare-fun m!2920011 () Bool)

(assert (=> d!731682 m!2920011))

(assert (=> d!731682 m!2919031))

(declare-fun m!2920013 () Bool)

(assert (=> d!731682 m!2920013))

(declare-fun m!2920015 () Bool)

(assert (=> d!731682 m!2920015))

(declare-fun m!2920017 () Bool)

(assert (=> b!2583424 m!2920017))

(assert (=> b!2583424 m!2919031))

(declare-fun m!2920019 () Bool)

(assert (=> b!2583424 m!2920019))

(assert (=> b!2583424 m!2919041))

(assert (=> b!2582581 d!731682))

(assert (=> b!2582581 d!731412))

(assert (=> b!2582581 d!731414))

(assert (=> b!2582581 d!731410))

(assert (=> b!2582589 d!731660))

(declare-fun d!731684 () Bool)

(declare-fun lt!908714 () Int)

(assert (=> d!731684 (>= lt!908714 0)))

(declare-fun e!1630076 () Int)

(assert (=> d!731684 (= lt!908714 e!1630076)))

(declare-fun c!416582 () Bool)

(assert (=> d!731684 (= c!416582 ((_ is Nil!29730) (originalCharacters!5279 token!562)))))

(assert (=> d!731684 (= (size!23048 (originalCharacters!5279 token!562)) lt!908714)))

(declare-fun b!2583426 () Bool)

(assert (=> b!2583426 (= e!1630076 0)))

(declare-fun b!2583427 () Bool)

(assert (=> b!2583427 (= e!1630076 (+ 1 (size!23048 (t!211793 (originalCharacters!5279 token!562)))))))

(assert (= (and d!731684 c!416582) b!2583426))

(assert (= (and d!731684 (not c!416582)) b!2583427))

(declare-fun m!2920021 () Bool)

(assert (=> b!2583427 m!2920021))

(assert (=> b!2582503 d!731684))

(assert (=> b!2582584 d!731410))

(declare-fun d!731686 () Bool)

(assert (=> d!731686 (= (apply!7018 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359))))) (dynLambda!12554 (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359))))))))

(declare-fun b_lambda!76675 () Bool)

(assert (=> (not b_lambda!76675) (not d!731686)))

(declare-fun t!212011 () Bool)

(declare-fun tb!140653 () Bool)

(assert (=> (and b!2582212 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212011) tb!140653))

(declare-fun result!174854 () Bool)

(assert (=> tb!140653 (= result!174854 (inv!21 (dynLambda!12554 (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359))))) (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359)))))))))

(declare-fun m!2920023 () Bool)

(assert (=> tb!140653 m!2920023))

(assert (=> d!731686 t!212011))

(declare-fun b_and!189207 () Bool)

(assert (= b_and!189125 (and (=> t!212011 result!174854) b_and!189207)))

(declare-fun tb!140655 () Bool)

(declare-fun t!212013 () Bool)

(assert (=> (and b!2582215 (= (toValue!6399 (transformation!4513 rule!570)) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212013) tb!140655))

(declare-fun result!174856 () Bool)

(assert (= result!174856 result!174854))

(assert (=> d!731686 t!212013))

(declare-fun b_and!189209 () Bool)

(assert (= b_and!189117 (and (=> t!212013 result!174856) b_and!189209)))

(declare-fun t!212015 () Bool)

(declare-fun tb!140657 () Bool)

(assert (=> (and b!2582674 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212015) tb!140657))

(declare-fun result!174858 () Bool)

(assert (= result!174858 result!174854))

(assert (=> d!731686 t!212015))

(declare-fun b_and!189211 () Bool)

(assert (= b_and!189115 (and (=> t!212015 result!174858) b_and!189211)))

(declare-fun tb!140659 () Bool)

(declare-fun t!212017 () Bool)

(assert (=> (and b!2582204 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212017) tb!140659))

(declare-fun result!174860 () Bool)

(assert (= result!174860 result!174854))

(assert (=> d!731686 t!212017))

(declare-fun b_and!189213 () Bool)

(assert (= b_and!189121 (and (=> t!212017 result!174860) b_and!189213)))

(declare-fun tb!140661 () Bool)

(declare-fun t!212019 () Bool)

(assert (=> (and b!2582671 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212019) tb!140661))

(declare-fun result!174862 () Bool)

(assert (= result!174862 result!174854))

(assert (=> d!731686 t!212019))

(declare-fun b_and!189215 () Bool)

(assert (= b_and!189119 (and (=> t!212019 result!174862) b_and!189215)))

(declare-fun tb!140663 () Bool)

(declare-fun t!212021 () Bool)

(assert (=> (and b!2582205 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212021) tb!140663))

(declare-fun result!174864 () Bool)

(assert (= result!174864 result!174854))

(assert (=> d!731686 t!212021))

(declare-fun b_and!189217 () Bool)

(assert (= b_and!189123 (and (=> t!212021 result!174864) b_and!189217)))

(assert (=> d!731686 m!2919037))

(declare-fun m!2920025 () Bool)

(assert (=> d!731686 m!2920025))

(assert (=> b!2582584 d!731686))

(declare-fun d!731688 () Bool)

(assert (=> d!731688 (= (seqFromList!3153 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359)))) (fromListB!1424 (originalCharacters!5279 (_1!17385 (get!9369 lt!908359)))))))

(declare-fun bs!471624 () Bool)

(assert (= bs!471624 d!731688))

(declare-fun m!2920027 () Bool)

(assert (=> bs!471624 m!2920027))

(assert (=> b!2582584 d!731688))

(declare-fun b!2583428 () Bool)

(declare-fun e!1630081 () Bool)

(assert (=> b!2583428 (= e!1630081 (not (= (head!5854 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))) (c!416336 (regex!4513 rule!570)))))))

(declare-fun d!731690 () Bool)

(declare-fun e!1630079 () Bool)

(assert (=> d!731690 e!1630079))

(declare-fun c!416584 () Bool)

(assert (=> d!731690 (= c!416584 ((_ is EmptyExpr!7657) (regex!4513 rule!570)))))

(declare-fun lt!908715 () Bool)

(declare-fun e!1630084 () Bool)

(assert (=> d!731690 (= lt!908715 e!1630084)))

(declare-fun c!416585 () Bool)

(assert (=> d!731690 (= c!416585 (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(assert (=> d!731690 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731690 (= (matchR!3590 (regex!4513 rule!570) (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))) lt!908715)))

(declare-fun b!2583429 () Bool)

(assert (=> b!2583429 (= e!1630084 (nullable!2562 (regex!4513 rule!570)))))

(declare-fun b!2583430 () Bool)

(assert (=> b!2583430 (= e!1630084 (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654))))) (tail!4127 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654))))))))

(declare-fun b!2583431 () Bool)

(declare-fun e!1630083 () Bool)

(assert (=> b!2583431 (= e!1630083 (not lt!908715))))

(declare-fun b!2583432 () Bool)

(declare-fun e!1630080 () Bool)

(assert (=> b!2583432 (= e!1630080 (= (head!5854 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))) (c!416336 (regex!4513 rule!570))))))

(declare-fun b!2583433 () Bool)

(declare-fun e!1630082 () Bool)

(assert (=> b!2583433 (= e!1630082 e!1630081)))

(declare-fun res!1086393 () Bool)

(assert (=> b!2583433 (=> res!1086393 e!1630081)))

(declare-fun call!166899 () Bool)

(assert (=> b!2583433 (= res!1086393 call!166899)))

(declare-fun b!2583434 () Bool)

(assert (=> b!2583434 (= e!1630079 e!1630083)))

(declare-fun c!416583 () Bool)

(assert (=> b!2583434 (= c!416583 ((_ is EmptyLang!7657) (regex!4513 rule!570)))))

(declare-fun b!2583435 () Bool)

(declare-fun res!1086390 () Bool)

(declare-fun e!1630078 () Bool)

(assert (=> b!2583435 (=> res!1086390 e!1630078)))

(assert (=> b!2583435 (= res!1086390 e!1630080)))

(declare-fun res!1086391 () Bool)

(assert (=> b!2583435 (=> (not res!1086391) (not e!1630080))))

(assert (=> b!2583435 (= res!1086391 lt!908715)))

(declare-fun bm!166894 () Bool)

(assert (=> bm!166894 (= call!166899 (isEmpty!17088 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))

(declare-fun b!2583436 () Bool)

(declare-fun res!1086394 () Bool)

(assert (=> b!2583436 (=> (not res!1086394) (not e!1630080))))

(assert (=> b!2583436 (= res!1086394 (not call!166899))))

(declare-fun b!2583437 () Bool)

(declare-fun res!1086392 () Bool)

(assert (=> b!2583437 (=> res!1086392 e!1630078)))

(assert (=> b!2583437 (= res!1086392 (not ((_ is ElementMatch!7657) (regex!4513 rule!570))))))

(assert (=> b!2583437 (= e!1630083 e!1630078)))

(declare-fun b!2583438 () Bool)

(assert (=> b!2583438 (= e!1630079 (= lt!908715 call!166899))))

(declare-fun b!2583439 () Bool)

(declare-fun res!1086389 () Bool)

(assert (=> b!2583439 (=> (not res!1086389) (not e!1630080))))

(assert (=> b!2583439 (= res!1086389 (isEmpty!17088 (tail!4127 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654))))))))

(declare-fun b!2583440 () Bool)

(assert (=> b!2583440 (= e!1630078 e!1630082)))

(declare-fun res!1086395 () Bool)

(assert (=> b!2583440 (=> (not res!1086395) (not e!1630082))))

(assert (=> b!2583440 (= res!1086395 (not lt!908715))))

(declare-fun b!2583441 () Bool)

(declare-fun res!1086388 () Bool)

(assert (=> b!2583441 (=> res!1086388 e!1630081)))

(assert (=> b!2583441 (= res!1086388 (not (isEmpty!17088 (tail!4127 (_1!17387 (findLongestMatchInner!749 (regex!4513 rule!570) Nil!29730 (size!23048 Nil!29730) input!3654 input!3654 (size!23048 input!3654)))))))))

(assert (= (and d!731690 c!416585) b!2583429))

(assert (= (and d!731690 (not c!416585)) b!2583430))

(assert (= (and d!731690 c!416584) b!2583438))

(assert (= (and d!731690 (not c!416584)) b!2583434))

(assert (= (and b!2583434 c!416583) b!2583431))

(assert (= (and b!2583434 (not c!416583)) b!2583437))

(assert (= (and b!2583437 (not res!1086392)) b!2583435))

(assert (= (and b!2583435 res!1086391) b!2583436))

(assert (= (and b!2583436 res!1086394) b!2583439))

(assert (= (and b!2583439 res!1086389) b!2583432))

(assert (= (and b!2583435 (not res!1086390)) b!2583440))

(assert (= (and b!2583440 res!1086395) b!2583433))

(assert (= (and b!2583433 (not res!1086393)) b!2583441))

(assert (= (and b!2583441 (not res!1086388)) b!2583428))

(assert (= (or b!2583438 b!2583433 b!2583436) bm!166894))

(declare-fun m!2920029 () Bool)

(assert (=> b!2583439 m!2920029))

(assert (=> b!2583439 m!2920029))

(declare-fun m!2920031 () Bool)

(assert (=> b!2583439 m!2920031))

(assert (=> b!2583441 m!2920029))

(assert (=> b!2583441 m!2920029))

(assert (=> b!2583441 m!2920031))

(assert (=> b!2583429 m!2918831))

(declare-fun m!2920033 () Bool)

(assert (=> b!2583432 m!2920033))

(assert (=> b!2583430 m!2920033))

(assert (=> b!2583430 m!2920033))

(declare-fun m!2920035 () Bool)

(assert (=> b!2583430 m!2920035))

(assert (=> b!2583430 m!2920029))

(assert (=> b!2583430 m!2920035))

(assert (=> b!2583430 m!2920029))

(declare-fun m!2920037 () Bool)

(assert (=> b!2583430 m!2920037))

(assert (=> b!2583428 m!2920033))

(assert (=> d!731690 m!2919117))

(assert (=> d!731690 m!2918841))

(assert (=> bm!166894 m!2919117))

(assert (=> b!2582641 d!731690))

(assert (=> b!2582641 d!731442))

(assert (=> b!2582641 d!731436))

(assert (=> b!2582641 d!731364))

(declare-fun b!2583442 () Bool)

(declare-fun e!1630088 () Bool)

(assert (=> b!2583442 (= e!1630088 (not (= (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (c!416336 (regex!4513 rule!570)))))))

(declare-fun d!731692 () Bool)

(declare-fun e!1630086 () Bool)

(assert (=> d!731692 e!1630086))

(declare-fun c!416587 () Bool)

(assert (=> d!731692 (= c!416587 ((_ is EmptyExpr!7657) (regex!4513 rule!570)))))

(declare-fun lt!908716 () Bool)

(declare-fun e!1630091 () Bool)

(assert (=> d!731692 (= lt!908716 e!1630091)))

(declare-fun c!416588 () Bool)

(assert (=> d!731692 (= c!416588 (isEmpty!17088 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))

(assert (=> d!731692 (validRegex!3271 (regex!4513 rule!570))))

(assert (=> d!731692 (= (matchR!3590 (regex!4513 rule!570) (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) lt!908716)))

(declare-fun b!2583443 () Bool)

(assert (=> b!2583443 (= e!1630091 (nullable!2562 (regex!4513 rule!570)))))

(declare-fun b!2583444 () Bool)

(assert (=> b!2583444 (= e!1630091 (matchR!3590 (derivativeStep!2214 (regex!4513 rule!570) (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))))) (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))))))))

(declare-fun b!2583445 () Bool)

(declare-fun e!1630090 () Bool)

(assert (=> b!2583445 (= e!1630090 (not lt!908716))))

(declare-fun b!2583446 () Bool)

(declare-fun e!1630087 () Bool)

(assert (=> b!2583446 (= e!1630087 (= (head!5854 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))) (c!416336 (regex!4513 rule!570))))))

(declare-fun b!2583447 () Bool)

(declare-fun e!1630089 () Bool)

(assert (=> b!2583447 (= e!1630089 e!1630088)))

(declare-fun res!1086401 () Bool)

(assert (=> b!2583447 (=> res!1086401 e!1630088)))

(declare-fun call!166900 () Bool)

(assert (=> b!2583447 (= res!1086401 call!166900)))

(declare-fun b!2583448 () Bool)

(assert (=> b!2583448 (= e!1630086 e!1630090)))

(declare-fun c!416586 () Bool)

(assert (=> b!2583448 (= c!416586 ((_ is EmptyLang!7657) (regex!4513 rule!570)))))

(declare-fun b!2583449 () Bool)

(declare-fun res!1086398 () Bool)

(declare-fun e!1630085 () Bool)

(assert (=> b!2583449 (=> res!1086398 e!1630085)))

(assert (=> b!2583449 (= res!1086398 e!1630087)))

(declare-fun res!1086399 () Bool)

(assert (=> b!2583449 (=> (not res!1086399) (not e!1630087))))

(assert (=> b!2583449 (= res!1086399 lt!908716)))

(declare-fun bm!166895 () Bool)

(assert (=> bm!166895 (= call!166900 (isEmpty!17088 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))

(declare-fun b!2583450 () Bool)

(declare-fun res!1086402 () Bool)

(assert (=> b!2583450 (=> (not res!1086402) (not e!1630087))))

(assert (=> b!2583450 (= res!1086402 (not call!166900))))

(declare-fun b!2583451 () Bool)

(declare-fun res!1086400 () Bool)

(assert (=> b!2583451 (=> res!1086400 e!1630085)))

(assert (=> b!2583451 (= res!1086400 (not ((_ is ElementMatch!7657) (regex!4513 rule!570))))))

(assert (=> b!2583451 (= e!1630090 e!1630085)))

(declare-fun b!2583452 () Bool)

(assert (=> b!2583452 (= e!1630086 (= lt!908716 call!166900))))

(declare-fun b!2583453 () Bool)

(declare-fun res!1086397 () Bool)

(assert (=> b!2583453 (=> (not res!1086397) (not e!1630087))))

(assert (=> b!2583453 (= res!1086397 (isEmpty!17088 (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381)))))))))

(declare-fun b!2583454 () Bool)

(assert (=> b!2583454 (= e!1630085 e!1630089)))

(declare-fun res!1086403 () Bool)

(assert (=> b!2583454 (=> (not res!1086403) (not e!1630089))))

(assert (=> b!2583454 (= res!1086403 (not lt!908716))))

(declare-fun b!2583455 () Bool)

(declare-fun res!1086396 () Bool)

(assert (=> b!2583455 (=> res!1086396 e!1630088)))

(assert (=> b!2583455 (= res!1086396 (not (isEmpty!17088 (tail!4127 (list!11235 (charsOf!2842 (_1!17385 (get!9369 lt!908381))))))))))

(assert (= (and d!731692 c!416588) b!2583443))

(assert (= (and d!731692 (not c!416588)) b!2583444))

(assert (= (and d!731692 c!416587) b!2583452))

(assert (= (and d!731692 (not c!416587)) b!2583448))

(assert (= (and b!2583448 c!416586) b!2583445))

(assert (= (and b!2583448 (not c!416586)) b!2583451))

(assert (= (and b!2583451 (not res!1086400)) b!2583449))

(assert (= (and b!2583449 res!1086399) b!2583450))

(assert (= (and b!2583450 res!1086402) b!2583453))

(assert (= (and b!2583453 res!1086397) b!2583446))

(assert (= (and b!2583449 (not res!1086398)) b!2583454))

(assert (= (and b!2583454 res!1086403) b!2583447))

(assert (= (and b!2583447 (not res!1086401)) b!2583455))

(assert (= (and b!2583455 (not res!1086396)) b!2583442))

(assert (= (or b!2583452 b!2583447 b!2583450) bm!166895))

(assert (=> b!2583453 m!2919137))

(declare-fun m!2920039 () Bool)

(assert (=> b!2583453 m!2920039))

(assert (=> b!2583453 m!2920039))

(declare-fun m!2920041 () Bool)

(assert (=> b!2583453 m!2920041))

(assert (=> b!2583455 m!2919137))

(assert (=> b!2583455 m!2920039))

(assert (=> b!2583455 m!2920039))

(assert (=> b!2583455 m!2920041))

(assert (=> b!2583443 m!2918831))

(assert (=> b!2583446 m!2919137))

(declare-fun m!2920043 () Bool)

(assert (=> b!2583446 m!2920043))

(assert (=> b!2583444 m!2919137))

(assert (=> b!2583444 m!2920043))

(assert (=> b!2583444 m!2920043))

(declare-fun m!2920045 () Bool)

(assert (=> b!2583444 m!2920045))

(assert (=> b!2583444 m!2919137))

(assert (=> b!2583444 m!2920039))

(assert (=> b!2583444 m!2920045))

(assert (=> b!2583444 m!2920039))

(declare-fun m!2920047 () Bool)

(assert (=> b!2583444 m!2920047))

(assert (=> b!2583442 m!2919137))

(assert (=> b!2583442 m!2920043))

(assert (=> d!731692 m!2919137))

(declare-fun m!2920049 () Bool)

(assert (=> d!731692 m!2920049))

(assert (=> d!731692 m!2918841))

(assert (=> bm!166895 m!2919137))

(assert (=> bm!166895 m!2920049))

(assert (=> b!2582639 d!731692))

(assert (=> b!2582639 d!731382))

(assert (=> b!2582639 d!731384))

(assert (=> b!2582639 d!731362))

(declare-fun d!731694 () Bool)

(assert (=> d!731694 (= (isEmpty!17089 lt!908359) (not ((_ is Some!5927) lt!908359)))))

(assert (=> d!731284 d!731694))

(declare-fun b!2583466 () Bool)

(declare-fun e!1630098 () Bool)

(assert (=> b!2583466 (= e!1630098 (isPrefix!2413 (tail!4127 input!3654) (tail!4127 input!3654)))))

(declare-fun b!2583465 () Bool)

(declare-fun res!1086412 () Bool)

(assert (=> b!2583465 (=> (not res!1086412) (not e!1630098))))

(assert (=> b!2583465 (= res!1086412 (= (head!5854 input!3654) (head!5854 input!3654)))))

(declare-fun b!2583464 () Bool)

(declare-fun e!1630100 () Bool)

(assert (=> b!2583464 (= e!1630100 e!1630098)))

(declare-fun res!1086413 () Bool)

(assert (=> b!2583464 (=> (not res!1086413) (not e!1630098))))

(assert (=> b!2583464 (= res!1086413 (not ((_ is Nil!29730) input!3654)))))

(declare-fun b!2583467 () Bool)

(declare-fun e!1630099 () Bool)

(assert (=> b!2583467 (= e!1630099 (>= (size!23048 input!3654) (size!23048 input!3654)))))

(declare-fun d!731696 () Bool)

(assert (=> d!731696 e!1630099))

(declare-fun res!1086414 () Bool)

(assert (=> d!731696 (=> res!1086414 e!1630099)))

(declare-fun lt!908719 () Bool)

(assert (=> d!731696 (= res!1086414 (not lt!908719))))

(assert (=> d!731696 (= lt!908719 e!1630100)))

(declare-fun res!1086415 () Bool)

(assert (=> d!731696 (=> res!1086415 e!1630100)))

(assert (=> d!731696 (= res!1086415 ((_ is Nil!29730) input!3654))))

(assert (=> d!731696 (= (isPrefix!2413 input!3654 input!3654) lt!908719)))

(assert (= (and d!731696 (not res!1086415)) b!2583464))

(assert (= (and b!2583464 res!1086413) b!2583465))

(assert (= (and b!2583465 res!1086412) b!2583466))

(assert (= (and d!731696 (not res!1086414)) b!2583467))

(assert (=> b!2583466 m!2919769))

(assert (=> b!2583466 m!2919769))

(assert (=> b!2583466 m!2919769))

(assert (=> b!2583466 m!2919769))

(declare-fun m!2920051 () Bool)

(assert (=> b!2583466 m!2920051))

(assert (=> b!2583465 m!2919729))

(assert (=> b!2583465 m!2919729))

(assert (=> b!2583467 m!2919043))

(assert (=> b!2583467 m!2919043))

(assert (=> d!731284 d!731696))

(declare-fun d!731698 () Bool)

(assert (=> d!731698 (isPrefix!2413 input!3654 input!3654)))

(declare-fun lt!908722 () Unit!43570)

(declare-fun choose!15226 (List!29830 List!29830) Unit!43570)

(assert (=> d!731698 (= lt!908722 (choose!15226 input!3654 input!3654))))

(assert (=> d!731698 (= (lemmaIsPrefixRefl!1539 input!3654 input!3654) lt!908722)))

(declare-fun bs!471625 () Bool)

(assert (= bs!471625 d!731698))

(assert (=> bs!471625 m!2919047))

(declare-fun m!2920053 () Bool)

(assert (=> bs!471625 m!2920053))

(assert (=> d!731284 d!731698))

(declare-fun bs!471626 () Bool)

(declare-fun d!731700 () Bool)

(assert (= bs!471626 (and d!731700 d!731248)))

(declare-fun lambda!95739 () Int)

(assert (=> bs!471626 (= lambda!95739 lambda!95699)))

(declare-fun bs!471627 () Bool)

(assert (= bs!471627 (and d!731700 d!731562)))

(assert (=> bs!471627 (= lambda!95739 lambda!95732)))

(declare-fun bs!471628 () Bool)

(assert (= bs!471628 (and d!731700 d!731376)))

(assert (=> bs!471628 (= lambda!95739 lambda!95711)))

(declare-fun bs!471629 () Bool)

(assert (= bs!471629 (and d!731700 d!731304)))

(assert (=> bs!471629 (= lambda!95739 lambda!95700)))

(declare-fun bs!471630 () Bool)

(assert (= bs!471630 (and d!731700 d!731570)))

(assert (=> bs!471630 (= lambda!95739 lambda!95733)))

(assert (=> d!731700 true))

(declare-fun lt!908723 () Bool)

(assert (=> d!731700 (= lt!908723 (forall!6055 rules!4580 lambda!95739))))

(declare-fun e!1630101 () Bool)

(assert (=> d!731700 (= lt!908723 e!1630101)))

(declare-fun res!1086417 () Bool)

(assert (=> d!731700 (=> res!1086417 e!1630101)))

(assert (=> d!731700 (= res!1086417 (not ((_ is Cons!29731) rules!4580)))))

(assert (=> d!731700 (= (rulesValidInductive!1587 thiss!28211 rules!4580) lt!908723)))

(declare-fun b!2583468 () Bool)

(declare-fun e!1630102 () Bool)

(assert (=> b!2583468 (= e!1630101 e!1630102)))

(declare-fun res!1086416 () Bool)

(assert (=> b!2583468 (=> (not res!1086416) (not e!1630102))))

(assert (=> b!2583468 (= res!1086416 (ruleValid!1519 thiss!28211 (h!35151 rules!4580)))))

(declare-fun b!2583469 () Bool)

(assert (=> b!2583469 (= e!1630102 (rulesValidInductive!1587 thiss!28211 (t!211794 rules!4580)))))

(assert (= (and d!731700 (not res!1086417)) b!2583468))

(assert (= (and b!2583468 res!1086416) b!2583469))

(declare-fun m!2920055 () Bool)

(assert (=> d!731700 m!2920055))

(assert (=> b!2583468 m!2919369))

(assert (=> b!2583469 m!2919213))

(assert (=> d!731284 d!731700))

(declare-fun b!2583470 () Bool)

(declare-fun e!1630103 () Bool)

(declare-fun e!1630104 () Bool)

(assert (=> b!2583470 (= e!1630103 e!1630104)))

(declare-fun c!416590 () Bool)

(assert (=> b!2583470 (= c!416590 ((_ is IntegerValue!14206) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(declare-fun b!2583471 () Bool)

(declare-fun res!1086418 () Bool)

(declare-fun e!1630105 () Bool)

(assert (=> b!2583471 (=> res!1086418 e!1630105)))

(assert (=> b!2583471 (= res!1086418 (not ((_ is IntegerValue!14207) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264)))))))

(assert (=> b!2583471 (= e!1630104 e!1630105)))

(declare-fun b!2583472 () Bool)

(assert (=> b!2583472 (= e!1630105 (inv!15 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(declare-fun b!2583473 () Bool)

(assert (=> b!2583473 (= e!1630104 (inv!17 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(declare-fun b!2583474 () Bool)

(assert (=> b!2583474 (= e!1630103 (inv!16 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(declare-fun d!731702 () Bool)

(declare-fun c!416589 () Bool)

(assert (=> d!731702 (= c!416589 ((_ is IntegerValue!14205) (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))))))

(assert (=> d!731702 (= (inv!21 (dynLambda!12554 (toValue!6399 (transformation!4513 rule!570)) (seqFromList!3153 lt!908264))) e!1630103)))

(assert (= (and d!731702 c!416589) b!2583474))

(assert (= (and d!731702 (not c!416589)) b!2583470))

(assert (= (and b!2583470 c!416590) b!2583473))

(assert (= (and b!2583470 (not c!416590)) b!2583471))

(assert (= (and b!2583471 (not res!1086418)) b!2583472))

(declare-fun m!2920057 () Bool)

(assert (=> b!2583472 m!2920057))

(declare-fun m!2920059 () Bool)

(assert (=> b!2583473 m!2920059))

(declare-fun m!2920061 () Bool)

(assert (=> b!2583474 m!2920061))

(assert (=> tb!140473 d!731702))

(assert (=> d!731232 d!731396))

(declare-fun bs!471631 () Bool)

(declare-fun d!731704 () Bool)

(assert (= bs!471631 (and d!731704 d!731350)))

(declare-fun lambda!95740 () Int)

(assert (=> bs!471631 (= (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570))) (= lambda!95740 lambda!95708))))

(declare-fun bs!471632 () Bool)

(assert (= bs!471632 (and d!731704 d!731416)))

(assert (=> bs!471632 (= (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (= lambda!95740 lambda!95712))))

(declare-fun bs!471633 () Bool)

(assert (= bs!471633 (and d!731704 d!731636)))

(assert (=> bs!471633 (= (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (h!35151 rules!4580)))) (= lambda!95740 lambda!95737))))

(assert (=> d!731704 true))

(assert (=> d!731704 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (h!35151 rs!798)))) (dynLambda!12558 order!15831 lambda!95740))))

(assert (=> d!731704 (= (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 (h!35151 rs!798)))) (Forall2!765 lambda!95740))))

(declare-fun bs!471634 () Bool)

(assert (= bs!471634 d!731704))

(declare-fun m!2920063 () Bool)

(assert (=> bs!471634 m!2920063))

(assert (=> b!2582479 d!731704))

(declare-fun bs!471635 () Bool)

(declare-fun d!731706 () Bool)

(assert (= bs!471635 (and d!731706 d!731422)))

(declare-fun lambda!95741 () Int)

(assert (=> bs!471635 (= (and (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 rule!570))) (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570)))) (= lambda!95741 lambda!95715))))

(declare-fun bs!471636 () Bool)

(assert (= bs!471636 (and d!731706 d!731550)))

(assert (=> bs!471636 (= (and (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 (h!35151 rs!798)))) (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (h!35151 rs!798))))) (= lambda!95741 lambda!95731))))

(declare-fun bs!471637 () Bool)

(assert (= bs!471637 (and d!731706 d!731646)))

(assert (=> bs!471637 (= (and (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 rule!570))) (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570)))) (= lambda!95741 lambda!95738))))

(assert (=> d!731706 true))

(assert (=> d!731706 (< (dynLambda!12562 order!15835 (toChars!6258 (transformation!4513 (h!35151 rules!4580)))) (dynLambda!12561 order!15833 lambda!95741))))

(assert (=> d!731706 true))

(assert (=> d!731706 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (h!35151 rules!4580)))) (dynLambda!12561 order!15833 lambda!95741))))

(assert (=> d!731706 (= (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 (h!35151 rules!4580)))) (Forall!1166 lambda!95741))))

(declare-fun bs!471638 () Bool)

(assert (= bs!471638 d!731706))

(declare-fun m!2920065 () Bool)

(assert (=> bs!471638 m!2920065))

(assert (=> d!731310 d!731706))

(declare-fun bs!471639 () Bool)

(declare-fun d!731708 () Bool)

(assert (= bs!471639 (and d!731708 d!731422)))

(declare-fun lambda!95742 () Int)

(assert (=> bs!471639 (= (and (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 rule!570))) (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570)))) (= lambda!95742 lambda!95715))))

(declare-fun bs!471640 () Bool)

(assert (= bs!471640 (and d!731708 d!731550)))

(assert (=> bs!471640 (= (and (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 (h!35151 rs!798)))) (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (h!35151 rs!798))))) (= lambda!95742 lambda!95731))))

(declare-fun bs!471641 () Bool)

(assert (= bs!471641 (and d!731708 d!731646)))

(assert (=> bs!471641 (= (and (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 rule!570))) (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570)))) (= lambda!95742 lambda!95738))))

(declare-fun bs!471642 () Bool)

(assert (= bs!471642 (and d!731708 d!731706)))

(assert (=> bs!471642 (= (and (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 (h!35151 rules!4580)))) (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (h!35151 rules!4580))))) (= lambda!95742 lambda!95741))))

(assert (=> d!731708 true))

(assert (=> d!731708 (< (dynLambda!12562 order!15835 (toChars!6258 (transformation!4513 (rule!6871 token!562)))) (dynLambda!12561 order!15833 lambda!95742))))

(assert (=> d!731708 true))

(assert (=> d!731708 (< (dynLambda!12557 order!15829 (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (dynLambda!12561 order!15833 lambda!95742))))

(assert (=> d!731708 (= (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 (rule!6871 token!562)))) (Forall!1166 lambda!95742))))

(declare-fun bs!471643 () Bool)

(assert (= bs!471643 d!731708))

(declare-fun m!2920067 () Bool)

(assert (=> bs!471643 m!2920067))

(assert (=> d!731218 d!731708))

(declare-fun d!731710 () Bool)

(declare-fun charsToBigInt!1 (List!29829) Int)

(assert (=> d!731710 (= (inv!17 (value!145868 token!562)) (= (charsToBigInt!1 (text!33593 (value!145868 token!562))) (value!145860 (value!145868 token!562))))))

(declare-fun bs!471644 () Bool)

(assert (= bs!471644 d!731710))

(declare-fun m!2920069 () Bool)

(assert (=> bs!471644 m!2920069))

(assert (=> b!2582261 d!731710))

(declare-fun d!731712 () Bool)

(assert (=> d!731712 (= (inv!40143 (tag!5003 (h!35151 (t!211794 rs!798)))) (= (mod (str.len (value!145867 (tag!5003 (h!35151 (t!211794 rs!798))))) 2) 0))))

(assert (=> b!2582670 d!731712))

(declare-fun d!731714 () Bool)

(declare-fun res!1086419 () Bool)

(declare-fun e!1630106 () Bool)

(assert (=> d!731714 (=> (not res!1086419) (not e!1630106))))

(assert (=> d!731714 (= res!1086419 (semiInverseModEq!1882 (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798))))))))

(assert (=> d!731714 (= (inv!40146 (transformation!4513 (h!35151 (t!211794 rs!798)))) e!1630106)))

(declare-fun b!2583475 () Bool)

(assert (=> b!2583475 (= e!1630106 (equivClasses!1783 (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798))))))))

(assert (= (and d!731714 res!1086419) b!2583475))

(declare-fun m!2920071 () Bool)

(assert (=> d!731714 m!2920071))

(declare-fun m!2920073 () Bool)

(assert (=> b!2583475 m!2920073))

(assert (=> b!2582670 d!731714))

(declare-fun b!2583484 () Bool)

(declare-fun e!1630111 () List!29830)

(assert (=> b!2583484 (= e!1630111 Nil!29730)))

(declare-fun b!2583485 () Bool)

(declare-fun e!1630112 () List!29830)

(assert (=> b!2583485 (= e!1630111 e!1630112)))

(declare-fun c!416596 () Bool)

(assert (=> b!2583485 (= c!416596 ((_ is Leaf!14157) (c!416335 (charsOf!2842 token!562))))))

(declare-fun b!2583486 () Bool)

(declare-fun list!11239 (IArray!18563) List!29830)

(assert (=> b!2583486 (= e!1630112 (list!11239 (xs!12263 (c!416335 (charsOf!2842 token!562)))))))

(declare-fun b!2583487 () Bool)

(assert (=> b!2583487 (= e!1630112 (++!7303 (list!11237 (left!22660 (c!416335 (charsOf!2842 token!562)))) (list!11237 (right!22990 (c!416335 (charsOf!2842 token!562))))))))

(declare-fun d!731716 () Bool)

(declare-fun c!416595 () Bool)

(assert (=> d!731716 (= c!416595 ((_ is Empty!9279) (c!416335 (charsOf!2842 token!562))))))

(assert (=> d!731716 (= (list!11237 (c!416335 (charsOf!2842 token!562))) e!1630111)))

(assert (= (and d!731716 c!416595) b!2583484))

(assert (= (and d!731716 (not c!416595)) b!2583485))

(assert (= (and b!2583485 c!416596) b!2583486))

(assert (= (and b!2583485 (not c!416596)) b!2583487))

(declare-fun m!2920075 () Bool)

(assert (=> b!2583486 m!2920075))

(declare-fun m!2920077 () Bool)

(assert (=> b!2583487 m!2920077))

(declare-fun m!2920079 () Bool)

(assert (=> b!2583487 m!2920079))

(assert (=> b!2583487 m!2920077))

(assert (=> b!2583487 m!2920079))

(declare-fun m!2920081 () Bool)

(assert (=> b!2583487 m!2920081))

(assert (=> d!731244 d!731716))

(declare-fun e!1630113 () Bool)

(assert (=> b!2582656 (= tp!819832 e!1630113)))

(declare-fun b!2583488 () Bool)

(assert (=> b!2583488 (= e!1630113 tp_is_empty!13209)))

(declare-fun b!2583491 () Bool)

(declare-fun tp!820009 () Bool)

(declare-fun tp!820008 () Bool)

(assert (=> b!2583491 (= e!1630113 (and tp!820009 tp!820008))))

(declare-fun b!2583490 () Bool)

(declare-fun tp!820005 () Bool)

(assert (=> b!2583490 (= e!1630113 tp!820005)))

(declare-fun b!2583489 () Bool)

(declare-fun tp!820007 () Bool)

(declare-fun tp!820006 () Bool)

(assert (=> b!2583489 (= e!1630113 (and tp!820007 tp!820006))))

(assert (= (and b!2582656 ((_ is ElementMatch!7657) (regOne!15827 (regex!4513 (rule!6871 token!562))))) b!2583488))

(assert (= (and b!2582656 ((_ is Concat!12393) (regOne!15827 (regex!4513 (rule!6871 token!562))))) b!2583489))

(assert (= (and b!2582656 ((_ is Star!7657) (regOne!15827 (regex!4513 (rule!6871 token!562))))) b!2583490))

(assert (= (and b!2582656 ((_ is Union!7657) (regOne!15827 (regex!4513 (rule!6871 token!562))))) b!2583491))

(declare-fun e!1630114 () Bool)

(assert (=> b!2582656 (= tp!819831 e!1630114)))

(declare-fun b!2583492 () Bool)

(assert (=> b!2583492 (= e!1630114 tp_is_empty!13209)))

(declare-fun b!2583495 () Bool)

(declare-fun tp!820014 () Bool)

(declare-fun tp!820013 () Bool)

(assert (=> b!2583495 (= e!1630114 (and tp!820014 tp!820013))))

(declare-fun b!2583494 () Bool)

(declare-fun tp!820010 () Bool)

(assert (=> b!2583494 (= e!1630114 tp!820010)))

(declare-fun b!2583493 () Bool)

(declare-fun tp!820012 () Bool)

(declare-fun tp!820011 () Bool)

(assert (=> b!2583493 (= e!1630114 (and tp!820012 tp!820011))))

(assert (= (and b!2582656 ((_ is ElementMatch!7657) (regTwo!15827 (regex!4513 (rule!6871 token!562))))) b!2583492))

(assert (= (and b!2582656 ((_ is Concat!12393) (regTwo!15827 (regex!4513 (rule!6871 token!562))))) b!2583493))

(assert (= (and b!2582656 ((_ is Star!7657) (regTwo!15827 (regex!4513 (rule!6871 token!562))))) b!2583494))

(assert (= (and b!2582656 ((_ is Union!7657) (regTwo!15827 (regex!4513 (rule!6871 token!562))))) b!2583495))

(declare-fun e!1630115 () Bool)

(assert (=> b!2582660 (= tp!819837 e!1630115)))

(declare-fun b!2583496 () Bool)

(assert (=> b!2583496 (= e!1630115 tp_is_empty!13209)))

(declare-fun b!2583499 () Bool)

(declare-fun tp!820019 () Bool)

(declare-fun tp!820018 () Bool)

(assert (=> b!2583499 (= e!1630115 (and tp!820019 tp!820018))))

(declare-fun b!2583498 () Bool)

(declare-fun tp!820015 () Bool)

(assert (=> b!2583498 (= e!1630115 tp!820015)))

(declare-fun b!2583497 () Bool)

(declare-fun tp!820017 () Bool)

(declare-fun tp!820016 () Bool)

(assert (=> b!2583497 (= e!1630115 (and tp!820017 tp!820016))))

(assert (= (and b!2582660 ((_ is ElementMatch!7657) (regOne!15827 (regex!4513 rule!570)))) b!2583496))

(assert (= (and b!2582660 ((_ is Concat!12393) (regOne!15827 (regex!4513 rule!570)))) b!2583497))

(assert (= (and b!2582660 ((_ is Star!7657) (regOne!15827 (regex!4513 rule!570)))) b!2583498))

(assert (= (and b!2582660 ((_ is Union!7657) (regOne!15827 (regex!4513 rule!570)))) b!2583499))

(declare-fun e!1630116 () Bool)

(assert (=> b!2582660 (= tp!819836 e!1630116)))

(declare-fun b!2583500 () Bool)

(assert (=> b!2583500 (= e!1630116 tp_is_empty!13209)))

(declare-fun b!2583503 () Bool)

(declare-fun tp!820024 () Bool)

(declare-fun tp!820023 () Bool)

(assert (=> b!2583503 (= e!1630116 (and tp!820024 tp!820023))))

(declare-fun b!2583502 () Bool)

(declare-fun tp!820020 () Bool)

(assert (=> b!2583502 (= e!1630116 tp!820020)))

(declare-fun b!2583501 () Bool)

(declare-fun tp!820022 () Bool)

(declare-fun tp!820021 () Bool)

(assert (=> b!2583501 (= e!1630116 (and tp!820022 tp!820021))))

(assert (= (and b!2582660 ((_ is ElementMatch!7657) (regTwo!15827 (regex!4513 rule!570)))) b!2583500))

(assert (= (and b!2582660 ((_ is Concat!12393) (regTwo!15827 (regex!4513 rule!570)))) b!2583501))

(assert (= (and b!2582660 ((_ is Star!7657) (regTwo!15827 (regex!4513 rule!570)))) b!2583502))

(assert (= (and b!2582660 ((_ is Union!7657) (regTwo!15827 (regex!4513 rule!570)))) b!2583503))

(declare-fun e!1630117 () Bool)

(assert (=> b!2582655 (= tp!819828 e!1630117)))

(declare-fun b!2583504 () Bool)

(assert (=> b!2583504 (= e!1630117 tp_is_empty!13209)))

(declare-fun b!2583507 () Bool)

(declare-fun tp!820029 () Bool)

(declare-fun tp!820028 () Bool)

(assert (=> b!2583507 (= e!1630117 (and tp!820029 tp!820028))))

(declare-fun b!2583506 () Bool)

(declare-fun tp!820025 () Bool)

(assert (=> b!2583506 (= e!1630117 tp!820025)))

(declare-fun b!2583505 () Bool)

(declare-fun tp!820027 () Bool)

(declare-fun tp!820026 () Bool)

(assert (=> b!2583505 (= e!1630117 (and tp!820027 tp!820026))))

(assert (= (and b!2582655 ((_ is ElementMatch!7657) (reg!7986 (regex!4513 (rule!6871 token!562))))) b!2583504))

(assert (= (and b!2582655 ((_ is Concat!12393) (reg!7986 (regex!4513 (rule!6871 token!562))))) b!2583505))

(assert (= (and b!2582655 ((_ is Star!7657) (reg!7986 (regex!4513 (rule!6871 token!562))))) b!2583506))

(assert (= (and b!2582655 ((_ is Union!7657) (reg!7986 (regex!4513 (rule!6871 token!562))))) b!2583507))

(declare-fun e!1630118 () Bool)

(assert (=> b!2582673 (= tp!819853 e!1630118)))

(declare-fun b!2583508 () Bool)

(assert (=> b!2583508 (= e!1630118 tp_is_empty!13209)))

(declare-fun b!2583511 () Bool)

(declare-fun tp!820034 () Bool)

(declare-fun tp!820033 () Bool)

(assert (=> b!2583511 (= e!1630118 (and tp!820034 tp!820033))))

(declare-fun b!2583510 () Bool)

(declare-fun tp!820030 () Bool)

(assert (=> b!2583510 (= e!1630118 tp!820030)))

(declare-fun b!2583509 () Bool)

(declare-fun tp!820032 () Bool)

(declare-fun tp!820031 () Bool)

(assert (=> b!2583509 (= e!1630118 (and tp!820032 tp!820031))))

(assert (= (and b!2582673 ((_ is ElementMatch!7657) (regex!4513 (h!35151 (t!211794 rules!4580))))) b!2583508))

(assert (= (and b!2582673 ((_ is Concat!12393) (regex!4513 (h!35151 (t!211794 rules!4580))))) b!2583509))

(assert (= (and b!2582673 ((_ is Star!7657) (regex!4513 (h!35151 (t!211794 rules!4580))))) b!2583510))

(assert (= (and b!2582673 ((_ is Union!7657) (regex!4513 (h!35151 (t!211794 rules!4580))))) b!2583511))

(declare-fun b!2583514 () Bool)

(declare-fun b_free!72685 () Bool)

(declare-fun b_next!73389 () Bool)

(assert (=> b!2583514 (= b_free!72685 (not b_next!73389))))

(declare-fun tb!140665 () Bool)

(declare-fun t!212024 () Bool)

(assert (=> (and b!2583514 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!212024) tb!140665))

(declare-fun result!174866 () Bool)

(assert (= result!174866 result!174700))

(assert (=> d!731372 t!212024))

(declare-fun tb!140667 () Bool)

(declare-fun t!212026 () Bool)

(assert (=> (and b!2583514 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 rule!570))) t!212026) tb!140667))

(declare-fun result!174868 () Bool)

(assert (= result!174868 result!174748))

(assert (=> d!731422 t!212026))

(declare-fun t!212028 () Bool)

(declare-fun tb!140669 () Bool)

(assert (=> (and b!2583514 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 rule!570))) t!212028) tb!140669))

(declare-fun result!174870 () Bool)

(assert (= result!174870 result!174664))

(assert (=> d!731314 t!212028))

(declare-fun t!212030 () Bool)

(declare-fun tb!140671 () Bool)

(assert (=> (and b!2583514 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212030) tb!140671))

(declare-fun result!174872 () Bool)

(assert (= result!174872 result!174854))

(assert (=> d!731686 t!212030))

(assert (=> d!731432 t!212026))

(declare-fun tp!820037 () Bool)

(declare-fun b_and!189219 () Bool)

(assert (=> b!2583514 (= tp!820037 (and (=> t!212026 result!174868) (=> t!212030 result!174872) (=> t!212028 result!174870) (=> t!212024 result!174866) b_and!189219))))

(declare-fun b_free!72687 () Bool)

(declare-fun b_next!73391 () Bool)

(assert (=> b!2583514 (= b_free!72687 (not b_next!73391))))

(declare-fun tb!140673 () Bool)

(declare-fun t!212032 () Bool)

(assert (=> (and b!2583514 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!212032) tb!140673))

(declare-fun result!174874 () Bool)

(assert (= result!174874 result!174640))

(assert (=> d!731246 t!212032))

(declare-fun tb!140675 () Bool)

(declare-fun t!212034 () Bool)

(assert (=> (and b!2583514 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!212034) tb!140675))

(declare-fun result!174876 () Bool)

(assert (= result!174876 result!174712))

(assert (=> d!731384 t!212034))

(assert (=> b!2582502 t!212032))

(declare-fun tb!140677 () Bool)

(declare-fun t!212036 () Bool)

(assert (=> (and b!2583514 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toChars!6258 (transformation!4513 rule!570))) t!212036) tb!140677))

(declare-fun result!174878 () Bool)

(assert (= result!174878 result!174736))

(assert (=> d!731422 t!212036))

(declare-fun t!212038 () Bool)

(declare-fun tb!140679 () Bool)

(assert (=> (and b!2583514 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212038) tb!140679))

(declare-fun result!174880 () Bool)

(assert (= result!174880 result!174724))

(assert (=> d!731414 t!212038))

(declare-fun b_and!189221 () Bool)

(declare-fun tp!820035 () Bool)

(assert (=> b!2583514 (= tp!820035 (and (=> t!212038 result!174880) (=> t!212032 result!174874) (=> t!212034 result!174876) (=> t!212036 result!174878) b_and!189221))))

(declare-fun e!1630119 () Bool)

(assert (=> b!2583514 (= e!1630119 (and tp!820037 tp!820035))))

(declare-fun b!2583513 () Bool)

(declare-fun tp!820038 () Bool)

(declare-fun e!1630120 () Bool)

(assert (=> b!2583513 (= e!1630120 (and tp!820038 (inv!40143 (tag!5003 (h!35151 (t!211794 (t!211794 rules!4580))))) (inv!40146 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) e!1630119))))

(declare-fun b!2583512 () Bool)

(declare-fun e!1630122 () Bool)

(declare-fun tp!820036 () Bool)

(assert (=> b!2583512 (= e!1630122 (and e!1630120 tp!820036))))

(assert (=> b!2582672 (= tp!819851 e!1630122)))

(assert (= b!2583513 b!2583514))

(assert (= b!2583512 b!2583513))

(assert (= (and b!2582672 ((_ is Cons!29731) (t!211794 (t!211794 rules!4580)))) b!2583512))

(declare-fun m!2920083 () Bool)

(assert (=> b!2583513 m!2920083))

(declare-fun m!2920085 () Bool)

(assert (=> b!2583513 m!2920085))

(declare-fun b!2583515 () Bool)

(declare-fun e!1630123 () Bool)

(declare-fun tp!820039 () Bool)

(assert (=> b!2583515 (= e!1630123 (and tp_is_empty!13209 tp!820039))))

(assert (=> b!2582679 (= tp!819856 e!1630123)))

(assert (= (and b!2582679 ((_ is Cons!29730) (t!211793 (originalCharacters!5279 token!562)))) b!2583515))

(declare-fun e!1630124 () Bool)

(assert (=> b!2582686 (= tp!819865 e!1630124)))

(declare-fun b!2583516 () Bool)

(assert (=> b!2583516 (= e!1630124 tp_is_empty!13209)))

(declare-fun b!2583519 () Bool)

(declare-fun tp!820044 () Bool)

(declare-fun tp!820043 () Bool)

(assert (=> b!2583519 (= e!1630124 (and tp!820044 tp!820043))))

(declare-fun b!2583518 () Bool)

(declare-fun tp!820040 () Bool)

(assert (=> b!2583518 (= e!1630124 tp!820040)))

(declare-fun b!2583517 () Bool)

(declare-fun tp!820042 () Bool)

(declare-fun tp!820041 () Bool)

(assert (=> b!2583517 (= e!1630124 (and tp!820042 tp!820041))))

(assert (= (and b!2582686 ((_ is ElementMatch!7657) (regOne!15826 (regex!4513 (h!35151 rs!798))))) b!2583516))

(assert (= (and b!2582686 ((_ is Concat!12393) (regOne!15826 (regex!4513 (h!35151 rs!798))))) b!2583517))

(assert (= (and b!2582686 ((_ is Star!7657) (regOne!15826 (regex!4513 (h!35151 rs!798))))) b!2583518))

(assert (= (and b!2582686 ((_ is Union!7657) (regOne!15826 (regex!4513 (h!35151 rs!798))))) b!2583519))

(declare-fun e!1630125 () Bool)

(assert (=> b!2582686 (= tp!819864 e!1630125)))

(declare-fun b!2583520 () Bool)

(assert (=> b!2583520 (= e!1630125 tp_is_empty!13209)))

(declare-fun b!2583523 () Bool)

(declare-fun tp!820049 () Bool)

(declare-fun tp!820048 () Bool)

(assert (=> b!2583523 (= e!1630125 (and tp!820049 tp!820048))))

(declare-fun b!2583522 () Bool)

(declare-fun tp!820045 () Bool)

(assert (=> b!2583522 (= e!1630125 tp!820045)))

(declare-fun b!2583521 () Bool)

(declare-fun tp!820047 () Bool)

(declare-fun tp!820046 () Bool)

(assert (=> b!2583521 (= e!1630125 (and tp!820047 tp!820046))))

(assert (= (and b!2582686 ((_ is ElementMatch!7657) (regTwo!15826 (regex!4513 (h!35151 rs!798))))) b!2583520))

(assert (= (and b!2582686 ((_ is Concat!12393) (regTwo!15826 (regex!4513 (h!35151 rs!798))))) b!2583521))

(assert (= (and b!2582686 ((_ is Star!7657) (regTwo!15826 (regex!4513 (h!35151 rs!798))))) b!2583522))

(assert (= (and b!2582686 ((_ is Union!7657) (regTwo!15826 (regex!4513 (h!35151 rs!798))))) b!2583523))

(declare-fun tp!820057 () Bool)

(declare-fun b!2583532 () Bool)

(declare-fun tp!820058 () Bool)

(declare-fun e!1630130 () Bool)

(assert (=> b!2583532 (= e!1630130 (and (inv!40150 (left!22660 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))) tp!820057 (inv!40150 (right!22990 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))) tp!820058))))

(declare-fun b!2583534 () Bool)

(declare-fun e!1630131 () Bool)

(declare-fun tp!820056 () Bool)

(assert (=> b!2583534 (= e!1630131 tp!820056)))

(declare-fun b!2583533 () Bool)

(declare-fun inv!40156 (IArray!18563) Bool)

(assert (=> b!2583533 (= e!1630130 (and (inv!40156 (xs!12263 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))) e!1630131))))

(assert (=> b!2582376 (= tp!819766 (and (inv!40150 (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562)))) e!1630130))))

(assert (= (and b!2582376 ((_ is Node!9279) (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))) b!2583532))

(assert (= b!2583533 b!2583534))

(assert (= (and b!2582376 ((_ is Leaf!14157) (c!416335 (dynLambda!12553 (toChars!6258 (transformation!4513 (rule!6871 token!562))) (value!145868 token!562))))) b!2583533))

(declare-fun m!2920087 () Bool)

(assert (=> b!2583532 m!2920087))

(declare-fun m!2920089 () Bool)

(assert (=> b!2583532 m!2920089))

(declare-fun m!2920091 () Bool)

(assert (=> b!2583533 m!2920091))

(assert (=> b!2582376 m!2918873))

(declare-fun e!1630132 () Bool)

(assert (=> b!2582683 (= tp!819858 e!1630132)))

(declare-fun b!2583535 () Bool)

(assert (=> b!2583535 (= e!1630132 tp_is_empty!13209)))

(declare-fun b!2583538 () Bool)

(declare-fun tp!820063 () Bool)

(declare-fun tp!820062 () Bool)

(assert (=> b!2583538 (= e!1630132 (and tp!820063 tp!820062))))

(declare-fun b!2583537 () Bool)

(declare-fun tp!820059 () Bool)

(assert (=> b!2583537 (= e!1630132 tp!820059)))

(declare-fun b!2583536 () Bool)

(declare-fun tp!820061 () Bool)

(declare-fun tp!820060 () Bool)

(assert (=> b!2583536 (= e!1630132 (and tp!820061 tp!820060))))

(assert (= (and b!2582683 ((_ is ElementMatch!7657) (reg!7986 (regex!4513 (h!35151 rules!4580))))) b!2583535))

(assert (= (and b!2582683 ((_ is Concat!12393) (reg!7986 (regex!4513 (h!35151 rules!4580))))) b!2583536))

(assert (= (and b!2582683 ((_ is Star!7657) (reg!7986 (regex!4513 (h!35151 rules!4580))))) b!2583537))

(assert (= (and b!2582683 ((_ is Union!7657) (reg!7986 (regex!4513 (h!35151 rules!4580))))) b!2583538))

(declare-fun b!2583541 () Bool)

(declare-fun b_free!72689 () Bool)

(declare-fun b_next!73393 () Bool)

(assert (=> b!2583541 (= b_free!72689 (not b_next!73393))))

(declare-fun tb!140681 () Bool)

(declare-fun t!212040 () Bool)

(assert (=> (and b!2583541 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!212040) tb!140681))

(declare-fun result!174884 () Bool)

(assert (= result!174884 result!174700))

(assert (=> d!731372 t!212040))

(declare-fun tb!140683 () Bool)

(declare-fun t!212042 () Bool)

(assert (=> (and b!2583541 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 rule!570))) t!212042) tb!140683))

(declare-fun result!174886 () Bool)

(assert (= result!174886 result!174748))

(assert (=> d!731422 t!212042))

(declare-fun tb!140685 () Bool)

(declare-fun t!212044 () Bool)

(assert (=> (and b!2583541 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 rule!570))) t!212044) tb!140685))

(declare-fun result!174888 () Bool)

(assert (= result!174888 result!174664))

(assert (=> d!731314 t!212044))

(declare-fun tb!140687 () Bool)

(declare-fun t!212046 () Bool)

(assert (=> (and b!2583541 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212046) tb!140687))

(declare-fun result!174890 () Bool)

(assert (= result!174890 result!174854))

(assert (=> d!731686 t!212046))

(assert (=> d!731432 t!212042))

(declare-fun b_and!189223 () Bool)

(declare-fun tp!820066 () Bool)

(assert (=> b!2583541 (= tp!820066 (and (=> t!212042 result!174886) (=> t!212046 result!174890) (=> t!212044 result!174888) (=> t!212040 result!174884) b_and!189223))))

(declare-fun b_free!72691 () Bool)

(declare-fun b_next!73395 () Bool)

(assert (=> b!2583541 (= b_free!72691 (not b_next!73395))))

(declare-fun t!212048 () Bool)

(declare-fun tb!140689 () Bool)

(assert (=> (and b!2583541 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toChars!6258 (transformation!4513 (rule!6871 token!562)))) t!212048) tb!140689))

(declare-fun result!174892 () Bool)

(assert (= result!174892 result!174640))

(assert (=> d!731246 t!212048))

(declare-fun tb!140691 () Bool)

(declare-fun t!212050 () Bool)

(assert (=> (and b!2583541 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908381)))))) t!212050) tb!140691))

(declare-fun result!174894 () Bool)

(assert (= result!174894 result!174712))

(assert (=> d!731384 t!212050))

(assert (=> b!2582502 t!212048))

(declare-fun t!212052 () Bool)

(declare-fun tb!140693 () Bool)

(assert (=> (and b!2583541 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toChars!6258 (transformation!4513 rule!570))) t!212052) tb!140693))

(declare-fun result!174896 () Bool)

(assert (= result!174896 result!174736))

(assert (=> d!731422 t!212052))

(declare-fun tb!140695 () Bool)

(declare-fun t!212054 () Bool)

(assert (=> (and b!2583541 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toChars!6258 (transformation!4513 (rule!6871 (_1!17385 (get!9369 lt!908359)))))) t!212054) tb!140695))

(declare-fun result!174898 () Bool)

(assert (= result!174898 result!174724))

(assert (=> d!731414 t!212054))

(declare-fun b_and!189225 () Bool)

(declare-fun tp!820064 () Bool)

(assert (=> b!2583541 (= tp!820064 (and (=> t!212052 result!174896) (=> t!212054 result!174898) (=> t!212048 result!174892) (=> t!212050 result!174894) b_and!189225))))

(declare-fun e!1630133 () Bool)

(assert (=> b!2583541 (= e!1630133 (and tp!820066 tp!820064))))

(declare-fun e!1630134 () Bool)

(declare-fun b!2583540 () Bool)

(declare-fun tp!820067 () Bool)

(assert (=> b!2583540 (= e!1630134 (and tp!820067 (inv!40143 (tag!5003 (h!35151 (t!211794 (t!211794 rs!798))))) (inv!40146 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) e!1630133))))

(declare-fun b!2583539 () Bool)

(declare-fun e!1630136 () Bool)

(declare-fun tp!820065 () Bool)

(assert (=> b!2583539 (= e!1630136 (and e!1630134 tp!820065))))

(assert (=> b!2582669 (= tp!819847 e!1630136)))

(assert (= b!2583540 b!2583541))

(assert (= b!2583539 b!2583540))

(assert (= (and b!2582669 ((_ is Cons!29731) (t!211794 (t!211794 rs!798)))) b!2583539))

(declare-fun m!2920093 () Bool)

(assert (=> b!2583540 m!2920093))

(declare-fun m!2920095 () Bool)

(assert (=> b!2583540 m!2920095))

(declare-fun e!1630137 () Bool)

(assert (=> b!2582687 (= tp!819863 e!1630137)))

(declare-fun b!2583542 () Bool)

(assert (=> b!2583542 (= e!1630137 tp_is_empty!13209)))

(declare-fun b!2583545 () Bool)

(declare-fun tp!820072 () Bool)

(declare-fun tp!820071 () Bool)

(assert (=> b!2583545 (= e!1630137 (and tp!820072 tp!820071))))

(declare-fun b!2583544 () Bool)

(declare-fun tp!820068 () Bool)

(assert (=> b!2583544 (= e!1630137 tp!820068)))

(declare-fun b!2583543 () Bool)

(declare-fun tp!820070 () Bool)

(declare-fun tp!820069 () Bool)

(assert (=> b!2583543 (= e!1630137 (and tp!820070 tp!820069))))

(assert (= (and b!2582687 ((_ is ElementMatch!7657) (reg!7986 (regex!4513 (h!35151 rs!798))))) b!2583542))

(assert (= (and b!2582687 ((_ is Concat!12393) (reg!7986 (regex!4513 (h!35151 rs!798))))) b!2583543))

(assert (= (and b!2582687 ((_ is Star!7657) (reg!7986 (regex!4513 (h!35151 rs!798))))) b!2583544))

(assert (= (and b!2582687 ((_ is Union!7657) (reg!7986 (regex!4513 (h!35151 rs!798))))) b!2583545))

(declare-fun e!1630138 () Bool)

(assert (=> b!2582682 (= tp!819860 e!1630138)))

(declare-fun b!2583546 () Bool)

(assert (=> b!2583546 (= e!1630138 tp_is_empty!13209)))

(declare-fun b!2583549 () Bool)

(declare-fun tp!820077 () Bool)

(declare-fun tp!820076 () Bool)

(assert (=> b!2583549 (= e!1630138 (and tp!820077 tp!820076))))

(declare-fun b!2583548 () Bool)

(declare-fun tp!820073 () Bool)

(assert (=> b!2583548 (= e!1630138 tp!820073)))

(declare-fun b!2583547 () Bool)

(declare-fun tp!820075 () Bool)

(declare-fun tp!820074 () Bool)

(assert (=> b!2583547 (= e!1630138 (and tp!820075 tp!820074))))

(assert (= (and b!2582682 ((_ is ElementMatch!7657) (regOne!15826 (regex!4513 (h!35151 rules!4580))))) b!2583546))

(assert (= (and b!2582682 ((_ is Concat!12393) (regOne!15826 (regex!4513 (h!35151 rules!4580))))) b!2583547))

(assert (= (and b!2582682 ((_ is Star!7657) (regOne!15826 (regex!4513 (h!35151 rules!4580))))) b!2583548))

(assert (= (and b!2582682 ((_ is Union!7657) (regOne!15826 (regex!4513 (h!35151 rules!4580))))) b!2583549))

(declare-fun e!1630139 () Bool)

(assert (=> b!2582682 (= tp!819859 e!1630139)))

(declare-fun b!2583550 () Bool)

(assert (=> b!2583550 (= e!1630139 tp_is_empty!13209)))

(declare-fun b!2583553 () Bool)

(declare-fun tp!820082 () Bool)

(declare-fun tp!820081 () Bool)

(assert (=> b!2583553 (= e!1630139 (and tp!820082 tp!820081))))

(declare-fun b!2583552 () Bool)

(declare-fun tp!820078 () Bool)

(assert (=> b!2583552 (= e!1630139 tp!820078)))

(declare-fun b!2583551 () Bool)

(declare-fun tp!820080 () Bool)

(declare-fun tp!820079 () Bool)

(assert (=> b!2583551 (= e!1630139 (and tp!820080 tp!820079))))

(assert (= (and b!2582682 ((_ is ElementMatch!7657) (regTwo!15826 (regex!4513 (h!35151 rules!4580))))) b!2583550))

(assert (= (and b!2582682 ((_ is Concat!12393) (regTwo!15826 (regex!4513 (h!35151 rules!4580))))) b!2583551))

(assert (= (and b!2582682 ((_ is Star!7657) (regTwo!15826 (regex!4513 (h!35151 rules!4580))))) b!2583552))

(assert (= (and b!2582682 ((_ is Union!7657) (regTwo!15826 (regex!4513 (h!35151 rules!4580))))) b!2583553))

(declare-fun e!1630140 () Bool)

(assert (=> b!2582684 (= tp!819862 e!1630140)))

(declare-fun b!2583554 () Bool)

(assert (=> b!2583554 (= e!1630140 tp_is_empty!13209)))

(declare-fun b!2583557 () Bool)

(declare-fun tp!820087 () Bool)

(declare-fun tp!820086 () Bool)

(assert (=> b!2583557 (= e!1630140 (and tp!820087 tp!820086))))

(declare-fun b!2583556 () Bool)

(declare-fun tp!820083 () Bool)

(assert (=> b!2583556 (= e!1630140 tp!820083)))

(declare-fun b!2583555 () Bool)

(declare-fun tp!820085 () Bool)

(declare-fun tp!820084 () Bool)

(assert (=> b!2583555 (= e!1630140 (and tp!820085 tp!820084))))

(assert (= (and b!2582684 ((_ is ElementMatch!7657) (regOne!15827 (regex!4513 (h!35151 rules!4580))))) b!2583554))

(assert (= (and b!2582684 ((_ is Concat!12393) (regOne!15827 (regex!4513 (h!35151 rules!4580))))) b!2583555))

(assert (= (and b!2582684 ((_ is Star!7657) (regOne!15827 (regex!4513 (h!35151 rules!4580))))) b!2583556))

(assert (= (and b!2582684 ((_ is Union!7657) (regOne!15827 (regex!4513 (h!35151 rules!4580))))) b!2583557))

(declare-fun e!1630141 () Bool)

(assert (=> b!2582684 (= tp!819861 e!1630141)))

(declare-fun b!2583558 () Bool)

(assert (=> b!2583558 (= e!1630141 tp_is_empty!13209)))

(declare-fun b!2583561 () Bool)

(declare-fun tp!820092 () Bool)

(declare-fun tp!820091 () Bool)

(assert (=> b!2583561 (= e!1630141 (and tp!820092 tp!820091))))

(declare-fun b!2583560 () Bool)

(declare-fun tp!820088 () Bool)

(assert (=> b!2583560 (= e!1630141 tp!820088)))

(declare-fun b!2583559 () Bool)

(declare-fun tp!820090 () Bool)

(declare-fun tp!820089 () Bool)

(assert (=> b!2583559 (= e!1630141 (and tp!820090 tp!820089))))

(assert (= (and b!2582684 ((_ is ElementMatch!7657) (regTwo!15827 (regex!4513 (h!35151 rules!4580))))) b!2583558))

(assert (= (and b!2582684 ((_ is Concat!12393) (regTwo!15827 (regex!4513 (h!35151 rules!4580))))) b!2583559))

(assert (= (and b!2582684 ((_ is Star!7657) (regTwo!15827 (regex!4513 (h!35151 rules!4580))))) b!2583560))

(assert (= (and b!2582684 ((_ is Union!7657) (regTwo!15827 (regex!4513 (h!35151 rules!4580))))) b!2583561))

(declare-fun e!1630142 () Bool)

(assert (=> b!2582670 (= tp!819849 e!1630142)))

(declare-fun b!2583562 () Bool)

(assert (=> b!2583562 (= e!1630142 tp_is_empty!13209)))

(declare-fun b!2583565 () Bool)

(declare-fun tp!820097 () Bool)

(declare-fun tp!820096 () Bool)

(assert (=> b!2583565 (= e!1630142 (and tp!820097 tp!820096))))

(declare-fun b!2583564 () Bool)

(declare-fun tp!820093 () Bool)

(assert (=> b!2583564 (= e!1630142 tp!820093)))

(declare-fun b!2583563 () Bool)

(declare-fun tp!820095 () Bool)

(declare-fun tp!820094 () Bool)

(assert (=> b!2583563 (= e!1630142 (and tp!820095 tp!820094))))

(assert (= (and b!2582670 ((_ is ElementMatch!7657) (regex!4513 (h!35151 (t!211794 rs!798))))) b!2583562))

(assert (= (and b!2582670 ((_ is Concat!12393) (regex!4513 (h!35151 (t!211794 rs!798))))) b!2583563))

(assert (= (and b!2582670 ((_ is Star!7657) (regex!4513 (h!35151 (t!211794 rs!798))))) b!2583564))

(assert (= (and b!2582670 ((_ is Union!7657) (regex!4513 (h!35151 (t!211794 rs!798))))) b!2583565))

(declare-fun e!1630143 () Bool)

(assert (=> b!2582688 (= tp!819867 e!1630143)))

(declare-fun b!2583566 () Bool)

(assert (=> b!2583566 (= e!1630143 tp_is_empty!13209)))

(declare-fun b!2583569 () Bool)

(declare-fun tp!820102 () Bool)

(declare-fun tp!820101 () Bool)

(assert (=> b!2583569 (= e!1630143 (and tp!820102 tp!820101))))

(declare-fun b!2583568 () Bool)

(declare-fun tp!820098 () Bool)

(assert (=> b!2583568 (= e!1630143 tp!820098)))

(declare-fun b!2583567 () Bool)

(declare-fun tp!820100 () Bool)

(declare-fun tp!820099 () Bool)

(assert (=> b!2583567 (= e!1630143 (and tp!820100 tp!820099))))

(assert (= (and b!2582688 ((_ is ElementMatch!7657) (regOne!15827 (regex!4513 (h!35151 rs!798))))) b!2583566))

(assert (= (and b!2582688 ((_ is Concat!12393) (regOne!15827 (regex!4513 (h!35151 rs!798))))) b!2583567))

(assert (= (and b!2582688 ((_ is Star!7657) (regOne!15827 (regex!4513 (h!35151 rs!798))))) b!2583568))

(assert (= (and b!2582688 ((_ is Union!7657) (regOne!15827 (regex!4513 (h!35151 rs!798))))) b!2583569))

(declare-fun e!1630144 () Bool)

(assert (=> b!2582688 (= tp!819866 e!1630144)))

(declare-fun b!2583570 () Bool)

(assert (=> b!2583570 (= e!1630144 tp_is_empty!13209)))

(declare-fun b!2583573 () Bool)

(declare-fun tp!820107 () Bool)

(declare-fun tp!820106 () Bool)

(assert (=> b!2583573 (= e!1630144 (and tp!820107 tp!820106))))

(declare-fun b!2583572 () Bool)

(declare-fun tp!820103 () Bool)

(assert (=> b!2583572 (= e!1630144 tp!820103)))

(declare-fun b!2583571 () Bool)

(declare-fun tp!820105 () Bool)

(declare-fun tp!820104 () Bool)

(assert (=> b!2583571 (= e!1630144 (and tp!820105 tp!820104))))

(assert (= (and b!2582688 ((_ is ElementMatch!7657) (regTwo!15827 (regex!4513 (h!35151 rs!798))))) b!2583570))

(assert (= (and b!2582688 ((_ is Concat!12393) (regTwo!15827 (regex!4513 (h!35151 rs!798))))) b!2583571))

(assert (= (and b!2582688 ((_ is Star!7657) (regTwo!15827 (regex!4513 (h!35151 rs!798))))) b!2583572))

(assert (= (and b!2582688 ((_ is Union!7657) (regTwo!15827 (regex!4513 (h!35151 rs!798))))) b!2583573))

(declare-fun e!1630145 () Bool)

(assert (=> b!2582658 (= tp!819835 e!1630145)))

(declare-fun b!2583574 () Bool)

(assert (=> b!2583574 (= e!1630145 tp_is_empty!13209)))

(declare-fun b!2583577 () Bool)

(declare-fun tp!820112 () Bool)

(declare-fun tp!820111 () Bool)

(assert (=> b!2583577 (= e!1630145 (and tp!820112 tp!820111))))

(declare-fun b!2583576 () Bool)

(declare-fun tp!820108 () Bool)

(assert (=> b!2583576 (= e!1630145 tp!820108)))

(declare-fun b!2583575 () Bool)

(declare-fun tp!820110 () Bool)

(declare-fun tp!820109 () Bool)

(assert (=> b!2583575 (= e!1630145 (and tp!820110 tp!820109))))

(assert (= (and b!2582658 ((_ is ElementMatch!7657) (regOne!15826 (regex!4513 rule!570)))) b!2583574))

(assert (= (and b!2582658 ((_ is Concat!12393) (regOne!15826 (regex!4513 rule!570)))) b!2583575))

(assert (= (and b!2582658 ((_ is Star!7657) (regOne!15826 (regex!4513 rule!570)))) b!2583576))

(assert (= (and b!2582658 ((_ is Union!7657) (regOne!15826 (regex!4513 rule!570)))) b!2583577))

(declare-fun e!1630146 () Bool)

(assert (=> b!2582658 (= tp!819834 e!1630146)))

(declare-fun b!2583578 () Bool)

(assert (=> b!2583578 (= e!1630146 tp_is_empty!13209)))

(declare-fun b!2583581 () Bool)

(declare-fun tp!820117 () Bool)

(declare-fun tp!820116 () Bool)

(assert (=> b!2583581 (= e!1630146 (and tp!820117 tp!820116))))

(declare-fun b!2583580 () Bool)

(declare-fun tp!820113 () Bool)

(assert (=> b!2583580 (= e!1630146 tp!820113)))

(declare-fun b!2583579 () Bool)

(declare-fun tp!820115 () Bool)

(declare-fun tp!820114 () Bool)

(assert (=> b!2583579 (= e!1630146 (and tp!820115 tp!820114))))

(assert (= (and b!2582658 ((_ is ElementMatch!7657) (regTwo!15826 (regex!4513 rule!570)))) b!2583578))

(assert (= (and b!2582658 ((_ is Concat!12393) (regTwo!15826 (regex!4513 rule!570)))) b!2583579))

(assert (= (and b!2582658 ((_ is Star!7657) (regTwo!15826 (regex!4513 rule!570)))) b!2583580))

(assert (= (and b!2582658 ((_ is Union!7657) (regTwo!15826 (regex!4513 rule!570)))) b!2583581))

(declare-fun b!2583582 () Bool)

(declare-fun e!1630147 () Bool)

(declare-fun tp!820118 () Bool)

(assert (=> b!2583582 (= e!1630147 (and tp_is_empty!13209 tp!820118))))

(assert (=> b!2582680 (= tp!819857 e!1630147)))

(assert (= (and b!2582680 ((_ is Cons!29730) (t!211793 (t!211793 input!3654)))) b!2583582))

(declare-fun e!1630148 () Bool)

(assert (=> b!2582659 (= tp!819833 e!1630148)))

(declare-fun b!2583583 () Bool)

(assert (=> b!2583583 (= e!1630148 tp_is_empty!13209)))

(declare-fun b!2583586 () Bool)

(declare-fun tp!820123 () Bool)

(declare-fun tp!820122 () Bool)

(assert (=> b!2583586 (= e!1630148 (and tp!820123 tp!820122))))

(declare-fun b!2583585 () Bool)

(declare-fun tp!820119 () Bool)

(assert (=> b!2583585 (= e!1630148 tp!820119)))

(declare-fun b!2583584 () Bool)

(declare-fun tp!820121 () Bool)

(declare-fun tp!820120 () Bool)

(assert (=> b!2583584 (= e!1630148 (and tp!820121 tp!820120))))

(assert (= (and b!2582659 ((_ is ElementMatch!7657) (reg!7986 (regex!4513 rule!570)))) b!2583583))

(assert (= (and b!2582659 ((_ is Concat!12393) (reg!7986 (regex!4513 rule!570)))) b!2583584))

(assert (= (and b!2582659 ((_ is Star!7657) (reg!7986 (regex!4513 rule!570)))) b!2583585))

(assert (= (and b!2582659 ((_ is Union!7657) (reg!7986 (regex!4513 rule!570)))) b!2583586))

(declare-fun b!2583587 () Bool)

(declare-fun e!1630149 () Bool)

(declare-fun tp!820124 () Bool)

(assert (=> b!2583587 (= e!1630149 (and tp_is_empty!13209 tp!820124))))

(assert (=> b!2582689 (= tp!819868 e!1630149)))

(assert (= (and b!2582689 ((_ is Cons!29730) (t!211793 (t!211793 suffix!1684)))) b!2583587))

(declare-fun e!1630150 () Bool)

(assert (=> b!2582654 (= tp!819830 e!1630150)))

(declare-fun b!2583588 () Bool)

(assert (=> b!2583588 (= e!1630150 tp_is_empty!13209)))

(declare-fun b!2583591 () Bool)

(declare-fun tp!820129 () Bool)

(declare-fun tp!820128 () Bool)

(assert (=> b!2583591 (= e!1630150 (and tp!820129 tp!820128))))

(declare-fun b!2583590 () Bool)

(declare-fun tp!820125 () Bool)

(assert (=> b!2583590 (= e!1630150 tp!820125)))

(declare-fun b!2583589 () Bool)

(declare-fun tp!820127 () Bool)

(declare-fun tp!820126 () Bool)

(assert (=> b!2583589 (= e!1630150 (and tp!820127 tp!820126))))

(assert (= (and b!2582654 ((_ is ElementMatch!7657) (regOne!15826 (regex!4513 (rule!6871 token!562))))) b!2583588))

(assert (= (and b!2582654 ((_ is Concat!12393) (regOne!15826 (regex!4513 (rule!6871 token!562))))) b!2583589))

(assert (= (and b!2582654 ((_ is Star!7657) (regOne!15826 (regex!4513 (rule!6871 token!562))))) b!2583590))

(assert (= (and b!2582654 ((_ is Union!7657) (regOne!15826 (regex!4513 (rule!6871 token!562))))) b!2583591))

(declare-fun e!1630151 () Bool)

(assert (=> b!2582654 (= tp!819829 e!1630151)))

(declare-fun b!2583592 () Bool)

(assert (=> b!2583592 (= e!1630151 tp_is_empty!13209)))

(declare-fun b!2583595 () Bool)

(declare-fun tp!820134 () Bool)

(declare-fun tp!820133 () Bool)

(assert (=> b!2583595 (= e!1630151 (and tp!820134 tp!820133))))

(declare-fun b!2583594 () Bool)

(declare-fun tp!820130 () Bool)

(assert (=> b!2583594 (= e!1630151 tp!820130)))

(declare-fun b!2583593 () Bool)

(declare-fun tp!820132 () Bool)

(declare-fun tp!820131 () Bool)

(assert (=> b!2583593 (= e!1630151 (and tp!820132 tp!820131))))

(assert (= (and b!2582654 ((_ is ElementMatch!7657) (regTwo!15826 (regex!4513 (rule!6871 token!562))))) b!2583592))

(assert (= (and b!2582654 ((_ is Concat!12393) (regTwo!15826 (regex!4513 (rule!6871 token!562))))) b!2583593))

(assert (= (and b!2582654 ((_ is Star!7657) (regTwo!15826 (regex!4513 (rule!6871 token!562))))) b!2583594))

(assert (= (and b!2582654 ((_ is Union!7657) (regTwo!15826 (regex!4513 (rule!6871 token!562))))) b!2583595))

(declare-fun b_lambda!76677 () Bool)

(assert (= b_lambda!76661 (or d!731248 b_lambda!76677)))

(declare-fun bs!471645 () Bool)

(declare-fun d!731718 () Bool)

(assert (= bs!471645 (and d!731718 d!731248)))

(assert (=> bs!471645 (= (dynLambda!12559 lambda!95699 (h!35151 (t!211794 rs!798))) (ruleValid!1519 thiss!28211 (h!35151 (t!211794 rs!798))))))

(assert (=> bs!471645 m!2919803))

(assert (=> b!2583184 d!731718))

(declare-fun b_lambda!76679 () Bool)

(assert (= b_lambda!76635 (or d!731304 b_lambda!76679)))

(declare-fun bs!471646 () Bool)

(declare-fun d!731720 () Bool)

(assert (= bs!471646 (and d!731720 d!731304)))

(assert (=> bs!471646 (= (dynLambda!12559 lambda!95700 (h!35151 rs!798)) (ruleValid!1519 thiss!28211 (h!35151 rs!798)))))

(assert (=> bs!471646 m!2919239))

(assert (=> b!2582781 d!731720))

(declare-fun b_lambda!76681 () Bool)

(assert (= b_lambda!76643 (or (and b!2582212 b_free!72653 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582671 b_free!72669 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2583541 b_free!72689 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582205 b_free!72649 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2583514 b_free!72685 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582674 b_free!72673 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582204 b_free!72657 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582215 b_free!72645) b_lambda!76681)))

(declare-fun b_lambda!76683 () Bool)

(assert (= b_lambda!76641 (or (and b!2582671 b_free!72671 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2583514 b_free!72687 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2583541 b_free!72691 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2582205 b_free!72651 (= (toChars!6258 (transformation!4513 (h!35151 rs!798))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2582674 b_free!72675 (= (toChars!6258 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2582215 b_free!72647) (and b!2582204 b_free!72659 (= (toChars!6258 (transformation!4513 (h!35151 rules!4580))) (toChars!6258 (transformation!4513 rule!570)))) (and b!2582212 b_free!72655 (= (toChars!6258 (transformation!4513 (rule!6871 token!562))) (toChars!6258 (transformation!4513 rule!570)))) b_lambda!76683)))

(declare-fun b_lambda!76685 () Bool)

(assert (= b_lambda!76645 (or (and b!2582212 b_free!72653 (= (toValue!6399 (transformation!4513 (rule!6871 token!562))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582671 b_free!72669 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rs!798)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2583541 b_free!72689 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rs!798))))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582205 b_free!72649 (= (toValue!6399 (transformation!4513 (h!35151 rs!798))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2583514 b_free!72685 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 (t!211794 rules!4580))))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582674 b_free!72673 (= (toValue!6399 (transformation!4513 (h!35151 (t!211794 rules!4580)))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582204 b_free!72657 (= (toValue!6399 (transformation!4513 (h!35151 rules!4580))) (toValue!6399 (transformation!4513 rule!570)))) (and b!2582215 b_free!72645) b_lambda!76685)))

(check-sat (not d!731562) (not b!2582894) (not d!731374) (not b!2583503) (not b!2583181) (not b!2583537) tp_is_empty!13209 (not bm!166895) (not b!2583424) (not b!2583561) (not bm!166881) (not d!731698) (not b!2583427) (not bm!166818) (not d!731568) (not d!731706) b_and!189101 (not b!2582937) (not b!2583544) (not d!731558) (not b_next!73379) (not b!2583428) (not d!731442) (not b!2583591) (not b!2583497) (not d!731550) (not b_next!73363) (not d!731430) (not b!2583453) (not b_next!73361) (not bm!166806) (not b!2582790) (not b!2582785) (not b!2583593) (not b!2583595) (not b!2583493) (not b!2583281) (not bm!166809) (not b!2582376) (not b!2583560) (not b!2583565) (not d!731386) (not d!731416) (not d!731420) (not d!731350) (not b!2583501) (not bm!166820) (not b!2583467) (not b!2582755) (not b!2583185) (not b_next!73375) (not bm!166797) (not bs!471646) (not b!2583568) b_and!189093 (not b!2583572) (not d!731400) (not b!2583157) (not b!2583589) (not b_lambda!76681) (not tb!140653) (not b!2583421) (not b!2583511) (not d!731384) (not b_lambda!76683) (not b!2583410) (not b!2583446) (not b!2583522) (not b!2583505) (not b!2583582) b_and!189207 (not b!2582864) b_and!189223 (not b!2583584) (not b!2582768) b_and!189211 b_and!189221 (not b!2583151) (not b!2582891) (not b!2583429) (not b!2583540) (not b!2583261) b_and!189215 (not b!2582898) (not b!2583489) (not b!2582766) (not b!2583553) (not b!2582756) b_and!189091 (not b!2583579) (not tb!140525) (not b!2583507) (not b_lambda!76627) (not b_next!73359) (not b!2583469) (not b!2583176) (not d!731710) (not b!2582770) (not b!2583506) (not b!2583513) (not b!2582757) (not b!2582869) (not d!731366) (not b!2583543) (not b!2582754) (not d!731646) (not b!2583164) (not d!731570) (not d!731404) (not b!2583495) (not bm!166796) (not b!2583230) (not b!2583580) (not b!2583472) (not b!2583547) (not b!2583573) (not b!2582866) (not b!2583204) (not b!2583581) (not d!731412) b_and!189099 (not b!2582775) (not d!731414) b_and!189219 (not b_lambda!76633) (not tb!140513) (not b!2582788) (not b!2582850) (not b!2583439) (not bm!166886) (not d!731428) (not b!2583533) (not b!2582751) (not b!2583510) (not b!2583208) (not b!2582892) (not b!2583491) (not b!2583202) (not d!731586) b_and!189225 (not b!2583412) (not d!731660) (not tb!140549) (not b!2583564) (not d!731708) (not b!2583521) (not b!2583532) (not d!731678) (not b!2583423) (not b!2582784) (not bm!166887) (not b!2583432) (not b!2583283) (not b!2583551) (not b!2582764) (not b!2582863) (not b_next!73391) (not b!2583536) (not b!2583557) (not b!2583555) (not d!731426) (not b!2583552) (not b!2583195) (not b!2583559) (not bm!166893) (not b!2583465) (not d!731594) (not b!2583228) (not b_lambda!76629) (not b!2583295) (not b!2582801) (not b!2583586) b_and!189095 (not b!2582897) (not b!2583490) (not bm!166880) (not b!2583262) (not d!731422) (not b!2583466) (not b!2582827) (not b!2582896) (not b!2583443) (not b!2582789) (not b!2583474) (not d!731388) (not b!2583587) (not b_lambda!76675) (not b!2583188) (not b!2583509) (not bm!166823) (not d!731418) (not b_next!73373) (not b!2583549) (not d!731636) (not b_next!73353) (not b!2583534) (not b_lambda!76637) (not b!2583512) (not d!731680) (not b!2582957) (not bm!166882) (not b!2583159) (not b_next!73355) (not b!2583494) (not b!2583409) (not b!2583430) (not b!2582792) (not b!2583487) (not b!2582776) (not b!2583179) (not b_next!73395) (not b!2583226) (not b!2583517) (not b_next!73351) (not b_next!73357) (not d!731692) (not b!2583406) (not b!2583475) (not b!2582799) (not d!731672) (not b!2583183) (not b!2582900) (not b!2583585) (not b_next!73377) (not d!731382) (not d!731654) (not d!731614) (not b!2583538) (not d!731598) (not d!731380) (not b!2583545) (not d!731688) (not b!2583518) (not b!2582762) (not b_next!73393) (not b!2583468) (not b!2583594) (not d!731638) (not b_next!73349) (not b_lambda!76685) (not b!2583523) (not b!2583575) (not b!2582876) (not b!2583444) (not b_lambda!76639) b_and!189217 (not d!731556) b_and!189097 (not b!2582878) (not b!2583569) (not tb!140537) (not b!2583182) (not b!2583563) (not b!2583539) (not b!2583473) (not b!2582930) (not d!731704) (not b!2582782) (not b!2582893) (not bm!166819) (not b_next!73389) (not b!2583499) (not d!731700) (not b!2582787) (not d!731682) (not b!2582759) (not b!2583577) (not b!2583405) (not b!2582753) (not bm!166894) (not tb!140501) (not bm!166884) (not d!731714) (not b!2583419) b_and!189209 (not b_lambda!76625) (not b!2582867) (not d!731670) (not b!2583455) (not b!2583441) (not d!731358) (not bs!471645) (not b!2582758) (not b!2583519) (not b!2583548) (not b!2583408) (not b!2582890) (not b!2582899) (not b!2582760) (not b!2583571) (not bm!166885) (not d!731690) (not b!2583590) (not b!2583486) (not b!2583442) (not d!731376) (not b!2582865) (not d!731402) (not b!2583515) b_and!189213 (not b!2583502) (not b!2583567) (not bm!166883) (not b_lambda!76679) (not b!2582884) (not b!2583556) (not bm!166817) (not b_lambda!76677) (not b!2583498) (not b!2583576))
(check-sat b_and!189207 (not b_next!73359) b_and!189225 (not b_next!73391) b_and!189095 (not b_next!73377) (not b_next!73389) b_and!189209 b_and!189213 b_and!189101 (not b_next!73379) (not b_next!73363) (not b_next!73361) (not b_next!73375) b_and!189093 b_and!189223 b_and!189211 b_and!189221 b_and!189215 b_and!189091 b_and!189099 b_and!189219 (not b_next!73373) (not b_next!73353) (not b_next!73395) (not b_next!73355) (not b_next!73351) (not b_next!73357) (not b_next!73393) (not b_next!73349) b_and!189217 b_and!189097)
