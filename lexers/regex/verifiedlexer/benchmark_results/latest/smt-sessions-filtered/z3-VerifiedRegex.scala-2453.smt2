; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129788 () Bool)

(assert start!129788)

(declare-fun res!640811 () Bool)

(declare-fun e!903309 () Bool)

(assert (=> start!129788 (=> (not res!640811) (not e!903309))))

(declare-datatypes ((List!14533 0))(
  ( (Nil!14467) (Cons!14467 (h!19868 (_ BitVec 16)) (t!123948 List!14533)) )
))
(declare-datatypes ((TokenValue!2605 0))(
  ( (FloatLiteralValue!5210 (text!18680 List!14533)) (TokenValueExt!2604 (__x!9027 Int)) (Broken!13025 (value!81284 List!14533)) (Object!2670) (End!2605) (Def!2605) (Underscore!2605) (Match!2605) (Else!2605) (Error!2605) (Case!2605) (If!2605) (Extends!2605) (Abstract!2605) (Class!2605) (Val!2605) (DelimiterValue!5210 (del!2665 List!14533)) (KeywordValue!2611 (value!81285 List!14533)) (CommentValue!5210 (value!81286 List!14533)) (WhitespaceValue!5210 (value!81287 List!14533)) (IndentationValue!2605 (value!81288 List!14533)) (String!17260) (Int32!2605) (Broken!13026 (value!81289 List!14533)) (Boolean!2606) (Unit!21239) (OperatorValue!2608 (op!2665 List!14533)) (IdentifierValue!5210 (value!81290 List!14533)) (IdentifierValue!5211 (value!81291 List!14533)) (WhitespaceValue!5211 (value!81292 List!14533)) (True!5210) (False!5210) (Broken!13027 (value!81293 List!14533)) (Broken!13028 (value!81294 List!14533)) (True!5211) (RightBrace!2605) (RightBracket!2605) (Colon!2605) (Null!2605) (Comma!2605) (LeftBracket!2605) (False!5211) (LeftBrace!2605) (ImaginaryLiteralValue!2605 (text!18681 List!14533)) (StringLiteralValue!7815 (value!81295 List!14533)) (EOFValue!2605 (value!81296 List!14533)) (IdentValue!2605 (value!81297 List!14533)) (DelimiterValue!5211 (value!81298 List!14533)) (DedentValue!2605 (value!81299 List!14533)) (NewLineValue!2605 (value!81300 List!14533)) (IntegerValue!7815 (value!81301 (_ BitVec 32)) (text!18682 List!14533)) (IntegerValue!7816 (value!81302 Int) (text!18683 List!14533)) (Times!2605) (Or!2605) (Equal!2605) (Minus!2605) (Broken!13029 (value!81303 List!14533)) (And!2605) (Div!2605) (LessEqual!2605) (Mod!2605) (Concat!6434) (Not!2605) (Plus!2605) (SpaceValue!2605 (value!81304 List!14533)) (IntegerValue!7817 (value!81305 Int) (text!18684 List!14533)) (StringLiteralValue!7816 (text!18685 List!14533)) (FloatLiteralValue!5211 (text!18686 List!14533)) (BytesLiteralValue!2605 (value!81306 List!14533)) (CommentValue!5211 (value!81307 List!14533)) (StringLiteralValue!7817 (value!81308 List!14533)) (ErrorTokenValue!2605 (msg!2666 List!14533)) )
))
(declare-datatypes ((Regex!3829 0))(
  ( (ElementMatch!3829 (c!232522 (_ BitVec 16))) (Concat!6435 (regOne!8170 Regex!3829) (regTwo!8170 Regex!3829)) (EmptyExpr!3829) (Star!3829 (reg!4158 Regex!3829)) (EmptyLang!3829) (Union!3829 (regOne!8171 Regex!3829) (regTwo!8171 Regex!3829)) )
))
(declare-datatypes ((String!17261 0))(
  ( (String!17262 (value!81309 String)) )
))
(declare-datatypes ((IArray!9643 0))(
  ( (IArray!9644 (innerList!4879 List!14533)) )
))
(declare-datatypes ((Conc!4819 0))(
  ( (Node!4819 (left!12362 Conc!4819) (right!12692 Conc!4819) (csize!9868 Int) (cheight!5030 Int)) (Leaf!7273 (xs!7546 IArray!9643) (csize!9869 Int)) (Empty!4819) )
))
(declare-datatypes ((BalanceConc!9578 0))(
  ( (BalanceConc!9579 (c!232523 Conc!4819)) )
))
(declare-datatypes ((TokenValueInjection!4870 0))(
  ( (TokenValueInjection!4871 (toValue!3814 Int) (toChars!3673 Int)) )
))
(declare-datatypes ((Rule!4830 0))(
  ( (Rule!4831 (regex!2515 Regex!3829) (tag!2777 String!17261) (isSeparator!2515 Bool) (transformation!2515 TokenValueInjection!4870)) )
))
(declare-datatypes ((Token!4692 0))(
  ( (Token!4693 (value!81310 TokenValue!2605) (rule!4278 Rule!4830) (size!11935 Int) (originalCharacters!3377 List!14533)) )
))
(declare-datatypes ((List!14534 0))(
  ( (Nil!14468) (Cons!14468 (h!19869 Token!4692) (t!123949 List!14534)) )
))
(declare-datatypes ((IArray!9645 0))(
  ( (IArray!9646 (innerList!4880 List!14534)) )
))
(declare-datatypes ((Conc!4820 0))(
  ( (Node!4820 (left!12363 Conc!4820) (right!12693 Conc!4820) (csize!9870 Int) (cheight!5031 Int)) (Leaf!7274 (xs!7547 IArray!9645) (csize!9871 Int)) (Empty!4820) )
))
(declare-datatypes ((List!14535 0))(
  ( (Nil!14469) (Cons!14469 (h!19870 Rule!4830) (t!123950 List!14535)) )
))
(declare-datatypes ((BalanceConc!9580 0))(
  ( (BalanceConc!9581 (c!232524 Conc!4820)) )
))
(declare-datatypes ((PrintableTokens!812 0))(
  ( (PrintableTokens!813 (rules!11066 List!14535) (tokens!1784 BalanceConc!9580)) )
))
(declare-datatypes ((List!14536 0))(
  ( (Nil!14470) (Cons!14470 (h!19871 PrintableTokens!812) (t!123951 List!14536)) )
))
(declare-datatypes ((IArray!9647 0))(
  ( (IArray!9648 (innerList!4881 List!14536)) )
))
(declare-datatypes ((Conc!4821 0))(
  ( (Node!4821 (left!12364 Conc!4821) (right!12694 Conc!4821) (csize!9872 Int) (cheight!5032 Int)) (Leaf!7275 (xs!7548 IArray!9647) (csize!9873 Int)) (Empty!4821) )
))
(declare-datatypes ((BalanceConc!9582 0))(
  ( (BalanceConc!9583 (c!232525 Conc!4821)) )
))
(declare-fun objs!24 () BalanceConc!9582)

(declare-fun lambda!62509 () Int)

(declare-fun forall!3567 (BalanceConc!9582 Int) Bool)

(assert (=> start!129788 (= res!640811 (forall!3567 objs!24 lambda!62509))))

(assert (=> start!129788 e!903309))

(declare-fun e!903307 () Bool)

(declare-fun inv!18965 (BalanceConc!9582) Bool)

(assert (=> start!129788 (and (inv!18965 objs!24) e!903307)))

(declare-fun acc!229 () PrintableTokens!812)

(declare-fun e!903303 () Bool)

(declare-fun inv!18966 (PrintableTokens!812) Bool)

(assert (=> start!129788 (and (inv!18966 acc!229) e!903303)))

(declare-fun sep!3 () PrintableTokens!812)

(declare-fun e!903304 () Bool)

(assert (=> start!129788 (and (inv!18966 sep!3) e!903304)))

(declare-fun e!903305 () Bool)

(declare-fun tp!401462 () Bool)

(declare-fun b!1414999 () Bool)

(declare-fun inv!18967 (BalanceConc!9580) Bool)

(assert (=> b!1414999 (= e!903303 (and tp!401462 (inv!18967 (tokens!1784 acc!229)) e!903305))))

(declare-fun b!1415000 () Bool)

(declare-fun e!903308 () Bool)

(declare-fun e!903306 () Bool)

(assert (=> b!1415000 (= e!903308 e!903306)))

(declare-fun res!640806 () Bool)

(assert (=> b!1415000 (=> (not res!640806) (not e!903306))))

(declare-datatypes ((Option!2776 0))(
  ( (None!2775) (Some!2775 (v!21979 PrintableTokens!812)) )
))
(declare-fun lt!475242 () Option!2776)

(get-info :version)

(assert (=> b!1415000 (= res!640806 ((_ is Some!2775) lt!475242))))

(declare-fun lt!475243 () Option!2776)

(declare-fun append!434 (PrintableTokens!812 PrintableTokens!812) Option!2776)

(assert (=> b!1415000 (= lt!475242 (append!434 acc!229 (v!21979 lt!475243)))))

(declare-fun b!1415001 () Bool)

(declare-fun e!903302 () Bool)

(declare-fun tp!401461 () Bool)

(declare-fun inv!18968 (Conc!4820) Bool)

(assert (=> b!1415001 (= e!903302 (and (inv!18968 (c!232524 (tokens!1784 sep!3))) tp!401461))))

(declare-fun b!1415002 () Bool)

(declare-fun res!640809 () Bool)

(assert (=> b!1415002 (=> (not res!640809) (not e!903309))))

(declare-fun isEmpty!8868 (BalanceConc!9582) Bool)

(assert (=> b!1415002 (= res!640809 (not (isEmpty!8868 objs!24)))))

(declare-fun b!1415003 () Bool)

(declare-fun res!640808 () Bool)

(assert (=> b!1415003 (=> (not res!640808) (not e!903309))))

(declare-fun usesJsonRules!0 (PrintableTokens!812) Bool)

(assert (=> b!1415003 (= res!640808 (usesJsonRules!0 sep!3))))

(declare-fun b!1415004 () Bool)

(declare-fun tp!401463 () Bool)

(assert (=> b!1415004 (= e!903305 (and (inv!18968 (c!232524 (tokens!1784 acc!229))) tp!401463))))

(declare-fun b!1415005 () Bool)

(declare-fun res!640804 () Bool)

(assert (=> b!1415005 (=> (not res!640804) (not e!903306))))

(declare-fun tail!2084 (BalanceConc!9582) BalanceConc!9582)

(assert (=> b!1415005 (= res!640804 (forall!3567 (tail!2084 objs!24) lambda!62509))))

(declare-fun b!1415006 () Bool)

(declare-fun res!640810 () Bool)

(assert (=> b!1415006 (=> (not res!640810) (not e!903309))))

(declare-fun size!11936 (BalanceConc!9582) Int)

(assert (=> b!1415006 (= res!640810 (not (= (size!11936 objs!24) 1)))))

(declare-fun b!1415007 () Bool)

(assert (=> b!1415007 (= e!903306 false)))

(declare-fun lt!475244 () Bool)

(assert (=> b!1415007 (= lt!475244 (usesJsonRules!0 (v!21979 lt!475242)))))

(declare-fun b!1415008 () Bool)

(declare-fun tp!401460 () Bool)

(declare-fun inv!18969 (Conc!4821) Bool)

(assert (=> b!1415008 (= e!903307 (and (inv!18969 (c!232525 objs!24)) tp!401460))))

(declare-fun b!1415009 () Bool)

(declare-fun tp!401464 () Bool)

(assert (=> b!1415009 (= e!903304 (and tp!401464 (inv!18967 (tokens!1784 sep!3)) e!903302))))

(declare-fun b!1415010 () Bool)

(assert (=> b!1415010 (= e!903309 e!903308)))

(declare-fun res!640807 () Bool)

(assert (=> b!1415010 (=> (not res!640807) (not e!903308))))

(assert (=> b!1415010 (= res!640807 ((_ is Some!2775) lt!475243))))

(declare-fun head!2713 (BalanceConc!9582) PrintableTokens!812)

(assert (=> b!1415010 (= lt!475243 (append!434 (head!2713 objs!24) sep!3))))

(declare-fun b!1415011 () Bool)

(declare-fun res!640805 () Bool)

(assert (=> b!1415011 (=> (not res!640805) (not e!903309))))

(assert (=> b!1415011 (= res!640805 (usesJsonRules!0 acc!229))))

(assert (= (and start!129788 res!640811) b!1415011))

(assert (= (and b!1415011 res!640805) b!1415003))

(assert (= (and b!1415003 res!640808) b!1415002))

(assert (= (and b!1415002 res!640809) b!1415006))

(assert (= (and b!1415006 res!640810) b!1415010))

(assert (= (and b!1415010 res!640807) b!1415000))

(assert (= (and b!1415000 res!640806) b!1415005))

(assert (= (and b!1415005 res!640804) b!1415007))

(assert (= start!129788 b!1415008))

(assert (= b!1414999 b!1415004))

(assert (= start!129788 b!1414999))

(assert (= b!1415009 b!1415001))

(assert (= start!129788 b!1415009))

(declare-fun m!1599597 () Bool)

(assert (=> start!129788 m!1599597))

(declare-fun m!1599599 () Bool)

(assert (=> start!129788 m!1599599))

(declare-fun m!1599601 () Bool)

(assert (=> start!129788 m!1599601))

(declare-fun m!1599603 () Bool)

(assert (=> start!129788 m!1599603))

(declare-fun m!1599605 () Bool)

(assert (=> b!1415005 m!1599605))

(assert (=> b!1415005 m!1599605))

(declare-fun m!1599607 () Bool)

(assert (=> b!1415005 m!1599607))

(declare-fun m!1599609 () Bool)

(assert (=> b!1415004 m!1599609))

(declare-fun m!1599611 () Bool)

(assert (=> b!1415006 m!1599611))

(declare-fun m!1599613 () Bool)

(assert (=> b!1415000 m!1599613))

(declare-fun m!1599615 () Bool)

(assert (=> b!1415009 m!1599615))

(declare-fun m!1599617 () Bool)

(assert (=> b!1415008 m!1599617))

(declare-fun m!1599619 () Bool)

(assert (=> b!1414999 m!1599619))

(declare-fun m!1599621 () Bool)

(assert (=> b!1415003 m!1599621))

(declare-fun m!1599623 () Bool)

(assert (=> b!1415002 m!1599623))

(declare-fun m!1599625 () Bool)

(assert (=> b!1415010 m!1599625))

(assert (=> b!1415010 m!1599625))

(declare-fun m!1599627 () Bool)

(assert (=> b!1415010 m!1599627))

(declare-fun m!1599629 () Bool)

(assert (=> b!1415001 m!1599629))

(declare-fun m!1599631 () Bool)

(assert (=> b!1415007 m!1599631))

(declare-fun m!1599633 () Bool)

(assert (=> b!1415011 m!1599633))

(check-sat (not b!1415004) (not b!1414999) (not b!1415002) (not b!1415005) (not b!1415010) (not start!129788) (not b!1415009) (not b!1415000) (not b!1415007) (not b!1415008) (not b!1415003) (not b!1415011) (not b!1415001) (not b!1415006))
(check-sat)
