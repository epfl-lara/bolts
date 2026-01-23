; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366020 () Bool)

(assert start!366020)

(declare-fun b!3908877 () Bool)

(declare-fun b_free!105893 () Bool)

(declare-fun b_next!106597 () Bool)

(assert (=> b!3908877 (= b_free!105893 (not b_next!106597))))

(declare-fun tp!1189640 () Bool)

(declare-fun b_and!297131 () Bool)

(assert (=> b!3908877 (= tp!1189640 b_and!297131)))

(declare-fun b_free!105895 () Bool)

(declare-fun b_next!106599 () Bool)

(assert (=> b!3908877 (= b_free!105895 (not b_next!106599))))

(declare-fun tp!1189633 () Bool)

(declare-fun b_and!297133 () Bool)

(assert (=> b!3908877 (= tp!1189633 b_and!297133)))

(declare-fun b!3908879 () Bool)

(declare-fun b_free!105897 () Bool)

(declare-fun b_next!106601 () Bool)

(assert (=> b!3908879 (= b_free!105897 (not b_next!106601))))

(declare-fun tp!1189642 () Bool)

(declare-fun b_and!297135 () Bool)

(assert (=> b!3908879 (= tp!1189642 b_and!297135)))

(declare-fun b_free!105899 () Bool)

(declare-fun b_next!106603 () Bool)

(assert (=> b!3908879 (= b_free!105899 (not b_next!106603))))

(declare-fun tp!1189635 () Bool)

(declare-fun b_and!297137 () Bool)

(assert (=> b!3908879 (= tp!1189635 b_and!297137)))

(declare-fun b!3908869 () Bool)

(declare-fun b_free!105901 () Bool)

(declare-fun b_next!106605 () Bool)

(assert (=> b!3908869 (= b_free!105901 (not b_next!106605))))

(declare-fun tp!1189643 () Bool)

(declare-fun b_and!297139 () Bool)

(assert (=> b!3908869 (= tp!1189643 b_and!297139)))

(declare-fun b_free!105903 () Bool)

(declare-fun b_next!106607 () Bool)

(assert (=> b!3908869 (= b_free!105903 (not b_next!106607))))

(declare-fun tp!1189639 () Bool)

(declare-fun b_and!297141 () Bool)

(assert (=> b!3908869 (= tp!1189639 b_and!297141)))

(declare-fun b!3908857 () Bool)

(declare-fun e!2416444 () Bool)

(declare-fun tp_is_empty!19665 () Bool)

(declare-fun tp!1189630 () Bool)

(assert (=> b!3908857 (= e!2416444 (and tp_is_empty!19665 tp!1189630))))

(declare-fun b!3908858 () Bool)

(declare-fun e!2416456 () Bool)

(declare-fun e!2416454 () Bool)

(assert (=> b!3908858 (= e!2416456 e!2416454)))

(declare-fun res!1580972 () Bool)

(assert (=> b!3908858 (=> (not res!1580972) (not e!2416454))))

(declare-datatypes ((C!22880 0))(
  ( (C!22881 (val!13534 Int)) )
))
(declare-datatypes ((List!41530 0))(
  ( (Nil!41406) (Cons!41406 (h!46826 C!22880) (t!322621 List!41530)) )
))
(declare-fun suffixResult!91 () List!41530)

(declare-datatypes ((List!41531 0))(
  ( (Nil!41407) (Cons!41407 (h!46827 (_ BitVec 16)) (t!322622 List!41531)) )
))
(declare-datatypes ((TokenValue!6672 0))(
  ( (FloatLiteralValue!13344 (text!47149 List!41531)) (TokenValueExt!6671 (__x!25561 Int)) (Broken!33360 (value!204205 List!41531)) (Object!6795) (End!6672) (Def!6672) (Underscore!6672) (Match!6672) (Else!6672) (Error!6672) (Case!6672) (If!6672) (Extends!6672) (Abstract!6672) (Class!6672) (Val!6672) (DelimiterValue!13344 (del!6732 List!41531)) (KeywordValue!6678 (value!204206 List!41531)) (CommentValue!13344 (value!204207 List!41531)) (WhitespaceValue!13344 (value!204208 List!41531)) (IndentationValue!6672 (value!204209 List!41531)) (String!47077) (Int32!6672) (Broken!33361 (value!204210 List!41531)) (Boolean!6673) (Unit!59557) (OperatorValue!6675 (op!6732 List!41531)) (IdentifierValue!13344 (value!204211 List!41531)) (IdentifierValue!13345 (value!204212 List!41531)) (WhitespaceValue!13345 (value!204213 List!41531)) (True!13344) (False!13344) (Broken!33362 (value!204214 List!41531)) (Broken!33363 (value!204215 List!41531)) (True!13345) (RightBrace!6672) (RightBracket!6672) (Colon!6672) (Null!6672) (Comma!6672) (LeftBracket!6672) (False!13345) (LeftBrace!6672) (ImaginaryLiteralValue!6672 (text!47150 List!41531)) (StringLiteralValue!20016 (value!204216 List!41531)) (EOFValue!6672 (value!204217 List!41531)) (IdentValue!6672 (value!204218 List!41531)) (DelimiterValue!13345 (value!204219 List!41531)) (DedentValue!6672 (value!204220 List!41531)) (NewLineValue!6672 (value!204221 List!41531)) (IntegerValue!20016 (value!204222 (_ BitVec 32)) (text!47151 List!41531)) (IntegerValue!20017 (value!204223 Int) (text!47152 List!41531)) (Times!6672) (Or!6672) (Equal!6672) (Minus!6672) (Broken!33364 (value!204224 List!41531)) (And!6672) (Div!6672) (LessEqual!6672) (Mod!6672) (Concat!18019) (Not!6672) (Plus!6672) (SpaceValue!6672 (value!204225 List!41531)) (IntegerValue!20018 (value!204226 Int) (text!47153 List!41531)) (StringLiteralValue!20017 (text!47154 List!41531)) (FloatLiteralValue!13345 (text!47155 List!41531)) (BytesLiteralValue!6672 (value!204227 List!41531)) (CommentValue!13345 (value!204228 List!41531)) (StringLiteralValue!20018 (value!204229 List!41531)) (ErrorTokenValue!6672 (msg!6733 List!41531)) )
))
(declare-datatypes ((Regex!11347 0))(
  ( (ElementMatch!11347 (c!679540 C!22880)) (Concat!18020 (regOne!23206 Regex!11347) (regTwo!23206 Regex!11347)) (EmptyExpr!11347) (Star!11347 (reg!11676 Regex!11347)) (EmptyLang!11347) (Union!11347 (regOne!23207 Regex!11347) (regTwo!23207 Regex!11347)) )
))
(declare-datatypes ((String!47078 0))(
  ( (String!47079 (value!204230 String)) )
))
(declare-datatypes ((IArray!25311 0))(
  ( (IArray!25312 (innerList!12713 List!41530)) )
))
(declare-datatypes ((Conc!12653 0))(
  ( (Node!12653 (left!31716 Conc!12653) (right!32046 Conc!12653) (csize!25536 Int) (cheight!12864 Int)) (Leaf!19581 (xs!15959 IArray!25311) (csize!25537 Int)) (Empty!12653) )
))
(declare-datatypes ((BalanceConc!24900 0))(
  ( (BalanceConc!24901 (c!679541 Conc!12653)) )
))
(declare-datatypes ((TokenValueInjection!12772 0))(
  ( (TokenValueInjection!12773 (toValue!8886 Int) (toChars!8745 Int)) )
))
(declare-datatypes ((Rule!12684 0))(
  ( (Rule!12685 (regex!6442 Regex!11347) (tag!7302 String!47078) (isSeparator!6442 Bool) (transformation!6442 TokenValueInjection!12772)) )
))
(declare-datatypes ((Token!12022 0))(
  ( (Token!12023 (value!204231 TokenValue!6672) (rule!9356 Rule!12684) (size!31093 Int) (originalCharacters!7042 List!41530)) )
))
(declare-datatypes ((List!41532 0))(
  ( (Nil!41408) (Cons!41408 (h!46828 Token!12022) (t!322623 List!41532)) )
))
(declare-datatypes ((tuple2!40654 0))(
  ( (tuple2!40655 (_1!23461 List!41532) (_2!23461 List!41530)) )
))
(declare-fun lt!1361563 () tuple2!40654)

(declare-fun lt!1361559 () List!41532)

(assert (=> b!3908858 (= res!1580972 (= lt!1361563 (tuple2!40655 lt!1361559 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6031 0))(
  ( (LexerInterfaceExt!6028 (__x!25562 Int)) (Lexer!6029) )
))
(declare-fun thiss!20629 () LexerInterface!6031)

(declare-datatypes ((List!41533 0))(
  ( (Nil!41409) (Cons!41409 (h!46829 Rule!12684) (t!322624 List!41533)) )
))
(declare-fun rules!2768 () List!41533)

(declare-fun lt!1361566 () List!41530)

(declare-fun lexList!1799 (LexerInterface!6031 List!41533 List!41530) tuple2!40654)

(assert (=> b!3908858 (= lt!1361563 (lexList!1799 thiss!20629 rules!2768 lt!1361566))))

(declare-fun prefixTokens!80 () List!41532)

(declare-fun suffixTokens!72 () List!41532)

(declare-fun ++!10641 (List!41532 List!41532) List!41532)

(assert (=> b!3908858 (= lt!1361559 (++!10641 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41530)

(declare-fun suffix!1176 () List!41530)

(declare-fun ++!10642 (List!41530 List!41530) List!41530)

(assert (=> b!3908858 (= lt!1361566 (++!10642 prefix!426 suffix!1176))))

(declare-fun e!2416437 () Bool)

(declare-fun tp!1189644 () Bool)

(declare-fun e!2416447 () Bool)

(declare-fun b!3908859 () Bool)

(declare-fun inv!55587 (Token!12022) Bool)

(assert (=> b!3908859 (= e!2416437 (and (inv!55587 (h!46828 suffixTokens!72)) e!2416447 tp!1189644))))

(declare-fun tp!1189638 () Bool)

(declare-fun b!3908860 () Bool)

(declare-fun e!2416451 () Bool)

(declare-fun inv!21 (TokenValue!6672) Bool)

(assert (=> b!3908860 (= e!2416447 (and (inv!21 (value!204231 (h!46828 suffixTokens!72))) e!2416451 tp!1189638))))

(declare-fun e!2416442 () Bool)

(declare-fun e!2416458 () Bool)

(declare-fun b!3908861 () Bool)

(declare-fun tp!1189634 () Bool)

(assert (=> b!3908861 (= e!2416458 (and (inv!21 (value!204231 (h!46828 prefixTokens!80))) e!2416442 tp!1189634))))

(declare-fun b!3908862 () Bool)

(declare-fun e!2416440 () Bool)

(assert (=> b!3908862 (= e!2416440 true)))

(declare-fun lt!1361568 () Int)

(declare-fun size!31094 (List!41530) Int)

(assert (=> b!3908862 (= lt!1361568 (size!31094 suffix!1176))))

(declare-fun lt!1361564 () Int)

(declare-datatypes ((tuple2!40656 0))(
  ( (tuple2!40657 (_1!23462 Token!12022) (_2!23462 List!41530)) )
))
(declare-datatypes ((Option!8862 0))(
  ( (None!8861) (Some!8861 (v!39183 tuple2!40656)) )
))
(declare-fun lt!1361570 () Option!8862)

(assert (=> b!3908862 (= lt!1361564 (size!31094 (_2!23462 (v!39183 lt!1361570))))))

(declare-fun b!3908863 () Bool)

(declare-fun e!2416438 () Bool)

(declare-fun tp!1189646 () Bool)

(assert (=> b!3908863 (= e!2416438 (and tp_is_empty!19665 tp!1189646))))

(declare-fun e!2416439 () Bool)

(declare-fun tp!1189645 () Bool)

(declare-fun b!3908864 () Bool)

(declare-fun e!2416453 () Bool)

(declare-fun inv!55584 (String!47078) Bool)

(declare-fun inv!55588 (TokenValueInjection!12772) Bool)

(assert (=> b!3908864 (= e!2416453 (and tp!1189645 (inv!55584 (tag!7302 (h!46829 rules!2768))) (inv!55588 (transformation!6442 (h!46829 rules!2768))) e!2416439))))

(declare-fun res!1580973 () Bool)

(assert (=> start!366020 (=> (not res!1580973) (not e!2416456))))

(get-info :version)

(assert (=> start!366020 (= res!1580973 ((_ is Lexer!6029) thiss!20629))))

(assert (=> start!366020 e!2416456))

(assert (=> start!366020 e!2416444))

(assert (=> start!366020 true))

(declare-fun e!2416446 () Bool)

(assert (=> start!366020 e!2416446))

(declare-fun e!2416443 () Bool)

(assert (=> start!366020 e!2416443))

(declare-fun e!2416441 () Bool)

(assert (=> start!366020 e!2416441))

(assert (=> start!366020 e!2416437))

(assert (=> start!366020 e!2416438))

(declare-fun b!3908865 () Bool)

(declare-fun res!1580969 () Bool)

(assert (=> b!3908865 (=> (not res!1580969) (not e!2416456))))

(declare-fun isEmpty!24622 (List!41530) Bool)

(assert (=> b!3908865 (= res!1580969 (not (isEmpty!24622 prefix!426)))))

(declare-fun b!3908866 () Bool)

(declare-fun res!1580975 () Bool)

(assert (=> b!3908866 (=> (not res!1580975) (not e!2416454))))

(assert (=> b!3908866 (= res!1580975 (= (lexList!1799 thiss!20629 rules!2768 suffix!1176) (tuple2!40655 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3908867 () Bool)

(declare-fun tp!1189641 () Bool)

(assert (=> b!3908867 (= e!2416446 (and tp_is_empty!19665 tp!1189641))))

(declare-fun tp!1189631 () Bool)

(declare-fun b!3908868 () Bool)

(assert (=> b!3908868 (= e!2416441 (and (inv!55587 (h!46828 prefixTokens!80)) e!2416458 tp!1189631))))

(declare-fun e!2416445 () Bool)

(assert (=> b!3908869 (= e!2416445 (and tp!1189643 tp!1189639))))

(declare-fun b!3908870 () Bool)

(declare-fun res!1580974 () Bool)

(assert (=> b!3908870 (=> (not res!1580974) (not e!2416456))))

(declare-fun isEmpty!24623 (List!41533) Bool)

(assert (=> b!3908870 (= res!1580974 (not (isEmpty!24623 rules!2768)))))

(declare-fun e!2416449 () Bool)

(declare-fun tp!1189632 () Bool)

(declare-fun b!3908871 () Bool)

(assert (=> b!3908871 (= e!2416451 (and tp!1189632 (inv!55584 (tag!7302 (rule!9356 (h!46828 suffixTokens!72)))) (inv!55588 (transformation!6442 (rule!9356 (h!46828 suffixTokens!72)))) e!2416449))))

(declare-fun tp!1189636 () Bool)

(declare-fun b!3908872 () Bool)

(assert (=> b!3908872 (= e!2416442 (and tp!1189636 (inv!55584 (tag!7302 (rule!9356 (h!46828 prefixTokens!80)))) (inv!55588 (transformation!6442 (rule!9356 (h!46828 prefixTokens!80)))) e!2416445))))

(declare-fun b!3908873 () Bool)

(declare-fun res!1580971 () Bool)

(assert (=> b!3908873 (=> (not res!1580971) (not e!2416456))))

(declare-fun rulesInvariant!5374 (LexerInterface!6031 List!41533) Bool)

(assert (=> b!3908873 (= res!1580971 (rulesInvariant!5374 thiss!20629 rules!2768))))

(declare-fun b!3908874 () Bool)

(declare-fun e!2416450 () Bool)

(assert (=> b!3908874 (= e!2416450 (= (size!31093 (_1!23462 (v!39183 lt!1361570))) (size!31094 (originalCharacters!7042 (_1!23462 (v!39183 lt!1361570))))))))

(declare-fun b!3908875 () Bool)

(declare-fun e!2416457 () Bool)

(assert (=> b!3908875 (= e!2416454 e!2416457)))

(declare-fun res!1580977 () Bool)

(assert (=> b!3908875 (=> (not res!1580977) (not e!2416457))))

(assert (=> b!3908875 (= res!1580977 ((_ is Some!8861) lt!1361570))))

(declare-fun maxPrefix!3335 (LexerInterface!6031 List!41533 List!41530) Option!8862)

(assert (=> b!3908875 (= lt!1361570 (maxPrefix!3335 thiss!20629 rules!2768 lt!1361566))))

(declare-fun b!3908876 () Bool)

(declare-fun tp!1189637 () Bool)

(assert (=> b!3908876 (= e!2416443 (and e!2416453 tp!1189637))))

(assert (=> b!3908877 (= e!2416449 (and tp!1189640 tp!1189633))))

(declare-fun b!3908878 () Bool)

(declare-fun res!1580978 () Bool)

(assert (=> b!3908878 (=> res!1580978 e!2416440)))

(declare-fun lt!1361571 () tuple2!40654)

(assert (=> b!3908878 (= res!1580978 (not (= lt!1361563 (tuple2!40655 (++!10641 (Cons!41408 (_1!23462 (v!39183 lt!1361570)) Nil!41408) (_1!23461 lt!1361571)) (_2!23461 lt!1361571)))))))

(assert (=> b!3908879 (= e!2416439 (and tp!1189642 tp!1189635))))

(declare-fun b!3908880 () Bool)

(declare-fun res!1580979 () Bool)

(assert (=> b!3908880 (=> (not res!1580979) (not e!2416456))))

(declare-fun isEmpty!24624 (List!41532) Bool)

(assert (=> b!3908880 (= res!1580979 (not (isEmpty!24624 prefixTokens!80)))))

(declare-fun b!3908881 () Bool)

(declare-fun res!1580968 () Bool)

(assert (=> b!3908881 (=> res!1580968 e!2416440)))

(assert (=> b!3908881 (= res!1580968 (or (not (= lt!1361571 (tuple2!40655 (_1!23461 lt!1361571) (_2!23461 lt!1361571)))) (= (_2!23462 (v!39183 lt!1361570)) suffix!1176)))))

(declare-fun b!3908882 () Bool)

(assert (=> b!3908882 (= e!2416457 (not e!2416440))))

(declare-fun res!1580976 () Bool)

(assert (=> b!3908882 (=> res!1580976 e!2416440)))

(declare-fun lt!1361561 () List!41530)

(assert (=> b!3908882 (= res!1580976 (not (= lt!1361561 lt!1361566)))))

(assert (=> b!3908882 (= lt!1361571 (lexList!1799 thiss!20629 rules!2768 (_2!23462 (v!39183 lt!1361570))))))

(declare-fun lt!1361569 () TokenValue!6672)

(declare-fun lt!1361557 () List!41530)

(declare-fun lt!1361562 () List!41530)

(declare-fun lt!1361558 () Int)

(assert (=> b!3908882 (and (= (size!31093 (_1!23462 (v!39183 lt!1361570))) lt!1361558) (= (originalCharacters!7042 (_1!23462 (v!39183 lt!1361570))) lt!1361557) (= (v!39183 lt!1361570) (tuple2!40657 (Token!12023 lt!1361569 (rule!9356 (_1!23462 (v!39183 lt!1361570))) lt!1361558 lt!1361557) lt!1361562)))))

(assert (=> b!3908882 (= lt!1361558 (size!31094 lt!1361557))))

(assert (=> b!3908882 e!2416450))

(declare-fun res!1580970 () Bool)

(assert (=> b!3908882 (=> (not res!1580970) (not e!2416450))))

(assert (=> b!3908882 (= res!1580970 (= (value!204231 (_1!23462 (v!39183 lt!1361570))) lt!1361569))))

(declare-fun apply!9681 (TokenValueInjection!12772 BalanceConc!24900) TokenValue!6672)

(declare-fun seqFromList!4709 (List!41530) BalanceConc!24900)

(assert (=> b!3908882 (= lt!1361569 (apply!9681 (transformation!6442 (rule!9356 (_1!23462 (v!39183 lt!1361570)))) (seqFromList!4709 lt!1361557)))))

(assert (=> b!3908882 (= (_2!23462 (v!39183 lt!1361570)) lt!1361562)))

(declare-datatypes ((Unit!59558 0))(
  ( (Unit!59559) )
))
(declare-fun lt!1361556 () Unit!59558)

(declare-fun lemmaSamePrefixThenSameSuffix!1758 (List!41530 List!41530 List!41530 List!41530 List!41530) Unit!59558)

(assert (=> b!3908882 (= lt!1361556 (lemmaSamePrefixThenSameSuffix!1758 lt!1361557 (_2!23462 (v!39183 lt!1361570)) lt!1361557 lt!1361562 lt!1361566))))

(declare-fun getSuffix!1992 (List!41530 List!41530) List!41530)

(assert (=> b!3908882 (= lt!1361562 (getSuffix!1992 lt!1361566 lt!1361557))))

(declare-fun isPrefix!3537 (List!41530 List!41530) Bool)

(assert (=> b!3908882 (isPrefix!3537 lt!1361557 lt!1361561)))

(assert (=> b!3908882 (= lt!1361561 (++!10642 lt!1361557 (_2!23462 (v!39183 lt!1361570))))))

(declare-fun lt!1361560 () Unit!59558)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2400 (List!41530 List!41530) Unit!59558)

(assert (=> b!3908882 (= lt!1361560 (lemmaConcatTwoListThenFirstIsPrefix!2400 lt!1361557 (_2!23462 (v!39183 lt!1361570))))))

(declare-fun list!15394 (BalanceConc!24900) List!41530)

(declare-fun charsOf!4266 (Token!12022) BalanceConc!24900)

(assert (=> b!3908882 (= lt!1361557 (list!15394 (charsOf!4266 (_1!23462 (v!39183 lt!1361570)))))))

(declare-fun ruleValid!2390 (LexerInterface!6031 Rule!12684) Bool)

(assert (=> b!3908882 (ruleValid!2390 thiss!20629 (rule!9356 (_1!23462 (v!39183 lt!1361570))))))

(declare-fun lt!1361565 () Unit!59558)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1470 (LexerInterface!6031 Rule!12684 List!41533) Unit!59558)

(assert (=> b!3908882 (= lt!1361565 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1470 thiss!20629 (rule!9356 (_1!23462 (v!39183 lt!1361570))) rules!2768))))

(declare-fun lt!1361567 () Unit!59558)

(declare-fun lemmaCharactersSize!1099 (Token!12022) Unit!59558)

(assert (=> b!3908882 (= lt!1361567 (lemmaCharactersSize!1099 (_1!23462 (v!39183 lt!1361570))))))

(assert (= (and start!366020 res!1580973) b!3908870))

(assert (= (and b!3908870 res!1580974) b!3908873))

(assert (= (and b!3908873 res!1580971) b!3908880))

(assert (= (and b!3908880 res!1580979) b!3908865))

(assert (= (and b!3908865 res!1580969) b!3908858))

(assert (= (and b!3908858 res!1580972) b!3908866))

(assert (= (and b!3908866 res!1580975) b!3908875))

(assert (= (and b!3908875 res!1580977) b!3908882))

(assert (= (and b!3908882 res!1580970) b!3908874))

(assert (= (and b!3908882 (not res!1580976)) b!3908878))

(assert (= (and b!3908878 (not res!1580978)) b!3908881))

(assert (= (and b!3908881 (not res!1580968)) b!3908862))

(assert (= (and start!366020 ((_ is Cons!41406) suffixResult!91)) b!3908857))

(assert (= (and start!366020 ((_ is Cons!41406) suffix!1176)) b!3908867))

(assert (= b!3908864 b!3908879))

(assert (= b!3908876 b!3908864))

(assert (= (and start!366020 ((_ is Cons!41409) rules!2768)) b!3908876))

(assert (= b!3908872 b!3908869))

(assert (= b!3908861 b!3908872))

(assert (= b!3908868 b!3908861))

(assert (= (and start!366020 ((_ is Cons!41408) prefixTokens!80)) b!3908868))

(assert (= b!3908871 b!3908877))

(assert (= b!3908860 b!3908871))

(assert (= b!3908859 b!3908860))

(assert (= (and start!366020 ((_ is Cons!41408) suffixTokens!72)) b!3908859))

(assert (= (and start!366020 ((_ is Cons!41406) prefix!426)) b!3908863))

(declare-fun m!4471923 () Bool)

(assert (=> b!3908862 m!4471923))

(declare-fun m!4471925 () Bool)

(assert (=> b!3908862 m!4471925))

(declare-fun m!4471927 () Bool)

(assert (=> b!3908870 m!4471927))

(declare-fun m!4471929 () Bool)

(assert (=> b!3908861 m!4471929))

(declare-fun m!4471931 () Bool)

(assert (=> b!3908865 m!4471931))

(declare-fun m!4471933 () Bool)

(assert (=> b!3908875 m!4471933))

(declare-fun m!4471935 () Bool)

(assert (=> b!3908880 m!4471935))

(declare-fun m!4471937 () Bool)

(assert (=> b!3908872 m!4471937))

(declare-fun m!4471939 () Bool)

(assert (=> b!3908872 m!4471939))

(declare-fun m!4471941 () Bool)

(assert (=> b!3908882 m!4471941))

(declare-fun m!4471943 () Bool)

(assert (=> b!3908882 m!4471943))

(declare-fun m!4471945 () Bool)

(assert (=> b!3908882 m!4471945))

(declare-fun m!4471947 () Bool)

(assert (=> b!3908882 m!4471947))

(declare-fun m!4471949 () Bool)

(assert (=> b!3908882 m!4471949))

(declare-fun m!4471951 () Bool)

(assert (=> b!3908882 m!4471951))

(declare-fun m!4471953 () Bool)

(assert (=> b!3908882 m!4471953))

(declare-fun m!4471955 () Bool)

(assert (=> b!3908882 m!4471955))

(declare-fun m!4471957 () Bool)

(assert (=> b!3908882 m!4471957))

(declare-fun m!4471959 () Bool)

(assert (=> b!3908882 m!4471959))

(declare-fun m!4471961 () Bool)

(assert (=> b!3908882 m!4471961))

(declare-fun m!4471963 () Bool)

(assert (=> b!3908882 m!4471963))

(declare-fun m!4471965 () Bool)

(assert (=> b!3908882 m!4471965))

(declare-fun m!4471967 () Bool)

(assert (=> b!3908882 m!4471967))

(assert (=> b!3908882 m!4471941))

(assert (=> b!3908882 m!4471965))

(declare-fun m!4471969 () Bool)

(assert (=> b!3908858 m!4471969))

(declare-fun m!4471971 () Bool)

(assert (=> b!3908858 m!4471971))

(declare-fun m!4471973 () Bool)

(assert (=> b!3908858 m!4471973))

(declare-fun m!4471975 () Bool)

(assert (=> b!3908874 m!4471975))

(declare-fun m!4471977 () Bool)

(assert (=> b!3908873 m!4471977))

(declare-fun m!4471979 () Bool)

(assert (=> b!3908871 m!4471979))

(declare-fun m!4471981 () Bool)

(assert (=> b!3908871 m!4471981))

(declare-fun m!4471983 () Bool)

(assert (=> b!3908868 m!4471983))

(declare-fun m!4471985 () Bool)

(assert (=> b!3908864 m!4471985))

(declare-fun m!4471987 () Bool)

(assert (=> b!3908864 m!4471987))

(declare-fun m!4471989 () Bool)

(assert (=> b!3908866 m!4471989))

(declare-fun m!4471991 () Bool)

(assert (=> b!3908878 m!4471991))

(declare-fun m!4471993 () Bool)

(assert (=> b!3908859 m!4471993))

(declare-fun m!4471995 () Bool)

(assert (=> b!3908860 m!4471995))

(check-sat (not b!3908874) (not b_next!106599) (not b!3908871) (not b!3908858) (not b!3908859) b_and!297133 (not b_next!106605) (not b!3908865) (not b!3908880) (not b!3908863) (not b!3908875) (not b!3908866) (not b!3908873) (not b!3908878) (not b!3908862) tp_is_empty!19665 (not b!3908860) (not b!3908872) b_and!297137 (not b!3908870) (not b!3908876) (not b!3908867) (not b!3908857) b_and!297141 (not b_next!106597) (not b_next!106603) b_and!297131 (not b!3908861) (not b_next!106607) b_and!297135 (not b!3908882) (not b_next!106601) b_and!297139 (not b!3908868) (not b!3908864))
(check-sat b_and!297137 (not b_next!106599) b_and!297133 b_and!297141 (not b_next!106605) b_and!297131 (not b_next!106597) (not b_next!106603) (not b_next!106607) b_and!297135 (not b_next!106601) b_and!297139)
