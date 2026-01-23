; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384948 () Bool)

(assert start!384948)

(declare-fun b!4076490 () Bool)

(declare-fun b_free!113625 () Bool)

(declare-fun b_next!114329 () Bool)

(assert (=> b!4076490 (= b_free!113625 (not b_next!114329))))

(declare-fun tp!1234004 () Bool)

(declare-fun b_and!313427 () Bool)

(assert (=> b!4076490 (= tp!1234004 b_and!313427)))

(declare-fun b_free!113627 () Bool)

(declare-fun b_next!114331 () Bool)

(assert (=> b!4076490 (= b_free!113627 (not b_next!114331))))

(declare-fun tp!1233999 () Bool)

(declare-fun b_and!313429 () Bool)

(assert (=> b!4076490 (= tp!1233999 b_and!313429)))

(declare-fun b!4076491 () Bool)

(declare-fun b_free!113629 () Bool)

(declare-fun b_next!114333 () Bool)

(assert (=> b!4076491 (= b_free!113629 (not b_next!114333))))

(declare-fun tp!1234005 () Bool)

(declare-fun b_and!313431 () Bool)

(assert (=> b!4076491 (= tp!1234005 b_and!313431)))

(declare-fun b_free!113631 () Bool)

(declare-fun b_next!114335 () Bool)

(assert (=> b!4076491 (= b_free!113631 (not b_next!114335))))

(declare-fun tp!1233997 () Bool)

(declare-fun b_and!313433 () Bool)

(assert (=> b!4076491 (= tp!1233997 b_and!313433)))

(declare-fun b!4076478 () Bool)

(declare-fun e!2530152 () Bool)

(declare-fun tp_is_empty!20869 () Bool)

(declare-fun tp!1234003 () Bool)

(assert (=> b!4076478 (= e!2530152 (and tp_is_empty!20869 tp!1234003))))

(declare-fun b!4076479 () Bool)

(declare-fun res!1664964 () Bool)

(declare-fun e!2530144 () Bool)

(assert (=> b!4076479 (=> (not res!1664964) (not e!2530144))))

(declare-datatypes ((C!24052 0))(
  ( (C!24053 (val!14136 Int)) )
))
(declare-datatypes ((List!43749 0))(
  ( (Nil!43625) (Cons!43625 (h!49045 C!24052) (t!337388 List!43749)) )
))
(declare-fun p!2988 () List!43749)

(declare-fun input!3411 () List!43749)

(declare-fun suffix!1518 () List!43749)

(declare-fun ++!11434 (List!43749 List!43749) List!43749)

(assert (=> b!4076479 (= res!1664964 (= input!3411 (++!11434 p!2988 suffix!1518)))))

(declare-fun b!4076480 () Bool)

(declare-fun res!1664974 () Bool)

(assert (=> b!4076480 (=> (not res!1664974) (not e!2530144))))

(declare-datatypes ((LexerInterface!6617 0))(
  ( (LexerInterfaceExt!6614 (__x!26733 Int)) (Lexer!6615) )
))
(declare-fun thiss!26199 () LexerInterface!6617)

(declare-datatypes ((List!43750 0))(
  ( (Nil!43626) (Cons!43626 (h!49046 (_ BitVec 16)) (t!337389 List!43750)) )
))
(declare-datatypes ((TokenValue!7258 0))(
  ( (FloatLiteralValue!14516 (text!51251 List!43750)) (TokenValueExt!7257 (__x!26734 Int)) (Broken!36290 (value!220924 List!43750)) (Object!7381) (End!7258) (Def!7258) (Underscore!7258) (Match!7258) (Else!7258) (Error!7258) (Case!7258) (If!7258) (Extends!7258) (Abstract!7258) (Class!7258) (Val!7258) (DelimiterValue!14516 (del!7318 List!43750)) (KeywordValue!7264 (value!220925 List!43750)) (CommentValue!14516 (value!220926 List!43750)) (WhitespaceValue!14516 (value!220927 List!43750)) (IndentationValue!7258 (value!220928 List!43750)) (String!50039) (Int32!7258) (Broken!36291 (value!220929 List!43750)) (Boolean!7259) (Unit!63168) (OperatorValue!7261 (op!7318 List!43750)) (IdentifierValue!14516 (value!220930 List!43750)) (IdentifierValue!14517 (value!220931 List!43750)) (WhitespaceValue!14517 (value!220932 List!43750)) (True!14516) (False!14516) (Broken!36292 (value!220933 List!43750)) (Broken!36293 (value!220934 List!43750)) (True!14517) (RightBrace!7258) (RightBracket!7258) (Colon!7258) (Null!7258) (Comma!7258) (LeftBracket!7258) (False!14517) (LeftBrace!7258) (ImaginaryLiteralValue!7258 (text!51252 List!43750)) (StringLiteralValue!21774 (value!220935 List!43750)) (EOFValue!7258 (value!220936 List!43750)) (IdentValue!7258 (value!220937 List!43750)) (DelimiterValue!14517 (value!220938 List!43750)) (DedentValue!7258 (value!220939 List!43750)) (NewLineValue!7258 (value!220940 List!43750)) (IntegerValue!21774 (value!220941 (_ BitVec 32)) (text!51253 List!43750)) (IntegerValue!21775 (value!220942 Int) (text!51254 List!43750)) (Times!7258) (Or!7258) (Equal!7258) (Minus!7258) (Broken!36294 (value!220943 List!43750)) (And!7258) (Div!7258) (LessEqual!7258) (Mod!7258) (Concat!19191) (Not!7258) (Plus!7258) (SpaceValue!7258 (value!220944 List!43750)) (IntegerValue!21776 (value!220945 Int) (text!51255 List!43750)) (StringLiteralValue!21775 (text!51256 List!43750)) (FloatLiteralValue!14517 (text!51257 List!43750)) (BytesLiteralValue!7258 (value!220946 List!43750)) (CommentValue!14517 (value!220947 List!43750)) (StringLiteralValue!21776 (value!220948 List!43750)) (ErrorTokenValue!7258 (msg!7319 List!43750)) )
))
(declare-datatypes ((String!50040 0))(
  ( (String!50041 (value!220949 String)) )
))
(declare-datatypes ((Regex!11933 0))(
  ( (ElementMatch!11933 (c!703250 C!24052)) (Concat!19192 (regOne!24378 Regex!11933) (regTwo!24378 Regex!11933)) (EmptyExpr!11933) (Star!11933 (reg!12262 Regex!11933)) (EmptyLang!11933) (Union!11933 (regOne!24379 Regex!11933) (regTwo!24379 Regex!11933)) )
))
(declare-datatypes ((IArray!26483 0))(
  ( (IArray!26484 (innerList!13299 List!43749)) )
))
(declare-datatypes ((Conc!13239 0))(
  ( (Node!13239 (left!32791 Conc!13239) (right!33121 Conc!13239) (csize!26708 Int) (cheight!13450 Int)) (Leaf!20468 (xs!16545 IArray!26483) (csize!26709 Int)) (Empty!13239) )
))
(declare-datatypes ((BalanceConc!26072 0))(
  ( (BalanceConc!26073 (c!703251 Conc!13239)) )
))
(declare-datatypes ((TokenValueInjection!13944 0))(
  ( (TokenValueInjection!13945 (toValue!9596 Int) (toChars!9455 Int)) )
))
(declare-datatypes ((Rule!13856 0))(
  ( (Rule!13857 (regex!7028 Regex!11933) (tag!7888 String!50040) (isSeparator!7028 Bool) (transformation!7028 TokenValueInjection!13944)) )
))
(declare-datatypes ((List!43751 0))(
  ( (Nil!43627) (Cons!43627 (h!49047 Rule!13856) (t!337390 List!43751)) )
))
(declare-fun rules!3870 () List!43751)

(declare-fun rulesInvariant!5960 (LexerInterface!6617 List!43751) Bool)

(assert (=> b!4076480 (= res!1664974 (rulesInvariant!5960 thiss!26199 rules!3870))))

(declare-fun b!4076481 () Bool)

(declare-fun e!2530149 () Bool)

(declare-fun tp!1234002 () Bool)

(assert (=> b!4076481 (= e!2530149 (and tp_is_empty!20869 tp!1234002))))

(declare-fun b!4076482 () Bool)

(declare-fun e!2530147 () Bool)

(declare-fun tp!1234006 () Bool)

(assert (=> b!4076482 (= e!2530147 (and tp_is_empty!20869 tp!1234006))))

(declare-fun b!4076483 () Bool)

(declare-fun res!1664970 () Bool)

(declare-fun e!2530148 () Bool)

(assert (=> b!4076483 (=> res!1664970 e!2530148)))

(declare-fun isEmpty!26051 (List!43751) Bool)

(assert (=> b!4076483 (= res!1664970 (isEmpty!26051 (t!337390 rules!3870)))))

(declare-fun b!4076484 () Bool)

(declare-fun e!2530143 () Bool)

(assert (=> b!4076484 (= e!2530144 e!2530143)))

(declare-fun res!1664965 () Bool)

(assert (=> b!4076484 (=> (not res!1664965) (not e!2530143))))

(declare-datatypes ((Token!13182 0))(
  ( (Token!13183 (value!220950 TokenValue!7258) (rule!10134 Rule!13856) (size!32589 Int) (originalCharacters!7622 List!43749)) )
))
(declare-datatypes ((tuple2!42602 0))(
  ( (tuple2!42603 (_1!24435 Token!13182) (_2!24435 List!43749)) )
))
(declare-datatypes ((Option!9436 0))(
  ( (None!9435) (Some!9435 (v!39881 tuple2!42602)) )
))
(declare-fun lt!1458710 () Option!9436)

(declare-fun maxPrefix!3909 (LexerInterface!6617 List!43751 List!43749) Option!9436)

(assert (=> b!4076484 (= res!1664965 (= (maxPrefix!3909 thiss!26199 rules!3870 input!3411) lt!1458710))))

(declare-fun lt!1458709 () BalanceConc!26072)

(declare-fun r!4213 () Rule!13856)

(declare-fun apply!10211 (TokenValueInjection!13944 BalanceConc!26072) TokenValue!7258)

(declare-fun size!32590 (List!43749) Int)

(assert (=> b!4076484 (= lt!1458710 (Some!9435 (tuple2!42603 (Token!13183 (apply!10211 (transformation!7028 r!4213) lt!1458709) r!4213 (size!32590 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63169 0))(
  ( (Unit!63170) )
))
(declare-fun lt!1458708 () Unit!63169)

(declare-fun lemmaSemiInverse!1995 (TokenValueInjection!13944 BalanceConc!26072) Unit!63169)

(assert (=> b!4076484 (= lt!1458708 (lemmaSemiInverse!1995 (transformation!7028 r!4213) lt!1458709))))

(declare-fun seqFromList!5245 (List!43749) BalanceConc!26072)

(assert (=> b!4076484 (= lt!1458709 (seqFromList!5245 p!2988))))

(declare-fun b!4076485 () Bool)

(assert (=> b!4076485 (= e!2530148 true)))

(declare-fun lt!1458712 () Unit!63169)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2020 (LexerInterface!6617 Rule!13856 List!43751) Unit!63169)

(assert (=> b!4076485 (= lt!1458712 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2020 thiss!26199 r!4213 (t!337390 rules!3870)))))

(declare-fun b!4076486 () Bool)

(declare-fun res!1664973 () Bool)

(assert (=> b!4076486 (=> (not res!1664973) (not e!2530144))))

(declare-fun isEmpty!26052 (List!43749) Bool)

(assert (=> b!4076486 (= res!1664973 (not (isEmpty!26052 p!2988)))))

(declare-fun b!4076487 () Bool)

(declare-fun res!1664966 () Bool)

(assert (=> b!4076487 (=> res!1664966 e!2530148)))

(assert (=> b!4076487 (= res!1664966 (not (= (maxPrefix!3909 thiss!26199 (t!337390 rules!3870) input!3411) lt!1458710)))))

(declare-fun b!4076488 () Bool)

(declare-fun res!1664963 () Bool)

(assert (=> b!4076488 (=> res!1664963 e!2530148)))

(declare-fun contains!8697 (List!43751 Rule!13856) Bool)

(assert (=> b!4076488 (= res!1664963 (not (contains!8697 (t!337390 rules!3870) r!4213)))))

(declare-fun b!4076489 () Bool)

(declare-fun e!2530141 () Bool)

(assert (=> b!4076489 (= e!2530143 (not e!2530141))))

(declare-fun res!1664967 () Bool)

(assert (=> b!4076489 (=> res!1664967 e!2530141)))

(declare-fun matchR!5878 (Regex!11933 List!43749) Bool)

(assert (=> b!4076489 (= res!1664967 (not (matchR!5878 (regex!7028 r!4213) p!2988)))))

(declare-fun ruleValid!2952 (LexerInterface!6617 Rule!13856) Bool)

(assert (=> b!4076489 (ruleValid!2952 thiss!26199 r!4213)))

(declare-fun lt!1458711 () Unit!63169)

(assert (=> b!4076489 (= lt!1458711 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2020 thiss!26199 r!4213 rules!3870))))

(declare-fun e!2530153 () Bool)

(assert (=> b!4076490 (= e!2530153 (and tp!1234004 tp!1233999))))

(declare-fun e!2530150 () Bool)

(assert (=> b!4076491 (= e!2530150 (and tp!1234005 tp!1233997))))

(declare-fun b!4076492 () Bool)

(declare-fun tp!1233998 () Bool)

(declare-fun e!2530145 () Bool)

(declare-fun inv!58280 (String!50040) Bool)

(declare-fun inv!58282 (TokenValueInjection!13944) Bool)

(assert (=> b!4076492 (= e!2530145 (and tp!1233998 (inv!58280 (tag!7888 (h!49047 rules!3870))) (inv!58282 (transformation!7028 (h!49047 rules!3870))) e!2530153))))

(declare-fun b!4076493 () Bool)

(declare-fun res!1664971 () Bool)

(assert (=> b!4076493 (=> (not res!1664971) (not e!2530144))))

(assert (=> b!4076493 (= res!1664971 (contains!8697 rules!3870 r!4213))))

(declare-fun b!4076494 () Bool)

(declare-fun res!1664972 () Bool)

(assert (=> b!4076494 (=> res!1664972 e!2530141)))

(get-info :version)

(assert (=> b!4076494 (= res!1664972 (or (and ((_ is Cons!43627) rules!3870) (= (h!49047 rules!3870) r!4213)) (not ((_ is Cons!43627) rules!3870)) (= (h!49047 rules!3870) r!4213)))))

(declare-fun tp!1234001 () Bool)

(declare-fun b!4076495 () Bool)

(declare-fun e!2530146 () Bool)

(assert (=> b!4076495 (= e!2530146 (and tp!1234001 (inv!58280 (tag!7888 r!4213)) (inv!58282 (transformation!7028 r!4213)) e!2530150))))

(declare-fun b!4076496 () Bool)

(declare-fun e!2530154 () Bool)

(declare-fun tp!1234000 () Bool)

(assert (=> b!4076496 (= e!2530154 (and e!2530145 tp!1234000))))

(declare-fun res!1664968 () Bool)

(assert (=> start!384948 (=> (not res!1664968) (not e!2530144))))

(assert (=> start!384948 (= res!1664968 ((_ is Lexer!6615) thiss!26199))))

(assert (=> start!384948 e!2530144))

(assert (=> start!384948 true))

(assert (=> start!384948 e!2530149))

(assert (=> start!384948 e!2530154))

(assert (=> start!384948 e!2530152))

(assert (=> start!384948 e!2530147))

(assert (=> start!384948 e!2530146))

(declare-fun b!4076497 () Bool)

(assert (=> b!4076497 (= e!2530141 e!2530148)))

(declare-fun res!1664975 () Bool)

(assert (=> b!4076497 (=> res!1664975 e!2530148)))

(declare-fun isEmpty!26053 (Option!9436) Bool)

(declare-fun maxPrefixOneRule!2903 (LexerInterface!6617 Rule!13856 List!43749) Option!9436)

(assert (=> b!4076497 (= res!1664975 (not (isEmpty!26053 (maxPrefixOneRule!2903 thiss!26199 (h!49047 rules!3870) input!3411))))))

(assert (=> b!4076497 (rulesInvariant!5960 thiss!26199 (t!337390 rules!3870))))

(declare-fun lt!1458713 () Unit!63169)

(declare-fun lemmaInvariantOnRulesThenOnTail!746 (LexerInterface!6617 Rule!13856 List!43751) Unit!63169)

(assert (=> b!4076497 (= lt!1458713 (lemmaInvariantOnRulesThenOnTail!746 thiss!26199 (h!49047 rules!3870) (t!337390 rules!3870)))))

(declare-fun b!4076498 () Bool)

(declare-fun res!1664969 () Bool)

(assert (=> b!4076498 (=> (not res!1664969) (not e!2530144))))

(assert (=> b!4076498 (= res!1664969 (not (isEmpty!26051 rules!3870)))))

(assert (= (and start!384948 res!1664968) b!4076498))

(assert (= (and b!4076498 res!1664969) b!4076480))

(assert (= (and b!4076480 res!1664974) b!4076493))

(assert (= (and b!4076493 res!1664971) b!4076479))

(assert (= (and b!4076479 res!1664964) b!4076486))

(assert (= (and b!4076486 res!1664973) b!4076484))

(assert (= (and b!4076484 res!1664965) b!4076489))

(assert (= (and b!4076489 (not res!1664967)) b!4076494))

(assert (= (and b!4076494 (not res!1664972)) b!4076497))

(assert (= (and b!4076497 (not res!1664975)) b!4076483))

(assert (= (and b!4076483 (not res!1664970)) b!4076488))

(assert (= (and b!4076488 (not res!1664963)) b!4076487))

(assert (= (and b!4076487 (not res!1664966)) b!4076485))

(assert (= (and start!384948 ((_ is Cons!43625) suffix!1518)) b!4076481))

(assert (= b!4076492 b!4076490))

(assert (= b!4076496 b!4076492))

(assert (= (and start!384948 ((_ is Cons!43627) rules!3870)) b!4076496))

(assert (= (and start!384948 ((_ is Cons!43625) p!2988)) b!4076478))

(assert (= (and start!384948 ((_ is Cons!43625) input!3411)) b!4076482))

(assert (= b!4076495 b!4076491))

(assert (= start!384948 b!4076495))

(declare-fun m!4684751 () Bool)

(assert (=> b!4076497 m!4684751))

(assert (=> b!4076497 m!4684751))

(declare-fun m!4684753 () Bool)

(assert (=> b!4076497 m!4684753))

(declare-fun m!4684755 () Bool)

(assert (=> b!4076497 m!4684755))

(declare-fun m!4684757 () Bool)

(assert (=> b!4076497 m!4684757))

(declare-fun m!4684759 () Bool)

(assert (=> b!4076498 m!4684759))

(declare-fun m!4684761 () Bool)

(assert (=> b!4076479 m!4684761))

(declare-fun m!4684763 () Bool)

(assert (=> b!4076493 m!4684763))

(declare-fun m!4684765 () Bool)

(assert (=> b!4076480 m!4684765))

(declare-fun m!4684767 () Bool)

(assert (=> b!4076489 m!4684767))

(declare-fun m!4684769 () Bool)

(assert (=> b!4076489 m!4684769))

(declare-fun m!4684771 () Bool)

(assert (=> b!4076489 m!4684771))

(declare-fun m!4684773 () Bool)

(assert (=> b!4076486 m!4684773))

(declare-fun m!4684775 () Bool)

(assert (=> b!4076495 m!4684775))

(declare-fun m!4684777 () Bool)

(assert (=> b!4076495 m!4684777))

(declare-fun m!4684779 () Bool)

(assert (=> b!4076484 m!4684779))

(declare-fun m!4684781 () Bool)

(assert (=> b!4076484 m!4684781))

(declare-fun m!4684783 () Bool)

(assert (=> b!4076484 m!4684783))

(declare-fun m!4684785 () Bool)

(assert (=> b!4076484 m!4684785))

(declare-fun m!4684787 () Bool)

(assert (=> b!4076484 m!4684787))

(declare-fun m!4684789 () Bool)

(assert (=> b!4076483 m!4684789))

(declare-fun m!4684791 () Bool)

(assert (=> b!4076492 m!4684791))

(declare-fun m!4684793 () Bool)

(assert (=> b!4076492 m!4684793))

(declare-fun m!4684795 () Bool)

(assert (=> b!4076488 m!4684795))

(declare-fun m!4684797 () Bool)

(assert (=> b!4076487 m!4684797))

(declare-fun m!4684799 () Bool)

(assert (=> b!4076485 m!4684799))

(check-sat (not b!4076489) (not b!4076484) (not b!4076482) (not b!4076493) (not b_next!114335) (not b!4076492) tp_is_empty!20869 (not b_next!114333) b_and!313429 (not b!4076485) (not b!4076498) b_and!313433 (not b!4076483) (not b!4076497) b_and!313427 (not b!4076478) (not b_next!114331) (not b!4076488) (not b_next!114329) (not b!4076487) (not b!4076496) b_and!313431 (not b!4076479) (not b!4076481) (not b!4076495) (not b!4076486) (not b!4076480))
(check-sat b_and!313429 b_and!313433 b_and!313427 (not b_next!114331) (not b_next!114335) (not b_next!114333) (not b_next!114329) b_and!313431)
