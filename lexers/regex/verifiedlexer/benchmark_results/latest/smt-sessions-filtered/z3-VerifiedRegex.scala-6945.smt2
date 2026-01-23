; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367636 () Bool)

(assert start!367636)

(declare-fun b!3920987 () Bool)

(declare-fun b_free!106637 () Bool)

(declare-fun b_next!107341 () Bool)

(assert (=> b!3920987 (= b_free!106637 (not b_next!107341))))

(declare-fun tp!1193515 () Bool)

(declare-fun b_and!298847 () Bool)

(assert (=> b!3920987 (= tp!1193515 b_and!298847)))

(declare-fun b_free!106639 () Bool)

(declare-fun b_next!107343 () Bool)

(assert (=> b!3920987 (= b_free!106639 (not b_next!107343))))

(declare-fun tp!1193520 () Bool)

(declare-fun b_and!298849 () Bool)

(assert (=> b!3920987 (= tp!1193520 b_and!298849)))

(declare-fun b!3920980 () Bool)

(declare-fun b_free!106641 () Bool)

(declare-fun b_next!107345 () Bool)

(assert (=> b!3920980 (= b_free!106641 (not b_next!107345))))

(declare-fun tp!1193510 () Bool)

(declare-fun b_and!298851 () Bool)

(assert (=> b!3920980 (= tp!1193510 b_and!298851)))

(declare-fun b_free!106643 () Bool)

(declare-fun b_next!107347 () Bool)

(assert (=> b!3920980 (= b_free!106643 (not b_next!107347))))

(declare-fun tp!1193525 () Bool)

(declare-fun b_and!298853 () Bool)

(assert (=> b!3920980 (= tp!1193525 b_and!298853)))

(declare-fun b!3920994 () Bool)

(declare-fun b_free!106645 () Bool)

(declare-fun b_next!107349 () Bool)

(assert (=> b!3920994 (= b_free!106645 (not b_next!107349))))

(declare-fun tp!1193523 () Bool)

(declare-fun b_and!298855 () Bool)

(assert (=> b!3920994 (= tp!1193523 b_and!298855)))

(declare-fun b_free!106647 () Bool)

(declare-fun b_next!107351 () Bool)

(assert (=> b!3920994 (= b_free!106647 (not b_next!107351))))

(declare-fun tp!1193512 () Bool)

(declare-fun b_and!298857 () Bool)

(assert (=> b!3920994 (= tp!1193512 b_and!298857)))

(declare-fun tp!1193518 () Bool)

(declare-datatypes ((List!41695 0))(
  ( (Nil!41571) (Cons!41571 (h!46991 (_ BitVec 16)) (t!324542 List!41695)) )
))
(declare-datatypes ((TokenValue!6708 0))(
  ( (FloatLiteralValue!13416 (text!47401 List!41695)) (TokenValueExt!6707 (__x!25633 Int)) (Broken!33540 (value!205231 List!41695)) (Object!6831) (End!6708) (Def!6708) (Underscore!6708) (Match!6708) (Else!6708) (Error!6708) (Case!6708) (If!6708) (Extends!6708) (Abstract!6708) (Class!6708) (Val!6708) (DelimiterValue!13416 (del!6768 List!41695)) (KeywordValue!6714 (value!205232 List!41695)) (CommentValue!13416 (value!205233 List!41695)) (WhitespaceValue!13416 (value!205234 List!41695)) (IndentationValue!6708 (value!205235 List!41695)) (String!47257) (Int32!6708) (Broken!33541 (value!205236 List!41695)) (Boolean!6709) (Unit!59735) (OperatorValue!6711 (op!6768 List!41695)) (IdentifierValue!13416 (value!205237 List!41695)) (IdentifierValue!13417 (value!205238 List!41695)) (WhitespaceValue!13417 (value!205239 List!41695)) (True!13416) (False!13416) (Broken!33542 (value!205240 List!41695)) (Broken!33543 (value!205241 List!41695)) (True!13417) (RightBrace!6708) (RightBracket!6708) (Colon!6708) (Null!6708) (Comma!6708) (LeftBracket!6708) (False!13417) (LeftBrace!6708) (ImaginaryLiteralValue!6708 (text!47402 List!41695)) (StringLiteralValue!20124 (value!205242 List!41695)) (EOFValue!6708 (value!205243 List!41695)) (IdentValue!6708 (value!205244 List!41695)) (DelimiterValue!13417 (value!205245 List!41695)) (DedentValue!6708 (value!205246 List!41695)) (NewLineValue!6708 (value!205247 List!41695)) (IntegerValue!20124 (value!205248 (_ BitVec 32)) (text!47403 List!41695)) (IntegerValue!20125 (value!205249 Int) (text!47404 List!41695)) (Times!6708) (Or!6708) (Equal!6708) (Minus!6708) (Broken!33544 (value!205250 List!41695)) (And!6708) (Div!6708) (LessEqual!6708) (Mod!6708) (Concat!18091) (Not!6708) (Plus!6708) (SpaceValue!6708 (value!205251 List!41695)) (IntegerValue!20126 (value!205252 Int) (text!47405 List!41695)) (StringLiteralValue!20125 (text!47406 List!41695)) (FloatLiteralValue!13417 (text!47407 List!41695)) (BytesLiteralValue!6708 (value!205253 List!41695)) (CommentValue!13417 (value!205254 List!41695)) (StringLiteralValue!20126 (value!205255 List!41695)) (ErrorTokenValue!6708 (msg!6769 List!41695)) )
))
(declare-datatypes ((C!22952 0))(
  ( (C!22953 (val!13570 Int)) )
))
(declare-datatypes ((Regex!11383 0))(
  ( (ElementMatch!11383 (c!681408 C!22952)) (Concat!18092 (regOne!23278 Regex!11383) (regTwo!23278 Regex!11383)) (EmptyExpr!11383) (Star!11383 (reg!11712 Regex!11383)) (EmptyLang!11383) (Union!11383 (regOne!23279 Regex!11383) (regTwo!23279 Regex!11383)) )
))
(declare-datatypes ((String!47258 0))(
  ( (String!47259 (value!205256 String)) )
))
(declare-datatypes ((List!41696 0))(
  ( (Nil!41572) (Cons!41572 (h!46992 C!22952) (t!324543 List!41696)) )
))
(declare-datatypes ((IArray!25383 0))(
  ( (IArray!25384 (innerList!12749 List!41696)) )
))
(declare-datatypes ((Conc!12689 0))(
  ( (Node!12689 (left!31778 Conc!12689) (right!32108 Conc!12689) (csize!25608 Int) (cheight!12900 Int)) (Leaf!19635 (xs!15995 IArray!25383) (csize!25609 Int)) (Empty!12689) )
))
(declare-datatypes ((BalanceConc!24972 0))(
  ( (BalanceConc!24973 (c!681409 Conc!12689)) )
))
(declare-datatypes ((TokenValueInjection!12844 0))(
  ( (TokenValueInjection!12845 (toValue!8930 Int) (toChars!8789 Int)) )
))
(declare-datatypes ((Rule!12756 0))(
  ( (Rule!12757 (regex!6478 Regex!11383) (tag!7338 String!47258) (isSeparator!6478 Bool) (transformation!6478 TokenValueInjection!12844)) )
))
(declare-datatypes ((Token!12094 0))(
  ( (Token!12095 (value!205257 TokenValue!6708) (rule!9410 Rule!12756) (size!31209 Int) (originalCharacters!7078 List!41696)) )
))
(declare-datatypes ((List!41697 0))(
  ( (Nil!41573) (Cons!41573 (h!46993 Token!12094) (t!324544 List!41697)) )
))
(declare-fun suffixTokens!72 () List!41697)

(declare-fun e!2424640 () Bool)

(declare-fun b!3920978 () Bool)

(declare-fun e!2424621 () Bool)

(declare-fun inv!55766 (String!47258) Bool)

(declare-fun inv!55769 (TokenValueInjection!12844) Bool)

(assert (=> b!3920978 (= e!2424621 (and tp!1193518 (inv!55766 (tag!7338 (rule!9410 (h!46993 suffixTokens!72)))) (inv!55769 (transformation!6478 (rule!9410 (h!46993 suffixTokens!72)))) e!2424640))))

(declare-fun b!3920979 () Bool)

(declare-fun e!2424617 () Bool)

(declare-fun prefixTokens!80 () List!41697)

(declare-fun e!2424635 () Bool)

(declare-fun tp!1193516 () Bool)

(declare-fun inv!21 (TokenValue!6708) Bool)

(assert (=> b!3920979 (= e!2424617 (and (inv!21 (value!205257 (h!46993 prefixTokens!80))) e!2424635 tp!1193516))))

(assert (=> b!3920980 (= e!2424640 (and tp!1193510 tp!1193525))))

(declare-fun b!3920981 () Bool)

(declare-fun e!2424612 () Bool)

(declare-datatypes ((tuple2!40834 0))(
  ( (tuple2!40835 (_1!23551 Token!12094) (_2!23551 List!41696)) )
))
(declare-datatypes ((Option!8898 0))(
  ( (None!8897) (Some!8897 (v!39223 tuple2!40834)) )
))
(declare-fun lt!1366624 () Option!8898)

(declare-fun size!31210 (List!41696) Int)

(assert (=> b!3920981 (= e!2424612 (= (size!31209 (_1!23551 (v!39223 lt!1366624))) (size!31210 (originalCharacters!7078 (_1!23551 (v!39223 lt!1366624))))))))

(declare-fun b!3920982 () Bool)

(declare-fun e!2424633 () Bool)

(declare-fun e!2424629 () Bool)

(assert (=> b!3920982 (= e!2424633 e!2424629)))

(declare-fun res!1586135 () Bool)

(assert (=> b!3920982 (=> res!1586135 e!2424629)))

(declare-fun lt!1366643 () Int)

(declare-fun lt!1366645 () Int)

(assert (=> b!3920982 (= res!1586135 (not (= lt!1366643 lt!1366645)))))

(declare-datatypes ((Unit!59736 0))(
  ( (Unit!59737) )
))
(declare-fun lt!1366626 () Unit!59736)

(declare-fun e!2424636 () Unit!59736)

(assert (=> b!3920982 (= lt!1366626 e!2424636)))

(declare-fun c!681407 () Bool)

(assert (=> b!3920982 (= c!681407 (< lt!1366643 lt!1366645))))

(declare-fun suffix!1176 () List!41696)

(assert (=> b!3920982 (= lt!1366645 (size!31210 suffix!1176))))

(assert (=> b!3920982 (= lt!1366643 (size!31210 (_2!23551 (v!39223 lt!1366624))))))

(declare-fun b!3920983 () Bool)

(declare-fun e!2424616 () Unit!59736)

(declare-fun Unit!59738 () Unit!59736)

(assert (=> b!3920983 (= e!2424616 Unit!59738)))

(declare-fun lt!1366644 () tuple2!40834)

(declare-fun suffixResult!91 () List!41696)

(declare-datatypes ((LexerInterface!6067 0))(
  ( (LexerInterfaceExt!6064 (__x!25634 Int)) (Lexer!6065) )
))
(declare-fun thiss!20629 () LexerInterface!6067)

(declare-fun lt!1366625 () List!41697)

(declare-datatypes ((List!41698 0))(
  ( (Nil!41574) (Cons!41574 (h!46994 Rule!12756) (t!324545 List!41698)) )
))
(declare-fun rules!2768 () List!41698)

(declare-fun lt!1366637 () Unit!59736)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!78 (LexerInterface!6067 List!41698 List!41696 List!41696 List!41697 List!41696 List!41697) Unit!59736)

(assert (=> b!3920983 (= lt!1366637 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!78 thiss!20629 rules!2768 suffix!1176 (_2!23551 lt!1366644) suffixTokens!72 suffixResult!91 lt!1366625))))

(declare-fun res!1586131 () Bool)

(declare-datatypes ((tuple2!40836 0))(
  ( (tuple2!40837 (_1!23552 List!41697) (_2!23552 List!41696)) )
))
(declare-fun call!284620 () tuple2!40836)

(declare-fun ++!10713 (List!41697 List!41697) List!41697)

(assert (=> b!3920983 (= res!1586131 (not (= call!284620 (tuple2!40837 (++!10713 lt!1366625 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2424623 () Bool)

(assert (=> b!3920983 (=> (not res!1586131) (not e!2424623))))

(assert (=> b!3920983 e!2424623))

(declare-fun b!3920984 () Bool)

(declare-fun e!2424639 () Bool)

(declare-fun tp_is_empty!19737 () Bool)

(declare-fun tp!1193517 () Bool)

(assert (=> b!3920984 (= e!2424639 (and tp_is_empty!19737 tp!1193517))))

(declare-fun e!2424637 () Bool)

(declare-fun e!2424613 () Bool)

(declare-fun b!3920985 () Bool)

(declare-fun tp!1193521 () Bool)

(declare-fun inv!55770 (Token!12094) Bool)

(assert (=> b!3920985 (= e!2424613 (and (inv!55770 (h!46993 suffixTokens!72)) e!2424637 tp!1193521))))

(declare-fun b!3920986 () Bool)

(declare-fun e!2424627 () Bool)

(assert (=> b!3920986 (= e!2424627 (not e!2424633))))

(declare-fun res!1586129 () Bool)

(assert (=> b!3920986 (=> res!1586129 e!2424633)))

(declare-fun lt!1366646 () List!41696)

(declare-fun lt!1366638 () List!41696)

(assert (=> b!3920986 (= res!1586129 (not (= lt!1366646 lt!1366638)))))

(declare-fun lt!1366639 () tuple2!40836)

(declare-fun lexList!1835 (LexerInterface!6067 List!41698 List!41696) tuple2!40836)

(assert (=> b!3920986 (= lt!1366639 (lexList!1835 thiss!20629 rules!2768 (_2!23551 (v!39223 lt!1366624))))))

(declare-fun lt!1366628 () Int)

(declare-fun lt!1366642 () TokenValue!6708)

(declare-fun lt!1366630 () List!41696)

(declare-fun lt!1366631 () List!41696)

(assert (=> b!3920986 (and (= (size!31209 (_1!23551 (v!39223 lt!1366624))) lt!1366628) (= (originalCharacters!7078 (_1!23551 (v!39223 lt!1366624))) lt!1366630) (= (v!39223 lt!1366624) (tuple2!40835 (Token!12095 lt!1366642 (rule!9410 (_1!23551 (v!39223 lt!1366624))) lt!1366628 lt!1366630) lt!1366631)))))

(assert (=> b!3920986 (= lt!1366628 (size!31210 lt!1366630))))

(assert (=> b!3920986 e!2424612))

(declare-fun res!1586126 () Bool)

(assert (=> b!3920986 (=> (not res!1586126) (not e!2424612))))

(assert (=> b!3920986 (= res!1586126 (= (value!205257 (_1!23551 (v!39223 lt!1366624))) lt!1366642))))

(declare-fun apply!9717 (TokenValueInjection!12844 BalanceConc!24972) TokenValue!6708)

(declare-fun seqFromList!4745 (List!41696) BalanceConc!24972)

(assert (=> b!3920986 (= lt!1366642 (apply!9717 (transformation!6478 (rule!9410 (_1!23551 (v!39223 lt!1366624)))) (seqFromList!4745 lt!1366630)))))

(assert (=> b!3920986 (= (_2!23551 (v!39223 lt!1366624)) lt!1366631)))

(declare-fun lt!1366649 () Unit!59736)

(declare-fun lemmaSamePrefixThenSameSuffix!1794 (List!41696 List!41696 List!41696 List!41696 List!41696) Unit!59736)

(assert (=> b!3920986 (= lt!1366649 (lemmaSamePrefixThenSameSuffix!1794 lt!1366630 (_2!23551 (v!39223 lt!1366624)) lt!1366630 lt!1366631 lt!1366638))))

(declare-fun getSuffix!2028 (List!41696 List!41696) List!41696)

(assert (=> b!3920986 (= lt!1366631 (getSuffix!2028 lt!1366638 lt!1366630))))

(declare-fun isPrefix!3573 (List!41696 List!41696) Bool)

(assert (=> b!3920986 (isPrefix!3573 lt!1366630 lt!1366646)))

(declare-fun ++!10714 (List!41696 List!41696) List!41696)

(assert (=> b!3920986 (= lt!1366646 (++!10714 lt!1366630 (_2!23551 (v!39223 lt!1366624))))))

(declare-fun lt!1366623 () Unit!59736)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2436 (List!41696 List!41696) Unit!59736)

(assert (=> b!3920986 (= lt!1366623 (lemmaConcatTwoListThenFirstIsPrefix!2436 lt!1366630 (_2!23551 (v!39223 lt!1366624))))))

(declare-fun list!15455 (BalanceConc!24972) List!41696)

(declare-fun charsOf!4302 (Token!12094) BalanceConc!24972)

(assert (=> b!3920986 (= lt!1366630 (list!15455 (charsOf!4302 (_1!23551 (v!39223 lt!1366624)))))))

(declare-fun ruleValid!2426 (LexerInterface!6067 Rule!12756) Bool)

(assert (=> b!3920986 (ruleValid!2426 thiss!20629 (rule!9410 (_1!23551 (v!39223 lt!1366624))))))

(declare-fun lt!1366633 () Unit!59736)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1506 (LexerInterface!6067 Rule!12756 List!41698) Unit!59736)

(assert (=> b!3920986 (= lt!1366633 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1506 thiss!20629 (rule!9410 (_1!23551 (v!39223 lt!1366624))) rules!2768))))

(declare-fun lt!1366641 () Unit!59736)

(declare-fun lemmaCharactersSize!1135 (Token!12094) Unit!59736)

(assert (=> b!3920986 (= lt!1366641 (lemmaCharactersSize!1135 (_1!23551 (v!39223 lt!1366624))))))

(declare-fun e!2424625 () Bool)

(assert (=> b!3920987 (= e!2424625 (and tp!1193515 tp!1193520))))

(declare-fun tp!1193513 () Bool)

(declare-fun b!3920988 () Bool)

(assert (=> b!3920988 (= e!2424637 (and (inv!21 (value!205257 (h!46993 suffixTokens!72))) e!2424621 tp!1193513))))

(declare-fun b!3920989 () Bool)

(declare-fun e!2424615 () Bool)

(declare-fun tp!1193514 () Bool)

(assert (=> b!3920989 (= e!2424635 (and tp!1193514 (inv!55766 (tag!7338 (rule!9410 (h!46993 prefixTokens!80)))) (inv!55769 (transformation!6478 (rule!9410 (h!46993 prefixTokens!80)))) e!2424615))))

(declare-fun b!3920990 () Bool)

(declare-fun c!681406 () Bool)

(declare-fun isEmpty!24752 (List!41697) Bool)

(assert (=> b!3920990 (= c!681406 (isEmpty!24752 lt!1366625))))

(declare-fun tail!6017 (List!41697) List!41697)

(assert (=> b!3920990 (= lt!1366625 (tail!6017 prefixTokens!80))))

(declare-fun e!2424634 () Unit!59736)

(assert (=> b!3920990 (= e!2424634 e!2424616)))

(declare-fun b!3920991 () Bool)

(declare-fun res!1586134 () Bool)

(declare-fun e!2424632 () Bool)

(assert (=> b!3920991 (=> (not res!1586134) (not e!2424632))))

(declare-fun rulesInvariant!5410 (LexerInterface!6067 List!41698) Bool)

(assert (=> b!3920991 (= res!1586134 (rulesInvariant!5410 thiss!20629 rules!2768))))

(declare-fun b!3920992 () Bool)

(declare-fun Unit!59739 () Unit!59736)

(assert (=> b!3920992 (= e!2424636 Unit!59739)))

(declare-fun lt!1366632 () Int)

(assert (=> b!3920992 (= lt!1366632 (size!31210 lt!1366638))))

(declare-fun lt!1366640 () Unit!59736)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1309 (LexerInterface!6067 List!41698 List!41696 List!41696 List!41696 Rule!12756) Unit!59736)

(assert (=> b!3920992 (= lt!1366640 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1309 thiss!20629 rules!2768 lt!1366630 lt!1366638 (_2!23551 (v!39223 lt!1366624)) (rule!9410 (_1!23551 (v!39223 lt!1366624)))))))

(declare-fun maxPrefixOneRule!2441 (LexerInterface!6067 Rule!12756 List!41696) Option!8898)

(assert (=> b!3920992 (= (maxPrefixOneRule!2441 thiss!20629 (rule!9410 (_1!23551 (v!39223 lt!1366624))) lt!1366638) (Some!8897 (tuple2!40835 (Token!12095 lt!1366642 (rule!9410 (_1!23551 (v!39223 lt!1366624))) lt!1366628 lt!1366630) (_2!23551 (v!39223 lt!1366624)))))))

(declare-fun get!13737 (Option!8898) tuple2!40834)

(assert (=> b!3920992 (= lt!1366644 (get!13737 lt!1366624))))

(declare-fun c!681405 () Bool)

(assert (=> b!3920992 (= c!681405 (< (size!31210 (_2!23551 lt!1366644)) lt!1366645))))

(declare-fun lt!1366627 () Unit!59736)

(assert (=> b!3920992 (= lt!1366627 e!2424634)))

(assert (=> b!3920992 false))

(declare-fun b!3920993 () Bool)

(declare-fun res!1586137 () Bool)

(assert (=> b!3920993 (=> res!1586137 e!2424633)))

(declare-fun lt!1366635 () tuple2!40836)

(assert (=> b!3920993 (= res!1586137 (not (= lt!1366635 (tuple2!40837 (++!10713 (Cons!41573 (_1!23551 (v!39223 lt!1366624)) Nil!41573) (_1!23552 lt!1366639)) (_2!23552 lt!1366639)))))))

(assert (=> b!3920994 (= e!2424615 (and tp!1193523 tp!1193512))))

(declare-fun b!3920995 () Bool)

(declare-fun e!2424618 () Bool)

(declare-fun e!2424628 () Bool)

(declare-fun tp!1193524 () Bool)

(assert (=> b!3920995 (= e!2424618 (and e!2424628 tp!1193524))))

(declare-fun b!3920996 () Bool)

(declare-fun e!2424610 () Bool)

(assert (=> b!3920996 (= e!2424632 e!2424610)))

(declare-fun res!1586125 () Bool)

(assert (=> b!3920996 (=> (not res!1586125) (not e!2424610))))

(declare-fun lt!1366629 () List!41697)

(assert (=> b!3920996 (= res!1586125 (= lt!1366635 (tuple2!40837 lt!1366629 suffixResult!91)))))

(assert (=> b!3920996 (= lt!1366635 (lexList!1835 thiss!20629 rules!2768 lt!1366638))))

(assert (=> b!3920996 (= lt!1366629 (++!10713 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41696)

(assert (=> b!3920996 (= lt!1366638 (++!10714 prefix!426 suffix!1176))))

(declare-fun b!3920997 () Bool)

(declare-fun Unit!59740 () Unit!59736)

(assert (=> b!3920997 (= e!2424636 Unit!59740)))

(declare-fun b!3920998 () Bool)

(declare-fun e!2424631 () Bool)

(assert (=> b!3920998 (= e!2424631 e!2424627)))

(declare-fun res!1586128 () Bool)

(assert (=> b!3920998 (=> (not res!1586128) (not e!2424627))))

(get-info :version)

(assert (=> b!3920998 (= res!1586128 ((_ is Some!8897) lt!1366624))))

(declare-fun maxPrefix!3371 (LexerInterface!6067 List!41698 List!41696) Option!8898)

(assert (=> b!3920998 (= lt!1366624 (maxPrefix!3371 thiss!20629 rules!2768 lt!1366638))))

(declare-fun bm!284615 () Bool)

(assert (=> bm!284615 (= call!284620 (lexList!1835 thiss!20629 rules!2768 (_2!23551 lt!1366644)))))

(declare-fun b!3920999 () Bool)

(declare-fun Unit!59741 () Unit!59736)

(assert (=> b!3920999 (= e!2424634 Unit!59741)))

(declare-fun res!1586124 () Bool)

(assert (=> start!367636 (=> (not res!1586124) (not e!2424632))))

(assert (=> start!367636 (= res!1586124 ((_ is Lexer!6065) thiss!20629))))

(assert (=> start!367636 e!2424632))

(declare-fun e!2424614 () Bool)

(assert (=> start!367636 e!2424614))

(assert (=> start!367636 true))

(declare-fun e!2424622 () Bool)

(assert (=> start!367636 e!2424622))

(assert (=> start!367636 e!2424618))

(declare-fun e!2424626 () Bool)

(assert (=> start!367636 e!2424626))

(assert (=> start!367636 e!2424613))

(assert (=> start!367636 e!2424639))

(declare-fun b!3921000 () Bool)

(declare-fun Unit!59742 () Unit!59736)

(assert (=> b!3921000 (= e!2424616 Unit!59742)))

(declare-fun lt!1366634 () Unit!59736)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!526 (List!41696 List!41696 List!41696 List!41696) Unit!59736)

(assert (=> b!3921000 (= lt!1366634 (lemmaConcatSameAndSameSizesThenSameLists!526 lt!1366630 (_2!23551 (v!39223 lt!1366624)) lt!1366630 (_2!23551 lt!1366644)))))

(assert (=> b!3921000 (= (_2!23551 (v!39223 lt!1366624)) (_2!23551 lt!1366644))))

(declare-fun lt!1366647 () Unit!59736)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!78 (LexerInterface!6067 List!41698 List!41696 List!41696 List!41697 List!41696) Unit!59736)

(assert (=> b!3921000 (= lt!1366647 (lemmaLexWithSmallerInputCannotProduceSameResults!78 thiss!20629 rules!2768 suffix!1176 (_2!23551 lt!1366644) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586130 () Bool)

(declare-fun lt!1366636 () tuple2!40836)

(assert (=> b!3921000 (= res!1586130 (not (= call!284620 lt!1366636)))))

(declare-fun e!2424638 () Bool)

(assert (=> b!3921000 (=> (not res!1586130) (not e!2424638))))

(assert (=> b!3921000 e!2424638))

(declare-fun b!3921001 () Bool)

(assert (=> b!3921001 (= e!2424623 false)))

(declare-fun b!3921002 () Bool)

(declare-fun res!1586133 () Bool)

(assert (=> b!3921002 (=> res!1586133 e!2424633)))

(assert (=> b!3921002 (= res!1586133 (or (not (= lt!1366639 (tuple2!40837 (_1!23552 lt!1366639) (_2!23552 lt!1366639)))) (= (_2!23551 (v!39223 lt!1366624)) suffix!1176)))))

(declare-fun b!3921003 () Bool)

(declare-fun tp!1193522 () Bool)

(assert (=> b!3921003 (= e!2424628 (and tp!1193522 (inv!55766 (tag!7338 (h!46994 rules!2768))) (inv!55769 (transformation!6478 (h!46994 rules!2768))) e!2424625))))

(declare-fun b!3921004 () Bool)

(declare-fun res!1586136 () Bool)

(assert (=> b!3921004 (=> (not res!1586136) (not e!2424632))))

(declare-fun isEmpty!24753 (List!41698) Bool)

(assert (=> b!3921004 (= res!1586136 (not (isEmpty!24753 rules!2768)))))

(declare-fun tp!1193511 () Bool)

(declare-fun b!3921005 () Bool)

(assert (=> b!3921005 (= e!2424626 (and (inv!55770 (h!46993 prefixTokens!80)) e!2424617 tp!1193511))))

(declare-fun b!3921006 () Bool)

(declare-fun res!1586132 () Bool)

(assert (=> b!3921006 (=> (not res!1586132) (not e!2424632))))

(assert (=> b!3921006 (= res!1586132 (not (isEmpty!24752 prefixTokens!80)))))

(declare-fun b!3921007 () Bool)

(declare-fun res!1586127 () Bool)

(assert (=> b!3921007 (=> (not res!1586127) (not e!2424632))))

(declare-fun isEmpty!24754 (List!41696) Bool)

(assert (=> b!3921007 (= res!1586127 (not (isEmpty!24754 prefix!426)))))

(declare-fun b!3921008 () Bool)

(declare-fun tp!1193526 () Bool)

(assert (=> b!3921008 (= e!2424622 (and tp_is_empty!19737 tp!1193526))))

(declare-fun b!3921009 () Bool)

(assert (=> b!3921009 (= e!2424629 (isPrefix!3573 lt!1366630 lt!1366638))))

(assert (=> b!3921009 (isPrefix!3573 prefix!426 lt!1366638)))

(declare-fun lt!1366648 () Unit!59736)

(assert (=> b!3921009 (= lt!1366648 (lemmaConcatTwoListThenFirstIsPrefix!2436 prefix!426 suffix!1176))))

(declare-fun b!3921010 () Bool)

(declare-fun tp!1193519 () Bool)

(assert (=> b!3921010 (= e!2424614 (and tp_is_empty!19737 tp!1193519))))

(declare-fun b!3921011 () Bool)

(assert (=> b!3921011 (= e!2424610 e!2424631)))

(declare-fun res!1586138 () Bool)

(assert (=> b!3921011 (=> (not res!1586138) (not e!2424631))))

(assert (=> b!3921011 (= res!1586138 (= (lexList!1835 thiss!20629 rules!2768 suffix!1176) lt!1366636))))

(assert (=> b!3921011 (= lt!1366636 (tuple2!40837 suffixTokens!72 suffixResult!91))))

(declare-fun b!3921012 () Bool)

(assert (=> b!3921012 (= e!2424638 false)))

(assert (= (and start!367636 res!1586124) b!3921004))

(assert (= (and b!3921004 res!1586136) b!3920991))

(assert (= (and b!3920991 res!1586134) b!3921006))

(assert (= (and b!3921006 res!1586132) b!3921007))

(assert (= (and b!3921007 res!1586127) b!3920996))

(assert (= (and b!3920996 res!1586125) b!3921011))

(assert (= (and b!3921011 res!1586138) b!3920998))

(assert (= (and b!3920998 res!1586128) b!3920986))

(assert (= (and b!3920986 res!1586126) b!3920981))

(assert (= (and b!3920986 (not res!1586129)) b!3920993))

(assert (= (and b!3920993 (not res!1586137)) b!3921002))

(assert (= (and b!3921002 (not res!1586133)) b!3920982))

(assert (= (and b!3920982 c!681407) b!3920992))

(assert (= (and b!3920982 (not c!681407)) b!3920997))

(assert (= (and b!3920992 c!681405) b!3920990))

(assert (= (and b!3920992 (not c!681405)) b!3920999))

(assert (= (and b!3920990 c!681406) b!3921000))

(assert (= (and b!3920990 (not c!681406)) b!3920983))

(assert (= (and b!3921000 res!1586130) b!3921012))

(assert (= (and b!3920983 res!1586131) b!3921001))

(assert (= (or b!3921000 b!3920983) bm!284615))

(assert (= (and b!3920982 (not res!1586135)) b!3921009))

(assert (= (and start!367636 ((_ is Cons!41572) suffixResult!91)) b!3921010))

(assert (= (and start!367636 ((_ is Cons!41572) suffix!1176)) b!3921008))

(assert (= b!3921003 b!3920987))

(assert (= b!3920995 b!3921003))

(assert (= (and start!367636 ((_ is Cons!41574) rules!2768)) b!3920995))

(assert (= b!3920989 b!3920994))

(assert (= b!3920979 b!3920989))

(assert (= b!3921005 b!3920979))

(assert (= (and start!367636 ((_ is Cons!41573) prefixTokens!80)) b!3921005))

(assert (= b!3920978 b!3920980))

(assert (= b!3920988 b!3920978))

(assert (= b!3920985 b!3920988))

(assert (= (and start!367636 ((_ is Cons!41573) suffixTokens!72)) b!3920985))

(assert (= (and start!367636 ((_ is Cons!41572) prefix!426)) b!3920984))

(declare-fun m!4484697 () Bool)

(assert (=> b!3921003 m!4484697))

(declare-fun m!4484699 () Bool)

(assert (=> b!3921003 m!4484699))

(declare-fun m!4484701 () Bool)

(assert (=> b!3920992 m!4484701))

(declare-fun m!4484703 () Bool)

(assert (=> b!3920992 m!4484703))

(declare-fun m!4484705 () Bool)

(assert (=> b!3920992 m!4484705))

(declare-fun m!4484707 () Bool)

(assert (=> b!3920992 m!4484707))

(declare-fun m!4484709 () Bool)

(assert (=> b!3920992 m!4484709))

(declare-fun m!4484711 () Bool)

(assert (=> b!3921000 m!4484711))

(declare-fun m!4484713 () Bool)

(assert (=> b!3921000 m!4484713))

(declare-fun m!4484715 () Bool)

(assert (=> b!3921011 m!4484715))

(declare-fun m!4484717 () Bool)

(assert (=> b!3920982 m!4484717))

(declare-fun m!4484719 () Bool)

(assert (=> b!3920982 m!4484719))

(declare-fun m!4484721 () Bool)

(assert (=> b!3920981 m!4484721))

(declare-fun m!4484723 () Bool)

(assert (=> b!3921004 m!4484723))

(declare-fun m!4484725 () Bool)

(assert (=> b!3920991 m!4484725))

(declare-fun m!4484727 () Bool)

(assert (=> b!3920985 m!4484727))

(declare-fun m!4484729 () Bool)

(assert (=> b!3920983 m!4484729))

(declare-fun m!4484731 () Bool)

(assert (=> b!3920983 m!4484731))

(declare-fun m!4484733 () Bool)

(assert (=> b!3920989 m!4484733))

(declare-fun m!4484735 () Bool)

(assert (=> b!3920989 m!4484735))

(declare-fun m!4484737 () Bool)

(assert (=> b!3920993 m!4484737))

(declare-fun m!4484739 () Bool)

(assert (=> b!3921007 m!4484739))

(declare-fun m!4484741 () Bool)

(assert (=> b!3920996 m!4484741))

(declare-fun m!4484743 () Bool)

(assert (=> b!3920996 m!4484743))

(declare-fun m!4484745 () Bool)

(assert (=> b!3920996 m!4484745))

(declare-fun m!4484747 () Bool)

(assert (=> bm!284615 m!4484747))

(declare-fun m!4484749 () Bool)

(assert (=> b!3920988 m!4484749))

(declare-fun m!4484751 () Bool)

(assert (=> b!3920986 m!4484751))

(declare-fun m!4484753 () Bool)

(assert (=> b!3920986 m!4484753))

(declare-fun m!4484755 () Bool)

(assert (=> b!3920986 m!4484755))

(declare-fun m!4484757 () Bool)

(assert (=> b!3920986 m!4484757))

(declare-fun m!4484759 () Bool)

(assert (=> b!3920986 m!4484759))

(declare-fun m!4484761 () Bool)

(assert (=> b!3920986 m!4484761))

(declare-fun m!4484763 () Bool)

(assert (=> b!3920986 m!4484763))

(declare-fun m!4484765 () Bool)

(assert (=> b!3920986 m!4484765))

(declare-fun m!4484767 () Bool)

(assert (=> b!3920986 m!4484767))

(declare-fun m!4484769 () Bool)

(assert (=> b!3920986 m!4484769))

(declare-fun m!4484771 () Bool)

(assert (=> b!3920986 m!4484771))

(assert (=> b!3920986 m!4484767))

(declare-fun m!4484773 () Bool)

(assert (=> b!3920986 m!4484773))

(declare-fun m!4484775 () Bool)

(assert (=> b!3920986 m!4484775))

(declare-fun m!4484777 () Bool)

(assert (=> b!3920986 m!4484777))

(assert (=> b!3920986 m!4484759))

(declare-fun m!4484779 () Bool)

(assert (=> b!3921005 m!4484779))

(declare-fun m!4484781 () Bool)

(assert (=> b!3921009 m!4484781))

(declare-fun m!4484783 () Bool)

(assert (=> b!3921009 m!4484783))

(declare-fun m!4484785 () Bool)

(assert (=> b!3921009 m!4484785))

(declare-fun m!4484787 () Bool)

(assert (=> b!3920978 m!4484787))

(declare-fun m!4484789 () Bool)

(assert (=> b!3920978 m!4484789))

(declare-fun m!4484791 () Bool)

(assert (=> b!3920979 m!4484791))

(declare-fun m!4484793 () Bool)

(assert (=> b!3920990 m!4484793))

(declare-fun m!4484795 () Bool)

(assert (=> b!3920990 m!4484795))

(declare-fun m!4484797 () Bool)

(assert (=> b!3921006 m!4484797))

(declare-fun m!4484799 () Bool)

(assert (=> b!3920998 m!4484799))

(check-sat (not b!3920984) (not b!3920998) (not b!3921003) (not b!3920992) (not b!3920989) (not b!3920988) (not b!3920979) b_and!298855 (not b!3920983) (not b!3921006) (not b_next!107343) (not b!3920986) (not b!3921008) (not b_next!107347) b_and!298857 (not b!3920996) (not b!3920985) (not b!3920993) (not b!3921000) (not b_next!107345) (not b!3921011) b_and!298851 (not b_next!107349) tp_is_empty!19737 (not b!3920981) (not b!3920991) (not b_next!107341) (not b!3920995) b_and!298847 b_and!298853 (not b!3920990) b_and!298849 (not b!3921004) (not b!3921010) (not b!3921005) (not b_next!107351) (not b!3920982) (not b!3921009) (not b!3921007) (not b!3920978) (not bm!284615))
(check-sat (not b_next!107347) b_and!298857 (not b_next!107349) (not b_next!107341) b_and!298847 b_and!298855 (not b_next!107351) (not b_next!107343) (not b_next!107345) b_and!298851 b_and!298853 b_and!298849)
