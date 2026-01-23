; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77270 () Bool)

(assert start!77270)

(declare-fun b!857947 () Bool)

(declare-fun b_free!26065 () Bool)

(declare-fun b_next!26129 () Bool)

(assert (=> b!857947 (= b_free!26065 (not b_next!26129))))

(declare-fun tp!270650 () Bool)

(declare-fun b_and!76085 () Bool)

(assert (=> b!857947 (= tp!270650 b_and!76085)))

(declare-fun b_free!26067 () Bool)

(declare-fun b_next!26131 () Bool)

(assert (=> b!857947 (= b_free!26067 (not b_next!26131))))

(declare-fun tp!270656 () Bool)

(declare-fun b_and!76087 () Bool)

(assert (=> b!857947 (= tp!270656 b_and!76087)))

(declare-fun b!857942 () Bool)

(declare-fun b_free!26069 () Bool)

(declare-fun b_next!26133 () Bool)

(assert (=> b!857942 (= b_free!26069 (not b_next!26133))))

(declare-fun tp!270657 () Bool)

(declare-fun b_and!76089 () Bool)

(assert (=> b!857942 (= tp!270657 b_and!76089)))

(declare-fun b_free!26071 () Bool)

(declare-fun b_next!26135 () Bool)

(assert (=> b!857942 (= b_free!26071 (not b_next!26135))))

(declare-fun tp!270651 () Bool)

(declare-fun b_and!76091 () Bool)

(assert (=> b!857942 (= tp!270651 b_and!76091)))

(declare-fun b!857944 () Bool)

(declare-fun b_free!26073 () Bool)

(declare-fun b_next!26137 () Bool)

(assert (=> b!857944 (= b_free!26073 (not b_next!26137))))

(declare-fun tp!270658 () Bool)

(declare-fun b_and!76093 () Bool)

(assert (=> b!857944 (= tp!270658 b_and!76093)))

(declare-fun b_free!26075 () Bool)

(declare-fun b_next!26139 () Bool)

(assert (=> b!857944 (= b_free!26075 (not b_next!26139))))

(declare-fun tp!270659 () Bool)

(declare-fun b_and!76095 () Bool)

(assert (=> b!857944 (= tp!270659 b_and!76095)))

(declare-fun b!857924 () Bool)

(declare-fun res!391508 () Bool)

(declare-fun e!564659 () Bool)

(assert (=> b!857924 (=> res!391508 e!564659)))

(declare-datatypes ((List!9270 0))(
  ( (Nil!9254) (Cons!9254 (h!14655 (_ BitVec 16)) (t!97048 List!9270)) )
))
(declare-datatypes ((TokenValue!1802 0))(
  ( (FloatLiteralValue!3604 (text!13059 List!9270)) (TokenValueExt!1801 (__x!7335 Int)) (Broken!9010 (value!56149 List!9270)) (Object!1817) (End!1802) (Def!1802) (Underscore!1802) (Match!1802) (Else!1802) (Error!1802) (Case!1802) (If!1802) (Extends!1802) (Abstract!1802) (Class!1802) (Val!1802) (DelimiterValue!3604 (del!1862 List!9270)) (KeywordValue!1808 (value!56150 List!9270)) (CommentValue!3604 (value!56151 List!9270)) (WhitespaceValue!3604 (value!56152 List!9270)) (IndentationValue!1802 (value!56153 List!9270)) (String!10907) (Int32!1802) (Broken!9011 (value!56154 List!9270)) (Boolean!1803) (Unit!13772) (OperatorValue!1805 (op!1862 List!9270)) (IdentifierValue!3604 (value!56155 List!9270)) (IdentifierValue!3605 (value!56156 List!9270)) (WhitespaceValue!3605 (value!56157 List!9270)) (True!3604) (False!3604) (Broken!9012 (value!56158 List!9270)) (Broken!9013 (value!56159 List!9270)) (True!3605) (RightBrace!1802) (RightBracket!1802) (Colon!1802) (Null!1802) (Comma!1802) (LeftBracket!1802) (False!3605) (LeftBrace!1802) (ImaginaryLiteralValue!1802 (text!13060 List!9270)) (StringLiteralValue!5406 (value!56160 List!9270)) (EOFValue!1802 (value!56161 List!9270)) (IdentValue!1802 (value!56162 List!9270)) (DelimiterValue!3605 (value!56163 List!9270)) (DedentValue!1802 (value!56164 List!9270)) (NewLineValue!1802 (value!56165 List!9270)) (IntegerValue!5406 (value!56166 (_ BitVec 32)) (text!13061 List!9270)) (IntegerValue!5407 (value!56167 Int) (text!13062 List!9270)) (Times!1802) (Or!1802) (Equal!1802) (Minus!1802) (Broken!9014 (value!56168 List!9270)) (And!1802) (Div!1802) (LessEqual!1802) (Mod!1802) (Concat!3971) (Not!1802) (Plus!1802) (SpaceValue!1802 (value!56169 List!9270)) (IntegerValue!5408 (value!56170 Int) (text!13063 List!9270)) (StringLiteralValue!5407 (text!13064 List!9270)) (FloatLiteralValue!3605 (text!13065 List!9270)) (BytesLiteralValue!1802 (value!56171 List!9270)) (CommentValue!3605 (value!56172 List!9270)) (StringLiteralValue!5408 (value!56173 List!9270)) (ErrorTokenValue!1802 (msg!1863 List!9270)) )
))
(declare-datatypes ((C!4908 0))(
  ( (C!4909 (val!2702 Int)) )
))
(declare-datatypes ((Regex!2169 0))(
  ( (ElementMatch!2169 (c!139017 C!4908)) (Concat!3972 (regOne!4850 Regex!2169) (regTwo!4850 Regex!2169)) (EmptyExpr!2169) (Star!2169 (reg!2498 Regex!2169)) (EmptyLang!2169) (Union!2169 (regOne!4851 Regex!2169) (regTwo!4851 Regex!2169)) )
))
(declare-datatypes ((String!10908 0))(
  ( (String!10909 (value!56174 String)) )
))
(declare-datatypes ((List!9271 0))(
  ( (Nil!9255) (Cons!9255 (h!14656 C!4908) (t!97049 List!9271)) )
))
(declare-datatypes ((IArray!6139 0))(
  ( (IArray!6140 (innerList!3127 List!9271)) )
))
(declare-datatypes ((Conc!3067 0))(
  ( (Node!3067 (left!6848 Conc!3067) (right!7178 Conc!3067) (csize!6364 Int) (cheight!3278 Int)) (Leaf!4523 (xs!5756 IArray!6139) (csize!6365 Int)) (Empty!3067) )
))
(declare-datatypes ((BalanceConc!6148 0))(
  ( (BalanceConc!6149 (c!139018 Conc!3067)) )
))
(declare-datatypes ((TokenValueInjection!3304 0))(
  ( (TokenValueInjection!3305 (toValue!2797 Int) (toChars!2656 Int)) )
))
(declare-datatypes ((Rule!3272 0))(
  ( (Rule!3273 (regex!1736 Regex!2169) (tag!1998 String!10908) (isSeparator!1736 Bool) (transformation!1736 TokenValueInjection!3304)) )
))
(declare-datatypes ((Token!3138 0))(
  ( (Token!3139 (value!56175 TokenValue!1802) (rule!3159 Rule!3272) (size!7729 Int) (originalCharacters!2292 List!9271)) )
))
(declare-datatypes ((List!9272 0))(
  ( (Nil!9256) (Cons!9256 (h!14657 Token!3138) (t!97050 List!9272)) )
))
(declare-fun lt!324436 () List!9272)

(declare-fun separatorToken!297 () Token!3138)

(assert (=> b!857924 (= res!391508 (not (= (h!14657 (t!97050 lt!324436)) separatorToken!297)))))

(declare-fun b!857925 () Bool)

(declare-fun e!564655 () Bool)

(declare-fun e!564652 () Bool)

(declare-fun tp!270655 () Bool)

(assert (=> b!857925 (= e!564655 (and e!564652 tp!270655))))

(declare-fun b!857926 () Bool)

(declare-fun res!391496 () Bool)

(declare-fun e!564668 () Bool)

(assert (=> b!857926 (=> (not res!391496) (not e!564668))))

(declare-datatypes ((List!9273 0))(
  ( (Nil!9257) (Cons!9257 (h!14658 Rule!3272) (t!97051 List!9273)) )
))
(declare-fun rules!2621 () List!9273)

(declare-datatypes ((LexerInterface!1538 0))(
  ( (LexerInterfaceExt!1535 (__x!7336 Int)) (Lexer!1536) )
))
(declare-fun thiss!20117 () LexerInterface!1538)

(declare-fun rulesProduceIndividualToken!602 (LexerInterface!1538 List!9273 Token!3138) Bool)

(assert (=> b!857926 (= res!391496 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun res!391504 () Bool)

(assert (=> start!77270 (=> (not res!391504) (not e!564668))))

(get-info :version)

(assert (=> start!77270 (= res!391504 ((_ is Lexer!1536) thiss!20117))))

(assert (=> start!77270 e!564668))

(assert (=> start!77270 true))

(assert (=> start!77270 e!564655))

(declare-fun e!564667 () Bool)

(assert (=> start!77270 e!564667))

(declare-fun e!564660 () Bool)

(declare-fun inv!11776 (Token!3138) Bool)

(assert (=> start!77270 (and (inv!11776 separatorToken!297) e!564660)))

(declare-fun b!857927 () Bool)

(declare-fun res!391497 () Bool)

(assert (=> b!857927 (=> (not res!391497) (not e!564668))))

(declare-fun isEmpty!5492 (List!9273) Bool)

(assert (=> b!857927 (= res!391497 (not (isEmpty!5492 rules!2621)))))

(declare-fun e!564663 () Bool)

(declare-fun b!857928 () Bool)

(declare-fun l!5107 () List!9272)

(declare-fun tp!270662 () Bool)

(assert (=> b!857928 (= e!564667 (and (inv!11776 (h!14657 l!5107)) e!564663 tp!270662))))

(declare-fun b!857929 () Bool)

(declare-fun tp!270652 () Bool)

(declare-fun e!564662 () Bool)

(declare-fun inv!11773 (String!10908) Bool)

(declare-fun inv!11777 (TokenValueInjection!3304) Bool)

(assert (=> b!857929 (= e!564652 (and tp!270652 (inv!11773 (tag!1998 (h!14658 rules!2621))) (inv!11777 (transformation!1736 (h!14658 rules!2621))) e!564662))))

(declare-fun b!857930 () Bool)

(declare-fun tp!270660 () Bool)

(declare-fun e!564656 () Bool)

(declare-fun inv!21 (TokenValue!1802) Bool)

(assert (=> b!857930 (= e!564663 (and (inv!21 (value!56175 (h!14657 l!5107))) e!564656 tp!270660))))

(declare-fun b!857931 () Bool)

(declare-fun e!564653 () Bool)

(assert (=> b!857931 (= e!564653 e!564659)))

(declare-fun res!391507 () Bool)

(assert (=> b!857931 (=> res!391507 e!564659)))

(declare-fun lt!324435 () List!9272)

(assert (=> b!857931 (= res!391507 (not (= (t!97050 (t!97050 lt!324436)) lt!324435)))))

(declare-fun lt!324443 () List!9272)

(declare-fun withSeparatorTokenList!68 (LexerInterface!1538 List!9272 Token!3138) List!9272)

(assert (=> b!857931 (= lt!324435 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))

(declare-fun tail!1048 (List!9272) List!9272)

(assert (=> b!857931 (= lt!324443 (tail!1048 l!5107))))

(declare-fun e!564658 () Bool)

(declare-fun tp!270653 () Bool)

(declare-fun b!857932 () Bool)

(declare-fun e!564657 () Bool)

(assert (=> b!857932 (= e!564658 (and tp!270653 (inv!11773 (tag!1998 (rule!3159 separatorToken!297))) (inv!11777 (transformation!1736 (rule!3159 separatorToken!297))) e!564657))))

(declare-fun b!857933 () Bool)

(declare-fun e!564671 () Bool)

(assert (=> b!857933 (= e!564659 e!564671)))

(declare-fun res!391499 () Bool)

(assert (=> b!857933 (=> res!391499 e!564671)))

(declare-fun isEmpty!5493 (List!9272) Bool)

(assert (=> b!857933 (= res!391499 (isEmpty!5493 (t!97050 (t!97050 lt!324436))))))

(declare-fun e!564666 () Bool)

(assert (=> b!857933 e!564666))

(declare-fun res!391506 () Bool)

(assert (=> b!857933 (=> (not res!391506) (not e!564666))))

(declare-fun rulesProduceEachTokenIndividuallyList!426 (LexerInterface!1538 List!9273 List!9272) Bool)

(assert (=> b!857933 (= res!391506 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324435))))

(declare-datatypes ((Unit!13773 0))(
  ( (Unit!13774) )
))
(declare-fun lt!324440 () Unit!13773)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!68 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> b!857933 (= lt!324440 (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(declare-fun lt!324441 () Unit!13773)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!32 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> b!857933 (= lt!324441 (printWithSeparatorTokenImpliesSeparableTokensList!32 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(declare-fun separableTokensPredicate!68 (LexerInterface!1538 Token!3138 Token!3138 List!9273) Bool)

(assert (=> b!857933 (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621)))

(declare-fun lt!324439 () Unit!13773)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!48 (LexerInterface!1538 Token!3138 Token!3138 List!9273) Unit!13773)

(assert (=> b!857933 (= lt!324439 (lemmaTokensOfDifferentKindsAreSeparable!48 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621))))

(declare-fun b!857934 () Bool)

(declare-fun res!391500 () Bool)

(assert (=> b!857934 (=> (not res!391500) (not e!564668))))

(declare-fun sepAndNonSepRulesDisjointChars!536 (List!9273 List!9273) Bool)

(assert (=> b!857934 (= res!391500 (sepAndNonSepRulesDisjointChars!536 rules!2621 rules!2621))))

(declare-fun b!857935 () Bool)

(declare-fun res!391498 () Bool)

(assert (=> b!857935 (=> res!391498 e!564659)))

(declare-fun head!1488 (List!9272) Token!3138)

(assert (=> b!857935 (= res!391498 (not (= (head!1488 l!5107) (h!14657 lt!324436))))))

(declare-fun tp!270654 () Bool)

(declare-fun b!857936 () Bool)

(declare-fun e!564669 () Bool)

(assert (=> b!857936 (= e!564656 (and tp!270654 (inv!11773 (tag!1998 (rule!3159 (h!14657 l!5107)))) (inv!11777 (transformation!1736 (rule!3159 (h!14657 l!5107)))) e!564669))))

(declare-fun b!857937 () Bool)

(declare-fun res!391509 () Bool)

(assert (=> b!857937 (=> (not res!391509) (not e!564668))))

(assert (=> b!857937 (= res!391509 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(declare-fun b!857938 () Bool)

(declare-fun res!391501 () Bool)

(assert (=> b!857938 (=> (not res!391501) (not e!564668))))

(declare-fun lambda!25750 () Int)

(declare-fun forall!2197 (List!9272 Int) Bool)

(assert (=> b!857938 (= res!391501 (forall!2197 l!5107 lambda!25750))))

(declare-fun b!857939 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!52 (LexerInterface!1538 List!9272 List!9273) Bool)

(assert (=> b!857939 (= e!564666 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 lt!324435 rules!2621))))

(declare-fun b!857940 () Bool)

(assert (=> b!857940 (= e!564671 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 lt!324436 rules!2621))))

(declare-fun lt!324437 () Token!3138)

(assert (=> b!857940 (separableTokensPredicate!68 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621)))

(declare-fun lt!324438 () Unit!13773)

(assert (=> b!857940 (= lt!324438 (lemmaTokensOfDifferentKindsAreSeparable!48 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621))))

(assert (=> b!857940 (= lt!324437 (head!1488 (t!97050 (t!97050 lt!324436))))))

(declare-fun b!857941 () Bool)

(assert (=> b!857941 (= e!564668 (not e!564653))))

(declare-fun res!391502 () Bool)

(assert (=> b!857941 (=> res!391502 e!564653)))

(assert (=> b!857941 (= res!391502 (or (not ((_ is Cons!9256) lt!324436)) (not ((_ is Cons!9256) (t!97050 lt!324436)))))))

(assert (=> b!857941 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324436)))

(assert (=> b!857941 (= lt!324436 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!324442 () Unit!13773)

(assert (=> b!857941 (= lt!324442 (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> b!857942 (= e!564662 (and tp!270657 tp!270651))))

(declare-fun b!857943 () Bool)

(declare-fun res!391503 () Bool)

(assert (=> b!857943 (=> (not res!391503) (not e!564668))))

(declare-fun rulesInvariant!1414 (LexerInterface!1538 List!9273) Bool)

(assert (=> b!857943 (= res!391503 (rulesInvariant!1414 thiss!20117 rules!2621))))

(assert (=> b!857944 (= e!564669 (and tp!270658 tp!270659))))

(declare-fun b!857945 () Bool)

(declare-fun res!391505 () Bool)

(assert (=> b!857945 (=> (not res!391505) (not e!564668))))

(assert (=> b!857945 (= res!391505 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 l!5107))))

(declare-fun b!857946 () Bool)

(declare-fun tp!270661 () Bool)

(assert (=> b!857946 (= e!564660 (and (inv!21 (value!56175 separatorToken!297)) e!564658 tp!270661))))

(assert (=> b!857947 (= e!564657 (and tp!270650 tp!270656))))

(assert (= (and start!77270 res!391504) b!857927))

(assert (= (and b!857927 res!391497) b!857943))

(assert (= (and b!857943 res!391503) b!857945))

(assert (= (and b!857945 res!391505) b!857926))

(assert (= (and b!857926 res!391496) b!857937))

(assert (= (and b!857937 res!391509) b!857938))

(assert (= (and b!857938 res!391501) b!857934))

(assert (= (and b!857934 res!391500) b!857941))

(assert (= (and b!857941 (not res!391502)) b!857931))

(assert (= (and b!857931 (not res!391507)) b!857935))

(assert (= (and b!857935 (not res!391498)) b!857924))

(assert (= (and b!857924 (not res!391508)) b!857933))

(assert (= (and b!857933 res!391506) b!857939))

(assert (= (and b!857933 (not res!391499)) b!857940))

(assert (= b!857929 b!857942))

(assert (= b!857925 b!857929))

(assert (= (and start!77270 ((_ is Cons!9257) rules!2621)) b!857925))

(assert (= b!857936 b!857944))

(assert (= b!857930 b!857936))

(assert (= b!857928 b!857930))

(assert (= (and start!77270 ((_ is Cons!9256) l!5107)) b!857928))

(assert (= b!857932 b!857947))

(assert (= b!857946 b!857932))

(assert (= start!77270 b!857946))

(declare-fun m!1100567 () Bool)

(assert (=> b!857940 m!1100567))

(declare-fun m!1100569 () Bool)

(assert (=> b!857940 m!1100569))

(declare-fun m!1100571 () Bool)

(assert (=> b!857940 m!1100571))

(declare-fun m!1100573 () Bool)

(assert (=> b!857940 m!1100573))

(declare-fun m!1100575 () Bool)

(assert (=> b!857939 m!1100575))

(declare-fun m!1100577 () Bool)

(assert (=> b!857934 m!1100577))

(declare-fun m!1100579 () Bool)

(assert (=> b!857932 m!1100579))

(declare-fun m!1100581 () Bool)

(assert (=> b!857932 m!1100581))

(declare-fun m!1100583 () Bool)

(assert (=> b!857926 m!1100583))

(declare-fun m!1100585 () Bool)

(assert (=> b!857931 m!1100585))

(declare-fun m!1100587 () Bool)

(assert (=> b!857931 m!1100587))

(declare-fun m!1100589 () Bool)

(assert (=> b!857933 m!1100589))

(declare-fun m!1100591 () Bool)

(assert (=> b!857933 m!1100591))

(declare-fun m!1100593 () Bool)

(assert (=> b!857933 m!1100593))

(declare-fun m!1100595 () Bool)

(assert (=> b!857933 m!1100595))

(declare-fun m!1100597 () Bool)

(assert (=> b!857933 m!1100597))

(declare-fun m!1100599 () Bool)

(assert (=> b!857933 m!1100599))

(declare-fun m!1100601 () Bool)

(assert (=> b!857938 m!1100601))

(declare-fun m!1100603 () Bool)

(assert (=> b!857936 m!1100603))

(declare-fun m!1100605 () Bool)

(assert (=> b!857936 m!1100605))

(declare-fun m!1100607 () Bool)

(assert (=> b!857946 m!1100607))

(declare-fun m!1100609 () Bool)

(assert (=> b!857927 m!1100609))

(declare-fun m!1100611 () Bool)

(assert (=> b!857935 m!1100611))

(declare-fun m!1100613 () Bool)

(assert (=> b!857943 m!1100613))

(declare-fun m!1100615 () Bool)

(assert (=> b!857929 m!1100615))

(declare-fun m!1100617 () Bool)

(assert (=> b!857929 m!1100617))

(declare-fun m!1100619 () Bool)

(assert (=> b!857945 m!1100619))

(declare-fun m!1100621 () Bool)

(assert (=> start!77270 m!1100621))

(declare-fun m!1100623 () Bool)

(assert (=> b!857930 m!1100623))

(declare-fun m!1100625 () Bool)

(assert (=> b!857928 m!1100625))

(declare-fun m!1100627 () Bool)

(assert (=> b!857941 m!1100627))

(declare-fun m!1100629 () Bool)

(assert (=> b!857941 m!1100629))

(declare-fun m!1100631 () Bool)

(assert (=> b!857941 m!1100631))

(check-sat (not b!857926) (not b_next!26137) (not b!857925) b_and!76087 (not b_next!26133) (not b!857946) b_and!76089 (not b!857930) (not b!857943) (not b!857941) (not b_next!26139) (not b!857927) (not b!857940) (not b_next!26135) b_and!76091 (not b!857934) (not b!857936) (not b!857933) (not b_next!26131) (not b!857928) (not b!857932) (not b!857939) b_and!76095 b_and!76085 (not b_next!26129) (not b!857931) (not start!77270) (not b!857935) (not b!857945) (not b!857938) (not b!857929) b_and!76093)
(check-sat b_and!76091 (not b_next!26131) (not b_next!26137) b_and!76087 (not b_next!26133) b_and!76089 (not b_next!26139) b_and!76093 (not b_next!26135) b_and!76095 b_and!76085 (not b_next!26129))
(get-model)

(declare-fun d!268664 () Bool)

(assert (=> d!268664 (= (inv!11773 (tag!1998 (h!14658 rules!2621))) (= (mod (str.len (value!56174 (tag!1998 (h!14658 rules!2621)))) 2) 0))))

(assert (=> b!857929 d!268664))

(declare-fun d!268666 () Bool)

(declare-fun res!391522 () Bool)

(declare-fun e!564683 () Bool)

(assert (=> d!268666 (=> (not res!391522) (not e!564683))))

(declare-fun semiInverseModEq!682 (Int Int) Bool)

(assert (=> d!268666 (= res!391522 (semiInverseModEq!682 (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))))))

(assert (=> d!268666 (= (inv!11777 (transformation!1736 (h!14658 rules!2621))) e!564683)))

(declare-fun b!857965 () Bool)

(declare-fun equivClasses!649 (Int Int) Bool)

(assert (=> b!857965 (= e!564683 (equivClasses!649 (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))))))

(assert (= (and d!268666 res!391522) b!857965))

(declare-fun m!1100639 () Bool)

(assert (=> d!268666 m!1100639))

(declare-fun m!1100641 () Bool)

(assert (=> b!857965 m!1100641))

(assert (=> b!857929 d!268666))

(declare-fun d!268668 () Bool)

(declare-fun res!391561 () Bool)

(declare-fun e!564728 () Bool)

(assert (=> d!268668 (=> res!391561 e!564728)))

(assert (=> d!268668 (= res!391561 (or (not ((_ is Cons!9256) lt!324435)) (not ((_ is Cons!9256) (t!97050 lt!324435)))))))

(assert (=> d!268668 (= (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 lt!324435 rules!2621) e!564728)))

(declare-fun b!858027 () Bool)

(declare-fun e!564727 () Bool)

(assert (=> b!858027 (= e!564728 e!564727)))

(declare-fun res!391560 () Bool)

(assert (=> b!858027 (=> (not res!391560) (not e!564727))))

(assert (=> b!858027 (= res!391560 (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324435) (h!14657 (t!97050 lt!324435)) rules!2621))))

(declare-fun lt!324510 () Unit!13773)

(declare-fun Unit!13778 () Unit!13773)

(assert (=> b!858027 (= lt!324510 Unit!13778)))

(declare-fun size!7732 (BalanceConc!6148) Int)

(declare-fun charsOf!1003 (Token!3138) BalanceConc!6148)

(assert (=> b!858027 (> (size!7732 (charsOf!1003 (h!14657 (t!97050 lt!324435)))) 0)))

(declare-fun lt!324511 () Unit!13773)

(declare-fun Unit!13779 () Unit!13773)

(assert (=> b!858027 (= lt!324511 Unit!13779)))

(assert (=> b!858027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324435)))))

(declare-fun lt!324506 () Unit!13773)

(declare-fun Unit!13780 () Unit!13773)

(assert (=> b!858027 (= lt!324506 Unit!13780)))

(assert (=> b!858027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435))))

(declare-fun lt!324512 () Unit!13773)

(declare-fun lt!324507 () Unit!13773)

(assert (=> b!858027 (= lt!324512 lt!324507)))

(assert (=> b!858027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324435)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> b!858027 (= lt!324507 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324435 (h!14657 (t!97050 lt!324435))))))

(declare-fun lt!324509 () Unit!13773)

(declare-fun lt!324508 () Unit!13773)

(assert (=> b!858027 (= lt!324509 lt!324508)))

(assert (=> b!858027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435))))

(assert (=> b!858027 (= lt!324508 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324435 (h!14657 lt!324435)))))

(declare-fun b!858028 () Bool)

(assert (=> b!858028 (= e!564727 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))) rules!2621))))

(assert (= (and d!268668 (not res!391561)) b!858027))

(assert (= (and b!858027 res!391560) b!858028))

(declare-fun m!1100757 () Bool)

(assert (=> b!858027 m!1100757))

(declare-fun m!1100759 () Bool)

(assert (=> b!858027 m!1100759))

(declare-fun m!1100761 () Bool)

(assert (=> b!858027 m!1100761))

(assert (=> b!858027 m!1100757))

(declare-fun m!1100763 () Bool)

(assert (=> b!858027 m!1100763))

(declare-fun m!1100765 () Bool)

(assert (=> b!858027 m!1100765))

(declare-fun m!1100767 () Bool)

(assert (=> b!858027 m!1100767))

(declare-fun m!1100769 () Bool)

(assert (=> b!858027 m!1100769))

(declare-fun m!1100771 () Bool)

(assert (=> b!858028 m!1100771))

(assert (=> b!857939 d!268668))

(declare-fun d!268696 () Bool)

(declare-fun res!391566 () Bool)

(declare-fun e!564731 () Bool)

(assert (=> d!268696 (=> (not res!391566) (not e!564731))))

(declare-fun isEmpty!5495 (List!9271) Bool)

(assert (=> d!268696 (= res!391566 (not (isEmpty!5495 (originalCharacters!2292 (h!14657 l!5107)))))))

(assert (=> d!268696 (= (inv!11776 (h!14657 l!5107)) e!564731)))

(declare-fun b!858033 () Bool)

(declare-fun res!391567 () Bool)

(assert (=> b!858033 (=> (not res!391567) (not e!564731))))

(declare-fun list!3652 (BalanceConc!6148) List!9271)

(declare-fun dynLambda!4361 (Int TokenValue!1802) BalanceConc!6148)

(assert (=> b!858033 (= res!391567 (= (originalCharacters!2292 (h!14657 l!5107)) (list!3652 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(declare-fun b!858034 () Bool)

(declare-fun size!7733 (List!9271) Int)

(assert (=> b!858034 (= e!564731 (= (size!7729 (h!14657 l!5107)) (size!7733 (originalCharacters!2292 (h!14657 l!5107)))))))

(assert (= (and d!268696 res!391566) b!858033))

(assert (= (and b!858033 res!391567) b!858034))

(declare-fun b_lambda!28931 () Bool)

(assert (=> (not b_lambda!28931) (not b!858033)))

(declare-fun tb!61077 () Bool)

(declare-fun t!97065 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97065) tb!61077))

(declare-fun b!858039 () Bool)

(declare-fun e!564734 () Bool)

(declare-fun tp!270669 () Bool)

(declare-fun inv!11780 (Conc!3067) Bool)

(assert (=> b!858039 (= e!564734 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))) tp!270669))))

(declare-fun result!70684 () Bool)

(declare-fun inv!11781 (BalanceConc!6148) Bool)

(assert (=> tb!61077 (= result!70684 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))) e!564734))))

(assert (= tb!61077 b!858039))

(declare-fun m!1100773 () Bool)

(assert (=> b!858039 m!1100773))

(declare-fun m!1100775 () Bool)

(assert (=> tb!61077 m!1100775))

(assert (=> b!858033 t!97065))

(declare-fun b_and!76109 () Bool)

(assert (= b_and!76087 (and (=> t!97065 result!70684) b_and!76109)))

(declare-fun tb!61079 () Bool)

(declare-fun t!97067 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97067) tb!61079))

(declare-fun result!70688 () Bool)

(assert (= result!70688 result!70684))

(assert (=> b!858033 t!97067))

(declare-fun b_and!76111 () Bool)

(assert (= b_and!76091 (and (=> t!97067 result!70688) b_and!76111)))

(declare-fun t!97069 () Bool)

(declare-fun tb!61081 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97069) tb!61081))

(declare-fun result!70690 () Bool)

(assert (= result!70690 result!70684))

(assert (=> b!858033 t!97069))

(declare-fun b_and!76113 () Bool)

(assert (= b_and!76095 (and (=> t!97069 result!70690) b_and!76113)))

(declare-fun m!1100777 () Bool)

(assert (=> d!268696 m!1100777))

(declare-fun m!1100779 () Bool)

(assert (=> b!858033 m!1100779))

(assert (=> b!858033 m!1100779))

(declare-fun m!1100781 () Bool)

(assert (=> b!858033 m!1100781))

(declare-fun m!1100783 () Bool)

(assert (=> b!858034 m!1100783))

(assert (=> b!857928 d!268696))

(declare-fun bs!232115 () Bool)

(declare-fun d!268698 () Bool)

(assert (= bs!232115 (and d!268698 b!857938)))

(declare-fun lambda!25757 () Int)

(assert (=> bs!232115 (not (= lambda!25757 lambda!25750))))

(declare-fun b!858090 () Bool)

(declare-fun e!564775 () Bool)

(assert (=> b!858090 (= e!564775 true)))

(declare-fun b!858089 () Bool)

(declare-fun e!564774 () Bool)

(assert (=> b!858089 (= e!564774 e!564775)))

(declare-fun b!858088 () Bool)

(declare-fun e!564773 () Bool)

(assert (=> b!858088 (= e!564773 e!564774)))

(assert (=> d!268698 e!564773))

(assert (= b!858089 b!858090))

(assert (= b!858088 b!858089))

(assert (= (and d!268698 ((_ is Cons!9257) rules!2621)) b!858088))

(declare-fun order!6005 () Int)

(declare-fun order!6003 () Int)

(declare-fun dynLambda!4362 (Int Int) Int)

(declare-fun dynLambda!4363 (Int Int) Int)

(assert (=> b!858090 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25757))))

(declare-fun order!6007 () Int)

(declare-fun dynLambda!4364 (Int Int) Int)

(assert (=> b!858090 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25757))))

(assert (=> d!268698 true))

(declare-fun lt!324527 () Bool)

(assert (=> d!268698 (= lt!324527 (forall!2197 lt!324436 lambda!25757))))

(declare-fun e!564766 () Bool)

(assert (=> d!268698 (= lt!324527 e!564766)))

(declare-fun res!391584 () Bool)

(assert (=> d!268698 (=> res!391584 e!564766)))

(assert (=> d!268698 (= res!391584 (not ((_ is Cons!9256) lt!324436)))))

(assert (=> d!268698 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268698 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324436) lt!324527)))

(declare-fun b!858078 () Bool)

(declare-fun e!564765 () Bool)

(assert (=> b!858078 (= e!564766 e!564765)))

(declare-fun res!391585 () Bool)

(assert (=> b!858078 (=> (not res!391585) (not e!564765))))

(assert (=> b!858078 (= res!391585 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436)))))

(declare-fun b!858079 () Bool)

(assert (=> b!858079 (= e!564765 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 lt!324436)))))

(assert (= (and d!268698 (not res!391584)) b!858078))

(assert (= (and b!858078 res!391585) b!858079))

(declare-fun m!1100841 () Bool)

(assert (=> d!268698 m!1100841))

(assert (=> d!268698 m!1100609))

(declare-fun m!1100843 () Bool)

(assert (=> b!858078 m!1100843))

(declare-fun m!1100845 () Bool)

(assert (=> b!858079 m!1100845))

(assert (=> b!857941 d!268698))

(declare-fun b!858119 () Bool)

(declare-fun e!564799 () List!9271)

(assert (=> b!858119 (= e!564799 Nil!9255)))

(declare-fun b!858120 () Bool)

(declare-fun res!391601 () Bool)

(declare-fun e!564797 () Bool)

(assert (=> b!858120 (=> (not res!391601) (not e!564797))))

(declare-fun e!564798 () Bool)

(assert (=> b!858120 (= res!391601 e!564798)))

(declare-fun res!391602 () Bool)

(assert (=> b!858120 (=> res!391602 e!564798)))

(assert (=> b!858120 (= res!391602 (not ((_ is Cons!9256) l!5107)))))

(declare-fun b!858121 () Bool)

(declare-fun e!564795 () List!9271)

(assert (=> b!858121 (= e!564795 Nil!9255)))

(declare-fun b!858122 () Bool)

(declare-fun lt!324555 () List!9272)

(declare-fun ++!2399 (List!9271 List!9271) List!9271)

(declare-fun printList!486 (LexerInterface!1538 List!9272) List!9271)

(assert (=> b!858122 (= e!564795 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324555))) (printList!486 thiss!20117 (t!97050 lt!324555))))))

(declare-fun lt!324553 () List!9272)

(declare-fun d!268708 () Bool)

(declare-fun printWithSeparatorTokenList!44 (LexerInterface!1538 List!9272 Token!3138) List!9271)

(assert (=> d!268708 (= (printList!486 thiss!20117 lt!324553) (printWithSeparatorTokenList!44 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!564796 () List!9272)

(assert (=> d!268708 (= lt!324553 e!564796)))

(declare-fun c!139043 () Bool)

(assert (=> d!268708 (= c!139043 ((_ is Cons!9256) l!5107))))

(assert (=> d!268708 e!564797))

(declare-fun res!391600 () Bool)

(assert (=> d!268708 (=> (not res!391600) (not e!564797))))

(assert (=> d!268708 (= res!391600 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(assert (=> d!268708 (= (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297) lt!324553)))

(declare-fun b!858123 () Bool)

(declare-fun $colon$colon!99 (List!9272 Token!3138) List!9272)

(assert (=> b!858123 (= e!564796 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107)))))

(declare-fun lt!324549 () List!9271)

(assert (=> b!858123 (= lt!324549 (list!3652 (charsOf!1003 (h!14657 l!5107))))))

(declare-fun lt!324550 () List!9271)

(assert (=> b!858123 (= lt!324550 (list!3652 (charsOf!1003 separatorToken!297)))))

(declare-fun lt!324551 () List!9271)

(assert (=> b!858123 (= lt!324551 (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)))))

(declare-fun lt!324552 () Unit!13773)

(declare-fun lemmaConcatAssociativity!761 (List!9271 List!9271 List!9271) Unit!13773)

(assert (=> b!858123 (= lt!324552 (lemmaConcatAssociativity!761 lt!324549 lt!324550 lt!324551))))

(assert (=> b!858123 (= (++!2399 (++!2399 lt!324549 lt!324550) lt!324551) (++!2399 lt!324549 (++!2399 lt!324550 lt!324551)))))

(declare-fun lt!324554 () Unit!13773)

(assert (=> b!858123 (= lt!324554 lt!324552)))

(declare-fun b!858124 () Bool)

(assert (=> b!858124 (= e!564796 Nil!9256)))

(declare-fun b!858125 () Bool)

(assert (=> b!858125 (= e!564798 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107))) e!564795))))

(declare-fun c!139045 () Bool)

(assert (=> b!858125 (= c!139045 ((_ is Cons!9256) lt!324555))))

(assert (=> b!858125 (= lt!324555 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107)))))

(declare-fun b!858126 () Bool)

(declare-fun e!564794 () Bool)

(assert (=> b!858126 (= e!564797 e!564794)))

(declare-fun res!391603 () Bool)

(assert (=> b!858126 (=> res!391603 e!564794)))

(assert (=> b!858126 (= res!391603 (not ((_ is Cons!9256) l!5107)))))

(declare-fun b!858127 () Bool)

(declare-fun lt!324548 () List!9272)

(assert (=> b!858127 (= e!564799 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324548))) (printList!486 thiss!20117 (t!97050 lt!324548))))))

(declare-fun b!858128 () Bool)

(assert (=> b!858128 (= e!564794 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)) e!564799))))

(declare-fun c!139044 () Bool)

(assert (=> b!858128 (= c!139044 ((_ is Cons!9256) lt!324548))))

(assert (=> b!858128 (= lt!324548 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297))))

(assert (= (and d!268708 res!391600) b!858120))

(assert (= (and b!858120 (not res!391602)) b!858125))

(assert (= (and b!858125 c!139045) b!858122))

(assert (= (and b!858125 (not c!139045)) b!858121))

(assert (= (and b!858120 res!391601) b!858126))

(assert (= (and b!858126 (not res!391603)) b!858128))

(assert (= (and b!858128 c!139044) b!858127))

(assert (= (and b!858128 (not c!139044)) b!858119))

(assert (= (and d!268708 c!139043) b!858123))

(assert (= (and d!268708 (not c!139043)) b!858124))

(declare-fun m!1100861 () Bool)

(assert (=> b!858128 m!1100861))

(assert (=> b!858128 m!1100861))

(declare-fun m!1100863 () Bool)

(assert (=> b!858128 m!1100863))

(assert (=> b!858128 m!1100863))

(declare-fun m!1100865 () Bool)

(assert (=> b!858128 m!1100865))

(assert (=> b!858125 m!1100861))

(assert (=> b!858125 m!1100861))

(assert (=> b!858125 m!1100863))

(assert (=> b!858125 m!1100863))

(declare-fun m!1100867 () Bool)

(assert (=> b!858125 m!1100867))

(assert (=> b!858125 m!1100867))

(declare-fun m!1100869 () Bool)

(assert (=> b!858125 m!1100869))

(declare-fun m!1100871 () Bool)

(assert (=> b!858122 m!1100871))

(assert (=> b!858122 m!1100871))

(declare-fun m!1100873 () Bool)

(assert (=> b!858122 m!1100873))

(declare-fun m!1100875 () Bool)

(assert (=> b!858122 m!1100875))

(assert (=> b!858122 m!1100873))

(assert (=> b!858122 m!1100875))

(declare-fun m!1100877 () Bool)

(assert (=> b!858122 m!1100877))

(assert (=> b!858123 m!1100863))

(assert (=> b!858123 m!1100867))

(declare-fun m!1100879 () Bool)

(assert (=> b!858123 m!1100879))

(assert (=> b!858123 m!1100879))

(declare-fun m!1100881 () Bool)

(assert (=> b!858123 m!1100881))

(declare-fun m!1100883 () Bool)

(assert (=> b!858123 m!1100883))

(assert (=> b!858123 m!1100861))

(declare-fun m!1100885 () Bool)

(assert (=> b!858123 m!1100885))

(assert (=> b!858123 m!1100861))

(declare-fun m!1100887 () Bool)

(assert (=> b!858123 m!1100887))

(declare-fun m!1100889 () Bool)

(assert (=> b!858123 m!1100889))

(declare-fun m!1100891 () Bool)

(assert (=> b!858123 m!1100891))

(declare-fun m!1100893 () Bool)

(assert (=> b!858123 m!1100893))

(declare-fun m!1100895 () Bool)

(assert (=> b!858123 m!1100895))

(assert (=> b!858123 m!1100887))

(assert (=> b!858123 m!1100861))

(assert (=> b!858123 m!1100863))

(assert (=> b!858123 m!1100895))

(declare-fun m!1100897 () Bool)

(assert (=> b!858123 m!1100897))

(assert (=> b!858123 m!1100891))

(declare-fun m!1100899 () Bool)

(assert (=> d!268708 m!1100899))

(declare-fun m!1100901 () Bool)

(assert (=> d!268708 m!1100901))

(declare-fun m!1100903 () Bool)

(assert (=> b!858127 m!1100903))

(assert (=> b!858127 m!1100903))

(declare-fun m!1100905 () Bool)

(assert (=> b!858127 m!1100905))

(declare-fun m!1100907 () Bool)

(assert (=> b!858127 m!1100907))

(assert (=> b!858127 m!1100905))

(assert (=> b!858127 m!1100907))

(declare-fun m!1100909 () Bool)

(assert (=> b!858127 m!1100909))

(assert (=> b!857941 d!268708))

(declare-fun d!268718 () Bool)

(assert (=> d!268718 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!324559 () Unit!13773)

(declare-fun choose!5060 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> d!268718 (= lt!324559 (choose!5060 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!268718 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268718 (= (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!324559)))

(declare-fun bs!232119 () Bool)

(assert (= bs!232119 d!268718))

(assert (=> bs!232119 m!1100629))

(assert (=> bs!232119 m!1100629))

(declare-fun m!1100911 () Bool)

(assert (=> bs!232119 m!1100911))

(declare-fun m!1100913 () Bool)

(assert (=> bs!232119 m!1100913))

(assert (=> bs!232119 m!1100609))

(assert (=> b!857941 d!268718))

(declare-fun d!268720 () Bool)

(declare-fun c!139050 () Bool)

(assert (=> d!268720 (= c!139050 ((_ is IntegerValue!5406) (value!56175 (h!14657 l!5107))))))

(declare-fun e!564807 () Bool)

(assert (=> d!268720 (= (inv!21 (value!56175 (h!14657 l!5107))) e!564807)))

(declare-fun b!858139 () Bool)

(declare-fun e!564806 () Bool)

(assert (=> b!858139 (= e!564807 e!564806)))

(declare-fun c!139051 () Bool)

(assert (=> b!858139 (= c!139051 ((_ is IntegerValue!5407) (value!56175 (h!14657 l!5107))))))

(declare-fun b!858140 () Bool)

(declare-fun e!564808 () Bool)

(declare-fun inv!15 (TokenValue!1802) Bool)

(assert (=> b!858140 (= e!564808 (inv!15 (value!56175 (h!14657 l!5107))))))

(declare-fun b!858141 () Bool)

(declare-fun inv!17 (TokenValue!1802) Bool)

(assert (=> b!858141 (= e!564806 (inv!17 (value!56175 (h!14657 l!5107))))))

(declare-fun b!858142 () Bool)

(declare-fun res!391606 () Bool)

(assert (=> b!858142 (=> res!391606 e!564808)))

(assert (=> b!858142 (= res!391606 (not ((_ is IntegerValue!5408) (value!56175 (h!14657 l!5107)))))))

(assert (=> b!858142 (= e!564806 e!564808)))

(declare-fun b!858143 () Bool)

(declare-fun inv!16 (TokenValue!1802) Bool)

(assert (=> b!858143 (= e!564807 (inv!16 (value!56175 (h!14657 l!5107))))))

(assert (= (and d!268720 c!139050) b!858143))

(assert (= (and d!268720 (not c!139050)) b!858139))

(assert (= (and b!858139 c!139051) b!858141))

(assert (= (and b!858139 (not c!139051)) b!858142))

(assert (= (and b!858142 (not res!391606)) b!858140))

(declare-fun m!1100915 () Bool)

(assert (=> b!858140 m!1100915))

(declare-fun m!1100917 () Bool)

(assert (=> b!858141 m!1100917))

(declare-fun m!1100919 () Bool)

(assert (=> b!858143 m!1100919))

(assert (=> b!857930 d!268720))

(declare-fun d!268722 () Bool)

(declare-fun res!391608 () Bool)

(declare-fun e!564810 () Bool)

(assert (=> d!268722 (=> res!391608 e!564810)))

(assert (=> d!268722 (= res!391608 (or (not ((_ is Cons!9256) lt!324436)) (not ((_ is Cons!9256) (t!97050 lt!324436)))))))

(assert (=> d!268722 (= (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 lt!324436 rules!2621) e!564810)))

(declare-fun b!858144 () Bool)

(declare-fun e!564809 () Bool)

(assert (=> b!858144 (= e!564810 e!564809)))

(declare-fun res!391607 () Bool)

(assert (=> b!858144 (=> (not res!391607) (not e!564809))))

(assert (=> b!858144 (= res!391607 (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621))))

(declare-fun lt!324564 () Unit!13773)

(declare-fun Unit!13784 () Unit!13773)

(assert (=> b!858144 (= lt!324564 Unit!13784)))

(assert (=> b!858144 (> (size!7732 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) 0)))

(declare-fun lt!324565 () Unit!13773)

(declare-fun Unit!13785 () Unit!13773)

(assert (=> b!858144 (= lt!324565 Unit!13785)))

(assert (=> b!858144 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324436)))))

(declare-fun lt!324560 () Unit!13773)

(declare-fun Unit!13786 () Unit!13773)

(assert (=> b!858144 (= lt!324560 Unit!13786)))

(assert (=> b!858144 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436))))

(declare-fun lt!324566 () Unit!13773)

(declare-fun lt!324561 () Unit!13773)

(assert (=> b!858144 (= lt!324566 lt!324561)))

(assert (=> b!858144 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324436)))))

(assert (=> b!858144 (= lt!324561 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324436 (h!14657 (t!97050 lt!324436))))))

(declare-fun lt!324563 () Unit!13773)

(declare-fun lt!324562 () Unit!13773)

(assert (=> b!858144 (= lt!324563 lt!324562)))

(assert (=> b!858144 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436))))

(assert (=> b!858144 (= lt!324562 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324436 (h!14657 lt!324436)))))

(declare-fun b!858145 () Bool)

(assert (=> b!858145 (= e!564809 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))) rules!2621))))

(assert (= (and d!268722 (not res!391608)) b!858144))

(assert (= (and b!858144 res!391607) b!858145))

(declare-fun m!1100921 () Bool)

(assert (=> b!858144 m!1100921))

(assert (=> b!858144 m!1100843))

(assert (=> b!858144 m!1100593))

(assert (=> b!858144 m!1100921))

(declare-fun m!1100923 () Bool)

(assert (=> b!858144 m!1100923))

(declare-fun m!1100925 () Bool)

(assert (=> b!858144 m!1100925))

(declare-fun m!1100927 () Bool)

(assert (=> b!858144 m!1100927))

(declare-fun m!1100929 () Bool)

(assert (=> b!858144 m!1100929))

(declare-fun m!1100931 () Bool)

(assert (=> b!858145 m!1100931))

(assert (=> b!857940 d!268722))

(declare-fun d!268724 () Bool)

(declare-fun prefixMatchZipperSequence!41 (Regex!2169 BalanceConc!6148) Bool)

(declare-fun rulesRegex!28 (LexerInterface!1538 List!9273) Regex!2169)

(declare-fun ++!2400 (BalanceConc!6148 BalanceConc!6148) BalanceConc!6148)

(declare-fun singletonSeq!556 (C!4908) BalanceConc!6148)

(declare-fun apply!1934 (BalanceConc!6148 Int) C!4908)

(assert (=> d!268724 (= (separableTokensPredicate!68 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621) (not (prefixMatchZipperSequence!41 (rulesRegex!28 thiss!20117 rules!2621) (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))))))

(declare-fun bs!232124 () Bool)

(assert (= bs!232124 d!268724))

(declare-fun m!1100979 () Bool)

(assert (=> bs!232124 m!1100979))

(declare-fun m!1100981 () Bool)

(assert (=> bs!232124 m!1100981))

(declare-fun m!1100983 () Bool)

(assert (=> bs!232124 m!1100983))

(declare-fun m!1100985 () Bool)

(assert (=> bs!232124 m!1100985))

(declare-fun m!1100987 () Bool)

(assert (=> bs!232124 m!1100987))

(assert (=> bs!232124 m!1100987))

(declare-fun m!1100989 () Bool)

(assert (=> bs!232124 m!1100989))

(assert (=> bs!232124 m!1100979))

(assert (=> bs!232124 m!1100985))

(assert (=> bs!232124 m!1100921))

(assert (=> bs!232124 m!1100921))

(assert (=> bs!232124 m!1100989))

(assert (=> bs!232124 m!1100981))

(assert (=> b!857940 d!268724))

(declare-fun d!268740 () Bool)

(assert (=> d!268740 (separableTokensPredicate!68 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621)))

(declare-fun lt!324586 () Unit!13773)

(declare-fun choose!5061 (LexerInterface!1538 Token!3138 Token!3138 List!9273) Unit!13773)

(assert (=> d!268740 (= lt!324586 (choose!5061 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621))))

(assert (=> d!268740 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268740 (= (lemmaTokensOfDifferentKindsAreSeparable!48 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621) lt!324586)))

(declare-fun bs!232125 () Bool)

(assert (= bs!232125 d!268740))

(assert (=> bs!232125 m!1100569))

(declare-fun m!1100991 () Bool)

(assert (=> bs!232125 m!1100991))

(assert (=> bs!232125 m!1100609))

(assert (=> b!857940 d!268740))

(declare-fun d!268742 () Bool)

(assert (=> d!268742 (= (head!1488 (t!97050 (t!97050 lt!324436))) (h!14657 (t!97050 (t!97050 lt!324436))))))

(assert (=> b!857940 d!268742))

(declare-fun b!858179 () Bool)

(declare-fun e!564835 () List!9271)

(assert (=> b!858179 (= e!564835 Nil!9255)))

(declare-fun b!858180 () Bool)

(declare-fun res!391636 () Bool)

(declare-fun e!564833 () Bool)

(assert (=> b!858180 (=> (not res!391636) (not e!564833))))

(declare-fun e!564834 () Bool)

(assert (=> b!858180 (= res!391636 e!564834)))

(declare-fun res!391637 () Bool)

(assert (=> b!858180 (=> res!391637 e!564834)))

(assert (=> b!858180 (= res!391637 (not ((_ is Cons!9256) lt!324443)))))

(declare-fun b!858181 () Bool)

(declare-fun e!564831 () List!9271)

(assert (=> b!858181 (= e!564831 Nil!9255)))

(declare-fun b!858182 () Bool)

(declare-fun lt!324594 () List!9272)

(assert (=> b!858182 (= e!564831 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324594))) (printList!486 thiss!20117 (t!97050 lt!324594))))))

(declare-fun d!268744 () Bool)

(declare-fun lt!324592 () List!9272)

(assert (=> d!268744 (= (printList!486 thiss!20117 lt!324592) (printWithSeparatorTokenList!44 thiss!20117 lt!324443 separatorToken!297))))

(declare-fun e!564832 () List!9272)

(assert (=> d!268744 (= lt!324592 e!564832)))

(declare-fun c!139054 () Bool)

(assert (=> d!268744 (= c!139054 ((_ is Cons!9256) lt!324443))))

(assert (=> d!268744 e!564833))

(declare-fun res!391635 () Bool)

(assert (=> d!268744 (=> (not res!391635) (not e!564833))))

(assert (=> d!268744 (= res!391635 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(assert (=> d!268744 (= (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) lt!324592)))

(declare-fun b!858183 () Bool)

(assert (=> b!858183 (= e!564832 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443)))))

(declare-fun lt!324588 () List!9271)

(assert (=> b!858183 (= lt!324588 (list!3652 (charsOf!1003 (h!14657 lt!324443))))))

(declare-fun lt!324589 () List!9271)

(assert (=> b!858183 (= lt!324589 (list!3652 (charsOf!1003 separatorToken!297)))))

(declare-fun lt!324590 () List!9271)

(assert (=> b!858183 (= lt!324590 (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)))))

(declare-fun lt!324591 () Unit!13773)

(assert (=> b!858183 (= lt!324591 (lemmaConcatAssociativity!761 lt!324588 lt!324589 lt!324590))))

(assert (=> b!858183 (= (++!2399 (++!2399 lt!324588 lt!324589) lt!324590) (++!2399 lt!324588 (++!2399 lt!324589 lt!324590)))))

(declare-fun lt!324593 () Unit!13773)

(assert (=> b!858183 (= lt!324593 lt!324591)))

(declare-fun b!858184 () Bool)

(assert (=> b!858184 (= e!564832 Nil!9256)))

(declare-fun b!858185 () Bool)

(assert (=> b!858185 (= e!564834 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443))) e!564831))))

(declare-fun c!139056 () Bool)

(assert (=> b!858185 (= c!139056 ((_ is Cons!9256) lt!324594))))

(assert (=> b!858185 (= lt!324594 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443)))))

(declare-fun b!858186 () Bool)

(declare-fun e!564830 () Bool)

(assert (=> b!858186 (= e!564833 e!564830)))

(declare-fun res!391638 () Bool)

(assert (=> b!858186 (=> res!391638 e!564830)))

(assert (=> b!858186 (= res!391638 (not ((_ is Cons!9256) lt!324443)))))

(declare-fun b!858187 () Bool)

(declare-fun lt!324587 () List!9272)

(assert (=> b!858187 (= e!564835 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324587))) (printList!486 thiss!20117 (t!97050 lt!324587))))))

(declare-fun b!858188 () Bool)

(assert (=> b!858188 (= e!564830 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)) e!564835))))

(declare-fun c!139055 () Bool)

(assert (=> b!858188 (= c!139055 ((_ is Cons!9256) lt!324587))))

(assert (=> b!858188 (= lt!324587 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297))))

(assert (= (and d!268744 res!391635) b!858180))

(assert (= (and b!858180 (not res!391637)) b!858185))

(assert (= (and b!858185 c!139056) b!858182))

(assert (= (and b!858185 (not c!139056)) b!858181))

(assert (= (and b!858180 res!391636) b!858186))

(assert (= (and b!858186 (not res!391638)) b!858188))

(assert (= (and b!858188 c!139055) b!858187))

(assert (= (and b!858188 (not c!139055)) b!858179))

(assert (= (and d!268744 c!139054) b!858183))

(assert (= (and d!268744 (not c!139054)) b!858184))

(declare-fun m!1100993 () Bool)

(assert (=> b!858188 m!1100993))

(assert (=> b!858188 m!1100993))

(declare-fun m!1100995 () Bool)

(assert (=> b!858188 m!1100995))

(assert (=> b!858188 m!1100995))

(declare-fun m!1100997 () Bool)

(assert (=> b!858188 m!1100997))

(assert (=> b!858185 m!1100993))

(assert (=> b!858185 m!1100993))

(assert (=> b!858185 m!1100995))

(assert (=> b!858185 m!1100995))

(declare-fun m!1100999 () Bool)

(assert (=> b!858185 m!1100999))

(assert (=> b!858185 m!1100999))

(declare-fun m!1101001 () Bool)

(assert (=> b!858185 m!1101001))

(declare-fun m!1101003 () Bool)

(assert (=> b!858182 m!1101003))

(assert (=> b!858182 m!1101003))

(declare-fun m!1101005 () Bool)

(assert (=> b!858182 m!1101005))

(declare-fun m!1101007 () Bool)

(assert (=> b!858182 m!1101007))

(assert (=> b!858182 m!1101005))

(assert (=> b!858182 m!1101007))

(declare-fun m!1101009 () Bool)

(assert (=> b!858182 m!1101009))

(assert (=> b!858183 m!1100995))

(assert (=> b!858183 m!1100999))

(declare-fun m!1101011 () Bool)

(assert (=> b!858183 m!1101011))

(assert (=> b!858183 m!1101011))

(declare-fun m!1101013 () Bool)

(assert (=> b!858183 m!1101013))

(declare-fun m!1101015 () Bool)

(assert (=> b!858183 m!1101015))

(assert (=> b!858183 m!1100993))

(declare-fun m!1101017 () Bool)

(assert (=> b!858183 m!1101017))

(assert (=> b!858183 m!1100993))

(declare-fun m!1101019 () Bool)

(assert (=> b!858183 m!1101019))

(declare-fun m!1101021 () Bool)

(assert (=> b!858183 m!1101021))

(assert (=> b!858183 m!1100891))

(assert (=> b!858183 m!1100893))

(declare-fun m!1101023 () Bool)

(assert (=> b!858183 m!1101023))

(assert (=> b!858183 m!1101019))

(assert (=> b!858183 m!1100993))

(assert (=> b!858183 m!1100995))

(assert (=> b!858183 m!1101023))

(declare-fun m!1101025 () Bool)

(assert (=> b!858183 m!1101025))

(assert (=> b!858183 m!1100891))

(declare-fun m!1101027 () Bool)

(assert (=> d!268744 m!1101027))

(declare-fun m!1101029 () Bool)

(assert (=> d!268744 m!1101029))

(declare-fun m!1101031 () Bool)

(assert (=> b!858187 m!1101031))

(assert (=> b!858187 m!1101031))

(declare-fun m!1101033 () Bool)

(assert (=> b!858187 m!1101033))

(declare-fun m!1101035 () Bool)

(assert (=> b!858187 m!1101035))

(assert (=> b!858187 m!1101033))

(assert (=> b!858187 m!1101035))

(declare-fun m!1101037 () Bool)

(assert (=> b!858187 m!1101037))

(assert (=> b!857931 d!268744))

(declare-fun d!268746 () Bool)

(assert (=> d!268746 (= (tail!1048 l!5107) (t!97050 l!5107))))

(assert (=> b!857931 d!268746))

(declare-fun d!268748 () Bool)

(assert (=> d!268748 (= (isEmpty!5493 (t!97050 (t!97050 lt!324436))) ((_ is Nil!9256) (t!97050 (t!97050 lt!324436))))))

(assert (=> b!857933 d!268748))

(declare-fun d!268750 () Bool)

(assert (=> d!268750 (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621)))

(declare-fun lt!324595 () Unit!13773)

(assert (=> d!268750 (= lt!324595 (choose!5061 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621))))

(assert (=> d!268750 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268750 (= (lemmaTokensOfDifferentKindsAreSeparable!48 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621) lt!324595)))

(declare-fun bs!232126 () Bool)

(assert (= bs!232126 d!268750))

(assert (=> bs!232126 m!1100593))

(declare-fun m!1101039 () Bool)

(assert (=> bs!232126 m!1101039))

(assert (=> bs!232126 m!1100609))

(assert (=> b!857933 d!268750))

(declare-fun d!268752 () Bool)

(assert (=> d!268752 (= (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621) (not (prefixMatchZipperSequence!41 (rulesRegex!28 thiss!20117 rules!2621) (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))))))

(declare-fun bs!232127 () Bool)

(assert (= bs!232127 d!268752))

(assert (=> bs!232127 m!1100979))

(declare-fun m!1101041 () Bool)

(assert (=> bs!232127 m!1101041))

(declare-fun m!1101043 () Bool)

(assert (=> bs!232127 m!1101043))

(assert (=> bs!232127 m!1100921))

(declare-fun m!1101045 () Bool)

(assert (=> bs!232127 m!1101045))

(assert (=> bs!232127 m!1101045))

(declare-fun m!1101047 () Bool)

(assert (=> bs!232127 m!1101047))

(assert (=> bs!232127 m!1100979))

(assert (=> bs!232127 m!1100921))

(declare-fun m!1101049 () Bool)

(assert (=> bs!232127 m!1101049))

(assert (=> bs!232127 m!1101049))

(assert (=> bs!232127 m!1101047))

(assert (=> bs!232127 m!1101041))

(assert (=> b!857933 d!268752))

(declare-fun d!268754 () Bool)

(assert (=> d!268754 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))

(declare-fun lt!324596 () Unit!13773)

(assert (=> d!268754 (= lt!324596 (choose!5060 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(assert (=> d!268754 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268754 (= (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 lt!324443 separatorToken!297) lt!324596)))

(declare-fun bs!232128 () Bool)

(assert (= bs!232128 d!268754))

(assert (=> bs!232128 m!1100585))

(assert (=> bs!232128 m!1100585))

(declare-fun m!1101051 () Bool)

(assert (=> bs!232128 m!1101051))

(declare-fun m!1101053 () Bool)

(assert (=> bs!232128 m!1101053))

(assert (=> bs!232128 m!1100609))

(assert (=> b!857933 d!268754))

(declare-fun d!268756 () Bool)

(declare-fun e!564884 () Bool)

(assert (=> d!268756 e!564884))

(declare-fun res!391661 () Bool)

(assert (=> d!268756 (=> (not res!391661) (not e!564884))))

(assert (=> d!268756 (= res!391661 ((_ is Lexer!1536) thiss!20117))))

(declare-fun lt!324611 () Unit!13773)

(declare-fun choose!5062 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> d!268756 (= lt!324611 (choose!5062 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(assert (=> d!268756 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268756 (= (printWithSeparatorTokenImpliesSeparableTokensList!32 thiss!20117 rules!2621 lt!324443 separatorToken!297) lt!324611)))

(declare-fun b!858262 () Bool)

(assert (=> b!858262 (= e!564884 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) rules!2621))))

(declare-fun lt!324609 () Unit!13773)

(declare-fun lt!324610 () Unit!13773)

(assert (=> b!858262 (= lt!324609 lt!324610)))

(assert (=> b!858262 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))

(assert (=> b!858262 (= lt!324610 (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(declare-fun b!858263 () Bool)

(declare-fun res!391662 () Bool)

(assert (=> b!858263 (=> (not res!391662) (not e!564884))))

(assert (=> b!858263 (= res!391662 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324443))))

(declare-fun b!858264 () Bool)

(declare-fun res!391659 () Bool)

(assert (=> b!858264 (=> (not res!391659) (not e!564884))))

(assert (=> b!858264 (= res!391659 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!858265 () Bool)

(declare-fun res!391660 () Bool)

(assert (=> b!858265 (=> (not res!391660) (not e!564884))))

(assert (=> b!858265 (= res!391660 (rulesInvariant!1414 thiss!20117 rules!2621))))

(declare-fun b!858266 () Bool)

(declare-fun res!391663 () Bool)

(assert (=> b!858266 (=> (not res!391663) (not e!564884))))

(assert (=> b!858266 (= res!391663 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(assert (= (and d!268756 res!391661) b!858265))

(assert (= (and b!858265 res!391660) b!858263))

(assert (= (and b!858263 res!391662) b!858264))

(assert (= (and b!858264 res!391659) b!858266))

(assert (= (and b!858266 res!391663) b!858262))

(assert (=> b!858262 m!1100585))

(assert (=> b!858262 m!1100585))

(declare-fun m!1101089 () Bool)

(assert (=> b!858262 m!1101089))

(assert (=> b!858262 m!1100585))

(assert (=> b!858262 m!1101051))

(assert (=> b!858262 m!1100595))

(declare-fun m!1101091 () Bool)

(assert (=> d!268756 m!1101091))

(assert (=> d!268756 m!1100609))

(assert (=> b!858265 m!1100613))

(assert (=> b!858264 m!1100583))

(declare-fun m!1101093 () Bool)

(assert (=> b!858263 m!1101093))

(assert (=> b!857933 d!268756))

(declare-fun bs!232130 () Bool)

(declare-fun d!268766 () Bool)

(assert (= bs!232130 (and d!268766 b!857938)))

(declare-fun lambda!25759 () Int)

(assert (=> bs!232130 (not (= lambda!25759 lambda!25750))))

(declare-fun bs!232131 () Bool)

(assert (= bs!232131 (and d!268766 d!268698)))

(assert (=> bs!232131 (= lambda!25759 lambda!25757)))

(declare-fun b!858271 () Bool)

(declare-fun e!564889 () Bool)

(assert (=> b!858271 (= e!564889 true)))

(declare-fun b!858270 () Bool)

(declare-fun e!564888 () Bool)

(assert (=> b!858270 (= e!564888 e!564889)))

(declare-fun b!858269 () Bool)

(declare-fun e!564887 () Bool)

(assert (=> b!858269 (= e!564887 e!564888)))

(assert (=> d!268766 e!564887))

(assert (= b!858270 b!858271))

(assert (= b!858269 b!858270))

(assert (= (and d!268766 ((_ is Cons!9257) rules!2621)) b!858269))

(assert (=> b!858271 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25759))))

(assert (=> b!858271 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25759))))

(assert (=> d!268766 true))

(declare-fun lt!324612 () Bool)

(assert (=> d!268766 (= lt!324612 (forall!2197 lt!324435 lambda!25759))))

(declare-fun e!564886 () Bool)

(assert (=> d!268766 (= lt!324612 e!564886)))

(declare-fun res!391664 () Bool)

(assert (=> d!268766 (=> res!391664 e!564886)))

(assert (=> d!268766 (= res!391664 (not ((_ is Cons!9256) lt!324435)))))

(assert (=> d!268766 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268766 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324435) lt!324612)))

(declare-fun b!858267 () Bool)

(declare-fun e!564885 () Bool)

(assert (=> b!858267 (= e!564886 e!564885)))

(declare-fun res!391665 () Bool)

(assert (=> b!858267 (=> (not res!391665) (not e!564885))))

(assert (=> b!858267 (= res!391665 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435)))))

(declare-fun b!858268 () Bool)

(assert (=> b!858268 (= e!564885 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 lt!324435)))))

(assert (= (and d!268766 (not res!391664)) b!858267))

(assert (= (and b!858267 res!391665) b!858268))

(declare-fun m!1101095 () Bool)

(assert (=> d!268766 m!1101095))

(assert (=> d!268766 m!1100609))

(assert (=> b!858267 m!1100759))

(declare-fun m!1101097 () Bool)

(assert (=> b!858268 m!1101097))

(assert (=> b!857933 d!268766))

(declare-fun d!268768 () Bool)

(declare-fun res!391668 () Bool)

(declare-fun e!564892 () Bool)

(assert (=> d!268768 (=> (not res!391668) (not e!564892))))

(declare-fun rulesValid!613 (LexerInterface!1538 List!9273) Bool)

(assert (=> d!268768 (= res!391668 (rulesValid!613 thiss!20117 rules!2621))))

(assert (=> d!268768 (= (rulesInvariant!1414 thiss!20117 rules!2621) e!564892)))

(declare-fun b!858274 () Bool)

(declare-datatypes ((List!9275 0))(
  ( (Nil!9259) (Cons!9259 (h!14660 String!10908) (t!97099 List!9275)) )
))
(declare-fun noDuplicateTag!613 (LexerInterface!1538 List!9273 List!9275) Bool)

(assert (=> b!858274 (= e!564892 (noDuplicateTag!613 thiss!20117 rules!2621 Nil!9259))))

(assert (= (and d!268768 res!391668) b!858274))

(declare-fun m!1101099 () Bool)

(assert (=> d!268768 m!1101099))

(declare-fun m!1101101 () Bool)

(assert (=> b!858274 m!1101101))

(assert (=> b!857943 d!268768))

(declare-fun d!268770 () Bool)

(assert (=> d!268770 (= (inv!11773 (tag!1998 (rule!3159 separatorToken!297))) (= (mod (str.len (value!56174 (tag!1998 (rule!3159 separatorToken!297)))) 2) 0))))

(assert (=> b!857932 d!268770))

(declare-fun d!268772 () Bool)

(declare-fun res!391669 () Bool)

(declare-fun e!564893 () Bool)

(assert (=> d!268772 (=> (not res!391669) (not e!564893))))

(assert (=> d!268772 (= res!391669 (semiInverseModEq!682 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))))))

(assert (=> d!268772 (= (inv!11777 (transformation!1736 (rule!3159 separatorToken!297))) e!564893)))

(declare-fun b!858275 () Bool)

(assert (=> b!858275 (= e!564893 (equivClasses!649 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))))))

(assert (= (and d!268772 res!391669) b!858275))

(declare-fun m!1101103 () Bool)

(assert (=> d!268772 m!1101103))

(declare-fun m!1101105 () Bool)

(assert (=> b!858275 m!1101105))

(assert (=> b!857932 d!268772))

(declare-fun bs!232132 () Bool)

(declare-fun d!268774 () Bool)

(assert (= bs!232132 (and d!268774 b!857938)))

(declare-fun lambda!25760 () Int)

(assert (=> bs!232132 (not (= lambda!25760 lambda!25750))))

(declare-fun bs!232133 () Bool)

(assert (= bs!232133 (and d!268774 d!268698)))

(assert (=> bs!232133 (= lambda!25760 lambda!25757)))

(declare-fun bs!232134 () Bool)

(assert (= bs!232134 (and d!268774 d!268766)))

(assert (=> bs!232134 (= lambda!25760 lambda!25759)))

(declare-fun b!858280 () Bool)

(declare-fun e!564898 () Bool)

(assert (=> b!858280 (= e!564898 true)))

(declare-fun b!858279 () Bool)

(declare-fun e!564897 () Bool)

(assert (=> b!858279 (= e!564897 e!564898)))

(declare-fun b!858278 () Bool)

(declare-fun e!564896 () Bool)

(assert (=> b!858278 (= e!564896 e!564897)))

(assert (=> d!268774 e!564896))

(assert (= b!858279 b!858280))

(assert (= b!858278 b!858279))

(assert (= (and d!268774 ((_ is Cons!9257) rules!2621)) b!858278))

(assert (=> b!858280 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25760))))

(assert (=> b!858280 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25760))))

(assert (=> d!268774 true))

(declare-fun lt!324613 () Bool)

(assert (=> d!268774 (= lt!324613 (forall!2197 l!5107 lambda!25760))))

(declare-fun e!564895 () Bool)

(assert (=> d!268774 (= lt!324613 e!564895)))

(declare-fun res!391670 () Bool)

(assert (=> d!268774 (=> res!391670 e!564895)))

(assert (=> d!268774 (= res!391670 (not ((_ is Cons!9256) l!5107)))))

(assert (=> d!268774 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268774 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 l!5107) lt!324613)))

(declare-fun b!858276 () Bool)

(declare-fun e!564894 () Bool)

(assert (=> b!858276 (= e!564895 e!564894)))

(declare-fun res!391671 () Bool)

(assert (=> b!858276 (=> (not res!391671) (not e!564894))))

(assert (=> b!858276 (= res!391671 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 l!5107)))))

(declare-fun b!858277 () Bool)

(assert (=> b!858277 (= e!564894 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 l!5107)))))

(assert (= (and d!268774 (not res!391670)) b!858276))

(assert (= (and b!858276 res!391671) b!858277))

(declare-fun m!1101107 () Bool)

(assert (=> d!268774 m!1101107))

(assert (=> d!268774 m!1100609))

(declare-fun m!1101109 () Bool)

(assert (=> b!858276 m!1101109))

(declare-fun m!1101111 () Bool)

(assert (=> b!858277 m!1101111))

(assert (=> b!857945 d!268774))

(declare-fun d!268776 () Bool)

(declare-fun res!391676 () Bool)

(declare-fun e!564903 () Bool)

(assert (=> d!268776 (=> res!391676 e!564903)))

(assert (=> d!268776 (= res!391676 (not ((_ is Cons!9257) rules!2621)))))

(assert (=> d!268776 (= (sepAndNonSepRulesDisjointChars!536 rules!2621 rules!2621) e!564903)))

(declare-fun b!858285 () Bool)

(declare-fun e!564904 () Bool)

(assert (=> b!858285 (= e!564903 e!564904)))

(declare-fun res!391677 () Bool)

(assert (=> b!858285 (=> (not res!391677) (not e!564904))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!249 (Rule!3272 List!9273) Bool)

(assert (=> b!858285 (= res!391677 (ruleDisjointCharsFromAllFromOtherType!249 (h!14658 rules!2621) rules!2621))))

(declare-fun b!858286 () Bool)

(assert (=> b!858286 (= e!564904 (sepAndNonSepRulesDisjointChars!536 rules!2621 (t!97051 rules!2621)))))

(assert (= (and d!268776 (not res!391676)) b!858285))

(assert (= (and b!858285 res!391677) b!858286))

(declare-fun m!1101113 () Bool)

(assert (=> b!858285 m!1101113))

(declare-fun m!1101115 () Bool)

(assert (=> b!858286 m!1101115))

(assert (=> b!857934 d!268776))

(declare-fun d!268778 () Bool)

(declare-fun res!391678 () Bool)

(declare-fun e!564905 () Bool)

(assert (=> d!268778 (=> (not res!391678) (not e!564905))))

(assert (=> d!268778 (= res!391678 (not (isEmpty!5495 (originalCharacters!2292 separatorToken!297))))))

(assert (=> d!268778 (= (inv!11776 separatorToken!297) e!564905)))

(declare-fun b!858287 () Bool)

(declare-fun res!391679 () Bool)

(assert (=> b!858287 (=> (not res!391679) (not e!564905))))

(assert (=> b!858287 (= res!391679 (= (originalCharacters!2292 separatorToken!297) (list!3652 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(declare-fun b!858288 () Bool)

(assert (=> b!858288 (= e!564905 (= (size!7729 separatorToken!297) (size!7733 (originalCharacters!2292 separatorToken!297))))))

(assert (= (and d!268778 res!391678) b!858287))

(assert (= (and b!858287 res!391679) b!858288))

(declare-fun b_lambda!28941 () Bool)

(assert (=> (not b_lambda!28941) (not b!858287)))

(declare-fun t!97085 () Bool)

(declare-fun tb!61091 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97085) tb!61091))

(declare-fun b!858289 () Bool)

(declare-fun e!564906 () Bool)

(declare-fun tp!270726 () Bool)

(assert (=> b!858289 (= e!564906 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))) tp!270726))))

(declare-fun result!70708 () Bool)

(assert (=> tb!61091 (= result!70708 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))) e!564906))))

(assert (= tb!61091 b!858289))

(declare-fun m!1101117 () Bool)

(assert (=> b!858289 m!1101117))

(declare-fun m!1101119 () Bool)

(assert (=> tb!61091 m!1101119))

(assert (=> b!858287 t!97085))

(declare-fun b_and!76123 () Bool)

(assert (= b_and!76109 (and (=> t!97085 result!70708) b_and!76123)))

(declare-fun tb!61093 () Bool)

(declare-fun t!97087 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97087) tb!61093))

(declare-fun result!70710 () Bool)

(assert (= result!70710 result!70708))

(assert (=> b!858287 t!97087))

(declare-fun b_and!76125 () Bool)

(assert (= b_and!76111 (and (=> t!97087 result!70710) b_and!76125)))

(declare-fun tb!61095 () Bool)

(declare-fun t!97089 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97089) tb!61095))

(declare-fun result!70712 () Bool)

(assert (= result!70712 result!70708))

(assert (=> b!858287 t!97089))

(declare-fun b_and!76127 () Bool)

(assert (= b_and!76113 (and (=> t!97089 result!70712) b_and!76127)))

(declare-fun m!1101121 () Bool)

(assert (=> d!268778 m!1101121))

(declare-fun m!1101123 () Bool)

(assert (=> b!858287 m!1101123))

(assert (=> b!858287 m!1101123))

(declare-fun m!1101125 () Bool)

(assert (=> b!858287 m!1101125))

(declare-fun m!1101127 () Bool)

(assert (=> b!858288 m!1101127))

(assert (=> start!77270 d!268778))

(declare-fun d!268780 () Bool)

(declare-fun c!139057 () Bool)

(assert (=> d!268780 (= c!139057 ((_ is IntegerValue!5406) (value!56175 separatorToken!297)))))

(declare-fun e!564908 () Bool)

(assert (=> d!268780 (= (inv!21 (value!56175 separatorToken!297)) e!564908)))

(declare-fun b!858290 () Bool)

(declare-fun e!564907 () Bool)

(assert (=> b!858290 (= e!564908 e!564907)))

(declare-fun c!139058 () Bool)

(assert (=> b!858290 (= c!139058 ((_ is IntegerValue!5407) (value!56175 separatorToken!297)))))

(declare-fun b!858291 () Bool)

(declare-fun e!564909 () Bool)

(assert (=> b!858291 (= e!564909 (inv!15 (value!56175 separatorToken!297)))))

(declare-fun b!858292 () Bool)

(assert (=> b!858292 (= e!564907 (inv!17 (value!56175 separatorToken!297)))))

(declare-fun b!858293 () Bool)

(declare-fun res!391680 () Bool)

(assert (=> b!858293 (=> res!391680 e!564909)))

(assert (=> b!858293 (= res!391680 (not ((_ is IntegerValue!5408) (value!56175 separatorToken!297))))))

(assert (=> b!858293 (= e!564907 e!564909)))

(declare-fun b!858294 () Bool)

(assert (=> b!858294 (= e!564908 (inv!16 (value!56175 separatorToken!297)))))

(assert (= (and d!268780 c!139057) b!858294))

(assert (= (and d!268780 (not c!139057)) b!858290))

(assert (= (and b!858290 c!139058) b!858292))

(assert (= (and b!858290 (not c!139058)) b!858293))

(assert (= (and b!858293 (not res!391680)) b!858291))

(declare-fun m!1101129 () Bool)

(assert (=> b!858291 m!1101129))

(declare-fun m!1101131 () Bool)

(assert (=> b!858292 m!1101131))

(declare-fun m!1101133 () Bool)

(assert (=> b!858294 m!1101133))

(assert (=> b!857946 d!268780))

(declare-fun d!268782 () Bool)

(assert (=> d!268782 (= (head!1488 l!5107) (h!14657 l!5107))))

(assert (=> b!857935 d!268782))

(declare-fun d!268784 () Bool)

(declare-fun lt!324618 () Bool)

(declare-fun e!564914 () Bool)

(assert (=> d!268784 (= lt!324618 e!564914)))

(declare-fun res!391688 () Bool)

(assert (=> d!268784 (=> (not res!391688) (not e!564914))))

(declare-datatypes ((IArray!6143 0))(
  ( (IArray!6144 (innerList!3129 List!9272)) )
))
(declare-datatypes ((Conc!3069 0))(
  ( (Node!3069 (left!6854 Conc!3069) (right!7184 Conc!3069) (csize!6368 Int) (cheight!3280 Int)) (Leaf!4525 (xs!5758 IArray!6143) (csize!6369 Int)) (Empty!3069) )
))
(declare-datatypes ((BalanceConc!6152 0))(
  ( (BalanceConc!6153 (c!139060 Conc!3069)) )
))
(declare-fun list!3654 (BalanceConc!6152) List!9272)

(declare-datatypes ((tuple2!10428 0))(
  ( (tuple2!10429 (_1!6040 BalanceConc!6152) (_2!6040 BalanceConc!6148)) )
))
(declare-fun lex!630 (LexerInterface!1538 List!9273 BalanceConc!6148) tuple2!10428)

(declare-fun print!567 (LexerInterface!1538 BalanceConc!6152) BalanceConc!6148)

(declare-fun singletonSeq!557 (Token!3138) BalanceConc!6152)

(assert (=> d!268784 (= res!391688 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))) (list!3654 (singletonSeq!557 separatorToken!297))))))

(declare-fun e!564915 () Bool)

(assert (=> d!268784 (= lt!324618 e!564915)))

(declare-fun res!391689 () Bool)

(assert (=> d!268784 (=> (not res!391689) (not e!564915))))

(declare-fun lt!324619 () tuple2!10428)

(declare-fun size!7735 (BalanceConc!6152) Int)

(assert (=> d!268784 (= res!391689 (= (size!7735 (_1!6040 lt!324619)) 1))))

(assert (=> d!268784 (= lt!324619 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))))

(assert (=> d!268784 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268784 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 separatorToken!297) lt!324618)))

(declare-fun b!858301 () Bool)

(declare-fun res!391687 () Bool)

(assert (=> b!858301 (=> (not res!391687) (not e!564915))))

(declare-fun apply!1935 (BalanceConc!6152 Int) Token!3138)

(assert (=> b!858301 (= res!391687 (= (apply!1935 (_1!6040 lt!324619) 0) separatorToken!297))))

(declare-fun b!858302 () Bool)

(declare-fun isEmpty!5497 (BalanceConc!6148) Bool)

(assert (=> b!858302 (= e!564915 (isEmpty!5497 (_2!6040 lt!324619)))))

(declare-fun b!858303 () Bool)

(assert (=> b!858303 (= e!564914 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))))))

(assert (= (and d!268784 res!391689) b!858301))

(assert (= (and b!858301 res!391687) b!858302))

(assert (= (and d!268784 res!391688) b!858303))

(declare-fun m!1101135 () Bool)

(assert (=> d!268784 m!1101135))

(declare-fun m!1101137 () Bool)

(assert (=> d!268784 m!1101137))

(assert (=> d!268784 m!1100609))

(assert (=> d!268784 m!1101135))

(declare-fun m!1101139 () Bool)

(assert (=> d!268784 m!1101139))

(assert (=> d!268784 m!1101135))

(declare-fun m!1101141 () Bool)

(assert (=> d!268784 m!1101141))

(assert (=> d!268784 m!1101141))

(declare-fun m!1101143 () Bool)

(assert (=> d!268784 m!1101143))

(declare-fun m!1101145 () Bool)

(assert (=> d!268784 m!1101145))

(declare-fun m!1101147 () Bool)

(assert (=> b!858301 m!1101147))

(declare-fun m!1101149 () Bool)

(assert (=> b!858302 m!1101149))

(assert (=> b!858303 m!1101135))

(assert (=> b!858303 m!1101135))

(assert (=> b!858303 m!1101141))

(assert (=> b!858303 m!1101141))

(assert (=> b!858303 m!1101143))

(declare-fun m!1101151 () Bool)

(assert (=> b!858303 m!1101151))

(assert (=> b!857926 d!268784))

(declare-fun d!268786 () Bool)

(assert (=> d!268786 (= (inv!11773 (tag!1998 (rule!3159 (h!14657 l!5107)))) (= (mod (str.len (value!56174 (tag!1998 (rule!3159 (h!14657 l!5107))))) 2) 0))))

(assert (=> b!857936 d!268786))

(declare-fun d!268788 () Bool)

(declare-fun res!391690 () Bool)

(declare-fun e!564916 () Bool)

(assert (=> d!268788 (=> (not res!391690) (not e!564916))))

(assert (=> d!268788 (= res!391690 (semiInverseModEq!682 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))))))

(assert (=> d!268788 (= (inv!11777 (transformation!1736 (rule!3159 (h!14657 l!5107)))) e!564916)))

(declare-fun b!858304 () Bool)

(assert (=> b!858304 (= e!564916 (equivClasses!649 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))))))

(assert (= (and d!268788 res!391690) b!858304))

(declare-fun m!1101153 () Bool)

(assert (=> d!268788 m!1101153))

(declare-fun m!1101155 () Bool)

(assert (=> b!858304 m!1101155))

(assert (=> b!857936 d!268788))

(declare-fun d!268790 () Bool)

(declare-fun res!391695 () Bool)

(declare-fun e!564921 () Bool)

(assert (=> d!268790 (=> res!391695 e!564921)))

(assert (=> d!268790 (= res!391695 ((_ is Nil!9256) l!5107))))

(assert (=> d!268790 (= (forall!2197 l!5107 lambda!25750) e!564921)))

(declare-fun b!858309 () Bool)

(declare-fun e!564922 () Bool)

(assert (=> b!858309 (= e!564921 e!564922)))

(declare-fun res!391696 () Bool)

(assert (=> b!858309 (=> (not res!391696) (not e!564922))))

(declare-fun dynLambda!4365 (Int Token!3138) Bool)

(assert (=> b!858309 (= res!391696 (dynLambda!4365 lambda!25750 (h!14657 l!5107)))))

(declare-fun b!858310 () Bool)

(assert (=> b!858310 (= e!564922 (forall!2197 (t!97050 l!5107) lambda!25750))))

(assert (= (and d!268790 (not res!391695)) b!858309))

(assert (= (and b!858309 res!391696) b!858310))

(declare-fun b_lambda!28943 () Bool)

(assert (=> (not b_lambda!28943) (not b!858309)))

(declare-fun m!1101157 () Bool)

(assert (=> b!858309 m!1101157))

(declare-fun m!1101159 () Bool)

(assert (=> b!858310 m!1101159))

(assert (=> b!857938 d!268790))

(declare-fun d!268792 () Bool)

(assert (=> d!268792 (= (isEmpty!5492 rules!2621) ((_ is Nil!9257) rules!2621))))

(assert (=> b!857927 d!268792))

(declare-fun b!858322 () Bool)

(declare-fun e!564925 () Bool)

(declare-fun tp!270739 () Bool)

(declare-fun tp!270740 () Bool)

(assert (=> b!858322 (= e!564925 (and tp!270739 tp!270740))))

(declare-fun b!858321 () Bool)

(declare-fun tp_is_empty!3997 () Bool)

(assert (=> b!858321 (= e!564925 tp_is_empty!3997)))

(assert (=> b!857929 (= tp!270652 e!564925)))

(declare-fun b!858323 () Bool)

(declare-fun tp!270738 () Bool)

(assert (=> b!858323 (= e!564925 tp!270738)))

(declare-fun b!858324 () Bool)

(declare-fun tp!270741 () Bool)

(declare-fun tp!270737 () Bool)

(assert (=> b!858324 (= e!564925 (and tp!270741 tp!270737))))

(assert (= (and b!857929 ((_ is ElementMatch!2169) (regex!1736 (h!14658 rules!2621)))) b!858321))

(assert (= (and b!857929 ((_ is Concat!3972) (regex!1736 (h!14658 rules!2621)))) b!858322))

(assert (= (and b!857929 ((_ is Star!2169) (regex!1736 (h!14658 rules!2621)))) b!858323))

(assert (= (and b!857929 ((_ is Union!2169) (regex!1736 (h!14658 rules!2621)))) b!858324))

(declare-fun b!858338 () Bool)

(declare-fun b_free!26085 () Bool)

(declare-fun b_next!26149 () Bool)

(assert (=> b!858338 (= b_free!26085 (not b_next!26149))))

(declare-fun tp!270756 () Bool)

(declare-fun b_and!76129 () Bool)

(assert (=> b!858338 (= tp!270756 b_and!76129)))

(declare-fun b_free!26087 () Bool)

(declare-fun b_next!26151 () Bool)

(assert (=> b!858338 (= b_free!26087 (not b_next!26151))))

(declare-fun t!97092 () Bool)

(declare-fun tb!61097 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97092) tb!61097))

(declare-fun result!70718 () Bool)

(assert (= result!70718 result!70684))

(assert (=> b!858033 t!97092))

(declare-fun tb!61099 () Bool)

(declare-fun t!97094 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97094) tb!61099))

(declare-fun result!70720 () Bool)

(assert (= result!70720 result!70708))

(assert (=> b!858287 t!97094))

(declare-fun b_and!76131 () Bool)

(declare-fun tp!270753 () Bool)

(assert (=> b!858338 (= tp!270753 (and (=> t!97092 result!70718) (=> t!97094 result!70720) b_and!76131))))

(declare-fun e!564939 () Bool)

(assert (=> b!857928 (= tp!270662 e!564939)))

(declare-fun e!564940 () Bool)

(declare-fun e!564941 () Bool)

(declare-fun tp!270752 () Bool)

(declare-fun b!858337 () Bool)

(assert (=> b!858337 (= e!564941 (and tp!270752 (inv!11773 (tag!1998 (rule!3159 (h!14657 (t!97050 l!5107))))) (inv!11777 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) e!564940))))

(declare-fun tp!270755 () Bool)

(declare-fun b!858335 () Bool)

(declare-fun e!564938 () Bool)

(assert (=> b!858335 (= e!564939 (and (inv!11776 (h!14657 (t!97050 l!5107))) e!564938 tp!270755))))

(assert (=> b!858338 (= e!564940 (and tp!270756 tp!270753))))

(declare-fun tp!270754 () Bool)

(declare-fun b!858336 () Bool)

(assert (=> b!858336 (= e!564938 (and (inv!21 (value!56175 (h!14657 (t!97050 l!5107)))) e!564941 tp!270754))))

(assert (= b!858337 b!858338))

(assert (= b!858336 b!858337))

(assert (= b!858335 b!858336))

(assert (= (and b!857928 ((_ is Cons!9256) (t!97050 l!5107))) b!858335))

(declare-fun m!1101161 () Bool)

(assert (=> b!858337 m!1101161))

(declare-fun m!1101163 () Bool)

(assert (=> b!858337 m!1101163))

(declare-fun m!1101165 () Bool)

(assert (=> b!858335 m!1101165))

(declare-fun m!1101167 () Bool)

(assert (=> b!858336 m!1101167))

(declare-fun b!858343 () Bool)

(declare-fun e!564946 () Bool)

(declare-fun tp!270759 () Bool)

(assert (=> b!858343 (= e!564946 (and tp_is_empty!3997 tp!270759))))

(assert (=> b!857930 (= tp!270660 e!564946)))

(assert (= (and b!857930 ((_ is Cons!9255) (originalCharacters!2292 (h!14657 l!5107)))) b!858343))

(declare-fun b!858345 () Bool)

(declare-fun e!564947 () Bool)

(declare-fun tp!270762 () Bool)

(declare-fun tp!270763 () Bool)

(assert (=> b!858345 (= e!564947 (and tp!270762 tp!270763))))

(declare-fun b!858344 () Bool)

(assert (=> b!858344 (= e!564947 tp_is_empty!3997)))

(assert (=> b!857932 (= tp!270653 e!564947)))

(declare-fun b!858346 () Bool)

(declare-fun tp!270761 () Bool)

(assert (=> b!858346 (= e!564947 tp!270761)))

(declare-fun b!858347 () Bool)

(declare-fun tp!270764 () Bool)

(declare-fun tp!270760 () Bool)

(assert (=> b!858347 (= e!564947 (and tp!270764 tp!270760))))

(assert (= (and b!857932 ((_ is ElementMatch!2169) (regex!1736 (rule!3159 separatorToken!297)))) b!858344))

(assert (= (and b!857932 ((_ is Concat!3972) (regex!1736 (rule!3159 separatorToken!297)))) b!858345))

(assert (= (and b!857932 ((_ is Star!2169) (regex!1736 (rule!3159 separatorToken!297)))) b!858346))

(assert (= (and b!857932 ((_ is Union!2169) (regex!1736 (rule!3159 separatorToken!297)))) b!858347))

(declare-fun b!858358 () Bool)

(declare-fun b_free!26089 () Bool)

(declare-fun b_next!26153 () Bool)

(assert (=> b!858358 (= b_free!26089 (not b_next!26153))))

(declare-fun tp!270774 () Bool)

(declare-fun b_and!76133 () Bool)

(assert (=> b!858358 (= tp!270774 b_and!76133)))

(declare-fun b_free!26091 () Bool)

(declare-fun b_next!26155 () Bool)

(assert (=> b!858358 (= b_free!26091 (not b_next!26155))))

(declare-fun tb!61101 () Bool)

(declare-fun t!97096 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97096) tb!61101))

(declare-fun result!70726 () Bool)

(assert (= result!70726 result!70684))

(assert (=> b!858033 t!97096))

(declare-fun t!97098 () Bool)

(declare-fun tb!61103 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97098) tb!61103))

(declare-fun result!70728 () Bool)

(assert (= result!70728 result!70708))

(assert (=> b!858287 t!97098))

(declare-fun b_and!76135 () Bool)

(declare-fun tp!270773 () Bool)

(assert (=> b!858358 (= tp!270773 (and (=> t!97096 result!70726) (=> t!97098 result!70728) b_and!76135))))

(declare-fun e!564959 () Bool)

(assert (=> b!858358 (= e!564959 (and tp!270774 tp!270773))))

(declare-fun b!858357 () Bool)

(declare-fun tp!270776 () Bool)

(declare-fun e!564957 () Bool)

(assert (=> b!858357 (= e!564957 (and tp!270776 (inv!11773 (tag!1998 (h!14658 (t!97051 rules!2621)))) (inv!11777 (transformation!1736 (h!14658 (t!97051 rules!2621)))) e!564959))))

(declare-fun b!858356 () Bool)

(declare-fun e!564956 () Bool)

(declare-fun tp!270775 () Bool)

(assert (=> b!858356 (= e!564956 (and e!564957 tp!270775))))

(assert (=> b!857925 (= tp!270655 e!564956)))

(assert (= b!858357 b!858358))

(assert (= b!858356 b!858357))

(assert (= (and b!857925 ((_ is Cons!9257) (t!97051 rules!2621))) b!858356))

(declare-fun m!1101169 () Bool)

(assert (=> b!858357 m!1101169))

(declare-fun m!1101171 () Bool)

(assert (=> b!858357 m!1101171))

(declare-fun b!858359 () Bool)

(declare-fun e!564960 () Bool)

(declare-fun tp!270777 () Bool)

(assert (=> b!858359 (= e!564960 (and tp_is_empty!3997 tp!270777))))

(assert (=> b!857946 (= tp!270661 e!564960)))

(assert (= (and b!857946 ((_ is Cons!9255) (originalCharacters!2292 separatorToken!297))) b!858359))

(declare-fun b!858361 () Bool)

(declare-fun e!564961 () Bool)

(declare-fun tp!270780 () Bool)

(declare-fun tp!270781 () Bool)

(assert (=> b!858361 (= e!564961 (and tp!270780 tp!270781))))

(declare-fun b!858360 () Bool)

(assert (=> b!858360 (= e!564961 tp_is_empty!3997)))

(assert (=> b!857936 (= tp!270654 e!564961)))

(declare-fun b!858362 () Bool)

(declare-fun tp!270779 () Bool)

(assert (=> b!858362 (= e!564961 tp!270779)))

(declare-fun b!858363 () Bool)

(declare-fun tp!270782 () Bool)

(declare-fun tp!270778 () Bool)

(assert (=> b!858363 (= e!564961 (and tp!270782 tp!270778))))

(assert (= (and b!857936 ((_ is ElementMatch!2169) (regex!1736 (rule!3159 (h!14657 l!5107))))) b!858360))

(assert (= (and b!857936 ((_ is Concat!3972) (regex!1736 (rule!3159 (h!14657 l!5107))))) b!858361))

(assert (= (and b!857936 ((_ is Star!2169) (regex!1736 (rule!3159 (h!14657 l!5107))))) b!858362))

(assert (= (and b!857936 ((_ is Union!2169) (regex!1736 (rule!3159 (h!14657 l!5107))))) b!858363))

(declare-fun b_lambda!28945 () Bool)

(assert (= b_lambda!28941 (or (and b!858338 b_free!26087 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857944 b_free!26075 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!858358 b_free!26091 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857942 b_free!26071 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857947 b_free!26067) b_lambda!28945)))

(declare-fun b_lambda!28947 () Bool)

(assert (= b_lambda!28943 (or b!857938 b_lambda!28947)))

(declare-fun bs!232135 () Bool)

(declare-fun d!268794 () Bool)

(assert (= bs!232135 (and d!268794 b!857938)))

(assert (=> bs!232135 (= (dynLambda!4365 lambda!25750 (h!14657 l!5107)) (not (isSeparator!1736 (rule!3159 (h!14657 l!5107)))))))

(assert (=> b!858309 d!268794))

(declare-fun b_lambda!28949 () Bool)

(assert (= b_lambda!28931 (or (and b!857944 b_free!26075) (and b!858358 b_free!26091 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!857947 b_free!26067 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!857942 b_free!26071 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!858338 b_free!26087 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) b_lambda!28949)))

(check-sat (not b!858039) (not d!268724) (not b!858185) (not b!858347) (not b!858125) (not b!858343) tp_is_empty!3997 (not b!858267) (not b!858291) (not b!858289) (not d!268778) (not b!858288) (not b!858323) (not b_next!26131) (not b!858127) (not d!268708) (not b!858362) (not tb!61077) (not b_next!26137) (not b!858275) (not b!858287) (not b!858145) b_and!76125 (not b!858182) (not b!858359) (not d!268750) b_and!76127 (not b_lambda!28945) (not b!858033) (not b!858144) (not tb!61091) (not b_next!26133) (not b!858265) (not d!268752) (not b!858143) (not d!268766) (not b!858286) (not d!268698) (not d!268772) (not b!858078) (not b!858294) (not b!858285) (not b!858183) (not b_lambda!28949) (not b!858361) b_and!76089 b_and!76131 (not d!268696) (not b_next!26155) (not b_lambda!28947) b_and!76123 b_and!76135 (not b!858278) b_and!76133 (not b!858303) (not d!268774) (not b!858187) (not d!268756) (not b!858269) (not d!268718) (not b!858079) (not b!858301) (not d!268666) (not d!268754) (not b!858262) (not d!268744) b_and!76129 (not b!858345) (not b!858141) (not b_next!26139) (not b!858034) (not b_next!26151) (not b!858292) (not b!858128) (not b!858264) b_and!76085 (not b_next!26129) (not b!858335) (not b!858304) (not b!858263) (not b!858268) (not b!858088) (not b!858310) (not b!858140) (not b!858027) (not d!268788) (not b_next!26153) (not b!858122) (not b!858028) (not d!268740) (not d!268784) (not b!858357) (not b!858276) (not b_next!26149) (not b!858363) (not b!858123) (not b!858274) (not b!858322) (not b!858337) (not b!858336) (not b!858188) (not b!857965) b_and!76093 (not b!858346) (not b!858302) (not b!858356) (not b_next!26135) (not d!268768) (not b!858277) (not b!858324))
(check-sat (not b_next!26131) (not b_next!26137) b_and!76125 b_and!76127 (not b_next!26133) b_and!76133 (not b_next!26153) (not b_next!26149) b_and!76093 (not b_next!26135) b_and!76089 b_and!76131 (not b_next!26155) b_and!76123 b_and!76135 b_and!76129 (not b_next!26139) (not b_next!26151) b_and!76085 (not b_next!26129))
(get-model)

(declare-fun d!268864 () Bool)

(assert (=> d!268864 (= (++!2399 (++!2399 lt!324549 lt!324550) lt!324551) (++!2399 lt!324549 (++!2399 lt!324550 lt!324551)))))

(declare-fun lt!324669 () Unit!13773)

(declare-fun choose!5063 (List!9271 List!9271 List!9271) Unit!13773)

(assert (=> d!268864 (= lt!324669 (choose!5063 lt!324549 lt!324550 lt!324551))))

(assert (=> d!268864 (= (lemmaConcatAssociativity!761 lt!324549 lt!324550 lt!324551) lt!324669)))

(declare-fun bs!232145 () Bool)

(assert (= bs!232145 d!268864))

(assert (=> bs!232145 m!1100887))

(assert (=> bs!232145 m!1100889))

(assert (=> bs!232145 m!1100887))

(assert (=> bs!232145 m!1100879))

(assert (=> bs!232145 m!1100881))

(declare-fun m!1101435 () Bool)

(assert (=> bs!232145 m!1101435))

(assert (=> bs!232145 m!1100879))

(assert (=> b!858123 d!268864))

(declare-fun d!268866 () Bool)

(declare-fun lt!324672 () BalanceConc!6148)

(assert (=> d!268866 (= (list!3652 lt!324672) (originalCharacters!2292 separatorToken!297))))

(assert (=> d!268866 (= lt!324672 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))

(assert (=> d!268866 (= (charsOf!1003 separatorToken!297) lt!324672)))

(declare-fun b_lambda!28963 () Bool)

(assert (=> (not b_lambda!28963) (not d!268866)))

(assert (=> d!268866 t!97085))

(declare-fun b_and!76177 () Bool)

(assert (= b_and!76123 (and (=> t!97085 result!70708) b_and!76177)))

(assert (=> d!268866 t!97089))

(declare-fun b_and!76179 () Bool)

(assert (= b_and!76127 (and (=> t!97089 result!70712) b_and!76179)))

(assert (=> d!268866 t!97094))

(declare-fun b_and!76181 () Bool)

(assert (= b_and!76131 (and (=> t!97094 result!70720) b_and!76181)))

(assert (=> d!268866 t!97087))

(declare-fun b_and!76183 () Bool)

(assert (= b_and!76125 (and (=> t!97087 result!70710) b_and!76183)))

(assert (=> d!268866 t!97098))

(declare-fun b_and!76185 () Bool)

(assert (= b_and!76135 (and (=> t!97098 result!70728) b_and!76185)))

(declare-fun m!1101437 () Bool)

(assert (=> d!268866 m!1101437))

(assert (=> d!268866 m!1101123))

(assert (=> b!858123 d!268866))

(declare-fun d!268868 () Bool)

(declare-fun e!565039 () Bool)

(assert (=> d!268868 e!565039))

(declare-fun res!391756 () Bool)

(assert (=> d!268868 (=> (not res!391756) (not e!565039))))

(declare-fun lt!324675 () List!9271)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1355 (List!9271) (InoxSet C!4908))

(assert (=> d!268868 (= res!391756 (= (content!1355 lt!324675) ((_ map or) (content!1355 lt!324549) (content!1355 lt!324550))))))

(declare-fun e!565040 () List!9271)

(assert (=> d!268868 (= lt!324675 e!565040)))

(declare-fun c!139094 () Bool)

(assert (=> d!268868 (= c!139094 ((_ is Nil!9255) lt!324549))))

(assert (=> d!268868 (= (++!2399 lt!324549 lt!324550) lt!324675)))

(declare-fun b!858487 () Bool)

(assert (=> b!858487 (= e!565040 lt!324550)))

(declare-fun b!858489 () Bool)

(declare-fun res!391755 () Bool)

(assert (=> b!858489 (=> (not res!391755) (not e!565039))))

(assert (=> b!858489 (= res!391755 (= (size!7733 lt!324675) (+ (size!7733 lt!324549) (size!7733 lt!324550))))))

(declare-fun b!858488 () Bool)

(assert (=> b!858488 (= e!565040 (Cons!9255 (h!14656 lt!324549) (++!2399 (t!97049 lt!324549) lt!324550)))))

(declare-fun b!858490 () Bool)

(assert (=> b!858490 (= e!565039 (or (not (= lt!324550 Nil!9255)) (= lt!324675 lt!324549)))))

(assert (= (and d!268868 c!139094) b!858487))

(assert (= (and d!268868 (not c!139094)) b!858488))

(assert (= (and d!268868 res!391756) b!858489))

(assert (= (and b!858489 res!391755) b!858490))

(declare-fun m!1101439 () Bool)

(assert (=> d!268868 m!1101439))

(declare-fun m!1101441 () Bool)

(assert (=> d!268868 m!1101441))

(declare-fun m!1101443 () Bool)

(assert (=> d!268868 m!1101443))

(declare-fun m!1101445 () Bool)

(assert (=> b!858489 m!1101445))

(declare-fun m!1101447 () Bool)

(assert (=> b!858489 m!1101447))

(declare-fun m!1101449 () Bool)

(assert (=> b!858489 m!1101449))

(declare-fun m!1101451 () Bool)

(assert (=> b!858488 m!1101451))

(assert (=> b!858123 d!268868))

(declare-fun d!268870 () Bool)

(declare-fun list!3655 (Conc!3067) List!9271)

(assert (=> d!268870 (= (list!3652 (charsOf!1003 separatorToken!297)) (list!3655 (c!139018 (charsOf!1003 separatorToken!297))))))

(declare-fun bs!232146 () Bool)

(assert (= bs!232146 d!268870))

(declare-fun m!1101453 () Bool)

(assert (=> bs!232146 m!1101453))

(assert (=> b!858123 d!268870))

(declare-fun d!268872 () Bool)

(assert (=> d!268872 (= (list!3652 (charsOf!1003 (h!14657 l!5107))) (list!3655 (c!139018 (charsOf!1003 (h!14657 l!5107)))))))

(declare-fun bs!232147 () Bool)

(assert (= bs!232147 d!268872))

(declare-fun m!1101455 () Bool)

(assert (=> bs!232147 m!1101455))

(assert (=> b!858123 d!268872))

(declare-fun d!268874 () Bool)

(declare-fun e!565041 () Bool)

(assert (=> d!268874 e!565041))

(declare-fun res!391758 () Bool)

(assert (=> d!268874 (=> (not res!391758) (not e!565041))))

(declare-fun lt!324676 () List!9271)

(assert (=> d!268874 (= res!391758 (= (content!1355 lt!324676) ((_ map or) (content!1355 lt!324550) (content!1355 lt!324551))))))

(declare-fun e!565042 () List!9271)

(assert (=> d!268874 (= lt!324676 e!565042)))

(declare-fun c!139095 () Bool)

(assert (=> d!268874 (= c!139095 ((_ is Nil!9255) lt!324550))))

(assert (=> d!268874 (= (++!2399 lt!324550 lt!324551) lt!324676)))

(declare-fun b!858491 () Bool)

(assert (=> b!858491 (= e!565042 lt!324551)))

(declare-fun b!858493 () Bool)

(declare-fun res!391757 () Bool)

(assert (=> b!858493 (=> (not res!391757) (not e!565041))))

(assert (=> b!858493 (= res!391757 (= (size!7733 lt!324676) (+ (size!7733 lt!324550) (size!7733 lt!324551))))))

(declare-fun b!858492 () Bool)

(assert (=> b!858492 (= e!565042 (Cons!9255 (h!14656 lt!324550) (++!2399 (t!97049 lt!324550) lt!324551)))))

(declare-fun b!858494 () Bool)

(assert (=> b!858494 (= e!565041 (or (not (= lt!324551 Nil!9255)) (= lt!324676 lt!324550)))))

(assert (= (and d!268874 c!139095) b!858491))

(assert (= (and d!268874 (not c!139095)) b!858492))

(assert (= (and d!268874 res!391758) b!858493))

(assert (= (and b!858493 res!391757) b!858494))

(declare-fun m!1101457 () Bool)

(assert (=> d!268874 m!1101457))

(assert (=> d!268874 m!1101443))

(declare-fun m!1101459 () Bool)

(assert (=> d!268874 m!1101459))

(declare-fun m!1101461 () Bool)

(assert (=> b!858493 m!1101461))

(assert (=> b!858493 m!1101449))

(declare-fun m!1101463 () Bool)

(assert (=> b!858493 m!1101463))

(declare-fun m!1101465 () Bool)

(assert (=> b!858492 m!1101465))

(assert (=> b!858123 d!268874))

(declare-fun d!268876 () Bool)

(declare-fun c!139098 () Bool)

(assert (=> d!268876 (= c!139098 ((_ is Cons!9256) (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)))))

(declare-fun e!565045 () List!9271)

(assert (=> d!268876 (= (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)) e!565045)))

(declare-fun b!858499 () Bool)

(assert (=> b!858499 (= e!565045 (++!2399 (list!3652 (charsOf!1003 (h!14657 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)))) (printList!486 thiss!20117 (t!97050 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)))))))

(declare-fun b!858500 () Bool)

(assert (=> b!858500 (= e!565045 Nil!9255)))

(assert (= (and d!268876 c!139098) b!858499))

(assert (= (and d!268876 (not c!139098)) b!858500))

(declare-fun m!1101467 () Bool)

(assert (=> b!858499 m!1101467))

(assert (=> b!858499 m!1101467))

(declare-fun m!1101469 () Bool)

(assert (=> b!858499 m!1101469))

(declare-fun m!1101471 () Bool)

(assert (=> b!858499 m!1101471))

(assert (=> b!858499 m!1101469))

(assert (=> b!858499 m!1101471))

(declare-fun m!1101473 () Bool)

(assert (=> b!858499 m!1101473))

(assert (=> b!858123 d!268876))

(declare-fun d!268878 () Bool)

(assert (=> d!268878 (= ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107)) (Cons!9256 (h!14657 l!5107) ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!858123 d!268878))

(declare-fun d!268880 () Bool)

(declare-fun lt!324677 () BalanceConc!6148)

(assert (=> d!268880 (= (list!3652 lt!324677) (originalCharacters!2292 (h!14657 l!5107)))))

(assert (=> d!268880 (= lt!324677 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))

(assert (=> d!268880 (= (charsOf!1003 (h!14657 l!5107)) lt!324677)))

(declare-fun b_lambda!28965 () Bool)

(assert (=> (not b_lambda!28965) (not d!268880)))

(assert (=> d!268880 t!97069))

(declare-fun b_and!76187 () Bool)

(assert (= b_and!76179 (and (=> t!97069 result!70690) b_and!76187)))

(assert (=> d!268880 t!97092))

(declare-fun b_and!76189 () Bool)

(assert (= b_and!76181 (and (=> t!97092 result!70718) b_and!76189)))

(assert (=> d!268880 t!97096))

(declare-fun b_and!76191 () Bool)

(assert (= b_and!76185 (and (=> t!97096 result!70726) b_and!76191)))

(assert (=> d!268880 t!97067))

(declare-fun b_and!76193 () Bool)

(assert (= b_and!76183 (and (=> t!97067 result!70688) b_and!76193)))

(assert (=> d!268880 t!97065))

(declare-fun b_and!76195 () Bool)

(assert (= b_and!76177 (and (=> t!97065 result!70684) b_and!76195)))

(declare-fun m!1101475 () Bool)

(assert (=> d!268880 m!1101475))

(assert (=> d!268880 m!1100779))

(assert (=> b!858123 d!268880))

(declare-fun d!268882 () Bool)

(declare-fun e!565046 () Bool)

(assert (=> d!268882 e!565046))

(declare-fun res!391760 () Bool)

(assert (=> d!268882 (=> (not res!391760) (not e!565046))))

(declare-fun lt!324678 () List!9271)

(assert (=> d!268882 (= res!391760 (= (content!1355 lt!324678) ((_ map or) (content!1355 (++!2399 lt!324549 lt!324550)) (content!1355 lt!324551))))))

(declare-fun e!565047 () List!9271)

(assert (=> d!268882 (= lt!324678 e!565047)))

(declare-fun c!139099 () Bool)

(assert (=> d!268882 (= c!139099 ((_ is Nil!9255) (++!2399 lt!324549 lt!324550)))))

(assert (=> d!268882 (= (++!2399 (++!2399 lt!324549 lt!324550) lt!324551) lt!324678)))

(declare-fun b!858501 () Bool)

(assert (=> b!858501 (= e!565047 lt!324551)))

(declare-fun b!858503 () Bool)

(declare-fun res!391759 () Bool)

(assert (=> b!858503 (=> (not res!391759) (not e!565046))))

(assert (=> b!858503 (= res!391759 (= (size!7733 lt!324678) (+ (size!7733 (++!2399 lt!324549 lt!324550)) (size!7733 lt!324551))))))

(declare-fun b!858502 () Bool)

(assert (=> b!858502 (= e!565047 (Cons!9255 (h!14656 (++!2399 lt!324549 lt!324550)) (++!2399 (t!97049 (++!2399 lt!324549 lt!324550)) lt!324551)))))

(declare-fun b!858504 () Bool)

(assert (=> b!858504 (= e!565046 (or (not (= lt!324551 Nil!9255)) (= lt!324678 (++!2399 lt!324549 lt!324550))))))

(assert (= (and d!268882 c!139099) b!858501))

(assert (= (and d!268882 (not c!139099)) b!858502))

(assert (= (and d!268882 res!391760) b!858503))

(assert (= (and b!858503 res!391759) b!858504))

(declare-fun m!1101477 () Bool)

(assert (=> d!268882 m!1101477))

(assert (=> d!268882 m!1100879))

(declare-fun m!1101479 () Bool)

(assert (=> d!268882 m!1101479))

(assert (=> d!268882 m!1101459))

(declare-fun m!1101481 () Bool)

(assert (=> b!858503 m!1101481))

(assert (=> b!858503 m!1100879))

(declare-fun m!1101483 () Bool)

(assert (=> b!858503 m!1101483))

(assert (=> b!858503 m!1101463))

(declare-fun m!1101485 () Bool)

(assert (=> b!858502 m!1101485))

(assert (=> b!858123 d!268882))

(declare-fun d!268884 () Bool)

(declare-fun e!565048 () Bool)

(assert (=> d!268884 e!565048))

(declare-fun res!391762 () Bool)

(assert (=> d!268884 (=> (not res!391762) (not e!565048))))

(declare-fun lt!324679 () List!9271)

(assert (=> d!268884 (= res!391762 (= (content!1355 lt!324679) ((_ map or) (content!1355 lt!324549) (content!1355 (++!2399 lt!324550 lt!324551)))))))

(declare-fun e!565049 () List!9271)

(assert (=> d!268884 (= lt!324679 e!565049)))

(declare-fun c!139100 () Bool)

(assert (=> d!268884 (= c!139100 ((_ is Nil!9255) lt!324549))))

(assert (=> d!268884 (= (++!2399 lt!324549 (++!2399 lt!324550 lt!324551)) lt!324679)))

(declare-fun b!858505 () Bool)

(assert (=> b!858505 (= e!565049 (++!2399 lt!324550 lt!324551))))

(declare-fun b!858507 () Bool)

(declare-fun res!391761 () Bool)

(assert (=> b!858507 (=> (not res!391761) (not e!565048))))

(assert (=> b!858507 (= res!391761 (= (size!7733 lt!324679) (+ (size!7733 lt!324549) (size!7733 (++!2399 lt!324550 lt!324551)))))))

(declare-fun b!858506 () Bool)

(assert (=> b!858506 (= e!565049 (Cons!9255 (h!14656 lt!324549) (++!2399 (t!97049 lt!324549) (++!2399 lt!324550 lt!324551))))))

(declare-fun b!858508 () Bool)

(assert (=> b!858508 (= e!565048 (or (not (= (++!2399 lt!324550 lt!324551) Nil!9255)) (= lt!324679 lt!324549)))))

(assert (= (and d!268884 c!139100) b!858505))

(assert (= (and d!268884 (not c!139100)) b!858506))

(assert (= (and d!268884 res!391762) b!858507))

(assert (= (and b!858507 res!391761) b!858508))

(declare-fun m!1101487 () Bool)

(assert (=> d!268884 m!1101487))

(assert (=> d!268884 m!1101441))

(assert (=> d!268884 m!1100887))

(declare-fun m!1101489 () Bool)

(assert (=> d!268884 m!1101489))

(declare-fun m!1101491 () Bool)

(assert (=> b!858507 m!1101491))

(assert (=> b!858507 m!1101447))

(assert (=> b!858507 m!1100887))

(declare-fun m!1101493 () Bool)

(assert (=> b!858507 m!1101493))

(assert (=> b!858506 m!1100887))

(declare-fun m!1101495 () Bool)

(assert (=> b!858506 m!1101495))

(assert (=> b!858123 d!268884))

(declare-fun d!268886 () Bool)

(assert (=> d!268886 (= ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (Cons!9256 separatorToken!297 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297)))))

(assert (=> b!858123 d!268886))

(declare-fun b!858509 () Bool)

(declare-fun e!565055 () List!9271)

(assert (=> b!858509 (= e!565055 Nil!9255)))

(declare-fun b!858510 () Bool)

(declare-fun res!391764 () Bool)

(declare-fun e!565053 () Bool)

(assert (=> b!858510 (=> (not res!391764) (not e!565053))))

(declare-fun e!565054 () Bool)

(assert (=> b!858510 (= res!391764 e!565054)))

(declare-fun res!391765 () Bool)

(assert (=> b!858510 (=> res!391765 e!565054)))

(assert (=> b!858510 (= res!391765 (not ((_ is Cons!9256) (t!97050 l!5107))))))

(declare-fun b!858511 () Bool)

(declare-fun e!565051 () List!9271)

(assert (=> b!858511 (= e!565051 Nil!9255)))

(declare-fun b!858512 () Bool)

(declare-fun lt!324687 () List!9272)

(assert (=> b!858512 (= e!565051 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324687))) (printList!486 thiss!20117 (t!97050 lt!324687))))))

(declare-fun d!268888 () Bool)

(declare-fun lt!324685 () List!9272)

(assert (=> d!268888 (= (printList!486 thiss!20117 lt!324685) (printWithSeparatorTokenList!44 thiss!20117 (t!97050 l!5107) separatorToken!297))))

(declare-fun e!565052 () List!9272)

(assert (=> d!268888 (= lt!324685 e!565052)))

(declare-fun c!139101 () Bool)

(assert (=> d!268888 (= c!139101 ((_ is Cons!9256) (t!97050 l!5107)))))

(assert (=> d!268888 e!565053))

(declare-fun res!391763 () Bool)

(assert (=> d!268888 (=> (not res!391763) (not e!565053))))

(assert (=> d!268888 (= res!391763 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(assert (=> d!268888 (= (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) lt!324685)))

(declare-fun b!858513 () Bool)

(assert (=> b!858513 (= e!565052 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 l!5107))))))

(declare-fun lt!324681 () List!9271)

(assert (=> b!858513 (= lt!324681 (list!3652 (charsOf!1003 (h!14657 (t!97050 l!5107)))))))

(declare-fun lt!324682 () List!9271)

(assert (=> b!858513 (= lt!324682 (list!3652 (charsOf!1003 separatorToken!297)))))

(declare-fun lt!324683 () List!9271)

(assert (=> b!858513 (= lt!324683 (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297)))))

(declare-fun lt!324684 () Unit!13773)

(assert (=> b!858513 (= lt!324684 (lemmaConcatAssociativity!761 lt!324681 lt!324682 lt!324683))))

(assert (=> b!858513 (= (++!2399 (++!2399 lt!324681 lt!324682) lt!324683) (++!2399 lt!324681 (++!2399 lt!324682 lt!324683)))))

(declare-fun lt!324686 () Unit!13773)

(assert (=> b!858513 (= lt!324686 lt!324684)))

(declare-fun b!858514 () Bool)

(assert (=> b!858514 (= e!565052 Nil!9256)))

(declare-fun b!858515 () Bool)

(assert (=> b!858515 (= e!565054 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 l!5107)))) e!565051))))

(declare-fun c!139103 () Bool)

(assert (=> b!858515 (= c!139103 ((_ is Cons!9256) lt!324687))))

(assert (=> b!858515 (= lt!324687 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 l!5107))))))

(declare-fun b!858516 () Bool)

(declare-fun e!565050 () Bool)

(assert (=> b!858516 (= e!565053 e!565050)))

(declare-fun res!391766 () Bool)

(assert (=> b!858516 (=> res!391766 e!565050)))

(assert (=> b!858516 (= res!391766 (not ((_ is Cons!9256) (t!97050 l!5107))))))

(declare-fun b!858517 () Bool)

(declare-fun lt!324680 () List!9272)

(assert (=> b!858517 (= e!565055 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324680))) (printList!486 thiss!20117 (t!97050 lt!324680))))))

(declare-fun b!858518 () Bool)

(assert (=> b!858518 (= e!565050 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297) separatorToken!297)) e!565055))))

(declare-fun c!139102 () Bool)

(assert (=> b!858518 (= c!139102 ((_ is Cons!9256) lt!324680))))

(assert (=> b!858518 (= lt!324680 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 l!5107)) separatorToken!297) separatorToken!297))))

(assert (= (and d!268888 res!391763) b!858510))

(assert (= (and b!858510 (not res!391765)) b!858515))

(assert (= (and b!858515 c!139103) b!858512))

(assert (= (and b!858515 (not c!139103)) b!858511))

(assert (= (and b!858510 res!391764) b!858516))

(assert (= (and b!858516 (not res!391766)) b!858518))

(assert (= (and b!858518 c!139102) b!858517))

(assert (= (and b!858518 (not c!139102)) b!858509))

(assert (= (and d!268888 c!139101) b!858513))

(assert (= (and d!268888 (not c!139101)) b!858514))

(declare-fun m!1101497 () Bool)

(assert (=> b!858518 m!1101497))

(assert (=> b!858518 m!1101497))

(declare-fun m!1101499 () Bool)

(assert (=> b!858518 m!1101499))

(assert (=> b!858518 m!1101499))

(declare-fun m!1101501 () Bool)

(assert (=> b!858518 m!1101501))

(assert (=> b!858515 m!1101497))

(assert (=> b!858515 m!1101497))

(assert (=> b!858515 m!1101499))

(assert (=> b!858515 m!1101499))

(declare-fun m!1101503 () Bool)

(assert (=> b!858515 m!1101503))

(assert (=> b!858515 m!1101503))

(declare-fun m!1101505 () Bool)

(assert (=> b!858515 m!1101505))

(declare-fun m!1101507 () Bool)

(assert (=> b!858512 m!1101507))

(assert (=> b!858512 m!1101507))

(declare-fun m!1101509 () Bool)

(assert (=> b!858512 m!1101509))

(declare-fun m!1101511 () Bool)

(assert (=> b!858512 m!1101511))

(assert (=> b!858512 m!1101509))

(assert (=> b!858512 m!1101511))

(declare-fun m!1101513 () Bool)

(assert (=> b!858512 m!1101513))

(assert (=> b!858513 m!1101499))

(assert (=> b!858513 m!1101503))

(declare-fun m!1101515 () Bool)

(assert (=> b!858513 m!1101515))

(assert (=> b!858513 m!1101515))

(declare-fun m!1101517 () Bool)

(assert (=> b!858513 m!1101517))

(declare-fun m!1101519 () Bool)

(assert (=> b!858513 m!1101519))

(assert (=> b!858513 m!1101497))

(declare-fun m!1101521 () Bool)

(assert (=> b!858513 m!1101521))

(assert (=> b!858513 m!1101497))

(declare-fun m!1101523 () Bool)

(assert (=> b!858513 m!1101523))

(declare-fun m!1101525 () Bool)

(assert (=> b!858513 m!1101525))

(assert (=> b!858513 m!1100891))

(assert (=> b!858513 m!1100893))

(declare-fun m!1101527 () Bool)

(assert (=> b!858513 m!1101527))

(assert (=> b!858513 m!1101523))

(assert (=> b!858513 m!1101497))

(assert (=> b!858513 m!1101499))

(assert (=> b!858513 m!1101527))

(declare-fun m!1101529 () Bool)

(assert (=> b!858513 m!1101529))

(assert (=> b!858513 m!1100891))

(declare-fun m!1101531 () Bool)

(assert (=> d!268888 m!1101531))

(declare-fun m!1101533 () Bool)

(assert (=> d!268888 m!1101533))

(declare-fun m!1101535 () Bool)

(assert (=> b!858517 m!1101535))

(assert (=> b!858517 m!1101535))

(declare-fun m!1101537 () Bool)

(assert (=> b!858517 m!1101537))

(declare-fun m!1101539 () Bool)

(assert (=> b!858517 m!1101539))

(assert (=> b!858517 m!1101537))

(assert (=> b!858517 m!1101539))

(declare-fun m!1101541 () Bool)

(assert (=> b!858517 m!1101541))

(assert (=> b!858123 d!268888))

(declare-fun d!268890 () Bool)

(declare-fun charsToBigInt!1 (List!9270) Int)

(assert (=> d!268890 (= (inv!17 (value!56175 separatorToken!297)) (= (charsToBigInt!1 (text!13062 (value!56175 separatorToken!297))) (value!56167 (value!56175 separatorToken!297))))))

(declare-fun bs!232148 () Bool)

(assert (= bs!232148 d!268890))

(declare-fun m!1101543 () Bool)

(assert (=> bs!232148 m!1101543))

(assert (=> b!858292 d!268890))

(declare-fun d!268892 () Bool)

(declare-fun c!139104 () Bool)

(assert (=> d!268892 (= c!139104 ((_ is Cons!9256) lt!324553))))

(declare-fun e!565056 () List!9271)

(assert (=> d!268892 (= (printList!486 thiss!20117 lt!324553) e!565056)))

(declare-fun b!858519 () Bool)

(assert (=> b!858519 (= e!565056 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324553))) (printList!486 thiss!20117 (t!97050 lt!324553))))))

(declare-fun b!858520 () Bool)

(assert (=> b!858520 (= e!565056 Nil!9255)))

(assert (= (and d!268892 c!139104) b!858519))

(assert (= (and d!268892 (not c!139104)) b!858520))

(declare-fun m!1101545 () Bool)

(assert (=> b!858519 m!1101545))

(assert (=> b!858519 m!1101545))

(declare-fun m!1101547 () Bool)

(assert (=> b!858519 m!1101547))

(declare-fun m!1101549 () Bool)

(assert (=> b!858519 m!1101549))

(assert (=> b!858519 m!1101547))

(assert (=> b!858519 m!1101549))

(declare-fun m!1101551 () Bool)

(assert (=> b!858519 m!1101551))

(assert (=> d!268708 d!268892))

(declare-fun d!268894 () Bool)

(declare-fun c!139107 () Bool)

(assert (=> d!268894 (= c!139107 ((_ is Cons!9256) l!5107))))

(declare-fun e!565059 () List!9271)

(assert (=> d!268894 (= (printWithSeparatorTokenList!44 thiss!20117 l!5107 separatorToken!297) e!565059)))

(declare-fun b!858525 () Bool)

(assert (=> b!858525 (= e!565059 (++!2399 (++!2399 (list!3652 (charsOf!1003 (h!14657 l!5107))) (list!3652 (charsOf!1003 separatorToken!297))) (printWithSeparatorTokenList!44 thiss!20117 (t!97050 l!5107) separatorToken!297)))))

(declare-fun b!858526 () Bool)

(assert (=> b!858526 (= e!565059 Nil!9255)))

(assert (= (and d!268894 c!139107) b!858525))

(assert (= (and d!268894 (not c!139107)) b!858526))

(assert (=> b!858525 m!1100895))

(assert (=> b!858525 m!1100897))

(assert (=> b!858525 m!1100891))

(declare-fun m!1101555 () Bool)

(assert (=> b!858525 m!1101555))

(assert (=> b!858525 m!1101533))

(declare-fun m!1101559 () Bool)

(assert (=> b!858525 m!1101559))

(assert (=> b!858525 m!1100897))

(assert (=> b!858525 m!1100893))

(assert (=> b!858525 m!1101555))

(assert (=> b!858525 m!1101533))

(assert (=> b!858525 m!1100895))

(assert (=> b!858525 m!1100891))

(assert (=> b!858525 m!1100893))

(assert (=> d!268708 d!268894))

(declare-fun d!268896 () Bool)

(declare-fun lt!324718 () Bool)

(declare-fun e!565060 () Bool)

(assert (=> d!268896 (= lt!324718 e!565060)))

(declare-fun res!391768 () Bool)

(assert (=> d!268896 (=> (not res!391768) (not e!565060))))

(assert (=> d!268896 (= res!391768 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 l!5107)))))) (list!3654 (singletonSeq!557 (h!14657 l!5107)))))))

(declare-fun e!565061 () Bool)

(assert (=> d!268896 (= lt!324718 e!565061)))

(declare-fun res!391769 () Bool)

(assert (=> d!268896 (=> (not res!391769) (not e!565061))))

(declare-fun lt!324719 () tuple2!10428)

(assert (=> d!268896 (= res!391769 (= (size!7735 (_1!6040 lt!324719)) 1))))

(assert (=> d!268896 (= lt!324719 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 l!5107)))))))

(assert (=> d!268896 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268896 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 l!5107)) lt!324718)))

(declare-fun b!858527 () Bool)

(declare-fun res!391767 () Bool)

(assert (=> b!858527 (=> (not res!391767) (not e!565061))))

(assert (=> b!858527 (= res!391767 (= (apply!1935 (_1!6040 lt!324719) 0) (h!14657 l!5107)))))

(declare-fun b!858528 () Bool)

(assert (=> b!858528 (= e!565061 (isEmpty!5497 (_2!6040 lt!324719)))))

(declare-fun b!858529 () Bool)

(assert (=> b!858529 (= e!565060 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 l!5107)))))))))

(assert (= (and d!268896 res!391769) b!858527))

(assert (= (and b!858527 res!391767) b!858528))

(assert (= (and d!268896 res!391768) b!858529))

(declare-fun m!1101583 () Bool)

(assert (=> d!268896 m!1101583))

(declare-fun m!1101585 () Bool)

(assert (=> d!268896 m!1101585))

(assert (=> d!268896 m!1100609))

(assert (=> d!268896 m!1101583))

(declare-fun m!1101587 () Bool)

(assert (=> d!268896 m!1101587))

(assert (=> d!268896 m!1101583))

(declare-fun m!1101589 () Bool)

(assert (=> d!268896 m!1101589))

(assert (=> d!268896 m!1101589))

(declare-fun m!1101591 () Bool)

(assert (=> d!268896 m!1101591))

(declare-fun m!1101593 () Bool)

(assert (=> d!268896 m!1101593))

(declare-fun m!1101595 () Bool)

(assert (=> b!858527 m!1101595))

(declare-fun m!1101597 () Bool)

(assert (=> b!858528 m!1101597))

(assert (=> b!858529 m!1101583))

(assert (=> b!858529 m!1101583))

(assert (=> b!858529 m!1101589))

(assert (=> b!858529 m!1101589))

(assert (=> b!858529 m!1101591))

(declare-fun m!1101599 () Bool)

(assert (=> b!858529 m!1101599))

(assert (=> b!858276 d!268896))

(declare-fun d!268900 () Bool)

(declare-fun res!391770 () Bool)

(declare-fun e!565062 () Bool)

(assert (=> d!268900 (=> res!391770 e!565062)))

(assert (=> d!268900 (= res!391770 ((_ is Nil!9256) (t!97050 l!5107)))))

(assert (=> d!268900 (= (forall!2197 (t!97050 l!5107) lambda!25750) e!565062)))

(declare-fun b!858530 () Bool)

(declare-fun e!565063 () Bool)

(assert (=> b!858530 (= e!565062 e!565063)))

(declare-fun res!391771 () Bool)

(assert (=> b!858530 (=> (not res!391771) (not e!565063))))

(assert (=> b!858530 (= res!391771 (dynLambda!4365 lambda!25750 (h!14657 (t!97050 l!5107))))))

(declare-fun b!858531 () Bool)

(assert (=> b!858531 (= e!565063 (forall!2197 (t!97050 (t!97050 l!5107)) lambda!25750))))

(assert (= (and d!268900 (not res!391770)) b!858530))

(assert (= (and b!858530 res!391771) b!858531))

(declare-fun b_lambda!28967 () Bool)

(assert (=> (not b_lambda!28967) (not b!858530)))

(declare-fun m!1101601 () Bool)

(assert (=> b!858530 m!1101601))

(declare-fun m!1101603 () Bool)

(assert (=> b!858531 m!1101603))

(assert (=> b!858310 d!268900))

(declare-fun d!268902 () Bool)

(declare-fun c!139108 () Bool)

(assert (=> d!268902 (= c!139108 ((_ is Cons!9256) ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)))))

(declare-fun e!565064 () List!9271)

(assert (=> d!268902 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)) e!565064)))

(declare-fun b!858532 () Bool)

(assert (=> b!858532 (= e!565064 (++!2399 (list!3652 (charsOf!1003 (h!14657 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)))) (printList!486 thiss!20117 (t!97050 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)))))))

(declare-fun b!858533 () Bool)

(assert (=> b!858533 (= e!565064 Nil!9255)))

(assert (= (and d!268902 c!139108) b!858532))

(assert (= (and d!268902 (not c!139108)) b!858533))

(declare-fun m!1101605 () Bool)

(assert (=> b!858532 m!1101605))

(assert (=> b!858532 m!1101605))

(declare-fun m!1101607 () Bool)

(assert (=> b!858532 m!1101607))

(declare-fun m!1101609 () Bool)

(assert (=> b!858532 m!1101609))

(assert (=> b!858532 m!1101607))

(assert (=> b!858532 m!1101609))

(declare-fun m!1101611 () Bool)

(assert (=> b!858532 m!1101611))

(assert (=> b!858188 d!268902))

(declare-fun d!268904 () Bool)

(assert (=> d!268904 (= ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (Cons!9256 separatorToken!297 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)))))

(assert (=> b!858188 d!268904))

(declare-fun b!858534 () Bool)

(declare-fun e!565070 () List!9271)

(assert (=> b!858534 (= e!565070 Nil!9255)))

(declare-fun b!858535 () Bool)

(declare-fun res!391773 () Bool)

(declare-fun e!565068 () Bool)

(assert (=> b!858535 (=> (not res!391773) (not e!565068))))

(declare-fun e!565069 () Bool)

(assert (=> b!858535 (= res!391773 e!565069)))

(declare-fun res!391774 () Bool)

(assert (=> b!858535 (=> res!391774 e!565069)))

(assert (=> b!858535 (= res!391774 (not ((_ is Cons!9256) (t!97050 lt!324443))))))

(declare-fun b!858536 () Bool)

(declare-fun e!565066 () List!9271)

(assert (=> b!858536 (= e!565066 Nil!9255)))

(declare-fun b!858537 () Bool)

(declare-fun lt!324727 () List!9272)

(assert (=> b!858537 (= e!565066 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324727))) (printList!486 thiss!20117 (t!97050 lt!324727))))))

(declare-fun lt!324725 () List!9272)

(declare-fun d!268906 () Bool)

(assert (=> d!268906 (= (printList!486 thiss!20117 lt!324725) (printWithSeparatorTokenList!44 thiss!20117 (t!97050 lt!324443) separatorToken!297))))

(declare-fun e!565067 () List!9272)

(assert (=> d!268906 (= lt!324725 e!565067)))

(declare-fun c!139109 () Bool)

(assert (=> d!268906 (= c!139109 ((_ is Cons!9256) (t!97050 lt!324443)))))

(assert (=> d!268906 e!565068))

(declare-fun res!391772 () Bool)

(assert (=> d!268906 (=> (not res!391772) (not e!565068))))

(assert (=> d!268906 (= res!391772 (isSeparator!1736 (rule!3159 separatorToken!297)))))

(assert (=> d!268906 (= (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) lt!324725)))

(declare-fun b!858538 () Bool)

(assert (=> b!858538 (= e!565067 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 lt!324443))))))

(declare-fun lt!324721 () List!9271)

(assert (=> b!858538 (= lt!324721 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324443)))))))

(declare-fun lt!324722 () List!9271)

(assert (=> b!858538 (= lt!324722 (list!3652 (charsOf!1003 separatorToken!297)))))

(declare-fun lt!324723 () List!9271)

(assert (=> b!858538 (= lt!324723 (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297)))))

(declare-fun lt!324724 () Unit!13773)

(assert (=> b!858538 (= lt!324724 (lemmaConcatAssociativity!761 lt!324721 lt!324722 lt!324723))))

(assert (=> b!858538 (= (++!2399 (++!2399 lt!324721 lt!324722) lt!324723) (++!2399 lt!324721 (++!2399 lt!324722 lt!324723)))))

(declare-fun lt!324726 () Unit!13773)

(assert (=> b!858538 (= lt!324726 lt!324724)))

(declare-fun b!858539 () Bool)

(assert (=> b!858539 (= e!565067 Nil!9256)))

(declare-fun b!858540 () Bool)

(assert (=> b!858540 (= e!565069 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 lt!324443)))) e!565066))))

(declare-fun c!139111 () Bool)

(assert (=> b!858540 (= c!139111 ((_ is Cons!9256) lt!324727))))

(assert (=> b!858540 (= lt!324727 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297) separatorToken!297) (h!14657 (t!97050 lt!324443))))))

(declare-fun b!858541 () Bool)

(declare-fun e!565065 () Bool)

(assert (=> b!858541 (= e!565068 e!565065)))

(declare-fun res!391775 () Bool)

(assert (=> b!858541 (=> res!391775 e!565065)))

(assert (=> b!858541 (= res!391775 (not ((_ is Cons!9256) (t!97050 lt!324443))))))

(declare-fun b!858542 () Bool)

(declare-fun lt!324720 () List!9272)

(assert (=> b!858542 (= e!565070 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324720))) (printList!486 thiss!20117 (t!97050 lt!324720))))))

(declare-fun b!858543 () Bool)

(assert (=> b!858543 (= e!565065 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297) separatorToken!297)) e!565070))))

(declare-fun c!139110 () Bool)

(assert (=> b!858543 (= c!139110 ((_ is Cons!9256) lt!324720))))

(assert (=> b!858543 (= lt!324720 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 (t!97050 lt!324443)) separatorToken!297) separatorToken!297))))

(assert (= (and d!268906 res!391772) b!858535))

(assert (= (and b!858535 (not res!391774)) b!858540))

(assert (= (and b!858540 c!139111) b!858537))

(assert (= (and b!858540 (not c!139111)) b!858536))

(assert (= (and b!858535 res!391773) b!858541))

(assert (= (and b!858541 (not res!391775)) b!858543))

(assert (= (and b!858543 c!139110) b!858542))

(assert (= (and b!858543 (not c!139110)) b!858534))

(assert (= (and d!268906 c!139109) b!858538))

(assert (= (and d!268906 (not c!139109)) b!858539))

(declare-fun m!1101613 () Bool)

(assert (=> b!858543 m!1101613))

(assert (=> b!858543 m!1101613))

(declare-fun m!1101615 () Bool)

(assert (=> b!858543 m!1101615))

(assert (=> b!858543 m!1101615))

(declare-fun m!1101617 () Bool)

(assert (=> b!858543 m!1101617))

(assert (=> b!858540 m!1101613))

(assert (=> b!858540 m!1101613))

(assert (=> b!858540 m!1101615))

(assert (=> b!858540 m!1101615))

(declare-fun m!1101619 () Bool)

(assert (=> b!858540 m!1101619))

(assert (=> b!858540 m!1101619))

(declare-fun m!1101621 () Bool)

(assert (=> b!858540 m!1101621))

(declare-fun m!1101623 () Bool)

(assert (=> b!858537 m!1101623))

(assert (=> b!858537 m!1101623))

(declare-fun m!1101625 () Bool)

(assert (=> b!858537 m!1101625))

(declare-fun m!1101627 () Bool)

(assert (=> b!858537 m!1101627))

(assert (=> b!858537 m!1101625))

(assert (=> b!858537 m!1101627))

(declare-fun m!1101629 () Bool)

(assert (=> b!858537 m!1101629))

(assert (=> b!858538 m!1101615))

(assert (=> b!858538 m!1101619))

(declare-fun m!1101631 () Bool)

(assert (=> b!858538 m!1101631))

(assert (=> b!858538 m!1101631))

(declare-fun m!1101633 () Bool)

(assert (=> b!858538 m!1101633))

(declare-fun m!1101635 () Bool)

(assert (=> b!858538 m!1101635))

(assert (=> b!858538 m!1101613))

(declare-fun m!1101637 () Bool)

(assert (=> b!858538 m!1101637))

(assert (=> b!858538 m!1101613))

(declare-fun m!1101639 () Bool)

(assert (=> b!858538 m!1101639))

(declare-fun m!1101641 () Bool)

(assert (=> b!858538 m!1101641))

(assert (=> b!858538 m!1100891))

(assert (=> b!858538 m!1100893))

(declare-fun m!1101643 () Bool)

(assert (=> b!858538 m!1101643))

(assert (=> b!858538 m!1101639))

(assert (=> b!858538 m!1101613))

(assert (=> b!858538 m!1101615))

(assert (=> b!858538 m!1101643))

(declare-fun m!1101645 () Bool)

(assert (=> b!858538 m!1101645))

(assert (=> b!858538 m!1100891))

(declare-fun m!1101647 () Bool)

(assert (=> d!268906 m!1101647))

(declare-fun m!1101649 () Bool)

(assert (=> d!268906 m!1101649))

(declare-fun m!1101651 () Bool)

(assert (=> b!858542 m!1101651))

(assert (=> b!858542 m!1101651))

(declare-fun m!1101653 () Bool)

(assert (=> b!858542 m!1101653))

(declare-fun m!1101655 () Bool)

(assert (=> b!858542 m!1101655))

(assert (=> b!858542 m!1101653))

(assert (=> b!858542 m!1101655))

(declare-fun m!1101657 () Bool)

(assert (=> b!858542 m!1101657))

(assert (=> b!858188 d!268906))

(declare-fun d!268908 () Bool)

(declare-fun res!391776 () Bool)

(declare-fun e!565071 () Bool)

(assert (=> d!268908 (=> res!391776 e!565071)))

(assert (=> d!268908 (= res!391776 (not ((_ is Cons!9257) (t!97051 rules!2621))))))

(assert (=> d!268908 (= (sepAndNonSepRulesDisjointChars!536 rules!2621 (t!97051 rules!2621)) e!565071)))

(declare-fun b!858544 () Bool)

(declare-fun e!565072 () Bool)

(assert (=> b!858544 (= e!565071 e!565072)))

(declare-fun res!391777 () Bool)

(assert (=> b!858544 (=> (not res!391777) (not e!565072))))

(assert (=> b!858544 (= res!391777 (ruleDisjointCharsFromAllFromOtherType!249 (h!14658 (t!97051 rules!2621)) rules!2621))))

(declare-fun b!858545 () Bool)

(assert (=> b!858545 (= e!565072 (sepAndNonSepRulesDisjointChars!536 rules!2621 (t!97051 (t!97051 rules!2621))))))

(assert (= (and d!268908 (not res!391776)) b!858544))

(assert (= (and b!858544 res!391777) b!858545))

(declare-fun m!1101659 () Bool)

(assert (=> b!858544 m!1101659))

(declare-fun m!1101661 () Bool)

(assert (=> b!858545 m!1101661))

(assert (=> b!858286 d!268908))

(declare-fun c!139115 () Bool)

(declare-fun d!268910 () Bool)

(assert (=> d!268910 (= c!139115 ((_ is Cons!9256) ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107))))))

(declare-fun e!565073 () List!9271)

(assert (=> d!268910 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107))) e!565073)))

(declare-fun b!858546 () Bool)

(assert (=> b!858546 (= e!565073 (++!2399 (list!3652 (charsOf!1003 (h!14657 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107))))) (printList!486 thiss!20117 (t!97050 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297) (h!14657 l!5107))))))))

(declare-fun b!858547 () Bool)

(assert (=> b!858547 (= e!565073 Nil!9255)))

(assert (= (and d!268910 c!139115) b!858546))

(assert (= (and d!268910 (not c!139115)) b!858547))

(declare-fun m!1101663 () Bool)

(assert (=> b!858546 m!1101663))

(assert (=> b!858546 m!1101663))

(declare-fun m!1101665 () Bool)

(assert (=> b!858546 m!1101665))

(declare-fun m!1101667 () Bool)

(assert (=> b!858546 m!1101667))

(assert (=> b!858546 m!1101665))

(assert (=> b!858546 m!1101667))

(declare-fun m!1101669 () Bool)

(assert (=> b!858546 m!1101669))

(assert (=> b!858125 d!268910))

(assert (=> b!858125 d!268878))

(assert (=> b!858125 d!268886))

(assert (=> b!858125 d!268888))

(declare-fun d!268912 () Bool)

(assert (=> d!268912 true))

(declare-fun order!6011 () Int)

(declare-fun lambda!25770 () Int)

(declare-fun dynLambda!4367 (Int Int) Int)

(assert (=> d!268912 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4367 order!6011 lambda!25770))))

(assert (=> d!268912 true))

(assert (=> d!268912 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4367 order!6011 lambda!25770))))

(declare-fun Forall!422 (Int) Bool)

(assert (=> d!268912 (= (semiInverseModEq!682 (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (Forall!422 lambda!25770))))

(declare-fun bs!232150 () Bool)

(assert (= bs!232150 d!268912))

(declare-fun m!1101671 () Bool)

(assert (=> bs!232150 m!1101671))

(assert (=> d!268666 d!268912))

(declare-fun d!268914 () Bool)

(declare-fun e!565076 () Bool)

(assert (=> d!268914 e!565076))

(declare-fun res!391787 () Bool)

(assert (=> d!268914 (=> (not res!391787) (not e!565076))))

(declare-fun lt!324730 () List!9271)

(assert (=> d!268914 (= res!391787 (= (content!1355 lt!324730) ((_ map or) (content!1355 (list!3652 (charsOf!1003 (h!14657 lt!324548)))) (content!1355 (printList!486 thiss!20117 (t!97050 lt!324548))))))))

(declare-fun e!565077 () List!9271)

(assert (=> d!268914 (= lt!324730 e!565077)))

(declare-fun c!139116 () Bool)

(assert (=> d!268914 (= c!139116 ((_ is Nil!9255) (list!3652 (charsOf!1003 (h!14657 lt!324548)))))))

(assert (=> d!268914 (= (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324548))) (printList!486 thiss!20117 (t!97050 lt!324548))) lt!324730)))

(declare-fun b!858560 () Bool)

(assert (=> b!858560 (= e!565077 (printList!486 thiss!20117 (t!97050 lt!324548)))))

(declare-fun b!858562 () Bool)

(declare-fun res!391786 () Bool)

(assert (=> b!858562 (=> (not res!391786) (not e!565076))))

(assert (=> b!858562 (= res!391786 (= (size!7733 lt!324730) (+ (size!7733 (list!3652 (charsOf!1003 (h!14657 lt!324548)))) (size!7733 (printList!486 thiss!20117 (t!97050 lt!324548))))))))

(declare-fun b!858561 () Bool)

(assert (=> b!858561 (= e!565077 (Cons!9255 (h!14656 (list!3652 (charsOf!1003 (h!14657 lt!324548)))) (++!2399 (t!97049 (list!3652 (charsOf!1003 (h!14657 lt!324548)))) (printList!486 thiss!20117 (t!97050 lt!324548)))))))

(declare-fun b!858563 () Bool)

(assert (=> b!858563 (= e!565076 (or (not (= (printList!486 thiss!20117 (t!97050 lt!324548)) Nil!9255)) (= lt!324730 (list!3652 (charsOf!1003 (h!14657 lt!324548))))))))

(assert (= (and d!268914 c!139116) b!858560))

(assert (= (and d!268914 (not c!139116)) b!858561))

(assert (= (and d!268914 res!391787) b!858562))

(assert (= (and b!858562 res!391786) b!858563))

(declare-fun m!1101673 () Bool)

(assert (=> d!268914 m!1101673))

(assert (=> d!268914 m!1100905))

(declare-fun m!1101675 () Bool)

(assert (=> d!268914 m!1101675))

(assert (=> d!268914 m!1100907))

(declare-fun m!1101677 () Bool)

(assert (=> d!268914 m!1101677))

(declare-fun m!1101679 () Bool)

(assert (=> b!858562 m!1101679))

(assert (=> b!858562 m!1100905))

(declare-fun m!1101681 () Bool)

(assert (=> b!858562 m!1101681))

(assert (=> b!858562 m!1100907))

(declare-fun m!1101683 () Bool)

(assert (=> b!858562 m!1101683))

(assert (=> b!858561 m!1100907))

(declare-fun m!1101685 () Bool)

(assert (=> b!858561 m!1101685))

(assert (=> b!858127 d!268914))

(declare-fun d!268916 () Bool)

(assert (=> d!268916 (= (list!3652 (charsOf!1003 (h!14657 lt!324548))) (list!3655 (c!139018 (charsOf!1003 (h!14657 lt!324548)))))))

(declare-fun bs!232151 () Bool)

(assert (= bs!232151 d!268916))

(declare-fun m!1101687 () Bool)

(assert (=> bs!232151 m!1101687))

(assert (=> b!858127 d!268916))

(declare-fun d!268918 () Bool)

(declare-fun lt!324732 () BalanceConc!6148)

(assert (=> d!268918 (= (list!3652 lt!324732) (originalCharacters!2292 (h!14657 lt!324548)))))

(assert (=> d!268918 (= lt!324732 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548)))) (value!56175 (h!14657 lt!324548))))))

(assert (=> d!268918 (= (charsOf!1003 (h!14657 lt!324548)) lt!324732)))

(declare-fun b_lambda!28969 () Bool)

(assert (=> (not b_lambda!28969) (not d!268918)))

(declare-fun tb!61125 () Bool)

(declare-fun t!97124 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97124) tb!61125))

(declare-fun b!858568 () Bool)

(declare-fun e!565079 () Bool)

(declare-fun tp!270785 () Bool)

(assert (=> b!858568 (= e!565079 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548)))) (value!56175 (h!14657 lt!324548))))) tp!270785))))

(declare-fun result!70750 () Bool)

(assert (=> tb!61125 (= result!70750 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548)))) (value!56175 (h!14657 lt!324548)))) e!565079))))

(assert (= tb!61125 b!858568))

(declare-fun m!1101703 () Bool)

(assert (=> b!858568 m!1101703))

(declare-fun m!1101705 () Bool)

(assert (=> tb!61125 m!1101705))

(assert (=> d!268918 t!97124))

(declare-fun b_and!76197 () Bool)

(assert (= b_and!76187 (and (=> t!97124 result!70750) b_and!76197)))

(declare-fun tb!61127 () Bool)

(declare-fun t!97126 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97126) tb!61127))

(declare-fun result!70752 () Bool)

(assert (= result!70752 result!70750))

(assert (=> d!268918 t!97126))

(declare-fun b_and!76199 () Bool)

(assert (= b_and!76195 (and (=> t!97126 result!70752) b_and!76199)))

(declare-fun t!97128 () Bool)

(declare-fun tb!61129 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97128) tb!61129))

(declare-fun result!70754 () Bool)

(assert (= result!70754 result!70750))

(assert (=> d!268918 t!97128))

(declare-fun b_and!76201 () Bool)

(assert (= b_and!76193 (and (=> t!97128 result!70754) b_and!76201)))

(declare-fun tb!61131 () Bool)

(declare-fun t!97130 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97130) tb!61131))

(declare-fun result!70756 () Bool)

(assert (= result!70756 result!70750))

(assert (=> d!268918 t!97130))

(declare-fun b_and!76203 () Bool)

(assert (= b_and!76191 (and (=> t!97130 result!70756) b_and!76203)))

(declare-fun tb!61133 () Bool)

(declare-fun t!97132 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97132) tb!61133))

(declare-fun result!70758 () Bool)

(assert (= result!70758 result!70750))

(assert (=> d!268918 t!97132))

(declare-fun b_and!76205 () Bool)

(assert (= b_and!76189 (and (=> t!97132 result!70758) b_and!76205)))

(declare-fun m!1101713 () Bool)

(assert (=> d!268918 m!1101713))

(declare-fun m!1101715 () Bool)

(assert (=> d!268918 m!1101715))

(assert (=> b!858127 d!268918))

(declare-fun d!268920 () Bool)

(declare-fun c!139117 () Bool)

(assert (=> d!268920 (= c!139117 ((_ is Cons!9256) (t!97050 lt!324548)))))

(declare-fun e!565080 () List!9271)

(assert (=> d!268920 (= (printList!486 thiss!20117 (t!97050 lt!324548)) e!565080)))

(declare-fun b!858569 () Bool)

(assert (=> b!858569 (= e!565080 (++!2399 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324548)))) (printList!486 thiss!20117 (t!97050 (t!97050 lt!324548)))))))

(declare-fun b!858570 () Bool)

(assert (=> b!858570 (= e!565080 Nil!9255)))

(assert (= (and d!268920 c!139117) b!858569))

(assert (= (and d!268920 (not c!139117)) b!858570))

(declare-fun m!1101719 () Bool)

(assert (=> b!858569 m!1101719))

(assert (=> b!858569 m!1101719))

(declare-fun m!1101721 () Bool)

(assert (=> b!858569 m!1101721))

(declare-fun m!1101723 () Bool)

(assert (=> b!858569 m!1101723))

(assert (=> b!858569 m!1101721))

(assert (=> b!858569 m!1101723))

(declare-fun m!1101725 () Bool)

(assert (=> b!858569 m!1101725))

(assert (=> b!858127 d!268920))

(declare-fun d!268924 () Bool)

(assert (=> d!268924 (= (list!3652 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))) (list!3655 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(declare-fun bs!232152 () Bool)

(assert (= bs!232152 d!268924))

(declare-fun m!1101727 () Bool)

(assert (=> bs!232152 m!1101727))

(assert (=> b!858033 d!268924))

(declare-fun bs!232153 () Bool)

(declare-fun d!268926 () Bool)

(assert (= bs!232153 (and d!268926 d!268912)))

(declare-fun lambda!25771 () Int)

(assert (=> bs!232153 (= (and (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (= (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (h!14658 rules!2621))))) (= lambda!25771 lambda!25770))))

(assert (=> d!268926 true))

(assert (=> d!268926 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) (dynLambda!4367 order!6011 lambda!25771))))

(assert (=> d!268926 true))

(assert (=> d!268926 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))) (dynLambda!4367 order!6011 lambda!25771))))

(assert (=> d!268926 (= (semiInverseModEq!682 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))) (Forall!422 lambda!25771))))

(declare-fun bs!232154 () Bool)

(assert (= bs!232154 d!268926))

(declare-fun m!1101747 () Bool)

(assert (=> bs!232154 m!1101747))

(assert (=> d!268772 d!268926))

(declare-fun d!268930 () Bool)

(assert (=> d!268930 true))

(declare-fun lt!324737 () Bool)

(declare-fun rulesValidInductive!620 (LexerInterface!1538 List!9273) Bool)

(assert (=> d!268930 (= lt!324737 (rulesValidInductive!620 thiss!20117 rules!2621))))

(declare-fun lambda!25774 () Int)

(declare-fun forall!2198 (List!9273 Int) Bool)

(assert (=> d!268930 (= lt!324737 (forall!2198 rules!2621 lambda!25774))))

(assert (=> d!268930 (= (rulesValid!613 thiss!20117 rules!2621) lt!324737)))

(declare-fun bs!232155 () Bool)

(assert (= bs!232155 d!268930))

(declare-fun m!1101753 () Bool)

(assert (=> bs!232155 m!1101753))

(declare-fun m!1101755 () Bool)

(assert (=> bs!232155 m!1101755))

(assert (=> d!268768 d!268930))

(declare-fun d!268934 () Bool)

(assert (=> d!268934 (= (isEmpty!5495 (originalCharacters!2292 separatorToken!297)) ((_ is Nil!9255) (originalCharacters!2292 separatorToken!297)))))

(assert (=> d!268778 d!268934))

(declare-fun d!268936 () Bool)

(assert (=> d!268936 (= (isEmpty!5495 (originalCharacters!2292 (h!14657 l!5107))) ((_ is Nil!9255) (originalCharacters!2292 (h!14657 l!5107))))))

(assert (=> d!268696 d!268936))

(declare-fun d!268938 () Bool)

(declare-fun lt!324738 () Bool)

(declare-fun e!565085 () Bool)

(assert (=> d!268938 (= lt!324738 e!565085)))

(declare-fun res!391797 () Bool)

(assert (=> d!268938 (=> (not res!391797) (not e!565085))))

(assert (=> d!268938 (= res!391797 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324436)))))) (list!3654 (singletonSeq!557 (h!14657 lt!324436)))))))

(declare-fun e!565086 () Bool)

(assert (=> d!268938 (= lt!324738 e!565086)))

(declare-fun res!391798 () Bool)

(assert (=> d!268938 (=> (not res!391798) (not e!565086))))

(declare-fun lt!324739 () tuple2!10428)

(assert (=> d!268938 (= res!391798 (= (size!7735 (_1!6040 lt!324739)) 1))))

(assert (=> d!268938 (= lt!324739 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324436)))))))

(assert (=> d!268938 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268938 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436)) lt!324738)))

(declare-fun b!858579 () Bool)

(declare-fun res!391796 () Bool)

(assert (=> b!858579 (=> (not res!391796) (not e!565086))))

(assert (=> b!858579 (= res!391796 (= (apply!1935 (_1!6040 lt!324739) 0) (h!14657 lt!324436)))))

(declare-fun b!858580 () Bool)

(assert (=> b!858580 (= e!565086 (isEmpty!5497 (_2!6040 lt!324739)))))

(declare-fun b!858581 () Bool)

(assert (=> b!858581 (= e!565085 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324436)))))))))

(assert (= (and d!268938 res!391798) b!858579))

(assert (= (and b!858579 res!391796) b!858580))

(assert (= (and d!268938 res!391797) b!858581))

(declare-fun m!1101757 () Bool)

(assert (=> d!268938 m!1101757))

(declare-fun m!1101759 () Bool)

(assert (=> d!268938 m!1101759))

(assert (=> d!268938 m!1100609))

(assert (=> d!268938 m!1101757))

(declare-fun m!1101761 () Bool)

(assert (=> d!268938 m!1101761))

(assert (=> d!268938 m!1101757))

(declare-fun m!1101763 () Bool)

(assert (=> d!268938 m!1101763))

(assert (=> d!268938 m!1101763))

(declare-fun m!1101765 () Bool)

(assert (=> d!268938 m!1101765))

(declare-fun m!1101767 () Bool)

(assert (=> d!268938 m!1101767))

(declare-fun m!1101769 () Bool)

(assert (=> b!858579 m!1101769))

(declare-fun m!1101771 () Bool)

(assert (=> b!858580 m!1101771))

(assert (=> b!858581 m!1101757))

(assert (=> b!858581 m!1101757))

(assert (=> b!858581 m!1101763))

(assert (=> b!858581 m!1101763))

(assert (=> b!858581 m!1101765))

(declare-fun m!1101773 () Bool)

(assert (=> b!858581 m!1101773))

(assert (=> b!858078 d!268938))

(declare-fun d!268940 () Bool)

(declare-fun lt!324742 () Bool)

(assert (=> d!268940 (= lt!324742 (isEmpty!5495 (list!3652 (_2!6040 lt!324619))))))

(declare-fun isEmpty!5498 (Conc!3067) Bool)

(assert (=> d!268940 (= lt!324742 (isEmpty!5498 (c!139018 (_2!6040 lt!324619))))))

(assert (=> d!268940 (= (isEmpty!5497 (_2!6040 lt!324619)) lt!324742)))

(declare-fun bs!232156 () Bool)

(assert (= bs!232156 d!268940))

(declare-fun m!1101775 () Bool)

(assert (=> bs!232156 m!1101775))

(assert (=> bs!232156 m!1101775))

(declare-fun m!1101777 () Bool)

(assert (=> bs!232156 m!1101777))

(declare-fun m!1101779 () Bool)

(assert (=> bs!232156 m!1101779))

(assert (=> b!858302 d!268940))

(declare-fun d!268942 () Bool)

(assert (=> d!268942 (= (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324435) (h!14657 (t!97050 lt!324435)) rules!2621) (not (prefixMatchZipperSequence!41 (rulesRegex!28 thiss!20117 rules!2621) (++!2400 (charsOf!1003 (h!14657 lt!324435)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324435))) 0))))))))

(declare-fun bs!232157 () Bool)

(assert (= bs!232157 d!268942))

(assert (=> bs!232157 m!1100979))

(declare-fun m!1101781 () Bool)

(assert (=> bs!232157 m!1101781))

(declare-fun m!1101783 () Bool)

(assert (=> bs!232157 m!1101783))

(assert (=> bs!232157 m!1100757))

(declare-fun m!1101785 () Bool)

(assert (=> bs!232157 m!1101785))

(assert (=> bs!232157 m!1101785))

(declare-fun m!1101787 () Bool)

(assert (=> bs!232157 m!1101787))

(assert (=> bs!232157 m!1100979))

(assert (=> bs!232157 m!1100757))

(declare-fun m!1101789 () Bool)

(assert (=> bs!232157 m!1101789))

(assert (=> bs!232157 m!1101789))

(assert (=> bs!232157 m!1101787))

(assert (=> bs!232157 m!1101781))

(assert (=> b!858027 d!268942))

(declare-fun d!268944 () Bool)

(declare-fun lt!324745 () Int)

(assert (=> d!268944 (= lt!324745 (size!7733 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324435))))))))

(declare-fun size!7736 (Conc!3067) Int)

(assert (=> d!268944 (= lt!324745 (size!7736 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324435))))))))

(assert (=> d!268944 (= (size!7732 (charsOf!1003 (h!14657 (t!97050 lt!324435)))) lt!324745)))

(declare-fun bs!232158 () Bool)

(assert (= bs!232158 d!268944))

(assert (=> bs!232158 m!1100757))

(declare-fun m!1101791 () Bool)

(assert (=> bs!232158 m!1101791))

(assert (=> bs!232158 m!1101791))

(declare-fun m!1101793 () Bool)

(assert (=> bs!232158 m!1101793))

(declare-fun m!1101795 () Bool)

(assert (=> bs!232158 m!1101795))

(assert (=> b!858027 d!268944))

(declare-fun d!268946 () Bool)

(assert (=> d!268946 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324435)))))

(declare-fun lt!324760 () Unit!13773)

(declare-fun choose!5065 (LexerInterface!1538 List!9273 List!9272 Token!3138) Unit!13773)

(assert (=> d!268946 (= lt!324760 (choose!5065 thiss!20117 rules!2621 lt!324435 (h!14657 (t!97050 lt!324435))))))

(assert (=> d!268946 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268946 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324435 (h!14657 (t!97050 lt!324435))) lt!324760)))

(declare-fun bs!232172 () Bool)

(assert (= bs!232172 d!268946))

(assert (=> bs!232172 m!1100767))

(declare-fun m!1101935 () Bool)

(assert (=> bs!232172 m!1101935))

(assert (=> bs!232172 m!1100609))

(assert (=> b!858027 d!268946))

(declare-fun d!268994 () Bool)

(declare-fun lt!324761 () Bool)

(declare-fun e!565110 () Bool)

(assert (=> d!268994 (= lt!324761 e!565110)))

(declare-fun res!391815 () Bool)

(assert (=> d!268994 (=> (not res!391815) (not e!565110))))

(assert (=> d!268994 (= res!391815 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324435)))))) (list!3654 (singletonSeq!557 (h!14657 lt!324435)))))))

(declare-fun e!565111 () Bool)

(assert (=> d!268994 (= lt!324761 e!565111)))

(declare-fun res!391816 () Bool)

(assert (=> d!268994 (=> (not res!391816) (not e!565111))))

(declare-fun lt!324762 () tuple2!10428)

(assert (=> d!268994 (= res!391816 (= (size!7735 (_1!6040 lt!324762)) 1))))

(assert (=> d!268994 (= lt!324762 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324435)))))))

(assert (=> d!268994 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268994 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435)) lt!324761)))

(declare-fun b!858623 () Bool)

(declare-fun res!391814 () Bool)

(assert (=> b!858623 (=> (not res!391814) (not e!565111))))

(assert (=> b!858623 (= res!391814 (= (apply!1935 (_1!6040 lt!324762) 0) (h!14657 lt!324435)))))

(declare-fun b!858624 () Bool)

(assert (=> b!858624 (= e!565111 (isEmpty!5497 (_2!6040 lt!324762)))))

(declare-fun b!858625 () Bool)

(assert (=> b!858625 (= e!565110 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 lt!324435)))))))))

(assert (= (and d!268994 res!391816) b!858623))

(assert (= (and b!858623 res!391814) b!858624))

(assert (= (and d!268994 res!391815) b!858625))

(declare-fun m!1101937 () Bool)

(assert (=> d!268994 m!1101937))

(declare-fun m!1101939 () Bool)

(assert (=> d!268994 m!1101939))

(assert (=> d!268994 m!1100609))

(assert (=> d!268994 m!1101937))

(declare-fun m!1101941 () Bool)

(assert (=> d!268994 m!1101941))

(assert (=> d!268994 m!1101937))

(declare-fun m!1101943 () Bool)

(assert (=> d!268994 m!1101943))

(assert (=> d!268994 m!1101943))

(declare-fun m!1101945 () Bool)

(assert (=> d!268994 m!1101945))

(declare-fun m!1101947 () Bool)

(assert (=> d!268994 m!1101947))

(declare-fun m!1101949 () Bool)

(assert (=> b!858623 m!1101949))

(declare-fun m!1101951 () Bool)

(assert (=> b!858624 m!1101951))

(assert (=> b!858625 m!1101937))

(assert (=> b!858625 m!1101937))

(assert (=> b!858625 m!1101943))

(assert (=> b!858625 m!1101943))

(assert (=> b!858625 m!1101945))

(declare-fun m!1101953 () Bool)

(assert (=> b!858625 m!1101953))

(assert (=> b!858027 d!268994))

(declare-fun d!268996 () Bool)

(assert (=> d!268996 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435))))

(declare-fun lt!324763 () Unit!13773)

(assert (=> d!268996 (= lt!324763 (choose!5065 thiss!20117 rules!2621 lt!324435 (h!14657 lt!324435)))))

(assert (=> d!268996 (not (isEmpty!5492 rules!2621))))

(assert (=> d!268996 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324435 (h!14657 lt!324435)) lt!324763)))

(declare-fun bs!232173 () Bool)

(assert (= bs!232173 d!268996))

(assert (=> bs!232173 m!1100759))

(declare-fun m!1101955 () Bool)

(assert (=> bs!232173 m!1101955))

(assert (=> bs!232173 m!1100609))

(assert (=> b!858027 d!268996))

(declare-fun d!268998 () Bool)

(declare-fun lt!324764 () BalanceConc!6148)

(assert (=> d!268998 (= (list!3652 lt!324764) (originalCharacters!2292 (h!14657 (t!97050 lt!324435))))))

(assert (=> d!268998 (= lt!324764 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435))))) (value!56175 (h!14657 (t!97050 lt!324435)))))))

(assert (=> d!268998 (= (charsOf!1003 (h!14657 (t!97050 lt!324435))) lt!324764)))

(declare-fun b_lambda!28977 () Bool)

(assert (=> (not b_lambda!28977) (not d!268998)))

(declare-fun tb!61165 () Bool)

(declare-fun t!97165 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97165) tb!61165))

(declare-fun b!858626 () Bool)

(declare-fun e!565112 () Bool)

(declare-fun tp!270789 () Bool)

(assert (=> b!858626 (= e!565112 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435))))) (value!56175 (h!14657 (t!97050 lt!324435)))))) tp!270789))))

(declare-fun result!70790 () Bool)

(assert (=> tb!61165 (= result!70790 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435))))) (value!56175 (h!14657 (t!97050 lt!324435))))) e!565112))))

(assert (= tb!61165 b!858626))

(declare-fun m!1101957 () Bool)

(assert (=> b!858626 m!1101957))

(declare-fun m!1101959 () Bool)

(assert (=> tb!61165 m!1101959))

(assert (=> d!268998 t!97165))

(declare-fun b_and!76237 () Bool)

(assert (= b_and!76199 (and (=> t!97165 result!70790) b_and!76237)))

(declare-fun t!97167 () Bool)

(declare-fun tb!61167 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97167) tb!61167))

(declare-fun result!70792 () Bool)

(assert (= result!70792 result!70790))

(assert (=> d!268998 t!97167))

(declare-fun b_and!76239 () Bool)

(assert (= b_and!76201 (and (=> t!97167 result!70792) b_and!76239)))

(declare-fun t!97169 () Bool)

(declare-fun tb!61169 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97169) tb!61169))

(declare-fun result!70794 () Bool)

(assert (= result!70794 result!70790))

(assert (=> d!268998 t!97169))

(declare-fun b_and!76241 () Bool)

(assert (= b_and!76203 (and (=> t!97169 result!70794) b_and!76241)))

(declare-fun tb!61171 () Bool)

(declare-fun t!97171 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97171) tb!61171))

(declare-fun result!70796 () Bool)

(assert (= result!70796 result!70790))

(assert (=> d!268998 t!97171))

(declare-fun b_and!76243 () Bool)

(assert (= b_and!76205 (and (=> t!97171 result!70796) b_and!76243)))

(declare-fun tb!61173 () Bool)

(declare-fun t!97173 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97173) tb!61173))

(declare-fun result!70798 () Bool)

(assert (= result!70798 result!70790))

(assert (=> d!268998 t!97173))

(declare-fun b_and!76245 () Bool)

(assert (= b_and!76197 (and (=> t!97173 result!70798) b_and!76245)))

(declare-fun m!1101961 () Bool)

(assert (=> d!268998 m!1101961))

(declare-fun m!1101963 () Bool)

(assert (=> d!268998 m!1101963))

(assert (=> b!858027 d!268998))

(declare-fun d!269000 () Bool)

(declare-fun lt!324765 () Bool)

(declare-fun e!565113 () Bool)

(assert (=> d!269000 (= lt!324765 e!565113)))

(declare-fun res!391818 () Bool)

(assert (=> d!269000 (=> (not res!391818) (not e!565113))))

(assert (=> d!269000 (= res!391818 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324435))))))) (list!3654 (singletonSeq!557 (h!14657 (t!97050 lt!324435))))))))

(declare-fun e!565114 () Bool)

(assert (=> d!269000 (= lt!324765 e!565114)))

(declare-fun res!391819 () Bool)

(assert (=> d!269000 (=> (not res!391819) (not e!565114))))

(declare-fun lt!324766 () tuple2!10428)

(assert (=> d!269000 (= res!391819 (= (size!7735 (_1!6040 lt!324766)) 1))))

(assert (=> d!269000 (= lt!324766 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324435))))))))

(assert (=> d!269000 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269000 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324435))) lt!324765)))

(declare-fun b!858627 () Bool)

(declare-fun res!391817 () Bool)

(assert (=> b!858627 (=> (not res!391817) (not e!565114))))

(assert (=> b!858627 (= res!391817 (= (apply!1935 (_1!6040 lt!324766) 0) (h!14657 (t!97050 lt!324435))))))

(declare-fun b!858628 () Bool)

(assert (=> b!858628 (= e!565114 (isEmpty!5497 (_2!6040 lt!324766)))))

(declare-fun b!858629 () Bool)

(assert (=> b!858629 (= e!565113 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324435))))))))))

(assert (= (and d!269000 res!391819) b!858627))

(assert (= (and b!858627 res!391817) b!858628))

(assert (= (and d!269000 res!391818) b!858629))

(declare-fun m!1101965 () Bool)

(assert (=> d!269000 m!1101965))

(declare-fun m!1101967 () Bool)

(assert (=> d!269000 m!1101967))

(assert (=> d!269000 m!1100609))

(assert (=> d!269000 m!1101965))

(declare-fun m!1101969 () Bool)

(assert (=> d!269000 m!1101969))

(assert (=> d!269000 m!1101965))

(declare-fun m!1101971 () Bool)

(assert (=> d!269000 m!1101971))

(assert (=> d!269000 m!1101971))

(declare-fun m!1101973 () Bool)

(assert (=> d!269000 m!1101973))

(declare-fun m!1101975 () Bool)

(assert (=> d!269000 m!1101975))

(declare-fun m!1101977 () Bool)

(assert (=> b!858627 m!1101977))

(declare-fun m!1101979 () Bool)

(assert (=> b!858628 m!1101979))

(assert (=> b!858629 m!1101965))

(assert (=> b!858629 m!1101965))

(assert (=> b!858629 m!1101971))

(assert (=> b!858629 m!1101971))

(assert (=> b!858629 m!1101973))

(declare-fun m!1101981 () Bool)

(assert (=> b!858629 m!1101981))

(assert (=> b!858027 d!269000))

(declare-fun d!269002 () Bool)

(assert (=> d!269002 (= (list!3652 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))) (list!3655 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(declare-fun bs!232174 () Bool)

(assert (= bs!232174 d!269002))

(declare-fun m!1101983 () Bool)

(assert (=> bs!232174 m!1101983))

(assert (=> b!858287 d!269002))

(declare-fun bs!232175 () Bool)

(declare-fun d!269004 () Bool)

(assert (= bs!232175 (and d!269004 b!857938)))

(declare-fun lambda!25779 () Int)

(assert (=> bs!232175 (not (= lambda!25779 lambda!25750))))

(declare-fun bs!232176 () Bool)

(assert (= bs!232176 (and d!269004 d!268698)))

(assert (=> bs!232176 (= lambda!25779 lambda!25757)))

(declare-fun bs!232177 () Bool)

(assert (= bs!232177 (and d!269004 d!268766)))

(assert (=> bs!232177 (= lambda!25779 lambda!25759)))

(declare-fun bs!232178 () Bool)

(assert (= bs!232178 (and d!269004 d!268774)))

(assert (=> bs!232178 (= lambda!25779 lambda!25760)))

(declare-fun b!858634 () Bool)

(declare-fun e!565119 () Bool)

(assert (=> b!858634 (= e!565119 true)))

(declare-fun b!858633 () Bool)

(declare-fun e!565118 () Bool)

(assert (=> b!858633 (= e!565118 e!565119)))

(declare-fun b!858632 () Bool)

(declare-fun e!565117 () Bool)

(assert (=> b!858632 (= e!565117 e!565118)))

(assert (=> d!269004 e!565117))

(assert (= b!858633 b!858634))

(assert (= b!858632 b!858633))

(assert (= (and d!269004 ((_ is Cons!9257) rules!2621)) b!858632))

(assert (=> b!858634 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25779))))

(assert (=> b!858634 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25779))))

(assert (=> d!269004 true))

(declare-fun lt!324767 () Bool)

(assert (=> d!269004 (= lt!324767 (forall!2197 (t!97050 lt!324435) lambda!25779))))

(declare-fun e!565116 () Bool)

(assert (=> d!269004 (= lt!324767 e!565116)))

(declare-fun res!391820 () Bool)

(assert (=> d!269004 (=> res!391820 e!565116)))

(assert (=> d!269004 (= res!391820 (not ((_ is Cons!9256) (t!97050 lt!324435))))))

(assert (=> d!269004 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269004 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 lt!324435)) lt!324767)))

(declare-fun b!858630 () Bool)

(declare-fun e!565115 () Bool)

(assert (=> b!858630 (= e!565116 e!565115)))

(declare-fun res!391821 () Bool)

(assert (=> b!858630 (=> (not res!391821) (not e!565115))))

(assert (=> b!858630 (= res!391821 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324435))))))

(declare-fun b!858631 () Bool)

(assert (=> b!858631 (= e!565115 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 (t!97050 lt!324435))))))

(assert (= (and d!269004 (not res!391820)) b!858630))

(assert (= (and b!858630 res!391821) b!858631))

(declare-fun m!1101985 () Bool)

(assert (=> d!269004 m!1101985))

(assert (=> d!269004 m!1100609))

(assert (=> b!858630 m!1100767))

(declare-fun m!1101987 () Bool)

(assert (=> b!858631 m!1101987))

(assert (=> b!858268 d!269004))

(declare-fun d!269006 () Bool)

(declare-fun lt!324770 () C!4908)

(declare-fun apply!1938 (List!9271 Int) C!4908)

(assert (=> d!269006 (= lt!324770 (apply!1938 (list!3652 (charsOf!1003 lt!324437)) 0))))

(declare-fun apply!1939 (Conc!3067 Int) C!4908)

(assert (=> d!269006 (= lt!324770 (apply!1939 (c!139018 (charsOf!1003 lt!324437)) 0))))

(declare-fun e!565122 () Bool)

(assert (=> d!269006 e!565122))

(declare-fun res!391824 () Bool)

(assert (=> d!269006 (=> (not res!391824) (not e!565122))))

(assert (=> d!269006 (= res!391824 (<= 0 0))))

(assert (=> d!269006 (= (apply!1934 (charsOf!1003 lt!324437) 0) lt!324770)))

(declare-fun b!858637 () Bool)

(assert (=> b!858637 (= e!565122 (< 0 (size!7732 (charsOf!1003 lt!324437))))))

(assert (= (and d!269006 res!391824) b!858637))

(assert (=> d!269006 m!1100985))

(declare-fun m!1101989 () Bool)

(assert (=> d!269006 m!1101989))

(assert (=> d!269006 m!1101989))

(declare-fun m!1101991 () Bool)

(assert (=> d!269006 m!1101991))

(declare-fun m!1101993 () Bool)

(assert (=> d!269006 m!1101993))

(assert (=> b!858637 m!1100985))

(declare-fun m!1101995 () Bool)

(assert (=> b!858637 m!1101995))

(assert (=> d!268724 d!269006))

(declare-fun d!269008 () Bool)

(declare-fun lt!324773 () Unit!13773)

(declare-fun lemma!16 (List!9273 LexerInterface!1538 List!9273) Unit!13773)

(assert (=> d!269008 (= lt!324773 (lemma!16 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25782 () Int)

(declare-datatypes ((List!9278 0))(
  ( (Nil!9262) (Cons!9262 (h!14663 Regex!2169) (t!97406 List!9278)) )
))
(declare-fun generalisedUnion!20 (List!9278) Regex!2169)

(declare-fun map!1916 (List!9273 Int) List!9278)

(assert (=> d!269008 (= (rulesRegex!28 thiss!20117 rules!2621) (generalisedUnion!20 (map!1916 rules!2621 lambda!25782)))))

(declare-fun bs!232179 () Bool)

(assert (= bs!232179 d!269008))

(declare-fun m!1101997 () Bool)

(assert (=> bs!232179 m!1101997))

(declare-fun m!1101999 () Bool)

(assert (=> bs!232179 m!1101999))

(assert (=> bs!232179 m!1101999))

(declare-fun m!1102001 () Bool)

(assert (=> bs!232179 m!1102001))

(assert (=> d!268724 d!269008))

(declare-fun b!858649 () Bool)

(declare-fun e!565125 () Bool)

(declare-fun lt!324776 () BalanceConc!6148)

(assert (=> b!858649 (= e!565125 (= (list!3652 lt!324776) (++!2399 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (list!3652 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))))))

(declare-fun b!858647 () Bool)

(declare-fun res!391836 () Bool)

(assert (=> b!858647 (=> (not res!391836) (not e!565125))))

(declare-fun height!404 (Conc!3067) Int)

(declare-fun ++!2402 (Conc!3067 Conc!3067) Conc!3067)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!858647 (= res!391836 (<= (height!404 (++!2402 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))) (+ (max!0 (height!404 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436))))) (height!404 (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))) 1)))))

(declare-fun d!269010 () Bool)

(assert (=> d!269010 e!565125))

(declare-fun res!391833 () Bool)

(assert (=> d!269010 (=> (not res!391833) (not e!565125))))

(declare-fun appendAssocInst!200 (Conc!3067 Conc!3067) Bool)

(assert (=> d!269010 (= res!391833 (appendAssocInst!200 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0)))))))

(assert (=> d!269010 (= lt!324776 (BalanceConc!6149 (++!2402 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))))))

(assert (=> d!269010 (= (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))) lt!324776)))

(declare-fun b!858646 () Bool)

(declare-fun res!391835 () Bool)

(assert (=> b!858646 (=> (not res!391835) (not e!565125))))

(declare-fun isBalanced!855 (Conc!3067) Bool)

(assert (=> b!858646 (= res!391835 (isBalanced!855 (++!2402 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))))))

(declare-fun b!858648 () Bool)

(declare-fun res!391834 () Bool)

(assert (=> b!858648 (=> (not res!391834) (not e!565125))))

(assert (=> b!858648 (= res!391834 (>= (height!404 (++!2402 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))) (max!0 (height!404 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436))))) (height!404 (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0)))))))))

(assert (= (and d!269010 res!391833) b!858646))

(assert (= (and b!858646 res!391835) b!858647))

(assert (= (and b!858647 res!391836) b!858648))

(assert (= (and b!858648 res!391834) b!858649))

(declare-fun m!1102003 () Bool)

(assert (=> b!858647 m!1102003))

(declare-fun m!1102005 () Bool)

(assert (=> b!858647 m!1102005))

(declare-fun m!1102007 () Bool)

(assert (=> b!858647 m!1102007))

(assert (=> b!858647 m!1102007))

(declare-fun m!1102009 () Bool)

(assert (=> b!858647 m!1102009))

(assert (=> b!858647 m!1102003))

(assert (=> b!858647 m!1102005))

(declare-fun m!1102011 () Bool)

(assert (=> b!858647 m!1102011))

(assert (=> b!858646 m!1102007))

(assert (=> b!858646 m!1102007))

(declare-fun m!1102013 () Bool)

(assert (=> b!858646 m!1102013))

(declare-fun m!1102015 () Bool)

(assert (=> b!858649 m!1102015))

(assert (=> b!858649 m!1100921))

(declare-fun m!1102017 () Bool)

(assert (=> b!858649 m!1102017))

(assert (=> b!858649 m!1100989))

(declare-fun m!1102019 () Bool)

(assert (=> b!858649 m!1102019))

(assert (=> b!858649 m!1102017))

(assert (=> b!858649 m!1102019))

(declare-fun m!1102021 () Bool)

(assert (=> b!858649 m!1102021))

(declare-fun m!1102023 () Bool)

(assert (=> d!269010 m!1102023))

(assert (=> d!269010 m!1102007))

(assert (=> b!858648 m!1102003))

(assert (=> b!858648 m!1102005))

(assert (=> b!858648 m!1102007))

(assert (=> b!858648 m!1102007))

(assert (=> b!858648 m!1102009))

(assert (=> b!858648 m!1102003))

(assert (=> b!858648 m!1102005))

(assert (=> b!858648 m!1102011))

(assert (=> d!268724 d!269010))

(declare-fun d!269012 () Bool)

(declare-fun e!565128 () Bool)

(assert (=> d!269012 e!565128))

(declare-fun res!391839 () Bool)

(assert (=> d!269012 (=> (not res!391839) (not e!565128))))

(declare-fun lt!324779 () BalanceConc!6148)

(assert (=> d!269012 (= res!391839 (= (list!3652 lt!324779) (Cons!9255 (apply!1934 (charsOf!1003 lt!324437) 0) Nil!9255)))))

(declare-fun singleton!274 (C!4908) BalanceConc!6148)

(assert (=> d!269012 (= lt!324779 (singleton!274 (apply!1934 (charsOf!1003 lt!324437) 0)))))

(assert (=> d!269012 (= (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0)) lt!324779)))

(declare-fun b!858652 () Bool)

(assert (=> b!858652 (= e!565128 (isBalanced!855 (c!139018 lt!324779)))))

(assert (= (and d!269012 res!391839) b!858652))

(declare-fun m!1102025 () Bool)

(assert (=> d!269012 m!1102025))

(assert (=> d!269012 m!1100987))

(declare-fun m!1102027 () Bool)

(assert (=> d!269012 m!1102027))

(declare-fun m!1102029 () Bool)

(assert (=> b!858652 m!1102029))

(assert (=> d!268724 d!269012))

(declare-fun d!269014 () Bool)

(declare-fun lt!324780 () BalanceConc!6148)

(assert (=> d!269014 (= (list!3652 lt!324780) (originalCharacters!2292 (h!14657 (t!97050 lt!324436))))))

(assert (=> d!269014 (= lt!324780 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436))))) (value!56175 (h!14657 (t!97050 lt!324436)))))))

(assert (=> d!269014 (= (charsOf!1003 (h!14657 (t!97050 lt!324436))) lt!324780)))

(declare-fun b_lambda!28979 () Bool)

(assert (=> (not b_lambda!28979) (not d!269014)))

(declare-fun tb!61175 () Bool)

(declare-fun t!97176 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97176) tb!61175))

(declare-fun b!858653 () Bool)

(declare-fun e!565129 () Bool)

(declare-fun tp!270790 () Bool)

(assert (=> b!858653 (= e!565129 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436))))) (value!56175 (h!14657 (t!97050 lt!324436)))))) tp!270790))))

(declare-fun result!70800 () Bool)

(assert (=> tb!61175 (= result!70800 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436))))) (value!56175 (h!14657 (t!97050 lt!324436))))) e!565129))))

(assert (= tb!61175 b!858653))

(declare-fun m!1102031 () Bool)

(assert (=> b!858653 m!1102031))

(declare-fun m!1102033 () Bool)

(assert (=> tb!61175 m!1102033))

(assert (=> d!269014 t!97176))

(declare-fun b_and!76247 () Bool)

(assert (= b_and!76241 (and (=> t!97176 result!70800) b_and!76247)))

(declare-fun t!97178 () Bool)

(declare-fun tb!61177 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97178) tb!61177))

(declare-fun result!70802 () Bool)

(assert (= result!70802 result!70800))

(assert (=> d!269014 t!97178))

(declare-fun b_and!76249 () Bool)

(assert (= b_and!76245 (and (=> t!97178 result!70802) b_and!76249)))

(declare-fun tb!61179 () Bool)

(declare-fun t!97180 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97180) tb!61179))

(declare-fun result!70804 () Bool)

(assert (= result!70804 result!70800))

(assert (=> d!269014 t!97180))

(declare-fun b_and!76251 () Bool)

(assert (= b_and!76237 (and (=> t!97180 result!70804) b_and!76251)))

(declare-fun t!97182 () Bool)

(declare-fun tb!61181 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97182) tb!61181))

(declare-fun result!70806 () Bool)

(assert (= result!70806 result!70800))

(assert (=> d!269014 t!97182))

(declare-fun b_and!76253 () Bool)

(assert (= b_and!76239 (and (=> t!97182 result!70806) b_and!76253)))

(declare-fun t!97184 () Bool)

(declare-fun tb!61183 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97184) tb!61183))

(declare-fun result!70808 () Bool)

(assert (= result!70808 result!70800))

(assert (=> d!269014 t!97184))

(declare-fun b_and!76255 () Bool)

(assert (= b_and!76243 (and (=> t!97184 result!70808) b_and!76255)))

(declare-fun m!1102035 () Bool)

(assert (=> d!269014 m!1102035))

(declare-fun m!1102037 () Bool)

(assert (=> d!269014 m!1102037))

(assert (=> d!268724 d!269014))

(declare-fun d!269016 () Bool)

(declare-fun lt!324781 () BalanceConc!6148)

(assert (=> d!269016 (= (list!3652 lt!324781) (originalCharacters!2292 lt!324437))))

(assert (=> d!269016 (= lt!324781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 lt!324437))) (value!56175 lt!324437)))))

(assert (=> d!269016 (= (charsOf!1003 lt!324437) lt!324781)))

(declare-fun b_lambda!28981 () Bool)

(assert (=> (not b_lambda!28981) (not d!269016)))

(declare-fun t!97186 () Bool)

(declare-fun tb!61185 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97186) tb!61185))

(declare-fun b!858654 () Bool)

(declare-fun e!565130 () Bool)

(declare-fun tp!270791 () Bool)

(assert (=> b!858654 (= e!565130 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 lt!324437))) (value!56175 lt!324437)))) tp!270791))))

(declare-fun result!70810 () Bool)

(assert (=> tb!61185 (= result!70810 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 lt!324437))) (value!56175 lt!324437))) e!565130))))

(assert (= tb!61185 b!858654))

(declare-fun m!1102039 () Bool)

(assert (=> b!858654 m!1102039))

(declare-fun m!1102041 () Bool)

(assert (=> tb!61185 m!1102041))

(assert (=> d!269016 t!97186))

(declare-fun b_and!76257 () Bool)

(assert (= b_and!76251 (and (=> t!97186 result!70810) b_and!76257)))

(declare-fun t!97188 () Bool)

(declare-fun tb!61187 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97188) tb!61187))

(declare-fun result!70812 () Bool)

(assert (= result!70812 result!70810))

(assert (=> d!269016 t!97188))

(declare-fun b_and!76259 () Bool)

(assert (= b_and!76255 (and (=> t!97188 result!70812) b_and!76259)))

(declare-fun t!97190 () Bool)

(declare-fun tb!61189 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97190) tb!61189))

(declare-fun result!70814 () Bool)

(assert (= result!70814 result!70810))

(assert (=> d!269016 t!97190))

(declare-fun b_and!76261 () Bool)

(assert (= b_and!76253 (and (=> t!97190 result!70814) b_and!76261)))

(declare-fun t!97192 () Bool)

(declare-fun tb!61191 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97192) tb!61191))

(declare-fun result!70816 () Bool)

(assert (= result!70816 result!70810))

(assert (=> d!269016 t!97192))

(declare-fun b_and!76263 () Bool)

(assert (= b_and!76249 (and (=> t!97192 result!70816) b_and!76263)))

(declare-fun t!97194 () Bool)

(declare-fun tb!61193 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97194) tb!61193))

(declare-fun result!70818 () Bool)

(assert (= result!70818 result!70810))

(assert (=> d!269016 t!97194))

(declare-fun b_and!76265 () Bool)

(assert (= b_and!76247 (and (=> t!97194 result!70818) b_and!76265)))

(declare-fun m!1102043 () Bool)

(assert (=> d!269016 m!1102043))

(declare-fun m!1102045 () Bool)

(assert (=> d!269016 m!1102045))

(assert (=> d!268724 d!269016))

(declare-fun d!269018 () Bool)

(declare-fun lt!324840 () Bool)

(declare-fun prefixMatch!14 (Regex!2169 List!9271) Bool)

(assert (=> d!269018 (= lt!324840 (prefixMatch!14 (rulesRegex!28 thiss!20117 rules!2621) (list!3652 (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))))))))

(declare-datatypes ((Context!878 0))(
  ( (Context!879 (exprs!939 List!9278)) )
))
(declare-fun prefixMatchZipperSequence!43 ((InoxSet Context!878) BalanceConc!6148 Int) Bool)

(declare-fun focus!34 (Regex!2169) (InoxSet Context!878))

(assert (=> d!269018 (= lt!324840 (prefixMatchZipperSequence!43 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)) (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))) 0))))

(declare-fun lt!324841 () Unit!13773)

(declare-fun lt!324837 () Unit!13773)

(assert (=> d!269018 (= lt!324841 lt!324837)))

(declare-fun lt!324839 () (InoxSet Context!878))

(declare-fun lt!324835 () List!9271)

(declare-fun prefixMatchZipper!14 ((InoxSet Context!878) List!9271) Bool)

(assert (=> d!269018 (= (prefixMatch!14 (rulesRegex!28 thiss!20117 rules!2621) lt!324835) (prefixMatchZipper!14 lt!324839 lt!324835))))

(declare-datatypes ((List!9279 0))(
  ( (Nil!9263) (Cons!9263 (h!14664 Context!878) (t!97407 List!9279)) )
))
(declare-fun lt!324838 () List!9279)

(declare-fun prefixMatchZipperRegexEquiv!14 ((InoxSet Context!878) List!9279 Regex!2169 List!9271) Unit!13773)

(assert (=> d!269018 (= lt!324837 (prefixMatchZipperRegexEquiv!14 lt!324839 lt!324838 (rulesRegex!28 thiss!20117 rules!2621) lt!324835))))

(assert (=> d!269018 (= lt!324835 (list!3652 (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0)))))))

(declare-fun toList!580 ((InoxSet Context!878)) List!9279)

(assert (=> d!269018 (= lt!324838 (toList!580 (focus!34 (rulesRegex!28 thiss!20117 rules!2621))))))

(assert (=> d!269018 (= lt!324839 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)))))

(declare-fun lt!324836 () Unit!13773)

(declare-fun lt!324834 () Unit!13773)

(assert (=> d!269018 (= lt!324836 lt!324834)))

(declare-fun lt!324832 () Int)

(declare-fun lt!324833 () (InoxSet Context!878))

(declare-fun dropList!276 (BalanceConc!6148 Int) List!9271)

(assert (=> d!269018 (= (prefixMatchZipper!14 lt!324833 (dropList!276 (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))) lt!324832)) (prefixMatchZipperSequence!43 lt!324833 (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))) lt!324832))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!14 ((InoxSet Context!878) BalanceConc!6148 Int) Unit!13773)

(assert (=> d!269018 (= lt!324834 (lemmaprefixMatchZipperSequenceEquivalent!14 lt!324833 (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0))) lt!324832))))

(assert (=> d!269018 (= lt!324832 0)))

(assert (=> d!269018 (= lt!324833 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)))))

(declare-fun validRegex!664 (Regex!2169) Bool)

(assert (=> d!269018 (validRegex!664 (rulesRegex!28 thiss!20117 rules!2621))))

(assert (=> d!269018 (= (prefixMatchZipperSequence!41 (rulesRegex!28 thiss!20117 rules!2621) (++!2400 (charsOf!1003 (h!14657 (t!97050 lt!324436))) (singletonSeq!556 (apply!1934 (charsOf!1003 lt!324437) 0)))) lt!324840)))

(declare-fun bs!232209 () Bool)

(assert (= bs!232209 d!269018))

(assert (=> bs!232209 m!1100979))

(declare-fun m!1102233 () Bool)

(assert (=> bs!232209 m!1102233))

(assert (=> bs!232209 m!1102233))

(assert (=> bs!232209 m!1100981))

(declare-fun m!1102235 () Bool)

(assert (=> bs!232209 m!1102235))

(assert (=> bs!232209 m!1100981))

(declare-fun m!1102237 () Bool)

(assert (=> bs!232209 m!1102237))

(declare-fun m!1102239 () Bool)

(assert (=> bs!232209 m!1102239))

(declare-fun m!1102241 () Bool)

(assert (=> bs!232209 m!1102241))

(declare-fun m!1102243 () Bool)

(assert (=> bs!232209 m!1102243))

(assert (=> bs!232209 m!1100979))

(declare-fun m!1102245 () Bool)

(assert (=> bs!232209 m!1102245))

(assert (=> bs!232209 m!1100981))

(declare-fun m!1102247 () Bool)

(assert (=> bs!232209 m!1102247))

(assert (=> bs!232209 m!1100981))

(assert (=> bs!232209 m!1102241))

(assert (=> bs!232209 m!1102233))

(declare-fun m!1102249 () Bool)

(assert (=> bs!232209 m!1102249))

(assert (=> bs!232209 m!1100979))

(declare-fun m!1102253 () Bool)

(assert (=> bs!232209 m!1102253))

(assert (=> bs!232209 m!1100981))

(declare-fun m!1102257 () Bool)

(assert (=> bs!232209 m!1102257))

(assert (=> bs!232209 m!1100979))

(declare-fun m!1102259 () Bool)

(assert (=> bs!232209 m!1102259))

(assert (=> bs!232209 m!1100979))

(assert (=> bs!232209 m!1102247))

(declare-fun m!1102261 () Bool)

(assert (=> bs!232209 m!1102261))

(assert (=> d!268724 d!269018))

(declare-fun d!269092 () Bool)

(declare-fun res!391871 () Bool)

(declare-fun e!565176 () Bool)

(assert (=> d!269092 (=> (not res!391871) (not e!565176))))

(assert (=> d!269092 (= res!391871 (not (isEmpty!5495 (originalCharacters!2292 (h!14657 (t!97050 l!5107))))))))

(assert (=> d!269092 (= (inv!11776 (h!14657 (t!97050 l!5107))) e!565176)))

(declare-fun b!858714 () Bool)

(declare-fun res!391872 () Bool)

(assert (=> b!858714 (=> (not res!391872) (not e!565176))))

(assert (=> b!858714 (= res!391872 (= (originalCharacters!2292 (h!14657 (t!97050 l!5107))) (list!3652 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (value!56175 (h!14657 (t!97050 l!5107)))))))))

(declare-fun b!858715 () Bool)

(assert (=> b!858715 (= e!565176 (= (size!7729 (h!14657 (t!97050 l!5107))) (size!7733 (originalCharacters!2292 (h!14657 (t!97050 l!5107))))))))

(assert (= (and d!269092 res!391871) b!858714))

(assert (= (and b!858714 res!391872) b!858715))

(declare-fun b_lambda!28991 () Bool)

(assert (=> (not b_lambda!28991) (not b!858714)))

(declare-fun t!97216 () Bool)

(declare-fun tb!61215 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97216) tb!61215))

(declare-fun b!858716 () Bool)

(declare-fun e!565177 () Bool)

(declare-fun tp!270794 () Bool)

(assert (=> b!858716 (= e!565177 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (value!56175 (h!14657 (t!97050 l!5107)))))) tp!270794))))

(declare-fun result!70840 () Bool)

(assert (=> tb!61215 (= result!70840 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (value!56175 (h!14657 (t!97050 l!5107))))) e!565177))))

(assert (= tb!61215 b!858716))

(declare-fun m!1102273 () Bool)

(assert (=> b!858716 m!1102273))

(declare-fun m!1102279 () Bool)

(assert (=> tb!61215 m!1102279))

(assert (=> b!858714 t!97216))

(declare-fun b_and!76287 () Bool)

(assert (= b_and!76265 (and (=> t!97216 result!70840) b_and!76287)))

(declare-fun t!97218 () Bool)

(declare-fun tb!61217 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97218) tb!61217))

(declare-fun result!70842 () Bool)

(assert (= result!70842 result!70840))

(assert (=> b!858714 t!97218))

(declare-fun b_and!76289 () Bool)

(assert (= b_and!76263 (and (=> t!97218 result!70842) b_and!76289)))

(declare-fun tb!61219 () Bool)

(declare-fun t!97220 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97220) tb!61219))

(declare-fun result!70844 () Bool)

(assert (= result!70844 result!70840))

(assert (=> b!858714 t!97220))

(declare-fun b_and!76291 () Bool)

(assert (= b_and!76257 (and (=> t!97220 result!70844) b_and!76291)))

(declare-fun t!97222 () Bool)

(declare-fun tb!61221 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97222) tb!61221))

(declare-fun result!70846 () Bool)

(assert (= result!70846 result!70840))

(assert (=> b!858714 t!97222))

(declare-fun b_and!76293 () Bool)

(assert (= b_and!76261 (and (=> t!97222 result!70846) b_and!76293)))

(declare-fun t!97224 () Bool)

(declare-fun tb!61223 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97224) tb!61223))

(declare-fun result!70848 () Bool)

(assert (= result!70848 result!70840))

(assert (=> b!858714 t!97224))

(declare-fun b_and!76295 () Bool)

(assert (= b_and!76259 (and (=> t!97224 result!70848) b_and!76295)))

(declare-fun m!1102283 () Bool)

(assert (=> d!269092 m!1102283))

(declare-fun m!1102285 () Bool)

(assert (=> b!858714 m!1102285))

(assert (=> b!858714 m!1102285))

(declare-fun m!1102287 () Bool)

(assert (=> b!858714 m!1102287))

(declare-fun m!1102289 () Bool)

(assert (=> b!858715 m!1102289))

(assert (=> b!858335 d!269092))

(declare-fun d!269096 () Bool)

(assert (=> d!269096 true))

(declare-fun lambda!25794 () Int)

(declare-fun order!6015 () Int)

(declare-fun dynLambda!4369 (Int Int) Int)

(assert (=> d!269096 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4369 order!6015 lambda!25794))))

(declare-fun Forall2!333 (Int) Bool)

(assert (=> d!269096 (= (equivClasses!649 (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (Forall2!333 lambda!25794))))

(declare-fun bs!232220 () Bool)

(assert (= bs!232220 d!269096))

(declare-fun m!1102327 () Bool)

(assert (=> bs!232220 m!1102327))

(assert (=> b!857965 d!269096))

(declare-fun bs!232221 () Bool)

(declare-fun d!269108 () Bool)

(assert (= bs!232221 (and d!269108 d!268766)))

(declare-fun lambda!25795 () Int)

(assert (=> bs!232221 (= lambda!25795 lambda!25759)))

(declare-fun bs!232222 () Bool)

(assert (= bs!232222 (and d!269108 d!268698)))

(assert (=> bs!232222 (= lambda!25795 lambda!25757)))

(declare-fun bs!232223 () Bool)

(assert (= bs!232223 (and d!269108 b!857938)))

(assert (=> bs!232223 (not (= lambda!25795 lambda!25750))))

(declare-fun bs!232224 () Bool)

(assert (= bs!232224 (and d!269108 d!269004)))

(assert (=> bs!232224 (= lambda!25795 lambda!25779)))

(declare-fun bs!232225 () Bool)

(assert (= bs!232225 (and d!269108 d!268774)))

(assert (=> bs!232225 (= lambda!25795 lambda!25760)))

(declare-fun b!858737 () Bool)

(declare-fun e!565193 () Bool)

(assert (=> b!858737 (= e!565193 true)))

(declare-fun b!858736 () Bool)

(declare-fun e!565192 () Bool)

(assert (=> b!858736 (= e!565192 e!565193)))

(declare-fun b!858735 () Bool)

(declare-fun e!565191 () Bool)

(assert (=> b!858735 (= e!565191 e!565192)))

(assert (=> d!269108 e!565191))

(assert (= b!858736 b!858737))

(assert (= b!858735 b!858736))

(assert (= (and d!269108 ((_ is Cons!9257) rules!2621)) b!858735))

(assert (=> b!858737 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25795))))

(assert (=> b!858737 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25795))))

(assert (=> d!269108 true))

(declare-fun lt!324853 () Bool)

(assert (=> d!269108 (= lt!324853 (forall!2197 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) lambda!25795))))

(declare-fun e!565190 () Bool)

(assert (=> d!269108 (= lt!324853 e!565190)))

(declare-fun res!391879 () Bool)

(assert (=> d!269108 (=> res!391879 e!565190)))

(assert (=> d!269108 (= res!391879 (not ((_ is Cons!9256) (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(assert (=> d!269108 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269108 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)) lt!324853)))

(declare-fun b!858733 () Bool)

(declare-fun e!565189 () Bool)

(assert (=> b!858733 (= e!565190 e!565189)))

(declare-fun res!391880 () Bool)

(assert (=> b!858733 (=> (not res!391880) (not e!565189))))

(assert (=> b!858733 (= res!391880 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(declare-fun b!858734 () Bool)

(assert (=> b!858734 (= e!565189 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(assert (= (and d!269108 (not res!391879)) b!858733))

(assert (= (and b!858733 res!391880) b!858734))

(assert (=> d!269108 m!1100585))

(declare-fun m!1102329 () Bool)

(assert (=> d!269108 m!1102329))

(assert (=> d!269108 m!1100609))

(declare-fun m!1102331 () Bool)

(assert (=> b!858733 m!1102331))

(declare-fun m!1102333 () Bool)

(assert (=> b!858734 m!1102333))

(assert (=> d!268754 d!269108))

(assert (=> d!268754 d!268744))

(declare-fun d!269110 () Bool)

(assert (=> d!269110 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))

(assert (=> d!269110 true))

(declare-fun _$32!365 () Unit!13773)

(assert (=> d!269110 (= (choose!5060 thiss!20117 rules!2621 lt!324443 separatorToken!297) _$32!365)))

(declare-fun bs!232227 () Bool)

(assert (= bs!232227 d!269110))

(assert (=> bs!232227 m!1100585))

(assert (=> bs!232227 m!1100585))

(assert (=> bs!232227 m!1101051))

(assert (=> d!268754 d!269110))

(assert (=> d!268754 d!268792))

(declare-fun d!269114 () Bool)

(declare-fun res!391882 () Bool)

(declare-fun e!565195 () Bool)

(assert (=> d!269114 (=> res!391882 e!565195)))

(assert (=> d!269114 (= res!391882 (or (not ((_ is Cons!9256) (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))) (not ((_ is Cons!9256) (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))))

(assert (=> d!269114 (= (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) rules!2621) e!565195)))

(declare-fun b!858738 () Bool)

(declare-fun e!565194 () Bool)

(assert (=> b!858738 (= e!565195 e!565194)))

(declare-fun res!391881 () Bool)

(assert (=> b!858738 (=> (not res!391881) (not e!565194))))

(assert (=> b!858738 (= res!391881 (separableTokensPredicate!68 thiss!20117 (h!14657 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)) (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))) rules!2621))))

(declare-fun lt!324861 () Unit!13773)

(declare-fun Unit!13793 () Unit!13773)

(assert (=> b!858738 (= lt!324861 Unit!13793)))

(assert (=> b!858738 (> (size!7732 (charsOf!1003 (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))) 0)))

(declare-fun lt!324862 () Unit!13773)

(declare-fun Unit!13794 () Unit!13773)

(assert (=> b!858738 (= lt!324862 Unit!13794)))

(assert (=> b!858738 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(declare-fun lt!324857 () Unit!13773)

(declare-fun Unit!13795 () Unit!13773)

(assert (=> b!858738 (= lt!324857 Unit!13795)))

(assert (=> b!858738 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)))))

(declare-fun lt!324863 () Unit!13773)

(declare-fun lt!324858 () Unit!13773)

(assert (=> b!858738 (= lt!324863 lt!324858)))

(assert (=> b!858738 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(assert (=> b!858738 (= lt!324858 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)))))))

(declare-fun lt!324860 () Unit!13773)

(declare-fun lt!324859 () Unit!13773)

(assert (=> b!858738 (= lt!324860 lt!324859)))

(assert (=> b!858738 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)))))

(assert (=> b!858738 (= lt!324859 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) (h!14657 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))))

(declare-fun b!858739 () Bool)

(assert (=> b!858739 (= e!565194 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))) (t!97050 (t!97050 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297)))) rules!2621))))

(assert (= (and d!269114 (not res!391882)) b!858738))

(assert (= (and b!858738 res!391881) b!858739))

(declare-fun m!1102341 () Bool)

(assert (=> b!858738 m!1102341))

(assert (=> b!858738 m!1102331))

(declare-fun m!1102343 () Bool)

(assert (=> b!858738 m!1102343))

(assert (=> b!858738 m!1102341))

(declare-fun m!1102345 () Bool)

(assert (=> b!858738 m!1102345))

(assert (=> b!858738 m!1100585))

(declare-fun m!1102347 () Bool)

(assert (=> b!858738 m!1102347))

(declare-fun m!1102349 () Bool)

(assert (=> b!858738 m!1102349))

(assert (=> b!858738 m!1100585))

(declare-fun m!1102351 () Bool)

(assert (=> b!858738 m!1102351))

(declare-fun m!1102353 () Bool)

(assert (=> b!858739 m!1102353))

(assert (=> b!858262 d!269114))

(assert (=> b!858262 d!268744))

(assert (=> b!858262 d!269108))

(assert (=> b!858262 d!268754))

(declare-fun bs!232228 () Bool)

(declare-fun d!269116 () Bool)

(assert (= bs!232228 (and d!269116 d!269096)))

(declare-fun lambda!25796 () Int)

(assert (=> bs!232228 (= (= (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (= lambda!25796 lambda!25794))))

(assert (=> d!269116 true))

(assert (=> d!269116 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (dynLambda!4369 order!6015 lambda!25796))))

(assert (=> d!269116 (= (equivClasses!649 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (Forall2!333 lambda!25796))))

(declare-fun bs!232229 () Bool)

(assert (= bs!232229 d!269116))

(declare-fun m!1102355 () Bool)

(assert (=> bs!232229 m!1102355))

(assert (=> b!858304 d!269116))

(declare-fun d!269118 () Bool)

(assert (=> d!269118 (= (inv!11773 (tag!1998 (rule!3159 (h!14657 (t!97050 l!5107))))) (= (mod (str.len (value!56174 (tag!1998 (rule!3159 (h!14657 (t!97050 l!5107)))))) 2) 0))))

(assert (=> b!858337 d!269118))

(declare-fun d!269120 () Bool)

(declare-fun res!391883 () Bool)

(declare-fun e!565196 () Bool)

(assert (=> d!269120 (=> (not res!391883) (not e!565196))))

(assert (=> d!269120 (= res!391883 (semiInverseModEq!682 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))))))

(assert (=> d!269120 (= (inv!11777 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) e!565196)))

(declare-fun b!858740 () Bool)

(assert (=> b!858740 (= e!565196 (equivClasses!649 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))))))

(assert (= (and d!269120 res!391883) b!858740))

(declare-fun m!1102357 () Bool)

(assert (=> d!269120 m!1102357))

(declare-fun m!1102359 () Bool)

(assert (=> b!858740 m!1102359))

(assert (=> b!858337 d!269120))

(declare-fun d!269122 () Bool)

(declare-fun charsToBigInt!0 (List!9270 Int) Int)

(assert (=> d!269122 (= (inv!15 (value!56175 (h!14657 l!5107))) (= (charsToBigInt!0 (text!13063 (value!56175 (h!14657 l!5107))) 0) (value!56170 (value!56175 (h!14657 l!5107)))))))

(declare-fun bs!232230 () Bool)

(assert (= bs!232230 d!269122))

(declare-fun m!1102361 () Bool)

(assert (=> bs!232230 m!1102361))

(assert (=> b!858140 d!269122))

(assert (=> d!268750 d!268752))

(declare-fun d!269124 () Bool)

(assert (=> d!269124 (separableTokensPredicate!68 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621)))

(assert (=> d!269124 true))

(declare-fun _$37!236 () Unit!13773)

(assert (=> d!269124 (= (choose!5061 thiss!20117 (h!14657 lt!324436) (h!14657 (t!97050 lt!324436)) rules!2621) _$37!236)))

(declare-fun bs!232235 () Bool)

(assert (= bs!232235 d!269124))

(assert (=> bs!232235 m!1100593))

(assert (=> d!268750 d!269124))

(assert (=> d!268750 d!268792))

(assert (=> b!858264 d!268784))

(declare-fun d!269140 () Bool)

(declare-fun res!391897 () Bool)

(declare-fun e!565211 () Bool)

(assert (=> d!269140 (=> res!391897 e!565211)))

(assert (=> d!269140 (= res!391897 ((_ is Nil!9256) lt!324436))))

(assert (=> d!269140 (= (forall!2197 lt!324436 lambda!25757) e!565211)))

(declare-fun b!858761 () Bool)

(declare-fun e!565212 () Bool)

(assert (=> b!858761 (= e!565211 e!565212)))

(declare-fun res!391898 () Bool)

(assert (=> b!858761 (=> (not res!391898) (not e!565212))))

(assert (=> b!858761 (= res!391898 (dynLambda!4365 lambda!25757 (h!14657 lt!324436)))))

(declare-fun b!858762 () Bool)

(assert (=> b!858762 (= e!565212 (forall!2197 (t!97050 lt!324436) lambda!25757))))

(assert (= (and d!269140 (not res!391897)) b!858761))

(assert (= (and b!858761 res!391898) b!858762))

(declare-fun b_lambda!28997 () Bool)

(assert (=> (not b_lambda!28997) (not b!858761)))

(declare-fun m!1102433 () Bool)

(assert (=> b!858761 m!1102433))

(declare-fun m!1102435 () Bool)

(assert (=> b!858762 m!1102435))

(assert (=> d!268698 d!269140))

(assert (=> d!268698 d!268792))

(declare-fun d!269144 () Bool)

(assert (=> d!269144 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436))))

(declare-fun lt!324886 () Unit!13773)

(assert (=> d!269144 (= lt!324886 (choose!5065 thiss!20117 rules!2621 lt!324436 (h!14657 lt!324436)))))

(assert (=> d!269144 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269144 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324436 (h!14657 lt!324436)) lt!324886)))

(declare-fun bs!232236 () Bool)

(assert (= bs!232236 d!269144))

(assert (=> bs!232236 m!1100843))

(declare-fun m!1102443 () Bool)

(assert (=> bs!232236 m!1102443))

(assert (=> bs!232236 m!1100609))

(assert (=> b!858144 d!269144))

(declare-fun d!269148 () Bool)

(declare-fun lt!324888 () Bool)

(declare-fun e!565215 () Bool)

(assert (=> d!269148 (= lt!324888 e!565215)))

(declare-fun res!391905 () Bool)

(assert (=> d!269148 (=> (not res!391905) (not e!565215))))

(assert (=> d!269148 (= res!391905 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324436))))))) (list!3654 (singletonSeq!557 (h!14657 (t!97050 lt!324436))))))))

(declare-fun e!565216 () Bool)

(assert (=> d!269148 (= lt!324888 e!565216)))

(declare-fun res!391906 () Bool)

(assert (=> d!269148 (=> (not res!391906) (not e!565216))))

(declare-fun lt!324889 () tuple2!10428)

(assert (=> d!269148 (= res!391906 (= (size!7735 (_1!6040 lt!324889)) 1))))

(assert (=> d!269148 (= lt!324889 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324436))))))))

(assert (=> d!269148 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269148 (= (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324436))) lt!324888)))

(declare-fun b!858768 () Bool)

(declare-fun res!391904 () Bool)

(assert (=> b!858768 (=> (not res!391904) (not e!565216))))

(assert (=> b!858768 (= res!391904 (= (apply!1935 (_1!6040 lt!324889) 0) (h!14657 (t!97050 lt!324436))))))

(declare-fun b!858769 () Bool)

(assert (=> b!858769 (= e!565216 (isEmpty!5497 (_2!6040 lt!324889)))))

(declare-fun b!858770 () Bool)

(assert (=> b!858770 (= e!565215 (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 (h!14657 (t!97050 lt!324436))))))))))

(assert (= (and d!269148 res!391906) b!858768))

(assert (= (and b!858768 res!391904) b!858769))

(assert (= (and d!269148 res!391905) b!858770))

(declare-fun m!1102445 () Bool)

(assert (=> d!269148 m!1102445))

(declare-fun m!1102447 () Bool)

(assert (=> d!269148 m!1102447))

(assert (=> d!269148 m!1100609))

(assert (=> d!269148 m!1102445))

(declare-fun m!1102451 () Bool)

(assert (=> d!269148 m!1102451))

(assert (=> d!269148 m!1102445))

(declare-fun m!1102453 () Bool)

(assert (=> d!269148 m!1102453))

(assert (=> d!269148 m!1102453))

(declare-fun m!1102457 () Bool)

(assert (=> d!269148 m!1102457))

(declare-fun m!1102461 () Bool)

(assert (=> d!269148 m!1102461))

(declare-fun m!1102463 () Bool)

(assert (=> b!858768 m!1102463))

(declare-fun m!1102467 () Bool)

(assert (=> b!858769 m!1102467))

(assert (=> b!858770 m!1102445))

(assert (=> b!858770 m!1102445))

(assert (=> b!858770 m!1102453))

(assert (=> b!858770 m!1102453))

(assert (=> b!858770 m!1102457))

(declare-fun m!1102475 () Bool)

(assert (=> b!858770 m!1102475))

(assert (=> b!858144 d!269148))

(declare-fun d!269150 () Bool)

(assert (=> d!269150 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324436)))))

(declare-fun lt!324890 () Unit!13773)

(assert (=> d!269150 (= lt!324890 (choose!5065 thiss!20117 rules!2621 lt!324436 (h!14657 (t!97050 lt!324436))))))

(assert (=> d!269150 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269150 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 lt!324436 (h!14657 (t!97050 lt!324436))) lt!324890)))

(declare-fun bs!232237 () Bool)

(assert (= bs!232237 d!269150))

(assert (=> bs!232237 m!1100927))

(declare-fun m!1102481 () Bool)

(assert (=> bs!232237 m!1102481))

(assert (=> bs!232237 m!1100609))

(assert (=> b!858144 d!269150))

(declare-fun d!269152 () Bool)

(declare-fun lt!324891 () Int)

(assert (=> d!269152 (= lt!324891 (size!7733 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324436))))))))

(assert (=> d!269152 (= lt!324891 (size!7736 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436))))))))

(assert (=> d!269152 (= (size!7732 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) lt!324891)))

(declare-fun bs!232238 () Bool)

(assert (= bs!232238 d!269152))

(assert (=> bs!232238 m!1100921))

(assert (=> bs!232238 m!1102017))

(assert (=> bs!232238 m!1102017))

(declare-fun m!1102485 () Bool)

(assert (=> bs!232238 m!1102485))

(declare-fun m!1102487 () Bool)

(assert (=> bs!232238 m!1102487))

(assert (=> b!858144 d!269152))

(assert (=> b!858144 d!268752))

(assert (=> b!858144 d!268938))

(assert (=> b!858144 d!269014))

(declare-fun d!269156 () Bool)

(declare-fun e!565217 () Bool)

(assert (=> d!269156 e!565217))

(declare-fun res!391908 () Bool)

(assert (=> d!269156 (=> (not res!391908) (not e!565217))))

(declare-fun lt!324892 () List!9271)

(assert (=> d!269156 (= res!391908 (= (content!1355 lt!324892) ((_ map or) (content!1355 lt!324588) (content!1355 lt!324589))))))

(declare-fun e!565218 () List!9271)

(assert (=> d!269156 (= lt!324892 e!565218)))

(declare-fun c!139145 () Bool)

(assert (=> d!269156 (= c!139145 ((_ is Nil!9255) lt!324588))))

(assert (=> d!269156 (= (++!2399 lt!324588 lt!324589) lt!324892)))

(declare-fun b!858771 () Bool)

(assert (=> b!858771 (= e!565218 lt!324589)))

(declare-fun b!858773 () Bool)

(declare-fun res!391907 () Bool)

(assert (=> b!858773 (=> (not res!391907) (not e!565217))))

(assert (=> b!858773 (= res!391907 (= (size!7733 lt!324892) (+ (size!7733 lt!324588) (size!7733 lt!324589))))))

(declare-fun b!858772 () Bool)

(assert (=> b!858772 (= e!565218 (Cons!9255 (h!14656 lt!324588) (++!2399 (t!97049 lt!324588) lt!324589)))))

(declare-fun b!858774 () Bool)

(assert (=> b!858774 (= e!565217 (or (not (= lt!324589 Nil!9255)) (= lt!324892 lt!324588)))))

(assert (= (and d!269156 c!139145) b!858771))

(assert (= (and d!269156 (not c!139145)) b!858772))

(assert (= (and d!269156 res!391908) b!858773))

(assert (= (and b!858773 res!391907) b!858774))

(declare-fun m!1102489 () Bool)

(assert (=> d!269156 m!1102489))

(declare-fun m!1102491 () Bool)

(assert (=> d!269156 m!1102491))

(declare-fun m!1102493 () Bool)

(assert (=> d!269156 m!1102493))

(declare-fun m!1102495 () Bool)

(assert (=> b!858773 m!1102495))

(declare-fun m!1102497 () Bool)

(assert (=> b!858773 m!1102497))

(declare-fun m!1102499 () Bool)

(assert (=> b!858773 m!1102499))

(declare-fun m!1102501 () Bool)

(assert (=> b!858772 m!1102501))

(assert (=> b!858183 d!269156))

(declare-fun d!269160 () Bool)

(declare-fun c!139146 () Bool)

(assert (=> d!269160 (= c!139146 ((_ is Cons!9256) (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)))))

(declare-fun e!565219 () List!9271)

(assert (=> d!269160 (= (printList!486 thiss!20117 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)) e!565219)))

(declare-fun b!858775 () Bool)

(assert (=> b!858775 (= e!565219 (++!2399 (list!3652 (charsOf!1003 (h!14657 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)))) (printList!486 thiss!20117 (t!97050 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297)))))))

(declare-fun b!858776 () Bool)

(assert (=> b!858776 (= e!565219 Nil!9255)))

(assert (= (and d!269160 c!139146) b!858775))

(assert (= (and d!269160 (not c!139146)) b!858776))

(declare-fun m!1102503 () Bool)

(assert (=> b!858775 m!1102503))

(assert (=> b!858775 m!1102503))

(declare-fun m!1102505 () Bool)

(assert (=> b!858775 m!1102505))

(declare-fun m!1102507 () Bool)

(assert (=> b!858775 m!1102507))

(assert (=> b!858775 m!1102505))

(assert (=> b!858775 m!1102507))

(declare-fun m!1102509 () Bool)

(assert (=> b!858775 m!1102509))

(assert (=> b!858183 d!269160))

(assert (=> b!858183 d!268904))

(declare-fun d!269162 () Bool)

(assert (=> d!269162 (= (++!2399 (++!2399 lt!324588 lt!324589) lt!324590) (++!2399 lt!324588 (++!2399 lt!324589 lt!324590)))))

(declare-fun lt!324893 () Unit!13773)

(assert (=> d!269162 (= lt!324893 (choose!5063 lt!324588 lt!324589 lt!324590))))

(assert (=> d!269162 (= (lemmaConcatAssociativity!761 lt!324588 lt!324589 lt!324590) lt!324893)))

(declare-fun bs!232240 () Bool)

(assert (= bs!232240 d!269162))

(assert (=> bs!232240 m!1101019))

(assert (=> bs!232240 m!1101021))

(assert (=> bs!232240 m!1101019))

(assert (=> bs!232240 m!1101011))

(assert (=> bs!232240 m!1101013))

(declare-fun m!1102511 () Bool)

(assert (=> bs!232240 m!1102511))

(assert (=> bs!232240 m!1101011))

(assert (=> b!858183 d!269162))

(assert (=> b!858183 d!268906))

(declare-fun d!269164 () Bool)

(assert (=> d!269164 (= (list!3652 (charsOf!1003 (h!14657 lt!324443))) (list!3655 (c!139018 (charsOf!1003 (h!14657 lt!324443)))))))

(declare-fun bs!232241 () Bool)

(assert (= bs!232241 d!269164))

(declare-fun m!1102513 () Bool)

(assert (=> bs!232241 m!1102513))

(assert (=> b!858183 d!269164))

(declare-fun d!269166 () Bool)

(declare-fun lt!324894 () BalanceConc!6148)

(assert (=> d!269166 (= (list!3652 lt!324894) (originalCharacters!2292 (h!14657 lt!324443)))))

(assert (=> d!269166 (= lt!324894 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443)))) (value!56175 (h!14657 lt!324443))))))

(assert (=> d!269166 (= (charsOf!1003 (h!14657 lt!324443)) lt!324894)))

(declare-fun b_lambda!28999 () Bool)

(assert (=> (not b_lambda!28999) (not d!269166)))

(declare-fun t!97247 () Bool)

(declare-fun tb!61245 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97247) tb!61245))

(declare-fun b!858777 () Bool)

(declare-fun e!565220 () Bool)

(declare-fun tp!270797 () Bool)

(assert (=> b!858777 (= e!565220 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443)))) (value!56175 (h!14657 lt!324443))))) tp!270797))))

(declare-fun result!70870 () Bool)

(assert (=> tb!61245 (= result!70870 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443)))) (value!56175 (h!14657 lt!324443)))) e!565220))))

(assert (= tb!61245 b!858777))

(declare-fun m!1102515 () Bool)

(assert (=> b!858777 m!1102515))

(declare-fun m!1102517 () Bool)

(assert (=> tb!61245 m!1102517))

(assert (=> d!269166 t!97247))

(declare-fun b_and!76317 () Bool)

(assert (= b_and!76289 (and (=> t!97247 result!70870) b_and!76317)))

(declare-fun tb!61247 () Bool)

(declare-fun t!97249 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97249) tb!61247))

(declare-fun result!70872 () Bool)

(assert (= result!70872 result!70870))

(assert (=> d!269166 t!97249))

(declare-fun b_and!76319 () Bool)

(assert (= b_and!76287 (and (=> t!97249 result!70872) b_and!76319)))

(declare-fun tb!61249 () Bool)

(declare-fun t!97251 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97251) tb!61249))

(declare-fun result!70874 () Bool)

(assert (= result!70874 result!70870))

(assert (=> d!269166 t!97251))

(declare-fun b_and!76321 () Bool)

(assert (= b_and!76295 (and (=> t!97251 result!70874) b_and!76321)))

(declare-fun tb!61251 () Bool)

(declare-fun t!97253 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97253) tb!61251))

(declare-fun result!70876 () Bool)

(assert (= result!70876 result!70870))

(assert (=> d!269166 t!97253))

(declare-fun b_and!76323 () Bool)

(assert (= b_and!76291 (and (=> t!97253 result!70876) b_and!76323)))

(declare-fun tb!61253 () Bool)

(declare-fun t!97255 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97255) tb!61253))

(declare-fun result!70878 () Bool)

(assert (= result!70878 result!70870))

(assert (=> d!269166 t!97255))

(declare-fun b_and!76325 () Bool)

(assert (= b_and!76293 (and (=> t!97255 result!70878) b_and!76325)))

(declare-fun m!1102519 () Bool)

(assert (=> d!269166 m!1102519))

(declare-fun m!1102521 () Bool)

(assert (=> d!269166 m!1102521))

(assert (=> b!858183 d!269166))

(declare-fun d!269168 () Bool)

(declare-fun e!565221 () Bool)

(assert (=> d!269168 e!565221))

(declare-fun res!391910 () Bool)

(assert (=> d!269168 (=> (not res!391910) (not e!565221))))

(declare-fun lt!324895 () List!9271)

(assert (=> d!269168 (= res!391910 (= (content!1355 lt!324895) ((_ map or) (content!1355 (++!2399 lt!324588 lt!324589)) (content!1355 lt!324590))))))

(declare-fun e!565222 () List!9271)

(assert (=> d!269168 (= lt!324895 e!565222)))

(declare-fun c!139147 () Bool)

(assert (=> d!269168 (= c!139147 ((_ is Nil!9255) (++!2399 lt!324588 lt!324589)))))

(assert (=> d!269168 (= (++!2399 (++!2399 lt!324588 lt!324589) lt!324590) lt!324895)))

(declare-fun b!858778 () Bool)

(assert (=> b!858778 (= e!565222 lt!324590)))

(declare-fun b!858780 () Bool)

(declare-fun res!391909 () Bool)

(assert (=> b!858780 (=> (not res!391909) (not e!565221))))

(assert (=> b!858780 (= res!391909 (= (size!7733 lt!324895) (+ (size!7733 (++!2399 lt!324588 lt!324589)) (size!7733 lt!324590))))))

(declare-fun b!858779 () Bool)

(assert (=> b!858779 (= e!565222 (Cons!9255 (h!14656 (++!2399 lt!324588 lt!324589)) (++!2399 (t!97049 (++!2399 lt!324588 lt!324589)) lt!324590)))))

(declare-fun b!858781 () Bool)

(assert (=> b!858781 (= e!565221 (or (not (= lt!324590 Nil!9255)) (= lt!324895 (++!2399 lt!324588 lt!324589))))))

(assert (= (and d!269168 c!139147) b!858778))

(assert (= (and d!269168 (not c!139147)) b!858779))

(assert (= (and d!269168 res!391910) b!858780))

(assert (= (and b!858780 res!391909) b!858781))

(declare-fun m!1102523 () Bool)

(assert (=> d!269168 m!1102523))

(assert (=> d!269168 m!1101011))

(declare-fun m!1102525 () Bool)

(assert (=> d!269168 m!1102525))

(declare-fun m!1102527 () Bool)

(assert (=> d!269168 m!1102527))

(declare-fun m!1102529 () Bool)

(assert (=> b!858780 m!1102529))

(assert (=> b!858780 m!1101011))

(declare-fun m!1102531 () Bool)

(assert (=> b!858780 m!1102531))

(declare-fun m!1102533 () Bool)

(assert (=> b!858780 m!1102533))

(declare-fun m!1102535 () Bool)

(assert (=> b!858779 m!1102535))

(assert (=> b!858183 d!269168))

(declare-fun d!269170 () Bool)

(declare-fun e!565223 () Bool)

(assert (=> d!269170 e!565223))

(declare-fun res!391912 () Bool)

(assert (=> d!269170 (=> (not res!391912) (not e!565223))))

(declare-fun lt!324896 () List!9271)

(assert (=> d!269170 (= res!391912 (= (content!1355 lt!324896) ((_ map or) (content!1355 lt!324588) (content!1355 (++!2399 lt!324589 lt!324590)))))))

(declare-fun e!565224 () List!9271)

(assert (=> d!269170 (= lt!324896 e!565224)))

(declare-fun c!139148 () Bool)

(assert (=> d!269170 (= c!139148 ((_ is Nil!9255) lt!324588))))

(assert (=> d!269170 (= (++!2399 lt!324588 (++!2399 lt!324589 lt!324590)) lt!324896)))

(declare-fun b!858782 () Bool)

(assert (=> b!858782 (= e!565224 (++!2399 lt!324589 lt!324590))))

(declare-fun b!858784 () Bool)

(declare-fun res!391911 () Bool)

(assert (=> b!858784 (=> (not res!391911) (not e!565223))))

(assert (=> b!858784 (= res!391911 (= (size!7733 lt!324896) (+ (size!7733 lt!324588) (size!7733 (++!2399 lt!324589 lt!324590)))))))

(declare-fun b!858783 () Bool)

(assert (=> b!858783 (= e!565224 (Cons!9255 (h!14656 lt!324588) (++!2399 (t!97049 lt!324588) (++!2399 lt!324589 lt!324590))))))

(declare-fun b!858785 () Bool)

(assert (=> b!858785 (= e!565223 (or (not (= (++!2399 lt!324589 lt!324590) Nil!9255)) (= lt!324896 lt!324588)))))

(assert (= (and d!269170 c!139148) b!858782))

(assert (= (and d!269170 (not c!139148)) b!858783))

(assert (= (and d!269170 res!391912) b!858784))

(assert (= (and b!858784 res!391911) b!858785))

(declare-fun m!1102537 () Bool)

(assert (=> d!269170 m!1102537))

(assert (=> d!269170 m!1102491))

(assert (=> d!269170 m!1101019))

(declare-fun m!1102539 () Bool)

(assert (=> d!269170 m!1102539))

(declare-fun m!1102541 () Bool)

(assert (=> b!858784 m!1102541))

(assert (=> b!858784 m!1102497))

(assert (=> b!858784 m!1101019))

(declare-fun m!1102543 () Bool)

(assert (=> b!858784 m!1102543))

(assert (=> b!858783 m!1101019))

(declare-fun m!1102545 () Bool)

(assert (=> b!858783 m!1102545))

(assert (=> b!858183 d!269170))

(declare-fun d!269172 () Bool)

(declare-fun e!565225 () Bool)

(assert (=> d!269172 e!565225))

(declare-fun res!391914 () Bool)

(assert (=> d!269172 (=> (not res!391914) (not e!565225))))

(declare-fun lt!324897 () List!9271)

(assert (=> d!269172 (= res!391914 (= (content!1355 lt!324897) ((_ map or) (content!1355 lt!324589) (content!1355 lt!324590))))))

(declare-fun e!565226 () List!9271)

(assert (=> d!269172 (= lt!324897 e!565226)))

(declare-fun c!139149 () Bool)

(assert (=> d!269172 (= c!139149 ((_ is Nil!9255) lt!324589))))

(assert (=> d!269172 (= (++!2399 lt!324589 lt!324590) lt!324897)))

(declare-fun b!858786 () Bool)

(assert (=> b!858786 (= e!565226 lt!324590)))

(declare-fun b!858788 () Bool)

(declare-fun res!391913 () Bool)

(assert (=> b!858788 (=> (not res!391913) (not e!565225))))

(assert (=> b!858788 (= res!391913 (= (size!7733 lt!324897) (+ (size!7733 lt!324589) (size!7733 lt!324590))))))

(declare-fun b!858787 () Bool)

(assert (=> b!858787 (= e!565226 (Cons!9255 (h!14656 lt!324589) (++!2399 (t!97049 lt!324589) lt!324590)))))

(declare-fun b!858789 () Bool)

(assert (=> b!858789 (= e!565225 (or (not (= lt!324590 Nil!9255)) (= lt!324897 lt!324589)))))

(assert (= (and d!269172 c!139149) b!858786))

(assert (= (and d!269172 (not c!139149)) b!858787))

(assert (= (and d!269172 res!391914) b!858788))

(assert (= (and b!858788 res!391913) b!858789))

(declare-fun m!1102547 () Bool)

(assert (=> d!269172 m!1102547))

(assert (=> d!269172 m!1102493))

(assert (=> d!269172 m!1102527))

(declare-fun m!1102549 () Bool)

(assert (=> b!858788 m!1102549))

(assert (=> b!858788 m!1102499))

(assert (=> b!858788 m!1102533))

(declare-fun m!1102551 () Bool)

(assert (=> b!858787 m!1102551))

(assert (=> b!858183 d!269172))

(assert (=> b!858183 d!268866))

(assert (=> b!858183 d!268870))

(declare-fun d!269174 () Bool)

(assert (=> d!269174 (= ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443)) (Cons!9256 (h!14657 lt!324443) ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297)))))

(assert (=> b!858183 d!269174))

(declare-fun c!139150 () Bool)

(declare-fun d!269176 () Bool)

(assert (=> d!269176 (= c!139150 ((_ is Cons!9256) ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443))))))

(declare-fun e!565227 () List!9271)

(assert (=> d!269176 (= (printList!486 thiss!20117 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443))) e!565227)))

(declare-fun b!858790 () Bool)

(assert (=> b!858790 (= e!565227 (++!2399 (list!3652 (charsOf!1003 (h!14657 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443))))) (printList!486 thiss!20117 (t!97050 ($colon$colon!99 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 lt!324443) separatorToken!297) separatorToken!297) (h!14657 lt!324443))))))))

(declare-fun b!858791 () Bool)

(assert (=> b!858791 (= e!565227 Nil!9255)))

(assert (= (and d!269176 c!139150) b!858790))

(assert (= (and d!269176 (not c!139150)) b!858791))

(declare-fun m!1102553 () Bool)

(assert (=> b!858790 m!1102553))

(assert (=> b!858790 m!1102553))

(declare-fun m!1102555 () Bool)

(assert (=> b!858790 m!1102555))

(declare-fun m!1102557 () Bool)

(assert (=> b!858790 m!1102557))

(assert (=> b!858790 m!1102555))

(assert (=> b!858790 m!1102557))

(declare-fun m!1102559 () Bool)

(assert (=> b!858790 m!1102559))

(assert (=> b!858185 d!269176))

(assert (=> b!858185 d!269174))

(assert (=> b!858185 d!268904))

(assert (=> b!858185 d!268906))

(declare-fun d!269178 () Bool)

(declare-fun e!565228 () Bool)

(assert (=> d!269178 e!565228))

(declare-fun res!391916 () Bool)

(assert (=> d!269178 (=> (not res!391916) (not e!565228))))

(declare-fun lt!324898 () List!9271)

(assert (=> d!269178 (= res!391916 (= (content!1355 lt!324898) ((_ map or) (content!1355 (list!3652 (charsOf!1003 (h!14657 lt!324555)))) (content!1355 (printList!486 thiss!20117 (t!97050 lt!324555))))))))

(declare-fun e!565229 () List!9271)

(assert (=> d!269178 (= lt!324898 e!565229)))

(declare-fun c!139151 () Bool)

(assert (=> d!269178 (= c!139151 ((_ is Nil!9255) (list!3652 (charsOf!1003 (h!14657 lt!324555)))))))

(assert (=> d!269178 (= (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324555))) (printList!486 thiss!20117 (t!97050 lt!324555))) lt!324898)))

(declare-fun b!858792 () Bool)

(assert (=> b!858792 (= e!565229 (printList!486 thiss!20117 (t!97050 lt!324555)))))

(declare-fun b!858794 () Bool)

(declare-fun res!391915 () Bool)

(assert (=> b!858794 (=> (not res!391915) (not e!565228))))

(assert (=> b!858794 (= res!391915 (= (size!7733 lt!324898) (+ (size!7733 (list!3652 (charsOf!1003 (h!14657 lt!324555)))) (size!7733 (printList!486 thiss!20117 (t!97050 lt!324555))))))))

(declare-fun b!858793 () Bool)

(assert (=> b!858793 (= e!565229 (Cons!9255 (h!14656 (list!3652 (charsOf!1003 (h!14657 lt!324555)))) (++!2399 (t!97049 (list!3652 (charsOf!1003 (h!14657 lt!324555)))) (printList!486 thiss!20117 (t!97050 lt!324555)))))))

(declare-fun b!858795 () Bool)

(assert (=> b!858795 (= e!565228 (or (not (= (printList!486 thiss!20117 (t!97050 lt!324555)) Nil!9255)) (= lt!324898 (list!3652 (charsOf!1003 (h!14657 lt!324555))))))))

(assert (= (and d!269178 c!139151) b!858792))

(assert (= (and d!269178 (not c!139151)) b!858793))

(assert (= (and d!269178 res!391916) b!858794))

(assert (= (and b!858794 res!391915) b!858795))

(declare-fun m!1102561 () Bool)

(assert (=> d!269178 m!1102561))

(assert (=> d!269178 m!1100873))

(declare-fun m!1102563 () Bool)

(assert (=> d!269178 m!1102563))

(assert (=> d!269178 m!1100875))

(declare-fun m!1102565 () Bool)

(assert (=> d!269178 m!1102565))

(declare-fun m!1102567 () Bool)

(assert (=> b!858794 m!1102567))

(assert (=> b!858794 m!1100873))

(declare-fun m!1102569 () Bool)

(assert (=> b!858794 m!1102569))

(assert (=> b!858794 m!1100875))

(declare-fun m!1102571 () Bool)

(assert (=> b!858794 m!1102571))

(assert (=> b!858793 m!1100875))

(declare-fun m!1102573 () Bool)

(assert (=> b!858793 m!1102573))

(assert (=> b!858122 d!269178))

(declare-fun d!269180 () Bool)

(assert (=> d!269180 (= (list!3652 (charsOf!1003 (h!14657 lt!324555))) (list!3655 (c!139018 (charsOf!1003 (h!14657 lt!324555)))))))

(declare-fun bs!232242 () Bool)

(assert (= bs!232242 d!269180))

(declare-fun m!1102575 () Bool)

(assert (=> bs!232242 m!1102575))

(assert (=> b!858122 d!269180))

(declare-fun d!269182 () Bool)

(declare-fun lt!324899 () BalanceConc!6148)

(assert (=> d!269182 (= (list!3652 lt!324899) (originalCharacters!2292 (h!14657 lt!324555)))))

(assert (=> d!269182 (= lt!324899 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555)))) (value!56175 (h!14657 lt!324555))))))

(assert (=> d!269182 (= (charsOf!1003 (h!14657 lt!324555)) lt!324899)))

(declare-fun b_lambda!29001 () Bool)

(assert (=> (not b_lambda!29001) (not d!269182)))

(declare-fun t!97257 () Bool)

(declare-fun tb!61255 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97257) tb!61255))

(declare-fun b!858796 () Bool)

(declare-fun e!565230 () Bool)

(declare-fun tp!270798 () Bool)

(assert (=> b!858796 (= e!565230 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555)))) (value!56175 (h!14657 lt!324555))))) tp!270798))))

(declare-fun result!70880 () Bool)

(assert (=> tb!61255 (= result!70880 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555)))) (value!56175 (h!14657 lt!324555)))) e!565230))))

(assert (= tb!61255 b!858796))

(declare-fun m!1102577 () Bool)

(assert (=> b!858796 m!1102577))

(declare-fun m!1102579 () Bool)

(assert (=> tb!61255 m!1102579))

(assert (=> d!269182 t!97257))

(declare-fun b_and!76327 () Bool)

(assert (= b_and!76321 (and (=> t!97257 result!70880) b_and!76327)))

(declare-fun t!97259 () Bool)

(declare-fun tb!61257 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97259) tb!61257))

(declare-fun result!70882 () Bool)

(assert (= result!70882 result!70880))

(assert (=> d!269182 t!97259))

(declare-fun b_and!76329 () Bool)

(assert (= b_and!76323 (and (=> t!97259 result!70882) b_and!76329)))

(declare-fun t!97261 () Bool)

(declare-fun tb!61259 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97261) tb!61259))

(declare-fun result!70884 () Bool)

(assert (= result!70884 result!70880))

(assert (=> d!269182 t!97261))

(declare-fun b_and!76331 () Bool)

(assert (= b_and!76317 (and (=> t!97261 result!70884) b_and!76331)))

(declare-fun tb!61261 () Bool)

(declare-fun t!97263 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97263) tb!61261))

(declare-fun result!70886 () Bool)

(assert (= result!70886 result!70880))

(assert (=> d!269182 t!97263))

(declare-fun b_and!76333 () Bool)

(assert (= b_and!76319 (and (=> t!97263 result!70886) b_and!76333)))

(declare-fun t!97265 () Bool)

(declare-fun tb!61263 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97265) tb!61263))

(declare-fun result!70888 () Bool)

(assert (= result!70888 result!70880))

(assert (=> d!269182 t!97265))

(declare-fun b_and!76335 () Bool)

(assert (= b_and!76325 (and (=> t!97265 result!70888) b_and!76335)))

(declare-fun m!1102581 () Bool)

(assert (=> d!269182 m!1102581))

(declare-fun m!1102583 () Bool)

(assert (=> d!269182 m!1102583))

(assert (=> b!858122 d!269182))

(declare-fun d!269184 () Bool)

(declare-fun c!139152 () Bool)

(assert (=> d!269184 (= c!139152 ((_ is Cons!9256) (t!97050 lt!324555)))))

(declare-fun e!565231 () List!9271)

(assert (=> d!269184 (= (printList!486 thiss!20117 (t!97050 lt!324555)) e!565231)))

(declare-fun b!858797 () Bool)

(assert (=> b!858797 (= e!565231 (++!2399 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324555)))) (printList!486 thiss!20117 (t!97050 (t!97050 lt!324555)))))))

(declare-fun b!858798 () Bool)

(assert (=> b!858798 (= e!565231 Nil!9255)))

(assert (= (and d!269184 c!139152) b!858797))

(assert (= (and d!269184 (not c!139152)) b!858798))

(declare-fun m!1102585 () Bool)

(assert (=> b!858797 m!1102585))

(assert (=> b!858797 m!1102585))

(declare-fun m!1102587 () Bool)

(assert (=> b!858797 m!1102587))

(declare-fun m!1102589 () Bool)

(assert (=> b!858797 m!1102589))

(assert (=> b!858797 m!1102587))

(assert (=> b!858797 m!1102589))

(declare-fun m!1102591 () Bool)

(assert (=> b!858797 m!1102591))

(assert (=> b!858122 d!269184))

(declare-fun d!269186 () Bool)

(assert (=> d!269186 (= (inv!15 (value!56175 separatorToken!297)) (= (charsToBigInt!0 (text!13063 (value!56175 separatorToken!297)) 0) (value!56170 (value!56175 separatorToken!297))))))

(declare-fun bs!232243 () Bool)

(assert (= bs!232243 d!269186))

(declare-fun m!1102593 () Bool)

(assert (=> bs!232243 m!1102593))

(assert (=> b!858291 d!269186))

(declare-fun d!269188 () Bool)

(declare-fun c!139155 () Bool)

(assert (=> d!269188 (= c!139155 (and ((_ is Cons!9257) rules!2621) (not (= (isSeparator!1736 (h!14658 rules!2621)) (isSeparator!1736 (h!14658 rules!2621))))))))

(declare-fun e!565240 () Bool)

(assert (=> d!269188 (= (ruleDisjointCharsFromAllFromOtherType!249 (h!14658 rules!2621) rules!2621) e!565240)))

(declare-fun b!858807 () Bool)

(declare-fun e!565238 () Bool)

(assert (=> b!858807 (= e!565240 e!565238)))

(declare-fun res!391922 () Bool)

(assert (=> b!858807 (= res!391922 (not ((_ is Cons!9257) rules!2621)))))

(assert (=> b!858807 (=> res!391922 e!565238)))

(declare-fun b!858808 () Bool)

(declare-fun e!565239 () Bool)

(assert (=> b!858808 (= e!565240 e!565239)))

(declare-fun res!391921 () Bool)

(declare-fun rulesUseDisjointChars!130 (Rule!3272 Rule!3272) Bool)

(assert (=> b!858808 (= res!391921 (rulesUseDisjointChars!130 (h!14658 rules!2621) (h!14658 rules!2621)))))

(assert (=> b!858808 (=> (not res!391921) (not e!565239))))

(declare-fun b!858809 () Bool)

(declare-fun call!50543 () Bool)

(assert (=> b!858809 (= e!565239 call!50543)))

(declare-fun bm!50538 () Bool)

(assert (=> bm!50538 (= call!50543 (ruleDisjointCharsFromAllFromOtherType!249 (h!14658 rules!2621) (t!97051 rules!2621)))))

(declare-fun b!858810 () Bool)

(assert (=> b!858810 (= e!565238 call!50543)))

(assert (= (and d!269188 c!139155) b!858808))

(assert (= (and d!269188 (not c!139155)) b!858807))

(assert (= (and b!858808 res!391921) b!858809))

(assert (= (and b!858807 (not res!391922)) b!858810))

(assert (= (or b!858809 b!858810) bm!50538))

(declare-fun m!1102595 () Bool)

(assert (=> b!858808 m!1102595))

(declare-fun m!1102597 () Bool)

(assert (=> bm!50538 m!1102597))

(assert (=> b!858285 d!269188))

(declare-fun bs!232244 () Bool)

(declare-fun d!269190 () Bool)

(assert (= bs!232244 (and d!269190 d!268766)))

(declare-fun lambda!25797 () Int)

(assert (=> bs!232244 (= lambda!25797 lambda!25759)))

(declare-fun bs!232245 () Bool)

(assert (= bs!232245 (and d!269190 d!268698)))

(assert (=> bs!232245 (= lambda!25797 lambda!25757)))

(declare-fun bs!232246 () Bool)

(assert (= bs!232246 (and d!269190 b!857938)))

(assert (=> bs!232246 (not (= lambda!25797 lambda!25750))))

(declare-fun bs!232247 () Bool)

(assert (= bs!232247 (and d!269190 d!269108)))

(assert (=> bs!232247 (= lambda!25797 lambda!25795)))

(declare-fun bs!232248 () Bool)

(assert (= bs!232248 (and d!269190 d!269004)))

(assert (=> bs!232248 (= lambda!25797 lambda!25779)))

(declare-fun bs!232249 () Bool)

(assert (= bs!232249 (and d!269190 d!268774)))

(assert (=> bs!232249 (= lambda!25797 lambda!25760)))

(declare-fun b!858815 () Bool)

(declare-fun e!565245 () Bool)

(assert (=> b!858815 (= e!565245 true)))

(declare-fun b!858814 () Bool)

(declare-fun e!565244 () Bool)

(assert (=> b!858814 (= e!565244 e!565245)))

(declare-fun b!858813 () Bool)

(declare-fun e!565243 () Bool)

(assert (=> b!858813 (= e!565243 e!565244)))

(assert (=> d!269190 e!565243))

(assert (= b!858814 b!858815))

(assert (= b!858813 b!858814))

(assert (= (and d!269190 ((_ is Cons!9257) rules!2621)) b!858813))

(assert (=> b!858815 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25797))))

(assert (=> b!858815 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25797))))

(assert (=> d!269190 true))

(declare-fun lt!324900 () Bool)

(assert (=> d!269190 (= lt!324900 (forall!2197 (t!97050 l!5107) lambda!25797))))

(declare-fun e!565242 () Bool)

(assert (=> d!269190 (= lt!324900 e!565242)))

(declare-fun res!391923 () Bool)

(assert (=> d!269190 (=> res!391923 e!565242)))

(assert (=> d!269190 (= res!391923 (not ((_ is Cons!9256) (t!97050 l!5107))))))

(assert (=> d!269190 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269190 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 l!5107)) lt!324900)))

(declare-fun b!858811 () Bool)

(declare-fun e!565241 () Bool)

(assert (=> b!858811 (= e!565242 e!565241)))

(declare-fun res!391924 () Bool)

(assert (=> b!858811 (=> (not res!391924) (not e!565241))))

(assert (=> b!858811 (= res!391924 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 l!5107))))))

(declare-fun b!858812 () Bool)

(assert (=> b!858812 (= e!565241 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 (t!97050 l!5107))))))

(assert (= (and d!269190 (not res!391923)) b!858811))

(assert (= (and b!858811 res!391924) b!858812))

(declare-fun m!1102599 () Bool)

(assert (=> d!269190 m!1102599))

(assert (=> d!269190 m!1100609))

(declare-fun m!1102601 () Bool)

(assert (=> b!858811 m!1102601))

(declare-fun m!1102603 () Bool)

(assert (=> b!858812 m!1102603))

(assert (=> b!858277 d!269190))

(declare-fun d!269192 () Bool)

(declare-fun e!565246 () Bool)

(assert (=> d!269192 e!565246))

(declare-fun res!391926 () Bool)

(assert (=> d!269192 (=> (not res!391926) (not e!565246))))

(declare-fun lt!324901 () List!9271)

(assert (=> d!269192 (= res!391926 (= (content!1355 lt!324901) ((_ map or) (content!1355 (list!3652 (charsOf!1003 (h!14657 lt!324587)))) (content!1355 (printList!486 thiss!20117 (t!97050 lt!324587))))))))

(declare-fun e!565247 () List!9271)

(assert (=> d!269192 (= lt!324901 e!565247)))

(declare-fun c!139156 () Bool)

(assert (=> d!269192 (= c!139156 ((_ is Nil!9255) (list!3652 (charsOf!1003 (h!14657 lt!324587)))))))

(assert (=> d!269192 (= (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324587))) (printList!486 thiss!20117 (t!97050 lt!324587))) lt!324901)))

(declare-fun b!858816 () Bool)

(assert (=> b!858816 (= e!565247 (printList!486 thiss!20117 (t!97050 lt!324587)))))

(declare-fun b!858818 () Bool)

(declare-fun res!391925 () Bool)

(assert (=> b!858818 (=> (not res!391925) (not e!565246))))

(assert (=> b!858818 (= res!391925 (= (size!7733 lt!324901) (+ (size!7733 (list!3652 (charsOf!1003 (h!14657 lt!324587)))) (size!7733 (printList!486 thiss!20117 (t!97050 lt!324587))))))))

(declare-fun b!858817 () Bool)

(assert (=> b!858817 (= e!565247 (Cons!9255 (h!14656 (list!3652 (charsOf!1003 (h!14657 lt!324587)))) (++!2399 (t!97049 (list!3652 (charsOf!1003 (h!14657 lt!324587)))) (printList!486 thiss!20117 (t!97050 lt!324587)))))))

(declare-fun b!858819 () Bool)

(assert (=> b!858819 (= e!565246 (or (not (= (printList!486 thiss!20117 (t!97050 lt!324587)) Nil!9255)) (= lt!324901 (list!3652 (charsOf!1003 (h!14657 lt!324587))))))))

(assert (= (and d!269192 c!139156) b!858816))

(assert (= (and d!269192 (not c!139156)) b!858817))

(assert (= (and d!269192 res!391926) b!858818))

(assert (= (and b!858818 res!391925) b!858819))

(declare-fun m!1102605 () Bool)

(assert (=> d!269192 m!1102605))

(assert (=> d!269192 m!1101033))

(declare-fun m!1102607 () Bool)

(assert (=> d!269192 m!1102607))

(assert (=> d!269192 m!1101035))

(declare-fun m!1102609 () Bool)

(assert (=> d!269192 m!1102609))

(declare-fun m!1102611 () Bool)

(assert (=> b!858818 m!1102611))

(assert (=> b!858818 m!1101033))

(declare-fun m!1102613 () Bool)

(assert (=> b!858818 m!1102613))

(assert (=> b!858818 m!1101035))

(declare-fun m!1102615 () Bool)

(assert (=> b!858818 m!1102615))

(assert (=> b!858817 m!1101035))

(declare-fun m!1102617 () Bool)

(assert (=> b!858817 m!1102617))

(assert (=> b!858187 d!269192))

(declare-fun d!269194 () Bool)

(assert (=> d!269194 (= (list!3652 (charsOf!1003 (h!14657 lt!324587))) (list!3655 (c!139018 (charsOf!1003 (h!14657 lt!324587)))))))

(declare-fun bs!232250 () Bool)

(assert (= bs!232250 d!269194))

(declare-fun m!1102619 () Bool)

(assert (=> bs!232250 m!1102619))

(assert (=> b!858187 d!269194))

(declare-fun d!269196 () Bool)

(declare-fun lt!324902 () BalanceConc!6148)

(assert (=> d!269196 (= (list!3652 lt!324902) (originalCharacters!2292 (h!14657 lt!324587)))))

(assert (=> d!269196 (= lt!324902 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587)))) (value!56175 (h!14657 lt!324587))))))

(assert (=> d!269196 (= (charsOf!1003 (h!14657 lt!324587)) lt!324902)))

(declare-fun b_lambda!29003 () Bool)

(assert (=> (not b_lambda!29003) (not d!269196)))

(declare-fun tb!61265 () Bool)

(declare-fun t!97267 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97267) tb!61265))

(declare-fun b!858820 () Bool)

(declare-fun e!565248 () Bool)

(declare-fun tp!270799 () Bool)

(assert (=> b!858820 (= e!565248 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587)))) (value!56175 (h!14657 lt!324587))))) tp!270799))))

(declare-fun result!70890 () Bool)

(assert (=> tb!61265 (= result!70890 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587)))) (value!56175 (h!14657 lt!324587)))) e!565248))))

(assert (= tb!61265 b!858820))

(declare-fun m!1102621 () Bool)

(assert (=> b!858820 m!1102621))

(declare-fun m!1102623 () Bool)

(assert (=> tb!61265 m!1102623))

(assert (=> d!269196 t!97267))

(declare-fun b_and!76337 () Bool)

(assert (= b_and!76335 (and (=> t!97267 result!70890) b_and!76337)))

(declare-fun tb!61267 () Bool)

(declare-fun t!97269 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97269) tb!61267))

(declare-fun result!70892 () Bool)

(assert (= result!70892 result!70890))

(assert (=> d!269196 t!97269))

(declare-fun b_and!76339 () Bool)

(assert (= b_and!76327 (and (=> t!97269 result!70892) b_and!76339)))

(declare-fun tb!61269 () Bool)

(declare-fun t!97271 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97271) tb!61269))

(declare-fun result!70894 () Bool)

(assert (= result!70894 result!70890))

(assert (=> d!269196 t!97271))

(declare-fun b_and!76341 () Bool)

(assert (= b_and!76331 (and (=> t!97271 result!70894) b_and!76341)))

(declare-fun tb!61271 () Bool)

(declare-fun t!97273 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97273) tb!61271))

(declare-fun result!70896 () Bool)

(assert (= result!70896 result!70890))

(assert (=> d!269196 t!97273))

(declare-fun b_and!76343 () Bool)

(assert (= b_and!76333 (and (=> t!97273 result!70896) b_and!76343)))

(declare-fun t!97275 () Bool)

(declare-fun tb!61273 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97275) tb!61273))

(declare-fun result!70898 () Bool)

(assert (= result!70898 result!70890))

(assert (=> d!269196 t!97275))

(declare-fun b_and!76345 () Bool)

(assert (= b_and!76329 (and (=> t!97275 result!70898) b_and!76345)))

(declare-fun m!1102625 () Bool)

(assert (=> d!269196 m!1102625))

(declare-fun m!1102627 () Bool)

(assert (=> d!269196 m!1102627))

(assert (=> b!858187 d!269196))

(declare-fun d!269198 () Bool)

(declare-fun c!139157 () Bool)

(assert (=> d!269198 (= c!139157 ((_ is Cons!9256) (t!97050 lt!324587)))))

(declare-fun e!565249 () List!9271)

(assert (=> d!269198 (= (printList!486 thiss!20117 (t!97050 lt!324587)) e!565249)))

(declare-fun b!858821 () Bool)

(assert (=> b!858821 (= e!565249 (++!2399 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324587)))) (printList!486 thiss!20117 (t!97050 (t!97050 lt!324587)))))))

(declare-fun b!858822 () Bool)

(assert (=> b!858822 (= e!565249 Nil!9255)))

(assert (= (and d!269198 c!139157) b!858821))

(assert (= (and d!269198 (not c!139157)) b!858822))

(declare-fun m!1102629 () Bool)

(assert (=> b!858821 m!1102629))

(assert (=> b!858821 m!1102629))

(declare-fun m!1102631 () Bool)

(assert (=> b!858821 m!1102631))

(declare-fun m!1102633 () Bool)

(assert (=> b!858821 m!1102633))

(assert (=> b!858821 m!1102631))

(assert (=> b!858821 m!1102633))

(declare-fun m!1102635 () Bool)

(assert (=> b!858821 m!1102635))

(assert (=> b!858187 d!269198))

(declare-fun b!858826 () Bool)

(declare-fun e!565250 () Bool)

(declare-fun lt!324903 () BalanceConc!6148)

(assert (=> b!858826 (= e!565250 (= (list!3652 lt!324903) (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324436))) (list!3652 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))))))

(declare-fun b!858824 () Bool)

(declare-fun res!391930 () Bool)

(assert (=> b!858824 (=> (not res!391930) (not e!565250))))

(assert (=> b!858824 (= res!391930 (<= (height!404 (++!2402 (c!139018 (charsOf!1003 (h!14657 lt!324436))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))) (+ (max!0 (height!404 (c!139018 (charsOf!1003 (h!14657 lt!324436)))) (height!404 (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))) 1)))))

(declare-fun d!269200 () Bool)

(assert (=> d!269200 e!565250))

(declare-fun res!391927 () Bool)

(assert (=> d!269200 (=> (not res!391927) (not e!565250))))

(assert (=> d!269200 (= res!391927 (appendAssocInst!200 (c!139018 (charsOf!1003 (h!14657 lt!324436))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)))))))

(assert (=> d!269200 (= lt!324903 (BalanceConc!6149 (++!2402 (c!139018 (charsOf!1003 (h!14657 lt!324436))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))))))

(assert (=> d!269200 (= (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))) lt!324903)))

(declare-fun b!858823 () Bool)

(declare-fun res!391929 () Bool)

(assert (=> b!858823 (=> (not res!391929) (not e!565250))))

(assert (=> b!858823 (= res!391929 (isBalanced!855 (++!2402 (c!139018 (charsOf!1003 (h!14657 lt!324436))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))))))

(declare-fun b!858825 () Bool)

(declare-fun res!391928 () Bool)

(assert (=> b!858825 (=> (not res!391928) (not e!565250))))

(assert (=> b!858825 (= res!391928 (>= (height!404 (++!2402 (c!139018 (charsOf!1003 (h!14657 lt!324436))) (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))) (max!0 (height!404 (c!139018 (charsOf!1003 (h!14657 lt!324436)))) (height!404 (c!139018 (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)))))))))

(assert (= (and d!269200 res!391927) b!858823))

(assert (= (and b!858823 res!391929) b!858824))

(assert (= (and b!858824 res!391930) b!858825))

(assert (= (and b!858825 res!391928) b!858826))

(declare-fun m!1102637 () Bool)

(assert (=> b!858824 m!1102637))

(declare-fun m!1102639 () Bool)

(assert (=> b!858824 m!1102639))

(declare-fun m!1102641 () Bool)

(assert (=> b!858824 m!1102641))

(assert (=> b!858824 m!1102641))

(declare-fun m!1102643 () Bool)

(assert (=> b!858824 m!1102643))

(assert (=> b!858824 m!1102637))

(assert (=> b!858824 m!1102639))

(declare-fun m!1102645 () Bool)

(assert (=> b!858824 m!1102645))

(assert (=> b!858823 m!1102641))

(assert (=> b!858823 m!1102641))

(declare-fun m!1102647 () Bool)

(assert (=> b!858823 m!1102647))

(declare-fun m!1102649 () Bool)

(assert (=> b!858826 m!1102649))

(assert (=> b!858826 m!1101049))

(declare-fun m!1102651 () Bool)

(assert (=> b!858826 m!1102651))

(assert (=> b!858826 m!1101047))

(declare-fun m!1102653 () Bool)

(assert (=> b!858826 m!1102653))

(assert (=> b!858826 m!1102651))

(assert (=> b!858826 m!1102653))

(declare-fun m!1102655 () Bool)

(assert (=> b!858826 m!1102655))

(declare-fun m!1102657 () Bool)

(assert (=> d!269200 m!1102657))

(assert (=> d!269200 m!1102641))

(assert (=> b!858825 m!1102637))

(assert (=> b!858825 m!1102639))

(assert (=> b!858825 m!1102641))

(assert (=> b!858825 m!1102641))

(assert (=> b!858825 m!1102643))

(assert (=> b!858825 m!1102637))

(assert (=> b!858825 m!1102639))

(assert (=> b!858825 m!1102645))

(assert (=> d!268752 d!269200))

(assert (=> d!268752 d!269008))

(declare-fun d!269202 () Bool)

(declare-fun lt!324904 () BalanceConc!6148)

(assert (=> d!269202 (= (list!3652 lt!324904) (originalCharacters!2292 (h!14657 lt!324436)))))

(assert (=> d!269202 (= lt!324904 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436)))) (value!56175 (h!14657 lt!324436))))))

(assert (=> d!269202 (= (charsOf!1003 (h!14657 lt!324436)) lt!324904)))

(declare-fun b_lambda!29005 () Bool)

(assert (=> (not b_lambda!29005) (not d!269202)))

(declare-fun tb!61275 () Bool)

(declare-fun t!97277 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97277) tb!61275))

(declare-fun b!858827 () Bool)

(declare-fun e!565251 () Bool)

(declare-fun tp!270800 () Bool)

(assert (=> b!858827 (= e!565251 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436)))) (value!56175 (h!14657 lt!324436))))) tp!270800))))

(declare-fun result!70900 () Bool)

(assert (=> tb!61275 (= result!70900 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436)))) (value!56175 (h!14657 lt!324436)))) e!565251))))

(assert (= tb!61275 b!858827))

(declare-fun m!1102659 () Bool)

(assert (=> b!858827 m!1102659))

(declare-fun m!1102661 () Bool)

(assert (=> tb!61275 m!1102661))

(assert (=> d!269202 t!97277))

(declare-fun b_and!76347 () Bool)

(assert (= b_and!76343 (and (=> t!97277 result!70900) b_and!76347)))

(declare-fun tb!61277 () Bool)

(declare-fun t!97279 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97279) tb!61277))

(declare-fun result!70902 () Bool)

(assert (= result!70902 result!70900))

(assert (=> d!269202 t!97279))

(declare-fun b_and!76349 () Bool)

(assert (= b_and!76339 (and (=> t!97279 result!70902) b_and!76349)))

(declare-fun t!97281 () Bool)

(declare-fun tb!61279 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97281) tb!61279))

(declare-fun result!70904 () Bool)

(assert (= result!70904 result!70900))

(assert (=> d!269202 t!97281))

(declare-fun b_and!76351 () Bool)

(assert (= b_and!76341 (and (=> t!97281 result!70904) b_and!76351)))

(declare-fun tb!61281 () Bool)

(declare-fun t!97283 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97283) tb!61281))

(declare-fun result!70906 () Bool)

(assert (= result!70906 result!70900))

(assert (=> d!269202 t!97283))

(declare-fun b_and!76353 () Bool)

(assert (= b_and!76345 (and (=> t!97283 result!70906) b_and!76353)))

(declare-fun tb!61283 () Bool)

(declare-fun t!97285 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97285) tb!61283))

(declare-fun result!70908 () Bool)

(assert (= result!70908 result!70900))

(assert (=> d!269202 t!97285))

(declare-fun b_and!76355 () Bool)

(assert (= b_and!76337 (and (=> t!97285 result!70908) b_and!76355)))

(declare-fun m!1102663 () Bool)

(assert (=> d!269202 m!1102663))

(declare-fun m!1102665 () Bool)

(assert (=> d!269202 m!1102665))

(assert (=> d!268752 d!269202))

(declare-fun lt!324913 () Bool)

(declare-fun d!269204 () Bool)

(assert (=> d!269204 (= lt!324913 (prefixMatch!14 (rulesRegex!28 thiss!20117 rules!2621) (list!3652 (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))))))))

(assert (=> d!269204 (= lt!324913 (prefixMatchZipperSequence!43 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)) (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))) 0))))

(declare-fun lt!324914 () Unit!13773)

(declare-fun lt!324910 () Unit!13773)

(assert (=> d!269204 (= lt!324914 lt!324910)))

(declare-fun lt!324912 () (InoxSet Context!878))

(declare-fun lt!324908 () List!9271)

(assert (=> d!269204 (= (prefixMatch!14 (rulesRegex!28 thiss!20117 rules!2621) lt!324908) (prefixMatchZipper!14 lt!324912 lt!324908))))

(declare-fun lt!324911 () List!9279)

(assert (=> d!269204 (= lt!324910 (prefixMatchZipperRegexEquiv!14 lt!324912 lt!324911 (rulesRegex!28 thiss!20117 rules!2621) lt!324908))))

(assert (=> d!269204 (= lt!324908 (list!3652 (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)))))))

(assert (=> d!269204 (= lt!324911 (toList!580 (focus!34 (rulesRegex!28 thiss!20117 rules!2621))))))

(assert (=> d!269204 (= lt!324912 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)))))

(declare-fun lt!324909 () Unit!13773)

(declare-fun lt!324907 () Unit!13773)

(assert (=> d!269204 (= lt!324909 lt!324907)))

(declare-fun lt!324906 () (InoxSet Context!878))

(declare-fun lt!324905 () Int)

(assert (=> d!269204 (= (prefixMatchZipper!14 lt!324906 (dropList!276 (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))) lt!324905)) (prefixMatchZipperSequence!43 lt!324906 (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))) lt!324905))))

(assert (=> d!269204 (= lt!324907 (lemmaprefixMatchZipperSequenceEquivalent!14 lt!324906 (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0))) lt!324905))))

(assert (=> d!269204 (= lt!324905 0)))

(assert (=> d!269204 (= lt!324906 (focus!34 (rulesRegex!28 thiss!20117 rules!2621)))))

(assert (=> d!269204 (validRegex!664 (rulesRegex!28 thiss!20117 rules!2621))))

(assert (=> d!269204 (= (prefixMatchZipperSequence!41 (rulesRegex!28 thiss!20117 rules!2621) (++!2400 (charsOf!1003 (h!14657 lt!324436)) (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)))) lt!324913)))

(declare-fun bs!232251 () Bool)

(assert (= bs!232251 d!269204))

(assert (=> bs!232251 m!1100979))

(assert (=> bs!232251 m!1102233))

(assert (=> bs!232251 m!1102233))

(assert (=> bs!232251 m!1101041))

(declare-fun m!1102667 () Bool)

(assert (=> bs!232251 m!1102667))

(assert (=> bs!232251 m!1101041))

(declare-fun m!1102669 () Bool)

(assert (=> bs!232251 m!1102669))

(declare-fun m!1102671 () Bool)

(assert (=> bs!232251 m!1102671))

(declare-fun m!1102673 () Bool)

(assert (=> bs!232251 m!1102673))

(declare-fun m!1102675 () Bool)

(assert (=> bs!232251 m!1102675))

(assert (=> bs!232251 m!1100979))

(declare-fun m!1102677 () Bool)

(assert (=> bs!232251 m!1102677))

(assert (=> bs!232251 m!1101041))

(declare-fun m!1102679 () Bool)

(assert (=> bs!232251 m!1102679))

(assert (=> bs!232251 m!1101041))

(assert (=> bs!232251 m!1102673))

(assert (=> bs!232251 m!1102233))

(assert (=> bs!232251 m!1102249))

(assert (=> bs!232251 m!1100979))

(assert (=> bs!232251 m!1102253))

(assert (=> bs!232251 m!1101041))

(declare-fun m!1102681 () Bool)

(assert (=> bs!232251 m!1102681))

(assert (=> bs!232251 m!1100979))

(declare-fun m!1102683 () Bool)

(assert (=> bs!232251 m!1102683))

(assert (=> bs!232251 m!1100979))

(assert (=> bs!232251 m!1102679))

(declare-fun m!1102685 () Bool)

(assert (=> bs!232251 m!1102685))

(assert (=> d!268752 d!269204))

(assert (=> d!268752 d!269014))

(declare-fun d!269206 () Bool)

(declare-fun lt!324915 () C!4908)

(assert (=> d!269206 (= lt!324915 (apply!1938 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) 0))))

(assert (=> d!269206 (= lt!324915 (apply!1939 (c!139018 (charsOf!1003 (h!14657 (t!97050 lt!324436)))) 0))))

(declare-fun e!565252 () Bool)

(assert (=> d!269206 e!565252))

(declare-fun res!391931 () Bool)

(assert (=> d!269206 (=> (not res!391931) (not e!565252))))

(assert (=> d!269206 (= res!391931 (<= 0 0))))

(assert (=> d!269206 (= (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0) lt!324915)))

(declare-fun b!858828 () Bool)

(assert (=> b!858828 (= e!565252 (< 0 (size!7732 (charsOf!1003 (h!14657 (t!97050 lt!324436))))))))

(assert (= (and d!269206 res!391931) b!858828))

(assert (=> d!269206 m!1100921))

(assert (=> d!269206 m!1102017))

(assert (=> d!269206 m!1102017))

(declare-fun m!1102687 () Bool)

(assert (=> d!269206 m!1102687))

(declare-fun m!1102689 () Bool)

(assert (=> d!269206 m!1102689))

(assert (=> b!858828 m!1100921))

(assert (=> b!858828 m!1100923))

(assert (=> d!268752 d!269206))

(declare-fun d!269208 () Bool)

(declare-fun e!565253 () Bool)

(assert (=> d!269208 e!565253))

(declare-fun res!391932 () Bool)

(assert (=> d!269208 (=> (not res!391932) (not e!565253))))

(declare-fun lt!324916 () BalanceConc!6148)

(assert (=> d!269208 (= res!391932 (= (list!3652 lt!324916) (Cons!9255 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0) Nil!9255)))))

(assert (=> d!269208 (= lt!324916 (singleton!274 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)))))

(assert (=> d!269208 (= (singletonSeq!556 (apply!1934 (charsOf!1003 (h!14657 (t!97050 lt!324436))) 0)) lt!324916)))

(declare-fun b!858829 () Bool)

(assert (=> b!858829 (= e!565253 (isBalanced!855 (c!139018 lt!324916)))))

(assert (= (and d!269208 res!391932) b!858829))

(declare-fun m!1102691 () Bool)

(assert (=> d!269208 m!1102691))

(assert (=> d!269208 m!1101045))

(declare-fun m!1102693 () Bool)

(assert (=> d!269208 m!1102693))

(declare-fun m!1102695 () Bool)

(assert (=> b!858829 m!1102695))

(assert (=> d!268752 d!269208))

(declare-fun d!269210 () Bool)

(assert (=> d!269210 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297) rules!2621)))

(declare-fun lt!324928 () Unit!13773)

(declare-fun lt!324929 () Unit!13773)

(assert (=> d!269210 (= lt!324928 lt!324929)))

(assert (=> d!269210 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 lt!324443 separatorToken!297))))

(assert (=> d!269210 (= lt!324929 (withSeparatorTokenListPreservesRulesProduceTokens!68 thiss!20117 rules!2621 lt!324443 separatorToken!297))))

(assert (=> d!269210 true))

(declare-fun _$39!226 () Unit!13773)

(assert (=> d!269210 (= (choose!5062 thiss!20117 rules!2621 lt!324443 separatorToken!297) _$39!226)))

(declare-fun bs!232268 () Bool)

(assert (= bs!232268 d!269210))

(assert (=> bs!232268 m!1100585))

(assert (=> bs!232268 m!1100585))

(assert (=> bs!232268 m!1101089))

(assert (=> bs!232268 m!1100585))

(assert (=> bs!232268 m!1101051))

(assert (=> bs!232268 m!1100595))

(assert (=> d!268756 d!269210))

(assert (=> d!268756 d!268792))

(declare-fun d!269228 () Bool)

(declare-fun c!139160 () Bool)

(assert (=> d!269228 (= c!139160 ((_ is Node!3067) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(declare-fun e!565268 () Bool)

(assert (=> d!269228 (= (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))) e!565268)))

(declare-fun b!858847 () Bool)

(declare-fun inv!11784 (Conc!3067) Bool)

(assert (=> b!858847 (= e!565268 (inv!11784 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(declare-fun b!858848 () Bool)

(declare-fun e!565269 () Bool)

(assert (=> b!858848 (= e!565268 e!565269)))

(declare-fun res!391943 () Bool)

(assert (=> b!858848 (= res!391943 (not ((_ is Leaf!4523) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))))))

(assert (=> b!858848 (=> res!391943 e!565269)))

(declare-fun b!858849 () Bool)

(declare-fun inv!11785 (Conc!3067) Bool)

(assert (=> b!858849 (= e!565269 (inv!11785 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(assert (= (and d!269228 c!139160) b!858847))

(assert (= (and d!269228 (not c!139160)) b!858848))

(assert (= (and b!858848 (not res!391943)) b!858849))

(declare-fun m!1102735 () Bool)

(assert (=> b!858847 m!1102735))

(declare-fun m!1102737 () Bool)

(assert (=> b!858849 m!1102737))

(assert (=> b!858289 d!269228))

(declare-fun d!269230 () Bool)

(declare-fun charsToInt!0 (List!9270) (_ BitVec 32))

(assert (=> d!269230 (= (inv!16 (value!56175 separatorToken!297)) (= (charsToInt!0 (text!13061 (value!56175 separatorToken!297))) (value!56166 (value!56175 separatorToken!297))))))

(declare-fun bs!232269 () Bool)

(assert (= bs!232269 d!269230))

(declare-fun m!1102739 () Bool)

(assert (=> bs!232269 m!1102739))

(assert (=> b!858294 d!269230))

(declare-fun d!269232 () Bool)

(assert (=> d!269232 (= (inv!11773 (tag!1998 (h!14658 (t!97051 rules!2621)))) (= (mod (str.len (value!56174 (tag!1998 (h!14658 (t!97051 rules!2621))))) 2) 0))))

(assert (=> b!858357 d!269232))

(declare-fun d!269234 () Bool)

(declare-fun res!391944 () Bool)

(declare-fun e!565270 () Bool)

(assert (=> d!269234 (=> (not res!391944) (not e!565270))))

(assert (=> d!269234 (= res!391944 (semiInverseModEq!682 (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toValue!2797 (transformation!1736 (h!14658 (t!97051 rules!2621))))))))

(assert (=> d!269234 (= (inv!11777 (transformation!1736 (h!14658 (t!97051 rules!2621)))) e!565270)))

(declare-fun b!858850 () Bool)

(assert (=> b!858850 (= e!565270 (equivClasses!649 (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toValue!2797 (transformation!1736 (h!14658 (t!97051 rules!2621))))))))

(assert (= (and d!269234 res!391944) b!858850))

(declare-fun m!1102741 () Bool)

(assert (=> d!269234 m!1102741))

(declare-fun m!1102743 () Bool)

(assert (=> b!858850 m!1102743))

(assert (=> b!858357 d!269234))

(declare-fun d!269236 () Bool)

(declare-fun lt!324932 () Int)

(assert (=> d!269236 (>= lt!324932 0)))

(declare-fun e!565273 () Int)

(assert (=> d!269236 (= lt!324932 e!565273)))

(declare-fun c!139163 () Bool)

(assert (=> d!269236 (= c!139163 ((_ is Nil!9255) (originalCharacters!2292 (h!14657 l!5107))))))

(assert (=> d!269236 (= (size!7733 (originalCharacters!2292 (h!14657 l!5107))) lt!324932)))

(declare-fun b!858855 () Bool)

(assert (=> b!858855 (= e!565273 0)))

(declare-fun b!858856 () Bool)

(assert (=> b!858856 (= e!565273 (+ 1 (size!7733 (t!97049 (originalCharacters!2292 (h!14657 l!5107))))))))

(assert (= (and d!269236 c!139163) b!858855))

(assert (= (and d!269236 (not c!139163)) b!858856))

(declare-fun m!1102745 () Bool)

(assert (=> b!858856 m!1102745))

(assert (=> b!858034 d!269236))

(declare-fun d!269238 () Bool)

(declare-fun c!139164 () Bool)

(assert (=> d!269238 (= c!139164 ((_ is Cons!9256) ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!565274 () List!9271)

(assert (=> d!269238 (= (printList!486 thiss!20117 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)) e!565274)))

(declare-fun b!858857 () Bool)

(assert (=> b!858857 (= e!565274 (++!2399 (list!3652 (charsOf!1003 (h!14657 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)))) (printList!486 thiss!20117 (t!97050 ($colon$colon!99 (withSeparatorTokenList!68 thiss!20117 (t!97050 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!858858 () Bool)

(assert (=> b!858858 (= e!565274 Nil!9255)))

(assert (= (and d!269238 c!139164) b!858857))

(assert (= (and d!269238 (not c!139164)) b!858858))

(declare-fun m!1102747 () Bool)

(assert (=> b!858857 m!1102747))

(assert (=> b!858857 m!1102747))

(declare-fun m!1102749 () Bool)

(assert (=> b!858857 m!1102749))

(declare-fun m!1102751 () Bool)

(assert (=> b!858857 m!1102751))

(assert (=> b!858857 m!1102749))

(assert (=> b!858857 m!1102751))

(declare-fun m!1102753 () Bool)

(assert (=> b!858857 m!1102753))

(assert (=> b!858128 d!269238))

(assert (=> b!858128 d!268886))

(assert (=> b!858128 d!268888))

(declare-fun d!269240 () Bool)

(declare-fun res!391945 () Bool)

(declare-fun e!565275 () Bool)

(assert (=> d!269240 (=> res!391945 e!565275)))

(assert (=> d!269240 (= res!391945 ((_ is Nil!9256) lt!324435))))

(assert (=> d!269240 (= (forall!2197 lt!324435 lambda!25759) e!565275)))

(declare-fun b!858859 () Bool)

(declare-fun e!565276 () Bool)

(assert (=> b!858859 (= e!565275 e!565276)))

(declare-fun res!391946 () Bool)

(assert (=> b!858859 (=> (not res!391946) (not e!565276))))

(assert (=> b!858859 (= res!391946 (dynLambda!4365 lambda!25759 (h!14657 lt!324435)))))

(declare-fun b!858860 () Bool)

(assert (=> b!858860 (= e!565276 (forall!2197 (t!97050 lt!324435) lambda!25759))))

(assert (= (and d!269240 (not res!391945)) b!858859))

(assert (= (and b!858859 res!391946) b!858860))

(declare-fun b_lambda!29007 () Bool)

(assert (=> (not b_lambda!29007) (not b!858859)))

(declare-fun m!1102755 () Bool)

(assert (=> b!858859 m!1102755))

(declare-fun m!1102757 () Bool)

(assert (=> b!858860 m!1102757))

(assert (=> d!268766 d!269240))

(assert (=> d!268766 d!268792))

(declare-fun d!269242 () Bool)

(declare-fun c!139165 () Bool)

(assert (=> d!269242 (= c!139165 ((_ is Node!3067) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(declare-fun e!565277 () Bool)

(assert (=> d!269242 (= (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))) e!565277)))

(declare-fun b!858861 () Bool)

(assert (=> b!858861 (= e!565277 (inv!11784 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(declare-fun b!858862 () Bool)

(declare-fun e!565278 () Bool)

(assert (=> b!858862 (= e!565277 e!565278)))

(declare-fun res!391947 () Bool)

(assert (=> b!858862 (= res!391947 (not ((_ is Leaf!4523) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))))))

(assert (=> b!858862 (=> res!391947 e!565278)))

(declare-fun b!858863 () Bool)

(assert (=> b!858863 (= e!565278 (inv!11785 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(assert (= (and d!269242 c!139165) b!858861))

(assert (= (and d!269242 (not c!139165)) b!858862))

(assert (= (and b!858862 (not res!391947)) b!858863))

(declare-fun m!1102759 () Bool)

(assert (=> b!858861 m!1102759))

(declare-fun m!1102761 () Bool)

(assert (=> b!858863 m!1102761))

(assert (=> b!858039 d!269242))

(declare-fun bs!232270 () Bool)

(declare-fun d!269244 () Bool)

(assert (= bs!232270 (and d!269244 d!268766)))

(declare-fun lambda!25800 () Int)

(assert (=> bs!232270 (= lambda!25800 lambda!25759)))

(declare-fun bs!232271 () Bool)

(assert (= bs!232271 (and d!269244 d!268698)))

(assert (=> bs!232271 (= lambda!25800 lambda!25757)))

(declare-fun bs!232272 () Bool)

(assert (= bs!232272 (and d!269244 b!857938)))

(assert (=> bs!232272 (not (= lambda!25800 lambda!25750))))

(declare-fun bs!232273 () Bool)

(assert (= bs!232273 (and d!269244 d!269108)))

(assert (=> bs!232273 (= lambda!25800 lambda!25795)))

(declare-fun bs!232274 () Bool)

(assert (= bs!232274 (and d!269244 d!269190)))

(assert (=> bs!232274 (= lambda!25800 lambda!25797)))

(declare-fun bs!232275 () Bool)

(assert (= bs!232275 (and d!269244 d!269004)))

(assert (=> bs!232275 (= lambda!25800 lambda!25779)))

(declare-fun bs!232276 () Bool)

(assert (= bs!232276 (and d!269244 d!268774)))

(assert (=> bs!232276 (= lambda!25800 lambda!25760)))

(declare-fun b!858868 () Bool)

(declare-fun e!565283 () Bool)

(assert (=> b!858868 (= e!565283 true)))

(declare-fun b!858867 () Bool)

(declare-fun e!565282 () Bool)

(assert (=> b!858867 (= e!565282 e!565283)))

(declare-fun b!858866 () Bool)

(declare-fun e!565281 () Bool)

(assert (=> b!858866 (= e!565281 e!565282)))

(assert (=> d!269244 e!565281))

(assert (= b!858867 b!858868))

(assert (= b!858866 b!858867))

(assert (= (and d!269244 ((_ is Cons!9257) rules!2621)) b!858866))

(assert (=> b!858868 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25800))))

(assert (=> b!858868 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25800))))

(assert (=> d!269244 true))

(declare-fun lt!324933 () Bool)

(assert (=> d!269244 (= lt!324933 (forall!2197 (t!97050 lt!324436) lambda!25800))))

(declare-fun e!565280 () Bool)

(assert (=> d!269244 (= lt!324933 e!565280)))

(declare-fun res!391948 () Bool)

(assert (=> d!269244 (=> res!391948 e!565280)))

(assert (=> d!269244 (= res!391948 (not ((_ is Cons!9256) (t!97050 lt!324436))))))

(assert (=> d!269244 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269244 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 lt!324436)) lt!324933)))

(declare-fun b!858864 () Bool)

(declare-fun e!565279 () Bool)

(assert (=> b!858864 (= e!565280 e!565279)))

(declare-fun res!391949 () Bool)

(assert (=> b!858864 (=> (not res!391949) (not e!565279))))

(assert (=> b!858864 (= res!391949 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 lt!324436))))))

(declare-fun b!858865 () Bool)

(assert (=> b!858865 (= e!565279 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 (t!97050 lt!324436))))))

(assert (= (and d!269244 (not res!391948)) b!858864))

(assert (= (and b!858864 res!391949) b!858865))

(declare-fun m!1102763 () Bool)

(assert (=> d!269244 m!1102763))

(assert (=> d!269244 m!1100609))

(assert (=> b!858864 m!1100927))

(declare-fun m!1102765 () Bool)

(assert (=> b!858865 m!1102765))

(assert (=> b!858079 d!269244))

(declare-fun d!269246 () Bool)

(declare-fun lt!324936 () Token!3138)

(declare-fun apply!1942 (List!9272 Int) Token!3138)

(assert (=> d!269246 (= lt!324936 (apply!1942 (list!3654 (_1!6040 lt!324619)) 0))))

(declare-fun apply!1943 (Conc!3069 Int) Token!3138)

(assert (=> d!269246 (= lt!324936 (apply!1943 (c!139060 (_1!6040 lt!324619)) 0))))

(declare-fun e!565286 () Bool)

(assert (=> d!269246 e!565286))

(declare-fun res!391952 () Bool)

(assert (=> d!269246 (=> (not res!391952) (not e!565286))))

(assert (=> d!269246 (= res!391952 (<= 0 0))))

(assert (=> d!269246 (= (apply!1935 (_1!6040 lt!324619) 0) lt!324936)))

(declare-fun b!858871 () Bool)

(assert (=> b!858871 (= e!565286 (< 0 (size!7735 (_1!6040 lt!324619))))))

(assert (= (and d!269246 res!391952) b!858871))

(declare-fun m!1102767 () Bool)

(assert (=> d!269246 m!1102767))

(assert (=> d!269246 m!1102767))

(declare-fun m!1102769 () Bool)

(assert (=> d!269246 m!1102769))

(declare-fun m!1102771 () Bool)

(assert (=> d!269246 m!1102771))

(assert (=> b!858871 m!1101145))

(assert (=> b!858301 d!269246))

(declare-fun bs!232277 () Bool)

(declare-fun d!269248 () Bool)

(assert (= bs!232277 (and d!269248 d!269096)))

(declare-fun lambda!25801 () Int)

(assert (=> bs!232277 (= (= (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (= lambda!25801 lambda!25794))))

(declare-fun bs!232278 () Bool)

(assert (= bs!232278 (and d!269248 d!269116)))

(assert (=> bs!232278 (= (= (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (= lambda!25801 lambda!25796))))

(assert (=> d!269248 true))

(assert (=> d!269248 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))) (dynLambda!4369 order!6015 lambda!25801))))

(assert (=> d!269248 (= (equivClasses!649 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297)))) (Forall2!333 lambda!25801))))

(declare-fun bs!232279 () Bool)

(assert (= bs!232279 d!269248))

(declare-fun m!1102773 () Bool)

(assert (=> bs!232279 m!1102773))

(assert (=> b!858275 d!269248))

(declare-fun d!269250 () Bool)

(assert (=> d!269250 (= (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))) (isBalanced!855 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))))))

(declare-fun bs!232280 () Bool)

(assert (= bs!232280 d!269250))

(declare-fun m!1102775 () Bool)

(assert (=> bs!232280 m!1102775))

(assert (=> tb!61077 d!269250))

(declare-fun lt!324937 () Bool)

(declare-fun d!269252 () Bool)

(assert (=> d!269252 (= lt!324937 (isEmpty!5495 (list!3652 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))))

(assert (=> d!269252 (= lt!324937 (isEmpty!5498 (c!139018 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))))

(assert (=> d!269252 (= (isEmpty!5497 (_2!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))) lt!324937)))

(declare-fun bs!232281 () Bool)

(assert (= bs!232281 d!269252))

(declare-fun m!1102777 () Bool)

(assert (=> bs!232281 m!1102777))

(assert (=> bs!232281 m!1102777))

(declare-fun m!1102779 () Bool)

(assert (=> bs!232281 m!1102779))

(declare-fun m!1102781 () Bool)

(assert (=> bs!232281 m!1102781))

(assert (=> b!858303 d!269252))

(declare-fun b!858987 () Bool)

(declare-fun e!565343 () Bool)

(declare-fun e!565344 () Bool)

(assert (=> b!858987 (= e!565343 e!565344)))

(declare-fun res!391962 () Bool)

(declare-fun lt!324953 () tuple2!10428)

(assert (=> b!858987 (= res!391962 (< (size!7732 (_2!6040 lt!324953)) (size!7732 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))

(assert (=> b!858987 (=> (not res!391962) (not e!565344))))

(declare-fun b!858988 () Bool)

(assert (=> b!858988 (= e!565343 (= (_2!6040 lt!324953) (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))))

(declare-fun e!565345 () Bool)

(declare-fun b!858990 () Bool)

(declare-datatypes ((tuple2!10432 0))(
  ( (tuple2!10433 (_1!6042 List!9272) (_2!6042 List!9271)) )
))
(declare-fun lexList!400 (LexerInterface!1538 List!9273 List!9271) tuple2!10432)

(assert (=> b!858990 (= e!565345 (= (list!3652 (_2!6040 lt!324953)) (_2!6042 (lexList!400 thiss!20117 rules!2621 (list!3652 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))))

(declare-fun b!858991 () Bool)

(declare-fun isEmpty!5501 (BalanceConc!6152) Bool)

(assert (=> b!858991 (= e!565344 (not (isEmpty!5501 (_1!6040 lt!324953))))))

(declare-fun b!858989 () Bool)

(declare-fun res!391964 () Bool)

(assert (=> b!858989 (=> (not res!391964) (not e!565345))))

(assert (=> b!858989 (= res!391964 (= (list!3654 (_1!6040 lt!324953)) (_1!6042 (lexList!400 thiss!20117 rules!2621 (list!3652 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))))

(declare-fun d!269254 () Bool)

(assert (=> d!269254 e!565345))

(declare-fun res!391963 () Bool)

(assert (=> d!269254 (=> (not res!391963) (not e!565345))))

(assert (=> d!269254 (= res!391963 e!565343)))

(declare-fun c!139169 () Bool)

(assert (=> d!269254 (= c!139169 (> (size!7735 (_1!6040 lt!324953)) 0))))

(declare-fun lexTailRecV2!307 (LexerInterface!1538 List!9273 BalanceConc!6148 BalanceConc!6148 BalanceConc!6148 BalanceConc!6152) tuple2!10428)

(assert (=> d!269254 (= lt!324953 (lexTailRecV2!307 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)) (BalanceConc!6149 Empty!3067) (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)) (BalanceConc!6153 Empty!3069)))))

(assert (=> d!269254 (= (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))) lt!324953)))

(assert (= (and d!269254 c!139169) b!858987))

(assert (= (and d!269254 (not c!139169)) b!858988))

(assert (= (and b!858987 res!391962) b!858991))

(assert (= (and d!269254 res!391963) b!858989))

(assert (= (and b!858989 res!391964) b!858990))

(declare-fun m!1102863 () Bool)

(assert (=> b!858990 m!1102863))

(assert (=> b!858990 m!1101141))

(declare-fun m!1102865 () Bool)

(assert (=> b!858990 m!1102865))

(assert (=> b!858990 m!1102865))

(declare-fun m!1102867 () Bool)

(assert (=> b!858990 m!1102867))

(declare-fun m!1102869 () Bool)

(assert (=> b!858989 m!1102869))

(assert (=> b!858989 m!1101141))

(assert (=> b!858989 m!1102865))

(assert (=> b!858989 m!1102865))

(assert (=> b!858989 m!1102867))

(declare-fun m!1102871 () Bool)

(assert (=> b!858991 m!1102871))

(declare-fun m!1102873 () Bool)

(assert (=> d!269254 m!1102873))

(assert (=> d!269254 m!1101141))

(assert (=> d!269254 m!1101141))

(declare-fun m!1102875 () Bool)

(assert (=> d!269254 m!1102875))

(declare-fun m!1102877 () Bool)

(assert (=> b!858987 m!1102877))

(assert (=> b!858987 m!1101141))

(declare-fun m!1102879 () Bool)

(assert (=> b!858987 m!1102879))

(assert (=> b!858303 d!269254))

(declare-fun d!269282 () Bool)

(declare-fun lt!324956 () BalanceConc!6148)

(assert (=> d!269282 (= (list!3652 lt!324956) (printList!486 thiss!20117 (list!3654 (singletonSeq!557 separatorToken!297))))))

(declare-fun printTailRec!482 (LexerInterface!1538 BalanceConc!6152 Int BalanceConc!6148) BalanceConc!6148)

(assert (=> d!269282 (= lt!324956 (printTailRec!482 thiss!20117 (singletonSeq!557 separatorToken!297) 0 (BalanceConc!6149 Empty!3067)))))

(assert (=> d!269282 (= (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)) lt!324956)))

(declare-fun bs!232294 () Bool)

(assert (= bs!232294 d!269282))

(declare-fun m!1102881 () Bool)

(assert (=> bs!232294 m!1102881))

(assert (=> bs!232294 m!1101135))

(assert (=> bs!232294 m!1101137))

(assert (=> bs!232294 m!1101137))

(declare-fun m!1102883 () Bool)

(assert (=> bs!232294 m!1102883))

(assert (=> bs!232294 m!1101135))

(declare-fun m!1102885 () Bool)

(assert (=> bs!232294 m!1102885))

(assert (=> b!858303 d!269282))

(declare-fun d!269284 () Bool)

(declare-fun e!565348 () Bool)

(assert (=> d!269284 e!565348))

(declare-fun res!391967 () Bool)

(assert (=> d!269284 (=> (not res!391967) (not e!565348))))

(declare-fun lt!324959 () BalanceConc!6152)

(assert (=> d!269284 (= res!391967 (= (list!3654 lt!324959) (Cons!9256 separatorToken!297 Nil!9256)))))

(declare-fun singleton!276 (Token!3138) BalanceConc!6152)

(assert (=> d!269284 (= lt!324959 (singleton!276 separatorToken!297))))

(assert (=> d!269284 (= (singletonSeq!557 separatorToken!297) lt!324959)))

(declare-fun b!858994 () Bool)

(declare-fun isBalanced!857 (Conc!3069) Bool)

(assert (=> b!858994 (= e!565348 (isBalanced!857 (c!139060 lt!324959)))))

(assert (= (and d!269284 res!391967) b!858994))

(declare-fun m!1102887 () Bool)

(assert (=> d!269284 m!1102887))

(declare-fun m!1102889 () Bool)

(assert (=> d!269284 m!1102889))

(declare-fun m!1102891 () Bool)

(assert (=> b!858994 m!1102891))

(assert (=> b!858303 d!269284))

(declare-fun bs!232295 () Bool)

(declare-fun d!269286 () Bool)

(assert (= bs!232295 (and d!269286 d!268766)))

(declare-fun lambda!25802 () Int)

(assert (=> bs!232295 (= lambda!25802 lambda!25759)))

(declare-fun bs!232296 () Bool)

(assert (= bs!232296 (and d!269286 d!268698)))

(assert (=> bs!232296 (= lambda!25802 lambda!25757)))

(declare-fun bs!232297 () Bool)

(assert (= bs!232297 (and d!269286 d!269244)))

(assert (=> bs!232297 (= lambda!25802 lambda!25800)))

(declare-fun bs!232298 () Bool)

(assert (= bs!232298 (and d!269286 b!857938)))

(assert (=> bs!232298 (not (= lambda!25802 lambda!25750))))

(declare-fun bs!232299 () Bool)

(assert (= bs!232299 (and d!269286 d!269108)))

(assert (=> bs!232299 (= lambda!25802 lambda!25795)))

(declare-fun bs!232300 () Bool)

(assert (= bs!232300 (and d!269286 d!269190)))

(assert (=> bs!232300 (= lambda!25802 lambda!25797)))

(declare-fun bs!232301 () Bool)

(assert (= bs!232301 (and d!269286 d!269004)))

(assert (=> bs!232301 (= lambda!25802 lambda!25779)))

(declare-fun bs!232302 () Bool)

(assert (= bs!232302 (and d!269286 d!268774)))

(assert (=> bs!232302 (= lambda!25802 lambda!25760)))

(declare-fun b!858999 () Bool)

(declare-fun e!565353 () Bool)

(assert (=> b!858999 (= e!565353 true)))

(declare-fun b!858998 () Bool)

(declare-fun e!565352 () Bool)

(assert (=> b!858998 (= e!565352 e!565353)))

(declare-fun b!858997 () Bool)

(declare-fun e!565351 () Bool)

(assert (=> b!858997 (= e!565351 e!565352)))

(assert (=> d!269286 e!565351))

(assert (= b!858998 b!858999))

(assert (= b!858997 b!858998))

(assert (= (and d!269286 ((_ is Cons!9257) rules!2621)) b!858997))

(assert (=> b!858999 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25802))))

(assert (=> b!858999 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25802))))

(assert (=> d!269286 true))

(declare-fun lt!324960 () Bool)

(assert (=> d!269286 (= lt!324960 (forall!2197 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297) lambda!25802))))

(declare-fun e!565350 () Bool)

(assert (=> d!269286 (= lt!324960 e!565350)))

(declare-fun res!391968 () Bool)

(assert (=> d!269286 (=> res!391968 e!565350)))

(assert (=> d!269286 (= res!391968 (not ((_ is Cons!9256) (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!269286 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269286 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297)) lt!324960)))

(declare-fun b!858995 () Bool)

(declare-fun e!565349 () Bool)

(assert (=> b!858995 (= e!565350 e!565349)))

(declare-fun res!391969 () Bool)

(assert (=> b!858995 (=> (not res!391969) (not e!565349))))

(assert (=> b!858995 (= res!391969 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!858996 () Bool)

(assert (=> b!858996 (= e!565349 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!269286 (not res!391968)) b!858995))

(assert (= (and b!858995 res!391969) b!858996))

(assert (=> d!269286 m!1100629))

(declare-fun m!1102893 () Bool)

(assert (=> d!269286 m!1102893))

(assert (=> d!269286 m!1100609))

(declare-fun m!1102895 () Bool)

(assert (=> b!858995 m!1102895))

(declare-fun m!1102897 () Bool)

(assert (=> b!858996 m!1102897))

(assert (=> d!268718 d!269286))

(assert (=> d!268718 d!268708))

(declare-fun d!269288 () Bool)

(assert (=> d!269288 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (withSeparatorTokenList!68 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!269288 true))

(declare-fun _$32!370 () Unit!13773)

(assert (=> d!269288 (= (choose!5060 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!370)))

(declare-fun bs!232303 () Bool)

(assert (= bs!232303 d!269288))

(assert (=> bs!232303 m!1100629))

(assert (=> bs!232303 m!1100629))

(assert (=> bs!232303 m!1100911))

(assert (=> d!268718 d!269288))

(assert (=> d!268718 d!268792))

(declare-fun d!269290 () Bool)

(declare-fun lt!324961 () Int)

(assert (=> d!269290 (>= lt!324961 0)))

(declare-fun e!565354 () Int)

(assert (=> d!269290 (= lt!324961 e!565354)))

(declare-fun c!139170 () Bool)

(assert (=> d!269290 (= c!139170 ((_ is Nil!9255) (originalCharacters!2292 separatorToken!297)))))

(assert (=> d!269290 (= (size!7733 (originalCharacters!2292 separatorToken!297)) lt!324961)))

(declare-fun b!859000 () Bool)

(assert (=> b!859000 (= e!565354 0)))

(declare-fun b!859001 () Bool)

(assert (=> b!859001 (= e!565354 (+ 1 (size!7733 (t!97049 (originalCharacters!2292 separatorToken!297)))))))

(assert (= (and d!269290 c!139170) b!859000))

(assert (= (and d!269290 (not c!139170)) b!859001))

(declare-fun m!1102899 () Bool)

(assert (=> b!859001 m!1102899))

(assert (=> b!858288 d!269290))

(declare-fun bs!232304 () Bool)

(declare-fun d!269292 () Bool)

(assert (= bs!232304 (and d!269292 d!268912)))

(declare-fun lambda!25803 () Int)

(assert (=> bs!232304 (= (and (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (= (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (h!14658 rules!2621))))) (= lambda!25803 lambda!25770))))

(declare-fun bs!232305 () Bool)

(assert (= bs!232305 (and d!269292 d!268926)))

(assert (=> bs!232305 (= (and (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) (= (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (rule!3159 separatorToken!297))))) (= lambda!25803 lambda!25771))))

(assert (=> d!269292 true))

(assert (=> d!269292 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (dynLambda!4367 order!6011 lambda!25803))))

(assert (=> d!269292 true))

(assert (=> d!269292 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (dynLambda!4367 order!6011 lambda!25803))))

(assert (=> d!269292 (= (semiInverseModEq!682 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toValue!2797 (transformation!1736 (rule!3159 (h!14657 l!5107))))) (Forall!422 lambda!25803))))

(declare-fun bs!232306 () Bool)

(assert (= bs!232306 d!269292))

(declare-fun m!1102901 () Bool)

(assert (=> bs!232306 m!1102901))

(assert (=> d!268788 d!269292))

(assert (=> b!858267 d!268994))

(declare-fun d!269294 () Bool)

(declare-fun res!391971 () Bool)

(declare-fun e!565356 () Bool)

(assert (=> d!269294 (=> res!391971 e!565356)))

(assert (=> d!269294 (= res!391971 (or (not ((_ is Cons!9256) (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))) (not ((_ is Cons!9256) (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))))))))

(assert (=> d!269294 (= (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))) rules!2621) e!565356)))

(declare-fun b!859002 () Bool)

(declare-fun e!565355 () Bool)

(assert (=> b!859002 (= e!565356 e!565355)))

(declare-fun res!391970 () Bool)

(assert (=> b!859002 (=> (not res!391970) (not e!565355))))

(assert (=> b!859002 (= res!391970 (separableTokensPredicate!68 thiss!20117 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435)))) (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))) rules!2621))))

(declare-fun lt!324966 () Unit!13773)

(declare-fun Unit!13799 () Unit!13773)

(assert (=> b!859002 (= lt!324966 Unit!13799)))

(assert (=> b!859002 (> (size!7732 (charsOf!1003 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))))) 0)))

(declare-fun lt!324967 () Unit!13773)

(declare-fun Unit!13800 () Unit!13773)

(assert (=> b!859002 (= lt!324967 Unit!13800)))

(assert (=> b!859002 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))))))

(declare-fun lt!324962 () Unit!13773)

(declare-fun Unit!13801 () Unit!13773)

(assert (=> b!859002 (= lt!324962 Unit!13801)))

(assert (=> b!859002 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435)))))))

(declare-fun lt!324968 () Unit!13773)

(declare-fun lt!324963 () Unit!13773)

(assert (=> b!859002 (= lt!324968 lt!324963)))

(assert (=> b!859002 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))))))

(assert (=> b!859002 (= lt!324963 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))) (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435)))))))))

(declare-fun lt!324965 () Unit!13773)

(declare-fun lt!324964 () Unit!13773)

(assert (=> b!859002 (= lt!324965 lt!324964)))

(assert (=> b!859002 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435)))))))

(assert (=> b!859002 (= lt!324964 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))) (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))))))

(declare-fun b!859003 () Bool)

(assert (=> b!859003 (= e!565355 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435))))) (t!97050 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324435)) (t!97050 (t!97050 lt!324435)))))) rules!2621))))

(assert (= (and d!269294 (not res!391971)) b!859002))

(assert (= (and b!859002 res!391970) b!859003))

(declare-fun m!1102903 () Bool)

(assert (=> b!859002 m!1102903))

(declare-fun m!1102905 () Bool)

(assert (=> b!859002 m!1102905))

(declare-fun m!1102907 () Bool)

(assert (=> b!859002 m!1102907))

(assert (=> b!859002 m!1102903))

(declare-fun m!1102909 () Bool)

(assert (=> b!859002 m!1102909))

(declare-fun m!1102911 () Bool)

(assert (=> b!859002 m!1102911))

(declare-fun m!1102913 () Bool)

(assert (=> b!859002 m!1102913))

(declare-fun m!1102915 () Bool)

(assert (=> b!859002 m!1102915))

(declare-fun m!1102917 () Bool)

(assert (=> b!859003 m!1102917))

(assert (=> b!858028 d!269294))

(declare-fun d!269296 () Bool)

(declare-fun c!139171 () Bool)

(assert (=> d!269296 (= c!139171 ((_ is Cons!9256) lt!324592))))

(declare-fun e!565357 () List!9271)

(assert (=> d!269296 (= (printList!486 thiss!20117 lt!324592) e!565357)))

(declare-fun b!859004 () Bool)

(assert (=> b!859004 (= e!565357 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324592))) (printList!486 thiss!20117 (t!97050 lt!324592))))))

(declare-fun b!859005 () Bool)

(assert (=> b!859005 (= e!565357 Nil!9255)))

(assert (= (and d!269296 c!139171) b!859004))

(assert (= (and d!269296 (not c!139171)) b!859005))

(declare-fun m!1102919 () Bool)

(assert (=> b!859004 m!1102919))

(assert (=> b!859004 m!1102919))

(declare-fun m!1102921 () Bool)

(assert (=> b!859004 m!1102921))

(declare-fun m!1102923 () Bool)

(assert (=> b!859004 m!1102923))

(assert (=> b!859004 m!1102921))

(assert (=> b!859004 m!1102923))

(declare-fun m!1102925 () Bool)

(assert (=> b!859004 m!1102925))

(assert (=> d!268744 d!269296))

(declare-fun d!269298 () Bool)

(declare-fun c!139172 () Bool)

(assert (=> d!269298 (= c!139172 ((_ is Cons!9256) lt!324443))))

(declare-fun e!565358 () List!9271)

(assert (=> d!269298 (= (printWithSeparatorTokenList!44 thiss!20117 lt!324443 separatorToken!297) e!565358)))

(declare-fun b!859006 () Bool)

(assert (=> b!859006 (= e!565358 (++!2399 (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324443))) (list!3652 (charsOf!1003 separatorToken!297))) (printWithSeparatorTokenList!44 thiss!20117 (t!97050 lt!324443) separatorToken!297)))))

(declare-fun b!859007 () Bool)

(assert (=> b!859007 (= e!565358 Nil!9255)))

(assert (= (and d!269298 c!139172) b!859006))

(assert (= (and d!269298 (not c!139172)) b!859007))

(assert (=> b!859006 m!1101023))

(assert (=> b!859006 m!1101025))

(assert (=> b!859006 m!1100891))

(declare-fun m!1102927 () Bool)

(assert (=> b!859006 m!1102927))

(assert (=> b!859006 m!1101649))

(declare-fun m!1102929 () Bool)

(assert (=> b!859006 m!1102929))

(assert (=> b!859006 m!1101025))

(assert (=> b!859006 m!1100893))

(assert (=> b!859006 m!1102927))

(assert (=> b!859006 m!1101649))

(assert (=> b!859006 m!1101023))

(assert (=> b!859006 m!1100891))

(assert (=> b!859006 m!1100893))

(assert (=> d!268744 d!269298))

(assert (=> d!268784 d!269282))

(assert (=> d!268784 d!269254))

(declare-fun d!269300 () Bool)

(declare-fun list!3658 (Conc!3069) List!9272)

(assert (=> d!269300 (= (list!3654 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297))))) (list!3658 (c!139060 (_1!6040 (lex!630 thiss!20117 rules!2621 (print!567 thiss!20117 (singletonSeq!557 separatorToken!297)))))))))

(declare-fun bs!232307 () Bool)

(assert (= bs!232307 d!269300))

(declare-fun m!1102931 () Bool)

(assert (=> bs!232307 m!1102931))

(assert (=> d!268784 d!269300))

(declare-fun d!269302 () Bool)

(assert (=> d!269302 (= (list!3654 (singletonSeq!557 separatorToken!297)) (list!3658 (c!139060 (singletonSeq!557 separatorToken!297))))))

(declare-fun bs!232308 () Bool)

(assert (= bs!232308 d!269302))

(declare-fun m!1102933 () Bool)

(assert (=> bs!232308 m!1102933))

(assert (=> d!268784 d!269302))

(assert (=> d!268784 d!269284))

(declare-fun d!269304 () Bool)

(declare-fun lt!324971 () Int)

(declare-fun size!7740 (List!9272) Int)

(assert (=> d!269304 (= lt!324971 (size!7740 (list!3654 (_1!6040 lt!324619))))))

(declare-fun size!7741 (Conc!3069) Int)

(assert (=> d!269304 (= lt!324971 (size!7741 (c!139060 (_1!6040 lt!324619))))))

(assert (=> d!269304 (= (size!7735 (_1!6040 lt!324619)) lt!324971)))

(declare-fun bs!232309 () Bool)

(assert (= bs!232309 d!269304))

(assert (=> bs!232309 m!1102767))

(assert (=> bs!232309 m!1102767))

(declare-fun m!1102935 () Bool)

(assert (=> bs!232309 m!1102935))

(declare-fun m!1102937 () Bool)

(assert (=> bs!232309 m!1102937))

(assert (=> d!268784 d!269304))

(assert (=> d!268784 d!268792))

(declare-fun d!269306 () Bool)

(declare-fun c!139173 () Bool)

(assert (=> d!269306 (= c!139173 ((_ is IntegerValue!5406) (value!56175 (h!14657 (t!97050 l!5107)))))))

(declare-fun e!565360 () Bool)

(assert (=> d!269306 (= (inv!21 (value!56175 (h!14657 (t!97050 l!5107)))) e!565360)))

(declare-fun b!859008 () Bool)

(declare-fun e!565359 () Bool)

(assert (=> b!859008 (= e!565360 e!565359)))

(declare-fun c!139174 () Bool)

(assert (=> b!859008 (= c!139174 ((_ is IntegerValue!5407) (value!56175 (h!14657 (t!97050 l!5107)))))))

(declare-fun b!859009 () Bool)

(declare-fun e!565361 () Bool)

(assert (=> b!859009 (= e!565361 (inv!15 (value!56175 (h!14657 (t!97050 l!5107)))))))

(declare-fun b!859010 () Bool)

(assert (=> b!859010 (= e!565359 (inv!17 (value!56175 (h!14657 (t!97050 l!5107)))))))

(declare-fun b!859011 () Bool)

(declare-fun res!391972 () Bool)

(assert (=> b!859011 (=> res!391972 e!565361)))

(assert (=> b!859011 (= res!391972 (not ((_ is IntegerValue!5408) (value!56175 (h!14657 (t!97050 l!5107))))))))

(assert (=> b!859011 (= e!565359 e!565361)))

(declare-fun b!859012 () Bool)

(assert (=> b!859012 (= e!565360 (inv!16 (value!56175 (h!14657 (t!97050 l!5107)))))))

(assert (= (and d!269306 c!139173) b!859012))

(assert (= (and d!269306 (not c!139173)) b!859008))

(assert (= (and b!859008 c!139174) b!859010))

(assert (= (and b!859008 (not c!139174)) b!859011))

(assert (= (and b!859011 (not res!391972)) b!859009))

(declare-fun m!1102939 () Bool)

(assert (=> b!859009 m!1102939))

(declare-fun m!1102941 () Bool)

(assert (=> b!859010 m!1102941))

(declare-fun m!1102943 () Bool)

(assert (=> b!859012 m!1102943))

(assert (=> b!858336 d!269306))

(declare-fun d!269308 () Bool)

(declare-fun res!391973 () Bool)

(declare-fun e!565362 () Bool)

(assert (=> d!269308 (=> res!391973 e!565362)))

(assert (=> d!269308 (= res!391973 ((_ is Nil!9256) l!5107))))

(assert (=> d!269308 (= (forall!2197 l!5107 lambda!25760) e!565362)))

(declare-fun b!859013 () Bool)

(declare-fun e!565363 () Bool)

(assert (=> b!859013 (= e!565362 e!565363)))

(declare-fun res!391974 () Bool)

(assert (=> b!859013 (=> (not res!391974) (not e!565363))))

(assert (=> b!859013 (= res!391974 (dynLambda!4365 lambda!25760 (h!14657 l!5107)))))

(declare-fun b!859014 () Bool)

(assert (=> b!859014 (= e!565363 (forall!2197 (t!97050 l!5107) lambda!25760))))

(assert (= (and d!269308 (not res!391973)) b!859013))

(assert (= (and b!859013 res!391974) b!859014))

(declare-fun b_lambda!29025 () Bool)

(assert (=> (not b_lambda!29025) (not b!859013)))

(declare-fun m!1102945 () Bool)

(assert (=> b!859013 m!1102945))

(declare-fun m!1102947 () Bool)

(assert (=> b!859014 m!1102947))

(assert (=> d!268774 d!269308))

(assert (=> d!268774 d!268792))

(declare-fun bs!232310 () Bool)

(declare-fun d!269310 () Bool)

(assert (= bs!232310 (and d!269310 d!268766)))

(declare-fun lambda!25804 () Int)

(assert (=> bs!232310 (= lambda!25804 lambda!25759)))

(declare-fun bs!232311 () Bool)

(assert (= bs!232311 (and d!269310 d!268698)))

(assert (=> bs!232311 (= lambda!25804 lambda!25757)))

(declare-fun bs!232312 () Bool)

(assert (= bs!232312 (and d!269310 d!269244)))

(assert (=> bs!232312 (= lambda!25804 lambda!25800)))

(declare-fun bs!232313 () Bool)

(assert (= bs!232313 (and d!269310 b!857938)))

(assert (=> bs!232313 (not (= lambda!25804 lambda!25750))))

(declare-fun bs!232314 () Bool)

(assert (= bs!232314 (and d!269310 d!269108)))

(assert (=> bs!232314 (= lambda!25804 lambda!25795)))

(declare-fun bs!232315 () Bool)

(assert (= bs!232315 (and d!269310 d!269190)))

(assert (=> bs!232315 (= lambda!25804 lambda!25797)))

(declare-fun bs!232316 () Bool)

(assert (= bs!232316 (and d!269310 d!269004)))

(assert (=> bs!232316 (= lambda!25804 lambda!25779)))

(declare-fun bs!232317 () Bool)

(assert (= bs!232317 (and d!269310 d!268774)))

(assert (=> bs!232317 (= lambda!25804 lambda!25760)))

(declare-fun bs!232318 () Bool)

(assert (= bs!232318 (and d!269310 d!269286)))

(assert (=> bs!232318 (= lambda!25804 lambda!25802)))

(declare-fun b!859019 () Bool)

(declare-fun e!565368 () Bool)

(assert (=> b!859019 (= e!565368 true)))

(declare-fun b!859018 () Bool)

(declare-fun e!565367 () Bool)

(assert (=> b!859018 (= e!565367 e!565368)))

(declare-fun b!859017 () Bool)

(declare-fun e!565366 () Bool)

(assert (=> b!859017 (= e!565366 e!565367)))

(assert (=> d!269310 e!565366))

(assert (= b!859018 b!859019))

(assert (= b!859017 b!859018))

(assert (= (and d!269310 ((_ is Cons!9257) rules!2621)) b!859017))

(assert (=> b!859019 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25804))))

(assert (=> b!859019 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 rules!2621)))) (dynLambda!4363 order!6005 lambda!25804))))

(assert (=> d!269310 true))

(declare-fun lt!324972 () Bool)

(assert (=> d!269310 (= lt!324972 (forall!2197 lt!324443 lambda!25804))))

(declare-fun e!565365 () Bool)

(assert (=> d!269310 (= lt!324972 e!565365)))

(declare-fun res!391975 () Bool)

(assert (=> d!269310 (=> res!391975 e!565365)))

(assert (=> d!269310 (= res!391975 (not ((_ is Cons!9256) lt!324443)))))

(assert (=> d!269310 (not (isEmpty!5492 rules!2621))))

(assert (=> d!269310 (= (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 lt!324443) lt!324972)))

(declare-fun b!859015 () Bool)

(declare-fun e!565364 () Bool)

(assert (=> b!859015 (= e!565365 e!565364)))

(declare-fun res!391976 () Bool)

(assert (=> b!859015 (=> (not res!391976) (not e!565364))))

(assert (=> b!859015 (= res!391976 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324443)))))

(declare-fun b!859016 () Bool)

(assert (=> b!859016 (= e!565364 (rulesProduceEachTokenIndividuallyList!426 thiss!20117 rules!2621 (t!97050 lt!324443)))))

(assert (= (and d!269310 (not res!391975)) b!859015))

(assert (= (and b!859015 res!391976) b!859016))

(declare-fun m!1102949 () Bool)

(assert (=> d!269310 m!1102949))

(assert (=> d!269310 m!1100609))

(declare-fun m!1102951 () Bool)

(assert (=> b!859015 m!1102951))

(declare-fun m!1102953 () Bool)

(assert (=> b!859016 m!1102953))

(assert (=> b!858263 d!269310))

(assert (=> d!268740 d!268724))

(declare-fun d!269312 () Bool)

(assert (=> d!269312 (separableTokensPredicate!68 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621)))

(assert (=> d!269312 true))

(declare-fun _$37!238 () Unit!13773)

(assert (=> d!269312 (= (choose!5061 thiss!20117 (h!14657 (t!97050 lt!324436)) lt!324437 rules!2621) _$37!238)))

(declare-fun bs!232319 () Bool)

(assert (= bs!232319 d!269312))

(assert (=> bs!232319 m!1100569))

(assert (=> d!268740 d!269312))

(assert (=> d!268740 d!268792))

(declare-fun d!269314 () Bool)

(assert (=> d!269314 (= (inv!17 (value!56175 (h!14657 l!5107))) (= (charsToBigInt!1 (text!13062 (value!56175 (h!14657 l!5107)))) (value!56167 (value!56175 (h!14657 l!5107)))))))

(declare-fun bs!232320 () Bool)

(assert (= bs!232320 d!269314))

(declare-fun m!1102955 () Bool)

(assert (=> bs!232320 m!1102955))

(assert (=> b!858141 d!269314))

(assert (=> b!858265 d!268768))

(declare-fun d!269316 () Bool)

(assert (=> d!269316 (= (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))) (isBalanced!855 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))))))

(declare-fun bs!232321 () Bool)

(assert (= bs!232321 d!269316))

(declare-fun m!1102957 () Bool)

(assert (=> bs!232321 m!1102957))

(assert (=> tb!61091 d!269316))

(declare-fun d!269318 () Bool)

(declare-fun e!565369 () Bool)

(assert (=> d!269318 e!565369))

(declare-fun res!391978 () Bool)

(assert (=> d!269318 (=> (not res!391978) (not e!565369))))

(declare-fun lt!324973 () List!9271)

(assert (=> d!269318 (= res!391978 (= (content!1355 lt!324973) ((_ map or) (content!1355 (list!3652 (charsOf!1003 (h!14657 lt!324594)))) (content!1355 (printList!486 thiss!20117 (t!97050 lt!324594))))))))

(declare-fun e!565370 () List!9271)

(assert (=> d!269318 (= lt!324973 e!565370)))

(declare-fun c!139175 () Bool)

(assert (=> d!269318 (= c!139175 ((_ is Nil!9255) (list!3652 (charsOf!1003 (h!14657 lt!324594)))))))

(assert (=> d!269318 (= (++!2399 (list!3652 (charsOf!1003 (h!14657 lt!324594))) (printList!486 thiss!20117 (t!97050 lt!324594))) lt!324973)))

(declare-fun b!859020 () Bool)

(assert (=> b!859020 (= e!565370 (printList!486 thiss!20117 (t!97050 lt!324594)))))

(declare-fun b!859022 () Bool)

(declare-fun res!391977 () Bool)

(assert (=> b!859022 (=> (not res!391977) (not e!565369))))

(assert (=> b!859022 (= res!391977 (= (size!7733 lt!324973) (+ (size!7733 (list!3652 (charsOf!1003 (h!14657 lt!324594)))) (size!7733 (printList!486 thiss!20117 (t!97050 lt!324594))))))))

(declare-fun b!859021 () Bool)

(assert (=> b!859021 (= e!565370 (Cons!9255 (h!14656 (list!3652 (charsOf!1003 (h!14657 lt!324594)))) (++!2399 (t!97049 (list!3652 (charsOf!1003 (h!14657 lt!324594)))) (printList!486 thiss!20117 (t!97050 lt!324594)))))))

(declare-fun b!859023 () Bool)

(assert (=> b!859023 (= e!565369 (or (not (= (printList!486 thiss!20117 (t!97050 lt!324594)) Nil!9255)) (= lt!324973 (list!3652 (charsOf!1003 (h!14657 lt!324594))))))))

(assert (= (and d!269318 c!139175) b!859020))

(assert (= (and d!269318 (not c!139175)) b!859021))

(assert (= (and d!269318 res!391978) b!859022))

(assert (= (and b!859022 res!391977) b!859023))

(declare-fun m!1102959 () Bool)

(assert (=> d!269318 m!1102959))

(assert (=> d!269318 m!1101005))

(declare-fun m!1102961 () Bool)

(assert (=> d!269318 m!1102961))

(assert (=> d!269318 m!1101007))

(declare-fun m!1102963 () Bool)

(assert (=> d!269318 m!1102963))

(declare-fun m!1102965 () Bool)

(assert (=> b!859022 m!1102965))

(assert (=> b!859022 m!1101005))

(declare-fun m!1102967 () Bool)

(assert (=> b!859022 m!1102967))

(assert (=> b!859022 m!1101007))

(declare-fun m!1102969 () Bool)

(assert (=> b!859022 m!1102969))

(assert (=> b!859021 m!1101007))

(declare-fun m!1102971 () Bool)

(assert (=> b!859021 m!1102971))

(assert (=> b!858182 d!269318))

(declare-fun d!269320 () Bool)

(assert (=> d!269320 (= (list!3652 (charsOf!1003 (h!14657 lt!324594))) (list!3655 (c!139018 (charsOf!1003 (h!14657 lt!324594)))))))

(declare-fun bs!232322 () Bool)

(assert (= bs!232322 d!269320))

(declare-fun m!1102973 () Bool)

(assert (=> bs!232322 m!1102973))

(assert (=> b!858182 d!269320))

(declare-fun d!269322 () Bool)

(declare-fun lt!324974 () BalanceConc!6148)

(assert (=> d!269322 (= (list!3652 lt!324974) (originalCharacters!2292 (h!14657 lt!324594)))))

(assert (=> d!269322 (= lt!324974 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594)))) (value!56175 (h!14657 lt!324594))))))

(assert (=> d!269322 (= (charsOf!1003 (h!14657 lt!324594)) lt!324974)))

(declare-fun b_lambda!29027 () Bool)

(assert (=> (not b_lambda!29027) (not d!269322)))

(declare-fun t!97347 () Bool)

(declare-fun tb!61343 () Bool)

(assert (=> (and b!857944 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97347) tb!61343))

(declare-fun b!859024 () Bool)

(declare-fun e!565371 () Bool)

(declare-fun tp!270911 () Bool)

(assert (=> b!859024 (= e!565371 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594)))) (value!56175 (h!14657 lt!324594))))) tp!270911))))

(declare-fun result!70970 () Bool)

(assert (=> tb!61343 (= result!70970 (and (inv!11781 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594)))) (value!56175 (h!14657 lt!324594)))) e!565371))))

(assert (= tb!61343 b!859024))

(declare-fun m!1102975 () Bool)

(assert (=> b!859024 m!1102975))

(declare-fun m!1102977 () Bool)

(assert (=> tb!61343 m!1102977))

(assert (=> d!269322 t!97347))

(declare-fun b_and!76375 () Bool)

(assert (= b_and!76351 (and (=> t!97347 result!70970) b_and!76375)))

(declare-fun tb!61345 () Bool)

(declare-fun t!97349 () Bool)

(assert (=> (and b!858338 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97349) tb!61345))

(declare-fun result!70972 () Bool)

(assert (= result!70972 result!70970))

(assert (=> d!269322 t!97349))

(declare-fun b_and!76377 () Bool)

(assert (= b_and!76349 (and (=> t!97349 result!70972) b_and!76377)))

(declare-fun tb!61347 () Bool)

(declare-fun t!97351 () Bool)

(assert (=> (and b!858358 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97351) tb!61347))

(declare-fun result!70974 () Bool)

(assert (= result!70974 result!70970))

(assert (=> d!269322 t!97351))

(declare-fun b_and!76379 () Bool)

(assert (= b_and!76347 (and (=> t!97351 result!70974) b_and!76379)))

(declare-fun tb!61349 () Bool)

(declare-fun t!97353 () Bool)

(assert (=> (and b!857947 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97353) tb!61349))

(declare-fun result!70976 () Bool)

(assert (= result!70976 result!70970))

(assert (=> d!269322 t!97353))

(declare-fun b_and!76381 () Bool)

(assert (= b_and!76353 (and (=> t!97353 result!70976) b_and!76381)))

(declare-fun t!97355 () Bool)

(declare-fun tb!61351 () Bool)

(assert (=> (and b!857942 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97355) tb!61351))

(declare-fun result!70978 () Bool)

(assert (= result!70978 result!70970))

(assert (=> d!269322 t!97355))

(declare-fun b_and!76383 () Bool)

(assert (= b_and!76355 (and (=> t!97355 result!70978) b_and!76383)))

(declare-fun m!1102979 () Bool)

(assert (=> d!269322 m!1102979))

(declare-fun m!1102981 () Bool)

(assert (=> d!269322 m!1102981))

(assert (=> b!858182 d!269322))

(declare-fun d!269324 () Bool)

(declare-fun c!139176 () Bool)

(assert (=> d!269324 (= c!139176 ((_ is Cons!9256) (t!97050 lt!324594)))))

(declare-fun e!565372 () List!9271)

(assert (=> d!269324 (= (printList!486 thiss!20117 (t!97050 lt!324594)) e!565372)))

(declare-fun b!859025 () Bool)

(assert (=> b!859025 (= e!565372 (++!2399 (list!3652 (charsOf!1003 (h!14657 (t!97050 lt!324594)))) (printList!486 thiss!20117 (t!97050 (t!97050 lt!324594)))))))

(declare-fun b!859026 () Bool)

(assert (=> b!859026 (= e!565372 Nil!9255)))

(assert (= (and d!269324 c!139176) b!859025))

(assert (= (and d!269324 (not c!139176)) b!859026))

(declare-fun m!1102983 () Bool)

(assert (=> b!859025 m!1102983))

(assert (=> b!859025 m!1102983))

(declare-fun m!1102985 () Bool)

(assert (=> b!859025 m!1102985))

(declare-fun m!1102987 () Bool)

(assert (=> b!859025 m!1102987))

(assert (=> b!859025 m!1102985))

(assert (=> b!859025 m!1102987))

(declare-fun m!1102989 () Bool)

(assert (=> b!859025 m!1102989))

(assert (=> b!858182 d!269324))

(declare-fun d!269326 () Bool)

(declare-fun res!391980 () Bool)

(declare-fun e!565374 () Bool)

(assert (=> d!269326 (=> res!391980 e!565374)))

(assert (=> d!269326 (= res!391980 (or (not ((_ is Cons!9256) (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))) (not ((_ is Cons!9256) (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))))))))

(assert (=> d!269326 (= (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))) rules!2621) e!565374)))

(declare-fun b!859027 () Bool)

(declare-fun e!565373 () Bool)

(assert (=> b!859027 (= e!565374 e!565373)))

(declare-fun res!391979 () Bool)

(assert (=> b!859027 (=> (not res!391979) (not e!565373))))

(assert (=> b!859027 (= res!391979 (separableTokensPredicate!68 thiss!20117 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436)))) (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))) rules!2621))))

(declare-fun lt!324979 () Unit!13773)

(declare-fun Unit!13802 () Unit!13773)

(assert (=> b!859027 (= lt!324979 Unit!13802)))

(assert (=> b!859027 (> (size!7732 (charsOf!1003 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))))) 0)))

(declare-fun lt!324980 () Unit!13773)

(declare-fun Unit!13803 () Unit!13773)

(assert (=> b!859027 (= lt!324980 Unit!13803)))

(assert (=> b!859027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))))))

(declare-fun lt!324975 () Unit!13773)

(declare-fun Unit!13804 () Unit!13773)

(assert (=> b!859027 (= lt!324975 Unit!13804)))

(assert (=> b!859027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436)))))))

(declare-fun lt!324981 () Unit!13773)

(declare-fun lt!324976 () Unit!13773)

(assert (=> b!859027 (= lt!324981 lt!324976)))

(assert (=> b!859027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))))))

(assert (=> b!859027 (= lt!324976 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))) (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436)))))))))

(declare-fun lt!324978 () Unit!13773)

(declare-fun lt!324977 () Unit!13773)

(assert (=> b!859027 (= lt!324978 lt!324977)))

(assert (=> b!859027 (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436)))))))

(assert (=> b!859027 (= lt!324977 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!236 thiss!20117 rules!2621 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))) (h!14657 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))))))

(declare-fun b!859028 () Bool)

(assert (=> b!859028 (= e!565373 (tokensListTwoByTwoPredicateSeparableList!52 thiss!20117 (Cons!9256 (h!14657 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436))))) (t!97050 (t!97050 (Cons!9256 (h!14657 (t!97050 lt!324436)) (t!97050 (t!97050 lt!324436)))))) rules!2621))))

(assert (= (and d!269326 (not res!391980)) b!859027))

(assert (= (and b!859027 res!391979) b!859028))

(declare-fun m!1102991 () Bool)

(assert (=> b!859027 m!1102991))

(declare-fun m!1102993 () Bool)

(assert (=> b!859027 m!1102993))

(declare-fun m!1102995 () Bool)

(assert (=> b!859027 m!1102995))

(assert (=> b!859027 m!1102991))

(declare-fun m!1102997 () Bool)

(assert (=> b!859027 m!1102997))

(declare-fun m!1102999 () Bool)

(assert (=> b!859027 m!1102999))

(declare-fun m!1103001 () Bool)

(assert (=> b!859027 m!1103001))

(declare-fun m!1103003 () Bool)

(assert (=> b!859027 m!1103003))

(declare-fun m!1103005 () Bool)

(assert (=> b!859028 m!1103005))

(assert (=> b!858145 d!269326))

(declare-fun d!269328 () Bool)

(declare-fun res!391985 () Bool)

(declare-fun e!565379 () Bool)

(assert (=> d!269328 (=> res!391985 e!565379)))

(assert (=> d!269328 (= res!391985 ((_ is Nil!9257) rules!2621))))

(assert (=> d!269328 (= (noDuplicateTag!613 thiss!20117 rules!2621 Nil!9259) e!565379)))

(declare-fun b!859033 () Bool)

(declare-fun e!565380 () Bool)

(assert (=> b!859033 (= e!565379 e!565380)))

(declare-fun res!391986 () Bool)

(assert (=> b!859033 (=> (not res!391986) (not e!565380))))

(declare-fun contains!1710 (List!9275 String!10908) Bool)

(assert (=> b!859033 (= res!391986 (not (contains!1710 Nil!9259 (tag!1998 (h!14658 rules!2621)))))))

(declare-fun b!859034 () Bool)

(assert (=> b!859034 (= e!565380 (noDuplicateTag!613 thiss!20117 (t!97051 rules!2621) (Cons!9259 (tag!1998 (h!14658 rules!2621)) Nil!9259)))))

(assert (= (and d!269328 (not res!391985)) b!859033))

(assert (= (and b!859033 res!391986) b!859034))

(declare-fun m!1103007 () Bool)

(assert (=> b!859033 m!1103007))

(declare-fun m!1103009 () Bool)

(assert (=> b!859034 m!1103009))

(assert (=> b!858274 d!269328))

(declare-fun d!269330 () Bool)

(assert (=> d!269330 (= (inv!16 (value!56175 (h!14657 l!5107))) (= (charsToInt!0 (text!13061 (value!56175 (h!14657 l!5107)))) (value!56166 (value!56175 (h!14657 l!5107)))))))

(declare-fun bs!232323 () Bool)

(assert (= bs!232323 d!269330))

(declare-fun m!1103011 () Bool)

(assert (=> bs!232323 m!1103011))

(assert (=> b!858143 d!269330))

(declare-fun tp!270919 () Bool)

(declare-fun b!859043 () Bool)

(declare-fun tp!270918 () Bool)

(declare-fun e!565385 () Bool)

(assert (=> b!859043 (= e!565385 (and (inv!11780 (left!6848 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))) tp!270918 (inv!11780 (right!7178 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))) tp!270919))))

(declare-fun b!859045 () Bool)

(declare-fun e!565386 () Bool)

(declare-fun tp!270920 () Bool)

(assert (=> b!859045 (= e!565386 tp!270920)))

(declare-fun b!859044 () Bool)

(declare-fun inv!11787 (IArray!6139) Bool)

(assert (=> b!859044 (= e!565385 (and (inv!11787 (xs!5756 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))) e!565386))))

(assert (=> b!858289 (= tp!270726 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297)))) e!565385))))

(assert (= (and b!858289 ((_ is Node!3067) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))) b!859043))

(assert (= b!859044 b!859045))

(assert (= (and b!858289 ((_ is Leaf!4523) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (value!56175 separatorToken!297))))) b!859044))

(declare-fun m!1103013 () Bool)

(assert (=> b!859043 m!1103013))

(declare-fun m!1103015 () Bool)

(assert (=> b!859043 m!1103015))

(declare-fun m!1103017 () Bool)

(assert (=> b!859044 m!1103017))

(assert (=> b!858289 m!1101117))

(declare-fun b!859047 () Bool)

(declare-fun e!565387 () Bool)

(declare-fun tp!270923 () Bool)

(declare-fun tp!270924 () Bool)

(assert (=> b!859047 (= e!565387 (and tp!270923 tp!270924))))

(declare-fun b!859046 () Bool)

(assert (=> b!859046 (= e!565387 tp_is_empty!3997)))

(assert (=> b!858361 (= tp!270780 e!565387)))

(declare-fun b!859048 () Bool)

(declare-fun tp!270922 () Bool)

(assert (=> b!859048 (= e!565387 tp!270922)))

(declare-fun b!859049 () Bool)

(declare-fun tp!270925 () Bool)

(declare-fun tp!270921 () Bool)

(assert (=> b!859049 (= e!565387 (and tp!270925 tp!270921))))

(assert (= (and b!858361 ((_ is ElementMatch!2169) (regOne!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859046))

(assert (= (and b!858361 ((_ is Concat!3972) (regOne!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859047))

(assert (= (and b!858361 ((_ is Star!2169) (regOne!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859048))

(assert (= (and b!858361 ((_ is Union!2169) (regOne!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859049))

(declare-fun b!859051 () Bool)

(declare-fun e!565388 () Bool)

(declare-fun tp!270928 () Bool)

(declare-fun tp!270929 () Bool)

(assert (=> b!859051 (= e!565388 (and tp!270928 tp!270929))))

(declare-fun b!859050 () Bool)

(assert (=> b!859050 (= e!565388 tp_is_empty!3997)))

(assert (=> b!858361 (= tp!270781 e!565388)))

(declare-fun b!859052 () Bool)

(declare-fun tp!270927 () Bool)

(assert (=> b!859052 (= e!565388 tp!270927)))

(declare-fun b!859053 () Bool)

(declare-fun tp!270930 () Bool)

(declare-fun tp!270926 () Bool)

(assert (=> b!859053 (= e!565388 (and tp!270930 tp!270926))))

(assert (= (and b!858361 ((_ is ElementMatch!2169) (regTwo!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859050))

(assert (= (and b!858361 ((_ is Concat!3972) (regTwo!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859051))

(assert (= (and b!858361 ((_ is Star!2169) (regTwo!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859052))

(assert (= (and b!858361 ((_ is Union!2169) (regTwo!4850 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859053))

(declare-fun b!859055 () Bool)

(declare-fun e!565389 () Bool)

(declare-fun tp!270933 () Bool)

(declare-fun tp!270934 () Bool)

(assert (=> b!859055 (= e!565389 (and tp!270933 tp!270934))))

(declare-fun b!859054 () Bool)

(assert (=> b!859054 (= e!565389 tp_is_empty!3997)))

(assert (=> b!858362 (= tp!270779 e!565389)))

(declare-fun b!859056 () Bool)

(declare-fun tp!270932 () Bool)

(assert (=> b!859056 (= e!565389 tp!270932)))

(declare-fun b!859057 () Bool)

(declare-fun tp!270935 () Bool)

(declare-fun tp!270931 () Bool)

(assert (=> b!859057 (= e!565389 (and tp!270935 tp!270931))))

(assert (= (and b!858362 ((_ is ElementMatch!2169) (reg!2498 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859054))

(assert (= (and b!858362 ((_ is Concat!3972) (reg!2498 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859055))

(assert (= (and b!858362 ((_ is Star!2169) (reg!2498 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859056))

(assert (= (and b!858362 ((_ is Union!2169) (reg!2498 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859057))

(declare-fun b!859060 () Bool)

(declare-fun b_free!26101 () Bool)

(declare-fun b_next!26165 () Bool)

(assert (=> b!859060 (= b_free!26101 (not b_next!26165))))

(declare-fun tp!270937 () Bool)

(declare-fun b_and!76385 () Bool)

(assert (=> b!859060 (= tp!270937 b_and!76385)))

(declare-fun b_free!26103 () Bool)

(declare-fun b_next!26167 () Bool)

(assert (=> b!859060 (= b_free!26103 (not b_next!26167))))

(declare-fun t!97357 () Bool)

(declare-fun tb!61353 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97357) tb!61353))

(declare-fun result!70982 () Bool)

(assert (= result!70982 result!70890))

(assert (=> d!269196 t!97357))

(declare-fun tb!61355 () Bool)

(declare-fun t!97359 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97359) tb!61355))

(declare-fun result!70984 () Bool)

(assert (= result!70984 result!70840))

(assert (=> b!858714 t!97359))

(declare-fun t!97361 () Bool)

(declare-fun tb!61357 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97361) tb!61357))

(declare-fun result!70986 () Bool)

(assert (= result!70986 result!70790))

(assert (=> d!268998 t!97361))

(declare-fun t!97363 () Bool)

(declare-fun tb!61359 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97363) tb!61359))

(declare-fun result!70988 () Bool)

(assert (= result!70988 result!70900))

(assert (=> d!269202 t!97363))

(declare-fun t!97365 () Bool)

(declare-fun tb!61361 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97365) tb!61361))

(declare-fun result!70990 () Bool)

(assert (= result!70990 result!70708))

(assert (=> b!858287 t!97365))

(declare-fun tb!61363 () Bool)

(declare-fun t!97367 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97367) tb!61363))

(declare-fun result!70992 () Bool)

(assert (= result!70992 result!70684))

(assert (=> b!858033 t!97367))

(declare-fun tb!61365 () Bool)

(declare-fun t!97369 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97369) tb!61365))

(declare-fun result!70994 () Bool)

(assert (= result!70994 result!70970))

(assert (=> d!269322 t!97369))

(declare-fun tb!61367 () Bool)

(declare-fun t!97371 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97371) tb!61367))

(declare-fun result!70996 () Bool)

(assert (= result!70996 result!70750))

(assert (=> d!268918 t!97371))

(declare-fun t!97373 () Bool)

(declare-fun tb!61369 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97373) tb!61369))

(declare-fun result!70998 () Bool)

(assert (= result!70998 result!70870))

(assert (=> d!269166 t!97373))

(declare-fun t!97375 () Bool)

(declare-fun tb!61371 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97375) tb!61371))

(declare-fun result!71000 () Bool)

(assert (= result!71000 result!70810))

(assert (=> d!269016 t!97375))

(assert (=> d!268866 t!97365))

(assert (=> d!268880 t!97367))

(declare-fun tb!61373 () Bool)

(declare-fun t!97377 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97377) tb!61373))

(declare-fun result!71002 () Bool)

(assert (= result!71002 result!70880))

(assert (=> d!269182 t!97377))

(declare-fun tb!61375 () Bool)

(declare-fun t!97379 () Bool)

(assert (=> (and b!859060 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97379) tb!61375))

(declare-fun result!71004 () Bool)

(assert (= result!71004 result!70800))

(assert (=> d!269014 t!97379))

(declare-fun b_and!76387 () Bool)

(declare-fun tp!270936 () Bool)

(assert (=> b!859060 (= tp!270936 (and (=> t!97379 result!71004) (=> t!97377 result!71002) (=> t!97369 result!70994) (=> t!97375 result!71000) (=> t!97367 result!70992) (=> t!97363 result!70988) (=> t!97373 result!70998) (=> t!97365 result!70990) (=> t!97359 result!70984) (=> t!97371 result!70996) (=> t!97357 result!70982) (=> t!97361 result!70986) b_and!76387))))

(declare-fun e!565393 () Bool)

(assert (=> b!859060 (= e!565393 (and tp!270937 tp!270936))))

(declare-fun tp!270939 () Bool)

(declare-fun b!859059 () Bool)

(declare-fun e!565391 () Bool)

(assert (=> b!859059 (= e!565391 (and tp!270939 (inv!11773 (tag!1998 (h!14658 (t!97051 (t!97051 rules!2621))))) (inv!11777 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) e!565393))))

(declare-fun b!859058 () Bool)

(declare-fun e!565390 () Bool)

(declare-fun tp!270938 () Bool)

(assert (=> b!859058 (= e!565390 (and e!565391 tp!270938))))

(assert (=> b!858356 (= tp!270775 e!565390)))

(assert (= b!859059 b!859060))

(assert (= b!859058 b!859059))

(assert (= (and b!858356 ((_ is Cons!9257) (t!97051 (t!97051 rules!2621)))) b!859058))

(declare-fun m!1103019 () Bool)

(assert (=> b!859059 m!1103019))

(declare-fun m!1103021 () Bool)

(assert (=> b!859059 m!1103021))

(declare-fun b!859062 () Bool)

(declare-fun e!565394 () Bool)

(declare-fun tp!270942 () Bool)

(declare-fun tp!270943 () Bool)

(assert (=> b!859062 (= e!565394 (and tp!270942 tp!270943))))

(declare-fun b!859061 () Bool)

(assert (=> b!859061 (= e!565394 tp_is_empty!3997)))

(assert (=> b!858363 (= tp!270782 e!565394)))

(declare-fun b!859063 () Bool)

(declare-fun tp!270941 () Bool)

(assert (=> b!859063 (= e!565394 tp!270941)))

(declare-fun b!859064 () Bool)

(declare-fun tp!270944 () Bool)

(declare-fun tp!270940 () Bool)

(assert (=> b!859064 (= e!565394 (and tp!270944 tp!270940))))

(assert (= (and b!858363 ((_ is ElementMatch!2169) (regOne!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859061))

(assert (= (and b!858363 ((_ is Concat!3972) (regOne!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859062))

(assert (= (and b!858363 ((_ is Star!2169) (regOne!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859063))

(assert (= (and b!858363 ((_ is Union!2169) (regOne!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859064))

(declare-fun b!859066 () Bool)

(declare-fun e!565395 () Bool)

(declare-fun tp!270947 () Bool)

(declare-fun tp!270948 () Bool)

(assert (=> b!859066 (= e!565395 (and tp!270947 tp!270948))))

(declare-fun b!859065 () Bool)

(assert (=> b!859065 (= e!565395 tp_is_empty!3997)))

(assert (=> b!858363 (= tp!270778 e!565395)))

(declare-fun b!859067 () Bool)

(declare-fun tp!270946 () Bool)

(assert (=> b!859067 (= e!565395 tp!270946)))

(declare-fun b!859068 () Bool)

(declare-fun tp!270949 () Bool)

(declare-fun tp!270945 () Bool)

(assert (=> b!859068 (= e!565395 (and tp!270949 tp!270945))))

(assert (= (and b!858363 ((_ is ElementMatch!2169) (regTwo!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859065))

(assert (= (and b!858363 ((_ is Concat!3972) (regTwo!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859066))

(assert (= (and b!858363 ((_ is Star!2169) (regTwo!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859067))

(assert (= (and b!858363 ((_ is Union!2169) (regTwo!4851 (regex!1736 (rule!3159 (h!14657 l!5107)))))) b!859068))

(declare-fun b!859070 () Bool)

(declare-fun e!565396 () Bool)

(declare-fun tp!270952 () Bool)

(declare-fun tp!270953 () Bool)

(assert (=> b!859070 (= e!565396 (and tp!270952 tp!270953))))

(declare-fun b!859069 () Bool)

(assert (=> b!859069 (= e!565396 tp_is_empty!3997)))

(assert (=> b!858322 (= tp!270739 e!565396)))

(declare-fun b!859071 () Bool)

(declare-fun tp!270951 () Bool)

(assert (=> b!859071 (= e!565396 tp!270951)))

(declare-fun b!859072 () Bool)

(declare-fun tp!270954 () Bool)

(declare-fun tp!270950 () Bool)

(assert (=> b!859072 (= e!565396 (and tp!270954 tp!270950))))

(assert (= (and b!858322 ((_ is ElementMatch!2169) (regOne!4850 (regex!1736 (h!14658 rules!2621))))) b!859069))

(assert (= (and b!858322 ((_ is Concat!3972) (regOne!4850 (regex!1736 (h!14658 rules!2621))))) b!859070))

(assert (= (and b!858322 ((_ is Star!2169) (regOne!4850 (regex!1736 (h!14658 rules!2621))))) b!859071))

(assert (= (and b!858322 ((_ is Union!2169) (regOne!4850 (regex!1736 (h!14658 rules!2621))))) b!859072))

(declare-fun b!859074 () Bool)

(declare-fun e!565397 () Bool)

(declare-fun tp!270957 () Bool)

(declare-fun tp!270958 () Bool)

(assert (=> b!859074 (= e!565397 (and tp!270957 tp!270958))))

(declare-fun b!859073 () Bool)

(assert (=> b!859073 (= e!565397 tp_is_empty!3997)))

(assert (=> b!858322 (= tp!270740 e!565397)))

(declare-fun b!859075 () Bool)

(declare-fun tp!270956 () Bool)

(assert (=> b!859075 (= e!565397 tp!270956)))

(declare-fun b!859076 () Bool)

(declare-fun tp!270959 () Bool)

(declare-fun tp!270955 () Bool)

(assert (=> b!859076 (= e!565397 (and tp!270959 tp!270955))))

(assert (= (and b!858322 ((_ is ElementMatch!2169) (regTwo!4850 (regex!1736 (h!14658 rules!2621))))) b!859073))

(assert (= (and b!858322 ((_ is Concat!3972) (regTwo!4850 (regex!1736 (h!14658 rules!2621))))) b!859074))

(assert (= (and b!858322 ((_ is Star!2169) (regTwo!4850 (regex!1736 (h!14658 rules!2621))))) b!859075))

(assert (= (and b!858322 ((_ is Union!2169) (regTwo!4850 (regex!1736 (h!14658 rules!2621))))) b!859076))

(declare-fun b!859078 () Bool)

(declare-fun e!565398 () Bool)

(declare-fun tp!270962 () Bool)

(declare-fun tp!270963 () Bool)

(assert (=> b!859078 (= e!565398 (and tp!270962 tp!270963))))

(declare-fun b!859077 () Bool)

(assert (=> b!859077 (= e!565398 tp_is_empty!3997)))

(assert (=> b!858357 (= tp!270776 e!565398)))

(declare-fun b!859079 () Bool)

(declare-fun tp!270961 () Bool)

(assert (=> b!859079 (= e!565398 tp!270961)))

(declare-fun b!859080 () Bool)

(declare-fun tp!270964 () Bool)

(declare-fun tp!270960 () Bool)

(assert (=> b!859080 (= e!565398 (and tp!270964 tp!270960))))

(assert (= (and b!858357 ((_ is ElementMatch!2169) (regex!1736 (h!14658 (t!97051 rules!2621))))) b!859077))

(assert (= (and b!858357 ((_ is Concat!3972) (regex!1736 (h!14658 (t!97051 rules!2621))))) b!859078))

(assert (= (and b!858357 ((_ is Star!2169) (regex!1736 (h!14658 (t!97051 rules!2621))))) b!859079))

(assert (= (and b!858357 ((_ is Union!2169) (regex!1736 (h!14658 (t!97051 rules!2621))))) b!859080))

(declare-fun b!859083 () Bool)

(declare-fun e!565401 () Bool)

(assert (=> b!859083 (= e!565401 true)))

(declare-fun b!859082 () Bool)

(declare-fun e!565400 () Bool)

(assert (=> b!859082 (= e!565400 e!565401)))

(declare-fun b!859081 () Bool)

(declare-fun e!565399 () Bool)

(assert (=> b!859081 (= e!565399 e!565400)))

(assert (=> b!858088 e!565399))

(assert (= b!859082 b!859083))

(assert (= b!859081 b!859082))

(assert (= (and b!858088 ((_ is Cons!9257) (t!97051 rules!2621))) b!859081))

(assert (=> b!859083 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25757))))

(assert (=> b!859083 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25757))))

(declare-fun b!859086 () Bool)

(declare-fun e!565404 () Bool)

(assert (=> b!859086 (= e!565404 true)))

(declare-fun b!859085 () Bool)

(declare-fun e!565403 () Bool)

(assert (=> b!859085 (= e!565403 e!565404)))

(declare-fun b!859084 () Bool)

(declare-fun e!565402 () Bool)

(assert (=> b!859084 (= e!565402 e!565403)))

(assert (=> b!858278 e!565402))

(assert (= b!859085 b!859086))

(assert (= b!859084 b!859085))

(assert (= (and b!858278 ((_ is Cons!9257) (t!97051 rules!2621))) b!859084))

(assert (=> b!859086 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25760))))

(assert (=> b!859086 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25760))))

(declare-fun b!859088 () Bool)

(declare-fun e!565405 () Bool)

(declare-fun tp!270967 () Bool)

(declare-fun tp!270968 () Bool)

(assert (=> b!859088 (= e!565405 (and tp!270967 tp!270968))))

(declare-fun b!859087 () Bool)

(assert (=> b!859087 (= e!565405 tp_is_empty!3997)))

(assert (=> b!858323 (= tp!270738 e!565405)))

(declare-fun b!859089 () Bool)

(declare-fun tp!270966 () Bool)

(assert (=> b!859089 (= e!565405 tp!270966)))

(declare-fun b!859090 () Bool)

(declare-fun tp!270969 () Bool)

(declare-fun tp!270965 () Bool)

(assert (=> b!859090 (= e!565405 (and tp!270969 tp!270965))))

(assert (= (and b!858323 ((_ is ElementMatch!2169) (reg!2498 (regex!1736 (h!14658 rules!2621))))) b!859087))

(assert (= (and b!858323 ((_ is Concat!3972) (reg!2498 (regex!1736 (h!14658 rules!2621))))) b!859088))

(assert (= (and b!858323 ((_ is Star!2169) (reg!2498 (regex!1736 (h!14658 rules!2621))))) b!859089))

(assert (= (and b!858323 ((_ is Union!2169) (reg!2498 (regex!1736 (h!14658 rules!2621))))) b!859090))

(declare-fun b!859092 () Bool)

(declare-fun e!565406 () Bool)

(declare-fun tp!270972 () Bool)

(declare-fun tp!270973 () Bool)

(assert (=> b!859092 (= e!565406 (and tp!270972 tp!270973))))

(declare-fun b!859091 () Bool)

(assert (=> b!859091 (= e!565406 tp_is_empty!3997)))

(assert (=> b!858324 (= tp!270741 e!565406)))

(declare-fun b!859093 () Bool)

(declare-fun tp!270971 () Bool)

(assert (=> b!859093 (= e!565406 tp!270971)))

(declare-fun b!859094 () Bool)

(declare-fun tp!270974 () Bool)

(declare-fun tp!270970 () Bool)

(assert (=> b!859094 (= e!565406 (and tp!270974 tp!270970))))

(assert (= (and b!858324 ((_ is ElementMatch!2169) (regOne!4851 (regex!1736 (h!14658 rules!2621))))) b!859091))

(assert (= (and b!858324 ((_ is Concat!3972) (regOne!4851 (regex!1736 (h!14658 rules!2621))))) b!859092))

(assert (= (and b!858324 ((_ is Star!2169) (regOne!4851 (regex!1736 (h!14658 rules!2621))))) b!859093))

(assert (= (and b!858324 ((_ is Union!2169) (regOne!4851 (regex!1736 (h!14658 rules!2621))))) b!859094))

(declare-fun b!859096 () Bool)

(declare-fun e!565407 () Bool)

(declare-fun tp!270977 () Bool)

(declare-fun tp!270978 () Bool)

(assert (=> b!859096 (= e!565407 (and tp!270977 tp!270978))))

(declare-fun b!859095 () Bool)

(assert (=> b!859095 (= e!565407 tp_is_empty!3997)))

(assert (=> b!858324 (= tp!270737 e!565407)))

(declare-fun b!859097 () Bool)

(declare-fun tp!270976 () Bool)

(assert (=> b!859097 (= e!565407 tp!270976)))

(declare-fun b!859098 () Bool)

(declare-fun tp!270979 () Bool)

(declare-fun tp!270975 () Bool)

(assert (=> b!859098 (= e!565407 (and tp!270979 tp!270975))))

(assert (= (and b!858324 ((_ is ElementMatch!2169) (regTwo!4851 (regex!1736 (h!14658 rules!2621))))) b!859095))

(assert (= (and b!858324 ((_ is Concat!3972) (regTwo!4851 (regex!1736 (h!14658 rules!2621))))) b!859096))

(assert (= (and b!858324 ((_ is Star!2169) (regTwo!4851 (regex!1736 (h!14658 rules!2621))))) b!859097))

(assert (= (and b!858324 ((_ is Union!2169) (regTwo!4851 (regex!1736 (h!14658 rules!2621))))) b!859098))

(declare-fun e!565408 () Bool)

(declare-fun tp!270980 () Bool)

(declare-fun b!859099 () Bool)

(declare-fun tp!270981 () Bool)

(assert (=> b!859099 (= e!565408 (and (inv!11780 (left!6848 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))) tp!270980 (inv!11780 (right!7178 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))) tp!270981))))

(declare-fun b!859101 () Bool)

(declare-fun e!565409 () Bool)

(declare-fun tp!270982 () Bool)

(assert (=> b!859101 (= e!565409 tp!270982)))

(declare-fun b!859100 () Bool)

(assert (=> b!859100 (= e!565408 (and (inv!11787 (xs!5756 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))) e!565409))))

(assert (=> b!858039 (= tp!270669 (and (inv!11780 (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107))))) e!565408))))

(assert (= (and b!858039 ((_ is Node!3067) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))) b!859099))

(assert (= b!859100 b!859101))

(assert (= (and b!858039 ((_ is Leaf!4523) (c!139018 (dynLambda!4361 (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (value!56175 (h!14657 l!5107)))))) b!859100))

(declare-fun m!1103023 () Bool)

(assert (=> b!859099 m!1103023))

(declare-fun m!1103025 () Bool)

(assert (=> b!859099 m!1103025))

(declare-fun m!1103027 () Bool)

(assert (=> b!859100 m!1103027))

(assert (=> b!858039 m!1100773))

(declare-fun b!859103 () Bool)

(declare-fun e!565410 () Bool)

(declare-fun tp!270985 () Bool)

(declare-fun tp!270986 () Bool)

(assert (=> b!859103 (= e!565410 (and tp!270985 tp!270986))))

(declare-fun b!859102 () Bool)

(assert (=> b!859102 (= e!565410 tp_is_empty!3997)))

(assert (=> b!858345 (= tp!270762 e!565410)))

(declare-fun b!859104 () Bool)

(declare-fun tp!270984 () Bool)

(assert (=> b!859104 (= e!565410 tp!270984)))

(declare-fun b!859105 () Bool)

(declare-fun tp!270987 () Bool)

(declare-fun tp!270983 () Bool)

(assert (=> b!859105 (= e!565410 (and tp!270987 tp!270983))))

(assert (= (and b!858345 ((_ is ElementMatch!2169) (regOne!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859102))

(assert (= (and b!858345 ((_ is Concat!3972) (regOne!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859103))

(assert (= (and b!858345 ((_ is Star!2169) (regOne!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859104))

(assert (= (and b!858345 ((_ is Union!2169) (regOne!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859105))

(declare-fun b!859107 () Bool)

(declare-fun e!565411 () Bool)

(declare-fun tp!270990 () Bool)

(declare-fun tp!270991 () Bool)

(assert (=> b!859107 (= e!565411 (and tp!270990 tp!270991))))

(declare-fun b!859106 () Bool)

(assert (=> b!859106 (= e!565411 tp_is_empty!3997)))

(assert (=> b!858345 (= tp!270763 e!565411)))

(declare-fun b!859108 () Bool)

(declare-fun tp!270989 () Bool)

(assert (=> b!859108 (= e!565411 tp!270989)))

(declare-fun b!859109 () Bool)

(declare-fun tp!270992 () Bool)

(declare-fun tp!270988 () Bool)

(assert (=> b!859109 (= e!565411 (and tp!270992 tp!270988))))

(assert (= (and b!858345 ((_ is ElementMatch!2169) (regTwo!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859106))

(assert (= (and b!858345 ((_ is Concat!3972) (regTwo!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859107))

(assert (= (and b!858345 ((_ is Star!2169) (regTwo!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859108))

(assert (= (and b!858345 ((_ is Union!2169) (regTwo!4850 (regex!1736 (rule!3159 separatorToken!297))))) b!859109))

(declare-fun b!859111 () Bool)

(declare-fun e!565412 () Bool)

(declare-fun tp!270995 () Bool)

(declare-fun tp!270996 () Bool)

(assert (=> b!859111 (= e!565412 (and tp!270995 tp!270996))))

(declare-fun b!859110 () Bool)

(assert (=> b!859110 (= e!565412 tp_is_empty!3997)))

(assert (=> b!858346 (= tp!270761 e!565412)))

(declare-fun b!859112 () Bool)

(declare-fun tp!270994 () Bool)

(assert (=> b!859112 (= e!565412 tp!270994)))

(declare-fun b!859113 () Bool)

(declare-fun tp!270997 () Bool)

(declare-fun tp!270993 () Bool)

(assert (=> b!859113 (= e!565412 (and tp!270997 tp!270993))))

(assert (= (and b!858346 ((_ is ElementMatch!2169) (reg!2498 (regex!1736 (rule!3159 separatorToken!297))))) b!859110))

(assert (= (and b!858346 ((_ is Concat!3972) (reg!2498 (regex!1736 (rule!3159 separatorToken!297))))) b!859111))

(assert (= (and b!858346 ((_ is Star!2169) (reg!2498 (regex!1736 (rule!3159 separatorToken!297))))) b!859112))

(assert (= (and b!858346 ((_ is Union!2169) (reg!2498 (regex!1736 (rule!3159 separatorToken!297))))) b!859113))

(declare-fun b!859115 () Bool)

(declare-fun e!565413 () Bool)

(declare-fun tp!271000 () Bool)

(declare-fun tp!271001 () Bool)

(assert (=> b!859115 (= e!565413 (and tp!271000 tp!271001))))

(declare-fun b!859114 () Bool)

(assert (=> b!859114 (= e!565413 tp_is_empty!3997)))

(assert (=> b!858347 (= tp!270764 e!565413)))

(declare-fun b!859116 () Bool)

(declare-fun tp!270999 () Bool)

(assert (=> b!859116 (= e!565413 tp!270999)))

(declare-fun b!859117 () Bool)

(declare-fun tp!271002 () Bool)

(declare-fun tp!270998 () Bool)

(assert (=> b!859117 (= e!565413 (and tp!271002 tp!270998))))

(assert (= (and b!858347 ((_ is ElementMatch!2169) (regOne!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859114))

(assert (= (and b!858347 ((_ is Concat!3972) (regOne!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859115))

(assert (= (and b!858347 ((_ is Star!2169) (regOne!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859116))

(assert (= (and b!858347 ((_ is Union!2169) (regOne!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859117))

(declare-fun b!859119 () Bool)

(declare-fun e!565414 () Bool)

(declare-fun tp!271005 () Bool)

(declare-fun tp!271006 () Bool)

(assert (=> b!859119 (= e!565414 (and tp!271005 tp!271006))))

(declare-fun b!859118 () Bool)

(assert (=> b!859118 (= e!565414 tp_is_empty!3997)))

(assert (=> b!858347 (= tp!270760 e!565414)))

(declare-fun b!859120 () Bool)

(declare-fun tp!271004 () Bool)

(assert (=> b!859120 (= e!565414 tp!271004)))

(declare-fun b!859121 () Bool)

(declare-fun tp!271007 () Bool)

(declare-fun tp!271003 () Bool)

(assert (=> b!859121 (= e!565414 (and tp!271007 tp!271003))))

(assert (= (and b!858347 ((_ is ElementMatch!2169) (regTwo!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859118))

(assert (= (and b!858347 ((_ is Concat!3972) (regTwo!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859119))

(assert (= (and b!858347 ((_ is Star!2169) (regTwo!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859120))

(assert (= (and b!858347 ((_ is Union!2169) (regTwo!4851 (regex!1736 (rule!3159 separatorToken!297))))) b!859121))

(declare-fun b!859125 () Bool)

(declare-fun b_free!26105 () Bool)

(declare-fun b_next!26169 () Bool)

(assert (=> b!859125 (= b_free!26105 (not b_next!26169))))

(declare-fun tp!271012 () Bool)

(declare-fun b_and!76389 () Bool)

(assert (=> b!859125 (= tp!271012 b_and!76389)))

(declare-fun b_free!26107 () Bool)

(declare-fun b_next!26171 () Bool)

(assert (=> b!859125 (= b_free!26107 (not b_next!26171))))

(declare-fun tb!61377 () Bool)

(declare-fun t!97381 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324587))))) t!97381) tb!61377))

(declare-fun result!71006 () Bool)

(assert (= result!71006 result!70890))

(assert (=> d!269196 t!97381))

(declare-fun t!97383 () Bool)

(declare-fun tb!61379 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) t!97383) tb!61379))

(declare-fun result!71008 () Bool)

(assert (= result!71008 result!70840))

(assert (=> b!858714 t!97383))

(declare-fun tb!61381 () Bool)

(declare-fun t!97385 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324435)))))) t!97385) tb!61381))

(declare-fun result!71010 () Bool)

(assert (= result!71010 result!70790))

(assert (=> d!268998 t!97385))

(declare-fun tb!61383 () Bool)

(declare-fun t!97387 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324436))))) t!97387) tb!61383))

(declare-fun result!71012 () Bool)

(assert (= result!71012 result!70900))

(assert (=> d!269202 t!97387))

(declare-fun t!97389 () Bool)

(declare-fun tb!61385 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297)))) t!97389) tb!61385))

(declare-fun result!71014 () Bool)

(assert (= result!71014 result!70708))

(assert (=> b!858287 t!97389))

(declare-fun t!97391 () Bool)

(declare-fun tb!61387 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107))))) t!97391) tb!61387))

(declare-fun result!71016 () Bool)

(assert (= result!71016 result!70684))

(assert (=> b!858033 t!97391))

(declare-fun tb!61389 () Bool)

(declare-fun t!97393 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324594))))) t!97393) tb!61389))

(declare-fun result!71018 () Bool)

(assert (= result!71018 result!70970))

(assert (=> d!269322 t!97393))

(declare-fun t!97395 () Bool)

(declare-fun tb!61391 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324548))))) t!97395) tb!61391))

(declare-fun result!71020 () Bool)

(assert (= result!71020 result!70750))

(assert (=> d!268918 t!97395))

(declare-fun tb!61393 () Bool)

(declare-fun t!97397 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324443))))) t!97397) tb!61393))

(declare-fun result!71022 () Bool)

(assert (= result!71022 result!70870))

(assert (=> d!269166 t!97397))

(declare-fun t!97399 () Bool)

(declare-fun tb!61395 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 lt!324437)))) t!97399) tb!61395))

(declare-fun result!71024 () Bool)

(assert (= result!71024 result!70810))

(assert (=> d!269016 t!97399))

(assert (=> d!268866 t!97389))

(assert (=> d!268880 t!97391))

(declare-fun tb!61397 () Bool)

(declare-fun t!97401 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 lt!324555))))) t!97401) tb!61397))

(declare-fun result!71026 () Bool)

(assert (= result!71026 result!70880))

(assert (=> d!269182 t!97401))

(declare-fun t!97403 () Bool)

(declare-fun tb!61399 () Bool)

(assert (=> (and b!859125 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 lt!324436)))))) t!97403) tb!61399))

(declare-fun result!71028 () Bool)

(assert (= result!71028 result!70800))

(assert (=> d!269014 t!97403))

(declare-fun b_and!76391 () Bool)

(declare-fun tp!271009 () Bool)

(assert (=> b!859125 (= tp!271009 (and (=> t!97391 result!71016) (=> t!97383 result!71008) (=> t!97393 result!71018) (=> t!97399 result!71024) (=> t!97385 result!71010) (=> t!97389 result!71014) (=> t!97381 result!71006) (=> t!97397 result!71022) (=> t!97387 result!71012) (=> t!97403 result!71028) (=> t!97395 result!71020) (=> t!97401 result!71026) b_and!76391))))

(declare-fun e!565416 () Bool)

(assert (=> b!858335 (= tp!270755 e!565416)))

(declare-fun e!565417 () Bool)

(declare-fun e!565418 () Bool)

(declare-fun b!859124 () Bool)

(declare-fun tp!271008 () Bool)

(assert (=> b!859124 (= e!565418 (and tp!271008 (inv!11773 (tag!1998 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (inv!11777 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) e!565417))))

(declare-fun tp!271011 () Bool)

(declare-fun e!565415 () Bool)

(declare-fun b!859122 () Bool)

(assert (=> b!859122 (= e!565416 (and (inv!11776 (h!14657 (t!97050 (t!97050 l!5107)))) e!565415 tp!271011))))

(assert (=> b!859125 (= e!565417 (and tp!271012 tp!271009))))

(declare-fun b!859123 () Bool)

(declare-fun tp!271010 () Bool)

(assert (=> b!859123 (= e!565415 (and (inv!21 (value!56175 (h!14657 (t!97050 (t!97050 l!5107))))) e!565418 tp!271010))))

(assert (= b!859124 b!859125))

(assert (= b!859123 b!859124))

(assert (= b!859122 b!859123))

(assert (= (and b!858335 ((_ is Cons!9256) (t!97050 (t!97050 l!5107)))) b!859122))

(declare-fun m!1103029 () Bool)

(assert (=> b!859124 m!1103029))

(declare-fun m!1103031 () Bool)

(assert (=> b!859124 m!1103031))

(declare-fun m!1103033 () Bool)

(assert (=> b!859122 m!1103033))

(declare-fun m!1103035 () Bool)

(assert (=> b!859123 m!1103035))

(declare-fun b!859126 () Bool)

(declare-fun e!565421 () Bool)

(declare-fun tp!271013 () Bool)

(assert (=> b!859126 (= e!565421 (and tp_is_empty!3997 tp!271013))))

(assert (=> b!858336 (= tp!270754 e!565421)))

(assert (= (and b!858336 ((_ is Cons!9255) (originalCharacters!2292 (h!14657 (t!97050 l!5107))))) b!859126))

(declare-fun b!859128 () Bool)

(declare-fun e!565422 () Bool)

(declare-fun tp!271016 () Bool)

(declare-fun tp!271017 () Bool)

(assert (=> b!859128 (= e!565422 (and tp!271016 tp!271017))))

(declare-fun b!859127 () Bool)

(assert (=> b!859127 (= e!565422 tp_is_empty!3997)))

(assert (=> b!858337 (= tp!270752 e!565422)))

(declare-fun b!859129 () Bool)

(declare-fun tp!271015 () Bool)

(assert (=> b!859129 (= e!565422 tp!271015)))

(declare-fun b!859130 () Bool)

(declare-fun tp!271018 () Bool)

(declare-fun tp!271014 () Bool)

(assert (=> b!859130 (= e!565422 (and tp!271018 tp!271014))))

(assert (= (and b!858337 ((_ is ElementMatch!2169) (regex!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) b!859127))

(assert (= (and b!858337 ((_ is Concat!3972) (regex!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) b!859128))

(assert (= (and b!858337 ((_ is Star!2169) (regex!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) b!859129))

(assert (= (and b!858337 ((_ is Union!2169) (regex!1736 (rule!3159 (h!14657 (t!97050 l!5107)))))) b!859130))

(declare-fun b!859131 () Bool)

(declare-fun e!565423 () Bool)

(declare-fun tp!271019 () Bool)

(assert (=> b!859131 (= e!565423 (and tp_is_empty!3997 tp!271019))))

(assert (=> b!858359 (= tp!270777 e!565423)))

(assert (= (and b!858359 ((_ is Cons!9255) (t!97049 (originalCharacters!2292 separatorToken!297)))) b!859131))

(declare-fun b!859134 () Bool)

(declare-fun e!565426 () Bool)

(assert (=> b!859134 (= e!565426 true)))

(declare-fun b!859133 () Bool)

(declare-fun e!565425 () Bool)

(assert (=> b!859133 (= e!565425 e!565426)))

(declare-fun b!859132 () Bool)

(declare-fun e!565424 () Bool)

(assert (=> b!859132 (= e!565424 e!565425)))

(assert (=> b!858269 e!565424))

(assert (= b!859133 b!859134))

(assert (= b!859132 b!859133))

(assert (= (and b!858269 ((_ is Cons!9257) (t!97051 rules!2621))) b!859132))

(assert (=> b!859134 (< (dynLambda!4362 order!6003 (toValue!2797 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25759))))

(assert (=> b!859134 (< (dynLambda!4364 order!6007 (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621))))) (dynLambda!4363 order!6005 lambda!25759))))

(declare-fun b!859135 () Bool)

(declare-fun e!565427 () Bool)

(declare-fun tp!271020 () Bool)

(assert (=> b!859135 (= e!565427 (and tp_is_empty!3997 tp!271020))))

(assert (=> b!858343 (= tp!270759 e!565427)))

(assert (= (and b!858343 ((_ is Cons!9255) (t!97049 (originalCharacters!2292 (h!14657 l!5107))))) b!859135))

(declare-fun b_lambda!29029 () Bool)

(assert (= b_lambda!29007 (or d!268766 b_lambda!29029)))

(declare-fun bs!232324 () Bool)

(declare-fun d!269332 () Bool)

(assert (= bs!232324 (and d!269332 d!268766)))

(assert (=> bs!232324 (= (dynLambda!4365 lambda!25759 (h!14657 lt!324435)) (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324435)))))

(assert (=> bs!232324 m!1100759))

(assert (=> b!858859 d!269332))

(declare-fun b_lambda!29031 () Bool)

(assert (= b_lambda!28965 (or (and b!857944 b_free!26075) (and b!858358 b_free!26091 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!857947 b_free!26067 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!857942 b_free!26071 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!859060 b_free!26103 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!859125 b_free!26107 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) (and b!858338 b_free!26087 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))))) b_lambda!29031)))

(declare-fun b_lambda!29033 () Bool)

(assert (= b_lambda!28967 (or b!857938 b_lambda!29033)))

(declare-fun bs!232325 () Bool)

(declare-fun d!269334 () Bool)

(assert (= bs!232325 (and d!269334 b!857938)))

(assert (=> bs!232325 (= (dynLambda!4365 lambda!25750 (h!14657 (t!97050 l!5107))) (not (isSeparator!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))))

(assert (=> b!858530 d!269334))

(declare-fun b_lambda!29035 () Bool)

(assert (= b_lambda!29025 (or d!268774 b_lambda!29035)))

(declare-fun bs!232326 () Bool)

(declare-fun d!269336 () Bool)

(assert (= bs!232326 (and d!269336 d!268774)))

(assert (=> bs!232326 (= (dynLambda!4365 lambda!25760 (h!14657 l!5107)) (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 l!5107)))))

(assert (=> bs!232326 m!1101109))

(assert (=> b!859013 d!269336))

(declare-fun b_lambda!29037 () Bool)

(assert (= b_lambda!28963 (or (and b!859060 b_free!26103 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!859125 b_free!26107 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!858338 b_free!26087 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857944 b_free!26075 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!858358 b_free!26091 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857942 b_free!26071 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))))) (and b!857947 b_free!26067) b_lambda!29037)))

(declare-fun b_lambda!29039 () Bool)

(assert (= b_lambda!28991 (or (and b!857942 b_free!26071 (= (toChars!2656 (transformation!1736 (h!14658 rules!2621))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!857947 b_free!26067 (= (toChars!2656 (transformation!1736 (rule!3159 separatorToken!297))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!858358 b_free!26091 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 rules!2621)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!859060 b_free!26103 (= (toChars!2656 (transformation!1736 (h!14658 (t!97051 (t!97051 rules!2621))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!857944 b_free!26075 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 l!5107)))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!859125 b_free!26107 (= (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 (t!97050 l!5107)))))) (toChars!2656 (transformation!1736 (rule!3159 (h!14657 (t!97050 l!5107))))))) (and b!858338 b_free!26087) b_lambda!29039)))

(declare-fun b_lambda!29041 () Bool)

(assert (= b_lambda!28997 (or d!268698 b_lambda!29041)))

(declare-fun bs!232327 () Bool)

(declare-fun d!269338 () Bool)

(assert (= bs!232327 (and d!269338 d!268698)))

(assert (=> bs!232327 (= (dynLambda!4365 lambda!25757 (h!14657 lt!324436)) (rulesProduceIndividualToken!602 thiss!20117 rules!2621 (h!14657 lt!324436)))))

(assert (=> bs!232327 m!1100843))

(assert (=> b!858761 d!269338))

(check-sat b_and!76383 (not b!859075) (not b!858653) (not d!268906) (not b!859063) (not b!859025) (not b!858813) (not d!269330) (not d!269320) (not b!859021) (not b!858540) (not b!858528) (not b!858861) (not b!859119) (not b!858762) (not b!859132) (not b!858647) (not b!858829) (not b!859058) (not d!268940) (not b!858780) tp_is_empty!3997 (not d!268944) (not b!858512) (not d!268874) (not b!858517) (not b!858039) (not b!858797) (not b!858488) (not d!268882) (not d!269310) (not d!268994) (not b_lambda!29033) (not d!269116) (not tb!61165) (not b!859067) (not b!858289) (not b!859115) (not b!858493) (not b!858568) (not b!858777) (not b!859049) (not d!269292) (not bm!50538) (not b!858630) (not b!858824) (not b_lambda!28981) (not b_next!26131) (not d!268864) (not d!268924) (not b!859010) (not b_lambda!29005) (not b!859047) (not b!859043) (not b!859079) (not b_lambda!29041) (not d!269252) (not d!269156) (not b!858489) (not b!858773) (not b!858531) (not b!859120) (not b_next!26137) (not b!858507) (not b!858847) (not b!859092) (not b!858850) (not tb!61125) (not b!858543) (not d!269120) (not b!858994) (not b!859096) (not b!859124) (not b!858796) (not b!859103) (not b!858537) (not b!859078) (not b!859107) (not d!269008) (not b!859034) (not b!859109) (not b!858812) (not b_lambda!29029) (not b!858790) (not d!269004) (not b!858987) (not d!268930) (not b!859090) (not b!858649) (not b!858811) (not b!858857) (not b!859113) (not b!858581) (not b!859101) (not d!269168) (not b!858817) (not tb!61215) (not b!858787) (not b_lambda!28945) (not bs!232324) (not b!858545) (not d!269002) (not b!858827) (not b!858826) (not d!268890) (not tb!61185) (not b!858629) (not b!858864) (not d!268870) (not b!859116) b_and!76389 (not b!859048) (not b!859051) (not d!268912) (not d!268918) (not b!858637) (not d!269200) (not b!859093) (not d!269010) (not b_next!26133) (not b!858538) (not d!269314) (not b!859094) (not d!269164) (not b!859006) (not d!269190) b_and!76387 (not b!858492) (not b!859129) (not b!859001) b_and!76391 (not b!858628) (not b!858623) (not b!859009) (not d!269166) (not b!858788) b_and!76377 (not b!858996) (not b!858532) (not b_lambda!29003) (not b!859004) (not d!269316) (not b!858990) (not d!269152) (not b_next!26165) (not b!859066) (not d!268884) (not bs!232327) (not d!269300) (not b_next!26167) (not b_lambda!29027) (not b!859108) (not d!269206) (not d!268914) (not b!858562) (not d!269288) (not b!859105) (not b!858784) (not d!268888) (not b!859014) (not b!859084) (not d!268946) (not b_next!26171) (not b!859074) (not b_lambda!28977) (not b!858828) (not b!858856) (not b!859080) (not b!859123) (not b!858518) (not b_lambda!28949) (not b!859027) (not b!858823) (not b!858808) (not d!269204) (not b_lambda!29001) (not d!268916) (not d!268998) (not d!268942) (not tb!61265) (not b!858715) (not b!858627) (not b!858794) (not b!859104) (not d!268896) (not b!858519) b_and!76089 (not b!858542) (not b!859002) (not b_lambda!28999) (not b_next!26155) (not b!859076) (not b_lambda!28947) (not d!269124) b_and!76381 (not b!858865) (not d!269018) (not d!269196) (not b!859088) (not b!858825) (not d!269144) (not b!859059) (not d!268996) (not d!269286) (not b!859056) (not d!269304) (not d!269180) b_and!76385 (not b!858733) b_and!76133 (not d!269230) b_and!76375 (not d!269012) (not b!858849) (not b!858860) (not b!858793) (not d!269284) (not b!858561) (not b!858513) (not d!269210) (not b!859015) (not b!858527) (not b_lambda!29039) (not b!859126) (not b!859121) (not b!859028) (not b!858624) (not b!858734) (not b!858866) (not d!269148) (not b_lambda!29035) (not d!269150) (not d!268938) (not b!858652) (not tb!61175) (not b!858770) (not b!859128) (not b!859089) (not d!269162) (not b!858499) (not b_next!26139) (not b!858503) (not d!268868) (not b!858768) (not d!269000) (not tb!61343) b_and!76379 (not b!858625) b_and!76129 (not b!858740) (not b_next!26169) (not b!859052) (not b!858529) (not d!269244) (not b!859055) (not b!859045) (not tb!61245) b_and!76085 (not b!858739) (not d!269110) (not b_lambda!29037) (not b_next!26129) (not b!859053) (not b_next!26151) (not b!859003) (not d!269108) (not d!269322) (not b!858506) (not b!858525) (not b!858783) (not b!858863) (not d!269312) (not d!269318) (not b!859016) (not d!269172) (not b!859033) (not d!269246) (not b!858735) (not b_next!26153) (not d!269234) (not b!859098) (not d!269302) (not b_lambda!29031) (not d!268926) (not b!858626) (not b!858738) (not d!269282) (not b!858997) (not b!858769) (not d!269194) (not b!859117) (not b!859100) (not bs!232326) (not b!859068) (not d!269096) (not tb!61255) (not d!269092) (not b!859071) (not b_next!26149) (not b!858515) (not b!858991) (not b!858821) (not d!269248) (not b!859112) (not d!269208) (not b!859022) (not b!858646) (not d!269016) (not d!268880) (not b!859072) (not d!269250) (not b!858989) (not d!269186) (not tb!61275) (not d!268872) (not d!269254) (not b!858871) (not b!859044) (not d!269006) (not b_lambda!28979) (not b!858569) (not b!858654) (not d!269014) (not d!269178) (not b!859111) (not b!859097) (not d!269182) (not b!858580) (not d!269122) (not b!859017) (not b!858579) (not b!859099) (not b!859131) (not b!858820) (not d!268866) (not b!858772) (not b!859081) (not b!859057) b_and!76093 (not b!859130) (not b!858714) (not b!858631) (not d!269202) (not b!858775) (not b!858546) (not b!859122) (not b!858544) (not d!269170) (not b!858502) (not b!859070) (not b!858995) (not b!859062) (not b!858632) (not b!859064) (not d!269192) (not b!859135) (not b!858818) (not b!859012) (not b!858716) (not b!859024) (not b_next!26135) (not b!858779) (not b!858648) (not b_lambda!28969))
(check-sat b_and!76383 (not b_next!26131) (not b_next!26137) b_and!76377 (not b_next!26171) b_and!76089 (not b_next!26153) (not b_next!26149) b_and!76093 (not b_next!26135) b_and!76389 (not b_next!26133) b_and!76387 b_and!76391 (not b_next!26165) (not b_next!26167) (not b_next!26155) b_and!76381 b_and!76385 b_and!76375 b_and!76133 b_and!76379 b_and!76129 (not b_next!26139) (not b_next!26169) (not b_next!26151) b_and!76085 (not b_next!26129))
