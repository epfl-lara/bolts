; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359916 () Bool)

(assert start!359916)

(declare-fun b!3844094 () Bool)

(declare-fun b_free!102745 () Bool)

(declare-fun b_next!103449 () Bool)

(assert (=> b!3844094 (= b_free!102745 (not b_next!103449))))

(declare-fun tp!1164879 () Bool)

(declare-fun b_and!286583 () Bool)

(assert (=> b!3844094 (= tp!1164879 b_and!286583)))

(declare-fun b_free!102747 () Bool)

(declare-fun b_next!103451 () Bool)

(assert (=> b!3844094 (= b_free!102747 (not b_next!103451))))

(declare-fun tp!1164887 () Bool)

(declare-fun b_and!286585 () Bool)

(assert (=> b!3844094 (= tp!1164887 b_and!286585)))

(declare-fun b!3844100 () Bool)

(declare-fun b_free!102749 () Bool)

(declare-fun b_next!103453 () Bool)

(assert (=> b!3844100 (= b_free!102749 (not b_next!103453))))

(declare-fun tp!1164889 () Bool)

(declare-fun b_and!286587 () Bool)

(assert (=> b!3844100 (= tp!1164889 b_and!286587)))

(declare-fun b_free!102751 () Bool)

(declare-fun b_next!103455 () Bool)

(assert (=> b!3844100 (= b_free!102751 (not b_next!103455))))

(declare-fun tp!1164883 () Bool)

(declare-fun b_and!286589 () Bool)

(assert (=> b!3844100 (= tp!1164883 b_and!286589)))

(declare-fun b!3844091 () Bool)

(declare-fun b_free!102753 () Bool)

(declare-fun b_next!103457 () Bool)

(assert (=> b!3844091 (= b_free!102753 (not b_next!103457))))

(declare-fun tp!1164892 () Bool)

(declare-fun b_and!286591 () Bool)

(assert (=> b!3844091 (= tp!1164892 b_and!286591)))

(declare-fun b_free!102755 () Bool)

(declare-fun b_next!103459 () Bool)

(assert (=> b!3844091 (= b_free!102755 (not b_next!103459))))

(declare-fun tp!1164886 () Bool)

(declare-fun b_and!286593 () Bool)

(assert (=> b!3844091 (= tp!1164886 b_and!286593)))

(declare-fun b!3844084 () Bool)

(declare-fun b_free!102757 () Bool)

(declare-fun b_next!103461 () Bool)

(assert (=> b!3844084 (= b_free!102757 (not b_next!103461))))

(declare-fun tp!1164871 () Bool)

(declare-fun b_and!286595 () Bool)

(assert (=> b!3844084 (= tp!1164871 b_and!286595)))

(declare-fun b_free!102759 () Bool)

(declare-fun b_next!103463 () Bool)

(assert (=> b!3844084 (= b_free!102759 (not b_next!103463))))

(declare-fun tp!1164878 () Bool)

(declare-fun b_and!286597 () Bool)

(assert (=> b!3844084 (= tp!1164878 b_and!286597)))

(declare-fun b!3844072 () Bool)

(declare-fun res!1555937 () Bool)

(declare-fun e!2375418 () Bool)

(assert (=> b!3844072 (=> (not res!1555937) (not e!2375418))))

(declare-datatypes ((C!22564 0))(
  ( (C!22565 (val!13376 Int)) )
))
(declare-datatypes ((List!40824 0))(
  ( (Nil!40700) (Cons!40700 (h!46120 C!22564) (t!310773 List!40824)) )
))
(declare-fun suffixResult!91 () List!40824)

(declare-datatypes ((LexerInterface!5873 0))(
  ( (LexerInterfaceExt!5870 (__x!25245 Int)) (Lexer!5871) )
))
(declare-fun thiss!20629 () LexerInterface!5873)

(declare-fun suffix!1176 () List!40824)

(declare-datatypes ((String!46287 0))(
  ( (String!46288 (value!199702 String)) )
))
(declare-datatypes ((IArray!24995 0))(
  ( (IArray!24996 (innerList!12555 List!40824)) )
))
(declare-datatypes ((Conc!12495 0))(
  ( (Node!12495 (left!31419 Conc!12495) (right!31749 Conc!12495) (csize!25220 Int) (cheight!12706 Int)) (Leaf!19344 (xs!15801 IArray!24995) (csize!25221 Int)) (Empty!12495) )
))
(declare-datatypes ((BalanceConc!24584 0))(
  ( (BalanceConc!24585 (c!669756 Conc!12495)) )
))
(declare-datatypes ((List!40825 0))(
  ( (Nil!40701) (Cons!40701 (h!46121 (_ BitVec 16)) (t!310774 List!40825)) )
))
(declare-datatypes ((TokenValue!6514 0))(
  ( (FloatLiteralValue!13028 (text!46043 List!40825)) (TokenValueExt!6513 (__x!25246 Int)) (Broken!32570 (value!199703 List!40825)) (Object!6637) (End!6514) (Def!6514) (Underscore!6514) (Match!6514) (Else!6514) (Error!6514) (Case!6514) (If!6514) (Extends!6514) (Abstract!6514) (Class!6514) (Val!6514) (DelimiterValue!13028 (del!6574 List!40825)) (KeywordValue!6520 (value!199704 List!40825)) (CommentValue!13028 (value!199705 List!40825)) (WhitespaceValue!13028 (value!199706 List!40825)) (IndentationValue!6514 (value!199707 List!40825)) (String!46289) (Int32!6514) (Broken!32571 (value!199708 List!40825)) (Boolean!6515) (Unit!58391) (OperatorValue!6517 (op!6574 List!40825)) (IdentifierValue!13028 (value!199709 List!40825)) (IdentifierValue!13029 (value!199710 List!40825)) (WhitespaceValue!13029 (value!199711 List!40825)) (True!13028) (False!13028) (Broken!32572 (value!199712 List!40825)) (Broken!32573 (value!199713 List!40825)) (True!13029) (RightBrace!6514) (RightBracket!6514) (Colon!6514) (Null!6514) (Comma!6514) (LeftBracket!6514) (False!13029) (LeftBrace!6514) (ImaginaryLiteralValue!6514 (text!46044 List!40825)) (StringLiteralValue!19542 (value!199714 List!40825)) (EOFValue!6514 (value!199715 List!40825)) (IdentValue!6514 (value!199716 List!40825)) (DelimiterValue!13029 (value!199717 List!40825)) (DedentValue!6514 (value!199718 List!40825)) (NewLineValue!6514 (value!199719 List!40825)) (IntegerValue!19542 (value!199720 (_ BitVec 32)) (text!46045 List!40825)) (IntegerValue!19543 (value!199721 Int) (text!46046 List!40825)) (Times!6514) (Or!6514) (Equal!6514) (Minus!6514) (Broken!32574 (value!199722 List!40825)) (And!6514) (Div!6514) (LessEqual!6514) (Mod!6514) (Concat!17703) (Not!6514) (Plus!6514) (SpaceValue!6514 (value!199723 List!40825)) (IntegerValue!19544 (value!199724 Int) (text!46047 List!40825)) (StringLiteralValue!19543 (text!46048 List!40825)) (FloatLiteralValue!13029 (text!46049 List!40825)) (BytesLiteralValue!6514 (value!199725 List!40825)) (CommentValue!13029 (value!199726 List!40825)) (StringLiteralValue!19544 (value!199727 List!40825)) (ErrorTokenValue!6514 (msg!6575 List!40825)) )
))
(declare-datatypes ((Regex!11189 0))(
  ( (ElementMatch!11189 (c!669757 C!22564)) (Concat!17704 (regOne!22890 Regex!11189) (regTwo!22890 Regex!11189)) (EmptyExpr!11189) (Star!11189 (reg!11518 Regex!11189)) (EmptyLang!11189) (Union!11189 (regOne!22891 Regex!11189) (regTwo!22891 Regex!11189)) )
))
(declare-datatypes ((TokenValueInjection!12456 0))(
  ( (TokenValueInjection!12457 (toValue!8700 Int) (toChars!8559 Int)) )
))
(declare-datatypes ((Rule!12368 0))(
  ( (Rule!12369 (regex!6284 Regex!11189) (tag!7144 String!46287) (isSeparator!6284 Bool) (transformation!6284 TokenValueInjection!12456)) )
))
(declare-datatypes ((List!40826 0))(
  ( (Nil!40702) (Cons!40702 (h!46122 Rule!12368) (t!310775 List!40826)) )
))
(declare-fun rules!2768 () List!40826)

(declare-datatypes ((Token!11706 0))(
  ( (Token!11707 (value!199728 TokenValue!6514) (rule!9126 Rule!12368) (size!30623 Int) (originalCharacters!6884 List!40824)) )
))
(declare-datatypes ((List!40827 0))(
  ( (Nil!40703) (Cons!40703 (h!46123 Token!11706) (t!310776 List!40827)) )
))
(declare-fun suffixTokens!72 () List!40827)

(declare-datatypes ((tuple2!39878 0))(
  ( (tuple2!39879 (_1!23073 List!40827) (_2!23073 List!40824)) )
))
(declare-fun lexList!1641 (LexerInterface!5873 List!40826 List!40824) tuple2!39878)

(assert (=> b!3844072 (= res!1555937 (= (lexList!1641 thiss!20629 rules!2768 suffix!1176) (tuple2!39879 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3844073 () Bool)

(declare-fun e!2375450 () Bool)

(declare-fun tp_is_empty!19349 () Bool)

(declare-fun tp!1164880 () Bool)

(assert (=> b!3844073 (= e!2375450 (and tp_is_empty!19349 tp!1164880))))

(declare-fun b!3844074 () Bool)

(declare-fun e!2375447 () Bool)

(declare-fun tp!1164888 () Bool)

(assert (=> b!3844074 (= e!2375447 (and tp_is_empty!19349 tp!1164888))))

(declare-fun b!3844075 () Bool)

(declare-fun e!2375429 () Bool)

(declare-fun e!2375444 () Bool)

(assert (=> b!3844075 (= e!2375429 (not e!2375444))))

(declare-fun res!1555936 () Bool)

(assert (=> b!3844075 (=> res!1555936 e!2375444)))

(declare-fun lt!1334554 () List!40824)

(declare-fun lt!1334553 () List!40824)

(assert (=> b!3844075 (= res!1555936 (not (= lt!1334554 lt!1334553)))))

(declare-fun lt!1334566 () tuple2!39878)

(declare-datatypes ((tuple2!39880 0))(
  ( (tuple2!39881 (_1!23074 Token!11706) (_2!23074 List!40824)) )
))
(declare-datatypes ((Option!8702 0))(
  ( (None!8701) (Some!8701 (v!38993 tuple2!39880)) )
))
(declare-fun lt!1334558 () Option!8702)

(assert (=> b!3844075 (= lt!1334566 (lexList!1641 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334558))))))

(declare-fun lt!1334569 () TokenValue!6514)

(declare-fun lt!1334567 () Int)

(declare-fun lt!1334550 () List!40824)

(declare-fun lt!1334556 () List!40824)

(assert (=> b!3844075 (and (= (size!30623 (_1!23074 (v!38993 lt!1334558))) lt!1334567) (= (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558))) lt!1334556) (= (tuple2!39881 (_1!23074 (v!38993 lt!1334558)) (_2!23074 (v!38993 lt!1334558))) (tuple2!39881 (Token!11707 lt!1334569 (rule!9126 (_1!23074 (v!38993 lt!1334558))) lt!1334567 lt!1334556) lt!1334550)))))

(declare-fun size!30624 (List!40824) Int)

(assert (=> b!3844075 (= lt!1334567 (size!30624 lt!1334556))))

(declare-fun e!2375433 () Bool)

(assert (=> b!3844075 e!2375433))

(declare-fun res!1555931 () Bool)

(assert (=> b!3844075 (=> (not res!1555931) (not e!2375433))))

(assert (=> b!3844075 (= res!1555931 (= (value!199728 (_1!23074 (v!38993 lt!1334558))) lt!1334569))))

(declare-fun apply!9527 (TokenValueInjection!12456 BalanceConc!24584) TokenValue!6514)

(declare-fun seqFromList!4555 (List!40824) BalanceConc!24584)

(assert (=> b!3844075 (= lt!1334569 (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))) (seqFromList!4555 lt!1334556)))))

(assert (=> b!3844075 (= (_2!23074 (v!38993 lt!1334558)) lt!1334550)))

(declare-datatypes ((Unit!58392 0))(
  ( (Unit!58393) )
))
(declare-fun lt!1334563 () Unit!58392)

(declare-fun lemmaSamePrefixThenSameSuffix!1604 (List!40824 List!40824 List!40824 List!40824 List!40824) Unit!58392)

(assert (=> b!3844075 (= lt!1334563 (lemmaSamePrefixThenSameSuffix!1604 lt!1334556 (_2!23074 (v!38993 lt!1334558)) lt!1334556 lt!1334550 lt!1334553))))

(declare-fun getSuffix!1838 (List!40824 List!40824) List!40824)

(assert (=> b!3844075 (= lt!1334550 (getSuffix!1838 lt!1334553 lt!1334556))))

(declare-fun isPrefix!3383 (List!40824 List!40824) Bool)

(assert (=> b!3844075 (isPrefix!3383 lt!1334556 lt!1334554)))

(declare-fun ++!10325 (List!40824 List!40824) List!40824)

(assert (=> b!3844075 (= lt!1334554 (++!10325 lt!1334556 (_2!23074 (v!38993 lt!1334558))))))

(declare-fun lt!1334555 () Unit!58392)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2246 (List!40824 List!40824) Unit!58392)

(assert (=> b!3844075 (= lt!1334555 (lemmaConcatTwoListThenFirstIsPrefix!2246 lt!1334556 (_2!23074 (v!38993 lt!1334558))))))

(declare-fun list!15152 (BalanceConc!24584) List!40824)

(declare-fun charsOf!4112 (Token!11706) BalanceConc!24584)

(assert (=> b!3844075 (= lt!1334556 (list!15152 (charsOf!4112 (_1!23074 (v!38993 lt!1334558)))))))

(declare-fun ruleValid!2236 (LexerInterface!5873 Rule!12368) Bool)

(assert (=> b!3844075 (ruleValid!2236 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558))))))

(declare-fun lt!1334568 () Unit!58392)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1316 (LexerInterface!5873 Rule!12368 List!40826) Unit!58392)

(assert (=> b!3844075 (= lt!1334568 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1316 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558))) rules!2768))))

(declare-fun lt!1334559 () Unit!58392)

(declare-fun lemmaCharactersSize!945 (Token!11706) Unit!58392)

(assert (=> b!3844075 (= lt!1334559 (lemmaCharactersSize!945 (_1!23074 (v!38993 lt!1334558))))))

(declare-fun b!3844076 () Bool)

(declare-fun res!1555939 () Bool)

(declare-fun e!2375436 () Bool)

(assert (=> b!3844076 (=> (not res!1555939) (not e!2375436))))

(declare-fun rulesInvariant!5216 (LexerInterface!5873 List!40826) Bool)

(assert (=> b!3844076 (= res!1555939 (rulesInvariant!5216 thiss!20629 rules!2768))))

(declare-fun b!3844077 () Bool)

(declare-fun res!1555944 () Bool)

(declare-fun e!2375426 () Bool)

(assert (=> b!3844077 (=> res!1555944 e!2375426)))

(assert (=> b!3844077 (= res!1555944 (not (isPrefix!3383 Nil!40700 suffix!1176)))))

(declare-fun b!3844078 () Bool)

(declare-fun e!2375434 () Bool)

(declare-fun rulesValidInductive!2224 (LexerInterface!5873 List!40826) Bool)

(assert (=> b!3844078 (= e!2375434 (rulesValidInductive!2224 thiss!20629 rules!2768))))

(declare-fun b!3844079 () Bool)

(assert (=> b!3844079 (= e!2375418 e!2375429)))

(declare-fun res!1555941 () Bool)

(assert (=> b!3844079 (=> (not res!1555941) (not e!2375429))))

(get-info :version)

(assert (=> b!3844079 (= res!1555941 ((_ is Some!8701) lt!1334558))))

(declare-fun maxPrefix!3177 (LexerInterface!5873 List!40826 List!40824) Option!8702)

(assert (=> b!3844079 (= lt!1334558 (maxPrefix!3177 thiss!20629 rules!2768 lt!1334553))))

(declare-fun b!3844080 () Bool)

(assert (=> b!3844080 (= e!2375436 e!2375418)))

(declare-fun res!1555933 () Bool)

(assert (=> b!3844080 (=> (not res!1555933) (not e!2375418))))

(declare-fun lt!1334557 () List!40827)

(declare-fun lt!1334548 () tuple2!39878)

(assert (=> b!3844080 (= res!1555933 (= lt!1334548 (tuple2!39879 lt!1334557 suffixResult!91)))))

(assert (=> b!3844080 (= lt!1334548 (lexList!1641 thiss!20629 rules!2768 lt!1334553))))

(declare-fun prefixTokens!80 () List!40827)

(declare-fun ++!10326 (List!40827 List!40827) List!40827)

(assert (=> b!3844080 (= lt!1334557 (++!10326 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40824)

(assert (=> b!3844080 (= lt!1334553 (++!10325 prefix!426 suffix!1176))))

(declare-fun b!3844081 () Bool)

(declare-fun e!2375438 () Bool)

(declare-fun e!2375440 () Bool)

(declare-fun tp!1164874 () Bool)

(declare-fun inv!54842 (String!46287) Bool)

(declare-fun inv!54845 (TokenValueInjection!12456) Bool)

(assert (=> b!3844081 (= e!2375438 (and tp!1164874 (inv!54842 (tag!7144 (rule!9126 (h!46123 prefixTokens!80)))) (inv!54845 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) e!2375440))))

(declare-fun b!3844082 () Bool)

(declare-fun e!2375424 () Bool)

(declare-fun e!2375446 () Bool)

(declare-fun tp!1164881 () Bool)

(assert (=> b!3844082 (= e!2375424 (and tp!1164881 (inv!54842 (tag!7144 (h!46122 rules!2768))) (inv!54845 (transformation!6284 (h!46122 rules!2768))) e!2375446))))

(declare-fun b!3844083 () Bool)

(declare-fun e!2375451 () Bool)

(declare-fun e!2375437 () Option!8702)

(assert (=> b!3844083 (= e!2375451 (= lt!1334558 e!2375437))))

(declare-fun c!669755 () Bool)

(assert (=> b!3844083 (= c!669755 (and ((_ is Cons!40702) rules!2768) ((_ is Nil!40702) (t!310775 rules!2768))))))

(declare-fun res!1555928 () Bool)

(assert (=> start!359916 (=> (not res!1555928) (not e!2375436))))

(assert (=> start!359916 (= res!1555928 ((_ is Lexer!5871) thiss!20629))))

(assert (=> start!359916 e!2375436))

(assert (=> start!359916 e!2375447))

(assert (=> start!359916 true))

(declare-fun e!2375423 () Bool)

(assert (=> start!359916 e!2375423))

(declare-fun e!2375441 () Bool)

(assert (=> start!359916 e!2375441))

(declare-fun e!2375443 () Bool)

(assert (=> start!359916 e!2375443))

(declare-fun e!2375427 () Bool)

(assert (=> start!359916 e!2375427))

(assert (=> start!359916 e!2375450))

(declare-fun e!2375422 () Bool)

(assert (=> b!3844084 (= e!2375422 (and tp!1164871 tp!1164878))))

(declare-fun e!2375448 () Bool)

(declare-fun b!3844085 () Bool)

(declare-fun tp!1164872 () Bool)

(declare-fun e!2375442 () Bool)

(assert (=> b!3844085 (= e!2375442 (and tp!1164872 (inv!54842 (tag!7144 (rule!9126 (h!46123 suffixTokens!72)))) (inv!54845 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) e!2375448))))

(declare-fun e!2375439 () Bool)

(declare-fun err!4289 () Option!8702)

(declare-fun tp!1164884 () Bool)

(declare-fun b!3844086 () Bool)

(assert (=> b!3844086 (= e!2375439 (and tp!1164884 (inv!54842 (tag!7144 (rule!9126 (_1!23074 (v!38993 err!4289))))) (inv!54845 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) e!2375422))))

(declare-fun b!3844087 () Bool)

(declare-fun res!1555935 () Bool)

(assert (=> b!3844087 (=> (not res!1555935) (not e!2375436))))

(declare-fun isEmpty!24068 (List!40824) Bool)

(assert (=> b!3844087 (= res!1555935 (not (isEmpty!24068 prefix!426)))))

(declare-fun b!3844088 () Bool)

(assert (=> b!3844088 true))

(declare-fun e!2375421 () Bool)

(assert (=> b!3844088 e!2375421))

(declare-fun e!2375432 () Option!8702)

(assert (=> b!3844088 (= e!2375432 err!4289)))

(declare-fun b!3844089 () Bool)

(declare-fun e!2375430 () Bool)

(declare-fun tp!1164876 () Bool)

(declare-fun inv!21 (TokenValue!6514) Bool)

(assert (=> b!3844089 (= e!2375430 (and (inv!21 (value!199728 (h!46123 prefixTokens!80))) e!2375438 tp!1164876))))

(declare-fun e!2375416 () Bool)

(declare-fun b!3844090 () Bool)

(declare-fun tp!1164891 () Bool)

(assert (=> b!3844090 (= e!2375416 (and (inv!21 (value!199728 (_1!23074 (v!38993 err!4289)))) e!2375439 tp!1164891))))

(assert (=> b!3844091 (= e!2375448 (and tp!1164892 tp!1164886))))

(declare-fun tp!1164875 () Bool)

(declare-fun b!3844092 () Bool)

(declare-fun inv!54846 (Token!11706) Bool)

(assert (=> b!3844092 (= e!2375443 (and (inv!54846 (h!46123 prefixTokens!80)) e!2375430 tp!1164875))))

(declare-fun tp!1164877 () Bool)

(declare-fun b!3844093 () Bool)

(declare-fun e!2375428 () Bool)

(assert (=> b!3844093 (= e!2375428 (and (inv!21 (value!199728 (h!46123 suffixTokens!72))) e!2375442 tp!1164877))))

(assert (=> b!3844094 (= e!2375446 (and tp!1164879 tp!1164887))))

(declare-fun b!3844095 () Bool)

(declare-fun call!282024 () Option!8702)

(assert (=> b!3844095 (= e!2375437 call!282024)))

(declare-fun bm!282019 () Bool)

(declare-fun maxPrefixOneRule!2261 (LexerInterface!5873 Rule!12368 List!40824) Option!8702)

(assert (=> bm!282019 (= call!282024 (maxPrefixOneRule!2261 thiss!20629 (h!46122 rules!2768) lt!1334553))))

(declare-fun tp!1164890 () Bool)

(declare-fun b!3844096 () Bool)

(assert (=> b!3844096 (= e!2375421 (and (inv!54846 (_1!23074 (v!38993 err!4289))) e!2375416 tp!1164890))))

(declare-fun b!3844097 () Bool)

(assert (=> b!3844097 (= e!2375437 e!2375432)))

(declare-fun c!669754 () Bool)

(assert (=> b!3844097 (= c!669754 ((_ is Cons!40702) rules!2768))))

(declare-fun b!3844098 () Bool)

(assert (=> b!3844098 (= e!2375433 (= (size!30623 (_1!23074 (v!38993 lt!1334558))) (size!30624 (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558))))))))

(declare-fun tp!1164882 () Bool)

(declare-fun b!3844099 () Bool)

(assert (=> b!3844099 (= e!2375427 (and (inv!54846 (h!46123 suffixTokens!72)) e!2375428 tp!1164882))))

(assert (=> b!3844100 (= e!2375440 (and tp!1164889 tp!1164883))))

(declare-fun b!3844101 () Bool)

(declare-fun tp!1164885 () Bool)

(assert (=> b!3844101 (= e!2375423 (and tp_is_empty!19349 tp!1164885))))

(declare-fun b!3844102 () Bool)

(declare-fun e!2375452 () Bool)

(assert (=> b!3844102 (= e!2375444 e!2375452)))

(declare-fun res!1555934 () Bool)

(assert (=> b!3844102 (=> res!1555934 e!2375452)))

(declare-fun lt!1334564 () List!40827)

(assert (=> b!3844102 (= res!1555934 (or (not (= lt!1334548 (tuple2!39879 lt!1334564 (_2!23073 lt!1334566)))) (not (= lt!1334566 (tuple2!39879 (_1!23073 lt!1334566) (_2!23073 lt!1334566)))) (not (= (_2!23074 (v!38993 lt!1334558)) suffix!1176))))))

(declare-fun lt!1334552 () List!40827)

(assert (=> b!3844102 (= lt!1334564 (++!10326 lt!1334552 (_1!23073 lt!1334566)))))

(assert (=> b!3844102 (= lt!1334552 (Cons!40703 (_1!23074 (v!38993 lt!1334558)) Nil!40703))))

(declare-fun b!3844103 () Bool)

(assert (=> b!3844103 (= e!2375426 e!2375434)))

(declare-fun res!1555932 () Bool)

(assert (=> b!3844103 (=> res!1555932 e!2375434)))

(declare-fun lt!1334565 () Option!8702)

(declare-fun isDefined!6833 (Option!8702) Bool)

(assert (=> b!3844103 (= res!1555932 (not (isDefined!6833 lt!1334565)))))

(assert (=> b!3844103 (= lt!1334565 (maxPrefix!3177 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3844103 (= (maxPrefix!3177 thiss!20629 rules!2768 (++!10325 prefix!426 Nil!40700)) (Some!8701 (tuple2!39881 (_1!23074 (v!38993 lt!1334558)) Nil!40700)))))

(declare-fun lt!1334560 () Unit!58392)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!14 (LexerInterface!5873 List!40826 List!40824 List!40824 List!40824 Token!11706 List!40824 List!40824) Unit!58392)

(assert (=> b!3844103 (= lt!1334560 (lemmaMaxPrefixThenWithShorterSuffix!14 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40700 (_1!23074 (v!38993 lt!1334558)) suffix!1176 Nil!40700))))

(declare-fun b!3844104 () Bool)

(declare-fun e!2375449 () Bool)

(assert (=> b!3844104 (= e!2375449 e!2375426)))

(declare-fun res!1555943 () Bool)

(assert (=> b!3844104 (=> res!1555943 e!2375426)))

(assert (=> b!3844104 (= res!1555943 (or (not (= lt!1334557 (_1!23073 lt!1334548))) (not (= lt!1334557 lt!1334564)) (not (= prefixTokens!80 lt!1334552)) (not (= prefix!426 lt!1334556))))))

(assert (=> b!3844104 (= lt!1334556 prefix!426)))

(declare-fun lt!1334562 () Unit!58392)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!412 (List!40824 List!40824 List!40824 List!40824) Unit!58392)

(assert (=> b!3844104 (= lt!1334562 (lemmaConcatSameAndSameSizesThenSameLists!412 lt!1334556 (_2!23074 (v!38993 lt!1334558)) prefix!426 suffix!1176))))

(declare-fun b!3844105 () Bool)

(declare-fun tp!1164873 () Bool)

(assert (=> b!3844105 (= e!2375441 (and e!2375424 tp!1164873))))

(declare-fun b!3844106 () Bool)

(declare-fun res!1555930 () Bool)

(assert (=> b!3844106 (=> res!1555930 e!2375434)))

(declare-fun get!13472 (Option!8702) tuple2!39880)

(assert (=> b!3844106 (= res!1555930 (not (= (_1!23074 (get!13472 lt!1334565)) (_1!23074 (v!38993 lt!1334558)))))))

(declare-fun b!3844107 () Bool)

(assert (=> b!3844107 (= e!2375452 e!2375449)))

(declare-fun res!1555940 () Bool)

(assert (=> b!3844107 (=> res!1555940 e!2375449)))

(assert (=> b!3844107 (= res!1555940 (not (= lt!1334558 (Some!8701 (tuple2!39881 (_1!23074 (v!38993 lt!1334558)) (_2!23074 (v!38993 lt!1334558)))))))))

(assert (=> b!3844107 e!2375451))

(declare-fun res!1555929 () Bool)

(assert (=> b!3844107 (=> (not res!1555929) (not e!2375451))))

(assert (=> b!3844107 (= res!1555929 (isPrefix!3383 lt!1334553 lt!1334553))))

(declare-fun lt!1334561 () Unit!58392)

(declare-fun lemmaIsPrefixRefl!2156 (List!40824 List!40824) Unit!58392)

(assert (=> b!3844107 (= lt!1334561 (lemmaIsPrefixRefl!2156 lt!1334553 lt!1334553))))

(assert (=> b!3844107 (= lt!1334548 (tuple2!39879 (Cons!40703 (_1!23074 (v!38993 lt!1334558)) (_1!23073 lt!1334566)) (_2!23073 lt!1334566)))))

(declare-fun lt!1334549 () Option!8702)

(declare-fun b!3844108 () Bool)

(assert (=> b!3844108 (= lt!1334549 (maxPrefix!3177 thiss!20629 (t!310775 rules!2768) lt!1334553))))

(declare-fun lt!1334551 () Option!8702)

(assert (=> b!3844108 (= lt!1334551 call!282024)))

(assert (=> b!3844108 (= e!2375432 (ite (and ((_ is None!8701) lt!1334551) ((_ is None!8701) lt!1334549)) None!8701 (ite ((_ is None!8701) lt!1334549) lt!1334551 (ite ((_ is None!8701) lt!1334551) lt!1334549 (ite (>= (size!30623 (_1!23074 (v!38993 lt!1334551))) (size!30623 (_1!23074 (v!38993 lt!1334549)))) (Some!8701 (v!38993 lt!1334551)) lt!1334549)))))))

(declare-fun b!3844109 () Bool)

(declare-fun res!1555938 () Bool)

(assert (=> b!3844109 (=> (not res!1555938) (not e!2375436))))

(declare-fun isEmpty!24069 (List!40827) Bool)

(assert (=> b!3844109 (= res!1555938 (not (isEmpty!24069 prefixTokens!80)))))

(declare-fun b!3844110 () Bool)

(declare-fun res!1555942 () Bool)

(assert (=> b!3844110 (=> (not res!1555942) (not e!2375436))))

(declare-fun isEmpty!24070 (List!40826) Bool)

(assert (=> b!3844110 (= res!1555942 (not (isEmpty!24070 rules!2768)))))

(assert (= (and start!359916 res!1555928) b!3844110))

(assert (= (and b!3844110 res!1555942) b!3844076))

(assert (= (and b!3844076 res!1555939) b!3844109))

(assert (= (and b!3844109 res!1555938) b!3844087))

(assert (= (and b!3844087 res!1555935) b!3844080))

(assert (= (and b!3844080 res!1555933) b!3844072))

(assert (= (and b!3844072 res!1555937) b!3844079))

(assert (= (and b!3844079 res!1555941) b!3844075))

(assert (= (and b!3844075 res!1555931) b!3844098))

(assert (= (and b!3844075 (not res!1555936)) b!3844102))

(assert (= (and b!3844102 (not res!1555934)) b!3844107))

(assert (= (and b!3844107 res!1555929) b!3844083))

(assert (= (and b!3844083 c!669755) b!3844095))

(assert (= (and b!3844083 (not c!669755)) b!3844097))

(assert (= (and b!3844097 c!669754) b!3844108))

(assert (= (and b!3844097 (not c!669754)) b!3844088))

(assert (= b!3844086 b!3844084))

(assert (= b!3844090 b!3844086))

(assert (= b!3844096 b!3844090))

(assert (= (and b!3844088 ((_ is Some!8701) err!4289)) b!3844096))

(assert (= (or b!3844095 b!3844108) bm!282019))

(assert (= (and b!3844107 (not res!1555940)) b!3844104))

(assert (= (and b!3844104 (not res!1555943)) b!3844077))

(assert (= (and b!3844077 (not res!1555944)) b!3844103))

(assert (= (and b!3844103 (not res!1555932)) b!3844106))

(assert (= (and b!3844106 (not res!1555930)) b!3844078))

(assert (= (and start!359916 ((_ is Cons!40700) suffixResult!91)) b!3844074))

(assert (= (and start!359916 ((_ is Cons!40700) suffix!1176)) b!3844101))

(assert (= b!3844082 b!3844094))

(assert (= b!3844105 b!3844082))

(assert (= (and start!359916 ((_ is Cons!40702) rules!2768)) b!3844105))

(assert (= b!3844081 b!3844100))

(assert (= b!3844089 b!3844081))

(assert (= b!3844092 b!3844089))

(assert (= (and start!359916 ((_ is Cons!40703) prefixTokens!80)) b!3844092))

(assert (= b!3844085 b!3844091))

(assert (= b!3844093 b!3844085))

(assert (= b!3844099 b!3844093))

(assert (= (and start!359916 ((_ is Cons!40703) suffixTokens!72)) b!3844099))

(assert (= (and start!359916 ((_ is Cons!40700) prefix!426)) b!3844073))

(declare-fun m!4398477 () Bool)

(assert (=> b!3844087 m!4398477))

(declare-fun m!4398479 () Bool)

(assert (=> b!3844086 m!4398479))

(declare-fun m!4398481 () Bool)

(assert (=> b!3844086 m!4398481))

(declare-fun m!4398483 () Bool)

(assert (=> b!3844080 m!4398483))

(declare-fun m!4398485 () Bool)

(assert (=> b!3844080 m!4398485))

(declare-fun m!4398487 () Bool)

(assert (=> b!3844080 m!4398487))

(declare-fun m!4398489 () Bool)

(assert (=> b!3844090 m!4398489))

(declare-fun m!4398491 () Bool)

(assert (=> b!3844092 m!4398491))

(declare-fun m!4398493 () Bool)

(assert (=> b!3844106 m!4398493))

(declare-fun m!4398495 () Bool)

(assert (=> b!3844077 m!4398495))

(declare-fun m!4398497 () Bool)

(assert (=> b!3844079 m!4398497))

(declare-fun m!4398499 () Bool)

(assert (=> b!3844103 m!4398499))

(declare-fun m!4398501 () Bool)

(assert (=> b!3844103 m!4398501))

(declare-fun m!4398503 () Bool)

(assert (=> b!3844103 m!4398503))

(declare-fun m!4398505 () Bool)

(assert (=> b!3844103 m!4398505))

(assert (=> b!3844103 m!4398499))

(declare-fun m!4398507 () Bool)

(assert (=> b!3844103 m!4398507))

(declare-fun m!4398509 () Bool)

(assert (=> b!3844081 m!4398509))

(declare-fun m!4398511 () Bool)

(assert (=> b!3844081 m!4398511))

(declare-fun m!4398513 () Bool)

(assert (=> b!3844107 m!4398513))

(declare-fun m!4398515 () Bool)

(assert (=> b!3844107 m!4398515))

(declare-fun m!4398517 () Bool)

(assert (=> b!3844096 m!4398517))

(declare-fun m!4398519 () Bool)

(assert (=> b!3844109 m!4398519))

(declare-fun m!4398521 () Bool)

(assert (=> b!3844072 m!4398521))

(declare-fun m!4398523 () Bool)

(assert (=> b!3844089 m!4398523))

(declare-fun m!4398525 () Bool)

(assert (=> b!3844104 m!4398525))

(declare-fun m!4398527 () Bool)

(assert (=> b!3844099 m!4398527))

(declare-fun m!4398529 () Bool)

(assert (=> b!3844110 m!4398529))

(declare-fun m!4398531 () Bool)

(assert (=> b!3844108 m!4398531))

(declare-fun m!4398533 () Bool)

(assert (=> b!3844098 m!4398533))

(declare-fun m!4398535 () Bool)

(assert (=> b!3844102 m!4398535))

(declare-fun m!4398537 () Bool)

(assert (=> b!3844085 m!4398537))

(declare-fun m!4398539 () Bool)

(assert (=> b!3844085 m!4398539))

(declare-fun m!4398541 () Bool)

(assert (=> b!3844076 m!4398541))

(declare-fun m!4398543 () Bool)

(assert (=> bm!282019 m!4398543))

(declare-fun m!4398545 () Bool)

(assert (=> b!3844075 m!4398545))

(declare-fun m!4398547 () Bool)

(assert (=> b!3844075 m!4398547))

(declare-fun m!4398549 () Bool)

(assert (=> b!3844075 m!4398549))

(declare-fun m!4398551 () Bool)

(assert (=> b!3844075 m!4398551))

(declare-fun m!4398553 () Bool)

(assert (=> b!3844075 m!4398553))

(declare-fun m!4398555 () Bool)

(assert (=> b!3844075 m!4398555))

(assert (=> b!3844075 m!4398549))

(declare-fun m!4398557 () Bool)

(assert (=> b!3844075 m!4398557))

(declare-fun m!4398559 () Bool)

(assert (=> b!3844075 m!4398559))

(declare-fun m!4398561 () Bool)

(assert (=> b!3844075 m!4398561))

(declare-fun m!4398563 () Bool)

(assert (=> b!3844075 m!4398563))

(declare-fun m!4398565 () Bool)

(assert (=> b!3844075 m!4398565))

(declare-fun m!4398567 () Bool)

(assert (=> b!3844075 m!4398567))

(declare-fun m!4398569 () Bool)

(assert (=> b!3844075 m!4398569))

(assert (=> b!3844075 m!4398553))

(declare-fun m!4398571 () Bool)

(assert (=> b!3844075 m!4398571))

(declare-fun m!4398573 () Bool)

(assert (=> b!3844093 m!4398573))

(declare-fun m!4398575 () Bool)

(assert (=> b!3844082 m!4398575))

(declare-fun m!4398577 () Bool)

(assert (=> b!3844082 m!4398577))

(declare-fun m!4398579 () Bool)

(assert (=> b!3844078 m!4398579))

(check-sat (not b!3844107) (not b!3844101) b_and!286591 (not b!3844075) (not b!3844093) (not b!3844079) (not b!3844089) (not b!3844078) (not b!3844110) (not b!3844081) (not b!3844105) b_and!286595 (not b!3844077) (not b!3844090) (not b!3844076) (not b_next!103451) (not b!3844098) b_and!286583 (not b_next!103455) (not b_next!103459) (not b!3844087) tp_is_empty!19349 (not b!3844085) (not b!3844074) (not b!3844106) (not b!3844099) b_and!286597 (not b!3844109) (not b!3844082) (not b_next!103453) b_and!286585 (not bm!282019) (not b_next!103457) (not b!3844072) (not b!3844080) (not b!3844103) (not b!3844092) (not b!3844073) (not b!3844108) (not b!3844096) (not b_next!103461) (not b_next!103449) b_and!286589 (not b_next!103463) (not b!3844102) (not b!3844086) b_and!286593 b_and!286587 (not b!3844104))
(check-sat b_and!286595 (not b_next!103451) (not b_next!103459) b_and!286597 (not b_next!103453) b_and!286591 b_and!286593 b_and!286587 b_and!286583 (not b_next!103455) b_and!286585 (not b_next!103457) (not b_next!103461) (not b_next!103449) b_and!286589 (not b_next!103463))
(get-model)

(declare-fun d!1140089 () Bool)

(declare-fun c!669762 () Bool)

(assert (=> d!1140089 (= c!669762 ((_ is IntegerValue!19542) (value!199728 (h!46123 suffixTokens!72))))))

(declare-fun e!2375460 () Bool)

(assert (=> d!1140089 (= (inv!21 (value!199728 (h!46123 suffixTokens!72))) e!2375460)))

(declare-fun b!3844121 () Bool)

(declare-fun e!2375459 () Bool)

(assert (=> b!3844121 (= e!2375460 e!2375459)))

(declare-fun c!669763 () Bool)

(assert (=> b!3844121 (= c!669763 ((_ is IntegerValue!19543) (value!199728 (h!46123 suffixTokens!72))))))

(declare-fun b!3844122 () Bool)

(declare-fun res!1555954 () Bool)

(declare-fun e!2375461 () Bool)

(assert (=> b!3844122 (=> res!1555954 e!2375461)))

(assert (=> b!3844122 (= res!1555954 (not ((_ is IntegerValue!19544) (value!199728 (h!46123 suffixTokens!72)))))))

(assert (=> b!3844122 (= e!2375459 e!2375461)))

(declare-fun b!3844123 () Bool)

(declare-fun inv!15 (TokenValue!6514) Bool)

(assert (=> b!3844123 (= e!2375461 (inv!15 (value!199728 (h!46123 suffixTokens!72))))))

(declare-fun b!3844124 () Bool)

(declare-fun inv!16 (TokenValue!6514) Bool)

(assert (=> b!3844124 (= e!2375460 (inv!16 (value!199728 (h!46123 suffixTokens!72))))))

(declare-fun b!3844125 () Bool)

(declare-fun inv!17 (TokenValue!6514) Bool)

(assert (=> b!3844125 (= e!2375459 (inv!17 (value!199728 (h!46123 suffixTokens!72))))))

(assert (= (and d!1140089 c!669762) b!3844124))

(assert (= (and d!1140089 (not c!669762)) b!3844121))

(assert (= (and b!3844121 c!669763) b!3844125))

(assert (= (and b!3844121 (not c!669763)) b!3844122))

(assert (= (and b!3844122 (not res!1555954)) b!3844123))

(declare-fun m!4398581 () Bool)

(assert (=> b!3844123 m!4398581))

(declare-fun m!4398583 () Bool)

(assert (=> b!3844124 m!4398583))

(declare-fun m!4398585 () Bool)

(assert (=> b!3844125 m!4398585))

(assert (=> b!3844093 d!1140089))

(declare-fun d!1140093 () Bool)

(declare-fun res!1555959 () Bool)

(declare-fun e!2375464 () Bool)

(assert (=> d!1140093 (=> (not res!1555959) (not e!2375464))))

(assert (=> d!1140093 (= res!1555959 (not (isEmpty!24068 (originalCharacters!6884 (h!46123 prefixTokens!80)))))))

(assert (=> d!1140093 (= (inv!54846 (h!46123 prefixTokens!80)) e!2375464)))

(declare-fun b!3844130 () Bool)

(declare-fun res!1555960 () Bool)

(assert (=> b!3844130 (=> (not res!1555960) (not e!2375464))))

(declare-fun dynLambda!17581 (Int TokenValue!6514) BalanceConc!24584)

(assert (=> b!3844130 (= res!1555960 (= (originalCharacters!6884 (h!46123 prefixTokens!80)) (list!15152 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (value!199728 (h!46123 prefixTokens!80))))))))

(declare-fun b!3844131 () Bool)

(assert (=> b!3844131 (= e!2375464 (= (size!30623 (h!46123 prefixTokens!80)) (size!30624 (originalCharacters!6884 (h!46123 prefixTokens!80)))))))

(assert (= (and d!1140093 res!1555959) b!3844130))

(assert (= (and b!3844130 res!1555960) b!3844131))

(declare-fun b_lambda!112355 () Bool)

(assert (=> (not b_lambda!112355) (not b!3844130)))

(declare-fun tb!221257 () Bool)

(declare-fun t!310778 () Bool)

(assert (=> (and b!3844094 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310778) tb!221257))

(declare-fun b!3844136 () Bool)

(declare-fun e!2375467 () Bool)

(declare-fun tp!1164895 () Bool)

(declare-fun inv!54849 (Conc!12495) Bool)

(assert (=> b!3844136 (= e!2375467 (and (inv!54849 (c!669756 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (value!199728 (h!46123 prefixTokens!80))))) tp!1164895))))

(declare-fun result!269646 () Bool)

(declare-fun inv!54850 (BalanceConc!24584) Bool)

(assert (=> tb!221257 (= result!269646 (and (inv!54850 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (value!199728 (h!46123 prefixTokens!80)))) e!2375467))))

(assert (= tb!221257 b!3844136))

(declare-fun m!4398587 () Bool)

(assert (=> b!3844136 m!4398587))

(declare-fun m!4398589 () Bool)

(assert (=> tb!221257 m!4398589))

(assert (=> b!3844130 t!310778))

(declare-fun b_and!286599 () Bool)

(assert (= b_and!286585 (and (=> t!310778 result!269646) b_and!286599)))

(declare-fun t!310780 () Bool)

(declare-fun tb!221259 () Bool)

(assert (=> (and b!3844100 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310780) tb!221259))

(declare-fun result!269650 () Bool)

(assert (= result!269650 result!269646))

(assert (=> b!3844130 t!310780))

(declare-fun b_and!286601 () Bool)

(assert (= b_and!286589 (and (=> t!310780 result!269650) b_and!286601)))

(declare-fun tb!221261 () Bool)

(declare-fun t!310782 () Bool)

(assert (=> (and b!3844091 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310782) tb!221261))

(declare-fun result!269652 () Bool)

(assert (= result!269652 result!269646))

(assert (=> b!3844130 t!310782))

(declare-fun b_and!286603 () Bool)

(assert (= b_and!286593 (and (=> t!310782 result!269652) b_and!286603)))

(declare-fun tb!221263 () Bool)

(declare-fun t!310784 () Bool)

(assert (=> (and b!3844084 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310784) tb!221263))

(declare-fun result!269654 () Bool)

(assert (= result!269654 result!269646))

(assert (=> b!3844130 t!310784))

(declare-fun b_and!286605 () Bool)

(assert (= b_and!286597 (and (=> t!310784 result!269654) b_and!286605)))

(declare-fun m!4398591 () Bool)

(assert (=> d!1140093 m!4398591))

(declare-fun m!4398593 () Bool)

(assert (=> b!3844130 m!4398593))

(assert (=> b!3844130 m!4398593))

(declare-fun m!4398595 () Bool)

(assert (=> b!3844130 m!4398595))

(declare-fun m!4398597 () Bool)

(assert (=> b!3844131 m!4398597))

(assert (=> b!3844092 d!1140093))

(declare-fun b!3844201 () Bool)

(declare-fun e!2375505 () Bool)

(declare-fun e!2375504 () Bool)

(assert (=> b!3844201 (= e!2375505 e!2375504)))

(declare-fun res!1555999 () Bool)

(declare-fun lt!1334599 () tuple2!39878)

(assert (=> b!3844201 (= res!1555999 (< (size!30624 (_2!23073 lt!1334599)) (size!30624 suffix!1176)))))

(assert (=> b!3844201 (=> (not res!1555999) (not e!2375504))))

(declare-fun b!3844202 () Bool)

(assert (=> b!3844202 (= e!2375505 (= (_2!23073 lt!1334599) suffix!1176))))

(declare-fun b!3844203 () Bool)

(declare-fun e!2375506 () tuple2!39878)

(assert (=> b!3844203 (= e!2375506 (tuple2!39879 Nil!40703 suffix!1176))))

(declare-fun d!1140095 () Bool)

(assert (=> d!1140095 e!2375505))

(declare-fun c!669778 () Bool)

(declare-fun size!30627 (List!40827) Int)

(assert (=> d!1140095 (= c!669778 (> (size!30627 (_1!23073 lt!1334599)) 0))))

(assert (=> d!1140095 (= lt!1334599 e!2375506)))

(declare-fun c!669777 () Bool)

(declare-fun lt!1334597 () Option!8702)

(assert (=> d!1140095 (= c!669777 ((_ is Some!8701) lt!1334597))))

(assert (=> d!1140095 (= lt!1334597 (maxPrefix!3177 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1140095 (= (lexList!1641 thiss!20629 rules!2768 suffix!1176) lt!1334599)))

(declare-fun b!3844204 () Bool)

(declare-fun lt!1334598 () tuple2!39878)

(assert (=> b!3844204 (= e!2375506 (tuple2!39879 (Cons!40703 (_1!23074 (v!38993 lt!1334597)) (_1!23073 lt!1334598)) (_2!23073 lt!1334598)))))

(assert (=> b!3844204 (= lt!1334598 (lexList!1641 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334597))))))

(declare-fun b!3844205 () Bool)

(assert (=> b!3844205 (= e!2375504 (not (isEmpty!24069 (_1!23073 lt!1334599))))))

(assert (= (and d!1140095 c!669777) b!3844204))

(assert (= (and d!1140095 (not c!669777)) b!3844203))

(assert (= (and d!1140095 c!669778) b!3844201))

(assert (= (and d!1140095 (not c!669778)) b!3844202))

(assert (= (and b!3844201 res!1555999) b!3844205))

(declare-fun m!4398667 () Bool)

(assert (=> b!3844201 m!4398667))

(declare-fun m!4398669 () Bool)

(assert (=> b!3844201 m!4398669))

(declare-fun m!4398671 () Bool)

(assert (=> d!1140095 m!4398671))

(declare-fun m!4398673 () Bool)

(assert (=> d!1140095 m!4398673))

(declare-fun m!4398675 () Bool)

(assert (=> b!3844204 m!4398675))

(declare-fun m!4398677 () Bool)

(assert (=> b!3844205 m!4398677))

(assert (=> b!3844072 d!1140095))

(declare-fun d!1140105 () Bool)

(declare-fun res!1556000 () Bool)

(declare-fun e!2375507 () Bool)

(assert (=> d!1140105 (=> (not res!1556000) (not e!2375507))))

(assert (=> d!1140105 (= res!1556000 (not (isEmpty!24068 (originalCharacters!6884 (_1!23074 (v!38993 err!4289))))))))

(assert (=> d!1140105 (= (inv!54846 (_1!23074 (v!38993 err!4289))) e!2375507)))

(declare-fun b!3844206 () Bool)

(declare-fun res!1556001 () Bool)

(assert (=> b!3844206 (=> (not res!1556001) (not e!2375507))))

(assert (=> b!3844206 (= res!1556001 (= (originalCharacters!6884 (_1!23074 (v!38993 err!4289))) (list!15152 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (value!199728 (_1!23074 (v!38993 err!4289)))))))))

(declare-fun b!3844207 () Bool)

(assert (=> b!3844207 (= e!2375507 (= (size!30623 (_1!23074 (v!38993 err!4289))) (size!30624 (originalCharacters!6884 (_1!23074 (v!38993 err!4289))))))))

(assert (= (and d!1140105 res!1556000) b!3844206))

(assert (= (and b!3844206 res!1556001) b!3844207))

(declare-fun b_lambda!112357 () Bool)

(assert (=> (not b_lambda!112357) (not b!3844206)))

(declare-fun t!310786 () Bool)

(declare-fun tb!221265 () Bool)

(assert (=> (and b!3844094 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310786) tb!221265))

(declare-fun b!3844208 () Bool)

(declare-fun e!2375508 () Bool)

(declare-fun tp!1164896 () Bool)

(assert (=> b!3844208 (= e!2375508 (and (inv!54849 (c!669756 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (value!199728 (_1!23074 (v!38993 err!4289)))))) tp!1164896))))

(declare-fun result!269656 () Bool)

(assert (=> tb!221265 (= result!269656 (and (inv!54850 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (value!199728 (_1!23074 (v!38993 err!4289))))) e!2375508))))

(assert (= tb!221265 b!3844208))

(declare-fun m!4398681 () Bool)

(assert (=> b!3844208 m!4398681))

(declare-fun m!4398683 () Bool)

(assert (=> tb!221265 m!4398683))

(assert (=> b!3844206 t!310786))

(declare-fun b_and!286607 () Bool)

(assert (= b_and!286599 (and (=> t!310786 result!269656) b_and!286607)))

(declare-fun tb!221267 () Bool)

(declare-fun t!310788 () Bool)

(assert (=> (and b!3844100 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310788) tb!221267))

(declare-fun result!269658 () Bool)

(assert (= result!269658 result!269656))

(assert (=> b!3844206 t!310788))

(declare-fun b_and!286609 () Bool)

(assert (= b_and!286601 (and (=> t!310788 result!269658) b_and!286609)))

(declare-fun t!310790 () Bool)

(declare-fun tb!221269 () Bool)

(assert (=> (and b!3844091 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310790) tb!221269))

(declare-fun result!269660 () Bool)

(assert (= result!269660 result!269656))

(assert (=> b!3844206 t!310790))

(declare-fun b_and!286611 () Bool)

(assert (= b_and!286603 (and (=> t!310790 result!269660) b_and!286611)))

(declare-fun t!310792 () Bool)

(declare-fun tb!221271 () Bool)

(assert (=> (and b!3844084 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310792) tb!221271))

(declare-fun result!269662 () Bool)

(assert (= result!269662 result!269656))

(assert (=> b!3844206 t!310792))

(declare-fun b_and!286613 () Bool)

(assert (= b_and!286605 (and (=> t!310792 result!269662) b_and!286613)))

(declare-fun m!4398685 () Bool)

(assert (=> d!1140105 m!4398685))

(declare-fun m!4398687 () Bool)

(assert (=> b!3844206 m!4398687))

(assert (=> b!3844206 m!4398687))

(declare-fun m!4398689 () Bool)

(assert (=> b!3844206 m!4398689))

(declare-fun m!4398691 () Bool)

(assert (=> b!3844207 m!4398691))

(assert (=> b!3844096 d!1140105))

(declare-fun b!3844320 () Bool)

(declare-fun res!1556066 () Bool)

(declare-fun e!2375567 () Bool)

(assert (=> b!3844320 (=> (not res!1556066) (not e!2375567))))

(declare-fun lt!1334654 () Option!8702)

(assert (=> b!3844320 (= res!1556066 (= (rule!9126 (_1!23074 (get!13472 lt!1334654))) (h!46122 rules!2768)))))

(declare-fun b!3844321 () Bool)

(declare-fun e!2375568 () Option!8702)

(assert (=> b!3844321 (= e!2375568 None!8701)))

(declare-fun b!3844322 () Bool)

(declare-fun res!1556069 () Bool)

(assert (=> b!3844322 (=> (not res!1556069) (not e!2375567))))

(assert (=> b!3844322 (= res!1556069 (= (++!10325 (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334654)))) (_2!23074 (get!13472 lt!1334654))) lt!1334553))))

(declare-fun d!1140109 () Bool)

(declare-fun e!2375569 () Bool)

(assert (=> d!1140109 e!2375569))

(declare-fun res!1556068 () Bool)

(assert (=> d!1140109 (=> res!1556068 e!2375569)))

(declare-fun isEmpty!24072 (Option!8702) Bool)

(assert (=> d!1140109 (= res!1556068 (isEmpty!24072 lt!1334654))))

(assert (=> d!1140109 (= lt!1334654 e!2375568)))

(declare-fun c!669799 () Bool)

(declare-datatypes ((tuple2!39884 0))(
  ( (tuple2!39885 (_1!23076 List!40824) (_2!23076 List!40824)) )
))
(declare-fun lt!1334653 () tuple2!39884)

(assert (=> d!1140109 (= c!669799 (isEmpty!24068 (_1!23076 lt!1334653)))))

(declare-fun findLongestMatch!1071 (Regex!11189 List!40824) tuple2!39884)

(assert (=> d!1140109 (= lt!1334653 (findLongestMatch!1071 (regex!6284 (h!46122 rules!2768)) lt!1334553))))

(assert (=> d!1140109 (ruleValid!2236 thiss!20629 (h!46122 rules!2768))))

(assert (=> d!1140109 (= (maxPrefixOneRule!2261 thiss!20629 (h!46122 rules!2768) lt!1334553) lt!1334654)))

(declare-fun b!3844323 () Bool)

(declare-fun size!30628 (BalanceConc!24584) Int)

(assert (=> b!3844323 (= e!2375568 (Some!8701 (tuple2!39881 (Token!11707 (apply!9527 (transformation!6284 (h!46122 rules!2768)) (seqFromList!4555 (_1!23076 lt!1334653))) (h!46122 rules!2768) (size!30628 (seqFromList!4555 (_1!23076 lt!1334653))) (_1!23076 lt!1334653)) (_2!23076 lt!1334653))))))

(declare-fun lt!1334657 () Unit!58392)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1131 (Regex!11189 List!40824) Unit!58392)

(assert (=> b!3844323 (= lt!1334657 (longestMatchIsAcceptedByMatchOrIsEmpty!1131 (regex!6284 (h!46122 rules!2768)) lt!1334553))))

(declare-fun res!1556071 () Bool)

(declare-fun findLongestMatchInner!1158 (Regex!11189 List!40824 Int List!40824 List!40824 Int) tuple2!39884)

(assert (=> b!3844323 (= res!1556071 (isEmpty!24068 (_1!23076 (findLongestMatchInner!1158 (regex!6284 (h!46122 rules!2768)) Nil!40700 (size!30624 Nil!40700) lt!1334553 lt!1334553 (size!30624 lt!1334553)))))))

(declare-fun e!2375566 () Bool)

(assert (=> b!3844323 (=> res!1556071 e!2375566)))

(assert (=> b!3844323 e!2375566))

(declare-fun lt!1334655 () Unit!58392)

(assert (=> b!3844323 (= lt!1334655 lt!1334657)))

(declare-fun lt!1334656 () Unit!58392)

(declare-fun lemmaSemiInverse!1662 (TokenValueInjection!12456 BalanceConc!24584) Unit!58392)

(assert (=> b!3844323 (= lt!1334656 (lemmaSemiInverse!1662 (transformation!6284 (h!46122 rules!2768)) (seqFromList!4555 (_1!23076 lt!1334653))))))

(declare-fun b!3844324 () Bool)

(declare-fun matchR!5342 (Regex!11189 List!40824) Bool)

(assert (=> b!3844324 (= e!2375566 (matchR!5342 (regex!6284 (h!46122 rules!2768)) (_1!23076 (findLongestMatchInner!1158 (regex!6284 (h!46122 rules!2768)) Nil!40700 (size!30624 Nil!40700) lt!1334553 lt!1334553 (size!30624 lt!1334553)))))))

(declare-fun b!3844325 () Bool)

(declare-fun res!1556065 () Bool)

(assert (=> b!3844325 (=> (not res!1556065) (not e!2375567))))

(assert (=> b!3844325 (= res!1556065 (= (value!199728 (_1!23074 (get!13472 lt!1334654))) (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (get!13472 lt!1334654)))) (seqFromList!4555 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334654)))))))))

(declare-fun b!3844326 () Bool)

(assert (=> b!3844326 (= e!2375567 (= (size!30623 (_1!23074 (get!13472 lt!1334654))) (size!30624 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334654))))))))

(declare-fun b!3844327 () Bool)

(assert (=> b!3844327 (= e!2375569 e!2375567)))

(declare-fun res!1556070 () Bool)

(assert (=> b!3844327 (=> (not res!1556070) (not e!2375567))))

(assert (=> b!3844327 (= res!1556070 (matchR!5342 (regex!6284 (h!46122 rules!2768)) (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334654))))))))

(declare-fun b!3844328 () Bool)

(declare-fun res!1556067 () Bool)

(assert (=> b!3844328 (=> (not res!1556067) (not e!2375567))))

(assert (=> b!3844328 (= res!1556067 (< (size!30624 (_2!23074 (get!13472 lt!1334654))) (size!30624 lt!1334553)))))

(assert (= (and d!1140109 c!669799) b!3844321))

(assert (= (and d!1140109 (not c!669799)) b!3844323))

(assert (= (and b!3844323 (not res!1556071)) b!3844324))

(assert (= (and d!1140109 (not res!1556068)) b!3844327))

(assert (= (and b!3844327 res!1556070) b!3844322))

(assert (= (and b!3844322 res!1556069) b!3844328))

(assert (= (and b!3844328 res!1556067) b!3844320))

(assert (= (and b!3844320 res!1556066) b!3844325))

(assert (= (and b!3844325 res!1556065) b!3844326))

(declare-fun m!4398809 () Bool)

(assert (=> b!3844326 m!4398809))

(declare-fun m!4398811 () Bool)

(assert (=> b!3844326 m!4398811))

(assert (=> b!3844320 m!4398809))

(declare-fun m!4398813 () Bool)

(assert (=> d!1140109 m!4398813))

(declare-fun m!4398815 () Bool)

(assert (=> d!1140109 m!4398815))

(declare-fun m!4398817 () Bool)

(assert (=> d!1140109 m!4398817))

(declare-fun m!4398819 () Bool)

(assert (=> d!1140109 m!4398819))

(declare-fun m!4398821 () Bool)

(assert (=> b!3844324 m!4398821))

(declare-fun m!4398823 () Bool)

(assert (=> b!3844324 m!4398823))

(assert (=> b!3844324 m!4398821))

(assert (=> b!3844324 m!4398823))

(declare-fun m!4398825 () Bool)

(assert (=> b!3844324 m!4398825))

(declare-fun m!4398827 () Bool)

(assert (=> b!3844324 m!4398827))

(assert (=> b!3844328 m!4398809))

(declare-fun m!4398829 () Bool)

(assert (=> b!3844328 m!4398829))

(assert (=> b!3844328 m!4398823))

(assert (=> b!3844327 m!4398809))

(declare-fun m!4398831 () Bool)

(assert (=> b!3844327 m!4398831))

(assert (=> b!3844327 m!4398831))

(declare-fun m!4398833 () Bool)

(assert (=> b!3844327 m!4398833))

(assert (=> b!3844327 m!4398833))

(declare-fun m!4398835 () Bool)

(assert (=> b!3844327 m!4398835))

(declare-fun m!4398837 () Bool)

(assert (=> b!3844323 m!4398837))

(assert (=> b!3844323 m!4398821))

(assert (=> b!3844323 m!4398823))

(assert (=> b!3844323 m!4398825))

(assert (=> b!3844323 m!4398837))

(declare-fun m!4398839 () Bool)

(assert (=> b!3844323 m!4398839))

(assert (=> b!3844323 m!4398823))

(assert (=> b!3844323 m!4398837))

(declare-fun m!4398841 () Bool)

(assert (=> b!3844323 m!4398841))

(assert (=> b!3844323 m!4398821))

(assert (=> b!3844323 m!4398837))

(declare-fun m!4398843 () Bool)

(assert (=> b!3844323 m!4398843))

(declare-fun m!4398845 () Bool)

(assert (=> b!3844323 m!4398845))

(declare-fun m!4398847 () Bool)

(assert (=> b!3844323 m!4398847))

(assert (=> b!3844325 m!4398809))

(declare-fun m!4398849 () Bool)

(assert (=> b!3844325 m!4398849))

(assert (=> b!3844325 m!4398849))

(declare-fun m!4398851 () Bool)

(assert (=> b!3844325 m!4398851))

(assert (=> b!3844322 m!4398809))

(assert (=> b!3844322 m!4398831))

(assert (=> b!3844322 m!4398831))

(assert (=> b!3844322 m!4398833))

(assert (=> b!3844322 m!4398833))

(declare-fun m!4398853 () Bool)

(assert (=> b!3844322 m!4398853))

(assert (=> bm!282019 d!1140109))

(declare-fun d!1140141 () Bool)

(assert (=> d!1140141 (= (_2!23074 (v!38993 lt!1334558)) lt!1334550)))

(declare-fun lt!1334660 () Unit!58392)

(declare-fun choose!22608 (List!40824 List!40824 List!40824 List!40824 List!40824) Unit!58392)

(assert (=> d!1140141 (= lt!1334660 (choose!22608 lt!1334556 (_2!23074 (v!38993 lt!1334558)) lt!1334556 lt!1334550 lt!1334553))))

(assert (=> d!1140141 (isPrefix!3383 lt!1334556 lt!1334553)))

(assert (=> d!1140141 (= (lemmaSamePrefixThenSameSuffix!1604 lt!1334556 (_2!23074 (v!38993 lt!1334558)) lt!1334556 lt!1334550 lt!1334553) lt!1334660)))

(declare-fun bs!582673 () Bool)

(assert (= bs!582673 d!1140141))

(declare-fun m!4398855 () Bool)

(assert (=> bs!582673 m!4398855))

(declare-fun m!4398857 () Bool)

(assert (=> bs!582673 m!4398857))

(assert (=> b!3844075 d!1140141))

(declare-fun d!1140143 () Bool)

(assert (=> d!1140143 (= (size!30623 (_1!23074 (v!38993 lt!1334558))) (size!30624 (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558)))))))

(declare-fun Unit!58395 () Unit!58392)

(assert (=> d!1140143 (= (lemmaCharactersSize!945 (_1!23074 (v!38993 lt!1334558))) Unit!58395)))

(declare-fun bs!582674 () Bool)

(assert (= bs!582674 d!1140143))

(assert (=> bs!582674 m!4398533))

(assert (=> b!3844075 d!1140143))

(declare-fun b!3844329 () Bool)

(declare-fun e!2375571 () Bool)

(declare-fun e!2375570 () Bool)

(assert (=> b!3844329 (= e!2375571 e!2375570)))

(declare-fun res!1556072 () Bool)

(declare-fun lt!1334663 () tuple2!39878)

(assert (=> b!3844329 (= res!1556072 (< (size!30624 (_2!23073 lt!1334663)) (size!30624 (_2!23074 (v!38993 lt!1334558)))))))

(assert (=> b!3844329 (=> (not res!1556072) (not e!2375570))))

(declare-fun b!3844330 () Bool)

(assert (=> b!3844330 (= e!2375571 (= (_2!23073 lt!1334663) (_2!23074 (v!38993 lt!1334558))))))

(declare-fun b!3844331 () Bool)

(declare-fun e!2375572 () tuple2!39878)

(assert (=> b!3844331 (= e!2375572 (tuple2!39879 Nil!40703 (_2!23074 (v!38993 lt!1334558))))))

(declare-fun d!1140145 () Bool)

(assert (=> d!1140145 e!2375571))

(declare-fun c!669801 () Bool)

(assert (=> d!1140145 (= c!669801 (> (size!30627 (_1!23073 lt!1334663)) 0))))

(assert (=> d!1140145 (= lt!1334663 e!2375572)))

(declare-fun c!669800 () Bool)

(declare-fun lt!1334661 () Option!8702)

(assert (=> d!1140145 (= c!669800 ((_ is Some!8701) lt!1334661))))

(assert (=> d!1140145 (= lt!1334661 (maxPrefix!3177 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334558))))))

(assert (=> d!1140145 (= (lexList!1641 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334558))) lt!1334663)))

(declare-fun b!3844332 () Bool)

(declare-fun lt!1334662 () tuple2!39878)

(assert (=> b!3844332 (= e!2375572 (tuple2!39879 (Cons!40703 (_1!23074 (v!38993 lt!1334661)) (_1!23073 lt!1334662)) (_2!23073 lt!1334662)))))

(assert (=> b!3844332 (= lt!1334662 (lexList!1641 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334661))))))

(declare-fun b!3844333 () Bool)

(assert (=> b!3844333 (= e!2375570 (not (isEmpty!24069 (_1!23073 lt!1334663))))))

(assert (= (and d!1140145 c!669800) b!3844332))

(assert (= (and d!1140145 (not c!669800)) b!3844331))

(assert (= (and d!1140145 c!669801) b!3844329))

(assert (= (and d!1140145 (not c!669801)) b!3844330))

(assert (= (and b!3844329 res!1556072) b!3844333))

(declare-fun m!4398859 () Bool)

(assert (=> b!3844329 m!4398859))

(declare-fun m!4398861 () Bool)

(assert (=> b!3844329 m!4398861))

(declare-fun m!4398863 () Bool)

(assert (=> d!1140145 m!4398863))

(declare-fun m!4398865 () Bool)

(assert (=> d!1140145 m!4398865))

(declare-fun m!4398867 () Bool)

(assert (=> b!3844332 m!4398867))

(declare-fun m!4398869 () Bool)

(assert (=> b!3844333 m!4398869))

(assert (=> b!3844075 d!1140145))

(declare-fun d!1140147 () Bool)

(declare-fun list!15154 (Conc!12495) List!40824)

(assert (=> d!1140147 (= (list!15152 (charsOf!4112 (_1!23074 (v!38993 lt!1334558)))) (list!15154 (c!669756 (charsOf!4112 (_1!23074 (v!38993 lt!1334558))))))))

(declare-fun bs!582675 () Bool)

(assert (= bs!582675 d!1140147))

(declare-fun m!4398871 () Bool)

(assert (=> bs!582675 m!4398871))

(assert (=> b!3844075 d!1140147))

(declare-fun b!3844349 () Bool)

(declare-fun e!2375580 () Bool)

(declare-fun lt!1334670 () List!40824)

(assert (=> b!3844349 (= e!2375580 (or (not (= (_2!23074 (v!38993 lt!1334558)) Nil!40700)) (= lt!1334670 lt!1334556)))))

(declare-fun d!1140149 () Bool)

(assert (=> d!1140149 e!2375580))

(declare-fun res!1556079 () Bool)

(assert (=> d!1140149 (=> (not res!1556079) (not e!2375580))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6046 (List!40824) (InoxSet C!22564))

(assert (=> d!1140149 (= res!1556079 (= (content!6046 lt!1334670) ((_ map or) (content!6046 lt!1334556) (content!6046 (_2!23074 (v!38993 lt!1334558))))))))

(declare-fun e!2375579 () List!40824)

(assert (=> d!1140149 (= lt!1334670 e!2375579)))

(declare-fun c!669805 () Bool)

(assert (=> d!1140149 (= c!669805 ((_ is Nil!40700) lt!1334556))))

(assert (=> d!1140149 (= (++!10325 lt!1334556 (_2!23074 (v!38993 lt!1334558))) lt!1334670)))

(declare-fun b!3844347 () Bool)

(assert (=> b!3844347 (= e!2375579 (Cons!40700 (h!46120 lt!1334556) (++!10325 (t!310773 lt!1334556) (_2!23074 (v!38993 lt!1334558)))))))

(declare-fun b!3844346 () Bool)

(assert (=> b!3844346 (= e!2375579 (_2!23074 (v!38993 lt!1334558)))))

(declare-fun b!3844348 () Bool)

(declare-fun res!1556080 () Bool)

(assert (=> b!3844348 (=> (not res!1556080) (not e!2375580))))

(assert (=> b!3844348 (= res!1556080 (= (size!30624 lt!1334670) (+ (size!30624 lt!1334556) (size!30624 (_2!23074 (v!38993 lt!1334558))))))))

(assert (= (and d!1140149 c!669805) b!3844346))

(assert (= (and d!1140149 (not c!669805)) b!3844347))

(assert (= (and d!1140149 res!1556079) b!3844348))

(assert (= (and b!3844348 res!1556080) b!3844349))

(declare-fun m!4398887 () Bool)

(assert (=> d!1140149 m!4398887))

(declare-fun m!4398889 () Bool)

(assert (=> d!1140149 m!4398889))

(declare-fun m!4398891 () Bool)

(assert (=> d!1140149 m!4398891))

(declare-fun m!4398893 () Bool)

(assert (=> b!3844347 m!4398893))

(declare-fun m!4398895 () Bool)

(assert (=> b!3844348 m!4398895))

(assert (=> b!3844348 m!4398545))

(assert (=> b!3844348 m!4398861))

(assert (=> b!3844075 d!1140149))

(declare-fun d!1140155 () Bool)

(declare-fun dynLambda!17582 (Int BalanceConc!24584) TokenValue!6514)

(assert (=> d!1140155 (= (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))) (seqFromList!4555 lt!1334556)) (dynLambda!17582 (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))) (seqFromList!4555 lt!1334556)))))

(declare-fun b_lambda!112365 () Bool)

(assert (=> (not b_lambda!112365) (not d!1140155)))

(declare-fun t!310818 () Bool)

(declare-fun tb!221297 () Bool)

(assert (=> (and b!3844094 (= (toValue!8700 (transformation!6284 (h!46122 rules!2768))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310818) tb!221297))

(declare-fun result!269692 () Bool)

(assert (=> tb!221297 (= result!269692 (inv!21 (dynLambda!17582 (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))) (seqFromList!4555 lt!1334556))))))

(declare-fun m!4398905 () Bool)

(assert (=> tb!221297 m!4398905))

(assert (=> d!1140155 t!310818))

(declare-fun b_and!286639 () Bool)

(assert (= b_and!286583 (and (=> t!310818 result!269692) b_and!286639)))

(declare-fun tb!221299 () Bool)

(declare-fun t!310820 () Bool)

(assert (=> (and b!3844100 (= (toValue!8700 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310820) tb!221299))

(declare-fun result!269696 () Bool)

(assert (= result!269696 result!269692))

(assert (=> d!1140155 t!310820))

(declare-fun b_and!286641 () Bool)

(assert (= b_and!286587 (and (=> t!310820 result!269696) b_and!286641)))

(declare-fun tb!221301 () Bool)

(declare-fun t!310822 () Bool)

(assert (=> (and b!3844091 (= (toValue!8700 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310822) tb!221301))

(declare-fun result!269698 () Bool)

(assert (= result!269698 result!269692))

(assert (=> d!1140155 t!310822))

(declare-fun b_and!286643 () Bool)

(assert (= b_and!286591 (and (=> t!310822 result!269698) b_and!286643)))

(declare-fun tb!221303 () Bool)

(declare-fun t!310824 () Bool)

(assert (=> (and b!3844084 (= (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310824) tb!221303))

(declare-fun result!269700 () Bool)

(assert (= result!269700 result!269692))

(assert (=> d!1140155 t!310824))

(declare-fun b_and!286645 () Bool)

(assert (= b_and!286595 (and (=> t!310824 result!269700) b_and!286645)))

(assert (=> d!1140155 m!4398553))

(declare-fun m!4398923 () Bool)

(assert (=> d!1140155 m!4398923))

(assert (=> b!3844075 d!1140155))

(declare-fun d!1140157 () Bool)

(declare-fun lt!1334679 () BalanceConc!24584)

(assert (=> d!1140157 (= (list!15152 lt!1334679) (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558))))))

(assert (=> d!1140157 (= lt!1334679 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))) (value!199728 (_1!23074 (v!38993 lt!1334558)))))))

(assert (=> d!1140157 (= (charsOf!4112 (_1!23074 (v!38993 lt!1334558))) lt!1334679)))

(declare-fun b_lambda!112367 () Bool)

(assert (=> (not b_lambda!112367) (not d!1140157)))

(declare-fun tb!221305 () Bool)

(declare-fun t!310826 () Bool)

(assert (=> (and b!3844094 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310826) tb!221305))

(declare-fun b!3844365 () Bool)

(declare-fun e!2375590 () Bool)

(declare-fun tp!1164901 () Bool)

(assert (=> b!3844365 (= e!2375590 (and (inv!54849 (c!669756 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))) (value!199728 (_1!23074 (v!38993 lt!1334558)))))) tp!1164901))))

(declare-fun result!269702 () Bool)

(assert (=> tb!221305 (= result!269702 (and (inv!54850 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))) (value!199728 (_1!23074 (v!38993 lt!1334558))))) e!2375590))))

(assert (= tb!221305 b!3844365))

(declare-fun m!4398937 () Bool)

(assert (=> b!3844365 m!4398937))

(declare-fun m!4398939 () Bool)

(assert (=> tb!221305 m!4398939))

(assert (=> d!1140157 t!310826))

(declare-fun b_and!286647 () Bool)

(assert (= b_and!286607 (and (=> t!310826 result!269702) b_and!286647)))

(declare-fun tb!221307 () Bool)

(declare-fun t!310828 () Bool)

(assert (=> (and b!3844100 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310828) tb!221307))

(declare-fun result!269704 () Bool)

(assert (= result!269704 result!269702))

(assert (=> d!1140157 t!310828))

(declare-fun b_and!286649 () Bool)

(assert (= b_and!286609 (and (=> t!310828 result!269704) b_and!286649)))

(declare-fun tb!221309 () Bool)

(declare-fun t!310830 () Bool)

(assert (=> (and b!3844091 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310830) tb!221309))

(declare-fun result!269706 () Bool)

(assert (= result!269706 result!269702))

(assert (=> d!1140157 t!310830))

(declare-fun b_and!286651 () Bool)

(assert (= b_and!286611 (and (=> t!310830 result!269706) b_and!286651)))

(declare-fun tb!221311 () Bool)

(declare-fun t!310832 () Bool)

(assert (=> (and b!3844084 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310832) tb!221311))

(declare-fun result!269708 () Bool)

(assert (= result!269708 result!269702))

(assert (=> d!1140157 t!310832))

(declare-fun b_and!286653 () Bool)

(assert (= b_and!286613 (and (=> t!310832 result!269708) b_and!286653)))

(declare-fun m!4398941 () Bool)

(assert (=> d!1140157 m!4398941))

(declare-fun m!4398943 () Bool)

(assert (=> d!1140157 m!4398943))

(assert (=> b!3844075 d!1140157))

(declare-fun d!1140165 () Bool)

(declare-fun res!1556103 () Bool)

(declare-fun e!2375596 () Bool)

(assert (=> d!1140165 (=> (not res!1556103) (not e!2375596))))

(declare-fun validRegex!5090 (Regex!11189) Bool)

(assert (=> d!1140165 (= res!1556103 (validRegex!5090 (regex!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558))))))))

(assert (=> d!1140165 (= (ruleValid!2236 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558)))) e!2375596)))

(declare-fun b!3844379 () Bool)

(declare-fun res!1556104 () Bool)

(assert (=> b!3844379 (=> (not res!1556104) (not e!2375596))))

(declare-fun nullable!3891 (Regex!11189) Bool)

(assert (=> b!3844379 (= res!1556104 (not (nullable!3891 (regex!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))))))

(declare-fun b!3844380 () Bool)

(assert (=> b!3844380 (= e!2375596 (not (= (tag!7144 (rule!9126 (_1!23074 (v!38993 lt!1334558)))) (String!46288 ""))))))

(assert (= (and d!1140165 res!1556103) b!3844379))

(assert (= (and b!3844379 res!1556104) b!3844380))

(declare-fun m!4398965 () Bool)

(assert (=> d!1140165 m!4398965))

(declare-fun m!4398969 () Bool)

(assert (=> b!3844379 m!4398969))

(assert (=> b!3844075 d!1140165))

(declare-fun d!1140169 () Bool)

(declare-fun lt!1334690 () Int)

(assert (=> d!1140169 (>= lt!1334690 0)))

(declare-fun e!2375599 () Int)

(assert (=> d!1140169 (= lt!1334690 e!2375599)))

(declare-fun c!669810 () Bool)

(assert (=> d!1140169 (= c!669810 ((_ is Nil!40700) lt!1334556))))

(assert (=> d!1140169 (= (size!30624 lt!1334556) lt!1334690)))

(declare-fun b!3844385 () Bool)

(assert (=> b!3844385 (= e!2375599 0)))

(declare-fun b!3844386 () Bool)

(assert (=> b!3844386 (= e!2375599 (+ 1 (size!30624 (t!310773 lt!1334556))))))

(assert (= (and d!1140169 c!669810) b!3844385))

(assert (= (and d!1140169 (not c!669810)) b!3844386))

(declare-fun m!4398979 () Bool)

(assert (=> b!3844386 m!4398979))

(assert (=> b!3844075 d!1140169))

(declare-fun d!1140175 () Bool)

(declare-fun lt!1334696 () List!40824)

(assert (=> d!1140175 (= (++!10325 lt!1334556 lt!1334696) lt!1334553)))

(declare-fun e!2375608 () List!40824)

(assert (=> d!1140175 (= lt!1334696 e!2375608)))

(declare-fun c!669815 () Bool)

(assert (=> d!1140175 (= c!669815 ((_ is Cons!40700) lt!1334556))))

(assert (=> d!1140175 (>= (size!30624 lt!1334553) (size!30624 lt!1334556))))

(assert (=> d!1140175 (= (getSuffix!1838 lt!1334553 lt!1334556) lt!1334696)))

(declare-fun b!3844399 () Bool)

(declare-fun tail!5813 (List!40824) List!40824)

(assert (=> b!3844399 (= e!2375608 (getSuffix!1838 (tail!5813 lt!1334553) (t!310773 lt!1334556)))))

(declare-fun b!3844400 () Bool)

(assert (=> b!3844400 (= e!2375608 lt!1334553)))

(assert (= (and d!1140175 c!669815) b!3844399))

(assert (= (and d!1140175 (not c!669815)) b!3844400))

(declare-fun m!4398993 () Bool)

(assert (=> d!1140175 m!4398993))

(assert (=> d!1140175 m!4398823))

(assert (=> d!1140175 m!4398545))

(declare-fun m!4398995 () Bool)

(assert (=> b!3844399 m!4398995))

(assert (=> b!3844399 m!4398995))

(declare-fun m!4398997 () Bool)

(assert (=> b!3844399 m!4398997))

(assert (=> b!3844075 d!1140175))

(declare-fun d!1140181 () Bool)

(declare-fun fromListB!2101 (List!40824) BalanceConc!24584)

(assert (=> d!1140181 (= (seqFromList!4555 lt!1334556) (fromListB!2101 lt!1334556))))

(declare-fun bs!582679 () Bool)

(assert (= bs!582679 d!1140181))

(declare-fun m!4398999 () Bool)

(assert (=> bs!582679 m!4398999))

(assert (=> b!3844075 d!1140181))

(declare-fun d!1140183 () Bool)

(assert (=> d!1140183 (ruleValid!2236 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558))))))

(declare-fun lt!1334701 () Unit!58392)

(declare-fun choose!22611 (LexerInterface!5873 Rule!12368 List!40826) Unit!58392)

(assert (=> d!1140183 (= lt!1334701 (choose!22611 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558))) rules!2768))))

(declare-fun contains!8236 (List!40826 Rule!12368) Bool)

(assert (=> d!1140183 (contains!8236 rules!2768 (rule!9126 (_1!23074 (v!38993 lt!1334558))))))

(assert (=> d!1140183 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1316 thiss!20629 (rule!9126 (_1!23074 (v!38993 lt!1334558))) rules!2768) lt!1334701)))

(declare-fun bs!582680 () Bool)

(assert (= bs!582680 d!1140183))

(assert (=> bs!582680 m!4398555))

(declare-fun m!4399001 () Bool)

(assert (=> bs!582680 m!4399001))

(declare-fun m!4399003 () Bool)

(assert (=> bs!582680 m!4399003))

(assert (=> b!3844075 d!1140183))

(declare-fun d!1140185 () Bool)

(assert (=> d!1140185 (isPrefix!3383 lt!1334556 (++!10325 lt!1334556 (_2!23074 (v!38993 lt!1334558))))))

(declare-fun lt!1334709 () Unit!58392)

(declare-fun choose!22612 (List!40824 List!40824) Unit!58392)

(assert (=> d!1140185 (= lt!1334709 (choose!22612 lt!1334556 (_2!23074 (v!38993 lt!1334558))))))

(assert (=> d!1140185 (= (lemmaConcatTwoListThenFirstIsPrefix!2246 lt!1334556 (_2!23074 (v!38993 lt!1334558))) lt!1334709)))

(declare-fun bs!582681 () Bool)

(assert (= bs!582681 d!1140185))

(assert (=> bs!582681 m!4398563))

(assert (=> bs!582681 m!4398563))

(declare-fun m!4399037 () Bool)

(assert (=> bs!582681 m!4399037))

(declare-fun m!4399039 () Bool)

(assert (=> bs!582681 m!4399039))

(assert (=> b!3844075 d!1140185))

(declare-fun b!3844448 () Bool)

(declare-fun e!2375636 () Bool)

(assert (=> b!3844448 (= e!2375636 (>= (size!30624 lt!1334554) (size!30624 lt!1334556)))))

(declare-fun b!3844445 () Bool)

(declare-fun e!2375637 () Bool)

(declare-fun e!2375638 () Bool)

(assert (=> b!3844445 (= e!2375637 e!2375638)))

(declare-fun res!1556135 () Bool)

(assert (=> b!3844445 (=> (not res!1556135) (not e!2375638))))

(assert (=> b!3844445 (= res!1556135 (not ((_ is Nil!40700) lt!1334554)))))

(declare-fun b!3844446 () Bool)

(declare-fun res!1556134 () Bool)

(assert (=> b!3844446 (=> (not res!1556134) (not e!2375638))))

(declare-fun head!8086 (List!40824) C!22564)

(assert (=> b!3844446 (= res!1556134 (= (head!8086 lt!1334556) (head!8086 lt!1334554)))))

(declare-fun d!1140193 () Bool)

(assert (=> d!1140193 e!2375636))

(declare-fun res!1556137 () Bool)

(assert (=> d!1140193 (=> res!1556137 e!2375636)))

(declare-fun lt!1334713 () Bool)

(assert (=> d!1140193 (= res!1556137 (not lt!1334713))))

(assert (=> d!1140193 (= lt!1334713 e!2375637)))

(declare-fun res!1556136 () Bool)

(assert (=> d!1140193 (=> res!1556136 e!2375637)))

(assert (=> d!1140193 (= res!1556136 ((_ is Nil!40700) lt!1334556))))

(assert (=> d!1140193 (= (isPrefix!3383 lt!1334556 lt!1334554) lt!1334713)))

(declare-fun b!3844447 () Bool)

(assert (=> b!3844447 (= e!2375638 (isPrefix!3383 (tail!5813 lt!1334556) (tail!5813 lt!1334554)))))

(assert (= (and d!1140193 (not res!1556136)) b!3844445))

(assert (= (and b!3844445 res!1556135) b!3844446))

(assert (= (and b!3844446 res!1556134) b!3844447))

(assert (= (and d!1140193 (not res!1556137)) b!3844448))

(declare-fun m!4399085 () Bool)

(assert (=> b!3844448 m!4399085))

(assert (=> b!3844448 m!4398545))

(declare-fun m!4399087 () Bool)

(assert (=> b!3844446 m!4399087))

(declare-fun m!4399089 () Bool)

(assert (=> b!3844446 m!4399089))

(declare-fun m!4399091 () Bool)

(assert (=> b!3844447 m!4399091))

(declare-fun m!4399093 () Bool)

(assert (=> b!3844447 m!4399093))

(assert (=> b!3844447 m!4399091))

(assert (=> b!3844447 m!4399093))

(declare-fun m!4399095 () Bool)

(assert (=> b!3844447 m!4399095))

(assert (=> b!3844075 d!1140193))

(declare-fun b!3844452 () Bool)

(declare-fun e!2375639 () Bool)

(assert (=> b!3844452 (= e!2375639 (>= (size!30624 suffix!1176) (size!30624 Nil!40700)))))

(declare-fun b!3844449 () Bool)

(declare-fun e!2375640 () Bool)

(declare-fun e!2375641 () Bool)

(assert (=> b!3844449 (= e!2375640 e!2375641)))

(declare-fun res!1556139 () Bool)

(assert (=> b!3844449 (=> (not res!1556139) (not e!2375641))))

(assert (=> b!3844449 (= res!1556139 (not ((_ is Nil!40700) suffix!1176)))))

(declare-fun b!3844450 () Bool)

(declare-fun res!1556138 () Bool)

(assert (=> b!3844450 (=> (not res!1556138) (not e!2375641))))

(assert (=> b!3844450 (= res!1556138 (= (head!8086 Nil!40700) (head!8086 suffix!1176)))))

(declare-fun d!1140217 () Bool)

(assert (=> d!1140217 e!2375639))

(declare-fun res!1556141 () Bool)

(assert (=> d!1140217 (=> res!1556141 e!2375639)))

(declare-fun lt!1334714 () Bool)

(assert (=> d!1140217 (= res!1556141 (not lt!1334714))))

(assert (=> d!1140217 (= lt!1334714 e!2375640)))

(declare-fun res!1556140 () Bool)

(assert (=> d!1140217 (=> res!1556140 e!2375640)))

(assert (=> d!1140217 (= res!1556140 ((_ is Nil!40700) Nil!40700))))

(assert (=> d!1140217 (= (isPrefix!3383 Nil!40700 suffix!1176) lt!1334714)))

(declare-fun b!3844451 () Bool)

(assert (=> b!3844451 (= e!2375641 (isPrefix!3383 (tail!5813 Nil!40700) (tail!5813 suffix!1176)))))

(assert (= (and d!1140217 (not res!1556140)) b!3844449))

(assert (= (and b!3844449 res!1556139) b!3844450))

(assert (= (and b!3844450 res!1556138) b!3844451))

(assert (= (and d!1140217 (not res!1556141)) b!3844452))

(assert (=> b!3844452 m!4398669))

(assert (=> b!3844452 m!4398821))

(declare-fun m!4399097 () Bool)

(assert (=> b!3844450 m!4399097))

(declare-fun m!4399099 () Bool)

(assert (=> b!3844450 m!4399099))

(declare-fun m!4399101 () Bool)

(assert (=> b!3844451 m!4399101))

(declare-fun m!4399103 () Bool)

(assert (=> b!3844451 m!4399103))

(assert (=> b!3844451 m!4399101))

(assert (=> b!3844451 m!4399103))

(declare-fun m!4399105 () Bool)

(assert (=> b!3844451 m!4399105))

(assert (=> b!3844077 d!1140217))

(declare-fun d!1140219 () Bool)

(declare-fun res!1556145 () Bool)

(declare-fun e!2375645 () Bool)

(assert (=> d!1140219 (=> (not res!1556145) (not e!2375645))))

(declare-fun rulesValid!2426 (LexerInterface!5873 List!40826) Bool)

(assert (=> d!1140219 (= res!1556145 (rulesValid!2426 thiss!20629 rules!2768))))

(assert (=> d!1140219 (= (rulesInvariant!5216 thiss!20629 rules!2768) e!2375645)))

(declare-fun b!3844455 () Bool)

(declare-datatypes ((List!40829 0))(
  ( (Nil!40705) (Cons!40705 (h!46125 String!46287) (t!310918 List!40829)) )
))
(declare-fun noDuplicateTag!2427 (LexerInterface!5873 List!40826 List!40829) Bool)

(assert (=> b!3844455 (= e!2375645 (noDuplicateTag!2427 thiss!20629 rules!2768 Nil!40705))))

(assert (= (and d!1140219 res!1556145) b!3844455))

(declare-fun m!4399109 () Bool)

(assert (=> d!1140219 m!4399109))

(declare-fun m!4399111 () Bool)

(assert (=> b!3844455 m!4399111))

(assert (=> b!3844076 d!1140219))

(declare-fun d!1140225 () Bool)

(assert (=> d!1140225 true))

(declare-fun lt!1334728 () Bool)

(declare-fun lambda!126098 () Int)

(declare-fun forall!8280 (List!40826 Int) Bool)

(assert (=> d!1140225 (= lt!1334728 (forall!8280 rules!2768 lambda!126098))))

(declare-fun e!2375662 () Bool)

(assert (=> d!1140225 (= lt!1334728 e!2375662)))

(declare-fun res!1556163 () Bool)

(assert (=> d!1140225 (=> res!1556163 e!2375662)))

(assert (=> d!1140225 (= res!1556163 (not ((_ is Cons!40702) rules!2768)))))

(assert (=> d!1140225 (= (rulesValidInductive!2224 thiss!20629 rules!2768) lt!1334728)))

(declare-fun b!3844483 () Bool)

(declare-fun e!2375663 () Bool)

(assert (=> b!3844483 (= e!2375662 e!2375663)))

(declare-fun res!1556164 () Bool)

(assert (=> b!3844483 (=> (not res!1556164) (not e!2375663))))

(assert (=> b!3844483 (= res!1556164 (ruleValid!2236 thiss!20629 (h!46122 rules!2768)))))

(declare-fun b!3844484 () Bool)

(assert (=> b!3844484 (= e!2375663 (rulesValidInductive!2224 thiss!20629 (t!310775 rules!2768)))))

(assert (= (and d!1140225 (not res!1556163)) b!3844483))

(assert (= (and b!3844483 res!1556164) b!3844484))

(declare-fun m!4399155 () Bool)

(assert (=> d!1140225 m!4399155))

(assert (=> b!3844483 m!4398819))

(declare-fun m!4399157 () Bool)

(assert (=> b!3844484 m!4399157))

(assert (=> b!3844078 d!1140225))

(declare-fun d!1140237 () Bool)

(declare-fun lt!1334729 () Int)

(assert (=> d!1140237 (>= lt!1334729 0)))

(declare-fun e!2375664 () Int)

(assert (=> d!1140237 (= lt!1334729 e!2375664)))

(declare-fun c!669829 () Bool)

(assert (=> d!1140237 (= c!669829 ((_ is Nil!40700) (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558)))))))

(assert (=> d!1140237 (= (size!30624 (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558)))) lt!1334729)))

(declare-fun b!3844487 () Bool)

(assert (=> b!3844487 (= e!2375664 0)))

(declare-fun b!3844488 () Bool)

(assert (=> b!3844488 (= e!2375664 (+ 1 (size!30624 (t!310773 (originalCharacters!6884 (_1!23074 (v!38993 lt!1334558)))))))))

(assert (= (and d!1140237 c!669829) b!3844487))

(assert (= (and d!1140237 (not c!669829)) b!3844488))

(declare-fun m!4399159 () Bool)

(assert (=> b!3844488 m!4399159))

(assert (=> b!3844098 d!1140237))

(declare-fun d!1140239 () Bool)

(declare-fun res!1556165 () Bool)

(declare-fun e!2375665 () Bool)

(assert (=> d!1140239 (=> (not res!1556165) (not e!2375665))))

(assert (=> d!1140239 (= res!1556165 (not (isEmpty!24068 (originalCharacters!6884 (h!46123 suffixTokens!72)))))))

(assert (=> d!1140239 (= (inv!54846 (h!46123 suffixTokens!72)) e!2375665)))

(declare-fun b!3844489 () Bool)

(declare-fun res!1556166 () Bool)

(assert (=> b!3844489 (=> (not res!1556166) (not e!2375665))))

(assert (=> b!3844489 (= res!1556166 (= (originalCharacters!6884 (h!46123 suffixTokens!72)) (list!15152 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (value!199728 (h!46123 suffixTokens!72))))))))

(declare-fun b!3844490 () Bool)

(assert (=> b!3844490 (= e!2375665 (= (size!30623 (h!46123 suffixTokens!72)) (size!30624 (originalCharacters!6884 (h!46123 suffixTokens!72)))))))

(assert (= (and d!1140239 res!1556165) b!3844489))

(assert (= (and b!3844489 res!1556166) b!3844490))

(declare-fun b_lambda!112373 () Bool)

(assert (=> (not b_lambda!112373) (not b!3844489)))

(declare-fun tb!221329 () Bool)

(declare-fun t!310850 () Bool)

(assert (=> (and b!3844094 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310850) tb!221329))

(declare-fun b!3844491 () Bool)

(declare-fun e!2375666 () Bool)

(declare-fun tp!1164904 () Bool)

(assert (=> b!3844491 (= e!2375666 (and (inv!54849 (c!669756 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (value!199728 (h!46123 suffixTokens!72))))) tp!1164904))))

(declare-fun result!269726 () Bool)

(assert (=> tb!221329 (= result!269726 (and (inv!54850 (dynLambda!17581 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (value!199728 (h!46123 suffixTokens!72)))) e!2375666))))

(assert (= tb!221329 b!3844491))

(declare-fun m!4399161 () Bool)

(assert (=> b!3844491 m!4399161))

(declare-fun m!4399163 () Bool)

(assert (=> tb!221329 m!4399163))

(assert (=> b!3844489 t!310850))

(declare-fun b_and!286671 () Bool)

(assert (= b_and!286647 (and (=> t!310850 result!269726) b_and!286671)))

(declare-fun t!310852 () Bool)

(declare-fun tb!221331 () Bool)

(assert (=> (and b!3844100 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310852) tb!221331))

(declare-fun result!269728 () Bool)

(assert (= result!269728 result!269726))

(assert (=> b!3844489 t!310852))

(declare-fun b_and!286673 () Bool)

(assert (= b_and!286649 (and (=> t!310852 result!269728) b_and!286673)))

(declare-fun t!310854 () Bool)

(declare-fun tb!221333 () Bool)

(assert (=> (and b!3844091 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310854) tb!221333))

(declare-fun result!269730 () Bool)

(assert (= result!269730 result!269726))

(assert (=> b!3844489 t!310854))

(declare-fun b_and!286675 () Bool)

(assert (= b_and!286651 (and (=> t!310854 result!269730) b_and!286675)))

(declare-fun t!310856 () Bool)

(declare-fun tb!221335 () Bool)

(assert (=> (and b!3844084 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310856) tb!221335))

(declare-fun result!269732 () Bool)

(assert (= result!269732 result!269726))

(assert (=> b!3844489 t!310856))

(declare-fun b_and!286677 () Bool)

(assert (= b_and!286653 (and (=> t!310856 result!269732) b_and!286677)))

(declare-fun m!4399165 () Bool)

(assert (=> d!1140239 m!4399165))

(declare-fun m!4399167 () Bool)

(assert (=> b!3844489 m!4399167))

(assert (=> b!3844489 m!4399167))

(declare-fun m!4399169 () Bool)

(assert (=> b!3844489 m!4399169))

(declare-fun m!4399171 () Bool)

(assert (=> b!3844490 m!4399171))

(assert (=> b!3844099 d!1140239))

(declare-fun b!3844580 () Bool)

(declare-fun e!2375728 () Bool)

(declare-fun lt!1334742 () Option!8702)

(assert (=> b!3844580 (= e!2375728 (contains!8236 rules!2768 (rule!9126 (_1!23074 (get!13472 lt!1334742)))))))

(declare-fun b!3844581 () Bool)

(declare-fun res!1556188 () Bool)

(assert (=> b!3844581 (=> (not res!1556188) (not e!2375728))))

(assert (=> b!3844581 (= res!1556188 (= (value!199728 (_1!23074 (get!13472 lt!1334742))) (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (get!13472 lt!1334742)))) (seqFromList!4555 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334742)))))))))

(declare-fun d!1140241 () Bool)

(declare-fun e!2375727 () Bool)

(assert (=> d!1140241 e!2375727))

(declare-fun res!1556184 () Bool)

(assert (=> d!1140241 (=> res!1556184 e!2375727)))

(assert (=> d!1140241 (= res!1556184 (isEmpty!24072 lt!1334742))))

(declare-fun e!2375726 () Option!8702)

(assert (=> d!1140241 (= lt!1334742 e!2375726)))

(declare-fun c!669832 () Bool)

(assert (=> d!1140241 (= c!669832 (and ((_ is Cons!40702) rules!2768) ((_ is Nil!40702) (t!310775 rules!2768))))))

(declare-fun lt!1334744 () Unit!58392)

(declare-fun lt!1334741 () Unit!58392)

(assert (=> d!1140241 (= lt!1334744 lt!1334741)))

(assert (=> d!1140241 (isPrefix!3383 lt!1334553 lt!1334553)))

(assert (=> d!1140241 (= lt!1334741 (lemmaIsPrefixRefl!2156 lt!1334553 lt!1334553))))

(assert (=> d!1140241 (rulesValidInductive!2224 thiss!20629 rules!2768)))

(assert (=> d!1140241 (= (maxPrefix!3177 thiss!20629 rules!2768 lt!1334553) lt!1334742)))

(declare-fun b!3844582 () Bool)

(declare-fun call!282033 () Option!8702)

(assert (=> b!3844582 (= e!2375726 call!282033)))

(declare-fun b!3844583 () Bool)

(declare-fun res!1556187 () Bool)

(assert (=> b!3844583 (=> (not res!1556187) (not e!2375728))))

(assert (=> b!3844583 (= res!1556187 (= (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334742)))) (originalCharacters!6884 (_1!23074 (get!13472 lt!1334742)))))))

(declare-fun b!3844584 () Bool)

(declare-fun res!1556185 () Bool)

(assert (=> b!3844584 (=> (not res!1556185) (not e!2375728))))

(assert (=> b!3844584 (= res!1556185 (matchR!5342 (regex!6284 (rule!9126 (_1!23074 (get!13472 lt!1334742)))) (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334742))))))))

(declare-fun b!3844585 () Bool)

(declare-fun lt!1334743 () Option!8702)

(declare-fun lt!1334745 () Option!8702)

(assert (=> b!3844585 (= e!2375726 (ite (and ((_ is None!8701) lt!1334743) ((_ is None!8701) lt!1334745)) None!8701 (ite ((_ is None!8701) lt!1334745) lt!1334743 (ite ((_ is None!8701) lt!1334743) lt!1334745 (ite (>= (size!30623 (_1!23074 (v!38993 lt!1334743))) (size!30623 (_1!23074 (v!38993 lt!1334745)))) lt!1334743 lt!1334745)))))))

(assert (=> b!3844585 (= lt!1334743 call!282033)))

(assert (=> b!3844585 (= lt!1334745 (maxPrefix!3177 thiss!20629 (t!310775 rules!2768) lt!1334553))))

(declare-fun b!3844586 () Bool)

(declare-fun res!1556186 () Bool)

(assert (=> b!3844586 (=> (not res!1556186) (not e!2375728))))

(assert (=> b!3844586 (= res!1556186 (< (size!30624 (_2!23074 (get!13472 lt!1334742))) (size!30624 lt!1334553)))))

(declare-fun b!3844587 () Bool)

(declare-fun res!1556183 () Bool)

(assert (=> b!3844587 (=> (not res!1556183) (not e!2375728))))

(assert (=> b!3844587 (= res!1556183 (= (++!10325 (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334742)))) (_2!23074 (get!13472 lt!1334742))) lt!1334553))))

(declare-fun bm!282028 () Bool)

(assert (=> bm!282028 (= call!282033 (maxPrefixOneRule!2261 thiss!20629 (h!46122 rules!2768) lt!1334553))))

(declare-fun b!3844588 () Bool)

(assert (=> b!3844588 (= e!2375727 e!2375728)))

(declare-fun res!1556189 () Bool)

(assert (=> b!3844588 (=> (not res!1556189) (not e!2375728))))

(assert (=> b!3844588 (= res!1556189 (isDefined!6833 lt!1334742))))

(assert (= (and d!1140241 c!669832) b!3844582))

(assert (= (and d!1140241 (not c!669832)) b!3844585))

(assert (= (or b!3844582 b!3844585) bm!282028))

(assert (= (and d!1140241 (not res!1556184)) b!3844588))

(assert (= (and b!3844588 res!1556189) b!3844583))

(assert (= (and b!3844583 res!1556187) b!3844586))

(assert (= (and b!3844586 res!1556186) b!3844587))

(assert (= (and b!3844587 res!1556183) b!3844581))

(assert (= (and b!3844581 res!1556188) b!3844584))

(assert (= (and b!3844584 res!1556185) b!3844580))

(declare-fun m!4399195 () Bool)

(assert (=> b!3844583 m!4399195))

(declare-fun m!4399197 () Bool)

(assert (=> b!3844583 m!4399197))

(assert (=> b!3844583 m!4399197))

(declare-fun m!4399199 () Bool)

(assert (=> b!3844583 m!4399199))

(assert (=> b!3844581 m!4399195))

(declare-fun m!4399201 () Bool)

(assert (=> b!3844581 m!4399201))

(assert (=> b!3844581 m!4399201))

(declare-fun m!4399203 () Bool)

(assert (=> b!3844581 m!4399203))

(declare-fun m!4399205 () Bool)

(assert (=> d!1140241 m!4399205))

(assert (=> d!1140241 m!4398513))

(assert (=> d!1140241 m!4398515))

(assert (=> d!1140241 m!4398579))

(assert (=> bm!282028 m!4398543))

(assert (=> b!3844585 m!4398531))

(assert (=> b!3844584 m!4399195))

(assert (=> b!3844584 m!4399197))

(assert (=> b!3844584 m!4399197))

(assert (=> b!3844584 m!4399199))

(assert (=> b!3844584 m!4399199))

(declare-fun m!4399207 () Bool)

(assert (=> b!3844584 m!4399207))

(assert (=> b!3844580 m!4399195))

(declare-fun m!4399209 () Bool)

(assert (=> b!3844580 m!4399209))

(assert (=> b!3844587 m!4399195))

(assert (=> b!3844587 m!4399197))

(assert (=> b!3844587 m!4399197))

(assert (=> b!3844587 m!4399199))

(assert (=> b!3844587 m!4399199))

(declare-fun m!4399211 () Bool)

(assert (=> b!3844587 m!4399211))

(declare-fun m!4399213 () Bool)

(assert (=> b!3844588 m!4399213))

(assert (=> b!3844586 m!4399195))

(declare-fun m!4399215 () Bool)

(assert (=> b!3844586 m!4399215))

(assert (=> b!3844586 m!4398823))

(assert (=> b!3844079 d!1140241))

(declare-fun d!1140243 () Bool)

(assert (=> d!1140243 (= (inv!54842 (tag!7144 (rule!9126 (h!46123 prefixTokens!80)))) (= (mod (str.len (value!199702 (tag!7144 (rule!9126 (h!46123 prefixTokens!80))))) 2) 0))))

(assert (=> b!3844081 d!1140243))

(declare-fun d!1140245 () Bool)

(declare-fun res!1556192 () Bool)

(declare-fun e!2375731 () Bool)

(assert (=> d!1140245 (=> (not res!1556192) (not e!2375731))))

(declare-fun semiInverseModEq!2691 (Int Int) Bool)

(assert (=> d!1140245 (= res!1556192 (semiInverseModEq!2691 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toValue!8700 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))))))

(assert (=> d!1140245 (= (inv!54845 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) e!2375731)))

(declare-fun b!3844591 () Bool)

(declare-fun equivClasses!2590 (Int Int) Bool)

(assert (=> b!3844591 (= e!2375731 (equivClasses!2590 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toValue!8700 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))))))

(assert (= (and d!1140245 res!1556192) b!3844591))

(declare-fun m!4399217 () Bool)

(assert (=> d!1140245 m!4399217))

(declare-fun m!4399219 () Bool)

(assert (=> b!3844591 m!4399219))

(assert (=> b!3844081 d!1140245))

(declare-fun b!3844592 () Bool)

(declare-fun e!2375733 () Bool)

(declare-fun e!2375732 () Bool)

(assert (=> b!3844592 (= e!2375733 e!2375732)))

(declare-fun res!1556193 () Bool)

(declare-fun lt!1334748 () tuple2!39878)

(assert (=> b!3844592 (= res!1556193 (< (size!30624 (_2!23073 lt!1334748)) (size!30624 lt!1334553)))))

(assert (=> b!3844592 (=> (not res!1556193) (not e!2375732))))

(declare-fun b!3844593 () Bool)

(assert (=> b!3844593 (= e!2375733 (= (_2!23073 lt!1334748) lt!1334553))))

(declare-fun b!3844594 () Bool)

(declare-fun e!2375734 () tuple2!39878)

(assert (=> b!3844594 (= e!2375734 (tuple2!39879 Nil!40703 lt!1334553))))

(declare-fun d!1140247 () Bool)

(assert (=> d!1140247 e!2375733))

(declare-fun c!669834 () Bool)

(assert (=> d!1140247 (= c!669834 (> (size!30627 (_1!23073 lt!1334748)) 0))))

(assert (=> d!1140247 (= lt!1334748 e!2375734)))

(declare-fun c!669833 () Bool)

(declare-fun lt!1334746 () Option!8702)

(assert (=> d!1140247 (= c!669833 ((_ is Some!8701) lt!1334746))))

(assert (=> d!1140247 (= lt!1334746 (maxPrefix!3177 thiss!20629 rules!2768 lt!1334553))))

(assert (=> d!1140247 (= (lexList!1641 thiss!20629 rules!2768 lt!1334553) lt!1334748)))

(declare-fun b!3844595 () Bool)

(declare-fun lt!1334747 () tuple2!39878)

(assert (=> b!3844595 (= e!2375734 (tuple2!39879 (Cons!40703 (_1!23074 (v!38993 lt!1334746)) (_1!23073 lt!1334747)) (_2!23073 lt!1334747)))))

(assert (=> b!3844595 (= lt!1334747 (lexList!1641 thiss!20629 rules!2768 (_2!23074 (v!38993 lt!1334746))))))

(declare-fun b!3844596 () Bool)

(assert (=> b!3844596 (= e!2375732 (not (isEmpty!24069 (_1!23073 lt!1334748))))))

(assert (= (and d!1140247 c!669833) b!3844595))

(assert (= (and d!1140247 (not c!669833)) b!3844594))

(assert (= (and d!1140247 c!669834) b!3844592))

(assert (= (and d!1140247 (not c!669834)) b!3844593))

(assert (= (and b!3844592 res!1556193) b!3844596))

(declare-fun m!4399221 () Bool)

(assert (=> b!3844592 m!4399221))

(assert (=> b!3844592 m!4398823))

(declare-fun m!4399223 () Bool)

(assert (=> d!1140247 m!4399223))

(assert (=> d!1140247 m!4398497))

(declare-fun m!4399225 () Bool)

(assert (=> b!3844595 m!4399225))

(declare-fun m!4399227 () Bool)

(assert (=> b!3844596 m!4399227))

(assert (=> b!3844080 d!1140247))

(declare-fun d!1140249 () Bool)

(declare-fun e!2375739 () Bool)

(assert (=> d!1140249 e!2375739))

(declare-fun res!1556198 () Bool)

(assert (=> d!1140249 (=> (not res!1556198) (not e!2375739))))

(declare-fun lt!1334751 () List!40827)

(declare-fun content!6048 (List!40827) (InoxSet Token!11706))

(assert (=> d!1140249 (= res!1556198 (= (content!6048 lt!1334751) ((_ map or) (content!6048 prefixTokens!80) (content!6048 suffixTokens!72))))))

(declare-fun e!2375740 () List!40827)

(assert (=> d!1140249 (= lt!1334751 e!2375740)))

(declare-fun c!669837 () Bool)

(assert (=> d!1140249 (= c!669837 ((_ is Nil!40703) prefixTokens!80))))

(assert (=> d!1140249 (= (++!10326 prefixTokens!80 suffixTokens!72) lt!1334751)))

(declare-fun b!3844608 () Bool)

(assert (=> b!3844608 (= e!2375739 (or (not (= suffixTokens!72 Nil!40703)) (= lt!1334751 prefixTokens!80)))))

(declare-fun b!3844606 () Bool)

(assert (=> b!3844606 (= e!2375740 (Cons!40703 (h!46123 prefixTokens!80) (++!10326 (t!310776 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3844607 () Bool)

(declare-fun res!1556199 () Bool)

(assert (=> b!3844607 (=> (not res!1556199) (not e!2375739))))

(assert (=> b!3844607 (= res!1556199 (= (size!30627 lt!1334751) (+ (size!30627 prefixTokens!80) (size!30627 suffixTokens!72))))))

(declare-fun b!3844605 () Bool)

(assert (=> b!3844605 (= e!2375740 suffixTokens!72)))

(assert (= (and d!1140249 c!669837) b!3844605))

(assert (= (and d!1140249 (not c!669837)) b!3844606))

(assert (= (and d!1140249 res!1556198) b!3844607))

(assert (= (and b!3844607 res!1556199) b!3844608))

(declare-fun m!4399229 () Bool)

(assert (=> d!1140249 m!4399229))

(declare-fun m!4399231 () Bool)

(assert (=> d!1140249 m!4399231))

(declare-fun m!4399233 () Bool)

(assert (=> d!1140249 m!4399233))

(declare-fun m!4399235 () Bool)

(assert (=> b!3844606 m!4399235))

(declare-fun m!4399237 () Bool)

(assert (=> b!3844607 m!4399237))

(declare-fun m!4399239 () Bool)

(assert (=> b!3844607 m!4399239))

(declare-fun m!4399241 () Bool)

(assert (=> b!3844607 m!4399241))

(assert (=> b!3844080 d!1140249))

(declare-fun b!3844612 () Bool)

(declare-fun e!2375742 () Bool)

(declare-fun lt!1334752 () List!40824)

(assert (=> b!3844612 (= e!2375742 (or (not (= suffix!1176 Nil!40700)) (= lt!1334752 prefix!426)))))

(declare-fun d!1140251 () Bool)

(assert (=> d!1140251 e!2375742))

(declare-fun res!1556200 () Bool)

(assert (=> d!1140251 (=> (not res!1556200) (not e!2375742))))

(assert (=> d!1140251 (= res!1556200 (= (content!6046 lt!1334752) ((_ map or) (content!6046 prefix!426) (content!6046 suffix!1176))))))

(declare-fun e!2375741 () List!40824)

(assert (=> d!1140251 (= lt!1334752 e!2375741)))

(declare-fun c!669838 () Bool)

(assert (=> d!1140251 (= c!669838 ((_ is Nil!40700) prefix!426))))

(assert (=> d!1140251 (= (++!10325 prefix!426 suffix!1176) lt!1334752)))

(declare-fun b!3844610 () Bool)

(assert (=> b!3844610 (= e!2375741 (Cons!40700 (h!46120 prefix!426) (++!10325 (t!310773 prefix!426) suffix!1176)))))

(declare-fun b!3844609 () Bool)

(assert (=> b!3844609 (= e!2375741 suffix!1176)))

(declare-fun b!3844611 () Bool)

(declare-fun res!1556201 () Bool)

(assert (=> b!3844611 (=> (not res!1556201) (not e!2375742))))

(assert (=> b!3844611 (= res!1556201 (= (size!30624 lt!1334752) (+ (size!30624 prefix!426) (size!30624 suffix!1176))))))

(assert (= (and d!1140251 c!669838) b!3844609))

(assert (= (and d!1140251 (not c!669838)) b!3844610))

(assert (= (and d!1140251 res!1556200) b!3844611))

(assert (= (and b!3844611 res!1556201) b!3844612))

(declare-fun m!4399243 () Bool)

(assert (=> d!1140251 m!4399243))

(declare-fun m!4399245 () Bool)

(assert (=> d!1140251 m!4399245))

(declare-fun m!4399247 () Bool)

(assert (=> d!1140251 m!4399247))

(declare-fun m!4399249 () Bool)

(assert (=> b!3844610 m!4399249))

(declare-fun m!4399251 () Bool)

(assert (=> b!3844611 m!4399251))

(declare-fun m!4399253 () Bool)

(assert (=> b!3844611 m!4399253))

(assert (=> b!3844611 m!4398669))

(assert (=> b!3844080 d!1140251))

(declare-fun d!1140253 () Bool)

(assert (=> d!1140253 (= (inv!54842 (tag!7144 (h!46122 rules!2768))) (= (mod (str.len (value!199702 (tag!7144 (h!46122 rules!2768)))) 2) 0))))

(assert (=> b!3844082 d!1140253))

(declare-fun d!1140255 () Bool)

(declare-fun res!1556202 () Bool)

(declare-fun e!2375743 () Bool)

(assert (=> d!1140255 (=> (not res!1556202) (not e!2375743))))

(assert (=> d!1140255 (= res!1556202 (semiInverseModEq!2691 (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toValue!8700 (transformation!6284 (h!46122 rules!2768)))))))

(assert (=> d!1140255 (= (inv!54845 (transformation!6284 (h!46122 rules!2768))) e!2375743)))

(declare-fun b!3844613 () Bool)

(assert (=> b!3844613 (= e!2375743 (equivClasses!2590 (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toValue!8700 (transformation!6284 (h!46122 rules!2768)))))))

(assert (= (and d!1140255 res!1556202) b!3844613))

(declare-fun m!4399255 () Bool)

(assert (=> d!1140255 m!4399255))

(declare-fun m!4399257 () Bool)

(assert (=> b!3844613 m!4399257))

(assert (=> b!3844082 d!1140255))

(declare-fun d!1140257 () Bool)

(declare-fun e!2375744 () Bool)

(assert (=> d!1140257 e!2375744))

(declare-fun res!1556203 () Bool)

(assert (=> d!1140257 (=> (not res!1556203) (not e!2375744))))

(declare-fun lt!1334753 () List!40827)

(assert (=> d!1140257 (= res!1556203 (= (content!6048 lt!1334753) ((_ map or) (content!6048 lt!1334552) (content!6048 (_1!23073 lt!1334566)))))))

(declare-fun e!2375745 () List!40827)

(assert (=> d!1140257 (= lt!1334753 e!2375745)))

(declare-fun c!669839 () Bool)

(assert (=> d!1140257 (= c!669839 ((_ is Nil!40703) lt!1334552))))

(assert (=> d!1140257 (= (++!10326 lt!1334552 (_1!23073 lt!1334566)) lt!1334753)))

(declare-fun b!3844617 () Bool)

(assert (=> b!3844617 (= e!2375744 (or (not (= (_1!23073 lt!1334566) Nil!40703)) (= lt!1334753 lt!1334552)))))

(declare-fun b!3844615 () Bool)

(assert (=> b!3844615 (= e!2375745 (Cons!40703 (h!46123 lt!1334552) (++!10326 (t!310776 lt!1334552) (_1!23073 lt!1334566))))))

(declare-fun b!3844616 () Bool)

(declare-fun res!1556204 () Bool)

(assert (=> b!3844616 (=> (not res!1556204) (not e!2375744))))

(assert (=> b!3844616 (= res!1556204 (= (size!30627 lt!1334753) (+ (size!30627 lt!1334552) (size!30627 (_1!23073 lt!1334566)))))))

(declare-fun b!3844614 () Bool)

(assert (=> b!3844614 (= e!2375745 (_1!23073 lt!1334566))))

(assert (= (and d!1140257 c!669839) b!3844614))

(assert (= (and d!1140257 (not c!669839)) b!3844615))

(assert (= (and d!1140257 res!1556203) b!3844616))

(assert (= (and b!3844616 res!1556204) b!3844617))

(declare-fun m!4399259 () Bool)

(assert (=> d!1140257 m!4399259))

(declare-fun m!4399261 () Bool)

(assert (=> d!1140257 m!4399261))

(declare-fun m!4399263 () Bool)

(assert (=> d!1140257 m!4399263))

(declare-fun m!4399265 () Bool)

(assert (=> b!3844615 m!4399265))

(declare-fun m!4399267 () Bool)

(assert (=> b!3844616 m!4399267))

(declare-fun m!4399269 () Bool)

(assert (=> b!3844616 m!4399269))

(declare-fun m!4399271 () Bool)

(assert (=> b!3844616 m!4399271))

(assert (=> b!3844102 d!1140257))

(declare-fun d!1140259 () Bool)

(assert (=> d!1140259 (and (= lt!1334556 prefix!426) (= (_2!23074 (v!38993 lt!1334558)) suffix!1176))))

(declare-fun lt!1334756 () Unit!58392)

(declare-fun choose!22614 (List!40824 List!40824 List!40824 List!40824) Unit!58392)

(assert (=> d!1140259 (= lt!1334756 (choose!22614 lt!1334556 (_2!23074 (v!38993 lt!1334558)) prefix!426 suffix!1176))))

(assert (=> d!1140259 (= (++!10325 lt!1334556 (_2!23074 (v!38993 lt!1334558))) (++!10325 prefix!426 suffix!1176))))

(assert (=> d!1140259 (= (lemmaConcatSameAndSameSizesThenSameLists!412 lt!1334556 (_2!23074 (v!38993 lt!1334558)) prefix!426 suffix!1176) lt!1334756)))

(declare-fun bs!582683 () Bool)

(assert (= bs!582683 d!1140259))

(declare-fun m!4399273 () Bool)

(assert (=> bs!582683 m!4399273))

(assert (=> bs!582683 m!4398563))

(assert (=> bs!582683 m!4398487))

(assert (=> b!3844104 d!1140259))

(declare-fun b!3844618 () Bool)

(declare-fun e!2375748 () Bool)

(declare-fun lt!1334758 () Option!8702)

(assert (=> b!3844618 (= e!2375748 (contains!8236 rules!2768 (rule!9126 (_1!23074 (get!13472 lt!1334758)))))))

(declare-fun b!3844619 () Bool)

(declare-fun res!1556210 () Bool)

(assert (=> b!3844619 (=> (not res!1556210) (not e!2375748))))

(assert (=> b!3844619 (= res!1556210 (= (value!199728 (_1!23074 (get!13472 lt!1334758))) (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (get!13472 lt!1334758)))) (seqFromList!4555 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334758)))))))))

(declare-fun d!1140261 () Bool)

(declare-fun e!2375747 () Bool)

(assert (=> d!1140261 e!2375747))

(declare-fun res!1556206 () Bool)

(assert (=> d!1140261 (=> res!1556206 e!2375747)))

(assert (=> d!1140261 (= res!1556206 (isEmpty!24072 lt!1334758))))

(declare-fun e!2375746 () Option!8702)

(assert (=> d!1140261 (= lt!1334758 e!2375746)))

(declare-fun c!669840 () Bool)

(assert (=> d!1140261 (= c!669840 (and ((_ is Cons!40702) rules!2768) ((_ is Nil!40702) (t!310775 rules!2768))))))

(declare-fun lt!1334760 () Unit!58392)

(declare-fun lt!1334757 () Unit!58392)

(assert (=> d!1140261 (= lt!1334760 lt!1334757)))

(assert (=> d!1140261 (isPrefix!3383 (++!10325 prefix!426 Nil!40700) (++!10325 prefix!426 Nil!40700))))

(assert (=> d!1140261 (= lt!1334757 (lemmaIsPrefixRefl!2156 (++!10325 prefix!426 Nil!40700) (++!10325 prefix!426 Nil!40700)))))

(assert (=> d!1140261 (rulesValidInductive!2224 thiss!20629 rules!2768)))

(assert (=> d!1140261 (= (maxPrefix!3177 thiss!20629 rules!2768 (++!10325 prefix!426 Nil!40700)) lt!1334758)))

(declare-fun b!3844620 () Bool)

(declare-fun call!282034 () Option!8702)

(assert (=> b!3844620 (= e!2375746 call!282034)))

(declare-fun b!3844621 () Bool)

(declare-fun res!1556209 () Bool)

(assert (=> b!3844621 (=> (not res!1556209) (not e!2375748))))

(assert (=> b!3844621 (= res!1556209 (= (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334758)))) (originalCharacters!6884 (_1!23074 (get!13472 lt!1334758)))))))

(declare-fun b!3844622 () Bool)

(declare-fun res!1556207 () Bool)

(assert (=> b!3844622 (=> (not res!1556207) (not e!2375748))))

(assert (=> b!3844622 (= res!1556207 (matchR!5342 (regex!6284 (rule!9126 (_1!23074 (get!13472 lt!1334758)))) (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334758))))))))

(declare-fun b!3844623 () Bool)

(declare-fun lt!1334759 () Option!8702)

(declare-fun lt!1334761 () Option!8702)

(assert (=> b!3844623 (= e!2375746 (ite (and ((_ is None!8701) lt!1334759) ((_ is None!8701) lt!1334761)) None!8701 (ite ((_ is None!8701) lt!1334761) lt!1334759 (ite ((_ is None!8701) lt!1334759) lt!1334761 (ite (>= (size!30623 (_1!23074 (v!38993 lt!1334759))) (size!30623 (_1!23074 (v!38993 lt!1334761)))) lt!1334759 lt!1334761)))))))

(assert (=> b!3844623 (= lt!1334759 call!282034)))

(assert (=> b!3844623 (= lt!1334761 (maxPrefix!3177 thiss!20629 (t!310775 rules!2768) (++!10325 prefix!426 Nil!40700)))))

(declare-fun b!3844624 () Bool)

(declare-fun res!1556208 () Bool)

(assert (=> b!3844624 (=> (not res!1556208) (not e!2375748))))

(assert (=> b!3844624 (= res!1556208 (< (size!30624 (_2!23074 (get!13472 lt!1334758))) (size!30624 (++!10325 prefix!426 Nil!40700))))))

(declare-fun b!3844625 () Bool)

(declare-fun res!1556205 () Bool)

(assert (=> b!3844625 (=> (not res!1556205) (not e!2375748))))

(assert (=> b!3844625 (= res!1556205 (= (++!10325 (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334758)))) (_2!23074 (get!13472 lt!1334758))) (++!10325 prefix!426 Nil!40700)))))

(declare-fun bm!282029 () Bool)

(assert (=> bm!282029 (= call!282034 (maxPrefixOneRule!2261 thiss!20629 (h!46122 rules!2768) (++!10325 prefix!426 Nil!40700)))))

(declare-fun b!3844626 () Bool)

(assert (=> b!3844626 (= e!2375747 e!2375748)))

(declare-fun res!1556211 () Bool)

(assert (=> b!3844626 (=> (not res!1556211) (not e!2375748))))

(assert (=> b!3844626 (= res!1556211 (isDefined!6833 lt!1334758))))

(assert (= (and d!1140261 c!669840) b!3844620))

(assert (= (and d!1140261 (not c!669840)) b!3844623))

(assert (= (or b!3844620 b!3844623) bm!282029))

(assert (= (and d!1140261 (not res!1556206)) b!3844626))

(assert (= (and b!3844626 res!1556211) b!3844621))

(assert (= (and b!3844621 res!1556209) b!3844624))

(assert (= (and b!3844624 res!1556208) b!3844625))

(assert (= (and b!3844625 res!1556205) b!3844619))

(assert (= (and b!3844619 res!1556210) b!3844622))

(assert (= (and b!3844622 res!1556207) b!3844618))

(declare-fun m!4399275 () Bool)

(assert (=> b!3844621 m!4399275))

(declare-fun m!4399277 () Bool)

(assert (=> b!3844621 m!4399277))

(assert (=> b!3844621 m!4399277))

(declare-fun m!4399279 () Bool)

(assert (=> b!3844621 m!4399279))

(assert (=> b!3844619 m!4399275))

(declare-fun m!4399281 () Bool)

(assert (=> b!3844619 m!4399281))

(assert (=> b!3844619 m!4399281))

(declare-fun m!4399283 () Bool)

(assert (=> b!3844619 m!4399283))

(declare-fun m!4399285 () Bool)

(assert (=> d!1140261 m!4399285))

(assert (=> d!1140261 m!4398499))

(assert (=> d!1140261 m!4398499))

(declare-fun m!4399287 () Bool)

(assert (=> d!1140261 m!4399287))

(assert (=> d!1140261 m!4398499))

(assert (=> d!1140261 m!4398499))

(declare-fun m!4399289 () Bool)

(assert (=> d!1140261 m!4399289))

(assert (=> d!1140261 m!4398579))

(assert (=> bm!282029 m!4398499))

(declare-fun m!4399291 () Bool)

(assert (=> bm!282029 m!4399291))

(assert (=> b!3844623 m!4398499))

(declare-fun m!4399293 () Bool)

(assert (=> b!3844623 m!4399293))

(assert (=> b!3844622 m!4399275))

(assert (=> b!3844622 m!4399277))

(assert (=> b!3844622 m!4399277))

(assert (=> b!3844622 m!4399279))

(assert (=> b!3844622 m!4399279))

(declare-fun m!4399295 () Bool)

(assert (=> b!3844622 m!4399295))

(assert (=> b!3844618 m!4399275))

(declare-fun m!4399297 () Bool)

(assert (=> b!3844618 m!4399297))

(assert (=> b!3844625 m!4399275))

(assert (=> b!3844625 m!4399277))

(assert (=> b!3844625 m!4399277))

(assert (=> b!3844625 m!4399279))

(assert (=> b!3844625 m!4399279))

(declare-fun m!4399299 () Bool)

(assert (=> b!3844625 m!4399299))

(declare-fun m!4399301 () Bool)

(assert (=> b!3844626 m!4399301))

(assert (=> b!3844624 m!4399275))

(declare-fun m!4399303 () Bool)

(assert (=> b!3844624 m!4399303))

(assert (=> b!3844624 m!4398499))

(declare-fun m!4399305 () Bool)

(assert (=> b!3844624 m!4399305))

(assert (=> b!3844103 d!1140261))

(declare-fun d!1140263 () Bool)

(assert (=> d!1140263 (= (isDefined!6833 lt!1334565) (not (isEmpty!24072 lt!1334565)))))

(declare-fun bs!582684 () Bool)

(assert (= bs!582684 d!1140263))

(declare-fun m!4399307 () Bool)

(assert (=> bs!582684 m!4399307))

(assert (=> b!3844103 d!1140263))

(declare-fun b!3844630 () Bool)

(declare-fun e!2375750 () Bool)

(declare-fun lt!1334762 () List!40824)

(assert (=> b!3844630 (= e!2375750 (or (not (= Nil!40700 Nil!40700)) (= lt!1334762 prefix!426)))))

(declare-fun d!1140265 () Bool)

(assert (=> d!1140265 e!2375750))

(declare-fun res!1556212 () Bool)

(assert (=> d!1140265 (=> (not res!1556212) (not e!2375750))))

(assert (=> d!1140265 (= res!1556212 (= (content!6046 lt!1334762) ((_ map or) (content!6046 prefix!426) (content!6046 Nil!40700))))))

(declare-fun e!2375749 () List!40824)

(assert (=> d!1140265 (= lt!1334762 e!2375749)))

(declare-fun c!669841 () Bool)

(assert (=> d!1140265 (= c!669841 ((_ is Nil!40700) prefix!426))))

(assert (=> d!1140265 (= (++!10325 prefix!426 Nil!40700) lt!1334762)))

(declare-fun b!3844628 () Bool)

(assert (=> b!3844628 (= e!2375749 (Cons!40700 (h!46120 prefix!426) (++!10325 (t!310773 prefix!426) Nil!40700)))))

(declare-fun b!3844627 () Bool)

(assert (=> b!3844627 (= e!2375749 Nil!40700)))

(declare-fun b!3844629 () Bool)

(declare-fun res!1556213 () Bool)

(assert (=> b!3844629 (=> (not res!1556213) (not e!2375750))))

(assert (=> b!3844629 (= res!1556213 (= (size!30624 lt!1334762) (+ (size!30624 prefix!426) (size!30624 Nil!40700))))))

(assert (= (and d!1140265 c!669841) b!3844627))

(assert (= (and d!1140265 (not c!669841)) b!3844628))

(assert (= (and d!1140265 res!1556212) b!3844629))

(assert (= (and b!3844629 res!1556213) b!3844630))

(declare-fun m!4399309 () Bool)

(assert (=> d!1140265 m!4399309))

(assert (=> d!1140265 m!4399245))

(declare-fun m!4399311 () Bool)

(assert (=> d!1140265 m!4399311))

(declare-fun m!4399313 () Bool)

(assert (=> b!3844628 m!4399313))

(declare-fun m!4399315 () Bool)

(assert (=> b!3844629 m!4399315))

(assert (=> b!3844629 m!4399253))

(assert (=> b!3844629 m!4398821))

(assert (=> b!3844103 d!1140265))

(declare-fun b!3844631 () Bool)

(declare-fun e!2375753 () Bool)

(declare-fun lt!1334764 () Option!8702)

(assert (=> b!3844631 (= e!2375753 (contains!8236 rules!2768 (rule!9126 (_1!23074 (get!13472 lt!1334764)))))))

(declare-fun b!3844632 () Bool)

(declare-fun res!1556219 () Bool)

(assert (=> b!3844632 (=> (not res!1556219) (not e!2375753))))

(assert (=> b!3844632 (= res!1556219 (= (value!199728 (_1!23074 (get!13472 lt!1334764))) (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (get!13472 lt!1334764)))) (seqFromList!4555 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334764)))))))))

(declare-fun d!1140267 () Bool)

(declare-fun e!2375752 () Bool)

(assert (=> d!1140267 e!2375752))

(declare-fun res!1556215 () Bool)

(assert (=> d!1140267 (=> res!1556215 e!2375752)))

(assert (=> d!1140267 (= res!1556215 (isEmpty!24072 lt!1334764))))

(declare-fun e!2375751 () Option!8702)

(assert (=> d!1140267 (= lt!1334764 e!2375751)))

(declare-fun c!669842 () Bool)

(assert (=> d!1140267 (= c!669842 (and ((_ is Cons!40702) rules!2768) ((_ is Nil!40702) (t!310775 rules!2768))))))

(declare-fun lt!1334766 () Unit!58392)

(declare-fun lt!1334763 () Unit!58392)

(assert (=> d!1140267 (= lt!1334766 lt!1334763)))

(assert (=> d!1140267 (isPrefix!3383 prefix!426 prefix!426)))

(assert (=> d!1140267 (= lt!1334763 (lemmaIsPrefixRefl!2156 prefix!426 prefix!426))))

(assert (=> d!1140267 (rulesValidInductive!2224 thiss!20629 rules!2768)))

(assert (=> d!1140267 (= (maxPrefix!3177 thiss!20629 rules!2768 prefix!426) lt!1334764)))

(declare-fun b!3844633 () Bool)

(declare-fun call!282035 () Option!8702)

(assert (=> b!3844633 (= e!2375751 call!282035)))

(declare-fun b!3844634 () Bool)

(declare-fun res!1556218 () Bool)

(assert (=> b!3844634 (=> (not res!1556218) (not e!2375753))))

(assert (=> b!3844634 (= res!1556218 (= (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334764)))) (originalCharacters!6884 (_1!23074 (get!13472 lt!1334764)))))))

(declare-fun b!3844635 () Bool)

(declare-fun res!1556216 () Bool)

(assert (=> b!3844635 (=> (not res!1556216) (not e!2375753))))

(assert (=> b!3844635 (= res!1556216 (matchR!5342 (regex!6284 (rule!9126 (_1!23074 (get!13472 lt!1334764)))) (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334764))))))))

(declare-fun b!3844636 () Bool)

(declare-fun lt!1334765 () Option!8702)

(declare-fun lt!1334767 () Option!8702)

(assert (=> b!3844636 (= e!2375751 (ite (and ((_ is None!8701) lt!1334765) ((_ is None!8701) lt!1334767)) None!8701 (ite ((_ is None!8701) lt!1334767) lt!1334765 (ite ((_ is None!8701) lt!1334765) lt!1334767 (ite (>= (size!30623 (_1!23074 (v!38993 lt!1334765))) (size!30623 (_1!23074 (v!38993 lt!1334767)))) lt!1334765 lt!1334767)))))))

(assert (=> b!3844636 (= lt!1334765 call!282035)))

(assert (=> b!3844636 (= lt!1334767 (maxPrefix!3177 thiss!20629 (t!310775 rules!2768) prefix!426))))

(declare-fun b!3844637 () Bool)

(declare-fun res!1556217 () Bool)

(assert (=> b!3844637 (=> (not res!1556217) (not e!2375753))))

(assert (=> b!3844637 (= res!1556217 (< (size!30624 (_2!23074 (get!13472 lt!1334764))) (size!30624 prefix!426)))))

(declare-fun b!3844638 () Bool)

(declare-fun res!1556214 () Bool)

(assert (=> b!3844638 (=> (not res!1556214) (not e!2375753))))

(assert (=> b!3844638 (= res!1556214 (= (++!10325 (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334764)))) (_2!23074 (get!13472 lt!1334764))) prefix!426))))

(declare-fun bm!282030 () Bool)

(assert (=> bm!282030 (= call!282035 (maxPrefixOneRule!2261 thiss!20629 (h!46122 rules!2768) prefix!426))))

(declare-fun b!3844639 () Bool)

(assert (=> b!3844639 (= e!2375752 e!2375753)))

(declare-fun res!1556220 () Bool)

(assert (=> b!3844639 (=> (not res!1556220) (not e!2375753))))

(assert (=> b!3844639 (= res!1556220 (isDefined!6833 lt!1334764))))

(assert (= (and d!1140267 c!669842) b!3844633))

(assert (= (and d!1140267 (not c!669842)) b!3844636))

(assert (= (or b!3844633 b!3844636) bm!282030))

(assert (= (and d!1140267 (not res!1556215)) b!3844639))

(assert (= (and b!3844639 res!1556220) b!3844634))

(assert (= (and b!3844634 res!1556218) b!3844637))

(assert (= (and b!3844637 res!1556217) b!3844638))

(assert (= (and b!3844638 res!1556214) b!3844632))

(assert (= (and b!3844632 res!1556219) b!3844635))

(assert (= (and b!3844635 res!1556216) b!3844631))

(declare-fun m!4399317 () Bool)

(assert (=> b!3844634 m!4399317))

(declare-fun m!4399319 () Bool)

(assert (=> b!3844634 m!4399319))

(assert (=> b!3844634 m!4399319))

(declare-fun m!4399321 () Bool)

(assert (=> b!3844634 m!4399321))

(assert (=> b!3844632 m!4399317))

(declare-fun m!4399323 () Bool)

(assert (=> b!3844632 m!4399323))

(assert (=> b!3844632 m!4399323))

(declare-fun m!4399325 () Bool)

(assert (=> b!3844632 m!4399325))

(declare-fun m!4399327 () Bool)

(assert (=> d!1140267 m!4399327))

(declare-fun m!4399329 () Bool)

(assert (=> d!1140267 m!4399329))

(declare-fun m!4399331 () Bool)

(assert (=> d!1140267 m!4399331))

(assert (=> d!1140267 m!4398579))

(declare-fun m!4399333 () Bool)

(assert (=> bm!282030 m!4399333))

(declare-fun m!4399335 () Bool)

(assert (=> b!3844636 m!4399335))

(assert (=> b!3844635 m!4399317))

(assert (=> b!3844635 m!4399319))

(assert (=> b!3844635 m!4399319))

(assert (=> b!3844635 m!4399321))

(assert (=> b!3844635 m!4399321))

(declare-fun m!4399337 () Bool)

(assert (=> b!3844635 m!4399337))

(assert (=> b!3844631 m!4399317))

(declare-fun m!4399339 () Bool)

(assert (=> b!3844631 m!4399339))

(assert (=> b!3844638 m!4399317))

(assert (=> b!3844638 m!4399319))

(assert (=> b!3844638 m!4399319))

(assert (=> b!3844638 m!4399321))

(assert (=> b!3844638 m!4399321))

(declare-fun m!4399341 () Bool)

(assert (=> b!3844638 m!4399341))

(declare-fun m!4399343 () Bool)

(assert (=> b!3844639 m!4399343))

(assert (=> b!3844637 m!4399317))

(declare-fun m!4399345 () Bool)

(assert (=> b!3844637 m!4399345))

(assert (=> b!3844637 m!4399253))

(assert (=> b!3844103 d!1140267))

(declare-fun d!1140269 () Bool)

(assert (=> d!1140269 (= (maxPrefix!3177 thiss!20629 rules!2768 (++!10325 prefix!426 Nil!40700)) (Some!8701 (tuple2!39881 (_1!23074 (v!38993 lt!1334558)) Nil!40700)))))

(declare-fun lt!1334770 () Unit!58392)

(declare-fun choose!22615 (LexerInterface!5873 List!40826 List!40824 List!40824 List!40824 Token!11706 List!40824 List!40824) Unit!58392)

(assert (=> d!1140269 (= lt!1334770 (choose!22615 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40700 (_1!23074 (v!38993 lt!1334558)) suffix!1176 Nil!40700))))

(assert (=> d!1140269 (not (isEmpty!24070 rules!2768))))

(assert (=> d!1140269 (= (lemmaMaxPrefixThenWithShorterSuffix!14 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40700 (_1!23074 (v!38993 lt!1334558)) suffix!1176 Nil!40700) lt!1334770)))

(declare-fun bs!582685 () Bool)

(assert (= bs!582685 d!1140269))

(assert (=> bs!582685 m!4398499))

(assert (=> bs!582685 m!4398499))

(assert (=> bs!582685 m!4398501))

(declare-fun m!4399347 () Bool)

(assert (=> bs!582685 m!4399347))

(assert (=> bs!582685 m!4398529))

(assert (=> b!3844103 d!1140269))

(declare-fun d!1140271 () Bool)

(assert (=> d!1140271 (= (inv!54842 (tag!7144 (rule!9126 (h!46123 suffixTokens!72)))) (= (mod (str.len (value!199702 (tag!7144 (rule!9126 (h!46123 suffixTokens!72))))) 2) 0))))

(assert (=> b!3844085 d!1140271))

(declare-fun d!1140273 () Bool)

(declare-fun res!1556221 () Bool)

(declare-fun e!2375754 () Bool)

(assert (=> d!1140273 (=> (not res!1556221) (not e!2375754))))

(assert (=> d!1140273 (= res!1556221 (semiInverseModEq!2691 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toValue!8700 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))))))

(assert (=> d!1140273 (= (inv!54845 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) e!2375754)))

(declare-fun b!3844640 () Bool)

(assert (=> b!3844640 (= e!2375754 (equivClasses!2590 (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toValue!8700 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))))))

(assert (= (and d!1140273 res!1556221) b!3844640))

(declare-fun m!4399349 () Bool)

(assert (=> d!1140273 m!4399349))

(declare-fun m!4399351 () Bool)

(assert (=> b!3844640 m!4399351))

(assert (=> b!3844085 d!1140273))

(declare-fun d!1140275 () Bool)

(assert (=> d!1140275 (= (inv!54842 (tag!7144 (rule!9126 (_1!23074 (v!38993 err!4289))))) (= (mod (str.len (value!199702 (tag!7144 (rule!9126 (_1!23074 (v!38993 err!4289)))))) 2) 0))))

(assert (=> b!3844086 d!1140275))

(declare-fun d!1140277 () Bool)

(declare-fun res!1556222 () Bool)

(declare-fun e!2375755 () Bool)

(assert (=> d!1140277 (=> (not res!1556222) (not e!2375755))))

(assert (=> d!1140277 (= res!1556222 (semiInverseModEq!2691 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))))))

(assert (=> d!1140277 (= (inv!54845 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) e!2375755)))

(declare-fun b!3844641 () Bool)

(assert (=> b!3844641 (= e!2375755 (equivClasses!2590 (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))))))

(assert (= (and d!1140277 res!1556222) b!3844641))

(declare-fun m!4399353 () Bool)

(assert (=> d!1140277 m!4399353))

(declare-fun m!4399355 () Bool)

(assert (=> b!3844641 m!4399355))

(assert (=> b!3844086 d!1140277))

(declare-fun d!1140279 () Bool)

(assert (=> d!1140279 (= (get!13472 lt!1334565) (v!38993 lt!1334565))))

(assert (=> b!3844106 d!1140279))

(declare-fun b!3844642 () Bool)

(declare-fun e!2375758 () Bool)

(declare-fun lt!1334772 () Option!8702)

(assert (=> b!3844642 (= e!2375758 (contains!8236 (t!310775 rules!2768) (rule!9126 (_1!23074 (get!13472 lt!1334772)))))))

(declare-fun b!3844643 () Bool)

(declare-fun res!1556228 () Bool)

(assert (=> b!3844643 (=> (not res!1556228) (not e!2375758))))

(assert (=> b!3844643 (= res!1556228 (= (value!199728 (_1!23074 (get!13472 lt!1334772))) (apply!9527 (transformation!6284 (rule!9126 (_1!23074 (get!13472 lt!1334772)))) (seqFromList!4555 (originalCharacters!6884 (_1!23074 (get!13472 lt!1334772)))))))))

(declare-fun d!1140281 () Bool)

(declare-fun e!2375757 () Bool)

(assert (=> d!1140281 e!2375757))

(declare-fun res!1556224 () Bool)

(assert (=> d!1140281 (=> res!1556224 e!2375757)))

(assert (=> d!1140281 (= res!1556224 (isEmpty!24072 lt!1334772))))

(declare-fun e!2375756 () Option!8702)

(assert (=> d!1140281 (= lt!1334772 e!2375756)))

(declare-fun c!669843 () Bool)

(assert (=> d!1140281 (= c!669843 (and ((_ is Cons!40702) (t!310775 rules!2768)) ((_ is Nil!40702) (t!310775 (t!310775 rules!2768)))))))

(declare-fun lt!1334774 () Unit!58392)

(declare-fun lt!1334771 () Unit!58392)

(assert (=> d!1140281 (= lt!1334774 lt!1334771)))

(assert (=> d!1140281 (isPrefix!3383 lt!1334553 lt!1334553)))

(assert (=> d!1140281 (= lt!1334771 (lemmaIsPrefixRefl!2156 lt!1334553 lt!1334553))))

(assert (=> d!1140281 (rulesValidInductive!2224 thiss!20629 (t!310775 rules!2768))))

(assert (=> d!1140281 (= (maxPrefix!3177 thiss!20629 (t!310775 rules!2768) lt!1334553) lt!1334772)))

(declare-fun b!3844644 () Bool)

(declare-fun call!282036 () Option!8702)

(assert (=> b!3844644 (= e!2375756 call!282036)))

(declare-fun b!3844645 () Bool)

(declare-fun res!1556227 () Bool)

(assert (=> b!3844645 (=> (not res!1556227) (not e!2375758))))

(assert (=> b!3844645 (= res!1556227 (= (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334772)))) (originalCharacters!6884 (_1!23074 (get!13472 lt!1334772)))))))

(declare-fun b!3844646 () Bool)

(declare-fun res!1556225 () Bool)

(assert (=> b!3844646 (=> (not res!1556225) (not e!2375758))))

(assert (=> b!3844646 (= res!1556225 (matchR!5342 (regex!6284 (rule!9126 (_1!23074 (get!13472 lt!1334772)))) (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334772))))))))

(declare-fun b!3844647 () Bool)

(declare-fun lt!1334773 () Option!8702)

(declare-fun lt!1334775 () Option!8702)

(assert (=> b!3844647 (= e!2375756 (ite (and ((_ is None!8701) lt!1334773) ((_ is None!8701) lt!1334775)) None!8701 (ite ((_ is None!8701) lt!1334775) lt!1334773 (ite ((_ is None!8701) lt!1334773) lt!1334775 (ite (>= (size!30623 (_1!23074 (v!38993 lt!1334773))) (size!30623 (_1!23074 (v!38993 lt!1334775)))) lt!1334773 lt!1334775)))))))

(assert (=> b!3844647 (= lt!1334773 call!282036)))

(assert (=> b!3844647 (= lt!1334775 (maxPrefix!3177 thiss!20629 (t!310775 (t!310775 rules!2768)) lt!1334553))))

(declare-fun b!3844648 () Bool)

(declare-fun res!1556226 () Bool)

(assert (=> b!3844648 (=> (not res!1556226) (not e!2375758))))

(assert (=> b!3844648 (= res!1556226 (< (size!30624 (_2!23074 (get!13472 lt!1334772))) (size!30624 lt!1334553)))))

(declare-fun b!3844649 () Bool)

(declare-fun res!1556223 () Bool)

(assert (=> b!3844649 (=> (not res!1556223) (not e!2375758))))

(assert (=> b!3844649 (= res!1556223 (= (++!10325 (list!15152 (charsOf!4112 (_1!23074 (get!13472 lt!1334772)))) (_2!23074 (get!13472 lt!1334772))) lt!1334553))))

(declare-fun bm!282031 () Bool)

(assert (=> bm!282031 (= call!282036 (maxPrefixOneRule!2261 thiss!20629 (h!46122 (t!310775 rules!2768)) lt!1334553))))

(declare-fun b!3844650 () Bool)

(assert (=> b!3844650 (= e!2375757 e!2375758)))

(declare-fun res!1556229 () Bool)

(assert (=> b!3844650 (=> (not res!1556229) (not e!2375758))))

(assert (=> b!3844650 (= res!1556229 (isDefined!6833 lt!1334772))))

(assert (= (and d!1140281 c!669843) b!3844644))

(assert (= (and d!1140281 (not c!669843)) b!3844647))

(assert (= (or b!3844644 b!3844647) bm!282031))

(assert (= (and d!1140281 (not res!1556224)) b!3844650))

(assert (= (and b!3844650 res!1556229) b!3844645))

(assert (= (and b!3844645 res!1556227) b!3844648))

(assert (= (and b!3844648 res!1556226) b!3844649))

(assert (= (and b!3844649 res!1556223) b!3844643))

(assert (= (and b!3844643 res!1556228) b!3844646))

(assert (= (and b!3844646 res!1556225) b!3844642))

(declare-fun m!4399357 () Bool)

(assert (=> b!3844645 m!4399357))

(declare-fun m!4399359 () Bool)

(assert (=> b!3844645 m!4399359))

(assert (=> b!3844645 m!4399359))

(declare-fun m!4399361 () Bool)

(assert (=> b!3844645 m!4399361))

(assert (=> b!3844643 m!4399357))

(declare-fun m!4399363 () Bool)

(assert (=> b!3844643 m!4399363))

(assert (=> b!3844643 m!4399363))

(declare-fun m!4399365 () Bool)

(assert (=> b!3844643 m!4399365))

(declare-fun m!4399367 () Bool)

(assert (=> d!1140281 m!4399367))

(assert (=> d!1140281 m!4398513))

(assert (=> d!1140281 m!4398515))

(assert (=> d!1140281 m!4399157))

(declare-fun m!4399369 () Bool)

(assert (=> bm!282031 m!4399369))

(declare-fun m!4399371 () Bool)

(assert (=> b!3844647 m!4399371))

(assert (=> b!3844646 m!4399357))

(assert (=> b!3844646 m!4399359))

(assert (=> b!3844646 m!4399359))

(assert (=> b!3844646 m!4399361))

(assert (=> b!3844646 m!4399361))

(declare-fun m!4399373 () Bool)

(assert (=> b!3844646 m!4399373))

(assert (=> b!3844642 m!4399357))

(declare-fun m!4399375 () Bool)

(assert (=> b!3844642 m!4399375))

(assert (=> b!3844649 m!4399357))

(assert (=> b!3844649 m!4399359))

(assert (=> b!3844649 m!4399359))

(assert (=> b!3844649 m!4399361))

(assert (=> b!3844649 m!4399361))

(declare-fun m!4399377 () Bool)

(assert (=> b!3844649 m!4399377))

(declare-fun m!4399379 () Bool)

(assert (=> b!3844650 m!4399379))

(assert (=> b!3844648 m!4399357))

(declare-fun m!4399381 () Bool)

(assert (=> b!3844648 m!4399381))

(assert (=> b!3844648 m!4398823))

(assert (=> b!3844108 d!1140281))

(declare-fun b!3844654 () Bool)

(declare-fun e!2375759 () Bool)

(assert (=> b!3844654 (= e!2375759 (>= (size!30624 lt!1334553) (size!30624 lt!1334553)))))

(declare-fun b!3844651 () Bool)

(declare-fun e!2375760 () Bool)

(declare-fun e!2375761 () Bool)

(assert (=> b!3844651 (= e!2375760 e!2375761)))

(declare-fun res!1556231 () Bool)

(assert (=> b!3844651 (=> (not res!1556231) (not e!2375761))))

(assert (=> b!3844651 (= res!1556231 (not ((_ is Nil!40700) lt!1334553)))))

(declare-fun b!3844652 () Bool)

(declare-fun res!1556230 () Bool)

(assert (=> b!3844652 (=> (not res!1556230) (not e!2375761))))

(assert (=> b!3844652 (= res!1556230 (= (head!8086 lt!1334553) (head!8086 lt!1334553)))))

(declare-fun d!1140283 () Bool)

(assert (=> d!1140283 e!2375759))

(declare-fun res!1556233 () Bool)

(assert (=> d!1140283 (=> res!1556233 e!2375759)))

(declare-fun lt!1334776 () Bool)

(assert (=> d!1140283 (= res!1556233 (not lt!1334776))))

(assert (=> d!1140283 (= lt!1334776 e!2375760)))

(declare-fun res!1556232 () Bool)

(assert (=> d!1140283 (=> res!1556232 e!2375760)))

(assert (=> d!1140283 (= res!1556232 ((_ is Nil!40700) lt!1334553))))

(assert (=> d!1140283 (= (isPrefix!3383 lt!1334553 lt!1334553) lt!1334776)))

(declare-fun b!3844653 () Bool)

(assert (=> b!3844653 (= e!2375761 (isPrefix!3383 (tail!5813 lt!1334553) (tail!5813 lt!1334553)))))

(assert (= (and d!1140283 (not res!1556232)) b!3844651))

(assert (= (and b!3844651 res!1556231) b!3844652))

(assert (= (and b!3844652 res!1556230) b!3844653))

(assert (= (and d!1140283 (not res!1556233)) b!3844654))

(assert (=> b!3844654 m!4398823))

(assert (=> b!3844654 m!4398823))

(declare-fun m!4399383 () Bool)

(assert (=> b!3844652 m!4399383))

(assert (=> b!3844652 m!4399383))

(assert (=> b!3844653 m!4398995))

(assert (=> b!3844653 m!4398995))

(assert (=> b!3844653 m!4398995))

(assert (=> b!3844653 m!4398995))

(declare-fun m!4399385 () Bool)

(assert (=> b!3844653 m!4399385))

(assert (=> b!3844107 d!1140283))

(declare-fun d!1140285 () Bool)

(assert (=> d!1140285 (isPrefix!3383 lt!1334553 lt!1334553)))

(declare-fun lt!1334779 () Unit!58392)

(declare-fun choose!22616 (List!40824 List!40824) Unit!58392)

(assert (=> d!1140285 (= lt!1334779 (choose!22616 lt!1334553 lt!1334553))))

(assert (=> d!1140285 (= (lemmaIsPrefixRefl!2156 lt!1334553 lt!1334553) lt!1334779)))

(declare-fun bs!582686 () Bool)

(assert (= bs!582686 d!1140285))

(assert (=> bs!582686 m!4398513))

(declare-fun m!4399387 () Bool)

(assert (=> bs!582686 m!4399387))

(assert (=> b!3844107 d!1140285))

(declare-fun d!1140287 () Bool)

(assert (=> d!1140287 (= (isEmpty!24068 prefix!426) ((_ is Nil!40700) prefix!426))))

(assert (=> b!3844087 d!1140287))

(declare-fun d!1140289 () Bool)

(assert (=> d!1140289 (= (isEmpty!24069 prefixTokens!80) ((_ is Nil!40703) prefixTokens!80))))

(assert (=> b!3844109 d!1140289))

(declare-fun d!1140291 () Bool)

(declare-fun c!669844 () Bool)

(assert (=> d!1140291 (= c!669844 ((_ is IntegerValue!19542) (value!199728 (h!46123 prefixTokens!80))))))

(declare-fun e!2375763 () Bool)

(assert (=> d!1140291 (= (inv!21 (value!199728 (h!46123 prefixTokens!80))) e!2375763)))

(declare-fun b!3844655 () Bool)

(declare-fun e!2375762 () Bool)

(assert (=> b!3844655 (= e!2375763 e!2375762)))

(declare-fun c!669845 () Bool)

(assert (=> b!3844655 (= c!669845 ((_ is IntegerValue!19543) (value!199728 (h!46123 prefixTokens!80))))))

(declare-fun b!3844656 () Bool)

(declare-fun res!1556234 () Bool)

(declare-fun e!2375764 () Bool)

(assert (=> b!3844656 (=> res!1556234 e!2375764)))

(assert (=> b!3844656 (= res!1556234 (not ((_ is IntegerValue!19544) (value!199728 (h!46123 prefixTokens!80)))))))

(assert (=> b!3844656 (= e!2375762 e!2375764)))

(declare-fun b!3844657 () Bool)

(assert (=> b!3844657 (= e!2375764 (inv!15 (value!199728 (h!46123 prefixTokens!80))))))

(declare-fun b!3844658 () Bool)

(assert (=> b!3844658 (= e!2375763 (inv!16 (value!199728 (h!46123 prefixTokens!80))))))

(declare-fun b!3844659 () Bool)

(assert (=> b!3844659 (= e!2375762 (inv!17 (value!199728 (h!46123 prefixTokens!80))))))

(assert (= (and d!1140291 c!669844) b!3844658))

(assert (= (and d!1140291 (not c!669844)) b!3844655))

(assert (= (and b!3844655 c!669845) b!3844659))

(assert (= (and b!3844655 (not c!669845)) b!3844656))

(assert (= (and b!3844656 (not res!1556234)) b!3844657))

(declare-fun m!4399389 () Bool)

(assert (=> b!3844657 m!4399389))

(declare-fun m!4399391 () Bool)

(assert (=> b!3844658 m!4399391))

(declare-fun m!4399393 () Bool)

(assert (=> b!3844659 m!4399393))

(assert (=> b!3844089 d!1140291))

(declare-fun d!1140293 () Bool)

(declare-fun c!669846 () Bool)

(assert (=> d!1140293 (= c!669846 ((_ is IntegerValue!19542) (value!199728 (_1!23074 (v!38993 err!4289)))))))

(declare-fun e!2375766 () Bool)

(assert (=> d!1140293 (= (inv!21 (value!199728 (_1!23074 (v!38993 err!4289)))) e!2375766)))

(declare-fun b!3844660 () Bool)

(declare-fun e!2375765 () Bool)

(assert (=> b!3844660 (= e!2375766 e!2375765)))

(declare-fun c!669847 () Bool)

(assert (=> b!3844660 (= c!669847 ((_ is IntegerValue!19543) (value!199728 (_1!23074 (v!38993 err!4289)))))))

(declare-fun b!3844661 () Bool)

(declare-fun res!1556235 () Bool)

(declare-fun e!2375767 () Bool)

(assert (=> b!3844661 (=> res!1556235 e!2375767)))

(assert (=> b!3844661 (= res!1556235 (not ((_ is IntegerValue!19544) (value!199728 (_1!23074 (v!38993 err!4289))))))))

(assert (=> b!3844661 (= e!2375765 e!2375767)))

(declare-fun b!3844662 () Bool)

(assert (=> b!3844662 (= e!2375767 (inv!15 (value!199728 (_1!23074 (v!38993 err!4289)))))))

(declare-fun b!3844663 () Bool)

(assert (=> b!3844663 (= e!2375766 (inv!16 (value!199728 (_1!23074 (v!38993 err!4289)))))))

(declare-fun b!3844664 () Bool)

(assert (=> b!3844664 (= e!2375765 (inv!17 (value!199728 (_1!23074 (v!38993 err!4289)))))))

(assert (= (and d!1140293 c!669846) b!3844663))

(assert (= (and d!1140293 (not c!669846)) b!3844660))

(assert (= (and b!3844660 c!669847) b!3844664))

(assert (= (and b!3844660 (not c!669847)) b!3844661))

(assert (= (and b!3844661 (not res!1556235)) b!3844662))

(declare-fun m!4399395 () Bool)

(assert (=> b!3844662 m!4399395))

(declare-fun m!4399397 () Bool)

(assert (=> b!3844663 m!4399397))

(declare-fun m!4399399 () Bool)

(assert (=> b!3844664 m!4399399))

(assert (=> b!3844090 d!1140293))

(declare-fun d!1140295 () Bool)

(assert (=> d!1140295 (= (isEmpty!24070 rules!2768) ((_ is Nil!40702) rules!2768))))

(assert (=> b!3844110 d!1140295))

(declare-fun b!3844676 () Bool)

(declare-fun e!2375770 () Bool)

(declare-fun tp!1164987 () Bool)

(declare-fun tp!1164989 () Bool)

(assert (=> b!3844676 (= e!2375770 (and tp!1164987 tp!1164989))))

(declare-fun b!3844677 () Bool)

(declare-fun tp!1164986 () Bool)

(assert (=> b!3844677 (= e!2375770 tp!1164986)))

(declare-fun b!3844675 () Bool)

(assert (=> b!3844675 (= e!2375770 tp_is_empty!19349)))

(declare-fun b!3844678 () Bool)

(declare-fun tp!1164990 () Bool)

(declare-fun tp!1164988 () Bool)

(assert (=> b!3844678 (= e!2375770 (and tp!1164990 tp!1164988))))

(assert (=> b!3844082 (= tp!1164881 e!2375770)))

(assert (= (and b!3844082 ((_ is ElementMatch!11189) (regex!6284 (h!46122 rules!2768)))) b!3844675))

(assert (= (and b!3844082 ((_ is Concat!17704) (regex!6284 (h!46122 rules!2768)))) b!3844676))

(assert (= (and b!3844082 ((_ is Star!11189) (regex!6284 (h!46122 rules!2768)))) b!3844677))

(assert (= (and b!3844082 ((_ is Union!11189) (regex!6284 (h!46122 rules!2768)))) b!3844678))

(declare-fun b!3844683 () Bool)

(declare-fun e!2375773 () Bool)

(declare-fun tp!1164993 () Bool)

(assert (=> b!3844683 (= e!2375773 (and tp_is_empty!19349 tp!1164993))))

(assert (=> b!3844093 (= tp!1164877 e!2375773)))

(assert (= (and b!3844093 ((_ is Cons!40700) (originalCharacters!6884 (h!46123 suffixTokens!72)))) b!3844683))

(declare-fun b!3844697 () Bool)

(declare-fun b_free!102773 () Bool)

(declare-fun b_next!103477 () Bool)

(assert (=> b!3844697 (= b_free!102773 (not b_next!103477))))

(declare-fun tb!221367 () Bool)

(declare-fun t!310888 () Bool)

(assert (=> (and b!3844697 (= (toValue!8700 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310888) tb!221367))

(declare-fun result!269778 () Bool)

(assert (= result!269778 result!269692))

(assert (=> d!1140155 t!310888))

(declare-fun tp!1165006 () Bool)

(declare-fun b_and!286691 () Bool)

(assert (=> b!3844697 (= tp!1165006 (and (=> t!310888 result!269778) b_and!286691))))

(declare-fun b_free!102775 () Bool)

(declare-fun b_next!103479 () Bool)

(assert (=> b!3844697 (= b_free!102775 (not b_next!103479))))

(declare-fun t!310890 () Bool)

(declare-fun tb!221369 () Bool)

(assert (=> (and b!3844697 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310890) tb!221369))

(declare-fun result!269780 () Bool)

(assert (= result!269780 result!269646))

(assert (=> b!3844130 t!310890))

(declare-fun t!310892 () Bool)

(declare-fun tb!221371 () Bool)

(assert (=> (and b!3844697 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310892) tb!221371))

(declare-fun result!269782 () Bool)

(assert (= result!269782 result!269656))

(assert (=> b!3844206 t!310892))

(declare-fun tb!221373 () Bool)

(declare-fun t!310894 () Bool)

(assert (=> (and b!3844697 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310894) tb!221373))

(declare-fun result!269784 () Bool)

(assert (= result!269784 result!269702))

(assert (=> d!1140157 t!310894))

(declare-fun t!310896 () Bool)

(declare-fun tb!221375 () Bool)

(assert (=> (and b!3844697 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310896) tb!221375))

(declare-fun result!269786 () Bool)

(assert (= result!269786 result!269726))

(assert (=> b!3844489 t!310896))

(declare-fun b_and!286693 () Bool)

(declare-fun tp!1165008 () Bool)

(assert (=> b!3844697 (= tp!1165008 (and (=> t!310890 result!269780) (=> t!310892 result!269782) (=> t!310894 result!269784) (=> t!310896 result!269786) b_and!286693))))

(declare-fun tp!1165005 () Bool)

(declare-fun b!3844695 () Bool)

(declare-fun e!2375791 () Bool)

(declare-fun e!2375789 () Bool)

(assert (=> b!3844695 (= e!2375789 (and (inv!21 (value!199728 (h!46123 (t!310776 prefixTokens!80)))) e!2375791 tp!1165005))))

(declare-fun e!2375786 () Bool)

(assert (=> b!3844092 (= tp!1164875 e!2375786)))

(declare-fun b!3844696 () Bool)

(declare-fun e!2375790 () Bool)

(declare-fun tp!1165004 () Bool)

(assert (=> b!3844696 (= e!2375791 (and tp!1165004 (inv!54842 (tag!7144 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (inv!54845 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) e!2375790))))

(declare-fun b!3844694 () Bool)

(declare-fun tp!1165007 () Bool)

(assert (=> b!3844694 (= e!2375786 (and (inv!54846 (h!46123 (t!310776 prefixTokens!80))) e!2375789 tp!1165007))))

(assert (=> b!3844697 (= e!2375790 (and tp!1165006 tp!1165008))))

(assert (= b!3844696 b!3844697))

(assert (= b!3844695 b!3844696))

(assert (= b!3844694 b!3844695))

(assert (= (and b!3844092 ((_ is Cons!40703) (t!310776 prefixTokens!80))) b!3844694))

(declare-fun m!4399401 () Bool)

(assert (=> b!3844695 m!4399401))

(declare-fun m!4399403 () Bool)

(assert (=> b!3844696 m!4399403))

(declare-fun m!4399405 () Bool)

(assert (=> b!3844696 m!4399405))

(declare-fun m!4399407 () Bool)

(assert (=> b!3844694 m!4399407))

(declare-fun b!3844698 () Bool)

(declare-fun e!2375792 () Bool)

(declare-fun tp!1165009 () Bool)

(assert (=> b!3844698 (= e!2375792 (and tp_is_empty!19349 tp!1165009))))

(assert (=> b!3844073 (= tp!1164880 e!2375792)))

(assert (= (and b!3844073 ((_ is Cons!40700) (t!310773 prefix!426))) b!3844698))

(declare-fun b!3844709 () Bool)

(declare-fun b_free!102777 () Bool)

(declare-fun b_next!103481 () Bool)

(assert (=> b!3844709 (= b_free!102777 (not b_next!103481))))

(declare-fun t!310898 () Bool)

(declare-fun tb!221377 () Bool)

(assert (=> (and b!3844709 (= (toValue!8700 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310898) tb!221377))

(declare-fun result!269790 () Bool)

(assert (= result!269790 result!269692))

(assert (=> d!1140155 t!310898))

(declare-fun b_and!286695 () Bool)

(declare-fun tp!1165018 () Bool)

(assert (=> b!3844709 (= tp!1165018 (and (=> t!310898 result!269790) b_and!286695))))

(declare-fun b_free!102779 () Bool)

(declare-fun b_next!103483 () Bool)

(assert (=> b!3844709 (= b_free!102779 (not b_next!103483))))

(declare-fun t!310900 () Bool)

(declare-fun tb!221379 () Bool)

(assert (=> (and b!3844709 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310900) tb!221379))

(declare-fun result!269792 () Bool)

(assert (= result!269792 result!269646))

(assert (=> b!3844130 t!310900))

(declare-fun tb!221381 () Bool)

(declare-fun t!310902 () Bool)

(assert (=> (and b!3844709 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310902) tb!221381))

(declare-fun result!269794 () Bool)

(assert (= result!269794 result!269656))

(assert (=> b!3844206 t!310902))

(declare-fun t!310904 () Bool)

(declare-fun tb!221383 () Bool)

(assert (=> (and b!3844709 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310904) tb!221383))

(declare-fun result!269796 () Bool)

(assert (= result!269796 result!269702))

(assert (=> d!1140157 t!310904))

(declare-fun tb!221385 () Bool)

(declare-fun t!310906 () Bool)

(assert (=> (and b!3844709 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310906) tb!221385))

(declare-fun result!269798 () Bool)

(assert (= result!269798 result!269726))

(assert (=> b!3844489 t!310906))

(declare-fun b_and!286697 () Bool)

(declare-fun tp!1165021 () Bool)

(assert (=> b!3844709 (= tp!1165021 (and (=> t!310900 result!269792) (=> t!310902 result!269794) (=> t!310904 result!269796) (=> t!310906 result!269798) b_and!286697))))

(declare-fun e!2375803 () Bool)

(assert (=> b!3844709 (= e!2375803 (and tp!1165018 tp!1165021))))

(declare-fun b!3844708 () Bool)

(declare-fun tp!1165019 () Bool)

(declare-fun e!2375801 () Bool)

(assert (=> b!3844708 (= e!2375801 (and tp!1165019 (inv!54842 (tag!7144 (h!46122 (t!310775 rules!2768)))) (inv!54845 (transformation!6284 (h!46122 (t!310775 rules!2768)))) e!2375803))))

(declare-fun b!3844707 () Bool)

(declare-fun e!2375802 () Bool)

(declare-fun tp!1165020 () Bool)

(assert (=> b!3844707 (= e!2375802 (and e!2375801 tp!1165020))))

(assert (=> b!3844105 (= tp!1164873 e!2375802)))

(assert (= b!3844708 b!3844709))

(assert (= b!3844707 b!3844708))

(assert (= (and b!3844105 ((_ is Cons!40702) (t!310775 rules!2768))) b!3844707))

(declare-fun m!4399409 () Bool)

(assert (=> b!3844708 m!4399409))

(declare-fun m!4399411 () Bool)

(assert (=> b!3844708 m!4399411))

(declare-fun b!3844710 () Bool)

(declare-fun e!2375805 () Bool)

(declare-fun tp!1165022 () Bool)

(assert (=> b!3844710 (= e!2375805 (and tp_is_empty!19349 tp!1165022))))

(assert (=> b!3844074 (= tp!1164888 e!2375805)))

(assert (= (and b!3844074 ((_ is Cons!40700) (t!310773 suffixResult!91))) b!3844710))

(declare-fun b!3844712 () Bool)

(declare-fun e!2375806 () Bool)

(declare-fun tp!1165024 () Bool)

(declare-fun tp!1165026 () Bool)

(assert (=> b!3844712 (= e!2375806 (and tp!1165024 tp!1165026))))

(declare-fun b!3844713 () Bool)

(declare-fun tp!1165023 () Bool)

(assert (=> b!3844713 (= e!2375806 tp!1165023)))

(declare-fun b!3844711 () Bool)

(assert (=> b!3844711 (= e!2375806 tp_is_empty!19349)))

(declare-fun b!3844714 () Bool)

(declare-fun tp!1165027 () Bool)

(declare-fun tp!1165025 () Bool)

(assert (=> b!3844714 (= e!2375806 (and tp!1165027 tp!1165025))))

(assert (=> b!3844085 (= tp!1164872 e!2375806)))

(assert (= (and b!3844085 ((_ is ElementMatch!11189) (regex!6284 (rule!9126 (h!46123 suffixTokens!72))))) b!3844711))

(assert (= (and b!3844085 ((_ is Concat!17704) (regex!6284 (rule!9126 (h!46123 suffixTokens!72))))) b!3844712))

(assert (= (and b!3844085 ((_ is Star!11189) (regex!6284 (rule!9126 (h!46123 suffixTokens!72))))) b!3844713))

(assert (= (and b!3844085 ((_ is Union!11189) (regex!6284 (rule!9126 (h!46123 suffixTokens!72))))) b!3844714))

(declare-fun b!3844716 () Bool)

(declare-fun e!2375807 () Bool)

(declare-fun tp!1165029 () Bool)

(declare-fun tp!1165031 () Bool)

(assert (=> b!3844716 (= e!2375807 (and tp!1165029 tp!1165031))))

(declare-fun b!3844717 () Bool)

(declare-fun tp!1165028 () Bool)

(assert (=> b!3844717 (= e!2375807 tp!1165028)))

(declare-fun b!3844715 () Bool)

(assert (=> b!3844715 (= e!2375807 tp_is_empty!19349)))

(declare-fun b!3844718 () Bool)

(declare-fun tp!1165032 () Bool)

(declare-fun tp!1165030 () Bool)

(assert (=> b!3844718 (= e!2375807 (and tp!1165032 tp!1165030))))

(assert (=> b!3844086 (= tp!1164884 e!2375807)))

(assert (= (and b!3844086 ((_ is ElementMatch!11189) (regex!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) b!3844715))

(assert (= (and b!3844086 ((_ is Concat!17704) (regex!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) b!3844716))

(assert (= (and b!3844086 ((_ is Star!11189) (regex!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) b!3844717))

(assert (= (and b!3844086 ((_ is Union!11189) (regex!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) b!3844718))

(declare-fun b!3844719 () Bool)

(declare-fun e!2375808 () Bool)

(declare-fun tp!1165033 () Bool)

(assert (=> b!3844719 (= e!2375808 (and tp_is_empty!19349 tp!1165033))))

(assert (=> b!3844096 (= tp!1164890 e!2375808)))

(assert (= (and b!3844096 ((_ is Cons!40700) (_2!23074 (v!38993 err!4289)))) b!3844719))

(declare-fun b!3844720 () Bool)

(declare-fun e!2375809 () Bool)

(declare-fun tp!1165034 () Bool)

(assert (=> b!3844720 (= e!2375809 (and tp_is_empty!19349 tp!1165034))))

(assert (=> b!3844089 (= tp!1164876 e!2375809)))

(assert (= (and b!3844089 ((_ is Cons!40700) (originalCharacters!6884 (h!46123 prefixTokens!80)))) b!3844720))

(declare-fun b!3844721 () Bool)

(declare-fun e!2375810 () Bool)

(declare-fun tp!1165035 () Bool)

(assert (=> b!3844721 (= e!2375810 (and tp_is_empty!19349 tp!1165035))))

(assert (=> b!3844090 (= tp!1164891 e!2375810)))

(assert (= (and b!3844090 ((_ is Cons!40700) (originalCharacters!6884 (_1!23074 (v!38993 err!4289))))) b!3844721))

(declare-fun b!3844725 () Bool)

(declare-fun b_free!102781 () Bool)

(declare-fun b_next!103485 () Bool)

(assert (=> b!3844725 (= b_free!102781 (not b_next!103485))))

(declare-fun t!310908 () Bool)

(declare-fun tb!221387 () Bool)

(assert (=> (and b!3844725 (= (toValue!8700 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toValue!8700 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310908) tb!221387))

(declare-fun result!269800 () Bool)

(assert (= result!269800 result!269692))

(assert (=> d!1140155 t!310908))

(declare-fun b_and!286699 () Bool)

(declare-fun tp!1165038 () Bool)

(assert (=> b!3844725 (= tp!1165038 (and (=> t!310908 result!269800) b_and!286699))))

(declare-fun b_free!102783 () Bool)

(declare-fun b_next!103487 () Bool)

(assert (=> b!3844725 (= b_free!102783 (not b_next!103487))))

(declare-fun tb!221389 () Bool)

(declare-fun t!310910 () Bool)

(assert (=> (and b!3844725 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80))))) t!310910) tb!221389))

(declare-fun result!269802 () Bool)

(assert (= result!269802 result!269646))

(assert (=> b!3844130 t!310910))

(declare-fun t!310912 () Bool)

(declare-fun tb!221391 () Bool)

(assert (=> (and b!3844725 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289)))))) t!310912) tb!221391))

(declare-fun result!269804 () Bool)

(assert (= result!269804 result!269656))

(assert (=> b!3844206 t!310912))

(declare-fun tb!221393 () Bool)

(declare-fun t!310914 () Bool)

(assert (=> (and b!3844725 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 lt!1334558)))))) t!310914) tb!221393))

(declare-fun result!269806 () Bool)

(assert (= result!269806 result!269702))

(assert (=> d!1140157 t!310914))

(declare-fun t!310916 () Bool)

(declare-fun tb!221395 () Bool)

(assert (=> (and b!3844725 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72))))) t!310916) tb!221395))

(declare-fun result!269808 () Bool)

(assert (= result!269808 result!269726))

(assert (=> b!3844489 t!310916))

(declare-fun tp!1165040 () Bool)

(declare-fun b_and!286701 () Bool)

(assert (=> b!3844725 (= tp!1165040 (and (=> t!310910 result!269802) (=> t!310912 result!269804) (=> t!310914 result!269806) (=> t!310916 result!269808) b_and!286701))))

(declare-fun e!2375816 () Bool)

(declare-fun tp!1165037 () Bool)

(declare-fun b!3844723 () Bool)

(declare-fun e!2375814 () Bool)

(assert (=> b!3844723 (= e!2375814 (and (inv!21 (value!199728 (h!46123 (t!310776 suffixTokens!72)))) e!2375816 tp!1165037))))

(declare-fun e!2375811 () Bool)

(assert (=> b!3844099 (= tp!1164882 e!2375811)))

(declare-fun tp!1165036 () Bool)

(declare-fun b!3844724 () Bool)

(declare-fun e!2375815 () Bool)

(assert (=> b!3844724 (= e!2375816 (and tp!1165036 (inv!54842 (tag!7144 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (inv!54845 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) e!2375815))))

(declare-fun b!3844722 () Bool)

(declare-fun tp!1165039 () Bool)

(assert (=> b!3844722 (= e!2375811 (and (inv!54846 (h!46123 (t!310776 suffixTokens!72))) e!2375814 tp!1165039))))

(assert (=> b!3844725 (= e!2375815 (and tp!1165038 tp!1165040))))

(assert (= b!3844724 b!3844725))

(assert (= b!3844723 b!3844724))

(assert (= b!3844722 b!3844723))

(assert (= (and b!3844099 ((_ is Cons!40703) (t!310776 suffixTokens!72))) b!3844722))

(declare-fun m!4399413 () Bool)

(assert (=> b!3844723 m!4399413))

(declare-fun m!4399415 () Bool)

(assert (=> b!3844724 m!4399415))

(declare-fun m!4399417 () Bool)

(assert (=> b!3844724 m!4399417))

(declare-fun m!4399419 () Bool)

(assert (=> b!3844722 m!4399419))

(declare-fun b!3844726 () Bool)

(declare-fun e!2375817 () Bool)

(declare-fun tp!1165041 () Bool)

(assert (=> b!3844726 (= e!2375817 (and tp_is_empty!19349 tp!1165041))))

(assert (=> b!3844101 (= tp!1164885 e!2375817)))

(assert (= (and b!3844101 ((_ is Cons!40700) (t!310773 suffix!1176))) b!3844726))

(declare-fun b!3844728 () Bool)

(declare-fun e!2375818 () Bool)

(declare-fun tp!1165043 () Bool)

(declare-fun tp!1165045 () Bool)

(assert (=> b!3844728 (= e!2375818 (and tp!1165043 tp!1165045))))

(declare-fun b!3844729 () Bool)

(declare-fun tp!1165042 () Bool)

(assert (=> b!3844729 (= e!2375818 tp!1165042)))

(declare-fun b!3844727 () Bool)

(assert (=> b!3844727 (= e!2375818 tp_is_empty!19349)))

(declare-fun b!3844730 () Bool)

(declare-fun tp!1165046 () Bool)

(declare-fun tp!1165044 () Bool)

(assert (=> b!3844730 (= e!2375818 (and tp!1165046 tp!1165044))))

(assert (=> b!3844081 (= tp!1164874 e!2375818)))

(assert (= (and b!3844081 ((_ is ElementMatch!11189) (regex!6284 (rule!9126 (h!46123 prefixTokens!80))))) b!3844727))

(assert (= (and b!3844081 ((_ is Concat!17704) (regex!6284 (rule!9126 (h!46123 prefixTokens!80))))) b!3844728))

(assert (= (and b!3844081 ((_ is Star!11189) (regex!6284 (rule!9126 (h!46123 prefixTokens!80))))) b!3844729))

(assert (= (and b!3844081 ((_ is Union!11189) (regex!6284 (rule!9126 (h!46123 prefixTokens!80))))) b!3844730))

(declare-fun b_lambda!112381 () Bool)

(assert (= b_lambda!112355 (or (and b!3844697 b_free!102775 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) (and b!3844100 b_free!102751) (and b!3844709 b_free!102779 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) (and b!3844094 b_free!102747 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) (and b!3844084 b_free!102759 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) (and b!3844725 b_free!102783 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) (and b!3844091 b_free!102755 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))))) b_lambda!112381)))

(declare-fun b_lambda!112383 () Bool)

(assert (= b_lambda!112357 (or (and b!3844084 b_free!102759) (and b!3844094 b_free!102747 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) (and b!3844709 b_free!102779 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) (and b!3844100 b_free!102751 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) (and b!3844725 b_free!102783 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) (and b!3844697 b_free!102775 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) (and b!3844091 b_free!102755 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))) (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))))) b_lambda!112383)))

(declare-fun b_lambda!112385 () Bool)

(assert (= b_lambda!112373 (or (and b!3844091 b_free!102755) (and b!3844709 b_free!102779 (= (toChars!8559 (transformation!6284 (h!46122 (t!310775 rules!2768)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) (and b!3844725 b_free!102783 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 suffixTokens!72))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) (and b!3844697 b_free!102775 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 (t!310776 prefixTokens!80))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) (and b!3844084 b_free!102759 (= (toChars!8559 (transformation!6284 (rule!9126 (_1!23074 (v!38993 err!4289))))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) (and b!3844094 b_free!102747 (= (toChars!8559 (transformation!6284 (h!46122 rules!2768))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) (and b!3844100 b_free!102751 (= (toChars!8559 (transformation!6284 (rule!9126 (h!46123 prefixTokens!80)))) (toChars!8559 (transformation!6284 (rule!9126 (h!46123 suffixTokens!72)))))) b_lambda!112385)))

(check-sat (not bm!282028) (not b!3844581) (not b!3844484) (not b!3844676) (not b!3844450) (not d!1140145) (not tb!221329) (not b!3844621) (not b!3844322) (not b!3844710) (not b!3844657) (not b!3844386) (not b!3844640) (not d!1140225) (not b!3844662) (not b!3844618) (not b!3844719) (not b_next!103481) (not d!1140093) (not b!3844606) (not d!1140261) (not b!3844726) b_and!286697 (not d!1140263) (not b!3844638) (not d!1140245) (not tb!221297) (not b!3844678) (not d!1140247) (not b!3844683) (not b!3844639) (not d!1140183) b_and!286639 (not d!1140109) (not d!1140175) (not b!3844488) (not b!3844650) (not b!3844585) (not b!3844607) (not b!3844130) (not b_next!103451) (not b!3844722) (not b!3844325) (not b_next!103485) (not b!3844714) (not b!3844324) (not d!1140105) (not b!3844643) (not b!3844327) (not b!3844663) (not d!1140255) (not b!3844208) b_and!286691 (not b!3844125) (not d!1140257) (not b_next!103455) (not b!3844637) (not b!3844580) b_and!286645 (not b!3844586) (not b!3844723) (not b!3844205) (not b!3844718) (not b!3844629) (not b!3844724) (not b_next!103487) (not b!3844326) (not tb!221257) b_and!286693 (not b!3844636) (not b!3844632) (not b!3844730) (not b!3844207) (not d!1140251) (not b_next!103477) (not b!3844664) (not b!3844365) (not b!3844625) b_and!286641 (not d!1140265) b_and!286695 (not b!3844695) (not b_next!103483) (not b!3844490) (not d!1140141) (not b_next!103459) (not b!3844628) (not b!3844333) (not b!3844320) tp_is_empty!19349 (not b!3844131) (not b!3844634) (not b!3844698) b_and!286643 (not b!3844489) (not b!3844729) (not d!1140281) (not d!1140095) (not b!3844348) (not d!1140285) b_and!286675 (not d!1140273) (not b!3844328) (not b!3844646) (not b!3844483) (not b!3844694) (not d!1140181) (not d!1140157) (not b!3844721) b_and!286673 (not b!3844136) (not b!3844696) (not b_next!103453) (not b!3844451) (not d!1140143) (not b!3844323) (not b!3844707) (not b!3844652) (not d!1140277) (not b!3844641) (not b_next!103457) (not b!3844631) (not b!3844712) (not b!3844653) b_and!286701 (not b!3844446) (not b!3844584) (not b!3844491) (not b!3844623) (not b!3844123) (not b!3844124) (not b!3844647) (not bm!282030) (not b!3844587) (not b!3844624) (not b!3844583) (not d!1140269) (not b!3844588) (not b!3844649) (not b_lambda!112367) (not b_lambda!112383) (not b!3844615) (not b!3844347) (not tb!221305) (not b!3844611) (not b!3844654) (not b!3844455) (not b!3844635) (not d!1140165) (not b!3844642) (not b!3844610) (not b!3844204) (not d!1140149) (not b!3844591) (not b!3844596) (not d!1140241) (not b!3844716) (not b!3844595) (not b_lambda!112365) (not b!3844645) (not b!3844659) (not b!3844447) (not b!3844616) (not b_next!103461) (not b!3844648) (not b!3844379) (not d!1140219) (not b_next!103449) b_and!286671 (not d!1140239) (not d!1140259) (not b_next!103479) (not b_lambda!112385) (not b!3844717) (not tb!221265) b_and!286677 (not bm!282029) (not b!3844728) (not b_lambda!112381) (not b!3844452) (not b_next!103463) (not d!1140185) (not b!3844619) (not b!3844677) (not b!3844448) (not b!3844206) (not b!3844658) b_and!286699 (not d!1140249) (not b!3844713) (not b!3844201) (not b!3844399) (not b!3844592) (not b!3844708) (not b!3844622) (not d!1140267) (not d!1140147) (not b!3844720) (not b!3844613) (not b!3844332) (not bm!282031) (not b!3844329) (not b!3844626))
(check-sat (not b_next!103481) b_and!286697 b_and!286639 b_and!286645 (not b_next!103477) b_and!286643 b_and!286675 b_and!286673 (not b_next!103453) (not b_next!103457) b_and!286701 (not b_next!103479) b_and!286699 (not b_next!103451) (not b_next!103485) b_and!286691 (not b_next!103455) b_and!286693 (not b_next!103487) (not b_next!103459) b_and!286641 b_and!286695 (not b_next!103483) (not b_next!103461) (not b_next!103449) b_and!286671 b_and!286677 (not b_next!103463))
