; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366124 () Bool)

(assert start!366124)

(declare-fun b!3909643 () Bool)

(declare-fun b_free!105965 () Bool)

(declare-fun b_next!106669 () Bool)

(assert (=> b!3909643 (= b_free!105965 (not b_next!106669))))

(declare-fun tp!1189983 () Bool)

(declare-fun b_and!297251 () Bool)

(assert (=> b!3909643 (= tp!1189983 b_and!297251)))

(declare-fun b_free!105967 () Bool)

(declare-fun b_next!106671 () Bool)

(assert (=> b!3909643 (= b_free!105967 (not b_next!106671))))

(declare-fun tp!1189982 () Bool)

(declare-fun b_and!297253 () Bool)

(assert (=> b!3909643 (= tp!1189982 b_and!297253)))

(declare-fun b!3909640 () Bool)

(declare-fun b_free!105969 () Bool)

(declare-fun b_next!106673 () Bool)

(assert (=> b!3909640 (= b_free!105969 (not b_next!106673))))

(declare-fun tp!1189977 () Bool)

(declare-fun b_and!297255 () Bool)

(assert (=> b!3909640 (= tp!1189977 b_and!297255)))

(declare-fun b_free!105971 () Bool)

(declare-fun b_next!106675 () Bool)

(assert (=> b!3909640 (= b_free!105971 (not b_next!106675))))

(declare-fun tp!1189985 () Bool)

(declare-fun b_and!297257 () Bool)

(assert (=> b!3909640 (= tp!1189985 b_and!297257)))

(declare-fun b!3909661 () Bool)

(declare-fun b_free!105973 () Bool)

(declare-fun b_next!106677 () Bool)

(assert (=> b!3909661 (= b_free!105973 (not b_next!106677))))

(declare-fun tp!1189981 () Bool)

(declare-fun b_and!297259 () Bool)

(assert (=> b!3909661 (= tp!1189981 b_and!297259)))

(declare-fun b_free!105975 () Bool)

(declare-fun b_next!106679 () Bool)

(assert (=> b!3909661 (= b_free!105975 (not b_next!106679))))

(declare-fun tp!1189976 () Bool)

(declare-fun b_and!297261 () Bool)

(assert (=> b!3909661 (= tp!1189976 b_and!297261)))

(declare-fun lt!1361885 () Int)

(declare-fun e!2417044 () Bool)

(declare-fun lt!1361884 () Int)

(declare-datatypes ((C!22888 0))(
  ( (C!22889 (val!13538 Int)) )
))
(declare-datatypes ((List!41547 0))(
  ( (Nil!41423) (Cons!41423 (h!46843 C!22888) (t!322734 List!41547)) )
))
(declare-fun prefix!426 () List!41547)

(declare-fun b!3909639 () Bool)

(declare-fun size!31103 (List!41547) Int)

(assert (=> b!3909639 (= e!2417044 (= (+ (size!31103 prefix!426) lt!1361884) lt!1361885))))

(declare-fun e!2417028 () Bool)

(assert (=> b!3909640 (= e!2417028 (and tp!1189977 tp!1189985))))

(declare-fun b!3909641 () Bool)

(declare-fun res!1581295 () Bool)

(declare-fun e!2417034 () Bool)

(assert (=> b!3909641 (=> res!1581295 e!2417034)))

(declare-datatypes ((List!41548 0))(
  ( (Nil!41424) (Cons!41424 (h!46844 (_ BitVec 16)) (t!322735 List!41548)) )
))
(declare-datatypes ((TokenValue!6676 0))(
  ( (FloatLiteralValue!13352 (text!47177 List!41548)) (TokenValueExt!6675 (__x!25569 Int)) (Broken!33380 (value!204319 List!41548)) (Object!6799) (End!6676) (Def!6676) (Underscore!6676) (Match!6676) (Else!6676) (Error!6676) (Case!6676) (If!6676) (Extends!6676) (Abstract!6676) (Class!6676) (Val!6676) (DelimiterValue!13352 (del!6736 List!41548)) (KeywordValue!6682 (value!204320 List!41548)) (CommentValue!13352 (value!204321 List!41548)) (WhitespaceValue!13352 (value!204322 List!41548)) (IndentationValue!6676 (value!204323 List!41548)) (String!47097) (Int32!6676) (Broken!33381 (value!204324 List!41548)) (Boolean!6677) (Unit!59570) (OperatorValue!6679 (op!6736 List!41548)) (IdentifierValue!13352 (value!204325 List!41548)) (IdentifierValue!13353 (value!204326 List!41548)) (WhitespaceValue!13353 (value!204327 List!41548)) (True!13352) (False!13352) (Broken!33382 (value!204328 List!41548)) (Broken!33383 (value!204329 List!41548)) (True!13353) (RightBrace!6676) (RightBracket!6676) (Colon!6676) (Null!6676) (Comma!6676) (LeftBracket!6676) (False!13353) (LeftBrace!6676) (ImaginaryLiteralValue!6676 (text!47178 List!41548)) (StringLiteralValue!20028 (value!204330 List!41548)) (EOFValue!6676 (value!204331 List!41548)) (IdentValue!6676 (value!204332 List!41548)) (DelimiterValue!13353 (value!204333 List!41548)) (DedentValue!6676 (value!204334 List!41548)) (NewLineValue!6676 (value!204335 List!41548)) (IntegerValue!20028 (value!204336 (_ BitVec 32)) (text!47179 List!41548)) (IntegerValue!20029 (value!204337 Int) (text!47180 List!41548)) (Times!6676) (Or!6676) (Equal!6676) (Minus!6676) (Broken!33384 (value!204338 List!41548)) (And!6676) (Div!6676) (LessEqual!6676) (Mod!6676) (Concat!18027) (Not!6676) (Plus!6676) (SpaceValue!6676 (value!204339 List!41548)) (IntegerValue!20030 (value!204340 Int) (text!47181 List!41548)) (StringLiteralValue!20029 (text!47182 List!41548)) (FloatLiteralValue!13353 (text!47183 List!41548)) (BytesLiteralValue!6676 (value!204341 List!41548)) (CommentValue!13353 (value!204342 List!41548)) (StringLiteralValue!20030 (value!204343 List!41548)) (ErrorTokenValue!6676 (msg!6737 List!41548)) )
))
(declare-datatypes ((Regex!11351 0))(
  ( (ElementMatch!11351 (c!679630 C!22888)) (Concat!18028 (regOne!23214 Regex!11351) (regTwo!23214 Regex!11351)) (EmptyExpr!11351) (Star!11351 (reg!11680 Regex!11351)) (EmptyLang!11351) (Union!11351 (regOne!23215 Regex!11351) (regTwo!23215 Regex!11351)) )
))
(declare-datatypes ((String!47098 0))(
  ( (String!47099 (value!204344 String)) )
))
(declare-datatypes ((IArray!25319 0))(
  ( (IArray!25320 (innerList!12717 List!41547)) )
))
(declare-datatypes ((Conc!12657 0))(
  ( (Node!12657 (left!31722 Conc!12657) (right!32052 Conc!12657) (csize!25544 Int) (cheight!12868 Int)) (Leaf!19587 (xs!15963 IArray!25319) (csize!25545 Int)) (Empty!12657) )
))
(declare-datatypes ((BalanceConc!24908 0))(
  ( (BalanceConc!24909 (c!679631 Conc!12657)) )
))
(declare-datatypes ((TokenValueInjection!12780 0))(
  ( (TokenValueInjection!12781 (toValue!8890 Int) (toChars!8749 Int)) )
))
(declare-datatypes ((Rule!12692 0))(
  ( (Rule!12693 (regex!6446 Regex!11351) (tag!7306 String!47098) (isSeparator!6446 Bool) (transformation!6446 TokenValueInjection!12780)) )
))
(declare-datatypes ((Token!12030 0))(
  ( (Token!12031 (value!204345 TokenValue!6676) (rule!9360 Rule!12692) (size!31104 Int) (originalCharacters!7046 List!41547)) )
))
(declare-datatypes ((List!41549 0))(
  ( (Nil!41425) (Cons!41425 (h!46845 Token!12030) (t!322736 List!41549)) )
))
(declare-datatypes ((tuple2!40670 0))(
  ( (tuple2!40671 (_1!23469 List!41549) (_2!23469 List!41547)) )
))
(declare-fun lt!1361888 () tuple2!40670)

(declare-datatypes ((tuple2!40672 0))(
  ( (tuple2!40673 (_1!23470 Token!12030) (_2!23470 List!41547)) )
))
(declare-datatypes ((Option!8866 0))(
  ( (None!8865) (Some!8865 (v!39187 tuple2!40672)) )
))
(declare-fun lt!1361874 () Option!8866)

(declare-fun lt!1361876 () tuple2!40670)

(declare-fun ++!10649 (List!41549 List!41549) List!41549)

(assert (=> b!3909641 (= res!1581295 (not (= lt!1361888 (tuple2!40671 (++!10649 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425) (_1!23469 lt!1361876)) (_2!23469 lt!1361876)))))))

(declare-fun b!3909642 () Bool)

(declare-fun e!2417031 () Bool)

(declare-fun e!2417043 () Bool)

(declare-fun tp!1189987 () Bool)

(assert (=> b!3909642 (= e!2417031 (and e!2417043 tp!1189987))))

(declare-fun e!2417042 () Bool)

(assert (=> b!3909643 (= e!2417042 (and tp!1189983 tp!1189982))))

(declare-fun b!3909644 () Bool)

(declare-fun tp!1189986 () Bool)

(declare-fun suffixTokens!72 () List!41549)

(declare-fun e!2417023 () Bool)

(declare-fun inv!55602 (String!47098) Bool)

(declare-fun inv!55605 (TokenValueInjection!12780) Bool)

(assert (=> b!3909644 (= e!2417023 (and tp!1189986 (inv!55602 (tag!7306 (rule!9360 (h!46845 suffixTokens!72)))) (inv!55605 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) e!2417042))))

(declare-fun b!3909645 () Bool)

(declare-fun e!2417024 () Bool)

(declare-fun tp_is_empty!19673 () Bool)

(declare-fun tp!1189974 () Bool)

(assert (=> b!3909645 (= e!2417024 (and tp_is_empty!19673 tp!1189974))))

(declare-fun b!3909646 () Bool)

(declare-fun e!2417041 () Bool)

(assert (=> b!3909646 (= e!2417041 e!2417044)))

(declare-fun res!1581299 () Bool)

(assert (=> b!3909646 (=> res!1581299 e!2417044)))

(declare-fun lt!1361886 () Int)

(declare-fun lt!1361880 () Int)

(assert (=> b!3909646 (= res!1581299 (not (= (+ lt!1361886 lt!1361880) lt!1361885)))))

(declare-fun lt!1361879 () List!41547)

(assert (=> b!3909646 (= lt!1361885 (size!31103 lt!1361879))))

(declare-fun res!1581294 () Bool)

(declare-fun e!2417048 () Bool)

(assert (=> start!366124 (=> (not res!1581294) (not e!2417048))))

(declare-datatypes ((LexerInterface!6035 0))(
  ( (LexerInterfaceExt!6032 (__x!25570 Int)) (Lexer!6033) )
))
(declare-fun thiss!20629 () LexerInterface!6035)

(get-info :version)

(assert (=> start!366124 (= res!1581294 ((_ is Lexer!6033) thiss!20629))))

(assert (=> start!366124 e!2417048))

(declare-fun e!2417026 () Bool)

(assert (=> start!366124 e!2417026))

(assert (=> start!366124 true))

(declare-fun e!2417035 () Bool)

(assert (=> start!366124 e!2417035))

(assert (=> start!366124 e!2417031))

(declare-fun e!2417046 () Bool)

(assert (=> start!366124 e!2417046))

(declare-fun e!2417030 () Bool)

(assert (=> start!366124 e!2417030))

(assert (=> start!366124 e!2417024))

(declare-fun b!3909647 () Bool)

(declare-fun e!2417029 () Bool)

(declare-fun tp!1189979 () Bool)

(declare-fun inv!55606 (Token!12030) Bool)

(assert (=> b!3909647 (= e!2417030 (and (inv!55606 (h!46845 suffixTokens!72)) e!2417029 tp!1189979))))

(declare-fun b!3909648 () Bool)

(declare-fun res!1581296 () Bool)

(assert (=> b!3909648 (=> (not res!1581296) (not e!2417048))))

(declare-datatypes ((List!41550 0))(
  ( (Nil!41426) (Cons!41426 (h!46846 Rule!12692) (t!322737 List!41550)) )
))
(declare-fun rules!2768 () List!41550)

(declare-fun rulesInvariant!5378 (LexerInterface!6035 List!41550) Bool)

(assert (=> b!3909648 (= res!1581296 (rulesInvariant!5378 thiss!20629 rules!2768))))

(declare-fun b!3909649 () Bool)

(declare-fun tp!1189973 () Bool)

(assert (=> b!3909649 (= e!2417035 (and tp_is_empty!19673 tp!1189973))))

(declare-fun b!3909650 () Bool)

(declare-fun e!2417039 () Bool)

(declare-fun e!2417033 () Bool)

(assert (=> b!3909650 (= e!2417039 e!2417033)))

(declare-fun res!1581293 () Bool)

(assert (=> b!3909650 (=> (not res!1581293) (not e!2417033))))

(assert (=> b!3909650 (= res!1581293 ((_ is Some!8865) lt!1361874))))

(declare-fun maxPrefix!3339 (LexerInterface!6035 List!41550 List!41547) Option!8866)

(assert (=> b!3909650 (= lt!1361874 (maxPrefix!3339 thiss!20629 rules!2768 lt!1361879))))

(declare-fun b!3909651 () Bool)

(assert (=> b!3909651 (= e!2417034 e!2417041)))

(declare-fun res!1581304 () Bool)

(assert (=> b!3909651 (=> res!1581304 e!2417041)))

(assert (=> b!3909651 (= res!1581304 (>= lt!1361880 lt!1361884))))

(declare-fun suffix!1176 () List!41547)

(assert (=> b!3909651 (= lt!1361884 (size!31103 suffix!1176))))

(assert (=> b!3909651 (= lt!1361880 (size!31103 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun e!2417040 () Bool)

(declare-fun tp!1189978 () Bool)

(declare-fun e!2417047 () Bool)

(declare-fun prefixTokens!80 () List!41549)

(declare-fun b!3909652 () Bool)

(declare-fun inv!21 (TokenValue!6676) Bool)

(assert (=> b!3909652 (= e!2417040 (and (inv!21 (value!204345 (h!46845 prefixTokens!80))) e!2417047 tp!1189978))))

(declare-fun b!3909653 () Bool)

(declare-fun tp!1189988 () Bool)

(assert (=> b!3909653 (= e!2417046 (and (inv!55606 (h!46845 prefixTokens!80)) e!2417040 tp!1189988))))

(declare-fun b!3909654 () Bool)

(declare-fun res!1581305 () Bool)

(assert (=> b!3909654 (=> res!1581305 e!2417034)))

(assert (=> b!3909654 (= res!1581305 (or (not (= lt!1361876 (tuple2!40671 (_1!23469 lt!1361876) (_2!23469 lt!1361876)))) (= (_2!23470 (v!39187 lt!1361874)) suffix!1176)))))

(declare-fun b!3909655 () Bool)

(declare-fun res!1581301 () Bool)

(assert (=> b!3909655 (=> (not res!1581301) (not e!2417048))))

(declare-fun isEmpty!24636 (List!41549) Bool)

(assert (=> b!3909655 (= res!1581301 (not (isEmpty!24636 prefixTokens!80)))))

(declare-fun b!3909656 () Bool)

(declare-fun res!1581300 () Bool)

(assert (=> b!3909656 (=> (not res!1581300) (not e!2417048))))

(declare-fun isEmpty!24637 (List!41547) Bool)

(assert (=> b!3909656 (= res!1581300 (not (isEmpty!24637 prefix!426)))))

(declare-fun b!3909657 () Bool)

(declare-fun tp!1189984 () Bool)

(declare-fun e!2417038 () Bool)

(assert (=> b!3909657 (= e!2417047 (and tp!1189984 (inv!55602 (tag!7306 (rule!9360 (h!46845 prefixTokens!80)))) (inv!55605 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) e!2417038))))

(declare-fun b!3909658 () Bool)

(declare-fun tp!1189975 () Bool)

(assert (=> b!3909658 (= e!2417029 (and (inv!21 (value!204345 (h!46845 suffixTokens!72))) e!2417023 tp!1189975))))

(declare-fun b!3909659 () Bool)

(assert (=> b!3909659 (= e!2417033 (not e!2417034))))

(declare-fun res!1581303 () Bool)

(assert (=> b!3909659 (=> res!1581303 e!2417034)))

(declare-fun lt!1361875 () List!41547)

(assert (=> b!3909659 (= res!1581303 (not (= lt!1361875 lt!1361879)))))

(declare-fun lexList!1803 (LexerInterface!6035 List!41550 List!41547) tuple2!40670)

(assert (=> b!3909659 (= lt!1361876 (lexList!1803 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun lt!1361887 () List!41547)

(declare-fun lt!1361883 () TokenValue!6676)

(declare-fun lt!1361878 () List!41547)

(assert (=> b!3909659 (and (= (size!31104 (_1!23470 (v!39187 lt!1361874))) lt!1361886) (= (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874))) lt!1361878) (= (v!39187 lt!1361874) (tuple2!40673 (Token!12031 lt!1361883 (rule!9360 (_1!23470 (v!39187 lt!1361874))) lt!1361886 lt!1361878) lt!1361887)))))

(assert (=> b!3909659 (= lt!1361886 (size!31103 lt!1361878))))

(declare-fun e!2417045 () Bool)

(assert (=> b!3909659 e!2417045))

(declare-fun res!1581302 () Bool)

(assert (=> b!3909659 (=> (not res!1581302) (not e!2417045))))

(assert (=> b!3909659 (= res!1581302 (= (value!204345 (_1!23470 (v!39187 lt!1361874))) lt!1361883))))

(declare-fun apply!9685 (TokenValueInjection!12780 BalanceConc!24908) TokenValue!6676)

(declare-fun seqFromList!4713 (List!41547) BalanceConc!24908)

(assert (=> b!3909659 (= lt!1361883 (apply!9685 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))) (seqFromList!4713 lt!1361878)))))

(assert (=> b!3909659 (= (_2!23470 (v!39187 lt!1361874)) lt!1361887)))

(declare-datatypes ((Unit!59571 0))(
  ( (Unit!59572) )
))
(declare-fun lt!1361873 () Unit!59571)

(declare-fun lemmaSamePrefixThenSameSuffix!1762 (List!41547 List!41547 List!41547 List!41547 List!41547) Unit!59571)

(assert (=> b!3909659 (= lt!1361873 (lemmaSamePrefixThenSameSuffix!1762 lt!1361878 (_2!23470 (v!39187 lt!1361874)) lt!1361878 lt!1361887 lt!1361879))))

(declare-fun getSuffix!1996 (List!41547 List!41547) List!41547)

(assert (=> b!3909659 (= lt!1361887 (getSuffix!1996 lt!1361879 lt!1361878))))

(declare-fun isPrefix!3541 (List!41547 List!41547) Bool)

(assert (=> b!3909659 (isPrefix!3541 lt!1361878 lt!1361875)))

(declare-fun ++!10650 (List!41547 List!41547) List!41547)

(assert (=> b!3909659 (= lt!1361875 (++!10650 lt!1361878 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun lt!1361881 () Unit!59571)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2404 (List!41547 List!41547) Unit!59571)

(assert (=> b!3909659 (= lt!1361881 (lemmaConcatTwoListThenFirstIsPrefix!2404 lt!1361878 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun list!15399 (BalanceConc!24908) List!41547)

(declare-fun charsOf!4270 (Token!12030) BalanceConc!24908)

(assert (=> b!3909659 (= lt!1361878 (list!15399 (charsOf!4270 (_1!23470 (v!39187 lt!1361874)))))))

(declare-fun ruleValid!2394 (LexerInterface!6035 Rule!12692) Bool)

(assert (=> b!3909659 (ruleValid!2394 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874))))))

(declare-fun lt!1361889 () Unit!59571)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1474 (LexerInterface!6035 Rule!12692 List!41550) Unit!59571)

(assert (=> b!3909659 (= lt!1361889 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1474 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874))) rules!2768))))

(declare-fun lt!1361877 () Unit!59571)

(declare-fun lemmaCharactersSize!1103 (Token!12030) Unit!59571)

(assert (=> b!3909659 (= lt!1361877 (lemmaCharactersSize!1103 (_1!23470 (v!39187 lt!1361874))))))

(declare-fun tp!1189972 () Bool)

(declare-fun b!3909660 () Bool)

(assert (=> b!3909660 (= e!2417043 (and tp!1189972 (inv!55602 (tag!7306 (h!46846 rules!2768))) (inv!55605 (transformation!6446 (h!46846 rules!2768))) e!2417028))))

(assert (=> b!3909661 (= e!2417038 (and tp!1189981 tp!1189976))))

(declare-fun b!3909662 () Bool)

(assert (=> b!3909662 (= e!2417048 e!2417039)))

(declare-fun res!1581298 () Bool)

(assert (=> b!3909662 (=> (not res!1581298) (not e!2417039))))

(declare-fun suffixResult!91 () List!41547)

(declare-fun lt!1361882 () List!41549)

(assert (=> b!3909662 (= res!1581298 (= lt!1361888 (tuple2!40671 lt!1361882 suffixResult!91)))))

(assert (=> b!3909662 (= lt!1361888 (lexList!1803 thiss!20629 rules!2768 lt!1361879))))

(assert (=> b!3909662 (= lt!1361882 (++!10649 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3909662 (= lt!1361879 (++!10650 prefix!426 suffix!1176))))

(declare-fun b!3909663 () Bool)

(declare-fun res!1581297 () Bool)

(assert (=> b!3909663 (=> (not res!1581297) (not e!2417048))))

(declare-fun isEmpty!24638 (List!41550) Bool)

(assert (=> b!3909663 (= res!1581297 (not (isEmpty!24638 rules!2768)))))

(declare-fun b!3909664 () Bool)

(assert (=> b!3909664 (= e!2417045 (= (size!31104 (_1!23470 (v!39187 lt!1361874))) (size!31103 (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874))))))))

(declare-fun b!3909665 () Bool)

(declare-fun res!1581306 () Bool)

(assert (=> b!3909665 (=> (not res!1581306) (not e!2417039))))

(assert (=> b!3909665 (= res!1581306 (= (lexList!1803 thiss!20629 rules!2768 suffix!1176) (tuple2!40671 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3909666 () Bool)

(declare-fun tp!1189980 () Bool)

(assert (=> b!3909666 (= e!2417026 (and tp_is_empty!19673 tp!1189980))))

(assert (= (and start!366124 res!1581294) b!3909663))

(assert (= (and b!3909663 res!1581297) b!3909648))

(assert (= (and b!3909648 res!1581296) b!3909655))

(assert (= (and b!3909655 res!1581301) b!3909656))

(assert (= (and b!3909656 res!1581300) b!3909662))

(assert (= (and b!3909662 res!1581298) b!3909665))

(assert (= (and b!3909665 res!1581306) b!3909650))

(assert (= (and b!3909650 res!1581293) b!3909659))

(assert (= (and b!3909659 res!1581302) b!3909664))

(assert (= (and b!3909659 (not res!1581303)) b!3909641))

(assert (= (and b!3909641 (not res!1581295)) b!3909654))

(assert (= (and b!3909654 (not res!1581305)) b!3909651))

(assert (= (and b!3909651 (not res!1581304)) b!3909646))

(assert (= (and b!3909646 (not res!1581299)) b!3909639))

(assert (= (and start!366124 ((_ is Cons!41423) suffixResult!91)) b!3909666))

(assert (= (and start!366124 ((_ is Cons!41423) suffix!1176)) b!3909649))

(assert (= b!3909660 b!3909640))

(assert (= b!3909642 b!3909660))

(assert (= (and start!366124 ((_ is Cons!41426) rules!2768)) b!3909642))

(assert (= b!3909657 b!3909661))

(assert (= b!3909652 b!3909657))

(assert (= b!3909653 b!3909652))

(assert (= (and start!366124 ((_ is Cons!41425) prefixTokens!80)) b!3909653))

(assert (= b!3909644 b!3909643))

(assert (= b!3909658 b!3909644))

(assert (= b!3909647 b!3909658))

(assert (= (and start!366124 ((_ is Cons!41425) suffixTokens!72)) b!3909647))

(assert (= (and start!366124 ((_ is Cons!41423) prefix!426)) b!3909645))

(declare-fun m!4472711 () Bool)

(assert (=> b!3909660 m!4472711))

(declare-fun m!4472713 () Bool)

(assert (=> b!3909660 m!4472713))

(declare-fun m!4472715 () Bool)

(assert (=> b!3909641 m!4472715))

(declare-fun m!4472717 () Bool)

(assert (=> b!3909639 m!4472717))

(declare-fun m!4472719 () Bool)

(assert (=> b!3909652 m!4472719))

(declare-fun m!4472721 () Bool)

(assert (=> b!3909657 m!4472721))

(declare-fun m!4472723 () Bool)

(assert (=> b!3909657 m!4472723))

(declare-fun m!4472725 () Bool)

(assert (=> b!3909646 m!4472725))

(declare-fun m!4472727 () Bool)

(assert (=> b!3909658 m!4472727))

(declare-fun m!4472729 () Bool)

(assert (=> b!3909665 m!4472729))

(declare-fun m!4472731 () Bool)

(assert (=> b!3909651 m!4472731))

(declare-fun m!4472733 () Bool)

(assert (=> b!3909651 m!4472733))

(declare-fun m!4472735 () Bool)

(assert (=> b!3909664 m!4472735))

(declare-fun m!4472737 () Bool)

(assert (=> b!3909662 m!4472737))

(declare-fun m!4472739 () Bool)

(assert (=> b!3909662 m!4472739))

(declare-fun m!4472741 () Bool)

(assert (=> b!3909662 m!4472741))

(declare-fun m!4472743 () Bool)

(assert (=> b!3909650 m!4472743))

(declare-fun m!4472745 () Bool)

(assert (=> b!3909663 m!4472745))

(declare-fun m!4472747 () Bool)

(assert (=> b!3909647 m!4472747))

(declare-fun m!4472749 () Bool)

(assert (=> b!3909659 m!4472749))

(declare-fun m!4472751 () Bool)

(assert (=> b!3909659 m!4472751))

(declare-fun m!4472753 () Bool)

(assert (=> b!3909659 m!4472753))

(declare-fun m!4472755 () Bool)

(assert (=> b!3909659 m!4472755))

(declare-fun m!4472757 () Bool)

(assert (=> b!3909659 m!4472757))

(declare-fun m!4472759 () Bool)

(assert (=> b!3909659 m!4472759))

(declare-fun m!4472761 () Bool)

(assert (=> b!3909659 m!4472761))

(assert (=> b!3909659 m!4472755))

(declare-fun m!4472763 () Bool)

(assert (=> b!3909659 m!4472763))

(declare-fun m!4472765 () Bool)

(assert (=> b!3909659 m!4472765))

(declare-fun m!4472767 () Bool)

(assert (=> b!3909659 m!4472767))

(assert (=> b!3909659 m!4472751))

(declare-fun m!4472769 () Bool)

(assert (=> b!3909659 m!4472769))

(declare-fun m!4472771 () Bool)

(assert (=> b!3909659 m!4472771))

(declare-fun m!4472773 () Bool)

(assert (=> b!3909659 m!4472773))

(declare-fun m!4472775 () Bool)

(assert (=> b!3909659 m!4472775))

(declare-fun m!4472777 () Bool)

(assert (=> b!3909648 m!4472777))

(declare-fun m!4472779 () Bool)

(assert (=> b!3909656 m!4472779))

(declare-fun m!4472781 () Bool)

(assert (=> b!3909655 m!4472781))

(declare-fun m!4472783 () Bool)

(assert (=> b!3909653 m!4472783))

(declare-fun m!4472785 () Bool)

(assert (=> b!3909644 m!4472785))

(declare-fun m!4472787 () Bool)

(assert (=> b!3909644 m!4472787))

(check-sat b_and!297255 (not b!3909653) b_and!297259 (not b!3909649) (not b!3909641) (not b!3909646) (not b!3909664) (not b_next!106669) (not b!3909651) b_and!297257 (not b!3909657) (not b!3909666) b_and!297253 (not b_next!106679) tp_is_empty!19673 (not b_next!106673) (not b!3909645) (not b!3909639) (not b!3909648) b_and!297251 (not b!3909662) (not b!3909642) (not b!3909655) (not b!3909647) (not b!3909658) (not b!3909656) (not b!3909663) (not b_next!106675) (not b!3909650) (not b!3909665) (not b!3909644) (not b!3909659) (not b!3909652) (not b_next!106671) b_and!297261 (not b!3909660) (not b_next!106677))
(check-sat b_and!297255 b_and!297259 (not b_next!106673) b_and!297251 (not b_next!106675) (not b_next!106669) (not b_next!106677) b_and!297257 b_and!297253 (not b_next!106679) (not b_next!106671) b_and!297261)
(get-model)

(declare-fun d!1159854 () Bool)

(declare-fun res!1581313 () Bool)

(declare-fun e!2417051 () Bool)

(assert (=> d!1159854 (=> (not res!1581313) (not e!2417051))))

(assert (=> d!1159854 (= res!1581313 (not (isEmpty!24637 (originalCharacters!7046 (h!46845 prefixTokens!80)))))))

(assert (=> d!1159854 (= (inv!55606 (h!46845 prefixTokens!80)) e!2417051)))

(declare-fun b!3909671 () Bool)

(declare-fun res!1581314 () Bool)

(assert (=> b!3909671 (=> (not res!1581314) (not e!2417051))))

(declare-fun dynLambda!17797 (Int TokenValue!6676) BalanceConc!24908)

(assert (=> b!3909671 (= res!1581314 (= (originalCharacters!7046 (h!46845 prefixTokens!80)) (list!15399 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (value!204345 (h!46845 prefixTokens!80))))))))

(declare-fun b!3909672 () Bool)

(assert (=> b!3909672 (= e!2417051 (= (size!31104 (h!46845 prefixTokens!80)) (size!31103 (originalCharacters!7046 (h!46845 prefixTokens!80)))))))

(assert (= (and d!1159854 res!1581313) b!3909671))

(assert (= (and b!3909671 res!1581314) b!3909672))

(declare-fun b_lambda!114451 () Bool)

(assert (=> (not b_lambda!114451) (not b!3909671)))

(declare-fun t!322739 () Bool)

(declare-fun tb!232469 () Bool)

(assert (=> (and b!3909643 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322739) tb!232469))

(declare-fun b!3909677 () Bool)

(declare-fun e!2417054 () Bool)

(declare-fun tp!1189991 () Bool)

(declare-fun inv!55609 (Conc!12657) Bool)

(assert (=> b!3909677 (= e!2417054 (and (inv!55609 (c!679631 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (value!204345 (h!46845 prefixTokens!80))))) tp!1189991))))

(declare-fun result!281798 () Bool)

(declare-fun inv!55610 (BalanceConc!24908) Bool)

(assert (=> tb!232469 (= result!281798 (and (inv!55610 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (value!204345 (h!46845 prefixTokens!80)))) e!2417054))))

(assert (= tb!232469 b!3909677))

(declare-fun m!4472789 () Bool)

(assert (=> b!3909677 m!4472789))

(declare-fun m!4472791 () Bool)

(assert (=> tb!232469 m!4472791))

(assert (=> b!3909671 t!322739))

(declare-fun b_and!297263 () Bool)

(assert (= b_and!297253 (and (=> t!322739 result!281798) b_and!297263)))

(declare-fun tb!232471 () Bool)

(declare-fun t!322741 () Bool)

(assert (=> (and b!3909640 (= (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322741) tb!232471))

(declare-fun result!281802 () Bool)

(assert (= result!281802 result!281798))

(assert (=> b!3909671 t!322741))

(declare-fun b_and!297265 () Bool)

(assert (= b_and!297257 (and (=> t!322741 result!281802) b_and!297265)))

(declare-fun t!322743 () Bool)

(declare-fun tb!232473 () Bool)

(assert (=> (and b!3909661 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322743) tb!232473))

(declare-fun result!281804 () Bool)

(assert (= result!281804 result!281798))

(assert (=> b!3909671 t!322743))

(declare-fun b_and!297267 () Bool)

(assert (= b_and!297261 (and (=> t!322743 result!281804) b_and!297267)))

(declare-fun m!4472793 () Bool)

(assert (=> d!1159854 m!4472793))

(declare-fun m!4472795 () Bool)

(assert (=> b!3909671 m!4472795))

(assert (=> b!3909671 m!4472795))

(declare-fun m!4472797 () Bool)

(assert (=> b!3909671 m!4472797))

(declare-fun m!4472799 () Bool)

(assert (=> b!3909672 m!4472799))

(assert (=> b!3909653 d!1159854))

(declare-fun d!1159856 () Bool)

(declare-fun lt!1361892 () Int)

(assert (=> d!1159856 (>= lt!1361892 0)))

(declare-fun e!2417057 () Int)

(assert (=> d!1159856 (= lt!1361892 e!2417057)))

(declare-fun c!679634 () Bool)

(assert (=> d!1159856 (= c!679634 ((_ is Nil!41423) (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874)))))))

(assert (=> d!1159856 (= (size!31103 (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874)))) lt!1361892)))

(declare-fun b!3909682 () Bool)

(assert (=> b!3909682 (= e!2417057 0)))

(declare-fun b!3909683 () Bool)

(assert (=> b!3909683 (= e!2417057 (+ 1 (size!31103 (t!322734 (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874)))))))))

(assert (= (and d!1159856 c!679634) b!3909682))

(assert (= (and d!1159856 (not c!679634)) b!3909683))

(declare-fun m!4472801 () Bool)

(assert (=> b!3909683 m!4472801))

(assert (=> b!3909664 d!1159856))

(declare-fun b!3909707 () Bool)

(declare-fun e!2417073 () Bool)

(declare-fun lt!1361905 () tuple2!40670)

(assert (=> b!3909707 (= e!2417073 (= (_2!23469 lt!1361905) suffix!1176))))

(declare-fun b!3909708 () Bool)

(declare-fun e!2417074 () Bool)

(assert (=> b!3909708 (= e!2417074 (not (isEmpty!24636 (_1!23469 lt!1361905))))))

(declare-fun b!3909709 () Bool)

(declare-fun e!2417075 () tuple2!40670)

(assert (=> b!3909709 (= e!2417075 (tuple2!40671 Nil!41425 suffix!1176))))

(declare-fun b!3909710 () Bool)

(assert (=> b!3909710 (= e!2417073 e!2417074)))

(declare-fun res!1581325 () Bool)

(assert (=> b!3909710 (= res!1581325 (< (size!31103 (_2!23469 lt!1361905)) (size!31103 suffix!1176)))))

(assert (=> b!3909710 (=> (not res!1581325) (not e!2417074))))

(declare-fun d!1159858 () Bool)

(assert (=> d!1159858 e!2417073))

(declare-fun c!679643 () Bool)

(declare-fun size!31106 (List!41549) Int)

(assert (=> d!1159858 (= c!679643 (> (size!31106 (_1!23469 lt!1361905)) 0))))

(assert (=> d!1159858 (= lt!1361905 e!2417075)))

(declare-fun c!679644 () Bool)

(declare-fun lt!1361907 () Option!8866)

(assert (=> d!1159858 (= c!679644 ((_ is Some!8865) lt!1361907))))

(assert (=> d!1159858 (= lt!1361907 (maxPrefix!3339 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1159858 (= (lexList!1803 thiss!20629 rules!2768 suffix!1176) lt!1361905)))

(declare-fun b!3909711 () Bool)

(declare-fun lt!1361906 () tuple2!40670)

(assert (=> b!3909711 (= e!2417075 (tuple2!40671 (Cons!41425 (_1!23470 (v!39187 lt!1361907)) (_1!23469 lt!1361906)) (_2!23469 lt!1361906)))))

(assert (=> b!3909711 (= lt!1361906 (lexList!1803 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1361907))))))

(assert (= (and d!1159858 c!679644) b!3909711))

(assert (= (and d!1159858 (not c!679644)) b!3909709))

(assert (= (and d!1159858 c!679643) b!3909710))

(assert (= (and d!1159858 (not c!679643)) b!3909707))

(assert (= (and b!3909710 res!1581325) b!3909708))

(declare-fun m!4472807 () Bool)

(assert (=> b!3909708 m!4472807))

(declare-fun m!4472809 () Bool)

(assert (=> b!3909710 m!4472809))

(assert (=> b!3909710 m!4472731))

(declare-fun m!4472811 () Bool)

(assert (=> d!1159858 m!4472811))

(declare-fun m!4472813 () Bool)

(assert (=> d!1159858 m!4472813))

(declare-fun m!4472815 () Bool)

(assert (=> b!3909711 m!4472815))

(assert (=> b!3909665 d!1159858))

(declare-fun d!1159866 () Bool)

(assert (=> d!1159866 (= (inv!55602 (tag!7306 (rule!9360 (h!46845 suffixTokens!72)))) (= (mod (str.len (value!204344 (tag!7306 (rule!9360 (h!46845 suffixTokens!72))))) 2) 0))))

(assert (=> b!3909644 d!1159866))

(declare-fun d!1159870 () Bool)

(declare-fun res!1581335 () Bool)

(declare-fun e!2417087 () Bool)

(assert (=> d!1159870 (=> (not res!1581335) (not e!2417087))))

(declare-fun semiInverseModEq!2767 (Int Int) Bool)

(assert (=> d!1159870 (= res!1581335 (semiInverseModEq!2767 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toValue!8890 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))))))

(assert (=> d!1159870 (= (inv!55605 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) e!2417087)))

(declare-fun b!3909733 () Bool)

(declare-fun equivClasses!2666 (Int Int) Bool)

(assert (=> b!3909733 (= e!2417087 (equivClasses!2666 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toValue!8890 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))))))

(assert (= (and d!1159870 res!1581335) b!3909733))

(declare-fun m!4472839 () Bool)

(assert (=> d!1159870 m!4472839))

(declare-fun m!4472841 () Bool)

(assert (=> b!3909733 m!4472841))

(assert (=> b!3909644 d!1159870))

(declare-fun d!1159874 () Bool)

(assert (=> d!1159874 (= (isEmpty!24636 prefixTokens!80) ((_ is Nil!41425) prefixTokens!80))))

(assert (=> b!3909655 d!1159874))

(declare-fun d!1159876 () Bool)

(assert (=> d!1159876 (= (isEmpty!24637 prefix!426) ((_ is Nil!41423) prefix!426))))

(assert (=> b!3909656 d!1159876))

(declare-fun d!1159880 () Bool)

(declare-fun lt!1361918 () Int)

(assert (=> d!1159880 (>= lt!1361918 0)))

(declare-fun e!2417096 () Int)

(assert (=> d!1159880 (= lt!1361918 e!2417096)))

(declare-fun c!679654 () Bool)

(assert (=> d!1159880 (= c!679654 ((_ is Nil!41423) lt!1361879))))

(assert (=> d!1159880 (= (size!31103 lt!1361879) lt!1361918)))

(declare-fun b!3909748 () Bool)

(assert (=> b!3909748 (= e!2417096 0)))

(declare-fun b!3909749 () Bool)

(assert (=> b!3909749 (= e!2417096 (+ 1 (size!31103 (t!322734 lt!1361879))))))

(assert (= (and d!1159880 c!679654) b!3909748))

(assert (= (and d!1159880 (not c!679654)) b!3909749))

(declare-fun m!4472853 () Bool)

(assert (=> b!3909749 m!4472853))

(assert (=> b!3909646 d!1159880))

(declare-fun d!1159882 () Bool)

(assert (=> d!1159882 (= (inv!55602 (tag!7306 (rule!9360 (h!46845 prefixTokens!80)))) (= (mod (str.len (value!204344 (tag!7306 (rule!9360 (h!46845 prefixTokens!80))))) 2) 0))))

(assert (=> b!3909657 d!1159882))

(declare-fun d!1159886 () Bool)

(declare-fun res!1581345 () Bool)

(declare-fun e!2417100 () Bool)

(assert (=> d!1159886 (=> (not res!1581345) (not e!2417100))))

(assert (=> d!1159886 (= res!1581345 (semiInverseModEq!2767 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toValue!8890 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))))))

(assert (=> d!1159886 (= (inv!55605 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) e!2417100)))

(declare-fun b!3909752 () Bool)

(assert (=> b!3909752 (= e!2417100 (equivClasses!2666 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toValue!8890 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))))))

(assert (= (and d!1159886 res!1581345) b!3909752))

(declare-fun m!4472869 () Bool)

(assert (=> d!1159886 m!4472869))

(declare-fun m!4472871 () Bool)

(assert (=> b!3909752 m!4472871))

(assert (=> b!3909657 d!1159886))

(declare-fun d!1159888 () Bool)

(declare-fun res!1581346 () Bool)

(declare-fun e!2417101 () Bool)

(assert (=> d!1159888 (=> (not res!1581346) (not e!2417101))))

(assert (=> d!1159888 (= res!1581346 (not (isEmpty!24637 (originalCharacters!7046 (h!46845 suffixTokens!72)))))))

(assert (=> d!1159888 (= (inv!55606 (h!46845 suffixTokens!72)) e!2417101)))

(declare-fun b!3909756 () Bool)

(declare-fun res!1581347 () Bool)

(assert (=> b!3909756 (=> (not res!1581347) (not e!2417101))))

(assert (=> b!3909756 (= res!1581347 (= (originalCharacters!7046 (h!46845 suffixTokens!72)) (list!15399 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (value!204345 (h!46845 suffixTokens!72))))))))

(declare-fun b!3909757 () Bool)

(assert (=> b!3909757 (= e!2417101 (= (size!31104 (h!46845 suffixTokens!72)) (size!31103 (originalCharacters!7046 (h!46845 suffixTokens!72)))))))

(assert (= (and d!1159888 res!1581346) b!3909756))

(assert (= (and b!3909756 res!1581347) b!3909757))

(declare-fun b_lambda!114453 () Bool)

(assert (=> (not b_lambda!114453) (not b!3909756)))

(declare-fun t!322745 () Bool)

(declare-fun tb!232475 () Bool)

(assert (=> (and b!3909643 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322745) tb!232475))

(declare-fun b!3909758 () Bool)

(declare-fun e!2417102 () Bool)

(declare-fun tp!1189992 () Bool)

(assert (=> b!3909758 (= e!2417102 (and (inv!55609 (c!679631 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (value!204345 (h!46845 suffixTokens!72))))) tp!1189992))))

(declare-fun result!281806 () Bool)

(assert (=> tb!232475 (= result!281806 (and (inv!55610 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (value!204345 (h!46845 suffixTokens!72)))) e!2417102))))

(assert (= tb!232475 b!3909758))

(declare-fun m!4472883 () Bool)

(assert (=> b!3909758 m!4472883))

(declare-fun m!4472885 () Bool)

(assert (=> tb!232475 m!4472885))

(assert (=> b!3909756 t!322745))

(declare-fun b_and!297269 () Bool)

(assert (= b_and!297263 (and (=> t!322745 result!281806) b_and!297269)))

(declare-fun t!322749 () Bool)

(declare-fun tb!232479 () Bool)

(assert (=> (and b!3909640 (= (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322749) tb!232479))

(declare-fun result!281812 () Bool)

(assert (= result!281812 result!281806))

(assert (=> b!3909756 t!322749))

(declare-fun b_and!297271 () Bool)

(assert (= b_and!297265 (and (=> t!322749 result!281812) b_and!297271)))

(declare-fun t!322751 () Bool)

(declare-fun tb!232481 () Bool)

(assert (=> (and b!3909661 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322751) tb!232481))

(declare-fun result!281814 () Bool)

(assert (= result!281814 result!281806))

(assert (=> b!3909756 t!322751))

(declare-fun b_and!297273 () Bool)

(assert (= b_and!297267 (and (=> t!322751 result!281814) b_and!297273)))

(declare-fun m!4472889 () Bool)

(assert (=> d!1159888 m!4472889))

(declare-fun m!4472891 () Bool)

(assert (=> b!3909756 m!4472891))

(assert (=> b!3909756 m!4472891))

(declare-fun m!4472893 () Bool)

(assert (=> b!3909756 m!4472893))

(declare-fun m!4472897 () Bool)

(assert (=> b!3909757 m!4472897))

(assert (=> b!3909647 d!1159888))

(declare-fun b!3909780 () Bool)

(declare-fun res!1581350 () Bool)

(declare-fun e!2417119 () Bool)

(assert (=> b!3909780 (=> res!1581350 e!2417119)))

(assert (=> b!3909780 (= res!1581350 (not ((_ is IntegerValue!20030) (value!204345 (h!46845 suffixTokens!72)))))))

(declare-fun e!2417117 () Bool)

(assert (=> b!3909780 (= e!2417117 e!2417119)))

(declare-fun b!3909781 () Bool)

(declare-fun e!2417118 () Bool)

(assert (=> b!3909781 (= e!2417118 e!2417117)))

(declare-fun c!679664 () Bool)

(assert (=> b!3909781 (= c!679664 ((_ is IntegerValue!20029) (value!204345 (h!46845 suffixTokens!72))))))

(declare-fun d!1159894 () Bool)

(declare-fun c!679663 () Bool)

(assert (=> d!1159894 (= c!679663 ((_ is IntegerValue!20028) (value!204345 (h!46845 suffixTokens!72))))))

(assert (=> d!1159894 (= (inv!21 (value!204345 (h!46845 suffixTokens!72))) e!2417118)))

(declare-fun b!3909782 () Bool)

(declare-fun inv!16 (TokenValue!6676) Bool)

(assert (=> b!3909782 (= e!2417118 (inv!16 (value!204345 (h!46845 suffixTokens!72))))))

(declare-fun b!3909783 () Bool)

(declare-fun inv!17 (TokenValue!6676) Bool)

(assert (=> b!3909783 (= e!2417117 (inv!17 (value!204345 (h!46845 suffixTokens!72))))))

(declare-fun b!3909784 () Bool)

(declare-fun inv!15 (TokenValue!6676) Bool)

(assert (=> b!3909784 (= e!2417119 (inv!15 (value!204345 (h!46845 suffixTokens!72))))))

(assert (= (and d!1159894 c!679663) b!3909782))

(assert (= (and d!1159894 (not c!679663)) b!3909781))

(assert (= (and b!3909781 c!679664) b!3909783))

(assert (= (and b!3909781 (not c!679664)) b!3909780))

(assert (= (and b!3909780 (not res!1581350)) b!3909784))

(declare-fun m!4472913 () Bool)

(assert (=> b!3909782 m!4472913))

(declare-fun m!4472915 () Bool)

(assert (=> b!3909783 m!4472915))

(declare-fun m!4472917 () Bool)

(assert (=> b!3909784 m!4472917))

(assert (=> b!3909658 d!1159894))

(declare-fun d!1159902 () Bool)

(declare-fun res!1581361 () Bool)

(declare-fun e!2417128 () Bool)

(assert (=> d!1159902 (=> (not res!1581361) (not e!2417128))))

(declare-fun rulesValid!2501 (LexerInterface!6035 List!41550) Bool)

(assert (=> d!1159902 (= res!1581361 (rulesValid!2501 thiss!20629 rules!2768))))

(assert (=> d!1159902 (= (rulesInvariant!5378 thiss!20629 rules!2768) e!2417128)))

(declare-fun b!3909799 () Bool)

(declare-datatypes ((List!41552 0))(
  ( (Nil!41428) (Cons!41428 (h!46848 String!47098) (t!322835 List!41552)) )
))
(declare-fun noDuplicateTag!2502 (LexerInterface!6035 List!41550 List!41552) Bool)

(assert (=> b!3909799 (= e!2417128 (noDuplicateTag!2502 thiss!20629 rules!2768 Nil!41428))))

(assert (= (and d!1159902 res!1581361) b!3909799))

(declare-fun m!4472931 () Bool)

(assert (=> d!1159902 m!4472931))

(declare-fun m!4472937 () Bool)

(assert (=> b!3909799 m!4472937))

(assert (=> b!3909648 d!1159902))

(declare-fun d!1159910 () Bool)

(declare-fun res!1581374 () Bool)

(declare-fun e!2417137 () Bool)

(assert (=> d!1159910 (=> (not res!1581374) (not e!2417137))))

(declare-fun validRegex!5166 (Regex!11351) Bool)

(assert (=> d!1159910 (= res!1581374 (validRegex!5166 (regex!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))))))

(assert (=> d!1159910 (= (ruleValid!2394 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874)))) e!2417137)))

(declare-fun b!3909812 () Bool)

(declare-fun res!1581375 () Bool)

(assert (=> b!3909812 (=> (not res!1581375) (not e!2417137))))

(declare-fun nullable!3967 (Regex!11351) Bool)

(assert (=> b!3909812 (= res!1581375 (not (nullable!3967 (regex!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))))))

(declare-fun b!3909813 () Bool)

(assert (=> b!3909813 (= e!2417137 (not (= (tag!7306 (rule!9360 (_1!23470 (v!39187 lt!1361874)))) (String!47099 ""))))))

(assert (= (and d!1159910 res!1581374) b!3909812))

(assert (= (and b!3909812 res!1581375) b!3909813))

(declare-fun m!4472943 () Bool)

(assert (=> d!1159910 m!4472943))

(declare-fun m!4472945 () Bool)

(assert (=> b!3909812 m!4472945))

(assert (=> b!3909659 d!1159910))

(declare-fun d!1159916 () Bool)

(declare-fun dynLambda!17798 (Int BalanceConc!24908) TokenValue!6676)

(assert (=> d!1159916 (= (apply!9685 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))) (seqFromList!4713 lt!1361878)) (dynLambda!17798 (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))) (seqFromList!4713 lt!1361878)))))

(declare-fun b_lambda!114459 () Bool)

(assert (=> (not b_lambda!114459) (not d!1159916)))

(declare-fun tb!232493 () Bool)

(declare-fun t!322763 () Bool)

(assert (=> (and b!3909643 (= (toValue!8890 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322763) tb!232493))

(declare-fun result!281828 () Bool)

(assert (=> tb!232493 (= result!281828 (inv!21 (dynLambda!17798 (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))) (seqFromList!4713 lt!1361878))))))

(declare-fun m!4472959 () Bool)

(assert (=> tb!232493 m!4472959))

(assert (=> d!1159916 t!322763))

(declare-fun b_and!297287 () Bool)

(assert (= b_and!297251 (and (=> t!322763 result!281828) b_and!297287)))

(declare-fun t!322765 () Bool)

(declare-fun tb!232495 () Bool)

(assert (=> (and b!3909640 (= (toValue!8890 (transformation!6446 (h!46846 rules!2768))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322765) tb!232495))

(declare-fun result!281832 () Bool)

(assert (= result!281832 result!281828))

(assert (=> d!1159916 t!322765))

(declare-fun b_and!297289 () Bool)

(assert (= b_and!297255 (and (=> t!322765 result!281832) b_and!297289)))

(declare-fun t!322767 () Bool)

(declare-fun tb!232497 () Bool)

(assert (=> (and b!3909661 (= (toValue!8890 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322767) tb!232497))

(declare-fun result!281834 () Bool)

(assert (= result!281834 result!281828))

(assert (=> d!1159916 t!322767))

(declare-fun b_and!297291 () Bool)

(assert (= b_and!297259 (and (=> t!322767 result!281834) b_and!297291)))

(assert (=> d!1159916 m!4472755))

(declare-fun m!4472967 () Bool)

(assert (=> d!1159916 m!4472967))

(assert (=> b!3909659 d!1159916))

(declare-fun d!1159922 () Bool)

(assert (=> d!1159922 (isPrefix!3541 lt!1361878 (++!10650 lt!1361878 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun lt!1361946 () Unit!59571)

(declare-fun choose!23146 (List!41547 List!41547) Unit!59571)

(assert (=> d!1159922 (= lt!1361946 (choose!23146 lt!1361878 (_2!23470 (v!39187 lt!1361874))))))

(assert (=> d!1159922 (= (lemmaConcatTwoListThenFirstIsPrefix!2404 lt!1361878 (_2!23470 (v!39187 lt!1361874))) lt!1361946)))

(declare-fun bs!585523 () Bool)

(assert (= bs!585523 d!1159922))

(assert (=> bs!585523 m!4472771))

(assert (=> bs!585523 m!4472771))

(declare-fun m!4472975 () Bool)

(assert (=> bs!585523 m!4472975))

(declare-fun m!4472977 () Bool)

(assert (=> bs!585523 m!4472977))

(assert (=> b!3909659 d!1159922))

(declare-fun b!3909854 () Bool)

(declare-fun e!2417165 () List!41547)

(assert (=> b!3909854 (= e!2417165 (_2!23470 (v!39187 lt!1361874)))))

(declare-fun lt!1361952 () List!41547)

(declare-fun b!3909857 () Bool)

(declare-fun e!2417164 () Bool)

(assert (=> b!3909857 (= e!2417164 (or (not (= (_2!23470 (v!39187 lt!1361874)) Nil!41423)) (= lt!1361952 lt!1361878)))))

(declare-fun b!3909855 () Bool)

(assert (=> b!3909855 (= e!2417165 (Cons!41423 (h!46843 lt!1361878) (++!10650 (t!322734 lt!1361878) (_2!23470 (v!39187 lt!1361874)))))))

(declare-fun b!3909856 () Bool)

(declare-fun res!1581397 () Bool)

(assert (=> b!3909856 (=> (not res!1581397) (not e!2417164))))

(assert (=> b!3909856 (= res!1581397 (= (size!31103 lt!1361952) (+ (size!31103 lt!1361878) (size!31103 (_2!23470 (v!39187 lt!1361874))))))))

(declare-fun d!1159932 () Bool)

(assert (=> d!1159932 e!2417164))

(declare-fun res!1581396 () Bool)

(assert (=> d!1159932 (=> (not res!1581396) (not e!2417164))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6215 (List!41547) (InoxSet C!22888))

(assert (=> d!1159932 (= res!1581396 (= (content!6215 lt!1361952) ((_ map or) (content!6215 lt!1361878) (content!6215 (_2!23470 (v!39187 lt!1361874))))))))

(assert (=> d!1159932 (= lt!1361952 e!2417165)))

(declare-fun c!679675 () Bool)

(assert (=> d!1159932 (= c!679675 ((_ is Nil!41423) lt!1361878))))

(assert (=> d!1159932 (= (++!10650 lt!1361878 (_2!23470 (v!39187 lt!1361874))) lt!1361952)))

(assert (= (and d!1159932 c!679675) b!3909854))

(assert (= (and d!1159932 (not c!679675)) b!3909855))

(assert (= (and d!1159932 res!1581396) b!3909856))

(assert (= (and b!3909856 res!1581397) b!3909857))

(declare-fun m!4473017 () Bool)

(assert (=> b!3909855 m!4473017))

(declare-fun m!4473019 () Bool)

(assert (=> b!3909856 m!4473019))

(assert (=> b!3909856 m!4472765))

(assert (=> b!3909856 m!4472733))

(declare-fun m!4473021 () Bool)

(assert (=> d!1159932 m!4473021))

(declare-fun m!4473023 () Bool)

(assert (=> d!1159932 m!4473023))

(declare-fun m!4473025 () Bool)

(assert (=> d!1159932 m!4473025))

(assert (=> b!3909659 d!1159932))

(declare-fun d!1159952 () Bool)

(declare-fun lt!1361955 () BalanceConc!24908)

(assert (=> d!1159952 (= (list!15399 lt!1361955) (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874))))))

(assert (=> d!1159952 (= lt!1361955 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))) (value!204345 (_1!23470 (v!39187 lt!1361874)))))))

(assert (=> d!1159952 (= (charsOf!4270 (_1!23470 (v!39187 lt!1361874))) lt!1361955)))

(declare-fun b_lambda!114465 () Bool)

(assert (=> (not b_lambda!114465) (not d!1159952)))

(declare-fun t!322781 () Bool)

(declare-fun tb!232511 () Bool)

(assert (=> (and b!3909643 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322781) tb!232511))

(declare-fun b!3909858 () Bool)

(declare-fun e!2417166 () Bool)

(declare-fun tp!1189998 () Bool)

(assert (=> b!3909858 (= e!2417166 (and (inv!55609 (c!679631 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))) (value!204345 (_1!23470 (v!39187 lt!1361874)))))) tp!1189998))))

(declare-fun result!281848 () Bool)

(assert (=> tb!232511 (= result!281848 (and (inv!55610 (dynLambda!17797 (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874))))) (value!204345 (_1!23470 (v!39187 lt!1361874))))) e!2417166))))

(assert (= tb!232511 b!3909858))

(declare-fun m!4473027 () Bool)

(assert (=> b!3909858 m!4473027))

(declare-fun m!4473029 () Bool)

(assert (=> tb!232511 m!4473029))

(assert (=> d!1159952 t!322781))

(declare-fun b_and!297305 () Bool)

(assert (= b_and!297269 (and (=> t!322781 result!281848) b_and!297305)))

(declare-fun t!322783 () Bool)

(declare-fun tb!232513 () Bool)

(assert (=> (and b!3909640 (= (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322783) tb!232513))

(declare-fun result!281850 () Bool)

(assert (= result!281850 result!281848))

(assert (=> d!1159952 t!322783))

(declare-fun b_and!297307 () Bool)

(assert (= b_and!297271 (and (=> t!322783 result!281850) b_and!297307)))

(declare-fun tb!232515 () Bool)

(declare-fun t!322785 () Bool)

(assert (=> (and b!3909661 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322785) tb!232515))

(declare-fun result!281852 () Bool)

(assert (= result!281852 result!281848))

(assert (=> d!1159952 t!322785))

(declare-fun b_and!297309 () Bool)

(assert (= b_and!297273 (and (=> t!322785 result!281852) b_and!297309)))

(declare-fun m!4473031 () Bool)

(assert (=> d!1159952 m!4473031))

(declare-fun m!4473033 () Bool)

(assert (=> d!1159952 m!4473033))

(assert (=> b!3909659 d!1159952))

(declare-fun d!1159954 () Bool)

(assert (=> d!1159954 (= (size!31104 (_1!23470 (v!39187 lt!1361874))) (size!31103 (originalCharacters!7046 (_1!23470 (v!39187 lt!1361874)))))))

(declare-fun Unit!59574 () Unit!59571)

(assert (=> d!1159954 (= (lemmaCharactersSize!1103 (_1!23470 (v!39187 lt!1361874))) Unit!59574)))

(declare-fun bs!585524 () Bool)

(assert (= bs!585524 d!1159954))

(assert (=> bs!585524 m!4472735))

(assert (=> b!3909659 d!1159954))

(declare-fun d!1159956 () Bool)

(declare-fun fromListB!2176 (List!41547) BalanceConc!24908)

(assert (=> d!1159956 (= (seqFromList!4713 lt!1361878) (fromListB!2176 lt!1361878))))

(declare-fun bs!585525 () Bool)

(assert (= bs!585525 d!1159956))

(declare-fun m!4473035 () Bool)

(assert (=> bs!585525 m!4473035))

(assert (=> b!3909659 d!1159956))

(declare-fun d!1159958 () Bool)

(assert (=> d!1159958 (ruleValid!2394 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874))))))

(declare-fun lt!1361958 () Unit!59571)

(declare-fun choose!23147 (LexerInterface!6035 Rule!12692 List!41550) Unit!59571)

(assert (=> d!1159958 (= lt!1361958 (choose!23147 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874))) rules!2768))))

(declare-fun contains!8327 (List!41550 Rule!12692) Bool)

(assert (=> d!1159958 (contains!8327 rules!2768 (rule!9360 (_1!23470 (v!39187 lt!1361874))))))

(assert (=> d!1159958 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1474 thiss!20629 (rule!9360 (_1!23470 (v!39187 lt!1361874))) rules!2768) lt!1361958)))

(declare-fun bs!585526 () Bool)

(assert (= bs!585526 d!1159958))

(assert (=> bs!585526 m!4472761))

(declare-fun m!4473037 () Bool)

(assert (=> bs!585526 m!4473037))

(declare-fun m!4473039 () Bool)

(assert (=> bs!585526 m!4473039))

(assert (=> b!3909659 d!1159958))

(declare-fun d!1159960 () Bool)

(declare-fun lt!1361959 () Int)

(assert (=> d!1159960 (>= lt!1361959 0)))

(declare-fun e!2417167 () Int)

(assert (=> d!1159960 (= lt!1361959 e!2417167)))

(declare-fun c!679676 () Bool)

(assert (=> d!1159960 (= c!679676 ((_ is Nil!41423) lt!1361878))))

(assert (=> d!1159960 (= (size!31103 lt!1361878) lt!1361959)))

(declare-fun b!3909859 () Bool)

(assert (=> b!3909859 (= e!2417167 0)))

(declare-fun b!3909860 () Bool)

(assert (=> b!3909860 (= e!2417167 (+ 1 (size!31103 (t!322734 lt!1361878))))))

(assert (= (and d!1159960 c!679676) b!3909859))

(assert (= (and d!1159960 (not c!679676)) b!3909860))

(declare-fun m!4473041 () Bool)

(assert (=> b!3909860 m!4473041))

(assert (=> b!3909659 d!1159960))

(declare-fun d!1159962 () Bool)

(declare-fun lt!1361972 () List!41547)

(assert (=> d!1159962 (= (++!10650 lt!1361878 lt!1361972) lt!1361879)))

(declare-fun e!2417172 () List!41547)

(assert (=> d!1159962 (= lt!1361972 e!2417172)))

(declare-fun c!679681 () Bool)

(assert (=> d!1159962 (= c!679681 ((_ is Cons!41423) lt!1361878))))

(assert (=> d!1159962 (>= (size!31103 lt!1361879) (size!31103 lt!1361878))))

(assert (=> d!1159962 (= (getSuffix!1996 lt!1361879 lt!1361878) lt!1361972)))

(declare-fun b!3909869 () Bool)

(declare-fun tail!5975 (List!41547) List!41547)

(assert (=> b!3909869 (= e!2417172 (getSuffix!1996 (tail!5975 lt!1361879) (t!322734 lt!1361878)))))

(declare-fun b!3909870 () Bool)

(assert (=> b!3909870 (= e!2417172 lt!1361879)))

(assert (= (and d!1159962 c!679681) b!3909869))

(assert (= (and d!1159962 (not c!679681)) b!3909870))

(declare-fun m!4473043 () Bool)

(assert (=> d!1159962 m!4473043))

(assert (=> d!1159962 m!4472725))

(assert (=> d!1159962 m!4472765))

(declare-fun m!4473045 () Bool)

(assert (=> b!3909869 m!4473045))

(assert (=> b!3909869 m!4473045))

(declare-fun m!4473047 () Bool)

(assert (=> b!3909869 m!4473047))

(assert (=> b!3909659 d!1159962))

(declare-fun b!3909905 () Bool)

(declare-fun e!2417188 () Bool)

(assert (=> b!3909905 (= e!2417188 (>= (size!31103 lt!1361875) (size!31103 lt!1361878)))))

(declare-fun d!1159964 () Bool)

(assert (=> d!1159964 e!2417188))

(declare-fun res!1581427 () Bool)

(assert (=> d!1159964 (=> res!1581427 e!2417188)))

(declare-fun lt!1361980 () Bool)

(assert (=> d!1159964 (= res!1581427 (not lt!1361980))))

(declare-fun e!2417187 () Bool)

(assert (=> d!1159964 (= lt!1361980 e!2417187)))

(declare-fun res!1581430 () Bool)

(assert (=> d!1159964 (=> res!1581430 e!2417187)))

(assert (=> d!1159964 (= res!1581430 ((_ is Nil!41423) lt!1361878))))

(assert (=> d!1159964 (= (isPrefix!3541 lt!1361878 lt!1361875) lt!1361980)))

(declare-fun b!3909902 () Bool)

(declare-fun e!2417186 () Bool)

(assert (=> b!3909902 (= e!2417187 e!2417186)))

(declare-fun res!1581428 () Bool)

(assert (=> b!3909902 (=> (not res!1581428) (not e!2417186))))

(assert (=> b!3909902 (= res!1581428 (not ((_ is Nil!41423) lt!1361875)))))

(declare-fun b!3909903 () Bool)

(declare-fun res!1581429 () Bool)

(assert (=> b!3909903 (=> (not res!1581429) (not e!2417186))))

(declare-fun head!8257 (List!41547) C!22888)

(assert (=> b!3909903 (= res!1581429 (= (head!8257 lt!1361878) (head!8257 lt!1361875)))))

(declare-fun b!3909904 () Bool)

(assert (=> b!3909904 (= e!2417186 (isPrefix!3541 (tail!5975 lt!1361878) (tail!5975 lt!1361875)))))

(assert (= (and d!1159964 (not res!1581430)) b!3909902))

(assert (= (and b!3909902 res!1581428) b!3909903))

(assert (= (and b!3909903 res!1581429) b!3909904))

(assert (= (and d!1159964 (not res!1581427)) b!3909905))

(declare-fun m!4473071 () Bool)

(assert (=> b!3909905 m!4473071))

(assert (=> b!3909905 m!4472765))

(declare-fun m!4473081 () Bool)

(assert (=> b!3909903 m!4473081))

(declare-fun m!4473085 () Bool)

(assert (=> b!3909903 m!4473085))

(declare-fun m!4473087 () Bool)

(assert (=> b!3909904 m!4473087))

(declare-fun m!4473089 () Bool)

(assert (=> b!3909904 m!4473089))

(assert (=> b!3909904 m!4473087))

(assert (=> b!3909904 m!4473089))

(declare-fun m!4473091 () Bool)

(assert (=> b!3909904 m!4473091))

(assert (=> b!3909659 d!1159964))

(declare-fun b!3909908 () Bool)

(declare-fun e!2417190 () Bool)

(declare-fun lt!1361982 () tuple2!40670)

(assert (=> b!3909908 (= e!2417190 (= (_2!23469 lt!1361982) (_2!23470 (v!39187 lt!1361874))))))

(declare-fun b!3909909 () Bool)

(declare-fun e!2417191 () Bool)

(assert (=> b!3909909 (= e!2417191 (not (isEmpty!24636 (_1!23469 lt!1361982))))))

(declare-fun b!3909910 () Bool)

(declare-fun e!2417192 () tuple2!40670)

(assert (=> b!3909910 (= e!2417192 (tuple2!40671 Nil!41425 (_2!23470 (v!39187 lt!1361874))))))

(declare-fun b!3909911 () Bool)

(assert (=> b!3909911 (= e!2417190 e!2417191)))

(declare-fun res!1581431 () Bool)

(assert (=> b!3909911 (= res!1581431 (< (size!31103 (_2!23469 lt!1361982)) (size!31103 (_2!23470 (v!39187 lt!1361874)))))))

(assert (=> b!3909911 (=> (not res!1581431) (not e!2417191))))

(declare-fun d!1159968 () Bool)

(assert (=> d!1159968 e!2417190))

(declare-fun c!679684 () Bool)

(assert (=> d!1159968 (= c!679684 (> (size!31106 (_1!23469 lt!1361982)) 0))))

(assert (=> d!1159968 (= lt!1361982 e!2417192)))

(declare-fun c!679685 () Bool)

(declare-fun lt!1361984 () Option!8866)

(assert (=> d!1159968 (= c!679685 ((_ is Some!8865) lt!1361984))))

(assert (=> d!1159968 (= lt!1361984 (maxPrefix!3339 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1361874))))))

(assert (=> d!1159968 (= (lexList!1803 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1361874))) lt!1361982)))

(declare-fun b!3909912 () Bool)

(declare-fun lt!1361983 () tuple2!40670)

(assert (=> b!3909912 (= e!2417192 (tuple2!40671 (Cons!41425 (_1!23470 (v!39187 lt!1361984)) (_1!23469 lt!1361983)) (_2!23469 lt!1361983)))))

(assert (=> b!3909912 (= lt!1361983 (lexList!1803 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1361984))))))

(assert (= (and d!1159968 c!679685) b!3909912))

(assert (= (and d!1159968 (not c!679685)) b!3909910))

(assert (= (and d!1159968 c!679684) b!3909911))

(assert (= (and d!1159968 (not c!679684)) b!3909908))

(assert (= (and b!3909911 res!1581431) b!3909909))

(declare-fun m!4473095 () Bool)

(assert (=> b!3909909 m!4473095))

(declare-fun m!4473097 () Bool)

(assert (=> b!3909911 m!4473097))

(assert (=> b!3909911 m!4472733))

(declare-fun m!4473099 () Bool)

(assert (=> d!1159968 m!4473099))

(declare-fun m!4473101 () Bool)

(assert (=> d!1159968 m!4473101))

(declare-fun m!4473103 () Bool)

(assert (=> b!3909912 m!4473103))

(assert (=> b!3909659 d!1159968))

(declare-fun d!1159972 () Bool)

(assert (=> d!1159972 (= (_2!23470 (v!39187 lt!1361874)) lt!1361887)))

(declare-fun lt!1361990 () Unit!59571)

(declare-fun choose!23148 (List!41547 List!41547 List!41547 List!41547 List!41547) Unit!59571)

(assert (=> d!1159972 (= lt!1361990 (choose!23148 lt!1361878 (_2!23470 (v!39187 lt!1361874)) lt!1361878 lt!1361887 lt!1361879))))

(assert (=> d!1159972 (isPrefix!3541 lt!1361878 lt!1361879)))

(assert (=> d!1159972 (= (lemmaSamePrefixThenSameSuffix!1762 lt!1361878 (_2!23470 (v!39187 lt!1361874)) lt!1361878 lt!1361887 lt!1361879) lt!1361990)))

(declare-fun bs!585527 () Bool)

(assert (= bs!585527 d!1159972))

(declare-fun m!4473131 () Bool)

(assert (=> bs!585527 m!4473131))

(declare-fun m!4473133 () Bool)

(assert (=> bs!585527 m!4473133))

(assert (=> b!3909659 d!1159972))

(declare-fun d!1159984 () Bool)

(declare-fun list!15401 (Conc!12657) List!41547)

(assert (=> d!1159984 (= (list!15399 (charsOf!4270 (_1!23470 (v!39187 lt!1361874)))) (list!15401 (c!679631 (charsOf!4270 (_1!23470 (v!39187 lt!1361874))))))))

(declare-fun bs!585528 () Bool)

(assert (= bs!585528 d!1159984))

(declare-fun m!4473137 () Bool)

(assert (=> bs!585528 m!4473137))

(assert (=> b!3909659 d!1159984))

(declare-fun d!1159986 () Bool)

(assert (=> d!1159986 (= (inv!55602 (tag!7306 (h!46846 rules!2768))) (= (mod (str.len (value!204344 (tag!7306 (h!46846 rules!2768)))) 2) 0))))

(assert (=> b!3909660 d!1159986))

(declare-fun d!1159988 () Bool)

(declare-fun res!1581438 () Bool)

(declare-fun e!2417219 () Bool)

(assert (=> d!1159988 (=> (not res!1581438) (not e!2417219))))

(assert (=> d!1159988 (= res!1581438 (semiInverseModEq!2767 (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toValue!8890 (transformation!6446 (h!46846 rules!2768)))))))

(assert (=> d!1159988 (= (inv!55605 (transformation!6446 (h!46846 rules!2768))) e!2417219)))

(declare-fun b!3909966 () Bool)

(assert (=> b!3909966 (= e!2417219 (equivClasses!2666 (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toValue!8890 (transformation!6446 (h!46846 rules!2768)))))))

(assert (= (and d!1159988 res!1581438) b!3909966))

(declare-fun m!4473139 () Bool)

(assert (=> d!1159988 m!4473139))

(declare-fun m!4473141 () Bool)

(assert (=> b!3909966 m!4473141))

(assert (=> b!3909660 d!1159988))

(declare-fun d!1159990 () Bool)

(declare-fun lt!1361992 () Int)

(assert (=> d!1159990 (>= lt!1361992 0)))

(declare-fun e!2417222 () Int)

(assert (=> d!1159990 (= lt!1361992 e!2417222)))

(declare-fun c!679697 () Bool)

(assert (=> d!1159990 (= c!679697 ((_ is Nil!41423) prefix!426))))

(assert (=> d!1159990 (= (size!31103 prefix!426) lt!1361992)))

(declare-fun b!3909971 () Bool)

(assert (=> b!3909971 (= e!2417222 0)))

(declare-fun b!3909972 () Bool)

(assert (=> b!3909972 (= e!2417222 (+ 1 (size!31103 (t!322734 prefix!426))))))

(assert (= (and d!1159990 c!679697) b!3909971))

(assert (= (and d!1159990 (not c!679697)) b!3909972))

(declare-fun m!4473143 () Bool)

(assert (=> b!3909972 m!4473143))

(assert (=> b!3909639 d!1159990))

(declare-fun b!3910022 () Bool)

(declare-fun e!2417266 () Bool)

(declare-fun e!2417267 () Bool)

(assert (=> b!3910022 (= e!2417266 e!2417267)))

(declare-fun res!1581455 () Bool)

(assert (=> b!3910022 (=> (not res!1581455) (not e!2417267))))

(declare-fun lt!1362004 () Option!8866)

(declare-fun isDefined!6915 (Option!8866) Bool)

(assert (=> b!3910022 (= res!1581455 (isDefined!6915 lt!1362004))))

(declare-fun b!3910023 () Bool)

(declare-fun res!1581458 () Bool)

(assert (=> b!3910023 (=> (not res!1581458) (not e!2417267))))

(declare-fun matchR!5444 (Regex!11351 List!41547) Bool)

(declare-fun get!13693 (Option!8866) tuple2!40672)

(assert (=> b!3910023 (= res!1581458 (matchR!5444 (regex!6446 (rule!9360 (_1!23470 (get!13693 lt!1362004)))) (list!15399 (charsOf!4270 (_1!23470 (get!13693 lt!1362004))))))))

(declare-fun b!3910024 () Bool)

(declare-fun e!2417268 () Option!8866)

(declare-fun lt!1362006 () Option!8866)

(declare-fun lt!1362005 () Option!8866)

(assert (=> b!3910024 (= e!2417268 (ite (and ((_ is None!8865) lt!1362006) ((_ is None!8865) lt!1362005)) None!8865 (ite ((_ is None!8865) lt!1362005) lt!1362006 (ite ((_ is None!8865) lt!1362006) lt!1362005 (ite (>= (size!31104 (_1!23470 (v!39187 lt!1362006))) (size!31104 (_1!23470 (v!39187 lt!1362005)))) lt!1362006 lt!1362005)))))))

(declare-fun call!284272 () Option!8866)

(assert (=> b!3910024 (= lt!1362006 call!284272)))

(assert (=> b!3910024 (= lt!1362005 (maxPrefix!3339 thiss!20629 (t!322737 rules!2768) lt!1361879))))

(declare-fun d!1159992 () Bool)

(assert (=> d!1159992 e!2417266))

(declare-fun res!1581453 () Bool)

(assert (=> d!1159992 (=> res!1581453 e!2417266)))

(declare-fun isEmpty!24640 (Option!8866) Bool)

(assert (=> d!1159992 (= res!1581453 (isEmpty!24640 lt!1362004))))

(assert (=> d!1159992 (= lt!1362004 e!2417268)))

(declare-fun c!679700 () Bool)

(assert (=> d!1159992 (= c!679700 (and ((_ is Cons!41426) rules!2768) ((_ is Nil!41426) (t!322737 rules!2768))))))

(declare-fun lt!1362007 () Unit!59571)

(declare-fun lt!1362003 () Unit!59571)

(assert (=> d!1159992 (= lt!1362007 lt!1362003)))

(assert (=> d!1159992 (isPrefix!3541 lt!1361879 lt!1361879)))

(declare-fun lemmaIsPrefixRefl!2246 (List!41547 List!41547) Unit!59571)

(assert (=> d!1159992 (= lt!1362003 (lemmaIsPrefixRefl!2246 lt!1361879 lt!1361879))))

(declare-fun rulesValidInductive!2316 (LexerInterface!6035 List!41550) Bool)

(assert (=> d!1159992 (rulesValidInductive!2316 thiss!20629 rules!2768)))

(assert (=> d!1159992 (= (maxPrefix!3339 thiss!20629 rules!2768 lt!1361879) lt!1362004)))

(declare-fun bm!284267 () Bool)

(declare-fun maxPrefixOneRule!2413 (LexerInterface!6035 Rule!12692 List!41547) Option!8866)

(assert (=> bm!284267 (= call!284272 (maxPrefixOneRule!2413 thiss!20629 (h!46846 rules!2768) lt!1361879))))

(declare-fun b!3910025 () Bool)

(assert (=> b!3910025 (= e!2417267 (contains!8327 rules!2768 (rule!9360 (_1!23470 (get!13693 lt!1362004)))))))

(declare-fun b!3910026 () Bool)

(declare-fun res!1581457 () Bool)

(assert (=> b!3910026 (=> (not res!1581457) (not e!2417267))))

(assert (=> b!3910026 (= res!1581457 (= (++!10650 (list!15399 (charsOf!4270 (_1!23470 (get!13693 lt!1362004)))) (_2!23470 (get!13693 lt!1362004))) lt!1361879))))

(declare-fun b!3910027 () Bool)

(declare-fun res!1581459 () Bool)

(assert (=> b!3910027 (=> (not res!1581459) (not e!2417267))))

(assert (=> b!3910027 (= res!1581459 (< (size!31103 (_2!23470 (get!13693 lt!1362004))) (size!31103 lt!1361879)))))

(declare-fun b!3910028 () Bool)

(declare-fun res!1581454 () Bool)

(assert (=> b!3910028 (=> (not res!1581454) (not e!2417267))))

(assert (=> b!3910028 (= res!1581454 (= (list!15399 (charsOf!4270 (_1!23470 (get!13693 lt!1362004)))) (originalCharacters!7046 (_1!23470 (get!13693 lt!1362004)))))))

(declare-fun b!3910029 () Bool)

(declare-fun res!1581456 () Bool)

(assert (=> b!3910029 (=> (not res!1581456) (not e!2417267))))

(assert (=> b!3910029 (= res!1581456 (= (value!204345 (_1!23470 (get!13693 lt!1362004))) (apply!9685 (transformation!6446 (rule!9360 (_1!23470 (get!13693 lt!1362004)))) (seqFromList!4713 (originalCharacters!7046 (_1!23470 (get!13693 lt!1362004)))))))))

(declare-fun b!3910030 () Bool)

(assert (=> b!3910030 (= e!2417268 call!284272)))

(assert (= (and d!1159992 c!679700) b!3910030))

(assert (= (and d!1159992 (not c!679700)) b!3910024))

(assert (= (or b!3910030 b!3910024) bm!284267))

(assert (= (and d!1159992 (not res!1581453)) b!3910022))

(assert (= (and b!3910022 res!1581455) b!3910028))

(assert (= (and b!3910028 res!1581454) b!3910027))

(assert (= (and b!3910027 res!1581459) b!3910026))

(assert (= (and b!3910026 res!1581457) b!3910029))

(assert (= (and b!3910029 res!1581456) b!3910023))

(assert (= (and b!3910023 res!1581458) b!3910025))

(declare-fun m!4473165 () Bool)

(assert (=> b!3910026 m!4473165))

(declare-fun m!4473167 () Bool)

(assert (=> b!3910026 m!4473167))

(assert (=> b!3910026 m!4473167))

(declare-fun m!4473169 () Bool)

(assert (=> b!3910026 m!4473169))

(assert (=> b!3910026 m!4473169))

(declare-fun m!4473171 () Bool)

(assert (=> b!3910026 m!4473171))

(declare-fun m!4473173 () Bool)

(assert (=> b!3910024 m!4473173))

(assert (=> b!3910025 m!4473165))

(declare-fun m!4473175 () Bool)

(assert (=> b!3910025 m!4473175))

(assert (=> b!3910029 m!4473165))

(declare-fun m!4473177 () Bool)

(assert (=> b!3910029 m!4473177))

(assert (=> b!3910029 m!4473177))

(declare-fun m!4473179 () Bool)

(assert (=> b!3910029 m!4473179))

(assert (=> b!3910028 m!4473165))

(assert (=> b!3910028 m!4473167))

(assert (=> b!3910028 m!4473167))

(assert (=> b!3910028 m!4473169))

(declare-fun m!4473181 () Bool)

(assert (=> bm!284267 m!4473181))

(declare-fun m!4473183 () Bool)

(assert (=> b!3910022 m!4473183))

(declare-fun m!4473185 () Bool)

(assert (=> d!1159992 m!4473185))

(declare-fun m!4473187 () Bool)

(assert (=> d!1159992 m!4473187))

(declare-fun m!4473189 () Bool)

(assert (=> d!1159992 m!4473189))

(declare-fun m!4473191 () Bool)

(assert (=> d!1159992 m!4473191))

(assert (=> b!3910023 m!4473165))

(assert (=> b!3910023 m!4473167))

(assert (=> b!3910023 m!4473167))

(assert (=> b!3910023 m!4473169))

(assert (=> b!3910023 m!4473169))

(declare-fun m!4473193 () Bool)

(assert (=> b!3910023 m!4473193))

(assert (=> b!3910027 m!4473165))

(declare-fun m!4473195 () Bool)

(assert (=> b!3910027 m!4473195))

(assert (=> b!3910027 m!4472725))

(assert (=> b!3909650 d!1159992))

(declare-fun d!1159994 () Bool)

(declare-fun lt!1362008 () Int)

(assert (=> d!1159994 (>= lt!1362008 0)))

(declare-fun e!2417269 () Int)

(assert (=> d!1159994 (= lt!1362008 e!2417269)))

(declare-fun c!679701 () Bool)

(assert (=> d!1159994 (= c!679701 ((_ is Nil!41423) suffix!1176))))

(assert (=> d!1159994 (= (size!31103 suffix!1176) lt!1362008)))

(declare-fun b!3910031 () Bool)

(assert (=> b!3910031 (= e!2417269 0)))

(declare-fun b!3910032 () Bool)

(assert (=> b!3910032 (= e!2417269 (+ 1 (size!31103 (t!322734 suffix!1176))))))

(assert (= (and d!1159994 c!679701) b!3910031))

(assert (= (and d!1159994 (not c!679701)) b!3910032))

(declare-fun m!4473197 () Bool)

(assert (=> b!3910032 m!4473197))

(assert (=> b!3909651 d!1159994))

(declare-fun d!1159996 () Bool)

(declare-fun lt!1362009 () Int)

(assert (=> d!1159996 (>= lt!1362009 0)))

(declare-fun e!2417270 () Int)

(assert (=> d!1159996 (= lt!1362009 e!2417270)))

(declare-fun c!679702 () Bool)

(assert (=> d!1159996 (= c!679702 ((_ is Nil!41423) (_2!23470 (v!39187 lt!1361874))))))

(assert (=> d!1159996 (= (size!31103 (_2!23470 (v!39187 lt!1361874))) lt!1362009)))

(declare-fun b!3910033 () Bool)

(assert (=> b!3910033 (= e!2417270 0)))

(declare-fun b!3910034 () Bool)

(assert (=> b!3910034 (= e!2417270 (+ 1 (size!31103 (t!322734 (_2!23470 (v!39187 lt!1361874))))))))

(assert (= (and d!1159996 c!679702) b!3910033))

(assert (= (and d!1159996 (not c!679702)) b!3910034))

(declare-fun m!4473199 () Bool)

(assert (=> b!3910034 m!4473199))

(assert (=> b!3909651 d!1159996))

(declare-fun b!3910035 () Bool)

(declare-fun e!2417271 () Bool)

(declare-fun lt!1362010 () tuple2!40670)

(assert (=> b!3910035 (= e!2417271 (= (_2!23469 lt!1362010) lt!1361879))))

(declare-fun b!3910036 () Bool)

(declare-fun e!2417272 () Bool)

(assert (=> b!3910036 (= e!2417272 (not (isEmpty!24636 (_1!23469 lt!1362010))))))

(declare-fun b!3910037 () Bool)

(declare-fun e!2417273 () tuple2!40670)

(assert (=> b!3910037 (= e!2417273 (tuple2!40671 Nil!41425 lt!1361879))))

(declare-fun b!3910038 () Bool)

(assert (=> b!3910038 (= e!2417271 e!2417272)))

(declare-fun res!1581460 () Bool)

(assert (=> b!3910038 (= res!1581460 (< (size!31103 (_2!23469 lt!1362010)) (size!31103 lt!1361879)))))

(assert (=> b!3910038 (=> (not res!1581460) (not e!2417272))))

(declare-fun d!1159998 () Bool)

(assert (=> d!1159998 e!2417271))

(declare-fun c!679703 () Bool)

(assert (=> d!1159998 (= c!679703 (> (size!31106 (_1!23469 lt!1362010)) 0))))

(assert (=> d!1159998 (= lt!1362010 e!2417273)))

(declare-fun c!679704 () Bool)

(declare-fun lt!1362012 () Option!8866)

(assert (=> d!1159998 (= c!679704 ((_ is Some!8865) lt!1362012))))

(assert (=> d!1159998 (= lt!1362012 (maxPrefix!3339 thiss!20629 rules!2768 lt!1361879))))

(assert (=> d!1159998 (= (lexList!1803 thiss!20629 rules!2768 lt!1361879) lt!1362010)))

(declare-fun b!3910039 () Bool)

(declare-fun lt!1362011 () tuple2!40670)

(assert (=> b!3910039 (= e!2417273 (tuple2!40671 (Cons!41425 (_1!23470 (v!39187 lt!1362012)) (_1!23469 lt!1362011)) (_2!23469 lt!1362011)))))

(assert (=> b!3910039 (= lt!1362011 (lexList!1803 thiss!20629 rules!2768 (_2!23470 (v!39187 lt!1362012))))))

(assert (= (and d!1159998 c!679704) b!3910039))

(assert (= (and d!1159998 (not c!679704)) b!3910037))

(assert (= (and d!1159998 c!679703) b!3910038))

(assert (= (and d!1159998 (not c!679703)) b!3910035))

(assert (= (and b!3910038 res!1581460) b!3910036))

(declare-fun m!4473201 () Bool)

(assert (=> b!3910036 m!4473201))

(declare-fun m!4473203 () Bool)

(assert (=> b!3910038 m!4473203))

(assert (=> b!3910038 m!4472725))

(declare-fun m!4473205 () Bool)

(assert (=> d!1159998 m!4473205))

(assert (=> d!1159998 m!4472743))

(declare-fun m!4473207 () Bool)

(assert (=> b!3910039 m!4473207))

(assert (=> b!3909662 d!1159998))

(declare-fun d!1160000 () Bool)

(declare-fun e!2417278 () Bool)

(assert (=> d!1160000 e!2417278))

(declare-fun res!1581466 () Bool)

(assert (=> d!1160000 (=> (not res!1581466) (not e!2417278))))

(declare-fun lt!1362015 () List!41549)

(declare-fun content!6216 (List!41549) (InoxSet Token!12030))

(assert (=> d!1160000 (= res!1581466 (= (content!6216 lt!1362015) ((_ map or) (content!6216 prefixTokens!80) (content!6216 suffixTokens!72))))))

(declare-fun e!2417279 () List!41549)

(assert (=> d!1160000 (= lt!1362015 e!2417279)))

(declare-fun c!679707 () Bool)

(assert (=> d!1160000 (= c!679707 ((_ is Nil!41425) prefixTokens!80))))

(assert (=> d!1160000 (= (++!10649 prefixTokens!80 suffixTokens!72) lt!1362015)))

(declare-fun b!3910049 () Bool)

(assert (=> b!3910049 (= e!2417279 (Cons!41425 (h!46845 prefixTokens!80) (++!10649 (t!322736 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3910051 () Bool)

(assert (=> b!3910051 (= e!2417278 (or (not (= suffixTokens!72 Nil!41425)) (= lt!1362015 prefixTokens!80)))))

(declare-fun b!3910050 () Bool)

(declare-fun res!1581465 () Bool)

(assert (=> b!3910050 (=> (not res!1581465) (not e!2417278))))

(assert (=> b!3910050 (= res!1581465 (= (size!31106 lt!1362015) (+ (size!31106 prefixTokens!80) (size!31106 suffixTokens!72))))))

(declare-fun b!3910048 () Bool)

(assert (=> b!3910048 (= e!2417279 suffixTokens!72)))

(assert (= (and d!1160000 c!679707) b!3910048))

(assert (= (and d!1160000 (not c!679707)) b!3910049))

(assert (= (and d!1160000 res!1581466) b!3910050))

(assert (= (and b!3910050 res!1581465) b!3910051))

(declare-fun m!4473209 () Bool)

(assert (=> d!1160000 m!4473209))

(declare-fun m!4473211 () Bool)

(assert (=> d!1160000 m!4473211))

(declare-fun m!4473213 () Bool)

(assert (=> d!1160000 m!4473213))

(declare-fun m!4473215 () Bool)

(assert (=> b!3910049 m!4473215))

(declare-fun m!4473217 () Bool)

(assert (=> b!3910050 m!4473217))

(declare-fun m!4473219 () Bool)

(assert (=> b!3910050 m!4473219))

(declare-fun m!4473221 () Bool)

(assert (=> b!3910050 m!4473221))

(assert (=> b!3909662 d!1160000))

(declare-fun b!3910052 () Bool)

(declare-fun e!2417281 () List!41547)

(assert (=> b!3910052 (= e!2417281 suffix!1176)))

(declare-fun lt!1362016 () List!41547)

(declare-fun b!3910055 () Bool)

(declare-fun e!2417280 () Bool)

(assert (=> b!3910055 (= e!2417280 (or (not (= suffix!1176 Nil!41423)) (= lt!1362016 prefix!426)))))

(declare-fun b!3910053 () Bool)

(assert (=> b!3910053 (= e!2417281 (Cons!41423 (h!46843 prefix!426) (++!10650 (t!322734 prefix!426) suffix!1176)))))

(declare-fun b!3910054 () Bool)

(declare-fun res!1581468 () Bool)

(assert (=> b!3910054 (=> (not res!1581468) (not e!2417280))))

(assert (=> b!3910054 (= res!1581468 (= (size!31103 lt!1362016) (+ (size!31103 prefix!426) (size!31103 suffix!1176))))))

(declare-fun d!1160002 () Bool)

(assert (=> d!1160002 e!2417280))

(declare-fun res!1581467 () Bool)

(assert (=> d!1160002 (=> (not res!1581467) (not e!2417280))))

(assert (=> d!1160002 (= res!1581467 (= (content!6215 lt!1362016) ((_ map or) (content!6215 prefix!426) (content!6215 suffix!1176))))))

(assert (=> d!1160002 (= lt!1362016 e!2417281)))

(declare-fun c!679708 () Bool)

(assert (=> d!1160002 (= c!679708 ((_ is Nil!41423) prefix!426))))

(assert (=> d!1160002 (= (++!10650 prefix!426 suffix!1176) lt!1362016)))

(assert (= (and d!1160002 c!679708) b!3910052))

(assert (= (and d!1160002 (not c!679708)) b!3910053))

(assert (= (and d!1160002 res!1581467) b!3910054))

(assert (= (and b!3910054 res!1581468) b!3910055))

(declare-fun m!4473223 () Bool)

(assert (=> b!3910053 m!4473223))

(declare-fun m!4473225 () Bool)

(assert (=> b!3910054 m!4473225))

(assert (=> b!3910054 m!4472717))

(assert (=> b!3910054 m!4472731))

(declare-fun m!4473227 () Bool)

(assert (=> d!1160002 m!4473227))

(declare-fun m!4473229 () Bool)

(assert (=> d!1160002 m!4473229))

(declare-fun m!4473231 () Bool)

(assert (=> d!1160002 m!4473231))

(assert (=> b!3909662 d!1160002))

(declare-fun d!1160004 () Bool)

(declare-fun e!2417282 () Bool)

(assert (=> d!1160004 e!2417282))

(declare-fun res!1581470 () Bool)

(assert (=> d!1160004 (=> (not res!1581470) (not e!2417282))))

(declare-fun lt!1362017 () List!41549)

(assert (=> d!1160004 (= res!1581470 (= (content!6216 lt!1362017) ((_ map or) (content!6216 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425)) (content!6216 (_1!23469 lt!1361876)))))))

(declare-fun e!2417283 () List!41549)

(assert (=> d!1160004 (= lt!1362017 e!2417283)))

(declare-fun c!679709 () Bool)

(assert (=> d!1160004 (= c!679709 ((_ is Nil!41425) (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425)))))

(assert (=> d!1160004 (= (++!10649 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425) (_1!23469 lt!1361876)) lt!1362017)))

(declare-fun b!3910057 () Bool)

(assert (=> b!3910057 (= e!2417283 (Cons!41425 (h!46845 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425)) (++!10649 (t!322736 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425)) (_1!23469 lt!1361876))))))

(declare-fun b!3910059 () Bool)

(assert (=> b!3910059 (= e!2417282 (or (not (= (_1!23469 lt!1361876) Nil!41425)) (= lt!1362017 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425))))))

(declare-fun b!3910058 () Bool)

(declare-fun res!1581469 () Bool)

(assert (=> b!3910058 (=> (not res!1581469) (not e!2417282))))

(assert (=> b!3910058 (= res!1581469 (= (size!31106 lt!1362017) (+ (size!31106 (Cons!41425 (_1!23470 (v!39187 lt!1361874)) Nil!41425)) (size!31106 (_1!23469 lt!1361876)))))))

(declare-fun b!3910056 () Bool)

(assert (=> b!3910056 (= e!2417283 (_1!23469 lt!1361876))))

(assert (= (and d!1160004 c!679709) b!3910056))

(assert (= (and d!1160004 (not c!679709)) b!3910057))

(assert (= (and d!1160004 res!1581470) b!3910058))

(assert (= (and b!3910058 res!1581469) b!3910059))

(declare-fun m!4473233 () Bool)

(assert (=> d!1160004 m!4473233))

(declare-fun m!4473235 () Bool)

(assert (=> d!1160004 m!4473235))

(declare-fun m!4473237 () Bool)

(assert (=> d!1160004 m!4473237))

(declare-fun m!4473239 () Bool)

(assert (=> b!3910057 m!4473239))

(declare-fun m!4473241 () Bool)

(assert (=> b!3910058 m!4473241))

(declare-fun m!4473243 () Bool)

(assert (=> b!3910058 m!4473243))

(declare-fun m!4473245 () Bool)

(assert (=> b!3910058 m!4473245))

(assert (=> b!3909641 d!1160004))

(declare-fun b!3910060 () Bool)

(declare-fun res!1581471 () Bool)

(declare-fun e!2417286 () Bool)

(assert (=> b!3910060 (=> res!1581471 e!2417286)))

(assert (=> b!3910060 (= res!1581471 (not ((_ is IntegerValue!20030) (value!204345 (h!46845 prefixTokens!80)))))))

(declare-fun e!2417284 () Bool)

(assert (=> b!3910060 (= e!2417284 e!2417286)))

(declare-fun b!3910061 () Bool)

(declare-fun e!2417285 () Bool)

(assert (=> b!3910061 (= e!2417285 e!2417284)))

(declare-fun c!679711 () Bool)

(assert (=> b!3910061 (= c!679711 ((_ is IntegerValue!20029) (value!204345 (h!46845 prefixTokens!80))))))

(declare-fun d!1160006 () Bool)

(declare-fun c!679710 () Bool)

(assert (=> d!1160006 (= c!679710 ((_ is IntegerValue!20028) (value!204345 (h!46845 prefixTokens!80))))))

(assert (=> d!1160006 (= (inv!21 (value!204345 (h!46845 prefixTokens!80))) e!2417285)))

(declare-fun b!3910062 () Bool)

(assert (=> b!3910062 (= e!2417285 (inv!16 (value!204345 (h!46845 prefixTokens!80))))))

(declare-fun b!3910063 () Bool)

(assert (=> b!3910063 (= e!2417284 (inv!17 (value!204345 (h!46845 prefixTokens!80))))))

(declare-fun b!3910064 () Bool)

(assert (=> b!3910064 (= e!2417286 (inv!15 (value!204345 (h!46845 prefixTokens!80))))))

(assert (= (and d!1160006 c!679710) b!3910062))

(assert (= (and d!1160006 (not c!679710)) b!3910061))

(assert (= (and b!3910061 c!679711) b!3910063))

(assert (= (and b!3910061 (not c!679711)) b!3910060))

(assert (= (and b!3910060 (not res!1581471)) b!3910064))

(declare-fun m!4473247 () Bool)

(assert (=> b!3910062 m!4473247))

(declare-fun m!4473249 () Bool)

(assert (=> b!3910063 m!4473249))

(declare-fun m!4473251 () Bool)

(assert (=> b!3910064 m!4473251))

(assert (=> b!3909652 d!1160006))

(declare-fun d!1160008 () Bool)

(assert (=> d!1160008 (= (isEmpty!24638 rules!2768) ((_ is Nil!41426) rules!2768))))

(assert (=> b!3909663 d!1160008))

(declare-fun b!3910078 () Bool)

(declare-fun b_free!105989 () Bool)

(declare-fun b_next!106693 () Bool)

(assert (=> b!3910078 (= b_free!105989 (not b_next!106693))))

(declare-fun tb!232541 () Bool)

(declare-fun t!322812 () Bool)

(assert (=> (and b!3910078 (= (toValue!8890 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322812) tb!232541))

(declare-fun result!281888 () Bool)

(assert (= result!281888 result!281828))

(assert (=> d!1159916 t!322812))

(declare-fun tp!1190074 () Bool)

(declare-fun b_and!297323 () Bool)

(assert (=> b!3910078 (= tp!1190074 (and (=> t!322812 result!281888) b_and!297323))))

(declare-fun b_free!105991 () Bool)

(declare-fun b_next!106695 () Bool)

(assert (=> b!3910078 (= b_free!105991 (not b_next!106695))))

(declare-fun t!322814 () Bool)

(declare-fun tb!232543 () Bool)

(assert (=> (and b!3910078 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322814) tb!232543))

(declare-fun result!281890 () Bool)

(assert (= result!281890 result!281798))

(assert (=> b!3909671 t!322814))

(declare-fun t!322816 () Bool)

(declare-fun tb!232545 () Bool)

(assert (=> (and b!3910078 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322816) tb!232545))

(declare-fun result!281892 () Bool)

(assert (= result!281892 result!281806))

(assert (=> b!3909756 t!322816))

(declare-fun t!322818 () Bool)

(declare-fun tb!232547 () Bool)

(assert (=> (and b!3910078 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322818) tb!232547))

(declare-fun result!281894 () Bool)

(assert (= result!281894 result!281848))

(assert (=> d!1159952 t!322818))

(declare-fun b_and!297325 () Bool)

(declare-fun tp!1190076 () Bool)

(assert (=> b!3910078 (= tp!1190076 (and (=> t!322814 result!281890) (=> t!322816 result!281892) (=> t!322818 result!281894) b_and!297325))))

(declare-fun e!2417302 () Bool)

(declare-fun tp!1190075 () Bool)

(declare-fun b!3910076 () Bool)

(declare-fun e!2417304 () Bool)

(assert (=> b!3910076 (= e!2417304 (and (inv!21 (value!204345 (h!46845 (t!322736 prefixTokens!80)))) e!2417302 tp!1190075))))

(declare-fun e!2417300 () Bool)

(assert (=> b!3910078 (= e!2417300 (and tp!1190074 tp!1190076))))

(declare-fun b!3910075 () Bool)

(declare-fun tp!1190077 () Bool)

(declare-fun e!2417303 () Bool)

(assert (=> b!3910075 (= e!2417303 (and (inv!55606 (h!46845 (t!322736 prefixTokens!80))) e!2417304 tp!1190077))))

(declare-fun b!3910077 () Bool)

(declare-fun tp!1190073 () Bool)

(assert (=> b!3910077 (= e!2417302 (and tp!1190073 (inv!55602 (tag!7306 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (inv!55605 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) e!2417300))))

(assert (=> b!3909653 (= tp!1189988 e!2417303)))

(assert (= b!3910077 b!3910078))

(assert (= b!3910076 b!3910077))

(assert (= b!3910075 b!3910076))

(assert (= (and b!3909653 ((_ is Cons!41425) (t!322736 prefixTokens!80))) b!3910075))

(declare-fun m!4473253 () Bool)

(assert (=> b!3910076 m!4473253))

(declare-fun m!4473255 () Bool)

(assert (=> b!3910075 m!4473255))

(declare-fun m!4473257 () Bool)

(assert (=> b!3910077 m!4473257))

(declare-fun m!4473259 () Bool)

(assert (=> b!3910077 m!4473259))

(declare-fun b!3910089 () Bool)

(declare-fun e!2417307 () Bool)

(assert (=> b!3910089 (= e!2417307 tp_is_empty!19673)))

(declare-fun b!3910092 () Bool)

(declare-fun tp!1190090 () Bool)

(declare-fun tp!1190089 () Bool)

(assert (=> b!3910092 (= e!2417307 (and tp!1190090 tp!1190089))))

(assert (=> b!3909644 (= tp!1189986 e!2417307)))

(declare-fun b!3910090 () Bool)

(declare-fun tp!1190092 () Bool)

(declare-fun tp!1190088 () Bool)

(assert (=> b!3910090 (= e!2417307 (and tp!1190092 tp!1190088))))

(declare-fun b!3910091 () Bool)

(declare-fun tp!1190091 () Bool)

(assert (=> b!3910091 (= e!2417307 tp!1190091)))

(assert (= (and b!3909644 ((_ is ElementMatch!11351) (regex!6446 (rule!9360 (h!46845 suffixTokens!72))))) b!3910089))

(assert (= (and b!3909644 ((_ is Concat!18028) (regex!6446 (rule!9360 (h!46845 suffixTokens!72))))) b!3910090))

(assert (= (and b!3909644 ((_ is Star!11351) (regex!6446 (rule!9360 (h!46845 suffixTokens!72))))) b!3910091))

(assert (= (and b!3909644 ((_ is Union!11351) (regex!6446 (rule!9360 (h!46845 suffixTokens!72))))) b!3910092))

(declare-fun b!3910097 () Bool)

(declare-fun e!2417310 () Bool)

(declare-fun tp!1190095 () Bool)

(assert (=> b!3910097 (= e!2417310 (and tp_is_empty!19673 tp!1190095))))

(assert (=> b!3909666 (= tp!1189980 e!2417310)))

(assert (= (and b!3909666 ((_ is Cons!41423) (t!322734 suffixResult!91))) b!3910097))

(declare-fun b!3910098 () Bool)

(declare-fun e!2417311 () Bool)

(declare-fun tp!1190096 () Bool)

(assert (=> b!3910098 (= e!2417311 (and tp_is_empty!19673 tp!1190096))))

(assert (=> b!3909645 (= tp!1189974 e!2417311)))

(assert (= (and b!3909645 ((_ is Cons!41423) (t!322734 prefix!426))) b!3910098))

(declare-fun b!3910099 () Bool)

(declare-fun e!2417312 () Bool)

(assert (=> b!3910099 (= e!2417312 tp_is_empty!19673)))

(declare-fun b!3910102 () Bool)

(declare-fun tp!1190099 () Bool)

(declare-fun tp!1190098 () Bool)

(assert (=> b!3910102 (= e!2417312 (and tp!1190099 tp!1190098))))

(assert (=> b!3909657 (= tp!1189984 e!2417312)))

(declare-fun b!3910100 () Bool)

(declare-fun tp!1190101 () Bool)

(declare-fun tp!1190097 () Bool)

(assert (=> b!3910100 (= e!2417312 (and tp!1190101 tp!1190097))))

(declare-fun b!3910101 () Bool)

(declare-fun tp!1190100 () Bool)

(assert (=> b!3910101 (= e!2417312 tp!1190100)))

(assert (= (and b!3909657 ((_ is ElementMatch!11351) (regex!6446 (rule!9360 (h!46845 prefixTokens!80))))) b!3910099))

(assert (= (and b!3909657 ((_ is Concat!18028) (regex!6446 (rule!9360 (h!46845 prefixTokens!80))))) b!3910100))

(assert (= (and b!3909657 ((_ is Star!11351) (regex!6446 (rule!9360 (h!46845 prefixTokens!80))))) b!3910101))

(assert (= (and b!3909657 ((_ is Union!11351) (regex!6446 (rule!9360 (h!46845 prefixTokens!80))))) b!3910102))

(declare-fun b!3910106 () Bool)

(declare-fun b_free!105993 () Bool)

(declare-fun b_next!106697 () Bool)

(assert (=> b!3910106 (= b_free!105993 (not b_next!106697))))

(declare-fun tb!232549 () Bool)

(declare-fun t!322820 () Bool)

(assert (=> (and b!3910106 (= (toValue!8890 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322820) tb!232549))

(declare-fun result!281900 () Bool)

(assert (= result!281900 result!281828))

(assert (=> d!1159916 t!322820))

(declare-fun b_and!297327 () Bool)

(declare-fun tp!1190103 () Bool)

(assert (=> b!3910106 (= tp!1190103 (and (=> t!322820 result!281900) b_and!297327))))

(declare-fun b_free!105995 () Bool)

(declare-fun b_next!106699 () Bool)

(assert (=> b!3910106 (= b_free!105995 (not b_next!106699))))

(declare-fun tb!232551 () Bool)

(declare-fun t!322822 () Bool)

(assert (=> (and b!3910106 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322822) tb!232551))

(declare-fun result!281902 () Bool)

(assert (= result!281902 result!281798))

(assert (=> b!3909671 t!322822))

(declare-fun t!322824 () Bool)

(declare-fun tb!232553 () Bool)

(assert (=> (and b!3910106 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322824) tb!232553))

(declare-fun result!281904 () Bool)

(assert (= result!281904 result!281806))

(assert (=> b!3909756 t!322824))

(declare-fun tb!232555 () Bool)

(declare-fun t!322826 () Bool)

(assert (=> (and b!3910106 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322826) tb!232555))

(declare-fun result!281906 () Bool)

(assert (= result!281906 result!281848))

(assert (=> d!1159952 t!322826))

(declare-fun tp!1190105 () Bool)

(declare-fun b_and!297329 () Bool)

(assert (=> b!3910106 (= tp!1190105 (and (=> t!322822 result!281902) (=> t!322824 result!281904) (=> t!322826 result!281906) b_and!297329))))

(declare-fun tp!1190104 () Bool)

(declare-fun b!3910104 () Bool)

(declare-fun e!2417316 () Bool)

(declare-fun e!2417318 () Bool)

(assert (=> b!3910104 (= e!2417318 (and (inv!21 (value!204345 (h!46845 (t!322736 suffixTokens!72)))) e!2417316 tp!1190104))))

(declare-fun e!2417314 () Bool)

(assert (=> b!3910106 (= e!2417314 (and tp!1190103 tp!1190105))))

(declare-fun e!2417317 () Bool)

(declare-fun tp!1190106 () Bool)

(declare-fun b!3910103 () Bool)

(assert (=> b!3910103 (= e!2417317 (and (inv!55606 (h!46845 (t!322736 suffixTokens!72))) e!2417318 tp!1190106))))

(declare-fun b!3910105 () Bool)

(declare-fun tp!1190102 () Bool)

(assert (=> b!3910105 (= e!2417316 (and tp!1190102 (inv!55602 (tag!7306 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (inv!55605 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) e!2417314))))

(assert (=> b!3909647 (= tp!1189979 e!2417317)))

(assert (= b!3910105 b!3910106))

(assert (= b!3910104 b!3910105))

(assert (= b!3910103 b!3910104))

(assert (= (and b!3909647 ((_ is Cons!41425) (t!322736 suffixTokens!72))) b!3910103))

(declare-fun m!4473261 () Bool)

(assert (=> b!3910104 m!4473261))

(declare-fun m!4473263 () Bool)

(assert (=> b!3910103 m!4473263))

(declare-fun m!4473265 () Bool)

(assert (=> b!3910105 m!4473265))

(declare-fun m!4473267 () Bool)

(assert (=> b!3910105 m!4473267))

(declare-fun b!3910107 () Bool)

(declare-fun e!2417319 () Bool)

(declare-fun tp!1190107 () Bool)

(assert (=> b!3910107 (= e!2417319 (and tp_is_empty!19673 tp!1190107))))

(assert (=> b!3909658 (= tp!1189975 e!2417319)))

(assert (= (and b!3909658 ((_ is Cons!41423) (originalCharacters!7046 (h!46845 suffixTokens!72)))) b!3910107))

(declare-fun b!3910108 () Bool)

(declare-fun e!2417320 () Bool)

(declare-fun tp!1190108 () Bool)

(assert (=> b!3910108 (= e!2417320 (and tp_is_empty!19673 tp!1190108))))

(assert (=> b!3909649 (= tp!1189973 e!2417320)))

(assert (= (and b!3909649 ((_ is Cons!41423) (t!322734 suffix!1176))) b!3910108))

(declare-fun b!3910109 () Bool)

(declare-fun e!2417321 () Bool)

(assert (=> b!3910109 (= e!2417321 tp_is_empty!19673)))

(declare-fun b!3910112 () Bool)

(declare-fun tp!1190111 () Bool)

(declare-fun tp!1190110 () Bool)

(assert (=> b!3910112 (= e!2417321 (and tp!1190111 tp!1190110))))

(assert (=> b!3909660 (= tp!1189972 e!2417321)))

(declare-fun b!3910110 () Bool)

(declare-fun tp!1190113 () Bool)

(declare-fun tp!1190109 () Bool)

(assert (=> b!3910110 (= e!2417321 (and tp!1190113 tp!1190109))))

(declare-fun b!3910111 () Bool)

(declare-fun tp!1190112 () Bool)

(assert (=> b!3910111 (= e!2417321 tp!1190112)))

(assert (= (and b!3909660 ((_ is ElementMatch!11351) (regex!6446 (h!46846 rules!2768)))) b!3910109))

(assert (= (and b!3909660 ((_ is Concat!18028) (regex!6446 (h!46846 rules!2768)))) b!3910110))

(assert (= (and b!3909660 ((_ is Star!11351) (regex!6446 (h!46846 rules!2768)))) b!3910111))

(assert (= (and b!3909660 ((_ is Union!11351) (regex!6446 (h!46846 rules!2768)))) b!3910112))

(declare-fun b!3910113 () Bool)

(declare-fun e!2417322 () Bool)

(declare-fun tp!1190114 () Bool)

(assert (=> b!3910113 (= e!2417322 (and tp_is_empty!19673 tp!1190114))))

(assert (=> b!3909652 (= tp!1189978 e!2417322)))

(assert (= (and b!3909652 ((_ is Cons!41423) (originalCharacters!7046 (h!46845 prefixTokens!80)))) b!3910113))

(declare-fun b!3910124 () Bool)

(declare-fun b_free!105997 () Bool)

(declare-fun b_next!106701 () Bool)

(assert (=> b!3910124 (= b_free!105997 (not b_next!106701))))

(declare-fun t!322828 () Bool)

(declare-fun tb!232557 () Bool)

(assert (=> (and b!3910124 (= (toValue!8890 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toValue!8890 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322828) tb!232557))

(declare-fun result!281910 () Bool)

(assert (= result!281910 result!281828))

(assert (=> d!1159916 t!322828))

(declare-fun tp!1190126 () Bool)

(declare-fun b_and!297331 () Bool)

(assert (=> b!3910124 (= tp!1190126 (and (=> t!322828 result!281910) b_and!297331))))

(declare-fun b_free!105999 () Bool)

(declare-fun b_next!106703 () Bool)

(assert (=> b!3910124 (= b_free!105999 (not b_next!106703))))

(declare-fun tb!232559 () Bool)

(declare-fun t!322830 () Bool)

(assert (=> (and b!3910124 (= (toChars!8749 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80))))) t!322830) tb!232559))

(declare-fun result!281912 () Bool)

(assert (= result!281912 result!281798))

(assert (=> b!3909671 t!322830))

(declare-fun t!322832 () Bool)

(declare-fun tb!232561 () Bool)

(assert (=> (and b!3910124 (= (toChars!8749 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72))))) t!322832) tb!232561))

(declare-fun result!281914 () Bool)

(assert (= result!281914 result!281806))

(assert (=> b!3909756 t!322832))

(declare-fun tb!232563 () Bool)

(declare-fun t!322834 () Bool)

(assert (=> (and b!3910124 (= (toChars!8749 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toChars!8749 (transformation!6446 (rule!9360 (_1!23470 (v!39187 lt!1361874)))))) t!322834) tb!232563))

(declare-fun result!281916 () Bool)

(assert (= result!281916 result!281848))

(assert (=> d!1159952 t!322834))

(declare-fun b_and!297333 () Bool)

(declare-fun tp!1190124 () Bool)

(assert (=> b!3910124 (= tp!1190124 (and (=> t!322830 result!281912) (=> t!322832 result!281914) (=> t!322834 result!281916) b_and!297333))))

(declare-fun e!2417333 () Bool)

(assert (=> b!3910124 (= e!2417333 (and tp!1190126 tp!1190124))))

(declare-fun b!3910123 () Bool)

(declare-fun e!2417334 () Bool)

(declare-fun tp!1190123 () Bool)

(assert (=> b!3910123 (= e!2417334 (and tp!1190123 (inv!55602 (tag!7306 (h!46846 (t!322737 rules!2768)))) (inv!55605 (transformation!6446 (h!46846 (t!322737 rules!2768)))) e!2417333))))

(declare-fun b!3910122 () Bool)

(declare-fun e!2417331 () Bool)

(declare-fun tp!1190125 () Bool)

(assert (=> b!3910122 (= e!2417331 (and e!2417334 tp!1190125))))

(assert (=> b!3909642 (= tp!1189987 e!2417331)))

(assert (= b!3910123 b!3910124))

(assert (= b!3910122 b!3910123))

(assert (= (and b!3909642 ((_ is Cons!41426) (t!322737 rules!2768))) b!3910122))

(declare-fun m!4473269 () Bool)

(assert (=> b!3910123 m!4473269))

(declare-fun m!4473271 () Bool)

(assert (=> b!3910123 m!4473271))

(declare-fun b_lambda!114471 () Bool)

(assert (= b_lambda!114453 (or (and b!3910106 b_free!105995 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))))) (and b!3909643 b_free!105967) (and b!3910124 b_free!105999 (= (toChars!8749 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))))) (and b!3910078 b_free!105991 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))))) (and b!3909640 b_free!105971 (= (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))))) (and b!3909661 b_free!105975 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))))) b_lambda!114471)))

(declare-fun b_lambda!114473 () Bool)

(assert (= b_lambda!114451 (or (and b!3909643 b_free!105967 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 suffixTokens!72)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))))) (and b!3909640 b_free!105971 (= (toChars!8749 (transformation!6446 (h!46846 rules!2768))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))))) (and b!3910078 b_free!105991 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 prefixTokens!80))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))))) (and b!3910124 b_free!105999 (= (toChars!8749 (transformation!6446 (h!46846 (t!322737 rules!2768)))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))))) (and b!3910106 b_free!105995 (= (toChars!8749 (transformation!6446 (rule!9360 (h!46845 (t!322736 suffixTokens!72))))) (toChars!8749 (transformation!6446 (rule!9360 (h!46845 prefixTokens!80)))))) (and b!3909661 b_free!105975) b_lambda!114473)))

(check-sat (not b!3909912) (not b!3910122) (not b!3909860) (not b!3909708) (not b!3910111) (not b!3910027) (not b!3910026) (not b_lambda!114473) (not b!3909783) (not b!3910112) (not b!3910038) (not b!3910098) (not b_next!106697) (not b!3909905) (not b!3910108) (not b_next!106679) (not b!3909752) (not bm!284267) tp_is_empty!19673 (not b!3910050) (not b!3910075) (not d!1159888) (not b!3910103) (not b!3909903) (not d!1159858) (not tb!232511) (not b!3910025) (not d!1159854) (not b!3909812) (not b!3909869) (not b!3910028) (not b!3910076) (not b!3910113) (not d!1159922) (not b!3910123) (not b_lambda!114459) b_and!297327 (not b!3909733) (not d!1159870) (not b!3910090) (not b_next!106695) (not b!3910110) (not b!3910097) (not b!3910092) (not b_next!106673) b_and!297333 (not b!3909672) (not d!1159952) (not b!3910063) (not d!1160000) (not tb!232475) b_and!297307 (not b!3910057) (not b!3910024) (not b!3910064) (not b!3910058) b_and!297325 (not b!3909856) (not b!3910104) b_and!297291 (not tb!232493) (not d!1159954) (not b_next!106703) (not d!1159902) (not d!1159992) (not b!3909799) (not b!3909677) (not b!3909749) (not b!3909858) (not b_next!106701) (not b_lambda!114471) (not b!3910054) (not d!1159958) (not d!1159932) b_and!297323 (not b!3910105) (not d!1159956) (not b_lambda!114465) (not b!3910053) (not b!3910022) (not d!1159910) (not b!3909911) (not b!3909683) (not b_next!106675) (not d!1159988) (not b!3909784) (not b!3909782) (not d!1159984) (not b!3909904) (not b!3910102) (not b!3910032) (not b!3910036) (not b!3909966) (not b_next!106693) (not b_next!106669) (not d!1159968) b_and!297309 (not d!1159886) (not b!3909756) (not d!1159972) (not d!1160004) (not d!1160002) (not b!3910029) (not d!1159998) b_and!297329 (not b!3909671) (not b!3909855) (not b!3909710) (not b!3910077) (not b!3909711) (not b!3910039) b_and!297287 (not b!3910101) b_and!297331 (not d!1159962) b_and!297289 b_and!297305 (not b!3910091) (not b!3910100) (not b!3909972) (not b_next!106671) (not b!3910062) (not b!3910034) (not b!3909757) (not b!3909758) (not b!3910023) (not b_next!106677) (not b!3910107) (not b!3910049) (not b!3909909) (not tb!232469) (not b_next!106699))
(check-sat (not b_next!106697) (not b_next!106679) b_and!297307 b_and!297325 b_and!297291 (not b_next!106703) (not b_next!106701) b_and!297323 (not b_next!106675) b_and!297329 b_and!297305 (not b_next!106671) (not b_next!106677) (not b_next!106699) b_and!297327 (not b_next!106695) (not b_next!106673) b_and!297333 (not b_next!106693) (not b_next!106669) b_and!297309 b_and!297287 b_and!297289 b_and!297331)
