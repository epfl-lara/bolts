; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152526 () Bool)

(assert start!152526)

(declare-fun b!1614060 () Bool)

(declare-fun b_free!43447 () Bool)

(declare-fun b_next!44151 () Bool)

(assert (=> b!1614060 (= b_free!43447 (not b_next!44151))))

(declare-fun tp!470685 () Bool)

(declare-fun b_and!114453 () Bool)

(assert (=> b!1614060 (= tp!470685 b_and!114453)))

(declare-fun b_free!43449 () Bool)

(declare-fun b_next!44153 () Bool)

(assert (=> b!1614060 (= b_free!43449 (not b_next!44153))))

(declare-fun tp!470689 () Bool)

(declare-fun b_and!114455 () Bool)

(assert (=> b!1614060 (= tp!470689 b_and!114455)))

(declare-fun b!1614066 () Bool)

(declare-fun b_free!43451 () Bool)

(declare-fun b_next!44155 () Bool)

(assert (=> b!1614066 (= b_free!43451 (not b_next!44155))))

(declare-fun tp!470692 () Bool)

(declare-fun b_and!114457 () Bool)

(assert (=> b!1614066 (= tp!470692 b_and!114457)))

(declare-fun b_free!43453 () Bool)

(declare-fun b_next!44157 () Bool)

(assert (=> b!1614066 (= b_free!43453 (not b_next!44157))))

(declare-fun tp!470686 () Bool)

(declare-fun b_and!114459 () Bool)

(assert (=> b!1614066 (= tp!470686 b_and!114459)))

(declare-fun b!1614057 () Bool)

(declare-fun tp!470684 () Bool)

(declare-datatypes ((List!17719 0))(
  ( (Nil!17649) (Cons!17649 (h!23050 (_ BitVec 16)) (t!148150 List!17719)) )
))
(declare-datatypes ((TokenValue!3199 0))(
  ( (FloatLiteralValue!6398 (text!22838 List!17719)) (TokenValueExt!3198 (__x!11700 Int)) (Broken!15995 (value!98253 List!17719)) (Object!3268) (End!3199) (Def!3199) (Underscore!3199) (Match!3199) (Else!3199) (Error!3199) (Case!3199) (If!3199) (Extends!3199) (Abstract!3199) (Class!3199) (Val!3199) (DelimiterValue!6398 (del!3259 List!17719)) (KeywordValue!3205 (value!98254 List!17719)) (CommentValue!6398 (value!98255 List!17719)) (WhitespaceValue!6398 (value!98256 List!17719)) (IndentationValue!3199 (value!98257 List!17719)) (String!20326) (Int32!3199) (Broken!15996 (value!98258 List!17719)) (Boolean!3200) (Unit!28358) (OperatorValue!3202 (op!3259 List!17719)) (IdentifierValue!6398 (value!98259 List!17719)) (IdentifierValue!6399 (value!98260 List!17719)) (WhitespaceValue!6399 (value!98261 List!17719)) (True!6398) (False!6398) (Broken!15997 (value!98262 List!17719)) (Broken!15998 (value!98263 List!17719)) (True!6399) (RightBrace!3199) (RightBracket!3199) (Colon!3199) (Null!3199) (Comma!3199) (LeftBracket!3199) (False!6399) (LeftBrace!3199) (ImaginaryLiteralValue!3199 (text!22839 List!17719)) (StringLiteralValue!9597 (value!98264 List!17719)) (EOFValue!3199 (value!98265 List!17719)) (IdentValue!3199 (value!98266 List!17719)) (DelimiterValue!6399 (value!98267 List!17719)) (DedentValue!3199 (value!98268 List!17719)) (NewLineValue!3199 (value!98269 List!17719)) (IntegerValue!9597 (value!98270 (_ BitVec 32)) (text!22840 List!17719)) (IntegerValue!9598 (value!98271 Int) (text!22841 List!17719)) (Times!3199) (Or!3199) (Equal!3199) (Minus!3199) (Broken!15999 (value!98272 List!17719)) (And!3199) (Div!3199) (LessEqual!3199) (Mod!3199) (Concat!7636) (Not!3199) (Plus!3199) (SpaceValue!3199 (value!98273 List!17719)) (IntegerValue!9599 (value!98274 Int) (text!22842 List!17719)) (StringLiteralValue!9598 (text!22843 List!17719)) (FloatLiteralValue!6399 (text!22844 List!17719)) (BytesLiteralValue!3199 (value!98275 List!17719)) (CommentValue!6399 (value!98276 List!17719)) (StringLiteralValue!9599 (value!98277 List!17719)) (ErrorTokenValue!3199 (msg!3260 List!17719)) )
))
(declare-datatypes ((C!9048 0))(
  ( (C!9049 (val!5120 Int)) )
))
(declare-datatypes ((List!17720 0))(
  ( (Nil!17650) (Cons!17650 (h!23051 C!9048) (t!148151 List!17720)) )
))
(declare-datatypes ((IArray!11737 0))(
  ( (IArray!11738 (innerList!5926 List!17720)) )
))
(declare-datatypes ((Conc!5866 0))(
  ( (Node!5866 (left!14218 Conc!5866) (right!14548 Conc!5866) (csize!11962 Int) (cheight!6077 Int)) (Leaf!8641 (xs!8694 IArray!11737) (csize!11963 Int)) (Empty!5866) )
))
(declare-datatypes ((BalanceConc!11676 0))(
  ( (BalanceConc!11677 (c!262917 Conc!5866)) )
))
(declare-datatypes ((Regex!4437 0))(
  ( (ElementMatch!4437 (c!262918 C!9048)) (Concat!7637 (regOne!9386 Regex!4437) (regTwo!9386 Regex!4437)) (EmptyExpr!4437) (Star!4437 (reg!4766 Regex!4437)) (EmptyLang!4437) (Union!4437 (regOne!9387 Regex!4437) (regTwo!9387 Regex!4437)) )
))
(declare-datatypes ((String!20327 0))(
  ( (String!20328 (value!98278 String)) )
))
(declare-datatypes ((TokenValueInjection!6058 0))(
  ( (TokenValueInjection!6059 (toValue!4532 Int) (toChars!4391 Int)) )
))
(declare-datatypes ((Rule!6018 0))(
  ( (Rule!6019 (regex!3109 Regex!4437) (tag!3385 String!20327) (isSeparator!3109 Bool) (transformation!3109 TokenValueInjection!6058)) )
))
(declare-datatypes ((Token!5784 0))(
  ( (Token!5785 (value!98279 TokenValue!3199) (rule!4929 Rule!6018) (size!14172 Int) (originalCharacters!3923 List!17720)) )
))
(declare-datatypes ((List!17721 0))(
  ( (Nil!17651) (Cons!17651 (h!23052 Token!5784) (t!148152 List!17721)) )
))
(declare-fun tokens!457 () List!17721)

(declare-fun e!1035277 () Bool)

(declare-fun e!1035269 () Bool)

(declare-fun inv!23056 (Token!5784) Bool)

(assert (=> b!1614057 (= e!1035277 (and (inv!23056 (h!23052 tokens!457)) e!1035269 tp!470684))))

(declare-fun b!1614058 () Bool)

(declare-fun e!1035276 () Bool)

(declare-fun e!1035271 () Bool)

(assert (=> b!1614058 (= e!1035276 e!1035271)))

(declare-fun res!720117 () Bool)

(assert (=> b!1614058 (=> res!720117 e!1035271)))

(declare-fun lt!577285 () List!17720)

(declare-fun lt!577275 () Regex!4437)

(declare-fun lt!577281 () List!17720)

(declare-fun prefixMatch!372 (Regex!4437 List!17720) Bool)

(declare-fun ++!4655 (List!17720 List!17720) List!17720)

(assert (=> b!1614058 (= res!720117 (prefixMatch!372 lt!577275 (++!4655 lt!577285 lt!577281)))))

(declare-fun lt!577277 () BalanceConc!11676)

(declare-fun list!6895 (BalanceConc!11676) List!17720)

(assert (=> b!1614058 (= lt!577281 (list!6895 lt!577277))))

(declare-fun b!1614059 () Bool)

(declare-fun res!720108 () Bool)

(declare-fun e!1035262 () Bool)

(assert (=> b!1614059 (=> res!720108 e!1035262)))

(declare-datatypes ((List!17722 0))(
  ( (Nil!17652) (Cons!17652 (h!23053 Rule!6018) (t!148153 List!17722)) )
))
(declare-fun rules!1846 () List!17722)

(declare-datatypes ((LexerInterface!2738 0))(
  ( (LexerInterfaceExt!2735 (__x!11701 Int)) (Lexer!2736) )
))
(declare-fun thiss!17113 () LexerInterface!2738)

(declare-fun rulesProduceIndividualToken!1390 (LexerInterface!2738 List!17722 Token!5784) Bool)

(assert (=> b!1614059 (= res!720108 (not (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 tokens!457))))))

(declare-fun e!1035281 () Bool)

(assert (=> b!1614060 (= e!1035281 (and tp!470685 tp!470689))))

(declare-fun b!1614061 () Bool)

(declare-fun res!720120 () Bool)

(declare-fun e!1035278 () Bool)

(assert (=> b!1614061 (=> (not res!720120) (not e!1035278))))

(declare-fun head!3334 (List!17720) C!9048)

(assert (=> b!1614061 (= res!720120 (= lt!577281 (Cons!17650 (head!3334 (originalCharacters!3923 (h!23052 (t!148152 tokens!457)))) Nil!17650)))))

(declare-fun b!1614062 () Bool)

(declare-fun res!720105 () Bool)

(declare-fun e!1035275 () Bool)

(assert (=> b!1614062 (=> (not res!720105) (not e!1035275))))

(declare-fun isEmpty!10668 (List!17722) Bool)

(assert (=> b!1614062 (= res!720105 (not (isEmpty!10668 rules!1846)))))

(declare-fun b!1614063 () Bool)

(declare-fun res!720116 () Bool)

(assert (=> b!1614063 (=> (not res!720116) (not e!1035275))))

(declare-fun rulesProduceEachTokenIndividuallyList!940 (LexerInterface!2738 List!17722 List!17721) Bool)

(assert (=> b!1614063 (= res!720116 (rulesProduceEachTokenIndividuallyList!940 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1614064 () Bool)

(declare-fun res!720112 () Bool)

(declare-fun e!1035279 () Bool)

(assert (=> b!1614064 (=> res!720112 e!1035279)))

(declare-fun separableTokensPredicate!680 (LexerInterface!2738 Token!5784 Token!5784 List!17722) Bool)

(assert (=> b!1614064 (= res!720112 (not (separableTokensPredicate!680 thiss!17113 (h!23052 tokens!457) (h!23052 (t!148152 tokens!457)) rules!1846)))))

(declare-fun res!720111 () Bool)

(assert (=> start!152526 (=> (not res!720111) (not e!1035275))))

(get-info :version)

(assert (=> start!152526 (= res!720111 ((_ is Lexer!2736) thiss!17113))))

(assert (=> start!152526 e!1035275))

(assert (=> start!152526 true))

(declare-fun e!1035265 () Bool)

(assert (=> start!152526 e!1035265))

(assert (=> start!152526 e!1035277))

(declare-fun b!1614065 () Bool)

(declare-fun e!1035268 () Bool)

(declare-fun tp!470690 () Bool)

(assert (=> b!1614065 (= e!1035265 (and e!1035268 tp!470690))))

(declare-fun e!1035266 () Bool)

(assert (=> b!1614066 (= e!1035266 (and tp!470692 tp!470686))))

(declare-fun e!1035270 () Bool)

(declare-fun b!1614067 () Bool)

(declare-fun tp!470688 () Bool)

(declare-fun inv!21 (TokenValue!3199) Bool)

(assert (=> b!1614067 (= e!1035269 (and (inv!21 (value!98279 (h!23052 tokens!457))) e!1035270 tp!470688))))

(declare-fun b!1614068 () Bool)

(declare-fun res!720119 () Bool)

(assert (=> b!1614068 (=> (not res!720119) (not e!1035275))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!431 (LexerInterface!2738 List!17721 List!17722) Bool)

(assert (=> b!1614068 (= res!720119 (tokensListTwoByTwoPredicateSeparableList!431 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1614069 () Bool)

(declare-fun e!1035282 () Bool)

(assert (=> b!1614069 (= e!1035282 e!1035279)))

(declare-fun res!720113 () Bool)

(assert (=> b!1614069 (=> res!720113 e!1035279)))

(declare-fun lt!577286 () List!17721)

(declare-fun lt!577268 () List!17721)

(declare-fun lt!577267 () List!17721)

(assert (=> b!1614069 (= res!720113 (or (not (= lt!577268 lt!577267)) (not (= lt!577267 lt!577286))))))

(declare-datatypes ((IArray!11739 0))(
  ( (IArray!11740 (innerList!5927 List!17721)) )
))
(declare-datatypes ((Conc!5867 0))(
  ( (Node!5867 (left!14219 Conc!5867) (right!14549 Conc!5867) (csize!11964 Int) (cheight!6078 Int)) (Leaf!8642 (xs!8695 IArray!11739) (csize!11965 Int)) (Empty!5867) )
))
(declare-datatypes ((BalanceConc!11678 0))(
  ( (BalanceConc!11679 (c!262919 Conc!5867)) )
))
(declare-fun lt!577263 () BalanceConc!11678)

(declare-fun list!6896 (BalanceConc!11678) List!17721)

(assert (=> b!1614069 (= lt!577267 (list!6896 lt!577263))))

(assert (=> b!1614069 (= lt!577268 lt!577286)))

(declare-fun prepend!617 (BalanceConc!11678 Token!5784) BalanceConc!11678)

(declare-fun seqFromList!1967 (List!17721) BalanceConc!11678)

(assert (=> b!1614069 (= lt!577286 (list!6896 (prepend!617 (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (h!23052 (t!148152 tokens!457)))))))

(declare-datatypes ((Unit!28359 0))(
  ( (Unit!28360) )
))
(declare-fun lt!577272 () Unit!28359)

(declare-datatypes ((tuple2!17166 0))(
  ( (tuple2!17167 (_1!9985 BalanceConc!11678) (_2!9985 BalanceConc!11676)) )
))
(declare-fun lt!577274 () tuple2!17166)

(declare-fun seqFromListBHdTlConstructive!186 (Token!5784 List!17721 BalanceConc!11678) Unit!28359)

(assert (=> b!1614069 (= lt!577272 (seqFromListBHdTlConstructive!186 (h!23052 (t!148152 tokens!457)) (t!148152 (t!148152 tokens!457)) (_1!9985 lt!577274)))))

(declare-fun e!1035272 () Bool)

(declare-fun b!1614070 () Bool)

(declare-datatypes ((tuple2!17168 0))(
  ( (tuple2!17169 (_1!9986 Token!5784) (_2!9986 List!17720)) )
))
(declare-datatypes ((Option!3223 0))(
  ( (None!3222) (Some!3222 (v!24199 tuple2!17168)) )
))
(declare-fun isDefined!2590 (Option!3223) Bool)

(declare-fun maxPrefix!1302 (LexerInterface!2738 List!17722 List!17720) Option!3223)

(assert (=> b!1614070 (= e!1035272 (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 lt!577285)))))

(declare-fun b!1614071 () Bool)

(declare-fun e!1035264 () Bool)

(assert (=> b!1614071 (= e!1035271 e!1035264)))

(declare-fun res!720109 () Bool)

(assert (=> b!1614071 (=> res!720109 e!1035264)))

(declare-datatypes ((tuple2!17170 0))(
  ( (tuple2!17171 (_1!9987 Token!5784) (_2!9987 BalanceConc!11676)) )
))
(declare-datatypes ((Option!3224 0))(
  ( (None!3223) (Some!3223 (v!24200 tuple2!17170)) )
))
(declare-fun isDefined!2591 (Option!3224) Bool)

(declare-fun maxPrefixZipperSequence!633 (LexerInterface!2738 List!17722 BalanceConc!11676) Option!3224)

(declare-fun seqFromList!1968 (List!17720) BalanceConc!11676)

(assert (=> b!1614071 (= res!720109 (not (isDefined!2591 (maxPrefixZipperSequence!633 thiss!17113 rules!1846 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))

(assert (=> b!1614071 e!1035278))

(declare-fun res!720101 () Bool)

(assert (=> b!1614071 (=> (not res!720101) (not e!1035278))))

(assert (=> b!1614071 (= res!720101 (= lt!577285 (originalCharacters!3923 (h!23052 tokens!457))))))

(declare-fun b!1614072 () Bool)

(declare-fun res!720106 () Bool)

(assert (=> b!1614072 (=> res!720106 e!1035262)))

(declare-fun isEmpty!10669 (BalanceConc!11678) Bool)

(declare-fun lex!1222 (LexerInterface!2738 List!17722 BalanceConc!11676) tuple2!17166)

(assert (=> b!1614072 (= res!720106 (isEmpty!10669 (_1!9985 (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285)))))))

(declare-fun b!1614073 () Bool)

(declare-fun e!1035274 () Bool)

(assert (=> b!1614073 (= e!1035274 e!1035276)))

(declare-fun res!720121 () Bool)

(assert (=> b!1614073 (=> res!720121 e!1035276)))

(declare-fun lt!577266 () BalanceConc!11676)

(declare-fun prefixMatchZipperSequence!479 (Regex!4437 BalanceConc!11676) Bool)

(declare-fun ++!4656 (BalanceConc!11676 BalanceConc!11676) BalanceConc!11676)

(assert (=> b!1614073 (= res!720121 (prefixMatchZipperSequence!479 lt!577275 (++!4656 lt!577266 lt!577277)))))

(declare-fun singletonSeq!1496 (C!9048) BalanceConc!11676)

(declare-fun apply!4428 (BalanceConc!11676 Int) C!9048)

(declare-fun charsOf!1758 (Token!5784) BalanceConc!11676)

(assert (=> b!1614073 (= lt!577277 (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0)))))

(declare-fun rulesRegex!499 (LexerInterface!2738 List!17722) Regex!4437)

(assert (=> b!1614073 (= lt!577275 (rulesRegex!499 thiss!17113 rules!1846))))

(declare-fun b!1614074 () Bool)

(assert (=> b!1614074 (= e!1035279 e!1035262)))

(declare-fun res!720114 () Bool)

(assert (=> b!1614074 (=> res!720114 e!1035262)))

(declare-fun lt!577284 () List!17720)

(declare-fun lt!577264 () List!17720)

(assert (=> b!1614074 (= res!720114 (or (not (= lt!577284 lt!577264)) (not (= lt!577264 lt!577285)) (not (= lt!577284 lt!577285))))))

(declare-fun printList!853 (LexerInterface!2738 List!17721) List!17720)

(assert (=> b!1614074 (= lt!577264 (printList!853 thiss!17113 (Cons!17651 (h!23052 tokens!457) Nil!17651)))))

(declare-fun lt!577276 () BalanceConc!11676)

(assert (=> b!1614074 (= lt!577284 (list!6895 lt!577276))))

(declare-fun lt!577271 () BalanceConc!11678)

(declare-fun printTailRec!791 (LexerInterface!2738 BalanceConc!11678 Int BalanceConc!11676) BalanceConc!11676)

(assert (=> b!1614074 (= lt!577276 (printTailRec!791 thiss!17113 lt!577271 0 (BalanceConc!11677 Empty!5866)))))

(declare-fun print!1269 (LexerInterface!2738 BalanceConc!11678) BalanceConc!11676)

(assert (=> b!1614074 (= lt!577276 (print!1269 thiss!17113 lt!577271))))

(declare-fun singletonSeq!1497 (Token!5784) BalanceConc!11678)

(assert (=> b!1614074 (= lt!577271 (singletonSeq!1497 (h!23052 tokens!457)))))

(declare-fun lt!577265 () List!17720)

(declare-fun lt!577270 () Option!3223)

(assert (=> b!1614074 (= lt!577270 (maxPrefix!1302 thiss!17113 rules!1846 lt!577265))))

(declare-fun b!1614075 () Bool)

(declare-fun res!720107 () Bool)

(assert (=> b!1614075 (=> (not res!720107) (not e!1035278))))

(declare-fun lt!577282 () List!17720)

(assert (=> b!1614075 (= res!720107 (= lt!577281 (Cons!17650 (head!3334 lt!577282) Nil!17650)))))

(declare-fun tp!470691 () Bool)

(declare-fun b!1614076 () Bool)

(declare-fun inv!23053 (String!20327) Bool)

(declare-fun inv!23057 (TokenValueInjection!6058) Bool)

(assert (=> b!1614076 (= e!1035270 (and tp!470691 (inv!23053 (tag!3385 (rule!4929 (h!23052 tokens!457)))) (inv!23057 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) e!1035266))))

(declare-fun b!1614077 () Bool)

(declare-fun lt!577278 () BalanceConc!11676)

(declare-fun head!3335 (BalanceConc!11676) C!9048)

(assert (=> b!1614077 (= e!1035278 (= lt!577281 (Cons!17650 (head!3335 lt!577278) Nil!17650)))))

(declare-fun b!1614078 () Bool)

(declare-fun res!720115 () Bool)

(assert (=> b!1614078 (=> (not res!720115) (not e!1035275))))

(assert (=> b!1614078 (= res!720115 (and (not ((_ is Nil!17651) tokens!457)) (not ((_ is Nil!17651) (t!148152 tokens!457)))))))

(declare-fun b!1614079 () Bool)

(declare-fun e!1035280 () Bool)

(assert (=> b!1614079 (= e!1035280 (not e!1035282))))

(declare-fun res!720118 () Bool)

(assert (=> b!1614079 (=> res!720118 e!1035282)))

(assert (=> b!1614079 (= res!720118 (not (= lt!577268 (t!148152 tokens!457))))))

(assert (=> b!1614079 (= lt!577268 (list!6896 (_1!9985 lt!577274)))))

(declare-fun lt!577283 () Unit!28359)

(declare-fun theoremInvertabilityWhenTokenListSeparable!183 (LexerInterface!2738 List!17722 List!17721) Unit!28359)

(assert (=> b!1614079 (= lt!577283 (theoremInvertabilityWhenTokenListSeparable!183 thiss!17113 rules!1846 (t!148152 tokens!457)))))

(declare-fun lt!577273 () List!17720)

(declare-fun isPrefix!1369 (List!17720 List!17720) Bool)

(assert (=> b!1614079 (isPrefix!1369 lt!577285 lt!577273)))

(declare-fun lt!577280 () Unit!28359)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!894 (List!17720 List!17720) Unit!28359)

(assert (=> b!1614079 (= lt!577280 (lemmaConcatTwoListThenFirstIsPrefix!894 lt!577285 lt!577282))))

(declare-fun b!1614080 () Bool)

(declare-fun res!720104 () Bool)

(assert (=> b!1614080 (=> (not res!720104) (not e!1035275))))

(declare-fun rulesInvariant!2407 (LexerInterface!2738 List!17722) Bool)

(assert (=> b!1614080 (= res!720104 (rulesInvariant!2407 thiss!17113 rules!1846))))

(declare-fun b!1614081 () Bool)

(assert (=> b!1614081 (= e!1035262 e!1035274)))

(declare-fun res!720110 () Bool)

(assert (=> b!1614081 (=> res!720110 e!1035274)))

(assert (=> b!1614081 (= res!720110 (not (isDefined!2590 lt!577270)))))

(declare-fun lt!577269 () Unit!28359)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!312 (LexerInterface!2738 List!17722 List!17720 List!17720) Unit!28359)

(assert (=> b!1614081 (= lt!577269 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!312 thiss!17113 rules!1846 lt!577285 lt!577282))))

(declare-fun b!1614082 () Bool)

(declare-fun rulesValidInductive!950 (LexerInterface!2738 List!17722) Bool)

(assert (=> b!1614082 (= e!1035264 (rulesValidInductive!950 thiss!17113 rules!1846))))

(assert (=> b!1614082 e!1035272))

(declare-fun res!720103 () Bool)

(assert (=> b!1614082 (=> (not res!720103) (not e!1035272))))

(assert (=> b!1614082 (= res!720103 (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 (originalCharacters!3923 (h!23052 tokens!457)))))))

(declare-fun b!1614083 () Bool)

(declare-fun tp!470687 () Bool)

(assert (=> b!1614083 (= e!1035268 (and tp!470687 (inv!23053 (tag!3385 (h!23053 rules!1846))) (inv!23057 (transformation!3109 (h!23053 rules!1846))) e!1035281))))

(declare-fun b!1614084 () Bool)

(assert (=> b!1614084 (= e!1035275 e!1035280)))

(declare-fun res!720102 () Bool)

(assert (=> b!1614084 (=> (not res!720102) (not e!1035280))))

(assert (=> b!1614084 (= res!720102 (= lt!577265 lt!577273))))

(assert (=> b!1614084 (= lt!577273 (++!4655 lt!577285 lt!577282))))

(declare-fun lt!577279 () BalanceConc!11676)

(assert (=> b!1614084 (= lt!577265 (list!6895 lt!577279))))

(assert (=> b!1614084 (= lt!577282 (list!6895 lt!577278))))

(assert (=> b!1614084 (= lt!577285 (list!6895 lt!577266))))

(assert (=> b!1614084 (= lt!577266 (charsOf!1758 (h!23052 tokens!457)))))

(assert (=> b!1614084 (= lt!577274 (lex!1222 thiss!17113 rules!1846 lt!577278))))

(assert (=> b!1614084 (= lt!577278 (print!1269 thiss!17113 lt!577263))))

(assert (=> b!1614084 (= lt!577263 (seqFromList!1967 (t!148152 tokens!457)))))

(assert (=> b!1614084 (= lt!577279 (print!1269 thiss!17113 (seqFromList!1967 tokens!457)))))

(assert (= (and start!152526 res!720111) b!1614062))

(assert (= (and b!1614062 res!720105) b!1614080))

(assert (= (and b!1614080 res!720104) b!1614063))

(assert (= (and b!1614063 res!720116) b!1614068))

(assert (= (and b!1614068 res!720119) b!1614078))

(assert (= (and b!1614078 res!720115) b!1614084))

(assert (= (and b!1614084 res!720102) b!1614079))

(assert (= (and b!1614079 (not res!720118)) b!1614069))

(assert (= (and b!1614069 (not res!720113)) b!1614064))

(assert (= (and b!1614064 (not res!720112)) b!1614074))

(assert (= (and b!1614074 (not res!720114)) b!1614059))

(assert (= (and b!1614059 (not res!720108)) b!1614072))

(assert (= (and b!1614072 (not res!720106)) b!1614081))

(assert (= (and b!1614081 (not res!720110)) b!1614073))

(assert (= (and b!1614073 (not res!720121)) b!1614058))

(assert (= (and b!1614058 (not res!720117)) b!1614071))

(assert (= (and b!1614071 res!720101) b!1614061))

(assert (= (and b!1614061 res!720120) b!1614075))

(assert (= (and b!1614075 res!720107) b!1614077))

(assert (= (and b!1614071 (not res!720109)) b!1614082))

(assert (= (and b!1614082 res!720103) b!1614070))

(assert (= b!1614083 b!1614060))

(assert (= b!1614065 b!1614083))

(assert (= (and start!152526 ((_ is Cons!17652) rules!1846)) b!1614065))

(assert (= b!1614076 b!1614066))

(assert (= b!1614067 b!1614076))

(assert (= b!1614057 b!1614067))

(assert (= (and start!152526 ((_ is Cons!17651) tokens!457)) b!1614057))

(declare-fun m!1932761 () Bool)

(assert (=> b!1614082 m!1932761))

(declare-fun m!1932763 () Bool)

(assert (=> b!1614082 m!1932763))

(assert (=> b!1614082 m!1932763))

(declare-fun m!1932765 () Bool)

(assert (=> b!1614082 m!1932765))

(declare-fun m!1932767 () Bool)

(assert (=> b!1614077 m!1932767))

(declare-fun m!1932769 () Bool)

(assert (=> b!1614059 m!1932769))

(declare-fun m!1932771 () Bool)

(assert (=> b!1614083 m!1932771))

(declare-fun m!1932773 () Bool)

(assert (=> b!1614083 m!1932773))

(declare-fun m!1932775 () Bool)

(assert (=> b!1614062 m!1932775))

(declare-fun m!1932777 () Bool)

(assert (=> b!1614079 m!1932777))

(declare-fun m!1932779 () Bool)

(assert (=> b!1614079 m!1932779))

(declare-fun m!1932781 () Bool)

(assert (=> b!1614079 m!1932781))

(declare-fun m!1932783 () Bool)

(assert (=> b!1614079 m!1932783))

(declare-fun m!1932785 () Bool)

(assert (=> b!1614081 m!1932785))

(declare-fun m!1932787 () Bool)

(assert (=> b!1614081 m!1932787))

(declare-fun m!1932789 () Bool)

(assert (=> b!1614084 m!1932789))

(declare-fun m!1932791 () Bool)

(assert (=> b!1614084 m!1932791))

(declare-fun m!1932793 () Bool)

(assert (=> b!1614084 m!1932793))

(declare-fun m!1932795 () Bool)

(assert (=> b!1614084 m!1932795))

(declare-fun m!1932797 () Bool)

(assert (=> b!1614084 m!1932797))

(assert (=> b!1614084 m!1932791))

(declare-fun m!1932799 () Bool)

(assert (=> b!1614084 m!1932799))

(declare-fun m!1932801 () Bool)

(assert (=> b!1614084 m!1932801))

(declare-fun m!1932803 () Bool)

(assert (=> b!1614084 m!1932803))

(declare-fun m!1932805 () Bool)

(assert (=> b!1614084 m!1932805))

(declare-fun m!1932807 () Bool)

(assert (=> b!1614084 m!1932807))

(declare-fun m!1932809 () Bool)

(assert (=> b!1614076 m!1932809))

(declare-fun m!1932811 () Bool)

(assert (=> b!1614076 m!1932811))

(declare-fun m!1932813 () Bool)

(assert (=> b!1614075 m!1932813))

(declare-fun m!1932815 () Bool)

(assert (=> b!1614068 m!1932815))

(declare-fun m!1932817 () Bool)

(assert (=> b!1614070 m!1932817))

(assert (=> b!1614070 m!1932817))

(declare-fun m!1932819 () Bool)

(assert (=> b!1614070 m!1932819))

(declare-fun m!1932821 () Bool)

(assert (=> b!1614073 m!1932821))

(declare-fun m!1932823 () Bool)

(assert (=> b!1614073 m!1932823))

(declare-fun m!1932825 () Bool)

(assert (=> b!1614073 m!1932825))

(declare-fun m!1932827 () Bool)

(assert (=> b!1614073 m!1932827))

(assert (=> b!1614073 m!1932823))

(declare-fun m!1932829 () Bool)

(assert (=> b!1614073 m!1932829))

(declare-fun m!1932831 () Bool)

(assert (=> b!1614073 m!1932831))

(assert (=> b!1614073 m!1932825))

(assert (=> b!1614073 m!1932831))

(declare-fun m!1932833 () Bool)

(assert (=> b!1614069 m!1932833))

(declare-fun m!1932835 () Bool)

(assert (=> b!1614069 m!1932835))

(declare-fun m!1932837 () Bool)

(assert (=> b!1614069 m!1932837))

(declare-fun m!1932839 () Bool)

(assert (=> b!1614069 m!1932839))

(declare-fun m!1932841 () Bool)

(assert (=> b!1614069 m!1932841))

(assert (=> b!1614069 m!1932837))

(assert (=> b!1614069 m!1932839))

(declare-fun m!1932843 () Bool)

(assert (=> b!1614061 m!1932843))

(declare-fun m!1932845 () Bool)

(assert (=> b!1614080 m!1932845))

(declare-fun m!1932847 () Bool)

(assert (=> b!1614057 m!1932847))

(declare-fun m!1932849 () Bool)

(assert (=> b!1614067 m!1932849))

(declare-fun m!1932851 () Bool)

(assert (=> b!1614072 m!1932851))

(assert (=> b!1614072 m!1932851))

(declare-fun m!1932853 () Bool)

(assert (=> b!1614072 m!1932853))

(declare-fun m!1932855 () Bool)

(assert (=> b!1614072 m!1932855))

(declare-fun m!1932857 () Bool)

(assert (=> b!1614074 m!1932857))

(declare-fun m!1932859 () Bool)

(assert (=> b!1614074 m!1932859))

(declare-fun m!1932861 () Bool)

(assert (=> b!1614074 m!1932861))

(declare-fun m!1932863 () Bool)

(assert (=> b!1614074 m!1932863))

(declare-fun m!1932865 () Bool)

(assert (=> b!1614074 m!1932865))

(declare-fun m!1932867 () Bool)

(assert (=> b!1614074 m!1932867))

(declare-fun m!1932869 () Bool)

(assert (=> b!1614071 m!1932869))

(assert (=> b!1614071 m!1932869))

(declare-fun m!1932871 () Bool)

(assert (=> b!1614071 m!1932871))

(assert (=> b!1614071 m!1932871))

(declare-fun m!1932873 () Bool)

(assert (=> b!1614071 m!1932873))

(declare-fun m!1932875 () Bool)

(assert (=> b!1614064 m!1932875))

(declare-fun m!1932877 () Bool)

(assert (=> b!1614058 m!1932877))

(assert (=> b!1614058 m!1932877))

(declare-fun m!1932879 () Bool)

(assert (=> b!1614058 m!1932879))

(declare-fun m!1932881 () Bool)

(assert (=> b!1614058 m!1932881))

(declare-fun m!1932883 () Bool)

(assert (=> b!1614063 m!1932883))

(check-sat (not b!1614059) (not b_next!44151) (not b!1614067) (not b!1614058) (not b!1614069) (not b_next!44155) b_and!114457 (not b!1614074) (not b!1614070) b_and!114459 (not b!1614076) (not b!1614064) (not b!1614079) (not b!1614082) (not b!1614080) (not b!1614065) (not b_next!44157) (not b!1614072) (not b!1614083) (not b_next!44153) (not b!1614063) b_and!114453 (not b!1614073) (not b!1614071) (not b!1614061) (not b!1614077) (not b!1614075) (not b!1614062) (not b!1614068) b_and!114455 (not b!1614084) (not b!1614081) (not b!1614057))
(check-sat (not b_next!44151) (not b_next!44157) (not b_next!44153) b_and!114453 (not b_next!44155) b_and!114457 b_and!114455 b_and!114459)
(get-model)

(declare-fun d!485679 () Bool)

(declare-fun list!6898 (Conc!5867) List!17721)

(assert (=> d!485679 (= (list!6896 (_1!9985 lt!577274)) (list!6898 (c!262919 (_1!9985 lt!577274))))))

(declare-fun bs!393995 () Bool)

(assert (= bs!393995 d!485679))

(declare-fun m!1932913 () Bool)

(assert (=> bs!393995 m!1932913))

(assert (=> b!1614079 d!485679))

(declare-fun d!485685 () Bool)

(declare-fun e!1035350 () Bool)

(assert (=> d!485685 e!1035350))

(declare-fun res!720197 () Bool)

(assert (=> d!485685 (=> (not res!720197) (not e!1035350))))

(assert (=> d!485685 (= res!720197 (= (list!6896 (_1!9985 (lex!1222 thiss!17113 rules!1846 (print!1269 thiss!17113 (seqFromList!1967 (t!148152 tokens!457)))))) (t!148152 tokens!457)))))

(declare-fun lt!577453 () Unit!28359)

(declare-fun e!1035351 () Unit!28359)

(assert (=> d!485685 (= lt!577453 e!1035351)))

(declare-fun c!262950 () Bool)

(assert (=> d!485685 (= c!262950 (or ((_ is Nil!17651) (t!148152 tokens!457)) ((_ is Nil!17651) (t!148152 (t!148152 tokens!457)))))))

(assert (=> d!485685 (not (isEmpty!10668 rules!1846))))

(assert (=> d!485685 (= (theoremInvertabilityWhenTokenListSeparable!183 thiss!17113 rules!1846 (t!148152 tokens!457)) lt!577453)))

(declare-fun b!1614212 () Bool)

(declare-fun Unit!28361 () Unit!28359)

(assert (=> b!1614212 (= e!1035351 Unit!28361)))

(declare-fun b!1614213 () Bool)

(declare-fun Unit!28362 () Unit!28359)

(assert (=> b!1614213 (= e!1035351 Unit!28362)))

(declare-fun lt!577442 () BalanceConc!11676)

(assert (=> b!1614213 (= lt!577442 (print!1269 thiss!17113 (seqFromList!1967 (t!148152 tokens!457))))))

(declare-fun lt!577450 () BalanceConc!11676)

(assert (=> b!1614213 (= lt!577450 (print!1269 thiss!17113 (seqFromList!1967 (t!148152 (t!148152 tokens!457)))))))

(declare-fun lt!577448 () tuple2!17166)

(assert (=> b!1614213 (= lt!577448 (lex!1222 thiss!17113 rules!1846 lt!577450))))

(declare-fun lt!577438 () List!17720)

(assert (=> b!1614213 (= lt!577438 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457)))))))

(declare-fun lt!577446 () List!17720)

(assert (=> b!1614213 (= lt!577446 (list!6895 lt!577450))))

(declare-fun lt!577454 () Unit!28359)

(assert (=> b!1614213 (= lt!577454 (lemmaConcatTwoListThenFirstIsPrefix!894 lt!577438 lt!577446))))

(assert (=> b!1614213 (isPrefix!1369 lt!577438 (++!4655 lt!577438 lt!577446))))

(declare-fun lt!577460 () Unit!28359)

(assert (=> b!1614213 (= lt!577460 lt!577454)))

(declare-fun lt!577449 () Unit!28359)

(assert (=> b!1614213 (= lt!577449 (theoremInvertabilityWhenTokenListSeparable!183 thiss!17113 rules!1846 (t!148152 (t!148152 tokens!457))))))

(declare-fun lt!577461 () Unit!28359)

(assert (=> b!1614213 (= lt!577461 (seqFromListBHdTlConstructive!186 (h!23052 (t!148152 (t!148152 tokens!457))) (t!148152 (t!148152 (t!148152 tokens!457))) (_1!9985 lt!577448)))))

(assert (=> b!1614213 (= (list!6896 (_1!9985 lt!577448)) (list!6896 (prepend!617 (seqFromList!1967 (t!148152 (t!148152 (t!148152 tokens!457)))) (h!23052 (t!148152 (t!148152 tokens!457))))))))

(declare-fun lt!577456 () Unit!28359)

(assert (=> b!1614213 (= lt!577456 lt!577461)))

(declare-fun lt!577451 () Option!3223)

(assert (=> b!1614213 (= lt!577451 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 lt!577442)))))

(assert (=> b!1614213 (= (print!1269 thiss!17113 (singletonSeq!1497 (h!23052 (t!148152 tokens!457)))) (printTailRec!791 thiss!17113 (singletonSeq!1497 (h!23052 (t!148152 tokens!457))) 0 (BalanceConc!11677 Empty!5866)))))

(declare-fun lt!577439 () Unit!28359)

(declare-fun Unit!28363 () Unit!28359)

(assert (=> b!1614213 (= lt!577439 Unit!28363)))

(declare-fun lt!577441 () Unit!28359)

(assert (=> b!1614213 (= lt!577441 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!312 thiss!17113 rules!1846 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457)))) (list!6895 lt!577450)))))

(assert (=> b!1614213 (= (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457)))) (originalCharacters!3923 (h!23052 (t!148152 tokens!457))))))

(declare-fun lt!577440 () Unit!28359)

(declare-fun Unit!28364 () Unit!28359)

(assert (=> b!1614213 (= lt!577440 Unit!28364)))

(assert (=> b!1614213 (= (list!6895 (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 (t!148152 tokens!457)))) 0))) (Cons!17650 (head!3334 (originalCharacters!3923 (h!23052 (t!148152 (t!148152 tokens!457))))) Nil!17650))))

(declare-fun lt!577447 () Unit!28359)

(declare-fun Unit!28365 () Unit!28359)

(assert (=> b!1614213 (= lt!577447 Unit!28365)))

(assert (=> b!1614213 (= (list!6895 (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 (t!148152 tokens!457)))) 0))) (Cons!17650 (head!3334 (list!6895 lt!577450)) Nil!17650))))

(declare-fun lt!577443 () Unit!28359)

(declare-fun Unit!28366 () Unit!28359)

(assert (=> b!1614213 (= lt!577443 Unit!28366)))

(assert (=> b!1614213 (= (list!6895 (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 (t!148152 tokens!457)))) 0))) (Cons!17650 (head!3335 lt!577450) Nil!17650))))

(declare-fun lt!577459 () Unit!28359)

(declare-fun Unit!28367 () Unit!28359)

(assert (=> b!1614213 (= lt!577459 Unit!28367)))

(assert (=> b!1614213 (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 (originalCharacters!3923 (h!23052 (t!148152 tokens!457)))))))

(declare-fun lt!577444 () Unit!28359)

(declare-fun Unit!28368 () Unit!28359)

(assert (=> b!1614213 (= lt!577444 Unit!28368)))

(assert (=> b!1614213 (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457))))))))

(declare-fun lt!577452 () Unit!28359)

(declare-fun Unit!28369 () Unit!28359)

(assert (=> b!1614213 (= lt!577452 Unit!28369)))

(declare-fun lt!577436 () Unit!28359)

(declare-fun Unit!28370 () Unit!28359)

(assert (=> b!1614213 (= lt!577436 Unit!28370)))

(declare-fun get!5058 (Option!3223) tuple2!17168)

(assert (=> b!1614213 (= (_1!9986 (get!5058 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457))))))) (h!23052 (t!148152 tokens!457)))))

(declare-fun lt!577458 () Unit!28359)

(declare-fun Unit!28371 () Unit!28359)

(assert (=> b!1614213 (= lt!577458 Unit!28371)))

(declare-fun isEmpty!10672 (List!17720) Bool)

(assert (=> b!1614213 (isEmpty!10672 (_2!9986 (get!5058 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457))))))))))

(declare-fun lt!577455 () Unit!28359)

(declare-fun Unit!28372 () Unit!28359)

(assert (=> b!1614213 (= lt!577455 Unit!28372)))

(declare-fun matchR!1942 (Regex!4437 List!17720) Bool)

(assert (=> b!1614213 (matchR!1942 (regex!3109 (rule!4929 (h!23052 (t!148152 tokens!457)))) (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457)))))))

(declare-fun lt!577445 () Unit!28359)

(declare-fun Unit!28373 () Unit!28359)

(assert (=> b!1614213 (= lt!577445 Unit!28373)))

(assert (=> b!1614213 (= (rule!4929 (h!23052 (t!148152 tokens!457))) (rule!4929 (h!23052 (t!148152 tokens!457))))))

(declare-fun lt!577437 () Unit!28359)

(declare-fun Unit!28374 () Unit!28359)

(assert (=> b!1614213 (= lt!577437 Unit!28374)))

(declare-fun lt!577457 () Unit!28359)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!91 (LexerInterface!2738 List!17722 Token!5784 Rule!6018 List!17720) Unit!28359)

(assert (=> b!1614213 (= lt!577457 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!91 thiss!17113 rules!1846 (h!23052 (t!148152 tokens!457)) (rule!4929 (h!23052 (t!148152 tokens!457))) (list!6895 lt!577450)))))

(declare-fun b!1614214 () Bool)

(declare-fun isEmpty!10673 (BalanceConc!11676) Bool)

(assert (=> b!1614214 (= e!1035350 (isEmpty!10673 (_2!9985 (lex!1222 thiss!17113 rules!1846 (print!1269 thiss!17113 (seqFromList!1967 (t!148152 tokens!457)))))))))

(assert (= (and d!485685 c!262950) b!1614212))

(assert (= (and d!485685 (not c!262950)) b!1614213))

(assert (= (and d!485685 res!720197) b!1614214))

(declare-fun m!1933141 () Bool)

(assert (=> d!485685 m!1933141))

(assert (=> d!485685 m!1932789))

(assert (=> d!485685 m!1932789))

(declare-fun m!1933143 () Bool)

(assert (=> d!485685 m!1933143))

(assert (=> d!485685 m!1932775))

(assert (=> d!485685 m!1933143))

(declare-fun m!1933145 () Bool)

(assert (=> d!485685 m!1933145))

(assert (=> b!1614213 m!1932837))

(declare-fun m!1933147 () Bool)

(assert (=> b!1614213 m!1933147))

(assert (=> b!1614213 m!1932831))

(declare-fun m!1933149 () Bool)

(assert (=> b!1614213 m!1933149))

(assert (=> b!1614213 m!1932831))

(declare-fun m!1933151 () Bool)

(assert (=> b!1614213 m!1933151))

(assert (=> b!1614213 m!1932789))

(assert (=> b!1614213 m!1933149))

(declare-fun m!1933153 () Bool)

(assert (=> b!1614213 m!1933153))

(declare-fun m!1933155 () Bool)

(assert (=> b!1614213 m!1933155))

(declare-fun m!1933157 () Bool)

(assert (=> b!1614213 m!1933157))

(declare-fun m!1933159 () Bool)

(assert (=> b!1614213 m!1933159))

(assert (=> b!1614213 m!1932837))

(declare-fun m!1933161 () Bool)

(assert (=> b!1614213 m!1933161))

(declare-fun m!1933163 () Bool)

(assert (=> b!1614213 m!1933163))

(declare-fun m!1933165 () Bool)

(assert (=> b!1614213 m!1933165))

(assert (=> b!1614213 m!1933155))

(declare-fun m!1933167 () Bool)

(assert (=> b!1614213 m!1933167))

(assert (=> b!1614213 m!1933153))

(declare-fun m!1933169 () Bool)

(assert (=> b!1614213 m!1933169))

(declare-fun m!1933171 () Bool)

(assert (=> b!1614213 m!1933171))

(declare-fun m!1933173 () Bool)

(assert (=> b!1614213 m!1933173))

(declare-fun m!1933175 () Bool)

(assert (=> b!1614213 m!1933175))

(assert (=> b!1614213 m!1933171))

(declare-fun m!1933177 () Bool)

(assert (=> b!1614213 m!1933177))

(assert (=> b!1614213 m!1933173))

(declare-fun m!1933179 () Bool)

(assert (=> b!1614213 m!1933179))

(declare-fun m!1933181 () Bool)

(assert (=> b!1614213 m!1933181))

(declare-fun m!1933183 () Bool)

(assert (=> b!1614213 m!1933183))

(declare-fun m!1933185 () Bool)

(assert (=> b!1614213 m!1933185))

(declare-fun m!1933187 () Bool)

(assert (=> b!1614213 m!1933187))

(assert (=> b!1614213 m!1933149))

(declare-fun m!1933189 () Bool)

(assert (=> b!1614213 m!1933189))

(declare-fun m!1933191 () Bool)

(assert (=> b!1614213 m!1933191))

(declare-fun m!1933193 () Bool)

(assert (=> b!1614213 m!1933193))

(assert (=> b!1614213 m!1933177))

(declare-fun m!1933195 () Bool)

(assert (=> b!1614213 m!1933195))

(assert (=> b!1614213 m!1933149))

(assert (=> b!1614213 m!1933181))

(declare-fun m!1933197 () Bool)

(assert (=> b!1614213 m!1933197))

(assert (=> b!1614213 m!1933195))

(declare-fun m!1933199 () Bool)

(assert (=> b!1614213 m!1933199))

(assert (=> b!1614213 m!1933161))

(declare-fun m!1933201 () Bool)

(assert (=> b!1614213 m!1933201))

(assert (=> b!1614213 m!1933181))

(declare-fun m!1933203 () Bool)

(assert (=> b!1614213 m!1933203))

(assert (=> b!1614213 m!1932789))

(assert (=> b!1614213 m!1933143))

(assert (=> b!1614213 m!1933153))

(declare-fun m!1933205 () Bool)

(assert (=> b!1614213 m!1933205))

(assert (=> b!1614213 m!1933191))

(declare-fun m!1933207 () Bool)

(assert (=> b!1614213 m!1933207))

(assert (=> b!1614213 m!1933181))

(declare-fun m!1933209 () Bool)

(assert (=> b!1614213 m!1933209))

(assert (=> b!1614213 m!1933161))

(assert (=> b!1614213 m!1933193))

(declare-fun m!1933211 () Bool)

(assert (=> b!1614213 m!1933211))

(assert (=> b!1614213 m!1933175))

(declare-fun m!1933213 () Bool)

(assert (=> b!1614213 m!1933213))

(assert (=> b!1614214 m!1932789))

(assert (=> b!1614214 m!1932789))

(assert (=> b!1614214 m!1933143))

(assert (=> b!1614214 m!1933143))

(assert (=> b!1614214 m!1933145))

(declare-fun m!1933215 () Bool)

(assert (=> b!1614214 m!1933215))

(assert (=> b!1614079 d!485685))

(declare-fun b!1614224 () Bool)

(declare-fun res!720206 () Bool)

(declare-fun e!1035358 () Bool)

(assert (=> b!1614224 (=> (not res!720206) (not e!1035358))))

(assert (=> b!1614224 (= res!720206 (= (head!3334 lt!577285) (head!3334 lt!577273)))))

(declare-fun b!1614225 () Bool)

(declare-fun tail!2325 (List!17720) List!17720)

(assert (=> b!1614225 (= e!1035358 (isPrefix!1369 (tail!2325 lt!577285) (tail!2325 lt!577273)))))

(declare-fun d!485737 () Bool)

(declare-fun e!1035360 () Bool)

(assert (=> d!485737 e!1035360))

(declare-fun res!720208 () Bool)

(assert (=> d!485737 (=> res!720208 e!1035360)))

(declare-fun lt!577464 () Bool)

(assert (=> d!485737 (= res!720208 (not lt!577464))))

(declare-fun e!1035359 () Bool)

(assert (=> d!485737 (= lt!577464 e!1035359)))

(declare-fun res!720209 () Bool)

(assert (=> d!485737 (=> res!720209 e!1035359)))

(assert (=> d!485737 (= res!720209 ((_ is Nil!17650) lt!577285))))

(assert (=> d!485737 (= (isPrefix!1369 lt!577285 lt!577273) lt!577464)))

(declare-fun b!1614226 () Bool)

(declare-fun size!14176 (List!17720) Int)

(assert (=> b!1614226 (= e!1035360 (>= (size!14176 lt!577273) (size!14176 lt!577285)))))

(declare-fun b!1614223 () Bool)

(assert (=> b!1614223 (= e!1035359 e!1035358)))

(declare-fun res!720207 () Bool)

(assert (=> b!1614223 (=> (not res!720207) (not e!1035358))))

(assert (=> b!1614223 (= res!720207 (not ((_ is Nil!17650) lt!577273)))))

(assert (= (and d!485737 (not res!720209)) b!1614223))

(assert (= (and b!1614223 res!720207) b!1614224))

(assert (= (and b!1614224 res!720206) b!1614225))

(assert (= (and d!485737 (not res!720208)) b!1614226))

(declare-fun m!1933217 () Bool)

(assert (=> b!1614224 m!1933217))

(declare-fun m!1933219 () Bool)

(assert (=> b!1614224 m!1933219))

(declare-fun m!1933221 () Bool)

(assert (=> b!1614225 m!1933221))

(declare-fun m!1933223 () Bool)

(assert (=> b!1614225 m!1933223))

(assert (=> b!1614225 m!1933221))

(assert (=> b!1614225 m!1933223))

(declare-fun m!1933225 () Bool)

(assert (=> b!1614225 m!1933225))

(declare-fun m!1933227 () Bool)

(assert (=> b!1614226 m!1933227))

(declare-fun m!1933229 () Bool)

(assert (=> b!1614226 m!1933229))

(assert (=> b!1614079 d!485737))

(declare-fun d!485739 () Bool)

(assert (=> d!485739 (isPrefix!1369 lt!577285 (++!4655 lt!577285 lt!577282))))

(declare-fun lt!577467 () Unit!28359)

(declare-fun choose!9711 (List!17720 List!17720) Unit!28359)

(assert (=> d!485739 (= lt!577467 (choose!9711 lt!577285 lt!577282))))

(assert (=> d!485739 (= (lemmaConcatTwoListThenFirstIsPrefix!894 lt!577285 lt!577282) lt!577467)))

(declare-fun bs!394008 () Bool)

(assert (= bs!394008 d!485739))

(assert (=> bs!394008 m!1932799))

(assert (=> bs!394008 m!1932799))

(declare-fun m!1933231 () Bool)

(assert (=> bs!394008 m!1933231))

(declare-fun m!1933233 () Bool)

(assert (=> bs!394008 m!1933233))

(assert (=> b!1614079 d!485739))

(declare-fun d!485741 () Bool)

(declare-fun c!262953 () Bool)

(assert (=> d!485741 (= c!262953 (isEmpty!10672 (++!4655 lt!577285 lt!577281)))))

(declare-fun e!1035363 () Bool)

(assert (=> d!485741 (= (prefixMatch!372 lt!577275 (++!4655 lt!577285 lt!577281)) e!1035363)))

(declare-fun b!1614231 () Bool)

(declare-fun lostCause!420 (Regex!4437) Bool)

(assert (=> b!1614231 (= e!1035363 (not (lostCause!420 lt!577275)))))

(declare-fun b!1614232 () Bool)

(declare-fun derivativeStep!1064 (Regex!4437 C!9048) Regex!4437)

(assert (=> b!1614232 (= e!1035363 (prefixMatch!372 (derivativeStep!1064 lt!577275 (head!3334 (++!4655 lt!577285 lt!577281))) (tail!2325 (++!4655 lt!577285 lt!577281))))))

(assert (= (and d!485741 c!262953) b!1614231))

(assert (= (and d!485741 (not c!262953)) b!1614232))

(assert (=> d!485741 m!1932877))

(declare-fun m!1933235 () Bool)

(assert (=> d!485741 m!1933235))

(declare-fun m!1933237 () Bool)

(assert (=> b!1614231 m!1933237))

(assert (=> b!1614232 m!1932877))

(declare-fun m!1933239 () Bool)

(assert (=> b!1614232 m!1933239))

(assert (=> b!1614232 m!1933239))

(declare-fun m!1933241 () Bool)

(assert (=> b!1614232 m!1933241))

(assert (=> b!1614232 m!1932877))

(declare-fun m!1933243 () Bool)

(assert (=> b!1614232 m!1933243))

(assert (=> b!1614232 m!1933241))

(assert (=> b!1614232 m!1933243))

(declare-fun m!1933245 () Bool)

(assert (=> b!1614232 m!1933245))

(assert (=> b!1614058 d!485741))

(declare-fun b!1614249 () Bool)

(declare-fun e!1035372 () List!17720)

(assert (=> b!1614249 (= e!1035372 lt!577281)))

(declare-fun b!1614251 () Bool)

(declare-fun res!720218 () Bool)

(declare-fun e!1035373 () Bool)

(assert (=> b!1614251 (=> (not res!720218) (not e!1035373))))

(declare-fun lt!577504 () List!17720)

(assert (=> b!1614251 (= res!720218 (= (size!14176 lt!577504) (+ (size!14176 lt!577285) (size!14176 lt!577281))))))

(declare-fun b!1614252 () Bool)

(assert (=> b!1614252 (= e!1035373 (or (not (= lt!577281 Nil!17650)) (= lt!577504 lt!577285)))))

(declare-fun b!1614250 () Bool)

(assert (=> b!1614250 (= e!1035372 (Cons!17650 (h!23051 lt!577285) (++!4655 (t!148151 lt!577285) lt!577281)))))

(declare-fun d!485743 () Bool)

(assert (=> d!485743 e!1035373))

(declare-fun res!720219 () Bool)

(assert (=> d!485743 (=> (not res!720219) (not e!1035373))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2447 (List!17720) (InoxSet C!9048))

(assert (=> d!485743 (= res!720219 (= (content!2447 lt!577504) ((_ map or) (content!2447 lt!577285) (content!2447 lt!577281))))))

(assert (=> d!485743 (= lt!577504 e!1035372)))

(declare-fun c!262958 () Bool)

(assert (=> d!485743 (= c!262958 ((_ is Nil!17650) lt!577285))))

(assert (=> d!485743 (= (++!4655 lt!577285 lt!577281) lt!577504)))

(assert (= (and d!485743 c!262958) b!1614249))

(assert (= (and d!485743 (not c!262958)) b!1614250))

(assert (= (and d!485743 res!720219) b!1614251))

(assert (= (and b!1614251 res!720218) b!1614252))

(declare-fun m!1933247 () Bool)

(assert (=> b!1614251 m!1933247))

(assert (=> b!1614251 m!1933229))

(declare-fun m!1933249 () Bool)

(assert (=> b!1614251 m!1933249))

(declare-fun m!1933251 () Bool)

(assert (=> b!1614250 m!1933251))

(declare-fun m!1933253 () Bool)

(assert (=> d!485743 m!1933253))

(declare-fun m!1933255 () Bool)

(assert (=> d!485743 m!1933255))

(declare-fun m!1933257 () Bool)

(assert (=> d!485743 m!1933257))

(assert (=> b!1614058 d!485743))

(declare-fun d!485745 () Bool)

(declare-fun list!6899 (Conc!5866) List!17720)

(assert (=> d!485745 (= (list!6895 lt!577277) (list!6899 (c!262917 lt!577277)))))

(declare-fun bs!394009 () Bool)

(assert (= bs!394009 d!485745))

(declare-fun m!1933259 () Bool)

(assert (=> bs!394009 m!1933259))

(assert (=> b!1614058 d!485745))

(declare-fun d!485747 () Bool)

(declare-fun res!720224 () Bool)

(declare-fun e!1035376 () Bool)

(assert (=> d!485747 (=> (not res!720224) (not e!1035376))))

(assert (=> d!485747 (= res!720224 (not (isEmpty!10672 (originalCharacters!3923 (h!23052 tokens!457)))))))

(assert (=> d!485747 (= (inv!23056 (h!23052 tokens!457)) e!1035376)))

(declare-fun b!1614257 () Bool)

(declare-fun res!720225 () Bool)

(assert (=> b!1614257 (=> (not res!720225) (not e!1035376))))

(declare-fun dynLambda!7871 (Int TokenValue!3199) BalanceConc!11676)

(assert (=> b!1614257 (= res!720225 (= (originalCharacters!3923 (h!23052 tokens!457)) (list!6895 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (value!98279 (h!23052 tokens!457))))))))

(declare-fun b!1614258 () Bool)

(assert (=> b!1614258 (= e!1035376 (= (size!14172 (h!23052 tokens!457)) (size!14176 (originalCharacters!3923 (h!23052 tokens!457)))))))

(assert (= (and d!485747 res!720224) b!1614257))

(assert (= (and b!1614257 res!720225) b!1614258))

(declare-fun b_lambda!50921 () Bool)

(assert (=> (not b_lambda!50921) (not b!1614257)))

(declare-fun t!148165 () Bool)

(declare-fun tb!92767 () Bool)

(assert (=> (and b!1614060 (= (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457))))) t!148165) tb!92767))

(declare-fun b!1614263 () Bool)

(declare-fun e!1035379 () Bool)

(declare-fun tp!470699 () Bool)

(declare-fun inv!23060 (Conc!5866) Bool)

(assert (=> b!1614263 (= e!1035379 (and (inv!23060 (c!262917 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (value!98279 (h!23052 tokens!457))))) tp!470699))))

(declare-fun result!111800 () Bool)

(declare-fun inv!23061 (BalanceConc!11676) Bool)

(assert (=> tb!92767 (= result!111800 (and (inv!23061 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (value!98279 (h!23052 tokens!457)))) e!1035379))))

(assert (= tb!92767 b!1614263))

(declare-fun m!1933261 () Bool)

(assert (=> b!1614263 m!1933261))

(declare-fun m!1933263 () Bool)

(assert (=> tb!92767 m!1933263))

(assert (=> b!1614257 t!148165))

(declare-fun b_and!114469 () Bool)

(assert (= b_and!114455 (and (=> t!148165 result!111800) b_and!114469)))

(declare-fun t!148167 () Bool)

(declare-fun tb!92769 () Bool)

(assert (=> (and b!1614066 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457))))) t!148167) tb!92769))

(declare-fun result!111804 () Bool)

(assert (= result!111804 result!111800))

(assert (=> b!1614257 t!148167))

(declare-fun b_and!114471 () Bool)

(assert (= b_and!114459 (and (=> t!148167 result!111804) b_and!114471)))

(declare-fun m!1933265 () Bool)

(assert (=> d!485747 m!1933265))

(declare-fun m!1933267 () Bool)

(assert (=> b!1614257 m!1933267))

(assert (=> b!1614257 m!1933267))

(declare-fun m!1933269 () Bool)

(assert (=> b!1614257 m!1933269))

(declare-fun m!1933271 () Bool)

(assert (=> b!1614258 m!1933271))

(assert (=> b!1614057 d!485747))

(declare-fun d!485749 () Bool)

(assert (=> d!485749 (= (head!3334 (originalCharacters!3923 (h!23052 (t!148152 tokens!457)))) (h!23051 (originalCharacters!3923 (h!23052 (t!148152 tokens!457)))))))

(assert (=> b!1614061 d!485749))

(declare-fun d!485751 () Bool)

(assert (=> d!485751 true))

(declare-fun lt!577530 () Bool)

(declare-fun lambda!67068 () Int)

(declare-fun forall!4053 (List!17722 Int) Bool)

(assert (=> d!485751 (= lt!577530 (forall!4053 rules!1846 lambda!67068))))

(declare-fun e!1035397 () Bool)

(assert (=> d!485751 (= lt!577530 e!1035397)))

(declare-fun res!720243 () Bool)

(assert (=> d!485751 (=> res!720243 e!1035397)))

(assert (=> d!485751 (= res!720243 (not ((_ is Cons!17652) rules!1846)))))

(assert (=> d!485751 (= (rulesValidInductive!950 thiss!17113 rules!1846) lt!577530)))

(declare-fun b!1614284 () Bool)

(declare-fun e!1035396 () Bool)

(assert (=> b!1614284 (= e!1035397 e!1035396)))

(declare-fun res!720242 () Bool)

(assert (=> b!1614284 (=> (not res!720242) (not e!1035396))))

(declare-fun ruleValid!726 (LexerInterface!2738 Rule!6018) Bool)

(assert (=> b!1614284 (= res!720242 (ruleValid!726 thiss!17113 (h!23053 rules!1846)))))

(declare-fun b!1614285 () Bool)

(assert (=> b!1614285 (= e!1035396 (rulesValidInductive!950 thiss!17113 (t!148153 rules!1846)))))

(assert (= (and d!485751 (not res!720243)) b!1614284))

(assert (= (and b!1614284 res!720242) b!1614285))

(declare-fun m!1933347 () Bool)

(assert (=> d!485751 m!1933347))

(declare-fun m!1933349 () Bool)

(assert (=> b!1614284 m!1933349))

(declare-fun m!1933351 () Bool)

(assert (=> b!1614285 m!1933351))

(assert (=> b!1614082 d!485751))

(declare-fun d!485767 () Bool)

(declare-fun isEmpty!10674 (Option!3223) Bool)

(assert (=> d!485767 (= (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 (originalCharacters!3923 (h!23052 tokens!457)))) (not (isEmpty!10674 (maxPrefix!1302 thiss!17113 rules!1846 (originalCharacters!3923 (h!23052 tokens!457))))))))

(declare-fun bs!394012 () Bool)

(assert (= bs!394012 d!485767))

(assert (=> bs!394012 m!1932763))

(declare-fun m!1933353 () Bool)

(assert (=> bs!394012 m!1933353))

(assert (=> b!1614082 d!485767))

(declare-fun b!1614306 () Bool)

(declare-fun res!720258 () Bool)

(declare-fun e!1035404 () Bool)

(assert (=> b!1614306 (=> (not res!720258) (not e!1035404))))

(declare-fun lt!577545 () Option!3223)

(assert (=> b!1614306 (= res!720258 (= (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577545)))) (originalCharacters!3923 (_1!9986 (get!5058 lt!577545)))))))

(declare-fun call!104810 () Option!3223)

(declare-fun bm!104805 () Bool)

(declare-fun maxPrefixOneRule!757 (LexerInterface!2738 Rule!6018 List!17720) Option!3223)

(assert (=> bm!104805 (= call!104810 (maxPrefixOneRule!757 thiss!17113 (h!23053 rules!1846) (originalCharacters!3923 (h!23052 tokens!457))))))

(declare-fun b!1614307 () Bool)

(declare-fun res!720264 () Bool)

(assert (=> b!1614307 (=> (not res!720264) (not e!1035404))))

(assert (=> b!1614307 (= res!720264 (< (size!14176 (_2!9986 (get!5058 lt!577545))) (size!14176 (originalCharacters!3923 (h!23052 tokens!457)))))))

(declare-fun b!1614308 () Bool)

(declare-fun e!1035406 () Option!3223)

(declare-fun lt!577543 () Option!3223)

(declare-fun lt!577542 () Option!3223)

(assert (=> b!1614308 (= e!1035406 (ite (and ((_ is None!3222) lt!577543) ((_ is None!3222) lt!577542)) None!3222 (ite ((_ is None!3222) lt!577542) lt!577543 (ite ((_ is None!3222) lt!577543) lt!577542 (ite (>= (size!14172 (_1!9986 (v!24199 lt!577543))) (size!14172 (_1!9986 (v!24199 lt!577542)))) lt!577543 lt!577542)))))))

(assert (=> b!1614308 (= lt!577543 call!104810)))

(assert (=> b!1614308 (= lt!577542 (maxPrefix!1302 thiss!17113 (t!148153 rules!1846) (originalCharacters!3923 (h!23052 tokens!457))))))

(declare-fun b!1614309 () Bool)

(declare-fun res!720260 () Bool)

(assert (=> b!1614309 (=> (not res!720260) (not e!1035404))))

(assert (=> b!1614309 (= res!720260 (= (++!4655 (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577545)))) (_2!9986 (get!5058 lt!577545))) (originalCharacters!3923 (h!23052 tokens!457))))))

(declare-fun b!1614310 () Bool)

(declare-fun res!720261 () Bool)

(assert (=> b!1614310 (=> (not res!720261) (not e!1035404))))

(declare-fun apply!4434 (TokenValueInjection!6058 BalanceConc!11676) TokenValue!3199)

(assert (=> b!1614310 (= res!720261 (= (value!98279 (_1!9986 (get!5058 lt!577545))) (apply!4434 (transformation!3109 (rule!4929 (_1!9986 (get!5058 lt!577545)))) (seqFromList!1968 (originalCharacters!3923 (_1!9986 (get!5058 lt!577545)))))))))

(declare-fun b!1614311 () Bool)

(declare-fun res!720263 () Bool)

(assert (=> b!1614311 (=> (not res!720263) (not e!1035404))))

(assert (=> b!1614311 (= res!720263 (matchR!1942 (regex!3109 (rule!4929 (_1!9986 (get!5058 lt!577545)))) (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577545))))))))

(declare-fun b!1614312 () Bool)

(declare-fun contains!3090 (List!17722 Rule!6018) Bool)

(assert (=> b!1614312 (= e!1035404 (contains!3090 rules!1846 (rule!4929 (_1!9986 (get!5058 lt!577545)))))))

(declare-fun b!1614314 () Bool)

(declare-fun e!1035405 () Bool)

(assert (=> b!1614314 (= e!1035405 e!1035404)))

(declare-fun res!720262 () Bool)

(assert (=> b!1614314 (=> (not res!720262) (not e!1035404))))

(assert (=> b!1614314 (= res!720262 (isDefined!2590 lt!577545))))

(declare-fun d!485769 () Bool)

(assert (=> d!485769 e!1035405))

(declare-fun res!720259 () Bool)

(assert (=> d!485769 (=> res!720259 e!1035405)))

(assert (=> d!485769 (= res!720259 (isEmpty!10674 lt!577545))))

(assert (=> d!485769 (= lt!577545 e!1035406)))

(declare-fun c!262963 () Bool)

(assert (=> d!485769 (= c!262963 (and ((_ is Cons!17652) rules!1846) ((_ is Nil!17652) (t!148153 rules!1846))))))

(declare-fun lt!577541 () Unit!28359)

(declare-fun lt!577544 () Unit!28359)

(assert (=> d!485769 (= lt!577541 lt!577544)))

(assert (=> d!485769 (isPrefix!1369 (originalCharacters!3923 (h!23052 tokens!457)) (originalCharacters!3923 (h!23052 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!942 (List!17720 List!17720) Unit!28359)

(assert (=> d!485769 (= lt!577544 (lemmaIsPrefixRefl!942 (originalCharacters!3923 (h!23052 tokens!457)) (originalCharacters!3923 (h!23052 tokens!457))))))

(assert (=> d!485769 (rulesValidInductive!950 thiss!17113 rules!1846)))

(assert (=> d!485769 (= (maxPrefix!1302 thiss!17113 rules!1846 (originalCharacters!3923 (h!23052 tokens!457))) lt!577545)))

(declare-fun b!1614313 () Bool)

(assert (=> b!1614313 (= e!1035406 call!104810)))

(assert (= (and d!485769 c!262963) b!1614313))

(assert (= (and d!485769 (not c!262963)) b!1614308))

(assert (= (or b!1614313 b!1614308) bm!104805))

(assert (= (and d!485769 (not res!720259)) b!1614314))

(assert (= (and b!1614314 res!720262) b!1614306))

(assert (= (and b!1614306 res!720258) b!1614307))

(assert (= (and b!1614307 res!720264) b!1614309))

(assert (= (and b!1614309 res!720260) b!1614310))

(assert (= (and b!1614310 res!720261) b!1614311))

(assert (= (and b!1614311 res!720263) b!1614312))

(declare-fun m!1933355 () Bool)

(assert (=> b!1614307 m!1933355))

(declare-fun m!1933357 () Bool)

(assert (=> b!1614307 m!1933357))

(assert (=> b!1614307 m!1933271))

(declare-fun m!1933359 () Bool)

(assert (=> b!1614308 m!1933359))

(declare-fun m!1933361 () Bool)

(assert (=> bm!104805 m!1933361))

(assert (=> b!1614306 m!1933355))

(declare-fun m!1933363 () Bool)

(assert (=> b!1614306 m!1933363))

(assert (=> b!1614306 m!1933363))

(declare-fun m!1933365 () Bool)

(assert (=> b!1614306 m!1933365))

(assert (=> b!1614312 m!1933355))

(declare-fun m!1933367 () Bool)

(assert (=> b!1614312 m!1933367))

(assert (=> b!1614311 m!1933355))

(assert (=> b!1614311 m!1933363))

(assert (=> b!1614311 m!1933363))

(assert (=> b!1614311 m!1933365))

(assert (=> b!1614311 m!1933365))

(declare-fun m!1933369 () Bool)

(assert (=> b!1614311 m!1933369))

(assert (=> b!1614309 m!1933355))

(assert (=> b!1614309 m!1933363))

(assert (=> b!1614309 m!1933363))

(assert (=> b!1614309 m!1933365))

(assert (=> b!1614309 m!1933365))

(declare-fun m!1933371 () Bool)

(assert (=> b!1614309 m!1933371))

(declare-fun m!1933373 () Bool)

(assert (=> b!1614314 m!1933373))

(declare-fun m!1933375 () Bool)

(assert (=> d!485769 m!1933375))

(declare-fun m!1933377 () Bool)

(assert (=> d!485769 m!1933377))

(declare-fun m!1933379 () Bool)

(assert (=> d!485769 m!1933379))

(assert (=> d!485769 m!1932761))

(assert (=> b!1614310 m!1933355))

(declare-fun m!1933381 () Bool)

(assert (=> b!1614310 m!1933381))

(assert (=> b!1614310 m!1933381))

(declare-fun m!1933383 () Bool)

(assert (=> b!1614310 m!1933383))

(assert (=> b!1614082 d!485769))

(declare-fun d!485771 () Bool)

(declare-fun lt!577554 () Bool)

(declare-fun e!1035422 () Bool)

(assert (=> d!485771 (= lt!577554 e!1035422)))

(declare-fun res!720274 () Bool)

(assert (=> d!485771 (=> (not res!720274) (not e!1035422))))

(assert (=> d!485771 (= res!720274 (= (list!6896 (_1!9985 (lex!1222 thiss!17113 rules!1846 (print!1269 thiss!17113 (singletonSeq!1497 (h!23052 tokens!457)))))) (list!6896 (singletonSeq!1497 (h!23052 tokens!457)))))))

(declare-fun e!1035423 () Bool)

(assert (=> d!485771 (= lt!577554 e!1035423)))

(declare-fun res!720275 () Bool)

(assert (=> d!485771 (=> (not res!720275) (not e!1035423))))

(declare-fun lt!577555 () tuple2!17166)

(declare-fun size!14177 (BalanceConc!11678) Int)

(assert (=> d!485771 (= res!720275 (= (size!14177 (_1!9985 lt!577555)) 1))))

(assert (=> d!485771 (= lt!577555 (lex!1222 thiss!17113 rules!1846 (print!1269 thiss!17113 (singletonSeq!1497 (h!23052 tokens!457)))))))

(assert (=> d!485771 (not (isEmpty!10668 rules!1846))))

(assert (=> d!485771 (= (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 tokens!457)) lt!577554)))

(declare-fun b!1614336 () Bool)

(declare-fun res!720273 () Bool)

(assert (=> b!1614336 (=> (not res!720273) (not e!1035423))))

(declare-fun apply!4435 (BalanceConc!11678 Int) Token!5784)

(assert (=> b!1614336 (= res!720273 (= (apply!4435 (_1!9985 lt!577555) 0) (h!23052 tokens!457)))))

(declare-fun b!1614337 () Bool)

(assert (=> b!1614337 (= e!1035423 (isEmpty!10673 (_2!9985 lt!577555)))))

(declare-fun b!1614338 () Bool)

(assert (=> b!1614338 (= e!1035422 (isEmpty!10673 (_2!9985 (lex!1222 thiss!17113 rules!1846 (print!1269 thiss!17113 (singletonSeq!1497 (h!23052 tokens!457)))))))))

(assert (= (and d!485771 res!720275) b!1614336))

(assert (= (and b!1614336 res!720273) b!1614337))

(assert (= (and d!485771 res!720274) b!1614338))

(assert (=> d!485771 m!1932775))

(assert (=> d!485771 m!1932865))

(declare-fun m!1933397 () Bool)

(assert (=> d!485771 m!1933397))

(declare-fun m!1933399 () Bool)

(assert (=> d!485771 m!1933399))

(assert (=> d!485771 m!1932865))

(declare-fun m!1933401 () Bool)

(assert (=> d!485771 m!1933401))

(declare-fun m!1933403 () Bool)

(assert (=> d!485771 m!1933403))

(declare-fun m!1933405 () Bool)

(assert (=> d!485771 m!1933405))

(assert (=> d!485771 m!1932865))

(assert (=> d!485771 m!1933401))

(declare-fun m!1933407 () Bool)

(assert (=> b!1614336 m!1933407))

(declare-fun m!1933409 () Bool)

(assert (=> b!1614337 m!1933409))

(assert (=> b!1614338 m!1932865))

(assert (=> b!1614338 m!1932865))

(assert (=> b!1614338 m!1933401))

(assert (=> b!1614338 m!1933401))

(assert (=> b!1614338 m!1933403))

(declare-fun m!1933411 () Bool)

(assert (=> b!1614338 m!1933411))

(assert (=> b!1614059 d!485771))

(declare-fun d!485779 () Bool)

(declare-fun res!720278 () Bool)

(declare-fun e!1035426 () Bool)

(assert (=> d!485779 (=> (not res!720278) (not e!1035426))))

(declare-fun rulesValid!1109 (LexerInterface!2738 List!17722) Bool)

(assert (=> d!485779 (= res!720278 (rulesValid!1109 thiss!17113 rules!1846))))

(assert (=> d!485779 (= (rulesInvariant!2407 thiss!17113 rules!1846) e!1035426)))

(declare-fun b!1614341 () Bool)

(declare-datatypes ((List!17725 0))(
  ( (Nil!17655) (Cons!17655 (h!23056 String!20327) (t!148198 List!17725)) )
))
(declare-fun noDuplicateTag!1109 (LexerInterface!2738 List!17722 List!17725) Bool)

(assert (=> b!1614341 (= e!1035426 (noDuplicateTag!1109 thiss!17113 rules!1846 Nil!17655))))

(assert (= (and d!485779 res!720278) b!1614341))

(declare-fun m!1933413 () Bool)

(assert (=> d!485779 m!1933413))

(declare-fun m!1933415 () Bool)

(assert (=> b!1614341 m!1933415))

(assert (=> b!1614080 d!485779))

(declare-fun d!485781 () Bool)

(assert (=> d!485781 (= (isDefined!2590 lt!577270) (not (isEmpty!10674 lt!577270)))))

(declare-fun bs!394015 () Bool)

(assert (= bs!394015 d!485781))

(declare-fun m!1933417 () Bool)

(assert (=> bs!394015 m!1933417))

(assert (=> b!1614081 d!485781))

(declare-fun b!1614350 () Bool)

(declare-fun res!720283 () Bool)

(declare-fun e!1035431 () Bool)

(assert (=> b!1614350 (=> (not res!720283) (not e!1035431))))

(declare-fun lt!577603 () Token!5784)

(declare-datatypes ((Option!3226 0))(
  ( (None!3225) (Some!3225 (v!24208 Rule!6018)) )
))
(declare-fun get!5060 (Option!3226) Rule!6018)

(declare-fun getRuleFromTag!266 (LexerInterface!2738 List!17722 String!20327) Option!3226)

(assert (=> b!1614350 (= res!720283 (matchR!1942 (regex!3109 (get!5060 (getRuleFromTag!266 thiss!17113 rules!1846 (tag!3385 (rule!4929 lt!577603))))) (list!6895 (charsOf!1758 lt!577603))))))

(declare-fun b!1614351 () Bool)

(assert (=> b!1614351 (= e!1035431 (= (rule!4929 lt!577603) (get!5060 (getRuleFromTag!266 thiss!17113 rules!1846 (tag!3385 (rule!4929 lt!577603))))))))

(declare-fun b!1614352 () Bool)

(declare-fun e!1035432 () Unit!28359)

(declare-fun Unit!28377 () Unit!28359)

(assert (=> b!1614352 (= e!1035432 Unit!28377)))

(declare-fun lt!577605 () List!17720)

(assert (=> b!1614352 (= lt!577605 (++!4655 lt!577285 lt!577282))))

(declare-fun lt!577602 () Unit!28359)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!160 (LexerInterface!2738 Rule!6018 List!17722 List!17720) Unit!28359)

(assert (=> b!1614352 (= lt!577602 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!160 thiss!17113 (rule!4929 lt!577603) rules!1846 lt!577605))))

(assert (=> b!1614352 (isEmpty!10674 (maxPrefixOneRule!757 thiss!17113 (rule!4929 lt!577603) lt!577605))))

(declare-fun lt!577599 () Unit!28359)

(assert (=> b!1614352 (= lt!577599 lt!577602)))

(declare-fun lt!577590 () List!17720)

(assert (=> b!1614352 (= lt!577590 (list!6895 (charsOf!1758 lt!577603)))))

(declare-fun lt!577596 () Unit!28359)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!156 (LexerInterface!2738 Rule!6018 List!17720 List!17720) Unit!28359)

(assert (=> b!1614352 (= lt!577596 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!156 thiss!17113 (rule!4929 lt!577603) lt!577590 (++!4655 lt!577285 lt!577282)))))

(assert (=> b!1614352 (not (matchR!1942 (regex!3109 (rule!4929 lt!577603)) lt!577590))))

(declare-fun lt!577600 () Unit!28359)

(assert (=> b!1614352 (= lt!577600 lt!577596)))

(assert (=> b!1614352 false))

(declare-fun d!485783 () Bool)

(assert (=> d!485783 (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 (++!4655 lt!577285 lt!577282)))))

(declare-fun lt!577595 () Unit!28359)

(assert (=> d!485783 (= lt!577595 e!1035432)))

(declare-fun c!262966 () Bool)

(assert (=> d!485783 (= c!262966 (isEmpty!10674 (maxPrefix!1302 thiss!17113 rules!1846 (++!4655 lt!577285 lt!577282))))))

(declare-fun lt!577606 () Unit!28359)

(declare-fun lt!577594 () Unit!28359)

(assert (=> d!485783 (= lt!577606 lt!577594)))

(assert (=> d!485783 e!1035431))

(declare-fun res!720284 () Bool)

(assert (=> d!485783 (=> (not res!720284) (not e!1035431))))

(declare-fun isDefined!2593 (Option!3226) Bool)

(assert (=> d!485783 (= res!720284 (isDefined!2593 (getRuleFromTag!266 thiss!17113 rules!1846 (tag!3385 (rule!4929 lt!577603)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!266 (LexerInterface!2738 List!17722 List!17720 Token!5784) Unit!28359)

(assert (=> d!485783 (= lt!577594 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!266 thiss!17113 rules!1846 lt!577285 lt!577603))))

(declare-fun lt!577601 () Unit!28359)

(declare-fun lt!577591 () Unit!28359)

(assert (=> d!485783 (= lt!577601 lt!577591)))

(declare-fun lt!577598 () List!17720)

(assert (=> d!485783 (isPrefix!1369 lt!577598 (++!4655 lt!577285 lt!577282))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!152 (List!17720 List!17720 List!17720) Unit!28359)

(assert (=> d!485783 (= lt!577591 (lemmaPrefixStaysPrefixWhenAddingToSuffix!152 lt!577598 lt!577285 lt!577282))))

(assert (=> d!485783 (= lt!577598 (list!6895 (charsOf!1758 lt!577603)))))

(declare-fun lt!577592 () Unit!28359)

(declare-fun lt!577597 () Unit!28359)

(assert (=> d!485783 (= lt!577592 lt!577597)))

(declare-fun lt!577604 () List!17720)

(declare-fun lt!577593 () List!17720)

(assert (=> d!485783 (isPrefix!1369 lt!577604 (++!4655 lt!577604 lt!577593))))

(assert (=> d!485783 (= lt!577597 (lemmaConcatTwoListThenFirstIsPrefix!894 lt!577604 lt!577593))))

(assert (=> d!485783 (= lt!577593 (_2!9986 (get!5058 (maxPrefix!1302 thiss!17113 rules!1846 lt!577285))))))

(assert (=> d!485783 (= lt!577604 (list!6895 (charsOf!1758 lt!577603)))))

(declare-fun head!3338 (List!17721) Token!5784)

(assert (=> d!485783 (= lt!577603 (head!3338 (list!6896 (_1!9985 (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285))))))))

(assert (=> d!485783 (not (isEmpty!10668 rules!1846))))

(assert (=> d!485783 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!312 thiss!17113 rules!1846 lt!577285 lt!577282) lt!577595)))

(declare-fun b!1614353 () Bool)

(declare-fun Unit!28378 () Unit!28359)

(assert (=> b!1614353 (= e!1035432 Unit!28378)))

(assert (= (and d!485783 res!720284) b!1614350))

(assert (= (and b!1614350 res!720283) b!1614351))

(assert (= (and d!485783 c!262966) b!1614352))

(assert (= (and d!485783 (not c!262966)) b!1614353))

(declare-fun m!1933419 () Bool)

(assert (=> b!1614350 m!1933419))

(declare-fun m!1933421 () Bool)

(assert (=> b!1614350 m!1933421))

(assert (=> b!1614350 m!1933421))

(declare-fun m!1933423 () Bool)

(assert (=> b!1614350 m!1933423))

(assert (=> b!1614350 m!1933419))

(declare-fun m!1933425 () Bool)

(assert (=> b!1614350 m!1933425))

(assert (=> b!1614350 m!1933423))

(declare-fun m!1933427 () Bool)

(assert (=> b!1614350 m!1933427))

(assert (=> b!1614351 m!1933419))

(assert (=> b!1614351 m!1933419))

(assert (=> b!1614351 m!1933425))

(declare-fun m!1933429 () Bool)

(assert (=> b!1614352 m!1933429))

(assert (=> b!1614352 m!1932799))

(declare-fun m!1933431 () Bool)

(assert (=> b!1614352 m!1933431))

(assert (=> b!1614352 m!1933421))

(assert (=> b!1614352 m!1933421))

(assert (=> b!1614352 m!1933423))

(declare-fun m!1933433 () Bool)

(assert (=> b!1614352 m!1933433))

(assert (=> b!1614352 m!1933429))

(declare-fun m!1933435 () Bool)

(assert (=> b!1614352 m!1933435))

(declare-fun m!1933437 () Bool)

(assert (=> b!1614352 m!1933437))

(assert (=> b!1614352 m!1932799))

(assert (=> d!485783 m!1932851))

(declare-fun m!1933439 () Bool)

(assert (=> d!485783 m!1933439))

(assert (=> d!485783 m!1932851))

(assert (=> d!485783 m!1932853))

(assert (=> d!485783 m!1933419))

(assert (=> d!485783 m!1933419))

(declare-fun m!1933441 () Bool)

(assert (=> d!485783 m!1933441))

(declare-fun m!1933443 () Bool)

(assert (=> d!485783 m!1933443))

(declare-fun m!1933445 () Bool)

(assert (=> d!485783 m!1933445))

(declare-fun m!1933447 () Bool)

(assert (=> d!485783 m!1933447))

(declare-fun m!1933449 () Bool)

(assert (=> d!485783 m!1933449))

(assert (=> d!485783 m!1932799))

(declare-fun m!1933451 () Bool)

(assert (=> d!485783 m!1933451))

(declare-fun m!1933453 () Bool)

(assert (=> d!485783 m!1933453))

(assert (=> d!485783 m!1932817))

(assert (=> d!485783 m!1933453))

(declare-fun m!1933455 () Bool)

(assert (=> d!485783 m!1933455))

(declare-fun m!1933457 () Bool)

(assert (=> d!485783 m!1933457))

(assert (=> d!485783 m!1932775))

(assert (=> d!485783 m!1932799))

(assert (=> d!485783 m!1932817))

(declare-fun m!1933459 () Bool)

(assert (=> d!485783 m!1933459))

(assert (=> d!485783 m!1932799))

(assert (=> d!485783 m!1933443))

(declare-fun m!1933461 () Bool)

(assert (=> d!485783 m!1933461))

(assert (=> d!485783 m!1933421))

(assert (=> d!485783 m!1933443))

(declare-fun m!1933463 () Bool)

(assert (=> d!485783 m!1933463))

(assert (=> d!485783 m!1933447))

(assert (=> d!485783 m!1933421))

(assert (=> d!485783 m!1933423))

(assert (=> b!1614081 d!485783))

(declare-fun b!1614376 () Bool)

(declare-fun e!1035451 () Bool)

(assert (=> b!1614376 (= e!1035451 true)))

(declare-fun b!1614375 () Bool)

(declare-fun e!1035450 () Bool)

(assert (=> b!1614375 (= e!1035450 e!1035451)))

(declare-fun b!1614374 () Bool)

(declare-fun e!1035449 () Bool)

(assert (=> b!1614374 (= e!1035449 e!1035450)))

(declare-fun d!485785 () Bool)

(assert (=> d!485785 e!1035449))

(assert (= b!1614375 b!1614376))

(assert (= b!1614374 b!1614375))

(assert (= (and d!485785 ((_ is Cons!17652) rules!1846)) b!1614374))

(declare-fun lambda!67074 () Int)

(declare-fun order!10463 () Int)

(declare-fun order!10465 () Int)

(declare-fun dynLambda!7875 (Int Int) Int)

(declare-fun dynLambda!7876 (Int Int) Int)

(assert (=> b!1614376 (< (dynLambda!7875 order!10463 (toValue!4532 (transformation!3109 (h!23053 rules!1846)))) (dynLambda!7876 order!10465 lambda!67074))))

(declare-fun order!10467 () Int)

(declare-fun dynLambda!7877 (Int Int) Int)

(assert (=> b!1614376 (< (dynLambda!7877 order!10467 (toChars!4391 (transformation!3109 (h!23053 rules!1846)))) (dynLambda!7876 order!10465 lambda!67074))))

(assert (=> d!485785 true))

(declare-fun lt!577661 () Bool)

(declare-fun forall!4055 (List!17721 Int) Bool)

(assert (=> d!485785 (= lt!577661 (forall!4055 tokens!457 lambda!67074))))

(declare-fun e!1035441 () Bool)

(assert (=> d!485785 (= lt!577661 e!1035441)))

(declare-fun res!720291 () Bool)

(assert (=> d!485785 (=> res!720291 e!1035441)))

(assert (=> d!485785 (= res!720291 (not ((_ is Cons!17651) tokens!457)))))

(assert (=> d!485785 (not (isEmpty!10668 rules!1846))))

(assert (=> d!485785 (= (rulesProduceEachTokenIndividuallyList!940 thiss!17113 rules!1846 tokens!457) lt!577661)))

(declare-fun b!1614364 () Bool)

(declare-fun e!1035442 () Bool)

(assert (=> b!1614364 (= e!1035441 e!1035442)))

(declare-fun res!720292 () Bool)

(assert (=> b!1614364 (=> (not res!720292) (not e!1035442))))

(assert (=> b!1614364 (= res!720292 (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 tokens!457)))))

(declare-fun b!1614365 () Bool)

(assert (=> b!1614365 (= e!1035442 (rulesProduceEachTokenIndividuallyList!940 thiss!17113 rules!1846 (t!148152 tokens!457)))))

(assert (= (and d!485785 (not res!720291)) b!1614364))

(assert (= (and b!1614364 res!720292) b!1614365))

(declare-fun m!1933465 () Bool)

(assert (=> d!485785 m!1933465))

(assert (=> d!485785 m!1932775))

(assert (=> b!1614364 m!1932769))

(declare-fun m!1933467 () Bool)

(assert (=> b!1614365 m!1933467))

(assert (=> b!1614063 d!485785))

(declare-fun d!485787 () Bool)

(declare-fun lt!577693 () BalanceConc!11676)

(assert (=> d!485787 (= (list!6895 lt!577693) (printList!853 thiss!17113 (list!6896 (seqFromList!1967 tokens!457))))))

(assert (=> d!485787 (= lt!577693 (printTailRec!791 thiss!17113 (seqFromList!1967 tokens!457) 0 (BalanceConc!11677 Empty!5866)))))

(assert (=> d!485787 (= (print!1269 thiss!17113 (seqFromList!1967 tokens!457)) lt!577693)))

(declare-fun bs!394016 () Bool)

(assert (= bs!394016 d!485787))

(declare-fun m!1933555 () Bool)

(assert (=> bs!394016 m!1933555))

(assert (=> bs!394016 m!1932791))

(declare-fun m!1933557 () Bool)

(assert (=> bs!394016 m!1933557))

(assert (=> bs!394016 m!1933557))

(declare-fun m!1933559 () Bool)

(assert (=> bs!394016 m!1933559))

(assert (=> bs!394016 m!1932791))

(declare-fun m!1933561 () Bool)

(assert (=> bs!394016 m!1933561))

(assert (=> b!1614084 d!485787))

(declare-fun b!1614394 () Bool)

(declare-fun e!1035463 () List!17720)

(assert (=> b!1614394 (= e!1035463 lt!577282)))

(declare-fun b!1614396 () Bool)

(declare-fun res!720306 () Bool)

(declare-fun e!1035464 () Bool)

(assert (=> b!1614396 (=> (not res!720306) (not e!1035464))))

(declare-fun lt!577694 () List!17720)

(assert (=> b!1614396 (= res!720306 (= (size!14176 lt!577694) (+ (size!14176 lt!577285) (size!14176 lt!577282))))))

(declare-fun b!1614397 () Bool)

(assert (=> b!1614397 (= e!1035464 (or (not (= lt!577282 Nil!17650)) (= lt!577694 lt!577285)))))

(declare-fun b!1614395 () Bool)

(assert (=> b!1614395 (= e!1035463 (Cons!17650 (h!23051 lt!577285) (++!4655 (t!148151 lt!577285) lt!577282)))))

(declare-fun d!485793 () Bool)

(assert (=> d!485793 e!1035464))

(declare-fun res!720307 () Bool)

(assert (=> d!485793 (=> (not res!720307) (not e!1035464))))

(assert (=> d!485793 (= res!720307 (= (content!2447 lt!577694) ((_ map or) (content!2447 lt!577285) (content!2447 lt!577282))))))

(assert (=> d!485793 (= lt!577694 e!1035463)))

(declare-fun c!262970 () Bool)

(assert (=> d!485793 (= c!262970 ((_ is Nil!17650) lt!577285))))

(assert (=> d!485793 (= (++!4655 lt!577285 lt!577282) lt!577694)))

(assert (= (and d!485793 c!262970) b!1614394))

(assert (= (and d!485793 (not c!262970)) b!1614395))

(assert (= (and d!485793 res!720307) b!1614396))

(assert (= (and b!1614396 res!720306) b!1614397))

(declare-fun m!1933563 () Bool)

(assert (=> b!1614396 m!1933563))

(assert (=> b!1614396 m!1933229))

(declare-fun m!1933565 () Bool)

(assert (=> b!1614396 m!1933565))

(declare-fun m!1933567 () Bool)

(assert (=> b!1614395 m!1933567))

(declare-fun m!1933569 () Bool)

(assert (=> d!485793 m!1933569))

(assert (=> d!485793 m!1933255))

(declare-fun m!1933571 () Bool)

(assert (=> d!485793 m!1933571))

(assert (=> b!1614084 d!485793))

(declare-fun d!485795 () Bool)

(assert (=> d!485795 (= (list!6895 lt!577278) (list!6899 (c!262917 lt!577278)))))

(declare-fun bs!394017 () Bool)

(assert (= bs!394017 d!485795))

(declare-fun m!1933573 () Bool)

(assert (=> bs!394017 m!1933573))

(assert (=> b!1614084 d!485795))

(declare-fun b!1614437 () Bool)

(declare-fun e!1035488 () Bool)

(declare-fun lt!577713 () tuple2!17166)

(assert (=> b!1614437 (= e!1035488 (not (isEmpty!10669 (_1!9985 lt!577713))))))

(declare-fun b!1614439 () Bool)

(declare-fun res!720339 () Bool)

(declare-fun e!1035487 () Bool)

(assert (=> b!1614439 (=> (not res!720339) (not e!1035487))))

(declare-datatypes ((tuple2!17174 0))(
  ( (tuple2!17175 (_1!9989 List!17721) (_2!9989 List!17720)) )
))
(declare-fun lexList!811 (LexerInterface!2738 List!17722 List!17720) tuple2!17174)

(assert (=> b!1614439 (= res!720339 (= (list!6896 (_1!9985 lt!577713)) (_1!9989 (lexList!811 thiss!17113 rules!1846 (list!6895 lt!577278)))))))

(declare-fun b!1614440 () Bool)

(declare-fun e!1035486 () Bool)

(assert (=> b!1614440 (= e!1035486 (= (_2!9985 lt!577713) lt!577278))))

(declare-fun b!1614441 () Bool)

(assert (=> b!1614441 (= e!1035486 e!1035488)))

(declare-fun res!720337 () Bool)

(declare-fun size!14178 (BalanceConc!11676) Int)

(assert (=> b!1614441 (= res!720337 (< (size!14178 (_2!9985 lt!577713)) (size!14178 lt!577278)))))

(assert (=> b!1614441 (=> (not res!720337) (not e!1035488))))

(declare-fun d!485797 () Bool)

(assert (=> d!485797 e!1035487))

(declare-fun res!720338 () Bool)

(assert (=> d!485797 (=> (not res!720338) (not e!1035487))))

(assert (=> d!485797 (= res!720338 e!1035486)))

(declare-fun c!262975 () Bool)

(assert (=> d!485797 (= c!262975 (> (size!14177 (_1!9985 lt!577713)) 0))))

(declare-fun lexTailRecV2!534 (LexerInterface!2738 List!17722 BalanceConc!11676 BalanceConc!11676 BalanceConc!11676 BalanceConc!11678) tuple2!17166)

(assert (=> d!485797 (= lt!577713 (lexTailRecV2!534 thiss!17113 rules!1846 lt!577278 (BalanceConc!11677 Empty!5866) lt!577278 (BalanceConc!11679 Empty!5867)))))

(assert (=> d!485797 (= (lex!1222 thiss!17113 rules!1846 lt!577278) lt!577713)))

(declare-fun b!1614438 () Bool)

(assert (=> b!1614438 (= e!1035487 (= (list!6895 (_2!9985 lt!577713)) (_2!9989 (lexList!811 thiss!17113 rules!1846 (list!6895 lt!577278)))))))

(assert (= (and d!485797 c!262975) b!1614441))

(assert (= (and d!485797 (not c!262975)) b!1614440))

(assert (= (and b!1614441 res!720337) b!1614437))

(assert (= (and d!485797 res!720338) b!1614439))

(assert (= (and b!1614439 res!720339) b!1614438))

(declare-fun m!1933655 () Bool)

(assert (=> d!485797 m!1933655))

(declare-fun m!1933657 () Bool)

(assert (=> d!485797 m!1933657))

(declare-fun m!1933659 () Bool)

(assert (=> b!1614438 m!1933659))

(assert (=> b!1614438 m!1932803))

(assert (=> b!1614438 m!1932803))

(declare-fun m!1933661 () Bool)

(assert (=> b!1614438 m!1933661))

(declare-fun m!1933663 () Bool)

(assert (=> b!1614441 m!1933663))

(declare-fun m!1933665 () Bool)

(assert (=> b!1614441 m!1933665))

(declare-fun m!1933667 () Bool)

(assert (=> b!1614439 m!1933667))

(assert (=> b!1614439 m!1932803))

(assert (=> b!1614439 m!1932803))

(assert (=> b!1614439 m!1933661))

(declare-fun m!1933669 () Bool)

(assert (=> b!1614437 m!1933669))

(assert (=> b!1614084 d!485797))

(declare-fun d!485813 () Bool)

(assert (=> d!485813 (= (list!6895 lt!577279) (list!6899 (c!262917 lt!577279)))))

(declare-fun bs!394021 () Bool)

(assert (= bs!394021 d!485813))

(declare-fun m!1933671 () Bool)

(assert (=> bs!394021 m!1933671))

(assert (=> b!1614084 d!485813))

(declare-fun d!485815 () Bool)

(declare-fun lt!577714 () BalanceConc!11676)

(assert (=> d!485815 (= (list!6895 lt!577714) (printList!853 thiss!17113 (list!6896 lt!577263)))))

(assert (=> d!485815 (= lt!577714 (printTailRec!791 thiss!17113 lt!577263 0 (BalanceConc!11677 Empty!5866)))))

(assert (=> d!485815 (= (print!1269 thiss!17113 lt!577263) lt!577714)))

(declare-fun bs!394022 () Bool)

(assert (= bs!394022 d!485815))

(declare-fun m!1933673 () Bool)

(assert (=> bs!394022 m!1933673))

(assert (=> bs!394022 m!1932833))

(assert (=> bs!394022 m!1932833))

(declare-fun m!1933675 () Bool)

(assert (=> bs!394022 m!1933675))

(declare-fun m!1933677 () Bool)

(assert (=> bs!394022 m!1933677))

(assert (=> b!1614084 d!485815))

(declare-fun d!485817 () Bool)

(declare-fun fromListB!858 (List!17721) BalanceConc!11678)

(assert (=> d!485817 (= (seqFromList!1967 tokens!457) (fromListB!858 tokens!457))))

(declare-fun bs!394023 () Bool)

(assert (= bs!394023 d!485817))

(declare-fun m!1933679 () Bool)

(assert (=> bs!394023 m!1933679))

(assert (=> b!1614084 d!485817))

(declare-fun d!485819 () Bool)

(declare-fun lt!577717 () BalanceConc!11676)

(assert (=> d!485819 (= (list!6895 lt!577717) (originalCharacters!3923 (h!23052 tokens!457)))))

(assert (=> d!485819 (= lt!577717 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (value!98279 (h!23052 tokens!457))))))

(assert (=> d!485819 (= (charsOf!1758 (h!23052 tokens!457)) lt!577717)))

(declare-fun b_lambda!50923 () Bool)

(assert (=> (not b_lambda!50923) (not d!485819)))

(assert (=> d!485819 t!148165))

(declare-fun b_and!114473 () Bool)

(assert (= b_and!114469 (and (=> t!148165 result!111800) b_and!114473)))

(assert (=> d!485819 t!148167))

(declare-fun b_and!114475 () Bool)

(assert (= b_and!114471 (and (=> t!148167 result!111804) b_and!114475)))

(declare-fun m!1933681 () Bool)

(assert (=> d!485819 m!1933681))

(assert (=> d!485819 m!1933267))

(assert (=> b!1614084 d!485819))

(declare-fun d!485821 () Bool)

(assert (=> d!485821 (= (seqFromList!1967 (t!148152 tokens!457)) (fromListB!858 (t!148152 tokens!457)))))

(declare-fun bs!394024 () Bool)

(assert (= bs!394024 d!485821))

(declare-fun m!1933683 () Bool)

(assert (=> bs!394024 m!1933683))

(assert (=> b!1614084 d!485821))

(declare-fun d!485823 () Bool)

(assert (=> d!485823 (= (list!6895 lt!577266) (list!6899 (c!262917 lt!577266)))))

(declare-fun bs!394025 () Bool)

(assert (= bs!394025 d!485823))

(declare-fun m!1933685 () Bool)

(assert (=> bs!394025 m!1933685))

(assert (=> b!1614084 d!485823))

(declare-fun d!485825 () Bool)

(assert (=> d!485825 (= (inv!23053 (tag!3385 (h!23053 rules!1846))) (= (mod (str.len (value!98278 (tag!3385 (h!23053 rules!1846)))) 2) 0))))

(assert (=> b!1614083 d!485825))

(declare-fun d!485827 () Bool)

(declare-fun res!720342 () Bool)

(declare-fun e!1035491 () Bool)

(assert (=> d!485827 (=> (not res!720342) (not e!1035491))))

(declare-fun semiInverseModEq!1182 (Int Int) Bool)

(assert (=> d!485827 (= res!720342 (semiInverseModEq!1182 (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toValue!4532 (transformation!3109 (h!23053 rules!1846)))))))

(assert (=> d!485827 (= (inv!23057 (transformation!3109 (h!23053 rules!1846))) e!1035491)))

(declare-fun b!1614444 () Bool)

(declare-fun equivClasses!1123 (Int Int) Bool)

(assert (=> b!1614444 (= e!1035491 (equivClasses!1123 (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toValue!4532 (transformation!3109 (h!23053 rules!1846)))))))

(assert (= (and d!485827 res!720342) b!1614444))

(declare-fun m!1933687 () Bool)

(assert (=> d!485827 m!1933687))

(declare-fun m!1933689 () Bool)

(assert (=> b!1614444 m!1933689))

(assert (=> b!1614083 d!485827))

(declare-fun d!485829 () Bool)

(assert (=> d!485829 (= (isEmpty!10668 rules!1846) ((_ is Nil!17652) rules!1846))))

(assert (=> b!1614062 d!485829))

(declare-fun d!485831 () Bool)

(assert (=> d!485831 (= (separableTokensPredicate!680 thiss!17113 (h!23052 tokens!457) (h!23052 (t!148152 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!479 (rulesRegex!499 thiss!17113 rules!1846) (++!4656 (charsOf!1758 (h!23052 tokens!457)) (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0))))))))

(declare-fun bs!394026 () Bool)

(assert (= bs!394026 d!485831))

(assert (=> bs!394026 m!1932831))

(assert (=> bs!394026 m!1932807))

(assert (=> bs!394026 m!1932827))

(declare-fun m!1933691 () Bool)

(assert (=> bs!394026 m!1933691))

(assert (=> bs!394026 m!1932831))

(assert (=> bs!394026 m!1932825))

(assert (=> bs!394026 m!1932807))

(assert (=> bs!394026 m!1932825))

(assert (=> bs!394026 m!1932827))

(assert (=> bs!394026 m!1932821))

(assert (=> bs!394026 m!1933691))

(declare-fun m!1933693 () Bool)

(assert (=> bs!394026 m!1933693))

(assert (=> bs!394026 m!1932821))

(assert (=> b!1614064 d!485831))

(declare-fun d!485833 () Bool)

(declare-fun res!720379 () Bool)

(declare-fun e!1035525 () Bool)

(assert (=> d!485833 (=> res!720379 e!1035525)))

(assert (=> d!485833 (= res!720379 (or (not ((_ is Cons!17651) tokens!457)) (not ((_ is Cons!17651) (t!148152 tokens!457)))))))

(assert (=> d!485833 (= (tokensListTwoByTwoPredicateSeparableList!431 thiss!17113 tokens!457 rules!1846) e!1035525)))

(declare-fun b!1614486 () Bool)

(declare-fun e!1035524 () Bool)

(assert (=> b!1614486 (= e!1035525 e!1035524)))

(declare-fun res!720378 () Bool)

(assert (=> b!1614486 (=> (not res!720378) (not e!1035524))))

(assert (=> b!1614486 (= res!720378 (separableTokensPredicate!680 thiss!17113 (h!23052 tokens!457) (h!23052 (t!148152 tokens!457)) rules!1846))))

(declare-fun lt!577779 () Unit!28359)

(declare-fun Unit!28393 () Unit!28359)

(assert (=> b!1614486 (= lt!577779 Unit!28393)))

(assert (=> b!1614486 (> (size!14178 (charsOf!1758 (h!23052 (t!148152 tokens!457)))) 0)))

(declare-fun lt!577778 () Unit!28359)

(declare-fun Unit!28394 () Unit!28359)

(assert (=> b!1614486 (= lt!577778 Unit!28394)))

(assert (=> b!1614486 (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 (t!148152 tokens!457)))))

(declare-fun lt!577777 () Unit!28359)

(declare-fun Unit!28395 () Unit!28359)

(assert (=> b!1614486 (= lt!577777 Unit!28395)))

(assert (=> b!1614486 (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 tokens!457))))

(declare-fun lt!577774 () Unit!28359)

(declare-fun lt!577780 () Unit!28359)

(assert (=> b!1614486 (= lt!577774 lt!577780)))

(assert (=> b!1614486 (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 (t!148152 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!546 (LexerInterface!2738 List!17722 List!17721 Token!5784) Unit!28359)

(assert (=> b!1614486 (= lt!577780 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!546 thiss!17113 rules!1846 tokens!457 (h!23052 (t!148152 tokens!457))))))

(declare-fun lt!577775 () Unit!28359)

(declare-fun lt!577776 () Unit!28359)

(assert (=> b!1614486 (= lt!577775 lt!577776)))

(assert (=> b!1614486 (rulesProduceIndividualToken!1390 thiss!17113 rules!1846 (h!23052 tokens!457))))

(assert (=> b!1614486 (= lt!577776 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!546 thiss!17113 rules!1846 tokens!457 (h!23052 tokens!457)))))

(declare-fun b!1614487 () Bool)

(assert (=> b!1614487 (= e!1035524 (tokensListTwoByTwoPredicateSeparableList!431 thiss!17113 (Cons!17651 (h!23052 (t!148152 tokens!457)) (t!148152 (t!148152 tokens!457))) rules!1846))))

(assert (= (and d!485833 (not res!720379)) b!1614486))

(assert (= (and b!1614486 res!720378) b!1614487))

(declare-fun m!1933741 () Bool)

(assert (=> b!1614486 m!1933741))

(assert (=> b!1614486 m!1932831))

(assert (=> b!1614486 m!1932831))

(declare-fun m!1933743 () Bool)

(assert (=> b!1614486 m!1933743))

(declare-fun m!1933745 () Bool)

(assert (=> b!1614486 m!1933745))

(assert (=> b!1614486 m!1932875))

(assert (=> b!1614486 m!1932769))

(declare-fun m!1933747 () Bool)

(assert (=> b!1614486 m!1933747))

(declare-fun m!1933749 () Bool)

(assert (=> b!1614487 m!1933749))

(assert (=> b!1614068 d!485833))

(declare-fun d!485849 () Bool)

(declare-fun e!1035528 () Bool)

(assert (=> d!485849 e!1035528))

(declare-fun res!720382 () Bool)

(assert (=> d!485849 (=> (not res!720382) (not e!1035528))))

(declare-fun isBalanced!1753 (Conc!5867) Bool)

(declare-fun prepend!618 (Conc!5867 Token!5784) Conc!5867)

(assert (=> d!485849 (= res!720382 (isBalanced!1753 (prepend!618 (c!262919 (seqFromList!1967 (t!148152 (t!148152 tokens!457)))) (h!23052 (t!148152 tokens!457)))))))

(declare-fun lt!577783 () BalanceConc!11678)

(assert (=> d!485849 (= lt!577783 (BalanceConc!11679 (prepend!618 (c!262919 (seqFromList!1967 (t!148152 (t!148152 tokens!457)))) (h!23052 (t!148152 tokens!457)))))))

(assert (=> d!485849 (= (prepend!617 (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (h!23052 (t!148152 tokens!457))) lt!577783)))

(declare-fun b!1614490 () Bool)

(assert (=> b!1614490 (= e!1035528 (= (list!6896 lt!577783) (Cons!17651 (h!23052 (t!148152 tokens!457)) (list!6896 (seqFromList!1967 (t!148152 (t!148152 tokens!457)))))))))

(assert (= (and d!485849 res!720382) b!1614490))

(declare-fun m!1933755 () Bool)

(assert (=> d!485849 m!1933755))

(assert (=> d!485849 m!1933755))

(declare-fun m!1933757 () Bool)

(assert (=> d!485849 m!1933757))

(declare-fun m!1933759 () Bool)

(assert (=> b!1614490 m!1933759))

(assert (=> b!1614490 m!1932837))

(declare-fun m!1933761 () Bool)

(assert (=> b!1614490 m!1933761))

(assert (=> b!1614069 d!485849))

(declare-fun d!485853 () Bool)

(assert (=> d!485853 (= (list!6896 (prepend!617 (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (h!23052 (t!148152 tokens!457)))) (list!6898 (c!262919 (prepend!617 (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (h!23052 (t!148152 tokens!457))))))))

(declare-fun bs!394030 () Bool)

(assert (= bs!394030 d!485853))

(declare-fun m!1933763 () Bool)

(assert (=> bs!394030 m!1933763))

(assert (=> b!1614069 d!485853))

(declare-fun d!485855 () Bool)

(assert (=> d!485855 (= (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (fromListB!858 (t!148152 (t!148152 tokens!457))))))

(declare-fun bs!394031 () Bool)

(assert (= bs!394031 d!485855))

(declare-fun m!1933765 () Bool)

(assert (=> bs!394031 m!1933765))

(assert (=> b!1614069 d!485855))

(declare-fun d!485857 () Bool)

(assert (=> d!485857 (= (list!6896 (_1!9985 lt!577274)) (list!6896 (prepend!617 (seqFromList!1967 (t!148152 (t!148152 tokens!457))) (h!23052 (t!148152 tokens!457)))))))

(declare-fun lt!577789 () Unit!28359)

(declare-fun choose!9713 (Token!5784 List!17721 BalanceConc!11678) Unit!28359)

(assert (=> d!485857 (= lt!577789 (choose!9713 (h!23052 (t!148152 tokens!457)) (t!148152 (t!148152 tokens!457)) (_1!9985 lt!577274)))))

(declare-fun $colon$colon!308 (List!17721 Token!5784) List!17721)

(assert (=> d!485857 (= (list!6896 (_1!9985 lt!577274)) (list!6896 (seqFromList!1967 ($colon$colon!308 (t!148152 (t!148152 tokens!457)) (h!23052 (t!148152 tokens!457))))))))

(assert (=> d!485857 (= (seqFromListBHdTlConstructive!186 (h!23052 (t!148152 tokens!457)) (t!148152 (t!148152 tokens!457)) (_1!9985 lt!577274)) lt!577789)))

(declare-fun bs!394034 () Bool)

(assert (= bs!394034 d!485857))

(assert (=> bs!394034 m!1932837))

(assert (=> bs!394034 m!1932777))

(declare-fun m!1933779 () Bool)

(assert (=> bs!394034 m!1933779))

(declare-fun m!1933781 () Bool)

(assert (=> bs!394034 m!1933781))

(declare-fun m!1933783 () Bool)

(assert (=> bs!394034 m!1933783))

(assert (=> bs!394034 m!1932837))

(assert (=> bs!394034 m!1932839))

(assert (=> bs!394034 m!1933779))

(assert (=> bs!394034 m!1932839))

(assert (=> bs!394034 m!1932841))

(assert (=> bs!394034 m!1933781))

(declare-fun m!1933785 () Bool)

(assert (=> bs!394034 m!1933785))

(assert (=> b!1614069 d!485857))

(declare-fun d!485865 () Bool)

(assert (=> d!485865 (= (list!6896 lt!577263) (list!6898 (c!262919 lt!577263)))))

(declare-fun bs!394035 () Bool)

(assert (= bs!394035 d!485865))

(declare-fun m!1933787 () Bool)

(assert (=> bs!394035 m!1933787))

(assert (=> b!1614069 d!485865))

(declare-fun b!1614504 () Bool)

(declare-fun e!1035538 () Bool)

(declare-fun inv!15 (TokenValue!3199) Bool)

(assert (=> b!1614504 (= e!1035538 (inv!15 (value!98279 (h!23052 tokens!457))))))

(declare-fun b!1614505 () Bool)

(declare-fun e!1035539 () Bool)

(declare-fun inv!16 (TokenValue!3199) Bool)

(assert (=> b!1614505 (= e!1035539 (inv!16 (value!98279 (h!23052 tokens!457))))))

(declare-fun b!1614506 () Bool)

(declare-fun e!1035540 () Bool)

(assert (=> b!1614506 (= e!1035539 e!1035540)))

(declare-fun c!262986 () Bool)

(assert (=> b!1614506 (= c!262986 ((_ is IntegerValue!9598) (value!98279 (h!23052 tokens!457))))))

(declare-fun b!1614507 () Bool)

(declare-fun inv!17 (TokenValue!3199) Bool)

(assert (=> b!1614507 (= e!1035540 (inv!17 (value!98279 (h!23052 tokens!457))))))

(declare-fun b!1614508 () Bool)

(declare-fun res!720388 () Bool)

(assert (=> b!1614508 (=> res!720388 e!1035538)))

(assert (=> b!1614508 (= res!720388 (not ((_ is IntegerValue!9599) (value!98279 (h!23052 tokens!457)))))))

(assert (=> b!1614508 (= e!1035540 e!1035538)))

(declare-fun d!485867 () Bool)

(declare-fun c!262985 () Bool)

(assert (=> d!485867 (= c!262985 ((_ is IntegerValue!9597) (value!98279 (h!23052 tokens!457))))))

(assert (=> d!485867 (= (inv!21 (value!98279 (h!23052 tokens!457))) e!1035539)))

(assert (= (and d!485867 c!262985) b!1614505))

(assert (= (and d!485867 (not c!262985)) b!1614506))

(assert (= (and b!1614506 c!262986) b!1614507))

(assert (= (and b!1614506 (not c!262986)) b!1614508))

(assert (= (and b!1614508 (not res!720388)) b!1614504))

(declare-fun m!1933789 () Bool)

(assert (=> b!1614504 m!1933789))

(declare-fun m!1933793 () Bool)

(assert (=> b!1614505 m!1933793))

(declare-fun m!1933795 () Bool)

(assert (=> b!1614507 m!1933795))

(assert (=> b!1614067 d!485867))

(declare-fun d!485869 () Bool)

(declare-fun isEmpty!10678 (Option!3224) Bool)

(assert (=> d!485869 (= (isDefined!2591 (maxPrefixZipperSequence!633 thiss!17113 rules!1846 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457))))) (not (isEmpty!10678 (maxPrefixZipperSequence!633 thiss!17113 rules!1846 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))

(declare-fun bs!394038 () Bool)

(assert (= bs!394038 d!485869))

(assert (=> bs!394038 m!1932871))

(declare-fun m!1933805 () Bool)

(assert (=> bs!394038 m!1933805))

(assert (=> b!1614071 d!485869))

(declare-fun b!1614525 () Bool)

(declare-fun e!1035557 () Bool)

(declare-fun e!1035554 () Bool)

(assert (=> b!1614525 (= e!1035557 e!1035554)))

(declare-fun res!720402 () Bool)

(assert (=> b!1614525 (=> (not res!720402) (not e!1035554))))

(declare-fun lt!577807 () Option!3224)

(declare-fun get!5061 (Option!3224) tuple2!17170)

(assert (=> b!1614525 (= res!720402 (= (_1!9987 (get!5061 lt!577807)) (_1!9986 (get!5058 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))))

(declare-fun d!485875 () Bool)

(declare-fun e!1035558 () Bool)

(assert (=> d!485875 e!1035558))

(declare-fun res!720403 () Bool)

(assert (=> d!485875 (=> (not res!720403) (not e!1035558))))

(declare-fun maxPrefixZipper!287 (LexerInterface!2738 List!17722 List!17720) Option!3223)

(assert (=> d!485875 (= res!720403 (= (isDefined!2591 lt!577807) (isDefined!2590 (maxPrefixZipper!287 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457))))))))))

(declare-fun e!1035553 () Option!3224)

(assert (=> d!485875 (= lt!577807 e!1035553)))

(declare-fun c!262989 () Bool)

(assert (=> d!485875 (= c!262989 (and ((_ is Cons!17652) rules!1846) ((_ is Nil!17652) (t!148153 rules!1846))))))

(declare-fun lt!577810 () Unit!28359)

(declare-fun lt!577808 () Unit!28359)

(assert (=> d!485875 (= lt!577810 lt!577808)))

(declare-fun lt!577809 () List!17720)

(declare-fun lt!577811 () List!17720)

(assert (=> d!485875 (isPrefix!1369 lt!577809 lt!577811)))

(assert (=> d!485875 (= lt!577808 (lemmaIsPrefixRefl!942 lt!577809 lt!577811))))

(assert (=> d!485875 (= lt!577811 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))

(assert (=> d!485875 (= lt!577809 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))

(assert (=> d!485875 (rulesValidInductive!950 thiss!17113 rules!1846)))

(assert (=> d!485875 (= (maxPrefixZipperSequence!633 thiss!17113 rules!1846 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))) lt!577807)))

(declare-fun e!1035555 () Bool)

(declare-fun b!1614526 () Bool)

(assert (=> b!1614526 (= e!1035555 (= (list!6895 (_2!9987 (get!5061 lt!577807))) (_2!9986 (get!5058 (maxPrefixZipper!287 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))))

(declare-fun bm!104813 () Bool)

(declare-fun call!104818 () Option!3224)

(declare-fun maxPrefixOneRuleZipperSequence!297 (LexerInterface!2738 Rule!6018 BalanceConc!11676) Option!3224)

(assert (=> bm!104813 (= call!104818 (maxPrefixOneRuleZipperSequence!297 thiss!17113 (h!23053 rules!1846) (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))

(declare-fun b!1614527 () Bool)

(declare-fun res!720404 () Bool)

(assert (=> b!1614527 (=> (not res!720404) (not e!1035558))))

(declare-fun e!1035556 () Bool)

(assert (=> b!1614527 (= res!720404 e!1035556)))

(declare-fun res!720406 () Bool)

(assert (=> b!1614527 (=> res!720406 e!1035556)))

(assert (=> b!1614527 (= res!720406 (not (isDefined!2591 lt!577807)))))

(declare-fun b!1614528 () Bool)

(assert (=> b!1614528 (= e!1035554 (= (list!6895 (_2!9987 (get!5061 lt!577807))) (_2!9986 (get!5058 (maxPrefix!1302 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))))

(declare-fun b!1614529 () Bool)

(assert (=> b!1614529 (= e!1035558 e!1035557)))

(declare-fun res!720405 () Bool)

(assert (=> b!1614529 (=> res!720405 e!1035557)))

(assert (=> b!1614529 (= res!720405 (not (isDefined!2591 lt!577807)))))

(declare-fun b!1614530 () Bool)

(assert (=> b!1614530 (= e!1035556 e!1035555)))

(declare-fun res!720401 () Bool)

(assert (=> b!1614530 (=> (not res!720401) (not e!1035555))))

(assert (=> b!1614530 (= res!720401 (= (_1!9987 (get!5061 lt!577807)) (_1!9986 (get!5058 (maxPrefixZipper!287 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))))))

(declare-fun b!1614531 () Bool)

(assert (=> b!1614531 (= e!1035553 call!104818)))

(declare-fun b!1614532 () Bool)

(declare-fun lt!577812 () Option!3224)

(declare-fun lt!577813 () Option!3224)

(assert (=> b!1614532 (= e!1035553 (ite (and ((_ is None!3223) lt!577812) ((_ is None!3223) lt!577813)) None!3223 (ite ((_ is None!3223) lt!577813) lt!577812 (ite ((_ is None!3223) lt!577812) lt!577813 (ite (>= (size!14172 (_1!9987 (v!24200 lt!577812))) (size!14172 (_1!9987 (v!24200 lt!577813)))) lt!577812 lt!577813)))))))

(assert (=> b!1614532 (= lt!577812 call!104818)))

(assert (=> b!1614532 (= lt!577813 (maxPrefixZipperSequence!633 thiss!17113 (t!148153 rules!1846) (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457)))))))

(assert (= (and d!485875 c!262989) b!1614531))

(assert (= (and d!485875 (not c!262989)) b!1614532))

(assert (= (or b!1614531 b!1614532) bm!104813))

(assert (= (and d!485875 res!720403) b!1614527))

(assert (= (and b!1614527 (not res!720406)) b!1614530))

(assert (= (and b!1614530 res!720401) b!1614526))

(assert (= (and b!1614527 res!720404) b!1614529))

(assert (= (and b!1614529 (not res!720405)) b!1614525))

(assert (= (and b!1614525 res!720402) b!1614528))

(assert (=> d!485875 m!1932761))

(declare-fun m!1933807 () Bool)

(assert (=> d!485875 m!1933807))

(declare-fun m!1933809 () Bool)

(assert (=> d!485875 m!1933809))

(declare-fun m!1933811 () Bool)

(assert (=> d!485875 m!1933811))

(assert (=> d!485875 m!1932869))

(declare-fun m!1933813 () Bool)

(assert (=> d!485875 m!1933813))

(assert (=> d!485875 m!1933813))

(declare-fun m!1933815 () Bool)

(assert (=> d!485875 m!1933815))

(assert (=> d!485875 m!1933815))

(declare-fun m!1933817 () Bool)

(assert (=> d!485875 m!1933817))

(declare-fun m!1933819 () Bool)

(assert (=> b!1614530 m!1933819))

(assert (=> b!1614530 m!1932869))

(assert (=> b!1614530 m!1933813))

(assert (=> b!1614530 m!1933813))

(assert (=> b!1614530 m!1933815))

(assert (=> b!1614530 m!1933815))

(declare-fun m!1933821 () Bool)

(assert (=> b!1614530 m!1933821))

(declare-fun m!1933823 () Bool)

(assert (=> b!1614528 m!1933823))

(assert (=> b!1614528 m!1933819))

(declare-fun m!1933825 () Bool)

(assert (=> b!1614528 m!1933825))

(declare-fun m!1933827 () Bool)

(assert (=> b!1614528 m!1933827))

(assert (=> b!1614528 m!1933813))

(assert (=> b!1614528 m!1933825))

(assert (=> b!1614528 m!1932869))

(assert (=> b!1614528 m!1933813))

(assert (=> b!1614532 m!1932869))

(declare-fun m!1933829 () Bool)

(assert (=> b!1614532 m!1933829))

(assert (=> b!1614525 m!1933819))

(assert (=> b!1614525 m!1932869))

(assert (=> b!1614525 m!1933813))

(assert (=> b!1614525 m!1933813))

(assert (=> b!1614525 m!1933825))

(assert (=> b!1614525 m!1933825))

(assert (=> b!1614525 m!1933827))

(assert (=> bm!104813 m!1932869))

(declare-fun m!1933831 () Bool)

(assert (=> bm!104813 m!1933831))

(assert (=> b!1614527 m!1933809))

(assert (=> b!1614526 m!1933823))

(assert (=> b!1614526 m!1933819))

(assert (=> b!1614526 m!1933815))

(assert (=> b!1614526 m!1933821))

(assert (=> b!1614526 m!1933813))

(assert (=> b!1614526 m!1933815))

(assert (=> b!1614526 m!1932869))

(assert (=> b!1614526 m!1933813))

(assert (=> b!1614529 m!1933809))

(assert (=> b!1614071 d!485875))

(declare-fun d!485877 () Bool)

(declare-fun fromListB!859 (List!17720) BalanceConc!11676)

(assert (=> d!485877 (= (seqFromList!1968 (originalCharacters!3923 (h!23052 tokens!457))) (fromListB!859 (originalCharacters!3923 (h!23052 tokens!457))))))

(declare-fun bs!394039 () Bool)

(assert (= bs!394039 d!485877))

(declare-fun m!1933833 () Bool)

(assert (=> bs!394039 m!1933833))

(assert (=> b!1614071 d!485877))

(declare-fun d!485879 () Bool)

(assert (=> d!485879 (= (isDefined!2590 (maxPrefix!1302 thiss!17113 rules!1846 lt!577285)) (not (isEmpty!10674 (maxPrefix!1302 thiss!17113 rules!1846 lt!577285))))))

(declare-fun bs!394040 () Bool)

(assert (= bs!394040 d!485879))

(assert (=> bs!394040 m!1932817))

(declare-fun m!1933835 () Bool)

(assert (=> bs!394040 m!1933835))

(assert (=> b!1614070 d!485879))

(declare-fun b!1614533 () Bool)

(declare-fun res!720407 () Bool)

(declare-fun e!1035559 () Bool)

(assert (=> b!1614533 (=> (not res!720407) (not e!1035559))))

(declare-fun lt!577818 () Option!3223)

(assert (=> b!1614533 (= res!720407 (= (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577818)))) (originalCharacters!3923 (_1!9986 (get!5058 lt!577818)))))))

(declare-fun bm!104814 () Bool)

(declare-fun call!104819 () Option!3223)

(assert (=> bm!104814 (= call!104819 (maxPrefixOneRule!757 thiss!17113 (h!23053 rules!1846) lt!577285))))

(declare-fun b!1614534 () Bool)

(declare-fun res!720413 () Bool)

(assert (=> b!1614534 (=> (not res!720413) (not e!1035559))))

(assert (=> b!1614534 (= res!720413 (< (size!14176 (_2!9986 (get!5058 lt!577818))) (size!14176 lt!577285)))))

(declare-fun b!1614535 () Bool)

(declare-fun e!1035561 () Option!3223)

(declare-fun lt!577816 () Option!3223)

(declare-fun lt!577815 () Option!3223)

(assert (=> b!1614535 (= e!1035561 (ite (and ((_ is None!3222) lt!577816) ((_ is None!3222) lt!577815)) None!3222 (ite ((_ is None!3222) lt!577815) lt!577816 (ite ((_ is None!3222) lt!577816) lt!577815 (ite (>= (size!14172 (_1!9986 (v!24199 lt!577816))) (size!14172 (_1!9986 (v!24199 lt!577815)))) lt!577816 lt!577815)))))))

(assert (=> b!1614535 (= lt!577816 call!104819)))

(assert (=> b!1614535 (= lt!577815 (maxPrefix!1302 thiss!17113 (t!148153 rules!1846) lt!577285))))

(declare-fun b!1614536 () Bool)

(declare-fun res!720409 () Bool)

(assert (=> b!1614536 (=> (not res!720409) (not e!1035559))))

(assert (=> b!1614536 (= res!720409 (= (++!4655 (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577818)))) (_2!9986 (get!5058 lt!577818))) lt!577285))))

(declare-fun b!1614537 () Bool)

(declare-fun res!720410 () Bool)

(assert (=> b!1614537 (=> (not res!720410) (not e!1035559))))

(assert (=> b!1614537 (= res!720410 (= (value!98279 (_1!9986 (get!5058 lt!577818))) (apply!4434 (transformation!3109 (rule!4929 (_1!9986 (get!5058 lt!577818)))) (seqFromList!1968 (originalCharacters!3923 (_1!9986 (get!5058 lt!577818)))))))))

(declare-fun b!1614538 () Bool)

(declare-fun res!720412 () Bool)

(assert (=> b!1614538 (=> (not res!720412) (not e!1035559))))

(assert (=> b!1614538 (= res!720412 (matchR!1942 (regex!3109 (rule!4929 (_1!9986 (get!5058 lt!577818)))) (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577818))))))))

(declare-fun b!1614539 () Bool)

(assert (=> b!1614539 (= e!1035559 (contains!3090 rules!1846 (rule!4929 (_1!9986 (get!5058 lt!577818)))))))

(declare-fun b!1614541 () Bool)

(declare-fun e!1035560 () Bool)

(assert (=> b!1614541 (= e!1035560 e!1035559)))

(declare-fun res!720411 () Bool)

(assert (=> b!1614541 (=> (not res!720411) (not e!1035559))))

(assert (=> b!1614541 (= res!720411 (isDefined!2590 lt!577818))))

(declare-fun d!485881 () Bool)

(assert (=> d!485881 e!1035560))

(declare-fun res!720408 () Bool)

(assert (=> d!485881 (=> res!720408 e!1035560)))

(assert (=> d!485881 (= res!720408 (isEmpty!10674 lt!577818))))

(assert (=> d!485881 (= lt!577818 e!1035561)))

(declare-fun c!262990 () Bool)

(assert (=> d!485881 (= c!262990 (and ((_ is Cons!17652) rules!1846) ((_ is Nil!17652) (t!148153 rules!1846))))))

(declare-fun lt!577814 () Unit!28359)

(declare-fun lt!577817 () Unit!28359)

(assert (=> d!485881 (= lt!577814 lt!577817)))

(assert (=> d!485881 (isPrefix!1369 lt!577285 lt!577285)))

(assert (=> d!485881 (= lt!577817 (lemmaIsPrefixRefl!942 lt!577285 lt!577285))))

(assert (=> d!485881 (rulesValidInductive!950 thiss!17113 rules!1846)))

(assert (=> d!485881 (= (maxPrefix!1302 thiss!17113 rules!1846 lt!577285) lt!577818)))

(declare-fun b!1614540 () Bool)

(assert (=> b!1614540 (= e!1035561 call!104819)))

(assert (= (and d!485881 c!262990) b!1614540))

(assert (= (and d!485881 (not c!262990)) b!1614535))

(assert (= (or b!1614540 b!1614535) bm!104814))

(assert (= (and d!485881 (not res!720408)) b!1614541))

(assert (= (and b!1614541 res!720411) b!1614533))

(assert (= (and b!1614533 res!720407) b!1614534))

(assert (= (and b!1614534 res!720413) b!1614536))

(assert (= (and b!1614536 res!720409) b!1614537))

(assert (= (and b!1614537 res!720410) b!1614538))

(assert (= (and b!1614538 res!720412) b!1614539))

(declare-fun m!1933837 () Bool)

(assert (=> b!1614534 m!1933837))

(declare-fun m!1933839 () Bool)

(assert (=> b!1614534 m!1933839))

(assert (=> b!1614534 m!1933229))

(declare-fun m!1933841 () Bool)

(assert (=> b!1614535 m!1933841))

(declare-fun m!1933843 () Bool)

(assert (=> bm!104814 m!1933843))

(assert (=> b!1614533 m!1933837))

(declare-fun m!1933845 () Bool)

(assert (=> b!1614533 m!1933845))

(assert (=> b!1614533 m!1933845))

(declare-fun m!1933847 () Bool)

(assert (=> b!1614533 m!1933847))

(assert (=> b!1614539 m!1933837))

(declare-fun m!1933849 () Bool)

(assert (=> b!1614539 m!1933849))

(assert (=> b!1614538 m!1933837))

(assert (=> b!1614538 m!1933845))

(assert (=> b!1614538 m!1933845))

(assert (=> b!1614538 m!1933847))

(assert (=> b!1614538 m!1933847))

(declare-fun m!1933851 () Bool)

(assert (=> b!1614538 m!1933851))

(assert (=> b!1614536 m!1933837))

(assert (=> b!1614536 m!1933845))

(assert (=> b!1614536 m!1933845))

(assert (=> b!1614536 m!1933847))

(assert (=> b!1614536 m!1933847))

(declare-fun m!1933853 () Bool)

(assert (=> b!1614536 m!1933853))

(declare-fun m!1933855 () Bool)

(assert (=> b!1614541 m!1933855))

(declare-fun m!1933857 () Bool)

(assert (=> d!485881 m!1933857))

(declare-fun m!1933859 () Bool)

(assert (=> d!485881 m!1933859))

(declare-fun m!1933861 () Bool)

(assert (=> d!485881 m!1933861))

(assert (=> d!485881 m!1932761))

(assert (=> b!1614537 m!1933837))

(declare-fun m!1933863 () Bool)

(assert (=> b!1614537 m!1933863))

(assert (=> b!1614537 m!1933863))

(declare-fun m!1933865 () Bool)

(assert (=> b!1614537 m!1933865))

(assert (=> b!1614070 d!485881))

(declare-fun d!485883 () Bool)

(declare-fun lt!577819 () BalanceConc!11676)

(assert (=> d!485883 (= (list!6895 lt!577819) (printList!853 thiss!17113 (list!6896 lt!577271)))))

(assert (=> d!485883 (= lt!577819 (printTailRec!791 thiss!17113 lt!577271 0 (BalanceConc!11677 Empty!5866)))))

(assert (=> d!485883 (= (print!1269 thiss!17113 lt!577271) lt!577819)))

(declare-fun bs!394041 () Bool)

(assert (= bs!394041 d!485883))

(declare-fun m!1933867 () Bool)

(assert (=> bs!394041 m!1933867))

(declare-fun m!1933869 () Bool)

(assert (=> bs!394041 m!1933869))

(assert (=> bs!394041 m!1933869))

(declare-fun m!1933871 () Bool)

(assert (=> bs!394041 m!1933871))

(assert (=> bs!394041 m!1932857))

(assert (=> b!1614074 d!485883))

(declare-fun d!485885 () Bool)

(declare-fun lt!577840 () BalanceConc!11676)

(declare-fun printListTailRec!337 (LexerInterface!2738 List!17721 List!17720) List!17720)

(declare-fun dropList!571 (BalanceConc!11678 Int) List!17721)

(assert (=> d!485885 (= (list!6895 lt!577840) (printListTailRec!337 thiss!17113 (dropList!571 lt!577271 0) (list!6895 (BalanceConc!11677 Empty!5866))))))

(declare-fun e!1035610 () BalanceConc!11676)

(assert (=> d!485885 (= lt!577840 e!1035610)))

(declare-fun c!262993 () Bool)

(assert (=> d!485885 (= c!262993 (>= 0 (size!14177 lt!577271)))))

(declare-fun e!1035609 () Bool)

(assert (=> d!485885 e!1035609))

(declare-fun res!720425 () Bool)

(assert (=> d!485885 (=> (not res!720425) (not e!1035609))))

(assert (=> d!485885 (= res!720425 (>= 0 0))))

(assert (=> d!485885 (= (printTailRec!791 thiss!17113 lt!577271 0 (BalanceConc!11677 Empty!5866)) lt!577840)))

(declare-fun b!1614605 () Bool)

(assert (=> b!1614605 (= e!1035609 (<= 0 (size!14177 lt!577271)))))

(declare-fun b!1614606 () Bool)

(assert (=> b!1614606 (= e!1035610 (BalanceConc!11677 Empty!5866))))

(declare-fun b!1614607 () Bool)

(assert (=> b!1614607 (= e!1035610 (printTailRec!791 thiss!17113 lt!577271 (+ 0 1) (++!4656 (BalanceConc!11677 Empty!5866) (charsOf!1758 (apply!4435 lt!577271 0)))))))

(declare-fun lt!577846 () List!17721)

(assert (=> b!1614607 (= lt!577846 (list!6896 lt!577271))))

(declare-fun lt!577844 () Unit!28359)

(declare-fun lemmaDropApply!544 (List!17721 Int) Unit!28359)

(assert (=> b!1614607 (= lt!577844 (lemmaDropApply!544 lt!577846 0))))

(declare-fun drop!852 (List!17721 Int) List!17721)

(declare-fun apply!4436 (List!17721 Int) Token!5784)

(assert (=> b!1614607 (= (head!3338 (drop!852 lt!577846 0)) (apply!4436 lt!577846 0))))

(declare-fun lt!577845 () Unit!28359)

(assert (=> b!1614607 (= lt!577845 lt!577844)))

(declare-fun lt!577842 () List!17721)

(assert (=> b!1614607 (= lt!577842 (list!6896 lt!577271))))

(declare-fun lt!577841 () Unit!28359)

(declare-fun lemmaDropTail!524 (List!17721 Int) Unit!28359)

(assert (=> b!1614607 (= lt!577841 (lemmaDropTail!524 lt!577842 0))))

(declare-fun tail!2326 (List!17721) List!17721)

(assert (=> b!1614607 (= (tail!2326 (drop!852 lt!577842 0)) (drop!852 lt!577842 (+ 0 1)))))

(declare-fun lt!577843 () Unit!28359)

(assert (=> b!1614607 (= lt!577843 lt!577841)))

(assert (= (and d!485885 res!720425) b!1614605))

(assert (= (and d!485885 c!262993) b!1614606))

(assert (= (and d!485885 (not c!262993)) b!1614607))

(declare-fun m!1933901 () Bool)

(assert (=> d!485885 m!1933901))

(declare-fun m!1933903 () Bool)

(assert (=> d!485885 m!1933903))

(assert (=> d!485885 m!1933901))

(declare-fun m!1933905 () Bool)

(assert (=> d!485885 m!1933905))

(assert (=> d!485885 m!1933903))

(declare-fun m!1933907 () Bool)

(assert (=> d!485885 m!1933907))

(declare-fun m!1933909 () Bool)

(assert (=> d!485885 m!1933909))

(assert (=> b!1614605 m!1933907))

(declare-fun m!1933911 () Bool)

(assert (=> b!1614607 m!1933911))

(declare-fun m!1933913 () Bool)

(assert (=> b!1614607 m!1933913))

(declare-fun m!1933915 () Bool)

(assert (=> b!1614607 m!1933915))

(declare-fun m!1933917 () Bool)

(assert (=> b!1614607 m!1933917))

(assert (=> b!1614607 m!1933917))

(declare-fun m!1933919 () Bool)

(assert (=> b!1614607 m!1933919))

(declare-fun m!1933921 () Bool)

(assert (=> b!1614607 m!1933921))

(assert (=> b!1614607 m!1933913))

(assert (=> b!1614607 m!1933869))

(declare-fun m!1933923 () Bool)

(assert (=> b!1614607 m!1933923))

(declare-fun m!1933925 () Bool)

(assert (=> b!1614607 m!1933925))

(declare-fun m!1933927 () Bool)

(assert (=> b!1614607 m!1933927))

(declare-fun m!1933929 () Bool)

(assert (=> b!1614607 m!1933929))

(assert (=> b!1614607 m!1933925))

(assert (=> b!1614607 m!1933915))

(declare-fun m!1933931 () Bool)

(assert (=> b!1614607 m!1933931))

(assert (=> b!1614607 m!1933931))

(declare-fun m!1933933 () Bool)

(assert (=> b!1614607 m!1933933))

(assert (=> b!1614074 d!485885))

(declare-fun b!1614608 () Bool)

(declare-fun res!720426 () Bool)

(declare-fun e!1035611 () Bool)

(assert (=> b!1614608 (=> (not res!720426) (not e!1035611))))

(declare-fun lt!577851 () Option!3223)

(assert (=> b!1614608 (= res!720426 (= (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577851)))) (originalCharacters!3923 (_1!9986 (get!5058 lt!577851)))))))

(declare-fun call!104820 () Option!3223)

(declare-fun bm!104815 () Bool)

(assert (=> bm!104815 (= call!104820 (maxPrefixOneRule!757 thiss!17113 (h!23053 rules!1846) lt!577265))))

(declare-fun b!1614609 () Bool)

(declare-fun res!720432 () Bool)

(assert (=> b!1614609 (=> (not res!720432) (not e!1035611))))

(assert (=> b!1614609 (= res!720432 (< (size!14176 (_2!9986 (get!5058 lt!577851))) (size!14176 lt!577265)))))

(declare-fun b!1614610 () Bool)

(declare-fun e!1035613 () Option!3223)

(declare-fun lt!577849 () Option!3223)

(declare-fun lt!577848 () Option!3223)

(assert (=> b!1614610 (= e!1035613 (ite (and ((_ is None!3222) lt!577849) ((_ is None!3222) lt!577848)) None!3222 (ite ((_ is None!3222) lt!577848) lt!577849 (ite ((_ is None!3222) lt!577849) lt!577848 (ite (>= (size!14172 (_1!9986 (v!24199 lt!577849))) (size!14172 (_1!9986 (v!24199 lt!577848)))) lt!577849 lt!577848)))))))

(assert (=> b!1614610 (= lt!577849 call!104820)))

(assert (=> b!1614610 (= lt!577848 (maxPrefix!1302 thiss!17113 (t!148153 rules!1846) lt!577265))))

(declare-fun b!1614611 () Bool)

(declare-fun res!720428 () Bool)

(assert (=> b!1614611 (=> (not res!720428) (not e!1035611))))

(assert (=> b!1614611 (= res!720428 (= (++!4655 (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577851)))) (_2!9986 (get!5058 lt!577851))) lt!577265))))

(declare-fun b!1614612 () Bool)

(declare-fun res!720429 () Bool)

(assert (=> b!1614612 (=> (not res!720429) (not e!1035611))))

(assert (=> b!1614612 (= res!720429 (= (value!98279 (_1!9986 (get!5058 lt!577851))) (apply!4434 (transformation!3109 (rule!4929 (_1!9986 (get!5058 lt!577851)))) (seqFromList!1968 (originalCharacters!3923 (_1!9986 (get!5058 lt!577851)))))))))

(declare-fun b!1614613 () Bool)

(declare-fun res!720431 () Bool)

(assert (=> b!1614613 (=> (not res!720431) (not e!1035611))))

(assert (=> b!1614613 (= res!720431 (matchR!1942 (regex!3109 (rule!4929 (_1!9986 (get!5058 lt!577851)))) (list!6895 (charsOf!1758 (_1!9986 (get!5058 lt!577851))))))))

(declare-fun b!1614614 () Bool)

(assert (=> b!1614614 (= e!1035611 (contains!3090 rules!1846 (rule!4929 (_1!9986 (get!5058 lt!577851)))))))

(declare-fun b!1614616 () Bool)

(declare-fun e!1035612 () Bool)

(assert (=> b!1614616 (= e!1035612 e!1035611)))

(declare-fun res!720430 () Bool)

(assert (=> b!1614616 (=> (not res!720430) (not e!1035611))))

(assert (=> b!1614616 (= res!720430 (isDefined!2590 lt!577851))))

(declare-fun d!485887 () Bool)

(assert (=> d!485887 e!1035612))

(declare-fun res!720427 () Bool)

(assert (=> d!485887 (=> res!720427 e!1035612)))

(assert (=> d!485887 (= res!720427 (isEmpty!10674 lt!577851))))

(assert (=> d!485887 (= lt!577851 e!1035613)))

(declare-fun c!262994 () Bool)

(assert (=> d!485887 (= c!262994 (and ((_ is Cons!17652) rules!1846) ((_ is Nil!17652) (t!148153 rules!1846))))))

(declare-fun lt!577847 () Unit!28359)

(declare-fun lt!577850 () Unit!28359)

(assert (=> d!485887 (= lt!577847 lt!577850)))

(assert (=> d!485887 (isPrefix!1369 lt!577265 lt!577265)))

(assert (=> d!485887 (= lt!577850 (lemmaIsPrefixRefl!942 lt!577265 lt!577265))))

(assert (=> d!485887 (rulesValidInductive!950 thiss!17113 rules!1846)))

(assert (=> d!485887 (= (maxPrefix!1302 thiss!17113 rules!1846 lt!577265) lt!577851)))

(declare-fun b!1614615 () Bool)

(assert (=> b!1614615 (= e!1035613 call!104820)))

(assert (= (and d!485887 c!262994) b!1614615))

(assert (= (and d!485887 (not c!262994)) b!1614610))

(assert (= (or b!1614615 b!1614610) bm!104815))

(assert (= (and d!485887 (not res!720427)) b!1614616))

(assert (= (and b!1614616 res!720430) b!1614608))

(assert (= (and b!1614608 res!720426) b!1614609))

(assert (= (and b!1614609 res!720432) b!1614611))

(assert (= (and b!1614611 res!720428) b!1614612))

(assert (= (and b!1614612 res!720429) b!1614613))

(assert (= (and b!1614613 res!720431) b!1614614))

(declare-fun m!1933935 () Bool)

(assert (=> b!1614609 m!1933935))

(declare-fun m!1933937 () Bool)

(assert (=> b!1614609 m!1933937))

(declare-fun m!1933939 () Bool)

(assert (=> b!1614609 m!1933939))

(declare-fun m!1933941 () Bool)

(assert (=> b!1614610 m!1933941))

(declare-fun m!1933943 () Bool)

(assert (=> bm!104815 m!1933943))

(assert (=> b!1614608 m!1933935))

(declare-fun m!1933945 () Bool)

(assert (=> b!1614608 m!1933945))

(assert (=> b!1614608 m!1933945))

(declare-fun m!1933947 () Bool)

(assert (=> b!1614608 m!1933947))

(assert (=> b!1614614 m!1933935))

(declare-fun m!1933949 () Bool)

(assert (=> b!1614614 m!1933949))

(assert (=> b!1614613 m!1933935))

(assert (=> b!1614613 m!1933945))

(assert (=> b!1614613 m!1933945))

(assert (=> b!1614613 m!1933947))

(assert (=> b!1614613 m!1933947))

(declare-fun m!1933951 () Bool)

(assert (=> b!1614613 m!1933951))

(assert (=> b!1614611 m!1933935))

(assert (=> b!1614611 m!1933945))

(assert (=> b!1614611 m!1933945))

(assert (=> b!1614611 m!1933947))

(assert (=> b!1614611 m!1933947))

(declare-fun m!1933953 () Bool)

(assert (=> b!1614611 m!1933953))

(declare-fun m!1933955 () Bool)

(assert (=> b!1614616 m!1933955))

(declare-fun m!1933957 () Bool)

(assert (=> d!485887 m!1933957))

(declare-fun m!1933959 () Bool)

(assert (=> d!485887 m!1933959))

(declare-fun m!1933961 () Bool)

(assert (=> d!485887 m!1933961))

(assert (=> d!485887 m!1932761))

(assert (=> b!1614612 m!1933935))

(declare-fun m!1933963 () Bool)

(assert (=> b!1614612 m!1933963))

(assert (=> b!1614612 m!1933963))

(declare-fun m!1933965 () Bool)

(assert (=> b!1614612 m!1933965))

(assert (=> b!1614074 d!485887))

(declare-fun d!485889 () Bool)

(assert (=> d!485889 (= (list!6895 lt!577276) (list!6899 (c!262917 lt!577276)))))

(declare-fun bs!394042 () Bool)

(assert (= bs!394042 d!485889))

(declare-fun m!1933967 () Bool)

(assert (=> bs!394042 m!1933967))

(assert (=> b!1614074 d!485889))

(declare-fun d!485891 () Bool)

(declare-fun c!262997 () Bool)

(assert (=> d!485891 (= c!262997 ((_ is Cons!17651) (Cons!17651 (h!23052 tokens!457) Nil!17651)))))

(declare-fun e!1035616 () List!17720)

(assert (=> d!485891 (= (printList!853 thiss!17113 (Cons!17651 (h!23052 tokens!457) Nil!17651)) e!1035616)))

(declare-fun b!1614621 () Bool)

(assert (=> b!1614621 (= e!1035616 (++!4655 (list!6895 (charsOf!1758 (h!23052 (Cons!17651 (h!23052 tokens!457) Nil!17651)))) (printList!853 thiss!17113 (t!148152 (Cons!17651 (h!23052 tokens!457) Nil!17651)))))))

(declare-fun b!1614622 () Bool)

(assert (=> b!1614622 (= e!1035616 Nil!17650)))

(assert (= (and d!485891 c!262997) b!1614621))

(assert (= (and d!485891 (not c!262997)) b!1614622))

(declare-fun m!1933969 () Bool)

(assert (=> b!1614621 m!1933969))

(assert (=> b!1614621 m!1933969))

(declare-fun m!1933971 () Bool)

(assert (=> b!1614621 m!1933971))

(declare-fun m!1933973 () Bool)

(assert (=> b!1614621 m!1933973))

(assert (=> b!1614621 m!1933971))

(assert (=> b!1614621 m!1933973))

(declare-fun m!1933975 () Bool)

(assert (=> b!1614621 m!1933975))

(assert (=> b!1614074 d!485891))

(declare-fun d!485893 () Bool)

(declare-fun e!1035619 () Bool)

(assert (=> d!485893 e!1035619))

(declare-fun res!720435 () Bool)

(assert (=> d!485893 (=> (not res!720435) (not e!1035619))))

(declare-fun lt!577854 () BalanceConc!11678)

(assert (=> d!485893 (= res!720435 (= (list!6896 lt!577854) (Cons!17651 (h!23052 tokens!457) Nil!17651)))))

(declare-fun singleton!633 (Token!5784) BalanceConc!11678)

(assert (=> d!485893 (= lt!577854 (singleton!633 (h!23052 tokens!457)))))

(assert (=> d!485893 (= (singletonSeq!1497 (h!23052 tokens!457)) lt!577854)))

(declare-fun b!1614625 () Bool)

(assert (=> b!1614625 (= e!1035619 (isBalanced!1753 (c!262919 lt!577854)))))

(assert (= (and d!485893 res!720435) b!1614625))

(declare-fun m!1933977 () Bool)

(assert (=> d!485893 m!1933977))

(declare-fun m!1933979 () Bool)

(assert (=> d!485893 m!1933979))

(declare-fun m!1933981 () Bool)

(assert (=> b!1614625 m!1933981))

(assert (=> b!1614074 d!485893))

(declare-fun d!485895 () Bool)

(declare-fun lt!577857 () Bool)

(declare-fun isEmpty!10680 (List!17721) Bool)

(assert (=> d!485895 (= lt!577857 (isEmpty!10680 (list!6896 (_1!9985 (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285))))))))

(declare-fun isEmpty!10681 (Conc!5867) Bool)

(assert (=> d!485895 (= lt!577857 (isEmpty!10681 (c!262919 (_1!9985 (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285))))))))

(assert (=> d!485895 (= (isEmpty!10669 (_1!9985 (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285)))) lt!577857)))

(declare-fun bs!394043 () Bool)

(assert (= bs!394043 d!485895))

(assert (=> bs!394043 m!1933453))

(assert (=> bs!394043 m!1933453))

(declare-fun m!1933983 () Bool)

(assert (=> bs!394043 m!1933983))

(declare-fun m!1933985 () Bool)

(assert (=> bs!394043 m!1933985))

(assert (=> b!1614072 d!485895))

(declare-fun b!1614626 () Bool)

(declare-fun e!1035622 () Bool)

(declare-fun lt!577858 () tuple2!17166)

(assert (=> b!1614626 (= e!1035622 (not (isEmpty!10669 (_1!9985 lt!577858))))))

(declare-fun b!1614628 () Bool)

(declare-fun res!720438 () Bool)

(declare-fun e!1035621 () Bool)

(assert (=> b!1614628 (=> (not res!720438) (not e!1035621))))

(assert (=> b!1614628 (= res!720438 (= (list!6896 (_1!9985 lt!577858)) (_1!9989 (lexList!811 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 lt!577285))))))))

(declare-fun b!1614629 () Bool)

(declare-fun e!1035620 () Bool)

(assert (=> b!1614629 (= e!1035620 (= (_2!9985 lt!577858) (seqFromList!1968 lt!577285)))))

(declare-fun b!1614630 () Bool)

(assert (=> b!1614630 (= e!1035620 e!1035622)))

(declare-fun res!720436 () Bool)

(assert (=> b!1614630 (= res!720436 (< (size!14178 (_2!9985 lt!577858)) (size!14178 (seqFromList!1968 lt!577285))))))

(assert (=> b!1614630 (=> (not res!720436) (not e!1035622))))

(declare-fun d!485897 () Bool)

(assert (=> d!485897 e!1035621))

(declare-fun res!720437 () Bool)

(assert (=> d!485897 (=> (not res!720437) (not e!1035621))))

(assert (=> d!485897 (= res!720437 e!1035620)))

(declare-fun c!262998 () Bool)

(assert (=> d!485897 (= c!262998 (> (size!14177 (_1!9985 lt!577858)) 0))))

(assert (=> d!485897 (= lt!577858 (lexTailRecV2!534 thiss!17113 rules!1846 (seqFromList!1968 lt!577285) (BalanceConc!11677 Empty!5866) (seqFromList!1968 lt!577285) (BalanceConc!11679 Empty!5867)))))

(assert (=> d!485897 (= (lex!1222 thiss!17113 rules!1846 (seqFromList!1968 lt!577285)) lt!577858)))

(declare-fun b!1614627 () Bool)

(assert (=> b!1614627 (= e!1035621 (= (list!6895 (_2!9985 lt!577858)) (_2!9989 (lexList!811 thiss!17113 rules!1846 (list!6895 (seqFromList!1968 lt!577285))))))))

(assert (= (and d!485897 c!262998) b!1614630))

(assert (= (and d!485897 (not c!262998)) b!1614629))

(assert (= (and b!1614630 res!720436) b!1614626))

(assert (= (and d!485897 res!720437) b!1614628))

(assert (= (and b!1614628 res!720438) b!1614627))

(declare-fun m!1933987 () Bool)

(assert (=> d!485897 m!1933987))

(assert (=> d!485897 m!1932851))

(assert (=> d!485897 m!1932851))

(declare-fun m!1933989 () Bool)

(assert (=> d!485897 m!1933989))

(declare-fun m!1933991 () Bool)

(assert (=> b!1614627 m!1933991))

(assert (=> b!1614627 m!1932851))

(declare-fun m!1933993 () Bool)

(assert (=> b!1614627 m!1933993))

(assert (=> b!1614627 m!1933993))

(declare-fun m!1933995 () Bool)

(assert (=> b!1614627 m!1933995))

(declare-fun m!1933997 () Bool)

(assert (=> b!1614630 m!1933997))

(assert (=> b!1614630 m!1932851))

(declare-fun m!1933999 () Bool)

(assert (=> b!1614630 m!1933999))

(declare-fun m!1934001 () Bool)

(assert (=> b!1614628 m!1934001))

(assert (=> b!1614628 m!1932851))

(assert (=> b!1614628 m!1933993))

(assert (=> b!1614628 m!1933993))

(assert (=> b!1614628 m!1933995))

(declare-fun m!1934003 () Bool)

(assert (=> b!1614626 m!1934003))

(assert (=> b!1614072 d!485897))

(declare-fun d!485899 () Bool)

(assert (=> d!485899 (= (seqFromList!1968 lt!577285) (fromListB!859 lt!577285))))

(declare-fun bs!394044 () Bool)

(assert (= bs!394044 d!485899))

(declare-fun m!1934005 () Bool)

(assert (=> bs!394044 m!1934005))

(assert (=> b!1614072 d!485899))

(declare-fun d!485901 () Bool)

(declare-fun e!1035625 () Bool)

(assert (=> d!485901 e!1035625))

(declare-fun res!720450 () Bool)

(assert (=> d!485901 (=> (not res!720450) (not e!1035625))))

(declare-fun appendAssocInst!417 (Conc!5866 Conc!5866) Bool)

(assert (=> d!485901 (= res!720450 (appendAssocInst!417 (c!262917 lt!577266) (c!262917 lt!577277)))))

(declare-fun lt!577861 () BalanceConc!11676)

(declare-fun ++!4658 (Conc!5866 Conc!5866) Conc!5866)

(assert (=> d!485901 (= lt!577861 (BalanceConc!11677 (++!4658 (c!262917 lt!577266) (c!262917 lt!577277))))))

(assert (=> d!485901 (= (++!4656 lt!577266 lt!577277) lt!577861)))

(declare-fun b!1614640 () Bool)

(declare-fun res!720447 () Bool)

(assert (=> b!1614640 (=> (not res!720447) (not e!1035625))))

(declare-fun height!885 (Conc!5866) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1614640 (= res!720447 (<= (height!885 (++!4658 (c!262917 lt!577266) (c!262917 lt!577277))) (+ (max!0 (height!885 (c!262917 lt!577266)) (height!885 (c!262917 lt!577277))) 1)))))

(declare-fun b!1614639 () Bool)

(declare-fun res!720448 () Bool)

(assert (=> b!1614639 (=> (not res!720448) (not e!1035625))))

(declare-fun isBalanced!1754 (Conc!5866) Bool)

(assert (=> b!1614639 (= res!720448 (isBalanced!1754 (++!4658 (c!262917 lt!577266) (c!262917 lt!577277))))))

(declare-fun b!1614641 () Bool)

(declare-fun res!720449 () Bool)

(assert (=> b!1614641 (=> (not res!720449) (not e!1035625))))

(assert (=> b!1614641 (= res!720449 (>= (height!885 (++!4658 (c!262917 lt!577266) (c!262917 lt!577277))) (max!0 (height!885 (c!262917 lt!577266)) (height!885 (c!262917 lt!577277)))))))

(declare-fun b!1614642 () Bool)

(assert (=> b!1614642 (= e!1035625 (= (list!6895 lt!577861) (++!4655 (list!6895 lt!577266) (list!6895 lt!577277))))))

(assert (= (and d!485901 res!720450) b!1614639))

(assert (= (and b!1614639 res!720448) b!1614640))

(assert (= (and b!1614640 res!720447) b!1614641))

(assert (= (and b!1614641 res!720449) b!1614642))

(declare-fun m!1934007 () Bool)

(assert (=> b!1614639 m!1934007))

(assert (=> b!1614639 m!1934007))

(declare-fun m!1934009 () Bool)

(assert (=> b!1614639 m!1934009))

(declare-fun m!1934011 () Bool)

(assert (=> d!485901 m!1934011))

(assert (=> d!485901 m!1934007))

(declare-fun m!1934013 () Bool)

(assert (=> b!1614642 m!1934013))

(assert (=> b!1614642 m!1932797))

(assert (=> b!1614642 m!1932881))

(assert (=> b!1614642 m!1932797))

(assert (=> b!1614642 m!1932881))

(declare-fun m!1934015 () Bool)

(assert (=> b!1614642 m!1934015))

(assert (=> b!1614640 m!1934007))

(assert (=> b!1614640 m!1934007))

(declare-fun m!1934017 () Bool)

(assert (=> b!1614640 m!1934017))

(declare-fun m!1934019 () Bool)

(assert (=> b!1614640 m!1934019))

(assert (=> b!1614640 m!1934019))

(declare-fun m!1934021 () Bool)

(assert (=> b!1614640 m!1934021))

(declare-fun m!1934023 () Bool)

(assert (=> b!1614640 m!1934023))

(assert (=> b!1614640 m!1934021))

(assert (=> b!1614641 m!1934007))

(assert (=> b!1614641 m!1934007))

(assert (=> b!1614641 m!1934017))

(assert (=> b!1614641 m!1934019))

(assert (=> b!1614641 m!1934019))

(assert (=> b!1614641 m!1934021))

(assert (=> b!1614641 m!1934023))

(assert (=> b!1614641 m!1934021))

(assert (=> b!1614073 d!485901))

(declare-fun d!485903 () Bool)

(declare-fun e!1035628 () Bool)

(assert (=> d!485903 e!1035628))

(declare-fun res!720453 () Bool)

(assert (=> d!485903 (=> (not res!720453) (not e!1035628))))

(declare-fun lt!577864 () BalanceConc!11676)

(assert (=> d!485903 (= res!720453 (= (list!6895 lt!577864) (Cons!17650 (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0) Nil!17650)))))

(declare-fun singleton!634 (C!9048) BalanceConc!11676)

(assert (=> d!485903 (= lt!577864 (singleton!634 (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0)))))

(assert (=> d!485903 (= (singletonSeq!1496 (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0)) lt!577864)))

(declare-fun b!1614645 () Bool)

(assert (=> b!1614645 (= e!1035628 (isBalanced!1754 (c!262917 lt!577864)))))

(assert (= (and d!485903 res!720453) b!1614645))

(declare-fun m!1934025 () Bool)

(assert (=> d!485903 m!1934025))

(assert (=> d!485903 m!1932825))

(declare-fun m!1934027 () Bool)

(assert (=> d!485903 m!1934027))

(declare-fun m!1934029 () Bool)

(assert (=> b!1614645 m!1934029))

(assert (=> b!1614073 d!485903))

(declare-fun lt!577887 () Bool)

(declare-fun d!485905 () Bool)

(assert (=> d!485905 (= lt!577887 (prefixMatch!372 lt!577275 (list!6895 (++!4656 lt!577266 lt!577277))))))

(declare-datatypes ((List!17727 0))(
  ( (Nil!17657) (Cons!17657 (h!23058 Regex!4437) (t!148200 List!17727)) )
))
(declare-datatypes ((Context!1698 0))(
  ( (Context!1699 (exprs!1349 List!17727)) )
))
(declare-fun prefixMatchZipperSequence!481 ((InoxSet Context!1698) BalanceConc!11676 Int) Bool)

(declare-fun focus!155 (Regex!4437) (InoxSet Context!1698))

(assert (=> d!485905 (= lt!577887 (prefixMatchZipperSequence!481 (focus!155 lt!577275) (++!4656 lt!577266 lt!577277) 0))))

(declare-fun lt!577893 () Unit!28359)

(declare-fun lt!577886 () Unit!28359)

(assert (=> d!485905 (= lt!577893 lt!577886)))

(declare-fun lt!577892 () List!17720)

(declare-fun lt!577888 () (InoxSet Context!1698))

(declare-fun prefixMatchZipper!134 ((InoxSet Context!1698) List!17720) Bool)

(assert (=> d!485905 (= (prefixMatch!372 lt!577275 lt!577892) (prefixMatchZipper!134 lt!577888 lt!577892))))

(declare-datatypes ((List!17728 0))(
  ( (Nil!17658) (Cons!17658 (h!23059 Context!1698) (t!148201 List!17728)) )
))
(declare-fun lt!577894 () List!17728)

(declare-fun prefixMatchZipperRegexEquiv!134 ((InoxSet Context!1698) List!17728 Regex!4437 List!17720) Unit!28359)

(assert (=> d!485905 (= lt!577886 (prefixMatchZipperRegexEquiv!134 lt!577888 lt!577894 lt!577275 lt!577892))))

(assert (=> d!485905 (= lt!577892 (list!6895 (++!4656 lt!577266 lt!577277)))))

(declare-fun toList!895 ((InoxSet Context!1698)) List!17728)

(assert (=> d!485905 (= lt!577894 (toList!895 (focus!155 lt!577275)))))

(assert (=> d!485905 (= lt!577888 (focus!155 lt!577275))))

(declare-fun lt!577890 () Unit!28359)

(declare-fun lt!577891 () Unit!28359)

(assert (=> d!485905 (= lt!577890 lt!577891)))

(declare-fun lt!577885 () Int)

(declare-fun lt!577889 () (InoxSet Context!1698))

(declare-fun dropList!572 (BalanceConc!11676 Int) List!17720)

(assert (=> d!485905 (= (prefixMatchZipper!134 lt!577889 (dropList!572 (++!4656 lt!577266 lt!577277) lt!577885)) (prefixMatchZipperSequence!481 lt!577889 (++!4656 lt!577266 lt!577277) lt!577885))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!134 ((InoxSet Context!1698) BalanceConc!11676 Int) Unit!28359)

(assert (=> d!485905 (= lt!577891 (lemmaprefixMatchZipperSequenceEquivalent!134 lt!577889 (++!4656 lt!577266 lt!577277) lt!577885))))

(assert (=> d!485905 (= lt!577885 0)))

(assert (=> d!485905 (= lt!577889 (focus!155 lt!577275))))

(declare-fun validRegex!1760 (Regex!4437) Bool)

(assert (=> d!485905 (validRegex!1760 lt!577275)))

(assert (=> d!485905 (= (prefixMatchZipperSequence!479 lt!577275 (++!4656 lt!577266 lt!577277)) lt!577887)))

(declare-fun bs!394045 () Bool)

(assert (= bs!394045 d!485905))

(assert (=> bs!394045 m!1932823))

(declare-fun m!1934031 () Bool)

(assert (=> bs!394045 m!1934031))

(assert (=> bs!394045 m!1932823))

(declare-fun m!1934033 () Bool)

(assert (=> bs!394045 m!1934033))

(declare-fun m!1934035 () Bool)

(assert (=> bs!394045 m!1934035))

(declare-fun m!1934037 () Bool)

(assert (=> bs!394045 m!1934037))

(declare-fun m!1934039 () Bool)

(assert (=> bs!394045 m!1934039))

(declare-fun m!1934041 () Bool)

(assert (=> bs!394045 m!1934041))

(assert (=> bs!394045 m!1934031))

(declare-fun m!1934043 () Bool)

(assert (=> bs!394045 m!1934043))

(declare-fun m!1934045 () Bool)

(assert (=> bs!394045 m!1934045))

(assert (=> bs!394045 m!1932823))

(declare-fun m!1934047 () Bool)

(assert (=> bs!394045 m!1934047))

(assert (=> bs!394045 m!1934039))

(assert (=> bs!394045 m!1932823))

(declare-fun m!1934049 () Bool)

(assert (=> bs!394045 m!1934049))

(declare-fun m!1934051 () Bool)

(assert (=> bs!394045 m!1934051))

(declare-fun m!1934053 () Bool)

(assert (=> bs!394045 m!1934053))

(assert (=> bs!394045 m!1934039))

(declare-fun m!1934055 () Bool)

(assert (=> bs!394045 m!1934055))

(assert (=> bs!394045 m!1932823))

(assert (=> bs!394045 m!1934035))

(assert (=> b!1614073 d!485905))

(declare-fun d!485907 () Bool)

(declare-fun lt!577897 () C!9048)

(declare-fun apply!4437 (List!17720 Int) C!9048)

(assert (=> d!485907 (= lt!577897 (apply!4437 (list!6895 (charsOf!1758 (h!23052 (t!148152 tokens!457)))) 0))))

(declare-fun apply!4438 (Conc!5866 Int) C!9048)

(assert (=> d!485907 (= lt!577897 (apply!4438 (c!262917 (charsOf!1758 (h!23052 (t!148152 tokens!457)))) 0))))

(declare-fun e!1035631 () Bool)

(assert (=> d!485907 e!1035631))

(declare-fun res!720456 () Bool)

(assert (=> d!485907 (=> (not res!720456) (not e!1035631))))

(assert (=> d!485907 (= res!720456 (<= 0 0))))

(assert (=> d!485907 (= (apply!4428 (charsOf!1758 (h!23052 (t!148152 tokens!457))) 0) lt!577897)))

(declare-fun b!1614648 () Bool)

(assert (=> b!1614648 (= e!1035631 (< 0 (size!14178 (charsOf!1758 (h!23052 (t!148152 tokens!457))))))))

(assert (= (and d!485907 res!720456) b!1614648))

(assert (=> d!485907 m!1932831))

(assert (=> d!485907 m!1933149))

(assert (=> d!485907 m!1933149))

(declare-fun m!1934057 () Bool)

(assert (=> d!485907 m!1934057))

(declare-fun m!1934059 () Bool)

(assert (=> d!485907 m!1934059))

(assert (=> b!1614648 m!1932831))

(assert (=> b!1614648 m!1933743))

(assert (=> b!1614073 d!485907))

(declare-fun d!485909 () Bool)

(declare-fun lt!577900 () Unit!28359)

(declare-fun lemma!221 (List!17722 LexerInterface!2738 List!17722) Unit!28359)

(assert (=> d!485909 (= lt!577900 (lemma!221 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67080 () Int)

(declare-fun generalisedUnion!229 (List!17727) Regex!4437)

(declare-fun map!3655 (List!17722 Int) List!17727)

(assert (=> d!485909 (= (rulesRegex!499 thiss!17113 rules!1846) (generalisedUnion!229 (map!3655 rules!1846 lambda!67080)))))

(declare-fun bs!394046 () Bool)

(assert (= bs!394046 d!485909))

(declare-fun m!1934061 () Bool)

(assert (=> bs!394046 m!1934061))

(declare-fun m!1934063 () Bool)

(assert (=> bs!394046 m!1934063))

(assert (=> bs!394046 m!1934063))

(declare-fun m!1934065 () Bool)

(assert (=> bs!394046 m!1934065))

(assert (=> b!1614073 d!485909))

(declare-fun d!485911 () Bool)

(declare-fun lt!577901 () BalanceConc!11676)

(assert (=> d!485911 (= (list!6895 lt!577901) (originalCharacters!3923 (h!23052 (t!148152 tokens!457))))))

(assert (=> d!485911 (= lt!577901 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (value!98279 (h!23052 (t!148152 tokens!457)))))))

(assert (=> d!485911 (= (charsOf!1758 (h!23052 (t!148152 tokens!457))) lt!577901)))

(declare-fun b_lambda!50933 () Bool)

(assert (=> (not b_lambda!50933) (not d!485911)))

(declare-fun tb!92779 () Bool)

(declare-fun t!148187 () Bool)

(assert (=> (and b!1614060 (= (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457)))))) t!148187) tb!92779))

(declare-fun b!1614649 () Bool)

(declare-fun e!1035632 () Bool)

(declare-fun tp!470750 () Bool)

(assert (=> b!1614649 (= e!1035632 (and (inv!23060 (c!262917 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (value!98279 (h!23052 (t!148152 tokens!457)))))) tp!470750))))

(declare-fun result!111822 () Bool)

(assert (=> tb!92779 (= result!111822 (and (inv!23061 (dynLambda!7871 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (value!98279 (h!23052 (t!148152 tokens!457))))) e!1035632))))

(assert (= tb!92779 b!1614649))

(declare-fun m!1934067 () Bool)

(assert (=> b!1614649 m!1934067))

(declare-fun m!1934069 () Bool)

(assert (=> tb!92779 m!1934069))

(assert (=> d!485911 t!148187))

(declare-fun b_and!114489 () Bool)

(assert (= b_and!114473 (and (=> t!148187 result!111822) b_and!114489)))

(declare-fun t!148189 () Bool)

(declare-fun tb!92781 () Bool)

(assert (=> (and b!1614066 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457)))))) t!148189) tb!92781))

(declare-fun result!111824 () Bool)

(assert (= result!111824 result!111822))

(assert (=> d!485911 t!148189))

(declare-fun b_and!114491 () Bool)

(assert (= b_and!114475 (and (=> t!148189 result!111824) b_and!114491)))

(declare-fun m!1934071 () Bool)

(assert (=> d!485911 m!1934071))

(declare-fun m!1934073 () Bool)

(assert (=> d!485911 m!1934073))

(assert (=> b!1614073 d!485911))

(declare-fun d!485913 () Bool)

(assert (=> d!485913 (= (inv!23053 (tag!3385 (rule!4929 (h!23052 tokens!457)))) (= (mod (str.len (value!98278 (tag!3385 (rule!4929 (h!23052 tokens!457))))) 2) 0))))

(assert (=> b!1614076 d!485913))

(declare-fun d!485915 () Bool)

(declare-fun res!720457 () Bool)

(declare-fun e!1035633 () Bool)

(assert (=> d!485915 (=> (not res!720457) (not e!1035633))))

(assert (=> d!485915 (= res!720457 (semiInverseModEq!1182 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (toValue!4532 (transformation!3109 (rule!4929 (h!23052 tokens!457))))))))

(assert (=> d!485915 (= (inv!23057 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) e!1035633)))

(declare-fun b!1614650 () Bool)

(assert (=> b!1614650 (= e!1035633 (equivClasses!1123 (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (toValue!4532 (transformation!3109 (rule!4929 (h!23052 tokens!457))))))))

(assert (= (and d!485915 res!720457) b!1614650))

(declare-fun m!1934075 () Bool)

(assert (=> d!485915 m!1934075))

(declare-fun m!1934077 () Bool)

(assert (=> b!1614650 m!1934077))

(assert (=> b!1614076 d!485915))

(declare-fun d!485917 () Bool)

(declare-fun lt!577904 () C!9048)

(assert (=> d!485917 (= lt!577904 (head!3334 (list!6895 lt!577278)))))

(declare-fun head!3339 (Conc!5866) C!9048)

(assert (=> d!485917 (= lt!577904 (head!3339 (c!262917 lt!577278)))))

(assert (=> d!485917 (not (isEmpty!10673 lt!577278))))

(assert (=> d!485917 (= (head!3335 lt!577278) lt!577904)))

(declare-fun bs!394047 () Bool)

(assert (= bs!394047 d!485917))

(assert (=> bs!394047 m!1932803))

(assert (=> bs!394047 m!1932803))

(declare-fun m!1934079 () Bool)

(assert (=> bs!394047 m!1934079))

(declare-fun m!1934081 () Bool)

(assert (=> bs!394047 m!1934081))

(declare-fun m!1934083 () Bool)

(assert (=> bs!394047 m!1934083))

(assert (=> b!1614077 d!485917))

(declare-fun d!485919 () Bool)

(assert (=> d!485919 (= (head!3334 lt!577282) (h!23051 lt!577282))))

(assert (=> b!1614075 d!485919))

(declare-fun b!1614655 () Bool)

(declare-fun e!1035636 () Bool)

(declare-fun tp_is_empty!7245 () Bool)

(declare-fun tp!470753 () Bool)

(assert (=> b!1614655 (= e!1035636 (and tp_is_empty!7245 tp!470753))))

(assert (=> b!1614067 (= tp!470688 e!1035636)))

(assert (= (and b!1614067 ((_ is Cons!17650) (originalCharacters!3923 (h!23052 tokens!457)))) b!1614655))

(declare-fun b!1614666 () Bool)

(declare-fun e!1035639 () Bool)

(assert (=> b!1614666 (= e!1035639 tp_is_empty!7245)))

(declare-fun b!1614668 () Bool)

(declare-fun tp!470766 () Bool)

(assert (=> b!1614668 (= e!1035639 tp!470766)))

(assert (=> b!1614083 (= tp!470687 e!1035639)))

(declare-fun b!1614667 () Bool)

(declare-fun tp!470764 () Bool)

(declare-fun tp!470765 () Bool)

(assert (=> b!1614667 (= e!1035639 (and tp!470764 tp!470765))))

(declare-fun b!1614669 () Bool)

(declare-fun tp!470768 () Bool)

(declare-fun tp!470767 () Bool)

(assert (=> b!1614669 (= e!1035639 (and tp!470768 tp!470767))))

(assert (= (and b!1614083 ((_ is ElementMatch!4437) (regex!3109 (h!23053 rules!1846)))) b!1614666))

(assert (= (and b!1614083 ((_ is Concat!7637) (regex!3109 (h!23053 rules!1846)))) b!1614667))

(assert (= (and b!1614083 ((_ is Star!4437) (regex!3109 (h!23053 rules!1846)))) b!1614668))

(assert (= (and b!1614083 ((_ is Union!4437) (regex!3109 (h!23053 rules!1846)))) b!1614669))

(declare-fun b!1614683 () Bool)

(declare-fun b_free!43463 () Bool)

(declare-fun b_next!44167 () Bool)

(assert (=> b!1614683 (= b_free!43463 (not b_next!44167))))

(declare-fun tp!470781 () Bool)

(declare-fun b_and!114493 () Bool)

(assert (=> b!1614683 (= tp!470781 b_and!114493)))

(declare-fun b_free!43465 () Bool)

(declare-fun b_next!44169 () Bool)

(assert (=> b!1614683 (= b_free!43465 (not b_next!44169))))

(declare-fun t!148191 () Bool)

(declare-fun tb!92783 () Bool)

(assert (=> (and b!1614683 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457))))) t!148191) tb!92783))

(declare-fun result!111832 () Bool)

(assert (= result!111832 result!111800))

(assert (=> b!1614257 t!148191))

(assert (=> d!485819 t!148191))

(declare-fun t!148193 () Bool)

(declare-fun tb!92785 () Bool)

(assert (=> (and b!1614683 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457)))))) t!148193) tb!92785))

(declare-fun result!111834 () Bool)

(assert (= result!111834 result!111822))

(assert (=> d!485911 t!148193))

(declare-fun tp!470779 () Bool)

(declare-fun b_and!114495 () Bool)

(assert (=> b!1614683 (= tp!470779 (and (=> t!148191 result!111832) (=> t!148193 result!111834) b_and!114495))))

(declare-fun tp!470783 () Bool)

(declare-fun e!1035657 () Bool)

(declare-fun e!1035656 () Bool)

(declare-fun b!1614680 () Bool)

(assert (=> b!1614680 (= e!1035657 (and (inv!23056 (h!23052 (t!148152 tokens!457))) e!1035656 tp!470783))))

(declare-fun b!1614681 () Bool)

(declare-fun tp!470782 () Bool)

(declare-fun e!1035652 () Bool)

(assert (=> b!1614681 (= e!1035656 (and (inv!21 (value!98279 (h!23052 (t!148152 tokens!457)))) e!1035652 tp!470782))))

(declare-fun e!1035655 () Bool)

(assert (=> b!1614683 (= e!1035655 (and tp!470781 tp!470779))))

(declare-fun tp!470780 () Bool)

(declare-fun b!1614682 () Bool)

(assert (=> b!1614682 (= e!1035652 (and tp!470780 (inv!23053 (tag!3385 (rule!4929 (h!23052 (t!148152 tokens!457))))) (inv!23057 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) e!1035655))))

(assert (=> b!1614057 (= tp!470684 e!1035657)))

(assert (= b!1614682 b!1614683))

(assert (= b!1614681 b!1614682))

(assert (= b!1614680 b!1614681))

(assert (= (and b!1614057 ((_ is Cons!17651) (t!148152 tokens!457))) b!1614680))

(declare-fun m!1934085 () Bool)

(assert (=> b!1614680 m!1934085))

(declare-fun m!1934087 () Bool)

(assert (=> b!1614681 m!1934087))

(declare-fun m!1934089 () Bool)

(assert (=> b!1614682 m!1934089))

(declare-fun m!1934091 () Bool)

(assert (=> b!1614682 m!1934091))

(declare-fun b!1614684 () Bool)

(declare-fun e!1035658 () Bool)

(assert (=> b!1614684 (= e!1035658 tp_is_empty!7245)))

(declare-fun b!1614686 () Bool)

(declare-fun tp!470786 () Bool)

(assert (=> b!1614686 (= e!1035658 tp!470786)))

(assert (=> b!1614076 (= tp!470691 e!1035658)))

(declare-fun b!1614685 () Bool)

(declare-fun tp!470784 () Bool)

(declare-fun tp!470785 () Bool)

(assert (=> b!1614685 (= e!1035658 (and tp!470784 tp!470785))))

(declare-fun b!1614687 () Bool)

(declare-fun tp!470788 () Bool)

(declare-fun tp!470787 () Bool)

(assert (=> b!1614687 (= e!1035658 (and tp!470788 tp!470787))))

(assert (= (and b!1614076 ((_ is ElementMatch!4437) (regex!3109 (rule!4929 (h!23052 tokens!457))))) b!1614684))

(assert (= (and b!1614076 ((_ is Concat!7637) (regex!3109 (rule!4929 (h!23052 tokens!457))))) b!1614685))

(assert (= (and b!1614076 ((_ is Star!4437) (regex!3109 (rule!4929 (h!23052 tokens!457))))) b!1614686))

(assert (= (and b!1614076 ((_ is Union!4437) (regex!3109 (rule!4929 (h!23052 tokens!457))))) b!1614687))

(declare-fun b!1614698 () Bool)

(declare-fun b_free!43467 () Bool)

(declare-fun b_next!44171 () Bool)

(assert (=> b!1614698 (= b_free!43467 (not b_next!44171))))

(declare-fun tp!470800 () Bool)

(declare-fun b_and!114497 () Bool)

(assert (=> b!1614698 (= tp!470800 b_and!114497)))

(declare-fun b_free!43469 () Bool)

(declare-fun b_next!44173 () Bool)

(assert (=> b!1614698 (= b_free!43469 (not b_next!44173))))

(declare-fun tb!92787 () Bool)

(declare-fun t!148195 () Bool)

(assert (=> (and b!1614698 (= (toChars!4391 (transformation!3109 (h!23053 (t!148153 rules!1846)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457))))) t!148195) tb!92787))

(declare-fun result!111838 () Bool)

(assert (= result!111838 result!111800))

(assert (=> b!1614257 t!148195))

(assert (=> d!485819 t!148195))

(declare-fun tb!92789 () Bool)

(declare-fun t!148197 () Bool)

(assert (=> (and b!1614698 (= (toChars!4391 (transformation!3109 (h!23053 (t!148153 rules!1846)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457)))))) t!148197) tb!92789))

(declare-fun result!111840 () Bool)

(assert (= result!111840 result!111822))

(assert (=> d!485911 t!148197))

(declare-fun b_and!114499 () Bool)

(declare-fun tp!470798 () Bool)

(assert (=> b!1614698 (= tp!470798 (and (=> t!148195 result!111838) (=> t!148197 result!111840) b_and!114499))))

(declare-fun e!1035668 () Bool)

(assert (=> b!1614698 (= e!1035668 (and tp!470800 tp!470798))))

(declare-fun tp!470797 () Bool)

(declare-fun b!1614697 () Bool)

(declare-fun e!1035669 () Bool)

(assert (=> b!1614697 (= e!1035669 (and tp!470797 (inv!23053 (tag!3385 (h!23053 (t!148153 rules!1846)))) (inv!23057 (transformation!3109 (h!23053 (t!148153 rules!1846)))) e!1035668))))

(declare-fun b!1614696 () Bool)

(declare-fun e!1035667 () Bool)

(declare-fun tp!470799 () Bool)

(assert (=> b!1614696 (= e!1035667 (and e!1035669 tp!470799))))

(assert (=> b!1614065 (= tp!470690 e!1035667)))

(assert (= b!1614697 b!1614698))

(assert (= b!1614696 b!1614697))

(assert (= (and b!1614065 ((_ is Cons!17652) (t!148153 rules!1846))) b!1614696))

(declare-fun m!1934093 () Bool)

(assert (=> b!1614697 m!1934093))

(declare-fun m!1934095 () Bool)

(assert (=> b!1614697 m!1934095))

(declare-fun b_lambda!50935 () Bool)

(assert (= b_lambda!50933 (or (and b!1614060 b_free!43449 (= (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))))) (and b!1614066 b_free!43453 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))))) (and b!1614683 b_free!43465) (and b!1614698 b_free!43469 (= (toChars!4391 (transformation!3109 (h!23053 (t!148153 rules!1846)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))))) b_lambda!50935)))

(declare-fun b_lambda!50937 () Bool)

(assert (= b_lambda!50923 (or (and b!1614060 b_free!43449 (= (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) (and b!1614066 b_free!43453) (and b!1614683 b_free!43465 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) (and b!1614698 b_free!43469 (= (toChars!4391 (transformation!3109 (h!23053 (t!148153 rules!1846)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) b_lambda!50937)))

(declare-fun b_lambda!50939 () Bool)

(assert (= b_lambda!50921 (or (and b!1614060 b_free!43449 (= (toChars!4391 (transformation!3109 (h!23053 rules!1846))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) (and b!1614066 b_free!43453) (and b!1614683 b_free!43465 (= (toChars!4391 (transformation!3109 (rule!4929 (h!23052 (t!148152 tokens!457))))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) (and b!1614698 b_free!43469 (= (toChars!4391 (transformation!3109 (h!23053 (t!148153 rules!1846)))) (toChars!4391 (transformation!3109 (rule!4929 (h!23052 tokens!457)))))) b_lambda!50939)))

(check-sat (not b!1614611) (not b_next!44171) (not d!485881) (not d!485827) (not b!1614609) (not b!1614605) (not b_lambda!50939) (not b!1614351) (not d!485685) (not b!1614668) (not b!1614645) (not b!1614308) (not b!1614696) b_and!114497 (not b!1614528) (not b_lambda!50935) (not d!485915) (not d!485679) (not b!1614532) (not b!1614628) (not b!1614224) (not b!1614641) (not b_next!44151) (not b!1614251) (not d!485819) (not b!1614258) b_and!114495 (not b!1614284) (not d!485823) (not b!1614341) (not b!1614642) (not d!485901) (not b!1614307) (not d!485849) (not b!1614306) (not b!1614625) (not b!1614529) (not b!1614669) (not b!1614214) (not d!485917) (not d!485911) (not b!1614441) (not b!1614365) (not b!1614352) (not d!485869) (not b!1614613) (not b!1614312) (not d!485875) (not b!1614630) (not b!1614444) (not d!485887) (not b!1614374) (not d!485885) b_and!114493 (not d!485831) (not b!1614438) (not d!485739) (not d!485855) (not d!485769) (not d!485813) (not b!1614607) (not b!1614655) (not d!485767) (not d!485857) (not b_next!44173) (not b!1614311) (not d!485779) (not d!485787) (not b!1614541) (not d!485821) (not d!485879) (not b_next!44157) (not b!1614250) (not b!1614231) (not d!485905) (not b!1614681) (not bm!104814) (not b!1614505) (not tb!92767) (not b_next!44153) (not b!1614486) (not b!1614682) (not d!485895) (not b!1614610) (not b!1614337) (not d!485797) (not b!1614640) (not b!1614621) (not b!1614649) (not b_lambda!50937) (not b!1614395) (not d!485853) (not b!1614263) (not b!1614687) (not b!1614650) b_and!114499 b_and!114453 (not b_next!44167) (not b!1614608) (not b!1614537) (not b!1614527) (not d!485893) (not d!485741) (not d!485897) (not b!1614538) (not b!1614309) tp_is_empty!7245 (not d!485815) (not b_next!44155) (not d!485783) (not tb!92779) (not b!1614257) (not b!1614612) (not b!1614226) b_and!114457 (not b!1614526) b_and!114491 (not b!1614507) (not b!1614504) (not d!485883) (not b!1614350) (not b!1614285) (not b!1614530) (not d!485743) (not d!485903) (not b!1614439) (not b!1614338) (not b!1614533) (not d!485747) (not d!485781) (not b!1614310) (not b!1614686) (not d!485795) (not b!1614336) (not d!485771) (not bm!104813) (not d!485751) (not d!485889) (not b!1614314) (not b!1614213) (not d!485865) b_and!114489 (not d!485817) (not b!1614437) (not b!1614648) (not d!485877) (not b!1614525) (not b!1614536) (not b!1614626) (not bm!104805) (not b!1614680) (not d!485907) (not b!1614616) (not b!1614614) (not b!1614490) (not b_next!44169) (not b!1614487) (not b!1614685) (not bm!104815) (not b!1614639) (not d!485785) (not b!1614232) (not b!1614539) (not b!1614697) (not b!1614627) (not b!1614667) (not b!1614535) (not b!1614225) (not b!1614364) (not d!485793) (not d!485745) (not d!485909) (not b!1614396) (not b!1614534) (not d!485899))
(check-sat b_and!114497 b_and!114493 (not b_next!44173) (not b_next!44171) (not b_next!44157) (not b_next!44153) (not b_next!44155) b_and!114489 (not b_next!44169) (not b_next!44151) b_and!114495 b_and!114499 b_and!114453 (not b_next!44167) b_and!114457 b_and!114491)
