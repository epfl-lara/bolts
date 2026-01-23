; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58404 () Bool)

(assert start!58404)

(declare-fun b!610435 () Bool)

(declare-fun b_free!17389 () Bool)

(declare-fun b_next!17405 () Bool)

(assert (=> b!610435 (= b_free!17389 (not b_next!17405))))

(declare-fun tp!189077 () Bool)

(declare-fun b_and!60431 () Bool)

(assert (=> b!610435 (= tp!189077 b_and!60431)))

(declare-fun b_free!17391 () Bool)

(declare-fun b_next!17407 () Bool)

(assert (=> b!610435 (= b_free!17391 (not b_next!17407))))

(declare-fun tp!189075 () Bool)

(declare-fun b_and!60433 () Bool)

(assert (=> b!610435 (= tp!189075 b_and!60433)))

(declare-fun b!610416 () Bool)

(declare-fun b_free!17393 () Bool)

(declare-fun b_next!17409 () Bool)

(assert (=> b!610416 (= b_free!17393 (not b_next!17409))))

(declare-fun tp!189078 () Bool)

(declare-fun b_and!60435 () Bool)

(assert (=> b!610416 (= tp!189078 b_and!60435)))

(declare-fun b_free!17395 () Bool)

(declare-fun b_next!17411 () Bool)

(assert (=> b!610416 (= b_free!17395 (not b_next!17411))))

(declare-fun tp!189079 () Bool)

(declare-fun b_and!60437 () Bool)

(assert (=> b!610416 (= tp!189079 b_and!60437)))

(declare-fun b!610401 () Bool)

(declare-fun res!265131 () Bool)

(declare-fun e!369940 () Bool)

(assert (=> b!610401 (=> (not res!265131) (not e!369940))))

(declare-datatypes ((C!4032 0))(
  ( (C!4033 (val!2242 Int)) )
))
(declare-datatypes ((Regex!1555 0))(
  ( (ElementMatch!1555 (c!112881 C!4032)) (Concat!2800 (regOne!3622 Regex!1555) (regTwo!3622 Regex!1555)) (EmptyExpr!1555) (Star!1555 (reg!1884 Regex!1555)) (EmptyLang!1555) (Union!1555 (regOne!3623 Regex!1555) (regTwo!3623 Regex!1555)) )
))
(declare-datatypes ((String!7968 0))(
  ( (String!7969 (value!39639 String)) )
))
(declare-datatypes ((List!6111 0))(
  ( (Nil!6101) (Cons!6101 (h!11502 (_ BitVec 16)) (t!80892 List!6111)) )
))
(declare-datatypes ((TokenValue!1245 0))(
  ( (FloatLiteralValue!2490 (text!9160 List!6111)) (TokenValueExt!1244 (__x!4388 Int)) (Broken!6225 (value!39640 List!6111)) (Object!1254) (End!1245) (Def!1245) (Underscore!1245) (Match!1245) (Else!1245) (Error!1245) (Case!1245) (If!1245) (Extends!1245) (Abstract!1245) (Class!1245) (Val!1245) (DelimiterValue!2490 (del!1305 List!6111)) (KeywordValue!1251 (value!39641 List!6111)) (CommentValue!2490 (value!39642 List!6111)) (WhitespaceValue!2490 (value!39643 List!6111)) (IndentationValue!1245 (value!39644 List!6111)) (String!7970) (Int32!1245) (Broken!6226 (value!39645 List!6111)) (Boolean!1246) (Unit!11153) (OperatorValue!1248 (op!1305 List!6111)) (IdentifierValue!2490 (value!39646 List!6111)) (IdentifierValue!2491 (value!39647 List!6111)) (WhitespaceValue!2491 (value!39648 List!6111)) (True!2490) (False!2490) (Broken!6227 (value!39649 List!6111)) (Broken!6228 (value!39650 List!6111)) (True!2491) (RightBrace!1245) (RightBracket!1245) (Colon!1245) (Null!1245) (Comma!1245) (LeftBracket!1245) (False!2491) (LeftBrace!1245) (ImaginaryLiteralValue!1245 (text!9161 List!6111)) (StringLiteralValue!3735 (value!39651 List!6111)) (EOFValue!1245 (value!39652 List!6111)) (IdentValue!1245 (value!39653 List!6111)) (DelimiterValue!2491 (value!39654 List!6111)) (DedentValue!1245 (value!39655 List!6111)) (NewLineValue!1245 (value!39656 List!6111)) (IntegerValue!3735 (value!39657 (_ BitVec 32)) (text!9162 List!6111)) (IntegerValue!3736 (value!39658 Int) (text!9163 List!6111)) (Times!1245) (Or!1245) (Equal!1245) (Minus!1245) (Broken!6229 (value!39659 List!6111)) (And!1245) (Div!1245) (LessEqual!1245) (Mod!1245) (Concat!2801) (Not!1245) (Plus!1245) (SpaceValue!1245 (value!39660 List!6111)) (IntegerValue!3737 (value!39661 Int) (text!9164 List!6111)) (StringLiteralValue!3736 (text!9165 List!6111)) (FloatLiteralValue!2491 (text!9166 List!6111)) (BytesLiteralValue!1245 (value!39662 List!6111)) (CommentValue!2491 (value!39663 List!6111)) (StringLiteralValue!3737 (value!39664 List!6111)) (ErrorTokenValue!1245 (msg!1306 List!6111)) )
))
(declare-datatypes ((List!6112 0))(
  ( (Nil!6102) (Cons!6102 (h!11503 C!4032) (t!80893 List!6112)) )
))
(declare-datatypes ((IArray!3877 0))(
  ( (IArray!3878 (innerList!1996 List!6112)) )
))
(declare-datatypes ((Conc!1938 0))(
  ( (Node!1938 (left!4889 Conc!1938) (right!5219 Conc!1938) (csize!4106 Int) (cheight!2149 Int)) (Leaf!3056 (xs!4575 IArray!3877) (csize!4107 Int)) (Empty!1938) )
))
(declare-datatypes ((BalanceConc!3884 0))(
  ( (BalanceConc!3885 (c!112882 Conc!1938)) )
))
(declare-datatypes ((TokenValueInjection!2258 0))(
  ( (TokenValueInjection!2259 (toValue!2128 Int) (toChars!1987 Int)) )
))
(declare-datatypes ((Rule!2242 0))(
  ( (Rule!2243 (regex!1221 Regex!1555) (tag!1483 String!7968) (isSeparator!1221 Bool) (transformation!1221 TokenValueInjection!2258)) )
))
(declare-datatypes ((List!6113 0))(
  ( (Nil!6103) (Cons!6103 (h!11504 Rule!2242) (t!80894 List!6113)) )
))
(declare-fun rules!3103 () List!6113)

(declare-fun isEmpty!4405 (List!6113) Bool)

(assert (=> b!610401 (= res!265131 (not (isEmpty!4405 rules!3103)))))

(declare-fun lt!261049 () Int)

(declare-fun e!369952 () Bool)

(declare-datatypes ((Token!2178 0))(
  ( (Token!2179 (value!39665 TokenValue!1245) (rule!2011 Rule!2242) (size!4799 Int) (originalCharacters!1260 List!6112)) )
))
(declare-datatypes ((tuple2!6974 0))(
  ( (tuple2!6975 (_1!3751 Token!2178) (_2!3751 List!6112)) )
))
(declare-fun lt!261084 () tuple2!6974)

(declare-fun lt!261060 () TokenValue!1245)

(declare-fun b!610402 () Bool)

(declare-datatypes ((Option!1572 0))(
  ( (None!1571) (Some!1571 (v!16480 tuple2!6974)) )
))
(declare-fun lt!261061 () Option!1572)

(declare-fun lt!261066 () List!6112)

(declare-fun lt!261071 () List!6112)

(assert (=> b!610402 (= e!369952 (and (= (size!4799 (_1!3751 (v!16480 lt!261061))) lt!261049) (= (originalCharacters!1260 (_1!3751 (v!16480 lt!261061))) lt!261071) (= lt!261084 (tuple2!6975 (Token!2179 lt!261060 (rule!2011 (_1!3751 (v!16480 lt!261061))) lt!261049 lt!261071) lt!261066))))))

(declare-fun b!610403 () Bool)

(declare-datatypes ((Unit!11154 0))(
  ( (Unit!11155) )
))
(declare-fun e!369939 () Unit!11154)

(declare-fun Unit!11156 () Unit!11154)

(assert (=> b!610403 (= e!369939 Unit!11156)))

(declare-fun b!610404 () Bool)

(declare-fun e!369951 () Bool)

(declare-fun e!369936 () Bool)

(assert (=> b!610404 (= e!369951 e!369936)))

(declare-fun res!265134 () Bool)

(assert (=> b!610404 (=> (not res!265134) (not e!369936))))

(declare-fun suffix!1342 () List!6112)

(declare-fun token!491 () Token!2178)

(declare-fun lt!261080 () tuple2!6974)

(assert (=> b!610404 (= res!265134 (and (= (_1!3751 lt!261080) token!491) (= (_2!3751 lt!261080) suffix!1342)))))

(declare-fun lt!261076 () Option!1572)

(declare-fun get!2346 (Option!1572) tuple2!6974)

(assert (=> b!610404 (= lt!261080 (get!2346 lt!261076))))

(declare-fun b!610405 () Bool)

(declare-fun e!369958 () Unit!11154)

(declare-fun Unit!11157 () Unit!11154)

(assert (=> b!610405 (= e!369958 Unit!11157)))

(declare-fun lt!261081 () Unit!11154)

(declare-fun lt!261064 () BalanceConc!3884)

(declare-fun lemmaSemiInverse!251 (TokenValueInjection!2258 BalanceConc!3884) Unit!11154)

(assert (=> b!610405 (= lt!261081 (lemmaSemiInverse!251 (transformation!1221 (rule!2011 (_1!3751 (v!16480 lt!261061)))) lt!261064))))

(declare-datatypes ((LexerInterface!1107 0))(
  ( (LexerInterfaceExt!1104 (__x!4389 Int)) (Lexer!1105) )
))
(declare-fun thiss!22590 () LexerInterface!1107)

(declare-fun input!2705 () List!6112)

(declare-fun lt!261055 () Unit!11154)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!74 (LexerInterface!1107 List!6113 Rule!2242 List!6112 List!6112 List!6112 Rule!2242) Unit!11154)

(assert (=> b!610405 (= lt!261055 (lemmaMaxPrefixOutputsMaxPrefix!74 thiss!22590 rules!3103 (rule!2011 (_1!3751 (v!16480 lt!261061))) lt!261071 input!2705 input!2705 (rule!2011 token!491)))))

(declare-fun res!265132 () Bool)

(declare-fun matchR!658 (Regex!1555 List!6112) Bool)

(assert (=> b!610405 (= res!265132 (not (matchR!658 (regex!1221 (rule!2011 token!491)) input!2705)))))

(declare-fun e!369953 () Bool)

(assert (=> b!610405 (=> (not res!265132) (not e!369953))))

(assert (=> b!610405 e!369953))

(declare-fun res!265141 () Bool)

(assert (=> start!58404 (=> (not res!265141) (not e!369940))))

(get-info :version)

(assert (=> start!58404 (= res!265141 ((_ is Lexer!1105) thiss!22590))))

(assert (=> start!58404 e!369940))

(declare-fun e!369943 () Bool)

(assert (=> start!58404 e!369943))

(declare-fun e!369942 () Bool)

(assert (=> start!58404 e!369942))

(declare-fun e!369935 () Bool)

(declare-fun inv!7764 (Token!2178) Bool)

(assert (=> start!58404 (and (inv!7764 token!491) e!369935)))

(assert (=> start!58404 true))

(declare-fun e!369950 () Bool)

(assert (=> start!58404 e!369950))

(declare-fun b!610406 () Bool)

(declare-fun e!369947 () Bool)

(assert (=> b!610406 (= e!369940 e!369947)))

(declare-fun res!265147 () Bool)

(assert (=> b!610406 (=> (not res!265147) (not e!369947))))

(declare-fun lt!261069 () List!6112)

(assert (=> b!610406 (= res!265147 (= lt!261069 input!2705))))

(declare-fun list!2568 (BalanceConc!3884) List!6112)

(declare-fun charsOf!850 (Token!2178) BalanceConc!3884)

(assert (=> b!610406 (= lt!261069 (list!2568 (charsOf!850 token!491)))))

(declare-fun b!610407 () Bool)

(declare-fun res!265129 () Bool)

(declare-fun e!369937 () Bool)

(assert (=> b!610407 (=> res!265129 e!369937)))

(declare-fun getIndex!52 (List!6113 Rule!2242) Int)

(assert (=> b!610407 (= res!265129 (>= (getIndex!52 rules!3103 (rule!2011 (_1!3751 (v!16480 lt!261061)))) (getIndex!52 rules!3103 (rule!2011 token!491))))))

(declare-fun b!610408 () Bool)

(declare-fun e!369948 () Bool)

(declare-fun e!369959 () Bool)

(assert (=> b!610408 (= e!369948 e!369959)))

(declare-fun res!265150 () Bool)

(assert (=> b!610408 (=> (not res!265150) (not e!369959))))

(declare-fun isDefined!1383 (Option!1572) Bool)

(assert (=> b!610408 (= res!265150 (isDefined!1383 lt!261061))))

(declare-fun e!369944 () Bool)

(declare-fun tp!189084 () Bool)

(declare-fun b!610409 () Bool)

(declare-fun inv!21 (TokenValue!1245) Bool)

(assert (=> b!610409 (= e!369935 (and (inv!21 (value!39665 token!491)) e!369944 tp!189084))))

(declare-fun b!610410 () Bool)

(declare-fun res!265125 () Bool)

(assert (=> b!610410 (=> res!265125 e!369937)))

(assert (=> b!610410 (= res!265125 (not (= lt!261076 (Some!1571 (tuple2!6975 token!491 suffix!1342)))))))

(declare-fun b!610411 () Bool)

(declare-fun e!369945 () Bool)

(declare-fun tp!189082 () Bool)

(declare-fun inv!7761 (String!7968) Bool)

(declare-fun inv!7765 (TokenValueInjection!2258) Bool)

(assert (=> b!610411 (= e!369944 (and tp!189082 (inv!7761 (tag!1483 (rule!2011 token!491))) (inv!7765 (transformation!1221 (rule!2011 token!491))) e!369945))))

(declare-fun b!610412 () Bool)

(declare-fun tp_is_empty!3465 () Bool)

(declare-fun tp!189080 () Bool)

(assert (=> b!610412 (= e!369950 (and tp_is_empty!3465 tp!189080))))

(declare-fun b!610413 () Bool)

(declare-fun res!265133 () Bool)

(assert (=> b!610413 (=> (not res!265133) (not e!369940))))

(declare-fun rulesInvariant!1070 (LexerInterface!1107 List!6113) Bool)

(assert (=> b!610413 (= res!265133 (rulesInvariant!1070 thiss!22590 rules!3103))))

(declare-fun b!610414 () Bool)

(declare-fun e!369960 () Bool)

(declare-fun e!369957 () Bool)

(assert (=> b!610414 (= e!369960 e!369957)))

(declare-fun res!265144 () Bool)

(assert (=> b!610414 (=> (not res!265144) (not e!369957))))

(declare-fun lt!261054 () List!6112)

(declare-fun lt!261082 () List!6112)

(assert (=> b!610414 (= res!265144 (= lt!261054 lt!261082))))

(declare-fun ++!1709 (List!6112 List!6112) List!6112)

(assert (=> b!610414 (= lt!261054 (++!1709 lt!261069 suffix!1342))))

(declare-fun e!369961 () Bool)

(declare-fun lt!261073 () Int)

(declare-fun b!610415 () Bool)

(declare-fun lt!261051 () TokenValue!1245)

(declare-fun lt!261050 () List!6112)

(assert (=> b!610415 (= e!369961 (and (= (size!4799 token!491) lt!261073) (= (originalCharacters!1260 token!491) lt!261069) (= (tuple2!6975 token!491 suffix!1342) (tuple2!6975 (Token!2179 lt!261051 (rule!2011 token!491) lt!261073 lt!261069) lt!261050))))))

(assert (=> b!610416 (= e!369945 (and tp!189078 tp!189079))))

(declare-fun b!610417 () Bool)

(declare-fun apply!1474 (TokenValueInjection!2258 BalanceConc!3884) TokenValue!1245)

(declare-fun seqFromList!1397 (List!6112) BalanceConc!3884)

(declare-fun size!4800 (List!6112) Int)

(assert (=> b!610417 (= e!369937 (inv!7764 (Token!2179 (apply!1474 (transformation!1221 (rule!2011 token!491)) (seqFromList!1397 input!2705)) (rule!2011 token!491) (size!4800 input!2705) input!2705)))))

(declare-fun b!610418 () Bool)

(declare-fun e!369949 () Bool)

(assert (=> b!610418 (= e!369957 (not e!369949))))

(declare-fun res!265146 () Bool)

(assert (=> b!610418 (=> res!265146 e!369949)))

(declare-fun isPrefix!849 (List!6112 List!6112) Bool)

(assert (=> b!610418 (= res!265146 (not (isPrefix!849 input!2705 lt!261054)))))

(assert (=> b!610418 (isPrefix!849 lt!261069 lt!261054)))

(declare-fun lt!261072 () Unit!11154)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!694 (List!6112 List!6112) Unit!11154)

(assert (=> b!610418 (= lt!261072 (lemmaConcatTwoListThenFirstIsPrefix!694 lt!261069 suffix!1342))))

(assert (=> b!610418 (isPrefix!849 input!2705 lt!261082)))

(declare-fun lt!261074 () Unit!11154)

(assert (=> b!610418 (= lt!261074 (lemmaConcatTwoListThenFirstIsPrefix!694 input!2705 suffix!1342))))

(assert (=> b!610418 e!369952))

(declare-fun res!265124 () Bool)

(assert (=> b!610418 (=> (not res!265124) (not e!369952))))

(assert (=> b!610418 (= res!265124 (= (value!39665 (_1!3751 (v!16480 lt!261061))) lt!261060))))

(assert (=> b!610418 (= lt!261060 (apply!1474 (transformation!1221 (rule!2011 (_1!3751 (v!16480 lt!261061)))) lt!261064))))

(assert (=> b!610418 (= lt!261064 (seqFromList!1397 lt!261071))))

(declare-fun lt!261085 () Unit!11154)

(declare-fun lemmaInv!329 (TokenValueInjection!2258) Unit!11154)

(assert (=> b!610418 (= lt!261085 (lemmaInv!329 (transformation!1221 (rule!2011 token!491))))))

(declare-fun lt!261083 () Unit!11154)

(assert (=> b!610418 (= lt!261083 (lemmaInv!329 (transformation!1221 (rule!2011 (_1!3751 (v!16480 lt!261061))))))))

(declare-fun ruleValid!419 (LexerInterface!1107 Rule!2242) Bool)

(assert (=> b!610418 (ruleValid!419 thiss!22590 (rule!2011 token!491))))

(declare-fun lt!261058 () Unit!11154)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!266 (LexerInterface!1107 Rule!2242 List!6113) Unit!11154)

(assert (=> b!610418 (= lt!261058 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!266 thiss!22590 (rule!2011 token!491) rules!3103))))

(assert (=> b!610418 (ruleValid!419 thiss!22590 (rule!2011 (_1!3751 (v!16480 lt!261061))))))

(declare-fun lt!261067 () Unit!11154)

(assert (=> b!610418 (= lt!261067 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!266 thiss!22590 (rule!2011 (_1!3751 (v!16480 lt!261061))) rules!3103))))

(assert (=> b!610418 (isPrefix!849 input!2705 input!2705)))

(declare-fun lt!261078 () Unit!11154)

(declare-fun lemmaIsPrefixRefl!585 (List!6112 List!6112) Unit!11154)

(assert (=> b!610418 (= lt!261078 (lemmaIsPrefixRefl!585 input!2705 input!2705))))

(assert (=> b!610418 (= (_2!3751 (v!16480 lt!261061)) lt!261066)))

(declare-fun lt!261059 () Unit!11154)

(declare-fun lemmaSamePrefixThenSameSuffix!562 (List!6112 List!6112 List!6112 List!6112 List!6112) Unit!11154)

(assert (=> b!610418 (= lt!261059 (lemmaSamePrefixThenSameSuffix!562 lt!261071 (_2!3751 (v!16480 lt!261061)) lt!261071 lt!261066 input!2705))))

(declare-fun getSuffix!366 (List!6112 List!6112) List!6112)

(assert (=> b!610418 (= lt!261066 (getSuffix!366 input!2705 lt!261071))))

(declare-fun lt!261052 () List!6112)

(assert (=> b!610418 (isPrefix!849 lt!261071 lt!261052)))

(assert (=> b!610418 (= lt!261052 (++!1709 lt!261071 (_2!3751 (v!16480 lt!261061))))))

(declare-fun lt!261075 () Unit!11154)

(assert (=> b!610418 (= lt!261075 (lemmaConcatTwoListThenFirstIsPrefix!694 lt!261071 (_2!3751 (v!16480 lt!261061))))))

(declare-fun lt!261053 () Unit!11154)

(declare-fun lemmaCharactersSize!280 (Token!2178) Unit!11154)

(assert (=> b!610418 (= lt!261053 (lemmaCharactersSize!280 token!491))))

(declare-fun lt!261057 () Unit!11154)

(assert (=> b!610418 (= lt!261057 (lemmaCharactersSize!280 (_1!3751 (v!16480 lt!261061))))))

(declare-fun lt!261056 () Unit!11154)

(assert (=> b!610418 (= lt!261056 e!369939)))

(declare-fun c!112880 () Bool)

(assert (=> b!610418 (= c!112880 (> lt!261049 lt!261073))))

(assert (=> b!610418 (= lt!261073 (size!4800 lt!261069))))

(assert (=> b!610418 (= lt!261049 (size!4800 lt!261071))))

(assert (=> b!610418 (= lt!261071 (list!2568 (charsOf!850 (_1!3751 (v!16480 lt!261061)))))))

(assert (=> b!610418 (= lt!261061 (Some!1571 lt!261084))))

(assert (=> b!610418 (= lt!261084 (tuple2!6975 (_1!3751 (v!16480 lt!261061)) (_2!3751 (v!16480 lt!261061))))))

(declare-fun lt!261086 () Unit!11154)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!294 (List!6112 List!6112 List!6112 List!6112) Unit!11154)

(assert (=> b!610418 (= lt!261086 (lemmaConcatSameAndSameSizesThenSameLists!294 lt!261069 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!610419 () Bool)

(declare-fun res!265135 () Bool)

(assert (=> b!610419 (=> (not res!265135) (not e!369952))))

(assert (=> b!610419 (= res!265135 (= (size!4799 (_1!3751 (v!16480 lt!261061))) (size!4800 (originalCharacters!1260 (_1!3751 (v!16480 lt!261061))))))))

(declare-fun b!610420 () Bool)

(declare-fun res!265142 () Bool)

(assert (=> b!610420 (=> res!265142 e!369937)))

(declare-fun isEmpty!4406 (List!6112) Bool)

(assert (=> b!610420 (= res!265142 (not (isEmpty!4406 (_2!3751 (v!16480 lt!261061)))))))

(declare-fun b!610421 () Bool)

(assert (=> b!610421 (= e!369953 false)))

(declare-fun b!610422 () Bool)

(assert (=> b!610422 (= e!369959 (= lt!261066 (_2!3751 (v!16480 lt!261061))))))

(declare-fun b!610423 () Bool)

(assert (=> b!610423 (= e!369947 e!369951)))

(declare-fun res!265148 () Bool)

(assert (=> b!610423 (=> (not res!265148) (not e!369951))))

(assert (=> b!610423 (= res!265148 (isDefined!1383 lt!261076))))

(declare-fun maxPrefix!805 (LexerInterface!1107 List!6113 List!6112) Option!1572)

(assert (=> b!610423 (= lt!261076 (maxPrefix!805 thiss!22590 rules!3103 lt!261082))))

(assert (=> b!610423 (= lt!261082 (++!1709 input!2705 suffix!1342))))

(declare-fun b!610424 () Bool)

(declare-fun res!265140 () Bool)

(assert (=> b!610424 (=> res!265140 e!369937)))

(declare-fun contains!1437 (List!6113 Rule!2242) Bool)

(assert (=> b!610424 (= res!265140 (not (contains!1437 rules!3103 (rule!2011 token!491))))))

(declare-fun b!610425 () Bool)

(declare-fun res!265139 () Bool)

(assert (=> b!610425 (=> (not res!265139) (not e!369961))))

(assert (=> b!610425 (= res!265139 (= (size!4799 token!491) (size!4800 (originalCharacters!1260 token!491))))))

(declare-fun b!610426 () Bool)

(declare-fun Unit!11158 () Unit!11154)

(assert (=> b!610426 (= e!369939 Unit!11158)))

(assert (=> b!610426 false))

(declare-fun b!610427 () Bool)

(declare-fun res!265136 () Bool)

(assert (=> b!610427 (=> (not res!265136) (not e!369940))))

(assert (=> b!610427 (= res!265136 (not (isEmpty!4406 input!2705)))))

(declare-fun b!610428 () Bool)

(declare-fun tp!189081 () Bool)

(assert (=> b!610428 (= e!369943 (and tp_is_empty!3465 tp!189081))))

(declare-fun b!610429 () Bool)

(declare-fun res!265137 () Bool)

(assert (=> b!610429 (=> res!265137 e!369937)))

(assert (=> b!610429 (= res!265137 (or (not (= lt!261071 lt!261069)) (not (= (originalCharacters!1260 (_1!3751 (v!16480 lt!261061))) (originalCharacters!1260 token!491)))))))

(declare-fun e!369938 () Bool)

(declare-fun tp!189083 () Bool)

(declare-fun e!369946 () Bool)

(declare-fun b!610430 () Bool)

(assert (=> b!610430 (= e!369938 (and tp!189083 (inv!7761 (tag!1483 (h!11504 rules!3103))) (inv!7765 (transformation!1221 (h!11504 rules!3103))) e!369946))))

(declare-fun b!610431 () Bool)

(declare-fun e!369954 () Bool)

(assert (=> b!610431 (= e!369954 e!369948)))

(declare-fun res!265128 () Bool)

(assert (=> b!610431 (=> res!265128 e!369948)))

(assert (=> b!610431 (= res!265128 (>= lt!261049 lt!261073))))

(declare-fun b!610432 () Bool)

(assert (=> b!610432 (= e!369936 e!369960)))

(declare-fun res!265130 () Bool)

(assert (=> b!610432 (=> (not res!265130) (not e!369960))))

(assert (=> b!610432 (= res!265130 ((_ is Some!1571) lt!261061))))

(assert (=> b!610432 (= lt!261061 (maxPrefix!805 thiss!22590 rules!3103 input!2705))))

(declare-fun b!610433 () Bool)

(declare-fun tp!189076 () Bool)

(assert (=> b!610433 (= e!369942 (and e!369938 tp!189076))))

(declare-fun b!610434 () Bool)

(declare-fun res!265143 () Bool)

(assert (=> b!610434 (=> (not res!265143) (not e!369959))))

(assert (=> b!610434 (= res!265143 (= (_1!3751 (get!2346 lt!261061)) (_1!3751 (v!16480 lt!261061))))))

(assert (=> b!610435 (= e!369946 (and tp!189077 tp!189075))))

(declare-fun b!610436 () Bool)

(declare-fun Unit!11159 () Unit!11154)

(assert (=> b!610436 (= e!369958 Unit!11159)))

(declare-fun b!610437 () Bool)

(assert (=> b!610437 (= e!369949 e!369937)))

(declare-fun res!265127 () Bool)

(assert (=> b!610437 (=> res!265127 e!369937)))

(assert (=> b!610437 (= res!265127 (or (not (= lt!261049 lt!261073)) (not (= lt!261052 input!2705)) (not (= lt!261052 lt!261069))))))

(declare-fun lt!261062 () Unit!11154)

(declare-fun lt!261077 () BalanceConc!3884)

(assert (=> b!610437 (= lt!261062 (lemmaSemiInverse!251 (transformation!1221 (rule!2011 token!491)) lt!261077))))

(declare-fun lt!261070 () Unit!11154)

(assert (=> b!610437 (= lt!261070 (lemmaSemiInverse!251 (transformation!1221 (rule!2011 (_1!3751 (v!16480 lt!261061)))) lt!261064))))

(declare-fun lt!261068 () Unit!11154)

(assert (=> b!610437 (= lt!261068 e!369958)))

(declare-fun c!112879 () Bool)

(assert (=> b!610437 (= c!112879 (< lt!261049 lt!261073))))

(assert (=> b!610437 e!369954))

(declare-fun res!265149 () Bool)

(assert (=> b!610437 (=> (not res!265149) (not e!369954))))

(declare-fun maxPrefixOneRule!468 (LexerInterface!1107 Rule!2242 List!6112) Option!1572)

(assert (=> b!610437 (= res!265149 (= (maxPrefixOneRule!468 thiss!22590 (rule!2011 token!491) lt!261082) (Some!1571 (tuple2!6975 (Token!2179 lt!261051 (rule!2011 token!491) lt!261073 lt!261069) suffix!1342))))))

(declare-fun lt!261079 () Unit!11154)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!174 (LexerInterface!1107 List!6113 List!6112 List!6112 List!6112 Rule!2242) Unit!11154)

(assert (=> b!610437 (= lt!261079 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!174 thiss!22590 rules!3103 lt!261069 lt!261082 suffix!1342 (rule!2011 token!491)))))

(assert (=> b!610437 (= (maxPrefixOneRule!468 thiss!22590 (rule!2011 (_1!3751 (v!16480 lt!261061))) input!2705) (Some!1571 (tuple2!6975 (Token!2179 lt!261060 (rule!2011 (_1!3751 (v!16480 lt!261061))) lt!261049 lt!261071) (_2!3751 (v!16480 lt!261061)))))))

(declare-fun lt!261065 () Unit!11154)

(assert (=> b!610437 (= lt!261065 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!174 thiss!22590 rules!3103 lt!261071 input!2705 (_2!3751 (v!16480 lt!261061)) (rule!2011 (_1!3751 (v!16480 lt!261061)))))))

(assert (=> b!610437 e!369961))

(declare-fun res!265145 () Bool)

(assert (=> b!610437 (=> (not res!265145) (not e!369961))))

(assert (=> b!610437 (= res!265145 (= (value!39665 token!491) lt!261051))))

(assert (=> b!610437 (= lt!261051 (apply!1474 (transformation!1221 (rule!2011 token!491)) lt!261077))))

(assert (=> b!610437 (= lt!261077 (seqFromList!1397 lt!261069))))

(assert (=> b!610437 (= suffix!1342 lt!261050)))

(declare-fun lt!261063 () Unit!11154)

(assert (=> b!610437 (= lt!261063 (lemmaSamePrefixThenSameSuffix!562 lt!261069 suffix!1342 lt!261069 lt!261050 lt!261082))))

(assert (=> b!610437 (= lt!261050 (getSuffix!366 lt!261082 lt!261069))))

(declare-fun b!610438 () Bool)

(declare-fun res!265138 () Bool)

(assert (=> b!610438 (=> res!265138 e!369937)))

(assert (=> b!610438 (= res!265138 (= (rule!2011 (_1!3751 (v!16480 lt!261061))) (rule!2011 token!491)))))

(declare-fun b!610439 () Bool)

(declare-fun res!265126 () Bool)

(assert (=> b!610439 (=> res!265126 e!369937)))

(assert (=> b!610439 (= res!265126 (not (contains!1437 rules!3103 (rule!2011 (_1!3751 (v!16480 lt!261061))))))))

(assert (= (and start!58404 res!265141) b!610401))

(assert (= (and b!610401 res!265131) b!610413))

(assert (= (and b!610413 res!265133) b!610427))

(assert (= (and b!610427 res!265136) b!610406))

(assert (= (and b!610406 res!265147) b!610423))

(assert (= (and b!610423 res!265148) b!610404))

(assert (= (and b!610404 res!265134) b!610432))

(assert (= (and b!610432 res!265130) b!610414))

(assert (= (and b!610414 res!265144) b!610418))

(assert (= (and b!610418 c!112880) b!610426))

(assert (= (and b!610418 (not c!112880)) b!610403))

(assert (= (and b!610418 res!265124) b!610419))

(assert (= (and b!610419 res!265135) b!610402))

(assert (= (and b!610418 (not res!265146)) b!610437))

(assert (= (and b!610437 res!265145) b!610425))

(assert (= (and b!610425 res!265139) b!610415))

(assert (= (and b!610437 res!265149) b!610431))

(assert (= (and b!610431 (not res!265128)) b!610408))

(assert (= (and b!610408 res!265150) b!610434))

(assert (= (and b!610434 res!265143) b!610422))

(assert (= (and b!610437 c!112879) b!610405))

(assert (= (and b!610437 (not c!112879)) b!610436))

(assert (= (and b!610405 res!265132) b!610421))

(assert (= (and b!610437 (not res!265127)) b!610420))

(assert (= (and b!610420 (not res!265142)) b!610429))

(assert (= (and b!610429 (not res!265137)) b!610439))

(assert (= (and b!610439 (not res!265126)) b!610424))

(assert (= (and b!610424 (not res!265140)) b!610438))

(assert (= (and b!610438 (not res!265138)) b!610407))

(assert (= (and b!610407 (not res!265129)) b!610410))

(assert (= (and b!610410 (not res!265125)) b!610417))

(assert (= (and start!58404 ((_ is Cons!6102) suffix!1342)) b!610428))

(assert (= b!610430 b!610435))

(assert (= b!610433 b!610430))

(assert (= (and start!58404 ((_ is Cons!6103) rules!3103)) b!610433))

(assert (= b!610411 b!610416))

(assert (= b!610409 b!610411))

(assert (= start!58404 b!610409))

(assert (= (and start!58404 ((_ is Cons!6102) input!2705)) b!610412))

(declare-fun m!878003 () Bool)

(assert (=> b!610413 m!878003))

(declare-fun m!878005 () Bool)

(assert (=> b!610417 m!878005))

(assert (=> b!610417 m!878005))

(declare-fun m!878007 () Bool)

(assert (=> b!610417 m!878007))

(declare-fun m!878009 () Bool)

(assert (=> b!610417 m!878009))

(declare-fun m!878011 () Bool)

(assert (=> b!610417 m!878011))

(declare-fun m!878013 () Bool)

(assert (=> b!610439 m!878013))

(declare-fun m!878015 () Bool)

(assert (=> b!610420 m!878015))

(declare-fun m!878017 () Bool)

(assert (=> b!610418 m!878017))

(declare-fun m!878019 () Bool)

(assert (=> b!610418 m!878019))

(declare-fun m!878021 () Bool)

(assert (=> b!610418 m!878021))

(declare-fun m!878023 () Bool)

(assert (=> b!610418 m!878023))

(declare-fun m!878025 () Bool)

(assert (=> b!610418 m!878025))

(declare-fun m!878027 () Bool)

(assert (=> b!610418 m!878027))

(assert (=> b!610418 m!878023))

(declare-fun m!878029 () Bool)

(assert (=> b!610418 m!878029))

(declare-fun m!878031 () Bool)

(assert (=> b!610418 m!878031))

(declare-fun m!878033 () Bool)

(assert (=> b!610418 m!878033))

(declare-fun m!878035 () Bool)

(assert (=> b!610418 m!878035))

(declare-fun m!878037 () Bool)

(assert (=> b!610418 m!878037))

(declare-fun m!878039 () Bool)

(assert (=> b!610418 m!878039))

(declare-fun m!878041 () Bool)

(assert (=> b!610418 m!878041))

(declare-fun m!878043 () Bool)

(assert (=> b!610418 m!878043))

(declare-fun m!878045 () Bool)

(assert (=> b!610418 m!878045))

(declare-fun m!878047 () Bool)

(assert (=> b!610418 m!878047))

(declare-fun m!878049 () Bool)

(assert (=> b!610418 m!878049))

(declare-fun m!878051 () Bool)

(assert (=> b!610418 m!878051))

(declare-fun m!878053 () Bool)

(assert (=> b!610418 m!878053))

(declare-fun m!878055 () Bool)

(assert (=> b!610418 m!878055))

(declare-fun m!878057 () Bool)

(assert (=> b!610418 m!878057))

(declare-fun m!878059 () Bool)

(assert (=> b!610418 m!878059))

(declare-fun m!878061 () Bool)

(assert (=> b!610418 m!878061))

(declare-fun m!878063 () Bool)

(assert (=> b!610418 m!878063))

(declare-fun m!878065 () Bool)

(assert (=> b!610418 m!878065))

(declare-fun m!878067 () Bool)

(assert (=> b!610418 m!878067))

(declare-fun m!878069 () Bool)

(assert (=> b!610418 m!878069))

(declare-fun m!878071 () Bool)

(assert (=> b!610430 m!878071))

(declare-fun m!878073 () Bool)

(assert (=> b!610430 m!878073))

(declare-fun m!878075 () Bool)

(assert (=> b!610432 m!878075))

(declare-fun m!878077 () Bool)

(assert (=> b!610414 m!878077))

(declare-fun m!878079 () Bool)

(assert (=> b!610437 m!878079))

(declare-fun m!878081 () Bool)

(assert (=> b!610437 m!878081))

(declare-fun m!878083 () Bool)

(assert (=> b!610437 m!878083))

(declare-fun m!878085 () Bool)

(assert (=> b!610437 m!878085))

(declare-fun m!878087 () Bool)

(assert (=> b!610437 m!878087))

(declare-fun m!878089 () Bool)

(assert (=> b!610437 m!878089))

(declare-fun m!878091 () Bool)

(assert (=> b!610437 m!878091))

(declare-fun m!878093 () Bool)

(assert (=> b!610437 m!878093))

(declare-fun m!878095 () Bool)

(assert (=> b!610437 m!878095))

(declare-fun m!878097 () Bool)

(assert (=> b!610437 m!878097))

(declare-fun m!878099 () Bool)

(assert (=> b!610406 m!878099))

(assert (=> b!610406 m!878099))

(declare-fun m!878101 () Bool)

(assert (=> b!610406 m!878101))

(declare-fun m!878103 () Bool)

(assert (=> b!610424 m!878103))

(declare-fun m!878105 () Bool)

(assert (=> b!610434 m!878105))

(declare-fun m!878107 () Bool)

(assert (=> b!610407 m!878107))

(declare-fun m!878109 () Bool)

(assert (=> b!610407 m!878109))

(declare-fun m!878111 () Bool)

(assert (=> b!610423 m!878111))

(declare-fun m!878113 () Bool)

(assert (=> b!610423 m!878113))

(declare-fun m!878115 () Bool)

(assert (=> b!610423 m!878115))

(declare-fun m!878117 () Bool)

(assert (=> b!610427 m!878117))

(declare-fun m!878119 () Bool)

(assert (=> b!610411 m!878119))

(declare-fun m!878121 () Bool)

(assert (=> b!610411 m!878121))

(declare-fun m!878123 () Bool)

(assert (=> b!610425 m!878123))

(declare-fun m!878125 () Bool)

(assert (=> b!610409 m!878125))

(declare-fun m!878127 () Bool)

(assert (=> b!610419 m!878127))

(assert (=> b!610405 m!878093))

(declare-fun m!878129 () Bool)

(assert (=> b!610405 m!878129))

(declare-fun m!878131 () Bool)

(assert (=> b!610405 m!878131))

(declare-fun m!878133 () Bool)

(assert (=> b!610408 m!878133))

(declare-fun m!878135 () Bool)

(assert (=> b!610404 m!878135))

(declare-fun m!878137 () Bool)

(assert (=> start!58404 m!878137))

(declare-fun m!878139 () Bool)

(assert (=> b!610401 m!878139))

(check-sat (not b!610413) (not b!610401) (not b_next!17411) b_and!60437 (not b!610405) (not b!610406) tp_is_empty!3465 (not start!58404) b_and!60433 (not b!610411) (not b_next!17407) (not b!610423) (not b!610434) (not b!610409) (not b!610412) (not b!610424) (not b!610425) (not b!610432) (not b!610418) (not b!610437) (not b!610404) (not b!610414) b_and!60431 (not b!610417) (not b!610427) (not b!610428) (not b!610433) (not b_next!17405) (not b!610439) (not b_next!17409) (not b!610408) b_and!60435 (not b!610407) (not b!610420) (not b!610419) (not b!610430))
(check-sat (not b_next!17411) b_and!60437 b_and!60431 (not b_next!17405) (not b_next!17409) b_and!60433 (not b_next!17407) b_and!60435)
