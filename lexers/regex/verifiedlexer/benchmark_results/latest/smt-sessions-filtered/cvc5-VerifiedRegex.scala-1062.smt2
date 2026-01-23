; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!53914 () Bool)

(assert start!53914)

(declare-fun b!581936 () Bool)

(declare-fun b_free!16173 () Bool)

(declare-fun b_next!16189 () Bool)

(assert (=> b!581936 (= b_free!16173 (not b_next!16189))))

(declare-fun tp!181640 () Bool)

(declare-fun b_and!57283 () Bool)

(assert (=> b!581936 (= tp!181640 b_and!57283)))

(declare-fun b_free!16175 () Bool)

(declare-fun b_next!16191 () Bool)

(assert (=> b!581936 (= b_free!16175 (not b_next!16191))))

(declare-fun tp!181639 () Bool)

(declare-fun b_and!57285 () Bool)

(assert (=> b!581936 (= tp!181639 b_and!57285)))

(declare-fun b!581940 () Bool)

(declare-fun b_free!16177 () Bool)

(declare-fun b_next!16193 () Bool)

(assert (=> b!581940 (= b_free!16177 (not b_next!16193))))

(declare-fun tp!181635 () Bool)

(declare-fun b_and!57287 () Bool)

(assert (=> b!581940 (= tp!181635 b_and!57287)))

(declare-fun b_free!16179 () Bool)

(declare-fun b_next!16195 () Bool)

(assert (=> b!581940 (= b_free!16179 (not b_next!16195))))

(declare-fun tp!181637 () Bool)

(declare-fun b_and!57289 () Bool)

(assert (=> b!581940 (= tp!181637 b_and!57289)))

(declare-fun b!581902 () Bool)

(declare-fun e!351680 () Bool)

(declare-fun tp_is_empty!3243 () Bool)

(declare-fun tp!181636 () Bool)

(assert (=> b!581902 (= e!351680 (and tp_is_empty!3243 tp!181636))))

(declare-fun b!581903 () Bool)

(declare-fun e!351707 () Bool)

(declare-fun e!351694 () Bool)

(assert (=> b!581903 (= e!351707 e!351694)))

(declare-fun res!250554 () Bool)

(assert (=> b!581903 (=> (not res!250554) (not e!351694))))

(declare-datatypes ((C!3810 0))(
  ( (C!3811 (val!2131 Int)) )
))
(declare-datatypes ((List!5717 0))(
  ( (Nil!5707) (Cons!5707 (h!11108 C!3810) (t!78158 List!5717)) )
))
(declare-fun lt!246976 () List!5717)

(declare-fun lt!246992 () List!5717)

(assert (=> b!581903 (= res!250554 (= lt!246976 lt!246992))))

(declare-fun lt!246998 () List!5717)

(declare-fun suffix!1342 () List!5717)

(declare-fun ++!1598 (List!5717 List!5717) List!5717)

(assert (=> b!581903 (= lt!246976 (++!1598 lt!246998 suffix!1342))))

(declare-fun b!581904 () Bool)

(declare-fun res!250529 () Bool)

(declare-fun e!351690 () Bool)

(assert (=> b!581904 (=> (not res!250529) (not e!351690))))

(declare-datatypes ((Regex!1444 0))(
  ( (ElementMatch!1444 (c!108935 C!3810)) (Concat!2578 (regOne!3400 Regex!1444) (regTwo!3400 Regex!1444)) (EmptyExpr!1444) (Star!1444 (reg!1773 Regex!1444)) (EmptyLang!1444) (Union!1444 (regOne!3401 Regex!1444) (regTwo!3401 Regex!1444)) )
))
(declare-datatypes ((List!5718 0))(
  ( (Nil!5708) (Cons!5708 (h!11109 (_ BitVec 16)) (t!78159 List!5718)) )
))
(declare-datatypes ((String!7415 0))(
  ( (String!7416 (value!36477 String)) )
))
(declare-datatypes ((TokenValue!1134 0))(
  ( (FloatLiteralValue!2268 (text!8383 List!5718)) (TokenValueExt!1133 (__x!4166 Int)) (Broken!5670 (value!36478 List!5718)) (Object!1143) (End!1134) (Def!1134) (Underscore!1134) (Match!1134) (Else!1134) (Error!1134) (Case!1134) (If!1134) (Extends!1134) (Abstract!1134) (Class!1134) (Val!1134) (DelimiterValue!2268 (del!1194 List!5718)) (KeywordValue!1140 (value!36479 List!5718)) (CommentValue!2268 (value!36480 List!5718)) (WhitespaceValue!2268 (value!36481 List!5718)) (IndentationValue!1134 (value!36482 List!5718)) (String!7417) (Int32!1134) (Broken!5671 (value!36483 List!5718)) (Boolean!1135) (Unit!10385) (OperatorValue!1137 (op!1194 List!5718)) (IdentifierValue!2268 (value!36484 List!5718)) (IdentifierValue!2269 (value!36485 List!5718)) (WhitespaceValue!2269 (value!36486 List!5718)) (True!2268) (False!2268) (Broken!5672 (value!36487 List!5718)) (Broken!5673 (value!36488 List!5718)) (True!2269) (RightBrace!1134) (RightBracket!1134) (Colon!1134) (Null!1134) (Comma!1134) (LeftBracket!1134) (False!2269) (LeftBrace!1134) (ImaginaryLiteralValue!1134 (text!8384 List!5718)) (StringLiteralValue!3402 (value!36489 List!5718)) (EOFValue!1134 (value!36490 List!5718)) (IdentValue!1134 (value!36491 List!5718)) (DelimiterValue!2269 (value!36492 List!5718)) (DedentValue!1134 (value!36493 List!5718)) (NewLineValue!1134 (value!36494 List!5718)) (IntegerValue!3402 (value!36495 (_ BitVec 32)) (text!8385 List!5718)) (IntegerValue!3403 (value!36496 Int) (text!8386 List!5718)) (Times!1134) (Or!1134) (Equal!1134) (Minus!1134) (Broken!5674 (value!36497 List!5718)) (And!1134) (Div!1134) (LessEqual!1134) (Mod!1134) (Concat!2579) (Not!1134) (Plus!1134) (SpaceValue!1134 (value!36498 List!5718)) (IntegerValue!3404 (value!36499 Int) (text!8387 List!5718)) (StringLiteralValue!3403 (text!8388 List!5718)) (FloatLiteralValue!2269 (text!8389 List!5718)) (BytesLiteralValue!1134 (value!36500 List!5718)) (CommentValue!2269 (value!36501 List!5718)) (StringLiteralValue!3404 (value!36502 List!5718)) (ErrorTokenValue!1134 (msg!1195 List!5718)) )
))
(declare-datatypes ((IArray!3655 0))(
  ( (IArray!3656 (innerList!1885 List!5717)) )
))
(declare-datatypes ((Conc!1827 0))(
  ( (Node!1827 (left!4659 Conc!1827) (right!4989 Conc!1827) (csize!3884 Int) (cheight!2038 Int)) (Leaf!2890 (xs!4464 IArray!3655) (csize!3885 Int)) (Empty!1827) )
))
(declare-datatypes ((BalanceConc!3662 0))(
  ( (BalanceConc!3663 (c!108936 Conc!1827)) )
))
(declare-datatypes ((TokenValueInjection!2036 0))(
  ( (TokenValueInjection!2037 (toValue!1977 Int) (toChars!1836 Int)) )
))
(declare-datatypes ((Rule!2020 0))(
  ( (Rule!2021 (regex!1110 Regex!1444) (tag!1372 String!7415) (isSeparator!1110 Bool) (transformation!1110 TokenValueInjection!2036)) )
))
(declare-datatypes ((Token!1956 0))(
  ( (Token!1957 (value!36503 TokenValue!1134) (rule!1866 Rule!2020) (size!4544 Int) (originalCharacters!1149 List!5717)) )
))
(declare-fun token!491 () Token!1956)

(declare-fun size!4545 (List!5717) Int)

(assert (=> b!581904 (= res!250529 (= (size!4544 token!491) (size!4545 (originalCharacters!1149 token!491))))))

(declare-fun b!581905 () Bool)

(declare-fun res!250541 () Bool)

(declare-fun e!351681 () Bool)

(assert (=> b!581905 (=> res!250541 e!351681)))

(declare-datatypes ((List!5719 0))(
  ( (Nil!5709) (Cons!5709 (h!11110 Rule!2020) (t!78160 List!5719)) )
))
(declare-fun rules!3103 () List!5719)

(declare-datatypes ((tuple2!6686 0))(
  ( (tuple2!6687 (_1!3607 Token!1956) (_2!3607 List!5717)) )
))
(declare-datatypes ((Option!1461 0))(
  ( (None!1460) (Some!1460 (v!16327 tuple2!6686)) )
))
(declare-fun lt!246984 () Option!1461)

(declare-fun contains!1344 (List!5719 Rule!2020) Bool)

(assert (=> b!581905 (= res!250541 (not (contains!1344 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun b!581906 () Bool)

(declare-fun e!351698 () Bool)

(declare-fun e!351686 () Bool)

(declare-fun tp!181632 () Bool)

(assert (=> b!581906 (= e!351698 (and e!351686 tp!181632))))

(declare-fun e!351696 () Bool)

(declare-fun tp!181638 () Bool)

(declare-fun b!581907 () Bool)

(declare-fun inv!7192 (String!7415) Bool)

(declare-fun inv!7195 (TokenValueInjection!2036) Bool)

(assert (=> b!581907 (= e!351686 (and tp!181638 (inv!7192 (tag!1372 (h!11110 rules!3103))) (inv!7195 (transformation!1110 (h!11110 rules!3103))) e!351696))))

(declare-fun b!581908 () Bool)

(declare-fun e!351693 () Bool)

(declare-fun e!351704 () Bool)

(assert (=> b!581908 (= e!351693 e!351704)))

(declare-fun res!250539 () Bool)

(assert (=> b!581908 (=> (not res!250539) (not e!351704))))

(declare-fun lt!246973 () Option!1461)

(declare-fun isDefined!1272 (Option!1461) Bool)

(assert (=> b!581908 (= res!250539 (isDefined!1272 lt!246973))))

(declare-datatypes ((LexerInterface!996 0))(
  ( (LexerInterfaceExt!993 (__x!4167 Int)) (Lexer!994) )
))
(declare-fun thiss!22590 () LexerInterface!996)

(declare-fun maxPrefix!694 (LexerInterface!996 List!5719 List!5717) Option!1461)

(assert (=> b!581908 (= lt!246973 (maxPrefix!694 thiss!22590 rules!3103 lt!246992))))

(declare-fun input!2705 () List!5717)

(assert (=> b!581908 (= lt!246992 (++!1598 input!2705 suffix!1342))))

(declare-fun b!581909 () Bool)

(declare-fun res!250534 () Bool)

(declare-fun e!351691 () Bool)

(assert (=> b!581909 (=> (not res!250534) (not e!351691))))

(declare-fun get!2180 (Option!1461) tuple2!6686)

(assert (=> b!581909 (= res!250534 (= (_1!3607 (get!2180 lt!246984)) (_1!3607 (v!16327 lt!246984))))))

(declare-fun b!581910 () Bool)

(declare-fun res!250532 () Bool)

(assert (=> b!581910 (=> res!250532 e!351681)))

(declare-fun isEmpty!4121 (List!5717) Bool)

(assert (=> b!581910 (= res!250532 (not (isEmpty!4121 (_2!3607 (v!16327 lt!246984)))))))

(declare-fun b!581911 () Bool)

(declare-fun e!351697 () Bool)

(declare-fun e!351705 () Bool)

(assert (=> b!581911 (= e!351697 e!351705)))

(declare-fun res!250540 () Bool)

(assert (=> b!581911 (=> res!250540 e!351705)))

(declare-fun lt!246987 () Int)

(declare-fun lt!246981 () Int)

(assert (=> b!581911 (= res!250540 (>= lt!246987 lt!246981))))

(declare-fun b!581912 () Bool)

(declare-datatypes ((Unit!10386 0))(
  ( (Unit!10387) )
))
(declare-fun e!351688 () Unit!10386)

(declare-fun Unit!10388 () Unit!10386)

(assert (=> b!581912 (= e!351688 Unit!10388)))

(declare-fun lt!246971 () TokenValue!1134)

(declare-fun lt!246990 () tuple2!6686)

(declare-fun b!581913 () Bool)

(declare-fun lt!246995 () List!5717)

(declare-fun e!351679 () Bool)

(declare-fun lt!246988 () List!5717)

(assert (=> b!581913 (= e!351679 (and (= (size!4544 (_1!3607 (v!16327 lt!246984))) lt!246987) (= (originalCharacters!1149 (_1!3607 (v!16327 lt!246984))) lt!246995) (= lt!246990 (tuple2!6687 (Token!1957 lt!246971 (rule!1866 (_1!3607 (v!16327 lt!246984))) lt!246987 lt!246995) lt!246988))))))

(declare-fun b!581914 () Bool)

(declare-fun e!351683 () Unit!10386)

(declare-fun Unit!10389 () Unit!10386)

(assert (=> b!581914 (= e!351683 Unit!10389)))

(declare-fun b!581915 () Bool)

(declare-fun e!351692 () Unit!10386)

(declare-fun Unit!10390 () Unit!10386)

(assert (=> b!581915 (= e!351692 Unit!10390)))

(declare-fun b!581916 () Bool)

(declare-fun res!250552 () Bool)

(assert (=> b!581916 (=> res!250552 e!351681)))

(assert (=> b!581916 (= res!250552 (not (contains!1344 rules!3103 (rule!1866 token!491))))))

(declare-fun b!581917 () Bool)

(declare-fun e!351678 () Bool)

(assert (=> b!581917 (= e!351678 false)))

(declare-fun b!581918 () Bool)

(declare-fun e!351701 () Unit!10386)

(declare-fun Unit!10391 () Unit!10386)

(assert (=> b!581918 (= e!351701 Unit!10391)))

(declare-fun b!581919 () Bool)

(declare-fun e!351703 () Bool)

(assert (=> b!581919 (= e!351694 (not e!351703))))

(declare-fun res!250543 () Bool)

(assert (=> b!581919 (=> res!250543 e!351703)))

(declare-fun isPrefix!744 (List!5717 List!5717) Bool)

(assert (=> b!581919 (= res!250543 (not (isPrefix!744 input!2705 lt!246976)))))

(assert (=> b!581919 (isPrefix!744 lt!246998 lt!246976)))

(declare-fun lt!246983 () Unit!10386)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!591 (List!5717 List!5717) Unit!10386)

(assert (=> b!581919 (= lt!246983 (lemmaConcatTwoListThenFirstIsPrefix!591 lt!246998 suffix!1342))))

(assert (=> b!581919 (isPrefix!744 input!2705 lt!246992)))

(declare-fun lt!247010 () Unit!10386)

(assert (=> b!581919 (= lt!247010 (lemmaConcatTwoListThenFirstIsPrefix!591 input!2705 suffix!1342))))

(assert (=> b!581919 e!351679))

(declare-fun res!250533 () Bool)

(assert (=> b!581919 (=> (not res!250533) (not e!351679))))

(assert (=> b!581919 (= res!250533 (= (value!36503 (_1!3607 (v!16327 lt!246984))) lt!246971))))

(declare-fun lt!247005 () BalanceConc!3662)

(declare-fun apply!1375 (TokenValueInjection!2036 BalanceConc!3662) TokenValue!1134)

(assert (=> b!581919 (= lt!246971 (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247005))))

(declare-fun seqFromList!1298 (List!5717) BalanceConc!3662)

(assert (=> b!581919 (= lt!247005 (seqFromList!1298 lt!246995))))

(declare-fun lt!247002 () Unit!10386)

(declare-fun lemmaInv!246 (TokenValueInjection!2036) Unit!10386)

(assert (=> b!581919 (= lt!247002 (lemmaInv!246 (transformation!1110 (rule!1866 token!491))))))

(declare-fun lt!247004 () Unit!10386)

(assert (=> b!581919 (= lt!247004 (lemmaInv!246 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun ruleValid!320 (LexerInterface!996 Rule!2020) Bool)

(assert (=> b!581919 (ruleValid!320 thiss!22590 (rule!1866 token!491))))

(declare-fun lt!246985 () Unit!10386)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!177 (LexerInterface!996 Rule!2020 List!5719) Unit!10386)

(assert (=> b!581919 (= lt!246985 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!177 thiss!22590 (rule!1866 token!491) rules!3103))))

(assert (=> b!581919 (ruleValid!320 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(declare-fun lt!246993 () Unit!10386)

(assert (=> b!581919 (= lt!246993 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!177 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) rules!3103))))

(assert (=> b!581919 (isPrefix!744 input!2705 input!2705)))

(declare-fun lt!247007 () Unit!10386)

(declare-fun lemmaIsPrefixRefl!482 (List!5717 List!5717) Unit!10386)

(assert (=> b!581919 (= lt!247007 (lemmaIsPrefixRefl!482 input!2705 input!2705))))

(assert (=> b!581919 (= (_2!3607 (v!16327 lt!246984)) lt!246988)))

(declare-fun lt!246996 () Unit!10386)

(declare-fun lemmaSamePrefixThenSameSuffix!467 (List!5717 List!5717 List!5717 List!5717 List!5717) Unit!10386)

(assert (=> b!581919 (= lt!246996 (lemmaSamePrefixThenSameSuffix!467 lt!246995 (_2!3607 (v!16327 lt!246984)) lt!246995 lt!246988 input!2705))))

(declare-fun getSuffix!263 (List!5717 List!5717) List!5717)

(assert (=> b!581919 (= lt!246988 (getSuffix!263 input!2705 lt!246995))))

(declare-fun lt!246974 () List!5717)

(assert (=> b!581919 (isPrefix!744 lt!246995 lt!246974)))

(assert (=> b!581919 (= lt!246974 (++!1598 lt!246995 (_2!3607 (v!16327 lt!246984))))))

(declare-fun lt!247008 () Unit!10386)

(assert (=> b!581919 (= lt!247008 (lemmaConcatTwoListThenFirstIsPrefix!591 lt!246995 (_2!3607 (v!16327 lt!246984))))))

(declare-fun lt!246997 () Unit!10386)

(declare-fun lemmaCharactersSize!177 (Token!1956) Unit!10386)

(assert (=> b!581919 (= lt!246997 (lemmaCharactersSize!177 token!491))))

(declare-fun lt!246969 () Unit!10386)

(assert (=> b!581919 (= lt!246969 (lemmaCharactersSize!177 (_1!3607 (v!16327 lt!246984))))))

(declare-fun lt!247000 () Unit!10386)

(assert (=> b!581919 (= lt!247000 e!351683)))

(declare-fun c!108931 () Bool)

(assert (=> b!581919 (= c!108931 (> lt!246987 lt!246981))))

(assert (=> b!581919 (= lt!246981 (size!4545 lt!246998))))

(assert (=> b!581919 (= lt!246987 (size!4545 lt!246995))))

(declare-fun list!2376 (BalanceConc!3662) List!5717)

(declare-fun charsOf!739 (Token!1956) BalanceConc!3662)

(assert (=> b!581919 (= lt!246995 (list!2376 (charsOf!739 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> b!581919 (= lt!246984 (Some!1460 lt!246990))))

(assert (=> b!581919 (= lt!246990 (tuple2!6687 (_1!3607 (v!16327 lt!246984)) (_2!3607 (v!16327 lt!246984))))))

(declare-fun lt!246980 () Unit!10386)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!187 (List!5717 List!5717 List!5717 List!5717) Unit!10386)

(assert (=> b!581919 (= lt!246980 (lemmaConcatSameAndSameSizesThenSameLists!187 lt!246998 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!581920 () Bool)

(declare-fun e!351682 () Bool)

(assert (=> b!581920 (= e!351682 false)))

(declare-fun b!581921 () Bool)

(declare-fun e!351709 () Bool)

(assert (=> b!581921 (= e!351709 e!351707)))

(declare-fun res!250530 () Bool)

(assert (=> b!581921 (=> (not res!250530) (not e!351707))))

(assert (=> b!581921 (= res!250530 (is-Some!1460 lt!246984))))

(assert (=> b!581921 (= lt!246984 (maxPrefix!694 thiss!22590 rules!3103 input!2705))))

(declare-fun b!581922 () Bool)

(declare-fun res!250550 () Bool)

(assert (=> b!581922 (=> res!250550 e!351681)))

(assert (=> b!581922 (= res!250550 (or (not (= lt!246995 lt!246998)) (not (= (originalCharacters!1149 (_1!3607 (v!16327 lt!246984))) (originalCharacters!1149 token!491)))))))

(declare-fun b!581923 () Bool)

(declare-fun res!250551 () Bool)

(declare-fun e!351687 () Bool)

(assert (=> b!581923 (=> (not res!250551) (not e!351687))))

(declare-fun isEmpty!4122 (List!5719) Bool)

(assert (=> b!581923 (= res!250551 (not (isEmpty!4122 rules!3103)))))

(declare-fun b!581924 () Bool)

(assert (=> b!581924 (= e!351692 e!351701)))

(declare-fun lt!246979 () Int)

(declare-fun getIndex!49 (List!5719 Rule!2020) Int)

(assert (=> b!581924 (= lt!246979 (getIndex!49 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(declare-fun lt!247003 () Int)

(assert (=> b!581924 (= lt!247003 (getIndex!49 rules!3103 (rule!1866 token!491)))))

(declare-fun c!108934 () Bool)

(assert (=> b!581924 (= c!108934 (< lt!246979 lt!247003))))

(declare-fun lt!246978 () Unit!10386)

(declare-fun e!351699 () Unit!10386)

(assert (=> b!581924 (= lt!246978 e!351699)))

(declare-fun c!108930 () Bool)

(assert (=> b!581924 (= c!108930 (> lt!246979 lt!247003))))

(declare-fun b!581925 () Bool)

(declare-fun e!351685 () Bool)

(assert (=> b!581925 (= e!351685 false)))

(declare-fun b!581926 () Bool)

(assert (=> b!581926 (= e!351705 e!351691)))

(declare-fun res!250542 () Bool)

(assert (=> b!581926 (=> (not res!250542) (not e!351691))))

(assert (=> b!581926 (= res!250542 (isDefined!1272 lt!246984))))

(declare-fun b!581927 () Bool)

(assert (=> b!581927 (= e!351681 (or (not (= (size!4544 (_1!3607 (v!16327 lt!246984))) (size!4544 token!491))) (not (= (_1!3607 (v!16327 lt!246984)) token!491)) (= lt!246984 (Some!1460 (tuple2!6687 token!491 Nil!5707)))))))

(assert (=> b!581927 (= (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491))))

(declare-fun lt!246970 () Unit!10386)

(declare-fun lemmaSameIndexThenSameElement!15 (List!5719 Rule!2020 Rule!2020) Unit!10386)

(assert (=> b!581927 (= lt!246970 (lemmaSameIndexThenSameElement!15 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491)))))

(declare-fun lt!246989 () Unit!10386)

(assert (=> b!581927 (= lt!246989 e!351692)))

(declare-fun c!108932 () Bool)

(assert (=> b!581927 (= c!108932 (not (= (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491))))))

(declare-fun e!351706 () Bool)

(declare-fun e!351708 () Bool)

(declare-fun b!581928 () Bool)

(declare-fun tp!181634 () Bool)

(assert (=> b!581928 (= e!351708 (and tp!181634 (inv!7192 (tag!1372 (rule!1866 token!491))) (inv!7195 (transformation!1110 (rule!1866 token!491))) e!351706))))

(declare-fun b!581929 () Bool)

(assert (=> b!581929 e!351678))

(declare-fun res!250553 () Bool)

(assert (=> b!581929 (=> (not res!250553) (not e!351678))))

(declare-fun matchR!591 (Regex!1444 List!5717) Bool)

(assert (=> b!581929 (= res!250553 (not (matchR!591 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) input!2705)))))

(declare-fun lt!246986 () Unit!10386)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!25 (LexerInterface!996 List!5719 Rule!2020 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> b!581929 (= lt!246986 (lemmaMaxPrefNoSmallerRuleMatches!25 thiss!22590 rules!3103 (rule!1866 token!491) input!2705 lt!246992 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(declare-fun Unit!10392 () Unit!10386)

(assert (=> b!581929 (= e!351699 Unit!10392)))

(declare-fun b!581930 () Bool)

(declare-fun e!351702 () Bool)

(declare-fun tp!181631 () Bool)

(assert (=> b!581930 (= e!351702 (and tp_is_empty!3243 tp!181631))))

(declare-fun b!581931 () Bool)

(declare-fun Unit!10393 () Unit!10386)

(assert (=> b!581931 (= e!351683 Unit!10393)))

(assert (=> b!581931 false))

(declare-fun b!581932 () Bool)

(assert (=> b!581932 (= e!351687 e!351693)))

(declare-fun res!250548 () Bool)

(assert (=> b!581932 (=> (not res!250548) (not e!351693))))

(assert (=> b!581932 (= res!250548 (= lt!246998 input!2705))))

(assert (=> b!581932 (= lt!246998 (list!2376 (charsOf!739 token!491)))))

(declare-fun lt!246975 () List!5717)

(declare-fun b!581933 () Bool)

(declare-fun lt!246999 () TokenValue!1134)

(assert (=> b!581933 (= e!351690 (and (= (size!4544 token!491) lt!246981) (= (originalCharacters!1149 token!491) lt!246998) (= (tuple2!6687 token!491 suffix!1342) (tuple2!6687 (Token!1957 lt!246999 (rule!1866 token!491) lt!246981 lt!246998) lt!246975))))))

(declare-fun e!351684 () Bool)

(declare-fun tp!181633 () Bool)

(declare-fun b!581934 () Bool)

(declare-fun inv!21 (TokenValue!1134) Bool)

(assert (=> b!581934 (= e!351684 (and (inv!21 (value!36503 token!491)) e!351708 tp!181633))))

(declare-fun b!581935 () Bool)

(assert (=> b!581935 e!351685))

(declare-fun res!250535 () Bool)

(assert (=> b!581935 (=> (not res!250535) (not e!351685))))

(assert (=> b!581935 (= res!250535 (not (matchR!591 (regex!1110 (rule!1866 token!491)) input!2705)))))

(declare-fun lt!246991 () Unit!10386)

(assert (=> b!581935 (= lt!246991 (lemmaMaxPrefNoSmallerRuleMatches!25 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705 input!2705 (rule!1866 token!491)))))

(declare-fun Unit!10394 () Unit!10386)

(assert (=> b!581935 (= e!351701 Unit!10394)))

(assert (=> b!581936 (= e!351706 (and tp!181640 tp!181639))))

(declare-fun b!581937 () Bool)

(assert (=> b!581937 (= e!351703 e!351681)))

(declare-fun res!250547 () Bool)

(assert (=> b!581937 (=> res!250547 e!351681)))

(assert (=> b!581937 (= res!250547 (or (not (= lt!246987 lt!246981)) (not (= lt!246974 input!2705)) (not (= lt!246974 lt!246998))))))

(declare-fun lt!247013 () Unit!10386)

(declare-fun lt!246994 () BalanceConc!3662)

(declare-fun lemmaSemiInverse!213 (TokenValueInjection!2036 BalanceConc!3662) Unit!10386)

(assert (=> b!581937 (= lt!247013 (lemmaSemiInverse!213 (transformation!1110 (rule!1866 token!491)) lt!246994))))

(declare-fun lt!247011 () Unit!10386)

(assert (=> b!581937 (= lt!247011 (lemmaSemiInverse!213 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247005))))

(declare-fun lt!247001 () Unit!10386)

(assert (=> b!581937 (= lt!247001 e!351688)))

(declare-fun c!108933 () Bool)

(assert (=> b!581937 (= c!108933 (< lt!246987 lt!246981))))

(assert (=> b!581937 e!351697))

(declare-fun res!250538 () Bool)

(assert (=> b!581937 (=> (not res!250538) (not e!351697))))

(declare-fun maxPrefixOneRule!395 (LexerInterface!996 Rule!2020 List!5717) Option!1461)

(assert (=> b!581937 (= res!250538 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 token!491) lt!246992) (Some!1460 (tuple2!6687 (Token!1957 lt!246999 (rule!1866 token!491) lt!246981 lt!246998) suffix!1342))))))

(declare-fun lt!247012 () Unit!10386)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!145 (LexerInterface!996 List!5719 List!5717 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> b!581937 (= lt!247012 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!145 thiss!22590 rules!3103 lt!246998 lt!246992 suffix!1342 (rule!1866 token!491)))))

(assert (=> b!581937 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705) (Some!1460 (tuple2!6687 (Token!1957 lt!246971 (rule!1866 (_1!3607 (v!16327 lt!246984))) lt!246987 lt!246995) (_2!3607 (v!16327 lt!246984)))))))

(declare-fun lt!247009 () Unit!10386)

(assert (=> b!581937 (= lt!247009 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!145 thiss!22590 rules!3103 lt!246995 input!2705 (_2!3607 (v!16327 lt!246984)) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> b!581937 e!351690))

(declare-fun res!250549 () Bool)

(assert (=> b!581937 (=> (not res!250549) (not e!351690))))

(assert (=> b!581937 (= res!250549 (= (value!36503 token!491) lt!246999))))

(assert (=> b!581937 (= lt!246999 (apply!1375 (transformation!1110 (rule!1866 token!491)) lt!246994))))

(assert (=> b!581937 (= lt!246994 (seqFromList!1298 lt!246998))))

(assert (=> b!581937 (= suffix!1342 lt!246975)))

(declare-fun lt!246977 () Unit!10386)

(assert (=> b!581937 (= lt!246977 (lemmaSamePrefixThenSameSuffix!467 lt!246998 suffix!1342 lt!246998 lt!246975 lt!246992))))

(assert (=> b!581937 (= lt!246975 (getSuffix!263 lt!246992 lt!246998))))

(declare-fun b!581938 () Bool)

(declare-fun res!250537 () Bool)

(assert (=> b!581938 (=> (not res!250537) (not e!351687))))

(assert (=> b!581938 (= res!250537 (not (isEmpty!4121 input!2705)))))

(declare-fun res!250546 () Bool)

(assert (=> start!53914 (=> (not res!250546) (not e!351687))))

(assert (=> start!53914 (= res!250546 (is-Lexer!994 thiss!22590))))

(assert (=> start!53914 e!351687))

(assert (=> start!53914 e!351702))

(assert (=> start!53914 e!351698))

(declare-fun inv!7196 (Token!1956) Bool)

(assert (=> start!53914 (and (inv!7196 token!491) e!351684)))

(assert (=> start!53914 true))

(assert (=> start!53914 e!351680))

(declare-fun b!581939 () Bool)

(assert (=> b!581939 (= e!351691 (= lt!246988 (_2!3607 (v!16327 lt!246984))))))

(assert (=> b!581940 (= e!351696 (and tp!181635 tp!181637))))

(declare-fun b!581941 () Bool)

(assert (=> b!581941 (= e!351704 e!351709)))

(declare-fun res!250531 () Bool)

(assert (=> b!581941 (=> (not res!250531) (not e!351709))))

(declare-fun lt!246982 () tuple2!6686)

(assert (=> b!581941 (= res!250531 (and (= (_1!3607 lt!246982) token!491) (= (_2!3607 lt!246982) suffix!1342)))))

(assert (=> b!581941 (= lt!246982 (get!2180 lt!246973))))

(declare-fun b!581942 () Bool)

(declare-fun Unit!10395 () Unit!10386)

(assert (=> b!581942 (= e!351688 Unit!10395)))

(declare-fun lt!247006 () Unit!10386)

(assert (=> b!581942 (= lt!247006 (lemmaSemiInverse!213 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247005))))

(declare-fun lt!246972 () Unit!10386)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!69 (LexerInterface!996 List!5719 Rule!2020 List!5717 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> b!581942 (= lt!246972 (lemmaMaxPrefixOutputsMaxPrefix!69 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) lt!246995 input!2705 input!2705 (rule!1866 token!491)))))

(declare-fun res!250544 () Bool)

(assert (=> b!581942 (= res!250544 (not (matchR!591 (regex!1110 (rule!1866 token!491)) input!2705)))))

(assert (=> b!581942 (=> (not res!250544) (not e!351682))))

(assert (=> b!581942 e!351682))

(declare-fun b!581943 () Bool)

(declare-fun Unit!10396 () Unit!10386)

(assert (=> b!581943 (= e!351699 Unit!10396)))

(declare-fun b!581944 () Bool)

(declare-fun res!250545 () Bool)

(assert (=> b!581944 (=> (not res!250545) (not e!351679))))

(assert (=> b!581944 (= res!250545 (= (size!4544 (_1!3607 (v!16327 lt!246984))) (size!4545 (originalCharacters!1149 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun b!581945 () Bool)

(declare-fun res!250536 () Bool)

(assert (=> b!581945 (=> (not res!250536) (not e!351687))))

(declare-fun rulesInvariant!959 (LexerInterface!996 List!5719) Bool)

(assert (=> b!581945 (= res!250536 (rulesInvariant!959 thiss!22590 rules!3103))))

(assert (= (and start!53914 res!250546) b!581923))

(assert (= (and b!581923 res!250551) b!581945))

(assert (= (and b!581945 res!250536) b!581938))

(assert (= (and b!581938 res!250537) b!581932))

(assert (= (and b!581932 res!250548) b!581908))

(assert (= (and b!581908 res!250539) b!581941))

(assert (= (and b!581941 res!250531) b!581921))

(assert (= (and b!581921 res!250530) b!581903))

(assert (= (and b!581903 res!250554) b!581919))

(assert (= (and b!581919 c!108931) b!581931))

(assert (= (and b!581919 (not c!108931)) b!581914))

(assert (= (and b!581919 res!250533) b!581944))

(assert (= (and b!581944 res!250545) b!581913))

(assert (= (and b!581919 (not res!250543)) b!581937))

(assert (= (and b!581937 res!250549) b!581904))

(assert (= (and b!581904 res!250529) b!581933))

(assert (= (and b!581937 res!250538) b!581911))

(assert (= (and b!581911 (not res!250540)) b!581926))

(assert (= (and b!581926 res!250542) b!581909))

(assert (= (and b!581909 res!250534) b!581939))

(assert (= (and b!581937 c!108933) b!581942))

(assert (= (and b!581937 (not c!108933)) b!581912))

(assert (= (and b!581942 res!250544) b!581920))

(assert (= (and b!581937 (not res!250547)) b!581910))

(assert (= (and b!581910 (not res!250532)) b!581922))

(assert (= (and b!581922 (not res!250550)) b!581905))

(assert (= (and b!581905 (not res!250541)) b!581916))

(assert (= (and b!581916 (not res!250552)) b!581927))

(assert (= (and b!581927 c!108932) b!581924))

(assert (= (and b!581927 (not c!108932)) b!581915))

(assert (= (and b!581924 c!108934) b!581929))

(assert (= (and b!581924 (not c!108934)) b!581943))

(assert (= (and b!581929 res!250553) b!581917))

(assert (= (and b!581924 c!108930) b!581935))

(assert (= (and b!581924 (not c!108930)) b!581918))

(assert (= (and b!581935 res!250535) b!581925))

(assert (= (and start!53914 (is-Cons!5707 suffix!1342)) b!581930))

(assert (= b!581907 b!581940))

(assert (= b!581906 b!581907))

(assert (= (and start!53914 (is-Cons!5709 rules!3103)) b!581906))

(assert (= b!581928 b!581936))

(assert (= b!581934 b!581928))

(assert (= start!53914 b!581934))

(assert (= (and start!53914 (is-Cons!5707 input!2705)) b!581902))

(declare-fun m!841193 () Bool)

(assert (=> b!581926 m!841193))

(declare-fun m!841195 () Bool)

(assert (=> b!581927 m!841195))

(declare-fun m!841197 () Bool)

(assert (=> b!581916 m!841197))

(declare-fun m!841199 () Bool)

(assert (=> b!581907 m!841199))

(declare-fun m!841201 () Bool)

(assert (=> b!581907 m!841201))

(declare-fun m!841203 () Bool)

(assert (=> b!581928 m!841203))

(declare-fun m!841205 () Bool)

(assert (=> b!581928 m!841205))

(declare-fun m!841207 () Bool)

(assert (=> b!581932 m!841207))

(assert (=> b!581932 m!841207))

(declare-fun m!841209 () Bool)

(assert (=> b!581932 m!841209))

(declare-fun m!841211 () Bool)

(assert (=> b!581924 m!841211))

(declare-fun m!841213 () Bool)

(assert (=> b!581924 m!841213))

(declare-fun m!841215 () Bool)

(assert (=> b!581944 m!841215))

(declare-fun m!841217 () Bool)

(assert (=> b!581923 m!841217))

(declare-fun m!841219 () Bool)

(assert (=> b!581921 m!841219))

(declare-fun m!841221 () Bool)

(assert (=> start!53914 m!841221))

(declare-fun m!841223 () Bool)

(assert (=> b!581942 m!841223))

(declare-fun m!841225 () Bool)

(assert (=> b!581942 m!841225))

(declare-fun m!841227 () Bool)

(assert (=> b!581942 m!841227))

(declare-fun m!841229 () Bool)

(assert (=> b!581941 m!841229))

(declare-fun m!841231 () Bool)

(assert (=> b!581919 m!841231))

(declare-fun m!841233 () Bool)

(assert (=> b!581919 m!841233))

(declare-fun m!841235 () Bool)

(assert (=> b!581919 m!841235))

(declare-fun m!841237 () Bool)

(assert (=> b!581919 m!841237))

(declare-fun m!841239 () Bool)

(assert (=> b!581919 m!841239))

(declare-fun m!841241 () Bool)

(assert (=> b!581919 m!841241))

(declare-fun m!841243 () Bool)

(assert (=> b!581919 m!841243))

(declare-fun m!841245 () Bool)

(assert (=> b!581919 m!841245))

(declare-fun m!841247 () Bool)

(assert (=> b!581919 m!841247))

(declare-fun m!841249 () Bool)

(assert (=> b!581919 m!841249))

(declare-fun m!841251 () Bool)

(assert (=> b!581919 m!841251))

(assert (=> b!581919 m!841245))

(declare-fun m!841253 () Bool)

(assert (=> b!581919 m!841253))

(declare-fun m!841255 () Bool)

(assert (=> b!581919 m!841255))

(declare-fun m!841257 () Bool)

(assert (=> b!581919 m!841257))

(declare-fun m!841259 () Bool)

(assert (=> b!581919 m!841259))

(declare-fun m!841261 () Bool)

(assert (=> b!581919 m!841261))

(declare-fun m!841263 () Bool)

(assert (=> b!581919 m!841263))

(declare-fun m!841265 () Bool)

(assert (=> b!581919 m!841265))

(declare-fun m!841267 () Bool)

(assert (=> b!581919 m!841267))

(declare-fun m!841269 () Bool)

(assert (=> b!581919 m!841269))

(declare-fun m!841271 () Bool)

(assert (=> b!581919 m!841271))

(declare-fun m!841273 () Bool)

(assert (=> b!581919 m!841273))

(declare-fun m!841275 () Bool)

(assert (=> b!581919 m!841275))

(declare-fun m!841277 () Bool)

(assert (=> b!581919 m!841277))

(declare-fun m!841279 () Bool)

(assert (=> b!581919 m!841279))

(declare-fun m!841281 () Bool)

(assert (=> b!581919 m!841281))

(declare-fun m!841283 () Bool)

(assert (=> b!581919 m!841283))

(declare-fun m!841285 () Bool)

(assert (=> b!581909 m!841285))

(declare-fun m!841287 () Bool)

(assert (=> b!581903 m!841287))

(declare-fun m!841289 () Bool)

(assert (=> b!581929 m!841289))

(declare-fun m!841291 () Bool)

(assert (=> b!581929 m!841291))

(declare-fun m!841293 () Bool)

(assert (=> b!581904 m!841293))

(assert (=> b!581935 m!841227))

(declare-fun m!841295 () Bool)

(assert (=> b!581935 m!841295))

(declare-fun m!841297 () Bool)

(assert (=> b!581910 m!841297))

(declare-fun m!841299 () Bool)

(assert (=> b!581937 m!841299))

(declare-fun m!841301 () Bool)

(assert (=> b!581937 m!841301))

(declare-fun m!841303 () Bool)

(assert (=> b!581937 m!841303))

(declare-fun m!841305 () Bool)

(assert (=> b!581937 m!841305))

(declare-fun m!841307 () Bool)

(assert (=> b!581937 m!841307))

(assert (=> b!581937 m!841223))

(declare-fun m!841309 () Bool)

(assert (=> b!581937 m!841309))

(declare-fun m!841311 () Bool)

(assert (=> b!581937 m!841311))

(declare-fun m!841313 () Bool)

(assert (=> b!581937 m!841313))

(declare-fun m!841315 () Bool)

(assert (=> b!581937 m!841315))

(declare-fun m!841317 () Bool)

(assert (=> b!581945 m!841317))

(declare-fun m!841319 () Bool)

(assert (=> b!581908 m!841319))

(declare-fun m!841321 () Bool)

(assert (=> b!581908 m!841321))

(declare-fun m!841323 () Bool)

(assert (=> b!581908 m!841323))

(declare-fun m!841325 () Bool)

(assert (=> b!581934 m!841325))

(declare-fun m!841327 () Bool)

(assert (=> b!581938 m!841327))

(declare-fun m!841329 () Bool)

(assert (=> b!581905 m!841329))

(push 1)

(assert (not b!581904))

(assert (not b!581935))

(assert (not b!581932))

(assert (not start!53914))

(assert (not b_next!16195))

(assert (not b!581928))

(assert (not b!581905))

(assert (not b_next!16189))

(assert (not b!581906))

(assert (not b!581929))

(assert (not b!581916))

(assert (not b!581937))

(assert tp_is_empty!3243)

(assert (not b!581923))

(assert (not b!581902))

(assert (not b!581941))

(assert (not b!581910))

(assert (not b!581945))

(assert b_and!57287)

(assert (not b!581934))

(assert (not b!581903))

(assert (not b!581927))

(assert b_and!57283)

(assert b_and!57289)

(assert (not b!581919))

(assert (not b_next!16193))

(assert (not b!581944))

(assert (not b!581908))

(assert (not b!581907))

(assert (not b!581909))

(assert b_and!57285)

(assert (not b!581921))

(assert (not b!581938))

(assert (not b!581930))

(assert (not b!581924))

(assert (not b_next!16191))

(assert (not b!581942))

(assert (not b!581926))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57287)

(assert b_and!57283)

(assert (not b_next!16195))

(assert (not b_next!16189))

(assert b_and!57285)

(assert (not b_next!16191))

(assert b_and!57289)

(assert (not b_next!16193))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!204663 () Bool)

(assert (=> d!204663 (= (inv!7192 (tag!1372 (h!11110 rules!3103))) (= (mod (str.len (value!36477 (tag!1372 (h!11110 rules!3103)))) 2) 0))))

(assert (=> b!581907 d!204663))

(declare-fun d!204665 () Bool)

(declare-fun res!250638 () Bool)

(declare-fun e!351808 () Bool)

(assert (=> d!204665 (=> (not res!250638) (not e!351808))))

(declare-fun semiInverseModEq!430 (Int Int) Bool)

(assert (=> d!204665 (= res!250638 (semiInverseModEq!430 (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (h!11110 rules!3103)))))))

(assert (=> d!204665 (= (inv!7195 (transformation!1110 (h!11110 rules!3103))) e!351808)))

(declare-fun b!582080 () Bool)

(declare-fun equivClasses!413 (Int Int) Bool)

(assert (=> b!582080 (= e!351808 (equivClasses!413 (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (h!11110 rules!3103)))))))

(assert (= (and d!204665 res!250638) b!582080))

(declare-fun m!841469 () Bool)

(assert (=> d!204665 m!841469))

(declare-fun m!841471 () Bool)

(assert (=> b!582080 m!841471))

(assert (=> b!581907 d!204665))

(declare-fun d!204667 () Bool)

(assert (=> d!204667 (= (inv!7192 (tag!1372 (rule!1866 token!491))) (= (mod (str.len (value!36477 (tag!1372 (rule!1866 token!491)))) 2) 0))))

(assert (=> b!581928 d!204667))

(declare-fun d!204669 () Bool)

(declare-fun res!250640 () Bool)

(declare-fun e!351809 () Bool)

(assert (=> d!204669 (=> (not res!250640) (not e!351809))))

(assert (=> d!204669 (= res!250640 (semiInverseModEq!430 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))))))

(assert (=> d!204669 (= (inv!7195 (transformation!1110 (rule!1866 token!491))) e!351809)))

(declare-fun b!582081 () Bool)

(assert (=> b!582081 (= e!351809 (equivClasses!413 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))))))

(assert (= (and d!204669 res!250640) b!582081))

(declare-fun m!841473 () Bool)

(assert (=> d!204669 m!841473))

(declare-fun m!841475 () Bool)

(assert (=> b!582081 m!841475))

(assert (=> b!581928 d!204669))

(declare-fun d!204671 () Bool)

(assert (=> d!204671 (= (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491))))

(declare-fun lt!247151 () Unit!10386)

(declare-fun choose!4177 (List!5719 Rule!2020 Rule!2020) Unit!10386)

(assert (=> d!204671 (= lt!247151 (choose!4177 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491)))))

(assert (=> d!204671 (contains!1344 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(assert (=> d!204671 (= (lemmaSameIndexThenSameElement!15 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) (rule!1866 token!491)) lt!247151)))

(declare-fun bs!69826 () Bool)

(assert (= bs!69826 d!204671))

(declare-fun m!841477 () Bool)

(assert (=> bs!69826 m!841477))

(assert (=> bs!69826 m!841329))

(assert (=> b!581927 d!204671))

(declare-fun d!204673 () Bool)

(declare-fun lt!247154 () Bool)

(declare-fun content!1012 (List!5719) (Set Rule!2020))

(assert (=> d!204673 (= lt!247154 (set.member (rule!1866 (_1!3607 (v!16327 lt!246984))) (content!1012 rules!3103)))))

(declare-fun e!351814 () Bool)

(assert (=> d!204673 (= lt!247154 e!351814)))

(declare-fun res!250645 () Bool)

(assert (=> d!204673 (=> (not res!250645) (not e!351814))))

(assert (=> d!204673 (= res!250645 (is-Cons!5709 rules!3103))))

(assert (=> d!204673 (= (contains!1344 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247154)))

(declare-fun b!582086 () Bool)

(declare-fun e!351815 () Bool)

(assert (=> b!582086 (= e!351814 e!351815)))

(declare-fun res!250646 () Bool)

(assert (=> b!582086 (=> res!250646 e!351815)))

(assert (=> b!582086 (= res!250646 (= (h!11110 rules!3103) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(declare-fun b!582087 () Bool)

(assert (=> b!582087 (= e!351815 (contains!1344 (t!78160 rules!3103) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(assert (= (and d!204673 res!250645) b!582086))

(assert (= (and b!582086 (not res!250646)) b!582087))

(declare-fun m!841479 () Bool)

(assert (=> d!204673 m!841479))

(declare-fun m!841481 () Bool)

(assert (=> d!204673 m!841481))

(declare-fun m!841483 () Bool)

(assert (=> b!582087 m!841483))

(assert (=> b!581905 d!204673))

(declare-fun d!204675 () Bool)

(declare-fun isEmpty!4125 (Option!1461) Bool)

(assert (=> d!204675 (= (isDefined!1272 lt!246984) (not (isEmpty!4125 lt!246984)))))

(declare-fun bs!69827 () Bool)

(assert (= bs!69827 d!204675))

(declare-fun m!841485 () Bool)

(assert (=> bs!69827 m!841485))

(assert (=> b!581926 d!204675))

(declare-fun d!204677 () Bool)

(declare-fun lt!247157 () Int)

(assert (=> d!204677 (>= lt!247157 0)))

(declare-fun e!351818 () Int)

(assert (=> d!204677 (= lt!247157 e!351818)))

(declare-fun c!108957 () Bool)

(assert (=> d!204677 (= c!108957 (is-Nil!5707 (originalCharacters!1149 token!491)))))

(assert (=> d!204677 (= (size!4545 (originalCharacters!1149 token!491)) lt!247157)))

(declare-fun b!582092 () Bool)

(assert (=> b!582092 (= e!351818 0)))

(declare-fun b!582093 () Bool)

(assert (=> b!582093 (= e!351818 (+ 1 (size!4545 (t!78158 (originalCharacters!1149 token!491)))))))

(assert (= (and d!204677 c!108957) b!582092))

(assert (= (and d!204677 (not c!108957)) b!582093))

(declare-fun m!841487 () Bool)

(assert (=> b!582093 m!841487))

(assert (=> b!581904 d!204677))

(declare-fun d!204679 () Bool)

(declare-fun e!351824 () Bool)

(assert (=> d!204679 e!351824))

(declare-fun res!250651 () Bool)

(assert (=> d!204679 (=> (not res!250651) (not e!351824))))

(declare-fun lt!247160 () List!5717)

(declare-fun content!1013 (List!5717) (Set C!3810))

(assert (=> d!204679 (= res!250651 (= (content!1013 lt!247160) (set.union (content!1013 lt!246998) (content!1013 suffix!1342))))))

(declare-fun e!351823 () List!5717)

(assert (=> d!204679 (= lt!247160 e!351823)))

(declare-fun c!108960 () Bool)

(assert (=> d!204679 (= c!108960 (is-Nil!5707 lt!246998))))

(assert (=> d!204679 (= (++!1598 lt!246998 suffix!1342) lt!247160)))

(declare-fun b!582102 () Bool)

(assert (=> b!582102 (= e!351823 suffix!1342)))

(declare-fun b!582104 () Bool)

(declare-fun res!250652 () Bool)

(assert (=> b!582104 (=> (not res!250652) (not e!351824))))

(assert (=> b!582104 (= res!250652 (= (size!4545 lt!247160) (+ (size!4545 lt!246998) (size!4545 suffix!1342))))))

(declare-fun b!582105 () Bool)

(assert (=> b!582105 (= e!351824 (or (not (= suffix!1342 Nil!5707)) (= lt!247160 lt!246998)))))

(declare-fun b!582103 () Bool)

(assert (=> b!582103 (= e!351823 (Cons!5707 (h!11108 lt!246998) (++!1598 (t!78158 lt!246998) suffix!1342)))))

(assert (= (and d!204679 c!108960) b!582102))

(assert (= (and d!204679 (not c!108960)) b!582103))

(assert (= (and d!204679 res!250651) b!582104))

(assert (= (and b!582104 res!250652) b!582105))

(declare-fun m!841489 () Bool)

(assert (=> d!204679 m!841489))

(declare-fun m!841491 () Bool)

(assert (=> d!204679 m!841491))

(declare-fun m!841493 () Bool)

(assert (=> d!204679 m!841493))

(declare-fun m!841495 () Bool)

(assert (=> b!582104 m!841495))

(assert (=> b!582104 m!841265))

(declare-fun m!841497 () Bool)

(assert (=> b!582104 m!841497))

(declare-fun m!841499 () Bool)

(assert (=> b!582103 m!841499))

(assert (=> b!581903 d!204679))

(declare-fun d!204681 () Bool)

(declare-fun lt!247163 () Int)

(assert (=> d!204681 (>= lt!247163 0)))

(declare-fun e!351831 () Int)

(assert (=> d!204681 (= lt!247163 e!351831)))

(declare-fun c!108965 () Bool)

(assert (=> d!204681 (= c!108965 (and (is-Cons!5709 rules!3103) (= (h!11110 rules!3103) (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(assert (=> d!204681 (contains!1344 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(assert (=> d!204681 (= (getIndex!49 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247163)))

(declare-fun b!582117 () Bool)

(declare-fun e!351830 () Int)

(assert (=> b!582117 (= e!351830 (- 1))))

(declare-fun b!582115 () Bool)

(assert (=> b!582115 (= e!351831 e!351830)))

(declare-fun c!108966 () Bool)

(assert (=> b!582115 (= c!108966 (and (is-Cons!5709 rules!3103) (not (= (h!11110 rules!3103) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(declare-fun b!582116 () Bool)

(assert (=> b!582116 (= e!351830 (+ 1 (getIndex!49 (t!78160 rules!3103) (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun b!582114 () Bool)

(assert (=> b!582114 (= e!351831 0)))

(assert (= (and d!204681 c!108965) b!582114))

(assert (= (and d!204681 (not c!108965)) b!582115))

(assert (= (and b!582115 c!108966) b!582116))

(assert (= (and b!582115 (not c!108966)) b!582117))

(assert (=> d!204681 m!841329))

(declare-fun m!841501 () Bool)

(assert (=> b!582116 m!841501))

(assert (=> b!581924 d!204681))

(declare-fun d!204683 () Bool)

(declare-fun lt!247164 () Int)

(assert (=> d!204683 (>= lt!247164 0)))

(declare-fun e!351833 () Int)

(assert (=> d!204683 (= lt!247164 e!351833)))

(declare-fun c!108967 () Bool)

(assert (=> d!204683 (= c!108967 (and (is-Cons!5709 rules!3103) (= (h!11110 rules!3103) (rule!1866 token!491))))))

(assert (=> d!204683 (contains!1344 rules!3103 (rule!1866 token!491))))

(assert (=> d!204683 (= (getIndex!49 rules!3103 (rule!1866 token!491)) lt!247164)))

(declare-fun b!582121 () Bool)

(declare-fun e!351832 () Int)

(assert (=> b!582121 (= e!351832 (- 1))))

(declare-fun b!582119 () Bool)

(assert (=> b!582119 (= e!351833 e!351832)))

(declare-fun c!108968 () Bool)

(assert (=> b!582119 (= c!108968 (and (is-Cons!5709 rules!3103) (not (= (h!11110 rules!3103) (rule!1866 token!491)))))))

(declare-fun b!582120 () Bool)

(assert (=> b!582120 (= e!351832 (+ 1 (getIndex!49 (t!78160 rules!3103) (rule!1866 token!491))))))

(declare-fun b!582118 () Bool)

(assert (=> b!582118 (= e!351833 0)))

(assert (= (and d!204683 c!108967) b!582118))

(assert (= (and d!204683 (not c!108967)) b!582119))

(assert (= (and b!582119 c!108968) b!582120))

(assert (= (and b!582119 (not c!108968)) b!582121))

(assert (=> d!204683 m!841197))

(declare-fun m!841503 () Bool)

(assert (=> b!582120 m!841503))

(assert (=> b!581924 d!204683))

(declare-fun d!204685 () Bool)

(declare-fun res!250655 () Bool)

(declare-fun e!351836 () Bool)

(assert (=> d!204685 (=> (not res!250655) (not e!351836))))

(declare-fun rulesValid!394 (LexerInterface!996 List!5719) Bool)

(assert (=> d!204685 (= res!250655 (rulesValid!394 thiss!22590 rules!3103))))

(assert (=> d!204685 (= (rulesInvariant!959 thiss!22590 rules!3103) e!351836)))

(declare-fun b!582124 () Bool)

(declare-datatypes ((List!5723 0))(
  ( (Nil!5713) (Cons!5713 (h!11114 String!7415) (t!78216 List!5723)) )
))
(declare-fun noDuplicateTag!394 (LexerInterface!996 List!5719 List!5723) Bool)

(assert (=> b!582124 (= e!351836 (noDuplicateTag!394 thiss!22590 rules!3103 Nil!5713))))

(assert (= (and d!204685 res!250655) b!582124))

(declare-fun m!841505 () Bool)

(assert (=> d!204685 m!841505))

(declare-fun m!841507 () Bool)

(assert (=> b!582124 m!841507))

(assert (=> b!581945 d!204685))

(declare-fun d!204687 () Bool)

(assert (=> d!204687 (= (isEmpty!4122 rules!3103) (is-Nil!5709 rules!3103))))

(assert (=> b!581923 d!204687))

(declare-fun d!204689 () Bool)

(declare-fun lt!247165 () Int)

(assert (=> d!204689 (>= lt!247165 0)))

(declare-fun e!351837 () Int)

(assert (=> d!204689 (= lt!247165 e!351837)))

(declare-fun c!108969 () Bool)

(assert (=> d!204689 (= c!108969 (is-Nil!5707 (originalCharacters!1149 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> d!204689 (= (size!4545 (originalCharacters!1149 (_1!3607 (v!16327 lt!246984)))) lt!247165)))

(declare-fun b!582125 () Bool)

(assert (=> b!582125 (= e!351837 0)))

(declare-fun b!582126 () Bool)

(assert (=> b!582126 (= e!351837 (+ 1 (size!4545 (t!78158 (originalCharacters!1149 (_1!3607 (v!16327 lt!246984)))))))))

(assert (= (and d!204689 c!108969) b!582125))

(assert (= (and d!204689 (not c!108969)) b!582126))

(declare-fun m!841509 () Bool)

(assert (=> b!582126 m!841509))

(assert (=> b!581944 d!204689))

(declare-fun b!582157 () Bool)

(declare-fun res!250671 () Bool)

(declare-fun e!351851 () Bool)

(assert (=> b!582157 (=> (not res!250671) (not e!351851))))

(declare-fun lt!247179 () Option!1461)

(assert (=> b!582157 (= res!250671 (= (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247179)))) (originalCharacters!1149 (_1!3607 (get!2180 lt!247179)))))))

(declare-fun b!582158 () Bool)

(declare-fun res!250675 () Bool)

(assert (=> b!582158 (=> (not res!250675) (not e!351851))))

(assert (=> b!582158 (= res!250675 (matchR!591 (regex!1110 (rule!1866 (_1!3607 (get!2180 lt!247179)))) (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247179))))))))

(declare-fun b!582159 () Bool)

(declare-fun res!250670 () Bool)

(assert (=> b!582159 (=> (not res!250670) (not e!351851))))

(assert (=> b!582159 (= res!250670 (= (++!1598 (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247179)))) (_2!3607 (get!2180 lt!247179))) input!2705))))

(declare-fun b!582160 () Bool)

(declare-fun e!351850 () Bool)

(assert (=> b!582160 (= e!351850 e!351851)))

(declare-fun res!250676 () Bool)

(assert (=> b!582160 (=> (not res!250676) (not e!351851))))

(assert (=> b!582160 (= res!250676 (isDefined!1272 lt!247179))))

(declare-fun b!582161 () Bool)

(declare-fun e!351852 () Option!1461)

(declare-fun lt!247180 () Option!1461)

(declare-fun lt!247182 () Option!1461)

(assert (=> b!582161 (= e!351852 (ite (and (is-None!1460 lt!247180) (is-None!1460 lt!247182)) None!1460 (ite (is-None!1460 lt!247182) lt!247180 (ite (is-None!1460 lt!247180) lt!247182 (ite (>= (size!4544 (_1!3607 (v!16327 lt!247180))) (size!4544 (_1!3607 (v!16327 lt!247182)))) lt!247180 lt!247182)))))))

(declare-fun call!40144 () Option!1461)

(assert (=> b!582161 (= lt!247180 call!40144)))

(assert (=> b!582161 (= lt!247182 (maxPrefix!694 thiss!22590 (t!78160 rules!3103) input!2705))))

(declare-fun bm!40139 () Bool)

(assert (=> bm!40139 (= call!40144 (maxPrefixOneRule!395 thiss!22590 (h!11110 rules!3103) input!2705))))

(declare-fun b!582162 () Bool)

(assert (=> b!582162 (= e!351851 (contains!1344 rules!3103 (rule!1866 (_1!3607 (get!2180 lt!247179)))))))

(declare-fun b!582163 () Bool)

(declare-fun res!250672 () Bool)

(assert (=> b!582163 (=> (not res!250672) (not e!351851))))

(assert (=> b!582163 (= res!250672 (= (value!36503 (_1!3607 (get!2180 lt!247179))) (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (get!2180 lt!247179)))) (seqFromList!1298 (originalCharacters!1149 (_1!3607 (get!2180 lt!247179)))))))))

(declare-fun d!204691 () Bool)

(assert (=> d!204691 e!351850))

(declare-fun res!250673 () Bool)

(assert (=> d!204691 (=> res!250673 e!351850)))

(assert (=> d!204691 (= res!250673 (isEmpty!4125 lt!247179))))

(assert (=> d!204691 (= lt!247179 e!351852)))

(declare-fun c!108978 () Bool)

(assert (=> d!204691 (= c!108978 (and (is-Cons!5709 rules!3103) (is-Nil!5709 (t!78160 rules!3103))))))

(declare-fun lt!247181 () Unit!10386)

(declare-fun lt!247178 () Unit!10386)

(assert (=> d!204691 (= lt!247181 lt!247178)))

(assert (=> d!204691 (isPrefix!744 input!2705 input!2705)))

(assert (=> d!204691 (= lt!247178 (lemmaIsPrefixRefl!482 input!2705 input!2705))))

(declare-fun rulesValidInductive!399 (LexerInterface!996 List!5719) Bool)

(assert (=> d!204691 (rulesValidInductive!399 thiss!22590 rules!3103)))

(assert (=> d!204691 (= (maxPrefix!694 thiss!22590 rules!3103 input!2705) lt!247179)))

(declare-fun b!582164 () Bool)

(assert (=> b!582164 (= e!351852 call!40144)))

(declare-fun b!582165 () Bool)

(declare-fun res!250674 () Bool)

(assert (=> b!582165 (=> (not res!250674) (not e!351851))))

(assert (=> b!582165 (= res!250674 (< (size!4545 (_2!3607 (get!2180 lt!247179))) (size!4545 input!2705)))))

(assert (= (and d!204691 c!108978) b!582164))

(assert (= (and d!204691 (not c!108978)) b!582161))

(assert (= (or b!582164 b!582161) bm!40139))

(assert (= (and d!204691 (not res!250673)) b!582160))

(assert (= (and b!582160 res!250676) b!582157))

(assert (= (and b!582157 res!250671) b!582165))

(assert (= (and b!582165 res!250674) b!582159))

(assert (= (and b!582159 res!250670) b!582163))

(assert (= (and b!582163 res!250672) b!582158))

(assert (= (and b!582158 res!250675) b!582162))

(declare-fun m!841511 () Bool)

(assert (=> b!582165 m!841511))

(declare-fun m!841513 () Bool)

(assert (=> b!582165 m!841513))

(declare-fun m!841515 () Bool)

(assert (=> b!582165 m!841515))

(assert (=> b!582158 m!841511))

(declare-fun m!841517 () Bool)

(assert (=> b!582158 m!841517))

(assert (=> b!582158 m!841517))

(declare-fun m!841519 () Bool)

(assert (=> b!582158 m!841519))

(assert (=> b!582158 m!841519))

(declare-fun m!841521 () Bool)

(assert (=> b!582158 m!841521))

(assert (=> b!582157 m!841511))

(assert (=> b!582157 m!841517))

(assert (=> b!582157 m!841517))

(assert (=> b!582157 m!841519))

(declare-fun m!841523 () Bool)

(assert (=> b!582161 m!841523))

(declare-fun m!841525 () Bool)

(assert (=> d!204691 m!841525))

(assert (=> d!204691 m!841283))

(assert (=> d!204691 m!841269))

(declare-fun m!841527 () Bool)

(assert (=> d!204691 m!841527))

(assert (=> b!582162 m!841511))

(declare-fun m!841529 () Bool)

(assert (=> b!582162 m!841529))

(declare-fun m!841531 () Bool)

(assert (=> bm!40139 m!841531))

(assert (=> b!582159 m!841511))

(assert (=> b!582159 m!841517))

(assert (=> b!582159 m!841517))

(assert (=> b!582159 m!841519))

(assert (=> b!582159 m!841519))

(declare-fun m!841533 () Bool)

(assert (=> b!582159 m!841533))

(declare-fun m!841535 () Bool)

(assert (=> b!582160 m!841535))

(assert (=> b!582163 m!841511))

(declare-fun m!841537 () Bool)

(assert (=> b!582163 m!841537))

(assert (=> b!582163 m!841537))

(declare-fun m!841539 () Bool)

(assert (=> b!582163 m!841539))

(assert (=> b!581921 d!204691))

(declare-fun b!582242 () Bool)

(declare-fun e!351891 () Bool)

(assert (=> b!582242 (= e!351891 true)))

(declare-fun d!204695 () Bool)

(assert (=> d!204695 e!351891))

(assert (= d!204695 b!582242))

(declare-fun order!4665 () Int)

(declare-fun lambda!15805 () Int)

(declare-fun order!4663 () Int)

(declare-fun dynLambda!3324 (Int Int) Int)

(declare-fun dynLambda!3325 (Int Int) Int)

(assert (=> b!582242 (< (dynLambda!3324 order!4663 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) (dynLambda!3325 order!4665 lambda!15805))))

(declare-fun order!4667 () Int)

(declare-fun dynLambda!3326 (Int Int) Int)

(assert (=> b!582242 (< (dynLambda!3326 order!4667 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) (dynLambda!3325 order!4665 lambda!15805))))

(declare-fun dynLambda!3327 (Int TokenValue!1134) BalanceConc!3662)

(declare-fun dynLambda!3328 (Int BalanceConc!3662) TokenValue!1134)

(assert (=> d!204695 (= (list!2376 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) lt!247005))) (list!2376 lt!247005))))

(declare-fun lt!247209 () Unit!10386)

(declare-fun ForallOf!113 (Int BalanceConc!3662) Unit!10386)

(assert (=> d!204695 (= lt!247209 (ForallOf!113 lambda!15805 lt!247005))))

(assert (=> d!204695 (= (lemmaSemiInverse!213 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247005) lt!247209)))

(declare-fun b_lambda!22921 () Bool)

(assert (=> (not b_lambda!22921) (not d!204695)))

(declare-fun t!78165 () Bool)

(declare-fun tb!50991 () Bool)

(assert (=> (and b!581936 (= (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78165) tb!50991))

(declare-fun tp!181673 () Bool)

(declare-fun b!582247 () Bool)

(declare-fun e!351894 () Bool)

(declare-fun inv!7199 (Conc!1827) Bool)

(assert (=> b!582247 (= e!351894 (and (inv!7199 (c!108936 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) lt!247005)))) tp!181673))))

(declare-fun result!57066 () Bool)

(declare-fun inv!7200 (BalanceConc!3662) Bool)

(assert (=> tb!50991 (= result!57066 (and (inv!7200 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) lt!247005))) e!351894))))

(assert (= tb!50991 b!582247))

(declare-fun m!841609 () Bool)

(assert (=> b!582247 m!841609))

(declare-fun m!841611 () Bool)

(assert (=> tb!50991 m!841611))

(assert (=> d!204695 t!78165))

(declare-fun b_and!57299 () Bool)

(assert (= b_and!57285 (and (=> t!78165 result!57066) b_and!57299)))

(declare-fun t!78167 () Bool)

(declare-fun tb!50993 () Bool)

(assert (=> (and b!581940 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78167) tb!50993))

(declare-fun result!57070 () Bool)

(assert (= result!57070 result!57066))

(assert (=> d!204695 t!78167))

(declare-fun b_and!57301 () Bool)

(assert (= b_and!57289 (and (=> t!78167 result!57070) b_and!57301)))

(declare-fun b_lambda!22923 () Bool)

(assert (=> (not b_lambda!22923) (not d!204695)))

(declare-fun t!78169 () Bool)

(declare-fun tb!50995 () Bool)

(assert (=> (and b!581936 (= (toValue!1977 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78169) tb!50995))

(declare-fun result!57072 () Bool)

(assert (=> tb!50995 (= result!57072 (inv!21 (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) lt!247005)))))

(declare-fun m!841613 () Bool)

(assert (=> tb!50995 m!841613))

(assert (=> d!204695 t!78169))

(declare-fun b_and!57303 () Bool)

(assert (= b_and!57283 (and (=> t!78169 result!57072) b_and!57303)))

(declare-fun tb!50997 () Bool)

(declare-fun t!78171 () Bool)

(assert (=> (and b!581940 (= (toValue!1977 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78171) tb!50997))

(declare-fun result!57076 () Bool)

(assert (= result!57076 result!57072))

(assert (=> d!204695 t!78171))

(declare-fun b_and!57305 () Bool)

(assert (= b_and!57287 (and (=> t!78171 result!57076) b_and!57305)))

(declare-fun m!841615 () Bool)

(assert (=> d!204695 m!841615))

(declare-fun m!841617 () Bool)

(assert (=> d!204695 m!841617))

(declare-fun m!841619 () Bool)

(assert (=> d!204695 m!841619))

(assert (=> d!204695 m!841617))

(declare-fun m!841621 () Bool)

(assert (=> d!204695 m!841621))

(declare-fun m!841623 () Bool)

(assert (=> d!204695 m!841623))

(assert (=> d!204695 m!841615))

(assert (=> b!581942 d!204695))

(declare-fun d!204707 () Bool)

(assert (=> d!204707 (not (matchR!591 (regex!1110 (rule!1866 token!491)) input!2705))))

(declare-fun lt!247212 () Unit!10386)

(declare-fun choose!4178 (LexerInterface!996 List!5719 Rule!2020 List!5717 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> d!204707 (= lt!247212 (choose!4178 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) lt!246995 input!2705 input!2705 (rule!1866 token!491)))))

(assert (=> d!204707 (isPrefix!744 lt!246995 input!2705)))

(assert (=> d!204707 (= (lemmaMaxPrefixOutputsMaxPrefix!69 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) lt!246995 input!2705 input!2705 (rule!1866 token!491)) lt!247212)))

(declare-fun bs!69830 () Bool)

(assert (= bs!69830 d!204707))

(assert (=> bs!69830 m!841227))

(declare-fun m!841625 () Bool)

(assert (=> bs!69830 m!841625))

(declare-fun m!841627 () Bool)

(assert (=> bs!69830 m!841627))

(assert (=> b!581942 d!204707))

(declare-fun bm!40145 () Bool)

(declare-fun call!40150 () Bool)

(assert (=> bm!40145 (= call!40150 (isEmpty!4121 input!2705))))

(declare-fun b!582278 () Bool)

(declare-fun e!351917 () Bool)

(declare-fun e!351912 () Bool)

(assert (=> b!582278 (= e!351917 e!351912)))

(declare-fun c!109000 () Bool)

(assert (=> b!582278 (= c!109000 (is-EmptyLang!1444 (regex!1110 (rule!1866 token!491))))))

(declare-fun b!582279 () Bool)

(declare-fun e!351913 () Bool)

(declare-fun e!351914 () Bool)

(assert (=> b!582279 (= e!351913 e!351914)))

(declare-fun res!250745 () Bool)

(assert (=> b!582279 (=> (not res!250745) (not e!351914))))

(declare-fun lt!247215 () Bool)

(assert (=> b!582279 (= res!250745 (not lt!247215))))

(declare-fun b!582280 () Bool)

(declare-fun e!351916 () Bool)

(declare-fun derivativeStep!305 (Regex!1444 C!3810) Regex!1444)

(declare-fun head!1229 (List!5717) C!3810)

(declare-fun tail!758 (List!5717) List!5717)

(assert (=> b!582280 (= e!351916 (matchR!591 (derivativeStep!305 (regex!1110 (rule!1866 token!491)) (head!1229 input!2705)) (tail!758 input!2705)))))

(declare-fun b!582281 () Bool)

(assert (=> b!582281 (= e!351912 (not lt!247215))))

(declare-fun b!582282 () Bool)

(declare-fun nullable!392 (Regex!1444) Bool)

(assert (=> b!582282 (= e!351916 (nullable!392 (regex!1110 (rule!1866 token!491))))))

(declare-fun b!582283 () Bool)

(declare-fun res!250744 () Bool)

(declare-fun e!351915 () Bool)

(assert (=> b!582283 (=> res!250744 e!351915)))

(assert (=> b!582283 (= res!250744 (not (isEmpty!4121 (tail!758 input!2705))))))

(declare-fun b!582284 () Bool)

(declare-fun res!250743 () Bool)

(assert (=> b!582284 (=> res!250743 e!351913)))

(assert (=> b!582284 (= res!250743 (not (is-ElementMatch!1444 (regex!1110 (rule!1866 token!491)))))))

(assert (=> b!582284 (= e!351912 e!351913)))

(declare-fun b!582285 () Bool)

(declare-fun res!250741 () Bool)

(assert (=> b!582285 (=> res!250741 e!351913)))

(declare-fun e!351918 () Bool)

(assert (=> b!582285 (= res!250741 e!351918)))

(declare-fun res!250748 () Bool)

(assert (=> b!582285 (=> (not res!250748) (not e!351918))))

(assert (=> b!582285 (= res!250748 lt!247215)))

(declare-fun d!204709 () Bool)

(assert (=> d!204709 e!351917))

(declare-fun c!108999 () Bool)

(assert (=> d!204709 (= c!108999 (is-EmptyExpr!1444 (regex!1110 (rule!1866 token!491))))))

(assert (=> d!204709 (= lt!247215 e!351916)))

(declare-fun c!109001 () Bool)

(assert (=> d!204709 (= c!109001 (isEmpty!4121 input!2705))))

(declare-fun validRegex!487 (Regex!1444) Bool)

(assert (=> d!204709 (validRegex!487 (regex!1110 (rule!1866 token!491)))))

(assert (=> d!204709 (= (matchR!591 (regex!1110 (rule!1866 token!491)) input!2705) lt!247215)))

(declare-fun b!582286 () Bool)

(assert (=> b!582286 (= e!351914 e!351915)))

(declare-fun res!250747 () Bool)

(assert (=> b!582286 (=> res!250747 e!351915)))

(assert (=> b!582286 (= res!250747 call!40150)))

(declare-fun b!582287 () Bool)

(assert (=> b!582287 (= e!351917 (= lt!247215 call!40150))))

(declare-fun b!582288 () Bool)

(declare-fun res!250742 () Bool)

(assert (=> b!582288 (=> (not res!250742) (not e!351918))))

(assert (=> b!582288 (= res!250742 (isEmpty!4121 (tail!758 input!2705)))))

(declare-fun b!582289 () Bool)

(assert (=> b!582289 (= e!351918 (= (head!1229 input!2705) (c!108935 (regex!1110 (rule!1866 token!491)))))))

(declare-fun b!582290 () Bool)

(assert (=> b!582290 (= e!351915 (not (= (head!1229 input!2705) (c!108935 (regex!1110 (rule!1866 token!491))))))))

(declare-fun b!582291 () Bool)

(declare-fun res!250746 () Bool)

(assert (=> b!582291 (=> (not res!250746) (not e!351918))))

(assert (=> b!582291 (= res!250746 (not call!40150))))

(assert (= (and d!204709 c!109001) b!582282))

(assert (= (and d!204709 (not c!109001)) b!582280))

(assert (= (and d!204709 c!108999) b!582287))

(assert (= (and d!204709 (not c!108999)) b!582278))

(assert (= (and b!582278 c!109000) b!582281))

(assert (= (and b!582278 (not c!109000)) b!582284))

(assert (= (and b!582284 (not res!250743)) b!582285))

(assert (= (and b!582285 res!250748) b!582291))

(assert (= (and b!582291 res!250746) b!582288))

(assert (= (and b!582288 res!250742) b!582289))

(assert (= (and b!582285 (not res!250741)) b!582279))

(assert (= (and b!582279 res!250745) b!582286))

(assert (= (and b!582286 (not res!250747)) b!582283))

(assert (= (and b!582283 (not res!250744)) b!582290))

(assert (= (or b!582287 b!582286 b!582291) bm!40145))

(declare-fun m!841629 () Bool)

(assert (=> b!582283 m!841629))

(assert (=> b!582283 m!841629))

(declare-fun m!841631 () Bool)

(assert (=> b!582283 m!841631))

(assert (=> bm!40145 m!841327))

(assert (=> b!582288 m!841629))

(assert (=> b!582288 m!841629))

(assert (=> b!582288 m!841631))

(assert (=> d!204709 m!841327))

(declare-fun m!841633 () Bool)

(assert (=> d!204709 m!841633))

(declare-fun m!841635 () Bool)

(assert (=> b!582290 m!841635))

(declare-fun m!841637 () Bool)

(assert (=> b!582282 m!841637))

(assert (=> b!582280 m!841635))

(assert (=> b!582280 m!841635))

(declare-fun m!841639 () Bool)

(assert (=> b!582280 m!841639))

(assert (=> b!582280 m!841629))

(assert (=> b!582280 m!841639))

(assert (=> b!582280 m!841629))

(declare-fun m!841641 () Bool)

(assert (=> b!582280 m!841641))

(assert (=> b!582289 m!841635))

(assert (=> b!581942 d!204709))

(declare-fun d!204711 () Bool)

(assert (=> d!204711 (= (get!2180 lt!246973) (v!16327 lt!246973))))

(assert (=> b!581941 d!204711))

(declare-fun b!582300 () Bool)

(declare-fun e!351927 () Bool)

(declare-fun e!351926 () Bool)

(assert (=> b!582300 (= e!351927 e!351926)))

(declare-fun res!250757 () Bool)

(assert (=> b!582300 (=> (not res!250757) (not e!351926))))

(assert (=> b!582300 (= res!250757 (not (is-Nil!5707 lt!246976)))))

(declare-fun d!204713 () Bool)

(declare-fun e!351925 () Bool)

(assert (=> d!204713 e!351925))

(declare-fun res!250759 () Bool)

(assert (=> d!204713 (=> res!250759 e!351925)))

(declare-fun lt!247218 () Bool)

(assert (=> d!204713 (= res!250759 (not lt!247218))))

(assert (=> d!204713 (= lt!247218 e!351927)))

(declare-fun res!250760 () Bool)

(assert (=> d!204713 (=> res!250760 e!351927)))

(assert (=> d!204713 (= res!250760 (is-Nil!5707 lt!246998))))

(assert (=> d!204713 (= (isPrefix!744 lt!246998 lt!246976) lt!247218)))

(declare-fun b!582302 () Bool)

(assert (=> b!582302 (= e!351926 (isPrefix!744 (tail!758 lt!246998) (tail!758 lt!246976)))))

(declare-fun b!582303 () Bool)

(assert (=> b!582303 (= e!351925 (>= (size!4545 lt!246976) (size!4545 lt!246998)))))

(declare-fun b!582301 () Bool)

(declare-fun res!250758 () Bool)

(assert (=> b!582301 (=> (not res!250758) (not e!351926))))

(assert (=> b!582301 (= res!250758 (= (head!1229 lt!246998) (head!1229 lt!246976)))))

(assert (= (and d!204713 (not res!250760)) b!582300))

(assert (= (and b!582300 res!250757) b!582301))

(assert (= (and b!582301 res!250758) b!582302))

(assert (= (and d!204713 (not res!250759)) b!582303))

(declare-fun m!841643 () Bool)

(assert (=> b!582302 m!841643))

(declare-fun m!841645 () Bool)

(assert (=> b!582302 m!841645))

(assert (=> b!582302 m!841643))

(assert (=> b!582302 m!841645))

(declare-fun m!841647 () Bool)

(assert (=> b!582302 m!841647))

(declare-fun m!841649 () Bool)

(assert (=> b!582303 m!841649))

(assert (=> b!582303 m!841265))

(declare-fun m!841651 () Bool)

(assert (=> b!582301 m!841651))

(declare-fun m!841653 () Bool)

(assert (=> b!582301 m!841653))

(assert (=> b!581919 d!204713))

(declare-fun d!204715 () Bool)

(declare-fun e!351929 () Bool)

(assert (=> d!204715 e!351929))

(declare-fun res!250761 () Bool)

(assert (=> d!204715 (=> (not res!250761) (not e!351929))))

(declare-fun lt!247219 () List!5717)

(assert (=> d!204715 (= res!250761 (= (content!1013 lt!247219) (set.union (content!1013 lt!246995) (content!1013 (_2!3607 (v!16327 lt!246984))))))))

(declare-fun e!351928 () List!5717)

(assert (=> d!204715 (= lt!247219 e!351928)))

(declare-fun c!109002 () Bool)

(assert (=> d!204715 (= c!109002 (is-Nil!5707 lt!246995))))

(assert (=> d!204715 (= (++!1598 lt!246995 (_2!3607 (v!16327 lt!246984))) lt!247219)))

(declare-fun b!582304 () Bool)

(assert (=> b!582304 (= e!351928 (_2!3607 (v!16327 lt!246984)))))

(declare-fun b!582306 () Bool)

(declare-fun res!250762 () Bool)

(assert (=> b!582306 (=> (not res!250762) (not e!351929))))

(assert (=> b!582306 (= res!250762 (= (size!4545 lt!247219) (+ (size!4545 lt!246995) (size!4545 (_2!3607 (v!16327 lt!246984))))))))

(declare-fun b!582307 () Bool)

(assert (=> b!582307 (= e!351929 (or (not (= (_2!3607 (v!16327 lt!246984)) Nil!5707)) (= lt!247219 lt!246995)))))

(declare-fun b!582305 () Bool)

(assert (=> b!582305 (= e!351928 (Cons!5707 (h!11108 lt!246995) (++!1598 (t!78158 lt!246995) (_2!3607 (v!16327 lt!246984)))))))

(assert (= (and d!204715 c!109002) b!582304))

(assert (= (and d!204715 (not c!109002)) b!582305))

(assert (= (and d!204715 res!250761) b!582306))

(assert (= (and b!582306 res!250762) b!582307))

(declare-fun m!841655 () Bool)

(assert (=> d!204715 m!841655))

(declare-fun m!841657 () Bool)

(assert (=> d!204715 m!841657))

(declare-fun m!841659 () Bool)

(assert (=> d!204715 m!841659))

(declare-fun m!841661 () Bool)

(assert (=> b!582306 m!841661))

(assert (=> b!582306 m!841257))

(declare-fun m!841663 () Bool)

(assert (=> b!582306 m!841663))

(declare-fun m!841665 () Bool)

(assert (=> b!582305 m!841665))

(assert (=> b!581919 d!204715))

(declare-fun d!204717 () Bool)

(declare-fun lt!247220 () Int)

(assert (=> d!204717 (>= lt!247220 0)))

(declare-fun e!351930 () Int)

(assert (=> d!204717 (= lt!247220 e!351930)))

(declare-fun c!109003 () Bool)

(assert (=> d!204717 (= c!109003 (is-Nil!5707 lt!246995))))

(assert (=> d!204717 (= (size!4545 lt!246995) lt!247220)))

(declare-fun b!582308 () Bool)

(assert (=> b!582308 (= e!351930 0)))

(declare-fun b!582309 () Bool)

(assert (=> b!582309 (= e!351930 (+ 1 (size!4545 (t!78158 lt!246995))))))

(assert (= (and d!204717 c!109003) b!582308))

(assert (= (and d!204717 (not c!109003)) b!582309))

(declare-fun m!841667 () Bool)

(assert (=> b!582309 m!841667))

(assert (=> b!581919 d!204717))

(declare-fun d!204719 () Bool)

(declare-fun lt!247223 () BalanceConc!3662)

(assert (=> d!204719 (= (list!2376 lt!247223) (originalCharacters!1149 (_1!3607 (v!16327 lt!246984))))))

(assert (=> d!204719 (= lt!247223 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (value!36503 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> d!204719 (= (charsOf!739 (_1!3607 (v!16327 lt!246984))) lt!247223)))

(declare-fun b_lambda!22925 () Bool)

(assert (=> (not b_lambda!22925) (not d!204719)))

(declare-fun tb!50999 () Bool)

(declare-fun t!78173 () Bool)

(assert (=> (and b!581936 (= (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78173) tb!50999))

(declare-fun b!582310 () Bool)

(declare-fun e!351931 () Bool)

(declare-fun tp!181674 () Bool)

(assert (=> b!582310 (= e!351931 (and (inv!7199 (c!108936 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (value!36503 (_1!3607 (v!16327 lt!246984)))))) tp!181674))))

(declare-fun result!57078 () Bool)

(assert (=> tb!50999 (= result!57078 (and (inv!7200 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (value!36503 (_1!3607 (v!16327 lt!246984))))) e!351931))))

(assert (= tb!50999 b!582310))

(declare-fun m!841669 () Bool)

(assert (=> b!582310 m!841669))

(declare-fun m!841671 () Bool)

(assert (=> tb!50999 m!841671))

(assert (=> d!204719 t!78173))

(declare-fun b_and!57307 () Bool)

(assert (= b_and!57299 (and (=> t!78173 result!57078) b_and!57307)))

(declare-fun tb!51001 () Bool)

(declare-fun t!78175 () Bool)

(assert (=> (and b!581940 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78175) tb!51001))

(declare-fun result!57080 () Bool)

(assert (= result!57080 result!57078))

(assert (=> d!204719 t!78175))

(declare-fun b_and!57309 () Bool)

(assert (= b_and!57301 (and (=> t!78175 result!57080) b_and!57309)))

(declare-fun m!841673 () Bool)

(assert (=> d!204719 m!841673))

(declare-fun m!841675 () Bool)

(assert (=> d!204719 m!841675))

(assert (=> b!581919 d!204719))

(declare-fun b!582311 () Bool)

(declare-fun e!351934 () Bool)

(declare-fun e!351933 () Bool)

(assert (=> b!582311 (= e!351934 e!351933)))

(declare-fun res!250763 () Bool)

(assert (=> b!582311 (=> (not res!250763) (not e!351933))))

(assert (=> b!582311 (= res!250763 (not (is-Nil!5707 lt!246974)))))

(declare-fun d!204721 () Bool)

(declare-fun e!351932 () Bool)

(assert (=> d!204721 e!351932))

(declare-fun res!250765 () Bool)

(assert (=> d!204721 (=> res!250765 e!351932)))

(declare-fun lt!247224 () Bool)

(assert (=> d!204721 (= res!250765 (not lt!247224))))

(assert (=> d!204721 (= lt!247224 e!351934)))

(declare-fun res!250766 () Bool)

(assert (=> d!204721 (=> res!250766 e!351934)))

(assert (=> d!204721 (= res!250766 (is-Nil!5707 lt!246995))))

(assert (=> d!204721 (= (isPrefix!744 lt!246995 lt!246974) lt!247224)))

(declare-fun b!582313 () Bool)

(assert (=> b!582313 (= e!351933 (isPrefix!744 (tail!758 lt!246995) (tail!758 lt!246974)))))

(declare-fun b!582314 () Bool)

(assert (=> b!582314 (= e!351932 (>= (size!4545 lt!246974) (size!4545 lt!246995)))))

(declare-fun b!582312 () Bool)

(declare-fun res!250764 () Bool)

(assert (=> b!582312 (=> (not res!250764) (not e!351933))))

(assert (=> b!582312 (= res!250764 (= (head!1229 lt!246995) (head!1229 lt!246974)))))

(assert (= (and d!204721 (not res!250766)) b!582311))

(assert (= (and b!582311 res!250763) b!582312))

(assert (= (and b!582312 res!250764) b!582313))

(assert (= (and d!204721 (not res!250765)) b!582314))

(declare-fun m!841677 () Bool)

(assert (=> b!582313 m!841677))

(declare-fun m!841679 () Bool)

(assert (=> b!582313 m!841679))

(assert (=> b!582313 m!841677))

(assert (=> b!582313 m!841679))

(declare-fun m!841681 () Bool)

(assert (=> b!582313 m!841681))

(declare-fun m!841683 () Bool)

(assert (=> b!582314 m!841683))

(assert (=> b!582314 m!841257))

(declare-fun m!841685 () Bool)

(assert (=> b!582312 m!841685))

(declare-fun m!841687 () Bool)

(assert (=> b!582312 m!841687))

(assert (=> b!581919 d!204721))

(declare-fun d!204723 () Bool)

(declare-fun lt!247225 () Int)

(assert (=> d!204723 (>= lt!247225 0)))

(declare-fun e!351935 () Int)

(assert (=> d!204723 (= lt!247225 e!351935)))

(declare-fun c!109004 () Bool)

(assert (=> d!204723 (= c!109004 (is-Nil!5707 lt!246998))))

(assert (=> d!204723 (= (size!4545 lt!246998) lt!247225)))

(declare-fun b!582315 () Bool)

(assert (=> b!582315 (= e!351935 0)))

(declare-fun b!582316 () Bool)

(assert (=> b!582316 (= e!351935 (+ 1 (size!4545 (t!78158 lt!246998))))))

(assert (= (and d!204723 c!109004) b!582315))

(assert (= (and d!204723 (not c!109004)) b!582316))

(declare-fun m!841689 () Bool)

(assert (=> b!582316 m!841689))

(assert (=> b!581919 d!204723))

(declare-fun b!582317 () Bool)

(declare-fun e!351938 () Bool)

(declare-fun e!351937 () Bool)

(assert (=> b!582317 (= e!351938 e!351937)))

(declare-fun res!250767 () Bool)

(assert (=> b!582317 (=> (not res!250767) (not e!351937))))

(assert (=> b!582317 (= res!250767 (not (is-Nil!5707 lt!246976)))))

(declare-fun d!204725 () Bool)

(declare-fun e!351936 () Bool)

(assert (=> d!204725 e!351936))

(declare-fun res!250769 () Bool)

(assert (=> d!204725 (=> res!250769 e!351936)))

(declare-fun lt!247226 () Bool)

(assert (=> d!204725 (= res!250769 (not lt!247226))))

(assert (=> d!204725 (= lt!247226 e!351938)))

(declare-fun res!250770 () Bool)

(assert (=> d!204725 (=> res!250770 e!351938)))

(assert (=> d!204725 (= res!250770 (is-Nil!5707 input!2705))))

(assert (=> d!204725 (= (isPrefix!744 input!2705 lt!246976) lt!247226)))

(declare-fun b!582319 () Bool)

(assert (=> b!582319 (= e!351937 (isPrefix!744 (tail!758 input!2705) (tail!758 lt!246976)))))

(declare-fun b!582320 () Bool)

(assert (=> b!582320 (= e!351936 (>= (size!4545 lt!246976) (size!4545 input!2705)))))

(declare-fun b!582318 () Bool)

(declare-fun res!250768 () Bool)

(assert (=> b!582318 (=> (not res!250768) (not e!351937))))

(assert (=> b!582318 (= res!250768 (= (head!1229 input!2705) (head!1229 lt!246976)))))

(assert (= (and d!204725 (not res!250770)) b!582317))

(assert (= (and b!582317 res!250767) b!582318))

(assert (= (and b!582318 res!250768) b!582319))

(assert (= (and d!204725 (not res!250769)) b!582320))

(assert (=> b!582319 m!841629))

(assert (=> b!582319 m!841645))

(assert (=> b!582319 m!841629))

(assert (=> b!582319 m!841645))

(declare-fun m!841691 () Bool)

(assert (=> b!582319 m!841691))

(assert (=> b!582320 m!841649))

(assert (=> b!582320 m!841515))

(assert (=> b!582318 m!841635))

(assert (=> b!582318 m!841653))

(assert (=> b!581919 d!204725))

(declare-fun d!204727 () Bool)

(declare-fun list!2378 (Conc!1827) List!5717)

(assert (=> d!204727 (= (list!2376 (charsOf!739 (_1!3607 (v!16327 lt!246984)))) (list!2378 (c!108936 (charsOf!739 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun bs!69831 () Bool)

(assert (= bs!69831 d!204727))

(declare-fun m!841693 () Bool)

(assert (=> bs!69831 m!841693))

(assert (=> b!581919 d!204727))

(declare-fun d!204729 () Bool)

(declare-fun e!351941 () Bool)

(assert (=> d!204729 e!351941))

(declare-fun res!250773 () Bool)

(assert (=> d!204729 (=> (not res!250773) (not e!351941))))

(assert (=> d!204729 (= res!250773 (semiInverseModEq!430 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(declare-fun Unit!10409 () Unit!10386)

(assert (=> d!204729 (= (lemmaInv!246 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) Unit!10409)))

(declare-fun b!582323 () Bool)

(assert (=> b!582323 (= e!351941 (equivClasses!413 (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(assert (= (and d!204729 res!250773) b!582323))

(declare-fun m!841695 () Bool)

(assert (=> d!204729 m!841695))

(declare-fun m!841697 () Bool)

(assert (=> b!582323 m!841697))

(assert (=> b!581919 d!204729))

(declare-fun b!582324 () Bool)

(declare-fun e!351944 () Bool)

(declare-fun e!351943 () Bool)

(assert (=> b!582324 (= e!351944 e!351943)))

(declare-fun res!250774 () Bool)

(assert (=> b!582324 (=> (not res!250774) (not e!351943))))

(assert (=> b!582324 (= res!250774 (not (is-Nil!5707 input!2705)))))

(declare-fun d!204731 () Bool)

(declare-fun e!351942 () Bool)

(assert (=> d!204731 e!351942))

(declare-fun res!250776 () Bool)

(assert (=> d!204731 (=> res!250776 e!351942)))

(declare-fun lt!247227 () Bool)

(assert (=> d!204731 (= res!250776 (not lt!247227))))

(assert (=> d!204731 (= lt!247227 e!351944)))

(declare-fun res!250777 () Bool)

(assert (=> d!204731 (=> res!250777 e!351944)))

(assert (=> d!204731 (= res!250777 (is-Nil!5707 input!2705))))

(assert (=> d!204731 (= (isPrefix!744 input!2705 input!2705) lt!247227)))

(declare-fun b!582326 () Bool)

(assert (=> b!582326 (= e!351943 (isPrefix!744 (tail!758 input!2705) (tail!758 input!2705)))))

(declare-fun b!582327 () Bool)

(assert (=> b!582327 (= e!351942 (>= (size!4545 input!2705) (size!4545 input!2705)))))

(declare-fun b!582325 () Bool)

(declare-fun res!250775 () Bool)

(assert (=> b!582325 (=> (not res!250775) (not e!351943))))

(assert (=> b!582325 (= res!250775 (= (head!1229 input!2705) (head!1229 input!2705)))))

(assert (= (and d!204731 (not res!250777)) b!582324))

(assert (= (and b!582324 res!250774) b!582325))

(assert (= (and b!582325 res!250775) b!582326))

(assert (= (and d!204731 (not res!250776)) b!582327))

(assert (=> b!582326 m!841629))

(assert (=> b!582326 m!841629))

(assert (=> b!582326 m!841629))

(assert (=> b!582326 m!841629))

(declare-fun m!841699 () Bool)

(assert (=> b!582326 m!841699))

(assert (=> b!582327 m!841515))

(assert (=> b!582327 m!841515))

(assert (=> b!582325 m!841635))

(assert (=> b!582325 m!841635))

(assert (=> b!581919 d!204731))

(declare-fun d!204733 () Bool)

(assert (=> d!204733 (ruleValid!320 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(declare-fun lt!247230 () Unit!10386)

(declare-fun choose!4179 (LexerInterface!996 Rule!2020 List!5719) Unit!10386)

(assert (=> d!204733 (= lt!247230 (choose!4179 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) rules!3103))))

(assert (=> d!204733 (contains!1344 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(assert (=> d!204733 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!177 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) rules!3103) lt!247230)))

(declare-fun bs!69832 () Bool)

(assert (= bs!69832 d!204733))

(assert (=> bs!69832 m!841281))

(declare-fun m!841701 () Bool)

(assert (=> bs!69832 m!841701))

(assert (=> bs!69832 m!841329))

(assert (=> b!581919 d!204733))

(declare-fun d!204735 () Bool)

(assert (=> d!204735 (isPrefix!744 lt!246998 (++!1598 lt!246998 suffix!1342))))

(declare-fun lt!247233 () Unit!10386)

(declare-fun choose!4180 (List!5717 List!5717) Unit!10386)

(assert (=> d!204735 (= lt!247233 (choose!4180 lt!246998 suffix!1342))))

(assert (=> d!204735 (= (lemmaConcatTwoListThenFirstIsPrefix!591 lt!246998 suffix!1342) lt!247233)))

(declare-fun bs!69833 () Bool)

(assert (= bs!69833 d!204735))

(assert (=> bs!69833 m!841287))

(assert (=> bs!69833 m!841287))

(declare-fun m!841703 () Bool)

(assert (=> bs!69833 m!841703))

(declare-fun m!841705 () Bool)

(assert (=> bs!69833 m!841705))

(assert (=> b!581919 d!204735))

(declare-fun d!204737 () Bool)

(assert (=> d!204737 (and (= lt!246998 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!247236 () Unit!10386)

(declare-fun choose!4181 (List!5717 List!5717 List!5717 List!5717) Unit!10386)

(assert (=> d!204737 (= lt!247236 (choose!4181 lt!246998 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!204737 (= (++!1598 lt!246998 suffix!1342) (++!1598 input!2705 suffix!1342))))

(assert (=> d!204737 (= (lemmaConcatSameAndSameSizesThenSameLists!187 lt!246998 suffix!1342 input!2705 suffix!1342) lt!247236)))

(declare-fun bs!69834 () Bool)

(assert (= bs!69834 d!204737))

(declare-fun m!841707 () Bool)

(assert (=> bs!69834 m!841707))

(assert (=> bs!69834 m!841287))

(assert (=> bs!69834 m!841323))

(assert (=> b!581919 d!204737))

(declare-fun d!204739 () Bool)

(assert (=> d!204739 (isPrefix!744 input!2705 (++!1598 input!2705 suffix!1342))))

(declare-fun lt!247237 () Unit!10386)

(assert (=> d!204739 (= lt!247237 (choose!4180 input!2705 suffix!1342))))

(assert (=> d!204739 (= (lemmaConcatTwoListThenFirstIsPrefix!591 input!2705 suffix!1342) lt!247237)))

(declare-fun bs!69835 () Bool)

(assert (= bs!69835 d!204739))

(assert (=> bs!69835 m!841323))

(assert (=> bs!69835 m!841323))

(declare-fun m!841709 () Bool)

(assert (=> bs!69835 m!841709))

(declare-fun m!841711 () Bool)

(assert (=> bs!69835 m!841711))

(assert (=> b!581919 d!204739))

(declare-fun d!204741 () Bool)

(assert (=> d!204741 (= (size!4544 (_1!3607 (v!16327 lt!246984))) (size!4545 (originalCharacters!1149 (_1!3607 (v!16327 lt!246984)))))))

(declare-fun Unit!10410 () Unit!10386)

(assert (=> d!204741 (= (lemmaCharactersSize!177 (_1!3607 (v!16327 lt!246984))) Unit!10410)))

(declare-fun bs!69836 () Bool)

(assert (= bs!69836 d!204741))

(assert (=> bs!69836 m!841215))

(assert (=> b!581919 d!204741))

(declare-fun d!204743 () Bool)

(assert (=> d!204743 (= (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247005) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))) lt!247005))))

(declare-fun b_lambda!22927 () Bool)

(assert (=> (not b_lambda!22927) (not d!204743)))

(assert (=> d!204743 t!78169))

(declare-fun b_and!57311 () Bool)

(assert (= b_and!57303 (and (=> t!78169 result!57072) b_and!57311)))

(assert (=> d!204743 t!78171))

(declare-fun b_and!57313 () Bool)

(assert (= b_and!57305 (and (=> t!78171 result!57076) b_and!57313)))

(assert (=> d!204743 m!841615))

(assert (=> b!581919 d!204743))

(declare-fun d!204745 () Bool)

(assert (=> d!204745 (ruleValid!320 thiss!22590 (rule!1866 token!491))))

(declare-fun lt!247238 () Unit!10386)

(assert (=> d!204745 (= lt!247238 (choose!4179 thiss!22590 (rule!1866 token!491) rules!3103))))

(assert (=> d!204745 (contains!1344 rules!3103 (rule!1866 token!491))))

(assert (=> d!204745 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!177 thiss!22590 (rule!1866 token!491) rules!3103) lt!247238)))

(declare-fun bs!69837 () Bool)

(assert (= bs!69837 d!204745))

(assert (=> bs!69837 m!841237))

(declare-fun m!841713 () Bool)

(assert (=> bs!69837 m!841713))

(assert (=> bs!69837 m!841197))

(assert (=> b!581919 d!204745))

(declare-fun d!204747 () Bool)

(declare-fun res!250782 () Bool)

(declare-fun e!351947 () Bool)

(assert (=> d!204747 (=> (not res!250782) (not e!351947))))

(assert (=> d!204747 (= res!250782 (validRegex!487 (regex!1110 (rule!1866 token!491))))))

(assert (=> d!204747 (= (ruleValid!320 thiss!22590 (rule!1866 token!491)) e!351947)))

(declare-fun b!582332 () Bool)

(declare-fun res!250783 () Bool)

(assert (=> b!582332 (=> (not res!250783) (not e!351947))))

(assert (=> b!582332 (= res!250783 (not (nullable!392 (regex!1110 (rule!1866 token!491)))))))

(declare-fun b!582333 () Bool)

(assert (=> b!582333 (= e!351947 (not (= (tag!1372 (rule!1866 token!491)) (String!7416 ""))))))

(assert (= (and d!204747 res!250782) b!582332))

(assert (= (and b!582332 res!250783) b!582333))

(assert (=> d!204747 m!841633))

(assert (=> b!582332 m!841637))

(assert (=> b!581919 d!204747))

(declare-fun d!204749 () Bool)

(declare-fun fromListB!566 (List!5717) BalanceConc!3662)

(assert (=> d!204749 (= (seqFromList!1298 lt!246995) (fromListB!566 lt!246995))))

(declare-fun bs!69838 () Bool)

(assert (= bs!69838 d!204749))

(declare-fun m!841715 () Bool)

(assert (=> bs!69838 m!841715))

(assert (=> b!581919 d!204749))

(declare-fun d!204751 () Bool)

(assert (=> d!204751 (isPrefix!744 input!2705 input!2705)))

(declare-fun lt!247241 () Unit!10386)

(declare-fun choose!4182 (List!5717 List!5717) Unit!10386)

(assert (=> d!204751 (= lt!247241 (choose!4182 input!2705 input!2705))))

(assert (=> d!204751 (= (lemmaIsPrefixRefl!482 input!2705 input!2705) lt!247241)))

(declare-fun bs!69839 () Bool)

(assert (= bs!69839 d!204751))

(assert (=> bs!69839 m!841283))

(declare-fun m!841717 () Bool)

(assert (=> bs!69839 m!841717))

(assert (=> b!581919 d!204751))

(declare-fun d!204753 () Bool)

(declare-fun lt!247244 () List!5717)

(assert (=> d!204753 (= (++!1598 lt!246995 lt!247244) input!2705)))

(declare-fun e!351950 () List!5717)

(assert (=> d!204753 (= lt!247244 e!351950)))

(declare-fun c!109007 () Bool)

(assert (=> d!204753 (= c!109007 (is-Cons!5707 lt!246995))))

(assert (=> d!204753 (>= (size!4545 input!2705) (size!4545 lt!246995))))

(assert (=> d!204753 (= (getSuffix!263 input!2705 lt!246995) lt!247244)))

(declare-fun b!582338 () Bool)

(assert (=> b!582338 (= e!351950 (getSuffix!263 (tail!758 input!2705) (t!78158 lt!246995)))))

(declare-fun b!582339 () Bool)

(assert (=> b!582339 (= e!351950 input!2705)))

(assert (= (and d!204753 c!109007) b!582338))

(assert (= (and d!204753 (not c!109007)) b!582339))

(declare-fun m!841719 () Bool)

(assert (=> d!204753 m!841719))

(assert (=> d!204753 m!841515))

(assert (=> d!204753 m!841257))

(assert (=> b!582338 m!841629))

(assert (=> b!582338 m!841629))

(declare-fun m!841721 () Bool)

(assert (=> b!582338 m!841721))

(assert (=> b!581919 d!204753))

(declare-fun b!582340 () Bool)

(declare-fun e!351953 () Bool)

(declare-fun e!351952 () Bool)

(assert (=> b!582340 (= e!351953 e!351952)))

(declare-fun res!250784 () Bool)

(assert (=> b!582340 (=> (not res!250784) (not e!351952))))

(assert (=> b!582340 (= res!250784 (not (is-Nil!5707 lt!246992)))))

(declare-fun d!204755 () Bool)

(declare-fun e!351951 () Bool)

(assert (=> d!204755 e!351951))

(declare-fun res!250786 () Bool)

(assert (=> d!204755 (=> res!250786 e!351951)))

(declare-fun lt!247245 () Bool)

(assert (=> d!204755 (= res!250786 (not lt!247245))))

(assert (=> d!204755 (= lt!247245 e!351953)))

(declare-fun res!250787 () Bool)

(assert (=> d!204755 (=> res!250787 e!351953)))

(assert (=> d!204755 (= res!250787 (is-Nil!5707 input!2705))))

(assert (=> d!204755 (= (isPrefix!744 input!2705 lt!246992) lt!247245)))

(declare-fun b!582342 () Bool)

(assert (=> b!582342 (= e!351952 (isPrefix!744 (tail!758 input!2705) (tail!758 lt!246992)))))

(declare-fun b!582343 () Bool)

(assert (=> b!582343 (= e!351951 (>= (size!4545 lt!246992) (size!4545 input!2705)))))

(declare-fun b!582341 () Bool)

(declare-fun res!250785 () Bool)

(assert (=> b!582341 (=> (not res!250785) (not e!351952))))

(assert (=> b!582341 (= res!250785 (= (head!1229 input!2705) (head!1229 lt!246992)))))

(assert (= (and d!204755 (not res!250787)) b!582340))

(assert (= (and b!582340 res!250784) b!582341))

(assert (= (and b!582341 res!250785) b!582342))

(assert (= (and d!204755 (not res!250786)) b!582343))

(assert (=> b!582342 m!841629))

(declare-fun m!841723 () Bool)

(assert (=> b!582342 m!841723))

(assert (=> b!582342 m!841629))

(assert (=> b!582342 m!841723))

(declare-fun m!841725 () Bool)

(assert (=> b!582342 m!841725))

(declare-fun m!841727 () Bool)

(assert (=> b!582343 m!841727))

(assert (=> b!582343 m!841515))

(assert (=> b!582341 m!841635))

(declare-fun m!841729 () Bool)

(assert (=> b!582341 m!841729))

(assert (=> b!581919 d!204755))

(declare-fun d!204757 () Bool)

(declare-fun e!351954 () Bool)

(assert (=> d!204757 e!351954))

(declare-fun res!250788 () Bool)

(assert (=> d!204757 (=> (not res!250788) (not e!351954))))

(assert (=> d!204757 (= res!250788 (semiInverseModEq!430 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))))))

(declare-fun Unit!10411 () Unit!10386)

(assert (=> d!204757 (= (lemmaInv!246 (transformation!1110 (rule!1866 token!491))) Unit!10411)))

(declare-fun b!582344 () Bool)

(assert (=> b!582344 (= e!351954 (equivClasses!413 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))))))

(assert (= (and d!204757 res!250788) b!582344))

(assert (=> d!204757 m!841473))

(assert (=> b!582344 m!841475))

(assert (=> b!581919 d!204757))

(declare-fun d!204759 () Bool)

(assert (=> d!204759 (= (size!4544 token!491) (size!4545 (originalCharacters!1149 token!491)))))

(declare-fun Unit!10412 () Unit!10386)

(assert (=> d!204759 (= (lemmaCharactersSize!177 token!491) Unit!10412)))

(declare-fun bs!69840 () Bool)

(assert (= bs!69840 d!204759))

(assert (=> bs!69840 m!841293))

(assert (=> b!581919 d!204759))

(declare-fun d!204761 () Bool)

(declare-fun res!250789 () Bool)

(declare-fun e!351955 () Bool)

(assert (=> d!204761 (=> (not res!250789) (not e!351955))))

(assert (=> d!204761 (= res!250789 (validRegex!487 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(assert (=> d!204761 (= (ruleValid!320 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984)))) e!351955)))

(declare-fun b!582345 () Bool)

(declare-fun res!250790 () Bool)

(assert (=> b!582345 (=> (not res!250790) (not e!351955))))

(assert (=> b!582345 (= res!250790 (not (nullable!392 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(declare-fun b!582346 () Bool)

(assert (=> b!582346 (= e!351955 (not (= (tag!1372 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (String!7416 ""))))))

(assert (= (and d!204761 res!250789) b!582345))

(assert (= (and b!582345 res!250790) b!582346))

(declare-fun m!841731 () Bool)

(assert (=> d!204761 m!841731))

(declare-fun m!841733 () Bool)

(assert (=> b!582345 m!841733))

(assert (=> b!581919 d!204761))

(declare-fun d!204763 () Bool)

(assert (=> d!204763 (isPrefix!744 lt!246995 (++!1598 lt!246995 (_2!3607 (v!16327 lt!246984))))))

(declare-fun lt!247246 () Unit!10386)

(assert (=> d!204763 (= lt!247246 (choose!4180 lt!246995 (_2!3607 (v!16327 lt!246984))))))

(assert (=> d!204763 (= (lemmaConcatTwoListThenFirstIsPrefix!591 lt!246995 (_2!3607 (v!16327 lt!246984))) lt!247246)))

(declare-fun bs!69841 () Bool)

(assert (= bs!69841 d!204763))

(assert (=> bs!69841 m!841241))

(assert (=> bs!69841 m!841241))

(declare-fun m!841735 () Bool)

(assert (=> bs!69841 m!841735))

(declare-fun m!841737 () Bool)

(assert (=> bs!69841 m!841737))

(assert (=> b!581919 d!204763))

(declare-fun d!204765 () Bool)

(assert (=> d!204765 (= (_2!3607 (v!16327 lt!246984)) lt!246988)))

(declare-fun lt!247249 () Unit!10386)

(declare-fun choose!4183 (List!5717 List!5717 List!5717 List!5717 List!5717) Unit!10386)

(assert (=> d!204765 (= lt!247249 (choose!4183 lt!246995 (_2!3607 (v!16327 lt!246984)) lt!246995 lt!246988 input!2705))))

(assert (=> d!204765 (isPrefix!744 lt!246995 input!2705)))

(assert (=> d!204765 (= (lemmaSamePrefixThenSameSuffix!467 lt!246995 (_2!3607 (v!16327 lt!246984)) lt!246995 lt!246988 input!2705) lt!247249)))

(declare-fun bs!69842 () Bool)

(assert (= bs!69842 d!204765))

(declare-fun m!841739 () Bool)

(assert (=> bs!69842 m!841739))

(assert (=> bs!69842 m!841627))

(assert (=> b!581919 d!204765))

(declare-fun d!204767 () Bool)

(declare-fun res!250795 () Bool)

(declare-fun e!351958 () Bool)

(assert (=> d!204767 (=> (not res!250795) (not e!351958))))

(assert (=> d!204767 (= res!250795 (not (isEmpty!4121 (originalCharacters!1149 token!491))))))

(assert (=> d!204767 (= (inv!7196 token!491) e!351958)))

(declare-fun b!582351 () Bool)

(declare-fun res!250796 () Bool)

(assert (=> b!582351 (=> (not res!250796) (not e!351958))))

(assert (=> b!582351 (= res!250796 (= (originalCharacters!1149 token!491) (list!2376 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (value!36503 token!491)))))))

(declare-fun b!582352 () Bool)

(assert (=> b!582352 (= e!351958 (= (size!4544 token!491) (size!4545 (originalCharacters!1149 token!491))))))

(assert (= (and d!204767 res!250795) b!582351))

(assert (= (and b!582351 res!250796) b!582352))

(declare-fun b_lambda!22929 () Bool)

(assert (=> (not b_lambda!22929) (not b!582351)))

(declare-fun t!78177 () Bool)

(declare-fun tb!51003 () Bool)

(assert (=> (and b!581936 (= (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78177) tb!51003))

(declare-fun b!582353 () Bool)

(declare-fun e!351959 () Bool)

(declare-fun tp!181675 () Bool)

(assert (=> b!582353 (= e!351959 (and (inv!7199 (c!108936 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (value!36503 token!491)))) tp!181675))))

(declare-fun result!57082 () Bool)

(assert (=> tb!51003 (= result!57082 (and (inv!7200 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (value!36503 token!491))) e!351959))))

(assert (= tb!51003 b!582353))

(declare-fun m!841741 () Bool)

(assert (=> b!582353 m!841741))

(declare-fun m!841743 () Bool)

(assert (=> tb!51003 m!841743))

(assert (=> b!582351 t!78177))

(declare-fun b_and!57315 () Bool)

(assert (= b_and!57307 (and (=> t!78177 result!57082) b_and!57315)))

(declare-fun tb!51005 () Bool)

(declare-fun t!78179 () Bool)

(assert (=> (and b!581940 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78179) tb!51005))

(declare-fun result!57084 () Bool)

(assert (= result!57084 result!57082))

(assert (=> b!582351 t!78179))

(declare-fun b_and!57317 () Bool)

(assert (= b_and!57309 (and (=> t!78179 result!57084) b_and!57317)))

(declare-fun m!841745 () Bool)

(assert (=> d!204767 m!841745))

(declare-fun m!841747 () Bool)

(assert (=> b!582351 m!841747))

(assert (=> b!582351 m!841747))

(declare-fun m!841749 () Bool)

(assert (=> b!582351 m!841749))

(assert (=> b!582352 m!841293))

(assert (=> start!53914 d!204767))

(declare-fun d!204769 () Bool)

(assert (=> d!204769 (= (isEmpty!4121 input!2705) (is-Nil!5707 input!2705))))

(assert (=> b!581938 d!204769))

(declare-fun d!204771 () Bool)

(declare-fun lt!247250 () Bool)

(assert (=> d!204771 (= lt!247250 (set.member (rule!1866 token!491) (content!1012 rules!3103)))))

(declare-fun e!351960 () Bool)

(assert (=> d!204771 (= lt!247250 e!351960)))

(declare-fun res!250797 () Bool)

(assert (=> d!204771 (=> (not res!250797) (not e!351960))))

(assert (=> d!204771 (= res!250797 (is-Cons!5709 rules!3103))))

(assert (=> d!204771 (= (contains!1344 rules!3103 (rule!1866 token!491)) lt!247250)))

(declare-fun b!582354 () Bool)

(declare-fun e!351961 () Bool)

(assert (=> b!582354 (= e!351960 e!351961)))

(declare-fun res!250798 () Bool)

(assert (=> b!582354 (=> res!250798 e!351961)))

(assert (=> b!582354 (= res!250798 (= (h!11110 rules!3103) (rule!1866 token!491)))))

(declare-fun b!582355 () Bool)

(assert (=> b!582355 (= e!351961 (contains!1344 (t!78160 rules!3103) (rule!1866 token!491)))))

(assert (= (and d!204771 res!250797) b!582354))

(assert (= (and b!582354 (not res!250798)) b!582355))

(assert (=> d!204771 m!841479))

(declare-fun m!841751 () Bool)

(assert (=> d!204771 m!841751))

(declare-fun m!841753 () Bool)

(assert (=> b!582355 m!841753))

(assert (=> b!581916 d!204771))

(declare-fun d!204773 () Bool)

(declare-fun lt!247251 () List!5717)

(assert (=> d!204773 (= (++!1598 lt!246998 lt!247251) lt!246992)))

(declare-fun e!351962 () List!5717)

(assert (=> d!204773 (= lt!247251 e!351962)))

(declare-fun c!109008 () Bool)

(assert (=> d!204773 (= c!109008 (is-Cons!5707 lt!246998))))

(assert (=> d!204773 (>= (size!4545 lt!246992) (size!4545 lt!246998))))

(assert (=> d!204773 (= (getSuffix!263 lt!246992 lt!246998) lt!247251)))

(declare-fun b!582356 () Bool)

(assert (=> b!582356 (= e!351962 (getSuffix!263 (tail!758 lt!246992) (t!78158 lt!246998)))))

(declare-fun b!582357 () Bool)

(assert (=> b!582357 (= e!351962 lt!246992)))

(assert (= (and d!204773 c!109008) b!582356))

(assert (= (and d!204773 (not c!109008)) b!582357))

(declare-fun m!841755 () Bool)

(assert (=> d!204773 m!841755))

(assert (=> d!204773 m!841727))

(assert (=> d!204773 m!841265))

(assert (=> b!582356 m!841723))

(assert (=> b!582356 m!841723))

(declare-fun m!841757 () Bool)

(assert (=> b!582356 m!841757))

(assert (=> b!581937 d!204773))

(declare-fun d!204775 () Bool)

(assert (=> d!204775 (= (apply!1375 (transformation!1110 (rule!1866 token!491)) lt!246994) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 token!491))) lt!246994))))

(declare-fun b_lambda!22931 () Bool)

(assert (=> (not b_lambda!22931) (not d!204775)))

(declare-fun t!78181 () Bool)

(declare-fun tb!51007 () Bool)

(assert (=> (and b!581936 (= (toValue!1977 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))) t!78181) tb!51007))

(declare-fun result!57086 () Bool)

(assert (=> tb!51007 (= result!57086 (inv!21 (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 token!491))) lt!246994)))))

(declare-fun m!841759 () Bool)

(assert (=> tb!51007 m!841759))

(assert (=> d!204775 t!78181))

(declare-fun b_and!57319 () Bool)

(assert (= b_and!57311 (and (=> t!78181 result!57086) b_and!57319)))

(declare-fun tb!51009 () Bool)

(declare-fun t!78183 () Bool)

(assert (=> (and b!581940 (= (toValue!1977 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))) t!78183) tb!51009))

(declare-fun result!57088 () Bool)

(assert (= result!57088 result!57086))

(assert (=> d!204775 t!78183))

(declare-fun b_and!57321 () Bool)

(assert (= b_and!57313 (and (=> t!78183 result!57088) b_and!57321)))

(declare-fun m!841761 () Bool)

(assert (=> d!204775 m!841761))

(assert (=> b!581937 d!204775))

(declare-fun d!204777 () Bool)

(assert (=> d!204777 (= (seqFromList!1298 lt!246998) (fromListB!566 lt!246998))))

(declare-fun bs!69843 () Bool)

(assert (= bs!69843 d!204777))

(declare-fun m!841763 () Bool)

(assert (=> bs!69843 m!841763))

(assert (=> b!581937 d!204777))

(declare-fun bs!69844 () Bool)

(declare-fun d!204779 () Bool)

(assert (= bs!69844 (and d!204779 d!204695)))

(declare-fun lambda!15806 () Int)

(assert (=> bs!69844 (= (and (= (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) (= (toValue!1977 (transformation!1110 (rule!1866 token!491))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))) (= lambda!15806 lambda!15805))))

(declare-fun b!582358 () Bool)

(declare-fun e!351964 () Bool)

(assert (=> b!582358 (= e!351964 true)))

(assert (=> d!204779 e!351964))

(assert (= d!204779 b!582358))

(assert (=> b!582358 (< (dynLambda!3324 order!4663 (toValue!1977 (transformation!1110 (rule!1866 token!491)))) (dynLambda!3325 order!4665 lambda!15806))))

(assert (=> b!582358 (< (dynLambda!3326 order!4667 (toChars!1836 (transformation!1110 (rule!1866 token!491)))) (dynLambda!3325 order!4665 lambda!15806))))

(assert (=> d!204779 (= (list!2376 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 token!491))) lt!246994))) (list!2376 lt!246994))))

(declare-fun lt!247252 () Unit!10386)

(assert (=> d!204779 (= lt!247252 (ForallOf!113 lambda!15806 lt!246994))))

(assert (=> d!204779 (= (lemmaSemiInverse!213 (transformation!1110 (rule!1866 token!491)) lt!246994) lt!247252)))

(declare-fun b_lambda!22933 () Bool)

(assert (=> (not b_lambda!22933) (not d!204779)))

(declare-fun t!78185 () Bool)

(declare-fun tb!51011 () Bool)

(assert (=> (and b!581936 (= (toChars!1836 (transformation!1110 (rule!1866 token!491))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78185) tb!51011))

(declare-fun e!351965 () Bool)

(declare-fun tp!181676 () Bool)

(declare-fun b!582359 () Bool)

(assert (=> b!582359 (= e!351965 (and (inv!7199 (c!108936 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 token!491))) lt!246994)))) tp!181676))))

(declare-fun result!57090 () Bool)

(assert (=> tb!51011 (= result!57090 (and (inv!7200 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (dynLambda!3328 (toValue!1977 (transformation!1110 (rule!1866 token!491))) lt!246994))) e!351965))))

(assert (= tb!51011 b!582359))

(declare-fun m!841765 () Bool)

(assert (=> b!582359 m!841765))

(declare-fun m!841767 () Bool)

(assert (=> tb!51011 m!841767))

(assert (=> d!204779 t!78185))

(declare-fun b_and!57323 () Bool)

(assert (= b_and!57315 (and (=> t!78185 result!57090) b_and!57323)))

(declare-fun tb!51013 () Bool)

(declare-fun t!78187 () Bool)

(assert (=> (and b!581940 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78187) tb!51013))

(declare-fun result!57092 () Bool)

(assert (= result!57092 result!57090))

(assert (=> d!204779 t!78187))

(declare-fun b_and!57325 () Bool)

(assert (= b_and!57317 (and (=> t!78187 result!57092) b_and!57325)))

(declare-fun b_lambda!22935 () Bool)

(assert (=> (not b_lambda!22935) (not d!204779)))

(assert (=> d!204779 t!78181))

(declare-fun b_and!57327 () Bool)

(assert (= b_and!57319 (and (=> t!78181 result!57086) b_and!57327)))

(assert (=> d!204779 t!78183))

(declare-fun b_and!57329 () Bool)

(assert (= b_and!57321 (and (=> t!78183 result!57088) b_and!57329)))

(assert (=> d!204779 m!841761))

(declare-fun m!841769 () Bool)

(assert (=> d!204779 m!841769))

(declare-fun m!841771 () Bool)

(assert (=> d!204779 m!841771))

(assert (=> d!204779 m!841769))

(declare-fun m!841773 () Bool)

(assert (=> d!204779 m!841773))

(declare-fun m!841775 () Bool)

(assert (=> d!204779 m!841775))

(assert (=> d!204779 m!841761))

(assert (=> b!581937 d!204779))

(declare-fun b!582378 () Bool)

(declare-fun res!250817 () Bool)

(declare-fun e!351975 () Bool)

(assert (=> b!582378 (=> (not res!250817) (not e!351975))))

(declare-fun lt!247265 () Option!1461)

(assert (=> b!582378 (= res!250817 (= (value!36503 (_1!3607 (get!2180 lt!247265))) (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (get!2180 lt!247265)))) (seqFromList!1298 (originalCharacters!1149 (_1!3607 (get!2180 lt!247265)))))))))

(declare-fun b!582379 () Bool)

(declare-fun res!250816 () Bool)

(assert (=> b!582379 (=> (not res!250816) (not e!351975))))

(assert (=> b!582379 (= res!250816 (= (++!1598 (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247265)))) (_2!3607 (get!2180 lt!247265))) input!2705))))

(declare-fun b!582380 () Bool)

(declare-fun res!250815 () Bool)

(assert (=> b!582380 (=> (not res!250815) (not e!351975))))

(assert (=> b!582380 (= res!250815 (< (size!4545 (_2!3607 (get!2180 lt!247265))) (size!4545 input!2705)))))

(declare-fun b!582381 () Bool)

(declare-fun res!250819 () Bool)

(assert (=> b!582381 (=> (not res!250819) (not e!351975))))

(assert (=> b!582381 (= res!250819 (= (rule!1866 (_1!3607 (get!2180 lt!247265))) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(declare-fun b!582382 () Bool)

(declare-fun e!351976 () Bool)

(assert (=> b!582382 (= e!351976 e!351975)))

(declare-fun res!250818 () Bool)

(assert (=> b!582382 (=> (not res!250818) (not e!351975))))

(assert (=> b!582382 (= res!250818 (matchR!591 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247265))))))))

(declare-fun b!582383 () Bool)

(assert (=> b!582383 (= e!351975 (= (size!4544 (_1!3607 (get!2180 lt!247265))) (size!4545 (originalCharacters!1149 (_1!3607 (get!2180 lt!247265))))))))

(declare-fun b!582384 () Bool)

(declare-fun e!351974 () Option!1461)

(declare-datatypes ((tuple2!6690 0))(
  ( (tuple2!6691 (_1!3609 List!5717) (_2!3609 List!5717)) )
))
(declare-fun lt!247264 () tuple2!6690)

(declare-fun size!4548 (BalanceConc!3662) Int)

(assert (=> b!582384 (= e!351974 (Some!1460 (tuple2!6687 (Token!1957 (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (seqFromList!1298 (_1!3609 lt!247264))) (rule!1866 (_1!3607 (v!16327 lt!246984))) (size!4548 (seqFromList!1298 (_1!3609 lt!247264))) (_1!3609 lt!247264)) (_2!3609 lt!247264))))))

(declare-fun lt!247266 () Unit!10386)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!160 (Regex!1444 List!5717) Unit!10386)

(assert (=> b!582384 (= lt!247266 (longestMatchIsAcceptedByMatchOrIsEmpty!160 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) input!2705))))

(declare-fun res!250814 () Bool)

(declare-fun findLongestMatchInner!176 (Regex!1444 List!5717 Int List!5717 List!5717 Int) tuple2!6690)

(assert (=> b!582384 (= res!250814 (isEmpty!4121 (_1!3609 (findLongestMatchInner!176 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) Nil!5707 (size!4545 Nil!5707) input!2705 input!2705 (size!4545 input!2705)))))))

(declare-fun e!351977 () Bool)

(assert (=> b!582384 (=> res!250814 e!351977)))

(assert (=> b!582384 e!351977))

(declare-fun lt!247267 () Unit!10386)

(assert (=> b!582384 (= lt!247267 lt!247266)))

(declare-fun lt!247263 () Unit!10386)

(assert (=> b!582384 (= lt!247263 (lemmaSemiInverse!213 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (seqFromList!1298 (_1!3609 lt!247264))))))

(declare-fun b!582385 () Bool)

(assert (=> b!582385 (= e!351974 None!1460)))

(declare-fun b!582386 () Bool)

(assert (=> b!582386 (= e!351977 (matchR!591 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (_1!3609 (findLongestMatchInner!176 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) Nil!5707 (size!4545 Nil!5707) input!2705 input!2705 (size!4545 input!2705)))))))

(declare-fun d!204781 () Bool)

(assert (=> d!204781 e!351976))

(declare-fun res!250813 () Bool)

(assert (=> d!204781 (=> res!250813 e!351976)))

(assert (=> d!204781 (= res!250813 (isEmpty!4125 lt!247265))))

(assert (=> d!204781 (= lt!247265 e!351974)))

(declare-fun c!109011 () Bool)

(assert (=> d!204781 (= c!109011 (isEmpty!4121 (_1!3609 lt!247264)))))

(declare-fun findLongestMatch!155 (Regex!1444 List!5717) tuple2!6690)

(assert (=> d!204781 (= lt!247264 (findLongestMatch!155 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) input!2705))))

(assert (=> d!204781 (ruleValid!320 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))))))

(assert (=> d!204781 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705) lt!247265)))

(assert (= (and d!204781 c!109011) b!582385))

(assert (= (and d!204781 (not c!109011)) b!582384))

(assert (= (and b!582384 (not res!250814)) b!582386))

(assert (= (and d!204781 (not res!250813)) b!582382))

(assert (= (and b!582382 res!250818) b!582379))

(assert (= (and b!582379 res!250816) b!582380))

(assert (= (and b!582380 res!250815) b!582381))

(assert (= (and b!582381 res!250819) b!582378))

(assert (= (and b!582378 res!250817) b!582383))

(declare-fun m!841777 () Bool)

(assert (=> b!582382 m!841777))

(declare-fun m!841779 () Bool)

(assert (=> b!582382 m!841779))

(assert (=> b!582382 m!841779))

(declare-fun m!841781 () Bool)

(assert (=> b!582382 m!841781))

(assert (=> b!582382 m!841781))

(declare-fun m!841783 () Bool)

(assert (=> b!582382 m!841783))

(declare-fun m!841785 () Bool)

(assert (=> b!582384 m!841785))

(assert (=> b!582384 m!841515))

(declare-fun m!841787 () Bool)

(assert (=> b!582384 m!841787))

(declare-fun m!841789 () Bool)

(assert (=> b!582384 m!841789))

(declare-fun m!841791 () Bool)

(assert (=> b!582384 m!841791))

(assert (=> b!582384 m!841785))

(assert (=> b!582384 m!841789))

(declare-fun m!841793 () Bool)

(assert (=> b!582384 m!841793))

(declare-fun m!841795 () Bool)

(assert (=> b!582384 m!841795))

(assert (=> b!582384 m!841515))

(assert (=> b!582384 m!841789))

(declare-fun m!841797 () Bool)

(assert (=> b!582384 m!841797))

(declare-fun m!841799 () Bool)

(assert (=> b!582384 m!841799))

(assert (=> b!582384 m!841789))

(assert (=> b!582380 m!841777))

(declare-fun m!841801 () Bool)

(assert (=> b!582380 m!841801))

(assert (=> b!582380 m!841515))

(assert (=> b!582381 m!841777))

(assert (=> b!582378 m!841777))

(declare-fun m!841803 () Bool)

(assert (=> b!582378 m!841803))

(assert (=> b!582378 m!841803))

(declare-fun m!841805 () Bool)

(assert (=> b!582378 m!841805))

(assert (=> b!582386 m!841785))

(assert (=> b!582386 m!841515))

(assert (=> b!582386 m!841785))

(assert (=> b!582386 m!841515))

(assert (=> b!582386 m!841787))

(declare-fun m!841807 () Bool)

(assert (=> b!582386 m!841807))

(assert (=> b!582383 m!841777))

(declare-fun m!841809 () Bool)

(assert (=> b!582383 m!841809))

(declare-fun m!841811 () Bool)

(assert (=> d!204781 m!841811))

(declare-fun m!841813 () Bool)

(assert (=> d!204781 m!841813))

(declare-fun m!841815 () Bool)

(assert (=> d!204781 m!841815))

(assert (=> d!204781 m!841281))

(assert (=> b!582379 m!841777))

(assert (=> b!582379 m!841779))

(assert (=> b!582379 m!841779))

(assert (=> b!582379 m!841781))

(assert (=> b!582379 m!841781))

(declare-fun m!841817 () Bool)

(assert (=> b!582379 m!841817))

(assert (=> b!581937 d!204781))

(declare-fun b!582387 () Bool)

(declare-fun res!250824 () Bool)

(declare-fun e!351979 () Bool)

(assert (=> b!582387 (=> (not res!250824) (not e!351979))))

(declare-fun lt!247270 () Option!1461)

(assert (=> b!582387 (= res!250824 (= (value!36503 (_1!3607 (get!2180 lt!247270))) (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (get!2180 lt!247270)))) (seqFromList!1298 (originalCharacters!1149 (_1!3607 (get!2180 lt!247270)))))))))

(declare-fun b!582388 () Bool)

(declare-fun res!250823 () Bool)

(assert (=> b!582388 (=> (not res!250823) (not e!351979))))

(assert (=> b!582388 (= res!250823 (= (++!1598 (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247270)))) (_2!3607 (get!2180 lt!247270))) lt!246992))))

(declare-fun b!582389 () Bool)

(declare-fun res!250822 () Bool)

(assert (=> b!582389 (=> (not res!250822) (not e!351979))))

(assert (=> b!582389 (= res!250822 (< (size!4545 (_2!3607 (get!2180 lt!247270))) (size!4545 lt!246992)))))

(declare-fun b!582390 () Bool)

(declare-fun res!250826 () Bool)

(assert (=> b!582390 (=> (not res!250826) (not e!351979))))

(assert (=> b!582390 (= res!250826 (= (rule!1866 (_1!3607 (get!2180 lt!247270))) (rule!1866 token!491)))))

(declare-fun b!582391 () Bool)

(declare-fun e!351980 () Bool)

(assert (=> b!582391 (= e!351980 e!351979)))

(declare-fun res!250825 () Bool)

(assert (=> b!582391 (=> (not res!250825) (not e!351979))))

(assert (=> b!582391 (= res!250825 (matchR!591 (regex!1110 (rule!1866 token!491)) (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247270))))))))

(declare-fun b!582392 () Bool)

(assert (=> b!582392 (= e!351979 (= (size!4544 (_1!3607 (get!2180 lt!247270))) (size!4545 (originalCharacters!1149 (_1!3607 (get!2180 lt!247270))))))))

(declare-fun b!582393 () Bool)

(declare-fun e!351978 () Option!1461)

(declare-fun lt!247269 () tuple2!6690)

(assert (=> b!582393 (= e!351978 (Some!1460 (tuple2!6687 (Token!1957 (apply!1375 (transformation!1110 (rule!1866 token!491)) (seqFromList!1298 (_1!3609 lt!247269))) (rule!1866 token!491) (size!4548 (seqFromList!1298 (_1!3609 lt!247269))) (_1!3609 lt!247269)) (_2!3609 lt!247269))))))

(declare-fun lt!247271 () Unit!10386)

(assert (=> b!582393 (= lt!247271 (longestMatchIsAcceptedByMatchOrIsEmpty!160 (regex!1110 (rule!1866 token!491)) lt!246992))))

(declare-fun res!250821 () Bool)

(assert (=> b!582393 (= res!250821 (isEmpty!4121 (_1!3609 (findLongestMatchInner!176 (regex!1110 (rule!1866 token!491)) Nil!5707 (size!4545 Nil!5707) lt!246992 lt!246992 (size!4545 lt!246992)))))))

(declare-fun e!351981 () Bool)

(assert (=> b!582393 (=> res!250821 e!351981)))

(assert (=> b!582393 e!351981))

(declare-fun lt!247272 () Unit!10386)

(assert (=> b!582393 (= lt!247272 lt!247271)))

(declare-fun lt!247268 () Unit!10386)

(assert (=> b!582393 (= lt!247268 (lemmaSemiInverse!213 (transformation!1110 (rule!1866 token!491)) (seqFromList!1298 (_1!3609 lt!247269))))))

(declare-fun b!582394 () Bool)

(assert (=> b!582394 (= e!351978 None!1460)))

(declare-fun b!582395 () Bool)

(assert (=> b!582395 (= e!351981 (matchR!591 (regex!1110 (rule!1866 token!491)) (_1!3609 (findLongestMatchInner!176 (regex!1110 (rule!1866 token!491)) Nil!5707 (size!4545 Nil!5707) lt!246992 lt!246992 (size!4545 lt!246992)))))))

(declare-fun d!204783 () Bool)

(assert (=> d!204783 e!351980))

(declare-fun res!250820 () Bool)

(assert (=> d!204783 (=> res!250820 e!351980)))

(assert (=> d!204783 (= res!250820 (isEmpty!4125 lt!247270))))

(assert (=> d!204783 (= lt!247270 e!351978)))

(declare-fun c!109012 () Bool)

(assert (=> d!204783 (= c!109012 (isEmpty!4121 (_1!3609 lt!247269)))))

(assert (=> d!204783 (= lt!247269 (findLongestMatch!155 (regex!1110 (rule!1866 token!491)) lt!246992))))

(assert (=> d!204783 (ruleValid!320 thiss!22590 (rule!1866 token!491))))

(assert (=> d!204783 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 token!491) lt!246992) lt!247270)))

(assert (= (and d!204783 c!109012) b!582394))

(assert (= (and d!204783 (not c!109012)) b!582393))

(assert (= (and b!582393 (not res!250821)) b!582395))

(assert (= (and d!204783 (not res!250820)) b!582391))

(assert (= (and b!582391 res!250825) b!582388))

(assert (= (and b!582388 res!250823) b!582389))

(assert (= (and b!582389 res!250822) b!582390))

(assert (= (and b!582390 res!250826) b!582387))

(assert (= (and b!582387 res!250824) b!582392))

(declare-fun m!841819 () Bool)

(assert (=> b!582391 m!841819))

(declare-fun m!841821 () Bool)

(assert (=> b!582391 m!841821))

(assert (=> b!582391 m!841821))

(declare-fun m!841823 () Bool)

(assert (=> b!582391 m!841823))

(assert (=> b!582391 m!841823))

(declare-fun m!841825 () Bool)

(assert (=> b!582391 m!841825))

(assert (=> b!582393 m!841785))

(assert (=> b!582393 m!841727))

(declare-fun m!841827 () Bool)

(assert (=> b!582393 m!841827))

(declare-fun m!841829 () Bool)

(assert (=> b!582393 m!841829))

(declare-fun m!841831 () Bool)

(assert (=> b!582393 m!841831))

(assert (=> b!582393 m!841785))

(assert (=> b!582393 m!841829))

(declare-fun m!841833 () Bool)

(assert (=> b!582393 m!841833))

(declare-fun m!841835 () Bool)

(assert (=> b!582393 m!841835))

(assert (=> b!582393 m!841727))

(assert (=> b!582393 m!841829))

(declare-fun m!841837 () Bool)

(assert (=> b!582393 m!841837))

(declare-fun m!841839 () Bool)

(assert (=> b!582393 m!841839))

(assert (=> b!582393 m!841829))

(assert (=> b!582389 m!841819))

(declare-fun m!841841 () Bool)

(assert (=> b!582389 m!841841))

(assert (=> b!582389 m!841727))

(assert (=> b!582390 m!841819))

(assert (=> b!582387 m!841819))

(declare-fun m!841843 () Bool)

(assert (=> b!582387 m!841843))

(assert (=> b!582387 m!841843))

(declare-fun m!841845 () Bool)

(assert (=> b!582387 m!841845))

(assert (=> b!582395 m!841785))

(assert (=> b!582395 m!841727))

(assert (=> b!582395 m!841785))

(assert (=> b!582395 m!841727))

(assert (=> b!582395 m!841827))

(declare-fun m!841847 () Bool)

(assert (=> b!582395 m!841847))

(assert (=> b!582392 m!841819))

(declare-fun m!841849 () Bool)

(assert (=> b!582392 m!841849))

(declare-fun m!841851 () Bool)

(assert (=> d!204783 m!841851))

(declare-fun m!841853 () Bool)

(assert (=> d!204783 m!841853))

(declare-fun m!841855 () Bool)

(assert (=> d!204783 m!841855))

(assert (=> d!204783 m!841237))

(assert (=> b!582388 m!841819))

(assert (=> b!582388 m!841821))

(assert (=> b!582388 m!841821))

(assert (=> b!582388 m!841823))

(assert (=> b!582388 m!841823))

(declare-fun m!841857 () Bool)

(assert (=> b!582388 m!841857))

(assert (=> b!581937 d!204783))

(assert (=> b!581937 d!204695))

(declare-fun d!204785 () Bool)

(assert (=> d!204785 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705) (Some!1460 (tuple2!6687 (Token!1957 (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (seqFromList!1298 lt!246995)) (rule!1866 (_1!3607 (v!16327 lt!246984))) (size!4545 lt!246995) lt!246995) (_2!3607 (v!16327 lt!246984)))))))

(declare-fun lt!247275 () Unit!10386)

(declare-fun choose!4186 (LexerInterface!996 List!5719 List!5717 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> d!204785 (= lt!247275 (choose!4186 thiss!22590 rules!3103 lt!246995 input!2705 (_2!3607 (v!16327 lt!246984)) (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> d!204785 (not (isEmpty!4122 rules!3103))))

(assert (=> d!204785 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!145 thiss!22590 rules!3103 lt!246995 input!2705 (_2!3607 (v!16327 lt!246984)) (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247275)))

(declare-fun bs!69845 () Bool)

(assert (= bs!69845 d!204785))

(assert (=> bs!69845 m!841231))

(declare-fun m!841859 () Bool)

(assert (=> bs!69845 m!841859))

(assert (=> bs!69845 m!841257))

(assert (=> bs!69845 m!841311))

(assert (=> bs!69845 m!841217))

(declare-fun m!841861 () Bool)

(assert (=> bs!69845 m!841861))

(assert (=> bs!69845 m!841231))

(assert (=> b!581937 d!204785))

(declare-fun d!204787 () Bool)

(assert (=> d!204787 (= suffix!1342 lt!246975)))

(declare-fun lt!247276 () Unit!10386)

(assert (=> d!204787 (= lt!247276 (choose!4183 lt!246998 suffix!1342 lt!246998 lt!246975 lt!246992))))

(assert (=> d!204787 (isPrefix!744 lt!246998 lt!246992)))

(assert (=> d!204787 (= (lemmaSamePrefixThenSameSuffix!467 lt!246998 suffix!1342 lt!246998 lt!246975 lt!246992) lt!247276)))

(declare-fun bs!69846 () Bool)

(assert (= bs!69846 d!204787))

(declare-fun m!841863 () Bool)

(assert (=> bs!69846 m!841863))

(declare-fun m!841865 () Bool)

(assert (=> bs!69846 m!841865))

(assert (=> b!581937 d!204787))

(declare-fun d!204789 () Bool)

(assert (=> d!204789 (= (maxPrefixOneRule!395 thiss!22590 (rule!1866 token!491) lt!246992) (Some!1460 (tuple2!6687 (Token!1957 (apply!1375 (transformation!1110 (rule!1866 token!491)) (seqFromList!1298 lt!246998)) (rule!1866 token!491) (size!4545 lt!246998) lt!246998) suffix!1342)))))

(declare-fun lt!247277 () Unit!10386)

(assert (=> d!204789 (= lt!247277 (choose!4186 thiss!22590 rules!3103 lt!246998 lt!246992 suffix!1342 (rule!1866 token!491)))))

(assert (=> d!204789 (not (isEmpty!4122 rules!3103))))

(assert (=> d!204789 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!145 thiss!22590 rules!3103 lt!246998 lt!246992 suffix!1342 (rule!1866 token!491)) lt!247277)))

(declare-fun bs!69847 () Bool)

(assert (= bs!69847 d!204789))

(assert (=> bs!69847 m!841301))

(declare-fun m!841867 () Bool)

(assert (=> bs!69847 m!841867))

(assert (=> bs!69847 m!841265))

(assert (=> bs!69847 m!841303))

(assert (=> bs!69847 m!841217))

(declare-fun m!841869 () Bool)

(assert (=> bs!69847 m!841869))

(assert (=> bs!69847 m!841301))

(assert (=> b!581937 d!204789))

(assert (=> b!581935 d!204709))

(declare-fun d!204791 () Bool)

(assert (=> d!204791 (not (matchR!591 (regex!1110 (rule!1866 token!491)) input!2705))))

(declare-fun lt!247280 () Unit!10386)

(declare-fun choose!4187 (LexerInterface!996 List!5719 Rule!2020 List!5717 List!5717 Rule!2020) Unit!10386)

(assert (=> d!204791 (= lt!247280 (choose!4187 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705 input!2705 (rule!1866 token!491)))))

(assert (=> d!204791 (isPrefix!744 input!2705 input!2705)))

(assert (=> d!204791 (= (lemmaMaxPrefNoSmallerRuleMatches!25 thiss!22590 rules!3103 (rule!1866 (_1!3607 (v!16327 lt!246984))) input!2705 input!2705 (rule!1866 token!491)) lt!247280)))

(declare-fun bs!69848 () Bool)

(assert (= bs!69848 d!204791))

(assert (=> bs!69848 m!841227))

(declare-fun m!841871 () Bool)

(assert (=> bs!69848 m!841871))

(assert (=> bs!69848 m!841283))

(assert (=> b!581935 d!204791))

(declare-fun b!582406 () Bool)

(declare-fun e!351988 () Bool)

(declare-fun e!351990 () Bool)

(assert (=> b!582406 (= e!351988 e!351990)))

(declare-fun c!109017 () Bool)

(assert (=> b!582406 (= c!109017 (is-IntegerValue!3403 (value!36503 token!491)))))

(declare-fun d!204793 () Bool)

(declare-fun c!109018 () Bool)

(assert (=> d!204793 (= c!109018 (is-IntegerValue!3402 (value!36503 token!491)))))

(assert (=> d!204793 (= (inv!21 (value!36503 token!491)) e!351988)))

(declare-fun b!582407 () Bool)

(declare-fun inv!17 (TokenValue!1134) Bool)

(assert (=> b!582407 (= e!351990 (inv!17 (value!36503 token!491)))))

(declare-fun b!582408 () Bool)

(declare-fun inv!16 (TokenValue!1134) Bool)

(assert (=> b!582408 (= e!351988 (inv!16 (value!36503 token!491)))))

(declare-fun b!582409 () Bool)

(declare-fun e!351989 () Bool)

(declare-fun inv!15 (TokenValue!1134) Bool)

(assert (=> b!582409 (= e!351989 (inv!15 (value!36503 token!491)))))

(declare-fun b!582410 () Bool)

(declare-fun res!250829 () Bool)

(assert (=> b!582410 (=> res!250829 e!351989)))

(assert (=> b!582410 (= res!250829 (not (is-IntegerValue!3404 (value!36503 token!491))))))

(assert (=> b!582410 (= e!351990 e!351989)))

(assert (= (and d!204793 c!109018) b!582408))

(assert (= (and d!204793 (not c!109018)) b!582406))

(assert (= (and b!582406 c!109017) b!582407))

(assert (= (and b!582406 (not c!109017)) b!582410))

(assert (= (and b!582410 (not res!250829)) b!582409))

(declare-fun m!841873 () Bool)

(assert (=> b!582407 m!841873))

(declare-fun m!841875 () Bool)

(assert (=> b!582408 m!841875))

(declare-fun m!841877 () Bool)

(assert (=> b!582409 m!841877))

(assert (=> b!581934 d!204793))

(declare-fun d!204795 () Bool)

(assert (=> d!204795 (= (list!2376 (charsOf!739 token!491)) (list!2378 (c!108936 (charsOf!739 token!491))))))

(declare-fun bs!69849 () Bool)

(assert (= bs!69849 d!204795))

(declare-fun m!841879 () Bool)

(assert (=> bs!69849 m!841879))

(assert (=> b!581932 d!204795))

(declare-fun d!204797 () Bool)

(declare-fun lt!247281 () BalanceConc!3662)

(assert (=> d!204797 (= (list!2376 lt!247281) (originalCharacters!1149 token!491))))

(assert (=> d!204797 (= lt!247281 (dynLambda!3327 (toChars!1836 (transformation!1110 (rule!1866 token!491))) (value!36503 token!491)))))

(assert (=> d!204797 (= (charsOf!739 token!491) lt!247281)))

(declare-fun b_lambda!22937 () Bool)

(assert (=> (not b_lambda!22937) (not d!204797)))

(assert (=> d!204797 t!78177))

(declare-fun b_and!57331 () Bool)

(assert (= b_and!57323 (and (=> t!78177 result!57082) b_and!57331)))

(assert (=> d!204797 t!78179))

(declare-fun b_and!57333 () Bool)

(assert (= b_and!57325 (and (=> t!78179 result!57084) b_and!57333)))

(declare-fun m!841881 () Bool)

(assert (=> d!204797 m!841881))

(assert (=> d!204797 m!841747))

(assert (=> b!581932 d!204797))

(declare-fun d!204799 () Bool)

(assert (=> d!204799 (= (isEmpty!4121 (_2!3607 (v!16327 lt!246984))) (is-Nil!5707 (_2!3607 (v!16327 lt!246984))))))

(assert (=> b!581910 d!204799))

(declare-fun d!204801 () Bool)

(assert (=> d!204801 (= (get!2180 lt!246984) (v!16327 lt!246984))))

(assert (=> b!581909 d!204801))

(declare-fun d!204803 () Bool)

(assert (=> d!204803 (= (isDefined!1272 lt!246973) (not (isEmpty!4125 lt!246973)))))

(declare-fun bs!69850 () Bool)

(assert (= bs!69850 d!204803))

(declare-fun m!841883 () Bool)

(assert (=> bs!69850 m!841883))

(assert (=> b!581908 d!204803))

(declare-fun b!582411 () Bool)

(declare-fun res!250831 () Bool)

(declare-fun e!351992 () Bool)

(assert (=> b!582411 (=> (not res!250831) (not e!351992))))

(declare-fun lt!247283 () Option!1461)

(assert (=> b!582411 (= res!250831 (= (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247283)))) (originalCharacters!1149 (_1!3607 (get!2180 lt!247283)))))))

(declare-fun b!582412 () Bool)

(declare-fun res!250835 () Bool)

(assert (=> b!582412 (=> (not res!250835) (not e!351992))))

(assert (=> b!582412 (= res!250835 (matchR!591 (regex!1110 (rule!1866 (_1!3607 (get!2180 lt!247283)))) (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247283))))))))

(declare-fun b!582413 () Bool)

(declare-fun res!250830 () Bool)

(assert (=> b!582413 (=> (not res!250830) (not e!351992))))

(assert (=> b!582413 (= res!250830 (= (++!1598 (list!2376 (charsOf!739 (_1!3607 (get!2180 lt!247283)))) (_2!3607 (get!2180 lt!247283))) lt!246992))))

(declare-fun b!582414 () Bool)

(declare-fun e!351991 () Bool)

(assert (=> b!582414 (= e!351991 e!351992)))

(declare-fun res!250836 () Bool)

(assert (=> b!582414 (=> (not res!250836) (not e!351992))))

(assert (=> b!582414 (= res!250836 (isDefined!1272 lt!247283))))

(declare-fun b!582415 () Bool)

(declare-fun e!351993 () Option!1461)

(declare-fun lt!247284 () Option!1461)

(declare-fun lt!247286 () Option!1461)

(assert (=> b!582415 (= e!351993 (ite (and (is-None!1460 lt!247284) (is-None!1460 lt!247286)) None!1460 (ite (is-None!1460 lt!247286) lt!247284 (ite (is-None!1460 lt!247284) lt!247286 (ite (>= (size!4544 (_1!3607 (v!16327 lt!247284))) (size!4544 (_1!3607 (v!16327 lt!247286)))) lt!247284 lt!247286)))))))

(declare-fun call!40151 () Option!1461)

(assert (=> b!582415 (= lt!247284 call!40151)))

(assert (=> b!582415 (= lt!247286 (maxPrefix!694 thiss!22590 (t!78160 rules!3103) lt!246992))))

(declare-fun bm!40146 () Bool)

(assert (=> bm!40146 (= call!40151 (maxPrefixOneRule!395 thiss!22590 (h!11110 rules!3103) lt!246992))))

(declare-fun b!582416 () Bool)

(assert (=> b!582416 (= e!351992 (contains!1344 rules!3103 (rule!1866 (_1!3607 (get!2180 lt!247283)))))))

(declare-fun b!582417 () Bool)

(declare-fun res!250832 () Bool)

(assert (=> b!582417 (=> (not res!250832) (not e!351992))))

(assert (=> b!582417 (= res!250832 (= (value!36503 (_1!3607 (get!2180 lt!247283))) (apply!1375 (transformation!1110 (rule!1866 (_1!3607 (get!2180 lt!247283)))) (seqFromList!1298 (originalCharacters!1149 (_1!3607 (get!2180 lt!247283)))))))))

(declare-fun d!204805 () Bool)

(assert (=> d!204805 e!351991))

(declare-fun res!250833 () Bool)

(assert (=> d!204805 (=> res!250833 e!351991)))

(assert (=> d!204805 (= res!250833 (isEmpty!4125 lt!247283))))

(assert (=> d!204805 (= lt!247283 e!351993)))

(declare-fun c!109019 () Bool)

(assert (=> d!204805 (= c!109019 (and (is-Cons!5709 rules!3103) (is-Nil!5709 (t!78160 rules!3103))))))

(declare-fun lt!247285 () Unit!10386)

(declare-fun lt!247282 () Unit!10386)

(assert (=> d!204805 (= lt!247285 lt!247282)))

(assert (=> d!204805 (isPrefix!744 lt!246992 lt!246992)))

(assert (=> d!204805 (= lt!247282 (lemmaIsPrefixRefl!482 lt!246992 lt!246992))))

(assert (=> d!204805 (rulesValidInductive!399 thiss!22590 rules!3103)))

(assert (=> d!204805 (= (maxPrefix!694 thiss!22590 rules!3103 lt!246992) lt!247283)))

(declare-fun b!582418 () Bool)

(assert (=> b!582418 (= e!351993 call!40151)))

(declare-fun b!582419 () Bool)

(declare-fun res!250834 () Bool)

(assert (=> b!582419 (=> (not res!250834) (not e!351992))))

(assert (=> b!582419 (= res!250834 (< (size!4545 (_2!3607 (get!2180 lt!247283))) (size!4545 lt!246992)))))

(assert (= (and d!204805 c!109019) b!582418))

(assert (= (and d!204805 (not c!109019)) b!582415))

(assert (= (or b!582418 b!582415) bm!40146))

(assert (= (and d!204805 (not res!250833)) b!582414))

(assert (= (and b!582414 res!250836) b!582411))

(assert (= (and b!582411 res!250831) b!582419))

(assert (= (and b!582419 res!250834) b!582413))

(assert (= (and b!582413 res!250830) b!582417))

(assert (= (and b!582417 res!250832) b!582412))

(assert (= (and b!582412 res!250835) b!582416))

(declare-fun m!841885 () Bool)

(assert (=> b!582419 m!841885))

(declare-fun m!841887 () Bool)

(assert (=> b!582419 m!841887))

(assert (=> b!582419 m!841727))

(assert (=> b!582412 m!841885))

(declare-fun m!841889 () Bool)

(assert (=> b!582412 m!841889))

(assert (=> b!582412 m!841889))

(declare-fun m!841891 () Bool)

(assert (=> b!582412 m!841891))

(assert (=> b!582412 m!841891))

(declare-fun m!841893 () Bool)

(assert (=> b!582412 m!841893))

(assert (=> b!582411 m!841885))

(assert (=> b!582411 m!841889))

(assert (=> b!582411 m!841889))

(assert (=> b!582411 m!841891))

(declare-fun m!841895 () Bool)

(assert (=> b!582415 m!841895))

(declare-fun m!841897 () Bool)

(assert (=> d!204805 m!841897))

(declare-fun m!841899 () Bool)

(assert (=> d!204805 m!841899))

(declare-fun m!841901 () Bool)

(assert (=> d!204805 m!841901))

(assert (=> d!204805 m!841527))

(assert (=> b!582416 m!841885))

(declare-fun m!841903 () Bool)

(assert (=> b!582416 m!841903))

(declare-fun m!841905 () Bool)

(assert (=> bm!40146 m!841905))

(assert (=> b!582413 m!841885))

(assert (=> b!582413 m!841889))

(assert (=> b!582413 m!841889))

(assert (=> b!582413 m!841891))

(assert (=> b!582413 m!841891))

(declare-fun m!841907 () Bool)

(assert (=> b!582413 m!841907))

(declare-fun m!841909 () Bool)

(assert (=> b!582414 m!841909))

(assert (=> b!582417 m!841885))

(declare-fun m!841911 () Bool)

(assert (=> b!582417 m!841911))

(assert (=> b!582417 m!841911))

(declare-fun m!841913 () Bool)

(assert (=> b!582417 m!841913))

(assert (=> b!581908 d!204805))

(declare-fun d!204807 () Bool)

(declare-fun e!351995 () Bool)

(assert (=> d!204807 e!351995))

(declare-fun res!250837 () Bool)

(assert (=> d!204807 (=> (not res!250837) (not e!351995))))

(declare-fun lt!247287 () List!5717)

(assert (=> d!204807 (= res!250837 (= (content!1013 lt!247287) (set.union (content!1013 input!2705) (content!1013 suffix!1342))))))

(declare-fun e!351994 () List!5717)

(assert (=> d!204807 (= lt!247287 e!351994)))

(declare-fun c!109020 () Bool)

(assert (=> d!204807 (= c!109020 (is-Nil!5707 input!2705))))

(assert (=> d!204807 (= (++!1598 input!2705 suffix!1342) lt!247287)))

(declare-fun b!582420 () Bool)

(assert (=> b!582420 (= e!351994 suffix!1342)))

(declare-fun b!582422 () Bool)

(declare-fun res!250838 () Bool)

(assert (=> b!582422 (=> (not res!250838) (not e!351995))))

(assert (=> b!582422 (= res!250838 (= (size!4545 lt!247287) (+ (size!4545 input!2705) (size!4545 suffix!1342))))))

(declare-fun b!582423 () Bool)

(assert (=> b!582423 (= e!351995 (or (not (= suffix!1342 Nil!5707)) (= lt!247287 input!2705)))))

(declare-fun b!582421 () Bool)

(assert (=> b!582421 (= e!351994 (Cons!5707 (h!11108 input!2705) (++!1598 (t!78158 input!2705) suffix!1342)))))

(assert (= (and d!204807 c!109020) b!582420))

(assert (= (and d!204807 (not c!109020)) b!582421))

(assert (= (and d!204807 res!250837) b!582422))

(assert (= (and b!582422 res!250838) b!582423))

(declare-fun m!841915 () Bool)

(assert (=> d!204807 m!841915))

(declare-fun m!841917 () Bool)

(assert (=> d!204807 m!841917))

(assert (=> d!204807 m!841493))

(declare-fun m!841919 () Bool)

(assert (=> b!582422 m!841919))

(assert (=> b!582422 m!841515))

(assert (=> b!582422 m!841497))

(declare-fun m!841921 () Bool)

(assert (=> b!582421 m!841921))

(assert (=> b!581908 d!204807))

(declare-fun bm!40147 () Bool)

(declare-fun call!40152 () Bool)

(assert (=> bm!40147 (= call!40152 (isEmpty!4121 input!2705))))

(declare-fun b!582424 () Bool)

(declare-fun e!352001 () Bool)

(declare-fun e!351996 () Bool)

(assert (=> b!582424 (= e!352001 e!351996)))

(declare-fun c!109022 () Bool)

(assert (=> b!582424 (= c!109022 (is-EmptyLang!1444 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun b!582425 () Bool)

(declare-fun e!351997 () Bool)

(declare-fun e!351998 () Bool)

(assert (=> b!582425 (= e!351997 e!351998)))

(declare-fun res!250843 () Bool)

(assert (=> b!582425 (=> (not res!250843) (not e!351998))))

(declare-fun lt!247288 () Bool)

(assert (=> b!582425 (= res!250843 (not lt!247288))))

(declare-fun b!582426 () Bool)

(declare-fun e!352000 () Bool)

(assert (=> b!582426 (= e!352000 (matchR!591 (derivativeStep!305 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) (head!1229 input!2705)) (tail!758 input!2705)))))

(declare-fun b!582427 () Bool)

(assert (=> b!582427 (= e!351996 (not lt!247288))))

(declare-fun b!582428 () Bool)

(assert (=> b!582428 (= e!352000 (nullable!392 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(declare-fun b!582429 () Bool)

(declare-fun res!250842 () Bool)

(declare-fun e!351999 () Bool)

(assert (=> b!582429 (=> res!250842 e!351999)))

(assert (=> b!582429 (= res!250842 (not (isEmpty!4121 (tail!758 input!2705))))))

(declare-fun b!582430 () Bool)

(declare-fun res!250841 () Bool)

(assert (=> b!582430 (=> res!250841 e!351997)))

(assert (=> b!582430 (= res!250841 (not (is-ElementMatch!1444 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(assert (=> b!582430 (= e!351996 e!351997)))

(declare-fun b!582431 () Bool)

(declare-fun res!250839 () Bool)

(assert (=> b!582431 (=> res!250839 e!351997)))

(declare-fun e!352002 () Bool)

(assert (=> b!582431 (= res!250839 e!352002)))

(declare-fun res!250846 () Bool)

(assert (=> b!582431 (=> (not res!250846) (not e!352002))))

(assert (=> b!582431 (= res!250846 lt!247288)))

(declare-fun d!204809 () Bool)

(assert (=> d!204809 e!352001))

(declare-fun c!109021 () Bool)

(assert (=> d!204809 (= c!109021 (is-EmptyExpr!1444 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))

(assert (=> d!204809 (= lt!247288 e!352000)))

(declare-fun c!109023 () Bool)

(assert (=> d!204809 (= c!109023 (isEmpty!4121 input!2705))))

(assert (=> d!204809 (validRegex!487 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> d!204809 (= (matchR!591 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) input!2705) lt!247288)))

(declare-fun b!582432 () Bool)

(assert (=> b!582432 (= e!351998 e!351999)))

(declare-fun res!250845 () Bool)

(assert (=> b!582432 (=> res!250845 e!351999)))

(assert (=> b!582432 (= res!250845 call!40152)))

(declare-fun b!582433 () Bool)

(assert (=> b!582433 (= e!352001 (= lt!247288 call!40152))))

(declare-fun b!582434 () Bool)

(declare-fun res!250840 () Bool)

(assert (=> b!582434 (=> (not res!250840) (not e!352002))))

(assert (=> b!582434 (= res!250840 (isEmpty!4121 (tail!758 input!2705)))))

(declare-fun b!582435 () Bool)

(assert (=> b!582435 (= e!352002 (= (head!1229 input!2705) (c!108935 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))))

(declare-fun b!582436 () Bool)

(assert (=> b!582436 (= e!351999 (not (= (head!1229 input!2705) (c!108935 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984))))))))))

(declare-fun b!582437 () Bool)

(declare-fun res!250844 () Bool)

(assert (=> b!582437 (=> (not res!250844) (not e!352002))))

(assert (=> b!582437 (= res!250844 (not call!40152))))

(assert (= (and d!204809 c!109023) b!582428))

(assert (= (and d!204809 (not c!109023)) b!582426))

(assert (= (and d!204809 c!109021) b!582433))

(assert (= (and d!204809 (not c!109021)) b!582424))

(assert (= (and b!582424 c!109022) b!582427))

(assert (= (and b!582424 (not c!109022)) b!582430))

(assert (= (and b!582430 (not res!250841)) b!582431))

(assert (= (and b!582431 res!250846) b!582437))

(assert (= (and b!582437 res!250844) b!582434))

(assert (= (and b!582434 res!250840) b!582435))

(assert (= (and b!582431 (not res!250839)) b!582425))

(assert (= (and b!582425 res!250843) b!582432))

(assert (= (and b!582432 (not res!250845)) b!582429))

(assert (= (and b!582429 (not res!250842)) b!582436))

(assert (= (or b!582433 b!582432 b!582437) bm!40147))

(assert (=> b!582429 m!841629))

(assert (=> b!582429 m!841629))

(assert (=> b!582429 m!841631))

(assert (=> bm!40147 m!841327))

(assert (=> b!582434 m!841629))

(assert (=> b!582434 m!841629))

(assert (=> b!582434 m!841631))

(assert (=> d!204809 m!841327))

(assert (=> d!204809 m!841731))

(assert (=> b!582436 m!841635))

(assert (=> b!582428 m!841733))

(assert (=> b!582426 m!841635))

(assert (=> b!582426 m!841635))

(declare-fun m!841923 () Bool)

(assert (=> b!582426 m!841923))

(assert (=> b!582426 m!841629))

(assert (=> b!582426 m!841923))

(assert (=> b!582426 m!841629))

(declare-fun m!841925 () Bool)

(assert (=> b!582426 m!841925))

(assert (=> b!582435 m!841635))

(assert (=> b!581929 d!204809))

(declare-fun d!204811 () Bool)

(assert (=> d!204811 (not (matchR!591 (regex!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))) input!2705))))

(declare-fun lt!247289 () Unit!10386)

(assert (=> d!204811 (= lt!247289 (choose!4187 thiss!22590 rules!3103 (rule!1866 token!491) input!2705 lt!246992 (rule!1866 (_1!3607 (v!16327 lt!246984)))))))

(assert (=> d!204811 (isPrefix!744 input!2705 lt!246992)))

(assert (=> d!204811 (= (lemmaMaxPrefNoSmallerRuleMatches!25 thiss!22590 rules!3103 (rule!1866 token!491) input!2705 lt!246992 (rule!1866 (_1!3607 (v!16327 lt!246984)))) lt!247289)))

(declare-fun bs!69851 () Bool)

(assert (= bs!69851 d!204811))

(assert (=> bs!69851 m!841289))

(declare-fun m!841927 () Bool)

(assert (=> bs!69851 m!841927))

(assert (=> bs!69851 m!841263))

(assert (=> b!581929 d!204811))

(declare-fun b!582442 () Bool)

(declare-fun e!352005 () Bool)

(declare-fun tp!181679 () Bool)

(assert (=> b!582442 (= e!352005 (and tp_is_empty!3243 tp!181679))))

(assert (=> b!581934 (= tp!181633 e!352005)))

(assert (= (and b!581934 (is-Cons!5707 (originalCharacters!1149 token!491))) b!582442))

(declare-fun b!582443 () Bool)

(declare-fun e!352006 () Bool)

(declare-fun tp!181680 () Bool)

(assert (=> b!582443 (= e!352006 (and tp_is_empty!3243 tp!181680))))

(assert (=> b!581902 (= tp!181636 e!352006)))

(assert (= (and b!581902 (is-Cons!5707 (t!78158 input!2705))) b!582443))

(declare-fun b!582456 () Bool)

(declare-fun e!352009 () Bool)

(declare-fun tp!181692 () Bool)

(assert (=> b!582456 (= e!352009 tp!181692)))

(assert (=> b!581907 (= tp!181638 e!352009)))

(declare-fun b!582454 () Bool)

(assert (=> b!582454 (= e!352009 tp_is_empty!3243)))

(declare-fun b!582455 () Bool)

(declare-fun tp!181691 () Bool)

(declare-fun tp!181695 () Bool)

(assert (=> b!582455 (= e!352009 (and tp!181691 tp!181695))))

(declare-fun b!582457 () Bool)

(declare-fun tp!181693 () Bool)

(declare-fun tp!181694 () Bool)

(assert (=> b!582457 (= e!352009 (and tp!181693 tp!181694))))

(assert (= (and b!581907 (is-ElementMatch!1444 (regex!1110 (h!11110 rules!3103)))) b!582454))

(assert (= (and b!581907 (is-Concat!2578 (regex!1110 (h!11110 rules!3103)))) b!582455))

(assert (= (and b!581907 (is-Star!1444 (regex!1110 (h!11110 rules!3103)))) b!582456))

(assert (= (and b!581907 (is-Union!1444 (regex!1110 (h!11110 rules!3103)))) b!582457))

(declare-fun b!582460 () Bool)

(declare-fun e!352010 () Bool)

(declare-fun tp!181697 () Bool)

(assert (=> b!582460 (= e!352010 tp!181697)))

(assert (=> b!581928 (= tp!181634 e!352010)))

(declare-fun b!582458 () Bool)

(assert (=> b!582458 (= e!352010 tp_is_empty!3243)))

(declare-fun b!582459 () Bool)

(declare-fun tp!181696 () Bool)

(declare-fun tp!181700 () Bool)

(assert (=> b!582459 (= e!352010 (and tp!181696 tp!181700))))

(declare-fun b!582461 () Bool)

(declare-fun tp!181698 () Bool)

(declare-fun tp!181699 () Bool)

(assert (=> b!582461 (= e!352010 (and tp!181698 tp!181699))))

(assert (= (and b!581928 (is-ElementMatch!1444 (regex!1110 (rule!1866 token!491)))) b!582458))

(assert (= (and b!581928 (is-Concat!2578 (regex!1110 (rule!1866 token!491)))) b!582459))

(assert (= (and b!581928 (is-Star!1444 (regex!1110 (rule!1866 token!491)))) b!582460))

(assert (= (and b!581928 (is-Union!1444 (regex!1110 (rule!1866 token!491)))) b!582461))

(declare-fun b!582472 () Bool)

(declare-fun b_free!16189 () Bool)

(declare-fun b_next!16205 () Bool)

(assert (=> b!582472 (= b_free!16189 (not b_next!16205))))

(declare-fun tb!51015 () Bool)

(declare-fun t!78189 () Bool)

(assert (=> (and b!582472 (= (toValue!1977 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toValue!1977 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78189) tb!51015))

(declare-fun result!57100 () Bool)

(assert (= result!57100 result!57072))

(assert (=> d!204695 t!78189))

(assert (=> d!204743 t!78189))

(declare-fun t!78191 () Bool)

(declare-fun tb!51017 () Bool)

(assert (=> (and b!582472 (= (toValue!1977 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toValue!1977 (transformation!1110 (rule!1866 token!491)))) t!78191) tb!51017))

(declare-fun result!57102 () Bool)

(assert (= result!57102 result!57086))

(assert (=> d!204775 t!78191))

(assert (=> d!204779 t!78191))

(declare-fun b_and!57335 () Bool)

(declare-fun tp!181710 () Bool)

(assert (=> b!582472 (= tp!181710 (and (=> t!78189 result!57100) (=> t!78191 result!57102) b_and!57335))))

(declare-fun b_free!16191 () Bool)

(declare-fun b_next!16207 () Bool)

(assert (=> b!582472 (= b_free!16191 (not b_next!16207))))

(declare-fun tb!51019 () Bool)

(declare-fun t!78193 () Bool)

(assert (=> (and b!582472 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78193) tb!51019))

(declare-fun result!57104 () Bool)

(assert (= result!57104 result!57090))

(assert (=> d!204779 t!78193))

(declare-fun tb!51021 () Bool)

(declare-fun t!78195 () Bool)

(assert (=> (and b!582472 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 token!491)))) t!78195) tb!51021))

(declare-fun result!57106 () Bool)

(assert (= result!57106 result!57082))

(assert (=> d!204797 t!78195))

(assert (=> b!582351 t!78195))

(declare-fun tb!51023 () Bool)

(declare-fun t!78197 () Bool)

(assert (=> (and b!582472 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78197) tb!51023))

(declare-fun result!57108 () Bool)

(assert (= result!57108 result!57066))

(assert (=> d!204695 t!78197))

(declare-fun tb!51025 () Bool)

(declare-fun t!78199 () Bool)

(assert (=> (and b!582472 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 (_1!3607 (v!16327 lt!246984)))))) t!78199) tb!51025))

(declare-fun result!57110 () Bool)

(assert (= result!57110 result!57078))

(assert (=> d!204719 t!78199))

(declare-fun b_and!57337 () Bool)

(declare-fun tp!181709 () Bool)

(assert (=> b!582472 (= tp!181709 (and (=> t!78199 result!57110) (=> t!78195 result!57106) (=> t!78197 result!57108) (=> t!78193 result!57104) b_and!57337))))

(declare-fun e!352022 () Bool)

(assert (=> b!582472 (= e!352022 (and tp!181710 tp!181709))))

(declare-fun e!352019 () Bool)

(declare-fun b!582471 () Bool)

(declare-fun tp!181711 () Bool)

(assert (=> b!582471 (= e!352019 (and tp!181711 (inv!7192 (tag!1372 (h!11110 (t!78160 rules!3103)))) (inv!7195 (transformation!1110 (h!11110 (t!78160 rules!3103)))) e!352022))))

(declare-fun b!582470 () Bool)

(declare-fun e!352021 () Bool)

(declare-fun tp!181712 () Bool)

(assert (=> b!582470 (= e!352021 (and e!352019 tp!181712))))

(assert (=> b!581906 (= tp!181632 e!352021)))

(assert (= b!582471 b!582472))

(assert (= b!582470 b!582471))

(assert (= (and b!581906 (is-Cons!5709 (t!78160 rules!3103))) b!582470))

(declare-fun m!841929 () Bool)

(assert (=> b!582471 m!841929))

(declare-fun m!841931 () Bool)

(assert (=> b!582471 m!841931))

(declare-fun b!582473 () Bool)

(declare-fun e!352023 () Bool)

(declare-fun tp!181713 () Bool)

(assert (=> b!582473 (= e!352023 (and tp_is_empty!3243 tp!181713))))

(assert (=> b!581930 (= tp!181631 e!352023)))

(assert (= (and b!581930 (is-Cons!5707 (t!78158 suffix!1342))) b!582473))

(declare-fun b_lambda!22939 () Bool)

(assert (= b_lambda!22935 (or (and b!581936 b_free!16173) (and b!581940 b_free!16177 (= (toValue!1977 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (rule!1866 token!491))))) (and b!582472 b_free!16189 (= (toValue!1977 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toValue!1977 (transformation!1110 (rule!1866 token!491))))) b_lambda!22939)))

(declare-fun b_lambda!22941 () Bool)

(assert (= b_lambda!22933 (or (and b!581936 b_free!16175) (and b!581940 b_free!16179 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) (and b!582472 b_free!16191 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) b_lambda!22941)))

(declare-fun b_lambda!22943 () Bool)

(assert (= b_lambda!22937 (or (and b!581936 b_free!16175) (and b!581940 b_free!16179 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) (and b!582472 b_free!16191 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) b_lambda!22943)))

(declare-fun b_lambda!22945 () Bool)

(assert (= b_lambda!22929 (or (and b!581936 b_free!16175) (and b!581940 b_free!16179 (= (toChars!1836 (transformation!1110 (h!11110 rules!3103))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) (and b!582472 b_free!16191 (= (toChars!1836 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toChars!1836 (transformation!1110 (rule!1866 token!491))))) b_lambda!22945)))

(declare-fun b_lambda!22947 () Bool)

(assert (= b_lambda!22931 (or (and b!581936 b_free!16173) (and b!581940 b_free!16177 (= (toValue!1977 (transformation!1110 (h!11110 rules!3103))) (toValue!1977 (transformation!1110 (rule!1866 token!491))))) (and b!582472 b_free!16189 (= (toValue!1977 (transformation!1110 (h!11110 (t!78160 rules!3103)))) (toValue!1977 (transformation!1110 (rule!1866 token!491))))) b_lambda!22947)))

(push 1)

(assert (not b!582247))

(assert (not b!582309))

(assert (not b!582381))

(assert (not d!204795))

(assert (not b!582413))

(assert tp_is_empty!3243)

(assert (not tb!51003))

(assert (not b!582457))

(assert (not d!204669))

(assert (not b!582126))

(assert (not b!582283))

(assert (not d!204757))

(assert (not b!582470))

(assert (not b!582342))

(assert (not b!582380))

(assert (not b!582319))

(assert (not d!204763))

(assert (not b!582384))

(assert (not b!582157))

(assert (not b!582417))

(assert (not b!582159))

(assert (not b!582353))

(assert (not b!582104))

(assert (not d!204749))

(assert (not b!582116))

(assert (not b_lambda!22921))

(assert (not d!204729))

(assert (not b!582306))

(assert (not d!204719))

(assert (not b!582305))

(assert (not b!582473))

(assert (not tb!51011))

(assert (not b!582318))

(assert (not b!582290))

(assert (not b!582310))

(assert (not d!204787))

(assert b_and!57335)

(assert (not b!582359))

(assert (not b!582351))

(assert (not b!582312))

(assert (not b_lambda!22941))

(assert (not b!582388))

(assert (not b!582162))

(assert (not bm!40145))

(assert b_and!57337)

(assert (not d!204707))

(assert (not b!582434))

(assert (not b!582316))

(assert (not b!582471))

(assert (not b!582416))

(assert (not b_next!16193))

(assert (not b!582332))

(assert (not b!582415))

(assert (not b_next!16207))

(assert (not b!582461))

(assert (not d!204789))

(assert (not d!204753))

(assert (not tb!51007))

(assert (not b!582356))

(assert (not b!582345))

(assert (not b_lambda!22927))

(assert (not d!204715))

(assert (not b_lambda!22943))

(assert (not tb!50991))

(assert (not d!204737))

(assert (not b!582389))

(assert (not d!204709))

(assert (not b!582378))

(assert (not d!204797))

(assert (not b!582280))

(assert (not b_next!16195))

(assert (not b!582087))

(assert (not b!582407))

(assert (not b!582426))

(assert (not b!582382))

(assert (not b_lambda!22925))

(assert (not b!582408))

(assert (not b!582282))

(assert (not b_lambda!22923))

(assert (not b!582393))

(assert (not d!204803))

(assert (not b!582302))

(assert (not b!582435))

(assert (not b!582411))

(assert (not b!582163))

(assert (not b!582103))

(assert (not b!582355))

(assert (not d!204791))

(assert (not b!582391))

(assert (not d!204745))

(assert (not tb!50995))

(assert (not b!582421))

(assert (not b_next!16189))

(assert b_and!57333)

(assert (not b!582288))

(assert (not b!582455))

(assert (not d!204809))

(assert (not d!204683))

(assert (not b!582442))

(assert (not b!582386))

(assert (not d!204781))

(assert (not bm!40146))

(assert (not d!204681))

(assert (not b!582124))

(assert (not d!204685))

(assert (not b!582379))

(assert b_and!57331)

(assert (not bm!40147))

(assert (not b_lambda!22947))

(assert (not b!582443))

(assert (not b!582301))

(assert (not b!582081))

(assert (not b!582165))

(assert (not b!582352))

(assert b_and!57327)

(assert (not bm!40139))

(assert (not d!204695))

(assert (not b!582313))

(assert (not b!582436))

(assert (not d!204673))

(assert (not b!582161))

(assert (not d!204735))

(assert (not b!582414))

(assert (not d!204785))

(assert (not b!582158))

(assert (not d!204679))

(assert (not b!582323))

(assert (not b!582387))

(assert (not d!204747))

(assert (not b!582412))

(assert (not b!582326))

(assert (not b!582422))

(assert (not d!204811))

(assert (not d!204741))

(assert b_and!57329)

(assert (not d!204739))

(assert (not d!204671))

(assert (not d!204771))

(assert (not b!582327))

(assert (not b_lambda!22945))

(assert (not d!204733))

(assert (not d!204807))

(assert (not d!204773))

(assert (not b!582383))

(assert (not d!204761))

(assert (not d!204665))

(assert (not d!204759))

(assert (not d!204779))

(assert (not b!582395))

(assert (not b!582390))

(assert (not b!582392))

(assert (not b!582303))

(assert (not b!582080))

(assert (not d!204805))

(assert (not b!582325))

(assert (not b!582409))

(assert (not b_next!16191))

(assert (not d!204765))

(assert (not b!582343))

(assert (not b!582093))

(assert (not b!582314))

(assert (not b!582160))

(assert (not d!204727))

(assert (not b!582341))

(assert (not d!204777))

(assert (not b!582289))

(assert (not d!204675))

(assert (not b!582344))

(assert (not b!582120))

(assert (not b_next!16205))

(assert (not d!204751))

(assert (not b!582428))

(assert (not b!582419))

(assert (not d!204691))

(assert (not b!582460))

(assert (not b!582456))

(assert (not b!582459))

(assert (not d!204767))

(assert (not b!582320))

(assert (not b!582338))

(assert (not b_lambda!22939))

(assert (not d!204783))

(assert (not b!582429))

(assert (not tb!50999))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57335)

(assert b_and!57337)

(assert (not b_next!16193))

(assert (not b_next!16207))

(assert (not b_next!16195))

(assert (not b_next!16189))

(assert b_and!57333)

(assert b_and!57331)

(assert b_and!57327)

(assert b_and!57329)

(assert (not b_next!16191))

(assert (not b_next!16205))

(check-sat)

(pop 1)

