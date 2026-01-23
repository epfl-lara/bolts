; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!193958 () Bool)

(assert start!193958)

(declare-fun b!1932616 () Bool)

(declare-fun b_free!55381 () Bool)

(declare-fun b_next!56085 () Bool)

(assert (=> b!1932616 (= b_free!55381 (not b_next!56085))))

(declare-fun tp!551563 () Bool)

(declare-fun b_and!152111 () Bool)

(assert (=> b!1932616 (= tp!551563 b_and!152111)))

(declare-fun b_free!55383 () Bool)

(declare-fun b_next!56087 () Bool)

(assert (=> b!1932616 (= b_free!55383 (not b_next!56087))))

(declare-fun tp!551557 () Bool)

(declare-fun b_and!152113 () Bool)

(assert (=> b!1932616 (= tp!551557 b_and!152113)))

(declare-fun b!1932622 () Bool)

(declare-fun b_free!55385 () Bool)

(declare-fun b_next!56089 () Bool)

(assert (=> b!1932622 (= b_free!55385 (not b_next!56089))))

(declare-fun tp!551556 () Bool)

(declare-fun b_and!152115 () Bool)

(assert (=> b!1932622 (= tp!551556 b_and!152115)))

(declare-fun b_free!55387 () Bool)

(declare-fun b_next!56091 () Bool)

(assert (=> b!1932622 (= b_free!55387 (not b_next!56091))))

(declare-fun tp!551559 () Bool)

(declare-fun b_and!152117 () Bool)

(assert (=> b!1932622 (= tp!551559 b_and!152117)))

(declare-fun b!1932620 () Bool)

(declare-fun b_free!55389 () Bool)

(declare-fun b_next!56093 () Bool)

(assert (=> b!1932620 (= b_free!55389 (not b_next!56093))))

(declare-fun tp!551558 () Bool)

(declare-fun b_and!152119 () Bool)

(assert (=> b!1932620 (= tp!551558 b_and!152119)))

(declare-fun b_free!55391 () Bool)

(declare-fun b_next!56095 () Bool)

(assert (=> b!1932620 (= b_free!55391 (not b_next!56095))))

(declare-fun tp!551565 () Bool)

(declare-fun b_and!152121 () Bool)

(assert (=> b!1932620 (= tp!551565 b_and!152121)))

(declare-fun e!1235279 () Bool)

(declare-datatypes ((LexerInterface!3554 0))(
  ( (LexerInterfaceExt!3551 (__x!13652 Int)) (Lexer!3552) )
))
(declare-fun thiss!23328 () LexerInterface!3554)

(declare-datatypes ((List!22050 0))(
  ( (Nil!21968) (Cons!21968 (h!27369 (_ BitVec 16)) (t!180477 List!22050)) )
))
(declare-datatypes ((TokenValue!4077 0))(
  ( (FloatLiteralValue!8154 (text!28984 List!22050)) (TokenValueExt!4076 (__x!13653 Int)) (Broken!20385 (value!123885 List!22050)) (Object!4158) (End!4077) (Def!4077) (Underscore!4077) (Match!4077) (Else!4077) (Error!4077) (Case!4077) (If!4077) (Extends!4077) (Abstract!4077) (Class!4077) (Val!4077) (DelimiterValue!8154 (del!4137 List!22050)) (KeywordValue!4083 (value!123886 List!22050)) (CommentValue!8154 (value!123887 List!22050)) (WhitespaceValue!8154 (value!123888 List!22050)) (IndentationValue!4077 (value!123889 List!22050)) (String!25504) (Int32!4077) (Broken!20386 (value!123890 List!22050)) (Boolean!4078) (Unit!36332) (OperatorValue!4080 (op!4137 List!22050)) (IdentifierValue!8154 (value!123891 List!22050)) (IdentifierValue!8155 (value!123892 List!22050)) (WhitespaceValue!8155 (value!123893 List!22050)) (True!8154) (False!8154) (Broken!20387 (value!123894 List!22050)) (Broken!20388 (value!123895 List!22050)) (True!8155) (RightBrace!4077) (RightBracket!4077) (Colon!4077) (Null!4077) (Comma!4077) (LeftBracket!4077) (False!8155) (LeftBrace!4077) (ImaginaryLiteralValue!4077 (text!28985 List!22050)) (StringLiteralValue!12231 (value!123896 List!22050)) (EOFValue!4077 (value!123897 List!22050)) (IdentValue!4077 (value!123898 List!22050)) (DelimiterValue!8155 (value!123899 List!22050)) (DedentValue!4077 (value!123900 List!22050)) (NewLineValue!4077 (value!123901 List!22050)) (IntegerValue!12231 (value!123902 (_ BitVec 32)) (text!28986 List!22050)) (IntegerValue!12232 (value!123903 Int) (text!28987 List!22050)) (Times!4077) (Or!4077) (Equal!4077) (Minus!4077) (Broken!20389 (value!123904 List!22050)) (And!4077) (Div!4077) (LessEqual!4077) (Mod!4077) (Concat!9443) (Not!4077) (Plus!4077) (SpaceValue!4077 (value!123905 List!22050)) (IntegerValue!12233 (value!123906 Int) (text!28988 List!22050)) (StringLiteralValue!12232 (text!28989 List!22050)) (FloatLiteralValue!8155 (text!28990 List!22050)) (BytesLiteralValue!4077 (value!123907 List!22050)) (CommentValue!8155 (value!123908 List!22050)) (StringLiteralValue!12233 (value!123909 List!22050)) (ErrorTokenValue!4077 (msg!4138 List!22050)) )
))
(declare-datatypes ((C!10878 0))(
  ( (C!10879 (val!6391 Int)) )
))
(declare-datatypes ((List!22051 0))(
  ( (Nil!21969) (Cons!21969 (h!27370 C!10878) (t!180478 List!22051)) )
))
(declare-datatypes ((IArray!14677 0))(
  ( (IArray!14678 (innerList!7396 List!22051)) )
))
(declare-datatypes ((Conc!7336 0))(
  ( (Node!7336 (left!17477 Conc!7336) (right!17807 Conc!7336) (csize!14902 Int) (cheight!7547 Int)) (Leaf!10770 (xs!10230 IArray!14677) (csize!14903 Int)) (Empty!7336) )
))
(declare-datatypes ((BalanceConc!14488 0))(
  ( (BalanceConc!14489 (c!314388 Conc!7336)) )
))
(declare-datatypes ((TokenValueInjection!7738 0))(
  ( (TokenValueInjection!7739 (toValue!5582 Int) (toChars!5441 Int)) )
))
(declare-datatypes ((String!25505 0))(
  ( (String!25506 (value!123910 String)) )
))
(declare-datatypes ((Regex!5366 0))(
  ( (ElementMatch!5366 (c!314389 C!10878)) (Concat!9444 (regOne!11244 Regex!5366) (regTwo!11244 Regex!5366)) (EmptyExpr!5366) (Star!5366 (reg!5695 Regex!5366)) (EmptyLang!5366) (Union!5366 (regOne!11245 Regex!5366) (regTwo!11245 Regex!5366)) )
))
(declare-datatypes ((Rule!7682 0))(
  ( (Rule!7683 (regex!3941 Regex!5366) (tag!4393 String!25505) (isSeparator!3941 Bool) (transformation!3941 TokenValueInjection!7738)) )
))
(declare-datatypes ((List!22052 0))(
  ( (Nil!21970) (Cons!21970 (h!27371 Rule!7682) (t!180479 List!22052)) )
))
(declare-fun rules!3198 () List!22052)

(declare-fun b!1932607 () Bool)

(declare-datatypes ((Token!7434 0))(
  ( (Token!7435 (value!123911 TokenValue!4077) (rule!6150 Rule!7682) (size!17141 Int) (originalCharacters!4748 List!22051)) )
))
(declare-datatypes ((List!22053 0))(
  ( (Nil!21971) (Cons!21971 (h!27372 Token!7434) (t!180480 List!22053)) )
))
(declare-fun tokens!598 () List!22053)

(declare-fun rulesProduceIndividualToken!1726 (LexerInterface!3554 List!22052 Token!7434) Bool)

(assert (=> b!1932607 (= e!1235279 (rulesProduceIndividualToken!1726 thiss!23328 rules!3198 (h!27372 tokens!598)))))

(declare-fun b!1932608 () Bool)

(declare-fun e!1235275 () Bool)

(declare-datatypes ((tuple2!20592 0))(
  ( (tuple2!20593 (_1!11765 Token!7434) (_2!11765 List!22051)) )
))
(declare-datatypes ((Option!4559 0))(
  ( (None!4558) (Some!4558 (v!26669 tuple2!20592)) )
))
(declare-fun lt!740786 () Option!4559)

(declare-fun get!6925 (Option!4559) tuple2!20592)

(assert (=> b!1932608 (= e!1235275 (= (_1!11765 (get!6925 lt!740786)) (h!27372 tokens!598)))))

(declare-fun b!1932609 () Bool)

(declare-fun res!864089 () Bool)

(declare-fun e!1235265 () Bool)

(assert (=> b!1932609 (=> (not res!864089) (not e!1235265))))

(declare-fun isEmpty!13551 (List!22052) Bool)

(assert (=> b!1932609 (= res!864089 (not (isEmpty!13551 rules!3198)))))

(declare-fun b!1932610 () Bool)

(declare-fun res!864077 () Bool)

(assert (=> b!1932610 (=> (not res!864077) (not e!1235265))))

(declare-fun lambda!75338 () Int)

(declare-fun forall!4647 (List!22053 Int) Bool)

(assert (=> b!1932610 (= res!864077 (forall!4647 tokens!598 lambda!75338))))

(declare-fun b!1932611 () Bool)

(declare-fun e!1235287 () Bool)

(declare-fun e!1235269 () Bool)

(assert (=> b!1932611 (= e!1235287 e!1235269)))

(declare-fun res!864086 () Bool)

(assert (=> b!1932611 (=> (not res!864086) (not e!1235269))))

(declare-fun lt!740784 () Rule!7682)

(declare-fun lt!740787 () List!22051)

(declare-fun matchR!2634 (Regex!5366 List!22051) Bool)

(assert (=> b!1932611 (= res!864086 (matchR!2634 (regex!3941 lt!740784) lt!740787))))

(declare-datatypes ((Option!4560 0))(
  ( (None!4559) (Some!4559 (v!26670 Rule!7682)) )
))
(declare-fun lt!740785 () Option!4560)

(declare-fun get!6926 (Option!4560) Rule!7682)

(assert (=> b!1932611 (= lt!740784 (get!6926 lt!740785))))

(declare-fun b!1932612 () Bool)

(declare-fun res!864076 () Bool)

(assert (=> b!1932612 (=> (not res!864076) (not e!1235265))))

(assert (=> b!1932612 (= res!864076 (is-Cons!21971 tokens!598))))

(declare-fun b!1932613 () Bool)

(declare-fun res!864079 () Bool)

(assert (=> b!1932613 (=> (not res!864079) (not e!1235265))))

(declare-fun rulesInvariant!3161 (LexerInterface!3554 List!22052) Bool)

(assert (=> b!1932613 (= res!864079 (rulesInvariant!3161 thiss!23328 rules!3198))))

(declare-fun b!1932615 () Bool)

(declare-fun e!1235281 () Bool)

(declare-fun e!1235267 () Bool)

(assert (=> b!1932615 (= e!1235281 e!1235267)))

(declare-fun res!864088 () Bool)

(assert (=> b!1932615 (=> (not res!864088) (not e!1235267))))

(declare-fun lt!740777 () Rule!7682)

(declare-fun lt!740788 () List!22051)

(assert (=> b!1932615 (= res!864088 (matchR!2634 (regex!3941 lt!740777) lt!740788))))

(declare-fun lt!740781 () Option!4560)

(assert (=> b!1932615 (= lt!740777 (get!6926 lt!740781))))

(declare-fun e!1235278 () Bool)

(assert (=> b!1932616 (= e!1235278 (and tp!551563 tp!551557))))

(declare-fun b!1932617 () Bool)

(declare-fun e!1235277 () Bool)

(declare-fun e!1235266 () Bool)

(declare-fun tp!551562 () Bool)

(declare-fun inv!29064 (Token!7434) Bool)

(assert (=> b!1932617 (= e!1235266 (and (inv!29064 (h!27372 tokens!598)) e!1235277 tp!551562))))

(declare-fun tp!551560 () Bool)

(declare-fun b!1932618 () Bool)

(declare-fun e!1235274 () Bool)

(declare-fun inv!21 (TokenValue!4077) Bool)

(assert (=> b!1932618 (= e!1235277 (and (inv!21 (value!123911 (h!27372 tokens!598))) e!1235274 tp!551560))))

(declare-fun b!1932619 () Bool)

(declare-fun res!864090 () Bool)

(assert (=> b!1932619 (=> (not res!864090) (not e!1235265))))

(declare-fun rulesProduceEachTokenIndividuallyList!1285 (LexerInterface!3554 List!22052 List!22053) Bool)

(assert (=> b!1932619 (= res!864090 (rulesProduceEachTokenIndividuallyList!1285 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1235284 () Bool)

(assert (=> b!1932620 (= e!1235284 (and tp!551558 tp!551565))))

(declare-fun b!1932621 () Bool)

(assert (=> b!1932621 (= e!1235269 (= (rule!6150 (h!27372 tokens!598)) lt!740784))))

(declare-fun e!1235276 () Bool)

(assert (=> b!1932622 (= e!1235276 (and tp!551556 tp!551559))))

(declare-fun e!1235282 () Bool)

(declare-fun tp!551554 () Bool)

(declare-fun b!1932623 () Bool)

(declare-fun inv!29061 (String!25505) Bool)

(declare-fun inv!29065 (TokenValueInjection!7738) Bool)

(assert (=> b!1932623 (= e!1235282 (and tp!551554 (inv!29061 (tag!4393 (h!27371 rules!3198))) (inv!29065 (transformation!3941 (h!27371 rules!3198))) e!1235284))))

(declare-fun b!1932624 () Bool)

(declare-fun res!864087 () Bool)

(assert (=> b!1932624 (=> (not res!864087) (not e!1235265))))

(declare-fun separatorToken!354 () Token!7434)

(assert (=> b!1932624 (= res!864087 (isSeparator!3941 (rule!6150 separatorToken!354)))))

(declare-fun tp!551564 () Bool)

(declare-fun b!1932625 () Bool)

(assert (=> b!1932625 (= e!1235274 (and tp!551564 (inv!29061 (tag!4393 (rule!6150 (h!27372 tokens!598)))) (inv!29065 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) e!1235276))))

(declare-fun b!1932614 () Bool)

(assert (=> b!1932614 (= e!1235267 (= (rule!6150 separatorToken!354) lt!740777))))

(declare-fun res!864078 () Bool)

(assert (=> start!193958 (=> (not res!864078) (not e!1235265))))

(assert (=> start!193958 (= res!864078 (is-Lexer!3552 thiss!23328))))

(assert (=> start!193958 e!1235265))

(assert (=> start!193958 true))

(declare-fun e!1235286 () Bool)

(assert (=> start!193958 e!1235286))

(assert (=> start!193958 e!1235266))

(declare-fun e!1235285 () Bool)

(assert (=> start!193958 (and (inv!29064 separatorToken!354) e!1235285)))

(declare-fun e!1235273 () Bool)

(declare-fun tp!551553 () Bool)

(declare-fun b!1932626 () Bool)

(assert (=> b!1932626 (= e!1235273 (and tp!551553 (inv!29061 (tag!4393 (rule!6150 separatorToken!354))) (inv!29065 (transformation!3941 (rule!6150 separatorToken!354))) e!1235278))))

(declare-fun b!1932627 () Bool)

(declare-fun tp!551555 () Bool)

(assert (=> b!1932627 (= e!1235286 (and e!1235282 tp!551555))))

(declare-fun b!1932628 () Bool)

(declare-fun e!1235283 () Bool)

(assert (=> b!1932628 (= e!1235265 (not e!1235283))))

(declare-fun res!864075 () Bool)

(assert (=> b!1932628 (=> res!864075 e!1235283)))

(declare-fun lt!740792 () Option!4559)

(declare-fun lt!740780 () Bool)

(assert (=> b!1932628 (= res!864075 (or (and (not lt!740780) (= (_1!11765 (v!26669 lt!740792)) (h!27372 tokens!598))) (and (not lt!740780) (not (= (_1!11765 (v!26669 lt!740792)) (h!27372 tokens!598)))) (not (is-None!4558 lt!740792))))))

(assert (=> b!1932628 (= lt!740780 (not (is-Some!4558 lt!740792)))))

(declare-fun maxPrefix!1992 (LexerInterface!3554 List!22052 List!22051) Option!4559)

(declare-fun ++!5900 (List!22051 List!22051) List!22051)

(declare-fun printWithSeparatorTokenWhenNeededList!593 (LexerInterface!3554 List!22052 List!22053 Token!7434) List!22051)

(assert (=> b!1932628 (= lt!740792 (maxPrefix!1992 thiss!23328 rules!3198 (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(assert (=> b!1932628 e!1235287))

(declare-fun res!864085 () Bool)

(assert (=> b!1932628 (=> (not res!864085) (not e!1235287))))

(declare-fun isDefined!3851 (Option!4560) Bool)

(assert (=> b!1932628 (= res!864085 (isDefined!3851 lt!740785))))

(declare-fun getRuleFromTag!762 (LexerInterface!3554 List!22052 String!25505) Option!4560)

(assert (=> b!1932628 (= lt!740785 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 (h!27372 tokens!598)))))))

(declare-datatypes ((Unit!36333 0))(
  ( (Unit!36334) )
))
(declare-fun lt!740791 () Unit!36333)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!762 (LexerInterface!3554 List!22052 List!22051 Token!7434) Unit!36333)

(assert (=> b!1932628 (= lt!740791 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!762 thiss!23328 rules!3198 lt!740787 (h!27372 tokens!598)))))

(assert (=> b!1932628 e!1235275))

(declare-fun res!864084 () Bool)

(assert (=> b!1932628 (=> (not res!864084) (not e!1235275))))

(declare-fun isDefined!3852 (Option!4559) Bool)

(assert (=> b!1932628 (= res!864084 (isDefined!3852 lt!740786))))

(assert (=> b!1932628 (= lt!740786 (maxPrefix!1992 thiss!23328 rules!3198 lt!740787))))

(declare-fun lt!740782 () BalanceConc!14488)

(declare-fun list!8898 (BalanceConc!14488) List!22051)

(assert (=> b!1932628 (= lt!740787 (list!8898 lt!740782))))

(assert (=> b!1932628 e!1235281))

(declare-fun res!864082 () Bool)

(assert (=> b!1932628 (=> (not res!864082) (not e!1235281))))

(assert (=> b!1932628 (= res!864082 (isDefined!3851 lt!740781))))

(assert (=> b!1932628 (= lt!740781 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 separatorToken!354))))))

(declare-fun lt!740794 () Unit!36333)

(assert (=> b!1932628 (= lt!740794 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!762 thiss!23328 rules!3198 lt!740788 separatorToken!354))))

(declare-fun charsOf!2481 (Token!7434) BalanceConc!14488)

(assert (=> b!1932628 (= lt!740788 (list!8898 (charsOf!2481 separatorToken!354)))))

(declare-fun lt!740790 () Unit!36333)

(declare-fun lemmaEqSameImage!627 (TokenValueInjection!7738 BalanceConc!14488 BalanceConc!14488) Unit!36333)

(declare-fun seqFromList!2795 (List!22051) BalanceConc!14488)

(assert (=> b!1932628 (= lt!740790 (lemmaEqSameImage!627 (transformation!3941 (rule!6150 (h!27372 tokens!598))) lt!740782 (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598)))))))

(declare-fun lt!740793 () Unit!36333)

(declare-fun lemmaSemiInverse!898 (TokenValueInjection!7738 BalanceConc!14488) Unit!36333)

(assert (=> b!1932628 (= lt!740793 (lemmaSemiInverse!898 (transformation!3941 (rule!6150 (h!27372 tokens!598))) lt!740782))))

(assert (=> b!1932628 (= lt!740782 (charsOf!2481 (h!27372 tokens!598)))))

(declare-fun b!1932629 () Bool)

(declare-fun res!864083 () Bool)

(assert (=> b!1932629 (=> (not res!864083) (not e!1235265))))

(declare-fun sepAndNonSepRulesDisjointChars!1039 (List!22052 List!22052) Bool)

(assert (=> b!1932629 (= res!864083 (sepAndNonSepRulesDisjointChars!1039 rules!3198 rules!3198))))

(declare-fun b!1932630 () Bool)

(declare-fun res!864080 () Bool)

(assert (=> b!1932630 (=> (not res!864080) (not e!1235265))))

(assert (=> b!1932630 (= res!864080 (rulesProduceIndividualToken!1726 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!551561 () Bool)

(declare-fun b!1932631 () Bool)

(assert (=> b!1932631 (= e!1235285 (and (inv!21 (value!123911 separatorToken!354)) e!1235273 tp!551561))))

(declare-fun b!1932632 () Bool)

(assert (=> b!1932632 (= e!1235283 e!1235279)))

(declare-fun res!864081 () Bool)

(assert (=> b!1932632 (=> res!864081 e!1235279)))

(declare-fun lt!740789 () List!22051)

(declare-fun lt!740783 () List!22051)

(assert (=> b!1932632 (= res!864081 (or (not (= lt!740783 lt!740789)) (not (= lt!740789 lt!740787)) (not (= lt!740783 lt!740787))))))

(declare-fun printList!1089 (LexerInterface!3554 List!22053) List!22051)

(assert (=> b!1932632 (= lt!740789 (printList!1089 thiss!23328 (Cons!21971 (h!27372 tokens!598) Nil!21971)))))

(declare-fun lt!740779 () BalanceConc!14488)

(assert (=> b!1932632 (= lt!740783 (list!8898 lt!740779))))

(declare-datatypes ((IArray!14679 0))(
  ( (IArray!14680 (innerList!7397 List!22053)) )
))
(declare-datatypes ((Conc!7337 0))(
  ( (Node!7337 (left!17478 Conc!7337) (right!17808 Conc!7337) (csize!14904 Int) (cheight!7548 Int)) (Leaf!10771 (xs!10231 IArray!14679) (csize!14905 Int)) (Empty!7337) )
))
(declare-datatypes ((BalanceConc!14490 0))(
  ( (BalanceConc!14491 (c!314390 Conc!7337)) )
))
(declare-fun lt!740778 () BalanceConc!14490)

(declare-fun printTailRec!1030 (LexerInterface!3554 BalanceConc!14490 Int BalanceConc!14488) BalanceConc!14488)

(assert (=> b!1932632 (= lt!740779 (printTailRec!1030 thiss!23328 lt!740778 0 (BalanceConc!14489 Empty!7336)))))

(declare-fun print!1524 (LexerInterface!3554 BalanceConc!14490) BalanceConc!14488)

(assert (=> b!1932632 (= lt!740779 (print!1524 thiss!23328 lt!740778))))

(declare-fun singletonSeq!1925 (Token!7434) BalanceConc!14490)

(assert (=> b!1932632 (= lt!740778 (singletonSeq!1925 (h!27372 tokens!598)))))

(assert (= (and start!193958 res!864078) b!1932609))

(assert (= (and b!1932609 res!864089) b!1932613))

(assert (= (and b!1932613 res!864079) b!1932619))

(assert (= (and b!1932619 res!864090) b!1932630))

(assert (= (and b!1932630 res!864080) b!1932624))

(assert (= (and b!1932624 res!864087) b!1932610))

(assert (= (and b!1932610 res!864077) b!1932629))

(assert (= (and b!1932629 res!864083) b!1932612))

(assert (= (and b!1932612 res!864076) b!1932628))

(assert (= (and b!1932628 res!864082) b!1932615))

(assert (= (and b!1932615 res!864088) b!1932614))

(assert (= (and b!1932628 res!864084) b!1932608))

(assert (= (and b!1932628 res!864085) b!1932611))

(assert (= (and b!1932611 res!864086) b!1932621))

(assert (= (and b!1932628 (not res!864075)) b!1932632))

(assert (= (and b!1932632 (not res!864081)) b!1932607))

(assert (= b!1932623 b!1932620))

(assert (= b!1932627 b!1932623))

(assert (= (and start!193958 (is-Cons!21970 rules!3198)) b!1932627))

(assert (= b!1932625 b!1932622))

(assert (= b!1932618 b!1932625))

(assert (= b!1932617 b!1932618))

(assert (= (and start!193958 (is-Cons!21971 tokens!598)) b!1932617))

(assert (= b!1932626 b!1932616))

(assert (= b!1932631 b!1932626))

(assert (= start!193958 b!1932631))

(declare-fun m!2371069 () Bool)

(assert (=> b!1932629 m!2371069))

(declare-fun m!2371071 () Bool)

(assert (=> b!1932628 m!2371071))

(declare-fun m!2371073 () Bool)

(assert (=> b!1932628 m!2371073))

(declare-fun m!2371075 () Bool)

(assert (=> b!1932628 m!2371075))

(declare-fun m!2371077 () Bool)

(assert (=> b!1932628 m!2371077))

(declare-fun m!2371079 () Bool)

(assert (=> b!1932628 m!2371079))

(declare-fun m!2371081 () Bool)

(assert (=> b!1932628 m!2371081))

(declare-fun m!2371083 () Bool)

(assert (=> b!1932628 m!2371083))

(declare-fun m!2371085 () Bool)

(assert (=> b!1932628 m!2371085))

(declare-fun m!2371087 () Bool)

(assert (=> b!1932628 m!2371087))

(declare-fun m!2371089 () Bool)

(assert (=> b!1932628 m!2371089))

(declare-fun m!2371091 () Bool)

(assert (=> b!1932628 m!2371091))

(declare-fun m!2371093 () Bool)

(assert (=> b!1932628 m!2371093))

(assert (=> b!1932628 m!2371089))

(assert (=> b!1932628 m!2371091))

(declare-fun m!2371095 () Bool)

(assert (=> b!1932628 m!2371095))

(declare-fun m!2371097 () Bool)

(assert (=> b!1932628 m!2371097))

(assert (=> b!1932628 m!2371079))

(declare-fun m!2371099 () Bool)

(assert (=> b!1932628 m!2371099))

(assert (=> b!1932628 m!2371073))

(declare-fun m!2371101 () Bool)

(assert (=> b!1932628 m!2371101))

(declare-fun m!2371103 () Bool)

(assert (=> b!1932628 m!2371103))

(declare-fun m!2371105 () Bool)

(assert (=> b!1932628 m!2371105))

(declare-fun m!2371107 () Bool)

(assert (=> b!1932611 m!2371107))

(declare-fun m!2371109 () Bool)

(assert (=> b!1932611 m!2371109))

(declare-fun m!2371111 () Bool)

(assert (=> b!1932630 m!2371111))

(declare-fun m!2371113 () Bool)

(assert (=> b!1932608 m!2371113))

(declare-fun m!2371115 () Bool)

(assert (=> b!1932619 m!2371115))

(declare-fun m!2371117 () Bool)

(assert (=> b!1932617 m!2371117))

(declare-fun m!2371119 () Bool)

(assert (=> b!1932631 m!2371119))

(declare-fun m!2371121 () Bool)

(assert (=> b!1932618 m!2371121))

(declare-fun m!2371123 () Bool)

(assert (=> start!193958 m!2371123))

(declare-fun m!2371125 () Bool)

(assert (=> b!1932625 m!2371125))

(declare-fun m!2371127 () Bool)

(assert (=> b!1932625 m!2371127))

(declare-fun m!2371129 () Bool)

(assert (=> b!1932632 m!2371129))

(declare-fun m!2371131 () Bool)

(assert (=> b!1932632 m!2371131))

(declare-fun m!2371133 () Bool)

(assert (=> b!1932632 m!2371133))

(declare-fun m!2371135 () Bool)

(assert (=> b!1932632 m!2371135))

(declare-fun m!2371137 () Bool)

(assert (=> b!1932632 m!2371137))

(declare-fun m!2371139 () Bool)

(assert (=> b!1932623 m!2371139))

(declare-fun m!2371141 () Bool)

(assert (=> b!1932623 m!2371141))

(declare-fun m!2371143 () Bool)

(assert (=> b!1932615 m!2371143))

(declare-fun m!2371145 () Bool)

(assert (=> b!1932615 m!2371145))

(declare-fun m!2371147 () Bool)

(assert (=> b!1932626 m!2371147))

(declare-fun m!2371149 () Bool)

(assert (=> b!1932626 m!2371149))

(declare-fun m!2371151 () Bool)

(assert (=> b!1932607 m!2371151))

(declare-fun m!2371153 () Bool)

(assert (=> b!1932609 m!2371153))

(declare-fun m!2371155 () Bool)

(assert (=> b!1932610 m!2371155))

(declare-fun m!2371157 () Bool)

(assert (=> b!1932613 m!2371157))

(push 1)

(assert (not b!1932607))

(assert (not b!1932610))

(assert b_and!152119)

(assert (not b_next!56089))

(assert (not b_next!56091))

(assert (not b!1932631))

(assert (not b!1932617))

(assert (not b!1932630))

(assert (not b!1932608))

(assert b_and!152117)

(assert (not b!1932611))

(assert b_and!152111)

(assert (not b_next!56085))

(assert (not b!1932632))

(assert (not b!1932625))

(assert (not b!1932629))

(assert (not b_next!56087))

(assert (not b_next!56093))

(assert (not b!1932628))

(assert b_and!152113)

(assert (not b!1932626))

(assert (not b!1932627))

(assert b_and!152115)

(assert (not b!1932619))

(assert (not b!1932609))

(assert (not b_next!56095))

(assert b_and!152121)

(assert (not start!193958))

(assert (not b!1932618))

(assert (not b!1932615))

(assert (not b!1932613))

(assert (not b!1932623))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!56085))

(assert b_and!152119)

(assert (not b_next!56089))

(assert (not b_next!56091))

(assert b_and!152113)

(assert b_and!152121)

(assert b_and!152117)

(assert b_and!152111)

(assert (not b_next!56087))

(assert (not b_next!56093))

(assert b_and!152115)

(assert (not b_next!56095))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!415109 () Bool)

(declare-fun d!589458 () Bool)

(assert (= bs!415109 (and d!589458 b!1932610)))

(declare-fun lambda!75344 () Int)

(assert (=> bs!415109 (not (= lambda!75344 lambda!75338))))

(declare-fun b!1932773 () Bool)

(declare-fun e!1235396 () Bool)

(assert (=> b!1932773 (= e!1235396 true)))

(declare-fun b!1932772 () Bool)

(declare-fun e!1235395 () Bool)

(assert (=> b!1932772 (= e!1235395 e!1235396)))

(declare-fun b!1932771 () Bool)

(declare-fun e!1235394 () Bool)

(assert (=> b!1932771 (= e!1235394 e!1235395)))

(assert (=> d!589458 e!1235394))

(assert (= b!1932772 b!1932773))

(assert (= b!1932771 b!1932772))

(assert (= (and d!589458 (is-Cons!21970 rules!3198)) b!1932771))

(declare-fun order!13817 () Int)

(declare-fun order!13819 () Int)

(declare-fun dynLambda!10673 (Int Int) Int)

(declare-fun dynLambda!10674 (Int Int) Int)

(assert (=> b!1932773 (< (dynLambda!10673 order!13817 (toValue!5582 (transformation!3941 (h!27371 rules!3198)))) (dynLambda!10674 order!13819 lambda!75344))))

(declare-fun order!13821 () Int)

(declare-fun dynLambda!10675 (Int Int) Int)

(assert (=> b!1932773 (< (dynLambda!10675 order!13821 (toChars!5441 (transformation!3941 (h!27371 rules!3198)))) (dynLambda!10674 order!13819 lambda!75344))))

(assert (=> d!589458 true))

(declare-fun lt!740856 () Bool)

(assert (=> d!589458 (= lt!740856 (forall!4647 tokens!598 lambda!75344))))

(declare-fun e!1235386 () Bool)

(assert (=> d!589458 (= lt!740856 e!1235386)))

(declare-fun res!864182 () Bool)

(assert (=> d!589458 (=> res!864182 e!1235386)))

(assert (=> d!589458 (= res!864182 (not (is-Cons!21971 tokens!598)))))

(assert (=> d!589458 (not (isEmpty!13551 rules!3198))))

(assert (=> d!589458 (= (rulesProduceEachTokenIndividuallyList!1285 thiss!23328 rules!3198 tokens!598) lt!740856)))

(declare-fun b!1932761 () Bool)

(declare-fun e!1235387 () Bool)

(assert (=> b!1932761 (= e!1235386 e!1235387)))

(declare-fun res!864181 () Bool)

(assert (=> b!1932761 (=> (not res!864181) (not e!1235387))))

(assert (=> b!1932761 (= res!864181 (rulesProduceIndividualToken!1726 thiss!23328 rules!3198 (h!27372 tokens!598)))))

(declare-fun b!1932762 () Bool)

(assert (=> b!1932762 (= e!1235387 (rulesProduceEachTokenIndividuallyList!1285 thiss!23328 rules!3198 (t!180480 tokens!598)))))

(assert (= (and d!589458 (not res!864182)) b!1932761))

(assert (= (and b!1932761 res!864181) b!1932762))

(declare-fun m!2371265 () Bool)

(assert (=> d!589458 m!2371265))

(assert (=> d!589458 m!2371153))

(assert (=> b!1932761 m!2371151))

(declare-fun m!2371267 () Bool)

(assert (=> b!1932762 m!2371267))

(assert (=> b!1932619 d!589458))

(declare-fun d!589468 () Bool)

(declare-fun lt!740862 () Bool)

(declare-fun e!1235401 () Bool)

(assert (=> d!589468 (= lt!740862 e!1235401)))

(declare-fun res!864191 () Bool)

(assert (=> d!589468 (=> (not res!864191) (not e!1235401))))

(declare-fun list!8900 (BalanceConc!14490) List!22053)

(declare-datatypes ((tuple2!20596 0))(
  ( (tuple2!20597 (_1!11767 BalanceConc!14490) (_2!11767 BalanceConc!14488)) )
))
(declare-fun lex!1578 (LexerInterface!3554 List!22052 BalanceConc!14488) tuple2!20596)

(assert (=> d!589468 (= res!864191 (= (list!8900 (_1!11767 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 separatorToken!354))))) (list!8900 (singletonSeq!1925 separatorToken!354))))))

(declare-fun e!1235402 () Bool)

(assert (=> d!589468 (= lt!740862 e!1235402)))

(declare-fun res!864189 () Bool)

(assert (=> d!589468 (=> (not res!864189) (not e!1235402))))

(declare-fun lt!740861 () tuple2!20596)

(declare-fun size!17143 (BalanceConc!14490) Int)

(assert (=> d!589468 (= res!864189 (= (size!17143 (_1!11767 lt!740861)) 1))))

(assert (=> d!589468 (= lt!740861 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 separatorToken!354))))))

(assert (=> d!589468 (not (isEmpty!13551 rules!3198))))

(assert (=> d!589468 (= (rulesProduceIndividualToken!1726 thiss!23328 rules!3198 separatorToken!354) lt!740862)))

(declare-fun b!1932782 () Bool)

(declare-fun res!864190 () Bool)

(assert (=> b!1932782 (=> (not res!864190) (not e!1235402))))

(declare-fun apply!5714 (BalanceConc!14490 Int) Token!7434)

(assert (=> b!1932782 (= res!864190 (= (apply!5714 (_1!11767 lt!740861) 0) separatorToken!354))))

(declare-fun b!1932783 () Bool)

(declare-fun isEmpty!13553 (BalanceConc!14488) Bool)

(assert (=> b!1932783 (= e!1235402 (isEmpty!13553 (_2!11767 lt!740861)))))

(declare-fun b!1932784 () Bool)

(assert (=> b!1932784 (= e!1235401 (isEmpty!13553 (_2!11767 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 separatorToken!354))))))))

(assert (= (and d!589468 res!864189) b!1932782))

(assert (= (and b!1932782 res!864190) b!1932783))

(assert (= (and d!589468 res!864191) b!1932784))

(assert (=> d!589468 m!2371153))

(declare-fun m!2371269 () Bool)

(assert (=> d!589468 m!2371269))

(declare-fun m!2371271 () Bool)

(assert (=> d!589468 m!2371271))

(declare-fun m!2371273 () Bool)

(assert (=> d!589468 m!2371273))

(declare-fun m!2371275 () Bool)

(assert (=> d!589468 m!2371275))

(assert (=> d!589468 m!2371271))

(declare-fun m!2371277 () Bool)

(assert (=> d!589468 m!2371277))

(declare-fun m!2371279 () Bool)

(assert (=> d!589468 m!2371279))

(assert (=> d!589468 m!2371271))

(assert (=> d!589468 m!2371277))

(declare-fun m!2371281 () Bool)

(assert (=> b!1932782 m!2371281))

(declare-fun m!2371283 () Bool)

(assert (=> b!1932783 m!2371283))

(assert (=> b!1932784 m!2371271))

(assert (=> b!1932784 m!2371271))

(assert (=> b!1932784 m!2371277))

(assert (=> b!1932784 m!2371277))

(assert (=> b!1932784 m!2371279))

(declare-fun m!2371285 () Bool)

(assert (=> b!1932784 m!2371285))

(assert (=> b!1932630 d!589468))

(declare-fun d!589470 () Bool)

(assert (=> d!589470 (= (isEmpty!13551 rules!3198) (is-Nil!21970 rules!3198))))

(assert (=> b!1932609 d!589470))

(declare-fun b!1932795 () Bool)

(declare-fun e!1235411 () Bool)

(declare-fun inv!17 (TokenValue!4077) Bool)

(assert (=> b!1932795 (= e!1235411 (inv!17 (value!123911 separatorToken!354)))))

(declare-fun b!1932796 () Bool)

(declare-fun e!1235410 () Bool)

(declare-fun inv!16 (TokenValue!4077) Bool)

(assert (=> b!1932796 (= e!1235410 (inv!16 (value!123911 separatorToken!354)))))

(declare-fun b!1932797 () Bool)

(declare-fun e!1235409 () Bool)

(declare-fun inv!15 (TokenValue!4077) Bool)

(assert (=> b!1932797 (= e!1235409 (inv!15 (value!123911 separatorToken!354)))))

(declare-fun b!1932798 () Bool)

(assert (=> b!1932798 (= e!1235410 e!1235411)))

(declare-fun c!314408 () Bool)

(assert (=> b!1932798 (= c!314408 (is-IntegerValue!12232 (value!123911 separatorToken!354)))))

(declare-fun d!589472 () Bool)

(declare-fun c!314409 () Bool)

(assert (=> d!589472 (= c!314409 (is-IntegerValue!12231 (value!123911 separatorToken!354)))))

(assert (=> d!589472 (= (inv!21 (value!123911 separatorToken!354)) e!1235410)))

(declare-fun b!1932799 () Bool)

(declare-fun res!864194 () Bool)

(assert (=> b!1932799 (=> res!864194 e!1235409)))

(assert (=> b!1932799 (= res!864194 (not (is-IntegerValue!12233 (value!123911 separatorToken!354))))))

(assert (=> b!1932799 (= e!1235411 e!1235409)))

(assert (= (and d!589472 c!314409) b!1932796))

(assert (= (and d!589472 (not c!314409)) b!1932798))

(assert (= (and b!1932798 c!314408) b!1932795))

(assert (= (and b!1932798 (not c!314408)) b!1932799))

(assert (= (and b!1932799 (not res!864194)) b!1932797))

(declare-fun m!2371287 () Bool)

(assert (=> b!1932795 m!2371287))

(declare-fun m!2371289 () Bool)

(assert (=> b!1932796 m!2371289))

(declare-fun m!2371291 () Bool)

(assert (=> b!1932797 m!2371291))

(assert (=> b!1932631 d!589472))

(declare-fun d!589474 () Bool)

(declare-fun res!864199 () Bool)

(declare-fun e!1235416 () Bool)

(assert (=> d!589474 (=> res!864199 e!1235416)))

(assert (=> d!589474 (= res!864199 (is-Nil!21971 tokens!598))))

(assert (=> d!589474 (= (forall!4647 tokens!598 lambda!75338) e!1235416)))

(declare-fun b!1932804 () Bool)

(declare-fun e!1235417 () Bool)

(assert (=> b!1932804 (= e!1235416 e!1235417)))

(declare-fun res!864200 () Bool)

(assert (=> b!1932804 (=> (not res!864200) (not e!1235417))))

(declare-fun dynLambda!10676 (Int Token!7434) Bool)

(assert (=> b!1932804 (= res!864200 (dynLambda!10676 lambda!75338 (h!27372 tokens!598)))))

(declare-fun b!1932805 () Bool)

(assert (=> b!1932805 (= e!1235417 (forall!4647 (t!180480 tokens!598) lambda!75338))))

(assert (= (and d!589474 (not res!864199)) b!1932804))

(assert (= (and b!1932804 res!864200) b!1932805))

(declare-fun b_lambda!64229 () Bool)

(assert (=> (not b_lambda!64229) (not b!1932804)))

(declare-fun m!2371293 () Bool)

(assert (=> b!1932804 m!2371293))

(declare-fun m!2371295 () Bool)

(assert (=> b!1932805 m!2371295))

(assert (=> b!1932610 d!589474))

(declare-fun d!589476 () Bool)

(declare-fun res!864205 () Bool)

(declare-fun e!1235420 () Bool)

(assert (=> d!589476 (=> (not res!864205) (not e!1235420))))

(declare-fun isEmpty!13554 (List!22051) Bool)

(assert (=> d!589476 (= res!864205 (not (isEmpty!13554 (originalCharacters!4748 separatorToken!354))))))

(assert (=> d!589476 (= (inv!29064 separatorToken!354) e!1235420)))

(declare-fun b!1932810 () Bool)

(declare-fun res!864206 () Bool)

(assert (=> b!1932810 (=> (not res!864206) (not e!1235420))))

(declare-fun dynLambda!10677 (Int TokenValue!4077) BalanceConc!14488)

(assert (=> b!1932810 (= res!864206 (= (originalCharacters!4748 separatorToken!354) (list!8898 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (value!123911 separatorToken!354)))))))

(declare-fun b!1932811 () Bool)

(declare-fun size!17144 (List!22051) Int)

(assert (=> b!1932811 (= e!1235420 (= (size!17141 separatorToken!354) (size!17144 (originalCharacters!4748 separatorToken!354))))))

(assert (= (and d!589476 res!864205) b!1932810))

(assert (= (and b!1932810 res!864206) b!1932811))

(declare-fun b_lambda!64231 () Bool)

(assert (=> (not b_lambda!64231) (not b!1932810)))

(declare-fun t!180491 () Bool)

(declare-fun tb!118785 () Bool)

(assert (=> (and b!1932616 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354)))) t!180491) tb!118785))

(declare-fun b!1932816 () Bool)

(declare-fun e!1235423 () Bool)

(declare-fun tp!551607 () Bool)

(declare-fun inv!29068 (Conc!7336) Bool)

(assert (=> b!1932816 (= e!1235423 (and (inv!29068 (c!314388 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (value!123911 separatorToken!354)))) tp!551607))))

(declare-fun result!143432 () Bool)

(declare-fun inv!29069 (BalanceConc!14488) Bool)

(assert (=> tb!118785 (= result!143432 (and (inv!29069 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (value!123911 separatorToken!354))) e!1235423))))

(assert (= tb!118785 b!1932816))

(declare-fun m!2371297 () Bool)

(assert (=> b!1932816 m!2371297))

(declare-fun m!2371299 () Bool)

(assert (=> tb!118785 m!2371299))

(assert (=> b!1932810 t!180491))

(declare-fun b_and!152135 () Bool)

(assert (= b_and!152113 (and (=> t!180491 result!143432) b_and!152135)))

(declare-fun t!180493 () Bool)

(declare-fun tb!118787 () Bool)

(assert (=> (and b!1932622 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354)))) t!180493) tb!118787))

(declare-fun result!143436 () Bool)

(assert (= result!143436 result!143432))

(assert (=> b!1932810 t!180493))

(declare-fun b_and!152137 () Bool)

(assert (= b_and!152117 (and (=> t!180493 result!143436) b_and!152137)))

(declare-fun t!180495 () Bool)

(declare-fun tb!118789 () Bool)

(assert (=> (and b!1932620 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354)))) t!180495) tb!118789))

(declare-fun result!143438 () Bool)

(assert (= result!143438 result!143432))

(assert (=> b!1932810 t!180495))

(declare-fun b_and!152139 () Bool)

(assert (= b_and!152121 (and (=> t!180495 result!143438) b_and!152139)))

(declare-fun m!2371301 () Bool)

(assert (=> d!589476 m!2371301))

(declare-fun m!2371303 () Bool)

(assert (=> b!1932810 m!2371303))

(assert (=> b!1932810 m!2371303))

(declare-fun m!2371305 () Bool)

(assert (=> b!1932810 m!2371305))

(declare-fun m!2371307 () Bool)

(assert (=> b!1932811 m!2371307))

(assert (=> start!193958 d!589476))

(declare-fun d!589478 () Bool)

(declare-fun c!314412 () Bool)

(assert (=> d!589478 (= c!314412 (is-Cons!21971 (Cons!21971 (h!27372 tokens!598) Nil!21971)))))

(declare-fun e!1235426 () List!22051)

(assert (=> d!589478 (= (printList!1089 thiss!23328 (Cons!21971 (h!27372 tokens!598) Nil!21971)) e!1235426)))

(declare-fun b!1932821 () Bool)

(assert (=> b!1932821 (= e!1235426 (++!5900 (list!8898 (charsOf!2481 (h!27372 (Cons!21971 (h!27372 tokens!598) Nil!21971)))) (printList!1089 thiss!23328 (t!180480 (Cons!21971 (h!27372 tokens!598) Nil!21971)))))))

(declare-fun b!1932822 () Bool)

(assert (=> b!1932822 (= e!1235426 Nil!21969)))

(assert (= (and d!589478 c!314412) b!1932821))

(assert (= (and d!589478 (not c!314412)) b!1932822))

(declare-fun m!2371309 () Bool)

(assert (=> b!1932821 m!2371309))

(assert (=> b!1932821 m!2371309))

(declare-fun m!2371311 () Bool)

(assert (=> b!1932821 m!2371311))

(declare-fun m!2371313 () Bool)

(assert (=> b!1932821 m!2371313))

(assert (=> b!1932821 m!2371311))

(assert (=> b!1932821 m!2371313))

(declare-fun m!2371315 () Bool)

(assert (=> b!1932821 m!2371315))

(assert (=> b!1932632 d!589478))

(declare-fun d!589480 () Bool)

(declare-fun lt!740877 () BalanceConc!14488)

(declare-fun printListTailRec!458 (LexerInterface!3554 List!22053 List!22051) List!22051)

(declare-fun dropList!789 (BalanceConc!14490 Int) List!22053)

(assert (=> d!589480 (= (list!8898 lt!740877) (printListTailRec!458 thiss!23328 (dropList!789 lt!740778 0) (list!8898 (BalanceConc!14489 Empty!7336))))))

(declare-fun e!1235432 () BalanceConc!14488)

(assert (=> d!589480 (= lt!740877 e!1235432)))

(declare-fun c!314415 () Bool)

(assert (=> d!589480 (= c!314415 (>= 0 (size!17143 lt!740778)))))

(declare-fun e!1235431 () Bool)

(assert (=> d!589480 e!1235431))

(declare-fun res!864209 () Bool)

(assert (=> d!589480 (=> (not res!864209) (not e!1235431))))

(assert (=> d!589480 (= res!864209 (>= 0 0))))

(assert (=> d!589480 (= (printTailRec!1030 thiss!23328 lt!740778 0 (BalanceConc!14489 Empty!7336)) lt!740877)))

(declare-fun b!1932829 () Bool)

(assert (=> b!1932829 (= e!1235431 (<= 0 (size!17143 lt!740778)))))

(declare-fun b!1932830 () Bool)

(assert (=> b!1932830 (= e!1235432 (BalanceConc!14489 Empty!7336))))

(declare-fun b!1932831 () Bool)

(declare-fun ++!5902 (BalanceConc!14488 BalanceConc!14488) BalanceConc!14488)

(assert (=> b!1932831 (= e!1235432 (printTailRec!1030 thiss!23328 lt!740778 (+ 0 1) (++!5902 (BalanceConc!14489 Empty!7336) (charsOf!2481 (apply!5714 lt!740778 0)))))))

(declare-fun lt!740878 () List!22053)

(assert (=> b!1932831 (= lt!740878 (list!8900 lt!740778))))

(declare-fun lt!740880 () Unit!36333)

(declare-fun lemmaDropApply!713 (List!22053 Int) Unit!36333)

(assert (=> b!1932831 (= lt!740880 (lemmaDropApply!713 lt!740878 0))))

(declare-fun head!4505 (List!22053) Token!7434)

(declare-fun drop!1080 (List!22053 Int) List!22053)

(declare-fun apply!5715 (List!22053 Int) Token!7434)

(assert (=> b!1932831 (= (head!4505 (drop!1080 lt!740878 0)) (apply!5715 lt!740878 0))))

(declare-fun lt!740883 () Unit!36333)

(assert (=> b!1932831 (= lt!740883 lt!740880)))

(declare-fun lt!740881 () List!22053)

(assert (=> b!1932831 (= lt!740881 (list!8900 lt!740778))))

(declare-fun lt!740879 () Unit!36333)

(declare-fun lemmaDropTail!689 (List!22053 Int) Unit!36333)

(assert (=> b!1932831 (= lt!740879 (lemmaDropTail!689 lt!740881 0))))

(declare-fun tail!2991 (List!22053) List!22053)

(assert (=> b!1932831 (= (tail!2991 (drop!1080 lt!740881 0)) (drop!1080 lt!740881 (+ 0 1)))))

(declare-fun lt!740882 () Unit!36333)

(assert (=> b!1932831 (= lt!740882 lt!740879)))

(assert (= (and d!589480 res!864209) b!1932829))

(assert (= (and d!589480 c!314415) b!1932830))

(assert (= (and d!589480 (not c!314415)) b!1932831))

(declare-fun m!2371317 () Bool)

(assert (=> d!589480 m!2371317))

(declare-fun m!2371319 () Bool)

(assert (=> d!589480 m!2371319))

(declare-fun m!2371321 () Bool)

(assert (=> d!589480 m!2371321))

(declare-fun m!2371323 () Bool)

(assert (=> d!589480 m!2371323))

(assert (=> d!589480 m!2371319))

(declare-fun m!2371325 () Bool)

(assert (=> d!589480 m!2371325))

(assert (=> d!589480 m!2371321))

(assert (=> b!1932829 m!2371325))

(declare-fun m!2371327 () Bool)

(assert (=> b!1932831 m!2371327))

(declare-fun m!2371329 () Bool)

(assert (=> b!1932831 m!2371329))

(declare-fun m!2371331 () Bool)

(assert (=> b!1932831 m!2371331))

(assert (=> b!1932831 m!2371329))

(declare-fun m!2371333 () Bool)

(assert (=> b!1932831 m!2371333))

(declare-fun m!2371335 () Bool)

(assert (=> b!1932831 m!2371335))

(declare-fun m!2371337 () Bool)

(assert (=> b!1932831 m!2371337))

(declare-fun m!2371339 () Bool)

(assert (=> b!1932831 m!2371339))

(declare-fun m!2371341 () Bool)

(assert (=> b!1932831 m!2371341))

(assert (=> b!1932831 m!2371339))

(declare-fun m!2371343 () Bool)

(assert (=> b!1932831 m!2371343))

(assert (=> b!1932831 m!2371337))

(declare-fun m!2371345 () Bool)

(assert (=> b!1932831 m!2371345))

(declare-fun m!2371347 () Bool)

(assert (=> b!1932831 m!2371347))

(declare-fun m!2371349 () Bool)

(assert (=> b!1932831 m!2371349))

(assert (=> b!1932831 m!2371345))

(declare-fun m!2371351 () Bool)

(assert (=> b!1932831 m!2371351))

(assert (=> b!1932831 m!2371335))

(assert (=> b!1932632 d!589480))

(declare-fun d!589482 () Bool)

(declare-fun list!8901 (Conc!7336) List!22051)

(assert (=> d!589482 (= (list!8898 lt!740779) (list!8901 (c!314388 lt!740779)))))

(declare-fun bs!415110 () Bool)

(assert (= bs!415110 d!589482))

(declare-fun m!2371353 () Bool)

(assert (=> bs!415110 m!2371353))

(assert (=> b!1932632 d!589482))

(declare-fun d!589484 () Bool)

(declare-fun lt!740886 () BalanceConc!14488)

(assert (=> d!589484 (= (list!8898 lt!740886) (printList!1089 thiss!23328 (list!8900 lt!740778)))))

(assert (=> d!589484 (= lt!740886 (printTailRec!1030 thiss!23328 lt!740778 0 (BalanceConc!14489 Empty!7336)))))

(assert (=> d!589484 (= (print!1524 thiss!23328 lt!740778) lt!740886)))

(declare-fun bs!415111 () Bool)

(assert (= bs!415111 d!589484))

(declare-fun m!2371355 () Bool)

(assert (=> bs!415111 m!2371355))

(assert (=> bs!415111 m!2371347))

(assert (=> bs!415111 m!2371347))

(declare-fun m!2371357 () Bool)

(assert (=> bs!415111 m!2371357))

(assert (=> bs!415111 m!2371131))

(assert (=> b!1932632 d!589484))

(declare-fun d!589486 () Bool)

(declare-fun e!1235435 () Bool)

(assert (=> d!589486 e!1235435))

(declare-fun res!864212 () Bool)

(assert (=> d!589486 (=> (not res!864212) (not e!1235435))))

(declare-fun lt!740889 () BalanceConc!14490)

(assert (=> d!589486 (= res!864212 (= (list!8900 lt!740889) (Cons!21971 (h!27372 tokens!598) Nil!21971)))))

(declare-fun singleton!853 (Token!7434) BalanceConc!14490)

(assert (=> d!589486 (= lt!740889 (singleton!853 (h!27372 tokens!598)))))

(assert (=> d!589486 (= (singletonSeq!1925 (h!27372 tokens!598)) lt!740889)))

(declare-fun b!1932834 () Bool)

(declare-fun isBalanced!2268 (Conc!7337) Bool)

(assert (=> b!1932834 (= e!1235435 (isBalanced!2268 (c!314390 lt!740889)))))

(assert (= (and d!589486 res!864212) b!1932834))

(declare-fun m!2371359 () Bool)

(assert (=> d!589486 m!2371359))

(declare-fun m!2371361 () Bool)

(assert (=> d!589486 m!2371361))

(declare-fun m!2371363 () Bool)

(assert (=> b!1932834 m!2371363))

(assert (=> b!1932632 d!589486))

(declare-fun b!1932863 () Bool)

(declare-fun e!1235451 () Bool)

(declare-fun nullable!1614 (Regex!5366) Bool)

(assert (=> b!1932863 (= e!1235451 (nullable!1614 (regex!3941 lt!740784)))))

(declare-fun bm!118879 () Bool)

(declare-fun call!118884 () Bool)

(assert (=> bm!118879 (= call!118884 (isEmpty!13554 lt!740787))))

(declare-fun b!1932864 () Bool)

(declare-fun e!1235455 () Bool)

(declare-fun head!4506 (List!22051) C!10878)

(assert (=> b!1932864 (= e!1235455 (= (head!4506 lt!740787) (c!314389 (regex!3941 lt!740784))))))

(declare-fun b!1932865 () Bool)

(declare-fun res!864230 () Bool)

(assert (=> b!1932865 (=> (not res!864230) (not e!1235455))))

(assert (=> b!1932865 (= res!864230 (not call!118884))))

(declare-fun b!1932866 () Bool)

(declare-fun res!864232 () Bool)

(declare-fun e!1235456 () Bool)

(assert (=> b!1932866 (=> res!864232 e!1235456)))

(assert (=> b!1932866 (= res!864232 e!1235455)))

(declare-fun res!864229 () Bool)

(assert (=> b!1932866 (=> (not res!864229) (not e!1235455))))

(declare-fun lt!740892 () Bool)

(assert (=> b!1932866 (= res!864229 lt!740892)))

(declare-fun b!1932867 () Bool)

(declare-fun e!1235452 () Bool)

(assert (=> b!1932867 (= e!1235452 (not (= (head!4506 lt!740787) (c!314389 (regex!3941 lt!740784)))))))

(declare-fun d!589488 () Bool)

(declare-fun e!1235453 () Bool)

(assert (=> d!589488 e!1235453))

(declare-fun c!314423 () Bool)

(assert (=> d!589488 (= c!314423 (is-EmptyExpr!5366 (regex!3941 lt!740784)))))

(assert (=> d!589488 (= lt!740892 e!1235451)))

(declare-fun c!314424 () Bool)

(assert (=> d!589488 (= c!314424 (isEmpty!13554 lt!740787))))

(declare-fun validRegex!2140 (Regex!5366) Bool)

(assert (=> d!589488 (validRegex!2140 (regex!3941 lt!740784))))

(assert (=> d!589488 (= (matchR!2634 (regex!3941 lt!740784) lt!740787) lt!740892)))

(declare-fun b!1932868 () Bool)

(declare-fun res!864236 () Bool)

(assert (=> b!1932868 (=> res!864236 e!1235456)))

(assert (=> b!1932868 (= res!864236 (not (is-ElementMatch!5366 (regex!3941 lt!740784))))))

(declare-fun e!1235454 () Bool)

(assert (=> b!1932868 (= e!1235454 e!1235456)))

(declare-fun b!1932869 () Bool)

(declare-fun e!1235450 () Bool)

(assert (=> b!1932869 (= e!1235456 e!1235450)))

(declare-fun res!864233 () Bool)

(assert (=> b!1932869 (=> (not res!864233) (not e!1235450))))

(assert (=> b!1932869 (= res!864233 (not lt!740892))))

(declare-fun b!1932870 () Bool)

(declare-fun res!864234 () Bool)

(assert (=> b!1932870 (=> (not res!864234) (not e!1235455))))

(declare-fun tail!2992 (List!22051) List!22051)

(assert (=> b!1932870 (= res!864234 (isEmpty!13554 (tail!2992 lt!740787)))))

(declare-fun b!1932871 () Bool)

(declare-fun derivativeStep!1373 (Regex!5366 C!10878) Regex!5366)

(assert (=> b!1932871 (= e!1235451 (matchR!2634 (derivativeStep!1373 (regex!3941 lt!740784) (head!4506 lt!740787)) (tail!2992 lt!740787)))))

(declare-fun b!1932872 () Bool)

(assert (=> b!1932872 (= e!1235453 (= lt!740892 call!118884))))

(declare-fun b!1932873 () Bool)

(assert (=> b!1932873 (= e!1235454 (not lt!740892))))

(declare-fun b!1932874 () Bool)

(declare-fun res!864231 () Bool)

(assert (=> b!1932874 (=> res!864231 e!1235452)))

(assert (=> b!1932874 (= res!864231 (not (isEmpty!13554 (tail!2992 lt!740787))))))

(declare-fun b!1932875 () Bool)

(assert (=> b!1932875 (= e!1235453 e!1235454)))

(declare-fun c!314422 () Bool)

(assert (=> b!1932875 (= c!314422 (is-EmptyLang!5366 (regex!3941 lt!740784)))))

(declare-fun b!1932876 () Bool)

(assert (=> b!1932876 (= e!1235450 e!1235452)))

(declare-fun res!864235 () Bool)

(assert (=> b!1932876 (=> res!864235 e!1235452)))

(assert (=> b!1932876 (= res!864235 call!118884)))

(assert (= (and d!589488 c!314424) b!1932863))

(assert (= (and d!589488 (not c!314424)) b!1932871))

(assert (= (and d!589488 c!314423) b!1932872))

(assert (= (and d!589488 (not c!314423)) b!1932875))

(assert (= (and b!1932875 c!314422) b!1932873))

(assert (= (and b!1932875 (not c!314422)) b!1932868))

(assert (= (and b!1932868 (not res!864236)) b!1932866))

(assert (= (and b!1932866 res!864229) b!1932865))

(assert (= (and b!1932865 res!864230) b!1932870))

(assert (= (and b!1932870 res!864234) b!1932864))

(assert (= (and b!1932866 (not res!864232)) b!1932869))

(assert (= (and b!1932869 res!864233) b!1932876))

(assert (= (and b!1932876 (not res!864235)) b!1932874))

(assert (= (and b!1932874 (not res!864231)) b!1932867))

(assert (= (or b!1932872 b!1932865 b!1932876) bm!118879))

(declare-fun m!2371365 () Bool)

(assert (=> b!1932864 m!2371365))

(declare-fun m!2371367 () Bool)

(assert (=> d!589488 m!2371367))

(declare-fun m!2371369 () Bool)

(assert (=> d!589488 m!2371369))

(declare-fun m!2371371 () Bool)

(assert (=> b!1932874 m!2371371))

(assert (=> b!1932874 m!2371371))

(declare-fun m!2371373 () Bool)

(assert (=> b!1932874 m!2371373))

(assert (=> b!1932867 m!2371365))

(declare-fun m!2371375 () Bool)

(assert (=> b!1932863 m!2371375))

(assert (=> bm!118879 m!2371367))

(assert (=> b!1932871 m!2371365))

(assert (=> b!1932871 m!2371365))

(declare-fun m!2371377 () Bool)

(assert (=> b!1932871 m!2371377))

(assert (=> b!1932871 m!2371371))

(assert (=> b!1932871 m!2371377))

(assert (=> b!1932871 m!2371371))

(declare-fun m!2371379 () Bool)

(assert (=> b!1932871 m!2371379))

(assert (=> b!1932870 m!2371371))

(assert (=> b!1932870 m!2371371))

(assert (=> b!1932870 m!2371373))

(assert (=> b!1932611 d!589488))

(declare-fun d!589490 () Bool)

(assert (=> d!589490 (= (get!6926 lt!740785) (v!26670 lt!740785))))

(assert (=> b!1932611 d!589490))

(declare-fun d!589492 () Bool)

(assert (=> d!589492 (= (inv!29061 (tag!4393 (h!27371 rules!3198))) (= (mod (str.len (value!123910 (tag!4393 (h!27371 rules!3198)))) 2) 0))))

(assert (=> b!1932623 d!589492))

(declare-fun d!589494 () Bool)

(declare-fun res!864239 () Bool)

(declare-fun e!1235459 () Bool)

(assert (=> d!589494 (=> (not res!864239) (not e!1235459))))

(declare-fun semiInverseModEq!1570 (Int Int) Bool)

(assert (=> d!589494 (= res!864239 (semiInverseModEq!1570 (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (h!27371 rules!3198)))))))

(assert (=> d!589494 (= (inv!29065 (transformation!3941 (h!27371 rules!3198))) e!1235459)))

(declare-fun b!1932879 () Bool)

(declare-fun equivClasses!1497 (Int Int) Bool)

(assert (=> b!1932879 (= e!1235459 (equivClasses!1497 (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (h!27371 rules!3198)))))))

(assert (= (and d!589494 res!864239) b!1932879))

(declare-fun m!2371381 () Bool)

(assert (=> d!589494 m!2371381))

(declare-fun m!2371383 () Bool)

(assert (=> b!1932879 m!2371383))

(assert (=> b!1932623 d!589494))

(declare-fun d!589496 () Bool)

(declare-fun res!864242 () Bool)

(declare-fun e!1235462 () Bool)

(assert (=> d!589496 (=> (not res!864242) (not e!1235462))))

(declare-fun rulesValid!1457 (LexerInterface!3554 List!22052) Bool)

(assert (=> d!589496 (= res!864242 (rulesValid!1457 thiss!23328 rules!3198))))

(assert (=> d!589496 (= (rulesInvariant!3161 thiss!23328 rules!3198) e!1235462)))

(declare-fun b!1932882 () Bool)

(declare-datatypes ((List!22058 0))(
  ( (Nil!21976) (Cons!21976 (h!27377 String!25505) (t!180563 List!22058)) )
))
(declare-fun noDuplicateTag!1455 (LexerInterface!3554 List!22052 List!22058) Bool)

(assert (=> b!1932882 (= e!1235462 (noDuplicateTag!1455 thiss!23328 rules!3198 Nil!21976))))

(assert (= (and d!589496 res!864242) b!1932882))

(declare-fun m!2371385 () Bool)

(assert (=> d!589496 m!2371385))

(declare-fun m!2371387 () Bool)

(assert (=> b!1932882 m!2371387))

(assert (=> b!1932613 d!589496))

(declare-fun d!589498 () Bool)

(assert (=> d!589498 (= (inv!29061 (tag!4393 (rule!6150 (h!27372 tokens!598)))) (= (mod (str.len (value!123910 (tag!4393 (rule!6150 (h!27372 tokens!598))))) 2) 0))))

(assert (=> b!1932625 d!589498))

(declare-fun d!589500 () Bool)

(declare-fun res!864243 () Bool)

(declare-fun e!1235463 () Bool)

(assert (=> d!589500 (=> (not res!864243) (not e!1235463))))

(assert (=> d!589500 (= res!864243 (semiInverseModEq!1570 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))))))

(assert (=> d!589500 (= (inv!29065 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) e!1235463)))

(declare-fun b!1932883 () Bool)

(assert (=> b!1932883 (= e!1235463 (equivClasses!1497 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))))))

(assert (= (and d!589500 res!864243) b!1932883))

(declare-fun m!2371389 () Bool)

(assert (=> d!589500 m!2371389))

(declare-fun m!2371391 () Bool)

(assert (=> b!1932883 m!2371391))

(assert (=> b!1932625 d!589500))

(declare-fun b!1932884 () Bool)

(declare-fun e!1235465 () Bool)

(assert (=> b!1932884 (= e!1235465 (nullable!1614 (regex!3941 lt!740777)))))

(declare-fun bm!118880 () Bool)

(declare-fun call!118885 () Bool)

(assert (=> bm!118880 (= call!118885 (isEmpty!13554 lt!740788))))

(declare-fun b!1932885 () Bool)

(declare-fun e!1235469 () Bool)

(assert (=> b!1932885 (= e!1235469 (= (head!4506 lt!740788) (c!314389 (regex!3941 lt!740777))))))

(declare-fun b!1932886 () Bool)

(declare-fun res!864245 () Bool)

(assert (=> b!1932886 (=> (not res!864245) (not e!1235469))))

(assert (=> b!1932886 (= res!864245 (not call!118885))))

(declare-fun b!1932887 () Bool)

(declare-fun res!864247 () Bool)

(declare-fun e!1235470 () Bool)

(assert (=> b!1932887 (=> res!864247 e!1235470)))

(assert (=> b!1932887 (= res!864247 e!1235469)))

(declare-fun res!864244 () Bool)

(assert (=> b!1932887 (=> (not res!864244) (not e!1235469))))

(declare-fun lt!740893 () Bool)

(assert (=> b!1932887 (= res!864244 lt!740893)))

(declare-fun b!1932888 () Bool)

(declare-fun e!1235466 () Bool)

(assert (=> b!1932888 (= e!1235466 (not (= (head!4506 lt!740788) (c!314389 (regex!3941 lt!740777)))))))

(declare-fun d!589502 () Bool)

(declare-fun e!1235467 () Bool)

(assert (=> d!589502 e!1235467))

(declare-fun c!314426 () Bool)

(assert (=> d!589502 (= c!314426 (is-EmptyExpr!5366 (regex!3941 lt!740777)))))

(assert (=> d!589502 (= lt!740893 e!1235465)))

(declare-fun c!314427 () Bool)

(assert (=> d!589502 (= c!314427 (isEmpty!13554 lt!740788))))

(assert (=> d!589502 (validRegex!2140 (regex!3941 lt!740777))))

(assert (=> d!589502 (= (matchR!2634 (regex!3941 lt!740777) lt!740788) lt!740893)))

(declare-fun b!1932889 () Bool)

(declare-fun res!864251 () Bool)

(assert (=> b!1932889 (=> res!864251 e!1235470)))

(assert (=> b!1932889 (= res!864251 (not (is-ElementMatch!5366 (regex!3941 lt!740777))))))

(declare-fun e!1235468 () Bool)

(assert (=> b!1932889 (= e!1235468 e!1235470)))

(declare-fun b!1932890 () Bool)

(declare-fun e!1235464 () Bool)

(assert (=> b!1932890 (= e!1235470 e!1235464)))

(declare-fun res!864248 () Bool)

(assert (=> b!1932890 (=> (not res!864248) (not e!1235464))))

(assert (=> b!1932890 (= res!864248 (not lt!740893))))

(declare-fun b!1932891 () Bool)

(declare-fun res!864249 () Bool)

(assert (=> b!1932891 (=> (not res!864249) (not e!1235469))))

(assert (=> b!1932891 (= res!864249 (isEmpty!13554 (tail!2992 lt!740788)))))

(declare-fun b!1932892 () Bool)

(assert (=> b!1932892 (= e!1235465 (matchR!2634 (derivativeStep!1373 (regex!3941 lt!740777) (head!4506 lt!740788)) (tail!2992 lt!740788)))))

(declare-fun b!1932893 () Bool)

(assert (=> b!1932893 (= e!1235467 (= lt!740893 call!118885))))

(declare-fun b!1932894 () Bool)

(assert (=> b!1932894 (= e!1235468 (not lt!740893))))

(declare-fun b!1932895 () Bool)

(declare-fun res!864246 () Bool)

(assert (=> b!1932895 (=> res!864246 e!1235466)))

(assert (=> b!1932895 (= res!864246 (not (isEmpty!13554 (tail!2992 lt!740788))))))

(declare-fun b!1932896 () Bool)

(assert (=> b!1932896 (= e!1235467 e!1235468)))

(declare-fun c!314425 () Bool)

(assert (=> b!1932896 (= c!314425 (is-EmptyLang!5366 (regex!3941 lt!740777)))))

(declare-fun b!1932897 () Bool)

(assert (=> b!1932897 (= e!1235464 e!1235466)))

(declare-fun res!864250 () Bool)

(assert (=> b!1932897 (=> res!864250 e!1235466)))

(assert (=> b!1932897 (= res!864250 call!118885)))

(assert (= (and d!589502 c!314427) b!1932884))

(assert (= (and d!589502 (not c!314427)) b!1932892))

(assert (= (and d!589502 c!314426) b!1932893))

(assert (= (and d!589502 (not c!314426)) b!1932896))

(assert (= (and b!1932896 c!314425) b!1932894))

(assert (= (and b!1932896 (not c!314425)) b!1932889))

(assert (= (and b!1932889 (not res!864251)) b!1932887))

(assert (= (and b!1932887 res!864244) b!1932886))

(assert (= (and b!1932886 res!864245) b!1932891))

(assert (= (and b!1932891 res!864249) b!1932885))

(assert (= (and b!1932887 (not res!864247)) b!1932890))

(assert (= (and b!1932890 res!864248) b!1932897))

(assert (= (and b!1932897 (not res!864250)) b!1932895))

(assert (= (and b!1932895 (not res!864246)) b!1932888))

(assert (= (or b!1932893 b!1932886 b!1932897) bm!118880))

(declare-fun m!2371393 () Bool)

(assert (=> b!1932885 m!2371393))

(declare-fun m!2371395 () Bool)

(assert (=> d!589502 m!2371395))

(declare-fun m!2371397 () Bool)

(assert (=> d!589502 m!2371397))

(declare-fun m!2371399 () Bool)

(assert (=> b!1932895 m!2371399))

(assert (=> b!1932895 m!2371399))

(declare-fun m!2371401 () Bool)

(assert (=> b!1932895 m!2371401))

(assert (=> b!1932888 m!2371393))

(declare-fun m!2371403 () Bool)

(assert (=> b!1932884 m!2371403))

(assert (=> bm!118880 m!2371395))

(assert (=> b!1932892 m!2371393))

(assert (=> b!1932892 m!2371393))

(declare-fun m!2371405 () Bool)

(assert (=> b!1932892 m!2371405))

(assert (=> b!1932892 m!2371399))

(assert (=> b!1932892 m!2371405))

(assert (=> b!1932892 m!2371399))

(declare-fun m!2371407 () Bool)

(assert (=> b!1932892 m!2371407))

(assert (=> b!1932891 m!2371399))

(assert (=> b!1932891 m!2371399))

(assert (=> b!1932891 m!2371401))

(assert (=> b!1932615 d!589502))

(declare-fun d!589504 () Bool)

(assert (=> d!589504 (= (get!6926 lt!740781) (v!26670 lt!740781))))

(assert (=> b!1932615 d!589504))

(declare-fun d!589506 () Bool)

(assert (=> d!589506 (= (inv!29061 (tag!4393 (rule!6150 separatorToken!354))) (= (mod (str.len (value!123910 (tag!4393 (rule!6150 separatorToken!354)))) 2) 0))))

(assert (=> b!1932626 d!589506))

(declare-fun d!589508 () Bool)

(declare-fun res!864252 () Bool)

(declare-fun e!1235471 () Bool)

(assert (=> d!589508 (=> (not res!864252) (not e!1235471))))

(assert (=> d!589508 (= res!864252 (semiInverseModEq!1570 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354)))))))

(assert (=> d!589508 (= (inv!29065 (transformation!3941 (rule!6150 separatorToken!354))) e!1235471)))

(declare-fun b!1932898 () Bool)

(assert (=> b!1932898 (= e!1235471 (equivClasses!1497 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354)))))))

(assert (= (and d!589508 res!864252) b!1932898))

(declare-fun m!2371409 () Bool)

(assert (=> d!589508 m!2371409))

(declare-fun m!2371411 () Bool)

(assert (=> b!1932898 m!2371411))

(assert (=> b!1932626 d!589508))

(declare-fun d!589510 () Bool)

(declare-fun res!864253 () Bool)

(declare-fun e!1235472 () Bool)

(assert (=> d!589510 (=> (not res!864253) (not e!1235472))))

(assert (=> d!589510 (= res!864253 (not (isEmpty!13554 (originalCharacters!4748 (h!27372 tokens!598)))))))

(assert (=> d!589510 (= (inv!29064 (h!27372 tokens!598)) e!1235472)))

(declare-fun b!1932899 () Bool)

(declare-fun res!864254 () Bool)

(assert (=> b!1932899 (=> (not res!864254) (not e!1235472))))

(assert (=> b!1932899 (= res!864254 (= (originalCharacters!4748 (h!27372 tokens!598)) (list!8898 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (value!123911 (h!27372 tokens!598))))))))

(declare-fun b!1932900 () Bool)

(assert (=> b!1932900 (= e!1235472 (= (size!17141 (h!27372 tokens!598)) (size!17144 (originalCharacters!4748 (h!27372 tokens!598)))))))

(assert (= (and d!589510 res!864253) b!1932899))

(assert (= (and b!1932899 res!864254) b!1932900))

(declare-fun b_lambda!64233 () Bool)

(assert (=> (not b_lambda!64233) (not b!1932899)))

(declare-fun t!180498 () Bool)

(declare-fun tb!118791 () Bool)

(assert (=> (and b!1932616 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180498) tb!118791))

(declare-fun b!1932901 () Bool)

(declare-fun e!1235473 () Bool)

(declare-fun tp!551608 () Bool)

(assert (=> b!1932901 (= e!1235473 (and (inv!29068 (c!314388 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (value!123911 (h!27372 tokens!598))))) tp!551608))))

(declare-fun result!143440 () Bool)

(assert (=> tb!118791 (= result!143440 (and (inv!29069 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (value!123911 (h!27372 tokens!598)))) e!1235473))))

(assert (= tb!118791 b!1932901))

(declare-fun m!2371413 () Bool)

(assert (=> b!1932901 m!2371413))

(declare-fun m!2371415 () Bool)

(assert (=> tb!118791 m!2371415))

(assert (=> b!1932899 t!180498))

(declare-fun b_and!152141 () Bool)

(assert (= b_and!152135 (and (=> t!180498 result!143440) b_and!152141)))

(declare-fun t!180500 () Bool)

(declare-fun tb!118793 () Bool)

(assert (=> (and b!1932622 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180500) tb!118793))

(declare-fun result!143442 () Bool)

(assert (= result!143442 result!143440))

(assert (=> b!1932899 t!180500))

(declare-fun b_and!152143 () Bool)

(assert (= b_and!152137 (and (=> t!180500 result!143442) b_and!152143)))

(declare-fun tb!118795 () Bool)

(declare-fun t!180502 () Bool)

(assert (=> (and b!1932620 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180502) tb!118795))

(declare-fun result!143444 () Bool)

(assert (= result!143444 result!143440))

(assert (=> b!1932899 t!180502))

(declare-fun b_and!152145 () Bool)

(assert (= b_and!152139 (and (=> t!180502 result!143444) b_and!152145)))

(declare-fun m!2371417 () Bool)

(assert (=> d!589510 m!2371417))

(declare-fun m!2371419 () Bool)

(assert (=> b!1932899 m!2371419))

(assert (=> b!1932899 m!2371419))

(declare-fun m!2371421 () Bool)

(assert (=> b!1932899 m!2371421))

(declare-fun m!2371423 () Bool)

(assert (=> b!1932900 m!2371423))

(assert (=> b!1932617 d!589510))

(declare-fun b!1932908 () Bool)

(declare-fun e!1235478 () Bool)

(assert (=> b!1932908 (= e!1235478 true)))

(declare-fun d!589512 () Bool)

(assert (=> d!589512 e!1235478))

(assert (= d!589512 b!1932908))

(declare-fun lambda!75347 () Int)

(declare-fun order!13823 () Int)

(declare-fun dynLambda!10678 (Int Int) Int)

(assert (=> b!1932908 (< (dynLambda!10673 order!13817 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) (dynLambda!10678 order!13823 lambda!75347))))

(assert (=> b!1932908 (< (dynLambda!10675 order!13821 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) (dynLambda!10678 order!13823 lambda!75347))))

(declare-fun dynLambda!10679 (Int BalanceConc!14488) TokenValue!4077)

(assert (=> d!589512 (= (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) lt!740782) (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598)))))))

(declare-fun lt!740896 () Unit!36333)

(declare-fun Forall2of!206 (Int BalanceConc!14488 BalanceConc!14488) Unit!36333)

(assert (=> d!589512 (= lt!740896 (Forall2of!206 lambda!75347 lt!740782 (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598)))))))

(assert (=> d!589512 (= (list!8898 lt!740782) (list!8898 (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598)))))))

(assert (=> d!589512 (= (lemmaEqSameImage!627 (transformation!3941 (rule!6150 (h!27372 tokens!598))) lt!740782 (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598)))) lt!740896)))

(declare-fun b_lambda!64235 () Bool)

(assert (=> (not b_lambda!64235) (not d!589512)))

(declare-fun t!180504 () Bool)

(declare-fun tb!118797 () Bool)

(assert (=> (and b!1932616 (= (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180504) tb!118797))

(declare-fun result!143446 () Bool)

(assert (=> tb!118797 (= result!143446 (inv!21 (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) lt!740782)))))

(declare-fun m!2371425 () Bool)

(assert (=> tb!118797 m!2371425))

(assert (=> d!589512 t!180504))

(declare-fun b_and!152147 () Bool)

(assert (= b_and!152111 (and (=> t!180504 result!143446) b_and!152147)))

(declare-fun t!180506 () Bool)

(declare-fun tb!118799 () Bool)

(assert (=> (and b!1932622 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180506) tb!118799))

(declare-fun result!143450 () Bool)

(assert (= result!143450 result!143446))

(assert (=> d!589512 t!180506))

(declare-fun b_and!152149 () Bool)

(assert (= b_and!152115 (and (=> t!180506 result!143450) b_and!152149)))

(declare-fun t!180508 () Bool)

(declare-fun tb!118801 () Bool)

(assert (=> (and b!1932620 (= (toValue!5582 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180508) tb!118801))

(declare-fun result!143452 () Bool)

(assert (= result!143452 result!143446))

(assert (=> d!589512 t!180508))

(declare-fun b_and!152151 () Bool)

(assert (= b_and!152119 (and (=> t!180508 result!143452) b_and!152151)))

(declare-fun b_lambda!64237 () Bool)

(assert (=> (not b_lambda!64237) (not d!589512)))

(declare-fun t!180510 () Bool)

(declare-fun tb!118803 () Bool)

(assert (=> (and b!1932616 (= (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180510) tb!118803))

(declare-fun result!143454 () Bool)

(assert (=> tb!118803 (= result!143454 (inv!21 (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598))))))))

(declare-fun m!2371427 () Bool)

(assert (=> tb!118803 m!2371427))

(assert (=> d!589512 t!180510))

(declare-fun b_and!152153 () Bool)

(assert (= b_and!152147 (and (=> t!180510 result!143454) b_and!152153)))

(declare-fun t!180512 () Bool)

(declare-fun tb!118805 () Bool)

(assert (=> (and b!1932622 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180512) tb!118805))

(declare-fun result!143456 () Bool)

(assert (= result!143456 result!143454))

(assert (=> d!589512 t!180512))

(declare-fun b_and!152155 () Bool)

(assert (= b_and!152149 (and (=> t!180512 result!143456) b_and!152155)))

(declare-fun tb!118807 () Bool)

(declare-fun t!180514 () Bool)

(assert (=> (and b!1932620 (= (toValue!5582 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180514) tb!118807))

(declare-fun result!143458 () Bool)

(assert (= result!143458 result!143454))

(assert (=> d!589512 t!180514))

(declare-fun b_and!152157 () Bool)

(assert (= b_and!152151 (and (=> t!180514 result!143458) b_and!152157)))

(assert (=> d!589512 m!2371073))

(declare-fun m!2371429 () Bool)

(assert (=> d!589512 m!2371429))

(assert (=> d!589512 m!2371073))

(declare-fun m!2371431 () Bool)

(assert (=> d!589512 m!2371431))

(declare-fun m!2371433 () Bool)

(assert (=> d!589512 m!2371433))

(assert (=> d!589512 m!2371073))

(declare-fun m!2371435 () Bool)

(assert (=> d!589512 m!2371435))

(assert (=> d!589512 m!2371083))

(assert (=> b!1932628 d!589512))

(declare-fun b!1932944 () Bool)

(declare-fun e!1235501 () Option!4559)

(declare-fun lt!740911 () Option!4559)

(declare-fun lt!740909 () Option!4559)

(assert (=> b!1932944 (= e!1235501 (ite (and (is-None!4558 lt!740911) (is-None!4558 lt!740909)) None!4558 (ite (is-None!4558 lt!740909) lt!740911 (ite (is-None!4558 lt!740911) lt!740909 (ite (>= (size!17141 (_1!11765 (v!26669 lt!740911))) (size!17141 (_1!11765 (v!26669 lt!740909)))) lt!740911 lt!740909)))))))

(declare-fun call!118888 () Option!4559)

(assert (=> b!1932944 (= lt!740911 call!118888)))

(assert (=> b!1932944 (= lt!740909 (maxPrefix!1992 thiss!23328 (t!180479 rules!3198) lt!740787))))

(declare-fun bm!118883 () Bool)

(declare-fun maxPrefixOneRule!1228 (LexerInterface!3554 Rule!7682 List!22051) Option!4559)

(assert (=> bm!118883 (= call!118888 (maxPrefixOneRule!1228 thiss!23328 (h!27371 rules!3198) lt!740787))))

(declare-fun b!1932945 () Bool)

(declare-fun res!864274 () Bool)

(declare-fun e!1235500 () Bool)

(assert (=> b!1932945 (=> (not res!864274) (not e!1235500))))

(declare-fun lt!740910 () Option!4559)

(assert (=> b!1932945 (= res!864274 (= (++!5900 (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740910)))) (_2!11765 (get!6925 lt!740910))) lt!740787))))

(declare-fun b!1932946 () Bool)

(declare-fun res!864279 () Bool)

(assert (=> b!1932946 (=> (not res!864279) (not e!1235500))))

(assert (=> b!1932946 (= res!864279 (matchR!2634 (regex!3941 (rule!6150 (_1!11765 (get!6925 lt!740910)))) (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740910))))))))

(declare-fun b!1932947 () Bool)

(declare-fun e!1235502 () Bool)

(assert (=> b!1932947 (= e!1235502 e!1235500)))

(declare-fun res!864275 () Bool)

(assert (=> b!1932947 (=> (not res!864275) (not e!1235500))))

(assert (=> b!1932947 (= res!864275 (isDefined!3852 lt!740910))))

(declare-fun b!1932948 () Bool)

(declare-fun contains!3980 (List!22052 Rule!7682) Bool)

(assert (=> b!1932948 (= e!1235500 (contains!3980 rules!3198 (rule!6150 (_1!11765 (get!6925 lt!740910)))))))

(declare-fun d!589514 () Bool)

(assert (=> d!589514 e!1235502))

(declare-fun res!864277 () Bool)

(assert (=> d!589514 (=> res!864277 e!1235502)))

(declare-fun isEmpty!13555 (Option!4559) Bool)

(assert (=> d!589514 (= res!864277 (isEmpty!13555 lt!740910))))

(assert (=> d!589514 (= lt!740910 e!1235501)))

(declare-fun c!314430 () Bool)

(assert (=> d!589514 (= c!314430 (and (is-Cons!21970 rules!3198) (is-Nil!21970 (t!180479 rules!3198))))))

(declare-fun lt!740908 () Unit!36333)

(declare-fun lt!740912 () Unit!36333)

(assert (=> d!589514 (= lt!740908 lt!740912)))

(declare-fun isPrefix!1946 (List!22051 List!22051) Bool)

(assert (=> d!589514 (isPrefix!1946 lt!740787 lt!740787)))

(declare-fun lemmaIsPrefixRefl!1264 (List!22051 List!22051) Unit!36333)

(assert (=> d!589514 (= lt!740912 (lemmaIsPrefixRefl!1264 lt!740787 lt!740787))))

(declare-fun rulesValidInductive!1345 (LexerInterface!3554 List!22052) Bool)

(assert (=> d!589514 (rulesValidInductive!1345 thiss!23328 rules!3198)))

(assert (=> d!589514 (= (maxPrefix!1992 thiss!23328 rules!3198 lt!740787) lt!740910)))

(declare-fun b!1932949 () Bool)

(declare-fun res!864273 () Bool)

(assert (=> b!1932949 (=> (not res!864273) (not e!1235500))))

(declare-fun apply!5716 (TokenValueInjection!7738 BalanceConc!14488) TokenValue!4077)

(assert (=> b!1932949 (= res!864273 (= (value!123911 (_1!11765 (get!6925 lt!740910))) (apply!5716 (transformation!3941 (rule!6150 (_1!11765 (get!6925 lt!740910)))) (seqFromList!2795 (originalCharacters!4748 (_1!11765 (get!6925 lt!740910)))))))))

(declare-fun b!1932950 () Bool)

(declare-fun res!864276 () Bool)

(assert (=> b!1932950 (=> (not res!864276) (not e!1235500))))

(assert (=> b!1932950 (= res!864276 (= (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740910)))) (originalCharacters!4748 (_1!11765 (get!6925 lt!740910)))))))

(declare-fun b!1932951 () Bool)

(assert (=> b!1932951 (= e!1235501 call!118888)))

(declare-fun b!1932952 () Bool)

(declare-fun res!864278 () Bool)

(assert (=> b!1932952 (=> (not res!864278) (not e!1235500))))

(assert (=> b!1932952 (= res!864278 (< (size!17144 (_2!11765 (get!6925 lt!740910))) (size!17144 lt!740787)))))

(assert (= (and d!589514 c!314430) b!1932951))

(assert (= (and d!589514 (not c!314430)) b!1932944))

(assert (= (or b!1932951 b!1932944) bm!118883))

(assert (= (and d!589514 (not res!864277)) b!1932947))

(assert (= (and b!1932947 res!864275) b!1932950))

(assert (= (and b!1932950 res!864276) b!1932952))

(assert (= (and b!1932952 res!864278) b!1932945))

(assert (= (and b!1932945 res!864274) b!1932949))

(assert (= (and b!1932949 res!864273) b!1932946))

(assert (= (and b!1932946 res!864279) b!1932948))

(declare-fun m!2371441 () Bool)

(assert (=> b!1932952 m!2371441))

(declare-fun m!2371443 () Bool)

(assert (=> b!1932952 m!2371443))

(declare-fun m!2371445 () Bool)

(assert (=> b!1932952 m!2371445))

(assert (=> b!1932950 m!2371441))

(declare-fun m!2371447 () Bool)

(assert (=> b!1932950 m!2371447))

(assert (=> b!1932950 m!2371447))

(declare-fun m!2371449 () Bool)

(assert (=> b!1932950 m!2371449))

(assert (=> b!1932949 m!2371441))

(declare-fun m!2371451 () Bool)

(assert (=> b!1932949 m!2371451))

(assert (=> b!1932949 m!2371451))

(declare-fun m!2371453 () Bool)

(assert (=> b!1932949 m!2371453))

(declare-fun m!2371455 () Bool)

(assert (=> bm!118883 m!2371455))

(declare-fun m!2371457 () Bool)

(assert (=> b!1932944 m!2371457))

(assert (=> b!1932945 m!2371441))

(assert (=> b!1932945 m!2371447))

(assert (=> b!1932945 m!2371447))

(assert (=> b!1932945 m!2371449))

(assert (=> b!1932945 m!2371449))

(declare-fun m!2371459 () Bool)

(assert (=> b!1932945 m!2371459))

(declare-fun m!2371461 () Bool)

(assert (=> d!589514 m!2371461))

(declare-fun m!2371463 () Bool)

(assert (=> d!589514 m!2371463))

(declare-fun m!2371465 () Bool)

(assert (=> d!589514 m!2371465))

(declare-fun m!2371467 () Bool)

(assert (=> d!589514 m!2371467))

(assert (=> b!1932948 m!2371441))

(declare-fun m!2371469 () Bool)

(assert (=> b!1932948 m!2371469))

(assert (=> b!1932946 m!2371441))

(assert (=> b!1932946 m!2371447))

(assert (=> b!1932946 m!2371447))

(assert (=> b!1932946 m!2371449))

(assert (=> b!1932946 m!2371449))

(declare-fun m!2371471 () Bool)

(assert (=> b!1932946 m!2371471))

(declare-fun m!2371473 () Bool)

(assert (=> b!1932947 m!2371473))

(assert (=> b!1932628 d!589514))

(declare-fun d!589518 () Bool)

(declare-fun isEmpty!13556 (Option!4560) Bool)

(assert (=> d!589518 (= (isDefined!3851 lt!740781) (not (isEmpty!13556 lt!740781)))))

(declare-fun bs!415113 () Bool)

(assert (= bs!415113 d!589518))

(declare-fun m!2371475 () Bool)

(assert (=> bs!415113 m!2371475))

(assert (=> b!1932628 d!589518))

(declare-fun d!589520 () Bool)

(assert (=> d!589520 (= (list!8898 (charsOf!2481 separatorToken!354)) (list!8901 (c!314388 (charsOf!2481 separatorToken!354))))))

(declare-fun bs!415114 () Bool)

(assert (= bs!415114 d!589520))

(declare-fun m!2371477 () Bool)

(assert (=> bs!415114 m!2371477))

(assert (=> b!1932628 d!589520))

(declare-fun b!1932957 () Bool)

(declare-fun e!1235505 () Bool)

(assert (=> b!1932957 (= e!1235505 true)))

(declare-fun d!589522 () Bool)

(assert (=> d!589522 e!1235505))

(assert (= d!589522 b!1932957))

(declare-fun lambda!75353 () Int)

(declare-fun order!13831 () Int)

(declare-fun dynLambda!10680 (Int Int) Int)

(assert (=> b!1932957 (< (dynLambda!10673 order!13817 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) (dynLambda!10680 order!13831 lambda!75353))))

(assert (=> b!1932957 (< (dynLambda!10675 order!13821 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) (dynLambda!10680 order!13831 lambda!75353))))

(assert (=> d!589522 (= (list!8898 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) lt!740782))) (list!8898 lt!740782))))

(declare-fun lt!740915 () Unit!36333)

(declare-fun ForallOf!410 (Int BalanceConc!14488) Unit!36333)

(assert (=> d!589522 (= lt!740915 (ForallOf!410 lambda!75353 lt!740782))))

(assert (=> d!589522 (= (lemmaSemiInverse!898 (transformation!3941 (rule!6150 (h!27372 tokens!598))) lt!740782) lt!740915)))

(declare-fun b_lambda!64239 () Bool)

(assert (=> (not b_lambda!64239) (not d!589522)))

(declare-fun tb!118809 () Bool)

(declare-fun t!180516 () Bool)

(assert (=> (and b!1932616 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180516) tb!118809))

(declare-fun b!1932958 () Bool)

(declare-fun tp!551609 () Bool)

(declare-fun e!1235506 () Bool)

(assert (=> b!1932958 (= e!1235506 (and (inv!29068 (c!314388 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) lt!740782)))) tp!551609))))

(declare-fun result!143460 () Bool)

(assert (=> tb!118809 (= result!143460 (and (inv!29069 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (dynLambda!10679 (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) lt!740782))) e!1235506))))

(assert (= tb!118809 b!1932958))

(declare-fun m!2371479 () Bool)

(assert (=> b!1932958 m!2371479))

(declare-fun m!2371481 () Bool)

(assert (=> tb!118809 m!2371481))

(assert (=> d!589522 t!180516))

(declare-fun b_and!152159 () Bool)

(assert (= b_and!152141 (and (=> t!180516 result!143460) b_and!152159)))

(declare-fun t!180518 () Bool)

(declare-fun tb!118811 () Bool)

(assert (=> (and b!1932622 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180518) tb!118811))

(declare-fun result!143462 () Bool)

(assert (= result!143462 result!143460))

(assert (=> d!589522 t!180518))

(declare-fun b_and!152161 () Bool)

(assert (= b_and!152143 (and (=> t!180518 result!143462) b_and!152161)))

(declare-fun t!180520 () Bool)

(declare-fun tb!118813 () Bool)

(assert (=> (and b!1932620 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180520) tb!118813))

(declare-fun result!143464 () Bool)

(assert (= result!143464 result!143460))

(assert (=> d!589522 t!180520))

(declare-fun b_and!152163 () Bool)

(assert (= b_and!152145 (and (=> t!180520 result!143464) b_and!152163)))

(declare-fun b_lambda!64241 () Bool)

(assert (=> (not b_lambda!64241) (not d!589522)))

(assert (=> d!589522 t!180504))

(declare-fun b_and!152165 () Bool)

(assert (= b_and!152153 (and (=> t!180504 result!143446) b_and!152165)))

(assert (=> d!589522 t!180506))

(declare-fun b_and!152167 () Bool)

(assert (= b_and!152155 (and (=> t!180506 result!143450) b_and!152167)))

(assert (=> d!589522 t!180508))

(declare-fun b_and!152169 () Bool)

(assert (= b_and!152157 (and (=> t!180508 result!143452) b_and!152169)))

(declare-fun m!2371483 () Bool)

(assert (=> d!589522 m!2371483))

(assert (=> d!589522 m!2371433))

(declare-fun m!2371485 () Bool)

(assert (=> d!589522 m!2371485))

(assert (=> d!589522 m!2371485))

(declare-fun m!2371487 () Bool)

(assert (=> d!589522 m!2371487))

(assert (=> d!589522 m!2371083))

(assert (=> d!589522 m!2371433))

(assert (=> b!1932628 d!589522))

(declare-fun d!589524 () Bool)

(assert (=> d!589524 (= (isDefined!3852 lt!740786) (not (isEmpty!13555 lt!740786)))))

(declare-fun bs!415115 () Bool)

(assert (= bs!415115 d!589524))

(declare-fun m!2371489 () Bool)

(assert (=> bs!415115 m!2371489))

(assert (=> b!1932628 d!589524))

(declare-fun d!589526 () Bool)

(declare-fun lt!740918 () BalanceConc!14488)

(assert (=> d!589526 (= (list!8898 lt!740918) (originalCharacters!4748 separatorToken!354))))

(assert (=> d!589526 (= lt!740918 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (value!123911 separatorToken!354)))))

(assert (=> d!589526 (= (charsOf!2481 separatorToken!354) lt!740918)))

(declare-fun b_lambda!64243 () Bool)

(assert (=> (not b_lambda!64243) (not d!589526)))

(assert (=> d!589526 t!180491))

(declare-fun b_and!152171 () Bool)

(assert (= b_and!152159 (and (=> t!180491 result!143432) b_and!152171)))

(assert (=> d!589526 t!180493))

(declare-fun b_and!152173 () Bool)

(assert (= b_and!152161 (and (=> t!180493 result!143436) b_and!152173)))

(assert (=> d!589526 t!180495))

(declare-fun b_and!152175 () Bool)

(assert (= b_and!152163 (and (=> t!180495 result!143438) b_and!152175)))

(declare-fun m!2371491 () Bool)

(assert (=> d!589526 m!2371491))

(assert (=> d!589526 m!2371303))

(assert (=> b!1932628 d!589526))

(declare-fun d!589528 () Bool)

(declare-fun e!1235509 () Bool)

(assert (=> d!589528 e!1235509))

(declare-fun res!864284 () Bool)

(assert (=> d!589528 (=> (not res!864284) (not e!1235509))))

(assert (=> d!589528 (= res!864284 (isDefined!3851 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 separatorToken!354)))))))

(declare-fun lt!740921 () Unit!36333)

(declare-fun choose!12009 (LexerInterface!3554 List!22052 List!22051 Token!7434) Unit!36333)

(assert (=> d!589528 (= lt!740921 (choose!12009 thiss!23328 rules!3198 lt!740788 separatorToken!354))))

(assert (=> d!589528 (rulesInvariant!3161 thiss!23328 rules!3198)))

(assert (=> d!589528 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!762 thiss!23328 rules!3198 lt!740788 separatorToken!354) lt!740921)))

(declare-fun b!1932963 () Bool)

(declare-fun res!864285 () Bool)

(assert (=> b!1932963 (=> (not res!864285) (not e!1235509))))

(assert (=> b!1932963 (= res!864285 (matchR!2634 (regex!3941 (get!6926 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 separatorToken!354))))) (list!8898 (charsOf!2481 separatorToken!354))))))

(declare-fun b!1932964 () Bool)

(assert (=> b!1932964 (= e!1235509 (= (rule!6150 separatorToken!354) (get!6926 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 separatorToken!354))))))))

(assert (= (and d!589528 res!864284) b!1932963))

(assert (= (and b!1932963 res!864285) b!1932964))

(assert (=> d!589528 m!2371077))

(assert (=> d!589528 m!2371077))

(declare-fun m!2371493 () Bool)

(assert (=> d!589528 m!2371493))

(declare-fun m!2371495 () Bool)

(assert (=> d!589528 m!2371495))

(assert (=> d!589528 m!2371157))

(assert (=> b!1932963 m!2371077))

(assert (=> b!1932963 m!2371079))

(assert (=> b!1932963 m!2371099))

(assert (=> b!1932963 m!2371079))

(assert (=> b!1932963 m!2371077))

(declare-fun m!2371497 () Bool)

(assert (=> b!1932963 m!2371497))

(assert (=> b!1932963 m!2371099))

(declare-fun m!2371499 () Bool)

(assert (=> b!1932963 m!2371499))

(assert (=> b!1932964 m!2371077))

(assert (=> b!1932964 m!2371077))

(assert (=> b!1932964 m!2371497))

(assert (=> b!1932628 d!589528))

(declare-fun b!1932977 () Bool)

(declare-fun lt!740928 () Unit!36333)

(declare-fun lt!740929 () Unit!36333)

(assert (=> b!1932977 (= lt!740928 lt!740929)))

(assert (=> b!1932977 (rulesInvariant!3161 thiss!23328 (t!180479 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!275 (LexerInterface!3554 Rule!7682 List!22052) Unit!36333)

(assert (=> b!1932977 (= lt!740929 (lemmaInvariantOnRulesThenOnTail!275 thiss!23328 (h!27371 rules!3198) (t!180479 rules!3198)))))

(declare-fun e!1235518 () Option!4560)

(assert (=> b!1932977 (= e!1235518 (getRuleFromTag!762 thiss!23328 (t!180479 rules!3198) (tag!4393 (rule!6150 (h!27372 tokens!598)))))))

(declare-fun b!1932978 () Bool)

(declare-fun e!1235521 () Option!4560)

(assert (=> b!1932978 (= e!1235521 e!1235518)))

(declare-fun c!314436 () Bool)

(assert (=> b!1932978 (= c!314436 (and (is-Cons!21970 rules!3198) (not (= (tag!4393 (h!27371 rules!3198)) (tag!4393 (rule!6150 (h!27372 tokens!598)))))))))

(declare-fun b!1932979 () Bool)

(declare-fun e!1235520 () Bool)

(declare-fun lt!740930 () Option!4560)

(assert (=> b!1932979 (= e!1235520 (= (tag!4393 (get!6926 lt!740930)) (tag!4393 (rule!6150 (h!27372 tokens!598)))))))

(declare-fun d!589530 () Bool)

(declare-fun e!1235519 () Bool)

(assert (=> d!589530 e!1235519))

(declare-fun res!864290 () Bool)

(assert (=> d!589530 (=> res!864290 e!1235519)))

(assert (=> d!589530 (= res!864290 (isEmpty!13556 lt!740930))))

(assert (=> d!589530 (= lt!740930 e!1235521)))

(declare-fun c!314437 () Bool)

(assert (=> d!589530 (= c!314437 (and (is-Cons!21970 rules!3198) (= (tag!4393 (h!27371 rules!3198)) (tag!4393 (rule!6150 (h!27372 tokens!598))))))))

(assert (=> d!589530 (rulesInvariant!3161 thiss!23328 rules!3198)))

(assert (=> d!589530 (= (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 (h!27372 tokens!598)))) lt!740930)))

(declare-fun b!1932980 () Bool)

(assert (=> b!1932980 (= e!1235521 (Some!4559 (h!27371 rules!3198)))))

(declare-fun b!1932981 () Bool)

(assert (=> b!1932981 (= e!1235518 None!4559)))

(declare-fun b!1932982 () Bool)

(assert (=> b!1932982 (= e!1235519 e!1235520)))

(declare-fun res!864291 () Bool)

(assert (=> b!1932982 (=> (not res!864291) (not e!1235520))))

(assert (=> b!1932982 (= res!864291 (contains!3980 rules!3198 (get!6926 lt!740930)))))

(assert (= (and d!589530 c!314437) b!1932980))

(assert (= (and d!589530 (not c!314437)) b!1932978))

(assert (= (and b!1932978 c!314436) b!1932977))

(assert (= (and b!1932978 (not c!314436)) b!1932981))

(assert (= (and d!589530 (not res!864290)) b!1932982))

(assert (= (and b!1932982 res!864291) b!1932979))

(declare-fun m!2371501 () Bool)

(assert (=> b!1932977 m!2371501))

(declare-fun m!2371503 () Bool)

(assert (=> b!1932977 m!2371503))

(declare-fun m!2371505 () Bool)

(assert (=> b!1932977 m!2371505))

(declare-fun m!2371507 () Bool)

(assert (=> b!1932979 m!2371507))

(declare-fun m!2371509 () Bool)

(assert (=> d!589530 m!2371509))

(assert (=> d!589530 m!2371157))

(assert (=> b!1932982 m!2371507))

(assert (=> b!1932982 m!2371507))

(declare-fun m!2371511 () Bool)

(assert (=> b!1932982 m!2371511))

(assert (=> b!1932628 d!589530))

(declare-fun d!589532 () Bool)

(assert (=> d!589532 (= (list!8898 lt!740782) (list!8901 (c!314388 lt!740782)))))

(declare-fun bs!415116 () Bool)

(assert (= bs!415116 d!589532))

(declare-fun m!2371513 () Bool)

(assert (=> bs!415116 m!2371513))

(assert (=> b!1932628 d!589532))

(declare-fun d!589534 () Bool)

(declare-fun e!1235522 () Bool)

(assert (=> d!589534 e!1235522))

(declare-fun res!864292 () Bool)

(assert (=> d!589534 (=> (not res!864292) (not e!1235522))))

(assert (=> d!589534 (= res!864292 (isDefined!3851 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 (h!27372 tokens!598))))))))

(declare-fun lt!740931 () Unit!36333)

(assert (=> d!589534 (= lt!740931 (choose!12009 thiss!23328 rules!3198 lt!740787 (h!27372 tokens!598)))))

(assert (=> d!589534 (rulesInvariant!3161 thiss!23328 rules!3198)))

(assert (=> d!589534 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!762 thiss!23328 rules!3198 lt!740787 (h!27372 tokens!598)) lt!740931)))

(declare-fun b!1932983 () Bool)

(declare-fun res!864293 () Bool)

(assert (=> b!1932983 (=> (not res!864293) (not e!1235522))))

(assert (=> b!1932983 (= res!864293 (matchR!2634 (regex!3941 (get!6926 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 (h!27372 tokens!598)))))) (list!8898 (charsOf!2481 (h!27372 tokens!598)))))))

(declare-fun b!1932984 () Bool)

(assert (=> b!1932984 (= e!1235522 (= (rule!6150 (h!27372 tokens!598)) (get!6926 (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 (h!27372 tokens!598)))))))))

(assert (= (and d!589534 res!864292) b!1932983))

(assert (= (and b!1932983 res!864293) b!1932984))

(assert (=> d!589534 m!2371103))

(assert (=> d!589534 m!2371103))

(declare-fun m!2371515 () Bool)

(assert (=> d!589534 m!2371515))

(declare-fun m!2371517 () Bool)

(assert (=> d!589534 m!2371517))

(assert (=> d!589534 m!2371157))

(assert (=> b!1932983 m!2371103))

(assert (=> b!1932983 m!2371081))

(declare-fun m!2371519 () Bool)

(assert (=> b!1932983 m!2371519))

(assert (=> b!1932983 m!2371081))

(assert (=> b!1932983 m!2371103))

(declare-fun m!2371521 () Bool)

(assert (=> b!1932983 m!2371521))

(assert (=> b!1932983 m!2371519))

(declare-fun m!2371523 () Bool)

(assert (=> b!1932983 m!2371523))

(assert (=> b!1932984 m!2371103))

(assert (=> b!1932984 m!2371103))

(assert (=> b!1932984 m!2371521))

(assert (=> b!1932628 d!589534))

(declare-fun bs!415119 () Bool)

(declare-fun b!1933102 () Bool)

(assert (= bs!415119 (and b!1933102 b!1932610)))

(declare-fun lambda!75359 () Int)

(assert (=> bs!415119 (not (= lambda!75359 lambda!75338))))

(declare-fun bs!415120 () Bool)

(assert (= bs!415120 (and b!1933102 d!589458)))

(assert (=> bs!415120 (= lambda!75359 lambda!75344)))

(declare-fun b!1933106 () Bool)

(declare-fun e!1235603 () Bool)

(assert (=> b!1933106 (= e!1235603 true)))

(declare-fun b!1933105 () Bool)

(declare-fun e!1235602 () Bool)

(assert (=> b!1933105 (= e!1235602 e!1235603)))

(declare-fun b!1933104 () Bool)

(declare-fun e!1235601 () Bool)

(assert (=> b!1933104 (= e!1235601 e!1235602)))

(assert (=> b!1933102 e!1235601))

(assert (= b!1933105 b!1933106))

(assert (= b!1933104 b!1933105))

(assert (= (and b!1933102 (is-Cons!21970 rules!3198)) b!1933104))

(assert (=> b!1933106 (< (dynLambda!10673 order!13817 (toValue!5582 (transformation!3941 (h!27371 rules!3198)))) (dynLambda!10674 order!13819 lambda!75359))))

(assert (=> b!1933106 (< (dynLambda!10675 order!13821 (toChars!5441 (transformation!3941 (h!27371 rules!3198)))) (dynLambda!10674 order!13819 lambda!75359))))

(assert (=> b!1933102 true))

(declare-fun d!589536 () Bool)

(declare-fun c!314467 () Bool)

(assert (=> d!589536 (= c!314467 (is-Cons!21971 (t!180480 tokens!598)))))

(declare-fun e!1235597 () List!22051)

(assert (=> d!589536 (= (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354) e!1235597)))

(declare-fun b!1933096 () Bool)

(declare-fun e!1235599 () List!22051)

(declare-fun call!118900 () List!22051)

(declare-fun lt!740984 () List!22051)

(assert (=> b!1933096 (= e!1235599 (++!5900 call!118900 lt!740984))))

(declare-fun b!1933097 () Bool)

(declare-fun e!1235596 () List!22051)

(assert (=> b!1933097 (= e!1235596 (list!8898 (charsOf!2481 (h!27372 (t!180480 tokens!598)))))))

(declare-fun b!1933098 () Bool)

(declare-fun e!1235598 () List!22051)

(assert (=> b!1933098 (= e!1235598 call!118900)))

(declare-fun b!1933099 () Bool)

(declare-fun call!118899 () List!22051)

(assert (=> b!1933099 (= e!1235596 call!118899)))

(declare-fun call!118901 () BalanceConc!14488)

(declare-fun call!118902 () BalanceConc!14488)

(declare-fun bm!118894 () Bool)

(declare-fun c!314466 () Bool)

(assert (=> bm!118894 (= call!118899 (list!8898 (ite c!314466 call!118902 call!118901)))))

(declare-fun bm!118895 () Bool)

(declare-fun c!314464 () Bool)

(assert (=> bm!118895 (= call!118902 (charsOf!2481 (ite c!314466 (h!27372 (t!180480 tokens!598)) (ite c!314464 separatorToken!354 (h!27372 (t!180480 tokens!598))))))))

(declare-fun b!1933100 () Bool)

(declare-fun lt!740987 () Option!4559)

(assert (=> b!1933100 (= c!314464 (and (is-Some!4558 lt!740987) (not (= (_1!11765 (v!26669 lt!740987)) (h!27372 (t!180480 tokens!598))))))))

(assert (=> b!1933100 (= e!1235598 e!1235599)))

(declare-fun bm!118896 () Bool)

(declare-fun call!118903 () List!22051)

(assert (=> bm!118896 (= call!118903 call!118899)))

(declare-fun b!1933101 () Bool)

(assert (=> b!1933101 (= e!1235599 Nil!21969)))

(assert (=> b!1933101 (= (print!1524 thiss!23328 (singletonSeq!1925 (h!27372 (t!180480 tokens!598)))) (printTailRec!1030 thiss!23328 (singletonSeq!1925 (h!27372 (t!180480 tokens!598))) 0 (BalanceConc!14489 Empty!7336)))))

(declare-fun lt!740983 () Unit!36333)

(declare-fun Unit!36338 () Unit!36333)

(assert (=> b!1933101 (= lt!740983 Unit!36338)))

(declare-fun lt!740988 () Unit!36333)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!748 (LexerInterface!3554 List!22052 List!22051 List!22051) Unit!36333)

(assert (=> b!1933101 (= lt!740988 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!748 thiss!23328 rules!3198 call!118903 lt!740984))))

(assert (=> b!1933101 false))

(declare-fun lt!740986 () Unit!36333)

(declare-fun Unit!36339 () Unit!36333)

(assert (=> b!1933101 (= lt!740986 Unit!36339)))

(assert (=> b!1933102 (= e!1235597 e!1235598)))

(declare-fun lt!740985 () Unit!36333)

(declare-fun forallContained!717 (List!22053 Int Token!7434) Unit!36333)

(assert (=> b!1933102 (= lt!740985 (forallContained!717 (t!180480 tokens!598) lambda!75359 (h!27372 (t!180480 tokens!598))))))

(assert (=> b!1933102 (= lt!740984 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 (t!180480 tokens!598)) separatorToken!354))))

(assert (=> b!1933102 (= lt!740987 (maxPrefix!1992 thiss!23328 rules!3198 (++!5900 (list!8898 (charsOf!2481 (h!27372 (t!180480 tokens!598)))) lt!740984)))))

(assert (=> b!1933102 (= c!314466 (and (is-Some!4558 lt!740987) (= (_1!11765 (v!26669 lt!740987)) (h!27372 (t!180480 tokens!598)))))))

(declare-fun bm!118897 () Bool)

(assert (=> bm!118897 (= call!118901 call!118902)))

(declare-fun b!1933103 () Bool)

(assert (=> b!1933103 (= e!1235597 Nil!21969)))

(declare-fun bm!118898 () Bool)

(declare-fun c!314465 () Bool)

(assert (=> bm!118898 (= c!314465 c!314466)))

(assert (=> bm!118898 (= call!118900 (++!5900 e!1235596 (ite c!314466 lt!740984 call!118903)))))

(assert (= (and d!589536 c!314467) b!1933102))

(assert (= (and d!589536 (not c!314467)) b!1933103))

(assert (= (and b!1933102 c!314466) b!1933098))

(assert (= (and b!1933102 (not c!314466)) b!1933100))

(assert (= (and b!1933100 c!314464) b!1933096))

(assert (= (and b!1933100 (not c!314464)) b!1933101))

(assert (= (or b!1933096 b!1933101) bm!118897))

(assert (= (or b!1933096 b!1933101) bm!118896))

(assert (= (or b!1933098 bm!118897) bm!118895))

(assert (= (or b!1933098 bm!118896) bm!118894))

(assert (= (or b!1933098 b!1933096) bm!118898))

(assert (= (and bm!118898 c!314465) b!1933099))

(assert (= (and bm!118898 (not c!314465)) b!1933097))

(declare-fun m!2371673 () Bool)

(assert (=> b!1933102 m!2371673))

(declare-fun m!2371675 () Bool)

(assert (=> b!1933102 m!2371675))

(declare-fun m!2371677 () Bool)

(assert (=> b!1933102 m!2371677))

(assert (=> b!1933102 m!2371673))

(declare-fun m!2371679 () Bool)

(assert (=> b!1933102 m!2371679))

(declare-fun m!2371681 () Bool)

(assert (=> b!1933102 m!2371681))

(assert (=> b!1933102 m!2371679))

(assert (=> b!1933102 m!2371677))

(declare-fun m!2371683 () Bool)

(assert (=> b!1933102 m!2371683))

(declare-fun m!2371685 () Bool)

(assert (=> bm!118898 m!2371685))

(declare-fun m!2371687 () Bool)

(assert (=> bm!118895 m!2371687))

(declare-fun m!2371689 () Bool)

(assert (=> b!1933101 m!2371689))

(assert (=> b!1933101 m!2371689))

(declare-fun m!2371691 () Bool)

(assert (=> b!1933101 m!2371691))

(assert (=> b!1933101 m!2371689))

(declare-fun m!2371693 () Bool)

(assert (=> b!1933101 m!2371693))

(declare-fun m!2371695 () Bool)

(assert (=> b!1933101 m!2371695))

(declare-fun m!2371697 () Bool)

(assert (=> bm!118894 m!2371697))

(declare-fun m!2371699 () Bool)

(assert (=> b!1933096 m!2371699))

(assert (=> b!1933097 m!2371679))

(assert (=> b!1933097 m!2371679))

(assert (=> b!1933097 m!2371677))

(assert (=> b!1932628 d!589536))

(declare-fun d!589578 () Bool)

(declare-fun lt!740989 () BalanceConc!14488)

(assert (=> d!589578 (= (list!8898 lt!740989) (originalCharacters!4748 (h!27372 tokens!598)))))

(assert (=> d!589578 (= lt!740989 (dynLambda!10677 (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (value!123911 (h!27372 tokens!598))))))

(assert (=> d!589578 (= (charsOf!2481 (h!27372 tokens!598)) lt!740989)))

(declare-fun b_lambda!64253 () Bool)

(assert (=> (not b_lambda!64253) (not d!589578)))

(assert (=> d!589578 t!180498))

(declare-fun b_and!152195 () Bool)

(assert (= b_and!152171 (and (=> t!180498 result!143440) b_and!152195)))

(assert (=> d!589578 t!180500))

(declare-fun b_and!152197 () Bool)

(assert (= b_and!152173 (and (=> t!180500 result!143442) b_and!152197)))

(assert (=> d!589578 t!180502))

(declare-fun b_and!152199 () Bool)

(assert (= b_and!152175 (and (=> t!180502 result!143444) b_and!152199)))

(declare-fun m!2371701 () Bool)

(assert (=> d!589578 m!2371701))

(assert (=> d!589578 m!2371419))

(assert (=> b!1932628 d!589578))

(declare-fun d!589580 () Bool)

(declare-fun fromListB!1243 (List!22051) BalanceConc!14488)

(assert (=> d!589580 (= (seqFromList!2795 (originalCharacters!4748 (h!27372 tokens!598))) (fromListB!1243 (originalCharacters!4748 (h!27372 tokens!598))))))

(declare-fun bs!415122 () Bool)

(assert (= bs!415122 d!589580))

(declare-fun m!2371703 () Bool)

(assert (=> bs!415122 m!2371703))

(assert (=> b!1932628 d!589580))

(declare-fun b!1933117 () Bool)

(declare-fun res!864346 () Bool)

(declare-fun e!1235608 () Bool)

(assert (=> b!1933117 (=> (not res!864346) (not e!1235608))))

(declare-fun lt!740992 () List!22051)

(assert (=> b!1933117 (= res!864346 (= (size!17144 lt!740992) (+ (size!17144 lt!740787) (size!17144 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)))))))

(declare-fun b!1933115 () Bool)

(declare-fun e!1235609 () List!22051)

(assert (=> b!1933115 (= e!1235609 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))

(declare-fun b!1933118 () Bool)

(assert (=> b!1933118 (= e!1235608 (or (not (= (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354) Nil!21969)) (= lt!740992 lt!740787)))))

(declare-fun d!589582 () Bool)

(assert (=> d!589582 e!1235608))

(declare-fun res!864347 () Bool)

(assert (=> d!589582 (=> (not res!864347) (not e!1235608))))

(declare-fun content!3184 (List!22051) (Set C!10878))

(assert (=> d!589582 (= res!864347 (= (content!3184 lt!740992) (set.union (content!3184 lt!740787) (content!3184 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)))))))

(assert (=> d!589582 (= lt!740992 e!1235609)))

(declare-fun c!314470 () Bool)

(assert (=> d!589582 (= c!314470 (is-Nil!21969 lt!740787))))

(assert (=> d!589582 (= (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)) lt!740992)))

(declare-fun b!1933116 () Bool)

(assert (=> b!1933116 (= e!1235609 (Cons!21969 (h!27370 lt!740787) (++!5900 (t!180478 lt!740787) (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(assert (= (and d!589582 c!314470) b!1933115))

(assert (= (and d!589582 (not c!314470)) b!1933116))

(assert (= (and d!589582 res!864347) b!1933117))

(assert (= (and b!1933117 res!864346) b!1933118))

(declare-fun m!2371705 () Bool)

(assert (=> b!1933117 m!2371705))

(assert (=> b!1933117 m!2371445))

(assert (=> b!1933117 m!2371089))

(declare-fun m!2371707 () Bool)

(assert (=> b!1933117 m!2371707))

(declare-fun m!2371709 () Bool)

(assert (=> d!589582 m!2371709))

(declare-fun m!2371711 () Bool)

(assert (=> d!589582 m!2371711))

(assert (=> d!589582 m!2371089))

(declare-fun m!2371713 () Bool)

(assert (=> d!589582 m!2371713))

(assert (=> b!1933116 m!2371089))

(declare-fun m!2371715 () Bool)

(assert (=> b!1933116 m!2371715))

(assert (=> b!1932628 d!589582))

(declare-fun d!589584 () Bool)

(assert (=> d!589584 (= (isDefined!3851 lt!740785) (not (isEmpty!13556 lt!740785)))))

(declare-fun bs!415123 () Bool)

(assert (= bs!415123 d!589584))

(declare-fun m!2371717 () Bool)

(assert (=> bs!415123 m!2371717))

(assert (=> b!1932628 d!589584))

(declare-fun b!1933119 () Bool)

(declare-fun e!1235611 () Option!4559)

(declare-fun lt!740996 () Option!4559)

(declare-fun lt!740994 () Option!4559)

(assert (=> b!1933119 (= e!1235611 (ite (and (is-None!4558 lt!740996) (is-None!4558 lt!740994)) None!4558 (ite (is-None!4558 lt!740994) lt!740996 (ite (is-None!4558 lt!740996) lt!740994 (ite (>= (size!17141 (_1!11765 (v!26669 lt!740996))) (size!17141 (_1!11765 (v!26669 lt!740994)))) lt!740996 lt!740994)))))))

(declare-fun call!118904 () Option!4559)

(assert (=> b!1933119 (= lt!740996 call!118904)))

(assert (=> b!1933119 (= lt!740994 (maxPrefix!1992 thiss!23328 (t!180479 rules!3198) (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(declare-fun bm!118899 () Bool)

(assert (=> bm!118899 (= call!118904 (maxPrefixOneRule!1228 thiss!23328 (h!27371 rules!3198) (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(declare-fun b!1933120 () Bool)

(declare-fun res!864349 () Bool)

(declare-fun e!1235610 () Bool)

(assert (=> b!1933120 (=> (not res!864349) (not e!1235610))))

(declare-fun lt!740995 () Option!4559)

(assert (=> b!1933120 (= res!864349 (= (++!5900 (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740995)))) (_2!11765 (get!6925 lt!740995))) (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(declare-fun b!1933121 () Bool)

(declare-fun res!864354 () Bool)

(assert (=> b!1933121 (=> (not res!864354) (not e!1235610))))

(assert (=> b!1933121 (= res!864354 (matchR!2634 (regex!3941 (rule!6150 (_1!11765 (get!6925 lt!740995)))) (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740995))))))))

(declare-fun b!1933122 () Bool)

(declare-fun e!1235612 () Bool)

(assert (=> b!1933122 (= e!1235612 e!1235610)))

(declare-fun res!864350 () Bool)

(assert (=> b!1933122 (=> (not res!864350) (not e!1235610))))

(assert (=> b!1933122 (= res!864350 (isDefined!3852 lt!740995))))

(declare-fun b!1933123 () Bool)

(assert (=> b!1933123 (= e!1235610 (contains!3980 rules!3198 (rule!6150 (_1!11765 (get!6925 lt!740995)))))))

(declare-fun d!589586 () Bool)

(assert (=> d!589586 e!1235612))

(declare-fun res!864352 () Bool)

(assert (=> d!589586 (=> res!864352 e!1235612)))

(assert (=> d!589586 (= res!864352 (isEmpty!13555 lt!740995))))

(assert (=> d!589586 (= lt!740995 e!1235611)))

(declare-fun c!314471 () Bool)

(assert (=> d!589586 (= c!314471 (and (is-Cons!21970 rules!3198) (is-Nil!21970 (t!180479 rules!3198))))))

(declare-fun lt!740993 () Unit!36333)

(declare-fun lt!740997 () Unit!36333)

(assert (=> d!589586 (= lt!740993 lt!740997)))

(assert (=> d!589586 (isPrefix!1946 (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)) (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)))))

(assert (=> d!589586 (= lt!740997 (lemmaIsPrefixRefl!1264 (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)) (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))))))

(assert (=> d!589586 (rulesValidInductive!1345 thiss!23328 rules!3198)))

(assert (=> d!589586 (= (maxPrefix!1992 thiss!23328 rules!3198 (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354))) lt!740995)))

(declare-fun b!1933124 () Bool)

(declare-fun res!864348 () Bool)

(assert (=> b!1933124 (=> (not res!864348) (not e!1235610))))

(assert (=> b!1933124 (= res!864348 (= (value!123911 (_1!11765 (get!6925 lt!740995))) (apply!5716 (transformation!3941 (rule!6150 (_1!11765 (get!6925 lt!740995)))) (seqFromList!2795 (originalCharacters!4748 (_1!11765 (get!6925 lt!740995)))))))))

(declare-fun b!1933125 () Bool)

(declare-fun res!864351 () Bool)

(assert (=> b!1933125 (=> (not res!864351) (not e!1235610))))

(assert (=> b!1933125 (= res!864351 (= (list!8898 (charsOf!2481 (_1!11765 (get!6925 lt!740995)))) (originalCharacters!4748 (_1!11765 (get!6925 lt!740995)))))))

(declare-fun b!1933126 () Bool)

(assert (=> b!1933126 (= e!1235611 call!118904)))

(declare-fun b!1933127 () Bool)

(declare-fun res!864353 () Bool)

(assert (=> b!1933127 (=> (not res!864353) (not e!1235610))))

(assert (=> b!1933127 (= res!864353 (< (size!17144 (_2!11765 (get!6925 lt!740995))) (size!17144 (++!5900 lt!740787 (printWithSeparatorTokenWhenNeededList!593 thiss!23328 rules!3198 (t!180480 tokens!598) separatorToken!354)))))))

(assert (= (and d!589586 c!314471) b!1933126))

(assert (= (and d!589586 (not c!314471)) b!1933119))

(assert (= (or b!1933126 b!1933119) bm!118899))

(assert (= (and d!589586 (not res!864352)) b!1933122))

(assert (= (and b!1933122 res!864350) b!1933125))

(assert (= (and b!1933125 res!864351) b!1933127))

(assert (= (and b!1933127 res!864353) b!1933120))

(assert (= (and b!1933120 res!864349) b!1933124))

(assert (= (and b!1933124 res!864348) b!1933121))

(assert (= (and b!1933121 res!864354) b!1933123))

(declare-fun m!2371719 () Bool)

(assert (=> b!1933127 m!2371719))

(declare-fun m!2371721 () Bool)

(assert (=> b!1933127 m!2371721))

(assert (=> b!1933127 m!2371091))

(declare-fun m!2371723 () Bool)

(assert (=> b!1933127 m!2371723))

(assert (=> b!1933125 m!2371719))

(declare-fun m!2371725 () Bool)

(assert (=> b!1933125 m!2371725))

(assert (=> b!1933125 m!2371725))

(declare-fun m!2371727 () Bool)

(assert (=> b!1933125 m!2371727))

(assert (=> b!1933124 m!2371719))

(declare-fun m!2371729 () Bool)

(assert (=> b!1933124 m!2371729))

(assert (=> b!1933124 m!2371729))

(declare-fun m!2371731 () Bool)

(assert (=> b!1933124 m!2371731))

(assert (=> bm!118899 m!2371091))

(declare-fun m!2371733 () Bool)

(assert (=> bm!118899 m!2371733))

(assert (=> b!1933119 m!2371091))

(declare-fun m!2371735 () Bool)

(assert (=> b!1933119 m!2371735))

(assert (=> b!1933120 m!2371719))

(assert (=> b!1933120 m!2371725))

(assert (=> b!1933120 m!2371725))

(assert (=> b!1933120 m!2371727))

(assert (=> b!1933120 m!2371727))

(declare-fun m!2371737 () Bool)

(assert (=> b!1933120 m!2371737))

(declare-fun m!2371739 () Bool)

(assert (=> d!589586 m!2371739))

(assert (=> d!589586 m!2371091))

(assert (=> d!589586 m!2371091))

(declare-fun m!2371741 () Bool)

(assert (=> d!589586 m!2371741))

(assert (=> d!589586 m!2371091))

(assert (=> d!589586 m!2371091))

(declare-fun m!2371743 () Bool)

(assert (=> d!589586 m!2371743))

(assert (=> d!589586 m!2371467))

(assert (=> b!1933123 m!2371719))

(declare-fun m!2371745 () Bool)

(assert (=> b!1933123 m!2371745))

(assert (=> b!1933121 m!2371719))

(assert (=> b!1933121 m!2371725))

(assert (=> b!1933121 m!2371725))

(assert (=> b!1933121 m!2371727))

(assert (=> b!1933121 m!2371727))

(declare-fun m!2371747 () Bool)

(assert (=> b!1933121 m!2371747))

(declare-fun m!2371749 () Bool)

(assert (=> b!1933122 m!2371749))

(assert (=> b!1932628 d!589586))

(declare-fun b!1933128 () Bool)

(declare-fun lt!740998 () Unit!36333)

(declare-fun lt!740999 () Unit!36333)

(assert (=> b!1933128 (= lt!740998 lt!740999)))

(assert (=> b!1933128 (rulesInvariant!3161 thiss!23328 (t!180479 rules!3198))))

(assert (=> b!1933128 (= lt!740999 (lemmaInvariantOnRulesThenOnTail!275 thiss!23328 (h!27371 rules!3198) (t!180479 rules!3198)))))

(declare-fun e!1235613 () Option!4560)

(assert (=> b!1933128 (= e!1235613 (getRuleFromTag!762 thiss!23328 (t!180479 rules!3198) (tag!4393 (rule!6150 separatorToken!354))))))

(declare-fun b!1933129 () Bool)

(declare-fun e!1235616 () Option!4560)

(assert (=> b!1933129 (= e!1235616 e!1235613)))

(declare-fun c!314472 () Bool)

(assert (=> b!1933129 (= c!314472 (and (is-Cons!21970 rules!3198) (not (= (tag!4393 (h!27371 rules!3198)) (tag!4393 (rule!6150 separatorToken!354))))))))

(declare-fun b!1933130 () Bool)

(declare-fun e!1235615 () Bool)

(declare-fun lt!741000 () Option!4560)

(assert (=> b!1933130 (= e!1235615 (= (tag!4393 (get!6926 lt!741000)) (tag!4393 (rule!6150 separatorToken!354))))))

(declare-fun d!589588 () Bool)

(declare-fun e!1235614 () Bool)

(assert (=> d!589588 e!1235614))

(declare-fun res!864355 () Bool)

(assert (=> d!589588 (=> res!864355 e!1235614)))

(assert (=> d!589588 (= res!864355 (isEmpty!13556 lt!741000))))

(assert (=> d!589588 (= lt!741000 e!1235616)))

(declare-fun c!314473 () Bool)

(assert (=> d!589588 (= c!314473 (and (is-Cons!21970 rules!3198) (= (tag!4393 (h!27371 rules!3198)) (tag!4393 (rule!6150 separatorToken!354)))))))

(assert (=> d!589588 (rulesInvariant!3161 thiss!23328 rules!3198)))

(assert (=> d!589588 (= (getRuleFromTag!762 thiss!23328 rules!3198 (tag!4393 (rule!6150 separatorToken!354))) lt!741000)))

(declare-fun b!1933131 () Bool)

(assert (=> b!1933131 (= e!1235616 (Some!4559 (h!27371 rules!3198)))))

(declare-fun b!1933132 () Bool)

(assert (=> b!1933132 (= e!1235613 None!4559)))

(declare-fun b!1933133 () Bool)

(assert (=> b!1933133 (= e!1235614 e!1235615)))

(declare-fun res!864356 () Bool)

(assert (=> b!1933133 (=> (not res!864356) (not e!1235615))))

(assert (=> b!1933133 (= res!864356 (contains!3980 rules!3198 (get!6926 lt!741000)))))

(assert (= (and d!589588 c!314473) b!1933131))

(assert (= (and d!589588 (not c!314473)) b!1933129))

(assert (= (and b!1933129 c!314472) b!1933128))

(assert (= (and b!1933129 (not c!314472)) b!1933132))

(assert (= (and d!589588 (not res!864355)) b!1933133))

(assert (= (and b!1933133 res!864356) b!1933130))

(assert (=> b!1933128 m!2371501))

(assert (=> b!1933128 m!2371503))

(declare-fun m!2371751 () Bool)

(assert (=> b!1933128 m!2371751))

(declare-fun m!2371753 () Bool)

(assert (=> b!1933130 m!2371753))

(declare-fun m!2371755 () Bool)

(assert (=> d!589588 m!2371755))

(assert (=> d!589588 m!2371157))

(assert (=> b!1933133 m!2371753))

(assert (=> b!1933133 m!2371753))

(declare-fun m!2371757 () Bool)

(assert (=> b!1933133 m!2371757))

(assert (=> b!1932628 d!589588))

(declare-fun d!589590 () Bool)

(declare-fun lt!741002 () Bool)

(declare-fun e!1235617 () Bool)

(assert (=> d!589590 (= lt!741002 e!1235617)))

(declare-fun res!864359 () Bool)

(assert (=> d!589590 (=> (not res!864359) (not e!1235617))))

(assert (=> d!589590 (= res!864359 (= (list!8900 (_1!11767 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 (h!27372 tokens!598)))))) (list!8900 (singletonSeq!1925 (h!27372 tokens!598)))))))

(declare-fun e!1235618 () Bool)

(assert (=> d!589590 (= lt!741002 e!1235618)))

(declare-fun res!864357 () Bool)

(assert (=> d!589590 (=> (not res!864357) (not e!1235618))))

(declare-fun lt!741001 () tuple2!20596)

(assert (=> d!589590 (= res!864357 (= (size!17143 (_1!11767 lt!741001)) 1))))

(assert (=> d!589590 (= lt!741001 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 (h!27372 tokens!598)))))))

(assert (=> d!589590 (not (isEmpty!13551 rules!3198))))

(assert (=> d!589590 (= (rulesProduceIndividualToken!1726 thiss!23328 rules!3198 (h!27372 tokens!598)) lt!741002)))

(declare-fun b!1933134 () Bool)

(declare-fun res!864358 () Bool)

(assert (=> b!1933134 (=> (not res!864358) (not e!1235618))))

(assert (=> b!1933134 (= res!864358 (= (apply!5714 (_1!11767 lt!741001) 0) (h!27372 tokens!598)))))

(declare-fun b!1933135 () Bool)

(assert (=> b!1933135 (= e!1235618 (isEmpty!13553 (_2!11767 lt!741001)))))

(declare-fun b!1933136 () Bool)

(assert (=> b!1933136 (= e!1235617 (isEmpty!13553 (_2!11767 (lex!1578 thiss!23328 rules!3198 (print!1524 thiss!23328 (singletonSeq!1925 (h!27372 tokens!598)))))))))

(assert (= (and d!589590 res!864357) b!1933134))

(assert (= (and b!1933134 res!864358) b!1933135))

(assert (= (and d!589590 res!864359) b!1933136))

(assert (=> d!589590 m!2371153))

(declare-fun m!2371759 () Bool)

(assert (=> d!589590 m!2371759))

(assert (=> d!589590 m!2371137))

(declare-fun m!2371761 () Bool)

(assert (=> d!589590 m!2371761))

(declare-fun m!2371763 () Bool)

(assert (=> d!589590 m!2371763))

(assert (=> d!589590 m!2371137))

(declare-fun m!2371765 () Bool)

(assert (=> d!589590 m!2371765))

(declare-fun m!2371767 () Bool)

(assert (=> d!589590 m!2371767))

(assert (=> d!589590 m!2371137))

(assert (=> d!589590 m!2371765))

(declare-fun m!2371769 () Bool)

(assert (=> b!1933134 m!2371769))

(declare-fun m!2371771 () Bool)

(assert (=> b!1933135 m!2371771))

(assert (=> b!1933136 m!2371137))

(assert (=> b!1933136 m!2371137))

(assert (=> b!1933136 m!2371765))

(assert (=> b!1933136 m!2371765))

(assert (=> b!1933136 m!2371767))

(declare-fun m!2371773 () Bool)

(assert (=> b!1933136 m!2371773))

(assert (=> b!1932607 d!589590))

(declare-fun b!1933137 () Bool)

(declare-fun e!1235621 () Bool)

(assert (=> b!1933137 (= e!1235621 (inv!17 (value!123911 (h!27372 tokens!598))))))

(declare-fun b!1933138 () Bool)

(declare-fun e!1235620 () Bool)

(assert (=> b!1933138 (= e!1235620 (inv!16 (value!123911 (h!27372 tokens!598))))))

(declare-fun b!1933139 () Bool)

(declare-fun e!1235619 () Bool)

(assert (=> b!1933139 (= e!1235619 (inv!15 (value!123911 (h!27372 tokens!598))))))

(declare-fun b!1933140 () Bool)

(assert (=> b!1933140 (= e!1235620 e!1235621)))

(declare-fun c!314474 () Bool)

(assert (=> b!1933140 (= c!314474 (is-IntegerValue!12232 (value!123911 (h!27372 tokens!598))))))

(declare-fun d!589592 () Bool)

(declare-fun c!314475 () Bool)

(assert (=> d!589592 (= c!314475 (is-IntegerValue!12231 (value!123911 (h!27372 tokens!598))))))

(assert (=> d!589592 (= (inv!21 (value!123911 (h!27372 tokens!598))) e!1235620)))

(declare-fun b!1933141 () Bool)

(declare-fun res!864360 () Bool)

(assert (=> b!1933141 (=> res!864360 e!1235619)))

(assert (=> b!1933141 (= res!864360 (not (is-IntegerValue!12233 (value!123911 (h!27372 tokens!598)))))))

(assert (=> b!1933141 (= e!1235621 e!1235619)))

(assert (= (and d!589592 c!314475) b!1933138))

(assert (= (and d!589592 (not c!314475)) b!1933140))

(assert (= (and b!1933140 c!314474) b!1933137))

(assert (= (and b!1933140 (not c!314474)) b!1933141))

(assert (= (and b!1933141 (not res!864360)) b!1933139))

(declare-fun m!2371775 () Bool)

(assert (=> b!1933137 m!2371775))

(declare-fun m!2371777 () Bool)

(assert (=> b!1933138 m!2371777))

(declare-fun m!2371779 () Bool)

(assert (=> b!1933139 m!2371779))

(assert (=> b!1932618 d!589592))

(declare-fun d!589594 () Bool)

(declare-fun res!864365 () Bool)

(declare-fun e!1235626 () Bool)

(assert (=> d!589594 (=> res!864365 e!1235626)))

(assert (=> d!589594 (= res!864365 (not (is-Cons!21970 rules!3198)))))

(assert (=> d!589594 (= (sepAndNonSepRulesDisjointChars!1039 rules!3198 rules!3198) e!1235626)))

(declare-fun b!1933146 () Bool)

(declare-fun e!1235627 () Bool)

(assert (=> b!1933146 (= e!1235626 e!1235627)))

(declare-fun res!864366 () Bool)

(assert (=> b!1933146 (=> (not res!864366) (not e!1235627))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!455 (Rule!7682 List!22052) Bool)

(assert (=> b!1933146 (= res!864366 (ruleDisjointCharsFromAllFromOtherType!455 (h!27371 rules!3198) rules!3198))))

(declare-fun b!1933147 () Bool)

(assert (=> b!1933147 (= e!1235627 (sepAndNonSepRulesDisjointChars!1039 rules!3198 (t!180479 rules!3198)))))

(assert (= (and d!589594 (not res!864365)) b!1933146))

(assert (= (and b!1933146 res!864366) b!1933147))

(declare-fun m!2371781 () Bool)

(assert (=> b!1933146 m!2371781))

(declare-fun m!2371783 () Bool)

(assert (=> b!1933147 m!2371783))

(assert (=> b!1932629 d!589594))

(declare-fun d!589596 () Bool)

(assert (=> d!589596 (= (get!6925 lt!740786) (v!26669 lt!740786))))

(assert (=> b!1932608 d!589596))

(declare-fun b!1933152 () Bool)

(declare-fun e!1235630 () Bool)

(declare-fun tp_is_empty!9147 () Bool)

(declare-fun tp!551616 () Bool)

(assert (=> b!1933152 (= e!1235630 (and tp_is_empty!9147 tp!551616))))

(assert (=> b!1932631 (= tp!551561 e!1235630)))

(assert (= (and b!1932631 (is-Cons!21969 (originalCharacters!4748 separatorToken!354))) b!1933152))

(declare-fun b!1933165 () Bool)

(declare-fun e!1235633 () Bool)

(declare-fun tp!551630 () Bool)

(assert (=> b!1933165 (= e!1235633 tp!551630)))

(declare-fun b!1933166 () Bool)

(declare-fun tp!551631 () Bool)

(declare-fun tp!551627 () Bool)

(assert (=> b!1933166 (= e!1235633 (and tp!551631 tp!551627))))

(declare-fun b!1933164 () Bool)

(declare-fun tp!551629 () Bool)

(declare-fun tp!551628 () Bool)

(assert (=> b!1933164 (= e!1235633 (and tp!551629 tp!551628))))

(assert (=> b!1932623 (= tp!551554 e!1235633)))

(declare-fun b!1933163 () Bool)

(assert (=> b!1933163 (= e!1235633 tp_is_empty!9147)))

(assert (= (and b!1932623 (is-ElementMatch!5366 (regex!3941 (h!27371 rules!3198)))) b!1933163))

(assert (= (and b!1932623 (is-Concat!9444 (regex!3941 (h!27371 rules!3198)))) b!1933164))

(assert (= (and b!1932623 (is-Star!5366 (regex!3941 (h!27371 rules!3198)))) b!1933165))

(assert (= (and b!1932623 (is-Union!5366 (regex!3941 (h!27371 rules!3198)))) b!1933166))

(declare-fun b!1933169 () Bool)

(declare-fun e!1235634 () Bool)

(declare-fun tp!551635 () Bool)

(assert (=> b!1933169 (= e!1235634 tp!551635)))

(declare-fun b!1933170 () Bool)

(declare-fun tp!551636 () Bool)

(declare-fun tp!551632 () Bool)

(assert (=> b!1933170 (= e!1235634 (and tp!551636 tp!551632))))

(declare-fun b!1933168 () Bool)

(declare-fun tp!551634 () Bool)

(declare-fun tp!551633 () Bool)

(assert (=> b!1933168 (= e!1235634 (and tp!551634 tp!551633))))

(assert (=> b!1932625 (= tp!551564 e!1235634)))

(declare-fun b!1933167 () Bool)

(assert (=> b!1933167 (= e!1235634 tp_is_empty!9147)))

(assert (= (and b!1932625 (is-ElementMatch!5366 (regex!3941 (rule!6150 (h!27372 tokens!598))))) b!1933167))

(assert (= (and b!1932625 (is-Concat!9444 (regex!3941 (rule!6150 (h!27372 tokens!598))))) b!1933168))

(assert (= (and b!1932625 (is-Star!5366 (regex!3941 (rule!6150 (h!27372 tokens!598))))) b!1933169))

(assert (= (and b!1932625 (is-Union!5366 (regex!3941 (rule!6150 (h!27372 tokens!598))))) b!1933170))

(declare-fun b!1933173 () Bool)

(declare-fun e!1235635 () Bool)

(declare-fun tp!551640 () Bool)

(assert (=> b!1933173 (= e!1235635 tp!551640)))

(declare-fun b!1933174 () Bool)

(declare-fun tp!551641 () Bool)

(declare-fun tp!551637 () Bool)

(assert (=> b!1933174 (= e!1235635 (and tp!551641 tp!551637))))

(declare-fun b!1933172 () Bool)

(declare-fun tp!551639 () Bool)

(declare-fun tp!551638 () Bool)

(assert (=> b!1933172 (= e!1235635 (and tp!551639 tp!551638))))

(assert (=> b!1932626 (= tp!551553 e!1235635)))

(declare-fun b!1933171 () Bool)

(assert (=> b!1933171 (= e!1235635 tp_is_empty!9147)))

(assert (= (and b!1932626 (is-ElementMatch!5366 (regex!3941 (rule!6150 separatorToken!354)))) b!1933171))

(assert (= (and b!1932626 (is-Concat!9444 (regex!3941 (rule!6150 separatorToken!354)))) b!1933172))

(assert (= (and b!1932626 (is-Star!5366 (regex!3941 (rule!6150 separatorToken!354)))) b!1933173))

(assert (= (and b!1932626 (is-Union!5366 (regex!3941 (rule!6150 separatorToken!354)))) b!1933174))

(declare-fun b!1933187 () Bool)

(declare-fun b_free!55405 () Bool)

(declare-fun b_next!56109 () Bool)

(assert (=> b!1933187 (= b_free!55405 (not b_next!56109))))

(declare-fun tb!118833 () Bool)

(declare-fun t!180544 () Bool)

(assert (=> (and b!1933187 (= (toValue!5582 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180544) tb!118833))

(declare-fun result!143494 () Bool)

(assert (= result!143494 result!143446))

(assert (=> d!589512 t!180544))

(declare-fun tb!118835 () Bool)

(declare-fun t!180546 () Bool)

(assert (=> (and b!1933187 (= (toValue!5582 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180546) tb!118835))

(declare-fun result!143496 () Bool)

(assert (= result!143496 result!143454))

(assert (=> d!589512 t!180546))

(assert (=> d!589522 t!180544))

(declare-fun b_and!152201 () Bool)

(declare-fun tp!551651 () Bool)

(assert (=> b!1933187 (= tp!551651 (and (=> t!180544 result!143494) (=> t!180546 result!143496) b_and!152201))))

(declare-fun b_free!55407 () Bool)

(declare-fun b_next!56111 () Bool)

(assert (=> b!1933187 (= b_free!55407 (not b_next!56111))))

(declare-fun t!180548 () Bool)

(declare-fun tb!118837 () Bool)

(assert (=> (and b!1933187 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180548) tb!118837))

(declare-fun result!143498 () Bool)

(assert (= result!143498 result!143440))

(assert (=> d!589578 t!180548))

(assert (=> b!1932899 t!180548))

(declare-fun tb!118839 () Bool)

(declare-fun t!180550 () Bool)

(assert (=> (and b!1933187 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180550) tb!118839))

(declare-fun result!143500 () Bool)

(assert (= result!143500 result!143460))

(assert (=> d!589522 t!180550))

(declare-fun t!180552 () Bool)

(declare-fun tb!118841 () Bool)

(assert (=> (and b!1933187 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354)))) t!180552) tb!118841))

(declare-fun result!143502 () Bool)

(assert (= result!143502 result!143432))

(assert (=> d!589526 t!180552))

(assert (=> b!1932810 t!180552))

(declare-fun tp!551653 () Bool)

(declare-fun b_and!152203 () Bool)

(assert (=> b!1933187 (= tp!551653 (and (=> t!180550 result!143500) (=> t!180552 result!143502) (=> t!180548 result!143498) b_and!152203))))

(declare-fun e!1235645 () Bool)

(assert (=> b!1933187 (= e!1235645 (and tp!551651 tp!551653))))

(declare-fun tp!551652 () Bool)

(declare-fun e!1235646 () Bool)

(declare-fun b!1933186 () Bool)

(assert (=> b!1933186 (= e!1235646 (and tp!551652 (inv!29061 (tag!4393 (h!27371 (t!180479 rules!3198)))) (inv!29065 (transformation!3941 (h!27371 (t!180479 rules!3198)))) e!1235645))))

(declare-fun b!1933185 () Bool)

(declare-fun e!1235647 () Bool)

(declare-fun tp!551650 () Bool)

(assert (=> b!1933185 (= e!1235647 (and e!1235646 tp!551650))))

(assert (=> b!1932627 (= tp!551555 e!1235647)))

(assert (= b!1933186 b!1933187))

(assert (= b!1933185 b!1933186))

(assert (= (and b!1932627 (is-Cons!21970 (t!180479 rules!3198))) b!1933185))

(declare-fun m!2371785 () Bool)

(assert (=> b!1933186 m!2371785))

(declare-fun m!2371787 () Bool)

(assert (=> b!1933186 m!2371787))

(declare-fun b!1933217 () Bool)

(declare-fun b_free!55409 () Bool)

(declare-fun b_next!56113 () Bool)

(assert (=> b!1933217 (= b_free!55409 (not b_next!56113))))

(declare-fun t!180554 () Bool)

(declare-fun tb!118843 () Bool)

(assert (=> (and b!1933217 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180554) tb!118843))

(declare-fun result!143506 () Bool)

(assert (= result!143506 result!143446))

(assert (=> d!589512 t!180554))

(declare-fun t!180556 () Bool)

(declare-fun tb!118845 () Bool)

(assert (=> (and b!1933217 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180556) tb!118845))

(declare-fun result!143508 () Bool)

(assert (= result!143508 result!143454))

(assert (=> d!589512 t!180556))

(assert (=> d!589522 t!180554))

(declare-fun b_and!152205 () Bool)

(declare-fun tp!551666 () Bool)

(assert (=> b!1933217 (= tp!551666 (and (=> t!180554 result!143506) (=> t!180556 result!143508) b_and!152205))))

(declare-fun b_free!55411 () Bool)

(declare-fun b_next!56115 () Bool)

(assert (=> b!1933217 (= b_free!55411 (not b_next!56115))))

(declare-fun t!180558 () Bool)

(declare-fun tb!118847 () Bool)

(assert (=> (and b!1933217 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180558) tb!118847))

(declare-fun result!143510 () Bool)

(assert (= result!143510 result!143440))

(assert (=> d!589578 t!180558))

(assert (=> b!1932899 t!180558))

(declare-fun t!180560 () Bool)

(declare-fun tb!118849 () Bool)

(assert (=> (and b!1933217 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598))))) t!180560) tb!118849))

(declare-fun result!143512 () Bool)

(assert (= result!143512 result!143460))

(assert (=> d!589522 t!180560))

(declare-fun t!180562 () Bool)

(declare-fun tb!118851 () Bool)

(assert (=> (and b!1933217 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354)))) t!180562) tb!118851))

(declare-fun result!143514 () Bool)

(assert (= result!143514 result!143432))

(assert (=> d!589526 t!180562))

(assert (=> b!1932810 t!180562))

(declare-fun b_and!152207 () Bool)

(declare-fun tp!551665 () Bool)

(assert (=> b!1933217 (= tp!551665 (and (=> t!180560 result!143512) (=> t!180562 result!143514) (=> t!180558 result!143510) b_and!152207))))

(declare-fun e!1235668 () Bool)

(assert (=> b!1933217 (= e!1235668 (and tp!551666 tp!551665))))

(declare-fun tp!551664 () Bool)

(declare-fun b!1933215 () Bool)

(declare-fun e!1235669 () Bool)

(declare-fun e!1235671 () Bool)

(assert (=> b!1933215 (= e!1235669 (and (inv!21 (value!123911 (h!27372 (t!180480 tokens!598)))) e!1235671 tp!551664))))

(declare-fun e!1235666 () Bool)

(declare-fun tp!551668 () Bool)

(declare-fun b!1933214 () Bool)

(assert (=> b!1933214 (= e!1235666 (and (inv!29064 (h!27372 (t!180480 tokens!598))) e!1235669 tp!551668))))

(declare-fun b!1933216 () Bool)

(declare-fun tp!551667 () Bool)

(assert (=> b!1933216 (= e!1235671 (and tp!551667 (inv!29061 (tag!4393 (rule!6150 (h!27372 (t!180480 tokens!598))))) (inv!29065 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) e!1235668))))

(assert (=> b!1932617 (= tp!551562 e!1235666)))

(assert (= b!1933216 b!1933217))

(assert (= b!1933215 b!1933216))

(assert (= b!1933214 b!1933215))

(assert (= (and b!1932617 (is-Cons!21971 (t!180480 tokens!598))) b!1933214))

(declare-fun m!2371789 () Bool)

(assert (=> b!1933215 m!2371789))

(declare-fun m!2371791 () Bool)

(assert (=> b!1933214 m!2371791))

(declare-fun m!2371793 () Bool)

(assert (=> b!1933216 m!2371793))

(declare-fun m!2371795 () Bool)

(assert (=> b!1933216 m!2371795))

(declare-fun b!1933218 () Bool)

(declare-fun e!1235672 () Bool)

(declare-fun tp!551669 () Bool)

(assert (=> b!1933218 (= e!1235672 (and tp_is_empty!9147 tp!551669))))

(assert (=> b!1932618 (= tp!551560 e!1235672)))

(assert (= (and b!1932618 (is-Cons!21969 (originalCharacters!4748 (h!27372 tokens!598)))) b!1933218))

(declare-fun b_lambda!64255 () Bool)

(assert (= b_lambda!64241 (or (and b!1932620 b_free!55389 (= (toValue!5582 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1933187 b_free!55405 (= (toValue!5582 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55385) (and b!1933217 b_free!55409 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55381 (= (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64255)))

(declare-fun b_lambda!64257 () Bool)

(assert (= b_lambda!64233 (or (and b!1933217 b_free!55411 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932620 b_free!55391 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55387) (and b!1933187 b_free!55407 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55383 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64257)))

(declare-fun b_lambda!64259 () Bool)

(assert (= b_lambda!64229 (or b!1932610 b_lambda!64259)))

(declare-fun bs!415124 () Bool)

(declare-fun d!589598 () Bool)

(assert (= bs!415124 (and d!589598 b!1932610)))

(assert (=> bs!415124 (= (dynLambda!10676 lambda!75338 (h!27372 tokens!598)) (not (isSeparator!3941 (rule!6150 (h!27372 tokens!598)))))))

(assert (=> b!1932804 d!589598))

(declare-fun b_lambda!64261 () Bool)

(assert (= b_lambda!64239 (or (and b!1933217 b_free!55411 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932620 b_free!55391 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55387) (and b!1933187 b_free!55407 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55383 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64261)))

(declare-fun b_lambda!64263 () Bool)

(assert (= b_lambda!64237 (or (and b!1932620 b_free!55389 (= (toValue!5582 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1933187 b_free!55405 (= (toValue!5582 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55385) (and b!1933217 b_free!55409 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55381 (= (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64263)))

(declare-fun b_lambda!64265 () Bool)

(assert (= b_lambda!64253 (or (and b!1933217 b_free!55411 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932620 b_free!55391 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55387) (and b!1933187 b_free!55407 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55383 (= (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))) (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64265)))

(declare-fun b_lambda!64267 () Bool)

(assert (= b_lambda!64235 (or (and b!1932620 b_free!55389 (= (toValue!5582 (transformation!3941 (h!27371 rules!3198))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1933187 b_free!55405 (= (toValue!5582 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932622 b_free!55385) (and b!1933217 b_free!55409 (= (toValue!5582 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) (and b!1932616 b_free!55381 (= (toValue!5582 (transformation!3941 (rule!6150 separatorToken!354))) (toValue!5582 (transformation!3941 (rule!6150 (h!27372 tokens!598)))))) b_lambda!64267)))

(declare-fun b_lambda!64269 () Bool)

(assert (= b_lambda!64243 (or (and b!1932616 b_free!55383) (and b!1932622 b_free!55387 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1932620 b_free!55391 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1933187 b_free!55407 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1933217 b_free!55411 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) b_lambda!64269)))

(declare-fun b_lambda!64271 () Bool)

(assert (= b_lambda!64231 (or (and b!1932616 b_free!55383) (and b!1932622 b_free!55387 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 tokens!598)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1932620 b_free!55391 (= (toChars!5441 (transformation!3941 (h!27371 rules!3198))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1933187 b_free!55407 (= (toChars!5441 (transformation!3941 (h!27371 (t!180479 rules!3198)))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) (and b!1933217 b_free!55411 (= (toChars!5441 (transformation!3941 (rule!6150 (h!27372 (t!180480 tokens!598))))) (toChars!5441 (transformation!3941 (rule!6150 separatorToken!354))))) b_lambda!64271)))

(push 1)

(assert (not b!1933119))

(assert (not d!589510))

(assert (not bm!118894))

(assert (not d!589514))

(assert (not b!1933174))

(assert (not b!1932864))

(assert (not b!1933124))

(assert (not b!1933138))

(assert b_and!152207)

(assert (not b!1932783))

(assert (not b!1932821))

(assert (not d!589588))

(assert (not d!589526))

(assert (not d!589500))

(assert (not d!589590))

(assert (not b!1933097))

(assert (not b!1932796))

(assert (not b!1932834))

(assert (not b_next!56085))

(assert (not d!589502))

(assert b_and!152195)

(assert (not b_lambda!64271))

(assert (not b!1932782))

(assert (not b!1933214))

(assert (not b!1933147))

(assert (not b!1932891))

(assert b_and!152165)

(assert (not bm!118895))

(assert (not d!589482))

(assert (not b!1933152))

(assert (not b!1932885))

(assert (not b!1933102))

(assert (not b!1932946))

(assert (not b!1932871))

(assert (not b!1933135))

(assert (not d!589508))

(assert (not b!1933218))

(assert (not bm!118879))

(assert (not b!1932979))

(assert (not b!1932797))

(assert (not b!1932863))

(assert (not bm!118880))

(assert (not b!1933139))

(assert (not b!1932874))

(assert (not b!1932952))

(assert (not d!589484))

(assert (not b!1933133))

(assert (not bm!118899))

(assert b_and!152169)

(assert (not b!1933096))

(assert (not b_lambda!64265))

(assert (not b!1933134))

(assert (not b_next!56089))

(assert (not b!1933166))

(assert b_and!152201)

(assert (not b!1932761))

(assert (not b!1932900))

(assert (not d!589458))

(assert (not b_next!56115))

(assert (not b!1933117))

(assert (not b!1932949))

(assert (not b_next!56091))

(assert b_and!152199)

(assert b_and!152203)

(assert (not b!1932805))

(assert (not b!1932888))

(assert b_and!152197)

(assert (not b_next!56087))

(assert (not b!1933164))

(assert (not b!1932784))

(assert (not b_next!56093))

(assert (not b!1932831))

(assert (not d!589518))

(assert (not b!1933120))

(assert (not b_lambda!64269))

(assert (not b!1933186))

(assert (not b!1932811))

(assert (not b!1932899))

(assert (not tb!118803))

(assert (not d!589476))

(assert b_and!152167)

(assert (not b!1932948))

(assert (not b_next!56109))

(assert (not b!1932895))

(assert (not tb!118797))

(assert (not d!589494))

(assert (not b!1933136))

(assert (not b!1933137))

(assert (not d!589468))

(assert (not b!1933146))

(assert (not b!1933128))

(assert (not b!1933173))

(assert b_and!152205)

(assert (not d!589586))

(assert (not bm!118883))

(assert (not b_lambda!64255))

(assert (not b!1933123))

(assert (not b_next!56095))

(assert (not d!589528))

(assert (not b!1932883))

(assert (not b!1932795))

(assert (not d!589584))

(assert (not b!1932982))

(assert (not b!1932771))

(assert (not bm!118898))

(assert (not d!589486))

(assert (not b!1933169))

(assert (not b!1932950))

(assert (not b!1932870))

(assert (not b!1933215))

(assert (not d!589530))

(assert (not b!1932829))

(assert (not b!1932944))

(assert (not b_next!56113))

(assert (not tb!118785))

(assert (not d!589582))

(assert (not b!1933101))

(assert (not b!1932958))

(assert (not b!1933125))

(assert (not d!589534))

(assert tp_is_empty!9147)

(assert (not b!1932879))

(assert (not b!1932810))

(assert (not b!1933168))

(assert (not b!1933121))

(assert (not b!1932963))

(assert (not d!589496))

(assert (not b!1933122))

(assert (not b!1932983))

(assert (not b!1933130))

(assert (not d!589524))

(assert (not b!1933165))

(assert (not b!1932977))

(assert (not d!589522))

(assert (not b!1932945))

(assert (not b!1932892))

(assert (not d!589480))

(assert (not d!589512))

(assert (not b_next!56111))

(assert (not b!1933170))

(assert (not b!1932964))

(assert (not b!1932762))

(assert (not b!1932816))

(assert (not b!1932884))

(assert (not b!1932984))

(assert (not b!1932882))

(assert (not b!1933216))

(assert (not b!1933172))

(assert (not b!1932901))

(assert (not tb!118809))

(assert (not d!589578))

(assert (not d!589580))

(assert (not tb!118791))

(assert (not b_lambda!64259))

(assert (not b!1933116))

(assert (not b!1932947))

(assert (not b!1932867))

(assert (not b!1933104))

(assert (not b_lambda!64267))

(assert (not b_lambda!64257))

(assert (not d!589532))

(assert (not b!1933185))

(assert (not d!589488))

(assert (not d!589520))

(assert (not b_lambda!64263))

(assert (not b!1933127))

(assert (not b_lambda!64261))

(assert (not b!1932898))

(check-sat)

(pop 1)

(push 1)

(assert b_and!152207)

(assert b_and!152165)

(assert b_and!152169)

(assert (not b_next!56115))

(assert (not b_next!56113))

(assert (not b_next!56111))

(assert (not b_next!56085))

(assert b_and!152195)

(assert (not b_next!56089))

(assert b_and!152201)

(assert (not b_next!56091))

(assert b_and!152199)

(assert b_and!152203)

(assert b_and!152197)

(assert (not b_next!56087))

(assert (not b_next!56093))

(assert b_and!152167)

(assert (not b_next!56109))

(assert b_and!152205)

(assert (not b_next!56095))

(check-sat)

(pop 1)

