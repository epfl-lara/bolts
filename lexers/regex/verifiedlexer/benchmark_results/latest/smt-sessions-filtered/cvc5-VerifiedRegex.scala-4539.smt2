; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240472 () Bool)

(assert start!240472)

(declare-fun b!2465674 () Bool)

(declare-fun b_free!70885 () Bool)

(declare-fun b_next!71589 () Bool)

(assert (=> b!2465674 (= b_free!70885 (not b_next!71589))))

(declare-fun tp!786327 () Bool)

(declare-fun b_and!186309 () Bool)

(assert (=> b!2465674 (= tp!786327 b_and!186309)))

(declare-fun b_free!70887 () Bool)

(declare-fun b_next!71591 () Bool)

(assert (=> b!2465674 (= b_free!70887 (not b_next!71591))))

(declare-fun tp!786322 () Bool)

(declare-fun b_and!186311 () Bool)

(assert (=> b!2465674 (= tp!786322 b_and!186311)))

(declare-fun b!2465683 () Bool)

(declare-fun b_free!70889 () Bool)

(declare-fun b_next!71593 () Bool)

(assert (=> b!2465683 (= b_free!70889 (not b_next!71593))))

(declare-fun tp!786323 () Bool)

(declare-fun b_and!186313 () Bool)

(assert (=> b!2465683 (= tp!786323 b_and!186313)))

(declare-fun b_free!70891 () Bool)

(declare-fun b_next!71595 () Bool)

(assert (=> b!2465683 (= b_free!70891 (not b_next!71595))))

(declare-fun tp!786336 () Bool)

(declare-fun b_and!186315 () Bool)

(assert (=> b!2465683 (= tp!786336 b_and!186315)))

(declare-fun b!2465682 () Bool)

(declare-fun b_free!70893 () Bool)

(declare-fun b_next!71597 () Bool)

(assert (=> b!2465682 (= b_free!70893 (not b_next!71597))))

(declare-fun tp!786334 () Bool)

(declare-fun b_and!186317 () Bool)

(assert (=> b!2465682 (= tp!786334 b_and!186317)))

(declare-fun b_free!70895 () Bool)

(declare-fun b_next!71599 () Bool)

(assert (=> b!2465682 (= b_free!70895 (not b_next!71599))))

(declare-fun tp!786326 () Bool)

(declare-fun b_and!186319 () Bool)

(assert (=> b!2465682 (= tp!786326 b_and!186319)))

(declare-fun b!2465678 () Bool)

(declare-fun b_free!70897 () Bool)

(declare-fun b_next!71601 () Bool)

(assert (=> b!2465678 (= b_free!70897 (not b_next!71601))))

(declare-fun tp!786325 () Bool)

(declare-fun b_and!186321 () Bool)

(assert (=> b!2465678 (= tp!786325 b_and!186321)))

(declare-fun b_free!70899 () Bool)

(declare-fun b_next!71603 () Bool)

(assert (=> b!2465678 (= b_free!70899 (not b_next!71603))))

(declare-fun tp!786320 () Bool)

(declare-fun b_and!186323 () Bool)

(assert (=> b!2465678 (= tp!786320 b_and!186323)))

(declare-fun b!2465667 () Bool)

(declare-fun res!1044351 () Bool)

(declare-fun e!1563643 () Bool)

(assert (=> b!2465667 (=> (not res!1044351) (not e!1563643))))

(declare-datatypes ((LexerInterface!4061 0))(
  ( (LexerInterfaceExt!4058 (__x!18555 Int)) (Lexer!4059) )
))
(declare-fun thiss!27932 () LexerInterface!4061)

(declare-datatypes ((List!28800 0))(
  ( (Nil!28700) (Cons!28700 (h!34101 (_ BitVec 16)) (t!209307 List!28800)) )
))
(declare-datatypes ((TokenValue!4650 0))(
  ( (FloatLiteralValue!9300 (text!32995 List!28800)) (TokenValueExt!4649 (__x!18556 Int)) (Broken!23250 (value!142605 List!28800)) (Object!4749) (End!4650) (Def!4650) (Underscore!4650) (Match!4650) (Else!4650) (Error!4650) (Case!4650) (If!4650) (Extends!4650) (Abstract!4650) (Class!4650) (Val!4650) (DelimiterValue!9300 (del!4710 List!28800)) (KeywordValue!4656 (value!142606 List!28800)) (CommentValue!9300 (value!142607 List!28800)) (WhitespaceValue!9300 (value!142608 List!28800)) (IndentationValue!4650 (value!142609 List!28800)) (String!31547) (Int32!4650) (Broken!23251 (value!142610 List!28800)) (Boolean!4651) (Unit!42045) (OperatorValue!4653 (op!4710 List!28800)) (IdentifierValue!9300 (value!142611 List!28800)) (IdentifierValue!9301 (value!142612 List!28800)) (WhitespaceValue!9301 (value!142613 List!28800)) (True!9300) (False!9300) (Broken!23252 (value!142614 List!28800)) (Broken!23253 (value!142615 List!28800)) (True!9301) (RightBrace!4650) (RightBracket!4650) (Colon!4650) (Null!4650) (Comma!4650) (LeftBracket!4650) (False!9301) (LeftBrace!4650) (ImaginaryLiteralValue!4650 (text!32996 List!28800)) (StringLiteralValue!13950 (value!142616 List!28800)) (EOFValue!4650 (value!142617 List!28800)) (IdentValue!4650 (value!142618 List!28800)) (DelimiterValue!9301 (value!142619 List!28800)) (DedentValue!4650 (value!142620 List!28800)) (NewLineValue!4650 (value!142621 List!28800)) (IntegerValue!13950 (value!142622 (_ BitVec 32)) (text!32997 List!28800)) (IntegerValue!13951 (value!142623 Int) (text!32998 List!28800)) (Times!4650) (Or!4650) (Equal!4650) (Minus!4650) (Broken!23254 (value!142624 List!28800)) (And!4650) (Div!4650) (LessEqual!4650) (Mod!4650) (Concat!11902) (Not!4650) (Plus!4650) (SpaceValue!4650 (value!142625 List!28800)) (IntegerValue!13952 (value!142626 Int) (text!32999 List!28800)) (StringLiteralValue!13951 (text!33000 List!28800)) (FloatLiteralValue!9301 (text!33001 List!28800)) (BytesLiteralValue!4650 (value!142627 List!28800)) (CommentValue!9301 (value!142628 List!28800)) (StringLiteralValue!13952 (value!142629 List!28800)) (ErrorTokenValue!4650 (msg!4711 List!28800)) )
))
(declare-datatypes ((C!14662 0))(
  ( (C!14663 (val!8591 Int)) )
))
(declare-datatypes ((List!28801 0))(
  ( (Nil!28701) (Cons!28701 (h!34102 C!14662) (t!209308 List!28801)) )
))
(declare-datatypes ((IArray!18353 0))(
  ( (IArray!18354 (innerList!9234 List!28801)) )
))
(declare-datatypes ((Conc!9174 0))(
  ( (Node!9174 (left!22041 Conc!9174) (right!22371 Conc!9174) (csize!18578 Int) (cheight!9385 Int)) (Leaf!13714 (xs!12154 IArray!18353) (csize!18579 Int)) (Empty!9174) )
))
(declare-datatypes ((BalanceConc!17962 0))(
  ( (BalanceConc!17963 (c!393230 Conc!9174)) )
))
(declare-datatypes ((Regex!7252 0))(
  ( (ElementMatch!7252 (c!393231 C!14662)) (Concat!11903 (regOne!15016 Regex!7252) (regTwo!15016 Regex!7252)) (EmptyExpr!7252) (Star!7252 (reg!7581 Regex!7252)) (EmptyLang!7252) (Union!7252 (regOne!15017 Regex!7252) (regTwo!15017 Regex!7252)) )
))
(declare-datatypes ((String!31548 0))(
  ( (String!31549 (value!142630 String)) )
))
(declare-datatypes ((TokenValueInjection!8800 0))(
  ( (TokenValueInjection!8801 (toValue!6324 Int) (toChars!6183 Int)) )
))
(declare-datatypes ((Rule!8728 0))(
  ( (Rule!8729 (regex!4464 Regex!7252) (tag!4954 String!31548) (isSeparator!4464 Bool) (transformation!4464 TokenValueInjection!8800)) )
))
(declare-datatypes ((List!28802 0))(
  ( (Nil!28702) (Cons!28702 (h!34103 Rule!8728) (t!209309 List!28802)) )
))
(declare-fun rules!4472 () List!28802)

(declare-fun rulesInvariant!3561 (LexerInterface!4061 List!28802) Bool)

(assert (=> b!2465667 (= res!1044351 (rulesInvariant!3561 thiss!27932 rules!4472))))

(declare-fun b!2465668 () Bool)

(assert (=> b!2465668 (= e!1563643 (not true))))

(declare-fun lt!882183 () Bool)

(declare-datatypes ((Token!8398 0))(
  ( (Token!8399 (value!142631 TokenValue!4650) (rule!6822 Rule!8728) (size!22340 Int) (originalCharacters!5230 List!28801)) )
))
(declare-datatypes ((List!28803 0))(
  ( (Nil!28703) (Cons!28703 (h!34104 Token!8398) (t!209310 List!28803)) )
))
(declare-fun l!6611 () List!28803)

(declare-fun t2!67 () Token!8398)

(declare-fun contains!4900 (List!28803 Token!8398) Bool)

(assert (=> b!2465668 (= lt!882183 (contains!4900 l!6611 t2!67))))

(declare-fun t1!67 () Token!8398)

(declare-fun rulesProduceIndividualToken!1796 (LexerInterface!4061 List!28802 Token!8398) Bool)

(assert (=> b!2465668 (rulesProduceIndividualToken!1796 thiss!27932 rules!4472 t1!67)))

(declare-datatypes ((Unit!42046 0))(
  ( (Unit!42047) )
))
(declare-fun lt!882184 () Unit!42046)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!657 (LexerInterface!4061 List!28802 List!28803 Token!8398) Unit!42046)

(assert (=> b!2465668 (= lt!882184 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!657 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun b!2465669 () Bool)

(declare-fun e!1563648 () Bool)

(declare-fun e!1563642 () Bool)

(declare-fun tp!786333 () Bool)

(declare-fun inv!38788 (String!31548) Bool)

(declare-fun inv!38791 (TokenValueInjection!8800) Bool)

(assert (=> b!2465669 (= e!1563642 (and tp!786333 (inv!38788 (tag!4954 (rule!6822 (h!34104 l!6611)))) (inv!38791 (transformation!4464 (rule!6822 (h!34104 l!6611)))) e!1563648))))

(declare-fun b!2465670 () Bool)

(declare-fun res!1044344 () Bool)

(assert (=> b!2465670 (=> (not res!1044344) (not e!1563643))))

(declare-fun i!1803 () Int)

(declare-fun apply!6748 (List!28803 Int) Token!8398)

(assert (=> b!2465670 (= res!1044344 (= (apply!6748 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!786329 () Bool)

(declare-fun e!1563641 () Bool)

(declare-fun e!1563646 () Bool)

(declare-fun b!2465671 () Bool)

(assert (=> b!2465671 (= e!1563641 (and tp!786329 (inv!38788 (tag!4954 (rule!6822 t1!67))) (inv!38791 (transformation!4464 (rule!6822 t1!67))) e!1563646))))

(declare-fun e!1563644 () Bool)

(declare-fun b!2465672 () Bool)

(declare-fun tp!786332 () Bool)

(declare-fun inv!21 (TokenValue!4650) Bool)

(assert (=> b!2465672 (= e!1563644 (and (inv!21 (value!142631 (h!34104 l!6611))) e!1563642 tp!786332))))

(declare-fun e!1563645 () Bool)

(declare-fun tp!786335 () Bool)

(declare-fun b!2465673 () Bool)

(declare-fun inv!38792 (Token!8398) Bool)

(assert (=> b!2465673 (= e!1563645 (and (inv!38792 (h!34104 l!6611)) e!1563644 tp!786335))))

(declare-fun e!1563633 () Bool)

(assert (=> b!2465674 (= e!1563633 (and tp!786327 tp!786322))))

(declare-fun e!1563638 () Bool)

(declare-fun e!1563649 () Bool)

(declare-fun tp!786331 () Bool)

(declare-fun b!2465675 () Bool)

(assert (=> b!2465675 (= e!1563638 (and (inv!21 (value!142631 t2!67)) e!1563649 tp!786331))))

(declare-fun e!1563647 () Bool)

(declare-fun b!2465676 () Bool)

(declare-fun tp!786321 () Bool)

(assert (=> b!2465676 (= e!1563647 (and tp!786321 (inv!38788 (tag!4954 (h!34103 rules!4472))) (inv!38791 (transformation!4464 (h!34103 rules!4472))) e!1563633))))

(declare-fun b!2465677 () Bool)

(declare-fun res!1044347 () Bool)

(assert (=> b!2465677 (=> (not res!1044347) (not e!1563643))))

(declare-fun rulesProduceEachTokenIndividuallyList!1377 (LexerInterface!4061 List!28802 List!28803) Bool)

(assert (=> b!2465677 (= res!1044347 (rulesProduceEachTokenIndividuallyList!1377 thiss!27932 rules!4472 l!6611))))

(assert (=> b!2465678 (= e!1563648 (and tp!786325 tp!786320))))

(declare-fun b!2465679 () Bool)

(declare-fun e!1563639 () Bool)

(declare-fun tp!786328 () Bool)

(assert (=> b!2465679 (= e!1563639 (and e!1563647 tp!786328))))

(declare-fun res!1044345 () Bool)

(assert (=> start!240472 (=> (not res!1044345) (not e!1563643))))

(assert (=> start!240472 (= res!1044345 (is-Lexer!4059 thiss!27932))))

(assert (=> start!240472 e!1563643))

(assert (=> start!240472 true))

(assert (=> start!240472 e!1563639))

(assert (=> start!240472 (and (inv!38792 t2!67) e!1563638)))

(assert (=> start!240472 e!1563645))

(declare-fun e!1563636 () Bool)

(assert (=> start!240472 (and (inv!38792 t1!67) e!1563636)))

(declare-fun b!2465680 () Bool)

(declare-fun res!1044343 () Bool)

(assert (=> b!2465680 (=> (not res!1044343) (not e!1563643))))

(assert (=> b!2465680 (= res!1044343 (= i!1803 0))))

(declare-fun b!2465681 () Bool)

(declare-fun res!1044346 () Bool)

(assert (=> b!2465681 (=> (not res!1044346) (not e!1563643))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!600 (LexerInterface!4061 List!28803 List!28802) Bool)

(assert (=> b!2465681 (= res!1044346 (tokensListTwoByTwoPredicateSeparableList!600 thiss!27932 l!6611 rules!4472))))

(declare-fun e!1563635 () Bool)

(assert (=> b!2465682 (= e!1563635 (and tp!786334 tp!786326))))

(assert (=> b!2465683 (= e!1563646 (and tp!786323 tp!786336))))

(declare-fun b!2465684 () Bool)

(declare-fun res!1044349 () Bool)

(assert (=> b!2465684 (=> (not res!1044349) (not e!1563643))))

(declare-fun isEmpty!16686 (List!28802) Bool)

(assert (=> b!2465684 (= res!1044349 (not (isEmpty!16686 rules!4472)))))

(declare-fun b!2465685 () Bool)

(declare-fun res!1044348 () Bool)

(assert (=> b!2465685 (=> (not res!1044348) (not e!1563643))))

(assert (=> b!2465685 (= res!1044348 (= (apply!6748 l!6611 i!1803) t1!67))))

(declare-fun b!2465686 () Bool)

(declare-fun res!1044352 () Bool)

(assert (=> b!2465686 (=> (not res!1044352) (not e!1563643))))

(declare-fun separableTokensPredicate!841 (LexerInterface!4061 Token!8398 Token!8398 List!28802) Bool)

(assert (=> b!2465686 (= res!1044352 (separableTokensPredicate!841 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2465687 () Bool)

(declare-fun tp!786330 () Bool)

(assert (=> b!2465687 (= e!1563649 (and tp!786330 (inv!38788 (tag!4954 (rule!6822 t2!67))) (inv!38791 (transformation!4464 (rule!6822 t2!67))) e!1563635))))

(declare-fun b!2465688 () Bool)

(declare-fun res!1044350 () Bool)

(assert (=> b!2465688 (=> (not res!1044350) (not e!1563643))))

(declare-fun size!22341 (List!28803) Int)

(assert (=> b!2465688 (= res!1044350 (< (+ 1 i!1803) (size!22341 l!6611)))))

(declare-fun b!2465689 () Bool)

(declare-fun tp!786324 () Bool)

(assert (=> b!2465689 (= e!1563636 (and (inv!21 (value!142631 t1!67)) e!1563641 tp!786324))))

(declare-fun b!2465690 () Bool)

(declare-fun res!1044342 () Bool)

(assert (=> b!2465690 (=> (not res!1044342) (not e!1563643))))

(assert (=> b!2465690 (= res!1044342 (>= i!1803 0))))

(assert (= (and start!240472 res!1044345) b!2465684))

(assert (= (and b!2465684 res!1044349) b!2465667))

(assert (= (and b!2465667 res!1044351) b!2465677))

(assert (= (and b!2465677 res!1044347) b!2465681))

(assert (= (and b!2465681 res!1044346) b!2465690))

(assert (= (and b!2465690 res!1044342) b!2465688))

(assert (= (and b!2465688 res!1044350) b!2465685))

(assert (= (and b!2465685 res!1044348) b!2465670))

(assert (= (and b!2465670 res!1044344) b!2465680))

(assert (= (and b!2465680 res!1044343) b!2465686))

(assert (= (and b!2465686 res!1044352) b!2465668))

(assert (= b!2465676 b!2465674))

(assert (= b!2465679 b!2465676))

(assert (= (and start!240472 (is-Cons!28702 rules!4472)) b!2465679))

(assert (= b!2465687 b!2465682))

(assert (= b!2465675 b!2465687))

(assert (= start!240472 b!2465675))

(assert (= b!2465669 b!2465678))

(assert (= b!2465672 b!2465669))

(assert (= b!2465673 b!2465672))

(assert (= (and start!240472 (is-Cons!28703 l!6611)) b!2465673))

(assert (= b!2465671 b!2465683))

(assert (= b!2465689 b!2465671))

(assert (= start!240472 b!2465689))

(declare-fun m!2835191 () Bool)

(assert (=> b!2465669 m!2835191))

(declare-fun m!2835193 () Bool)

(assert (=> b!2465669 m!2835193))

(declare-fun m!2835195 () Bool)

(assert (=> b!2465686 m!2835195))

(declare-fun m!2835197 () Bool)

(assert (=> b!2465668 m!2835197))

(declare-fun m!2835199 () Bool)

(assert (=> b!2465668 m!2835199))

(declare-fun m!2835201 () Bool)

(assert (=> b!2465668 m!2835201))

(declare-fun m!2835203 () Bool)

(assert (=> b!2465687 m!2835203))

(declare-fun m!2835205 () Bool)

(assert (=> b!2465687 m!2835205))

(declare-fun m!2835207 () Bool)

(assert (=> b!2465667 m!2835207))

(declare-fun m!2835209 () Bool)

(assert (=> b!2465684 m!2835209))

(declare-fun m!2835211 () Bool)

(assert (=> b!2465681 m!2835211))

(declare-fun m!2835213 () Bool)

(assert (=> b!2465671 m!2835213))

(declare-fun m!2835215 () Bool)

(assert (=> b!2465671 m!2835215))

(declare-fun m!2835217 () Bool)

(assert (=> b!2465685 m!2835217))

(declare-fun m!2835219 () Bool)

(assert (=> b!2465672 m!2835219))

(declare-fun m!2835221 () Bool)

(assert (=> b!2465688 m!2835221))

(declare-fun m!2835223 () Bool)

(assert (=> start!240472 m!2835223))

(declare-fun m!2835225 () Bool)

(assert (=> start!240472 m!2835225))

(declare-fun m!2835227 () Bool)

(assert (=> b!2465670 m!2835227))

(declare-fun m!2835229 () Bool)

(assert (=> b!2465689 m!2835229))

(declare-fun m!2835231 () Bool)

(assert (=> b!2465676 m!2835231))

(declare-fun m!2835233 () Bool)

(assert (=> b!2465676 m!2835233))

(declare-fun m!2835235 () Bool)

(assert (=> b!2465675 m!2835235))

(declare-fun m!2835237 () Bool)

(assert (=> b!2465673 m!2835237))

(declare-fun m!2835239 () Bool)

(assert (=> b!2465677 m!2835239))

(push 1)

(assert (not b!2465687))

(assert (not b!2465688))

(assert (not b_next!71589))

(assert (not b!2465677))

(assert b_and!186319)

(assert (not b!2465672))

(assert (not b_next!71601))

(assert (not b!2465685))

(assert (not b!2465670))

(assert b_and!186317)

(assert (not b_next!71597))

(assert (not b_next!71593))

(assert b_and!186313)

(assert (not start!240472))

(assert (not b!2465671))

(assert (not b_next!71603))

(assert (not b!2465667))

(assert (not b!2465681))

(assert (not b!2465668))

(assert (not b_next!71595))

(assert (not b!2465679))

(assert (not b!2465689))

(assert b_and!186311)

(assert (not b!2465686))

(assert b_and!186321)

(assert b_and!186315)

(assert (not b!2465673))

(assert (not b!2465676))

(assert (not b!2465675))

(assert (not b_next!71591))

(assert (not b!2465669))

(assert (not b_next!71599))

(assert b_and!186323)

(assert (not b!2465684))

(assert b_and!186309)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71589))

(assert b_and!186319)

(assert (not b_next!71603))

(assert (not b_next!71595))

(assert b_and!186311)

(assert (not b_next!71601))

(assert (not b_next!71591))

(assert b_and!186309)

(assert b_and!186317)

(assert (not b_next!71597))

(assert (not b_next!71593))

(assert b_and!186313)

(assert b_and!186321)

(assert b_and!186315)

(assert (not b_next!71599))

(assert b_and!186323)

(check-sat)

(pop 1)

