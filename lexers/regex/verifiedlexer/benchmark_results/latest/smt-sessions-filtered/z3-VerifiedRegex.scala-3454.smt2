; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!199064 () Bool)

(assert start!199064)

(declare-fun b!2024708 () Bool)

(declare-fun b_free!56449 () Bool)

(declare-fun b_next!57153 () Bool)

(assert (=> b!2024708 (= b_free!56449 (not b_next!57153))))

(declare-fun tp!602534 () Bool)

(declare-fun b_and!160977 () Bool)

(assert (=> b!2024708 (= tp!602534 b_and!160977)))

(declare-fun b_free!56451 () Bool)

(declare-fun b_next!57155 () Bool)

(assert (=> b!2024708 (= b_free!56451 (not b_next!57155))))

(declare-fun tp!602529 () Bool)

(declare-fun b_and!160979 () Bool)

(assert (=> b!2024708 (= tp!602529 b_and!160979)))

(declare-fun b!2024687 () Bool)

(declare-fun b_free!56453 () Bool)

(declare-fun b_next!57157 () Bool)

(assert (=> b!2024687 (= b_free!56453 (not b_next!57157))))

(declare-fun tp!602531 () Bool)

(declare-fun b_and!160981 () Bool)

(assert (=> b!2024687 (= tp!602531 b_and!160981)))

(declare-fun b_free!56455 () Bool)

(declare-fun b_next!57159 () Bool)

(assert (=> b!2024687 (= b_free!56455 (not b_next!57159))))

(declare-fun tp!602526 () Bool)

(declare-fun b_and!160983 () Bool)

(assert (=> b!2024687 (= tp!602526 b_and!160983)))

(declare-fun b!2024692 () Bool)

(declare-fun b_free!56457 () Bool)

(declare-fun b_next!57161 () Bool)

(assert (=> b!2024692 (= b_free!56457 (not b_next!57161))))

(declare-fun tp!602523 () Bool)

(declare-fun b_and!160985 () Bool)

(assert (=> b!2024692 (= tp!602523 b_and!160985)))

(declare-fun b_free!56459 () Bool)

(declare-fun b_next!57163 () Bool)

(assert (=> b!2024692 (= b_free!56459 (not b_next!57163))))

(declare-fun tp!602524 () Bool)

(declare-fun b_and!160987 () Bool)

(assert (=> b!2024692 (= tp!602524 b_and!160987)))

(declare-fun b!2024685 () Bool)

(declare-fun res!887621 () Bool)

(declare-fun e!1278946 () Bool)

(assert (=> b!2024685 (=> (not res!887621) (not e!1278946))))

(declare-datatypes ((List!22254 0))(
  ( (Nil!22172) (Cons!22172 (h!27573 (_ BitVec 16)) (t!189753 List!22254)) )
))
(declare-datatypes ((TokenValue!4120 0))(
  ( (FloatLiteralValue!8240 (text!29285 List!22254)) (TokenValueExt!4119 (__x!13738 Int)) (Broken!20600 (value!125109 List!22254)) (Object!4201) (End!4120) (Def!4120) (Underscore!4120) (Match!4120) (Else!4120) (Error!4120) (Case!4120) (If!4120) (Extends!4120) (Abstract!4120) (Class!4120) (Val!4120) (DelimiterValue!8240 (del!4180 List!22254)) (KeywordValue!4126 (value!125110 List!22254)) (CommentValue!8240 (value!125111 List!22254)) (WhitespaceValue!8240 (value!125112 List!22254)) (IndentationValue!4120 (value!125113 List!22254)) (String!25717) (Int32!4120) (Broken!20601 (value!125114 List!22254)) (Boolean!4121) (Unit!36817) (OperatorValue!4123 (op!4180 List!22254)) (IdentifierValue!8240 (value!125115 List!22254)) (IdentifierValue!8241 (value!125116 List!22254)) (WhitespaceValue!8241 (value!125117 List!22254)) (True!8240) (False!8240) (Broken!20602 (value!125118 List!22254)) (Broken!20603 (value!125119 List!22254)) (True!8241) (RightBrace!4120) (RightBracket!4120) (Colon!4120) (Null!4120) (Comma!4120) (LeftBracket!4120) (False!8241) (LeftBrace!4120) (ImaginaryLiteralValue!4120 (text!29286 List!22254)) (StringLiteralValue!12360 (value!125120 List!22254)) (EOFValue!4120 (value!125121 List!22254)) (IdentValue!4120 (value!125122 List!22254)) (DelimiterValue!8241 (value!125123 List!22254)) (DedentValue!4120 (value!125124 List!22254)) (NewLineValue!4120 (value!125125 List!22254)) (IntegerValue!12360 (value!125126 (_ BitVec 32)) (text!29287 List!22254)) (IntegerValue!12361 (value!125127 Int) (text!29288 List!22254)) (Times!4120) (Or!4120) (Equal!4120) (Minus!4120) (Broken!20604 (value!125128 List!22254)) (And!4120) (Div!4120) (LessEqual!4120) (Mod!4120) (Concat!9529) (Not!4120) (Plus!4120) (SpaceValue!4120 (value!125129 List!22254)) (IntegerValue!12362 (value!125130 Int) (text!29289 List!22254)) (StringLiteralValue!12361 (text!29290 List!22254)) (FloatLiteralValue!8241 (text!29291 List!22254)) (BytesLiteralValue!4120 (value!125131 List!22254)) (CommentValue!8241 (value!125132 List!22254)) (StringLiteralValue!12362 (value!125133 List!22254)) (ErrorTokenValue!4120 (msg!4181 List!22254)) )
))
(declare-datatypes ((C!10964 0))(
  ( (C!10965 (val!6434 Int)) )
))
(declare-datatypes ((List!22255 0))(
  ( (Nil!22173) (Cons!22173 (h!27574 C!10964) (t!189754 List!22255)) )
))
(declare-datatypes ((Regex!5409 0))(
  ( (ElementMatch!5409 (c!327632 C!10964)) (Concat!9530 (regOne!11330 Regex!5409) (regTwo!11330 Regex!5409)) (EmptyExpr!5409) (Star!5409 (reg!5738 Regex!5409)) (EmptyLang!5409) (Union!5409 (regOne!11331 Regex!5409) (regTwo!11331 Regex!5409)) )
))
(declare-datatypes ((String!25718 0))(
  ( (String!25719 (value!125134 String)) )
))
(declare-datatypes ((IArray!14833 0))(
  ( (IArray!14834 (innerList!7474 List!22255)) )
))
(declare-datatypes ((Conc!7414 0))(
  ( (Node!7414 (left!17640 Conc!7414) (right!17970 Conc!7414) (csize!15058 Int) (cheight!7625 Int)) (Leaf!10869 (xs!10316 IArray!14833) (csize!15059 Int)) (Empty!7414) )
))
(declare-datatypes ((BalanceConc!14644 0))(
  ( (BalanceConc!14645 (c!327633 Conc!7414)) )
))
(declare-datatypes ((TokenValueInjection!7824 0))(
  ( (TokenValueInjection!7825 (toValue!5657 Int) (toChars!5516 Int)) )
))
(declare-datatypes ((Rule!7768 0))(
  ( (Rule!7769 (regex!3984 Regex!5409) (tag!4464 String!25718) (isSeparator!3984 Bool) (transformation!3984 TokenValueInjection!7824)) )
))
(declare-datatypes ((Token!7520 0))(
  ( (Token!7521 (value!125135 TokenValue!4120) (rule!6213 Rule!7768) (size!17322 Int) (originalCharacters!4791 List!22255)) )
))
(declare-datatypes ((List!22256 0))(
  ( (Nil!22174) (Cons!22174 (h!27575 Token!7520) (t!189755 List!22256)) )
))
(declare-fun tokens!598 () List!22256)

(get-info :version)

(assert (=> b!2024685 (= res!887621 ((_ is Cons!22174) tokens!598))))

(declare-fun b!2024686 () Bool)

(declare-fun res!887620 () Bool)

(declare-fun e!1278941 () Bool)

(assert (=> b!2024686 (=> res!887620 e!1278941)))

(declare-datatypes ((List!22257 0))(
  ( (Nil!22175) (Cons!22175 (h!27576 Rule!7768) (t!189756 List!22257)) )
))
(declare-fun rules!3198 () List!22257)

(declare-fun contains!4083 (List!22257 Rule!7768) Bool)

(assert (=> b!2024686 (= res!887620 (not (contains!4083 rules!3198 (rule!6213 (h!27575 tokens!598)))))))

(declare-fun e!1278944 () Bool)

(assert (=> b!2024687 (= e!1278944 (and tp!602531 tp!602526))))

(declare-fun tp!602527 () Bool)

(declare-fun b!2024688 () Bool)

(declare-fun e!1278947 () Bool)

(declare-fun e!1278930 () Bool)

(declare-fun inv!29348 (String!25718) Bool)

(declare-fun inv!29351 (TokenValueInjection!7824) Bool)

(assert (=> b!2024688 (= e!1278930 (and tp!602527 (inv!29348 (tag!4464 (h!27576 rules!3198))) (inv!29351 (transformation!3984 (h!27576 rules!3198))) e!1278947))))

(declare-fun b!2024689 () Bool)

(declare-fun res!887637 () Bool)

(assert (=> b!2024689 (=> (not res!887637) (not e!1278946))))

(declare-fun lambda!76387 () Int)

(declare-fun forall!4716 (List!22256 Int) Bool)

(assert (=> b!2024689 (= res!887637 (forall!4716 tokens!598 lambda!76387))))

(declare-fun b!2024690 () Bool)

(declare-fun e!1278932 () Bool)

(assert (=> b!2024690 (= e!1278932 e!1278941)))

(declare-fun res!887617 () Bool)

(assert (=> b!2024690 (=> res!887617 e!1278941)))

(declare-fun lt!760242 () List!22255)

(declare-fun lt!760236 () List!22255)

(declare-fun lt!760226 () List!22255)

(assert (=> b!2024690 (= res!887617 (or (not (= lt!760236 lt!760242)) (not (= lt!760242 lt!760226)) (not (= lt!760236 lt!760226))))))

(declare-datatypes ((LexerInterface!3597 0))(
  ( (LexerInterfaceExt!3594 (__x!13739 Int)) (Lexer!3595) )
))
(declare-fun thiss!23328 () LexerInterface!3597)

(declare-fun printList!1116 (LexerInterface!3597 List!22256) List!22255)

(assert (=> b!2024690 (= lt!760242 (printList!1116 thiss!23328 (Cons!22174 (h!27575 tokens!598) Nil!22174)))))

(declare-fun lt!760246 () BalanceConc!14644)

(declare-fun list!9047 (BalanceConc!14644) List!22255)

(assert (=> b!2024690 (= lt!760236 (list!9047 lt!760246))))

(declare-datatypes ((IArray!14835 0))(
  ( (IArray!14836 (innerList!7475 List!22256)) )
))
(declare-datatypes ((Conc!7415 0))(
  ( (Node!7415 (left!17641 Conc!7415) (right!17971 Conc!7415) (csize!15060 Int) (cheight!7626 Int)) (Leaf!10870 (xs!10317 IArray!14835) (csize!15061 Int)) (Empty!7415) )
))
(declare-datatypes ((BalanceConc!14646 0))(
  ( (BalanceConc!14647 (c!327634 Conc!7415)) )
))
(declare-fun lt!760235 () BalanceConc!14646)

(declare-fun printTailRec!1065 (LexerInterface!3597 BalanceConc!14646 Int BalanceConc!14644) BalanceConc!14644)

(assert (=> b!2024690 (= lt!760246 (printTailRec!1065 thiss!23328 lt!760235 0 (BalanceConc!14645 Empty!7414)))))

(declare-fun print!1559 (LexerInterface!3597 BalanceConc!14646) BalanceConc!14644)

(assert (=> b!2024690 (= lt!760246 (print!1559 thiss!23328 lt!760235))))

(declare-fun singletonSeq!1960 (Token!7520) BalanceConc!14646)

(assert (=> b!2024690 (= lt!760235 (singletonSeq!1960 (h!27575 tokens!598)))))

(declare-fun lt!760250 () C!10964)

(declare-fun contains!4084 (List!22255 C!10964) Bool)

(declare-fun usedCharacters!422 (Regex!5409) List!22255)

(assert (=> b!2024690 (not (contains!4084 (usedCharacters!422 (regex!3984 (rule!6213 (h!27575 tokens!598)))) lt!760250))))

(declare-fun separatorToken!354 () Token!7520)

(declare-datatypes ((Unit!36818 0))(
  ( (Unit!36819) )
))
(declare-fun lt!760232 () Unit!36818)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!94 (LexerInterface!3597 List!22257 List!22257 Rule!7768 Rule!7768 C!10964) Unit!36818)

(assert (=> b!2024690 (= lt!760232 (lemmaNonSepRuleNotContainsCharContainedInASepRule!94 thiss!23328 rules!3198 rules!3198 (rule!6213 (h!27575 tokens!598)) (rule!6213 separatorToken!354) lt!760250))))

(declare-fun lt!760244 () Unit!36818)

(declare-fun e!1278937 () Unit!36818)

(assert (=> b!2024690 (= lt!760244 e!1278937)))

(declare-fun c!327631 () Bool)

(assert (=> b!2024690 (= c!327631 (not (contains!4084 (usedCharacters!422 (regex!3984 (rule!6213 separatorToken!354))) lt!760250)))))

(declare-fun lt!760238 () List!22255)

(declare-fun head!4570 (List!22255) C!10964)

(assert (=> b!2024690 (= lt!760250 (head!4570 lt!760238))))

(declare-fun lt!760234 () List!22255)

(declare-fun ++!5991 (List!22255 List!22255) List!22255)

(assert (=> b!2024690 (= (++!5991 (++!5991 lt!760226 lt!760238) lt!760234) (++!5991 lt!760226 (++!5991 lt!760238 lt!760234)))))

(declare-fun lt!760233 () Unit!36818)

(declare-fun lemmaConcatAssociativity!1249 (List!22255 List!22255 List!22255) Unit!36818)

(assert (=> b!2024690 (= lt!760233 (lemmaConcatAssociativity!1249 lt!760226 lt!760238 lt!760234))))

(declare-fun b!2024691 () Bool)

(declare-fun Unit!36820 () Unit!36818)

(assert (=> b!2024691 (= e!1278937 Unit!36820)))

(declare-fun lt!760248 () Unit!36818)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!310 (Regex!5409 List!22255 C!10964) Unit!36818)

(assert (=> b!2024691 (= lt!760248 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!310 (regex!3984 (rule!6213 separatorToken!354)) lt!760238 lt!760250))))

(declare-fun res!887624 () Bool)

(declare-fun matchR!2675 (Regex!5409 List!22255) Bool)

(assert (=> b!2024691 (= res!887624 (not (matchR!2675 (regex!3984 (rule!6213 separatorToken!354)) lt!760238)))))

(declare-fun e!1278943 () Bool)

(assert (=> b!2024691 (=> (not res!887624) (not e!1278943))))

(assert (=> b!2024691 e!1278943))

(declare-fun e!1278945 () Bool)

(assert (=> b!2024692 (= e!1278945 (and tp!602523 tp!602524))))

(declare-fun b!2024694 () Bool)

(declare-fun res!887622 () Bool)

(assert (=> b!2024694 (=> res!887622 e!1278941)))

(assert (=> b!2024694 (= res!887622 (not (contains!4083 rules!3198 (rule!6213 separatorToken!354))))))

(declare-fun e!1278936 () Bool)

(declare-fun b!2024695 () Bool)

(declare-fun tp!602532 () Bool)

(assert (=> b!2024695 (= e!1278936 (and tp!602532 (inv!29348 (tag!4464 (rule!6213 (h!27575 tokens!598)))) (inv!29351 (transformation!3984 (rule!6213 (h!27575 tokens!598)))) e!1278944))))

(declare-fun b!2024696 () Bool)

(declare-fun Unit!36821 () Unit!36818)

(assert (=> b!2024696 (= e!1278937 Unit!36821)))

(declare-fun b!2024697 () Bool)

(declare-fun e!1278931 () Bool)

(declare-fun e!1278934 () Bool)

(assert (=> b!2024697 (= e!1278931 e!1278934)))

(declare-fun res!887632 () Bool)

(assert (=> b!2024697 (=> (not res!887632) (not e!1278934))))

(declare-fun lt!760229 () Rule!7768)

(assert (=> b!2024697 (= res!887632 (matchR!2675 (regex!3984 lt!760229) lt!760238))))

(declare-datatypes ((Option!4651 0))(
  ( (None!4650) (Some!4650 (v!26951 Rule!7768)) )
))
(declare-fun lt!760237 () Option!4651)

(declare-fun get!7034 (Option!4651) Rule!7768)

(assert (=> b!2024697 (= lt!760229 (get!7034 lt!760237))))

(declare-fun b!2024698 () Bool)

(assert (=> b!2024698 (= e!1278946 (not e!1278932))))

(declare-fun res!887616 () Bool)

(assert (=> b!2024698 (=> res!887616 e!1278932)))

(declare-fun lt!760245 () Bool)

(declare-datatypes ((tuple2!20848 0))(
  ( (tuple2!20849 (_1!11893 Token!7520) (_2!11893 List!22255)) )
))
(declare-datatypes ((Option!4652 0))(
  ( (None!4651) (Some!4651 (v!26952 tuple2!20848)) )
))
(declare-fun lt!760239 () Option!4652)

(assert (=> b!2024698 (= res!887616 (or (and (not lt!760245) (= (_1!11893 (v!26952 lt!760239)) (h!27575 tokens!598))) lt!760245 (= (_1!11893 (v!26952 lt!760239)) (h!27575 tokens!598))))))

(assert (=> b!2024698 (= lt!760245 (not ((_ is Some!4651) lt!760239)))))

(declare-fun maxPrefix!2033 (LexerInterface!3597 List!22257 List!22255) Option!4652)

(assert (=> b!2024698 (= lt!760239 (maxPrefix!2033 thiss!23328 rules!3198 (++!5991 lt!760226 lt!760234)))))

(declare-fun printWithSeparatorTokenWhenNeededList!626 (LexerInterface!3597 List!22257 List!22256 Token!7520) List!22255)

(assert (=> b!2024698 (= lt!760234 (printWithSeparatorTokenWhenNeededList!626 thiss!23328 rules!3198 (t!189755 tokens!598) separatorToken!354))))

(declare-fun e!1278935 () Bool)

(assert (=> b!2024698 e!1278935))

(declare-fun res!887625 () Bool)

(assert (=> b!2024698 (=> (not res!887625) (not e!1278935))))

(declare-fun lt!760243 () Option!4651)

(declare-fun isDefined!3939 (Option!4651) Bool)

(assert (=> b!2024698 (= res!887625 (isDefined!3939 lt!760243))))

(declare-fun getRuleFromTag!799 (LexerInterface!3597 List!22257 String!25718) Option!4651)

(assert (=> b!2024698 (= lt!760243 (getRuleFromTag!799 thiss!23328 rules!3198 (tag!4464 (rule!6213 (h!27575 tokens!598)))))))

(declare-fun lt!760227 () Unit!36818)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!799 (LexerInterface!3597 List!22257 List!22255 Token!7520) Unit!36818)

(assert (=> b!2024698 (= lt!760227 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!799 thiss!23328 rules!3198 lt!760226 (h!27575 tokens!598)))))

(declare-fun lt!760225 () tuple2!20848)

(assert (=> b!2024698 (= (_1!11893 lt!760225) (h!27575 tokens!598))))

(declare-fun lt!760230 () Option!4652)

(declare-fun get!7035 (Option!4652) tuple2!20848)

(assert (=> b!2024698 (= lt!760225 (get!7035 lt!760230))))

(declare-fun isDefined!3940 (Option!4652) Bool)

(assert (=> b!2024698 (isDefined!3940 lt!760230)))

(assert (=> b!2024698 (= lt!760230 (maxPrefix!2033 thiss!23328 rules!3198 lt!760226))))

(declare-fun lt!760228 () BalanceConc!14644)

(assert (=> b!2024698 (= lt!760226 (list!9047 lt!760228))))

(assert (=> b!2024698 e!1278931))

(declare-fun res!887635 () Bool)

(assert (=> b!2024698 (=> (not res!887635) (not e!1278931))))

(assert (=> b!2024698 (= res!887635 (isDefined!3939 lt!760237))))

(assert (=> b!2024698 (= lt!760237 (getRuleFromTag!799 thiss!23328 rules!3198 (tag!4464 (rule!6213 separatorToken!354))))))

(declare-fun lt!760249 () Unit!36818)

(assert (=> b!2024698 (= lt!760249 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!799 thiss!23328 rules!3198 lt!760238 separatorToken!354))))

(declare-fun charsOf!2524 (Token!7520) BalanceConc!14644)

(assert (=> b!2024698 (= lt!760238 (list!9047 (charsOf!2524 separatorToken!354)))))

(declare-fun lt!760231 () Unit!36818)

(declare-fun lemmaEqSameImage!670 (TokenValueInjection!7824 BalanceConc!14644 BalanceConc!14644) Unit!36818)

(declare-fun seqFromList!2838 (List!22255) BalanceConc!14644)

(assert (=> b!2024698 (= lt!760231 (lemmaEqSameImage!670 (transformation!3984 (rule!6213 (h!27575 tokens!598))) lt!760228 (seqFromList!2838 (originalCharacters!4791 (h!27575 tokens!598)))))))

(declare-fun lt!760241 () Unit!36818)

(declare-fun lemmaSemiInverse!941 (TokenValueInjection!7824 BalanceConc!14644) Unit!36818)

(assert (=> b!2024698 (= lt!760241 (lemmaSemiInverse!941 (transformation!3984 (rule!6213 (h!27575 tokens!598))) lt!760228))))

(assert (=> b!2024698 (= lt!760228 (charsOf!2524 (h!27575 tokens!598)))))

(declare-fun e!1278926 () Bool)

(declare-fun b!2024699 () Bool)

(declare-fun tp!602525 () Bool)

(declare-fun inv!21 (TokenValue!4120) Bool)

(assert (=> b!2024699 (= e!1278926 (and (inv!21 (value!125135 (h!27575 tokens!598))) e!1278936 tp!602525))))

(declare-fun tp!602522 () Bool)

(declare-fun e!1278925 () Bool)

(declare-fun e!1278938 () Bool)

(declare-fun b!2024700 () Bool)

(assert (=> b!2024700 (= e!1278925 (and (inv!21 (value!125135 separatorToken!354)) e!1278938 tp!602522))))

(declare-fun b!2024701 () Bool)

(declare-fun e!1278927 () Bool)

(declare-fun tp!602530 () Bool)

(assert (=> b!2024701 (= e!1278927 (and e!1278930 tp!602530))))

(declare-fun b!2024702 () Bool)

(declare-fun res!887628 () Bool)

(assert (=> b!2024702 (=> (not res!887628) (not e!1278946))))

(declare-fun rulesInvariant!3204 (LexerInterface!3597 List!22257) Bool)

(assert (=> b!2024702 (= res!887628 (rulesInvariant!3204 thiss!23328 rules!3198))))

(declare-fun e!1278948 () Bool)

(declare-fun b!2024703 () Bool)

(declare-fun tp!602528 () Bool)

(declare-fun inv!29352 (Token!7520) Bool)

(assert (=> b!2024703 (= e!1278948 (and (inv!29352 (h!27575 tokens!598)) e!1278926 tp!602528))))

(declare-fun b!2024704 () Bool)

(declare-fun res!887623 () Bool)

(assert (=> b!2024704 (=> res!887623 e!1278941)))

(declare-fun rulesProduceIndividualToken!1769 (LexerInterface!3597 List!22257 Token!7520) Bool)

(assert (=> b!2024704 (= res!887623 (not (rulesProduceIndividualToken!1769 thiss!23328 rules!3198 (h!27575 tokens!598))))))

(declare-fun b!2024705 () Bool)

(declare-fun res!887633 () Bool)

(assert (=> b!2024705 (=> (not res!887633) (not e!1278946))))

(declare-fun rulesProduceEachTokenIndividuallyList!1328 (LexerInterface!3597 List!22257 List!22256) Bool)

(assert (=> b!2024705 (= res!887633 (rulesProduceEachTokenIndividuallyList!1328 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2024706 () Bool)

(declare-fun e!1278929 () Bool)

(declare-fun lt!760247 () Rule!7768)

(assert (=> b!2024706 (= e!1278929 (= (rule!6213 (h!27575 tokens!598)) lt!760247))))

(declare-fun b!2024707 () Bool)

(declare-fun res!887627 () Bool)

(assert (=> b!2024707 (=> (not res!887627) (not e!1278946))))

(declare-fun isEmpty!13802 (List!22257) Bool)

(assert (=> b!2024707 (= res!887627 (not (isEmpty!13802 rules!3198)))))

(assert (=> b!2024708 (= e!1278947 (and tp!602534 tp!602529))))

(declare-fun b!2024709 () Bool)

(assert (=> b!2024709 (= e!1278941 (matchR!2675 (regex!3984 (rule!6213 (h!27575 tokens!598))) lt!760226))))

(declare-fun ruleValid!1215 (LexerInterface!3597 Rule!7768) Bool)

(assert (=> b!2024709 (ruleValid!1215 thiss!23328 (rule!6213 (h!27575 tokens!598)))))

(declare-fun lt!760240 () Unit!36818)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!686 (LexerInterface!3597 Rule!7768 List!22257) Unit!36818)

(assert (=> b!2024709 (= lt!760240 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!686 thiss!23328 (rule!6213 (h!27575 tokens!598)) rules!3198))))

(declare-fun tp!602533 () Bool)

(declare-fun b!2024710 () Bool)

(assert (=> b!2024710 (= e!1278938 (and tp!602533 (inv!29348 (tag!4464 (rule!6213 separatorToken!354))) (inv!29351 (transformation!3984 (rule!6213 separatorToken!354))) e!1278945))))

(declare-fun b!2024711 () Bool)

(declare-fun res!887618 () Bool)

(assert (=> b!2024711 (=> (not res!887618) (not e!1278946))))

(declare-fun sepAndNonSepRulesDisjointChars!1082 (List!22257 List!22257) Bool)

(assert (=> b!2024711 (= res!887618 (sepAndNonSepRulesDisjointChars!1082 rules!3198 rules!3198))))

(declare-fun b!2024693 () Bool)

(assert (=> b!2024693 (= e!1278934 (= (rule!6213 separatorToken!354) lt!760229))))

(declare-fun res!887619 () Bool)

(assert (=> start!199064 (=> (not res!887619) (not e!1278946))))

(assert (=> start!199064 (= res!887619 ((_ is Lexer!3595) thiss!23328))))

(assert (=> start!199064 e!1278946))

(assert (=> start!199064 true))

(assert (=> start!199064 e!1278927))

(assert (=> start!199064 e!1278948))

(assert (=> start!199064 (and (inv!29352 separatorToken!354) e!1278925)))

(declare-fun b!2024712 () Bool)

(declare-fun res!887631 () Bool)

(assert (=> b!2024712 (=> (not res!887631) (not e!1278946))))

(assert (=> b!2024712 (= res!887631 (isSeparator!3984 (rule!6213 separatorToken!354)))))

(declare-fun b!2024713 () Bool)

(assert (=> b!2024713 (= e!1278935 e!1278929)))

(declare-fun res!887636 () Bool)

(assert (=> b!2024713 (=> (not res!887636) (not e!1278929))))

(assert (=> b!2024713 (= res!887636 (matchR!2675 (regex!3984 lt!760247) lt!760226))))

(assert (=> b!2024713 (= lt!760247 (get!7034 lt!760243))))

(declare-fun b!2024714 () Bool)

(declare-fun res!887630 () Bool)

(assert (=> b!2024714 (=> (not res!887630) (not e!1278946))))

(assert (=> b!2024714 (= res!887630 (rulesProduceIndividualToken!1769 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2024715 () Bool)

(assert (=> b!2024715 (= e!1278943 false)))

(declare-fun b!2024716 () Bool)

(declare-fun res!887634 () Bool)

(assert (=> b!2024716 (=> res!887634 e!1278941)))

(declare-fun isEmpty!13803 (List!22255) Bool)

(assert (=> b!2024716 (= res!887634 (not (isEmpty!13803 (_2!11893 lt!760225))))))

(declare-fun b!2024717 () Bool)

(declare-fun res!887626 () Bool)

(assert (=> b!2024717 (=> res!887626 e!1278941)))

(assert (=> b!2024717 (= res!887626 (isSeparator!3984 (rule!6213 (h!27575 tokens!598))))))

(declare-fun b!2024718 () Bool)

(declare-fun res!887629 () Bool)

(assert (=> b!2024718 (=> res!887629 e!1278941)))

(declare-fun isEmpty!13804 (BalanceConc!14646) Bool)

(declare-datatypes ((tuple2!20850 0))(
  ( (tuple2!20851 (_1!11894 BalanceConc!14646) (_2!11894 BalanceConc!14644)) )
))
(declare-fun lex!1613 (LexerInterface!3597 List!22257 BalanceConc!14644) tuple2!20850)

(assert (=> b!2024718 (= res!887629 (isEmpty!13804 (_1!11894 (lex!1613 thiss!23328 rules!3198 (seqFromList!2838 lt!760226)))))))

(assert (= (and start!199064 res!887619) b!2024707))

(assert (= (and b!2024707 res!887627) b!2024702))

(assert (= (and b!2024702 res!887628) b!2024705))

(assert (= (and b!2024705 res!887633) b!2024714))

(assert (= (and b!2024714 res!887630) b!2024712))

(assert (= (and b!2024712 res!887631) b!2024689))

(assert (= (and b!2024689 res!887637) b!2024711))

(assert (= (and b!2024711 res!887618) b!2024685))

(assert (= (and b!2024685 res!887621) b!2024698))

(assert (= (and b!2024698 res!887635) b!2024697))

(assert (= (and b!2024697 res!887632) b!2024693))

(assert (= (and b!2024698 res!887625) b!2024713))

(assert (= (and b!2024713 res!887636) b!2024706))

(assert (= (and b!2024698 (not res!887616)) b!2024690))

(assert (= (and b!2024690 c!327631) b!2024691))

(assert (= (and b!2024690 (not c!327631)) b!2024696))

(assert (= (and b!2024691 res!887624) b!2024715))

(assert (= (and b!2024690 (not res!887617)) b!2024704))

(assert (= (and b!2024704 (not res!887623)) b!2024718))

(assert (= (and b!2024718 (not res!887629)) b!2024686))

(assert (= (and b!2024686 (not res!887620)) b!2024694))

(assert (= (and b!2024694 (not res!887622)) b!2024717))

(assert (= (and b!2024717 (not res!887626)) b!2024716))

(assert (= (and b!2024716 (not res!887634)) b!2024709))

(assert (= b!2024688 b!2024708))

(assert (= b!2024701 b!2024688))

(assert (= (and start!199064 ((_ is Cons!22175) rules!3198)) b!2024701))

(assert (= b!2024695 b!2024687))

(assert (= b!2024699 b!2024695))

(assert (= b!2024703 b!2024699))

(assert (= (and start!199064 ((_ is Cons!22174) tokens!598)) b!2024703))

(assert (= b!2024710 b!2024692))

(assert (= b!2024700 b!2024710))

(assert (= start!199064 b!2024700))

(declare-fun m!2463137 () Bool)

(assert (=> b!2024699 m!2463137))

(declare-fun m!2463139 () Bool)

(assert (=> b!2024713 m!2463139))

(declare-fun m!2463141 () Bool)

(assert (=> b!2024713 m!2463141))

(declare-fun m!2463143 () Bool)

(assert (=> b!2024714 m!2463143))

(declare-fun m!2463145 () Bool)

(assert (=> b!2024705 m!2463145))

(declare-fun m!2463147 () Bool)

(assert (=> b!2024700 m!2463147))

(declare-fun m!2463149 () Bool)

(assert (=> b!2024698 m!2463149))

(declare-fun m!2463151 () Bool)

(assert (=> b!2024698 m!2463151))

(declare-fun m!2463153 () Bool)

(assert (=> b!2024698 m!2463153))

(assert (=> b!2024698 m!2463151))

(declare-fun m!2463155 () Bool)

(assert (=> b!2024698 m!2463155))

(declare-fun m!2463157 () Bool)

(assert (=> b!2024698 m!2463157))

(declare-fun m!2463159 () Bool)

(assert (=> b!2024698 m!2463159))

(declare-fun m!2463161 () Bool)

(assert (=> b!2024698 m!2463161))

(declare-fun m!2463163 () Bool)

(assert (=> b!2024698 m!2463163))

(declare-fun m!2463165 () Bool)

(assert (=> b!2024698 m!2463165))

(declare-fun m!2463167 () Bool)

(assert (=> b!2024698 m!2463167))

(declare-fun m!2463169 () Bool)

(assert (=> b!2024698 m!2463169))

(declare-fun m!2463171 () Bool)

(assert (=> b!2024698 m!2463171))

(declare-fun m!2463173 () Bool)

(assert (=> b!2024698 m!2463173))

(declare-fun m!2463175 () Bool)

(assert (=> b!2024698 m!2463175))

(declare-fun m!2463177 () Bool)

(assert (=> b!2024698 m!2463177))

(assert (=> b!2024698 m!2463171))

(declare-fun m!2463179 () Bool)

(assert (=> b!2024698 m!2463179))

(declare-fun m!2463181 () Bool)

(assert (=> b!2024698 m!2463181))

(assert (=> b!2024698 m!2463157))

(declare-fun m!2463183 () Bool)

(assert (=> b!2024698 m!2463183))

(declare-fun m!2463185 () Bool)

(assert (=> b!2024698 m!2463185))

(declare-fun m!2463187 () Bool)

(assert (=> b!2024718 m!2463187))

(assert (=> b!2024718 m!2463187))

(declare-fun m!2463189 () Bool)

(assert (=> b!2024718 m!2463189))

(declare-fun m!2463191 () Bool)

(assert (=> b!2024718 m!2463191))

(declare-fun m!2463193 () Bool)

(assert (=> b!2024702 m!2463193))

(declare-fun m!2463195 () Bool)

(assert (=> b!2024691 m!2463195))

(declare-fun m!2463197 () Bool)

(assert (=> b!2024691 m!2463197))

(declare-fun m!2463199 () Bool)

(assert (=> b!2024711 m!2463199))

(declare-fun m!2463201 () Bool)

(assert (=> b!2024689 m!2463201))

(declare-fun m!2463203 () Bool)

(assert (=> b!2024690 m!2463203))

(declare-fun m!2463205 () Bool)

(assert (=> b!2024690 m!2463205))

(declare-fun m!2463207 () Bool)

(assert (=> b!2024690 m!2463207))

(declare-fun m!2463209 () Bool)

(assert (=> b!2024690 m!2463209))

(declare-fun m!2463211 () Bool)

(assert (=> b!2024690 m!2463211))

(declare-fun m!2463213 () Bool)

(assert (=> b!2024690 m!2463213))

(declare-fun m!2463215 () Bool)

(assert (=> b!2024690 m!2463215))

(assert (=> b!2024690 m!2463211))

(declare-fun m!2463217 () Bool)

(assert (=> b!2024690 m!2463217))

(declare-fun m!2463219 () Bool)

(assert (=> b!2024690 m!2463219))

(assert (=> b!2024690 m!2463207))

(declare-fun m!2463221 () Bool)

(assert (=> b!2024690 m!2463221))

(assert (=> b!2024690 m!2463205))

(declare-fun m!2463223 () Bool)

(assert (=> b!2024690 m!2463223))

(declare-fun m!2463225 () Bool)

(assert (=> b!2024690 m!2463225))

(declare-fun m!2463227 () Bool)

(assert (=> b!2024690 m!2463227))

(declare-fun m!2463229 () Bool)

(assert (=> b!2024690 m!2463229))

(assert (=> b!2024690 m!2463213))

(declare-fun m!2463231 () Bool)

(assert (=> b!2024690 m!2463231))

(declare-fun m!2463233 () Bool)

(assert (=> b!2024690 m!2463233))

(declare-fun m!2463235 () Bool)

(assert (=> b!2024695 m!2463235))

(declare-fun m!2463237 () Bool)

(assert (=> b!2024695 m!2463237))

(declare-fun m!2463239 () Bool)

(assert (=> b!2024697 m!2463239))

(declare-fun m!2463241 () Bool)

(assert (=> b!2024697 m!2463241))

(declare-fun m!2463243 () Bool)

(assert (=> start!199064 m!2463243))

(declare-fun m!2463245 () Bool)

(assert (=> b!2024686 m!2463245))

(declare-fun m!2463247 () Bool)

(assert (=> b!2024694 m!2463247))

(declare-fun m!2463249 () Bool)

(assert (=> b!2024688 m!2463249))

(declare-fun m!2463251 () Bool)

(assert (=> b!2024688 m!2463251))

(declare-fun m!2463253 () Bool)

(assert (=> b!2024710 m!2463253))

(declare-fun m!2463255 () Bool)

(assert (=> b!2024710 m!2463255))

(declare-fun m!2463257 () Bool)

(assert (=> b!2024716 m!2463257))

(declare-fun m!2463259 () Bool)

(assert (=> b!2024707 m!2463259))

(declare-fun m!2463261 () Bool)

(assert (=> b!2024709 m!2463261))

(declare-fun m!2463263 () Bool)

(assert (=> b!2024709 m!2463263))

(declare-fun m!2463265 () Bool)

(assert (=> b!2024709 m!2463265))

(declare-fun m!2463267 () Bool)

(assert (=> b!2024704 m!2463267))

(declare-fun m!2463269 () Bool)

(assert (=> b!2024703 m!2463269))

(check-sat (not b_next!57155) b_and!160981 (not b!2024694) (not b!2024697) (not b!2024689) (not b!2024704) (not b!2024710) (not b!2024691) (not b!2024707) (not b!2024690) (not b!2024711) (not b_next!57159) (not b!2024702) (not b!2024686) (not b!2024698) (not start!199064) (not b!2024716) b_and!160977 (not b_next!57163) (not b!2024695) (not b!2024701) b_and!160979 (not b!2024709) (not b_next!57161) (not b!2024699) (not b!2024705) (not b_next!57157) b_and!160983 (not b!2024703) b_and!160987 (not b_next!57153) (not b!2024718) (not b!2024688) (not b!2024700) (not b!2024713) (not b!2024714) b_and!160985)
(check-sat (not b_next!57155) b_and!160981 b_and!160977 (not b_next!57163) b_and!160979 (not b_next!57161) b_and!160985 (not b_next!57159) (not b_next!57157) b_and!160983 b_and!160987 (not b_next!57153))
