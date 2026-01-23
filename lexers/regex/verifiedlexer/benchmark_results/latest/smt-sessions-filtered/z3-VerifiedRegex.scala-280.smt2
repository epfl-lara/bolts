; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5982 () Bool)

(assert start!5982)

(declare-fun b!76754 () Bool)

(declare-fun b_free!2441 () Bool)

(declare-fun b_next!2441 () Bool)

(assert (=> b!76754 (= b_free!2441 (not b_next!2441))))

(declare-fun tp!49613 () Bool)

(declare-fun b_and!3499 () Bool)

(assert (=> b!76754 (= tp!49613 b_and!3499)))

(declare-fun b_free!2443 () Bool)

(declare-fun b_next!2443 () Bool)

(assert (=> b!76754 (= b_free!2443 (not b_next!2443))))

(declare-fun tp!49612 () Bool)

(declare-fun b_and!3501 () Bool)

(assert (=> b!76754 (= tp!49612 b_and!3501)))

(declare-fun e!42877 () Bool)

(assert (=> b!76754 (= e!42877 (and tp!49613 tp!49612))))

(declare-fun b!76755 () Bool)

(declare-datatypes ((C!1640 0))(
  ( (C!1641 (val!427 Int)) )
))
(declare-datatypes ((List!1338 0))(
  ( (Nil!1332) (Cons!1332 (h!6729 C!1640) (t!20117 List!1338)) )
))
(declare-datatypes ((IArray!769 0))(
  ( (IArray!770 (innerList!442 List!1338)) )
))
(declare-datatypes ((Conc!384 0))(
  ( (Node!384 (left!1010 Conc!384) (right!1340 Conc!384) (csize!998 Int) (cheight!595 Int)) (Leaf!665 (xs!2963 IArray!769) (csize!999 Int)) (Empty!384) )
))
(declare-datatypes ((BalanceConc!772 0))(
  ( (BalanceConc!773 (c!19738 Conc!384)) )
))
(declare-datatypes ((Regex!359 0))(
  ( (ElementMatch!359 (c!19739 C!1640)) (Concat!640 (regOne!1230 Regex!359) (regTwo!1230 Regex!359)) (EmptyExpr!359) (Star!359 (reg!688 Regex!359)) (EmptyLang!359) (Union!359 (regOne!1231 Regex!359) (regTwo!1231 Regex!359)) )
))
(declare-datatypes ((String!1796 0))(
  ( (String!1797 (value!11163 String)) )
))
(declare-datatypes ((List!1339 0))(
  ( (Nil!1333) (Cons!1333 (h!6730 (_ BitVec 16)) (t!20118 List!1339)) )
))
(declare-datatypes ((TokenValue!281 0))(
  ( (FloatLiteralValue!562 (text!2412 List!1339)) (TokenValueExt!280 (__x!1657 Int)) (Broken!1405 (value!11164 List!1339)) (Object!286) (End!281) (Def!281) (Underscore!281) (Match!281) (Else!281) (Error!281) (Case!281) (If!281) (Extends!281) (Abstract!281) (Class!281) (Val!281) (DelimiterValue!562 (del!341 List!1339)) (KeywordValue!287 (value!11165 List!1339)) (CommentValue!562 (value!11166 List!1339)) (WhitespaceValue!562 (value!11167 List!1339)) (IndentationValue!281 (value!11168 List!1339)) (String!1798) (Int32!281) (Broken!1406 (value!11169 List!1339)) (Boolean!282) (Unit!801) (OperatorValue!284 (op!341 List!1339)) (IdentifierValue!562 (value!11170 List!1339)) (IdentifierValue!563 (value!11171 List!1339)) (WhitespaceValue!563 (value!11172 List!1339)) (True!562) (False!562) (Broken!1407 (value!11173 List!1339)) (Broken!1408 (value!11174 List!1339)) (True!563) (RightBrace!281) (RightBracket!281) (Colon!281) (Null!281) (Comma!281) (LeftBracket!281) (False!563) (LeftBrace!281) (ImaginaryLiteralValue!281 (text!2413 List!1339)) (StringLiteralValue!843 (value!11175 List!1339)) (EOFValue!281 (value!11176 List!1339)) (IdentValue!281 (value!11177 List!1339)) (DelimiterValue!563 (value!11178 List!1339)) (DedentValue!281 (value!11179 List!1339)) (NewLineValue!281 (value!11180 List!1339)) (IntegerValue!843 (value!11181 (_ BitVec 32)) (text!2414 List!1339)) (IntegerValue!844 (value!11182 Int) (text!2415 List!1339)) (Times!281) (Or!281) (Equal!281) (Minus!281) (Broken!1409 (value!11183 List!1339)) (And!281) (Div!281) (LessEqual!281) (Mod!281) (Concat!641) (Not!281) (Plus!281) (SpaceValue!281 (value!11184 List!1339)) (IntegerValue!845 (value!11185 Int) (text!2416 List!1339)) (StringLiteralValue!844 (text!2417 List!1339)) (FloatLiteralValue!563 (text!2418 List!1339)) (BytesLiteralValue!281 (value!11186 List!1339)) (CommentValue!563 (value!11187 List!1339)) (StringLiteralValue!845 (value!11188 List!1339)) (ErrorTokenValue!281 (msg!342 List!1339)) )
))
(declare-datatypes ((TokenValueInjection!386 0))(
  ( (TokenValueInjection!387 (toValue!798 Int) (toChars!657 Int)) )
))
(declare-datatypes ((Rule!382 0))(
  ( (Rule!383 (regex!291 Regex!359) (tag!469 String!1796) (isSeparator!291 Bool) (transformation!291 TokenValueInjection!386)) )
))
(declare-datatypes ((List!1340 0))(
  ( (Nil!1334) (Cons!1334 (h!6731 Rule!382) (t!20119 List!1340)) )
))
(declare-fun rules!2471 () List!1340)

(declare-fun tp!49611 () Bool)

(declare-fun e!42875 () Bool)

(declare-fun inv!1706 (String!1796) Bool)

(declare-fun inv!1708 (TokenValueInjection!386) Bool)

(assert (=> b!76755 (= e!42875 (and tp!49611 (inv!1706 (tag!469 (h!6731 rules!2471))) (inv!1708 (transformation!291 (h!6731 rules!2471))) e!42877))))

(declare-fun b!76756 () Bool)

(declare-fun e!42876 () Bool)

(declare-fun tp_is_empty!641 () Bool)

(declare-fun tp!49610 () Bool)

(assert (=> b!76756 (= e!42876 (and tp_is_empty!641 tp!49610))))

(declare-fun b!76757 () Bool)

(declare-fun e!42871 () Bool)

(assert (=> b!76757 (= e!42871 (not true))))

(declare-fun lt!15236 () List!1338)

(declare-datatypes ((Token!342 0))(
  ( (Token!343 (value!11189 TokenValue!281) (rule!768 Rule!382) (size!1173 Int) (originalCharacters!342 List!1338)) )
))
(declare-datatypes ((List!1341 0))(
  ( (Nil!1335) (Cons!1335 (h!6732 Token!342) (t!20120 List!1341)) )
))
(declare-datatypes ((IArray!771 0))(
  ( (IArray!772 (innerList!443 List!1341)) )
))
(declare-datatypes ((Conc!385 0))(
  ( (Node!385 (left!1011 Conc!385) (right!1341 Conc!385) (csize!1000 Int) (cheight!596 Int)) (Leaf!666 (xs!2964 IArray!771) (csize!1001 Int)) (Empty!385) )
))
(declare-datatypes ((BalanceConc!774 0))(
  ( (BalanceConc!775 (c!19740 Conc!385)) )
))
(declare-datatypes ((tuple2!1310 0))(
  ( (tuple2!1311 (_1!862 BalanceConc!774) (_2!862 BalanceConc!772)) )
))
(declare-fun lt!15233 () tuple2!1310)

(declare-fun lt!15226 () List!1338)

(declare-fun lt!15229 () List!1341)

(declare-datatypes ((tuple2!1312 0))(
  ( (tuple2!1313 (_1!863 List!1341) (_2!863 List!1338)) )
))
(declare-fun list!410 (BalanceConc!774) List!1341)

(declare-fun tail!98 (List!1341) List!1341)

(assert (=> b!76757 (= (tuple2!1313 (list!410 (_1!862 lt!15233)) lt!15236) (tuple2!1313 (tail!98 lt!15229) lt!15226))))

(declare-datatypes ((Unit!802 0))(
  ( (Unit!803) )
))
(declare-fun lt!15235 () Unit!802)

(declare-datatypes ((LexerInterface!183 0))(
  ( (LexerInterfaceExt!180 (__x!1658 Int)) (Lexer!181) )
))
(declare-fun thiss!19403 () LexerInterface!183)

(declare-fun input!2238 () List!1338)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!2 (LexerInterface!183 List!1340 List!1338 List!1341 List!1338) Unit!802)

(assert (=> b!76757 (= lt!15235 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!2 thiss!19403 rules!2471 input!2238 lt!15229 lt!15226))))

(declare-fun lt!15230 () tuple2!1310)

(declare-fun list!411 (BalanceConc!772) List!1338)

(assert (=> b!76757 (= lt!15226 (list!411 (_2!862 lt!15230)))))

(declare-fun lt!15234 () List!1338)

(declare-datatypes ((tuple2!1314 0))(
  ( (tuple2!1315 (_1!864 Token!342) (_2!864 List!1338)) )
))
(declare-fun lt!15227 () tuple2!1314)

(declare-fun ++!110 (List!1338 List!1338) List!1338)

(assert (=> b!76757 (= (++!110 lt!15234 lt!15236) (_2!864 lt!15227))))

(assert (=> b!76757 (= lt!15236 (list!411 (_2!862 lt!15233)))))

(declare-fun print!22 (LexerInterface!183 BalanceConc!774) BalanceConc!772)

(assert (=> b!76757 (= lt!15234 (list!411 (print!22 thiss!19403 (_1!862 lt!15233))))))

(declare-fun lex!91 (LexerInterface!183 List!1340 BalanceConc!772) tuple2!1310)

(declare-fun seqFromList!94 (List!1338) BalanceConc!772)

(assert (=> b!76757 (= lt!15233 (lex!91 thiss!19403 rules!2471 (seqFromList!94 (_2!864 lt!15227))))))

(declare-fun lt!15232 () Unit!802)

(declare-fun theoremInvertFromString!6 (LexerInterface!183 List!1340 List!1338) Unit!802)

(assert (=> b!76757 (= lt!15232 (theoremInvertFromString!6 thiss!19403 rules!2471 (_2!864 lt!15227)))))

(declare-datatypes ((Option!94 0))(
  ( (None!93) (Some!93 (v!12744 tuple2!1314)) )
))
(declare-fun get!325 (Option!94) tuple2!1314)

(declare-fun maxPrefix!27 (LexerInterface!183 List!1340 List!1338) Option!94)

(assert (=> b!76757 (= lt!15227 (get!325 (maxPrefix!27 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!40 (BalanceConc!774 Token!342) BalanceConc!774)

(declare-fun seqFromList!95 (List!1341) BalanceConc!774)

(assert (=> b!76757 (= lt!15229 (list!410 (prepend!40 (seqFromList!95 (t!20120 lt!15229)) (h!6732 lt!15229))))))

(declare-fun lt!15228 () Unit!802)

(declare-fun seqFromListBHdTlConstructive!14 (Token!342 List!1341 BalanceConc!774) Unit!802)

(assert (=> b!76757 (= lt!15228 (seqFromListBHdTlConstructive!14 (h!6732 lt!15229) (t!20120 lt!15229) (_1!862 lt!15230)))))

(declare-fun res!40121 () Bool)

(declare-fun e!42872 () Bool)

(assert (=> start!5982 (=> (not res!40121) (not e!42872))))

(get-info :version)

(assert (=> start!5982 (= res!40121 ((_ is Lexer!181) thiss!19403))))

(assert (=> start!5982 e!42872))

(assert (=> start!5982 true))

(declare-fun e!42878 () Bool)

(assert (=> start!5982 e!42878))

(assert (=> start!5982 e!42876))

(declare-fun b!76758 () Bool)

(declare-fun e!42874 () Bool)

(assert (=> b!76758 (= e!42874 e!42871)))

(declare-fun res!40122 () Bool)

(assert (=> b!76758 (=> (not res!40122) (not e!42871))))

(declare-fun lt!15231 () Bool)

(assert (=> b!76758 (= res!40122 (and (or lt!15231 (not ((_ is Nil!1335) (t!20120 lt!15229)))) (not lt!15231)))))

(assert (=> b!76758 (= lt!15231 (not ((_ is Cons!1335) lt!15229)))))

(assert (=> b!76758 (= lt!15229 (list!410 (_1!862 lt!15230)))))

(declare-fun b!76759 () Bool)

(declare-fun res!40120 () Bool)

(assert (=> b!76759 (=> (not res!40120) (not e!42872))))

(declare-fun rulesInvariant!177 (LexerInterface!183 List!1340) Bool)

(assert (=> b!76759 (= res!40120 (rulesInvariant!177 thiss!19403 rules!2471))))

(declare-fun b!76760 () Bool)

(declare-fun tp!49614 () Bool)

(assert (=> b!76760 (= e!42878 (and e!42875 tp!49614))))

(declare-fun b!76761 () Bool)

(assert (=> b!76761 (= e!42872 e!42874)))

(declare-fun res!40119 () Bool)

(assert (=> b!76761 (=> (not res!40119) (not e!42874))))

(declare-fun isEmpty!390 (BalanceConc!772) Bool)

(assert (=> b!76761 (= res!40119 (not (isEmpty!390 (_2!862 lt!15230))))))

(assert (=> b!76761 (= lt!15230 (lex!91 thiss!19403 rules!2471 (seqFromList!94 input!2238)))))

(declare-fun b!76762 () Bool)

(declare-fun res!40118 () Bool)

(assert (=> b!76762 (=> (not res!40118) (not e!42872))))

(declare-fun isEmpty!391 (List!1340) Bool)

(assert (=> b!76762 (= res!40118 (not (isEmpty!391 rules!2471)))))

(assert (= (and start!5982 res!40121) b!76762))

(assert (= (and b!76762 res!40118) b!76759))

(assert (= (and b!76759 res!40120) b!76761))

(assert (= (and b!76761 res!40119) b!76758))

(assert (= (and b!76758 res!40122) b!76757))

(assert (= b!76755 b!76754))

(assert (= b!76760 b!76755))

(assert (= (and start!5982 ((_ is Cons!1334) rules!2471)) b!76760))

(assert (= (and start!5982 ((_ is Cons!1332) input!2238)) b!76756))

(declare-fun m!48872 () Bool)

(assert (=> b!76758 m!48872))

(declare-fun m!48874 () Bool)

(assert (=> b!76757 m!48874))

(declare-fun m!48876 () Bool)

(assert (=> b!76757 m!48876))

(assert (=> b!76757 m!48876))

(declare-fun m!48878 () Bool)

(assert (=> b!76757 m!48878))

(declare-fun m!48880 () Bool)

(assert (=> b!76757 m!48880))

(declare-fun m!48882 () Bool)

(assert (=> b!76757 m!48882))

(declare-fun m!48884 () Bool)

(assert (=> b!76757 m!48884))

(declare-fun m!48886 () Bool)

(assert (=> b!76757 m!48886))

(declare-fun m!48888 () Bool)

(assert (=> b!76757 m!48888))

(assert (=> b!76757 m!48874))

(declare-fun m!48890 () Bool)

(assert (=> b!76757 m!48890))

(declare-fun m!48892 () Bool)

(assert (=> b!76757 m!48892))

(declare-fun m!48894 () Bool)

(assert (=> b!76757 m!48894))

(declare-fun m!48896 () Bool)

(assert (=> b!76757 m!48896))

(declare-fun m!48898 () Bool)

(assert (=> b!76757 m!48898))

(assert (=> b!76757 m!48896))

(declare-fun m!48900 () Bool)

(assert (=> b!76757 m!48900))

(declare-fun m!48902 () Bool)

(assert (=> b!76757 m!48902))

(declare-fun m!48904 () Bool)

(assert (=> b!76757 m!48904))

(assert (=> b!76757 m!48898))

(assert (=> b!76757 m!48880))

(declare-fun m!48906 () Bool)

(assert (=> b!76757 m!48906))

(declare-fun m!48908 () Bool)

(assert (=> b!76762 m!48908))

(declare-fun m!48910 () Bool)

(assert (=> b!76755 m!48910))

(declare-fun m!48912 () Bool)

(assert (=> b!76755 m!48912))

(declare-fun m!48914 () Bool)

(assert (=> b!76761 m!48914))

(declare-fun m!48916 () Bool)

(assert (=> b!76761 m!48916))

(assert (=> b!76761 m!48916))

(declare-fun m!48918 () Bool)

(assert (=> b!76761 m!48918))

(declare-fun m!48920 () Bool)

(assert (=> b!76759 m!48920))

(check-sat b_and!3499 b_and!3501 (not b!76760) (not b_next!2443) (not b_next!2441) (not b!76757) (not b!76758) (not b!76755) (not b!76759) tp_is_empty!641 (not b!76761) (not b!76762) (not b!76756))
(check-sat b_and!3501 b_and!3499 (not b_next!2443) (not b_next!2441))
