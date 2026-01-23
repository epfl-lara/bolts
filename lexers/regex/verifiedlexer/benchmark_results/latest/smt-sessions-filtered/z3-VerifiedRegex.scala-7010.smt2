; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372316 () Bool)

(assert start!372316)

(declare-fun b!3958769 () Bool)

(declare-fun b_free!109173 () Bool)

(declare-fun b_next!109877 () Bool)

(assert (=> b!3958769 (= b_free!109173 (not b_next!109877))))

(declare-fun tp!1206507 () Bool)

(declare-fun b_and!303847 () Bool)

(assert (=> b!3958769 (= tp!1206507 b_and!303847)))

(declare-fun b_free!109175 () Bool)

(declare-fun b_next!109879 () Bool)

(assert (=> b!3958769 (= b_free!109175 (not b_next!109879))))

(declare-fun tp!1206515 () Bool)

(declare-fun b_and!303849 () Bool)

(assert (=> b!3958769 (= tp!1206515 b_and!303849)))

(declare-fun b!3958786 () Bool)

(declare-fun b_free!109177 () Bool)

(declare-fun b_next!109881 () Bool)

(assert (=> b!3958786 (= b_free!109177 (not b_next!109881))))

(declare-fun tp!1206508 () Bool)

(declare-fun b_and!303851 () Bool)

(assert (=> b!3958786 (= tp!1206508 b_and!303851)))

(declare-fun b_free!109179 () Bool)

(declare-fun b_next!109883 () Bool)

(assert (=> b!3958786 (= b_free!109179 (not b_next!109883))))

(declare-fun tp!1206505 () Bool)

(declare-fun b_and!303853 () Bool)

(assert (=> b!3958786 (= tp!1206505 b_and!303853)))

(declare-fun b!3958771 () Bool)

(declare-fun b_free!109181 () Bool)

(declare-fun b_next!109885 () Bool)

(assert (=> b!3958771 (= b_free!109181 (not b_next!109885))))

(declare-fun tp!1206517 () Bool)

(declare-fun b_and!303855 () Bool)

(assert (=> b!3958771 (= tp!1206517 b_and!303855)))

(declare-fun b_free!109183 () Bool)

(declare-fun b_next!109887 () Bool)

(assert (=> b!3958771 (= b_free!109183 (not b_next!109887))))

(declare-fun tp!1206504 () Bool)

(declare-fun b_and!303857 () Bool)

(assert (=> b!3958771 (= tp!1206504 b_and!303857)))

(declare-fun b!3958768 () Bool)

(declare-fun e!2451101 () Bool)

(declare-fun e!2451109 () Bool)

(assert (=> b!3958768 (= e!2451101 e!2451109)))

(declare-fun res!1602140 () Bool)

(assert (=> b!3958768 (=> res!1602140 e!2451109)))

(declare-datatypes ((List!42277 0))(
  ( (Nil!42153) (Cons!42153 (h!47573 (_ BitVec 16)) (t!329628 List!42277)) )
))
(declare-datatypes ((TokenValue!6838 0))(
  ( (FloatLiteralValue!13676 (text!48311 List!42277)) (TokenValueExt!6837 (__x!25893 Int)) (Broken!34190 (value!208936 List!42277)) (Object!6961) (End!6838) (Def!6838) (Underscore!6838) (Match!6838) (Else!6838) (Error!6838) (Case!6838) (If!6838) (Extends!6838) (Abstract!6838) (Class!6838) (Val!6838) (DelimiterValue!13676 (del!6898 List!42277)) (KeywordValue!6844 (value!208937 List!42277)) (CommentValue!13676 (value!208938 List!42277)) (WhitespaceValue!13676 (value!208939 List!42277)) (IndentationValue!6838 (value!208940 List!42277)) (String!47907) (Int32!6838) (Broken!34191 (value!208941 List!42277)) (Boolean!6839) (Unit!60635) (OperatorValue!6841 (op!6898 List!42277)) (IdentifierValue!13676 (value!208942 List!42277)) (IdentifierValue!13677 (value!208943 List!42277)) (WhitespaceValue!13677 (value!208944 List!42277)) (True!13676) (False!13676) (Broken!34192 (value!208945 List!42277)) (Broken!34193 (value!208946 List!42277)) (True!13677) (RightBrace!6838) (RightBracket!6838) (Colon!6838) (Null!6838) (Comma!6838) (LeftBracket!6838) (False!13677) (LeftBrace!6838) (ImaginaryLiteralValue!6838 (text!48312 List!42277)) (StringLiteralValue!20514 (value!208947 List!42277)) (EOFValue!6838 (value!208948 List!42277)) (IdentValue!6838 (value!208949 List!42277)) (DelimiterValue!13677 (value!208950 List!42277)) (DedentValue!6838 (value!208951 List!42277)) (NewLineValue!6838 (value!208952 List!42277)) (IntegerValue!20514 (value!208953 (_ BitVec 32)) (text!48313 List!42277)) (IntegerValue!20515 (value!208954 Int) (text!48314 List!42277)) (Times!6838) (Or!6838) (Equal!6838) (Minus!6838) (Broken!34194 (value!208955 List!42277)) (And!6838) (Div!6838) (LessEqual!6838) (Mod!6838) (Concat!18351) (Not!6838) (Plus!6838) (SpaceValue!6838 (value!208956 List!42277)) (IntegerValue!20516 (value!208957 Int) (text!48315 List!42277)) (StringLiteralValue!20515 (text!48316 List!42277)) (FloatLiteralValue!13677 (text!48317 List!42277)) (BytesLiteralValue!6838 (value!208958 List!42277)) (CommentValue!13677 (value!208959 List!42277)) (StringLiteralValue!20516 (value!208960 List!42277)) (ErrorTokenValue!6838 (msg!6899 List!42277)) )
))
(declare-datatypes ((C!23212 0))(
  ( (C!23213 (val!13700 Int)) )
))
(declare-datatypes ((Regex!11513 0))(
  ( (ElementMatch!11513 (c!686992 C!23212)) (Concat!18352 (regOne!23538 Regex!11513) (regTwo!23538 Regex!11513)) (EmptyExpr!11513) (Star!11513 (reg!11842 Regex!11513)) (EmptyLang!11513) (Union!11513 (regOne!23539 Regex!11513) (regTwo!23539 Regex!11513)) )
))
(declare-datatypes ((String!47908 0))(
  ( (String!47909 (value!208961 String)) )
))
(declare-datatypes ((List!42278 0))(
  ( (Nil!42154) (Cons!42154 (h!47574 C!23212) (t!329629 List!42278)) )
))
(declare-datatypes ((IArray!25643 0))(
  ( (IArray!25644 (innerList!12879 List!42278)) )
))
(declare-datatypes ((Conc!12819 0))(
  ( (Node!12819 (left!32005 Conc!12819) (right!32335 Conc!12819) (csize!25868 Int) (cheight!13030 Int)) (Leaf!19830 (xs!16125 IArray!25643) (csize!25869 Int)) (Empty!12819) )
))
(declare-datatypes ((BalanceConc!25232 0))(
  ( (BalanceConc!25233 (c!686993 Conc!12819)) )
))
(declare-datatypes ((TokenValueInjection!13104 0))(
  ( (TokenValueInjection!13105 (toValue!9088 Int) (toChars!8947 Int)) )
))
(declare-datatypes ((Rule!13016 0))(
  ( (Rule!13017 (regex!6608 Regex!11513) (tag!7468 String!47908) (isSeparator!6608 Bool) (transformation!6608 TokenValueInjection!13104)) )
))
(declare-datatypes ((Token!12354 0))(
  ( (Token!12355 (value!208962 TokenValue!6838) (rule!9584 Rule!13016) (size!31570 Int) (originalCharacters!7208 List!42278)) )
))
(declare-datatypes ((List!42279 0))(
  ( (Nil!42155) (Cons!42155 (h!47575 Token!12354) (t!329630 List!42279)) )
))
(declare-fun lt!1384381 () List!42279)

(declare-fun isEmpty!25202 (List!42279) Bool)

(assert (=> b!3958768 (= res!1602140 (isEmpty!25202 lt!1384381))))

(declare-fun prefixTokens!80 () List!42279)

(declare-fun tail!6143 (List!42279) List!42279)

(assert (=> b!3958768 (= lt!1384381 (tail!6143 prefixTokens!80))))

(declare-fun e!2451097 () Bool)

(assert (=> b!3958769 (= e!2451097 (and tp!1206507 tp!1206515))))

(declare-fun b!3958770 () Bool)

(declare-fun e!2451117 () Bool)

(declare-fun tp_is_empty!19997 () Bool)

(declare-fun tp!1206506 () Bool)

(assert (=> b!3958770 (= e!2451117 (and tp_is_empty!19997 tp!1206506))))

(declare-fun e!2451116 () Bool)

(assert (=> b!3958771 (= e!2451116 (and tp!1206517 tp!1206504))))

(declare-fun e!2451112 () Bool)

(declare-fun b!3958772 () Bool)

(declare-fun e!2451115 () Bool)

(declare-fun tp!1206512 () Bool)

(declare-fun inv!21 (TokenValue!6838) Bool)

(assert (=> b!3958772 (= e!2451112 (and (inv!21 (value!208962 (h!47575 prefixTokens!80))) e!2451115 tp!1206512))))

(declare-fun b!3958773 () Bool)

(declare-fun e!2451103 () Bool)

(declare-datatypes ((tuple2!41442 0))(
  ( (tuple2!41443 (_1!23855 Token!12354) (_2!23855 List!42278)) )
))
(declare-datatypes ((Option!9028 0))(
  ( (None!9027) (Some!9027 (v!39373 tuple2!41442)) )
))
(declare-fun lt!1384379 () Option!9028)

(declare-fun size!31571 (List!42278) Int)

(assert (=> b!3958773 (= e!2451103 (= (size!31570 (_1!23855 (v!39373 lt!1384379))) (size!31571 (originalCharacters!7208 (_1!23855 (v!39373 lt!1384379))))))))

(declare-fun b!3958774 () Bool)

(assert (=> b!3958774 (= e!2451109 true)))

(assert (=> b!3958774 false))

(declare-datatypes ((Unit!60636 0))(
  ( (Unit!60637) )
))
(declare-fun lt!1384401 () Unit!60636)

(declare-fun suffixResult!91 () List!42278)

(declare-datatypes ((LexerInterface!6197 0))(
  ( (LexerInterfaceExt!6194 (__x!25894 Int)) (Lexer!6195) )
))
(declare-fun thiss!20629 () LexerInterface!6197)

(declare-fun suffix!1176 () List!42278)

(declare-datatypes ((List!42280 0))(
  ( (Nil!42156) (Cons!42156 (h!47576 Rule!13016) (t!329631 List!42280)) )
))
(declare-fun rules!2768 () List!42280)

(declare-fun suffixTokens!72 () List!42279)

(declare-fun lt!1384390 () tuple2!41442)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!136 (LexerInterface!6197 List!42280 List!42278 List!42278 List!42279 List!42278 List!42279) Unit!60636)

(assert (=> b!3958774 (= lt!1384401 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!136 thiss!20629 rules!2768 suffix!1176 (_2!23855 lt!1384390) suffixTokens!72 suffixResult!91 lt!1384381))))

(declare-fun b!3958775 () Bool)

(declare-fun e!2451094 () Bool)

(declare-fun tp!1206502 () Bool)

(assert (=> b!3958775 (= e!2451094 (and tp_is_empty!19997 tp!1206502))))

(declare-fun b!3958776 () Bool)

(declare-fun res!1602136 () Bool)

(declare-fun e!2451107 () Bool)

(assert (=> b!3958776 (=> (not res!1602136) (not e!2451107))))

(declare-fun rulesInvariant!5540 (LexerInterface!6197 List!42280) Bool)

(assert (=> b!3958776 (= res!1602136 (rulesInvariant!5540 thiss!20629 rules!2768))))

(declare-fun b!3958777 () Bool)

(declare-fun res!1602126 () Bool)

(assert (=> b!3958777 (=> res!1602126 e!2451109)))

(declare-datatypes ((tuple2!41444 0))(
  ( (tuple2!41445 (_1!23856 List!42279) (_2!23856 List!42278)) )
))
(declare-fun lexList!1965 (LexerInterface!6197 List!42280 List!42278) tuple2!41444)

(declare-fun ++!10973 (List!42279 List!42279) List!42279)

(assert (=> b!3958777 (= res!1602126 (not (= (lexList!1965 thiss!20629 rules!2768 (_2!23855 lt!1384390)) (tuple2!41445 (++!10973 lt!1384381 suffixTokens!72) suffixResult!91))))))

(declare-fun b!3958778 () Bool)

(declare-fun res!1602138 () Bool)

(declare-fun e!2451110 () Bool)

(assert (=> b!3958778 (=> (not res!1602138) (not e!2451110))))

(assert (=> b!3958778 (= res!1602138 (= (lexList!1965 thiss!20629 rules!2768 suffix!1176) (tuple2!41445 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3958779 () Bool)

(declare-fun e!2451099 () Bool)

(declare-fun e!2451111 () Bool)

(assert (=> b!3958779 (= e!2451099 e!2451111)))

(declare-fun res!1602139 () Bool)

(assert (=> b!3958779 (=> res!1602139 e!2451111)))

(declare-fun lt!1384384 () Int)

(declare-fun lt!1384382 () Int)

(declare-fun lt!1384386 () Int)

(declare-fun lt!1384399 () Int)

(assert (=> b!3958779 (= res!1602139 (or (not (= (+ lt!1384384 lt!1384399) lt!1384386)) (<= lt!1384382 lt!1384384)))))

(declare-fun prefix!426 () List!42278)

(assert (=> b!3958779 (= lt!1384384 (size!31571 prefix!426))))

(declare-fun b!3958780 () Bool)

(declare-fun res!1602133 () Bool)

(assert (=> b!3958780 (=> (not res!1602133) (not e!2451107))))

(declare-fun isEmpty!25203 (List!42278) Bool)

(assert (=> b!3958780 (= res!1602133 (not (isEmpty!25203 prefix!426)))))

(declare-fun e!2451089 () Bool)

(declare-fun e!2451102 () Bool)

(declare-fun tp!1206513 () Bool)

(declare-fun b!3958781 () Bool)

(assert (=> b!3958781 (= e!2451102 (and (inv!21 (value!208962 (h!47575 suffixTokens!72))) e!2451089 tp!1206513))))

(declare-fun b!3958782 () Bool)

(declare-fun e!2451093 () Bool)

(assert (=> b!3958782 (= e!2451111 e!2451093)))

(declare-fun res!1602129 () Bool)

(assert (=> b!3958782 (=> res!1602129 e!2451093)))

(declare-fun lt!1384392 () List!42278)

(declare-fun matchR!5534 (Regex!11513 List!42278) Bool)

(assert (=> b!3958782 (= res!1602129 (not (matchR!5534 (regex!6608 (rule!9584 (_1!23855 (v!39373 lt!1384379)))) lt!1384392)))))

(declare-fun lt!1384400 () TokenValue!6838)

(declare-fun lt!1384388 () List!42278)

(declare-fun maxPrefixOneRule!2551 (LexerInterface!6197 Rule!13016 List!42278) Option!9028)

(assert (=> b!3958782 (= (maxPrefixOneRule!2551 thiss!20629 (rule!9584 (_1!23855 (v!39373 lt!1384379))) lt!1384388) (Some!9027 (tuple2!41443 (Token!12355 lt!1384400 (rule!9584 (_1!23855 (v!39373 lt!1384379))) lt!1384382 lt!1384392) (_2!23855 (v!39373 lt!1384379)))))))

(declare-fun lt!1384387 () Unit!60636)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1377 (LexerInterface!6197 List!42280 List!42278 List!42278 List!42278 Rule!13016) Unit!60636)

(assert (=> b!3958782 (= lt!1384387 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1377 thiss!20629 rules!2768 lt!1384392 lt!1384388 (_2!23855 (v!39373 lt!1384379)) (rule!9584 (_1!23855 (v!39373 lt!1384379)))))))

(declare-fun tp!1206509 () Bool)

(declare-fun e!2451100 () Bool)

(declare-fun b!3958783 () Bool)

(declare-fun inv!56384 (Token!12354) Bool)

(assert (=> b!3958783 (= e!2451100 (and (inv!56384 (h!47575 prefixTokens!80)) e!2451112 tp!1206509))))

(declare-fun b!3958784 () Bool)

(declare-fun e!2451113 () Bool)

(declare-fun e!2451118 () Bool)

(assert (=> b!3958784 (= e!2451113 e!2451118)))

(declare-fun res!1602124 () Bool)

(assert (=> b!3958784 (=> res!1602124 e!2451118)))

(declare-fun lt!1384396 () Int)

(assert (=> b!3958784 (= res!1602124 (>= lt!1384396 lt!1384399))))

(assert (=> b!3958784 (= lt!1384399 (size!31571 suffix!1176))))

(assert (=> b!3958784 (= lt!1384396 (size!31571 (_2!23855 (v!39373 lt!1384379))))))

(declare-fun b!3958785 () Bool)

(declare-fun res!1602137 () Bool)

(assert (=> b!3958785 (=> res!1602137 e!2451109)))

(declare-fun lt!1384395 () Token!12354)

(assert (=> b!3958785 (= res!1602137 (not (= (_1!23855 (v!39373 lt!1384379)) lt!1384395)))))

(declare-fun e!2451104 () Bool)

(assert (=> b!3958786 (= e!2451104 (and tp!1206508 tp!1206505))))

(declare-fun b!3958787 () Bool)

(assert (=> b!3958787 (= e!2451093 e!2451101)))

(declare-fun res!1602127 () Bool)

(assert (=> b!3958787 (=> res!1602127 e!2451101)))

(assert (=> b!3958787 (= res!1602127 (not (= (_1!23855 lt!1384390) lt!1384395)))))

(declare-fun head!8417 (List!42279) Token!12354)

(assert (=> b!3958787 (= lt!1384395 (head!8417 prefixTokens!80))))

(declare-fun get!13902 (Option!9028) tuple2!41442)

(assert (=> b!3958787 (= lt!1384390 (get!13902 lt!1384379))))

(declare-fun b!3958788 () Bool)

(declare-fun e!2451105 () Bool)

(declare-fun e!2451108 () Bool)

(declare-fun tp!1206518 () Bool)

(assert (=> b!3958788 (= e!2451105 (and e!2451108 tp!1206518))))

(declare-fun b!3958789 () Bool)

(assert (=> b!3958789 (= e!2451107 e!2451110)))

(declare-fun res!1602130 () Bool)

(assert (=> b!3958789 (=> (not res!1602130) (not e!2451110))))

(declare-fun lt!1384391 () List!42279)

(declare-fun lt!1384398 () tuple2!41444)

(assert (=> b!3958789 (= res!1602130 (= lt!1384398 (tuple2!41445 lt!1384391 suffixResult!91)))))

(assert (=> b!3958789 (= lt!1384398 (lexList!1965 thiss!20629 rules!2768 lt!1384388))))

(assert (=> b!3958789 (= lt!1384391 (++!10973 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10974 (List!42278 List!42278) List!42278)

(assert (=> b!3958789 (= lt!1384388 (++!10974 prefix!426 suffix!1176))))

(declare-fun b!3958790 () Bool)

(declare-fun res!1602142 () Bool)

(assert (=> b!3958790 (=> res!1602142 e!2451113)))

(declare-fun lt!1384397 () tuple2!41444)

(assert (=> b!3958790 (= res!1602142 (not (= lt!1384398 (tuple2!41445 (++!10973 (Cons!42155 (_1!23855 (v!39373 lt!1384379)) Nil!42155) (_1!23856 lt!1384397)) (_2!23856 lt!1384397)))))))

(declare-fun tp!1206511 () Bool)

(declare-fun b!3958791 () Bool)

(declare-fun e!2451114 () Bool)

(assert (=> b!3958791 (= e!2451114 (and (inv!56384 (h!47575 suffixTokens!72)) e!2451102 tp!1206511))))

(declare-fun res!1602128 () Bool)

(assert (=> start!372316 (=> (not res!1602128) (not e!2451107))))

(get-info :version)

(assert (=> start!372316 (= res!1602128 ((_ is Lexer!6195) thiss!20629))))

(assert (=> start!372316 e!2451107))

(declare-fun e!2451106 () Bool)

(assert (=> start!372316 e!2451106))

(assert (=> start!372316 true))

(assert (=> start!372316 e!2451094))

(assert (=> start!372316 e!2451105))

(assert (=> start!372316 e!2451100))

(assert (=> start!372316 e!2451114))

(assert (=> start!372316 e!2451117))

(declare-fun b!3958792 () Bool)

(declare-fun res!1602141 () Bool)

(assert (=> b!3958792 (=> (not res!1602141) (not e!2451107))))

(declare-fun isEmpty!25204 (List!42280) Bool)

(assert (=> b!3958792 (= res!1602141 (not (isEmpty!25204 rules!2768)))))

(declare-fun b!3958793 () Bool)

(assert (=> b!3958793 (= e!2451118 e!2451099)))

(declare-fun res!1602123 () Bool)

(assert (=> b!3958793 (=> res!1602123 e!2451099)))

(assert (=> b!3958793 (= res!1602123 (not (= (+ lt!1384382 lt!1384396) lt!1384386)))))

(assert (=> b!3958793 (= lt!1384386 (size!31571 lt!1384388))))

(declare-fun tp!1206516 () Bool)

(declare-fun b!3958794 () Bool)

(declare-fun inv!56381 (String!47908) Bool)

(declare-fun inv!56385 (TokenValueInjection!13104) Bool)

(assert (=> b!3958794 (= e!2451108 (and tp!1206516 (inv!56381 (tag!7468 (h!47576 rules!2768))) (inv!56385 (transformation!6608 (h!47576 rules!2768))) e!2451104))))

(declare-fun b!3958795 () Bool)

(declare-fun res!1602125 () Bool)

(assert (=> b!3958795 (=> res!1602125 e!2451113)))

(assert (=> b!3958795 (= res!1602125 (or (not (= lt!1384397 (tuple2!41445 (_1!23856 lt!1384397) (_2!23856 lt!1384397)))) (= (_2!23855 (v!39373 lt!1384379)) suffix!1176)))))

(declare-fun b!3958796 () Bool)

(declare-fun e!2451092 () Bool)

(assert (=> b!3958796 (= e!2451092 (not e!2451113))))

(declare-fun res!1602134 () Bool)

(assert (=> b!3958796 (=> res!1602134 e!2451113)))

(declare-fun lt!1384389 () List!42278)

(assert (=> b!3958796 (= res!1602134 (not (= lt!1384389 lt!1384388)))))

(assert (=> b!3958796 (= lt!1384397 (lexList!1965 thiss!20629 rules!2768 (_2!23855 (v!39373 lt!1384379))))))

(declare-fun lt!1384383 () List!42278)

(assert (=> b!3958796 (and (= (size!31570 (_1!23855 (v!39373 lt!1384379))) lt!1384382) (= (originalCharacters!7208 (_1!23855 (v!39373 lt!1384379))) lt!1384392) (= (v!39373 lt!1384379) (tuple2!41443 (Token!12355 lt!1384400 (rule!9584 (_1!23855 (v!39373 lt!1384379))) lt!1384382 lt!1384392) lt!1384383)))))

(assert (=> b!3958796 (= lt!1384382 (size!31571 lt!1384392))))

(assert (=> b!3958796 e!2451103))

(declare-fun res!1602132 () Bool)

(assert (=> b!3958796 (=> (not res!1602132) (not e!2451103))))

(assert (=> b!3958796 (= res!1602132 (= (value!208962 (_1!23855 (v!39373 lt!1384379))) lt!1384400))))

(declare-fun apply!9839 (TokenValueInjection!13104 BalanceConc!25232) TokenValue!6838)

(declare-fun seqFromList!4867 (List!42278) BalanceConc!25232)

(assert (=> b!3958796 (= lt!1384400 (apply!9839 (transformation!6608 (rule!9584 (_1!23855 (v!39373 lt!1384379)))) (seqFromList!4867 lt!1384392)))))

(assert (=> b!3958796 (= (_2!23855 (v!39373 lt!1384379)) lt!1384383)))

(declare-fun lt!1384393 () Unit!60636)

(declare-fun lemmaSamePrefixThenSameSuffix!1906 (List!42278 List!42278 List!42278 List!42278 List!42278) Unit!60636)

(assert (=> b!3958796 (= lt!1384393 (lemmaSamePrefixThenSameSuffix!1906 lt!1384392 (_2!23855 (v!39373 lt!1384379)) lt!1384392 lt!1384383 lt!1384388))))

(declare-fun getSuffix!2148 (List!42278 List!42278) List!42278)

(assert (=> b!3958796 (= lt!1384383 (getSuffix!2148 lt!1384388 lt!1384392))))

(declare-fun isPrefix!3697 (List!42278 List!42278) Bool)

(assert (=> b!3958796 (isPrefix!3697 lt!1384392 lt!1384389)))

(assert (=> b!3958796 (= lt!1384389 (++!10974 lt!1384392 (_2!23855 (v!39373 lt!1384379))))))

(declare-fun lt!1384385 () Unit!60636)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2556 (List!42278 List!42278) Unit!60636)

(assert (=> b!3958796 (= lt!1384385 (lemmaConcatTwoListThenFirstIsPrefix!2556 lt!1384392 (_2!23855 (v!39373 lt!1384379))))))

(declare-fun list!15650 (BalanceConc!25232) List!42278)

(declare-fun charsOf!4426 (Token!12354) BalanceConc!25232)

(assert (=> b!3958796 (= lt!1384392 (list!15650 (charsOf!4426 (_1!23855 (v!39373 lt!1384379)))))))

(declare-fun ruleValid!2550 (LexerInterface!6197 Rule!13016) Bool)

(assert (=> b!3958796 (ruleValid!2550 thiss!20629 (rule!9584 (_1!23855 (v!39373 lt!1384379))))))

(declare-fun lt!1384380 () Unit!60636)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1626 (LexerInterface!6197 Rule!13016 List!42280) Unit!60636)

(assert (=> b!3958796 (= lt!1384380 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1626 thiss!20629 (rule!9584 (_1!23855 (v!39373 lt!1384379))) rules!2768))))

(declare-fun lt!1384394 () Unit!60636)

(declare-fun lemmaCharactersSize!1261 (Token!12354) Unit!60636)

(assert (=> b!3958796 (= lt!1384394 (lemmaCharactersSize!1261 (_1!23855 (v!39373 lt!1384379))))))

(declare-fun b!3958797 () Bool)

(declare-fun res!1602135 () Bool)

(assert (=> b!3958797 (=> (not res!1602135) (not e!2451107))))

(assert (=> b!3958797 (= res!1602135 (not (isEmpty!25202 prefixTokens!80)))))

(declare-fun b!3958798 () Bool)

(declare-fun tp!1206510 () Bool)

(assert (=> b!3958798 (= e!2451115 (and tp!1206510 (inv!56381 (tag!7468 (rule!9584 (h!47575 prefixTokens!80)))) (inv!56385 (transformation!6608 (rule!9584 (h!47575 prefixTokens!80)))) e!2451097))))

(declare-fun b!3958799 () Bool)

(declare-fun res!1602143 () Bool)

(assert (=> b!3958799 (=> res!1602143 e!2451101)))

(assert (=> b!3958799 (= res!1602143 (>= (size!31571 (_2!23855 lt!1384390)) lt!1384399))))

(declare-fun b!3958800 () Bool)

(assert (=> b!3958800 (= e!2451110 e!2451092)))

(declare-fun res!1602131 () Bool)

(assert (=> b!3958800 (=> (not res!1602131) (not e!2451092))))

(assert (=> b!3958800 (= res!1602131 ((_ is Some!9027) lt!1384379))))

(declare-fun maxPrefix!3501 (LexerInterface!6197 List!42280 List!42278) Option!9028)

(assert (=> b!3958800 (= lt!1384379 (maxPrefix!3501 thiss!20629 rules!2768 lt!1384388))))

(declare-fun tp!1206514 () Bool)

(declare-fun b!3958801 () Bool)

(assert (=> b!3958801 (= e!2451089 (and tp!1206514 (inv!56381 (tag!7468 (rule!9584 (h!47575 suffixTokens!72)))) (inv!56385 (transformation!6608 (rule!9584 (h!47575 suffixTokens!72)))) e!2451116))))

(declare-fun b!3958802 () Bool)

(declare-fun tp!1206503 () Bool)

(assert (=> b!3958802 (= e!2451106 (and tp_is_empty!19997 tp!1206503))))

(assert (= (and start!372316 res!1602128) b!3958792))

(assert (= (and b!3958792 res!1602141) b!3958776))

(assert (= (and b!3958776 res!1602136) b!3958797))

(assert (= (and b!3958797 res!1602135) b!3958780))

(assert (= (and b!3958780 res!1602133) b!3958789))

(assert (= (and b!3958789 res!1602130) b!3958778))

(assert (= (and b!3958778 res!1602138) b!3958800))

(assert (= (and b!3958800 res!1602131) b!3958796))

(assert (= (and b!3958796 res!1602132) b!3958773))

(assert (= (and b!3958796 (not res!1602134)) b!3958790))

(assert (= (and b!3958790 (not res!1602142)) b!3958795))

(assert (= (and b!3958795 (not res!1602125)) b!3958784))

(assert (= (and b!3958784 (not res!1602124)) b!3958793))

(assert (= (and b!3958793 (not res!1602123)) b!3958779))

(assert (= (and b!3958779 (not res!1602139)) b!3958782))

(assert (= (and b!3958782 (not res!1602129)) b!3958787))

(assert (= (and b!3958787 (not res!1602127)) b!3958799))

(assert (= (and b!3958799 (not res!1602143)) b!3958768))

(assert (= (and b!3958768 (not res!1602140)) b!3958785))

(assert (= (and b!3958785 (not res!1602137)) b!3958777))

(assert (= (and b!3958777 (not res!1602126)) b!3958774))

(assert (= (and start!372316 ((_ is Cons!42154) suffixResult!91)) b!3958802))

(assert (= (and start!372316 ((_ is Cons!42154) suffix!1176)) b!3958775))

(assert (= b!3958794 b!3958786))

(assert (= b!3958788 b!3958794))

(assert (= (and start!372316 ((_ is Cons!42156) rules!2768)) b!3958788))

(assert (= b!3958798 b!3958769))

(assert (= b!3958772 b!3958798))

(assert (= b!3958783 b!3958772))

(assert (= (and start!372316 ((_ is Cons!42155) prefixTokens!80)) b!3958783))

(assert (= b!3958801 b!3958771))

(assert (= b!3958781 b!3958801))

(assert (= b!3958791 b!3958781))

(assert (= (and start!372316 ((_ is Cons!42155) suffixTokens!72)) b!3958791))

(assert (= (and start!372316 ((_ is Cons!42154) prefix!426)) b!3958770))

(declare-fun m!4527605 () Bool)

(assert (=> b!3958793 m!4527605))

(declare-fun m!4527607 () Bool)

(assert (=> b!3958787 m!4527607))

(declare-fun m!4527609 () Bool)

(assert (=> b!3958787 m!4527609))

(declare-fun m!4527611 () Bool)

(assert (=> b!3958799 m!4527611))

(declare-fun m!4527613 () Bool)

(assert (=> b!3958779 m!4527613))

(declare-fun m!4527615 () Bool)

(assert (=> b!3958783 m!4527615))

(declare-fun m!4527617 () Bool)

(assert (=> b!3958778 m!4527617))

(declare-fun m!4527619 () Bool)

(assert (=> b!3958789 m!4527619))

(declare-fun m!4527621 () Bool)

(assert (=> b!3958789 m!4527621))

(declare-fun m!4527623 () Bool)

(assert (=> b!3958789 m!4527623))

(declare-fun m!4527625 () Bool)

(assert (=> b!3958794 m!4527625))

(declare-fun m!4527627 () Bool)

(assert (=> b!3958794 m!4527627))

(declare-fun m!4527629 () Bool)

(assert (=> b!3958777 m!4527629))

(declare-fun m!4527631 () Bool)

(assert (=> b!3958777 m!4527631))

(declare-fun m!4527633 () Bool)

(assert (=> b!3958791 m!4527633))

(declare-fun m!4527635 () Bool)

(assert (=> b!3958773 m!4527635))

(declare-fun m!4527637 () Bool)

(assert (=> b!3958774 m!4527637))

(declare-fun m!4527639 () Bool)

(assert (=> b!3958797 m!4527639))

(declare-fun m!4527641 () Bool)

(assert (=> b!3958800 m!4527641))

(declare-fun m!4527643 () Bool)

(assert (=> b!3958782 m!4527643))

(declare-fun m!4527645 () Bool)

(assert (=> b!3958782 m!4527645))

(declare-fun m!4527647 () Bool)

(assert (=> b!3958782 m!4527647))

(declare-fun m!4527649 () Bool)

(assert (=> b!3958772 m!4527649))

(declare-fun m!4527651 () Bool)

(assert (=> b!3958784 m!4527651))

(declare-fun m!4527653 () Bool)

(assert (=> b!3958784 m!4527653))

(declare-fun m!4527655 () Bool)

(assert (=> b!3958780 m!4527655))

(declare-fun m!4527657 () Bool)

(assert (=> b!3958768 m!4527657))

(declare-fun m!4527659 () Bool)

(assert (=> b!3958768 m!4527659))

(declare-fun m!4527661 () Bool)

(assert (=> b!3958792 m!4527661))

(declare-fun m!4527663 () Bool)

(assert (=> b!3958781 m!4527663))

(declare-fun m!4527665 () Bool)

(assert (=> b!3958796 m!4527665))

(declare-fun m!4527667 () Bool)

(assert (=> b!3958796 m!4527667))

(declare-fun m!4527669 () Bool)

(assert (=> b!3958796 m!4527669))

(declare-fun m!4527671 () Bool)

(assert (=> b!3958796 m!4527671))

(declare-fun m!4527673 () Bool)

(assert (=> b!3958796 m!4527673))

(declare-fun m!4527675 () Bool)

(assert (=> b!3958796 m!4527675))

(assert (=> b!3958796 m!4527675))

(declare-fun m!4527677 () Bool)

(assert (=> b!3958796 m!4527677))

(declare-fun m!4527679 () Bool)

(assert (=> b!3958796 m!4527679))

(declare-fun m!4527681 () Bool)

(assert (=> b!3958796 m!4527681))

(assert (=> b!3958796 m!4527679))

(declare-fun m!4527683 () Bool)

(assert (=> b!3958796 m!4527683))

(declare-fun m!4527685 () Bool)

(assert (=> b!3958796 m!4527685))

(declare-fun m!4527687 () Bool)

(assert (=> b!3958796 m!4527687))

(declare-fun m!4527689 () Bool)

(assert (=> b!3958796 m!4527689))

(declare-fun m!4527691 () Bool)

(assert (=> b!3958796 m!4527691))

(declare-fun m!4527693 () Bool)

(assert (=> b!3958776 m!4527693))

(declare-fun m!4527695 () Bool)

(assert (=> b!3958798 m!4527695))

(declare-fun m!4527697 () Bool)

(assert (=> b!3958798 m!4527697))

(declare-fun m!4527699 () Bool)

(assert (=> b!3958790 m!4527699))

(declare-fun m!4527701 () Bool)

(assert (=> b!3958801 m!4527701))

(declare-fun m!4527703 () Bool)

(assert (=> b!3958801 m!4527703))

(check-sat (not b!3958774) (not b!3958793) (not b!3958777) (not b!3958768) (not b!3958782) (not b!3958776) b_and!303847 (not b!3958788) (not b!3958801) (not b!3958787) (not b!3958799) (not b!3958794) (not b!3958792) (not b_next!109881) (not b!3958798) b_and!303855 (not b!3958778) b_and!303851 (not b!3958783) (not b!3958789) b_and!303857 (not b!3958797) (not b!3958779) tp_is_empty!19997 (not b!3958781) (not b!3958784) (not b!3958775) (not b!3958773) b_and!303853 (not b_next!109883) (not b!3958770) (not b!3958772) (not b_next!109887) b_and!303849 (not b_next!109877) (not b!3958790) (not b!3958796) (not b!3958780) (not b!3958791) (not b!3958802) (not b_next!109879) (not b_next!109885) (not b!3958800))
(check-sat (not b_next!109881) b_and!303857 b_and!303847 (not b_next!109877) b_and!303855 b_and!303851 b_and!303853 (not b_next!109883) (not b_next!109887) b_and!303849 (not b_next!109879) (not b_next!109885))
