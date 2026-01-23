; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367364 () Bool)

(assert start!367364)

(declare-fun b!3918681 () Bool)

(declare-fun b_free!106469 () Bool)

(declare-fun b_next!107173 () Bool)

(assert (=> b!3918681 (= b_free!106469 (not b_next!107173))))

(declare-fun tp!1192735 () Bool)

(declare-fun b_and!298571 () Bool)

(assert (=> b!3918681 (= tp!1192735 b_and!298571)))

(declare-fun b_free!106471 () Bool)

(declare-fun b_next!107175 () Bool)

(assert (=> b!3918681 (= b_free!106471 (not b_next!107175))))

(declare-fun tp!1192730 () Bool)

(declare-fun b_and!298573 () Bool)

(assert (=> b!3918681 (= tp!1192730 b_and!298573)))

(declare-fun b!3918664 () Bool)

(declare-fun b_free!106473 () Bool)

(declare-fun b_next!107177 () Bool)

(assert (=> b!3918664 (= b_free!106473 (not b_next!107177))))

(declare-fun tp!1192731 () Bool)

(declare-fun b_and!298575 () Bool)

(assert (=> b!3918664 (= tp!1192731 b_and!298575)))

(declare-fun b_free!106475 () Bool)

(declare-fun b_next!107179 () Bool)

(assert (=> b!3918664 (= b_free!106475 (not b_next!107179))))

(declare-fun tp!1192738 () Bool)

(declare-fun b_and!298577 () Bool)

(assert (=> b!3918664 (= tp!1192738 b_and!298577)))

(declare-fun b!3918694 () Bool)

(declare-fun b_free!106477 () Bool)

(declare-fun b_next!107181 () Bool)

(assert (=> b!3918694 (= b_free!106477 (not b_next!107181))))

(declare-fun tp!1192723 () Bool)

(declare-fun b_and!298579 () Bool)

(assert (=> b!3918694 (= tp!1192723 b_and!298579)))

(declare-fun b_free!106479 () Bool)

(declare-fun b_next!107183 () Bool)

(assert (=> b!3918694 (= b_free!106479 (not b_next!107183))))

(declare-fun tp!1192728 () Bool)

(declare-fun b_and!298581 () Bool)

(assert (=> b!3918694 (= tp!1192728 b_and!298581)))

(declare-fun b!3918663 () Bool)

(declare-fun e!2422940 () Bool)

(declare-fun e!2422923 () Bool)

(assert (=> b!3918663 (= e!2422940 e!2422923)))

(declare-fun res!1585114 () Bool)

(assert (=> b!3918663 (=> res!1585114 e!2422923)))

(declare-fun lt!1365456 () Int)

(declare-fun lt!1365452 () Int)

(declare-fun lt!1365457 () Int)

(assert (=> b!3918663 (= res!1585114 (not (= (+ lt!1365457 lt!1365452) lt!1365456)))))

(declare-datatypes ((C!22932 0))(
  ( (C!22933 (val!13560 Int)) )
))
(declare-datatypes ((List!41651 0))(
  ( (Nil!41527) (Cons!41527 (h!46947 C!22932) (t!324282 List!41651)) )
))
(declare-fun lt!1365447 () List!41651)

(declare-fun size!31181 (List!41651) Int)

(assert (=> b!3918663 (= lt!1365456 (size!31181 lt!1365447))))

(declare-fun e!2422942 () Bool)

(assert (=> b!3918664 (= e!2422942 (and tp!1192731 tp!1192738))))

(declare-fun e!2422914 () Bool)

(declare-fun b!3918665 () Bool)

(declare-datatypes ((List!41652 0))(
  ( (Nil!41528) (Cons!41528 (h!46948 (_ BitVec 16)) (t!324283 List!41652)) )
))
(declare-datatypes ((TokenValue!6698 0))(
  ( (FloatLiteralValue!13396 (text!47331 List!41652)) (TokenValueExt!6697 (__x!25613 Int)) (Broken!33490 (value!204946 List!41652)) (Object!6821) (End!6698) (Def!6698) (Underscore!6698) (Match!6698) (Else!6698) (Error!6698) (Case!6698) (If!6698) (Extends!6698) (Abstract!6698) (Class!6698) (Val!6698) (DelimiterValue!13396 (del!6758 List!41652)) (KeywordValue!6704 (value!204947 List!41652)) (CommentValue!13396 (value!204948 List!41652)) (WhitespaceValue!13396 (value!204949 List!41652)) (IndentationValue!6698 (value!204950 List!41652)) (String!47207) (Int32!6698) (Broken!33491 (value!204951 List!41652)) (Boolean!6699) (Unit!59664) (OperatorValue!6701 (op!6758 List!41652)) (IdentifierValue!13396 (value!204952 List!41652)) (IdentifierValue!13397 (value!204953 List!41652)) (WhitespaceValue!13397 (value!204954 List!41652)) (True!13396) (False!13396) (Broken!33492 (value!204955 List!41652)) (Broken!33493 (value!204956 List!41652)) (True!13397) (RightBrace!6698) (RightBracket!6698) (Colon!6698) (Null!6698) (Comma!6698) (LeftBracket!6698) (False!13397) (LeftBrace!6698) (ImaginaryLiteralValue!6698 (text!47332 List!41652)) (StringLiteralValue!20094 (value!204957 List!41652)) (EOFValue!6698 (value!204958 List!41652)) (IdentValue!6698 (value!204959 List!41652)) (DelimiterValue!13397 (value!204960 List!41652)) (DedentValue!6698 (value!204961 List!41652)) (NewLineValue!6698 (value!204962 List!41652)) (IntegerValue!20094 (value!204963 (_ BitVec 32)) (text!47333 List!41652)) (IntegerValue!20095 (value!204964 Int) (text!47334 List!41652)) (Times!6698) (Or!6698) (Equal!6698) (Minus!6698) (Broken!33494 (value!204965 List!41652)) (And!6698) (Div!6698) (LessEqual!6698) (Mod!6698) (Concat!18071) (Not!6698) (Plus!6698) (SpaceValue!6698 (value!204966 List!41652)) (IntegerValue!20096 (value!204967 Int) (text!47335 List!41652)) (StringLiteralValue!20095 (text!47336 List!41652)) (FloatLiteralValue!13397 (text!47337 List!41652)) (BytesLiteralValue!6698 (value!204968 List!41652)) (CommentValue!13397 (value!204969 List!41652)) (StringLiteralValue!20096 (value!204970 List!41652)) (ErrorTokenValue!6698 (msg!6759 List!41652)) )
))
(declare-datatypes ((Regex!11373 0))(
  ( (ElementMatch!11373 (c!681074 C!22932)) (Concat!18072 (regOne!23258 Regex!11373) (regTwo!23258 Regex!11373)) (EmptyExpr!11373) (Star!11373 (reg!11702 Regex!11373)) (EmptyLang!11373) (Union!11373 (regOne!23259 Regex!11373) (regTwo!23259 Regex!11373)) )
))
(declare-datatypes ((String!47208 0))(
  ( (String!47209 (value!204971 String)) )
))
(declare-datatypes ((IArray!25363 0))(
  ( (IArray!25364 (innerList!12739 List!41651)) )
))
(declare-datatypes ((Conc!12679 0))(
  ( (Node!12679 (left!31763 Conc!12679) (right!32093 Conc!12679) (csize!25588 Int) (cheight!12890 Int)) (Leaf!19620 (xs!15985 IArray!25363) (csize!25589 Int)) (Empty!12679) )
))
(declare-datatypes ((BalanceConc!24952 0))(
  ( (BalanceConc!24953 (c!681075 Conc!12679)) )
))
(declare-datatypes ((TokenValueInjection!12824 0))(
  ( (TokenValueInjection!12825 (toValue!8920 Int) (toChars!8779 Int)) )
))
(declare-datatypes ((Rule!12736 0))(
  ( (Rule!12737 (regex!6468 Regex!11373) (tag!7328 String!47208) (isSeparator!6468 Bool) (transformation!6468 TokenValueInjection!12824)) )
))
(declare-datatypes ((Token!12074 0))(
  ( (Token!12075 (value!204972 TokenValue!6698) (rule!9396 Rule!12736) (size!31182 Int) (originalCharacters!7068 List!41651)) )
))
(declare-datatypes ((List!41653 0))(
  ( (Nil!41529) (Cons!41529 (h!46949 Token!12074) (t!324284 List!41653)) )
))
(declare-fun suffixTokens!72 () List!41653)

(declare-fun e!2422935 () Bool)

(declare-fun tp!1192734 () Bool)

(declare-fun inv!21 (TokenValue!6698) Bool)

(assert (=> b!3918665 (= e!2422914 (and (inv!21 (value!204972 (h!46949 suffixTokens!72))) e!2422935 tp!1192734))))

(declare-fun e!2422937 () Bool)

(declare-fun b!3918666 () Bool)

(declare-fun tp!1192726 () Bool)

(declare-fun inv!55723 (String!47208) Bool)

(declare-fun inv!55726 (TokenValueInjection!12824) Bool)

(assert (=> b!3918666 (= e!2422935 (and tp!1192726 (inv!55723 (tag!7328 (rule!9396 (h!46949 suffixTokens!72)))) (inv!55726 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) e!2422937))))

(declare-fun b!3918667 () Bool)

(declare-fun res!1585099 () Bool)

(declare-fun e!2422920 () Bool)

(assert (=> b!3918667 (=> res!1585099 e!2422920)))

(declare-datatypes ((tuple2!40786 0))(
  ( (tuple2!40787 (_1!23527 Token!12074) (_2!23527 List!41651)) )
))
(declare-fun lt!1365437 () tuple2!40786)

(declare-fun lt!1365440 () Int)

(assert (=> b!3918667 (= res!1585099 (>= (size!31181 (_2!23527 lt!1365437)) lt!1365440))))

(declare-fun b!3918668 () Bool)

(declare-fun res!1585112 () Bool)

(declare-fun e!2422915 () Bool)

(assert (=> b!3918668 (=> (not res!1585112) (not e!2422915))))

(declare-datatypes ((LexerInterface!6057 0))(
  ( (LexerInterfaceExt!6054 (__x!25614 Int)) (Lexer!6055) )
))
(declare-fun thiss!20629 () LexerInterface!6057)

(declare-datatypes ((List!41654 0))(
  ( (Nil!41530) (Cons!41530 (h!46950 Rule!12736) (t!324285 List!41654)) )
))
(declare-fun rules!2768 () List!41654)

(declare-fun rulesInvariant!5400 (LexerInterface!6057 List!41654) Bool)

(assert (=> b!3918668 (= res!1585112 (rulesInvariant!5400 thiss!20629 rules!2768))))

(declare-fun b!3918669 () Bool)

(declare-fun tp!1192724 () Bool)

(declare-fun e!2422922 () Bool)

(declare-fun inv!55727 (Token!12074) Bool)

(assert (=> b!3918669 (= e!2422922 (and (inv!55727 (h!46949 suffixTokens!72)) e!2422914 tp!1192724))))

(declare-fun res!1585111 () Bool)

(assert (=> start!367364 (=> (not res!1585111) (not e!2422915))))

(get-info :version)

(assert (=> start!367364 (= res!1585111 ((_ is Lexer!6055) thiss!20629))))

(assert (=> start!367364 e!2422915))

(declare-fun e!2422925 () Bool)

(assert (=> start!367364 e!2422925))

(assert (=> start!367364 true))

(declare-fun e!2422921 () Bool)

(assert (=> start!367364 e!2422921))

(declare-fun e!2422938 () Bool)

(assert (=> start!367364 e!2422938))

(declare-fun e!2422924 () Bool)

(assert (=> start!367364 e!2422924))

(assert (=> start!367364 e!2422922))

(declare-fun e!2422936 () Bool)

(assert (=> start!367364 e!2422936))

(declare-fun b!3918670 () Bool)

(declare-fun res!1585107 () Bool)

(assert (=> b!3918670 (=> (not res!1585107) (not e!2422915))))

(declare-fun prefixTokens!80 () List!41653)

(declare-fun isEmpty!24718 (List!41653) Bool)

(assert (=> b!3918670 (= res!1585107 (not (isEmpty!24718 prefixTokens!80)))))

(declare-fun b!3918671 () Bool)

(declare-fun e!2422927 () Bool)

(declare-fun tp!1192736 () Bool)

(assert (=> b!3918671 (= e!2422924 (and (inv!55727 (h!46949 prefixTokens!80)) e!2422927 tp!1192736))))

(declare-fun b!3918672 () Bool)

(declare-fun e!2422941 () Bool)

(assert (=> b!3918672 (= e!2422920 e!2422941)))

(declare-fun res!1585103 () Bool)

(assert (=> b!3918672 (=> res!1585103 e!2422941)))

(declare-fun lt!1365443 () List!41653)

(assert (=> b!3918672 (= res!1585103 (isEmpty!24718 lt!1365443))))

(declare-fun tail!6003 (List!41653) List!41653)

(assert (=> b!3918672 (= lt!1365443 (tail!6003 prefixTokens!80))))

(declare-fun b!3918673 () Bool)

(declare-fun e!2422916 () Bool)

(declare-datatypes ((Option!8888 0))(
  ( (None!8887) (Some!8887 (v!39213 tuple2!40786)) )
))
(declare-fun lt!1365439 () Option!8888)

(assert (=> b!3918673 (= e!2422916 (= (size!31182 (_1!23527 (v!39213 lt!1365439))) (size!31181 (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439))))))))

(declare-fun b!3918674 () Bool)

(declare-fun res!1585105 () Bool)

(declare-fun e!2422939 () Bool)

(assert (=> b!3918674 (=> res!1585105 e!2422939)))

(declare-fun suffix!1176 () List!41651)

(declare-datatypes ((tuple2!40788 0))(
  ( (tuple2!40789 (_1!23528 List!41653) (_2!23528 List!41651)) )
))
(declare-fun lt!1365451 () tuple2!40788)

(assert (=> b!3918674 (= res!1585105 (or (not (= lt!1365451 (tuple2!40789 (_1!23528 lt!1365451) (_2!23528 lt!1365451)))) (= (_2!23527 (v!39213 lt!1365439)) suffix!1176)))))

(declare-fun b!3918675 () Bool)

(declare-fun e!2422918 () Bool)

(declare-fun tp!1192737 () Bool)

(assert (=> b!3918675 (= e!2422927 (and (inv!21 (value!204972 (h!46949 prefixTokens!80))) e!2422918 tp!1192737))))

(declare-fun b!3918676 () Bool)

(declare-fun tp_is_empty!19717 () Bool)

(declare-fun tp!1192732 () Bool)

(assert (=> b!3918676 (= e!2422925 (and tp_is_empty!19717 tp!1192732))))

(declare-fun b!3918677 () Bool)

(assert (=> b!3918677 (= e!2422939 e!2422940)))

(declare-fun res!1585097 () Bool)

(assert (=> b!3918677 (=> res!1585097 e!2422940)))

(assert (=> b!3918677 (= res!1585097 (>= lt!1365452 lt!1365440))))

(assert (=> b!3918677 (= lt!1365440 (size!31181 suffix!1176))))

(assert (=> b!3918677 (= lt!1365452 (size!31181 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun b!3918678 () Bool)

(declare-fun e!2422933 () Bool)

(declare-fun tp!1192727 () Bool)

(assert (=> b!3918678 (= e!2422938 (and e!2422933 tp!1192727))))

(declare-fun b!3918679 () Bool)

(declare-fun res!1585106 () Bool)

(assert (=> b!3918679 (=> res!1585106 e!2422941)))

(declare-fun lt!1365455 () Token!12074)

(assert (=> b!3918679 (= res!1585106 (not (= (_1!23527 (v!39213 lt!1365439)) lt!1365455)))))

(declare-fun b!3918680 () Bool)

(declare-fun res!1585113 () Bool)

(assert (=> b!3918680 (=> res!1585113 e!2422939)))

(declare-fun lt!1365448 () tuple2!40788)

(declare-fun ++!10693 (List!41653 List!41653) List!41653)

(assert (=> b!3918680 (= res!1585113 (not (= lt!1365448 (tuple2!40789 (++!10693 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529) (_1!23528 lt!1365451)) (_2!23528 lt!1365451)))))))

(declare-fun e!2422934 () Bool)

(assert (=> b!3918681 (= e!2422934 (and tp!1192735 tp!1192730))))

(declare-fun b!3918682 () Bool)

(declare-fun e!2422928 () Bool)

(declare-fun e!2422917 () Bool)

(assert (=> b!3918682 (= e!2422928 e!2422917)))

(declare-fun res!1585109 () Bool)

(assert (=> b!3918682 (=> (not res!1585109) (not e!2422917))))

(assert (=> b!3918682 (= res!1585109 ((_ is Some!8887) lt!1365439))))

(declare-fun maxPrefix!3361 (LexerInterface!6057 List!41654 List!41651) Option!8888)

(assert (=> b!3918682 (= lt!1365439 (maxPrefix!3361 thiss!20629 rules!2768 lt!1365447))))

(declare-fun b!3918683 () Bool)

(assert (=> b!3918683 (= e!2422915 e!2422928)))

(declare-fun res!1585101 () Bool)

(assert (=> b!3918683 (=> (not res!1585101) (not e!2422928))))

(declare-fun suffixResult!91 () List!41651)

(declare-fun lt!1365438 () List!41653)

(assert (=> b!3918683 (= res!1585101 (= lt!1365448 (tuple2!40789 lt!1365438 suffixResult!91)))))

(declare-fun lexList!1825 (LexerInterface!6057 List!41654 List!41651) tuple2!40788)

(assert (=> b!3918683 (= lt!1365448 (lexList!1825 thiss!20629 rules!2768 lt!1365447))))

(assert (=> b!3918683 (= lt!1365438 (++!10693 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41651)

(declare-fun ++!10694 (List!41651 List!41651) List!41651)

(assert (=> b!3918683 (= lt!1365447 (++!10694 prefix!426 suffix!1176))))

(declare-fun b!3918684 () Bool)

(declare-fun res!1585115 () Bool)

(assert (=> b!3918684 (=> (not res!1585115) (not e!2422915))))

(declare-fun isEmpty!24719 (List!41654) Bool)

(assert (=> b!3918684 (= res!1585115 (not (isEmpty!24719 rules!2768)))))

(declare-fun b!3918685 () Bool)

(declare-fun e!2422926 () Bool)

(declare-fun e!2422929 () Bool)

(assert (=> b!3918685 (= e!2422926 e!2422929)))

(declare-fun res!1585098 () Bool)

(assert (=> b!3918685 (=> res!1585098 e!2422929)))

(declare-fun lt!1365450 () List!41651)

(declare-fun matchR!5462 (Regex!11373 List!41651) Bool)

(assert (=> b!3918685 (= res!1585098 (not (matchR!5462 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) lt!1365450)))))

(declare-fun lt!1365436 () TokenValue!6698)

(declare-fun maxPrefixOneRule!2431 (LexerInterface!6057 Rule!12736 List!41651) Option!8888)

(assert (=> b!3918685 (= (maxPrefixOneRule!2431 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) lt!1365447) (Some!8887 (tuple2!40787 (Token!12075 lt!1365436 (rule!9396 (_1!23527 (v!39213 lt!1365439))) lt!1365457 lt!1365450) (_2!23527 (v!39213 lt!1365439)))))))

(declare-datatypes ((Unit!59665 0))(
  ( (Unit!59666) )
))
(declare-fun lt!1365444 () Unit!59665)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1299 (LexerInterface!6057 List!41654 List!41651 List!41651 List!41651 Rule!12736) Unit!59665)

(assert (=> b!3918685 (= lt!1365444 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1299 thiss!20629 rules!2768 lt!1365450 lt!1365447 (_2!23527 (v!39213 lt!1365439)) (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))

(declare-fun b!3918686 () Bool)

(declare-fun tp!1192729 () Bool)

(assert (=> b!3918686 (= e!2422918 (and tp!1192729 (inv!55723 (tag!7328 (rule!9396 (h!46949 prefixTokens!80)))) (inv!55726 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) e!2422942))))

(declare-fun b!3918687 () Bool)

(assert (=> b!3918687 (= e!2422917 (not e!2422939))))

(declare-fun res!1585110 () Bool)

(assert (=> b!3918687 (=> res!1585110 e!2422939)))

(declare-fun lt!1365445 () List!41651)

(assert (=> b!3918687 (= res!1585110 (not (= lt!1365445 lt!1365447)))))

(assert (=> b!3918687 (= lt!1365451 (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun lt!1365449 () List!41651)

(assert (=> b!3918687 (and (= (size!31182 (_1!23527 (v!39213 lt!1365439))) lt!1365457) (= (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439))) lt!1365450) (= (v!39213 lt!1365439) (tuple2!40787 (Token!12075 lt!1365436 (rule!9396 (_1!23527 (v!39213 lt!1365439))) lt!1365457 lt!1365450) lt!1365449)))))

(assert (=> b!3918687 (= lt!1365457 (size!31181 lt!1365450))))

(assert (=> b!3918687 e!2422916))

(declare-fun res!1585100 () Bool)

(assert (=> b!3918687 (=> (not res!1585100) (not e!2422916))))

(assert (=> b!3918687 (= res!1585100 (= (value!204972 (_1!23527 (v!39213 lt!1365439))) lt!1365436))))

(declare-fun apply!9707 (TokenValueInjection!12824 BalanceConc!24952) TokenValue!6698)

(declare-fun seqFromList!4735 (List!41651) BalanceConc!24952)

(assert (=> b!3918687 (= lt!1365436 (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (seqFromList!4735 lt!1365450)))))

(assert (=> b!3918687 (= (_2!23527 (v!39213 lt!1365439)) lt!1365449)))

(declare-fun lt!1365442 () Unit!59665)

(declare-fun lemmaSamePrefixThenSameSuffix!1784 (List!41651 List!41651 List!41651 List!41651 List!41651) Unit!59665)

(assert (=> b!3918687 (= lt!1365442 (lemmaSamePrefixThenSameSuffix!1784 lt!1365450 (_2!23527 (v!39213 lt!1365439)) lt!1365450 lt!1365449 lt!1365447))))

(declare-fun getSuffix!2018 (List!41651 List!41651) List!41651)

(assert (=> b!3918687 (= lt!1365449 (getSuffix!2018 lt!1365447 lt!1365450))))

(declare-fun isPrefix!3563 (List!41651 List!41651) Bool)

(assert (=> b!3918687 (isPrefix!3563 lt!1365450 lt!1365445)))

(assert (=> b!3918687 (= lt!1365445 (++!10694 lt!1365450 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun lt!1365446 () Unit!59665)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2426 (List!41651 List!41651) Unit!59665)

(assert (=> b!3918687 (= lt!1365446 (lemmaConcatTwoListThenFirstIsPrefix!2426 lt!1365450 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun list!15441 (BalanceConc!24952) List!41651)

(declare-fun charsOf!4292 (Token!12074) BalanceConc!24952)

(assert (=> b!3918687 (= lt!1365450 (list!15441 (charsOf!4292 (_1!23527 (v!39213 lt!1365439)))))))

(declare-fun ruleValid!2416 (LexerInterface!6057 Rule!12736) Bool)

(assert (=> b!3918687 (ruleValid!2416 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))

(declare-fun lt!1365441 () Unit!59665)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1496 (LexerInterface!6057 Rule!12736 List!41654) Unit!59665)

(assert (=> b!3918687 (= lt!1365441 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1496 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) rules!2768))))

(declare-fun lt!1365454 () Unit!59665)

(declare-fun lemmaCharactersSize!1125 (Token!12074) Unit!59665)

(assert (=> b!3918687 (= lt!1365454 (lemmaCharactersSize!1125 (_1!23527 (v!39213 lt!1365439))))))

(declare-fun b!3918688 () Bool)

(declare-fun tp!1192722 () Bool)

(assert (=> b!3918688 (= e!2422921 (and tp_is_empty!19717 tp!1192722))))

(declare-fun b!3918689 () Bool)

(declare-fun res!1585102 () Bool)

(assert (=> b!3918689 (=> (not res!1585102) (not e!2422915))))

(declare-fun isEmpty!24720 (List!41651) Bool)

(assert (=> b!3918689 (= res!1585102 (not (isEmpty!24720 prefix!426)))))

(declare-fun b!3918690 () Bool)

(assert (=> b!3918690 (= e!2422929 e!2422920)))

(declare-fun res!1585104 () Bool)

(assert (=> b!3918690 (=> res!1585104 e!2422920)))

(assert (=> b!3918690 (= res!1585104 (not (= (_1!23527 lt!1365437) lt!1365455)))))

(declare-fun head!8287 (List!41653) Token!12074)

(assert (=> b!3918690 (= lt!1365455 (head!8287 prefixTokens!80))))

(declare-fun get!13722 (Option!8888) tuple2!40786)

(assert (=> b!3918690 (= lt!1365437 (get!13722 lt!1365439))))

(declare-fun tp!1192733 () Bool)

(declare-fun b!3918691 () Bool)

(assert (=> b!3918691 (= e!2422933 (and tp!1192733 (inv!55723 (tag!7328 (h!46950 rules!2768))) (inv!55726 (transformation!6468 (h!46950 rules!2768))) e!2422934))))

(declare-fun b!3918692 () Bool)

(assert (=> b!3918692 (= e!2422941 (= (lexList!1825 thiss!20629 rules!2768 (_2!23527 lt!1365437)) (tuple2!40789 (++!10693 lt!1365443 suffixTokens!72) suffixResult!91)))))

(declare-fun b!3918693 () Bool)

(assert (=> b!3918693 (= e!2422923 e!2422926)))

(declare-fun res!1585116 () Bool)

(assert (=> b!3918693 (=> res!1585116 e!2422926)))

(declare-fun lt!1365453 () Int)

(assert (=> b!3918693 (= res!1585116 (or (not (= (+ lt!1365453 lt!1365440) lt!1365456)) (<= lt!1365457 lt!1365453)))))

(assert (=> b!3918693 (= lt!1365453 (size!31181 prefix!426))))

(assert (=> b!3918694 (= e!2422937 (and tp!1192723 tp!1192728))))

(declare-fun b!3918695 () Bool)

(declare-fun res!1585108 () Bool)

(assert (=> b!3918695 (=> (not res!1585108) (not e!2422928))))

(assert (=> b!3918695 (= res!1585108 (= (lexList!1825 thiss!20629 rules!2768 suffix!1176) (tuple2!40789 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3918696 () Bool)

(declare-fun tp!1192725 () Bool)

(assert (=> b!3918696 (= e!2422936 (and tp_is_empty!19717 tp!1192725))))

(assert (= (and start!367364 res!1585111) b!3918684))

(assert (= (and b!3918684 res!1585115) b!3918668))

(assert (= (and b!3918668 res!1585112) b!3918670))

(assert (= (and b!3918670 res!1585107) b!3918689))

(assert (= (and b!3918689 res!1585102) b!3918683))

(assert (= (and b!3918683 res!1585101) b!3918695))

(assert (= (and b!3918695 res!1585108) b!3918682))

(assert (= (and b!3918682 res!1585109) b!3918687))

(assert (= (and b!3918687 res!1585100) b!3918673))

(assert (= (and b!3918687 (not res!1585110)) b!3918680))

(assert (= (and b!3918680 (not res!1585113)) b!3918674))

(assert (= (and b!3918674 (not res!1585105)) b!3918677))

(assert (= (and b!3918677 (not res!1585097)) b!3918663))

(assert (= (and b!3918663 (not res!1585114)) b!3918693))

(assert (= (and b!3918693 (not res!1585116)) b!3918685))

(assert (= (and b!3918685 (not res!1585098)) b!3918690))

(assert (= (and b!3918690 (not res!1585104)) b!3918667))

(assert (= (and b!3918667 (not res!1585099)) b!3918672))

(assert (= (and b!3918672 (not res!1585103)) b!3918679))

(assert (= (and b!3918679 (not res!1585106)) b!3918692))

(assert (= (and start!367364 ((_ is Cons!41527) suffixResult!91)) b!3918676))

(assert (= (and start!367364 ((_ is Cons!41527) suffix!1176)) b!3918688))

(assert (= b!3918691 b!3918681))

(assert (= b!3918678 b!3918691))

(assert (= (and start!367364 ((_ is Cons!41530) rules!2768)) b!3918678))

(assert (= b!3918686 b!3918664))

(assert (= b!3918675 b!3918686))

(assert (= b!3918671 b!3918675))

(assert (= (and start!367364 ((_ is Cons!41529) prefixTokens!80)) b!3918671))

(assert (= b!3918666 b!3918694))

(assert (= b!3918665 b!3918666))

(assert (= b!3918669 b!3918665))

(assert (= (and start!367364 ((_ is Cons!41529) suffixTokens!72)) b!3918669))

(assert (= (and start!367364 ((_ is Cons!41527) prefix!426)) b!3918696))

(declare-fun m!4482363 () Bool)

(assert (=> b!3918671 m!4482363))

(declare-fun m!4482365 () Bool)

(assert (=> b!3918677 m!4482365))

(declare-fun m!4482367 () Bool)

(assert (=> b!3918677 m!4482367))

(declare-fun m!4482369 () Bool)

(assert (=> b!3918684 m!4482369))

(declare-fun m!4482371 () Bool)

(assert (=> b!3918695 m!4482371))

(declare-fun m!4482373 () Bool)

(assert (=> b!3918670 m!4482373))

(declare-fun m!4482375 () Bool)

(assert (=> b!3918685 m!4482375))

(declare-fun m!4482377 () Bool)

(assert (=> b!3918685 m!4482377))

(declare-fun m!4482379 () Bool)

(assert (=> b!3918685 m!4482379))

(declare-fun m!4482381 () Bool)

(assert (=> b!3918669 m!4482381))

(declare-fun m!4482383 () Bool)

(assert (=> b!3918680 m!4482383))

(declare-fun m!4482385 () Bool)

(assert (=> b!3918663 m!4482385))

(declare-fun m!4482387 () Bool)

(assert (=> b!3918692 m!4482387))

(declare-fun m!4482389 () Bool)

(assert (=> b!3918692 m!4482389))

(declare-fun m!4482391 () Bool)

(assert (=> b!3918672 m!4482391))

(declare-fun m!4482393 () Bool)

(assert (=> b!3918672 m!4482393))

(declare-fun m!4482395 () Bool)

(assert (=> b!3918686 m!4482395))

(declare-fun m!4482397 () Bool)

(assert (=> b!3918686 m!4482397))

(declare-fun m!4482399 () Bool)

(assert (=> b!3918665 m!4482399))

(declare-fun m!4482401 () Bool)

(assert (=> b!3918673 m!4482401))

(declare-fun m!4482403 () Bool)

(assert (=> b!3918666 m!4482403))

(declare-fun m!4482405 () Bool)

(assert (=> b!3918666 m!4482405))

(declare-fun m!4482407 () Bool)

(assert (=> b!3918668 m!4482407))

(declare-fun m!4482409 () Bool)

(assert (=> b!3918682 m!4482409))

(declare-fun m!4482411 () Bool)

(assert (=> b!3918689 m!4482411))

(declare-fun m!4482413 () Bool)

(assert (=> b!3918693 m!4482413))

(declare-fun m!4482415 () Bool)

(assert (=> b!3918690 m!4482415))

(declare-fun m!4482417 () Bool)

(assert (=> b!3918690 m!4482417))

(declare-fun m!4482419 () Bool)

(assert (=> b!3918675 m!4482419))

(declare-fun m!4482421 () Bool)

(assert (=> b!3918691 m!4482421))

(declare-fun m!4482423 () Bool)

(assert (=> b!3918691 m!4482423))

(declare-fun m!4482425 () Bool)

(assert (=> b!3918667 m!4482425))

(declare-fun m!4482427 () Bool)

(assert (=> b!3918683 m!4482427))

(declare-fun m!4482429 () Bool)

(assert (=> b!3918683 m!4482429))

(declare-fun m!4482431 () Bool)

(assert (=> b!3918683 m!4482431))

(declare-fun m!4482433 () Bool)

(assert (=> b!3918687 m!4482433))

(declare-fun m!4482435 () Bool)

(assert (=> b!3918687 m!4482435))

(declare-fun m!4482437 () Bool)

(assert (=> b!3918687 m!4482437))

(declare-fun m!4482439 () Bool)

(assert (=> b!3918687 m!4482439))

(declare-fun m!4482441 () Bool)

(assert (=> b!3918687 m!4482441))

(declare-fun m!4482443 () Bool)

(assert (=> b!3918687 m!4482443))

(declare-fun m!4482445 () Bool)

(assert (=> b!3918687 m!4482445))

(declare-fun m!4482447 () Bool)

(assert (=> b!3918687 m!4482447))

(declare-fun m!4482449 () Bool)

(assert (=> b!3918687 m!4482449))

(declare-fun m!4482451 () Bool)

(assert (=> b!3918687 m!4482451))

(declare-fun m!4482453 () Bool)

(assert (=> b!3918687 m!4482453))

(assert (=> b!3918687 m!4482453))

(declare-fun m!4482455 () Bool)

(assert (=> b!3918687 m!4482455))

(assert (=> b!3918687 m!4482435))

(declare-fun m!4482457 () Bool)

(assert (=> b!3918687 m!4482457))

(declare-fun m!4482459 () Bool)

(assert (=> b!3918687 m!4482459))

(check-sat tp_is_empty!19717 (not b!3918696) (not b_next!107181) b_and!298573 (not b!3918688) (not b!3918668) (not b_next!107173) b_and!298571 b_and!298575 (not b!3918692) (not b!3918695) b_and!298581 (not b!3918693) b_and!298577 (not b!3918687) (not b!3918686) (not b!3918667) (not b_next!107179) (not b!3918670) (not b!3918663) (not b!3918671) (not b!3918677) (not b!3918669) (not b_next!107177) (not b!3918678) (not b!3918666) (not b!3918683) b_and!298579 (not b!3918673) (not b_next!107183) (not b!3918684) (not b!3918676) (not b!3918691) (not b!3918682) (not b!3918675) (not b_next!107175) (not b!3918690) (not b!3918672) (not b!3918689) (not b!3918685) (not b!3918680) (not b!3918665))
(check-sat b_and!298581 b_and!298577 (not b_next!107181) b_and!298573 (not b_next!107179) (not b_next!107177) b_and!298579 (not b_next!107173) (not b_next!107183) b_and!298571 b_and!298575 (not b_next!107175))
(get-model)

(declare-fun d!1162509 () Bool)

(declare-fun e!2422948 () Bool)

(assert (=> d!1162509 e!2422948))

(declare-fun res!1585123 () Bool)

(assert (=> d!1162509 (=> (not res!1585123) (not e!2422948))))

(declare-fun lt!1365460 () List!41653)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6251 (List!41653) (InoxSet Token!12074))

(assert (=> d!1162509 (= res!1585123 (= (content!6251 lt!1365460) ((_ map or) (content!6251 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529)) (content!6251 (_1!23528 lt!1365451)))))))

(declare-fun e!2422947 () List!41653)

(assert (=> d!1162509 (= lt!1365460 e!2422947)))

(declare-fun c!681078 () Bool)

(assert (=> d!1162509 (= c!681078 ((_ is Nil!41529) (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529)))))

(assert (=> d!1162509 (= (++!10693 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529) (_1!23528 lt!1365451)) lt!1365460)))

(declare-fun b!3918705 () Bool)

(assert (=> b!3918705 (= e!2422947 (_1!23528 lt!1365451))))

(declare-fun b!3918707 () Bool)

(declare-fun res!1585124 () Bool)

(assert (=> b!3918707 (=> (not res!1585124) (not e!2422948))))

(declare-fun size!31184 (List!41653) Int)

(assert (=> b!3918707 (= res!1585124 (= (size!31184 lt!1365460) (+ (size!31184 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529)) (size!31184 (_1!23528 lt!1365451)))))))

(declare-fun b!3918708 () Bool)

(assert (=> b!3918708 (= e!2422948 (or (not (= (_1!23528 lt!1365451) Nil!41529)) (= lt!1365460 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529))))))

(declare-fun b!3918706 () Bool)

(assert (=> b!3918706 (= e!2422947 (Cons!41529 (h!46949 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529)) (++!10693 (t!324284 (Cons!41529 (_1!23527 (v!39213 lt!1365439)) Nil!41529)) (_1!23528 lt!1365451))))))

(assert (= (and d!1162509 c!681078) b!3918705))

(assert (= (and d!1162509 (not c!681078)) b!3918706))

(assert (= (and d!1162509 res!1585123) b!3918707))

(assert (= (and b!3918707 res!1585124) b!3918708))

(declare-fun m!4482461 () Bool)

(assert (=> d!1162509 m!4482461))

(declare-fun m!4482463 () Bool)

(assert (=> d!1162509 m!4482463))

(declare-fun m!4482465 () Bool)

(assert (=> d!1162509 m!4482465))

(declare-fun m!4482467 () Bool)

(assert (=> b!3918707 m!4482467))

(declare-fun m!4482469 () Bool)

(assert (=> b!3918707 m!4482469))

(declare-fun m!4482471 () Bool)

(assert (=> b!3918707 m!4482471))

(declare-fun m!4482473 () Bool)

(assert (=> b!3918706 m!4482473))

(assert (=> b!3918680 d!1162509))

(declare-fun d!1162511 () Bool)

(declare-fun c!681083 () Bool)

(assert (=> d!1162511 (= c!681083 ((_ is IntegerValue!20094) (value!204972 (h!46949 prefixTokens!80))))))

(declare-fun e!2422955 () Bool)

(assert (=> d!1162511 (= (inv!21 (value!204972 (h!46949 prefixTokens!80))) e!2422955)))

(declare-fun b!3918719 () Bool)

(declare-fun e!2422957 () Bool)

(assert (=> b!3918719 (= e!2422955 e!2422957)))

(declare-fun c!681084 () Bool)

(assert (=> b!3918719 (= c!681084 ((_ is IntegerValue!20095) (value!204972 (h!46949 prefixTokens!80))))))

(declare-fun b!3918720 () Bool)

(declare-fun e!2422956 () Bool)

(declare-fun inv!15 (TokenValue!6698) Bool)

(assert (=> b!3918720 (= e!2422956 (inv!15 (value!204972 (h!46949 prefixTokens!80))))))

(declare-fun b!3918721 () Bool)

(declare-fun inv!17 (TokenValue!6698) Bool)

(assert (=> b!3918721 (= e!2422957 (inv!17 (value!204972 (h!46949 prefixTokens!80))))))

(declare-fun b!3918722 () Bool)

(declare-fun inv!16 (TokenValue!6698) Bool)

(assert (=> b!3918722 (= e!2422955 (inv!16 (value!204972 (h!46949 prefixTokens!80))))))

(declare-fun b!3918723 () Bool)

(declare-fun res!1585130 () Bool)

(assert (=> b!3918723 (=> res!1585130 e!2422956)))

(assert (=> b!3918723 (= res!1585130 (not ((_ is IntegerValue!20096) (value!204972 (h!46949 prefixTokens!80)))))))

(assert (=> b!3918723 (= e!2422957 e!2422956)))

(assert (= (and d!1162511 c!681083) b!3918722))

(assert (= (and d!1162511 (not c!681083)) b!3918719))

(assert (= (and b!3918719 c!681084) b!3918721))

(assert (= (and b!3918719 (not c!681084)) b!3918723))

(assert (= (and b!3918723 (not res!1585130)) b!3918720))

(declare-fun m!4482475 () Bool)

(assert (=> b!3918720 m!4482475))

(declare-fun m!4482477 () Bool)

(assert (=> b!3918721 m!4482477))

(declare-fun m!4482479 () Bool)

(assert (=> b!3918722 m!4482479))

(assert (=> b!3918675 d!1162511))

(declare-fun d!1162513 () Bool)

(declare-fun lt!1365467 () Int)

(assert (=> d!1162513 (>= lt!1365467 0)))

(declare-fun e!2422964 () Int)

(assert (=> d!1162513 (= lt!1365467 e!2422964)))

(declare-fun c!681091 () Bool)

(assert (=> d!1162513 (= c!681091 ((_ is Nil!41527) suffix!1176))))

(assert (=> d!1162513 (= (size!31181 suffix!1176) lt!1365467)))

(declare-fun b!3918736 () Bool)

(assert (=> b!3918736 (= e!2422964 0)))

(declare-fun b!3918737 () Bool)

(assert (=> b!3918737 (= e!2422964 (+ 1 (size!31181 (t!324282 suffix!1176))))))

(assert (= (and d!1162513 c!681091) b!3918736))

(assert (= (and d!1162513 (not c!681091)) b!3918737))

(declare-fun m!4482485 () Bool)

(assert (=> b!3918737 m!4482485))

(assert (=> b!3918677 d!1162513))

(declare-fun d!1162521 () Bool)

(declare-fun lt!1365468 () Int)

(assert (=> d!1162521 (>= lt!1365468 0)))

(declare-fun e!2422965 () Int)

(assert (=> d!1162521 (= lt!1365468 e!2422965)))

(declare-fun c!681092 () Bool)

(assert (=> d!1162521 (= c!681092 ((_ is Nil!41527) (_2!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162521 (= (size!31181 (_2!23527 (v!39213 lt!1365439))) lt!1365468)))

(declare-fun b!3918738 () Bool)

(assert (=> b!3918738 (= e!2422965 0)))

(declare-fun b!3918739 () Bool)

(assert (=> b!3918739 (= e!2422965 (+ 1 (size!31181 (t!324282 (_2!23527 (v!39213 lt!1365439))))))))

(assert (= (and d!1162521 c!681092) b!3918738))

(assert (= (and d!1162521 (not c!681092)) b!3918739))

(declare-fun m!4482487 () Bool)

(assert (=> b!3918739 m!4482487))

(assert (=> b!3918677 d!1162521))

(declare-fun d!1162523 () Bool)

(declare-fun lt!1365469 () Int)

(assert (=> d!1162523 (>= lt!1365469 0)))

(declare-fun e!2422966 () Int)

(assert (=> d!1162523 (= lt!1365469 e!2422966)))

(declare-fun c!681093 () Bool)

(assert (=> d!1162523 (= c!681093 ((_ is Nil!41527) (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439)))))))

(assert (=> d!1162523 (= (size!31181 (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439)))) lt!1365469)))

(declare-fun b!3918740 () Bool)

(assert (=> b!3918740 (= e!2422966 0)))

(declare-fun b!3918741 () Bool)

(assert (=> b!3918741 (= e!2422966 (+ 1 (size!31181 (t!324282 (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439)))))))))

(assert (= (and d!1162523 c!681093) b!3918740))

(assert (= (and d!1162523 (not c!681093)) b!3918741))

(declare-fun m!4482489 () Bool)

(assert (=> b!3918741 m!4482489))

(assert (=> b!3918673 d!1162523))

(declare-fun b!3918815 () Bool)

(declare-fun e!2423008 () Bool)

(declare-fun lt!1365497 () tuple2!40788)

(assert (=> b!3918815 (= e!2423008 (= (_2!23528 lt!1365497) suffix!1176))))

(declare-fun b!3918816 () Bool)

(declare-fun e!2423009 () tuple2!40788)

(assert (=> b!3918816 (= e!2423009 (tuple2!40789 Nil!41529 suffix!1176))))

(declare-fun b!3918817 () Bool)

(declare-fun lt!1365496 () Option!8888)

(declare-fun lt!1365498 () tuple2!40788)

(assert (=> b!3918817 (= e!2423009 (tuple2!40789 (Cons!41529 (_1!23527 (v!39213 lt!1365496)) (_1!23528 lt!1365498)) (_2!23528 lt!1365498)))))

(assert (=> b!3918817 (= lt!1365498 (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365496))))))

(declare-fun b!3918818 () Bool)

(declare-fun e!2423010 () Bool)

(assert (=> b!3918818 (= e!2423010 (not (isEmpty!24718 (_1!23528 lt!1365497))))))

(declare-fun b!3918819 () Bool)

(assert (=> b!3918819 (= e!2423008 e!2423010)))

(declare-fun res!1585157 () Bool)

(assert (=> b!3918819 (= res!1585157 (< (size!31181 (_2!23528 lt!1365497)) (size!31181 suffix!1176)))))

(assert (=> b!3918819 (=> (not res!1585157) (not e!2423010))))

(declare-fun d!1162525 () Bool)

(assert (=> d!1162525 e!2423008))

(declare-fun c!681115 () Bool)

(assert (=> d!1162525 (= c!681115 (> (size!31184 (_1!23528 lt!1365497)) 0))))

(assert (=> d!1162525 (= lt!1365497 e!2423009)))

(declare-fun c!681116 () Bool)

(assert (=> d!1162525 (= c!681116 ((_ is Some!8887) lt!1365496))))

(assert (=> d!1162525 (= lt!1365496 (maxPrefix!3361 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1162525 (= (lexList!1825 thiss!20629 rules!2768 suffix!1176) lt!1365497)))

(assert (= (and d!1162525 c!681116) b!3918817))

(assert (= (and d!1162525 (not c!681116)) b!3918816))

(assert (= (and d!1162525 c!681115) b!3918819))

(assert (= (and d!1162525 (not c!681115)) b!3918815))

(assert (= (and b!3918819 res!1585157) b!3918818))

(declare-fun m!4482545 () Bool)

(assert (=> b!3918817 m!4482545))

(declare-fun m!4482547 () Bool)

(assert (=> b!3918818 m!4482547))

(declare-fun m!4482549 () Bool)

(assert (=> b!3918819 m!4482549))

(assert (=> b!3918819 m!4482365))

(declare-fun m!4482551 () Bool)

(assert (=> d!1162525 m!4482551))

(declare-fun m!4482553 () Bool)

(assert (=> d!1162525 m!4482553))

(assert (=> b!3918695 d!1162525))

(declare-fun b!3918844 () Bool)

(declare-fun e!2423023 () Bool)

(declare-fun lt!1365500 () tuple2!40788)

(assert (=> b!3918844 (= e!2423023 (= (_2!23528 lt!1365500) (_2!23527 lt!1365437)))))

(declare-fun b!3918845 () Bool)

(declare-fun e!2423024 () tuple2!40788)

(assert (=> b!3918845 (= e!2423024 (tuple2!40789 Nil!41529 (_2!23527 lt!1365437)))))

(declare-fun b!3918846 () Bool)

(declare-fun lt!1365499 () Option!8888)

(declare-fun lt!1365501 () tuple2!40788)

(assert (=> b!3918846 (= e!2423024 (tuple2!40789 (Cons!41529 (_1!23527 (v!39213 lt!1365499)) (_1!23528 lt!1365501)) (_2!23528 lt!1365501)))))

(assert (=> b!3918846 (= lt!1365501 (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365499))))))

(declare-fun b!3918847 () Bool)

(declare-fun e!2423025 () Bool)

(assert (=> b!3918847 (= e!2423025 (not (isEmpty!24718 (_1!23528 lt!1365500))))))

(declare-fun b!3918848 () Bool)

(assert (=> b!3918848 (= e!2423023 e!2423025)))

(declare-fun res!1585174 () Bool)

(assert (=> b!3918848 (= res!1585174 (< (size!31181 (_2!23528 lt!1365500)) (size!31181 (_2!23527 lt!1365437))))))

(assert (=> b!3918848 (=> (not res!1585174) (not e!2423025))))

(declare-fun d!1162545 () Bool)

(assert (=> d!1162545 e!2423023))

(declare-fun c!681121 () Bool)

(assert (=> d!1162545 (= c!681121 (> (size!31184 (_1!23528 lt!1365500)) 0))))

(assert (=> d!1162545 (= lt!1365500 e!2423024)))

(declare-fun c!681122 () Bool)

(assert (=> d!1162545 (= c!681122 ((_ is Some!8887) lt!1365499))))

(assert (=> d!1162545 (= lt!1365499 (maxPrefix!3361 thiss!20629 rules!2768 (_2!23527 lt!1365437)))))

(assert (=> d!1162545 (= (lexList!1825 thiss!20629 rules!2768 (_2!23527 lt!1365437)) lt!1365500)))

(assert (= (and d!1162545 c!681122) b!3918846))

(assert (= (and d!1162545 (not c!681122)) b!3918845))

(assert (= (and d!1162545 c!681121) b!3918848))

(assert (= (and d!1162545 (not c!681121)) b!3918844))

(assert (= (and b!3918848 res!1585174) b!3918847))

(declare-fun m!4482555 () Bool)

(assert (=> b!3918846 m!4482555))

(declare-fun m!4482557 () Bool)

(assert (=> b!3918847 m!4482557))

(declare-fun m!4482559 () Bool)

(assert (=> b!3918848 m!4482559))

(assert (=> b!3918848 m!4482425))

(declare-fun m!4482561 () Bool)

(assert (=> d!1162545 m!4482561))

(declare-fun m!4482563 () Bool)

(assert (=> d!1162545 m!4482563))

(assert (=> b!3918692 d!1162545))

(declare-fun d!1162547 () Bool)

(declare-fun e!2423027 () Bool)

(assert (=> d!1162547 e!2423027))

(declare-fun res!1585175 () Bool)

(assert (=> d!1162547 (=> (not res!1585175) (not e!2423027))))

(declare-fun lt!1365502 () List!41653)

(assert (=> d!1162547 (= res!1585175 (= (content!6251 lt!1365502) ((_ map or) (content!6251 lt!1365443) (content!6251 suffixTokens!72))))))

(declare-fun e!2423026 () List!41653)

(assert (=> d!1162547 (= lt!1365502 e!2423026)))

(declare-fun c!681123 () Bool)

(assert (=> d!1162547 (= c!681123 ((_ is Nil!41529) lt!1365443))))

(assert (=> d!1162547 (= (++!10693 lt!1365443 suffixTokens!72) lt!1365502)))

(declare-fun b!3918849 () Bool)

(assert (=> b!3918849 (= e!2423026 suffixTokens!72)))

(declare-fun b!3918851 () Bool)

(declare-fun res!1585176 () Bool)

(assert (=> b!3918851 (=> (not res!1585176) (not e!2423027))))

(assert (=> b!3918851 (= res!1585176 (= (size!31184 lt!1365502) (+ (size!31184 lt!1365443) (size!31184 suffixTokens!72))))))

(declare-fun b!3918852 () Bool)

(assert (=> b!3918852 (= e!2423027 (or (not (= suffixTokens!72 Nil!41529)) (= lt!1365502 lt!1365443)))))

(declare-fun b!3918850 () Bool)

(assert (=> b!3918850 (= e!2423026 (Cons!41529 (h!46949 lt!1365443) (++!10693 (t!324284 lt!1365443) suffixTokens!72)))))

(assert (= (and d!1162547 c!681123) b!3918849))

(assert (= (and d!1162547 (not c!681123)) b!3918850))

(assert (= (and d!1162547 res!1585175) b!3918851))

(assert (= (and b!3918851 res!1585176) b!3918852))

(declare-fun m!4482565 () Bool)

(assert (=> d!1162547 m!4482565))

(declare-fun m!4482567 () Bool)

(assert (=> d!1162547 m!4482567))

(declare-fun m!4482569 () Bool)

(assert (=> d!1162547 m!4482569))

(declare-fun m!4482571 () Bool)

(assert (=> b!3918851 m!4482571))

(declare-fun m!4482573 () Bool)

(assert (=> b!3918851 m!4482573))

(declare-fun m!4482575 () Bool)

(assert (=> b!3918851 m!4482575))

(declare-fun m!4482577 () Bool)

(assert (=> b!3918850 m!4482577))

(assert (=> b!3918692 d!1162547))

(declare-fun d!1162549 () Bool)

(assert (=> d!1162549 (= (inv!55723 (tag!7328 (h!46950 rules!2768))) (= (mod (str.len (value!204971 (tag!7328 (h!46950 rules!2768)))) 2) 0))))

(assert (=> b!3918691 d!1162549))

(declare-fun d!1162551 () Bool)

(declare-fun res!1585187 () Bool)

(declare-fun e!2423037 () Bool)

(assert (=> d!1162551 (=> (not res!1585187) (not e!2423037))))

(declare-fun semiInverseModEq!2783 (Int Int) Bool)

(assert (=> d!1162551 (= res!1585187 (semiInverseModEq!2783 (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toValue!8920 (transformation!6468 (h!46950 rules!2768)))))))

(assert (=> d!1162551 (= (inv!55726 (transformation!6468 (h!46950 rules!2768))) e!2423037)))

(declare-fun b!3918869 () Bool)

(declare-fun equivClasses!2682 (Int Int) Bool)

(assert (=> b!3918869 (= e!2423037 (equivClasses!2682 (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toValue!8920 (transformation!6468 (h!46950 rules!2768)))))))

(assert (= (and d!1162551 res!1585187) b!3918869))

(declare-fun m!4482595 () Bool)

(assert (=> d!1162551 m!4482595))

(declare-fun m!4482597 () Bool)

(assert (=> b!3918869 m!4482597))

(assert (=> b!3918691 d!1162551))

(declare-fun d!1162555 () Bool)

(assert (=> d!1162555 (= (isEmpty!24718 prefixTokens!80) ((_ is Nil!41529) prefixTokens!80))))

(assert (=> b!3918670 d!1162555))

(declare-fun d!1162557 () Bool)

(declare-fun lt!1365504 () Int)

(assert (=> d!1162557 (>= lt!1365504 0)))

(declare-fun e!2423038 () Int)

(assert (=> d!1162557 (= lt!1365504 e!2423038)))

(declare-fun c!681127 () Bool)

(assert (=> d!1162557 (= c!681127 ((_ is Nil!41527) prefix!426))))

(assert (=> d!1162557 (= (size!31181 prefix!426) lt!1365504)))

(declare-fun b!3918870 () Bool)

(assert (=> b!3918870 (= e!2423038 0)))

(declare-fun b!3918871 () Bool)

(assert (=> b!3918871 (= e!2423038 (+ 1 (size!31181 (t!324282 prefix!426))))))

(assert (= (and d!1162557 c!681127) b!3918870))

(assert (= (and d!1162557 (not c!681127)) b!3918871))

(declare-fun m!4482599 () Bool)

(assert (=> b!3918871 m!4482599))

(assert (=> b!3918693 d!1162557))

(declare-fun d!1162559 () Bool)

(assert (=> d!1162559 (= (isEmpty!24718 lt!1365443) ((_ is Nil!41529) lt!1365443))))

(assert (=> b!3918672 d!1162559))

(declare-fun d!1162561 () Bool)

(assert (=> d!1162561 (= (tail!6003 prefixTokens!80) (t!324284 prefixTokens!80))))

(assert (=> b!3918672 d!1162561))

(declare-fun d!1162563 () Bool)

(declare-fun res!1585192 () Bool)

(declare-fun e!2423041 () Bool)

(assert (=> d!1162563 (=> (not res!1585192) (not e!2423041))))

(assert (=> d!1162563 (= res!1585192 (not (isEmpty!24720 (originalCharacters!7068 (h!46949 prefixTokens!80)))))))

(assert (=> d!1162563 (= (inv!55727 (h!46949 prefixTokens!80)) e!2423041)))

(declare-fun b!3918876 () Bool)

(declare-fun res!1585193 () Bool)

(assert (=> b!3918876 (=> (not res!1585193) (not e!2423041))))

(declare-fun dynLambda!17844 (Int TokenValue!6698) BalanceConc!24952)

(assert (=> b!3918876 (= res!1585193 (= (originalCharacters!7068 (h!46949 prefixTokens!80)) (list!15441 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (value!204972 (h!46949 prefixTokens!80))))))))

(declare-fun b!3918877 () Bool)

(assert (=> b!3918877 (= e!2423041 (= (size!31182 (h!46949 prefixTokens!80)) (size!31181 (originalCharacters!7068 (h!46949 prefixTokens!80)))))))

(assert (= (and d!1162563 res!1585192) b!3918876))

(assert (= (and b!3918876 res!1585193) b!3918877))

(declare-fun b_lambda!114749 () Bool)

(assert (=> (not b_lambda!114749) (not b!3918876)))

(declare-fun tb!233915 () Bool)

(declare-fun t!324293 () Bool)

(assert (=> (and b!3918681 (= (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324293) tb!233915))

(declare-fun b!3918882 () Bool)

(declare-fun e!2423044 () Bool)

(declare-fun tp!1192744 () Bool)

(declare-fun inv!55730 (Conc!12679) Bool)

(assert (=> b!3918882 (= e!2423044 (and (inv!55730 (c!681075 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (value!204972 (h!46949 prefixTokens!80))))) tp!1192744))))

(declare-fun result!283446 () Bool)

(declare-fun inv!55731 (BalanceConc!24952) Bool)

(assert (=> tb!233915 (= result!283446 (and (inv!55731 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (value!204972 (h!46949 prefixTokens!80)))) e!2423044))))

(assert (= tb!233915 b!3918882))

(declare-fun m!4482601 () Bool)

(assert (=> b!3918882 m!4482601))

(declare-fun m!4482603 () Bool)

(assert (=> tb!233915 m!4482603))

(assert (=> b!3918876 t!324293))

(declare-fun b_and!298589 () Bool)

(assert (= b_and!298573 (and (=> t!324293 result!283446) b_and!298589)))

(declare-fun t!324295 () Bool)

(declare-fun tb!233917 () Bool)

(assert (=> (and b!3918664 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324295) tb!233917))

(declare-fun result!283450 () Bool)

(assert (= result!283450 result!283446))

(assert (=> b!3918876 t!324295))

(declare-fun b_and!298591 () Bool)

(assert (= b_and!298577 (and (=> t!324295 result!283450) b_and!298591)))

(declare-fun tb!233919 () Bool)

(declare-fun t!324297 () Bool)

(assert (=> (and b!3918694 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324297) tb!233919))

(declare-fun result!283452 () Bool)

(assert (= result!283452 result!283446))

(assert (=> b!3918876 t!324297))

(declare-fun b_and!298593 () Bool)

(assert (= b_and!298581 (and (=> t!324297 result!283452) b_and!298593)))

(declare-fun m!4482605 () Bool)

(assert (=> d!1162563 m!4482605))

(declare-fun m!4482607 () Bool)

(assert (=> b!3918876 m!4482607))

(assert (=> b!3918876 m!4482607))

(declare-fun m!4482609 () Bool)

(assert (=> b!3918876 m!4482609))

(declare-fun m!4482611 () Bool)

(assert (=> b!3918877 m!4482611))

(assert (=> b!3918671 d!1162563))

(declare-fun d!1162565 () Bool)

(assert (=> d!1162565 (= (isEmpty!24720 prefix!426) ((_ is Nil!41527) prefix!426))))

(assert (=> b!3918689 d!1162565))

(declare-fun d!1162567 () Bool)

(declare-fun res!1585196 () Bool)

(declare-fun e!2423047 () Bool)

(assert (=> d!1162567 (=> (not res!1585196) (not e!2423047))))

(declare-fun rulesValid!2517 (LexerInterface!6057 List!41654) Bool)

(assert (=> d!1162567 (= res!1585196 (rulesValid!2517 thiss!20629 rules!2768))))

(assert (=> d!1162567 (= (rulesInvariant!5400 thiss!20629 rules!2768) e!2423047)))

(declare-fun b!3918885 () Bool)

(declare-datatypes ((List!41656 0))(
  ( (Nil!41532) (Cons!41532 (h!46952 String!47208) (t!324383 List!41656)) )
))
(declare-fun noDuplicateTag!2518 (LexerInterface!6057 List!41654 List!41656) Bool)

(assert (=> b!3918885 (= e!2423047 (noDuplicateTag!2518 thiss!20629 rules!2768 Nil!41532))))

(assert (= (and d!1162567 res!1585196) b!3918885))

(declare-fun m!4482613 () Bool)

(assert (=> d!1162567 m!4482613))

(declare-fun m!4482615 () Bool)

(assert (=> b!3918885 m!4482615))

(assert (=> b!3918668 d!1162567))

(declare-fun d!1162569 () Bool)

(declare-fun lt!1365505 () Int)

(assert (=> d!1162569 (>= lt!1365505 0)))

(declare-fun e!2423048 () Int)

(assert (=> d!1162569 (= lt!1365505 e!2423048)))

(declare-fun c!681128 () Bool)

(assert (=> d!1162569 (= c!681128 ((_ is Nil!41527) (_2!23527 lt!1365437)))))

(assert (=> d!1162569 (= (size!31181 (_2!23527 lt!1365437)) lt!1365505)))

(declare-fun b!3918886 () Bool)

(assert (=> b!3918886 (= e!2423048 0)))

(declare-fun b!3918887 () Bool)

(assert (=> b!3918887 (= e!2423048 (+ 1 (size!31181 (t!324282 (_2!23527 lt!1365437)))))))

(assert (= (and d!1162569 c!681128) b!3918886))

(assert (= (and d!1162569 (not c!681128)) b!3918887))

(declare-fun m!4482617 () Bool)

(assert (=> b!3918887 m!4482617))

(assert (=> b!3918667 d!1162569))

(declare-fun d!1162571 () Bool)

(declare-fun res!1585197 () Bool)

(declare-fun e!2423049 () Bool)

(assert (=> d!1162571 (=> (not res!1585197) (not e!2423049))))

(assert (=> d!1162571 (= res!1585197 (not (isEmpty!24720 (originalCharacters!7068 (h!46949 suffixTokens!72)))))))

(assert (=> d!1162571 (= (inv!55727 (h!46949 suffixTokens!72)) e!2423049)))

(declare-fun b!3918888 () Bool)

(declare-fun res!1585198 () Bool)

(assert (=> b!3918888 (=> (not res!1585198) (not e!2423049))))

(assert (=> b!3918888 (= res!1585198 (= (originalCharacters!7068 (h!46949 suffixTokens!72)) (list!15441 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (value!204972 (h!46949 suffixTokens!72))))))))

(declare-fun b!3918889 () Bool)

(assert (=> b!3918889 (= e!2423049 (= (size!31182 (h!46949 suffixTokens!72)) (size!31181 (originalCharacters!7068 (h!46949 suffixTokens!72)))))))

(assert (= (and d!1162571 res!1585197) b!3918888))

(assert (= (and b!3918888 res!1585198) b!3918889))

(declare-fun b_lambda!114751 () Bool)

(assert (=> (not b_lambda!114751) (not b!3918888)))

(declare-fun t!324299 () Bool)

(declare-fun tb!233921 () Bool)

(assert (=> (and b!3918681 (= (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324299) tb!233921))

(declare-fun b!3918890 () Bool)

(declare-fun e!2423050 () Bool)

(declare-fun tp!1192745 () Bool)

(assert (=> b!3918890 (= e!2423050 (and (inv!55730 (c!681075 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (value!204972 (h!46949 suffixTokens!72))))) tp!1192745))))

(declare-fun result!283454 () Bool)

(assert (=> tb!233921 (= result!283454 (and (inv!55731 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (value!204972 (h!46949 suffixTokens!72)))) e!2423050))))

(assert (= tb!233921 b!3918890))

(declare-fun m!4482619 () Bool)

(assert (=> b!3918890 m!4482619))

(declare-fun m!4482621 () Bool)

(assert (=> tb!233921 m!4482621))

(assert (=> b!3918888 t!324299))

(declare-fun b_and!298595 () Bool)

(assert (= b_and!298589 (and (=> t!324299 result!283454) b_and!298595)))

(declare-fun t!324301 () Bool)

(declare-fun tb!233923 () Bool)

(assert (=> (and b!3918664 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324301) tb!233923))

(declare-fun result!283456 () Bool)

(assert (= result!283456 result!283454))

(assert (=> b!3918888 t!324301))

(declare-fun b_and!298597 () Bool)

(assert (= b_and!298591 (and (=> t!324301 result!283456) b_and!298597)))

(declare-fun t!324303 () Bool)

(declare-fun tb!233925 () Bool)

(assert (=> (and b!3918694 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324303) tb!233925))

(declare-fun result!283458 () Bool)

(assert (= result!283458 result!283454))

(assert (=> b!3918888 t!324303))

(declare-fun b_and!298599 () Bool)

(assert (= b_and!298593 (and (=> t!324303 result!283458) b_and!298599)))

(declare-fun m!4482623 () Bool)

(assert (=> d!1162571 m!4482623))

(declare-fun m!4482625 () Bool)

(assert (=> b!3918888 m!4482625))

(assert (=> b!3918888 m!4482625))

(declare-fun m!4482627 () Bool)

(assert (=> b!3918888 m!4482627))

(declare-fun m!4482629 () Bool)

(assert (=> b!3918889 m!4482629))

(assert (=> b!3918669 d!1162571))

(declare-fun d!1162573 () Bool)

(assert (=> d!1162573 (= (head!8287 prefixTokens!80) (h!46949 prefixTokens!80))))

(assert (=> b!3918690 d!1162573))

(declare-fun d!1162575 () Bool)

(assert (=> d!1162575 (= (get!13722 lt!1365439) (v!39213 lt!1365439))))

(assert (=> b!3918690 d!1162575))

(declare-fun d!1162577 () Bool)

(declare-fun c!681129 () Bool)

(assert (=> d!1162577 (= c!681129 ((_ is IntegerValue!20094) (value!204972 (h!46949 suffixTokens!72))))))

(declare-fun e!2423051 () Bool)

(assert (=> d!1162577 (= (inv!21 (value!204972 (h!46949 suffixTokens!72))) e!2423051)))

(declare-fun b!3918891 () Bool)

(declare-fun e!2423053 () Bool)

(assert (=> b!3918891 (= e!2423051 e!2423053)))

(declare-fun c!681130 () Bool)

(assert (=> b!3918891 (= c!681130 ((_ is IntegerValue!20095) (value!204972 (h!46949 suffixTokens!72))))))

(declare-fun b!3918892 () Bool)

(declare-fun e!2423052 () Bool)

(assert (=> b!3918892 (= e!2423052 (inv!15 (value!204972 (h!46949 suffixTokens!72))))))

(declare-fun b!3918893 () Bool)

(assert (=> b!3918893 (= e!2423053 (inv!17 (value!204972 (h!46949 suffixTokens!72))))))

(declare-fun b!3918894 () Bool)

(assert (=> b!3918894 (= e!2423051 (inv!16 (value!204972 (h!46949 suffixTokens!72))))))

(declare-fun b!3918895 () Bool)

(declare-fun res!1585199 () Bool)

(assert (=> b!3918895 (=> res!1585199 e!2423052)))

(assert (=> b!3918895 (= res!1585199 (not ((_ is IntegerValue!20096) (value!204972 (h!46949 suffixTokens!72)))))))

(assert (=> b!3918895 (= e!2423053 e!2423052)))

(assert (= (and d!1162577 c!681129) b!3918894))

(assert (= (and d!1162577 (not c!681129)) b!3918891))

(assert (= (and b!3918891 c!681130) b!3918893))

(assert (= (and b!3918891 (not c!681130)) b!3918895))

(assert (= (and b!3918895 (not res!1585199)) b!3918892))

(declare-fun m!4482631 () Bool)

(assert (=> b!3918892 m!4482631))

(declare-fun m!4482633 () Bool)

(assert (=> b!3918893 m!4482633))

(declare-fun m!4482635 () Bool)

(assert (=> b!3918894 m!4482635))

(assert (=> b!3918665 d!1162577))

(declare-fun d!1162579 () Bool)

(assert (=> d!1162579 (= (inv!55723 (tag!7328 (rule!9396 (h!46949 prefixTokens!80)))) (= (mod (str.len (value!204971 (tag!7328 (rule!9396 (h!46949 prefixTokens!80))))) 2) 0))))

(assert (=> b!3918686 d!1162579))

(declare-fun d!1162581 () Bool)

(declare-fun res!1585200 () Bool)

(declare-fun e!2423054 () Bool)

(assert (=> d!1162581 (=> (not res!1585200) (not e!2423054))))

(assert (=> d!1162581 (= res!1585200 (semiInverseModEq!2783 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toValue!8920 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))))))

(assert (=> d!1162581 (= (inv!55726 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) e!2423054)))

(declare-fun b!3918896 () Bool)

(assert (=> b!3918896 (= e!2423054 (equivClasses!2682 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toValue!8920 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))))))

(assert (= (and d!1162581 res!1585200) b!3918896))

(declare-fun m!4482637 () Bool)

(assert (=> d!1162581 m!4482637))

(declare-fun m!4482639 () Bool)

(assert (=> b!3918896 m!4482639))

(assert (=> b!3918686 d!1162581))

(declare-fun b!3918905 () Bool)

(declare-fun e!2423059 () List!41651)

(assert (=> b!3918905 (= e!2423059 (_2!23527 (v!39213 lt!1365439)))))

(declare-fun d!1162583 () Bool)

(declare-fun e!2423060 () Bool)

(assert (=> d!1162583 e!2423060))

(declare-fun res!1585206 () Bool)

(assert (=> d!1162583 (=> (not res!1585206) (not e!2423060))))

(declare-fun lt!1365508 () List!41651)

(declare-fun content!6252 (List!41651) (InoxSet C!22932))

(assert (=> d!1162583 (= res!1585206 (= (content!6252 lt!1365508) ((_ map or) (content!6252 lt!1365450) (content!6252 (_2!23527 (v!39213 lt!1365439))))))))

(assert (=> d!1162583 (= lt!1365508 e!2423059)))

(declare-fun c!681133 () Bool)

(assert (=> d!1162583 (= c!681133 ((_ is Nil!41527) lt!1365450))))

(assert (=> d!1162583 (= (++!10694 lt!1365450 (_2!23527 (v!39213 lt!1365439))) lt!1365508)))

(declare-fun b!3918907 () Bool)

(declare-fun res!1585205 () Bool)

(assert (=> b!3918907 (=> (not res!1585205) (not e!2423060))))

(assert (=> b!3918907 (= res!1585205 (= (size!31181 lt!1365508) (+ (size!31181 lt!1365450) (size!31181 (_2!23527 (v!39213 lt!1365439))))))))

(declare-fun b!3918906 () Bool)

(assert (=> b!3918906 (= e!2423059 (Cons!41527 (h!46947 lt!1365450) (++!10694 (t!324282 lt!1365450) (_2!23527 (v!39213 lt!1365439)))))))

(declare-fun b!3918908 () Bool)

(assert (=> b!3918908 (= e!2423060 (or (not (= (_2!23527 (v!39213 lt!1365439)) Nil!41527)) (= lt!1365508 lt!1365450)))))

(assert (= (and d!1162583 c!681133) b!3918905))

(assert (= (and d!1162583 (not c!681133)) b!3918906))

(assert (= (and d!1162583 res!1585206) b!3918907))

(assert (= (and b!3918907 res!1585205) b!3918908))

(declare-fun m!4482641 () Bool)

(assert (=> d!1162583 m!4482641))

(declare-fun m!4482643 () Bool)

(assert (=> d!1162583 m!4482643))

(declare-fun m!4482645 () Bool)

(assert (=> d!1162583 m!4482645))

(declare-fun m!4482647 () Bool)

(assert (=> b!3918907 m!4482647))

(assert (=> b!3918907 m!4482459))

(assert (=> b!3918907 m!4482367))

(declare-fun m!4482649 () Bool)

(assert (=> b!3918906 m!4482649))

(assert (=> b!3918687 d!1162583))

(declare-fun d!1162585 () Bool)

(declare-fun dynLambda!17845 (Int BalanceConc!24952) TokenValue!6698)

(assert (=> d!1162585 (= (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (seqFromList!4735 lt!1365450)) (dynLambda!17845 (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))) (seqFromList!4735 lt!1365450)))))

(declare-fun b_lambda!114753 () Bool)

(assert (=> (not b_lambda!114753) (not d!1162585)))

(declare-fun tb!233927 () Bool)

(declare-fun t!324305 () Bool)

(assert (=> (and b!3918681 (= (toValue!8920 (transformation!6468 (h!46950 rules!2768))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324305) tb!233927))

(declare-fun result!283460 () Bool)

(assert (=> tb!233927 (= result!283460 (inv!21 (dynLambda!17845 (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))) (seqFromList!4735 lt!1365450))))))

(declare-fun m!4482651 () Bool)

(assert (=> tb!233927 m!4482651))

(assert (=> d!1162585 t!324305))

(declare-fun b_and!298601 () Bool)

(assert (= b_and!298571 (and (=> t!324305 result!283460) b_and!298601)))

(declare-fun tb!233929 () Bool)

(declare-fun t!324307 () Bool)

(assert (=> (and b!3918664 (= (toValue!8920 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324307) tb!233929))

(declare-fun result!283464 () Bool)

(assert (= result!283464 result!283460))

(assert (=> d!1162585 t!324307))

(declare-fun b_and!298603 () Bool)

(assert (= b_and!298575 (and (=> t!324307 result!283464) b_and!298603)))

(declare-fun tb!233931 () Bool)

(declare-fun t!324309 () Bool)

(assert (=> (and b!3918694 (= (toValue!8920 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324309) tb!233931))

(declare-fun result!283466 () Bool)

(assert (= result!283466 result!283460))

(assert (=> d!1162585 t!324309))

(declare-fun b_and!298605 () Bool)

(assert (= b_and!298579 (and (=> t!324309 result!283466) b_and!298605)))

(assert (=> d!1162585 m!4482435))

(declare-fun m!4482653 () Bool)

(assert (=> d!1162585 m!4482653))

(assert (=> b!3918687 d!1162585))

(declare-fun d!1162587 () Bool)

(declare-fun fromListB!2191 (List!41651) BalanceConc!24952)

(assert (=> d!1162587 (= (seqFromList!4735 lt!1365450) (fromListB!2191 lt!1365450))))

(declare-fun bs!585819 () Bool)

(assert (= bs!585819 d!1162587))

(declare-fun m!4482655 () Bool)

(assert (=> bs!585819 m!4482655))

(assert (=> b!3918687 d!1162587))

(declare-fun d!1162589 () Bool)

(declare-fun e!2423082 () Bool)

(assert (=> d!1162589 e!2423082))

(declare-fun res!1585237 () Bool)

(assert (=> d!1162589 (=> res!1585237 e!2423082)))

(declare-fun lt!1365526 () Bool)

(assert (=> d!1162589 (= res!1585237 (not lt!1365526))))

(declare-fun e!2423083 () Bool)

(assert (=> d!1162589 (= lt!1365526 e!2423083)))

(declare-fun res!1585238 () Bool)

(assert (=> d!1162589 (=> res!1585238 e!2423083)))

(assert (=> d!1162589 (= res!1585238 ((_ is Nil!41527) lt!1365450))))

(assert (=> d!1162589 (= (isPrefix!3563 lt!1365450 lt!1365445) lt!1365526)))

(declare-fun b!3918949 () Bool)

(assert (=> b!3918949 (= e!2423082 (>= (size!31181 lt!1365445) (size!31181 lt!1365450)))))

(declare-fun b!3918948 () Bool)

(declare-fun e!2423084 () Bool)

(declare-fun tail!6005 (List!41651) List!41651)

(assert (=> b!3918948 (= e!2423084 (isPrefix!3563 (tail!6005 lt!1365450) (tail!6005 lt!1365445)))))

(declare-fun b!3918947 () Bool)

(declare-fun res!1585236 () Bool)

(assert (=> b!3918947 (=> (not res!1585236) (not e!2423084))))

(declare-fun head!8289 (List!41651) C!22932)

(assert (=> b!3918947 (= res!1585236 (= (head!8289 lt!1365450) (head!8289 lt!1365445)))))

(declare-fun b!3918946 () Bool)

(assert (=> b!3918946 (= e!2423083 e!2423084)))

(declare-fun res!1585239 () Bool)

(assert (=> b!3918946 (=> (not res!1585239) (not e!2423084))))

(assert (=> b!3918946 (= res!1585239 (not ((_ is Nil!41527) lt!1365445)))))

(assert (= (and d!1162589 (not res!1585238)) b!3918946))

(assert (= (and b!3918946 res!1585239) b!3918947))

(assert (= (and b!3918947 res!1585236) b!3918948))

(assert (= (and d!1162589 (not res!1585237)) b!3918949))

(declare-fun m!4482699 () Bool)

(assert (=> b!3918949 m!4482699))

(assert (=> b!3918949 m!4482459))

(declare-fun m!4482701 () Bool)

(assert (=> b!3918948 m!4482701))

(declare-fun m!4482703 () Bool)

(assert (=> b!3918948 m!4482703))

(assert (=> b!3918948 m!4482701))

(assert (=> b!3918948 m!4482703))

(declare-fun m!4482705 () Bool)

(assert (=> b!3918948 m!4482705))

(declare-fun m!4482707 () Bool)

(assert (=> b!3918947 m!4482707))

(declare-fun m!4482709 () Bool)

(assert (=> b!3918947 m!4482709))

(assert (=> b!3918687 d!1162589))

(declare-fun b!3918950 () Bool)

(declare-fun e!2423085 () Bool)

(declare-fun lt!1365528 () tuple2!40788)

(assert (=> b!3918950 (= e!2423085 (= (_2!23528 lt!1365528) (_2!23527 (v!39213 lt!1365439))))))

(declare-fun b!3918951 () Bool)

(declare-fun e!2423086 () tuple2!40788)

(assert (=> b!3918951 (= e!2423086 (tuple2!40789 Nil!41529 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun b!3918952 () Bool)

(declare-fun lt!1365527 () Option!8888)

(declare-fun lt!1365529 () tuple2!40788)

(assert (=> b!3918952 (= e!2423086 (tuple2!40789 (Cons!41529 (_1!23527 (v!39213 lt!1365527)) (_1!23528 lt!1365529)) (_2!23528 lt!1365529)))))

(assert (=> b!3918952 (= lt!1365529 (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365527))))))

(declare-fun b!3918953 () Bool)

(declare-fun e!2423087 () Bool)

(assert (=> b!3918953 (= e!2423087 (not (isEmpty!24718 (_1!23528 lt!1365528))))))

(declare-fun b!3918954 () Bool)

(assert (=> b!3918954 (= e!2423085 e!2423087)))

(declare-fun res!1585240 () Bool)

(assert (=> b!3918954 (= res!1585240 (< (size!31181 (_2!23528 lt!1365528)) (size!31181 (_2!23527 (v!39213 lt!1365439)))))))

(assert (=> b!3918954 (=> (not res!1585240) (not e!2423087))))

(declare-fun d!1162593 () Bool)

(assert (=> d!1162593 e!2423085))

(declare-fun c!681137 () Bool)

(assert (=> d!1162593 (= c!681137 (> (size!31184 (_1!23528 lt!1365528)) 0))))

(assert (=> d!1162593 (= lt!1365528 e!2423086)))

(declare-fun c!681138 () Bool)

(assert (=> d!1162593 (= c!681138 ((_ is Some!8887) lt!1365527))))

(assert (=> d!1162593 (= lt!1365527 (maxPrefix!3361 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162593 (= (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365439))) lt!1365528)))

(assert (= (and d!1162593 c!681138) b!3918952))

(assert (= (and d!1162593 (not c!681138)) b!3918951))

(assert (= (and d!1162593 c!681137) b!3918954))

(assert (= (and d!1162593 (not c!681137)) b!3918950))

(assert (= (and b!3918954 res!1585240) b!3918953))

(declare-fun m!4482711 () Bool)

(assert (=> b!3918952 m!4482711))

(declare-fun m!4482713 () Bool)

(assert (=> b!3918953 m!4482713))

(declare-fun m!4482715 () Bool)

(assert (=> b!3918954 m!4482715))

(assert (=> b!3918954 m!4482367))

(declare-fun m!4482717 () Bool)

(assert (=> d!1162593 m!4482717))

(declare-fun m!4482719 () Bool)

(assert (=> d!1162593 m!4482719))

(assert (=> b!3918687 d!1162593))

(declare-fun d!1162595 () Bool)

(assert (=> d!1162595 (ruleValid!2416 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))

(declare-fun lt!1365532 () Unit!59665)

(declare-fun choose!23216 (LexerInterface!6057 Rule!12736 List!41654) Unit!59665)

(assert (=> d!1162595 (= lt!1365532 (choose!23216 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) rules!2768))))

(declare-fun contains!8347 (List!41654 Rule!12736) Bool)

(assert (=> d!1162595 (contains!8347 rules!2768 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162595 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1496 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) rules!2768) lt!1365532)))

(declare-fun bs!585820 () Bool)

(assert (= bs!585820 d!1162595))

(assert (=> bs!585820 m!4482451))

(declare-fun m!4482721 () Bool)

(assert (=> bs!585820 m!4482721))

(declare-fun m!4482723 () Bool)

(assert (=> bs!585820 m!4482723))

(assert (=> b!3918687 d!1162595))

(declare-fun d!1162597 () Bool)

(assert (=> d!1162597 (= (size!31182 (_1!23527 (v!39213 lt!1365439))) (size!31181 (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439)))))))

(declare-fun Unit!59667 () Unit!59665)

(assert (=> d!1162597 (= (lemmaCharactersSize!1125 (_1!23527 (v!39213 lt!1365439))) Unit!59667)))

(declare-fun bs!585821 () Bool)

(assert (= bs!585821 d!1162597))

(assert (=> bs!585821 m!4482401))

(assert (=> b!3918687 d!1162597))

(declare-fun d!1162599 () Bool)

(declare-fun lt!1365533 () Int)

(assert (=> d!1162599 (>= lt!1365533 0)))

(declare-fun e!2423088 () Int)

(assert (=> d!1162599 (= lt!1365533 e!2423088)))

(declare-fun c!681139 () Bool)

(assert (=> d!1162599 (= c!681139 ((_ is Nil!41527) lt!1365450))))

(assert (=> d!1162599 (= (size!31181 lt!1365450) lt!1365533)))

(declare-fun b!3918955 () Bool)

(assert (=> b!3918955 (= e!2423088 0)))

(declare-fun b!3918956 () Bool)

(assert (=> b!3918956 (= e!2423088 (+ 1 (size!31181 (t!324282 lt!1365450))))))

(assert (= (and d!1162599 c!681139) b!3918955))

(assert (= (and d!1162599 (not c!681139)) b!3918956))

(declare-fun m!4482725 () Bool)

(assert (=> b!3918956 m!4482725))

(assert (=> b!3918687 d!1162599))

(declare-fun d!1162601 () Bool)

(declare-fun res!1585245 () Bool)

(declare-fun e!2423091 () Bool)

(assert (=> d!1162601 (=> (not res!1585245) (not e!2423091))))

(declare-fun validRegex!5182 (Regex!11373) Bool)

(assert (=> d!1162601 (= res!1585245 (validRegex!5182 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))))

(assert (=> d!1162601 (= (ruleValid!2416 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) e!2423091)))

(declare-fun b!3918961 () Bool)

(declare-fun res!1585246 () Bool)

(assert (=> b!3918961 (=> (not res!1585246) (not e!2423091))))

(declare-fun nullable!3983 (Regex!11373) Bool)

(assert (=> b!3918961 (= res!1585246 (not (nullable!3983 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))))

(declare-fun b!3918962 () Bool)

(assert (=> b!3918962 (= e!2423091 (not (= (tag!7328 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (String!47209 ""))))))

(assert (= (and d!1162601 res!1585245) b!3918961))

(assert (= (and b!3918961 res!1585246) b!3918962))

(declare-fun m!4482729 () Bool)

(assert (=> d!1162601 m!4482729))

(declare-fun m!4482731 () Bool)

(assert (=> b!3918961 m!4482731))

(assert (=> b!3918687 d!1162601))

(declare-fun d!1162609 () Bool)

(declare-fun list!15442 (Conc!12679) List!41651)

(assert (=> d!1162609 (= (list!15441 (charsOf!4292 (_1!23527 (v!39213 lt!1365439)))) (list!15442 (c!681075 (charsOf!4292 (_1!23527 (v!39213 lt!1365439))))))))

(declare-fun bs!585823 () Bool)

(assert (= bs!585823 d!1162609))

(declare-fun m!4482737 () Bool)

(assert (=> bs!585823 m!4482737))

(assert (=> b!3918687 d!1162609))

(declare-fun d!1162613 () Bool)

(declare-fun lt!1365539 () BalanceConc!24952)

(assert (=> d!1162613 (= (list!15441 lt!1365539) (originalCharacters!7068 (_1!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162613 (= lt!1365539 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))) (value!204972 (_1!23527 (v!39213 lt!1365439)))))))

(assert (=> d!1162613 (= (charsOf!4292 (_1!23527 (v!39213 lt!1365439))) lt!1365539)))

(declare-fun b_lambda!114757 () Bool)

(assert (=> (not b_lambda!114757) (not d!1162613)))

(declare-fun tb!233939 () Bool)

(declare-fun t!324317 () Bool)

(assert (=> (and b!3918681 (= (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324317) tb!233939))

(declare-fun b!3918970 () Bool)

(declare-fun e!2423098 () Bool)

(declare-fun tp!1192747 () Bool)

(assert (=> b!3918970 (= e!2423098 (and (inv!55730 (c!681075 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))) (value!204972 (_1!23527 (v!39213 lt!1365439)))))) tp!1192747))))

(declare-fun result!283474 () Bool)

(assert (=> tb!233939 (= result!283474 (and (inv!55731 (dynLambda!17844 (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))) (value!204972 (_1!23527 (v!39213 lt!1365439))))) e!2423098))))

(assert (= tb!233939 b!3918970))

(declare-fun m!4482755 () Bool)

(assert (=> b!3918970 m!4482755))

(declare-fun m!4482757 () Bool)

(assert (=> tb!233939 m!4482757))

(assert (=> d!1162613 t!324317))

(declare-fun b_and!298613 () Bool)

(assert (= b_and!298595 (and (=> t!324317 result!283474) b_and!298613)))

(declare-fun tb!233941 () Bool)

(declare-fun t!324319 () Bool)

(assert (=> (and b!3918664 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324319) tb!233941))

(declare-fun result!283476 () Bool)

(assert (= result!283476 result!283474))

(assert (=> d!1162613 t!324319))

(declare-fun b_and!298615 () Bool)

(assert (= b_and!298597 (and (=> t!324319 result!283476) b_and!298615)))

(declare-fun tb!233943 () Bool)

(declare-fun t!324321 () Bool)

(assert (=> (and b!3918694 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324321) tb!233943))

(declare-fun result!283478 () Bool)

(assert (= result!283478 result!283474))

(assert (=> d!1162613 t!324321))

(declare-fun b_and!298617 () Bool)

(assert (= b_and!298599 (and (=> t!324321 result!283478) b_and!298617)))

(declare-fun m!4482759 () Bool)

(assert (=> d!1162613 m!4482759))

(declare-fun m!4482761 () Bool)

(assert (=> d!1162613 m!4482761))

(assert (=> b!3918687 d!1162613))

(declare-fun d!1162625 () Bool)

(declare-fun lt!1365542 () List!41651)

(assert (=> d!1162625 (= (++!10694 lt!1365450 lt!1365542) lt!1365447)))

(declare-fun e!2423101 () List!41651)

(assert (=> d!1162625 (= lt!1365542 e!2423101)))

(declare-fun c!681142 () Bool)

(assert (=> d!1162625 (= c!681142 ((_ is Cons!41527) lt!1365450))))

(assert (=> d!1162625 (>= (size!31181 lt!1365447) (size!31181 lt!1365450))))

(assert (=> d!1162625 (= (getSuffix!2018 lt!1365447 lt!1365450) lt!1365542)))

(declare-fun b!3918975 () Bool)

(assert (=> b!3918975 (= e!2423101 (getSuffix!2018 (tail!6005 lt!1365447) (t!324282 lt!1365450)))))

(declare-fun b!3918976 () Bool)

(assert (=> b!3918976 (= e!2423101 lt!1365447)))

(assert (= (and d!1162625 c!681142) b!3918975))

(assert (= (and d!1162625 (not c!681142)) b!3918976))

(declare-fun m!4482763 () Bool)

(assert (=> d!1162625 m!4482763))

(assert (=> d!1162625 m!4482385))

(assert (=> d!1162625 m!4482459))

(declare-fun m!4482765 () Bool)

(assert (=> b!3918975 m!4482765))

(assert (=> b!3918975 m!4482765))

(declare-fun m!4482767 () Bool)

(assert (=> b!3918975 m!4482767))

(assert (=> b!3918687 d!1162625))

(declare-fun d!1162627 () Bool)

(assert (=> d!1162627 (isPrefix!3563 lt!1365450 (++!10694 lt!1365450 (_2!23527 (v!39213 lt!1365439))))))

(declare-fun lt!1365545 () Unit!59665)

(declare-fun choose!23218 (List!41651 List!41651) Unit!59665)

(assert (=> d!1162627 (= lt!1365545 (choose!23218 lt!1365450 (_2!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162627 (= (lemmaConcatTwoListThenFirstIsPrefix!2426 lt!1365450 (_2!23527 (v!39213 lt!1365439))) lt!1365545)))

(declare-fun bs!585824 () Bool)

(assert (= bs!585824 d!1162627))

(assert (=> bs!585824 m!4482439))

(assert (=> bs!585824 m!4482439))

(declare-fun m!4482769 () Bool)

(assert (=> bs!585824 m!4482769))

(declare-fun m!4482771 () Bool)

(assert (=> bs!585824 m!4482771))

(assert (=> b!3918687 d!1162627))

(declare-fun d!1162629 () Bool)

(assert (=> d!1162629 (= (_2!23527 (v!39213 lt!1365439)) lt!1365449)))

(declare-fun lt!1365548 () Unit!59665)

(declare-fun choose!23219 (List!41651 List!41651 List!41651 List!41651 List!41651) Unit!59665)

(assert (=> d!1162629 (= lt!1365548 (choose!23219 lt!1365450 (_2!23527 (v!39213 lt!1365439)) lt!1365450 lt!1365449 lt!1365447))))

(assert (=> d!1162629 (isPrefix!3563 lt!1365450 lt!1365447)))

(assert (=> d!1162629 (= (lemmaSamePrefixThenSameSuffix!1784 lt!1365450 (_2!23527 (v!39213 lt!1365439)) lt!1365450 lt!1365449 lt!1365447) lt!1365548)))

(declare-fun bs!585825 () Bool)

(assert (= bs!585825 d!1162629))

(declare-fun m!4482773 () Bool)

(assert (=> bs!585825 m!4482773))

(declare-fun m!4482775 () Bool)

(assert (=> bs!585825 m!4482775))

(assert (=> b!3918687 d!1162629))

(declare-fun d!1162631 () Bool)

(assert (=> d!1162631 (= (inv!55723 (tag!7328 (rule!9396 (h!46949 suffixTokens!72)))) (= (mod (str.len (value!204971 (tag!7328 (rule!9396 (h!46949 suffixTokens!72))))) 2) 0))))

(assert (=> b!3918666 d!1162631))

(declare-fun d!1162633 () Bool)

(declare-fun res!1585253 () Bool)

(declare-fun e!2423102 () Bool)

(assert (=> d!1162633 (=> (not res!1585253) (not e!2423102))))

(assert (=> d!1162633 (= res!1585253 (semiInverseModEq!2783 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toValue!8920 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))))))

(assert (=> d!1162633 (= (inv!55726 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) e!2423102)))

(declare-fun b!3918977 () Bool)

(assert (=> b!3918977 (= e!2423102 (equivClasses!2682 (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toValue!8920 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))))))

(assert (= (and d!1162633 res!1585253) b!3918977))

(declare-fun m!4482777 () Bool)

(assert (=> d!1162633 m!4482777))

(declare-fun m!4482779 () Bool)

(assert (=> b!3918977 m!4482779))

(assert (=> b!3918666 d!1162633))

(declare-fun d!1162635 () Bool)

(assert (=> d!1162635 (= (isEmpty!24719 rules!2768) ((_ is Nil!41530) rules!2768))))

(assert (=> b!3918684 d!1162635))

(declare-fun b!3918978 () Bool)

(declare-fun e!2423103 () Bool)

(declare-fun lt!1365550 () tuple2!40788)

(assert (=> b!3918978 (= e!2423103 (= (_2!23528 lt!1365550) lt!1365447))))

(declare-fun b!3918979 () Bool)

(declare-fun e!2423104 () tuple2!40788)

(assert (=> b!3918979 (= e!2423104 (tuple2!40789 Nil!41529 lt!1365447))))

(declare-fun b!3918980 () Bool)

(declare-fun lt!1365549 () Option!8888)

(declare-fun lt!1365551 () tuple2!40788)

(assert (=> b!3918980 (= e!2423104 (tuple2!40789 (Cons!41529 (_1!23527 (v!39213 lt!1365549)) (_1!23528 lt!1365551)) (_2!23528 lt!1365551)))))

(assert (=> b!3918980 (= lt!1365551 (lexList!1825 thiss!20629 rules!2768 (_2!23527 (v!39213 lt!1365549))))))

(declare-fun b!3918981 () Bool)

(declare-fun e!2423105 () Bool)

(assert (=> b!3918981 (= e!2423105 (not (isEmpty!24718 (_1!23528 lt!1365550))))))

(declare-fun b!3918982 () Bool)

(assert (=> b!3918982 (= e!2423103 e!2423105)))

(declare-fun res!1585254 () Bool)

(assert (=> b!3918982 (= res!1585254 (< (size!31181 (_2!23528 lt!1365550)) (size!31181 lt!1365447)))))

(assert (=> b!3918982 (=> (not res!1585254) (not e!2423105))))

(declare-fun d!1162637 () Bool)

(assert (=> d!1162637 e!2423103))

(declare-fun c!681143 () Bool)

(assert (=> d!1162637 (= c!681143 (> (size!31184 (_1!23528 lt!1365550)) 0))))

(assert (=> d!1162637 (= lt!1365550 e!2423104)))

(declare-fun c!681144 () Bool)

(assert (=> d!1162637 (= c!681144 ((_ is Some!8887) lt!1365549))))

(assert (=> d!1162637 (= lt!1365549 (maxPrefix!3361 thiss!20629 rules!2768 lt!1365447))))

(assert (=> d!1162637 (= (lexList!1825 thiss!20629 rules!2768 lt!1365447) lt!1365550)))

(assert (= (and d!1162637 c!681144) b!3918980))

(assert (= (and d!1162637 (not c!681144)) b!3918979))

(assert (= (and d!1162637 c!681143) b!3918982))

(assert (= (and d!1162637 (not c!681143)) b!3918978))

(assert (= (and b!3918982 res!1585254) b!3918981))

(declare-fun m!4482781 () Bool)

(assert (=> b!3918980 m!4482781))

(declare-fun m!4482783 () Bool)

(assert (=> b!3918981 m!4482783))

(declare-fun m!4482785 () Bool)

(assert (=> b!3918982 m!4482785))

(assert (=> b!3918982 m!4482385))

(declare-fun m!4482787 () Bool)

(assert (=> d!1162637 m!4482787))

(assert (=> d!1162637 m!4482409))

(assert (=> b!3918683 d!1162637))

(declare-fun d!1162639 () Bool)

(declare-fun e!2423107 () Bool)

(assert (=> d!1162639 e!2423107))

(declare-fun res!1585255 () Bool)

(assert (=> d!1162639 (=> (not res!1585255) (not e!2423107))))

(declare-fun lt!1365552 () List!41653)

(assert (=> d!1162639 (= res!1585255 (= (content!6251 lt!1365552) ((_ map or) (content!6251 prefixTokens!80) (content!6251 suffixTokens!72))))))

(declare-fun e!2423106 () List!41653)

(assert (=> d!1162639 (= lt!1365552 e!2423106)))

(declare-fun c!681145 () Bool)

(assert (=> d!1162639 (= c!681145 ((_ is Nil!41529) prefixTokens!80))))

(assert (=> d!1162639 (= (++!10693 prefixTokens!80 suffixTokens!72) lt!1365552)))

(declare-fun b!3918983 () Bool)

(assert (=> b!3918983 (= e!2423106 suffixTokens!72)))

(declare-fun b!3918985 () Bool)

(declare-fun res!1585256 () Bool)

(assert (=> b!3918985 (=> (not res!1585256) (not e!2423107))))

(assert (=> b!3918985 (= res!1585256 (= (size!31184 lt!1365552) (+ (size!31184 prefixTokens!80) (size!31184 suffixTokens!72))))))

(declare-fun b!3918986 () Bool)

(assert (=> b!3918986 (= e!2423107 (or (not (= suffixTokens!72 Nil!41529)) (= lt!1365552 prefixTokens!80)))))

(declare-fun b!3918984 () Bool)

(assert (=> b!3918984 (= e!2423106 (Cons!41529 (h!46949 prefixTokens!80) (++!10693 (t!324284 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1162639 c!681145) b!3918983))

(assert (= (and d!1162639 (not c!681145)) b!3918984))

(assert (= (and d!1162639 res!1585255) b!3918985))

(assert (= (and b!3918985 res!1585256) b!3918986))

(declare-fun m!4482789 () Bool)

(assert (=> d!1162639 m!4482789))

(declare-fun m!4482791 () Bool)

(assert (=> d!1162639 m!4482791))

(assert (=> d!1162639 m!4482569))

(declare-fun m!4482793 () Bool)

(assert (=> b!3918985 m!4482793))

(declare-fun m!4482795 () Bool)

(assert (=> b!3918985 m!4482795))

(assert (=> b!3918985 m!4482575))

(declare-fun m!4482797 () Bool)

(assert (=> b!3918984 m!4482797))

(assert (=> b!3918683 d!1162639))

(declare-fun b!3918987 () Bool)

(declare-fun e!2423108 () List!41651)

(assert (=> b!3918987 (= e!2423108 suffix!1176)))

(declare-fun d!1162641 () Bool)

(declare-fun e!2423109 () Bool)

(assert (=> d!1162641 e!2423109))

(declare-fun res!1585258 () Bool)

(assert (=> d!1162641 (=> (not res!1585258) (not e!2423109))))

(declare-fun lt!1365553 () List!41651)

(assert (=> d!1162641 (= res!1585258 (= (content!6252 lt!1365553) ((_ map or) (content!6252 prefix!426) (content!6252 suffix!1176))))))

(assert (=> d!1162641 (= lt!1365553 e!2423108)))

(declare-fun c!681146 () Bool)

(assert (=> d!1162641 (= c!681146 ((_ is Nil!41527) prefix!426))))

(assert (=> d!1162641 (= (++!10694 prefix!426 suffix!1176) lt!1365553)))

(declare-fun b!3918989 () Bool)

(declare-fun res!1585257 () Bool)

(assert (=> b!3918989 (=> (not res!1585257) (not e!2423109))))

(assert (=> b!3918989 (= res!1585257 (= (size!31181 lt!1365553) (+ (size!31181 prefix!426) (size!31181 suffix!1176))))))

(declare-fun b!3918988 () Bool)

(assert (=> b!3918988 (= e!2423108 (Cons!41527 (h!46947 prefix!426) (++!10694 (t!324282 prefix!426) suffix!1176)))))

(declare-fun b!3918990 () Bool)

(assert (=> b!3918990 (= e!2423109 (or (not (= suffix!1176 Nil!41527)) (= lt!1365553 prefix!426)))))

(assert (= (and d!1162641 c!681146) b!3918987))

(assert (= (and d!1162641 (not c!681146)) b!3918988))

(assert (= (and d!1162641 res!1585258) b!3918989))

(assert (= (and b!3918989 res!1585257) b!3918990))

(declare-fun m!4482799 () Bool)

(assert (=> d!1162641 m!4482799))

(declare-fun m!4482801 () Bool)

(assert (=> d!1162641 m!4482801))

(declare-fun m!4482803 () Bool)

(assert (=> d!1162641 m!4482803))

(declare-fun m!4482805 () Bool)

(assert (=> b!3918989 m!4482805))

(assert (=> b!3918989 m!4482413))

(assert (=> b!3918989 m!4482365))

(declare-fun m!4482807 () Bool)

(assert (=> b!3918988 m!4482807))

(assert (=> b!3918683 d!1162641))

(declare-fun b!3919046 () Bool)

(declare-fun e!2423134 () Bool)

(declare-fun lt!1365571 () Bool)

(assert (=> b!3919046 (= e!2423134 (not lt!1365571))))

(declare-fun b!3919047 () Bool)

(declare-fun res!1585302 () Bool)

(declare-fun e!2423135 () Bool)

(assert (=> b!3919047 (=> res!1585302 e!2423135)))

(declare-fun e!2423136 () Bool)

(assert (=> b!3919047 (= res!1585302 e!2423136)))

(declare-fun res!1585298 () Bool)

(assert (=> b!3919047 (=> (not res!1585298) (not e!2423136))))

(assert (=> b!3919047 (= res!1585298 lt!1365571)))

(declare-fun b!3919048 () Bool)

(declare-fun e!2423138 () Bool)

(assert (=> b!3919048 (= e!2423138 (not (= (head!8289 lt!1365450) (c!681074 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))))))

(declare-fun b!3919049 () Bool)

(declare-fun e!2423133 () Bool)

(declare-fun derivativeStep!3448 (Regex!11373 C!22932) Regex!11373)

(assert (=> b!3919049 (= e!2423133 (matchR!5462 (derivativeStep!3448 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (head!8289 lt!1365450)) (tail!6005 lt!1365450)))))

(declare-fun b!3919050 () Bool)

(declare-fun e!2423139 () Bool)

(assert (=> b!3919050 (= e!2423139 e!2423138)))

(declare-fun res!1585303 () Bool)

(assert (=> b!3919050 (=> res!1585303 e!2423138)))

(declare-fun call!284575 () Bool)

(assert (=> b!3919050 (= res!1585303 call!284575)))

(declare-fun b!3919051 () Bool)

(declare-fun e!2423137 () Bool)

(assert (=> b!3919051 (= e!2423137 e!2423134)))

(declare-fun c!681156 () Bool)

(assert (=> b!3919051 (= c!681156 ((_ is EmptyLang!11373) (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))))

(declare-fun b!3919052 () Bool)

(assert (=> b!3919052 (= e!2423133 (nullable!3983 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))))

(declare-fun b!3919053 () Bool)

(assert (=> b!3919053 (= e!2423137 (= lt!1365571 call!284575))))

(declare-fun bm!284570 () Bool)

(assert (=> bm!284570 (= call!284575 (isEmpty!24720 lt!1365450))))

(declare-fun b!3919054 () Bool)

(declare-fun res!1585299 () Bool)

(assert (=> b!3919054 (=> (not res!1585299) (not e!2423136))))

(assert (=> b!3919054 (= res!1585299 (isEmpty!24720 (tail!6005 lt!1365450)))))

(declare-fun d!1162643 () Bool)

(assert (=> d!1162643 e!2423137))

(declare-fun c!681158 () Bool)

(assert (=> d!1162643 (= c!681158 ((_ is EmptyExpr!11373) (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))))

(assert (=> d!1162643 (= lt!1365571 e!2423133)))

(declare-fun c!681157 () Bool)

(assert (=> d!1162643 (= c!681157 (isEmpty!24720 lt!1365450))))

(assert (=> d!1162643 (validRegex!5182 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))

(assert (=> d!1162643 (= (matchR!5462 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) lt!1365450) lt!1365571)))

(declare-fun b!3919055 () Bool)

(assert (=> b!3919055 (= e!2423135 e!2423139)))

(declare-fun res!1585297 () Bool)

(assert (=> b!3919055 (=> (not res!1585297) (not e!2423139))))

(assert (=> b!3919055 (= res!1585297 (not lt!1365571))))

(declare-fun b!3919056 () Bool)

(assert (=> b!3919056 (= e!2423136 (= (head!8289 lt!1365450) (c!681074 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))))

(declare-fun b!3919057 () Bool)

(declare-fun res!1585296 () Bool)

(assert (=> b!3919057 (=> res!1585296 e!2423135)))

(assert (=> b!3919057 (= res!1585296 (not ((_ is ElementMatch!11373) (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))))

(assert (=> b!3919057 (= e!2423134 e!2423135)))

(declare-fun b!3919058 () Bool)

(declare-fun res!1585300 () Bool)

(assert (=> b!3919058 (=> res!1585300 e!2423138)))

(assert (=> b!3919058 (= res!1585300 (not (isEmpty!24720 (tail!6005 lt!1365450))))))

(declare-fun b!3919059 () Bool)

(declare-fun res!1585301 () Bool)

(assert (=> b!3919059 (=> (not res!1585301) (not e!2423136))))

(assert (=> b!3919059 (= res!1585301 (not call!284575))))

(assert (= (and d!1162643 c!681157) b!3919052))

(assert (= (and d!1162643 (not c!681157)) b!3919049))

(assert (= (and d!1162643 c!681158) b!3919053))

(assert (= (and d!1162643 (not c!681158)) b!3919051))

(assert (= (and b!3919051 c!681156) b!3919046))

(assert (= (and b!3919051 (not c!681156)) b!3919057))

(assert (= (and b!3919057 (not res!1585296)) b!3919047))

(assert (= (and b!3919047 res!1585298) b!3919059))

(assert (= (and b!3919059 res!1585301) b!3919054))

(assert (= (and b!3919054 res!1585299) b!3919056))

(assert (= (and b!3919047 (not res!1585302)) b!3919055))

(assert (= (and b!3919055 res!1585297) b!3919050))

(assert (= (and b!3919050 (not res!1585303)) b!3919058))

(assert (= (and b!3919058 (not res!1585300)) b!3919048))

(assert (= (or b!3919053 b!3919050 b!3919059) bm!284570))

(assert (=> b!3919049 m!4482707))

(assert (=> b!3919049 m!4482707))

(declare-fun m!4482841 () Bool)

(assert (=> b!3919049 m!4482841))

(assert (=> b!3919049 m!4482701))

(assert (=> b!3919049 m!4482841))

(assert (=> b!3919049 m!4482701))

(declare-fun m!4482843 () Bool)

(assert (=> b!3919049 m!4482843))

(assert (=> b!3919056 m!4482707))

(assert (=> b!3919054 m!4482701))

(assert (=> b!3919054 m!4482701))

(declare-fun m!4482845 () Bool)

(assert (=> b!3919054 m!4482845))

(assert (=> b!3919052 m!4482731))

(assert (=> b!3919058 m!4482701))

(assert (=> b!3919058 m!4482701))

(assert (=> b!3919058 m!4482845))

(assert (=> b!3919048 m!4482707))

(declare-fun m!4482847 () Bool)

(assert (=> bm!284570 m!4482847))

(assert (=> d!1162643 m!4482847))

(assert (=> d!1162643 m!4482729))

(assert (=> b!3918685 d!1162643))

(declare-fun b!3919217 () Bool)

(declare-fun e!2423248 () Option!8888)

(assert (=> b!3919217 (= e!2423248 None!8887)))

(declare-fun b!3919218 () Bool)

(declare-datatypes ((tuple2!40792 0))(
  ( (tuple2!40793 (_1!23530 List!41651) (_2!23530 List!41651)) )
))
(declare-fun lt!1365614 () tuple2!40792)

(declare-fun size!31186 (BalanceConc!24952) Int)

(assert (=> b!3919218 (= e!2423248 (Some!8887 (tuple2!40787 (Token!12075 (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (seqFromList!4735 (_1!23530 lt!1365614))) (rule!9396 (_1!23527 (v!39213 lt!1365439))) (size!31186 (seqFromList!4735 (_1!23530 lt!1365614))) (_1!23530 lt!1365614)) (_2!23530 lt!1365614))))))

(declare-fun lt!1365617 () Unit!59665)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1217 (Regex!11373 List!41651) Unit!59665)

(assert (=> b!3919218 (= lt!1365617 (longestMatchIsAcceptedByMatchOrIsEmpty!1217 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) lt!1365447))))

(declare-fun res!1585356 () Bool)

(declare-fun findLongestMatchInner!1244 (Regex!11373 List!41651 Int List!41651 List!41651 Int) tuple2!40792)

(assert (=> b!3919218 (= res!1585356 (isEmpty!24720 (_1!23530 (findLongestMatchInner!1244 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) Nil!41527 (size!31181 Nil!41527) lt!1365447 lt!1365447 (size!31181 lt!1365447)))))))

(declare-fun e!2423247 () Bool)

(assert (=> b!3919218 (=> res!1585356 e!2423247)))

(assert (=> b!3919218 e!2423247))

(declare-fun lt!1365615 () Unit!59665)

(assert (=> b!3919218 (= lt!1365615 lt!1365617)))

(declare-fun lt!1365616 () Unit!59665)

(declare-fun lemmaSemiInverse!1750 (TokenValueInjection!12824 BalanceConc!24952) Unit!59665)

(assert (=> b!3919218 (= lt!1365616 (lemmaSemiInverse!1750 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (seqFromList!4735 (_1!23530 lt!1365614))))))

(declare-fun d!1162647 () Bool)

(declare-fun e!2423246 () Bool)

(assert (=> d!1162647 e!2423246))

(declare-fun res!1585355 () Bool)

(assert (=> d!1162647 (=> res!1585355 e!2423246)))

(declare-fun lt!1365618 () Option!8888)

(declare-fun isEmpty!24722 (Option!8888) Bool)

(assert (=> d!1162647 (= res!1585355 (isEmpty!24722 lt!1365618))))

(assert (=> d!1162647 (= lt!1365618 e!2423248)))

(declare-fun c!681183 () Bool)

(assert (=> d!1162647 (= c!681183 (isEmpty!24720 (_1!23530 lt!1365614)))))

(declare-fun findLongestMatch!1157 (Regex!11373 List!41651) tuple2!40792)

(assert (=> d!1162647 (= lt!1365614 (findLongestMatch!1157 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) lt!1365447))))

(assert (=> d!1162647 (ruleValid!2416 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))))))

(assert (=> d!1162647 (= (maxPrefixOneRule!2431 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) lt!1365447) lt!1365618)))

(declare-fun b!3919219 () Bool)

(declare-fun res!1585351 () Bool)

(declare-fun e!2423245 () Bool)

(assert (=> b!3919219 (=> (not res!1585351) (not e!2423245))))

(assert (=> b!3919219 (= res!1585351 (= (value!204972 (_1!23527 (get!13722 lt!1365618))) (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (get!13722 lt!1365618)))) (seqFromList!4735 (originalCharacters!7068 (_1!23527 (get!13722 lt!1365618)))))))))

(declare-fun b!3919220 () Bool)

(assert (=> b!3919220 (= e!2423246 e!2423245)))

(declare-fun res!1585353 () Bool)

(assert (=> b!3919220 (=> (not res!1585353) (not e!2423245))))

(assert (=> b!3919220 (= res!1585353 (matchR!5462 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (list!15441 (charsOf!4292 (_1!23527 (get!13722 lt!1365618))))))))

(declare-fun b!3919221 () Bool)

(assert (=> b!3919221 (= e!2423245 (= (size!31182 (_1!23527 (get!13722 lt!1365618))) (size!31181 (originalCharacters!7068 (_1!23527 (get!13722 lt!1365618))))))))

(declare-fun b!3919222 () Bool)

(declare-fun res!1585350 () Bool)

(assert (=> b!3919222 (=> (not res!1585350) (not e!2423245))))

(assert (=> b!3919222 (= res!1585350 (= (rule!9396 (_1!23527 (get!13722 lt!1365618))) (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))

(declare-fun b!3919223 () Bool)

(assert (=> b!3919223 (= e!2423247 (matchR!5462 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (_1!23530 (findLongestMatchInner!1244 (regex!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) Nil!41527 (size!31181 Nil!41527) lt!1365447 lt!1365447 (size!31181 lt!1365447)))))))

(declare-fun b!3919224 () Bool)

(declare-fun res!1585354 () Bool)

(assert (=> b!3919224 (=> (not res!1585354) (not e!2423245))))

(assert (=> b!3919224 (= res!1585354 (= (++!10694 (list!15441 (charsOf!4292 (_1!23527 (get!13722 lt!1365618)))) (_2!23527 (get!13722 lt!1365618))) lt!1365447))))

(declare-fun b!3919225 () Bool)

(declare-fun res!1585352 () Bool)

(assert (=> b!3919225 (=> (not res!1585352) (not e!2423245))))

(assert (=> b!3919225 (= res!1585352 (< (size!31181 (_2!23527 (get!13722 lt!1365618))) (size!31181 lt!1365447)))))

(assert (= (and d!1162647 c!681183) b!3919217))

(assert (= (and d!1162647 (not c!681183)) b!3919218))

(assert (= (and b!3919218 (not res!1585356)) b!3919223))

(assert (= (and d!1162647 (not res!1585355)) b!3919220))

(assert (= (and b!3919220 res!1585353) b!3919224))

(assert (= (and b!3919224 res!1585354) b!3919225))

(assert (= (and b!3919225 res!1585352) b!3919222))

(assert (= (and b!3919222 res!1585350) b!3919219))

(assert (= (and b!3919219 res!1585351) b!3919221))

(declare-fun m!4482995 () Bool)

(assert (=> b!3919222 m!4482995))

(declare-fun m!4482997 () Bool)

(assert (=> b!3919218 m!4482997))

(declare-fun m!4482999 () Bool)

(assert (=> b!3919218 m!4482999))

(declare-fun m!4483001 () Bool)

(assert (=> b!3919218 m!4483001))

(assert (=> b!3919218 m!4482999))

(declare-fun m!4483003 () Bool)

(assert (=> b!3919218 m!4483003))

(declare-fun m!4483005 () Bool)

(assert (=> b!3919218 m!4483005))

(assert (=> b!3919218 m!4482385))

(assert (=> b!3919218 m!4482999))

(declare-fun m!4483007 () Bool)

(assert (=> b!3919218 m!4483007))

(assert (=> b!3919218 m!4483005))

(assert (=> b!3919218 m!4482385))

(declare-fun m!4483009 () Bool)

(assert (=> b!3919218 m!4483009))

(assert (=> b!3919218 m!4482999))

(declare-fun m!4483011 () Bool)

(assert (=> b!3919218 m!4483011))

(assert (=> b!3919219 m!4482995))

(declare-fun m!4483013 () Bool)

(assert (=> b!3919219 m!4483013))

(assert (=> b!3919219 m!4483013))

(declare-fun m!4483015 () Bool)

(assert (=> b!3919219 m!4483015))

(assert (=> b!3919225 m!4482995))

(declare-fun m!4483017 () Bool)

(assert (=> b!3919225 m!4483017))

(assert (=> b!3919225 m!4482385))

(assert (=> b!3919224 m!4482995))

(declare-fun m!4483019 () Bool)

(assert (=> b!3919224 m!4483019))

(assert (=> b!3919224 m!4483019))

(declare-fun m!4483021 () Bool)

(assert (=> b!3919224 m!4483021))

(assert (=> b!3919224 m!4483021))

(declare-fun m!4483023 () Bool)

(assert (=> b!3919224 m!4483023))

(assert (=> b!3919223 m!4483005))

(assert (=> b!3919223 m!4482385))

(assert (=> b!3919223 m!4483005))

(assert (=> b!3919223 m!4482385))

(assert (=> b!3919223 m!4483009))

(declare-fun m!4483025 () Bool)

(assert (=> b!3919223 m!4483025))

(assert (=> b!3919221 m!4482995))

(declare-fun m!4483027 () Bool)

(assert (=> b!3919221 m!4483027))

(declare-fun m!4483029 () Bool)

(assert (=> d!1162647 m!4483029))

(declare-fun m!4483031 () Bool)

(assert (=> d!1162647 m!4483031))

(declare-fun m!4483033 () Bool)

(assert (=> d!1162647 m!4483033))

(assert (=> d!1162647 m!4482451))

(assert (=> b!3919220 m!4482995))

(assert (=> b!3919220 m!4483019))

(assert (=> b!3919220 m!4483019))

(assert (=> b!3919220 m!4483021))

(assert (=> b!3919220 m!4483021))

(declare-fun m!4483035 () Bool)

(assert (=> b!3919220 m!4483035))

(assert (=> b!3918685 d!1162647))

(declare-fun d!1162699 () Bool)

(assert (=> d!1162699 (= (maxPrefixOneRule!2431 thiss!20629 (rule!9396 (_1!23527 (v!39213 lt!1365439))) lt!1365447) (Some!8887 (tuple2!40787 (Token!12075 (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))) (seqFromList!4735 lt!1365450)) (rule!9396 (_1!23527 (v!39213 lt!1365439))) (size!31181 lt!1365450) lt!1365450) (_2!23527 (v!39213 lt!1365439)))))))

(declare-fun lt!1365621 () Unit!59665)

(declare-fun choose!23222 (LexerInterface!6057 List!41654 List!41651 List!41651 List!41651 Rule!12736) Unit!59665)

(assert (=> d!1162699 (= lt!1365621 (choose!23222 thiss!20629 rules!2768 lt!1365450 lt!1365447 (_2!23527 (v!39213 lt!1365439)) (rule!9396 (_1!23527 (v!39213 lt!1365439)))))))

(assert (=> d!1162699 (not (isEmpty!24719 rules!2768))))

(assert (=> d!1162699 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1299 thiss!20629 rules!2768 lt!1365450 lt!1365447 (_2!23527 (v!39213 lt!1365439)) (rule!9396 (_1!23527 (v!39213 lt!1365439)))) lt!1365621)))

(declare-fun bs!585832 () Bool)

(assert (= bs!585832 d!1162699))

(assert (=> bs!585832 m!4482435))

(assert (=> bs!585832 m!4482457))

(assert (=> bs!585832 m!4482377))

(assert (=> bs!585832 m!4482369))

(assert (=> bs!585832 m!4482435))

(declare-fun m!4483037 () Bool)

(assert (=> bs!585832 m!4483037))

(assert (=> bs!585832 m!4482459))

(assert (=> b!3918685 d!1162699))

(declare-fun d!1162701 () Bool)

(declare-fun lt!1365622 () Int)

(assert (=> d!1162701 (>= lt!1365622 0)))

(declare-fun e!2423249 () Int)

(assert (=> d!1162701 (= lt!1365622 e!2423249)))

(declare-fun c!681184 () Bool)

(assert (=> d!1162701 (= c!681184 ((_ is Nil!41527) lt!1365447))))

(assert (=> d!1162701 (= (size!31181 lt!1365447) lt!1365622)))

(declare-fun b!3919226 () Bool)

(assert (=> b!3919226 (= e!2423249 0)))

(declare-fun b!3919227 () Bool)

(assert (=> b!3919227 (= e!2423249 (+ 1 (size!31181 (t!324282 lt!1365447))))))

(assert (= (and d!1162701 c!681184) b!3919226))

(assert (= (and d!1162701 (not c!681184)) b!3919227))

(declare-fun m!4483039 () Bool)

(assert (=> b!3919227 m!4483039))

(assert (=> b!3918663 d!1162701))

(declare-fun b!3919246 () Bool)

(declare-fun res!1585373 () Bool)

(declare-fun e!2423257 () Bool)

(assert (=> b!3919246 (=> (not res!1585373) (not e!2423257))))

(declare-fun lt!1365637 () Option!8888)

(assert (=> b!3919246 (= res!1585373 (= (value!204972 (_1!23527 (get!13722 lt!1365637))) (apply!9707 (transformation!6468 (rule!9396 (_1!23527 (get!13722 lt!1365637)))) (seqFromList!4735 (originalCharacters!7068 (_1!23527 (get!13722 lt!1365637)))))))))

(declare-fun b!3919247 () Bool)

(declare-fun res!1585372 () Bool)

(assert (=> b!3919247 (=> (not res!1585372) (not e!2423257))))

(assert (=> b!3919247 (= res!1585372 (= (list!15441 (charsOf!4292 (_1!23527 (get!13722 lt!1365637)))) (originalCharacters!7068 (_1!23527 (get!13722 lt!1365637)))))))

(declare-fun b!3919248 () Bool)

(declare-fun res!1585377 () Bool)

(assert (=> b!3919248 (=> (not res!1585377) (not e!2423257))))

(assert (=> b!3919248 (= res!1585377 (< (size!31181 (_2!23527 (get!13722 lt!1365637))) (size!31181 lt!1365447)))))

(declare-fun call!284578 () Option!8888)

(declare-fun bm!284573 () Bool)

(assert (=> bm!284573 (= call!284578 (maxPrefixOneRule!2431 thiss!20629 (h!46950 rules!2768) lt!1365447))))

(declare-fun b!3919250 () Bool)

(assert (=> b!3919250 (= e!2423257 (contains!8347 rules!2768 (rule!9396 (_1!23527 (get!13722 lt!1365637)))))))

(declare-fun b!3919251 () Bool)

(declare-fun res!1585375 () Bool)

(assert (=> b!3919251 (=> (not res!1585375) (not e!2423257))))

(assert (=> b!3919251 (= res!1585375 (matchR!5462 (regex!6468 (rule!9396 (_1!23527 (get!13722 lt!1365637)))) (list!15441 (charsOf!4292 (_1!23527 (get!13722 lt!1365637))))))))

(declare-fun b!3919252 () Bool)

(declare-fun e!2423258 () Option!8888)

(assert (=> b!3919252 (= e!2423258 call!284578)))

(declare-fun d!1162703 () Bool)

(declare-fun e!2423256 () Bool)

(assert (=> d!1162703 e!2423256))

(declare-fun res!1585376 () Bool)

(assert (=> d!1162703 (=> res!1585376 e!2423256)))

(assert (=> d!1162703 (= res!1585376 (isEmpty!24722 lt!1365637))))

(assert (=> d!1162703 (= lt!1365637 e!2423258)))

(declare-fun c!681187 () Bool)

(assert (=> d!1162703 (= c!681187 (and ((_ is Cons!41530) rules!2768) ((_ is Nil!41530) (t!324285 rules!2768))))))

(declare-fun lt!1365636 () Unit!59665)

(declare-fun lt!1365635 () Unit!59665)

(assert (=> d!1162703 (= lt!1365636 lt!1365635)))

(assert (=> d!1162703 (isPrefix!3563 lt!1365447 lt!1365447)))

(declare-fun lemmaIsPrefixRefl!2262 (List!41651 List!41651) Unit!59665)

(assert (=> d!1162703 (= lt!1365635 (lemmaIsPrefixRefl!2262 lt!1365447 lt!1365447))))

(declare-fun rulesValidInductive!2332 (LexerInterface!6057 List!41654) Bool)

(assert (=> d!1162703 (rulesValidInductive!2332 thiss!20629 rules!2768)))

(assert (=> d!1162703 (= (maxPrefix!3361 thiss!20629 rules!2768 lt!1365447) lt!1365637)))

(declare-fun b!3919249 () Bool)

(declare-fun res!1585371 () Bool)

(assert (=> b!3919249 (=> (not res!1585371) (not e!2423257))))

(assert (=> b!3919249 (= res!1585371 (= (++!10694 (list!15441 (charsOf!4292 (_1!23527 (get!13722 lt!1365637)))) (_2!23527 (get!13722 lt!1365637))) lt!1365447))))

(declare-fun b!3919253 () Bool)

(assert (=> b!3919253 (= e!2423256 e!2423257)))

(declare-fun res!1585374 () Bool)

(assert (=> b!3919253 (=> (not res!1585374) (not e!2423257))))

(declare-fun isDefined!6931 (Option!8888) Bool)

(assert (=> b!3919253 (= res!1585374 (isDefined!6931 lt!1365637))))

(declare-fun b!3919254 () Bool)

(declare-fun lt!1365634 () Option!8888)

(declare-fun lt!1365633 () Option!8888)

(assert (=> b!3919254 (= e!2423258 (ite (and ((_ is None!8887) lt!1365634) ((_ is None!8887) lt!1365633)) None!8887 (ite ((_ is None!8887) lt!1365633) lt!1365634 (ite ((_ is None!8887) lt!1365634) lt!1365633 (ite (>= (size!31182 (_1!23527 (v!39213 lt!1365634))) (size!31182 (_1!23527 (v!39213 lt!1365633)))) lt!1365634 lt!1365633)))))))

(assert (=> b!3919254 (= lt!1365634 call!284578)))

(assert (=> b!3919254 (= lt!1365633 (maxPrefix!3361 thiss!20629 (t!324285 rules!2768) lt!1365447))))

(assert (= (and d!1162703 c!681187) b!3919252))

(assert (= (and d!1162703 (not c!681187)) b!3919254))

(assert (= (or b!3919252 b!3919254) bm!284573))

(assert (= (and d!1162703 (not res!1585376)) b!3919253))

(assert (= (and b!3919253 res!1585374) b!3919247))

(assert (= (and b!3919247 res!1585372) b!3919248))

(assert (= (and b!3919248 res!1585377) b!3919249))

(assert (= (and b!3919249 res!1585371) b!3919246))

(assert (= (and b!3919246 res!1585373) b!3919251))

(assert (= (and b!3919251 res!1585375) b!3919250))

(declare-fun m!4483041 () Bool)

(assert (=> b!3919246 m!4483041))

(declare-fun m!4483043 () Bool)

(assert (=> b!3919246 m!4483043))

(assert (=> b!3919246 m!4483043))

(declare-fun m!4483045 () Bool)

(assert (=> b!3919246 m!4483045))

(declare-fun m!4483047 () Bool)

(assert (=> b!3919254 m!4483047))

(assert (=> b!3919251 m!4483041))

(declare-fun m!4483049 () Bool)

(assert (=> b!3919251 m!4483049))

(assert (=> b!3919251 m!4483049))

(declare-fun m!4483051 () Bool)

(assert (=> b!3919251 m!4483051))

(assert (=> b!3919251 m!4483051))

(declare-fun m!4483053 () Bool)

(assert (=> b!3919251 m!4483053))

(assert (=> b!3919249 m!4483041))

(assert (=> b!3919249 m!4483049))

(assert (=> b!3919249 m!4483049))

(assert (=> b!3919249 m!4483051))

(assert (=> b!3919249 m!4483051))

(declare-fun m!4483055 () Bool)

(assert (=> b!3919249 m!4483055))

(declare-fun m!4483057 () Bool)

(assert (=> d!1162703 m!4483057))

(declare-fun m!4483059 () Bool)

(assert (=> d!1162703 m!4483059))

(declare-fun m!4483061 () Bool)

(assert (=> d!1162703 m!4483061))

(declare-fun m!4483063 () Bool)

(assert (=> d!1162703 m!4483063))

(declare-fun m!4483065 () Bool)

(assert (=> bm!284573 m!4483065))

(assert (=> b!3919248 m!4483041))

(declare-fun m!4483067 () Bool)

(assert (=> b!3919248 m!4483067))

(assert (=> b!3919248 m!4482385))

(assert (=> b!3919247 m!4483041))

(assert (=> b!3919247 m!4483049))

(assert (=> b!3919247 m!4483049))

(assert (=> b!3919247 m!4483051))

(declare-fun m!4483069 () Bool)

(assert (=> b!3919253 m!4483069))

(assert (=> b!3919250 m!4483041))

(declare-fun m!4483071 () Bool)

(assert (=> b!3919250 m!4483071))

(assert (=> b!3918682 d!1162703))

(declare-fun b!3919265 () Bool)

(declare-fun b_free!106493 () Bool)

(declare-fun b_next!107197 () Bool)

(assert (=> b!3919265 (= b_free!106493 (not b_next!107197))))

(declare-fun tb!233981 () Bool)

(declare-fun t!324360 () Bool)

(assert (=> (and b!3919265 (= (toValue!8920 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324360) tb!233981))

(declare-fun result!283528 () Bool)

(assert (= result!283528 result!283460))

(assert (=> d!1162585 t!324360))

(declare-fun b_and!298643 () Bool)

(declare-fun tp!1192823 () Bool)

(assert (=> b!3919265 (= tp!1192823 (and (=> t!324360 result!283528) b_and!298643))))

(declare-fun b_free!106495 () Bool)

(declare-fun b_next!107199 () Bool)

(assert (=> b!3919265 (= b_free!106495 (not b_next!107199))))

(declare-fun t!324362 () Bool)

(declare-fun tb!233983 () Bool)

(assert (=> (and b!3919265 (= (toChars!8779 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324362) tb!233983))

(declare-fun result!283530 () Bool)

(assert (= result!283530 result!283446))

(assert (=> b!3918876 t!324362))

(declare-fun tb!233985 () Bool)

(declare-fun t!324364 () Bool)

(assert (=> (and b!3919265 (= (toChars!8779 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324364) tb!233985))

(declare-fun result!283532 () Bool)

(assert (= result!283532 result!283454))

(assert (=> b!3918888 t!324364))

(declare-fun t!324366 () Bool)

(declare-fun tb!233987 () Bool)

(assert (=> (and b!3919265 (= (toChars!8779 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324366) tb!233987))

(declare-fun result!283534 () Bool)

(assert (= result!283534 result!283474))

(assert (=> d!1162613 t!324366))

(declare-fun b_and!298645 () Bool)

(declare-fun tp!1192821 () Bool)

(assert (=> b!3919265 (= tp!1192821 (and (=> t!324362 result!283530) (=> t!324364 result!283532) (=> t!324366 result!283534) b_and!298645))))

(declare-fun e!2423267 () Bool)

(assert (=> b!3919265 (= e!2423267 (and tp!1192823 tp!1192821))))

(declare-fun tp!1192822 () Bool)

(declare-fun e!2423270 () Bool)

(declare-fun b!3919264 () Bool)

(assert (=> b!3919264 (= e!2423270 (and tp!1192822 (inv!55723 (tag!7328 (h!46950 (t!324285 rules!2768)))) (inv!55726 (transformation!6468 (h!46950 (t!324285 rules!2768)))) e!2423267))))

(declare-fun b!3919263 () Bool)

(declare-fun e!2423268 () Bool)

(declare-fun tp!1192824 () Bool)

(assert (=> b!3919263 (= e!2423268 (and e!2423270 tp!1192824))))

(assert (=> b!3918678 (= tp!1192727 e!2423268)))

(assert (= b!3919264 b!3919265))

(assert (= b!3919263 b!3919264))

(assert (= (and b!3918678 ((_ is Cons!41530) (t!324285 rules!2768))) b!3919263))

(declare-fun m!4483073 () Bool)

(assert (=> b!3919264 m!4483073))

(declare-fun m!4483075 () Bool)

(assert (=> b!3919264 m!4483075))

(declare-fun b!3919279 () Bool)

(declare-fun b_free!106497 () Bool)

(declare-fun b_next!107201 () Bool)

(assert (=> b!3919279 (= b_free!106497 (not b_next!107201))))

(declare-fun t!324368 () Bool)

(declare-fun tb!233989 () Bool)

(assert (=> (and b!3919279 (= (toValue!8920 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324368) tb!233989))

(declare-fun result!283538 () Bool)

(assert (= result!283538 result!283460))

(assert (=> d!1162585 t!324368))

(declare-fun b_and!298647 () Bool)

(declare-fun tp!1192839 () Bool)

(assert (=> b!3919279 (= tp!1192839 (and (=> t!324368 result!283538) b_and!298647))))

(declare-fun b_free!106499 () Bool)

(declare-fun b_next!107203 () Bool)

(assert (=> b!3919279 (= b_free!106499 (not b_next!107203))))

(declare-fun t!324370 () Bool)

(declare-fun tb!233991 () Bool)

(assert (=> (and b!3919279 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324370) tb!233991))

(declare-fun result!283540 () Bool)

(assert (= result!283540 result!283446))

(assert (=> b!3918876 t!324370))

(declare-fun t!324372 () Bool)

(declare-fun tb!233993 () Bool)

(assert (=> (and b!3919279 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324372) tb!233993))

(declare-fun result!283542 () Bool)

(assert (= result!283542 result!283454))

(assert (=> b!3918888 t!324372))

(declare-fun tb!233995 () Bool)

(declare-fun t!324374 () Bool)

(assert (=> (and b!3919279 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324374) tb!233995))

(declare-fun result!283544 () Bool)

(assert (= result!283544 result!283474))

(assert (=> d!1162613 t!324374))

(declare-fun tp!1192835 () Bool)

(declare-fun b_and!298649 () Bool)

(assert (=> b!3919279 (= tp!1192835 (and (=> t!324370 result!283540) (=> t!324372 result!283542) (=> t!324374 result!283544) b_and!298649))))

(declare-fun e!2423284 () Bool)

(declare-fun tp!1192837 () Bool)

(declare-fun b!3919278 () Bool)

(declare-fun e!2423285 () Bool)

(assert (=> b!3919278 (= e!2423284 (and tp!1192837 (inv!55723 (tag!7328 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (inv!55726 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) e!2423285))))

(declare-fun b!3919276 () Bool)

(declare-fun tp!1192838 () Bool)

(declare-fun e!2423283 () Bool)

(declare-fun e!2423287 () Bool)

(assert (=> b!3919276 (= e!2423283 (and (inv!55727 (h!46949 (t!324284 suffixTokens!72))) e!2423287 tp!1192838))))

(declare-fun b!3919277 () Bool)

(declare-fun tp!1192836 () Bool)

(assert (=> b!3919277 (= e!2423287 (and (inv!21 (value!204972 (h!46949 (t!324284 suffixTokens!72)))) e!2423284 tp!1192836))))

(assert (=> b!3918669 (= tp!1192724 e!2423283)))

(assert (=> b!3919279 (= e!2423285 (and tp!1192839 tp!1192835))))

(assert (= b!3919278 b!3919279))

(assert (= b!3919277 b!3919278))

(assert (= b!3919276 b!3919277))

(assert (= (and b!3918669 ((_ is Cons!41529) (t!324284 suffixTokens!72))) b!3919276))

(declare-fun m!4483077 () Bool)

(assert (=> b!3919278 m!4483077))

(declare-fun m!4483079 () Bool)

(assert (=> b!3919278 m!4483079))

(declare-fun m!4483081 () Bool)

(assert (=> b!3919276 m!4483081))

(declare-fun m!4483083 () Bool)

(assert (=> b!3919277 m!4483083))

(declare-fun b!3919284 () Bool)

(declare-fun e!2423291 () Bool)

(declare-fun tp!1192842 () Bool)

(assert (=> b!3919284 (= e!2423291 (and tp_is_empty!19717 tp!1192842))))

(assert (=> b!3918665 (= tp!1192734 e!2423291)))

(assert (= (and b!3918665 ((_ is Cons!41527) (originalCharacters!7068 (h!46949 suffixTokens!72)))) b!3919284))

(declare-fun b!3919285 () Bool)

(declare-fun e!2423292 () Bool)

(declare-fun tp!1192843 () Bool)

(assert (=> b!3919285 (= e!2423292 (and tp_is_empty!19717 tp!1192843))))

(assert (=> b!3918676 (= tp!1192732 e!2423292)))

(assert (= (and b!3918676 ((_ is Cons!41527) (t!324282 suffixResult!91))) b!3919285))

(declare-fun b!3919286 () Bool)

(declare-fun e!2423293 () Bool)

(declare-fun tp!1192844 () Bool)

(assert (=> b!3919286 (= e!2423293 (and tp_is_empty!19717 tp!1192844))))

(assert (=> b!3918675 (= tp!1192737 e!2423293)))

(assert (= (and b!3918675 ((_ is Cons!41527) (originalCharacters!7068 (h!46949 prefixTokens!80)))) b!3919286))

(declare-fun e!2423296 () Bool)

(assert (=> b!3918686 (= tp!1192729 e!2423296)))

(declare-fun b!3919299 () Bool)

(declare-fun tp!1192857 () Bool)

(assert (=> b!3919299 (= e!2423296 tp!1192857)))

(declare-fun b!3919298 () Bool)

(declare-fun tp!1192859 () Bool)

(declare-fun tp!1192855 () Bool)

(assert (=> b!3919298 (= e!2423296 (and tp!1192859 tp!1192855))))

(declare-fun b!3919300 () Bool)

(declare-fun tp!1192856 () Bool)

(declare-fun tp!1192858 () Bool)

(assert (=> b!3919300 (= e!2423296 (and tp!1192856 tp!1192858))))

(declare-fun b!3919297 () Bool)

(assert (=> b!3919297 (= e!2423296 tp_is_empty!19717)))

(assert (= (and b!3918686 ((_ is ElementMatch!11373) (regex!6468 (rule!9396 (h!46949 prefixTokens!80))))) b!3919297))

(assert (= (and b!3918686 ((_ is Concat!18072) (regex!6468 (rule!9396 (h!46949 prefixTokens!80))))) b!3919298))

(assert (= (and b!3918686 ((_ is Star!11373) (regex!6468 (rule!9396 (h!46949 prefixTokens!80))))) b!3919299))

(assert (= (and b!3918686 ((_ is Union!11373) (regex!6468 (rule!9396 (h!46949 prefixTokens!80))))) b!3919300))

(declare-fun b!3919301 () Bool)

(declare-fun e!2423297 () Bool)

(declare-fun tp!1192860 () Bool)

(assert (=> b!3919301 (= e!2423297 (and tp_is_empty!19717 tp!1192860))))

(assert (=> b!3918688 (= tp!1192722 e!2423297)))

(assert (= (and b!3918688 ((_ is Cons!41527) (t!324282 suffix!1176))) b!3919301))

(declare-fun e!2423298 () Bool)

(assert (=> b!3918666 (= tp!1192726 e!2423298)))

(declare-fun b!3919304 () Bool)

(declare-fun tp!1192863 () Bool)

(assert (=> b!3919304 (= e!2423298 tp!1192863)))

(declare-fun b!3919303 () Bool)

(declare-fun tp!1192865 () Bool)

(declare-fun tp!1192861 () Bool)

(assert (=> b!3919303 (= e!2423298 (and tp!1192865 tp!1192861))))

(declare-fun b!3919305 () Bool)

(declare-fun tp!1192862 () Bool)

(declare-fun tp!1192864 () Bool)

(assert (=> b!3919305 (= e!2423298 (and tp!1192862 tp!1192864))))

(declare-fun b!3919302 () Bool)

(assert (=> b!3919302 (= e!2423298 tp_is_empty!19717)))

(assert (= (and b!3918666 ((_ is ElementMatch!11373) (regex!6468 (rule!9396 (h!46949 suffixTokens!72))))) b!3919302))

(assert (= (and b!3918666 ((_ is Concat!18072) (regex!6468 (rule!9396 (h!46949 suffixTokens!72))))) b!3919303))

(assert (= (and b!3918666 ((_ is Star!11373) (regex!6468 (rule!9396 (h!46949 suffixTokens!72))))) b!3919304))

(assert (= (and b!3918666 ((_ is Union!11373) (regex!6468 (rule!9396 (h!46949 suffixTokens!72))))) b!3919305))

(declare-fun b!3919306 () Bool)

(declare-fun e!2423299 () Bool)

(declare-fun tp!1192866 () Bool)

(assert (=> b!3919306 (= e!2423299 (and tp_is_empty!19717 tp!1192866))))

(assert (=> b!3918696 (= tp!1192725 e!2423299)))

(assert (= (and b!3918696 ((_ is Cons!41527) (t!324282 prefix!426))) b!3919306))

(declare-fun e!2423300 () Bool)

(assert (=> b!3918691 (= tp!1192733 e!2423300)))

(declare-fun b!3919309 () Bool)

(declare-fun tp!1192869 () Bool)

(assert (=> b!3919309 (= e!2423300 tp!1192869)))

(declare-fun b!3919308 () Bool)

(declare-fun tp!1192871 () Bool)

(declare-fun tp!1192867 () Bool)

(assert (=> b!3919308 (= e!2423300 (and tp!1192871 tp!1192867))))

(declare-fun b!3919310 () Bool)

(declare-fun tp!1192868 () Bool)

(declare-fun tp!1192870 () Bool)

(assert (=> b!3919310 (= e!2423300 (and tp!1192868 tp!1192870))))

(declare-fun b!3919307 () Bool)

(assert (=> b!3919307 (= e!2423300 tp_is_empty!19717)))

(assert (= (and b!3918691 ((_ is ElementMatch!11373) (regex!6468 (h!46950 rules!2768)))) b!3919307))

(assert (= (and b!3918691 ((_ is Concat!18072) (regex!6468 (h!46950 rules!2768)))) b!3919308))

(assert (= (and b!3918691 ((_ is Star!11373) (regex!6468 (h!46950 rules!2768)))) b!3919309))

(assert (= (and b!3918691 ((_ is Union!11373) (regex!6468 (h!46950 rules!2768)))) b!3919310))

(declare-fun b!3919314 () Bool)

(declare-fun b_free!106501 () Bool)

(declare-fun b_next!107205 () Bool)

(assert (=> b!3919314 (= b_free!106501 (not b_next!107205))))

(declare-fun tb!233997 () Bool)

(declare-fun t!324376 () Bool)

(assert (=> (and b!3919314 (= (toValue!8920 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toValue!8920 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324376) tb!233997))

(declare-fun result!283550 () Bool)

(assert (= result!283550 result!283460))

(assert (=> d!1162585 t!324376))

(declare-fun tp!1192876 () Bool)

(declare-fun b_and!298651 () Bool)

(assert (=> b!3919314 (= tp!1192876 (and (=> t!324376 result!283550) b_and!298651))))

(declare-fun b_free!106503 () Bool)

(declare-fun b_next!107207 () Bool)

(assert (=> b!3919314 (= b_free!106503 (not b_next!107207))))

(declare-fun t!324378 () Bool)

(declare-fun tb!233999 () Bool)

(assert (=> (and b!3919314 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80))))) t!324378) tb!233999))

(declare-fun result!283552 () Bool)

(assert (= result!283552 result!283446))

(assert (=> b!3918876 t!324378))

(declare-fun tb!234001 () Bool)

(declare-fun t!324380 () Bool)

(assert (=> (and b!3919314 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72))))) t!324380) tb!234001))

(declare-fun result!283554 () Bool)

(assert (= result!283554 result!283454))

(assert (=> b!3918888 t!324380))

(declare-fun tb!234003 () Bool)

(declare-fun t!324382 () Bool)

(assert (=> (and b!3919314 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toChars!8779 (transformation!6468 (rule!9396 (_1!23527 (v!39213 lt!1365439)))))) t!324382) tb!234003))

(declare-fun result!283556 () Bool)

(assert (= result!283556 result!283474))

(assert (=> d!1162613 t!324382))

(declare-fun b_and!298653 () Bool)

(declare-fun tp!1192872 () Bool)

(assert (=> b!3919314 (= tp!1192872 (and (=> t!324378 result!283552) (=> t!324380 result!283554) (=> t!324382 result!283556) b_and!298653))))

(declare-fun tp!1192874 () Bool)

(declare-fun e!2423302 () Bool)

(declare-fun b!3919313 () Bool)

(declare-fun e!2423303 () Bool)

(assert (=> b!3919313 (= e!2423302 (and tp!1192874 (inv!55723 (tag!7328 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (inv!55726 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) e!2423303))))

(declare-fun e!2423301 () Bool)

(declare-fun b!3919311 () Bool)

(declare-fun tp!1192875 () Bool)

(declare-fun e!2423305 () Bool)

(assert (=> b!3919311 (= e!2423301 (and (inv!55727 (h!46949 (t!324284 prefixTokens!80))) e!2423305 tp!1192875))))

(declare-fun tp!1192873 () Bool)

(declare-fun b!3919312 () Bool)

(assert (=> b!3919312 (= e!2423305 (and (inv!21 (value!204972 (h!46949 (t!324284 prefixTokens!80)))) e!2423302 tp!1192873))))

(assert (=> b!3918671 (= tp!1192736 e!2423301)))

(assert (=> b!3919314 (= e!2423303 (and tp!1192876 tp!1192872))))

(assert (= b!3919313 b!3919314))

(assert (= b!3919312 b!3919313))

(assert (= b!3919311 b!3919312))

(assert (= (and b!3918671 ((_ is Cons!41529) (t!324284 prefixTokens!80))) b!3919311))

(declare-fun m!4483085 () Bool)

(assert (=> b!3919313 m!4483085))

(declare-fun m!4483087 () Bool)

(assert (=> b!3919313 m!4483087))

(declare-fun m!4483089 () Bool)

(assert (=> b!3919311 m!4483089))

(declare-fun m!4483091 () Bool)

(assert (=> b!3919312 m!4483091))

(declare-fun b_lambda!114767 () Bool)

(assert (= b_lambda!114749 (or (and b!3918694 b_free!106479 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))))) (and b!3918664 b_free!106475) (and b!3919279 b_free!106499 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))))) (and b!3919265 b_free!106495 (= (toChars!8779 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))))) (and b!3918681 b_free!106471 (= (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))))) (and b!3919314 b_free!106503 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))))) b_lambda!114767)))

(declare-fun b_lambda!114769 () Bool)

(assert (= b_lambda!114751 (or (and b!3918694 b_free!106479) (and b!3919279 b_free!106499 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 suffixTokens!72))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))))) (and b!3919314 b_free!106503 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 (t!324284 prefixTokens!80))))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))))) (and b!3918681 b_free!106471 (= (toChars!8779 (transformation!6468 (h!46950 rules!2768))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))))) (and b!3919265 b_free!106495 (= (toChars!8779 (transformation!6468 (h!46950 (t!324285 rules!2768)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))))) (and b!3918664 b_free!106475 (= (toChars!8779 (transformation!6468 (rule!9396 (h!46949 prefixTokens!80)))) (toChars!8779 (transformation!6468 (rule!9396 (h!46949 suffixTokens!72)))))) b_lambda!114769)))

(check-sat (not b_next!107201) (not b_next!107179) (not d!1162629) tp_is_empty!19717 (not d!1162551) (not b_lambda!114753) (not b!3919300) (not b!3919298) (not b!3918956) (not d!1162571) (not b!3919264) (not b!3918896) (not b!3918721) (not d!1162547) (not b!3918876) (not b!3918741) (not d!1162567) (not b!3918851) (not b!3919049) (not b!3918948) (not b!3918893) (not b!3919309) (not b!3918882) (not bm!284570) (not d!1162639) (not b!3919311) (not b_next!107181) (not d!1162601) (not b!3919222) (not b_next!107199) (not b_lambda!114769) b_and!298613 (not b!3919221) (not b!3919299) (not b!3918953) (not b!3918977) (not b!3918739) (not b!3919304) (not d!1162595) (not b!3918954) (not b!3918894) (not b!3918707) (not b!3919224) (not b!3918720) b_and!298647 (not b!3919054) (not d!1162509) (not b!3918982) (not b!3919048) b_and!298615 (not b!3918737) (not d!1162627) (not b!3918887) (not b_lambda!114767) (not d!1162643) (not b!3918848) (not b!3919305) (not b_next!107177) (not b!3919218) (not b!3919247) (not b!3918885) b_and!298651 (not b!3919301) (not d!1162613) (not d!1162633) (not b!3918890) (not b!3919278) (not b!3919286) (not d!1162597) (not b!3919251) (not b!3918981) b_and!298653 b_and!298601 b_and!298643 (not b!3919058) (not b!3919219) (not b!3919227) (not b!3919284) (not b!3918988) (not b!3918869) (not tb!233915) (not d!1162647) (not b!3918846) (not b!3918961) (not b!3918817) (not b!3919254) (not b!3918722) (not b!3919223) (not b!3919308) (not b!3919276) (not b!3918906) (not b!3919220) (not b!3919248) b_and!298605 (not d!1162637) (not b_next!107205) b_and!298645 (not b_next!107173) (not b_next!107197) (not b_lambda!114757) (not b!3919306) (not d!1162583) (not d!1162699) (not b!3919303) (not d!1162703) (not b_next!107183) (not b!3918819) (not b!3918847) (not b!3918892) (not d!1162525) (not b!3919312) (not b!3919310) (not b!3918871) (not b_next!107207) (not b!3918889) (not b!3918980) (not b!3918888) (not b!3918907) (not b!3919249) (not b!3918947) (not tb!233921) (not d!1162593) (not b!3918877) (not b!3919225) b_and!298649 (not b!3918706) (not d!1162625) (not tb!233939) (not d!1162587) (not b!3919277) (not b!3919246) b_and!298603 (not b!3918985) (not b_next!107203) (not d!1162563) (not b_next!107175) (not b!3918818) (not bm!284573) (not d!1162581) (not d!1162609) (not tb!233927) (not b!3919313) (not b!3919253) (not d!1162641) (not b!3918975) (not b!3918970) (not b!3919285) (not b!3918949) (not b!3918984) (not b!3919052) (not b!3919056) (not b!3918952) (not b!3919263) (not b!3919250) (not d!1162545) (not b!3918850) (not b!3918989) b_and!298617)
(check-sat (not b_next!107181) (not b_next!107201) (not b_next!107179) b_and!298647 b_and!298615 b_and!298605 (not b_next!107183) (not b_next!107207) b_and!298649 b_and!298603 b_and!298617 (not b_next!107199) b_and!298613 (not b_next!107177) b_and!298651 b_and!298653 b_and!298601 b_and!298643 (not b_next!107205) b_and!298645 (not b_next!107173) (not b_next!107197) (not b_next!107203) (not b_next!107175))
