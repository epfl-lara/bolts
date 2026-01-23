; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298258 () Bool)

(assert start!298258)

(declare-fun b!3182637 () Bool)

(declare-fun b_free!83945 () Bool)

(declare-fun b_next!84649 () Bool)

(assert (=> b!3182637 (= b_free!83945 (not b_next!84649))))

(declare-fun tp!1006744 () Bool)

(declare-fun b_and!210455 () Bool)

(assert (=> b!3182637 (= tp!1006744 b_and!210455)))

(declare-fun b_free!83947 () Bool)

(declare-fun b_next!84651 () Bool)

(assert (=> b!3182637 (= b_free!83947 (not b_next!84651))))

(declare-fun tp!1006743 () Bool)

(declare-fun b_and!210457 () Bool)

(assert (=> b!3182637 (= tp!1006743 b_and!210457)))

(declare-fun b!3182618 () Bool)

(declare-fun b_free!83949 () Bool)

(declare-fun b_next!84653 () Bool)

(assert (=> b!3182618 (= b_free!83949 (not b_next!84653))))

(declare-fun tp!1006737 () Bool)

(declare-fun b_and!210459 () Bool)

(assert (=> b!3182618 (= tp!1006737 b_and!210459)))

(declare-fun b_free!83951 () Bool)

(declare-fun b_next!84655 () Bool)

(assert (=> b!3182618 (= b_free!83951 (not b_next!84655))))

(declare-fun tp!1006739 () Bool)

(declare-fun b_and!210461 () Bool)

(assert (=> b!3182618 (= tp!1006739 b_and!210461)))

(declare-fun b!3182620 () Bool)

(declare-fun b_free!83953 () Bool)

(declare-fun b_next!84657 () Bool)

(assert (=> b!3182620 (= b_free!83953 (not b_next!84657))))

(declare-fun tp!1006734 () Bool)

(declare-fun b_and!210463 () Bool)

(assert (=> b!3182620 (= tp!1006734 b_and!210463)))

(declare-fun b_free!83955 () Bool)

(declare-fun b_next!84659 () Bool)

(assert (=> b!3182620 (= b_free!83955 (not b_next!84659))))

(declare-fun tp!1006740 () Bool)

(declare-fun b_and!210465 () Bool)

(assert (=> b!3182620 (= tp!1006740 b_and!210465)))

(declare-fun b!3182611 () Bool)

(declare-datatypes ((C!19952 0))(
  ( (C!19953 (val!12024 Int)) )
))
(declare-datatypes ((Regex!9883 0))(
  ( (ElementMatch!9883 (c!534540 C!19952)) (Concat!15237 (regOne!20278 Regex!9883) (regTwo!20278 Regex!9883)) (EmptyExpr!9883) (Star!9883 (reg!10212 Regex!9883)) (EmptyLang!9883) (Union!9883 (regOne!20279 Regex!9883) (regTwo!20279 Regex!9883)) )
))
(declare-datatypes ((List!35880 0))(
  ( (Nil!35756) (Cons!35756 (h!41176 (_ BitVec 16)) (t!235301 List!35880)) )
))
(declare-datatypes ((TokenValue!5354 0))(
  ( (FloatLiteralValue!10708 (text!37923 List!35880)) (TokenValueExt!5353 (__x!22925 Int)) (Broken!26770 (value!166468 List!35880)) (Object!5477) (End!5354) (Def!5354) (Underscore!5354) (Match!5354) (Else!5354) (Error!5354) (Case!5354) (If!5354) (Extends!5354) (Abstract!5354) (Class!5354) (Val!5354) (DelimiterValue!10708 (del!5414 List!35880)) (KeywordValue!5360 (value!166469 List!35880)) (CommentValue!10708 (value!166470 List!35880)) (WhitespaceValue!10708 (value!166471 List!35880)) (IndentationValue!5354 (value!166472 List!35880)) (String!40103) (Int32!5354) (Broken!26771 (value!166473 List!35880)) (Boolean!5355) (Unit!50159) (OperatorValue!5357 (op!5414 List!35880)) (IdentifierValue!10708 (value!166474 List!35880)) (IdentifierValue!10709 (value!166475 List!35880)) (WhitespaceValue!10709 (value!166476 List!35880)) (True!10708) (False!10708) (Broken!26772 (value!166477 List!35880)) (Broken!26773 (value!166478 List!35880)) (True!10709) (RightBrace!5354) (RightBracket!5354) (Colon!5354) (Null!5354) (Comma!5354) (LeftBracket!5354) (False!10709) (LeftBrace!5354) (ImaginaryLiteralValue!5354 (text!37924 List!35880)) (StringLiteralValue!16062 (value!166479 List!35880)) (EOFValue!5354 (value!166480 List!35880)) (IdentValue!5354 (value!166481 List!35880)) (DelimiterValue!10709 (value!166482 List!35880)) (DedentValue!5354 (value!166483 List!35880)) (NewLineValue!5354 (value!166484 List!35880)) (IntegerValue!16062 (value!166485 (_ BitVec 32)) (text!37925 List!35880)) (IntegerValue!16063 (value!166486 Int) (text!37926 List!35880)) (Times!5354) (Or!5354) (Equal!5354) (Minus!5354) (Broken!26774 (value!166487 List!35880)) (And!5354) (Div!5354) (LessEqual!5354) (Mod!5354) (Concat!15238) (Not!5354) (Plus!5354) (SpaceValue!5354 (value!166488 List!35880)) (IntegerValue!16064 (value!166489 Int) (text!37927 List!35880)) (StringLiteralValue!16063 (text!37928 List!35880)) (FloatLiteralValue!10709 (text!37929 List!35880)) (BytesLiteralValue!5354 (value!166490 List!35880)) (CommentValue!10709 (value!166491 List!35880)) (StringLiteralValue!16064 (value!166492 List!35880)) (ErrorTokenValue!5354 (msg!5415 List!35880)) )
))
(declare-datatypes ((List!35881 0))(
  ( (Nil!35757) (Cons!35757 (h!41177 C!19952) (t!235302 List!35881)) )
))
(declare-datatypes ((IArray!21251 0))(
  ( (IArray!21252 (innerList!10683 List!35881)) )
))
(declare-datatypes ((Conc!10623 0))(
  ( (Node!10623 (left!27811 Conc!10623) (right!28141 Conc!10623) (csize!21476 Int) (cheight!10834 Int)) (Leaf!16796 (xs!13741 IArray!21251) (csize!21477 Int)) (Empty!10623) )
))
(declare-datatypes ((BalanceConc!20860 0))(
  ( (BalanceConc!20861 (c!534541 Conc!10623)) )
))
(declare-datatypes ((String!40104 0))(
  ( (String!40105 (value!166493 String)) )
))
(declare-datatypes ((TokenValueInjection!10136 0))(
  ( (TokenValueInjection!10137 (toValue!7184 Int) (toChars!7043 Int)) )
))
(declare-datatypes ((Rule!10048 0))(
  ( (Rule!10049 (regex!5124 Regex!9883) (tag!5634 String!40104) (isSeparator!5124 Bool) (transformation!5124 TokenValueInjection!10136)) )
))
(declare-datatypes ((Token!9614 0))(
  ( (Token!9615 (value!166494 TokenValue!5354) (rule!7540 Rule!10048) (size!26982 Int) (originalCharacters!5838 List!35881)) )
))
(declare-datatypes ((List!35882 0))(
  ( (Nil!35758) (Cons!35758 (h!41178 Token!9614) (t!235303 List!35882)) )
))
(declare-fun tokens!494 () List!35882)

(declare-fun tp!1006736 () Bool)

(declare-fun e!1982931 () Bool)

(declare-fun e!1982926 () Bool)

(declare-fun inv!48606 (String!40104) Bool)

(declare-fun inv!48609 (TokenValueInjection!10136) Bool)

(assert (=> b!3182611 (= e!1982931 (and tp!1006736 (inv!48606 (tag!5634 (rule!7540 (h!41178 tokens!494)))) (inv!48609 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) e!1982926))))

(declare-fun b!3182612 () Bool)

(declare-fun e!1982935 () Bool)

(declare-fun e!1982941 () Bool)

(assert (=> b!3182612 (= e!1982935 (not e!1982941))))

(declare-fun res!1293582 () Bool)

(assert (=> b!3182612 (=> res!1293582 e!1982941)))

(declare-fun lt!1070018 () List!35881)

(declare-fun lt!1070002 () List!35881)

(assert (=> b!3182612 (= res!1293582 (not (= lt!1070018 lt!1070002)))))

(declare-datatypes ((LexerInterface!4713 0))(
  ( (LexerInterfaceExt!4710 (__x!22926 Int)) (Lexer!4711) )
))
(declare-fun thiss!18206 () LexerInterface!4713)

(declare-fun printList!1267 (LexerInterface!4713 List!35882) List!35881)

(assert (=> b!3182612 (= lt!1070002 (printList!1267 thiss!18206 (Cons!35758 (h!41178 tokens!494) Nil!35758)))))

(declare-fun lt!1070004 () BalanceConc!20860)

(declare-fun list!12693 (BalanceConc!20860) List!35881)

(assert (=> b!3182612 (= lt!1070018 (list!12693 lt!1070004))))

(declare-datatypes ((IArray!21253 0))(
  ( (IArray!21254 (innerList!10684 List!35882)) )
))
(declare-datatypes ((Conc!10624 0))(
  ( (Node!10624 (left!27812 Conc!10624) (right!28142 Conc!10624) (csize!21478 Int) (cheight!10835 Int)) (Leaf!16797 (xs!13742 IArray!21253) (csize!21479 Int)) (Empty!10624) )
))
(declare-datatypes ((BalanceConc!20862 0))(
  ( (BalanceConc!20863 (c!534542 Conc!10624)) )
))
(declare-fun lt!1070016 () BalanceConc!20862)

(declare-fun printTailRec!1212 (LexerInterface!4713 BalanceConc!20862 Int BalanceConc!20860) BalanceConc!20860)

(assert (=> b!3182612 (= lt!1070004 (printTailRec!1212 thiss!18206 lt!1070016 0 (BalanceConc!20861 Empty!10623)))))

(declare-fun print!1780 (LexerInterface!4713 BalanceConc!20862) BalanceConc!20860)

(assert (=> b!3182612 (= lt!1070004 (print!1780 thiss!18206 lt!1070016))))

(declare-fun singletonSeq!2220 (Token!9614) BalanceConc!20862)

(assert (=> b!3182612 (= lt!1070016 (singletonSeq!2220 (h!41178 tokens!494)))))

(declare-fun tp!1006742 () Bool)

(declare-fun separatorToken!241 () Token!9614)

(declare-fun b!3182613 () Bool)

(declare-fun e!1982933 () Bool)

(declare-fun e!1982940 () Bool)

(declare-fun inv!21 (TokenValue!5354) Bool)

(assert (=> b!3182613 (= e!1982940 (and (inv!21 (value!166494 separatorToken!241)) e!1982933 tp!1006742))))

(declare-fun b!3182614 () Bool)

(declare-fun e!1982929 () Bool)

(declare-fun e!1982927 () Bool)

(assert (=> b!3182614 (= e!1982929 e!1982927)))

(declare-fun res!1293575 () Bool)

(assert (=> b!3182614 (=> (not res!1293575) (not e!1982927))))

(declare-fun lt!1070006 () Rule!10048)

(declare-fun lt!1070011 () List!35881)

(declare-fun matchR!4541 (Regex!9883 List!35881) Bool)

(assert (=> b!3182614 (= res!1293575 (matchR!4541 (regex!5124 lt!1070006) lt!1070011))))

(declare-datatypes ((Option!6979 0))(
  ( (None!6978) (Some!6978 (v!35440 Rule!10048)) )
))
(declare-fun lt!1070007 () Option!6979)

(declare-fun get!11373 (Option!6979) Rule!10048)

(assert (=> b!3182614 (= lt!1070006 (get!11373 lt!1070007))))

(declare-fun b!3182615 () Bool)

(declare-fun res!1293588 () Bool)

(assert (=> b!3182615 (=> (not res!1293588) (not e!1982935))))

(get-info :version)

(assert (=> b!3182615 (= res!1293588 (and (not ((_ is Nil!35758) tokens!494)) ((_ is Nil!35758) (t!235303 tokens!494))))))

(declare-fun b!3182616 () Bool)

(declare-fun e!1982924 () Bool)

(assert (=> b!3182616 (= e!1982924 false)))

(declare-fun b!3182617 () Bool)

(declare-fun e!1982943 () Bool)

(declare-fun e!1982937 () Bool)

(assert (=> b!3182617 (= e!1982943 e!1982937)))

(declare-fun res!1293581 () Bool)

(assert (=> b!3182617 (=> res!1293581 e!1982937)))

(declare-fun lt!1070020 () BalanceConc!20860)

(declare-fun lt!1070024 () List!35881)

(declare-fun ++!8550 (List!35881 List!35881) List!35881)

(assert (=> b!3182617 (= res!1293581 (not (= (list!12693 lt!1070020) (++!8550 lt!1070024 lt!1070011))))))

(declare-fun charsOf!3146 (Token!9614) BalanceConc!20860)

(assert (=> b!3182617 (= lt!1070011 (list!12693 (charsOf!3146 separatorToken!241)))))

(declare-fun lt!1070022 () BalanceConc!20862)

(declare-fun printWithSeparatorToken!22 (LexerInterface!4713 BalanceConc!20862 Token!9614) BalanceConc!20860)

(assert (=> b!3182617 (= lt!1070020 (printWithSeparatorToken!22 thiss!18206 lt!1070022 separatorToken!241))))

(declare-fun e!1982925 () Bool)

(assert (=> b!3182618 (= e!1982925 (and tp!1006737 tp!1006739))))

(declare-fun b!3182619 () Bool)

(declare-datatypes ((Unit!50160 0))(
  ( (Unit!50161) )
))
(declare-fun e!1982947 () Unit!50160)

(declare-fun Unit!50162 () Unit!50160)

(assert (=> b!3182619 (= e!1982947 Unit!50162)))

(assert (=> b!3182620 (= e!1982926 (and tp!1006734 tp!1006740))))

(declare-fun b!3182621 () Bool)

(declare-fun res!1293571 () Bool)

(assert (=> b!3182621 (=> (not res!1293571) (not e!1982935))))

(declare-fun lambda!116443 () Int)

(declare-fun forall!7240 (List!35882 Int) Bool)

(assert (=> b!3182621 (= res!1293571 (forall!7240 tokens!494 lambda!116443))))

(declare-fun b!3182622 () Bool)

(assert (=> b!3182622 (= e!1982927 (= (rule!7540 separatorToken!241) lt!1070006))))

(declare-fun b!3182623 () Bool)

(declare-fun e!1982923 () Bool)

(declare-fun e!1982932 () Bool)

(declare-fun tp!1006738 () Bool)

(assert (=> b!3182623 (= e!1982923 (and e!1982932 tp!1006738))))

(declare-fun b!3182624 () Bool)

(declare-fun res!1293583 () Bool)

(assert (=> b!3182624 (=> (not res!1293583) (not e!1982935))))

(assert (=> b!3182624 (= res!1293583 (isSeparator!5124 (rule!7540 separatorToken!241)))))

(declare-fun tp!1006735 () Bool)

(declare-fun b!3182625 () Bool)

(assert (=> b!3182625 (= e!1982933 (and tp!1006735 (inv!48606 (tag!5634 (rule!7540 separatorToken!241))) (inv!48609 (transformation!5124 (rule!7540 separatorToken!241))) e!1982925))))

(declare-fun b!3182626 () Bool)

(declare-fun e!1982945 () Bool)

(declare-fun e!1982950 () Bool)

(assert (=> b!3182626 (= e!1982945 e!1982950)))

(declare-fun res!1293584 () Bool)

(assert (=> b!3182626 (=> (not res!1293584) (not e!1982950))))

(declare-fun lt!1070010 () Rule!10048)

(assert (=> b!3182626 (= res!1293584 (matchR!4541 (regex!5124 lt!1070010) lt!1070024))))

(declare-fun lt!1070019 () Option!6979)

(assert (=> b!3182626 (= lt!1070010 (get!11373 lt!1070019))))

(declare-fun b!3182627 () Bool)

(assert (=> b!3182627 (= e!1982950 (= (rule!7540 (h!41178 tokens!494)) lt!1070010))))

(declare-fun b!3182628 () Bool)

(declare-fun res!1293576 () Bool)

(declare-fun e!1982944 () Bool)

(assert (=> b!3182628 (=> res!1293576 e!1982944)))

(declare-datatypes ((List!35883 0))(
  ( (Nil!35759) (Cons!35759 (h!41179 Rule!10048) (t!235304 List!35883)) )
))
(declare-fun rules!2135 () List!35883)

(declare-fun rulesProduceIndividualToken!2205 (LexerInterface!4713 List!35883 Token!9614) Bool)

(assert (=> b!3182628 (= res!1293576 (not (rulesProduceIndividualToken!2205 thiss!18206 rules!2135 (h!41178 tokens!494))))))

(declare-fun b!3182629 () Bool)

(declare-fun res!1293570 () Bool)

(declare-fun e!1982948 () Bool)

(assert (=> b!3182629 (=> (not res!1293570) (not e!1982948))))

(declare-fun rulesInvariant!4110 (LexerInterface!4713 List!35883) Bool)

(assert (=> b!3182629 (= res!1293570 (rulesInvariant!4110 thiss!18206 rules!2135))))

(declare-fun b!3182630 () Bool)

(declare-fun res!1293589 () Bool)

(assert (=> b!3182630 (=> (not res!1293589) (not e!1982935))))

(declare-fun sepAndNonSepRulesDisjointChars!1318 (List!35883 List!35883) Bool)

(assert (=> b!3182630 (= res!1293589 (sepAndNonSepRulesDisjointChars!1318 rules!2135 rules!2135))))

(declare-fun b!3182631 () Bool)

(declare-fun e!1982928 () Bool)

(assert (=> b!3182631 (= e!1982928 e!1982943)))

(declare-fun res!1293585 () Bool)

(assert (=> b!3182631 (=> res!1293585 e!1982943)))

(assert (=> b!3182631 (= res!1293585 (isSeparator!5124 (rule!7540 (h!41178 tokens!494))))))

(declare-fun lt!1070005 () Unit!50160)

(declare-fun forallContained!1107 (List!35882 Int Token!9614) Unit!50160)

(assert (=> b!3182631 (= lt!1070005 (forallContained!1107 tokens!494 lambda!116443 (h!41178 tokens!494)))))

(declare-fun tp!1006732 () Bool)

(declare-fun e!1982930 () Bool)

(declare-fun b!3182632 () Bool)

(assert (=> b!3182632 (= e!1982930 (and (inv!21 (value!166494 (h!41178 tokens!494))) e!1982931 tp!1006732))))

(declare-fun b!3182633 () Bool)

(assert (=> b!3182633 (= e!1982941 e!1982944)))

(declare-fun res!1293579 () Bool)

(assert (=> b!3182633 (=> res!1293579 e!1982944)))

(assert (=> b!3182633 (= res!1293579 (or (not (= lt!1070002 lt!1070024)) (not (= lt!1070018 lt!1070024))))))

(assert (=> b!3182633 (= lt!1070024 (list!12693 (charsOf!3146 (h!41178 tokens!494))))))

(declare-fun b!3182634 () Bool)

(declare-fun res!1293577 () Bool)

(assert (=> b!3182634 (=> (not res!1293577) (not e!1982948))))

(declare-fun isEmpty!19881 (List!35883) Bool)

(assert (=> b!3182634 (= res!1293577 (not (isEmpty!19881 rules!2135)))))

(declare-fun b!3182635 () Bool)

(declare-fun Unit!50163 () Unit!50160)

(assert (=> b!3182635 (= e!1982947 Unit!50163)))

(declare-fun lt!1070023 () Unit!50160)

(declare-fun lt!1070013 () C!19952)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!322 (Regex!9883 List!35881 C!19952) Unit!50160)

(assert (=> b!3182635 (= lt!1070023 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!322 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011 lt!1070013))))

(declare-fun res!1293578 () Bool)

(assert (=> b!3182635 (= res!1293578 (not (matchR!4541 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011)))))

(assert (=> b!3182635 (=> (not res!1293578) (not e!1982924))))

(assert (=> b!3182635 e!1982924))

(declare-fun b!3182636 () Bool)

(declare-fun res!1293580 () Bool)

(assert (=> b!3182636 (=> (not res!1293580) (not e!1982935))))

(assert (=> b!3182636 (= res!1293580 (rulesProduceIndividualToken!2205 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1982936 () Bool)

(assert (=> b!3182637 (= e!1982936 (and tp!1006744 tp!1006743))))

(declare-fun b!3182638 () Bool)

(declare-fun lt!1070021 () Bool)

(assert (=> b!3182638 (= e!1982937 (or lt!1070021 (not (= lt!1070011 Nil!35757))))))

(declare-fun lt!1070008 () Unit!50160)

(assert (=> b!3182638 (= lt!1070008 e!1982947)))

(declare-fun c!534539 () Bool)

(assert (=> b!3182638 (= c!534539 lt!1070021)))

(declare-fun contains!6327 (List!35881 C!19952) Bool)

(declare-fun usedCharacters!468 (Regex!9883) List!35881)

(assert (=> b!3182638 (= lt!1070021 (not (contains!6327 (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241))) lt!1070013)))))

(declare-fun head!6951 (List!35881) C!19952)

(assert (=> b!3182638 (= lt!1070013 (head!6951 lt!1070011))))

(declare-fun lt!1070009 () BalanceConc!20860)

(declare-datatypes ((tuple2!35102 0))(
  ( (tuple2!35103 (_1!20685 Token!9614) (_2!20685 List!35881)) )
))
(declare-datatypes ((Option!6980 0))(
  ( (None!6979) (Some!6979 (v!35441 tuple2!35102)) )
))
(declare-fun maxPrefixOneRule!1518 (LexerInterface!4713 Rule!10048 List!35881) Option!6980)

(declare-fun apply!8044 (TokenValueInjection!10136 BalanceConc!20860) TokenValue!5354)

(declare-fun size!26983 (List!35881) Int)

(assert (=> b!3182638 (= (maxPrefixOneRule!1518 thiss!18206 (rule!7540 (h!41178 tokens!494)) lt!1070024) (Some!6979 (tuple2!35103 (Token!9615 (apply!8044 (transformation!5124 (rule!7540 (h!41178 tokens!494))) lt!1070009) (rule!7540 (h!41178 tokens!494)) (size!26983 lt!1070024) lt!1070024) Nil!35757)))))

(declare-fun lt!1070017 () Unit!50160)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!631 (LexerInterface!4713 List!35883 List!35881 List!35881 List!35881 Rule!10048) Unit!50160)

(assert (=> b!3182638 (= lt!1070017 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!631 thiss!18206 rules!2135 lt!1070024 lt!1070024 Nil!35757 (rule!7540 (h!41178 tokens!494))))))

(assert (=> b!3182638 e!1982929))

(declare-fun res!1293574 () Bool)

(assert (=> b!3182638 (=> (not res!1293574) (not e!1982929))))

(declare-fun isDefined!5468 (Option!6979) Bool)

(assert (=> b!3182638 (= res!1293574 (isDefined!5468 lt!1070007))))

(declare-fun getRuleFromTag!853 (LexerInterface!4713 List!35883 String!40104) Option!6979)

(assert (=> b!3182638 (= lt!1070007 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 separatorToken!241))))))

(declare-fun lt!1070014 () Unit!50160)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!853 (LexerInterface!4713 List!35883 List!35881 Token!9614) Unit!50160)

(assert (=> b!3182638 (= lt!1070014 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!853 thiss!18206 rules!2135 lt!1070011 separatorToken!241))))

(assert (=> b!3182638 e!1982945))

(declare-fun res!1293586 () Bool)

(assert (=> b!3182638 (=> (not res!1293586) (not e!1982945))))

(assert (=> b!3182638 (= res!1293586 (isDefined!5468 lt!1070019))))

(assert (=> b!3182638 (= lt!1070019 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 (h!41178 tokens!494)))))))

(declare-fun lt!1070012 () Unit!50160)

(assert (=> b!3182638 (= lt!1070012 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!853 thiss!18206 rules!2135 lt!1070024 (h!41178 tokens!494)))))

(declare-fun lt!1070015 () Unit!50160)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!774 (LexerInterface!4713 List!35883 List!35882 Token!9614) Unit!50160)

(assert (=> b!3182638 (= lt!1070015 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!774 thiss!18206 rules!2135 tokens!494 (h!41178 tokens!494)))))

(declare-fun isEmpty!19882 (List!35881) Bool)

(declare-fun getSuffix!1340 (List!35881 List!35881) List!35881)

(assert (=> b!3182638 (isEmpty!19882 (getSuffix!1340 lt!1070024 lt!1070024))))

(declare-fun lt!1070003 () Unit!50160)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!18 (List!35881) Unit!50160)

(assert (=> b!3182638 (= lt!1070003 (lemmaGetSuffixOnListWithItSelfIsEmpty!18 lt!1070024))))

(declare-fun b!3182639 () Bool)

(assert (=> b!3182639 (= e!1982948 e!1982935)))

(declare-fun res!1293573 () Bool)

(assert (=> b!3182639 (=> (not res!1293573) (not e!1982935))))

(declare-fun rulesProduceEachTokenIndividually!1164 (LexerInterface!4713 List!35883 BalanceConc!20862) Bool)

(assert (=> b!3182639 (= res!1293573 (rulesProduceEachTokenIndividually!1164 thiss!18206 rules!2135 lt!1070022))))

(declare-fun seqFromList!3327 (List!35882) BalanceConc!20862)

(assert (=> b!3182639 (= lt!1070022 (seqFromList!3327 tokens!494))))

(declare-fun res!1293572 () Bool)

(assert (=> start!298258 (=> (not res!1293572) (not e!1982948))))

(assert (=> start!298258 (= res!1293572 ((_ is Lexer!4711) thiss!18206))))

(assert (=> start!298258 e!1982948))

(assert (=> start!298258 true))

(assert (=> start!298258 e!1982923))

(declare-fun inv!48610 (Token!9614) Bool)

(assert (=> start!298258 (and (inv!48610 separatorToken!241) e!1982940)))

(declare-fun e!1982934 () Bool)

(assert (=> start!298258 e!1982934))

(declare-fun b!3182640 () Bool)

(assert (=> b!3182640 (= e!1982944 e!1982928)))

(declare-fun res!1293587 () Bool)

(assert (=> b!3182640 (=> res!1293587 e!1982928)))

(declare-fun isEmpty!19883 (BalanceConc!20862) Bool)

(declare-datatypes ((tuple2!35104 0))(
  ( (tuple2!35105 (_1!20686 BalanceConc!20862) (_2!20686 BalanceConc!20860)) )
))
(declare-fun lex!2053 (LexerInterface!4713 List!35883 BalanceConc!20860) tuple2!35104)

(assert (=> b!3182640 (= res!1293587 (isEmpty!19883 (_1!20686 (lex!2053 thiss!18206 rules!2135 lt!1070009))))))

(declare-fun seqFromList!3328 (List!35881) BalanceConc!20860)

(assert (=> b!3182640 (= lt!1070009 (seqFromList!3328 lt!1070024))))

(declare-fun b!3182641 () Bool)

(declare-fun tp!1006741 () Bool)

(assert (=> b!3182641 (= e!1982934 (and (inv!48610 (h!41178 tokens!494)) e!1982930 tp!1006741))))

(declare-fun tp!1006733 () Bool)

(declare-fun b!3182642 () Bool)

(assert (=> b!3182642 (= e!1982932 (and tp!1006733 (inv!48606 (tag!5634 (h!41179 rules!2135))) (inv!48609 (transformation!5124 (h!41179 rules!2135))) e!1982936))))

(assert (= (and start!298258 res!1293572) b!3182634))

(assert (= (and b!3182634 res!1293577) b!3182629))

(assert (= (and b!3182629 res!1293570) b!3182639))

(assert (= (and b!3182639 res!1293573) b!3182636))

(assert (= (and b!3182636 res!1293580) b!3182624))

(assert (= (and b!3182624 res!1293583) b!3182621))

(assert (= (and b!3182621 res!1293571) b!3182630))

(assert (= (and b!3182630 res!1293589) b!3182615))

(assert (= (and b!3182615 res!1293588) b!3182612))

(assert (= (and b!3182612 (not res!1293582)) b!3182633))

(assert (= (and b!3182633 (not res!1293579)) b!3182628))

(assert (= (and b!3182628 (not res!1293576)) b!3182640))

(assert (= (and b!3182640 (not res!1293587)) b!3182631))

(assert (= (and b!3182631 (not res!1293585)) b!3182617))

(assert (= (and b!3182617 (not res!1293581)) b!3182638))

(assert (= (and b!3182638 res!1293586) b!3182626))

(assert (= (and b!3182626 res!1293584) b!3182627))

(assert (= (and b!3182638 res!1293574) b!3182614))

(assert (= (and b!3182614 res!1293575) b!3182622))

(assert (= (and b!3182638 c!534539) b!3182635))

(assert (= (and b!3182638 (not c!534539)) b!3182619))

(assert (= (and b!3182635 res!1293578) b!3182616))

(assert (= b!3182642 b!3182637))

(assert (= b!3182623 b!3182642))

(assert (= (and start!298258 ((_ is Cons!35759) rules!2135)) b!3182623))

(assert (= b!3182625 b!3182618))

(assert (= b!3182613 b!3182625))

(assert (= start!298258 b!3182613))

(assert (= b!3182611 b!3182620))

(assert (= b!3182632 b!3182611))

(assert (= b!3182641 b!3182632))

(assert (= (and start!298258 ((_ is Cons!35758) tokens!494)) b!3182641))

(declare-fun m!3439473 () Bool)

(assert (=> b!3182633 m!3439473))

(assert (=> b!3182633 m!3439473))

(declare-fun m!3439475 () Bool)

(assert (=> b!3182633 m!3439475))

(declare-fun m!3439477 () Bool)

(assert (=> b!3182628 m!3439477))

(declare-fun m!3439479 () Bool)

(assert (=> b!3182612 m!3439479))

(declare-fun m!3439481 () Bool)

(assert (=> b!3182612 m!3439481))

(declare-fun m!3439483 () Bool)

(assert (=> b!3182612 m!3439483))

(declare-fun m!3439485 () Bool)

(assert (=> b!3182612 m!3439485))

(declare-fun m!3439487 () Bool)

(assert (=> b!3182612 m!3439487))

(declare-fun m!3439489 () Bool)

(assert (=> b!3182634 m!3439489))

(declare-fun m!3439491 () Bool)

(assert (=> b!3182629 m!3439491))

(declare-fun m!3439493 () Bool)

(assert (=> b!3182636 m!3439493))

(declare-fun m!3439495 () Bool)

(assert (=> b!3182635 m!3439495))

(declare-fun m!3439497 () Bool)

(assert (=> b!3182635 m!3439497))

(declare-fun m!3439499 () Bool)

(assert (=> b!3182630 m!3439499))

(declare-fun m!3439501 () Bool)

(assert (=> b!3182611 m!3439501))

(declare-fun m!3439503 () Bool)

(assert (=> b!3182611 m!3439503))

(declare-fun m!3439505 () Bool)

(assert (=> b!3182639 m!3439505))

(declare-fun m!3439507 () Bool)

(assert (=> b!3182639 m!3439507))

(declare-fun m!3439509 () Bool)

(assert (=> b!3182626 m!3439509))

(declare-fun m!3439511 () Bool)

(assert (=> b!3182626 m!3439511))

(declare-fun m!3439513 () Bool)

(assert (=> b!3182621 m!3439513))

(declare-fun m!3439515 () Bool)

(assert (=> b!3182632 m!3439515))

(declare-fun m!3439517 () Bool)

(assert (=> b!3182642 m!3439517))

(declare-fun m!3439519 () Bool)

(assert (=> b!3182642 m!3439519))

(declare-fun m!3439521 () Bool)

(assert (=> b!3182613 m!3439521))

(declare-fun m!3439523 () Bool)

(assert (=> b!3182640 m!3439523))

(declare-fun m!3439525 () Bool)

(assert (=> b!3182640 m!3439525))

(declare-fun m!3439527 () Bool)

(assert (=> b!3182640 m!3439527))

(declare-fun m!3439529 () Bool)

(assert (=> b!3182617 m!3439529))

(declare-fun m!3439531 () Bool)

(assert (=> b!3182617 m!3439531))

(declare-fun m!3439533 () Bool)

(assert (=> b!3182617 m!3439533))

(declare-fun m!3439535 () Bool)

(assert (=> b!3182617 m!3439535))

(assert (=> b!3182617 m!3439529))

(declare-fun m!3439537 () Bool)

(assert (=> b!3182617 m!3439537))

(declare-fun m!3439539 () Bool)

(assert (=> b!3182641 m!3439539))

(declare-fun m!3439541 () Bool)

(assert (=> b!3182625 m!3439541))

(declare-fun m!3439543 () Bool)

(assert (=> b!3182625 m!3439543))

(declare-fun m!3439545 () Bool)

(assert (=> b!3182631 m!3439545))

(declare-fun m!3439547 () Bool)

(assert (=> start!298258 m!3439547))

(declare-fun m!3439549 () Bool)

(assert (=> b!3182638 m!3439549))

(declare-fun m!3439551 () Bool)

(assert (=> b!3182638 m!3439551))

(declare-fun m!3439553 () Bool)

(assert (=> b!3182638 m!3439553))

(declare-fun m!3439555 () Bool)

(assert (=> b!3182638 m!3439555))

(declare-fun m!3439557 () Bool)

(assert (=> b!3182638 m!3439557))

(assert (=> b!3182638 m!3439549))

(declare-fun m!3439559 () Bool)

(assert (=> b!3182638 m!3439559))

(declare-fun m!3439561 () Bool)

(assert (=> b!3182638 m!3439561))

(declare-fun m!3439563 () Bool)

(assert (=> b!3182638 m!3439563))

(declare-fun m!3439565 () Bool)

(assert (=> b!3182638 m!3439565))

(declare-fun m!3439567 () Bool)

(assert (=> b!3182638 m!3439567))

(declare-fun m!3439569 () Bool)

(assert (=> b!3182638 m!3439569))

(declare-fun m!3439571 () Bool)

(assert (=> b!3182638 m!3439571))

(declare-fun m!3439573 () Bool)

(assert (=> b!3182638 m!3439573))

(declare-fun m!3439575 () Bool)

(assert (=> b!3182638 m!3439575))

(declare-fun m!3439577 () Bool)

(assert (=> b!3182638 m!3439577))

(declare-fun m!3439579 () Bool)

(assert (=> b!3182638 m!3439579))

(assert (=> b!3182638 m!3439571))

(declare-fun m!3439581 () Bool)

(assert (=> b!3182638 m!3439581))

(declare-fun m!3439583 () Bool)

(assert (=> b!3182614 m!3439583))

(declare-fun m!3439585 () Bool)

(assert (=> b!3182614 m!3439585))

(check-sat (not b_next!84655) (not b!3182614) b_and!210461 (not b!3182613) b_and!210457 (not b!3182631) (not b!3182628) (not b!3182634) (not b!3182635) (not b!3182636) (not b!3182629) (not b!3182626) b_and!210463 (not b!3182638) (not b!3182632) (not b!3182611) (not b!3182633) (not b_next!84657) (not b_next!84653) (not b_next!84659) (not b_next!84651) (not b!3182617) (not b!3182612) (not start!298258) (not b!3182625) (not b!3182621) (not b!3182639) b_and!210459 (not b!3182641) b_and!210465 (not b!3182642) (not b!3182630) (not b!3182623) (not b!3182640) b_and!210455 (not b_next!84649))
(check-sat b_and!210463 (not b_next!84657) (not b_next!84655) (not b_next!84651) b_and!210461 b_and!210457 b_and!210459 b_and!210465 (not b_next!84653) (not b_next!84659) b_and!210455 (not b_next!84649))
(get-model)

(declare-fun d!870837 () Bool)

(declare-fun res!1293604 () Bool)

(declare-fun e!1982953 () Bool)

(assert (=> d!870837 (=> (not res!1293604) (not e!1982953))))

(assert (=> d!870837 (= res!1293604 (not (isEmpty!19882 (originalCharacters!5838 (h!41178 tokens!494)))))))

(assert (=> d!870837 (= (inv!48610 (h!41178 tokens!494)) e!1982953)))

(declare-fun b!3182647 () Bool)

(declare-fun res!1293605 () Bool)

(assert (=> b!3182647 (=> (not res!1293605) (not e!1982953))))

(declare-fun dynLambda!14426 (Int TokenValue!5354) BalanceConc!20860)

(assert (=> b!3182647 (= res!1293605 (= (originalCharacters!5838 (h!41178 tokens!494)) (list!12693 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (value!166494 (h!41178 tokens!494))))))))

(declare-fun b!3182648 () Bool)

(assert (=> b!3182648 (= e!1982953 (= (size!26982 (h!41178 tokens!494)) (size!26983 (originalCharacters!5838 (h!41178 tokens!494)))))))

(assert (= (and d!870837 res!1293604) b!3182647))

(assert (= (and b!3182647 res!1293605) b!3182648))

(declare-fun b_lambda!86715 () Bool)

(assert (=> (not b_lambda!86715) (not b!3182647)))

(declare-fun t!235306 () Bool)

(declare-fun tb!155335 () Bool)

(assert (=> (and b!3182637 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235306) tb!155335))

(declare-fun b!3182653 () Bool)

(declare-fun e!1982956 () Bool)

(declare-fun tp!1006747 () Bool)

(declare-fun inv!48611 (Conc!10623) Bool)

(assert (=> b!3182653 (= e!1982956 (and (inv!48611 (c!534541 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (value!166494 (h!41178 tokens!494))))) tp!1006747))))

(declare-fun result!197420 () Bool)

(declare-fun inv!48612 (BalanceConc!20860) Bool)

(assert (=> tb!155335 (= result!197420 (and (inv!48612 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (value!166494 (h!41178 tokens!494)))) e!1982956))))

(assert (= tb!155335 b!3182653))

(declare-fun m!3439587 () Bool)

(assert (=> b!3182653 m!3439587))

(declare-fun m!3439589 () Bool)

(assert (=> tb!155335 m!3439589))

(assert (=> b!3182647 t!235306))

(declare-fun b_and!210467 () Bool)

(assert (= b_and!210457 (and (=> t!235306 result!197420) b_and!210467)))

(declare-fun t!235308 () Bool)

(declare-fun tb!155337 () Bool)

(assert (=> (and b!3182618 (= (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235308) tb!155337))

(declare-fun result!197424 () Bool)

(assert (= result!197424 result!197420))

(assert (=> b!3182647 t!235308))

(declare-fun b_and!210469 () Bool)

(assert (= b_and!210461 (and (=> t!235308 result!197424) b_and!210469)))

(declare-fun t!235310 () Bool)

(declare-fun tb!155339 () Bool)

(assert (=> (and b!3182620 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235310) tb!155339))

(declare-fun result!197426 () Bool)

(assert (= result!197426 result!197420))

(assert (=> b!3182647 t!235310))

(declare-fun b_and!210471 () Bool)

(assert (= b_and!210465 (and (=> t!235310 result!197426) b_and!210471)))

(declare-fun m!3439591 () Bool)

(assert (=> d!870837 m!3439591))

(declare-fun m!3439593 () Bool)

(assert (=> b!3182647 m!3439593))

(assert (=> b!3182647 m!3439593))

(declare-fun m!3439595 () Bool)

(assert (=> b!3182647 m!3439595))

(declare-fun m!3439597 () Bool)

(assert (=> b!3182648 m!3439597))

(assert (=> b!3182641 d!870837))

(declare-fun d!870839 () Bool)

(declare-fun res!1293610 () Bool)

(declare-fun e!1982961 () Bool)

(assert (=> d!870839 (=> res!1293610 e!1982961)))

(assert (=> d!870839 (= res!1293610 (not ((_ is Cons!35759) rules!2135)))))

(assert (=> d!870839 (= (sepAndNonSepRulesDisjointChars!1318 rules!2135 rules!2135) e!1982961)))

(declare-fun b!3182658 () Bool)

(declare-fun e!1982962 () Bool)

(assert (=> b!3182658 (= e!1982961 e!1982962)))

(declare-fun res!1293611 () Bool)

(assert (=> b!3182658 (=> (not res!1293611) (not e!1982962))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!570 (Rule!10048 List!35883) Bool)

(assert (=> b!3182658 (= res!1293611 (ruleDisjointCharsFromAllFromOtherType!570 (h!41179 rules!2135) rules!2135))))

(declare-fun b!3182659 () Bool)

(assert (=> b!3182659 (= e!1982962 (sepAndNonSepRulesDisjointChars!1318 rules!2135 (t!235304 rules!2135)))))

(assert (= (and d!870839 (not res!1293610)) b!3182658))

(assert (= (and b!3182658 res!1293611) b!3182659))

(declare-fun m!3439599 () Bool)

(assert (=> b!3182658 m!3439599))

(declare-fun m!3439601 () Bool)

(assert (=> b!3182659 m!3439601))

(assert (=> b!3182630 d!870839))

(declare-fun d!870841 () Bool)

(declare-fun res!1293616 () Bool)

(declare-fun e!1982967 () Bool)

(assert (=> d!870841 (=> res!1293616 e!1982967)))

(assert (=> d!870841 (= res!1293616 ((_ is Nil!35758) tokens!494))))

(assert (=> d!870841 (= (forall!7240 tokens!494 lambda!116443) e!1982967)))

(declare-fun b!3182664 () Bool)

(declare-fun e!1982968 () Bool)

(assert (=> b!3182664 (= e!1982967 e!1982968)))

(declare-fun res!1293617 () Bool)

(assert (=> b!3182664 (=> (not res!1293617) (not e!1982968))))

(declare-fun dynLambda!14427 (Int Token!9614) Bool)

(assert (=> b!3182664 (= res!1293617 (dynLambda!14427 lambda!116443 (h!41178 tokens!494)))))

(declare-fun b!3182665 () Bool)

(assert (=> b!3182665 (= e!1982968 (forall!7240 (t!235303 tokens!494) lambda!116443))))

(assert (= (and d!870841 (not res!1293616)) b!3182664))

(assert (= (and b!3182664 res!1293617) b!3182665))

(declare-fun b_lambda!86717 () Bool)

(assert (=> (not b_lambda!86717) (not b!3182664)))

(declare-fun m!3439603 () Bool)

(assert (=> b!3182664 m!3439603))

(declare-fun m!3439605 () Bool)

(assert (=> b!3182665 m!3439605))

(assert (=> b!3182621 d!870841))

(declare-fun b!3182676 () Bool)

(declare-fun e!1982976 () Bool)

(declare-fun inv!16 (TokenValue!5354) Bool)

(assert (=> b!3182676 (= e!1982976 (inv!16 (value!166494 (h!41178 tokens!494))))))

(declare-fun b!3182677 () Bool)

(declare-fun e!1982977 () Bool)

(assert (=> b!3182677 (= e!1982976 e!1982977)))

(declare-fun c!534548 () Bool)

(assert (=> b!3182677 (= c!534548 ((_ is IntegerValue!16063) (value!166494 (h!41178 tokens!494))))))

(declare-fun b!3182678 () Bool)

(declare-fun res!1293620 () Bool)

(declare-fun e!1982975 () Bool)

(assert (=> b!3182678 (=> res!1293620 e!1982975)))

(assert (=> b!3182678 (= res!1293620 (not ((_ is IntegerValue!16064) (value!166494 (h!41178 tokens!494)))))))

(assert (=> b!3182678 (= e!1982977 e!1982975)))

(declare-fun b!3182679 () Bool)

(declare-fun inv!15 (TokenValue!5354) Bool)

(assert (=> b!3182679 (= e!1982975 (inv!15 (value!166494 (h!41178 tokens!494))))))

(declare-fun b!3182680 () Bool)

(declare-fun inv!17 (TokenValue!5354) Bool)

(assert (=> b!3182680 (= e!1982977 (inv!17 (value!166494 (h!41178 tokens!494))))))

(declare-fun d!870843 () Bool)

(declare-fun c!534547 () Bool)

(assert (=> d!870843 (= c!534547 ((_ is IntegerValue!16062) (value!166494 (h!41178 tokens!494))))))

(assert (=> d!870843 (= (inv!21 (value!166494 (h!41178 tokens!494))) e!1982976)))

(assert (= (and d!870843 c!534547) b!3182676))

(assert (= (and d!870843 (not c!534547)) b!3182677))

(assert (= (and b!3182677 c!534548) b!3182680))

(assert (= (and b!3182677 (not c!534548)) b!3182678))

(assert (= (and b!3182678 (not res!1293620)) b!3182679))

(declare-fun m!3439607 () Bool)

(assert (=> b!3182676 m!3439607))

(declare-fun m!3439609 () Bool)

(assert (=> b!3182679 m!3439609))

(declare-fun m!3439611 () Bool)

(assert (=> b!3182680 m!3439611))

(assert (=> b!3182632 d!870843))

(declare-fun d!870845 () Bool)

(assert (=> d!870845 (dynLambda!14427 lambda!116443 (h!41178 tokens!494))))

(declare-fun lt!1070027 () Unit!50160)

(declare-fun choose!18563 (List!35882 Int Token!9614) Unit!50160)

(assert (=> d!870845 (= lt!1070027 (choose!18563 tokens!494 lambda!116443 (h!41178 tokens!494)))))

(declare-fun e!1982980 () Bool)

(assert (=> d!870845 e!1982980))

(declare-fun res!1293623 () Bool)

(assert (=> d!870845 (=> (not res!1293623) (not e!1982980))))

(assert (=> d!870845 (= res!1293623 (forall!7240 tokens!494 lambda!116443))))

(assert (=> d!870845 (= (forallContained!1107 tokens!494 lambda!116443 (h!41178 tokens!494)) lt!1070027)))

(declare-fun b!3182683 () Bool)

(declare-fun contains!6329 (List!35882 Token!9614) Bool)

(assert (=> b!3182683 (= e!1982980 (contains!6329 tokens!494 (h!41178 tokens!494)))))

(assert (= (and d!870845 res!1293623) b!3182683))

(declare-fun b_lambda!86719 () Bool)

(assert (=> (not b_lambda!86719) (not d!870845)))

(assert (=> d!870845 m!3439603))

(declare-fun m!3439613 () Bool)

(assert (=> d!870845 m!3439613))

(assert (=> d!870845 m!3439513))

(declare-fun m!3439615 () Bool)

(assert (=> b!3182683 m!3439615))

(assert (=> b!3182631 d!870845))

(declare-fun d!870847 () Bool)

(assert (=> d!870847 (= (inv!48606 (tag!5634 (h!41179 rules!2135))) (= (mod (str.len (value!166493 (tag!5634 (h!41179 rules!2135)))) 2) 0))))

(assert (=> b!3182642 d!870847))

(declare-fun d!870849 () Bool)

(declare-fun res!1293626 () Bool)

(declare-fun e!1982983 () Bool)

(assert (=> d!870849 (=> (not res!1293626) (not e!1982983))))

(declare-fun semiInverseModEq!2134 (Int Int) Bool)

(assert (=> d!870849 (= res!1293626 (semiInverseModEq!2134 (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toValue!7184 (transformation!5124 (h!41179 rules!2135)))))))

(assert (=> d!870849 (= (inv!48609 (transformation!5124 (h!41179 rules!2135))) e!1982983)))

(declare-fun b!3182686 () Bool)

(declare-fun equivClasses!2033 (Int Int) Bool)

(assert (=> b!3182686 (= e!1982983 (equivClasses!2033 (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toValue!7184 (transformation!5124 (h!41179 rules!2135)))))))

(assert (= (and d!870849 res!1293626) b!3182686))

(declare-fun m!3439617 () Bool)

(assert (=> d!870849 m!3439617))

(declare-fun m!3439619 () Bool)

(assert (=> b!3182686 m!3439619))

(assert (=> b!3182642 d!870849))

(declare-fun d!870851 () Bool)

(declare-fun list!12695 (Conc!10623) List!35881)

(assert (=> d!870851 (= (list!12693 (charsOf!3146 (h!41178 tokens!494))) (list!12695 (c!534541 (charsOf!3146 (h!41178 tokens!494)))))))

(declare-fun bs!539936 () Bool)

(assert (= bs!539936 d!870851))

(declare-fun m!3439621 () Bool)

(assert (=> bs!539936 m!3439621))

(assert (=> b!3182633 d!870851))

(declare-fun d!870853 () Bool)

(declare-fun lt!1070030 () BalanceConc!20860)

(assert (=> d!870853 (= (list!12693 lt!1070030) (originalCharacters!5838 (h!41178 tokens!494)))))

(assert (=> d!870853 (= lt!1070030 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (value!166494 (h!41178 tokens!494))))))

(assert (=> d!870853 (= (charsOf!3146 (h!41178 tokens!494)) lt!1070030)))

(declare-fun b_lambda!86721 () Bool)

(assert (=> (not b_lambda!86721) (not d!870853)))

(assert (=> d!870853 t!235306))

(declare-fun b_and!210473 () Bool)

(assert (= b_and!210467 (and (=> t!235306 result!197420) b_and!210473)))

(assert (=> d!870853 t!235308))

(declare-fun b_and!210475 () Bool)

(assert (= b_and!210469 (and (=> t!235308 result!197424) b_and!210475)))

(assert (=> d!870853 t!235310))

(declare-fun b_and!210477 () Bool)

(assert (= b_and!210471 (and (=> t!235310 result!197426) b_and!210477)))

(declare-fun m!3439623 () Bool)

(assert (=> d!870853 m!3439623))

(assert (=> d!870853 m!3439593))

(assert (=> b!3182633 d!870853))

(declare-fun d!870855 () Bool)

(assert (=> d!870855 (= (list!12693 lt!1070004) (list!12695 (c!534541 lt!1070004)))))

(declare-fun bs!539937 () Bool)

(assert (= bs!539937 d!870855))

(declare-fun m!3439625 () Bool)

(assert (=> bs!539937 m!3439625))

(assert (=> b!3182612 d!870855))

(declare-fun d!870857 () Bool)

(declare-fun lt!1070047 () BalanceConc!20860)

(declare-fun printListTailRec!540 (LexerInterface!4713 List!35882 List!35881) List!35881)

(declare-fun dropList!1057 (BalanceConc!20862 Int) List!35882)

(assert (=> d!870857 (= (list!12693 lt!1070047) (printListTailRec!540 thiss!18206 (dropList!1057 lt!1070016 0) (list!12693 (BalanceConc!20861 Empty!10623))))))

(declare-fun e!1982989 () BalanceConc!20860)

(assert (=> d!870857 (= lt!1070047 e!1982989)))

(declare-fun c!534551 () Bool)

(declare-fun size!26986 (BalanceConc!20862) Int)

(assert (=> d!870857 (= c!534551 (>= 0 (size!26986 lt!1070016)))))

(declare-fun e!1982988 () Bool)

(assert (=> d!870857 e!1982988))

(declare-fun res!1293629 () Bool)

(assert (=> d!870857 (=> (not res!1293629) (not e!1982988))))

(assert (=> d!870857 (= res!1293629 (>= 0 0))))

(assert (=> d!870857 (= (printTailRec!1212 thiss!18206 lt!1070016 0 (BalanceConc!20861 Empty!10623)) lt!1070047)))

(declare-fun b!3182693 () Bool)

(assert (=> b!3182693 (= e!1982988 (<= 0 (size!26986 lt!1070016)))))

(declare-fun b!3182694 () Bool)

(assert (=> b!3182694 (= e!1982989 (BalanceConc!20861 Empty!10623))))

(declare-fun b!3182695 () Bool)

(declare-fun ++!8551 (BalanceConc!20860 BalanceConc!20860) BalanceConc!20860)

(declare-fun apply!8045 (BalanceConc!20862 Int) Token!9614)

(assert (=> b!3182695 (= e!1982989 (printTailRec!1212 thiss!18206 lt!1070016 (+ 0 1) (++!8551 (BalanceConc!20861 Empty!10623) (charsOf!3146 (apply!8045 lt!1070016 0)))))))

(declare-fun lt!1070050 () List!35882)

(declare-fun list!12696 (BalanceConc!20862) List!35882)

(assert (=> b!3182695 (= lt!1070050 (list!12696 lt!1070016))))

(declare-fun lt!1070053 () Unit!50160)

(declare-fun lemmaDropApply!1016 (List!35882 Int) Unit!50160)

(assert (=> b!3182695 (= lt!1070053 (lemmaDropApply!1016 lt!1070050 0))))

(declare-fun head!6952 (List!35882) Token!9614)

(declare-fun drop!1840 (List!35882 Int) List!35882)

(declare-fun apply!8046 (List!35882 Int) Token!9614)

(assert (=> b!3182695 (= (head!6952 (drop!1840 lt!1070050 0)) (apply!8046 lt!1070050 0))))

(declare-fun lt!1070048 () Unit!50160)

(assert (=> b!3182695 (= lt!1070048 lt!1070053)))

(declare-fun lt!1070051 () List!35882)

(assert (=> b!3182695 (= lt!1070051 (list!12696 lt!1070016))))

(declare-fun lt!1070052 () Unit!50160)

(declare-fun lemmaDropTail!900 (List!35882 Int) Unit!50160)

(assert (=> b!3182695 (= lt!1070052 (lemmaDropTail!900 lt!1070051 0))))

(declare-fun tail!5175 (List!35882) List!35882)

(assert (=> b!3182695 (= (tail!5175 (drop!1840 lt!1070051 0)) (drop!1840 lt!1070051 (+ 0 1)))))

(declare-fun lt!1070049 () Unit!50160)

(assert (=> b!3182695 (= lt!1070049 lt!1070052)))

(assert (= (and d!870857 res!1293629) b!3182693))

(assert (= (and d!870857 c!534551) b!3182694))

(assert (= (and d!870857 (not c!534551)) b!3182695))

(declare-fun m!3439627 () Bool)

(assert (=> d!870857 m!3439627))

(declare-fun m!3439629 () Bool)

(assert (=> d!870857 m!3439629))

(declare-fun m!3439631 () Bool)

(assert (=> d!870857 m!3439631))

(assert (=> d!870857 m!3439627))

(declare-fun m!3439633 () Bool)

(assert (=> d!870857 m!3439633))

(assert (=> d!870857 m!3439631))

(declare-fun m!3439635 () Bool)

(assert (=> d!870857 m!3439635))

(assert (=> b!3182693 m!3439629))

(declare-fun m!3439637 () Bool)

(assert (=> b!3182695 m!3439637))

(declare-fun m!3439639 () Bool)

(assert (=> b!3182695 m!3439639))

(declare-fun m!3439641 () Bool)

(assert (=> b!3182695 m!3439641))

(assert (=> b!3182695 m!3439637))

(declare-fun m!3439643 () Bool)

(assert (=> b!3182695 m!3439643))

(declare-fun m!3439645 () Bool)

(assert (=> b!3182695 m!3439645))

(declare-fun m!3439647 () Bool)

(assert (=> b!3182695 m!3439647))

(declare-fun m!3439649 () Bool)

(assert (=> b!3182695 m!3439649))

(declare-fun m!3439651 () Bool)

(assert (=> b!3182695 m!3439651))

(assert (=> b!3182695 m!3439647))

(assert (=> b!3182695 m!3439643))

(assert (=> b!3182695 m!3439651))

(declare-fun m!3439653 () Bool)

(assert (=> b!3182695 m!3439653))

(assert (=> b!3182695 m!3439641))

(declare-fun m!3439655 () Bool)

(assert (=> b!3182695 m!3439655))

(declare-fun m!3439657 () Bool)

(assert (=> b!3182695 m!3439657))

(declare-fun m!3439659 () Bool)

(assert (=> b!3182695 m!3439659))

(declare-fun m!3439661 () Bool)

(assert (=> b!3182695 m!3439661))

(assert (=> b!3182612 d!870857))

(declare-fun d!870859 () Bool)

(declare-fun lt!1070056 () BalanceConc!20860)

(assert (=> d!870859 (= (list!12693 lt!1070056) (printList!1267 thiss!18206 (list!12696 lt!1070016)))))

(assert (=> d!870859 (= lt!1070056 (printTailRec!1212 thiss!18206 lt!1070016 0 (BalanceConc!20861 Empty!10623)))))

(assert (=> d!870859 (= (print!1780 thiss!18206 lt!1070016) lt!1070056)))

(declare-fun bs!539938 () Bool)

(assert (= bs!539938 d!870859))

(declare-fun m!3439663 () Bool)

(assert (=> bs!539938 m!3439663))

(assert (=> bs!539938 m!3439653))

(assert (=> bs!539938 m!3439653))

(declare-fun m!3439665 () Bool)

(assert (=> bs!539938 m!3439665))

(assert (=> bs!539938 m!3439481))

(assert (=> b!3182612 d!870859))

(declare-fun d!870861 () Bool)

(declare-fun e!1982992 () Bool)

(assert (=> d!870861 e!1982992))

(declare-fun res!1293632 () Bool)

(assert (=> d!870861 (=> (not res!1293632) (not e!1982992))))

(declare-fun lt!1070059 () BalanceConc!20862)

(assert (=> d!870861 (= res!1293632 (= (list!12696 lt!1070059) (Cons!35758 (h!41178 tokens!494) Nil!35758)))))

(declare-fun singleton!973 (Token!9614) BalanceConc!20862)

(assert (=> d!870861 (= lt!1070059 (singleton!973 (h!41178 tokens!494)))))

(assert (=> d!870861 (= (singletonSeq!2220 (h!41178 tokens!494)) lt!1070059)))

(declare-fun b!3182698 () Bool)

(declare-fun isBalanced!3184 (Conc!10624) Bool)

(assert (=> b!3182698 (= e!1982992 (isBalanced!3184 (c!534542 lt!1070059)))))

(assert (= (and d!870861 res!1293632) b!3182698))

(declare-fun m!3439667 () Bool)

(assert (=> d!870861 m!3439667))

(declare-fun m!3439669 () Bool)

(assert (=> d!870861 m!3439669))

(declare-fun m!3439671 () Bool)

(assert (=> b!3182698 m!3439671))

(assert (=> b!3182612 d!870861))

(declare-fun d!870863 () Bool)

(declare-fun c!534554 () Bool)

(assert (=> d!870863 (= c!534554 ((_ is Cons!35758) (Cons!35758 (h!41178 tokens!494) Nil!35758)))))

(declare-fun e!1982995 () List!35881)

(assert (=> d!870863 (= (printList!1267 thiss!18206 (Cons!35758 (h!41178 tokens!494) Nil!35758)) e!1982995)))

(declare-fun b!3182703 () Bool)

(assert (=> b!3182703 (= e!1982995 (++!8550 (list!12693 (charsOf!3146 (h!41178 (Cons!35758 (h!41178 tokens!494) Nil!35758)))) (printList!1267 thiss!18206 (t!235303 (Cons!35758 (h!41178 tokens!494) Nil!35758)))))))

(declare-fun b!3182704 () Bool)

(assert (=> b!3182704 (= e!1982995 Nil!35757)))

(assert (= (and d!870863 c!534554) b!3182703))

(assert (= (and d!870863 (not c!534554)) b!3182704))

(declare-fun m!3439673 () Bool)

(assert (=> b!3182703 m!3439673))

(assert (=> b!3182703 m!3439673))

(declare-fun m!3439675 () Bool)

(assert (=> b!3182703 m!3439675))

(declare-fun m!3439677 () Bool)

(assert (=> b!3182703 m!3439677))

(assert (=> b!3182703 m!3439675))

(assert (=> b!3182703 m!3439677))

(declare-fun m!3439679 () Bool)

(assert (=> b!3182703 m!3439679))

(assert (=> b!3182612 d!870863))

(declare-fun d!870865 () Bool)

(assert (=> d!870865 (= (inv!48606 (tag!5634 (rule!7540 (h!41178 tokens!494)))) (= (mod (str.len (value!166493 (tag!5634 (rule!7540 (h!41178 tokens!494))))) 2) 0))))

(assert (=> b!3182611 d!870865))

(declare-fun d!870867 () Bool)

(declare-fun res!1293633 () Bool)

(declare-fun e!1982996 () Bool)

(assert (=> d!870867 (=> (not res!1293633) (not e!1982996))))

(assert (=> d!870867 (= res!1293633 (semiInverseModEq!2134 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))))))

(assert (=> d!870867 (= (inv!48609 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) e!1982996)))

(declare-fun b!3182705 () Bool)

(assert (=> b!3182705 (= e!1982996 (equivClasses!2033 (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))))))

(assert (= (and d!870867 res!1293633) b!3182705))

(declare-fun m!3439681 () Bool)

(assert (=> d!870867 m!3439681))

(declare-fun m!3439683 () Bool)

(assert (=> b!3182705 m!3439683))

(assert (=> b!3182611 d!870867))

(declare-fun b!3182706 () Bool)

(declare-fun e!1982998 () Bool)

(assert (=> b!3182706 (= e!1982998 (inv!16 (value!166494 separatorToken!241)))))

(declare-fun b!3182707 () Bool)

(declare-fun e!1982999 () Bool)

(assert (=> b!3182707 (= e!1982998 e!1982999)))

(declare-fun c!534556 () Bool)

(assert (=> b!3182707 (= c!534556 ((_ is IntegerValue!16063) (value!166494 separatorToken!241)))))

(declare-fun b!3182708 () Bool)

(declare-fun res!1293634 () Bool)

(declare-fun e!1982997 () Bool)

(assert (=> b!3182708 (=> res!1293634 e!1982997)))

(assert (=> b!3182708 (= res!1293634 (not ((_ is IntegerValue!16064) (value!166494 separatorToken!241))))))

(assert (=> b!3182708 (= e!1982999 e!1982997)))

(declare-fun b!3182709 () Bool)

(assert (=> b!3182709 (= e!1982997 (inv!15 (value!166494 separatorToken!241)))))

(declare-fun b!3182710 () Bool)

(assert (=> b!3182710 (= e!1982999 (inv!17 (value!166494 separatorToken!241)))))

(declare-fun d!870869 () Bool)

(declare-fun c!534555 () Bool)

(assert (=> d!870869 (= c!534555 ((_ is IntegerValue!16062) (value!166494 separatorToken!241)))))

(assert (=> d!870869 (= (inv!21 (value!166494 separatorToken!241)) e!1982998)))

(assert (= (and d!870869 c!534555) b!3182706))

(assert (= (and d!870869 (not c!534555)) b!3182707))

(assert (= (and b!3182707 c!534556) b!3182710))

(assert (= (and b!3182707 (not c!534556)) b!3182708))

(assert (= (and b!3182708 (not res!1293634)) b!3182709))

(declare-fun m!3439685 () Bool)

(assert (=> b!3182706 m!3439685))

(declare-fun m!3439687 () Bool)

(assert (=> b!3182709 m!3439687))

(declare-fun m!3439689 () Bool)

(assert (=> b!3182710 m!3439689))

(assert (=> b!3182613 d!870869))

(declare-fun d!870871 () Bool)

(assert (=> d!870871 (= (isEmpty!19881 rules!2135) ((_ is Nil!35759) rules!2135))))

(assert (=> b!3182634 d!870871))

(declare-fun d!870873 () Bool)

(assert (=> d!870873 (= (inv!48606 (tag!5634 (rule!7540 separatorToken!241))) (= (mod (str.len (value!166493 (tag!5634 (rule!7540 separatorToken!241)))) 2) 0))))

(assert (=> b!3182625 d!870873))

(declare-fun d!870875 () Bool)

(declare-fun res!1293635 () Bool)

(declare-fun e!1983000 () Bool)

(assert (=> d!870875 (=> (not res!1293635) (not e!1983000))))

(assert (=> d!870875 (= res!1293635 (semiInverseModEq!2134 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toValue!7184 (transformation!5124 (rule!7540 separatorToken!241)))))))

(assert (=> d!870875 (= (inv!48609 (transformation!5124 (rule!7540 separatorToken!241))) e!1983000)))

(declare-fun b!3182711 () Bool)

(assert (=> b!3182711 (= e!1983000 (equivClasses!2033 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toValue!7184 (transformation!5124 (rule!7540 separatorToken!241)))))))

(assert (= (and d!870875 res!1293635) b!3182711))

(declare-fun m!3439691 () Bool)

(assert (=> d!870875 m!3439691))

(declare-fun m!3439693 () Bool)

(assert (=> b!3182711 m!3439693))

(assert (=> b!3182625 d!870875))

(declare-fun d!870877 () Bool)

(declare-fun lt!1070065 () Bool)

(declare-fun e!1983006 () Bool)

(assert (=> d!870877 (= lt!1070065 e!1983006)))

(declare-fun res!1293642 () Bool)

(assert (=> d!870877 (=> (not res!1293642) (not e!1983006))))

(assert (=> d!870877 (= res!1293642 (= (list!12696 (_1!20686 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 separatorToken!241))))) (list!12696 (singletonSeq!2220 separatorToken!241))))))

(declare-fun e!1983005 () Bool)

(assert (=> d!870877 (= lt!1070065 e!1983005)))

(declare-fun res!1293643 () Bool)

(assert (=> d!870877 (=> (not res!1293643) (not e!1983005))))

(declare-fun lt!1070064 () tuple2!35104)

(assert (=> d!870877 (= res!1293643 (= (size!26986 (_1!20686 lt!1070064)) 1))))

(assert (=> d!870877 (= lt!1070064 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 separatorToken!241))))))

(assert (=> d!870877 (not (isEmpty!19881 rules!2135))))

(assert (=> d!870877 (= (rulesProduceIndividualToken!2205 thiss!18206 rules!2135 separatorToken!241) lt!1070065)))

(declare-fun b!3182718 () Bool)

(declare-fun res!1293644 () Bool)

(assert (=> b!3182718 (=> (not res!1293644) (not e!1983005))))

(assert (=> b!3182718 (= res!1293644 (= (apply!8045 (_1!20686 lt!1070064) 0) separatorToken!241))))

(declare-fun b!3182719 () Bool)

(declare-fun isEmpty!19888 (BalanceConc!20860) Bool)

(assert (=> b!3182719 (= e!1983005 (isEmpty!19888 (_2!20686 lt!1070064)))))

(declare-fun b!3182720 () Bool)

(assert (=> b!3182720 (= e!1983006 (isEmpty!19888 (_2!20686 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 separatorToken!241))))))))

(assert (= (and d!870877 res!1293643) b!3182718))

(assert (= (and b!3182718 res!1293644) b!3182719))

(assert (= (and d!870877 res!1293642) b!3182720))

(declare-fun m!3439695 () Bool)

(assert (=> d!870877 m!3439695))

(declare-fun m!3439697 () Bool)

(assert (=> d!870877 m!3439697))

(declare-fun m!3439699 () Bool)

(assert (=> d!870877 m!3439699))

(assert (=> d!870877 m!3439695))

(assert (=> d!870877 m!3439699))

(declare-fun m!3439701 () Bool)

(assert (=> d!870877 m!3439701))

(assert (=> d!870877 m!3439489))

(declare-fun m!3439703 () Bool)

(assert (=> d!870877 m!3439703))

(declare-fun m!3439705 () Bool)

(assert (=> d!870877 m!3439705))

(assert (=> d!870877 m!3439699))

(declare-fun m!3439707 () Bool)

(assert (=> b!3182718 m!3439707))

(declare-fun m!3439709 () Bool)

(assert (=> b!3182719 m!3439709))

(assert (=> b!3182720 m!3439699))

(assert (=> b!3182720 m!3439699))

(assert (=> b!3182720 m!3439695))

(assert (=> b!3182720 m!3439695))

(assert (=> b!3182720 m!3439697))

(declare-fun m!3439711 () Bool)

(assert (=> b!3182720 m!3439711))

(assert (=> b!3182636 d!870877))

(declare-fun d!870879 () Bool)

(assert (=> d!870879 (not (matchR!4541 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011))))

(declare-fun lt!1070068 () Unit!50160)

(declare-fun choose!18564 (Regex!9883 List!35881 C!19952) Unit!50160)

(assert (=> d!870879 (= lt!1070068 (choose!18564 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011 lt!1070013))))

(declare-fun validRegex!4533 (Regex!9883) Bool)

(assert (=> d!870879 (validRegex!4533 (regex!5124 (rule!7540 separatorToken!241)))))

(assert (=> d!870879 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!322 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011 lt!1070013) lt!1070068)))

(declare-fun bs!539939 () Bool)

(assert (= bs!539939 d!870879))

(assert (=> bs!539939 m!3439497))

(declare-fun m!3439713 () Bool)

(assert (=> bs!539939 m!3439713))

(declare-fun m!3439715 () Bool)

(assert (=> bs!539939 m!3439715))

(assert (=> b!3182635 d!870879))

(declare-fun b!3182749 () Bool)

(declare-fun res!1293661 () Bool)

(declare-fun e!1983022 () Bool)

(assert (=> b!3182749 (=> res!1293661 e!1983022)))

(declare-fun tail!5177 (List!35881) List!35881)

(assert (=> b!3182749 (= res!1293661 (not (isEmpty!19882 (tail!5177 lt!1070011))))))

(declare-fun d!870881 () Bool)

(declare-fun e!1983023 () Bool)

(assert (=> d!870881 e!1983023))

(declare-fun c!534564 () Bool)

(assert (=> d!870881 (= c!534564 ((_ is EmptyExpr!9883) (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun lt!1070071 () Bool)

(declare-fun e!1983021 () Bool)

(assert (=> d!870881 (= lt!1070071 e!1983021)))

(declare-fun c!534565 () Bool)

(assert (=> d!870881 (= c!534565 (isEmpty!19882 lt!1070011))))

(assert (=> d!870881 (validRegex!4533 (regex!5124 (rule!7540 separatorToken!241)))))

(assert (=> d!870881 (= (matchR!4541 (regex!5124 (rule!7540 separatorToken!241)) lt!1070011) lt!1070071)))

(declare-fun b!3182750 () Bool)

(declare-fun e!1983024 () Bool)

(assert (=> b!3182750 (= e!1983024 (= (head!6951 lt!1070011) (c!534540 (regex!5124 (rule!7540 separatorToken!241)))))))

(declare-fun b!3182751 () Bool)

(declare-fun e!1983026 () Bool)

(assert (=> b!3182751 (= e!1983023 e!1983026)))

(declare-fun c!534566 () Bool)

(assert (=> b!3182751 (= c!534566 ((_ is EmptyLang!9883) (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun b!3182752 () Bool)

(declare-fun e!1983027 () Bool)

(assert (=> b!3182752 (= e!1983027 e!1983022)))

(declare-fun res!1293663 () Bool)

(assert (=> b!3182752 (=> res!1293663 e!1983022)))

(declare-fun call!231001 () Bool)

(assert (=> b!3182752 (= res!1293663 call!231001)))

(declare-fun b!3182753 () Bool)

(declare-fun res!1293666 () Bool)

(assert (=> b!3182753 (=> (not res!1293666) (not e!1983024))))

(assert (=> b!3182753 (= res!1293666 (not call!231001))))

(declare-fun b!3182754 () Bool)

(declare-fun nullable!3381 (Regex!9883) Bool)

(assert (=> b!3182754 (= e!1983021 (nullable!3381 (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun b!3182755 () Bool)

(declare-fun res!1293667 () Bool)

(declare-fun e!1983025 () Bool)

(assert (=> b!3182755 (=> res!1293667 e!1983025)))

(assert (=> b!3182755 (= res!1293667 (not ((_ is ElementMatch!9883) (regex!5124 (rule!7540 separatorToken!241)))))))

(assert (=> b!3182755 (= e!1983026 e!1983025)))

(declare-fun bm!230996 () Bool)

(assert (=> bm!230996 (= call!231001 (isEmpty!19882 lt!1070011))))

(declare-fun b!3182756 () Bool)

(declare-fun res!1293665 () Bool)

(assert (=> b!3182756 (=> res!1293665 e!1983025)))

(assert (=> b!3182756 (= res!1293665 e!1983024)))

(declare-fun res!1293662 () Bool)

(assert (=> b!3182756 (=> (not res!1293662) (not e!1983024))))

(assert (=> b!3182756 (= res!1293662 lt!1070071)))

(declare-fun b!3182757 () Bool)

(assert (=> b!3182757 (= e!1983022 (not (= (head!6951 lt!1070011) (c!534540 (regex!5124 (rule!7540 separatorToken!241))))))))

(declare-fun b!3182758 () Bool)

(declare-fun res!1293664 () Bool)

(assert (=> b!3182758 (=> (not res!1293664) (not e!1983024))))

(assert (=> b!3182758 (= res!1293664 (isEmpty!19882 (tail!5177 lt!1070011)))))

(declare-fun b!3182759 () Bool)

(declare-fun derivativeStep!2934 (Regex!9883 C!19952) Regex!9883)

(assert (=> b!3182759 (= e!1983021 (matchR!4541 (derivativeStep!2934 (regex!5124 (rule!7540 separatorToken!241)) (head!6951 lt!1070011)) (tail!5177 lt!1070011)))))

(declare-fun b!3182760 () Bool)

(assert (=> b!3182760 (= e!1983025 e!1983027)))

(declare-fun res!1293668 () Bool)

(assert (=> b!3182760 (=> (not res!1293668) (not e!1983027))))

(assert (=> b!3182760 (= res!1293668 (not lt!1070071))))

(declare-fun b!3182761 () Bool)

(assert (=> b!3182761 (= e!1983026 (not lt!1070071))))

(declare-fun b!3182762 () Bool)

(assert (=> b!3182762 (= e!1983023 (= lt!1070071 call!231001))))

(assert (= (and d!870881 c!534565) b!3182754))

(assert (= (and d!870881 (not c!534565)) b!3182759))

(assert (= (and d!870881 c!534564) b!3182762))

(assert (= (and d!870881 (not c!534564)) b!3182751))

(assert (= (and b!3182751 c!534566) b!3182761))

(assert (= (and b!3182751 (not c!534566)) b!3182755))

(assert (= (and b!3182755 (not res!1293667)) b!3182756))

(assert (= (and b!3182756 res!1293662) b!3182753))

(assert (= (and b!3182753 res!1293666) b!3182758))

(assert (= (and b!3182758 res!1293664) b!3182750))

(assert (= (and b!3182756 (not res!1293665)) b!3182760))

(assert (= (and b!3182760 res!1293668) b!3182752))

(assert (= (and b!3182752 (not res!1293663)) b!3182749))

(assert (= (and b!3182749 (not res!1293661)) b!3182757))

(assert (= (or b!3182762 b!3182752 b!3182753) bm!230996))

(declare-fun m!3439717 () Bool)

(assert (=> b!3182749 m!3439717))

(assert (=> b!3182749 m!3439717))

(declare-fun m!3439719 () Bool)

(assert (=> b!3182749 m!3439719))

(assert (=> b!3182750 m!3439555))

(declare-fun m!3439721 () Bool)

(assert (=> b!3182754 m!3439721))

(assert (=> b!3182758 m!3439717))

(assert (=> b!3182758 m!3439717))

(assert (=> b!3182758 m!3439719))

(assert (=> b!3182759 m!3439555))

(assert (=> b!3182759 m!3439555))

(declare-fun m!3439723 () Bool)

(assert (=> b!3182759 m!3439723))

(assert (=> b!3182759 m!3439717))

(assert (=> b!3182759 m!3439723))

(assert (=> b!3182759 m!3439717))

(declare-fun m!3439725 () Bool)

(assert (=> b!3182759 m!3439725))

(declare-fun m!3439727 () Bool)

(assert (=> bm!230996 m!3439727))

(assert (=> d!870881 m!3439727))

(assert (=> d!870881 m!3439715))

(assert (=> b!3182757 m!3439555))

(assert (=> b!3182635 d!870881))

(declare-fun b!3182763 () Bool)

(declare-fun res!1293669 () Bool)

(declare-fun e!1983029 () Bool)

(assert (=> b!3182763 (=> res!1293669 e!1983029)))

(assert (=> b!3182763 (= res!1293669 (not (isEmpty!19882 (tail!5177 lt!1070011))))))

(declare-fun d!870883 () Bool)

(declare-fun e!1983030 () Bool)

(assert (=> d!870883 e!1983030))

(declare-fun c!534567 () Bool)

(assert (=> d!870883 (= c!534567 ((_ is EmptyExpr!9883) (regex!5124 lt!1070006)))))

(declare-fun lt!1070072 () Bool)

(declare-fun e!1983028 () Bool)

(assert (=> d!870883 (= lt!1070072 e!1983028)))

(declare-fun c!534568 () Bool)

(assert (=> d!870883 (= c!534568 (isEmpty!19882 lt!1070011))))

(assert (=> d!870883 (validRegex!4533 (regex!5124 lt!1070006))))

(assert (=> d!870883 (= (matchR!4541 (regex!5124 lt!1070006) lt!1070011) lt!1070072)))

(declare-fun b!3182764 () Bool)

(declare-fun e!1983031 () Bool)

(assert (=> b!3182764 (= e!1983031 (= (head!6951 lt!1070011) (c!534540 (regex!5124 lt!1070006))))))

(declare-fun b!3182765 () Bool)

(declare-fun e!1983033 () Bool)

(assert (=> b!3182765 (= e!1983030 e!1983033)))

(declare-fun c!534569 () Bool)

(assert (=> b!3182765 (= c!534569 ((_ is EmptyLang!9883) (regex!5124 lt!1070006)))))

(declare-fun b!3182766 () Bool)

(declare-fun e!1983034 () Bool)

(assert (=> b!3182766 (= e!1983034 e!1983029)))

(declare-fun res!1293671 () Bool)

(assert (=> b!3182766 (=> res!1293671 e!1983029)))

(declare-fun call!231002 () Bool)

(assert (=> b!3182766 (= res!1293671 call!231002)))

(declare-fun b!3182767 () Bool)

(declare-fun res!1293674 () Bool)

(assert (=> b!3182767 (=> (not res!1293674) (not e!1983031))))

(assert (=> b!3182767 (= res!1293674 (not call!231002))))

(declare-fun b!3182768 () Bool)

(assert (=> b!3182768 (= e!1983028 (nullable!3381 (regex!5124 lt!1070006)))))

(declare-fun b!3182769 () Bool)

(declare-fun res!1293675 () Bool)

(declare-fun e!1983032 () Bool)

(assert (=> b!3182769 (=> res!1293675 e!1983032)))

(assert (=> b!3182769 (= res!1293675 (not ((_ is ElementMatch!9883) (regex!5124 lt!1070006))))))

(assert (=> b!3182769 (= e!1983033 e!1983032)))

(declare-fun bm!230997 () Bool)

(assert (=> bm!230997 (= call!231002 (isEmpty!19882 lt!1070011))))

(declare-fun b!3182770 () Bool)

(declare-fun res!1293673 () Bool)

(assert (=> b!3182770 (=> res!1293673 e!1983032)))

(assert (=> b!3182770 (= res!1293673 e!1983031)))

(declare-fun res!1293670 () Bool)

(assert (=> b!3182770 (=> (not res!1293670) (not e!1983031))))

(assert (=> b!3182770 (= res!1293670 lt!1070072)))

(declare-fun b!3182771 () Bool)

(assert (=> b!3182771 (= e!1983029 (not (= (head!6951 lt!1070011) (c!534540 (regex!5124 lt!1070006)))))))

(declare-fun b!3182772 () Bool)

(declare-fun res!1293672 () Bool)

(assert (=> b!3182772 (=> (not res!1293672) (not e!1983031))))

(assert (=> b!3182772 (= res!1293672 (isEmpty!19882 (tail!5177 lt!1070011)))))

(declare-fun b!3182773 () Bool)

(assert (=> b!3182773 (= e!1983028 (matchR!4541 (derivativeStep!2934 (regex!5124 lt!1070006) (head!6951 lt!1070011)) (tail!5177 lt!1070011)))))

(declare-fun b!3182774 () Bool)

(assert (=> b!3182774 (= e!1983032 e!1983034)))

(declare-fun res!1293676 () Bool)

(assert (=> b!3182774 (=> (not res!1293676) (not e!1983034))))

(assert (=> b!3182774 (= res!1293676 (not lt!1070072))))

(declare-fun b!3182775 () Bool)

(assert (=> b!3182775 (= e!1983033 (not lt!1070072))))

(declare-fun b!3182776 () Bool)

(assert (=> b!3182776 (= e!1983030 (= lt!1070072 call!231002))))

(assert (= (and d!870883 c!534568) b!3182768))

(assert (= (and d!870883 (not c!534568)) b!3182773))

(assert (= (and d!870883 c!534567) b!3182776))

(assert (= (and d!870883 (not c!534567)) b!3182765))

(assert (= (and b!3182765 c!534569) b!3182775))

(assert (= (and b!3182765 (not c!534569)) b!3182769))

(assert (= (and b!3182769 (not res!1293675)) b!3182770))

(assert (= (and b!3182770 res!1293670) b!3182767))

(assert (= (and b!3182767 res!1293674) b!3182772))

(assert (= (and b!3182772 res!1293672) b!3182764))

(assert (= (and b!3182770 (not res!1293673)) b!3182774))

(assert (= (and b!3182774 res!1293676) b!3182766))

(assert (= (and b!3182766 (not res!1293671)) b!3182763))

(assert (= (and b!3182763 (not res!1293669)) b!3182771))

(assert (= (or b!3182776 b!3182766 b!3182767) bm!230997))

(assert (=> b!3182763 m!3439717))

(assert (=> b!3182763 m!3439717))

(assert (=> b!3182763 m!3439719))

(assert (=> b!3182764 m!3439555))

(declare-fun m!3439729 () Bool)

(assert (=> b!3182768 m!3439729))

(assert (=> b!3182772 m!3439717))

(assert (=> b!3182772 m!3439717))

(assert (=> b!3182772 m!3439719))

(assert (=> b!3182773 m!3439555))

(assert (=> b!3182773 m!3439555))

(declare-fun m!3439731 () Bool)

(assert (=> b!3182773 m!3439731))

(assert (=> b!3182773 m!3439717))

(assert (=> b!3182773 m!3439731))

(assert (=> b!3182773 m!3439717))

(declare-fun m!3439733 () Bool)

(assert (=> b!3182773 m!3439733))

(assert (=> bm!230997 m!3439727))

(assert (=> d!870883 m!3439727))

(declare-fun m!3439735 () Bool)

(assert (=> d!870883 m!3439735))

(assert (=> b!3182771 m!3439555))

(assert (=> b!3182614 d!870883))

(declare-fun d!870885 () Bool)

(assert (=> d!870885 (= (get!11373 lt!1070007) (v!35440 lt!1070007))))

(assert (=> b!3182614 d!870885))

(declare-fun b!3182777 () Bool)

(declare-fun res!1293677 () Bool)

(declare-fun e!1983036 () Bool)

(assert (=> b!3182777 (=> res!1293677 e!1983036)))

(assert (=> b!3182777 (= res!1293677 (not (isEmpty!19882 (tail!5177 lt!1070024))))))

(declare-fun d!870887 () Bool)

(declare-fun e!1983037 () Bool)

(assert (=> d!870887 e!1983037))

(declare-fun c!534570 () Bool)

(assert (=> d!870887 (= c!534570 ((_ is EmptyExpr!9883) (regex!5124 lt!1070010)))))

(declare-fun lt!1070073 () Bool)

(declare-fun e!1983035 () Bool)

(assert (=> d!870887 (= lt!1070073 e!1983035)))

(declare-fun c!534571 () Bool)

(assert (=> d!870887 (= c!534571 (isEmpty!19882 lt!1070024))))

(assert (=> d!870887 (validRegex!4533 (regex!5124 lt!1070010))))

(assert (=> d!870887 (= (matchR!4541 (regex!5124 lt!1070010) lt!1070024) lt!1070073)))

(declare-fun b!3182778 () Bool)

(declare-fun e!1983038 () Bool)

(assert (=> b!3182778 (= e!1983038 (= (head!6951 lt!1070024) (c!534540 (regex!5124 lt!1070010))))))

(declare-fun b!3182779 () Bool)

(declare-fun e!1983040 () Bool)

(assert (=> b!3182779 (= e!1983037 e!1983040)))

(declare-fun c!534572 () Bool)

(assert (=> b!3182779 (= c!534572 ((_ is EmptyLang!9883) (regex!5124 lt!1070010)))))

(declare-fun b!3182780 () Bool)

(declare-fun e!1983041 () Bool)

(assert (=> b!3182780 (= e!1983041 e!1983036)))

(declare-fun res!1293679 () Bool)

(assert (=> b!3182780 (=> res!1293679 e!1983036)))

(declare-fun call!231003 () Bool)

(assert (=> b!3182780 (= res!1293679 call!231003)))

(declare-fun b!3182781 () Bool)

(declare-fun res!1293682 () Bool)

(assert (=> b!3182781 (=> (not res!1293682) (not e!1983038))))

(assert (=> b!3182781 (= res!1293682 (not call!231003))))

(declare-fun b!3182782 () Bool)

(assert (=> b!3182782 (= e!1983035 (nullable!3381 (regex!5124 lt!1070010)))))

(declare-fun b!3182783 () Bool)

(declare-fun res!1293683 () Bool)

(declare-fun e!1983039 () Bool)

(assert (=> b!3182783 (=> res!1293683 e!1983039)))

(assert (=> b!3182783 (= res!1293683 (not ((_ is ElementMatch!9883) (regex!5124 lt!1070010))))))

(assert (=> b!3182783 (= e!1983040 e!1983039)))

(declare-fun bm!230998 () Bool)

(assert (=> bm!230998 (= call!231003 (isEmpty!19882 lt!1070024))))

(declare-fun b!3182784 () Bool)

(declare-fun res!1293681 () Bool)

(assert (=> b!3182784 (=> res!1293681 e!1983039)))

(assert (=> b!3182784 (= res!1293681 e!1983038)))

(declare-fun res!1293678 () Bool)

(assert (=> b!3182784 (=> (not res!1293678) (not e!1983038))))

(assert (=> b!3182784 (= res!1293678 lt!1070073)))

(declare-fun b!3182785 () Bool)

(assert (=> b!3182785 (= e!1983036 (not (= (head!6951 lt!1070024) (c!534540 (regex!5124 lt!1070010)))))))

(declare-fun b!3182786 () Bool)

(declare-fun res!1293680 () Bool)

(assert (=> b!3182786 (=> (not res!1293680) (not e!1983038))))

(assert (=> b!3182786 (= res!1293680 (isEmpty!19882 (tail!5177 lt!1070024)))))

(declare-fun b!3182787 () Bool)

(assert (=> b!3182787 (= e!1983035 (matchR!4541 (derivativeStep!2934 (regex!5124 lt!1070010) (head!6951 lt!1070024)) (tail!5177 lt!1070024)))))

(declare-fun b!3182788 () Bool)

(assert (=> b!3182788 (= e!1983039 e!1983041)))

(declare-fun res!1293684 () Bool)

(assert (=> b!3182788 (=> (not res!1293684) (not e!1983041))))

(assert (=> b!3182788 (= res!1293684 (not lt!1070073))))

(declare-fun b!3182789 () Bool)

(assert (=> b!3182789 (= e!1983040 (not lt!1070073))))

(declare-fun b!3182790 () Bool)

(assert (=> b!3182790 (= e!1983037 (= lt!1070073 call!231003))))

(assert (= (and d!870887 c!534571) b!3182782))

(assert (= (and d!870887 (not c!534571)) b!3182787))

(assert (= (and d!870887 c!534570) b!3182790))

(assert (= (and d!870887 (not c!534570)) b!3182779))

(assert (= (and b!3182779 c!534572) b!3182789))

(assert (= (and b!3182779 (not c!534572)) b!3182783))

(assert (= (and b!3182783 (not res!1293683)) b!3182784))

(assert (= (and b!3182784 res!1293678) b!3182781))

(assert (= (and b!3182781 res!1293682) b!3182786))

(assert (= (and b!3182786 res!1293680) b!3182778))

(assert (= (and b!3182784 (not res!1293681)) b!3182788))

(assert (= (and b!3182788 res!1293684) b!3182780))

(assert (= (and b!3182780 (not res!1293679)) b!3182777))

(assert (= (and b!3182777 (not res!1293677)) b!3182785))

(assert (= (or b!3182790 b!3182780 b!3182781) bm!230998))

(declare-fun m!3439737 () Bool)

(assert (=> b!3182777 m!3439737))

(assert (=> b!3182777 m!3439737))

(declare-fun m!3439739 () Bool)

(assert (=> b!3182777 m!3439739))

(declare-fun m!3439741 () Bool)

(assert (=> b!3182778 m!3439741))

(declare-fun m!3439743 () Bool)

(assert (=> b!3182782 m!3439743))

(assert (=> b!3182786 m!3439737))

(assert (=> b!3182786 m!3439737))

(assert (=> b!3182786 m!3439739))

(assert (=> b!3182787 m!3439741))

(assert (=> b!3182787 m!3439741))

(declare-fun m!3439745 () Bool)

(assert (=> b!3182787 m!3439745))

(assert (=> b!3182787 m!3439737))

(assert (=> b!3182787 m!3439745))

(assert (=> b!3182787 m!3439737))

(declare-fun m!3439747 () Bool)

(assert (=> b!3182787 m!3439747))

(declare-fun m!3439749 () Bool)

(assert (=> bm!230998 m!3439749))

(assert (=> d!870887 m!3439749))

(declare-fun m!3439751 () Bool)

(assert (=> d!870887 m!3439751))

(assert (=> b!3182785 m!3439741))

(assert (=> b!3182626 d!870887))

(declare-fun d!870889 () Bool)

(assert (=> d!870889 (= (get!11373 lt!1070019) (v!35440 lt!1070019))))

(assert (=> b!3182626 d!870889))

(declare-fun d!870891 () Bool)

(assert (=> d!870891 (= (list!12693 lt!1070020) (list!12695 (c!534541 lt!1070020)))))

(declare-fun bs!539940 () Bool)

(assert (= bs!539940 d!870891))

(declare-fun m!3439753 () Bool)

(assert (=> bs!539940 m!3439753))

(assert (=> b!3182617 d!870891))

(declare-fun lt!1070076 () BalanceConc!20860)

(declare-fun d!870893 () Bool)

(declare-fun printWithSeparatorTokenList!93 (LexerInterface!4713 List!35882 Token!9614) List!35881)

(assert (=> d!870893 (= (list!12693 lt!1070076) (printWithSeparatorTokenList!93 thiss!18206 (list!12696 lt!1070022) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!7 (LexerInterface!4713 BalanceConc!20862 Token!9614 Int BalanceConc!20860) BalanceConc!20860)

(assert (=> d!870893 (= lt!1070076 (printWithSeparatorTokenTailRec!7 thiss!18206 lt!1070022 separatorToken!241 0 (BalanceConc!20861 Empty!10623)))))

(assert (=> d!870893 (isSeparator!5124 (rule!7540 separatorToken!241))))

(assert (=> d!870893 (= (printWithSeparatorToken!22 thiss!18206 lt!1070022 separatorToken!241) lt!1070076)))

(declare-fun bs!539941 () Bool)

(assert (= bs!539941 d!870893))

(declare-fun m!3439755 () Bool)

(assert (=> bs!539941 m!3439755))

(declare-fun m!3439757 () Bool)

(assert (=> bs!539941 m!3439757))

(assert (=> bs!539941 m!3439757))

(declare-fun m!3439759 () Bool)

(assert (=> bs!539941 m!3439759))

(declare-fun m!3439761 () Bool)

(assert (=> bs!539941 m!3439761))

(assert (=> b!3182617 d!870893))

(declare-fun d!870895 () Bool)

(declare-fun lt!1070077 () BalanceConc!20860)

(assert (=> d!870895 (= (list!12693 lt!1070077) (originalCharacters!5838 separatorToken!241))))

(assert (=> d!870895 (= lt!1070077 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (value!166494 separatorToken!241)))))

(assert (=> d!870895 (= (charsOf!3146 separatorToken!241) lt!1070077)))

(declare-fun b_lambda!86723 () Bool)

(assert (=> (not b_lambda!86723) (not d!870895)))

(declare-fun t!235316 () Bool)

(declare-fun tb!155341 () Bool)

(assert (=> (and b!3182637 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241)))) t!235316) tb!155341))

(declare-fun b!3182791 () Bool)

(declare-fun e!1983042 () Bool)

(declare-fun tp!1006748 () Bool)

(assert (=> b!3182791 (= e!1983042 (and (inv!48611 (c!534541 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (value!166494 separatorToken!241)))) tp!1006748))))

(declare-fun result!197428 () Bool)

(assert (=> tb!155341 (= result!197428 (and (inv!48612 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (value!166494 separatorToken!241))) e!1983042))))

(assert (= tb!155341 b!3182791))

(declare-fun m!3439763 () Bool)

(assert (=> b!3182791 m!3439763))

(declare-fun m!3439765 () Bool)

(assert (=> tb!155341 m!3439765))

(assert (=> d!870895 t!235316))

(declare-fun b_and!210479 () Bool)

(assert (= b_and!210473 (and (=> t!235316 result!197428) b_and!210479)))

(declare-fun t!235318 () Bool)

(declare-fun tb!155343 () Bool)

(assert (=> (and b!3182618 (= (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241)))) t!235318) tb!155343))

(declare-fun result!197430 () Bool)

(assert (= result!197430 result!197428))

(assert (=> d!870895 t!235318))

(declare-fun b_and!210481 () Bool)

(assert (= b_and!210475 (and (=> t!235318 result!197430) b_and!210481)))

(declare-fun tb!155345 () Bool)

(declare-fun t!235320 () Bool)

(assert (=> (and b!3182620 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241)))) t!235320) tb!155345))

(declare-fun result!197432 () Bool)

(assert (= result!197432 result!197428))

(assert (=> d!870895 t!235320))

(declare-fun b_and!210483 () Bool)

(assert (= b_and!210477 (and (=> t!235320 result!197432) b_and!210483)))

(declare-fun m!3439767 () Bool)

(assert (=> d!870895 m!3439767))

(declare-fun m!3439769 () Bool)

(assert (=> d!870895 m!3439769))

(assert (=> b!3182617 d!870895))

(declare-fun b!3182800 () Bool)

(declare-fun e!1983048 () List!35881)

(assert (=> b!3182800 (= e!1983048 lt!1070011)))

(declare-fun b!3182801 () Bool)

(assert (=> b!3182801 (= e!1983048 (Cons!35757 (h!41177 lt!1070024) (++!8550 (t!235302 lt!1070024) lt!1070011)))))

(declare-fun lt!1070080 () List!35881)

(declare-fun e!1983047 () Bool)

(declare-fun b!3182803 () Bool)

(assert (=> b!3182803 (= e!1983047 (or (not (= lt!1070011 Nil!35757)) (= lt!1070080 lt!1070024)))))

(declare-fun d!870897 () Bool)

(assert (=> d!870897 e!1983047))

(declare-fun res!1293690 () Bool)

(assert (=> d!870897 (=> (not res!1293690) (not e!1983047))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4846 (List!35881) (InoxSet C!19952))

(assert (=> d!870897 (= res!1293690 (= (content!4846 lt!1070080) ((_ map or) (content!4846 lt!1070024) (content!4846 lt!1070011))))))

(assert (=> d!870897 (= lt!1070080 e!1983048)))

(declare-fun c!534575 () Bool)

(assert (=> d!870897 (= c!534575 ((_ is Nil!35757) lt!1070024))))

(assert (=> d!870897 (= (++!8550 lt!1070024 lt!1070011) lt!1070080)))

(declare-fun b!3182802 () Bool)

(declare-fun res!1293689 () Bool)

(assert (=> b!3182802 (=> (not res!1293689) (not e!1983047))))

(assert (=> b!3182802 (= res!1293689 (= (size!26983 lt!1070080) (+ (size!26983 lt!1070024) (size!26983 lt!1070011))))))

(assert (= (and d!870897 c!534575) b!3182800))

(assert (= (and d!870897 (not c!534575)) b!3182801))

(assert (= (and d!870897 res!1293690) b!3182802))

(assert (= (and b!3182802 res!1293689) b!3182803))

(declare-fun m!3439771 () Bool)

(assert (=> b!3182801 m!3439771))

(declare-fun m!3439773 () Bool)

(assert (=> d!870897 m!3439773))

(declare-fun m!3439775 () Bool)

(assert (=> d!870897 m!3439775))

(declare-fun m!3439777 () Bool)

(assert (=> d!870897 m!3439777))

(declare-fun m!3439779 () Bool)

(assert (=> b!3182802 m!3439779))

(assert (=> b!3182802 m!3439575))

(declare-fun m!3439781 () Bool)

(assert (=> b!3182802 m!3439781))

(assert (=> b!3182617 d!870897))

(declare-fun d!870899 () Bool)

(assert (=> d!870899 (= (list!12693 (charsOf!3146 separatorToken!241)) (list!12695 (c!534541 (charsOf!3146 separatorToken!241))))))

(declare-fun bs!539942 () Bool)

(assert (= bs!539942 d!870899))

(declare-fun m!3439783 () Bool)

(assert (=> bs!539942 m!3439783))

(assert (=> b!3182617 d!870899))

(declare-fun d!870901 () Bool)

(declare-fun res!1293691 () Bool)

(declare-fun e!1983049 () Bool)

(assert (=> d!870901 (=> (not res!1293691) (not e!1983049))))

(assert (=> d!870901 (= res!1293691 (not (isEmpty!19882 (originalCharacters!5838 separatorToken!241))))))

(assert (=> d!870901 (= (inv!48610 separatorToken!241) e!1983049)))

(declare-fun b!3182804 () Bool)

(declare-fun res!1293692 () Bool)

(assert (=> b!3182804 (=> (not res!1293692) (not e!1983049))))

(assert (=> b!3182804 (= res!1293692 (= (originalCharacters!5838 separatorToken!241) (list!12693 (dynLambda!14426 (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (value!166494 separatorToken!241)))))))

(declare-fun b!3182805 () Bool)

(assert (=> b!3182805 (= e!1983049 (= (size!26982 separatorToken!241) (size!26983 (originalCharacters!5838 separatorToken!241))))))

(assert (= (and d!870901 res!1293691) b!3182804))

(assert (= (and b!3182804 res!1293692) b!3182805))

(declare-fun b_lambda!86725 () Bool)

(assert (=> (not b_lambda!86725) (not b!3182804)))

(assert (=> b!3182804 t!235316))

(declare-fun b_and!210485 () Bool)

(assert (= b_and!210479 (and (=> t!235316 result!197428) b_and!210485)))

(assert (=> b!3182804 t!235318))

(declare-fun b_and!210487 () Bool)

(assert (= b_and!210481 (and (=> t!235318 result!197430) b_and!210487)))

(assert (=> b!3182804 t!235320))

(declare-fun b_and!210489 () Bool)

(assert (= b_and!210483 (and (=> t!235320 result!197432) b_and!210489)))

(declare-fun m!3439785 () Bool)

(assert (=> d!870901 m!3439785))

(assert (=> b!3182804 m!3439769))

(assert (=> b!3182804 m!3439769))

(declare-fun m!3439787 () Bool)

(assert (=> b!3182804 m!3439787))

(declare-fun m!3439789 () Bool)

(assert (=> b!3182805 m!3439789))

(assert (=> start!298258 d!870901))

(declare-fun d!870903 () Bool)

(declare-fun lt!1070082 () Bool)

(declare-fun e!1983051 () Bool)

(assert (=> d!870903 (= lt!1070082 e!1983051)))

(declare-fun res!1293693 () Bool)

(assert (=> d!870903 (=> (not res!1293693) (not e!1983051))))

(assert (=> d!870903 (= res!1293693 (= (list!12696 (_1!20686 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 (h!41178 tokens!494)))))) (list!12696 (singletonSeq!2220 (h!41178 tokens!494)))))))

(declare-fun e!1983050 () Bool)

(assert (=> d!870903 (= lt!1070082 e!1983050)))

(declare-fun res!1293694 () Bool)

(assert (=> d!870903 (=> (not res!1293694) (not e!1983050))))

(declare-fun lt!1070081 () tuple2!35104)

(assert (=> d!870903 (= res!1293694 (= (size!26986 (_1!20686 lt!1070081)) 1))))

(assert (=> d!870903 (= lt!1070081 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 (h!41178 tokens!494)))))))

(assert (=> d!870903 (not (isEmpty!19881 rules!2135))))

(assert (=> d!870903 (= (rulesProduceIndividualToken!2205 thiss!18206 rules!2135 (h!41178 tokens!494)) lt!1070082)))

(declare-fun b!3182806 () Bool)

(declare-fun res!1293695 () Bool)

(assert (=> b!3182806 (=> (not res!1293695) (not e!1983050))))

(assert (=> b!3182806 (= res!1293695 (= (apply!8045 (_1!20686 lt!1070081) 0) (h!41178 tokens!494)))))

(declare-fun b!3182807 () Bool)

(assert (=> b!3182807 (= e!1983050 (isEmpty!19888 (_2!20686 lt!1070081)))))

(declare-fun b!3182808 () Bool)

(assert (=> b!3182808 (= e!1983051 (isEmpty!19888 (_2!20686 (lex!2053 thiss!18206 rules!2135 (print!1780 thiss!18206 (singletonSeq!2220 (h!41178 tokens!494)))))))))

(assert (= (and d!870903 res!1293694) b!3182806))

(assert (= (and b!3182806 res!1293695) b!3182807))

(assert (= (and d!870903 res!1293693) b!3182808))

(declare-fun m!3439791 () Bool)

(assert (=> d!870903 m!3439791))

(declare-fun m!3439793 () Bool)

(assert (=> d!870903 m!3439793))

(assert (=> d!870903 m!3439483))

(assert (=> d!870903 m!3439791))

(assert (=> d!870903 m!3439483))

(declare-fun m!3439795 () Bool)

(assert (=> d!870903 m!3439795))

(assert (=> d!870903 m!3439489))

(declare-fun m!3439797 () Bool)

(assert (=> d!870903 m!3439797))

(declare-fun m!3439799 () Bool)

(assert (=> d!870903 m!3439799))

(assert (=> d!870903 m!3439483))

(declare-fun m!3439801 () Bool)

(assert (=> b!3182806 m!3439801))

(declare-fun m!3439803 () Bool)

(assert (=> b!3182807 m!3439803))

(assert (=> b!3182808 m!3439483))

(assert (=> b!3182808 m!3439483))

(assert (=> b!3182808 m!3439791))

(assert (=> b!3182808 m!3439791))

(assert (=> b!3182808 m!3439793))

(declare-fun m!3439805 () Bool)

(assert (=> b!3182808 m!3439805))

(assert (=> b!3182628 d!870903))

(declare-fun d!870905 () Bool)

(assert (=> d!870905 (rulesProduceIndividualToken!2205 thiss!18206 rules!2135 (h!41178 tokens!494))))

(declare-fun lt!1070086 () Unit!50160)

(declare-fun choose!18565 (LexerInterface!4713 List!35883 List!35882 Token!9614) Unit!50160)

(assert (=> d!870905 (= lt!1070086 (choose!18565 thiss!18206 rules!2135 tokens!494 (h!41178 tokens!494)))))

(assert (=> d!870905 (not (isEmpty!19881 rules!2135))))

(assert (=> d!870905 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!774 thiss!18206 rules!2135 tokens!494 (h!41178 tokens!494)) lt!1070086)))

(declare-fun bs!539946 () Bool)

(assert (= bs!539946 d!870905))

(assert (=> bs!539946 m!3439477))

(declare-fun m!3439819 () Bool)

(assert (=> bs!539946 m!3439819))

(assert (=> bs!539946 m!3439489))

(assert (=> b!3182638 d!870905))

(declare-fun d!870913 () Bool)

(declare-fun lt!1070089 () List!35881)

(assert (=> d!870913 (= (++!8550 lt!1070024 lt!1070089) lt!1070024)))

(declare-fun e!1983066 () List!35881)

(assert (=> d!870913 (= lt!1070089 e!1983066)))

(declare-fun c!534578 () Bool)

(assert (=> d!870913 (= c!534578 ((_ is Cons!35757) lt!1070024))))

(assert (=> d!870913 (>= (size!26983 lt!1070024) (size!26983 lt!1070024))))

(assert (=> d!870913 (= (getSuffix!1340 lt!1070024 lt!1070024) lt!1070089)))

(declare-fun b!3182829 () Bool)

(assert (=> b!3182829 (= e!1983066 (getSuffix!1340 (tail!5177 lt!1070024) (t!235302 lt!1070024)))))

(declare-fun b!3182830 () Bool)

(assert (=> b!3182830 (= e!1983066 lt!1070024)))

(assert (= (and d!870913 c!534578) b!3182829))

(assert (= (and d!870913 (not c!534578)) b!3182830))

(declare-fun m!3439821 () Bool)

(assert (=> d!870913 m!3439821))

(assert (=> d!870913 m!3439575))

(assert (=> d!870913 m!3439575))

(assert (=> b!3182829 m!3439737))

(assert (=> b!3182829 m!3439737))

(declare-fun m!3439823 () Bool)

(assert (=> b!3182829 m!3439823))

(assert (=> b!3182638 d!870913))

(declare-fun d!870915 () Bool)

(assert (=> d!870915 (= (maxPrefixOneRule!1518 thiss!18206 (rule!7540 (h!41178 tokens!494)) lt!1070024) (Some!6979 (tuple2!35103 (Token!9615 (apply!8044 (transformation!5124 (rule!7540 (h!41178 tokens!494))) (seqFromList!3328 lt!1070024)) (rule!7540 (h!41178 tokens!494)) (size!26983 lt!1070024) lt!1070024) Nil!35757)))))

(declare-fun lt!1070092 () Unit!50160)

(declare-fun choose!18566 (LexerInterface!4713 List!35883 List!35881 List!35881 List!35881 Rule!10048) Unit!50160)

(assert (=> d!870915 (= lt!1070092 (choose!18566 thiss!18206 rules!2135 lt!1070024 lt!1070024 Nil!35757 (rule!7540 (h!41178 tokens!494))))))

(assert (=> d!870915 (not (isEmpty!19881 rules!2135))))

(assert (=> d!870915 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!631 thiss!18206 rules!2135 lt!1070024 lt!1070024 Nil!35757 (rule!7540 (h!41178 tokens!494))) lt!1070092)))

(declare-fun bs!539947 () Bool)

(assert (= bs!539947 d!870915))

(assert (=> bs!539947 m!3439527))

(assert (=> bs!539947 m!3439575))

(assert (=> bs!539947 m!3439527))

(declare-fun m!3439825 () Bool)

(assert (=> bs!539947 m!3439825))

(declare-fun m!3439827 () Bool)

(assert (=> bs!539947 m!3439827))

(assert (=> bs!539947 m!3439565))

(assert (=> bs!539947 m!3439489))

(assert (=> b!3182638 d!870915))

(declare-fun b!3182843 () Bool)

(declare-fun lt!1070104 () Unit!50160)

(declare-fun lt!1070102 () Unit!50160)

(assert (=> b!3182843 (= lt!1070104 lt!1070102)))

(assert (=> b!3182843 (rulesInvariant!4110 thiss!18206 (t!235304 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!334 (LexerInterface!4713 Rule!10048 List!35883) Unit!50160)

(assert (=> b!3182843 (= lt!1070102 (lemmaInvariantOnRulesThenOnTail!334 thiss!18206 (h!41179 rules!2135) (t!235304 rules!2135)))))

(declare-fun e!1983075 () Option!6979)

(assert (=> b!3182843 (= e!1983075 (getRuleFromTag!853 thiss!18206 (t!235304 rules!2135) (tag!5634 (rule!7540 (h!41178 tokens!494)))))))

(declare-fun b!3182844 () Bool)

(declare-fun e!1983078 () Option!6979)

(assert (=> b!3182844 (= e!1983078 e!1983075)))

(declare-fun c!534583 () Bool)

(assert (=> b!3182844 (= c!534583 (and ((_ is Cons!35759) rules!2135) (not (= (tag!5634 (h!41179 rules!2135)) (tag!5634 (rule!7540 (h!41178 tokens!494)))))))))

(declare-fun b!3182845 () Bool)

(declare-fun e!1983077 () Bool)

(declare-fun lt!1070103 () Option!6979)

(assert (=> b!3182845 (= e!1983077 (= (tag!5634 (get!11373 lt!1070103)) (tag!5634 (rule!7540 (h!41178 tokens!494)))))))

(declare-fun b!3182846 () Bool)

(assert (=> b!3182846 (= e!1983078 (Some!6978 (h!41179 rules!2135)))))

(declare-fun d!870917 () Bool)

(declare-fun e!1983076 () Bool)

(assert (=> d!870917 e!1983076))

(declare-fun res!1293704 () Bool)

(assert (=> d!870917 (=> res!1293704 e!1983076)))

(declare-fun isEmpty!19890 (Option!6979) Bool)

(assert (=> d!870917 (= res!1293704 (isEmpty!19890 lt!1070103))))

(assert (=> d!870917 (= lt!1070103 e!1983078)))

(declare-fun c!534584 () Bool)

(assert (=> d!870917 (= c!534584 (and ((_ is Cons!35759) rules!2135) (= (tag!5634 (h!41179 rules!2135)) (tag!5634 (rule!7540 (h!41178 tokens!494))))))))

(assert (=> d!870917 (rulesInvariant!4110 thiss!18206 rules!2135)))

(assert (=> d!870917 (= (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 (h!41178 tokens!494)))) lt!1070103)))

(declare-fun b!3182847 () Bool)

(assert (=> b!3182847 (= e!1983076 e!1983077)))

(declare-fun res!1293703 () Bool)

(assert (=> b!3182847 (=> (not res!1293703) (not e!1983077))))

(declare-fun contains!6330 (List!35883 Rule!10048) Bool)

(assert (=> b!3182847 (= res!1293703 (contains!6330 rules!2135 (get!11373 lt!1070103)))))

(declare-fun b!3182848 () Bool)

(assert (=> b!3182848 (= e!1983075 None!6978)))

(assert (= (and d!870917 c!534584) b!3182846))

(assert (= (and d!870917 (not c!534584)) b!3182844))

(assert (= (and b!3182844 c!534583) b!3182843))

(assert (= (and b!3182844 (not c!534583)) b!3182848))

(assert (= (and d!870917 (not res!1293704)) b!3182847))

(assert (= (and b!3182847 res!1293703) b!3182845))

(declare-fun m!3439831 () Bool)

(assert (=> b!3182843 m!3439831))

(declare-fun m!3439833 () Bool)

(assert (=> b!3182843 m!3439833))

(declare-fun m!3439835 () Bool)

(assert (=> b!3182843 m!3439835))

(declare-fun m!3439837 () Bool)

(assert (=> b!3182845 m!3439837))

(declare-fun m!3439839 () Bool)

(assert (=> d!870917 m!3439839))

(assert (=> d!870917 m!3439491))

(assert (=> b!3182847 m!3439837))

(assert (=> b!3182847 m!3439837))

(declare-fun m!3439841 () Bool)

(assert (=> b!3182847 m!3439841))

(assert (=> b!3182638 d!870917))

(declare-fun b!3182849 () Bool)

(declare-fun lt!1070107 () Unit!50160)

(declare-fun lt!1070105 () Unit!50160)

(assert (=> b!3182849 (= lt!1070107 lt!1070105)))

(assert (=> b!3182849 (rulesInvariant!4110 thiss!18206 (t!235304 rules!2135))))

(assert (=> b!3182849 (= lt!1070105 (lemmaInvariantOnRulesThenOnTail!334 thiss!18206 (h!41179 rules!2135) (t!235304 rules!2135)))))

(declare-fun e!1983079 () Option!6979)

(assert (=> b!3182849 (= e!1983079 (getRuleFromTag!853 thiss!18206 (t!235304 rules!2135) (tag!5634 (rule!7540 separatorToken!241))))))

(declare-fun b!3182850 () Bool)

(declare-fun e!1983082 () Option!6979)

(assert (=> b!3182850 (= e!1983082 e!1983079)))

(declare-fun c!534585 () Bool)

(assert (=> b!3182850 (= c!534585 (and ((_ is Cons!35759) rules!2135) (not (= (tag!5634 (h!41179 rules!2135)) (tag!5634 (rule!7540 separatorToken!241))))))))

(declare-fun b!3182851 () Bool)

(declare-fun e!1983081 () Bool)

(declare-fun lt!1070106 () Option!6979)

(assert (=> b!3182851 (= e!1983081 (= (tag!5634 (get!11373 lt!1070106)) (tag!5634 (rule!7540 separatorToken!241))))))

(declare-fun b!3182852 () Bool)

(assert (=> b!3182852 (= e!1983082 (Some!6978 (h!41179 rules!2135)))))

(declare-fun d!870923 () Bool)

(declare-fun e!1983080 () Bool)

(assert (=> d!870923 e!1983080))

(declare-fun res!1293706 () Bool)

(assert (=> d!870923 (=> res!1293706 e!1983080)))

(assert (=> d!870923 (= res!1293706 (isEmpty!19890 lt!1070106))))

(assert (=> d!870923 (= lt!1070106 e!1983082)))

(declare-fun c!534586 () Bool)

(assert (=> d!870923 (= c!534586 (and ((_ is Cons!35759) rules!2135) (= (tag!5634 (h!41179 rules!2135)) (tag!5634 (rule!7540 separatorToken!241)))))))

(assert (=> d!870923 (rulesInvariant!4110 thiss!18206 rules!2135)))

(assert (=> d!870923 (= (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 separatorToken!241))) lt!1070106)))

(declare-fun b!3182853 () Bool)

(assert (=> b!3182853 (= e!1983080 e!1983081)))

(declare-fun res!1293705 () Bool)

(assert (=> b!3182853 (=> (not res!1293705) (not e!1983081))))

(assert (=> b!3182853 (= res!1293705 (contains!6330 rules!2135 (get!11373 lt!1070106)))))

(declare-fun b!3182854 () Bool)

(assert (=> b!3182854 (= e!1983079 None!6978)))

(assert (= (and d!870923 c!534586) b!3182852))

(assert (= (and d!870923 (not c!534586)) b!3182850))

(assert (= (and b!3182850 c!534585) b!3182849))

(assert (= (and b!3182850 (not c!534585)) b!3182854))

(assert (= (and d!870923 (not res!1293706)) b!3182853))

(assert (= (and b!3182853 res!1293705) b!3182851))

(assert (=> b!3182849 m!3439831))

(assert (=> b!3182849 m!3439833))

(declare-fun m!3439843 () Bool)

(assert (=> b!3182849 m!3439843))

(declare-fun m!3439845 () Bool)

(assert (=> b!3182851 m!3439845))

(declare-fun m!3439847 () Bool)

(assert (=> d!870923 m!3439847))

(assert (=> d!870923 m!3439491))

(assert (=> b!3182853 m!3439845))

(assert (=> b!3182853 m!3439845))

(declare-fun m!3439849 () Bool)

(assert (=> b!3182853 m!3439849))

(assert (=> b!3182638 d!870923))

(declare-fun d!870925 () Bool)

(declare-fun dynLambda!14429 (Int BalanceConc!20860) TokenValue!5354)

(assert (=> d!870925 (= (apply!8044 (transformation!5124 (rule!7540 (h!41178 tokens!494))) lt!1070009) (dynLambda!14429 (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) lt!1070009))))

(declare-fun b_lambda!86727 () Bool)

(assert (=> (not b_lambda!86727) (not d!870925)))

(declare-fun tb!155347 () Bool)

(declare-fun t!235326 () Bool)

(assert (=> (and b!3182637 (= (toValue!7184 (transformation!5124 (h!41179 rules!2135))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235326) tb!155347))

(declare-fun result!197434 () Bool)

(assert (=> tb!155347 (= result!197434 (inv!21 (dynLambda!14429 (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) lt!1070009)))))

(declare-fun m!3439851 () Bool)

(assert (=> tb!155347 m!3439851))

(assert (=> d!870925 t!235326))

(declare-fun b_and!210491 () Bool)

(assert (= b_and!210455 (and (=> t!235326 result!197434) b_and!210491)))

(declare-fun t!235328 () Bool)

(declare-fun tb!155349 () Bool)

(assert (=> (and b!3182618 (= (toValue!7184 (transformation!5124 (rule!7540 separatorToken!241))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235328) tb!155349))

(declare-fun result!197438 () Bool)

(assert (= result!197438 result!197434))

(assert (=> d!870925 t!235328))

(declare-fun b_and!210493 () Bool)

(assert (= b_and!210459 (and (=> t!235328 result!197438) b_and!210493)))

(declare-fun t!235330 () Bool)

(declare-fun tb!155351 () Bool)

(assert (=> (and b!3182620 (= (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235330) tb!155351))

(declare-fun result!197440 () Bool)

(assert (= result!197440 result!197434))

(assert (=> d!870925 t!235330))

(declare-fun b_and!210495 () Bool)

(assert (= b_and!210463 (and (=> t!235330 result!197440) b_and!210495)))

(declare-fun m!3439853 () Bool)

(assert (=> d!870925 m!3439853))

(assert (=> b!3182638 d!870925))

(declare-fun d!870927 () Bool)

(declare-fun e!1983091 () Bool)

(assert (=> d!870927 e!1983091))

(declare-fun res!1293711 () Bool)

(assert (=> d!870927 (=> (not res!1293711) (not e!1983091))))

(assert (=> d!870927 (= res!1293711 (isDefined!5468 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 separatorToken!241)))))))

(declare-fun lt!1070116 () Unit!50160)

(declare-fun choose!18568 (LexerInterface!4713 List!35883 List!35881 Token!9614) Unit!50160)

(assert (=> d!870927 (= lt!1070116 (choose!18568 thiss!18206 rules!2135 lt!1070011 separatorToken!241))))

(assert (=> d!870927 (rulesInvariant!4110 thiss!18206 rules!2135)))

(assert (=> d!870927 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!853 thiss!18206 rules!2135 lt!1070011 separatorToken!241) lt!1070116)))

(declare-fun b!3182867 () Bool)

(declare-fun res!1293712 () Bool)

(assert (=> b!3182867 (=> (not res!1293712) (not e!1983091))))

(assert (=> b!3182867 (= res!1293712 (matchR!4541 (regex!5124 (get!11373 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 separatorToken!241))))) (list!12693 (charsOf!3146 separatorToken!241))))))

(declare-fun b!3182868 () Bool)

(assert (=> b!3182868 (= e!1983091 (= (rule!7540 separatorToken!241) (get!11373 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 separatorToken!241))))))))

(assert (= (and d!870927 res!1293711) b!3182867))

(assert (= (and b!3182867 res!1293712) b!3182868))

(assert (=> d!870927 m!3439579))

(assert (=> d!870927 m!3439579))

(declare-fun m!3439865 () Bool)

(assert (=> d!870927 m!3439865))

(declare-fun m!3439867 () Bool)

(assert (=> d!870927 m!3439867))

(assert (=> d!870927 m!3439491))

(assert (=> b!3182867 m!3439529))

(assert (=> b!3182867 m!3439537))

(assert (=> b!3182867 m!3439579))

(assert (=> b!3182867 m!3439529))

(assert (=> b!3182867 m!3439537))

(declare-fun m!3439869 () Bool)

(assert (=> b!3182867 m!3439869))

(assert (=> b!3182867 m!3439579))

(declare-fun m!3439871 () Bool)

(assert (=> b!3182867 m!3439871))

(assert (=> b!3182868 m!3439579))

(assert (=> b!3182868 m!3439579))

(assert (=> b!3182868 m!3439871))

(assert (=> b!3182638 d!870927))

(declare-fun d!870933 () Bool)

(declare-fun lt!1070119 () Bool)

(assert (=> d!870933 (= lt!1070119 (select (content!4846 (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241)))) lt!1070013))))

(declare-fun e!1983097 () Bool)

(assert (=> d!870933 (= lt!1070119 e!1983097)))

(declare-fun res!1293718 () Bool)

(assert (=> d!870933 (=> (not res!1293718) (not e!1983097))))

(assert (=> d!870933 (= res!1293718 ((_ is Cons!35757) (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241)))))))

(assert (=> d!870933 (= (contains!6327 (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241))) lt!1070013) lt!1070119)))

(declare-fun b!3182873 () Bool)

(declare-fun e!1983096 () Bool)

(assert (=> b!3182873 (= e!1983097 e!1983096)))

(declare-fun res!1293717 () Bool)

(assert (=> b!3182873 (=> res!1293717 e!1983096)))

(assert (=> b!3182873 (= res!1293717 (= (h!41177 (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241)))) lt!1070013))))

(declare-fun b!3182874 () Bool)

(assert (=> b!3182874 (= e!1983096 (contains!6327 (t!235302 (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241)))) lt!1070013))))

(assert (= (and d!870933 res!1293718) b!3182873))

(assert (= (and b!3182873 (not res!1293717)) b!3182874))

(assert (=> d!870933 m!3439549))

(declare-fun m!3439873 () Bool)

(assert (=> d!870933 m!3439873))

(declare-fun m!3439875 () Bool)

(assert (=> d!870933 m!3439875))

(declare-fun m!3439877 () Bool)

(assert (=> b!3182874 m!3439877))

(assert (=> b!3182638 d!870933))

(declare-fun b!3182955 () Bool)

(declare-fun e!1983143 () Option!6980)

(declare-datatypes ((tuple2!35110 0))(
  ( (tuple2!35111 (_1!20689 List!35881) (_2!20689 List!35881)) )
))
(declare-fun lt!1070153 () tuple2!35110)

(declare-fun size!26987 (BalanceConc!20860) Int)

(assert (=> b!3182955 (= e!1983143 (Some!6979 (tuple2!35103 (Token!9615 (apply!8044 (transformation!5124 (rule!7540 (h!41178 tokens!494))) (seqFromList!3328 (_1!20689 lt!1070153))) (rule!7540 (h!41178 tokens!494)) (size!26987 (seqFromList!3328 (_1!20689 lt!1070153))) (_1!20689 lt!1070153)) (_2!20689 lt!1070153))))))

(declare-fun lt!1070152 () Unit!50160)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!788 (Regex!9883 List!35881) Unit!50160)

(assert (=> b!3182955 (= lt!1070152 (longestMatchIsAcceptedByMatchOrIsEmpty!788 (regex!5124 (rule!7540 (h!41178 tokens!494))) lt!1070024))))

(declare-fun res!1293747 () Bool)

(declare-fun findLongestMatchInner!815 (Regex!9883 List!35881 Int List!35881 List!35881 Int) tuple2!35110)

(assert (=> b!3182955 (= res!1293747 (isEmpty!19882 (_1!20689 (findLongestMatchInner!815 (regex!5124 (rule!7540 (h!41178 tokens!494))) Nil!35757 (size!26983 Nil!35757) lt!1070024 lt!1070024 (size!26983 lt!1070024)))))))

(declare-fun e!1983146 () Bool)

(assert (=> b!3182955 (=> res!1293747 e!1983146)))

(assert (=> b!3182955 e!1983146))

(declare-fun lt!1070155 () Unit!50160)

(assert (=> b!3182955 (= lt!1070155 lt!1070152)))

(declare-fun lt!1070154 () Unit!50160)

(declare-fun lemmaSemiInverse!1157 (TokenValueInjection!10136 BalanceConc!20860) Unit!50160)

(assert (=> b!3182955 (= lt!1070154 (lemmaSemiInverse!1157 (transformation!5124 (rule!7540 (h!41178 tokens!494))) (seqFromList!3328 (_1!20689 lt!1070153))))))

(declare-fun d!870935 () Bool)

(declare-fun e!1983144 () Bool)

(assert (=> d!870935 e!1983144))

(declare-fun res!1293753 () Bool)

(assert (=> d!870935 (=> res!1293753 e!1983144)))

(declare-fun lt!1070151 () Option!6980)

(declare-fun isEmpty!19891 (Option!6980) Bool)

(assert (=> d!870935 (= res!1293753 (isEmpty!19891 lt!1070151))))

(assert (=> d!870935 (= lt!1070151 e!1983143)))

(declare-fun c!534615 () Bool)

(assert (=> d!870935 (= c!534615 (isEmpty!19882 (_1!20689 lt!1070153)))))

(declare-fun findLongestMatch!730 (Regex!9883 List!35881) tuple2!35110)

(assert (=> d!870935 (= lt!1070153 (findLongestMatch!730 (regex!5124 (rule!7540 (h!41178 tokens!494))) lt!1070024))))

(declare-fun ruleValid!1624 (LexerInterface!4713 Rule!10048) Bool)

(assert (=> d!870935 (ruleValid!1624 thiss!18206 (rule!7540 (h!41178 tokens!494)))))

(assert (=> d!870935 (= (maxPrefixOneRule!1518 thiss!18206 (rule!7540 (h!41178 tokens!494)) lt!1070024) lt!1070151)))

(declare-fun b!3182956 () Bool)

(declare-fun e!1983145 () Bool)

(declare-fun get!11375 (Option!6980) tuple2!35102)

(assert (=> b!3182956 (= e!1983145 (= (size!26982 (_1!20685 (get!11375 lt!1070151))) (size!26983 (originalCharacters!5838 (_1!20685 (get!11375 lt!1070151))))))))

(declare-fun b!3182957 () Bool)

(declare-fun res!1293751 () Bool)

(assert (=> b!3182957 (=> (not res!1293751) (not e!1983145))))

(assert (=> b!3182957 (= res!1293751 (< (size!26983 (_2!20685 (get!11375 lt!1070151))) (size!26983 lt!1070024)))))

(declare-fun b!3182958 () Bool)

(declare-fun res!1293750 () Bool)

(assert (=> b!3182958 (=> (not res!1293750) (not e!1983145))))

(assert (=> b!3182958 (= res!1293750 (= (value!166494 (_1!20685 (get!11375 lt!1070151))) (apply!8044 (transformation!5124 (rule!7540 (_1!20685 (get!11375 lt!1070151)))) (seqFromList!3328 (originalCharacters!5838 (_1!20685 (get!11375 lt!1070151)))))))))

(declare-fun b!3182959 () Bool)

(assert (=> b!3182959 (= e!1983144 e!1983145)))

(declare-fun res!1293748 () Bool)

(assert (=> b!3182959 (=> (not res!1293748) (not e!1983145))))

(assert (=> b!3182959 (= res!1293748 (matchR!4541 (regex!5124 (rule!7540 (h!41178 tokens!494))) (list!12693 (charsOf!3146 (_1!20685 (get!11375 lt!1070151))))))))

(declare-fun b!3182960 () Bool)

(declare-fun res!1293749 () Bool)

(assert (=> b!3182960 (=> (not res!1293749) (not e!1983145))))

(assert (=> b!3182960 (= res!1293749 (= (++!8550 (list!12693 (charsOf!3146 (_1!20685 (get!11375 lt!1070151)))) (_2!20685 (get!11375 lt!1070151))) lt!1070024))))

(declare-fun b!3182961 () Bool)

(assert (=> b!3182961 (= e!1983146 (matchR!4541 (regex!5124 (rule!7540 (h!41178 tokens!494))) (_1!20689 (findLongestMatchInner!815 (regex!5124 (rule!7540 (h!41178 tokens!494))) Nil!35757 (size!26983 Nil!35757) lt!1070024 lt!1070024 (size!26983 lt!1070024)))))))

(declare-fun b!3182962 () Bool)

(assert (=> b!3182962 (= e!1983143 None!6979)))

(declare-fun b!3182963 () Bool)

(declare-fun res!1293752 () Bool)

(assert (=> b!3182963 (=> (not res!1293752) (not e!1983145))))

(assert (=> b!3182963 (= res!1293752 (= (rule!7540 (_1!20685 (get!11375 lt!1070151))) (rule!7540 (h!41178 tokens!494))))))

(assert (= (and d!870935 c!534615) b!3182962))

(assert (= (and d!870935 (not c!534615)) b!3182955))

(assert (= (and b!3182955 (not res!1293747)) b!3182961))

(assert (= (and d!870935 (not res!1293753)) b!3182959))

(assert (= (and b!3182959 res!1293748) b!3182960))

(assert (= (and b!3182960 res!1293749) b!3182957))

(assert (= (and b!3182957 res!1293751) b!3182963))

(assert (= (and b!3182963 res!1293752) b!3182958))

(assert (= (and b!3182958 res!1293750) b!3182956))

(declare-fun m!3439923 () Bool)

(assert (=> b!3182958 m!3439923))

(declare-fun m!3439925 () Bool)

(assert (=> b!3182958 m!3439925))

(assert (=> b!3182958 m!3439925))

(declare-fun m!3439927 () Bool)

(assert (=> b!3182958 m!3439927))

(assert (=> b!3182959 m!3439923))

(declare-fun m!3439929 () Bool)

(assert (=> b!3182959 m!3439929))

(assert (=> b!3182959 m!3439929))

(declare-fun m!3439931 () Bool)

(assert (=> b!3182959 m!3439931))

(assert (=> b!3182959 m!3439931))

(declare-fun m!3439933 () Bool)

(assert (=> b!3182959 m!3439933))

(assert (=> b!3182960 m!3439923))

(assert (=> b!3182960 m!3439929))

(assert (=> b!3182960 m!3439929))

(assert (=> b!3182960 m!3439931))

(assert (=> b!3182960 m!3439931))

(declare-fun m!3439935 () Bool)

(assert (=> b!3182960 m!3439935))

(assert (=> b!3182957 m!3439923))

(declare-fun m!3439937 () Bool)

(assert (=> b!3182957 m!3439937))

(assert (=> b!3182957 m!3439575))

(assert (=> b!3182963 m!3439923))

(declare-fun m!3439939 () Bool)

(assert (=> d!870935 m!3439939))

(declare-fun m!3439941 () Bool)

(assert (=> d!870935 m!3439941))

(declare-fun m!3439943 () Bool)

(assert (=> d!870935 m!3439943))

(declare-fun m!3439945 () Bool)

(assert (=> d!870935 m!3439945))

(declare-fun m!3439947 () Bool)

(assert (=> b!3182961 m!3439947))

(assert (=> b!3182961 m!3439575))

(assert (=> b!3182961 m!3439947))

(assert (=> b!3182961 m!3439575))

(declare-fun m!3439949 () Bool)

(assert (=> b!3182961 m!3439949))

(declare-fun m!3439951 () Bool)

(assert (=> b!3182961 m!3439951))

(assert (=> b!3182956 m!3439923))

(declare-fun m!3439953 () Bool)

(assert (=> b!3182956 m!3439953))

(declare-fun m!3439955 () Bool)

(assert (=> b!3182955 m!3439955))

(declare-fun m!3439957 () Bool)

(assert (=> b!3182955 m!3439957))

(declare-fun m!3439959 () Bool)

(assert (=> b!3182955 m!3439959))

(assert (=> b!3182955 m!3439957))

(declare-fun m!3439961 () Bool)

(assert (=> b!3182955 m!3439961))

(assert (=> b!3182955 m!3439575))

(assert (=> b!3182955 m!3439947))

(assert (=> b!3182955 m!3439957))

(declare-fun m!3439963 () Bool)

(assert (=> b!3182955 m!3439963))

(assert (=> b!3182955 m!3439947))

(assert (=> b!3182955 m!3439575))

(assert (=> b!3182955 m!3439949))

(assert (=> b!3182955 m!3439957))

(declare-fun m!3439965 () Bool)

(assert (=> b!3182955 m!3439965))

(assert (=> b!3182638 d!870935))

(declare-fun b!3182980 () Bool)

(declare-fun e!1983158 () List!35881)

(assert (=> b!3182980 (= e!1983158 (Cons!35757 (c!534540 (regex!5124 (rule!7540 separatorToken!241))) Nil!35757))))

(declare-fun bm!231019 () Bool)

(declare-fun call!231026 () List!35881)

(declare-fun call!231025 () List!35881)

(assert (=> bm!231019 (= call!231026 call!231025)))

(declare-fun d!870955 () Bool)

(declare-fun c!534624 () Bool)

(assert (=> d!870955 (= c!534624 (or ((_ is EmptyExpr!9883) (regex!5124 (rule!7540 separatorToken!241))) ((_ is EmptyLang!9883) (regex!5124 (rule!7540 separatorToken!241)))))))

(declare-fun e!1983155 () List!35881)

(assert (=> d!870955 (= (usedCharacters!468 (regex!5124 (rule!7540 separatorToken!241))) e!1983155)))

(declare-fun b!3182981 () Bool)

(assert (=> b!3182981 (= e!1983155 Nil!35757)))

(declare-fun b!3182982 () Bool)

(declare-fun e!1983157 () List!35881)

(declare-fun call!231027 () List!35881)

(assert (=> b!3182982 (= e!1983157 call!231027)))

(declare-fun c!534626 () Bool)

(declare-fun call!231024 () List!35881)

(declare-fun bm!231020 () Bool)

(assert (=> bm!231020 (= call!231027 (++!8550 (ite c!534626 call!231026 call!231024) (ite c!534626 call!231024 call!231026)))))

(declare-fun b!3182983 () Bool)

(declare-fun c!534627 () Bool)

(assert (=> b!3182983 (= c!534627 ((_ is Star!9883) (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun e!1983156 () List!35881)

(assert (=> b!3182983 (= e!1983158 e!1983156)))

(declare-fun b!3182984 () Bool)

(assert (=> b!3182984 (= e!1983156 call!231025)))

(declare-fun b!3182985 () Bool)

(assert (=> b!3182985 (= e!1983157 call!231027)))

(declare-fun b!3182986 () Bool)

(assert (=> b!3182986 (= e!1983156 e!1983157)))

(assert (=> b!3182986 (= c!534626 ((_ is Union!9883) (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun bm!231021 () Bool)

(assert (=> bm!231021 (= call!231024 (usedCharacters!468 (ite c!534626 (regTwo!20279 (regex!5124 (rule!7540 separatorToken!241))) (regOne!20278 (regex!5124 (rule!7540 separatorToken!241))))))))

(declare-fun b!3182987 () Bool)

(assert (=> b!3182987 (= e!1983155 e!1983158)))

(declare-fun c!534625 () Bool)

(assert (=> b!3182987 (= c!534625 ((_ is ElementMatch!9883) (regex!5124 (rule!7540 separatorToken!241))))))

(declare-fun bm!231022 () Bool)

(assert (=> bm!231022 (= call!231025 (usedCharacters!468 (ite c!534627 (reg!10212 (regex!5124 (rule!7540 separatorToken!241))) (ite c!534626 (regOne!20279 (regex!5124 (rule!7540 separatorToken!241))) (regTwo!20278 (regex!5124 (rule!7540 separatorToken!241)))))))))

(assert (= (and d!870955 c!534624) b!3182981))

(assert (= (and d!870955 (not c!534624)) b!3182987))

(assert (= (and b!3182987 c!534625) b!3182980))

(assert (= (and b!3182987 (not c!534625)) b!3182983))

(assert (= (and b!3182983 c!534627) b!3182984))

(assert (= (and b!3182983 (not c!534627)) b!3182986))

(assert (= (and b!3182986 c!534626) b!3182982))

(assert (= (and b!3182986 (not c!534626)) b!3182985))

(assert (= (or b!3182982 b!3182985) bm!231021))

(assert (= (or b!3182982 b!3182985) bm!231019))

(assert (= (or b!3182982 b!3182985) bm!231020))

(assert (= (or b!3182984 bm!231019) bm!231022))

(declare-fun m!3439967 () Bool)

(assert (=> bm!231020 m!3439967))

(declare-fun m!3439969 () Bool)

(assert (=> bm!231021 m!3439969))

(declare-fun m!3439971 () Bool)

(assert (=> bm!231022 m!3439971))

(assert (=> b!3182638 d!870955))

(declare-fun d!870957 () Bool)

(declare-fun e!1983159 () Bool)

(assert (=> d!870957 e!1983159))

(declare-fun res!1293754 () Bool)

(assert (=> d!870957 (=> (not res!1293754) (not e!1983159))))

(assert (=> d!870957 (= res!1293754 (isDefined!5468 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 (h!41178 tokens!494))))))))

(declare-fun lt!1070156 () Unit!50160)

(assert (=> d!870957 (= lt!1070156 (choose!18568 thiss!18206 rules!2135 lt!1070024 (h!41178 tokens!494)))))

(assert (=> d!870957 (rulesInvariant!4110 thiss!18206 rules!2135)))

(assert (=> d!870957 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!853 thiss!18206 rules!2135 lt!1070024 (h!41178 tokens!494)) lt!1070156)))

(declare-fun b!3182988 () Bool)

(declare-fun res!1293755 () Bool)

(assert (=> b!3182988 (=> (not res!1293755) (not e!1983159))))

(assert (=> b!3182988 (= res!1293755 (matchR!4541 (regex!5124 (get!11373 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 (h!41178 tokens!494)))))) (list!12693 (charsOf!3146 (h!41178 tokens!494)))))))

(declare-fun b!3182989 () Bool)

(assert (=> b!3182989 (= e!1983159 (= (rule!7540 (h!41178 tokens!494)) (get!11373 (getRuleFromTag!853 thiss!18206 rules!2135 (tag!5634 (rule!7540 (h!41178 tokens!494)))))))))

(assert (= (and d!870957 res!1293754) b!3182988))

(assert (= (and b!3182988 res!1293755) b!3182989))

(assert (=> d!870957 m!3439553))

(assert (=> d!870957 m!3439553))

(declare-fun m!3439973 () Bool)

(assert (=> d!870957 m!3439973))

(declare-fun m!3439975 () Bool)

(assert (=> d!870957 m!3439975))

(assert (=> d!870957 m!3439491))

(assert (=> b!3182988 m!3439473))

(assert (=> b!3182988 m!3439475))

(assert (=> b!3182988 m!3439553))

(assert (=> b!3182988 m!3439473))

(assert (=> b!3182988 m!3439475))

(declare-fun m!3439977 () Bool)

(assert (=> b!3182988 m!3439977))

(assert (=> b!3182988 m!3439553))

(declare-fun m!3439979 () Bool)

(assert (=> b!3182988 m!3439979))

(assert (=> b!3182989 m!3439553))

(assert (=> b!3182989 m!3439553))

(assert (=> b!3182989 m!3439979))

(assert (=> b!3182638 d!870957))

(declare-fun d!870959 () Bool)

(assert (=> d!870959 (= (isDefined!5468 lt!1070019) (not (isEmpty!19890 lt!1070019)))))

(declare-fun bs!539952 () Bool)

(assert (= bs!539952 d!870959))

(declare-fun m!3439981 () Bool)

(assert (=> bs!539952 m!3439981))

(assert (=> b!3182638 d!870959))

(declare-fun d!870961 () Bool)

(declare-fun lt!1070159 () Int)

(assert (=> d!870961 (>= lt!1070159 0)))

(declare-fun e!1983162 () Int)

(assert (=> d!870961 (= lt!1070159 e!1983162)))

(declare-fun c!534630 () Bool)

(assert (=> d!870961 (= c!534630 ((_ is Nil!35757) lt!1070024))))

(assert (=> d!870961 (= (size!26983 lt!1070024) lt!1070159)))

(declare-fun b!3182994 () Bool)

(assert (=> b!3182994 (= e!1983162 0)))

(declare-fun b!3182995 () Bool)

(assert (=> b!3182995 (= e!1983162 (+ 1 (size!26983 (t!235302 lt!1070024))))))

(assert (= (and d!870961 c!534630) b!3182994))

(assert (= (and d!870961 (not c!534630)) b!3182995))

(declare-fun m!3439983 () Bool)

(assert (=> b!3182995 m!3439983))

(assert (=> b!3182638 d!870961))

(declare-fun d!870963 () Bool)

(assert (=> d!870963 (isEmpty!19882 (getSuffix!1340 lt!1070024 lt!1070024))))

(declare-fun lt!1070162 () Unit!50160)

(declare-fun choose!18570 (List!35881) Unit!50160)

(assert (=> d!870963 (= lt!1070162 (choose!18570 lt!1070024))))

(assert (=> d!870963 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!18 lt!1070024) lt!1070162)))

(declare-fun bs!539953 () Bool)

(assert (= bs!539953 d!870963))

(assert (=> bs!539953 m!3439571))

(assert (=> bs!539953 m!3439571))

(assert (=> bs!539953 m!3439573))

(declare-fun m!3439985 () Bool)

(assert (=> bs!539953 m!3439985))

(assert (=> b!3182638 d!870963))

(declare-fun d!870965 () Bool)

(assert (=> d!870965 (= (head!6951 lt!1070011) (h!41177 lt!1070011))))

(assert (=> b!3182638 d!870965))

(declare-fun d!870967 () Bool)

(assert (=> d!870967 (= (isEmpty!19882 (getSuffix!1340 lt!1070024 lt!1070024)) ((_ is Nil!35757) (getSuffix!1340 lt!1070024 lt!1070024)))))

(assert (=> b!3182638 d!870967))

(declare-fun d!870969 () Bool)

(assert (=> d!870969 (= (isDefined!5468 lt!1070007) (not (isEmpty!19890 lt!1070007)))))

(declare-fun bs!539954 () Bool)

(assert (= bs!539954 d!870969))

(declare-fun m!3439987 () Bool)

(assert (=> bs!539954 m!3439987))

(assert (=> b!3182638 d!870969))

(declare-fun d!870971 () Bool)

(declare-fun res!1293758 () Bool)

(declare-fun e!1983165 () Bool)

(assert (=> d!870971 (=> (not res!1293758) (not e!1983165))))

(declare-fun rulesValid!1895 (LexerInterface!4713 List!35883) Bool)

(assert (=> d!870971 (= res!1293758 (rulesValid!1895 thiss!18206 rules!2135))))

(assert (=> d!870971 (= (rulesInvariant!4110 thiss!18206 rules!2135) e!1983165)))

(declare-fun b!3182998 () Bool)

(declare-datatypes ((List!35885 0))(
  ( (Nil!35761) (Cons!35761 (h!41181 String!40104) (t!235380 List!35885)) )
))
(declare-fun noDuplicateTag!1891 (LexerInterface!4713 List!35883 List!35885) Bool)

(assert (=> b!3182998 (= e!1983165 (noDuplicateTag!1891 thiss!18206 rules!2135 Nil!35761))))

(assert (= (and d!870971 res!1293758) b!3182998))

(declare-fun m!3439989 () Bool)

(assert (=> d!870971 m!3439989))

(declare-fun m!3439991 () Bool)

(assert (=> b!3182998 m!3439991))

(assert (=> b!3182629 d!870971))

(declare-fun d!870973 () Bool)

(declare-fun lt!1070175 () Bool)

(declare-fun isEmpty!19892 (List!35882) Bool)

(assert (=> d!870973 (= lt!1070175 (isEmpty!19892 (list!12696 (_1!20686 (lex!2053 thiss!18206 rules!2135 lt!1070009)))))))

(declare-fun isEmpty!19893 (Conc!10624) Bool)

(assert (=> d!870973 (= lt!1070175 (isEmpty!19893 (c!534542 (_1!20686 (lex!2053 thiss!18206 rules!2135 lt!1070009)))))))

(assert (=> d!870973 (= (isEmpty!19883 (_1!20686 (lex!2053 thiss!18206 rules!2135 lt!1070009))) lt!1070175)))

(declare-fun bs!539955 () Bool)

(assert (= bs!539955 d!870973))

(declare-fun m!3439993 () Bool)

(assert (=> bs!539955 m!3439993))

(assert (=> bs!539955 m!3439993))

(declare-fun m!3439995 () Bool)

(assert (=> bs!539955 m!3439995))

(declare-fun m!3439997 () Bool)

(assert (=> bs!539955 m!3439997))

(assert (=> b!3182640 d!870973))

(declare-fun b!3183044 () Bool)

(declare-fun e!1983191 () Bool)

(declare-fun e!1983192 () Bool)

(assert (=> b!3183044 (= e!1983191 e!1983192)))

(declare-fun res!1293796 () Bool)

(declare-fun lt!1070190 () tuple2!35104)

(assert (=> b!3183044 (= res!1293796 (< (size!26987 (_2!20686 lt!1070190)) (size!26987 lt!1070009)))))

(assert (=> b!3183044 (=> (not res!1293796) (not e!1983192))))

(declare-fun b!3183045 () Bool)

(assert (=> b!3183045 (= e!1983191 (= (_2!20686 lt!1070190) lt!1070009))))

(declare-fun b!3183046 () Bool)

(declare-fun e!1983193 () Bool)

(declare-datatypes ((tuple2!35112 0))(
  ( (tuple2!35113 (_1!20690 List!35882) (_2!20690 List!35881)) )
))
(declare-fun lexList!1275 (LexerInterface!4713 List!35883 List!35881) tuple2!35112)

(assert (=> b!3183046 (= e!1983193 (= (list!12693 (_2!20686 lt!1070190)) (_2!20690 (lexList!1275 thiss!18206 rules!2135 (list!12693 lt!1070009)))))))

(declare-fun b!3183047 () Bool)

(assert (=> b!3183047 (= e!1983192 (not (isEmpty!19883 (_1!20686 lt!1070190))))))

(declare-fun b!3183048 () Bool)

(declare-fun res!1293795 () Bool)

(assert (=> b!3183048 (=> (not res!1293795) (not e!1983193))))

(assert (=> b!3183048 (= res!1293795 (= (list!12696 (_1!20686 lt!1070190)) (_1!20690 (lexList!1275 thiss!18206 rules!2135 (list!12693 lt!1070009)))))))

(declare-fun d!870975 () Bool)

(assert (=> d!870975 e!1983193))

(declare-fun res!1293794 () Bool)

(assert (=> d!870975 (=> (not res!1293794) (not e!1983193))))

(assert (=> d!870975 (= res!1293794 e!1983191)))

(declare-fun c!534636 () Bool)

(assert (=> d!870975 (= c!534636 (> (size!26986 (_1!20686 lt!1070190)) 0))))

(declare-fun lexTailRecV2!913 (LexerInterface!4713 List!35883 BalanceConc!20860 BalanceConc!20860 BalanceConc!20860 BalanceConc!20862) tuple2!35104)

(assert (=> d!870975 (= lt!1070190 (lexTailRecV2!913 thiss!18206 rules!2135 lt!1070009 (BalanceConc!20861 Empty!10623) lt!1070009 (BalanceConc!20863 Empty!10624)))))

(assert (=> d!870975 (= (lex!2053 thiss!18206 rules!2135 lt!1070009) lt!1070190)))

(assert (= (and d!870975 c!534636) b!3183044))

(assert (= (and d!870975 (not c!534636)) b!3183045))

(assert (= (and b!3183044 res!1293796) b!3183047))

(assert (= (and d!870975 res!1293794) b!3183048))

(assert (= (and b!3183048 res!1293795) b!3183046))

(declare-fun m!3440063 () Bool)

(assert (=> b!3183046 m!3440063))

(declare-fun m!3440065 () Bool)

(assert (=> b!3183046 m!3440065))

(assert (=> b!3183046 m!3440065))

(declare-fun m!3440067 () Bool)

(assert (=> b!3183046 m!3440067))

(declare-fun m!3440069 () Bool)

(assert (=> b!3183044 m!3440069))

(declare-fun m!3440071 () Bool)

(assert (=> b!3183044 m!3440071))

(declare-fun m!3440073 () Bool)

(assert (=> b!3183047 m!3440073))

(declare-fun m!3440075 () Bool)

(assert (=> b!3183048 m!3440075))

(assert (=> b!3183048 m!3440065))

(assert (=> b!3183048 m!3440065))

(assert (=> b!3183048 m!3440067))

(declare-fun m!3440077 () Bool)

(assert (=> d!870975 m!3440077))

(declare-fun m!3440079 () Bool)

(assert (=> d!870975 m!3440079))

(assert (=> b!3182640 d!870975))

(declare-fun d!870985 () Bool)

(declare-fun fromListB!1501 (List!35881) BalanceConc!20860)

(assert (=> d!870985 (= (seqFromList!3328 lt!1070024) (fromListB!1501 lt!1070024))))

(declare-fun bs!539957 () Bool)

(assert (= bs!539957 d!870985))

(declare-fun m!3440081 () Bool)

(assert (=> bs!539957 m!3440081))

(assert (=> b!3182640 d!870985))

(declare-fun bs!539967 () Bool)

(declare-fun d!870987 () Bool)

(assert (= bs!539967 (and d!870987 b!3182621)))

(declare-fun lambda!116453 () Int)

(assert (=> bs!539967 (not (= lambda!116453 lambda!116443))))

(declare-fun b!3183299 () Bool)

(declare-fun e!1983357 () Bool)

(assert (=> b!3183299 (= e!1983357 true)))

(declare-fun b!3183298 () Bool)

(declare-fun e!1983356 () Bool)

(assert (=> b!3183298 (= e!1983356 e!1983357)))

(declare-fun b!3183297 () Bool)

(declare-fun e!1983355 () Bool)

(assert (=> b!3183297 (= e!1983355 e!1983356)))

(assert (=> d!870987 e!1983355))

(assert (= b!3183298 b!3183299))

(assert (= b!3183297 b!3183298))

(assert (= (and d!870987 ((_ is Cons!35759) rules!2135)) b!3183297))

(declare-fun order!18223 () Int)

(declare-fun order!18221 () Int)

(declare-fun dynLambda!14431 (Int Int) Int)

(declare-fun dynLambda!14432 (Int Int) Int)

(assert (=> b!3183299 (< (dynLambda!14431 order!18221 (toValue!7184 (transformation!5124 (h!41179 rules!2135)))) (dynLambda!14432 order!18223 lambda!116453))))

(declare-fun order!18225 () Int)

(declare-fun dynLambda!14433 (Int Int) Int)

(assert (=> b!3183299 (< (dynLambda!14433 order!18225 (toChars!7043 (transformation!5124 (h!41179 rules!2135)))) (dynLambda!14432 order!18223 lambda!116453))))

(assert (=> d!870987 true))

(declare-fun e!1983348 () Bool)

(assert (=> d!870987 e!1983348))

(declare-fun res!1293907 () Bool)

(assert (=> d!870987 (=> (not res!1293907) (not e!1983348))))

(declare-fun lt!1070252 () Bool)

(assert (=> d!870987 (= res!1293907 (= lt!1070252 (forall!7240 (list!12696 lt!1070022) lambda!116453)))))

(declare-fun forall!7242 (BalanceConc!20862 Int) Bool)

(assert (=> d!870987 (= lt!1070252 (forall!7242 lt!1070022 lambda!116453))))

(assert (=> d!870987 (not (isEmpty!19881 rules!2135))))

(assert (=> d!870987 (= (rulesProduceEachTokenIndividually!1164 thiss!18206 rules!2135 lt!1070022) lt!1070252)))

(declare-fun b!3183288 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1703 (LexerInterface!4713 List!35883 List!35882) Bool)

(assert (=> b!3183288 (= e!1983348 (= lt!1070252 (rulesProduceEachTokenIndividuallyList!1703 thiss!18206 rules!2135 (list!12696 lt!1070022))))))

(assert (= (and d!870987 res!1293907) b!3183288))

(assert (=> d!870987 m!3439757))

(assert (=> d!870987 m!3439757))

(declare-fun m!3440335 () Bool)

(assert (=> d!870987 m!3440335))

(declare-fun m!3440337 () Bool)

(assert (=> d!870987 m!3440337))

(assert (=> d!870987 m!3439489))

(assert (=> b!3183288 m!3439757))

(assert (=> b!3183288 m!3439757))

(declare-fun m!3440339 () Bool)

(assert (=> b!3183288 m!3440339))

(assert (=> b!3182639 d!870987))

(declare-fun d!871063 () Bool)

(declare-fun fromListB!1502 (List!35882) BalanceConc!20862)

(assert (=> d!871063 (= (seqFromList!3327 tokens!494) (fromListB!1502 tokens!494))))

(declare-fun bs!539968 () Bool)

(assert (= bs!539968 d!871063))

(declare-fun m!3440341 () Bool)

(assert (=> bs!539968 m!3440341))

(assert (=> b!3182639 d!871063))

(declare-fun b!3183315 () Bool)

(declare-fun e!1983360 () Bool)

(declare-fun tp!1006822 () Bool)

(declare-fun tp!1006823 () Bool)

(assert (=> b!3183315 (= e!1983360 (and tp!1006822 tp!1006823))))

(declare-fun b!3183313 () Bool)

(declare-fun tp!1006820 () Bool)

(declare-fun tp!1006821 () Bool)

(assert (=> b!3183313 (= e!1983360 (and tp!1006820 tp!1006821))))

(assert (=> b!3182625 (= tp!1006735 e!1983360)))

(declare-fun b!3183312 () Bool)

(declare-fun tp_is_empty!17257 () Bool)

(assert (=> b!3183312 (= e!1983360 tp_is_empty!17257)))

(declare-fun b!3183314 () Bool)

(declare-fun tp!1006819 () Bool)

(assert (=> b!3183314 (= e!1983360 tp!1006819)))

(assert (= (and b!3182625 ((_ is ElementMatch!9883) (regex!5124 (rule!7540 separatorToken!241)))) b!3183312))

(assert (= (and b!3182625 ((_ is Concat!15237) (regex!5124 (rule!7540 separatorToken!241)))) b!3183313))

(assert (= (and b!3182625 ((_ is Star!9883) (regex!5124 (rule!7540 separatorToken!241)))) b!3183314))

(assert (= (and b!3182625 ((_ is Union!9883) (regex!5124 (rule!7540 separatorToken!241)))) b!3183315))

(declare-fun b!3183329 () Bool)

(declare-fun b_free!83965 () Bool)

(declare-fun b_next!84669 () Bool)

(assert (=> b!3183329 (= b_free!83965 (not b_next!84669))))

(declare-fun t!235368 () Bool)

(declare-fun tb!155383 () Bool)

(assert (=> (and b!3183329 (= (toValue!7184 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235368) tb!155383))

(declare-fun result!197488 () Bool)

(assert (= result!197488 result!197434))

(assert (=> d!870925 t!235368))

(declare-fun tp!1006838 () Bool)

(declare-fun b_and!210535 () Bool)

(assert (=> b!3183329 (= tp!1006838 (and (=> t!235368 result!197488) b_and!210535))))

(declare-fun b_free!83967 () Bool)

(declare-fun b_next!84671 () Bool)

(assert (=> b!3183329 (= b_free!83967 (not b_next!84671))))

(declare-fun t!235370 () Bool)

(declare-fun tb!155385 () Bool)

(assert (=> (and b!3183329 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235370) tb!155385))

(declare-fun result!197490 () Bool)

(assert (= result!197490 result!197420))

(assert (=> b!3182647 t!235370))

(assert (=> d!870853 t!235370))

(declare-fun tb!155387 () Bool)

(declare-fun t!235372 () Bool)

(assert (=> (and b!3183329 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241)))) t!235372) tb!155387))

(declare-fun result!197492 () Bool)

(assert (= result!197492 result!197428))

(assert (=> d!870895 t!235372))

(assert (=> b!3182804 t!235372))

(declare-fun tp!1006834 () Bool)

(declare-fun b_and!210537 () Bool)

(assert (=> b!3183329 (= tp!1006834 (and (=> t!235370 result!197490) (=> t!235372 result!197492) b_and!210537))))

(declare-fun e!1983374 () Bool)

(assert (=> b!3183329 (= e!1983374 (and tp!1006838 tp!1006834))))

(declare-fun e!1983375 () Bool)

(declare-fun tp!1006836 () Bool)

(declare-fun b!3183328 () Bool)

(assert (=> b!3183328 (= e!1983375 (and tp!1006836 (inv!48606 (tag!5634 (rule!7540 (h!41178 (t!235303 tokens!494))))) (inv!48609 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) e!1983374))))

(declare-fun tp!1006837 () Bool)

(declare-fun b!3183327 () Bool)

(declare-fun e!1983376 () Bool)

(assert (=> b!3183327 (= e!1983376 (and (inv!21 (value!166494 (h!41178 (t!235303 tokens!494)))) e!1983375 tp!1006837))))

(declare-fun b!3183326 () Bool)

(declare-fun tp!1006835 () Bool)

(declare-fun e!1983378 () Bool)

(assert (=> b!3183326 (= e!1983378 (and (inv!48610 (h!41178 (t!235303 tokens!494))) e!1983376 tp!1006835))))

(assert (=> b!3182641 (= tp!1006741 e!1983378)))

(assert (= b!3183328 b!3183329))

(assert (= b!3183327 b!3183328))

(assert (= b!3183326 b!3183327))

(assert (= (and b!3182641 ((_ is Cons!35758) (t!235303 tokens!494))) b!3183326))

(declare-fun m!3440343 () Bool)

(assert (=> b!3183328 m!3440343))

(declare-fun m!3440345 () Bool)

(assert (=> b!3183328 m!3440345))

(declare-fun m!3440347 () Bool)

(assert (=> b!3183327 m!3440347))

(declare-fun m!3440349 () Bool)

(assert (=> b!3183326 m!3440349))

(declare-fun b!3183334 () Bool)

(declare-fun e!1983381 () Bool)

(declare-fun tp!1006841 () Bool)

(assert (=> b!3183334 (= e!1983381 (and tp_is_empty!17257 tp!1006841))))

(assert (=> b!3182632 (= tp!1006732 e!1983381)))

(assert (= (and b!3182632 ((_ is Cons!35757) (originalCharacters!5838 (h!41178 tokens!494)))) b!3183334))

(declare-fun b!3183338 () Bool)

(declare-fun e!1983382 () Bool)

(declare-fun tp!1006845 () Bool)

(declare-fun tp!1006846 () Bool)

(assert (=> b!3183338 (= e!1983382 (and tp!1006845 tp!1006846))))

(declare-fun b!3183336 () Bool)

(declare-fun tp!1006843 () Bool)

(declare-fun tp!1006844 () Bool)

(assert (=> b!3183336 (= e!1983382 (and tp!1006843 tp!1006844))))

(assert (=> b!3182642 (= tp!1006733 e!1983382)))

(declare-fun b!3183335 () Bool)

(assert (=> b!3183335 (= e!1983382 tp_is_empty!17257)))

(declare-fun b!3183337 () Bool)

(declare-fun tp!1006842 () Bool)

(assert (=> b!3183337 (= e!1983382 tp!1006842)))

(assert (= (and b!3182642 ((_ is ElementMatch!9883) (regex!5124 (h!41179 rules!2135)))) b!3183335))

(assert (= (and b!3182642 ((_ is Concat!15237) (regex!5124 (h!41179 rules!2135)))) b!3183336))

(assert (= (and b!3182642 ((_ is Star!9883) (regex!5124 (h!41179 rules!2135)))) b!3183337))

(assert (= (and b!3182642 ((_ is Union!9883) (regex!5124 (h!41179 rules!2135)))) b!3183338))

(declare-fun b!3183342 () Bool)

(declare-fun e!1983383 () Bool)

(declare-fun tp!1006850 () Bool)

(declare-fun tp!1006851 () Bool)

(assert (=> b!3183342 (= e!1983383 (and tp!1006850 tp!1006851))))

(declare-fun b!3183340 () Bool)

(declare-fun tp!1006848 () Bool)

(declare-fun tp!1006849 () Bool)

(assert (=> b!3183340 (= e!1983383 (and tp!1006848 tp!1006849))))

(assert (=> b!3182611 (= tp!1006736 e!1983383)))

(declare-fun b!3183339 () Bool)

(assert (=> b!3183339 (= e!1983383 tp_is_empty!17257)))

(declare-fun b!3183341 () Bool)

(declare-fun tp!1006847 () Bool)

(assert (=> b!3183341 (= e!1983383 tp!1006847)))

(assert (= (and b!3182611 ((_ is ElementMatch!9883) (regex!5124 (rule!7540 (h!41178 tokens!494))))) b!3183339))

(assert (= (and b!3182611 ((_ is Concat!15237) (regex!5124 (rule!7540 (h!41178 tokens!494))))) b!3183340))

(assert (= (and b!3182611 ((_ is Star!9883) (regex!5124 (rule!7540 (h!41178 tokens!494))))) b!3183341))

(assert (= (and b!3182611 ((_ is Union!9883) (regex!5124 (rule!7540 (h!41178 tokens!494))))) b!3183342))

(declare-fun b!3183343 () Bool)

(declare-fun e!1983384 () Bool)

(declare-fun tp!1006852 () Bool)

(assert (=> b!3183343 (= e!1983384 (and tp_is_empty!17257 tp!1006852))))

(assert (=> b!3182613 (= tp!1006742 e!1983384)))

(assert (= (and b!3182613 ((_ is Cons!35757) (originalCharacters!5838 separatorToken!241))) b!3183343))

(declare-fun b!3183354 () Bool)

(declare-fun b_free!83969 () Bool)

(declare-fun b_next!84673 () Bool)

(assert (=> b!3183354 (= b_free!83969 (not b_next!84673))))

(declare-fun t!235374 () Bool)

(declare-fun tb!155389 () Bool)

(assert (=> (and b!3183354 (= (toValue!7184 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235374) tb!155389))

(declare-fun result!197498 () Bool)

(assert (= result!197498 result!197434))

(assert (=> d!870925 t!235374))

(declare-fun b_and!210539 () Bool)

(declare-fun tp!1006864 () Bool)

(assert (=> b!3183354 (= tp!1006864 (and (=> t!235374 result!197498) b_and!210539))))

(declare-fun b_free!83971 () Bool)

(declare-fun b_next!84675 () Bool)

(assert (=> b!3183354 (= b_free!83971 (not b_next!84675))))

(declare-fun tb!155391 () Bool)

(declare-fun t!235376 () Bool)

(assert (=> (and b!3183354 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494))))) t!235376) tb!155391))

(declare-fun result!197500 () Bool)

(assert (= result!197500 result!197420))

(assert (=> b!3182647 t!235376))

(assert (=> d!870853 t!235376))

(declare-fun t!235378 () Bool)

(declare-fun tb!155393 () Bool)

(assert (=> (and b!3183354 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241)))) t!235378) tb!155393))

(declare-fun result!197502 () Bool)

(assert (= result!197502 result!197428))

(assert (=> d!870895 t!235378))

(assert (=> b!3182804 t!235378))

(declare-fun tp!1006861 () Bool)

(declare-fun b_and!210541 () Bool)

(assert (=> b!3183354 (= tp!1006861 (and (=> t!235376 result!197500) (=> t!235378 result!197502) b_and!210541))))

(declare-fun e!1983396 () Bool)

(assert (=> b!3183354 (= e!1983396 (and tp!1006864 tp!1006861))))

(declare-fun e!1983394 () Bool)

(declare-fun tp!1006862 () Bool)

(declare-fun b!3183353 () Bool)

(assert (=> b!3183353 (= e!1983394 (and tp!1006862 (inv!48606 (tag!5634 (h!41179 (t!235304 rules!2135)))) (inv!48609 (transformation!5124 (h!41179 (t!235304 rules!2135)))) e!1983396))))

(declare-fun b!3183352 () Bool)

(declare-fun e!1983393 () Bool)

(declare-fun tp!1006863 () Bool)

(assert (=> b!3183352 (= e!1983393 (and e!1983394 tp!1006863))))

(assert (=> b!3182623 (= tp!1006738 e!1983393)))

(assert (= b!3183353 b!3183354))

(assert (= b!3183352 b!3183353))

(assert (= (and b!3182623 ((_ is Cons!35759) (t!235304 rules!2135))) b!3183352))

(declare-fun m!3440351 () Bool)

(assert (=> b!3183353 m!3440351))

(declare-fun m!3440353 () Bool)

(assert (=> b!3183353 m!3440353))

(declare-fun b_lambda!86757 () Bool)

(assert (= b_lambda!86717 (or b!3182621 b_lambda!86757)))

(declare-fun bs!539969 () Bool)

(declare-fun d!871065 () Bool)

(assert (= bs!539969 (and d!871065 b!3182621)))

(assert (=> bs!539969 (= (dynLambda!14427 lambda!116443 (h!41178 tokens!494)) (not (isSeparator!5124 (rule!7540 (h!41178 tokens!494)))))))

(assert (=> b!3182664 d!871065))

(declare-fun b_lambda!86759 () Bool)

(assert (= b_lambda!86725 (or (and b!3183329 b_free!83967 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3182618 b_free!83951) (and b!3182620 b_free!83955 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3182637 b_free!83947 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3183354 b_free!83971 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) b_lambda!86759)))

(declare-fun b_lambda!86761 () Bool)

(assert (= b_lambda!86727 (or (and b!3183354 b_free!83969 (= (toValue!7184 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3183329 b_free!83965 (= (toValue!7184 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182620 b_free!83953) (and b!3182618 b_free!83949 (= (toValue!7184 (transformation!5124 (rule!7540 separatorToken!241))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182637 b_free!83945 (= (toValue!7184 (transformation!5124 (h!41179 rules!2135))) (toValue!7184 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) b_lambda!86761)))

(declare-fun b_lambda!86763 () Bool)

(assert (= b_lambda!86723 (or (and b!3183329 b_free!83967 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3182618 b_free!83951) (and b!3182620 b_free!83955 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3182637 b_free!83947 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) (and b!3183354 b_free!83971 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))))) b_lambda!86763)))

(declare-fun b_lambda!86765 () Bool)

(assert (= b_lambda!86715 (or (and b!3183354 b_free!83971 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182620 b_free!83955) (and b!3182637 b_free!83947 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3183329 b_free!83967 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182618 b_free!83951 (= (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) b_lambda!86765)))

(declare-fun b_lambda!86767 () Bool)

(assert (= b_lambda!86721 (or (and b!3183354 b_free!83971 (= (toChars!7043 (transformation!5124 (h!41179 (t!235304 rules!2135)))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182620 b_free!83955) (and b!3182637 b_free!83947 (= (toChars!7043 (transformation!5124 (h!41179 rules!2135))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3183329 b_free!83967 (= (toChars!7043 (transformation!5124 (rule!7540 (h!41178 (t!235303 tokens!494))))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) (and b!3182618 b_free!83951 (= (toChars!7043 (transformation!5124 (rule!7540 separatorToken!241))) (toChars!7043 (transformation!5124 (rule!7540 (h!41178 tokens!494)))))) b_lambda!86767)))

(declare-fun b_lambda!86769 () Bool)

(assert (= b_lambda!86719 (or b!3182621 b_lambda!86769)))

(assert (=> d!870845 d!871065))

(check-sat (not d!870879) (not b!3182706) (not b!3182957) (not d!870963) (not b!3182648) (not b!3182782) (not b!3182659) (not d!870899) b_and!210493 (not b!3182759) (not b!3183343) (not d!870845) (not b!3182772) (not b!3182989) (not d!870975) (not b!3182658) tp_is_empty!17257 b_and!210539 (not b!3183046) (not d!870849) (not b!3182750) (not b!3182874) (not b!3183352) (not b!3182868) (not b!3182758) (not b!3182764) (not b!3182998) (not b_lambda!86767) (not b!3183044) (not b!3182847) (not b!3183315) (not b!3182710) (not bm!230997) (not tb!155347) (not d!870969) (not b!3182703) (not b!3182709) (not b!3182676) (not d!870895) (not b!3182807) (not b_next!84675) (not tb!155335) (not b_lambda!86769) (not b_next!84657) (not b!3182963) (not b!3182843) (not b!3183328) (not b!3183314) (not d!870893) (not b_next!84655) b_and!210537 (not b!3183334) b_and!210491 (not d!870861) (not b!3182849) (not b!3182763) (not b!3182693) (not d!870857) (not b!3182804) (not b!3182698) b_and!210541 (not d!870851) (not b!3182719) (not b!3182683) (not b!3182695) (not b!3182959) (not b!3182806) (not d!870897) (not b_next!84653) (not b_next!84659) (not d!870927) (not d!870957) (not d!870867) (not d!870913) (not b!3183340) (not d!870853) (not tb!155341) (not b!3183342) (not d!870973) (not b!3182720) (not b!3182988) (not b!3182808) (not bm!230998) (not bm!231022) (not b!3183313) (not b!3183288) (not b!3182686) (not b!3183047) (not d!870917) (not b!3182829) (not b_next!84651) (not d!870959) (not b!3182958) (not d!870933) (not d!870987) (not bm!231020) (not b!3182853) (not d!870837) b_and!210535 (not b!3182768) (not d!870875) (not d!870855) (not d!870905) (not b!3182956) (not b!3182771) (not b_lambda!86759) (not d!870923) b_and!210487 (not b!3182754) (not b!3182647) (not b!3183341) (not d!870859) (not b!3183327) (not d!870915) (not b_lambda!86757) (not b!3182845) (not d!870935) (not b!3182705) (not b!3182718) (not d!870971) (not b!3182711) (not b!3182802) (not d!870903) (not b!3182801) (not b!3183338) (not b_next!84671) (not b!3183353) (not b_lambda!86763) (not b!3182995) (not b!3182665) (not b!3182653) (not bm!230996) (not b_next!84669) (not b!3182680) (not d!870883) (not b!3182777) (not b!3182757) (not b!3182679) (not b!3182773) (not b!3183336) b_and!210489 (not b!3182786) (not b!3182851) (not b_lambda!86765) (not b!3182867) (not b!3183337) (not d!870887) (not b!3182787) (not d!870877) (not b!3182785) (not b!3182778) (not b!3182955) (not b!3183048) (not d!870891) (not b!3183326) (not b!3182805) b_and!210495 (not b!3182960) (not b!3182961) (not b!3182749) (not d!870881) (not b_next!84649) (not d!871063) (not b!3183297) (not d!870985) (not bm!231021) (not d!870901) (not b_lambda!86761) (not b!3182791) b_and!210485 (not b_next!84673))
(check-sat b_and!210493 b_and!210539 (not b_next!84675) (not b_next!84657) b_and!210491 b_and!210541 (not b_next!84651) b_and!210535 b_and!210487 (not b_next!84671) (not b_next!84669) b_and!210489 (not b_next!84655) b_and!210537 (not b_next!84653) (not b_next!84659) b_and!210495 (not b_next!84649) b_and!210485 (not b_next!84673))
