; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!158218 () Bool)

(assert start!158218)

(declare-fun b!1647647 () Bool)

(declare-fun b_free!44743 () Bool)

(declare-fun b_next!45447 () Bool)

(assert (=> b!1647647 (= b_free!44743 (not b_next!45447))))

(declare-fun tp!477203 () Bool)

(declare-fun b_and!116989 () Bool)

(assert (=> b!1647647 (= tp!477203 b_and!116989)))

(declare-fun b_free!44745 () Bool)

(declare-fun b_next!45449 () Bool)

(assert (=> b!1647647 (= b_free!44745 (not b_next!45449))))

(declare-fun tp!477204 () Bool)

(declare-fun b_and!116991 () Bool)

(assert (=> b!1647647 (= tp!477204 b_and!116991)))

(declare-fun b!1647637 () Bool)

(declare-fun b_free!44747 () Bool)

(declare-fun b_next!45451 () Bool)

(assert (=> b!1647637 (= b_free!44747 (not b_next!45451))))

(declare-fun tp!477210 () Bool)

(declare-fun b_and!116993 () Bool)

(assert (=> b!1647637 (= tp!477210 b_and!116993)))

(declare-fun b_free!44749 () Bool)

(declare-fun b_next!45453 () Bool)

(assert (=> b!1647637 (= b_free!44749 (not b_next!45453))))

(declare-fun tp!477206 () Bool)

(declare-fun b_and!116995 () Bool)

(assert (=> b!1647637 (= tp!477206 b_and!116995)))

(declare-fun b!1647635 () Bool)

(declare-fun res!738230 () Bool)

(declare-fun e!1056630 () Bool)

(assert (=> b!1647635 (=> (not res!738230) (not e!1056630))))

(declare-datatypes ((List!18241 0))(
  ( (Nil!18171) (Cons!18171 (h!23572 (_ BitVec 16)) (t!150658 List!18241)) )
))
(declare-datatypes ((TokenValue!3295 0))(
  ( (FloatLiteralValue!6590 (text!23510 List!18241)) (TokenValueExt!3294 (__x!11892 Int)) (Broken!16475 (value!100989 List!18241)) (Object!3364) (End!3295) (Def!3295) (Underscore!3295) (Match!3295) (Else!3295) (Error!3295) (Case!3295) (If!3295) (Extends!3295) (Abstract!3295) (Class!3295) (Val!3295) (DelimiterValue!6590 (del!3355 List!18241)) (KeywordValue!3301 (value!100990 List!18241)) (CommentValue!6590 (value!100991 List!18241)) (WhitespaceValue!6590 (value!100992 List!18241)) (IndentationValue!3295 (value!100993 List!18241)) (String!20806) (Int32!3295) (Broken!16476 (value!100994 List!18241)) (Boolean!3296) (Unit!30182) (OperatorValue!3298 (op!3355 List!18241)) (IdentifierValue!6590 (value!100995 List!18241)) (IdentifierValue!6591 (value!100996 List!18241)) (WhitespaceValue!6591 (value!100997 List!18241)) (True!6590) (False!6590) (Broken!16477 (value!100998 List!18241)) (Broken!16478 (value!100999 List!18241)) (True!6591) (RightBrace!3295) (RightBracket!3295) (Colon!3295) (Null!3295) (Comma!3295) (LeftBracket!3295) (False!6591) (LeftBrace!3295) (ImaginaryLiteralValue!3295 (text!23511 List!18241)) (StringLiteralValue!9885 (value!101000 List!18241)) (EOFValue!3295 (value!101001 List!18241)) (IdentValue!3295 (value!101002 List!18241)) (DelimiterValue!6591 (value!101003 List!18241)) (DedentValue!3295 (value!101004 List!18241)) (NewLineValue!3295 (value!101005 List!18241)) (IntegerValue!9885 (value!101006 (_ BitVec 32)) (text!23512 List!18241)) (IntegerValue!9886 (value!101007 Int) (text!23513 List!18241)) (Times!3295) (Or!3295) (Equal!3295) (Minus!3295) (Broken!16479 (value!101008 List!18241)) (And!3295) (Div!3295) (LessEqual!3295) (Mod!3295) (Concat!7828) (Not!3295) (Plus!3295) (SpaceValue!3295 (value!101009 List!18241)) (IntegerValue!9887 (value!101010 Int) (text!23514 List!18241)) (StringLiteralValue!9886 (text!23515 List!18241)) (FloatLiteralValue!6591 (text!23516 List!18241)) (BytesLiteralValue!3295 (value!101011 List!18241)) (CommentValue!6591 (value!101012 List!18241)) (StringLiteralValue!9887 (value!101013 List!18241)) (ErrorTokenValue!3295 (msg!3356 List!18241)) )
))
(declare-datatypes ((C!9240 0))(
  ( (C!9241 (val!5216 Int)) )
))
(declare-datatypes ((List!18242 0))(
  ( (Nil!18172) (Cons!18172 (h!23573 C!9240) (t!150659 List!18242)) )
))
(declare-datatypes ((IArray!12121 0))(
  ( (IArray!12122 (innerList!6118 List!18242)) )
))
(declare-datatypes ((Conc!6058 0))(
  ( (Node!6058 (left!14566 Conc!6058) (right!14896 Conc!6058) (csize!12346 Int) (cheight!6269 Int)) (Leaf!8881 (xs!8894 IArray!12121) (csize!12347 Int)) (Empty!6058) )
))
(declare-datatypes ((BalanceConc!12060 0))(
  ( (BalanceConc!12061 (c!267991 Conc!6058)) )
))
(declare-datatypes ((Regex!4533 0))(
  ( (ElementMatch!4533 (c!267992 C!9240)) (Concat!7829 (regOne!9578 Regex!4533) (regTwo!9578 Regex!4533)) (EmptyExpr!4533) (Star!4533 (reg!4862 Regex!4533)) (EmptyLang!4533) (Union!4533 (regOne!9579 Regex!4533) (regTwo!9579 Regex!4533)) )
))
(declare-datatypes ((String!20807 0))(
  ( (String!20808 (value!101014 String)) )
))
(declare-datatypes ((TokenValueInjection!6250 0))(
  ( (TokenValueInjection!6251 (toValue!4652 Int) (toChars!4511 Int)) )
))
(declare-datatypes ((Rule!6210 0))(
  ( (Rule!6211 (regex!3205 Regex!4533) (tag!3485 String!20807) (isSeparator!3205 Bool) (transformation!3205 TokenValueInjection!6250)) )
))
(declare-datatypes ((List!18243 0))(
  ( (Nil!18173) (Cons!18173 (h!23574 Rule!6210) (t!150660 List!18243)) )
))
(declare-fun rules!1846 () List!18243)

(declare-fun isEmpty!11196 (List!18243) Bool)

(assert (=> b!1647635 (= res!738230 (not (isEmpty!11196 rules!1846)))))

(declare-fun b!1647636 () Bool)

(declare-fun e!1056627 () Bool)

(declare-fun e!1056628 () Bool)

(declare-fun tp!477209 () Bool)

(assert (=> b!1647636 (= e!1056627 (and e!1056628 tp!477209))))

(declare-fun e!1056620 () Bool)

(assert (=> b!1647637 (= e!1056620 (and tp!477210 tp!477206))))

(declare-fun b!1647638 () Bool)

(declare-fun res!738233 () Bool)

(assert (=> b!1647638 (=> (not res!738233) (not e!1056630))))

(declare-datatypes ((LexerInterface!2834 0))(
  ( (LexerInterfaceExt!2831 (__x!11893 Int)) (Lexer!2832) )
))
(declare-fun thiss!17113 () LexerInterface!2834)

(declare-datatypes ((Token!5976 0))(
  ( (Token!5977 (value!101015 TokenValue!3295) (rule!5063 Rule!6210) (size!14474 Int) (originalCharacters!4019 List!18242)) )
))
(declare-datatypes ((List!18244 0))(
  ( (Nil!18174) (Cons!18174 (h!23575 Token!5976) (t!150661 List!18244)) )
))
(declare-fun tokens!457 () List!18244)

(declare-fun tokensListTwoByTwoPredicateSeparableList!527 (LexerInterface!2834 List!18244 List!18243) Bool)

(assert (=> b!1647638 (= res!738233 (tokensListTwoByTwoPredicateSeparableList!527 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1647639 () Bool)

(declare-fun res!738235 () Bool)

(assert (=> b!1647639 (=> (not res!738235) (not e!1056630))))

(declare-fun rulesProduceEachTokenIndividuallyList!1036 (LexerInterface!2834 List!18243 List!18244) Bool)

(assert (=> b!1647639 (= res!738235 (rulesProduceEachTokenIndividuallyList!1036 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1647640 () Bool)

(declare-fun res!738228 () Bool)

(declare-fun e!1056621 () Bool)

(assert (=> b!1647640 (=> res!738228 e!1056621)))

(declare-fun lt!609635 () List!18242)

(declare-datatypes ((IArray!12123 0))(
  ( (IArray!12124 (innerList!6119 List!18244)) )
))
(declare-datatypes ((Conc!6059 0))(
  ( (Node!6059 (left!14567 Conc!6059) (right!14897 Conc!6059) (csize!12348 Int) (cheight!6270 Int)) (Leaf!8882 (xs!8895 IArray!12123) (csize!12349 Int)) (Empty!6059) )
))
(declare-datatypes ((BalanceConc!12062 0))(
  ( (BalanceConc!12063 (c!267993 Conc!6059)) )
))
(declare-fun isEmpty!11197 (BalanceConc!12062) Bool)

(declare-datatypes ((tuple2!17844 0))(
  ( (tuple2!17845 (_1!10324 BalanceConc!12062) (_2!10324 BalanceConc!12060)) )
))
(declare-fun lex!1318 (LexerInterface!2834 List!18243 BalanceConc!12060) tuple2!17844)

(declare-fun seqFromList!2149 (List!18242) BalanceConc!12060)

(assert (=> b!1647640 (= res!738228 (isEmpty!11197 (_1!10324 (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635)))))))

(declare-fun e!1056622 () Bool)

(declare-fun tp!477207 () Bool)

(declare-fun b!1647641 () Bool)

(declare-fun e!1056616 () Bool)

(declare-fun inv!23536 (Token!5976) Bool)

(assert (=> b!1647641 (= e!1056616 (and (inv!23536 (h!23575 tokens!457)) e!1056622 tp!477207))))

(declare-fun b!1647642 () Bool)

(declare-fun e!1056624 () Bool)

(assert (=> b!1647642 (= e!1056630 e!1056624)))

(declare-fun res!738227 () Bool)

(assert (=> b!1647642 (=> (not res!738227) (not e!1056624))))

(declare-fun lt!609637 () List!18242)

(declare-fun lt!609641 () List!18242)

(assert (=> b!1647642 (= res!738227 (= lt!609637 lt!609641))))

(declare-fun lt!609652 () List!18242)

(declare-fun ++!4904 (List!18242 List!18242) List!18242)

(assert (=> b!1647642 (= lt!609641 (++!4904 lt!609635 lt!609652))))

(declare-fun lt!609633 () BalanceConc!12060)

(declare-fun list!7217 (BalanceConc!12060) List!18242)

(assert (=> b!1647642 (= lt!609637 (list!7217 lt!609633))))

(declare-fun lt!609651 () BalanceConc!12060)

(assert (=> b!1647642 (= lt!609652 (list!7217 lt!609651))))

(declare-fun charsOf!1854 (Token!5976) BalanceConc!12060)

(assert (=> b!1647642 (= lt!609635 (list!7217 (charsOf!1854 (h!23575 tokens!457))))))

(declare-fun lt!609647 () tuple2!17844)

(assert (=> b!1647642 (= lt!609647 (lex!1318 thiss!17113 rules!1846 lt!609651))))

(declare-fun lt!609649 () BalanceConc!12062)

(declare-fun print!1365 (LexerInterface!2834 BalanceConc!12062) BalanceConc!12060)

(assert (=> b!1647642 (= lt!609651 (print!1365 thiss!17113 lt!609649))))

(declare-fun seqFromList!2150 (List!18244) BalanceConc!12062)

(assert (=> b!1647642 (= lt!609649 (seqFromList!2150 (t!150661 tokens!457)))))

(assert (=> b!1647642 (= lt!609633 (print!1365 thiss!17113 (seqFromList!2150 tokens!457)))))

(declare-fun b!1647643 () Bool)

(declare-fun res!738236 () Bool)

(assert (=> b!1647643 (=> (not res!738236) (not e!1056630))))

(get-info :version)

(assert (=> b!1647643 (= res!738236 (and (not ((_ is Nil!18174) tokens!457)) (not ((_ is Nil!18174) (t!150661 tokens!457)))))))

(declare-fun b!1647644 () Bool)

(declare-fun res!738231 () Bool)

(declare-fun e!1056626 () Bool)

(assert (=> b!1647644 (=> res!738231 e!1056626)))

(declare-fun separableTokensPredicate!774 (LexerInterface!2834 Token!5976 Token!5976 List!18243) Bool)

(assert (=> b!1647644 (= res!738231 (not (separableTokensPredicate!774 thiss!17113 (h!23575 tokens!457) (h!23575 (t!150661 tokens!457)) rules!1846)))))

(declare-fun b!1647645 () Bool)

(declare-fun res!738225 () Bool)

(assert (=> b!1647645 (=> res!738225 e!1056621)))

(declare-fun rulesProduceIndividualToken!1482 (LexerInterface!2834 List!18243 Token!5976) Bool)

(assert (=> b!1647645 (= res!738225 (not (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 tokens!457))))))

(declare-fun res!738234 () Bool)

(assert (=> start!158218 (=> (not res!738234) (not e!1056630))))

(assert (=> start!158218 (= res!738234 ((_ is Lexer!2832) thiss!17113))))

(assert (=> start!158218 e!1056630))

(assert (=> start!158218 true))

(assert (=> start!158218 e!1056627))

(assert (=> start!158218 e!1056616))

(declare-fun b!1647646 () Bool)

(declare-fun e!1056619 () Bool)

(assert (=> b!1647646 (= e!1056619 e!1056626)))

(declare-fun res!738224 () Bool)

(assert (=> b!1647646 (=> res!738224 e!1056626)))

(declare-fun lt!609643 () List!18244)

(declare-fun lt!609650 () List!18244)

(declare-fun lt!609648 () List!18244)

(assert (=> b!1647646 (= res!738224 (or (not (= lt!609650 lt!609643)) (not (= lt!609643 lt!609648))))))

(declare-fun list!7218 (BalanceConc!12062) List!18244)

(assert (=> b!1647646 (= lt!609643 (list!7218 lt!609649))))

(assert (=> b!1647646 (= lt!609650 lt!609648)))

(declare-fun prepend!763 (BalanceConc!12062 Token!5976) BalanceConc!12062)

(assert (=> b!1647646 (= lt!609648 (list!7218 (prepend!763 (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (h!23575 (t!150661 tokens!457)))))))

(declare-datatypes ((Unit!30183 0))(
  ( (Unit!30184) )
))
(declare-fun lt!609634 () Unit!30183)

(declare-fun seqFromListBHdTlConstructive!280 (Token!5976 List!18244 BalanceConc!12062) Unit!30183)

(assert (=> b!1647646 (= lt!609634 (seqFromListBHdTlConstructive!280 (h!23575 (t!150661 tokens!457)) (t!150661 (t!150661 tokens!457)) (_1!10324 lt!609647)))))

(declare-fun e!1056617 () Bool)

(assert (=> b!1647647 (= e!1056617 (and tp!477203 tp!477204))))

(declare-fun b!1647648 () Bool)

(declare-fun res!738229 () Bool)

(assert (=> b!1647648 (=> (not res!738229) (not e!1056630))))

(declare-fun rulesInvariant!2503 (LexerInterface!2834 List!18243) Bool)

(assert (=> b!1647648 (= res!738229 (rulesInvariant!2503 thiss!17113 rules!1846))))

(declare-fun b!1647649 () Bool)

(declare-fun tp!477202 () Bool)

(declare-fun inv!23533 (String!20807) Bool)

(declare-fun inv!23537 (TokenValueInjection!6250) Bool)

(assert (=> b!1647649 (= e!1056628 (and tp!477202 (inv!23533 (tag!3485 (h!23574 rules!1846))) (inv!23537 (transformation!3205 (h!23574 rules!1846))) e!1056617))))

(declare-fun b!1647650 () Bool)

(assert (=> b!1647650 (= e!1056624 (not e!1056619))))

(declare-fun res!738226 () Bool)

(assert (=> b!1647650 (=> res!738226 e!1056619)))

(assert (=> b!1647650 (= res!738226 (not (= lt!609650 (t!150661 tokens!457))))))

(assert (=> b!1647650 (= lt!609650 (list!7218 (_1!10324 lt!609647)))))

(declare-fun lt!609640 () Unit!30183)

(declare-fun theoremInvertabilityWhenTokenListSeparable!277 (LexerInterface!2834 List!18243 List!18244) Unit!30183)

(assert (=> b!1647650 (= lt!609640 (theoremInvertabilityWhenTokenListSeparable!277 thiss!17113 rules!1846 (t!150661 tokens!457)))))

(declare-fun isPrefix!1463 (List!18242 List!18242) Bool)

(assert (=> b!1647650 (isPrefix!1463 lt!609635 lt!609641)))

(declare-fun lt!609636 () Unit!30183)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!988 (List!18242 List!18242) Unit!30183)

(assert (=> b!1647650 (= lt!609636 (lemmaConcatTwoListThenFirstIsPrefix!988 lt!609635 lt!609652))))

(declare-fun e!1056618 () Bool)

(declare-fun tp!477205 () Bool)

(declare-fun b!1647651 () Bool)

(declare-fun inv!21 (TokenValue!3295) Bool)

(assert (=> b!1647651 (= e!1056622 (and (inv!21 (value!101015 (h!23575 tokens!457))) e!1056618 tp!477205))))

(declare-fun b!1647652 () Bool)

(assert (=> b!1647652 (= e!1056626 e!1056621)))

(declare-fun res!738232 () Bool)

(assert (=> b!1647652 (=> res!738232 e!1056621)))

(declare-fun lt!609644 () List!18242)

(declare-fun lt!609646 () List!18242)

(assert (=> b!1647652 (= res!738232 (or (not (= lt!609646 lt!609644)) (not (= lt!609644 lt!609635)) (not (= lt!609646 lt!609635))))))

(declare-fun printList!947 (LexerInterface!2834 List!18244) List!18242)

(assert (=> b!1647652 (= lt!609644 (printList!947 thiss!17113 (Cons!18174 (h!23575 tokens!457) Nil!18174)))))

(declare-fun lt!609645 () BalanceConc!12060)

(assert (=> b!1647652 (= lt!609646 (list!7217 lt!609645))))

(declare-fun lt!609639 () BalanceConc!12062)

(declare-fun printTailRec!885 (LexerInterface!2834 BalanceConc!12062 Int BalanceConc!12060) BalanceConc!12060)

(assert (=> b!1647652 (= lt!609645 (printTailRec!885 thiss!17113 lt!609639 0 (BalanceConc!12061 Empty!6058)))))

(assert (=> b!1647652 (= lt!609645 (print!1365 thiss!17113 lt!609639))))

(declare-fun singletonSeq!1681 (Token!5976) BalanceConc!12062)

(assert (=> b!1647652 (= lt!609639 (singletonSeq!1681 (h!23575 tokens!457)))))

(declare-datatypes ((tuple2!17846 0))(
  ( (tuple2!17847 (_1!10325 Token!5976) (_2!10325 List!18242)) )
))
(declare-datatypes ((Option!3444 0))(
  ( (None!3443) (Some!3443 (v!24594 tuple2!17846)) )
))
(declare-fun lt!609642 () Option!3444)

(declare-fun maxPrefix!1396 (LexerInterface!2834 List!18243 List!18242) Option!3444)

(assert (=> b!1647652 (= lt!609642 (maxPrefix!1396 thiss!17113 rules!1846 lt!609637))))

(declare-fun b!1647653 () Bool)

(declare-fun isDefined!2799 (Option!3444) Bool)

(assert (=> b!1647653 (= e!1056621 (isDefined!2799 lt!609642))))

(declare-fun lt!609638 () Unit!30183)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!402 (LexerInterface!2834 List!18243 List!18242 List!18242) Unit!30183)

(assert (=> b!1647653 (= lt!609638 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!402 thiss!17113 rules!1846 lt!609635 lt!609652))))

(declare-fun b!1647654 () Bool)

(declare-fun tp!477208 () Bool)

(assert (=> b!1647654 (= e!1056618 (and tp!477208 (inv!23533 (tag!3485 (rule!5063 (h!23575 tokens!457)))) (inv!23537 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) e!1056620))))

(assert (= (and start!158218 res!738234) b!1647635))

(assert (= (and b!1647635 res!738230) b!1647648))

(assert (= (and b!1647648 res!738229) b!1647639))

(assert (= (and b!1647639 res!738235) b!1647638))

(assert (= (and b!1647638 res!738233) b!1647643))

(assert (= (and b!1647643 res!738236) b!1647642))

(assert (= (and b!1647642 res!738227) b!1647650))

(assert (= (and b!1647650 (not res!738226)) b!1647646))

(assert (= (and b!1647646 (not res!738224)) b!1647644))

(assert (= (and b!1647644 (not res!738231)) b!1647652))

(assert (= (and b!1647652 (not res!738232)) b!1647645))

(assert (= (and b!1647645 (not res!738225)) b!1647640))

(assert (= (and b!1647640 (not res!738228)) b!1647653))

(assert (= b!1647649 b!1647647))

(assert (= b!1647636 b!1647649))

(assert (= (and start!158218 ((_ is Cons!18173) rules!1846)) b!1647636))

(assert (= b!1647654 b!1647637))

(assert (= b!1647651 b!1647654))

(assert (= b!1647641 b!1647651))

(assert (= (and start!158218 ((_ is Cons!18174) tokens!457)) b!1647641))

(declare-fun m!1994393 () Bool)

(assert (=> b!1647638 m!1994393))

(declare-fun m!1994395 () Bool)

(assert (=> b!1647652 m!1994395))

(declare-fun m!1994397 () Bool)

(assert (=> b!1647652 m!1994397))

(declare-fun m!1994399 () Bool)

(assert (=> b!1647652 m!1994399))

(declare-fun m!1994401 () Bool)

(assert (=> b!1647652 m!1994401))

(declare-fun m!1994403 () Bool)

(assert (=> b!1647652 m!1994403))

(declare-fun m!1994405 () Bool)

(assert (=> b!1647652 m!1994405))

(declare-fun m!1994407 () Bool)

(assert (=> b!1647653 m!1994407))

(declare-fun m!1994409 () Bool)

(assert (=> b!1647653 m!1994409))

(declare-fun m!1994411 () Bool)

(assert (=> b!1647645 m!1994411))

(declare-fun m!1994413 () Bool)

(assert (=> b!1647654 m!1994413))

(declare-fun m!1994415 () Bool)

(assert (=> b!1647654 m!1994415))

(declare-fun m!1994417 () Bool)

(assert (=> b!1647640 m!1994417))

(assert (=> b!1647640 m!1994417))

(declare-fun m!1994419 () Bool)

(assert (=> b!1647640 m!1994419))

(declare-fun m!1994421 () Bool)

(assert (=> b!1647640 m!1994421))

(declare-fun m!1994423 () Bool)

(assert (=> b!1647650 m!1994423))

(declare-fun m!1994425 () Bool)

(assert (=> b!1647650 m!1994425))

(declare-fun m!1994427 () Bool)

(assert (=> b!1647650 m!1994427))

(declare-fun m!1994429 () Bool)

(assert (=> b!1647650 m!1994429))

(declare-fun m!1994431 () Bool)

(assert (=> b!1647639 m!1994431))

(declare-fun m!1994433 () Bool)

(assert (=> b!1647646 m!1994433))

(declare-fun m!1994435 () Bool)

(assert (=> b!1647646 m!1994435))

(declare-fun m!1994437 () Bool)

(assert (=> b!1647646 m!1994437))

(declare-fun m!1994439 () Bool)

(assert (=> b!1647646 m!1994439))

(declare-fun m!1994441 () Bool)

(assert (=> b!1647646 m!1994441))

(assert (=> b!1647646 m!1994437))

(assert (=> b!1647646 m!1994439))

(declare-fun m!1994443 () Bool)

(assert (=> b!1647644 m!1994443))

(declare-fun m!1994445 () Bool)

(assert (=> b!1647635 m!1994445))

(declare-fun m!1994447 () Bool)

(assert (=> b!1647642 m!1994447))

(declare-fun m!1994449 () Bool)

(assert (=> b!1647642 m!1994449))

(declare-fun m!1994451 () Bool)

(assert (=> b!1647642 m!1994451))

(declare-fun m!1994453 () Bool)

(assert (=> b!1647642 m!1994453))

(declare-fun m!1994455 () Bool)

(assert (=> b!1647642 m!1994455))

(declare-fun m!1994457 () Bool)

(assert (=> b!1647642 m!1994457))

(assert (=> b!1647642 m!1994449))

(declare-fun m!1994459 () Bool)

(assert (=> b!1647642 m!1994459))

(assert (=> b!1647642 m!1994455))

(declare-fun m!1994461 () Bool)

(assert (=> b!1647642 m!1994461))

(declare-fun m!1994463 () Bool)

(assert (=> b!1647642 m!1994463))

(declare-fun m!1994465 () Bool)

(assert (=> b!1647642 m!1994465))

(declare-fun m!1994467 () Bool)

(assert (=> b!1647641 m!1994467))

(declare-fun m!1994469 () Bool)

(assert (=> b!1647648 m!1994469))

(declare-fun m!1994471 () Bool)

(assert (=> b!1647651 m!1994471))

(declare-fun m!1994473 () Bool)

(assert (=> b!1647649 m!1994473))

(declare-fun m!1994475 () Bool)

(assert (=> b!1647649 m!1994475))

(check-sat (not b!1647642) (not b_next!45453) (not b!1647641) b_and!116991 (not b_next!45447) (not b!1647654) (not b!1647646) (not b!1647644) (not b!1647648) (not b!1647636) (not b!1647650) (not b!1647652) (not b_next!45451) (not b!1647635) (not b!1647653) (not b!1647645) (not b!1647639) b_and!116995 (not b!1647651) (not b_next!45449) (not b!1647640) (not b!1647649) b_and!116989 (not b!1647638) b_and!116993)
(check-sat (not b_next!45453) b_and!116991 b_and!116995 (not b_next!45447) (not b_next!45449) b_and!116989 b_and!116993 (not b_next!45451))
(get-model)

(declare-fun d!496661 () Bool)

(declare-fun isEmpty!11202 (Option!3444) Bool)

(assert (=> d!496661 (= (isDefined!2799 lt!609642) (not (isEmpty!11202 lt!609642)))))

(declare-fun bs!396261 () Bool)

(assert (= bs!396261 d!496661))

(declare-fun m!1994483 () Bool)

(assert (=> bs!396261 m!1994483))

(assert (=> b!1647653 d!496661))

(declare-fun b!1647737 () Bool)

(declare-fun e!1056672 () Unit!30183)

(declare-fun Unit!30187 () Unit!30183)

(assert (=> b!1647737 (= e!1056672 Unit!30187)))

(declare-fun b!1647736 () Bool)

(declare-fun Unit!30188 () Unit!30183)

(assert (=> b!1647736 (= e!1056672 Unit!30188)))

(declare-fun lt!609747 () List!18242)

(assert (=> b!1647736 (= lt!609747 (++!4904 lt!609635 lt!609652))))

(declare-fun lt!609745 () Unit!30183)

(declare-fun lt!609743 () Token!5976)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!204 (LexerInterface!2834 Rule!6210 List!18243 List!18242) Unit!30183)

(assert (=> b!1647736 (= lt!609745 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!204 thiss!17113 (rule!5063 lt!609743) rules!1846 lt!609747))))

(declare-fun maxPrefixOneRule!805 (LexerInterface!2834 Rule!6210 List!18242) Option!3444)

(assert (=> b!1647736 (isEmpty!11202 (maxPrefixOneRule!805 thiss!17113 (rule!5063 lt!609743) lt!609747))))

(declare-fun lt!609740 () Unit!30183)

(assert (=> b!1647736 (= lt!609740 lt!609745)))

(declare-fun lt!609742 () List!18242)

(assert (=> b!1647736 (= lt!609742 (list!7217 (charsOf!1854 lt!609743)))))

(declare-fun lt!609750 () Unit!30183)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!200 (LexerInterface!2834 Rule!6210 List!18242 List!18242) Unit!30183)

(assert (=> b!1647736 (= lt!609750 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!200 thiss!17113 (rule!5063 lt!609743) lt!609742 (++!4904 lt!609635 lt!609652)))))

(declare-fun matchR!2026 (Regex!4533 List!18242) Bool)

(assert (=> b!1647736 (not (matchR!2026 (regex!3205 (rule!5063 lt!609743)) lt!609742))))

(declare-fun lt!609735 () Unit!30183)

(assert (=> b!1647736 (= lt!609735 lt!609750)))

(assert (=> b!1647736 false))

(declare-fun e!1056671 () Bool)

(declare-fun b!1647735 () Bool)

(declare-datatypes ((Option!3446 0))(
  ( (None!3445) (Some!3445 (v!24602 Rule!6210)) )
))
(declare-fun get!5287 (Option!3446) Rule!6210)

(declare-fun getRuleFromTag!310 (LexerInterface!2834 List!18243 String!20807) Option!3446)

(assert (=> b!1647735 (= e!1056671 (= (rule!5063 lt!609743) (get!5287 (getRuleFromTag!310 thiss!17113 rules!1846 (tag!3485 (rule!5063 lt!609743))))))))

(declare-fun d!496663 () Bool)

(assert (=> d!496663 (isDefined!2799 (maxPrefix!1396 thiss!17113 rules!1846 (++!4904 lt!609635 lt!609652)))))

(declare-fun lt!609736 () Unit!30183)

(assert (=> d!496663 (= lt!609736 e!1056672)))

(declare-fun c!268008 () Bool)

(assert (=> d!496663 (= c!268008 (isEmpty!11202 (maxPrefix!1396 thiss!17113 rules!1846 (++!4904 lt!609635 lt!609652))))))

(declare-fun lt!609741 () Unit!30183)

(declare-fun lt!609737 () Unit!30183)

(assert (=> d!496663 (= lt!609741 lt!609737)))

(assert (=> d!496663 e!1056671))

(declare-fun res!738290 () Bool)

(assert (=> d!496663 (=> (not res!738290) (not e!1056671))))

(declare-fun isDefined!2801 (Option!3446) Bool)

(assert (=> d!496663 (= res!738290 (isDefined!2801 (getRuleFromTag!310 thiss!17113 rules!1846 (tag!3485 (rule!5063 lt!609743)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!310 (LexerInterface!2834 List!18243 List!18242 Token!5976) Unit!30183)

(assert (=> d!496663 (= lt!609737 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!310 thiss!17113 rules!1846 lt!609635 lt!609743))))

(declare-fun lt!609749 () Unit!30183)

(declare-fun lt!609738 () Unit!30183)

(assert (=> d!496663 (= lt!609749 lt!609738)))

(declare-fun lt!609739 () List!18242)

(assert (=> d!496663 (isPrefix!1463 lt!609739 (++!4904 lt!609635 lt!609652))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!196 (List!18242 List!18242 List!18242) Unit!30183)

(assert (=> d!496663 (= lt!609738 (lemmaPrefixStaysPrefixWhenAddingToSuffix!196 lt!609739 lt!609635 lt!609652))))

(assert (=> d!496663 (= lt!609739 (list!7217 (charsOf!1854 lt!609743)))))

(declare-fun lt!609748 () Unit!30183)

(declare-fun lt!609751 () Unit!30183)

(assert (=> d!496663 (= lt!609748 lt!609751)))

(declare-fun lt!609746 () List!18242)

(declare-fun lt!609744 () List!18242)

(assert (=> d!496663 (isPrefix!1463 lt!609746 (++!4904 lt!609746 lt!609744))))

(assert (=> d!496663 (= lt!609751 (lemmaConcatTwoListThenFirstIsPrefix!988 lt!609746 lt!609744))))

(declare-fun get!5288 (Option!3444) tuple2!17846)

(assert (=> d!496663 (= lt!609744 (_2!10325 (get!5288 (maxPrefix!1396 thiss!17113 rules!1846 lt!609635))))))

(assert (=> d!496663 (= lt!609746 (list!7217 (charsOf!1854 lt!609743)))))

(declare-fun head!3611 (List!18244) Token!5976)

(assert (=> d!496663 (= lt!609743 (head!3611 (list!7218 (_1!10324 (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635))))))))

(assert (=> d!496663 (not (isEmpty!11196 rules!1846))))

(assert (=> d!496663 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!402 thiss!17113 rules!1846 lt!609635 lt!609652) lt!609736)))

(declare-fun b!1647734 () Bool)

(declare-fun res!738291 () Bool)

(assert (=> b!1647734 (=> (not res!738291) (not e!1056671))))

(assert (=> b!1647734 (= res!738291 (matchR!2026 (regex!3205 (get!5287 (getRuleFromTag!310 thiss!17113 rules!1846 (tag!3485 (rule!5063 lt!609743))))) (list!7217 (charsOf!1854 lt!609743))))))

(assert (= (and d!496663 res!738290) b!1647734))

(assert (= (and b!1647734 res!738291) b!1647735))

(assert (= (and d!496663 c!268008) b!1647736))

(assert (= (and d!496663 (not c!268008)) b!1647737))

(declare-fun m!1994609 () Bool)

(assert (=> b!1647736 m!1994609))

(assert (=> b!1647736 m!1994465))

(declare-fun m!1994611 () Bool)

(assert (=> b!1647736 m!1994611))

(declare-fun m!1994613 () Bool)

(assert (=> b!1647736 m!1994613))

(declare-fun m!1994615 () Bool)

(assert (=> b!1647736 m!1994615))

(declare-fun m!1994617 () Bool)

(assert (=> b!1647736 m!1994617))

(declare-fun m!1994619 () Bool)

(assert (=> b!1647736 m!1994619))

(assert (=> b!1647736 m!1994611))

(assert (=> b!1647736 m!1994465))

(declare-fun m!1994621 () Bool)

(assert (=> b!1647736 m!1994621))

(assert (=> b!1647736 m!1994615))

(declare-fun m!1994623 () Bool)

(assert (=> b!1647735 m!1994623))

(assert (=> b!1647735 m!1994623))

(declare-fun m!1994625 () Bool)

(assert (=> b!1647735 m!1994625))

(assert (=> d!496663 m!1994417))

(assert (=> d!496663 m!1994445))

(assert (=> d!496663 m!1994623))

(assert (=> d!496663 m!1994465))

(declare-fun m!1994627 () Bool)

(assert (=> d!496663 m!1994627))

(declare-fun m!1994629 () Bool)

(assert (=> d!496663 m!1994629))

(declare-fun m!1994631 () Bool)

(assert (=> d!496663 m!1994631))

(declare-fun m!1994633 () Bool)

(assert (=> d!496663 m!1994633))

(declare-fun m!1994635 () Bool)

(assert (=> d!496663 m!1994635))

(assert (=> d!496663 m!1994465))

(assert (=> d!496663 m!1994615))

(declare-fun m!1994637 () Bool)

(assert (=> d!496663 m!1994637))

(declare-fun m!1994639 () Bool)

(assert (=> d!496663 m!1994639))

(declare-fun m!1994641 () Bool)

(assert (=> d!496663 m!1994641))

(assert (=> d!496663 m!1994417))

(assert (=> d!496663 m!1994419))

(assert (=> d!496663 m!1994639))

(assert (=> d!496663 m!1994465))

(declare-fun m!1994643 () Bool)

(assert (=> d!496663 m!1994643))

(assert (=> d!496663 m!1994643))

(declare-fun m!1994645 () Bool)

(assert (=> d!496663 m!1994645))

(assert (=> d!496663 m!1994623))

(declare-fun m!1994647 () Bool)

(assert (=> d!496663 m!1994647))

(assert (=> d!496663 m!1994629))

(assert (=> d!496663 m!1994643))

(declare-fun m!1994649 () Bool)

(assert (=> d!496663 m!1994649))

(assert (=> d!496663 m!1994635))

(declare-fun m!1994651 () Bool)

(assert (=> d!496663 m!1994651))

(assert (=> d!496663 m!1994615))

(assert (=> d!496663 m!1994617))

(declare-fun m!1994653 () Bool)

(assert (=> d!496663 m!1994653))

(assert (=> b!1647734 m!1994623))

(assert (=> b!1647734 m!1994623))

(assert (=> b!1647734 m!1994625))

(assert (=> b!1647734 m!1994615))

(assert (=> b!1647734 m!1994617))

(declare-fun m!1994655 () Bool)

(assert (=> b!1647734 m!1994655))

(assert (=> b!1647734 m!1994615))

(assert (=> b!1647734 m!1994617))

(assert (=> b!1647653 d!496663))

(declare-fun d!496685 () Bool)

(declare-fun lt!609805 () BalanceConc!12060)

(assert (=> d!496685 (= (list!7217 lt!609805) (printList!947 thiss!17113 (list!7218 (seqFromList!2150 tokens!457))))))

(assert (=> d!496685 (= lt!609805 (printTailRec!885 thiss!17113 (seqFromList!2150 tokens!457) 0 (BalanceConc!12061 Empty!6058)))))

(assert (=> d!496685 (= (print!1365 thiss!17113 (seqFromList!2150 tokens!457)) lt!609805)))

(declare-fun bs!396266 () Bool)

(assert (= bs!396266 d!496685))

(declare-fun m!1994687 () Bool)

(assert (=> bs!396266 m!1994687))

(assert (=> bs!396266 m!1994455))

(declare-fun m!1994689 () Bool)

(assert (=> bs!396266 m!1994689))

(assert (=> bs!396266 m!1994689))

(declare-fun m!1994693 () Bool)

(assert (=> bs!396266 m!1994693))

(assert (=> bs!396266 m!1994455))

(declare-fun m!1994695 () Bool)

(assert (=> bs!396266 m!1994695))

(assert (=> b!1647642 d!496685))

(declare-fun b!1647801 () Bool)

(declare-fun lt!609823 () tuple2!17844)

(declare-fun e!1056714 () Bool)

(declare-datatypes ((tuple2!17850 0))(
  ( (tuple2!17851 (_1!10327 List!18244) (_2!10327 List!18242)) )
))
(declare-fun lexList!865 (LexerInterface!2834 List!18243 List!18242) tuple2!17850)

(assert (=> b!1647801 (= e!1056714 (= (list!7217 (_2!10324 lt!609823)) (_2!10327 (lexList!865 thiss!17113 rules!1846 (list!7217 lt!609651)))))))

(declare-fun b!1647802 () Bool)

(declare-fun e!1056712 () Bool)

(assert (=> b!1647802 (= e!1056712 (not (isEmpty!11197 (_1!10324 lt!609823))))))

(declare-fun b!1647803 () Bool)

(declare-fun e!1056713 () Bool)

(assert (=> b!1647803 (= e!1056713 e!1056712)))

(declare-fun res!738327 () Bool)

(declare-fun size!14478 (BalanceConc!12060) Int)

(assert (=> b!1647803 (= res!738327 (< (size!14478 (_2!10324 lt!609823)) (size!14478 lt!609651)))))

(assert (=> b!1647803 (=> (not res!738327) (not e!1056712))))

(declare-fun b!1647804 () Bool)

(declare-fun res!738325 () Bool)

(assert (=> b!1647804 (=> (not res!738325) (not e!1056714))))

(assert (=> b!1647804 (= res!738325 (= (list!7218 (_1!10324 lt!609823)) (_1!10327 (lexList!865 thiss!17113 rules!1846 (list!7217 lt!609651)))))))

(declare-fun d!496687 () Bool)

(assert (=> d!496687 e!1056714))

(declare-fun res!738326 () Bool)

(assert (=> d!496687 (=> (not res!738326) (not e!1056714))))

(assert (=> d!496687 (= res!738326 e!1056713)))

(declare-fun c!268025 () Bool)

(declare-fun size!14479 (BalanceConc!12062) Int)

(assert (=> d!496687 (= c!268025 (> (size!14479 (_1!10324 lt!609823)) 0))))

(declare-fun lexTailRecV2!588 (LexerInterface!2834 List!18243 BalanceConc!12060 BalanceConc!12060 BalanceConc!12060 BalanceConc!12062) tuple2!17844)

(assert (=> d!496687 (= lt!609823 (lexTailRecV2!588 thiss!17113 rules!1846 lt!609651 (BalanceConc!12061 Empty!6058) lt!609651 (BalanceConc!12063 Empty!6059)))))

(assert (=> d!496687 (= (lex!1318 thiss!17113 rules!1846 lt!609651) lt!609823)))

(declare-fun b!1647805 () Bool)

(assert (=> b!1647805 (= e!1056713 (= (_2!10324 lt!609823) lt!609651))))

(assert (= (and d!496687 c!268025) b!1647803))

(assert (= (and d!496687 (not c!268025)) b!1647805))

(assert (= (and b!1647803 res!738327) b!1647802))

(assert (= (and d!496687 res!738326) b!1647804))

(assert (= (and b!1647804 res!738325) b!1647801))

(declare-fun m!1994817 () Bool)

(assert (=> b!1647803 m!1994817))

(declare-fun m!1994819 () Bool)

(assert (=> b!1647803 m!1994819))

(declare-fun m!1994821 () Bool)

(assert (=> b!1647804 m!1994821))

(assert (=> b!1647804 m!1994461))

(assert (=> b!1647804 m!1994461))

(declare-fun m!1994823 () Bool)

(assert (=> b!1647804 m!1994823))

(declare-fun m!1994825 () Bool)

(assert (=> d!496687 m!1994825))

(declare-fun m!1994827 () Bool)

(assert (=> d!496687 m!1994827))

(declare-fun m!1994829 () Bool)

(assert (=> b!1647801 m!1994829))

(assert (=> b!1647801 m!1994461))

(assert (=> b!1647801 m!1994461))

(assert (=> b!1647801 m!1994823))

(declare-fun m!1994831 () Bool)

(assert (=> b!1647802 m!1994831))

(assert (=> b!1647642 d!496687))

(declare-fun d!496733 () Bool)

(declare-fun e!1056719 () Bool)

(assert (=> d!496733 e!1056719))

(declare-fun res!738333 () Bool)

(assert (=> d!496733 (=> (not res!738333) (not e!1056719))))

(declare-fun lt!609826 () List!18242)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2523 (List!18242) (InoxSet C!9240))

(assert (=> d!496733 (= res!738333 (= (content!2523 lt!609826) ((_ map or) (content!2523 lt!609635) (content!2523 lt!609652))))))

(declare-fun e!1056720 () List!18242)

(assert (=> d!496733 (= lt!609826 e!1056720)))

(declare-fun c!268028 () Bool)

(assert (=> d!496733 (= c!268028 ((_ is Nil!18172) lt!609635))))

(assert (=> d!496733 (= (++!4904 lt!609635 lt!609652) lt!609826)))

(declare-fun b!1647817 () Bool)

(assert (=> b!1647817 (= e!1056719 (or (not (= lt!609652 Nil!18172)) (= lt!609826 lt!609635)))))

(declare-fun b!1647814 () Bool)

(assert (=> b!1647814 (= e!1056720 lt!609652)))

(declare-fun b!1647816 () Bool)

(declare-fun res!738332 () Bool)

(assert (=> b!1647816 (=> (not res!738332) (not e!1056719))))

(declare-fun size!14480 (List!18242) Int)

(assert (=> b!1647816 (= res!738332 (= (size!14480 lt!609826) (+ (size!14480 lt!609635) (size!14480 lt!609652))))))

(declare-fun b!1647815 () Bool)

(assert (=> b!1647815 (= e!1056720 (Cons!18172 (h!23573 lt!609635) (++!4904 (t!150659 lt!609635) lt!609652)))))

(assert (= (and d!496733 c!268028) b!1647814))

(assert (= (and d!496733 (not c!268028)) b!1647815))

(assert (= (and d!496733 res!738333) b!1647816))

(assert (= (and b!1647816 res!738332) b!1647817))

(declare-fun m!1994833 () Bool)

(assert (=> d!496733 m!1994833))

(declare-fun m!1994835 () Bool)

(assert (=> d!496733 m!1994835))

(declare-fun m!1994837 () Bool)

(assert (=> d!496733 m!1994837))

(declare-fun m!1994839 () Bool)

(assert (=> b!1647816 m!1994839))

(declare-fun m!1994841 () Bool)

(assert (=> b!1647816 m!1994841))

(declare-fun m!1994843 () Bool)

(assert (=> b!1647816 m!1994843))

(declare-fun m!1994845 () Bool)

(assert (=> b!1647815 m!1994845))

(assert (=> b!1647642 d!496733))

(declare-fun d!496735 () Bool)

(declare-fun list!7221 (Conc!6058) List!18242)

(assert (=> d!496735 (= (list!7217 lt!609633) (list!7221 (c!267991 lt!609633)))))

(declare-fun bs!396280 () Bool)

(assert (= bs!396280 d!496735))

(declare-fun m!1994847 () Bool)

(assert (=> bs!396280 m!1994847))

(assert (=> b!1647642 d!496735))

(declare-fun d!496737 () Bool)

(assert (=> d!496737 (= (list!7217 lt!609651) (list!7221 (c!267991 lt!609651)))))

(declare-fun bs!396281 () Bool)

(assert (= bs!396281 d!496737))

(declare-fun m!1994849 () Bool)

(assert (=> bs!396281 m!1994849))

(assert (=> b!1647642 d!496737))

(declare-fun d!496739 () Bool)

(declare-fun fromListB!954 (List!18244) BalanceConc!12062)

(assert (=> d!496739 (= (seqFromList!2150 tokens!457) (fromListB!954 tokens!457))))

(declare-fun bs!396282 () Bool)

(assert (= bs!396282 d!496739))

(declare-fun m!1994851 () Bool)

(assert (=> bs!396282 m!1994851))

(assert (=> b!1647642 d!496739))

(declare-fun d!496741 () Bool)

(declare-fun lt!609829 () BalanceConc!12060)

(assert (=> d!496741 (= (list!7217 lt!609829) (originalCharacters!4019 (h!23575 tokens!457)))))

(declare-fun dynLambda!8135 (Int TokenValue!3295) BalanceConc!12060)

(assert (=> d!496741 (= lt!609829 (dynLambda!8135 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (value!101015 (h!23575 tokens!457))))))

(assert (=> d!496741 (= (charsOf!1854 (h!23575 tokens!457)) lt!609829)))

(declare-fun b_lambda!51793 () Bool)

(assert (=> (not b_lambda!51793) (not d!496741)))

(declare-fun tb!94403 () Bool)

(declare-fun t!150668 () Bool)

(assert (=> (and b!1647647 (= (toChars!4511 (transformation!3205 (h!23574 rules!1846))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457))))) t!150668) tb!94403))

(declare-fun b!1647822 () Bool)

(declare-fun e!1056723 () Bool)

(declare-fun tp!477216 () Bool)

(declare-fun inv!23540 (Conc!6058) Bool)

(assert (=> b!1647822 (= e!1056723 (and (inv!23540 (c!267991 (dynLambda!8135 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (value!101015 (h!23575 tokens!457))))) tp!477216))))

(declare-fun result!114016 () Bool)

(declare-fun inv!23541 (BalanceConc!12060) Bool)

(assert (=> tb!94403 (= result!114016 (and (inv!23541 (dynLambda!8135 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (value!101015 (h!23575 tokens!457)))) e!1056723))))

(assert (= tb!94403 b!1647822))

(declare-fun m!1994853 () Bool)

(assert (=> b!1647822 m!1994853))

(declare-fun m!1994855 () Bool)

(assert (=> tb!94403 m!1994855))

(assert (=> d!496741 t!150668))

(declare-fun b_and!117005 () Bool)

(assert (= b_and!116991 (and (=> t!150668 result!114016) b_and!117005)))

(declare-fun t!150670 () Bool)

(declare-fun tb!94405 () Bool)

(assert (=> (and b!1647637 (= (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457))))) t!150670) tb!94405))

(declare-fun result!114020 () Bool)

(assert (= result!114020 result!114016))

(assert (=> d!496741 t!150670))

(declare-fun b_and!117007 () Bool)

(assert (= b_and!116995 (and (=> t!150670 result!114020) b_and!117007)))

(declare-fun m!1994857 () Bool)

(assert (=> d!496741 m!1994857))

(declare-fun m!1994859 () Bool)

(assert (=> d!496741 m!1994859))

(assert (=> b!1647642 d!496741))

(declare-fun d!496743 () Bool)

(assert (=> d!496743 (= (seqFromList!2150 (t!150661 tokens!457)) (fromListB!954 (t!150661 tokens!457)))))

(declare-fun bs!396283 () Bool)

(assert (= bs!396283 d!496743))

(declare-fun m!1994861 () Bool)

(assert (=> bs!396283 m!1994861))

(assert (=> b!1647642 d!496743))

(declare-fun d!496745 () Bool)

(declare-fun lt!609830 () BalanceConc!12060)

(assert (=> d!496745 (= (list!7217 lt!609830) (printList!947 thiss!17113 (list!7218 lt!609649)))))

(assert (=> d!496745 (= lt!609830 (printTailRec!885 thiss!17113 lt!609649 0 (BalanceConc!12061 Empty!6058)))))

(assert (=> d!496745 (= (print!1365 thiss!17113 lt!609649) lt!609830)))

(declare-fun bs!396284 () Bool)

(assert (= bs!396284 d!496745))

(declare-fun m!1994863 () Bool)

(assert (=> bs!396284 m!1994863))

(assert (=> bs!396284 m!1994433))

(assert (=> bs!396284 m!1994433))

(declare-fun m!1994865 () Bool)

(assert (=> bs!396284 m!1994865))

(declare-fun m!1994867 () Bool)

(assert (=> bs!396284 m!1994867))

(assert (=> b!1647642 d!496745))

(declare-fun d!496747 () Bool)

(assert (=> d!496747 (= (list!7217 (charsOf!1854 (h!23575 tokens!457))) (list!7221 (c!267991 (charsOf!1854 (h!23575 tokens!457)))))))

(declare-fun bs!396285 () Bool)

(assert (= bs!396285 d!496747))

(declare-fun m!1994869 () Bool)

(assert (=> bs!396285 m!1994869))

(assert (=> b!1647642 d!496747))

(declare-fun d!496749 () Bool)

(assert (=> d!496749 (= (list!7217 lt!609645) (list!7221 (c!267991 lt!609645)))))

(declare-fun bs!396286 () Bool)

(assert (= bs!396286 d!496749))

(declare-fun m!1994871 () Bool)

(assert (=> bs!396286 m!1994871))

(assert (=> b!1647652 d!496749))

(declare-fun d!496751 () Bool)

(declare-fun lt!609831 () BalanceConc!12060)

(assert (=> d!496751 (= (list!7217 lt!609831) (printList!947 thiss!17113 (list!7218 lt!609639)))))

(assert (=> d!496751 (= lt!609831 (printTailRec!885 thiss!17113 lt!609639 0 (BalanceConc!12061 Empty!6058)))))

(assert (=> d!496751 (= (print!1365 thiss!17113 lt!609639) lt!609831)))

(declare-fun bs!396287 () Bool)

(assert (= bs!396287 d!496751))

(declare-fun m!1994873 () Bool)

(assert (=> bs!396287 m!1994873))

(declare-fun m!1994875 () Bool)

(assert (=> bs!396287 m!1994875))

(assert (=> bs!396287 m!1994875))

(declare-fun m!1994877 () Bool)

(assert (=> bs!396287 m!1994877))

(assert (=> bs!396287 m!1994395))

(assert (=> b!1647652 d!496751))

(declare-fun d!496753 () Bool)

(declare-fun lt!609850 () BalanceConc!12060)

(declare-fun printListTailRec!387 (LexerInterface!2834 List!18244 List!18242) List!18242)

(declare-fun dropList!662 (BalanceConc!12062 Int) List!18244)

(assert (=> d!496753 (= (list!7217 lt!609850) (printListTailRec!387 thiss!17113 (dropList!662 lt!609639 0) (list!7217 (BalanceConc!12061 Empty!6058))))))

(declare-fun e!1056728 () BalanceConc!12060)

(assert (=> d!496753 (= lt!609850 e!1056728)))

(declare-fun c!268031 () Bool)

(assert (=> d!496753 (= c!268031 (>= 0 (size!14479 lt!609639)))))

(declare-fun e!1056729 () Bool)

(assert (=> d!496753 e!1056729))

(declare-fun res!738336 () Bool)

(assert (=> d!496753 (=> (not res!738336) (not e!1056729))))

(assert (=> d!496753 (= res!738336 (>= 0 0))))

(assert (=> d!496753 (= (printTailRec!885 thiss!17113 lt!609639 0 (BalanceConc!12061 Empty!6058)) lt!609850)))

(declare-fun b!1647829 () Bool)

(assert (=> b!1647829 (= e!1056729 (<= 0 (size!14479 lt!609639)))))

(declare-fun b!1647830 () Bool)

(assert (=> b!1647830 (= e!1056728 (BalanceConc!12061 Empty!6058))))

(declare-fun b!1647831 () Bool)

(declare-fun ++!4906 (BalanceConc!12060 BalanceConc!12060) BalanceConc!12060)

(declare-fun apply!4769 (BalanceConc!12062 Int) Token!5976)

(assert (=> b!1647831 (= e!1056728 (printTailRec!885 thiss!17113 lt!609639 (+ 0 1) (++!4906 (BalanceConc!12061 Empty!6058) (charsOf!1854 (apply!4769 lt!609639 0)))))))

(declare-fun lt!609851 () List!18244)

(assert (=> b!1647831 (= lt!609851 (list!7218 lt!609639))))

(declare-fun lt!609848 () Unit!30183)

(declare-fun lemmaDropApply!594 (List!18244 Int) Unit!30183)

(assert (=> b!1647831 (= lt!609848 (lemmaDropApply!594 lt!609851 0))))

(declare-fun drop!906 (List!18244 Int) List!18244)

(declare-fun apply!4770 (List!18244 Int) Token!5976)

(assert (=> b!1647831 (= (head!3611 (drop!906 lt!609851 0)) (apply!4770 lt!609851 0))))

(declare-fun lt!609847 () Unit!30183)

(assert (=> b!1647831 (= lt!609847 lt!609848)))

(declare-fun lt!609846 () List!18244)

(assert (=> b!1647831 (= lt!609846 (list!7218 lt!609639))))

(declare-fun lt!609849 () Unit!30183)

(declare-fun lemmaDropTail!574 (List!18244 Int) Unit!30183)

(assert (=> b!1647831 (= lt!609849 (lemmaDropTail!574 lt!609846 0))))

(declare-fun tail!2430 (List!18244) List!18244)

(assert (=> b!1647831 (= (tail!2430 (drop!906 lt!609846 0)) (drop!906 lt!609846 (+ 0 1)))))

(declare-fun lt!609852 () Unit!30183)

(assert (=> b!1647831 (= lt!609852 lt!609849)))

(assert (= (and d!496753 res!738336) b!1647829))

(assert (= (and d!496753 c!268031) b!1647830))

(assert (= (and d!496753 (not c!268031)) b!1647831))

(declare-fun m!1994879 () Bool)

(assert (=> d!496753 m!1994879))

(declare-fun m!1994881 () Bool)

(assert (=> d!496753 m!1994881))

(declare-fun m!1994883 () Bool)

(assert (=> d!496753 m!1994883))

(assert (=> d!496753 m!1994879))

(assert (=> d!496753 m!1994883))

(declare-fun m!1994885 () Bool)

(assert (=> d!496753 m!1994885))

(declare-fun m!1994887 () Bool)

(assert (=> d!496753 m!1994887))

(assert (=> b!1647829 m!1994887))

(declare-fun m!1994889 () Bool)

(assert (=> b!1647831 m!1994889))

(assert (=> b!1647831 m!1994875))

(declare-fun m!1994891 () Bool)

(assert (=> b!1647831 m!1994891))

(declare-fun m!1994893 () Bool)

(assert (=> b!1647831 m!1994893))

(declare-fun m!1994895 () Bool)

(assert (=> b!1647831 m!1994895))

(declare-fun m!1994897 () Bool)

(assert (=> b!1647831 m!1994897))

(declare-fun m!1994899 () Bool)

(assert (=> b!1647831 m!1994899))

(declare-fun m!1994901 () Bool)

(assert (=> b!1647831 m!1994901))

(declare-fun m!1994903 () Bool)

(assert (=> b!1647831 m!1994903))

(assert (=> b!1647831 m!1994891))

(assert (=> b!1647831 m!1994895))

(declare-fun m!1994905 () Bool)

(assert (=> b!1647831 m!1994905))

(assert (=> b!1647831 m!1994893))

(declare-fun m!1994907 () Bool)

(assert (=> b!1647831 m!1994907))

(assert (=> b!1647831 m!1994899))

(declare-fun m!1994909 () Bool)

(assert (=> b!1647831 m!1994909))

(assert (=> b!1647831 m!1994897))

(declare-fun m!1994911 () Bool)

(assert (=> b!1647831 m!1994911))

(assert (=> b!1647652 d!496753))

(declare-fun b!1647850 () Bool)

(declare-fun e!1056736 () Option!3444)

(declare-fun call!105824 () Option!3444)

(assert (=> b!1647850 (= e!1056736 call!105824)))

(declare-fun d!496755 () Bool)

(declare-fun e!1056737 () Bool)

(assert (=> d!496755 e!1056737))

(declare-fun res!738351 () Bool)

(assert (=> d!496755 (=> res!738351 e!1056737)))

(declare-fun lt!609867 () Option!3444)

(assert (=> d!496755 (= res!738351 (isEmpty!11202 lt!609867))))

(assert (=> d!496755 (= lt!609867 e!1056736)))

(declare-fun c!268034 () Bool)

(assert (=> d!496755 (= c!268034 (and ((_ is Cons!18173) rules!1846) ((_ is Nil!18173) (t!150660 rules!1846))))))

(declare-fun lt!609863 () Unit!30183)

(declare-fun lt!609865 () Unit!30183)

(assert (=> d!496755 (= lt!609863 lt!609865)))

(assert (=> d!496755 (isPrefix!1463 lt!609637 lt!609637)))

(declare-fun lemmaIsPrefixRefl!990 (List!18242 List!18242) Unit!30183)

(assert (=> d!496755 (= lt!609865 (lemmaIsPrefixRefl!990 lt!609637 lt!609637))))

(declare-fun rulesValidInductive!1012 (LexerInterface!2834 List!18243) Bool)

(assert (=> d!496755 (rulesValidInductive!1012 thiss!17113 rules!1846)))

(assert (=> d!496755 (= (maxPrefix!1396 thiss!17113 rules!1846 lt!609637) lt!609867)))

(declare-fun b!1647851 () Bool)

(declare-fun res!738354 () Bool)

(declare-fun e!1056738 () Bool)

(assert (=> b!1647851 (=> (not res!738354) (not e!1056738))))

(declare-fun apply!4771 (TokenValueInjection!6250 BalanceConc!12060) TokenValue!3295)

(assert (=> b!1647851 (= res!738354 (= (value!101015 (_1!10325 (get!5288 lt!609867))) (apply!4771 (transformation!3205 (rule!5063 (_1!10325 (get!5288 lt!609867)))) (seqFromList!2149 (originalCharacters!4019 (_1!10325 (get!5288 lt!609867)))))))))

(declare-fun b!1647852 () Bool)

(declare-fun res!738357 () Bool)

(assert (=> b!1647852 (=> (not res!738357) (not e!1056738))))

(assert (=> b!1647852 (= res!738357 (= (++!4904 (list!7217 (charsOf!1854 (_1!10325 (get!5288 lt!609867)))) (_2!10325 (get!5288 lt!609867))) lt!609637))))

(declare-fun bm!105819 () Bool)

(assert (=> bm!105819 (= call!105824 (maxPrefixOneRule!805 thiss!17113 (h!23574 rules!1846) lt!609637))))

(declare-fun b!1647853 () Bool)

(declare-fun res!738352 () Bool)

(assert (=> b!1647853 (=> (not res!738352) (not e!1056738))))

(assert (=> b!1647853 (= res!738352 (< (size!14480 (_2!10325 (get!5288 lt!609867))) (size!14480 lt!609637)))))

(declare-fun b!1647854 () Bool)

(declare-fun res!738353 () Bool)

(assert (=> b!1647854 (=> (not res!738353) (not e!1056738))))

(assert (=> b!1647854 (= res!738353 (= (list!7217 (charsOf!1854 (_1!10325 (get!5288 lt!609867)))) (originalCharacters!4019 (_1!10325 (get!5288 lt!609867)))))))

(declare-fun b!1647855 () Bool)

(assert (=> b!1647855 (= e!1056737 e!1056738)))

(declare-fun res!738356 () Bool)

(assert (=> b!1647855 (=> (not res!738356) (not e!1056738))))

(assert (=> b!1647855 (= res!738356 (isDefined!2799 lt!609867))))

(declare-fun b!1647856 () Bool)

(declare-fun contains!3168 (List!18243 Rule!6210) Bool)

(assert (=> b!1647856 (= e!1056738 (contains!3168 rules!1846 (rule!5063 (_1!10325 (get!5288 lt!609867)))))))

(declare-fun b!1647857 () Bool)

(declare-fun lt!609864 () Option!3444)

(declare-fun lt!609866 () Option!3444)

(assert (=> b!1647857 (= e!1056736 (ite (and ((_ is None!3443) lt!609864) ((_ is None!3443) lt!609866)) None!3443 (ite ((_ is None!3443) lt!609866) lt!609864 (ite ((_ is None!3443) lt!609864) lt!609866 (ite (>= (size!14474 (_1!10325 (v!24594 lt!609864))) (size!14474 (_1!10325 (v!24594 lt!609866)))) lt!609864 lt!609866)))))))

(assert (=> b!1647857 (= lt!609864 call!105824)))

(assert (=> b!1647857 (= lt!609866 (maxPrefix!1396 thiss!17113 (t!150660 rules!1846) lt!609637))))

(declare-fun b!1647858 () Bool)

(declare-fun res!738355 () Bool)

(assert (=> b!1647858 (=> (not res!738355) (not e!1056738))))

(assert (=> b!1647858 (= res!738355 (matchR!2026 (regex!3205 (rule!5063 (_1!10325 (get!5288 lt!609867)))) (list!7217 (charsOf!1854 (_1!10325 (get!5288 lt!609867))))))))

(assert (= (and d!496755 c!268034) b!1647850))

(assert (= (and d!496755 (not c!268034)) b!1647857))

(assert (= (or b!1647850 b!1647857) bm!105819))

(assert (= (and d!496755 (not res!738351)) b!1647855))

(assert (= (and b!1647855 res!738356) b!1647854))

(assert (= (and b!1647854 res!738353) b!1647853))

(assert (= (and b!1647853 res!738352) b!1647852))

(assert (= (and b!1647852 res!738357) b!1647851))

(assert (= (and b!1647851 res!738354) b!1647858))

(assert (= (and b!1647858 res!738355) b!1647856))

(declare-fun m!1994913 () Bool)

(assert (=> b!1647853 m!1994913))

(declare-fun m!1994915 () Bool)

(assert (=> b!1647853 m!1994915))

(declare-fun m!1994917 () Bool)

(assert (=> b!1647853 m!1994917))

(declare-fun m!1994919 () Bool)

(assert (=> bm!105819 m!1994919))

(assert (=> b!1647852 m!1994913))

(declare-fun m!1994921 () Bool)

(assert (=> b!1647852 m!1994921))

(assert (=> b!1647852 m!1994921))

(declare-fun m!1994923 () Bool)

(assert (=> b!1647852 m!1994923))

(assert (=> b!1647852 m!1994923))

(declare-fun m!1994925 () Bool)

(assert (=> b!1647852 m!1994925))

(declare-fun m!1994927 () Bool)

(assert (=> b!1647855 m!1994927))

(assert (=> b!1647851 m!1994913))

(declare-fun m!1994929 () Bool)

(assert (=> b!1647851 m!1994929))

(assert (=> b!1647851 m!1994929))

(declare-fun m!1994931 () Bool)

(assert (=> b!1647851 m!1994931))

(declare-fun m!1994933 () Bool)

(assert (=> d!496755 m!1994933))

(declare-fun m!1994935 () Bool)

(assert (=> d!496755 m!1994935))

(declare-fun m!1994937 () Bool)

(assert (=> d!496755 m!1994937))

(declare-fun m!1994939 () Bool)

(assert (=> d!496755 m!1994939))

(declare-fun m!1994941 () Bool)

(assert (=> b!1647857 m!1994941))

(assert (=> b!1647856 m!1994913))

(declare-fun m!1994943 () Bool)

(assert (=> b!1647856 m!1994943))

(assert (=> b!1647854 m!1994913))

(assert (=> b!1647854 m!1994921))

(assert (=> b!1647854 m!1994921))

(assert (=> b!1647854 m!1994923))

(assert (=> b!1647858 m!1994913))

(assert (=> b!1647858 m!1994921))

(assert (=> b!1647858 m!1994921))

(assert (=> b!1647858 m!1994923))

(assert (=> b!1647858 m!1994923))

(declare-fun m!1994945 () Bool)

(assert (=> b!1647858 m!1994945))

(assert (=> b!1647652 d!496755))

(declare-fun d!496757 () Bool)

(declare-fun c!268037 () Bool)

(assert (=> d!496757 (= c!268037 ((_ is Cons!18174) (Cons!18174 (h!23575 tokens!457) Nil!18174)))))

(declare-fun e!1056741 () List!18242)

(assert (=> d!496757 (= (printList!947 thiss!17113 (Cons!18174 (h!23575 tokens!457) Nil!18174)) e!1056741)))

(declare-fun b!1647863 () Bool)

(assert (=> b!1647863 (= e!1056741 (++!4904 (list!7217 (charsOf!1854 (h!23575 (Cons!18174 (h!23575 tokens!457) Nil!18174)))) (printList!947 thiss!17113 (t!150661 (Cons!18174 (h!23575 tokens!457) Nil!18174)))))))

(declare-fun b!1647864 () Bool)

(assert (=> b!1647864 (= e!1056741 Nil!18172)))

(assert (= (and d!496757 c!268037) b!1647863))

(assert (= (and d!496757 (not c!268037)) b!1647864))

(declare-fun m!1994947 () Bool)

(assert (=> b!1647863 m!1994947))

(assert (=> b!1647863 m!1994947))

(declare-fun m!1994949 () Bool)

(assert (=> b!1647863 m!1994949))

(declare-fun m!1994951 () Bool)

(assert (=> b!1647863 m!1994951))

(assert (=> b!1647863 m!1994949))

(assert (=> b!1647863 m!1994951))

(declare-fun m!1994953 () Bool)

(assert (=> b!1647863 m!1994953))

(assert (=> b!1647652 d!496757))

(declare-fun d!496759 () Bool)

(declare-fun e!1056744 () Bool)

(assert (=> d!496759 e!1056744))

(declare-fun res!738360 () Bool)

(assert (=> d!496759 (=> (not res!738360) (not e!1056744))))

(declare-fun lt!609870 () BalanceConc!12062)

(assert (=> d!496759 (= res!738360 (= (list!7218 lt!609870) (Cons!18174 (h!23575 tokens!457) Nil!18174)))))

(declare-fun singleton!724 (Token!5976) BalanceConc!12062)

(assert (=> d!496759 (= lt!609870 (singleton!724 (h!23575 tokens!457)))))

(assert (=> d!496759 (= (singletonSeq!1681 (h!23575 tokens!457)) lt!609870)))

(declare-fun b!1647867 () Bool)

(declare-fun isBalanced!1850 (Conc!6059) Bool)

(assert (=> b!1647867 (= e!1056744 (isBalanced!1850 (c!267993 lt!609870)))))

(assert (= (and d!496759 res!738360) b!1647867))

(declare-fun m!1994955 () Bool)

(assert (=> d!496759 m!1994955))

(declare-fun m!1994957 () Bool)

(assert (=> d!496759 m!1994957))

(declare-fun m!1994959 () Bool)

(assert (=> b!1647867 m!1994959))

(assert (=> b!1647652 d!496759))

(declare-fun d!496761 () Bool)

(declare-fun res!738365 () Bool)

(declare-fun e!1056747 () Bool)

(assert (=> d!496761 (=> (not res!738365) (not e!1056747))))

(declare-fun isEmpty!11204 (List!18242) Bool)

(assert (=> d!496761 (= res!738365 (not (isEmpty!11204 (originalCharacters!4019 (h!23575 tokens!457)))))))

(assert (=> d!496761 (= (inv!23536 (h!23575 tokens!457)) e!1056747)))

(declare-fun b!1647872 () Bool)

(declare-fun res!738366 () Bool)

(assert (=> b!1647872 (=> (not res!738366) (not e!1056747))))

(assert (=> b!1647872 (= res!738366 (= (originalCharacters!4019 (h!23575 tokens!457)) (list!7217 (dynLambda!8135 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (value!101015 (h!23575 tokens!457))))))))

(declare-fun b!1647873 () Bool)

(assert (=> b!1647873 (= e!1056747 (= (size!14474 (h!23575 tokens!457)) (size!14480 (originalCharacters!4019 (h!23575 tokens!457)))))))

(assert (= (and d!496761 res!738365) b!1647872))

(assert (= (and b!1647872 res!738366) b!1647873))

(declare-fun b_lambda!51795 () Bool)

(assert (=> (not b_lambda!51795) (not b!1647872)))

(assert (=> b!1647872 t!150668))

(declare-fun b_and!117009 () Bool)

(assert (= b_and!117005 (and (=> t!150668 result!114016) b_and!117009)))

(assert (=> b!1647872 t!150670))

(declare-fun b_and!117011 () Bool)

(assert (= b_and!117007 (and (=> t!150670 result!114020) b_and!117011)))

(declare-fun m!1994961 () Bool)

(assert (=> d!496761 m!1994961))

(assert (=> b!1647872 m!1994859))

(assert (=> b!1647872 m!1994859))

(declare-fun m!1994963 () Bool)

(assert (=> b!1647872 m!1994963))

(declare-fun m!1994965 () Bool)

(assert (=> b!1647873 m!1994965))

(assert (=> b!1647641 d!496761))

(declare-fun d!496763 () Bool)

(declare-fun c!268042 () Bool)

(assert (=> d!496763 (= c!268042 ((_ is IntegerValue!9885) (value!101015 (h!23575 tokens!457))))))

(declare-fun e!1056756 () Bool)

(assert (=> d!496763 (= (inv!21 (value!101015 (h!23575 tokens!457))) e!1056756)))

(declare-fun b!1647884 () Bool)

(declare-fun inv!16 (TokenValue!3295) Bool)

(assert (=> b!1647884 (= e!1056756 (inv!16 (value!101015 (h!23575 tokens!457))))))

(declare-fun b!1647885 () Bool)

(declare-fun e!1056755 () Bool)

(assert (=> b!1647885 (= e!1056756 e!1056755)))

(declare-fun c!268043 () Bool)

(assert (=> b!1647885 (= c!268043 ((_ is IntegerValue!9886) (value!101015 (h!23575 tokens!457))))))

(declare-fun b!1647886 () Bool)

(declare-fun e!1056754 () Bool)

(declare-fun inv!15 (TokenValue!3295) Bool)

(assert (=> b!1647886 (= e!1056754 (inv!15 (value!101015 (h!23575 tokens!457))))))

(declare-fun b!1647887 () Bool)

(declare-fun inv!17 (TokenValue!3295) Bool)

(assert (=> b!1647887 (= e!1056755 (inv!17 (value!101015 (h!23575 tokens!457))))))

(declare-fun b!1647888 () Bool)

(declare-fun res!738369 () Bool)

(assert (=> b!1647888 (=> res!738369 e!1056754)))

(assert (=> b!1647888 (= res!738369 (not ((_ is IntegerValue!9887) (value!101015 (h!23575 tokens!457)))))))

(assert (=> b!1647888 (= e!1056755 e!1056754)))

(assert (= (and d!496763 c!268042) b!1647884))

(assert (= (and d!496763 (not c!268042)) b!1647885))

(assert (= (and b!1647885 c!268043) b!1647887))

(assert (= (and b!1647885 (not c!268043)) b!1647888))

(assert (= (and b!1647888 (not res!738369)) b!1647886))

(declare-fun m!1994967 () Bool)

(assert (=> b!1647884 m!1994967))

(declare-fun m!1994969 () Bool)

(assert (=> b!1647886 m!1994969))

(declare-fun m!1994971 () Bool)

(assert (=> b!1647887 m!1994971))

(assert (=> b!1647651 d!496763))

(declare-fun lt!609873 () Bool)

(declare-fun d!496765 () Bool)

(declare-fun isEmpty!11205 (List!18244) Bool)

(assert (=> d!496765 (= lt!609873 (isEmpty!11205 (list!7218 (_1!10324 (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635))))))))

(declare-fun isEmpty!11206 (Conc!6059) Bool)

(assert (=> d!496765 (= lt!609873 (isEmpty!11206 (c!267993 (_1!10324 (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635))))))))

(assert (=> d!496765 (= (isEmpty!11197 (_1!10324 (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635)))) lt!609873)))

(declare-fun bs!396288 () Bool)

(assert (= bs!396288 d!496765))

(assert (=> bs!396288 m!1994639))

(assert (=> bs!396288 m!1994639))

(declare-fun m!1994973 () Bool)

(assert (=> bs!396288 m!1994973))

(declare-fun m!1994975 () Bool)

(assert (=> bs!396288 m!1994975))

(assert (=> b!1647640 d!496765))

(declare-fun lt!609874 () tuple2!17844)

(declare-fun b!1647889 () Bool)

(declare-fun e!1056759 () Bool)

(assert (=> b!1647889 (= e!1056759 (= (list!7217 (_2!10324 lt!609874)) (_2!10327 (lexList!865 thiss!17113 rules!1846 (list!7217 (seqFromList!2149 lt!609635))))))))

(declare-fun b!1647890 () Bool)

(declare-fun e!1056757 () Bool)

(assert (=> b!1647890 (= e!1056757 (not (isEmpty!11197 (_1!10324 lt!609874))))))

(declare-fun b!1647891 () Bool)

(declare-fun e!1056758 () Bool)

(assert (=> b!1647891 (= e!1056758 e!1056757)))

(declare-fun res!738372 () Bool)

(assert (=> b!1647891 (= res!738372 (< (size!14478 (_2!10324 lt!609874)) (size!14478 (seqFromList!2149 lt!609635))))))

(assert (=> b!1647891 (=> (not res!738372) (not e!1056757))))

(declare-fun b!1647892 () Bool)

(declare-fun res!738370 () Bool)

(assert (=> b!1647892 (=> (not res!738370) (not e!1056759))))

(assert (=> b!1647892 (= res!738370 (= (list!7218 (_1!10324 lt!609874)) (_1!10327 (lexList!865 thiss!17113 rules!1846 (list!7217 (seqFromList!2149 lt!609635))))))))

(declare-fun d!496767 () Bool)

(assert (=> d!496767 e!1056759))

(declare-fun res!738371 () Bool)

(assert (=> d!496767 (=> (not res!738371) (not e!1056759))))

(assert (=> d!496767 (= res!738371 e!1056758)))

(declare-fun c!268044 () Bool)

(assert (=> d!496767 (= c!268044 (> (size!14479 (_1!10324 lt!609874)) 0))))

(assert (=> d!496767 (= lt!609874 (lexTailRecV2!588 thiss!17113 rules!1846 (seqFromList!2149 lt!609635) (BalanceConc!12061 Empty!6058) (seqFromList!2149 lt!609635) (BalanceConc!12063 Empty!6059)))))

(assert (=> d!496767 (= (lex!1318 thiss!17113 rules!1846 (seqFromList!2149 lt!609635)) lt!609874)))

(declare-fun b!1647893 () Bool)

(assert (=> b!1647893 (= e!1056758 (= (_2!10324 lt!609874) (seqFromList!2149 lt!609635)))))

(assert (= (and d!496767 c!268044) b!1647891))

(assert (= (and d!496767 (not c!268044)) b!1647893))

(assert (= (and b!1647891 res!738372) b!1647890))

(assert (= (and d!496767 res!738371) b!1647892))

(assert (= (and b!1647892 res!738370) b!1647889))

(declare-fun m!1994977 () Bool)

(assert (=> b!1647891 m!1994977))

(assert (=> b!1647891 m!1994417))

(declare-fun m!1994979 () Bool)

(assert (=> b!1647891 m!1994979))

(declare-fun m!1994981 () Bool)

(assert (=> b!1647892 m!1994981))

(assert (=> b!1647892 m!1994417))

(declare-fun m!1994983 () Bool)

(assert (=> b!1647892 m!1994983))

(assert (=> b!1647892 m!1994983))

(declare-fun m!1994985 () Bool)

(assert (=> b!1647892 m!1994985))

(declare-fun m!1994987 () Bool)

(assert (=> d!496767 m!1994987))

(assert (=> d!496767 m!1994417))

(assert (=> d!496767 m!1994417))

(declare-fun m!1994989 () Bool)

(assert (=> d!496767 m!1994989))

(declare-fun m!1994991 () Bool)

(assert (=> b!1647889 m!1994991))

(assert (=> b!1647889 m!1994417))

(assert (=> b!1647889 m!1994983))

(assert (=> b!1647889 m!1994983))

(assert (=> b!1647889 m!1994985))

(declare-fun m!1994993 () Bool)

(assert (=> b!1647890 m!1994993))

(assert (=> b!1647640 d!496767))

(declare-fun d!496769 () Bool)

(declare-fun fromListB!955 (List!18242) BalanceConc!12060)

(assert (=> d!496769 (= (seqFromList!2149 lt!609635) (fromListB!955 lt!609635))))

(declare-fun bs!396289 () Bool)

(assert (= bs!396289 d!496769))

(declare-fun m!1994995 () Bool)

(assert (=> bs!396289 m!1994995))

(assert (=> b!1647640 d!496769))

(declare-fun d!496771 () Bool)

(declare-fun list!7222 (Conc!6059) List!18244)

(assert (=> d!496771 (= (list!7218 (_1!10324 lt!609647)) (list!7222 (c!267993 (_1!10324 lt!609647))))))

(declare-fun bs!396290 () Bool)

(assert (= bs!396290 d!496771))

(declare-fun m!1994997 () Bool)

(assert (=> bs!396290 m!1994997))

(assert (=> b!1647650 d!496771))

(declare-fun d!496773 () Bool)

(declare-fun e!1056779 () Bool)

(assert (=> d!496773 e!1056779))

(declare-fun res!738390 () Bool)

(assert (=> d!496773 (=> (not res!738390) (not e!1056779))))

(assert (=> d!496773 (= res!738390 (= (list!7218 (_1!10324 (lex!1318 thiss!17113 rules!1846 (print!1365 thiss!17113 (seqFromList!2150 (t!150661 tokens!457)))))) (t!150661 tokens!457)))))

(declare-fun lt!610031 () Unit!30183)

(declare-fun e!1056780 () Unit!30183)

(assert (=> d!496773 (= lt!610031 e!1056780)))

(declare-fun c!268050 () Bool)

(assert (=> d!496773 (= c!268050 (or ((_ is Nil!18174) (t!150661 tokens!457)) ((_ is Nil!18174) (t!150661 (t!150661 tokens!457)))))))

(assert (=> d!496773 (not (isEmpty!11196 rules!1846))))

(assert (=> d!496773 (= (theoremInvertabilityWhenTokenListSeparable!277 thiss!17113 rules!1846 (t!150661 tokens!457)) lt!610031)))

(declare-fun b!1647921 () Bool)

(declare-fun Unit!30206 () Unit!30183)

(assert (=> b!1647921 (= e!1056780 Unit!30206)))

(declare-fun b!1647922 () Bool)

(declare-fun Unit!30207 () Unit!30183)

(assert (=> b!1647922 (= e!1056780 Unit!30207)))

(declare-fun lt!610023 () BalanceConc!12060)

(assert (=> b!1647922 (= lt!610023 (print!1365 thiss!17113 (seqFromList!2150 (t!150661 tokens!457))))))

(declare-fun lt!610019 () BalanceConc!12060)

(assert (=> b!1647922 (= lt!610019 (print!1365 thiss!17113 (seqFromList!2150 (t!150661 (t!150661 tokens!457)))))))

(declare-fun lt!610034 () tuple2!17844)

(assert (=> b!1647922 (= lt!610034 (lex!1318 thiss!17113 rules!1846 lt!610019))))

(declare-fun lt!610027 () List!18242)

(assert (=> b!1647922 (= lt!610027 (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457)))))))

(declare-fun lt!610032 () List!18242)

(assert (=> b!1647922 (= lt!610032 (list!7217 lt!610019))))

(declare-fun lt!610033 () Unit!30183)

(assert (=> b!1647922 (= lt!610033 (lemmaConcatTwoListThenFirstIsPrefix!988 lt!610027 lt!610032))))

(assert (=> b!1647922 (isPrefix!1463 lt!610027 (++!4904 lt!610027 lt!610032))))

(declare-fun lt!610021 () Unit!30183)

(assert (=> b!1647922 (= lt!610021 lt!610033)))

(declare-fun lt!610026 () Unit!30183)

(assert (=> b!1647922 (= lt!610026 (theoremInvertabilityWhenTokenListSeparable!277 thiss!17113 rules!1846 (t!150661 (t!150661 tokens!457))))))

(declare-fun lt!610020 () Unit!30183)

(assert (=> b!1647922 (= lt!610020 (seqFromListBHdTlConstructive!280 (h!23575 (t!150661 (t!150661 tokens!457))) (t!150661 (t!150661 (t!150661 tokens!457))) (_1!10324 lt!610034)))))

(assert (=> b!1647922 (= (list!7218 (_1!10324 lt!610034)) (list!7218 (prepend!763 (seqFromList!2150 (t!150661 (t!150661 (t!150661 tokens!457)))) (h!23575 (t!150661 (t!150661 tokens!457))))))))

(declare-fun lt!610018 () Unit!30183)

(assert (=> b!1647922 (= lt!610018 lt!610020)))

(declare-fun lt!610012 () Option!3444)

(assert (=> b!1647922 (= lt!610012 (maxPrefix!1396 thiss!17113 rules!1846 (list!7217 lt!610023)))))

(assert (=> b!1647922 (= (print!1365 thiss!17113 (singletonSeq!1681 (h!23575 (t!150661 tokens!457)))) (printTailRec!885 thiss!17113 (singletonSeq!1681 (h!23575 (t!150661 tokens!457))) 0 (BalanceConc!12061 Empty!6058)))))

(declare-fun lt!610024 () Unit!30183)

(declare-fun Unit!30208 () Unit!30183)

(assert (=> b!1647922 (= lt!610024 Unit!30208)))

(declare-fun lt!610028 () Unit!30183)

(assert (=> b!1647922 (= lt!610028 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!402 thiss!17113 rules!1846 (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457)))) (list!7217 lt!610019)))))

(assert (=> b!1647922 (= (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457)))) (originalCharacters!4019 (h!23575 (t!150661 tokens!457))))))

(declare-fun lt!610029 () Unit!30183)

(declare-fun Unit!30209 () Unit!30183)

(assert (=> b!1647922 (= lt!610029 Unit!30209)))

(declare-fun singletonSeq!1683 (C!9240) BalanceConc!12060)

(declare-fun apply!4772 (BalanceConc!12060 Int) C!9240)

(declare-fun head!3614 (List!18242) C!9240)

(assert (=> b!1647922 (= (list!7217 (singletonSeq!1683 (apply!4772 (charsOf!1854 (h!23575 (t!150661 (t!150661 tokens!457)))) 0))) (Cons!18172 (head!3614 (originalCharacters!4019 (h!23575 (t!150661 (t!150661 tokens!457))))) Nil!18172))))

(declare-fun lt!610022 () Unit!30183)

(declare-fun Unit!30210 () Unit!30183)

(assert (=> b!1647922 (= lt!610022 Unit!30210)))

(assert (=> b!1647922 (= (list!7217 (singletonSeq!1683 (apply!4772 (charsOf!1854 (h!23575 (t!150661 (t!150661 tokens!457)))) 0))) (Cons!18172 (head!3614 (list!7217 lt!610019)) Nil!18172))))

(declare-fun lt!610030 () Unit!30183)

(declare-fun Unit!30211 () Unit!30183)

(assert (=> b!1647922 (= lt!610030 Unit!30211)))

(declare-fun head!3615 (BalanceConc!12060) C!9240)

(assert (=> b!1647922 (= (list!7217 (singletonSeq!1683 (apply!4772 (charsOf!1854 (h!23575 (t!150661 (t!150661 tokens!457)))) 0))) (Cons!18172 (head!3615 lt!610019) Nil!18172))))

(declare-fun lt!610016 () Unit!30183)

(declare-fun Unit!30212 () Unit!30183)

(assert (=> b!1647922 (= lt!610016 Unit!30212)))

(assert (=> b!1647922 (isDefined!2799 (maxPrefix!1396 thiss!17113 rules!1846 (originalCharacters!4019 (h!23575 (t!150661 tokens!457)))))))

(declare-fun lt!610035 () Unit!30183)

(declare-fun Unit!30213 () Unit!30183)

(assert (=> b!1647922 (= lt!610035 Unit!30213)))

(assert (=> b!1647922 (isDefined!2799 (maxPrefix!1396 thiss!17113 rules!1846 (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457))))))))

(declare-fun lt!610013 () Unit!30183)

(declare-fun Unit!30214 () Unit!30183)

(assert (=> b!1647922 (= lt!610013 Unit!30214)))

(declare-fun lt!610036 () Unit!30183)

(declare-fun Unit!30215 () Unit!30183)

(assert (=> b!1647922 (= lt!610036 Unit!30215)))

(assert (=> b!1647922 (= (_1!10325 (get!5288 (maxPrefix!1396 thiss!17113 rules!1846 (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457))))))) (h!23575 (t!150661 tokens!457)))))

(declare-fun lt!610015 () Unit!30183)

(declare-fun Unit!30216 () Unit!30183)

(assert (=> b!1647922 (= lt!610015 Unit!30216)))

(assert (=> b!1647922 (isEmpty!11204 (_2!10325 (get!5288 (maxPrefix!1396 thiss!17113 rules!1846 (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457))))))))))

(declare-fun lt!610011 () Unit!30183)

(declare-fun Unit!30217 () Unit!30183)

(assert (=> b!1647922 (= lt!610011 Unit!30217)))

(assert (=> b!1647922 (matchR!2026 (regex!3205 (rule!5063 (h!23575 (t!150661 tokens!457)))) (list!7217 (charsOf!1854 (h!23575 (t!150661 tokens!457)))))))

(declare-fun lt!610014 () Unit!30183)

(declare-fun Unit!30218 () Unit!30183)

(assert (=> b!1647922 (= lt!610014 Unit!30218)))

(assert (=> b!1647922 (= (rule!5063 (h!23575 (t!150661 tokens!457))) (rule!5063 (h!23575 (t!150661 tokens!457))))))

(declare-fun lt!610017 () Unit!30183)

(declare-fun Unit!30219 () Unit!30183)

(assert (=> b!1647922 (= lt!610017 Unit!30219)))

(declare-fun lt!610025 () Unit!30183)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!164 (LexerInterface!2834 List!18243 Token!5976 Rule!6210 List!18242) Unit!30183)

(assert (=> b!1647922 (= lt!610025 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!164 thiss!17113 rules!1846 (h!23575 (t!150661 tokens!457)) (rule!5063 (h!23575 (t!150661 tokens!457))) (list!7217 lt!610019)))))

(declare-fun b!1647923 () Bool)

(declare-fun isEmpty!11207 (BalanceConc!12060) Bool)

(assert (=> b!1647923 (= e!1056779 (isEmpty!11207 (_2!10324 (lex!1318 thiss!17113 rules!1846 (print!1365 thiss!17113 (seqFromList!2150 (t!150661 tokens!457)))))))))

(assert (= (and d!496773 c!268050) b!1647921))

(assert (= (and d!496773 (not c!268050)) b!1647922))

(assert (= (and d!496773 res!738390) b!1647923))

(assert (=> d!496773 m!1994445))

(declare-fun m!1995091 () Bool)

(assert (=> d!496773 m!1995091))

(assert (=> d!496773 m!1994451))

(declare-fun m!1995093 () Bool)

(assert (=> d!496773 m!1995093))

(declare-fun m!1995095 () Bool)

(assert (=> d!496773 m!1995095))

(assert (=> d!496773 m!1994451))

(assert (=> d!496773 m!1995093))

(declare-fun m!1995097 () Bool)

(assert (=> b!1647922 m!1995097))

(declare-fun m!1995099 () Bool)

(assert (=> b!1647922 m!1995099))

(assert (=> b!1647922 m!1994437))

(declare-fun m!1995101 () Bool)

(assert (=> b!1647922 m!1995101))

(declare-fun m!1995103 () Bool)

(assert (=> b!1647922 m!1995103))

(declare-fun m!1995105 () Bool)

(assert (=> b!1647922 m!1995105))

(declare-fun m!1995107 () Bool)

(assert (=> b!1647922 m!1995107))

(assert (=> b!1647922 m!1995103))

(declare-fun m!1995109 () Bool)

(assert (=> b!1647922 m!1995109))

(declare-fun m!1995111 () Bool)

(assert (=> b!1647922 m!1995111))

(declare-fun m!1995113 () Bool)

(assert (=> b!1647922 m!1995113))

(declare-fun m!1995115 () Bool)

(assert (=> b!1647922 m!1995115))

(declare-fun m!1995117 () Bool)

(assert (=> b!1647922 m!1995117))

(declare-fun m!1995119 () Bool)

(assert (=> b!1647922 m!1995119))

(assert (=> b!1647922 m!1995107))

(declare-fun m!1995121 () Bool)

(assert (=> b!1647922 m!1995121))

(declare-fun m!1995123 () Bool)

(assert (=> b!1647922 m!1995123))

(declare-fun m!1995125 () Bool)

(assert (=> b!1647922 m!1995125))

(declare-fun m!1995127 () Bool)

(assert (=> b!1647922 m!1995127))

(assert (=> b!1647922 m!1995107))

(declare-fun m!1995129 () Bool)

(assert (=> b!1647922 m!1995129))

(declare-fun m!1995131 () Bool)

(assert (=> b!1647922 m!1995131))

(assert (=> b!1647922 m!1995107))

(declare-fun m!1995133 () Bool)

(assert (=> b!1647922 m!1995133))

(declare-fun m!1995135 () Bool)

(assert (=> b!1647922 m!1995135))

(declare-fun m!1995137 () Bool)

(assert (=> b!1647922 m!1995137))

(assert (=> b!1647922 m!1995133))

(declare-fun m!1995139 () Bool)

(assert (=> b!1647922 m!1995139))

(declare-fun m!1995141 () Bool)

(assert (=> b!1647922 m!1995141))

(declare-fun m!1995143 () Bool)

(assert (=> b!1647922 m!1995143))

(declare-fun m!1995145 () Bool)

(assert (=> b!1647922 m!1995145))

(assert (=> b!1647922 m!1995109))

(assert (=> b!1647922 m!1995125))

(declare-fun m!1995147 () Bool)

(assert (=> b!1647922 m!1995147))

(assert (=> b!1647922 m!1995119))

(assert (=> b!1647922 m!1995133))

(declare-fun m!1995149 () Bool)

(assert (=> b!1647922 m!1995149))

(assert (=> b!1647922 m!1995133))

(declare-fun m!1995151 () Bool)

(assert (=> b!1647922 m!1995151))

(assert (=> b!1647922 m!1995113))

(assert (=> b!1647922 m!1995103))

(declare-fun m!1995153 () Bool)

(assert (=> b!1647922 m!1995153))

(assert (=> b!1647922 m!1995109))

(declare-fun m!1995155 () Bool)

(assert (=> b!1647922 m!1995155))

(declare-fun m!1995157 () Bool)

(assert (=> b!1647922 m!1995157))

(declare-fun m!1995159 () Bool)

(assert (=> b!1647922 m!1995159))

(assert (=> b!1647922 m!1994451))

(declare-fun m!1995161 () Bool)

(assert (=> b!1647922 m!1995161))

(assert (=> b!1647922 m!1995115))

(declare-fun m!1995163 () Bool)

(assert (=> b!1647922 m!1995163))

(assert (=> b!1647922 m!1994437))

(declare-fun m!1995165 () Bool)

(assert (=> b!1647922 m!1995165))

(assert (=> b!1647922 m!1995097))

(assert (=> b!1647922 m!1994451))

(assert (=> b!1647922 m!1995093))

(assert (=> b!1647922 m!1995121))

(assert (=> b!1647922 m!1995143))

(assert (=> b!1647922 m!1995157))

(assert (=> b!1647922 m!1995141))

(assert (=> b!1647923 m!1994451))

(assert (=> b!1647923 m!1994451))

(assert (=> b!1647923 m!1995093))

(assert (=> b!1647923 m!1995093))

(assert (=> b!1647923 m!1995095))

(declare-fun m!1995167 () Bool)

(assert (=> b!1647923 m!1995167))

(assert (=> b!1647650 d!496773))

(declare-fun d!496781 () Bool)

(declare-fun e!1056789 () Bool)

(assert (=> d!496781 e!1056789))

(declare-fun res!738402 () Bool)

(assert (=> d!496781 (=> res!738402 e!1056789)))

(declare-fun lt!610039 () Bool)

(assert (=> d!496781 (= res!738402 (not lt!610039))))

(declare-fun e!1056788 () Bool)

(assert (=> d!496781 (= lt!610039 e!1056788)))

(declare-fun res!738401 () Bool)

(assert (=> d!496781 (=> res!738401 e!1056788)))

(assert (=> d!496781 (= res!738401 ((_ is Nil!18172) lt!609635))))

(assert (=> d!496781 (= (isPrefix!1463 lt!609635 lt!609641) lt!610039)))

(declare-fun b!1647933 () Bool)

(declare-fun res!738400 () Bool)

(declare-fun e!1056787 () Bool)

(assert (=> b!1647933 (=> (not res!738400) (not e!1056787))))

(assert (=> b!1647933 (= res!738400 (= (head!3614 lt!609635) (head!3614 lt!609641)))))

(declare-fun b!1647932 () Bool)

(assert (=> b!1647932 (= e!1056788 e!1056787)))

(declare-fun res!738399 () Bool)

(assert (=> b!1647932 (=> (not res!738399) (not e!1056787))))

(assert (=> b!1647932 (= res!738399 (not ((_ is Nil!18172) lt!609641)))))

(declare-fun b!1647935 () Bool)

(assert (=> b!1647935 (= e!1056789 (>= (size!14480 lt!609641) (size!14480 lt!609635)))))

(declare-fun b!1647934 () Bool)

(declare-fun tail!2432 (List!18242) List!18242)

(assert (=> b!1647934 (= e!1056787 (isPrefix!1463 (tail!2432 lt!609635) (tail!2432 lt!609641)))))

(assert (= (and d!496781 (not res!738401)) b!1647932))

(assert (= (and b!1647932 res!738399) b!1647933))

(assert (= (and b!1647933 res!738400) b!1647934))

(assert (= (and d!496781 (not res!738402)) b!1647935))

(declare-fun m!1995169 () Bool)

(assert (=> b!1647933 m!1995169))

(declare-fun m!1995171 () Bool)

(assert (=> b!1647933 m!1995171))

(declare-fun m!1995173 () Bool)

(assert (=> b!1647935 m!1995173))

(assert (=> b!1647935 m!1994841))

(declare-fun m!1995175 () Bool)

(assert (=> b!1647934 m!1995175))

(declare-fun m!1995177 () Bool)

(assert (=> b!1647934 m!1995177))

(assert (=> b!1647934 m!1995175))

(assert (=> b!1647934 m!1995177))

(declare-fun m!1995179 () Bool)

(assert (=> b!1647934 m!1995179))

(assert (=> b!1647650 d!496781))

(declare-fun d!496783 () Bool)

(assert (=> d!496783 (isPrefix!1463 lt!609635 (++!4904 lt!609635 lt!609652))))

(declare-fun lt!610046 () Unit!30183)

(declare-fun choose!9892 (List!18242 List!18242) Unit!30183)

(assert (=> d!496783 (= lt!610046 (choose!9892 lt!609635 lt!609652))))

(assert (=> d!496783 (= (lemmaConcatTwoListThenFirstIsPrefix!988 lt!609635 lt!609652) lt!610046)))

(declare-fun bs!396292 () Bool)

(assert (= bs!396292 d!496783))

(assert (=> bs!396292 m!1994465))

(assert (=> bs!396292 m!1994465))

(declare-fun m!1995181 () Bool)

(assert (=> bs!396292 m!1995181))

(declare-fun m!1995183 () Bool)

(assert (=> bs!396292 m!1995183))

(assert (=> b!1647650 d!496783))

(declare-fun b!1647971 () Bool)

(declare-fun e!1056820 () Bool)

(assert (=> b!1647971 (= e!1056820 true)))

(declare-fun b!1647970 () Bool)

(declare-fun e!1056819 () Bool)

(assert (=> b!1647970 (= e!1056819 e!1056820)))

(declare-fun b!1647969 () Bool)

(declare-fun e!1056818 () Bool)

(assert (=> b!1647969 (= e!1056818 e!1056819)))

(declare-fun d!496785 () Bool)

(assert (=> d!496785 e!1056818))

(assert (= b!1647970 b!1647971))

(assert (= b!1647969 b!1647970))

(assert (= (and d!496785 ((_ is Cons!18173) rules!1846)) b!1647969))

(declare-fun order!10831 () Int)

(declare-fun order!10829 () Int)

(declare-fun lambda!67625 () Int)

(declare-fun dynLambda!8139 (Int Int) Int)

(declare-fun dynLambda!8140 (Int Int) Int)

(assert (=> b!1647971 (< (dynLambda!8139 order!10829 (toValue!4652 (transformation!3205 (h!23574 rules!1846)))) (dynLambda!8140 order!10831 lambda!67625))))

(declare-fun order!10833 () Int)

(declare-fun dynLambda!8141 (Int Int) Int)

(assert (=> b!1647971 (< (dynLambda!8141 order!10833 (toChars!4511 (transformation!3205 (h!23574 rules!1846)))) (dynLambda!8140 order!10831 lambda!67625))))

(assert (=> d!496785 true))

(declare-fun lt!610074 () Bool)

(declare-fun forall!4140 (List!18244 Int) Bool)

(assert (=> d!496785 (= lt!610074 (forall!4140 tokens!457 lambda!67625))))

(declare-fun e!1056811 () Bool)

(assert (=> d!496785 (= lt!610074 e!1056811)))

(declare-fun res!738427 () Bool)

(assert (=> d!496785 (=> res!738427 e!1056811)))

(assert (=> d!496785 (= res!738427 (not ((_ is Cons!18174) tokens!457)))))

(assert (=> d!496785 (not (isEmpty!11196 rules!1846))))

(assert (=> d!496785 (= (rulesProduceEachTokenIndividuallyList!1036 thiss!17113 rules!1846 tokens!457) lt!610074)))

(declare-fun b!1647959 () Bool)

(declare-fun e!1056810 () Bool)

(assert (=> b!1647959 (= e!1056811 e!1056810)))

(declare-fun res!738426 () Bool)

(assert (=> b!1647959 (=> (not res!738426) (not e!1056810))))

(assert (=> b!1647959 (= res!738426 (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 tokens!457)))))

(declare-fun b!1647960 () Bool)

(assert (=> b!1647960 (= e!1056810 (rulesProduceEachTokenIndividuallyList!1036 thiss!17113 rules!1846 (t!150661 tokens!457)))))

(assert (= (and d!496785 (not res!738427)) b!1647959))

(assert (= (and b!1647959 res!738426) b!1647960))

(declare-fun m!1995211 () Bool)

(assert (=> d!496785 m!1995211))

(assert (=> d!496785 m!1994445))

(assert (=> b!1647959 m!1994411))

(declare-fun m!1995213 () Bool)

(assert (=> b!1647960 m!1995213))

(assert (=> b!1647639 d!496785))

(declare-fun d!496793 () Bool)

(assert (=> d!496793 (= (inv!23533 (tag!3485 (h!23574 rules!1846))) (= (mod (str.len (value!101014 (tag!3485 (h!23574 rules!1846)))) 2) 0))))

(assert (=> b!1647649 d!496793))

(declare-fun d!496795 () Bool)

(declare-fun res!738430 () Bool)

(declare-fun e!1056823 () Bool)

(assert (=> d!496795 (=> (not res!738430) (not e!1056823))))

(declare-fun semiInverseModEq!1236 (Int Int) Bool)

(assert (=> d!496795 (= res!738430 (semiInverseModEq!1236 (toChars!4511 (transformation!3205 (h!23574 rules!1846))) (toValue!4652 (transformation!3205 (h!23574 rules!1846)))))))

(assert (=> d!496795 (= (inv!23537 (transformation!3205 (h!23574 rules!1846))) e!1056823)))

(declare-fun b!1647976 () Bool)

(declare-fun equivClasses!1177 (Int Int) Bool)

(assert (=> b!1647976 (= e!1056823 (equivClasses!1177 (toChars!4511 (transformation!3205 (h!23574 rules!1846))) (toValue!4652 (transformation!3205 (h!23574 rules!1846)))))))

(assert (= (and d!496795 res!738430) b!1647976))

(declare-fun m!1995215 () Bool)

(assert (=> d!496795 m!1995215))

(declare-fun m!1995217 () Bool)

(assert (=> b!1647976 m!1995217))

(assert (=> b!1647649 d!496795))

(declare-fun d!496797 () Bool)

(declare-fun res!738438 () Bool)

(declare-fun e!1056849 () Bool)

(assert (=> d!496797 (=> res!738438 e!1056849)))

(assert (=> d!496797 (= res!738438 (or (not ((_ is Cons!18174) tokens!457)) (not ((_ is Cons!18174) (t!150661 tokens!457)))))))

(assert (=> d!496797 (= (tokensListTwoByTwoPredicateSeparableList!527 thiss!17113 tokens!457 rules!1846) e!1056849)))

(declare-fun b!1648005 () Bool)

(declare-fun e!1056848 () Bool)

(assert (=> b!1648005 (= e!1056849 e!1056848)))

(declare-fun res!738439 () Bool)

(assert (=> b!1648005 (=> (not res!738439) (not e!1056848))))

(assert (=> b!1648005 (= res!738439 (separableTokensPredicate!774 thiss!17113 (h!23575 tokens!457) (h!23575 (t!150661 tokens!457)) rules!1846))))

(declare-fun lt!610094 () Unit!30183)

(declare-fun Unit!30220 () Unit!30183)

(assert (=> b!1648005 (= lt!610094 Unit!30220)))

(assert (=> b!1648005 (> (size!14478 (charsOf!1854 (h!23575 (t!150661 tokens!457)))) 0)))

(declare-fun lt!610091 () Unit!30183)

(declare-fun Unit!30221 () Unit!30183)

(assert (=> b!1648005 (= lt!610091 Unit!30221)))

(assert (=> b!1648005 (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 (t!150661 tokens!457)))))

(declare-fun lt!610090 () Unit!30183)

(declare-fun Unit!30222 () Unit!30183)

(assert (=> b!1648005 (= lt!610090 Unit!30222)))

(assert (=> b!1648005 (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 tokens!457))))

(declare-fun lt!610096 () Unit!30183)

(declare-fun lt!610092 () Unit!30183)

(assert (=> b!1648005 (= lt!610096 lt!610092)))

(assert (=> b!1648005 (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 (t!150661 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!600 (LexerInterface!2834 List!18243 List!18244 Token!5976) Unit!30183)

(assert (=> b!1648005 (= lt!610092 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!600 thiss!17113 rules!1846 tokens!457 (h!23575 (t!150661 tokens!457))))))

(declare-fun lt!610093 () Unit!30183)

(declare-fun lt!610095 () Unit!30183)

(assert (=> b!1648005 (= lt!610093 lt!610095)))

(assert (=> b!1648005 (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 tokens!457))))

(assert (=> b!1648005 (= lt!610095 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!600 thiss!17113 rules!1846 tokens!457 (h!23575 tokens!457)))))

(declare-fun b!1648006 () Bool)

(assert (=> b!1648006 (= e!1056848 (tokensListTwoByTwoPredicateSeparableList!527 thiss!17113 (Cons!18174 (h!23575 (t!150661 tokens!457)) (t!150661 (t!150661 tokens!457))) rules!1846))))

(assert (= (and d!496797 (not res!738438)) b!1648005))

(assert (= (and b!1648005 res!738439) b!1648006))

(assert (=> b!1648005 m!1995119))

(assert (=> b!1648005 m!1995119))

(declare-fun m!1995227 () Bool)

(assert (=> b!1648005 m!1995227))

(declare-fun m!1995229 () Bool)

(assert (=> b!1648005 m!1995229))

(declare-fun m!1995231 () Bool)

(assert (=> b!1648005 m!1995231))

(declare-fun m!1995233 () Bool)

(assert (=> b!1648005 m!1995233))

(assert (=> b!1648005 m!1994411))

(assert (=> b!1648005 m!1994443))

(declare-fun m!1995235 () Bool)

(assert (=> b!1648006 m!1995235))

(assert (=> b!1647638 d!496797))

(declare-fun d!496803 () Bool)

(declare-fun res!738442 () Bool)

(declare-fun e!1056865 () Bool)

(assert (=> d!496803 (=> (not res!738442) (not e!1056865))))

(declare-fun rulesValid!1164 (LexerInterface!2834 List!18243) Bool)

(assert (=> d!496803 (= res!738442 (rulesValid!1164 thiss!17113 rules!1846))))

(assert (=> d!496803 (= (rulesInvariant!2503 thiss!17113 rules!1846) e!1056865)))

(declare-fun b!1648020 () Bool)

(declare-datatypes ((List!18246 0))(
  ( (Nil!18176) (Cons!18176 (h!23577 String!20807) (t!150687 List!18246)) )
))
(declare-fun noDuplicateTag!1164 (LexerInterface!2834 List!18243 List!18246) Bool)

(assert (=> b!1648020 (= e!1056865 (noDuplicateTag!1164 thiss!17113 rules!1846 Nil!18176))))

(assert (= (and d!496803 res!738442) b!1648020))

(declare-fun m!1995245 () Bool)

(assert (=> d!496803 m!1995245))

(declare-fun m!1995247 () Bool)

(assert (=> b!1648020 m!1995247))

(assert (=> b!1647648 d!496803))

(declare-fun d!496805 () Bool)

(declare-fun e!1056884 () Bool)

(assert (=> d!496805 e!1056884))

(declare-fun res!738445 () Bool)

(assert (=> d!496805 (=> (not res!738445) (not e!1056884))))

(declare-fun prepend!765 (Conc!6059 Token!5976) Conc!6059)

(assert (=> d!496805 (= res!738445 (isBalanced!1850 (prepend!765 (c!267993 (seqFromList!2150 (t!150661 (t!150661 tokens!457)))) (h!23575 (t!150661 tokens!457)))))))

(declare-fun lt!610099 () BalanceConc!12062)

(assert (=> d!496805 (= lt!610099 (BalanceConc!12063 (prepend!765 (c!267993 (seqFromList!2150 (t!150661 (t!150661 tokens!457)))) (h!23575 (t!150661 tokens!457)))))))

(assert (=> d!496805 (= (prepend!763 (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (h!23575 (t!150661 tokens!457))) lt!610099)))

(declare-fun b!1648052 () Bool)

(assert (=> b!1648052 (= e!1056884 (= (list!7218 lt!610099) (Cons!18174 (h!23575 (t!150661 tokens!457)) (list!7218 (seqFromList!2150 (t!150661 (t!150661 tokens!457)))))))))

(assert (= (and d!496805 res!738445) b!1648052))

(declare-fun m!1995253 () Bool)

(assert (=> d!496805 m!1995253))

(assert (=> d!496805 m!1995253))

(declare-fun m!1995255 () Bool)

(assert (=> d!496805 m!1995255))

(declare-fun m!1995257 () Bool)

(assert (=> b!1648052 m!1995257))

(assert (=> b!1648052 m!1994437))

(declare-fun m!1995259 () Bool)

(assert (=> b!1648052 m!1995259))

(assert (=> b!1647646 d!496805))

(declare-fun d!496807 () Bool)

(assert (=> d!496807 (= (list!7218 (prepend!763 (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (h!23575 (t!150661 tokens!457)))) (list!7222 (c!267993 (prepend!763 (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (h!23575 (t!150661 tokens!457))))))))

(declare-fun bs!396293 () Bool)

(assert (= bs!396293 d!496807))

(declare-fun m!1995261 () Bool)

(assert (=> bs!396293 m!1995261))

(assert (=> b!1647646 d!496807))

(declare-fun d!496809 () Bool)

(assert (=> d!496809 (= (list!7218 (_1!10324 lt!609647)) (list!7218 (prepend!763 (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (h!23575 (t!150661 tokens!457)))))))

(declare-fun lt!610102 () Unit!30183)

(declare-fun choose!9893 (Token!5976 List!18244 BalanceConc!12062) Unit!30183)

(assert (=> d!496809 (= lt!610102 (choose!9893 (h!23575 (t!150661 tokens!457)) (t!150661 (t!150661 tokens!457)) (_1!10324 lt!609647)))))

(declare-fun $colon$colon!362 (List!18244 Token!5976) List!18244)

(assert (=> d!496809 (= (list!7218 (_1!10324 lt!609647)) (list!7218 (seqFromList!2150 ($colon$colon!362 (t!150661 (t!150661 tokens!457)) (h!23575 (t!150661 tokens!457))))))))

(assert (=> d!496809 (= (seqFromListBHdTlConstructive!280 (h!23575 (t!150661 tokens!457)) (t!150661 (t!150661 tokens!457)) (_1!10324 lt!609647)) lt!610102)))

(declare-fun bs!396294 () Bool)

(assert (= bs!396294 d!496809))

(assert (=> bs!396294 m!1994437))

(assert (=> bs!396294 m!1994439))

(declare-fun m!1995263 () Bool)

(assert (=> bs!396294 m!1995263))

(declare-fun m!1995265 () Bool)

(assert (=> bs!396294 m!1995265))

(assert (=> bs!396294 m!1994439))

(assert (=> bs!396294 m!1994441))

(assert (=> bs!396294 m!1994437))

(assert (=> bs!396294 m!1994423))

(declare-fun m!1995267 () Bool)

(assert (=> bs!396294 m!1995267))

(declare-fun m!1995269 () Bool)

(assert (=> bs!396294 m!1995269))

(assert (=> bs!396294 m!1995269))

(assert (=> bs!396294 m!1995263))

(assert (=> b!1647646 d!496809))

(declare-fun d!496811 () Bool)

(assert (=> d!496811 (= (seqFromList!2150 (t!150661 (t!150661 tokens!457))) (fromListB!954 (t!150661 (t!150661 tokens!457))))))

(declare-fun bs!396295 () Bool)

(assert (= bs!396295 d!496811))

(declare-fun m!1995271 () Bool)

(assert (=> bs!396295 m!1995271))

(assert (=> b!1647646 d!496811))

(declare-fun d!496813 () Bool)

(assert (=> d!496813 (= (list!7218 lt!609649) (list!7222 (c!267993 lt!609649)))))

(declare-fun bs!396296 () Bool)

(assert (= bs!396296 d!496813))

(declare-fun m!1995273 () Bool)

(assert (=> bs!396296 m!1995273))

(assert (=> b!1647646 d!496813))

(declare-fun d!496815 () Bool)

(assert (=> d!496815 (= (isEmpty!11196 rules!1846) ((_ is Nil!18173) rules!1846))))

(assert (=> b!1647635 d!496815))

(declare-fun d!496817 () Bool)

(declare-fun lt!610108 () Bool)

(declare-fun e!1056890 () Bool)

(assert (=> d!496817 (= lt!610108 e!1056890)))

(declare-fun res!738452 () Bool)

(assert (=> d!496817 (=> (not res!738452) (not e!1056890))))

(assert (=> d!496817 (= res!738452 (= (list!7218 (_1!10324 (lex!1318 thiss!17113 rules!1846 (print!1365 thiss!17113 (singletonSeq!1681 (h!23575 tokens!457)))))) (list!7218 (singletonSeq!1681 (h!23575 tokens!457)))))))

(declare-fun e!1056889 () Bool)

(assert (=> d!496817 (= lt!610108 e!1056889)))

(declare-fun res!738454 () Bool)

(assert (=> d!496817 (=> (not res!738454) (not e!1056889))))

(declare-fun lt!610107 () tuple2!17844)

(assert (=> d!496817 (= res!738454 (= (size!14479 (_1!10324 lt!610107)) 1))))

(assert (=> d!496817 (= lt!610107 (lex!1318 thiss!17113 rules!1846 (print!1365 thiss!17113 (singletonSeq!1681 (h!23575 tokens!457)))))))

(assert (=> d!496817 (not (isEmpty!11196 rules!1846))))

(assert (=> d!496817 (= (rulesProduceIndividualToken!1482 thiss!17113 rules!1846 (h!23575 tokens!457)) lt!610108)))

(declare-fun b!1648059 () Bool)

(declare-fun res!738453 () Bool)

(assert (=> b!1648059 (=> (not res!738453) (not e!1056889))))

(assert (=> b!1648059 (= res!738453 (= (apply!4769 (_1!10324 lt!610107) 0) (h!23575 tokens!457)))))

(declare-fun b!1648060 () Bool)

(assert (=> b!1648060 (= e!1056889 (isEmpty!11207 (_2!10324 lt!610107)))))

(declare-fun b!1648061 () Bool)

(assert (=> b!1648061 (= e!1056890 (isEmpty!11207 (_2!10324 (lex!1318 thiss!17113 rules!1846 (print!1365 thiss!17113 (singletonSeq!1681 (h!23575 tokens!457)))))))))

(assert (= (and d!496817 res!738454) b!1648059))

(assert (= (and b!1648059 res!738453) b!1648060))

(assert (= (and d!496817 res!738452) b!1648061))

(assert (=> d!496817 m!1994445))

(declare-fun m!1995275 () Bool)

(assert (=> d!496817 m!1995275))

(assert (=> d!496817 m!1994403))

(declare-fun m!1995277 () Bool)

(assert (=> d!496817 m!1995277))

(declare-fun m!1995279 () Bool)

(assert (=> d!496817 m!1995279))

(declare-fun m!1995281 () Bool)

(assert (=> d!496817 m!1995281))

(declare-fun m!1995283 () Bool)

(assert (=> d!496817 m!1995283))

(assert (=> d!496817 m!1994403))

(assert (=> d!496817 m!1995279))

(assert (=> d!496817 m!1994403))

(declare-fun m!1995285 () Bool)

(assert (=> b!1648059 m!1995285))

(declare-fun m!1995287 () Bool)

(assert (=> b!1648060 m!1995287))

(assert (=> b!1648061 m!1994403))

(assert (=> b!1648061 m!1994403))

(assert (=> b!1648061 m!1995279))

(assert (=> b!1648061 m!1995279))

(assert (=> b!1648061 m!1995281))

(declare-fun m!1995289 () Bool)

(assert (=> b!1648061 m!1995289))

(assert (=> b!1647645 d!496817))

(declare-fun d!496819 () Bool)

(declare-fun prefixMatchZipperSequence!611 (Regex!4533 BalanceConc!12060) Bool)

(declare-fun rulesRegex!589 (LexerInterface!2834 List!18243) Regex!4533)

(assert (=> d!496819 (= (separableTokensPredicate!774 thiss!17113 (h!23575 tokens!457) (h!23575 (t!150661 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!611 (rulesRegex!589 thiss!17113 rules!1846) (++!4906 (charsOf!1854 (h!23575 tokens!457)) (singletonSeq!1683 (apply!4772 (charsOf!1854 (h!23575 (t!150661 tokens!457))) 0))))))))

(declare-fun bs!396297 () Bool)

(assert (= bs!396297 d!496819))

(declare-fun m!1995291 () Bool)

(assert (=> bs!396297 m!1995291))

(declare-fun m!1995293 () Bool)

(assert (=> bs!396297 m!1995293))

(declare-fun m!1995295 () Bool)

(assert (=> bs!396297 m!1995295))

(declare-fun m!1995297 () Bool)

(assert (=> bs!396297 m!1995297))

(declare-fun m!1995299 () Bool)

(assert (=> bs!396297 m!1995299))

(assert (=> bs!396297 m!1994449))

(assert (=> bs!396297 m!1995119))

(assert (=> bs!396297 m!1995291))

(assert (=> bs!396297 m!1995119))

(assert (=> bs!396297 m!1995295))

(assert (=> bs!396297 m!1994449))

(assert (=> bs!396297 m!1995293))

(assert (=> bs!396297 m!1995297))

(assert (=> b!1647644 d!496819))

(declare-fun d!496821 () Bool)

(assert (=> d!496821 (= (inv!23533 (tag!3485 (rule!5063 (h!23575 tokens!457)))) (= (mod (str.len (value!101014 (tag!3485 (rule!5063 (h!23575 tokens!457))))) 2) 0))))

(assert (=> b!1647654 d!496821))

(declare-fun d!496823 () Bool)

(declare-fun res!738455 () Bool)

(declare-fun e!1056891 () Bool)

(assert (=> d!496823 (=> (not res!738455) (not e!1056891))))

(assert (=> d!496823 (= res!738455 (semiInverseModEq!1236 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (toValue!4652 (transformation!3205 (rule!5063 (h!23575 tokens!457))))))))

(assert (=> d!496823 (= (inv!23537 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) e!1056891)))

(declare-fun b!1648062 () Bool)

(assert (=> b!1648062 (= e!1056891 (equivClasses!1177 (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))) (toValue!4652 (transformation!3205 (rule!5063 (h!23575 tokens!457))))))))

(assert (= (and d!496823 res!738455) b!1648062))

(declare-fun m!1995301 () Bool)

(assert (=> d!496823 m!1995301))

(declare-fun m!1995303 () Bool)

(assert (=> b!1648062 m!1995303))

(assert (=> b!1647654 d!496823))

(declare-fun b!1648073 () Bool)

(declare-fun b_free!44759 () Bool)

(declare-fun b_next!45463 () Bool)

(assert (=> b!1648073 (= b_free!44759 (not b_next!45463))))

(declare-fun tp!477275 () Bool)

(declare-fun b_and!117021 () Bool)

(assert (=> b!1648073 (= tp!477275 b_and!117021)))

(declare-fun b_free!44761 () Bool)

(declare-fun b_next!45465 () Bool)

(assert (=> b!1648073 (= b_free!44761 (not b_next!45465))))

(declare-fun tb!94411 () Bool)

(declare-fun t!150684 () Bool)

(assert (=> (and b!1648073 (= (toChars!4511 (transformation!3205 (h!23574 (t!150660 rules!1846)))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457))))) t!150684) tb!94411))

(declare-fun result!114036 () Bool)

(assert (= result!114036 result!114016))

(assert (=> d!496741 t!150684))

(assert (=> b!1647872 t!150684))

(declare-fun b_and!117023 () Bool)

(declare-fun tp!477278 () Bool)

(assert (=> b!1648073 (= tp!477278 (and (=> t!150684 result!114036) b_and!117023))))

(declare-fun e!1056903 () Bool)

(assert (=> b!1648073 (= e!1056903 (and tp!477275 tp!477278))))

(declare-fun b!1648072 () Bool)

(declare-fun tp!477277 () Bool)

(declare-fun e!1056901 () Bool)

(assert (=> b!1648072 (= e!1056901 (and tp!477277 (inv!23533 (tag!3485 (h!23574 (t!150660 rules!1846)))) (inv!23537 (transformation!3205 (h!23574 (t!150660 rules!1846)))) e!1056903))))

(declare-fun b!1648071 () Bool)

(declare-fun e!1056902 () Bool)

(declare-fun tp!477276 () Bool)

(assert (=> b!1648071 (= e!1056902 (and e!1056901 tp!477276))))

(assert (=> b!1647636 (= tp!477209 e!1056902)))

(assert (= b!1648072 b!1648073))

(assert (= b!1648071 b!1648072))

(assert (= (and b!1647636 ((_ is Cons!18173) (t!150660 rules!1846))) b!1648071))

(declare-fun m!1995305 () Bool)

(assert (=> b!1648072 m!1995305))

(declare-fun m!1995307 () Bool)

(assert (=> b!1648072 m!1995307))

(declare-fun b!1648087 () Bool)

(declare-fun b_free!44763 () Bool)

(declare-fun b_next!45467 () Bool)

(assert (=> b!1648087 (= b_free!44763 (not b_next!45467))))

(declare-fun tp!477289 () Bool)

(declare-fun b_and!117025 () Bool)

(assert (=> b!1648087 (= tp!477289 b_and!117025)))

(declare-fun b_free!44765 () Bool)

(declare-fun b_next!45469 () Bool)

(assert (=> b!1648087 (= b_free!44765 (not b_next!45469))))

(declare-fun t!150686 () Bool)

(declare-fun tb!94413 () Bool)

(assert (=> (and b!1648087 (= (toChars!4511 (transformation!3205 (rule!5063 (h!23575 (t!150661 tokens!457))))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457))))) t!150686) tb!94413))

(declare-fun result!114040 () Bool)

(assert (= result!114040 result!114016))

(assert (=> d!496741 t!150686))

(assert (=> b!1647872 t!150686))

(declare-fun tp!477293 () Bool)

(declare-fun b_and!117027 () Bool)

(assert (=> b!1648087 (= tp!477293 (and (=> t!150686 result!114040) b_and!117027))))

(declare-fun e!1056916 () Bool)

(declare-fun e!1056918 () Bool)

(declare-fun tp!477292 () Bool)

(declare-fun b!1648085 () Bool)

(assert (=> b!1648085 (= e!1056916 (and (inv!21 (value!101015 (h!23575 (t!150661 tokens!457)))) e!1056918 tp!477292))))

(declare-fun tp!477291 () Bool)

(declare-fun b!1648084 () Bool)

(declare-fun e!1056920 () Bool)

(assert (=> b!1648084 (= e!1056920 (and (inv!23536 (h!23575 (t!150661 tokens!457))) e!1056916 tp!477291))))

(declare-fun e!1056921 () Bool)

(assert (=> b!1648087 (= e!1056921 (and tp!477289 tp!477293))))

(declare-fun tp!477290 () Bool)

(declare-fun b!1648086 () Bool)

(assert (=> b!1648086 (= e!1056918 (and tp!477290 (inv!23533 (tag!3485 (rule!5063 (h!23575 (t!150661 tokens!457))))) (inv!23537 (transformation!3205 (rule!5063 (h!23575 (t!150661 tokens!457))))) e!1056921))))

(assert (=> b!1647641 (= tp!477207 e!1056920)))

(assert (= b!1648086 b!1648087))

(assert (= b!1648085 b!1648086))

(assert (= b!1648084 b!1648085))

(assert (= (and b!1647641 ((_ is Cons!18174) (t!150661 tokens!457))) b!1648084))

(declare-fun m!1995309 () Bool)

(assert (=> b!1648085 m!1995309))

(declare-fun m!1995311 () Bool)

(assert (=> b!1648084 m!1995311))

(declare-fun m!1995313 () Bool)

(assert (=> b!1648086 m!1995313))

(declare-fun m!1995315 () Bool)

(assert (=> b!1648086 m!1995315))

(declare-fun b!1648092 () Bool)

(declare-fun e!1056924 () Bool)

(declare-fun tp_is_empty!7353 () Bool)

(declare-fun tp!477296 () Bool)

(assert (=> b!1648092 (= e!1056924 (and tp_is_empty!7353 tp!477296))))

(assert (=> b!1647651 (= tp!477205 e!1056924)))

(assert (= (and b!1647651 ((_ is Cons!18172) (originalCharacters!4019 (h!23575 tokens!457)))) b!1648092))

(declare-fun e!1056927 () Bool)

(assert (=> b!1647649 (= tp!477202 e!1056927)))

(declare-fun b!1648105 () Bool)

(declare-fun tp!477309 () Bool)

(assert (=> b!1648105 (= e!1056927 tp!477309)))

(declare-fun b!1648106 () Bool)

(declare-fun tp!477307 () Bool)

(declare-fun tp!477310 () Bool)

(assert (=> b!1648106 (= e!1056927 (and tp!477307 tp!477310))))

(declare-fun b!1648104 () Bool)

(declare-fun tp!477311 () Bool)

(declare-fun tp!477308 () Bool)

(assert (=> b!1648104 (= e!1056927 (and tp!477311 tp!477308))))

(declare-fun b!1648103 () Bool)

(assert (=> b!1648103 (= e!1056927 tp_is_empty!7353)))

(assert (= (and b!1647649 ((_ is ElementMatch!4533) (regex!3205 (h!23574 rules!1846)))) b!1648103))

(assert (= (and b!1647649 ((_ is Concat!7829) (regex!3205 (h!23574 rules!1846)))) b!1648104))

(assert (= (and b!1647649 ((_ is Star!4533) (regex!3205 (h!23574 rules!1846)))) b!1648105))

(assert (= (and b!1647649 ((_ is Union!4533) (regex!3205 (h!23574 rules!1846)))) b!1648106))

(declare-fun e!1056928 () Bool)

(assert (=> b!1647654 (= tp!477208 e!1056928)))

(declare-fun b!1648109 () Bool)

(declare-fun tp!477314 () Bool)

(assert (=> b!1648109 (= e!1056928 tp!477314)))

(declare-fun b!1648110 () Bool)

(declare-fun tp!477312 () Bool)

(declare-fun tp!477315 () Bool)

(assert (=> b!1648110 (= e!1056928 (and tp!477312 tp!477315))))

(declare-fun b!1648108 () Bool)

(declare-fun tp!477316 () Bool)

(declare-fun tp!477313 () Bool)

(assert (=> b!1648108 (= e!1056928 (and tp!477316 tp!477313))))

(declare-fun b!1648107 () Bool)

(assert (=> b!1648107 (= e!1056928 tp_is_empty!7353)))

(assert (= (and b!1647654 ((_ is ElementMatch!4533) (regex!3205 (rule!5063 (h!23575 tokens!457))))) b!1648107))

(assert (= (and b!1647654 ((_ is Concat!7829) (regex!3205 (rule!5063 (h!23575 tokens!457))))) b!1648108))

(assert (= (and b!1647654 ((_ is Star!4533) (regex!3205 (rule!5063 (h!23575 tokens!457))))) b!1648109))

(assert (= (and b!1647654 ((_ is Union!4533) (regex!3205 (rule!5063 (h!23575 tokens!457))))) b!1648110))

(declare-fun b_lambda!51801 () Bool)

(assert (= b_lambda!51795 (or (and b!1647647 b_free!44745 (= (toChars!4511 (transformation!3205 (h!23574 rules!1846))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) (and b!1647637 b_free!44749) (and b!1648073 b_free!44761 (= (toChars!4511 (transformation!3205 (h!23574 (t!150660 rules!1846)))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) (and b!1648087 b_free!44765 (= (toChars!4511 (transformation!3205 (rule!5063 (h!23575 (t!150661 tokens!457))))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) b_lambda!51801)))

(declare-fun b_lambda!51803 () Bool)

(assert (= b_lambda!51793 (or (and b!1647647 b_free!44745 (= (toChars!4511 (transformation!3205 (h!23574 rules!1846))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) (and b!1647637 b_free!44749) (and b!1648073 b_free!44761 (= (toChars!4511 (transformation!3205 (h!23574 (t!150660 rules!1846)))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) (and b!1648087 b_free!44765 (= (toChars!4511 (transformation!3205 (rule!5063 (h!23575 (t!150661 tokens!457))))) (toChars!4511 (transformation!3205 (rule!5063 (h!23575 tokens!457)))))) b_lambda!51803)))

(check-sat (not b!1647855) (not b!1647829) (not d!496737) (not d!496733) (not d!496663) (not b!1648106) (not tb!94403) (not b!1647822) (not b!1648084) (not d!496759) (not d!496765) (not b!1647969) (not d!496767) (not b!1647934) (not d!496687) (not b!1647857) (not b_next!45453) (not b!1648105) (not b!1648006) (not d!496685) (not d!496761) (not b!1648072) (not d!496817) (not b!1647863) (not b!1647801) (not d!496661) (not b_lambda!51801) (not b!1648085) (not d!496739) b_and!117025 (not b!1647889) (not b_next!45469) tp_is_empty!7353 (not b_next!45467) (not b!1648092) (not b!1648071) (not b!1647736) (not b!1647923) (not b!1647804) (not b!1647976) (not d!496735) (not b!1647867) (not d!496755) (not d!496743) (not b!1647933) (not d!496809) (not b!1648052) (not b!1647831) b_and!117021 (not d!496803) (not b!1647802) (not b!1647816) (not d!496753) (not b_next!45447) (not b!1648104) (not b!1648110) (not b!1647853) (not b_next!45449) (not b!1647891) b_and!117009 (not d!496771) (not d!496741) (not d!496745) (not b!1647873) (not b!1648061) b_and!117023 b_and!117011 (not b!1647856) b_and!116989 (not d!496749) (not b!1647858) (not b!1648086) (not d!496795) b_and!116993 (not b!1648062) (not b!1648020) (not b!1648059) (not b!1647887) (not b!1647960) (not b!1647892) (not b!1647935) (not b!1647852) (not d!496785) (not d!496747) (not b!1648108) (not b!1647959) (not d!496811) (not d!496769) (not b!1647815) (not b!1648060) (not b_lambda!51803) (not d!496823) (not d!496751) (not d!496807) (not b!1647735) (not b!1648109) (not b!1647854) b_and!117027 (not b!1647886) (not b!1647890) (not b!1647851) (not b!1648005) (not b!1647922) (not b!1647803) (not d!496783) (not d!496819) (not b_next!45465) (not b!1647734) (not d!496805) (not bm!105819) (not b!1647884) (not b_next!45451) (not b_next!45463) (not d!496813) (not b!1647872) (not d!496773))
(check-sat (not b_next!45453) b_and!117025 b_and!117021 (not b_next!45447) b_and!116993 b_and!117027 (not b_next!45465) (not b_next!45451) (not b_next!45463) (not b_next!45469) (not b_next!45467) (not b_next!45449) b_and!117009 b_and!117023 b_and!117011 b_and!116989)
