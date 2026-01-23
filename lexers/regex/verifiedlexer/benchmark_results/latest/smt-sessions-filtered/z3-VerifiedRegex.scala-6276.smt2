; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!310874 () Bool)

(assert start!310874)

(declare-fun b!3328593 () Bool)

(declare-fun b_free!87625 () Bool)

(declare-fun b_next!88329 () Bool)

(assert (=> b!3328593 (= b_free!87625 (not b_next!88329))))

(declare-fun tp!1040343 () Bool)

(declare-fun b_and!229467 () Bool)

(assert (=> b!3328593 (= tp!1040343 b_and!229467)))

(declare-fun b_free!87627 () Bool)

(declare-fun b_next!88331 () Bool)

(assert (=> b!3328593 (= b_free!87627 (not b_next!88331))))

(declare-fun tp!1040344 () Bool)

(declare-fun b_and!229469 () Bool)

(assert (=> b!3328593 (= tp!1040344 b_and!229469)))

(declare-fun b!3328576 () Bool)

(declare-fun b_free!87629 () Bool)

(declare-fun b_next!88333 () Bool)

(assert (=> b!3328576 (= b_free!87629 (not b_next!88333))))

(declare-fun tp!1040347 () Bool)

(declare-fun b_and!229471 () Bool)

(assert (=> b!3328576 (= tp!1040347 b_and!229471)))

(declare-fun b_free!87631 () Bool)

(declare-fun b_next!88335 () Bool)

(assert (=> b!3328576 (= b_free!87631 (not b_next!88335))))

(declare-fun tp!1040345 () Bool)

(declare-fun b_and!229473 () Bool)

(assert (=> b!3328576 (= tp!1040345 b_and!229473)))

(declare-fun b!3328586 () Bool)

(declare-fun b_free!87633 () Bool)

(declare-fun b_next!88337 () Bool)

(assert (=> b!3328586 (= b_free!87633 (not b_next!88337))))

(declare-fun tp!1040349 () Bool)

(declare-fun b_and!229475 () Bool)

(assert (=> b!3328586 (= tp!1040349 b_and!229475)))

(declare-fun b_free!87635 () Bool)

(declare-fun b_next!88339 () Bool)

(assert (=> b!3328586 (= b_free!87635 (not b_next!88339))))

(declare-fun tp!1040342 () Bool)

(declare-fun b_and!229477 () Bool)

(assert (=> b!3328586 (= tp!1040342 b_and!229477)))

(declare-fun tp!1040341 () Bool)

(declare-fun e!2069966 () Bool)

(declare-fun e!2069951 () Bool)

(declare-datatypes ((C!20368 0))(
  ( (C!20369 (val!12232 Int)) )
))
(declare-datatypes ((Regex!10091 0))(
  ( (ElementMatch!10091 (c!565308 C!20368)) (Concat!15653 (regOne!20694 Regex!10091) (regTwo!20694 Regex!10091)) (EmptyExpr!10091) (Star!10091 (reg!10420 Regex!10091)) (EmptyLang!10091) (Union!10091 (regOne!20695 Regex!10091) (regTwo!20695 Regex!10091)) )
))
(declare-datatypes ((List!36792 0))(
  ( (Nil!36668) (Cons!36668 (h!42088 (_ BitVec 16)) (t!256917 List!36792)) )
))
(declare-datatypes ((TokenValue!5562 0))(
  ( (FloatLiteralValue!11124 (text!39379 List!36792)) (TokenValueExt!5561 (__x!23341 Int)) (Broken!27810 (value!172396 List!36792)) (Object!5685) (End!5562) (Def!5562) (Underscore!5562) (Match!5562) (Else!5562) (Error!5562) (Case!5562) (If!5562) (Extends!5562) (Abstract!5562) (Class!5562) (Val!5562) (DelimiterValue!11124 (del!5622 List!36792)) (KeywordValue!5568 (value!172397 List!36792)) (CommentValue!11124 (value!172398 List!36792)) (WhitespaceValue!11124 (value!172399 List!36792)) (IndentationValue!5562 (value!172400 List!36792)) (String!41143) (Int32!5562) (Broken!27811 (value!172401 List!36792)) (Boolean!5563) (Unit!51681) (OperatorValue!5565 (op!5622 List!36792)) (IdentifierValue!11124 (value!172402 List!36792)) (IdentifierValue!11125 (value!172403 List!36792)) (WhitespaceValue!11125 (value!172404 List!36792)) (True!11124) (False!11124) (Broken!27812 (value!172405 List!36792)) (Broken!27813 (value!172406 List!36792)) (True!11125) (RightBrace!5562) (RightBracket!5562) (Colon!5562) (Null!5562) (Comma!5562) (LeftBracket!5562) (False!11125) (LeftBrace!5562) (ImaginaryLiteralValue!5562 (text!39380 List!36792)) (StringLiteralValue!16686 (value!172407 List!36792)) (EOFValue!5562 (value!172408 List!36792)) (IdentValue!5562 (value!172409 List!36792)) (DelimiterValue!11125 (value!172410 List!36792)) (DedentValue!5562 (value!172411 List!36792)) (NewLineValue!5562 (value!172412 List!36792)) (IntegerValue!16686 (value!172413 (_ BitVec 32)) (text!39381 List!36792)) (IntegerValue!16687 (value!172414 Int) (text!39382 List!36792)) (Times!5562) (Or!5562) (Equal!5562) (Minus!5562) (Broken!27814 (value!172415 List!36792)) (And!5562) (Div!5562) (LessEqual!5562) (Mod!5562) (Concat!15654) (Not!5562) (Plus!5562) (SpaceValue!5562 (value!172416 List!36792)) (IntegerValue!16688 (value!172417 Int) (text!39383 List!36792)) (StringLiteralValue!16687 (text!39384 List!36792)) (FloatLiteralValue!11125 (text!39385 List!36792)) (BytesLiteralValue!5562 (value!172418 List!36792)) (CommentValue!11125 (value!172419 List!36792)) (StringLiteralValue!16688 (value!172420 List!36792)) (ErrorTokenValue!5562 (msg!5623 List!36792)) )
))
(declare-datatypes ((List!36793 0))(
  ( (Nil!36669) (Cons!36669 (h!42089 C!20368) (t!256918 List!36793)) )
))
(declare-datatypes ((IArray!22083 0))(
  ( (IArray!22084 (innerList!11099 List!36793)) )
))
(declare-datatypes ((Conc!11039 0))(
  ( (Node!11039 (left!28579 Conc!11039) (right!28909 Conc!11039) (csize!22308 Int) (cheight!11250 Int)) (Leaf!17316 (xs!14177 IArray!22083) (csize!22309 Int)) (Empty!11039) )
))
(declare-datatypes ((BalanceConc!21692 0))(
  ( (BalanceConc!21693 (c!565309 Conc!11039)) )
))
(declare-datatypes ((String!41144 0))(
  ( (String!41145 (value!172421 String)) )
))
(declare-datatypes ((TokenValueInjection!10552 0))(
  ( (TokenValueInjection!10553 (toValue!7496 Int) (toChars!7355 Int)) )
))
(declare-datatypes ((Rule!10464 0))(
  ( (Rule!10465 (regex!5332 Regex!10091) (tag!5884 String!41144) (isSeparator!5332 Bool) (transformation!5332 TokenValueInjection!10552)) )
))
(declare-datatypes ((Token!10030 0))(
  ( (Token!10031 (value!172422 TokenValue!5562) (rule!7854 Rule!10464) (size!27723 Int) (originalCharacters!6046 List!36793)) )
))
(declare-datatypes ((List!36794 0))(
  ( (Nil!36670) (Cons!36670 (h!42090 Token!10030) (t!256919 List!36794)) )
))
(declare-fun tokens!494 () List!36794)

(declare-fun b!3328572 () Bool)

(declare-fun inv!49675 (String!41144) Bool)

(declare-fun inv!49678 (TokenValueInjection!10552) Bool)

(assert (=> b!3328572 (= e!2069966 (and tp!1040341 (inv!49675 (tag!5884 (rule!7854 (h!42090 tokens!494)))) (inv!49678 (transformation!5332 (rule!7854 (h!42090 tokens!494)))) e!2069951))))

(declare-fun b!3328573 () Bool)

(declare-fun tp!1040340 () Bool)

(declare-fun e!2069950 () Bool)

(declare-fun e!2069958 () Bool)

(declare-fun inv!49679 (Token!10030) Bool)

(assert (=> b!3328573 (= e!2069958 (and (inv!49679 (h!42090 tokens!494)) e!2069950 tp!1040340))))

(declare-fun b!3328574 () Bool)

(declare-fun res!1349983 () Bool)

(declare-fun e!2069964 () Bool)

(assert (=> b!3328574 (=> (not res!1349983) (not e!2069964))))

(declare-fun separatorToken!241 () Token!10030)

(assert (=> b!3328574 (= res!1349983 (isSeparator!5332 (rule!7854 separatorToken!241)))))

(declare-fun b!3328575 () Bool)

(declare-fun res!1349985 () Bool)

(assert (=> b!3328575 (=> (not res!1349985) (not e!2069964))))

(declare-datatypes ((List!36795 0))(
  ( (Nil!36671) (Cons!36671 (h!42091 Rule!10464) (t!256920 List!36795)) )
))
(declare-fun rules!2135 () List!36795)

(declare-fun sepAndNonSepRulesDisjointChars!1526 (List!36795 List!36795) Bool)

(assert (=> b!3328575 (= res!1349985 (sepAndNonSepRulesDisjointChars!1526 rules!2135 rules!2135))))

(assert (=> b!3328576 (= e!2069951 (and tp!1040347 tp!1040345))))

(declare-fun b!3328577 () Bool)

(declare-fun res!1349989 () Bool)

(declare-fun e!2069955 () Bool)

(assert (=> b!3328577 (=> res!1349989 e!2069955)))

(declare-datatypes ((LexerInterface!4921 0))(
  ( (LexerInterfaceExt!4918 (__x!23342 Int)) (Lexer!4919) )
))
(declare-fun thiss!18206 () LexerInterface!4921)

(declare-fun rulesProduceIndividualToken!2413 (LexerInterface!4921 List!36795 Token!10030) Bool)

(assert (=> b!3328577 (= res!1349989 (not (rulesProduceIndividualToken!2413 thiss!18206 rules!2135 (h!42090 tokens!494))))))

(declare-fun b!3328578 () Bool)

(declare-fun res!1349993 () Bool)

(assert (=> b!3328578 (=> (not res!1349993) (not e!2069964))))

(declare-fun lambda!119757 () Int)

(declare-fun forall!7655 (List!36794 Int) Bool)

(assert (=> b!3328578 (= res!1349993 (forall!7655 tokens!494 lambda!119757))))

(declare-fun e!2069968 () Bool)

(declare-fun e!2069949 () Bool)

(declare-fun b!3328580 () Bool)

(declare-fun tp!1040350 () Bool)

(declare-fun inv!21 (TokenValue!5562) Bool)

(assert (=> b!3328580 (= e!2069968 (and (inv!21 (value!172422 separatorToken!241)) e!2069949 tp!1040350))))

(declare-fun b!3328581 () Bool)

(declare-fun res!1349986 () Bool)

(assert (=> b!3328581 (=> (not res!1349986) (not e!2069964))))

(assert (=> b!3328581 (= res!1349986 (rulesProduceIndividualToken!2413 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3328582 () Bool)

(declare-fun res!1349994 () Bool)

(declare-fun e!2069961 () Bool)

(assert (=> b!3328582 (=> (not res!1349994) (not e!2069961))))

(declare-fun rulesInvariant!4318 (LexerInterface!4921 List!36795) Bool)

(assert (=> b!3328582 (= res!1349994 (rulesInvariant!4318 thiss!18206 rules!2135))))

(declare-fun b!3328583 () Bool)

(declare-fun tp!1040352 () Bool)

(assert (=> b!3328583 (= e!2069950 (and (inv!21 (value!172422 (h!42090 tokens!494))) e!2069966 tp!1040352))))

(declare-fun b!3328584 () Bool)

(declare-fun e!2069953 () Bool)

(assert (=> b!3328584 (= e!2069964 (not e!2069953))))

(declare-fun res!1349984 () Bool)

(assert (=> b!3328584 (=> res!1349984 e!2069953)))

(declare-fun lt!1131217 () List!36793)

(declare-fun lt!1131218 () List!36793)

(assert (=> b!3328584 (= res!1349984 (not (= lt!1131217 lt!1131218)))))

(declare-fun printList!1469 (LexerInterface!4921 List!36794) List!36793)

(assert (=> b!3328584 (= lt!1131218 (printList!1469 thiss!18206 (Cons!36670 (h!42090 tokens!494) Nil!36670)))))

(declare-fun lt!1131213 () BalanceConc!21692)

(declare-fun list!13207 (BalanceConc!21692) List!36793)

(assert (=> b!3328584 (= lt!1131217 (list!13207 lt!1131213))))

(declare-datatypes ((IArray!22085 0))(
  ( (IArray!22086 (innerList!11100 List!36794)) )
))
(declare-datatypes ((Conc!11040 0))(
  ( (Node!11040 (left!28580 Conc!11040) (right!28910 Conc!11040) (csize!22310 Int) (cheight!11251 Int)) (Leaf!17317 (xs!14178 IArray!22085) (csize!22311 Int)) (Empty!11040) )
))
(declare-datatypes ((BalanceConc!21694 0))(
  ( (BalanceConc!21695 (c!565310 Conc!11040)) )
))
(declare-fun lt!1131215 () BalanceConc!21694)

(declare-fun printTailRec!1416 (LexerInterface!4921 BalanceConc!21694 Int BalanceConc!21692) BalanceConc!21692)

(assert (=> b!3328584 (= lt!1131213 (printTailRec!1416 thiss!18206 lt!1131215 0 (BalanceConc!21693 Empty!11039)))))

(declare-fun print!1986 (LexerInterface!4921 BalanceConc!21694) BalanceConc!21692)

(assert (=> b!3328584 (= lt!1131213 (print!1986 thiss!18206 lt!1131215))))

(declare-fun singletonSeq!2428 (Token!10030) BalanceConc!21694)

(assert (=> b!3328584 (= lt!1131215 (singletonSeq!2428 (h!42090 tokens!494)))))

(declare-fun b!3328585 () Bool)

(assert (=> b!3328585 (= e!2069953 e!2069955)))

(declare-fun res!1349991 () Bool)

(assert (=> b!3328585 (=> res!1349991 e!2069955)))

(declare-fun lt!1131219 () List!36793)

(assert (=> b!3328585 (= res!1349991 (or (not (= lt!1131218 lt!1131219)) (not (= lt!1131217 lt!1131219))))))

(declare-fun charsOf!3346 (Token!10030) BalanceConc!21692)

(assert (=> b!3328585 (= lt!1131219 (list!13207 (charsOf!3346 (h!42090 tokens!494))))))

(declare-fun e!2069959 () Bool)

(assert (=> b!3328586 (= e!2069959 (and tp!1040349 tp!1040342))))

(declare-fun b!3328587 () Bool)

(declare-fun e!2069956 () Bool)

(assert (=> b!3328587 (= e!2069956 true)))

(declare-datatypes ((Unit!51682 0))(
  ( (Unit!51683) )
))
(declare-fun lt!1131216 () Unit!51682)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!916 (LexerInterface!4921 List!36795 List!36794 Token!10030) Unit!51682)

(assert (=> b!3328587 (= lt!1131216 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!916 thiss!18206 rules!2135 tokens!494 (h!42090 tokens!494)))))

(declare-fun isEmpty!20833 (List!36793) Bool)

(declare-fun getSuffix!1426 (List!36793 List!36793) List!36793)

(assert (=> b!3328587 (isEmpty!20833 (getSuffix!1426 lt!1131219 lt!1131219))))

(declare-fun lt!1131214 () Unit!51682)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!84 (List!36793) Unit!51682)

(assert (=> b!3328587 (= lt!1131214 (lemmaGetSuffixOnListWithItSelfIsEmpty!84 lt!1131219))))

(declare-fun b!3328588 () Bool)

(declare-fun res!1349992 () Bool)

(assert (=> b!3328588 (=> res!1349992 e!2069955)))

(declare-fun isEmpty!20834 (BalanceConc!21694) Bool)

(declare-datatypes ((tuple2!36174 0))(
  ( (tuple2!36175 (_1!21221 BalanceConc!21694) (_2!21221 BalanceConc!21692)) )
))
(declare-fun lex!2247 (LexerInterface!4921 List!36795 BalanceConc!21692) tuple2!36174)

(declare-fun seqFromList!3717 (List!36793) BalanceConc!21692)

(assert (=> b!3328588 (= res!1349992 (isEmpty!20834 (_1!21221 (lex!2247 thiss!18206 rules!2135 (seqFromList!3717 lt!1131219)))))))

(declare-fun b!3328589 () Bool)

(declare-fun res!1349981 () Bool)

(assert (=> b!3328589 (=> res!1349981 e!2069956)))

(declare-fun lt!1131212 () BalanceConc!21694)

(declare-fun printWithSeparatorToken!112 (LexerInterface!4921 BalanceConc!21694 Token!10030) BalanceConc!21692)

(declare-fun ++!8915 (List!36793 List!36793) List!36793)

(assert (=> b!3328589 (= res!1349981 (not (= (list!13207 (printWithSeparatorToken!112 thiss!18206 lt!1131212 separatorToken!241)) (++!8915 lt!1131219 (list!13207 (charsOf!3346 separatorToken!241))))))))

(declare-fun b!3328590 () Bool)

(declare-fun e!2069962 () Bool)

(declare-fun e!2069963 () Bool)

(declare-fun tp!1040351 () Bool)

(assert (=> b!3328590 (= e!2069962 (and e!2069963 tp!1040351))))

(declare-fun b!3328591 () Bool)

(assert (=> b!3328591 (= e!2069961 e!2069964)))

(declare-fun res!1349987 () Bool)

(assert (=> b!3328591 (=> (not res!1349987) (not e!2069964))))

(declare-fun rulesProduceEachTokenIndividually!1372 (LexerInterface!4921 List!36795 BalanceConc!21694) Bool)

(assert (=> b!3328591 (= res!1349987 (rulesProduceEachTokenIndividually!1372 thiss!18206 rules!2135 lt!1131212))))

(declare-fun seqFromList!3718 (List!36794) BalanceConc!21694)

(assert (=> b!3328591 (= lt!1131212 (seqFromList!3718 tokens!494))))

(declare-fun b!3328592 () Bool)

(assert (=> b!3328592 (= e!2069955 e!2069956)))

(declare-fun res!1349982 () Bool)

(assert (=> b!3328592 (=> res!1349982 e!2069956)))

(assert (=> b!3328592 (= res!1349982 (isSeparator!5332 (rule!7854 (h!42090 tokens!494))))))

(declare-fun lt!1131220 () Unit!51682)

(declare-fun forallContained!1279 (List!36794 Int Token!10030) Unit!51682)

(assert (=> b!3328592 (= lt!1131220 (forallContained!1279 tokens!494 lambda!119757 (h!42090 tokens!494)))))

(declare-fun e!2069965 () Bool)

(assert (=> b!3328593 (= e!2069965 (and tp!1040343 tp!1040344))))

(declare-fun tp!1040346 () Bool)

(declare-fun b!3328594 () Bool)

(assert (=> b!3328594 (= e!2069963 (and tp!1040346 (inv!49675 (tag!5884 (h!42091 rules!2135))) (inv!49678 (transformation!5332 (h!42091 rules!2135))) e!2069965))))

(declare-fun b!3328595 () Bool)

(declare-fun res!1349995 () Bool)

(assert (=> b!3328595 (=> (not res!1349995) (not e!2069964))))

(get-info :version)

(assert (=> b!3328595 (= res!1349995 (and (not ((_ is Nil!36670) tokens!494)) ((_ is Nil!36670) (t!256919 tokens!494))))))

(declare-fun b!3328596 () Bool)

(declare-fun res!1349990 () Bool)

(assert (=> b!3328596 (=> (not res!1349990) (not e!2069961))))

(declare-fun isEmpty!20835 (List!36795) Bool)

(assert (=> b!3328596 (= res!1349990 (not (isEmpty!20835 rules!2135)))))

(declare-fun res!1349988 () Bool)

(assert (=> start!310874 (=> (not res!1349988) (not e!2069961))))

(assert (=> start!310874 (= res!1349988 ((_ is Lexer!4919) thiss!18206))))

(assert (=> start!310874 e!2069961))

(assert (=> start!310874 true))

(assert (=> start!310874 e!2069962))

(assert (=> start!310874 (and (inv!49679 separatorToken!241) e!2069968)))

(assert (=> start!310874 e!2069958))

(declare-fun b!3328579 () Bool)

(declare-fun tp!1040348 () Bool)

(assert (=> b!3328579 (= e!2069949 (and tp!1040348 (inv!49675 (tag!5884 (rule!7854 separatorToken!241))) (inv!49678 (transformation!5332 (rule!7854 separatorToken!241))) e!2069959))))

(assert (= (and start!310874 res!1349988) b!3328596))

(assert (= (and b!3328596 res!1349990) b!3328582))

(assert (= (and b!3328582 res!1349994) b!3328591))

(assert (= (and b!3328591 res!1349987) b!3328581))

(assert (= (and b!3328581 res!1349986) b!3328574))

(assert (= (and b!3328574 res!1349983) b!3328578))

(assert (= (and b!3328578 res!1349993) b!3328575))

(assert (= (and b!3328575 res!1349985) b!3328595))

(assert (= (and b!3328595 res!1349995) b!3328584))

(assert (= (and b!3328584 (not res!1349984)) b!3328585))

(assert (= (and b!3328585 (not res!1349991)) b!3328577))

(assert (= (and b!3328577 (not res!1349989)) b!3328588))

(assert (= (and b!3328588 (not res!1349992)) b!3328592))

(assert (= (and b!3328592 (not res!1349982)) b!3328589))

(assert (= (and b!3328589 (not res!1349981)) b!3328587))

(assert (= b!3328594 b!3328593))

(assert (= b!3328590 b!3328594))

(assert (= (and start!310874 ((_ is Cons!36671) rules!2135)) b!3328590))

(assert (= b!3328579 b!3328586))

(assert (= b!3328580 b!3328579))

(assert (= start!310874 b!3328580))

(assert (= b!3328572 b!3328576))

(assert (= b!3328583 b!3328572))

(assert (= b!3328573 b!3328583))

(assert (= (and start!310874 ((_ is Cons!36670) tokens!494)) b!3328573))

(declare-fun m!3669447 () Bool)

(assert (=> b!3328591 m!3669447))

(declare-fun m!3669449 () Bool)

(assert (=> b!3328591 m!3669449))

(declare-fun m!3669451 () Bool)

(assert (=> b!3328589 m!3669451))

(declare-fun m!3669453 () Bool)

(assert (=> b!3328589 m!3669453))

(declare-fun m!3669455 () Bool)

(assert (=> b!3328589 m!3669455))

(declare-fun m!3669457 () Bool)

(assert (=> b!3328589 m!3669457))

(assert (=> b!3328589 m!3669453))

(assert (=> b!3328589 m!3669455))

(assert (=> b!3328589 m!3669451))

(declare-fun m!3669459 () Bool)

(assert (=> b!3328589 m!3669459))

(declare-fun m!3669461 () Bool)

(assert (=> b!3328587 m!3669461))

(declare-fun m!3669463 () Bool)

(assert (=> b!3328587 m!3669463))

(assert (=> b!3328587 m!3669463))

(declare-fun m!3669465 () Bool)

(assert (=> b!3328587 m!3669465))

(declare-fun m!3669467 () Bool)

(assert (=> b!3328587 m!3669467))

(declare-fun m!3669469 () Bool)

(assert (=> b!3328575 m!3669469))

(declare-fun m!3669471 () Bool)

(assert (=> b!3328596 m!3669471))

(declare-fun m!3669473 () Bool)

(assert (=> b!3328573 m!3669473))

(declare-fun m!3669475 () Bool)

(assert (=> b!3328578 m!3669475))

(declare-fun m!3669477 () Bool)

(assert (=> b!3328581 m!3669477))

(declare-fun m!3669479 () Bool)

(assert (=> b!3328572 m!3669479))

(declare-fun m!3669481 () Bool)

(assert (=> b!3328572 m!3669481))

(declare-fun m!3669483 () Bool)

(assert (=> b!3328582 m!3669483))

(declare-fun m!3669485 () Bool)

(assert (=> b!3328580 m!3669485))

(declare-fun m!3669487 () Bool)

(assert (=> b!3328579 m!3669487))

(declare-fun m!3669489 () Bool)

(assert (=> b!3328579 m!3669489))

(declare-fun m!3669491 () Bool)

(assert (=> b!3328577 m!3669491))

(declare-fun m!3669493 () Bool)

(assert (=> b!3328585 m!3669493))

(assert (=> b!3328585 m!3669493))

(declare-fun m!3669495 () Bool)

(assert (=> b!3328585 m!3669495))

(declare-fun m!3669497 () Bool)

(assert (=> b!3328583 m!3669497))

(declare-fun m!3669499 () Bool)

(assert (=> start!310874 m!3669499))

(declare-fun m!3669501 () Bool)

(assert (=> b!3328584 m!3669501))

(declare-fun m!3669503 () Bool)

(assert (=> b!3328584 m!3669503))

(declare-fun m!3669505 () Bool)

(assert (=> b!3328584 m!3669505))

(declare-fun m!3669507 () Bool)

(assert (=> b!3328584 m!3669507))

(declare-fun m!3669509 () Bool)

(assert (=> b!3328584 m!3669509))

(declare-fun m!3669511 () Bool)

(assert (=> b!3328588 m!3669511))

(assert (=> b!3328588 m!3669511))

(declare-fun m!3669513 () Bool)

(assert (=> b!3328588 m!3669513))

(declare-fun m!3669515 () Bool)

(assert (=> b!3328588 m!3669515))

(declare-fun m!3669517 () Bool)

(assert (=> b!3328594 m!3669517))

(declare-fun m!3669519 () Bool)

(assert (=> b!3328594 m!3669519))

(declare-fun m!3669521 () Bool)

(assert (=> b!3328592 m!3669521))

(check-sat (not b!3328594) b_and!229467 (not b!3328587) (not b!3328573) (not b_next!88339) b_and!229475 (not b!3328579) (not b!3328588) b_and!229477 (not b!3328591) (not b!3328596) (not b!3328578) (not start!310874) (not b!3328581) (not b!3328589) (not b_next!88333) (not b!3328585) (not b!3328572) b_and!229471 (not b!3328583) (not b!3328584) b_and!229473 (not b!3328575) (not b!3328580) (not b!3328590) (not b!3328577) (not b_next!88331) (not b_next!88337) b_and!229469 (not b_next!88335) (not b!3328582) (not b!3328592) (not b_next!88329))
(check-sat (not b_next!88333) b_and!229471 b_and!229467 b_and!229473 (not b_next!88339) (not b_next!88331) b_and!229475 b_and!229477 (not b_next!88335) (not b_next!88329) (not b_next!88337) b_and!229469)
