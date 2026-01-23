; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364168 () Bool)

(assert start!364168)

(declare-fun b!3879747 () Bool)

(declare-fun b_free!105085 () Bool)

(declare-fun b_next!105789 () Bool)

(assert (=> b!3879747 (= b_free!105085 (not b_next!105789))))

(declare-fun tp!1176322 () Bool)

(declare-fun b_and!290979 () Bool)

(assert (=> b!3879747 (= tp!1176322 b_and!290979)))

(declare-fun b_free!105087 () Bool)

(declare-fun b_next!105791 () Bool)

(assert (=> b!3879747 (= b_free!105087 (not b_next!105791))))

(declare-fun tp!1176309 () Bool)

(declare-fun b_and!290981 () Bool)

(assert (=> b!3879747 (= tp!1176309 b_and!290981)))

(declare-fun b!3879751 () Bool)

(declare-fun b_free!105089 () Bool)

(declare-fun b_next!105793 () Bool)

(assert (=> b!3879751 (= b_free!105089 (not b_next!105793))))

(declare-fun tp!1176314 () Bool)

(declare-fun b_and!290983 () Bool)

(assert (=> b!3879751 (= tp!1176314 b_and!290983)))

(declare-fun b_free!105091 () Bool)

(declare-fun b_next!105795 () Bool)

(assert (=> b!3879751 (= b_free!105091 (not b_next!105795))))

(declare-fun tp!1176308 () Bool)

(declare-fun b_and!290985 () Bool)

(assert (=> b!3879751 (= tp!1176308 b_and!290985)))

(declare-fun b!3879753 () Bool)

(declare-fun b_free!105093 () Bool)

(declare-fun b_next!105797 () Bool)

(assert (=> b!3879753 (= b_free!105093 (not b_next!105797))))

(declare-fun tp!1176311 () Bool)

(declare-fun b_and!290987 () Bool)

(assert (=> b!3879753 (= tp!1176311 b_and!290987)))

(declare-fun b_free!105095 () Bool)

(declare-fun b_next!105799 () Bool)

(assert (=> b!3879753 (= b_free!105095 (not b_next!105799))))

(declare-fun tp!1176315 () Bool)

(declare-fun b_and!290989 () Bool)

(assert (=> b!3879753 (= tp!1176315 b_and!290989)))

(declare-fun b!3879732 () Bool)

(declare-fun e!2400760 () Bool)

(declare-fun e!2400757 () Bool)

(declare-fun tp!1176312 () Bool)

(assert (=> b!3879732 (= e!2400760 (and e!2400757 tp!1176312))))

(declare-fun b!3879733 () Bool)

(declare-fun e!2400761 () Bool)

(declare-fun tp_is_empty!19609 () Bool)

(declare-fun tp!1176321 () Bool)

(assert (=> b!3879733 (= e!2400761 (and tp_is_empty!19609 tp!1176321))))

(declare-fun res!1572174 () Bool)

(declare-fun e!2400762 () Bool)

(assert (=> start!364168 (=> (not res!1572174) (not e!2400762))))

(declare-datatypes ((LexerInterface!6003 0))(
  ( (LexerInterfaceExt!6000 (__x!25505 Int)) (Lexer!6001) )
))
(declare-fun thiss!20629 () LexerInterface!6003)

(get-info :version)

(assert (=> start!364168 (= res!1572174 ((_ is Lexer!6001) thiss!20629))))

(assert (=> start!364168 e!2400762))

(declare-fun e!2400767 () Bool)

(assert (=> start!364168 e!2400767))

(assert (=> start!364168 true))

(assert (=> start!364168 e!2400761))

(assert (=> start!364168 e!2400760))

(declare-fun e!2400768 () Bool)

(assert (=> start!364168 e!2400768))

(declare-fun e!2400752 () Bool)

(assert (=> start!364168 e!2400752))

(declare-fun e!2400766 () Bool)

(assert (=> start!364168 e!2400766))

(declare-fun b!3879734 () Bool)

(declare-fun e!2400753 () Bool)

(assert (=> b!3879734 (= e!2400762 e!2400753)))

(declare-fun res!1572167 () Bool)

(assert (=> b!3879734 (=> (not res!1572167) (not e!2400753))))

(declare-datatypes ((C!22824 0))(
  ( (C!22825 (val!13506 Int)) )
))
(declare-datatypes ((List!41400 0))(
  ( (Nil!41276) (Cons!41276 (h!46696 C!22824) (t!315139 List!41400)) )
))
(declare-fun lt!1353881 () List!41400)

(declare-fun suffixResult!91 () List!41400)

(declare-datatypes ((IArray!25255 0))(
  ( (IArray!25256 (innerList!12685 List!41400)) )
))
(declare-datatypes ((Conc!12625 0))(
  ( (Node!12625 (left!31658 Conc!12625) (right!31988 Conc!12625) (csize!25480 Int) (cheight!12836 Int)) (Leaf!19539 (xs!15931 IArray!25255) (csize!25481 Int)) (Empty!12625) )
))
(declare-datatypes ((BalanceConc!24844 0))(
  ( (BalanceConc!24845 (c!674844 Conc!12625)) )
))
(declare-datatypes ((List!41401 0))(
  ( (Nil!41277) (Cons!41277 (h!46697 (_ BitVec 16)) (t!315140 List!41401)) )
))
(declare-datatypes ((TokenValue!6644 0))(
  ( (FloatLiteralValue!13288 (text!46953 List!41401)) (TokenValueExt!6643 (__x!25506 Int)) (Broken!33220 (value!203407 List!41401)) (Object!6767) (End!6644) (Def!6644) (Underscore!6644) (Match!6644) (Else!6644) (Error!6644) (Case!6644) (If!6644) (Extends!6644) (Abstract!6644) (Class!6644) (Val!6644) (DelimiterValue!13288 (del!6704 List!41401)) (KeywordValue!6650 (value!203408 List!41401)) (CommentValue!13288 (value!203409 List!41401)) (WhitespaceValue!13288 (value!203410 List!41401)) (IndentationValue!6644 (value!203411 List!41401)) (String!46937) (Int32!6644) (Broken!33221 (value!203412 List!41401)) (Boolean!6645) (Unit!59347) (OperatorValue!6647 (op!6704 List!41401)) (IdentifierValue!13288 (value!203413 List!41401)) (IdentifierValue!13289 (value!203414 List!41401)) (WhitespaceValue!13289 (value!203415 List!41401)) (True!13288) (False!13288) (Broken!33222 (value!203416 List!41401)) (Broken!33223 (value!203417 List!41401)) (True!13289) (RightBrace!6644) (RightBracket!6644) (Colon!6644) (Null!6644) (Comma!6644) (LeftBracket!6644) (False!13289) (LeftBrace!6644) (ImaginaryLiteralValue!6644 (text!46954 List!41401)) (StringLiteralValue!19932 (value!203418 List!41401)) (EOFValue!6644 (value!203419 List!41401)) (IdentValue!6644 (value!203420 List!41401)) (DelimiterValue!13289 (value!203421 List!41401)) (DedentValue!6644 (value!203422 List!41401)) (NewLineValue!6644 (value!203423 List!41401)) (IntegerValue!19932 (value!203424 (_ BitVec 32)) (text!46955 List!41401)) (IntegerValue!19933 (value!203425 Int) (text!46956 List!41401)) (Times!6644) (Or!6644) (Equal!6644) (Minus!6644) (Broken!33224 (value!203426 List!41401)) (And!6644) (Div!6644) (LessEqual!6644) (Mod!6644) (Concat!17963) (Not!6644) (Plus!6644) (SpaceValue!6644 (value!203427 List!41401)) (IntegerValue!19934 (value!203428 Int) (text!46957 List!41401)) (StringLiteralValue!19933 (text!46958 List!41401)) (FloatLiteralValue!13289 (text!46959 List!41401)) (BytesLiteralValue!6644 (value!203429 List!41401)) (CommentValue!13289 (value!203430 List!41401)) (StringLiteralValue!19934 (value!203431 List!41401)) (ErrorTokenValue!6644 (msg!6705 List!41401)) )
))
(declare-datatypes ((Regex!11319 0))(
  ( (ElementMatch!11319 (c!674845 C!22824)) (Concat!17964 (regOne!23150 Regex!11319) (regTwo!23150 Regex!11319)) (EmptyExpr!11319) (Star!11319 (reg!11648 Regex!11319)) (EmptyLang!11319) (Union!11319 (regOne!23151 Regex!11319) (regTwo!23151 Regex!11319)) )
))
(declare-datatypes ((String!46938 0))(
  ( (String!46939 (value!203432 String)) )
))
(declare-datatypes ((TokenValueInjection!12716 0))(
  ( (TokenValueInjection!12717 (toValue!8842 Int) (toChars!8701 Int)) )
))
(declare-datatypes ((Rule!12628 0))(
  ( (Rule!12629 (regex!6414 Regex!11319) (tag!7274 String!46938) (isSeparator!6414 Bool) (transformation!6414 TokenValueInjection!12716)) )
))
(declare-datatypes ((List!41402 0))(
  ( (Nil!41278) (Cons!41278 (h!46698 Rule!12628) (t!315141 List!41402)) )
))
(declare-fun rules!2768 () List!41402)

(declare-datatypes ((Token!11966 0))(
  ( (Token!11967 (value!203433 TokenValue!6644) (rule!9312 Rule!12628) (size!30997 Int) (originalCharacters!7014 List!41400)) )
))
(declare-datatypes ((List!41403 0))(
  ( (Nil!41279) (Cons!41279 (h!46699 Token!11966) (t!315142 List!41403)) )
))
(declare-fun prefixTokens!80 () List!41403)

(declare-fun suffixTokens!72 () List!41403)

(declare-datatypes ((tuple2!40510 0))(
  ( (tuple2!40511 (_1!23389 List!41403) (_2!23389 List!41400)) )
))
(declare-fun lexList!1771 (LexerInterface!6003 List!41402 List!41400) tuple2!40510)

(declare-fun ++!10585 (List!41403 List!41403) List!41403)

(assert (=> b!3879734 (= res!1572167 (= (lexList!1771 thiss!20629 rules!2768 lt!1353881) (tuple2!40511 (++!10585 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!41400)

(declare-fun suffix!1176 () List!41400)

(declare-fun ++!10586 (List!41400 List!41400) List!41400)

(assert (=> b!3879734 (= lt!1353881 (++!10586 prefix!426 suffix!1176))))

(declare-fun b!3879735 () Bool)

(declare-fun tp!1176316 () Bool)

(assert (=> b!3879735 (= e!2400766 (and tp_is_empty!19609 tp!1176316))))

(declare-fun b!3879736 () Bool)

(declare-fun res!1572170 () Bool)

(assert (=> b!3879736 (=> (not res!1572170) (not e!2400762))))

(declare-fun isEmpty!24514 (List!41403) Bool)

(assert (=> b!3879736 (= res!1572170 (not (isEmpty!24514 prefixTokens!80)))))

(declare-fun tp!1176323 () Bool)

(declare-fun e!2400754 () Bool)

(declare-fun b!3879737 () Bool)

(declare-fun inv!55429 (Token!11966) Bool)

(assert (=> b!3879737 (= e!2400752 (and (inv!55429 (h!46699 suffixTokens!72)) e!2400754 tp!1176323))))

(declare-fun b!3879738 () Bool)

(declare-fun e!2400765 () Bool)

(declare-datatypes ((tuple2!40512 0))(
  ( (tuple2!40513 (_1!23390 Token!11966) (_2!23390 List!41400)) )
))
(declare-datatypes ((Option!8832 0))(
  ( (None!8831) (Some!8831 (v!39129 tuple2!40512)) )
))
(declare-fun lt!1353872 () Option!8832)

(declare-fun size!30998 (List!41400) Int)

(assert (=> b!3879738 (= e!2400765 (= (size!30997 (_1!23390 (v!39129 lt!1353872))) (size!30998 (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872))))))))

(declare-fun b!3879739 () Bool)

(declare-fun res!1572168 () Bool)

(assert (=> b!3879739 (=> (not res!1572168) (not e!2400762))))

(declare-fun isEmpty!24515 (List!41402) Bool)

(assert (=> b!3879739 (= res!1572168 (not (isEmpty!24515 rules!2768)))))

(declare-fun e!2400763 () Bool)

(declare-fun b!3879740 () Bool)

(declare-fun tp!1176319 () Bool)

(assert (=> b!3879740 (= e!2400768 (and (inv!55429 (h!46699 prefixTokens!80)) e!2400763 tp!1176319))))

(declare-fun b!3879741 () Bool)

(declare-fun e!2400751 () Bool)

(assert (=> b!3879741 (= e!2400753 e!2400751)))

(declare-fun res!1572171 () Bool)

(assert (=> b!3879741 (=> (not res!1572171) (not e!2400751))))

(assert (=> b!3879741 (= res!1572171 ((_ is Some!8831) lt!1353872))))

(declare-fun maxPrefix!3307 (LexerInterface!6003 List!41402 List!41400) Option!8832)

(assert (=> b!3879741 (= lt!1353872 (maxPrefix!3307 thiss!20629 rules!2768 lt!1353881))))

(declare-fun tp!1176310 () Bool)

(declare-fun e!2400750 () Bool)

(declare-fun e!2400755 () Bool)

(declare-fun b!3879742 () Bool)

(declare-fun inv!55426 (String!46938) Bool)

(declare-fun inv!55430 (TokenValueInjection!12716) Bool)

(assert (=> b!3879742 (= e!2400750 (and tp!1176310 (inv!55426 (tag!7274 (rule!9312 (h!46699 prefixTokens!80)))) (inv!55430 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) e!2400755))))

(declare-fun b!3879743 () Bool)

(declare-fun tp!1176324 () Bool)

(assert (=> b!3879743 (= e!2400767 (and tp_is_empty!19609 tp!1176324))))

(declare-fun b!3879744 () Bool)

(declare-fun res!1572173 () Bool)

(assert (=> b!3879744 (=> (not res!1572173) (not e!2400762))))

(declare-fun isEmpty!24516 (List!41400) Bool)

(assert (=> b!3879744 (= res!1572173 (not (isEmpty!24516 prefix!426)))))

(declare-fun e!2400746 () Bool)

(declare-fun b!3879745 () Bool)

(declare-fun tp!1176318 () Bool)

(assert (=> b!3879745 (= e!2400757 (and tp!1176318 (inv!55426 (tag!7274 (h!46698 rules!2768))) (inv!55430 (transformation!6414 (h!46698 rules!2768))) e!2400746))))

(declare-fun b!3879746 () Bool)

(declare-fun lt!1353876 () List!41400)

(assert (=> b!3879746 (= e!2400751 (not (= lt!1353876 lt!1353881)))))

(declare-fun lt!1353877 () tuple2!40510)

(assert (=> b!3879746 (= lt!1353877 (lexList!1771 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353872))))))

(declare-fun lt!1353873 () List!41400)

(declare-fun lt!1353874 () List!41400)

(declare-fun lt!1353879 () TokenValue!6644)

(declare-fun lt!1353880 () Int)

(assert (=> b!3879746 (and (= (size!30997 (_1!23390 (v!39129 lt!1353872))) lt!1353880) (= (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872))) lt!1353874) (= (v!39129 lt!1353872) (tuple2!40513 (Token!11967 lt!1353879 (rule!9312 (_1!23390 (v!39129 lt!1353872))) lt!1353880 lt!1353874) lt!1353873)))))

(assert (=> b!3879746 (= lt!1353880 (size!30998 lt!1353874))))

(assert (=> b!3879746 e!2400765))

(declare-fun res!1572172 () Bool)

(assert (=> b!3879746 (=> (not res!1572172) (not e!2400765))))

(assert (=> b!3879746 (= res!1572172 (= (value!203433 (_1!23390 (v!39129 lt!1353872))) lt!1353879))))

(declare-fun apply!9653 (TokenValueInjection!12716 BalanceConc!24844) TokenValue!6644)

(declare-fun seqFromList!4681 (List!41400) BalanceConc!24844)

(assert (=> b!3879746 (= lt!1353879 (apply!9653 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))) (seqFromList!4681 lt!1353874)))))

(assert (=> b!3879746 (= (_2!23390 (v!39129 lt!1353872)) lt!1353873)))

(declare-datatypes ((Unit!59348 0))(
  ( (Unit!59349) )
))
(declare-fun lt!1353882 () Unit!59348)

(declare-fun lemmaSamePrefixThenSameSuffix!1730 (List!41400 List!41400 List!41400 List!41400 List!41400) Unit!59348)

(assert (=> b!3879746 (= lt!1353882 (lemmaSamePrefixThenSameSuffix!1730 lt!1353874 (_2!23390 (v!39129 lt!1353872)) lt!1353874 lt!1353873 lt!1353881))))

(declare-fun getSuffix!1964 (List!41400 List!41400) List!41400)

(assert (=> b!3879746 (= lt!1353873 (getSuffix!1964 lt!1353881 lt!1353874))))

(declare-fun isPrefix!3509 (List!41400 List!41400) Bool)

(assert (=> b!3879746 (isPrefix!3509 lt!1353874 lt!1353876)))

(assert (=> b!3879746 (= lt!1353876 (++!10586 lt!1353874 (_2!23390 (v!39129 lt!1353872))))))

(declare-fun lt!1353878 () Unit!59348)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2372 (List!41400 List!41400) Unit!59348)

(assert (=> b!3879746 (= lt!1353878 (lemmaConcatTwoListThenFirstIsPrefix!2372 lt!1353874 (_2!23390 (v!39129 lt!1353872))))))

(declare-fun list!15340 (BalanceConc!24844) List!41400)

(declare-fun charsOf!4238 (Token!11966) BalanceConc!24844)

(assert (=> b!3879746 (= lt!1353874 (list!15340 (charsOf!4238 (_1!23390 (v!39129 lt!1353872)))))))

(declare-fun ruleValid!2362 (LexerInterface!6003 Rule!12628) Bool)

(assert (=> b!3879746 (ruleValid!2362 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872))))))

(declare-fun lt!1353875 () Unit!59348)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1442 (LexerInterface!6003 Rule!12628 List!41402) Unit!59348)

(assert (=> b!3879746 (= lt!1353875 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1442 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872))) rules!2768))))

(declare-fun lt!1353883 () Unit!59348)

(declare-fun lemmaCharactersSize!1071 (Token!11966) Unit!59348)

(assert (=> b!3879746 (= lt!1353883 (lemmaCharactersSize!1071 (_1!23390 (v!39129 lt!1353872))))))

(declare-fun e!2400756 () Bool)

(assert (=> b!3879747 (= e!2400756 (and tp!1176322 tp!1176309))))

(declare-fun b!3879748 () Bool)

(declare-fun res!1572169 () Bool)

(assert (=> b!3879748 (=> (not res!1572169) (not e!2400753))))

(assert (=> b!3879748 (= res!1572169 (= (lexList!1771 thiss!20629 rules!2768 suffix!1176) (tuple2!40511 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3879749 () Bool)

(declare-fun tp!1176320 () Bool)

(declare-fun inv!21 (TokenValue!6644) Bool)

(assert (=> b!3879749 (= e!2400763 (and (inv!21 (value!203433 (h!46699 prefixTokens!80))) e!2400750 tp!1176320))))

(declare-fun tp!1176317 () Bool)

(declare-fun e!2400759 () Bool)

(declare-fun b!3879750 () Bool)

(assert (=> b!3879750 (= e!2400754 (and (inv!21 (value!203433 (h!46699 suffixTokens!72))) e!2400759 tp!1176317))))

(assert (=> b!3879751 (= e!2400746 (and tp!1176314 tp!1176308))))

(declare-fun tp!1176313 () Bool)

(declare-fun b!3879752 () Bool)

(assert (=> b!3879752 (= e!2400759 (and tp!1176313 (inv!55426 (tag!7274 (rule!9312 (h!46699 suffixTokens!72)))) (inv!55430 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) e!2400756))))

(assert (=> b!3879753 (= e!2400755 (and tp!1176311 tp!1176315))))

(declare-fun b!3879754 () Bool)

(declare-fun res!1572175 () Bool)

(assert (=> b!3879754 (=> (not res!1572175) (not e!2400762))))

(declare-fun rulesInvariant!5346 (LexerInterface!6003 List!41402) Bool)

(assert (=> b!3879754 (= res!1572175 (rulesInvariant!5346 thiss!20629 rules!2768))))

(assert (= (and start!364168 res!1572174) b!3879739))

(assert (= (and b!3879739 res!1572168) b!3879754))

(assert (= (and b!3879754 res!1572175) b!3879736))

(assert (= (and b!3879736 res!1572170) b!3879744))

(assert (= (and b!3879744 res!1572173) b!3879734))

(assert (= (and b!3879734 res!1572167) b!3879748))

(assert (= (and b!3879748 res!1572169) b!3879741))

(assert (= (and b!3879741 res!1572171) b!3879746))

(assert (= (and b!3879746 res!1572172) b!3879738))

(assert (= (and start!364168 ((_ is Cons!41276) suffixResult!91)) b!3879743))

(assert (= (and start!364168 ((_ is Cons!41276) suffix!1176)) b!3879733))

(assert (= b!3879745 b!3879751))

(assert (= b!3879732 b!3879745))

(assert (= (and start!364168 ((_ is Cons!41278) rules!2768)) b!3879732))

(assert (= b!3879742 b!3879753))

(assert (= b!3879749 b!3879742))

(assert (= b!3879740 b!3879749))

(assert (= (and start!364168 ((_ is Cons!41279) prefixTokens!80)) b!3879740))

(assert (= b!3879752 b!3879747))

(assert (= b!3879750 b!3879752))

(assert (= b!3879737 b!3879750))

(assert (= (and start!364168 ((_ is Cons!41279) suffixTokens!72)) b!3879737))

(assert (= (and start!364168 ((_ is Cons!41276) prefix!426)) b!3879735))

(declare-fun m!4438157 () Bool)

(assert (=> b!3879738 m!4438157))

(declare-fun m!4438159 () Bool)

(assert (=> b!3879742 m!4438159))

(declare-fun m!4438161 () Bool)

(assert (=> b!3879742 m!4438161))

(declare-fun m!4438163 () Bool)

(assert (=> b!3879748 m!4438163))

(declare-fun m!4438165 () Bool)

(assert (=> b!3879754 m!4438165))

(declare-fun m!4438167 () Bool)

(assert (=> b!3879746 m!4438167))

(declare-fun m!4438169 () Bool)

(assert (=> b!3879746 m!4438169))

(declare-fun m!4438171 () Bool)

(assert (=> b!3879746 m!4438171))

(declare-fun m!4438173 () Bool)

(assert (=> b!3879746 m!4438173))

(declare-fun m!4438175 () Bool)

(assert (=> b!3879746 m!4438175))

(assert (=> b!3879746 m!4438173))

(declare-fun m!4438177 () Bool)

(assert (=> b!3879746 m!4438177))

(declare-fun m!4438179 () Bool)

(assert (=> b!3879746 m!4438179))

(declare-fun m!4438181 () Bool)

(assert (=> b!3879746 m!4438181))

(declare-fun m!4438183 () Bool)

(assert (=> b!3879746 m!4438183))

(declare-fun m!4438185 () Bool)

(assert (=> b!3879746 m!4438185))

(assert (=> b!3879746 m!4438169))

(declare-fun m!4438187 () Bool)

(assert (=> b!3879746 m!4438187))

(declare-fun m!4438189 () Bool)

(assert (=> b!3879746 m!4438189))

(declare-fun m!4438191 () Bool)

(assert (=> b!3879746 m!4438191))

(declare-fun m!4438193 () Bool)

(assert (=> b!3879746 m!4438193))

(declare-fun m!4438195 () Bool)

(assert (=> b!3879749 m!4438195))

(declare-fun m!4438197 () Bool)

(assert (=> b!3879745 m!4438197))

(declare-fun m!4438199 () Bool)

(assert (=> b!3879745 m!4438199))

(declare-fun m!4438201 () Bool)

(assert (=> b!3879734 m!4438201))

(declare-fun m!4438203 () Bool)

(assert (=> b!3879734 m!4438203))

(declare-fun m!4438205 () Bool)

(assert (=> b!3879734 m!4438205))

(declare-fun m!4438207 () Bool)

(assert (=> b!3879740 m!4438207))

(declare-fun m!4438209 () Bool)

(assert (=> b!3879744 m!4438209))

(declare-fun m!4438211 () Bool)

(assert (=> b!3879736 m!4438211))

(declare-fun m!4438213 () Bool)

(assert (=> b!3879750 m!4438213))

(declare-fun m!4438215 () Bool)

(assert (=> b!3879741 m!4438215))

(declare-fun m!4438217 () Bool)

(assert (=> b!3879737 m!4438217))

(declare-fun m!4438219 () Bool)

(assert (=> b!3879752 m!4438219))

(declare-fun m!4438221 () Bool)

(assert (=> b!3879752 m!4438221))

(declare-fun m!4438223 () Bool)

(assert (=> b!3879739 m!4438223))

(check-sat (not b!3879750) (not b!3879735) (not b_next!105797) (not b_next!105789) (not b!3879746) (not b!3879734) (not b!3879748) (not b!3879754) b_and!290985 (not b!3879738) (not b!3879732) (not b!3879739) tp_is_empty!19609 b_and!290979 (not b!3879745) (not b!3879749) (not b!3879744) (not b_next!105791) (not b!3879736) b_and!290981 (not b!3879733) (not b!3879741) (not b!3879737) b_and!290987 b_and!290983 (not b!3879752) (not b!3879742) b_and!290989 (not b_next!105799) (not b!3879743) (not b_next!105793) (not b_next!105795) (not b!3879740))
(check-sat b_and!290979 (not b_next!105797) (not b_next!105791) b_and!290981 (not b_next!105789) b_and!290989 b_and!290985 b_and!290987 b_and!290983 (not b_next!105799) (not b_next!105793) (not b_next!105795))
(get-model)

(declare-fun d!1148218 () Bool)

(assert (=> d!1148218 (= (inv!55426 (tag!7274 (rule!9312 (h!46699 prefixTokens!80)))) (= (mod (str.len (value!203432 (tag!7274 (rule!9312 (h!46699 prefixTokens!80))))) 2) 0))))

(assert (=> b!3879742 d!1148218))

(declare-fun d!1148220 () Bool)

(declare-fun res!1572182 () Bool)

(declare-fun e!2400774 () Bool)

(assert (=> d!1148220 (=> (not res!1572182) (not e!2400774))))

(declare-fun semiInverseModEq!2746 (Int Int) Bool)

(assert (=> d!1148220 (= res!1572182 (semiInverseModEq!2746 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toValue!8842 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))))))

(assert (=> d!1148220 (= (inv!55430 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) e!2400774)))

(declare-fun b!3879763 () Bool)

(declare-fun equivClasses!2645 (Int Int) Bool)

(assert (=> b!3879763 (= e!2400774 (equivClasses!2645 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toValue!8842 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))))))

(assert (= (and d!1148220 res!1572182) b!3879763))

(declare-fun m!4438229 () Bool)

(assert (=> d!1148220 m!4438229))

(declare-fun m!4438231 () Bool)

(assert (=> b!3879763 m!4438231))

(assert (=> b!3879742 d!1148220))

(declare-fun d!1148228 () Bool)

(declare-fun res!1572185 () Bool)

(declare-fun e!2400777 () Bool)

(assert (=> d!1148228 (=> (not res!1572185) (not e!2400777))))

(declare-fun rulesValid!2481 (LexerInterface!6003 List!41402) Bool)

(assert (=> d!1148228 (= res!1572185 (rulesValid!2481 thiss!20629 rules!2768))))

(assert (=> d!1148228 (= (rulesInvariant!5346 thiss!20629 rules!2768) e!2400777)))

(declare-fun b!3879766 () Bool)

(declare-datatypes ((List!41404 0))(
  ( (Nil!41280) (Cons!41280 (h!46700 String!46938) (t!315239 List!41404)) )
))
(declare-fun noDuplicateTag!2482 (LexerInterface!6003 List!41402 List!41404) Bool)

(assert (=> b!3879766 (= e!2400777 (noDuplicateTag!2482 thiss!20629 rules!2768 Nil!41280))))

(assert (= (and d!1148228 res!1572185) b!3879766))

(declare-fun m!4438233 () Bool)

(assert (=> d!1148228 m!4438233))

(declare-fun m!4438235 () Bool)

(assert (=> b!3879766 m!4438235))

(assert (=> b!3879754 d!1148228))

(declare-fun d!1148230 () Bool)

(assert (=> d!1148230 (= (isEmpty!24516 prefix!426) ((_ is Nil!41276) prefix!426))))

(assert (=> b!3879744 d!1148230))

(declare-fun b!3879825 () Bool)

(declare-fun e!2400812 () Bool)

(declare-fun e!2400813 () Bool)

(assert (=> b!3879825 (= e!2400812 e!2400813)))

(declare-fun res!1572203 () Bool)

(declare-fun lt!1353918 () tuple2!40510)

(assert (=> b!3879825 (= res!1572203 (< (size!30998 (_2!23389 lt!1353918)) (size!30998 lt!1353881)))))

(assert (=> b!3879825 (=> (not res!1572203) (not e!2400813))))

(declare-fun b!3879826 () Bool)

(declare-fun e!2400814 () tuple2!40510)

(declare-fun lt!1353919 () Option!8832)

(declare-fun lt!1353920 () tuple2!40510)

(assert (=> b!3879826 (= e!2400814 (tuple2!40511 (Cons!41279 (_1!23390 (v!39129 lt!1353919)) (_1!23389 lt!1353920)) (_2!23389 lt!1353920)))))

(assert (=> b!3879826 (= lt!1353920 (lexList!1771 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353919))))))

(declare-fun b!3879827 () Bool)

(assert (=> b!3879827 (= e!2400812 (= (_2!23389 lt!1353918) lt!1353881))))

(declare-fun d!1148232 () Bool)

(assert (=> d!1148232 e!2400812))

(declare-fun c!674867 () Bool)

(declare-fun size!31000 (List!41403) Int)

(assert (=> d!1148232 (= c!674867 (> (size!31000 (_1!23389 lt!1353918)) 0))))

(assert (=> d!1148232 (= lt!1353918 e!2400814)))

(declare-fun c!674866 () Bool)

(assert (=> d!1148232 (= c!674866 ((_ is Some!8831) lt!1353919))))

(assert (=> d!1148232 (= lt!1353919 (maxPrefix!3307 thiss!20629 rules!2768 lt!1353881))))

(assert (=> d!1148232 (= (lexList!1771 thiss!20629 rules!2768 lt!1353881) lt!1353918)))

(declare-fun b!3879828 () Bool)

(assert (=> b!3879828 (= e!2400814 (tuple2!40511 Nil!41279 lt!1353881))))

(declare-fun b!3879829 () Bool)

(assert (=> b!3879829 (= e!2400813 (not (isEmpty!24514 (_1!23389 lt!1353918))))))

(assert (= (and d!1148232 c!674866) b!3879826))

(assert (= (and d!1148232 (not c!674866)) b!3879828))

(assert (= (and d!1148232 c!674867) b!3879825))

(assert (= (and d!1148232 (not c!674867)) b!3879827))

(assert (= (and b!3879825 res!1572203) b!3879829))

(declare-fun m!4438295 () Bool)

(assert (=> b!3879825 m!4438295))

(declare-fun m!4438297 () Bool)

(assert (=> b!3879825 m!4438297))

(declare-fun m!4438299 () Bool)

(assert (=> b!3879826 m!4438299))

(declare-fun m!4438301 () Bool)

(assert (=> d!1148232 m!4438301))

(assert (=> d!1148232 m!4438215))

(declare-fun m!4438303 () Bool)

(assert (=> b!3879829 m!4438303))

(assert (=> b!3879734 d!1148232))

(declare-fun b!3879856 () Bool)

(declare-fun res!1572225 () Bool)

(declare-fun e!2400830 () Bool)

(assert (=> b!3879856 (=> (not res!1572225) (not e!2400830))))

(declare-fun lt!1353929 () List!41403)

(assert (=> b!3879856 (= res!1572225 (= (size!31000 lt!1353929) (+ (size!31000 prefixTokens!80) (size!31000 suffixTokens!72))))))

(declare-fun b!3879854 () Bool)

(declare-fun e!2400831 () List!41403)

(assert (=> b!3879854 (= e!2400831 suffixTokens!72)))

(declare-fun b!3879857 () Bool)

(assert (=> b!3879857 (= e!2400830 (or (not (= suffixTokens!72 Nil!41279)) (= lt!1353929 prefixTokens!80)))))

(declare-fun b!3879855 () Bool)

(assert (=> b!3879855 (= e!2400831 (Cons!41279 (h!46699 prefixTokens!80) (++!10585 (t!315142 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1148254 () Bool)

(assert (=> d!1148254 e!2400830))

(declare-fun res!1572224 () Bool)

(assert (=> d!1148254 (=> (not res!1572224) (not e!2400830))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6163 (List!41403) (InoxSet Token!11966))

(assert (=> d!1148254 (= res!1572224 (= (content!6163 lt!1353929) ((_ map or) (content!6163 prefixTokens!80) (content!6163 suffixTokens!72))))))

(assert (=> d!1148254 (= lt!1353929 e!2400831)))

(declare-fun c!674870 () Bool)

(assert (=> d!1148254 (= c!674870 ((_ is Nil!41279) prefixTokens!80))))

(assert (=> d!1148254 (= (++!10585 prefixTokens!80 suffixTokens!72) lt!1353929)))

(assert (= (and d!1148254 c!674870) b!3879854))

(assert (= (and d!1148254 (not c!674870)) b!3879855))

(assert (= (and d!1148254 res!1572224) b!3879856))

(assert (= (and b!3879856 res!1572225) b!3879857))

(declare-fun m!4438321 () Bool)

(assert (=> b!3879856 m!4438321))

(declare-fun m!4438323 () Bool)

(assert (=> b!3879856 m!4438323))

(declare-fun m!4438325 () Bool)

(assert (=> b!3879856 m!4438325))

(declare-fun m!4438327 () Bool)

(assert (=> b!3879855 m!4438327))

(declare-fun m!4438329 () Bool)

(assert (=> d!1148254 m!4438329))

(declare-fun m!4438331 () Bool)

(assert (=> d!1148254 m!4438331))

(declare-fun m!4438333 () Bool)

(assert (=> d!1148254 m!4438333))

(assert (=> b!3879734 d!1148254))

(declare-fun b!3879886 () Bool)

(declare-fun res!1572239 () Bool)

(declare-fun e!2400850 () Bool)

(assert (=> b!3879886 (=> (not res!1572239) (not e!2400850))))

(declare-fun lt!1353938 () List!41400)

(assert (=> b!3879886 (= res!1572239 (= (size!30998 lt!1353938) (+ (size!30998 prefix!426) (size!30998 suffix!1176))))))

(declare-fun b!3879884 () Bool)

(declare-fun e!2400849 () List!41400)

(assert (=> b!3879884 (= e!2400849 suffix!1176)))

(declare-fun d!1148262 () Bool)

(assert (=> d!1148262 e!2400850))

(declare-fun res!1572240 () Bool)

(assert (=> d!1148262 (=> (not res!1572240) (not e!2400850))))

(declare-fun content!6164 (List!41400) (InoxSet C!22824))

(assert (=> d!1148262 (= res!1572240 (= (content!6164 lt!1353938) ((_ map or) (content!6164 prefix!426) (content!6164 suffix!1176))))))

(assert (=> d!1148262 (= lt!1353938 e!2400849)))

(declare-fun c!674877 () Bool)

(assert (=> d!1148262 (= c!674877 ((_ is Nil!41276) prefix!426))))

(assert (=> d!1148262 (= (++!10586 prefix!426 suffix!1176) lt!1353938)))

(declare-fun b!3879885 () Bool)

(assert (=> b!3879885 (= e!2400849 (Cons!41276 (h!46696 prefix!426) (++!10586 (t!315139 prefix!426) suffix!1176)))))

(declare-fun b!3879887 () Bool)

(assert (=> b!3879887 (= e!2400850 (or (not (= suffix!1176 Nil!41276)) (= lt!1353938 prefix!426)))))

(assert (= (and d!1148262 c!674877) b!3879884))

(assert (= (and d!1148262 (not c!674877)) b!3879885))

(assert (= (and d!1148262 res!1572240) b!3879886))

(assert (= (and b!3879886 res!1572239) b!3879887))

(declare-fun m!4438379 () Bool)

(assert (=> b!3879886 m!4438379))

(declare-fun m!4438381 () Bool)

(assert (=> b!3879886 m!4438381))

(declare-fun m!4438383 () Bool)

(assert (=> b!3879886 m!4438383))

(declare-fun m!4438385 () Bool)

(assert (=> d!1148262 m!4438385))

(declare-fun m!4438387 () Bool)

(assert (=> d!1148262 m!4438387))

(declare-fun m!4438389 () Bool)

(assert (=> d!1148262 m!4438389))

(declare-fun m!4438391 () Bool)

(assert (=> b!3879885 m!4438391))

(assert (=> b!3879734 d!1148262))

(declare-fun d!1148288 () Bool)

(assert (=> d!1148288 (= (inv!55426 (tag!7274 (h!46698 rules!2768))) (= (mod (str.len (value!203432 (tag!7274 (h!46698 rules!2768)))) 2) 0))))

(assert (=> b!3879745 d!1148288))

(declare-fun d!1148290 () Bool)

(declare-fun res!1572241 () Bool)

(declare-fun e!2400851 () Bool)

(assert (=> d!1148290 (=> (not res!1572241) (not e!2400851))))

(assert (=> d!1148290 (= res!1572241 (semiInverseModEq!2746 (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toValue!8842 (transformation!6414 (h!46698 rules!2768)))))))

(assert (=> d!1148290 (= (inv!55430 (transformation!6414 (h!46698 rules!2768))) e!2400851)))

(declare-fun b!3879888 () Bool)

(assert (=> b!3879888 (= e!2400851 (equivClasses!2645 (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toValue!8842 (transformation!6414 (h!46698 rules!2768)))))))

(assert (= (and d!1148290 res!1572241) b!3879888))

(declare-fun m!4438393 () Bool)

(assert (=> d!1148290 m!4438393))

(declare-fun m!4438395 () Bool)

(assert (=> b!3879888 m!4438395))

(assert (=> b!3879745 d!1148290))

(declare-fun d!1148292 () Bool)

(assert (=> d!1148292 (ruleValid!2362 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872))))))

(declare-fun lt!1353945 () Unit!59348)

(declare-fun choose!23005 (LexerInterface!6003 Rule!12628 List!41402) Unit!59348)

(assert (=> d!1148292 (= lt!1353945 (choose!23005 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872))) rules!2768))))

(declare-fun contains!8299 (List!41402 Rule!12628) Bool)

(assert (=> d!1148292 (contains!8299 rules!2768 (rule!9312 (_1!23390 (v!39129 lt!1353872))))))

(assert (=> d!1148292 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1442 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872))) rules!2768) lt!1353945)))

(declare-fun bs!583731 () Bool)

(assert (= bs!583731 d!1148292))

(assert (=> bs!583731 m!4438181))

(declare-fun m!4438435 () Bool)

(assert (=> bs!583731 m!4438435))

(declare-fun m!4438437 () Bool)

(assert (=> bs!583731 m!4438437))

(assert (=> b!3879746 d!1148292))

(declare-fun d!1148300 () Bool)

(declare-fun e!2400869 () Bool)

(assert (=> d!1148300 e!2400869))

(declare-fun res!1572261 () Bool)

(assert (=> d!1148300 (=> res!1572261 e!2400869)))

(declare-fun lt!1353948 () Bool)

(assert (=> d!1148300 (= res!1572261 (not lt!1353948))))

(declare-fun e!2400870 () Bool)

(assert (=> d!1148300 (= lt!1353948 e!2400870)))

(declare-fun res!1572263 () Bool)

(assert (=> d!1148300 (=> res!1572263 e!2400870)))

(assert (=> d!1148300 (= res!1572263 ((_ is Nil!41276) lt!1353874))))

(assert (=> d!1148300 (= (isPrefix!3509 lt!1353874 lt!1353876) lt!1353948)))

(declare-fun b!3879916 () Bool)

(declare-fun e!2400868 () Bool)

(assert (=> b!3879916 (= e!2400870 e!2400868)))

(declare-fun res!1572262 () Bool)

(assert (=> b!3879916 (=> (not res!1572262) (not e!2400868))))

(assert (=> b!3879916 (= res!1572262 (not ((_ is Nil!41276) lt!1353876)))))

(declare-fun b!3879917 () Bool)

(declare-fun res!1572260 () Bool)

(assert (=> b!3879917 (=> (not res!1572260) (not e!2400868))))

(declare-fun head!8238 (List!41400) C!22824)

(assert (=> b!3879917 (= res!1572260 (= (head!8238 lt!1353874) (head!8238 lt!1353876)))))

(declare-fun b!3879919 () Bool)

(assert (=> b!3879919 (= e!2400869 (>= (size!30998 lt!1353876) (size!30998 lt!1353874)))))

(declare-fun b!3879918 () Bool)

(declare-fun tail!5955 (List!41400) List!41400)

(assert (=> b!3879918 (= e!2400868 (isPrefix!3509 (tail!5955 lt!1353874) (tail!5955 lt!1353876)))))

(assert (= (and d!1148300 (not res!1572263)) b!3879916))

(assert (= (and b!3879916 res!1572262) b!3879917))

(assert (= (and b!3879917 res!1572260) b!3879918))

(assert (= (and d!1148300 (not res!1572261)) b!3879919))

(declare-fun m!4438439 () Bool)

(assert (=> b!3879917 m!4438439))

(declare-fun m!4438441 () Bool)

(assert (=> b!3879917 m!4438441))

(declare-fun m!4438443 () Bool)

(assert (=> b!3879919 m!4438443))

(assert (=> b!3879919 m!4438193))

(declare-fun m!4438445 () Bool)

(assert (=> b!3879918 m!4438445))

(declare-fun m!4438447 () Bool)

(assert (=> b!3879918 m!4438447))

(assert (=> b!3879918 m!4438445))

(assert (=> b!3879918 m!4438447))

(declare-fun m!4438449 () Bool)

(assert (=> b!3879918 m!4438449))

(assert (=> b!3879746 d!1148300))

(declare-fun d!1148302 () Bool)

(declare-fun lt!1353951 () Int)

(assert (=> d!1148302 (>= lt!1353951 0)))

(declare-fun e!2400873 () Int)

(assert (=> d!1148302 (= lt!1353951 e!2400873)))

(declare-fun c!674884 () Bool)

(assert (=> d!1148302 (= c!674884 ((_ is Nil!41276) lt!1353874))))

(assert (=> d!1148302 (= (size!30998 lt!1353874) lt!1353951)))

(declare-fun b!3879924 () Bool)

(assert (=> b!3879924 (= e!2400873 0)))

(declare-fun b!3879925 () Bool)

(assert (=> b!3879925 (= e!2400873 (+ 1 (size!30998 (t!315139 lt!1353874))))))

(assert (= (and d!1148302 c!674884) b!3879924))

(assert (= (and d!1148302 (not c!674884)) b!3879925))

(declare-fun m!4438451 () Bool)

(assert (=> b!3879925 m!4438451))

(assert (=> b!3879746 d!1148302))

(declare-fun d!1148304 () Bool)

(declare-fun lt!1353954 () BalanceConc!24844)

(assert (=> d!1148304 (= (list!15340 lt!1353954) (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872))))))

(declare-fun dynLambda!17717 (Int TokenValue!6644) BalanceConc!24844)

(assert (=> d!1148304 (= lt!1353954 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))) (value!203433 (_1!23390 (v!39129 lt!1353872)))))))

(assert (=> d!1148304 (= (charsOf!4238 (_1!23390 (v!39129 lt!1353872))) lt!1353954)))

(declare-fun b_lambda!113207 () Bool)

(assert (=> (not b_lambda!113207) (not d!1148304)))

(declare-fun t!315168 () Bool)

(declare-fun tb!225065 () Bool)

(assert (=> (and b!3879747 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315168) tb!225065))

(declare-fun b!3879930 () Bool)

(declare-fun e!2400876 () Bool)

(declare-fun tp!1176332 () Bool)

(declare-fun inv!55433 (Conc!12625) Bool)

(assert (=> b!3879930 (= e!2400876 (and (inv!55433 (c!674844 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))) (value!203433 (_1!23390 (v!39129 lt!1353872)))))) tp!1176332))))

(declare-fun result!274142 () Bool)

(declare-fun inv!55434 (BalanceConc!24844) Bool)

(assert (=> tb!225065 (= result!274142 (and (inv!55434 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))) (value!203433 (_1!23390 (v!39129 lt!1353872))))) e!2400876))))

(assert (= tb!225065 b!3879930))

(declare-fun m!4438453 () Bool)

(assert (=> b!3879930 m!4438453))

(declare-fun m!4438455 () Bool)

(assert (=> tb!225065 m!4438455))

(assert (=> d!1148304 t!315168))

(declare-fun b_and!291015 () Bool)

(assert (= b_and!290981 (and (=> t!315168 result!274142) b_and!291015)))

(declare-fun tb!225067 () Bool)

(declare-fun t!315170 () Bool)

(assert (=> (and b!3879751 (= (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315170) tb!225067))

(declare-fun result!274146 () Bool)

(assert (= result!274146 result!274142))

(assert (=> d!1148304 t!315170))

(declare-fun b_and!291017 () Bool)

(assert (= b_and!290985 (and (=> t!315170 result!274146) b_and!291017)))

(declare-fun t!315172 () Bool)

(declare-fun tb!225069 () Bool)

(assert (=> (and b!3879753 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315172) tb!225069))

(declare-fun result!274148 () Bool)

(assert (= result!274148 result!274142))

(assert (=> d!1148304 t!315172))

(declare-fun b_and!291019 () Bool)

(assert (= b_and!290989 (and (=> t!315172 result!274148) b_and!291019)))

(declare-fun m!4438457 () Bool)

(assert (=> d!1148304 m!4438457))

(declare-fun m!4438459 () Bool)

(assert (=> d!1148304 m!4438459))

(assert (=> b!3879746 d!1148304))

(declare-fun d!1148306 () Bool)

(declare-fun fromListB!2157 (List!41400) BalanceConc!24844)

(assert (=> d!1148306 (= (seqFromList!4681 lt!1353874) (fromListB!2157 lt!1353874))))

(declare-fun bs!583732 () Bool)

(assert (= bs!583732 d!1148306))

(declare-fun m!4438461 () Bool)

(assert (=> bs!583732 m!4438461))

(assert (=> b!3879746 d!1148306))

(declare-fun d!1148308 () Bool)

(declare-fun dynLambda!17718 (Int BalanceConc!24844) TokenValue!6644)

(assert (=> d!1148308 (= (apply!9653 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))) (seqFromList!4681 lt!1353874)) (dynLambda!17718 (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))) (seqFromList!4681 lt!1353874)))))

(declare-fun b_lambda!113209 () Bool)

(assert (=> (not b_lambda!113209) (not d!1148308)))

(declare-fun t!315174 () Bool)

(declare-fun tb!225071 () Bool)

(assert (=> (and b!3879747 (= (toValue!8842 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315174) tb!225071))

(declare-fun result!274150 () Bool)

(assert (=> tb!225071 (= result!274150 (inv!21 (dynLambda!17718 (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))) (seqFromList!4681 lt!1353874))))))

(declare-fun m!4438463 () Bool)

(assert (=> tb!225071 m!4438463))

(assert (=> d!1148308 t!315174))

(declare-fun b_and!291021 () Bool)

(assert (= b_and!290979 (and (=> t!315174 result!274150) b_and!291021)))

(declare-fun t!315176 () Bool)

(declare-fun tb!225073 () Bool)

(assert (=> (and b!3879751 (= (toValue!8842 (transformation!6414 (h!46698 rules!2768))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315176) tb!225073))

(declare-fun result!274154 () Bool)

(assert (= result!274154 result!274150))

(assert (=> d!1148308 t!315176))

(declare-fun b_and!291023 () Bool)

(assert (= b_and!290983 (and (=> t!315176 result!274154) b_and!291023)))

(declare-fun tb!225075 () Bool)

(declare-fun t!315178 () Bool)

(assert (=> (and b!3879753 (= (toValue!8842 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315178) tb!225075))

(declare-fun result!274156 () Bool)

(assert (= result!274156 result!274150))

(assert (=> d!1148308 t!315178))

(declare-fun b_and!291025 () Bool)

(assert (= b_and!290987 (and (=> t!315178 result!274156) b_and!291025)))

(assert (=> d!1148308 m!4438173))

(declare-fun m!4438465 () Bool)

(assert (=> d!1148308 m!4438465))

(assert (=> b!3879746 d!1148308))

(declare-fun b!3879953 () Bool)

(declare-fun res!1572278 () Bool)

(declare-fun e!2400887 () Bool)

(assert (=> b!3879953 (=> (not res!1572278) (not e!2400887))))

(declare-fun lt!1353965 () List!41400)

(assert (=> b!3879953 (= res!1572278 (= (size!30998 lt!1353965) (+ (size!30998 lt!1353874) (size!30998 (_2!23390 (v!39129 lt!1353872))))))))

(declare-fun b!3879951 () Bool)

(declare-fun e!2400886 () List!41400)

(assert (=> b!3879951 (= e!2400886 (_2!23390 (v!39129 lt!1353872)))))

(declare-fun d!1148310 () Bool)

(assert (=> d!1148310 e!2400887))

(declare-fun res!1572279 () Bool)

(assert (=> d!1148310 (=> (not res!1572279) (not e!2400887))))

(assert (=> d!1148310 (= res!1572279 (= (content!6164 lt!1353965) ((_ map or) (content!6164 lt!1353874) (content!6164 (_2!23390 (v!39129 lt!1353872))))))))

(assert (=> d!1148310 (= lt!1353965 e!2400886)))

(declare-fun c!674887 () Bool)

(assert (=> d!1148310 (= c!674887 ((_ is Nil!41276) lt!1353874))))

(assert (=> d!1148310 (= (++!10586 lt!1353874 (_2!23390 (v!39129 lt!1353872))) lt!1353965)))

(declare-fun b!3879952 () Bool)

(assert (=> b!3879952 (= e!2400886 (Cons!41276 (h!46696 lt!1353874) (++!10586 (t!315139 lt!1353874) (_2!23390 (v!39129 lt!1353872)))))))

(declare-fun b!3879954 () Bool)

(assert (=> b!3879954 (= e!2400887 (or (not (= (_2!23390 (v!39129 lt!1353872)) Nil!41276)) (= lt!1353965 lt!1353874)))))

(assert (= (and d!1148310 c!674887) b!3879951))

(assert (= (and d!1148310 (not c!674887)) b!3879952))

(assert (= (and d!1148310 res!1572279) b!3879953))

(assert (= (and b!3879953 res!1572278) b!3879954))

(declare-fun m!4438467 () Bool)

(assert (=> b!3879953 m!4438467))

(assert (=> b!3879953 m!4438193))

(declare-fun m!4438469 () Bool)

(assert (=> b!3879953 m!4438469))

(declare-fun m!4438471 () Bool)

(assert (=> d!1148310 m!4438471))

(declare-fun m!4438473 () Bool)

(assert (=> d!1148310 m!4438473))

(declare-fun m!4438475 () Bool)

(assert (=> d!1148310 m!4438475))

(declare-fun m!4438477 () Bool)

(assert (=> b!3879952 m!4438477))

(assert (=> b!3879746 d!1148310))

(declare-fun d!1148312 () Bool)

(declare-fun list!15342 (Conc!12625) List!41400)

(assert (=> d!1148312 (= (list!15340 (charsOf!4238 (_1!23390 (v!39129 lt!1353872)))) (list!15342 (c!674844 (charsOf!4238 (_1!23390 (v!39129 lt!1353872))))))))

(declare-fun bs!583733 () Bool)

(assert (= bs!583733 d!1148312))

(declare-fun m!4438479 () Bool)

(assert (=> bs!583733 m!4438479))

(assert (=> b!3879746 d!1148312))

(declare-fun d!1148314 () Bool)

(declare-fun lt!1353973 () List!41400)

(assert (=> d!1148314 (= (++!10586 lt!1353874 lt!1353973) lt!1353881)))

(declare-fun e!2400893 () List!41400)

(assert (=> d!1148314 (= lt!1353973 e!2400893)))

(declare-fun c!674891 () Bool)

(assert (=> d!1148314 (= c!674891 ((_ is Cons!41276) lt!1353874))))

(assert (=> d!1148314 (>= (size!30998 lt!1353881) (size!30998 lt!1353874))))

(assert (=> d!1148314 (= (getSuffix!1964 lt!1353881 lt!1353874) lt!1353973)))

(declare-fun b!3879968 () Bool)

(assert (=> b!3879968 (= e!2400893 (getSuffix!1964 (tail!5955 lt!1353881) (t!315139 lt!1353874)))))

(declare-fun b!3879969 () Bool)

(assert (=> b!3879969 (= e!2400893 lt!1353881)))

(assert (= (and d!1148314 c!674891) b!3879968))

(assert (= (and d!1148314 (not c!674891)) b!3879969))

(declare-fun m!4438481 () Bool)

(assert (=> d!1148314 m!4438481))

(assert (=> d!1148314 m!4438297))

(assert (=> d!1148314 m!4438193))

(declare-fun m!4438483 () Bool)

(assert (=> b!3879968 m!4438483))

(assert (=> b!3879968 m!4438483))

(declare-fun m!4438485 () Bool)

(assert (=> b!3879968 m!4438485))

(assert (=> b!3879746 d!1148314))

(declare-fun d!1148316 () Bool)

(assert (=> d!1148316 (= (size!30997 (_1!23390 (v!39129 lt!1353872))) (size!30998 (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872)))))))

(declare-fun Unit!59351 () Unit!59348)

(assert (=> d!1148316 (= (lemmaCharactersSize!1071 (_1!23390 (v!39129 lt!1353872))) Unit!59351)))

(declare-fun bs!583734 () Bool)

(assert (= bs!583734 d!1148316))

(assert (=> bs!583734 m!4438157))

(assert (=> b!3879746 d!1148316))

(declare-fun d!1148318 () Bool)

(assert (=> d!1148318 (= (_2!23390 (v!39129 lt!1353872)) lt!1353873)))

(declare-fun lt!1353976 () Unit!59348)

(declare-fun choose!23006 (List!41400 List!41400 List!41400 List!41400 List!41400) Unit!59348)

(assert (=> d!1148318 (= lt!1353976 (choose!23006 lt!1353874 (_2!23390 (v!39129 lt!1353872)) lt!1353874 lt!1353873 lt!1353881))))

(assert (=> d!1148318 (isPrefix!3509 lt!1353874 lt!1353881)))

(assert (=> d!1148318 (= (lemmaSamePrefixThenSameSuffix!1730 lt!1353874 (_2!23390 (v!39129 lt!1353872)) lt!1353874 lt!1353873 lt!1353881) lt!1353976)))

(declare-fun bs!583735 () Bool)

(assert (= bs!583735 d!1148318))

(declare-fun m!4438519 () Bool)

(assert (=> bs!583735 m!4438519))

(declare-fun m!4438521 () Bool)

(assert (=> bs!583735 m!4438521))

(assert (=> b!3879746 d!1148318))

(declare-fun b!3879970 () Bool)

(declare-fun e!2400894 () Bool)

(declare-fun e!2400895 () Bool)

(assert (=> b!3879970 (= e!2400894 e!2400895)))

(declare-fun res!1572287 () Bool)

(declare-fun lt!1353977 () tuple2!40510)

(assert (=> b!3879970 (= res!1572287 (< (size!30998 (_2!23389 lt!1353977)) (size!30998 (_2!23390 (v!39129 lt!1353872)))))))

(assert (=> b!3879970 (=> (not res!1572287) (not e!2400895))))

(declare-fun b!3879971 () Bool)

(declare-fun e!2400896 () tuple2!40510)

(declare-fun lt!1353978 () Option!8832)

(declare-fun lt!1353979 () tuple2!40510)

(assert (=> b!3879971 (= e!2400896 (tuple2!40511 (Cons!41279 (_1!23390 (v!39129 lt!1353978)) (_1!23389 lt!1353979)) (_2!23389 lt!1353979)))))

(assert (=> b!3879971 (= lt!1353979 (lexList!1771 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353978))))))

(declare-fun b!3879972 () Bool)

(assert (=> b!3879972 (= e!2400894 (= (_2!23389 lt!1353977) (_2!23390 (v!39129 lt!1353872))))))

(declare-fun d!1148322 () Bool)

(assert (=> d!1148322 e!2400894))

(declare-fun c!674893 () Bool)

(assert (=> d!1148322 (= c!674893 (> (size!31000 (_1!23389 lt!1353977)) 0))))

(assert (=> d!1148322 (= lt!1353977 e!2400896)))

(declare-fun c!674892 () Bool)

(assert (=> d!1148322 (= c!674892 ((_ is Some!8831) lt!1353978))))

(assert (=> d!1148322 (= lt!1353978 (maxPrefix!3307 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353872))))))

(assert (=> d!1148322 (= (lexList!1771 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353872))) lt!1353977)))

(declare-fun b!3879973 () Bool)

(assert (=> b!3879973 (= e!2400896 (tuple2!40511 Nil!41279 (_2!23390 (v!39129 lt!1353872))))))

(declare-fun b!3879974 () Bool)

(assert (=> b!3879974 (= e!2400895 (not (isEmpty!24514 (_1!23389 lt!1353977))))))

(assert (= (and d!1148322 c!674892) b!3879971))

(assert (= (and d!1148322 (not c!674892)) b!3879973))

(assert (= (and d!1148322 c!674893) b!3879970))

(assert (= (and d!1148322 (not c!674893)) b!3879972))

(assert (= (and b!3879970 res!1572287) b!3879974))

(declare-fun m!4438523 () Bool)

(assert (=> b!3879970 m!4438523))

(assert (=> b!3879970 m!4438469))

(declare-fun m!4438525 () Bool)

(assert (=> b!3879971 m!4438525))

(declare-fun m!4438527 () Bool)

(assert (=> d!1148322 m!4438527))

(declare-fun m!4438529 () Bool)

(assert (=> d!1148322 m!4438529))

(declare-fun m!4438531 () Bool)

(assert (=> b!3879974 m!4438531))

(assert (=> b!3879746 d!1148322))

(declare-fun d!1148324 () Bool)

(declare-fun res!1572296 () Bool)

(declare-fun e!2400911 () Bool)

(assert (=> d!1148324 (=> (not res!1572296) (not e!2400911))))

(declare-fun validRegex!5146 (Regex!11319) Bool)

(assert (=> d!1148324 (= res!1572296 (validRegex!5146 (regex!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872))))))))

(assert (=> d!1148324 (= (ruleValid!2362 thiss!20629 (rule!9312 (_1!23390 (v!39129 lt!1353872)))) e!2400911)))

(declare-fun b!3879999 () Bool)

(declare-fun res!1572297 () Bool)

(assert (=> b!3879999 (=> (not res!1572297) (not e!2400911))))

(declare-fun nullable!3947 (Regex!11319) Bool)

(assert (=> b!3879999 (= res!1572297 (not (nullable!3947 (regex!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))))))

(declare-fun b!3880000 () Bool)

(assert (=> b!3880000 (= e!2400911 (not (= (tag!7274 (rule!9312 (_1!23390 (v!39129 lt!1353872)))) (String!46939 ""))))))

(assert (= (and d!1148324 res!1572296) b!3879999))

(assert (= (and b!3879999 res!1572297) b!3880000))

(declare-fun m!4438545 () Bool)

(assert (=> d!1148324 m!4438545))

(declare-fun m!4438547 () Bool)

(assert (=> b!3879999 m!4438547))

(assert (=> b!3879746 d!1148324))

(declare-fun d!1148330 () Bool)

(assert (=> d!1148330 (isPrefix!3509 lt!1353874 (++!10586 lt!1353874 (_2!23390 (v!39129 lt!1353872))))))

(declare-fun lt!1353982 () Unit!59348)

(declare-fun choose!23007 (List!41400 List!41400) Unit!59348)

(assert (=> d!1148330 (= lt!1353982 (choose!23007 lt!1353874 (_2!23390 (v!39129 lt!1353872))))))

(assert (=> d!1148330 (= (lemmaConcatTwoListThenFirstIsPrefix!2372 lt!1353874 (_2!23390 (v!39129 lt!1353872))) lt!1353982)))

(declare-fun bs!583736 () Bool)

(assert (= bs!583736 d!1148330))

(assert (=> bs!583736 m!4438185))

(assert (=> bs!583736 m!4438185))

(declare-fun m!4438549 () Bool)

(assert (=> bs!583736 m!4438549))

(declare-fun m!4438553 () Bool)

(assert (=> bs!583736 m!4438553))

(assert (=> b!3879746 d!1148330))

(declare-fun d!1148332 () Bool)

(assert (=> d!1148332 (= (isEmpty!24514 prefixTokens!80) ((_ is Nil!41279) prefixTokens!80))))

(assert (=> b!3879736 d!1148332))

(declare-fun b!3880009 () Bool)

(declare-fun e!2400918 () Bool)

(declare-fun e!2400919 () Bool)

(assert (=> b!3880009 (= e!2400918 e!2400919)))

(declare-fun res!1572301 () Bool)

(declare-fun lt!1353983 () tuple2!40510)

(assert (=> b!3880009 (= res!1572301 (< (size!30998 (_2!23389 lt!1353983)) (size!30998 suffix!1176)))))

(assert (=> b!3880009 (=> (not res!1572301) (not e!2400919))))

(declare-fun b!3880010 () Bool)

(declare-fun e!2400920 () tuple2!40510)

(declare-fun lt!1353984 () Option!8832)

(declare-fun lt!1353985 () tuple2!40510)

(assert (=> b!3880010 (= e!2400920 (tuple2!40511 (Cons!41279 (_1!23390 (v!39129 lt!1353984)) (_1!23389 lt!1353985)) (_2!23389 lt!1353985)))))

(assert (=> b!3880010 (= lt!1353985 (lexList!1771 thiss!20629 rules!2768 (_2!23390 (v!39129 lt!1353984))))))

(declare-fun b!3880011 () Bool)

(assert (=> b!3880011 (= e!2400918 (= (_2!23389 lt!1353983) suffix!1176))))

(declare-fun d!1148334 () Bool)

(assert (=> d!1148334 e!2400918))

(declare-fun c!674903 () Bool)

(assert (=> d!1148334 (= c!674903 (> (size!31000 (_1!23389 lt!1353983)) 0))))

(assert (=> d!1148334 (= lt!1353983 e!2400920)))

(declare-fun c!674902 () Bool)

(assert (=> d!1148334 (= c!674902 ((_ is Some!8831) lt!1353984))))

(assert (=> d!1148334 (= lt!1353984 (maxPrefix!3307 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1148334 (= (lexList!1771 thiss!20629 rules!2768 suffix!1176) lt!1353983)))

(declare-fun b!3880012 () Bool)

(assert (=> b!3880012 (= e!2400920 (tuple2!40511 Nil!41279 suffix!1176))))

(declare-fun b!3880013 () Bool)

(assert (=> b!3880013 (= e!2400919 (not (isEmpty!24514 (_1!23389 lt!1353983))))))

(assert (= (and d!1148334 c!674902) b!3880010))

(assert (= (and d!1148334 (not c!674902)) b!3880012))

(assert (= (and d!1148334 c!674903) b!3880009))

(assert (= (and d!1148334 (not c!674903)) b!3880011))

(assert (= (and b!3880009 res!1572301) b!3880013))

(declare-fun m!4438557 () Bool)

(assert (=> b!3880009 m!4438557))

(assert (=> b!3880009 m!4438383))

(declare-fun m!4438559 () Bool)

(assert (=> b!3880010 m!4438559))

(declare-fun m!4438561 () Bool)

(assert (=> d!1148334 m!4438561))

(declare-fun m!4438563 () Bool)

(assert (=> d!1148334 m!4438563))

(declare-fun m!4438565 () Bool)

(assert (=> b!3880013 m!4438565))

(assert (=> b!3879748 d!1148334))

(declare-fun d!1148336 () Bool)

(declare-fun res!1572306 () Bool)

(declare-fun e!2400941 () Bool)

(assert (=> d!1148336 (=> (not res!1572306) (not e!2400941))))

(assert (=> d!1148336 (= res!1572306 (not (isEmpty!24516 (originalCharacters!7014 (h!46699 suffixTokens!72)))))))

(assert (=> d!1148336 (= (inv!55429 (h!46699 suffixTokens!72)) e!2400941)))

(declare-fun b!3880032 () Bool)

(declare-fun res!1572307 () Bool)

(assert (=> b!3880032 (=> (not res!1572307) (not e!2400941))))

(assert (=> b!3880032 (= res!1572307 (= (originalCharacters!7014 (h!46699 suffixTokens!72)) (list!15340 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (value!203433 (h!46699 suffixTokens!72))))))))

(declare-fun b!3880033 () Bool)

(assert (=> b!3880033 (= e!2400941 (= (size!30997 (h!46699 suffixTokens!72)) (size!30998 (originalCharacters!7014 (h!46699 suffixTokens!72)))))))

(assert (= (and d!1148336 res!1572306) b!3880032))

(assert (= (and b!3880032 res!1572307) b!3880033))

(declare-fun b_lambda!113211 () Bool)

(assert (=> (not b_lambda!113211) (not b!3880032)))

(declare-fun t!315182 () Bool)

(declare-fun tb!225079 () Bool)

(assert (=> (and b!3879747 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315182) tb!225079))

(declare-fun b!3880034 () Bool)

(declare-fun e!2400942 () Bool)

(declare-fun tp!1176351 () Bool)

(assert (=> b!3880034 (= e!2400942 (and (inv!55433 (c!674844 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (value!203433 (h!46699 suffixTokens!72))))) tp!1176351))))

(declare-fun result!274164 () Bool)

(assert (=> tb!225079 (= result!274164 (and (inv!55434 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (value!203433 (h!46699 suffixTokens!72)))) e!2400942))))

(assert (= tb!225079 b!3880034))

(declare-fun m!4438567 () Bool)

(assert (=> b!3880034 m!4438567))

(declare-fun m!4438569 () Bool)

(assert (=> tb!225079 m!4438569))

(assert (=> b!3880032 t!315182))

(declare-fun b_and!291031 () Bool)

(assert (= b_and!291015 (and (=> t!315182 result!274164) b_and!291031)))

(declare-fun t!315190 () Bool)

(declare-fun tb!225087 () Bool)

(assert (=> (and b!3879751 (= (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315190) tb!225087))

(declare-fun result!274172 () Bool)

(assert (= result!274172 result!274164))

(assert (=> b!3880032 t!315190))

(declare-fun b_and!291033 () Bool)

(assert (= b_and!291017 (and (=> t!315190 result!274172) b_and!291033)))

(declare-fun tb!225089 () Bool)

(declare-fun t!315192 () Bool)

(assert (=> (and b!3879753 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315192) tb!225089))

(declare-fun result!274174 () Bool)

(assert (= result!274174 result!274164))

(assert (=> b!3880032 t!315192))

(declare-fun b_and!291035 () Bool)

(assert (= b_and!291019 (and (=> t!315192 result!274174) b_and!291035)))

(declare-fun m!4438571 () Bool)

(assert (=> d!1148336 m!4438571))

(declare-fun m!4438573 () Bool)

(assert (=> b!3880032 m!4438573))

(assert (=> b!3880032 m!4438573))

(declare-fun m!4438576 () Bool)

(assert (=> b!3880032 m!4438576))

(declare-fun m!4438579 () Bool)

(assert (=> b!3880033 m!4438579))

(assert (=> b!3879737 d!1148336))

(declare-fun d!1148338 () Bool)

(declare-fun lt!1353986 () Int)

(assert (=> d!1148338 (>= lt!1353986 0)))

(declare-fun e!2400943 () Int)

(assert (=> d!1148338 (= lt!1353986 e!2400943)))

(declare-fun c!674904 () Bool)

(assert (=> d!1148338 (= c!674904 ((_ is Nil!41276) (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872)))))))

(assert (=> d!1148338 (= (size!30998 (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872)))) lt!1353986)))

(declare-fun b!3880035 () Bool)

(assert (=> b!3880035 (= e!2400943 0)))

(declare-fun b!3880036 () Bool)

(assert (=> b!3880036 (= e!2400943 (+ 1 (size!30998 (t!315139 (originalCharacters!7014 (_1!23390 (v!39129 lt!1353872)))))))))

(assert (= (and d!1148338 c!674904) b!3880035))

(assert (= (and d!1148338 (not c!674904)) b!3880036))

(declare-fun m!4438587 () Bool)

(assert (=> b!3880036 m!4438587))

(assert (=> b!3879738 d!1148338))

(declare-fun b!3880079 () Bool)

(declare-fun res!1572310 () Bool)

(declare-fun e!2400967 () Bool)

(assert (=> b!3880079 (=> res!1572310 e!2400967)))

(assert (=> b!3880079 (= res!1572310 (not ((_ is IntegerValue!19934) (value!203433 (h!46699 prefixTokens!80)))))))

(declare-fun e!2400965 () Bool)

(assert (=> b!3880079 (= e!2400965 e!2400967)))

(declare-fun b!3880080 () Bool)

(declare-fun inv!17 (TokenValue!6644) Bool)

(assert (=> b!3880080 (= e!2400965 (inv!17 (value!203433 (h!46699 prefixTokens!80))))))

(declare-fun b!3880081 () Bool)

(declare-fun inv!15 (TokenValue!6644) Bool)

(assert (=> b!3880081 (= e!2400967 (inv!15 (value!203433 (h!46699 prefixTokens!80))))))

(declare-fun d!1148340 () Bool)

(declare-fun c!674909 () Bool)

(assert (=> d!1148340 (= c!674909 ((_ is IntegerValue!19932) (value!203433 (h!46699 prefixTokens!80))))))

(declare-fun e!2400966 () Bool)

(assert (=> d!1148340 (= (inv!21 (value!203433 (h!46699 prefixTokens!80))) e!2400966)))

(declare-fun b!3880082 () Bool)

(assert (=> b!3880082 (= e!2400966 e!2400965)))

(declare-fun c!674910 () Bool)

(assert (=> b!3880082 (= c!674910 ((_ is IntegerValue!19933) (value!203433 (h!46699 prefixTokens!80))))))

(declare-fun b!3880083 () Bool)

(declare-fun inv!16 (TokenValue!6644) Bool)

(assert (=> b!3880083 (= e!2400966 (inv!16 (value!203433 (h!46699 prefixTokens!80))))))

(assert (= (and d!1148340 c!674909) b!3880083))

(assert (= (and d!1148340 (not c!674909)) b!3880082))

(assert (= (and b!3880082 c!674910) b!3880080))

(assert (= (and b!3880082 (not c!674910)) b!3880079))

(assert (= (and b!3880079 (not res!1572310)) b!3880081))

(declare-fun m!4438589 () Bool)

(assert (=> b!3880080 m!4438589))

(declare-fun m!4438591 () Bool)

(assert (=> b!3880081 m!4438591))

(declare-fun m!4438593 () Bool)

(assert (=> b!3880083 m!4438593))

(assert (=> b!3879749 d!1148340))

(declare-fun b!3880087 () Bool)

(declare-fun res!1572311 () Bool)

(declare-fun e!2400974 () Bool)

(assert (=> b!3880087 (=> res!1572311 e!2400974)))

(assert (=> b!3880087 (= res!1572311 (not ((_ is IntegerValue!19934) (value!203433 (h!46699 suffixTokens!72)))))))

(declare-fun e!2400972 () Bool)

(assert (=> b!3880087 (= e!2400972 e!2400974)))

(declare-fun b!3880088 () Bool)

(assert (=> b!3880088 (= e!2400972 (inv!17 (value!203433 (h!46699 suffixTokens!72))))))

(declare-fun b!3880089 () Bool)

(assert (=> b!3880089 (= e!2400974 (inv!15 (value!203433 (h!46699 suffixTokens!72))))))

(declare-fun d!1148342 () Bool)

(declare-fun c!674911 () Bool)

(assert (=> d!1148342 (= c!674911 ((_ is IntegerValue!19932) (value!203433 (h!46699 suffixTokens!72))))))

(declare-fun e!2400973 () Bool)

(assert (=> d!1148342 (= (inv!21 (value!203433 (h!46699 suffixTokens!72))) e!2400973)))

(declare-fun b!3880090 () Bool)

(assert (=> b!3880090 (= e!2400973 e!2400972)))

(declare-fun c!674912 () Bool)

(assert (=> b!3880090 (= c!674912 ((_ is IntegerValue!19933) (value!203433 (h!46699 suffixTokens!72))))))

(declare-fun b!3880091 () Bool)

(assert (=> b!3880091 (= e!2400973 (inv!16 (value!203433 (h!46699 suffixTokens!72))))))

(assert (= (and d!1148342 c!674911) b!3880091))

(assert (= (and d!1148342 (not c!674911)) b!3880090))

(assert (= (and b!3880090 c!674912) b!3880088))

(assert (= (and b!3880090 (not c!674912)) b!3880087))

(assert (= (and b!3880087 (not res!1572311)) b!3880089))

(declare-fun m!4438595 () Bool)

(assert (=> b!3880088 m!4438595))

(declare-fun m!4438597 () Bool)

(assert (=> b!3880089 m!4438597))

(declare-fun m!4438599 () Bool)

(assert (=> b!3880091 m!4438599))

(assert (=> b!3879750 d!1148342))

(declare-fun d!1148344 () Bool)

(assert (=> d!1148344 (= (isEmpty!24515 rules!2768) ((_ is Nil!41278) rules!2768))))

(assert (=> b!3879739 d!1148344))

(declare-fun d!1148346 () Bool)

(declare-fun res!1572312 () Bool)

(declare-fun e!2400981 () Bool)

(assert (=> d!1148346 (=> (not res!1572312) (not e!2400981))))

(assert (=> d!1148346 (= res!1572312 (not (isEmpty!24516 (originalCharacters!7014 (h!46699 prefixTokens!80)))))))

(assert (=> d!1148346 (= (inv!55429 (h!46699 prefixTokens!80)) e!2400981)))

(declare-fun b!3880096 () Bool)

(declare-fun res!1572313 () Bool)

(assert (=> b!3880096 (=> (not res!1572313) (not e!2400981))))

(assert (=> b!3880096 (= res!1572313 (= (originalCharacters!7014 (h!46699 prefixTokens!80)) (list!15340 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (value!203433 (h!46699 prefixTokens!80))))))))

(declare-fun b!3880097 () Bool)

(assert (=> b!3880097 (= e!2400981 (= (size!30997 (h!46699 prefixTokens!80)) (size!30998 (originalCharacters!7014 (h!46699 prefixTokens!80)))))))

(assert (= (and d!1148346 res!1572312) b!3880096))

(assert (= (and b!3880096 res!1572313) b!3880097))

(declare-fun b_lambda!113213 () Bool)

(assert (=> (not b_lambda!113213) (not b!3880096)))

(declare-fun tb!225105 () Bool)

(declare-fun t!315208 () Bool)

(assert (=> (and b!3879747 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315208) tb!225105))

(declare-fun b!3880098 () Bool)

(declare-fun e!2400982 () Bool)

(declare-fun tp!1176396 () Bool)

(assert (=> b!3880098 (= e!2400982 (and (inv!55433 (c!674844 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (value!203433 (h!46699 prefixTokens!80))))) tp!1176396))))

(declare-fun result!274194 () Bool)

(assert (=> tb!225105 (= result!274194 (and (inv!55434 (dynLambda!17717 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (value!203433 (h!46699 prefixTokens!80)))) e!2400982))))

(assert (= tb!225105 b!3880098))

(declare-fun m!4438605 () Bool)

(assert (=> b!3880098 m!4438605))

(declare-fun m!4438607 () Bool)

(assert (=> tb!225105 m!4438607))

(assert (=> b!3880096 t!315208))

(declare-fun b_and!291045 () Bool)

(assert (= b_and!291031 (and (=> t!315208 result!274194) b_and!291045)))

(declare-fun t!315212 () Bool)

(declare-fun tb!225109 () Bool)

(assert (=> (and b!3879751 (= (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315212) tb!225109))

(declare-fun result!274198 () Bool)

(assert (= result!274198 result!274194))

(assert (=> b!3880096 t!315212))

(declare-fun b_and!291047 () Bool)

(assert (= b_and!291033 (and (=> t!315212 result!274198) b_and!291047)))

(declare-fun t!315214 () Bool)

(declare-fun tb!225111 () Bool)

(assert (=> (and b!3879753 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315214) tb!225111))

(declare-fun result!274200 () Bool)

(assert (= result!274200 result!274194))

(assert (=> b!3880096 t!315214))

(declare-fun b_and!291049 () Bool)

(assert (= b_and!291035 (and (=> t!315214 result!274200) b_and!291049)))

(declare-fun m!4438611 () Bool)

(assert (=> d!1148346 m!4438611))

(declare-fun m!4438617 () Bool)

(assert (=> b!3880096 m!4438617))

(assert (=> b!3880096 m!4438617))

(declare-fun m!4438621 () Bool)

(assert (=> b!3880096 m!4438621))

(declare-fun m!4438623 () Bool)

(assert (=> b!3880097 m!4438623))

(assert (=> b!3879740 d!1148346))

(declare-fun d!1148348 () Bool)

(assert (=> d!1148348 (= (inv!55426 (tag!7274 (rule!9312 (h!46699 suffixTokens!72)))) (= (mod (str.len (value!203432 (tag!7274 (rule!9312 (h!46699 suffixTokens!72))))) 2) 0))))

(assert (=> b!3879752 d!1148348))

(declare-fun d!1148350 () Bool)

(declare-fun res!1572314 () Bool)

(declare-fun e!2400985 () Bool)

(assert (=> d!1148350 (=> (not res!1572314) (not e!2400985))))

(assert (=> d!1148350 (= res!1572314 (semiInverseModEq!2746 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toValue!8842 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))))))

(assert (=> d!1148350 (= (inv!55430 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) e!2400985)))

(declare-fun b!3880101 () Bool)

(assert (=> b!3880101 (= e!2400985 (equivClasses!2645 (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toValue!8842 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))))))

(assert (= (and d!1148350 res!1572314) b!3880101))

(declare-fun m!4438625 () Bool)

(assert (=> d!1148350 m!4438625))

(declare-fun m!4438627 () Bool)

(assert (=> b!3880101 m!4438627))

(assert (=> b!3879752 d!1148350))

(declare-fun b!3880120 () Bool)

(declare-fun res!1572335 () Bool)

(declare-fun e!2400993 () Bool)

(assert (=> b!3880120 (=> (not res!1572335) (not e!2400993))))

(declare-fun lt!1353998 () Option!8832)

(declare-fun matchR!5424 (Regex!11319 List!41400) Bool)

(declare-fun get!13657 (Option!8832) tuple2!40512)

(assert (=> b!3880120 (= res!1572335 (matchR!5424 (regex!6414 (rule!9312 (_1!23390 (get!13657 lt!1353998)))) (list!15340 (charsOf!4238 (_1!23390 (get!13657 lt!1353998))))))))

(declare-fun b!3880121 () Bool)

(declare-fun res!1572330 () Bool)

(assert (=> b!3880121 (=> (not res!1572330) (not e!2400993))))

(assert (=> b!3880121 (= res!1572330 (= (++!10586 (list!15340 (charsOf!4238 (_1!23390 (get!13657 lt!1353998)))) (_2!23390 (get!13657 lt!1353998))) lt!1353881))))

(declare-fun b!3880122 () Bool)

(declare-fun e!2400992 () Option!8832)

(declare-fun lt!1354001 () Option!8832)

(declare-fun lt!1354000 () Option!8832)

(assert (=> b!3880122 (= e!2400992 (ite (and ((_ is None!8831) lt!1354001) ((_ is None!8831) lt!1354000)) None!8831 (ite ((_ is None!8831) lt!1354000) lt!1354001 (ite ((_ is None!8831) lt!1354001) lt!1354000 (ite (>= (size!30997 (_1!23390 (v!39129 lt!1354001))) (size!30997 (_1!23390 (v!39129 lt!1354000)))) lt!1354001 lt!1354000)))))))

(declare-fun call!282860 () Option!8832)

(assert (=> b!3880122 (= lt!1354001 call!282860)))

(assert (=> b!3880122 (= lt!1354000 (maxPrefix!3307 thiss!20629 (t!315141 rules!2768) lt!1353881))))

(declare-fun b!3880123 () Bool)

(declare-fun res!1572333 () Bool)

(assert (=> b!3880123 (=> (not res!1572333) (not e!2400993))))

(assert (=> b!3880123 (= res!1572333 (= (list!15340 (charsOf!4238 (_1!23390 (get!13657 lt!1353998)))) (originalCharacters!7014 (_1!23390 (get!13657 lt!1353998)))))))

(declare-fun b!3880124 () Bool)

(declare-fun res!1572331 () Bool)

(assert (=> b!3880124 (=> (not res!1572331) (not e!2400993))))

(assert (=> b!3880124 (= res!1572331 (= (value!203433 (_1!23390 (get!13657 lt!1353998))) (apply!9653 (transformation!6414 (rule!9312 (_1!23390 (get!13657 lt!1353998)))) (seqFromList!4681 (originalCharacters!7014 (_1!23390 (get!13657 lt!1353998)))))))))

(declare-fun d!1148352 () Bool)

(declare-fun e!2400994 () Bool)

(assert (=> d!1148352 e!2400994))

(declare-fun res!1572332 () Bool)

(assert (=> d!1148352 (=> res!1572332 e!2400994)))

(declare-fun isEmpty!24518 (Option!8832) Bool)

(assert (=> d!1148352 (= res!1572332 (isEmpty!24518 lt!1353998))))

(assert (=> d!1148352 (= lt!1353998 e!2400992)))

(declare-fun c!674915 () Bool)

(assert (=> d!1148352 (= c!674915 (and ((_ is Cons!41278) rules!2768) ((_ is Nil!41278) (t!315141 rules!2768))))))

(declare-fun lt!1353999 () Unit!59348)

(declare-fun lt!1353997 () Unit!59348)

(assert (=> d!1148352 (= lt!1353999 lt!1353997)))

(assert (=> d!1148352 (isPrefix!3509 lt!1353881 lt!1353881)))

(declare-fun lemmaIsPrefixRefl!2218 (List!41400 List!41400) Unit!59348)

(assert (=> d!1148352 (= lt!1353997 (lemmaIsPrefixRefl!2218 lt!1353881 lt!1353881))))

(declare-fun rulesValidInductive!2296 (LexerInterface!6003 List!41402) Bool)

(assert (=> d!1148352 (rulesValidInductive!2296 thiss!20629 rules!2768)))

(assert (=> d!1148352 (= (maxPrefix!3307 thiss!20629 rules!2768 lt!1353881) lt!1353998)))

(declare-fun b!3880125 () Bool)

(assert (=> b!3880125 (= e!2400992 call!282860)))

(declare-fun b!3880126 () Bool)

(declare-fun res!1572329 () Bool)

(assert (=> b!3880126 (=> (not res!1572329) (not e!2400993))))

(assert (=> b!3880126 (= res!1572329 (< (size!30998 (_2!23390 (get!13657 lt!1353998))) (size!30998 lt!1353881)))))

(declare-fun bm!282855 () Bool)

(declare-fun maxPrefixOneRule!2385 (LexerInterface!6003 Rule!12628 List!41400) Option!8832)

(assert (=> bm!282855 (= call!282860 (maxPrefixOneRule!2385 thiss!20629 (h!46698 rules!2768) lt!1353881))))

(declare-fun b!3880127 () Bool)

(assert (=> b!3880127 (= e!2400993 (contains!8299 rules!2768 (rule!9312 (_1!23390 (get!13657 lt!1353998)))))))

(declare-fun b!3880128 () Bool)

(assert (=> b!3880128 (= e!2400994 e!2400993)))

(declare-fun res!1572334 () Bool)

(assert (=> b!3880128 (=> (not res!1572334) (not e!2400993))))

(declare-fun isDefined!6895 (Option!8832) Bool)

(assert (=> b!3880128 (= res!1572334 (isDefined!6895 lt!1353998))))

(assert (= (and d!1148352 c!674915) b!3880125))

(assert (= (and d!1148352 (not c!674915)) b!3880122))

(assert (= (or b!3880125 b!3880122) bm!282855))

(assert (= (and d!1148352 (not res!1572332)) b!3880128))

(assert (= (and b!3880128 res!1572334) b!3880123))

(assert (= (and b!3880123 res!1572333) b!3880126))

(assert (= (and b!3880126 res!1572329) b!3880121))

(assert (= (and b!3880121 res!1572330) b!3880124))

(assert (= (and b!3880124 res!1572331) b!3880120))

(assert (= (and b!3880120 res!1572335) b!3880127))

(declare-fun m!4438629 () Bool)

(assert (=> b!3880124 m!4438629))

(declare-fun m!4438631 () Bool)

(assert (=> b!3880124 m!4438631))

(assert (=> b!3880124 m!4438631))

(declare-fun m!4438633 () Bool)

(assert (=> b!3880124 m!4438633))

(declare-fun m!4438635 () Bool)

(assert (=> b!3880128 m!4438635))

(declare-fun m!4438637 () Bool)

(assert (=> bm!282855 m!4438637))

(assert (=> b!3880126 m!4438629))

(declare-fun m!4438639 () Bool)

(assert (=> b!3880126 m!4438639))

(assert (=> b!3880126 m!4438297))

(assert (=> b!3880120 m!4438629))

(declare-fun m!4438641 () Bool)

(assert (=> b!3880120 m!4438641))

(assert (=> b!3880120 m!4438641))

(declare-fun m!4438643 () Bool)

(assert (=> b!3880120 m!4438643))

(assert (=> b!3880120 m!4438643))

(declare-fun m!4438645 () Bool)

(assert (=> b!3880120 m!4438645))

(assert (=> b!3880121 m!4438629))

(assert (=> b!3880121 m!4438641))

(assert (=> b!3880121 m!4438641))

(assert (=> b!3880121 m!4438643))

(assert (=> b!3880121 m!4438643))

(declare-fun m!4438647 () Bool)

(assert (=> b!3880121 m!4438647))

(assert (=> b!3880127 m!4438629))

(declare-fun m!4438649 () Bool)

(assert (=> b!3880127 m!4438649))

(assert (=> b!3880123 m!4438629))

(assert (=> b!3880123 m!4438641))

(assert (=> b!3880123 m!4438641))

(assert (=> b!3880123 m!4438643))

(declare-fun m!4438651 () Bool)

(assert (=> d!1148352 m!4438651))

(declare-fun m!4438653 () Bool)

(assert (=> d!1148352 m!4438653))

(declare-fun m!4438655 () Bool)

(assert (=> d!1148352 m!4438655))

(declare-fun m!4438657 () Bool)

(assert (=> d!1148352 m!4438657))

(declare-fun m!4438659 () Bool)

(assert (=> b!3880122 m!4438659))

(assert (=> b!3879741 d!1148352))

(declare-fun b!3880140 () Bool)

(declare-fun e!2400997 () Bool)

(declare-fun tp!1176410 () Bool)

(declare-fun tp!1176413 () Bool)

(assert (=> b!3880140 (= e!2400997 (and tp!1176410 tp!1176413))))

(declare-fun b!3880141 () Bool)

(declare-fun tp!1176411 () Bool)

(assert (=> b!3880141 (= e!2400997 tp!1176411)))

(assert (=> b!3879742 (= tp!1176310 e!2400997)))

(declare-fun b!3880139 () Bool)

(assert (=> b!3880139 (= e!2400997 tp_is_empty!19609)))

(declare-fun b!3880142 () Bool)

(declare-fun tp!1176412 () Bool)

(declare-fun tp!1176409 () Bool)

(assert (=> b!3880142 (= e!2400997 (and tp!1176412 tp!1176409))))

(assert (= (and b!3879742 ((_ is ElementMatch!11319) (regex!6414 (rule!9312 (h!46699 prefixTokens!80))))) b!3880139))

(assert (= (and b!3879742 ((_ is Concat!17964) (regex!6414 (rule!9312 (h!46699 prefixTokens!80))))) b!3880140))

(assert (= (and b!3879742 ((_ is Star!11319) (regex!6414 (rule!9312 (h!46699 prefixTokens!80))))) b!3880141))

(assert (= (and b!3879742 ((_ is Union!11319) (regex!6414 (rule!9312 (h!46699 prefixTokens!80))))) b!3880142))

(declare-fun b!3880153 () Bool)

(declare-fun b_free!105109 () Bool)

(declare-fun b_next!105813 () Bool)

(assert (=> b!3880153 (= b_free!105109 (not b_next!105813))))

(declare-fun t!315216 () Bool)

(declare-fun tb!225113 () Bool)

(assert (=> (and b!3880153 (= (toValue!8842 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315216) tb!225113))

(declare-fun result!274206 () Bool)

(assert (= result!274206 result!274150))

(assert (=> d!1148308 t!315216))

(declare-fun b_and!291051 () Bool)

(declare-fun tp!1176424 () Bool)

(assert (=> b!3880153 (= tp!1176424 (and (=> t!315216 result!274206) b_and!291051))))

(declare-fun b_free!105111 () Bool)

(declare-fun b_next!105815 () Bool)

(assert (=> b!3880153 (= b_free!105111 (not b_next!105815))))

(declare-fun t!315218 () Bool)

(declare-fun tb!225115 () Bool)

(assert (=> (and b!3880153 (= (toChars!8701 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315218) tb!225115))

(declare-fun result!274208 () Bool)

(assert (= result!274208 result!274142))

(assert (=> d!1148304 t!315218))

(declare-fun t!315220 () Bool)

(declare-fun tb!225117 () Bool)

(assert (=> (and b!3880153 (= (toChars!8701 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315220) tb!225117))

(declare-fun result!274210 () Bool)

(assert (= result!274210 result!274164))

(assert (=> b!3880032 t!315220))

(declare-fun t!315222 () Bool)

(declare-fun tb!225119 () Bool)

(assert (=> (and b!3880153 (= (toChars!8701 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315222) tb!225119))

(declare-fun result!274212 () Bool)

(assert (= result!274212 result!274194))

(assert (=> b!3880096 t!315222))

(declare-fun b_and!291053 () Bool)

(declare-fun tp!1176423 () Bool)

(assert (=> b!3880153 (= tp!1176423 (and (=> t!315218 result!274208) (=> t!315220 result!274210) (=> t!315222 result!274212) b_and!291053))))

(declare-fun e!2401009 () Bool)

(assert (=> b!3880153 (= e!2401009 (and tp!1176424 tp!1176423))))

(declare-fun b!3880152 () Bool)

(declare-fun tp!1176425 () Bool)

(declare-fun e!2401006 () Bool)

(assert (=> b!3880152 (= e!2401006 (and tp!1176425 (inv!55426 (tag!7274 (h!46698 (t!315141 rules!2768)))) (inv!55430 (transformation!6414 (h!46698 (t!315141 rules!2768)))) e!2401009))))

(declare-fun b!3880151 () Bool)

(declare-fun e!2401007 () Bool)

(declare-fun tp!1176422 () Bool)

(assert (=> b!3880151 (= e!2401007 (and e!2401006 tp!1176422))))

(assert (=> b!3879732 (= tp!1176312 e!2401007)))

(assert (= b!3880152 b!3880153))

(assert (= b!3880151 b!3880152))

(assert (= (and b!3879732 ((_ is Cons!41278) (t!315141 rules!2768))) b!3880151))

(declare-fun m!4438661 () Bool)

(assert (=> b!3880152 m!4438661))

(declare-fun m!4438663 () Bool)

(assert (=> b!3880152 m!4438663))

(declare-fun b!3880158 () Bool)

(declare-fun e!2401012 () Bool)

(declare-fun tp!1176428 () Bool)

(assert (=> b!3880158 (= e!2401012 (and tp_is_empty!19609 tp!1176428))))

(assert (=> b!3879743 (= tp!1176324 e!2401012)))

(assert (= (and b!3879743 ((_ is Cons!41276) (t!315139 suffixResult!91))) b!3880158))

(declare-fun b!3880159 () Bool)

(declare-fun e!2401013 () Bool)

(declare-fun tp!1176429 () Bool)

(assert (=> b!3880159 (= e!2401013 (and tp_is_empty!19609 tp!1176429))))

(assert (=> b!3879733 (= tp!1176321 e!2401013)))

(assert (= (and b!3879733 ((_ is Cons!41276) (t!315139 suffix!1176))) b!3880159))

(declare-fun b!3880161 () Bool)

(declare-fun e!2401014 () Bool)

(declare-fun tp!1176431 () Bool)

(declare-fun tp!1176434 () Bool)

(assert (=> b!3880161 (= e!2401014 (and tp!1176431 tp!1176434))))

(declare-fun b!3880162 () Bool)

(declare-fun tp!1176432 () Bool)

(assert (=> b!3880162 (= e!2401014 tp!1176432)))

(assert (=> b!3879745 (= tp!1176318 e!2401014)))

(declare-fun b!3880160 () Bool)

(assert (=> b!3880160 (= e!2401014 tp_is_empty!19609)))

(declare-fun b!3880163 () Bool)

(declare-fun tp!1176433 () Bool)

(declare-fun tp!1176430 () Bool)

(assert (=> b!3880163 (= e!2401014 (and tp!1176433 tp!1176430))))

(assert (= (and b!3879745 ((_ is ElementMatch!11319) (regex!6414 (h!46698 rules!2768)))) b!3880160))

(assert (= (and b!3879745 ((_ is Concat!17964) (regex!6414 (h!46698 rules!2768)))) b!3880161))

(assert (= (and b!3879745 ((_ is Star!11319) (regex!6414 (h!46698 rules!2768)))) b!3880162))

(assert (= (and b!3879745 ((_ is Union!11319) (regex!6414 (h!46698 rules!2768)))) b!3880163))

(declare-fun b!3880164 () Bool)

(declare-fun e!2401015 () Bool)

(declare-fun tp!1176435 () Bool)

(assert (=> b!3880164 (= e!2401015 (and tp_is_empty!19609 tp!1176435))))

(assert (=> b!3879735 (= tp!1176316 e!2401015)))

(assert (= (and b!3879735 ((_ is Cons!41276) (t!315139 prefix!426))) b!3880164))

(declare-fun b!3880178 () Bool)

(declare-fun b_free!105113 () Bool)

(declare-fun b_next!105817 () Bool)

(assert (=> b!3880178 (= b_free!105113 (not b_next!105817))))

(declare-fun tb!225121 () Bool)

(declare-fun t!315224 () Bool)

(assert (=> (and b!3880178 (= (toValue!8842 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315224) tb!225121))

(declare-fun result!274218 () Bool)

(assert (= result!274218 result!274150))

(assert (=> d!1148308 t!315224))

(declare-fun tp!1176447 () Bool)

(declare-fun b_and!291055 () Bool)

(assert (=> b!3880178 (= tp!1176447 (and (=> t!315224 result!274218) b_and!291055))))

(declare-fun b_free!105115 () Bool)

(declare-fun b_next!105819 () Bool)

(assert (=> b!3880178 (= b_free!105115 (not b_next!105819))))

(declare-fun tb!225123 () Bool)

(declare-fun t!315226 () Bool)

(assert (=> (and b!3880178 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315226) tb!225123))

(declare-fun result!274220 () Bool)

(assert (= result!274220 result!274142))

(assert (=> d!1148304 t!315226))

(declare-fun t!315228 () Bool)

(declare-fun tb!225125 () Bool)

(assert (=> (and b!3880178 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315228) tb!225125))

(declare-fun result!274222 () Bool)

(assert (= result!274222 result!274164))

(assert (=> b!3880032 t!315228))

(declare-fun t!315230 () Bool)

(declare-fun tb!225127 () Bool)

(assert (=> (and b!3880178 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315230) tb!225127))

(declare-fun result!274224 () Bool)

(assert (= result!274224 result!274194))

(assert (=> b!3880096 t!315230))

(declare-fun b_and!291057 () Bool)

(declare-fun tp!1176446 () Bool)

(assert (=> b!3880178 (= tp!1176446 (and (=> t!315226 result!274220) (=> t!315228 result!274222) (=> t!315230 result!274224) b_and!291057))))

(declare-fun e!2401029 () Bool)

(assert (=> b!3879737 (= tp!1176323 e!2401029)))

(declare-fun tp!1176448 () Bool)

(declare-fun e!2401033 () Bool)

(declare-fun b!3880177 () Bool)

(declare-fun e!2401028 () Bool)

(assert (=> b!3880177 (= e!2401033 (and tp!1176448 (inv!55426 (tag!7274 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (inv!55430 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) e!2401028))))

(declare-fun e!2401031 () Bool)

(declare-fun b!3880176 () Bool)

(declare-fun tp!1176450 () Bool)

(assert (=> b!3880176 (= e!2401031 (and (inv!21 (value!203433 (h!46699 (t!315142 suffixTokens!72)))) e!2401033 tp!1176450))))

(declare-fun b!3880175 () Bool)

(declare-fun tp!1176449 () Bool)

(assert (=> b!3880175 (= e!2401029 (and (inv!55429 (h!46699 (t!315142 suffixTokens!72))) e!2401031 tp!1176449))))

(assert (=> b!3880178 (= e!2401028 (and tp!1176447 tp!1176446))))

(assert (= b!3880177 b!3880178))

(assert (= b!3880176 b!3880177))

(assert (= b!3880175 b!3880176))

(assert (= (and b!3879737 ((_ is Cons!41279) (t!315142 suffixTokens!72))) b!3880175))

(declare-fun m!4438665 () Bool)

(assert (=> b!3880177 m!4438665))

(declare-fun m!4438667 () Bool)

(assert (=> b!3880177 m!4438667))

(declare-fun m!4438669 () Bool)

(assert (=> b!3880176 m!4438669))

(declare-fun m!4438671 () Bool)

(assert (=> b!3880175 m!4438671))

(declare-fun b!3880179 () Bool)

(declare-fun e!2401034 () Bool)

(declare-fun tp!1176451 () Bool)

(assert (=> b!3880179 (= e!2401034 (and tp_is_empty!19609 tp!1176451))))

(assert (=> b!3879749 (= tp!1176320 e!2401034)))

(assert (= (and b!3879749 ((_ is Cons!41276) (originalCharacters!7014 (h!46699 prefixTokens!80)))) b!3880179))

(declare-fun b!3880180 () Bool)

(declare-fun e!2401035 () Bool)

(declare-fun tp!1176452 () Bool)

(assert (=> b!3880180 (= e!2401035 (and tp_is_empty!19609 tp!1176452))))

(assert (=> b!3879750 (= tp!1176317 e!2401035)))

(assert (= (and b!3879750 ((_ is Cons!41276) (originalCharacters!7014 (h!46699 suffixTokens!72)))) b!3880180))

(declare-fun b!3880184 () Bool)

(declare-fun b_free!105117 () Bool)

(declare-fun b_next!105821 () Bool)

(assert (=> b!3880184 (= b_free!105117 (not b_next!105821))))

(declare-fun tb!225129 () Bool)

(declare-fun t!315232 () Bool)

(assert (=> (and b!3880184 (= (toValue!8842 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toValue!8842 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315232) tb!225129))

(declare-fun result!274226 () Bool)

(assert (= result!274226 result!274150))

(assert (=> d!1148308 t!315232))

(declare-fun tp!1176454 () Bool)

(declare-fun b_and!291059 () Bool)

(assert (=> b!3880184 (= tp!1176454 (and (=> t!315232 result!274226) b_and!291059))))

(declare-fun b_free!105119 () Bool)

(declare-fun b_next!105823 () Bool)

(assert (=> b!3880184 (= b_free!105119 (not b_next!105823))))

(declare-fun tb!225131 () Bool)

(declare-fun t!315234 () Bool)

(assert (=> (and b!3880184 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toChars!8701 (transformation!6414 (rule!9312 (_1!23390 (v!39129 lt!1353872)))))) t!315234) tb!225131))

(declare-fun result!274228 () Bool)

(assert (= result!274228 result!274142))

(assert (=> d!1148304 t!315234))

(declare-fun t!315236 () Bool)

(declare-fun tb!225133 () Bool)

(assert (=> (and b!3880184 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72))))) t!315236) tb!225133))

(declare-fun result!274230 () Bool)

(assert (= result!274230 result!274164))

(assert (=> b!3880032 t!315236))

(declare-fun t!315238 () Bool)

(declare-fun tb!225135 () Bool)

(assert (=> (and b!3880184 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80))))) t!315238) tb!225135))

(declare-fun result!274232 () Bool)

(assert (= result!274232 result!274194))

(assert (=> b!3880096 t!315238))

(declare-fun tp!1176453 () Bool)

(declare-fun b_and!291061 () Bool)

(assert (=> b!3880184 (= tp!1176453 (and (=> t!315234 result!274228) (=> t!315236 result!274230) (=> t!315238 result!274232) b_and!291061))))

(declare-fun e!2401037 () Bool)

(assert (=> b!3879740 (= tp!1176319 e!2401037)))

(declare-fun b!3880183 () Bool)

(declare-fun e!2401041 () Bool)

(declare-fun e!2401036 () Bool)

(declare-fun tp!1176455 () Bool)

(assert (=> b!3880183 (= e!2401041 (and tp!1176455 (inv!55426 (tag!7274 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (inv!55430 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) e!2401036))))

(declare-fun b!3880182 () Bool)

(declare-fun e!2401039 () Bool)

(declare-fun tp!1176457 () Bool)

(assert (=> b!3880182 (= e!2401039 (and (inv!21 (value!203433 (h!46699 (t!315142 prefixTokens!80)))) e!2401041 tp!1176457))))

(declare-fun tp!1176456 () Bool)

(declare-fun b!3880181 () Bool)

(assert (=> b!3880181 (= e!2401037 (and (inv!55429 (h!46699 (t!315142 prefixTokens!80))) e!2401039 tp!1176456))))

(assert (=> b!3880184 (= e!2401036 (and tp!1176454 tp!1176453))))

(assert (= b!3880183 b!3880184))

(assert (= b!3880182 b!3880183))

(assert (= b!3880181 b!3880182))

(assert (= (and b!3879740 ((_ is Cons!41279) (t!315142 prefixTokens!80))) b!3880181))

(declare-fun m!4438673 () Bool)

(assert (=> b!3880183 m!4438673))

(declare-fun m!4438675 () Bool)

(assert (=> b!3880183 m!4438675))

(declare-fun m!4438677 () Bool)

(assert (=> b!3880182 m!4438677))

(declare-fun m!4438679 () Bool)

(assert (=> b!3880181 m!4438679))

(declare-fun b!3880186 () Bool)

(declare-fun e!2401042 () Bool)

(declare-fun tp!1176459 () Bool)

(declare-fun tp!1176462 () Bool)

(assert (=> b!3880186 (= e!2401042 (and tp!1176459 tp!1176462))))

(declare-fun b!3880187 () Bool)

(declare-fun tp!1176460 () Bool)

(assert (=> b!3880187 (= e!2401042 tp!1176460)))

(assert (=> b!3879752 (= tp!1176313 e!2401042)))

(declare-fun b!3880185 () Bool)

(assert (=> b!3880185 (= e!2401042 tp_is_empty!19609)))

(declare-fun b!3880188 () Bool)

(declare-fun tp!1176461 () Bool)

(declare-fun tp!1176458 () Bool)

(assert (=> b!3880188 (= e!2401042 (and tp!1176461 tp!1176458))))

(assert (= (and b!3879752 ((_ is ElementMatch!11319) (regex!6414 (rule!9312 (h!46699 suffixTokens!72))))) b!3880185))

(assert (= (and b!3879752 ((_ is Concat!17964) (regex!6414 (rule!9312 (h!46699 suffixTokens!72))))) b!3880186))

(assert (= (and b!3879752 ((_ is Star!11319) (regex!6414 (rule!9312 (h!46699 suffixTokens!72))))) b!3880187))

(assert (= (and b!3879752 ((_ is Union!11319) (regex!6414 (rule!9312 (h!46699 suffixTokens!72))))) b!3880188))

(declare-fun b_lambda!113219 () Bool)

(assert (= b_lambda!113211 (or (and b!3879751 b_free!105091 (= (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))))) (and b!3879747 b_free!105087) (and b!3880178 b_free!105115 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))))) (and b!3879753 b_free!105095 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))))) (and b!3880184 b_free!105119 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))))) (and b!3880153 b_free!105111 (= (toChars!8701 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))))) b_lambda!113219)))

(declare-fun b_lambda!113221 () Bool)

(assert (= b_lambda!113213 (or (and b!3879751 b_free!105091 (= (toChars!8701 (transformation!6414 (h!46698 rules!2768))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))))) (and b!3879747 b_free!105087 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 suffixTokens!72)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))))) (and b!3879753 b_free!105095) (and b!3880178 b_free!105115 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 suffixTokens!72))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))))) (and b!3880184 b_free!105119 (= (toChars!8701 (transformation!6414 (rule!9312 (h!46699 (t!315142 prefixTokens!80))))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))))) (and b!3880153 b_free!105111 (= (toChars!8701 (transformation!6414 (h!46698 (t!315141 rules!2768)))) (toChars!8701 (transformation!6414 (rule!9312 (h!46699 prefixTokens!80)))))) b_lambda!113221)))

(check-sat (not d!1148314) (not b!3879766) (not b!3879825) (not b!3880187) b_and!291051 (not b!3879953) tp_is_empty!19609 (not b_lambda!113209) (not d!1148262) (not d!1148350) (not d!1148228) (not tb!225105) (not b!3879886) (not b!3880080) (not d!1148336) (not b!3880081) (not b!3880182) b_and!291049 (not b!3879888) (not b!3880188) (not b!3880098) (not b_next!105823) (not b!3880177) (not d!1148346) (not b!3880181) (not b_lambda!113207) (not b!3880013) (not d!1148254) (not b!3880127) (not d!1148304) (not b_next!105797) (not tb!225065) (not b!3880032) (not b!3879856) (not b_lambda!113221) (not b!3880152) (not b!3880101) b_and!291025 b_and!291023 (not d!1148312) (not b_next!105791) (not b!3879970) (not b!3880180) (not b!3879925) b_and!291021 (not b!3880123) (not b!3880142) b_and!291053 (not b_next!105817) b_and!291047 (not b!3880176) (not b!3880122) (not bm!282855) (not b!3879885) (not d!1148290) (not tb!225079) (not b_next!105789) (not b!3879974) (not tb!225071) (not d!1148352) (not b!3879968) (not b!3879999) (not b!3880179) b_and!291045 (not b!3880034) (not b!3879918) (not b!3880161) (not b!3880158) (not b!3880159) (not b!3880096) (not b_lambda!113219) (not b!3880091) (not d!1148318) (not b!3879930) (not b!3880089) (not d!1148306) (not d!1148322) (not b!3880175) (not d!1148316) (not b!3879917) (not b!3880033) (not b!3880036) (not b!3880124) (not d!1148292) (not b!3880083) (not d!1148220) (not b!3880162) (not b_next!105819) (not b!3880009) b_and!291061 (not b!3880088) (not b!3880126) (not b!3880163) (not b!3880010) (not b!3880151) (not b_next!105821) (not b!3879855) (not b!3880121) (not b!3879826) (not d!1148334) (not b_next!105815) (not b!3880141) (not d!1148324) (not b_next!105813) (not b!3880164) (not d!1148310) (not b!3879952) (not b!3879971) (not b!3880186) (not b!3880183) (not b!3879763) b_and!291059 (not d!1148232) (not b!3880120) b_and!291055 (not b!3880128) b_and!291057 (not d!1148330) (not b!3880140) (not b!3879829) (not b!3879919) (not b!3880097) (not b_next!105799) (not b_next!105793) (not b_next!105795))
(check-sat b_and!291051 (not b_next!105797) (not b_next!105791) b_and!291021 (not b_next!105789) b_and!291045 (not b_next!105813) b_and!291057 b_and!291049 (not b_next!105823) b_and!291025 b_and!291023 b_and!291053 (not b_next!105817) b_and!291047 (not b_next!105819) b_and!291061 (not b_next!105821) (not b_next!105815) b_and!291059 b_and!291055 (not b_next!105799) (not b_next!105793) (not b_next!105795))
