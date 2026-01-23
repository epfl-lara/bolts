; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!366022 () Bool)

(assert start!366022)

(declare-fun b!3908951 () Bool)

(declare-fun b_free!105905 () Bool)

(declare-fun b_next!106609 () Bool)

(assert (=> b!3908951 (= b_free!105905 (not b_next!106609))))

(declare-fun tp!1189684 () Bool)

(declare-fun b_and!297143 () Bool)

(assert (=> b!3908951 (= tp!1189684 b_and!297143)))

(declare-fun b_free!105907 () Bool)

(declare-fun b_next!106611 () Bool)

(assert (=> b!3908951 (= b_free!105907 (not b_next!106611))))

(declare-fun tp!1189691 () Bool)

(declare-fun b_and!297145 () Bool)

(assert (=> b!3908951 (= tp!1189691 b_and!297145)))

(declare-fun b!3908953 () Bool)

(declare-fun b_free!105909 () Bool)

(declare-fun b_next!106613 () Bool)

(assert (=> b!3908953 (= b_free!105909 (not b_next!106613))))

(declare-fun tp!1189686 () Bool)

(declare-fun b_and!297147 () Bool)

(assert (=> b!3908953 (= tp!1189686 b_and!297147)))

(declare-fun b_free!105911 () Bool)

(declare-fun b_next!106615 () Bool)

(assert (=> b!3908953 (= b_free!105911 (not b_next!106615))))

(declare-fun tp!1189692 () Bool)

(declare-fun b_and!297149 () Bool)

(assert (=> b!3908953 (= tp!1189692 b_and!297149)))

(declare-fun b!3908939 () Bool)

(declare-fun b_free!105913 () Bool)

(declare-fun b_next!106617 () Bool)

(assert (=> b!3908939 (= b_free!105913 (not b_next!106617))))

(declare-fun tp!1189694 () Bool)

(declare-fun b_and!297151 () Bool)

(assert (=> b!3908939 (= tp!1189694 b_and!297151)))

(declare-fun b_free!105915 () Bool)

(declare-fun b_next!106619 () Bool)

(assert (=> b!3908939 (= b_free!105915 (not b_next!106619))))

(declare-fun tp!1189687 () Bool)

(declare-fun b_and!297153 () Bool)

(assert (=> b!3908939 (= tp!1189687 b_and!297153)))

(declare-fun b!3908937 () Bool)

(declare-fun e!2416512 () Bool)

(declare-fun e!2416531 () Bool)

(declare-fun tp!1189693 () Bool)

(assert (=> b!3908937 (= e!2416512 (and e!2416531 tp!1189693))))

(declare-fun e!2416518 () Bool)

(declare-datatypes ((List!41534 0))(
  ( (Nil!41410) (Cons!41410 (h!46830 (_ BitVec 16)) (t!322625 List!41534)) )
))
(declare-datatypes ((TokenValue!6673 0))(
  ( (FloatLiteralValue!13346 (text!47156 List!41534)) (TokenValueExt!6672 (__x!25563 Int)) (Broken!33365 (value!204235 List!41534)) (Object!6796) (End!6673) (Def!6673) (Underscore!6673) (Match!6673) (Else!6673) (Error!6673) (Case!6673) (If!6673) (Extends!6673) (Abstract!6673) (Class!6673) (Val!6673) (DelimiterValue!13346 (del!6733 List!41534)) (KeywordValue!6679 (value!204236 List!41534)) (CommentValue!13346 (value!204237 List!41534)) (WhitespaceValue!13346 (value!204238 List!41534)) (IndentationValue!6673 (value!204239 List!41534)) (String!47084) (Int32!6673) (Broken!33366 (value!204240 List!41534)) (Boolean!6674) (Unit!59560) (OperatorValue!6676 (op!6733 List!41534)) (IdentifierValue!13346 (value!204241 List!41534)) (IdentifierValue!13347 (value!204242 List!41534)) (WhitespaceValue!13347 (value!204243 List!41534)) (True!13346) (False!13346) (Broken!33367 (value!204244 List!41534)) (Broken!33368 (value!204245 List!41534)) (True!13347) (RightBrace!6673) (RightBracket!6673) (Colon!6673) (Null!6673) (Comma!6673) (LeftBracket!6673) (False!13347) (LeftBrace!6673) (ImaginaryLiteralValue!6673 (text!47157 List!41534)) (StringLiteralValue!20019 (value!204246 List!41534)) (EOFValue!6673 (value!204247 List!41534)) (IdentValue!6673 (value!204248 List!41534)) (DelimiterValue!13347 (value!204249 List!41534)) (DedentValue!6673 (value!204250 List!41534)) (NewLineValue!6673 (value!204251 List!41534)) (IntegerValue!20019 (value!204252 (_ BitVec 32)) (text!47158 List!41534)) (IntegerValue!20020 (value!204253 Int) (text!47159 List!41534)) (Times!6673) (Or!6673) (Equal!6673) (Minus!6673) (Broken!33369 (value!204254 List!41534)) (And!6673) (Div!6673) (LessEqual!6673) (Mod!6673) (Concat!18021) (Not!6673) (Plus!6673) (SpaceValue!6673 (value!204255 List!41534)) (IntegerValue!20021 (value!204256 Int) (text!47160 List!41534)) (StringLiteralValue!20020 (text!47161 List!41534)) (FloatLiteralValue!13347 (text!47162 List!41534)) (BytesLiteralValue!6673 (value!204257 List!41534)) (CommentValue!13347 (value!204258 List!41534)) (StringLiteralValue!20021 (value!204259 List!41534)) (ErrorTokenValue!6673 (msg!6734 List!41534)) )
))
(declare-datatypes ((C!22882 0))(
  ( (C!22883 (val!13535 Int)) )
))
(declare-datatypes ((Regex!11348 0))(
  ( (ElementMatch!11348 (c!679543 C!22882)) (Concat!18022 (regOne!23208 Regex!11348) (regTwo!23208 Regex!11348)) (EmptyExpr!11348) (Star!11348 (reg!11677 Regex!11348)) (EmptyLang!11348) (Union!11348 (regOne!23209 Regex!11348) (regTwo!23209 Regex!11348)) )
))
(declare-datatypes ((String!47085 0))(
  ( (String!47086 (value!204260 String)) )
))
(declare-datatypes ((List!41535 0))(
  ( (Nil!41411) (Cons!41411 (h!46831 C!22882) (t!322626 List!41535)) )
))
(declare-datatypes ((IArray!25313 0))(
  ( (IArray!25314 (innerList!12714 List!41535)) )
))
(declare-datatypes ((Conc!12654 0))(
  ( (Node!12654 (left!31718 Conc!12654) (right!32048 Conc!12654) (csize!25538 Int) (cheight!12865 Int)) (Leaf!19583 (xs!15960 IArray!25313) (csize!25539 Int)) (Empty!12654) )
))
(declare-datatypes ((BalanceConc!24902 0))(
  ( (BalanceConc!24903 (c!679544 Conc!12654)) )
))
(declare-datatypes ((TokenValueInjection!12774 0))(
  ( (TokenValueInjection!12775 (toValue!8887 Int) (toChars!8746 Int)) )
))
(declare-datatypes ((Rule!12686 0))(
  ( (Rule!12687 (regex!6443 Regex!11348) (tag!7303 String!47085) (isSeparator!6443 Bool) (transformation!6443 TokenValueInjection!12774)) )
))
(declare-datatypes ((Token!12024 0))(
  ( (Token!12025 (value!204261 TokenValue!6673) (rule!9357 Rule!12686) (size!31095 Int) (originalCharacters!7043 List!41535)) )
))
(declare-datatypes ((List!41536 0))(
  ( (Nil!41412) (Cons!41412 (h!46832 Token!12024) (t!322627 List!41536)) )
))
(declare-fun suffixTokens!72 () List!41536)

(declare-fun tp!1189688 () Bool)

(declare-fun e!2416527 () Bool)

(declare-fun b!3908938 () Bool)

(declare-fun inv!55592 (Token!12024) Bool)

(assert (=> b!3908938 (= e!2416518 (and (inv!55592 (h!46832 suffixTokens!72)) e!2416527 tp!1189688))))

(declare-fun e!2416517 () Bool)

(assert (=> b!3908939 (= e!2416517 (and tp!1189694 tp!1189687))))

(declare-fun b!3908940 () Bool)

(declare-fun res!1581017 () Bool)

(declare-fun e!2416522 () Bool)

(assert (=> b!3908940 (=> (not res!1581017) (not e!2416522))))

(declare-fun suffixResult!91 () List!41535)

(declare-datatypes ((LexerInterface!6032 0))(
  ( (LexerInterfaceExt!6029 (__x!25564 Int)) (Lexer!6030) )
))
(declare-fun thiss!20629 () LexerInterface!6032)

(declare-fun suffix!1176 () List!41535)

(declare-datatypes ((List!41537 0))(
  ( (Nil!41413) (Cons!41413 (h!46833 Rule!12686) (t!322628 List!41537)) )
))
(declare-fun rules!2768 () List!41537)

(declare-datatypes ((tuple2!40658 0))(
  ( (tuple2!40659 (_1!23463 List!41536) (_2!23463 List!41535)) )
))
(declare-fun lexList!1800 (LexerInterface!6032 List!41537 List!41535) tuple2!40658)

(assert (=> b!3908940 (= res!1581017 (= (lexList!1800 thiss!20629 rules!2768 suffix!1176) (tuple2!40659 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3908941 () Bool)

(declare-fun e!2416520 () Bool)

(declare-datatypes ((tuple2!40660 0))(
  ( (tuple2!40661 (_1!23464 Token!12024) (_2!23464 List!41535)) )
))
(declare-datatypes ((Option!8863 0))(
  ( (None!8862) (Some!8862 (v!39184 tuple2!40660)) )
))
(declare-fun lt!1361609 () Option!8863)

(declare-fun size!31096 (List!41535) Int)

(assert (=> b!3908941 (= e!2416520 (= (size!31095 (_1!23464 (v!39184 lt!1361609))) (size!31096 (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609))))))))

(declare-fun b!3908943 () Bool)

(declare-fun e!2416529 () Bool)

(declare-fun e!2416523 () Bool)

(assert (=> b!3908943 (= e!2416529 (not e!2416523))))

(declare-fun res!1581013 () Bool)

(assert (=> b!3908943 (=> res!1581013 e!2416523)))

(declare-fun lt!1361611 () List!41535)

(declare-fun lt!1361614 () List!41535)

(assert (=> b!3908943 (= res!1581013 (not (= lt!1361611 lt!1361614)))))

(declare-fun lt!1361615 () tuple2!40658)

(assert (=> b!3908943 (= lt!1361615 (lexList!1800 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361609))))))

(declare-fun lt!1361612 () List!41535)

(declare-fun lt!1361605 () TokenValue!6673)

(declare-fun lt!1361602 () Int)

(declare-fun lt!1361606 () List!41535)

(assert (=> b!3908943 (and (= (size!31095 (_1!23464 (v!39184 lt!1361609))) lt!1361602) (= (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609))) lt!1361606) (= (v!39184 lt!1361609) (tuple2!40661 (Token!12025 lt!1361605 (rule!9357 (_1!23464 (v!39184 lt!1361609))) lt!1361602 lt!1361606) lt!1361612)))))

(assert (=> b!3908943 (= lt!1361602 (size!31096 lt!1361606))))

(assert (=> b!3908943 e!2416520))

(declare-fun res!1581006 () Bool)

(assert (=> b!3908943 (=> (not res!1581006) (not e!2416520))))

(assert (=> b!3908943 (= res!1581006 (= (value!204261 (_1!23464 (v!39184 lt!1361609))) lt!1361605))))

(declare-fun apply!9682 (TokenValueInjection!12774 BalanceConc!24902) TokenValue!6673)

(declare-fun seqFromList!4710 (List!41535) BalanceConc!24902)

(assert (=> b!3908943 (= lt!1361605 (apply!9682 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))) (seqFromList!4710 lt!1361606)))))

(assert (=> b!3908943 (= (_2!23464 (v!39184 lt!1361609)) lt!1361612)))

(declare-datatypes ((Unit!59561 0))(
  ( (Unit!59562) )
))
(declare-fun lt!1361616 () Unit!59561)

(declare-fun lemmaSamePrefixThenSameSuffix!1759 (List!41535 List!41535 List!41535 List!41535 List!41535) Unit!59561)

(assert (=> b!3908943 (= lt!1361616 (lemmaSamePrefixThenSameSuffix!1759 lt!1361606 (_2!23464 (v!39184 lt!1361609)) lt!1361606 lt!1361612 lt!1361614))))

(declare-fun getSuffix!1993 (List!41535 List!41535) List!41535)

(assert (=> b!3908943 (= lt!1361612 (getSuffix!1993 lt!1361614 lt!1361606))))

(declare-fun isPrefix!3538 (List!41535 List!41535) Bool)

(assert (=> b!3908943 (isPrefix!3538 lt!1361606 lt!1361611)))

(declare-fun ++!10643 (List!41535 List!41535) List!41535)

(assert (=> b!3908943 (= lt!1361611 (++!10643 lt!1361606 (_2!23464 (v!39184 lt!1361609))))))

(declare-fun lt!1361613 () Unit!59561)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2401 (List!41535 List!41535) Unit!59561)

(assert (=> b!3908943 (= lt!1361613 (lemmaConcatTwoListThenFirstIsPrefix!2401 lt!1361606 (_2!23464 (v!39184 lt!1361609))))))

(declare-fun list!15395 (BalanceConc!24902) List!41535)

(declare-fun charsOf!4267 (Token!12024) BalanceConc!24902)

(assert (=> b!3908943 (= lt!1361606 (list!15395 (charsOf!4267 (_1!23464 (v!39184 lt!1361609)))))))

(declare-fun ruleValid!2391 (LexerInterface!6032 Rule!12686) Bool)

(assert (=> b!3908943 (ruleValid!2391 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609))))))

(declare-fun lt!1361607 () Unit!59561)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1471 (LexerInterface!6032 Rule!12686 List!41537) Unit!59561)

(assert (=> b!3908943 (= lt!1361607 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1471 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609))) rules!2768))))

(declare-fun lt!1361603 () Unit!59561)

(declare-fun lemmaCharactersSize!1100 (Token!12024) Unit!59561)

(assert (=> b!3908943 (= lt!1361603 (lemmaCharactersSize!1100 (_1!23464 (v!39184 lt!1361609))))))

(declare-fun e!2416511 () Bool)

(declare-fun tp!1189682 () Bool)

(declare-fun prefixTokens!80 () List!41536)

(declare-fun b!3908944 () Bool)

(declare-fun e!2416530 () Bool)

(assert (=> b!3908944 (= e!2416530 (and (inv!55592 (h!46832 prefixTokens!80)) e!2416511 tp!1189682))))

(declare-fun b!3908945 () Bool)

(declare-fun e!2416528 () Bool)

(assert (=> b!3908945 (= e!2416528 e!2416522)))

(declare-fun res!1581012 () Bool)

(assert (=> b!3908945 (=> (not res!1581012) (not e!2416522))))

(declare-fun lt!1361610 () List!41536)

(declare-fun lt!1361608 () tuple2!40658)

(assert (=> b!3908945 (= res!1581012 (= lt!1361608 (tuple2!40659 lt!1361610 suffixResult!91)))))

(assert (=> b!3908945 (= lt!1361608 (lexList!1800 thiss!20629 rules!2768 lt!1361614))))

(declare-fun ++!10644 (List!41536 List!41536) List!41536)

(assert (=> b!3908945 (= lt!1361610 (++!10644 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41535)

(assert (=> b!3908945 (= lt!1361614 (++!10643 prefix!426 suffix!1176))))

(declare-fun b!3908946 () Bool)

(declare-fun e!2416532 () Bool)

(declare-fun lt!1361604 () Int)

(assert (=> b!3908946 (= e!2416532 (= (+ lt!1361602 lt!1361604) (size!31096 lt!1361614)))))

(declare-fun tp!1189690 () Bool)

(declare-fun b!3908947 () Bool)

(declare-fun e!2416515 () Bool)

(declare-fun inv!55589 (String!47085) Bool)

(declare-fun inv!55593 (TokenValueInjection!12774) Bool)

(assert (=> b!3908947 (= e!2416515 (and tp!1189690 (inv!55589 (tag!7303 (rule!9357 (h!46832 suffixTokens!72)))) (inv!55593 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) e!2416517))))

(declare-fun b!3908948 () Bool)

(declare-fun e!2416509 () Bool)

(declare-fun tp_is_empty!19667 () Bool)

(declare-fun tp!1189696 () Bool)

(assert (=> b!3908948 (= e!2416509 (and tp_is_empty!19667 tp!1189696))))

(declare-fun b!3908949 () Bool)

(declare-fun e!2416519 () Bool)

(declare-fun tp!1189689 () Bool)

(assert (=> b!3908949 (= e!2416519 (and tp_is_empty!19667 tp!1189689))))

(declare-fun b!3908950 () Bool)

(declare-fun res!1581009 () Bool)

(assert (=> b!3908950 (=> (not res!1581009) (not e!2416528))))

(declare-fun isEmpty!24625 (List!41535) Bool)

(assert (=> b!3908950 (= res!1581009 (not (isEmpty!24625 prefix!426)))))

(declare-fun e!2416521 () Bool)

(assert (=> b!3908951 (= e!2416521 (and tp!1189684 tp!1189691))))

(declare-fun b!3908952 () Bool)

(declare-fun res!1581015 () Bool)

(assert (=> b!3908952 (=> (not res!1581015) (not e!2416528))))

(declare-fun isEmpty!24626 (List!41536) Bool)

(assert (=> b!3908952 (= res!1581015 (not (isEmpty!24626 prefixTokens!80)))))

(declare-fun e!2416524 () Bool)

(assert (=> b!3908953 (= e!2416524 (and tp!1189686 tp!1189692))))

(declare-fun b!3908954 () Bool)

(declare-fun e!2416513 () Bool)

(declare-fun tp!1189681 () Bool)

(assert (=> b!3908954 (= e!2416513 (and tp_is_empty!19667 tp!1189681))))

(declare-fun b!3908955 () Bool)

(assert (=> b!3908955 (= e!2416522 e!2416529)))

(declare-fun res!1581014 () Bool)

(assert (=> b!3908955 (=> (not res!1581014) (not e!2416529))))

(assert (=> b!3908955 (= res!1581014 (is-Some!8862 lt!1361609))))

(declare-fun maxPrefix!3336 (LexerInterface!6032 List!41537 List!41535) Option!8863)

(assert (=> b!3908955 (= lt!1361609 (maxPrefix!3336 thiss!20629 rules!2768 lt!1361614))))

(declare-fun tp!1189695 () Bool)

(declare-fun b!3908956 () Bool)

(declare-fun e!2416526 () Bool)

(assert (=> b!3908956 (= e!2416526 (and tp!1189695 (inv!55589 (tag!7303 (rule!9357 (h!46832 prefixTokens!80)))) (inv!55593 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) e!2416521))))

(declare-fun b!3908957 () Bool)

(declare-fun res!1581007 () Bool)

(assert (=> b!3908957 (=> res!1581007 e!2416523)))

(assert (=> b!3908957 (= res!1581007 (not (= lt!1361608 (tuple2!40659 (++!10644 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412) (_1!23463 lt!1361615)) (_2!23463 lt!1361615)))))))

(declare-fun b!3908958 () Bool)

(declare-fun res!1581016 () Bool)

(assert (=> b!3908958 (=> (not res!1581016) (not e!2416528))))

(declare-fun isEmpty!24627 (List!41537) Bool)

(assert (=> b!3908958 (= res!1581016 (not (isEmpty!24627 rules!2768)))))

(declare-fun tp!1189685 () Bool)

(declare-fun b!3908942 () Bool)

(declare-fun inv!21 (TokenValue!6673) Bool)

(assert (=> b!3908942 (= e!2416527 (and (inv!21 (value!204261 (h!46832 suffixTokens!72))) e!2416515 tp!1189685))))

(declare-fun res!1581010 () Bool)

(assert (=> start!366022 (=> (not res!1581010) (not e!2416528))))

(assert (=> start!366022 (= res!1581010 (is-Lexer!6030 thiss!20629))))

(assert (=> start!366022 e!2416528))

(assert (=> start!366022 e!2416509))

(assert (=> start!366022 true))

(assert (=> start!366022 e!2416513))

(assert (=> start!366022 e!2416512))

(assert (=> start!366022 e!2416530))

(assert (=> start!366022 e!2416518))

(assert (=> start!366022 e!2416519))

(declare-fun b!3908959 () Bool)

(declare-fun res!1581011 () Bool)

(assert (=> b!3908959 (=> res!1581011 e!2416523)))

(assert (=> b!3908959 (= res!1581011 (or (not (= lt!1361615 (tuple2!40659 (_1!23463 lt!1361615) (_2!23463 lt!1361615)))) (= (_2!23464 (v!39184 lt!1361609)) suffix!1176)))))

(declare-fun b!3908960 () Bool)

(declare-fun tp!1189683 () Bool)

(assert (=> b!3908960 (= e!2416531 (and tp!1189683 (inv!55589 (tag!7303 (h!46833 rules!2768))) (inv!55593 (transformation!6443 (h!46833 rules!2768))) e!2416524))))

(declare-fun tp!1189697 () Bool)

(declare-fun b!3908961 () Bool)

(assert (=> b!3908961 (= e!2416511 (and (inv!21 (value!204261 (h!46832 prefixTokens!80))) e!2416526 tp!1189697))))

(declare-fun b!3908962 () Bool)

(declare-fun res!1581008 () Bool)

(assert (=> b!3908962 (=> (not res!1581008) (not e!2416528))))

(declare-fun rulesInvariant!5375 (LexerInterface!6032 List!41537) Bool)

(assert (=> b!3908962 (= res!1581008 (rulesInvariant!5375 thiss!20629 rules!2768))))

(declare-fun b!3908963 () Bool)

(assert (=> b!3908963 (= e!2416523 e!2416532)))

(declare-fun res!1581018 () Bool)

(assert (=> b!3908963 (=> res!1581018 e!2416532)))

(assert (=> b!3908963 (= res!1581018 (>= lt!1361604 (size!31096 suffix!1176)))))

(assert (=> b!3908963 (= lt!1361604 (size!31096 (_2!23464 (v!39184 lt!1361609))))))

(assert (= (and start!366022 res!1581010) b!3908958))

(assert (= (and b!3908958 res!1581016) b!3908962))

(assert (= (and b!3908962 res!1581008) b!3908952))

(assert (= (and b!3908952 res!1581015) b!3908950))

(assert (= (and b!3908950 res!1581009) b!3908945))

(assert (= (and b!3908945 res!1581012) b!3908940))

(assert (= (and b!3908940 res!1581017) b!3908955))

(assert (= (and b!3908955 res!1581014) b!3908943))

(assert (= (and b!3908943 res!1581006) b!3908941))

(assert (= (and b!3908943 (not res!1581013)) b!3908957))

(assert (= (and b!3908957 (not res!1581007)) b!3908959))

(assert (= (and b!3908959 (not res!1581011)) b!3908963))

(assert (= (and b!3908963 (not res!1581018)) b!3908946))

(assert (= (and start!366022 (is-Cons!41411 suffixResult!91)) b!3908948))

(assert (= (and start!366022 (is-Cons!41411 suffix!1176)) b!3908954))

(assert (= b!3908960 b!3908953))

(assert (= b!3908937 b!3908960))

(assert (= (and start!366022 (is-Cons!41413 rules!2768)) b!3908937))

(assert (= b!3908956 b!3908951))

(assert (= b!3908961 b!3908956))

(assert (= b!3908944 b!3908961))

(assert (= (and start!366022 (is-Cons!41412 prefixTokens!80)) b!3908944))

(assert (= b!3908947 b!3908939))

(assert (= b!3908942 b!3908947))

(assert (= b!3908938 b!3908942))

(assert (= (and start!366022 (is-Cons!41412 suffixTokens!72)) b!3908938))

(assert (= (and start!366022 (is-Cons!41411 prefix!426)) b!3908949))

(declare-fun m!4471997 () Bool)

(assert (=> b!3908955 m!4471997))

(declare-fun m!4471999 () Bool)

(assert (=> b!3908940 m!4471999))

(declare-fun m!4472001 () Bool)

(assert (=> b!3908943 m!4472001))

(declare-fun m!4472003 () Bool)

(assert (=> b!3908943 m!4472003))

(declare-fun m!4472005 () Bool)

(assert (=> b!3908943 m!4472005))

(declare-fun m!4472007 () Bool)

(assert (=> b!3908943 m!4472007))

(declare-fun m!4472009 () Bool)

(assert (=> b!3908943 m!4472009))

(declare-fun m!4472011 () Bool)

(assert (=> b!3908943 m!4472011))

(declare-fun m!4472013 () Bool)

(assert (=> b!3908943 m!4472013))

(declare-fun m!4472015 () Bool)

(assert (=> b!3908943 m!4472015))

(declare-fun m!4472017 () Bool)

(assert (=> b!3908943 m!4472017))

(declare-fun m!4472019 () Bool)

(assert (=> b!3908943 m!4472019))

(assert (=> b!3908943 m!4472005))

(declare-fun m!4472021 () Bool)

(assert (=> b!3908943 m!4472021))

(declare-fun m!4472023 () Bool)

(assert (=> b!3908943 m!4472023))

(assert (=> b!3908943 m!4472017))

(declare-fun m!4472025 () Bool)

(assert (=> b!3908943 m!4472025))

(declare-fun m!4472027 () Bool)

(assert (=> b!3908943 m!4472027))

(declare-fun m!4472029 () Bool)

(assert (=> b!3908946 m!4472029))

(declare-fun m!4472031 () Bool)

(assert (=> b!3908941 m!4472031))

(declare-fun m!4472033 () Bool)

(assert (=> b!3908960 m!4472033))

(declare-fun m!4472035 () Bool)

(assert (=> b!3908960 m!4472035))

(declare-fun m!4472037 () Bool)

(assert (=> b!3908942 m!4472037))

(declare-fun m!4472039 () Bool)

(assert (=> b!3908956 m!4472039))

(declare-fun m!4472041 () Bool)

(assert (=> b!3908956 m!4472041))

(declare-fun m!4472043 () Bool)

(assert (=> b!3908957 m!4472043))

(declare-fun m!4472045 () Bool)

(assert (=> b!3908961 m!4472045))

(declare-fun m!4472047 () Bool)

(assert (=> b!3908958 m!4472047))

(declare-fun m!4472049 () Bool)

(assert (=> b!3908947 m!4472049))

(declare-fun m!4472051 () Bool)

(assert (=> b!3908947 m!4472051))

(declare-fun m!4472053 () Bool)

(assert (=> b!3908944 m!4472053))

(declare-fun m!4472055 () Bool)

(assert (=> b!3908938 m!4472055))

(declare-fun m!4472057 () Bool)

(assert (=> b!3908962 m!4472057))

(declare-fun m!4472059 () Bool)

(assert (=> b!3908952 m!4472059))

(declare-fun m!4472061 () Bool)

(assert (=> b!3908945 m!4472061))

(declare-fun m!4472063 () Bool)

(assert (=> b!3908945 m!4472063))

(declare-fun m!4472065 () Bool)

(assert (=> b!3908945 m!4472065))

(declare-fun m!4472067 () Bool)

(assert (=> b!3908950 m!4472067))

(declare-fun m!4472069 () Bool)

(assert (=> b!3908963 m!4472069))

(declare-fun m!4472071 () Bool)

(assert (=> b!3908963 m!4472071))

(push 1)

(assert (not b!3908944))

(assert (not b!3908938))

(assert (not b!3908949))

(assert (not b!3908940))

(assert (not b!3908943))

(assert (not b!3908957))

(assert (not b!3908963))

(assert (not b!3908961))

(assert b_and!297147)

(assert (not b!3908956))

(assert (not b!3908960))

(assert (not b!3908950))

(assert (not b_next!106615))

(assert b_and!297153)

(assert (not b!3908937))

(assert b_and!297151)

(assert (not b!3908954))

(assert (not b_next!106617))

(assert b_and!297143)

(assert (not b!3908955))

(assert b_and!297149)

(assert (not b!3908958))

(assert (not b!3908948))

(assert (not b_next!106609))

(assert (not b_next!106611))

(assert tp_is_empty!19667)

(assert (not b_next!106613))

(assert (not b!3908947))

(assert (not b!3908962))

(assert (not b!3908945))

(assert (not b!3908941))

(assert (not b_next!106619))

(assert (not b!3908942))

(assert (not b!3908946))

(assert b_and!297145)

(assert (not b!3908952))

(check-sat)

(pop 1)

(push 1)

(assert b_and!297149)

(assert b_and!297147)

(assert (not b_next!106613))

(assert (not b_next!106619))

(assert b_and!297145)

(assert (not b_next!106615))

(assert b_and!297153)

(assert b_and!297151)

(assert (not b_next!106617))

(assert b_and!297143)

(assert (not b_next!106609))

(assert (not b_next!106611))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1159701 () Bool)

(assert (=> d!1159701 (= (inv!55589 (tag!7303 (h!46833 rules!2768))) (= (mod (str.len (value!204260 (tag!7303 (h!46833 rules!2768)))) 2) 0))))

(assert (=> b!3908960 d!1159701))

(declare-fun d!1159703 () Bool)

(declare-fun res!1581064 () Bool)

(declare-fun e!2416611 () Bool)

(assert (=> d!1159703 (=> (not res!1581064) (not e!2416611))))

(declare-fun semiInverseModEq!2764 (Int Int) Bool)

(assert (=> d!1159703 (= res!1581064 (semiInverseModEq!2764 (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toValue!8887 (transformation!6443 (h!46833 rules!2768)))))))

(assert (=> d!1159703 (= (inv!55593 (transformation!6443 (h!46833 rules!2768))) e!2416611)))

(declare-fun b!3909047 () Bool)

(declare-fun equivClasses!2663 (Int Int) Bool)

(assert (=> b!3909047 (= e!2416611 (equivClasses!2663 (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toValue!8887 (transformation!6443 (h!46833 rules!2768)))))))

(assert (= (and d!1159703 res!1581064) b!3909047))

(declare-fun m!4472149 () Bool)

(assert (=> d!1159703 m!4472149))

(declare-fun m!4472151 () Bool)

(assert (=> b!3909047 m!4472151))

(assert (=> b!3908960 d!1159703))

(declare-fun d!1159705 () Bool)

(assert (=> d!1159705 (= (isEmpty!24625 prefix!426) (is-Nil!41411 prefix!426))))

(assert (=> b!3908950 d!1159705))

(declare-fun d!1159707 () Bool)

(declare-fun res!1581070 () Bool)

(declare-fun e!2416614 () Bool)

(assert (=> d!1159707 (=> (not res!1581070) (not e!2416614))))

(assert (=> d!1159707 (= res!1581070 (not (isEmpty!24625 (originalCharacters!7043 (h!46832 suffixTokens!72)))))))

(assert (=> d!1159707 (= (inv!55592 (h!46832 suffixTokens!72)) e!2416614)))

(declare-fun b!3909052 () Bool)

(declare-fun res!1581071 () Bool)

(assert (=> b!3909052 (=> (not res!1581071) (not e!2416614))))

(declare-fun dynLambda!17791 (Int TokenValue!6673) BalanceConc!24902)

(assert (=> b!3909052 (= res!1581071 (= (originalCharacters!7043 (h!46832 suffixTokens!72)) (list!15395 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (value!204261 (h!46832 suffixTokens!72))))))))

(declare-fun b!3909053 () Bool)

(assert (=> b!3909053 (= e!2416614 (= (size!31095 (h!46832 suffixTokens!72)) (size!31096 (originalCharacters!7043 (h!46832 suffixTokens!72)))))))

(assert (= (and d!1159707 res!1581070) b!3909052))

(assert (= (and b!3909052 res!1581071) b!3909053))

(declare-fun b_lambda!114427 () Bool)

(assert (=> (not b_lambda!114427) (not b!3909052)))

(declare-fun t!322634 () Bool)

(declare-fun tb!232373 () Bool)

(assert (=> (and b!3908951 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322634) tb!232373))

(declare-fun b!3909058 () Bool)

(declare-fun e!2416617 () Bool)

(declare-fun tp!1189751 () Bool)

(declare-fun inv!55596 (Conc!12654) Bool)

(assert (=> b!3909058 (= e!2416617 (and (inv!55596 (c!679544 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (value!204261 (h!46832 suffixTokens!72))))) tp!1189751))))

(declare-fun result!281678 () Bool)

(declare-fun inv!55597 (BalanceConc!24902) Bool)

(assert (=> tb!232373 (= result!281678 (and (inv!55597 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (value!204261 (h!46832 suffixTokens!72)))) e!2416617))))

(assert (= tb!232373 b!3909058))

(declare-fun m!4472153 () Bool)

(assert (=> b!3909058 m!4472153))

(declare-fun m!4472155 () Bool)

(assert (=> tb!232373 m!4472155))

(assert (=> b!3909052 t!322634))

(declare-fun b_and!297167 () Bool)

(assert (= b_and!297145 (and (=> t!322634 result!281678) b_and!297167)))

(declare-fun t!322636 () Bool)

(declare-fun tb!232375 () Bool)

(assert (=> (and b!3908953 (= (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322636) tb!232375))

(declare-fun result!281682 () Bool)

(assert (= result!281682 result!281678))

(assert (=> b!3909052 t!322636))

(declare-fun b_and!297169 () Bool)

(assert (= b_and!297149 (and (=> t!322636 result!281682) b_and!297169)))

(declare-fun t!322638 () Bool)

(declare-fun tb!232377 () Bool)

(assert (=> (and b!3908939 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322638) tb!232377))

(declare-fun result!281684 () Bool)

(assert (= result!281684 result!281678))

(assert (=> b!3909052 t!322638))

(declare-fun b_and!297171 () Bool)

(assert (= b_and!297153 (and (=> t!322638 result!281684) b_and!297171)))

(declare-fun m!4472157 () Bool)

(assert (=> d!1159707 m!4472157))

(declare-fun m!4472159 () Bool)

(assert (=> b!3909052 m!4472159))

(assert (=> b!3909052 m!4472159))

(declare-fun m!4472161 () Bool)

(assert (=> b!3909052 m!4472161))

(declare-fun m!4472163 () Bool)

(assert (=> b!3909053 m!4472163))

(assert (=> b!3908938 d!1159707))

(declare-fun d!1159709 () Bool)

(declare-fun lt!1361664 () Int)

(assert (=> d!1159709 (>= lt!1361664 0)))

(declare-fun e!2416620 () Int)

(assert (=> d!1159709 (= lt!1361664 e!2416620)))

(declare-fun c!679550 () Bool)

(assert (=> d!1159709 (= c!679550 (is-Nil!41411 (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609)))))))

(assert (=> d!1159709 (= (size!31096 (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609)))) lt!1361664)))

(declare-fun b!3909063 () Bool)

(assert (=> b!3909063 (= e!2416620 0)))

(declare-fun b!3909064 () Bool)

(assert (=> b!3909064 (= e!2416620 (+ 1 (size!31096 (t!322626 (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609)))))))))

(assert (= (and d!1159709 c!679550) b!3909063))

(assert (= (and d!1159709 (not c!679550)) b!3909064))

(declare-fun m!4472165 () Bool)

(assert (=> b!3909064 m!4472165))

(assert (=> b!3908941 d!1159709))

(declare-fun d!1159711 () Bool)

(assert (=> d!1159711 (= (isEmpty!24626 prefixTokens!80) (is-Nil!41412 prefixTokens!80))))

(assert (=> b!3908952 d!1159711))

(declare-fun d!1159713 () Bool)

(declare-fun lt!1361665 () Int)

(assert (=> d!1159713 (>= lt!1361665 0)))

(declare-fun e!2416621 () Int)

(assert (=> d!1159713 (= lt!1361665 e!2416621)))

(declare-fun c!679551 () Bool)

(assert (=> d!1159713 (= c!679551 (is-Nil!41411 suffix!1176))))

(assert (=> d!1159713 (= (size!31096 suffix!1176) lt!1361665)))

(declare-fun b!3909065 () Bool)

(assert (=> b!3909065 (= e!2416621 0)))

(declare-fun b!3909066 () Bool)

(assert (=> b!3909066 (= e!2416621 (+ 1 (size!31096 (t!322626 suffix!1176))))))

(assert (= (and d!1159713 c!679551) b!3909065))

(assert (= (and d!1159713 (not c!679551)) b!3909066))

(declare-fun m!4472167 () Bool)

(assert (=> b!3909066 m!4472167))

(assert (=> b!3908963 d!1159713))

(declare-fun d!1159715 () Bool)

(declare-fun lt!1361666 () Int)

(assert (=> d!1159715 (>= lt!1361666 0)))

(declare-fun e!2416622 () Int)

(assert (=> d!1159715 (= lt!1361666 e!2416622)))

(declare-fun c!679552 () Bool)

(assert (=> d!1159715 (= c!679552 (is-Nil!41411 (_2!23464 (v!39184 lt!1361609))))))

(assert (=> d!1159715 (= (size!31096 (_2!23464 (v!39184 lt!1361609))) lt!1361666)))

(declare-fun b!3909067 () Bool)

(assert (=> b!3909067 (= e!2416622 0)))

(declare-fun b!3909068 () Bool)

(assert (=> b!3909068 (= e!2416622 (+ 1 (size!31096 (t!322626 (_2!23464 (v!39184 lt!1361609))))))))

(assert (= (and d!1159715 c!679552) b!3909067))

(assert (= (and d!1159715 (not c!679552)) b!3909068))

(declare-fun m!4472169 () Bool)

(assert (=> b!3909068 m!4472169))

(assert (=> b!3908963 d!1159715))

(declare-fun b!3909079 () Bool)

(declare-fun e!2416631 () Bool)

(declare-fun inv!17 (TokenValue!6673) Bool)

(assert (=> b!3909079 (= e!2416631 (inv!17 (value!204261 (h!46832 suffixTokens!72))))))

(declare-fun b!3909081 () Bool)

(declare-fun res!1581074 () Bool)

(declare-fun e!2416630 () Bool)

(assert (=> b!3909081 (=> res!1581074 e!2416630)))

(assert (=> b!3909081 (= res!1581074 (not (is-IntegerValue!20021 (value!204261 (h!46832 suffixTokens!72)))))))

(assert (=> b!3909081 (= e!2416631 e!2416630)))

(declare-fun b!3909082 () Bool)

(declare-fun inv!15 (TokenValue!6673) Bool)

(assert (=> b!3909082 (= e!2416630 (inv!15 (value!204261 (h!46832 suffixTokens!72))))))

(declare-fun b!3909083 () Bool)

(declare-fun e!2416629 () Bool)

(assert (=> b!3909083 (= e!2416629 e!2416631)))

(declare-fun c!679558 () Bool)

(assert (=> b!3909083 (= c!679558 (is-IntegerValue!20020 (value!204261 (h!46832 suffixTokens!72))))))

(declare-fun d!1159717 () Bool)

(declare-fun c!679557 () Bool)

(assert (=> d!1159717 (= c!679557 (is-IntegerValue!20019 (value!204261 (h!46832 suffixTokens!72))))))

(assert (=> d!1159717 (= (inv!21 (value!204261 (h!46832 suffixTokens!72))) e!2416629)))

(declare-fun b!3909080 () Bool)

(declare-fun inv!16 (TokenValue!6673) Bool)

(assert (=> b!3909080 (= e!2416629 (inv!16 (value!204261 (h!46832 suffixTokens!72))))))

(assert (= (and d!1159717 c!679557) b!3909080))

(assert (= (and d!1159717 (not c!679557)) b!3909083))

(assert (= (and b!3909083 c!679558) b!3909079))

(assert (= (and b!3909083 (not c!679558)) b!3909081))

(assert (= (and b!3909081 (not res!1581074)) b!3909082))

(declare-fun m!4472171 () Bool)

(assert (=> b!3909079 m!4472171))

(declare-fun m!4472173 () Bool)

(assert (=> b!3909082 m!4472173))

(declare-fun m!4472175 () Bool)

(assert (=> b!3909080 m!4472175))

(assert (=> b!3908942 d!1159717))

(declare-fun b!3909084 () Bool)

(declare-fun e!2416634 () Bool)

(assert (=> b!3909084 (= e!2416634 (inv!17 (value!204261 (h!46832 prefixTokens!80))))))

(declare-fun b!3909086 () Bool)

(declare-fun res!1581075 () Bool)

(declare-fun e!2416633 () Bool)

(assert (=> b!3909086 (=> res!1581075 e!2416633)))

(assert (=> b!3909086 (= res!1581075 (not (is-IntegerValue!20021 (value!204261 (h!46832 prefixTokens!80)))))))

(assert (=> b!3909086 (= e!2416634 e!2416633)))

(declare-fun b!3909087 () Bool)

(assert (=> b!3909087 (= e!2416633 (inv!15 (value!204261 (h!46832 prefixTokens!80))))))

(declare-fun b!3909088 () Bool)

(declare-fun e!2416632 () Bool)

(assert (=> b!3909088 (= e!2416632 e!2416634)))

(declare-fun c!679560 () Bool)

(assert (=> b!3909088 (= c!679560 (is-IntegerValue!20020 (value!204261 (h!46832 prefixTokens!80))))))

(declare-fun d!1159719 () Bool)

(declare-fun c!679559 () Bool)

(assert (=> d!1159719 (= c!679559 (is-IntegerValue!20019 (value!204261 (h!46832 prefixTokens!80))))))

(assert (=> d!1159719 (= (inv!21 (value!204261 (h!46832 prefixTokens!80))) e!2416632)))

(declare-fun b!3909085 () Bool)

(assert (=> b!3909085 (= e!2416632 (inv!16 (value!204261 (h!46832 prefixTokens!80))))))

(assert (= (and d!1159719 c!679559) b!3909085))

(assert (= (and d!1159719 (not c!679559)) b!3909088))

(assert (= (and b!3909088 c!679560) b!3909084))

(assert (= (and b!3909088 (not c!679560)) b!3909086))

(assert (= (and b!3909086 (not res!1581075)) b!3909087))

(declare-fun m!4472177 () Bool)

(assert (=> b!3909084 m!4472177))

(declare-fun m!4472179 () Bool)

(assert (=> b!3909087 m!4472179))

(declare-fun m!4472181 () Bool)

(assert (=> b!3909085 m!4472181))

(assert (=> b!3908961 d!1159719))

(declare-fun b!3909114 () Bool)

(declare-fun e!2416652 () Bool)

(declare-fun lt!1361675 () tuple2!40658)

(assert (=> b!3909114 (= e!2416652 (not (isEmpty!24626 (_1!23463 lt!1361675))))))

(declare-fun b!3909115 () Bool)

(declare-fun e!2416651 () Bool)

(assert (=> b!3909115 (= e!2416651 e!2416652)))

(declare-fun res!1581081 () Bool)

(assert (=> b!3909115 (= res!1581081 (< (size!31096 (_2!23463 lt!1361675)) (size!31096 suffix!1176)))))

(assert (=> b!3909115 (=> (not res!1581081) (not e!2416652))))

(declare-fun b!3909116 () Bool)

(assert (=> b!3909116 (= e!2416651 (= (_2!23463 lt!1361675) suffix!1176))))

(declare-fun d!1159721 () Bool)

(assert (=> d!1159721 e!2416651))

(declare-fun c!679571 () Bool)

(declare-fun size!31099 (List!41536) Int)

(assert (=> d!1159721 (= c!679571 (> (size!31099 (_1!23463 lt!1361675)) 0))))

(declare-fun e!2416650 () tuple2!40658)

(assert (=> d!1159721 (= lt!1361675 e!2416650)))

(declare-fun c!679572 () Bool)

(declare-fun lt!1361673 () Option!8863)

(assert (=> d!1159721 (= c!679572 (is-Some!8862 lt!1361673))))

(assert (=> d!1159721 (= lt!1361673 (maxPrefix!3336 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1159721 (= (lexList!1800 thiss!20629 rules!2768 suffix!1176) lt!1361675)))

(declare-fun b!3909117 () Bool)

(assert (=> b!3909117 (= e!2416650 (tuple2!40659 Nil!41412 suffix!1176))))

(declare-fun b!3909118 () Bool)

(declare-fun lt!1361674 () tuple2!40658)

(assert (=> b!3909118 (= e!2416650 (tuple2!40659 (Cons!41412 (_1!23464 (v!39184 lt!1361673)) (_1!23463 lt!1361674)) (_2!23463 lt!1361674)))))

(assert (=> b!3909118 (= lt!1361674 (lexList!1800 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361673))))))

(assert (= (and d!1159721 c!679572) b!3909118))

(assert (= (and d!1159721 (not c!679572)) b!3909117))

(assert (= (and d!1159721 c!679571) b!3909115))

(assert (= (and d!1159721 (not c!679571)) b!3909116))

(assert (= (and b!3909115 res!1581081) b!3909114))

(declare-fun m!4472189 () Bool)

(assert (=> b!3909114 m!4472189))

(declare-fun m!4472191 () Bool)

(assert (=> b!3909115 m!4472191))

(assert (=> b!3909115 m!4472069))

(declare-fun m!4472193 () Bool)

(assert (=> d!1159721 m!4472193))

(declare-fun m!4472195 () Bool)

(assert (=> d!1159721 m!4472195))

(declare-fun m!4472197 () Bool)

(assert (=> b!3909118 m!4472197))

(assert (=> b!3908940 d!1159721))

(declare-fun d!1159729 () Bool)

(declare-fun res!1581084 () Bool)

(declare-fun e!2416655 () Bool)

(assert (=> d!1159729 (=> (not res!1581084) (not e!2416655))))

(declare-fun rulesValid!2499 (LexerInterface!6032 List!41537) Bool)

(assert (=> d!1159729 (= res!1581084 (rulesValid!2499 thiss!20629 rules!2768))))

(assert (=> d!1159729 (= (rulesInvariant!5375 thiss!20629 rules!2768) e!2416655)))

(declare-fun b!3909121 () Bool)

(declare-datatypes ((List!41542 0))(
  ( (Nil!41418) (Cons!41418 (h!46838 String!47085) (t!322693 List!41542)) )
))
(declare-fun noDuplicateTag!2500 (LexerInterface!6032 List!41537 List!41542) Bool)

(assert (=> b!3909121 (= e!2416655 (noDuplicateTag!2500 thiss!20629 rules!2768 Nil!41418))))

(assert (= (and d!1159729 res!1581084) b!3909121))

(declare-fun m!4472199 () Bool)

(assert (=> d!1159729 m!4472199))

(declare-fun m!4472201 () Bool)

(assert (=> b!3909121 m!4472201))

(assert (=> b!3908962 d!1159729))

(declare-fun d!1159731 () Bool)

(declare-fun res!1581085 () Bool)

(declare-fun e!2416656 () Bool)

(assert (=> d!1159731 (=> (not res!1581085) (not e!2416656))))

(assert (=> d!1159731 (= res!1581085 (not (isEmpty!24625 (originalCharacters!7043 (h!46832 prefixTokens!80)))))))

(assert (=> d!1159731 (= (inv!55592 (h!46832 prefixTokens!80)) e!2416656)))

(declare-fun b!3909122 () Bool)

(declare-fun res!1581086 () Bool)

(assert (=> b!3909122 (=> (not res!1581086) (not e!2416656))))

(assert (=> b!3909122 (= res!1581086 (= (originalCharacters!7043 (h!46832 prefixTokens!80)) (list!15395 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (value!204261 (h!46832 prefixTokens!80))))))))

(declare-fun b!3909123 () Bool)

(assert (=> b!3909123 (= e!2416656 (= (size!31095 (h!46832 prefixTokens!80)) (size!31096 (originalCharacters!7043 (h!46832 prefixTokens!80)))))))

(assert (= (and d!1159731 res!1581085) b!3909122))

(assert (= (and b!3909122 res!1581086) b!3909123))

(declare-fun b_lambda!114429 () Bool)

(assert (=> (not b_lambda!114429) (not b!3909122)))

(declare-fun t!322640 () Bool)

(declare-fun tb!232379 () Bool)

(assert (=> (and b!3908951 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322640) tb!232379))

(declare-fun b!3909124 () Bool)

(declare-fun e!2416657 () Bool)

(declare-fun tp!1189752 () Bool)

(assert (=> b!3909124 (= e!2416657 (and (inv!55596 (c!679544 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (value!204261 (h!46832 prefixTokens!80))))) tp!1189752))))

(declare-fun result!281686 () Bool)

(assert (=> tb!232379 (= result!281686 (and (inv!55597 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (value!204261 (h!46832 prefixTokens!80)))) e!2416657))))

(assert (= tb!232379 b!3909124))

(declare-fun m!4472203 () Bool)

(assert (=> b!3909124 m!4472203))

(declare-fun m!4472205 () Bool)

(assert (=> tb!232379 m!4472205))

(assert (=> b!3909122 t!322640))

(declare-fun b_and!297173 () Bool)

(assert (= b_and!297167 (and (=> t!322640 result!281686) b_and!297173)))

(declare-fun tb!232381 () Bool)

(declare-fun t!322642 () Bool)

(assert (=> (and b!3908953 (= (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322642) tb!232381))

(declare-fun result!281688 () Bool)

(assert (= result!281688 result!281686))

(assert (=> b!3909122 t!322642))

(declare-fun b_and!297175 () Bool)

(assert (= b_and!297169 (and (=> t!322642 result!281688) b_and!297175)))

(declare-fun t!322644 () Bool)

(declare-fun tb!232383 () Bool)

(assert (=> (and b!3908939 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322644) tb!232383))

(declare-fun result!281690 () Bool)

(assert (= result!281690 result!281686))

(assert (=> b!3909122 t!322644))

(declare-fun b_and!297177 () Bool)

(assert (= b_and!297171 (and (=> t!322644 result!281690) b_and!297177)))

(declare-fun m!4472207 () Bool)

(assert (=> d!1159731 m!4472207))

(declare-fun m!4472209 () Bool)

(assert (=> b!3909122 m!4472209))

(assert (=> b!3909122 m!4472209))

(declare-fun m!4472211 () Bool)

(assert (=> b!3909122 m!4472211))

(declare-fun m!4472213 () Bool)

(assert (=> b!3909123 m!4472213))

(assert (=> b!3908944 d!1159731))

(declare-fun d!1159733 () Bool)

(declare-fun e!2416677 () Bool)

(assert (=> d!1159733 e!2416677))

(declare-fun res!1581116 () Bool)

(assert (=> d!1159733 (=> res!1581116 e!2416677)))

(declare-fun lt!1361687 () Option!8863)

(declare-fun isEmpty!24631 (Option!8863) Bool)

(assert (=> d!1159733 (= res!1581116 (isEmpty!24631 lt!1361687))))

(declare-fun e!2416676 () Option!8863)

(assert (=> d!1159733 (= lt!1361687 e!2416676)))

(declare-fun c!679575 () Bool)

(assert (=> d!1159733 (= c!679575 (and (is-Cons!41413 rules!2768) (is-Nil!41413 (t!322628 rules!2768))))))

(declare-fun lt!1361688 () Unit!59561)

(declare-fun lt!1361690 () Unit!59561)

(assert (=> d!1159733 (= lt!1361688 lt!1361690)))

(assert (=> d!1159733 (isPrefix!3538 lt!1361614 lt!1361614)))

(declare-fun lemmaIsPrefixRefl!2243 (List!41535 List!41535) Unit!59561)

(assert (=> d!1159733 (= lt!1361690 (lemmaIsPrefixRefl!2243 lt!1361614 lt!1361614))))

(declare-fun rulesValidInductive!2313 (LexerInterface!6032 List!41537) Bool)

(assert (=> d!1159733 (rulesValidInductive!2313 thiss!20629 rules!2768)))

(assert (=> d!1159733 (= (maxPrefix!3336 thiss!20629 rules!2768 lt!1361614) lt!1361687)))

(declare-fun b!3909159 () Bool)

(declare-fun res!1581113 () Bool)

(declare-fun e!2416675 () Bool)

(assert (=> b!3909159 (=> (not res!1581113) (not e!2416675))))

(declare-fun get!13689 (Option!8863) tuple2!40660)

(assert (=> b!3909159 (= res!1581113 (< (size!31096 (_2!23464 (get!13689 lt!1361687))) (size!31096 lt!1361614)))))

(declare-fun b!3909160 () Bool)

(declare-fun res!1581118 () Bool)

(assert (=> b!3909160 (=> (not res!1581118) (not e!2416675))))

(assert (=> b!3909160 (= res!1581118 (= (++!10643 (list!15395 (charsOf!4267 (_1!23464 (get!13689 lt!1361687)))) (_2!23464 (get!13689 lt!1361687))) lt!1361614))))

(declare-fun b!3909161 () Bool)

(declare-fun contains!8324 (List!41537 Rule!12686) Bool)

(assert (=> b!3909161 (= e!2416675 (contains!8324 rules!2768 (rule!9357 (_1!23464 (get!13689 lt!1361687)))))))

(declare-fun b!3909162 () Bool)

(assert (=> b!3909162 (= e!2416677 e!2416675)))

(declare-fun res!1581114 () Bool)

(assert (=> b!3909162 (=> (not res!1581114) (not e!2416675))))

(declare-fun isDefined!6912 (Option!8863) Bool)

(assert (=> b!3909162 (= res!1581114 (isDefined!6912 lt!1361687))))

(declare-fun b!3909163 () Bool)

(declare-fun call!284263 () Option!8863)

(assert (=> b!3909163 (= e!2416676 call!284263)))

(declare-fun b!3909164 () Bool)

(declare-fun res!1581117 () Bool)

(assert (=> b!3909164 (=> (not res!1581117) (not e!2416675))))

(declare-fun matchR!5441 (Regex!11348 List!41535) Bool)

(assert (=> b!3909164 (= res!1581117 (matchR!5441 (regex!6443 (rule!9357 (_1!23464 (get!13689 lt!1361687)))) (list!15395 (charsOf!4267 (_1!23464 (get!13689 lt!1361687))))))))

(declare-fun b!3909165 () Bool)

(declare-fun res!1581115 () Bool)

(assert (=> b!3909165 (=> (not res!1581115) (not e!2416675))))

(assert (=> b!3909165 (= res!1581115 (= (list!15395 (charsOf!4267 (_1!23464 (get!13689 lt!1361687)))) (originalCharacters!7043 (_1!23464 (get!13689 lt!1361687)))))))

(declare-fun b!3909166 () Bool)

(declare-fun res!1581112 () Bool)

(assert (=> b!3909166 (=> (not res!1581112) (not e!2416675))))

(assert (=> b!3909166 (= res!1581112 (= (value!204261 (_1!23464 (get!13689 lt!1361687))) (apply!9682 (transformation!6443 (rule!9357 (_1!23464 (get!13689 lt!1361687)))) (seqFromList!4710 (originalCharacters!7043 (_1!23464 (get!13689 lt!1361687)))))))))

(declare-fun b!3909167 () Bool)

(declare-fun lt!1361686 () Option!8863)

(declare-fun lt!1361689 () Option!8863)

(assert (=> b!3909167 (= e!2416676 (ite (and (is-None!8862 lt!1361686) (is-None!8862 lt!1361689)) None!8862 (ite (is-None!8862 lt!1361689) lt!1361686 (ite (is-None!8862 lt!1361686) lt!1361689 (ite (>= (size!31095 (_1!23464 (v!39184 lt!1361686))) (size!31095 (_1!23464 (v!39184 lt!1361689)))) lt!1361686 lt!1361689)))))))

(assert (=> b!3909167 (= lt!1361686 call!284263)))

(assert (=> b!3909167 (= lt!1361689 (maxPrefix!3336 thiss!20629 (t!322628 rules!2768) lt!1361614))))

(declare-fun bm!284258 () Bool)

(declare-fun maxPrefixOneRule!2410 (LexerInterface!6032 Rule!12686 List!41535) Option!8863)

(assert (=> bm!284258 (= call!284263 (maxPrefixOneRule!2410 thiss!20629 (h!46833 rules!2768) lt!1361614))))

(assert (= (and d!1159733 c!679575) b!3909163))

(assert (= (and d!1159733 (not c!679575)) b!3909167))

(assert (= (or b!3909163 b!3909167) bm!284258))

(assert (= (and d!1159733 (not res!1581116)) b!3909162))

(assert (= (and b!3909162 res!1581114) b!3909165))

(assert (= (and b!3909165 res!1581115) b!3909159))

(assert (= (and b!3909159 res!1581113) b!3909160))

(assert (= (and b!3909160 res!1581118) b!3909166))

(assert (= (and b!3909166 res!1581112) b!3909164))

(assert (= (and b!3909164 res!1581117) b!3909161))

(declare-fun m!4472239 () Bool)

(assert (=> b!3909164 m!4472239))

(declare-fun m!4472241 () Bool)

(assert (=> b!3909164 m!4472241))

(assert (=> b!3909164 m!4472241))

(declare-fun m!4472243 () Bool)

(assert (=> b!3909164 m!4472243))

(assert (=> b!3909164 m!4472243))

(declare-fun m!4472245 () Bool)

(assert (=> b!3909164 m!4472245))

(declare-fun m!4472247 () Bool)

(assert (=> b!3909167 m!4472247))

(assert (=> b!3909159 m!4472239))

(declare-fun m!4472249 () Bool)

(assert (=> b!3909159 m!4472249))

(assert (=> b!3909159 m!4472029))

(assert (=> b!3909166 m!4472239))

(declare-fun m!4472251 () Bool)

(assert (=> b!3909166 m!4472251))

(assert (=> b!3909166 m!4472251))

(declare-fun m!4472253 () Bool)

(assert (=> b!3909166 m!4472253))

(assert (=> b!3909161 m!4472239))

(declare-fun m!4472255 () Bool)

(assert (=> b!3909161 m!4472255))

(declare-fun m!4472257 () Bool)

(assert (=> b!3909162 m!4472257))

(assert (=> b!3909165 m!4472239))

(assert (=> b!3909165 m!4472241))

(assert (=> b!3909165 m!4472241))

(assert (=> b!3909165 m!4472243))

(declare-fun m!4472259 () Bool)

(assert (=> bm!284258 m!4472259))

(declare-fun m!4472261 () Bool)

(assert (=> d!1159733 m!4472261))

(declare-fun m!4472263 () Bool)

(assert (=> d!1159733 m!4472263))

(declare-fun m!4472265 () Bool)

(assert (=> d!1159733 m!4472265))

(declare-fun m!4472267 () Bool)

(assert (=> d!1159733 m!4472267))

(assert (=> b!3909160 m!4472239))

(assert (=> b!3909160 m!4472241))

(assert (=> b!3909160 m!4472241))

(assert (=> b!3909160 m!4472243))

(assert (=> b!3909160 m!4472243))

(declare-fun m!4472269 () Bool)

(assert (=> b!3909160 m!4472269))

(assert (=> b!3908955 d!1159733))

(declare-fun d!1159749 () Bool)

(assert (=> d!1159749 (= (size!31095 (_1!23464 (v!39184 lt!1361609))) (size!31096 (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609)))))))

(declare-fun Unit!59566 () Unit!59561)

(assert (=> d!1159749 (= (lemmaCharactersSize!1100 (_1!23464 (v!39184 lt!1361609))) Unit!59566)))

(declare-fun bs!585503 () Bool)

(assert (= bs!585503 d!1159749))

(assert (=> bs!585503 m!4472031))

(assert (=> b!3908943 d!1159749))

(declare-fun d!1159751 () Bool)

(declare-fun fromListB!2174 (List!41535) BalanceConc!24902)

(assert (=> d!1159751 (= (seqFromList!4710 lt!1361606) (fromListB!2174 lt!1361606))))

(declare-fun bs!585504 () Bool)

(assert (= bs!585504 d!1159751))

(declare-fun m!4472271 () Bool)

(assert (=> bs!585504 m!4472271))

(assert (=> b!3908943 d!1159751))

(declare-fun d!1159753 () Bool)

(declare-fun res!1581123 () Bool)

(declare-fun e!2416680 () Bool)

(assert (=> d!1159753 (=> (not res!1581123) (not e!2416680))))

(declare-fun validRegex!5163 (Regex!11348) Bool)

(assert (=> d!1159753 (= res!1581123 (validRegex!5163 (regex!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))))))

(assert (=> d!1159753 (= (ruleValid!2391 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609)))) e!2416680)))

(declare-fun b!3909172 () Bool)

(declare-fun res!1581124 () Bool)

(assert (=> b!3909172 (=> (not res!1581124) (not e!2416680))))

(declare-fun nullable!3964 (Regex!11348) Bool)

(assert (=> b!3909172 (= res!1581124 (not (nullable!3964 (regex!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))))))

(declare-fun b!3909173 () Bool)

(assert (=> b!3909173 (= e!2416680 (not (= (tag!7303 (rule!9357 (_1!23464 (v!39184 lt!1361609)))) (String!47086 ""))))))

(assert (= (and d!1159753 res!1581123) b!3909172))

(assert (= (and b!3909172 res!1581124) b!3909173))

(declare-fun m!4472273 () Bool)

(assert (=> d!1159753 m!4472273))

(declare-fun m!4472275 () Bool)

(assert (=> b!3909172 m!4472275))

(assert (=> b!3908943 d!1159753))

(declare-fun d!1159755 () Bool)

(assert (=> d!1159755 (= (_2!23464 (v!39184 lt!1361609)) lt!1361612)))

(declare-fun lt!1361693 () Unit!59561)

(declare-fun choose!23138 (List!41535 List!41535 List!41535 List!41535 List!41535) Unit!59561)

(assert (=> d!1159755 (= lt!1361693 (choose!23138 lt!1361606 (_2!23464 (v!39184 lt!1361609)) lt!1361606 lt!1361612 lt!1361614))))

(assert (=> d!1159755 (isPrefix!3538 lt!1361606 lt!1361614)))

(assert (=> d!1159755 (= (lemmaSamePrefixThenSameSuffix!1759 lt!1361606 (_2!23464 (v!39184 lt!1361609)) lt!1361606 lt!1361612 lt!1361614) lt!1361693)))

(declare-fun bs!585505 () Bool)

(assert (= bs!585505 d!1159755))

(declare-fun m!4472277 () Bool)

(assert (=> bs!585505 m!4472277))

(declare-fun m!4472279 () Bool)

(assert (=> bs!585505 m!4472279))

(assert (=> b!3908943 d!1159755))

(declare-fun d!1159757 () Bool)

(declare-fun dynLambda!17792 (Int BalanceConc!24902) TokenValue!6673)

(assert (=> d!1159757 (= (apply!9682 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))) (seqFromList!4710 lt!1361606)) (dynLambda!17792 (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))) (seqFromList!4710 lt!1361606)))))

(declare-fun b_lambda!114433 () Bool)

(assert (=> (not b_lambda!114433) (not d!1159757)))

(declare-fun t!322652 () Bool)

(declare-fun tb!232391 () Bool)

(assert (=> (and b!3908951 (= (toValue!8887 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322652) tb!232391))

(declare-fun result!281700 () Bool)

(assert (=> tb!232391 (= result!281700 (inv!21 (dynLambda!17792 (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))) (seqFromList!4710 lt!1361606))))))

(declare-fun m!4472281 () Bool)

(assert (=> tb!232391 m!4472281))

(assert (=> d!1159757 t!322652))

(declare-fun b_and!297185 () Bool)

(assert (= b_and!297143 (and (=> t!322652 result!281700) b_and!297185)))

(declare-fun t!322654 () Bool)

(declare-fun tb!232393 () Bool)

(assert (=> (and b!3908953 (= (toValue!8887 (transformation!6443 (h!46833 rules!2768))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322654) tb!232393))

(declare-fun result!281704 () Bool)

(assert (= result!281704 result!281700))

(assert (=> d!1159757 t!322654))

(declare-fun b_and!297187 () Bool)

(assert (= b_and!297147 (and (=> t!322654 result!281704) b_and!297187)))

(declare-fun tb!232395 () Bool)

(declare-fun t!322656 () Bool)

(assert (=> (and b!3908939 (= (toValue!8887 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322656) tb!232395))

(declare-fun result!281706 () Bool)

(assert (= result!281706 result!281700))

(assert (=> d!1159757 t!322656))

(declare-fun b_and!297189 () Bool)

(assert (= b_and!297151 (and (=> t!322656 result!281706) b_and!297189)))

(assert (=> d!1159757 m!4472005))

(declare-fun m!4472283 () Bool)

(assert (=> d!1159757 m!4472283))

(assert (=> b!3908943 d!1159757))

(declare-fun b!3909176 () Bool)

(declare-fun e!2416686 () Bool)

(declare-fun lt!1361696 () tuple2!40658)

(assert (=> b!3909176 (= e!2416686 (not (isEmpty!24626 (_1!23463 lt!1361696))))))

(declare-fun b!3909177 () Bool)

(declare-fun e!2416685 () Bool)

(assert (=> b!3909177 (= e!2416685 e!2416686)))

(declare-fun res!1581125 () Bool)

(assert (=> b!3909177 (= res!1581125 (< (size!31096 (_2!23463 lt!1361696)) (size!31096 (_2!23464 (v!39184 lt!1361609)))))))

(assert (=> b!3909177 (=> (not res!1581125) (not e!2416686))))

(declare-fun b!3909178 () Bool)

(assert (=> b!3909178 (= e!2416685 (= (_2!23463 lt!1361696) (_2!23464 (v!39184 lt!1361609))))))

(declare-fun d!1159759 () Bool)

(assert (=> d!1159759 e!2416685))

(declare-fun c!679576 () Bool)

(assert (=> d!1159759 (= c!679576 (> (size!31099 (_1!23463 lt!1361696)) 0))))

(declare-fun e!2416684 () tuple2!40658)

(assert (=> d!1159759 (= lt!1361696 e!2416684)))

(declare-fun c!679577 () Bool)

(declare-fun lt!1361694 () Option!8863)

(assert (=> d!1159759 (= c!679577 (is-Some!8862 lt!1361694))))

(assert (=> d!1159759 (= lt!1361694 (maxPrefix!3336 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361609))))))

(assert (=> d!1159759 (= (lexList!1800 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361609))) lt!1361696)))

(declare-fun b!3909179 () Bool)

(assert (=> b!3909179 (= e!2416684 (tuple2!40659 Nil!41412 (_2!23464 (v!39184 lt!1361609))))))

(declare-fun b!3909180 () Bool)

(declare-fun lt!1361695 () tuple2!40658)

(assert (=> b!3909180 (= e!2416684 (tuple2!40659 (Cons!41412 (_1!23464 (v!39184 lt!1361694)) (_1!23463 lt!1361695)) (_2!23463 lt!1361695)))))

(assert (=> b!3909180 (= lt!1361695 (lexList!1800 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361694))))))

(assert (= (and d!1159759 c!679577) b!3909180))

(assert (= (and d!1159759 (not c!679577)) b!3909179))

(assert (= (and d!1159759 c!679576) b!3909177))

(assert (= (and d!1159759 (not c!679576)) b!3909178))

(assert (= (and b!3909177 res!1581125) b!3909176))

(declare-fun m!4472285 () Bool)

(assert (=> b!3909176 m!4472285))

(declare-fun m!4472287 () Bool)

(assert (=> b!3909177 m!4472287))

(assert (=> b!3909177 m!4472071))

(declare-fun m!4472289 () Bool)

(assert (=> d!1159759 m!4472289))

(declare-fun m!4472291 () Bool)

(assert (=> d!1159759 m!4472291))

(declare-fun m!4472293 () Bool)

(assert (=> b!3909180 m!4472293))

(assert (=> b!3908943 d!1159759))

(declare-fun d!1159761 () Bool)

(declare-fun lt!1361699 () List!41535)

(assert (=> d!1159761 (= (++!10643 lt!1361606 lt!1361699) lt!1361614)))

(declare-fun e!2416689 () List!41535)

(assert (=> d!1159761 (= lt!1361699 e!2416689)))

(declare-fun c!679580 () Bool)

(assert (=> d!1159761 (= c!679580 (is-Cons!41411 lt!1361606))))

(assert (=> d!1159761 (>= (size!31096 lt!1361614) (size!31096 lt!1361606))))

(assert (=> d!1159761 (= (getSuffix!1993 lt!1361614 lt!1361606) lt!1361699)))

(declare-fun b!3909185 () Bool)

(declare-fun tail!5972 (List!41535) List!41535)

(assert (=> b!3909185 (= e!2416689 (getSuffix!1993 (tail!5972 lt!1361614) (t!322626 lt!1361606)))))

(declare-fun b!3909186 () Bool)

(assert (=> b!3909186 (= e!2416689 lt!1361614)))

(assert (= (and d!1159761 c!679580) b!3909185))

(assert (= (and d!1159761 (not c!679580)) b!3909186))

(declare-fun m!4472295 () Bool)

(assert (=> d!1159761 m!4472295))

(assert (=> d!1159761 m!4472029))

(assert (=> d!1159761 m!4472013))

(declare-fun m!4472297 () Bool)

(assert (=> b!3909185 m!4472297))

(assert (=> b!3909185 m!4472297))

(declare-fun m!4472299 () Bool)

(assert (=> b!3909185 m!4472299))

(assert (=> b!3908943 d!1159761))

(declare-fun d!1159763 () Bool)

(assert (=> d!1159763 (isPrefix!3538 lt!1361606 (++!10643 lt!1361606 (_2!23464 (v!39184 lt!1361609))))))

(declare-fun lt!1361702 () Unit!59561)

(declare-fun choose!23139 (List!41535 List!41535) Unit!59561)

(assert (=> d!1159763 (= lt!1361702 (choose!23139 lt!1361606 (_2!23464 (v!39184 lt!1361609))))))

(assert (=> d!1159763 (= (lemmaConcatTwoListThenFirstIsPrefix!2401 lt!1361606 (_2!23464 (v!39184 lt!1361609))) lt!1361702)))

(declare-fun bs!585506 () Bool)

(assert (= bs!585506 d!1159763))

(assert (=> bs!585506 m!4472011))

(assert (=> bs!585506 m!4472011))

(declare-fun m!4472301 () Bool)

(assert (=> bs!585506 m!4472301))

(declare-fun m!4472303 () Bool)

(assert (=> bs!585506 m!4472303))

(assert (=> b!3908943 d!1159763))

(declare-fun b!3909195 () Bool)

(declare-fun e!2416694 () List!41535)

(assert (=> b!3909195 (= e!2416694 (_2!23464 (v!39184 lt!1361609)))))

(declare-fun b!3909198 () Bool)

(declare-fun lt!1361705 () List!41535)

(declare-fun e!2416695 () Bool)

(assert (=> b!3909198 (= e!2416695 (or (not (= (_2!23464 (v!39184 lt!1361609)) Nil!41411)) (= lt!1361705 lt!1361606)))))

(declare-fun b!3909197 () Bool)

(declare-fun res!1581130 () Bool)

(assert (=> b!3909197 (=> (not res!1581130) (not e!2416695))))

(assert (=> b!3909197 (= res!1581130 (= (size!31096 lt!1361705) (+ (size!31096 lt!1361606) (size!31096 (_2!23464 (v!39184 lt!1361609))))))))

(declare-fun b!3909196 () Bool)

(assert (=> b!3909196 (= e!2416694 (Cons!41411 (h!46831 lt!1361606) (++!10643 (t!322626 lt!1361606) (_2!23464 (v!39184 lt!1361609)))))))

(declare-fun d!1159765 () Bool)

(assert (=> d!1159765 e!2416695))

(declare-fun res!1581131 () Bool)

(assert (=> d!1159765 (=> (not res!1581131) (not e!2416695))))

(declare-fun content!6210 (List!41535) (Set C!22882))

(assert (=> d!1159765 (= res!1581131 (= (content!6210 lt!1361705) (set.union (content!6210 lt!1361606) (content!6210 (_2!23464 (v!39184 lt!1361609))))))))

(assert (=> d!1159765 (= lt!1361705 e!2416694)))

(declare-fun c!679583 () Bool)

(assert (=> d!1159765 (= c!679583 (is-Nil!41411 lt!1361606))))

(assert (=> d!1159765 (= (++!10643 lt!1361606 (_2!23464 (v!39184 lt!1361609))) lt!1361705)))

(assert (= (and d!1159765 c!679583) b!3909195))

(assert (= (and d!1159765 (not c!679583)) b!3909196))

(assert (= (and d!1159765 res!1581131) b!3909197))

(assert (= (and b!3909197 res!1581130) b!3909198))

(declare-fun m!4472305 () Bool)

(assert (=> b!3909197 m!4472305))

(assert (=> b!3909197 m!4472013))

(assert (=> b!3909197 m!4472071))

(declare-fun m!4472307 () Bool)

(assert (=> b!3909196 m!4472307))

(declare-fun m!4472309 () Bool)

(assert (=> d!1159765 m!4472309))

(declare-fun m!4472311 () Bool)

(assert (=> d!1159765 m!4472311))

(declare-fun m!4472313 () Bool)

(assert (=> d!1159765 m!4472313))

(assert (=> b!3908943 d!1159765))

(declare-fun d!1159767 () Bool)

(declare-fun list!15397 (Conc!12654) List!41535)

(assert (=> d!1159767 (= (list!15395 (charsOf!4267 (_1!23464 (v!39184 lt!1361609)))) (list!15397 (c!679544 (charsOf!4267 (_1!23464 (v!39184 lt!1361609))))))))

(declare-fun bs!585507 () Bool)

(assert (= bs!585507 d!1159767))

(declare-fun m!4472315 () Bool)

(assert (=> bs!585507 m!4472315))

(assert (=> b!3908943 d!1159767))

(declare-fun b!3909210 () Bool)

(declare-fun e!2416703 () Bool)

(assert (=> b!3909210 (= e!2416703 (>= (size!31096 lt!1361611) (size!31096 lt!1361606)))))

(declare-fun b!3909209 () Bool)

(declare-fun e!2416702 () Bool)

(assert (=> b!3909209 (= e!2416702 (isPrefix!3538 (tail!5972 lt!1361606) (tail!5972 lt!1361611)))))

(declare-fun b!3909207 () Bool)

(declare-fun e!2416704 () Bool)

(assert (=> b!3909207 (= e!2416704 e!2416702)))

(declare-fun res!1581141 () Bool)

(assert (=> b!3909207 (=> (not res!1581141) (not e!2416702))))

(assert (=> b!3909207 (= res!1581141 (not (is-Nil!41411 lt!1361611)))))

(declare-fun b!3909208 () Bool)

(declare-fun res!1581143 () Bool)

(assert (=> b!3909208 (=> (not res!1581143) (not e!2416702))))

(declare-fun head!8255 (List!41535) C!22882)

(assert (=> b!3909208 (= res!1581143 (= (head!8255 lt!1361606) (head!8255 lt!1361611)))))

(declare-fun d!1159769 () Bool)

(assert (=> d!1159769 e!2416703))

(declare-fun res!1581140 () Bool)

(assert (=> d!1159769 (=> res!1581140 e!2416703)))

(declare-fun lt!1361708 () Bool)

(assert (=> d!1159769 (= res!1581140 (not lt!1361708))))

(assert (=> d!1159769 (= lt!1361708 e!2416704)))

(declare-fun res!1581142 () Bool)

(assert (=> d!1159769 (=> res!1581142 e!2416704)))

(assert (=> d!1159769 (= res!1581142 (is-Nil!41411 lt!1361606))))

(assert (=> d!1159769 (= (isPrefix!3538 lt!1361606 lt!1361611) lt!1361708)))

(assert (= (and d!1159769 (not res!1581142)) b!3909207))

(assert (= (and b!3909207 res!1581141) b!3909208))

(assert (= (and b!3909208 res!1581143) b!3909209))

(assert (= (and d!1159769 (not res!1581140)) b!3909210))

(declare-fun m!4472317 () Bool)

(assert (=> b!3909210 m!4472317))

(assert (=> b!3909210 m!4472013))

(declare-fun m!4472319 () Bool)

(assert (=> b!3909209 m!4472319))

(declare-fun m!4472321 () Bool)

(assert (=> b!3909209 m!4472321))

(assert (=> b!3909209 m!4472319))

(assert (=> b!3909209 m!4472321))

(declare-fun m!4472323 () Bool)

(assert (=> b!3909209 m!4472323))

(declare-fun m!4472325 () Bool)

(assert (=> b!3909208 m!4472325))

(declare-fun m!4472327 () Bool)

(assert (=> b!3909208 m!4472327))

(assert (=> b!3908943 d!1159769))

(declare-fun d!1159771 () Bool)

(assert (=> d!1159771 (ruleValid!2391 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609))))))

(declare-fun lt!1361711 () Unit!59561)

(declare-fun choose!23140 (LexerInterface!6032 Rule!12686 List!41537) Unit!59561)

(assert (=> d!1159771 (= lt!1361711 (choose!23140 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609))) rules!2768))))

(assert (=> d!1159771 (contains!8324 rules!2768 (rule!9357 (_1!23464 (v!39184 lt!1361609))))))

(assert (=> d!1159771 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1471 thiss!20629 (rule!9357 (_1!23464 (v!39184 lt!1361609))) rules!2768) lt!1361711)))

(declare-fun bs!585508 () Bool)

(assert (= bs!585508 d!1159771))

(assert (=> bs!585508 m!4472023))

(declare-fun m!4472329 () Bool)

(assert (=> bs!585508 m!4472329))

(declare-fun m!4472331 () Bool)

(assert (=> bs!585508 m!4472331))

(assert (=> b!3908943 d!1159771))

(declare-fun d!1159773 () Bool)

(declare-fun lt!1361712 () Int)

(assert (=> d!1159773 (>= lt!1361712 0)))

(declare-fun e!2416705 () Int)

(assert (=> d!1159773 (= lt!1361712 e!2416705)))

(declare-fun c!679584 () Bool)

(assert (=> d!1159773 (= c!679584 (is-Nil!41411 lt!1361606))))

(assert (=> d!1159773 (= (size!31096 lt!1361606) lt!1361712)))

(declare-fun b!3909211 () Bool)

(assert (=> b!3909211 (= e!2416705 0)))

(declare-fun b!3909212 () Bool)

(assert (=> b!3909212 (= e!2416705 (+ 1 (size!31096 (t!322626 lt!1361606))))))

(assert (= (and d!1159773 c!679584) b!3909211))

(assert (= (and d!1159773 (not c!679584)) b!3909212))

(declare-fun m!4472333 () Bool)

(assert (=> b!3909212 m!4472333))

(assert (=> b!3908943 d!1159773))

(declare-fun d!1159775 () Bool)

(declare-fun lt!1361715 () BalanceConc!24902)

(assert (=> d!1159775 (= (list!15395 lt!1361715) (originalCharacters!7043 (_1!23464 (v!39184 lt!1361609))))))

(assert (=> d!1159775 (= lt!1361715 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))) (value!204261 (_1!23464 (v!39184 lt!1361609)))))))

(assert (=> d!1159775 (= (charsOf!4267 (_1!23464 (v!39184 lt!1361609))) lt!1361715)))

(declare-fun b_lambda!114435 () Bool)

(assert (=> (not b_lambda!114435) (not d!1159775)))

(declare-fun t!322658 () Bool)

(declare-fun tb!232397 () Bool)

(assert (=> (and b!3908951 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322658) tb!232397))

(declare-fun b!3909213 () Bool)

(declare-fun e!2416706 () Bool)

(declare-fun tp!1189756 () Bool)

(assert (=> b!3909213 (= e!2416706 (and (inv!55596 (c!679544 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))) (value!204261 (_1!23464 (v!39184 lt!1361609)))))) tp!1189756))))

(declare-fun result!281708 () Bool)

(assert (=> tb!232397 (= result!281708 (and (inv!55597 (dynLambda!17791 (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609))))) (value!204261 (_1!23464 (v!39184 lt!1361609))))) e!2416706))))

(assert (= tb!232397 b!3909213))

(declare-fun m!4472335 () Bool)

(assert (=> b!3909213 m!4472335))

(declare-fun m!4472337 () Bool)

(assert (=> tb!232397 m!4472337))

(assert (=> d!1159775 t!322658))

(declare-fun b_and!297191 () Bool)

(assert (= b_and!297173 (and (=> t!322658 result!281708) b_and!297191)))

(declare-fun t!322660 () Bool)

(declare-fun tb!232399 () Bool)

(assert (=> (and b!3908953 (= (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322660) tb!232399))

(declare-fun result!281710 () Bool)

(assert (= result!281710 result!281708))

(assert (=> d!1159775 t!322660))

(declare-fun b_and!297193 () Bool)

(assert (= b_and!297175 (and (=> t!322660 result!281710) b_and!297193)))

(declare-fun tb!232401 () Bool)

(declare-fun t!322662 () Bool)

(assert (=> (and b!3908939 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322662) tb!232401))

(declare-fun result!281712 () Bool)

(assert (= result!281712 result!281708))

(assert (=> d!1159775 t!322662))

(declare-fun b_and!297195 () Bool)

(assert (= b_and!297177 (and (=> t!322662 result!281712) b_and!297195)))

(declare-fun m!4472339 () Bool)

(assert (=> d!1159775 m!4472339))

(declare-fun m!4472341 () Bool)

(assert (=> d!1159775 m!4472341))

(assert (=> b!3908943 d!1159775))

(declare-fun b!3909224 () Bool)

(declare-fun res!1581148 () Bool)

(declare-fun e!2416712 () Bool)

(assert (=> b!3909224 (=> (not res!1581148) (not e!2416712))))

(declare-fun lt!1361718 () List!41536)

(assert (=> b!3909224 (= res!1581148 (= (size!31099 lt!1361718) (+ (size!31099 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412)) (size!31099 (_1!23463 lt!1361615)))))))

(declare-fun d!1159777 () Bool)

(assert (=> d!1159777 e!2416712))

(declare-fun res!1581149 () Bool)

(assert (=> d!1159777 (=> (not res!1581149) (not e!2416712))))

(declare-fun content!6211 (List!41536) (Set Token!12024))

(assert (=> d!1159777 (= res!1581149 (= (content!6211 lt!1361718) (set.union (content!6211 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412)) (content!6211 (_1!23463 lt!1361615)))))))

(declare-fun e!2416711 () List!41536)

(assert (=> d!1159777 (= lt!1361718 e!2416711)))

(declare-fun c!679587 () Bool)

(assert (=> d!1159777 (= c!679587 (is-Nil!41412 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412)))))

(assert (=> d!1159777 (= (++!10644 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412) (_1!23463 lt!1361615)) lt!1361718)))

(declare-fun b!3909225 () Bool)

(assert (=> b!3909225 (= e!2416712 (or (not (= (_1!23463 lt!1361615) Nil!41412)) (= lt!1361718 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412))))))

(declare-fun b!3909223 () Bool)

(assert (=> b!3909223 (= e!2416711 (Cons!41412 (h!46832 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412)) (++!10644 (t!322627 (Cons!41412 (_1!23464 (v!39184 lt!1361609)) Nil!41412)) (_1!23463 lt!1361615))))))

(declare-fun b!3909222 () Bool)

(assert (=> b!3909222 (= e!2416711 (_1!23463 lt!1361615))))

(assert (= (and d!1159777 c!679587) b!3909222))

(assert (= (and d!1159777 (not c!679587)) b!3909223))

(assert (= (and d!1159777 res!1581149) b!3909224))

(assert (= (and b!3909224 res!1581148) b!3909225))

(declare-fun m!4472343 () Bool)

(assert (=> b!3909224 m!4472343))

(declare-fun m!4472345 () Bool)

(assert (=> b!3909224 m!4472345))

(declare-fun m!4472347 () Bool)

(assert (=> b!3909224 m!4472347))

(declare-fun m!4472349 () Bool)

(assert (=> d!1159777 m!4472349))

(declare-fun m!4472351 () Bool)

(assert (=> d!1159777 m!4472351))

(declare-fun m!4472353 () Bool)

(assert (=> d!1159777 m!4472353))

(declare-fun m!4472355 () Bool)

(assert (=> b!3909223 m!4472355))

(assert (=> b!3908957 d!1159777))

(declare-fun d!1159779 () Bool)

(assert (=> d!1159779 (= (inv!55589 (tag!7303 (rule!9357 (h!46832 suffixTokens!72)))) (= (mod (str.len (value!204260 (tag!7303 (rule!9357 (h!46832 suffixTokens!72))))) 2) 0))))

(assert (=> b!3908947 d!1159779))

(declare-fun d!1159781 () Bool)

(declare-fun res!1581150 () Bool)

(declare-fun e!2416713 () Bool)

(assert (=> d!1159781 (=> (not res!1581150) (not e!2416713))))

(assert (=> d!1159781 (= res!1581150 (semiInverseModEq!2764 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toValue!8887 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))))))

(assert (=> d!1159781 (= (inv!55593 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) e!2416713)))

(declare-fun b!3909226 () Bool)

(assert (=> b!3909226 (= e!2416713 (equivClasses!2663 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toValue!8887 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))))))

(assert (= (and d!1159781 res!1581150) b!3909226))

(declare-fun m!4472357 () Bool)

(assert (=> d!1159781 m!4472357))

(declare-fun m!4472359 () Bool)

(assert (=> b!3909226 m!4472359))

(assert (=> b!3908947 d!1159781))

(declare-fun d!1159783 () Bool)

(assert (=> d!1159783 (= (isEmpty!24627 rules!2768) (is-Nil!41413 rules!2768))))

(assert (=> b!3908958 d!1159783))

(declare-fun b!3909227 () Bool)

(declare-fun e!2416716 () Bool)

(declare-fun lt!1361721 () tuple2!40658)

(assert (=> b!3909227 (= e!2416716 (not (isEmpty!24626 (_1!23463 lt!1361721))))))

(declare-fun b!3909228 () Bool)

(declare-fun e!2416715 () Bool)

(assert (=> b!3909228 (= e!2416715 e!2416716)))

(declare-fun res!1581151 () Bool)

(assert (=> b!3909228 (= res!1581151 (< (size!31096 (_2!23463 lt!1361721)) (size!31096 lt!1361614)))))

(assert (=> b!3909228 (=> (not res!1581151) (not e!2416716))))

(declare-fun b!3909229 () Bool)

(assert (=> b!3909229 (= e!2416715 (= (_2!23463 lt!1361721) lt!1361614))))

(declare-fun d!1159785 () Bool)

(assert (=> d!1159785 e!2416715))

(declare-fun c!679588 () Bool)

(assert (=> d!1159785 (= c!679588 (> (size!31099 (_1!23463 lt!1361721)) 0))))

(declare-fun e!2416714 () tuple2!40658)

(assert (=> d!1159785 (= lt!1361721 e!2416714)))

(declare-fun c!679589 () Bool)

(declare-fun lt!1361719 () Option!8863)

(assert (=> d!1159785 (= c!679589 (is-Some!8862 lt!1361719))))

(assert (=> d!1159785 (= lt!1361719 (maxPrefix!3336 thiss!20629 rules!2768 lt!1361614))))

(assert (=> d!1159785 (= (lexList!1800 thiss!20629 rules!2768 lt!1361614) lt!1361721)))

(declare-fun b!3909230 () Bool)

(assert (=> b!3909230 (= e!2416714 (tuple2!40659 Nil!41412 lt!1361614))))

(declare-fun b!3909231 () Bool)

(declare-fun lt!1361720 () tuple2!40658)

(assert (=> b!3909231 (= e!2416714 (tuple2!40659 (Cons!41412 (_1!23464 (v!39184 lt!1361719)) (_1!23463 lt!1361720)) (_2!23463 lt!1361720)))))

(assert (=> b!3909231 (= lt!1361720 (lexList!1800 thiss!20629 rules!2768 (_2!23464 (v!39184 lt!1361719))))))

(assert (= (and d!1159785 c!679589) b!3909231))

(assert (= (and d!1159785 (not c!679589)) b!3909230))

(assert (= (and d!1159785 c!679588) b!3909228))

(assert (= (and d!1159785 (not c!679588)) b!3909229))

(assert (= (and b!3909228 res!1581151) b!3909227))

(declare-fun m!4472361 () Bool)

(assert (=> b!3909227 m!4472361))

(declare-fun m!4472363 () Bool)

(assert (=> b!3909228 m!4472363))

(assert (=> b!3909228 m!4472029))

(declare-fun m!4472365 () Bool)

(assert (=> d!1159785 m!4472365))

(assert (=> d!1159785 m!4471997))

(declare-fun m!4472367 () Bool)

(assert (=> b!3909231 m!4472367))

(assert (=> b!3908945 d!1159785))

(declare-fun b!3909234 () Bool)

(declare-fun res!1581152 () Bool)

(declare-fun e!2416718 () Bool)

(assert (=> b!3909234 (=> (not res!1581152) (not e!2416718))))

(declare-fun lt!1361722 () List!41536)

(assert (=> b!3909234 (= res!1581152 (= (size!31099 lt!1361722) (+ (size!31099 prefixTokens!80) (size!31099 suffixTokens!72))))))

(declare-fun d!1159787 () Bool)

(assert (=> d!1159787 e!2416718))

(declare-fun res!1581153 () Bool)

(assert (=> d!1159787 (=> (not res!1581153) (not e!2416718))))

(assert (=> d!1159787 (= res!1581153 (= (content!6211 lt!1361722) (set.union (content!6211 prefixTokens!80) (content!6211 suffixTokens!72))))))

(declare-fun e!2416717 () List!41536)

(assert (=> d!1159787 (= lt!1361722 e!2416717)))

(declare-fun c!679590 () Bool)

(assert (=> d!1159787 (= c!679590 (is-Nil!41412 prefixTokens!80))))

(assert (=> d!1159787 (= (++!10644 prefixTokens!80 suffixTokens!72) lt!1361722)))

(declare-fun b!3909235 () Bool)

(assert (=> b!3909235 (= e!2416718 (or (not (= suffixTokens!72 Nil!41412)) (= lt!1361722 prefixTokens!80)))))

(declare-fun b!3909233 () Bool)

(assert (=> b!3909233 (= e!2416717 (Cons!41412 (h!46832 prefixTokens!80) (++!10644 (t!322627 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3909232 () Bool)

(assert (=> b!3909232 (= e!2416717 suffixTokens!72)))

(assert (= (and d!1159787 c!679590) b!3909232))

(assert (= (and d!1159787 (not c!679590)) b!3909233))

(assert (= (and d!1159787 res!1581153) b!3909234))

(assert (= (and b!3909234 res!1581152) b!3909235))

(declare-fun m!4472369 () Bool)

(assert (=> b!3909234 m!4472369))

(declare-fun m!4472371 () Bool)

(assert (=> b!3909234 m!4472371))

(declare-fun m!4472373 () Bool)

(assert (=> b!3909234 m!4472373))

(declare-fun m!4472375 () Bool)

(assert (=> d!1159787 m!4472375))

(declare-fun m!4472377 () Bool)

(assert (=> d!1159787 m!4472377))

(declare-fun m!4472379 () Bool)

(assert (=> d!1159787 m!4472379))

(declare-fun m!4472381 () Bool)

(assert (=> b!3909233 m!4472381))

(assert (=> b!3908945 d!1159787))

(declare-fun b!3909236 () Bool)

(declare-fun e!2416719 () List!41535)

(assert (=> b!3909236 (= e!2416719 suffix!1176)))

(declare-fun lt!1361723 () List!41535)

(declare-fun e!2416720 () Bool)

(declare-fun b!3909239 () Bool)

(assert (=> b!3909239 (= e!2416720 (or (not (= suffix!1176 Nil!41411)) (= lt!1361723 prefix!426)))))

(declare-fun b!3909238 () Bool)

(declare-fun res!1581154 () Bool)

(assert (=> b!3909238 (=> (not res!1581154) (not e!2416720))))

(assert (=> b!3909238 (= res!1581154 (= (size!31096 lt!1361723) (+ (size!31096 prefix!426) (size!31096 suffix!1176))))))

(declare-fun b!3909237 () Bool)

(assert (=> b!3909237 (= e!2416719 (Cons!41411 (h!46831 prefix!426) (++!10643 (t!322626 prefix!426) suffix!1176)))))

(declare-fun d!1159789 () Bool)

(assert (=> d!1159789 e!2416720))

(declare-fun res!1581155 () Bool)

(assert (=> d!1159789 (=> (not res!1581155) (not e!2416720))))

(assert (=> d!1159789 (= res!1581155 (= (content!6210 lt!1361723) (set.union (content!6210 prefix!426) (content!6210 suffix!1176))))))

(assert (=> d!1159789 (= lt!1361723 e!2416719)))

(declare-fun c!679591 () Bool)

(assert (=> d!1159789 (= c!679591 (is-Nil!41411 prefix!426))))

(assert (=> d!1159789 (= (++!10643 prefix!426 suffix!1176) lt!1361723)))

(assert (= (and d!1159789 c!679591) b!3909236))

(assert (= (and d!1159789 (not c!679591)) b!3909237))

(assert (= (and d!1159789 res!1581155) b!3909238))

(assert (= (and b!3909238 res!1581154) b!3909239))

(declare-fun m!4472383 () Bool)

(assert (=> b!3909238 m!4472383))

(declare-fun m!4472385 () Bool)

(assert (=> b!3909238 m!4472385))

(assert (=> b!3909238 m!4472069))

(declare-fun m!4472387 () Bool)

(assert (=> b!3909237 m!4472387))

(declare-fun m!4472389 () Bool)

(assert (=> d!1159789 m!4472389))

(declare-fun m!4472391 () Bool)

(assert (=> d!1159789 m!4472391))

(declare-fun m!4472393 () Bool)

(assert (=> d!1159789 m!4472393))

(assert (=> b!3908945 d!1159789))

(declare-fun d!1159791 () Bool)

(assert (=> d!1159791 (= (inv!55589 (tag!7303 (rule!9357 (h!46832 prefixTokens!80)))) (= (mod (str.len (value!204260 (tag!7303 (rule!9357 (h!46832 prefixTokens!80))))) 2) 0))))

(assert (=> b!3908956 d!1159791))

(declare-fun d!1159793 () Bool)

(declare-fun res!1581156 () Bool)

(declare-fun e!2416721 () Bool)

(assert (=> d!1159793 (=> (not res!1581156) (not e!2416721))))

(assert (=> d!1159793 (= res!1581156 (semiInverseModEq!2764 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toValue!8887 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))))))

(assert (=> d!1159793 (= (inv!55593 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) e!2416721)))

(declare-fun b!3909240 () Bool)

(assert (=> b!3909240 (= e!2416721 (equivClasses!2663 (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toValue!8887 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))))))

(assert (= (and d!1159793 res!1581156) b!3909240))

(declare-fun m!4472395 () Bool)

(assert (=> d!1159793 m!4472395))

(declare-fun m!4472397 () Bool)

(assert (=> b!3909240 m!4472397))

(assert (=> b!3908956 d!1159793))

(declare-fun d!1159795 () Bool)

(declare-fun lt!1361724 () Int)

(assert (=> d!1159795 (>= lt!1361724 0)))

(declare-fun e!2416722 () Int)

(assert (=> d!1159795 (= lt!1361724 e!2416722)))

(declare-fun c!679592 () Bool)

(assert (=> d!1159795 (= c!679592 (is-Nil!41411 lt!1361614))))

(assert (=> d!1159795 (= (size!31096 lt!1361614) lt!1361724)))

(declare-fun b!3909241 () Bool)

(assert (=> b!3909241 (= e!2416722 0)))

(declare-fun b!3909242 () Bool)

(assert (=> b!3909242 (= e!2416722 (+ 1 (size!31096 (t!322626 lt!1361614))))))

(assert (= (and d!1159795 c!679592) b!3909241))

(assert (= (and d!1159795 (not c!679592)) b!3909242))

(declare-fun m!4472399 () Bool)

(assert (=> b!3909242 m!4472399))

(assert (=> b!3908946 d!1159795))

(declare-fun b!3909247 () Bool)

(declare-fun e!2416725 () Bool)

(declare-fun tp!1189759 () Bool)

(assert (=> b!3909247 (= e!2416725 (and tp_is_empty!19667 tp!1189759))))

(assert (=> b!3908949 (= tp!1189689 e!2416725)))

(assert (= (and b!3908949 (is-Cons!41411 (t!322626 prefix!426))) b!3909247))

(declare-fun b!3909260 () Bool)

(declare-fun e!2416728 () Bool)

(declare-fun tp!1189770 () Bool)

(assert (=> b!3909260 (= e!2416728 tp!1189770)))

(declare-fun b!3909261 () Bool)

(declare-fun tp!1189773 () Bool)

(declare-fun tp!1189774 () Bool)

(assert (=> b!3909261 (= e!2416728 (and tp!1189773 tp!1189774))))

(declare-fun b!3909259 () Bool)

(declare-fun tp!1189772 () Bool)

(declare-fun tp!1189771 () Bool)

(assert (=> b!3909259 (= e!2416728 (and tp!1189772 tp!1189771))))

(assert (=> b!3908960 (= tp!1189683 e!2416728)))

(declare-fun b!3909258 () Bool)

(assert (=> b!3909258 (= e!2416728 tp_is_empty!19667)))

(assert (= (and b!3908960 (is-ElementMatch!11348 (regex!6443 (h!46833 rules!2768)))) b!3909258))

(assert (= (and b!3908960 (is-Concat!18022 (regex!6443 (h!46833 rules!2768)))) b!3909259))

(assert (= (and b!3908960 (is-Star!11348 (regex!6443 (h!46833 rules!2768)))) b!3909260))

(assert (= (and b!3908960 (is-Union!11348 (regex!6443 (h!46833 rules!2768)))) b!3909261))

(declare-fun b!3909272 () Bool)

(declare-fun b_free!105929 () Bool)

(declare-fun b_next!106633 () Bool)

(assert (=> b!3909272 (= b_free!105929 (not b_next!106633))))

(declare-fun tb!232403 () Bool)

(declare-fun t!322664 () Bool)

(assert (=> (and b!3909272 (= (toValue!8887 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322664) tb!232403))

(declare-fun result!281720 () Bool)

(assert (= result!281720 result!281700))

(assert (=> d!1159757 t!322664))

(declare-fun b_and!297197 () Bool)

(declare-fun tp!1189785 () Bool)

(assert (=> b!3909272 (= tp!1189785 (and (=> t!322664 result!281720) b_and!297197))))

(declare-fun b_free!105931 () Bool)

(declare-fun b_next!106635 () Bool)

(assert (=> b!3909272 (= b_free!105931 (not b_next!106635))))

(declare-fun t!322666 () Bool)

(declare-fun tb!232405 () Bool)

(assert (=> (and b!3909272 (= (toChars!8746 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322666) tb!232405))

(declare-fun result!281722 () Bool)

(assert (= result!281722 result!281678))

(assert (=> b!3909052 t!322666))

(declare-fun tb!232407 () Bool)

(declare-fun t!322668 () Bool)

(assert (=> (and b!3909272 (= (toChars!8746 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322668) tb!232407))

(declare-fun result!281724 () Bool)

(assert (= result!281724 result!281686))

(assert (=> b!3909122 t!322668))

(declare-fun tb!232409 () Bool)

(declare-fun t!322670 () Bool)

(assert (=> (and b!3909272 (= (toChars!8746 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322670) tb!232409))

(declare-fun result!281726 () Bool)

(assert (= result!281726 result!281708))

(assert (=> d!1159775 t!322670))

(declare-fun b_and!297199 () Bool)

(declare-fun tp!1189783 () Bool)

(assert (=> b!3909272 (= tp!1189783 (and (=> t!322666 result!281722) (=> t!322668 result!281724) (=> t!322670 result!281726) b_and!297199))))

(declare-fun e!2416738 () Bool)

(assert (=> b!3909272 (= e!2416738 (and tp!1189785 tp!1189783))))

(declare-fun tp!1189784 () Bool)

(declare-fun e!2416737 () Bool)

(declare-fun b!3909271 () Bool)

(assert (=> b!3909271 (= e!2416737 (and tp!1189784 (inv!55589 (tag!7303 (h!46833 (t!322628 rules!2768)))) (inv!55593 (transformation!6443 (h!46833 (t!322628 rules!2768)))) e!2416738))))

(declare-fun b!3909270 () Bool)

(declare-fun e!2416739 () Bool)

(declare-fun tp!1189786 () Bool)

(assert (=> b!3909270 (= e!2416739 (and e!2416737 tp!1189786))))

(assert (=> b!3908937 (= tp!1189693 e!2416739)))

(assert (= b!3909271 b!3909272))

(assert (= b!3909270 b!3909271))

(assert (= (and b!3908937 (is-Cons!41413 (t!322628 rules!2768))) b!3909270))

(declare-fun m!4472401 () Bool)

(assert (=> b!3909271 m!4472401))

(declare-fun m!4472403 () Bool)

(assert (=> b!3909271 m!4472403))

(declare-fun b!3909275 () Bool)

(declare-fun e!2416741 () Bool)

(declare-fun tp!1189787 () Bool)

(assert (=> b!3909275 (= e!2416741 (and tp_is_empty!19667 tp!1189787))))

(assert (=> b!3908948 (= tp!1189696 e!2416741)))

(assert (= (and b!3908948 (is-Cons!41411 (t!322626 suffixResult!91))) b!3909275))

(declare-fun b!3909291 () Bool)

(declare-fun b_free!105933 () Bool)

(declare-fun b_next!106637 () Bool)

(assert (=> b!3909291 (= b_free!105933 (not b_next!106637))))

(declare-fun tb!232411 () Bool)

(declare-fun t!322672 () Bool)

(assert (=> (and b!3909291 (= (toValue!8887 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322672) tb!232411))

(declare-fun result!281730 () Bool)

(assert (= result!281730 result!281700))

(assert (=> d!1159757 t!322672))

(declare-fun tp!1189802 () Bool)

(declare-fun b_and!297201 () Bool)

(assert (=> b!3909291 (= tp!1189802 (and (=> t!322672 result!281730) b_and!297201))))

(declare-fun b_free!105935 () Bool)

(declare-fun b_next!106639 () Bool)

(assert (=> b!3909291 (= b_free!105935 (not b_next!106639))))

(declare-fun t!322674 () Bool)

(declare-fun tb!232413 () Bool)

(assert (=> (and b!3909291 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322674) tb!232413))

(declare-fun result!281732 () Bool)

(assert (= result!281732 result!281678))

(assert (=> b!3909052 t!322674))

(declare-fun t!322676 () Bool)

(declare-fun tb!232415 () Bool)

(assert (=> (and b!3909291 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322676) tb!232415))

(declare-fun result!281734 () Bool)

(assert (= result!281734 result!281686))

(assert (=> b!3909122 t!322676))

(declare-fun t!322678 () Bool)

(declare-fun tb!232417 () Bool)

(assert (=> (and b!3909291 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322678) tb!232417))

(declare-fun result!281736 () Bool)

(assert (= result!281736 result!281708))

(assert (=> d!1159775 t!322678))

(declare-fun tp!1189798 () Bool)

(declare-fun b_and!297203 () Bool)

(assert (=> b!3909291 (= tp!1189798 (and (=> t!322674 result!281732) (=> t!322676 result!281734) (=> t!322678 result!281736) b_and!297203))))

(declare-fun e!2416761 () Bool)

(assert (=> b!3908938 (= tp!1189688 e!2416761)))

(declare-fun e!2416758 () Bool)

(declare-fun e!2416760 () Bool)

(declare-fun b!3909290 () Bool)

(declare-fun tp!1189799 () Bool)

(assert (=> b!3909290 (= e!2416758 (and tp!1189799 (inv!55589 (tag!7303 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (inv!55593 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) e!2416760))))

(declare-fun tp!1189801 () Bool)

(declare-fun e!2416757 () Bool)

(declare-fun b!3909288 () Bool)

(assert (=> b!3909288 (= e!2416761 (and (inv!55592 (h!46832 (t!322627 suffixTokens!72))) e!2416757 tp!1189801))))

(declare-fun tp!1189800 () Bool)

(declare-fun b!3909289 () Bool)

(assert (=> b!3909289 (= e!2416757 (and (inv!21 (value!204261 (h!46832 (t!322627 suffixTokens!72)))) e!2416758 tp!1189800))))

(assert (=> b!3909291 (= e!2416760 (and tp!1189802 tp!1189798))))

(assert (= b!3909290 b!3909291))

(assert (= b!3909289 b!3909290))

(assert (= b!3909288 b!3909289))

(assert (= (and b!3908938 (is-Cons!41412 (t!322627 suffixTokens!72))) b!3909288))

(declare-fun m!4472405 () Bool)

(assert (=> b!3909290 m!4472405))

(declare-fun m!4472407 () Bool)

(assert (=> b!3909290 m!4472407))

(declare-fun m!4472409 () Bool)

(assert (=> b!3909288 m!4472409))

(declare-fun m!4472411 () Bool)

(assert (=> b!3909289 m!4472411))

(declare-fun b!3909306 () Bool)

(declare-fun e!2416766 () Bool)

(declare-fun tp!1189803 () Bool)

(assert (=> b!3909306 (= e!2416766 (and tp_is_empty!19667 tp!1189803))))

(assert (=> b!3908942 (= tp!1189685 e!2416766)))

(assert (= (and b!3908942 (is-Cons!41411 (originalCharacters!7043 (h!46832 suffixTokens!72)))) b!3909306))

(declare-fun b!3909307 () Bool)

(declare-fun e!2416767 () Bool)

(declare-fun tp!1189804 () Bool)

(assert (=> b!3909307 (= e!2416767 (and tp_is_empty!19667 tp!1189804))))

(assert (=> b!3908961 (= tp!1189697 e!2416767)))

(assert (= (and b!3908961 (is-Cons!41411 (originalCharacters!7043 (h!46832 prefixTokens!80)))) b!3909307))

(declare-fun b!3909311 () Bool)

(declare-fun b_free!105937 () Bool)

(declare-fun b_next!106641 () Bool)

(assert (=> b!3909311 (= b_free!105937 (not b_next!106641))))

(declare-fun tb!232419 () Bool)

(declare-fun t!322680 () Bool)

(assert (=> (and b!3909311 (= (toValue!8887 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toValue!8887 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322680) tb!232419))

(declare-fun result!281738 () Bool)

(assert (= result!281738 result!281700))

(assert (=> d!1159757 t!322680))

(declare-fun tp!1189809 () Bool)

(declare-fun b_and!297205 () Bool)

(assert (=> b!3909311 (= tp!1189809 (and (=> t!322680 result!281738) b_and!297205))))

(declare-fun b_free!105939 () Bool)

(declare-fun b_next!106643 () Bool)

(assert (=> b!3909311 (= b_free!105939 (not b_next!106643))))

(declare-fun tb!232421 () Bool)

(declare-fun t!322682 () Bool)

(assert (=> (and b!3909311 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72))))) t!322682) tb!232421))

(declare-fun result!281740 () Bool)

(assert (= result!281740 result!281678))

(assert (=> b!3909052 t!322682))

(declare-fun t!322684 () Bool)

(declare-fun tb!232423 () Bool)

(assert (=> (and b!3909311 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80))))) t!322684) tb!232423))

(declare-fun result!281742 () Bool)

(assert (= result!281742 result!281686))

(assert (=> b!3909122 t!322684))

(declare-fun t!322686 () Bool)

(declare-fun tb!232425 () Bool)

(assert (=> (and b!3909311 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toChars!8746 (transformation!6443 (rule!9357 (_1!23464 (v!39184 lt!1361609)))))) t!322686) tb!232425))

(declare-fun result!281744 () Bool)

(assert (= result!281744 result!281708))

(assert (=> d!1159775 t!322686))

(declare-fun tp!1189805 () Bool)

(declare-fun b_and!297207 () Bool)

(assert (=> b!3909311 (= tp!1189805 (and (=> t!322682 result!281740) (=> t!322684 result!281742) (=> t!322686 result!281744) b_and!297207))))

(declare-fun e!2416773 () Bool)

(assert (=> b!3908944 (= tp!1189682 e!2416773)))

(declare-fun e!2416770 () Bool)

(declare-fun b!3909310 () Bool)

(declare-fun tp!1189806 () Bool)

(declare-fun e!2416772 () Bool)

(assert (=> b!3909310 (= e!2416770 (and tp!1189806 (inv!55589 (tag!7303 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (inv!55593 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) e!2416772))))

(declare-fun b!3909308 () Bool)

(declare-fun tp!1189808 () Bool)

(declare-fun e!2416769 () Bool)

(assert (=> b!3909308 (= e!2416773 (and (inv!55592 (h!46832 (t!322627 prefixTokens!80))) e!2416769 tp!1189808))))

(declare-fun b!3909309 () Bool)

(declare-fun tp!1189807 () Bool)

(assert (=> b!3909309 (= e!2416769 (and (inv!21 (value!204261 (h!46832 (t!322627 prefixTokens!80)))) e!2416770 tp!1189807))))

(assert (=> b!3909311 (= e!2416772 (and tp!1189809 tp!1189805))))

(assert (= b!3909310 b!3909311))

(assert (= b!3909309 b!3909310))

(assert (= b!3909308 b!3909309))

(assert (= (and b!3908944 (is-Cons!41412 (t!322627 prefixTokens!80))) b!3909308))

(declare-fun m!4472413 () Bool)

(assert (=> b!3909310 m!4472413))

(declare-fun m!4472415 () Bool)

(assert (=> b!3909310 m!4472415))

(declare-fun m!4472417 () Bool)

(assert (=> b!3909308 m!4472417))

(declare-fun m!4472419 () Bool)

(assert (=> b!3909309 m!4472419))

(declare-fun b!3909312 () Bool)

(declare-fun e!2416774 () Bool)

(declare-fun tp!1189810 () Bool)

(assert (=> b!3909312 (= e!2416774 (and tp_is_empty!19667 tp!1189810))))

(assert (=> b!3908954 (= tp!1189681 e!2416774)))

(assert (= (and b!3908954 (is-Cons!41411 (t!322626 suffix!1176))) b!3909312))

(declare-fun b!3909315 () Bool)

(declare-fun e!2416775 () Bool)

(declare-fun tp!1189811 () Bool)

(assert (=> b!3909315 (= e!2416775 tp!1189811)))

(declare-fun b!3909316 () Bool)

(declare-fun tp!1189814 () Bool)

(declare-fun tp!1189815 () Bool)

(assert (=> b!3909316 (= e!2416775 (and tp!1189814 tp!1189815))))

(declare-fun b!3909314 () Bool)

(declare-fun tp!1189813 () Bool)

(declare-fun tp!1189812 () Bool)

(assert (=> b!3909314 (= e!2416775 (and tp!1189813 tp!1189812))))

(assert (=> b!3908947 (= tp!1189690 e!2416775)))

(declare-fun b!3909313 () Bool)

(assert (=> b!3909313 (= e!2416775 tp_is_empty!19667)))

(assert (= (and b!3908947 (is-ElementMatch!11348 (regex!6443 (rule!9357 (h!46832 suffixTokens!72))))) b!3909313))

(assert (= (and b!3908947 (is-Concat!18022 (regex!6443 (rule!9357 (h!46832 suffixTokens!72))))) b!3909314))

(assert (= (and b!3908947 (is-Star!11348 (regex!6443 (rule!9357 (h!46832 suffixTokens!72))))) b!3909315))

(assert (= (and b!3908947 (is-Union!11348 (regex!6443 (rule!9357 (h!46832 suffixTokens!72))))) b!3909316))

(declare-fun b!3909319 () Bool)

(declare-fun e!2416776 () Bool)

(declare-fun tp!1189816 () Bool)

(assert (=> b!3909319 (= e!2416776 tp!1189816)))

(declare-fun b!3909320 () Bool)

(declare-fun tp!1189819 () Bool)

(declare-fun tp!1189820 () Bool)

(assert (=> b!3909320 (= e!2416776 (and tp!1189819 tp!1189820))))

(declare-fun b!3909318 () Bool)

(declare-fun tp!1189818 () Bool)

(declare-fun tp!1189817 () Bool)

(assert (=> b!3909318 (= e!2416776 (and tp!1189818 tp!1189817))))

(assert (=> b!3908956 (= tp!1189695 e!2416776)))

(declare-fun b!3909317 () Bool)

(assert (=> b!3909317 (= e!2416776 tp_is_empty!19667)))

(assert (= (and b!3908956 (is-ElementMatch!11348 (regex!6443 (rule!9357 (h!46832 prefixTokens!80))))) b!3909317))

(assert (= (and b!3908956 (is-Concat!18022 (regex!6443 (rule!9357 (h!46832 prefixTokens!80))))) b!3909318))

(assert (= (and b!3908956 (is-Star!11348 (regex!6443 (rule!9357 (h!46832 prefixTokens!80))))) b!3909319))

(assert (= (and b!3908956 (is-Union!11348 (regex!6443 (rule!9357 (h!46832 prefixTokens!80))))) b!3909320))

(declare-fun b_lambda!114437 () Bool)

(assert (= b_lambda!114429 (or (and b!3909272 b_free!105931 (= (toChars!8746 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))))) (and b!3908939 b_free!105915 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))))) (and b!3908951 b_free!105907) (and b!3908953 b_free!105911 (= (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))))) (and b!3909291 b_free!105935 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))))) (and b!3909311 b_free!105939 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))))) b_lambda!114437)))

(declare-fun b_lambda!114439 () Bool)

(assert (= b_lambda!114427 (or (and b!3908939 b_free!105915) (and b!3908951 b_free!105907 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 prefixTokens!80)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))))) (and b!3909272 b_free!105931 (= (toChars!8746 (transformation!6443 (h!46833 (t!322628 rules!2768)))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))))) (and b!3908953 b_free!105911 (= (toChars!8746 (transformation!6443 (h!46833 rules!2768))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))))) (and b!3909311 b_free!105939 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 prefixTokens!80))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))))) (and b!3909291 b_free!105935 (= (toChars!8746 (transformation!6443 (rule!9357 (h!46832 (t!322627 suffixTokens!72))))) (toChars!8746 (transformation!6443 (rule!9357 (h!46832 suffixTokens!72)))))) b_lambda!114439)))

(push 1)

(assert (not b!3909087))

(assert (not b!3909212))

(assert (not d!1159729))

(assert b_and!297207)

(assert (not b!3909314))

(assert (not b!3909085))

(assert (not b!3909115))

(assert (not b!3909315))

(assert (not b!3909180))

(assert (not b!3909237))

(assert (not b_next!106633))

(assert (not b!3909161))

(assert (not d!1159767))

(assert (not b!3909310))

(assert (not b!3909261))

(assert b_and!297197)

(assert (not b!3909309))

(assert (not b!3909058))

(assert (not d!1159761))

(assert (not d!1159785))

(assert (not b_lambda!114437))

(assert (not b!3909271))

(assert (not b!3909177))

(assert (not b!3909165))

(assert (not d!1159765))

(assert (not b!3909242))

(assert (not b!3909164))

(assert (not b!3909124))

(assert (not d!1159751))

(assert (not b!3909162))

(assert (not b_next!106615))

(assert (not b!3909196))

(assert (not b!3909307))

(assert b_and!297199)

(assert (not b!3909228))

(assert (not b!3909210))

(assert (not b!3909223))

(assert (not b!3909316))

(assert (not b!3909320))

(assert (not d!1159775))

(assert (not b!3909259))

(assert (not b_next!106635))

(assert (not b_next!106637))

(assert (not b!3909247))

(assert (not b_next!106617))

(assert (not b!3909068))

(assert (not b!3909208))

(assert (not b!3909224))

(assert (not b!3909123))

(assert (not b!3909080))

(assert (not tb!232391))

(assert (not d!1159755))

(assert b_and!297201)

(assert (not b!3909226))

(assert (not d!1159793))

(assert (not d!1159721))

(assert (not b!3909233))

(assert (not b_next!106641))

(assert (not b_lambda!114433))

(assert (not b!3909288))

(assert (not d!1159753))

(assert (not b_next!106643))

(assert (not b!3909289))

(assert (not b!3909052))

(assert (not b!3909234))

(assert (not b!3909312))

(assert (not d!1159771))

(assert b_and!297205)

(assert (not b!3909176))

(assert (not b!3909118))

(assert (not b_lambda!114439))

(assert (not b!3909185))

(assert (not b!3909064))

(assert b_and!297203)

(assert (not b!3909270))

(assert b_and!297193)

(assert (not d!1159759))

(assert (not bm!284258))

(assert (not tb!232379))

(assert (not b!3909238))

(assert (not d!1159731))

(assert (not b!3909082))

(assert b_and!297191)

(assert (not b!3909318))

(assert b_and!297189)

(assert (not d!1159763))

(assert (not b!3909231))

(assert (not b!3909047))

(assert (not b!3909114))

(assert (not tb!232373))

(assert (not d!1159703))

(assert (not b!3909240))

(assert (not b!3909160))

(assert (not b!3909290))

(assert (not b_next!106639))

(assert (not b_next!106609))

(assert (not b!3909122))

(assert (not b_next!106611))

(assert (not b!3909159))

(assert (not b!3909275))

(assert (not b!3909121))

(assert (not b!3909260))

(assert (not b!3909167))

(assert b_and!297195)

(assert (not b!3909209))

(assert (not b!3909319))

(assert tp_is_empty!19667)

(assert (not b_next!106613))

(assert (not b!3909084))

(assert (not b_lambda!114435))

(assert b_and!297185)

(assert (not d!1159707))

(assert (not d!1159787))

(assert (not b_next!106619))

(assert (not b!3909213))

(assert (not d!1159749))

(assert (not b!3909172))

(assert b_and!297187)

(assert (not d!1159781))

(assert (not b!3909066))

(assert (not b!3909227))

(assert (not b!3909079))

(assert (not d!1159733))

(assert (not d!1159777))

(assert (not d!1159789))

(assert (not b!3909166))

(assert (not b!3909308))

(assert (not b!3909053))

(assert (not tb!232397))

(assert (not b!3909306))

(assert (not b!3909197))

(check-sat)

(pop 1)

(push 1)

(assert b_and!297207)

(assert (not b_next!106633))

(assert b_and!297197)

(assert (not b_next!106615))

(assert b_and!297199)

(assert (not b_next!106635))

(assert (not b_next!106643))

(assert b_and!297205)

(assert b_and!297191)

(assert b_and!297189)

(assert (not b_next!106639))

(assert b_and!297195)

(assert (not b_next!106619))

(assert b_and!297187)

(assert (not b_next!106637))

(assert (not b_next!106617))

(assert (not b_next!106641))

(assert b_and!297201)

(assert b_and!297203)

(assert b_and!297193)

(assert (not b_next!106609))

(assert (not b_next!106611))

(assert (not b_next!106613))

(assert b_and!297185)

(check-sat)

(pop 1)

