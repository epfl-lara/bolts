; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224764 () Bool)

(assert start!224764)

(declare-fun b!2290426 () Bool)

(declare-fun b_free!68829 () Bool)

(declare-fun b_next!69533 () Bool)

(assert (=> b!2290426 (= b_free!68829 (not b_next!69533))))

(declare-fun tp!726245 () Bool)

(declare-fun b_and!181729 () Bool)

(assert (=> b!2290426 (= tp!726245 b_and!181729)))

(declare-fun b_free!68831 () Bool)

(declare-fun b_next!69535 () Bool)

(assert (=> b!2290426 (= b_free!68831 (not b_next!69535))))

(declare-fun tp!726249 () Bool)

(declare-fun b_and!181731 () Bool)

(assert (=> b!2290426 (= tp!726249 b_and!181731)))

(declare-fun b!2290425 () Bool)

(declare-fun b_free!68833 () Bool)

(declare-fun b_next!69537 () Bool)

(assert (=> b!2290425 (= b_free!68833 (not b_next!69537))))

(declare-fun tp!726253 () Bool)

(declare-fun b_and!181733 () Bool)

(assert (=> b!2290425 (= tp!726253 b_and!181733)))

(declare-fun b_free!68835 () Bool)

(declare-fun b_next!69539 () Bool)

(assert (=> b!2290425 (= b_free!68835 (not b_next!69539))))

(declare-fun tp!726251 () Bool)

(declare-fun b_and!181735 () Bool)

(assert (=> b!2290425 (= tp!726251 b_and!181735)))

(declare-fun b!2290440 () Bool)

(declare-fun b_free!68837 () Bool)

(declare-fun b_next!69541 () Bool)

(assert (=> b!2290440 (= b_free!68837 (not b_next!69541))))

(declare-fun tp!726242 () Bool)

(declare-fun b_and!181737 () Bool)

(assert (=> b!2290440 (= tp!726242 b_and!181737)))

(declare-fun b_free!68839 () Bool)

(declare-fun b_next!69543 () Bool)

(assert (=> b!2290440 (= b_free!68839 (not b_next!69543))))

(declare-fun tp!726246 () Bool)

(declare-fun b_and!181739 () Bool)

(assert (=> b!2290440 (= tp!726246 b_and!181739)))

(declare-fun b!2290417 () Bool)

(declare-fun b_free!68841 () Bool)

(declare-fun b_next!69545 () Bool)

(assert (=> b!2290417 (= b_free!68841 (not b_next!69545))))

(declare-fun tp!726256 () Bool)

(declare-fun b_and!181741 () Bool)

(assert (=> b!2290417 (= tp!726256 b_and!181741)))

(declare-fun b_free!68843 () Bool)

(declare-fun b_next!69547 () Bool)

(assert (=> b!2290417 (= b_free!68843 (not b_next!69547))))

(declare-fun tp!726257 () Bool)

(declare-fun b_and!181743 () Bool)

(assert (=> b!2290417 (= tp!726257 b_and!181743)))

(declare-fun res!979409 () Bool)

(declare-fun e!1467682 () Bool)

(assert (=> start!224764 (=> (not res!979409) (not e!1467682))))

(declare-datatypes ((LexerInterface!3962 0))(
  ( (LexerInterfaceExt!3959 (__x!18114 Int)) (Lexer!3960) )
))
(declare-fun thiss!16613 () LexerInterface!3962)

(get-info :version)

(assert (=> start!224764 (= res!979409 ((_ is Lexer!3960) thiss!16613))))

(assert (=> start!224764 e!1467682))

(assert (=> start!224764 true))

(declare-fun e!1467663 () Bool)

(assert (=> start!224764 e!1467663))

(declare-fun e!1467678 () Bool)

(assert (=> start!224764 e!1467678))

(declare-fun e!1467660 () Bool)

(assert (=> start!224764 e!1467660))

(declare-fun e!1467657 () Bool)

(assert (=> start!224764 e!1467657))

(declare-fun e!1467654 () Bool)

(assert (=> start!224764 e!1467654))

(declare-fun e!1467673 () Bool)

(assert (=> start!224764 e!1467673))

(declare-fun e!1467679 () Bool)

(assert (=> start!224764 e!1467679))

(declare-fun e!1467672 () Bool)

(assert (=> b!2290417 (= e!1467672 (and tp!726256 tp!726257))))

(declare-fun b!2290418 () Bool)

(declare-fun e!1467661 () Bool)

(declare-datatypes ((List!27369 0))(
  ( (Nil!27275) (Cons!27275 (h!32676 (_ BitVec 16)) (t!204565 List!27369)) )
))
(declare-datatypes ((TokenValue!4527 0))(
  ( (FloatLiteralValue!9054 (text!32134 List!27369)) (TokenValueExt!4526 (__x!18115 Int)) (Broken!22635 (value!138196 List!27369)) (Object!4620) (End!4527) (Def!4527) (Underscore!4527) (Match!4527) (Else!4527) (Error!4527) (Case!4527) (If!4527) (Extends!4527) (Abstract!4527) (Class!4527) (Val!4527) (DelimiterValue!9054 (del!4587 List!27369)) (KeywordValue!4533 (value!138197 List!27369)) (CommentValue!9054 (value!138198 List!27369)) (WhitespaceValue!9054 (value!138199 List!27369)) (IndentationValue!4527 (value!138200 List!27369)) (String!29738) (Int32!4527) (Broken!22636 (value!138201 List!27369)) (Boolean!4528) (Unit!40157) (OperatorValue!4530 (op!4587 List!27369)) (IdentifierValue!9054 (value!138202 List!27369)) (IdentifierValue!9055 (value!138203 List!27369)) (WhitespaceValue!9055 (value!138204 List!27369)) (True!9054) (False!9054) (Broken!22637 (value!138205 List!27369)) (Broken!22638 (value!138206 List!27369)) (True!9055) (RightBrace!4527) (RightBracket!4527) (Colon!4527) (Null!4527) (Comma!4527) (LeftBracket!4527) (False!9055) (LeftBrace!4527) (ImaginaryLiteralValue!4527 (text!32135 List!27369)) (StringLiteralValue!13581 (value!138207 List!27369)) (EOFValue!4527 (value!138208 List!27369)) (IdentValue!4527 (value!138209 List!27369)) (DelimiterValue!9055 (value!138210 List!27369)) (DedentValue!4527 (value!138211 List!27369)) (NewLineValue!4527 (value!138212 List!27369)) (IntegerValue!13581 (value!138213 (_ BitVec 32)) (text!32136 List!27369)) (IntegerValue!13582 (value!138214 Int) (text!32137 List!27369)) (Times!4527) (Or!4527) (Equal!4527) (Minus!4527) (Broken!22639 (value!138215 List!27369)) (And!4527) (Div!4527) (LessEqual!4527) (Mod!4527) (Concat!11240) (Not!4527) (Plus!4527) (SpaceValue!4527 (value!138216 List!27369)) (IntegerValue!13583 (value!138217 Int) (text!32138 List!27369)) (StringLiteralValue!13582 (text!32139 List!27369)) (FloatLiteralValue!9055 (text!32140 List!27369)) (BytesLiteralValue!4527 (value!138218 List!27369)) (CommentValue!9055 (value!138219 List!27369)) (StringLiteralValue!13583 (value!138220 List!27369)) (ErrorTokenValue!4527 (msg!4588 List!27369)) )
))
(declare-datatypes ((C!13572 0))(
  ( (C!13573 (val!7834 Int)) )
))
(declare-datatypes ((List!27370 0))(
  ( (Nil!27276) (Cons!27276 (h!32677 C!13572) (t!204566 List!27370)) )
))
(declare-datatypes ((IArray!17761 0))(
  ( (IArray!17762 (innerList!8938 List!27370)) )
))
(declare-datatypes ((Conc!8878 0))(
  ( (Node!8878 (left!20673 Conc!8878) (right!21003 Conc!8878) (csize!17986 Int) (cheight!9089 Int)) (Leaf!13046 (xs!11820 IArray!17761) (csize!17987 Int)) (Empty!8878) )
))
(declare-datatypes ((BalanceConc!17484 0))(
  ( (BalanceConc!17485 (c!363162 Conc!8878)) )
))
(declare-datatypes ((String!29739 0))(
  ( (String!29740 (value!138221 String)) )
))
(declare-datatypes ((Regex!6713 0))(
  ( (ElementMatch!6713 (c!363163 C!13572)) (Concat!11241 (regOne!13938 Regex!6713) (regTwo!13938 Regex!6713)) (EmptyExpr!6713) (Star!6713 (reg!7042 Regex!6713)) (EmptyLang!6713) (Union!6713 (regOne!13939 Regex!6713) (regTwo!13939 Regex!6713)) )
))
(declare-datatypes ((TokenValueInjection!8594 0))(
  ( (TokenValueInjection!8595 (toValue!6155 Int) (toChars!6014 Int)) )
))
(declare-datatypes ((Rule!8530 0))(
  ( (Rule!8531 (regex!4365 Regex!6713) (tag!4855 String!29739) (isSeparator!4365 Bool) (transformation!4365 TokenValueInjection!8594)) )
))
(declare-fun r!2363 () Rule!8530)

(declare-datatypes ((Token!8208 0))(
  ( (Token!8209 (value!138222 TokenValue!4527) (rule!6699 Rule!8530) (size!21470 Int) (originalCharacters!5135 List!27370)) )
))
(declare-datatypes ((List!27371 0))(
  ( (Nil!27277) (Cons!27277 (h!32678 Token!8208) (t!204567 List!27371)) )
))
(declare-fun tokens!456 () List!27371)

(declare-fun matchR!2970 (Regex!6713 List!27370) Bool)

(declare-fun list!10680 (BalanceConc!17484) List!27370)

(declare-fun charsOf!2753 (Token!8208) BalanceConc!17484)

(declare-fun head!4992 (List!27371) Token!8208)

(assert (=> b!2290418 (= e!1467661 (not (matchR!2970 (regex!4365 r!2363) (list!10680 (charsOf!2753 (head!4992 tokens!456))))))))

(declare-fun b!2290419 () Bool)

(declare-fun res!979425 () Bool)

(declare-fun e!1467668 () Bool)

(assert (=> b!2290419 (=> res!979425 e!1467668)))

(assert (=> b!2290419 (= res!979425 ((_ is Nil!27277) tokens!456))))

(declare-fun b!2290420 () Bool)

(declare-fun e!1467675 () Bool)

(declare-fun e!1467677 () Bool)

(assert (=> b!2290420 (= e!1467675 e!1467677)))

(declare-fun res!979415 () Bool)

(assert (=> b!2290420 (=> (not res!979415) (not e!1467677))))

(declare-fun e!1467676 () Bool)

(assert (=> b!2290420 (= res!979415 e!1467676)))

(declare-fun res!979416 () Bool)

(assert (=> b!2290420 (=> res!979416 e!1467676)))

(declare-fun lt!849770 () Bool)

(assert (=> b!2290420 (= res!979416 lt!849770)))

(declare-fun isEmpty!15529 (List!27371) Bool)

(assert (=> b!2290420 (= lt!849770 (isEmpty!15529 tokens!456))))

(declare-fun b!2290421 () Bool)

(assert (=> b!2290421 (= e!1467682 e!1467675)))

(declare-fun res!979420 () Bool)

(assert (=> b!2290421 (=> (not res!979420) (not e!1467675))))

(declare-datatypes ((IArray!17763 0))(
  ( (IArray!17764 (innerList!8939 List!27371)) )
))
(declare-datatypes ((Conc!8879 0))(
  ( (Node!8879 (left!20674 Conc!8879) (right!21004 Conc!8879) (csize!17988 Int) (cheight!9090 Int)) (Leaf!13047 (xs!11821 IArray!17763) (csize!17989 Int)) (Empty!8879) )
))
(declare-datatypes ((BalanceConc!17486 0))(
  ( (BalanceConc!17487 (c!363164 Conc!8879)) )
))
(declare-datatypes ((tuple2!27086 0))(
  ( (tuple2!27087 (_1!16053 BalanceConc!17486) (_2!16053 BalanceConc!17484)) )
))
(declare-fun lt!849774 () tuple2!27086)

(declare-fun suffix!886 () List!27370)

(declare-datatypes ((tuple2!27088 0))(
  ( (tuple2!27089 (_1!16054 List!27371) (_2!16054 List!27370)) )
))
(declare-fun list!10681 (BalanceConc!17486) List!27371)

(assert (=> b!2290421 (= res!979420 (= (tuple2!27089 (list!10681 (_1!16053 lt!849774)) (list!10680 (_2!16053 lt!849774))) (tuple2!27089 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27370)

(declare-datatypes ((List!27372 0))(
  ( (Nil!27278) (Cons!27278 (h!32679 Rule!8530) (t!204568 List!27372)) )
))
(declare-fun rules!1750 () List!27372)

(declare-fun lex!1801 (LexerInterface!3962 List!27372 BalanceConc!17484) tuple2!27086)

(declare-fun seqFromList!3069 (List!27370) BalanceConc!17484)

(assert (=> b!2290421 (= lt!849774 (lex!1801 thiss!16613 rules!1750 (seqFromList!3069 input!1722)))))

(declare-fun b!2290422 () Bool)

(declare-fun res!979411 () Bool)

(declare-fun e!1467670 () Bool)

(assert (=> b!2290422 (=> res!979411 e!1467670)))

(declare-fun lt!849781 () List!27370)

(assert (=> b!2290422 (= res!979411 (not (matchR!2970 (regex!4365 r!2363) lt!849781)))))

(declare-fun b!2290423 () Bool)

(declare-fun res!979418 () Bool)

(assert (=> b!2290423 (=> (not res!979418) (not e!1467677))))

(declare-fun e!1467674 () Bool)

(assert (=> b!2290423 (= res!979418 e!1467674)))

(declare-fun res!979424 () Bool)

(assert (=> b!2290423 (=> res!979424 e!1467674)))

(assert (=> b!2290423 (= res!979424 lt!849770)))

(declare-datatypes ((tuple2!27090 0))(
  ( (tuple2!27091 (_1!16055 Token!8208) (_2!16055 List!27370)) )
))
(declare-datatypes ((Option!5355 0))(
  ( (None!5354) (Some!5354 (v!30434 tuple2!27090)) )
))
(declare-fun lt!849780 () Option!5355)

(declare-fun lt!849773 () Int)

(declare-fun lt!849768 () Int)

(declare-fun lt!849771 () List!27370)

(declare-fun lt!849769 () Token!8208)

(declare-fun b!2290424 () Bool)

(assert (=> b!2290424 (= e!1467670 (or (not (= lt!849780 (Some!5354 (tuple2!27091 lt!849769 lt!849771)))) (> lt!849773 lt!849768)))))

(declare-fun isPrefix!2355 (List!27370 List!27370) Bool)

(assert (=> b!2290424 (isPrefix!2355 input!1722 input!1722)))

(declare-datatypes ((Unit!40158 0))(
  ( (Unit!40159) )
))
(declare-fun lt!849777 () Unit!40158)

(declare-fun lemmaIsPrefixRefl!1497 (List!27370 List!27370) Unit!40158)

(assert (=> b!2290424 (= lt!849777 (lemmaIsPrefixRefl!1497 input!1722 input!1722))))

(declare-fun lt!849775 () Unit!40158)

(declare-fun lt!849779 () BalanceConc!17484)

(declare-fun lemmaSemiInverse!1064 (TokenValueInjection!8594 BalanceConc!17484) Unit!40158)

(assert (=> b!2290424 (= lt!849775 (lemmaSemiInverse!1064 (transformation!4365 r!2363) lt!849779))))

(declare-fun e!1467666 () Bool)

(assert (=> b!2290425 (= e!1467666 (and tp!726253 tp!726251))))

(declare-fun e!1467681 () Bool)

(assert (=> b!2290426 (= e!1467681 (and tp!726245 tp!726249))))

(declare-fun tp!726252 () Bool)

(declare-fun e!1467669 () Bool)

(declare-fun b!2290427 () Bool)

(declare-fun e!1467658 () Bool)

(declare-fun inv!21 (TokenValue!4527) Bool)

(assert (=> b!2290427 (= e!1467658 (and (inv!21 (value!138222 (h!32678 tokens!456))) e!1467669 tp!726252))))

(declare-fun b!2290428 () Bool)

(declare-fun res!979414 () Bool)

(assert (=> b!2290428 (=> (not res!979414) (not e!1467682))))

(declare-fun isEmpty!15530 (List!27372) Bool)

(assert (=> b!2290428 (= res!979414 (not (isEmpty!15530 rules!1750)))))

(declare-fun b!2290429 () Bool)

(declare-fun tp_is_empty!10647 () Bool)

(declare-fun tp!726250 () Bool)

(assert (=> b!2290429 (= e!1467660 (and tp_is_empty!10647 tp!726250))))

(declare-fun b!2290430 () Bool)

(declare-fun res!979423 () Bool)

(assert (=> b!2290430 (=> (not res!979423) (not e!1467682))))

(declare-fun otherR!12 () Rule!8530)

(declare-fun contains!4741 (List!27372 Rule!8530) Bool)

(assert (=> b!2290430 (= res!979423 (contains!4741 rules!1750 otherR!12))))

(declare-fun b!2290431 () Bool)

(declare-fun res!979410 () Bool)

(assert (=> b!2290431 (=> (not res!979410) (not e!1467682))))

(declare-fun rulesInvariant!3464 (LexerInterface!3962 List!27372) Bool)

(assert (=> b!2290431 (= res!979410 (rulesInvariant!3464 thiss!16613 rules!1750))))

(declare-fun b!2290432 () Bool)

(assert (=> b!2290432 (= e!1467674 (= (rule!6699 (head!4992 tokens!456)) r!2363))))

(declare-fun b!2290433 () Bool)

(declare-fun e!1467664 () Bool)

(assert (=> b!2290433 (= e!1467664 e!1467670)))

(declare-fun res!979408 () Bool)

(assert (=> b!2290433 (=> res!979408 e!1467670)))

(assert (=> b!2290433 (= res!979408 (not (isPrefix!2355 lt!849781 input!1722)))))

(declare-fun lt!849776 () tuple2!27090)

(assert (=> b!2290433 (= lt!849780 (Some!5354 (tuple2!27091 lt!849769 (_2!16055 lt!849776))))))

(declare-fun maxPrefixOneRule!1396 (LexerInterface!3962 Rule!8530 List!27370) Option!5355)

(assert (=> b!2290433 (= lt!849780 (maxPrefixOneRule!1396 thiss!16613 r!2363 input!1722))))

(declare-fun apply!6637 (TokenValueInjection!8594 BalanceConc!17484) TokenValue!4527)

(assert (=> b!2290433 (= lt!849769 (Token!8209 (apply!6637 (transformation!4365 r!2363) lt!849779) r!2363 lt!849768 lt!849781))))

(assert (=> b!2290433 (= lt!849779 (seqFromList!3069 lt!849781))))

(declare-fun lt!849772 () Unit!40158)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!589 (LexerInterface!3962 List!27372 List!27370 List!27370 List!27370 Rule!8530) Unit!40158)

(assert (=> b!2290433 (= lt!849772 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!589 thiss!16613 rules!1750 lt!849781 input!1722 (_2!16055 lt!849776) r!2363))))

(declare-fun b!2290434 () Bool)

(declare-fun e!1467656 () Bool)

(declare-fun tp!726254 () Bool)

(assert (=> b!2290434 (= e!1467654 (and e!1467656 tp!726254))))

(declare-fun b!2290435 () Bool)

(declare-fun res!979419 () Bool)

(assert (=> b!2290435 (=> (not res!979419) (not e!1467682))))

(assert (=> b!2290435 (= res!979419 (contains!4741 rules!1750 r!2363))))

(declare-fun b!2290436 () Bool)

(declare-fun e!1467683 () Bool)

(assert (=> b!2290436 (= e!1467683 e!1467668)))

(declare-fun res!979421 () Bool)

(assert (=> b!2290436 (=> res!979421 e!1467668)))

(declare-fun getIndex!378 (List!27372 Rule!8530) Int)

(assert (=> b!2290436 (= res!979421 (<= (getIndex!378 rules!1750 r!2363) (getIndex!378 rules!1750 otherR!12)))))

(declare-fun ruleValid!1455 (LexerInterface!3962 Rule!8530) Bool)

(assert (=> b!2290436 (ruleValid!1455 thiss!16613 otherR!12)))

(declare-fun lt!849782 () Unit!40158)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!860 (LexerInterface!3962 Rule!8530 List!27372) Unit!40158)

(assert (=> b!2290436 (= lt!849782 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!860 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2290437 () Bool)

(declare-fun tp!726247 () Bool)

(assert (=> b!2290437 (= e!1467657 (and tp_is_empty!10647 tp!726247))))

(declare-fun b!2290438 () Bool)

(declare-fun tp!726244 () Bool)

(declare-fun inv!36871 (String!29739) Bool)

(declare-fun inv!36874 (TokenValueInjection!8594) Bool)

(assert (=> b!2290438 (= e!1467673 (and tp!726244 (inv!36871 (tag!4855 r!2363)) (inv!36874 (transformation!4365 r!2363)) e!1467681))))

(declare-fun b!2290439 () Bool)

(declare-fun e!1467671 () Bool)

(assert (=> b!2290439 (= e!1467671 e!1467664)))

(declare-fun res!979426 () Bool)

(assert (=> b!2290439 (=> res!979426 e!1467664)))

(assert (=> b!2290439 (= res!979426 (= lt!849773 lt!849768))))

(declare-fun size!21471 (List!27370) Int)

(assert (=> b!2290439 (= lt!849768 (size!21471 lt!849781))))

(declare-fun otherP!12 () List!27370)

(assert (=> b!2290439 (= lt!849773 (size!21471 otherP!12))))

(assert (=> b!2290439 (= (_2!16055 lt!849776) lt!849771)))

(declare-fun lt!849783 () Unit!40158)

(declare-fun lemmaSamePrefixThenSameSuffix!1056 (List!27370 List!27370 List!27370 List!27370 List!27370) Unit!40158)

(assert (=> b!2290439 (= lt!849783 (lemmaSamePrefixThenSameSuffix!1056 lt!849781 (_2!16055 lt!849776) lt!849781 lt!849771 input!1722))))

(declare-fun getSuffix!1146 (List!27370 List!27370) List!27370)

(assert (=> b!2290439 (= lt!849771 (getSuffix!1146 input!1722 lt!849781))))

(declare-fun ++!6665 (List!27370 List!27370) List!27370)

(assert (=> b!2290439 (isPrefix!2355 lt!849781 (++!6665 lt!849781 (_2!16055 lt!849776)))))

(declare-fun lt!849778 () Unit!40158)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1560 (List!27370 List!27370) Unit!40158)

(assert (=> b!2290439 (= lt!849778 (lemmaConcatTwoListThenFirstIsPrefix!1560 lt!849781 (_2!16055 lt!849776)))))

(assert (=> b!2290439 (= lt!849781 (list!10680 (charsOf!2753 (h!32678 tokens!456))))))

(declare-fun e!1467662 () Bool)

(assert (=> b!2290440 (= e!1467662 (and tp!726242 tp!726246))))

(declare-fun b!2290441 () Bool)

(assert (=> b!2290441 (= e!1467677 (not e!1467683))))

(declare-fun res!979427 () Bool)

(assert (=> b!2290441 (=> res!979427 e!1467683)))

(assert (=> b!2290441 (= res!979427 e!1467661)))

(declare-fun res!979412 () Bool)

(assert (=> b!2290441 (=> (not res!979412) (not e!1467661))))

(assert (=> b!2290441 (= res!979412 (not lt!849770))))

(assert (=> b!2290441 (ruleValid!1455 thiss!16613 r!2363)))

(declare-fun lt!849784 () Unit!40158)

(assert (=> b!2290441 (= lt!849784 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!860 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2290442 () Bool)

(declare-fun tp!726248 () Bool)

(assert (=> b!2290442 (= e!1467663 (and tp_is_empty!10647 tp!726248))))

(declare-fun b!2290443 () Bool)

(declare-fun res!979413 () Bool)

(assert (=> b!2290443 (=> (not res!979413) (not e!1467677))))

(assert (=> b!2290443 (= res!979413 (isPrefix!2355 otherP!12 input!1722))))

(declare-fun b!2290444 () Bool)

(declare-fun res!979422 () Bool)

(assert (=> b!2290444 (=> (not res!979422) (not e!1467677))))

(assert (=> b!2290444 (= res!979422 (not (= r!2363 otherR!12)))))

(declare-fun b!2290445 () Bool)

(assert (=> b!2290445 (= e!1467668 e!1467671)))

(declare-fun res!979417 () Bool)

(assert (=> b!2290445 (=> res!979417 e!1467671)))

(assert (=> b!2290445 (= res!979417 (not (= (h!32678 tokens!456) (_1!16055 lt!849776))))))

(declare-fun get!8227 (Option!5355) tuple2!27090)

(declare-fun maxPrefix!2226 (LexerInterface!3962 List!27372 List!27370) Option!5355)

(assert (=> b!2290445 (= lt!849776 (get!8227 (maxPrefix!2226 thiss!16613 rules!1750 input!1722)))))

(declare-fun tp!726243 () Bool)

(declare-fun b!2290446 () Bool)

(assert (=> b!2290446 (= e!1467656 (and tp!726243 (inv!36871 (tag!4855 (h!32679 rules!1750))) (inv!36874 (transformation!4365 (h!32679 rules!1750))) e!1467672))))

(declare-fun b!2290447 () Bool)

(declare-fun size!21472 (BalanceConc!17484) Int)

(assert (=> b!2290447 (= e!1467676 (<= (size!21472 (charsOf!2753 (head!4992 tokens!456))) (size!21471 otherP!12)))))

(declare-fun tp!726255 () Bool)

(declare-fun b!2290448 () Bool)

(declare-fun inv!36875 (Token!8208) Bool)

(assert (=> b!2290448 (= e!1467679 (and (inv!36875 (h!32678 tokens!456)) e!1467658 tp!726255))))

(declare-fun tp!726240 () Bool)

(declare-fun b!2290449 () Bool)

(assert (=> b!2290449 (= e!1467669 (and tp!726240 (inv!36871 (tag!4855 (rule!6699 (h!32678 tokens!456)))) (inv!36874 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) e!1467666))))

(declare-fun b!2290450 () Bool)

(declare-fun tp!726241 () Bool)

(assert (=> b!2290450 (= e!1467678 (and tp!726241 (inv!36871 (tag!4855 otherR!12)) (inv!36874 (transformation!4365 otherR!12)) e!1467662))))

(assert (= (and start!224764 res!979409) b!2290428))

(assert (= (and b!2290428 res!979414) b!2290431))

(assert (= (and b!2290431 res!979410) b!2290435))

(assert (= (and b!2290435 res!979419) b!2290430))

(assert (= (and b!2290430 res!979423) b!2290421))

(assert (= (and b!2290421 res!979420) b!2290420))

(assert (= (and b!2290420 (not res!979416)) b!2290447))

(assert (= (and b!2290420 res!979415) b!2290423))

(assert (= (and b!2290423 (not res!979424)) b!2290432))

(assert (= (and b!2290423 res!979418) b!2290443))

(assert (= (and b!2290443 res!979413) b!2290444))

(assert (= (and b!2290444 res!979422) b!2290441))

(assert (= (and b!2290441 res!979412) b!2290418))

(assert (= (and b!2290441 (not res!979427)) b!2290436))

(assert (= (and b!2290436 (not res!979421)) b!2290419))

(assert (= (and b!2290419 (not res!979425)) b!2290445))

(assert (= (and b!2290445 (not res!979417)) b!2290439))

(assert (= (and b!2290439 (not res!979426)) b!2290433))

(assert (= (and b!2290433 (not res!979408)) b!2290422))

(assert (= (and b!2290422 (not res!979411)) b!2290424))

(assert (= (and start!224764 ((_ is Cons!27276) input!1722)) b!2290442))

(assert (= b!2290450 b!2290440))

(assert (= start!224764 b!2290450))

(assert (= (and start!224764 ((_ is Cons!27276) suffix!886)) b!2290429))

(assert (= (and start!224764 ((_ is Cons!27276) otherP!12)) b!2290437))

(assert (= b!2290446 b!2290417))

(assert (= b!2290434 b!2290446))

(assert (= (and start!224764 ((_ is Cons!27278) rules!1750)) b!2290434))

(assert (= b!2290438 b!2290426))

(assert (= start!224764 b!2290438))

(assert (= b!2290449 b!2290425))

(assert (= b!2290427 b!2290449))

(assert (= b!2290448 b!2290427))

(assert (= (and start!224764 ((_ is Cons!27277) tokens!456)) b!2290448))

(declare-fun m!2718033 () Bool)

(assert (=> b!2290443 m!2718033))

(declare-fun m!2718035 () Bool)

(assert (=> b!2290435 m!2718035))

(declare-fun m!2718037 () Bool)

(assert (=> b!2290448 m!2718037))

(declare-fun m!2718039 () Bool)

(assert (=> b!2290446 m!2718039))

(declare-fun m!2718041 () Bool)

(assert (=> b!2290446 m!2718041))

(declare-fun m!2718043 () Bool)

(assert (=> b!2290445 m!2718043))

(assert (=> b!2290445 m!2718043))

(declare-fun m!2718045 () Bool)

(assert (=> b!2290445 m!2718045))

(declare-fun m!2718047 () Bool)

(assert (=> b!2290439 m!2718047))

(declare-fun m!2718049 () Bool)

(assert (=> b!2290439 m!2718049))

(declare-fun m!2718051 () Bool)

(assert (=> b!2290439 m!2718051))

(declare-fun m!2718053 () Bool)

(assert (=> b!2290439 m!2718053))

(declare-fun m!2718055 () Bool)

(assert (=> b!2290439 m!2718055))

(declare-fun m!2718057 () Bool)

(assert (=> b!2290439 m!2718057))

(assert (=> b!2290439 m!2718047))

(declare-fun m!2718059 () Bool)

(assert (=> b!2290439 m!2718059))

(declare-fun m!2718061 () Bool)

(assert (=> b!2290439 m!2718061))

(assert (=> b!2290439 m!2718055))

(declare-fun m!2718063 () Bool)

(assert (=> b!2290439 m!2718063))

(declare-fun m!2718065 () Bool)

(assert (=> b!2290436 m!2718065))

(declare-fun m!2718067 () Bool)

(assert (=> b!2290436 m!2718067))

(declare-fun m!2718069 () Bool)

(assert (=> b!2290436 m!2718069))

(declare-fun m!2718071 () Bool)

(assert (=> b!2290436 m!2718071))

(declare-fun m!2718073 () Bool)

(assert (=> b!2290431 m!2718073))

(declare-fun m!2718075 () Bool)

(assert (=> b!2290428 m!2718075))

(declare-fun m!2718077 () Bool)

(assert (=> b!2290427 m!2718077))

(declare-fun m!2718079 () Bool)

(assert (=> b!2290418 m!2718079))

(assert (=> b!2290418 m!2718079))

(declare-fun m!2718081 () Bool)

(assert (=> b!2290418 m!2718081))

(assert (=> b!2290418 m!2718081))

(declare-fun m!2718083 () Bool)

(assert (=> b!2290418 m!2718083))

(assert (=> b!2290418 m!2718083))

(declare-fun m!2718085 () Bool)

(assert (=> b!2290418 m!2718085))

(declare-fun m!2718087 () Bool)

(assert (=> b!2290438 m!2718087))

(declare-fun m!2718089 () Bool)

(assert (=> b!2290438 m!2718089))

(declare-fun m!2718091 () Bool)

(assert (=> b!2290450 m!2718091))

(declare-fun m!2718093 () Bool)

(assert (=> b!2290450 m!2718093))

(declare-fun m!2718095 () Bool)

(assert (=> b!2290420 m!2718095))

(declare-fun m!2718097 () Bool)

(assert (=> b!2290449 m!2718097))

(declare-fun m!2718099 () Bool)

(assert (=> b!2290449 m!2718099))

(declare-fun m!2718101 () Bool)

(assert (=> b!2290430 m!2718101))

(declare-fun m!2718103 () Bool)

(assert (=> b!2290422 m!2718103))

(assert (=> b!2290447 m!2718079))

(assert (=> b!2290447 m!2718079))

(assert (=> b!2290447 m!2718081))

(assert (=> b!2290447 m!2718081))

(declare-fun m!2718105 () Bool)

(assert (=> b!2290447 m!2718105))

(assert (=> b!2290447 m!2718051))

(declare-fun m!2718107 () Bool)

(assert (=> b!2290421 m!2718107))

(declare-fun m!2718109 () Bool)

(assert (=> b!2290421 m!2718109))

(declare-fun m!2718111 () Bool)

(assert (=> b!2290421 m!2718111))

(assert (=> b!2290421 m!2718111))

(declare-fun m!2718113 () Bool)

(assert (=> b!2290421 m!2718113))

(declare-fun m!2718115 () Bool)

(assert (=> b!2290424 m!2718115))

(declare-fun m!2718117 () Bool)

(assert (=> b!2290424 m!2718117))

(declare-fun m!2718119 () Bool)

(assert (=> b!2290424 m!2718119))

(declare-fun m!2718121 () Bool)

(assert (=> b!2290433 m!2718121))

(declare-fun m!2718123 () Bool)

(assert (=> b!2290433 m!2718123))

(declare-fun m!2718125 () Bool)

(assert (=> b!2290433 m!2718125))

(declare-fun m!2718127 () Bool)

(assert (=> b!2290433 m!2718127))

(declare-fun m!2718129 () Bool)

(assert (=> b!2290433 m!2718129))

(declare-fun m!2718131 () Bool)

(assert (=> b!2290441 m!2718131))

(declare-fun m!2718133 () Bool)

(assert (=> b!2290441 m!2718133))

(assert (=> b!2290432 m!2718079))

(check-sat (not b_next!69535) (not b!2290447) (not b!2290433) (not b!2290422) (not b!2290450) (not b!2290428) (not b!2290436) (not b!2290445) (not b_next!69543) b_and!181729 (not b!2290427) (not b!2290438) (not b!2290430) b_and!181731 (not b!2290434) (not b!2290421) (not b_next!69547) (not b!2290431) (not b_next!69537) (not b!2290446) (not b_next!69539) (not b!2290437) (not b!2290439) (not b_next!69533) tp_is_empty!10647 b_and!181733 (not b!2290429) b_and!181741 b_and!181737 (not b_next!69545) b_and!181743 (not b!2290420) (not b_next!69541) (not b!2290443) b_and!181739 (not b!2290449) (not b!2290424) (not b!2290418) (not b!2290435) (not b!2290441) (not b!2290432) (not b!2290442) b_and!181735 (not b!2290448))
(check-sat (not b_next!69535) b_and!181731 (not b_next!69547) (not b_next!69537) b_and!181733 b_and!181741 b_and!181743 (not b_next!69541) (not b_next!69543) b_and!181739 b_and!181729 b_and!181735 (not b_next!69539) (not b_next!69533) b_and!181737 (not b_next!69545))
(get-model)

(declare-fun d!677468 () Bool)

(assert (=> d!677468 (= (inv!36871 (tag!4855 otherR!12)) (= (mod (str.len (value!138221 (tag!4855 otherR!12))) 2) 0))))

(assert (=> b!2290450 d!677468))

(declare-fun d!677470 () Bool)

(declare-fun res!979489 () Bool)

(declare-fun e!1467724 () Bool)

(assert (=> d!677470 (=> (not res!979489) (not e!1467724))))

(declare-fun semiInverseModEq!1768 (Int Int) Bool)

(assert (=> d!677470 (= res!979489 (semiInverseModEq!1768 (toChars!6014 (transformation!4365 otherR!12)) (toValue!6155 (transformation!4365 otherR!12))))))

(assert (=> d!677470 (= (inv!36874 (transformation!4365 otherR!12)) e!1467724)))

(declare-fun b!2290534 () Bool)

(declare-fun equivClasses!1687 (Int Int) Bool)

(assert (=> b!2290534 (= e!1467724 (equivClasses!1687 (toChars!6014 (transformation!4365 otherR!12)) (toValue!6155 (transformation!4365 otherR!12))))))

(assert (= (and d!677470 res!979489) b!2290534))

(declare-fun m!2718199 () Bool)

(assert (=> d!677470 m!2718199))

(declare-fun m!2718201 () Bool)

(assert (=> b!2290534 m!2718201))

(assert (=> b!2290450 d!677470))

(declare-fun d!677476 () Bool)

(assert (=> d!677476 (= (isEmpty!15530 rules!1750) ((_ is Nil!27278) rules!1750))))

(assert (=> b!2290428 d!677476))

(declare-fun d!677480 () Bool)

(assert (=> d!677480 (= (inv!36871 (tag!4855 (rule!6699 (h!32678 tokens!456)))) (= (mod (str.len (value!138221 (tag!4855 (rule!6699 (h!32678 tokens!456))))) 2) 0))))

(assert (=> b!2290449 d!677480))

(declare-fun d!677482 () Bool)

(declare-fun res!979490 () Bool)

(declare-fun e!1467726 () Bool)

(assert (=> d!677482 (=> (not res!979490) (not e!1467726))))

(assert (=> d!677482 (= res!979490 (semiInverseModEq!1768 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toValue!6155 (transformation!4365 (rule!6699 (h!32678 tokens!456))))))))

(assert (=> d!677482 (= (inv!36874 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) e!1467726)))

(declare-fun b!2290537 () Bool)

(assert (=> b!2290537 (= e!1467726 (equivClasses!1687 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toValue!6155 (transformation!4365 (rule!6699 (h!32678 tokens!456))))))))

(assert (= (and d!677482 res!979490) b!2290537))

(declare-fun m!2718205 () Bool)

(assert (=> d!677482 m!2718205))

(declare-fun m!2718207 () Bool)

(assert (=> b!2290537 m!2718207))

(assert (=> b!2290449 d!677482))

(declare-fun d!677484 () Bool)

(declare-fun lt!849815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3660 (List!27372) (InoxSet Rule!8530))

(assert (=> d!677484 (= lt!849815 (select (content!3660 rules!1750) otherR!12))))

(declare-fun e!1467749 () Bool)

(assert (=> d!677484 (= lt!849815 e!1467749)))

(declare-fun res!979508 () Bool)

(assert (=> d!677484 (=> (not res!979508) (not e!1467749))))

(assert (=> d!677484 (= res!979508 ((_ is Cons!27278) rules!1750))))

(assert (=> d!677484 (= (contains!4741 rules!1750 otherR!12) lt!849815)))

(declare-fun b!2290572 () Bool)

(declare-fun e!1467748 () Bool)

(assert (=> b!2290572 (= e!1467749 e!1467748)))

(declare-fun res!979507 () Bool)

(assert (=> b!2290572 (=> res!979507 e!1467748)))

(assert (=> b!2290572 (= res!979507 (= (h!32679 rules!1750) otherR!12))))

(declare-fun b!2290573 () Bool)

(assert (=> b!2290573 (= e!1467748 (contains!4741 (t!204568 rules!1750) otherR!12))))

(assert (= (and d!677484 res!979508) b!2290572))

(assert (= (and b!2290572 (not res!979507)) b!2290573))

(declare-fun m!2718231 () Bool)

(assert (=> d!677484 m!2718231))

(declare-fun m!2718233 () Bool)

(assert (=> d!677484 m!2718233))

(declare-fun m!2718235 () Bool)

(assert (=> b!2290573 m!2718235))

(assert (=> b!2290430 d!677484))

(declare-fun d!677498 () Bool)

(declare-fun res!979527 () Bool)

(declare-fun e!1467767 () Bool)

(assert (=> d!677498 (=> (not res!979527) (not e!1467767))))

(declare-fun rulesValid!1611 (LexerInterface!3962 List!27372) Bool)

(assert (=> d!677498 (= res!979527 (rulesValid!1611 thiss!16613 rules!1750))))

(assert (=> d!677498 (= (rulesInvariant!3464 thiss!16613 rules!1750) e!1467767)))

(declare-fun b!2290594 () Bool)

(declare-datatypes ((List!27373 0))(
  ( (Nil!27279) (Cons!27279 (h!32680 String!29739) (t!204665 List!27373)) )
))
(declare-fun noDuplicateTag!1609 (LexerInterface!3962 List!27372 List!27373) Bool)

(assert (=> b!2290594 (= e!1467767 (noDuplicateTag!1609 thiss!16613 rules!1750 Nil!27279))))

(assert (= (and d!677498 res!979527) b!2290594))

(declare-fun m!2718253 () Bool)

(assert (=> d!677498 m!2718253))

(declare-fun m!2718255 () Bool)

(assert (=> b!2290594 m!2718255))

(assert (=> b!2290431 d!677498))

(declare-fun d!677506 () Bool)

(assert (=> d!677506 (= (head!4992 tokens!456) (h!32678 tokens!456))))

(assert (=> b!2290432 d!677506))

(declare-fun d!677508 () Bool)

(assert (=> d!677508 (= (maxPrefixOneRule!1396 thiss!16613 r!2363 input!1722) (Some!5354 (tuple2!27091 (Token!8209 (apply!6637 (transformation!4365 r!2363) (seqFromList!3069 lt!849781)) r!2363 (size!21471 lt!849781) lt!849781) (_2!16055 lt!849776))))))

(declare-fun lt!849825 () Unit!40158)

(declare-fun choose!13372 (LexerInterface!3962 List!27372 List!27370 List!27370 List!27370 Rule!8530) Unit!40158)

(assert (=> d!677508 (= lt!849825 (choose!13372 thiss!16613 rules!1750 lt!849781 input!1722 (_2!16055 lt!849776) r!2363))))

(assert (=> d!677508 (not (isEmpty!15530 rules!1750))))

(assert (=> d!677508 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!589 thiss!16613 rules!1750 lt!849781 input!1722 (_2!16055 lt!849776) r!2363) lt!849825)))

(declare-fun bs!457017 () Bool)

(assert (= bs!457017 d!677508))

(assert (=> bs!457017 m!2718053))

(assert (=> bs!457017 m!2718129))

(declare-fun m!2718261 () Bool)

(assert (=> bs!457017 m!2718261))

(assert (=> bs!457017 m!2718125))

(assert (=> bs!457017 m!2718129))

(declare-fun m!2718263 () Bool)

(assert (=> bs!457017 m!2718263))

(assert (=> bs!457017 m!2718075))

(assert (=> b!2290433 d!677508))

(declare-fun b!2290656 () Bool)

(declare-fun e!1467802 () Bool)

(declare-fun e!1467803 () Bool)

(assert (=> b!2290656 (= e!1467802 e!1467803)))

(declare-fun res!979585 () Bool)

(assert (=> b!2290656 (=> (not res!979585) (not e!1467803))))

(declare-fun lt!849867 () Option!5355)

(assert (=> b!2290656 (= res!979585 (matchR!2970 (regex!4365 r!2363) (list!10680 (charsOf!2753 (_1!16055 (get!8227 lt!849867))))))))

(declare-fun b!2290657 () Bool)

(declare-fun res!979583 () Bool)

(assert (=> b!2290657 (=> (not res!979583) (not e!1467803))))

(assert (=> b!2290657 (= res!979583 (< (size!21471 (_2!16055 (get!8227 lt!849867))) (size!21471 input!1722)))))

(declare-fun b!2290658 () Bool)

(declare-fun e!1467801 () Bool)

(declare-datatypes ((tuple2!27094 0))(
  ( (tuple2!27095 (_1!16057 List!27370) (_2!16057 List!27370)) )
))
(declare-fun findLongestMatchInner!721 (Regex!6713 List!27370 Int List!27370 List!27370 Int) tuple2!27094)

(assert (=> b!2290658 (= e!1467801 (matchR!2970 (regex!4365 r!2363) (_1!16057 (findLongestMatchInner!721 (regex!4365 r!2363) Nil!27276 (size!21471 Nil!27276) input!1722 input!1722 (size!21471 input!1722)))))))

(declare-fun d!677512 () Bool)

(assert (=> d!677512 e!1467802))

(declare-fun res!979580 () Bool)

(assert (=> d!677512 (=> res!979580 e!1467802)))

(declare-fun isEmpty!15533 (Option!5355) Bool)

(assert (=> d!677512 (= res!979580 (isEmpty!15533 lt!849867))))

(declare-fun e!1467800 () Option!5355)

(assert (=> d!677512 (= lt!849867 e!1467800)))

(declare-fun c!363195 () Bool)

(declare-fun lt!849865 () tuple2!27094)

(declare-fun isEmpty!15534 (List!27370) Bool)

(assert (=> d!677512 (= c!363195 (isEmpty!15534 (_1!16057 lt!849865)))))

(declare-fun findLongestMatch!650 (Regex!6713 List!27370) tuple2!27094)

(assert (=> d!677512 (= lt!849865 (findLongestMatch!650 (regex!4365 r!2363) input!1722))))

(assert (=> d!677512 (ruleValid!1455 thiss!16613 r!2363)))

(assert (=> d!677512 (= (maxPrefixOneRule!1396 thiss!16613 r!2363 input!1722) lt!849867)))

(declare-fun b!2290659 () Bool)

(declare-fun res!979584 () Bool)

(assert (=> b!2290659 (=> (not res!979584) (not e!1467803))))

(assert (=> b!2290659 (= res!979584 (= (++!6665 (list!10680 (charsOf!2753 (_1!16055 (get!8227 lt!849867)))) (_2!16055 (get!8227 lt!849867))) input!1722))))

(declare-fun b!2290660 () Bool)

(declare-fun res!979579 () Bool)

(assert (=> b!2290660 (=> (not res!979579) (not e!1467803))))

(assert (=> b!2290660 (= res!979579 (= (value!138222 (_1!16055 (get!8227 lt!849867))) (apply!6637 (transformation!4365 (rule!6699 (_1!16055 (get!8227 lt!849867)))) (seqFromList!3069 (originalCharacters!5135 (_1!16055 (get!8227 lt!849867)))))))))

(declare-fun b!2290661 () Bool)

(assert (=> b!2290661 (= e!1467803 (= (size!21470 (_1!16055 (get!8227 lt!849867))) (size!21471 (originalCharacters!5135 (_1!16055 (get!8227 lt!849867))))))))

(declare-fun b!2290662 () Bool)

(assert (=> b!2290662 (= e!1467800 (Some!5354 (tuple2!27091 (Token!8209 (apply!6637 (transformation!4365 r!2363) (seqFromList!3069 (_1!16057 lt!849865))) r!2363 (size!21472 (seqFromList!3069 (_1!16057 lt!849865))) (_1!16057 lt!849865)) (_2!16057 lt!849865))))))

(declare-fun lt!849864 () Unit!40158)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!694 (Regex!6713 List!27370) Unit!40158)

(assert (=> b!2290662 (= lt!849864 (longestMatchIsAcceptedByMatchOrIsEmpty!694 (regex!4365 r!2363) input!1722))))

(declare-fun res!979582 () Bool)

(assert (=> b!2290662 (= res!979582 (isEmpty!15534 (_1!16057 (findLongestMatchInner!721 (regex!4365 r!2363) Nil!27276 (size!21471 Nil!27276) input!1722 input!1722 (size!21471 input!1722)))))))

(assert (=> b!2290662 (=> res!979582 e!1467801)))

(assert (=> b!2290662 e!1467801))

(declare-fun lt!849863 () Unit!40158)

(assert (=> b!2290662 (= lt!849863 lt!849864)))

(declare-fun lt!849866 () Unit!40158)

(assert (=> b!2290662 (= lt!849866 (lemmaSemiInverse!1064 (transformation!4365 r!2363) (seqFromList!3069 (_1!16057 lt!849865))))))

(declare-fun b!2290663 () Bool)

(declare-fun res!979581 () Bool)

(assert (=> b!2290663 (=> (not res!979581) (not e!1467803))))

(assert (=> b!2290663 (= res!979581 (= (rule!6699 (_1!16055 (get!8227 lt!849867))) r!2363))))

(declare-fun b!2290664 () Bool)

(assert (=> b!2290664 (= e!1467800 None!5354)))

(assert (= (and d!677512 c!363195) b!2290664))

(assert (= (and d!677512 (not c!363195)) b!2290662))

(assert (= (and b!2290662 (not res!979582)) b!2290658))

(assert (= (and d!677512 (not res!979580)) b!2290656))

(assert (= (and b!2290656 res!979585) b!2290659))

(assert (= (and b!2290659 res!979584) b!2290657))

(assert (= (and b!2290657 res!979583) b!2290663))

(assert (= (and b!2290663 res!979581) b!2290660))

(assert (= (and b!2290660 res!979579) b!2290661))

(declare-fun m!2718321 () Bool)

(assert (=> b!2290662 m!2718321))

(assert (=> b!2290662 m!2718321))

(declare-fun m!2718323 () Bool)

(assert (=> b!2290662 m!2718323))

(declare-fun m!2718325 () Bool)

(assert (=> b!2290662 m!2718325))

(assert (=> b!2290662 m!2718323))

(declare-fun m!2718327 () Bool)

(assert (=> b!2290662 m!2718327))

(declare-fun m!2718329 () Bool)

(assert (=> b!2290662 m!2718329))

(declare-fun m!2718331 () Bool)

(assert (=> b!2290662 m!2718331))

(assert (=> b!2290662 m!2718329))

(declare-fun m!2718333 () Bool)

(assert (=> b!2290662 m!2718333))

(assert (=> b!2290662 m!2718329))

(declare-fun m!2718335 () Bool)

(assert (=> b!2290662 m!2718335))

(assert (=> b!2290662 m!2718329))

(declare-fun m!2718337 () Bool)

(assert (=> b!2290662 m!2718337))

(declare-fun m!2718339 () Bool)

(assert (=> b!2290663 m!2718339))

(assert (=> b!2290658 m!2718321))

(assert (=> b!2290658 m!2718323))

(assert (=> b!2290658 m!2718321))

(assert (=> b!2290658 m!2718323))

(assert (=> b!2290658 m!2718325))

(declare-fun m!2718341 () Bool)

(assert (=> b!2290658 m!2718341))

(assert (=> b!2290660 m!2718339))

(declare-fun m!2718343 () Bool)

(assert (=> b!2290660 m!2718343))

(assert (=> b!2290660 m!2718343))

(declare-fun m!2718345 () Bool)

(assert (=> b!2290660 m!2718345))

(declare-fun m!2718347 () Bool)

(assert (=> d!677512 m!2718347))

(declare-fun m!2718349 () Bool)

(assert (=> d!677512 m!2718349))

(declare-fun m!2718351 () Bool)

(assert (=> d!677512 m!2718351))

(assert (=> d!677512 m!2718131))

(assert (=> b!2290657 m!2718339))

(declare-fun m!2718353 () Bool)

(assert (=> b!2290657 m!2718353))

(assert (=> b!2290657 m!2718323))

(assert (=> b!2290661 m!2718339))

(declare-fun m!2718355 () Bool)

(assert (=> b!2290661 m!2718355))

(assert (=> b!2290656 m!2718339))

(declare-fun m!2718357 () Bool)

(assert (=> b!2290656 m!2718357))

(assert (=> b!2290656 m!2718357))

(declare-fun m!2718359 () Bool)

(assert (=> b!2290656 m!2718359))

(assert (=> b!2290656 m!2718359))

(declare-fun m!2718361 () Bool)

(assert (=> b!2290656 m!2718361))

(assert (=> b!2290659 m!2718339))

(assert (=> b!2290659 m!2718357))

(assert (=> b!2290659 m!2718357))

(assert (=> b!2290659 m!2718359))

(assert (=> b!2290659 m!2718359))

(declare-fun m!2718363 () Bool)

(assert (=> b!2290659 m!2718363))

(assert (=> b!2290433 d!677512))

(declare-fun d!677528 () Bool)

(declare-fun fromListB!1378 (List!27370) BalanceConc!17484)

(assert (=> d!677528 (= (seqFromList!3069 lt!849781) (fromListB!1378 lt!849781))))

(declare-fun bs!457021 () Bool)

(assert (= bs!457021 d!677528))

(declare-fun m!2718365 () Bool)

(assert (=> bs!457021 m!2718365))

(assert (=> b!2290433 d!677528))

(declare-fun b!2290676 () Bool)

(declare-fun e!1467811 () Bool)

(assert (=> b!2290676 (= e!1467811 (>= (size!21471 input!1722) (size!21471 lt!849781)))))

(declare-fun b!2290673 () Bool)

(declare-fun e!1467810 () Bool)

(declare-fun e!1467812 () Bool)

(assert (=> b!2290673 (= e!1467810 e!1467812)))

(declare-fun res!979597 () Bool)

(assert (=> b!2290673 (=> (not res!979597) (not e!1467812))))

(assert (=> b!2290673 (= res!979597 (not ((_ is Nil!27276) input!1722)))))

(declare-fun d!677530 () Bool)

(assert (=> d!677530 e!1467811))

(declare-fun res!979595 () Bool)

(assert (=> d!677530 (=> res!979595 e!1467811)))

(declare-fun lt!849870 () Bool)

(assert (=> d!677530 (= res!979595 (not lt!849870))))

(assert (=> d!677530 (= lt!849870 e!1467810)))

(declare-fun res!979594 () Bool)

(assert (=> d!677530 (=> res!979594 e!1467810)))

(assert (=> d!677530 (= res!979594 ((_ is Nil!27276) lt!849781))))

(assert (=> d!677530 (= (isPrefix!2355 lt!849781 input!1722) lt!849870)))

(declare-fun b!2290674 () Bool)

(declare-fun res!979596 () Bool)

(assert (=> b!2290674 (=> (not res!979596) (not e!1467812))))

(declare-fun head!4994 (List!27370) C!13572)

(assert (=> b!2290674 (= res!979596 (= (head!4994 lt!849781) (head!4994 input!1722)))))

(declare-fun b!2290675 () Bool)

(declare-fun tail!3309 (List!27370) List!27370)

(assert (=> b!2290675 (= e!1467812 (isPrefix!2355 (tail!3309 lt!849781) (tail!3309 input!1722)))))

(assert (= (and d!677530 (not res!979594)) b!2290673))

(assert (= (and b!2290673 res!979597) b!2290674))

(assert (= (and b!2290674 res!979596) b!2290675))

(assert (= (and d!677530 (not res!979595)) b!2290676))

(assert (=> b!2290676 m!2718323))

(assert (=> b!2290676 m!2718053))

(declare-fun m!2718367 () Bool)

(assert (=> b!2290674 m!2718367))

(declare-fun m!2718369 () Bool)

(assert (=> b!2290674 m!2718369))

(declare-fun m!2718371 () Bool)

(assert (=> b!2290675 m!2718371))

(declare-fun m!2718373 () Bool)

(assert (=> b!2290675 m!2718373))

(assert (=> b!2290675 m!2718371))

(assert (=> b!2290675 m!2718373))

(declare-fun m!2718375 () Bool)

(assert (=> b!2290675 m!2718375))

(assert (=> b!2290433 d!677530))

(declare-fun d!677532 () Bool)

(declare-fun dynLambda!11837 (Int BalanceConc!17484) TokenValue!4527)

(assert (=> d!677532 (= (apply!6637 (transformation!4365 r!2363) lt!849779) (dynLambda!11837 (toValue!6155 (transformation!4365 r!2363)) lt!849779))))

(declare-fun b_lambda!72949 () Bool)

(assert (=> (not b_lambda!72949) (not d!677532)))

(declare-fun t!204586 () Bool)

(declare-fun tb!136463 () Bool)

(assert (=> (and b!2290426 (= (toValue!6155 (transformation!4365 r!2363)) (toValue!6155 (transformation!4365 r!2363))) t!204586) tb!136463))

(declare-fun result!166402 () Bool)

(assert (=> tb!136463 (= result!166402 (inv!21 (dynLambda!11837 (toValue!6155 (transformation!4365 r!2363)) lt!849779)))))

(declare-fun m!2718377 () Bool)

(assert (=> tb!136463 m!2718377))

(assert (=> d!677532 t!204586))

(declare-fun b_and!181761 () Bool)

(assert (= b_and!181729 (and (=> t!204586 result!166402) b_and!181761)))

(declare-fun tb!136465 () Bool)

(declare-fun t!204588 () Bool)

(assert (=> (and b!2290425 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toValue!6155 (transformation!4365 r!2363))) t!204588) tb!136465))

(declare-fun result!166406 () Bool)

(assert (= result!166406 result!166402))

(assert (=> d!677532 t!204588))

(declare-fun b_and!181763 () Bool)

(assert (= b_and!181733 (and (=> t!204588 result!166406) b_and!181763)))

(declare-fun t!204590 () Bool)

(declare-fun tb!136467 () Bool)

(assert (=> (and b!2290440 (= (toValue!6155 (transformation!4365 otherR!12)) (toValue!6155 (transformation!4365 r!2363))) t!204590) tb!136467))

(declare-fun result!166408 () Bool)

(assert (= result!166408 result!166402))

(assert (=> d!677532 t!204590))

(declare-fun b_and!181765 () Bool)

(assert (= b_and!181737 (and (=> t!204590 result!166408) b_and!181765)))

(declare-fun t!204592 () Bool)

(declare-fun tb!136469 () Bool)

(assert (=> (and b!2290417 (= (toValue!6155 (transformation!4365 (h!32679 rules!1750))) (toValue!6155 (transformation!4365 r!2363))) t!204592) tb!136469))

(declare-fun result!166410 () Bool)

(assert (= result!166410 result!166402))

(assert (=> d!677532 t!204592))

(declare-fun b_and!181767 () Bool)

(assert (= b_and!181741 (and (=> t!204592 result!166410) b_and!181767)))

(declare-fun m!2718379 () Bool)

(assert (=> d!677532 m!2718379))

(assert (=> b!2290433 d!677532))

(declare-fun d!677534 () Bool)

(declare-fun lt!849871 () Bool)

(assert (=> d!677534 (= lt!849871 (select (content!3660 rules!1750) r!2363))))

(declare-fun e!1467817 () Bool)

(assert (=> d!677534 (= lt!849871 e!1467817)))

(declare-fun res!979599 () Bool)

(assert (=> d!677534 (=> (not res!979599) (not e!1467817))))

(assert (=> d!677534 (= res!979599 ((_ is Cons!27278) rules!1750))))

(assert (=> d!677534 (= (contains!4741 rules!1750 r!2363) lt!849871)))

(declare-fun b!2290679 () Bool)

(declare-fun e!1467816 () Bool)

(assert (=> b!2290679 (= e!1467817 e!1467816)))

(declare-fun res!979598 () Bool)

(assert (=> b!2290679 (=> res!979598 e!1467816)))

(assert (=> b!2290679 (= res!979598 (= (h!32679 rules!1750) r!2363))))

(declare-fun b!2290680 () Bool)

(assert (=> b!2290680 (= e!1467816 (contains!4741 (t!204568 rules!1750) r!2363))))

(assert (= (and d!677534 res!979599) b!2290679))

(assert (= (and b!2290679 (not res!979598)) b!2290680))

(assert (=> d!677534 m!2718231))

(declare-fun m!2718381 () Bool)

(assert (=> d!677534 m!2718381))

(declare-fun m!2718383 () Bool)

(assert (=> b!2290680 m!2718383))

(assert (=> b!2290435 d!677534))

(declare-fun b!2290691 () Bool)

(declare-fun e!1467823 () Int)

(assert (=> b!2290691 (= e!1467823 (+ 1 (getIndex!378 (t!204568 rules!1750) r!2363)))))

(declare-fun b!2290692 () Bool)

(assert (=> b!2290692 (= e!1467823 (- 1))))

(declare-fun d!677536 () Bool)

(declare-fun lt!849874 () Int)

(assert (=> d!677536 (>= lt!849874 0)))

(declare-fun e!1467824 () Int)

(assert (=> d!677536 (= lt!849874 e!1467824)))

(declare-fun c!363201 () Bool)

(assert (=> d!677536 (= c!363201 (and ((_ is Cons!27278) rules!1750) (= (h!32679 rules!1750) r!2363)))))

(assert (=> d!677536 (contains!4741 rules!1750 r!2363)))

(assert (=> d!677536 (= (getIndex!378 rules!1750 r!2363) lt!849874)))

(declare-fun b!2290690 () Bool)

(assert (=> b!2290690 (= e!1467824 e!1467823)))

(declare-fun c!363200 () Bool)

(assert (=> b!2290690 (= c!363200 (and ((_ is Cons!27278) rules!1750) (not (= (h!32679 rules!1750) r!2363))))))

(declare-fun b!2290689 () Bool)

(assert (=> b!2290689 (= e!1467824 0)))

(assert (= (and d!677536 c!363201) b!2290689))

(assert (= (and d!677536 (not c!363201)) b!2290690))

(assert (= (and b!2290690 c!363200) b!2290691))

(assert (= (and b!2290690 (not c!363200)) b!2290692))

(declare-fun m!2718385 () Bool)

(assert (=> b!2290691 m!2718385))

(assert (=> d!677536 m!2718035))

(assert (=> b!2290436 d!677536))

(declare-fun b!2290695 () Bool)

(declare-fun e!1467825 () Int)

(assert (=> b!2290695 (= e!1467825 (+ 1 (getIndex!378 (t!204568 rules!1750) otherR!12)))))

(declare-fun b!2290696 () Bool)

(assert (=> b!2290696 (= e!1467825 (- 1))))

(declare-fun d!677538 () Bool)

(declare-fun lt!849875 () Int)

(assert (=> d!677538 (>= lt!849875 0)))

(declare-fun e!1467826 () Int)

(assert (=> d!677538 (= lt!849875 e!1467826)))

(declare-fun c!363203 () Bool)

(assert (=> d!677538 (= c!363203 (and ((_ is Cons!27278) rules!1750) (= (h!32679 rules!1750) otherR!12)))))

(assert (=> d!677538 (contains!4741 rules!1750 otherR!12)))

(assert (=> d!677538 (= (getIndex!378 rules!1750 otherR!12) lt!849875)))

(declare-fun b!2290694 () Bool)

(assert (=> b!2290694 (= e!1467826 e!1467825)))

(declare-fun c!363202 () Bool)

(assert (=> b!2290694 (= c!363202 (and ((_ is Cons!27278) rules!1750) (not (= (h!32679 rules!1750) otherR!12))))))

(declare-fun b!2290693 () Bool)

(assert (=> b!2290693 (= e!1467826 0)))

(assert (= (and d!677538 c!363203) b!2290693))

(assert (= (and d!677538 (not c!363203)) b!2290694))

(assert (= (and b!2290694 c!363202) b!2290695))

(assert (= (and b!2290694 (not c!363202)) b!2290696))

(declare-fun m!2718387 () Bool)

(assert (=> b!2290695 m!2718387))

(assert (=> d!677538 m!2718101))

(assert (=> b!2290436 d!677538))

(declare-fun d!677540 () Bool)

(declare-fun res!979604 () Bool)

(declare-fun e!1467829 () Bool)

(assert (=> d!677540 (=> (not res!979604) (not e!1467829))))

(declare-fun validRegex!2528 (Regex!6713) Bool)

(assert (=> d!677540 (= res!979604 (validRegex!2528 (regex!4365 otherR!12)))))

(assert (=> d!677540 (= (ruleValid!1455 thiss!16613 otherR!12) e!1467829)))

(declare-fun b!2290701 () Bool)

(declare-fun res!979605 () Bool)

(assert (=> b!2290701 (=> (not res!979605) (not e!1467829))))

(declare-fun nullable!1866 (Regex!6713) Bool)

(assert (=> b!2290701 (= res!979605 (not (nullable!1866 (regex!4365 otherR!12))))))

(declare-fun b!2290702 () Bool)

(assert (=> b!2290702 (= e!1467829 (not (= (tag!4855 otherR!12) (String!29740 ""))))))

(assert (= (and d!677540 res!979604) b!2290701))

(assert (= (and b!2290701 res!979605) b!2290702))

(declare-fun m!2718389 () Bool)

(assert (=> d!677540 m!2718389))

(declare-fun m!2718391 () Bool)

(assert (=> b!2290701 m!2718391))

(assert (=> b!2290436 d!677540))

(declare-fun d!677542 () Bool)

(assert (=> d!677542 (ruleValid!1455 thiss!16613 otherR!12)))

(declare-fun lt!849878 () Unit!40158)

(declare-fun choose!13375 (LexerInterface!3962 Rule!8530 List!27372) Unit!40158)

(assert (=> d!677542 (= lt!849878 (choose!13375 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!677542 (contains!4741 rules!1750 otherR!12)))

(assert (=> d!677542 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!860 thiss!16613 otherR!12 rules!1750) lt!849878)))

(declare-fun bs!457022 () Bool)

(assert (= bs!457022 d!677542))

(assert (=> bs!457022 m!2718069))

(declare-fun m!2718393 () Bool)

(assert (=> bs!457022 m!2718393))

(assert (=> bs!457022 m!2718101))

(assert (=> b!2290436 d!677542))

(declare-fun d!677544 () Bool)

(assert (=> d!677544 (= (inv!36871 (tag!4855 r!2363)) (= (mod (str.len (value!138221 (tag!4855 r!2363))) 2) 0))))

(assert (=> b!2290438 d!677544))

(declare-fun d!677546 () Bool)

(declare-fun res!979606 () Bool)

(declare-fun e!1467830 () Bool)

(assert (=> d!677546 (=> (not res!979606) (not e!1467830))))

(assert (=> d!677546 (= res!979606 (semiInverseModEq!1768 (toChars!6014 (transformation!4365 r!2363)) (toValue!6155 (transformation!4365 r!2363))))))

(assert (=> d!677546 (= (inv!36874 (transformation!4365 r!2363)) e!1467830)))

(declare-fun b!2290703 () Bool)

(assert (=> b!2290703 (= e!1467830 (equivClasses!1687 (toChars!6014 (transformation!4365 r!2363)) (toValue!6155 (transformation!4365 r!2363))))))

(assert (= (and d!677546 res!979606) b!2290703))

(declare-fun m!2718395 () Bool)

(assert (=> d!677546 m!2718395))

(declare-fun m!2718397 () Bool)

(assert (=> b!2290703 m!2718397))

(assert (=> b!2290438 d!677546))

(declare-fun d!677548 () Bool)

(declare-fun e!1467850 () Bool)

(assert (=> d!677548 e!1467850))

(declare-fun c!363212 () Bool)

(assert (=> d!677548 (= c!363212 ((_ is EmptyExpr!6713) (regex!4365 r!2363)))))

(declare-fun lt!849881 () Bool)

(declare-fun e!1467848 () Bool)

(assert (=> d!677548 (= lt!849881 e!1467848)))

(declare-fun c!363211 () Bool)

(assert (=> d!677548 (= c!363211 (isEmpty!15534 (list!10680 (charsOf!2753 (head!4992 tokens!456)))))))

(assert (=> d!677548 (validRegex!2528 (regex!4365 r!2363))))

(assert (=> d!677548 (= (matchR!2970 (regex!4365 r!2363) (list!10680 (charsOf!2753 (head!4992 tokens!456)))) lt!849881)))

(declare-fun b!2290732 () Bool)

(declare-fun e!1467845 () Bool)

(assert (=> b!2290732 (= e!1467845 (not (= (head!4994 (list!10680 (charsOf!2753 (head!4992 tokens!456)))) (c!363163 (regex!4365 r!2363)))))))

(declare-fun b!2290733 () Bool)

(declare-fun e!1467846 () Bool)

(assert (=> b!2290733 (= e!1467850 e!1467846)))

(declare-fun c!363210 () Bool)

(assert (=> b!2290733 (= c!363210 ((_ is EmptyLang!6713) (regex!4365 r!2363)))))

(declare-fun b!2290734 () Bool)

(assert (=> b!2290734 (= e!1467846 (not lt!849881))))

(declare-fun b!2290735 () Bool)

(declare-fun res!979626 () Bool)

(declare-fun e!1467847 () Bool)

(assert (=> b!2290735 (=> (not res!979626) (not e!1467847))))

(assert (=> b!2290735 (= res!979626 (isEmpty!15534 (tail!3309 (list!10680 (charsOf!2753 (head!4992 tokens!456))))))))

(declare-fun b!2290736 () Bool)

(declare-fun res!979628 () Bool)

(assert (=> b!2290736 (=> res!979628 e!1467845)))

(assert (=> b!2290736 (= res!979628 (not (isEmpty!15534 (tail!3309 (list!10680 (charsOf!2753 (head!4992 tokens!456)))))))))

(declare-fun b!2290737 () Bool)

(declare-fun derivativeStep!1526 (Regex!6713 C!13572) Regex!6713)

(assert (=> b!2290737 (= e!1467848 (matchR!2970 (derivativeStep!1526 (regex!4365 r!2363) (head!4994 (list!10680 (charsOf!2753 (head!4992 tokens!456))))) (tail!3309 (list!10680 (charsOf!2753 (head!4992 tokens!456))))))))

(declare-fun b!2290738 () Bool)

(declare-fun e!1467849 () Bool)

(assert (=> b!2290738 (= e!1467849 e!1467845)))

(declare-fun res!979629 () Bool)

(assert (=> b!2290738 (=> res!979629 e!1467845)))

(declare-fun call!136644 () Bool)

(assert (=> b!2290738 (= res!979629 call!136644)))

(declare-fun b!2290739 () Bool)

(declare-fun e!1467851 () Bool)

(assert (=> b!2290739 (= e!1467851 e!1467849)))

(declare-fun res!979627 () Bool)

(assert (=> b!2290739 (=> (not res!979627) (not e!1467849))))

(assert (=> b!2290739 (= res!979627 (not lt!849881))))

(declare-fun b!2290740 () Bool)

(assert (=> b!2290740 (= e!1467847 (= (head!4994 (list!10680 (charsOf!2753 (head!4992 tokens!456)))) (c!363163 (regex!4365 r!2363))))))

(declare-fun b!2290741 () Bool)

(declare-fun res!979630 () Bool)

(assert (=> b!2290741 (=> res!979630 e!1467851)))

(assert (=> b!2290741 (= res!979630 e!1467847)))

(declare-fun res!979623 () Bool)

(assert (=> b!2290741 (=> (not res!979623) (not e!1467847))))

(assert (=> b!2290741 (= res!979623 lt!849881)))

(declare-fun b!2290742 () Bool)

(declare-fun res!979625 () Bool)

(assert (=> b!2290742 (=> res!979625 e!1467851)))

(assert (=> b!2290742 (= res!979625 (not ((_ is ElementMatch!6713) (regex!4365 r!2363))))))

(assert (=> b!2290742 (= e!1467846 e!1467851)))

(declare-fun b!2290743 () Bool)

(assert (=> b!2290743 (= e!1467850 (= lt!849881 call!136644))))

(declare-fun b!2290744 () Bool)

(declare-fun res!979624 () Bool)

(assert (=> b!2290744 (=> (not res!979624) (not e!1467847))))

(assert (=> b!2290744 (= res!979624 (not call!136644))))

(declare-fun bm!136639 () Bool)

(assert (=> bm!136639 (= call!136644 (isEmpty!15534 (list!10680 (charsOf!2753 (head!4992 tokens!456)))))))

(declare-fun b!2290745 () Bool)

(assert (=> b!2290745 (= e!1467848 (nullable!1866 (regex!4365 r!2363)))))

(assert (= (and d!677548 c!363211) b!2290745))

(assert (= (and d!677548 (not c!363211)) b!2290737))

(assert (= (and d!677548 c!363212) b!2290743))

(assert (= (and d!677548 (not c!363212)) b!2290733))

(assert (= (and b!2290733 c!363210) b!2290734))

(assert (= (and b!2290733 (not c!363210)) b!2290742))

(assert (= (and b!2290742 (not res!979625)) b!2290741))

(assert (= (and b!2290741 res!979623) b!2290744))

(assert (= (and b!2290744 res!979624) b!2290735))

(assert (= (and b!2290735 res!979626) b!2290740))

(assert (= (and b!2290741 (not res!979630)) b!2290739))

(assert (= (and b!2290739 res!979627) b!2290738))

(assert (= (and b!2290738 (not res!979629)) b!2290736))

(assert (= (and b!2290736 (not res!979628)) b!2290732))

(assert (= (or b!2290743 b!2290744 b!2290738) bm!136639))

(assert (=> b!2290736 m!2718083))

(declare-fun m!2718399 () Bool)

(assert (=> b!2290736 m!2718399))

(assert (=> b!2290736 m!2718399))

(declare-fun m!2718401 () Bool)

(assert (=> b!2290736 m!2718401))

(assert (=> b!2290732 m!2718083))

(declare-fun m!2718403 () Bool)

(assert (=> b!2290732 m!2718403))

(declare-fun m!2718405 () Bool)

(assert (=> b!2290745 m!2718405))

(assert (=> b!2290735 m!2718083))

(assert (=> b!2290735 m!2718399))

(assert (=> b!2290735 m!2718399))

(assert (=> b!2290735 m!2718401))

(assert (=> b!2290737 m!2718083))

(assert (=> b!2290737 m!2718403))

(assert (=> b!2290737 m!2718403))

(declare-fun m!2718407 () Bool)

(assert (=> b!2290737 m!2718407))

(assert (=> b!2290737 m!2718083))

(assert (=> b!2290737 m!2718399))

(assert (=> b!2290737 m!2718407))

(assert (=> b!2290737 m!2718399))

(declare-fun m!2718409 () Bool)

(assert (=> b!2290737 m!2718409))

(assert (=> d!677548 m!2718083))

(declare-fun m!2718411 () Bool)

(assert (=> d!677548 m!2718411))

(declare-fun m!2718413 () Bool)

(assert (=> d!677548 m!2718413))

(assert (=> bm!136639 m!2718083))

(assert (=> bm!136639 m!2718411))

(assert (=> b!2290740 m!2718083))

(assert (=> b!2290740 m!2718403))

(assert (=> b!2290418 d!677548))

(declare-fun d!677550 () Bool)

(declare-fun list!10683 (Conc!8878) List!27370)

(assert (=> d!677550 (= (list!10680 (charsOf!2753 (head!4992 tokens!456))) (list!10683 (c!363162 (charsOf!2753 (head!4992 tokens!456)))))))

(declare-fun bs!457023 () Bool)

(assert (= bs!457023 d!677550))

(declare-fun m!2718415 () Bool)

(assert (=> bs!457023 m!2718415))

(assert (=> b!2290418 d!677550))

(declare-fun d!677552 () Bool)

(declare-fun lt!849884 () BalanceConc!17484)

(assert (=> d!677552 (= (list!10680 lt!849884) (originalCharacters!5135 (head!4992 tokens!456)))))

(declare-fun dynLambda!11838 (Int TokenValue!4527) BalanceConc!17484)

(assert (=> d!677552 (= lt!849884 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456)))) (value!138222 (head!4992 tokens!456))))))

(assert (=> d!677552 (= (charsOf!2753 (head!4992 tokens!456)) lt!849884)))

(declare-fun b_lambda!72951 () Bool)

(assert (=> (not b_lambda!72951) (not d!677552)))

(declare-fun t!204594 () Bool)

(declare-fun tb!136471 () Bool)

(assert (=> (and b!2290426 (= (toChars!6014 (transformation!4365 r!2363)) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204594) tb!136471))

(declare-fun b!2290750 () Bool)

(declare-fun e!1467854 () Bool)

(declare-fun tp!726263 () Bool)

(declare-fun inv!36878 (Conc!8878) Bool)

(assert (=> b!2290750 (= e!1467854 (and (inv!36878 (c!363162 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456)))) (value!138222 (head!4992 tokens!456))))) tp!726263))))

(declare-fun result!166412 () Bool)

(declare-fun inv!36879 (BalanceConc!17484) Bool)

(assert (=> tb!136471 (= result!166412 (and (inv!36879 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456)))) (value!138222 (head!4992 tokens!456)))) e!1467854))))

(assert (= tb!136471 b!2290750))

(declare-fun m!2718417 () Bool)

(assert (=> b!2290750 m!2718417))

(declare-fun m!2718419 () Bool)

(assert (=> tb!136471 m!2718419))

(assert (=> d!677552 t!204594))

(declare-fun b_and!181769 () Bool)

(assert (= b_and!181731 (and (=> t!204594 result!166412) b_and!181769)))

(declare-fun t!204596 () Bool)

(declare-fun tb!136473 () Bool)

(assert (=> (and b!2290425 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204596) tb!136473))

(declare-fun result!166416 () Bool)

(assert (= result!166416 result!166412))

(assert (=> d!677552 t!204596))

(declare-fun b_and!181771 () Bool)

(assert (= b_and!181735 (and (=> t!204596 result!166416) b_and!181771)))

(declare-fun t!204598 () Bool)

(declare-fun tb!136475 () Bool)

(assert (=> (and b!2290440 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204598) tb!136475))

(declare-fun result!166418 () Bool)

(assert (= result!166418 result!166412))

(assert (=> d!677552 t!204598))

(declare-fun b_and!181773 () Bool)

(assert (= b_and!181739 (and (=> t!204598 result!166418) b_and!181773)))

(declare-fun tb!136477 () Bool)

(declare-fun t!204600 () Bool)

(assert (=> (and b!2290417 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204600) tb!136477))

(declare-fun result!166420 () Bool)

(assert (= result!166420 result!166412))

(assert (=> d!677552 t!204600))

(declare-fun b_and!181775 () Bool)

(assert (= b_and!181743 (and (=> t!204600 result!166420) b_and!181775)))

(declare-fun m!2718421 () Bool)

(assert (=> d!677552 m!2718421))

(declare-fun m!2718423 () Bool)

(assert (=> d!677552 m!2718423))

(assert (=> b!2290418 d!677552))

(assert (=> b!2290418 d!677506))

(declare-fun d!677554 () Bool)

(declare-fun lt!849887 () Int)

(assert (=> d!677554 (>= lt!849887 0)))

(declare-fun e!1467857 () Int)

(assert (=> d!677554 (= lt!849887 e!1467857)))

(declare-fun c!363215 () Bool)

(assert (=> d!677554 (= c!363215 ((_ is Nil!27276) otherP!12))))

(assert (=> d!677554 (= (size!21471 otherP!12) lt!849887)))

(declare-fun b!2290755 () Bool)

(assert (=> b!2290755 (= e!1467857 0)))

(declare-fun b!2290756 () Bool)

(assert (=> b!2290756 (= e!1467857 (+ 1 (size!21471 (t!204566 otherP!12))))))

(assert (= (and d!677554 c!363215) b!2290755))

(assert (= (and d!677554 (not c!363215)) b!2290756))

(declare-fun m!2718425 () Bool)

(assert (=> b!2290756 m!2718425))

(assert (=> b!2290439 d!677554))

(declare-fun d!677556 () Bool)

(assert (=> d!677556 (isPrefix!2355 lt!849781 (++!6665 lt!849781 (_2!16055 lt!849776)))))

(declare-fun lt!849890 () Unit!40158)

(declare-fun choose!13377 (List!27370 List!27370) Unit!40158)

(assert (=> d!677556 (= lt!849890 (choose!13377 lt!849781 (_2!16055 lt!849776)))))

(assert (=> d!677556 (= (lemmaConcatTwoListThenFirstIsPrefix!1560 lt!849781 (_2!16055 lt!849776)) lt!849890)))

(declare-fun bs!457024 () Bool)

(assert (= bs!457024 d!677556))

(assert (=> bs!457024 m!2718047))

(assert (=> bs!457024 m!2718047))

(assert (=> bs!457024 m!2718049))

(declare-fun m!2718427 () Bool)

(assert (=> bs!457024 m!2718427))

(assert (=> b!2290439 d!677556))

(declare-fun b!2290766 () Bool)

(declare-fun e!1467862 () List!27370)

(assert (=> b!2290766 (= e!1467862 (Cons!27276 (h!32677 lt!849781) (++!6665 (t!204566 lt!849781) (_2!16055 lt!849776))))))

(declare-fun b!2290765 () Bool)

(assert (=> b!2290765 (= e!1467862 (_2!16055 lt!849776))))

(declare-fun d!677558 () Bool)

(declare-fun e!1467863 () Bool)

(assert (=> d!677558 e!1467863))

(declare-fun res!979635 () Bool)

(assert (=> d!677558 (=> (not res!979635) (not e!1467863))))

(declare-fun lt!849893 () List!27370)

(declare-fun content!3663 (List!27370) (InoxSet C!13572))

(assert (=> d!677558 (= res!979635 (= (content!3663 lt!849893) ((_ map or) (content!3663 lt!849781) (content!3663 (_2!16055 lt!849776)))))))

(assert (=> d!677558 (= lt!849893 e!1467862)))

(declare-fun c!363218 () Bool)

(assert (=> d!677558 (= c!363218 ((_ is Nil!27276) lt!849781))))

(assert (=> d!677558 (= (++!6665 lt!849781 (_2!16055 lt!849776)) lt!849893)))

(declare-fun b!2290768 () Bool)

(assert (=> b!2290768 (= e!1467863 (or (not (= (_2!16055 lt!849776) Nil!27276)) (= lt!849893 lt!849781)))))

(declare-fun b!2290767 () Bool)

(declare-fun res!979636 () Bool)

(assert (=> b!2290767 (=> (not res!979636) (not e!1467863))))

(assert (=> b!2290767 (= res!979636 (= (size!21471 lt!849893) (+ (size!21471 lt!849781) (size!21471 (_2!16055 lt!849776)))))))

(assert (= (and d!677558 c!363218) b!2290765))

(assert (= (and d!677558 (not c!363218)) b!2290766))

(assert (= (and d!677558 res!979635) b!2290767))

(assert (= (and b!2290767 res!979636) b!2290768))

(declare-fun m!2718429 () Bool)

(assert (=> b!2290766 m!2718429))

(declare-fun m!2718431 () Bool)

(assert (=> d!677558 m!2718431))

(declare-fun m!2718433 () Bool)

(assert (=> d!677558 m!2718433))

(declare-fun m!2718435 () Bool)

(assert (=> d!677558 m!2718435))

(declare-fun m!2718437 () Bool)

(assert (=> b!2290767 m!2718437))

(assert (=> b!2290767 m!2718053))

(declare-fun m!2718439 () Bool)

(assert (=> b!2290767 m!2718439))

(assert (=> b!2290439 d!677558))

(declare-fun d!677560 () Bool)

(declare-fun lt!849894 () BalanceConc!17484)

(assert (=> d!677560 (= (list!10680 lt!849894) (originalCharacters!5135 (h!32678 tokens!456)))))

(assert (=> d!677560 (= lt!849894 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (value!138222 (h!32678 tokens!456))))))

(assert (=> d!677560 (= (charsOf!2753 (h!32678 tokens!456)) lt!849894)))

(declare-fun b_lambda!72953 () Bool)

(assert (=> (not b_lambda!72953) (not d!677560)))

(declare-fun t!204602 () Bool)

(declare-fun tb!136479 () Bool)

(assert (=> (and b!2290426 (= (toChars!6014 (transformation!4365 r!2363)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204602) tb!136479))

(declare-fun b!2290769 () Bool)

(declare-fun e!1467864 () Bool)

(declare-fun tp!726264 () Bool)

(assert (=> b!2290769 (= e!1467864 (and (inv!36878 (c!363162 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (value!138222 (h!32678 tokens!456))))) tp!726264))))

(declare-fun result!166422 () Bool)

(assert (=> tb!136479 (= result!166422 (and (inv!36879 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (value!138222 (h!32678 tokens!456)))) e!1467864))))

(assert (= tb!136479 b!2290769))

(declare-fun m!2718441 () Bool)

(assert (=> b!2290769 m!2718441))

(declare-fun m!2718443 () Bool)

(assert (=> tb!136479 m!2718443))

(assert (=> d!677560 t!204602))

(declare-fun b_and!181777 () Bool)

(assert (= b_and!181769 (and (=> t!204602 result!166422) b_and!181777)))

(declare-fun t!204604 () Bool)

(declare-fun tb!136481 () Bool)

(assert (=> (and b!2290425 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204604) tb!136481))

(declare-fun result!166424 () Bool)

(assert (= result!166424 result!166422))

(assert (=> d!677560 t!204604))

(declare-fun b_and!181779 () Bool)

(assert (= b_and!181771 (and (=> t!204604 result!166424) b_and!181779)))

(declare-fun tb!136483 () Bool)

(declare-fun t!204606 () Bool)

(assert (=> (and b!2290440 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204606) tb!136483))

(declare-fun result!166426 () Bool)

(assert (= result!166426 result!166422))

(assert (=> d!677560 t!204606))

(declare-fun b_and!181781 () Bool)

(assert (= b_and!181773 (and (=> t!204606 result!166426) b_and!181781)))

(declare-fun tb!136485 () Bool)

(declare-fun t!204608 () Bool)

(assert (=> (and b!2290417 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204608) tb!136485))

(declare-fun result!166428 () Bool)

(assert (= result!166428 result!166422))

(assert (=> d!677560 t!204608))

(declare-fun b_and!181783 () Bool)

(assert (= b_and!181775 (and (=> t!204608 result!166428) b_and!181783)))

(declare-fun m!2718445 () Bool)

(assert (=> d!677560 m!2718445))

(declare-fun m!2718447 () Bool)

(assert (=> d!677560 m!2718447))

(assert (=> b!2290439 d!677560))

(declare-fun d!677562 () Bool)

(assert (=> d!677562 (= (_2!16055 lt!849776) lt!849771)))

(declare-fun lt!849897 () Unit!40158)

(declare-fun choose!13378 (List!27370 List!27370 List!27370 List!27370 List!27370) Unit!40158)

(assert (=> d!677562 (= lt!849897 (choose!13378 lt!849781 (_2!16055 lt!849776) lt!849781 lt!849771 input!1722))))

(assert (=> d!677562 (isPrefix!2355 lt!849781 input!1722)))

(assert (=> d!677562 (= (lemmaSamePrefixThenSameSuffix!1056 lt!849781 (_2!16055 lt!849776) lt!849781 lt!849771 input!1722) lt!849897)))

(declare-fun bs!457025 () Bool)

(assert (= bs!457025 d!677562))

(declare-fun m!2718449 () Bool)

(assert (=> bs!457025 m!2718449))

(assert (=> bs!457025 m!2718127))

(assert (=> b!2290439 d!677562))

(declare-fun d!677564 () Bool)

(declare-fun lt!849900 () List!27370)

(assert (=> d!677564 (= (++!6665 lt!849781 lt!849900) input!1722)))

(declare-fun e!1467867 () List!27370)

(assert (=> d!677564 (= lt!849900 e!1467867)))

(declare-fun c!363221 () Bool)

(assert (=> d!677564 (= c!363221 ((_ is Cons!27276) lt!849781))))

(assert (=> d!677564 (>= (size!21471 input!1722) (size!21471 lt!849781))))

(assert (=> d!677564 (= (getSuffix!1146 input!1722 lt!849781) lt!849900)))

(declare-fun b!2290774 () Bool)

(assert (=> b!2290774 (= e!1467867 (getSuffix!1146 (tail!3309 input!1722) (t!204566 lt!849781)))))

(declare-fun b!2290775 () Bool)

(assert (=> b!2290775 (= e!1467867 input!1722)))

(assert (= (and d!677564 c!363221) b!2290774))

(assert (= (and d!677564 (not c!363221)) b!2290775))

(declare-fun m!2718451 () Bool)

(assert (=> d!677564 m!2718451))

(assert (=> d!677564 m!2718323))

(assert (=> d!677564 m!2718053))

(assert (=> b!2290774 m!2718373))

(assert (=> b!2290774 m!2718373))

(declare-fun m!2718453 () Bool)

(assert (=> b!2290774 m!2718453))

(assert (=> b!2290439 d!677564))

(declare-fun b!2290779 () Bool)

(declare-fun e!1467869 () Bool)

(assert (=> b!2290779 (= e!1467869 (>= (size!21471 (++!6665 lt!849781 (_2!16055 lt!849776))) (size!21471 lt!849781)))))

(declare-fun b!2290776 () Bool)

(declare-fun e!1467868 () Bool)

(declare-fun e!1467870 () Bool)

(assert (=> b!2290776 (= e!1467868 e!1467870)))

(declare-fun res!979640 () Bool)

(assert (=> b!2290776 (=> (not res!979640) (not e!1467870))))

(assert (=> b!2290776 (= res!979640 (not ((_ is Nil!27276) (++!6665 lt!849781 (_2!16055 lt!849776)))))))

(declare-fun d!677566 () Bool)

(assert (=> d!677566 e!1467869))

(declare-fun res!979638 () Bool)

(assert (=> d!677566 (=> res!979638 e!1467869)))

(declare-fun lt!849901 () Bool)

(assert (=> d!677566 (= res!979638 (not lt!849901))))

(assert (=> d!677566 (= lt!849901 e!1467868)))

(declare-fun res!979637 () Bool)

(assert (=> d!677566 (=> res!979637 e!1467868)))

(assert (=> d!677566 (= res!979637 ((_ is Nil!27276) lt!849781))))

(assert (=> d!677566 (= (isPrefix!2355 lt!849781 (++!6665 lt!849781 (_2!16055 lt!849776))) lt!849901)))

(declare-fun b!2290777 () Bool)

(declare-fun res!979639 () Bool)

(assert (=> b!2290777 (=> (not res!979639) (not e!1467870))))

(assert (=> b!2290777 (= res!979639 (= (head!4994 lt!849781) (head!4994 (++!6665 lt!849781 (_2!16055 lt!849776)))))))

(declare-fun b!2290778 () Bool)

(assert (=> b!2290778 (= e!1467870 (isPrefix!2355 (tail!3309 lt!849781) (tail!3309 (++!6665 lt!849781 (_2!16055 lt!849776)))))))

(assert (= (and d!677566 (not res!979637)) b!2290776))

(assert (= (and b!2290776 res!979640) b!2290777))

(assert (= (and b!2290777 res!979639) b!2290778))

(assert (= (and d!677566 (not res!979638)) b!2290779))

(assert (=> b!2290779 m!2718047))

(declare-fun m!2718455 () Bool)

(assert (=> b!2290779 m!2718455))

(assert (=> b!2290779 m!2718053))

(assert (=> b!2290777 m!2718367))

(assert (=> b!2290777 m!2718047))

(declare-fun m!2718457 () Bool)

(assert (=> b!2290777 m!2718457))

(assert (=> b!2290778 m!2718371))

(assert (=> b!2290778 m!2718047))

(declare-fun m!2718459 () Bool)

(assert (=> b!2290778 m!2718459))

(assert (=> b!2290778 m!2718371))

(assert (=> b!2290778 m!2718459))

(declare-fun m!2718461 () Bool)

(assert (=> b!2290778 m!2718461))

(assert (=> b!2290439 d!677566))

(declare-fun d!677568 () Bool)

(assert (=> d!677568 (= (list!10680 (charsOf!2753 (h!32678 tokens!456))) (list!10683 (c!363162 (charsOf!2753 (h!32678 tokens!456)))))))

(declare-fun bs!457026 () Bool)

(assert (= bs!457026 d!677568))

(declare-fun m!2718463 () Bool)

(assert (=> bs!457026 m!2718463))

(assert (=> b!2290439 d!677568))

(declare-fun d!677570 () Bool)

(declare-fun lt!849902 () Int)

(assert (=> d!677570 (>= lt!849902 0)))

(declare-fun e!1467871 () Int)

(assert (=> d!677570 (= lt!849902 e!1467871)))

(declare-fun c!363222 () Bool)

(assert (=> d!677570 (= c!363222 ((_ is Nil!27276) lt!849781))))

(assert (=> d!677570 (= (size!21471 lt!849781) lt!849902)))

(declare-fun b!2290780 () Bool)

(assert (=> b!2290780 (= e!1467871 0)))

(declare-fun b!2290781 () Bool)

(assert (=> b!2290781 (= e!1467871 (+ 1 (size!21471 (t!204566 lt!849781))))))

(assert (= (and d!677570 c!363222) b!2290780))

(assert (= (and d!677570 (not c!363222)) b!2290781))

(declare-fun m!2718465 () Bool)

(assert (=> b!2290781 m!2718465))

(assert (=> b!2290439 d!677570))

(declare-fun d!677572 () Bool)

(assert (=> d!677572 (= (isEmpty!15529 tokens!456) ((_ is Nil!27277) tokens!456))))

(assert (=> b!2290420 d!677572))

(declare-fun d!677574 () Bool)

(declare-fun res!979641 () Bool)

(declare-fun e!1467872 () Bool)

(assert (=> d!677574 (=> (not res!979641) (not e!1467872))))

(assert (=> d!677574 (= res!979641 (validRegex!2528 (regex!4365 r!2363)))))

(assert (=> d!677574 (= (ruleValid!1455 thiss!16613 r!2363) e!1467872)))

(declare-fun b!2290782 () Bool)

(declare-fun res!979642 () Bool)

(assert (=> b!2290782 (=> (not res!979642) (not e!1467872))))

(assert (=> b!2290782 (= res!979642 (not (nullable!1866 (regex!4365 r!2363))))))

(declare-fun b!2290783 () Bool)

(assert (=> b!2290783 (= e!1467872 (not (= (tag!4855 r!2363) (String!29740 ""))))))

(assert (= (and d!677574 res!979641) b!2290782))

(assert (= (and b!2290782 res!979642) b!2290783))

(assert (=> d!677574 m!2718413))

(assert (=> b!2290782 m!2718405))

(assert (=> b!2290441 d!677574))

(declare-fun d!677576 () Bool)

(assert (=> d!677576 (ruleValid!1455 thiss!16613 r!2363)))

(declare-fun lt!849903 () Unit!40158)

(assert (=> d!677576 (= lt!849903 (choose!13375 thiss!16613 r!2363 rules!1750))))

(assert (=> d!677576 (contains!4741 rules!1750 r!2363)))

(assert (=> d!677576 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!860 thiss!16613 r!2363 rules!1750) lt!849903)))

(declare-fun bs!457027 () Bool)

(assert (= bs!457027 d!677576))

(assert (=> bs!457027 m!2718131))

(declare-fun m!2718467 () Bool)

(assert (=> bs!457027 m!2718467))

(assert (=> bs!457027 m!2718035))

(assert (=> b!2290441 d!677576))

(declare-fun d!677578 () Bool)

(declare-fun e!1467878 () Bool)

(assert (=> d!677578 e!1467878))

(declare-fun c!363225 () Bool)

(assert (=> d!677578 (= c!363225 ((_ is EmptyExpr!6713) (regex!4365 r!2363)))))

(declare-fun lt!849904 () Bool)

(declare-fun e!1467876 () Bool)

(assert (=> d!677578 (= lt!849904 e!1467876)))

(declare-fun c!363224 () Bool)

(assert (=> d!677578 (= c!363224 (isEmpty!15534 lt!849781))))

(assert (=> d!677578 (validRegex!2528 (regex!4365 r!2363))))

(assert (=> d!677578 (= (matchR!2970 (regex!4365 r!2363) lt!849781) lt!849904)))

(declare-fun b!2290784 () Bool)

(declare-fun e!1467873 () Bool)

(assert (=> b!2290784 (= e!1467873 (not (= (head!4994 lt!849781) (c!363163 (regex!4365 r!2363)))))))

(declare-fun b!2290785 () Bool)

(declare-fun e!1467874 () Bool)

(assert (=> b!2290785 (= e!1467878 e!1467874)))

(declare-fun c!363223 () Bool)

(assert (=> b!2290785 (= c!363223 ((_ is EmptyLang!6713) (regex!4365 r!2363)))))

(declare-fun b!2290786 () Bool)

(assert (=> b!2290786 (= e!1467874 (not lt!849904))))

(declare-fun b!2290787 () Bool)

(declare-fun res!979646 () Bool)

(declare-fun e!1467875 () Bool)

(assert (=> b!2290787 (=> (not res!979646) (not e!1467875))))

(assert (=> b!2290787 (= res!979646 (isEmpty!15534 (tail!3309 lt!849781)))))

(declare-fun b!2290788 () Bool)

(declare-fun res!979648 () Bool)

(assert (=> b!2290788 (=> res!979648 e!1467873)))

(assert (=> b!2290788 (= res!979648 (not (isEmpty!15534 (tail!3309 lt!849781))))))

(declare-fun b!2290789 () Bool)

(assert (=> b!2290789 (= e!1467876 (matchR!2970 (derivativeStep!1526 (regex!4365 r!2363) (head!4994 lt!849781)) (tail!3309 lt!849781)))))

(declare-fun b!2290790 () Bool)

(declare-fun e!1467877 () Bool)

(assert (=> b!2290790 (= e!1467877 e!1467873)))

(declare-fun res!979649 () Bool)

(assert (=> b!2290790 (=> res!979649 e!1467873)))

(declare-fun call!136645 () Bool)

(assert (=> b!2290790 (= res!979649 call!136645)))

(declare-fun b!2290791 () Bool)

(declare-fun e!1467879 () Bool)

(assert (=> b!2290791 (= e!1467879 e!1467877)))

(declare-fun res!979647 () Bool)

(assert (=> b!2290791 (=> (not res!979647) (not e!1467877))))

(assert (=> b!2290791 (= res!979647 (not lt!849904))))

(declare-fun b!2290792 () Bool)

(assert (=> b!2290792 (= e!1467875 (= (head!4994 lt!849781) (c!363163 (regex!4365 r!2363))))))

(declare-fun b!2290793 () Bool)

(declare-fun res!979650 () Bool)

(assert (=> b!2290793 (=> res!979650 e!1467879)))

(assert (=> b!2290793 (= res!979650 e!1467875)))

(declare-fun res!979643 () Bool)

(assert (=> b!2290793 (=> (not res!979643) (not e!1467875))))

(assert (=> b!2290793 (= res!979643 lt!849904)))

(declare-fun b!2290794 () Bool)

(declare-fun res!979645 () Bool)

(assert (=> b!2290794 (=> res!979645 e!1467879)))

(assert (=> b!2290794 (= res!979645 (not ((_ is ElementMatch!6713) (regex!4365 r!2363))))))

(assert (=> b!2290794 (= e!1467874 e!1467879)))

(declare-fun b!2290795 () Bool)

(assert (=> b!2290795 (= e!1467878 (= lt!849904 call!136645))))

(declare-fun b!2290796 () Bool)

(declare-fun res!979644 () Bool)

(assert (=> b!2290796 (=> (not res!979644) (not e!1467875))))

(assert (=> b!2290796 (= res!979644 (not call!136645))))

(declare-fun bm!136640 () Bool)

(assert (=> bm!136640 (= call!136645 (isEmpty!15534 lt!849781))))

(declare-fun b!2290797 () Bool)

(assert (=> b!2290797 (= e!1467876 (nullable!1866 (regex!4365 r!2363)))))

(assert (= (and d!677578 c!363224) b!2290797))

(assert (= (and d!677578 (not c!363224)) b!2290789))

(assert (= (and d!677578 c!363225) b!2290795))

(assert (= (and d!677578 (not c!363225)) b!2290785))

(assert (= (and b!2290785 c!363223) b!2290786))

(assert (= (and b!2290785 (not c!363223)) b!2290794))

(assert (= (and b!2290794 (not res!979645)) b!2290793))

(assert (= (and b!2290793 res!979643) b!2290796))

(assert (= (and b!2290796 res!979644) b!2290787))

(assert (= (and b!2290787 res!979646) b!2290792))

(assert (= (and b!2290793 (not res!979650)) b!2290791))

(assert (= (and b!2290791 res!979647) b!2290790))

(assert (= (and b!2290790 (not res!979649)) b!2290788))

(assert (= (and b!2290788 (not res!979648)) b!2290784))

(assert (= (or b!2290795 b!2290796 b!2290790) bm!136640))

(assert (=> b!2290788 m!2718371))

(assert (=> b!2290788 m!2718371))

(declare-fun m!2718469 () Bool)

(assert (=> b!2290788 m!2718469))

(assert (=> b!2290784 m!2718367))

(assert (=> b!2290797 m!2718405))

(assert (=> b!2290787 m!2718371))

(assert (=> b!2290787 m!2718371))

(assert (=> b!2290787 m!2718469))

(assert (=> b!2290789 m!2718367))

(assert (=> b!2290789 m!2718367))

(declare-fun m!2718471 () Bool)

(assert (=> b!2290789 m!2718471))

(assert (=> b!2290789 m!2718371))

(assert (=> b!2290789 m!2718471))

(assert (=> b!2290789 m!2718371))

(declare-fun m!2718473 () Bool)

(assert (=> b!2290789 m!2718473))

(declare-fun m!2718475 () Bool)

(assert (=> d!677578 m!2718475))

(assert (=> d!677578 m!2718413))

(assert (=> bm!136640 m!2718475))

(assert (=> b!2290792 m!2718367))

(assert (=> b!2290422 d!677578))

(declare-fun b!2290801 () Bool)

(declare-fun e!1467881 () Bool)

(assert (=> b!2290801 (= e!1467881 (>= (size!21471 input!1722) (size!21471 otherP!12)))))

(declare-fun b!2290798 () Bool)

(declare-fun e!1467880 () Bool)

(declare-fun e!1467882 () Bool)

(assert (=> b!2290798 (= e!1467880 e!1467882)))

(declare-fun res!979654 () Bool)

(assert (=> b!2290798 (=> (not res!979654) (not e!1467882))))

(assert (=> b!2290798 (= res!979654 (not ((_ is Nil!27276) input!1722)))))

(declare-fun d!677580 () Bool)

(assert (=> d!677580 e!1467881))

(declare-fun res!979652 () Bool)

(assert (=> d!677580 (=> res!979652 e!1467881)))

(declare-fun lt!849905 () Bool)

(assert (=> d!677580 (= res!979652 (not lt!849905))))

(assert (=> d!677580 (= lt!849905 e!1467880)))

(declare-fun res!979651 () Bool)

(assert (=> d!677580 (=> res!979651 e!1467880)))

(assert (=> d!677580 (= res!979651 ((_ is Nil!27276) otherP!12))))

(assert (=> d!677580 (= (isPrefix!2355 otherP!12 input!1722) lt!849905)))

(declare-fun b!2290799 () Bool)

(declare-fun res!979653 () Bool)

(assert (=> b!2290799 (=> (not res!979653) (not e!1467882))))

(assert (=> b!2290799 (= res!979653 (= (head!4994 otherP!12) (head!4994 input!1722)))))

(declare-fun b!2290800 () Bool)

(assert (=> b!2290800 (= e!1467882 (isPrefix!2355 (tail!3309 otherP!12) (tail!3309 input!1722)))))

(assert (= (and d!677580 (not res!979651)) b!2290798))

(assert (= (and b!2290798 res!979654) b!2290799))

(assert (= (and b!2290799 res!979653) b!2290800))

(assert (= (and d!677580 (not res!979652)) b!2290801))

(assert (=> b!2290801 m!2718323))

(assert (=> b!2290801 m!2718051))

(declare-fun m!2718477 () Bool)

(assert (=> b!2290799 m!2718477))

(assert (=> b!2290799 m!2718369))

(declare-fun m!2718479 () Bool)

(assert (=> b!2290800 m!2718479))

(assert (=> b!2290800 m!2718373))

(assert (=> b!2290800 m!2718479))

(assert (=> b!2290800 m!2718373))

(declare-fun m!2718481 () Bool)

(assert (=> b!2290800 m!2718481))

(assert (=> b!2290443 d!677580))

(declare-fun d!677582 () Bool)

(declare-fun list!10685 (Conc!8879) List!27371)

(assert (=> d!677582 (= (list!10681 (_1!16053 lt!849774)) (list!10685 (c!363164 (_1!16053 lt!849774))))))

(declare-fun bs!457028 () Bool)

(assert (= bs!457028 d!677582))

(declare-fun m!2718483 () Bool)

(assert (=> bs!457028 m!2718483))

(assert (=> b!2290421 d!677582))

(declare-fun d!677584 () Bool)

(assert (=> d!677584 (= (list!10680 (_2!16053 lt!849774)) (list!10683 (c!363162 (_2!16053 lt!849774))))))

(declare-fun bs!457029 () Bool)

(assert (= bs!457029 d!677584))

(declare-fun m!2718485 () Bool)

(assert (=> bs!457029 m!2718485))

(assert (=> b!2290421 d!677584))

(declare-fun b!2290812 () Bool)

(declare-fun res!979663 () Bool)

(declare-fun e!1467890 () Bool)

(assert (=> b!2290812 (=> (not res!979663) (not e!1467890))))

(declare-fun lt!849908 () tuple2!27086)

(declare-fun lexList!1112 (LexerInterface!3962 List!27372 List!27370) tuple2!27088)

(assert (=> b!2290812 (= res!979663 (= (list!10681 (_1!16053 lt!849908)) (_1!16054 (lexList!1112 thiss!16613 rules!1750 (list!10680 (seqFromList!3069 input!1722))))))))

(declare-fun b!2290813 () Bool)

(assert (=> b!2290813 (= e!1467890 (= (list!10680 (_2!16053 lt!849908)) (_2!16054 (lexList!1112 thiss!16613 rules!1750 (list!10680 (seqFromList!3069 input!1722))))))))

(declare-fun d!677586 () Bool)

(assert (=> d!677586 e!1467890))

(declare-fun res!979662 () Bool)

(assert (=> d!677586 (=> (not res!979662) (not e!1467890))))

(declare-fun e!1467889 () Bool)

(assert (=> d!677586 (= res!979662 e!1467889)))

(declare-fun c!363228 () Bool)

(declare-fun size!21475 (BalanceConc!17486) Int)

(assert (=> d!677586 (= c!363228 (> (size!21475 (_1!16053 lt!849908)) 0))))

(declare-fun lexTailRecV2!787 (LexerInterface!3962 List!27372 BalanceConc!17484 BalanceConc!17484 BalanceConc!17484 BalanceConc!17486) tuple2!27086)

(assert (=> d!677586 (= lt!849908 (lexTailRecV2!787 thiss!16613 rules!1750 (seqFromList!3069 input!1722) (BalanceConc!17485 Empty!8878) (seqFromList!3069 input!1722) (BalanceConc!17487 Empty!8879)))))

(assert (=> d!677586 (= (lex!1801 thiss!16613 rules!1750 (seqFromList!3069 input!1722)) lt!849908)))

(declare-fun b!2290814 () Bool)

(declare-fun e!1467891 () Bool)

(assert (=> b!2290814 (= e!1467889 e!1467891)))

(declare-fun res!979661 () Bool)

(assert (=> b!2290814 (= res!979661 (< (size!21472 (_2!16053 lt!849908)) (size!21472 (seqFromList!3069 input!1722))))))

(assert (=> b!2290814 (=> (not res!979661) (not e!1467891))))

(declare-fun b!2290815 () Bool)

(declare-fun isEmpty!15536 (BalanceConc!17486) Bool)

(assert (=> b!2290815 (= e!1467891 (not (isEmpty!15536 (_1!16053 lt!849908))))))

(declare-fun b!2290816 () Bool)

(assert (=> b!2290816 (= e!1467889 (= (_2!16053 lt!849908) (seqFromList!3069 input!1722)))))

(assert (= (and d!677586 c!363228) b!2290814))

(assert (= (and d!677586 (not c!363228)) b!2290816))

(assert (= (and b!2290814 res!979661) b!2290815))

(assert (= (and d!677586 res!979662) b!2290812))

(assert (= (and b!2290812 res!979663) b!2290813))

(declare-fun m!2718487 () Bool)

(assert (=> b!2290814 m!2718487))

(assert (=> b!2290814 m!2718111))

(declare-fun m!2718489 () Bool)

(assert (=> b!2290814 m!2718489))

(declare-fun m!2718491 () Bool)

(assert (=> b!2290812 m!2718491))

(assert (=> b!2290812 m!2718111))

(declare-fun m!2718493 () Bool)

(assert (=> b!2290812 m!2718493))

(assert (=> b!2290812 m!2718493))

(declare-fun m!2718495 () Bool)

(assert (=> b!2290812 m!2718495))

(declare-fun m!2718497 () Bool)

(assert (=> b!2290815 m!2718497))

(declare-fun m!2718499 () Bool)

(assert (=> d!677586 m!2718499))

(assert (=> d!677586 m!2718111))

(assert (=> d!677586 m!2718111))

(declare-fun m!2718501 () Bool)

(assert (=> d!677586 m!2718501))

(declare-fun m!2718503 () Bool)

(assert (=> b!2290813 m!2718503))

(assert (=> b!2290813 m!2718111))

(assert (=> b!2290813 m!2718493))

(assert (=> b!2290813 m!2718493))

(assert (=> b!2290813 m!2718495))

(assert (=> b!2290421 d!677586))

(declare-fun d!677588 () Bool)

(assert (=> d!677588 (= (seqFromList!3069 input!1722) (fromListB!1378 input!1722))))

(declare-fun bs!457030 () Bool)

(assert (= bs!457030 d!677588))

(declare-fun m!2718505 () Bool)

(assert (=> bs!457030 m!2718505))

(assert (=> b!2290421 d!677588))

(declare-fun d!677590 () Bool)

(assert (=> d!677590 (= (inv!36871 (tag!4855 (h!32679 rules!1750))) (= (mod (str.len (value!138221 (tag!4855 (h!32679 rules!1750)))) 2) 0))))

(assert (=> b!2290446 d!677590))

(declare-fun d!677592 () Bool)

(declare-fun res!979664 () Bool)

(declare-fun e!1467892 () Bool)

(assert (=> d!677592 (=> (not res!979664) (not e!1467892))))

(assert (=> d!677592 (= res!979664 (semiInverseModEq!1768 (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toValue!6155 (transformation!4365 (h!32679 rules!1750)))))))

(assert (=> d!677592 (= (inv!36874 (transformation!4365 (h!32679 rules!1750))) e!1467892)))

(declare-fun b!2290817 () Bool)

(assert (=> b!2290817 (= e!1467892 (equivClasses!1687 (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toValue!6155 (transformation!4365 (h!32679 rules!1750)))))))

(assert (= (and d!677592 res!979664) b!2290817))

(declare-fun m!2718507 () Bool)

(assert (=> d!677592 m!2718507))

(declare-fun m!2718509 () Bool)

(assert (=> b!2290817 m!2718509))

(assert (=> b!2290446 d!677592))

(declare-fun b!2290821 () Bool)

(declare-fun e!1467894 () Bool)

(assert (=> b!2290821 (= e!1467894 (>= (size!21471 input!1722) (size!21471 input!1722)))))

(declare-fun b!2290818 () Bool)

(declare-fun e!1467893 () Bool)

(declare-fun e!1467895 () Bool)

(assert (=> b!2290818 (= e!1467893 e!1467895)))

(declare-fun res!979668 () Bool)

(assert (=> b!2290818 (=> (not res!979668) (not e!1467895))))

(assert (=> b!2290818 (= res!979668 (not ((_ is Nil!27276) input!1722)))))

(declare-fun d!677594 () Bool)

(assert (=> d!677594 e!1467894))

(declare-fun res!979666 () Bool)

(assert (=> d!677594 (=> res!979666 e!1467894)))

(declare-fun lt!849909 () Bool)

(assert (=> d!677594 (= res!979666 (not lt!849909))))

(assert (=> d!677594 (= lt!849909 e!1467893)))

(declare-fun res!979665 () Bool)

(assert (=> d!677594 (=> res!979665 e!1467893)))

(assert (=> d!677594 (= res!979665 ((_ is Nil!27276) input!1722))))

(assert (=> d!677594 (= (isPrefix!2355 input!1722 input!1722) lt!849909)))

(declare-fun b!2290819 () Bool)

(declare-fun res!979667 () Bool)

(assert (=> b!2290819 (=> (not res!979667) (not e!1467895))))

(assert (=> b!2290819 (= res!979667 (= (head!4994 input!1722) (head!4994 input!1722)))))

(declare-fun b!2290820 () Bool)

(assert (=> b!2290820 (= e!1467895 (isPrefix!2355 (tail!3309 input!1722) (tail!3309 input!1722)))))

(assert (= (and d!677594 (not res!979665)) b!2290818))

(assert (= (and b!2290818 res!979668) b!2290819))

(assert (= (and b!2290819 res!979667) b!2290820))

(assert (= (and d!677594 (not res!979666)) b!2290821))

(assert (=> b!2290821 m!2718323))

(assert (=> b!2290821 m!2718323))

(assert (=> b!2290819 m!2718369))

(assert (=> b!2290819 m!2718369))

(assert (=> b!2290820 m!2718373))

(assert (=> b!2290820 m!2718373))

(assert (=> b!2290820 m!2718373))

(assert (=> b!2290820 m!2718373))

(declare-fun m!2718511 () Bool)

(assert (=> b!2290820 m!2718511))

(assert (=> b!2290424 d!677594))

(declare-fun d!677596 () Bool)

(assert (=> d!677596 (isPrefix!2355 input!1722 input!1722)))

(declare-fun lt!849912 () Unit!40158)

(declare-fun choose!13379 (List!27370 List!27370) Unit!40158)

(assert (=> d!677596 (= lt!849912 (choose!13379 input!1722 input!1722))))

(assert (=> d!677596 (= (lemmaIsPrefixRefl!1497 input!1722 input!1722) lt!849912)))

(declare-fun bs!457031 () Bool)

(assert (= bs!457031 d!677596))

(assert (=> bs!457031 m!2718115))

(declare-fun m!2718513 () Bool)

(assert (=> bs!457031 m!2718513))

(assert (=> b!2290424 d!677596))

(declare-fun b!2290962 () Bool)

(declare-fun e!1467987 () Bool)

(assert (=> b!2290962 (= e!1467987 true)))

(declare-fun d!677598 () Bool)

(assert (=> d!677598 e!1467987))

(assert (= d!677598 b!2290962))

(declare-fun order!15193 () Int)

(declare-fun order!15191 () Int)

(declare-fun lambda!85751 () Int)

(declare-fun dynLambda!11839 (Int Int) Int)

(declare-fun dynLambda!11840 (Int Int) Int)

(assert (=> b!2290962 (< (dynLambda!11839 order!15191 (toValue!6155 (transformation!4365 r!2363))) (dynLambda!11840 order!15193 lambda!85751))))

(declare-fun order!15195 () Int)

(declare-fun dynLambda!11841 (Int Int) Int)

(assert (=> b!2290962 (< (dynLambda!11841 order!15195 (toChars!6014 (transformation!4365 r!2363))) (dynLambda!11840 order!15193 lambda!85751))))

(assert (=> d!677598 (= (list!10680 (dynLambda!11838 (toChars!6014 (transformation!4365 r!2363)) (dynLambda!11837 (toValue!6155 (transformation!4365 r!2363)) lt!849779))) (list!10680 lt!849779))))

(declare-fun lt!849940 () Unit!40158)

(declare-fun ForallOf!495 (Int BalanceConc!17484) Unit!40158)

(assert (=> d!677598 (= lt!849940 (ForallOf!495 lambda!85751 lt!849779))))

(assert (=> d!677598 (= (lemmaSemiInverse!1064 (transformation!4365 r!2363) lt!849779) lt!849940)))

(declare-fun b_lambda!72973 () Bool)

(assert (=> (not b_lambda!72973) (not d!677598)))

(declare-fun t!204642 () Bool)

(declare-fun tb!136519 () Bool)

(assert (=> (and b!2290426 (= (toChars!6014 (transformation!4365 r!2363)) (toChars!6014 (transformation!4365 r!2363))) t!204642) tb!136519))

(declare-fun e!1467988 () Bool)

(declare-fun b!2290963 () Bool)

(declare-fun tp!726330 () Bool)

(assert (=> b!2290963 (= e!1467988 (and (inv!36878 (c!363162 (dynLambda!11838 (toChars!6014 (transformation!4365 r!2363)) (dynLambda!11837 (toValue!6155 (transformation!4365 r!2363)) lt!849779)))) tp!726330))))

(declare-fun result!166470 () Bool)

(assert (=> tb!136519 (= result!166470 (and (inv!36879 (dynLambda!11838 (toChars!6014 (transformation!4365 r!2363)) (dynLambda!11837 (toValue!6155 (transformation!4365 r!2363)) lt!849779))) e!1467988))))

(assert (= tb!136519 b!2290963))

(declare-fun m!2718635 () Bool)

(assert (=> b!2290963 m!2718635))

(declare-fun m!2718637 () Bool)

(assert (=> tb!136519 m!2718637))

(assert (=> d!677598 t!204642))

(declare-fun b_and!181825 () Bool)

(assert (= b_and!181777 (and (=> t!204642 result!166470) b_and!181825)))

(declare-fun tb!136521 () Bool)

(declare-fun t!204644 () Bool)

(assert (=> (and b!2290425 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toChars!6014 (transformation!4365 r!2363))) t!204644) tb!136521))

(declare-fun result!166472 () Bool)

(assert (= result!166472 result!166470))

(assert (=> d!677598 t!204644))

(declare-fun b_and!181827 () Bool)

(assert (= b_and!181779 (and (=> t!204644 result!166472) b_and!181827)))

(declare-fun tb!136523 () Bool)

(declare-fun t!204646 () Bool)

(assert (=> (and b!2290440 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 r!2363))) t!204646) tb!136523))

(declare-fun result!166474 () Bool)

(assert (= result!166474 result!166470))

(assert (=> d!677598 t!204646))

(declare-fun b_and!181829 () Bool)

(assert (= b_and!181781 (and (=> t!204646 result!166474) b_and!181829)))

(declare-fun t!204648 () Bool)

(declare-fun tb!136525 () Bool)

(assert (=> (and b!2290417 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 r!2363))) t!204648) tb!136525))

(declare-fun result!166476 () Bool)

(assert (= result!166476 result!166470))

(assert (=> d!677598 t!204648))

(declare-fun b_and!181831 () Bool)

(assert (= b_and!181783 (and (=> t!204648 result!166476) b_and!181831)))

(declare-fun b_lambda!72975 () Bool)

(assert (=> (not b_lambda!72975) (not d!677598)))

(assert (=> d!677598 t!204586))

(declare-fun b_and!181833 () Bool)

(assert (= b_and!181761 (and (=> t!204586 result!166402) b_and!181833)))

(assert (=> d!677598 t!204588))

(declare-fun b_and!181835 () Bool)

(assert (= b_and!181763 (and (=> t!204588 result!166406) b_and!181835)))

(assert (=> d!677598 t!204590))

(declare-fun b_and!181837 () Bool)

(assert (= b_and!181765 (and (=> t!204590 result!166408) b_and!181837)))

(assert (=> d!677598 t!204592))

(declare-fun b_and!181839 () Bool)

(assert (= b_and!181767 (and (=> t!204592 result!166410) b_and!181839)))

(declare-fun m!2718639 () Bool)

(assert (=> d!677598 m!2718639))

(assert (=> d!677598 m!2718379))

(declare-fun m!2718641 () Bool)

(assert (=> d!677598 m!2718641))

(assert (=> d!677598 m!2718379))

(declare-fun m!2718643 () Bool)

(assert (=> d!677598 m!2718643))

(assert (=> d!677598 m!2718641))

(declare-fun m!2718645 () Bool)

(assert (=> d!677598 m!2718645))

(assert (=> b!2290424 d!677598))

(declare-fun d!677646 () Bool)

(assert (=> d!677646 (= (get!8227 (maxPrefix!2226 thiss!16613 rules!1750 input!1722)) (v!30434 (maxPrefix!2226 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2290445 d!677646))

(declare-fun d!677648 () Bool)

(declare-fun e!1467997 () Bool)

(assert (=> d!677648 e!1467997))

(declare-fun res!979718 () Bool)

(assert (=> d!677648 (=> res!979718 e!1467997)))

(declare-fun lt!849955 () Option!5355)

(assert (=> d!677648 (= res!979718 (isEmpty!15533 lt!849955))))

(declare-fun e!1467995 () Option!5355)

(assert (=> d!677648 (= lt!849955 e!1467995)))

(declare-fun c!363250 () Bool)

(assert (=> d!677648 (= c!363250 (and ((_ is Cons!27278) rules!1750) ((_ is Nil!27278) (t!204568 rules!1750))))))

(declare-fun lt!849953 () Unit!40158)

(declare-fun lt!849951 () Unit!40158)

(assert (=> d!677648 (= lt!849953 lt!849951)))

(assert (=> d!677648 (isPrefix!2355 input!1722 input!1722)))

(assert (=> d!677648 (= lt!849951 (lemmaIsPrefixRefl!1497 input!1722 input!1722))))

(declare-fun rulesValidInductive!1537 (LexerInterface!3962 List!27372) Bool)

(assert (=> d!677648 (rulesValidInductive!1537 thiss!16613 rules!1750)))

(assert (=> d!677648 (= (maxPrefix!2226 thiss!16613 rules!1750 input!1722) lt!849955)))

(declare-fun b!2290982 () Bool)

(declare-fun res!979722 () Bool)

(declare-fun e!1467996 () Bool)

(assert (=> b!2290982 (=> (not res!979722) (not e!1467996))))

(assert (=> b!2290982 (= res!979722 (= (list!10680 (charsOf!2753 (_1!16055 (get!8227 lt!849955)))) (originalCharacters!5135 (_1!16055 (get!8227 lt!849955)))))))

(declare-fun bm!136643 () Bool)

(declare-fun call!136648 () Option!5355)

(assert (=> bm!136643 (= call!136648 (maxPrefixOneRule!1396 thiss!16613 (h!32679 rules!1750) input!1722))))

(declare-fun b!2290983 () Bool)

(assert (=> b!2290983 (= e!1467996 (contains!4741 rules!1750 (rule!6699 (_1!16055 (get!8227 lt!849955)))))))

(declare-fun b!2290984 () Bool)

(declare-fun lt!849952 () Option!5355)

(declare-fun lt!849954 () Option!5355)

(assert (=> b!2290984 (= e!1467995 (ite (and ((_ is None!5354) lt!849952) ((_ is None!5354) lt!849954)) None!5354 (ite ((_ is None!5354) lt!849954) lt!849952 (ite ((_ is None!5354) lt!849952) lt!849954 (ite (>= (size!21470 (_1!16055 (v!30434 lt!849952))) (size!21470 (_1!16055 (v!30434 lt!849954)))) lt!849952 lt!849954)))))))

(assert (=> b!2290984 (= lt!849952 call!136648)))

(assert (=> b!2290984 (= lt!849954 (maxPrefix!2226 thiss!16613 (t!204568 rules!1750) input!1722))))

(declare-fun b!2290985 () Bool)

(declare-fun res!979723 () Bool)

(assert (=> b!2290985 (=> (not res!979723) (not e!1467996))))

(assert (=> b!2290985 (= res!979723 (= (++!6665 (list!10680 (charsOf!2753 (_1!16055 (get!8227 lt!849955)))) (_2!16055 (get!8227 lt!849955))) input!1722))))

(declare-fun b!2290986 () Bool)

(declare-fun res!979717 () Bool)

(assert (=> b!2290986 (=> (not res!979717) (not e!1467996))))

(assert (=> b!2290986 (= res!979717 (< (size!21471 (_2!16055 (get!8227 lt!849955))) (size!21471 input!1722)))))

(declare-fun b!2290987 () Bool)

(assert (=> b!2290987 (= e!1467995 call!136648)))

(declare-fun b!2290988 () Bool)

(declare-fun res!979719 () Bool)

(assert (=> b!2290988 (=> (not res!979719) (not e!1467996))))

(assert (=> b!2290988 (= res!979719 (= (value!138222 (_1!16055 (get!8227 lt!849955))) (apply!6637 (transformation!4365 (rule!6699 (_1!16055 (get!8227 lt!849955)))) (seqFromList!3069 (originalCharacters!5135 (_1!16055 (get!8227 lt!849955)))))))))

(declare-fun b!2290989 () Bool)

(assert (=> b!2290989 (= e!1467997 e!1467996)))

(declare-fun res!979720 () Bool)

(assert (=> b!2290989 (=> (not res!979720) (not e!1467996))))

(declare-fun isDefined!4232 (Option!5355) Bool)

(assert (=> b!2290989 (= res!979720 (isDefined!4232 lt!849955))))

(declare-fun b!2290990 () Bool)

(declare-fun res!979721 () Bool)

(assert (=> b!2290990 (=> (not res!979721) (not e!1467996))))

(assert (=> b!2290990 (= res!979721 (matchR!2970 (regex!4365 (rule!6699 (_1!16055 (get!8227 lt!849955)))) (list!10680 (charsOf!2753 (_1!16055 (get!8227 lt!849955))))))))

(assert (= (and d!677648 c!363250) b!2290987))

(assert (= (and d!677648 (not c!363250)) b!2290984))

(assert (= (or b!2290987 b!2290984) bm!136643))

(assert (= (and d!677648 (not res!979718)) b!2290989))

(assert (= (and b!2290989 res!979720) b!2290982))

(assert (= (and b!2290982 res!979722) b!2290986))

(assert (= (and b!2290986 res!979717) b!2290985))

(assert (= (and b!2290985 res!979723) b!2290988))

(assert (= (and b!2290988 res!979719) b!2290990))

(assert (= (and b!2290990 res!979721) b!2290983))

(declare-fun m!2718647 () Bool)

(assert (=> bm!136643 m!2718647))

(declare-fun m!2718649 () Bool)

(assert (=> b!2290990 m!2718649))

(declare-fun m!2718651 () Bool)

(assert (=> b!2290990 m!2718651))

(assert (=> b!2290990 m!2718651))

(declare-fun m!2718653 () Bool)

(assert (=> b!2290990 m!2718653))

(assert (=> b!2290990 m!2718653))

(declare-fun m!2718655 () Bool)

(assert (=> b!2290990 m!2718655))

(assert (=> b!2290988 m!2718649))

(declare-fun m!2718657 () Bool)

(assert (=> b!2290988 m!2718657))

(assert (=> b!2290988 m!2718657))

(declare-fun m!2718659 () Bool)

(assert (=> b!2290988 m!2718659))

(assert (=> b!2290986 m!2718649))

(declare-fun m!2718661 () Bool)

(assert (=> b!2290986 m!2718661))

(assert (=> b!2290986 m!2718323))

(assert (=> b!2290983 m!2718649))

(declare-fun m!2718663 () Bool)

(assert (=> b!2290983 m!2718663))

(assert (=> b!2290982 m!2718649))

(assert (=> b!2290982 m!2718651))

(assert (=> b!2290982 m!2718651))

(assert (=> b!2290982 m!2718653))

(assert (=> b!2290985 m!2718649))

(assert (=> b!2290985 m!2718651))

(assert (=> b!2290985 m!2718651))

(assert (=> b!2290985 m!2718653))

(assert (=> b!2290985 m!2718653))

(declare-fun m!2718665 () Bool)

(assert (=> b!2290985 m!2718665))

(declare-fun m!2718667 () Bool)

(assert (=> d!677648 m!2718667))

(assert (=> d!677648 m!2718115))

(assert (=> d!677648 m!2718117))

(declare-fun m!2718669 () Bool)

(assert (=> d!677648 m!2718669))

(declare-fun m!2718671 () Bool)

(assert (=> b!2290984 m!2718671))

(declare-fun m!2718673 () Bool)

(assert (=> b!2290989 m!2718673))

(assert (=> b!2290445 d!677648))

(declare-fun d!677650 () Bool)

(declare-fun lt!849958 () Int)

(assert (=> d!677650 (= lt!849958 (size!21471 (list!10680 (charsOf!2753 (head!4992 tokens!456)))))))

(declare-fun size!21476 (Conc!8878) Int)

(assert (=> d!677650 (= lt!849958 (size!21476 (c!363162 (charsOf!2753 (head!4992 tokens!456)))))))

(assert (=> d!677650 (= (size!21472 (charsOf!2753 (head!4992 tokens!456))) lt!849958)))

(declare-fun bs!457039 () Bool)

(assert (= bs!457039 d!677650))

(assert (=> bs!457039 m!2718081))

(assert (=> bs!457039 m!2718083))

(assert (=> bs!457039 m!2718083))

(declare-fun m!2718675 () Bool)

(assert (=> bs!457039 m!2718675))

(declare-fun m!2718677 () Bool)

(assert (=> bs!457039 m!2718677))

(assert (=> b!2290447 d!677650))

(assert (=> b!2290447 d!677552))

(assert (=> b!2290447 d!677506))

(assert (=> b!2290447 d!677554))

(declare-fun b!2291001 () Bool)

(declare-fun e!1468005 () Bool)

(declare-fun inv!17 (TokenValue!4527) Bool)

(assert (=> b!2291001 (= e!1468005 (inv!17 (value!138222 (h!32678 tokens!456))))))

(declare-fun d!677652 () Bool)

(declare-fun c!363255 () Bool)

(assert (=> d!677652 (= c!363255 ((_ is IntegerValue!13581) (value!138222 (h!32678 tokens!456))))))

(declare-fun e!1468004 () Bool)

(assert (=> d!677652 (= (inv!21 (value!138222 (h!32678 tokens!456))) e!1468004)))

(declare-fun b!2291002 () Bool)

(assert (=> b!2291002 (= e!1468004 e!1468005)))

(declare-fun c!363256 () Bool)

(assert (=> b!2291002 (= c!363256 ((_ is IntegerValue!13582) (value!138222 (h!32678 tokens!456))))))

(declare-fun b!2291003 () Bool)

(declare-fun inv!16 (TokenValue!4527) Bool)

(assert (=> b!2291003 (= e!1468004 (inv!16 (value!138222 (h!32678 tokens!456))))))

(declare-fun b!2291004 () Bool)

(declare-fun res!979726 () Bool)

(declare-fun e!1468006 () Bool)

(assert (=> b!2291004 (=> res!979726 e!1468006)))

(assert (=> b!2291004 (= res!979726 (not ((_ is IntegerValue!13583) (value!138222 (h!32678 tokens!456)))))))

(assert (=> b!2291004 (= e!1468005 e!1468006)))

(declare-fun b!2291005 () Bool)

(declare-fun inv!15 (TokenValue!4527) Bool)

(assert (=> b!2291005 (= e!1468006 (inv!15 (value!138222 (h!32678 tokens!456))))))

(assert (= (and d!677652 c!363255) b!2291003))

(assert (= (and d!677652 (not c!363255)) b!2291002))

(assert (= (and b!2291002 c!363256) b!2291001))

(assert (= (and b!2291002 (not c!363256)) b!2291004))

(assert (= (and b!2291004 (not res!979726)) b!2291005))

(declare-fun m!2718679 () Bool)

(assert (=> b!2291001 m!2718679))

(declare-fun m!2718681 () Bool)

(assert (=> b!2291003 m!2718681))

(declare-fun m!2718683 () Bool)

(assert (=> b!2291005 m!2718683))

(assert (=> b!2290427 d!677652))

(declare-fun d!677654 () Bool)

(declare-fun res!979731 () Bool)

(declare-fun e!1468009 () Bool)

(assert (=> d!677654 (=> (not res!979731) (not e!1468009))))

(assert (=> d!677654 (= res!979731 (not (isEmpty!15534 (originalCharacters!5135 (h!32678 tokens!456)))))))

(assert (=> d!677654 (= (inv!36875 (h!32678 tokens!456)) e!1468009)))

(declare-fun b!2291010 () Bool)

(declare-fun res!979732 () Bool)

(assert (=> b!2291010 (=> (not res!979732) (not e!1468009))))

(assert (=> b!2291010 (= res!979732 (= (originalCharacters!5135 (h!32678 tokens!456)) (list!10680 (dynLambda!11838 (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (value!138222 (h!32678 tokens!456))))))))

(declare-fun b!2291011 () Bool)

(assert (=> b!2291011 (= e!1468009 (= (size!21470 (h!32678 tokens!456)) (size!21471 (originalCharacters!5135 (h!32678 tokens!456)))))))

(assert (= (and d!677654 res!979731) b!2291010))

(assert (= (and b!2291010 res!979732) b!2291011))

(declare-fun b_lambda!72977 () Bool)

(assert (=> (not b_lambda!72977) (not b!2291010)))

(assert (=> b!2291010 t!204602))

(declare-fun b_and!181841 () Bool)

(assert (= b_and!181825 (and (=> t!204602 result!166422) b_and!181841)))

(assert (=> b!2291010 t!204604))

(declare-fun b_and!181843 () Bool)

(assert (= b_and!181827 (and (=> t!204604 result!166424) b_and!181843)))

(assert (=> b!2291010 t!204606))

(declare-fun b_and!181845 () Bool)

(assert (= b_and!181829 (and (=> t!204606 result!166426) b_and!181845)))

(assert (=> b!2291010 t!204608))

(declare-fun b_and!181847 () Bool)

(assert (= b_and!181831 (and (=> t!204608 result!166428) b_and!181847)))

(declare-fun m!2718685 () Bool)

(assert (=> d!677654 m!2718685))

(assert (=> b!2291010 m!2718447))

(assert (=> b!2291010 m!2718447))

(declare-fun m!2718687 () Bool)

(assert (=> b!2291010 m!2718687))

(declare-fun m!2718689 () Bool)

(assert (=> b!2291011 m!2718689))

(assert (=> b!2290448 d!677654))

(declare-fun b!2291024 () Bool)

(declare-fun e!1468012 () Bool)

(declare-fun tp!726343 () Bool)

(assert (=> b!2291024 (= e!1468012 tp!726343)))

(declare-fun b!2291023 () Bool)

(declare-fun tp!726345 () Bool)

(declare-fun tp!726342 () Bool)

(assert (=> b!2291023 (= e!1468012 (and tp!726345 tp!726342))))

(assert (=> b!2290450 (= tp!726241 e!1468012)))

(declare-fun b!2291022 () Bool)

(assert (=> b!2291022 (= e!1468012 tp_is_empty!10647)))

(declare-fun b!2291025 () Bool)

(declare-fun tp!726341 () Bool)

(declare-fun tp!726344 () Bool)

(assert (=> b!2291025 (= e!1468012 (and tp!726341 tp!726344))))

(assert (= (and b!2290450 ((_ is ElementMatch!6713) (regex!4365 otherR!12))) b!2291022))

(assert (= (and b!2290450 ((_ is Concat!11241) (regex!4365 otherR!12))) b!2291023))

(assert (= (and b!2290450 ((_ is Star!6713) (regex!4365 otherR!12))) b!2291024))

(assert (= (and b!2290450 ((_ is Union!6713) (regex!4365 otherR!12))) b!2291025))

(declare-fun b!2291028 () Bool)

(declare-fun e!1468013 () Bool)

(declare-fun tp!726348 () Bool)

(assert (=> b!2291028 (= e!1468013 tp!726348)))

(declare-fun b!2291027 () Bool)

(declare-fun tp!726350 () Bool)

(declare-fun tp!726347 () Bool)

(assert (=> b!2291027 (= e!1468013 (and tp!726350 tp!726347))))

(assert (=> b!2290449 (= tp!726240 e!1468013)))

(declare-fun b!2291026 () Bool)

(assert (=> b!2291026 (= e!1468013 tp_is_empty!10647)))

(declare-fun b!2291029 () Bool)

(declare-fun tp!726346 () Bool)

(declare-fun tp!726349 () Bool)

(assert (=> b!2291029 (= e!1468013 (and tp!726346 tp!726349))))

(assert (= (and b!2290449 ((_ is ElementMatch!6713) (regex!4365 (rule!6699 (h!32678 tokens!456))))) b!2291026))

(assert (= (and b!2290449 ((_ is Concat!11241) (regex!4365 (rule!6699 (h!32678 tokens!456))))) b!2291027))

(assert (= (and b!2290449 ((_ is Star!6713) (regex!4365 (rule!6699 (h!32678 tokens!456))))) b!2291028))

(assert (= (and b!2290449 ((_ is Union!6713) (regex!4365 (rule!6699 (h!32678 tokens!456))))) b!2291029))

(declare-fun b!2291034 () Bool)

(declare-fun e!1468016 () Bool)

(declare-fun tp!726353 () Bool)

(assert (=> b!2291034 (= e!1468016 (and tp_is_empty!10647 tp!726353))))

(assert (=> b!2290429 (= tp!726250 e!1468016)))

(assert (= (and b!2290429 ((_ is Cons!27276) (t!204566 suffix!886))) b!2291034))

(declare-fun b!2291035 () Bool)

(declare-fun e!1468017 () Bool)

(declare-fun tp!726354 () Bool)

(assert (=> b!2291035 (= e!1468017 (and tp_is_empty!10647 tp!726354))))

(assert (=> b!2290442 (= tp!726248 e!1468017)))

(assert (= (and b!2290442 ((_ is Cons!27276) (t!204566 input!1722))) b!2291035))

(declare-fun b!2291046 () Bool)

(declare-fun b_free!68853 () Bool)

(declare-fun b_next!69557 () Bool)

(assert (=> b!2291046 (= b_free!68853 (not b_next!69557))))

(declare-fun t!204650 () Bool)

(declare-fun tb!136527 () Bool)

(assert (=> (and b!2291046 (= (toValue!6155 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toValue!6155 (transformation!4365 r!2363))) t!204650) tb!136527))

(declare-fun result!166484 () Bool)

(assert (= result!166484 result!166402))

(assert (=> d!677532 t!204650))

(assert (=> d!677598 t!204650))

(declare-fun tp!726364 () Bool)

(declare-fun b_and!181849 () Bool)

(assert (=> b!2291046 (= tp!726364 (and (=> t!204650 result!166484) b_and!181849))))

(declare-fun b_free!68855 () Bool)

(declare-fun b_next!69559 () Bool)

(assert (=> b!2291046 (= b_free!68855 (not b_next!69559))))

(declare-fun t!204652 () Bool)

(declare-fun tb!136529 () Bool)

(assert (=> (and b!2291046 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204652) tb!136529))

(declare-fun result!166486 () Bool)

(assert (= result!166486 result!166412))

(assert (=> d!677552 t!204652))

(declare-fun tb!136531 () Bool)

(declare-fun t!204654 () Bool)

(assert (=> (and b!2291046 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204654) tb!136531))

(declare-fun result!166488 () Bool)

(assert (= result!166488 result!166422))

(assert (=> d!677560 t!204654))

(declare-fun t!204656 () Bool)

(declare-fun tb!136533 () Bool)

(assert (=> (and b!2291046 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 r!2363))) t!204656) tb!136533))

(declare-fun result!166490 () Bool)

(assert (= result!166490 result!166470))

(assert (=> d!677598 t!204656))

(assert (=> b!2291010 t!204654))

(declare-fun tp!726365 () Bool)

(declare-fun b_and!181851 () Bool)

(assert (=> b!2291046 (= tp!726365 (and (=> t!204652 result!166486) (=> t!204654 result!166488) (=> t!204656 result!166490) b_and!181851))))

(declare-fun e!1468027 () Bool)

(assert (=> b!2291046 (= e!1468027 (and tp!726364 tp!726365))))

(declare-fun b!2291045 () Bool)

(declare-fun e!1468026 () Bool)

(declare-fun tp!726363 () Bool)

(assert (=> b!2291045 (= e!1468026 (and tp!726363 (inv!36871 (tag!4855 (h!32679 (t!204568 rules!1750)))) (inv!36874 (transformation!4365 (h!32679 (t!204568 rules!1750)))) e!1468027))))

(declare-fun b!2291044 () Bool)

(declare-fun e!1468029 () Bool)

(declare-fun tp!726366 () Bool)

(assert (=> b!2291044 (= e!1468029 (and e!1468026 tp!726366))))

(assert (=> b!2290434 (= tp!726254 e!1468029)))

(assert (= b!2291045 b!2291046))

(assert (= b!2291044 b!2291045))

(assert (= (and b!2290434 ((_ is Cons!27278) (t!204568 rules!1750))) b!2291044))

(declare-fun m!2718691 () Bool)

(assert (=> b!2291045 m!2718691))

(declare-fun m!2718693 () Bool)

(assert (=> b!2291045 m!2718693))

(declare-fun b!2291049 () Bool)

(declare-fun e!1468030 () Bool)

(declare-fun tp!726369 () Bool)

(assert (=> b!2291049 (= e!1468030 tp!726369)))

(declare-fun b!2291048 () Bool)

(declare-fun tp!726371 () Bool)

(declare-fun tp!726368 () Bool)

(assert (=> b!2291048 (= e!1468030 (and tp!726371 tp!726368))))

(assert (=> b!2290446 (= tp!726243 e!1468030)))

(declare-fun b!2291047 () Bool)

(assert (=> b!2291047 (= e!1468030 tp_is_empty!10647)))

(declare-fun b!2291050 () Bool)

(declare-fun tp!726367 () Bool)

(declare-fun tp!726370 () Bool)

(assert (=> b!2291050 (= e!1468030 (and tp!726367 tp!726370))))

(assert (= (and b!2290446 ((_ is ElementMatch!6713) (regex!4365 (h!32679 rules!1750)))) b!2291047))

(assert (= (and b!2290446 ((_ is Concat!11241) (regex!4365 (h!32679 rules!1750)))) b!2291048))

(assert (= (and b!2290446 ((_ is Star!6713) (regex!4365 (h!32679 rules!1750)))) b!2291049))

(assert (= (and b!2290446 ((_ is Union!6713) (regex!4365 (h!32679 rules!1750)))) b!2291050))

(declare-fun b!2291053 () Bool)

(declare-fun e!1468031 () Bool)

(declare-fun tp!726374 () Bool)

(assert (=> b!2291053 (= e!1468031 tp!726374)))

(declare-fun b!2291052 () Bool)

(declare-fun tp!726376 () Bool)

(declare-fun tp!726373 () Bool)

(assert (=> b!2291052 (= e!1468031 (and tp!726376 tp!726373))))

(assert (=> b!2290438 (= tp!726244 e!1468031)))

(declare-fun b!2291051 () Bool)

(assert (=> b!2291051 (= e!1468031 tp_is_empty!10647)))

(declare-fun b!2291054 () Bool)

(declare-fun tp!726372 () Bool)

(declare-fun tp!726375 () Bool)

(assert (=> b!2291054 (= e!1468031 (and tp!726372 tp!726375))))

(assert (= (and b!2290438 ((_ is ElementMatch!6713) (regex!4365 r!2363))) b!2291051))

(assert (= (and b!2290438 ((_ is Concat!11241) (regex!4365 r!2363))) b!2291052))

(assert (= (and b!2290438 ((_ is Star!6713) (regex!4365 r!2363))) b!2291053))

(assert (= (and b!2290438 ((_ is Union!6713) (regex!4365 r!2363))) b!2291054))

(declare-fun b!2291055 () Bool)

(declare-fun e!1468032 () Bool)

(declare-fun tp!726377 () Bool)

(assert (=> b!2291055 (= e!1468032 (and tp_is_empty!10647 tp!726377))))

(assert (=> b!2290427 (= tp!726252 e!1468032)))

(assert (= (and b!2290427 ((_ is Cons!27276) (originalCharacters!5135 (h!32678 tokens!456)))) b!2291055))

(declare-fun b!2291069 () Bool)

(declare-fun b_free!68857 () Bool)

(declare-fun b_next!69561 () Bool)

(assert (=> b!2291069 (= b_free!68857 (not b_next!69561))))

(declare-fun tb!136535 () Bool)

(declare-fun t!204658 () Bool)

(assert (=> (and b!2291069 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toValue!6155 (transformation!4365 r!2363))) t!204658) tb!136535))

(declare-fun result!166494 () Bool)

(assert (= result!166494 result!166402))

(assert (=> d!677532 t!204658))

(assert (=> d!677598 t!204658))

(declare-fun tp!726392 () Bool)

(declare-fun b_and!181853 () Bool)

(assert (=> b!2291069 (= tp!726392 (and (=> t!204658 result!166494) b_and!181853))))

(declare-fun b_free!68859 () Bool)

(declare-fun b_next!69563 () Bool)

(assert (=> b!2291069 (= b_free!68859 (not b_next!69563))))

(declare-fun t!204660 () Bool)

(declare-fun tb!136537 () Bool)

(assert (=> (and b!2291069 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 (rule!6699 (head!4992 tokens!456))))) t!204660) tb!136537))

(declare-fun result!166496 () Bool)

(assert (= result!166496 result!166412))

(assert (=> d!677552 t!204660))

(declare-fun t!204662 () Bool)

(declare-fun tb!136539 () Bool)

(assert (=> (and b!2291069 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456))))) t!204662) tb!136539))

(declare-fun result!166498 () Bool)

(assert (= result!166498 result!166422))

(assert (=> d!677560 t!204662))

(declare-fun t!204664 () Bool)

(declare-fun tb!136541 () Bool)

(assert (=> (and b!2291069 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 r!2363))) t!204664) tb!136541))

(declare-fun result!166500 () Bool)

(assert (= result!166500 result!166470))

(assert (=> d!677598 t!204664))

(assert (=> b!2291010 t!204662))

(declare-fun b_and!181855 () Bool)

(declare-fun tp!726389 () Bool)

(assert (=> b!2291069 (= tp!726389 (and (=> t!204660 result!166496) (=> t!204662 result!166498) (=> t!204664 result!166500) b_and!181855))))

(declare-fun e!1468048 () Bool)

(assert (=> b!2291069 (= e!1468048 (and tp!726392 tp!726389))))

(declare-fun b!2291068 () Bool)

(declare-fun e!1468049 () Bool)

(declare-fun tp!726391 () Bool)

(assert (=> b!2291068 (= e!1468049 (and tp!726391 (inv!36871 (tag!4855 (rule!6699 (h!32678 (t!204567 tokens!456))))) (inv!36874 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) e!1468048))))

(declare-fun e!1468046 () Bool)

(declare-fun b!2291067 () Bool)

(declare-fun tp!726388 () Bool)

(assert (=> b!2291067 (= e!1468046 (and (inv!21 (value!138222 (h!32678 (t!204567 tokens!456)))) e!1468049 tp!726388))))

(declare-fun e!1468045 () Bool)

(declare-fun b!2291066 () Bool)

(declare-fun tp!726390 () Bool)

(assert (=> b!2291066 (= e!1468045 (and (inv!36875 (h!32678 (t!204567 tokens!456))) e!1468046 tp!726390))))

(assert (=> b!2290448 (= tp!726255 e!1468045)))

(assert (= b!2291068 b!2291069))

(assert (= b!2291067 b!2291068))

(assert (= b!2291066 b!2291067))

(assert (= (and b!2290448 ((_ is Cons!27277) (t!204567 tokens!456))) b!2291066))

(declare-fun m!2718695 () Bool)

(assert (=> b!2291068 m!2718695))

(declare-fun m!2718697 () Bool)

(assert (=> b!2291068 m!2718697))

(declare-fun m!2718699 () Bool)

(assert (=> b!2291067 m!2718699))

(declare-fun m!2718701 () Bool)

(assert (=> b!2291066 m!2718701))

(declare-fun b!2291070 () Bool)

(declare-fun e!1468051 () Bool)

(declare-fun tp!726393 () Bool)

(assert (=> b!2291070 (= e!1468051 (and tp_is_empty!10647 tp!726393))))

(assert (=> b!2290437 (= tp!726247 e!1468051)))

(assert (= (and b!2290437 ((_ is Cons!27276) (t!204566 otherP!12))) b!2291070))

(declare-fun b_lambda!72979 () Bool)

(assert (= b_lambda!72977 (or (and b!2290425 b_free!68835) (and b!2291046 b_free!68855 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290426 b_free!68831 (= (toChars!6014 (transformation!4365 r!2363)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290417 b_free!68843 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2291069 b_free!68859 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290440 b_free!68839 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) b_lambda!72979)))

(declare-fun b_lambda!72981 () Bool)

(assert (= b_lambda!72973 (or (and b!2291069 b_free!68859 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 r!2363)))) (and b!2290426 b_free!68831) (and b!2290417 b_free!68843 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 r!2363)))) (and b!2290440 b_free!68839 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 r!2363)))) (and b!2291046 b_free!68855 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 r!2363)))) (and b!2290425 b_free!68835 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toChars!6014 (transformation!4365 r!2363)))) b_lambda!72981)))

(declare-fun b_lambda!72983 () Bool)

(assert (= b_lambda!72975 (or (and b!2290440 b_free!68837 (= (toValue!6155 (transformation!4365 otherR!12)) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290417 b_free!68841 (= (toValue!6155 (transformation!4365 (h!32679 rules!1750))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2291069 b_free!68857 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290426 b_free!68829) (and b!2291046 b_free!68853 (= (toValue!6155 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290425 b_free!68833 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toValue!6155 (transformation!4365 r!2363)))) b_lambda!72983)))

(declare-fun b_lambda!72985 () Bool)

(assert (= b_lambda!72949 (or (and b!2290440 b_free!68837 (= (toValue!6155 (transformation!4365 otherR!12)) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290417 b_free!68841 (= (toValue!6155 (transformation!4365 (h!32679 rules!1750))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2291069 b_free!68857 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290426 b_free!68829) (and b!2291046 b_free!68853 (= (toValue!6155 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toValue!6155 (transformation!4365 r!2363)))) (and b!2290425 b_free!68833 (= (toValue!6155 (transformation!4365 (rule!6699 (h!32678 tokens!456)))) (toValue!6155 (transformation!4365 r!2363)))) b_lambda!72985)))

(declare-fun b_lambda!72987 () Bool)

(assert (= b_lambda!72953 (or (and b!2290425 b_free!68835) (and b!2291046 b_free!68855 (= (toChars!6014 (transformation!4365 (h!32679 (t!204568 rules!1750)))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290426 b_free!68831 (= (toChars!6014 (transformation!4365 r!2363)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290417 b_free!68843 (= (toChars!6014 (transformation!4365 (h!32679 rules!1750))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2291069 b_free!68859 (= (toChars!6014 (transformation!4365 (rule!6699 (h!32678 (t!204567 tokens!456))))) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) (and b!2290440 b_free!68839 (= (toChars!6014 (transformation!4365 otherR!12)) (toChars!6014 (transformation!4365 (rule!6699 (h!32678 tokens!456)))))) b_lambda!72987)))

(check-sat (not b_next!69535) (not b!2291068) (not b!2291066) (not b!2290784) (not b!2290767) (not d!677648) (not d!677562) (not b!2291049) (not d!677498) b_and!181855 (not b_next!69559) (not d!677576) (not d!677588) (not b!2290799) (not b!2290745) (not bm!136639) b_and!181847 (not d!677556) (not b!2290662) (not b!2290594) (not b!2290756) (not b!2291005) (not b!2291054) (not d!677598) (not b!2290701) (not d!677574) (not d!677586) (not b!2291011) (not b!2291025) b_and!181845 (not b!2290680) b_and!181837 (not b!2290812) (not b!2290819) (not d!677528) (not b!2290782) (not b!2290788) (not b_next!69547) (not b!2290676) (not b!2290779) (not b!2291067) (not b_next!69537) (not b!2290988) (not b!2290703) (not d!677534) (not d!677578) (not b_next!69539) (not b_next!69561) (not b!2290800) (not b_next!69533) (not b!2290778) (not b!2290787) tp_is_empty!10647 (not b!2290985) (not tb!136479) (not b!2290792) (not b!2290691) b_and!181849 (not b!2290659) (not b!2290821) (not b!2290537) (not d!677536) b_and!181835 (not d!677484) (not b!2290813) (not b!2290817) (not b!2291023) (not b!2290737) (not b_lambda!72985) (not d!677650) (not tb!136463) (not d!677542) b_and!181851 (not d!677564) (not d!677470) (not b!2290675) (not b!2291045) (not b!2291028) (not b!2290983) (not b!2290573) (not b_lambda!72981) (not tb!136471) (not b_lambda!72951) b_and!181853 (not d!677508) (not b!2291010) (not b!2290674) (not b_lambda!72987) (not b!2291001) (not d!677596) (not b_next!69557) (not b_next!69545) (not b!2290986) (not d!677558) (not b!2290766) (not b!2290750) (not d!677512) (not tb!136519) (not b!2290820) (not b!2290735) (not bm!136640) (not b!2291053) b_and!181843 (not b!2290989) (not b_next!69541) (not b!2290656) (not d!677552) (not d!677654) (not b_next!69543) (not d!677538) (not b!2290736) (not b_lambda!72983) (not b!2290777) (not d!677582) (not b!2291055) (not b!2291070) (not b!2291052) (not b!2290774) (not b!2291048) (not b!2290815) (not b!2290695) (not b!2290769) (not b_lambda!72979) (not b!2291003) (not b!2290740) (not b!2291035) (not b!2290990) (not d!677550) (not d!677482) (not b!2291044) (not b!2290658) (not b!2291050) (not b!2291034) (not b!2290657) (not d!677548) (not d!677584) (not b!2290732) (not b!2290982) (not d!677568) (not b!2290984) (not b!2291029) (not b!2291024) (not b!2290797) (not b!2290814) (not b_next!69563) b_and!181833 (not d!677546) (not d!677540) (not b!2290801) (not b!2290661) (not b!2290663) b_and!181841 (not b!2290534) (not d!677560) b_and!181839 (not bm!136643) (not b!2290789) (not b!2290963) (not b!2290660) (not b!2290781) (not b!2291027) (not d!677592))
(check-sat (not b_next!69535) b_and!181847 b_and!181845 b_and!181837 (not b_next!69547) (not b_next!69537) b_and!181849 b_and!181835 b_and!181851 b_and!181853 b_and!181843 (not b_next!69541) (not b_next!69543) b_and!181841 b_and!181839 b_and!181855 (not b_next!69559) (not b_next!69539) (not b_next!69561) (not b_next!69533) (not b_next!69557) (not b_next!69545) (not b_next!69563) b_and!181833)
