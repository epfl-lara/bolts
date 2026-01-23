; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218972 () Bool)

(assert start!218972)

(declare-fun b!2245626 () Bool)

(declare-fun b_free!65485 () Bool)

(declare-fun b_next!66189 () Bool)

(assert (=> b!2245626 (= b_free!65485 (not b_next!66189))))

(declare-fun tp!708905 () Bool)

(declare-fun b_and!175625 () Bool)

(assert (=> b!2245626 (= tp!708905 b_and!175625)))

(declare-fun b_free!65487 () Bool)

(declare-fun b_next!66191 () Bool)

(assert (=> b!2245626 (= b_free!65487 (not b_next!66191))))

(declare-fun tp!708900 () Bool)

(declare-fun b_and!175627 () Bool)

(assert (=> b!2245626 (= tp!708900 b_and!175627)))

(declare-fun b!2245634 () Bool)

(declare-fun b_free!65489 () Bool)

(declare-fun b_next!66193 () Bool)

(assert (=> b!2245634 (= b_free!65489 (not b_next!66193))))

(declare-fun tp!708901 () Bool)

(declare-fun b_and!175629 () Bool)

(assert (=> b!2245634 (= tp!708901 b_and!175629)))

(declare-fun b_free!65491 () Bool)

(declare-fun b_next!66195 () Bool)

(assert (=> b!2245634 (= b_free!65491 (not b_next!66195))))

(declare-fun tp!708891 () Bool)

(declare-fun b_and!175631 () Bool)

(assert (=> b!2245634 (= tp!708891 b_and!175631)))

(declare-fun b!2245632 () Bool)

(declare-fun b_free!65493 () Bool)

(declare-fun b_next!66197 () Bool)

(assert (=> b!2245632 (= b_free!65493 (not b_next!66197))))

(declare-fun tp!708893 () Bool)

(declare-fun b_and!175633 () Bool)

(assert (=> b!2245632 (= tp!708893 b_and!175633)))

(declare-fun b_free!65495 () Bool)

(declare-fun b_next!66199 () Bool)

(assert (=> b!2245632 (= b_free!65495 (not b_next!66199))))

(declare-fun tp!708904 () Bool)

(declare-fun b_and!175635 () Bool)

(assert (=> b!2245632 (= tp!708904 b_and!175635)))

(declare-fun b!2245631 () Bool)

(declare-fun b_free!65497 () Bool)

(declare-fun b_next!66201 () Bool)

(assert (=> b!2245631 (= b_free!65497 (not b_next!66201))))

(declare-fun tp!708896 () Bool)

(declare-fun b_and!175637 () Bool)

(assert (=> b!2245631 (= tp!708896 b_and!175637)))

(declare-fun b_free!65499 () Bool)

(declare-fun b_next!66203 () Bool)

(assert (=> b!2245631 (= b_free!65499 (not b_next!66203))))

(declare-fun tp!708890 () Bool)

(declare-fun b_and!175639 () Bool)

(assert (=> b!2245631 (= tp!708890 b_and!175639)))

(declare-fun b!2245611 () Bool)

(declare-fun e!1436643 () Bool)

(declare-fun e!1436657 () Bool)

(assert (=> b!2245611 (= e!1436643 e!1436657)))

(declare-fun res!959475 () Bool)

(assert (=> b!2245611 (=> (not res!959475) (not e!1436657))))

(declare-fun e!1436655 () Bool)

(assert (=> b!2245611 (= res!959475 e!1436655)))

(declare-fun res!959473 () Bool)

(assert (=> b!2245611 (=> res!959473 e!1436655)))

(declare-fun lt!835302 () Bool)

(assert (=> b!2245611 (= res!959473 lt!835302)))

(declare-datatypes ((List!26661 0))(
  ( (Nil!26567) (Cons!26567 (h!31968 (_ BitVec 16)) (t!200359 List!26661)) )
))
(declare-datatypes ((TokenValue!4367 0))(
  ( (FloatLiteralValue!8734 (text!31014 List!26661)) (TokenValueExt!4366 (__x!17794 Int)) (Broken!21835 (value!133636 List!26661)) (Object!4460) (End!4367) (Def!4367) (Underscore!4367) (Match!4367) (Else!4367) (Error!4367) (Case!4367) (If!4367) (Extends!4367) (Abstract!4367) (Class!4367) (Val!4367) (DelimiterValue!8734 (del!4427 List!26661)) (KeywordValue!4373 (value!133637 List!26661)) (CommentValue!8734 (value!133638 List!26661)) (WhitespaceValue!8734 (value!133639 List!26661)) (IndentationValue!4367 (value!133640 List!26661)) (String!28938) (Int32!4367) (Broken!21836 (value!133641 List!26661)) (Boolean!4368) (Unit!39531) (OperatorValue!4370 (op!4427 List!26661)) (IdentifierValue!8734 (value!133642 List!26661)) (IdentifierValue!8735 (value!133643 List!26661)) (WhitespaceValue!8735 (value!133644 List!26661)) (True!8734) (False!8734) (Broken!21837 (value!133645 List!26661)) (Broken!21838 (value!133646 List!26661)) (True!8735) (RightBrace!4367) (RightBracket!4367) (Colon!4367) (Null!4367) (Comma!4367) (LeftBracket!4367) (False!8735) (LeftBrace!4367) (ImaginaryLiteralValue!4367 (text!31015 List!26661)) (StringLiteralValue!13101 (value!133647 List!26661)) (EOFValue!4367 (value!133648 List!26661)) (IdentValue!4367 (value!133649 List!26661)) (DelimiterValue!8735 (value!133650 List!26661)) (DedentValue!4367 (value!133651 List!26661)) (NewLineValue!4367 (value!133652 List!26661)) (IntegerValue!13101 (value!133653 (_ BitVec 32)) (text!31016 List!26661)) (IntegerValue!13102 (value!133654 Int) (text!31017 List!26661)) (Times!4367) (Or!4367) (Equal!4367) (Minus!4367) (Broken!21839 (value!133655 List!26661)) (And!4367) (Div!4367) (LessEqual!4367) (Mod!4367) (Concat!10920) (Not!4367) (Plus!4367) (SpaceValue!4367 (value!133656 List!26661)) (IntegerValue!13103 (value!133657 Int) (text!31018 List!26661)) (StringLiteralValue!13102 (text!31019 List!26661)) (FloatLiteralValue!8735 (text!31020 List!26661)) (BytesLiteralValue!4367 (value!133658 List!26661)) (CommentValue!8735 (value!133659 List!26661)) (StringLiteralValue!13103 (value!133660 List!26661)) (ErrorTokenValue!4367 (msg!4428 List!26661)) )
))
(declare-datatypes ((C!13252 0))(
  ( (C!13253 (val!7674 Int)) )
))
(declare-datatypes ((List!26662 0))(
  ( (Nil!26568) (Cons!26568 (h!31969 C!13252) (t!200360 List!26662)) )
))
(declare-datatypes ((IArray!17121 0))(
  ( (IArray!17122 (innerList!8618 List!26662)) )
))
(declare-datatypes ((Conc!8558 0))(
  ( (Node!8558 (left!20193 Conc!8558) (right!20523 Conc!8558) (csize!17346 Int) (cheight!8769 Int)) (Leaf!12646 (xs!11500 IArray!17121) (csize!17347 Int)) (Empty!8558) )
))
(declare-datatypes ((BalanceConc!16844 0))(
  ( (BalanceConc!16845 (c!357326 Conc!8558)) )
))
(declare-datatypes ((String!28939 0))(
  ( (String!28940 (value!133661 String)) )
))
(declare-datatypes ((Regex!6553 0))(
  ( (ElementMatch!6553 (c!357327 C!13252)) (Concat!10921 (regOne!13618 Regex!6553) (regTwo!13618 Regex!6553)) (EmptyExpr!6553) (Star!6553 (reg!6882 Regex!6553)) (EmptyLang!6553) (Union!6553 (regOne!13619 Regex!6553) (regTwo!13619 Regex!6553)) )
))
(declare-datatypes ((TokenValueInjection!8274 0))(
  ( (TokenValueInjection!8275 (toValue!5935 Int) (toChars!5794 Int)) )
))
(declare-datatypes ((Rule!8210 0))(
  ( (Rule!8211 (regex!4205 Regex!6553) (tag!4695 String!28939) (isSeparator!4205 Bool) (transformation!4205 TokenValueInjection!8274)) )
))
(declare-datatypes ((Token!7888 0))(
  ( (Token!7889 (value!133662 TokenValue!4367) (rule!6503 Rule!8210) (size!20773 Int) (originalCharacters!4975 List!26662)) )
))
(declare-datatypes ((List!26663 0))(
  ( (Nil!26569) (Cons!26569 (h!31970 Token!7888) (t!200361 List!26663)) )
))
(declare-fun tokens!456 () List!26663)

(declare-fun isEmpty!14959 (List!26663) Bool)

(assert (=> b!2245611 (= lt!835302 (isEmpty!14959 tokens!456))))

(declare-fun b!2245612 () Bool)

(declare-fun e!1436656 () Bool)

(assert (=> b!2245612 (= e!1436656 e!1436643)))

(declare-fun res!959477 () Bool)

(assert (=> b!2245612 (=> (not res!959477) (not e!1436643))))

(declare-datatypes ((IArray!17123 0))(
  ( (IArray!17124 (innerList!8619 List!26663)) )
))
(declare-datatypes ((Conc!8559 0))(
  ( (Node!8559 (left!20194 Conc!8559) (right!20524 Conc!8559) (csize!17348 Int) (cheight!8770 Int)) (Leaf!12647 (xs!11501 IArray!17123) (csize!17349 Int)) (Empty!8559) )
))
(declare-datatypes ((BalanceConc!16846 0))(
  ( (BalanceConc!16847 (c!357328 Conc!8559)) )
))
(declare-datatypes ((tuple2!26026 0))(
  ( (tuple2!26027 (_1!15523 BalanceConc!16846) (_2!15523 BalanceConc!16844)) )
))
(declare-fun lt!835304 () tuple2!26026)

(declare-fun suffix!886 () List!26662)

(declare-datatypes ((tuple2!26028 0))(
  ( (tuple2!26029 (_1!15524 List!26663) (_2!15524 List!26662)) )
))
(declare-fun list!10166 (BalanceConc!16846) List!26663)

(declare-fun list!10167 (BalanceConc!16844) List!26662)

(assert (=> b!2245612 (= res!959477 (= (tuple2!26029 (list!10166 (_1!15523 lt!835304)) (list!10167 (_2!15523 lt!835304))) (tuple2!26029 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3802 0))(
  ( (LexerInterfaceExt!3799 (__x!17795 Int)) (Lexer!3800) )
))
(declare-fun thiss!16613 () LexerInterface!3802)

(declare-fun input!1722 () List!26662)

(declare-datatypes ((List!26664 0))(
  ( (Nil!26570) (Cons!26570 (h!31971 Rule!8210) (t!200362 List!26664)) )
))
(declare-fun rules!1750 () List!26664)

(declare-fun lex!1641 (LexerInterface!3802 List!26664 BalanceConc!16844) tuple2!26026)

(declare-fun seqFromList!2909 (List!26662) BalanceConc!16844)

(assert (=> b!2245612 (= lt!835304 (lex!1641 thiss!16613 rules!1750 (seqFromList!2909 input!1722)))))

(declare-fun b!2245613 () Bool)

(declare-fun res!959487 () Bool)

(assert (=> b!2245613 (=> (not res!959487) (not e!1436657))))

(declare-fun e!1436654 () Bool)

(assert (=> b!2245613 (= res!959487 e!1436654)))

(declare-fun res!959479 () Bool)

(assert (=> b!2245613 (=> res!959479 e!1436654)))

(assert (=> b!2245613 (= res!959479 lt!835302)))

(declare-fun tp!708895 () Bool)

(declare-fun e!1436669 () Bool)

(declare-fun e!1436661 () Bool)

(declare-fun b!2245614 () Bool)

(declare-fun inv!36093 (String!28939) Bool)

(declare-fun inv!36096 (TokenValueInjection!8274) Bool)

(assert (=> b!2245614 (= e!1436669 (and tp!708895 (inv!36093 (tag!4695 (h!31971 rules!1750))) (inv!36096 (transformation!4205 (h!31971 rules!1750))) e!1436661))))

(declare-fun b!2245615 () Bool)

(declare-fun e!1436650 () Bool)

(declare-fun tp_is_empty!10327 () Bool)

(declare-fun tp!708897 () Bool)

(assert (=> b!2245615 (= e!1436650 (and tp_is_empty!10327 tp!708897))))

(declare-fun b!2245616 () Bool)

(declare-fun res!959485 () Bool)

(declare-fun e!1436660 () Bool)

(assert (=> b!2245616 (=> res!959485 e!1436660)))

(declare-fun rulesValidInductive!1467 (LexerInterface!3802 List!26664) Bool)

(assert (=> b!2245616 (= res!959485 (not (rulesValidInductive!1467 thiss!16613 rules!1750)))))

(declare-fun b!2245617 () Bool)

(declare-fun e!1436645 () Bool)

(declare-fun tp!708903 () Bool)

(declare-fun e!1436664 () Bool)

(assert (=> b!2245617 (= e!1436645 (and tp!708903 (inv!36093 (tag!4695 (rule!6503 (h!31970 tokens!456)))) (inv!36096 (transformation!4205 (rule!6503 (h!31970 tokens!456)))) e!1436664))))

(declare-fun b!2245618 () Bool)

(declare-fun e!1436648 () Bool)

(declare-fun tp!708889 () Bool)

(assert (=> b!2245618 (= e!1436648 (and tp_is_empty!10327 tp!708889))))

(declare-fun b!2245619 () Bool)

(declare-fun res!959484 () Bool)

(assert (=> b!2245619 (=> (not res!959484) (not e!1436656))))

(declare-fun r!2363 () Rule!8210)

(declare-fun contains!4552 (List!26664 Rule!8210) Bool)

(assert (=> b!2245619 (= res!959484 (contains!4552 rules!1750 r!2363))))

(declare-fun b!2245620 () Bool)

(declare-fun res!959478 () Bool)

(assert (=> b!2245620 (=> (not res!959478) (not e!1436656))))

(declare-fun rulesInvariant!3304 (LexerInterface!3802 List!26664) Bool)

(assert (=> b!2245620 (= res!959478 (rulesInvariant!3304 thiss!16613 rules!1750))))

(declare-fun res!959472 () Bool)

(assert (=> start!218972 (=> (not res!959472) (not e!1436656))))

(get-info :version)

(assert (=> start!218972 (= res!959472 ((_ is Lexer!3800) thiss!16613))))

(assert (=> start!218972 e!1436656))

(assert (=> start!218972 true))

(assert (=> start!218972 e!1436650))

(declare-fun e!1436666 () Bool)

(assert (=> start!218972 e!1436666))

(assert (=> start!218972 e!1436648))

(declare-fun e!1436651 () Bool)

(assert (=> start!218972 e!1436651))

(declare-fun e!1436658 () Bool)

(assert (=> start!218972 e!1436658))

(declare-fun e!1436649 () Bool)

(assert (=> start!218972 e!1436649))

(declare-fun e!1436652 () Bool)

(assert (=> start!218972 e!1436652))

(declare-fun b!2245610 () Bool)

(assert (=> b!2245610 (= e!1436660 true)))

(declare-datatypes ((tuple2!26030 0))(
  ( (tuple2!26031 (_1!15525 Token!7888) (_2!15525 List!26662)) )
))
(declare-datatypes ((Option!5180 0))(
  ( (None!5179) (Some!5179 (v!30191 tuple2!26030)) )
))
(declare-fun lt!835301 () Option!5180)

(declare-fun maxPrefix!2104 (LexerInterface!3802 List!26664 List!26662) Option!5180)

(assert (=> b!2245610 (= lt!835301 (maxPrefix!2104 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2245621 () Bool)

(declare-fun tp!708902 () Bool)

(assert (=> b!2245621 (= e!1436651 (and tp_is_empty!10327 tp!708902))))

(declare-fun b!2245622 () Bool)

(declare-fun e!1436665 () Bool)

(declare-fun tp!708894 () Bool)

(declare-fun otherR!12 () Rule!8210)

(assert (=> b!2245622 (= e!1436666 (and tp!708894 (inv!36093 (tag!4695 otherR!12)) (inv!36096 (transformation!4205 otherR!12)) e!1436665))))

(declare-fun b!2245623 () Bool)

(declare-fun res!959474 () Bool)

(assert (=> b!2245623 (=> (not res!959474) (not e!1436656))))

(declare-fun isEmpty!14960 (List!26664) Bool)

(assert (=> b!2245623 (= res!959474 (not (isEmpty!14960 rules!1750)))))

(declare-fun b!2245624 () Bool)

(declare-fun tp!708899 () Bool)

(assert (=> b!2245624 (= e!1436658 (and e!1436669 tp!708899))))

(declare-fun b!2245625 () Bool)

(declare-fun e!1436667 () Bool)

(assert (=> b!2245625 (= e!1436657 (not e!1436667))))

(declare-fun res!959476 () Bool)

(assert (=> b!2245625 (=> res!959476 e!1436667)))

(declare-fun e!1436662 () Bool)

(assert (=> b!2245625 (= res!959476 e!1436662)))

(declare-fun res!959486 () Bool)

(assert (=> b!2245625 (=> (not res!959486) (not e!1436662))))

(assert (=> b!2245625 (= res!959486 (not lt!835302))))

(declare-fun ruleValid!1297 (LexerInterface!3802 Rule!8210) Bool)

(assert (=> b!2245625 (ruleValid!1297 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39532 0))(
  ( (Unit!39533) )
))
(declare-fun lt!835303 () Unit!39532)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!704 (LexerInterface!3802 Rule!8210 List!26664) Unit!39532)

(assert (=> b!2245625 (= lt!835303 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!704 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1436663 () Bool)

(assert (=> b!2245626 (= e!1436663 (and tp!708905 tp!708900))))

(declare-fun b!2245627 () Bool)

(assert (=> b!2245627 (= e!1436667 e!1436660)))

(declare-fun res!959480 () Bool)

(assert (=> b!2245627 (=> res!959480 e!1436660)))

(declare-fun getIndex!226 (List!26664 Rule!8210) Int)

(assert (=> b!2245627 (= res!959480 (<= (getIndex!226 rules!1750 r!2363) (getIndex!226 rules!1750 otherR!12)))))

(assert (=> b!2245627 (ruleValid!1297 thiss!16613 otherR!12)))

(declare-fun lt!835300 () Unit!39532)

(assert (=> b!2245627 (= lt!835300 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!704 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2245628 () Bool)

(declare-fun res!959483 () Bool)

(assert (=> b!2245628 (=> res!959483 e!1436660)))

(assert (=> b!2245628 (= res!959483 (not ((_ is Nil!26569) tokens!456)))))

(declare-fun e!1436646 () Bool)

(declare-fun tp!708892 () Bool)

(declare-fun b!2245629 () Bool)

(declare-fun inv!36097 (Token!7888) Bool)

(assert (=> b!2245629 (= e!1436652 (and (inv!36097 (h!31970 tokens!456)) e!1436646 tp!708892))))

(declare-fun b!2245630 () Bool)

(declare-fun head!4764 (List!26663) Token!7888)

(assert (=> b!2245630 (= e!1436654 (= (rule!6503 (head!4764 tokens!456)) r!2363))))

(assert (=> b!2245631 (= e!1436665 (and tp!708896 tp!708890))))

(assert (=> b!2245632 (= e!1436661 (and tp!708893 tp!708904))))

(declare-fun b!2245633 () Bool)

(declare-fun matchR!2814 (Regex!6553 List!26662) Bool)

(declare-fun charsOf!2593 (Token!7888) BalanceConc!16844)

(assert (=> b!2245633 (= e!1436662 (not (matchR!2814 (regex!4205 r!2363) (list!10167 (charsOf!2593 (head!4764 tokens!456))))))))

(assert (=> b!2245634 (= e!1436664 (and tp!708901 tp!708891))))

(declare-fun b!2245635 () Bool)

(declare-fun tp!708898 () Bool)

(declare-fun inv!21 (TokenValue!4367) Bool)

(assert (=> b!2245635 (= e!1436646 (and (inv!21 (value!133662 (h!31970 tokens!456))) e!1436645 tp!708898))))

(declare-fun b!2245636 () Bool)

(declare-fun otherP!12 () List!26662)

(declare-fun size!20774 (BalanceConc!16844) Int)

(declare-fun size!20775 (List!26662) Int)

(assert (=> b!2245636 (= e!1436655 (<= (size!20774 (charsOf!2593 (head!4764 tokens!456))) (size!20775 otherP!12)))))

(declare-fun b!2245637 () Bool)

(declare-fun res!959471 () Bool)

(assert (=> b!2245637 (=> (not res!959471) (not e!1436657))))

(assert (=> b!2245637 (= res!959471 (not (= r!2363 otherR!12)))))

(declare-fun b!2245638 () Bool)

(declare-fun tp!708888 () Bool)

(assert (=> b!2245638 (= e!1436649 (and tp!708888 (inv!36093 (tag!4695 r!2363)) (inv!36096 (transformation!4205 r!2363)) e!1436663))))

(declare-fun b!2245639 () Bool)

(declare-fun res!959482 () Bool)

(assert (=> b!2245639 (=> (not res!959482) (not e!1436656))))

(assert (=> b!2245639 (= res!959482 (contains!4552 rules!1750 otherR!12))))

(declare-fun b!2245640 () Bool)

(declare-fun res!959481 () Bool)

(assert (=> b!2245640 (=> (not res!959481) (not e!1436657))))

(declare-fun isPrefix!2195 (List!26662 List!26662) Bool)

(assert (=> b!2245640 (= res!959481 (isPrefix!2195 otherP!12 input!1722))))

(assert (= (and start!218972 res!959472) b!2245623))

(assert (= (and b!2245623 res!959474) b!2245620))

(assert (= (and b!2245620 res!959478) b!2245619))

(assert (= (and b!2245619 res!959484) b!2245639))

(assert (= (and b!2245639 res!959482) b!2245612))

(assert (= (and b!2245612 res!959477) b!2245611))

(assert (= (and b!2245611 (not res!959473)) b!2245636))

(assert (= (and b!2245611 res!959475) b!2245613))

(assert (= (and b!2245613 (not res!959479)) b!2245630))

(assert (= (and b!2245613 res!959487) b!2245640))

(assert (= (and b!2245640 res!959481) b!2245637))

(assert (= (and b!2245637 res!959471) b!2245625))

(assert (= (and b!2245625 res!959486) b!2245633))

(assert (= (and b!2245625 (not res!959476)) b!2245627))

(assert (= (and b!2245627 (not res!959480)) b!2245628))

(assert (= (and b!2245628 (not res!959483)) b!2245616))

(assert (= (and b!2245616 (not res!959485)) b!2245610))

(assert (= (and start!218972 ((_ is Cons!26568) input!1722)) b!2245615))

(assert (= b!2245622 b!2245631))

(assert (= start!218972 b!2245622))

(assert (= (and start!218972 ((_ is Cons!26568) suffix!886)) b!2245618))

(assert (= (and start!218972 ((_ is Cons!26568) otherP!12)) b!2245621))

(assert (= b!2245614 b!2245632))

(assert (= b!2245624 b!2245614))

(assert (= (and start!218972 ((_ is Cons!26570) rules!1750)) b!2245624))

(assert (= b!2245638 b!2245626))

(assert (= start!218972 b!2245638))

(assert (= b!2245617 b!2245634))

(assert (= b!2245635 b!2245617))

(assert (= b!2245629 b!2245635))

(assert (= (and start!218972 ((_ is Cons!26569) tokens!456)) b!2245629))

(declare-fun m!2677203 () Bool)

(assert (=> b!2245614 m!2677203))

(declare-fun m!2677205 () Bool)

(assert (=> b!2245614 m!2677205))

(declare-fun m!2677207 () Bool)

(assert (=> b!2245638 m!2677207))

(declare-fun m!2677209 () Bool)

(assert (=> b!2245638 m!2677209))

(declare-fun m!2677211 () Bool)

(assert (=> b!2245610 m!2677211))

(declare-fun m!2677213 () Bool)

(assert (=> b!2245635 m!2677213))

(declare-fun m!2677215 () Bool)

(assert (=> b!2245636 m!2677215))

(assert (=> b!2245636 m!2677215))

(declare-fun m!2677217 () Bool)

(assert (=> b!2245636 m!2677217))

(assert (=> b!2245636 m!2677217))

(declare-fun m!2677219 () Bool)

(assert (=> b!2245636 m!2677219))

(declare-fun m!2677221 () Bool)

(assert (=> b!2245636 m!2677221))

(declare-fun m!2677223 () Bool)

(assert (=> b!2245629 m!2677223))

(declare-fun m!2677225 () Bool)

(assert (=> b!2245619 m!2677225))

(declare-fun m!2677227 () Bool)

(assert (=> b!2245617 m!2677227))

(declare-fun m!2677229 () Bool)

(assert (=> b!2245617 m!2677229))

(declare-fun m!2677231 () Bool)

(assert (=> b!2245639 m!2677231))

(declare-fun m!2677233 () Bool)

(assert (=> b!2245612 m!2677233))

(declare-fun m!2677235 () Bool)

(assert (=> b!2245612 m!2677235))

(declare-fun m!2677237 () Bool)

(assert (=> b!2245612 m!2677237))

(assert (=> b!2245612 m!2677237))

(declare-fun m!2677239 () Bool)

(assert (=> b!2245612 m!2677239))

(declare-fun m!2677241 () Bool)

(assert (=> b!2245623 m!2677241))

(declare-fun m!2677243 () Bool)

(assert (=> b!2245616 m!2677243))

(declare-fun m!2677245 () Bool)

(assert (=> b!2245625 m!2677245))

(declare-fun m!2677247 () Bool)

(assert (=> b!2245625 m!2677247))

(declare-fun m!2677249 () Bool)

(assert (=> b!2245620 m!2677249))

(declare-fun m!2677251 () Bool)

(assert (=> b!2245640 m!2677251))

(declare-fun m!2677253 () Bool)

(assert (=> b!2245627 m!2677253))

(declare-fun m!2677255 () Bool)

(assert (=> b!2245627 m!2677255))

(declare-fun m!2677257 () Bool)

(assert (=> b!2245627 m!2677257))

(declare-fun m!2677259 () Bool)

(assert (=> b!2245627 m!2677259))

(declare-fun m!2677261 () Bool)

(assert (=> b!2245622 m!2677261))

(declare-fun m!2677263 () Bool)

(assert (=> b!2245622 m!2677263))

(assert (=> b!2245630 m!2677215))

(assert (=> b!2245633 m!2677215))

(assert (=> b!2245633 m!2677215))

(assert (=> b!2245633 m!2677217))

(assert (=> b!2245633 m!2677217))

(declare-fun m!2677265 () Bool)

(assert (=> b!2245633 m!2677265))

(assert (=> b!2245633 m!2677265))

(declare-fun m!2677267 () Bool)

(assert (=> b!2245633 m!2677267))

(declare-fun m!2677269 () Bool)

(assert (=> b!2245611 m!2677269))

(check-sat (not b!2245614) (not b!2245620) b_and!175637 (not b!2245618) (not b!2245624) (not b_next!66189) b_and!175627 (not b!2245625) (not b!2245640) (not b_next!66201) (not b_next!66191) (not b!2245619) (not b!2245623) b_and!175631 (not b_next!66195) (not b!2245621) (not b!2245611) (not b_next!66203) tp_is_empty!10327 (not b!2245638) b_and!175639 b_and!175635 (not b!2245627) (not b_next!66199) b_and!175633 b_and!175625 (not b_next!66197) (not b!2245616) (not b!2245615) (not b!2245629) (not b!2245639) (not b_next!66193) (not b!2245635) (not b!2245636) (not b!2245630) b_and!175629 (not b!2245622) (not b!2245617) (not b!2245633) (not b!2245610) (not b!2245612))
(check-sat b_and!175637 (not b_next!66203) (not b_next!66199) (not b_next!66189) b_and!175627 (not b_next!66193) b_and!175629 (not b_next!66201) (not b_next!66191) b_and!175631 (not b_next!66195) b_and!175639 b_and!175635 b_and!175633 b_and!175625 (not b_next!66197))
