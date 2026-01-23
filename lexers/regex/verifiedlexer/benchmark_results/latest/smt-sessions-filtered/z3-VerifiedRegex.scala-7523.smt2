; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397566 () Bool)

(assert start!397566)

(declare-fun b!4169604 () Bool)

(declare-fun b_free!120503 () Bool)

(declare-fun b_next!121207 () Bool)

(assert (=> b!4169604 (= b_free!120503 (not b_next!121207))))

(declare-fun tp!1273606 () Bool)

(declare-fun b_and!325445 () Bool)

(assert (=> b!4169604 (= tp!1273606 b_and!325445)))

(declare-fun b_free!120505 () Bool)

(declare-fun b_next!121209 () Bool)

(assert (=> b!4169604 (= b_free!120505 (not b_next!121209))))

(declare-fun tp!1273599 () Bool)

(declare-fun b_and!325447 () Bool)

(assert (=> b!4169604 (= tp!1273599 b_and!325447)))

(declare-fun b!4169590 () Bool)

(declare-fun b_free!120507 () Bool)

(declare-fun b_next!121211 () Bool)

(assert (=> b!4169590 (= b_free!120507 (not b_next!121211))))

(declare-fun tp!1273603 () Bool)

(declare-fun b_and!325449 () Bool)

(assert (=> b!4169590 (= tp!1273603 b_and!325449)))

(declare-fun b_free!120509 () Bool)

(declare-fun b_next!121213 () Bool)

(assert (=> b!4169590 (= b_free!120509 (not b_next!121213))))

(declare-fun tp!1273608 () Bool)

(declare-fun b_and!325451 () Bool)

(assert (=> b!4169590 (= tp!1273608 b_and!325451)))

(declare-fun b!4169595 () Bool)

(declare-fun b_free!120511 () Bool)

(declare-fun b_next!121215 () Bool)

(assert (=> b!4169595 (= b_free!120511 (not b_next!121215))))

(declare-fun tp!1273601 () Bool)

(declare-fun b_and!325453 () Bool)

(assert (=> b!4169595 (= tp!1273601 b_and!325453)))

(declare-fun b_free!120513 () Bool)

(declare-fun b_next!121217 () Bool)

(assert (=> b!4169595 (= b_free!120513 (not b_next!121217))))

(declare-fun tp!1273604 () Bool)

(declare-fun b_and!325455 () Bool)

(assert (=> b!4169595 (= tp!1273604 b_and!325455)))

(declare-fun b!4169587 () Bool)

(declare-fun e!2588463 () Bool)

(assert (=> b!4169587 (= e!2588463 true)))

(declare-datatypes ((C!25124 0))(
  ( (C!25125 (val!14724 Int)) )
))
(declare-datatypes ((List!45779 0))(
  ( (Nil!45655) (Cons!45655 (h!51075 C!25124) (t!344290 List!45779)) )
))
(declare-datatypes ((IArray!27551 0))(
  ( (IArray!27552 (innerList!13833 List!45779)) )
))
(declare-datatypes ((Conc!13773 0))(
  ( (Node!13773 (left!34040 Conc!13773) (right!34370 Conc!13773) (csize!27776 Int) (cheight!13984 Int)) (Leaf!21297 (xs!17079 IArray!27551) (csize!27777 Int)) (Empty!13773) )
))
(declare-datatypes ((String!52825 0))(
  ( (String!52826 (value!236035 String)) )
))
(declare-datatypes ((List!45780 0))(
  ( (Nil!45656) (Cons!45656 (h!51076 (_ BitVec 16)) (t!344291 List!45780)) )
))
(declare-datatypes ((BalanceConc!27140 0))(
  ( (BalanceConc!27141 (c!712818 Conc!13773)) )
))
(declare-datatypes ((TokenValue!7792 0))(
  ( (FloatLiteralValue!15584 (text!54989 List!45780)) (TokenValueExt!7791 (__x!27805 Int)) (Broken!38960 (value!236036 List!45780)) (Object!7915) (End!7792) (Def!7792) (Underscore!7792) (Match!7792) (Else!7792) (Error!7792) (Case!7792) (If!7792) (Extends!7792) (Abstract!7792) (Class!7792) (Val!7792) (DelimiterValue!15584 (del!7852 List!45780)) (KeywordValue!7798 (value!236037 List!45780)) (CommentValue!15584 (value!236038 List!45780)) (WhitespaceValue!15584 (value!236039 List!45780)) (IndentationValue!7792 (value!236040 List!45780)) (String!52827) (Int32!7792) (Broken!38961 (value!236041 List!45780)) (Boolean!7793) (Unit!64732) (OperatorValue!7795 (op!7852 List!45780)) (IdentifierValue!15584 (value!236042 List!45780)) (IdentifierValue!15585 (value!236043 List!45780)) (WhitespaceValue!15585 (value!236044 List!45780)) (True!15584) (False!15584) (Broken!38962 (value!236045 List!45780)) (Broken!38963 (value!236046 List!45780)) (True!15585) (RightBrace!7792) (RightBracket!7792) (Colon!7792) (Null!7792) (Comma!7792) (LeftBracket!7792) (False!15585) (LeftBrace!7792) (ImaginaryLiteralValue!7792 (text!54990 List!45780)) (StringLiteralValue!23376 (value!236047 List!45780)) (EOFValue!7792 (value!236048 List!45780)) (IdentValue!7792 (value!236049 List!45780)) (DelimiterValue!15585 (value!236050 List!45780)) (DedentValue!7792 (value!236051 List!45780)) (NewLineValue!7792 (value!236052 List!45780)) (IntegerValue!23376 (value!236053 (_ BitVec 32)) (text!54991 List!45780)) (IntegerValue!23377 (value!236054 Int) (text!54992 List!45780)) (Times!7792) (Or!7792) (Equal!7792) (Minus!7792) (Broken!38964 (value!236055 List!45780)) (And!7792) (Div!7792) (LessEqual!7792) (Mod!7792) (Concat!20259) (Not!7792) (Plus!7792) (SpaceValue!7792 (value!236056 List!45780)) (IntegerValue!23378 (value!236057 Int) (text!54993 List!45780)) (StringLiteralValue!23377 (text!54994 List!45780)) (FloatLiteralValue!15585 (text!54995 List!45780)) (BytesLiteralValue!7792 (value!236058 List!45780)) (CommentValue!15585 (value!236059 List!45780)) (StringLiteralValue!23378 (value!236060 List!45780)) (ErrorTokenValue!7792 (msg!7853 List!45780)) )
))
(declare-datatypes ((TokenValueInjection!15012 0))(
  ( (TokenValueInjection!15013 (toValue!10242 Int) (toChars!10101 Int)) )
))
(declare-datatypes ((Regex!12467 0))(
  ( (ElementMatch!12467 (c!712819 C!25124)) (Concat!20260 (regOne!25446 Regex!12467) (regTwo!25446 Regex!12467)) (EmptyExpr!12467) (Star!12467 (reg!12796 Regex!12467)) (EmptyLang!12467) (Union!12467 (regOne!25447 Regex!12467) (regTwo!25447 Regex!12467)) )
))
(declare-datatypes ((Rule!14924 0))(
  ( (Rule!14925 (regex!7562 Regex!12467) (tag!8426 String!52825) (isSeparator!7562 Bool) (transformation!7562 TokenValueInjection!15012)) )
))
(declare-fun rBis!161 () Rule!14924)

(declare-fun pBis!100 () List!45779)

(declare-fun matchR!6208 (Regex!12467 List!45779) Bool)

(assert (=> b!4169587 (not (matchR!6208 (regex!7562 rBis!161) pBis!100))))

(declare-datatypes ((Unit!64733 0))(
  ( (Unit!64734) )
))
(declare-fun lt!1485102 () Unit!64733)

(declare-datatypes ((List!45781 0))(
  ( (Nil!45657) (Cons!45657 (h!51077 Rule!14924) (t!344292 List!45781)) )
))
(declare-fun rules!3820 () List!45781)

(declare-fun p!2942 () List!45779)

(declare-fun input!3316 () List!45779)

(declare-datatypes ((LexerInterface!7155 0))(
  ( (LexerInterfaceExt!7152 (__x!27806 Int)) (Lexer!7153) )
))
(declare-fun thiss!25889 () LexerInterface!7155)

(declare-fun r!4097 () Rule!14924)

(declare-fun lemmaMaxPrefixOutputsMaxPrefixInner!4 (LexerInterface!7155 List!45781 Rule!14924 List!45779 List!45779 List!45779 Rule!14924) Unit!64733)

(assert (=> b!4169587 (= lt!1485102 (lemmaMaxPrefixOutputsMaxPrefixInner!4 thiss!25889 rules!3820 r!4097 p!2942 input!3316 pBis!100 rBis!161))))

(declare-fun b!4169588 () Bool)

(declare-fun e!2588458 () Bool)

(declare-fun e!2588472 () Bool)

(assert (=> b!4169588 (= e!2588458 e!2588472)))

(declare-fun res!1708402 () Bool)

(assert (=> b!4169588 (=> res!1708402 e!2588472)))

(declare-datatypes ((Token!13862 0))(
  ( (Token!13863 (value!236061 TokenValue!7792) (rule!10620 Rule!14924) (size!33537 Int) (originalCharacters!7962 List!45779)) )
))
(declare-datatypes ((tuple2!43558 0))(
  ( (tuple2!43559 (_1!24913 Token!13862) (_2!24913 List!45779)) )
))
(declare-datatypes ((Option!9770 0))(
  ( (None!9769) (Some!9769 (v!40559 tuple2!43558)) )
))
(declare-fun lt!1485096 () Option!9770)

(declare-fun maxPrefixOneRule!3178 (LexerInterface!7155 Rule!14924 List!45779) Option!9770)

(assert (=> b!4169588 (= res!1708402 (not (= (maxPrefixOneRule!3178 thiss!25889 r!4097 input!3316) lt!1485096)))))

(declare-fun lt!1485100 () Int)

(declare-fun lt!1485097 () TokenValue!7792)

(declare-fun getSuffix!2726 (List!45779 List!45779) List!45779)

(assert (=> b!4169588 (= lt!1485096 (Some!9769 (tuple2!43559 (Token!13863 lt!1485097 r!4097 lt!1485100 p!2942) (getSuffix!2726 input!3316 p!2942))))))

(declare-fun size!33538 (List!45779) Int)

(assert (=> b!4169588 (= lt!1485100 (size!33538 p!2942))))

(declare-fun lt!1485098 () BalanceConc!27140)

(declare-fun apply!10539 (TokenValueInjection!15012 BalanceConc!27140) TokenValue!7792)

(assert (=> b!4169588 (= lt!1485097 (apply!10539 (transformation!7562 r!4097) lt!1485098))))

(declare-fun isPrefix!4419 (List!45779 List!45779) Bool)

(assert (=> b!4169588 (isPrefix!4419 input!3316 input!3316)))

(declare-fun lt!1485104 () Unit!64733)

(declare-fun lemmaIsPrefixRefl!2854 (List!45779 List!45779) Unit!64733)

(assert (=> b!4169588 (= lt!1485104 (lemmaIsPrefixRefl!2854 input!3316 input!3316))))

(declare-fun lt!1485103 () Unit!64733)

(declare-fun lemmaSemiInverse!2332 (TokenValueInjection!15012 BalanceConc!27140) Unit!64733)

(assert (=> b!4169588 (= lt!1485103 (lemmaSemiInverse!2332 (transformation!7562 r!4097) lt!1485098))))

(declare-fun seqFromList!5591 (List!45779) BalanceConc!27140)

(assert (=> b!4169588 (= lt!1485098 (seqFromList!5591 p!2942))))

(declare-fun b!4169589 () Bool)

(declare-fun e!2588469 () Bool)

(assert (=> b!4169589 (= e!2588469 (not e!2588458))))

(declare-fun res!1708395 () Bool)

(assert (=> b!4169589 (=> res!1708395 e!2588458)))

(assert (=> b!4169589 (= res!1708395 (not (matchR!6208 (regex!7562 r!4097) p!2942)))))

(declare-fun ruleValid!3284 (LexerInterface!7155 Rule!14924) Bool)

(assert (=> b!4169589 (ruleValid!3284 thiss!25889 r!4097)))

(declare-fun lt!1485099 () Unit!64733)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2322 (LexerInterface!7155 Rule!14924 List!45781) Unit!64733)

(assert (=> b!4169589 (= lt!1485099 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2322 thiss!25889 r!4097 rules!3820))))

(declare-fun e!2588459 () Bool)

(assert (=> b!4169590 (= e!2588459 (and tp!1273603 tp!1273608))))

(declare-fun b!4169591 () Bool)

(declare-fun res!1708399 () Bool)

(assert (=> b!4169591 (=> (not res!1708399) (not e!2588469))))

(declare-fun contains!9363 (List!45781 Rule!14924) Bool)

(assert (=> b!4169591 (= res!1708399 (contains!9363 rules!3820 rBis!161))))

(declare-fun e!2588466 () Bool)

(declare-fun b!4169592 () Bool)

(declare-fun e!2588460 () Bool)

(declare-fun tp!1273598 () Bool)

(declare-fun inv!60188 (String!52825) Bool)

(declare-fun inv!60190 (TokenValueInjection!15012) Bool)

(assert (=> b!4169592 (= e!2588466 (and tp!1273598 (inv!60188 (tag!8426 (h!51077 rules!3820))) (inv!60190 (transformation!7562 (h!51077 rules!3820))) e!2588460))))

(declare-fun b!4169593 () Bool)

(declare-fun res!1708396 () Bool)

(assert (=> b!4169593 (=> res!1708396 e!2588472)))

(assert (=> b!4169593 (= res!1708396 (<= (size!33538 pBis!100) lt!1485100))))

(declare-fun b!4169594 () Bool)

(declare-fun e!2588467 () Bool)

(declare-fun tp_is_empty!21897 () Bool)

(declare-fun tp!1273607 () Bool)

(assert (=> b!4169594 (= e!2588467 (and tp_is_empty!21897 tp!1273607))))

(declare-fun res!1708401 () Bool)

(assert (=> start!397566 (=> (not res!1708401) (not e!2588469))))

(get-info :version)

(assert (=> start!397566 (= res!1708401 ((_ is Lexer!7153) thiss!25889))))

(assert (=> start!397566 e!2588469))

(declare-fun e!2588462 () Bool)

(assert (=> start!397566 e!2588462))

(declare-fun e!2588468 () Bool)

(assert (=> start!397566 e!2588468))

(assert (=> start!397566 e!2588467))

(declare-fun e!2588464 () Bool)

(assert (=> start!397566 e!2588464))

(assert (=> start!397566 true))

(declare-fun e!2588457 () Bool)

(assert (=> start!397566 e!2588457))

(declare-fun e!2588465 () Bool)

(assert (=> start!397566 e!2588465))

(declare-fun e!2588456 () Bool)

(assert (=> b!4169595 (= e!2588456 (and tp!1273601 tp!1273604))))

(declare-fun tp!1273602 () Bool)

(declare-fun b!4169596 () Bool)

(assert (=> b!4169596 (= e!2588465 (and tp!1273602 (inv!60188 (tag!8426 r!4097)) (inv!60190 (transformation!7562 r!4097)) e!2588459))))

(declare-fun b!4169597 () Bool)

(declare-fun res!1708400 () Bool)

(assert (=> b!4169597 (=> (not res!1708400) (not e!2588469))))

(declare-fun isEmpty!27021 (List!45781) Bool)

(assert (=> b!4169597 (= res!1708400 (not (isEmpty!27021 rules!3820)))))

(declare-fun b!4169598 () Bool)

(assert (=> b!4169598 (= e!2588472 e!2588463)))

(declare-fun res!1708392 () Bool)

(assert (=> b!4169598 (=> res!1708392 e!2588463)))

(declare-fun validRegex!5586 (Regex!12467) Bool)

(assert (=> b!4169598 (= res!1708392 (not (validRegex!5586 (regex!7562 r!4097))))))

(assert (=> b!4169598 (ruleValid!3284 thiss!25889 rBis!161)))

(declare-fun lt!1485101 () Unit!64733)

(assert (=> b!4169598 (= lt!1485101 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2322 thiss!25889 rBis!161 rules!3820))))

(declare-fun b!4169599 () Bool)

(declare-fun res!1708393 () Bool)

(assert (=> b!4169599 (=> (not res!1708393) (not e!2588469))))

(assert (=> b!4169599 (= res!1708393 (isPrefix!4419 pBis!100 input!3316))))

(declare-fun b!4169600 () Bool)

(declare-fun res!1708397 () Bool)

(assert (=> b!4169600 (=> (not res!1708397) (not e!2588469))))

(declare-fun rulesInvariant!6368 (LexerInterface!7155 List!45781) Bool)

(assert (=> b!4169600 (= res!1708397 (rulesInvariant!6368 thiss!25889 rules!3820))))

(declare-fun b!4169601 () Bool)

(declare-fun tp!1273600 () Bool)

(assert (=> b!4169601 (= e!2588468 (and e!2588466 tp!1273600))))

(declare-fun b!4169602 () Bool)

(declare-fun res!1708394 () Bool)

(assert (=> b!4169602 (=> res!1708394 e!2588472)))

(declare-fun maxPrefix!4231 (LexerInterface!7155 List!45781 List!45779) Option!9770)

(assert (=> b!4169602 (= res!1708394 (not (= (maxPrefix!4231 thiss!25889 rules!3820 input!3316) lt!1485096)))))

(declare-fun tp!1273605 () Bool)

(declare-fun b!4169603 () Bool)

(assert (=> b!4169603 (= e!2588457 (and tp!1273605 (inv!60188 (tag!8426 rBis!161)) (inv!60190 (transformation!7562 rBis!161)) e!2588456))))

(assert (=> b!4169604 (= e!2588460 (and tp!1273606 tp!1273599))))

(declare-fun b!4169605 () Bool)

(declare-fun res!1708391 () Bool)

(assert (=> b!4169605 (=> (not res!1708391) (not e!2588469))))

(assert (=> b!4169605 (= res!1708391 (contains!9363 rules!3820 r!4097))))

(declare-fun b!4169606 () Bool)

(declare-fun res!1708398 () Bool)

(assert (=> b!4169606 (=> (not res!1708398) (not e!2588469))))

(assert (=> b!4169606 (= res!1708398 (isPrefix!4419 p!2942 input!3316))))

(declare-fun b!4169607 () Bool)

(declare-fun tp!1273597 () Bool)

(assert (=> b!4169607 (= e!2588464 (and tp_is_empty!21897 tp!1273597))))

(declare-fun b!4169608 () Bool)

(declare-fun tp!1273596 () Bool)

(assert (=> b!4169608 (= e!2588462 (and tp_is_empty!21897 tp!1273596))))

(assert (= (and start!397566 res!1708401) b!4169606))

(assert (= (and b!4169606 res!1708398) b!4169599))

(assert (= (and b!4169599 res!1708393) b!4169597))

(assert (= (and b!4169597 res!1708400) b!4169600))

(assert (= (and b!4169600 res!1708397) b!4169605))

(assert (= (and b!4169605 res!1708391) b!4169591))

(assert (= (and b!4169591 res!1708399) b!4169589))

(assert (= (and b!4169589 (not res!1708395)) b!4169588))

(assert (= (and b!4169588 (not res!1708402)) b!4169593))

(assert (= (and b!4169593 (not res!1708396)) b!4169602))

(assert (= (and b!4169602 (not res!1708394)) b!4169598))

(assert (= (and b!4169598 (not res!1708392)) b!4169587))

(assert (= (and start!397566 ((_ is Cons!45655) pBis!100)) b!4169608))

(assert (= b!4169592 b!4169604))

(assert (= b!4169601 b!4169592))

(assert (= (and start!397566 ((_ is Cons!45657) rules!3820)) b!4169601))

(assert (= (and start!397566 ((_ is Cons!45655) p!2942)) b!4169594))

(assert (= (and start!397566 ((_ is Cons!45655) input!3316)) b!4169607))

(assert (= b!4169603 b!4169595))

(assert (= start!397566 b!4169603))

(assert (= b!4169596 b!4169590))

(assert (= start!397566 b!4169596))

(declare-fun m!4760579 () Bool)

(assert (=> b!4169606 m!4760579))

(declare-fun m!4760581 () Bool)

(assert (=> b!4169592 m!4760581))

(declare-fun m!4760583 () Bool)

(assert (=> b!4169592 m!4760583))

(declare-fun m!4760585 () Bool)

(assert (=> b!4169605 m!4760585))

(declare-fun m!4760587 () Bool)

(assert (=> b!4169587 m!4760587))

(declare-fun m!4760589 () Bool)

(assert (=> b!4169587 m!4760589))

(declare-fun m!4760591 () Bool)

(assert (=> b!4169593 m!4760591))

(declare-fun m!4760593 () Bool)

(assert (=> b!4169603 m!4760593))

(declare-fun m!4760595 () Bool)

(assert (=> b!4169603 m!4760595))

(declare-fun m!4760597 () Bool)

(assert (=> b!4169598 m!4760597))

(declare-fun m!4760599 () Bool)

(assert (=> b!4169598 m!4760599))

(declare-fun m!4760601 () Bool)

(assert (=> b!4169598 m!4760601))

(declare-fun m!4760603 () Bool)

(assert (=> b!4169600 m!4760603))

(declare-fun m!4760605 () Bool)

(assert (=> b!4169589 m!4760605))

(declare-fun m!4760607 () Bool)

(assert (=> b!4169589 m!4760607))

(declare-fun m!4760609 () Bool)

(assert (=> b!4169589 m!4760609))

(declare-fun m!4760611 () Bool)

(assert (=> b!4169591 m!4760611))

(declare-fun m!4760613 () Bool)

(assert (=> b!4169596 m!4760613))

(declare-fun m!4760615 () Bool)

(assert (=> b!4169596 m!4760615))

(declare-fun m!4760617 () Bool)

(assert (=> b!4169602 m!4760617))

(declare-fun m!4760619 () Bool)

(assert (=> b!4169588 m!4760619))

(declare-fun m!4760621 () Bool)

(assert (=> b!4169588 m!4760621))

(declare-fun m!4760623 () Bool)

(assert (=> b!4169588 m!4760623))

(declare-fun m!4760625 () Bool)

(assert (=> b!4169588 m!4760625))

(declare-fun m!4760627 () Bool)

(assert (=> b!4169588 m!4760627))

(declare-fun m!4760629 () Bool)

(assert (=> b!4169588 m!4760629))

(declare-fun m!4760631 () Bool)

(assert (=> b!4169588 m!4760631))

(declare-fun m!4760633 () Bool)

(assert (=> b!4169588 m!4760633))

(declare-fun m!4760635 () Bool)

(assert (=> b!4169597 m!4760635))

(declare-fun m!4760637 () Bool)

(assert (=> b!4169599 m!4760637))

(check-sat (not b!4169598) (not b!4169602) (not b!4169588) (not b!4169607) (not b!4169600) b_and!325455 b_and!325447 (not b!4169597) (not b!4169596) (not b!4169592) (not b_next!121215) tp_is_empty!21897 (not b!4169601) b_and!325453 (not b!4169599) (not b!4169605) b_and!325445 (not b!4169589) (not b!4169587) b_and!325451 (not b!4169603) b_and!325449 (not b!4169608) (not b_next!121207) (not b!4169594) (not b!4169606) (not b_next!121217) (not b!4169591) (not b_next!121209) (not b_next!121213) (not b!4169593) (not b_next!121211))
(check-sat (not b_next!121215) b_and!325453 b_and!325445 b_and!325451 b_and!325449 b_and!325455 b_and!325447 (not b_next!121207) (not b_next!121217) (not b_next!121211) (not b_next!121209) (not b_next!121213))
