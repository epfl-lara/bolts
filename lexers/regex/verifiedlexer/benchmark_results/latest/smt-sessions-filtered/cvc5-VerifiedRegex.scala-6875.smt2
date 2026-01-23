; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!362054 () Bool)

(assert start!362054)

(declare-fun b!3861071 () Bool)

(declare-fun b_free!103825 () Bool)

(declare-fun b_next!104529 () Bool)

(assert (=> b!3861071 (= b_free!103825 (not b_next!104529))))

(declare-fun tp!1170458 () Bool)

(declare-fun b_and!289047 () Bool)

(assert (=> b!3861071 (= tp!1170458 b_and!289047)))

(declare-fun b_free!103827 () Bool)

(declare-fun b_next!104531 () Bool)

(assert (=> b!3861071 (= b_free!103827 (not b_next!104531))))

(declare-fun tp!1170463 () Bool)

(declare-fun b_and!289049 () Bool)

(assert (=> b!3861071 (= tp!1170463 b_and!289049)))

(declare-fun b!3861061 () Bool)

(declare-fun b_free!103829 () Bool)

(declare-fun b_next!104533 () Bool)

(assert (=> b!3861061 (= b_free!103829 (not b_next!104533))))

(declare-fun tp!1170462 () Bool)

(declare-fun b_and!289051 () Bool)

(assert (=> b!3861061 (= tp!1170462 b_and!289051)))

(declare-fun b_free!103831 () Bool)

(declare-fun b_next!104535 () Bool)

(assert (=> b!3861061 (= b_free!103831 (not b_next!104535))))

(declare-fun tp!1170455 () Bool)

(declare-fun b_and!289053 () Bool)

(assert (=> b!3861061 (= tp!1170455 b_and!289053)))

(declare-fun b!3861077 () Bool)

(declare-fun b_free!103833 () Bool)

(declare-fun b_next!104537 () Bool)

(assert (=> b!3861077 (= b_free!103833 (not b_next!104537))))

(declare-fun tp!1170453 () Bool)

(declare-fun b_and!289055 () Bool)

(assert (=> b!3861077 (= tp!1170453 b_and!289055)))

(declare-fun b_free!103835 () Bool)

(declare-fun b_next!104539 () Bool)

(assert (=> b!3861077 (= b_free!103835 (not b_next!104539))))

(declare-fun tp!1170459 () Bool)

(declare-fun b_and!289057 () Bool)

(assert (=> b!3861077 (= tp!1170459 b_and!289057)))

(declare-fun tp!1170464 () Bool)

(declare-fun b!3861043 () Bool)

(declare-fun e!2387019 () Bool)

(declare-datatypes ((List!41064 0))(
  ( (Nil!40940) (Cons!40940 (h!46360 (_ BitVec 16)) (t!313459 List!41064)) )
))
(declare-datatypes ((TokenValue!6567 0))(
  ( (FloatLiteralValue!13134 (text!46414 List!41064)) (TokenValueExt!6566 (__x!25351 Int)) (Broken!32835 (value!201214 List!41064)) (Object!6690) (End!6567) (Def!6567) (Underscore!6567) (Match!6567) (Else!6567) (Error!6567) (Case!6567) (If!6567) (Extends!6567) (Abstract!6567) (Class!6567) (Val!6567) (DelimiterValue!13134 (del!6627 List!41064)) (KeywordValue!6573 (value!201215 List!41064)) (CommentValue!13134 (value!201216 List!41064)) (WhitespaceValue!13134 (value!201217 List!41064)) (IndentationValue!6567 (value!201218 List!41064)) (String!46554) (Int32!6567) (Broken!32836 (value!201219 List!41064)) (Boolean!6568) (Unit!58596) (OperatorValue!6570 (op!6627 List!41064)) (IdentifierValue!13134 (value!201220 List!41064)) (IdentifierValue!13135 (value!201221 List!41064)) (WhitespaceValue!13135 (value!201222 List!41064)) (True!13134) (False!13134) (Broken!32837 (value!201223 List!41064)) (Broken!32838 (value!201224 List!41064)) (True!13135) (RightBrace!6567) (RightBracket!6567) (Colon!6567) (Null!6567) (Comma!6567) (LeftBracket!6567) (False!13135) (LeftBrace!6567) (ImaginaryLiteralValue!6567 (text!46415 List!41064)) (StringLiteralValue!19701 (value!201225 List!41064)) (EOFValue!6567 (value!201226 List!41064)) (IdentValue!6567 (value!201227 List!41064)) (DelimiterValue!13135 (value!201228 List!41064)) (DedentValue!6567 (value!201229 List!41064)) (NewLineValue!6567 (value!201230 List!41064)) (IntegerValue!19701 (value!201231 (_ BitVec 32)) (text!46416 List!41064)) (IntegerValue!19702 (value!201232 Int) (text!46417 List!41064)) (Times!6567) (Or!6567) (Equal!6567) (Minus!6567) (Broken!32839 (value!201233 List!41064)) (And!6567) (Div!6567) (LessEqual!6567) (Mod!6567) (Concat!17809) (Not!6567) (Plus!6567) (SpaceValue!6567 (value!201234 List!41064)) (IntegerValue!19703 (value!201235 Int) (text!46418 List!41064)) (StringLiteralValue!19702 (text!46419 List!41064)) (FloatLiteralValue!13135 (text!46420 List!41064)) (BytesLiteralValue!6567 (value!201236 List!41064)) (CommentValue!13135 (value!201237 List!41064)) (StringLiteralValue!19703 (value!201238 List!41064)) (ErrorTokenValue!6567 (msg!6628 List!41064)) )
))
(declare-datatypes ((C!22670 0))(
  ( (C!22671 (val!13429 Int)) )
))
(declare-datatypes ((Regex!11242 0))(
  ( (ElementMatch!11242 (c!672197 C!22670)) (Concat!17810 (regOne!22996 Regex!11242) (regTwo!22996 Regex!11242)) (EmptyExpr!11242) (Star!11242 (reg!11571 Regex!11242)) (EmptyLang!11242) (Union!11242 (regOne!22997 Regex!11242) (regTwo!22997 Regex!11242)) )
))
(declare-datatypes ((String!46555 0))(
  ( (String!46556 (value!201239 String)) )
))
(declare-datatypes ((List!41065 0))(
  ( (Nil!40941) (Cons!40941 (h!46361 C!22670) (t!313460 List!41065)) )
))
(declare-datatypes ((IArray!25101 0))(
  ( (IArray!25102 (innerList!12608 List!41065)) )
))
(declare-datatypes ((Conc!12548 0))(
  ( (Node!12548 (left!31531 Conc!12548) (right!31861 Conc!12548) (csize!25326 Int) (cheight!12759 Int)) (Leaf!19424 (xs!15854 IArray!25101) (csize!25327 Int)) (Empty!12548) )
))
(declare-datatypes ((BalanceConc!24690 0))(
  ( (BalanceConc!24691 (c!672198 Conc!12548)) )
))
(declare-datatypes ((TokenValueInjection!12562 0))(
  ( (TokenValueInjection!12563 (toValue!8765 Int) (toChars!8624 Int)) )
))
(declare-datatypes ((Rule!12474 0))(
  ( (Rule!12475 (regex!6337 Regex!11242) (tag!7197 String!46555) (isSeparator!6337 Bool) (transformation!6337 TokenValueInjection!12562)) )
))
(declare-datatypes ((Token!11812 0))(
  ( (Token!11813 (value!201240 TokenValue!6567) (rule!9207 Rule!12474) (size!30791 Int) (originalCharacters!6937 List!41065)) )
))
(declare-datatypes ((List!41066 0))(
  ( (Nil!40942) (Cons!40942 (h!46362 Token!11812) (t!313461 List!41066)) )
))
(declare-fun prefixTokens!80 () List!41066)

(declare-fun e!2387014 () Bool)

(declare-fun inv!55105 (Token!11812) Bool)

(assert (=> b!3861043 (= e!2387019 (and (inv!55105 (h!46362 prefixTokens!80)) e!2387014 tp!1170464))))

(declare-fun e!2387021 () Bool)

(declare-fun b!3861044 () Bool)

(declare-fun tp!1170465 () Bool)

(declare-fun inv!21 (TokenValue!6567) Bool)

(assert (=> b!3861044 (= e!2387014 (and (inv!21 (value!201240 (h!46362 prefixTokens!80))) e!2387021 tp!1170465))))

(declare-fun tp!1170451 () Bool)

(declare-fun b!3861045 () Bool)

(declare-fun suffixTokens!72 () List!41066)

(declare-fun e!2387024 () Bool)

(declare-fun e!2387020 () Bool)

(declare-fun inv!55102 (String!46555) Bool)

(declare-fun inv!55106 (TokenValueInjection!12562) Bool)

(assert (=> b!3861045 (= e!2387020 (and tp!1170451 (inv!55102 (tag!7197 (rule!9207 (h!46362 suffixTokens!72)))) (inv!55106 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) e!2387024))))

(declare-fun b!3861046 () Bool)

(declare-fun e!2387006 () Bool)

(assert (=> b!3861046 (= e!2387006 (not (= prefixTokens!80 Nil!40942)))))

(declare-fun b!3861047 () Bool)

(declare-fun e!2387023 () Bool)

(declare-fun e!2387013 () Bool)

(assert (=> b!3861047 (= e!2387023 e!2387013)))

(declare-fun res!1563388 () Bool)

(assert (=> b!3861047 (=> (not res!1563388) (not e!2387013))))

(declare-fun lt!1341628 () List!41066)

(declare-fun suffixResult!91 () List!41065)

(declare-datatypes ((tuple2!40146 0))(
  ( (tuple2!40147 (_1!23207 List!41066) (_2!23207 List!41065)) )
))
(declare-fun lt!1341626 () tuple2!40146)

(assert (=> b!3861047 (= res!1563388 (= lt!1341626 (tuple2!40147 lt!1341628 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5926 0))(
  ( (LexerInterfaceExt!5923 (__x!25352 Int)) (Lexer!5924) )
))
(declare-fun thiss!20629 () LexerInterface!5926)

(declare-fun lt!1341630 () List!41065)

(declare-datatypes ((List!41067 0))(
  ( (Nil!40943) (Cons!40943 (h!46363 Rule!12474) (t!313462 List!41067)) )
))
(declare-fun rules!2768 () List!41067)

(declare-fun lexList!1694 (LexerInterface!5926 List!41067 List!41065) tuple2!40146)

(assert (=> b!3861047 (= lt!1341626 (lexList!1694 thiss!20629 rules!2768 lt!1341630))))

(declare-fun ++!10431 (List!41066 List!41066) List!41066)

(assert (=> b!3861047 (= lt!1341628 (++!10431 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41065)

(declare-fun suffix!1176 () List!41065)

(declare-fun ++!10432 (List!41065 List!41065) List!41065)

(assert (=> b!3861047 (= lt!1341630 (++!10432 prefix!426 suffix!1176))))

(declare-fun b!3861048 () Bool)

(declare-fun e!2387034 () Bool)

(declare-datatypes ((tuple2!40148 0))(
  ( (tuple2!40149 (_1!23208 Token!11812) (_2!23208 List!41065)) )
))
(declare-datatypes ((Option!8755 0))(
  ( (None!8754) (Some!8754 (v!39052 tuple2!40148)) )
))
(declare-fun lt!1341632 () Option!8755)

(declare-fun size!30792 (List!41065) Int)

(assert (=> b!3861048 (= e!2387034 (= (size!30791 (_1!23208 (v!39052 lt!1341632))) (size!30792 (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632))))))))

(declare-fun b!3861050 () Bool)

(declare-fun e!2387032 () Bool)

(declare-fun e!2387012 () Bool)

(assert (=> b!3861050 (= e!2387032 e!2387012)))

(declare-fun res!1563402 () Bool)

(assert (=> b!3861050 (=> res!1563402 e!2387012)))

(declare-fun lt!1341645 () List!41065)

(declare-fun matchR!5389 (Regex!11242 List!41065) Bool)

(assert (=> b!3861050 (= res!1563402 (not (matchR!5389 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) lt!1341645)))))

(declare-fun lt!1341643 () TokenValue!6567)

(declare-fun lt!1341640 () Int)

(declare-fun maxPrefixOneRule!2312 (LexerInterface!5926 Rule!12474 List!41065) Option!8755)

(assert (=> b!3861050 (= (maxPrefixOneRule!2312 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) lt!1341630) (Some!8754 (tuple2!40149 (Token!11813 lt!1341643 (rule!9207 (_1!23208 (v!39052 lt!1341632))) lt!1341640 lt!1341645) (_2!23208 (v!39052 lt!1341632)))))))

(declare-datatypes ((Unit!58597 0))(
  ( (Unit!58598) )
))
(declare-fun lt!1341639 () Unit!58597)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1210 (LexerInterface!5926 List!41067 List!41065 List!41065 List!41065 Rule!12474) Unit!58597)

(assert (=> b!3861050 (= lt!1341639 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1210 thiss!20629 rules!2768 lt!1341645 lt!1341630 (_2!23208 (v!39052 lt!1341632)) (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))

(declare-fun b!3861051 () Bool)

(declare-fun e!2387010 () Bool)

(declare-fun e!2387025 () Bool)

(assert (=> b!3861051 (= e!2387010 e!2387025)))

(declare-fun res!1563407 () Bool)

(assert (=> b!3861051 (=> res!1563407 e!2387025)))

(declare-fun lt!1341631 () Int)

(declare-fun lt!1341642 () Int)

(assert (=> b!3861051 (= res!1563407 (not (= (+ lt!1341640 lt!1341642) lt!1341631)))))

(assert (=> b!3861051 (= lt!1341631 (size!30792 lt!1341630))))

(declare-fun b!3861052 () Bool)

(declare-fun e!2387033 () Bool)

(declare-fun tp_is_empty!19455 () Bool)

(declare-fun tp!1170452 () Bool)

(assert (=> b!3861052 (= e!2387033 (and tp_is_empty!19455 tp!1170452))))

(declare-fun b!3861053 () Bool)

(declare-fun res!1563397 () Bool)

(assert (=> b!3861053 (=> res!1563397 e!2387006)))

(declare-fun lt!1341625 () List!41066)

(declare-fun lt!1341634 () tuple2!40148)

(assert (=> b!3861053 (= res!1563397 (not (= (lexList!1694 thiss!20629 rules!2768 (_2!23208 lt!1341634)) (tuple2!40147 (++!10431 lt!1341625 suffixTokens!72) suffixResult!91))))))

(declare-fun b!3861054 () Bool)

(declare-fun res!1563403 () Bool)

(assert (=> b!3861054 (=> (not res!1563403) (not e!2387013))))

(assert (=> b!3861054 (= res!1563403 (= (lexList!1694 thiss!20629 rules!2768 suffix!1176) (tuple2!40147 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3861055 () Bool)

(declare-fun res!1563390 () Bool)

(declare-fun e!2387007 () Bool)

(assert (=> b!3861055 (=> res!1563390 e!2387007)))

(declare-fun lt!1341644 () Int)

(assert (=> b!3861055 (= res!1563390 (>= (size!30792 (_2!23208 lt!1341634)) lt!1341644))))

(declare-fun b!3861056 () Bool)

(declare-fun e!2387028 () Bool)

(declare-fun e!2387027 () Bool)

(assert (=> b!3861056 (= e!2387028 (not e!2387027))))

(declare-fun res!1563406 () Bool)

(assert (=> b!3861056 (=> res!1563406 e!2387027)))

(declare-fun lt!1341629 () List!41065)

(assert (=> b!3861056 (= res!1563406 (not (= lt!1341629 lt!1341630)))))

(declare-fun lt!1341627 () tuple2!40146)

(assert (=> b!3861056 (= lt!1341627 (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341632))))))

(declare-fun lt!1341624 () List!41065)

(assert (=> b!3861056 (and (= (size!30791 (_1!23208 (v!39052 lt!1341632))) lt!1341640) (= (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632))) lt!1341645) (= (v!39052 lt!1341632) (tuple2!40149 (Token!11813 lt!1341643 (rule!9207 (_1!23208 (v!39052 lt!1341632))) lt!1341640 lt!1341645) lt!1341624)))))

(assert (=> b!3861056 (= lt!1341640 (size!30792 lt!1341645))))

(assert (=> b!3861056 e!2387034))

(declare-fun res!1563395 () Bool)

(assert (=> b!3861056 (=> (not res!1563395) (not e!2387034))))

(assert (=> b!3861056 (= res!1563395 (= (value!201240 (_1!23208 (v!39052 lt!1341632))) lt!1341643))))

(declare-fun apply!9580 (TokenValueInjection!12562 BalanceConc!24690) TokenValue!6567)

(declare-fun seqFromList!4608 (List!41065) BalanceConc!24690)

(assert (=> b!3861056 (= lt!1341643 (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (seqFromList!4608 lt!1341645)))))

(assert (=> b!3861056 (= (_2!23208 (v!39052 lt!1341632)) lt!1341624)))

(declare-fun lt!1341637 () Unit!58597)

(declare-fun lemmaSamePrefixThenSameSuffix!1657 (List!41065 List!41065 List!41065 List!41065 List!41065) Unit!58597)

(assert (=> b!3861056 (= lt!1341637 (lemmaSamePrefixThenSameSuffix!1657 lt!1341645 (_2!23208 (v!39052 lt!1341632)) lt!1341645 lt!1341624 lt!1341630))))

(declare-fun getSuffix!1891 (List!41065 List!41065) List!41065)

(assert (=> b!3861056 (= lt!1341624 (getSuffix!1891 lt!1341630 lt!1341645))))

(declare-fun isPrefix!3436 (List!41065 List!41065) Bool)

(assert (=> b!3861056 (isPrefix!3436 lt!1341645 lt!1341629)))

(assert (=> b!3861056 (= lt!1341629 (++!10432 lt!1341645 (_2!23208 (v!39052 lt!1341632))))))

(declare-fun lt!1341633 () Unit!58597)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2299 (List!41065 List!41065) Unit!58597)

(assert (=> b!3861056 (= lt!1341633 (lemmaConcatTwoListThenFirstIsPrefix!2299 lt!1341645 (_2!23208 (v!39052 lt!1341632))))))

(declare-fun list!15239 (BalanceConc!24690) List!41065)

(declare-fun charsOf!4165 (Token!11812) BalanceConc!24690)

(assert (=> b!3861056 (= lt!1341645 (list!15239 (charsOf!4165 (_1!23208 (v!39052 lt!1341632)))))))

(declare-fun ruleValid!2289 (LexerInterface!5926 Rule!12474) Bool)

(assert (=> b!3861056 (ruleValid!2289 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))

(declare-fun lt!1341635 () Unit!58597)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1369 (LexerInterface!5926 Rule!12474 List!41067) Unit!58597)

(assert (=> b!3861056 (= lt!1341635 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1369 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) rules!2768))))

(declare-fun lt!1341638 () Unit!58597)

(declare-fun lemmaCharactersSize!998 (Token!11812) Unit!58597)

(assert (=> b!3861056 (= lt!1341638 (lemmaCharactersSize!998 (_1!23208 (v!39052 lt!1341632))))))

(declare-fun b!3861057 () Bool)

(assert (=> b!3861057 (= e!2387012 e!2387007)))

(declare-fun res!1563387 () Bool)

(assert (=> b!3861057 (=> res!1563387 e!2387007)))

(declare-fun lt!1341636 () Token!11812)

(assert (=> b!3861057 (= res!1563387 (not (= (_1!23208 lt!1341634) lt!1341636)))))

(declare-fun head!8143 (List!41066) Token!11812)

(assert (=> b!3861057 (= lt!1341636 (head!8143 prefixTokens!80))))

(declare-fun get!13546 (Option!8755) tuple2!40148)

(assert (=> b!3861057 (= lt!1341634 (get!13546 lt!1341632))))

(declare-fun b!3861058 () Bool)

(declare-fun e!2387008 () Bool)

(declare-fun e!2387022 () Bool)

(declare-fun tp!1170454 () Bool)

(assert (=> b!3861058 (= e!2387008 (and e!2387022 tp!1170454))))

(declare-fun b!3861059 () Bool)

(declare-fun res!1563400 () Bool)

(assert (=> b!3861059 (=> res!1563400 e!2387027)))

(assert (=> b!3861059 (= res!1563400 (not (= lt!1341626 (tuple2!40147 (++!10431 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942) (_1!23207 lt!1341627)) (_2!23207 lt!1341627)))))))

(declare-fun tp!1170460 () Bool)

(declare-fun e!2387018 () Bool)

(declare-fun b!3861060 () Bool)

(assert (=> b!3861060 (= e!2387021 (and tp!1170460 (inv!55102 (tag!7197 (rule!9207 (h!46362 prefixTokens!80)))) (inv!55106 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) e!2387018))))

(declare-fun e!2387029 () Bool)

(assert (=> b!3861061 (= e!2387029 (and tp!1170462 tp!1170455))))

(declare-fun b!3861062 () Bool)

(declare-fun res!1563389 () Bool)

(assert (=> b!3861062 (=> (not res!1563389) (not e!2387023))))

(declare-fun isEmpty!24255 (List!41066) Bool)

(assert (=> b!3861062 (= res!1563389 (not (isEmpty!24255 prefixTokens!80)))))

(declare-fun b!3861063 () Bool)

(declare-fun e!2387017 () Bool)

(declare-fun tp!1170461 () Bool)

(assert (=> b!3861063 (= e!2387017 (and tp_is_empty!19455 tp!1170461))))

(declare-fun b!3861064 () Bool)

(declare-fun e!2387011 () Bool)

(declare-fun tp!1170457 () Bool)

(assert (=> b!3861064 (= e!2387011 (and (inv!21 (value!201240 (h!46362 suffixTokens!72))) e!2387020 tp!1170457))))

(declare-fun b!3861049 () Bool)

(assert (=> b!3861049 (= e!2387027 e!2387010)))

(declare-fun res!1563398 () Bool)

(assert (=> b!3861049 (=> res!1563398 e!2387010)))

(assert (=> b!3861049 (= res!1563398 (>= lt!1341642 lt!1341644))))

(assert (=> b!3861049 (= lt!1341644 (size!30792 suffix!1176))))

(assert (=> b!3861049 (= lt!1341642 (size!30792 (_2!23208 (v!39052 lt!1341632))))))

(declare-fun res!1563399 () Bool)

(assert (=> start!362054 (=> (not res!1563399) (not e!2387023))))

(assert (=> start!362054 (= res!1563399 (is-Lexer!5924 thiss!20629))))

(assert (=> start!362054 e!2387023))

(declare-fun e!2387030 () Bool)

(assert (=> start!362054 e!2387030))

(assert (=> start!362054 true))

(assert (=> start!362054 e!2387017))

(assert (=> start!362054 e!2387008))

(assert (=> start!362054 e!2387019))

(declare-fun e!2387016 () Bool)

(assert (=> start!362054 e!2387016))

(assert (=> start!362054 e!2387033))

(declare-fun b!3861065 () Bool)

(declare-fun res!1563391 () Bool)

(assert (=> b!3861065 (=> (not res!1563391) (not e!2387023))))

(declare-fun isEmpty!24256 (List!41067) Bool)

(assert (=> b!3861065 (= res!1563391 (not (isEmpty!24256 rules!2768)))))

(declare-fun b!3861066 () Bool)

(declare-fun tp!1170456 () Bool)

(assert (=> b!3861066 (= e!2387030 (and tp_is_empty!19455 tp!1170456))))

(declare-fun b!3861067 () Bool)

(declare-fun res!1563394 () Bool)

(assert (=> b!3861067 (=> res!1563394 e!2387027)))

(assert (=> b!3861067 (= res!1563394 (or (not (= lt!1341627 (tuple2!40147 (_1!23207 lt!1341627) (_2!23207 lt!1341627)))) (= (_2!23208 (v!39052 lt!1341632)) suffix!1176)))))

(declare-fun b!3861068 () Bool)

(assert (=> b!3861068 (= e!2387007 e!2387006)))

(declare-fun res!1563401 () Bool)

(assert (=> b!3861068 (=> res!1563401 e!2387006)))

(assert (=> b!3861068 (= res!1563401 (isEmpty!24255 lt!1341625))))

(declare-fun tail!5854 (List!41066) List!41066)

(assert (=> b!3861068 (= lt!1341625 (tail!5854 prefixTokens!80))))

(declare-fun b!3861069 () Bool)

(declare-fun tp!1170449 () Bool)

(assert (=> b!3861069 (= e!2387016 (and (inv!55105 (h!46362 suffixTokens!72)) e!2387011 tp!1170449))))

(declare-fun tp!1170450 () Bool)

(declare-fun b!3861070 () Bool)

(assert (=> b!3861070 (= e!2387022 (and tp!1170450 (inv!55102 (tag!7197 (h!46363 rules!2768))) (inv!55106 (transformation!6337 (h!46363 rules!2768))) e!2387029))))

(assert (=> b!3861071 (= e!2387018 (and tp!1170458 tp!1170463))))

(declare-fun b!3861072 () Bool)

(assert (=> b!3861072 (= e!2387025 e!2387032)))

(declare-fun res!1563405 () Bool)

(assert (=> b!3861072 (=> res!1563405 e!2387032)))

(declare-fun lt!1341641 () Int)

(assert (=> b!3861072 (= res!1563405 (or (not (= (+ lt!1341641 lt!1341644) lt!1341631)) (<= lt!1341640 lt!1341641)))))

(assert (=> b!3861072 (= lt!1341641 (size!30792 prefix!426))))

(declare-fun b!3861073 () Bool)

(assert (=> b!3861073 (= e!2387013 e!2387028)))

(declare-fun res!1563392 () Bool)

(assert (=> b!3861073 (=> (not res!1563392) (not e!2387028))))

(assert (=> b!3861073 (= res!1563392 (is-Some!8754 lt!1341632))))

(declare-fun maxPrefix!3230 (LexerInterface!5926 List!41067 List!41065) Option!8755)

(assert (=> b!3861073 (= lt!1341632 (maxPrefix!3230 thiss!20629 rules!2768 lt!1341630))))

(declare-fun b!3861074 () Bool)

(declare-fun res!1563393 () Bool)

(assert (=> b!3861074 (=> res!1563393 e!2387006)))

(assert (=> b!3861074 (= res!1563393 (not (= (_1!23208 (v!39052 lt!1341632)) lt!1341636)))))

(declare-fun b!3861075 () Bool)

(declare-fun res!1563396 () Bool)

(assert (=> b!3861075 (=> (not res!1563396) (not e!2387023))))

(declare-fun rulesInvariant!5269 (LexerInterface!5926 List!41067) Bool)

(assert (=> b!3861075 (= res!1563396 (rulesInvariant!5269 thiss!20629 rules!2768))))

(declare-fun b!3861076 () Bool)

(declare-fun res!1563404 () Bool)

(assert (=> b!3861076 (=> (not res!1563404) (not e!2387023))))

(declare-fun isEmpty!24257 (List!41065) Bool)

(assert (=> b!3861076 (= res!1563404 (not (isEmpty!24257 prefix!426)))))

(assert (=> b!3861077 (= e!2387024 (and tp!1170453 tp!1170459))))

(assert (= (and start!362054 res!1563399) b!3861065))

(assert (= (and b!3861065 res!1563391) b!3861075))

(assert (= (and b!3861075 res!1563396) b!3861062))

(assert (= (and b!3861062 res!1563389) b!3861076))

(assert (= (and b!3861076 res!1563404) b!3861047))

(assert (= (and b!3861047 res!1563388) b!3861054))

(assert (= (and b!3861054 res!1563403) b!3861073))

(assert (= (and b!3861073 res!1563392) b!3861056))

(assert (= (and b!3861056 res!1563395) b!3861048))

(assert (= (and b!3861056 (not res!1563406)) b!3861059))

(assert (= (and b!3861059 (not res!1563400)) b!3861067))

(assert (= (and b!3861067 (not res!1563394)) b!3861049))

(assert (= (and b!3861049 (not res!1563398)) b!3861051))

(assert (= (and b!3861051 (not res!1563407)) b!3861072))

(assert (= (and b!3861072 (not res!1563405)) b!3861050))

(assert (= (and b!3861050 (not res!1563402)) b!3861057))

(assert (= (and b!3861057 (not res!1563387)) b!3861055))

(assert (= (and b!3861055 (not res!1563390)) b!3861068))

(assert (= (and b!3861068 (not res!1563401)) b!3861074))

(assert (= (and b!3861074 (not res!1563393)) b!3861053))

(assert (= (and b!3861053 (not res!1563397)) b!3861046))

(assert (= (and start!362054 (is-Cons!40941 suffixResult!91)) b!3861066))

(assert (= (and start!362054 (is-Cons!40941 suffix!1176)) b!3861063))

(assert (= b!3861070 b!3861061))

(assert (= b!3861058 b!3861070))

(assert (= (and start!362054 (is-Cons!40943 rules!2768)) b!3861058))

(assert (= b!3861060 b!3861071))

(assert (= b!3861044 b!3861060))

(assert (= b!3861043 b!3861044))

(assert (= (and start!362054 (is-Cons!40942 prefixTokens!80)) b!3861043))

(assert (= b!3861045 b!3861077))

(assert (= b!3861064 b!3861045))

(assert (= b!3861069 b!3861064))

(assert (= (and start!362054 (is-Cons!40942 suffixTokens!72)) b!3861069))

(assert (= (and start!362054 (is-Cons!40941 prefix!426)) b!3861052))

(declare-fun m!4416497 () Bool)

(assert (=> b!3861048 m!4416497))

(declare-fun m!4416499 () Bool)

(assert (=> b!3861075 m!4416499))

(declare-fun m!4416501 () Bool)

(assert (=> b!3861069 m!4416501))

(declare-fun m!4416503 () Bool)

(assert (=> b!3861065 m!4416503))

(declare-fun m!4416505 () Bool)

(assert (=> b!3861073 m!4416505))

(declare-fun m!4416507 () Bool)

(assert (=> b!3861056 m!4416507))

(declare-fun m!4416509 () Bool)

(assert (=> b!3861056 m!4416509))

(declare-fun m!4416511 () Bool)

(assert (=> b!3861056 m!4416511))

(declare-fun m!4416513 () Bool)

(assert (=> b!3861056 m!4416513))

(declare-fun m!4416515 () Bool)

(assert (=> b!3861056 m!4416515))

(declare-fun m!4416517 () Bool)

(assert (=> b!3861056 m!4416517))

(assert (=> b!3861056 m!4416515))

(declare-fun m!4416519 () Bool)

(assert (=> b!3861056 m!4416519))

(declare-fun m!4416521 () Bool)

(assert (=> b!3861056 m!4416521))

(declare-fun m!4416523 () Bool)

(assert (=> b!3861056 m!4416523))

(declare-fun m!4416525 () Bool)

(assert (=> b!3861056 m!4416525))

(declare-fun m!4416527 () Bool)

(assert (=> b!3861056 m!4416527))

(declare-fun m!4416529 () Bool)

(assert (=> b!3861056 m!4416529))

(assert (=> b!3861056 m!4416523))

(declare-fun m!4416531 () Bool)

(assert (=> b!3861056 m!4416531))

(declare-fun m!4416533 () Bool)

(assert (=> b!3861056 m!4416533))

(declare-fun m!4416535 () Bool)

(assert (=> b!3861047 m!4416535))

(declare-fun m!4416537 () Bool)

(assert (=> b!3861047 m!4416537))

(declare-fun m!4416539 () Bool)

(assert (=> b!3861047 m!4416539))

(declare-fun m!4416541 () Bool)

(assert (=> b!3861064 m!4416541))

(declare-fun m!4416543 () Bool)

(assert (=> b!3861045 m!4416543))

(declare-fun m!4416545 () Bool)

(assert (=> b!3861045 m!4416545))

(declare-fun m!4416547 () Bool)

(assert (=> b!3861054 m!4416547))

(declare-fun m!4416549 () Bool)

(assert (=> b!3861076 m!4416549))

(declare-fun m!4416551 () Bool)

(assert (=> b!3861050 m!4416551))

(declare-fun m!4416553 () Bool)

(assert (=> b!3861050 m!4416553))

(declare-fun m!4416555 () Bool)

(assert (=> b!3861050 m!4416555))

(declare-fun m!4416557 () Bool)

(assert (=> b!3861044 m!4416557))

(declare-fun m!4416559 () Bool)

(assert (=> b!3861070 m!4416559))

(declare-fun m!4416561 () Bool)

(assert (=> b!3861070 m!4416561))

(declare-fun m!4416563 () Bool)

(assert (=> b!3861049 m!4416563))

(declare-fun m!4416565 () Bool)

(assert (=> b!3861049 m!4416565))

(declare-fun m!4416567 () Bool)

(assert (=> b!3861053 m!4416567))

(declare-fun m!4416569 () Bool)

(assert (=> b!3861053 m!4416569))

(declare-fun m!4416571 () Bool)

(assert (=> b!3861057 m!4416571))

(declare-fun m!4416573 () Bool)

(assert (=> b!3861057 m!4416573))

(declare-fun m!4416575 () Bool)

(assert (=> b!3861043 m!4416575))

(declare-fun m!4416577 () Bool)

(assert (=> b!3861068 m!4416577))

(declare-fun m!4416579 () Bool)

(assert (=> b!3861068 m!4416579))

(declare-fun m!4416581 () Bool)

(assert (=> b!3861062 m!4416581))

(declare-fun m!4416583 () Bool)

(assert (=> b!3861060 m!4416583))

(declare-fun m!4416585 () Bool)

(assert (=> b!3861060 m!4416585))

(declare-fun m!4416587 () Bool)

(assert (=> b!3861059 m!4416587))

(declare-fun m!4416589 () Bool)

(assert (=> b!3861055 m!4416589))

(declare-fun m!4416591 () Bool)

(assert (=> b!3861051 m!4416591))

(declare-fun m!4416593 () Bool)

(assert (=> b!3861072 m!4416593))

(push 1)

(assert (not b_next!104531))

(assert (not b_next!104537))

(assert (not b!3861076))

(assert (not b!3861052))

(assert (not b!3861070))

(assert (not b_next!104539))

(assert (not b!3861053))

(assert (not b_next!104529))

(assert (not b!3861051))

(assert (not b!3861057))

(assert b_and!289057)

(assert (not b!3861047))

(assert (not b!3861066))

(assert (not b_next!104535))

(assert (not b!3861050))

(assert (not b!3861069))

(assert (not b!3861045))

(assert b_and!289051)

(assert (not b!3861064))

(assert b_and!289053)

(assert (not b!3861059))

(assert (not b!3861049))

(assert (not b!3861055))

(assert (not b!3861073))

(assert (not b!3861058))

(assert (not b!3861056))

(assert (not b!3861075))

(assert (not b!3861048))

(assert (not b!3861065))

(assert (not b!3861043))

(assert (not b!3861054))

(assert tp_is_empty!19455)

(assert b_and!289047)

(assert (not b!3861044))

(assert (not b!3861062))

(assert (not b!3861063))

(assert (not b_next!104533))

(assert b_and!289055)

(assert (not b!3861072))

(assert b_and!289049)

(assert (not b!3861068))

(assert (not b!3861060))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!104529))

(assert b_and!289057)

(assert (not b_next!104531))

(assert (not b_next!104535))

(assert (not b_next!104537))

(assert b_and!289047)

(assert (not b_next!104533))

(assert (not b_next!104539))

(assert b_and!289051)

(assert b_and!289053)

(assert b_and!289055)

(assert b_and!289049)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3861224 () Bool)

(declare-fun e!2387149 () Bool)

(declare-fun lt!1341719 () tuple2!40146)

(assert (=> b!3861224 (= e!2387149 (= (_2!23207 lt!1341719) (_2!23208 lt!1341634)))))

(declare-fun b!3861225 () Bool)

(declare-fun e!2387150 () Bool)

(assert (=> b!3861225 (= e!2387150 (not (isEmpty!24255 (_1!23207 lt!1341719))))))

(declare-fun b!3861226 () Bool)

(declare-fun e!2387151 () tuple2!40146)

(declare-fun lt!1341718 () Option!8755)

(declare-fun lt!1341720 () tuple2!40146)

(assert (=> b!3861226 (= e!2387151 (tuple2!40147 (Cons!40942 (_1!23208 (v!39052 lt!1341718)) (_1!23207 lt!1341720)) (_2!23207 lt!1341720)))))

(assert (=> b!3861226 (= lt!1341720 (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341718))))))

(declare-fun d!1144424 () Bool)

(assert (=> d!1144424 e!2387149))

(declare-fun c!672214 () Bool)

(declare-fun size!30795 (List!41066) Int)

(assert (=> d!1144424 (= c!672214 (> (size!30795 (_1!23207 lt!1341719)) 0))))

(assert (=> d!1144424 (= lt!1341719 e!2387151)))

(declare-fun c!672215 () Bool)

(assert (=> d!1144424 (= c!672215 (is-Some!8754 lt!1341718))))

(assert (=> d!1144424 (= lt!1341718 (maxPrefix!3230 thiss!20629 rules!2768 (_2!23208 lt!1341634)))))

(assert (=> d!1144424 (= (lexList!1694 thiss!20629 rules!2768 (_2!23208 lt!1341634)) lt!1341719)))

(declare-fun b!3861227 () Bool)

(assert (=> b!3861227 (= e!2387149 e!2387150)))

(declare-fun res!1563488 () Bool)

(assert (=> b!3861227 (= res!1563488 (< (size!30792 (_2!23207 lt!1341719)) (size!30792 (_2!23208 lt!1341634))))))

(assert (=> b!3861227 (=> (not res!1563488) (not e!2387150))))

(declare-fun b!3861228 () Bool)

(assert (=> b!3861228 (= e!2387151 (tuple2!40147 Nil!40942 (_2!23208 lt!1341634)))))

(assert (= (and d!1144424 c!672215) b!3861226))

(assert (= (and d!1144424 (not c!672215)) b!3861228))

(assert (= (and d!1144424 c!672214) b!3861227))

(assert (= (and d!1144424 (not c!672214)) b!3861224))

(assert (= (and b!3861227 res!1563488) b!3861225))

(declare-fun m!4416717 () Bool)

(assert (=> b!3861225 m!4416717))

(declare-fun m!4416719 () Bool)

(assert (=> b!3861226 m!4416719))

(declare-fun m!4416721 () Bool)

(assert (=> d!1144424 m!4416721))

(declare-fun m!4416723 () Bool)

(assert (=> d!1144424 m!4416723))

(declare-fun m!4416725 () Bool)

(assert (=> b!3861227 m!4416725))

(assert (=> b!3861227 m!4416589))

(assert (=> b!3861053 d!1144424))

(declare-fun d!1144432 () Bool)

(declare-fun e!2387160 () Bool)

(assert (=> d!1144432 e!2387160))

(declare-fun res!1563498 () Bool)

(assert (=> d!1144432 (=> (not res!1563498) (not e!2387160))))

(declare-fun lt!1341723 () List!41066)

(declare-fun content!6106 (List!41066) (Set Token!11812))

(assert (=> d!1144432 (= res!1563498 (= (content!6106 lt!1341723) (set.union (content!6106 lt!1341625) (content!6106 suffixTokens!72))))))

(declare-fun e!2387161 () List!41066)

(assert (=> d!1144432 (= lt!1341723 e!2387161)))

(declare-fun c!672218 () Bool)

(assert (=> d!1144432 (= c!672218 (is-Nil!40942 lt!1341625))))

(assert (=> d!1144432 (= (++!10431 lt!1341625 suffixTokens!72) lt!1341723)))

(declare-fun b!3861242 () Bool)

(assert (=> b!3861242 (= e!2387161 (Cons!40942 (h!46362 lt!1341625) (++!10431 (t!313461 lt!1341625) suffixTokens!72)))))

(declare-fun b!3861243 () Bool)

(declare-fun res!1563497 () Bool)

(assert (=> b!3861243 (=> (not res!1563497) (not e!2387160))))

(assert (=> b!3861243 (= res!1563497 (= (size!30795 lt!1341723) (+ (size!30795 lt!1341625) (size!30795 suffixTokens!72))))))

(declare-fun b!3861244 () Bool)

(assert (=> b!3861244 (= e!2387160 (or (not (= suffixTokens!72 Nil!40942)) (= lt!1341723 lt!1341625)))))

(declare-fun b!3861241 () Bool)

(assert (=> b!3861241 (= e!2387161 suffixTokens!72)))

(assert (= (and d!1144432 c!672218) b!3861241))

(assert (= (and d!1144432 (not c!672218)) b!3861242))

(assert (= (and d!1144432 res!1563498) b!3861243))

(assert (= (and b!3861243 res!1563497) b!3861244))

(declare-fun m!4416735 () Bool)

(assert (=> d!1144432 m!4416735))

(declare-fun m!4416737 () Bool)

(assert (=> d!1144432 m!4416737))

(declare-fun m!4416739 () Bool)

(assert (=> d!1144432 m!4416739))

(declare-fun m!4416741 () Bool)

(assert (=> b!3861242 m!4416741))

(declare-fun m!4416743 () Bool)

(assert (=> b!3861243 m!4416743))

(declare-fun m!4416745 () Bool)

(assert (=> b!3861243 m!4416745))

(declare-fun m!4416747 () Bool)

(assert (=> b!3861243 m!4416747))

(assert (=> b!3861053 d!1144432))

(declare-fun b!3861245 () Bool)

(declare-fun e!2387162 () Bool)

(declare-fun lt!1341725 () tuple2!40146)

(assert (=> b!3861245 (= e!2387162 (= (_2!23207 lt!1341725) suffix!1176))))

(declare-fun b!3861246 () Bool)

(declare-fun e!2387163 () Bool)

(assert (=> b!3861246 (= e!2387163 (not (isEmpty!24255 (_1!23207 lt!1341725))))))

(declare-fun b!3861247 () Bool)

(declare-fun e!2387164 () tuple2!40146)

(declare-fun lt!1341724 () Option!8755)

(declare-fun lt!1341726 () tuple2!40146)

(assert (=> b!3861247 (= e!2387164 (tuple2!40147 (Cons!40942 (_1!23208 (v!39052 lt!1341724)) (_1!23207 lt!1341726)) (_2!23207 lt!1341726)))))

(assert (=> b!3861247 (= lt!1341726 (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341724))))))

(declare-fun d!1144440 () Bool)

(assert (=> d!1144440 e!2387162))

(declare-fun c!672219 () Bool)

(assert (=> d!1144440 (= c!672219 (> (size!30795 (_1!23207 lt!1341725)) 0))))

(assert (=> d!1144440 (= lt!1341725 e!2387164)))

(declare-fun c!672220 () Bool)

(assert (=> d!1144440 (= c!672220 (is-Some!8754 lt!1341724))))

(assert (=> d!1144440 (= lt!1341724 (maxPrefix!3230 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1144440 (= (lexList!1694 thiss!20629 rules!2768 suffix!1176) lt!1341725)))

(declare-fun b!3861248 () Bool)

(assert (=> b!3861248 (= e!2387162 e!2387163)))

(declare-fun res!1563499 () Bool)

(assert (=> b!3861248 (= res!1563499 (< (size!30792 (_2!23207 lt!1341725)) (size!30792 suffix!1176)))))

(assert (=> b!3861248 (=> (not res!1563499) (not e!2387163))))

(declare-fun b!3861249 () Bool)

(assert (=> b!3861249 (= e!2387164 (tuple2!40147 Nil!40942 suffix!1176))))

(assert (= (and d!1144440 c!672220) b!3861247))

(assert (= (and d!1144440 (not c!672220)) b!3861249))

(assert (= (and d!1144440 c!672219) b!3861248))

(assert (= (and d!1144440 (not c!672219)) b!3861245))

(assert (= (and b!3861248 res!1563499) b!3861246))

(declare-fun m!4416749 () Bool)

(assert (=> b!3861246 m!4416749))

(declare-fun m!4416751 () Bool)

(assert (=> b!3861247 m!4416751))

(declare-fun m!4416753 () Bool)

(assert (=> d!1144440 m!4416753))

(declare-fun m!4416755 () Bool)

(assert (=> d!1144440 m!4416755))

(declare-fun m!4416757 () Bool)

(assert (=> b!3861248 m!4416757))

(assert (=> b!3861248 m!4416563))

(assert (=> b!3861054 d!1144440))

(declare-fun d!1144442 () Bool)

(declare-fun res!1563502 () Bool)

(declare-fun e!2387167 () Bool)

(assert (=> d!1144442 (=> (not res!1563502) (not e!2387167))))

(declare-fun rulesValid!2453 (LexerInterface!5926 List!41067) Bool)

(assert (=> d!1144442 (= res!1563502 (rulesValid!2453 thiss!20629 rules!2768))))

(assert (=> d!1144442 (= (rulesInvariant!5269 thiss!20629 rules!2768) e!2387167)))

(declare-fun b!3861252 () Bool)

(declare-datatypes ((List!41072 0))(
  ( (Nil!40948) (Cons!40948 (h!46368 String!46555) (t!313521 List!41072)) )
))
(declare-fun noDuplicateTag!2454 (LexerInterface!5926 List!41067 List!41072) Bool)

(assert (=> b!3861252 (= e!2387167 (noDuplicateTag!2454 thiss!20629 rules!2768 Nil!40948))))

(assert (= (and d!1144442 res!1563502) b!3861252))

(declare-fun m!4416759 () Bool)

(assert (=> d!1144442 m!4416759))

(declare-fun m!4416761 () Bool)

(assert (=> b!3861252 m!4416761))

(assert (=> b!3861075 d!1144442))

(declare-fun bm!282538 () Bool)

(declare-fun call!282543 () Bool)

(assert (=> bm!282538 (= call!282543 (isEmpty!24257 lt!1341645))))

(declare-fun b!3861293 () Bool)

(declare-fun e!2387193 () Bool)

(declare-fun e!2387194 () Bool)

(assert (=> b!3861293 (= e!2387193 e!2387194)))

(declare-fun c!672232 () Bool)

(assert (=> b!3861293 (= c!672232 (is-EmptyLang!11242 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))))

(declare-fun b!3861294 () Bool)

(declare-fun res!1563526 () Bool)

(declare-fun e!2387192 () Bool)

(assert (=> b!3861294 (=> res!1563526 e!2387192)))

(declare-fun e!2387188 () Bool)

(assert (=> b!3861294 (= res!1563526 e!2387188)))

(declare-fun res!1563525 () Bool)

(assert (=> b!3861294 (=> (not res!1563525) (not e!2387188))))

(declare-fun lt!1341732 () Bool)

(assert (=> b!3861294 (= res!1563525 lt!1341732)))

(declare-fun b!3861295 () Bool)

(declare-fun e!2387191 () Bool)

(declare-fun head!8145 (List!41065) C!22670)

(assert (=> b!3861295 (= e!2387191 (not (= (head!8145 lt!1341645) (c!672197 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))))))

(declare-fun b!3861296 () Bool)

(declare-fun e!2387190 () Bool)

(assert (=> b!3861296 (= e!2387192 e!2387190)))

(declare-fun res!1563530 () Bool)

(assert (=> b!3861296 (=> (not res!1563530) (not e!2387190))))

(assert (=> b!3861296 (= res!1563530 (not lt!1341732))))

(declare-fun b!3861297 () Bool)

(declare-fun res!1563529 () Bool)

(assert (=> b!3861297 (=> (not res!1563529) (not e!2387188))))

(assert (=> b!3861297 (= res!1563529 (not call!282543))))

(declare-fun b!3861298 () Bool)

(assert (=> b!3861298 (= e!2387194 (not lt!1341732))))

(declare-fun b!3861299 () Bool)

(assert (=> b!3861299 (= e!2387193 (= lt!1341732 call!282543))))

(declare-fun b!3861300 () Bool)

(declare-fun res!1563527 () Bool)

(assert (=> b!3861300 (=> res!1563527 e!2387192)))

(assert (=> b!3861300 (= res!1563527 (not (is-ElementMatch!11242 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))))

(assert (=> b!3861300 (= e!2387194 e!2387192)))

(declare-fun b!3861301 () Bool)

(declare-fun e!2387189 () Bool)

(declare-fun derivativeStep!3417 (Regex!11242 C!22670) Regex!11242)

(declare-fun tail!5856 (List!41065) List!41065)

(assert (=> b!3861301 (= e!2387189 (matchR!5389 (derivativeStep!3417 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (head!8145 lt!1341645)) (tail!5856 lt!1341645)))))

(declare-fun b!3861302 () Bool)

(assert (=> b!3861302 (= e!2387190 e!2387191)))

(declare-fun res!1563531 () Bool)

(assert (=> b!3861302 (=> res!1563531 e!2387191)))

(assert (=> b!3861302 (= res!1563531 call!282543)))

(declare-fun b!3861303 () Bool)

(assert (=> b!3861303 (= e!2387188 (= (head!8145 lt!1341645) (c!672197 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))))

(declare-fun d!1144444 () Bool)

(assert (=> d!1144444 e!2387193))

(declare-fun c!672230 () Bool)

(assert (=> d!1144444 (= c!672230 (is-EmptyExpr!11242 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))))

(assert (=> d!1144444 (= lt!1341732 e!2387189)))

(declare-fun c!672231 () Bool)

(assert (=> d!1144444 (= c!672231 (isEmpty!24257 lt!1341645))))

(declare-fun validRegex!5117 (Regex!11242) Bool)

(assert (=> d!1144444 (validRegex!5117 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))

(assert (=> d!1144444 (= (matchR!5389 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) lt!1341645) lt!1341732)))

(declare-fun b!3861304 () Bool)

(declare-fun res!1563532 () Bool)

(assert (=> b!3861304 (=> (not res!1563532) (not e!2387188))))

(assert (=> b!3861304 (= res!1563532 (isEmpty!24257 (tail!5856 lt!1341645)))))

(declare-fun b!3861305 () Bool)

(declare-fun res!1563528 () Bool)

(assert (=> b!3861305 (=> res!1563528 e!2387191)))

(assert (=> b!3861305 (= res!1563528 (not (isEmpty!24257 (tail!5856 lt!1341645))))))

(declare-fun b!3861306 () Bool)

(declare-fun nullable!3918 (Regex!11242) Bool)

(assert (=> b!3861306 (= e!2387189 (nullable!3918 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))))

(assert (= (and d!1144444 c!672231) b!3861306))

(assert (= (and d!1144444 (not c!672231)) b!3861301))

(assert (= (and d!1144444 c!672230) b!3861299))

(assert (= (and d!1144444 (not c!672230)) b!3861293))

(assert (= (and b!3861293 c!672232) b!3861298))

(assert (= (and b!3861293 (not c!672232)) b!3861300))

(assert (= (and b!3861300 (not res!1563527)) b!3861294))

(assert (= (and b!3861294 res!1563525) b!3861297))

(assert (= (and b!3861297 res!1563529) b!3861304))

(assert (= (and b!3861304 res!1563532) b!3861303))

(assert (= (and b!3861294 (not res!1563526)) b!3861296))

(assert (= (and b!3861296 res!1563530) b!3861302))

(assert (= (and b!3861302 (not res!1563531)) b!3861305))

(assert (= (and b!3861305 (not res!1563528)) b!3861295))

(assert (= (or b!3861299 b!3861297 b!3861302) bm!282538))

(declare-fun m!4416777 () Bool)

(assert (=> b!3861303 m!4416777))

(assert (=> b!3861301 m!4416777))

(assert (=> b!3861301 m!4416777))

(declare-fun m!4416779 () Bool)

(assert (=> b!3861301 m!4416779))

(declare-fun m!4416781 () Bool)

(assert (=> b!3861301 m!4416781))

(assert (=> b!3861301 m!4416779))

(assert (=> b!3861301 m!4416781))

(declare-fun m!4416783 () Bool)

(assert (=> b!3861301 m!4416783))

(declare-fun m!4416785 () Bool)

(assert (=> d!1144444 m!4416785))

(declare-fun m!4416787 () Bool)

(assert (=> d!1144444 m!4416787))

(assert (=> b!3861295 m!4416777))

(declare-fun m!4416789 () Bool)

(assert (=> b!3861306 m!4416789))

(assert (=> b!3861304 m!4416781))

(assert (=> b!3861304 m!4416781))

(declare-fun m!4416791 () Bool)

(assert (=> b!3861304 m!4416791))

(assert (=> bm!282538 m!4416785))

(assert (=> b!3861305 m!4416781))

(assert (=> b!3861305 m!4416781))

(assert (=> b!3861305 m!4416791))

(assert (=> b!3861050 d!1144444))

(declare-fun b!3861325 () Bool)

(declare-fun res!1563550 () Bool)

(declare-fun e!2387204 () Bool)

(assert (=> b!3861325 (=> (not res!1563550) (not e!2387204))))

(declare-fun lt!1341743 () Option!8755)

(assert (=> b!3861325 (= res!1563550 (= (value!201240 (_1!23208 (get!13546 lt!1341743))) (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (get!13546 lt!1341743)))) (seqFromList!4608 (originalCharacters!6937 (_1!23208 (get!13546 lt!1341743)))))))))

(declare-fun b!3861326 () Bool)

(declare-fun e!2387205 () Option!8755)

(assert (=> b!3861326 (= e!2387205 None!8754)))

(declare-fun b!3861327 () Bool)

(declare-fun e!2387203 () Bool)

(declare-datatypes ((tuple2!40154 0))(
  ( (tuple2!40155 (_1!23211 List!41065) (_2!23211 List!41065)) )
))
(declare-fun findLongestMatchInner!1185 (Regex!11242 List!41065 Int List!41065 List!41065 Int) tuple2!40154)

(assert (=> b!3861327 (= e!2387203 (matchR!5389 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (_1!23211 (findLongestMatchInner!1185 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) Nil!40941 (size!30792 Nil!40941) lt!1341630 lt!1341630 (size!30792 lt!1341630)))))))

(declare-fun b!3861328 () Bool)

(assert (=> b!3861328 (= e!2387204 (= (size!30791 (_1!23208 (get!13546 lt!1341743))) (size!30792 (originalCharacters!6937 (_1!23208 (get!13546 lt!1341743))))))))

(declare-fun b!3861329 () Bool)

(declare-fun res!1563547 () Bool)

(assert (=> b!3861329 (=> (not res!1563547) (not e!2387204))))

(assert (=> b!3861329 (= res!1563547 (< (size!30792 (_2!23208 (get!13546 lt!1341743))) (size!30792 lt!1341630)))))

(declare-fun b!3861330 () Bool)

(declare-fun lt!1341747 () tuple2!40154)

(declare-fun size!30796 (BalanceConc!24690) Int)

(assert (=> b!3861330 (= e!2387205 (Some!8754 (tuple2!40149 (Token!11813 (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (seqFromList!4608 (_1!23211 lt!1341747))) (rule!9207 (_1!23208 (v!39052 lt!1341632))) (size!30796 (seqFromList!4608 (_1!23211 lt!1341747))) (_1!23211 lt!1341747)) (_2!23211 lt!1341747))))))

(declare-fun lt!1341744 () Unit!58597)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1158 (Regex!11242 List!41065) Unit!58597)

(assert (=> b!3861330 (= lt!1341744 (longestMatchIsAcceptedByMatchOrIsEmpty!1158 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) lt!1341630))))

(declare-fun res!1563552 () Bool)

(assert (=> b!3861330 (= res!1563552 (isEmpty!24257 (_1!23211 (findLongestMatchInner!1185 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) Nil!40941 (size!30792 Nil!40941) lt!1341630 lt!1341630 (size!30792 lt!1341630)))))))

(assert (=> b!3861330 (=> res!1563552 e!2387203)))

(assert (=> b!3861330 e!2387203))

(declare-fun lt!1341745 () Unit!58597)

(assert (=> b!3861330 (= lt!1341745 lt!1341744)))

(declare-fun lt!1341746 () Unit!58597)

(declare-fun lemmaSemiInverse!1691 (TokenValueInjection!12562 BalanceConc!24690) Unit!58597)

(assert (=> b!3861330 (= lt!1341746 (lemmaSemiInverse!1691 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (seqFromList!4608 (_1!23211 lt!1341747))))))

(declare-fun b!3861331 () Bool)

(declare-fun res!1563553 () Bool)

(assert (=> b!3861331 (=> (not res!1563553) (not e!2387204))))

(assert (=> b!3861331 (= res!1563553 (= (rule!9207 (_1!23208 (get!13546 lt!1341743))) (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))

(declare-fun d!1144448 () Bool)

(declare-fun e!2387206 () Bool)

(assert (=> d!1144448 e!2387206))

(declare-fun res!1563549 () Bool)

(assert (=> d!1144448 (=> res!1563549 e!2387206)))

(declare-fun isEmpty!24261 (Option!8755) Bool)

(assert (=> d!1144448 (= res!1563549 (isEmpty!24261 lt!1341743))))

(assert (=> d!1144448 (= lt!1341743 e!2387205)))

(declare-fun c!672235 () Bool)

(assert (=> d!1144448 (= c!672235 (isEmpty!24257 (_1!23211 lt!1341747)))))

(declare-fun findLongestMatch!1098 (Regex!11242 List!41065) tuple2!40154)

(assert (=> d!1144448 (= lt!1341747 (findLongestMatch!1098 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) lt!1341630))))

(assert (=> d!1144448 (ruleValid!2289 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144448 (= (maxPrefixOneRule!2312 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) lt!1341630) lt!1341743)))

(declare-fun b!3861332 () Bool)

(assert (=> b!3861332 (= e!2387206 e!2387204)))

(declare-fun res!1563548 () Bool)

(assert (=> b!3861332 (=> (not res!1563548) (not e!2387204))))

(assert (=> b!3861332 (= res!1563548 (matchR!5389 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (list!15239 (charsOf!4165 (_1!23208 (get!13546 lt!1341743))))))))

(declare-fun b!3861333 () Bool)

(declare-fun res!1563551 () Bool)

(assert (=> b!3861333 (=> (not res!1563551) (not e!2387204))))

(assert (=> b!3861333 (= res!1563551 (= (++!10432 (list!15239 (charsOf!4165 (_1!23208 (get!13546 lt!1341743)))) (_2!23208 (get!13546 lt!1341743))) lt!1341630))))

(assert (= (and d!1144448 c!672235) b!3861326))

(assert (= (and d!1144448 (not c!672235)) b!3861330))

(assert (= (and b!3861330 (not res!1563552)) b!3861327))

(assert (= (and d!1144448 (not res!1563549)) b!3861332))

(assert (= (and b!3861332 res!1563548) b!3861333))

(assert (= (and b!3861333 res!1563551) b!3861329))

(assert (= (and b!3861329 res!1563547) b!3861331))

(assert (= (and b!3861331 res!1563553) b!3861325))

(assert (= (and b!3861325 res!1563550) b!3861328))

(declare-fun m!4416793 () Bool)

(assert (=> d!1144448 m!4416793))

(declare-fun m!4416795 () Bool)

(assert (=> d!1144448 m!4416795))

(declare-fun m!4416797 () Bool)

(assert (=> d!1144448 m!4416797))

(assert (=> d!1144448 m!4416533))

(declare-fun m!4416799 () Bool)

(assert (=> b!3861333 m!4416799))

(declare-fun m!4416801 () Bool)

(assert (=> b!3861333 m!4416801))

(assert (=> b!3861333 m!4416801))

(declare-fun m!4416803 () Bool)

(assert (=> b!3861333 m!4416803))

(assert (=> b!3861333 m!4416803))

(declare-fun m!4416805 () Bool)

(assert (=> b!3861333 m!4416805))

(assert (=> b!3861325 m!4416799))

(declare-fun m!4416807 () Bool)

(assert (=> b!3861325 m!4416807))

(assert (=> b!3861325 m!4416807))

(declare-fun m!4416809 () Bool)

(assert (=> b!3861325 m!4416809))

(assert (=> b!3861331 m!4416799))

(assert (=> b!3861328 m!4416799))

(declare-fun m!4416811 () Bool)

(assert (=> b!3861328 m!4416811))

(assert (=> b!3861329 m!4416799))

(declare-fun m!4416813 () Bool)

(assert (=> b!3861329 m!4416813))

(assert (=> b!3861329 m!4416591))

(assert (=> b!3861332 m!4416799))

(assert (=> b!3861332 m!4416801))

(assert (=> b!3861332 m!4416801))

(assert (=> b!3861332 m!4416803))

(assert (=> b!3861332 m!4416803))

(declare-fun m!4416815 () Bool)

(assert (=> b!3861332 m!4416815))

(declare-fun m!4416817 () Bool)

(assert (=> b!3861327 m!4416817))

(assert (=> b!3861327 m!4416591))

(assert (=> b!3861327 m!4416817))

(assert (=> b!3861327 m!4416591))

(declare-fun m!4416819 () Bool)

(assert (=> b!3861327 m!4416819))

(declare-fun m!4416821 () Bool)

(assert (=> b!3861327 m!4416821))

(declare-fun m!4416823 () Bool)

(assert (=> b!3861330 m!4416823))

(declare-fun m!4416825 () Bool)

(assert (=> b!3861330 m!4416825))

(assert (=> b!3861330 m!4416817))

(assert (=> b!3861330 m!4416591))

(assert (=> b!3861330 m!4416819))

(declare-fun m!4416827 () Bool)

(assert (=> b!3861330 m!4416827))

(declare-fun m!4416829 () Bool)

(assert (=> b!3861330 m!4416829))

(assert (=> b!3861330 m!4416591))

(assert (=> b!3861330 m!4416823))

(declare-fun m!4416831 () Bool)

(assert (=> b!3861330 m!4416831))

(assert (=> b!3861330 m!4416817))

(assert (=> b!3861330 m!4416823))

(declare-fun m!4416833 () Bool)

(assert (=> b!3861330 m!4416833))

(assert (=> b!3861330 m!4416823))

(assert (=> b!3861050 d!1144448))

(declare-fun d!1144450 () Bool)

(assert (=> d!1144450 (= (maxPrefixOneRule!2312 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) lt!1341630) (Some!8754 (tuple2!40149 (Token!11813 (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (seqFromList!4608 lt!1341645)) (rule!9207 (_1!23208 (v!39052 lt!1341632))) (size!30792 lt!1341645) lt!1341645) (_2!23208 (v!39052 lt!1341632)))))))

(declare-fun lt!1341760 () Unit!58597)

(declare-fun choose!22737 (LexerInterface!5926 List!41067 List!41065 List!41065 List!41065 Rule!12474) Unit!58597)

(assert (=> d!1144450 (= lt!1341760 (choose!22737 thiss!20629 rules!2768 lt!1341645 lt!1341630 (_2!23208 (v!39052 lt!1341632)) (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))

(assert (=> d!1144450 (not (isEmpty!24256 rules!2768))))

(assert (=> d!1144450 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1210 thiss!20629 rules!2768 lt!1341645 lt!1341630 (_2!23208 (v!39052 lt!1341632)) (rule!9207 (_1!23208 (v!39052 lt!1341632)))) lt!1341760)))

(declare-fun bs!583187 () Bool)

(assert (= bs!583187 d!1144450))

(declare-fun m!4416835 () Bool)

(assert (=> bs!583187 m!4416835))

(assert (=> bs!583187 m!4416515))

(assert (=> bs!583187 m!4416517))

(assert (=> bs!583187 m!4416515))

(assert (=> bs!583187 m!4416527))

(assert (=> bs!583187 m!4416503))

(assert (=> bs!583187 m!4416553))

(assert (=> b!3861050 d!1144450))

(declare-fun d!1144452 () Bool)

(declare-fun e!2387223 () Bool)

(assert (=> d!1144452 e!2387223))

(declare-fun res!1563590 () Bool)

(assert (=> d!1144452 (=> res!1563590 e!2387223)))

(declare-fun lt!1341780 () Option!8755)

(assert (=> d!1144452 (= res!1563590 (isEmpty!24261 lt!1341780))))

(declare-fun e!2387224 () Option!8755)

(assert (=> d!1144452 (= lt!1341780 e!2387224)))

(declare-fun c!672241 () Bool)

(assert (=> d!1144452 (= c!672241 (and (is-Cons!40943 rules!2768) (is-Nil!40943 (t!313462 rules!2768))))))

(declare-fun lt!1341776 () Unit!58597)

(declare-fun lt!1341779 () Unit!58597)

(assert (=> d!1144452 (= lt!1341776 lt!1341779)))

(assert (=> d!1144452 (isPrefix!3436 lt!1341630 lt!1341630)))

(declare-fun lemmaIsPrefixRefl!2189 (List!41065 List!41065) Unit!58597)

(assert (=> d!1144452 (= lt!1341779 (lemmaIsPrefixRefl!2189 lt!1341630 lt!1341630))))

(declare-fun rulesValidInductive!2261 (LexerInterface!5926 List!41067) Bool)

(assert (=> d!1144452 (rulesValidInductive!2261 thiss!20629 rules!2768)))

(assert (=> d!1144452 (= (maxPrefix!3230 thiss!20629 rules!2768 lt!1341630) lt!1341780)))

(declare-fun b!3861379 () Bool)

(declare-fun res!1563593 () Bool)

(declare-fun e!2387222 () Bool)

(assert (=> b!3861379 (=> (not res!1563593) (not e!2387222))))

(assert (=> b!3861379 (= res!1563593 (= (++!10432 (list!15239 (charsOf!4165 (_1!23208 (get!13546 lt!1341780)))) (_2!23208 (get!13546 lt!1341780))) lt!1341630))))

(declare-fun b!3861380 () Bool)

(declare-fun call!282549 () Option!8755)

(assert (=> b!3861380 (= e!2387224 call!282549)))

(declare-fun b!3861381 () Bool)

(declare-fun lt!1341778 () Option!8755)

(declare-fun lt!1341777 () Option!8755)

(assert (=> b!3861381 (= e!2387224 (ite (and (is-None!8754 lt!1341778) (is-None!8754 lt!1341777)) None!8754 (ite (is-None!8754 lt!1341777) lt!1341778 (ite (is-None!8754 lt!1341778) lt!1341777 (ite (>= (size!30791 (_1!23208 (v!39052 lt!1341778))) (size!30791 (_1!23208 (v!39052 lt!1341777)))) lt!1341778 lt!1341777)))))))

(assert (=> b!3861381 (= lt!1341778 call!282549)))

(assert (=> b!3861381 (= lt!1341777 (maxPrefix!3230 thiss!20629 (t!313462 rules!2768) lt!1341630))))

(declare-fun b!3861382 () Bool)

(declare-fun contains!8270 (List!41067 Rule!12474) Bool)

(assert (=> b!3861382 (= e!2387222 (contains!8270 rules!2768 (rule!9207 (_1!23208 (get!13546 lt!1341780)))))))

(declare-fun b!3861383 () Bool)

(declare-fun res!1563594 () Bool)

(assert (=> b!3861383 (=> (not res!1563594) (not e!2387222))))

(assert (=> b!3861383 (= res!1563594 (= (list!15239 (charsOf!4165 (_1!23208 (get!13546 lt!1341780)))) (originalCharacters!6937 (_1!23208 (get!13546 lt!1341780)))))))

(declare-fun b!3861384 () Bool)

(declare-fun res!1563592 () Bool)

(assert (=> b!3861384 (=> (not res!1563592) (not e!2387222))))

(assert (=> b!3861384 (= res!1563592 (< (size!30792 (_2!23208 (get!13546 lt!1341780))) (size!30792 lt!1341630)))))

(declare-fun b!3861385 () Bool)

(declare-fun res!1563591 () Bool)

(assert (=> b!3861385 (=> (not res!1563591) (not e!2387222))))

(assert (=> b!3861385 (= res!1563591 (matchR!5389 (regex!6337 (rule!9207 (_1!23208 (get!13546 lt!1341780)))) (list!15239 (charsOf!4165 (_1!23208 (get!13546 lt!1341780))))))))

(declare-fun b!3861386 () Bool)

(assert (=> b!3861386 (= e!2387223 e!2387222)))

(declare-fun res!1563589 () Bool)

(assert (=> b!3861386 (=> (not res!1563589) (not e!2387222))))

(declare-fun isDefined!6866 (Option!8755) Bool)

(assert (=> b!3861386 (= res!1563589 (isDefined!6866 lt!1341780))))

(declare-fun b!3861387 () Bool)

(declare-fun res!1563595 () Bool)

(assert (=> b!3861387 (=> (not res!1563595) (not e!2387222))))

(assert (=> b!3861387 (= res!1563595 (= (value!201240 (_1!23208 (get!13546 lt!1341780))) (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (get!13546 lt!1341780)))) (seqFromList!4608 (originalCharacters!6937 (_1!23208 (get!13546 lt!1341780)))))))))

(declare-fun bm!282544 () Bool)

(assert (=> bm!282544 (= call!282549 (maxPrefixOneRule!2312 thiss!20629 (h!46363 rules!2768) lt!1341630))))

(assert (= (and d!1144452 c!672241) b!3861380))

(assert (= (and d!1144452 (not c!672241)) b!3861381))

(assert (= (or b!3861380 b!3861381) bm!282544))

(assert (= (and d!1144452 (not res!1563590)) b!3861386))

(assert (= (and b!3861386 res!1563589) b!3861383))

(assert (= (and b!3861383 res!1563594) b!3861384))

(assert (= (and b!3861384 res!1563592) b!3861379))

(assert (= (and b!3861379 res!1563593) b!3861387))

(assert (= (and b!3861387 res!1563595) b!3861385))

(assert (= (and b!3861385 res!1563591) b!3861382))

(declare-fun m!4416869 () Bool)

(assert (=> b!3861383 m!4416869))

(declare-fun m!4416871 () Bool)

(assert (=> b!3861383 m!4416871))

(assert (=> b!3861383 m!4416871))

(declare-fun m!4416873 () Bool)

(assert (=> b!3861383 m!4416873))

(assert (=> b!3861385 m!4416869))

(assert (=> b!3861385 m!4416871))

(assert (=> b!3861385 m!4416871))

(assert (=> b!3861385 m!4416873))

(assert (=> b!3861385 m!4416873))

(declare-fun m!4416875 () Bool)

(assert (=> b!3861385 m!4416875))

(declare-fun m!4416877 () Bool)

(assert (=> bm!282544 m!4416877))

(assert (=> b!3861387 m!4416869))

(declare-fun m!4416879 () Bool)

(assert (=> b!3861387 m!4416879))

(assert (=> b!3861387 m!4416879))

(declare-fun m!4416881 () Bool)

(assert (=> b!3861387 m!4416881))

(assert (=> b!3861382 m!4416869))

(declare-fun m!4416883 () Bool)

(assert (=> b!3861382 m!4416883))

(declare-fun m!4416885 () Bool)

(assert (=> b!3861381 m!4416885))

(declare-fun m!4416887 () Bool)

(assert (=> b!3861386 m!4416887))

(assert (=> b!3861379 m!4416869))

(assert (=> b!3861379 m!4416871))

(assert (=> b!3861379 m!4416871))

(assert (=> b!3861379 m!4416873))

(assert (=> b!3861379 m!4416873))

(declare-fun m!4416889 () Bool)

(assert (=> b!3861379 m!4416889))

(assert (=> b!3861384 m!4416869))

(declare-fun m!4416891 () Bool)

(assert (=> b!3861384 m!4416891))

(assert (=> b!3861384 m!4416591))

(declare-fun m!4416893 () Bool)

(assert (=> d!1144452 m!4416893))

(declare-fun m!4416895 () Bool)

(assert (=> d!1144452 m!4416895))

(declare-fun m!4416897 () Bool)

(assert (=> d!1144452 m!4416897))

(declare-fun m!4416899 () Bool)

(assert (=> d!1144452 m!4416899))

(assert (=> b!3861073 d!1144452))

(declare-fun d!1144456 () Bool)

(declare-fun lt!1341789 () Int)

(assert (=> d!1144456 (>= lt!1341789 0)))

(declare-fun e!2387229 () Int)

(assert (=> d!1144456 (= lt!1341789 e!2387229)))

(declare-fun c!672246 () Bool)

(assert (=> d!1144456 (= c!672246 (is-Nil!40941 prefix!426))))

(assert (=> d!1144456 (= (size!30792 prefix!426) lt!1341789)))

(declare-fun b!3861396 () Bool)

(assert (=> b!3861396 (= e!2387229 0)))

(declare-fun b!3861397 () Bool)

(assert (=> b!3861397 (= e!2387229 (+ 1 (size!30792 (t!313460 prefix!426))))))

(assert (= (and d!1144456 c!672246) b!3861396))

(assert (= (and d!1144456 (not c!672246)) b!3861397))

(declare-fun m!4416901 () Bool)

(assert (=> b!3861397 m!4416901))

(assert (=> b!3861072 d!1144456))

(declare-fun d!1144458 () Bool)

(declare-fun lt!1341790 () Int)

(assert (=> d!1144458 (>= lt!1341790 0)))

(declare-fun e!2387232 () Int)

(assert (=> d!1144458 (= lt!1341790 e!2387232)))

(declare-fun c!672249 () Bool)

(assert (=> d!1144458 (= c!672249 (is-Nil!40941 lt!1341630))))

(assert (=> d!1144458 (= (size!30792 lt!1341630) lt!1341790)))

(declare-fun b!3861402 () Bool)

(assert (=> b!3861402 (= e!2387232 0)))

(declare-fun b!3861403 () Bool)

(assert (=> b!3861403 (= e!2387232 (+ 1 (size!30792 (t!313460 lt!1341630))))))

(assert (= (and d!1144458 c!672249) b!3861402))

(assert (= (and d!1144458 (not c!672249)) b!3861403))

(declare-fun m!4416903 () Bool)

(assert (=> b!3861403 m!4416903))

(assert (=> b!3861051 d!1144458))

(declare-fun d!1144460 () Bool)

(declare-fun res!1563602 () Bool)

(declare-fun e!2387237 () Bool)

(assert (=> d!1144460 (=> (not res!1563602) (not e!2387237))))

(assert (=> d!1144460 (= res!1563602 (not (isEmpty!24257 (originalCharacters!6937 (h!46362 suffixTokens!72)))))))

(assert (=> d!1144460 (= (inv!55105 (h!46362 suffixTokens!72)) e!2387237)))

(declare-fun b!3861410 () Bool)

(declare-fun res!1563603 () Bool)

(assert (=> b!3861410 (=> (not res!1563603) (not e!2387237))))

(declare-fun dynLambda!17659 (Int TokenValue!6567) BalanceConc!24690)

(assert (=> b!3861410 (= res!1563603 (= (originalCharacters!6937 (h!46362 suffixTokens!72)) (list!15239 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (value!201240 (h!46362 suffixTokens!72))))))))

(declare-fun b!3861411 () Bool)

(assert (=> b!3861411 (= e!2387237 (= (size!30791 (h!46362 suffixTokens!72)) (size!30792 (originalCharacters!6937 (h!46362 suffixTokens!72)))))))

(assert (= (and d!1144460 res!1563602) b!3861410))

(assert (= (and b!3861410 res!1563603) b!3861411))

(declare-fun b_lambda!112865 () Bool)

(assert (=> (not b_lambda!112865) (not b!3861410)))

(declare-fun t!313474 () Bool)

(declare-fun tb!223703 () Bool)

(assert (=> (and b!3861071 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313474) tb!223703))

(declare-fun b!3861416 () Bool)

(declare-fun e!2387240 () Bool)

(declare-fun tp!1170522 () Bool)

(declare-fun inv!55109 (Conc!12548) Bool)

(assert (=> b!3861416 (= e!2387240 (and (inv!55109 (c!672198 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (value!201240 (h!46362 suffixTokens!72))))) tp!1170522))))

(declare-fun result!272442 () Bool)

(declare-fun inv!55110 (BalanceConc!24690) Bool)

(assert (=> tb!223703 (= result!272442 (and (inv!55110 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (value!201240 (h!46362 suffixTokens!72)))) e!2387240))))

(assert (= tb!223703 b!3861416))

(declare-fun m!4416905 () Bool)

(assert (=> b!3861416 m!4416905))

(declare-fun m!4416907 () Bool)

(assert (=> tb!223703 m!4416907))

(assert (=> b!3861410 t!313474))

(declare-fun b_and!289077 () Bool)

(assert (= b_and!289049 (and (=> t!313474 result!272442) b_and!289077)))

(declare-fun t!313476 () Bool)

(declare-fun tb!223705 () Bool)

(assert (=> (and b!3861061 (= (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313476) tb!223705))

(declare-fun result!272446 () Bool)

(assert (= result!272446 result!272442))

(assert (=> b!3861410 t!313476))

(declare-fun b_and!289079 () Bool)

(assert (= b_and!289053 (and (=> t!313476 result!272446) b_and!289079)))

(declare-fun t!313478 () Bool)

(declare-fun tb!223707 () Bool)

(assert (=> (and b!3861077 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313478) tb!223707))

(declare-fun result!272448 () Bool)

(assert (= result!272448 result!272442))

(assert (=> b!3861410 t!313478))

(declare-fun b_and!289081 () Bool)

(assert (= b_and!289057 (and (=> t!313478 result!272448) b_and!289081)))

(declare-fun m!4416909 () Bool)

(assert (=> d!1144460 m!4416909))

(declare-fun m!4416911 () Bool)

(assert (=> b!3861410 m!4416911))

(assert (=> b!3861410 m!4416911))

(declare-fun m!4416913 () Bool)

(assert (=> b!3861410 m!4416913))

(declare-fun m!4416915 () Bool)

(assert (=> b!3861411 m!4416915))

(assert (=> b!3861069 d!1144460))

(declare-fun d!1144462 () Bool)

(assert (=> d!1144462 (= (isEmpty!24255 lt!1341625) (is-Nil!40942 lt!1341625))))

(assert (=> b!3861068 d!1144462))

(declare-fun d!1144464 () Bool)

(assert (=> d!1144464 (= (tail!5854 prefixTokens!80) (t!313461 prefixTokens!80))))

(assert (=> b!3861068 d!1144464))

(declare-fun b!3861422 () Bool)

(declare-fun e!2387244 () Bool)

(declare-fun lt!1341795 () tuple2!40146)

(assert (=> b!3861422 (= e!2387244 (= (_2!23207 lt!1341795) lt!1341630))))

(declare-fun b!3861423 () Bool)

(declare-fun e!2387245 () Bool)

(assert (=> b!3861423 (= e!2387245 (not (isEmpty!24255 (_1!23207 lt!1341795))))))

(declare-fun b!3861424 () Bool)

(declare-fun e!2387246 () tuple2!40146)

(declare-fun lt!1341794 () Option!8755)

(declare-fun lt!1341796 () tuple2!40146)

(assert (=> b!3861424 (= e!2387246 (tuple2!40147 (Cons!40942 (_1!23208 (v!39052 lt!1341794)) (_1!23207 lt!1341796)) (_2!23207 lt!1341796)))))

(assert (=> b!3861424 (= lt!1341796 (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341794))))))

(declare-fun d!1144468 () Bool)

(assert (=> d!1144468 e!2387244))

(declare-fun c!672252 () Bool)

(assert (=> d!1144468 (= c!672252 (> (size!30795 (_1!23207 lt!1341795)) 0))))

(assert (=> d!1144468 (= lt!1341795 e!2387246)))

(declare-fun c!672253 () Bool)

(assert (=> d!1144468 (= c!672253 (is-Some!8754 lt!1341794))))

(assert (=> d!1144468 (= lt!1341794 (maxPrefix!3230 thiss!20629 rules!2768 lt!1341630))))

(assert (=> d!1144468 (= (lexList!1694 thiss!20629 rules!2768 lt!1341630) lt!1341795)))

(declare-fun b!3861425 () Bool)

(assert (=> b!3861425 (= e!2387244 e!2387245)))

(declare-fun res!1563605 () Bool)

(assert (=> b!3861425 (= res!1563605 (< (size!30792 (_2!23207 lt!1341795)) (size!30792 lt!1341630)))))

(assert (=> b!3861425 (=> (not res!1563605) (not e!2387245))))

(declare-fun b!3861426 () Bool)

(assert (=> b!3861426 (= e!2387246 (tuple2!40147 Nil!40942 lt!1341630))))

(assert (= (and d!1144468 c!672253) b!3861424))

(assert (= (and d!1144468 (not c!672253)) b!3861426))

(assert (= (and d!1144468 c!672252) b!3861425))

(assert (= (and d!1144468 (not c!672252)) b!3861422))

(assert (= (and b!3861425 res!1563605) b!3861423))

(declare-fun m!4416927 () Bool)

(assert (=> b!3861423 m!4416927))

(declare-fun m!4416929 () Bool)

(assert (=> b!3861424 m!4416929))

(declare-fun m!4416931 () Bool)

(assert (=> d!1144468 m!4416931))

(assert (=> d!1144468 m!4416505))

(declare-fun m!4416933 () Bool)

(assert (=> b!3861425 m!4416933))

(assert (=> b!3861425 m!4416591))

(assert (=> b!3861047 d!1144468))

(declare-fun d!1144470 () Bool)

(declare-fun e!2387247 () Bool)

(assert (=> d!1144470 e!2387247))

(declare-fun res!1563607 () Bool)

(assert (=> d!1144470 (=> (not res!1563607) (not e!2387247))))

(declare-fun lt!1341797 () List!41066)

(assert (=> d!1144470 (= res!1563607 (= (content!6106 lt!1341797) (set.union (content!6106 prefixTokens!80) (content!6106 suffixTokens!72))))))

(declare-fun e!2387248 () List!41066)

(assert (=> d!1144470 (= lt!1341797 e!2387248)))

(declare-fun c!672254 () Bool)

(assert (=> d!1144470 (= c!672254 (is-Nil!40942 prefixTokens!80))))

(assert (=> d!1144470 (= (++!10431 prefixTokens!80 suffixTokens!72) lt!1341797)))

(declare-fun b!3861428 () Bool)

(assert (=> b!3861428 (= e!2387248 (Cons!40942 (h!46362 prefixTokens!80) (++!10431 (t!313461 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3861429 () Bool)

(declare-fun res!1563606 () Bool)

(assert (=> b!3861429 (=> (not res!1563606) (not e!2387247))))

(assert (=> b!3861429 (= res!1563606 (= (size!30795 lt!1341797) (+ (size!30795 prefixTokens!80) (size!30795 suffixTokens!72))))))

(declare-fun b!3861430 () Bool)

(assert (=> b!3861430 (= e!2387247 (or (not (= suffixTokens!72 Nil!40942)) (= lt!1341797 prefixTokens!80)))))

(declare-fun b!3861427 () Bool)

(assert (=> b!3861427 (= e!2387248 suffixTokens!72)))

(assert (= (and d!1144470 c!672254) b!3861427))

(assert (= (and d!1144470 (not c!672254)) b!3861428))

(assert (= (and d!1144470 res!1563607) b!3861429))

(assert (= (and b!3861429 res!1563606) b!3861430))

(declare-fun m!4416935 () Bool)

(assert (=> d!1144470 m!4416935))

(declare-fun m!4416937 () Bool)

(assert (=> d!1144470 m!4416937))

(assert (=> d!1144470 m!4416739))

(declare-fun m!4416939 () Bool)

(assert (=> b!3861428 m!4416939))

(declare-fun m!4416941 () Bool)

(assert (=> b!3861429 m!4416941))

(declare-fun m!4416943 () Bool)

(assert (=> b!3861429 m!4416943))

(assert (=> b!3861429 m!4416747))

(assert (=> b!3861047 d!1144470))

(declare-fun b!3861441 () Bool)

(declare-fun res!1563612 () Bool)

(declare-fun e!2387253 () Bool)

(assert (=> b!3861441 (=> (not res!1563612) (not e!2387253))))

(declare-fun lt!1341800 () List!41065)

(assert (=> b!3861441 (= res!1563612 (= (size!30792 lt!1341800) (+ (size!30792 prefix!426) (size!30792 suffix!1176))))))

(declare-fun b!3861442 () Bool)

(assert (=> b!3861442 (= e!2387253 (or (not (= suffix!1176 Nil!40941)) (= lt!1341800 prefix!426)))))

(declare-fun d!1144472 () Bool)

(assert (=> d!1144472 e!2387253))

(declare-fun res!1563613 () Bool)

(assert (=> d!1144472 (=> (not res!1563613) (not e!2387253))))

(declare-fun content!6107 (List!41065) (Set C!22670))

(assert (=> d!1144472 (= res!1563613 (= (content!6107 lt!1341800) (set.union (content!6107 prefix!426) (content!6107 suffix!1176))))))

(declare-fun e!2387254 () List!41065)

(assert (=> d!1144472 (= lt!1341800 e!2387254)))

(declare-fun c!672257 () Bool)

(assert (=> d!1144472 (= c!672257 (is-Nil!40941 prefix!426))))

(assert (=> d!1144472 (= (++!10432 prefix!426 suffix!1176) lt!1341800)))

(declare-fun b!3861440 () Bool)

(assert (=> b!3861440 (= e!2387254 (Cons!40941 (h!46361 prefix!426) (++!10432 (t!313460 prefix!426) suffix!1176)))))

(declare-fun b!3861439 () Bool)

(assert (=> b!3861439 (= e!2387254 suffix!1176)))

(assert (= (and d!1144472 c!672257) b!3861439))

(assert (= (and d!1144472 (not c!672257)) b!3861440))

(assert (= (and d!1144472 res!1563613) b!3861441))

(assert (= (and b!3861441 res!1563612) b!3861442))

(declare-fun m!4416945 () Bool)

(assert (=> b!3861441 m!4416945))

(assert (=> b!3861441 m!4416593))

(assert (=> b!3861441 m!4416563))

(declare-fun m!4416947 () Bool)

(assert (=> d!1144472 m!4416947))

(declare-fun m!4416949 () Bool)

(assert (=> d!1144472 m!4416949))

(declare-fun m!4416951 () Bool)

(assert (=> d!1144472 m!4416951))

(declare-fun m!4416953 () Bool)

(assert (=> b!3861440 m!4416953))

(assert (=> b!3861047 d!1144472))

(declare-fun d!1144474 () Bool)

(assert (=> d!1144474 (= (inv!55102 (tag!7197 (h!46363 rules!2768))) (= (mod (str.len (value!201239 (tag!7197 (h!46363 rules!2768)))) 2) 0))))

(assert (=> b!3861070 d!1144474))

(declare-fun d!1144476 () Bool)

(declare-fun res!1563616 () Bool)

(declare-fun e!2387259 () Bool)

(assert (=> d!1144476 (=> (not res!1563616) (not e!2387259))))

(declare-fun semiInverseModEq!2719 (Int Int) Bool)

(assert (=> d!1144476 (= res!1563616 (semiInverseModEq!2719 (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toValue!8765 (transformation!6337 (h!46363 rules!2768)))))))

(assert (=> d!1144476 (= (inv!55106 (transformation!6337 (h!46363 rules!2768))) e!2387259)))

(declare-fun b!3861449 () Bool)

(declare-fun equivClasses!2618 (Int Int) Bool)

(assert (=> b!3861449 (= e!2387259 (equivClasses!2618 (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toValue!8765 (transformation!6337 (h!46363 rules!2768)))))))

(assert (= (and d!1144476 res!1563616) b!3861449))

(declare-fun m!4416955 () Bool)

(assert (=> d!1144476 m!4416955))

(declare-fun m!4416957 () Bool)

(assert (=> b!3861449 m!4416957))

(assert (=> b!3861070 d!1144476))

(declare-fun d!1144478 () Bool)

(declare-fun lt!1341803 () Int)

(assert (=> d!1144478 (>= lt!1341803 0)))

(declare-fun e!2387260 () Int)

(assert (=> d!1144478 (= lt!1341803 e!2387260)))

(declare-fun c!672260 () Bool)

(assert (=> d!1144478 (= c!672260 (is-Nil!40941 suffix!1176))))

(assert (=> d!1144478 (= (size!30792 suffix!1176) lt!1341803)))

(declare-fun b!3861450 () Bool)

(assert (=> b!3861450 (= e!2387260 0)))

(declare-fun b!3861451 () Bool)

(assert (=> b!3861451 (= e!2387260 (+ 1 (size!30792 (t!313460 suffix!1176))))))

(assert (= (and d!1144478 c!672260) b!3861450))

(assert (= (and d!1144478 (not c!672260)) b!3861451))

(declare-fun m!4416959 () Bool)

(assert (=> b!3861451 m!4416959))

(assert (=> b!3861049 d!1144478))

(declare-fun d!1144480 () Bool)

(declare-fun lt!1341804 () Int)

(assert (=> d!1144480 (>= lt!1341804 0)))

(declare-fun e!2387261 () Int)

(assert (=> d!1144480 (= lt!1341804 e!2387261)))

(declare-fun c!672261 () Bool)

(assert (=> d!1144480 (= c!672261 (is-Nil!40941 (_2!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144480 (= (size!30792 (_2!23208 (v!39052 lt!1341632))) lt!1341804)))

(declare-fun b!3861452 () Bool)

(assert (=> b!3861452 (= e!2387261 0)))

(declare-fun b!3861453 () Bool)

(assert (=> b!3861453 (= e!2387261 (+ 1 (size!30792 (t!313460 (_2!23208 (v!39052 lt!1341632))))))))

(assert (= (and d!1144480 c!672261) b!3861452))

(assert (= (and d!1144480 (not c!672261)) b!3861453))

(declare-fun m!4416961 () Bool)

(assert (=> b!3861453 m!4416961))

(assert (=> b!3861049 d!1144480))

(declare-fun d!1144482 () Bool)

(declare-fun lt!1341805 () Int)

(assert (=> d!1144482 (>= lt!1341805 0)))

(declare-fun e!2387263 () Int)

(assert (=> d!1144482 (= lt!1341805 e!2387263)))

(declare-fun c!672263 () Bool)

(assert (=> d!1144482 (= c!672263 (is-Nil!40941 (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632)))))))

(assert (=> d!1144482 (= (size!30792 (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632)))) lt!1341805)))

(declare-fun b!3861458 () Bool)

(assert (=> b!3861458 (= e!2387263 0)))

(declare-fun b!3861459 () Bool)

(assert (=> b!3861459 (= e!2387263 (+ 1 (size!30792 (t!313460 (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632)))))))))

(assert (= (and d!1144482 c!672263) b!3861458))

(assert (= (and d!1144482 (not c!672263)) b!3861459))

(declare-fun m!4416963 () Bool)

(assert (=> b!3861459 m!4416963))

(assert (=> b!3861048 d!1144482))

(declare-fun d!1144484 () Bool)

(assert (=> d!1144484 (= (inv!55102 (tag!7197 (rule!9207 (h!46362 suffixTokens!72)))) (= (mod (str.len (value!201239 (tag!7197 (rule!9207 (h!46362 suffixTokens!72))))) 2) 0))))

(assert (=> b!3861045 d!1144484))

(declare-fun d!1144486 () Bool)

(declare-fun res!1563617 () Bool)

(declare-fun e!2387267 () Bool)

(assert (=> d!1144486 (=> (not res!1563617) (not e!2387267))))

(assert (=> d!1144486 (= res!1563617 (semiInverseModEq!2719 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toValue!8765 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))))))

(assert (=> d!1144486 (= (inv!55106 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) e!2387267)))

(declare-fun b!3861464 () Bool)

(assert (=> b!3861464 (= e!2387267 (equivClasses!2618 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toValue!8765 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))))))

(assert (= (and d!1144486 res!1563617) b!3861464))

(declare-fun m!4416965 () Bool)

(assert (=> d!1144486 m!4416965))

(declare-fun m!4416967 () Bool)

(assert (=> b!3861464 m!4416967))

(assert (=> b!3861045 d!1144486))

(declare-fun b!3861491 () Bool)

(declare-fun e!2387282 () Bool)

(declare-fun inv!15 (TokenValue!6567) Bool)

(assert (=> b!3861491 (= e!2387282 (inv!15 (value!201240 (h!46362 prefixTokens!80))))))

(declare-fun b!3861492 () Bool)

(declare-fun e!2387284 () Bool)

(declare-fun e!2387283 () Bool)

(assert (=> b!3861492 (= e!2387284 e!2387283)))

(declare-fun c!672271 () Bool)

(assert (=> b!3861492 (= c!672271 (is-IntegerValue!19702 (value!201240 (h!46362 prefixTokens!80))))))

(declare-fun d!1144488 () Bool)

(declare-fun c!672272 () Bool)

(assert (=> d!1144488 (= c!672272 (is-IntegerValue!19701 (value!201240 (h!46362 prefixTokens!80))))))

(assert (=> d!1144488 (= (inv!21 (value!201240 (h!46362 prefixTokens!80))) e!2387284)))

(declare-fun b!3861493 () Bool)

(declare-fun inv!17 (TokenValue!6567) Bool)

(assert (=> b!3861493 (= e!2387283 (inv!17 (value!201240 (h!46362 prefixTokens!80))))))

(declare-fun b!3861494 () Bool)

(declare-fun res!1563636 () Bool)

(assert (=> b!3861494 (=> res!1563636 e!2387282)))

(assert (=> b!3861494 (= res!1563636 (not (is-IntegerValue!19703 (value!201240 (h!46362 prefixTokens!80)))))))

(assert (=> b!3861494 (= e!2387283 e!2387282)))

(declare-fun b!3861495 () Bool)

(declare-fun inv!16 (TokenValue!6567) Bool)

(assert (=> b!3861495 (= e!2387284 (inv!16 (value!201240 (h!46362 prefixTokens!80))))))

(assert (= (and d!1144488 c!672272) b!3861495))

(assert (= (and d!1144488 (not c!672272)) b!3861492))

(assert (= (and b!3861492 c!672271) b!3861493))

(assert (= (and b!3861492 (not c!672271)) b!3861494))

(assert (= (and b!3861494 (not res!1563636)) b!3861491))

(declare-fun m!4416969 () Bool)

(assert (=> b!3861491 m!4416969))

(declare-fun m!4416971 () Bool)

(assert (=> b!3861493 m!4416971))

(declare-fun m!4416973 () Bool)

(assert (=> b!3861495 m!4416973))

(assert (=> b!3861044 d!1144488))

(declare-fun d!1144490 () Bool)

(assert (=> d!1144490 (= (isEmpty!24256 rules!2768) (is-Nil!40943 rules!2768))))

(assert (=> b!3861065 d!1144490))

(declare-fun b!3861496 () Bool)

(declare-fun e!2387285 () Bool)

(assert (=> b!3861496 (= e!2387285 (inv!15 (value!201240 (h!46362 suffixTokens!72))))))

(declare-fun b!3861497 () Bool)

(declare-fun e!2387287 () Bool)

(declare-fun e!2387286 () Bool)

(assert (=> b!3861497 (= e!2387287 e!2387286)))

(declare-fun c!672273 () Bool)

(assert (=> b!3861497 (= c!672273 (is-IntegerValue!19702 (value!201240 (h!46362 suffixTokens!72))))))

(declare-fun d!1144492 () Bool)

(declare-fun c!672274 () Bool)

(assert (=> d!1144492 (= c!672274 (is-IntegerValue!19701 (value!201240 (h!46362 suffixTokens!72))))))

(assert (=> d!1144492 (= (inv!21 (value!201240 (h!46362 suffixTokens!72))) e!2387287)))

(declare-fun b!3861498 () Bool)

(assert (=> b!3861498 (= e!2387286 (inv!17 (value!201240 (h!46362 suffixTokens!72))))))

(declare-fun b!3861499 () Bool)

(declare-fun res!1563637 () Bool)

(assert (=> b!3861499 (=> res!1563637 e!2387285)))

(assert (=> b!3861499 (= res!1563637 (not (is-IntegerValue!19703 (value!201240 (h!46362 suffixTokens!72)))))))

(assert (=> b!3861499 (= e!2387286 e!2387285)))

(declare-fun b!3861500 () Bool)

(assert (=> b!3861500 (= e!2387287 (inv!16 (value!201240 (h!46362 suffixTokens!72))))))

(assert (= (and d!1144492 c!672274) b!3861500))

(assert (= (and d!1144492 (not c!672274)) b!3861497))

(assert (= (and b!3861497 c!672273) b!3861498))

(assert (= (and b!3861497 (not c!672273)) b!3861499))

(assert (= (and b!3861499 (not res!1563637)) b!3861496))

(declare-fun m!4416975 () Bool)

(assert (=> b!3861496 m!4416975))

(declare-fun m!4416977 () Bool)

(assert (=> b!3861498 m!4416977))

(declare-fun m!4416979 () Bool)

(assert (=> b!3861500 m!4416979))

(assert (=> b!3861064 d!1144492))

(declare-fun d!1144494 () Bool)

(declare-fun res!1563638 () Bool)

(declare-fun e!2387288 () Bool)

(assert (=> d!1144494 (=> (not res!1563638) (not e!2387288))))

(assert (=> d!1144494 (= res!1563638 (not (isEmpty!24257 (originalCharacters!6937 (h!46362 prefixTokens!80)))))))

(assert (=> d!1144494 (= (inv!55105 (h!46362 prefixTokens!80)) e!2387288)))

(declare-fun b!3861501 () Bool)

(declare-fun res!1563639 () Bool)

(assert (=> b!3861501 (=> (not res!1563639) (not e!2387288))))

(assert (=> b!3861501 (= res!1563639 (= (originalCharacters!6937 (h!46362 prefixTokens!80)) (list!15239 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (value!201240 (h!46362 prefixTokens!80))))))))

(declare-fun b!3861502 () Bool)

(assert (=> b!3861502 (= e!2387288 (= (size!30791 (h!46362 prefixTokens!80)) (size!30792 (originalCharacters!6937 (h!46362 prefixTokens!80)))))))

(assert (= (and d!1144494 res!1563638) b!3861501))

(assert (= (and b!3861501 res!1563639) b!3861502))

(declare-fun b_lambda!112867 () Bool)

(assert (=> (not b_lambda!112867) (not b!3861501)))

(declare-fun t!313480 () Bool)

(declare-fun tb!223709 () Bool)

(assert (=> (and b!3861071 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313480) tb!223709))

(declare-fun b!3861503 () Bool)

(declare-fun e!2387289 () Bool)

(declare-fun tp!1170523 () Bool)

(assert (=> b!3861503 (= e!2387289 (and (inv!55109 (c!672198 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (value!201240 (h!46362 prefixTokens!80))))) tp!1170523))))

(declare-fun result!272450 () Bool)

(assert (=> tb!223709 (= result!272450 (and (inv!55110 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (value!201240 (h!46362 prefixTokens!80)))) e!2387289))))

(assert (= tb!223709 b!3861503))

(declare-fun m!4416981 () Bool)

(assert (=> b!3861503 m!4416981))

(declare-fun m!4416983 () Bool)

(assert (=> tb!223709 m!4416983))

(assert (=> b!3861501 t!313480))

(declare-fun b_and!289083 () Bool)

(assert (= b_and!289077 (and (=> t!313480 result!272450) b_and!289083)))

(declare-fun tb!223711 () Bool)

(declare-fun t!313482 () Bool)

(assert (=> (and b!3861061 (= (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313482) tb!223711))

(declare-fun result!272452 () Bool)

(assert (= result!272452 result!272450))

(assert (=> b!3861501 t!313482))

(declare-fun b_and!289085 () Bool)

(assert (= b_and!289079 (and (=> t!313482 result!272452) b_and!289085)))

(declare-fun t!313484 () Bool)

(declare-fun tb!223713 () Bool)

(assert (=> (and b!3861077 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313484) tb!223713))

(declare-fun result!272454 () Bool)

(assert (= result!272454 result!272450))

(assert (=> b!3861501 t!313484))

(declare-fun b_and!289087 () Bool)

(assert (= b_and!289081 (and (=> t!313484 result!272454) b_and!289087)))

(declare-fun m!4416985 () Bool)

(assert (=> d!1144494 m!4416985))

(declare-fun m!4416987 () Bool)

(assert (=> b!3861501 m!4416987))

(assert (=> b!3861501 m!4416987))

(declare-fun m!4416989 () Bool)

(assert (=> b!3861501 m!4416989))

(declare-fun m!4416991 () Bool)

(assert (=> b!3861502 m!4416991))

(assert (=> b!3861043 d!1144494))

(declare-fun d!1144496 () Bool)

(assert (=> d!1144496 (= (inv!55102 (tag!7197 (rule!9207 (h!46362 prefixTokens!80)))) (= (mod (str.len (value!201239 (tag!7197 (rule!9207 (h!46362 prefixTokens!80))))) 2) 0))))

(assert (=> b!3861060 d!1144496))

(declare-fun d!1144498 () Bool)

(declare-fun res!1563640 () Bool)

(declare-fun e!2387290 () Bool)

(assert (=> d!1144498 (=> (not res!1563640) (not e!2387290))))

(assert (=> d!1144498 (= res!1563640 (semiInverseModEq!2719 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toValue!8765 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))))))

(assert (=> d!1144498 (= (inv!55106 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) e!2387290)))

(declare-fun b!3861504 () Bool)

(assert (=> b!3861504 (= e!2387290 (equivClasses!2618 (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toValue!8765 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))))))

(assert (= (and d!1144498 res!1563640) b!3861504))

(declare-fun m!4416993 () Bool)

(assert (=> d!1144498 m!4416993))

(declare-fun m!4416995 () Bool)

(assert (=> b!3861504 m!4416995))

(assert (=> b!3861060 d!1144498))

(declare-fun d!1144500 () Bool)

(assert (=> d!1144500 (= (isEmpty!24255 prefixTokens!80) (is-Nil!40942 prefixTokens!80))))

(assert (=> b!3861062 d!1144500))

(declare-fun d!1144502 () Bool)

(declare-fun e!2387291 () Bool)

(assert (=> d!1144502 e!2387291))

(declare-fun res!1563642 () Bool)

(assert (=> d!1144502 (=> (not res!1563642) (not e!2387291))))

(declare-fun lt!1341806 () List!41066)

(assert (=> d!1144502 (= res!1563642 (= (content!6106 lt!1341806) (set.union (content!6106 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942)) (content!6106 (_1!23207 lt!1341627)))))))

(declare-fun e!2387292 () List!41066)

(assert (=> d!1144502 (= lt!1341806 e!2387292)))

(declare-fun c!672275 () Bool)

(assert (=> d!1144502 (= c!672275 (is-Nil!40942 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942)))))

(assert (=> d!1144502 (= (++!10431 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942) (_1!23207 lt!1341627)) lt!1341806)))

(declare-fun b!3861506 () Bool)

(assert (=> b!3861506 (= e!2387292 (Cons!40942 (h!46362 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942)) (++!10431 (t!313461 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942)) (_1!23207 lt!1341627))))))

(declare-fun b!3861507 () Bool)

(declare-fun res!1563641 () Bool)

(assert (=> b!3861507 (=> (not res!1563641) (not e!2387291))))

(assert (=> b!3861507 (= res!1563641 (= (size!30795 lt!1341806) (+ (size!30795 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942)) (size!30795 (_1!23207 lt!1341627)))))))

(declare-fun b!3861508 () Bool)

(assert (=> b!3861508 (= e!2387291 (or (not (= (_1!23207 lt!1341627) Nil!40942)) (= lt!1341806 (Cons!40942 (_1!23208 (v!39052 lt!1341632)) Nil!40942))))))

(declare-fun b!3861505 () Bool)

(assert (=> b!3861505 (= e!2387292 (_1!23207 lt!1341627))))

(assert (= (and d!1144502 c!672275) b!3861505))

(assert (= (and d!1144502 (not c!672275)) b!3861506))

(assert (= (and d!1144502 res!1563642) b!3861507))

(assert (= (and b!3861507 res!1563641) b!3861508))

(declare-fun m!4416997 () Bool)

(assert (=> d!1144502 m!4416997))

(declare-fun m!4416999 () Bool)

(assert (=> d!1144502 m!4416999))

(declare-fun m!4417001 () Bool)

(assert (=> d!1144502 m!4417001))

(declare-fun m!4417003 () Bool)

(assert (=> b!3861506 m!4417003))

(declare-fun m!4417005 () Bool)

(assert (=> b!3861507 m!4417005))

(declare-fun m!4417007 () Bool)

(assert (=> b!3861507 m!4417007))

(declare-fun m!4417009 () Bool)

(assert (=> b!3861507 m!4417009))

(assert (=> b!3861059 d!1144502))

(declare-fun d!1144504 () Bool)

(assert (=> d!1144504 (= (isEmpty!24257 prefix!426) (is-Nil!40941 prefix!426))))

(assert (=> b!3861076 d!1144504))

(declare-fun d!1144506 () Bool)

(declare-fun lt!1341807 () Int)

(assert (=> d!1144506 (>= lt!1341807 0)))

(declare-fun e!2387293 () Int)

(assert (=> d!1144506 (= lt!1341807 e!2387293)))

(declare-fun c!672276 () Bool)

(assert (=> d!1144506 (= c!672276 (is-Nil!40941 (_2!23208 lt!1341634)))))

(assert (=> d!1144506 (= (size!30792 (_2!23208 lt!1341634)) lt!1341807)))

(declare-fun b!3861509 () Bool)

(assert (=> b!3861509 (= e!2387293 0)))

(declare-fun b!3861510 () Bool)

(assert (=> b!3861510 (= e!2387293 (+ 1 (size!30792 (t!313460 (_2!23208 lt!1341634)))))))

(assert (= (and d!1144506 c!672276) b!3861509))

(assert (= (and d!1144506 (not c!672276)) b!3861510))

(declare-fun m!4417011 () Bool)

(assert (=> b!3861510 m!4417011))

(assert (=> b!3861055 d!1144506))

(declare-fun d!1144508 () Bool)

(assert (=> d!1144508 (= (head!8143 prefixTokens!80) (h!46362 prefixTokens!80))))

(assert (=> b!3861057 d!1144508))

(declare-fun d!1144510 () Bool)

(assert (=> d!1144510 (= (get!13546 lt!1341632) (v!39052 lt!1341632))))

(assert (=> b!3861057 d!1144510))

(declare-fun d!1144512 () Bool)

(assert (=> d!1144512 (ruleValid!2289 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))

(declare-fun lt!1341811 () Unit!58597)

(declare-fun choose!22738 (LexerInterface!5926 Rule!12474 List!41067) Unit!58597)

(assert (=> d!1144512 (= lt!1341811 (choose!22738 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) rules!2768))))

(assert (=> d!1144512 (contains!8270 rules!2768 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144512 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1369 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632))) rules!2768) lt!1341811)))

(declare-fun bs!583188 () Bool)

(assert (= bs!583188 d!1144512))

(assert (=> bs!583188 m!4416533))

(declare-fun m!4417029 () Bool)

(assert (=> bs!583188 m!4417029))

(declare-fun m!4417031 () Bool)

(assert (=> bs!583188 m!4417031))

(assert (=> b!3861056 d!1144512))

(declare-fun d!1144516 () Bool)

(assert (=> d!1144516 (= (size!30791 (_1!23208 (v!39052 lt!1341632))) (size!30792 (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632)))))))

(declare-fun Unit!58602 () Unit!58597)

(assert (=> d!1144516 (= (lemmaCharactersSize!998 (_1!23208 (v!39052 lt!1341632))) Unit!58602)))

(declare-fun bs!583189 () Bool)

(assert (= bs!583189 d!1144516))

(assert (=> bs!583189 m!4416497))

(assert (=> b!3861056 d!1144516))

(declare-fun d!1144518 () Bool)

(declare-fun dynLambda!17661 (Int BalanceConc!24690) TokenValue!6567)

(assert (=> d!1144518 (= (apply!9580 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (seqFromList!4608 lt!1341645)) (dynLambda!17661 (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))) (seqFromList!4608 lt!1341645)))))

(declare-fun b_lambda!112869 () Bool)

(assert (=> (not b_lambda!112869) (not d!1144518)))

(declare-fun tb!223715 () Bool)

(declare-fun t!313486 () Bool)

(assert (=> (and b!3861071 (= (toValue!8765 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313486) tb!223715))

(declare-fun result!272456 () Bool)

(assert (=> tb!223715 (= result!272456 (inv!21 (dynLambda!17661 (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))) (seqFromList!4608 lt!1341645))))))

(declare-fun m!4417033 () Bool)

(assert (=> tb!223715 m!4417033))

(assert (=> d!1144518 t!313486))

(declare-fun b_and!289089 () Bool)

(assert (= b_and!289047 (and (=> t!313486 result!272456) b_and!289089)))

(declare-fun tb!223717 () Bool)

(declare-fun t!313488 () Bool)

(assert (=> (and b!3861061 (= (toValue!8765 (transformation!6337 (h!46363 rules!2768))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313488) tb!223717))

(declare-fun result!272460 () Bool)

(assert (= result!272460 result!272456))

(assert (=> d!1144518 t!313488))

(declare-fun b_and!289091 () Bool)

(assert (= b_and!289051 (and (=> t!313488 result!272460) b_and!289091)))

(declare-fun t!313490 () Bool)

(declare-fun tb!223719 () Bool)

(assert (=> (and b!3861077 (= (toValue!8765 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313490) tb!223719))

(declare-fun result!272462 () Bool)

(assert (= result!272462 result!272456))

(assert (=> d!1144518 t!313490))

(declare-fun b_and!289093 () Bool)

(assert (= b_and!289055 (and (=> t!313490 result!272462) b_and!289093)))

(assert (=> d!1144518 m!4416515))

(declare-fun m!4417035 () Bool)

(assert (=> d!1144518 m!4417035))

(assert (=> b!3861056 d!1144518))

(declare-fun d!1144520 () Bool)

(assert (=> d!1144520 (= (_2!23208 (v!39052 lt!1341632)) lt!1341624)))

(declare-fun lt!1341814 () Unit!58597)

(declare-fun choose!22739 (List!41065 List!41065 List!41065 List!41065 List!41065) Unit!58597)

(assert (=> d!1144520 (= lt!1341814 (choose!22739 lt!1341645 (_2!23208 (v!39052 lt!1341632)) lt!1341645 lt!1341624 lt!1341630))))

(assert (=> d!1144520 (isPrefix!3436 lt!1341645 lt!1341630)))

(assert (=> d!1144520 (= (lemmaSamePrefixThenSameSuffix!1657 lt!1341645 (_2!23208 (v!39052 lt!1341632)) lt!1341645 lt!1341624 lt!1341630) lt!1341814)))

(declare-fun bs!583190 () Bool)

(assert (= bs!583190 d!1144520))

(declare-fun m!4417037 () Bool)

(assert (=> bs!583190 m!4417037))

(declare-fun m!4417039 () Bool)

(assert (=> bs!583190 m!4417039))

(assert (=> b!3861056 d!1144520))

(declare-fun d!1144522 () Bool)

(declare-fun res!1563655 () Bool)

(declare-fun e!2387306 () Bool)

(assert (=> d!1144522 (=> (not res!1563655) (not e!2387306))))

(assert (=> d!1144522 (= res!1563655 (validRegex!5117 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))))))

(assert (=> d!1144522 (= (ruleValid!2289 thiss!20629 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) e!2387306)))

(declare-fun b!3861531 () Bool)

(declare-fun res!1563656 () Bool)

(assert (=> b!3861531 (=> (not res!1563656) (not e!2387306))))

(assert (=> b!3861531 (= res!1563656 (not (nullable!3918 (regex!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))))))

(declare-fun b!3861532 () Bool)

(assert (=> b!3861532 (= e!2387306 (not (= (tag!7197 (rule!9207 (_1!23208 (v!39052 lt!1341632)))) (String!46556 ""))))))

(assert (= (and d!1144522 res!1563655) b!3861531))

(assert (= (and b!3861531 res!1563656) b!3861532))

(assert (=> d!1144522 m!4416787))

(assert (=> b!3861531 m!4416789))

(assert (=> b!3861056 d!1144522))

(declare-fun d!1144524 () Bool)

(declare-fun lt!1341817 () BalanceConc!24690)

(assert (=> d!1144524 (= (list!15239 lt!1341817) (originalCharacters!6937 (_1!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144524 (= lt!1341817 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))) (value!201240 (_1!23208 (v!39052 lt!1341632)))))))

(assert (=> d!1144524 (= (charsOf!4165 (_1!23208 (v!39052 lt!1341632))) lt!1341817)))

(declare-fun b_lambda!112871 () Bool)

(assert (=> (not b_lambda!112871) (not d!1144524)))

(declare-fun t!313492 () Bool)

(declare-fun tb!223721 () Bool)

(assert (=> (and b!3861071 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313492) tb!223721))

(declare-fun b!3861533 () Bool)

(declare-fun e!2387307 () Bool)

(declare-fun tp!1170524 () Bool)

(assert (=> b!3861533 (= e!2387307 (and (inv!55109 (c!672198 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))) (value!201240 (_1!23208 (v!39052 lt!1341632)))))) tp!1170524))))

(declare-fun result!272464 () Bool)

(assert (=> tb!223721 (= result!272464 (and (inv!55110 (dynLambda!17659 (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632))))) (value!201240 (_1!23208 (v!39052 lt!1341632))))) e!2387307))))

(assert (= tb!223721 b!3861533))

(declare-fun m!4417041 () Bool)

(assert (=> b!3861533 m!4417041))

(declare-fun m!4417043 () Bool)

(assert (=> tb!223721 m!4417043))

(assert (=> d!1144524 t!313492))

(declare-fun b_and!289095 () Bool)

(assert (= b_and!289083 (and (=> t!313492 result!272464) b_and!289095)))

(declare-fun t!313494 () Bool)

(declare-fun tb!223723 () Bool)

(assert (=> (and b!3861061 (= (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313494) tb!223723))

(declare-fun result!272466 () Bool)

(assert (= result!272466 result!272464))

(assert (=> d!1144524 t!313494))

(declare-fun b_and!289097 () Bool)

(assert (= b_and!289085 (and (=> t!313494 result!272466) b_and!289097)))

(declare-fun t!313496 () Bool)

(declare-fun tb!223725 () Bool)

(assert (=> (and b!3861077 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313496) tb!223725))

(declare-fun result!272468 () Bool)

(assert (= result!272468 result!272464))

(assert (=> d!1144524 t!313496))

(declare-fun b_and!289099 () Bool)

(assert (= b_and!289087 (and (=> t!313496 result!272468) b_and!289099)))

(declare-fun m!4417045 () Bool)

(assert (=> d!1144524 m!4417045))

(declare-fun m!4417047 () Bool)

(assert (=> d!1144524 m!4417047))

(assert (=> b!3861056 d!1144524))

(declare-fun b!3861534 () Bool)

(declare-fun e!2387308 () Bool)

(declare-fun lt!1341819 () tuple2!40146)

(assert (=> b!3861534 (= e!2387308 (= (_2!23207 lt!1341819) (_2!23208 (v!39052 lt!1341632))))))

(declare-fun b!3861535 () Bool)

(declare-fun e!2387309 () Bool)

(assert (=> b!3861535 (= e!2387309 (not (isEmpty!24255 (_1!23207 lt!1341819))))))

(declare-fun b!3861536 () Bool)

(declare-fun e!2387310 () tuple2!40146)

(declare-fun lt!1341818 () Option!8755)

(declare-fun lt!1341820 () tuple2!40146)

(assert (=> b!3861536 (= e!2387310 (tuple2!40147 (Cons!40942 (_1!23208 (v!39052 lt!1341818)) (_1!23207 lt!1341820)) (_2!23207 lt!1341820)))))

(assert (=> b!3861536 (= lt!1341820 (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341818))))))

(declare-fun d!1144526 () Bool)

(assert (=> d!1144526 e!2387308))

(declare-fun c!672280 () Bool)

(assert (=> d!1144526 (= c!672280 (> (size!30795 (_1!23207 lt!1341819)) 0))))

(assert (=> d!1144526 (= lt!1341819 e!2387310)))

(declare-fun c!672281 () Bool)

(assert (=> d!1144526 (= c!672281 (is-Some!8754 lt!1341818))))

(assert (=> d!1144526 (= lt!1341818 (maxPrefix!3230 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144526 (= (lexList!1694 thiss!20629 rules!2768 (_2!23208 (v!39052 lt!1341632))) lt!1341819)))

(declare-fun b!3861537 () Bool)

(assert (=> b!3861537 (= e!2387308 e!2387309)))

(declare-fun res!1563657 () Bool)

(assert (=> b!3861537 (= res!1563657 (< (size!30792 (_2!23207 lt!1341819)) (size!30792 (_2!23208 (v!39052 lt!1341632)))))))

(assert (=> b!3861537 (=> (not res!1563657) (not e!2387309))))

(declare-fun b!3861538 () Bool)

(assert (=> b!3861538 (= e!2387310 (tuple2!40147 Nil!40942 (_2!23208 (v!39052 lt!1341632))))))

(assert (= (and d!1144526 c!672281) b!3861536))

(assert (= (and d!1144526 (not c!672281)) b!3861538))

(assert (= (and d!1144526 c!672280) b!3861537))

(assert (= (and d!1144526 (not c!672280)) b!3861534))

(assert (= (and b!3861537 res!1563657) b!3861535))

(declare-fun m!4417049 () Bool)

(assert (=> b!3861535 m!4417049))

(declare-fun m!4417051 () Bool)

(assert (=> b!3861536 m!4417051))

(declare-fun m!4417053 () Bool)

(assert (=> d!1144526 m!4417053))

(declare-fun m!4417055 () Bool)

(assert (=> d!1144526 m!4417055))

(declare-fun m!4417057 () Bool)

(assert (=> b!3861537 m!4417057))

(assert (=> b!3861537 m!4416565))

(assert (=> b!3861056 d!1144526))

(declare-fun d!1144528 () Bool)

(assert (=> d!1144528 (isPrefix!3436 lt!1341645 (++!10432 lt!1341645 (_2!23208 (v!39052 lt!1341632))))))

(declare-fun lt!1341823 () Unit!58597)

(declare-fun choose!22740 (List!41065 List!41065) Unit!58597)

(assert (=> d!1144528 (= lt!1341823 (choose!22740 lt!1341645 (_2!23208 (v!39052 lt!1341632))))))

(assert (=> d!1144528 (= (lemmaConcatTwoListThenFirstIsPrefix!2299 lt!1341645 (_2!23208 (v!39052 lt!1341632))) lt!1341823)))

(declare-fun bs!583191 () Bool)

(assert (= bs!583191 d!1144528))

(assert (=> bs!583191 m!4416507))

(assert (=> bs!583191 m!4416507))

(declare-fun m!4417059 () Bool)

(assert (=> bs!583191 m!4417059))

(declare-fun m!4417061 () Bool)

(assert (=> bs!583191 m!4417061))

(assert (=> b!3861056 d!1144528))

(declare-fun d!1144530 () Bool)

(declare-fun fromListB!2128 (List!41065) BalanceConc!24690)

(assert (=> d!1144530 (= (seqFromList!4608 lt!1341645) (fromListB!2128 lt!1341645))))

(declare-fun bs!583192 () Bool)

(assert (= bs!583192 d!1144530))

(declare-fun m!4417063 () Bool)

(assert (=> bs!583192 m!4417063))

(assert (=> b!3861056 d!1144530))

(declare-fun b!3861550 () Bool)

(declare-fun e!2387318 () Bool)

(assert (=> b!3861550 (= e!2387318 (>= (size!30792 lt!1341629) (size!30792 lt!1341645)))))

(declare-fun b!3861549 () Bool)

(declare-fun e!2387317 () Bool)

(assert (=> b!3861549 (= e!2387317 (isPrefix!3436 (tail!5856 lt!1341645) (tail!5856 lt!1341629)))))

(declare-fun d!1144532 () Bool)

(assert (=> d!1144532 e!2387318))

(declare-fun res!1563667 () Bool)

(assert (=> d!1144532 (=> res!1563667 e!2387318)))

(declare-fun lt!1341826 () Bool)

(assert (=> d!1144532 (= res!1563667 (not lt!1341826))))

(declare-fun e!2387319 () Bool)

(assert (=> d!1144532 (= lt!1341826 e!2387319)))

(declare-fun res!1563666 () Bool)

(assert (=> d!1144532 (=> res!1563666 e!2387319)))

(assert (=> d!1144532 (= res!1563666 (is-Nil!40941 lt!1341645))))

(assert (=> d!1144532 (= (isPrefix!3436 lt!1341645 lt!1341629) lt!1341826)))

(declare-fun b!3861547 () Bool)

(assert (=> b!3861547 (= e!2387319 e!2387317)))

(declare-fun res!1563668 () Bool)

(assert (=> b!3861547 (=> (not res!1563668) (not e!2387317))))

(assert (=> b!3861547 (= res!1563668 (not (is-Nil!40941 lt!1341629)))))

(declare-fun b!3861548 () Bool)

(declare-fun res!1563669 () Bool)

(assert (=> b!3861548 (=> (not res!1563669) (not e!2387317))))

(assert (=> b!3861548 (= res!1563669 (= (head!8145 lt!1341645) (head!8145 lt!1341629)))))

(assert (= (and d!1144532 (not res!1563666)) b!3861547))

(assert (= (and b!3861547 res!1563668) b!3861548))

(assert (= (and b!3861548 res!1563669) b!3861549))

(assert (= (and d!1144532 (not res!1563667)) b!3861550))

(declare-fun m!4417065 () Bool)

(assert (=> b!3861550 m!4417065))

(assert (=> b!3861550 m!4416527))

(assert (=> b!3861549 m!4416781))

(declare-fun m!4417067 () Bool)

(assert (=> b!3861549 m!4417067))

(assert (=> b!3861549 m!4416781))

(assert (=> b!3861549 m!4417067))

(declare-fun m!4417069 () Bool)

(assert (=> b!3861549 m!4417069))

(assert (=> b!3861548 m!4416777))

(declare-fun m!4417071 () Bool)

(assert (=> b!3861548 m!4417071))

(assert (=> b!3861056 d!1144532))

(declare-fun b!3861553 () Bool)

(declare-fun res!1563670 () Bool)

(declare-fun e!2387320 () Bool)

(assert (=> b!3861553 (=> (not res!1563670) (not e!2387320))))

(declare-fun lt!1341827 () List!41065)

(assert (=> b!3861553 (= res!1563670 (= (size!30792 lt!1341827) (+ (size!30792 lt!1341645) (size!30792 (_2!23208 (v!39052 lt!1341632))))))))

(declare-fun b!3861554 () Bool)

(assert (=> b!3861554 (= e!2387320 (or (not (= (_2!23208 (v!39052 lt!1341632)) Nil!40941)) (= lt!1341827 lt!1341645)))))

(declare-fun d!1144534 () Bool)

(assert (=> d!1144534 e!2387320))

(declare-fun res!1563671 () Bool)

(assert (=> d!1144534 (=> (not res!1563671) (not e!2387320))))

(assert (=> d!1144534 (= res!1563671 (= (content!6107 lt!1341827) (set.union (content!6107 lt!1341645) (content!6107 (_2!23208 (v!39052 lt!1341632))))))))

(declare-fun e!2387321 () List!41065)

(assert (=> d!1144534 (= lt!1341827 e!2387321)))

(declare-fun c!672282 () Bool)

(assert (=> d!1144534 (= c!672282 (is-Nil!40941 lt!1341645))))

(assert (=> d!1144534 (= (++!10432 lt!1341645 (_2!23208 (v!39052 lt!1341632))) lt!1341827)))

(declare-fun b!3861552 () Bool)

(assert (=> b!3861552 (= e!2387321 (Cons!40941 (h!46361 lt!1341645) (++!10432 (t!313460 lt!1341645) (_2!23208 (v!39052 lt!1341632)))))))

(declare-fun b!3861551 () Bool)

(assert (=> b!3861551 (= e!2387321 (_2!23208 (v!39052 lt!1341632)))))

(assert (= (and d!1144534 c!672282) b!3861551))

(assert (= (and d!1144534 (not c!672282)) b!3861552))

(assert (= (and d!1144534 res!1563671) b!3861553))

(assert (= (and b!3861553 res!1563670) b!3861554))

(declare-fun m!4417073 () Bool)

(assert (=> b!3861553 m!4417073))

(assert (=> b!3861553 m!4416527))

(assert (=> b!3861553 m!4416565))

(declare-fun m!4417075 () Bool)

(assert (=> d!1144534 m!4417075))

(declare-fun m!4417077 () Bool)

(assert (=> d!1144534 m!4417077))

(declare-fun m!4417079 () Bool)

(assert (=> d!1144534 m!4417079))

(declare-fun m!4417081 () Bool)

(assert (=> b!3861552 m!4417081))

(assert (=> b!3861056 d!1144534))

(declare-fun d!1144536 () Bool)

(declare-fun lt!1341830 () List!41065)

(assert (=> d!1144536 (= (++!10432 lt!1341645 lt!1341830) lt!1341630)))

(declare-fun e!2387324 () List!41065)

(assert (=> d!1144536 (= lt!1341830 e!2387324)))

(declare-fun c!672285 () Bool)

(assert (=> d!1144536 (= c!672285 (is-Cons!40941 lt!1341645))))

(assert (=> d!1144536 (>= (size!30792 lt!1341630) (size!30792 lt!1341645))))

(assert (=> d!1144536 (= (getSuffix!1891 lt!1341630 lt!1341645) lt!1341830)))

(declare-fun b!3861559 () Bool)

(assert (=> b!3861559 (= e!2387324 (getSuffix!1891 (tail!5856 lt!1341630) (t!313460 lt!1341645)))))

(declare-fun b!3861560 () Bool)

(assert (=> b!3861560 (= e!2387324 lt!1341630)))

(assert (= (and d!1144536 c!672285) b!3861559))

(assert (= (and d!1144536 (not c!672285)) b!3861560))

(declare-fun m!4417083 () Bool)

(assert (=> d!1144536 m!4417083))

(assert (=> d!1144536 m!4416591))

(assert (=> d!1144536 m!4416527))

(declare-fun m!4417085 () Bool)

(assert (=> b!3861559 m!4417085))

(assert (=> b!3861559 m!4417085))

(declare-fun m!4417087 () Bool)

(assert (=> b!3861559 m!4417087))

(assert (=> b!3861056 d!1144536))

(declare-fun d!1144538 () Bool)

(declare-fun list!15241 (Conc!12548) List!41065)

(assert (=> d!1144538 (= (list!15239 (charsOf!4165 (_1!23208 (v!39052 lt!1341632)))) (list!15241 (c!672198 (charsOf!4165 (_1!23208 (v!39052 lt!1341632))))))))

(declare-fun bs!583193 () Bool)

(assert (= bs!583193 d!1144538))

(declare-fun m!4417089 () Bool)

(assert (=> bs!583193 m!4417089))

(assert (=> b!3861056 d!1144538))

(declare-fun d!1144540 () Bool)

(declare-fun lt!1341831 () Int)

(assert (=> d!1144540 (>= lt!1341831 0)))

(declare-fun e!2387325 () Int)

(assert (=> d!1144540 (= lt!1341831 e!2387325)))

(declare-fun c!672286 () Bool)

(assert (=> d!1144540 (= c!672286 (is-Nil!40941 lt!1341645))))

(assert (=> d!1144540 (= (size!30792 lt!1341645) lt!1341831)))

(declare-fun b!3861561 () Bool)

(assert (=> b!3861561 (= e!2387325 0)))

(declare-fun b!3861562 () Bool)

(assert (=> b!3861562 (= e!2387325 (+ 1 (size!30792 (t!313460 lt!1341645))))))

(assert (= (and d!1144540 c!672286) b!3861561))

(assert (= (and d!1144540 (not c!672286)) b!3861562))

(declare-fun m!4417091 () Bool)

(assert (=> b!3861562 m!4417091))

(assert (=> b!3861056 d!1144540))

(declare-fun b!3861567 () Bool)

(declare-fun e!2387328 () Bool)

(declare-fun tp!1170527 () Bool)

(assert (=> b!3861567 (= e!2387328 (and tp_is_empty!19455 tp!1170527))))

(assert (=> b!3861052 (= tp!1170452 e!2387328)))

(assert (= (and b!3861052 (is-Cons!40941 (t!313460 prefix!426))) b!3861567))

(declare-fun b!3861568 () Bool)

(declare-fun e!2387329 () Bool)

(declare-fun tp!1170528 () Bool)

(assert (=> b!3861568 (= e!2387329 (and tp_is_empty!19455 tp!1170528))))

(assert (=> b!3861063 (= tp!1170461 e!2387329)))

(assert (= (and b!3861063 (is-Cons!40941 (t!313460 suffix!1176))) b!3861568))

(declare-fun b!3861569 () Bool)

(declare-fun e!2387330 () Bool)

(declare-fun tp!1170529 () Bool)

(assert (=> b!3861569 (= e!2387330 (and tp_is_empty!19455 tp!1170529))))

(assert (=> b!3861064 (= tp!1170457 e!2387330)))

(assert (= (and b!3861064 (is-Cons!40941 (originalCharacters!6937 (h!46362 suffixTokens!72)))) b!3861569))

(declare-fun b!3861583 () Bool)

(declare-fun b_free!103849 () Bool)

(declare-fun b_next!104553 () Bool)

(assert (=> b!3861583 (= b_free!103849 (not b_next!104553))))

(declare-fun t!313498 () Bool)

(declare-fun tb!223727 () Bool)

(assert (=> (and b!3861583 (= (toValue!8765 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313498) tb!223727))

(declare-fun result!272474 () Bool)

(assert (= result!272474 result!272456))

(assert (=> d!1144518 t!313498))

(declare-fun b_and!289101 () Bool)

(declare-fun tp!1170543 () Bool)

(assert (=> b!3861583 (= tp!1170543 (and (=> t!313498 result!272474) b_and!289101))))

(declare-fun b_free!103851 () Bool)

(declare-fun b_next!104555 () Bool)

(assert (=> b!3861583 (= b_free!103851 (not b_next!104555))))

(declare-fun t!313500 () Bool)

(declare-fun tb!223729 () Bool)

(assert (=> (and b!3861583 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313500) tb!223729))

(declare-fun result!272476 () Bool)

(assert (= result!272476 result!272442))

(assert (=> b!3861410 t!313500))

(declare-fun t!313502 () Bool)

(declare-fun tb!223731 () Bool)

(assert (=> (and b!3861583 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313502) tb!223731))

(declare-fun result!272478 () Bool)

(assert (= result!272478 result!272450))

(assert (=> b!3861501 t!313502))

(declare-fun t!313504 () Bool)

(declare-fun tb!223733 () Bool)

(assert (=> (and b!3861583 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313504) tb!223733))

(declare-fun result!272480 () Bool)

(assert (= result!272480 result!272464))

(assert (=> d!1144524 t!313504))

(declare-fun b_and!289103 () Bool)

(declare-fun tp!1170541 () Bool)

(assert (=> b!3861583 (= tp!1170541 (and (=> t!313500 result!272476) (=> t!313502 result!272478) (=> t!313504 result!272480) b_and!289103))))

(declare-fun e!2387347 () Bool)

(declare-fun tp!1170540 () Bool)

(declare-fun e!2387344 () Bool)

(declare-fun b!3861581 () Bool)

(assert (=> b!3861581 (= e!2387344 (and (inv!21 (value!201240 (h!46362 (t!313461 prefixTokens!80)))) e!2387347 tp!1170540))))

(declare-fun e!2387345 () Bool)

(declare-fun b!3861582 () Bool)

(declare-fun tp!1170542 () Bool)

(assert (=> b!3861582 (= e!2387347 (and tp!1170542 (inv!55102 (tag!7197 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (inv!55106 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) e!2387345))))

(assert (=> b!3861583 (= e!2387345 (and tp!1170543 tp!1170541))))

(declare-fun e!2387346 () Bool)

(assert (=> b!3861043 (= tp!1170464 e!2387346)))

(declare-fun tp!1170544 () Bool)

(declare-fun b!3861580 () Bool)

(assert (=> b!3861580 (= e!2387346 (and (inv!55105 (h!46362 (t!313461 prefixTokens!80))) e!2387344 tp!1170544))))

(assert (= b!3861582 b!3861583))

(assert (= b!3861581 b!3861582))

(assert (= b!3861580 b!3861581))

(assert (= (and b!3861043 (is-Cons!40942 (t!313461 prefixTokens!80))) b!3861580))

(declare-fun m!4417093 () Bool)

(assert (=> b!3861581 m!4417093))

(declare-fun m!4417095 () Bool)

(assert (=> b!3861582 m!4417095))

(declare-fun m!4417097 () Bool)

(assert (=> b!3861582 m!4417097))

(declare-fun m!4417099 () Bool)

(assert (=> b!3861580 m!4417099))

(declare-fun b!3861595 () Bool)

(declare-fun e!2387351 () Bool)

(declare-fun tp!1170559 () Bool)

(declare-fun tp!1170556 () Bool)

(assert (=> b!3861595 (= e!2387351 (and tp!1170559 tp!1170556))))

(declare-fun b!3861597 () Bool)

(declare-fun tp!1170558 () Bool)

(declare-fun tp!1170555 () Bool)

(assert (=> b!3861597 (= e!2387351 (and tp!1170558 tp!1170555))))

(declare-fun b!3861594 () Bool)

(assert (=> b!3861594 (= e!2387351 tp_is_empty!19455)))

(assert (=> b!3861060 (= tp!1170460 e!2387351)))

(declare-fun b!3861596 () Bool)

(declare-fun tp!1170557 () Bool)

(assert (=> b!3861596 (= e!2387351 tp!1170557)))

(assert (= (and b!3861060 (is-ElementMatch!11242 (regex!6337 (rule!9207 (h!46362 prefixTokens!80))))) b!3861594))

(assert (= (and b!3861060 (is-Concat!17810 (regex!6337 (rule!9207 (h!46362 prefixTokens!80))))) b!3861595))

(assert (= (and b!3861060 (is-Star!11242 (regex!6337 (rule!9207 (h!46362 prefixTokens!80))))) b!3861596))

(assert (= (and b!3861060 (is-Union!11242 (regex!6337 (rule!9207 (h!46362 prefixTokens!80))))) b!3861597))

(declare-fun b!3861608 () Bool)

(declare-fun b_free!103853 () Bool)

(declare-fun b_next!104557 () Bool)

(assert (=> b!3861608 (= b_free!103853 (not b_next!104557))))

(declare-fun t!313506 () Bool)

(declare-fun tb!223735 () Bool)

(assert (=> (and b!3861608 (= (toValue!8765 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313506) tb!223735))

(declare-fun result!272486 () Bool)

(assert (= result!272486 result!272456))

(assert (=> d!1144518 t!313506))

(declare-fun tp!1170570 () Bool)

(declare-fun b_and!289105 () Bool)

(assert (=> b!3861608 (= tp!1170570 (and (=> t!313506 result!272486) b_and!289105))))

(declare-fun b_free!103855 () Bool)

(declare-fun b_next!104559 () Bool)

(assert (=> b!3861608 (= b_free!103855 (not b_next!104559))))

(declare-fun tb!223737 () Bool)

(declare-fun t!313508 () Bool)

(assert (=> (and b!3861608 (= (toChars!8624 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313508) tb!223737))

(declare-fun result!272488 () Bool)

(assert (= result!272488 result!272442))

(assert (=> b!3861410 t!313508))

(declare-fun t!313510 () Bool)

(declare-fun tb!223739 () Bool)

(assert (=> (and b!3861608 (= (toChars!8624 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313510) tb!223739))

(declare-fun result!272490 () Bool)

(assert (= result!272490 result!272450))

(assert (=> b!3861501 t!313510))

(declare-fun t!313512 () Bool)

(declare-fun tb!223741 () Bool)

(assert (=> (and b!3861608 (= (toChars!8624 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313512) tb!223741))

(declare-fun result!272492 () Bool)

(assert (= result!272492 result!272464))

(assert (=> d!1144524 t!313512))

(declare-fun tp!1170571 () Bool)

(declare-fun b_and!289107 () Bool)

(assert (=> b!3861608 (= tp!1170571 (and (=> t!313508 result!272488) (=> t!313510 result!272490) (=> t!313512 result!272492) b_and!289107))))

(declare-fun e!2387362 () Bool)

(assert (=> b!3861608 (= e!2387362 (and tp!1170570 tp!1170571))))

(declare-fun b!3861607 () Bool)

(declare-fun e!2387363 () Bool)

(declare-fun tp!1170568 () Bool)

(assert (=> b!3861607 (= e!2387363 (and tp!1170568 (inv!55102 (tag!7197 (h!46363 (t!313462 rules!2768)))) (inv!55106 (transformation!6337 (h!46363 (t!313462 rules!2768)))) e!2387362))))

(declare-fun b!3861606 () Bool)

(declare-fun e!2387360 () Bool)

(declare-fun tp!1170569 () Bool)

(assert (=> b!3861606 (= e!2387360 (and e!2387363 tp!1170569))))

(assert (=> b!3861058 (= tp!1170454 e!2387360)))

(assert (= b!3861607 b!3861608))

(assert (= b!3861606 b!3861607))

(assert (= (and b!3861058 (is-Cons!40943 (t!313462 rules!2768))) b!3861606))

(declare-fun m!4417101 () Bool)

(assert (=> b!3861607 m!4417101))

(declare-fun m!4417103 () Bool)

(assert (=> b!3861607 m!4417103))

(declare-fun b!3861612 () Bool)

(declare-fun b_free!103857 () Bool)

(declare-fun b_next!104561 () Bool)

(assert (=> b!3861612 (= b_free!103857 (not b_next!104561))))

(declare-fun tb!223743 () Bool)

(declare-fun t!313514 () Bool)

(assert (=> (and b!3861612 (= (toValue!8765 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toValue!8765 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313514) tb!223743))

(declare-fun result!272494 () Bool)

(assert (= result!272494 result!272456))

(assert (=> d!1144518 t!313514))

(declare-fun b_and!289109 () Bool)

(declare-fun tp!1170575 () Bool)

(assert (=> b!3861612 (= tp!1170575 (and (=> t!313514 result!272494) b_and!289109))))

(declare-fun b_free!103859 () Bool)

(declare-fun b_next!104563 () Bool)

(assert (=> b!3861612 (= b_free!103859 (not b_next!104563))))

(declare-fun t!313516 () Bool)

(declare-fun tb!223745 () Bool)

(assert (=> (and b!3861612 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72))))) t!313516) tb!223745))

(declare-fun result!272496 () Bool)

(assert (= result!272496 result!272442))

(assert (=> b!3861410 t!313516))

(declare-fun tb!223747 () Bool)

(declare-fun t!313518 () Bool)

(assert (=> (and b!3861612 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80))))) t!313518) tb!223747))

(declare-fun result!272498 () Bool)

(assert (= result!272498 result!272450))

(assert (=> b!3861501 t!313518))

(declare-fun t!313520 () Bool)

(declare-fun tb!223749 () Bool)

(assert (=> (and b!3861612 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toChars!8624 (transformation!6337 (rule!9207 (_1!23208 (v!39052 lt!1341632)))))) t!313520) tb!223749))

(declare-fun result!272500 () Bool)

(assert (= result!272500 result!272464))

(assert (=> d!1144524 t!313520))

(declare-fun b_and!289111 () Bool)

(declare-fun tp!1170573 () Bool)

(assert (=> b!3861612 (= tp!1170573 (and (=> t!313516 result!272496) (=> t!313518 result!272498) (=> t!313520 result!272500) b_and!289111))))

(declare-fun b!3861610 () Bool)

(declare-fun e!2387368 () Bool)

(declare-fun e!2387365 () Bool)

(declare-fun tp!1170572 () Bool)

(assert (=> b!3861610 (= e!2387365 (and (inv!21 (value!201240 (h!46362 (t!313461 suffixTokens!72)))) e!2387368 tp!1170572))))

(declare-fun e!2387366 () Bool)

(declare-fun tp!1170574 () Bool)

(declare-fun b!3861611 () Bool)

(assert (=> b!3861611 (= e!2387368 (and tp!1170574 (inv!55102 (tag!7197 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (inv!55106 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) e!2387366))))

(assert (=> b!3861612 (= e!2387366 (and tp!1170575 tp!1170573))))

(declare-fun e!2387367 () Bool)

(assert (=> b!3861069 (= tp!1170449 e!2387367)))

(declare-fun b!3861609 () Bool)

(declare-fun tp!1170576 () Bool)

(assert (=> b!3861609 (= e!2387367 (and (inv!55105 (h!46362 (t!313461 suffixTokens!72))) e!2387365 tp!1170576))))

(assert (= b!3861611 b!3861612))

(assert (= b!3861610 b!3861611))

(assert (= b!3861609 b!3861610))

(assert (= (and b!3861069 (is-Cons!40942 (t!313461 suffixTokens!72))) b!3861609))

(declare-fun m!4417105 () Bool)

(assert (=> b!3861610 m!4417105))

(declare-fun m!4417107 () Bool)

(assert (=> b!3861611 m!4417107))

(declare-fun m!4417109 () Bool)

(assert (=> b!3861611 m!4417109))

(declare-fun m!4417111 () Bool)

(assert (=> b!3861609 m!4417111))

(declare-fun b!3861614 () Bool)

(declare-fun e!2387370 () Bool)

(declare-fun tp!1170581 () Bool)

(declare-fun tp!1170578 () Bool)

(assert (=> b!3861614 (= e!2387370 (and tp!1170581 tp!1170578))))

(declare-fun b!3861616 () Bool)

(declare-fun tp!1170580 () Bool)

(declare-fun tp!1170577 () Bool)

(assert (=> b!3861616 (= e!2387370 (and tp!1170580 tp!1170577))))

(declare-fun b!3861613 () Bool)

(assert (=> b!3861613 (= e!2387370 tp_is_empty!19455)))

(assert (=> b!3861070 (= tp!1170450 e!2387370)))

(declare-fun b!3861615 () Bool)

(declare-fun tp!1170579 () Bool)

(assert (=> b!3861615 (= e!2387370 tp!1170579)))

(assert (= (and b!3861070 (is-ElementMatch!11242 (regex!6337 (h!46363 rules!2768)))) b!3861613))

(assert (= (and b!3861070 (is-Concat!17810 (regex!6337 (h!46363 rules!2768)))) b!3861614))

(assert (= (and b!3861070 (is-Star!11242 (regex!6337 (h!46363 rules!2768)))) b!3861615))

(assert (= (and b!3861070 (is-Union!11242 (regex!6337 (h!46363 rules!2768)))) b!3861616))

(declare-fun b!3861617 () Bool)

(declare-fun e!2387371 () Bool)

(declare-fun tp!1170582 () Bool)

(assert (=> b!3861617 (= e!2387371 (and tp_is_empty!19455 tp!1170582))))

(assert (=> b!3861066 (= tp!1170456 e!2387371)))

(assert (= (and b!3861066 (is-Cons!40941 (t!313460 suffixResult!91))) b!3861617))

(declare-fun b!3861619 () Bool)

(declare-fun e!2387372 () Bool)

(declare-fun tp!1170587 () Bool)

(declare-fun tp!1170584 () Bool)

(assert (=> b!3861619 (= e!2387372 (and tp!1170587 tp!1170584))))

(declare-fun b!3861621 () Bool)

(declare-fun tp!1170586 () Bool)

(declare-fun tp!1170583 () Bool)

(assert (=> b!3861621 (= e!2387372 (and tp!1170586 tp!1170583))))

(declare-fun b!3861618 () Bool)

(assert (=> b!3861618 (= e!2387372 tp_is_empty!19455)))

(assert (=> b!3861045 (= tp!1170451 e!2387372)))

(declare-fun b!3861620 () Bool)

(declare-fun tp!1170585 () Bool)

(assert (=> b!3861620 (= e!2387372 tp!1170585)))

(assert (= (and b!3861045 (is-ElementMatch!11242 (regex!6337 (rule!9207 (h!46362 suffixTokens!72))))) b!3861618))

(assert (= (and b!3861045 (is-Concat!17810 (regex!6337 (rule!9207 (h!46362 suffixTokens!72))))) b!3861619))

(assert (= (and b!3861045 (is-Star!11242 (regex!6337 (rule!9207 (h!46362 suffixTokens!72))))) b!3861620))

(assert (= (and b!3861045 (is-Union!11242 (regex!6337 (rule!9207 (h!46362 suffixTokens!72))))) b!3861621))

(declare-fun b!3861622 () Bool)

(declare-fun e!2387373 () Bool)

(declare-fun tp!1170588 () Bool)

(assert (=> b!3861622 (= e!2387373 (and tp_is_empty!19455 tp!1170588))))

(assert (=> b!3861044 (= tp!1170465 e!2387373)))

(assert (= (and b!3861044 (is-Cons!40941 (originalCharacters!6937 (h!46362 prefixTokens!80)))) b!3861622))

(declare-fun b_lambda!112873 () Bool)

(assert (= b_lambda!112865 (or (and b!3861583 b_free!103851 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))))) (and b!3861061 b_free!103831 (= (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))))) (and b!3861612 b_free!103859 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))))) (and b!3861608 b_free!103855 (= (toChars!8624 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))))) (and b!3861077 b_free!103835) (and b!3861071 b_free!103827 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))))) b_lambda!112873)))

(declare-fun b_lambda!112875 () Bool)

(assert (= b_lambda!112867 (or (and b!3861612 b_free!103859 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 suffixTokens!72))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))))) (and b!3861583 b_free!103851 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 (t!313461 prefixTokens!80))))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))))) (and b!3861077 b_free!103835 (= (toChars!8624 (transformation!6337 (rule!9207 (h!46362 suffixTokens!72)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))))) (and b!3861071 b_free!103827) (and b!3861061 b_free!103831 (= (toChars!8624 (transformation!6337 (h!46363 rules!2768))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))))) (and b!3861608 b_free!103855 (= (toChars!8624 (transformation!6337 (h!46363 (t!313462 rules!2768)))) (toChars!8624 (transformation!6337 (rule!9207 (h!46362 prefixTokens!80)))))) b_lambda!112875)))

(push 1)

(assert (not b_lambda!112869))

(assert (not d!1144472))

(assert (not d!1144520))

(assert b_and!289093)

(assert (not b!3861416))

(assert (not b_next!104529))

(assert (not b!3861550))

(assert (not b!3861330))

(assert (not b!3861567))

(assert b_and!289109)

(assert (not d!1144442))

(assert (not b!3861606))

(assert (not b!3861306))

(assert (not b!3861403))

(assert (not b_next!104531))

(assert (not b!3861449))

(assert (not b!3861569))

(assert (not b!3861387))

(assert (not b!3861595))

(assert (not b!3861424))

(assert (not b!3861507))

(assert (not b!3861464))

(assert (not b_next!104535))

(assert (not b!3861411))

(assert (not b_next!104555))

(assert (not d!1144444))

(assert (not b!3861536))

(assert b_and!289101)

(assert (not b!3861596))

(assert (not b!3861622))

(assert (not b!3861614))

(assert (not b!3861559))

(assert (not b!3861333))

(assert (not bm!282538))

(assert (not b_next!104537))

(assert (not b!3861429))

(assert (not b!3861621))

(assert (not b!3861301))

(assert (not tb!223715))

(assert (not b!3861381))

(assert (not d!1144524))

(assert (not b!3861581))

(assert (not b!3861548))

(assert (not b!3861607))

(assert (not b!3861580))

(assert (not b!3861379))

(assert (not b!3861459))

(assert (not d!1144452))

(assert (not d!1144502))

(assert (not b!3861410))

(assert (not b!3861619))

(assert (not b!3861248))

(assert (not d!1144448))

(assert (not b!3861303))

(assert (not b!3861582))

(assert (not b!3861423))

(assert (not d!1144450))

(assert (not b_next!104561))

(assert (not b!3861502))

(assert (not b!3861491))

(assert (not b!3861552))

(assert (not b!3861503))

(assert (not b!3861620))

(assert (not b_next!104559))

(assert (not tb!223721))

(assert (not b!3861305))

(assert (not b!3861617))

(assert (not d!1144538))

(assert (not b!3861332))

(assert (not b!3861331))

(assert (not d!1144470))

(assert (not b!3861504))

(assert (not b!3861425))

(assert (not tb!223703))

(assert (not b!3861242))

(assert b_and!289089)

(assert (not b!3861325))

(assert (not b!3861568))

(assert (not d!1144476))

(assert (not d!1144528))

(assert (not b!3861382))

(assert (not b!3861533))

(assert b_and!289097)

(assert (not d!1144526))

(assert (not d!1144468))

(assert (not b!3861243))

(assert (not d!1144522))

(assert (not b!3861501))

(assert b_and!289091)

(assert (not b!3861610))

(assert (not b!3861537))

(assert (not b!3861327))

(assert (not b!3861295))

(assert (not b!3861328))

(assert (not b!3861535))

(assert (not b!3861510))

(assert (not b!3861397))

(assert tp_is_empty!19455)

(assert (not b!3861500))

(assert (not b!3861441))

(assert (not b_next!104557))

(assert (not d!1144498))

(assert (not b!3861616))

(assert (not b!3861247))

(assert (not b!3861440))

(assert (not b_next!104553))

(assert (not d!1144440))

(assert (not b!3861506))

(assert (not d!1144536))

(assert (not b!3861493))

(assert b_and!289111)

(assert (not b!3861227))

(assert b_and!289107)

(assert (not b!3861498))

(assert (not d!1144530))

(assert b_and!289095)

(assert (not b!3861553))

(assert (not b_next!104563))

(assert (not b_next!104533))

(assert (not d!1144486))

(assert (not b!3861496))

(assert (not d!1144534))

(assert (not bm!282544))

(assert (not b!3861226))

(assert (not b!3861562))

(assert (not b_lambda!112875))

(assert (not d!1144432))

(assert (not b!3861225))

(assert (not b!3861597))

(assert b_and!289105)

(assert (not b!3861329))

(assert (not b!3861453))

(assert (not d!1144512))

(assert (not tb!223709))

(assert (not b!3861386))

(assert (not b!3861609))

(assert b_and!289103)

(assert (not b!3861252))

(assert (not b_lambda!112871))

(assert (not b!3861304))

(assert (not b!3861383))

(assert (not b!3861615))

(assert (not b_next!104539))

(assert (not b!3861495))

(assert (not b!3861549))

(assert (not d!1144424))

(assert b_and!289099)

(assert (not b!3861531))

(assert (not b!3861384))

(assert (not b!3861385))

(assert (not b!3861246))

(assert (not d!1144516))

(assert (not d!1144494))

(assert (not b_lambda!112873))

(assert (not b!3861611))

(assert (not b!3861428))

(assert (not d!1144460))

(assert (not b!3861451))

(check-sat)

(pop 1)

(push 1)

(assert b_and!289109)

(assert (not b_next!104531))

(assert (not b_next!104535))

(assert (not b_next!104537))

(assert (not b_next!104561))

(assert (not b_next!104559))

(assert b_and!289089)

(assert b_and!289097)

(assert b_and!289091)

(assert (not b_next!104557))

(assert (not b_next!104553))

(assert b_and!289105)

(assert b_and!289103)

(assert (not b_next!104539))

(assert b_and!289099)

(assert b_and!289093)

(assert (not b_next!104529))

(assert (not b_next!104555))

(assert b_and!289101)

(assert b_and!289111)

(assert (not b_next!104563))

(assert b_and!289107)

(assert (not b_next!104533))

(assert b_and!289095)

(check-sat)

(pop 1)

