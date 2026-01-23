; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7038 () Bool)

(assert start!7038)

(declare-fun b!81224 () Bool)

(declare-fun b_free!2641 () Bool)

(declare-fun b_next!2641 () Bool)

(assert (=> b!81224 (= b_free!2641 (not b_next!2641))))

(declare-fun tp!50769 () Bool)

(declare-fun b_and!3767 () Bool)

(assert (=> b!81224 (= tp!50769 b_and!3767)))

(declare-fun b_free!2643 () Bool)

(declare-fun b_next!2643 () Bool)

(assert (=> b!81224 (= b_free!2643 (not b_next!2643))))

(declare-fun tp!50767 () Bool)

(declare-fun b_and!3769 () Bool)

(assert (=> b!81224 (= tp!50767 b_and!3769)))

(declare-fun b!81216 () Bool)

(declare-fun e!45620 () Bool)

(declare-fun e!45619 () Bool)

(assert (=> b!81216 (= e!45620 e!45619)))

(declare-fun res!42273 () Bool)

(assert (=> b!81216 (=> (not res!42273) (not e!45619))))

(declare-fun lt!18586 () Bool)

(declare-datatypes ((C!1700 0))(
  ( (C!1701 (val!457 Int)) )
))
(declare-datatypes ((List!1472 0))(
  ( (Nil!1466) (Cons!1466 (h!6863 C!1700) (t!20407 List!1472)) )
))
(declare-datatypes ((IArray!889 0))(
  ( (IArray!890 (innerList!502 List!1472)) )
))
(declare-datatypes ((Conc!444 0))(
  ( (Node!444 (left!1113 Conc!444) (right!1443 Conc!444) (csize!1118 Int) (cheight!655 Int)) (Leaf!740 (xs!3023 IArray!889) (csize!1119 Int)) (Empty!444) )
))
(declare-datatypes ((BalanceConc!892 0))(
  ( (BalanceConc!893 (c!20518 Conc!444)) )
))
(declare-datatypes ((List!1473 0))(
  ( (Nil!1467) (Cons!1467 (h!6864 (_ BitVec 16)) (t!20408 List!1473)) )
))
(declare-datatypes ((TokenValue!311 0))(
  ( (FloatLiteralValue!622 (text!2622 List!1473)) (TokenValueExt!310 (__x!1717 Int)) (Broken!1555 (value!12018 List!1473)) (Object!316) (End!311) (Def!311) (Underscore!311) (Match!311) (Else!311) (Error!311) (Case!311) (If!311) (Extends!311) (Abstract!311) (Class!311) (Val!311) (DelimiterValue!622 (del!371 List!1473)) (KeywordValue!317 (value!12019 List!1473)) (CommentValue!622 (value!12020 List!1473)) (WhitespaceValue!622 (value!12021 List!1473)) (IndentationValue!311 (value!12022 List!1473)) (String!1946) (Int32!311) (Broken!1556 (value!12023 List!1473)) (Boolean!312) (Unit!913) (OperatorValue!314 (op!371 List!1473)) (IdentifierValue!622 (value!12024 List!1473)) (IdentifierValue!623 (value!12025 List!1473)) (WhitespaceValue!623 (value!12026 List!1473)) (True!622) (False!622) (Broken!1557 (value!12027 List!1473)) (Broken!1558 (value!12028 List!1473)) (True!623) (RightBrace!311) (RightBracket!311) (Colon!311) (Null!311) (Comma!311) (LeftBracket!311) (False!623) (LeftBrace!311) (ImaginaryLiteralValue!311 (text!2623 List!1473)) (StringLiteralValue!933 (value!12029 List!1473)) (EOFValue!311 (value!12030 List!1473)) (IdentValue!311 (value!12031 List!1473)) (DelimiterValue!623 (value!12032 List!1473)) (DedentValue!311 (value!12033 List!1473)) (NewLineValue!311 (value!12034 List!1473)) (IntegerValue!933 (value!12035 (_ BitVec 32)) (text!2624 List!1473)) (IntegerValue!934 (value!12036 Int) (text!2625 List!1473)) (Times!311) (Or!311) (Equal!311) (Minus!311) (Broken!1559 (value!12037 List!1473)) (And!311) (Div!311) (LessEqual!311) (Mod!311) (Concat!700) (Not!311) (Plus!311) (SpaceValue!311 (value!12038 List!1473)) (IntegerValue!935 (value!12039 Int) (text!2626 List!1473)) (StringLiteralValue!934 (text!2627 List!1473)) (FloatLiteralValue!623 (text!2628 List!1473)) (BytesLiteralValue!311 (value!12040 List!1473)) (CommentValue!623 (value!12041 List!1473)) (StringLiteralValue!935 (value!12042 List!1473)) (ErrorTokenValue!311 (msg!372 List!1473)) )
))
(declare-datatypes ((Regex!389 0))(
  ( (ElementMatch!389 (c!20519 C!1700)) (Concat!701 (regOne!1290 Regex!389) (regTwo!1290 Regex!389)) (EmptyExpr!389) (Star!389 (reg!718 Regex!389)) (EmptyLang!389) (Union!389 (regOne!1291 Regex!389) (regTwo!1291 Regex!389)) )
))
(declare-datatypes ((String!1947 0))(
  ( (String!1948 (value!12043 String)) )
))
(declare-datatypes ((TokenValueInjection!446 0))(
  ( (TokenValueInjection!447 (toValue!840 Int) (toChars!699 Int)) )
))
(declare-datatypes ((Rule!442 0))(
  ( (Rule!443 (regex!321 Regex!389) (tag!499 String!1947) (isSeparator!321 Bool) (transformation!321 TokenValueInjection!446)) )
))
(declare-datatypes ((Token!402 0))(
  ( (Token!403 (value!12044 TokenValue!311) (rule!804 Rule!442) (size!1261 Int) (originalCharacters!372 List!1472)) )
))
(declare-datatypes ((List!1474 0))(
  ( (Nil!1468) (Cons!1468 (h!6865 Token!402) (t!20409 List!1474)) )
))
(declare-fun lt!18591 () List!1474)

(get-info :version)

(assert (=> b!81216 (= res!42273 (and (or lt!18586 (not ((_ is Nil!1468) (t!20409 lt!18591)))) (not lt!18586)))))

(assert (=> b!81216 (= lt!18586 (not ((_ is Cons!1468) lt!18591)))))

(declare-datatypes ((IArray!891 0))(
  ( (IArray!892 (innerList!503 List!1474)) )
))
(declare-datatypes ((Conc!445 0))(
  ( (Node!445 (left!1114 Conc!445) (right!1444 Conc!445) (csize!1120 Int) (cheight!656 Int)) (Leaf!741 (xs!3024 IArray!891) (csize!1121 Int)) (Empty!445) )
))
(declare-datatypes ((BalanceConc!894 0))(
  ( (BalanceConc!895 (c!20520 Conc!445)) )
))
(declare-datatypes ((tuple2!1514 0))(
  ( (tuple2!1515 (_1!964 BalanceConc!894) (_2!964 BalanceConc!892)) )
))
(declare-fun lt!18594 () tuple2!1514)

(declare-fun list!509 (BalanceConc!894) List!1474)

(assert (=> b!81216 (= lt!18591 (list!509 (_1!964 lt!18594)))))

(declare-fun b!81217 () Bool)

(declare-fun e!45617 () Bool)

(declare-datatypes ((tuple2!1516 0))(
  ( (tuple2!1517 (_1!965 Token!402) (_2!965 List!1472)) )
))
(declare-datatypes ((Option!130 0))(
  ( (None!129) (Some!129 (v!12826 tuple2!1516)) )
))
(declare-fun lt!18598 () Option!130)

(declare-fun isDefined!34 (Option!130) Bool)

(assert (=> b!81217 (= e!45617 (isDefined!34 lt!18598))))

(declare-fun b!81218 () Bool)

(declare-fun e!45615 () Bool)

(declare-fun tp_is_empty!701 () Bool)

(declare-fun tp!50766 () Bool)

(assert (=> b!81218 (= e!45615 (and tp_is_empty!701 tp!50766))))

(declare-fun b!81219 () Bool)

(declare-fun e!45612 () Bool)

(declare-fun e!45613 () Bool)

(declare-fun tp!50768 () Bool)

(assert (=> b!81219 (= e!45612 (and e!45613 tp!50768))))

(declare-fun b!81220 () Bool)

(assert (=> b!81220 (= e!45619 (not e!45617))))

(declare-fun res!42272 () Bool)

(assert (=> b!81220 (=> res!42272 e!45617)))

(declare-fun input!2238 () List!1472)

(declare-fun lt!18597 () List!1472)

(declare-fun lt!18593 () tuple2!1516)

(declare-fun ++!158 (List!1472 List!1472) List!1472)

(assert (=> b!81220 (= res!42272 (not (= input!2238 (++!158 lt!18597 (_2!965 lt!18593)))))))

(declare-fun list!510 (BalanceConc!892) List!1472)

(declare-fun charsOf!58 (Token!402) BalanceConc!892)

(assert (=> b!81220 (= lt!18597 (list!510 (charsOf!58 (_1!965 lt!18593))))))

(declare-fun lt!18590 () List!1472)

(declare-fun lt!18588 () List!1472)

(declare-fun lt!18592 () tuple2!1514)

(declare-datatypes ((tuple2!1518 0))(
  ( (tuple2!1519 (_1!966 List!1474) (_2!966 List!1472)) )
))
(declare-fun tail!134 (List!1474) List!1474)

(assert (=> b!81220 (= (tuple2!1519 (list!509 (_1!964 lt!18592)) lt!18588) (tuple2!1519 (tail!134 lt!18591) lt!18590))))

(declare-datatypes ((Unit!914 0))(
  ( (Unit!915) )
))
(declare-fun lt!18595 () Unit!914)

(declare-datatypes ((LexerInterface!213 0))(
  ( (LexerInterfaceExt!210 (__x!1718 Int)) (Lexer!211) )
))
(declare-fun thiss!19403 () LexerInterface!213)

(declare-datatypes ((List!1475 0))(
  ( (Nil!1469) (Cons!1469 (h!6866 Rule!442) (t!20410 List!1475)) )
))
(declare-fun rules!2471 () List!1475)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!32 (LexerInterface!213 List!1475 List!1472 List!1474 List!1472) Unit!914)

(assert (=> b!81220 (= lt!18595 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!32 thiss!19403 rules!2471 input!2238 lt!18591 lt!18590))))

(assert (=> b!81220 (= lt!18590 (list!510 (_2!964 lt!18594)))))

(declare-fun lt!18585 () List!1472)

(assert (=> b!81220 (= (++!158 lt!18585 lt!18588) (_2!965 lt!18593))))

(assert (=> b!81220 (= lt!18588 (list!510 (_2!964 lt!18592)))))

(declare-fun print!52 (LexerInterface!213 BalanceConc!894) BalanceConc!892)

(assert (=> b!81220 (= lt!18585 (list!510 (print!52 thiss!19403 (_1!964 lt!18592))))))

(declare-fun lex!121 (LexerInterface!213 List!1475 BalanceConc!892) tuple2!1514)

(declare-fun seqFromList!154 (List!1472) BalanceConc!892)

(assert (=> b!81220 (= lt!18592 (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun lt!18587 () Unit!914)

(declare-fun theoremInvertFromString!36 (LexerInterface!213 List!1475 List!1472) Unit!914)

(assert (=> b!81220 (= lt!18587 (theoremInvertFromString!36 thiss!19403 rules!2471 (_2!965 lt!18593)))))

(declare-fun get!370 (Option!130) tuple2!1516)

(assert (=> b!81220 (= lt!18593 (get!370 lt!18598))))

(declare-fun maxPrefix!57 (LexerInterface!213 List!1475 List!1472) Option!130)

(assert (=> b!81220 (= lt!18598 (maxPrefix!57 thiss!19403 rules!2471 input!2238))))

(declare-fun lt!18596 () BalanceConc!894)

(declare-fun prepend!83 (BalanceConc!894 Token!402) BalanceConc!894)

(assert (=> b!81220 (= lt!18591 (list!509 (prepend!83 lt!18596 (h!6865 lt!18591))))))

(declare-fun seqFromList!155 (List!1474) BalanceConc!894)

(assert (=> b!81220 (= lt!18596 (seqFromList!155 (t!20409 lt!18591)))))

(declare-fun lt!18589 () Unit!914)

(declare-fun seqFromListBHdTlConstructive!44 (Token!402 List!1474 BalanceConc!894) Unit!914)

(assert (=> b!81220 (= lt!18589 (seqFromListBHdTlConstructive!44 (h!6865 lt!18591) (t!20409 lt!18591) (_1!964 lt!18594)))))

(declare-fun b!81221 () Bool)

(declare-fun e!45616 () Bool)

(assert (=> b!81221 (= e!45616 e!45620)))

(declare-fun res!42271 () Bool)

(assert (=> b!81221 (=> (not res!42271) (not e!45620))))

(declare-fun isEmpty!515 (BalanceConc!892) Bool)

(assert (=> b!81221 (= res!42271 (not (isEmpty!515 (_2!964 lt!18594))))))

(assert (=> b!81221 (= lt!18594 (lex!121 thiss!19403 rules!2471 (seqFromList!154 input!2238)))))

(declare-fun b!81222 () Bool)

(declare-fun res!42270 () Bool)

(assert (=> b!81222 (=> res!42270 e!45617)))

(assert (=> b!81222 (= res!42270 (not (= input!2238 (++!158 lt!18597 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(declare-fun e!45618 () Bool)

(declare-fun b!81223 () Bool)

(declare-fun tp!50770 () Bool)

(declare-fun inv!1812 (String!1947) Bool)

(declare-fun inv!1814 (TokenValueInjection!446) Bool)

(assert (=> b!81223 (= e!45613 (and tp!50770 (inv!1812 (tag!499 (h!6866 rules!2471))) (inv!1814 (transformation!321 (h!6866 rules!2471))) e!45618))))

(assert (=> b!81224 (= e!45618 (and tp!50769 tp!50767))))

(declare-fun b!81225 () Bool)

(declare-fun res!42268 () Bool)

(assert (=> b!81225 (=> (not res!42268) (not e!45616))))

(declare-fun isEmpty!516 (List!1475) Bool)

(assert (=> b!81225 (= res!42268 (not (isEmpty!516 rules!2471)))))

(declare-fun res!42269 () Bool)

(assert (=> start!7038 (=> (not res!42269) (not e!45616))))

(assert (=> start!7038 (= res!42269 ((_ is Lexer!211) thiss!19403))))

(assert (=> start!7038 e!45616))

(assert (=> start!7038 true))

(assert (=> start!7038 e!45612))

(assert (=> start!7038 e!45615))

(declare-fun b!81226 () Bool)

(declare-fun res!42274 () Bool)

(assert (=> b!81226 (=> (not res!42274) (not e!45616))))

(declare-fun rulesInvariant!207 (LexerInterface!213 List!1475) Bool)

(assert (=> b!81226 (= res!42274 (rulesInvariant!207 thiss!19403 rules!2471))))

(assert (= (and start!7038 res!42269) b!81225))

(assert (= (and b!81225 res!42268) b!81226))

(assert (= (and b!81226 res!42274) b!81221))

(assert (= (and b!81221 res!42271) b!81216))

(assert (= (and b!81216 res!42273) b!81220))

(assert (= (and b!81220 (not res!42272)) b!81222))

(assert (= (and b!81222 (not res!42270)) b!81217))

(assert (= b!81223 b!81224))

(assert (= b!81219 b!81223))

(assert (= (and start!7038 ((_ is Cons!1469) rules!2471)) b!81219))

(assert (= (and start!7038 ((_ is Cons!1466) input!2238)) b!81218))

(declare-fun m!57016 () Bool)

(assert (=> b!81220 m!57016))

(declare-fun m!57018 () Bool)

(assert (=> b!81220 m!57018))

(declare-fun m!57020 () Bool)

(assert (=> b!81220 m!57020))

(declare-fun m!57022 () Bool)

(assert (=> b!81220 m!57022))

(declare-fun m!57024 () Bool)

(assert (=> b!81220 m!57024))

(assert (=> b!81220 m!57020))

(declare-fun m!57026 () Bool)

(assert (=> b!81220 m!57026))

(declare-fun m!57028 () Bool)

(assert (=> b!81220 m!57028))

(declare-fun m!57030 () Bool)

(assert (=> b!81220 m!57030))

(declare-fun m!57032 () Bool)

(assert (=> b!81220 m!57032))

(declare-fun m!57034 () Bool)

(assert (=> b!81220 m!57034))

(declare-fun m!57036 () Bool)

(assert (=> b!81220 m!57036))

(declare-fun m!57038 () Bool)

(assert (=> b!81220 m!57038))

(declare-fun m!57040 () Bool)

(assert (=> b!81220 m!57040))

(declare-fun m!57042 () Bool)

(assert (=> b!81220 m!57042))

(declare-fun m!57044 () Bool)

(assert (=> b!81220 m!57044))

(assert (=> b!81220 m!57034))

(declare-fun m!57046 () Bool)

(assert (=> b!81220 m!57046))

(declare-fun m!57048 () Bool)

(assert (=> b!81220 m!57048))

(declare-fun m!57050 () Bool)

(assert (=> b!81220 m!57050))

(assert (=> b!81220 m!57022))

(declare-fun m!57052 () Bool)

(assert (=> b!81220 m!57052))

(declare-fun m!57054 () Bool)

(assert (=> b!81220 m!57054))

(assert (=> b!81220 m!57040))

(declare-fun m!57056 () Bool)

(assert (=> b!81217 m!57056))

(declare-fun m!57058 () Bool)

(assert (=> b!81216 m!57058))

(declare-fun m!57060 () Bool)

(assert (=> b!81223 m!57060))

(declare-fun m!57062 () Bool)

(assert (=> b!81223 m!57062))

(declare-fun m!57064 () Bool)

(assert (=> b!81225 m!57064))

(declare-fun m!57066 () Bool)

(assert (=> b!81226 m!57066))

(declare-fun m!57068 () Bool)

(assert (=> b!81221 m!57068))

(declare-fun m!57070 () Bool)

(assert (=> b!81221 m!57070))

(assert (=> b!81221 m!57070))

(declare-fun m!57072 () Bool)

(assert (=> b!81221 m!57072))

(declare-fun m!57074 () Bool)

(assert (=> b!81222 m!57074))

(assert (=> b!81222 m!57074))

(declare-fun m!57076 () Bool)

(assert (=> b!81222 m!57076))

(assert (=> b!81222 m!57076))

(declare-fun m!57078 () Bool)

(assert (=> b!81222 m!57078))

(assert (=> b!81222 m!57078))

(declare-fun m!57080 () Bool)

(assert (=> b!81222 m!57080))

(check-sat (not b!81223) (not b_next!2643) (not b!81222) b_and!3769 (not b!81225) (not b!81219) (not b!81217) tp_is_empty!701 b_and!3767 (not b!81221) (not b!81226) (not b!81218) (not b!81216) (not b!81220) (not b_next!2641))
(check-sat b_and!3769 b_and!3767 (not b_next!2643) (not b_next!2641))
(get-model)

(declare-fun d!15512 () Bool)

(declare-fun lt!18608 () Bool)

(declare-fun isEmpty!521 (List!1472) Bool)

(assert (=> d!15512 (= lt!18608 (isEmpty!521 (list!510 (_2!964 lt!18594))))))

(declare-fun isEmpty!522 (Conc!444) Bool)

(assert (=> d!15512 (= lt!18608 (isEmpty!522 (c!20518 (_2!964 lt!18594))))))

(assert (=> d!15512 (= (isEmpty!515 (_2!964 lt!18594)) lt!18608)))

(declare-fun bs!8442 () Bool)

(assert (= bs!8442 d!15512))

(assert (=> bs!8442 m!57018))

(assert (=> bs!8442 m!57018))

(declare-fun m!57122 () Bool)

(assert (=> bs!8442 m!57122))

(declare-fun m!57124 () Bool)

(assert (=> bs!8442 m!57124))

(assert (=> b!81221 d!15512))

(declare-fun b!81306 () Bool)

(declare-fun e!45662 () Bool)

(declare-fun lt!18635 () tuple2!1514)

(assert (=> b!81306 (= e!45662 (= (_2!964 lt!18635) (seqFromList!154 input!2238)))))

(declare-fun b!81307 () Bool)

(declare-fun e!45661 () Bool)

(declare-fun isEmpty!523 (BalanceConc!894) Bool)

(assert (=> b!81307 (= e!45661 (not (isEmpty!523 (_1!964 lt!18635))))))

(declare-fun b!81308 () Bool)

(assert (=> b!81308 (= e!45662 e!45661)))

(declare-fun res!42334 () Bool)

(declare-fun size!1265 (BalanceConc!892) Int)

(assert (=> b!81308 (= res!42334 (< (size!1265 (_2!964 lt!18635)) (size!1265 (seqFromList!154 input!2238))))))

(assert (=> b!81308 (=> (not res!42334) (not e!45661))))

(declare-fun b!81309 () Bool)

(declare-fun res!42335 () Bool)

(declare-fun e!45660 () Bool)

(assert (=> b!81309 (=> (not res!42335) (not e!45660))))

(declare-fun lexList!49 (LexerInterface!213 List!1475 List!1472) tuple2!1518)

(assert (=> b!81309 (= res!42335 (= (list!509 (_1!964 lt!18635)) (_1!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 input!2238))))))))

(declare-fun b!81310 () Bool)

(assert (=> b!81310 (= e!45660 (= (list!510 (_2!964 lt!18635)) (_2!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 input!2238))))))))

(declare-fun d!15514 () Bool)

(assert (=> d!15514 e!45660))

(declare-fun res!42336 () Bool)

(assert (=> d!15514 (=> (not res!42336) (not e!45660))))

(assert (=> d!15514 (= res!42336 e!45662)))

(declare-fun c!20536 () Bool)

(declare-fun size!1266 (BalanceConc!894) Int)

(assert (=> d!15514 (= c!20536 (> (size!1266 (_1!964 lt!18635)) 0))))

(declare-fun lexTailRecV2!46 (LexerInterface!213 List!1475 BalanceConc!892 BalanceConc!892 BalanceConc!892 BalanceConc!894) tuple2!1514)

(assert (=> d!15514 (= lt!18635 (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 input!2238) (BalanceConc!893 Empty!444) (seqFromList!154 input!2238) (BalanceConc!895 Empty!445)))))

(assert (=> d!15514 (= (lex!121 thiss!19403 rules!2471 (seqFromList!154 input!2238)) lt!18635)))

(assert (= (and d!15514 c!20536) b!81308))

(assert (= (and d!15514 (not c!20536)) b!81306))

(assert (= (and b!81308 res!42334) b!81307))

(assert (= (and d!15514 res!42336) b!81309))

(assert (= (and b!81309 res!42335) b!81310))

(declare-fun m!57224 () Bool)

(assert (=> b!81309 m!57224))

(assert (=> b!81309 m!57070))

(declare-fun m!57226 () Bool)

(assert (=> b!81309 m!57226))

(assert (=> b!81309 m!57226))

(declare-fun m!57228 () Bool)

(assert (=> b!81309 m!57228))

(declare-fun m!57230 () Bool)

(assert (=> b!81310 m!57230))

(assert (=> b!81310 m!57070))

(assert (=> b!81310 m!57226))

(assert (=> b!81310 m!57226))

(assert (=> b!81310 m!57228))

(declare-fun m!57232 () Bool)

(assert (=> d!15514 m!57232))

(assert (=> d!15514 m!57070))

(assert (=> d!15514 m!57070))

(declare-fun m!57234 () Bool)

(assert (=> d!15514 m!57234))

(declare-fun m!57236 () Bool)

(assert (=> b!81307 m!57236))

(declare-fun m!57238 () Bool)

(assert (=> b!81308 m!57238))

(assert (=> b!81308 m!57070))

(declare-fun m!57240 () Bool)

(assert (=> b!81308 m!57240))

(assert (=> b!81221 d!15514))

(declare-fun d!15540 () Bool)

(declare-fun fromListB!56 (List!1472) BalanceConc!892)

(assert (=> d!15540 (= (seqFromList!154 input!2238) (fromListB!56 input!2238))))

(declare-fun bs!8449 () Bool)

(assert (= bs!8449 d!15540))

(declare-fun m!57242 () Bool)

(assert (=> bs!8449 m!57242))

(assert (=> b!81221 d!15540))

(declare-fun d!15542 () Bool)

(declare-fun res!42339 () Bool)

(declare-fun e!45665 () Bool)

(assert (=> d!15542 (=> (not res!42339) (not e!45665))))

(declare-fun rulesValid!69 (LexerInterface!213 List!1475) Bool)

(assert (=> d!15542 (= res!42339 (rulesValid!69 thiss!19403 rules!2471))))

(assert (=> d!15542 (= (rulesInvariant!207 thiss!19403 rules!2471) e!45665)))

(declare-fun b!81313 () Bool)

(declare-datatypes ((List!1477 0))(
  ( (Nil!1471) (Cons!1471 (h!6868 String!1947) (t!20420 List!1477)) )
))
(declare-fun noDuplicateTag!69 (LexerInterface!213 List!1475 List!1477) Bool)

(assert (=> b!81313 (= e!45665 (noDuplicateTag!69 thiss!19403 rules!2471 Nil!1471))))

(assert (= (and d!15542 res!42339) b!81313))

(declare-fun m!57244 () Bool)

(assert (=> d!15542 m!57244))

(declare-fun m!57246 () Bool)

(assert (=> b!81313 m!57246))

(assert (=> b!81226 d!15542))

(declare-fun d!15544 () Bool)

(declare-fun list!513 (Conc!445) List!1474)

(assert (=> d!15544 (= (list!509 (_1!964 lt!18594)) (list!513 (c!20520 (_1!964 lt!18594))))))

(declare-fun bs!8450 () Bool)

(assert (= bs!8450 d!15544))

(declare-fun m!57248 () Bool)

(assert (=> bs!8450 m!57248))

(assert (=> b!81216 d!15544))

(declare-fun d!15546 () Bool)

(assert (=> d!15546 (= (isEmpty!516 rules!2471) ((_ is Nil!1469) rules!2471))))

(assert (=> b!81225 d!15546))

(declare-fun b!81332 () Bool)

(declare-fun res!42354 () Bool)

(declare-fun e!45673 () Bool)

(assert (=> b!81332 (=> (not res!42354) (not e!45673))))

(declare-fun lt!18655 () Option!130)

(declare-fun size!1267 (List!1472) Int)

(assert (=> b!81332 (= res!42354 (< (size!1267 (_2!965 (get!370 lt!18655))) (size!1267 input!2238)))))

(declare-fun b!81333 () Bool)

(declare-fun e!45672 () Bool)

(assert (=> b!81333 (= e!45672 e!45673)))

(declare-fun res!42360 () Bool)

(assert (=> b!81333 (=> (not res!42360) (not e!45673))))

(assert (=> b!81333 (= res!42360 (isDefined!34 lt!18655))))

(declare-fun d!15548 () Bool)

(assert (=> d!15548 e!45672))

(declare-fun res!42356 () Bool)

(assert (=> d!15548 (=> res!42356 e!45672)))

(declare-fun isEmpty!524 (Option!130) Bool)

(assert (=> d!15548 (= res!42356 (isEmpty!524 lt!18655))))

(declare-fun e!45674 () Option!130)

(assert (=> d!15548 (= lt!18655 e!45674)))

(declare-fun c!20539 () Bool)

(assert (=> d!15548 (= c!20539 (and ((_ is Cons!1469) rules!2471) ((_ is Nil!1469) (t!20410 rules!2471))))))

(declare-fun lt!18658 () Unit!914)

(declare-fun lt!18657 () Unit!914)

(assert (=> d!15548 (= lt!18658 lt!18657)))

(declare-fun isPrefix!25 (List!1472 List!1472) Bool)

(assert (=> d!15548 (isPrefix!25 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!25 (List!1472 List!1472) Unit!914)

(assert (=> d!15548 (= lt!18657 (lemmaIsPrefixRefl!25 input!2238 input!2238))))

(declare-fun rulesValidInductive!50 (LexerInterface!213 List!1475) Bool)

(assert (=> d!15548 (rulesValidInductive!50 thiss!19403 rules!2471)))

(assert (=> d!15548 (= (maxPrefix!57 thiss!19403 rules!2471 input!2238) lt!18655)))

(declare-fun bm!3715 () Bool)

(declare-fun call!3720 () Option!130)

(declare-fun maxPrefixOneRule!23 (LexerInterface!213 Rule!442 List!1472) Option!130)

(assert (=> bm!3715 (= call!3720 (maxPrefixOneRule!23 thiss!19403 (h!6866 rules!2471) input!2238))))

(declare-fun b!81334 () Bool)

(declare-fun lt!18656 () Option!130)

(declare-fun lt!18659 () Option!130)

(assert (=> b!81334 (= e!45674 (ite (and ((_ is None!129) lt!18656) ((_ is None!129) lt!18659)) None!129 (ite ((_ is None!129) lt!18659) lt!18656 (ite ((_ is None!129) lt!18656) lt!18659 (ite (>= (size!1261 (_1!965 (v!12826 lt!18656))) (size!1261 (_1!965 (v!12826 lt!18659)))) lt!18656 lt!18659)))))))

(assert (=> b!81334 (= lt!18656 call!3720)))

(assert (=> b!81334 (= lt!18659 (maxPrefix!57 thiss!19403 (t!20410 rules!2471) input!2238))))

(declare-fun b!81335 () Bool)

(declare-fun res!42359 () Bool)

(assert (=> b!81335 (=> (not res!42359) (not e!45673))))

(assert (=> b!81335 (= res!42359 (= (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))) (originalCharacters!372 (_1!965 (get!370 lt!18655)))))))

(declare-fun b!81336 () Bool)

(declare-fun res!42355 () Bool)

(assert (=> b!81336 (=> (not res!42355) (not e!45673))))

(declare-fun matchR!27 (Regex!389 List!1472) Bool)

(assert (=> b!81336 (= res!42355 (matchR!27 (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))) (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))))))

(declare-fun b!81337 () Bool)

(assert (=> b!81337 (= e!45674 call!3720)))

(declare-fun b!81338 () Bool)

(declare-fun res!42358 () Bool)

(assert (=> b!81338 (=> (not res!42358) (not e!45673))))

(declare-fun apply!203 (TokenValueInjection!446 BalanceConc!892) TokenValue!311)

(assert (=> b!81338 (= res!42358 (= (value!12044 (_1!965 (get!370 lt!18655))) (apply!203 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18655)))))))))

(declare-fun b!81339 () Bool)

(declare-fun contains!219 (List!1475 Rule!442) Bool)

(assert (=> b!81339 (= e!45673 (contains!219 rules!2471 (rule!804 (_1!965 (get!370 lt!18655)))))))

(declare-fun b!81340 () Bool)

(declare-fun res!42357 () Bool)

(assert (=> b!81340 (=> (not res!42357) (not e!45673))))

(assert (=> b!81340 (= res!42357 (= (++!158 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))) (_2!965 (get!370 lt!18655))) input!2238))))

(assert (= (and d!15548 c!20539) b!81337))

(assert (= (and d!15548 (not c!20539)) b!81334))

(assert (= (or b!81337 b!81334) bm!3715))

(assert (= (and d!15548 (not res!42356)) b!81333))

(assert (= (and b!81333 res!42360) b!81335))

(assert (= (and b!81335 res!42359) b!81332))

(assert (= (and b!81332 res!42354) b!81340))

(assert (= (and b!81340 res!42357) b!81338))

(assert (= (and b!81338 res!42358) b!81336))

(assert (= (and b!81336 res!42355) b!81339))

(declare-fun m!57274 () Bool)

(assert (=> b!81334 m!57274))

(declare-fun m!57276 () Bool)

(assert (=> b!81333 m!57276))

(declare-fun m!57278 () Bool)

(assert (=> b!81332 m!57278))

(declare-fun m!57280 () Bool)

(assert (=> b!81332 m!57280))

(declare-fun m!57282 () Bool)

(assert (=> b!81332 m!57282))

(assert (=> b!81339 m!57278))

(declare-fun m!57284 () Bool)

(assert (=> b!81339 m!57284))

(assert (=> b!81340 m!57278))

(declare-fun m!57286 () Bool)

(assert (=> b!81340 m!57286))

(assert (=> b!81340 m!57286))

(declare-fun m!57288 () Bool)

(assert (=> b!81340 m!57288))

(assert (=> b!81340 m!57288))

(declare-fun m!57290 () Bool)

(assert (=> b!81340 m!57290))

(declare-fun m!57292 () Bool)

(assert (=> d!15548 m!57292))

(declare-fun m!57294 () Bool)

(assert (=> d!15548 m!57294))

(declare-fun m!57296 () Bool)

(assert (=> d!15548 m!57296))

(declare-fun m!57298 () Bool)

(assert (=> d!15548 m!57298))

(assert (=> b!81338 m!57278))

(declare-fun m!57300 () Bool)

(assert (=> b!81338 m!57300))

(assert (=> b!81338 m!57300))

(declare-fun m!57302 () Bool)

(assert (=> b!81338 m!57302))

(assert (=> b!81336 m!57278))

(assert (=> b!81336 m!57286))

(assert (=> b!81336 m!57286))

(assert (=> b!81336 m!57288))

(assert (=> b!81336 m!57288))

(declare-fun m!57304 () Bool)

(assert (=> b!81336 m!57304))

(assert (=> b!81335 m!57278))

(assert (=> b!81335 m!57286))

(assert (=> b!81335 m!57286))

(assert (=> b!81335 m!57288))

(declare-fun m!57306 () Bool)

(assert (=> bm!3715 m!57306))

(assert (=> b!81220 d!15548))

(declare-fun d!15556 () Bool)

(declare-fun list!514 (Conc!444) List!1472)

(assert (=> d!15556 (= (list!510 (_2!964 lt!18592)) (list!514 (c!20518 (_2!964 lt!18592))))))

(declare-fun bs!8453 () Bool)

(assert (= bs!8453 d!15556))

(declare-fun m!57308 () Bool)

(assert (=> bs!8453 m!57308))

(assert (=> b!81220 d!15556))

(declare-fun d!15558 () Bool)

(assert (=> d!15558 (= (list!509 (_1!964 lt!18592)) (list!513 (c!20520 (_1!964 lt!18592))))))

(declare-fun bs!8454 () Bool)

(assert (= bs!8454 d!15558))

(declare-fun m!57310 () Bool)

(assert (=> bs!8454 m!57310))

(assert (=> b!81220 d!15558))

(declare-fun d!15560 () Bool)

(assert (=> d!15560 (= (get!370 lt!18598) (v!12826 lt!18598))))

(assert (=> b!81220 d!15560))

(declare-fun d!15562 () Bool)

(declare-fun lt!18678 () tuple2!1514)

(assert (=> d!15562 (= (++!158 (list!510 (print!52 thiss!19403 (_1!964 lt!18678))) (list!510 (_2!964 lt!18678))) (_2!965 lt!18593))))

(assert (=> d!15562 (= lt!18678 (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun lt!18677 () Unit!914)

(declare-fun choose!1308 (LexerInterface!213 List!1475 List!1472) Unit!914)

(assert (=> d!15562 (= lt!18677 (choose!1308 thiss!19403 rules!2471 (_2!965 lt!18593)))))

(assert (=> d!15562 (not (isEmpty!516 rules!2471))))

(assert (=> d!15562 (= (theoremInvertFromString!36 thiss!19403 rules!2471 (_2!965 lt!18593)) lt!18677)))

(declare-fun bs!8462 () Bool)

(assert (= bs!8462 d!15562))

(assert (=> bs!8462 m!57020))

(declare-fun m!57374 () Bool)

(assert (=> bs!8462 m!57374))

(declare-fun m!57376 () Bool)

(assert (=> bs!8462 m!57376))

(declare-fun m!57378 () Bool)

(assert (=> bs!8462 m!57378))

(declare-fun m!57380 () Bool)

(assert (=> bs!8462 m!57380))

(assert (=> bs!8462 m!57020))

(assert (=> bs!8462 m!57026))

(assert (=> bs!8462 m!57376))

(declare-fun m!57382 () Bool)

(assert (=> bs!8462 m!57382))

(assert (=> bs!8462 m!57374))

(assert (=> bs!8462 m!57382))

(assert (=> bs!8462 m!57064))

(assert (=> b!81220 d!15562))

(declare-fun d!15588 () Bool)

(assert (=> d!15588 (= (list!509 (prepend!83 lt!18596 (h!6865 lt!18591))) (list!513 (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591)))))))

(declare-fun bs!8463 () Bool)

(assert (= bs!8463 d!15588))

(declare-fun m!57384 () Bool)

(assert (=> bs!8463 m!57384))

(assert (=> b!81220 d!15588))

(declare-fun d!15590 () Bool)

(declare-fun e!45707 () Bool)

(assert (=> d!15590 e!45707))

(declare-fun res!42372 () Bool)

(assert (=> d!15590 (=> (not res!42372) (not e!45707))))

(declare-fun isBalanced!92 (Conc!445) Bool)

(declare-fun prepend!85 (Conc!445 Token!402) Conc!445)

(assert (=> d!15590 (= res!42372 (isBalanced!92 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))))))

(declare-fun lt!18681 () BalanceConc!894)

(assert (=> d!15590 (= lt!18681 (BalanceConc!895 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))))))

(assert (=> d!15590 (= (prepend!83 lt!18596 (h!6865 lt!18591)) lt!18681)))

(declare-fun b!81389 () Bool)

(assert (=> b!81389 (= e!45707 (= (list!509 lt!18681) (Cons!1468 (h!6865 lt!18591) (list!509 lt!18596))))))

(assert (= (and d!15590 res!42372) b!81389))

(declare-fun m!57386 () Bool)

(assert (=> d!15590 m!57386))

(assert (=> d!15590 m!57386))

(declare-fun m!57388 () Bool)

(assert (=> d!15590 m!57388))

(declare-fun m!57390 () Bool)

(assert (=> b!81389 m!57390))

(declare-fun m!57392 () Bool)

(assert (=> b!81389 m!57392))

(assert (=> b!81220 d!15590))

(declare-fun d!15592 () Bool)

(assert (=> d!15592 (= (list!509 (_1!964 lt!18594)) (list!509 (prepend!83 (seqFromList!155 (t!20409 lt!18591)) (h!6865 lt!18591))))))

(declare-fun lt!18684 () Unit!914)

(declare-fun choose!1309 (Token!402 List!1474 BalanceConc!894) Unit!914)

(assert (=> d!15592 (= lt!18684 (choose!1309 (h!6865 lt!18591) (t!20409 lt!18591) (_1!964 lt!18594)))))

(declare-fun $colon$colon!26 (List!1474 Token!402) List!1474)

(assert (=> d!15592 (= (list!509 (_1!964 lt!18594)) (list!509 (seqFromList!155 ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591)))))))

(assert (=> d!15592 (= (seqFromListBHdTlConstructive!44 (h!6865 lt!18591) (t!20409 lt!18591) (_1!964 lt!18594)) lt!18684)))

(declare-fun bs!8464 () Bool)

(assert (= bs!8464 d!15592))

(declare-fun m!57394 () Bool)

(assert (=> bs!8464 m!57394))

(declare-fun m!57396 () Bool)

(assert (=> bs!8464 m!57396))

(declare-fun m!57398 () Bool)

(assert (=> bs!8464 m!57398))

(declare-fun m!57400 () Bool)

(assert (=> bs!8464 m!57400))

(assert (=> bs!8464 m!57396))

(declare-fun m!57402 () Bool)

(assert (=> bs!8464 m!57402))

(assert (=> bs!8464 m!57054))

(assert (=> bs!8464 m!57054))

(assert (=> bs!8464 m!57398))

(assert (=> bs!8464 m!57394))

(assert (=> bs!8464 m!57058))

(declare-fun m!57404 () Bool)

(assert (=> bs!8464 m!57404))

(assert (=> b!81220 d!15592))

(declare-fun d!15594 () Bool)

(assert (=> d!15594 (= (list!510 (charsOf!58 (_1!965 lt!18593))) (list!514 (c!20518 (charsOf!58 (_1!965 lt!18593)))))))

(declare-fun bs!8465 () Bool)

(assert (= bs!8465 d!15594))

(declare-fun m!57406 () Bool)

(assert (=> bs!8465 m!57406))

(assert (=> b!81220 d!15594))

(declare-fun d!15596 () Bool)

(assert (=> d!15596 (= (seqFromList!154 (_2!965 lt!18593)) (fromListB!56 (_2!965 lt!18593)))))

(declare-fun bs!8466 () Bool)

(assert (= bs!8466 d!15596))

(declare-fun m!57408 () Bool)

(assert (=> bs!8466 m!57408))

(assert (=> b!81220 d!15596))

(declare-fun d!15598 () Bool)

(assert (=> d!15598 (= (list!510 (_2!964 lt!18594)) (list!514 (c!20518 (_2!964 lt!18594))))))

(declare-fun bs!8467 () Bool)

(assert (= bs!8467 d!15598))

(declare-fun m!57410 () Bool)

(assert (=> bs!8467 m!57410))

(assert (=> b!81220 d!15598))

(declare-fun d!15600 () Bool)

(declare-fun lt!18687 () BalanceConc!892)

(assert (=> d!15600 (= (list!510 lt!18687) (originalCharacters!372 (_1!965 lt!18593)))))

(declare-fun dynLambda!354 (Int TokenValue!311) BalanceConc!892)

(assert (=> d!15600 (= lt!18687 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))))

(assert (=> d!15600 (= (charsOf!58 (_1!965 lt!18593)) lt!18687)))

(declare-fun b_lambda!927 () Bool)

(assert (=> (not b_lambda!927) (not d!15600)))

(declare-fun tb!2503 () Bool)

(declare-fun t!20416 () Bool)

(assert (=> (and b!81224 (= (toChars!699 (transformation!321 (h!6866 rules!2471))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593))))) t!20416) tb!2503))

(declare-fun b!81394 () Bool)

(declare-fun e!45710 () Bool)

(declare-fun tp!50806 () Bool)

(declare-fun inv!1817 (Conc!444) Bool)

(assert (=> b!81394 (= e!45710 (and (inv!1817 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))) tp!50806))))

(declare-fun result!3640 () Bool)

(declare-fun inv!1818 (BalanceConc!892) Bool)

(assert (=> tb!2503 (= result!3640 (and (inv!1818 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))) e!45710))))

(assert (= tb!2503 b!81394))

(declare-fun m!57412 () Bool)

(assert (=> b!81394 m!57412))

(declare-fun m!57414 () Bool)

(assert (=> tb!2503 m!57414))

(assert (=> d!15600 t!20416))

(declare-fun b_and!3777 () Bool)

(assert (= b_and!3769 (and (=> t!20416 result!3640) b_and!3777)))

(declare-fun m!57416 () Bool)

(assert (=> d!15600 m!57416))

(declare-fun m!57418 () Bool)

(assert (=> d!15600 m!57418))

(assert (=> b!81220 d!15600))

(declare-fun d!15602 () Bool)

(assert (=> d!15602 (= (list!510 (print!52 thiss!19403 (_1!964 lt!18592))) (list!514 (c!20518 (print!52 thiss!19403 (_1!964 lt!18592)))))))

(declare-fun bs!8468 () Bool)

(assert (= bs!8468 d!15602))

(declare-fun m!57420 () Bool)

(assert (=> bs!8468 m!57420))

(assert (=> b!81220 d!15602))

(declare-fun b!81395 () Bool)

(declare-fun e!45713 () Bool)

(declare-fun lt!18688 () tuple2!1514)

(assert (=> b!81395 (= e!45713 (= (_2!964 lt!18688) (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun b!81396 () Bool)

(declare-fun e!45712 () Bool)

(assert (=> b!81396 (= e!45712 (not (isEmpty!523 (_1!964 lt!18688))))))

(declare-fun b!81397 () Bool)

(assert (=> b!81397 (= e!45713 e!45712)))

(declare-fun res!42373 () Bool)

(assert (=> b!81397 (= res!42373 (< (size!1265 (_2!964 lt!18688)) (size!1265 (seqFromList!154 (_2!965 lt!18593)))))))

(assert (=> b!81397 (=> (not res!42373) (not e!45712))))

(declare-fun b!81398 () Bool)

(declare-fun res!42374 () Bool)

(declare-fun e!45711 () Bool)

(assert (=> b!81398 (=> (not res!42374) (not e!45711))))

(assert (=> b!81398 (= res!42374 (= (list!509 (_1!964 lt!18688)) (_1!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 lt!18593)))))))))

(declare-fun b!81399 () Bool)

(assert (=> b!81399 (= e!45711 (= (list!510 (_2!964 lt!18688)) (_2!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 lt!18593)))))))))

(declare-fun d!15604 () Bool)

(assert (=> d!15604 e!45711))

(declare-fun res!42375 () Bool)

(assert (=> d!15604 (=> (not res!42375) (not e!45711))))

(assert (=> d!15604 (= res!42375 e!45713)))

(declare-fun c!20542 () Bool)

(assert (=> d!15604 (= c!20542 (> (size!1266 (_1!964 lt!18688)) 0))))

(assert (=> d!15604 (= lt!18688 (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)) (BalanceConc!893 Empty!444) (seqFromList!154 (_2!965 lt!18593)) (BalanceConc!895 Empty!445)))))

(assert (=> d!15604 (= (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))) lt!18688)))

(assert (= (and d!15604 c!20542) b!81397))

(assert (= (and d!15604 (not c!20542)) b!81395))

(assert (= (and b!81397 res!42373) b!81396))

(assert (= (and d!15604 res!42375) b!81398))

(assert (= (and b!81398 res!42374) b!81399))

(declare-fun m!57422 () Bool)

(assert (=> b!81398 m!57422))

(assert (=> b!81398 m!57020))

(declare-fun m!57424 () Bool)

(assert (=> b!81398 m!57424))

(assert (=> b!81398 m!57424))

(declare-fun m!57426 () Bool)

(assert (=> b!81398 m!57426))

(declare-fun m!57428 () Bool)

(assert (=> b!81399 m!57428))

(assert (=> b!81399 m!57020))

(assert (=> b!81399 m!57424))

(assert (=> b!81399 m!57424))

(assert (=> b!81399 m!57426))

(declare-fun m!57430 () Bool)

(assert (=> d!15604 m!57430))

(assert (=> d!15604 m!57020))

(assert (=> d!15604 m!57020))

(declare-fun m!57432 () Bool)

(assert (=> d!15604 m!57432))

(declare-fun m!57434 () Bool)

(assert (=> b!81396 m!57434))

(declare-fun m!57436 () Bool)

(assert (=> b!81397 m!57436))

(assert (=> b!81397 m!57020))

(declare-fun m!57438 () Bool)

(assert (=> b!81397 m!57438))

(assert (=> b!81220 d!15604))

(declare-fun d!15606 () Bool)

(assert (=> d!15606 (= (tail!134 lt!18591) (t!20409 lt!18591))))

(assert (=> b!81220 d!15606))

(declare-fun b!81410 () Bool)

(declare-fun res!42380 () Bool)

(declare-fun e!45719 () Bool)

(assert (=> b!81410 (=> (not res!42380) (not e!45719))))

(declare-fun lt!18691 () List!1472)

(assert (=> b!81410 (= res!42380 (= (size!1267 lt!18691) (+ (size!1267 lt!18597) (size!1267 (_2!965 lt!18593)))))))

(declare-fun b!81411 () Bool)

(assert (=> b!81411 (= e!45719 (or (not (= (_2!965 lt!18593) Nil!1466)) (= lt!18691 lt!18597)))))

(declare-fun b!81408 () Bool)

(declare-fun e!45718 () List!1472)

(assert (=> b!81408 (= e!45718 (_2!965 lt!18593))))

(declare-fun d!15608 () Bool)

(assert (=> d!15608 e!45719))

(declare-fun res!42381 () Bool)

(assert (=> d!15608 (=> (not res!42381) (not e!45719))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!80 (List!1472) (InoxSet C!1700))

(assert (=> d!15608 (= res!42381 (= (content!80 lt!18691) ((_ map or) (content!80 lt!18597) (content!80 (_2!965 lt!18593)))))))

(assert (=> d!15608 (= lt!18691 e!45718)))

(declare-fun c!20545 () Bool)

(assert (=> d!15608 (= c!20545 ((_ is Nil!1466) lt!18597))))

(assert (=> d!15608 (= (++!158 lt!18597 (_2!965 lt!18593)) lt!18691)))

(declare-fun b!81409 () Bool)

(assert (=> b!81409 (= e!45718 (Cons!1466 (h!6863 lt!18597) (++!158 (t!20407 lt!18597) (_2!965 lt!18593))))))

(assert (= (and d!15608 c!20545) b!81408))

(assert (= (and d!15608 (not c!20545)) b!81409))

(assert (= (and d!15608 res!42381) b!81410))

(assert (= (and b!81410 res!42380) b!81411))

(declare-fun m!57440 () Bool)

(assert (=> b!81410 m!57440))

(declare-fun m!57442 () Bool)

(assert (=> b!81410 m!57442))

(declare-fun m!57444 () Bool)

(assert (=> b!81410 m!57444))

(declare-fun m!57446 () Bool)

(assert (=> d!15608 m!57446))

(declare-fun m!57448 () Bool)

(assert (=> d!15608 m!57448))

(declare-fun m!57450 () Bool)

(assert (=> d!15608 m!57450))

(declare-fun m!57452 () Bool)

(assert (=> b!81409 m!57452))

(assert (=> b!81220 d!15608))

(declare-fun d!15610 () Bool)

(declare-fun fromListB!57 (List!1474) BalanceConc!894)

(assert (=> d!15610 (= (seqFromList!155 (t!20409 lt!18591)) (fromListB!57 (t!20409 lt!18591)))))

(declare-fun bs!8469 () Bool)

(assert (= bs!8469 d!15610))

(declare-fun m!57454 () Bool)

(assert (=> bs!8469 m!57454))

(assert (=> b!81220 d!15610))

(declare-fun d!15612 () Bool)

(declare-fun lt!18697 () tuple2!1514)

(assert (=> d!15612 (= (tuple2!1519 (list!509 (_1!964 lt!18697)) (list!510 (_2!964 lt!18697))) (tuple2!1519 (tail!134 lt!18591) lt!18590))))

(assert (=> d!15612 (= lt!18697 (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!18696 () Unit!914)

(declare-fun choose!1310 (LexerInterface!213 List!1475 List!1472 List!1474 List!1472) Unit!914)

(assert (=> d!15612 (= lt!18696 (choose!1310 thiss!19403 rules!2471 input!2238 lt!18591 lt!18590))))

(assert (=> d!15612 (rulesInvariant!207 thiss!19403 rules!2471)))

(assert (=> d!15612 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!32 thiss!19403 rules!2471 input!2238 lt!18591 lt!18590) lt!18696)))

(declare-fun bs!8470 () Bool)

(assert (= bs!8470 d!15612))

(declare-fun m!57456 () Bool)

(assert (=> bs!8470 m!57456))

(assert (=> bs!8470 m!57048))

(declare-fun m!57458 () Bool)

(assert (=> bs!8470 m!57458))

(assert (=> bs!8470 m!57016))

(assert (=> bs!8470 m!57456))

(declare-fun m!57460 () Bool)

(assert (=> bs!8470 m!57460))

(assert (=> bs!8470 m!57066))

(declare-fun m!57462 () Bool)

(assert (=> bs!8470 m!57462))

(assert (=> bs!8470 m!57016))

(declare-fun m!57464 () Bool)

(assert (=> bs!8470 m!57464))

(declare-fun m!57466 () Bool)

(assert (=> bs!8470 m!57466))

(assert (=> b!81220 d!15612))

(declare-fun d!15614 () Bool)

(declare-fun lt!18700 () BalanceConc!892)

(declare-fun printList!21 (LexerInterface!213 List!1474) List!1472)

(assert (=> d!15614 (= (list!510 lt!18700) (printList!21 thiss!19403 (list!509 (_1!964 lt!18592))))))

(declare-fun printTailRec!21 (LexerInterface!213 BalanceConc!894 Int BalanceConc!892) BalanceConc!892)

(assert (=> d!15614 (= lt!18700 (printTailRec!21 thiss!19403 (_1!964 lt!18592) 0 (BalanceConc!893 Empty!444)))))

(assert (=> d!15614 (= (print!52 thiss!19403 (_1!964 lt!18592)) lt!18700)))

(declare-fun bs!8471 () Bool)

(assert (= bs!8471 d!15614))

(declare-fun m!57468 () Bool)

(assert (=> bs!8471 m!57468))

(assert (=> bs!8471 m!57038))

(assert (=> bs!8471 m!57038))

(declare-fun m!57470 () Bool)

(assert (=> bs!8471 m!57470))

(declare-fun m!57472 () Bool)

(assert (=> bs!8471 m!57472))

(assert (=> b!81220 d!15614))

(declare-fun b!81414 () Bool)

(declare-fun res!42382 () Bool)

(declare-fun e!45721 () Bool)

(assert (=> b!81414 (=> (not res!42382) (not e!45721))))

(declare-fun lt!18701 () List!1472)

(assert (=> b!81414 (= res!42382 (= (size!1267 lt!18701) (+ (size!1267 lt!18585) (size!1267 lt!18588))))))

(declare-fun b!81415 () Bool)

(assert (=> b!81415 (= e!45721 (or (not (= lt!18588 Nil!1466)) (= lt!18701 lt!18585)))))

(declare-fun b!81412 () Bool)

(declare-fun e!45720 () List!1472)

(assert (=> b!81412 (= e!45720 lt!18588)))

(declare-fun d!15616 () Bool)

(assert (=> d!15616 e!45721))

(declare-fun res!42383 () Bool)

(assert (=> d!15616 (=> (not res!42383) (not e!45721))))

(assert (=> d!15616 (= res!42383 (= (content!80 lt!18701) ((_ map or) (content!80 lt!18585) (content!80 lt!18588))))))

(assert (=> d!15616 (= lt!18701 e!45720)))

(declare-fun c!20546 () Bool)

(assert (=> d!15616 (= c!20546 ((_ is Nil!1466) lt!18585))))

(assert (=> d!15616 (= (++!158 lt!18585 lt!18588) lt!18701)))

(declare-fun b!81413 () Bool)

(assert (=> b!81413 (= e!45720 (Cons!1466 (h!6863 lt!18585) (++!158 (t!20407 lt!18585) lt!18588)))))

(assert (= (and d!15616 c!20546) b!81412))

(assert (= (and d!15616 (not c!20546)) b!81413))

(assert (= (and d!15616 res!42383) b!81414))

(assert (= (and b!81414 res!42382) b!81415))

(declare-fun m!57474 () Bool)

(assert (=> b!81414 m!57474))

(declare-fun m!57476 () Bool)

(assert (=> b!81414 m!57476))

(declare-fun m!57478 () Bool)

(assert (=> b!81414 m!57478))

(declare-fun m!57480 () Bool)

(assert (=> d!15616 m!57480))

(declare-fun m!57482 () Bool)

(assert (=> d!15616 m!57482))

(declare-fun m!57484 () Bool)

(assert (=> d!15616 m!57484))

(declare-fun m!57486 () Bool)

(assert (=> b!81413 m!57486))

(assert (=> b!81220 d!15616))

(declare-fun d!15618 () Bool)

(assert (=> d!15618 (= (isDefined!34 lt!18598) (not (isEmpty!524 lt!18598)))))

(declare-fun bs!8472 () Bool)

(assert (= bs!8472 d!15618))

(declare-fun m!57488 () Bool)

(assert (=> bs!8472 m!57488))

(assert (=> b!81217 d!15618))

(declare-fun b!81418 () Bool)

(declare-fun res!42384 () Bool)

(declare-fun e!45723 () Bool)

(assert (=> b!81418 (=> (not res!42384) (not e!45723))))

(declare-fun lt!18702 () List!1472)

(assert (=> b!81418 (= res!42384 (= (size!1267 lt!18702) (+ (size!1267 lt!18597) (size!1267 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(declare-fun b!81419 () Bool)

(assert (=> b!81419 (= e!45723 (or (not (= (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590) Nil!1466)) (= lt!18702 lt!18597)))))

(declare-fun e!45722 () List!1472)

(declare-fun b!81416 () Bool)

(assert (=> b!81416 (= e!45722 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590))))

(declare-fun d!15620 () Bool)

(assert (=> d!15620 e!45723))

(declare-fun res!42385 () Bool)

(assert (=> d!15620 (=> (not res!42385) (not e!45723))))

(assert (=> d!15620 (= res!42385 (= (content!80 lt!18702) ((_ map or) (content!80 lt!18597) (content!80 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(assert (=> d!15620 (= lt!18702 e!45722)))

(declare-fun c!20547 () Bool)

(assert (=> d!15620 (= c!20547 ((_ is Nil!1466) lt!18597))))

(assert (=> d!15620 (= (++!158 lt!18597 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)) lt!18702)))

(declare-fun b!81417 () Bool)

(assert (=> b!81417 (= e!45722 (Cons!1466 (h!6863 lt!18597) (++!158 (t!20407 lt!18597) (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590))))))

(assert (= (and d!15620 c!20547) b!81416))

(assert (= (and d!15620 (not c!20547)) b!81417))

(assert (= (and d!15620 res!42385) b!81418))

(assert (= (and b!81418 res!42384) b!81419))

(declare-fun m!57490 () Bool)

(assert (=> b!81418 m!57490))

(assert (=> b!81418 m!57442))

(assert (=> b!81418 m!57078))

(declare-fun m!57492 () Bool)

(assert (=> b!81418 m!57492))

(declare-fun m!57494 () Bool)

(assert (=> d!15620 m!57494))

(assert (=> d!15620 m!57448))

(assert (=> d!15620 m!57078))

(declare-fun m!57496 () Bool)

(assert (=> d!15620 m!57496))

(assert (=> b!81417 m!57078))

(declare-fun m!57498 () Bool)

(assert (=> b!81417 m!57498))

(assert (=> b!81222 d!15620))

(declare-fun b!81422 () Bool)

(declare-fun res!42386 () Bool)

(declare-fun e!45725 () Bool)

(assert (=> b!81422 (=> (not res!42386) (not e!45725))))

(declare-fun lt!18703 () List!1472)

(assert (=> b!81422 (= res!42386 (= (size!1267 lt!18703) (+ (size!1267 (list!510 (print!52 thiss!19403 lt!18596))) (size!1267 lt!18590))))))

(declare-fun b!81423 () Bool)

(assert (=> b!81423 (= e!45725 (or (not (= lt!18590 Nil!1466)) (= lt!18703 (list!510 (print!52 thiss!19403 lt!18596)))))))

(declare-fun b!81420 () Bool)

(declare-fun e!45724 () List!1472)

(assert (=> b!81420 (= e!45724 lt!18590)))

(declare-fun d!15622 () Bool)

(assert (=> d!15622 e!45725))

(declare-fun res!42387 () Bool)

(assert (=> d!15622 (=> (not res!42387) (not e!45725))))

(assert (=> d!15622 (= res!42387 (= (content!80 lt!18703) ((_ map or) (content!80 (list!510 (print!52 thiss!19403 lt!18596))) (content!80 lt!18590))))))

(assert (=> d!15622 (= lt!18703 e!45724)))

(declare-fun c!20548 () Bool)

(assert (=> d!15622 (= c!20548 ((_ is Nil!1466) (list!510 (print!52 thiss!19403 lt!18596))))))

(assert (=> d!15622 (= (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590) lt!18703)))

(declare-fun b!81421 () Bool)

(assert (=> b!81421 (= e!45724 (Cons!1466 (h!6863 (list!510 (print!52 thiss!19403 lt!18596))) (++!158 (t!20407 (list!510 (print!52 thiss!19403 lt!18596))) lt!18590)))))

(assert (= (and d!15622 c!20548) b!81420))

(assert (= (and d!15622 (not c!20548)) b!81421))

(assert (= (and d!15622 res!42387) b!81422))

(assert (= (and b!81422 res!42386) b!81423))

(declare-fun m!57500 () Bool)

(assert (=> b!81422 m!57500))

(assert (=> b!81422 m!57076))

(declare-fun m!57502 () Bool)

(assert (=> b!81422 m!57502))

(declare-fun m!57504 () Bool)

(assert (=> b!81422 m!57504))

(declare-fun m!57506 () Bool)

(assert (=> d!15622 m!57506))

(assert (=> d!15622 m!57076))

(declare-fun m!57508 () Bool)

(assert (=> d!15622 m!57508))

(declare-fun m!57510 () Bool)

(assert (=> d!15622 m!57510))

(declare-fun m!57512 () Bool)

(assert (=> b!81421 m!57512))

(assert (=> b!81222 d!15622))

(declare-fun d!15624 () Bool)

(assert (=> d!15624 (= (list!510 (print!52 thiss!19403 lt!18596)) (list!514 (c!20518 (print!52 thiss!19403 lt!18596))))))

(declare-fun bs!8473 () Bool)

(assert (= bs!8473 d!15624))

(declare-fun m!57514 () Bool)

(assert (=> bs!8473 m!57514))

(assert (=> b!81222 d!15624))

(declare-fun d!15626 () Bool)

(declare-fun lt!18704 () BalanceConc!892)

(assert (=> d!15626 (= (list!510 lt!18704) (printList!21 thiss!19403 (list!509 lt!18596)))))

(assert (=> d!15626 (= lt!18704 (printTailRec!21 thiss!19403 lt!18596 0 (BalanceConc!893 Empty!444)))))

(assert (=> d!15626 (= (print!52 thiss!19403 lt!18596) lt!18704)))

(declare-fun bs!8474 () Bool)

(assert (= bs!8474 d!15626))

(declare-fun m!57516 () Bool)

(assert (=> bs!8474 m!57516))

(assert (=> bs!8474 m!57392))

(assert (=> bs!8474 m!57392))

(declare-fun m!57518 () Bool)

(assert (=> bs!8474 m!57518))

(declare-fun m!57520 () Bool)

(assert (=> bs!8474 m!57520))

(assert (=> b!81222 d!15626))

(declare-fun d!15628 () Bool)

(assert (=> d!15628 (= (inv!1812 (tag!499 (h!6866 rules!2471))) (= (mod (str.len (value!12043 (tag!499 (h!6866 rules!2471)))) 2) 0))))

(assert (=> b!81223 d!15628))

(declare-fun d!15630 () Bool)

(declare-fun res!42390 () Bool)

(declare-fun e!45728 () Bool)

(assert (=> d!15630 (=> (not res!42390) (not e!45728))))

(declare-fun semiInverseModEq!61 (Int Int) Bool)

(assert (=> d!15630 (= res!42390 (semiInverseModEq!61 (toChars!699 (transformation!321 (h!6866 rules!2471))) (toValue!840 (transformation!321 (h!6866 rules!2471)))))))

(assert (=> d!15630 (= (inv!1814 (transformation!321 (h!6866 rules!2471))) e!45728)))

(declare-fun b!81426 () Bool)

(declare-fun equivClasses!57 (Int Int) Bool)

(assert (=> b!81426 (= e!45728 (equivClasses!57 (toChars!699 (transformation!321 (h!6866 rules!2471))) (toValue!840 (transformation!321 (h!6866 rules!2471)))))))

(assert (= (and d!15630 res!42390) b!81426))

(declare-fun m!57522 () Bool)

(assert (=> d!15630 m!57522))

(declare-fun m!57524 () Bool)

(assert (=> b!81426 m!57524))

(assert (=> b!81223 d!15630))

(declare-fun b!81431 () Bool)

(declare-fun e!45731 () Bool)

(declare-fun tp!50809 () Bool)

(assert (=> b!81431 (= e!45731 (and tp_is_empty!701 tp!50809))))

(assert (=> b!81218 (= tp!50766 e!45731)))

(assert (= (and b!81218 ((_ is Cons!1466) (t!20407 input!2238))) b!81431))

(declare-fun b!81442 () Bool)

(declare-fun b_free!2649 () Bool)

(declare-fun b_next!2649 () Bool)

(assert (=> b!81442 (= b_free!2649 (not b_next!2649))))

(declare-fun tp!50821 () Bool)

(declare-fun b_and!3779 () Bool)

(assert (=> b!81442 (= tp!50821 b_and!3779)))

(declare-fun b_free!2651 () Bool)

(declare-fun b_next!2651 () Bool)

(assert (=> b!81442 (= b_free!2651 (not b_next!2651))))

(declare-fun t!20419 () Bool)

(declare-fun tb!2505 () Bool)

(assert (=> (and b!81442 (= (toChars!699 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593))))) t!20419) tb!2505))

(declare-fun result!3648 () Bool)

(assert (= result!3648 result!3640))

(assert (=> d!15600 t!20419))

(declare-fun b_and!3781 () Bool)

(declare-fun tp!50819 () Bool)

(assert (=> b!81442 (= tp!50819 (and (=> t!20419 result!3648) b_and!3781))))

(declare-fun e!45741 () Bool)

(assert (=> b!81442 (= e!45741 (and tp!50821 tp!50819))))

(declare-fun e!45742 () Bool)

(declare-fun b!81441 () Bool)

(declare-fun tp!50818 () Bool)

(assert (=> b!81441 (= e!45742 (and tp!50818 (inv!1812 (tag!499 (h!6866 (t!20410 rules!2471)))) (inv!1814 (transformation!321 (h!6866 (t!20410 rules!2471)))) e!45741))))

(declare-fun b!81440 () Bool)

(declare-fun e!45740 () Bool)

(declare-fun tp!50820 () Bool)

(assert (=> b!81440 (= e!45740 (and e!45742 tp!50820))))

(assert (=> b!81219 (= tp!50768 e!45740)))

(assert (= b!81441 b!81442))

(assert (= b!81440 b!81441))

(assert (= (and b!81219 ((_ is Cons!1469) (t!20410 rules!2471))) b!81440))

(declare-fun m!57526 () Bool)

(assert (=> b!81441 m!57526))

(declare-fun m!57528 () Bool)

(assert (=> b!81441 m!57528))

(declare-fun b!81456 () Bool)

(declare-fun e!45746 () Bool)

(declare-fun tp!50832 () Bool)

(declare-fun tp!50835 () Bool)

(assert (=> b!81456 (= e!45746 (and tp!50832 tp!50835))))

(declare-fun b!81454 () Bool)

(declare-fun tp!50833 () Bool)

(declare-fun tp!50836 () Bool)

(assert (=> b!81454 (= e!45746 (and tp!50833 tp!50836))))

(assert (=> b!81223 (= tp!50770 e!45746)))

(declare-fun b!81455 () Bool)

(declare-fun tp!50834 () Bool)

(assert (=> b!81455 (= e!45746 tp!50834)))

(declare-fun b!81453 () Bool)

(assert (=> b!81453 (= e!45746 tp_is_empty!701)))

(assert (= (and b!81223 ((_ is ElementMatch!389) (regex!321 (h!6866 rules!2471)))) b!81453))

(assert (= (and b!81223 ((_ is Concat!701) (regex!321 (h!6866 rules!2471)))) b!81454))

(assert (= (and b!81223 ((_ is Star!389) (regex!321 (h!6866 rules!2471)))) b!81455))

(assert (= (and b!81223 ((_ is Union!389) (regex!321 (h!6866 rules!2471)))) b!81456))

(check-sat (not d!15556) (not d!15596) (not d!15562) tp_is_empty!701 (not d!15624) (not d!15618) (not b!81308) (not b!81440) (not b!81426) (not d!15610) (not b_next!2643) (not d!15602) (not tb!2503) (not b!81421) b_and!3781 (not b_next!2649) (not b!81410) (not d!15608) (not b!81441) b_and!3779 (not b!81409) (not d!15614) (not d!15542) (not b!81339) (not bm!3715) (not d!15630) (not b!81414) (not d!15626) (not b!81456) (not b!81389) (not b!81336) (not b!81332) (not b!81309) (not d!15540) (not d!15558) (not b!81310) (not b!81418) (not b!81333) (not b!81413) (not d!15544) (not d!15548) (not d!15598) (not b!81334) (not b_next!2651) (not d!15592) (not b!81335) (not b!81431) (not b!81422) (not b!81454) (not b!81399) (not b!81417) (not d!15600) b_and!3767 (not d!15620) (not b!81338) (not d!15616) (not d!15604) (not d!15594) (not d!15590) (not b_next!2641) (not b!81455) (not d!15612) (not b!81394) (not b!81398) (not d!15512) (not b!81340) (not b!81397) (not b!81313) (not d!15588) (not d!15514) (not d!15622) (not b!81307) b_and!3777 (not b_lambda!927) (not b!81396))
(check-sat (not b_next!2643) b_and!3779 (not b_next!2651) b_and!3767 (not b_next!2641) b_and!3777 (not b_next!2649) b_and!3781)
(get-model)

(declare-fun d!15640 () Bool)

(assert (=> d!15640 true))

(declare-fun lambda!1503 () Int)

(declare-fun order!563 () Int)

(declare-fun order!565 () Int)

(declare-fun dynLambda!358 (Int Int) Int)

(declare-fun dynLambda!359 (Int Int) Int)

(assert (=> d!15640 (< (dynLambda!358 order!563 (toChars!699 (transformation!321 (h!6866 rules!2471)))) (dynLambda!359 order!565 lambda!1503))))

(assert (=> d!15640 true))

(declare-fun order!567 () Int)

(declare-fun dynLambda!360 (Int Int) Int)

(assert (=> d!15640 (< (dynLambda!360 order!567 (toValue!840 (transformation!321 (h!6866 rules!2471)))) (dynLambda!359 order!565 lambda!1503))))

(declare-fun Forall!44 (Int) Bool)

(assert (=> d!15640 (= (semiInverseModEq!61 (toChars!699 (transformation!321 (h!6866 rules!2471))) (toValue!840 (transformation!321 (h!6866 rules!2471)))) (Forall!44 lambda!1503))))

(declare-fun bs!8482 () Bool)

(assert (= bs!8482 d!15640))

(declare-fun m!57590 () Bool)

(assert (=> bs!8482 m!57590))

(assert (=> d!15630 d!15640))

(declare-fun d!15658 () Bool)

(assert (=> d!15658 (= (isEmpty!521 (list!510 (_2!964 lt!18594))) ((_ is Nil!1466) (list!510 (_2!964 lt!18594))))))

(assert (=> d!15512 d!15658))

(assert (=> d!15512 d!15598))

(declare-fun d!15660 () Bool)

(declare-fun lt!18714 () Bool)

(assert (=> d!15660 (= lt!18714 (isEmpty!521 (list!514 (c!20518 (_2!964 lt!18594)))))))

(declare-fun size!1269 (Conc!444) Int)

(assert (=> d!15660 (= lt!18714 (= (size!1269 (c!20518 (_2!964 lt!18594))) 0))))

(assert (=> d!15660 (= (isEmpty!522 (c!20518 (_2!964 lt!18594))) lt!18714)))

(declare-fun bs!8483 () Bool)

(assert (= bs!8483 d!15660))

(assert (=> bs!8483 m!57410))

(assert (=> bs!8483 m!57410))

(declare-fun m!57592 () Bool)

(assert (=> bs!8483 m!57592))

(declare-fun m!57594 () Bool)

(assert (=> bs!8483 m!57594))

(assert (=> d!15512 d!15660))

(declare-fun d!15662 () Bool)

(declare-fun c!20562 () Bool)

(assert (=> d!15662 (= c!20562 ((_ is Nil!1466) lt!18703))))

(declare-fun e!45765 () (InoxSet C!1700))

(assert (=> d!15662 (= (content!80 lt!18703) e!45765)))

(declare-fun b!81498 () Bool)

(assert (=> b!81498 (= e!45765 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81499 () Bool)

(assert (=> b!81499 (= e!45765 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18703) true) (content!80 (t!20407 lt!18703))))))

(assert (= (and d!15662 c!20562) b!81498))

(assert (= (and d!15662 (not c!20562)) b!81499))

(declare-fun m!57596 () Bool)

(assert (=> b!81499 m!57596))

(declare-fun m!57598 () Bool)

(assert (=> b!81499 m!57598))

(assert (=> d!15622 d!15662))

(declare-fun d!15664 () Bool)

(declare-fun c!20563 () Bool)

(assert (=> d!15664 (= c!20563 ((_ is Nil!1466) (list!510 (print!52 thiss!19403 lt!18596))))))

(declare-fun e!45766 () (InoxSet C!1700))

(assert (=> d!15664 (= (content!80 (list!510 (print!52 thiss!19403 lt!18596))) e!45766)))

(declare-fun b!81500 () Bool)

(assert (=> b!81500 (= e!45766 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81501 () Bool)

(assert (=> b!81501 (= e!45766 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 (list!510 (print!52 thiss!19403 lt!18596))) true) (content!80 (t!20407 (list!510 (print!52 thiss!19403 lt!18596))))))))

(assert (= (and d!15664 c!20563) b!81500))

(assert (= (and d!15664 (not c!20563)) b!81501))

(declare-fun m!57600 () Bool)

(assert (=> b!81501 m!57600))

(declare-fun m!57602 () Bool)

(assert (=> b!81501 m!57602))

(assert (=> d!15622 d!15664))

(declare-fun d!15666 () Bool)

(declare-fun c!20564 () Bool)

(assert (=> d!15666 (= c!20564 ((_ is Nil!1466) lt!18590))))

(declare-fun e!45767 () (InoxSet C!1700))

(assert (=> d!15666 (= (content!80 lt!18590) e!45767)))

(declare-fun b!81502 () Bool)

(assert (=> b!81502 (= e!45767 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81503 () Bool)

(assert (=> b!81503 (= e!45767 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18590) true) (content!80 (t!20407 lt!18590))))))

(assert (= (and d!15666 c!20564) b!81502))

(assert (= (and d!15666 (not c!20564)) b!81503))

(declare-fun m!57604 () Bool)

(assert (=> b!81503 m!57604))

(declare-fun m!57606 () Bool)

(assert (=> b!81503 m!57606))

(assert (=> d!15622 d!15666))

(declare-fun d!15668 () Bool)

(declare-fun c!20569 () Bool)

(assert (=> d!15668 (= c!20569 ((_ is Empty!445) (c!20520 (_1!964 lt!18592))))))

(declare-fun e!45772 () List!1474)

(assert (=> d!15668 (= (list!513 (c!20520 (_1!964 lt!18592))) e!45772)))

(declare-fun b!81512 () Bool)

(assert (=> b!81512 (= e!45772 Nil!1468)))

(declare-fun b!81515 () Bool)

(declare-fun e!45773 () List!1474)

(declare-fun ++!159 (List!1474 List!1474) List!1474)

(assert (=> b!81515 (= e!45773 (++!159 (list!513 (left!1114 (c!20520 (_1!964 lt!18592)))) (list!513 (right!1444 (c!20520 (_1!964 lt!18592))))))))

(declare-fun b!81514 () Bool)

(declare-fun list!516 (IArray!891) List!1474)

(assert (=> b!81514 (= e!45773 (list!516 (xs!3024 (c!20520 (_1!964 lt!18592)))))))

(declare-fun b!81513 () Bool)

(assert (=> b!81513 (= e!45772 e!45773)))

(declare-fun c!20570 () Bool)

(assert (=> b!81513 (= c!20570 ((_ is Leaf!741) (c!20520 (_1!964 lt!18592))))))

(assert (= (and d!15668 c!20569) b!81512))

(assert (= (and d!15668 (not c!20569)) b!81513))

(assert (= (and b!81513 c!20570) b!81514))

(assert (= (and b!81513 (not c!20570)) b!81515))

(declare-fun m!57608 () Bool)

(assert (=> b!81515 m!57608))

(declare-fun m!57610 () Bool)

(assert (=> b!81515 m!57610))

(assert (=> b!81515 m!57608))

(assert (=> b!81515 m!57610))

(declare-fun m!57612 () Bool)

(assert (=> b!81515 m!57612))

(declare-fun m!57614 () Bool)

(assert (=> b!81514 m!57614))

(assert (=> d!15558 d!15668))

(declare-fun b!81518 () Bool)

(declare-fun res!42406 () Bool)

(declare-fun e!45775 () Bool)

(assert (=> b!81518 (=> (not res!42406) (not e!45775))))

(declare-fun lt!18715 () List!1472)

(assert (=> b!81518 (= res!42406 (= (size!1267 lt!18715) (+ (size!1267 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (size!1267 (_2!965 (get!370 lt!18655))))))))

(declare-fun b!81519 () Bool)

(assert (=> b!81519 (= e!45775 (or (not (= (_2!965 (get!370 lt!18655)) Nil!1466)) (= lt!18715 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))))))))

(declare-fun b!81516 () Bool)

(declare-fun e!45774 () List!1472)

(assert (=> b!81516 (= e!45774 (_2!965 (get!370 lt!18655)))))

(declare-fun d!15670 () Bool)

(assert (=> d!15670 e!45775))

(declare-fun res!42407 () Bool)

(assert (=> d!15670 (=> (not res!42407) (not e!45775))))

(assert (=> d!15670 (= res!42407 (= (content!80 lt!18715) ((_ map or) (content!80 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (content!80 (_2!965 (get!370 lt!18655))))))))

(assert (=> d!15670 (= lt!18715 e!45774)))

(declare-fun c!20571 () Bool)

(assert (=> d!15670 (= c!20571 ((_ is Nil!1466) (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))))))

(assert (=> d!15670 (= (++!158 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))) (_2!965 (get!370 lt!18655))) lt!18715)))

(declare-fun b!81517 () Bool)

(assert (=> b!81517 (= e!45774 (Cons!1466 (h!6863 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (++!158 (t!20407 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (_2!965 (get!370 lt!18655)))))))

(assert (= (and d!15670 c!20571) b!81516))

(assert (= (and d!15670 (not c!20571)) b!81517))

(assert (= (and d!15670 res!42407) b!81518))

(assert (= (and b!81518 res!42406) b!81519))

(declare-fun m!57616 () Bool)

(assert (=> b!81518 m!57616))

(assert (=> b!81518 m!57288))

(declare-fun m!57618 () Bool)

(assert (=> b!81518 m!57618))

(assert (=> b!81518 m!57280))

(declare-fun m!57620 () Bool)

(assert (=> d!15670 m!57620))

(assert (=> d!15670 m!57288))

(declare-fun m!57622 () Bool)

(assert (=> d!15670 m!57622))

(declare-fun m!57624 () Bool)

(assert (=> d!15670 m!57624))

(declare-fun m!57626 () Bool)

(assert (=> b!81517 m!57626))

(assert (=> b!81340 d!15670))

(declare-fun d!15672 () Bool)

(assert (=> d!15672 (= (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))) (list!514 (c!20518 (charsOf!58 (_1!965 (get!370 lt!18655))))))))

(declare-fun bs!8484 () Bool)

(assert (= bs!8484 d!15672))

(declare-fun m!57628 () Bool)

(assert (=> bs!8484 m!57628))

(assert (=> b!81340 d!15672))

(declare-fun d!15674 () Bool)

(declare-fun lt!18716 () BalanceConc!892)

(assert (=> d!15674 (= (list!510 lt!18716) (originalCharacters!372 (_1!965 (get!370 lt!18655))))))

(assert (=> d!15674 (= lt!18716 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655))))) (value!12044 (_1!965 (get!370 lt!18655)))))))

(assert (=> d!15674 (= (charsOf!58 (_1!965 (get!370 lt!18655))) lt!18716)))

(declare-fun b_lambda!929 () Bool)

(assert (=> (not b_lambda!929) (not d!15674)))

(declare-fun tb!2507 () Bool)

(declare-fun t!20425 () Bool)

(assert (=> (and b!81224 (= (toChars!699 (transformation!321 (h!6866 rules!2471))) (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20425) tb!2507))

(declare-fun b!81520 () Bool)

(declare-fun e!45776 () Bool)

(declare-fun tp!50837 () Bool)

(assert (=> b!81520 (= e!45776 (and (inv!1817 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655))))) (value!12044 (_1!965 (get!370 lt!18655)))))) tp!50837))))

(declare-fun result!3652 () Bool)

(assert (=> tb!2507 (= result!3652 (and (inv!1818 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655))))) (value!12044 (_1!965 (get!370 lt!18655))))) e!45776))))

(assert (= tb!2507 b!81520))

(declare-fun m!57630 () Bool)

(assert (=> b!81520 m!57630))

(declare-fun m!57632 () Bool)

(assert (=> tb!2507 m!57632))

(assert (=> d!15674 t!20425))

(declare-fun b_and!3783 () Bool)

(assert (= b_and!3777 (and (=> t!20425 result!3652) b_and!3783)))

(declare-fun tb!2509 () Bool)

(declare-fun t!20427 () Bool)

(assert (=> (and b!81442 (= (toChars!699 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20427) tb!2509))

(declare-fun result!3654 () Bool)

(assert (= result!3654 result!3652))

(assert (=> d!15674 t!20427))

(declare-fun b_and!3785 () Bool)

(assert (= b_and!3781 (and (=> t!20427 result!3654) b_and!3785)))

(declare-fun m!57634 () Bool)

(assert (=> d!15674 m!57634))

(declare-fun m!57636 () Bool)

(assert (=> d!15674 m!57636))

(assert (=> b!81340 d!15674))

(declare-fun d!15676 () Bool)

(assert (=> d!15676 (= (get!370 lt!18655) (v!12826 lt!18655))))

(assert (=> b!81340 d!15676))

(assert (=> d!15592 d!15610))

(declare-fun d!15678 () Bool)

(assert (=> d!15678 (= (list!509 (seqFromList!155 ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591)))) (list!513 (c!20520 (seqFromList!155 ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591))))))))

(declare-fun bs!8485 () Bool)

(assert (= bs!8485 d!15678))

(declare-fun m!57638 () Bool)

(assert (=> bs!8485 m!57638))

(assert (=> d!15592 d!15678))

(declare-fun d!15680 () Bool)

(assert (=> d!15680 (= (seqFromList!155 ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591))) (fromListB!57 ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591))))))

(declare-fun bs!8486 () Bool)

(assert (= bs!8486 d!15680))

(assert (=> bs!8486 m!57394))

(declare-fun m!57640 () Bool)

(assert (=> bs!8486 m!57640))

(assert (=> d!15592 d!15680))

(declare-fun d!15682 () Bool)

(assert (=> d!15682 (= (list!509 (prepend!83 (seqFromList!155 (t!20409 lt!18591)) (h!6865 lt!18591))) (list!513 (c!20520 (prepend!83 (seqFromList!155 (t!20409 lt!18591)) (h!6865 lt!18591)))))))

(declare-fun bs!8487 () Bool)

(assert (= bs!8487 d!15682))

(declare-fun m!57642 () Bool)

(assert (=> bs!8487 m!57642))

(assert (=> d!15592 d!15682))

(assert (=> d!15592 d!15544))

(declare-fun d!15684 () Bool)

(declare-fun e!45777 () Bool)

(assert (=> d!15684 e!45777))

(declare-fun res!42408 () Bool)

(assert (=> d!15684 (=> (not res!42408) (not e!45777))))

(assert (=> d!15684 (= res!42408 (isBalanced!92 (prepend!85 (c!20520 (seqFromList!155 (t!20409 lt!18591))) (h!6865 lt!18591))))))

(declare-fun lt!18717 () BalanceConc!894)

(assert (=> d!15684 (= lt!18717 (BalanceConc!895 (prepend!85 (c!20520 (seqFromList!155 (t!20409 lt!18591))) (h!6865 lt!18591))))))

(assert (=> d!15684 (= (prepend!83 (seqFromList!155 (t!20409 lt!18591)) (h!6865 lt!18591)) lt!18717)))

(declare-fun b!81521 () Bool)

(assert (=> b!81521 (= e!45777 (= (list!509 lt!18717) (Cons!1468 (h!6865 lt!18591) (list!509 (seqFromList!155 (t!20409 lt!18591))))))))

(assert (= (and d!15684 res!42408) b!81521))

(declare-fun m!57644 () Bool)

(assert (=> d!15684 m!57644))

(assert (=> d!15684 m!57644))

(declare-fun m!57646 () Bool)

(assert (=> d!15684 m!57646))

(declare-fun m!57648 () Bool)

(assert (=> b!81521 m!57648))

(assert (=> b!81521 m!57054))

(declare-fun m!57650 () Bool)

(assert (=> b!81521 m!57650))

(assert (=> d!15592 d!15684))

(declare-fun d!15686 () Bool)

(assert (=> d!15686 (= ($colon$colon!26 (t!20409 lt!18591) (h!6865 lt!18591)) (Cons!1468 (h!6865 lt!18591) (t!20409 lt!18591)))))

(assert (=> d!15592 d!15686))

(declare-fun d!15688 () Bool)

(assert (=> d!15688 (= (list!509 (_1!964 lt!18594)) (list!509 (prepend!83 (seqFromList!155 (t!20409 lt!18591)) (h!6865 lt!18591))))))

(assert (=> d!15688 true))

(declare-fun _$1!9865 () Unit!914)

(assert (=> d!15688 (= (choose!1309 (h!6865 lt!18591) (t!20409 lt!18591) (_1!964 lt!18594)) _$1!9865)))

(declare-fun bs!8488 () Bool)

(assert (= bs!8488 d!15688))

(assert (=> bs!8488 m!57058))

(assert (=> bs!8488 m!57054))

(assert (=> bs!8488 m!57054))

(assert (=> bs!8488 m!57398))

(assert (=> bs!8488 m!57398))

(assert (=> bs!8488 m!57400))

(assert (=> d!15592 d!15688))

(declare-fun d!15690 () Bool)

(assert (=> d!15690 (= (list!510 (_2!964 lt!18688)) (list!514 (c!20518 (_2!964 lt!18688))))))

(declare-fun bs!8489 () Bool)

(assert (= bs!8489 d!15690))

(declare-fun m!57652 () Bool)

(assert (=> bs!8489 m!57652))

(assert (=> b!81399 d!15690))

(declare-fun b!81544 () Bool)

(declare-fun e!45793 () Bool)

(declare-fun e!45794 () Bool)

(assert (=> b!81544 (= e!45793 e!45794)))

(declare-fun res!42423 () Bool)

(declare-fun lt!18731 () tuple2!1518)

(assert (=> b!81544 (= res!42423 (< (size!1267 (_2!966 lt!18731)) (size!1267 (list!510 (seqFromList!154 (_2!965 lt!18593))))))))

(assert (=> b!81544 (=> (not res!42423) (not e!45794))))

(declare-fun b!81545 () Bool)

(assert (=> b!81545 (= e!45793 (= (_2!966 lt!18731) (list!510 (seqFromList!154 (_2!965 lt!18593)))))))

(declare-fun b!81546 () Bool)

(declare-fun isEmpty!525 (List!1474) Bool)

(assert (=> b!81546 (= e!45794 (not (isEmpty!525 (_1!966 lt!18731))))))

(declare-fun b!81547 () Bool)

(declare-fun e!45795 () tuple2!1518)

(declare-fun lt!18732 () Option!130)

(declare-fun lt!18730 () tuple2!1518)

(assert (=> b!81547 (= e!45795 (tuple2!1519 (Cons!1468 (_1!965 (v!12826 lt!18732)) (_1!966 lt!18730)) (_2!966 lt!18730)))))

(assert (=> b!81547 (= lt!18730 (lexList!49 thiss!19403 rules!2471 (_2!965 (v!12826 lt!18732))))))

(declare-fun d!15692 () Bool)

(assert (=> d!15692 e!45793))

(declare-fun c!20576 () Bool)

(declare-fun size!1272 (List!1474) Int)

(assert (=> d!15692 (= c!20576 (> (size!1272 (_1!966 lt!18731)) 0))))

(assert (=> d!15692 (= lt!18731 e!45795)))

(declare-fun c!20577 () Bool)

(assert (=> d!15692 (= c!20577 ((_ is Some!129) lt!18732))))

(assert (=> d!15692 (= lt!18732 (maxPrefix!57 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 lt!18593)))))))

(assert (=> d!15692 (= (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 lt!18593)))) lt!18731)))

(declare-fun b!81548 () Bool)

(assert (=> b!81548 (= e!45795 (tuple2!1519 Nil!1468 (list!510 (seqFromList!154 (_2!965 lt!18593)))))))

(assert (= (and d!15692 c!20577) b!81547))

(assert (= (and d!15692 (not c!20577)) b!81548))

(assert (= (and d!15692 c!20576) b!81544))

(assert (= (and d!15692 (not c!20576)) b!81545))

(assert (= (and b!81544 res!42423) b!81546))

(declare-fun m!57672 () Bool)

(assert (=> b!81544 m!57672))

(assert (=> b!81544 m!57424))

(declare-fun m!57674 () Bool)

(assert (=> b!81544 m!57674))

(declare-fun m!57676 () Bool)

(assert (=> b!81546 m!57676))

(declare-fun m!57678 () Bool)

(assert (=> b!81547 m!57678))

(declare-fun m!57680 () Bool)

(assert (=> d!15692 m!57680))

(assert (=> d!15692 m!57424))

(declare-fun m!57682 () Bool)

(assert (=> d!15692 m!57682))

(assert (=> b!81399 d!15692))

(declare-fun d!15704 () Bool)

(assert (=> d!15704 (= (list!510 (seqFromList!154 (_2!965 lt!18593))) (list!514 (c!20518 (seqFromList!154 (_2!965 lt!18593)))))))

(declare-fun bs!8493 () Bool)

(assert (= bs!8493 d!15704))

(declare-fun m!57684 () Bool)

(assert (=> bs!8493 m!57684))

(assert (=> b!81399 d!15704))

(declare-fun b!81562 () Bool)

(declare-fun e!45804 () List!1472)

(declare-fun e!45805 () List!1472)

(assert (=> b!81562 (= e!45804 e!45805)))

(declare-fun c!20583 () Bool)

(assert (=> b!81562 (= c!20583 ((_ is Leaf!740) (c!20518 (_2!964 lt!18594))))))

(declare-fun b!81563 () Bool)

(declare-fun list!517 (IArray!889) List!1472)

(assert (=> b!81563 (= e!45805 (list!517 (xs!3023 (c!20518 (_2!964 lt!18594)))))))

(declare-fun b!81561 () Bool)

(assert (=> b!81561 (= e!45804 Nil!1466)))

(declare-fun b!81564 () Bool)

(assert (=> b!81564 (= e!45805 (++!158 (list!514 (left!1113 (c!20518 (_2!964 lt!18594)))) (list!514 (right!1443 (c!20518 (_2!964 lt!18594))))))))

(declare-fun d!15706 () Bool)

(declare-fun c!20582 () Bool)

(assert (=> d!15706 (= c!20582 ((_ is Empty!444) (c!20518 (_2!964 lt!18594))))))

(assert (=> d!15706 (= (list!514 (c!20518 (_2!964 lt!18594))) e!45804)))

(assert (= (and d!15706 c!20582) b!81561))

(assert (= (and d!15706 (not c!20582)) b!81562))

(assert (= (and b!81562 c!20583) b!81563))

(assert (= (and b!81562 (not c!20583)) b!81564))

(declare-fun m!57688 () Bool)

(assert (=> b!81563 m!57688))

(declare-fun m!57690 () Bool)

(assert (=> b!81564 m!57690))

(declare-fun m!57692 () Bool)

(assert (=> b!81564 m!57692))

(assert (=> b!81564 m!57690))

(assert (=> b!81564 m!57692))

(declare-fun m!57694 () Bool)

(assert (=> b!81564 m!57694))

(assert (=> d!15598 d!15706))

(assert (=> d!15612 d!15548))

(declare-fun d!15710 () Bool)

(declare-fun lt!18744 () tuple2!1514)

(assert (=> d!15710 (= (tuple2!1519 (list!509 (_1!964 lt!18744)) (list!510 (_2!964 lt!18744))) (tuple2!1519 (tail!134 lt!18591) lt!18590))))

(assert (=> d!15710 (= lt!18744 (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!15710 true))

(declare-fun _$54!159 () Unit!914)

(assert (=> d!15710 (= (choose!1310 thiss!19403 rules!2471 input!2238 lt!18591 lt!18590) _$54!159)))

(declare-fun bs!8496 () Bool)

(assert (= bs!8496 d!15710))

(assert (=> bs!8496 m!57016))

(assert (=> bs!8496 m!57464))

(assert (=> bs!8496 m!57048))

(assert (=> bs!8496 m!57456))

(assert (=> bs!8496 m!57460))

(assert (=> bs!8496 m!57456))

(declare-fun m!57706 () Bool)

(assert (=> bs!8496 m!57706))

(assert (=> bs!8496 m!57016))

(declare-fun m!57708 () Bool)

(assert (=> bs!8496 m!57708))

(assert (=> d!15612 d!15710))

(declare-fun d!15716 () Bool)

(assert (=> d!15716 (= (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))) (fromListB!56 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!8497 () Bool)

(assert (= bs!8497 d!15716))

(declare-fun m!57710 () Bool)

(assert (=> bs!8497 m!57710))

(assert (=> d!15612 d!15716))

(declare-fun d!15718 () Bool)

(assert (=> d!15718 (= (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)) (v!12826 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))))

(assert (=> d!15612 d!15718))

(declare-fun e!45810 () Bool)

(declare-fun b!81569 () Bool)

(declare-fun lt!18745 () tuple2!1514)

(assert (=> b!81569 (= e!45810 (= (_2!964 lt!18745) (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238))))))))

(declare-fun b!81570 () Bool)

(declare-fun e!45809 () Bool)

(assert (=> b!81570 (= e!45809 (not (isEmpty!523 (_1!964 lt!18745))))))

(declare-fun b!81571 () Bool)

(assert (=> b!81571 (= e!45810 e!45809)))

(declare-fun res!42430 () Bool)

(assert (=> b!81571 (= res!42430 (< (size!1265 (_2!964 lt!18745)) (size!1265 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!81571 (=> (not res!42430) (not e!45809))))

(declare-fun b!81572 () Bool)

(declare-fun res!42431 () Bool)

(declare-fun e!45808 () Bool)

(assert (=> b!81572 (=> (not res!42431) (not e!45808))))

(assert (=> b!81572 (= res!42431 (= (list!509 (_1!964 lt!18745)) (_1!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!81573 () Bool)

(assert (=> b!81573 (= e!45808 (= (list!510 (_2!964 lt!18745)) (_2!966 (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun d!15720 () Bool)

(assert (=> d!15720 e!45808))

(declare-fun res!42432 () Bool)

(assert (=> d!15720 (=> (not res!42432) (not e!45808))))

(assert (=> d!15720 (= res!42432 e!45810)))

(declare-fun c!20584 () Bool)

(assert (=> d!15720 (= c!20584 (> (size!1266 (_1!964 lt!18745)) 0))))

(assert (=> d!15720 (= lt!18745 (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))) (BalanceConc!893 Empty!444) (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238)))) (BalanceConc!895 Empty!445)))))

(assert (=> d!15720 (= (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 (get!370 (maxPrefix!57 thiss!19403 rules!2471 input!2238))))) lt!18745)))

(assert (= (and d!15720 c!20584) b!81571))

(assert (= (and d!15720 (not c!20584)) b!81569))

(assert (= (and b!81571 res!42430) b!81570))

(assert (= (and d!15720 res!42432) b!81572))

(assert (= (and b!81572 res!42431) b!81573))

(declare-fun m!57712 () Bool)

(assert (=> b!81572 m!57712))

(assert (=> b!81572 m!57456))

(declare-fun m!57714 () Bool)

(assert (=> b!81572 m!57714))

(assert (=> b!81572 m!57714))

(declare-fun m!57716 () Bool)

(assert (=> b!81572 m!57716))

(declare-fun m!57718 () Bool)

(assert (=> b!81573 m!57718))

(assert (=> b!81573 m!57456))

(assert (=> b!81573 m!57714))

(assert (=> b!81573 m!57714))

(assert (=> b!81573 m!57716))

(declare-fun m!57720 () Bool)

(assert (=> d!15720 m!57720))

(assert (=> d!15720 m!57456))

(assert (=> d!15720 m!57456))

(declare-fun m!57722 () Bool)

(assert (=> d!15720 m!57722))

(declare-fun m!57724 () Bool)

(assert (=> b!81570 m!57724))

(declare-fun m!57726 () Bool)

(assert (=> b!81571 m!57726))

(assert (=> b!81571 m!57456))

(declare-fun m!57728 () Bool)

(assert (=> b!81571 m!57728))

(assert (=> d!15612 d!15720))

(assert (=> d!15612 d!15606))

(declare-fun d!15722 () Bool)

(assert (=> d!15722 (= (list!509 (_1!964 lt!18697)) (list!513 (c!20520 (_1!964 lt!18697))))))

(declare-fun bs!8498 () Bool)

(assert (= bs!8498 d!15722))

(declare-fun m!57730 () Bool)

(assert (=> bs!8498 m!57730))

(assert (=> d!15612 d!15722))

(assert (=> d!15612 d!15542))

(declare-fun d!15724 () Bool)

(assert (=> d!15724 (= (list!510 (_2!964 lt!18697)) (list!514 (c!20518 (_2!964 lt!18697))))))

(declare-fun bs!8499 () Bool)

(assert (= bs!8499 d!15724))

(declare-fun m!57732 () Bool)

(assert (=> bs!8499 m!57732))

(assert (=> d!15612 d!15724))

(assert (=> b!81338 d!15676))

(declare-fun d!15726 () Bool)

(declare-fun dynLambda!361 (Int BalanceConc!892) TokenValue!311)

(assert (=> d!15726 (= (apply!203 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18655))))) (dynLambda!361 (toValue!840 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655))))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18655))))))))

(declare-fun b_lambda!931 () Bool)

(assert (=> (not b_lambda!931) (not d!15726)))

(declare-fun t!20431 () Bool)

(declare-fun tb!2511 () Bool)

(assert (=> (and b!81224 (= (toValue!840 (transformation!321 (h!6866 rules!2471))) (toValue!840 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20431) tb!2511))

(declare-fun result!3656 () Bool)

(declare-fun inv!21 (TokenValue!311) Bool)

(assert (=> tb!2511 (= result!3656 (inv!21 (dynLambda!361 (toValue!840 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655))))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18655)))))))))

(declare-fun m!57734 () Bool)

(assert (=> tb!2511 m!57734))

(assert (=> d!15726 t!20431))

(declare-fun b_and!3787 () Bool)

(assert (= b_and!3767 (and (=> t!20431 result!3656) b_and!3787)))

(declare-fun tb!2513 () Bool)

(declare-fun t!20433 () Bool)

(assert (=> (and b!81442 (= (toValue!840 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toValue!840 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20433) tb!2513))

(declare-fun result!3660 () Bool)

(assert (= result!3660 result!3656))

(assert (=> d!15726 t!20433))

(declare-fun b_and!3789 () Bool)

(assert (= b_and!3779 (and (=> t!20433 result!3660) b_and!3789)))

(assert (=> d!15726 m!57300))

(declare-fun m!57736 () Bool)

(assert (=> d!15726 m!57736))

(assert (=> b!81338 d!15726))

(declare-fun d!15728 () Bool)

(assert (=> d!15728 (= (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18655)))) (fromListB!56 (originalCharacters!372 (_1!965 (get!370 lt!18655)))))))

(declare-fun bs!8500 () Bool)

(assert (= bs!8500 d!15728))

(declare-fun m!57738 () Bool)

(assert (=> bs!8500 m!57738))

(assert (=> b!81338 d!15728))

(declare-fun b!81578 () Bool)

(declare-fun res!42433 () Bool)

(declare-fun e!45815 () Bool)

(assert (=> b!81578 (=> (not res!42433) (not e!45815))))

(declare-fun lt!18746 () List!1472)

(assert (=> b!81578 (= res!42433 (= (size!1267 lt!18746) (+ (size!1267 (t!20407 lt!18585)) (size!1267 lt!18588))))))

(declare-fun b!81579 () Bool)

(assert (=> b!81579 (= e!45815 (or (not (= lt!18588 Nil!1466)) (= lt!18746 (t!20407 lt!18585))))))

(declare-fun b!81576 () Bool)

(declare-fun e!45814 () List!1472)

(assert (=> b!81576 (= e!45814 lt!18588)))

(declare-fun d!15730 () Bool)

(assert (=> d!15730 e!45815))

(declare-fun res!42434 () Bool)

(assert (=> d!15730 (=> (not res!42434) (not e!45815))))

(assert (=> d!15730 (= res!42434 (= (content!80 lt!18746) ((_ map or) (content!80 (t!20407 lt!18585)) (content!80 lt!18588))))))

(assert (=> d!15730 (= lt!18746 e!45814)))

(declare-fun c!20585 () Bool)

(assert (=> d!15730 (= c!20585 ((_ is Nil!1466) (t!20407 lt!18585)))))

(assert (=> d!15730 (= (++!158 (t!20407 lt!18585) lt!18588) lt!18746)))

(declare-fun b!81577 () Bool)

(assert (=> b!81577 (= e!45814 (Cons!1466 (h!6863 (t!20407 lt!18585)) (++!158 (t!20407 (t!20407 lt!18585)) lt!18588)))))

(assert (= (and d!15730 c!20585) b!81576))

(assert (= (and d!15730 (not c!20585)) b!81577))

(assert (= (and d!15730 res!42434) b!81578))

(assert (= (and b!81578 res!42433) b!81579))

(declare-fun m!57740 () Bool)

(assert (=> b!81578 m!57740))

(declare-fun m!57742 () Bool)

(assert (=> b!81578 m!57742))

(assert (=> b!81578 m!57478))

(declare-fun m!57744 () Bool)

(assert (=> d!15730 m!57744))

(declare-fun m!57746 () Bool)

(assert (=> d!15730 m!57746))

(assert (=> d!15730 m!57484))

(declare-fun m!57748 () Bool)

(assert (=> b!81577 m!57748))

(assert (=> b!81413 d!15730))

(declare-fun b!81608 () Bool)

(declare-fun e!45831 () Bool)

(declare-fun e!45836 () Bool)

(assert (=> b!81608 (= e!45831 e!45836)))

(declare-fun res!42455 () Bool)

(assert (=> b!81608 (=> res!42455 e!45836)))

(declare-fun call!3723 () Bool)

(assert (=> b!81608 (= res!42455 call!3723)))

(declare-fun b!81609 () Bool)

(declare-fun res!42452 () Bool)

(declare-fun e!45835 () Bool)

(assert (=> b!81609 (=> (not res!42452) (not e!45835))))

(declare-fun tail!136 (List!1472) List!1472)

(assert (=> b!81609 (= res!42452 (isEmpty!521 (tail!136 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))))))))

(declare-fun b!81610 () Bool)

(declare-fun res!42453 () Bool)

(assert (=> b!81610 (=> res!42453 e!45836)))

(assert (=> b!81610 (= res!42453 (not (isEmpty!521 (tail!136 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))))))))

(declare-fun b!81611 () Bool)

(declare-fun e!45834 () Bool)

(assert (=> b!81611 (= e!45834 e!45831)))

(declare-fun res!42457 () Bool)

(assert (=> b!81611 (=> (not res!42457) (not e!45831))))

(declare-fun lt!18749 () Bool)

(assert (=> b!81611 (= res!42457 (not lt!18749))))

(declare-fun d!15732 () Bool)

(declare-fun e!45832 () Bool)

(assert (=> d!15732 e!45832))

(declare-fun c!20593 () Bool)

(assert (=> d!15732 (= c!20593 ((_ is EmptyExpr!389) (regex!321 (rule!804 (_1!965 (get!370 lt!18655))))))))

(declare-fun e!45830 () Bool)

(assert (=> d!15732 (= lt!18749 e!45830)))

(declare-fun c!20592 () Bool)

(assert (=> d!15732 (= c!20592 (isEmpty!521 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))))))

(declare-fun validRegex!42 (Regex!389) Bool)

(assert (=> d!15732 (validRegex!42 (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))))))

(assert (=> d!15732 (= (matchR!27 (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))) (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) lt!18749)))

(declare-fun b!81612 () Bool)

(declare-fun res!42454 () Bool)

(assert (=> b!81612 (=> res!42454 e!45834)))

(assert (=> b!81612 (= res!42454 (not ((_ is ElementMatch!389) (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))))))))

(declare-fun e!45833 () Bool)

(assert (=> b!81612 (= e!45833 e!45834)))

(declare-fun b!81613 () Bool)

(declare-fun head!427 (List!1472) C!1700)

(assert (=> b!81613 (= e!45836 (not (= (head!427 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (c!20519 (regex!321 (rule!804 (_1!965 (get!370 lt!18655))))))))))

(declare-fun bm!3718 () Bool)

(assert (=> bm!3718 (= call!3723 (isEmpty!521 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))))))

(declare-fun b!81614 () Bool)

(assert (=> b!81614 (= e!45832 (= lt!18749 call!3723))))

(declare-fun b!81615 () Bool)

(declare-fun derivativeStep!17 (Regex!389 C!1700) Regex!389)

(assert (=> b!81615 (= e!45830 (matchR!27 (derivativeStep!17 (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))) (head!427 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))))) (tail!136 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655)))))))))

(declare-fun b!81616 () Bool)

(assert (=> b!81616 (= e!45835 (= (head!427 (list!510 (charsOf!58 (_1!965 (get!370 lt!18655))))) (c!20519 (regex!321 (rule!804 (_1!965 (get!370 lt!18655)))))))))

(declare-fun b!81617 () Bool)

(declare-fun nullable!35 (Regex!389) Bool)

(assert (=> b!81617 (= e!45830 (nullable!35 (regex!321 (rule!804 (_1!965 (get!370 lt!18655))))))))

(declare-fun b!81618 () Bool)

(declare-fun res!42458 () Bool)

(assert (=> b!81618 (=> res!42458 e!45834)))

(assert (=> b!81618 (= res!42458 e!45835)))

(declare-fun res!42456 () Bool)

(assert (=> b!81618 (=> (not res!42456) (not e!45835))))

(assert (=> b!81618 (= res!42456 lt!18749)))

(declare-fun b!81619 () Bool)

(assert (=> b!81619 (= e!45833 (not lt!18749))))

(declare-fun b!81620 () Bool)

(declare-fun res!42451 () Bool)

(assert (=> b!81620 (=> (not res!42451) (not e!45835))))

(assert (=> b!81620 (= res!42451 (not call!3723))))

(declare-fun b!81621 () Bool)

(assert (=> b!81621 (= e!45832 e!45833)))

(declare-fun c!20594 () Bool)

(assert (=> b!81621 (= c!20594 ((_ is EmptyLang!389) (regex!321 (rule!804 (_1!965 (get!370 lt!18655))))))))

(assert (= (and d!15732 c!20592) b!81617))

(assert (= (and d!15732 (not c!20592)) b!81615))

(assert (= (and d!15732 c!20593) b!81614))

(assert (= (and d!15732 (not c!20593)) b!81621))

(assert (= (and b!81621 c!20594) b!81619))

(assert (= (and b!81621 (not c!20594)) b!81612))

(assert (= (and b!81612 (not res!42454)) b!81618))

(assert (= (and b!81618 res!42456) b!81620))

(assert (= (and b!81620 res!42451) b!81609))

(assert (= (and b!81609 res!42452) b!81616))

(assert (= (and b!81618 (not res!42458)) b!81611))

(assert (= (and b!81611 res!42457) b!81608))

(assert (= (and b!81608 (not res!42455)) b!81610))

(assert (= (and b!81610 (not res!42453)) b!81613))

(assert (= (or b!81614 b!81608 b!81620) bm!3718))

(assert (=> b!81610 m!57288))

(declare-fun m!57750 () Bool)

(assert (=> b!81610 m!57750))

(assert (=> b!81610 m!57750))

(declare-fun m!57752 () Bool)

(assert (=> b!81610 m!57752))

(assert (=> d!15732 m!57288))

(declare-fun m!57754 () Bool)

(assert (=> d!15732 m!57754))

(declare-fun m!57756 () Bool)

(assert (=> d!15732 m!57756))

(assert (=> b!81613 m!57288))

(declare-fun m!57758 () Bool)

(assert (=> b!81613 m!57758))

(assert (=> bm!3718 m!57288))

(assert (=> bm!3718 m!57754))

(declare-fun m!57760 () Bool)

(assert (=> b!81617 m!57760))

(assert (=> b!81615 m!57288))

(assert (=> b!81615 m!57758))

(assert (=> b!81615 m!57758))

(declare-fun m!57762 () Bool)

(assert (=> b!81615 m!57762))

(assert (=> b!81615 m!57288))

(assert (=> b!81615 m!57750))

(assert (=> b!81615 m!57762))

(assert (=> b!81615 m!57750))

(declare-fun m!57764 () Bool)

(assert (=> b!81615 m!57764))

(assert (=> b!81609 m!57288))

(assert (=> b!81609 m!57750))

(assert (=> b!81609 m!57750))

(assert (=> b!81609 m!57752))

(assert (=> b!81616 m!57288))

(assert (=> b!81616 m!57758))

(assert (=> b!81336 d!15732))

(assert (=> b!81336 d!15676))

(assert (=> b!81336 d!15672))

(assert (=> b!81336 d!15674))

(declare-fun d!15734 () Bool)

(declare-fun lt!18752 () Int)

(assert (=> d!15734 (>= lt!18752 0)))

(declare-fun e!45839 () Int)

(assert (=> d!15734 (= lt!18752 e!45839)))

(declare-fun c!20597 () Bool)

(assert (=> d!15734 (= c!20597 ((_ is Nil!1466) lt!18691))))

(assert (=> d!15734 (= (size!1267 lt!18691) lt!18752)))

(declare-fun b!81626 () Bool)

(assert (=> b!81626 (= e!45839 0)))

(declare-fun b!81627 () Bool)

(assert (=> b!81627 (= e!45839 (+ 1 (size!1267 (t!20407 lt!18691))))))

(assert (= (and d!15734 c!20597) b!81626))

(assert (= (and d!15734 (not c!20597)) b!81627))

(declare-fun m!57766 () Bool)

(assert (=> b!81627 m!57766))

(assert (=> b!81410 d!15734))

(declare-fun d!15736 () Bool)

(declare-fun lt!18753 () Int)

(assert (=> d!15736 (>= lt!18753 0)))

(declare-fun e!45840 () Int)

(assert (=> d!15736 (= lt!18753 e!45840)))

(declare-fun c!20598 () Bool)

(assert (=> d!15736 (= c!20598 ((_ is Nil!1466) lt!18597))))

(assert (=> d!15736 (= (size!1267 lt!18597) lt!18753)))

(declare-fun b!81628 () Bool)

(assert (=> b!81628 (= e!45840 0)))

(declare-fun b!81629 () Bool)

(assert (=> b!81629 (= e!45840 (+ 1 (size!1267 (t!20407 lt!18597))))))

(assert (= (and d!15736 c!20598) b!81628))

(assert (= (and d!15736 (not c!20598)) b!81629))

(declare-fun m!57768 () Bool)

(assert (=> b!81629 m!57768))

(assert (=> b!81410 d!15736))

(declare-fun d!15738 () Bool)

(declare-fun lt!18754 () Int)

(assert (=> d!15738 (>= lt!18754 0)))

(declare-fun e!45841 () Int)

(assert (=> d!15738 (= lt!18754 e!45841)))

(declare-fun c!20599 () Bool)

(assert (=> d!15738 (= c!20599 ((_ is Nil!1466) (_2!965 lt!18593)))))

(assert (=> d!15738 (= (size!1267 (_2!965 lt!18593)) lt!18754)))

(declare-fun b!81630 () Bool)

(assert (=> b!81630 (= e!45841 0)))

(declare-fun b!81631 () Bool)

(assert (=> b!81631 (= e!45841 (+ 1 (size!1267 (t!20407 (_2!965 lt!18593)))))))

(assert (= (and d!15738 c!20599) b!81630))

(assert (= (and d!15738 (not c!20599)) b!81631))

(declare-fun m!57770 () Bool)

(assert (=> b!81631 m!57770))

(assert (=> b!81410 d!15738))

(declare-fun d!15740 () Bool)

(assert (=> d!15740 true))

(declare-fun lt!18757 () Bool)

(assert (=> d!15740 (= lt!18757 (rulesValidInductive!50 thiss!19403 rules!2471))))

(declare-fun lambda!1509 () Int)

(declare-fun forall!196 (List!1475 Int) Bool)

(assert (=> d!15740 (= lt!18757 (forall!196 rules!2471 lambda!1509))))

(assert (=> d!15740 (= (rulesValid!69 thiss!19403 rules!2471) lt!18757)))

(declare-fun bs!8501 () Bool)

(assert (= bs!8501 d!15740))

(assert (=> bs!8501 m!57298))

(declare-fun m!57772 () Bool)

(assert (=> bs!8501 m!57772))

(assert (=> d!15542 d!15740))

(declare-fun d!15742 () Bool)

(declare-fun c!20600 () Bool)

(assert (=> d!15742 (= c!20600 ((_ is Empty!445) (c!20520 (_1!964 lt!18594))))))

(declare-fun e!45842 () List!1474)

(assert (=> d!15742 (= (list!513 (c!20520 (_1!964 lt!18594))) e!45842)))

(declare-fun b!81634 () Bool)

(assert (=> b!81634 (= e!45842 Nil!1468)))

(declare-fun b!81637 () Bool)

(declare-fun e!45843 () List!1474)

(assert (=> b!81637 (= e!45843 (++!159 (list!513 (left!1114 (c!20520 (_1!964 lt!18594)))) (list!513 (right!1444 (c!20520 (_1!964 lt!18594))))))))

(declare-fun b!81636 () Bool)

(assert (=> b!81636 (= e!45843 (list!516 (xs!3024 (c!20520 (_1!964 lt!18594)))))))

(declare-fun b!81635 () Bool)

(assert (=> b!81635 (= e!45842 e!45843)))

(declare-fun c!20601 () Bool)

(assert (=> b!81635 (= c!20601 ((_ is Leaf!741) (c!20520 (_1!964 lt!18594))))))

(assert (= (and d!15742 c!20600) b!81634))

(assert (= (and d!15742 (not c!20600)) b!81635))

(assert (= (and b!81635 c!20601) b!81636))

(assert (= (and b!81635 (not c!20601)) b!81637))

(declare-fun m!57774 () Bool)

(assert (=> b!81637 m!57774))

(declare-fun m!57776 () Bool)

(assert (=> b!81637 m!57776))

(assert (=> b!81637 m!57774))

(assert (=> b!81637 m!57776))

(declare-fun m!57778 () Bool)

(assert (=> b!81637 m!57778))

(declare-fun m!57780 () Bool)

(assert (=> b!81636 m!57780))

(assert (=> d!15544 d!15742))

(declare-fun d!15744 () Bool)

(declare-fun lt!18760 () Int)

(assert (=> d!15744 (= lt!18760 (size!1267 (list!510 (_2!964 lt!18688))))))

(assert (=> d!15744 (= lt!18760 (size!1269 (c!20518 (_2!964 lt!18688))))))

(assert (=> d!15744 (= (size!1265 (_2!964 lt!18688)) lt!18760)))

(declare-fun bs!8502 () Bool)

(assert (= bs!8502 d!15744))

(assert (=> bs!8502 m!57428))

(assert (=> bs!8502 m!57428))

(declare-fun m!57782 () Bool)

(assert (=> bs!8502 m!57782))

(declare-fun m!57784 () Bool)

(assert (=> bs!8502 m!57784))

(assert (=> b!81397 d!15744))

(declare-fun d!15746 () Bool)

(declare-fun lt!18761 () Int)

(assert (=> d!15746 (= lt!18761 (size!1267 (list!510 (seqFromList!154 (_2!965 lt!18593)))))))

(assert (=> d!15746 (= lt!18761 (size!1269 (c!20518 (seqFromList!154 (_2!965 lt!18593)))))))

(assert (=> d!15746 (= (size!1265 (seqFromList!154 (_2!965 lt!18593))) lt!18761)))

(declare-fun bs!8503 () Bool)

(assert (= bs!8503 d!15746))

(assert (=> bs!8503 m!57020))

(assert (=> bs!8503 m!57424))

(assert (=> bs!8503 m!57424))

(assert (=> bs!8503 m!57674))

(declare-fun m!57786 () Bool)

(assert (=> bs!8503 m!57786))

(assert (=> b!81397 d!15746))

(declare-fun b!81639 () Bool)

(declare-fun e!45844 () List!1472)

(declare-fun e!45845 () List!1472)

(assert (=> b!81639 (= e!45844 e!45845)))

(declare-fun c!20603 () Bool)

(assert (=> b!81639 (= c!20603 ((_ is Leaf!740) (c!20518 (_2!964 lt!18592))))))

(declare-fun b!81640 () Bool)

(assert (=> b!81640 (= e!45845 (list!517 (xs!3023 (c!20518 (_2!964 lt!18592)))))))

(declare-fun b!81638 () Bool)

(assert (=> b!81638 (= e!45844 Nil!1466)))

(declare-fun b!81641 () Bool)

(assert (=> b!81641 (= e!45845 (++!158 (list!514 (left!1113 (c!20518 (_2!964 lt!18592)))) (list!514 (right!1443 (c!20518 (_2!964 lt!18592))))))))

(declare-fun d!15748 () Bool)

(declare-fun c!20602 () Bool)

(assert (=> d!15748 (= c!20602 ((_ is Empty!444) (c!20518 (_2!964 lt!18592))))))

(assert (=> d!15748 (= (list!514 (c!20518 (_2!964 lt!18592))) e!45844)))

(assert (= (and d!15748 c!20602) b!81638))

(assert (= (and d!15748 (not c!20602)) b!81639))

(assert (= (and b!81639 c!20603) b!81640))

(assert (= (and b!81639 (not c!20603)) b!81641))

(declare-fun m!57788 () Bool)

(assert (=> b!81640 m!57788))

(declare-fun m!57790 () Bool)

(assert (=> b!81641 m!57790))

(declare-fun m!57792 () Bool)

(assert (=> b!81641 m!57792))

(assert (=> b!81641 m!57790))

(assert (=> b!81641 m!57792))

(declare-fun m!57794 () Bool)

(assert (=> b!81641 m!57794))

(assert (=> d!15556 d!15748))

(declare-fun b!81642 () Bool)

(declare-fun res!42459 () Bool)

(declare-fun e!45847 () Bool)

(assert (=> b!81642 (=> (not res!42459) (not e!45847))))

(declare-fun lt!18762 () Option!130)

(assert (=> b!81642 (= res!42459 (< (size!1267 (_2!965 (get!370 lt!18762))) (size!1267 input!2238)))))

(declare-fun b!81643 () Bool)

(declare-fun e!45846 () Bool)

(assert (=> b!81643 (= e!45846 e!45847)))

(declare-fun res!42465 () Bool)

(assert (=> b!81643 (=> (not res!42465) (not e!45847))))

(assert (=> b!81643 (= res!42465 (isDefined!34 lt!18762))))

(declare-fun d!15750 () Bool)

(assert (=> d!15750 e!45846))

(declare-fun res!42461 () Bool)

(assert (=> d!15750 (=> res!42461 e!45846)))

(assert (=> d!15750 (= res!42461 (isEmpty!524 lt!18762))))

(declare-fun e!45848 () Option!130)

(assert (=> d!15750 (= lt!18762 e!45848)))

(declare-fun c!20604 () Bool)

(assert (=> d!15750 (= c!20604 (and ((_ is Cons!1469) (t!20410 rules!2471)) ((_ is Nil!1469) (t!20410 (t!20410 rules!2471)))))))

(declare-fun lt!18765 () Unit!914)

(declare-fun lt!18764 () Unit!914)

(assert (=> d!15750 (= lt!18765 lt!18764)))

(assert (=> d!15750 (isPrefix!25 input!2238 input!2238)))

(assert (=> d!15750 (= lt!18764 (lemmaIsPrefixRefl!25 input!2238 input!2238))))

(assert (=> d!15750 (rulesValidInductive!50 thiss!19403 (t!20410 rules!2471))))

(assert (=> d!15750 (= (maxPrefix!57 thiss!19403 (t!20410 rules!2471) input!2238) lt!18762)))

(declare-fun call!3724 () Option!130)

(declare-fun bm!3719 () Bool)

(assert (=> bm!3719 (= call!3724 (maxPrefixOneRule!23 thiss!19403 (h!6866 (t!20410 rules!2471)) input!2238))))

(declare-fun b!81644 () Bool)

(declare-fun lt!18763 () Option!130)

(declare-fun lt!18766 () Option!130)

(assert (=> b!81644 (= e!45848 (ite (and ((_ is None!129) lt!18763) ((_ is None!129) lt!18766)) None!129 (ite ((_ is None!129) lt!18766) lt!18763 (ite ((_ is None!129) lt!18763) lt!18766 (ite (>= (size!1261 (_1!965 (v!12826 lt!18763))) (size!1261 (_1!965 (v!12826 lt!18766)))) lt!18763 lt!18766)))))))

(assert (=> b!81644 (= lt!18763 call!3724)))

(assert (=> b!81644 (= lt!18766 (maxPrefix!57 thiss!19403 (t!20410 (t!20410 rules!2471)) input!2238))))

(declare-fun b!81645 () Bool)

(declare-fun res!42464 () Bool)

(assert (=> b!81645 (=> (not res!42464) (not e!45847))))

(assert (=> b!81645 (= res!42464 (= (list!510 (charsOf!58 (_1!965 (get!370 lt!18762)))) (originalCharacters!372 (_1!965 (get!370 lt!18762)))))))

(declare-fun b!81646 () Bool)

(declare-fun res!42460 () Bool)

(assert (=> b!81646 (=> (not res!42460) (not e!45847))))

(assert (=> b!81646 (= res!42460 (matchR!27 (regex!321 (rule!804 (_1!965 (get!370 lt!18762)))) (list!510 (charsOf!58 (_1!965 (get!370 lt!18762))))))))

(declare-fun b!81647 () Bool)

(assert (=> b!81647 (= e!45848 call!3724)))

(declare-fun b!81648 () Bool)

(declare-fun res!42463 () Bool)

(assert (=> b!81648 (=> (not res!42463) (not e!45847))))

(assert (=> b!81648 (= res!42463 (= (value!12044 (_1!965 (get!370 lt!18762))) (apply!203 (transformation!321 (rule!804 (_1!965 (get!370 lt!18762)))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!18762)))))))))

(declare-fun b!81649 () Bool)

(assert (=> b!81649 (= e!45847 (contains!219 (t!20410 rules!2471) (rule!804 (_1!965 (get!370 lt!18762)))))))

(declare-fun b!81650 () Bool)

(declare-fun res!42462 () Bool)

(assert (=> b!81650 (=> (not res!42462) (not e!45847))))

(assert (=> b!81650 (= res!42462 (= (++!158 (list!510 (charsOf!58 (_1!965 (get!370 lt!18762)))) (_2!965 (get!370 lt!18762))) input!2238))))

(assert (= (and d!15750 c!20604) b!81647))

(assert (= (and d!15750 (not c!20604)) b!81644))

(assert (= (or b!81647 b!81644) bm!3719))

(assert (= (and d!15750 (not res!42461)) b!81643))

(assert (= (and b!81643 res!42465) b!81645))

(assert (= (and b!81645 res!42464) b!81642))

(assert (= (and b!81642 res!42459) b!81650))

(assert (= (and b!81650 res!42462) b!81648))

(assert (= (and b!81648 res!42463) b!81646))

(assert (= (and b!81646 res!42460) b!81649))

(declare-fun m!57796 () Bool)

(assert (=> b!81644 m!57796))

(declare-fun m!57798 () Bool)

(assert (=> b!81643 m!57798))

(declare-fun m!57800 () Bool)

(assert (=> b!81642 m!57800))

(declare-fun m!57802 () Bool)

(assert (=> b!81642 m!57802))

(assert (=> b!81642 m!57282))

(assert (=> b!81649 m!57800))

(declare-fun m!57804 () Bool)

(assert (=> b!81649 m!57804))

(assert (=> b!81650 m!57800))

(declare-fun m!57806 () Bool)

(assert (=> b!81650 m!57806))

(assert (=> b!81650 m!57806))

(declare-fun m!57808 () Bool)

(assert (=> b!81650 m!57808))

(assert (=> b!81650 m!57808))

(declare-fun m!57810 () Bool)

(assert (=> b!81650 m!57810))

(declare-fun m!57812 () Bool)

(assert (=> d!15750 m!57812))

(assert (=> d!15750 m!57294))

(assert (=> d!15750 m!57296))

(declare-fun m!57814 () Bool)

(assert (=> d!15750 m!57814))

(assert (=> b!81648 m!57800))

(declare-fun m!57816 () Bool)

(assert (=> b!81648 m!57816))

(assert (=> b!81648 m!57816))

(declare-fun m!57818 () Bool)

(assert (=> b!81648 m!57818))

(assert (=> b!81646 m!57800))

(assert (=> b!81646 m!57806))

(assert (=> b!81646 m!57806))

(assert (=> b!81646 m!57808))

(assert (=> b!81646 m!57808))

(declare-fun m!57820 () Bool)

(assert (=> b!81646 m!57820))

(assert (=> b!81645 m!57800))

(assert (=> b!81645 m!57806))

(assert (=> b!81645 m!57806))

(assert (=> b!81645 m!57808))

(declare-fun m!57822 () Bool)

(assert (=> bm!3719 m!57822))

(assert (=> b!81334 d!15750))

(declare-fun b!81663 () Bool)

(declare-fun res!42479 () Bool)

(declare-fun e!45853 () Bool)

(assert (=> b!81663 (=> (not res!42479) (not e!45853))))

(declare-fun isEmpty!527 (Conc!445) Bool)

(assert (=> b!81663 (= res!42479 (not (isEmpty!527 (left!1114 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))))))))

(declare-fun b!81664 () Bool)

(declare-fun res!42482 () Bool)

(assert (=> b!81664 (=> (not res!42482) (not e!45853))))

(declare-fun height!31 (Conc!445) Int)

(assert (=> b!81664 (= res!42482 (<= (- (height!31 (left!1114 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))) (height!31 (right!1444 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))))) 1))))

(declare-fun b!81665 () Bool)

(assert (=> b!81665 (= e!45853 (not (isEmpty!527 (right!1444 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))))))))

(declare-fun d!15752 () Bool)

(declare-fun res!42478 () Bool)

(declare-fun e!45854 () Bool)

(assert (=> d!15752 (=> res!42478 e!45854)))

(assert (=> d!15752 (= res!42478 (not ((_ is Node!445) (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))))))

(assert (=> d!15752 (= (isBalanced!92 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591))) e!45854)))

(declare-fun b!81666 () Bool)

(declare-fun res!42480 () Bool)

(assert (=> b!81666 (=> (not res!42480) (not e!45853))))

(assert (=> b!81666 (= res!42480 (isBalanced!92 (right!1444 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))))))

(declare-fun b!81667 () Bool)

(declare-fun res!42481 () Bool)

(assert (=> b!81667 (=> (not res!42481) (not e!45853))))

(assert (=> b!81667 (= res!42481 (isBalanced!92 (left!1114 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))))))

(declare-fun b!81668 () Bool)

(assert (=> b!81668 (= e!45854 e!45853)))

(declare-fun res!42483 () Bool)

(assert (=> b!81668 (=> (not res!42483) (not e!45853))))

(assert (=> b!81668 (= res!42483 (<= (- 1) (- (height!31 (left!1114 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))) (height!31 (right!1444 (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)))))))))

(assert (= (and d!15752 (not res!42478)) b!81668))

(assert (= (and b!81668 res!42483) b!81664))

(assert (= (and b!81664 res!42482) b!81667))

(assert (= (and b!81667 res!42481) b!81666))

(assert (= (and b!81666 res!42480) b!81663))

(assert (= (and b!81663 res!42479) b!81665))

(declare-fun m!57824 () Bool)

(assert (=> b!81665 m!57824))

(declare-fun m!57826 () Bool)

(assert (=> b!81667 m!57826))

(declare-fun m!57828 () Bool)

(assert (=> b!81664 m!57828))

(declare-fun m!57830 () Bool)

(assert (=> b!81664 m!57830))

(declare-fun m!57832 () Bool)

(assert (=> b!81666 m!57832))

(declare-fun m!57834 () Bool)

(assert (=> b!81663 m!57834))

(assert (=> b!81668 m!57828))

(assert (=> b!81668 m!57830))

(assert (=> d!15590 d!15752))

(declare-fun d!15754 () Bool)

(declare-fun e!45857 () Bool)

(assert (=> d!15754 e!45857))

(declare-fun res!42486 () Bool)

(assert (=> d!15754 (=> (not res!42486) (not e!45857))))

(declare-fun lt!18769 () Conc!445)

(assert (=> d!15754 (= res!42486 (isBalanced!92 lt!18769))))

(declare-fun ++!162 (Conc!445 Conc!445) Conc!445)

(declare-fun fill!16 (Int Token!402) IArray!891)

(assert (=> d!15754 (= lt!18769 (++!162 (Leaf!741 (fill!16 1 (h!6865 lt!18591)) 1) (c!20520 lt!18596)))))

(assert (=> d!15754 (isBalanced!92 (c!20520 lt!18596))))

(assert (=> d!15754 (= (prepend!85 (c!20520 lt!18596) (h!6865 lt!18591)) lt!18769)))

(declare-fun b!81671 () Bool)

(assert (=> b!81671 (= e!45857 (= (list!513 lt!18769) (Cons!1468 (h!6865 lt!18591) (list!513 (c!20520 lt!18596)))))))

(assert (= (and d!15754 res!42486) b!81671))

(declare-fun m!57836 () Bool)

(assert (=> d!15754 m!57836))

(declare-fun m!57838 () Bool)

(assert (=> d!15754 m!57838))

(declare-fun m!57840 () Bool)

(assert (=> d!15754 m!57840))

(declare-fun m!57842 () Bool)

(assert (=> d!15754 m!57842))

(declare-fun m!57844 () Bool)

(assert (=> b!81671 m!57844))

(declare-fun m!57846 () Bool)

(assert (=> b!81671 m!57846))

(assert (=> d!15590 d!15754))

(declare-fun d!15756 () Bool)

(assert (=> d!15756 (= (isDefined!34 lt!18655) (not (isEmpty!524 lt!18655)))))

(declare-fun bs!8504 () Bool)

(assert (= bs!8504 d!15756))

(assert (=> bs!8504 m!57292))

(assert (=> b!81333 d!15756))

(declare-fun d!15758 () Bool)

(declare-fun lt!18772 () Int)

(assert (=> d!15758 (= lt!18772 (size!1272 (list!509 (_1!964 lt!18635))))))

(declare-fun size!1273 (Conc!445) Int)

(assert (=> d!15758 (= lt!18772 (size!1273 (c!20520 (_1!964 lt!18635))))))

(assert (=> d!15758 (= (size!1266 (_1!964 lt!18635)) lt!18772)))

(declare-fun bs!8505 () Bool)

(assert (= bs!8505 d!15758))

(assert (=> bs!8505 m!57224))

(assert (=> bs!8505 m!57224))

(declare-fun m!57848 () Bool)

(assert (=> bs!8505 m!57848))

(declare-fun m!57850 () Bool)

(assert (=> bs!8505 m!57850))

(assert (=> d!15514 d!15758))

(declare-fun b!81786 () Bool)

(declare-fun e!45922 () tuple2!1514)

(assert (=> b!81786 (= e!45922 (tuple2!1515 (BalanceConc!895 Empty!445) (seqFromList!154 input!2238)))))

(declare-datatypes ((tuple2!1524 0))(
  ( (tuple2!1525 (_1!969 Token!402) (_2!969 BalanceConc!892)) )
))
(declare-datatypes ((Option!132 0))(
  ( (None!131) (Some!131 (v!12838 tuple2!1524)) )
))
(declare-fun lt!18980 () Option!132)

(declare-fun lt!19011 () BalanceConc!892)

(declare-fun e!45923 () tuple2!1514)

(declare-fun b!81787 () Bool)

(declare-fun append!29 (BalanceConc!894 Token!402) BalanceConc!894)

(assert (=> b!81787 (= e!45923 (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 input!2238) lt!19011 (_2!969 (v!12838 lt!18980)) (append!29 (BalanceConc!895 Empty!445) (_1!969 (v!12838 lt!18980)))))))

(declare-fun lt!19000 () tuple2!1514)

(declare-fun lexRec!28 (LexerInterface!213 List!1475 BalanceConc!892) tuple2!1514)

(assert (=> b!81787 (= lt!19000 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!18980))))))

(declare-fun lt!19007 () List!1472)

(assert (=> b!81787 (= lt!19007 (list!510 (BalanceConc!893 Empty!444)))))

(declare-fun lt!18993 () List!1472)

(assert (=> b!81787 (= lt!18993 (list!510 (charsOf!58 (_1!969 (v!12838 lt!18980)))))))

(declare-fun lt!19012 () List!1472)

(assert (=> b!81787 (= lt!19012 (list!510 (_2!969 (v!12838 lt!18980))))))

(declare-fun lt!18998 () Unit!914)

(declare-fun lemmaConcatAssociativity!50 (List!1472 List!1472 List!1472) Unit!914)

(assert (=> b!81787 (= lt!18998 (lemmaConcatAssociativity!50 lt!19007 lt!18993 lt!19012))))

(assert (=> b!81787 (= (++!158 (++!158 lt!19007 lt!18993) lt!19012) (++!158 lt!19007 (++!158 lt!18993 lt!19012)))))

(declare-fun lt!19003 () Unit!914)

(assert (=> b!81787 (= lt!19003 lt!18998)))

(declare-fun lt!18988 () Option!132)

(declare-fun maxPrefixZipperSequence!26 (LexerInterface!213 List!1475 BalanceConc!892) Option!132)

(assert (=> b!81787 (= lt!18988 (maxPrefixZipperSequence!26 thiss!19403 rules!2471 (seqFromList!154 input!2238)))))

(declare-fun c!20646 () Bool)

(assert (=> b!81787 (= c!20646 ((_ is Some!131) lt!18988))))

(assert (=> b!81787 (= (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 input!2238)) e!45922)))

(declare-fun lt!18986 () Unit!914)

(declare-fun Unit!918 () Unit!914)

(assert (=> b!81787 (= lt!18986 Unit!918)))

(declare-fun lt!18984 () List!1474)

(assert (=> b!81787 (= lt!18984 (list!509 (BalanceConc!895 Empty!445)))))

(declare-fun lt!19005 () List!1474)

(assert (=> b!81787 (= lt!19005 (Cons!1468 (_1!969 (v!12838 lt!18980)) Nil!1468))))

(declare-fun lt!18995 () List!1474)

(assert (=> b!81787 (= lt!18995 (list!509 (_1!964 lt!19000)))))

(declare-fun lt!18994 () Unit!914)

(declare-fun lemmaConcatAssociativity!51 (List!1474 List!1474 List!1474) Unit!914)

(assert (=> b!81787 (= lt!18994 (lemmaConcatAssociativity!51 lt!18984 lt!19005 lt!18995))))

(assert (=> b!81787 (= (++!159 (++!159 lt!18984 lt!19005) lt!18995) (++!159 lt!18984 (++!159 lt!19005 lt!18995)))))

(declare-fun lt!19010 () Unit!914)

(assert (=> b!81787 (= lt!19010 lt!18994)))

(declare-fun lt!19006 () List!1472)

(assert (=> b!81787 (= lt!19006 (++!158 (list!510 (BalanceConc!893 Empty!444)) (list!510 (charsOf!58 (_1!969 (v!12838 lt!18980))))))))

(declare-fun lt!18982 () List!1472)

(assert (=> b!81787 (= lt!18982 (list!510 (_2!969 (v!12838 lt!18980))))))

(declare-fun lt!18989 () List!1474)

(assert (=> b!81787 (= lt!18989 (list!509 (append!29 (BalanceConc!895 Empty!445) (_1!969 (v!12838 lt!18980)))))))

(declare-fun lt!18992 () Unit!914)

(declare-fun lemmaLexThenLexPrefix!23 (LexerInterface!213 List!1475 List!1472 List!1472 List!1474 List!1474 List!1472) Unit!914)

(assert (=> b!81787 (= lt!18992 (lemmaLexThenLexPrefix!23 thiss!19403 rules!2471 lt!19006 lt!18982 lt!18989 (list!509 (_1!964 lt!19000)) (list!510 (_2!964 lt!19000))))))

(assert (=> b!81787 (= (lexList!49 thiss!19403 rules!2471 lt!19006) (tuple2!1519 lt!18989 Nil!1466))))

(declare-fun lt!19013 () Unit!914)

(assert (=> b!81787 (= lt!19013 lt!18992)))

(declare-fun lt!18999 () BalanceConc!892)

(declare-fun ++!163 (BalanceConc!892 BalanceConc!892) BalanceConc!892)

(assert (=> b!81787 (= lt!18999 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!18980)))))))

(declare-fun lt!19002 () Option!132)

(assert (=> b!81787 (= lt!19002 (maxPrefixZipperSequence!26 thiss!19403 rules!2471 lt!18999))))

(declare-fun c!20647 () Bool)

(assert (=> b!81787 (= c!20647 ((_ is Some!131) lt!19002))))

(declare-fun e!45921 () tuple2!1514)

(assert (=> b!81787 (= (lexRec!28 thiss!19403 rules!2471 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!18980))))) e!45921)))

(declare-fun lt!19004 () Unit!914)

(declare-fun Unit!919 () Unit!914)

(assert (=> b!81787 (= lt!19004 Unit!919)))

(assert (=> b!81787 (= lt!19011 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!18980)))))))

(declare-fun lt!18987 () List!1472)

(assert (=> b!81787 (= lt!18987 (list!510 lt!19011))))

(declare-fun lt!18997 () List!1472)

(assert (=> b!81787 (= lt!18997 (list!510 (_2!969 (v!12838 lt!18980))))))

(declare-fun lt!19001 () Unit!914)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!23 (List!1472 List!1472) Unit!914)

(assert (=> b!81787 (= lt!19001 (lemmaConcatTwoListThenFSndIsSuffix!23 lt!18987 lt!18997))))

(declare-fun isSuffix!23 (List!1472 List!1472) Bool)

(assert (=> b!81787 (isSuffix!23 lt!18997 (++!158 lt!18987 lt!18997))))

(declare-fun lt!18985 () Unit!914)

(assert (=> b!81787 (= lt!18985 lt!19001)))

(declare-fun lt!18990 () tuple2!1514)

(declare-fun b!81788 () Bool)

(assert (=> b!81788 (= lt!18990 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!19002))))))

(assert (=> b!81788 (= e!45921 (tuple2!1515 (prepend!83 (_1!964 lt!18990) (_1!969 (v!12838 lt!19002))) (_2!964 lt!18990)))))

(declare-fun d!15760 () Bool)

(declare-fun e!45920 () Bool)

(assert (=> d!15760 e!45920))

(declare-fun res!42519 () Bool)

(assert (=> d!15760 (=> (not res!42519) (not e!45920))))

(declare-fun lt!18981 () tuple2!1514)

(assert (=> d!15760 (= res!42519 (= (list!509 (_1!964 lt!18981)) (list!509 (_1!964 (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 input!2238))))))))

(assert (=> d!15760 (= lt!18981 e!45923)))

(declare-fun c!20645 () Bool)

(assert (=> d!15760 (= c!20645 ((_ is Some!131) lt!18980))))

(declare-fun maxPrefixZipperSequenceV2!23 (LexerInterface!213 List!1475 BalanceConc!892 BalanceConc!892) Option!132)

(assert (=> d!15760 (= lt!18980 (maxPrefixZipperSequenceV2!23 thiss!19403 rules!2471 (seqFromList!154 input!2238) (seqFromList!154 input!2238)))))

(declare-fun lt!18983 () Unit!914)

(declare-fun lt!18996 () Unit!914)

(assert (=> d!15760 (= lt!18983 lt!18996)))

(declare-fun lt!19008 () List!1472)

(declare-fun lt!18991 () List!1472)

(assert (=> d!15760 (isSuffix!23 lt!19008 (++!158 lt!18991 lt!19008))))

(assert (=> d!15760 (= lt!18996 (lemmaConcatTwoListThenFSndIsSuffix!23 lt!18991 lt!19008))))

(assert (=> d!15760 (= lt!19008 (list!510 (seqFromList!154 input!2238)))))

(assert (=> d!15760 (= lt!18991 (list!510 (BalanceConc!893 Empty!444)))))

(assert (=> d!15760 (= (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 input!2238) (BalanceConc!893 Empty!444) (seqFromList!154 input!2238) (BalanceConc!895 Empty!445)) lt!18981)))

(declare-fun b!81789 () Bool)

(assert (=> b!81789 (= e!45920 (= (list!510 (_2!964 lt!18981)) (list!510 (_2!964 (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 input!2238))))))))

(declare-fun b!81790 () Bool)

(declare-fun lt!19009 () tuple2!1514)

(assert (=> b!81790 (= lt!19009 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!18988))))))

(assert (=> b!81790 (= e!45922 (tuple2!1515 (prepend!83 (_1!964 lt!19009) (_1!969 (v!12838 lt!18988))) (_2!964 lt!19009)))))

(declare-fun b!81791 () Bool)

(assert (=> b!81791 (= e!45923 (tuple2!1515 (BalanceConc!895 Empty!445) (seqFromList!154 input!2238)))))

(declare-fun b!81792 () Bool)

(assert (=> b!81792 (= e!45921 (tuple2!1515 (BalanceConc!895 Empty!445) lt!18999))))

(assert (= (and d!15760 c!20645) b!81787))

(assert (= (and d!15760 (not c!20645)) b!81791))

(assert (= (and b!81787 c!20646) b!81790))

(assert (= (and b!81787 (not c!20646)) b!81786))

(assert (= (and b!81787 c!20647) b!81788))

(assert (= (and b!81787 (not c!20647)) b!81792))

(assert (= (and d!15760 res!42519) b!81789))

(declare-fun m!58080 () Bool)

(assert (=> b!81790 m!58080))

(declare-fun m!58082 () Bool)

(assert (=> b!81790 m!58082))

(declare-fun m!58084 () Bool)

(assert (=> b!81788 m!58084))

(declare-fun m!58086 () Bool)

(assert (=> b!81788 m!58086))

(declare-fun m!58088 () Bool)

(assert (=> d!15760 m!58088))

(declare-fun m!58090 () Bool)

(assert (=> d!15760 m!58090))

(declare-fun m!58092 () Bool)

(assert (=> d!15760 m!58092))

(declare-fun m!58094 () Bool)

(assert (=> d!15760 m!58094))

(assert (=> d!15760 m!58088))

(declare-fun m!58096 () Bool)

(assert (=> d!15760 m!58096))

(assert (=> d!15760 m!57070))

(declare-fun m!58098 () Bool)

(assert (=> d!15760 m!58098))

(assert (=> d!15760 m!57070))

(assert (=> d!15760 m!57226))

(declare-fun m!58100 () Bool)

(assert (=> d!15760 m!58100))

(assert (=> d!15760 m!57070))

(assert (=> d!15760 m!57070))

(declare-fun m!58102 () Bool)

(assert (=> d!15760 m!58102))

(declare-fun m!58104 () Bool)

(assert (=> b!81789 m!58104))

(assert (=> b!81789 m!57070))

(assert (=> b!81789 m!58098))

(declare-fun m!58106 () Bool)

(assert (=> b!81789 m!58106))

(declare-fun m!58108 () Bool)

(assert (=> b!81787 m!58108))

(declare-fun m!58110 () Bool)

(assert (=> b!81787 m!58110))

(assert (=> b!81787 m!57070))

(declare-fun m!58112 () Bool)

(assert (=> b!81787 m!58112))

(declare-fun m!58114 () Bool)

(assert (=> b!81787 m!58114))

(declare-fun m!58116 () Bool)

(assert (=> b!81787 m!58116))

(declare-fun m!58118 () Bool)

(assert (=> b!81787 m!58118))

(declare-fun m!58120 () Bool)

(assert (=> b!81787 m!58120))

(declare-fun m!58122 () Bool)

(assert (=> b!81787 m!58122))

(declare-fun m!58124 () Bool)

(assert (=> b!81787 m!58124))

(declare-fun m!58126 () Bool)

(assert (=> b!81787 m!58126))

(assert (=> b!81787 m!58116))

(declare-fun m!58128 () Bool)

(assert (=> b!81787 m!58128))

(declare-fun m!58130 () Bool)

(assert (=> b!81787 m!58130))

(assert (=> b!81787 m!58110))

(declare-fun m!58132 () Bool)

(assert (=> b!81787 m!58132))

(declare-fun m!58134 () Bool)

(assert (=> b!81787 m!58134))

(assert (=> b!81787 m!58112))

(declare-fun m!58136 () Bool)

(assert (=> b!81787 m!58136))

(declare-fun m!58138 () Bool)

(assert (=> b!81787 m!58138))

(assert (=> b!81787 m!58112))

(declare-fun m!58140 () Bool)

(assert (=> b!81787 m!58140))

(declare-fun m!58142 () Bool)

(assert (=> b!81787 m!58142))

(declare-fun m!58144 () Bool)

(assert (=> b!81787 m!58144))

(assert (=> b!81787 m!58142))

(assert (=> b!81787 m!58130))

(declare-fun m!58146 () Bool)

(assert (=> b!81787 m!58146))

(assert (=> b!81787 m!58124))

(assert (=> b!81787 m!58096))

(declare-fun m!58148 () Bool)

(assert (=> b!81787 m!58148))

(declare-fun m!58150 () Bool)

(assert (=> b!81787 m!58150))

(assert (=> b!81787 m!58122))

(declare-fun m!58152 () Bool)

(assert (=> b!81787 m!58152))

(assert (=> b!81787 m!58096))

(assert (=> b!81787 m!58144))

(declare-fun m!58154 () Bool)

(assert (=> b!81787 m!58154))

(declare-fun m!58156 () Bool)

(assert (=> b!81787 m!58156))

(declare-fun m!58158 () Bool)

(assert (=> b!81787 m!58158))

(declare-fun m!58160 () Bool)

(assert (=> b!81787 m!58160))

(assert (=> b!81787 m!57070))

(declare-fun m!58162 () Bool)

(assert (=> b!81787 m!58162))

(assert (=> b!81787 m!58138))

(declare-fun m!58164 () Bool)

(assert (=> b!81787 m!58164))

(declare-fun m!58166 () Bool)

(assert (=> b!81787 m!58166))

(assert (=> b!81787 m!57070))

(assert (=> b!81787 m!58098))

(assert (=> b!81787 m!58142))

(assert (=> b!81787 m!58148))

(declare-fun m!58168 () Bool)

(assert (=> b!81787 m!58168))

(assert (=> b!81787 m!58132))

(assert (=> d!15514 d!15760))

(declare-fun d!15800 () Bool)

(assert (=> d!15800 (= (list!509 (_1!964 lt!18635)) (list!513 (c!20520 (_1!964 lt!18635))))))

(declare-fun bs!8510 () Bool)

(assert (= bs!8510 d!15800))

(declare-fun m!58170 () Bool)

(assert (=> bs!8510 m!58170))

(assert (=> b!81309 d!15800))

(declare-fun b!81803 () Bool)

(declare-fun e!45930 () Bool)

(declare-fun e!45931 () Bool)

(assert (=> b!81803 (= e!45930 e!45931)))

(declare-fun res!42522 () Bool)

(declare-fun lt!19021 () tuple2!1518)

(assert (=> b!81803 (= res!42522 (< (size!1267 (_2!966 lt!19021)) (size!1267 (list!510 (seqFromList!154 input!2238)))))))

(assert (=> b!81803 (=> (not res!42522) (not e!45931))))

(declare-fun b!81804 () Bool)

(assert (=> b!81804 (= e!45930 (= (_2!966 lt!19021) (list!510 (seqFromList!154 input!2238))))))

(declare-fun b!81805 () Bool)

(assert (=> b!81805 (= e!45931 (not (isEmpty!525 (_1!966 lt!19021))))))

(declare-fun b!81806 () Bool)

(declare-fun e!45932 () tuple2!1518)

(declare-fun lt!19022 () Option!130)

(declare-fun lt!19020 () tuple2!1518)

(assert (=> b!81806 (= e!45932 (tuple2!1519 (Cons!1468 (_1!965 (v!12826 lt!19022)) (_1!966 lt!19020)) (_2!966 lt!19020)))))

(assert (=> b!81806 (= lt!19020 (lexList!49 thiss!19403 rules!2471 (_2!965 (v!12826 lt!19022))))))

(declare-fun d!15802 () Bool)

(assert (=> d!15802 e!45930))

(declare-fun c!20652 () Bool)

(assert (=> d!15802 (= c!20652 (> (size!1272 (_1!966 lt!19021)) 0))))

(assert (=> d!15802 (= lt!19021 e!45932)))

(declare-fun c!20653 () Bool)

(assert (=> d!15802 (= c!20653 ((_ is Some!129) lt!19022))))

(assert (=> d!15802 (= lt!19022 (maxPrefix!57 thiss!19403 rules!2471 (list!510 (seqFromList!154 input!2238))))))

(assert (=> d!15802 (= (lexList!49 thiss!19403 rules!2471 (list!510 (seqFromList!154 input!2238))) lt!19021)))

(declare-fun b!81807 () Bool)

(assert (=> b!81807 (= e!45932 (tuple2!1519 Nil!1468 (list!510 (seqFromList!154 input!2238))))))

(assert (= (and d!15802 c!20653) b!81806))

(assert (= (and d!15802 (not c!20653)) b!81807))

(assert (= (and d!15802 c!20652) b!81803))

(assert (= (and d!15802 (not c!20652)) b!81804))

(assert (= (and b!81803 res!42522) b!81805))

(declare-fun m!58172 () Bool)

(assert (=> b!81803 m!58172))

(assert (=> b!81803 m!57226))

(declare-fun m!58174 () Bool)

(assert (=> b!81803 m!58174))

(declare-fun m!58176 () Bool)

(assert (=> b!81805 m!58176))

(declare-fun m!58178 () Bool)

(assert (=> b!81806 m!58178))

(declare-fun m!58180 () Bool)

(assert (=> d!15802 m!58180))

(assert (=> d!15802 m!57226))

(declare-fun m!58182 () Bool)

(assert (=> d!15802 m!58182))

(assert (=> b!81309 d!15802))

(declare-fun d!15804 () Bool)

(assert (=> d!15804 (= (list!510 (seqFromList!154 input!2238)) (list!514 (c!20518 (seqFromList!154 input!2238))))))

(declare-fun bs!8511 () Bool)

(assert (= bs!8511 d!15804))

(declare-fun m!58184 () Bool)

(assert (=> bs!8511 m!58184))

(assert (=> b!81309 d!15804))

(declare-fun d!15806 () Bool)

(declare-fun e!45939 () Bool)

(assert (=> d!15806 e!45939))

(declare-fun res!42526 () Bool)

(assert (=> d!15806 (=> (not res!42526) (not e!45939))))

(declare-fun lt!19029 () BalanceConc!894)

(assert (=> d!15806 (= res!42526 (= (list!509 lt!19029) (t!20409 lt!18591)))))

(declare-fun fromList!31 (List!1474) Conc!445)

(assert (=> d!15806 (= lt!19029 (BalanceConc!895 (fromList!31 (t!20409 lt!18591))))))

(assert (=> d!15806 (= (fromListB!57 (t!20409 lt!18591)) lt!19029)))

(declare-fun b!81816 () Bool)

(assert (=> b!81816 (= e!45939 (isBalanced!92 (fromList!31 (t!20409 lt!18591))))))

(assert (= (and d!15806 res!42526) b!81816))

(declare-fun m!58210 () Bool)

(assert (=> d!15806 m!58210))

(declare-fun m!58212 () Bool)

(assert (=> d!15806 m!58212))

(assert (=> b!81816 m!58212))

(assert (=> b!81816 m!58212))

(declare-fun m!58214 () Bool)

(assert (=> b!81816 m!58214))

(assert (=> d!15610 d!15806))

(declare-fun d!15816 () Bool)

(declare-fun c!20657 () Bool)

(assert (=> d!15816 (= c!20657 ((_ is Nil!1466) lt!18701))))

(declare-fun e!45940 () (InoxSet C!1700))

(assert (=> d!15816 (= (content!80 lt!18701) e!45940)))

(declare-fun b!81817 () Bool)

(assert (=> b!81817 (= e!45940 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81818 () Bool)

(assert (=> b!81818 (= e!45940 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18701) true) (content!80 (t!20407 lt!18701))))))

(assert (= (and d!15816 c!20657) b!81817))

(assert (= (and d!15816 (not c!20657)) b!81818))

(declare-fun m!58216 () Bool)

(assert (=> b!81818 m!58216))

(declare-fun m!58218 () Bool)

(assert (=> b!81818 m!58218))

(assert (=> d!15616 d!15816))

(declare-fun d!15818 () Bool)

(declare-fun c!20658 () Bool)

(assert (=> d!15818 (= c!20658 ((_ is Nil!1466) lt!18585))))

(declare-fun e!45941 () (InoxSet C!1700))

(assert (=> d!15818 (= (content!80 lt!18585) e!45941)))

(declare-fun b!81819 () Bool)

(assert (=> b!81819 (= e!45941 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81820 () Bool)

(assert (=> b!81820 (= e!45941 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18585) true) (content!80 (t!20407 lt!18585))))))

(assert (= (and d!15818 c!20658) b!81819))

(assert (= (and d!15818 (not c!20658)) b!81820))

(declare-fun m!58220 () Bool)

(assert (=> b!81820 m!58220))

(assert (=> b!81820 m!57746))

(assert (=> d!15616 d!15818))

(declare-fun d!15820 () Bool)

(declare-fun c!20659 () Bool)

(assert (=> d!15820 (= c!20659 ((_ is Nil!1466) lt!18588))))

(declare-fun e!45942 () (InoxSet C!1700))

(assert (=> d!15820 (= (content!80 lt!18588) e!45942)))

(declare-fun b!81821 () Bool)

(assert (=> b!81821 (= e!45942 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81822 () Bool)

(assert (=> b!81822 (= e!45942 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18588) true) (content!80 (t!20407 lt!18588))))))

(assert (= (and d!15820 c!20659) b!81821))

(assert (= (and d!15820 (not c!20659)) b!81822))

(declare-fun m!58222 () Bool)

(assert (=> b!81822 m!58222))

(declare-fun m!58224 () Bool)

(assert (=> b!81822 m!58224))

(assert (=> d!15616 d!15820))

(declare-fun b!81828 () Bool)

(declare-fun e!45945 () List!1472)

(declare-fun e!45946 () List!1472)

(assert (=> b!81828 (= e!45945 e!45946)))

(declare-fun c!20663 () Bool)

(assert (=> b!81828 (= c!20663 ((_ is Leaf!740) (c!20518 (charsOf!58 (_1!965 lt!18593)))))))

(declare-fun b!81829 () Bool)

(assert (=> b!81829 (= e!45946 (list!517 (xs!3023 (c!20518 (charsOf!58 (_1!965 lt!18593))))))))

(declare-fun b!81827 () Bool)

(assert (=> b!81827 (= e!45945 Nil!1466)))

(declare-fun b!81830 () Bool)

(assert (=> b!81830 (= e!45946 (++!158 (list!514 (left!1113 (c!20518 (charsOf!58 (_1!965 lt!18593))))) (list!514 (right!1443 (c!20518 (charsOf!58 (_1!965 lt!18593)))))))))

(declare-fun d!15822 () Bool)

(declare-fun c!20662 () Bool)

(assert (=> d!15822 (= c!20662 ((_ is Empty!444) (c!20518 (charsOf!58 (_1!965 lt!18593)))))))

(assert (=> d!15822 (= (list!514 (c!20518 (charsOf!58 (_1!965 lt!18593)))) e!45945)))

(assert (= (and d!15822 c!20662) b!81827))

(assert (= (and d!15822 (not c!20662)) b!81828))

(assert (= (and b!81828 c!20663) b!81829))

(assert (= (and b!81828 (not c!20663)) b!81830))

(declare-fun m!58226 () Bool)

(assert (=> b!81829 m!58226))

(declare-fun m!58228 () Bool)

(assert (=> b!81830 m!58228))

(declare-fun m!58230 () Bool)

(assert (=> b!81830 m!58230))

(assert (=> b!81830 m!58228))

(assert (=> b!81830 m!58230))

(declare-fun m!58232 () Bool)

(assert (=> b!81830 m!58232))

(assert (=> d!15594 d!15822))

(declare-fun d!15824 () Bool)

(declare-fun res!42533 () Bool)

(declare-fun e!45958 () Bool)

(assert (=> d!15824 (=> res!42533 e!45958)))

(assert (=> d!15824 (= res!42533 ((_ is Nil!1469) rules!2471))))

(assert (=> d!15824 (= (noDuplicateTag!69 thiss!19403 rules!2471 Nil!1471) e!45958)))

(declare-fun b!81849 () Bool)

(declare-fun e!45959 () Bool)

(assert (=> b!81849 (= e!45958 e!45959)))

(declare-fun res!42534 () Bool)

(assert (=> b!81849 (=> (not res!42534) (not e!45959))))

(declare-fun contains!220 (List!1477 String!1947) Bool)

(assert (=> b!81849 (= res!42534 (not (contains!220 Nil!1471 (tag!499 (h!6866 rules!2471)))))))

(declare-fun b!81850 () Bool)

(assert (=> b!81850 (= e!45959 (noDuplicateTag!69 thiss!19403 (t!20410 rules!2471) (Cons!1471 (tag!499 (h!6866 rules!2471)) Nil!1471)))))

(assert (= (and d!15824 (not res!42533)) b!81849))

(assert (= (and b!81849 res!42534) b!81850))

(declare-fun m!58258 () Bool)

(assert (=> b!81849 m!58258))

(declare-fun m!58260 () Bool)

(assert (=> b!81850 m!58260))

(assert (=> b!81313 d!15824))

(declare-fun b!81853 () Bool)

(declare-fun res!42535 () Bool)

(declare-fun e!45961 () Bool)

(assert (=> b!81853 (=> (not res!42535) (not e!45961))))

(declare-fun lt!19036 () List!1472)

(assert (=> b!81853 (= res!42535 (= (size!1267 lt!19036) (+ (size!1267 (t!20407 lt!18597)) (size!1267 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(declare-fun b!81854 () Bool)

(assert (=> b!81854 (= e!45961 (or (not (= (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590) Nil!1466)) (= lt!19036 (t!20407 lt!18597))))))

(declare-fun e!45960 () List!1472)

(declare-fun b!81851 () Bool)

(assert (=> b!81851 (= e!45960 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590))))

(declare-fun d!15836 () Bool)

(assert (=> d!15836 e!45961))

(declare-fun res!42536 () Bool)

(assert (=> d!15836 (=> (not res!42536) (not e!45961))))

(assert (=> d!15836 (= res!42536 (= (content!80 lt!19036) ((_ map or) (content!80 (t!20407 lt!18597)) (content!80 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(assert (=> d!15836 (= lt!19036 e!45960)))

(declare-fun c!20670 () Bool)

(assert (=> d!15836 (= c!20670 ((_ is Nil!1466) (t!20407 lt!18597)))))

(assert (=> d!15836 (= (++!158 (t!20407 lt!18597) (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)) lt!19036)))

(declare-fun b!81852 () Bool)

(assert (=> b!81852 (= e!45960 (Cons!1466 (h!6863 (t!20407 lt!18597)) (++!158 (t!20407 (t!20407 lt!18597)) (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590))))))

(assert (= (and d!15836 c!20670) b!81851))

(assert (= (and d!15836 (not c!20670)) b!81852))

(assert (= (and d!15836 res!42536) b!81853))

(assert (= (and b!81853 res!42535) b!81854))

(declare-fun m!58262 () Bool)

(assert (=> b!81853 m!58262))

(assert (=> b!81853 m!57768))

(assert (=> b!81853 m!57078))

(assert (=> b!81853 m!57492))

(declare-fun m!58264 () Bool)

(assert (=> d!15836 m!58264))

(declare-fun m!58266 () Bool)

(assert (=> d!15836 m!58266))

(assert (=> d!15836 m!57078))

(assert (=> d!15836 m!57496))

(assert (=> b!81852 m!57078))

(declare-fun m!58268 () Bool)

(assert (=> b!81852 m!58268))

(assert (=> b!81417 d!15836))

(declare-fun d!15838 () Bool)

(declare-fun e!45967 () Bool)

(assert (=> d!15838 e!45967))

(declare-fun res!42542 () Bool)

(assert (=> d!15838 (=> (not res!42542) (not e!45967))))

(declare-fun lt!19042 () BalanceConc!892)

(assert (=> d!15838 (= res!42542 (= (list!510 lt!19042) input!2238))))

(declare-fun fromList!32 (List!1472) Conc!444)

(assert (=> d!15838 (= lt!19042 (BalanceConc!893 (fromList!32 input!2238)))))

(assert (=> d!15838 (= (fromListB!56 input!2238) lt!19042)))

(declare-fun b!81860 () Bool)

(declare-fun isBalanced!94 (Conc!444) Bool)

(assert (=> b!81860 (= e!45967 (isBalanced!94 (fromList!32 input!2238)))))

(assert (= (and d!15838 res!42542) b!81860))

(declare-fun m!58276 () Bool)

(assert (=> d!15838 m!58276))

(declare-fun m!58278 () Bool)

(assert (=> d!15838 m!58278))

(assert (=> b!81860 m!58278))

(assert (=> b!81860 m!58278))

(declare-fun m!58280 () Bool)

(assert (=> b!81860 m!58280))

(assert (=> d!15540 d!15838))

(declare-fun d!15844 () Bool)

(declare-fun lt!19045 () Int)

(assert (=> d!15844 (>= lt!19045 0)))

(declare-fun e!45968 () Int)

(assert (=> d!15844 (= lt!19045 e!45968)))

(declare-fun c!20673 () Bool)

(assert (=> d!15844 (= c!20673 ((_ is Nil!1466) lt!18703))))

(assert (=> d!15844 (= (size!1267 lt!18703) lt!19045)))

(declare-fun b!81861 () Bool)

(assert (=> b!81861 (= e!45968 0)))

(declare-fun b!81862 () Bool)

(assert (=> b!81862 (= e!45968 (+ 1 (size!1267 (t!20407 lt!18703))))))

(assert (= (and d!15844 c!20673) b!81861))

(assert (= (and d!15844 (not c!20673)) b!81862))

(declare-fun m!58282 () Bool)

(assert (=> b!81862 m!58282))

(assert (=> b!81422 d!15844))

(declare-fun d!15846 () Bool)

(declare-fun lt!19046 () Int)

(assert (=> d!15846 (>= lt!19046 0)))

(declare-fun e!45969 () Int)

(assert (=> d!15846 (= lt!19046 e!45969)))

(declare-fun c!20674 () Bool)

(assert (=> d!15846 (= c!20674 ((_ is Nil!1466) (list!510 (print!52 thiss!19403 lt!18596))))))

(assert (=> d!15846 (= (size!1267 (list!510 (print!52 thiss!19403 lt!18596))) lt!19046)))

(declare-fun b!81863 () Bool)

(assert (=> b!81863 (= e!45969 0)))

(declare-fun b!81864 () Bool)

(assert (=> b!81864 (= e!45969 (+ 1 (size!1267 (t!20407 (list!510 (print!52 thiss!19403 lt!18596))))))))

(assert (= (and d!15846 c!20674) b!81863))

(assert (= (and d!15846 (not c!20674)) b!81864))

(declare-fun m!58284 () Bool)

(assert (=> b!81864 m!58284))

(assert (=> b!81422 d!15846))

(declare-fun d!15848 () Bool)

(declare-fun lt!19048 () Int)

(assert (=> d!15848 (>= lt!19048 0)))

(declare-fun e!45970 () Int)

(assert (=> d!15848 (= lt!19048 e!45970)))

(declare-fun c!20675 () Bool)

(assert (=> d!15848 (= c!20675 ((_ is Nil!1466) lt!18590))))

(assert (=> d!15848 (= (size!1267 lt!18590) lt!19048)))

(declare-fun b!81865 () Bool)

(assert (=> b!81865 (= e!45970 0)))

(declare-fun b!81866 () Bool)

(assert (=> b!81866 (= e!45970 (+ 1 (size!1267 (t!20407 lt!18590))))))

(assert (= (and d!15848 c!20675) b!81865))

(assert (= (and d!15848 (not c!20675)) b!81866))

(declare-fun m!58288 () Bool)

(assert (=> b!81866 m!58288))

(assert (=> b!81422 d!15848))

(declare-fun d!15850 () Bool)

(declare-fun lt!19056 () Bool)

(assert (=> d!15850 (= lt!19056 (isEmpty!525 (list!509 (_1!964 lt!18635))))))

(assert (=> d!15850 (= lt!19056 (isEmpty!527 (c!20520 (_1!964 lt!18635))))))

(assert (=> d!15850 (= (isEmpty!523 (_1!964 lt!18635)) lt!19056)))

(declare-fun bs!8519 () Bool)

(assert (= bs!8519 d!15850))

(assert (=> bs!8519 m!57224))

(assert (=> bs!8519 m!57224))

(declare-fun m!58318 () Bool)

(assert (=> bs!8519 m!58318))

(declare-fun m!58322 () Bool)

(assert (=> bs!8519 m!58322))

(assert (=> b!81307 d!15850))

(declare-fun b!81883 () Bool)

(declare-fun e!45979 () List!1472)

(declare-fun e!45980 () List!1472)

(assert (=> b!81883 (= e!45979 e!45980)))

(declare-fun c!20684 () Bool)

(assert (=> b!81883 (= c!20684 ((_ is Leaf!740) (c!20518 (print!52 thiss!19403 lt!18596))))))

(declare-fun b!81884 () Bool)

(assert (=> b!81884 (= e!45980 (list!517 (xs!3023 (c!20518 (print!52 thiss!19403 lt!18596)))))))

(declare-fun b!81882 () Bool)

(assert (=> b!81882 (= e!45979 Nil!1466)))

(declare-fun b!81885 () Bool)

(assert (=> b!81885 (= e!45980 (++!158 (list!514 (left!1113 (c!20518 (print!52 thiss!19403 lt!18596)))) (list!514 (right!1443 (c!20518 (print!52 thiss!19403 lt!18596))))))))

(declare-fun d!15870 () Bool)

(declare-fun c!20683 () Bool)

(assert (=> d!15870 (= c!20683 ((_ is Empty!444) (c!20518 (print!52 thiss!19403 lt!18596))))))

(assert (=> d!15870 (= (list!514 (c!20518 (print!52 thiss!19403 lt!18596))) e!45979)))

(assert (= (and d!15870 c!20683) b!81882))

(assert (= (and d!15870 (not c!20683)) b!81883))

(assert (= (and b!81883 c!20684) b!81884))

(assert (= (and b!81883 (not c!20684)) b!81885))

(declare-fun m!58328 () Bool)

(assert (=> b!81884 m!58328))

(declare-fun m!58332 () Bool)

(assert (=> b!81885 m!58332))

(declare-fun m!58336 () Bool)

(assert (=> b!81885 m!58336))

(assert (=> b!81885 m!58332))

(assert (=> b!81885 m!58336))

(declare-fun m!58338 () Bool)

(assert (=> b!81885 m!58338))

(assert (=> d!15624 d!15870))

(declare-fun d!15876 () Bool)

(assert (=> d!15876 (= (isEmpty!524 lt!18655) (not ((_ is Some!129) lt!18655)))))

(assert (=> d!15548 d!15876))

(declare-fun b!81916 () Bool)

(declare-fun e!45999 () Bool)

(assert (=> b!81916 (= e!45999 (>= (size!1267 input!2238) (size!1267 input!2238)))))

(declare-fun b!81913 () Bool)

(declare-fun e!45998 () Bool)

(declare-fun e!45997 () Bool)

(assert (=> b!81913 (= e!45998 e!45997)))

(declare-fun res!42555 () Bool)

(assert (=> b!81913 (=> (not res!42555) (not e!45997))))

(assert (=> b!81913 (= res!42555 (not ((_ is Nil!1466) input!2238)))))

(declare-fun d!15884 () Bool)

(assert (=> d!15884 e!45999))

(declare-fun res!42554 () Bool)

(assert (=> d!15884 (=> res!42554 e!45999)))

(declare-fun lt!19098 () Bool)

(assert (=> d!15884 (= res!42554 (not lt!19098))))

(assert (=> d!15884 (= lt!19098 e!45998)))

(declare-fun res!42556 () Bool)

(assert (=> d!15884 (=> res!42556 e!45998)))

(assert (=> d!15884 (= res!42556 ((_ is Nil!1466) input!2238))))

(assert (=> d!15884 (= (isPrefix!25 input!2238 input!2238) lt!19098)))

(declare-fun b!81914 () Bool)

(declare-fun res!42553 () Bool)

(assert (=> b!81914 (=> (not res!42553) (not e!45997))))

(assert (=> b!81914 (= res!42553 (= (head!427 input!2238) (head!427 input!2238)))))

(declare-fun b!81915 () Bool)

(assert (=> b!81915 (= e!45997 (isPrefix!25 (tail!136 input!2238) (tail!136 input!2238)))))

(assert (= (and d!15884 (not res!42556)) b!81913))

(assert (= (and b!81913 res!42555) b!81914))

(assert (= (and b!81914 res!42553) b!81915))

(assert (= (and d!15884 (not res!42554)) b!81916))

(assert (=> b!81916 m!57282))

(assert (=> b!81916 m!57282))

(declare-fun m!58394 () Bool)

(assert (=> b!81914 m!58394))

(assert (=> b!81914 m!58394))

(declare-fun m!58396 () Bool)

(assert (=> b!81915 m!58396))

(assert (=> b!81915 m!58396))

(assert (=> b!81915 m!58396))

(assert (=> b!81915 m!58396))

(declare-fun m!58400 () Bool)

(assert (=> b!81915 m!58400))

(assert (=> d!15548 d!15884))

(declare-fun d!15894 () Bool)

(assert (=> d!15894 (isPrefix!25 input!2238 input!2238)))

(declare-fun lt!19101 () Unit!914)

(declare-fun choose!1312 (List!1472 List!1472) Unit!914)

(assert (=> d!15894 (= lt!19101 (choose!1312 input!2238 input!2238))))

(assert (=> d!15894 (= (lemmaIsPrefixRefl!25 input!2238 input!2238) lt!19101)))

(declare-fun bs!8523 () Bool)

(assert (= bs!8523 d!15894))

(assert (=> bs!8523 m!57294))

(declare-fun m!58456 () Bool)

(assert (=> bs!8523 m!58456))

(assert (=> d!15548 d!15894))

(declare-fun bs!8526 () Bool)

(declare-fun d!15900 () Bool)

(assert (= bs!8526 (and d!15900 d!15740)))

(declare-fun lambda!1515 () Int)

(assert (=> bs!8526 (= lambda!1515 lambda!1509)))

(assert (=> d!15900 true))

(declare-fun lt!19107 () Bool)

(assert (=> d!15900 (= lt!19107 (forall!196 rules!2471 lambda!1515))))

(declare-fun e!46008 () Bool)

(assert (=> d!15900 (= lt!19107 e!46008)))

(declare-fun res!42561 () Bool)

(assert (=> d!15900 (=> res!42561 e!46008)))

(assert (=> d!15900 (= res!42561 (not ((_ is Cons!1469) rules!2471)))))

(assert (=> d!15900 (= (rulesValidInductive!50 thiss!19403 rules!2471) lt!19107)))

(declare-fun b!81927 () Bool)

(declare-fun e!46007 () Bool)

(assert (=> b!81927 (= e!46008 e!46007)))

(declare-fun res!42562 () Bool)

(assert (=> b!81927 (=> (not res!42562) (not e!46007))))

(declare-fun ruleValid!28 (LexerInterface!213 Rule!442) Bool)

(assert (=> b!81927 (= res!42562 (ruleValid!28 thiss!19403 (h!6866 rules!2471)))))

(declare-fun b!81928 () Bool)

(assert (=> b!81928 (= e!46007 (rulesValidInductive!50 thiss!19403 (t!20410 rules!2471)))))

(assert (= (and d!15900 (not res!42561)) b!81927))

(assert (= (and b!81927 res!42562) b!81928))

(declare-fun m!58482 () Bool)

(assert (=> d!15900 m!58482))

(declare-fun m!58484 () Bool)

(assert (=> b!81927 m!58484))

(assert (=> b!81928 m!57814))

(assert (=> d!15548 d!15900))

(declare-fun d!15916 () Bool)

(assert (=> d!15916 (= (list!510 lt!18700) (list!514 (c!20518 lt!18700)))))

(declare-fun bs!8528 () Bool)

(assert (= bs!8528 d!15916))

(declare-fun m!58486 () Bool)

(assert (=> bs!8528 m!58486))

(assert (=> d!15614 d!15916))

(declare-fun d!15918 () Bool)

(declare-fun c!20706 () Bool)

(assert (=> d!15918 (= c!20706 ((_ is Cons!1468) (list!509 (_1!964 lt!18592))))))

(declare-fun e!46019 () List!1472)

(assert (=> d!15918 (= (printList!21 thiss!19403 (list!509 (_1!964 lt!18592))) e!46019)))

(declare-fun b!81948 () Bool)

(assert (=> b!81948 (= e!46019 (++!158 (list!510 (charsOf!58 (h!6865 (list!509 (_1!964 lt!18592))))) (printList!21 thiss!19403 (t!20409 (list!509 (_1!964 lt!18592))))))))

(declare-fun b!81949 () Bool)

(assert (=> b!81949 (= e!46019 Nil!1466)))

(assert (= (and d!15918 c!20706) b!81948))

(assert (= (and d!15918 (not c!20706)) b!81949))

(declare-fun m!58532 () Bool)

(assert (=> b!81948 m!58532))

(assert (=> b!81948 m!58532))

(declare-fun m!58534 () Bool)

(assert (=> b!81948 m!58534))

(declare-fun m!58536 () Bool)

(assert (=> b!81948 m!58536))

(assert (=> b!81948 m!58534))

(assert (=> b!81948 m!58536))

(declare-fun m!58538 () Bool)

(assert (=> b!81948 m!58538))

(assert (=> d!15614 d!15918))

(assert (=> d!15614 d!15558))

(declare-fun d!15928 () Bool)

(declare-fun lt!19147 () BalanceConc!892)

(declare-fun printListTailRec!12 (LexerInterface!213 List!1474 List!1472) List!1472)

(declare-fun dropList!20 (BalanceConc!894 Int) List!1474)

(assert (=> d!15928 (= (list!510 lt!19147) (printListTailRec!12 thiss!19403 (dropList!20 (_1!964 lt!18592) 0) (list!510 (BalanceConc!893 Empty!444))))))

(declare-fun e!46050 () BalanceConc!892)

(assert (=> d!15928 (= lt!19147 e!46050)))

(declare-fun c!20714 () Bool)

(assert (=> d!15928 (= c!20714 (>= 0 (size!1266 (_1!964 lt!18592))))))

(declare-fun e!46049 () Bool)

(assert (=> d!15928 e!46049))

(declare-fun res!42593 () Bool)

(assert (=> d!15928 (=> (not res!42593) (not e!46049))))

(assert (=> d!15928 (= res!42593 (>= 0 0))))

(assert (=> d!15928 (= (printTailRec!21 thiss!19403 (_1!964 lt!18592) 0 (BalanceConc!893 Empty!444)) lt!19147)))

(declare-fun b!81995 () Bool)

(assert (=> b!81995 (= e!46049 (<= 0 (size!1266 (_1!964 lt!18592))))))

(declare-fun b!81996 () Bool)

(assert (=> b!81996 (= e!46050 (BalanceConc!893 Empty!444))))

(declare-fun b!81997 () Bool)

(declare-fun apply!206 (BalanceConc!894 Int) Token!402)

(assert (=> b!81997 (= e!46050 (printTailRec!21 thiss!19403 (_1!964 lt!18592) (+ 0 1) (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (apply!206 (_1!964 lt!18592) 0)))))))

(declare-fun lt!19145 () List!1474)

(assert (=> b!81997 (= lt!19145 (list!509 (_1!964 lt!18592)))))

(declare-fun lt!19146 () Unit!914)

(declare-fun lemmaDropApply!76 (List!1474 Int) Unit!914)

(assert (=> b!81997 (= lt!19146 (lemmaDropApply!76 lt!19145 0))))

(declare-fun head!428 (List!1474) Token!402)

(declare-fun drop!78 (List!1474 Int) List!1474)

(declare-fun apply!207 (List!1474 Int) Token!402)

(assert (=> b!81997 (= (head!428 (drop!78 lt!19145 0)) (apply!207 lt!19145 0))))

(declare-fun lt!19148 () Unit!914)

(assert (=> b!81997 (= lt!19148 lt!19146)))

(declare-fun lt!19143 () List!1474)

(assert (=> b!81997 (= lt!19143 (list!509 (_1!964 lt!18592)))))

(declare-fun lt!19149 () Unit!914)

(declare-fun lemmaDropTail!68 (List!1474 Int) Unit!914)

(assert (=> b!81997 (= lt!19149 (lemmaDropTail!68 lt!19143 0))))

(assert (=> b!81997 (= (tail!134 (drop!78 lt!19143 0)) (drop!78 lt!19143 (+ 0 1)))))

(declare-fun lt!19144 () Unit!914)

(assert (=> b!81997 (= lt!19144 lt!19149)))

(assert (= (and d!15928 res!42593) b!81995))

(assert (= (and d!15928 c!20714) b!81996))

(assert (= (and d!15928 (not c!20714)) b!81997))

(assert (=> d!15928 m!58096))

(declare-fun m!58598 () Bool)

(assert (=> d!15928 m!58598))

(assert (=> d!15928 m!58096))

(declare-fun m!58600 () Bool)

(assert (=> d!15928 m!58600))

(assert (=> d!15928 m!58598))

(declare-fun m!58602 () Bool)

(assert (=> d!15928 m!58602))

(declare-fun m!58604 () Bool)

(assert (=> d!15928 m!58604))

(assert (=> b!81995 m!58602))

(declare-fun m!58606 () Bool)

(assert (=> b!81997 m!58606))

(declare-fun m!58608 () Bool)

(assert (=> b!81997 m!58608))

(declare-fun m!58610 () Bool)

(assert (=> b!81997 m!58610))

(assert (=> b!81997 m!58606))

(assert (=> b!81997 m!58608))

(declare-fun m!58616 () Bool)

(assert (=> b!81997 m!58616))

(declare-fun m!58618 () Bool)

(assert (=> b!81997 m!58618))

(declare-fun m!58622 () Bool)

(assert (=> b!81997 m!58622))

(assert (=> b!81997 m!58610))

(assert (=> b!81997 m!57038))

(declare-fun m!58626 () Bool)

(assert (=> b!81997 m!58626))

(declare-fun m!58628 () Bool)

(assert (=> b!81997 m!58628))

(declare-fun m!58630 () Bool)

(assert (=> b!81997 m!58630))

(declare-fun m!58634 () Bool)

(assert (=> b!81997 m!58634))

(declare-fun m!58638 () Bool)

(assert (=> b!81997 m!58638))

(assert (=> b!81997 m!58634))

(declare-fun m!58640 () Bool)

(assert (=> b!81997 m!58640))

(assert (=> b!81997 m!58618))

(assert (=> d!15614 d!15928))

(declare-fun d!15956 () Bool)

(declare-fun c!20715 () Bool)

(assert (=> d!15956 (= c!20715 ((_ is Nil!1466) lt!18691))))

(declare-fun e!46051 () (InoxSet C!1700))

(assert (=> d!15956 (= (content!80 lt!18691) e!46051)))

(declare-fun b!81998 () Bool)

(assert (=> b!81998 (= e!46051 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!81999 () Bool)

(assert (=> b!81999 (= e!46051 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18691) true) (content!80 (t!20407 lt!18691))))))

(assert (= (and d!15956 c!20715) b!81998))

(assert (= (and d!15956 (not c!20715)) b!81999))

(declare-fun m!58650 () Bool)

(assert (=> b!81999 m!58650))

(declare-fun m!58652 () Bool)

(assert (=> b!81999 m!58652))

(assert (=> d!15608 d!15956))

(declare-fun d!15958 () Bool)

(declare-fun c!20716 () Bool)

(assert (=> d!15958 (= c!20716 ((_ is Nil!1466) lt!18597))))

(declare-fun e!46052 () (InoxSet C!1700))

(assert (=> d!15958 (= (content!80 lt!18597) e!46052)))

(declare-fun b!82000 () Bool)

(assert (=> b!82000 (= e!46052 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!82001 () Bool)

(assert (=> b!82001 (= e!46052 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18597) true) (content!80 (t!20407 lt!18597))))))

(assert (= (and d!15958 c!20716) b!82000))

(assert (= (and d!15958 (not c!20716)) b!82001))

(declare-fun m!58658 () Bool)

(assert (=> b!82001 m!58658))

(assert (=> b!82001 m!58266))

(assert (=> d!15608 d!15958))

(declare-fun d!15960 () Bool)

(declare-fun c!20717 () Bool)

(assert (=> d!15960 (= c!20717 ((_ is Nil!1466) (_2!965 lt!18593)))))

(declare-fun e!46053 () (InoxSet C!1700))

(assert (=> d!15960 (= (content!80 (_2!965 lt!18593)) e!46053)))

(declare-fun b!82002 () Bool)

(assert (=> b!82002 (= e!46053 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!82003 () Bool)

(assert (=> b!82003 (= e!46053 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 (_2!965 lt!18593)) true) (content!80 (t!20407 (_2!965 lt!18593)))))))

(assert (= (and d!15960 c!20717) b!82002))

(assert (= (and d!15960 (not c!20717)) b!82003))

(declare-fun m!58662 () Bool)

(assert (=> b!82003 m!58662))

(declare-fun m!58664 () Bool)

(assert (=> b!82003 m!58664))

(assert (=> d!15608 d!15960))

(declare-fun d!15964 () Bool)

(declare-fun c!20718 () Bool)

(assert (=> d!15964 (= c!20718 ((_ is Nil!1466) lt!18702))))

(declare-fun e!46054 () (InoxSet C!1700))

(assert (=> d!15964 (= (content!80 lt!18702) e!46054)))

(declare-fun b!82004 () Bool)

(assert (=> b!82004 (= e!46054 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!82005 () Bool)

(assert (=> b!82005 (= e!46054 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 lt!18702) true) (content!80 (t!20407 lt!18702))))))

(assert (= (and d!15964 c!20718) b!82004))

(assert (= (and d!15964 (not c!20718)) b!82005))

(declare-fun m!58668 () Bool)

(assert (=> b!82005 m!58668))

(declare-fun m!58670 () Bool)

(assert (=> b!82005 m!58670))

(assert (=> d!15620 d!15964))

(assert (=> d!15620 d!15958))

(declare-fun c!20719 () Bool)

(declare-fun d!15968 () Bool)

(assert (=> d!15968 (= c!20719 ((_ is Nil!1466) (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))

(declare-fun e!46055 () (InoxSet C!1700))

(assert (=> d!15968 (= (content!80 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)) e!46055)))

(declare-fun b!82006 () Bool)

(assert (=> b!82006 (= e!46055 ((as const (Array C!1700 Bool)) false))))

(declare-fun b!82007 () Bool)

(assert (=> b!82007 (= e!46055 ((_ map or) (store ((as const (Array C!1700 Bool)) false) (h!6863 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)) true) (content!80 (t!20407 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(assert (= (and d!15968 c!20719) b!82006))

(assert (= (and d!15968 (not c!20719)) b!82007))

(declare-fun m!58676 () Bool)

(assert (=> b!82007 m!58676))

(declare-fun m!58678 () Bool)

(assert (=> b!82007 m!58678))

(assert (=> d!15620 d!15968))

(declare-fun d!15972 () Bool)

(assert (=> d!15972 (= (list!510 lt!18687) (list!514 (c!20518 lt!18687)))))

(declare-fun bs!8536 () Bool)

(assert (= bs!8536 d!15972))

(declare-fun m!58680 () Bool)

(assert (=> bs!8536 m!58680))

(assert (=> d!15600 d!15972))

(declare-fun b!82009 () Bool)

(declare-fun e!46056 () List!1472)

(declare-fun e!46057 () List!1472)

(assert (=> b!82009 (= e!46056 e!46057)))

(declare-fun c!20721 () Bool)

(assert (=> b!82009 (= c!20721 ((_ is Leaf!740) (c!20518 (print!52 thiss!19403 (_1!964 lt!18592)))))))

(declare-fun b!82010 () Bool)

(assert (=> b!82010 (= e!46057 (list!517 (xs!3023 (c!20518 (print!52 thiss!19403 (_1!964 lt!18592))))))))

(declare-fun b!82008 () Bool)

(assert (=> b!82008 (= e!46056 Nil!1466)))

(declare-fun b!82011 () Bool)

(assert (=> b!82011 (= e!46057 (++!158 (list!514 (left!1113 (c!20518 (print!52 thiss!19403 (_1!964 lt!18592))))) (list!514 (right!1443 (c!20518 (print!52 thiss!19403 (_1!964 lt!18592)))))))))

(declare-fun d!15974 () Bool)

(declare-fun c!20720 () Bool)

(assert (=> d!15974 (= c!20720 ((_ is Empty!444) (c!20518 (print!52 thiss!19403 (_1!964 lt!18592)))))))

(assert (=> d!15974 (= (list!514 (c!20518 (print!52 thiss!19403 (_1!964 lt!18592)))) e!46056)))

(assert (= (and d!15974 c!20720) b!82008))

(assert (= (and d!15974 (not c!20720)) b!82009))

(assert (= (and b!82009 c!20721) b!82010))

(assert (= (and b!82009 (not c!20721)) b!82011))

(declare-fun m!58682 () Bool)

(assert (=> b!82010 m!58682))

(declare-fun m!58684 () Bool)

(assert (=> b!82011 m!58684))

(declare-fun m!58686 () Bool)

(assert (=> b!82011 m!58686))

(assert (=> b!82011 m!58684))

(assert (=> b!82011 m!58686))

(declare-fun m!58688 () Bool)

(assert (=> b!82011 m!58688))

(assert (=> d!15602 d!15974))

(declare-fun d!15976 () Bool)

(declare-fun lt!19154 () Bool)

(declare-fun content!81 (List!1475) (InoxSet Rule!442))

(assert (=> d!15976 (= lt!19154 (select (content!81 rules!2471) (rule!804 (_1!965 (get!370 lt!18655)))))))

(declare-fun e!46063 () Bool)

(assert (=> d!15976 (= lt!19154 e!46063)))

(declare-fun res!42598 () Bool)

(assert (=> d!15976 (=> (not res!42598) (not e!46063))))

(assert (=> d!15976 (= res!42598 ((_ is Cons!1469) rules!2471))))

(assert (=> d!15976 (= (contains!219 rules!2471 (rule!804 (_1!965 (get!370 lt!18655)))) lt!19154)))

(declare-fun b!82016 () Bool)

(declare-fun e!46062 () Bool)

(assert (=> b!82016 (= e!46063 e!46062)))

(declare-fun res!42599 () Bool)

(assert (=> b!82016 (=> res!42599 e!46062)))

(assert (=> b!82016 (= res!42599 (= (h!6866 rules!2471) (rule!804 (_1!965 (get!370 lt!18655)))))))

(declare-fun b!82017 () Bool)

(assert (=> b!82017 (= e!46062 (contains!219 (t!20410 rules!2471) (rule!804 (_1!965 (get!370 lt!18655)))))))

(assert (= (and d!15976 res!42598) b!82016))

(assert (= (and b!82016 (not res!42599)) b!82017))

(declare-fun m!58690 () Bool)

(assert (=> d!15976 m!58690))

(declare-fun m!58692 () Bool)

(assert (=> d!15976 m!58692))

(declare-fun m!58694 () Bool)

(assert (=> b!82017 m!58694))

(assert (=> b!81339 d!15976))

(assert (=> b!81339 d!15676))

(declare-fun d!15978 () Bool)

(assert (=> d!15978 (= (list!509 (_1!964 lt!18688)) (list!513 (c!20520 (_1!964 lt!18688))))))

(declare-fun bs!8537 () Bool)

(assert (= bs!8537 d!15978))

(declare-fun m!58696 () Bool)

(assert (=> bs!8537 m!58696))

(assert (=> b!81398 d!15978))

(assert (=> b!81398 d!15692))

(assert (=> b!81398 d!15704))

(declare-fun d!15980 () Bool)

(declare-fun lt!19155 () Bool)

(assert (=> d!15980 (= lt!19155 (isEmpty!525 (list!509 (_1!964 lt!18688))))))

(assert (=> d!15980 (= lt!19155 (isEmpty!527 (c!20520 (_1!964 lt!18688))))))

(assert (=> d!15980 (= (isEmpty!523 (_1!964 lt!18688)) lt!19155)))

(declare-fun bs!8538 () Bool)

(assert (= bs!8538 d!15980))

(assert (=> bs!8538 m!57422))

(assert (=> bs!8538 m!57422))

(declare-fun m!58698 () Bool)

(assert (=> bs!8538 m!58698))

(declare-fun m!58700 () Bool)

(assert (=> bs!8538 m!58700))

(assert (=> b!81396 d!15980))

(declare-fun d!15982 () Bool)

(assert (=> d!15982 true))

(declare-fun lambda!1521 () Int)

(declare-fun order!571 () Int)

(declare-fun dynLambda!364 (Int Int) Int)

(assert (=> d!15982 (< (dynLambda!360 order!567 (toValue!840 (transformation!321 (h!6866 rules!2471)))) (dynLambda!364 order!571 lambda!1521))))

(declare-fun Forall2!33 (Int) Bool)

(assert (=> d!15982 (= (equivClasses!57 (toChars!699 (transformation!321 (h!6866 rules!2471))) (toValue!840 (transformation!321 (h!6866 rules!2471)))) (Forall2!33 lambda!1521))))

(declare-fun bs!8539 () Bool)

(assert (= bs!8539 d!15982))

(declare-fun m!58702 () Bool)

(assert (=> bs!8539 m!58702))

(assert (=> b!81426 d!15982))

(declare-fun d!15984 () Bool)

(declare-fun lt!19158 () Int)

(assert (=> d!15984 (>= lt!19158 0)))

(declare-fun e!46080 () Int)

(assert (=> d!15984 (= lt!19158 e!46080)))

(declare-fun c!20728 () Bool)

(assert (=> d!15984 (= c!20728 ((_ is Nil!1466) lt!18701))))

(assert (=> d!15984 (= (size!1267 lt!18701) lt!19158)))

(declare-fun b!82050 () Bool)

(assert (=> b!82050 (= e!46080 0)))

(declare-fun b!82051 () Bool)

(assert (=> b!82051 (= e!46080 (+ 1 (size!1267 (t!20407 lt!18701))))))

(assert (= (and d!15984 c!20728) b!82050))

(assert (= (and d!15984 (not c!20728)) b!82051))

(declare-fun m!58704 () Bool)

(assert (=> b!82051 m!58704))

(assert (=> b!81414 d!15984))

(declare-fun d!15986 () Bool)

(declare-fun lt!19159 () Int)

(assert (=> d!15986 (>= lt!19159 0)))

(declare-fun e!46081 () Int)

(assert (=> d!15986 (= lt!19159 e!46081)))

(declare-fun c!20729 () Bool)

(assert (=> d!15986 (= c!20729 ((_ is Nil!1466) lt!18585))))

(assert (=> d!15986 (= (size!1267 lt!18585) lt!19159)))

(declare-fun b!82052 () Bool)

(assert (=> b!82052 (= e!46081 0)))

(declare-fun b!82053 () Bool)

(assert (=> b!82053 (= e!46081 (+ 1 (size!1267 (t!20407 lt!18585))))))

(assert (= (and d!15986 c!20729) b!82052))

(assert (= (and d!15986 (not c!20729)) b!82053))

(assert (=> b!82053 m!57742))

(assert (=> b!81414 d!15986))

(declare-fun d!15988 () Bool)

(declare-fun lt!19160 () Int)

(assert (=> d!15988 (>= lt!19160 0)))

(declare-fun e!46082 () Int)

(assert (=> d!15988 (= lt!19160 e!46082)))

(declare-fun c!20730 () Bool)

(assert (=> d!15988 (= c!20730 ((_ is Nil!1466) lt!18588))))

(assert (=> d!15988 (= (size!1267 lt!18588) lt!19160)))

(declare-fun b!82054 () Bool)

(assert (=> b!82054 (= e!46082 0)))

(declare-fun b!82055 () Bool)

(assert (=> b!82055 (= e!46082 (+ 1 (size!1267 (t!20407 lt!18588))))))

(assert (= (and d!15988 c!20730) b!82054))

(assert (= (and d!15988 (not c!20730)) b!82055))

(declare-fun m!58706 () Bool)

(assert (=> b!82055 m!58706))

(assert (=> b!81414 d!15988))

(assert (=> b!81335 d!15672))

(assert (=> b!81335 d!15674))

(assert (=> b!81335 d!15676))

(declare-fun b!82123 () Bool)

(declare-fun res!42667 () Bool)

(declare-fun e!46116 () Bool)

(assert (=> b!82123 (=> (not res!42667) (not e!46116))))

(declare-fun lt!19188 () Option!130)

(assert (=> b!82123 (= res!42667 (= (rule!804 (_1!965 (get!370 lt!19188))) (h!6866 rules!2471)))))

(declare-fun b!82124 () Bool)

(declare-fun e!46118 () Bool)

(assert (=> b!82124 (= e!46118 e!46116)))

(declare-fun res!42670 () Bool)

(assert (=> b!82124 (=> (not res!42670) (not e!46116))))

(assert (=> b!82124 (= res!42670 (matchR!27 (regex!321 (h!6866 rules!2471)) (list!510 (charsOf!58 (_1!965 (get!370 lt!19188))))))))

(declare-fun d!15990 () Bool)

(assert (=> d!15990 e!46118))

(declare-fun res!42671 () Bool)

(assert (=> d!15990 (=> res!42671 e!46118)))

(assert (=> d!15990 (= res!42671 (isEmpty!524 lt!19188))))

(declare-fun e!46117 () Option!130)

(assert (=> d!15990 (= lt!19188 e!46117)))

(declare-fun c!20741 () Bool)

(declare-datatypes ((tuple2!1526 0))(
  ( (tuple2!1527 (_1!970 List!1472) (_2!970 List!1472)) )
))
(declare-fun lt!19187 () tuple2!1526)

(assert (=> d!15990 (= c!20741 (isEmpty!521 (_1!970 lt!19187)))))

(declare-fun findLongestMatch!12 (Regex!389 List!1472) tuple2!1526)

(assert (=> d!15990 (= lt!19187 (findLongestMatch!12 (regex!321 (h!6866 rules!2471)) input!2238))))

(assert (=> d!15990 (ruleValid!28 thiss!19403 (h!6866 rules!2471))))

(assert (=> d!15990 (= (maxPrefixOneRule!23 thiss!19403 (h!6866 rules!2471) input!2238) lt!19188)))

(declare-fun b!82125 () Bool)

(assert (=> b!82125 (= e!46116 (= (size!1261 (_1!965 (get!370 lt!19188))) (size!1267 (originalCharacters!372 (_1!965 (get!370 lt!19188))))))))

(declare-fun b!82126 () Bool)

(declare-fun res!42673 () Bool)

(assert (=> b!82126 (=> (not res!42673) (not e!46116))))

(assert (=> b!82126 (= res!42673 (< (size!1267 (_2!965 (get!370 lt!19188))) (size!1267 input!2238)))))

(declare-fun b!82127 () Bool)

(declare-fun res!42672 () Bool)

(assert (=> b!82127 (=> (not res!42672) (not e!46116))))

(assert (=> b!82127 (= res!42672 (= (value!12044 (_1!965 (get!370 lt!19188))) (apply!203 (transformation!321 (rule!804 (_1!965 (get!370 lt!19188)))) (seqFromList!154 (originalCharacters!372 (_1!965 (get!370 lt!19188)))))))))

(declare-fun b!82128 () Bool)

(declare-fun res!42668 () Bool)

(assert (=> b!82128 (=> (not res!42668) (not e!46116))))

(assert (=> b!82128 (= res!42668 (= (++!158 (list!510 (charsOf!58 (_1!965 (get!370 lt!19188)))) (_2!965 (get!370 lt!19188))) input!2238))))

(declare-fun b!82129 () Bool)

(declare-fun e!46119 () Bool)

(declare-fun findLongestMatchInner!13 (Regex!389 List!1472 Int List!1472 List!1472 Int) tuple2!1526)

(assert (=> b!82129 (= e!46119 (matchR!27 (regex!321 (h!6866 rules!2471)) (_1!970 (findLongestMatchInner!13 (regex!321 (h!6866 rules!2471)) Nil!1466 (size!1267 Nil!1466) input!2238 input!2238 (size!1267 input!2238)))))))

(declare-fun b!82130 () Bool)

(assert (=> b!82130 (= e!46117 (Some!129 (tuple2!1517 (Token!403 (apply!203 (transformation!321 (h!6866 rules!2471)) (seqFromList!154 (_1!970 lt!19187))) (h!6866 rules!2471) (size!1265 (seqFromList!154 (_1!970 lt!19187))) (_1!970 lt!19187)) (_2!970 lt!19187))))))

(declare-fun lt!19189 () Unit!914)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!14 (Regex!389 List!1472) Unit!914)

(assert (=> b!82130 (= lt!19189 (longestMatchIsAcceptedByMatchOrIsEmpty!14 (regex!321 (h!6866 rules!2471)) input!2238))))

(declare-fun res!42669 () Bool)

(assert (=> b!82130 (= res!42669 (isEmpty!521 (_1!970 (findLongestMatchInner!13 (regex!321 (h!6866 rules!2471)) Nil!1466 (size!1267 Nil!1466) input!2238 input!2238 (size!1267 input!2238)))))))

(assert (=> b!82130 (=> res!42669 e!46119)))

(assert (=> b!82130 e!46119))

(declare-fun lt!19185 () Unit!914)

(assert (=> b!82130 (= lt!19185 lt!19189)))

(declare-fun lt!19186 () Unit!914)

(declare-fun lemmaSemiInverse!12 (TokenValueInjection!446 BalanceConc!892) Unit!914)

(assert (=> b!82130 (= lt!19186 (lemmaSemiInverse!12 (transformation!321 (h!6866 rules!2471)) (seqFromList!154 (_1!970 lt!19187))))))

(declare-fun b!82131 () Bool)

(assert (=> b!82131 (= e!46117 None!129)))

(assert (= (and d!15990 c!20741) b!82131))

(assert (= (and d!15990 (not c!20741)) b!82130))

(assert (= (and b!82130 (not res!42669)) b!82129))

(assert (= (and d!15990 (not res!42671)) b!82124))

(assert (= (and b!82124 res!42670) b!82128))

(assert (= (and b!82128 res!42668) b!82126))

(assert (= (and b!82126 res!42673) b!82123))

(assert (= (and b!82123 res!42667) b!82127))

(assert (= (and b!82127 res!42672) b!82125))

(declare-fun m!58784 () Bool)

(assert (=> b!82123 m!58784))

(assert (=> b!82125 m!58784))

(declare-fun m!58786 () Bool)

(assert (=> b!82125 m!58786))

(declare-fun m!58788 () Bool)

(assert (=> b!82130 m!58788))

(assert (=> b!82130 m!57282))

(declare-fun m!58790 () Bool)

(assert (=> b!82130 m!58790))

(declare-fun m!58792 () Bool)

(assert (=> b!82130 m!58792))

(declare-fun m!58794 () Bool)

(assert (=> b!82130 m!58794))

(assert (=> b!82130 m!58788))

(assert (=> b!82130 m!58792))

(assert (=> b!82130 m!57282))

(declare-fun m!58796 () Bool)

(assert (=> b!82130 m!58796))

(assert (=> b!82130 m!58792))

(declare-fun m!58798 () Bool)

(assert (=> b!82130 m!58798))

(declare-fun m!58800 () Bool)

(assert (=> b!82130 m!58800))

(assert (=> b!82130 m!58792))

(declare-fun m!58802 () Bool)

(assert (=> b!82130 m!58802))

(assert (=> b!82124 m!58784))

(declare-fun m!58804 () Bool)

(assert (=> b!82124 m!58804))

(assert (=> b!82124 m!58804))

(declare-fun m!58806 () Bool)

(assert (=> b!82124 m!58806))

(assert (=> b!82124 m!58806))

(declare-fun m!58808 () Bool)

(assert (=> b!82124 m!58808))

(declare-fun m!58810 () Bool)

(assert (=> d!15990 m!58810))

(declare-fun m!58812 () Bool)

(assert (=> d!15990 m!58812))

(declare-fun m!58814 () Bool)

(assert (=> d!15990 m!58814))

(assert (=> d!15990 m!58484))

(assert (=> b!82129 m!58788))

(assert (=> b!82129 m!57282))

(assert (=> b!82129 m!58788))

(assert (=> b!82129 m!57282))

(assert (=> b!82129 m!58790))

(declare-fun m!58816 () Bool)

(assert (=> b!82129 m!58816))

(assert (=> b!82126 m!58784))

(declare-fun m!58818 () Bool)

(assert (=> b!82126 m!58818))

(assert (=> b!82126 m!57282))

(assert (=> b!82127 m!58784))

(declare-fun m!58820 () Bool)

(assert (=> b!82127 m!58820))

(assert (=> b!82127 m!58820))

(declare-fun m!58822 () Bool)

(assert (=> b!82127 m!58822))

(assert (=> b!82128 m!58784))

(assert (=> b!82128 m!58804))

(assert (=> b!82128 m!58804))

(assert (=> b!82128 m!58806))

(assert (=> b!82128 m!58806))

(declare-fun m!58824 () Bool)

(assert (=> b!82128 m!58824))

(assert (=> bm!3715 d!15990))

(declare-fun d!16018 () Bool)

(assert (=> d!16018 (= (isEmpty!524 lt!18598) (not ((_ is Some!129) lt!18598)))))

(assert (=> d!15618 d!16018))

(declare-fun d!16020 () Bool)

(declare-fun e!46120 () Bool)

(assert (=> d!16020 e!46120))

(declare-fun res!42674 () Bool)

(assert (=> d!16020 (=> (not res!42674) (not e!46120))))

(declare-fun lt!19190 () BalanceConc!892)

(assert (=> d!16020 (= res!42674 (= (list!510 lt!19190) (_2!965 lt!18593)))))

(assert (=> d!16020 (= lt!19190 (BalanceConc!893 (fromList!32 (_2!965 lt!18593))))))

(assert (=> d!16020 (= (fromListB!56 (_2!965 lt!18593)) lt!19190)))

(declare-fun b!82132 () Bool)

(assert (=> b!82132 (= e!46120 (isBalanced!94 (fromList!32 (_2!965 lt!18593))))))

(assert (= (and d!16020 res!42674) b!82132))

(declare-fun m!58826 () Bool)

(assert (=> d!16020 m!58826))

(declare-fun m!58828 () Bool)

(assert (=> d!16020 m!58828))

(assert (=> b!82132 m!58828))

(assert (=> b!82132 m!58828))

(declare-fun m!58830 () Bool)

(assert (=> b!82132 m!58830))

(assert (=> d!15596 d!16020))

(declare-fun b!82135 () Bool)

(declare-fun res!42675 () Bool)

(declare-fun e!46122 () Bool)

(assert (=> b!82135 (=> (not res!42675) (not e!46122))))

(declare-fun lt!19191 () List!1472)

(assert (=> b!82135 (= res!42675 (= (size!1267 lt!19191) (+ (size!1267 (t!20407 lt!18597)) (size!1267 (_2!965 lt!18593)))))))

(declare-fun b!82136 () Bool)

(assert (=> b!82136 (= e!46122 (or (not (= (_2!965 lt!18593) Nil!1466)) (= lt!19191 (t!20407 lt!18597))))))

(declare-fun b!82133 () Bool)

(declare-fun e!46121 () List!1472)

(assert (=> b!82133 (= e!46121 (_2!965 lt!18593))))

(declare-fun d!16022 () Bool)

(assert (=> d!16022 e!46122))

(declare-fun res!42676 () Bool)

(assert (=> d!16022 (=> (not res!42676) (not e!46122))))

(assert (=> d!16022 (= res!42676 (= (content!80 lt!19191) ((_ map or) (content!80 (t!20407 lt!18597)) (content!80 (_2!965 lt!18593)))))))

(assert (=> d!16022 (= lt!19191 e!46121)))

(declare-fun c!20742 () Bool)

(assert (=> d!16022 (= c!20742 ((_ is Nil!1466) (t!20407 lt!18597)))))

(assert (=> d!16022 (= (++!158 (t!20407 lt!18597) (_2!965 lt!18593)) lt!19191)))

(declare-fun b!82134 () Bool)

(assert (=> b!82134 (= e!46121 (Cons!1466 (h!6863 (t!20407 lt!18597)) (++!158 (t!20407 (t!20407 lt!18597)) (_2!965 lt!18593))))))

(assert (= (and d!16022 c!20742) b!82133))

(assert (= (and d!16022 (not c!20742)) b!82134))

(assert (= (and d!16022 res!42676) b!82135))

(assert (= (and b!82135 res!42675) b!82136))

(declare-fun m!58832 () Bool)

(assert (=> b!82135 m!58832))

(assert (=> b!82135 m!57768))

(assert (=> b!82135 m!57444))

(declare-fun m!58834 () Bool)

(assert (=> d!16022 m!58834))

(assert (=> d!16022 m!58266))

(assert (=> d!16022 m!57450))

(declare-fun m!58836 () Bool)

(assert (=> b!82134 m!58836))

(assert (=> b!81409 d!16022))

(declare-fun d!16024 () Bool)

(assert (=> d!16024 (= (inv!1818 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))) (isBalanced!94 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))))))

(declare-fun bs!8544 () Bool)

(assert (= bs!8544 d!16024))

(declare-fun m!58838 () Bool)

(assert (=> bs!8544 m!58838))

(assert (=> tb!2503 d!16024))

(declare-fun d!16026 () Bool)

(declare-fun lt!19192 () Int)

(assert (=> d!16026 (>= lt!19192 0)))

(declare-fun e!46123 () Int)

(assert (=> d!16026 (= lt!19192 e!46123)))

(declare-fun c!20743 () Bool)

(assert (=> d!16026 (= c!20743 ((_ is Nil!1466) (_2!965 (get!370 lt!18655))))))

(assert (=> d!16026 (= (size!1267 (_2!965 (get!370 lt!18655))) lt!19192)))

(declare-fun b!82137 () Bool)

(assert (=> b!82137 (= e!46123 0)))

(declare-fun b!82138 () Bool)

(assert (=> b!82138 (= e!46123 (+ 1 (size!1267 (t!20407 (_2!965 (get!370 lt!18655))))))))

(assert (= (and d!16026 c!20743) b!82137))

(assert (= (and d!16026 (not c!20743)) b!82138))

(declare-fun m!58840 () Bool)

(assert (=> b!82138 m!58840))

(assert (=> b!81332 d!16026))

(assert (=> b!81332 d!15676))

(declare-fun d!16028 () Bool)

(declare-fun lt!19193 () Int)

(assert (=> d!16028 (>= lt!19193 0)))

(declare-fun e!46124 () Int)

(assert (=> d!16028 (= lt!19193 e!46124)))

(declare-fun c!20744 () Bool)

(assert (=> d!16028 (= c!20744 ((_ is Nil!1466) input!2238))))

(assert (=> d!16028 (= (size!1267 input!2238) lt!19193)))

(declare-fun b!82139 () Bool)

(assert (=> b!82139 (= e!46124 0)))

(declare-fun b!82140 () Bool)

(assert (=> b!82140 (= e!46124 (+ 1 (size!1267 (t!20407 input!2238))))))

(assert (= (and d!16028 c!20744) b!82139))

(assert (= (and d!16028 (not c!20744)) b!82140))

(declare-fun m!58842 () Bool)

(assert (=> b!82140 m!58842))

(assert (=> b!81332 d!16028))

(declare-fun d!16030 () Bool)

(declare-fun c!20747 () Bool)

(assert (=> d!16030 (= c!20747 ((_ is Node!444) (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))))))

(declare-fun e!46129 () Bool)

(assert (=> d!16030 (= (inv!1817 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))) e!46129)))

(declare-fun b!82147 () Bool)

(declare-fun inv!1821 (Conc!444) Bool)

(assert (=> b!82147 (= e!46129 (inv!1821 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))))))

(declare-fun b!82148 () Bool)

(declare-fun e!46130 () Bool)

(assert (=> b!82148 (= e!46129 e!46130)))

(declare-fun res!42679 () Bool)

(assert (=> b!82148 (= res!42679 (not ((_ is Leaf!740) (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))))))

(assert (=> b!82148 (=> res!42679 e!46130)))

(declare-fun b!82149 () Bool)

(declare-fun inv!1822 (Conc!444) Bool)

(assert (=> b!82149 (= e!46130 (inv!1822 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))))))

(assert (= (and d!16030 c!20747) b!82147))

(assert (= (and d!16030 (not c!20747)) b!82148))

(assert (= (and b!82148 (not res!42679)) b!82149))

(declare-fun m!58844 () Bool)

(assert (=> b!82147 m!58844))

(declare-fun m!58846 () Bool)

(assert (=> b!82149 m!58846))

(assert (=> b!81394 d!16030))

(declare-fun d!16032 () Bool)

(assert (=> d!16032 (= (list!510 lt!18704) (list!514 (c!20518 lt!18704)))))

(declare-fun bs!8545 () Bool)

(assert (= bs!8545 d!16032))

(declare-fun m!58848 () Bool)

(assert (=> bs!8545 m!58848))

(assert (=> d!15626 d!16032))

(declare-fun d!16034 () Bool)

(declare-fun c!20748 () Bool)

(assert (=> d!16034 (= c!20748 ((_ is Cons!1468) (list!509 lt!18596)))))

(declare-fun e!46131 () List!1472)

(assert (=> d!16034 (= (printList!21 thiss!19403 (list!509 lt!18596)) e!46131)))

(declare-fun b!82150 () Bool)

(assert (=> b!82150 (= e!46131 (++!158 (list!510 (charsOf!58 (h!6865 (list!509 lt!18596)))) (printList!21 thiss!19403 (t!20409 (list!509 lt!18596)))))))

(declare-fun b!82151 () Bool)

(assert (=> b!82151 (= e!46131 Nil!1466)))

(assert (= (and d!16034 c!20748) b!82150))

(assert (= (and d!16034 (not c!20748)) b!82151))

(declare-fun m!58850 () Bool)

(assert (=> b!82150 m!58850))

(assert (=> b!82150 m!58850))

(declare-fun m!58852 () Bool)

(assert (=> b!82150 m!58852))

(declare-fun m!58854 () Bool)

(assert (=> b!82150 m!58854))

(assert (=> b!82150 m!58852))

(assert (=> b!82150 m!58854))

(declare-fun m!58856 () Bool)

(assert (=> b!82150 m!58856))

(assert (=> d!15626 d!16034))

(declare-fun d!16036 () Bool)

(assert (=> d!16036 (= (list!509 lt!18596) (list!513 (c!20520 lt!18596)))))

(declare-fun bs!8546 () Bool)

(assert (= bs!8546 d!16036))

(assert (=> bs!8546 m!57846))

(assert (=> d!15626 d!16036))

(declare-fun d!16038 () Bool)

(declare-fun lt!19198 () BalanceConc!892)

(assert (=> d!16038 (= (list!510 lt!19198) (printListTailRec!12 thiss!19403 (dropList!20 lt!18596 0) (list!510 (BalanceConc!893 Empty!444))))))

(declare-fun e!46133 () BalanceConc!892)

(assert (=> d!16038 (= lt!19198 e!46133)))

(declare-fun c!20749 () Bool)

(assert (=> d!16038 (= c!20749 (>= 0 (size!1266 lt!18596)))))

(declare-fun e!46132 () Bool)

(assert (=> d!16038 e!46132))

(declare-fun res!42680 () Bool)

(assert (=> d!16038 (=> (not res!42680) (not e!46132))))

(assert (=> d!16038 (= res!42680 (>= 0 0))))

(assert (=> d!16038 (= (printTailRec!21 thiss!19403 lt!18596 0 (BalanceConc!893 Empty!444)) lt!19198)))

(declare-fun b!82152 () Bool)

(assert (=> b!82152 (= e!46132 (<= 0 (size!1266 lt!18596)))))

(declare-fun b!82153 () Bool)

(assert (=> b!82153 (= e!46133 (BalanceConc!893 Empty!444))))

(declare-fun b!82154 () Bool)

(assert (=> b!82154 (= e!46133 (printTailRec!21 thiss!19403 lt!18596 (+ 0 1) (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (apply!206 lt!18596 0)))))))

(declare-fun lt!19196 () List!1474)

(assert (=> b!82154 (= lt!19196 (list!509 lt!18596))))

(declare-fun lt!19197 () Unit!914)

(assert (=> b!82154 (= lt!19197 (lemmaDropApply!76 lt!19196 0))))

(assert (=> b!82154 (= (head!428 (drop!78 lt!19196 0)) (apply!207 lt!19196 0))))

(declare-fun lt!19199 () Unit!914)

(assert (=> b!82154 (= lt!19199 lt!19197)))

(declare-fun lt!19194 () List!1474)

(assert (=> b!82154 (= lt!19194 (list!509 lt!18596))))

(declare-fun lt!19200 () Unit!914)

(assert (=> b!82154 (= lt!19200 (lemmaDropTail!68 lt!19194 0))))

(assert (=> b!82154 (= (tail!134 (drop!78 lt!19194 0)) (drop!78 lt!19194 (+ 0 1)))))

(declare-fun lt!19195 () Unit!914)

(assert (=> b!82154 (= lt!19195 lt!19200)))

(assert (= (and d!16038 res!42680) b!82152))

(assert (= (and d!16038 c!20749) b!82153))

(assert (= (and d!16038 (not c!20749)) b!82154))

(assert (=> d!16038 m!58096))

(declare-fun m!58858 () Bool)

(assert (=> d!16038 m!58858))

(assert (=> d!16038 m!58096))

(declare-fun m!58860 () Bool)

(assert (=> d!16038 m!58860))

(assert (=> d!16038 m!58858))

(declare-fun m!58862 () Bool)

(assert (=> d!16038 m!58862))

(declare-fun m!58864 () Bool)

(assert (=> d!16038 m!58864))

(assert (=> b!82152 m!58862))

(declare-fun m!58866 () Bool)

(assert (=> b!82154 m!58866))

(declare-fun m!58868 () Bool)

(assert (=> b!82154 m!58868))

(declare-fun m!58870 () Bool)

(assert (=> b!82154 m!58870))

(assert (=> b!82154 m!58866))

(assert (=> b!82154 m!58868))

(declare-fun m!58872 () Bool)

(assert (=> b!82154 m!58872))

(declare-fun m!58874 () Bool)

(assert (=> b!82154 m!58874))

(declare-fun m!58876 () Bool)

(assert (=> b!82154 m!58876))

(assert (=> b!82154 m!58870))

(assert (=> b!82154 m!57392))

(declare-fun m!58878 () Bool)

(assert (=> b!82154 m!58878))

(declare-fun m!58880 () Bool)

(assert (=> b!82154 m!58880))

(declare-fun m!58882 () Bool)

(assert (=> b!82154 m!58882))

(declare-fun m!58884 () Bool)

(assert (=> b!82154 m!58884))

(declare-fun m!58886 () Bool)

(assert (=> b!82154 m!58886))

(assert (=> b!82154 m!58884))

(declare-fun m!58888 () Bool)

(assert (=> b!82154 m!58888))

(assert (=> b!82154 m!58874))

(assert (=> d!15626 d!16038))

(declare-fun d!16040 () Bool)

(declare-fun c!20750 () Bool)

(assert (=> d!16040 (= c!20750 ((_ is Empty!445) (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591)))))))

(declare-fun e!46134 () List!1474)

(assert (=> d!16040 (= (list!513 (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591)))) e!46134)))

(declare-fun b!82155 () Bool)

(assert (=> b!82155 (= e!46134 Nil!1468)))

(declare-fun b!82158 () Bool)

(declare-fun e!46135 () List!1474)

(assert (=> b!82158 (= e!46135 (++!159 (list!513 (left!1114 (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591))))) (list!513 (right!1444 (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591)))))))))

(declare-fun b!82157 () Bool)

(assert (=> b!82157 (= e!46135 (list!516 (xs!3024 (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591))))))))

(declare-fun b!82156 () Bool)

(assert (=> b!82156 (= e!46134 e!46135)))

(declare-fun c!20751 () Bool)

(assert (=> b!82156 (= c!20751 ((_ is Leaf!741) (c!20520 (prepend!83 lt!18596 (h!6865 lt!18591)))))))

(assert (= (and d!16040 c!20750) b!82155))

(assert (= (and d!16040 (not c!20750)) b!82156))

(assert (= (and b!82156 c!20751) b!82157))

(assert (= (and b!82156 (not c!20751)) b!82158))

(declare-fun m!58890 () Bool)

(assert (=> b!82158 m!58890))

(declare-fun m!58892 () Bool)

(assert (=> b!82158 m!58892))

(assert (=> b!82158 m!58890))

(assert (=> b!82158 m!58892))

(declare-fun m!58894 () Bool)

(assert (=> b!82158 m!58894))

(declare-fun m!58896 () Bool)

(assert (=> b!82157 m!58896))

(assert (=> d!15588 d!16040))

(declare-fun d!16042 () Bool)

(assert (=> d!16042 (= (list!509 lt!18681) (list!513 (c!20520 lt!18681)))))

(declare-fun bs!8547 () Bool)

(assert (= bs!8547 d!16042))

(declare-fun m!58898 () Bool)

(assert (=> bs!8547 m!58898))

(assert (=> b!81389 d!16042))

(assert (=> b!81389 d!16036))

(declare-fun d!16044 () Bool)

(assert (=> d!16044 (= (list!510 (print!52 thiss!19403 (_1!964 lt!18678))) (list!514 (c!20518 (print!52 thiss!19403 (_1!964 lt!18678)))))))

(declare-fun bs!8548 () Bool)

(assert (= bs!8548 d!16044))

(declare-fun m!58900 () Bool)

(assert (=> bs!8548 m!58900))

(assert (=> d!15562 d!16044))

(declare-fun d!16046 () Bool)

(declare-fun lt!19206 () tuple2!1514)

(assert (=> d!16046 (= (++!158 (list!510 (print!52 thiss!19403 (_1!964 lt!19206))) (list!510 (_2!964 lt!19206))) (_2!965 lt!18593))))

(assert (=> d!16046 (= lt!19206 (lex!121 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))))))

(assert (=> d!16046 true))

(declare-fun _$31!106 () Unit!914)

(assert (=> d!16046 (= (choose!1308 thiss!19403 rules!2471 (_2!965 lt!18593)) _$31!106)))

(declare-fun bs!8550 () Bool)

(assert (= bs!8550 d!16046))

(declare-fun m!58916 () Bool)

(assert (=> bs!8550 m!58916))

(declare-fun m!58918 () Bool)

(assert (=> bs!8550 m!58918))

(declare-fun m!58920 () Bool)

(assert (=> bs!8550 m!58920))

(declare-fun m!58922 () Bool)

(assert (=> bs!8550 m!58922))

(assert (=> bs!8550 m!58916))

(assert (=> bs!8550 m!57020))

(assert (=> bs!8550 m!58922))

(assert (=> bs!8550 m!58918))

(assert (=> bs!8550 m!57020))

(assert (=> bs!8550 m!57026))

(assert (=> d!15562 d!16046))

(assert (=> d!15562 d!15546))

(declare-fun d!16050 () Bool)

(declare-fun lt!19207 () BalanceConc!892)

(assert (=> d!16050 (= (list!510 lt!19207) (printList!21 thiss!19403 (list!509 (_1!964 lt!18678))))))

(assert (=> d!16050 (= lt!19207 (printTailRec!21 thiss!19403 (_1!964 lt!18678) 0 (BalanceConc!893 Empty!444)))))

(assert (=> d!16050 (= (print!52 thiss!19403 (_1!964 lt!18678)) lt!19207)))

(declare-fun bs!8551 () Bool)

(assert (= bs!8551 d!16050))

(declare-fun m!58924 () Bool)

(assert (=> bs!8551 m!58924))

(declare-fun m!58926 () Bool)

(assert (=> bs!8551 m!58926))

(assert (=> bs!8551 m!58926))

(declare-fun m!58928 () Bool)

(assert (=> bs!8551 m!58928))

(declare-fun m!58930 () Bool)

(assert (=> bs!8551 m!58930))

(assert (=> d!15562 d!16050))

(declare-fun d!16052 () Bool)

(assert (=> d!16052 (= (list!510 (_2!964 lt!18678)) (list!514 (c!20518 (_2!964 lt!18678))))))

(declare-fun bs!8552 () Bool)

(assert (= bs!8552 d!16052))

(declare-fun m!58932 () Bool)

(assert (=> bs!8552 m!58932))

(assert (=> d!15562 d!16052))

(declare-fun b!82200 () Bool)

(declare-fun res!42681 () Bool)

(declare-fun e!46154 () Bool)

(assert (=> b!82200 (=> (not res!42681) (not e!46154))))

(declare-fun lt!19208 () List!1472)

(assert (=> b!82200 (= res!42681 (= (size!1267 lt!19208) (+ (size!1267 (list!510 (print!52 thiss!19403 (_1!964 lt!18678)))) (size!1267 (list!510 (_2!964 lt!18678))))))))

(declare-fun b!82201 () Bool)

(assert (=> b!82201 (= e!46154 (or (not (= (list!510 (_2!964 lt!18678)) Nil!1466)) (= lt!19208 (list!510 (print!52 thiss!19403 (_1!964 lt!18678))))))))

(declare-fun b!82198 () Bool)

(declare-fun e!46153 () List!1472)

(assert (=> b!82198 (= e!46153 (list!510 (_2!964 lt!18678)))))

(declare-fun d!16054 () Bool)

(assert (=> d!16054 e!46154))

(declare-fun res!42682 () Bool)

(assert (=> d!16054 (=> (not res!42682) (not e!46154))))

(assert (=> d!16054 (= res!42682 (= (content!80 lt!19208) ((_ map or) (content!80 (list!510 (print!52 thiss!19403 (_1!964 lt!18678)))) (content!80 (list!510 (_2!964 lt!18678))))))))

(assert (=> d!16054 (= lt!19208 e!46153)))

(declare-fun c!20752 () Bool)

(assert (=> d!16054 (= c!20752 ((_ is Nil!1466) (list!510 (print!52 thiss!19403 (_1!964 lt!18678)))))))

(assert (=> d!16054 (= (++!158 (list!510 (print!52 thiss!19403 (_1!964 lt!18678))) (list!510 (_2!964 lt!18678))) lt!19208)))

(declare-fun b!82199 () Bool)

(assert (=> b!82199 (= e!46153 (Cons!1466 (h!6863 (list!510 (print!52 thiss!19403 (_1!964 lt!18678)))) (++!158 (t!20407 (list!510 (print!52 thiss!19403 (_1!964 lt!18678)))) (list!510 (_2!964 lt!18678)))))))

(assert (= (and d!16054 c!20752) b!82198))

(assert (= (and d!16054 (not c!20752)) b!82199))

(assert (= (and d!16054 res!42682) b!82200))

(assert (= (and b!82200 res!42681) b!82201))

(declare-fun m!58934 () Bool)

(assert (=> b!82200 m!58934))

(assert (=> b!82200 m!57374))

(declare-fun m!58936 () Bool)

(assert (=> b!82200 m!58936))

(assert (=> b!82200 m!57376))

(declare-fun m!58938 () Bool)

(assert (=> b!82200 m!58938))

(declare-fun m!58940 () Bool)

(assert (=> d!16054 m!58940))

(assert (=> d!16054 m!57374))

(declare-fun m!58942 () Bool)

(assert (=> d!16054 m!58942))

(assert (=> d!16054 m!57376))

(declare-fun m!58944 () Bool)

(assert (=> d!16054 m!58944))

(assert (=> b!82199 m!57376))

(declare-fun m!58946 () Bool)

(assert (=> b!82199 m!58946))

(assert (=> d!15562 d!16054))

(assert (=> d!15562 d!15596))

(assert (=> d!15562 d!15604))

(declare-fun d!16056 () Bool)

(assert (=> d!16056 (= (list!510 (_2!964 lt!18635)) (list!514 (c!20518 (_2!964 lt!18635))))))

(declare-fun bs!8553 () Bool)

(assert (= bs!8553 d!16056))

(declare-fun m!58948 () Bool)

(assert (=> bs!8553 m!58948))

(assert (=> b!81310 d!16056))

(assert (=> b!81310 d!15802))

(assert (=> b!81310 d!15804))

(declare-fun b!82204 () Bool)

(declare-fun res!42683 () Bool)

(declare-fun e!46156 () Bool)

(assert (=> b!82204 (=> (not res!42683) (not e!46156))))

(declare-fun lt!19209 () List!1472)

(assert (=> b!82204 (= res!42683 (= (size!1267 lt!19209) (+ (size!1267 (t!20407 (list!510 (print!52 thiss!19403 lt!18596)))) (size!1267 lt!18590))))))

(declare-fun b!82205 () Bool)

(assert (=> b!82205 (= e!46156 (or (not (= lt!18590 Nil!1466)) (= lt!19209 (t!20407 (list!510 (print!52 thiss!19403 lt!18596))))))))

(declare-fun b!82202 () Bool)

(declare-fun e!46155 () List!1472)

(assert (=> b!82202 (= e!46155 lt!18590)))

(declare-fun d!16058 () Bool)

(assert (=> d!16058 e!46156))

(declare-fun res!42684 () Bool)

(assert (=> d!16058 (=> (not res!42684) (not e!46156))))

(assert (=> d!16058 (= res!42684 (= (content!80 lt!19209) ((_ map or) (content!80 (t!20407 (list!510 (print!52 thiss!19403 lt!18596)))) (content!80 lt!18590))))))

(assert (=> d!16058 (= lt!19209 e!46155)))

(declare-fun c!20753 () Bool)

(assert (=> d!16058 (= c!20753 ((_ is Nil!1466) (t!20407 (list!510 (print!52 thiss!19403 lt!18596)))))))

(assert (=> d!16058 (= (++!158 (t!20407 (list!510 (print!52 thiss!19403 lt!18596))) lt!18590) lt!19209)))

(declare-fun b!82203 () Bool)

(assert (=> b!82203 (= e!46155 (Cons!1466 (h!6863 (t!20407 (list!510 (print!52 thiss!19403 lt!18596)))) (++!158 (t!20407 (t!20407 (list!510 (print!52 thiss!19403 lt!18596)))) lt!18590)))))

(assert (= (and d!16058 c!20753) b!82202))

(assert (= (and d!16058 (not c!20753)) b!82203))

(assert (= (and d!16058 res!42684) b!82204))

(assert (= (and b!82204 res!42683) b!82205))

(declare-fun m!58950 () Bool)

(assert (=> b!82204 m!58950))

(assert (=> b!82204 m!58284))

(assert (=> b!82204 m!57504))

(declare-fun m!58952 () Bool)

(assert (=> d!16058 m!58952))

(assert (=> d!16058 m!57602))

(assert (=> d!16058 m!57510))

(declare-fun m!58954 () Bool)

(assert (=> b!82203 m!58954))

(assert (=> b!81421 d!16058))

(declare-fun d!16060 () Bool)

(declare-fun lt!19210 () Int)

(assert (=> d!16060 (= lt!19210 (size!1267 (list!510 (_2!964 lt!18635))))))

(assert (=> d!16060 (= lt!19210 (size!1269 (c!20518 (_2!964 lt!18635))))))

(assert (=> d!16060 (= (size!1265 (_2!964 lt!18635)) lt!19210)))

(declare-fun bs!8554 () Bool)

(assert (= bs!8554 d!16060))

(assert (=> bs!8554 m!57230))

(assert (=> bs!8554 m!57230))

(declare-fun m!58956 () Bool)

(assert (=> bs!8554 m!58956))

(declare-fun m!58958 () Bool)

(assert (=> bs!8554 m!58958))

(assert (=> b!81308 d!16060))

(declare-fun d!16062 () Bool)

(declare-fun lt!19211 () Int)

(assert (=> d!16062 (= lt!19211 (size!1267 (list!510 (seqFromList!154 input!2238))))))

(assert (=> d!16062 (= lt!19211 (size!1269 (c!20518 (seqFromList!154 input!2238))))))

(assert (=> d!16062 (= (size!1265 (seqFromList!154 input!2238)) lt!19211)))

(declare-fun bs!8555 () Bool)

(assert (= bs!8555 d!16062))

(assert (=> bs!8555 m!57070))

(assert (=> bs!8555 m!57226))

(assert (=> bs!8555 m!57226))

(assert (=> bs!8555 m!58174))

(declare-fun m!58960 () Bool)

(assert (=> bs!8555 m!58960))

(assert (=> b!81308 d!16062))

(declare-fun d!16064 () Bool)

(assert (=> d!16064 (= (inv!1812 (tag!499 (h!6866 (t!20410 rules!2471)))) (= (mod (str.len (value!12043 (tag!499 (h!6866 (t!20410 rules!2471))))) 2) 0))))

(assert (=> b!81441 d!16064))

(declare-fun d!16066 () Bool)

(declare-fun res!42685 () Bool)

(declare-fun e!46157 () Bool)

(assert (=> d!16066 (=> (not res!42685) (not e!46157))))

(assert (=> d!16066 (= res!42685 (semiInverseModEq!61 (toChars!699 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toValue!840 (transformation!321 (h!6866 (t!20410 rules!2471))))))))

(assert (=> d!16066 (= (inv!1814 (transformation!321 (h!6866 (t!20410 rules!2471)))) e!46157)))

(declare-fun b!82206 () Bool)

(assert (=> b!82206 (= e!46157 (equivClasses!57 (toChars!699 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toValue!840 (transformation!321 (h!6866 (t!20410 rules!2471))))))))

(assert (= (and d!16066 res!42685) b!82206))

(declare-fun m!58962 () Bool)

(assert (=> d!16066 m!58962))

(declare-fun m!58964 () Bool)

(assert (=> b!82206 m!58964))

(assert (=> b!81441 d!16066))

(declare-fun d!16068 () Bool)

(declare-fun lt!19212 () Int)

(assert (=> d!16068 (>= lt!19212 0)))

(declare-fun e!46158 () Int)

(assert (=> d!16068 (= lt!19212 e!46158)))

(declare-fun c!20754 () Bool)

(assert (=> d!16068 (= c!20754 ((_ is Nil!1466) lt!18702))))

(assert (=> d!16068 (= (size!1267 lt!18702) lt!19212)))

(declare-fun b!82207 () Bool)

(assert (=> b!82207 (= e!46158 0)))

(declare-fun b!82208 () Bool)

(assert (=> b!82208 (= e!46158 (+ 1 (size!1267 (t!20407 lt!18702))))))

(assert (= (and d!16068 c!20754) b!82207))

(assert (= (and d!16068 (not c!20754)) b!82208))

(declare-fun m!58966 () Bool)

(assert (=> b!82208 m!58966))

(assert (=> b!81418 d!16068))

(assert (=> b!81418 d!15736))

(declare-fun d!16070 () Bool)

(declare-fun lt!19213 () Int)

(assert (=> d!16070 (>= lt!19213 0)))

(declare-fun e!46159 () Int)

(assert (=> d!16070 (= lt!19213 e!46159)))

(declare-fun c!20755 () Bool)

(assert (=> d!16070 (= c!20755 ((_ is Nil!1466) (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))

(assert (=> d!16070 (= (size!1267 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)) lt!19213)))

(declare-fun b!82209 () Bool)

(assert (=> b!82209 (= e!46159 0)))

(declare-fun b!82210 () Bool)

(assert (=> b!82210 (= e!46159 (+ 1 (size!1267 (t!20407 (++!158 (list!510 (print!52 thiss!19403 lt!18596)) lt!18590)))))))

(assert (= (and d!16070 c!20755) b!82209))

(assert (= (and d!16070 (not c!20755)) b!82210))

(declare-fun m!58968 () Bool)

(assert (=> b!82210 m!58968))

(assert (=> b!81418 d!16070))

(declare-fun d!16072 () Bool)

(declare-fun lt!19214 () Int)

(assert (=> d!16072 (= lt!19214 (size!1272 (list!509 (_1!964 lt!18688))))))

(assert (=> d!16072 (= lt!19214 (size!1273 (c!20520 (_1!964 lt!18688))))))

(assert (=> d!16072 (= (size!1266 (_1!964 lt!18688)) lt!19214)))

(declare-fun bs!8556 () Bool)

(assert (= bs!8556 d!16072))

(assert (=> bs!8556 m!57422))

(assert (=> bs!8556 m!57422))

(declare-fun m!58970 () Bool)

(assert (=> bs!8556 m!58970))

(declare-fun m!58972 () Bool)

(assert (=> bs!8556 m!58972))

(assert (=> d!15604 d!16072))

(declare-fun b!82211 () Bool)

(declare-fun e!46162 () tuple2!1514)

(assert (=> b!82211 (= e!46162 (tuple2!1515 (BalanceConc!895 Empty!445) (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun e!46163 () tuple2!1514)

(declare-fun lt!19215 () Option!132)

(declare-fun b!82212 () Bool)

(declare-fun lt!19246 () BalanceConc!892)

(assert (=> b!82212 (= e!46163 (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)) lt!19246 (_2!969 (v!12838 lt!19215)) (append!29 (BalanceConc!895 Empty!445) (_1!969 (v!12838 lt!19215)))))))

(declare-fun lt!19235 () tuple2!1514)

(assert (=> b!82212 (= lt!19235 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!19215))))))

(declare-fun lt!19242 () List!1472)

(assert (=> b!82212 (= lt!19242 (list!510 (BalanceConc!893 Empty!444)))))

(declare-fun lt!19228 () List!1472)

(assert (=> b!82212 (= lt!19228 (list!510 (charsOf!58 (_1!969 (v!12838 lt!19215)))))))

(declare-fun lt!19247 () List!1472)

(assert (=> b!82212 (= lt!19247 (list!510 (_2!969 (v!12838 lt!19215))))))

(declare-fun lt!19233 () Unit!914)

(assert (=> b!82212 (= lt!19233 (lemmaConcatAssociativity!50 lt!19242 lt!19228 lt!19247))))

(assert (=> b!82212 (= (++!158 (++!158 lt!19242 lt!19228) lt!19247) (++!158 lt!19242 (++!158 lt!19228 lt!19247)))))

(declare-fun lt!19238 () Unit!914)

(assert (=> b!82212 (= lt!19238 lt!19233)))

(declare-fun lt!19223 () Option!132)

(assert (=> b!82212 (= lt!19223 (maxPrefixZipperSequence!26 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun c!20757 () Bool)

(assert (=> b!82212 (= c!20757 ((_ is Some!131) lt!19223))))

(assert (=> b!82212 (= (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593))) e!46162)))

(declare-fun lt!19221 () Unit!914)

(declare-fun Unit!922 () Unit!914)

(assert (=> b!82212 (= lt!19221 Unit!922)))

(declare-fun lt!19219 () List!1474)

(assert (=> b!82212 (= lt!19219 (list!509 (BalanceConc!895 Empty!445)))))

(declare-fun lt!19240 () List!1474)

(assert (=> b!82212 (= lt!19240 (Cons!1468 (_1!969 (v!12838 lt!19215)) Nil!1468))))

(declare-fun lt!19230 () List!1474)

(assert (=> b!82212 (= lt!19230 (list!509 (_1!964 lt!19235)))))

(declare-fun lt!19229 () Unit!914)

(assert (=> b!82212 (= lt!19229 (lemmaConcatAssociativity!51 lt!19219 lt!19240 lt!19230))))

(assert (=> b!82212 (= (++!159 (++!159 lt!19219 lt!19240) lt!19230) (++!159 lt!19219 (++!159 lt!19240 lt!19230)))))

(declare-fun lt!19245 () Unit!914)

(assert (=> b!82212 (= lt!19245 lt!19229)))

(declare-fun lt!19241 () List!1472)

(assert (=> b!82212 (= lt!19241 (++!158 (list!510 (BalanceConc!893 Empty!444)) (list!510 (charsOf!58 (_1!969 (v!12838 lt!19215))))))))

(declare-fun lt!19217 () List!1472)

(assert (=> b!82212 (= lt!19217 (list!510 (_2!969 (v!12838 lt!19215))))))

(declare-fun lt!19224 () List!1474)

(assert (=> b!82212 (= lt!19224 (list!509 (append!29 (BalanceConc!895 Empty!445) (_1!969 (v!12838 lt!19215)))))))

(declare-fun lt!19227 () Unit!914)

(assert (=> b!82212 (= lt!19227 (lemmaLexThenLexPrefix!23 thiss!19403 rules!2471 lt!19241 lt!19217 lt!19224 (list!509 (_1!964 lt!19235)) (list!510 (_2!964 lt!19235))))))

(assert (=> b!82212 (= (lexList!49 thiss!19403 rules!2471 lt!19241) (tuple2!1519 lt!19224 Nil!1466))))

(declare-fun lt!19248 () Unit!914)

(assert (=> b!82212 (= lt!19248 lt!19227)))

(declare-fun lt!19234 () BalanceConc!892)

(assert (=> b!82212 (= lt!19234 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!19215)))))))

(declare-fun lt!19237 () Option!132)

(assert (=> b!82212 (= lt!19237 (maxPrefixZipperSequence!26 thiss!19403 rules!2471 lt!19234))))

(declare-fun c!20758 () Bool)

(assert (=> b!82212 (= c!20758 ((_ is Some!131) lt!19237))))

(declare-fun e!46161 () tuple2!1514)

(assert (=> b!82212 (= (lexRec!28 thiss!19403 rules!2471 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!19215))))) e!46161)))

(declare-fun lt!19239 () Unit!914)

(declare-fun Unit!923 () Unit!914)

(assert (=> b!82212 (= lt!19239 Unit!923)))

(assert (=> b!82212 (= lt!19246 (++!163 (BalanceConc!893 Empty!444) (charsOf!58 (_1!969 (v!12838 lt!19215)))))))

(declare-fun lt!19222 () List!1472)

(assert (=> b!82212 (= lt!19222 (list!510 lt!19246))))

(declare-fun lt!19232 () List!1472)

(assert (=> b!82212 (= lt!19232 (list!510 (_2!969 (v!12838 lt!19215))))))

(declare-fun lt!19236 () Unit!914)

(assert (=> b!82212 (= lt!19236 (lemmaConcatTwoListThenFSndIsSuffix!23 lt!19222 lt!19232))))

(assert (=> b!82212 (isSuffix!23 lt!19232 (++!158 lt!19222 lt!19232))))

(declare-fun lt!19220 () Unit!914)

(assert (=> b!82212 (= lt!19220 lt!19236)))

(declare-fun lt!19225 () tuple2!1514)

(declare-fun b!82213 () Bool)

(assert (=> b!82213 (= lt!19225 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!19237))))))

(assert (=> b!82213 (= e!46161 (tuple2!1515 (prepend!83 (_1!964 lt!19225) (_1!969 (v!12838 lt!19237))) (_2!964 lt!19225)))))

(declare-fun d!16074 () Bool)

(declare-fun e!46160 () Bool)

(assert (=> d!16074 e!46160))

(declare-fun res!42686 () Bool)

(assert (=> d!16074 (=> (not res!42686) (not e!46160))))

(declare-fun lt!19216 () tuple2!1514)

(assert (=> d!16074 (= res!42686 (= (list!509 (_1!964 lt!19216)) (list!509 (_1!964 (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)))))))))

(assert (=> d!16074 (= lt!19216 e!46163)))

(declare-fun c!20756 () Bool)

(assert (=> d!16074 (= c!20756 ((_ is Some!131) lt!19215))))

(assert (=> d!16074 (= lt!19215 (maxPrefixZipperSequenceV2!23 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)) (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun lt!19218 () Unit!914)

(declare-fun lt!19231 () Unit!914)

(assert (=> d!16074 (= lt!19218 lt!19231)))

(declare-fun lt!19243 () List!1472)

(declare-fun lt!19226 () List!1472)

(assert (=> d!16074 (isSuffix!23 lt!19243 (++!158 lt!19226 lt!19243))))

(assert (=> d!16074 (= lt!19231 (lemmaConcatTwoListThenFSndIsSuffix!23 lt!19226 lt!19243))))

(assert (=> d!16074 (= lt!19243 (list!510 (seqFromList!154 (_2!965 lt!18593))))))

(assert (=> d!16074 (= lt!19226 (list!510 (BalanceConc!893 Empty!444)))))

(assert (=> d!16074 (= (lexTailRecV2!46 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)) (BalanceConc!893 Empty!444) (seqFromList!154 (_2!965 lt!18593)) (BalanceConc!895 Empty!445)) lt!19216)))

(declare-fun b!82214 () Bool)

(assert (=> b!82214 (= e!46160 (= (list!510 (_2!964 lt!19216)) (list!510 (_2!964 (lexRec!28 thiss!19403 rules!2471 (seqFromList!154 (_2!965 lt!18593)))))))))

(declare-fun b!82215 () Bool)

(declare-fun lt!19244 () tuple2!1514)

(assert (=> b!82215 (= lt!19244 (lexRec!28 thiss!19403 rules!2471 (_2!969 (v!12838 lt!19223))))))

(assert (=> b!82215 (= e!46162 (tuple2!1515 (prepend!83 (_1!964 lt!19244) (_1!969 (v!12838 lt!19223))) (_2!964 lt!19244)))))

(declare-fun b!82216 () Bool)

(assert (=> b!82216 (= e!46163 (tuple2!1515 (BalanceConc!895 Empty!445) (seqFromList!154 (_2!965 lt!18593))))))

(declare-fun b!82217 () Bool)

(assert (=> b!82217 (= e!46161 (tuple2!1515 (BalanceConc!895 Empty!445) lt!19234))))

(assert (= (and d!16074 c!20756) b!82212))

(assert (= (and d!16074 (not c!20756)) b!82216))

(assert (= (and b!82212 c!20757) b!82215))

(assert (= (and b!82212 (not c!20757)) b!82211))

(assert (= (and b!82212 c!20758) b!82213))

(assert (= (and b!82212 (not c!20758)) b!82217))

(assert (= (and d!16074 res!42686) b!82214))

(declare-fun m!58974 () Bool)

(assert (=> b!82215 m!58974))

(declare-fun m!58976 () Bool)

(assert (=> b!82215 m!58976))

(declare-fun m!58978 () Bool)

(assert (=> b!82213 m!58978))

(declare-fun m!58980 () Bool)

(assert (=> b!82213 m!58980))

(declare-fun m!58982 () Bool)

(assert (=> d!16074 m!58982))

(declare-fun m!58984 () Bool)

(assert (=> d!16074 m!58984))

(declare-fun m!58986 () Bool)

(assert (=> d!16074 m!58986))

(declare-fun m!58988 () Bool)

(assert (=> d!16074 m!58988))

(assert (=> d!16074 m!58982))

(assert (=> d!16074 m!58096))

(assert (=> d!16074 m!57020))

(declare-fun m!58990 () Bool)

(assert (=> d!16074 m!58990))

(assert (=> d!16074 m!57020))

(assert (=> d!16074 m!57424))

(declare-fun m!58992 () Bool)

(assert (=> d!16074 m!58992))

(assert (=> d!16074 m!57020))

(assert (=> d!16074 m!57020))

(declare-fun m!58994 () Bool)

(assert (=> d!16074 m!58994))

(declare-fun m!58996 () Bool)

(assert (=> b!82214 m!58996))

(assert (=> b!82214 m!57020))

(assert (=> b!82214 m!58990))

(declare-fun m!58998 () Bool)

(assert (=> b!82214 m!58998))

(declare-fun m!59000 () Bool)

(assert (=> b!82212 m!59000))

(declare-fun m!59002 () Bool)

(assert (=> b!82212 m!59002))

(assert (=> b!82212 m!57020))

(declare-fun m!59004 () Bool)

(assert (=> b!82212 m!59004))

(declare-fun m!59006 () Bool)

(assert (=> b!82212 m!59006))

(declare-fun m!59008 () Bool)

(assert (=> b!82212 m!59008))

(declare-fun m!59010 () Bool)

(assert (=> b!82212 m!59010))

(assert (=> b!82212 m!58120))

(declare-fun m!59012 () Bool)

(assert (=> b!82212 m!59012))

(declare-fun m!59014 () Bool)

(assert (=> b!82212 m!59014))

(declare-fun m!59016 () Bool)

(assert (=> b!82212 m!59016))

(assert (=> b!82212 m!59008))

(declare-fun m!59018 () Bool)

(assert (=> b!82212 m!59018))

(declare-fun m!59020 () Bool)

(assert (=> b!82212 m!59020))

(assert (=> b!82212 m!59002))

(declare-fun m!59022 () Bool)

(assert (=> b!82212 m!59022))

(declare-fun m!59024 () Bool)

(assert (=> b!82212 m!59024))

(assert (=> b!82212 m!59004))

(declare-fun m!59026 () Bool)

(assert (=> b!82212 m!59026))

(declare-fun m!59028 () Bool)

(assert (=> b!82212 m!59028))

(assert (=> b!82212 m!59004))

(declare-fun m!59030 () Bool)

(assert (=> b!82212 m!59030))

(declare-fun m!59032 () Bool)

(assert (=> b!82212 m!59032))

(declare-fun m!59034 () Bool)

(assert (=> b!82212 m!59034))

(assert (=> b!82212 m!59032))

(assert (=> b!82212 m!59020))

(declare-fun m!59036 () Bool)

(assert (=> b!82212 m!59036))

(assert (=> b!82212 m!59014))

(assert (=> b!82212 m!58096))

(declare-fun m!59038 () Bool)

(assert (=> b!82212 m!59038))

(declare-fun m!59040 () Bool)

(assert (=> b!82212 m!59040))

(assert (=> b!82212 m!59012))

(declare-fun m!59042 () Bool)

(assert (=> b!82212 m!59042))

(assert (=> b!82212 m!58096))

(assert (=> b!82212 m!59034))

(declare-fun m!59044 () Bool)

(assert (=> b!82212 m!59044))

(declare-fun m!59046 () Bool)

(assert (=> b!82212 m!59046))

(declare-fun m!59048 () Bool)

(assert (=> b!82212 m!59048))

(declare-fun m!59050 () Bool)

(assert (=> b!82212 m!59050))

(assert (=> b!82212 m!57020))

(declare-fun m!59052 () Bool)

(assert (=> b!82212 m!59052))

(assert (=> b!82212 m!59028))

(declare-fun m!59054 () Bool)

(assert (=> b!82212 m!59054))

(declare-fun m!59056 () Bool)

(assert (=> b!82212 m!59056))

(assert (=> b!82212 m!57020))

(assert (=> b!82212 m!58990))

(assert (=> b!82212 m!59032))

(assert (=> b!82212 m!59038))

(declare-fun m!59058 () Bool)

(assert (=> b!82212 m!59058))

(assert (=> b!82212 m!59022))

(assert (=> d!15604 d!16074))

(declare-fun b!82221 () Bool)

(declare-fun e!46164 () Bool)

(declare-fun tp!50883 () Bool)

(declare-fun tp!50886 () Bool)

(assert (=> b!82221 (= e!46164 (and tp!50883 tp!50886))))

(declare-fun b!82219 () Bool)

(declare-fun tp!50884 () Bool)

(declare-fun tp!50887 () Bool)

(assert (=> b!82219 (= e!46164 (and tp!50884 tp!50887))))

(assert (=> b!81455 (= tp!50834 e!46164)))

(declare-fun b!82220 () Bool)

(declare-fun tp!50885 () Bool)

(assert (=> b!82220 (= e!46164 tp!50885)))

(declare-fun b!82218 () Bool)

(assert (=> b!82218 (= e!46164 tp_is_empty!701)))

(assert (= (and b!81455 ((_ is ElementMatch!389) (reg!718 (regex!321 (h!6866 rules!2471))))) b!82218))

(assert (= (and b!81455 ((_ is Concat!701) (reg!718 (regex!321 (h!6866 rules!2471))))) b!82219))

(assert (= (and b!81455 ((_ is Star!389) (reg!718 (regex!321 (h!6866 rules!2471))))) b!82220))

(assert (= (and b!81455 ((_ is Union!389) (reg!718 (regex!321 (h!6866 rules!2471))))) b!82221))

(declare-fun b!82222 () Bool)

(declare-fun e!46165 () Bool)

(declare-fun tp!50888 () Bool)

(assert (=> b!82222 (= e!46165 (and tp_is_empty!701 tp!50888))))

(assert (=> b!81431 (= tp!50809 e!46165)))

(assert (= (and b!81431 ((_ is Cons!1466) (t!20407 (t!20407 input!2238)))) b!82222))

(declare-fun b!82225 () Bool)

(declare-fun b_free!2657 () Bool)

(declare-fun b_next!2657 () Bool)

(assert (=> b!82225 (= b_free!2657 (not b_next!2657))))

(declare-fun tb!2529 () Bool)

(declare-fun t!20456 () Bool)

(assert (=> (and b!82225 (= (toValue!840 (transformation!321 (h!6866 (t!20410 (t!20410 rules!2471))))) (toValue!840 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20456) tb!2529))

(declare-fun result!3680 () Bool)

(assert (= result!3680 result!3656))

(assert (=> d!15726 t!20456))

(declare-fun b_and!3803 () Bool)

(declare-fun tp!50892 () Bool)

(assert (=> b!82225 (= tp!50892 (and (=> t!20456 result!3680) b_and!3803))))

(declare-fun b_free!2659 () Bool)

(declare-fun b_next!2659 () Bool)

(assert (=> b!82225 (= b_free!2659 (not b_next!2659))))

(declare-fun t!20458 () Bool)

(declare-fun tb!2531 () Bool)

(assert (=> (and b!82225 (= (toChars!699 (transformation!321 (h!6866 (t!20410 (t!20410 rules!2471))))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593))))) t!20458) tb!2531))

(declare-fun result!3682 () Bool)

(assert (= result!3682 result!3640))

(assert (=> d!15600 t!20458))

(declare-fun tb!2533 () Bool)

(declare-fun t!20460 () Bool)

(assert (=> (and b!82225 (= (toChars!699 (transformation!321 (h!6866 (t!20410 (t!20410 rules!2471))))) (toChars!699 (transformation!321 (rule!804 (_1!965 (get!370 lt!18655)))))) t!20460) tb!2533))

(declare-fun result!3684 () Bool)

(assert (= result!3684 result!3652))

(assert (=> d!15674 t!20460))

(declare-fun tp!50890 () Bool)

(declare-fun b_and!3805 () Bool)

(assert (=> b!82225 (= tp!50890 (and (=> t!20458 result!3682) (=> t!20460 result!3684) b_and!3805))))

(declare-fun e!46167 () Bool)

(assert (=> b!82225 (= e!46167 (and tp!50892 tp!50890))))

(declare-fun e!46168 () Bool)

(declare-fun tp!50889 () Bool)

(declare-fun b!82224 () Bool)

(assert (=> b!82224 (= e!46168 (and tp!50889 (inv!1812 (tag!499 (h!6866 (t!20410 (t!20410 rules!2471))))) (inv!1814 (transformation!321 (h!6866 (t!20410 (t!20410 rules!2471))))) e!46167))))

(declare-fun b!82223 () Bool)

(declare-fun e!46166 () Bool)

(declare-fun tp!50891 () Bool)

(assert (=> b!82223 (= e!46166 (and e!46168 tp!50891))))

(assert (=> b!81440 (= tp!50820 e!46166)))

(assert (= b!82224 b!82225))

(assert (= b!82223 b!82224))

(assert (= (and b!81440 ((_ is Cons!1469) (t!20410 (t!20410 rules!2471)))) b!82223))

(declare-fun m!59060 () Bool)

(assert (=> b!82224 m!59060))

(declare-fun m!59062 () Bool)

(assert (=> b!82224 m!59062))

(declare-fun b!82229 () Bool)

(declare-fun e!46170 () Bool)

(declare-fun tp!50893 () Bool)

(declare-fun tp!50896 () Bool)

(assert (=> b!82229 (= e!46170 (and tp!50893 tp!50896))))

(declare-fun b!82227 () Bool)

(declare-fun tp!50894 () Bool)

(declare-fun tp!50897 () Bool)

(assert (=> b!82227 (= e!46170 (and tp!50894 tp!50897))))

(assert (=> b!81456 (= tp!50832 e!46170)))

(declare-fun b!82228 () Bool)

(declare-fun tp!50895 () Bool)

(assert (=> b!82228 (= e!46170 tp!50895)))

(declare-fun b!82226 () Bool)

(assert (=> b!82226 (= e!46170 tp_is_empty!701)))

(assert (= (and b!81456 ((_ is ElementMatch!389) (regOne!1291 (regex!321 (h!6866 rules!2471))))) b!82226))

(assert (= (and b!81456 ((_ is Concat!701) (regOne!1291 (regex!321 (h!6866 rules!2471))))) b!82227))

(assert (= (and b!81456 ((_ is Star!389) (regOne!1291 (regex!321 (h!6866 rules!2471))))) b!82228))

(assert (= (and b!81456 ((_ is Union!389) (regOne!1291 (regex!321 (h!6866 rules!2471))))) b!82229))

(declare-fun b!82233 () Bool)

(declare-fun e!46171 () Bool)

(declare-fun tp!50898 () Bool)

(declare-fun tp!50901 () Bool)

(assert (=> b!82233 (= e!46171 (and tp!50898 tp!50901))))

(declare-fun b!82231 () Bool)

(declare-fun tp!50899 () Bool)

(declare-fun tp!50902 () Bool)

(assert (=> b!82231 (= e!46171 (and tp!50899 tp!50902))))

(assert (=> b!81456 (= tp!50835 e!46171)))

(declare-fun b!82232 () Bool)

(declare-fun tp!50900 () Bool)

(assert (=> b!82232 (= e!46171 tp!50900)))

(declare-fun b!82230 () Bool)

(assert (=> b!82230 (= e!46171 tp_is_empty!701)))

(assert (= (and b!81456 ((_ is ElementMatch!389) (regTwo!1291 (regex!321 (h!6866 rules!2471))))) b!82230))

(assert (= (and b!81456 ((_ is Concat!701) (regTwo!1291 (regex!321 (h!6866 rules!2471))))) b!82231))

(assert (= (and b!81456 ((_ is Star!389) (regTwo!1291 (regex!321 (h!6866 rules!2471))))) b!82232))

(assert (= (and b!81456 ((_ is Union!389) (regTwo!1291 (regex!321 (h!6866 rules!2471))))) b!82233))

(declare-fun b!82237 () Bool)

(declare-fun e!46172 () Bool)

(declare-fun tp!50903 () Bool)

(declare-fun tp!50906 () Bool)

(assert (=> b!82237 (= e!46172 (and tp!50903 tp!50906))))

(declare-fun b!82235 () Bool)

(declare-fun tp!50904 () Bool)

(declare-fun tp!50907 () Bool)

(assert (=> b!82235 (= e!46172 (and tp!50904 tp!50907))))

(assert (=> b!81441 (= tp!50818 e!46172)))

(declare-fun b!82236 () Bool)

(declare-fun tp!50905 () Bool)

(assert (=> b!82236 (= e!46172 tp!50905)))

(declare-fun b!82234 () Bool)

(assert (=> b!82234 (= e!46172 tp_is_empty!701)))

(assert (= (and b!81441 ((_ is ElementMatch!389) (regex!321 (h!6866 (t!20410 rules!2471))))) b!82234))

(assert (= (and b!81441 ((_ is Concat!701) (regex!321 (h!6866 (t!20410 rules!2471))))) b!82235))

(assert (= (and b!81441 ((_ is Star!389) (regex!321 (h!6866 (t!20410 rules!2471))))) b!82236))

(assert (= (and b!81441 ((_ is Union!389) (regex!321 (h!6866 (t!20410 rules!2471))))) b!82237))

(declare-fun e!46177 () Bool)

(declare-fun b!82246 () Bool)

(declare-fun tp!50914 () Bool)

(declare-fun tp!50915 () Bool)

(assert (=> b!82246 (= e!46177 (and (inv!1817 (left!1113 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))) tp!50915 (inv!1817 (right!1443 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))) tp!50914))))

(declare-fun b!82248 () Bool)

(declare-fun e!46178 () Bool)

(declare-fun tp!50916 () Bool)

(assert (=> b!82248 (= e!46178 tp!50916)))

(declare-fun b!82247 () Bool)

(declare-fun inv!1824 (IArray!889) Bool)

(assert (=> b!82247 (= e!46177 (and (inv!1824 (xs!3023 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))) e!46178))))

(assert (=> b!81394 (= tp!50806 (and (inv!1817 (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593))))) e!46177))))

(assert (= (and b!81394 ((_ is Node!444) (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))) b!82246))

(assert (= b!82247 b!82248))

(assert (= (and b!81394 ((_ is Leaf!740) (c!20518 (dynLambda!354 (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))) (value!12044 (_1!965 lt!18593)))))) b!82247))

(declare-fun m!59064 () Bool)

(assert (=> b!82246 m!59064))

(declare-fun m!59066 () Bool)

(assert (=> b!82246 m!59066))

(declare-fun m!59068 () Bool)

(assert (=> b!82247 m!59068))

(assert (=> b!81394 m!57412))

(declare-fun b!82252 () Bool)

(declare-fun e!46179 () Bool)

(declare-fun tp!50917 () Bool)

(declare-fun tp!50920 () Bool)

(assert (=> b!82252 (= e!46179 (and tp!50917 tp!50920))))

(declare-fun b!82250 () Bool)

(declare-fun tp!50918 () Bool)

(declare-fun tp!50921 () Bool)

(assert (=> b!82250 (= e!46179 (and tp!50918 tp!50921))))

(assert (=> b!81454 (= tp!50833 e!46179)))

(declare-fun b!82251 () Bool)

(declare-fun tp!50919 () Bool)

(assert (=> b!82251 (= e!46179 tp!50919)))

(declare-fun b!82249 () Bool)

(assert (=> b!82249 (= e!46179 tp_is_empty!701)))

(assert (= (and b!81454 ((_ is ElementMatch!389) (regOne!1290 (regex!321 (h!6866 rules!2471))))) b!82249))

(assert (= (and b!81454 ((_ is Concat!701) (regOne!1290 (regex!321 (h!6866 rules!2471))))) b!82250))

(assert (= (and b!81454 ((_ is Star!389) (regOne!1290 (regex!321 (h!6866 rules!2471))))) b!82251))

(assert (= (and b!81454 ((_ is Union!389) (regOne!1290 (regex!321 (h!6866 rules!2471))))) b!82252))

(declare-fun b!82256 () Bool)

(declare-fun e!46180 () Bool)

(declare-fun tp!50922 () Bool)

(declare-fun tp!50925 () Bool)

(assert (=> b!82256 (= e!46180 (and tp!50922 tp!50925))))

(declare-fun b!82254 () Bool)

(declare-fun tp!50923 () Bool)

(declare-fun tp!50926 () Bool)

(assert (=> b!82254 (= e!46180 (and tp!50923 tp!50926))))

(assert (=> b!81454 (= tp!50836 e!46180)))

(declare-fun b!82255 () Bool)

(declare-fun tp!50924 () Bool)

(assert (=> b!82255 (= e!46180 tp!50924)))

(declare-fun b!82253 () Bool)

(assert (=> b!82253 (= e!46180 tp_is_empty!701)))

(assert (= (and b!81454 ((_ is ElementMatch!389) (regTwo!1290 (regex!321 (h!6866 rules!2471))))) b!82253))

(assert (= (and b!81454 ((_ is Concat!701) (regTwo!1290 (regex!321 (h!6866 rules!2471))))) b!82254))

(assert (= (and b!81454 ((_ is Star!389) (regTwo!1290 (regex!321 (h!6866 rules!2471))))) b!82255))

(assert (= (and b!81454 ((_ is Union!389) (regTwo!1290 (regex!321 (h!6866 rules!2471))))) b!82256))

(declare-fun b_lambda!939 () Bool)

(assert (= b_lambda!927 (or (and b!81224 b_free!2643 (= (toChars!699 (transformation!321 (h!6866 rules!2471))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))))) (and b!81442 b_free!2651 (= (toChars!699 (transformation!321 (h!6866 (t!20410 rules!2471)))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))))) (and b!82225 b_free!2659 (= (toChars!699 (transformation!321 (h!6866 (t!20410 (t!20410 rules!2471))))) (toChars!699 (transformation!321 (rule!804 (_1!965 lt!18593)))))) b_lambda!939)))

(check-sat (not d!15804) (not d!15760) (not d!15744) (not b!82124) (not b!81649) b_and!3803 (not b!82126) (not b!81860) (not b!81650) (not b!81664) (not b!82127) (not b_next!2643) (not d!15976) (not d!15704) (not b!82248) (not b_lambda!929) (not b!82010) (not bm!3718) (not b!81948) (not d!15754) (not b!81667) (not d!16022) (not b!81850) (not b!81501) (not b!82254) (not d!15972) (not b!81610) (not d!15928) (not b!81916) (not d!16056) b_and!3787 (not d!16038) (not b!81806) (not d!16044) (not b!81642) (not b!82233) (not b!82203) (not d!15980) (not d!16050) (not b!81852) (not d!16052) (not tb!2511) (not d!15982) (not d!16020) (not b!82246) (not b!81853) (not d!15678) (not b!82224) (not d!15802) (not b!82256) (not b!81787) (not b!81665) (not b!81641) (not d!15674) (not d!15836) (not b!81517) (not b!81631) (not b!82222) (not b!82228) (not b!81499) (not b!81547) (not d!15682) b_and!3789 (not d!15724) (not b!81563) (not b!81645) (not b!81615) (not b!81885) (not b_next!2649) (not b!82212) (not d!16054) (not b!81829) (not d!16024) (not b!81521) (not b!81546) (not b!81644) (not d!16066) (not d!15978) (not b!81915) (not b!81668) (not b!82220) (not b!82150) (not b!81640) (not b!81849) (not b!82221) (not d!15670) (not d!15750) (not b!81884) (not b!82001) (not b!81927) (not d!15838) (not b!81617) (not b!81518) (not b!82129) (not b!82251) (not b!82229) (not b!81573) (not b!81503) (not d!16074) (not d!15732) (not b!81864) (not b!81789) (not b!82223) (not b!81830) (not d!15850) (not d!15688) (not b!82199) (not d!16060) (not d!15716) (not b!81636) (not d!15684) (not d!16072) (not b!82214) (not d!15746) (not b!81803) (not d!16058) (not b!81577) (not b!82132) (not b!82149) (not b!81564) (not b!82232) (not b!82255) (not b!81627) (not b!82003) (not b!81629) (not b!81790) (not d!15690) (not b!82005) (not b!82206) (not d!15672) (not d!15900) (not b!81578) (not b!81646) (not b!82158) (not d!15640) (not b!82200) (not d!15756) (not b!81613) (not b!82208) (not d!15660) (not d!16042) tp_is_empty!701 (not b!81928) (not b!82157) (not b!82204) (not b!82017) (not b!82053) (not b_next!2651) (not b!82051) (not d!15800) (not b!81609) (not d!15730) (not b!81663) (not b_next!2659) (not d!15894) (not b!81616) (not b!82247) (not b!81805) (not b_lambda!939) (not b!81648) (not tb!2507) (not d!15692) (not d!15916) (not d!15680) (not b!81788) (not b!82237) (not b!82154) (not b!82219) (not b!82147) (not d!16036) (not d!16032) (not b!81995) (not b!82140) (not b!82123) (not b!81571) (not b!82215) (not b!81818) (not b!82213) (not d!15728) (not b!82250) (not b!81822) (not b!82138) (not b!82227) (not b!81572) (not d!15758) b_and!3785 (not b!81999) (not b!81520) (not b_next!2641) (not b!81514) (not b_next!2657) (not b!81671) (not d!15990) (not bm!3719) (not b!82210) (not b!81666) (not b!81544) (not d!15806) (not b!82128) (not b!81394) (not b!82231) (not b!81997) (not b!82134) (not b!82007) (not d!15710) (not b!82130) (not b!82055) (not d!15722) (not b!81570) b_and!3805 (not b!82236) (not b!82125) (not d!15740) (not d!16062) (not b!82235) (not d!15720) (not b!81816) (not b!81914) (not b!81643) (not b!81866) b_and!3783 (not b!81515) (not b!82135) (not b!81820) (not d!16046) (not b_lambda!931) (not b!81637) (not b!82152) (not b!81862) (not b!82252) (not b!82011))
(check-sat b_and!3803 (not b_next!2643) b_and!3787 b_and!3789 (not b_next!2649) (not b_next!2651) (not b_next!2659) b_and!3785 b_and!3805 b_and!3783 (not b_next!2641) (not b_next!2657))
