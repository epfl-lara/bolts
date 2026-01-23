; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215780 () Bool)

(assert start!215780)

(declare-fun b_free!63867 () Bool)

(declare-fun b_next!64571 () Bool)

(assert (=> start!215780 (= b_free!63867 (not b_next!64571))))

(declare-fun tp!687923 () Bool)

(declare-fun b_and!173483 () Bool)

(assert (=> start!215780 (= tp!687923 b_and!173483)))

(declare-fun b!2213856 () Bool)

(declare-fun b_free!63869 () Bool)

(declare-fun b_next!64573 () Bool)

(assert (=> b!2213856 (= b_free!63869 (not b_next!64573))))

(declare-fun tp!687917 () Bool)

(declare-fun b_and!173485 () Bool)

(assert (=> b!2213856 (= tp!687917 b_and!173485)))

(declare-fun b_free!63871 () Bool)

(declare-fun b_next!64575 () Bool)

(assert (=> b!2213856 (= b_free!63871 (not b_next!64575))))

(declare-fun tp!687930 () Bool)

(declare-fun b_and!173487 () Bool)

(assert (=> b!2213856 (= tp!687930 b_and!173487)))

(declare-fun b!2213854 () Bool)

(declare-fun b_free!63873 () Bool)

(declare-fun b_next!64577 () Bool)

(assert (=> b!2213854 (= b_free!63873 (not b_next!64577))))

(declare-fun tp!687921 () Bool)

(declare-fun b_and!173489 () Bool)

(assert (=> b!2213854 (= tp!687921 b_and!173489)))

(declare-fun b_free!63875 () Bool)

(declare-fun b_next!64579 () Bool)

(assert (=> b!2213854 (= b_free!63875 (not b_next!64579))))

(declare-fun tp!687928 () Bool)

(declare-fun b_and!173491 () Bool)

(assert (=> b!2213854 (= tp!687928 b_and!173491)))

(declare-fun b!2213852 () Bool)

(declare-fun b_free!63877 () Bool)

(declare-fun b_next!64581 () Bool)

(assert (=> b!2213852 (= b_free!63877 (not b_next!64581))))

(declare-fun tp!687925 () Bool)

(declare-fun b_and!173493 () Bool)

(assert (=> b!2213852 (= tp!687925 b_and!173493)))

(declare-fun b_free!63879 () Bool)

(declare-fun b_next!64583 () Bool)

(assert (=> b!2213852 (= b_free!63879 (not b_next!64583))))

(declare-fun tp!687919 () Bool)

(declare-fun b_and!173495 () Bool)

(assert (=> b!2213852 (= tp!687919 b_and!173495)))

(declare-fun res!951455 () Bool)

(declare-fun e!1413728 () Bool)

(assert (=> start!215780 (=> (not res!951455) (not e!1413728))))

(declare-datatypes ((LexerInterface!3766 0))(
  ( (LexerInterfaceExt!3763 (__x!17063 Int)) (Lexer!3764) )
))
(declare-fun thiss!27908 () LexerInterface!3766)

(get-info :version)

(assert (=> start!215780 (= res!951455 ((_ is Lexer!3764) thiss!27908))))

(assert (=> start!215780 e!1413728))

(assert (=> start!215780 true))

(declare-fun e!1413718 () Bool)

(assert (=> start!215780 e!1413718))

(assert (=> start!215780 tp!687923))

(declare-fun e!1413720 () Bool)

(assert (=> start!215780 e!1413720))

(declare-datatypes ((List!25969 0))(
  ( (Nil!25885) (Cons!25885 (h!31286 (_ BitVec 16)) (t!198745 List!25969)) )
))
(declare-datatypes ((TokenValue!4305 0))(
  ( (FloatLiteralValue!8610 (text!30580 List!25969)) (TokenValueExt!4304 (__x!17064 Int)) (Broken!21525 (value!131523 List!25969)) (Object!4388) (End!4305) (Def!4305) (Underscore!4305) (Match!4305) (Else!4305) (Error!4305) (Case!4305) (If!4305) (Extends!4305) (Abstract!4305) (Class!4305) (Val!4305) (DelimiterValue!8610 (del!4365 List!25969)) (KeywordValue!4311 (value!131524 List!25969)) (CommentValue!8610 (value!131525 List!25969)) (WhitespaceValue!8610 (value!131526 List!25969)) (IndentationValue!4305 (value!131527 List!25969)) (String!28200) (Int32!4305) (Broken!21526 (value!131528 List!25969)) (Boolean!4306) (Unit!38917) (OperatorValue!4308 (op!4365 List!25969)) (IdentifierValue!8610 (value!131529 List!25969)) (IdentifierValue!8611 (value!131530 List!25969)) (WhitespaceValue!8611 (value!131531 List!25969)) (True!8610) (False!8610) (Broken!21527 (value!131532 List!25969)) (Broken!21528 (value!131533 List!25969)) (True!8611) (RightBrace!4305) (RightBracket!4305) (Colon!4305) (Null!4305) (Comma!4305) (LeftBracket!4305) (False!8611) (LeftBrace!4305) (ImaginaryLiteralValue!4305 (text!30581 List!25969)) (StringLiteralValue!12915 (value!131534 List!25969)) (EOFValue!4305 (value!131535 List!25969)) (IdentValue!4305 (value!131536 List!25969)) (DelimiterValue!8611 (value!131537 List!25969)) (DedentValue!4305 (value!131538 List!25969)) (NewLineValue!4305 (value!131539 List!25969)) (IntegerValue!12915 (value!131540 (_ BitVec 32)) (text!30582 List!25969)) (IntegerValue!12916 (value!131541 Int) (text!30583 List!25969)) (Times!4305) (Or!4305) (Equal!4305) (Minus!4305) (Broken!21529 (value!131542 List!25969)) (And!4305) (Div!4305) (LessEqual!4305) (Mod!4305) (Concat!10618) (Not!4305) (Plus!4305) (SpaceValue!4305 (value!131543 List!25969)) (IntegerValue!12917 (value!131544 Int) (text!30584 List!25969)) (StringLiteralValue!12916 (text!30585 List!25969)) (FloatLiteralValue!8611 (text!30586 List!25969)) (BytesLiteralValue!4305 (value!131545 List!25969)) (CommentValue!8611 (value!131546 List!25969)) (StringLiteralValue!12917 (value!131547 List!25969)) (ErrorTokenValue!4305 (msg!4366 List!25969)) )
))
(declare-datatypes ((String!28201 0))(
  ( (String!28202 (value!131548 String)) )
))
(declare-datatypes ((C!12772 0))(
  ( (C!12773 (val!7398 Int)) )
))
(declare-datatypes ((List!25970 0))(
  ( (Nil!25886) (Cons!25886 (h!31287 C!12772) (t!198746 List!25970)) )
))
(declare-datatypes ((IArray!16947 0))(
  ( (IArray!16948 (innerList!8531 List!25970)) )
))
(declare-datatypes ((Conc!8471 0))(
  ( (Node!8471 (left!19911 Conc!8471) (right!20241 Conc!8471) (csize!17172 Int) (cheight!8682 Int)) (Leaf!12408 (xs!11413 IArray!16947) (csize!17173 Int)) (Empty!8471) )
))
(declare-datatypes ((BalanceConc!16660 0))(
  ( (BalanceConc!16661 (c!353813 Conc!8471)) )
))
(declare-datatypes ((Regex!6313 0))(
  ( (ElementMatch!6313 (c!353814 C!12772)) (Concat!10619 (regOne!13138 Regex!6313) (regTwo!13138 Regex!6313)) (EmptyExpr!6313) (Star!6313 (reg!6642 Regex!6313)) (EmptyLang!6313) (Union!6313 (regOne!13139 Regex!6313) (regTwo!13139 Regex!6313)) )
))
(declare-datatypes ((TokenValueInjection!8194 0))(
  ( (TokenValueInjection!8195 (toValue!5880 Int) (toChars!5739 Int)) )
))
(declare-datatypes ((Rule!8138 0))(
  ( (Rule!8139 (regex!4169 Regex!6313) (tag!4659 String!28201) (isSeparator!4169 Bool) (transformation!4169 TokenValueInjection!8194)) )
))
(declare-datatypes ((Token!7820 0))(
  ( (Token!7821 (value!131549 TokenValue!4305) (rule!6469 Rule!8138) (size!20211 Int) (originalCharacters!4941 List!25970)) )
))
(declare-fun t1!61 () Token!7820)

(declare-fun e!1413729 () Bool)

(declare-fun inv!35087 (Token!7820) Bool)

(assert (=> start!215780 (and (inv!35087 t1!61) e!1413729)))

(declare-fun b!2213848 () Bool)

(declare-fun e!1413725 () Bool)

(declare-fun tp!687926 () Bool)

(declare-fun e!1413716 () Bool)

(declare-fun inv!35084 (String!28201) Bool)

(declare-fun inv!35088 (TokenValueInjection!8194) Bool)

(assert (=> b!2213848 (= e!1413725 (and tp!687926 (inv!35084 (tag!4659 (rule!6469 t1!61))) (inv!35088 (transformation!4169 (rule!6469 t1!61))) e!1413716))))

(declare-fun e!1413723 () Bool)

(declare-fun tp!687929 () Bool)

(declare-fun b!2213849 () Bool)

(declare-datatypes ((List!25971 0))(
  ( (Nil!25887) (Cons!25887 (h!31288 Token!7820) (t!198747 List!25971)) )
))
(declare-fun l!6601 () List!25971)

(assert (=> b!2213849 (= e!1413720 (and (inv!35087 (h!31288 l!6601)) e!1413723 tp!687929))))

(declare-fun b!2213850 () Bool)

(declare-fun e!1413714 () Bool)

(declare-fun tp!687927 () Bool)

(assert (=> b!2213850 (= e!1413718 (and e!1413714 tp!687927))))

(declare-fun b!2213851 () Bool)

(declare-fun tp!687918 () Bool)

(declare-fun inv!21 (TokenValue!4305) Bool)

(assert (=> b!2213851 (= e!1413729 (and (inv!21 (value!131549 t1!61)) e!1413725 tp!687918))))

(assert (=> b!2213852 (= e!1413716 (and tp!687925 tp!687919))))

(declare-fun b!2213853 () Bool)

(declare-fun i!1797 () Int)

(assert (=> b!2213853 (= e!1413728 (> 0 (+ 1 i!1797)))))

(declare-fun e!1413726 () Bool)

(assert (=> b!2213854 (= e!1413726 (and tp!687921 tp!687928))))

(declare-fun b!2213855 () Bool)

(declare-datatypes ((List!25972 0))(
  ( (Nil!25888) (Cons!25888 (h!31289 Rule!8138) (t!198748 List!25972)) )
))
(declare-fun rules!4462 () List!25972)

(declare-fun e!1413727 () Bool)

(declare-fun tp!687924 () Bool)

(assert (=> b!2213855 (= e!1413714 (and tp!687924 (inv!35084 (tag!4659 (h!31289 rules!4462))) (inv!35088 (transformation!4169 (h!31289 rules!4462))) e!1413727))))

(assert (=> b!2213856 (= e!1413727 (and tp!687917 tp!687930))))

(declare-fun b!2213857 () Bool)

(declare-fun res!951456 () Bool)

(assert (=> b!2213857 (=> (not res!951456) (not e!1413728))))

(assert (=> b!2213857 (= res!951456 (>= i!1797 0))))

(declare-fun b!2213858 () Bool)

(declare-fun e!1413724 () Bool)

(declare-fun tp!687922 () Bool)

(assert (=> b!2213858 (= e!1413723 (and (inv!21 (value!131549 (h!31288 l!6601))) e!1413724 tp!687922))))

(declare-fun b!2213859 () Bool)

(declare-fun res!951453 () Bool)

(assert (=> b!2213859 (=> (not res!951453) (not e!1413728))))

(declare-fun apply!6415 (List!25971 Int) Token!7820)

(assert (=> b!2213859 (= res!951453 (= (apply!6415 l!6601 i!1797) t1!61))))

(declare-fun tp!687920 () Bool)

(declare-fun b!2213860 () Bool)

(assert (=> b!2213860 (= e!1413724 (and tp!687920 (inv!35084 (tag!4659 (rule!6469 (h!31288 l!6601)))) (inv!35088 (transformation!4169 (rule!6469 (h!31288 l!6601)))) e!1413726))))

(declare-fun b!2213861 () Bool)

(declare-fun res!951457 () Bool)

(assert (=> b!2213861 (=> (not res!951457) (not e!1413728))))

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!36 (LexerInterface!3766 List!25971 List!25972 Int) Bool)

(assert (=> b!2213861 (= res!951457 (tokensListTwoByTwoPredicateList!36 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2213862 () Bool)

(declare-fun res!951454 () Bool)

(assert (=> b!2213862 (=> (not res!951454) (not e!1413728))))

(declare-fun size!20212 (List!25971) Int)

(assert (=> b!2213862 (= res!951454 (< (+ 1 i!1797) (size!20212 l!6601)))))

(assert (= (and start!215780 res!951455) b!2213861))

(assert (= (and b!2213861 res!951457) b!2213857))

(assert (= (and b!2213857 res!951456) b!2213862))

(assert (= (and b!2213862 res!951454) b!2213859))

(assert (= (and b!2213859 res!951453) b!2213853))

(assert (= b!2213855 b!2213856))

(assert (= b!2213850 b!2213855))

(assert (= (and start!215780 ((_ is Cons!25888) rules!4462)) b!2213850))

(assert (= b!2213860 b!2213854))

(assert (= b!2213858 b!2213860))

(assert (= b!2213849 b!2213858))

(assert (= (and start!215780 ((_ is Cons!25887) l!6601)) b!2213849))

(assert (= b!2213848 b!2213852))

(assert (= b!2213851 b!2213848))

(assert (= start!215780 b!2213851))

(declare-fun m!2656145 () Bool)

(assert (=> b!2213858 m!2656145))

(declare-fun m!2656147 () Bool)

(assert (=> b!2213848 m!2656147))

(declare-fun m!2656149 () Bool)

(assert (=> b!2213848 m!2656149))

(declare-fun m!2656151 () Bool)

(assert (=> b!2213849 m!2656151))

(declare-fun m!2656153 () Bool)

(assert (=> b!2213862 m!2656153))

(declare-fun m!2656155 () Bool)

(assert (=> b!2213861 m!2656155))

(declare-fun m!2656157 () Bool)

(assert (=> b!2213851 m!2656157))

(declare-fun m!2656159 () Bool)

(assert (=> b!2213855 m!2656159))

(declare-fun m!2656161 () Bool)

(assert (=> b!2213855 m!2656161))

(declare-fun m!2656163 () Bool)

(assert (=> b!2213860 m!2656163))

(declare-fun m!2656165 () Bool)

(assert (=> b!2213860 m!2656165))

(declare-fun m!2656167 () Bool)

(assert (=> start!215780 m!2656167))

(declare-fun m!2656169 () Bool)

(assert (=> b!2213859 m!2656169))

(check-sat (not b!2213855) (not b_next!64575) (not b!2213861) b_and!173491 (not b!2213848) (not b!2213850) b_and!173487 (not b!2213851) (not b_next!64571) (not b!2213849) (not b!2213859) (not b_next!64583) (not start!215780) b_and!173489 b_and!173495 (not b!2213860) (not b_next!64579) b_and!173493 b_and!173483 (not b_next!64573) (not b!2213862) b_and!173485 (not b_next!64581) (not b!2213858) (not b_next!64577))
(check-sat (not b_next!64575) b_and!173491 b_and!173489 b_and!173495 b_and!173487 (not b_next!64571) (not b_next!64577) (not b_next!64583) (not b_next!64579) b_and!173493 b_and!173483 (not b_next!64573) b_and!173485 (not b_next!64581))
