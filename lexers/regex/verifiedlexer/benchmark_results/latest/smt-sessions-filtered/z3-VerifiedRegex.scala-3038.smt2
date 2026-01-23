; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181574 () Bool)

(assert start!181574)

(declare-fun b!1829919 () Bool)

(declare-fun b_free!51135 () Bool)

(declare-fun b_next!51839 () Bool)

(assert (=> b!1829919 (= b_free!51135 (not b_next!51839))))

(declare-fun tp!517743 () Bool)

(declare-fun b_and!142365 () Bool)

(assert (=> b!1829919 (= tp!517743 b_and!142365)))

(declare-fun b_free!51137 () Bool)

(declare-fun b_next!51841 () Bool)

(assert (=> b!1829919 (= b_free!51137 (not b_next!51841))))

(declare-fun tp!517747 () Bool)

(declare-fun b_and!142367 () Bool)

(assert (=> b!1829919 (= tp!517747 b_and!142367)))

(declare-fun b!1829935 () Bool)

(declare-fun b_free!51139 () Bool)

(declare-fun b_next!51843 () Bool)

(assert (=> b!1829935 (= b_free!51139 (not b_next!51843))))

(declare-fun tp!517741 () Bool)

(declare-fun b_and!142369 () Bool)

(assert (=> b!1829935 (= tp!517741 b_and!142369)))

(declare-fun b_free!51141 () Bool)

(declare-fun b_next!51845 () Bool)

(assert (=> b!1829935 (= b_free!51141 (not b_next!51845))))

(declare-fun tp!517745 () Bool)

(declare-fun b_and!142371 () Bool)

(assert (=> b!1829935 (= tp!517745 b_and!142371)))

(declare-fun b!1829923 () Bool)

(declare-fun b_free!51143 () Bool)

(declare-fun b_next!51847 () Bool)

(assert (=> b!1829923 (= b_free!51143 (not b_next!51847))))

(declare-fun tp!517746 () Bool)

(declare-fun b_and!142373 () Bool)

(assert (=> b!1829923 (= tp!517746 b_and!142373)))

(declare-fun b_free!51145 () Bool)

(declare-fun b_next!51849 () Bool)

(assert (=> b!1829923 (= b_free!51145 (not b_next!51849))))

(declare-fun tp!517742 () Bool)

(declare-fun b_and!142375 () Bool)

(assert (=> b!1829923 (= tp!517742 b_and!142375)))

(declare-fun b!1829916 () Bool)

(declare-fun res!822969 () Bool)

(declare-fun e!1169721 () Bool)

(assert (=> b!1829916 (=> res!822969 e!1169721)))

(declare-datatypes ((C!10104 0))(
  ( (C!10105 (val!5648 Int)) )
))
(declare-datatypes ((Regex!4965 0))(
  ( (ElementMatch!4965 (c!298396 C!10104)) (Concat!8692 (regOne!10442 Regex!4965) (regTwo!10442 Regex!4965)) (EmptyExpr!4965) (Star!4965 (reg!5294 Regex!4965)) (EmptyLang!4965) (Union!4965 (regOne!10443 Regex!4965) (regTwo!10443 Regex!4965)) )
))
(declare-datatypes ((List!20195 0))(
  ( (Nil!20125) (Cons!20125 (h!25526 (_ BitVec 16)) (t!170560 List!20195)) )
))
(declare-datatypes ((TokenValue!3727 0))(
  ( (FloatLiteralValue!7454 (text!26534 List!20195)) (TokenValueExt!3726 (__x!12756 Int)) (Broken!18635 (value!113295 List!20195)) (Object!3796) (End!3727) (Def!3727) (Underscore!3727) (Match!3727) (Else!3727) (Error!3727) (Case!3727) (If!3727) (Extends!3727) (Abstract!3727) (Class!3727) (Val!3727) (DelimiterValue!7454 (del!3787 List!20195)) (KeywordValue!3733 (value!113296 List!20195)) (CommentValue!7454 (value!113297 List!20195)) (WhitespaceValue!7454 (value!113298 List!20195)) (IndentationValue!3727 (value!113299 List!20195)) (String!22966) (Int32!3727) (Broken!18636 (value!113300 List!20195)) (Boolean!3728) (Unit!34790) (OperatorValue!3730 (op!3787 List!20195)) (IdentifierValue!7454 (value!113301 List!20195)) (IdentifierValue!7455 (value!113302 List!20195)) (WhitespaceValue!7455 (value!113303 List!20195)) (True!7454) (False!7454) (Broken!18637 (value!113304 List!20195)) (Broken!18638 (value!113305 List!20195)) (True!7455) (RightBrace!3727) (RightBracket!3727) (Colon!3727) (Null!3727) (Comma!3727) (LeftBracket!3727) (False!7455) (LeftBrace!3727) (ImaginaryLiteralValue!3727 (text!26535 List!20195)) (StringLiteralValue!11181 (value!113306 List!20195)) (EOFValue!3727 (value!113307 List!20195)) (IdentValue!3727 (value!113308 List!20195)) (DelimiterValue!7455 (value!113309 List!20195)) (DedentValue!3727 (value!113310 List!20195)) (NewLineValue!3727 (value!113311 List!20195)) (IntegerValue!11181 (value!113312 (_ BitVec 32)) (text!26536 List!20195)) (IntegerValue!11182 (value!113313 Int) (text!26537 List!20195)) (Times!3727) (Or!3727) (Equal!3727) (Minus!3727) (Broken!18639 (value!113314 List!20195)) (And!3727) (Div!3727) (LessEqual!3727) (Mod!3727) (Concat!8693) (Not!3727) (Plus!3727) (SpaceValue!3727 (value!113315 List!20195)) (IntegerValue!11183 (value!113316 Int) (text!26538 List!20195)) (StringLiteralValue!11182 (text!26539 List!20195)) (FloatLiteralValue!7455 (text!26540 List!20195)) (BytesLiteralValue!3727 (value!113317 List!20195)) (CommentValue!7455 (value!113318 List!20195)) (StringLiteralValue!11183 (value!113319 List!20195)) (ErrorTokenValue!3727 (msg!3788 List!20195)) )
))
(declare-datatypes ((List!20196 0))(
  ( (Nil!20126) (Cons!20126 (h!25527 C!10104) (t!170561 List!20196)) )
))
(declare-datatypes ((IArray!13343 0))(
  ( (IArray!13344 (innerList!6729 List!20196)) )
))
(declare-datatypes ((Conc!6669 0))(
  ( (Node!6669 (left!16089 Conc!6669) (right!16419 Conc!6669) (csize!13568 Int) (cheight!6880 Int)) (Leaf!9708 (xs!9545 IArray!13343) (csize!13569 Int)) (Empty!6669) )
))
(declare-datatypes ((BalanceConc!13282 0))(
  ( (BalanceConc!13283 (c!298397 Conc!6669)) )
))
(declare-datatypes ((TokenValueInjection!7114 0))(
  ( (TokenValueInjection!7115 (toValue!5180 Int) (toChars!5039 Int)) )
))
(declare-datatypes ((String!22967 0))(
  ( (String!22968 (value!113320 String)) )
))
(declare-datatypes ((Rule!7074 0))(
  ( (Rule!7075 (regex!3637 Regex!4965) (tag!4051 String!22967) (isSeparator!3637 Bool) (transformation!3637 TokenValueInjection!7114)) )
))
(declare-fun rule!580 () Rule!7074)

(declare-fun lt!710611 () List!20196)

(declare-fun matchR!2428 (Regex!4965 List!20196) Bool)

(assert (=> b!1829916 (= res!822969 (not (matchR!2428 (regex!3637 rule!580) lt!710611)))))

(declare-fun b!1829917 () Bool)

(declare-fun e!1169717 () Bool)

(assert (=> b!1829917 (= e!1169717 (not e!1169721))))

(declare-fun res!822965 () Bool)

(assert (=> b!1829917 (=> res!822965 e!1169721)))

(declare-datatypes ((Token!6828 0))(
  ( (Token!6829 (value!113321 TokenValue!3727) (rule!5805 Rule!7074) (size!15955 Int) (originalCharacters!4445 List!20196)) )
))
(declare-datatypes ((tuple2!19590 0))(
  ( (tuple2!19591 (_1!11197 Token!6828) (_2!11197 List!20196)) )
))
(declare-datatypes ((Option!4217 0))(
  ( (None!4216) (Some!4216 (v!25787 tuple2!19590)) )
))
(declare-fun lt!710610 () Option!4217)

(declare-fun token!567 () Token!6828)

(declare-fun suffix!1698 () List!20196)

(assert (=> b!1829917 (= res!822965 (not (= lt!710610 (Some!4216 (tuple2!19591 token!567 suffix!1698)))))))

(declare-fun lt!710609 () TokenValue!3727)

(declare-fun lt!710615 () Int)

(assert (=> b!1829917 (= lt!710610 (Some!4216 (tuple2!19591 (Token!6829 lt!710609 rule!580 lt!710615 lt!710611) suffix!1698)))))

(declare-datatypes ((LexerInterface!3266 0))(
  ( (LexerInterfaceExt!3263 (__x!12757 Int)) (Lexer!3264) )
))
(declare-fun thiss!28318 () LexerInterface!3266)

(declare-fun input!3681 () List!20196)

(declare-fun maxPrefixOneRule!1175 (LexerInterface!3266 Rule!7074 List!20196) Option!4217)

(assert (=> b!1829917 (= lt!710610 (maxPrefixOneRule!1175 thiss!28318 rule!580 input!3681))))

(declare-fun size!15956 (List!20196) Int)

(assert (=> b!1829917 (= lt!710615 (size!15956 lt!710611))))

(declare-fun apply!5425 (TokenValueInjection!7114 BalanceConc!13282) TokenValue!3727)

(declare-fun seqFromList!2594 (List!20196) BalanceConc!13282)

(assert (=> b!1829917 (= lt!710609 (apply!5425 (transformation!3637 rule!580) (seqFromList!2594 lt!710611)))))

(declare-datatypes ((List!20197 0))(
  ( (Nil!20127) (Cons!20127 (h!25528 Rule!7074) (t!170562 List!20197)) )
))
(declare-fun rules!4610 () List!20197)

(declare-datatypes ((Unit!34791 0))(
  ( (Unit!34792) )
))
(declare-fun lt!710616 () Unit!34791)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!545 (LexerInterface!3266 List!20197 List!20196 List!20196 List!20196 Rule!7074) Unit!34791)

(assert (=> b!1829917 (= lt!710616 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!545 thiss!28318 rules!4610 lt!710611 input!3681 suffix!1698 rule!580))))

(declare-fun list!8177 (BalanceConc!13282) List!20196)

(declare-fun charsOf!2280 (Token!6828) BalanceConc!13282)

(assert (=> b!1829917 (= lt!710611 (list!8177 (charsOf!2280 token!567)))))

(declare-fun b!1829918 () Bool)

(declare-fun e!1169720 () Bool)

(declare-fun e!1169726 () Bool)

(declare-fun tp!517737 () Bool)

(declare-fun inv!21 (TokenValue!3727) Bool)

(assert (=> b!1829918 (= e!1169720 (and (inv!21 (value!113321 token!567)) e!1169726 tp!517737))))

(declare-fun e!1169710 () Bool)

(assert (=> b!1829919 (= e!1169710 (and tp!517743 tp!517747))))

(declare-fun b!1829920 () Bool)

(declare-fun e!1169712 () Bool)

(declare-fun tp_is_empty!8165 () Bool)

(declare-fun tp!517739 () Bool)

(assert (=> b!1829920 (= e!1169712 (and tp_is_empty!8165 tp!517739))))

(declare-fun b!1829921 () Bool)

(declare-fun res!822966 () Bool)

(assert (=> b!1829921 (=> (not res!822966) (not e!1169717))))

(declare-fun rulesInvariant!2935 (LexerInterface!3266 List!20197) Bool)

(assert (=> b!1829921 (= res!822966 (rulesInvariant!2935 thiss!28318 rules!4610))))

(declare-fun b!1829922 () Bool)

(declare-fun tp!517744 () Bool)

(declare-fun inv!26182 (String!22967) Bool)

(declare-fun inv!26185 (TokenValueInjection!7114) Bool)

(assert (=> b!1829922 (= e!1169726 (and tp!517744 (inv!26182 (tag!4051 (rule!5805 token!567))) (inv!26185 (transformation!3637 (rule!5805 token!567))) e!1169710))))

(declare-fun e!1169719 () Bool)

(assert (=> b!1829923 (= e!1169719 (and tp!517746 tp!517742))))

(declare-fun b!1829924 () Bool)

(declare-fun res!822963 () Bool)

(assert (=> b!1829924 (=> (not res!822963) (not e!1169717))))

(declare-fun e!1169709 () Bool)

(assert (=> b!1829924 (= res!822963 e!1169709)))

(declare-fun res!822962 () Bool)

(assert (=> b!1829924 (=> (not res!822962) (not e!1169709))))

(declare-fun lt!710612 () List!20196)

(declare-fun ++!5461 (List!20196 List!20196) List!20196)

(assert (=> b!1829924 (= res!822962 (= input!3681 (++!5461 lt!710612 suffix!1698)))))

(assert (=> b!1829924 (= lt!710612 (list!8177 (charsOf!2280 token!567)))))

(declare-fun b!1829925 () Bool)

(declare-fun res!822960 () Bool)

(assert (=> b!1829925 (=> (not res!822960) (not e!1169717))))

(assert (=> b!1829925 (= res!822960 (= (rule!5805 token!567) rule!580))))

(declare-fun b!1829927 () Bool)

(declare-fun e!1169711 () Bool)

(declare-fun e!1169716 () Bool)

(declare-fun tp!517738 () Bool)

(assert (=> b!1829927 (= e!1169711 (and e!1169716 tp!517738))))

(declare-fun b!1829928 () Bool)

(declare-fun res!822961 () Bool)

(assert (=> b!1829928 (=> (not res!822961) (not e!1169717))))

(declare-fun isEmpty!12703 (List!20197) Bool)

(assert (=> b!1829928 (= res!822961 (not (isEmpty!12703 rules!4610)))))

(declare-fun e!1169718 () Bool)

(declare-fun e!1169714 () Bool)

(declare-fun tp!517748 () Bool)

(declare-fun b!1829929 () Bool)

(assert (=> b!1829929 (= e!1169714 (and tp!517748 (inv!26182 (tag!4051 rule!580)) (inv!26185 (transformation!3637 rule!580)) e!1169718))))

(declare-fun b!1829930 () Bool)

(assert (=> b!1829930 (= e!1169709 (not (not (matchR!2428 (regex!3637 rule!580) lt!710612))))))

(declare-fun ruleValid!1127 (LexerInterface!3266 Rule!7074) Bool)

(assert (=> b!1829930 (ruleValid!1127 thiss!28318 rule!580)))

(declare-fun lt!710613 () Unit!34791)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!646 (LexerInterface!3266 Rule!7074 List!20197) Unit!34791)

(assert (=> b!1829930 (= lt!710613 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!646 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1829931 () Bool)

(declare-fun res!822968 () Bool)

(assert (=> b!1829931 (=> (not res!822968) (not e!1169717))))

(declare-fun contains!3711 (List!20197 Rule!7074) Bool)

(assert (=> b!1829931 (= res!822968 (contains!3711 rules!4610 rule!580))))

(declare-fun b!1829932 () Bool)

(declare-fun e!1169723 () Bool)

(declare-fun tp!517740 () Bool)

(assert (=> b!1829932 (= e!1169723 (and tp_is_empty!8165 tp!517740))))

(declare-fun b!1829933 () Bool)

(declare-fun e!1169725 () Bool)

(assert (=> b!1829933 (= e!1169725 true)))

(declare-fun tp!517736 () Bool)

(declare-fun b!1829934 () Bool)

(assert (=> b!1829934 (= e!1169716 (and tp!517736 (inv!26182 (tag!4051 (h!25528 rules!4610))) (inv!26185 (transformation!3637 (h!25528 rules!4610))) e!1169719))))

(declare-fun res!822964 () Bool)

(assert (=> start!181574 (=> (not res!822964) (not e!1169717))))

(get-info :version)

(assert (=> start!181574 (= res!822964 ((_ is Lexer!3264) thiss!28318))))

(assert (=> start!181574 e!1169717))

(assert (=> start!181574 e!1169714))

(assert (=> start!181574 e!1169711))

(declare-fun inv!26186 (Token!6828) Bool)

(assert (=> start!181574 (and (inv!26186 token!567) e!1169720)))

(assert (=> start!181574 true))

(assert (=> start!181574 e!1169723))

(assert (=> start!181574 e!1169712))

(declare-fun b!1829926 () Bool)

(declare-fun res!822967 () Bool)

(assert (=> b!1829926 (=> (not res!822967) (not e!1169717))))

(declare-fun maxPrefix!1814 (LexerInterface!3266 List!20197 List!20196) Option!4217)

(assert (=> b!1829926 (= res!822967 (= (maxPrefix!1814 thiss!28318 rules!4610 input!3681) (Some!4216 (tuple2!19591 token!567 suffix!1698))))))

(assert (=> b!1829935 (= e!1169718 (and tp!517741 tp!517745))))

(declare-fun b!1829936 () Bool)

(assert (=> b!1829936 (= e!1169721 e!1169725)))

(declare-fun res!822970 () Bool)

(assert (=> b!1829936 (=> res!822970 e!1169725)))

(declare-fun lambda!71864 () Int)

(declare-fun rulesRegex!957 (LexerInterface!3266 List!20197) Regex!4965)

(declare-datatypes ((List!20198 0))(
  ( (Nil!20128) (Cons!20128 (h!25529 Regex!4965) (t!170563 List!20198)) )
))
(declare-fun generalisedUnion!480 (List!20198) Regex!4965)

(declare-fun map!4174 (List!20197 Int) List!20198)

(assert (=> b!1829936 (= res!822970 (not (= (rulesRegex!957 thiss!28318 rules!4610) (generalisedUnion!480 (map!4174 rules!4610 lambda!71864)))))))

(declare-fun lt!710614 () Unit!34791)

(declare-fun lemma!528 (List!20196 Rule!7074 List!20197 List!20196 LexerInterface!3266 Token!6828 List!20197) Unit!34791)

(assert (=> b!1829936 (= lt!710614 (lemma!528 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(assert (= (and start!181574 res!822964) b!1829928))

(assert (= (and b!1829928 res!822961) b!1829921))

(assert (= (and b!1829921 res!822966) b!1829931))

(assert (= (and b!1829931 res!822968) b!1829926))

(assert (= (and b!1829926 res!822967) b!1829925))

(assert (= (and b!1829925 res!822960) b!1829924))

(assert (= (and b!1829924 res!822962) b!1829930))

(assert (= (and b!1829924 res!822963) b!1829917))

(assert (= (and b!1829917 (not res!822965)) b!1829916))

(assert (= (and b!1829916 (not res!822969)) b!1829936))

(assert (= (and b!1829936 (not res!822970)) b!1829933))

(assert (= b!1829929 b!1829935))

(assert (= start!181574 b!1829929))

(assert (= b!1829934 b!1829923))

(assert (= b!1829927 b!1829934))

(assert (= (and start!181574 ((_ is Cons!20127) rules!4610)) b!1829927))

(assert (= b!1829922 b!1829919))

(assert (= b!1829918 b!1829922))

(assert (= start!181574 b!1829918))

(assert (= (and start!181574 ((_ is Cons!20126) suffix!1698)) b!1829932))

(assert (= (and start!181574 ((_ is Cons!20126) input!3681)) b!1829920))

(declare-fun m!2257661 () Bool)

(assert (=> b!1829928 m!2257661))

(declare-fun m!2257663 () Bool)

(assert (=> b!1829916 m!2257663))

(declare-fun m!2257665 () Bool)

(assert (=> b!1829930 m!2257665))

(declare-fun m!2257667 () Bool)

(assert (=> b!1829930 m!2257667))

(declare-fun m!2257669 () Bool)

(assert (=> b!1829930 m!2257669))

(declare-fun m!2257671 () Bool)

(assert (=> b!1829924 m!2257671))

(declare-fun m!2257673 () Bool)

(assert (=> b!1829924 m!2257673))

(assert (=> b!1829924 m!2257673))

(declare-fun m!2257675 () Bool)

(assert (=> b!1829924 m!2257675))

(declare-fun m!2257677 () Bool)

(assert (=> b!1829921 m!2257677))

(declare-fun m!2257679 () Bool)

(assert (=> b!1829922 m!2257679))

(declare-fun m!2257681 () Bool)

(assert (=> b!1829922 m!2257681))

(declare-fun m!2257683 () Bool)

(assert (=> b!1829929 m!2257683))

(declare-fun m!2257685 () Bool)

(assert (=> b!1829929 m!2257685))

(declare-fun m!2257687 () Bool)

(assert (=> b!1829926 m!2257687))

(declare-fun m!2257689 () Bool)

(assert (=> b!1829934 m!2257689))

(declare-fun m!2257691 () Bool)

(assert (=> b!1829934 m!2257691))

(declare-fun m!2257693 () Bool)

(assert (=> b!1829918 m!2257693))

(declare-fun m!2257695 () Bool)

(assert (=> b!1829936 m!2257695))

(declare-fun m!2257697 () Bool)

(assert (=> b!1829936 m!2257697))

(assert (=> b!1829936 m!2257697))

(declare-fun m!2257699 () Bool)

(assert (=> b!1829936 m!2257699))

(declare-fun m!2257701 () Bool)

(assert (=> b!1829936 m!2257701))

(declare-fun m!2257703 () Bool)

(assert (=> b!1829917 m!2257703))

(declare-fun m!2257705 () Bool)

(assert (=> b!1829917 m!2257705))

(assert (=> b!1829917 m!2257673))

(assert (=> b!1829917 m!2257675))

(assert (=> b!1829917 m!2257673))

(declare-fun m!2257707 () Bool)

(assert (=> b!1829917 m!2257707))

(declare-fun m!2257709 () Bool)

(assert (=> b!1829917 m!2257709))

(declare-fun m!2257711 () Bool)

(assert (=> b!1829917 m!2257711))

(assert (=> b!1829917 m!2257703))

(declare-fun m!2257713 () Bool)

(assert (=> b!1829931 m!2257713))

(declare-fun m!2257715 () Bool)

(assert (=> start!181574 m!2257715))

(check-sat b_and!142375 (not b_next!51845) (not b_next!51841) (not b_next!51847) b_and!142367 (not b_next!51849) (not b!1829931) b_and!142365 tp_is_empty!8165 (not b!1829929) (not b!1829920) (not b!1829926) (not b_next!51839) (not b!1829930) (not b_next!51843) b_and!142371 (not b!1829917) (not b!1829936) b_and!142373 (not b!1829927) (not b!1829922) (not b!1829932) (not b!1829918) (not b!1829916) b_and!142369 (not start!181574) (not b!1829928) (not b!1829934) (not b!1829924) (not b!1829921))
(check-sat (not b_next!51839) b_and!142375 (not b_next!51845) (not b_next!51841) b_and!142373 (not b_next!51847) b_and!142367 (not b_next!51849) b_and!142369 b_and!142365 (not b_next!51843) b_and!142371)
