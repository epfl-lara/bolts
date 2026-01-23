; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219868 () Bool)

(assert start!219868)

(declare-fun b!2252645 () Bool)

(declare-fun b_free!65997 () Bool)

(declare-fun b_next!66701 () Bool)

(assert (=> b!2252645 (= b_free!65997 (not b_next!66701))))

(declare-fun tp!711685 () Bool)

(declare-fun b_and!176497 () Bool)

(assert (=> b!2252645 (= tp!711685 b_and!176497)))

(declare-fun b_free!65999 () Bool)

(declare-fun b_next!66703 () Bool)

(assert (=> b!2252645 (= b_free!65999 (not b_next!66703))))

(declare-fun tp!711696 () Bool)

(declare-fun b_and!176499 () Bool)

(assert (=> b!2252645 (= tp!711696 b_and!176499)))

(declare-fun b!2252624 () Bool)

(declare-fun b_free!66001 () Bool)

(declare-fun b_next!66705 () Bool)

(assert (=> b!2252624 (= b_free!66001 (not b_next!66705))))

(declare-fun tp!711691 () Bool)

(declare-fun b_and!176501 () Bool)

(assert (=> b!2252624 (= tp!711691 b_and!176501)))

(declare-fun b_free!66003 () Bool)

(declare-fun b_next!66707 () Bool)

(assert (=> b!2252624 (= b_free!66003 (not b_next!66707))))

(declare-fun tp!711686 () Bool)

(declare-fun b_and!176503 () Bool)

(assert (=> b!2252624 (= tp!711686 b_and!176503)))

(declare-fun b!2252626 () Bool)

(declare-fun b_free!66005 () Bool)

(declare-fun b_next!66709 () Bool)

(assert (=> b!2252626 (= b_free!66005 (not b_next!66709))))

(declare-fun tp!711681 () Bool)

(declare-fun b_and!176505 () Bool)

(assert (=> b!2252626 (= tp!711681 b_and!176505)))

(declare-fun b_free!66007 () Bool)

(declare-fun b_next!66711 () Bool)

(assert (=> b!2252626 (= b_free!66007 (not b_next!66711))))

(declare-fun tp!711688 () Bool)

(declare-fun b_and!176507 () Bool)

(assert (=> b!2252626 (= tp!711688 b_and!176507)))

(declare-fun b!2252622 () Bool)

(declare-fun b_free!66009 () Bool)

(declare-fun b_next!66713 () Bool)

(assert (=> b!2252622 (= b_free!66009 (not b_next!66713))))

(declare-fun tp!711683 () Bool)

(declare-fun b_and!176509 () Bool)

(assert (=> b!2252622 (= tp!711683 b_and!176509)))

(declare-fun b_free!66011 () Bool)

(declare-fun b_next!66715 () Bool)

(assert (=> b!2252622 (= b_free!66011 (not b_next!66715))))

(declare-fun tp!711694 () Bool)

(declare-fun b_and!176511 () Bool)

(assert (=> b!2252622 (= tp!711694 b_and!176511)))

(declare-fun b!2252614 () Bool)

(declare-fun res!962449 () Bool)

(declare-fun e!1441421 () Bool)

(assert (=> b!2252614 (=> (not res!962449) (not e!1441421))))

(declare-datatypes ((List!26767 0))(
  ( (Nil!26673) (Cons!26673 (h!32074 (_ BitVec 16)) (t!200995 List!26767)) )
))
(declare-datatypes ((TokenValue!4391 0))(
  ( (FloatLiteralValue!8782 (text!31182 List!26767)) (TokenValueExt!4390 (__x!17842 Int)) (Broken!21955 (value!134320 List!26767)) (Object!4484) (End!4391) (Def!4391) (Underscore!4391) (Match!4391) (Else!4391) (Error!4391) (Case!4391) (If!4391) (Extends!4391) (Abstract!4391) (Class!4391) (Val!4391) (DelimiterValue!8782 (del!4451 List!26767)) (KeywordValue!4397 (value!134321 List!26767)) (CommentValue!8782 (value!134322 List!26767)) (WhitespaceValue!8782 (value!134323 List!26767)) (IndentationValue!4391 (value!134324 List!26767)) (String!29058) (Int32!4391) (Broken!21956 (value!134325 List!26767)) (Boolean!4392) (Unit!39613) (OperatorValue!4394 (op!4451 List!26767)) (IdentifierValue!8782 (value!134326 List!26767)) (IdentifierValue!8783 (value!134327 List!26767)) (WhitespaceValue!8783 (value!134328 List!26767)) (True!8782) (False!8782) (Broken!21957 (value!134329 List!26767)) (Broken!21958 (value!134330 List!26767)) (True!8783) (RightBrace!4391) (RightBracket!4391) (Colon!4391) (Null!4391) (Comma!4391) (LeftBracket!4391) (False!8783) (LeftBrace!4391) (ImaginaryLiteralValue!4391 (text!31183 List!26767)) (StringLiteralValue!13173 (value!134331 List!26767)) (EOFValue!4391 (value!134332 List!26767)) (IdentValue!4391 (value!134333 List!26767)) (DelimiterValue!8783 (value!134334 List!26767)) (DedentValue!4391 (value!134335 List!26767)) (NewLineValue!4391 (value!134336 List!26767)) (IntegerValue!13173 (value!134337 (_ BitVec 32)) (text!31184 List!26767)) (IntegerValue!13174 (value!134338 Int) (text!31185 List!26767)) (Times!4391) (Or!4391) (Equal!4391) (Minus!4391) (Broken!21959 (value!134339 List!26767)) (And!4391) (Div!4391) (LessEqual!4391) (Mod!4391) (Concat!10968) (Not!4391) (Plus!4391) (SpaceValue!4391 (value!134340 List!26767)) (IntegerValue!13175 (value!134341 Int) (text!31186 List!26767)) (StringLiteralValue!13174 (text!31187 List!26767)) (FloatLiteralValue!8783 (text!31188 List!26767)) (BytesLiteralValue!4391 (value!134342 List!26767)) (CommentValue!8783 (value!134343 List!26767)) (StringLiteralValue!13175 (value!134344 List!26767)) (ErrorTokenValue!4391 (msg!4452 List!26767)) )
))
(declare-datatypes ((C!13300 0))(
  ( (C!13301 (val!7698 Int)) )
))
(declare-datatypes ((List!26768 0))(
  ( (Nil!26674) (Cons!26674 (h!32075 C!13300) (t!200996 List!26768)) )
))
(declare-datatypes ((IArray!17217 0))(
  ( (IArray!17218 (innerList!8666 List!26768)) )
))
(declare-datatypes ((Conc!8606 0))(
  ( (Node!8606 (left!20265 Conc!8606) (right!20595 Conc!8606) (csize!17442 Int) (cheight!8817 Int)) (Leaf!12706 (xs!11548 IArray!17217) (csize!17443 Int)) (Empty!8606) )
))
(declare-datatypes ((BalanceConc!16940 0))(
  ( (BalanceConc!16941 (c!358276 Conc!8606)) )
))
(declare-datatypes ((Regex!6577 0))(
  ( (ElementMatch!6577 (c!358277 C!13300)) (Concat!10969 (regOne!13666 Regex!6577) (regTwo!13666 Regex!6577)) (EmptyExpr!6577) (Star!6577 (reg!6906 Regex!6577)) (EmptyLang!6577) (Union!6577 (regOne!13667 Regex!6577) (regTwo!13667 Regex!6577)) )
))
(declare-datatypes ((String!29059 0))(
  ( (String!29060 (value!134345 String)) )
))
(declare-datatypes ((TokenValueInjection!8322 0))(
  ( (TokenValueInjection!8323 (toValue!5971 Int) (toChars!5830 Int)) )
))
(declare-datatypes ((Rule!8258 0))(
  ( (Rule!8259 (regex!4229 Regex!6577) (tag!4719 String!29059) (isSeparator!4229 Bool) (transformation!4229 TokenValueInjection!8322)) )
))
(declare-datatypes ((List!26769 0))(
  ( (Nil!26675) (Cons!26675 (h!32076 Rule!8258) (t!200997 List!26769)) )
))
(declare-fun rules!1750 () List!26769)

(declare-fun r!2363 () Rule!8258)

(declare-fun contains!4581 (List!26769 Rule!8258) Bool)

(assert (=> b!2252614 (= res!962449 (contains!4581 rules!1750 r!2363))))

(declare-fun res!962461 () Bool)

(assert (=> start!219868 (=> (not res!962461) (not e!1441421))))

(declare-datatypes ((LexerInterface!3826 0))(
  ( (LexerInterfaceExt!3823 (__x!17843 Int)) (Lexer!3824) )
))
(declare-fun thiss!16613 () LexerInterface!3826)

(get-info :version)

(assert (=> start!219868 (= res!962461 ((_ is Lexer!3824) thiss!16613))))

(assert (=> start!219868 e!1441421))

(assert (=> start!219868 true))

(declare-fun e!1441425 () Bool)

(assert (=> start!219868 e!1441425))

(declare-fun e!1441429 () Bool)

(assert (=> start!219868 e!1441429))

(declare-fun e!1441433 () Bool)

(assert (=> start!219868 e!1441433))

(declare-fun e!1441436 () Bool)

(assert (=> start!219868 e!1441436))

(declare-fun e!1441422 () Bool)

(assert (=> start!219868 e!1441422))

(declare-fun e!1441426 () Bool)

(assert (=> start!219868 e!1441426))

(declare-fun e!1441438 () Bool)

(assert (=> start!219868 e!1441438))

(declare-fun b!2252615 () Bool)

(declare-fun e!1441439 () Bool)

(declare-fun e!1441437 () Bool)

(assert (=> b!2252615 (= e!1441439 e!1441437)))

(declare-fun res!962462 () Bool)

(assert (=> b!2252615 (=> (not res!962462) (not e!1441437))))

(declare-fun e!1441424 () Bool)

(assert (=> b!2252615 (= res!962462 e!1441424)))

(declare-fun res!962455 () Bool)

(assert (=> b!2252615 (=> res!962455 e!1441424)))

(declare-fun lt!837264 () Bool)

(assert (=> b!2252615 (= res!962455 lt!837264)))

(declare-datatypes ((Token!7936 0))(
  ( (Token!7937 (value!134346 TokenValue!4391) (rule!6533 Rule!8258) (size!20880 Int) (originalCharacters!4999 List!26768)) )
))
(declare-datatypes ((List!26770 0))(
  ( (Nil!26676) (Cons!26676 (h!32077 Token!7936) (t!200998 List!26770)) )
))
(declare-fun tokens!456 () List!26770)

(declare-fun isEmpty!15047 (List!26770) Bool)

(assert (=> b!2252615 (= lt!837264 (isEmpty!15047 tokens!456))))

(declare-fun b!2252616 () Bool)

(declare-fun res!962454 () Bool)

(assert (=> b!2252616 (=> (not res!962454) (not e!1441437))))

(declare-fun otherP!12 () List!26768)

(declare-fun input!1722 () List!26768)

(declare-fun isPrefix!2219 (List!26768 List!26768) Bool)

(assert (=> b!2252616 (= res!962454 (isPrefix!2219 otherP!12 input!1722))))

(declare-fun b!2252617 () Bool)

(declare-fun tp_is_empty!10375 () Bool)

(declare-fun tp!711680 () Bool)

(assert (=> b!2252617 (= e!1441425 (and tp_is_empty!10375 tp!711680))))

(declare-fun b!2252618 () Bool)

(declare-fun res!962453 () Bool)

(assert (=> b!2252618 (=> (not res!962453) (not e!1441437))))

(declare-fun otherR!12 () Rule!8258)

(assert (=> b!2252618 (= res!962453 (not (= r!2363 otherR!12)))))

(declare-fun b!2252619 () Bool)

(declare-fun e!1441440 () Bool)

(declare-fun e!1441432 () Bool)

(assert (=> b!2252619 (= e!1441440 e!1441432)))

(declare-fun res!962460 () Bool)

(assert (=> b!2252619 (=> res!962460 e!1441432)))

(declare-fun lt!837270 () List!26768)

(assert (=> b!2252619 (= res!962460 (not (isPrefix!2219 lt!837270 input!1722)))))

(declare-fun lt!837267 () List!26768)

(declare-fun getSuffix!1054 (List!26768 List!26768) List!26768)

(assert (=> b!2252619 (= lt!837267 (getSuffix!1054 input!1722 lt!837270))))

(declare-fun lt!837263 () List!26768)

(assert (=> b!2252619 (isPrefix!2219 lt!837270 lt!837263)))

(declare-datatypes ((tuple2!26182 0))(
  ( (tuple2!26183 (_1!15601 Token!7936) (_2!15601 List!26768)) )
))
(declare-fun lt!837269 () tuple2!26182)

(declare-fun ++!6501 (List!26768 List!26768) List!26768)

(assert (=> b!2252619 (= lt!837263 (++!6501 lt!837270 (_2!15601 lt!837269)))))

(declare-datatypes ((Unit!39614 0))(
  ( (Unit!39615) )
))
(declare-fun lt!837271 () Unit!39614)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1464 (List!26768 List!26768) Unit!39614)

(assert (=> b!2252619 (= lt!837271 (lemmaConcatTwoListThenFirstIsPrefix!1464 lt!837270 (_2!15601 lt!837269)))))

(declare-fun list!10245 (BalanceConc!16940) List!26768)

(declare-fun charsOf!2617 (Token!7936) BalanceConc!16940)

(assert (=> b!2252619 (= lt!837270 (list!10245 (charsOf!2617 (h!32077 tokens!456))))))

(declare-fun b!2252620 () Bool)

(declare-fun tp!711693 () Bool)

(assert (=> b!2252620 (= e!1441433 (and tp_is_empty!10375 tp!711693))))

(declare-fun b!2252621 () Bool)

(declare-fun e!1441423 () Bool)

(assert (=> b!2252621 (= e!1441423 e!1441440)))

(declare-fun res!962457 () Bool)

(assert (=> b!2252621 (=> res!962457 e!1441440)))

(assert (=> b!2252621 (= res!962457 (not (= (h!32077 tokens!456) (_1!15601 lt!837269))))))

(declare-datatypes ((Option!5205 0))(
  ( (None!5204) (Some!5204 (v!30226 tuple2!26182)) )
))
(declare-fun get!8051 (Option!5205) tuple2!26182)

(declare-fun maxPrefix!2114 (LexerInterface!3826 List!26769 List!26768) Option!5205)

(assert (=> b!2252621 (= lt!837269 (get!8051 (maxPrefix!2114 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1441448 () Bool)

(assert (=> b!2252622 (= e!1441448 (and tp!711683 tp!711694))))

(declare-fun b!2252623 () Bool)

(assert (=> b!2252623 (= e!1441432 true)))

(declare-fun lt!837268 () List!26768)

(assert (=> b!2252623 (= lt!837268 (++!6501 lt!837270 lt!837267))))

(declare-fun e!1441435 () Bool)

(assert (=> b!2252624 (= e!1441435 (and tp!711691 tp!711686))))

(declare-fun e!1441445 () Bool)

(declare-fun tp!711687 () Bool)

(declare-fun b!2252625 () Bool)

(declare-fun inv!36214 (Token!7936) Bool)

(assert (=> b!2252625 (= e!1441438 (and (inv!36214 (h!32077 tokens!456)) e!1441445 tp!711687))))

(declare-fun e!1441430 () Bool)

(assert (=> b!2252626 (= e!1441430 (and tp!711681 tp!711688))))

(declare-fun tp!711689 () Bool)

(declare-fun b!2252627 () Bool)

(declare-fun e!1441434 () Bool)

(declare-fun inv!21 (TokenValue!4391) Bool)

(assert (=> b!2252627 (= e!1441445 (and (inv!21 (value!134346 (h!32077 tokens!456))) e!1441434 tp!711689))))

(declare-fun b!2252628 () Bool)

(assert (=> b!2252628 (= e!1441421 e!1441439)))

(declare-fun res!962446 () Bool)

(assert (=> b!2252628 (=> (not res!962446) (not e!1441439))))

(declare-datatypes ((IArray!17219 0))(
  ( (IArray!17220 (innerList!8667 List!26770)) )
))
(declare-datatypes ((Conc!8607 0))(
  ( (Node!8607 (left!20266 Conc!8607) (right!20596 Conc!8607) (csize!17444 Int) (cheight!8818 Int)) (Leaf!12707 (xs!11549 IArray!17219) (csize!17445 Int)) (Empty!8607) )
))
(declare-datatypes ((BalanceConc!16942 0))(
  ( (BalanceConc!16943 (c!358278 Conc!8607)) )
))
(declare-datatypes ((tuple2!26184 0))(
  ( (tuple2!26185 (_1!15602 BalanceConc!16942) (_2!15602 BalanceConc!16940)) )
))
(declare-fun lt!837272 () tuple2!26184)

(declare-fun suffix!886 () List!26768)

(declare-datatypes ((tuple2!26186 0))(
  ( (tuple2!26187 (_1!15603 List!26770) (_2!15603 List!26768)) )
))
(declare-fun list!10246 (BalanceConc!16942) List!26770)

(assert (=> b!2252628 (= res!962446 (= (tuple2!26187 (list!10246 (_1!15602 lt!837272)) (list!10245 (_2!15602 lt!837272))) (tuple2!26187 tokens!456 suffix!886)))))

(declare-fun lex!1665 (LexerInterface!3826 List!26769 BalanceConc!16940) tuple2!26184)

(declare-fun seqFromList!2933 (List!26768) BalanceConc!16940)

(assert (=> b!2252628 (= lt!837272 (lex!1665 thiss!16613 rules!1750 (seqFromList!2933 input!1722)))))

(declare-fun b!2252629 () Bool)

(declare-fun res!962447 () Bool)

(assert (=> b!2252629 (=> (not res!962447) (not e!1441421))))

(declare-fun isEmpty!15048 (List!26769) Bool)

(assert (=> b!2252629 (= res!962447 (not (isEmpty!15048 rules!1750)))))

(declare-fun b!2252630 () Bool)

(declare-fun e!1441427 () Bool)

(declare-fun tp!711684 () Bool)

(assert (=> b!2252630 (= e!1441422 (and e!1441427 tp!711684))))

(declare-fun b!2252631 () Bool)

(declare-fun e!1441443 () Bool)

(declare-fun head!4798 (List!26770) Token!7936)

(assert (=> b!2252631 (= e!1441443 (= (rule!6533 (head!4798 tokens!456)) r!2363))))

(declare-fun b!2252632 () Bool)

(declare-fun res!962444 () Bool)

(assert (=> b!2252632 (=> res!962444 e!1441423)))

(assert (=> b!2252632 (= res!962444 ((_ is Nil!26676) tokens!456))))

(declare-fun b!2252633 () Bool)

(declare-fun tp!711682 () Bool)

(declare-fun inv!36211 (String!29059) Bool)

(declare-fun inv!36215 (TokenValueInjection!8322) Bool)

(assert (=> b!2252633 (= e!1441427 (and tp!711682 (inv!36211 (tag!4719 (h!32076 rules!1750))) (inv!36215 (transformation!4229 (h!32076 rules!1750))) e!1441430))))

(declare-fun b!2252634 () Bool)

(declare-fun tp!711692 () Bool)

(assert (=> b!2252634 (= e!1441436 (and tp_is_empty!10375 tp!711692))))

(declare-fun b!2252635 () Bool)

(declare-fun tp!711690 () Bool)

(assert (=> b!2252635 (= e!1441429 (and tp!711690 (inv!36211 (tag!4719 otherR!12)) (inv!36215 (transformation!4229 otherR!12)) e!1441448))))

(declare-fun b!2252636 () Bool)

(declare-fun e!1441449 () Bool)

(assert (=> b!2252636 (= e!1441449 e!1441423)))

(declare-fun res!962452 () Bool)

(assert (=> b!2252636 (=> res!962452 e!1441423)))

(declare-fun getIndex!250 (List!26769 Rule!8258) Int)

(assert (=> b!2252636 (= res!962452 (<= (getIndex!250 rules!1750 r!2363) (getIndex!250 rules!1750 otherR!12)))))

(declare-fun ruleValid!1321 (LexerInterface!3826 Rule!8258) Bool)

(assert (=> b!2252636 (ruleValid!1321 thiss!16613 otherR!12)))

(declare-fun lt!837266 () Unit!39614)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!728 (LexerInterface!3826 Rule!8258 List!26769) Unit!39614)

(assert (=> b!2252636 (= lt!837266 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!728 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2252637 () Bool)

(assert (=> b!2252637 (= e!1441437 (not e!1441449))))

(declare-fun res!962458 () Bool)

(assert (=> b!2252637 (=> res!962458 e!1441449)))

(declare-fun e!1441444 () Bool)

(assert (=> b!2252637 (= res!962458 e!1441444)))

(declare-fun res!962451 () Bool)

(assert (=> b!2252637 (=> (not res!962451) (not e!1441444))))

(assert (=> b!2252637 (= res!962451 (not lt!837264))))

(assert (=> b!2252637 (ruleValid!1321 thiss!16613 r!2363)))

(declare-fun lt!837265 () Unit!39614)

(assert (=> b!2252637 (= lt!837265 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!728 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2252638 () Bool)

(declare-fun matchR!2838 (Regex!6577 List!26768) Bool)

(assert (=> b!2252638 (= e!1441444 (not (matchR!2838 (regex!4229 r!2363) (list!10245 (charsOf!2617 (head!4798 tokens!456))))))))

(declare-fun e!1441428 () Bool)

(declare-fun tp!711697 () Bool)

(declare-fun b!2252639 () Bool)

(assert (=> b!2252639 (= e!1441426 (and tp!711697 (inv!36211 (tag!4719 r!2363)) (inv!36215 (transformation!4229 r!2363)) e!1441428))))

(declare-fun b!2252640 () Bool)

(declare-fun res!962459 () Bool)

(assert (=> b!2252640 (=> (not res!962459) (not e!1441421))))

(assert (=> b!2252640 (= res!962459 (contains!4581 rules!1750 otherR!12))))

(declare-fun b!2252641 () Bool)

(declare-fun size!20881 (BalanceConc!16940) Int)

(declare-fun size!20882 (List!26768) Int)

(assert (=> b!2252641 (= e!1441424 (<= (size!20881 (charsOf!2617 (head!4798 tokens!456))) (size!20882 otherP!12)))))

(declare-fun b!2252642 () Bool)

(declare-fun res!962448 () Bool)

(assert (=> b!2252642 (=> (not res!962448) (not e!1441437))))

(assert (=> b!2252642 (= res!962448 e!1441443)))

(declare-fun res!962450 () Bool)

(assert (=> b!2252642 (=> res!962450 e!1441443)))

(assert (=> b!2252642 (= res!962450 lt!837264)))

(declare-fun b!2252643 () Bool)

(declare-fun res!962445 () Bool)

(assert (=> b!2252643 (=> (not res!962445) (not e!1441421))))

(declare-fun rulesInvariant!3328 (LexerInterface!3826 List!26769) Bool)

(assert (=> b!2252643 (= res!962445 (rulesInvariant!3328 thiss!16613 rules!1750))))

(declare-fun b!2252644 () Bool)

(declare-fun tp!711695 () Bool)

(assert (=> b!2252644 (= e!1441434 (and tp!711695 (inv!36211 (tag!4719 (rule!6533 (h!32077 tokens!456)))) (inv!36215 (transformation!4229 (rule!6533 (h!32077 tokens!456)))) e!1441435))))

(assert (=> b!2252645 (= e!1441428 (and tp!711685 tp!711696))))

(declare-fun b!2252646 () Bool)

(declare-fun res!962456 () Bool)

(assert (=> b!2252646 (=> res!962456 e!1441432)))

(assert (=> b!2252646 (= res!962456 (not (= lt!837263 input!1722)))))

(assert (= (and start!219868 res!962461) b!2252629))

(assert (= (and b!2252629 res!962447) b!2252643))

(assert (= (and b!2252643 res!962445) b!2252614))

(assert (= (and b!2252614 res!962449) b!2252640))

(assert (= (and b!2252640 res!962459) b!2252628))

(assert (= (and b!2252628 res!962446) b!2252615))

(assert (= (and b!2252615 (not res!962455)) b!2252641))

(assert (= (and b!2252615 res!962462) b!2252642))

(assert (= (and b!2252642 (not res!962450)) b!2252631))

(assert (= (and b!2252642 res!962448) b!2252616))

(assert (= (and b!2252616 res!962454) b!2252618))

(assert (= (and b!2252618 res!962453) b!2252637))

(assert (= (and b!2252637 res!962451) b!2252638))

(assert (= (and b!2252637 (not res!962458)) b!2252636))

(assert (= (and b!2252636 (not res!962452)) b!2252632))

(assert (= (and b!2252632 (not res!962444)) b!2252621))

(assert (= (and b!2252621 (not res!962457)) b!2252619))

(assert (= (and b!2252619 (not res!962460)) b!2252646))

(assert (= (and b!2252646 (not res!962456)) b!2252623))

(assert (= (and start!219868 ((_ is Cons!26674) input!1722)) b!2252617))

(assert (= b!2252635 b!2252622))

(assert (= start!219868 b!2252635))

(assert (= (and start!219868 ((_ is Cons!26674) suffix!886)) b!2252620))

(assert (= (and start!219868 ((_ is Cons!26674) otherP!12)) b!2252634))

(assert (= b!2252633 b!2252626))

(assert (= b!2252630 b!2252633))

(assert (= (and start!219868 ((_ is Cons!26675) rules!1750)) b!2252630))

(assert (= b!2252639 b!2252645))

(assert (= start!219868 b!2252639))

(assert (= b!2252644 b!2252624))

(assert (= b!2252627 b!2252644))

(assert (= b!2252625 b!2252627))

(assert (= (and start!219868 ((_ is Cons!26676) tokens!456)) b!2252625))

(declare-fun m!2683411 () Bool)

(assert (=> b!2252636 m!2683411))

(declare-fun m!2683413 () Bool)

(assert (=> b!2252636 m!2683413))

(declare-fun m!2683415 () Bool)

(assert (=> b!2252636 m!2683415))

(declare-fun m!2683417 () Bool)

(assert (=> b!2252636 m!2683417))

(declare-fun m!2683419 () Bool)

(assert (=> b!2252638 m!2683419))

(assert (=> b!2252638 m!2683419))

(declare-fun m!2683421 () Bool)

(assert (=> b!2252638 m!2683421))

(assert (=> b!2252638 m!2683421))

(declare-fun m!2683423 () Bool)

(assert (=> b!2252638 m!2683423))

(assert (=> b!2252638 m!2683423))

(declare-fun m!2683425 () Bool)

(assert (=> b!2252638 m!2683425))

(assert (=> b!2252631 m!2683419))

(declare-fun m!2683427 () Bool)

(assert (=> b!2252644 m!2683427))

(declare-fun m!2683429 () Bool)

(assert (=> b!2252644 m!2683429))

(declare-fun m!2683431 () Bool)

(assert (=> b!2252616 m!2683431))

(declare-fun m!2683433 () Bool)

(assert (=> b!2252623 m!2683433))

(declare-fun m!2683435 () Bool)

(assert (=> b!2252629 m!2683435))

(declare-fun m!2683437 () Bool)

(assert (=> b!2252637 m!2683437))

(declare-fun m!2683439 () Bool)

(assert (=> b!2252637 m!2683439))

(declare-fun m!2683441 () Bool)

(assert (=> b!2252635 m!2683441))

(declare-fun m!2683443 () Bool)

(assert (=> b!2252635 m!2683443))

(declare-fun m!2683445 () Bool)

(assert (=> b!2252619 m!2683445))

(declare-fun m!2683447 () Bool)

(assert (=> b!2252619 m!2683447))

(declare-fun m!2683449 () Bool)

(assert (=> b!2252619 m!2683449))

(declare-fun m!2683451 () Bool)

(assert (=> b!2252619 m!2683451))

(declare-fun m!2683453 () Bool)

(assert (=> b!2252619 m!2683453))

(assert (=> b!2252619 m!2683453))

(declare-fun m!2683455 () Bool)

(assert (=> b!2252619 m!2683455))

(declare-fun m!2683457 () Bool)

(assert (=> b!2252619 m!2683457))

(declare-fun m!2683459 () Bool)

(assert (=> b!2252627 m!2683459))

(declare-fun m!2683461 () Bool)

(assert (=> b!2252614 m!2683461))

(declare-fun m!2683463 () Bool)

(assert (=> b!2252621 m!2683463))

(assert (=> b!2252621 m!2683463))

(declare-fun m!2683465 () Bool)

(assert (=> b!2252621 m!2683465))

(declare-fun m!2683467 () Bool)

(assert (=> b!2252633 m!2683467))

(declare-fun m!2683469 () Bool)

(assert (=> b!2252633 m!2683469))

(assert (=> b!2252641 m!2683419))

(assert (=> b!2252641 m!2683419))

(assert (=> b!2252641 m!2683421))

(assert (=> b!2252641 m!2683421))

(declare-fun m!2683471 () Bool)

(assert (=> b!2252641 m!2683471))

(declare-fun m!2683473 () Bool)

(assert (=> b!2252641 m!2683473))

(declare-fun m!2683475 () Bool)

(assert (=> b!2252625 m!2683475))

(declare-fun m!2683477 () Bool)

(assert (=> b!2252639 m!2683477))

(declare-fun m!2683479 () Bool)

(assert (=> b!2252639 m!2683479))

(declare-fun m!2683481 () Bool)

(assert (=> b!2252640 m!2683481))

(declare-fun m!2683483 () Bool)

(assert (=> b!2252628 m!2683483))

(declare-fun m!2683485 () Bool)

(assert (=> b!2252628 m!2683485))

(declare-fun m!2683487 () Bool)

(assert (=> b!2252628 m!2683487))

(assert (=> b!2252628 m!2683487))

(declare-fun m!2683489 () Bool)

(assert (=> b!2252628 m!2683489))

(declare-fun m!2683491 () Bool)

(assert (=> b!2252615 m!2683491))

(declare-fun m!2683493 () Bool)

(assert (=> b!2252643 m!2683493))

(check-sat (not b!2252638) (not b!2252643) b_and!176505 (not b!2252615) (not b!2252617) (not b!2252630) (not b!2252641) (not b!2252628) (not b!2252640) (not b!2252625) (not b!2252623) (not b!2252639) (not b!2252619) b_and!176503 b_and!176497 (not b_next!66709) (not b!2252620) (not b_next!66705) (not b!2252633) (not b!2252621) b_and!176507 (not b!2252614) tp_is_empty!10375 (not b_next!66713) (not b!2252616) (not b_next!66703) b_and!176499 (not b_next!66707) (not b_next!66701) (not b!2252634) b_and!176501 (not b!2252629) (not b!2252636) (not b!2252627) (not b!2252635) (not b_next!66715) b_and!176511 (not b!2252631) (not b!2252637) b_and!176509 (not b_next!66711) (not b!2252644))
(check-sat b_and!176503 b_and!176505 (not b_next!66705) b_and!176507 (not b_next!66713) (not b_next!66703) b_and!176497 (not b_next!66709) b_and!176499 (not b_next!66707) (not b_next!66701) b_and!176501 (not b_next!66715) b_and!176511 b_and!176509 (not b_next!66711))
