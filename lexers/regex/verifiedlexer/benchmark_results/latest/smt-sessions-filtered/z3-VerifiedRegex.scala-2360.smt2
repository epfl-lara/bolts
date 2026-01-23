; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117918 () Bool)

(assert start!117918)

(declare-fun b!1326276 () Bool)

(declare-fun b_free!32019 () Bool)

(declare-fun b_next!32723 () Bool)

(assert (=> b!1326276 (= b_free!32019 (not b_next!32723))))

(declare-fun tp!384472 () Bool)

(declare-fun b_and!88591 () Bool)

(assert (=> b!1326276 (= tp!384472 b_and!88591)))

(declare-fun b_free!32021 () Bool)

(declare-fun b_next!32725 () Bool)

(assert (=> b!1326276 (= b_free!32021 (not b_next!32725))))

(declare-fun tp!384467 () Bool)

(declare-fun b_and!88593 () Bool)

(assert (=> b!1326276 (= tp!384467 b_and!88593)))

(declare-fun b!1326299 () Bool)

(declare-fun b_free!32023 () Bool)

(declare-fun b_next!32727 () Bool)

(assert (=> b!1326299 (= b_free!32023 (not b_next!32727))))

(declare-fun tp!384475 () Bool)

(declare-fun b_and!88595 () Bool)

(assert (=> b!1326299 (= tp!384475 b_and!88595)))

(declare-fun b_free!32025 () Bool)

(declare-fun b_next!32729 () Bool)

(assert (=> b!1326299 (= b_free!32025 (not b_next!32729))))

(declare-fun tp!384468 () Bool)

(declare-fun b_and!88597 () Bool)

(assert (=> b!1326299 (= tp!384468 b_and!88597)))

(declare-fun b!1326281 () Bool)

(declare-fun b_free!32027 () Bool)

(declare-fun b_next!32731 () Bool)

(assert (=> b!1326281 (= b_free!32027 (not b_next!32731))))

(declare-fun tp!384470 () Bool)

(declare-fun b_and!88599 () Bool)

(assert (=> b!1326281 (= tp!384470 b_and!88599)))

(declare-fun b_free!32029 () Bool)

(declare-fun b_next!32733 () Bool)

(assert (=> b!1326281 (= b_free!32029 (not b_next!32733))))

(declare-fun tp!384473 () Bool)

(declare-fun b_and!88601 () Bool)

(assert (=> b!1326281 (= tp!384473 b_and!88601)))

(declare-fun b!1326303 () Bool)

(assert (=> b!1326303 true))

(assert (=> b!1326303 true))

(declare-fun b!1326263 () Bool)

(assert (=> b!1326263 true))

(declare-fun b!1326266 () Bool)

(assert (=> b!1326266 true))

(declare-fun bs!331392 () Bool)

(declare-fun b!1326273 () Bool)

(assert (= bs!331392 (and b!1326273 b!1326266)))

(declare-fun lambda!54717 () Int)

(declare-fun lambda!54716 () Int)

(assert (=> bs!331392 (not (= lambda!54717 lambda!54716))))

(assert (=> b!1326273 true))

(declare-fun b!1326262 () Bool)

(declare-fun tp!384466 () Bool)

(declare-fun e!849765 () Bool)

(declare-fun e!849776 () Bool)

(declare-datatypes ((List!13522 0))(
  ( (Nil!13456) (Cons!13456 (h!18857 (_ BitVec 16)) (t!118823 List!13522)) )
))
(declare-datatypes ((TokenValue!2419 0))(
  ( (FloatLiteralValue!4838 (text!17378 List!13522)) (TokenValueExt!2418 (__x!8667 Int)) (Broken!12095 (value!75983 List!13522)) (Object!2484) (End!2419) (Def!2419) (Underscore!2419) (Match!2419) (Else!2419) (Error!2419) (Case!2419) (If!2419) (Extends!2419) (Abstract!2419) (Class!2419) (Val!2419) (DelimiterValue!4838 (del!2479 List!13522)) (KeywordValue!2425 (value!75984 List!13522)) (CommentValue!4838 (value!75985 List!13522)) (WhitespaceValue!4838 (value!75986 List!13522)) (IndentationValue!2419 (value!75987 List!13522)) (String!16330) (Int32!2419) (Broken!12096 (value!75988 List!13522)) (Boolean!2420) (Unit!19539) (OperatorValue!2422 (op!2479 List!13522)) (IdentifierValue!4838 (value!75989 List!13522)) (IdentifierValue!4839 (value!75990 List!13522)) (WhitespaceValue!4839 (value!75991 List!13522)) (True!4838) (False!4838) (Broken!12097 (value!75992 List!13522)) (Broken!12098 (value!75993 List!13522)) (True!4839) (RightBrace!2419) (RightBracket!2419) (Colon!2419) (Null!2419) (Comma!2419) (LeftBracket!2419) (False!4839) (LeftBrace!2419) (ImaginaryLiteralValue!2419 (text!17379 List!13522)) (StringLiteralValue!7257 (value!75994 List!13522)) (EOFValue!2419 (value!75995 List!13522)) (IdentValue!2419 (value!75996 List!13522)) (DelimiterValue!4839 (value!75997 List!13522)) (DedentValue!2419 (value!75998 List!13522)) (NewLineValue!2419 (value!75999 List!13522)) (IntegerValue!7257 (value!76000 (_ BitVec 32)) (text!17380 List!13522)) (IntegerValue!7258 (value!76001 Int) (text!17381 List!13522)) (Times!2419) (Or!2419) (Equal!2419) (Minus!2419) (Broken!12099 (value!76002 List!13522)) (And!2419) (Div!2419) (LessEqual!2419) (Mod!2419) (Concat!6062) (Not!2419) (Plus!2419) (SpaceValue!2419 (value!76003 List!13522)) (IntegerValue!7259 (value!76004 Int) (text!17382 List!13522)) (StringLiteralValue!7258 (text!17383 List!13522)) (FloatLiteralValue!4839 (text!17384 List!13522)) (BytesLiteralValue!2419 (value!76005 List!13522)) (CommentValue!4839 (value!76006 List!13522)) (StringLiteralValue!7259 (value!76007 List!13522)) (ErrorTokenValue!2419 (msg!2480 List!13522)) )
))
(declare-datatypes ((C!7576 0))(
  ( (C!7577 (val!4348 Int)) )
))
(declare-datatypes ((List!13523 0))(
  ( (Nil!13457) (Cons!13457 (h!18858 C!7576) (t!118824 List!13523)) )
))
(declare-datatypes ((IArray!8861 0))(
  ( (IArray!8862 (innerList!4488 List!13523)) )
))
(declare-datatypes ((Conc!4428 0))(
  ( (Node!4428 (left!11558 Conc!4428) (right!11888 Conc!4428) (csize!9086 Int) (cheight!4639 Int)) (Leaf!6789 (xs!7143 IArray!8861) (csize!9087 Int)) (Empty!4428) )
))
(declare-datatypes ((BalanceConc!8796 0))(
  ( (BalanceConc!8797 (c!217546 Conc!4428)) )
))
(declare-datatypes ((Regex!3643 0))(
  ( (ElementMatch!3643 (c!217547 C!7576)) (Concat!6063 (regOne!7798 Regex!3643) (regTwo!7798 Regex!3643)) (EmptyExpr!3643) (Star!3643 (reg!3972 Regex!3643)) (EmptyLang!3643) (Union!3643 (regOne!7799 Regex!3643) (regTwo!7799 Regex!3643)) )
))
(declare-datatypes ((String!16331 0))(
  ( (String!16332 (value!76008 String)) )
))
(declare-datatypes ((TokenValueInjection!4498 0))(
  ( (TokenValueInjection!4499 (toValue!3560 Int) (toChars!3419 Int)) )
))
(declare-datatypes ((Rule!4458 0))(
  ( (Rule!4459 (regex!2329 Regex!3643) (tag!2591 String!16331) (isSeparator!2329 Bool) (transformation!2329 TokenValueInjection!4498)) )
))
(declare-datatypes ((Token!4320 0))(
  ( (Token!4321 (value!76009 TokenValue!2419) (rule!4074 Rule!4458) (size!10964 Int) (originalCharacters!3191 List!13523)) )
))
(declare-fun t2!34 () Token!4320)

(declare-fun inv!17817 (String!16331) Bool)

(declare-fun inv!17820 (TokenValueInjection!4498) Bool)

(assert (=> b!1326262 (= e!849776 (and tp!384466 (inv!17817 (tag!2591 (rule!4074 t2!34))) (inv!17820 (transformation!2329 (rule!4074 t2!34))) e!849765))))

(declare-fun e!849764 () Bool)

(declare-fun e!849774 () Bool)

(assert (=> b!1326263 (= e!849764 e!849774)))

(declare-fun res!596892 () Bool)

(assert (=> b!1326263 (=> res!596892 e!849774)))

(declare-fun lambda!54715 () Int)

(declare-datatypes ((List!13524 0))(
  ( (Nil!13458) (Cons!13458 (h!18859 Rule!4458) (t!118825 List!13524)) )
))
(declare-fun rules!2550 () List!13524)

(declare-fun lambda!54714 () Int)

(declare-datatypes ((List!13525 0))(
  ( (Nil!13459) (Cons!13459 (h!18860 Regex!3643) (t!118826 List!13525)) )
))
(declare-fun exists!360 (List!13525 Int) Bool)

(declare-fun map!2960 (List!13524 Int) List!13525)

(assert (=> b!1326263 (= res!596892 (not (exists!360 (map!2960 rules!2550 lambda!54714) lambda!54715)))))

(declare-fun lt!438274 () List!13525)

(assert (=> b!1326263 (exists!360 lt!438274 lambda!54715)))

(declare-datatypes ((Unit!19540 0))(
  ( (Unit!19541) )
))
(declare-fun lt!438297 () Unit!19540)

(declare-fun lt!438302 () Regex!3643)

(declare-fun lt!438284 () List!13523)

(declare-fun matchRGenUnionSpec!80 (Regex!3643 List!13525 List!13523) Unit!19540)

(assert (=> b!1326263 (= lt!438297 (matchRGenUnionSpec!80 lt!438302 lt!438274 lt!438284))))

(assert (=> b!1326263 (= lt!438274 (map!2960 rules!2550 lambda!54714))))

(declare-fun b!1326264 () Bool)

(declare-fun res!596889 () Bool)

(declare-fun e!849783 () Bool)

(assert (=> b!1326264 (=> res!596889 e!849783)))

(declare-datatypes ((List!13526 0))(
  ( (Nil!13460) (Cons!13460 (h!18861 Token!4320) (t!118827 List!13526)) )
))
(declare-datatypes ((IArray!8863 0))(
  ( (IArray!8864 (innerList!4489 List!13526)) )
))
(declare-datatypes ((Conc!4429 0))(
  ( (Node!4429 (left!11559 Conc!4429) (right!11889 Conc!4429) (csize!9088 Int) (cheight!4640 Int)) (Leaf!6790 (xs!7144 IArray!8863) (csize!9089 Int)) (Empty!4429) )
))
(declare-datatypes ((BalanceConc!8798 0))(
  ( (BalanceConc!8799 (c!217548 Conc!4429)) )
))
(declare-datatypes ((tuple2!13094 0))(
  ( (tuple2!13095 (_1!7433 BalanceConc!8798) (_2!7433 BalanceConc!8796)) )
))
(declare-fun lt!438293 () tuple2!13094)

(declare-fun isEmpty!8014 (BalanceConc!8796) Bool)

(assert (=> b!1326264 (= res!596889 (not (isEmpty!8014 (_2!7433 lt!438293))))))

(declare-fun b!1326265 () Bool)

(declare-fun e!849775 () Bool)

(declare-fun e!849769 () Bool)

(assert (=> b!1326265 (= e!849775 e!849769)))

(declare-fun res!596886 () Bool)

(assert (=> b!1326265 (=> res!596886 e!849769)))

(declare-fun lt!438285 () Bool)

(assert (=> b!1326265 (= res!596886 lt!438285)))

(declare-fun lt!438292 () Unit!19540)

(declare-fun e!849770 () Unit!19540)

(assert (=> b!1326265 (= lt!438292 e!849770)))

(declare-fun c!217544 () Bool)

(assert (=> b!1326265 (= c!217544 lt!438285)))

(declare-fun t1!34 () Token!4320)

(declare-fun lt!438280 () C!7576)

(declare-fun contains!2403 (List!13523 C!7576) Bool)

(declare-fun usedCharacters!194 (Regex!3643) List!13523)

(assert (=> b!1326265 (= lt!438285 (not (contains!2403 (usedCharacters!194 (regex!2329 (rule!4074 t1!34))) lt!438280)))))

(declare-fun b!1326267 () Bool)

(declare-fun res!596879 () Bool)

(declare-fun e!849763 () Bool)

(assert (=> b!1326267 (=> (not res!596879) (not e!849763))))

(declare-fun isEmpty!8015 (List!13524) Bool)

(assert (=> b!1326267 (= res!596879 (not (isEmpty!8015 rules!2550)))))

(declare-fun e!849778 () Bool)

(declare-fun e!849760 () Bool)

(declare-fun b!1326268 () Bool)

(declare-fun tp!384476 () Bool)

(declare-fun inv!21 (TokenValue!2419) Bool)

(assert (=> b!1326268 (= e!849778 (and (inv!21 (value!76009 t1!34)) e!849760 tp!384476))))

(declare-fun b!1326269 () Bool)

(declare-fun res!596902 () Bool)

(declare-fun e!849782 () Bool)

(assert (=> b!1326269 (=> res!596902 e!849782)))

(declare-datatypes ((LexerInterface!2024 0))(
  ( (LexerInterfaceExt!2021 (__x!8668 Int)) (Lexer!2022) )
))
(declare-fun thiss!19762 () LexerInterface!2024)

(declare-fun lt!438282 () List!13523)

(declare-datatypes ((tuple2!13096 0))(
  ( (tuple2!13097 (_1!7434 Token!4320) (_2!7434 List!13523)) )
))
(declare-datatypes ((Option!2600 0))(
  ( (None!2599) (Some!2599 (v!21204 tuple2!13096)) )
))
(declare-fun maxPrefix!1034 (LexerInterface!2024 List!13524 List!13523) Option!2600)

(assert (=> b!1326269 (= res!596902 (not (= (maxPrefix!1034 thiss!19762 rules!2550 lt!438282) (Some!2599 (tuple2!13097 t1!34 Nil!13457)))))))

(declare-fun b!1326270 () Bool)

(declare-fun e!849766 () Bool)

(declare-fun e!849758 () Bool)

(declare-fun tp!384471 () Bool)

(assert (=> b!1326270 (= e!849766 (and e!849758 tp!384471))))

(declare-fun b!1326271 () Bool)

(declare-fun res!596888 () Bool)

(assert (=> b!1326271 (=> (not res!596888) (not e!849763))))

(assert (=> b!1326271 (= res!596888 (not (= (isSeparator!2329 (rule!4074 t1!34)) (isSeparator!2329 (rule!4074 t2!34)))))))

(declare-fun b!1326272 () Bool)

(declare-fun res!596904 () Bool)

(assert (=> b!1326272 (=> res!596904 e!849764)))

(assert (=> b!1326272 (= res!596904 (not (contains!2403 lt!438284 lt!438280)))))

(declare-fun e!849785 () Bool)

(assert (=> b!1326273 (= e!849785 e!849775)))

(declare-fun res!596908 () Bool)

(assert (=> b!1326273 (=> res!596908 e!849775)))

(declare-fun matchR!1645 (Regex!3643 List!13523) Bool)

(assert (=> b!1326273 (= res!596908 (not (matchR!1645 (regex!2329 (rule!4074 t1!34)) lt!438282)))))

(declare-fun lt!438273 () Unit!19540)

(declare-fun forallContained!580 (List!13524 Int Rule!4458) Unit!19540)

(assert (=> b!1326273 (= lt!438273 (forallContained!580 rules!2550 lambda!54717 (rule!4074 t2!34)))))

(declare-fun lt!438301 () Unit!19540)

(assert (=> b!1326273 (= lt!438301 (forallContained!580 rules!2550 lambda!54717 (rule!4074 t1!34)))))

(declare-fun lt!438299 () Rule!4458)

(declare-fun lt!438287 () Unit!19540)

(assert (=> b!1326273 (= lt!438287 (forallContained!580 rules!2550 lambda!54717 lt!438299))))

(declare-fun b!1326274 () Bool)

(declare-fun res!596877 () Bool)

(assert (=> b!1326274 (=> res!596877 e!849785)))

(declare-fun contains!2404 (List!13524 Rule!4458) Bool)

(assert (=> b!1326274 (= res!596877 (not (contains!2404 rules!2550 lt!438299)))))

(declare-fun b!1326275 () Bool)

(declare-fun e!849771 () Bool)

(assert (=> b!1326275 (= e!849769 e!849771)))

(declare-fun res!596907 () Bool)

(assert (=> b!1326275 (=> res!596907 e!849771)))

(declare-fun lt!438283 () Bool)

(assert (=> b!1326275 (= res!596907 lt!438283)))

(declare-fun lt!438279 () Unit!19540)

(declare-fun e!849759 () Unit!19540)

(assert (=> b!1326275 (= lt!438279 e!849759)))

(declare-fun c!217545 () Bool)

(assert (=> b!1326275 (= c!217545 lt!438283)))

(declare-fun lt!438290 () C!7576)

(assert (=> b!1326275 (= lt!438283 (not (contains!2403 (usedCharacters!194 (regex!2329 (rule!4074 t2!34))) lt!438290)))))

(assert (=> b!1326276 (= e!849765 (and tp!384472 tp!384467))))

(declare-fun b!1326277 () Bool)

(declare-fun e!849777 () Bool)

(assert (=> b!1326277 (= e!849777 e!849764)))

(declare-fun res!596898 () Bool)

(assert (=> b!1326277 (=> res!596898 e!849764)))

(declare-fun lt!438277 () List!13523)

(assert (=> b!1326277 (= res!596898 (not (contains!2403 lt!438277 lt!438280)))))

(declare-fun lt!438278 () BalanceConc!8796)

(declare-fun apply!3107 (BalanceConc!8796 Int) C!7576)

(assert (=> b!1326277 (= lt!438280 (apply!3107 lt!438278 0))))

(declare-fun b!1326278 () Bool)

(declare-fun Unit!19542 () Unit!19540)

(assert (=> b!1326278 (= e!849770 Unit!19542)))

(declare-fun lt!438296 () Unit!19540)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!140 (Regex!3643 List!13523 C!7576) Unit!19540)

(declare-fun head!2320 (List!13523) C!7576)

(assert (=> b!1326278 (= lt!438296 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!140 (regex!2329 (rule!4074 t1!34)) lt!438282 (head!2320 lt!438282)))))

(assert (=> b!1326278 false))

(declare-fun b!1326279 () Bool)

(assert (=> b!1326279 (= e!849783 e!849785)))

(declare-fun res!596891 () Bool)

(assert (=> b!1326279 (=> res!596891 e!849785)))

(declare-fun lt!438294 () List!13523)

(assert (=> b!1326279 (= res!596891 (not (= (maxPrefix!1034 thiss!19762 rules!2550 lt!438294) (Some!2599 (tuple2!13097 t2!34 Nil!13457)))))))

(declare-fun lt!438281 () BalanceConc!8796)

(declare-fun list!5094 (BalanceConc!8796) List!13523)

(assert (=> b!1326279 (= lt!438294 (list!5094 lt!438281))))

(declare-fun b!1326280 () Bool)

(declare-fun res!596896 () Bool)

(assert (=> b!1326280 (=> res!596896 e!849782)))

(declare-fun lt!438289 () tuple2!13094)

(assert (=> b!1326280 (= res!596896 (not (isEmpty!8014 (_2!7433 lt!438289))))))

(declare-fun e!849786 () Bool)

(assert (=> b!1326281 (= e!849786 (and tp!384470 tp!384473))))

(declare-fun b!1326282 () Bool)

(declare-fun e!849779 () Bool)

(assert (=> b!1326282 (= e!849779 e!849777)))

(declare-fun res!596893 () Bool)

(assert (=> b!1326282 (=> res!596893 e!849777)))

(declare-fun ++!3438 (List!13523 List!13523) List!13523)

(declare-fun getSuffix!499 (List!13523 List!13523) List!13523)

(assert (=> b!1326282 (= res!596893 (not (= lt!438284 (++!3438 lt!438277 (getSuffix!499 lt!438284 lt!438277)))))))

(declare-fun lambda!54713 () Int)

(declare-fun pickWitness!106 (Int) List!13523)

(assert (=> b!1326282 (= lt!438284 (pickWitness!106 lambda!54713))))

(declare-fun b!1326283 () Bool)

(declare-fun e!849781 () Bool)

(assert (=> b!1326283 (= e!849763 e!849781)))

(declare-fun res!596900 () Bool)

(assert (=> b!1326283 (=> (not res!596900) (not e!849781))))

(declare-fun lt!438275 () Int)

(assert (=> b!1326283 (= res!596900 (> lt!438275 0))))

(declare-fun size!10965 (BalanceConc!8796) Int)

(assert (=> b!1326283 (= lt!438275 (size!10965 lt!438281))))

(declare-fun charsOf!1301 (Token!4320) BalanceConc!8796)

(assert (=> b!1326283 (= lt!438281 (charsOf!1301 t2!34))))

(declare-fun b!1326284 () Bool)

(declare-fun Unit!19543 () Unit!19540)

(assert (=> b!1326284 (= e!849759 Unit!19543)))

(declare-fun lt!438295 () Unit!19540)

(assert (=> b!1326284 (= lt!438295 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!140 (regex!2329 (rule!4074 t2!34)) lt!438294 (head!2320 lt!438294)))))

(assert (=> b!1326284 false))

(declare-fun b!1326285 () Bool)

(declare-fun res!596911 () Bool)

(assert (=> b!1326285 (=> res!596911 e!849764)))

(assert (=> b!1326285 (= res!596911 (not (contains!2403 lt!438284 lt!438290)))))

(declare-fun b!1326286 () Bool)

(declare-fun res!596878 () Bool)

(assert (=> b!1326286 (=> res!596878 e!849783)))

(declare-fun lt!438272 () List!13526)

(declare-fun lt!438276 () BalanceConc!8796)

(declare-datatypes ((tuple2!13098 0))(
  ( (tuple2!13099 (_1!7435 List!13526) (_2!7435 List!13523)) )
))
(declare-fun lexList!562 (LexerInterface!2024 List!13524 List!13523) tuple2!13098)

(assert (=> b!1326286 (= res!596878 (not (= (lexList!562 thiss!19762 rules!2550 (list!5094 lt!438276)) (tuple2!13099 lt!438272 Nil!13457))))))

(declare-fun b!1326287 () Bool)

(declare-fun res!596910 () Bool)

(assert (=> b!1326287 (=> (not res!596910) (not e!849781))))

(declare-fun separableTokensPredicate!307 (LexerInterface!2024 Token!4320 Token!4320 List!13524) Bool)

(assert (=> b!1326287 (= res!596910 (not (separableTokensPredicate!307 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!596894 () Bool)

(assert (=> start!117918 (=> (not res!596894) (not e!849763))))

(get-info :version)

(assert (=> start!117918 (= res!596894 ((_ is Lexer!2022) thiss!19762))))

(assert (=> start!117918 e!849763))

(assert (=> start!117918 true))

(assert (=> start!117918 e!849766))

(declare-fun inv!17821 (Token!4320) Bool)

(assert (=> start!117918 (and (inv!17821 t1!34) e!849778)))

(declare-fun e!849780 () Bool)

(assert (=> start!117918 (and (inv!17821 t2!34) e!849780)))

(declare-fun e!849772 () Bool)

(declare-fun e!849773 () Bool)

(assert (=> b!1326266 (= e!849772 e!849773)))

(declare-fun res!596882 () Bool)

(assert (=> b!1326266 (=> res!596882 e!849773)))

(declare-fun exists!361 (List!13524 Int) Bool)

(assert (=> b!1326266 (= res!596882 (not (exists!361 rules!2550 lambda!54716)))))

(assert (=> b!1326266 (exists!361 rules!2550 lambda!54716)))

(declare-fun lt!438286 () Unit!19540)

(declare-fun lt!438288 () Regex!3643)

(declare-fun lemmaMapContains!72 (List!13524 Int Regex!3643) Unit!19540)

(assert (=> b!1326266 (= lt!438286 (lemmaMapContains!72 rules!2550 lambda!54714 lt!438288))))

(declare-fun tp!384474 () Bool)

(declare-fun b!1326288 () Bool)

(assert (=> b!1326288 (= e!849780 (and (inv!21 (value!76009 t2!34)) e!849776 tp!384474))))

(declare-fun b!1326289 () Bool)

(assert (=> b!1326289 (= e!849774 e!849772)))

(declare-fun res!596884 () Bool)

(assert (=> b!1326289 (=> res!596884 e!849772)))

(declare-fun contains!2405 (List!13525 Regex!3643) Bool)

(assert (=> b!1326289 (= res!596884 (not (contains!2405 (map!2960 rules!2550 lambda!54714) lt!438288)))))

(declare-fun getWitness!252 (List!13525 Int) Regex!3643)

(assert (=> b!1326289 (= lt!438288 (getWitness!252 (map!2960 rules!2550 lambda!54714) lambda!54715))))

(declare-fun b!1326290 () Bool)

(declare-fun res!596881 () Bool)

(assert (=> b!1326290 (=> (not res!596881) (not e!849763))))

(declare-fun rulesInvariant!1894 (LexerInterface!2024 List!13524) Bool)

(assert (=> b!1326290 (= res!596881 (rulesInvariant!1894 thiss!19762 rules!2550))))

(declare-fun b!1326291 () Bool)

(declare-fun Unit!19544 () Unit!19540)

(assert (=> b!1326291 (= e!849759 Unit!19544)))

(declare-fun b!1326292 () Bool)

(declare-fun res!596899 () Bool)

(assert (=> b!1326292 (=> res!596899 e!849785)))

(assert (=> b!1326292 (= res!596899 (not (contains!2404 rules!2550 (rule!4074 t2!34))))))

(declare-fun b!1326293 () Bool)

(assert (=> b!1326293 (= e!849782 e!849783)))

(declare-fun res!596901 () Bool)

(assert (=> b!1326293 (=> res!596901 e!849783)))

(declare-fun list!5095 (BalanceConc!8798) List!13526)

(assert (=> b!1326293 (= res!596901 (not (= (list!5095 (_1!7433 lt!438293)) lt!438272)))))

(assert (=> b!1326293 (= lt!438272 (Cons!13460 t2!34 Nil!13460))))

(declare-fun lex!859 (LexerInterface!2024 List!13524 BalanceConc!8796) tuple2!13094)

(assert (=> b!1326293 (= lt!438293 (lex!859 thiss!19762 rules!2550 lt!438276))))

(declare-fun print!798 (LexerInterface!2024 BalanceConc!8798) BalanceConc!8796)

(declare-fun singletonSeq!920 (Token!4320) BalanceConc!8798)

(assert (=> b!1326293 (= lt!438276 (print!798 thiss!19762 (singletonSeq!920 t2!34)))))

(declare-fun b!1326294 () Bool)

(declare-fun res!596909 () Bool)

(assert (=> b!1326294 (=> res!596909 e!849764)))

(assert (=> b!1326294 (= res!596909 (not (matchR!1645 lt!438302 lt!438284)))))

(declare-fun b!1326295 () Bool)

(declare-fun res!596906 () Bool)

(assert (=> b!1326295 (=> res!596906 e!849775)))

(assert (=> b!1326295 (= res!596906 (not (matchR!1645 (regex!2329 (rule!4074 t2!34)) lt!438294)))))

(declare-fun b!1326296 () Bool)

(declare-fun res!596895 () Bool)

(assert (=> b!1326296 (=> res!596895 e!849782)))

(assert (=> b!1326296 (= res!596895 (not (contains!2404 rules!2550 (rule!4074 t1!34))))))

(declare-fun tp!384469 () Bool)

(declare-fun b!1326297 () Bool)

(assert (=> b!1326297 (= e!849758 (and tp!384469 (inv!17817 (tag!2591 (h!18859 rules!2550))) (inv!17820 (transformation!2329 (h!18859 rules!2550))) e!849786))))

(declare-fun b!1326298 () Bool)

(declare-fun res!596903 () Bool)

(assert (=> b!1326298 (=> (not res!596903) (not e!849763))))

(declare-fun rulesProduceIndividualToken!993 (LexerInterface!2024 List!13524 Token!4320) Bool)

(assert (=> b!1326298 (= res!596903 (rulesProduceIndividualToken!993 thiss!19762 rules!2550 t2!34))))

(declare-fun e!849757 () Bool)

(assert (=> b!1326299 (= e!849757 (and tp!384475 tp!384468))))

(declare-fun b!1326300 () Bool)

(assert (=> b!1326300 (= e!849771 (or (not (isSeparator!2329 lt!438299)) (not (isSeparator!2329 (rule!4074 t1!34))) (< 0 lt!438275)))))

(assert (=> b!1326300 (= (regex!2329 lt!438299) lt!438288)))

(declare-fun b!1326301 () Bool)

(declare-fun Unit!19545 () Unit!19540)

(assert (=> b!1326301 (= e!849770 Unit!19545)))

(declare-fun b!1326302 () Bool)

(assert (=> b!1326302 (= e!849773 e!849782)))

(declare-fun res!596887 () Bool)

(assert (=> b!1326302 (=> res!596887 e!849782)))

(declare-fun lt!438298 () List!13526)

(assert (=> b!1326302 (= res!596887 (not (= (list!5095 (_1!7433 lt!438289)) lt!438298)))))

(assert (=> b!1326302 (= lt!438298 (Cons!13460 t1!34 Nil!13460))))

(declare-fun lt!438291 () BalanceConc!8796)

(assert (=> b!1326302 (= lt!438289 (lex!859 thiss!19762 rules!2550 lt!438291))))

(assert (=> b!1326302 (= lt!438291 (print!798 thiss!19762 (singletonSeq!920 t1!34)))))

(declare-fun getWitness!253 (List!13524 Int) Rule!4458)

(assert (=> b!1326302 (= lt!438299 (getWitness!253 rules!2550 lambda!54716))))

(declare-fun e!849762 () Bool)

(assert (=> b!1326303 (= e!849762 (not e!849779))))

(declare-fun res!596897 () Bool)

(assert (=> b!1326303 (=> res!596897 e!849779)))

(declare-fun Exists!801 (Int) Bool)

(assert (=> b!1326303 (= res!596897 (not (Exists!801 lambda!54713)))))

(assert (=> b!1326303 (Exists!801 lambda!54713)))

(declare-fun lt!438300 () Unit!19540)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!119 (Regex!3643 List!13523) Unit!19540)

(assert (=> b!1326303 (= lt!438300 (lemmaPrefixMatchThenExistsStringThatMatches!119 lt!438302 lt!438277))))

(declare-fun b!1326304 () Bool)

(declare-fun res!596885 () Bool)

(assert (=> b!1326304 (=> (not res!596885) (not e!849763))))

(assert (=> b!1326304 (= res!596885 (rulesProduceIndividualToken!993 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1326305 () Bool)

(declare-fun res!596890 () Bool)

(assert (=> b!1326305 (=> res!596890 e!849764)))

(assert (=> b!1326305 (= res!596890 (not (contains!2403 lt!438277 lt!438290)))))

(declare-fun tp!384465 () Bool)

(declare-fun b!1326306 () Bool)

(assert (=> b!1326306 (= e!849760 (and tp!384465 (inv!17817 (tag!2591 (rule!4074 t1!34))) (inv!17820 (transformation!2329 (rule!4074 t1!34))) e!849757))))

(declare-fun b!1326307 () Bool)

(declare-fun res!596880 () Bool)

(assert (=> b!1326307 (=> (not res!596880) (not e!849781))))

(declare-fun sepAndNonSepRulesDisjointChars!702 (List!13524 List!13524) Bool)

(assert (=> b!1326307 (= res!596880 (sepAndNonSepRulesDisjointChars!702 rules!2550 rules!2550))))

(declare-fun b!1326308 () Bool)

(declare-fun res!596883 () Bool)

(assert (=> b!1326308 (=> res!596883 e!849782)))

(assert (=> b!1326308 (= res!596883 (not (= (lexList!562 thiss!19762 rules!2550 (list!5094 lt!438291)) (tuple2!13099 lt!438298 Nil!13457))))))

(declare-fun b!1326309 () Bool)

(assert (=> b!1326309 (= e!849781 e!849762)))

(declare-fun res!596905 () Bool)

(assert (=> b!1326309 (=> (not res!596905) (not e!849762))))

(declare-fun prefixMatch!156 (Regex!3643 List!13523) Bool)

(assert (=> b!1326309 (= res!596905 (prefixMatch!156 lt!438302 lt!438277))))

(declare-fun rulesRegex!214 (LexerInterface!2024 List!13524) Regex!3643)

(assert (=> b!1326309 (= lt!438302 (rulesRegex!214 thiss!19762 rules!2550))))

(assert (=> b!1326309 (= lt!438277 (++!3438 lt!438282 (Cons!13457 lt!438290 Nil!13457)))))

(assert (=> b!1326309 (= lt!438290 (apply!3107 lt!438281 0))))

(assert (=> b!1326309 (= lt!438282 (list!5094 lt!438278))))

(assert (=> b!1326309 (= lt!438278 (charsOf!1301 t1!34))))

(assert (= (and start!117918 res!596894) b!1326267))

(assert (= (and b!1326267 res!596879) b!1326290))

(assert (= (and b!1326290 res!596881) b!1326304))

(assert (= (and b!1326304 res!596885) b!1326298))

(assert (= (and b!1326298 res!596903) b!1326271))

(assert (= (and b!1326271 res!596888) b!1326283))

(assert (= (and b!1326283 res!596900) b!1326307))

(assert (= (and b!1326307 res!596880) b!1326287))

(assert (= (and b!1326287 res!596910) b!1326309))

(assert (= (and b!1326309 res!596905) b!1326303))

(assert (= (and b!1326303 (not res!596897)) b!1326282))

(assert (= (and b!1326282 (not res!596893)) b!1326277))

(assert (= (and b!1326277 (not res!596898)) b!1326272))

(assert (= (and b!1326272 (not res!596904)) b!1326305))

(assert (= (and b!1326305 (not res!596890)) b!1326285))

(assert (= (and b!1326285 (not res!596911)) b!1326294))

(assert (= (and b!1326294 (not res!596909)) b!1326263))

(assert (= (and b!1326263 (not res!596892)) b!1326289))

(assert (= (and b!1326289 (not res!596884)) b!1326266))

(assert (= (and b!1326266 (not res!596882)) b!1326302))

(assert (= (and b!1326302 (not res!596887)) b!1326280))

(assert (= (and b!1326280 (not res!596896)) b!1326308))

(assert (= (and b!1326308 (not res!596883)) b!1326269))

(assert (= (and b!1326269 (not res!596902)) b!1326296))

(assert (= (and b!1326296 (not res!596895)) b!1326293))

(assert (= (and b!1326293 (not res!596901)) b!1326264))

(assert (= (and b!1326264 (not res!596889)) b!1326286))

(assert (= (and b!1326286 (not res!596878)) b!1326279))

(assert (= (and b!1326279 (not res!596891)) b!1326292))

(assert (= (and b!1326292 (not res!596899)) b!1326274))

(assert (= (and b!1326274 (not res!596877)) b!1326273))

(assert (= (and b!1326273 (not res!596908)) b!1326295))

(assert (= (and b!1326295 (not res!596906)) b!1326265))

(assert (= (and b!1326265 c!217544) b!1326278))

(assert (= (and b!1326265 (not c!217544)) b!1326301))

(assert (= (and b!1326265 (not res!596886)) b!1326275))

(assert (= (and b!1326275 c!217545) b!1326284))

(assert (= (and b!1326275 (not c!217545)) b!1326291))

(assert (= (and b!1326275 (not res!596907)) b!1326300))

(assert (= b!1326297 b!1326281))

(assert (= b!1326270 b!1326297))

(assert (= (and start!117918 ((_ is Cons!13458) rules!2550)) b!1326270))

(assert (= b!1326306 b!1326299))

(assert (= b!1326268 b!1326306))

(assert (= start!117918 b!1326268))

(assert (= b!1326262 b!1326276))

(assert (= b!1326288 b!1326262))

(assert (= start!117918 b!1326288))

(declare-fun m!1482865 () Bool)

(assert (=> b!1326290 m!1482865))

(declare-fun m!1482867 () Bool)

(assert (=> b!1326267 m!1482867))

(declare-fun m!1482869 () Bool)

(assert (=> b!1326265 m!1482869))

(assert (=> b!1326265 m!1482869))

(declare-fun m!1482871 () Bool)

(assert (=> b!1326265 m!1482871))

(declare-fun m!1482873 () Bool)

(assert (=> b!1326307 m!1482873))

(declare-fun m!1482875 () Bool)

(assert (=> b!1326293 m!1482875))

(declare-fun m!1482877 () Bool)

(assert (=> b!1326293 m!1482877))

(declare-fun m!1482879 () Bool)

(assert (=> b!1326293 m!1482879))

(assert (=> b!1326293 m!1482879))

(declare-fun m!1482881 () Bool)

(assert (=> b!1326293 m!1482881))

(declare-fun m!1482883 () Bool)

(assert (=> b!1326280 m!1482883))

(declare-fun m!1482885 () Bool)

(assert (=> b!1326284 m!1482885))

(assert (=> b!1326284 m!1482885))

(declare-fun m!1482887 () Bool)

(assert (=> b!1326284 m!1482887))

(declare-fun m!1482889 () Bool)

(assert (=> b!1326304 m!1482889))

(declare-fun m!1482891 () Bool)

(assert (=> b!1326275 m!1482891))

(assert (=> b!1326275 m!1482891))

(declare-fun m!1482893 () Bool)

(assert (=> b!1326275 m!1482893))

(declare-fun m!1482895 () Bool)

(assert (=> b!1326263 m!1482895))

(assert (=> b!1326263 m!1482895))

(declare-fun m!1482897 () Bool)

(assert (=> b!1326263 m!1482897))

(assert (=> b!1326263 m!1482895))

(declare-fun m!1482899 () Bool)

(assert (=> b!1326263 m!1482899))

(declare-fun m!1482901 () Bool)

(assert (=> b!1326263 m!1482901))

(declare-fun m!1482903 () Bool)

(assert (=> b!1326305 m!1482903))

(declare-fun m!1482905 () Bool)

(assert (=> b!1326295 m!1482905))

(declare-fun m!1482907 () Bool)

(assert (=> b!1326264 m!1482907))

(declare-fun m!1482909 () Bool)

(assert (=> start!117918 m!1482909))

(declare-fun m!1482911 () Bool)

(assert (=> start!117918 m!1482911))

(declare-fun m!1482913 () Bool)

(assert (=> b!1326272 m!1482913))

(declare-fun m!1482915 () Bool)

(assert (=> b!1326292 m!1482915))

(declare-fun m!1482917 () Bool)

(assert (=> b!1326306 m!1482917))

(declare-fun m!1482919 () Bool)

(assert (=> b!1326306 m!1482919))

(declare-fun m!1482921 () Bool)

(assert (=> b!1326287 m!1482921))

(declare-fun m!1482923 () Bool)

(assert (=> b!1326277 m!1482923))

(declare-fun m!1482925 () Bool)

(assert (=> b!1326277 m!1482925))

(declare-fun m!1482927 () Bool)

(assert (=> b!1326285 m!1482927))

(declare-fun m!1482929 () Bool)

(assert (=> b!1326294 m!1482929))

(declare-fun m!1482931 () Bool)

(assert (=> b!1326283 m!1482931))

(declare-fun m!1482933 () Bool)

(assert (=> b!1326283 m!1482933))

(declare-fun m!1482935 () Bool)

(assert (=> b!1326262 m!1482935))

(declare-fun m!1482937 () Bool)

(assert (=> b!1326262 m!1482937))

(declare-fun m!1482939 () Bool)

(assert (=> b!1326269 m!1482939))

(declare-fun m!1482941 () Bool)

(assert (=> b!1326266 m!1482941))

(assert (=> b!1326266 m!1482941))

(declare-fun m!1482943 () Bool)

(assert (=> b!1326266 m!1482943))

(declare-fun m!1482945 () Bool)

(assert (=> b!1326279 m!1482945))

(declare-fun m!1482947 () Bool)

(assert (=> b!1326279 m!1482947))

(declare-fun m!1482949 () Bool)

(assert (=> b!1326297 m!1482949))

(declare-fun m!1482951 () Bool)

(assert (=> b!1326297 m!1482951))

(declare-fun m!1482953 () Bool)

(assert (=> b!1326278 m!1482953))

(assert (=> b!1326278 m!1482953))

(declare-fun m!1482955 () Bool)

(assert (=> b!1326278 m!1482955))

(declare-fun m!1482957 () Bool)

(assert (=> b!1326273 m!1482957))

(declare-fun m!1482959 () Bool)

(assert (=> b!1326273 m!1482959))

(declare-fun m!1482961 () Bool)

(assert (=> b!1326273 m!1482961))

(declare-fun m!1482963 () Bool)

(assert (=> b!1326273 m!1482963))

(declare-fun m!1482965 () Bool)

(assert (=> b!1326282 m!1482965))

(assert (=> b!1326282 m!1482965))

(declare-fun m!1482967 () Bool)

(assert (=> b!1326282 m!1482967))

(declare-fun m!1482969 () Bool)

(assert (=> b!1326282 m!1482969))

(declare-fun m!1482971 () Bool)

(assert (=> b!1326308 m!1482971))

(assert (=> b!1326308 m!1482971))

(declare-fun m!1482973 () Bool)

(assert (=> b!1326308 m!1482973))

(declare-fun m!1482975 () Bool)

(assert (=> b!1326288 m!1482975))

(declare-fun m!1482977 () Bool)

(assert (=> b!1326303 m!1482977))

(assert (=> b!1326303 m!1482977))

(declare-fun m!1482979 () Bool)

(assert (=> b!1326303 m!1482979))

(declare-fun m!1482981 () Bool)

(assert (=> b!1326268 m!1482981))

(declare-fun m!1482983 () Bool)

(assert (=> b!1326286 m!1482983))

(assert (=> b!1326286 m!1482983))

(declare-fun m!1482985 () Bool)

(assert (=> b!1326286 m!1482985))

(declare-fun m!1482987 () Bool)

(assert (=> b!1326309 m!1482987))

(declare-fun m!1482989 () Bool)

(assert (=> b!1326309 m!1482989))

(declare-fun m!1482991 () Bool)

(assert (=> b!1326309 m!1482991))

(declare-fun m!1482993 () Bool)

(assert (=> b!1326309 m!1482993))

(declare-fun m!1482995 () Bool)

(assert (=> b!1326309 m!1482995))

(declare-fun m!1482997 () Bool)

(assert (=> b!1326309 m!1482997))

(declare-fun m!1482999 () Bool)

(assert (=> b!1326298 m!1482999))

(declare-fun m!1483001 () Bool)

(assert (=> b!1326302 m!1483001))

(declare-fun m!1483003 () Bool)

(assert (=> b!1326302 m!1483003))

(declare-fun m!1483005 () Bool)

(assert (=> b!1326302 m!1483005))

(assert (=> b!1326302 m!1483003))

(declare-fun m!1483007 () Bool)

(assert (=> b!1326302 m!1483007))

(declare-fun m!1483009 () Bool)

(assert (=> b!1326302 m!1483009))

(declare-fun m!1483011 () Bool)

(assert (=> b!1326274 m!1483011))

(declare-fun m!1483013 () Bool)

(assert (=> b!1326296 m!1483013))

(assert (=> b!1326289 m!1482895))

(assert (=> b!1326289 m!1482895))

(declare-fun m!1483015 () Bool)

(assert (=> b!1326289 m!1483015))

(assert (=> b!1326289 m!1482895))

(assert (=> b!1326289 m!1482895))

(declare-fun m!1483017 () Bool)

(assert (=> b!1326289 m!1483017))

(check-sat (not b!1326288) (not b!1326308) (not b!1326305) (not b!1326295) (not b!1326274) b_and!88593 (not b!1326285) (not b!1326282) (not b!1326279) (not b!1326292) b_and!88597 (not b!1326289) (not b_next!32723) (not b!1326263) (not b!1326265) (not b!1326266) b_and!88599 (not b_next!32731) (not b!1326303) (not b!1326297) (not b_next!32733) (not b!1326273) (not b!1326275) (not b!1326304) b_and!88595 (not b_next!32725) (not b!1326277) (not b!1326283) (not b!1326293) b_and!88601 (not b!1326262) (not b!1326307) (not b!1326309) (not b!1326306) (not b!1326296) (not b!1326287) (not b!1326280) (not b!1326269) (not b_next!32729) (not b!1326284) (not b!1326268) b_and!88591 (not b!1326278) (not b!1326267) (not b!1326298) (not b_next!32727) (not b!1326264) (not b!1326272) (not b!1326294) (not b!1326302) (not b!1326286) (not b!1326290) (not b!1326270) (not start!117918))
(check-sat b_and!88599 b_and!88593 b_and!88601 (not b_next!32729) b_and!88591 (not b_next!32727) (not b_next!32723) b_and!88597 (not b_next!32731) (not b_next!32733) b_and!88595 (not b_next!32725))
