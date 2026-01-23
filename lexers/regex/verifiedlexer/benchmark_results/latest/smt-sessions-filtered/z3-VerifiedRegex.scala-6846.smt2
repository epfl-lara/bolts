; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359788 () Bool)

(assert start!359788)

(declare-fun b!3842992 () Bool)

(declare-fun b_free!102657 () Bool)

(declare-fun b_next!103361 () Bool)

(assert (=> b!3842992 (= b_free!102657 (not b_next!103361))))

(declare-fun tp!1164464 () Bool)

(declare-fun b_and!286415 () Bool)

(assert (=> b!3842992 (= tp!1164464 b_and!286415)))

(declare-fun b_free!102659 () Bool)

(declare-fun b_next!103363 () Bool)

(assert (=> b!3842992 (= b_free!102659 (not b_next!103363))))

(declare-fun tp!1164468 () Bool)

(declare-fun b_and!286417 () Bool)

(assert (=> b!3842992 (= tp!1164468 b_and!286417)))

(declare-fun b!3843003 () Bool)

(declare-fun b_free!102661 () Bool)

(declare-fun b_next!103365 () Bool)

(assert (=> b!3843003 (= b_free!102661 (not b_next!103365))))

(declare-fun tp!1164460 () Bool)

(declare-fun b_and!286419 () Bool)

(assert (=> b!3843003 (= tp!1164460 b_and!286419)))

(declare-fun b_free!102663 () Bool)

(declare-fun b_next!103367 () Bool)

(assert (=> b!3843003 (= b_free!102663 (not b_next!103367))))

(declare-fun tp!1164455 () Bool)

(declare-fun b_and!286421 () Bool)

(assert (=> b!3843003 (= tp!1164455 b_and!286421)))

(declare-fun b!3842994 () Bool)

(declare-fun b_free!102665 () Bool)

(declare-fun b_next!103369 () Bool)

(assert (=> b!3842994 (= b_free!102665 (not b_next!103369))))

(declare-fun tp!1164465 () Bool)

(declare-fun b_and!286423 () Bool)

(assert (=> b!3842994 (= tp!1164465 b_and!286423)))

(declare-fun b_free!102667 () Bool)

(declare-fun b_next!103371 () Bool)

(assert (=> b!3842994 (= b_free!102667 (not b_next!103371))))

(declare-fun tp!1164454 () Bool)

(declare-fun b_and!286425 () Bool)

(assert (=> b!3842994 (= tp!1164454 b_and!286425)))

(declare-fun b!3842993 () Bool)

(declare-fun b_free!102669 () Bool)

(declare-fun b_next!103373 () Bool)

(assert (=> b!3842993 (= b_free!102669 (not b_next!103373))))

(declare-fun tp!1164473 () Bool)

(declare-fun b_and!286427 () Bool)

(assert (=> b!3842993 (= tp!1164473 b_and!286427)))

(declare-fun b_free!102671 () Bool)

(declare-fun b_next!103375 () Bool)

(assert (=> b!3842993 (= b_free!102671 (not b_next!103375))))

(declare-fun tp!1164467 () Bool)

(declare-fun b_and!286429 () Bool)

(assert (=> b!3842993 (= tp!1164467 b_and!286429)))

(declare-fun b!3842991 () Bool)

(declare-fun res!1555451 () Bool)

(declare-fun e!2374610 () Bool)

(assert (=> b!3842991 (=> (not res!1555451) (not e!2374610))))

(declare-datatypes ((C!22556 0))(
  ( (C!22557 (val!13372 Int)) )
))
(declare-datatypes ((List!40806 0))(
  ( (Nil!40682) (Cons!40682 (h!46102 C!22556) (t!310615 List!40806)) )
))
(declare-fun prefix!426 () List!40806)

(declare-fun isEmpty!24054 (List!40806) Bool)

(assert (=> b!3842991 (= res!1555451 (not (isEmpty!24054 prefix!426)))))

(declare-fun e!2374641 () Bool)

(assert (=> b!3842992 (= e!2374641 (and tp!1164464 tp!1164468))))

(declare-fun e!2374625 () Bool)

(assert (=> b!3842993 (= e!2374625 (and tp!1164473 tp!1164467))))

(declare-fun e!2374624 () Bool)

(assert (=> b!3842994 (= e!2374624 (and tp!1164465 tp!1164454))))

(declare-fun e!2374618 () Bool)

(declare-fun tp!1164456 () Bool)

(declare-datatypes ((List!40807 0))(
  ( (Nil!40683) (Cons!40683 (h!46103 (_ BitVec 16)) (t!310616 List!40807)) )
))
(declare-datatypes ((TokenValue!6510 0))(
  ( (FloatLiteralValue!13020 (text!46015 List!40807)) (TokenValueExt!6509 (__x!25237 Int)) (Broken!32550 (value!199588 List!40807)) (Object!6633) (End!6510) (Def!6510) (Underscore!6510) (Match!6510) (Else!6510) (Error!6510) (Case!6510) (If!6510) (Extends!6510) (Abstract!6510) (Class!6510) (Val!6510) (DelimiterValue!13020 (del!6570 List!40807)) (KeywordValue!6516 (value!199589 List!40807)) (CommentValue!13020 (value!199590 List!40807)) (WhitespaceValue!13020 (value!199591 List!40807)) (IndentationValue!6510 (value!199592 List!40807)) (String!46267) (Int32!6510) (Broken!32551 (value!199593 List!40807)) (Boolean!6511) (Unit!58377) (OperatorValue!6513 (op!6570 List!40807)) (IdentifierValue!13020 (value!199594 List!40807)) (IdentifierValue!13021 (value!199595 List!40807)) (WhitespaceValue!13021 (value!199596 List!40807)) (True!13020) (False!13020) (Broken!32552 (value!199597 List!40807)) (Broken!32553 (value!199598 List!40807)) (True!13021) (RightBrace!6510) (RightBracket!6510) (Colon!6510) (Null!6510) (Comma!6510) (LeftBracket!6510) (False!13021) (LeftBrace!6510) (ImaginaryLiteralValue!6510 (text!46016 List!40807)) (StringLiteralValue!19530 (value!199599 List!40807)) (EOFValue!6510 (value!199600 List!40807)) (IdentValue!6510 (value!199601 List!40807)) (DelimiterValue!13021 (value!199602 List!40807)) (DedentValue!6510 (value!199603 List!40807)) (NewLineValue!6510 (value!199604 List!40807)) (IntegerValue!19530 (value!199605 (_ BitVec 32)) (text!46017 List!40807)) (IntegerValue!19531 (value!199606 Int) (text!46018 List!40807)) (Times!6510) (Or!6510) (Equal!6510) (Minus!6510) (Broken!32554 (value!199607 List!40807)) (And!6510) (Div!6510) (LessEqual!6510) (Mod!6510) (Concat!17695) (Not!6510) (Plus!6510) (SpaceValue!6510 (value!199608 List!40807)) (IntegerValue!19532 (value!199609 Int) (text!46019 List!40807)) (StringLiteralValue!19531 (text!46020 List!40807)) (FloatLiteralValue!13021 (text!46021 List!40807)) (BytesLiteralValue!6510 (value!199610 List!40807)) (CommentValue!13021 (value!199611 List!40807)) (StringLiteralValue!19532 (value!199612 List!40807)) (ErrorTokenValue!6510 (msg!6571 List!40807)) )
))
(declare-datatypes ((Regex!11185 0))(
  ( (ElementMatch!11185 (c!669630 C!22556)) (Concat!17696 (regOne!22882 Regex!11185) (regTwo!22882 Regex!11185)) (EmptyExpr!11185) (Star!11185 (reg!11514 Regex!11185)) (EmptyLang!11185) (Union!11185 (regOne!22883 Regex!11185) (regTwo!22883 Regex!11185)) )
))
(declare-datatypes ((String!46268 0))(
  ( (String!46269 (value!199613 String)) )
))
(declare-datatypes ((IArray!24987 0))(
  ( (IArray!24988 (innerList!12551 List!40806)) )
))
(declare-datatypes ((Conc!12491 0))(
  ( (Node!12491 (left!31409 Conc!12491) (right!31739 Conc!12491) (csize!25212 Int) (cheight!12702 Int)) (Leaf!19338 (xs!15797 IArray!24987) (csize!25213 Int)) (Empty!12491) )
))
(declare-datatypes ((BalanceConc!24576 0))(
  ( (BalanceConc!24577 (c!669631 Conc!12491)) )
))
(declare-datatypes ((TokenValueInjection!12448 0))(
  ( (TokenValueInjection!12449 (toValue!8696 Int) (toChars!8555 Int)) )
))
(declare-datatypes ((Rule!12360 0))(
  ( (Rule!12361 (regex!6280 Regex!11185) (tag!7140 String!46268) (isSeparator!6280 Bool) (transformation!6280 TokenValueInjection!12448)) )
))
(declare-datatypes ((Token!11698 0))(
  ( (Token!11699 (value!199614 TokenValue!6510) (rule!9120 Rule!12360) (size!30611 Int) (originalCharacters!6880 List!40806)) )
))
(declare-datatypes ((List!40808 0))(
  ( (Nil!40684) (Cons!40684 (h!46104 Token!11698) (t!310617 List!40808)) )
))
(declare-fun prefixTokens!80 () List!40808)

(declare-fun b!3842995 () Bool)

(declare-fun e!2374626 () Bool)

(declare-fun inv!54827 (Token!11698) Bool)

(assert (=> b!3842995 (= e!2374618 (and (inv!54827 (h!46104 prefixTokens!80)) e!2374626 tp!1164456))))

(declare-fun b!3842996 () Bool)

(declare-fun e!2374628 () Bool)

(declare-fun tp!1164474 () Bool)

(declare-fun inv!21 (TokenValue!6510) Bool)

(assert (=> b!3842996 (= e!2374626 (and (inv!21 (value!199614 (h!46104 prefixTokens!80))) e!2374628 tp!1164474))))

(declare-fun tp!1164458 () Bool)

(declare-fun e!2374630 () Bool)

(declare-fun b!3842997 () Bool)

(declare-fun suffixTokens!72 () List!40808)

(declare-fun inv!54824 (String!46268) Bool)

(declare-fun inv!54828 (TokenValueInjection!12448) Bool)

(assert (=> b!3842997 (= e!2374630 (and tp!1164458 (inv!54824 (tag!7140 (rule!9120 (h!46104 suffixTokens!72)))) (inv!54828 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) e!2374624))))

(declare-fun e!2374616 () Bool)

(declare-fun e!2374620 () Bool)

(declare-datatypes ((List!40809 0))(
  ( (Nil!40685) (Cons!40685 (h!46105 Rule!12360) (t!310618 List!40809)) )
))
(declare-fun rules!2768 () List!40809)

(declare-fun b!3842998 () Bool)

(declare-fun tp!1164459 () Bool)

(assert (=> b!3842998 (= e!2374620 (and tp!1164459 (inv!54824 (tag!7140 (h!46105 rules!2768))) (inv!54828 (transformation!6280 (h!46105 rules!2768))) e!2374616))))

(declare-fun res!1555439 () Bool)

(assert (=> start!359788 (=> (not res!1555439) (not e!2374610))))

(declare-datatypes ((LexerInterface!5869 0))(
  ( (LexerInterfaceExt!5866 (__x!25238 Int)) (Lexer!5867) )
))
(declare-fun thiss!20629 () LexerInterface!5869)

(get-info :version)

(assert (=> start!359788 (= res!1555439 ((_ is Lexer!5867) thiss!20629))))

(assert (=> start!359788 e!2374610))

(declare-fun e!2374611 () Bool)

(assert (=> start!359788 e!2374611))

(assert (=> start!359788 true))

(declare-fun e!2374617 () Bool)

(assert (=> start!359788 e!2374617))

(declare-fun e!2374623 () Bool)

(assert (=> start!359788 e!2374623))

(assert (=> start!359788 e!2374618))

(declare-fun e!2374636 () Bool)

(assert (=> start!359788 e!2374636))

(declare-fun e!2374619 () Bool)

(assert (=> start!359788 e!2374619))

(declare-fun b!3842999 () Bool)

(declare-datatypes ((tuple2!39858 0))(
  ( (tuple2!39859 (_1!23063 Token!11698) (_2!23063 List!40806)) )
))
(declare-datatypes ((Option!8698 0))(
  ( (None!8697) (Some!8697 (v!38989 tuple2!39858)) )
))
(declare-fun e!2374612 () Option!8698)

(declare-fun e!2374615 () Option!8698)

(assert (=> b!3842999 (= e!2374612 e!2374615)))

(declare-fun c!669628 () Bool)

(assert (=> b!3842999 (= c!669628 ((_ is Cons!40685) rules!2768))))

(declare-fun b!3843000 () Bool)

(declare-fun res!1555454 () Bool)

(declare-fun e!2374633 () Bool)

(assert (=> b!3843000 (=> res!1555454 e!2374633)))

(declare-fun suffix!1176 () List!40806)

(declare-fun isPrefix!3379 (List!40806 List!40806) Bool)

(assert (=> b!3843000 (= res!1555454 (not (isPrefix!3379 Nil!40682 suffix!1176)))))

(declare-fun b!3843001 () Bool)

(declare-fun e!2374622 () Bool)

(declare-fun lt!1334083 () Option!8698)

(declare-fun size!30612 (List!40806) Int)

(assert (=> b!3843001 (= e!2374622 (= (size!30611 (_1!23063 (v!38989 lt!1334083))) (size!30612 (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083))))))))

(declare-fun b!3843002 () Bool)

(declare-fun res!1555449 () Bool)

(assert (=> b!3843002 (=> (not res!1555449) (not e!2374610))))

(declare-fun rulesInvariant!5212 (LexerInterface!5869 List!40809) Bool)

(assert (=> b!3843002 (= res!1555449 (rulesInvariant!5212 thiss!20629 rules!2768))))

(assert (=> b!3843003 (= e!2374616 (and tp!1164460 tp!1164455))))

(declare-fun b!3843004 () Bool)

(declare-fun lt!1334082 () List!40806)

(declare-fun lt!1334077 () Option!8698)

(declare-fun maxPrefix!3173 (LexerInterface!5869 List!40809 List!40806) Option!8698)

(assert (=> b!3843004 (= lt!1334077 (maxPrefix!3173 thiss!20629 (t!310618 rules!2768) lt!1334082))))

(declare-fun lt!1334087 () Option!8698)

(declare-fun call!282000 () Option!8698)

(assert (=> b!3843004 (= lt!1334087 call!282000)))

(assert (=> b!3843004 (= e!2374615 (ite (and ((_ is None!8697) lt!1334087) ((_ is None!8697) lt!1334077)) None!8697 (ite ((_ is None!8697) lt!1334077) lt!1334087 (ite ((_ is None!8697) lt!1334087) lt!1334077 (ite (>= (size!30611 (_1!23063 (v!38989 lt!1334087))) (size!30611 (_1!23063 (v!38989 lt!1334077)))) (Some!8697 (v!38989 lt!1334087)) lt!1334077)))))))

(declare-fun b!3843005 () Bool)

(declare-fun tp_is_empty!19341 () Bool)

(declare-fun tp!1164457 () Bool)

(assert (=> b!3843005 (= e!2374611 (and tp_is_empty!19341 tp!1164457))))

(declare-fun b!3843006 () Bool)

(declare-fun res!1555441 () Bool)

(assert (=> b!3843006 (=> (not res!1555441) (not e!2374610))))

(declare-fun isEmpty!24055 (List!40808) Bool)

(assert (=> b!3843006 (= res!1555441 (not (isEmpty!24055 prefixTokens!80)))))

(declare-fun b!3843007 () Bool)

(declare-fun e!2374621 () Bool)

(declare-fun e!2374638 () Bool)

(assert (=> b!3843007 (= e!2374621 e!2374638)))

(declare-fun res!1555446 () Bool)

(assert (=> b!3843007 (=> res!1555446 e!2374638)))

(assert (=> b!3843007 (= res!1555446 (not (= lt!1334083 (Some!8697 (tuple2!39859 (_1!23063 (v!38989 lt!1334083)) (_2!23063 (v!38989 lt!1334083)))))))))

(declare-fun e!2374609 () Bool)

(assert (=> b!3843007 e!2374609))

(declare-fun res!1555440 () Bool)

(assert (=> b!3843007 (=> (not res!1555440) (not e!2374609))))

(assert (=> b!3843007 (= res!1555440 (isPrefix!3379 lt!1334082 lt!1334082))))

(declare-datatypes ((Unit!58378 0))(
  ( (Unit!58379) )
))
(declare-fun lt!1334085 () Unit!58378)

(declare-fun lemmaIsPrefixRefl!2152 (List!40806 List!40806) Unit!58378)

(assert (=> b!3843007 (= lt!1334085 (lemmaIsPrefixRefl!2152 lt!1334082 lt!1334082))))

(declare-datatypes ((tuple2!39860 0))(
  ( (tuple2!39861 (_1!23064 List!40808) (_2!23064 List!40806)) )
))
(declare-fun lt!1334091 () tuple2!39860)

(declare-fun lt!1334093 () tuple2!39860)

(assert (=> b!3843007 (= lt!1334091 (tuple2!39861 (Cons!40684 (_1!23063 (v!38989 lt!1334083)) (_1!23064 lt!1334093)) (_2!23064 lt!1334093)))))

(declare-fun b!3843008 () Bool)

(declare-fun e!2374614 () Bool)

(assert (=> b!3843008 (= e!2374633 e!2374614)))

(declare-fun res!1555447 () Bool)

(assert (=> b!3843008 (=> res!1555447 e!2374614)))

(declare-fun isDefined!6829 (Option!8698) Bool)

(assert (=> b!3843008 (= res!1555447 (not (isDefined!6829 (maxPrefix!3173 thiss!20629 rules!2768 prefix!426))))))

(declare-fun ++!10317 (List!40806 List!40806) List!40806)

(assert (=> b!3843008 (= (maxPrefix!3173 thiss!20629 rules!2768 (++!10317 prefix!426 Nil!40682)) (Some!8697 (tuple2!39859 (_1!23063 (v!38989 lt!1334083)) Nil!40682)))))

(declare-fun lt!1334092 () Unit!58378)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!10 (LexerInterface!5869 List!40809 List!40806 List!40806 List!40806 Token!11698 List!40806 List!40806) Unit!58378)

(assert (=> b!3843008 (= lt!1334092 (lemmaMaxPrefixThenWithShorterSuffix!10 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40682 (_1!23063 (v!38989 lt!1334083)) suffix!1176 Nil!40682))))

(declare-fun b!3843009 () Bool)

(declare-fun res!1555442 () Bool)

(declare-fun e!2374607 () Bool)

(assert (=> b!3843009 (=> (not res!1555442) (not e!2374607))))

(declare-fun suffixResult!91 () List!40806)

(declare-fun lexList!1637 (LexerInterface!5869 List!40809 List!40806) tuple2!39860)

(assert (=> b!3843009 (= res!1555442 (= (lexList!1637 thiss!20629 rules!2768 suffix!1176) (tuple2!39861 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3843010 () Bool)

(declare-fun res!1555452 () Bool)

(assert (=> b!3843010 (=> (not res!1555452) (not e!2374610))))

(declare-fun isEmpty!24056 (List!40809) Bool)

(assert (=> b!3843010 (= res!1555452 (not (isEmpty!24056 rules!2768)))))

(declare-fun err!4273 () Option!8698)

(declare-fun b!3843011 () Bool)

(declare-fun e!2374635 () Bool)

(declare-fun e!2374627 () Bool)

(declare-fun tp!1164471 () Bool)

(assert (=> b!3843011 (= e!2374635 (and (inv!21 (value!199614 (_1!23063 (v!38989 err!4273)))) e!2374627 tp!1164471))))

(declare-fun e!2374634 () Bool)

(declare-fun tp!1164472 () Bool)

(declare-fun b!3843012 () Bool)

(assert (=> b!3843012 (= e!2374636 (and (inv!54827 (h!46104 suffixTokens!72)) e!2374634 tp!1164472))))

(declare-fun b!3843013 () Bool)

(declare-fun tp!1164470 () Bool)

(assert (=> b!3843013 (= e!2374623 (and e!2374620 tp!1164470))))

(declare-fun b!3843014 () Bool)

(declare-fun e!2374606 () Bool)

(declare-fun e!2374608 () Bool)

(assert (=> b!3843014 (= e!2374606 (not e!2374608))))

(declare-fun res!1555443 () Bool)

(assert (=> b!3843014 (=> res!1555443 e!2374608)))

(declare-fun lt!1334079 () List!40806)

(assert (=> b!3843014 (= res!1555443 (not (= lt!1334079 lt!1334082)))))

(assert (=> b!3843014 (= lt!1334093 (lexList!1637 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334083))))))

(declare-fun lt!1334080 () List!40806)

(declare-fun lt!1334084 () List!40806)

(declare-fun lt!1334076 () TokenValue!6510)

(declare-fun lt!1334075 () Int)

(assert (=> b!3843014 (and (= (size!30611 (_1!23063 (v!38989 lt!1334083))) lt!1334075) (= (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083))) lt!1334084) (= (tuple2!39859 (_1!23063 (v!38989 lt!1334083)) (_2!23063 (v!38989 lt!1334083))) (tuple2!39859 (Token!11699 lt!1334076 (rule!9120 (_1!23063 (v!38989 lt!1334083))) lt!1334075 lt!1334084) lt!1334080)))))

(assert (=> b!3843014 (= lt!1334075 (size!30612 lt!1334084))))

(assert (=> b!3843014 e!2374622))

(declare-fun res!1555450 () Bool)

(assert (=> b!3843014 (=> (not res!1555450) (not e!2374622))))

(assert (=> b!3843014 (= res!1555450 (= (value!199614 (_1!23063 (v!38989 lt!1334083))) lt!1334076))))

(declare-fun apply!9523 (TokenValueInjection!12448 BalanceConc!24576) TokenValue!6510)

(declare-fun seqFromList!4551 (List!40806) BalanceConc!24576)

(assert (=> b!3843014 (= lt!1334076 (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))) (seqFromList!4551 lt!1334084)))))

(assert (=> b!3843014 (= (_2!23063 (v!38989 lt!1334083)) lt!1334080)))

(declare-fun lt!1334081 () Unit!58378)

(declare-fun lemmaSamePrefixThenSameSuffix!1600 (List!40806 List!40806 List!40806 List!40806 List!40806) Unit!58378)

(assert (=> b!3843014 (= lt!1334081 (lemmaSamePrefixThenSameSuffix!1600 lt!1334084 (_2!23063 (v!38989 lt!1334083)) lt!1334084 lt!1334080 lt!1334082))))

(declare-fun getSuffix!1834 (List!40806 List!40806) List!40806)

(assert (=> b!3843014 (= lt!1334080 (getSuffix!1834 lt!1334082 lt!1334084))))

(assert (=> b!3843014 (isPrefix!3379 lt!1334084 lt!1334079)))

(assert (=> b!3843014 (= lt!1334079 (++!10317 lt!1334084 (_2!23063 (v!38989 lt!1334083))))))

(declare-fun lt!1334089 () Unit!58378)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2242 (List!40806 List!40806) Unit!58378)

(assert (=> b!3843014 (= lt!1334089 (lemmaConcatTwoListThenFirstIsPrefix!2242 lt!1334084 (_2!23063 (v!38989 lt!1334083))))))

(declare-fun list!15146 (BalanceConc!24576) List!40806)

(declare-fun charsOf!4108 (Token!11698) BalanceConc!24576)

(assert (=> b!3843014 (= lt!1334084 (list!15146 (charsOf!4108 (_1!23063 (v!38989 lt!1334083)))))))

(declare-fun ruleValid!2232 (LexerInterface!5869 Rule!12360) Bool)

(assert (=> b!3843014 (ruleValid!2232 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083))))))

(declare-fun lt!1334086 () Unit!58378)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1312 (LexerInterface!5869 Rule!12360 List!40809) Unit!58378)

(assert (=> b!3843014 (= lt!1334086 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1312 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083))) rules!2768))))

(declare-fun lt!1334090 () Unit!58378)

(declare-fun lemmaCharactersSize!941 (Token!11698) Unit!58378)

(assert (=> b!3843014 (= lt!1334090 (lemmaCharactersSize!941 (_1!23063 (v!38989 lt!1334083))))))

(declare-fun b!3843015 () Bool)

(assert (=> b!3843015 (= e!2374612 call!282000)))

(declare-fun b!3843016 () Bool)

(assert (=> b!3843016 (= e!2374607 e!2374606)))

(declare-fun res!1555445 () Bool)

(assert (=> b!3843016 (=> (not res!1555445) (not e!2374606))))

(assert (=> b!3843016 (= res!1555445 ((_ is Some!8697) lt!1334083))))

(assert (=> b!3843016 (= lt!1334083 (maxPrefix!3173 thiss!20629 rules!2768 lt!1334082))))

(declare-fun b!3843017 () Bool)

(declare-fun tp!1164463 () Bool)

(assert (=> b!3843017 (= e!2374617 (and tp_is_empty!19341 tp!1164463))))

(declare-fun tp!1164466 () Bool)

(declare-fun b!3843018 () Bool)

(assert (=> b!3843018 (= e!2374628 (and tp!1164466 (inv!54824 (tag!7140 (rule!9120 (h!46104 prefixTokens!80)))) (inv!54828 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) e!2374625))))

(declare-fun bm!281995 () Bool)

(declare-fun maxPrefixOneRule!2257 (LexerInterface!5869 Rule!12360 List!40806) Option!8698)

(assert (=> bm!281995 (= call!282000 (maxPrefixOneRule!2257 thiss!20629 (h!46105 rules!2768) lt!1334082))))

(declare-fun b!3843019 () Bool)

(assert (=> b!3843019 (= e!2374610 e!2374607)))

(declare-fun res!1555453 () Bool)

(assert (=> b!3843019 (=> (not res!1555453) (not e!2374607))))

(declare-fun lt!1334078 () List!40808)

(assert (=> b!3843019 (= res!1555453 (= lt!1334091 (tuple2!39861 lt!1334078 suffixResult!91)))))

(assert (=> b!3843019 (= lt!1334091 (lexList!1637 thiss!20629 rules!2768 lt!1334082))))

(declare-fun ++!10318 (List!40808 List!40808) List!40808)

(assert (=> b!3843019 (= lt!1334078 (++!10318 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3843019 (= lt!1334082 (++!10317 prefix!426 suffix!1176))))

(declare-fun b!3843020 () Bool)

(declare-fun rulesValidInductive!2220 (LexerInterface!5869 List!40809) Bool)

(assert (=> b!3843020 (= e!2374614 (rulesValidInductive!2220 thiss!20629 rules!2768))))

(declare-fun b!3843021 () Bool)

(assert (=> b!3843021 (= e!2374609 (= lt!1334083 e!2374612))))

(declare-fun c!669629 () Bool)

(assert (=> b!3843021 (= c!669629 (and ((_ is Cons!40685) rules!2768) ((_ is Nil!40685) (t!310618 rules!2768))))))

(declare-fun b!3843022 () Bool)

(assert (=> b!3843022 true))

(declare-fun e!2374631 () Bool)

(assert (=> b!3843022 e!2374631))

(assert (=> b!3843022 (= e!2374615 err!4273)))

(declare-fun b!3843023 () Bool)

(assert (=> b!3843023 (= e!2374608 e!2374621)))

(declare-fun res!1555444 () Bool)

(assert (=> b!3843023 (=> res!1555444 e!2374621)))

(declare-fun lt!1334095 () List!40808)

(assert (=> b!3843023 (= res!1555444 (or (not (= lt!1334091 (tuple2!39861 lt!1334095 (_2!23064 lt!1334093)))) (not (= lt!1334093 (tuple2!39861 (_1!23064 lt!1334093) (_2!23064 lt!1334093)))) (not (= (_2!23063 (v!38989 lt!1334083)) suffix!1176))))))

(declare-fun lt!1334094 () List!40808)

(assert (=> b!3843023 (= lt!1334095 (++!10318 lt!1334094 (_1!23064 lt!1334093)))))

(assert (=> b!3843023 (= lt!1334094 (Cons!40684 (_1!23063 (v!38989 lt!1334083)) Nil!40684))))

(declare-fun tp!1164469 () Bool)

(declare-fun b!3843024 () Bool)

(assert (=> b!3843024 (= e!2374627 (and tp!1164469 (inv!54824 (tag!7140 (rule!9120 (_1!23063 (v!38989 err!4273))))) (inv!54828 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) e!2374641))))

(declare-fun b!3843025 () Bool)

(assert (=> b!3843025 (= e!2374638 e!2374633)))

(declare-fun res!1555448 () Bool)

(assert (=> b!3843025 (=> res!1555448 e!2374633)))

(assert (=> b!3843025 (= res!1555448 (or (not (= lt!1334078 (_1!23064 lt!1334091))) (not (= lt!1334078 lt!1334095)) (not (= prefixTokens!80 lt!1334094)) (not (= prefix!426 lt!1334084))))))

(assert (=> b!3843025 (= lt!1334084 prefix!426)))

(declare-fun lt!1334088 () Unit!58378)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!408 (List!40806 List!40806 List!40806 List!40806) Unit!58378)

(assert (=> b!3843025 (= lt!1334088 (lemmaConcatSameAndSameSizesThenSameLists!408 lt!1334084 (_2!23063 (v!38989 lt!1334083)) prefix!426 suffix!1176))))

(declare-fun tp!1164462 () Bool)

(declare-fun b!3843026 () Bool)

(assert (=> b!3843026 (= e!2374631 (and (inv!54827 (_1!23063 (v!38989 err!4273))) e!2374635 tp!1164462))))

(declare-fun b!3843027 () Bool)

(declare-fun tp!1164453 () Bool)

(assert (=> b!3843027 (= e!2374619 (and tp_is_empty!19341 tp!1164453))))

(declare-fun b!3843028 () Bool)

(declare-fun tp!1164461 () Bool)

(assert (=> b!3843028 (= e!2374634 (and (inv!21 (value!199614 (h!46104 suffixTokens!72))) e!2374630 tp!1164461))))

(assert (= (and start!359788 res!1555439) b!3843010))

(assert (= (and b!3843010 res!1555452) b!3843002))

(assert (= (and b!3843002 res!1555449) b!3843006))

(assert (= (and b!3843006 res!1555441) b!3842991))

(assert (= (and b!3842991 res!1555451) b!3843019))

(assert (= (and b!3843019 res!1555453) b!3843009))

(assert (= (and b!3843009 res!1555442) b!3843016))

(assert (= (and b!3843016 res!1555445) b!3843014))

(assert (= (and b!3843014 res!1555450) b!3843001))

(assert (= (and b!3843014 (not res!1555443)) b!3843023))

(assert (= (and b!3843023 (not res!1555444)) b!3843007))

(assert (= (and b!3843007 res!1555440) b!3843021))

(assert (= (and b!3843021 c!669629) b!3843015))

(assert (= (and b!3843021 (not c!669629)) b!3842999))

(assert (= (and b!3842999 c!669628) b!3843004))

(assert (= (and b!3842999 (not c!669628)) b!3843022))

(assert (= b!3843024 b!3842992))

(assert (= b!3843011 b!3843024))

(assert (= b!3843026 b!3843011))

(assert (= (and b!3843022 ((_ is Some!8697) err!4273)) b!3843026))

(assert (= (or b!3843015 b!3843004) bm!281995))

(assert (= (and b!3843007 (not res!1555446)) b!3843025))

(assert (= (and b!3843025 (not res!1555448)) b!3843000))

(assert (= (and b!3843000 (not res!1555454)) b!3843008))

(assert (= (and b!3843008 (not res!1555447)) b!3843020))

(assert (= (and start!359788 ((_ is Cons!40682) suffixResult!91)) b!3843005))

(assert (= (and start!359788 ((_ is Cons!40682) suffix!1176)) b!3843017))

(assert (= b!3842998 b!3843003))

(assert (= b!3843013 b!3842998))

(assert (= (and start!359788 ((_ is Cons!40685) rules!2768)) b!3843013))

(assert (= b!3843018 b!3842993))

(assert (= b!3842996 b!3843018))

(assert (= b!3842995 b!3842996))

(assert (= (and start!359788 ((_ is Cons!40684) prefixTokens!80)) b!3842995))

(assert (= b!3842997 b!3842994))

(assert (= b!3843028 b!3842997))

(assert (= b!3843012 b!3843028))

(assert (= (and start!359788 ((_ is Cons!40684) suffixTokens!72)) b!3843012))

(assert (= (and start!359788 ((_ is Cons!40682) prefix!426)) b!3843027))

(declare-fun m!4397227 () Bool)

(assert (=> b!3843012 m!4397227))

(declare-fun m!4397229 () Bool)

(assert (=> b!3843000 m!4397229))

(declare-fun m!4397231 () Bool)

(assert (=> b!3843016 m!4397231))

(declare-fun m!4397233 () Bool)

(assert (=> b!3842998 m!4397233))

(declare-fun m!4397235 () Bool)

(assert (=> b!3842998 m!4397235))

(declare-fun m!4397237 () Bool)

(assert (=> b!3842995 m!4397237))

(declare-fun m!4397239 () Bool)

(assert (=> b!3843011 m!4397239))

(declare-fun m!4397241 () Bool)

(assert (=> b!3843001 m!4397241))

(declare-fun m!4397243 () Bool)

(assert (=> b!3843008 m!4397243))

(declare-fun m!4397245 () Bool)

(assert (=> b!3843008 m!4397245))

(declare-fun m!4397247 () Bool)

(assert (=> b!3843008 m!4397247))

(assert (=> b!3843008 m!4397247))

(declare-fun m!4397249 () Bool)

(assert (=> b!3843008 m!4397249))

(assert (=> b!3843008 m!4397245))

(declare-fun m!4397251 () Bool)

(assert (=> b!3843008 m!4397251))

(declare-fun m!4397253 () Bool)

(assert (=> b!3843006 m!4397253))

(declare-fun m!4397255 () Bool)

(assert (=> b!3842991 m!4397255))

(declare-fun m!4397257 () Bool)

(assert (=> b!3843019 m!4397257))

(declare-fun m!4397259 () Bool)

(assert (=> b!3843019 m!4397259))

(declare-fun m!4397261 () Bool)

(assert (=> b!3843019 m!4397261))

(declare-fun m!4397263 () Bool)

(assert (=> b!3843014 m!4397263))

(declare-fun m!4397265 () Bool)

(assert (=> b!3843014 m!4397265))

(declare-fun m!4397267 () Bool)

(assert (=> b!3843014 m!4397267))

(declare-fun m!4397269 () Bool)

(assert (=> b!3843014 m!4397269))

(assert (=> b!3843014 m!4397267))

(declare-fun m!4397271 () Bool)

(assert (=> b!3843014 m!4397271))

(declare-fun m!4397273 () Bool)

(assert (=> b!3843014 m!4397273))

(declare-fun m!4397275 () Bool)

(assert (=> b!3843014 m!4397275))

(declare-fun m!4397277 () Bool)

(assert (=> b!3843014 m!4397277))

(declare-fun m!4397279 () Bool)

(assert (=> b!3843014 m!4397279))

(declare-fun m!4397281 () Bool)

(assert (=> b!3843014 m!4397281))

(assert (=> b!3843014 m!4397265))

(declare-fun m!4397283 () Bool)

(assert (=> b!3843014 m!4397283))

(declare-fun m!4397285 () Bool)

(assert (=> b!3843014 m!4397285))

(declare-fun m!4397287 () Bool)

(assert (=> b!3843014 m!4397287))

(declare-fun m!4397289 () Bool)

(assert (=> b!3843014 m!4397289))

(declare-fun m!4397291 () Bool)

(assert (=> b!3843018 m!4397291))

(declare-fun m!4397293 () Bool)

(assert (=> b!3843018 m!4397293))

(declare-fun m!4397295 () Bool)

(assert (=> b!3843024 m!4397295))

(declare-fun m!4397297 () Bool)

(assert (=> b!3843024 m!4397297))

(declare-fun m!4397299 () Bool)

(assert (=> b!3843025 m!4397299))

(declare-fun m!4397301 () Bool)

(assert (=> bm!281995 m!4397301))

(declare-fun m!4397303 () Bool)

(assert (=> b!3843007 m!4397303))

(declare-fun m!4397305 () Bool)

(assert (=> b!3843007 m!4397305))

(declare-fun m!4397307 () Bool)

(assert (=> b!3843028 m!4397307))

(declare-fun m!4397309 () Bool)

(assert (=> b!3842996 m!4397309))

(declare-fun m!4397311 () Bool)

(assert (=> b!3843004 m!4397311))

(declare-fun m!4397313 () Bool)

(assert (=> b!3843010 m!4397313))

(declare-fun m!4397315 () Bool)

(assert (=> b!3843009 m!4397315))

(declare-fun m!4397317 () Bool)

(assert (=> b!3843023 m!4397317))

(declare-fun m!4397319 () Bool)

(assert (=> b!3843002 m!4397319))

(declare-fun m!4397321 () Bool)

(assert (=> b!3843020 m!4397321))

(declare-fun m!4397323 () Bool)

(assert (=> b!3843026 m!4397323))

(declare-fun m!4397325 () Bool)

(assert (=> b!3842997 m!4397325))

(declare-fun m!4397327 () Bool)

(assert (=> b!3842997 m!4397327))

(check-sat (not b!3842997) (not b_next!103361) (not b!3843026) (not bm!281995) (not b!3843007) (not b!3843017) (not b!3843000) b_and!286419 (not b!3843014) (not b!3843008) (not b_next!103375) (not b_next!103363) (not b!3843018) b_and!286415 b_and!286425 b_and!286421 (not b!3843012) (not b!3842995) (not b!3843023) (not b!3843006) (not b!3843024) (not b_next!103365) b_and!286429 (not b!3843013) (not b!3843025) (not b!3843004) (not b!3843011) (not b!3843027) (not b!3842991) b_and!286427 tp_is_empty!19341 (not b!3843005) b_and!286423 (not b_next!103373) (not b!3843028) (not b!3843016) (not b!3842996) (not b_next!103369) (not b!3843010) (not b!3843001) (not b!3843009) (not b!3842998) b_and!286417 (not b_next!103367) (not b!3843020) (not b_next!103371) (not b!3843019) (not b!3843002))
(check-sat (not b_next!103361) b_and!286421 (not b_next!103365) b_and!286429 b_and!286427 b_and!286419 (not b_next!103369) (not b_next!103375) (not b_next!103363) (not b_next!103371) b_and!286415 b_and!286425 (not b_next!103373) b_and!286423 b_and!286417 (not b_next!103367))
(get-model)

(declare-fun b!3843069 () Bool)

(declare-fun e!2374666 () Option!8698)

(declare-fun call!282003 () Option!8698)

(assert (=> b!3843069 (= e!2374666 call!282003)))

(declare-fun b!3843070 () Bool)

(declare-fun res!1555491 () Bool)

(declare-fun e!2374667 () Bool)

(assert (=> b!3843070 (=> (not res!1555491) (not e!2374667))))

(declare-fun lt!1334118 () Option!8698)

(declare-fun get!13468 (Option!8698) tuple2!39858)

(assert (=> b!3843070 (= res!1555491 (= (value!199614 (_1!23063 (get!13468 lt!1334118))) (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (get!13468 lt!1334118)))) (seqFromList!4551 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334118)))))))))

(declare-fun b!3843071 () Bool)

(declare-fun contains!8234 (List!40809 Rule!12360) Bool)

(assert (=> b!3843071 (= e!2374667 (contains!8234 (t!310618 rules!2768) (rule!9120 (_1!23063 (get!13468 lt!1334118)))))))

(declare-fun b!3843072 () Bool)

(declare-fun res!1555488 () Bool)

(assert (=> b!3843072 (=> (not res!1555488) (not e!2374667))))

(assert (=> b!3843072 (= res!1555488 (< (size!30612 (_2!23063 (get!13468 lt!1334118))) (size!30612 lt!1334082)))))

(declare-fun b!3843073 () Bool)

(declare-fun res!1555490 () Bool)

(assert (=> b!3843073 (=> (not res!1555490) (not e!2374667))))

(declare-fun matchR!5340 (Regex!11185 List!40806) Bool)

(assert (=> b!3843073 (= res!1555490 (matchR!5340 (regex!6280 (rule!9120 (_1!23063 (get!13468 lt!1334118)))) (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334118))))))))

(declare-fun b!3843074 () Bool)

(declare-fun res!1555493 () Bool)

(assert (=> b!3843074 (=> (not res!1555493) (not e!2374667))))

(assert (=> b!3843074 (= res!1555493 (= (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334118)))) (originalCharacters!6880 (_1!23063 (get!13468 lt!1334118)))))))

(declare-fun b!3843075 () Bool)

(declare-fun res!1555492 () Bool)

(assert (=> b!3843075 (=> (not res!1555492) (not e!2374667))))

(assert (=> b!3843075 (= res!1555492 (= (++!10317 (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334118)))) (_2!23063 (get!13468 lt!1334118))) lt!1334082))))

(declare-fun b!3843076 () Bool)

(declare-fun lt!1334121 () Option!8698)

(declare-fun lt!1334119 () Option!8698)

(assert (=> b!3843076 (= e!2374666 (ite (and ((_ is None!8697) lt!1334121) ((_ is None!8697) lt!1334119)) None!8697 (ite ((_ is None!8697) lt!1334119) lt!1334121 (ite ((_ is None!8697) lt!1334121) lt!1334119 (ite (>= (size!30611 (_1!23063 (v!38989 lt!1334121))) (size!30611 (_1!23063 (v!38989 lt!1334119)))) lt!1334121 lt!1334119)))))))

(assert (=> b!3843076 (= lt!1334121 call!282003)))

(assert (=> b!3843076 (= lt!1334119 (maxPrefix!3173 thiss!20629 (t!310618 (t!310618 rules!2768)) lt!1334082))))

(declare-fun b!3843077 () Bool)

(declare-fun e!2374665 () Bool)

(assert (=> b!3843077 (= e!2374665 e!2374667)))

(declare-fun res!1555489 () Bool)

(assert (=> b!3843077 (=> (not res!1555489) (not e!2374667))))

(assert (=> b!3843077 (= res!1555489 (isDefined!6829 lt!1334118))))

(declare-fun bm!281998 () Bool)

(assert (=> bm!281998 (= call!282003 (maxPrefixOneRule!2257 thiss!20629 (h!46105 (t!310618 rules!2768)) lt!1334082))))

(declare-fun d!1139895 () Bool)

(assert (=> d!1139895 e!2374665))

(declare-fun res!1555487 () Bool)

(assert (=> d!1139895 (=> res!1555487 e!2374665)))

(declare-fun isEmpty!24058 (Option!8698) Bool)

(assert (=> d!1139895 (= res!1555487 (isEmpty!24058 lt!1334118))))

(assert (=> d!1139895 (= lt!1334118 e!2374666)))

(declare-fun c!669640 () Bool)

(assert (=> d!1139895 (= c!669640 (and ((_ is Cons!40685) (t!310618 rules!2768)) ((_ is Nil!40685) (t!310618 (t!310618 rules!2768)))))))

(declare-fun lt!1334120 () Unit!58378)

(declare-fun lt!1334117 () Unit!58378)

(assert (=> d!1139895 (= lt!1334120 lt!1334117)))

(assert (=> d!1139895 (isPrefix!3379 lt!1334082 lt!1334082)))

(assert (=> d!1139895 (= lt!1334117 (lemmaIsPrefixRefl!2152 lt!1334082 lt!1334082))))

(assert (=> d!1139895 (rulesValidInductive!2220 thiss!20629 (t!310618 rules!2768))))

(assert (=> d!1139895 (= (maxPrefix!3173 thiss!20629 (t!310618 rules!2768) lt!1334082) lt!1334118)))

(assert (= (and d!1139895 c!669640) b!3843069))

(assert (= (and d!1139895 (not c!669640)) b!3843076))

(assert (= (or b!3843069 b!3843076) bm!281998))

(assert (= (and d!1139895 (not res!1555487)) b!3843077))

(assert (= (and b!3843077 res!1555489) b!3843074))

(assert (= (and b!3843074 res!1555493) b!3843072))

(assert (= (and b!3843072 res!1555488) b!3843075))

(assert (= (and b!3843075 res!1555492) b!3843070))

(assert (= (and b!3843070 res!1555491) b!3843073))

(assert (= (and b!3843073 res!1555490) b!3843071))

(declare-fun m!4397345 () Bool)

(assert (=> b!3843076 m!4397345))

(declare-fun m!4397347 () Bool)

(assert (=> b!3843074 m!4397347))

(declare-fun m!4397349 () Bool)

(assert (=> b!3843074 m!4397349))

(assert (=> b!3843074 m!4397349))

(declare-fun m!4397351 () Bool)

(assert (=> b!3843074 m!4397351))

(assert (=> b!3843071 m!4397347))

(declare-fun m!4397353 () Bool)

(assert (=> b!3843071 m!4397353))

(assert (=> b!3843073 m!4397347))

(assert (=> b!3843073 m!4397349))

(assert (=> b!3843073 m!4397349))

(assert (=> b!3843073 m!4397351))

(assert (=> b!3843073 m!4397351))

(declare-fun m!4397355 () Bool)

(assert (=> b!3843073 m!4397355))

(assert (=> b!3843070 m!4397347))

(declare-fun m!4397357 () Bool)

(assert (=> b!3843070 m!4397357))

(assert (=> b!3843070 m!4397357))

(declare-fun m!4397359 () Bool)

(assert (=> b!3843070 m!4397359))

(declare-fun m!4397361 () Bool)

(assert (=> d!1139895 m!4397361))

(assert (=> d!1139895 m!4397303))

(assert (=> d!1139895 m!4397305))

(declare-fun m!4397363 () Bool)

(assert (=> d!1139895 m!4397363))

(assert (=> b!3843072 m!4397347))

(declare-fun m!4397365 () Bool)

(assert (=> b!3843072 m!4397365))

(declare-fun m!4397367 () Bool)

(assert (=> b!3843072 m!4397367))

(declare-fun m!4397369 () Bool)

(assert (=> b!3843077 m!4397369))

(declare-fun m!4397371 () Bool)

(assert (=> bm!281998 m!4397371))

(assert (=> b!3843075 m!4397347))

(assert (=> b!3843075 m!4397349))

(assert (=> b!3843075 m!4397349))

(assert (=> b!3843075 m!4397351))

(assert (=> b!3843075 m!4397351))

(declare-fun m!4397373 () Bool)

(assert (=> b!3843075 m!4397373))

(assert (=> b!3843004 d!1139895))

(declare-fun d!1139897 () Bool)

(assert (=> d!1139897 (= (inv!54824 (tag!7140 (rule!9120 (_1!23063 (v!38989 err!4273))))) (= (mod (str.len (value!199613 (tag!7140 (rule!9120 (_1!23063 (v!38989 err!4273)))))) 2) 0))))

(assert (=> b!3843024 d!1139897))

(declare-fun d!1139899 () Bool)

(declare-fun res!1555496 () Bool)

(declare-fun e!2374670 () Bool)

(assert (=> d!1139899 (=> (not res!1555496) (not e!2374670))))

(declare-fun semiInverseModEq!2689 (Int Int) Bool)

(assert (=> d!1139899 (= res!1555496 (semiInverseModEq!2689 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))))))

(assert (=> d!1139899 (= (inv!54828 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) e!2374670)))

(declare-fun b!3843080 () Bool)

(declare-fun equivClasses!2588 (Int Int) Bool)

(assert (=> b!3843080 (= e!2374670 (equivClasses!2588 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))))))

(assert (= (and d!1139899 res!1555496) b!3843080))

(declare-fun m!4397375 () Bool)

(assert (=> d!1139899 m!4397375))

(declare-fun m!4397377 () Bool)

(assert (=> b!3843080 m!4397377))

(assert (=> b!3843024 d!1139899))

(declare-fun d!1139901 () Bool)

(assert (=> d!1139901 (and (= lt!1334084 prefix!426) (= (_2!23063 (v!38989 lt!1334083)) suffix!1176))))

(declare-fun lt!1334124 () Unit!58378)

(declare-fun choose!22595 (List!40806 List!40806 List!40806 List!40806) Unit!58378)

(assert (=> d!1139901 (= lt!1334124 (choose!22595 lt!1334084 (_2!23063 (v!38989 lt!1334083)) prefix!426 suffix!1176))))

(assert (=> d!1139901 (= (++!10317 lt!1334084 (_2!23063 (v!38989 lt!1334083))) (++!10317 prefix!426 suffix!1176))))

(assert (=> d!1139901 (= (lemmaConcatSameAndSameSizesThenSameLists!408 lt!1334084 (_2!23063 (v!38989 lt!1334083)) prefix!426 suffix!1176) lt!1334124)))

(declare-fun bs!582643 () Bool)

(assert (= bs!582643 d!1139901))

(declare-fun m!4397379 () Bool)

(assert (=> bs!582643 m!4397379))

(assert (=> bs!582643 m!4397269))

(assert (=> bs!582643 m!4397261))

(assert (=> b!3843025 d!1139901))

(declare-fun d!1139903 () Bool)

(declare-fun lt!1334127 () Int)

(assert (=> d!1139903 (>= lt!1334127 0)))

(declare-fun e!2374673 () Int)

(assert (=> d!1139903 (= lt!1334127 e!2374673)))

(declare-fun c!669643 () Bool)

(assert (=> d!1139903 (= c!669643 ((_ is Nil!40682) (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083)))))))

(assert (=> d!1139903 (= (size!30612 (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083)))) lt!1334127)))

(declare-fun b!3843085 () Bool)

(assert (=> b!3843085 (= e!2374673 0)))

(declare-fun b!3843086 () Bool)

(assert (=> b!3843086 (= e!2374673 (+ 1 (size!30612 (t!310615 (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083)))))))))

(assert (= (and d!1139903 c!669643) b!3843085))

(assert (= (and d!1139903 (not c!669643)) b!3843086))

(declare-fun m!4397381 () Bool)

(assert (=> b!3843086 m!4397381))

(assert (=> b!3843001 d!1139903))

(declare-fun d!1139905 () Bool)

(declare-fun res!1555499 () Bool)

(declare-fun e!2374676 () Bool)

(assert (=> d!1139905 (=> (not res!1555499) (not e!2374676))))

(declare-fun rulesValid!2424 (LexerInterface!5869 List!40809) Bool)

(assert (=> d!1139905 (= res!1555499 (rulesValid!2424 thiss!20629 rules!2768))))

(assert (=> d!1139905 (= (rulesInvariant!5212 thiss!20629 rules!2768) e!2374676)))

(declare-fun b!3843089 () Bool)

(declare-datatypes ((List!40811 0))(
  ( (Nil!40687) (Cons!40687 (h!46107 String!46268) (t!310760 List!40811)) )
))
(declare-fun noDuplicateTag!2425 (LexerInterface!5869 List!40809 List!40811) Bool)

(assert (=> b!3843089 (= e!2374676 (noDuplicateTag!2425 thiss!20629 rules!2768 Nil!40687))))

(assert (= (and d!1139905 res!1555499) b!3843089))

(declare-fun m!4397383 () Bool)

(assert (=> d!1139905 m!4397383))

(declare-fun m!4397385 () Bool)

(assert (=> b!3843089 m!4397385))

(assert (=> b!3843002 d!1139905))

(declare-fun b!3843100 () Bool)

(declare-fun res!1555504 () Bool)

(declare-fun e!2374681 () Bool)

(assert (=> b!3843100 (=> (not res!1555504) (not e!2374681))))

(declare-fun lt!1334130 () List!40808)

(declare-fun size!30615 (List!40808) Int)

(assert (=> b!3843100 (= res!1555504 (= (size!30615 lt!1334130) (+ (size!30615 lt!1334094) (size!30615 (_1!23064 lt!1334093)))))))

(declare-fun d!1139907 () Bool)

(assert (=> d!1139907 e!2374681))

(declare-fun res!1555505 () Bool)

(assert (=> d!1139907 (=> (not res!1555505) (not e!2374681))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6043 (List!40808) (InoxSet Token!11698))

(assert (=> d!1139907 (= res!1555505 (= (content!6043 lt!1334130) ((_ map or) (content!6043 lt!1334094) (content!6043 (_1!23064 lt!1334093)))))))

(declare-fun e!2374682 () List!40808)

(assert (=> d!1139907 (= lt!1334130 e!2374682)))

(declare-fun c!669646 () Bool)

(assert (=> d!1139907 (= c!669646 ((_ is Nil!40684) lt!1334094))))

(assert (=> d!1139907 (= (++!10318 lt!1334094 (_1!23064 lt!1334093)) lt!1334130)))

(declare-fun b!3843101 () Bool)

(assert (=> b!3843101 (= e!2374681 (or (not (= (_1!23064 lt!1334093) Nil!40684)) (= lt!1334130 lt!1334094)))))

(declare-fun b!3843099 () Bool)

(assert (=> b!3843099 (= e!2374682 (Cons!40684 (h!46104 lt!1334094) (++!10318 (t!310617 lt!1334094) (_1!23064 lt!1334093))))))

(declare-fun b!3843098 () Bool)

(assert (=> b!3843098 (= e!2374682 (_1!23064 lt!1334093))))

(assert (= (and d!1139907 c!669646) b!3843098))

(assert (= (and d!1139907 (not c!669646)) b!3843099))

(assert (= (and d!1139907 res!1555505) b!3843100))

(assert (= (and b!3843100 res!1555504) b!3843101))

(declare-fun m!4397387 () Bool)

(assert (=> b!3843100 m!4397387))

(declare-fun m!4397389 () Bool)

(assert (=> b!3843100 m!4397389))

(declare-fun m!4397391 () Bool)

(assert (=> b!3843100 m!4397391))

(declare-fun m!4397393 () Bool)

(assert (=> d!1139907 m!4397393))

(declare-fun m!4397395 () Bool)

(assert (=> d!1139907 m!4397395))

(declare-fun m!4397397 () Bool)

(assert (=> d!1139907 m!4397397))

(declare-fun m!4397399 () Bool)

(assert (=> b!3843099 m!4397399))

(assert (=> b!3843023 d!1139907))

(declare-fun b!3843112 () Bool)

(declare-fun e!2374691 () Bool)

(declare-fun lt!1334138 () tuple2!39860)

(assert (=> b!3843112 (= e!2374691 (not (isEmpty!24055 (_1!23064 lt!1334138))))))

(declare-fun b!3843113 () Bool)

(declare-fun e!2374689 () Bool)

(assert (=> b!3843113 (= e!2374689 e!2374691)))

(declare-fun res!1555508 () Bool)

(assert (=> b!3843113 (= res!1555508 (< (size!30612 (_2!23064 lt!1334138)) (size!30612 suffix!1176)))))

(assert (=> b!3843113 (=> (not res!1555508) (not e!2374691))))

(declare-fun b!3843114 () Bool)

(declare-fun e!2374690 () tuple2!39860)

(assert (=> b!3843114 (= e!2374690 (tuple2!39861 Nil!40684 suffix!1176))))

(declare-fun d!1139909 () Bool)

(assert (=> d!1139909 e!2374689))

(declare-fun c!669651 () Bool)

(assert (=> d!1139909 (= c!669651 (> (size!30615 (_1!23064 lt!1334138)) 0))))

(assert (=> d!1139909 (= lt!1334138 e!2374690)))

(declare-fun c!669652 () Bool)

(declare-fun lt!1334139 () Option!8698)

(assert (=> d!1139909 (= c!669652 ((_ is Some!8697) lt!1334139))))

(assert (=> d!1139909 (= lt!1334139 (maxPrefix!3173 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139909 (= (lexList!1637 thiss!20629 rules!2768 suffix!1176) lt!1334138)))

(declare-fun b!3843115 () Bool)

(declare-fun lt!1334137 () tuple2!39860)

(assert (=> b!3843115 (= e!2374690 (tuple2!39861 (Cons!40684 (_1!23063 (v!38989 lt!1334139)) (_1!23064 lt!1334137)) (_2!23064 lt!1334137)))))

(assert (=> b!3843115 (= lt!1334137 (lexList!1637 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334139))))))

(declare-fun b!3843116 () Bool)

(assert (=> b!3843116 (= e!2374689 (= (_2!23064 lt!1334138) suffix!1176))))

(assert (= (and d!1139909 c!669652) b!3843115))

(assert (= (and d!1139909 (not c!669652)) b!3843114))

(assert (= (and d!1139909 c!669651) b!3843113))

(assert (= (and d!1139909 (not c!669651)) b!3843116))

(assert (= (and b!3843113 res!1555508) b!3843112))

(declare-fun m!4397401 () Bool)

(assert (=> b!3843112 m!4397401))

(declare-fun m!4397403 () Bool)

(assert (=> b!3843113 m!4397403))

(declare-fun m!4397405 () Bool)

(assert (=> b!3843113 m!4397405))

(declare-fun m!4397407 () Bool)

(assert (=> d!1139909 m!4397407))

(declare-fun m!4397409 () Bool)

(assert (=> d!1139909 m!4397409))

(declare-fun m!4397411 () Bool)

(assert (=> b!3843115 m!4397411))

(assert (=> b!3843009 d!1139909))

(declare-fun d!1139911 () Bool)

(assert (=> d!1139911 (= (isEmpty!24056 rules!2768) ((_ is Nil!40685) rules!2768))))

(assert (=> b!3843010 d!1139911))

(declare-fun d!1139913 () Bool)

(assert (=> d!1139913 (= (isEmpty!24055 prefixTokens!80) ((_ is Nil!40684) prefixTokens!80))))

(assert (=> b!3843006 d!1139913))

(declare-fun d!1139915 () Bool)

(declare-fun res!1555513 () Bool)

(declare-fun e!2374694 () Bool)

(assert (=> d!1139915 (=> (not res!1555513) (not e!2374694))))

(assert (=> d!1139915 (= res!1555513 (not (isEmpty!24054 (originalCharacters!6880 (_1!23063 (v!38989 err!4273))))))))

(assert (=> d!1139915 (= (inv!54827 (_1!23063 (v!38989 err!4273))) e!2374694)))

(declare-fun b!3843121 () Bool)

(declare-fun res!1555514 () Bool)

(assert (=> b!3843121 (=> (not res!1555514) (not e!2374694))))

(declare-fun dynLambda!17576 (Int TokenValue!6510) BalanceConc!24576)

(assert (=> b!3843121 (= res!1555514 (= (originalCharacters!6880 (_1!23063 (v!38989 err!4273))) (list!15146 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (value!199614 (_1!23063 (v!38989 err!4273)))))))))

(declare-fun b!3843122 () Bool)

(assert (=> b!3843122 (= e!2374694 (= (size!30611 (_1!23063 (v!38989 err!4273))) (size!30612 (originalCharacters!6880 (_1!23063 (v!38989 err!4273))))))))

(assert (= (and d!1139915 res!1555513) b!3843121))

(assert (= (and b!3843121 res!1555514) b!3843122))

(declare-fun b_lambda!112323 () Bool)

(assert (=> (not b_lambda!112323) (not b!3843121)))

(declare-fun t!310620 () Bool)

(declare-fun tb!221117 () Bool)

(assert (=> (and b!3842992 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310620) tb!221117))

(declare-fun b!3843127 () Bool)

(declare-fun e!2374697 () Bool)

(declare-fun tp!1164477 () Bool)

(declare-fun inv!54831 (Conc!12491) Bool)

(assert (=> b!3843127 (= e!2374697 (and (inv!54831 (c!669631 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (value!199614 (_1!23063 (v!38989 err!4273)))))) tp!1164477))))

(declare-fun result!269482 () Bool)

(declare-fun inv!54832 (BalanceConc!24576) Bool)

(assert (=> tb!221117 (= result!269482 (and (inv!54832 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (value!199614 (_1!23063 (v!38989 err!4273))))) e!2374697))))

(assert (= tb!221117 b!3843127))

(declare-fun m!4397413 () Bool)

(assert (=> b!3843127 m!4397413))

(declare-fun m!4397415 () Bool)

(assert (=> tb!221117 m!4397415))

(assert (=> b!3843121 t!310620))

(declare-fun b_and!286431 () Bool)

(assert (= b_and!286417 (and (=> t!310620 result!269482) b_and!286431)))

(declare-fun t!310622 () Bool)

(declare-fun tb!221119 () Bool)

(assert (=> (and b!3843003 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310622) tb!221119))

(declare-fun result!269486 () Bool)

(assert (= result!269486 result!269482))

(assert (=> b!3843121 t!310622))

(declare-fun b_and!286433 () Bool)

(assert (= b_and!286421 (and (=> t!310622 result!269486) b_and!286433)))

(declare-fun tb!221121 () Bool)

(declare-fun t!310624 () Bool)

(assert (=> (and b!3842994 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310624) tb!221121))

(declare-fun result!269488 () Bool)

(assert (= result!269488 result!269482))

(assert (=> b!3843121 t!310624))

(declare-fun b_and!286435 () Bool)

(assert (= b_and!286425 (and (=> t!310624 result!269488) b_and!286435)))

(declare-fun tb!221123 () Bool)

(declare-fun t!310626 () Bool)

(assert (=> (and b!3842993 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310626) tb!221123))

(declare-fun result!269490 () Bool)

(assert (= result!269490 result!269482))

(assert (=> b!3843121 t!310626))

(declare-fun b_and!286437 () Bool)

(assert (= b_and!286429 (and (=> t!310626 result!269490) b_and!286437)))

(declare-fun m!4397417 () Bool)

(assert (=> d!1139915 m!4397417))

(declare-fun m!4397419 () Bool)

(assert (=> b!3843121 m!4397419))

(assert (=> b!3843121 m!4397419))

(declare-fun m!4397421 () Bool)

(assert (=> b!3843121 m!4397421))

(declare-fun m!4397423 () Bool)

(assert (=> b!3843122 m!4397423))

(assert (=> b!3843026 d!1139915))

(declare-fun b!3843137 () Bool)

(declare-fun res!1555526 () Bool)

(declare-fun e!2374704 () Bool)

(assert (=> b!3843137 (=> (not res!1555526) (not e!2374704))))

(declare-fun head!8084 (List!40806) C!22556)

(assert (=> b!3843137 (= res!1555526 (= (head!8084 lt!1334082) (head!8084 lt!1334082)))))

(declare-fun b!3843136 () Bool)

(declare-fun e!2374706 () Bool)

(assert (=> b!3843136 (= e!2374706 e!2374704)))

(declare-fun res!1555523 () Bool)

(assert (=> b!3843136 (=> (not res!1555523) (not e!2374704))))

(assert (=> b!3843136 (= res!1555523 (not ((_ is Nil!40682) lt!1334082)))))

(declare-fun d!1139917 () Bool)

(declare-fun e!2374705 () Bool)

(assert (=> d!1139917 e!2374705))

(declare-fun res!1555525 () Bool)

(assert (=> d!1139917 (=> res!1555525 e!2374705)))

(declare-fun lt!1334142 () Bool)

(assert (=> d!1139917 (= res!1555525 (not lt!1334142))))

(assert (=> d!1139917 (= lt!1334142 e!2374706)))

(declare-fun res!1555524 () Bool)

(assert (=> d!1139917 (=> res!1555524 e!2374706)))

(assert (=> d!1139917 (= res!1555524 ((_ is Nil!40682) lt!1334082))))

(assert (=> d!1139917 (= (isPrefix!3379 lt!1334082 lt!1334082) lt!1334142)))

(declare-fun b!3843138 () Bool)

(declare-fun tail!5811 (List!40806) List!40806)

(assert (=> b!3843138 (= e!2374704 (isPrefix!3379 (tail!5811 lt!1334082) (tail!5811 lt!1334082)))))

(declare-fun b!3843139 () Bool)

(assert (=> b!3843139 (= e!2374705 (>= (size!30612 lt!1334082) (size!30612 lt!1334082)))))

(assert (= (and d!1139917 (not res!1555524)) b!3843136))

(assert (= (and b!3843136 res!1555523) b!3843137))

(assert (= (and b!3843137 res!1555526) b!3843138))

(assert (= (and d!1139917 (not res!1555525)) b!3843139))

(declare-fun m!4397425 () Bool)

(assert (=> b!3843137 m!4397425))

(assert (=> b!3843137 m!4397425))

(declare-fun m!4397427 () Bool)

(assert (=> b!3843138 m!4397427))

(assert (=> b!3843138 m!4397427))

(assert (=> b!3843138 m!4397427))

(assert (=> b!3843138 m!4397427))

(declare-fun m!4397429 () Bool)

(assert (=> b!3843138 m!4397429))

(assert (=> b!3843139 m!4397367))

(assert (=> b!3843139 m!4397367))

(assert (=> b!3843007 d!1139917))

(declare-fun d!1139919 () Bool)

(assert (=> d!1139919 (isPrefix!3379 lt!1334082 lt!1334082)))

(declare-fun lt!1334145 () Unit!58378)

(declare-fun choose!22597 (List!40806 List!40806) Unit!58378)

(assert (=> d!1139919 (= lt!1334145 (choose!22597 lt!1334082 lt!1334082))))

(assert (=> d!1139919 (= (lemmaIsPrefixRefl!2152 lt!1334082 lt!1334082) lt!1334145)))

(declare-fun bs!582644 () Bool)

(assert (= bs!582644 d!1139919))

(assert (=> bs!582644 m!4397303))

(declare-fun m!4397431 () Bool)

(assert (=> bs!582644 m!4397431))

(assert (=> b!3843007 d!1139919))

(declare-fun b!3843140 () Bool)

(declare-fun e!2374708 () Option!8698)

(declare-fun call!282004 () Option!8698)

(assert (=> b!3843140 (= e!2374708 call!282004)))

(declare-fun b!3843141 () Bool)

(declare-fun res!1555531 () Bool)

(declare-fun e!2374709 () Bool)

(assert (=> b!3843141 (=> (not res!1555531) (not e!2374709))))

(declare-fun lt!1334147 () Option!8698)

(assert (=> b!3843141 (= res!1555531 (= (value!199614 (_1!23063 (get!13468 lt!1334147))) (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (get!13468 lt!1334147)))) (seqFromList!4551 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334147)))))))))

(declare-fun b!3843142 () Bool)

(assert (=> b!3843142 (= e!2374709 (contains!8234 rules!2768 (rule!9120 (_1!23063 (get!13468 lt!1334147)))))))

(declare-fun b!3843143 () Bool)

(declare-fun res!1555528 () Bool)

(assert (=> b!3843143 (=> (not res!1555528) (not e!2374709))))

(assert (=> b!3843143 (= res!1555528 (< (size!30612 (_2!23063 (get!13468 lt!1334147))) (size!30612 (++!10317 prefix!426 Nil!40682))))))

(declare-fun b!3843144 () Bool)

(declare-fun res!1555530 () Bool)

(assert (=> b!3843144 (=> (not res!1555530) (not e!2374709))))

(assert (=> b!3843144 (= res!1555530 (matchR!5340 (regex!6280 (rule!9120 (_1!23063 (get!13468 lt!1334147)))) (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334147))))))))

(declare-fun b!3843145 () Bool)

(declare-fun res!1555533 () Bool)

(assert (=> b!3843145 (=> (not res!1555533) (not e!2374709))))

(assert (=> b!3843145 (= res!1555533 (= (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334147)))) (originalCharacters!6880 (_1!23063 (get!13468 lt!1334147)))))))

(declare-fun b!3843146 () Bool)

(declare-fun res!1555532 () Bool)

(assert (=> b!3843146 (=> (not res!1555532) (not e!2374709))))

(assert (=> b!3843146 (= res!1555532 (= (++!10317 (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334147)))) (_2!23063 (get!13468 lt!1334147))) (++!10317 prefix!426 Nil!40682)))))

(declare-fun b!3843147 () Bool)

(declare-fun lt!1334150 () Option!8698)

(declare-fun lt!1334148 () Option!8698)

(assert (=> b!3843147 (= e!2374708 (ite (and ((_ is None!8697) lt!1334150) ((_ is None!8697) lt!1334148)) None!8697 (ite ((_ is None!8697) lt!1334148) lt!1334150 (ite ((_ is None!8697) lt!1334150) lt!1334148 (ite (>= (size!30611 (_1!23063 (v!38989 lt!1334150))) (size!30611 (_1!23063 (v!38989 lt!1334148)))) lt!1334150 lt!1334148)))))))

(assert (=> b!3843147 (= lt!1334150 call!282004)))

(assert (=> b!3843147 (= lt!1334148 (maxPrefix!3173 thiss!20629 (t!310618 rules!2768) (++!10317 prefix!426 Nil!40682)))))

(declare-fun b!3843148 () Bool)

(declare-fun e!2374707 () Bool)

(assert (=> b!3843148 (= e!2374707 e!2374709)))

(declare-fun res!1555529 () Bool)

(assert (=> b!3843148 (=> (not res!1555529) (not e!2374709))))

(assert (=> b!3843148 (= res!1555529 (isDefined!6829 lt!1334147))))

(declare-fun bm!281999 () Bool)

(assert (=> bm!281999 (= call!282004 (maxPrefixOneRule!2257 thiss!20629 (h!46105 rules!2768) (++!10317 prefix!426 Nil!40682)))))

(declare-fun d!1139921 () Bool)

(assert (=> d!1139921 e!2374707))

(declare-fun res!1555527 () Bool)

(assert (=> d!1139921 (=> res!1555527 e!2374707)))

(assert (=> d!1139921 (= res!1555527 (isEmpty!24058 lt!1334147))))

(assert (=> d!1139921 (= lt!1334147 e!2374708)))

(declare-fun c!669653 () Bool)

(assert (=> d!1139921 (= c!669653 (and ((_ is Cons!40685) rules!2768) ((_ is Nil!40685) (t!310618 rules!2768))))))

(declare-fun lt!1334149 () Unit!58378)

(declare-fun lt!1334146 () Unit!58378)

(assert (=> d!1139921 (= lt!1334149 lt!1334146)))

(assert (=> d!1139921 (isPrefix!3379 (++!10317 prefix!426 Nil!40682) (++!10317 prefix!426 Nil!40682))))

(assert (=> d!1139921 (= lt!1334146 (lemmaIsPrefixRefl!2152 (++!10317 prefix!426 Nil!40682) (++!10317 prefix!426 Nil!40682)))))

(assert (=> d!1139921 (rulesValidInductive!2220 thiss!20629 rules!2768)))

(assert (=> d!1139921 (= (maxPrefix!3173 thiss!20629 rules!2768 (++!10317 prefix!426 Nil!40682)) lt!1334147)))

(assert (= (and d!1139921 c!669653) b!3843140))

(assert (= (and d!1139921 (not c!669653)) b!3843147))

(assert (= (or b!3843140 b!3843147) bm!281999))

(assert (= (and d!1139921 (not res!1555527)) b!3843148))

(assert (= (and b!3843148 res!1555529) b!3843145))

(assert (= (and b!3843145 res!1555533) b!3843143))

(assert (= (and b!3843143 res!1555528) b!3843146))

(assert (= (and b!3843146 res!1555532) b!3843141))

(assert (= (and b!3843141 res!1555531) b!3843144))

(assert (= (and b!3843144 res!1555530) b!3843142))

(assert (=> b!3843147 m!4397247))

(declare-fun m!4397433 () Bool)

(assert (=> b!3843147 m!4397433))

(declare-fun m!4397435 () Bool)

(assert (=> b!3843145 m!4397435))

(declare-fun m!4397437 () Bool)

(assert (=> b!3843145 m!4397437))

(assert (=> b!3843145 m!4397437))

(declare-fun m!4397439 () Bool)

(assert (=> b!3843145 m!4397439))

(assert (=> b!3843142 m!4397435))

(declare-fun m!4397441 () Bool)

(assert (=> b!3843142 m!4397441))

(assert (=> b!3843144 m!4397435))

(assert (=> b!3843144 m!4397437))

(assert (=> b!3843144 m!4397437))

(assert (=> b!3843144 m!4397439))

(assert (=> b!3843144 m!4397439))

(declare-fun m!4397443 () Bool)

(assert (=> b!3843144 m!4397443))

(assert (=> b!3843141 m!4397435))

(declare-fun m!4397445 () Bool)

(assert (=> b!3843141 m!4397445))

(assert (=> b!3843141 m!4397445))

(declare-fun m!4397447 () Bool)

(assert (=> b!3843141 m!4397447))

(declare-fun m!4397449 () Bool)

(assert (=> d!1139921 m!4397449))

(assert (=> d!1139921 m!4397247))

(assert (=> d!1139921 m!4397247))

(declare-fun m!4397451 () Bool)

(assert (=> d!1139921 m!4397451))

(assert (=> d!1139921 m!4397247))

(assert (=> d!1139921 m!4397247))

(declare-fun m!4397453 () Bool)

(assert (=> d!1139921 m!4397453))

(assert (=> d!1139921 m!4397321))

(assert (=> b!3843143 m!4397435))

(declare-fun m!4397455 () Bool)

(assert (=> b!3843143 m!4397455))

(assert (=> b!3843143 m!4397247))

(declare-fun m!4397457 () Bool)

(assert (=> b!3843143 m!4397457))

(declare-fun m!4397459 () Bool)

(assert (=> b!3843148 m!4397459))

(assert (=> bm!281999 m!4397247))

(declare-fun m!4397461 () Bool)

(assert (=> bm!281999 m!4397461))

(assert (=> b!3843146 m!4397435))

(assert (=> b!3843146 m!4397437))

(assert (=> b!3843146 m!4397437))

(assert (=> b!3843146 m!4397439))

(assert (=> b!3843146 m!4397439))

(declare-fun m!4397463 () Bool)

(assert (=> b!3843146 m!4397463))

(assert (=> b!3843008 d!1139921))

(declare-fun d!1139923 () Bool)

(assert (=> d!1139923 (= (maxPrefix!3173 thiss!20629 rules!2768 (++!10317 prefix!426 Nil!40682)) (Some!8697 (tuple2!39859 (_1!23063 (v!38989 lt!1334083)) Nil!40682)))))

(declare-fun lt!1334153 () Unit!58378)

(declare-fun choose!22600 (LexerInterface!5869 List!40809 List!40806 List!40806 List!40806 Token!11698 List!40806 List!40806) Unit!58378)

(assert (=> d!1139923 (= lt!1334153 (choose!22600 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40682 (_1!23063 (v!38989 lt!1334083)) suffix!1176 Nil!40682))))

(assert (=> d!1139923 (not (isEmpty!24056 rules!2768))))

(assert (=> d!1139923 (= (lemmaMaxPrefixThenWithShorterSuffix!10 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40682 (_1!23063 (v!38989 lt!1334083)) suffix!1176 Nil!40682) lt!1334153)))

(declare-fun bs!582645 () Bool)

(assert (= bs!582645 d!1139923))

(assert (=> bs!582645 m!4397247))

(assert (=> bs!582645 m!4397247))

(assert (=> bs!582645 m!4397249))

(declare-fun m!4397465 () Bool)

(assert (=> bs!582645 m!4397465))

(assert (=> bs!582645 m!4397313))

(assert (=> b!3843008 d!1139923))

(declare-fun d!1139925 () Bool)

(declare-fun e!2374717 () Bool)

(assert (=> d!1139925 e!2374717))

(declare-fun res!1555541 () Bool)

(assert (=> d!1139925 (=> (not res!1555541) (not e!2374717))))

(declare-fun lt!1334157 () List!40806)

(declare-fun content!6044 (List!40806) (InoxSet C!22556))

(assert (=> d!1139925 (= res!1555541 (= (content!6044 lt!1334157) ((_ map or) (content!6044 prefix!426) (content!6044 Nil!40682))))))

(declare-fun e!2374716 () List!40806)

(assert (=> d!1139925 (= lt!1334157 e!2374716)))

(declare-fun c!669656 () Bool)

(assert (=> d!1139925 (= c!669656 ((_ is Nil!40682) prefix!426))))

(assert (=> d!1139925 (= (++!10317 prefix!426 Nil!40682) lt!1334157)))

(declare-fun b!3843164 () Bool)

(assert (=> b!3843164 (= e!2374717 (or (not (= Nil!40682 Nil!40682)) (= lt!1334157 prefix!426)))))

(declare-fun b!3843161 () Bool)

(assert (=> b!3843161 (= e!2374716 Nil!40682)))

(declare-fun b!3843162 () Bool)

(assert (=> b!3843162 (= e!2374716 (Cons!40682 (h!46102 prefix!426) (++!10317 (t!310615 prefix!426) Nil!40682)))))

(declare-fun b!3843163 () Bool)

(declare-fun res!1555540 () Bool)

(assert (=> b!3843163 (=> (not res!1555540) (not e!2374717))))

(assert (=> b!3843163 (= res!1555540 (= (size!30612 lt!1334157) (+ (size!30612 prefix!426) (size!30612 Nil!40682))))))

(assert (= (and d!1139925 c!669656) b!3843161))

(assert (= (and d!1139925 (not c!669656)) b!3843162))

(assert (= (and d!1139925 res!1555541) b!3843163))

(assert (= (and b!3843163 res!1555540) b!3843164))

(declare-fun m!4397473 () Bool)

(assert (=> d!1139925 m!4397473))

(declare-fun m!4397475 () Bool)

(assert (=> d!1139925 m!4397475))

(declare-fun m!4397477 () Bool)

(assert (=> d!1139925 m!4397477))

(declare-fun m!4397479 () Bool)

(assert (=> b!3843162 m!4397479))

(declare-fun m!4397481 () Bool)

(assert (=> b!3843163 m!4397481))

(declare-fun m!4397483 () Bool)

(assert (=> b!3843163 m!4397483))

(declare-fun m!4397485 () Bool)

(assert (=> b!3843163 m!4397485))

(assert (=> b!3843008 d!1139925))

(declare-fun b!3843165 () Bool)

(declare-fun e!2374719 () Option!8698)

(declare-fun call!282005 () Option!8698)

(assert (=> b!3843165 (= e!2374719 call!282005)))

(declare-fun b!3843166 () Bool)

(declare-fun res!1555546 () Bool)

(declare-fun e!2374720 () Bool)

(assert (=> b!3843166 (=> (not res!1555546) (not e!2374720))))

(declare-fun lt!1334159 () Option!8698)

(assert (=> b!3843166 (= res!1555546 (= (value!199614 (_1!23063 (get!13468 lt!1334159))) (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (get!13468 lt!1334159)))) (seqFromList!4551 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334159)))))))))

(declare-fun b!3843167 () Bool)

(assert (=> b!3843167 (= e!2374720 (contains!8234 rules!2768 (rule!9120 (_1!23063 (get!13468 lt!1334159)))))))

(declare-fun b!3843168 () Bool)

(declare-fun res!1555543 () Bool)

(assert (=> b!3843168 (=> (not res!1555543) (not e!2374720))))

(assert (=> b!3843168 (= res!1555543 (< (size!30612 (_2!23063 (get!13468 lt!1334159))) (size!30612 prefix!426)))))

(declare-fun b!3843169 () Bool)

(declare-fun res!1555545 () Bool)

(assert (=> b!3843169 (=> (not res!1555545) (not e!2374720))))

(assert (=> b!3843169 (= res!1555545 (matchR!5340 (regex!6280 (rule!9120 (_1!23063 (get!13468 lt!1334159)))) (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334159))))))))

(declare-fun b!3843170 () Bool)

(declare-fun res!1555548 () Bool)

(assert (=> b!3843170 (=> (not res!1555548) (not e!2374720))))

(assert (=> b!3843170 (= res!1555548 (= (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334159)))) (originalCharacters!6880 (_1!23063 (get!13468 lt!1334159)))))))

(declare-fun b!3843171 () Bool)

(declare-fun res!1555547 () Bool)

(assert (=> b!3843171 (=> (not res!1555547) (not e!2374720))))

(assert (=> b!3843171 (= res!1555547 (= (++!10317 (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334159)))) (_2!23063 (get!13468 lt!1334159))) prefix!426))))

(declare-fun b!3843172 () Bool)

(declare-fun lt!1334162 () Option!8698)

(declare-fun lt!1334160 () Option!8698)

(assert (=> b!3843172 (= e!2374719 (ite (and ((_ is None!8697) lt!1334162) ((_ is None!8697) lt!1334160)) None!8697 (ite ((_ is None!8697) lt!1334160) lt!1334162 (ite ((_ is None!8697) lt!1334162) lt!1334160 (ite (>= (size!30611 (_1!23063 (v!38989 lt!1334162))) (size!30611 (_1!23063 (v!38989 lt!1334160)))) lt!1334162 lt!1334160)))))))

(assert (=> b!3843172 (= lt!1334162 call!282005)))

(assert (=> b!3843172 (= lt!1334160 (maxPrefix!3173 thiss!20629 (t!310618 rules!2768) prefix!426))))

(declare-fun b!3843173 () Bool)

(declare-fun e!2374718 () Bool)

(assert (=> b!3843173 (= e!2374718 e!2374720)))

(declare-fun res!1555544 () Bool)

(assert (=> b!3843173 (=> (not res!1555544) (not e!2374720))))

(assert (=> b!3843173 (= res!1555544 (isDefined!6829 lt!1334159))))

(declare-fun bm!282000 () Bool)

(assert (=> bm!282000 (= call!282005 (maxPrefixOneRule!2257 thiss!20629 (h!46105 rules!2768) prefix!426))))

(declare-fun d!1139929 () Bool)

(assert (=> d!1139929 e!2374718))

(declare-fun res!1555542 () Bool)

(assert (=> d!1139929 (=> res!1555542 e!2374718)))

(assert (=> d!1139929 (= res!1555542 (isEmpty!24058 lt!1334159))))

(assert (=> d!1139929 (= lt!1334159 e!2374719)))

(declare-fun c!669657 () Bool)

(assert (=> d!1139929 (= c!669657 (and ((_ is Cons!40685) rules!2768) ((_ is Nil!40685) (t!310618 rules!2768))))))

(declare-fun lt!1334161 () Unit!58378)

(declare-fun lt!1334158 () Unit!58378)

(assert (=> d!1139929 (= lt!1334161 lt!1334158)))

(assert (=> d!1139929 (isPrefix!3379 prefix!426 prefix!426)))

(assert (=> d!1139929 (= lt!1334158 (lemmaIsPrefixRefl!2152 prefix!426 prefix!426))))

(assert (=> d!1139929 (rulesValidInductive!2220 thiss!20629 rules!2768)))

(assert (=> d!1139929 (= (maxPrefix!3173 thiss!20629 rules!2768 prefix!426) lt!1334159)))

(assert (= (and d!1139929 c!669657) b!3843165))

(assert (= (and d!1139929 (not c!669657)) b!3843172))

(assert (= (or b!3843165 b!3843172) bm!282000))

(assert (= (and d!1139929 (not res!1555542)) b!3843173))

(assert (= (and b!3843173 res!1555544) b!3843170))

(assert (= (and b!3843170 res!1555548) b!3843168))

(assert (= (and b!3843168 res!1555543) b!3843171))

(assert (= (and b!3843171 res!1555547) b!3843166))

(assert (= (and b!3843166 res!1555546) b!3843169))

(assert (= (and b!3843169 res!1555545) b!3843167))

(declare-fun m!4397487 () Bool)

(assert (=> b!3843172 m!4397487))

(declare-fun m!4397489 () Bool)

(assert (=> b!3843170 m!4397489))

(declare-fun m!4397491 () Bool)

(assert (=> b!3843170 m!4397491))

(assert (=> b!3843170 m!4397491))

(declare-fun m!4397493 () Bool)

(assert (=> b!3843170 m!4397493))

(assert (=> b!3843167 m!4397489))

(declare-fun m!4397495 () Bool)

(assert (=> b!3843167 m!4397495))

(assert (=> b!3843169 m!4397489))

(assert (=> b!3843169 m!4397491))

(assert (=> b!3843169 m!4397491))

(assert (=> b!3843169 m!4397493))

(assert (=> b!3843169 m!4397493))

(declare-fun m!4397497 () Bool)

(assert (=> b!3843169 m!4397497))

(assert (=> b!3843166 m!4397489))

(declare-fun m!4397499 () Bool)

(assert (=> b!3843166 m!4397499))

(assert (=> b!3843166 m!4397499))

(declare-fun m!4397501 () Bool)

(assert (=> b!3843166 m!4397501))

(declare-fun m!4397503 () Bool)

(assert (=> d!1139929 m!4397503))

(declare-fun m!4397505 () Bool)

(assert (=> d!1139929 m!4397505))

(declare-fun m!4397507 () Bool)

(assert (=> d!1139929 m!4397507))

(assert (=> d!1139929 m!4397321))

(assert (=> b!3843168 m!4397489))

(declare-fun m!4397509 () Bool)

(assert (=> b!3843168 m!4397509))

(assert (=> b!3843168 m!4397483))

(declare-fun m!4397511 () Bool)

(assert (=> b!3843173 m!4397511))

(declare-fun m!4397513 () Bool)

(assert (=> bm!282000 m!4397513))

(assert (=> b!3843171 m!4397489))

(assert (=> b!3843171 m!4397491))

(assert (=> b!3843171 m!4397491))

(assert (=> b!3843171 m!4397493))

(assert (=> b!3843171 m!4397493))

(declare-fun m!4397515 () Bool)

(assert (=> b!3843171 m!4397515))

(assert (=> b!3843008 d!1139929))

(declare-fun d!1139931 () Bool)

(assert (=> d!1139931 (= (isDefined!6829 (maxPrefix!3173 thiss!20629 rules!2768 prefix!426)) (not (isEmpty!24058 (maxPrefix!3173 thiss!20629 rules!2768 prefix!426))))))

(declare-fun bs!582646 () Bool)

(assert (= bs!582646 d!1139931))

(assert (=> bs!582646 m!4397245))

(declare-fun m!4397517 () Bool)

(assert (=> bs!582646 m!4397517))

(assert (=> b!3843008 d!1139931))

(declare-fun b!3843184 () Bool)

(declare-fun e!2374728 () Bool)

(declare-fun e!2374729 () Bool)

(assert (=> b!3843184 (= e!2374728 e!2374729)))

(declare-fun c!669663 () Bool)

(assert (=> b!3843184 (= c!669663 ((_ is IntegerValue!19531) (value!199614 (h!46104 suffixTokens!72))))))

(declare-fun b!3843185 () Bool)

(declare-fun inv!17 (TokenValue!6510) Bool)

(assert (=> b!3843185 (= e!2374729 (inv!17 (value!199614 (h!46104 suffixTokens!72))))))

(declare-fun d!1139933 () Bool)

(declare-fun c!669662 () Bool)

(assert (=> d!1139933 (= c!669662 ((_ is IntegerValue!19530) (value!199614 (h!46104 suffixTokens!72))))))

(assert (=> d!1139933 (= (inv!21 (value!199614 (h!46104 suffixTokens!72))) e!2374728)))

(declare-fun b!3843186 () Bool)

(declare-fun inv!16 (TokenValue!6510) Bool)

(assert (=> b!3843186 (= e!2374728 (inv!16 (value!199614 (h!46104 suffixTokens!72))))))

(declare-fun b!3843187 () Bool)

(declare-fun e!2374727 () Bool)

(declare-fun inv!15 (TokenValue!6510) Bool)

(assert (=> b!3843187 (= e!2374727 (inv!15 (value!199614 (h!46104 suffixTokens!72))))))

(declare-fun b!3843188 () Bool)

(declare-fun res!1555551 () Bool)

(assert (=> b!3843188 (=> res!1555551 e!2374727)))

(assert (=> b!3843188 (= res!1555551 (not ((_ is IntegerValue!19532) (value!199614 (h!46104 suffixTokens!72)))))))

(assert (=> b!3843188 (= e!2374729 e!2374727)))

(assert (= (and d!1139933 c!669662) b!3843186))

(assert (= (and d!1139933 (not c!669662)) b!3843184))

(assert (= (and b!3843184 c!669663) b!3843185))

(assert (= (and b!3843184 (not c!669663)) b!3843188))

(assert (= (and b!3843188 (not res!1555551)) b!3843187))

(declare-fun m!4397519 () Bool)

(assert (=> b!3843185 m!4397519))

(declare-fun m!4397521 () Bool)

(assert (=> b!3843186 m!4397521))

(declare-fun m!4397523 () Bool)

(assert (=> b!3843187 m!4397523))

(assert (=> b!3843028 d!1139933))

(declare-fun d!1139935 () Bool)

(assert (=> d!1139935 (ruleValid!2232 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083))))))

(declare-fun lt!1334165 () Unit!58378)

(declare-fun choose!22602 (LexerInterface!5869 Rule!12360 List!40809) Unit!58378)

(assert (=> d!1139935 (= lt!1334165 (choose!22602 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083))) rules!2768))))

(assert (=> d!1139935 (contains!8234 rules!2768 (rule!9120 (_1!23063 (v!38989 lt!1334083))))))

(assert (=> d!1139935 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1312 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083))) rules!2768) lt!1334165)))

(declare-fun bs!582647 () Bool)

(assert (= bs!582647 d!1139935))

(assert (=> bs!582647 m!4397273))

(declare-fun m!4397525 () Bool)

(assert (=> bs!582647 m!4397525))

(declare-fun m!4397527 () Bool)

(assert (=> bs!582647 m!4397527))

(assert (=> b!3843014 d!1139935))

(declare-fun d!1139937 () Bool)

(declare-fun list!15148 (Conc!12491) List!40806)

(assert (=> d!1139937 (= (list!15146 (charsOf!4108 (_1!23063 (v!38989 lt!1334083)))) (list!15148 (c!669631 (charsOf!4108 (_1!23063 (v!38989 lt!1334083))))))))

(declare-fun bs!582648 () Bool)

(assert (= bs!582648 d!1139937))

(declare-fun m!4397529 () Bool)

(assert (=> bs!582648 m!4397529))

(assert (=> b!3843014 d!1139937))

(declare-fun d!1139939 () Bool)

(assert (=> d!1139939 (= (size!30611 (_1!23063 (v!38989 lt!1334083))) (size!30612 (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083)))))))

(declare-fun Unit!58381 () Unit!58378)

(assert (=> d!1139939 (= (lemmaCharactersSize!941 (_1!23063 (v!38989 lt!1334083))) Unit!58381)))

(declare-fun bs!582649 () Bool)

(assert (= bs!582649 d!1139939))

(assert (=> bs!582649 m!4397241))

(assert (=> b!3843014 d!1139939))

(declare-fun b!3843190 () Bool)

(declare-fun res!1555555 () Bool)

(declare-fun e!2374730 () Bool)

(assert (=> b!3843190 (=> (not res!1555555) (not e!2374730))))

(assert (=> b!3843190 (= res!1555555 (= (head!8084 lt!1334084) (head!8084 lt!1334079)))))

(declare-fun b!3843189 () Bool)

(declare-fun e!2374732 () Bool)

(assert (=> b!3843189 (= e!2374732 e!2374730)))

(declare-fun res!1555552 () Bool)

(assert (=> b!3843189 (=> (not res!1555552) (not e!2374730))))

(assert (=> b!3843189 (= res!1555552 (not ((_ is Nil!40682) lt!1334079)))))

(declare-fun d!1139941 () Bool)

(declare-fun e!2374731 () Bool)

(assert (=> d!1139941 e!2374731))

(declare-fun res!1555554 () Bool)

(assert (=> d!1139941 (=> res!1555554 e!2374731)))

(declare-fun lt!1334166 () Bool)

(assert (=> d!1139941 (= res!1555554 (not lt!1334166))))

(assert (=> d!1139941 (= lt!1334166 e!2374732)))

(declare-fun res!1555553 () Bool)

(assert (=> d!1139941 (=> res!1555553 e!2374732)))

(assert (=> d!1139941 (= res!1555553 ((_ is Nil!40682) lt!1334084))))

(assert (=> d!1139941 (= (isPrefix!3379 lt!1334084 lt!1334079) lt!1334166)))

(declare-fun b!3843191 () Bool)

(assert (=> b!3843191 (= e!2374730 (isPrefix!3379 (tail!5811 lt!1334084) (tail!5811 lt!1334079)))))

(declare-fun b!3843192 () Bool)

(assert (=> b!3843192 (= e!2374731 (>= (size!30612 lt!1334079) (size!30612 lt!1334084)))))

(assert (= (and d!1139941 (not res!1555553)) b!3843189))

(assert (= (and b!3843189 res!1555552) b!3843190))

(assert (= (and b!3843190 res!1555555) b!3843191))

(assert (= (and d!1139941 (not res!1555554)) b!3843192))

(declare-fun m!4397531 () Bool)

(assert (=> b!3843190 m!4397531))

(declare-fun m!4397533 () Bool)

(assert (=> b!3843190 m!4397533))

(declare-fun m!4397535 () Bool)

(assert (=> b!3843191 m!4397535))

(declare-fun m!4397537 () Bool)

(assert (=> b!3843191 m!4397537))

(assert (=> b!3843191 m!4397535))

(assert (=> b!3843191 m!4397537))

(declare-fun m!4397539 () Bool)

(assert (=> b!3843191 m!4397539))

(declare-fun m!4397541 () Bool)

(assert (=> b!3843192 m!4397541))

(assert (=> b!3843192 m!4397275))

(assert (=> b!3843014 d!1139941))

(declare-fun d!1139943 () Bool)

(assert (=> d!1139943 (= (_2!23063 (v!38989 lt!1334083)) lt!1334080)))

(declare-fun lt!1334169 () Unit!58378)

(declare-fun choose!22603 (List!40806 List!40806 List!40806 List!40806 List!40806) Unit!58378)

(assert (=> d!1139943 (= lt!1334169 (choose!22603 lt!1334084 (_2!23063 (v!38989 lt!1334083)) lt!1334084 lt!1334080 lt!1334082))))

(assert (=> d!1139943 (isPrefix!3379 lt!1334084 lt!1334082)))

(assert (=> d!1139943 (= (lemmaSamePrefixThenSameSuffix!1600 lt!1334084 (_2!23063 (v!38989 lt!1334083)) lt!1334084 lt!1334080 lt!1334082) lt!1334169)))

(declare-fun bs!582650 () Bool)

(assert (= bs!582650 d!1139943))

(declare-fun m!4397543 () Bool)

(assert (=> bs!582650 m!4397543))

(declare-fun m!4397545 () Bool)

(assert (=> bs!582650 m!4397545))

(assert (=> b!3843014 d!1139943))

(declare-fun d!1139945 () Bool)

(declare-fun res!1555560 () Bool)

(declare-fun e!2374735 () Bool)

(assert (=> d!1139945 (=> (not res!1555560) (not e!2374735))))

(declare-fun validRegex!5088 (Regex!11185) Bool)

(assert (=> d!1139945 (= res!1555560 (validRegex!5088 (regex!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))))))

(assert (=> d!1139945 (= (ruleValid!2232 thiss!20629 (rule!9120 (_1!23063 (v!38989 lt!1334083)))) e!2374735)))

(declare-fun b!3843197 () Bool)

(declare-fun res!1555561 () Bool)

(assert (=> b!3843197 (=> (not res!1555561) (not e!2374735))))

(declare-fun nullable!3889 (Regex!11185) Bool)

(assert (=> b!3843197 (= res!1555561 (not (nullable!3889 (regex!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))))))

(declare-fun b!3843198 () Bool)

(assert (=> b!3843198 (= e!2374735 (not (= (tag!7140 (rule!9120 (_1!23063 (v!38989 lt!1334083)))) (String!46269 ""))))))

(assert (= (and d!1139945 res!1555560) b!3843197))

(assert (= (and b!3843197 res!1555561) b!3843198))

(declare-fun m!4397547 () Bool)

(assert (=> d!1139945 m!4397547))

(declare-fun m!4397549 () Bool)

(assert (=> b!3843197 m!4397549))

(assert (=> b!3843014 d!1139945))

(declare-fun d!1139947 () Bool)

(declare-fun fromListB!2099 (List!40806) BalanceConc!24576)

(assert (=> d!1139947 (= (seqFromList!4551 lt!1334084) (fromListB!2099 lt!1334084))))

(declare-fun bs!582651 () Bool)

(assert (= bs!582651 d!1139947))

(declare-fun m!4397551 () Bool)

(assert (=> bs!582651 m!4397551))

(assert (=> b!3843014 d!1139947))

(declare-fun d!1139949 () Bool)

(assert (=> d!1139949 (isPrefix!3379 lt!1334084 (++!10317 lt!1334084 (_2!23063 (v!38989 lt!1334083))))))

(declare-fun lt!1334172 () Unit!58378)

(declare-fun choose!22604 (List!40806 List!40806) Unit!58378)

(assert (=> d!1139949 (= lt!1334172 (choose!22604 lt!1334084 (_2!23063 (v!38989 lt!1334083))))))

(assert (=> d!1139949 (= (lemmaConcatTwoListThenFirstIsPrefix!2242 lt!1334084 (_2!23063 (v!38989 lt!1334083))) lt!1334172)))

(declare-fun bs!582652 () Bool)

(assert (= bs!582652 d!1139949))

(assert (=> bs!582652 m!4397269))

(assert (=> bs!582652 m!4397269))

(declare-fun m!4397553 () Bool)

(assert (=> bs!582652 m!4397553))

(declare-fun m!4397555 () Bool)

(assert (=> bs!582652 m!4397555))

(assert (=> b!3843014 d!1139949))

(declare-fun d!1139951 () Bool)

(declare-fun e!2374737 () Bool)

(assert (=> d!1139951 e!2374737))

(declare-fun res!1555563 () Bool)

(assert (=> d!1139951 (=> (not res!1555563) (not e!2374737))))

(declare-fun lt!1334173 () List!40806)

(assert (=> d!1139951 (= res!1555563 (= (content!6044 lt!1334173) ((_ map or) (content!6044 lt!1334084) (content!6044 (_2!23063 (v!38989 lt!1334083))))))))

(declare-fun e!2374736 () List!40806)

(assert (=> d!1139951 (= lt!1334173 e!2374736)))

(declare-fun c!669664 () Bool)

(assert (=> d!1139951 (= c!669664 ((_ is Nil!40682) lt!1334084))))

(assert (=> d!1139951 (= (++!10317 lt!1334084 (_2!23063 (v!38989 lt!1334083))) lt!1334173)))

(declare-fun b!3843202 () Bool)

(assert (=> b!3843202 (= e!2374737 (or (not (= (_2!23063 (v!38989 lt!1334083)) Nil!40682)) (= lt!1334173 lt!1334084)))))

(declare-fun b!3843199 () Bool)

(assert (=> b!3843199 (= e!2374736 (_2!23063 (v!38989 lt!1334083)))))

(declare-fun b!3843200 () Bool)

(assert (=> b!3843200 (= e!2374736 (Cons!40682 (h!46102 lt!1334084) (++!10317 (t!310615 lt!1334084) (_2!23063 (v!38989 lt!1334083)))))))

(declare-fun b!3843201 () Bool)

(declare-fun res!1555562 () Bool)

(assert (=> b!3843201 (=> (not res!1555562) (not e!2374737))))

(assert (=> b!3843201 (= res!1555562 (= (size!30612 lt!1334173) (+ (size!30612 lt!1334084) (size!30612 (_2!23063 (v!38989 lt!1334083))))))))

(assert (= (and d!1139951 c!669664) b!3843199))

(assert (= (and d!1139951 (not c!669664)) b!3843200))

(assert (= (and d!1139951 res!1555563) b!3843201))

(assert (= (and b!3843201 res!1555562) b!3843202))

(declare-fun m!4397557 () Bool)

(assert (=> d!1139951 m!4397557))

(declare-fun m!4397559 () Bool)

(assert (=> d!1139951 m!4397559))

(declare-fun m!4397561 () Bool)

(assert (=> d!1139951 m!4397561))

(declare-fun m!4397563 () Bool)

(assert (=> b!3843200 m!4397563))

(declare-fun m!4397565 () Bool)

(assert (=> b!3843201 m!4397565))

(assert (=> b!3843201 m!4397275))

(declare-fun m!4397567 () Bool)

(assert (=> b!3843201 m!4397567))

(assert (=> b!3843014 d!1139951))

(declare-fun d!1139953 () Bool)

(declare-fun lt!1334186 () List!40806)

(assert (=> d!1139953 (= (++!10317 lt!1334084 lt!1334186) lt!1334082)))

(declare-fun e!2374746 () List!40806)

(assert (=> d!1139953 (= lt!1334186 e!2374746)))

(declare-fun c!669669 () Bool)

(assert (=> d!1139953 (= c!669669 ((_ is Cons!40682) lt!1334084))))

(assert (=> d!1139953 (>= (size!30612 lt!1334082) (size!30612 lt!1334084))))

(assert (=> d!1139953 (= (getSuffix!1834 lt!1334082 lt!1334084) lt!1334186)))

(declare-fun b!3843225 () Bool)

(assert (=> b!3843225 (= e!2374746 (getSuffix!1834 (tail!5811 lt!1334082) (t!310615 lt!1334084)))))

(declare-fun b!3843226 () Bool)

(assert (=> b!3843226 (= e!2374746 lt!1334082)))

(assert (= (and d!1139953 c!669669) b!3843225))

(assert (= (and d!1139953 (not c!669669)) b!3843226))

(declare-fun m!4397569 () Bool)

(assert (=> d!1139953 m!4397569))

(assert (=> d!1139953 m!4397367))

(assert (=> d!1139953 m!4397275))

(assert (=> b!3843225 m!4397427))

(assert (=> b!3843225 m!4397427))

(declare-fun m!4397571 () Bool)

(assert (=> b!3843225 m!4397571))

(assert (=> b!3843014 d!1139953))

(declare-fun d!1139955 () Bool)

(declare-fun dynLambda!17578 (Int BalanceConc!24576) TokenValue!6510)

(assert (=> d!1139955 (= (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))) (seqFromList!4551 lt!1334084)) (dynLambda!17578 (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))) (seqFromList!4551 lt!1334084)))))

(declare-fun b_lambda!112325 () Bool)

(assert (=> (not b_lambda!112325) (not d!1139955)))

(declare-fun tb!221125 () Bool)

(declare-fun t!310628 () Bool)

(assert (=> (and b!3842992 (= (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310628) tb!221125))

(declare-fun result!269492 () Bool)

(assert (=> tb!221125 (= result!269492 (inv!21 (dynLambda!17578 (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))) (seqFromList!4551 lt!1334084))))))

(declare-fun m!4397573 () Bool)

(assert (=> tb!221125 m!4397573))

(assert (=> d!1139955 t!310628))

(declare-fun b_and!286439 () Bool)

(assert (= b_and!286415 (and (=> t!310628 result!269492) b_and!286439)))

(declare-fun tb!221127 () Bool)

(declare-fun t!310630 () Bool)

(assert (=> (and b!3843003 (= (toValue!8696 (transformation!6280 (h!46105 rules!2768))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310630) tb!221127))

(declare-fun result!269496 () Bool)

(assert (= result!269496 result!269492))

(assert (=> d!1139955 t!310630))

(declare-fun b_and!286441 () Bool)

(assert (= b_and!286419 (and (=> t!310630 result!269496) b_and!286441)))

(declare-fun t!310632 () Bool)

(declare-fun tb!221129 () Bool)

(assert (=> (and b!3842994 (= (toValue!8696 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310632) tb!221129))

(declare-fun result!269498 () Bool)

(assert (= result!269498 result!269492))

(assert (=> d!1139955 t!310632))

(declare-fun b_and!286443 () Bool)

(assert (= b_and!286423 (and (=> t!310632 result!269498) b_and!286443)))

(declare-fun tb!221131 () Bool)

(declare-fun t!310634 () Bool)

(assert (=> (and b!3842993 (= (toValue!8696 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310634) tb!221131))

(declare-fun result!269500 () Bool)

(assert (= result!269500 result!269492))

(assert (=> d!1139955 t!310634))

(declare-fun b_and!286445 () Bool)

(assert (= b_and!286427 (and (=> t!310634 result!269500) b_and!286445)))

(assert (=> d!1139955 m!4397265))

(declare-fun m!4397575 () Bool)

(assert (=> d!1139955 m!4397575))

(assert (=> b!3843014 d!1139955))

(declare-fun d!1139957 () Bool)

(declare-fun lt!1334194 () BalanceConc!24576)

(assert (=> d!1139957 (= (list!15146 lt!1334194) (originalCharacters!6880 (_1!23063 (v!38989 lt!1334083))))))

(assert (=> d!1139957 (= lt!1334194 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))) (value!199614 (_1!23063 (v!38989 lt!1334083)))))))

(assert (=> d!1139957 (= (charsOf!4108 (_1!23063 (v!38989 lt!1334083))) lt!1334194)))

(declare-fun b_lambda!112327 () Bool)

(assert (=> (not b_lambda!112327) (not d!1139957)))

(declare-fun t!310636 () Bool)

(declare-fun tb!221133 () Bool)

(assert (=> (and b!3842992 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310636) tb!221133))

(declare-fun b!3843238 () Bool)

(declare-fun e!2374753 () Bool)

(declare-fun tp!1164478 () Bool)

(assert (=> b!3843238 (= e!2374753 (and (inv!54831 (c!669631 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))) (value!199614 (_1!23063 (v!38989 lt!1334083)))))) tp!1164478))))

(declare-fun result!269502 () Bool)

(assert (=> tb!221133 (= result!269502 (and (inv!54832 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083))))) (value!199614 (_1!23063 (v!38989 lt!1334083))))) e!2374753))))

(assert (= tb!221133 b!3843238))

(declare-fun m!4397577 () Bool)

(assert (=> b!3843238 m!4397577))

(declare-fun m!4397579 () Bool)

(assert (=> tb!221133 m!4397579))

(assert (=> d!1139957 t!310636))

(declare-fun b_and!286447 () Bool)

(assert (= b_and!286431 (and (=> t!310636 result!269502) b_and!286447)))

(declare-fun t!310638 () Bool)

(declare-fun tb!221135 () Bool)

(assert (=> (and b!3843003 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310638) tb!221135))

(declare-fun result!269504 () Bool)

(assert (= result!269504 result!269502))

(assert (=> d!1139957 t!310638))

(declare-fun b_and!286449 () Bool)

(assert (= b_and!286433 (and (=> t!310638 result!269504) b_and!286449)))

(declare-fun t!310640 () Bool)

(declare-fun tb!221137 () Bool)

(assert (=> (and b!3842994 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310640) tb!221137))

(declare-fun result!269506 () Bool)

(assert (= result!269506 result!269502))

(assert (=> d!1139957 t!310640))

(declare-fun b_and!286451 () Bool)

(assert (= b_and!286435 (and (=> t!310640 result!269506) b_and!286451)))

(declare-fun t!310642 () Bool)

(declare-fun tb!221139 () Bool)

(assert (=> (and b!3842993 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310642) tb!221139))

(declare-fun result!269508 () Bool)

(assert (= result!269508 result!269502))

(assert (=> d!1139957 t!310642))

(declare-fun b_and!286453 () Bool)

(assert (= b_and!286437 (and (=> t!310642 result!269508) b_and!286453)))

(declare-fun m!4397581 () Bool)

(assert (=> d!1139957 m!4397581))

(declare-fun m!4397583 () Bool)

(assert (=> d!1139957 m!4397583))

(assert (=> b!3843014 d!1139957))

(declare-fun d!1139959 () Bool)

(declare-fun lt!1334195 () Int)

(assert (=> d!1139959 (>= lt!1334195 0)))

(declare-fun e!2374754 () Int)

(assert (=> d!1139959 (= lt!1334195 e!2374754)))

(declare-fun c!669671 () Bool)

(assert (=> d!1139959 (= c!669671 ((_ is Nil!40682) lt!1334084))))

(assert (=> d!1139959 (= (size!30612 lt!1334084) lt!1334195)))

(declare-fun b!3843239 () Bool)

(assert (=> b!3843239 (= e!2374754 0)))

(declare-fun b!3843240 () Bool)

(assert (=> b!3843240 (= e!2374754 (+ 1 (size!30612 (t!310615 lt!1334084))))))

(assert (= (and d!1139959 c!669671) b!3843239))

(assert (= (and d!1139959 (not c!669671)) b!3843240))

(declare-fun m!4397587 () Bool)

(assert (=> b!3843240 m!4397587))

(assert (=> b!3843014 d!1139959))

(declare-fun b!3843241 () Bool)

(declare-fun e!2374757 () Bool)

(declare-fun lt!1334197 () tuple2!39860)

(assert (=> b!3843241 (= e!2374757 (not (isEmpty!24055 (_1!23064 lt!1334197))))))

(declare-fun b!3843242 () Bool)

(declare-fun e!2374755 () Bool)

(assert (=> b!3843242 (= e!2374755 e!2374757)))

(declare-fun res!1555585 () Bool)

(assert (=> b!3843242 (= res!1555585 (< (size!30612 (_2!23064 lt!1334197)) (size!30612 (_2!23063 (v!38989 lt!1334083)))))))

(assert (=> b!3843242 (=> (not res!1555585) (not e!2374757))))

(declare-fun b!3843243 () Bool)

(declare-fun e!2374756 () tuple2!39860)

(assert (=> b!3843243 (= e!2374756 (tuple2!39861 Nil!40684 (_2!23063 (v!38989 lt!1334083))))))

(declare-fun d!1139961 () Bool)

(assert (=> d!1139961 e!2374755))

(declare-fun c!669672 () Bool)

(assert (=> d!1139961 (= c!669672 (> (size!30615 (_1!23064 lt!1334197)) 0))))

(assert (=> d!1139961 (= lt!1334197 e!2374756)))

(declare-fun c!669673 () Bool)

(declare-fun lt!1334198 () Option!8698)

(assert (=> d!1139961 (= c!669673 ((_ is Some!8697) lt!1334198))))

(assert (=> d!1139961 (= lt!1334198 (maxPrefix!3173 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334083))))))

(assert (=> d!1139961 (= (lexList!1637 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334083))) lt!1334197)))

(declare-fun b!3843244 () Bool)

(declare-fun lt!1334196 () tuple2!39860)

(assert (=> b!3843244 (= e!2374756 (tuple2!39861 (Cons!40684 (_1!23063 (v!38989 lt!1334198)) (_1!23064 lt!1334196)) (_2!23064 lt!1334196)))))

(assert (=> b!3843244 (= lt!1334196 (lexList!1637 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334198))))))

(declare-fun b!3843245 () Bool)

(assert (=> b!3843245 (= e!2374755 (= (_2!23064 lt!1334197) (_2!23063 (v!38989 lt!1334083))))))

(assert (= (and d!1139961 c!669673) b!3843244))

(assert (= (and d!1139961 (not c!669673)) b!3843243))

(assert (= (and d!1139961 c!669672) b!3843242))

(assert (= (and d!1139961 (not c!669672)) b!3843245))

(assert (= (and b!3843242 res!1555585) b!3843241))

(declare-fun m!4397603 () Bool)

(assert (=> b!3843241 m!4397603))

(declare-fun m!4397605 () Bool)

(assert (=> b!3843242 m!4397605))

(assert (=> b!3843242 m!4397567))

(declare-fun m!4397609 () Bool)

(assert (=> d!1139961 m!4397609))

(declare-fun m!4397611 () Bool)

(assert (=> d!1139961 m!4397611))

(declare-fun m!4397613 () Bool)

(assert (=> b!3843244 m!4397613))

(assert (=> b!3843014 d!1139961))

(declare-fun b!3843246 () Bool)

(declare-fun e!2374759 () Option!8698)

(declare-fun call!282009 () Option!8698)

(assert (=> b!3843246 (= e!2374759 call!282009)))

(declare-fun b!3843247 () Bool)

(declare-fun res!1555590 () Bool)

(declare-fun e!2374760 () Bool)

(assert (=> b!3843247 (=> (not res!1555590) (not e!2374760))))

(declare-fun lt!1334200 () Option!8698)

(assert (=> b!3843247 (= res!1555590 (= (value!199614 (_1!23063 (get!13468 lt!1334200))) (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (get!13468 lt!1334200)))) (seqFromList!4551 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334200)))))))))

(declare-fun b!3843248 () Bool)

(assert (=> b!3843248 (= e!2374760 (contains!8234 rules!2768 (rule!9120 (_1!23063 (get!13468 lt!1334200)))))))

(declare-fun b!3843249 () Bool)

(declare-fun res!1555587 () Bool)

(assert (=> b!3843249 (=> (not res!1555587) (not e!2374760))))

(assert (=> b!3843249 (= res!1555587 (< (size!30612 (_2!23063 (get!13468 lt!1334200))) (size!30612 lt!1334082)))))

(declare-fun b!3843250 () Bool)

(declare-fun res!1555589 () Bool)

(assert (=> b!3843250 (=> (not res!1555589) (not e!2374760))))

(assert (=> b!3843250 (= res!1555589 (matchR!5340 (regex!6280 (rule!9120 (_1!23063 (get!13468 lt!1334200)))) (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334200))))))))

(declare-fun b!3843251 () Bool)

(declare-fun res!1555592 () Bool)

(assert (=> b!3843251 (=> (not res!1555592) (not e!2374760))))

(assert (=> b!3843251 (= res!1555592 (= (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334200)))) (originalCharacters!6880 (_1!23063 (get!13468 lt!1334200)))))))

(declare-fun b!3843252 () Bool)

(declare-fun res!1555591 () Bool)

(assert (=> b!3843252 (=> (not res!1555591) (not e!2374760))))

(assert (=> b!3843252 (= res!1555591 (= (++!10317 (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334200)))) (_2!23063 (get!13468 lt!1334200))) lt!1334082))))

(declare-fun b!3843253 () Bool)

(declare-fun lt!1334203 () Option!8698)

(declare-fun lt!1334201 () Option!8698)

(assert (=> b!3843253 (= e!2374759 (ite (and ((_ is None!8697) lt!1334203) ((_ is None!8697) lt!1334201)) None!8697 (ite ((_ is None!8697) lt!1334201) lt!1334203 (ite ((_ is None!8697) lt!1334203) lt!1334201 (ite (>= (size!30611 (_1!23063 (v!38989 lt!1334203))) (size!30611 (_1!23063 (v!38989 lt!1334201)))) lt!1334203 lt!1334201)))))))

(assert (=> b!3843253 (= lt!1334203 call!282009)))

(assert (=> b!3843253 (= lt!1334201 (maxPrefix!3173 thiss!20629 (t!310618 rules!2768) lt!1334082))))

(declare-fun b!3843254 () Bool)

(declare-fun e!2374758 () Bool)

(assert (=> b!3843254 (= e!2374758 e!2374760)))

(declare-fun res!1555588 () Bool)

(assert (=> b!3843254 (=> (not res!1555588) (not e!2374760))))

(assert (=> b!3843254 (= res!1555588 (isDefined!6829 lt!1334200))))

(declare-fun bm!282004 () Bool)

(assert (=> bm!282004 (= call!282009 (maxPrefixOneRule!2257 thiss!20629 (h!46105 rules!2768) lt!1334082))))

(declare-fun d!1139963 () Bool)

(assert (=> d!1139963 e!2374758))

(declare-fun res!1555586 () Bool)

(assert (=> d!1139963 (=> res!1555586 e!2374758)))

(assert (=> d!1139963 (= res!1555586 (isEmpty!24058 lt!1334200))))

(assert (=> d!1139963 (= lt!1334200 e!2374759)))

(declare-fun c!669674 () Bool)

(assert (=> d!1139963 (= c!669674 (and ((_ is Cons!40685) rules!2768) ((_ is Nil!40685) (t!310618 rules!2768))))))

(declare-fun lt!1334202 () Unit!58378)

(declare-fun lt!1334199 () Unit!58378)

(assert (=> d!1139963 (= lt!1334202 lt!1334199)))

(assert (=> d!1139963 (isPrefix!3379 lt!1334082 lt!1334082)))

(assert (=> d!1139963 (= lt!1334199 (lemmaIsPrefixRefl!2152 lt!1334082 lt!1334082))))

(assert (=> d!1139963 (rulesValidInductive!2220 thiss!20629 rules!2768)))

(assert (=> d!1139963 (= (maxPrefix!3173 thiss!20629 rules!2768 lt!1334082) lt!1334200)))

(assert (= (and d!1139963 c!669674) b!3843246))

(assert (= (and d!1139963 (not c!669674)) b!3843253))

(assert (= (or b!3843246 b!3843253) bm!282004))

(assert (= (and d!1139963 (not res!1555586)) b!3843254))

(assert (= (and b!3843254 res!1555588) b!3843251))

(assert (= (and b!3843251 res!1555592) b!3843249))

(assert (= (and b!3843249 res!1555587) b!3843252))

(assert (= (and b!3843252 res!1555591) b!3843247))

(assert (= (and b!3843247 res!1555590) b!3843250))

(assert (= (and b!3843250 res!1555589) b!3843248))

(assert (=> b!3843253 m!4397311))

(declare-fun m!4397629 () Bool)

(assert (=> b!3843251 m!4397629))

(declare-fun m!4397631 () Bool)

(assert (=> b!3843251 m!4397631))

(assert (=> b!3843251 m!4397631))

(declare-fun m!4397633 () Bool)

(assert (=> b!3843251 m!4397633))

(assert (=> b!3843248 m!4397629))

(declare-fun m!4397635 () Bool)

(assert (=> b!3843248 m!4397635))

(assert (=> b!3843250 m!4397629))

(assert (=> b!3843250 m!4397631))

(assert (=> b!3843250 m!4397631))

(assert (=> b!3843250 m!4397633))

(assert (=> b!3843250 m!4397633))

(declare-fun m!4397637 () Bool)

(assert (=> b!3843250 m!4397637))

(assert (=> b!3843247 m!4397629))

(declare-fun m!4397639 () Bool)

(assert (=> b!3843247 m!4397639))

(assert (=> b!3843247 m!4397639))

(declare-fun m!4397641 () Bool)

(assert (=> b!3843247 m!4397641))

(declare-fun m!4397643 () Bool)

(assert (=> d!1139963 m!4397643))

(assert (=> d!1139963 m!4397303))

(assert (=> d!1139963 m!4397305))

(assert (=> d!1139963 m!4397321))

(assert (=> b!3843249 m!4397629))

(declare-fun m!4397645 () Bool)

(assert (=> b!3843249 m!4397645))

(assert (=> b!3843249 m!4397367))

(declare-fun m!4397647 () Bool)

(assert (=> b!3843254 m!4397647))

(assert (=> bm!282004 m!4397301))

(assert (=> b!3843252 m!4397629))

(assert (=> b!3843252 m!4397631))

(assert (=> b!3843252 m!4397631))

(assert (=> b!3843252 m!4397633))

(assert (=> b!3843252 m!4397633))

(declare-fun m!4397649 () Bool)

(assert (=> b!3843252 m!4397649))

(assert (=> b!3843016 d!1139963))

(declare-fun b!3843255 () Bool)

(declare-fun e!2374762 () Bool)

(declare-fun e!2374763 () Bool)

(assert (=> b!3843255 (= e!2374762 e!2374763)))

(declare-fun c!669676 () Bool)

(assert (=> b!3843255 (= c!669676 ((_ is IntegerValue!19531) (value!199614 (_1!23063 (v!38989 err!4273)))))))

(declare-fun b!3843256 () Bool)

(assert (=> b!3843256 (= e!2374763 (inv!17 (value!199614 (_1!23063 (v!38989 err!4273)))))))

(declare-fun d!1139967 () Bool)

(declare-fun c!669675 () Bool)

(assert (=> d!1139967 (= c!669675 ((_ is IntegerValue!19530) (value!199614 (_1!23063 (v!38989 err!4273)))))))

(assert (=> d!1139967 (= (inv!21 (value!199614 (_1!23063 (v!38989 err!4273)))) e!2374762)))

(declare-fun b!3843257 () Bool)

(assert (=> b!3843257 (= e!2374762 (inv!16 (value!199614 (_1!23063 (v!38989 err!4273)))))))

(declare-fun b!3843258 () Bool)

(declare-fun e!2374761 () Bool)

(assert (=> b!3843258 (= e!2374761 (inv!15 (value!199614 (_1!23063 (v!38989 err!4273)))))))

(declare-fun b!3843259 () Bool)

(declare-fun res!1555593 () Bool)

(assert (=> b!3843259 (=> res!1555593 e!2374761)))

(assert (=> b!3843259 (= res!1555593 (not ((_ is IntegerValue!19532) (value!199614 (_1!23063 (v!38989 err!4273))))))))

(assert (=> b!3843259 (= e!2374763 e!2374761)))

(assert (= (and d!1139967 c!669675) b!3843257))

(assert (= (and d!1139967 (not c!669675)) b!3843255))

(assert (= (and b!3843255 c!669676) b!3843256))

(assert (= (and b!3843255 (not c!669676)) b!3843259))

(assert (= (and b!3843259 (not res!1555593)) b!3843258))

(declare-fun m!4397651 () Bool)

(assert (=> b!3843256 m!4397651))

(declare-fun m!4397653 () Bool)

(assert (=> b!3843257 m!4397653))

(declare-fun m!4397655 () Bool)

(assert (=> b!3843258 m!4397655))

(assert (=> b!3843011 d!1139967))

(declare-fun d!1139969 () Bool)

(declare-fun res!1555594 () Bool)

(declare-fun e!2374764 () Bool)

(assert (=> d!1139969 (=> (not res!1555594) (not e!2374764))))

(assert (=> d!1139969 (= res!1555594 (not (isEmpty!24054 (originalCharacters!6880 (h!46104 suffixTokens!72)))))))

(assert (=> d!1139969 (= (inv!54827 (h!46104 suffixTokens!72)) e!2374764)))

(declare-fun b!3843260 () Bool)

(declare-fun res!1555595 () Bool)

(assert (=> b!3843260 (=> (not res!1555595) (not e!2374764))))

(assert (=> b!3843260 (= res!1555595 (= (originalCharacters!6880 (h!46104 suffixTokens!72)) (list!15146 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (value!199614 (h!46104 suffixTokens!72))))))))

(declare-fun b!3843261 () Bool)

(assert (=> b!3843261 (= e!2374764 (= (size!30611 (h!46104 suffixTokens!72)) (size!30612 (originalCharacters!6880 (h!46104 suffixTokens!72)))))))

(assert (= (and d!1139969 res!1555594) b!3843260))

(assert (= (and b!3843260 res!1555595) b!3843261))

(declare-fun b_lambda!112329 () Bool)

(assert (=> (not b_lambda!112329) (not b!3843260)))

(declare-fun tb!221141 () Bool)

(declare-fun t!310644 () Bool)

(assert (=> (and b!3842992 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310644) tb!221141))

(declare-fun b!3843262 () Bool)

(declare-fun e!2374765 () Bool)

(declare-fun tp!1164479 () Bool)

(assert (=> b!3843262 (= e!2374765 (and (inv!54831 (c!669631 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (value!199614 (h!46104 suffixTokens!72))))) tp!1164479))))

(declare-fun result!269510 () Bool)

(assert (=> tb!221141 (= result!269510 (and (inv!54832 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (value!199614 (h!46104 suffixTokens!72)))) e!2374765))))

(assert (= tb!221141 b!3843262))

(declare-fun m!4397657 () Bool)

(assert (=> b!3843262 m!4397657))

(declare-fun m!4397659 () Bool)

(assert (=> tb!221141 m!4397659))

(assert (=> b!3843260 t!310644))

(declare-fun b_and!286455 () Bool)

(assert (= b_and!286447 (and (=> t!310644 result!269510) b_and!286455)))

(declare-fun tb!221143 () Bool)

(declare-fun t!310646 () Bool)

(assert (=> (and b!3843003 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310646) tb!221143))

(declare-fun result!269512 () Bool)

(assert (= result!269512 result!269510))

(assert (=> b!3843260 t!310646))

(declare-fun b_and!286457 () Bool)

(assert (= b_and!286449 (and (=> t!310646 result!269512) b_and!286457)))

(declare-fun t!310648 () Bool)

(declare-fun tb!221145 () Bool)

(assert (=> (and b!3842994 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310648) tb!221145))

(declare-fun result!269514 () Bool)

(assert (= result!269514 result!269510))

(assert (=> b!3843260 t!310648))

(declare-fun b_and!286459 () Bool)

(assert (= b_and!286451 (and (=> t!310648 result!269514) b_and!286459)))

(declare-fun tb!221147 () Bool)

(declare-fun t!310650 () Bool)

(assert (=> (and b!3842993 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310650) tb!221147))

(declare-fun result!269516 () Bool)

(assert (= result!269516 result!269510))

(assert (=> b!3843260 t!310650))

(declare-fun b_and!286461 () Bool)

(assert (= b_and!286453 (and (=> t!310650 result!269516) b_and!286461)))

(declare-fun m!4397661 () Bool)

(assert (=> d!1139969 m!4397661))

(declare-fun m!4397663 () Bool)

(assert (=> b!3843260 m!4397663))

(assert (=> b!3843260 m!4397663))

(declare-fun m!4397665 () Bool)

(assert (=> b!3843260 m!4397665))

(declare-fun m!4397667 () Bool)

(assert (=> b!3843261 m!4397667))

(assert (=> b!3843012 d!1139969))

(declare-fun d!1139971 () Bool)

(assert (=> d!1139971 (= (isEmpty!24054 prefix!426) ((_ is Nil!40682) prefix!426))))

(assert (=> b!3842991 d!1139971))

(declare-fun d!1139973 () Bool)

(assert (=> d!1139973 (= (inv!54824 (tag!7140 (h!46105 rules!2768))) (= (mod (str.len (value!199613 (tag!7140 (h!46105 rules!2768)))) 2) 0))))

(assert (=> b!3842998 d!1139973))

(declare-fun d!1139975 () Bool)

(declare-fun res!1555596 () Bool)

(declare-fun e!2374766 () Bool)

(assert (=> d!1139975 (=> (not res!1555596) (not e!2374766))))

(assert (=> d!1139975 (= res!1555596 (semiInverseModEq!2689 (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toValue!8696 (transformation!6280 (h!46105 rules!2768)))))))

(assert (=> d!1139975 (= (inv!54828 (transformation!6280 (h!46105 rules!2768))) e!2374766)))

(declare-fun b!3843263 () Bool)

(assert (=> b!3843263 (= e!2374766 (equivClasses!2588 (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toValue!8696 (transformation!6280 (h!46105 rules!2768)))))))

(assert (= (and d!1139975 res!1555596) b!3843263))

(declare-fun m!4397669 () Bool)

(assert (=> d!1139975 m!4397669))

(declare-fun m!4397671 () Bool)

(assert (=> b!3843263 m!4397671))

(assert (=> b!3842998 d!1139975))

(declare-fun b!3843381 () Bool)

(declare-fun e!2374833 () Option!8698)

(declare-datatypes ((tuple2!39864 0))(
  ( (tuple2!39865 (_1!23066 List!40806) (_2!23066 List!40806)) )
))
(declare-fun lt!1334241 () tuple2!39864)

(declare-fun size!30616 (BalanceConc!24576) Int)

(assert (=> b!3843381 (= e!2374833 (Some!8697 (tuple2!39859 (Token!11699 (apply!9523 (transformation!6280 (h!46105 rules!2768)) (seqFromList!4551 (_1!23066 lt!1334241))) (h!46105 rules!2768) (size!30616 (seqFromList!4551 (_1!23066 lt!1334241))) (_1!23066 lt!1334241)) (_2!23066 lt!1334241))))))

(declare-fun lt!1334240 () Unit!58378)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1129 (Regex!11185 List!40806) Unit!58378)

(assert (=> b!3843381 (= lt!1334240 (longestMatchIsAcceptedByMatchOrIsEmpty!1129 (regex!6280 (h!46105 rules!2768)) lt!1334082))))

(declare-fun res!1555666 () Bool)

(declare-fun findLongestMatchInner!1156 (Regex!11185 List!40806 Int List!40806 List!40806 Int) tuple2!39864)

(assert (=> b!3843381 (= res!1555666 (isEmpty!24054 (_1!23066 (findLongestMatchInner!1156 (regex!6280 (h!46105 rules!2768)) Nil!40682 (size!30612 Nil!40682) lt!1334082 lt!1334082 (size!30612 lt!1334082)))))))

(declare-fun e!2374834 () Bool)

(assert (=> b!3843381 (=> res!1555666 e!2374834)))

(assert (=> b!3843381 e!2374834))

(declare-fun lt!1334238 () Unit!58378)

(assert (=> b!3843381 (= lt!1334238 lt!1334240)))

(declare-fun lt!1334239 () Unit!58378)

(declare-fun lemmaSemiInverse!1660 (TokenValueInjection!12448 BalanceConc!24576) Unit!58378)

(assert (=> b!3843381 (= lt!1334239 (lemmaSemiInverse!1660 (transformation!6280 (h!46105 rules!2768)) (seqFromList!4551 (_1!23066 lt!1334241))))))

(declare-fun b!3843382 () Bool)

(declare-fun res!1555664 () Bool)

(declare-fun e!2374836 () Bool)

(assert (=> b!3843382 (=> (not res!1555664) (not e!2374836))))

(declare-fun lt!1334242 () Option!8698)

(assert (=> b!3843382 (= res!1555664 (= (value!199614 (_1!23063 (get!13468 lt!1334242))) (apply!9523 (transformation!6280 (rule!9120 (_1!23063 (get!13468 lt!1334242)))) (seqFromList!4551 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334242)))))))))

(declare-fun b!3843383 () Bool)

(declare-fun res!1555669 () Bool)

(assert (=> b!3843383 (=> (not res!1555669) (not e!2374836))))

(assert (=> b!3843383 (= res!1555669 (= (rule!9120 (_1!23063 (get!13468 lt!1334242))) (h!46105 rules!2768)))))

(declare-fun d!1139977 () Bool)

(declare-fun e!2374835 () Bool)

(assert (=> d!1139977 e!2374835))

(declare-fun res!1555668 () Bool)

(assert (=> d!1139977 (=> res!1555668 e!2374835)))

(assert (=> d!1139977 (= res!1555668 (isEmpty!24058 lt!1334242))))

(assert (=> d!1139977 (= lt!1334242 e!2374833)))

(declare-fun c!669699 () Bool)

(assert (=> d!1139977 (= c!669699 (isEmpty!24054 (_1!23066 lt!1334241)))))

(declare-fun findLongestMatch!1069 (Regex!11185 List!40806) tuple2!39864)

(assert (=> d!1139977 (= lt!1334241 (findLongestMatch!1069 (regex!6280 (h!46105 rules!2768)) lt!1334082))))

(assert (=> d!1139977 (ruleValid!2232 thiss!20629 (h!46105 rules!2768))))

(assert (=> d!1139977 (= (maxPrefixOneRule!2257 thiss!20629 (h!46105 rules!2768) lt!1334082) lt!1334242)))

(declare-fun b!3843384 () Bool)

(declare-fun res!1555665 () Bool)

(assert (=> b!3843384 (=> (not res!1555665) (not e!2374836))))

(assert (=> b!3843384 (= res!1555665 (= (++!10317 (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334242)))) (_2!23063 (get!13468 lt!1334242))) lt!1334082))))

(declare-fun b!3843385 () Bool)

(assert (=> b!3843385 (= e!2374833 None!8697)))

(declare-fun b!3843386 () Bool)

(assert (=> b!3843386 (= e!2374836 (= (size!30611 (_1!23063 (get!13468 lt!1334242))) (size!30612 (originalCharacters!6880 (_1!23063 (get!13468 lt!1334242))))))))

(declare-fun b!3843387 () Bool)

(declare-fun res!1555667 () Bool)

(assert (=> b!3843387 (=> (not res!1555667) (not e!2374836))))

(assert (=> b!3843387 (= res!1555667 (< (size!30612 (_2!23063 (get!13468 lt!1334242))) (size!30612 lt!1334082)))))

(declare-fun b!3843388 () Bool)

(assert (=> b!3843388 (= e!2374834 (matchR!5340 (regex!6280 (h!46105 rules!2768)) (_1!23066 (findLongestMatchInner!1156 (regex!6280 (h!46105 rules!2768)) Nil!40682 (size!30612 Nil!40682) lt!1334082 lt!1334082 (size!30612 lt!1334082)))))))

(declare-fun b!3843389 () Bool)

(assert (=> b!3843389 (= e!2374835 e!2374836)))

(declare-fun res!1555670 () Bool)

(assert (=> b!3843389 (=> (not res!1555670) (not e!2374836))))

(assert (=> b!3843389 (= res!1555670 (matchR!5340 (regex!6280 (h!46105 rules!2768)) (list!15146 (charsOf!4108 (_1!23063 (get!13468 lt!1334242))))))))

(assert (= (and d!1139977 c!669699) b!3843385))

(assert (= (and d!1139977 (not c!669699)) b!3843381))

(assert (= (and b!3843381 (not res!1555666)) b!3843388))

(assert (= (and d!1139977 (not res!1555668)) b!3843389))

(assert (= (and b!3843389 res!1555670) b!3843384))

(assert (= (and b!3843384 res!1555665) b!3843387))

(assert (= (and b!3843387 res!1555667) b!3843383))

(assert (= (and b!3843383 res!1555669) b!3843382))

(assert (= (and b!3843382 res!1555664) b!3843386))

(declare-fun m!4397811 () Bool)

(assert (=> b!3843387 m!4397811))

(declare-fun m!4397813 () Bool)

(assert (=> b!3843387 m!4397813))

(assert (=> b!3843387 m!4397367))

(assert (=> b!3843383 m!4397811))

(assert (=> b!3843389 m!4397811))

(declare-fun m!4397815 () Bool)

(assert (=> b!3843389 m!4397815))

(assert (=> b!3843389 m!4397815))

(declare-fun m!4397817 () Bool)

(assert (=> b!3843389 m!4397817))

(assert (=> b!3843389 m!4397817))

(declare-fun m!4397819 () Bool)

(assert (=> b!3843389 m!4397819))

(declare-fun m!4397821 () Bool)

(assert (=> b!3843381 m!4397821))

(declare-fun m!4397823 () Bool)

(assert (=> b!3843381 m!4397823))

(assert (=> b!3843381 m!4397485))

(declare-fun m!4397825 () Bool)

(assert (=> b!3843381 m!4397825))

(assert (=> b!3843381 m!4397821))

(declare-fun m!4397827 () Bool)

(assert (=> b!3843381 m!4397827))

(assert (=> b!3843381 m!4397485))

(assert (=> b!3843381 m!4397367))

(declare-fun m!4397829 () Bool)

(assert (=> b!3843381 m!4397829))

(assert (=> b!3843381 m!4397821))

(declare-fun m!4397831 () Bool)

(assert (=> b!3843381 m!4397831))

(assert (=> b!3843381 m!4397821))

(assert (=> b!3843381 m!4397367))

(declare-fun m!4397833 () Bool)

(assert (=> b!3843381 m!4397833))

(declare-fun m!4397835 () Bool)

(assert (=> d!1139977 m!4397835))

(declare-fun m!4397837 () Bool)

(assert (=> d!1139977 m!4397837))

(declare-fun m!4397839 () Bool)

(assert (=> d!1139977 m!4397839))

(declare-fun m!4397841 () Bool)

(assert (=> d!1139977 m!4397841))

(assert (=> b!3843382 m!4397811))

(declare-fun m!4397843 () Bool)

(assert (=> b!3843382 m!4397843))

(assert (=> b!3843382 m!4397843))

(declare-fun m!4397845 () Bool)

(assert (=> b!3843382 m!4397845))

(assert (=> b!3843384 m!4397811))

(assert (=> b!3843384 m!4397815))

(assert (=> b!3843384 m!4397815))

(assert (=> b!3843384 m!4397817))

(assert (=> b!3843384 m!4397817))

(declare-fun m!4397847 () Bool)

(assert (=> b!3843384 m!4397847))

(assert (=> b!3843386 m!4397811))

(declare-fun m!4397849 () Bool)

(assert (=> b!3843386 m!4397849))

(assert (=> b!3843388 m!4397485))

(assert (=> b!3843388 m!4397367))

(assert (=> b!3843388 m!4397485))

(assert (=> b!3843388 m!4397367))

(assert (=> b!3843388 m!4397829))

(declare-fun m!4397851 () Bool)

(assert (=> b!3843388 m!4397851))

(assert (=> bm!281995 d!1139977))

(declare-fun b!3843390 () Bool)

(declare-fun e!2374839 () Bool)

(declare-fun lt!1334244 () tuple2!39860)

(assert (=> b!3843390 (= e!2374839 (not (isEmpty!24055 (_1!23064 lt!1334244))))))

(declare-fun b!3843391 () Bool)

(declare-fun e!2374837 () Bool)

(assert (=> b!3843391 (= e!2374837 e!2374839)))

(declare-fun res!1555671 () Bool)

(assert (=> b!3843391 (= res!1555671 (< (size!30612 (_2!23064 lt!1334244)) (size!30612 lt!1334082)))))

(assert (=> b!3843391 (=> (not res!1555671) (not e!2374839))))

(declare-fun b!3843392 () Bool)

(declare-fun e!2374838 () tuple2!39860)

(assert (=> b!3843392 (= e!2374838 (tuple2!39861 Nil!40684 lt!1334082))))

(declare-fun d!1140017 () Bool)

(assert (=> d!1140017 e!2374837))

(declare-fun c!669700 () Bool)

(assert (=> d!1140017 (= c!669700 (> (size!30615 (_1!23064 lt!1334244)) 0))))

(assert (=> d!1140017 (= lt!1334244 e!2374838)))

(declare-fun c!669701 () Bool)

(declare-fun lt!1334245 () Option!8698)

(assert (=> d!1140017 (= c!669701 ((_ is Some!8697) lt!1334245))))

(assert (=> d!1140017 (= lt!1334245 (maxPrefix!3173 thiss!20629 rules!2768 lt!1334082))))

(assert (=> d!1140017 (= (lexList!1637 thiss!20629 rules!2768 lt!1334082) lt!1334244)))

(declare-fun b!3843393 () Bool)

(declare-fun lt!1334243 () tuple2!39860)

(assert (=> b!3843393 (= e!2374838 (tuple2!39861 (Cons!40684 (_1!23063 (v!38989 lt!1334245)) (_1!23064 lt!1334243)) (_2!23064 lt!1334243)))))

(assert (=> b!3843393 (= lt!1334243 (lexList!1637 thiss!20629 rules!2768 (_2!23063 (v!38989 lt!1334245))))))

(declare-fun b!3843394 () Bool)

(assert (=> b!3843394 (= e!2374837 (= (_2!23064 lt!1334244) lt!1334082))))

(assert (= (and d!1140017 c!669701) b!3843393))

(assert (= (and d!1140017 (not c!669701)) b!3843392))

(assert (= (and d!1140017 c!669700) b!3843391))

(assert (= (and d!1140017 (not c!669700)) b!3843394))

(assert (= (and b!3843391 res!1555671) b!3843390))

(declare-fun m!4397853 () Bool)

(assert (=> b!3843390 m!4397853))

(declare-fun m!4397855 () Bool)

(assert (=> b!3843391 m!4397855))

(assert (=> b!3843391 m!4397367))

(declare-fun m!4397857 () Bool)

(assert (=> d!1140017 m!4397857))

(assert (=> d!1140017 m!4397231))

(declare-fun m!4397859 () Bool)

(assert (=> b!3843393 m!4397859))

(assert (=> b!3843019 d!1140017))

(declare-fun b!3843397 () Bool)

(declare-fun res!1555672 () Bool)

(declare-fun e!2374840 () Bool)

(assert (=> b!3843397 (=> (not res!1555672) (not e!2374840))))

(declare-fun lt!1334246 () List!40808)

(assert (=> b!3843397 (= res!1555672 (= (size!30615 lt!1334246) (+ (size!30615 prefixTokens!80) (size!30615 suffixTokens!72))))))

(declare-fun d!1140019 () Bool)

(assert (=> d!1140019 e!2374840))

(declare-fun res!1555673 () Bool)

(assert (=> d!1140019 (=> (not res!1555673) (not e!2374840))))

(assert (=> d!1140019 (= res!1555673 (= (content!6043 lt!1334246) ((_ map or) (content!6043 prefixTokens!80) (content!6043 suffixTokens!72))))))

(declare-fun e!2374841 () List!40808)

(assert (=> d!1140019 (= lt!1334246 e!2374841)))

(declare-fun c!669702 () Bool)

(assert (=> d!1140019 (= c!669702 ((_ is Nil!40684) prefixTokens!80))))

(assert (=> d!1140019 (= (++!10318 prefixTokens!80 suffixTokens!72) lt!1334246)))

(declare-fun b!3843398 () Bool)

(assert (=> b!3843398 (= e!2374840 (or (not (= suffixTokens!72 Nil!40684)) (= lt!1334246 prefixTokens!80)))))

(declare-fun b!3843396 () Bool)

(assert (=> b!3843396 (= e!2374841 (Cons!40684 (h!46104 prefixTokens!80) (++!10318 (t!310617 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3843395 () Bool)

(assert (=> b!3843395 (= e!2374841 suffixTokens!72)))

(assert (= (and d!1140019 c!669702) b!3843395))

(assert (= (and d!1140019 (not c!669702)) b!3843396))

(assert (= (and d!1140019 res!1555673) b!3843397))

(assert (= (and b!3843397 res!1555672) b!3843398))

(declare-fun m!4397861 () Bool)

(assert (=> b!3843397 m!4397861))

(declare-fun m!4397863 () Bool)

(assert (=> b!3843397 m!4397863))

(declare-fun m!4397865 () Bool)

(assert (=> b!3843397 m!4397865))

(declare-fun m!4397867 () Bool)

(assert (=> d!1140019 m!4397867))

(declare-fun m!4397869 () Bool)

(assert (=> d!1140019 m!4397869))

(declare-fun m!4397871 () Bool)

(assert (=> d!1140019 m!4397871))

(declare-fun m!4397873 () Bool)

(assert (=> b!3843396 m!4397873))

(assert (=> b!3843019 d!1140019))

(declare-fun d!1140021 () Bool)

(declare-fun e!2374843 () Bool)

(assert (=> d!1140021 e!2374843))

(declare-fun res!1555675 () Bool)

(assert (=> d!1140021 (=> (not res!1555675) (not e!2374843))))

(declare-fun lt!1334247 () List!40806)

(assert (=> d!1140021 (= res!1555675 (= (content!6044 lt!1334247) ((_ map or) (content!6044 prefix!426) (content!6044 suffix!1176))))))

(declare-fun e!2374842 () List!40806)

(assert (=> d!1140021 (= lt!1334247 e!2374842)))

(declare-fun c!669703 () Bool)

(assert (=> d!1140021 (= c!669703 ((_ is Nil!40682) prefix!426))))

(assert (=> d!1140021 (= (++!10317 prefix!426 suffix!1176) lt!1334247)))

(declare-fun b!3843402 () Bool)

(assert (=> b!3843402 (= e!2374843 (or (not (= suffix!1176 Nil!40682)) (= lt!1334247 prefix!426)))))

(declare-fun b!3843399 () Bool)

(assert (=> b!3843399 (= e!2374842 suffix!1176)))

(declare-fun b!3843400 () Bool)

(assert (=> b!3843400 (= e!2374842 (Cons!40682 (h!46102 prefix!426) (++!10317 (t!310615 prefix!426) suffix!1176)))))

(declare-fun b!3843401 () Bool)

(declare-fun res!1555674 () Bool)

(assert (=> b!3843401 (=> (not res!1555674) (not e!2374843))))

(assert (=> b!3843401 (= res!1555674 (= (size!30612 lt!1334247) (+ (size!30612 prefix!426) (size!30612 suffix!1176))))))

(assert (= (and d!1140021 c!669703) b!3843399))

(assert (= (and d!1140021 (not c!669703)) b!3843400))

(assert (= (and d!1140021 res!1555675) b!3843401))

(assert (= (and b!3843401 res!1555674) b!3843402))

(declare-fun m!4397875 () Bool)

(assert (=> d!1140021 m!4397875))

(assert (=> d!1140021 m!4397475))

(declare-fun m!4397877 () Bool)

(assert (=> d!1140021 m!4397877))

(declare-fun m!4397879 () Bool)

(assert (=> b!3843400 m!4397879))

(declare-fun m!4397881 () Bool)

(assert (=> b!3843401 m!4397881))

(assert (=> b!3843401 m!4397483))

(assert (=> b!3843401 m!4397405))

(assert (=> b!3843019 d!1140021))

(declare-fun b!3843404 () Bool)

(declare-fun res!1555679 () Bool)

(declare-fun e!2374844 () Bool)

(assert (=> b!3843404 (=> (not res!1555679) (not e!2374844))))

(assert (=> b!3843404 (= res!1555679 (= (head!8084 Nil!40682) (head!8084 suffix!1176)))))

(declare-fun b!3843403 () Bool)

(declare-fun e!2374846 () Bool)

(assert (=> b!3843403 (= e!2374846 e!2374844)))

(declare-fun res!1555676 () Bool)

(assert (=> b!3843403 (=> (not res!1555676) (not e!2374844))))

(assert (=> b!3843403 (= res!1555676 (not ((_ is Nil!40682) suffix!1176)))))

(declare-fun d!1140023 () Bool)

(declare-fun e!2374845 () Bool)

(assert (=> d!1140023 e!2374845))

(declare-fun res!1555678 () Bool)

(assert (=> d!1140023 (=> res!1555678 e!2374845)))

(declare-fun lt!1334248 () Bool)

(assert (=> d!1140023 (= res!1555678 (not lt!1334248))))

(assert (=> d!1140023 (= lt!1334248 e!2374846)))

(declare-fun res!1555677 () Bool)

(assert (=> d!1140023 (=> res!1555677 e!2374846)))

(assert (=> d!1140023 (= res!1555677 ((_ is Nil!40682) Nil!40682))))

(assert (=> d!1140023 (= (isPrefix!3379 Nil!40682 suffix!1176) lt!1334248)))

(declare-fun b!3843405 () Bool)

(assert (=> b!3843405 (= e!2374844 (isPrefix!3379 (tail!5811 Nil!40682) (tail!5811 suffix!1176)))))

(declare-fun b!3843406 () Bool)

(assert (=> b!3843406 (= e!2374845 (>= (size!30612 suffix!1176) (size!30612 Nil!40682)))))

(assert (= (and d!1140023 (not res!1555677)) b!3843403))

(assert (= (and b!3843403 res!1555676) b!3843404))

(assert (= (and b!3843404 res!1555679) b!3843405))

(assert (= (and d!1140023 (not res!1555678)) b!3843406))

(declare-fun m!4397883 () Bool)

(assert (=> b!3843404 m!4397883))

(declare-fun m!4397885 () Bool)

(assert (=> b!3843404 m!4397885))

(declare-fun m!4397887 () Bool)

(assert (=> b!3843405 m!4397887))

(declare-fun m!4397889 () Bool)

(assert (=> b!3843405 m!4397889))

(assert (=> b!3843405 m!4397887))

(assert (=> b!3843405 m!4397889))

(declare-fun m!4397891 () Bool)

(assert (=> b!3843405 m!4397891))

(assert (=> b!3843406 m!4397405))

(assert (=> b!3843406 m!4397485))

(assert (=> b!3843000 d!1140023))

(declare-fun d!1140025 () Bool)

(assert (=> d!1140025 true))

(declare-fun lt!1334305 () Bool)

(declare-fun lambda!126095 () Int)

(declare-fun forall!8279 (List!40809 Int) Bool)

(assert (=> d!1140025 (= lt!1334305 (forall!8279 rules!2768 lambda!126095))))

(declare-fun e!2374950 () Bool)

(assert (=> d!1140025 (= lt!1334305 e!2374950)))

(declare-fun res!1555741 () Bool)

(assert (=> d!1140025 (=> res!1555741 e!2374950)))

(assert (=> d!1140025 (= res!1555741 (not ((_ is Cons!40685) rules!2768)))))

(assert (=> d!1140025 (= (rulesValidInductive!2220 thiss!20629 rules!2768) lt!1334305)))

(declare-fun b!3843569 () Bool)

(declare-fun e!2374949 () Bool)

(assert (=> b!3843569 (= e!2374950 e!2374949)))

(declare-fun res!1555740 () Bool)

(assert (=> b!3843569 (=> (not res!1555740) (not e!2374949))))

(assert (=> b!3843569 (= res!1555740 (ruleValid!2232 thiss!20629 (h!46105 rules!2768)))))

(declare-fun b!3843570 () Bool)

(assert (=> b!3843570 (= e!2374949 (rulesValidInductive!2220 thiss!20629 (t!310618 rules!2768)))))

(assert (= (and d!1140025 (not res!1555741)) b!3843569))

(assert (= (and b!3843569 res!1555740) b!3843570))

(declare-fun m!4398121 () Bool)

(assert (=> d!1140025 m!4398121))

(assert (=> b!3843569 m!4397841))

(assert (=> b!3843570 m!4397363))

(assert (=> b!3843020 d!1140025))

(declare-fun d!1140075 () Bool)

(declare-fun res!1555742 () Bool)

(declare-fun e!2374951 () Bool)

(assert (=> d!1140075 (=> (not res!1555742) (not e!2374951))))

(assert (=> d!1140075 (= res!1555742 (not (isEmpty!24054 (originalCharacters!6880 (h!46104 prefixTokens!80)))))))

(assert (=> d!1140075 (= (inv!54827 (h!46104 prefixTokens!80)) e!2374951)))

(declare-fun b!3843573 () Bool)

(declare-fun res!1555743 () Bool)

(assert (=> b!3843573 (=> (not res!1555743) (not e!2374951))))

(assert (=> b!3843573 (= res!1555743 (= (originalCharacters!6880 (h!46104 prefixTokens!80)) (list!15146 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (value!199614 (h!46104 prefixTokens!80))))))))

(declare-fun b!3843574 () Bool)

(assert (=> b!3843574 (= e!2374951 (= (size!30611 (h!46104 prefixTokens!80)) (size!30612 (originalCharacters!6880 (h!46104 prefixTokens!80)))))))

(assert (= (and d!1140075 res!1555742) b!3843573))

(assert (= (and b!3843573 res!1555743) b!3843574))

(declare-fun b_lambda!112347 () Bool)

(assert (=> (not b_lambda!112347) (not b!3843573)))

(declare-fun tb!221219 () Bool)

(declare-fun t!310723 () Bool)

(assert (=> (and b!3842992 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310723) tb!221219))

(declare-fun b!3843575 () Bool)

(declare-fun e!2374952 () Bool)

(declare-fun tp!1164557 () Bool)

(assert (=> b!3843575 (= e!2374952 (and (inv!54831 (c!669631 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (value!199614 (h!46104 prefixTokens!80))))) tp!1164557))))

(declare-fun result!269600 () Bool)

(assert (=> tb!221219 (= result!269600 (and (inv!54832 (dynLambda!17576 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (value!199614 (h!46104 prefixTokens!80)))) e!2374952))))

(assert (= tb!221219 b!3843575))

(declare-fun m!4398123 () Bool)

(assert (=> b!3843575 m!4398123))

(declare-fun m!4398125 () Bool)

(assert (=> tb!221219 m!4398125))

(assert (=> b!3843573 t!310723))

(declare-fun b_and!286515 () Bool)

(assert (= b_and!286455 (and (=> t!310723 result!269600) b_and!286515)))

(declare-fun t!310725 () Bool)

(declare-fun tb!221221 () Bool)

(assert (=> (and b!3843003 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310725) tb!221221))

(declare-fun result!269602 () Bool)

(assert (= result!269602 result!269600))

(assert (=> b!3843573 t!310725))

(declare-fun b_and!286517 () Bool)

(assert (= b_and!286457 (and (=> t!310725 result!269602) b_and!286517)))

(declare-fun t!310727 () Bool)

(declare-fun tb!221223 () Bool)

(assert (=> (and b!3842994 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310727) tb!221223))

(declare-fun result!269604 () Bool)

(assert (= result!269604 result!269600))

(assert (=> b!3843573 t!310727))

(declare-fun b_and!286519 () Bool)

(assert (= b_and!286459 (and (=> t!310727 result!269604) b_and!286519)))

(declare-fun t!310729 () Bool)

(declare-fun tb!221225 () Bool)

(assert (=> (and b!3842993 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310729) tb!221225))

(declare-fun result!269606 () Bool)

(assert (= result!269606 result!269600))

(assert (=> b!3843573 t!310729))

(declare-fun b_and!286521 () Bool)

(assert (= b_and!286461 (and (=> t!310729 result!269606) b_and!286521)))

(declare-fun m!4398127 () Bool)

(assert (=> d!1140075 m!4398127))

(declare-fun m!4398129 () Bool)

(assert (=> b!3843573 m!4398129))

(assert (=> b!3843573 m!4398129))

(declare-fun m!4398131 () Bool)

(assert (=> b!3843573 m!4398131))

(declare-fun m!4398133 () Bool)

(assert (=> b!3843574 m!4398133))

(assert (=> b!3842995 d!1140075))

(declare-fun b!3843576 () Bool)

(declare-fun e!2374954 () Bool)

(declare-fun e!2374955 () Bool)

(assert (=> b!3843576 (= e!2374954 e!2374955)))

(declare-fun c!669721 () Bool)

(assert (=> b!3843576 (= c!669721 ((_ is IntegerValue!19531) (value!199614 (h!46104 prefixTokens!80))))))

(declare-fun b!3843577 () Bool)

(assert (=> b!3843577 (= e!2374955 (inv!17 (value!199614 (h!46104 prefixTokens!80))))))

(declare-fun d!1140077 () Bool)

(declare-fun c!669720 () Bool)

(assert (=> d!1140077 (= c!669720 ((_ is IntegerValue!19530) (value!199614 (h!46104 prefixTokens!80))))))

(assert (=> d!1140077 (= (inv!21 (value!199614 (h!46104 prefixTokens!80))) e!2374954)))

(declare-fun b!3843578 () Bool)

(assert (=> b!3843578 (= e!2374954 (inv!16 (value!199614 (h!46104 prefixTokens!80))))))

(declare-fun b!3843579 () Bool)

(declare-fun e!2374953 () Bool)

(assert (=> b!3843579 (= e!2374953 (inv!15 (value!199614 (h!46104 prefixTokens!80))))))

(declare-fun b!3843580 () Bool)

(declare-fun res!1555744 () Bool)

(assert (=> b!3843580 (=> res!1555744 e!2374953)))

(assert (=> b!3843580 (= res!1555744 (not ((_ is IntegerValue!19532) (value!199614 (h!46104 prefixTokens!80)))))))

(assert (=> b!3843580 (= e!2374955 e!2374953)))

(assert (= (and d!1140077 c!669720) b!3843578))

(assert (= (and d!1140077 (not c!669720)) b!3843576))

(assert (= (and b!3843576 c!669721) b!3843577))

(assert (= (and b!3843576 (not c!669721)) b!3843580))

(assert (= (and b!3843580 (not res!1555744)) b!3843579))

(declare-fun m!4398135 () Bool)

(assert (=> b!3843577 m!4398135))

(declare-fun m!4398137 () Bool)

(assert (=> b!3843578 m!4398137))

(declare-fun m!4398139 () Bool)

(assert (=> b!3843579 m!4398139))

(assert (=> b!3842996 d!1140077))

(declare-fun d!1140079 () Bool)

(assert (=> d!1140079 (= (inv!54824 (tag!7140 (rule!9120 (h!46104 prefixTokens!80)))) (= (mod (str.len (value!199613 (tag!7140 (rule!9120 (h!46104 prefixTokens!80))))) 2) 0))))

(assert (=> b!3843018 d!1140079))

(declare-fun d!1140081 () Bool)

(declare-fun res!1555745 () Bool)

(declare-fun e!2374956 () Bool)

(assert (=> d!1140081 (=> (not res!1555745) (not e!2374956))))

(assert (=> d!1140081 (= res!1555745 (semiInverseModEq!2689 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toValue!8696 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))))))

(assert (=> d!1140081 (= (inv!54828 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) e!2374956)))

(declare-fun b!3843581 () Bool)

(assert (=> b!3843581 (= e!2374956 (equivClasses!2588 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toValue!8696 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))))))

(assert (= (and d!1140081 res!1555745) b!3843581))

(declare-fun m!4398141 () Bool)

(assert (=> d!1140081 m!4398141))

(declare-fun m!4398143 () Bool)

(assert (=> b!3843581 m!4398143))

(assert (=> b!3843018 d!1140081))

(declare-fun d!1140083 () Bool)

(assert (=> d!1140083 (= (inv!54824 (tag!7140 (rule!9120 (h!46104 suffixTokens!72)))) (= (mod (str.len (value!199613 (tag!7140 (rule!9120 (h!46104 suffixTokens!72))))) 2) 0))))

(assert (=> b!3842997 d!1140083))

(declare-fun d!1140085 () Bool)

(declare-fun res!1555746 () Bool)

(declare-fun e!2374957 () Bool)

(assert (=> d!1140085 (=> (not res!1555746) (not e!2374957))))

(assert (=> d!1140085 (= res!1555746 (semiInverseModEq!2689 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toValue!8696 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))))))

(assert (=> d!1140085 (= (inv!54828 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) e!2374957)))

(declare-fun b!3843582 () Bool)

(assert (=> b!3843582 (= e!2374957 (equivClasses!2588 (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toValue!8696 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))))))

(assert (= (and d!1140085 res!1555746) b!3843582))

(declare-fun m!4398145 () Bool)

(assert (=> d!1140085 m!4398145))

(declare-fun m!4398147 () Bool)

(assert (=> b!3843582 m!4398147))

(assert (=> b!3842997 d!1140085))

(declare-fun b!3843593 () Bool)

(declare-fun e!2374960 () Bool)

(assert (=> b!3843593 (= e!2374960 tp_is_empty!19341)))

(declare-fun b!3843595 () Bool)

(declare-fun tp!1164570 () Bool)

(assert (=> b!3843595 (= e!2374960 tp!1164570)))

(declare-fun b!3843596 () Bool)

(declare-fun tp!1164572 () Bool)

(declare-fun tp!1164568 () Bool)

(assert (=> b!3843596 (= e!2374960 (and tp!1164572 tp!1164568))))

(assert (=> b!3843024 (= tp!1164469 e!2374960)))

(declare-fun b!3843594 () Bool)

(declare-fun tp!1164569 () Bool)

(declare-fun tp!1164571 () Bool)

(assert (=> b!3843594 (= e!2374960 (and tp!1164569 tp!1164571))))

(assert (= (and b!3843024 ((_ is ElementMatch!11185) (regex!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) b!3843593))

(assert (= (and b!3843024 ((_ is Concat!17696) (regex!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) b!3843594))

(assert (= (and b!3843024 ((_ is Star!11185) (regex!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) b!3843595))

(assert (= (and b!3843024 ((_ is Union!11185) (regex!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) b!3843596))

(declare-fun b!3843601 () Bool)

(declare-fun e!2374963 () Bool)

(declare-fun tp!1164575 () Bool)

(assert (=> b!3843601 (= e!2374963 (and tp_is_empty!19341 tp!1164575))))

(assert (=> b!3843005 (= tp!1164457 e!2374963)))

(assert (= (and b!3843005 ((_ is Cons!40682) (t!310615 suffixResult!91))) b!3843601))

(declare-fun b!3843602 () Bool)

(declare-fun e!2374964 () Bool)

(declare-fun tp!1164576 () Bool)

(assert (=> b!3843602 (= e!2374964 (and tp_is_empty!19341 tp!1164576))))

(assert (=> b!3843011 (= tp!1164471 e!2374964)))

(assert (= (and b!3843011 ((_ is Cons!40682) (originalCharacters!6880 (_1!23063 (v!38989 err!4273))))) b!3843602))

(declare-fun b!3843616 () Bool)

(declare-fun b_free!102685 () Bool)

(declare-fun b_next!103389 () Bool)

(assert (=> b!3843616 (= b_free!102685 (not b_next!103389))))

(declare-fun tb!221227 () Bool)

(declare-fun t!310731 () Bool)

(assert (=> (and b!3843616 (= (toValue!8696 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310731) tb!221227))

(declare-fun result!269614 () Bool)

(assert (= result!269614 result!269492))

(assert (=> d!1139955 t!310731))

(declare-fun b_and!286523 () Bool)

(declare-fun tp!1164590 () Bool)

(assert (=> b!3843616 (= tp!1164590 (and (=> t!310731 result!269614) b_and!286523))))

(declare-fun b_free!102687 () Bool)

(declare-fun b_next!103391 () Bool)

(assert (=> b!3843616 (= b_free!102687 (not b_next!103391))))

(declare-fun t!310733 () Bool)

(declare-fun tb!221229 () Bool)

(assert (=> (and b!3843616 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310733) tb!221229))

(declare-fun result!269616 () Bool)

(assert (= result!269616 result!269482))

(assert (=> b!3843121 t!310733))

(declare-fun t!310735 () Bool)

(declare-fun tb!221231 () Bool)

(assert (=> (and b!3843616 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310735) tb!221231))

(declare-fun result!269618 () Bool)

(assert (= result!269618 result!269502))

(assert (=> d!1139957 t!310735))

(declare-fun t!310737 () Bool)

(declare-fun tb!221233 () Bool)

(assert (=> (and b!3843616 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310737) tb!221233))

(declare-fun result!269620 () Bool)

(assert (= result!269620 result!269510))

(assert (=> b!3843260 t!310737))

(declare-fun t!310739 () Bool)

(declare-fun tb!221235 () Bool)

(assert (=> (and b!3843616 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310739) tb!221235))

(declare-fun result!269622 () Bool)

(assert (= result!269622 result!269600))

(assert (=> b!3843573 t!310739))

(declare-fun tp!1164591 () Bool)

(declare-fun b_and!286525 () Bool)

(assert (=> b!3843616 (= tp!1164591 (and (=> t!310733 result!269616) (=> t!310735 result!269618) (=> t!310737 result!269620) (=> t!310739 result!269622) b_and!286525))))

(declare-fun e!2374979 () Bool)

(assert (=> b!3843012 (= tp!1164472 e!2374979)))

(declare-fun e!2374982 () Bool)

(declare-fun tp!1164587 () Bool)

(declare-fun e!2374980 () Bool)

(declare-fun b!3843615 () Bool)

(assert (=> b!3843615 (= e!2374980 (and tp!1164587 (inv!54824 (tag!7140 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (inv!54828 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) e!2374982))))

(declare-fun b!3843613 () Bool)

(declare-fun tp!1164589 () Bool)

(declare-fun e!2374981 () Bool)

(assert (=> b!3843613 (= e!2374979 (and (inv!54827 (h!46104 (t!310617 suffixTokens!72))) e!2374981 tp!1164589))))

(assert (=> b!3843616 (= e!2374982 (and tp!1164590 tp!1164591))))

(declare-fun b!3843614 () Bool)

(declare-fun tp!1164588 () Bool)

(assert (=> b!3843614 (= e!2374981 (and (inv!21 (value!199614 (h!46104 (t!310617 suffixTokens!72)))) e!2374980 tp!1164588))))

(assert (= b!3843615 b!3843616))

(assert (= b!3843614 b!3843615))

(assert (= b!3843613 b!3843614))

(assert (= (and b!3843012 ((_ is Cons!40684) (t!310617 suffixTokens!72))) b!3843613))

(declare-fun m!4398149 () Bool)

(assert (=> b!3843615 m!4398149))

(declare-fun m!4398151 () Bool)

(assert (=> b!3843615 m!4398151))

(declare-fun m!4398153 () Bool)

(assert (=> b!3843613 m!4398153))

(declare-fun m!4398155 () Bool)

(assert (=> b!3843614 m!4398155))

(declare-fun b!3843627 () Bool)

(declare-fun b_free!102689 () Bool)

(declare-fun b_next!103393 () Bool)

(assert (=> b!3843627 (= b_free!102689 (not b_next!103393))))

(declare-fun t!310741 () Bool)

(declare-fun tb!221237 () Bool)

(assert (=> (and b!3843627 (= (toValue!8696 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310741) tb!221237))

(declare-fun result!269626 () Bool)

(assert (= result!269626 result!269492))

(assert (=> d!1139955 t!310741))

(declare-fun b_and!286527 () Bool)

(declare-fun tp!1164601 () Bool)

(assert (=> b!3843627 (= tp!1164601 (and (=> t!310741 result!269626) b_and!286527))))

(declare-fun b_free!102691 () Bool)

(declare-fun b_next!103395 () Bool)

(assert (=> b!3843627 (= b_free!102691 (not b_next!103395))))

(declare-fun t!310743 () Bool)

(declare-fun tb!221239 () Bool)

(assert (=> (and b!3843627 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310743) tb!221239))

(declare-fun result!269628 () Bool)

(assert (= result!269628 result!269482))

(assert (=> b!3843121 t!310743))

(declare-fun t!310745 () Bool)

(declare-fun tb!221241 () Bool)

(assert (=> (and b!3843627 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310745) tb!221241))

(declare-fun result!269630 () Bool)

(assert (= result!269630 result!269502))

(assert (=> d!1139957 t!310745))

(declare-fun t!310747 () Bool)

(declare-fun tb!221243 () Bool)

(assert (=> (and b!3843627 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310747) tb!221243))

(declare-fun result!269632 () Bool)

(assert (= result!269632 result!269510))

(assert (=> b!3843260 t!310747))

(declare-fun t!310749 () Bool)

(declare-fun tb!221245 () Bool)

(assert (=> (and b!3843627 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310749) tb!221245))

(declare-fun result!269634 () Bool)

(assert (= result!269634 result!269600))

(assert (=> b!3843573 t!310749))

(declare-fun tp!1164602 () Bool)

(declare-fun b_and!286529 () Bool)

(assert (=> b!3843627 (= tp!1164602 (and (=> t!310743 result!269628) (=> t!310745 result!269630) (=> t!310747 result!269632) (=> t!310749 result!269634) b_and!286529))))

(declare-fun e!2374991 () Bool)

(assert (=> b!3843627 (= e!2374991 (and tp!1164601 tp!1164602))))

(declare-fun e!2374994 () Bool)

(declare-fun tp!1164600 () Bool)

(declare-fun b!3843626 () Bool)

(assert (=> b!3843626 (= e!2374994 (and tp!1164600 (inv!54824 (tag!7140 (h!46105 (t!310618 rules!2768)))) (inv!54828 (transformation!6280 (h!46105 (t!310618 rules!2768)))) e!2374991))))

(declare-fun b!3843625 () Bool)

(declare-fun e!2374992 () Bool)

(declare-fun tp!1164603 () Bool)

(assert (=> b!3843625 (= e!2374992 (and e!2374994 tp!1164603))))

(assert (=> b!3843013 (= tp!1164470 e!2374992)))

(assert (= b!3843626 b!3843627))

(assert (= b!3843625 b!3843626))

(assert (= (and b!3843013 ((_ is Cons!40685) (t!310618 rules!2768))) b!3843625))

(declare-fun m!4398157 () Bool)

(assert (=> b!3843626 m!4398157))

(declare-fun m!4398159 () Bool)

(assert (=> b!3843626 m!4398159))

(declare-fun b!3843628 () Bool)

(declare-fun e!2374995 () Bool)

(assert (=> b!3843628 (= e!2374995 tp_is_empty!19341)))

(declare-fun b!3843630 () Bool)

(declare-fun tp!1164606 () Bool)

(assert (=> b!3843630 (= e!2374995 tp!1164606)))

(declare-fun b!3843631 () Bool)

(declare-fun tp!1164608 () Bool)

(declare-fun tp!1164604 () Bool)

(assert (=> b!3843631 (= e!2374995 (and tp!1164608 tp!1164604))))

(assert (=> b!3842998 (= tp!1164459 e!2374995)))

(declare-fun b!3843629 () Bool)

(declare-fun tp!1164605 () Bool)

(declare-fun tp!1164607 () Bool)

(assert (=> b!3843629 (= e!2374995 (and tp!1164605 tp!1164607))))

(assert (= (and b!3842998 ((_ is ElementMatch!11185) (regex!6280 (h!46105 rules!2768)))) b!3843628))

(assert (= (and b!3842998 ((_ is Concat!17696) (regex!6280 (h!46105 rules!2768)))) b!3843629))

(assert (= (and b!3842998 ((_ is Star!11185) (regex!6280 (h!46105 rules!2768)))) b!3843630))

(assert (= (and b!3842998 ((_ is Union!11185) (regex!6280 (h!46105 rules!2768)))) b!3843631))

(declare-fun b!3843635 () Bool)

(declare-fun b_free!102693 () Bool)

(declare-fun b_next!103397 () Bool)

(assert (=> b!3843635 (= b_free!102693 (not b_next!103397))))

(declare-fun t!310751 () Bool)

(declare-fun tb!221247 () Bool)

(assert (=> (and b!3843635 (= (toValue!8696 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toValue!8696 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310751) tb!221247))

(declare-fun result!269636 () Bool)

(assert (= result!269636 result!269492))

(assert (=> d!1139955 t!310751))

(declare-fun tp!1164612 () Bool)

(declare-fun b_and!286531 () Bool)

(assert (=> b!3843635 (= tp!1164612 (and (=> t!310751 result!269636) b_and!286531))))

(declare-fun b_free!102695 () Bool)

(declare-fun b_next!103399 () Bool)

(assert (=> b!3843635 (= b_free!102695 (not b_next!103399))))

(declare-fun t!310753 () Bool)

(declare-fun tb!221249 () Bool)

(assert (=> (and b!3843635 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273)))))) t!310753) tb!221249))

(declare-fun result!269638 () Bool)

(assert (= result!269638 result!269482))

(assert (=> b!3843121 t!310753))

(declare-fun tb!221251 () Bool)

(declare-fun t!310755 () Bool)

(assert (=> (and b!3843635 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 lt!1334083)))))) t!310755) tb!221251))

(declare-fun result!269640 () Bool)

(assert (= result!269640 result!269502))

(assert (=> d!1139957 t!310755))

(declare-fun t!310757 () Bool)

(declare-fun tb!221253 () Bool)

(assert (=> (and b!3843635 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72))))) t!310757) tb!221253))

(declare-fun result!269642 () Bool)

(assert (= result!269642 result!269510))

(assert (=> b!3843260 t!310757))

(declare-fun t!310759 () Bool)

(declare-fun tb!221255 () Bool)

(assert (=> (and b!3843635 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80))))) t!310759) tb!221255))

(declare-fun result!269644 () Bool)

(assert (= result!269644 result!269600))

(assert (=> b!3843573 t!310759))

(declare-fun tp!1164613 () Bool)

(declare-fun b_and!286533 () Bool)

(assert (=> b!3843635 (= tp!1164613 (and (=> t!310753 result!269638) (=> t!310755 result!269640) (=> t!310757 result!269642) (=> t!310759 result!269644) b_and!286533))))

(declare-fun e!2374998 () Bool)

(assert (=> b!3842995 (= tp!1164456 e!2374998)))

(declare-fun tp!1164609 () Bool)

(declare-fun e!2374999 () Bool)

(declare-fun e!2375001 () Bool)

(declare-fun b!3843634 () Bool)

(assert (=> b!3843634 (= e!2374999 (and tp!1164609 (inv!54824 (tag!7140 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (inv!54828 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) e!2375001))))

(declare-fun e!2375000 () Bool)

(declare-fun b!3843632 () Bool)

(declare-fun tp!1164611 () Bool)

(assert (=> b!3843632 (= e!2374998 (and (inv!54827 (h!46104 (t!310617 prefixTokens!80))) e!2375000 tp!1164611))))

(assert (=> b!3843635 (= e!2375001 (and tp!1164612 tp!1164613))))

(declare-fun b!3843633 () Bool)

(declare-fun tp!1164610 () Bool)

(assert (=> b!3843633 (= e!2375000 (and (inv!21 (value!199614 (h!46104 (t!310617 prefixTokens!80)))) e!2374999 tp!1164610))))

(assert (= b!3843634 b!3843635))

(assert (= b!3843633 b!3843634))

(assert (= b!3843632 b!3843633))

(assert (= (and b!3842995 ((_ is Cons!40684) (t!310617 prefixTokens!80))) b!3843632))

(declare-fun m!4398161 () Bool)

(assert (=> b!3843634 m!4398161))

(declare-fun m!4398163 () Bool)

(assert (=> b!3843634 m!4398163))

(declare-fun m!4398165 () Bool)

(assert (=> b!3843632 m!4398165))

(declare-fun m!4398167 () Bool)

(assert (=> b!3843633 m!4398167))

(declare-fun b!3843636 () Bool)

(declare-fun e!2375002 () Bool)

(declare-fun tp!1164614 () Bool)

(assert (=> b!3843636 (= e!2375002 (and tp_is_empty!19341 tp!1164614))))

(assert (=> b!3843026 (= tp!1164462 e!2375002)))

(assert (= (and b!3843026 ((_ is Cons!40682) (_2!23063 (v!38989 err!4273)))) b!3843636))

(declare-fun b!3843637 () Bool)

(declare-fun e!2375003 () Bool)

(declare-fun tp!1164615 () Bool)

(assert (=> b!3843637 (= e!2375003 (and tp_is_empty!19341 tp!1164615))))

(assert (=> b!3842996 (= tp!1164474 e!2375003)))

(assert (= (and b!3842996 ((_ is Cons!40682) (originalCharacters!6880 (h!46104 prefixTokens!80)))) b!3843637))

(declare-fun b!3843638 () Bool)

(declare-fun e!2375004 () Bool)

(declare-fun tp!1164616 () Bool)

(assert (=> b!3843638 (= e!2375004 (and tp_is_empty!19341 tp!1164616))))

(assert (=> b!3843027 (= tp!1164453 e!2375004)))

(assert (= (and b!3843027 ((_ is Cons!40682) (t!310615 prefix!426))) b!3843638))

(declare-fun b!3843639 () Bool)

(declare-fun e!2375005 () Bool)

(declare-fun tp!1164617 () Bool)

(assert (=> b!3843639 (= e!2375005 (and tp_is_empty!19341 tp!1164617))))

(assert (=> b!3843017 (= tp!1164463 e!2375005)))

(assert (= (and b!3843017 ((_ is Cons!40682) (t!310615 suffix!1176))) b!3843639))

(declare-fun b!3843640 () Bool)

(declare-fun e!2375006 () Bool)

(assert (=> b!3843640 (= e!2375006 tp_is_empty!19341)))

(declare-fun b!3843642 () Bool)

(declare-fun tp!1164620 () Bool)

(assert (=> b!3843642 (= e!2375006 tp!1164620)))

(declare-fun b!3843643 () Bool)

(declare-fun tp!1164622 () Bool)

(declare-fun tp!1164618 () Bool)

(assert (=> b!3843643 (= e!2375006 (and tp!1164622 tp!1164618))))

(assert (=> b!3843018 (= tp!1164466 e!2375006)))

(declare-fun b!3843641 () Bool)

(declare-fun tp!1164619 () Bool)

(declare-fun tp!1164621 () Bool)

(assert (=> b!3843641 (= e!2375006 (and tp!1164619 tp!1164621))))

(assert (= (and b!3843018 ((_ is ElementMatch!11185) (regex!6280 (rule!9120 (h!46104 prefixTokens!80))))) b!3843640))

(assert (= (and b!3843018 ((_ is Concat!17696) (regex!6280 (rule!9120 (h!46104 prefixTokens!80))))) b!3843641))

(assert (= (and b!3843018 ((_ is Star!11185) (regex!6280 (rule!9120 (h!46104 prefixTokens!80))))) b!3843642))

(assert (= (and b!3843018 ((_ is Union!11185) (regex!6280 (rule!9120 (h!46104 prefixTokens!80))))) b!3843643))

(declare-fun b!3843644 () Bool)

(declare-fun e!2375007 () Bool)

(assert (=> b!3843644 (= e!2375007 tp_is_empty!19341)))

(declare-fun b!3843646 () Bool)

(declare-fun tp!1164625 () Bool)

(assert (=> b!3843646 (= e!2375007 tp!1164625)))

(declare-fun b!3843647 () Bool)

(declare-fun tp!1164627 () Bool)

(declare-fun tp!1164623 () Bool)

(assert (=> b!3843647 (= e!2375007 (and tp!1164627 tp!1164623))))

(assert (=> b!3842997 (= tp!1164458 e!2375007)))

(declare-fun b!3843645 () Bool)

(declare-fun tp!1164624 () Bool)

(declare-fun tp!1164626 () Bool)

(assert (=> b!3843645 (= e!2375007 (and tp!1164624 tp!1164626))))

(assert (= (and b!3842997 ((_ is ElementMatch!11185) (regex!6280 (rule!9120 (h!46104 suffixTokens!72))))) b!3843644))

(assert (= (and b!3842997 ((_ is Concat!17696) (regex!6280 (rule!9120 (h!46104 suffixTokens!72))))) b!3843645))

(assert (= (and b!3842997 ((_ is Star!11185) (regex!6280 (rule!9120 (h!46104 suffixTokens!72))))) b!3843646))

(assert (= (and b!3842997 ((_ is Union!11185) (regex!6280 (rule!9120 (h!46104 suffixTokens!72))))) b!3843647))

(declare-fun b!3843648 () Bool)

(declare-fun e!2375008 () Bool)

(declare-fun tp!1164628 () Bool)

(assert (=> b!3843648 (= e!2375008 (and tp_is_empty!19341 tp!1164628))))

(assert (=> b!3843028 (= tp!1164461 e!2375008)))

(assert (= (and b!3843028 ((_ is Cons!40682) (originalCharacters!6880 (h!46104 suffixTokens!72)))) b!3843648))

(declare-fun b_lambda!112349 () Bool)

(assert (= b_lambda!112323 (or (and b!3843627 b_free!102691 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) (and b!3842994 b_free!102667 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) (and b!3843635 b_free!102695 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) (and b!3842992 b_free!102659) (and b!3843616 b_free!102687 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) (and b!3842993 b_free!102671 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) (and b!3843003 b_free!102663 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))))) b_lambda!112349)))

(declare-fun b_lambda!112351 () Bool)

(assert (= b_lambda!112347 (or (and b!3842993 b_free!102671) (and b!3843635 b_free!102695 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) (and b!3842992 b_free!102659 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) (and b!3843616 b_free!102687 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) (and b!3843003 b_free!102663 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) (and b!3843627 b_free!102691 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) (and b!3842994 b_free!102667 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))))) b_lambda!112351)))

(declare-fun b_lambda!112353 () Bool)

(assert (= b_lambda!112329 (or (and b!3843003 b_free!102663 (= (toChars!8555 (transformation!6280 (h!46105 rules!2768))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) (and b!3843635 b_free!102695 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 prefixTokens!80))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) (and b!3842994 b_free!102667) (and b!3842993 b_free!102671 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 prefixTokens!80)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) (and b!3842992 b_free!102659 (= (toChars!8555 (transformation!6280 (rule!9120 (_1!23063 (v!38989 err!4273))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) (and b!3843616 b_free!102687 (= (toChars!8555 (transformation!6280 (rule!9120 (h!46104 (t!310617 suffixTokens!72))))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) (and b!3843627 b_free!102691 (= (toChars!8555 (transformation!6280 (h!46105 (t!310618 rules!2768)))) (toChars!8555 (transformation!6280 (rule!9120 (h!46104 suffixTokens!72)))))) b_lambda!112353)))

(check-sat (not d!1139907) (not b!3843197) (not b!3843400) (not b!3843404) (not b!3843072) (not b!3843646) (not tb!221133) (not b_next!103399) (not b!3843139) (not b_lambda!112349) (not b!3843168) b_and!286445 (not b_lambda!112327) (not b!3843405) (not b!3843173) (not d!1139963) (not b!3843191) (not b!3843162) (not b!3843145) (not b!3843073) (not b!3843642) (not b_next!103395) (not b!3843113) (not d!1139931) (not b!3843086) (not b!3843146) (not b!3843615) (not b_next!103389) (not b!3843639) (not b!3843252) (not b!3843100) (not b!3843143) (not b!3843099) (not b_lambda!112351) (not b!3843250) (not b_lambda!112353) (not b_next!103361) b_and!286517 (not d!1139961) (not b!3843070) (not b!3843630) (not b!3843192) (not d!1140021) (not b!3843075) (not b!3843625) (not b!3843257) (not b!3843247) (not tb!221125) (not b!3843634) (not b!3843631) (not d!1139953) b_and!286523 (not bm!282004) (not b!3843388) (not b!3843406) b_and!286525 (not d!1139915) (not b!3843166) (not d!1140075) (not b!3843594) (not b!3843147) (not b!3843242) (not d!1140017) (not b_next!103393) (not b!3843138) (not d!1139951) (not b!3843574) (not b!3843261) (not b!3843596) (not b!3843253) (not b!3843569) b_and!286441 (not b!3843262) (not b!3843573) b_and!286529 (not b!3843632) (not b!3843148) (not b!3843122) (not b!3843643) (not b!3843254) (not b!3843187) (not b!3843171) (not b!3843389) (not b_next!103365) (not b!3843080) (not d!1139937) (not b!3843396) b_and!286439 (not b!3843577) (not b!3843381) (not b!3843570) (not b!3843397) (not d!1140019) (not b!3843190) (not d!1139943) (not d!1139947) (not b!3843071) (not b!3843172) (not d!1139945) (not b!3843241) (not b!3843141) (not b!3843629) (not d!1139939) (not b!3843393) b_and!286527 (not b!3843200) (not b!3843244) (not b!3843633) (not b!3843248) (not tb!221141) (not b_next!103391) (not b!3843595) (not d!1139935) (not b!3843137) (not d!1139977) (not b!3843256) (not b_lambda!112325) (not b!3843169) (not b!3843258) b_and!286521 (not b!3843383) b_and!286531 (not b!3843238) (not b!3843581) (not d!1139921) (not b!3843387) (not b!3843602) (not b_next!103373) tp_is_empty!19341 b_and!286443 (not d!1139957) b_and!286519 (not d!1140081) (not bm!281999) (not b!3843163) (not bm!282000) (not b!3843601) (not b!3843251) (not b!3843225) (not b!3843076) (not b!3843142) (not d!1139899) (not b_next!103369) (not b!3843637) (not b!3843575) (not b!3843645) (not b_next!103375) (not b!3843641) (not b!3843647) (not b!3843263) (not b!3843186) (not d!1139949) (not b!3843401) (not b!3843582) (not b!3843077) (not b_next!103397) (not d!1139925) (not b!3843240) (not b!3843614) (not b_next!103363) (not d!1139905) (not d!1140085) (not d!1139969) (not b!3843626) (not b!3843390) b_and!286533 (not tb!221219) (not b!3843167) (not b!3843201) (not b!3843578) (not b!3843613) (not b_next!103367) (not d!1139929) (not b!3843648) (not d!1139901) (not b!3843249) (not b!3843386) (not d!1139919) (not d!1139895) (not b!3843144) (not b!3843391) (not b!3843112) (not d!1140025) (not tb!221117) (not b!3843638) (not b!3843074) (not bm!281998) (not d!1139975) (not b!3843127) (not d!1139909) (not b!3843636) (not b_next!103371) (not b!3843115) (not b!3843260) (not b!3843170) (not b!3843089) (not b!3843382) (not b!3843185) (not b!3843121) b_and!286515 (not d!1139923) (not b!3843384) (not b!3843579))
(check-sat (not b_next!103399) b_and!286445 (not b_next!103395) (not b_next!103389) (not b_next!103393) b_and!286527 (not b_next!103391) (not b_next!103369) (not b_next!103375) (not b_next!103397) (not b_next!103363) b_and!286533 (not b_next!103367) (not b_next!103371) b_and!286515 (not b_next!103361) b_and!286517 b_and!286523 b_and!286525 b_and!286441 b_and!286529 b_and!286439 (not b_next!103365) b_and!286521 b_and!286531 (not b_next!103373) b_and!286519 b_and!286443)
