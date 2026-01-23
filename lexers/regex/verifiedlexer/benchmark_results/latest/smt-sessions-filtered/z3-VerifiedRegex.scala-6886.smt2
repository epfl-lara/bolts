; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362752 () Bool)

(assert start!362752)

(declare-fun b!3866629 () Bool)

(declare-fun b_free!104221 () Bool)

(declare-fun b_next!104925 () Bool)

(assert (=> b!3866629 (= b_free!104221 (not b_next!104925))))

(declare-fun tp!1172318 () Bool)

(declare-fun b_and!289683 () Bool)

(assert (=> b!3866629 (= tp!1172318 b_and!289683)))

(declare-fun b_free!104223 () Bool)

(declare-fun b_next!104927 () Bool)

(assert (=> b!3866629 (= b_free!104223 (not b_next!104927))))

(declare-fun tp!1172324 () Bool)

(declare-fun b_and!289685 () Bool)

(assert (=> b!3866629 (= tp!1172324 b_and!289685)))

(declare-fun b!3866622 () Bool)

(declare-fun b_free!104225 () Bool)

(declare-fun b_next!104929 () Bool)

(assert (=> b!3866622 (= b_free!104225 (not b_next!104929))))

(declare-fun tp!1172315 () Bool)

(declare-fun b_and!289687 () Bool)

(assert (=> b!3866622 (= tp!1172315 b_and!289687)))

(declare-fun b_free!104227 () Bool)

(declare-fun b_next!104931 () Bool)

(assert (=> b!3866622 (= b_free!104227 (not b_next!104931))))

(declare-fun tp!1172319 () Bool)

(declare-fun b_and!289689 () Bool)

(assert (=> b!3866622 (= tp!1172319 b_and!289689)))

(declare-fun b!3866619 () Bool)

(declare-fun b_free!104229 () Bool)

(declare-fun b_next!104933 () Bool)

(assert (=> b!3866619 (= b_free!104229 (not b_next!104933))))

(declare-fun tp!1172317 () Bool)

(declare-fun b_and!289691 () Bool)

(assert (=> b!3866619 (= tp!1172317 b_and!289691)))

(declare-fun b_free!104231 () Bool)

(declare-fun b_next!104935 () Bool)

(assert (=> b!3866619 (= b_free!104231 (not b_next!104935))))

(declare-fun tp!1172314 () Bool)

(declare-fun b_and!289693 () Bool)

(assert (=> b!3866619 (= tp!1172314 b_and!289693)))

(declare-fun b!3866595 () Bool)

(declare-fun res!1565910 () Bool)

(declare-fun e!2391077 () Bool)

(assert (=> b!3866595 (=> (not res!1565910) (not e!2391077))))

(declare-datatypes ((List!41166 0))(
  ( (Nil!41042) (Cons!41042 (h!46462 (_ BitVec 16)) (t!314041 List!41166)) )
))
(declare-datatypes ((TokenValue!6590 0))(
  ( (FloatLiteralValue!13180 (text!46575 List!41166)) (TokenValueExt!6589 (__x!25397 Int)) (Broken!32950 (value!201868 List!41166)) (Object!6713) (End!6590) (Def!6590) (Underscore!6590) (Match!6590) (Else!6590) (Error!6590) (Case!6590) (If!6590) (Extends!6590) (Abstract!6590) (Class!6590) (Val!6590) (DelimiterValue!13180 (del!6650 List!41166)) (KeywordValue!6596 (value!201869 List!41166)) (CommentValue!13180 (value!201870 List!41166)) (WhitespaceValue!13180 (value!201871 List!41166)) (IndentationValue!6590 (value!201872 List!41166)) (String!46667) (Int32!6590) (Broken!32951 (value!201873 List!41166)) (Boolean!6591) (Unit!58760) (OperatorValue!6593 (op!6650 List!41166)) (IdentifierValue!13180 (value!201874 List!41166)) (IdentifierValue!13181 (value!201875 List!41166)) (WhitespaceValue!13181 (value!201876 List!41166)) (True!13180) (False!13180) (Broken!32952 (value!201877 List!41166)) (Broken!32953 (value!201878 List!41166)) (True!13181) (RightBrace!6590) (RightBracket!6590) (Colon!6590) (Null!6590) (Comma!6590) (LeftBracket!6590) (False!13181) (LeftBrace!6590) (ImaginaryLiteralValue!6590 (text!46576 List!41166)) (StringLiteralValue!19770 (value!201879 List!41166)) (EOFValue!6590 (value!201880 List!41166)) (IdentValue!6590 (value!201881 List!41166)) (DelimiterValue!13181 (value!201882 List!41166)) (DedentValue!6590 (value!201883 List!41166)) (NewLineValue!6590 (value!201884 List!41166)) (IntegerValue!19770 (value!201885 (_ BitVec 32)) (text!46577 List!41166)) (IntegerValue!19771 (value!201886 Int) (text!46578 List!41166)) (Times!6590) (Or!6590) (Equal!6590) (Minus!6590) (Broken!32954 (value!201887 List!41166)) (And!6590) (Div!6590) (LessEqual!6590) (Mod!6590) (Concat!17855) (Not!6590) (Plus!6590) (SpaceValue!6590 (value!201888 List!41166)) (IntegerValue!19772 (value!201889 Int) (text!46579 List!41166)) (StringLiteralValue!19771 (text!46580 List!41166)) (FloatLiteralValue!13181 (text!46581 List!41166)) (BytesLiteralValue!6590 (value!201890 List!41166)) (CommentValue!13181 (value!201891 List!41166)) (StringLiteralValue!19772 (value!201892 List!41166)) (ErrorTokenValue!6590 (msg!6651 List!41166)) )
))
(declare-datatypes ((C!22716 0))(
  ( (C!22717 (val!13452 Int)) )
))
(declare-datatypes ((Regex!11265 0))(
  ( (ElementMatch!11265 (c!672974 C!22716)) (Concat!17856 (regOne!23042 Regex!11265) (regTwo!23042 Regex!11265)) (EmptyExpr!11265) (Star!11265 (reg!11594 Regex!11265)) (EmptyLang!11265) (Union!11265 (regOne!23043 Regex!11265) (regTwo!23043 Regex!11265)) )
))
(declare-datatypes ((String!46668 0))(
  ( (String!46669 (value!201893 String)) )
))
(declare-datatypes ((List!41167 0))(
  ( (Nil!41043) (Cons!41043 (h!46463 C!22716) (t!314042 List!41167)) )
))
(declare-datatypes ((IArray!25147 0))(
  ( (IArray!25148 (innerList!12631 List!41167)) )
))
(declare-datatypes ((Conc!12571 0))(
  ( (Node!12571 (left!31569 Conc!12571) (right!31899 Conc!12571) (csize!25372 Int) (cheight!12782 Int)) (Leaf!19458 (xs!15877 IArray!25147) (csize!25373 Int)) (Empty!12571) )
))
(declare-datatypes ((BalanceConc!24736 0))(
  ( (BalanceConc!24737 (c!672975 Conc!12571)) )
))
(declare-datatypes ((TokenValueInjection!12608 0))(
  ( (TokenValueInjection!12609 (toValue!8788 Int) (toChars!8647 Int)) )
))
(declare-datatypes ((Rule!12520 0))(
  ( (Rule!12521 (regex!6360 Regex!11265) (tag!7220 String!46668) (isSeparator!6360 Bool) (transformation!6360 TokenValueInjection!12608)) )
))
(declare-datatypes ((Token!11858 0))(
  ( (Token!11859 (value!201894 TokenValue!6590) (rule!9240 Rule!12520) (size!30857 Int) (originalCharacters!6960 List!41167)) )
))
(declare-datatypes ((List!41168 0))(
  ( (Nil!41044) (Cons!41044 (h!46464 Token!11858) (t!314043 List!41168)) )
))
(declare-fun prefixTokens!80 () List!41168)

(declare-fun isEmpty!24334 (List!41168) Bool)

(assert (=> b!3866595 (= res!1565910 (not (isEmpty!24334 prefixTokens!80)))))

(declare-fun b!3866596 () Bool)

(declare-fun e!2391050 () Bool)

(declare-fun tp_is_empty!19501 () Bool)

(declare-fun tp!1172323 () Bool)

(assert (=> b!3866596 (= e!2391050 (and tp_is_empty!19501 tp!1172323))))

(declare-fun tp!1172313 () Bool)

(declare-fun suffixTokens!72 () List!41168)

(declare-fun e!2391068 () Bool)

(declare-fun b!3866597 () Bool)

(declare-fun e!2391047 () Bool)

(declare-fun inv!55201 (String!46668) Bool)

(declare-fun inv!55204 (TokenValueInjection!12608) Bool)

(assert (=> b!3866597 (= e!2391068 (and tp!1172313 (inv!55201 (tag!7220 (rule!9240 (h!46464 suffixTokens!72)))) (inv!55204 (transformation!6360 (rule!9240 (h!46464 suffixTokens!72)))) e!2391047))))

(declare-fun b!3866598 () Bool)

(declare-fun e!2391067 () Bool)

(declare-fun e!2391056 () Bool)

(assert (=> b!3866598 (= e!2391067 (not e!2391056))))

(declare-fun res!1565907 () Bool)

(assert (=> b!3866598 (=> res!1565907 e!2391056)))

(declare-fun lt!1344523 () List!41167)

(declare-fun lt!1344519 () List!41167)

(assert (=> b!3866598 (= res!1565907 (not (= lt!1344523 lt!1344519)))))

(declare-datatypes ((LexerInterface!5949 0))(
  ( (LexerInterfaceExt!5946 (__x!25398 Int)) (Lexer!5947) )
))
(declare-fun thiss!20629 () LexerInterface!5949)

(declare-datatypes ((List!41169 0))(
  ( (Nil!41045) (Cons!41045 (h!46465 Rule!12520) (t!314044 List!41169)) )
))
(declare-fun rules!2768 () List!41169)

(declare-datatypes ((tuple2!40258 0))(
  ( (tuple2!40259 (_1!23263 List!41168) (_2!23263 List!41167)) )
))
(declare-fun lt!1344506 () tuple2!40258)

(declare-datatypes ((tuple2!40260 0))(
  ( (tuple2!40261 (_1!23264 Token!11858) (_2!23264 List!41167)) )
))
(declare-datatypes ((Option!8778 0))(
  ( (None!8777) (Some!8777 (v!39075 tuple2!40260)) )
))
(declare-fun lt!1344527 () Option!8778)

(declare-fun lexList!1717 (LexerInterface!5949 List!41169 List!41167) tuple2!40258)

(assert (=> b!3866598 (= lt!1344506 (lexList!1717 thiss!20629 rules!2768 (_2!23264 (v!39075 lt!1344527))))))

(declare-fun lt!1344503 () TokenValue!6590)

(declare-fun lt!1344507 () Int)

(declare-fun lt!1344520 () List!41167)

(declare-fun lt!1344510 () List!41167)

(assert (=> b!3866598 (and (= (size!30857 (_1!23264 (v!39075 lt!1344527))) lt!1344507) (= (originalCharacters!6960 (_1!23264 (v!39075 lt!1344527))) lt!1344510) (= (v!39075 lt!1344527) (tuple2!40261 (Token!11859 lt!1344503 (rule!9240 (_1!23264 (v!39075 lt!1344527))) lt!1344507 lt!1344510) lt!1344520)))))

(declare-fun size!30858 (List!41167) Int)

(assert (=> b!3866598 (= lt!1344507 (size!30858 lt!1344510))))

(declare-fun e!2391052 () Bool)

(assert (=> b!3866598 e!2391052))

(declare-fun res!1565913 () Bool)

(assert (=> b!3866598 (=> (not res!1565913) (not e!2391052))))

(assert (=> b!3866598 (= res!1565913 (= (value!201894 (_1!23264 (v!39075 lt!1344527))) lt!1344503))))

(declare-fun apply!9603 (TokenValueInjection!12608 BalanceConc!24736) TokenValue!6590)

(declare-fun seqFromList!4631 (List!41167) BalanceConc!24736)

(assert (=> b!3866598 (= lt!1344503 (apply!9603 (transformation!6360 (rule!9240 (_1!23264 (v!39075 lt!1344527)))) (seqFromList!4631 lt!1344510)))))

(assert (=> b!3866598 (= (_2!23264 (v!39075 lt!1344527)) lt!1344520)))

(declare-datatypes ((Unit!58761 0))(
  ( (Unit!58762) )
))
(declare-fun lt!1344516 () Unit!58761)

(declare-fun lemmaSamePrefixThenSameSuffix!1680 (List!41167 List!41167 List!41167 List!41167 List!41167) Unit!58761)

(assert (=> b!3866598 (= lt!1344516 (lemmaSamePrefixThenSameSuffix!1680 lt!1344510 (_2!23264 (v!39075 lt!1344527)) lt!1344510 lt!1344520 lt!1344519))))

(declare-fun getSuffix!1914 (List!41167 List!41167) List!41167)

(assert (=> b!3866598 (= lt!1344520 (getSuffix!1914 lt!1344519 lt!1344510))))

(declare-fun isPrefix!3459 (List!41167 List!41167) Bool)

(assert (=> b!3866598 (isPrefix!3459 lt!1344510 lt!1344523)))

(declare-fun ++!10477 (List!41167 List!41167) List!41167)

(assert (=> b!3866598 (= lt!1344523 (++!10477 lt!1344510 (_2!23264 (v!39075 lt!1344527))))))

(declare-fun lt!1344529 () Unit!58761)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2322 (List!41167 List!41167) Unit!58761)

(assert (=> b!3866598 (= lt!1344529 (lemmaConcatTwoListThenFirstIsPrefix!2322 lt!1344510 (_2!23264 (v!39075 lt!1344527))))))

(declare-fun list!15272 (BalanceConc!24736) List!41167)

(declare-fun charsOf!4188 (Token!11858) BalanceConc!24736)

(assert (=> b!3866598 (= lt!1344510 (list!15272 (charsOf!4188 (_1!23264 (v!39075 lt!1344527)))))))

(declare-fun ruleValid!2312 (LexerInterface!5949 Rule!12520) Bool)

(assert (=> b!3866598 (ruleValid!2312 thiss!20629 (rule!9240 (_1!23264 (v!39075 lt!1344527))))))

(declare-fun lt!1344534 () Unit!58761)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1392 (LexerInterface!5949 Rule!12520 List!41169) Unit!58761)

(assert (=> b!3866598 (= lt!1344534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1392 thiss!20629 (rule!9240 (_1!23264 (v!39075 lt!1344527))) rules!2768))))

(declare-fun lt!1344509 () Unit!58761)

(declare-fun lemmaCharactersSize!1021 (Token!11858) Unit!58761)

(assert (=> b!3866598 (= lt!1344509 (lemmaCharactersSize!1021 (_1!23264 (v!39075 lt!1344527))))))

(declare-fun b!3866599 () Bool)

(declare-fun e!2391076 () Unit!58761)

(declare-fun Unit!58763 () Unit!58761)

(assert (=> b!3866599 (= e!2391076 Unit!58763)))

(declare-fun b!3866600 () Bool)

(declare-fun res!1565905 () Bool)

(assert (=> b!3866600 (=> (not res!1565905) (not e!2391077))))

(declare-fun isEmpty!24335 (List!41169) Bool)

(assert (=> b!3866600 (= res!1565905 (not (isEmpty!24335 rules!2768)))))

(declare-fun b!3866601 () Bool)

(declare-fun e!2391059 () Bool)

(declare-fun e!2391062 () Bool)

(assert (=> b!3866601 (= e!2391059 e!2391062)))

(declare-fun res!1565909 () Bool)

(assert (=> b!3866601 (=> (not res!1565909) (not e!2391062))))

(declare-fun lt!1344518 () tuple2!40258)

(declare-fun suffix!1176 () List!41167)

(assert (=> b!3866601 (= res!1565909 (= (lexList!1717 thiss!20629 rules!2768 suffix!1176) lt!1344518))))

(declare-fun suffixResult!91 () List!41167)

(assert (=> b!3866601 (= lt!1344518 (tuple2!40259 suffixTokens!72 suffixResult!91))))

(declare-fun b!3866602 () Bool)

(declare-fun e!2391049 () Unit!58761)

(declare-fun Unit!58764 () Unit!58761)

(assert (=> b!3866602 (= e!2391049 Unit!58764)))

(declare-fun lt!1344513 () Unit!58761)

(declare-fun lt!1344517 () tuple2!40260)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!444 (List!41167 List!41167 List!41167 List!41167) Unit!58761)

(assert (=> b!3866602 (= lt!1344513 (lemmaConcatSameAndSameSizesThenSameLists!444 lt!1344510 (_2!23264 (v!39075 lt!1344527)) lt!1344510 (_2!23264 lt!1344517)))))

(assert (=> b!3866602 (= (_2!23264 (v!39075 lt!1344527)) (_2!23264 lt!1344517))))

(declare-fun lt!1344505 () Unit!58761)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!20 (LexerInterface!5949 List!41169 List!41167 List!41167 List!41168 List!41167) Unit!58761)

(assert (=> b!3866602 (= lt!1344505 (lemmaLexWithSmallerInputCannotProduceSameResults!20 thiss!20629 rules!2768 suffix!1176 (_2!23264 lt!1344517) suffixTokens!72 suffixResult!91))))

(declare-fun res!1565915 () Bool)

(declare-fun call!282654 () tuple2!40258)

(assert (=> b!3866602 (= res!1565915 (not (= call!282654 lt!1344518)))))

(declare-fun e!2391066 () Bool)

(assert (=> b!3866602 (=> (not res!1565915) (not e!2391066))))

(assert (=> b!3866602 e!2391066))

(declare-fun b!3866603 () Bool)

(declare-fun Unit!58765 () Unit!58761)

(assert (=> b!3866603 (= e!2391076 Unit!58765)))

(declare-fun lt!1344514 () Unit!58761)

(declare-fun prefix!426 () List!41167)

(assert (=> b!3866603 (= lt!1344514 (lemmaConcatTwoListThenFirstIsPrefix!2322 prefix!426 suffix!1176))))

(assert (=> b!3866603 (isPrefix!3459 prefix!426 lt!1344519)))

(declare-fun lt!1344515 () Unit!58761)

(declare-fun lemmaIsPrefixSameLengthThenSameList!711 (List!41167 List!41167 List!41167) Unit!58761)

(assert (=> b!3866603 (= lt!1344515 (lemmaIsPrefixSameLengthThenSameList!711 lt!1344510 prefix!426 lt!1344519))))

(assert (=> b!3866603 (= lt!1344510 prefix!426)))

(declare-fun lt!1344525 () Unit!58761)

(assert (=> b!3866603 (= lt!1344525 (lemmaSamePrefixThenSameSuffix!1680 lt!1344510 (_2!23264 (v!39075 lt!1344527)) prefix!426 suffix!1176 lt!1344519))))

(assert (=> b!3866603 false))

(declare-fun e!2391072 () Bool)

(declare-fun tp!1172321 () Bool)

(declare-fun b!3866604 () Bool)

(declare-fun e!2391053 () Bool)

(assert (=> b!3866604 (= e!2391053 (and tp!1172321 (inv!55201 (tag!7220 (h!46465 rules!2768))) (inv!55204 (transformation!6360 (h!46465 rules!2768))) e!2391072))))

(declare-fun b!3866605 () Bool)

(assert (=> b!3866605 (= e!2391077 e!2391059)))

(declare-fun res!1565904 () Bool)

(assert (=> b!3866605 (=> (not res!1565904) (not e!2391059))))

(declare-fun lt!1344526 () List!41168)

(declare-fun lt!1344528 () tuple2!40258)

(assert (=> b!3866605 (= res!1565904 (= lt!1344528 (tuple2!40259 lt!1344526 suffixResult!91)))))

(assert (=> b!3866605 (= lt!1344528 (lexList!1717 thiss!20629 rules!2768 lt!1344519))))

(declare-fun ++!10478 (List!41168 List!41168) List!41168)

(assert (=> b!3866605 (= lt!1344526 (++!10478 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3866605 (= lt!1344519 (++!10477 prefix!426 suffix!1176))))

(declare-fun b!3866606 () Bool)

(declare-fun e!2391078 () Bool)

(declare-fun tp!1172326 () Bool)

(assert (=> b!3866606 (= e!2391078 (and tp_is_empty!19501 tp!1172326))))

(declare-fun b!3866607 () Bool)

(declare-fun Unit!58766 () Unit!58761)

(assert (=> b!3866607 (= e!2391049 Unit!58766)))

(declare-fun lt!1344508 () List!41168)

(declare-fun lt!1344524 () Unit!58761)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!20 (LexerInterface!5949 List!41169 List!41167 List!41167 List!41168 List!41167 List!41168) Unit!58761)

(assert (=> b!3866607 (= lt!1344524 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!20 thiss!20629 rules!2768 suffix!1176 (_2!23264 lt!1344517) suffixTokens!72 suffixResult!91 lt!1344508))))

(declare-fun res!1565917 () Bool)

(assert (=> b!3866607 (= res!1565917 (not (= call!282654 (tuple2!40259 (++!10478 lt!1344508 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2391071 () Bool)

(assert (=> b!3866607 (=> (not res!1565917) (not e!2391071))))

(assert (=> b!3866607 e!2391071))

(declare-fun b!3866608 () Bool)

(assert (=> b!3866608 (= e!2391052 (= (size!30857 (_1!23264 (v!39075 lt!1344527))) (size!30858 (originalCharacters!6960 (_1!23264 (v!39075 lt!1344527))))))))

(declare-fun e!2391065 () Bool)

(declare-fun tp!1172325 () Bool)

(declare-fun e!2391073 () Bool)

(declare-fun b!3866609 () Bool)

(declare-fun inv!55205 (Token!11858) Bool)

(assert (=> b!3866609 (= e!2391065 (and (inv!55205 (h!46464 prefixTokens!80)) e!2391073 tp!1172325))))

(declare-fun b!3866610 () Bool)

(declare-fun res!1565906 () Bool)

(assert (=> b!3866610 (=> (not res!1565906) (not e!2391077))))

(declare-fun isEmpty!24336 (List!41167) Bool)

(assert (=> b!3866610 (= res!1565906 (not (isEmpty!24336 prefix!426)))))

(declare-fun b!3866611 () Bool)

(declare-fun e!2391055 () Bool)

(declare-fun tp!1172327 () Bool)

(assert (=> b!3866611 (= e!2391055 (and tp_is_empty!19501 tp!1172327))))

(declare-fun tp!1172320 () Bool)

(declare-fun e!2391058 () Bool)

(declare-fun e!2391064 () Bool)

(declare-fun b!3866612 () Bool)

(assert (=> b!3866612 (= e!2391064 (and tp!1172320 (inv!55201 (tag!7220 (rule!9240 (h!46464 prefixTokens!80)))) (inv!55204 (transformation!6360 (rule!9240 (h!46464 prefixTokens!80)))) e!2391058))))

(declare-fun b!3866613 () Bool)

(declare-fun res!1565918 () Bool)

(assert (=> b!3866613 (=> res!1565918 e!2391056)))

(assert (=> b!3866613 (= res!1565918 (or (not (= lt!1344506 (tuple2!40259 (_1!23263 lt!1344506) (_2!23263 lt!1344506)))) (= (_2!23264 (v!39075 lt!1344527)) suffix!1176)))))

(declare-fun b!3866614 () Bool)

(declare-fun tp!1172322 () Bool)

(declare-fun inv!21 (TokenValue!6590) Bool)

(assert (=> b!3866614 (= e!2391073 (and (inv!21 (value!201894 (h!46464 prefixTokens!80))) e!2391064 tp!1172322))))

(declare-fun b!3866615 () Bool)

(assert (=> b!3866615 (= e!2391071 false)))

(declare-fun b!3866616 () Bool)

(declare-fun e!2391060 () Bool)

(declare-fun tp!1172312 () Bool)

(assert (=> b!3866616 (= e!2391060 (and e!2391053 tp!1172312))))

(declare-fun b!3866617 () Bool)

(declare-fun e!2391061 () Unit!58761)

(declare-fun Unit!58767 () Unit!58761)

(assert (=> b!3866617 (= e!2391061 Unit!58767)))

(declare-fun lt!1344511 () Int)

(assert (=> b!3866617 (= lt!1344511 (size!30858 lt!1344519))))

(declare-fun lt!1344504 () Unit!58761)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1233 (LexerInterface!5949 List!41169 List!41167 List!41167 List!41167 Rule!12520) Unit!58761)

(assert (=> b!3866617 (= lt!1344504 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1233 thiss!20629 rules!2768 lt!1344510 lt!1344519 (_2!23264 (v!39075 lt!1344527)) (rule!9240 (_1!23264 (v!39075 lt!1344527)))))))

(declare-fun maxPrefixOneRule!2335 (LexerInterface!5949 Rule!12520 List!41167) Option!8778)

(assert (=> b!3866617 (= (maxPrefixOneRule!2335 thiss!20629 (rule!9240 (_1!23264 (v!39075 lt!1344527))) lt!1344519) (Some!8777 (tuple2!40261 (Token!11859 lt!1344503 (rule!9240 (_1!23264 (v!39075 lt!1344527))) lt!1344507 lt!1344510) (_2!23264 (v!39075 lt!1344527)))))))

(declare-fun get!13580 (Option!8778) tuple2!40260)

(assert (=> b!3866617 (= lt!1344517 (get!13580 lt!1344527))))

(declare-fun c!672971 () Bool)

(declare-fun lt!1344532 () Int)

(assert (=> b!3866617 (= c!672971 (< (size!30858 (_2!23264 lt!1344517)) lt!1344532))))

(declare-fun lt!1344533 () Unit!58761)

(declare-fun e!2391070 () Unit!58761)

(assert (=> b!3866617 (= lt!1344533 e!2391070)))

(assert (=> b!3866617 false))

(declare-fun b!3866618 () Bool)

(declare-fun res!1565908 () Bool)

(declare-fun e!2391048 () Bool)

(assert (=> b!3866618 (=> res!1565908 e!2391048)))

(declare-fun head!8170 (List!41168) Token!11858)

(assert (=> b!3866618 (= res!1565908 (not (= (head!8170 prefixTokens!80) (_1!23264 (v!39075 lt!1344527)))))))

(assert (=> b!3866619 (= e!2391072 (and tp!1172317 tp!1172314))))

(declare-fun e!2391057 () Bool)

(declare-fun e!2391069 () Bool)

(declare-fun tp!1172328 () Bool)

(declare-fun b!3866620 () Bool)

(assert (=> b!3866620 (= e!2391057 (and (inv!55205 (h!46464 suffixTokens!72)) e!2391069 tp!1172328))))

(declare-fun b!3866621 () Bool)

(declare-fun res!1565916 () Bool)

(assert (=> b!3866621 (=> (not res!1565916) (not e!2391077))))

(declare-fun rulesInvariant!5292 (LexerInterface!5949 List!41169) Bool)

(assert (=> b!3866621 (= res!1565916 (rulesInvariant!5292 thiss!20629 rules!2768))))

(declare-fun b!3866623 () Bool)

(declare-fun tp!1172316 () Bool)

(assert (=> b!3866623 (= e!2391069 (and (inv!21 (value!201894 (h!46464 suffixTokens!72))) e!2391068 tp!1172316))))

(declare-fun res!1565912 () Bool)

(assert (=> start!362752 (=> (not res!1565912) (not e!2391077))))

(get-info :version)

(assert (=> start!362752 (= res!1565912 ((_ is Lexer!5947) thiss!20629))))

(assert (=> start!362752 e!2391077))

(assert (=> start!362752 e!2391055))

(assert (=> start!362752 true))

(assert (=> start!362752 e!2391050))

(assert (=> start!362752 e!2391060))

(assert (=> start!362752 e!2391065))

(assert (=> start!362752 e!2391057))

(assert (=> start!362752 e!2391078))

(assert (=> b!3866622 (= e!2391047 (and tp!1172315 tp!1172319))))

(declare-fun b!3866624 () Bool)

(assert (=> b!3866624 (= e!2391062 e!2391067)))

(declare-fun res!1565919 () Bool)

(assert (=> b!3866624 (=> (not res!1565919) (not e!2391067))))

(assert (=> b!3866624 (= res!1565919 ((_ is Some!8777) lt!1344527))))

(declare-fun maxPrefix!3253 (LexerInterface!5949 List!41169 List!41167) Option!8778)

(assert (=> b!3866624 (= lt!1344527 (maxPrefix!3253 thiss!20629 rules!2768 lt!1344519))))

(declare-fun b!3866625 () Bool)

(declare-fun Unit!58768 () Unit!58761)

(assert (=> b!3866625 (= e!2391070 Unit!58768)))

(declare-fun b!3866626 () Bool)

(assert (=> b!3866626 (= e!2391066 false)))

(declare-fun bm!282649 () Bool)

(assert (=> bm!282649 (= call!282654 (lexList!1717 thiss!20629 rules!2768 (_2!23264 lt!1344517)))))

(declare-fun b!3866627 () Bool)

(declare-fun res!1565911 () Bool)

(assert (=> b!3866627 (=> res!1565911 e!2391056)))

(assert (=> b!3866627 (= res!1565911 (not (= lt!1344528 (tuple2!40259 (++!10478 (Cons!41044 (_1!23264 (v!39075 lt!1344527)) Nil!41044) (_1!23263 lt!1344506)) (_2!23263 lt!1344506)))))))

(declare-fun b!3866628 () Bool)

(declare-fun c!672973 () Bool)

(assert (=> b!3866628 (= c!672973 (isEmpty!24334 lt!1344508))))

(declare-fun tail!5887 (List!41168) List!41168)

(assert (=> b!3866628 (= lt!1344508 (tail!5887 prefixTokens!80))))

(assert (=> b!3866628 (= e!2391070 e!2391049)))

(assert (=> b!3866629 (= e!2391058 (and tp!1172318 tp!1172324))))

(declare-fun b!3866630 () Bool)

(declare-fun lt!1344521 () Int)

(assert (=> b!3866630 (= e!2391048 (or (>= lt!1344507 lt!1344521) (>= lt!1344521 lt!1344507)))))

(assert (=> b!3866630 (= lt!1344521 (size!30858 prefix!426))))

(assert (=> b!3866630 (isPrefix!3459 lt!1344510 prefix!426)))

(declare-fun lt!1344512 () Unit!58761)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!209 (List!41167 List!41167 List!41167) Unit!58761)

(assert (=> b!3866630 (= lt!1344512 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!209 prefix!426 lt!1344510 lt!1344519))))

(assert (=> b!3866630 (isPrefix!3459 prefix!426 lt!1344519)))

(declare-fun lt!1344522 () Unit!58761)

(assert (=> b!3866630 (= lt!1344522 (lemmaConcatTwoListThenFirstIsPrefix!2322 prefix!426 suffix!1176))))

(declare-fun b!3866631 () Bool)

(assert (=> b!3866631 (= e!2391056 e!2391048)))

(declare-fun res!1565914 () Bool)

(assert (=> b!3866631 (=> res!1565914 e!2391048)))

(declare-fun lt!1344531 () Int)

(assert (=> b!3866631 (= res!1565914 (<= lt!1344531 lt!1344532))))

(declare-fun lt!1344535 () Unit!58761)

(assert (=> b!3866631 (= lt!1344535 e!2391076)))

(declare-fun c!672972 () Bool)

(assert (=> b!3866631 (= c!672972 (= lt!1344531 lt!1344532))))

(declare-fun lt!1344530 () Unit!58761)

(assert (=> b!3866631 (= lt!1344530 e!2391061)))

(declare-fun c!672970 () Bool)

(assert (=> b!3866631 (= c!672970 (< lt!1344531 lt!1344532))))

(assert (=> b!3866631 (= lt!1344532 (size!30858 suffix!1176))))

(assert (=> b!3866631 (= lt!1344531 (size!30858 (_2!23264 (v!39075 lt!1344527))))))

(declare-fun b!3866632 () Bool)

(declare-fun Unit!58769 () Unit!58761)

(assert (=> b!3866632 (= e!2391061 Unit!58769)))

(assert (= (and start!362752 res!1565912) b!3866600))

(assert (= (and b!3866600 res!1565905) b!3866621))

(assert (= (and b!3866621 res!1565916) b!3866595))

(assert (= (and b!3866595 res!1565910) b!3866610))

(assert (= (and b!3866610 res!1565906) b!3866605))

(assert (= (and b!3866605 res!1565904) b!3866601))

(assert (= (and b!3866601 res!1565909) b!3866624))

(assert (= (and b!3866624 res!1565919) b!3866598))

(assert (= (and b!3866598 res!1565913) b!3866608))

(assert (= (and b!3866598 (not res!1565907)) b!3866627))

(assert (= (and b!3866627 (not res!1565911)) b!3866613))

(assert (= (and b!3866613 (not res!1565918)) b!3866631))

(assert (= (and b!3866631 c!672970) b!3866617))

(assert (= (and b!3866631 (not c!672970)) b!3866632))

(assert (= (and b!3866617 c!672971) b!3866628))

(assert (= (and b!3866617 (not c!672971)) b!3866625))

(assert (= (and b!3866628 c!672973) b!3866602))

(assert (= (and b!3866628 (not c!672973)) b!3866607))

(assert (= (and b!3866602 res!1565915) b!3866626))

(assert (= (and b!3866607 res!1565917) b!3866615))

(assert (= (or b!3866602 b!3866607) bm!282649))

(assert (= (and b!3866631 c!672972) b!3866603))

(assert (= (and b!3866631 (not c!672972)) b!3866599))

(assert (= (and b!3866631 (not res!1565914)) b!3866618))

(assert (= (and b!3866618 (not res!1565908)) b!3866630))

(assert (= (and start!362752 ((_ is Cons!41043) suffixResult!91)) b!3866611))

(assert (= (and start!362752 ((_ is Cons!41043) suffix!1176)) b!3866596))

(assert (= b!3866604 b!3866619))

(assert (= b!3866616 b!3866604))

(assert (= (and start!362752 ((_ is Cons!41045) rules!2768)) b!3866616))

(assert (= b!3866612 b!3866629))

(assert (= b!3866614 b!3866612))

(assert (= b!3866609 b!3866614))

(assert (= (and start!362752 ((_ is Cons!41044) prefixTokens!80)) b!3866609))

(assert (= b!3866597 b!3866622))

(assert (= b!3866623 b!3866597))

(assert (= b!3866620 b!3866623))

(assert (= (and start!362752 ((_ is Cons!41044) suffixTokens!72)) b!3866620))

(assert (= (and start!362752 ((_ is Cons!41043) prefix!426)) b!3866606))

(declare-fun m!4422167 () Bool)

(assert (=> b!3866630 m!4422167))

(declare-fun m!4422169 () Bool)

(assert (=> b!3866630 m!4422169))

(declare-fun m!4422171 () Bool)

(assert (=> b!3866630 m!4422171))

(declare-fun m!4422173 () Bool)

(assert (=> b!3866630 m!4422173))

(declare-fun m!4422175 () Bool)

(assert (=> b!3866630 m!4422175))

(declare-fun m!4422177 () Bool)

(assert (=> b!3866610 m!4422177))

(declare-fun m!4422179 () Bool)

(assert (=> b!3866621 m!4422179))

(declare-fun m!4422181 () Bool)

(assert (=> b!3866627 m!4422181))

(declare-fun m!4422183 () Bool)

(assert (=> b!3866597 m!4422183))

(declare-fun m!4422185 () Bool)

(assert (=> b!3866597 m!4422185))

(declare-fun m!4422187 () Bool)

(assert (=> b!3866623 m!4422187))

(declare-fun m!4422189 () Bool)

(assert (=> b!3866624 m!4422189))

(declare-fun m!4422191 () Bool)

(assert (=> b!3866602 m!4422191))

(declare-fun m!4422193 () Bool)

(assert (=> b!3866602 m!4422193))

(assert (=> b!3866603 m!4422171))

(assert (=> b!3866603 m!4422167))

(declare-fun m!4422195 () Bool)

(assert (=> b!3866603 m!4422195))

(declare-fun m!4422197 () Bool)

(assert (=> b!3866603 m!4422197))

(declare-fun m!4422199 () Bool)

(assert (=> b!3866609 m!4422199))

(declare-fun m!4422201 () Bool)

(assert (=> b!3866618 m!4422201))

(declare-fun m!4422203 () Bool)

(assert (=> b!3866600 m!4422203))

(declare-fun m!4422205 () Bool)

(assert (=> b!3866612 m!4422205))

(declare-fun m!4422207 () Bool)

(assert (=> b!3866612 m!4422207))

(declare-fun m!4422209 () Bool)

(assert (=> b!3866598 m!4422209))

(declare-fun m!4422211 () Bool)

(assert (=> b!3866598 m!4422211))

(declare-fun m!4422213 () Bool)

(assert (=> b!3866598 m!4422213))

(declare-fun m!4422215 () Bool)

(assert (=> b!3866598 m!4422215))

(declare-fun m!4422217 () Bool)

(assert (=> b!3866598 m!4422217))

(declare-fun m!4422219 () Bool)

(assert (=> b!3866598 m!4422219))

(declare-fun m!4422221 () Bool)

(assert (=> b!3866598 m!4422221))

(declare-fun m!4422223 () Bool)

(assert (=> b!3866598 m!4422223))

(assert (=> b!3866598 m!4422209))

(declare-fun m!4422225 () Bool)

(assert (=> b!3866598 m!4422225))

(declare-fun m!4422227 () Bool)

(assert (=> b!3866598 m!4422227))

(declare-fun m!4422229 () Bool)

(assert (=> b!3866598 m!4422229))

(assert (=> b!3866598 m!4422225))

(declare-fun m!4422231 () Bool)

(assert (=> b!3866598 m!4422231))

(declare-fun m!4422233 () Bool)

(assert (=> b!3866598 m!4422233))

(declare-fun m!4422235 () Bool)

(assert (=> b!3866598 m!4422235))

(declare-fun m!4422237 () Bool)

(assert (=> b!3866608 m!4422237))

(declare-fun m!4422239 () Bool)

(assert (=> b!3866601 m!4422239))

(declare-fun m!4422241 () Bool)

(assert (=> b!3866604 m!4422241))

(declare-fun m!4422243 () Bool)

(assert (=> b!3866604 m!4422243))

(declare-fun m!4422245 () Bool)

(assert (=> b!3866607 m!4422245))

(declare-fun m!4422247 () Bool)

(assert (=> b!3866607 m!4422247))

(declare-fun m!4422249 () Bool)

(assert (=> b!3866631 m!4422249))

(declare-fun m!4422251 () Bool)

(assert (=> b!3866631 m!4422251))

(declare-fun m!4422253 () Bool)

(assert (=> b!3866605 m!4422253))

(declare-fun m!4422255 () Bool)

(assert (=> b!3866605 m!4422255))

(declare-fun m!4422257 () Bool)

(assert (=> b!3866605 m!4422257))

(declare-fun m!4422259 () Bool)

(assert (=> bm!282649 m!4422259))

(declare-fun m!4422261 () Bool)

(assert (=> b!3866614 m!4422261))

(declare-fun m!4422263 () Bool)

(assert (=> b!3866617 m!4422263))

(declare-fun m!4422265 () Bool)

(assert (=> b!3866617 m!4422265))

(declare-fun m!4422267 () Bool)

(assert (=> b!3866617 m!4422267))

(declare-fun m!4422269 () Bool)

(assert (=> b!3866617 m!4422269))

(declare-fun m!4422271 () Bool)

(assert (=> b!3866617 m!4422271))

(declare-fun m!4422273 () Bool)

(assert (=> b!3866620 m!4422273))

(declare-fun m!4422275 () Bool)

(assert (=> b!3866595 m!4422275))

(declare-fun m!4422277 () Bool)

(assert (=> b!3866628 m!4422277))

(declare-fun m!4422279 () Bool)

(assert (=> b!3866628 m!4422279))

(check-sat (not b_next!104933) (not b!3866597) (not b_next!104935) (not b!3866614) b_and!289691 (not bm!282649) tp_is_empty!19501 (not b!3866611) (not b!3866602) (not b!3866623) (not b!3866618) (not b!3866621) b_and!289689 (not b!3866605) (not b!3866596) (not b!3866604) (not b!3866620) b_and!289683 (not b_next!104925) (not b_next!104927) (not b!3866598) (not b!3866628) b_and!289687 (not b!3866607) (not b!3866624) (not b!3866616) (not b!3866601) (not b!3866610) (not b_next!104931) (not b!3866603) (not b!3866630) b_and!289685 (not b!3866617) (not b!3866600) (not b!3866609) (not b!3866612) (not b!3866608) (not b!3866627) (not b!3866595) (not b_next!104929) (not b!3866606) (not b!3866631) b_and!289693)
(check-sat (not b_next!104933) (not b_next!104935) b_and!289689 b_and!289687 (not b_next!104931) b_and!289691 b_and!289685 (not b_next!104929) b_and!289693 b_and!289683 (not b_next!104925) (not b_next!104927))
