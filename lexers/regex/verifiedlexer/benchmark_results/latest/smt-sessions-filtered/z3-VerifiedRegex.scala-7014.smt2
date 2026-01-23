; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372588 () Bool)

(assert start!372588)

(declare-fun b!3960813 () Bool)

(declare-fun b_free!109317 () Bool)

(declare-fun b_next!110021 () Bool)

(assert (=> b!3960813 (= b_free!109317 (not b_next!110021))))

(declare-fun tp!1207190 () Bool)

(declare-fun b_and!304099 () Bool)

(assert (=> b!3960813 (= tp!1207190 b_and!304099)))

(declare-fun b_free!109319 () Bool)

(declare-fun b_next!110023 () Bool)

(assert (=> b!3960813 (= b_free!109319 (not b_next!110023))))

(declare-fun tp!1207200 () Bool)

(declare-fun b_and!304101 () Bool)

(assert (=> b!3960813 (= tp!1207200 b_and!304101)))

(declare-fun b!3960837 () Bool)

(declare-fun b_free!109321 () Bool)

(declare-fun b_next!110025 () Bool)

(assert (=> b!3960837 (= b_free!109321 (not b_next!110025))))

(declare-fun tp!1207203 () Bool)

(declare-fun b_and!304103 () Bool)

(assert (=> b!3960837 (= tp!1207203 b_and!304103)))

(declare-fun b_free!109323 () Bool)

(declare-fun b_next!110027 () Bool)

(assert (=> b!3960837 (= b_free!109323 (not b_next!110027))))

(declare-fun tp!1207188 () Bool)

(declare-fun b_and!304105 () Bool)

(assert (=> b!3960837 (= tp!1207188 b_and!304105)))

(declare-fun b!3960842 () Bool)

(declare-fun b_free!109325 () Bool)

(declare-fun b_next!110029 () Bool)

(assert (=> b!3960842 (= b_free!109325 (not b_next!110029))))

(declare-fun tp!1207197 () Bool)

(declare-fun b_and!304107 () Bool)

(assert (=> b!3960842 (= tp!1207197 b_and!304107)))

(declare-fun b_free!109327 () Bool)

(declare-fun b_next!110031 () Bool)

(assert (=> b!3960842 (= b_free!109327 (not b_next!110031))))

(declare-fun tp!1207196 () Bool)

(declare-fun b_and!304109 () Bool)

(assert (=> b!3960842 (= tp!1207196 b_and!304109)))

(declare-fun e!2452600 () Bool)

(declare-fun tp!1207204 () Bool)

(declare-datatypes ((String!47947 0))(
  ( (String!47948 (value!209164 String)) )
))
(declare-datatypes ((List!42313 0))(
  ( (Nil!42189) (Cons!42189 (h!47609 (_ BitVec 16)) (t!329880 List!42313)) )
))
(declare-datatypes ((TokenValue!6846 0))(
  ( (FloatLiteralValue!13692 (text!48367 List!42313)) (TokenValueExt!6845 (__x!25909 Int)) (Broken!34230 (value!209165 List!42313)) (Object!6969) (End!6846) (Def!6846) (Underscore!6846) (Match!6846) (Else!6846) (Error!6846) (Case!6846) (If!6846) (Extends!6846) (Abstract!6846) (Class!6846) (Val!6846) (DelimiterValue!13692 (del!6906 List!42313)) (KeywordValue!6852 (value!209166 List!42313)) (CommentValue!13692 (value!209167 List!42313)) (WhitespaceValue!13692 (value!209168 List!42313)) (IndentationValue!6846 (value!209169 List!42313)) (String!47949) (Int32!6846) (Broken!34231 (value!209170 List!42313)) (Boolean!6847) (Unit!60694) (OperatorValue!6849 (op!6906 List!42313)) (IdentifierValue!13692 (value!209171 List!42313)) (IdentifierValue!13693 (value!209172 List!42313)) (WhitespaceValue!13693 (value!209173 List!42313)) (True!13692) (False!13692) (Broken!34232 (value!209174 List!42313)) (Broken!34233 (value!209175 List!42313)) (True!13693) (RightBrace!6846) (RightBracket!6846) (Colon!6846) (Null!6846) (Comma!6846) (LeftBracket!6846) (False!13693) (LeftBrace!6846) (ImaginaryLiteralValue!6846 (text!48368 List!42313)) (StringLiteralValue!20538 (value!209176 List!42313)) (EOFValue!6846 (value!209177 List!42313)) (IdentValue!6846 (value!209178 List!42313)) (DelimiterValue!13693 (value!209179 List!42313)) (DedentValue!6846 (value!209180 List!42313)) (NewLineValue!6846 (value!209181 List!42313)) (IntegerValue!20538 (value!209182 (_ BitVec 32)) (text!48369 List!42313)) (IntegerValue!20539 (value!209183 Int) (text!48370 List!42313)) (Times!6846) (Or!6846) (Equal!6846) (Minus!6846) (Broken!34234 (value!209184 List!42313)) (And!6846) (Div!6846) (LessEqual!6846) (Mod!6846) (Concat!18367) (Not!6846) (Plus!6846) (SpaceValue!6846 (value!209185 List!42313)) (IntegerValue!20540 (value!209186 Int) (text!48371 List!42313)) (StringLiteralValue!20539 (text!48372 List!42313)) (FloatLiteralValue!13693 (text!48373 List!42313)) (BytesLiteralValue!6846 (value!209187 List!42313)) (CommentValue!13693 (value!209188 List!42313)) (StringLiteralValue!20540 (value!209189 List!42313)) (ErrorTokenValue!6846 (msg!6907 List!42313)) )
))
(declare-datatypes ((C!23228 0))(
  ( (C!23229 (val!13708 Int)) )
))
(declare-datatypes ((Regex!11521 0))(
  ( (ElementMatch!11521 (c!687290 C!23228)) (Concat!18368 (regOne!23554 Regex!11521) (regTwo!23554 Regex!11521)) (EmptyExpr!11521) (Star!11521 (reg!11850 Regex!11521)) (EmptyLang!11521) (Union!11521 (regOne!23555 Regex!11521) (regTwo!23555 Regex!11521)) )
))
(declare-datatypes ((List!42314 0))(
  ( (Nil!42190) (Cons!42190 (h!47610 C!23228) (t!329881 List!42314)) )
))
(declare-datatypes ((IArray!25659 0))(
  ( (IArray!25660 (innerList!12887 List!42314)) )
))
(declare-datatypes ((Conc!12827 0))(
  ( (Node!12827 (left!32017 Conc!12827) (right!32347 Conc!12827) (csize!25884 Int) (cheight!13038 Int)) (Leaf!19842 (xs!16133 IArray!25659) (csize!25885 Int)) (Empty!12827) )
))
(declare-datatypes ((BalanceConc!25248 0))(
  ( (BalanceConc!25249 (c!687291 Conc!12827)) )
))
(declare-datatypes ((TokenValueInjection!13120 0))(
  ( (TokenValueInjection!13121 (toValue!9096 Int) (toChars!8955 Int)) )
))
(declare-datatypes ((Rule!13032 0))(
  ( (Rule!13033 (regex!6616 Regex!11521) (tag!7476 String!47947) (isSeparator!6616 Bool) (transformation!6616 TokenValueInjection!13120)) )
))
(declare-datatypes ((Token!12370 0))(
  ( (Token!12371 (value!209190 TokenValue!6846) (rule!9596 Rule!13032) (size!31594 Int) (originalCharacters!7216 List!42314)) )
))
(declare-datatypes ((List!42315 0))(
  ( (Nil!42191) (Cons!42191 (h!47611 Token!12370) (t!329882 List!42315)) )
))
(declare-fun suffixTokens!72 () List!42315)

(declare-fun b!3960811 () Bool)

(declare-fun e!2452585 () Bool)

(declare-fun inv!56417 (String!47947) Bool)

(declare-fun inv!56420 (TokenValueInjection!13120) Bool)

(assert (=> b!3960811 (= e!2452585 (and tp!1207204 (inv!56417 (tag!7476 (rule!9596 (h!47611 suffixTokens!72)))) (inv!56420 (transformation!6616 (rule!9596 (h!47611 suffixTokens!72)))) e!2452600))))

(declare-fun e!2452570 () Bool)

(declare-fun tp!1207193 () Bool)

(declare-fun e!2452592 () Bool)

(declare-fun prefixTokens!80 () List!42315)

(declare-fun b!3960812 () Bool)

(declare-fun inv!21 (TokenValue!6846) Bool)

(assert (=> b!3960812 (= e!2452570 (and (inv!21 (value!209190 (h!47611 prefixTokens!80))) e!2452592 tp!1207193))))

(declare-fun e!2452598 () Bool)

(assert (=> b!3960813 (= e!2452598 (and tp!1207190 tp!1207200))))

(declare-fun b!3960814 () Bool)

(declare-fun e!2452590 () Bool)

(declare-fun e!2452572 () Bool)

(assert (=> b!3960814 (= e!2452590 e!2452572)))

(declare-fun res!1603027 () Bool)

(assert (=> b!3960814 (=> (not res!1603027) (not e!2452572))))

(declare-datatypes ((LexerInterface!6205 0))(
  ( (LexerInterfaceExt!6202 (__x!25910 Int)) (Lexer!6203) )
))
(declare-fun thiss!20629 () LexerInterface!6205)

(declare-fun suffix!1176 () List!42314)

(declare-datatypes ((List!42316 0))(
  ( (Nil!42192) (Cons!42192 (h!47612 Rule!13032) (t!329883 List!42316)) )
))
(declare-fun rules!2768 () List!42316)

(declare-datatypes ((tuple2!41482 0))(
  ( (tuple2!41483 (_1!23875 List!42315) (_2!23875 List!42314)) )
))
(declare-fun lt!1385463 () tuple2!41482)

(declare-fun lexList!1973 (LexerInterface!6205 List!42316 List!42314) tuple2!41482)

(assert (=> b!3960814 (= res!1603027 (= (lexList!1973 thiss!20629 rules!2768 suffix!1176) lt!1385463))))

(declare-fun suffixResult!91 () List!42314)

(assert (=> b!3960814 (= lt!1385463 (tuple2!41483 suffixTokens!72 suffixResult!91))))

(declare-fun b!3960815 () Bool)

(declare-fun e!2452577 () Bool)

(declare-fun tp_is_empty!20013 () Bool)

(declare-fun tp!1207201 () Bool)

(assert (=> b!3960815 (= e!2452577 (and tp_is_empty!20013 tp!1207201))))

(declare-fun b!3960816 () Bool)

(declare-fun res!1603030 () Bool)

(declare-fun e!2452595 () Bool)

(assert (=> b!3960816 (=> (not res!1603030) (not e!2452595))))

(declare-fun isEmpty!25230 (List!42315) Bool)

(assert (=> b!3960816 (= res!1603030 (not (isEmpty!25230 prefixTokens!80)))))

(declare-fun res!1603024 () Bool)

(assert (=> start!372588 (=> (not res!1603024) (not e!2452595))))

(get-info :version)

(assert (=> start!372588 (= res!1603024 ((_ is Lexer!6203) thiss!20629))))

(assert (=> start!372588 e!2452595))

(declare-fun e!2452573 () Bool)

(assert (=> start!372588 e!2452573))

(assert (=> start!372588 true))

(assert (=> start!372588 e!2452577))

(declare-fun e!2452586 () Bool)

(assert (=> start!372588 e!2452586))

(declare-fun e!2452569 () Bool)

(assert (=> start!372588 e!2452569))

(declare-fun e!2452581 () Bool)

(assert (=> start!372588 e!2452581))

(declare-fun e!2452579 () Bool)

(assert (=> start!372588 e!2452579))

(declare-fun b!3960817 () Bool)

(declare-fun e!2452589 () Bool)

(declare-datatypes ((tuple2!41484 0))(
  ( (tuple2!41485 (_1!23876 Token!12370) (_2!23876 List!42314)) )
))
(declare-datatypes ((Option!9036 0))(
  ( (None!9035) (Some!9035 (v!39381 tuple2!41484)) )
))
(declare-fun lt!1385466 () Option!9036)

(declare-fun size!31595 (List!42314) Int)

(assert (=> b!3960817 (= e!2452589 (= (size!31594 (_1!23876 (v!39381 lt!1385466))) (size!31595 (originalCharacters!7216 (_1!23876 (v!39381 lt!1385466))))))))

(declare-fun b!3960818 () Bool)

(declare-fun e!2452588 () Bool)

(declare-fun tp!1207192 () Bool)

(assert (=> b!3960818 (= e!2452586 (and e!2452588 tp!1207192))))

(declare-fun b!3960819 () Bool)

(declare-datatypes ((Unit!60695 0))(
  ( (Unit!60696) )
))
(declare-fun e!2452599 () Unit!60695)

(declare-fun Unit!60697 () Unit!60695)

(assert (=> b!3960819 (= e!2452599 Unit!60697)))

(declare-fun lt!1385457 () List!42315)

(declare-fun lt!1385456 () Unit!60695)

(declare-fun lt!1385453 () tuple2!41484)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!144 (LexerInterface!6205 List!42316 List!42314 List!42314 List!42315 List!42314 List!42315) Unit!60695)

(assert (=> b!3960819 (= lt!1385456 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!144 thiss!20629 rules!2768 suffix!1176 (_2!23876 lt!1385453) suffixTokens!72 suffixResult!91 lt!1385457))))

(declare-fun call!285406 () tuple2!41482)

(declare-fun res!1603032 () Bool)

(declare-fun ++!10989 (List!42315 List!42315) List!42315)

(assert (=> b!3960819 (= res!1603032 (not (= call!285406 (tuple2!41483 (++!10989 lt!1385457 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2452574 () Bool)

(assert (=> b!3960819 (=> (not res!1603032) (not e!2452574))))

(assert (=> b!3960819 e!2452574))

(declare-fun b!3960820 () Bool)

(declare-fun e!2452594 () Bool)

(declare-fun e!2452583 () Bool)

(assert (=> b!3960820 (= e!2452594 e!2452583)))

(declare-fun res!1603033 () Bool)

(assert (=> b!3960820 (=> res!1603033 e!2452583)))

(declare-fun lt!1385448 () Int)

(declare-fun lt!1385447 () Int)

(assert (=> b!3960820 (= res!1603033 (not (= lt!1385448 lt!1385447)))))

(declare-fun lt!1385450 () Unit!60695)

(declare-fun e!2452582 () Unit!60695)

(assert (=> b!3960820 (= lt!1385450 e!2452582)))

(declare-fun c!687288 () Bool)

(assert (=> b!3960820 (= c!687288 (< lt!1385448 lt!1385447))))

(assert (=> b!3960820 (= lt!1385447 (size!31595 suffix!1176))))

(assert (=> b!3960820 (= lt!1385448 (size!31595 (_2!23876 (v!39381 lt!1385466))))))

(declare-fun tp!1207191 () Bool)

(declare-fun b!3960821 () Bool)

(declare-fun inv!56421 (Token!12370) Bool)

(assert (=> b!3960821 (= e!2452569 (and (inv!56421 (h!47611 prefixTokens!80)) e!2452570 tp!1207191))))

(declare-fun b!3960822 () Bool)

(declare-fun res!1603036 () Bool)

(assert (=> b!3960822 (=> res!1603036 e!2452594)))

(declare-fun lt!1385451 () tuple2!41482)

(declare-fun lt!1385462 () tuple2!41482)

(assert (=> b!3960822 (= res!1603036 (not (= lt!1385462 (tuple2!41483 (++!10989 (Cons!42191 (_1!23876 (v!39381 lt!1385466)) Nil!42191) (_1!23875 lt!1385451)) (_2!23875 lt!1385451)))))))

(declare-fun tp!1207198 () Bool)

(declare-fun b!3960823 () Bool)

(declare-fun e!2452580 () Bool)

(assert (=> b!3960823 (= e!2452592 (and tp!1207198 (inv!56417 (tag!7476 (rule!9596 (h!47611 prefixTokens!80)))) (inv!56420 (transformation!6616 (rule!9596 (h!47611 prefixTokens!80)))) e!2452580))))

(declare-fun b!3960824 () Bool)

(declare-fun e!2452575 () Unit!60695)

(declare-fun Unit!60698 () Unit!60695)

(assert (=> b!3960824 (= e!2452575 Unit!60698)))

(declare-fun b!3960825 () Bool)

(declare-fun Unit!60699 () Unit!60695)

(assert (=> b!3960825 (= e!2452582 Unit!60699)))

(declare-fun b!3960826 () Bool)

(declare-fun e!2452576 () Bool)

(assert (=> b!3960826 (= e!2452583 e!2452576)))

(declare-fun res!1603034 () Bool)

(assert (=> b!3960826 (=> res!1603034 e!2452576)))

(declare-fun lt!1385461 () List!42314)

(declare-fun lt!1385452 () List!42314)

(declare-fun isPrefix!3705 (List!42314 List!42314) Bool)

(assert (=> b!3960826 (= res!1603034 (not (isPrefix!3705 lt!1385461 lt!1385452)))))

(declare-fun prefix!426 () List!42314)

(assert (=> b!3960826 (isPrefix!3705 prefix!426 lt!1385452)))

(declare-fun lt!1385473 () Unit!60695)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2564 (List!42314 List!42314) Unit!60695)

(assert (=> b!3960826 (= lt!1385473 (lemmaConcatTwoListThenFirstIsPrefix!2564 prefix!426 suffix!1176))))

(declare-fun tp!1207199 () Bool)

(declare-fun b!3960827 () Bool)

(assert (=> b!3960827 (= e!2452588 (and tp!1207199 (inv!56417 (tag!7476 (h!47612 rules!2768))) (inv!56420 (transformation!6616 (h!47612 rules!2768))) e!2452598))))

(declare-fun b!3960828 () Bool)

(declare-fun e!2452587 () Bool)

(assert (=> b!3960828 (= e!2452587 false)))

(declare-fun b!3960829 () Bool)

(declare-fun res!1603026 () Bool)

(assert (=> b!3960829 (=> (not res!1603026) (not e!2452595))))

(declare-fun rulesInvariant!5548 (LexerInterface!6205 List!42316) Bool)

(assert (=> b!3960829 (= res!1603026 (rulesInvariant!5548 thiss!20629 rules!2768))))

(declare-fun b!3960830 () Bool)

(declare-fun c!687287 () Bool)

(assert (=> b!3960830 (= c!687287 (isEmpty!25230 lt!1385457))))

(declare-fun tail!6155 (List!42315) List!42315)

(assert (=> b!3960830 (= lt!1385457 (tail!6155 prefixTokens!80))))

(assert (=> b!3960830 (= e!2452575 e!2452599)))

(declare-fun b!3960831 () Bool)

(declare-fun tp!1207195 () Bool)

(assert (=> b!3960831 (= e!2452579 (and tp_is_empty!20013 tp!1207195))))

(declare-fun b!3960832 () Bool)

(declare-fun tp!1207194 () Bool)

(declare-fun e!2452571 () Bool)

(assert (=> b!3960832 (= e!2452571 (and (inv!21 (value!209190 (h!47611 suffixTokens!72))) e!2452585 tp!1207194))))

(declare-fun b!3960833 () Bool)

(assert (=> b!3960833 (= e!2452576 true)))

(assert (=> b!3960833 false))

(declare-fun lt!1385454 () Unit!60695)

(declare-fun lemmaSamePrefixThenSameSuffix!1914 (List!42314 List!42314 List!42314 List!42314 List!42314) Unit!60695)

(assert (=> b!3960833 (= lt!1385454 (lemmaSamePrefixThenSameSuffix!1914 lt!1385461 (_2!23876 (v!39381 lt!1385466)) prefix!426 suffix!1176 lt!1385452))))

(assert (=> b!3960833 (= lt!1385461 prefix!426)))

(declare-fun lt!1385469 () Unit!60695)

(declare-fun lemmaIsPrefixSameLengthThenSameList!827 (List!42314 List!42314 List!42314) Unit!60695)

(assert (=> b!3960833 (= lt!1385469 (lemmaIsPrefixSameLengthThenSameList!827 lt!1385461 prefix!426 lt!1385452))))

(declare-fun b!3960834 () Bool)

(declare-fun Unit!60700 () Unit!60695)

(assert (=> b!3960834 (= e!2452599 Unit!60700)))

(declare-fun lt!1385446 () Unit!60695)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!610 (List!42314 List!42314 List!42314 List!42314) Unit!60695)

(assert (=> b!3960834 (= lt!1385446 (lemmaConcatSameAndSameSizesThenSameLists!610 lt!1385461 (_2!23876 (v!39381 lt!1385466)) lt!1385461 (_2!23876 lt!1385453)))))

(assert (=> b!3960834 (= (_2!23876 (v!39381 lt!1385466)) (_2!23876 lt!1385453))))

(declare-fun lt!1385459 () Unit!60695)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!144 (LexerInterface!6205 List!42316 List!42314 List!42314 List!42315 List!42314) Unit!60695)

(assert (=> b!3960834 (= lt!1385459 (lemmaLexWithSmallerInputCannotProduceSameResults!144 thiss!20629 rules!2768 suffix!1176 (_2!23876 lt!1385453) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603028 () Bool)

(assert (=> b!3960834 (= res!1603028 (not (= call!285406 lt!1385463)))))

(assert (=> b!3960834 (=> (not res!1603028) (not e!2452587))))

(assert (=> b!3960834 e!2452587))

(declare-fun b!3960835 () Bool)

(assert (=> b!3960835 (= e!2452595 e!2452590)))

(declare-fun res!1603029 () Bool)

(assert (=> b!3960835 (=> (not res!1603029) (not e!2452590))))

(declare-fun lt!1385468 () List!42315)

(assert (=> b!3960835 (= res!1603029 (= lt!1385462 (tuple2!41483 lt!1385468 suffixResult!91)))))

(assert (=> b!3960835 (= lt!1385462 (lexList!1973 thiss!20629 rules!2768 lt!1385452))))

(assert (=> b!3960835 (= lt!1385468 (++!10989 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10990 (List!42314 List!42314) List!42314)

(assert (=> b!3960835 (= lt!1385452 (++!10990 prefix!426 suffix!1176))))

(declare-fun bm!285401 () Bool)

(assert (=> bm!285401 (= call!285406 (lexList!1973 thiss!20629 rules!2768 (_2!23876 lt!1385453)))))

(declare-fun b!3960836 () Bool)

(declare-fun res!1603031 () Bool)

(assert (=> b!3960836 (=> (not res!1603031) (not e!2452595))))

(declare-fun isEmpty!25231 (List!42316) Bool)

(assert (=> b!3960836 (= res!1603031 (not (isEmpty!25231 rules!2768)))))

(assert (=> b!3960837 (= e!2452580 (and tp!1207203 tp!1207188))))

(declare-fun b!3960838 () Bool)

(assert (=> b!3960838 (= e!2452574 false)))

(declare-fun b!3960839 () Bool)

(declare-fun res!1603035 () Bool)

(assert (=> b!3960839 (=> (not res!1603035) (not e!2452595))))

(declare-fun isEmpty!25232 (List!42314) Bool)

(assert (=> b!3960839 (= res!1603035 (not (isEmpty!25232 prefix!426)))))

(declare-fun b!3960840 () Bool)

(declare-fun e!2452578 () Bool)

(assert (=> b!3960840 (= e!2452578 (not e!2452594))))

(declare-fun res!1603025 () Bool)

(assert (=> b!3960840 (=> res!1603025 e!2452594)))

(declare-fun lt!1385460 () List!42314)

(assert (=> b!3960840 (= res!1603025 (not (= lt!1385460 lt!1385452)))))

(assert (=> b!3960840 (= lt!1385451 (lexList!1973 thiss!20629 rules!2768 (_2!23876 (v!39381 lt!1385466))))))

(declare-fun lt!1385467 () List!42314)

(declare-fun lt!1385458 () Int)

(declare-fun lt!1385455 () TokenValue!6846)

(assert (=> b!3960840 (and (= (size!31594 (_1!23876 (v!39381 lt!1385466))) lt!1385458) (= (originalCharacters!7216 (_1!23876 (v!39381 lt!1385466))) lt!1385461) (= (v!39381 lt!1385466) (tuple2!41485 (Token!12371 lt!1385455 (rule!9596 (_1!23876 (v!39381 lt!1385466))) lt!1385458 lt!1385461) lt!1385467)))))

(assert (=> b!3960840 (= lt!1385458 (size!31595 lt!1385461))))

(assert (=> b!3960840 e!2452589))

(declare-fun res!1603039 () Bool)

(assert (=> b!3960840 (=> (not res!1603039) (not e!2452589))))

(assert (=> b!3960840 (= res!1603039 (= (value!209190 (_1!23876 (v!39381 lt!1385466))) lt!1385455))))

(declare-fun apply!9847 (TokenValueInjection!13120 BalanceConc!25248) TokenValue!6846)

(declare-fun seqFromList!4875 (List!42314) BalanceConc!25248)

(assert (=> b!3960840 (= lt!1385455 (apply!9847 (transformation!6616 (rule!9596 (_1!23876 (v!39381 lt!1385466)))) (seqFromList!4875 lt!1385461)))))

(assert (=> b!3960840 (= (_2!23876 (v!39381 lt!1385466)) lt!1385467)))

(declare-fun lt!1385471 () Unit!60695)

(assert (=> b!3960840 (= lt!1385471 (lemmaSamePrefixThenSameSuffix!1914 lt!1385461 (_2!23876 (v!39381 lt!1385466)) lt!1385461 lt!1385467 lt!1385452))))

(declare-fun getSuffix!2156 (List!42314 List!42314) List!42314)

(assert (=> b!3960840 (= lt!1385467 (getSuffix!2156 lt!1385452 lt!1385461))))

(assert (=> b!3960840 (isPrefix!3705 lt!1385461 lt!1385460)))

(assert (=> b!3960840 (= lt!1385460 (++!10990 lt!1385461 (_2!23876 (v!39381 lt!1385466))))))

(declare-fun lt!1385449 () Unit!60695)

(assert (=> b!3960840 (= lt!1385449 (lemmaConcatTwoListThenFirstIsPrefix!2564 lt!1385461 (_2!23876 (v!39381 lt!1385466))))))

(declare-fun list!15662 (BalanceConc!25248) List!42314)

(declare-fun charsOf!4434 (Token!12370) BalanceConc!25248)

(assert (=> b!3960840 (= lt!1385461 (list!15662 (charsOf!4434 (_1!23876 (v!39381 lt!1385466)))))))

(declare-fun ruleValid!2558 (LexerInterface!6205 Rule!13032) Bool)

(assert (=> b!3960840 (ruleValid!2558 thiss!20629 (rule!9596 (_1!23876 (v!39381 lt!1385466))))))

(declare-fun lt!1385464 () Unit!60695)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1634 (LexerInterface!6205 Rule!13032 List!42316) Unit!60695)

(assert (=> b!3960840 (= lt!1385464 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1634 thiss!20629 (rule!9596 (_1!23876 (v!39381 lt!1385466))) rules!2768))))

(declare-fun lt!1385472 () Unit!60695)

(declare-fun lemmaCharactersSize!1269 (Token!12370) Unit!60695)

(assert (=> b!3960840 (= lt!1385472 (lemmaCharactersSize!1269 (_1!23876 (v!39381 lt!1385466))))))

(declare-fun tp!1207202 () Bool)

(declare-fun b!3960841 () Bool)

(assert (=> b!3960841 (= e!2452581 (and (inv!56421 (h!47611 suffixTokens!72)) e!2452571 tp!1207202))))

(assert (=> b!3960842 (= e!2452600 (and tp!1207197 tp!1207196))))

(declare-fun b!3960843 () Bool)

(declare-fun Unit!60701 () Unit!60695)

(assert (=> b!3960843 (= e!2452582 Unit!60701)))

(declare-fun lt!1385445 () Int)

(assert (=> b!3960843 (= lt!1385445 (size!31595 lt!1385452))))

(declare-fun lt!1385470 () Unit!60695)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1385 (LexerInterface!6205 List!42316 List!42314 List!42314 List!42314 Rule!13032) Unit!60695)

(assert (=> b!3960843 (= lt!1385470 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1385 thiss!20629 rules!2768 lt!1385461 lt!1385452 (_2!23876 (v!39381 lt!1385466)) (rule!9596 (_1!23876 (v!39381 lt!1385466)))))))

(declare-fun maxPrefixOneRule!2559 (LexerInterface!6205 Rule!13032 List!42314) Option!9036)

(assert (=> b!3960843 (= (maxPrefixOneRule!2559 thiss!20629 (rule!9596 (_1!23876 (v!39381 lt!1385466))) lt!1385452) (Some!9035 (tuple2!41485 (Token!12371 lt!1385455 (rule!9596 (_1!23876 (v!39381 lt!1385466))) lt!1385458 lt!1385461) (_2!23876 (v!39381 lt!1385466)))))))

(declare-fun get!13914 (Option!9036) tuple2!41484)

(assert (=> b!3960843 (= lt!1385453 (get!13914 lt!1385466))))

(declare-fun c!687289 () Bool)

(assert (=> b!3960843 (= c!687289 (< (size!31595 (_2!23876 lt!1385453)) lt!1385447))))

(declare-fun lt!1385465 () Unit!60695)

(assert (=> b!3960843 (= lt!1385465 e!2452575)))

(assert (=> b!3960843 false))

(declare-fun b!3960844 () Bool)

(declare-fun tp!1207189 () Bool)

(assert (=> b!3960844 (= e!2452573 (and tp_is_empty!20013 tp!1207189))))

(declare-fun b!3960845 () Bool)

(assert (=> b!3960845 (= e!2452572 e!2452578)))

(declare-fun res!1603037 () Bool)

(assert (=> b!3960845 (=> (not res!1603037) (not e!2452578))))

(assert (=> b!3960845 (= res!1603037 ((_ is Some!9035) lt!1385466))))

(declare-fun maxPrefix!3509 (LexerInterface!6205 List!42316 List!42314) Option!9036)

(assert (=> b!3960845 (= lt!1385466 (maxPrefix!3509 thiss!20629 rules!2768 lt!1385452))))

(declare-fun b!3960846 () Bool)

(declare-fun res!1603038 () Bool)

(assert (=> b!3960846 (=> res!1603038 e!2452594)))

(assert (=> b!3960846 (= res!1603038 (or (not (= lt!1385451 (tuple2!41483 (_1!23875 lt!1385451) (_2!23875 lt!1385451)))) (= (_2!23876 (v!39381 lt!1385466)) suffix!1176)))))

(assert (= (and start!372588 res!1603024) b!3960836))

(assert (= (and b!3960836 res!1603031) b!3960829))

(assert (= (and b!3960829 res!1603026) b!3960816))

(assert (= (and b!3960816 res!1603030) b!3960839))

(assert (= (and b!3960839 res!1603035) b!3960835))

(assert (= (and b!3960835 res!1603029) b!3960814))

(assert (= (and b!3960814 res!1603027) b!3960845))

(assert (= (and b!3960845 res!1603037) b!3960840))

(assert (= (and b!3960840 res!1603039) b!3960817))

(assert (= (and b!3960840 (not res!1603025)) b!3960822))

(assert (= (and b!3960822 (not res!1603036)) b!3960846))

(assert (= (and b!3960846 (not res!1603038)) b!3960820))

(assert (= (and b!3960820 c!687288) b!3960843))

(assert (= (and b!3960820 (not c!687288)) b!3960825))

(assert (= (and b!3960843 c!687289) b!3960830))

(assert (= (and b!3960843 (not c!687289)) b!3960824))

(assert (= (and b!3960830 c!687287) b!3960834))

(assert (= (and b!3960830 (not c!687287)) b!3960819))

(assert (= (and b!3960834 res!1603028) b!3960828))

(assert (= (and b!3960819 res!1603032) b!3960838))

(assert (= (or b!3960834 b!3960819) bm!285401))

(assert (= (and b!3960820 (not res!1603033)) b!3960826))

(assert (= (and b!3960826 (not res!1603034)) b!3960833))

(assert (= (and start!372588 ((_ is Cons!42190) suffixResult!91)) b!3960844))

(assert (= (and start!372588 ((_ is Cons!42190) suffix!1176)) b!3960815))

(assert (= b!3960827 b!3960813))

(assert (= b!3960818 b!3960827))

(assert (= (and start!372588 ((_ is Cons!42192) rules!2768)) b!3960818))

(assert (= b!3960823 b!3960837))

(assert (= b!3960812 b!3960823))

(assert (= b!3960821 b!3960812))

(assert (= (and start!372588 ((_ is Cons!42191) prefixTokens!80)) b!3960821))

(assert (= b!3960811 b!3960842))

(assert (= b!3960832 b!3960811))

(assert (= b!3960841 b!3960832))

(assert (= (and start!372588 ((_ is Cons!42191) suffixTokens!72)) b!3960841))

(assert (= (and start!372588 ((_ is Cons!42190) prefix!426)) b!3960831))

(declare-fun m!4529781 () Bool)

(assert (=> b!3960823 m!4529781))

(declare-fun m!4529783 () Bool)

(assert (=> b!3960823 m!4529783))

(declare-fun m!4529785 () Bool)

(assert (=> b!3960812 m!4529785))

(declare-fun m!4529787 () Bool)

(assert (=> b!3960829 m!4529787))

(declare-fun m!4529789 () Bool)

(assert (=> b!3960834 m!4529789))

(declare-fun m!4529791 () Bool)

(assert (=> b!3960834 m!4529791))

(declare-fun m!4529793 () Bool)

(assert (=> b!3960814 m!4529793))

(declare-fun m!4529795 () Bool)

(assert (=> b!3960836 m!4529795))

(declare-fun m!4529797 () Bool)

(assert (=> b!3960816 m!4529797))

(declare-fun m!4529799 () Bool)

(assert (=> b!3960833 m!4529799))

(declare-fun m!4529801 () Bool)

(assert (=> b!3960833 m!4529801))

(declare-fun m!4529803 () Bool)

(assert (=> b!3960832 m!4529803))

(declare-fun m!4529805 () Bool)

(assert (=> b!3960811 m!4529805))

(declare-fun m!4529807 () Bool)

(assert (=> b!3960811 m!4529807))

(declare-fun m!4529809 () Bool)

(assert (=> b!3960821 m!4529809))

(declare-fun m!4529811 () Bool)

(assert (=> b!3960820 m!4529811))

(declare-fun m!4529813 () Bool)

(assert (=> b!3960820 m!4529813))

(declare-fun m!4529815 () Bool)

(assert (=> b!3960830 m!4529815))

(declare-fun m!4529817 () Bool)

(assert (=> b!3960830 m!4529817))

(declare-fun m!4529819 () Bool)

(assert (=> b!3960817 m!4529819))

(declare-fun m!4529821 () Bool)

(assert (=> b!3960835 m!4529821))

(declare-fun m!4529823 () Bool)

(assert (=> b!3960835 m!4529823))

(declare-fun m!4529825 () Bool)

(assert (=> b!3960835 m!4529825))

(declare-fun m!4529827 () Bool)

(assert (=> b!3960819 m!4529827))

(declare-fun m!4529829 () Bool)

(assert (=> b!3960819 m!4529829))

(declare-fun m!4529831 () Bool)

(assert (=> b!3960843 m!4529831))

(declare-fun m!4529833 () Bool)

(assert (=> b!3960843 m!4529833))

(declare-fun m!4529835 () Bool)

(assert (=> b!3960843 m!4529835))

(declare-fun m!4529837 () Bool)

(assert (=> b!3960843 m!4529837))

(declare-fun m!4529839 () Bool)

(assert (=> b!3960843 m!4529839))

(declare-fun m!4529841 () Bool)

(assert (=> b!3960845 m!4529841))

(declare-fun m!4529843 () Bool)

(assert (=> bm!285401 m!4529843))

(declare-fun m!4529845 () Bool)

(assert (=> b!3960826 m!4529845))

(declare-fun m!4529847 () Bool)

(assert (=> b!3960826 m!4529847))

(declare-fun m!4529849 () Bool)

(assert (=> b!3960826 m!4529849))

(declare-fun m!4529851 () Bool)

(assert (=> b!3960841 m!4529851))

(declare-fun m!4529853 () Bool)

(assert (=> b!3960822 m!4529853))

(declare-fun m!4529855 () Bool)

(assert (=> b!3960839 m!4529855))

(declare-fun m!4529857 () Bool)

(assert (=> b!3960827 m!4529857))

(declare-fun m!4529859 () Bool)

(assert (=> b!3960827 m!4529859))

(declare-fun m!4529861 () Bool)

(assert (=> b!3960840 m!4529861))

(declare-fun m!4529863 () Bool)

(assert (=> b!3960840 m!4529863))

(declare-fun m!4529865 () Bool)

(assert (=> b!3960840 m!4529865))

(declare-fun m!4529867 () Bool)

(assert (=> b!3960840 m!4529867))

(declare-fun m!4529869 () Bool)

(assert (=> b!3960840 m!4529869))

(declare-fun m!4529871 () Bool)

(assert (=> b!3960840 m!4529871))

(assert (=> b!3960840 m!4529867))

(declare-fun m!4529873 () Bool)

(assert (=> b!3960840 m!4529873))

(declare-fun m!4529875 () Bool)

(assert (=> b!3960840 m!4529875))

(declare-fun m!4529877 () Bool)

(assert (=> b!3960840 m!4529877))

(declare-fun m!4529879 () Bool)

(assert (=> b!3960840 m!4529879))

(declare-fun m!4529881 () Bool)

(assert (=> b!3960840 m!4529881))

(assert (=> b!3960840 m!4529861))

(declare-fun m!4529883 () Bool)

(assert (=> b!3960840 m!4529883))

(declare-fun m!4529885 () Bool)

(assert (=> b!3960840 m!4529885))

(declare-fun m!4529887 () Bool)

(assert (=> b!3960840 m!4529887))

(check-sat (not bm!285401) (not b!3960811) (not b!3960820) (not b!3960830) (not b!3960831) (not b!3960816) (not b!3960829) (not b_next!110027) (not b!3960812) (not b_next!110021) b_and!304107 (not b!3960843) (not b!3960839) (not b!3960815) (not b!3960823) (not b!3960826) b_and!304105 (not b_next!110031) (not b_next!110023) (not b!3960819) (not b!3960814) (not b!3960817) (not b!3960841) (not b!3960821) (not b!3960840) b_and!304099 b_and!304101 (not b!3960836) b_and!304103 tp_is_empty!20013 (not b!3960844) (not b!3960832) (not b_next!110025) (not b!3960818) (not b!3960827) (not b!3960822) b_and!304109 (not b!3960834) (not b!3960845) (not b!3960835) (not b!3960833) (not b_next!110029))
(check-sat (not b_next!110027) (not b_next!110023) b_and!304103 (not b_next!110025) (not b_next!110021) b_and!304107 b_and!304105 (not b_next!110031) b_and!304099 b_and!304101 b_and!304109 (not b_next!110029))
