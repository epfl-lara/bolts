; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373044 () Bool)

(assert start!373044)

(declare-fun b!3965265 () Bool)

(declare-fun b_free!109629 () Bool)

(declare-fun b_next!110333 () Bool)

(assert (=> b!3965265 (= b_free!109629 (not b_next!110333))))

(declare-fun tp!1208635 () Bool)

(declare-fun b_and!304555 () Bool)

(assert (=> b!3965265 (= tp!1208635 b_and!304555)))

(declare-fun b_free!109631 () Bool)

(declare-fun b_next!110335 () Bool)

(assert (=> b!3965265 (= b_free!109631 (not b_next!110335))))

(declare-fun tp!1208633 () Bool)

(declare-fun b_and!304557 () Bool)

(assert (=> b!3965265 (= tp!1208633 b_and!304557)))

(declare-fun b!3965251 () Bool)

(declare-fun b_free!109633 () Bool)

(declare-fun b_next!110337 () Bool)

(assert (=> b!3965251 (= b_free!109633 (not b_next!110337))))

(declare-fun tp!1208636 () Bool)

(declare-fun b_and!304559 () Bool)

(assert (=> b!3965251 (= tp!1208636 b_and!304559)))

(declare-fun b_free!109635 () Bool)

(declare-fun b_next!110339 () Bool)

(assert (=> b!3965251 (= b_free!109635 (not b_next!110339))))

(declare-fun tp!1208622 () Bool)

(declare-fun b_and!304561 () Bool)

(assert (=> b!3965251 (= tp!1208622 b_and!304561)))

(declare-fun b!3965280 () Bool)

(declare-fun b_free!109637 () Bool)

(declare-fun b_next!110341 () Bool)

(assert (=> b!3965280 (= b_free!109637 (not b_next!110341))))

(declare-fun tp!1208631 () Bool)

(declare-fun b_and!304563 () Bool)

(assert (=> b!3965280 (= tp!1208631 b_and!304563)))

(declare-fun b_free!109639 () Bool)

(declare-fun b_next!110343 () Bool)

(assert (=> b!3965280 (= b_free!109639 (not b_next!110343))))

(declare-fun tp!1208623 () Bool)

(declare-fun b_and!304565 () Bool)

(assert (=> b!3965280 (= tp!1208623 b_and!304565)))

(declare-fun b!3965235 () Bool)

(declare-datatypes ((Unit!60908 0))(
  ( (Unit!60909) )
))
(declare-fun e!2455903 () Unit!60908)

(declare-fun Unit!60910 () Unit!60908)

(assert (=> b!3965235 (= e!2455903 Unit!60910)))

(declare-datatypes ((C!23268 0))(
  ( (C!23269 (val!13728 Int)) )
))
(declare-datatypes ((List!42399 0))(
  ( (Nil!42275) (Cons!42275 (h!47695 C!23268) (t!330254 List!42399)) )
))
(declare-fun suffixResult!91 () List!42399)

(declare-datatypes ((LexerInterface!6225 0))(
  ( (LexerInterfaceExt!6222 (__x!25949 Int)) (Lexer!6223) )
))
(declare-fun thiss!20629 () LexerInterface!6225)

(declare-fun suffix!1176 () List!42399)

(declare-datatypes ((IArray!25699 0))(
  ( (IArray!25700 (innerList!12907 List!42399)) )
))
(declare-datatypes ((Conc!12847 0))(
  ( (Node!12847 (left!32047 Conc!12847) (right!32377 Conc!12847) (csize!25924 Int) (cheight!13058 Int)) (Leaf!19872 (xs!16153 IArray!25699) (csize!25925 Int)) (Empty!12847) )
))
(declare-datatypes ((BalanceConc!25288 0))(
  ( (BalanceConc!25289 (c!687924 Conc!12847)) )
))
(declare-datatypes ((List!42400 0))(
  ( (Nil!42276) (Cons!42276 (h!47696 (_ BitVec 16)) (t!330255 List!42400)) )
))
(declare-datatypes ((TokenValue!6866 0))(
  ( (FloatLiteralValue!13732 (text!48507 List!42400)) (TokenValueExt!6865 (__x!25950 Int)) (Broken!34330 (value!209734 List!42400)) (Object!6989) (End!6866) (Def!6866) (Underscore!6866) (Match!6866) (Else!6866) (Error!6866) (Case!6866) (If!6866) (Extends!6866) (Abstract!6866) (Class!6866) (Val!6866) (DelimiterValue!13732 (del!6926 List!42400)) (KeywordValue!6872 (value!209735 List!42400)) (CommentValue!13732 (value!209736 List!42400)) (WhitespaceValue!13732 (value!209737 List!42400)) (IndentationValue!6866 (value!209738 List!42400)) (String!48047) (Int32!6866) (Broken!34331 (value!209739 List!42400)) (Boolean!6867) (Unit!60911) (OperatorValue!6869 (op!6926 List!42400)) (IdentifierValue!13732 (value!209740 List!42400)) (IdentifierValue!13733 (value!209741 List!42400)) (WhitespaceValue!13733 (value!209742 List!42400)) (True!13732) (False!13732) (Broken!34332 (value!209743 List!42400)) (Broken!34333 (value!209744 List!42400)) (True!13733) (RightBrace!6866) (RightBracket!6866) (Colon!6866) (Null!6866) (Comma!6866) (LeftBracket!6866) (False!13733) (LeftBrace!6866) (ImaginaryLiteralValue!6866 (text!48508 List!42400)) (StringLiteralValue!20598 (value!209745 List!42400)) (EOFValue!6866 (value!209746 List!42400)) (IdentValue!6866 (value!209747 List!42400)) (DelimiterValue!13733 (value!209748 List!42400)) (DedentValue!6866 (value!209749 List!42400)) (NewLineValue!6866 (value!209750 List!42400)) (IntegerValue!20598 (value!209751 (_ BitVec 32)) (text!48509 List!42400)) (IntegerValue!20599 (value!209752 Int) (text!48510 List!42400)) (Times!6866) (Or!6866) (Equal!6866) (Minus!6866) (Broken!34334 (value!209753 List!42400)) (And!6866) (Div!6866) (LessEqual!6866) (Mod!6866) (Concat!18407) (Not!6866) (Plus!6866) (SpaceValue!6866 (value!209754 List!42400)) (IntegerValue!20600 (value!209755 Int) (text!48511 List!42400)) (StringLiteralValue!20599 (text!48512 List!42400)) (FloatLiteralValue!13733 (text!48513 List!42400)) (BytesLiteralValue!6866 (value!209756 List!42400)) (CommentValue!13733 (value!209757 List!42400)) (StringLiteralValue!20600 (value!209758 List!42400)) (ErrorTokenValue!6866 (msg!6927 List!42400)) )
))
(declare-datatypes ((Regex!11541 0))(
  ( (ElementMatch!11541 (c!687925 C!23268)) (Concat!18408 (regOne!23594 Regex!11541) (regTwo!23594 Regex!11541)) (EmptyExpr!11541) (Star!11541 (reg!11870 Regex!11541)) (EmptyLang!11541) (Union!11541 (regOne!23595 Regex!11541) (regTwo!23595 Regex!11541)) )
))
(declare-datatypes ((String!48048 0))(
  ( (String!48049 (value!209759 String)) )
))
(declare-datatypes ((TokenValueInjection!13160 0))(
  ( (TokenValueInjection!13161 (toValue!9116 Int) (toChars!8975 Int)) )
))
(declare-datatypes ((Rule!13072 0))(
  ( (Rule!13073 (regex!6636 Regex!11541) (tag!7496 String!48048) (isSeparator!6636 Bool) (transformation!6636 TokenValueInjection!13160)) )
))
(declare-datatypes ((List!42401 0))(
  ( (Nil!42277) (Cons!42277 (h!47697 Rule!13072) (t!330256 List!42401)) )
))
(declare-fun rules!2768 () List!42401)

(declare-datatypes ((Token!12410 0))(
  ( (Token!12411 (value!209760 TokenValue!6866) (rule!9622 Rule!13072) (size!31646 Int) (originalCharacters!7236 List!42399)) )
))
(declare-datatypes ((List!42402 0))(
  ( (Nil!42278) (Cons!42278 (h!47698 Token!12410) (t!330257 List!42402)) )
))
(declare-fun suffixTokens!72 () List!42402)

(declare-datatypes ((tuple2!41574 0))(
  ( (tuple2!41575 (_1!23921 Token!12410) (_2!23921 List!42399)) )
))
(declare-datatypes ((Option!9056 0))(
  ( (None!9055) (Some!9055 (v!39401 tuple2!41574)) )
))
(declare-fun lt!1388603 () Option!9056)

(declare-fun lt!1388598 () Unit!60908)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!164 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42402 List!42399) Unit!60908)

(assert (=> b!3965235 (= lt!1388598 (lemmaLexWithSmallerInputCannotProduceSameResults!164 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3965235 false))

(declare-fun b!3965236 () Bool)

(declare-fun e!2455899 () Bool)

(declare-fun e!2455877 () Bool)

(assert (=> b!3965236 (= e!2455899 e!2455877)))

(declare-fun res!1605086 () Bool)

(assert (=> b!3965236 (=> res!1605086 e!2455877)))

(declare-fun lt!1388614 () Int)

(declare-fun lt!1388611 () Int)

(assert (=> b!3965236 (= res!1605086 (<= lt!1388614 lt!1388611))))

(declare-fun lt!1388631 () Unit!60908)

(declare-fun e!2455896 () Unit!60908)

(assert (=> b!3965236 (= lt!1388631 e!2455896)))

(declare-fun c!687922 () Bool)

(assert (=> b!3965236 (= c!687922 (= lt!1388614 lt!1388611))))

(declare-fun lt!1388623 () Unit!60908)

(declare-fun e!2455889 () Unit!60908)

(assert (=> b!3965236 (= lt!1388623 e!2455889)))

(declare-fun c!687919 () Bool)

(assert (=> b!3965236 (= c!687919 (< lt!1388614 lt!1388611))))

(declare-fun size!31647 (List!42399) Int)

(assert (=> b!3965236 (= lt!1388611 (size!31647 suffix!1176))))

(assert (=> b!3965236 (= lt!1388614 (size!31647 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun b!3965237 () Bool)

(declare-fun e!2455888 () Bool)

(declare-fun e!2455894 () Bool)

(assert (=> b!3965237 (= e!2455888 e!2455894)))

(declare-fun res!1605071 () Bool)

(assert (=> b!3965237 (=> res!1605071 e!2455894)))

(declare-fun lt!1388630 () List!42399)

(declare-fun lt!1388595 () List!42399)

(declare-fun lt!1388627 () List!42399)

(declare-fun lt!1388628 () List!42399)

(assert (=> b!3965237 (= res!1605071 (or (not (= lt!1388630 lt!1388628)) (not (= lt!1388630 lt!1388627)) (not (= lt!1388595 lt!1388627))))))

(assert (=> b!3965237 (= lt!1388628 lt!1388627)))

(declare-fun lt!1388609 () List!42399)

(declare-fun lt!1388612 () List!42399)

(declare-fun ++!11029 (List!42399 List!42399) List!42399)

(assert (=> b!3965237 (= lt!1388627 (++!11029 lt!1388609 lt!1388612))))

(declare-fun lt!1388621 () List!42399)

(assert (=> b!3965237 (= lt!1388612 (++!11029 lt!1388621 suffix!1176))))

(declare-fun lt!1388599 () Unit!60908)

(declare-fun lemmaConcatAssociativity!2375 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> b!3965237 (= lt!1388599 (lemmaConcatAssociativity!2375 lt!1388609 lt!1388621 suffix!1176))))

(declare-fun b!3965238 () Bool)

(declare-fun e!2455891 () Unit!60908)

(declare-fun Unit!60912 () Unit!60908)

(assert (=> b!3965238 (= e!2455891 Unit!60912)))

(declare-fun lt!1388620 () List!42402)

(declare-fun lt!1388592 () Unit!60908)

(declare-fun lt!1388585 () tuple2!41574)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!164 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42402 List!42399 List!42402) Unit!60908)

(assert (=> b!3965238 (= lt!1388592 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!164 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91 lt!1388620))))

(declare-fun res!1605077 () Bool)

(declare-datatypes ((tuple2!41576 0))(
  ( (tuple2!41577 (_1!23922 List!42402) (_2!23922 List!42399)) )
))
(declare-fun call!285484 () tuple2!41576)

(declare-fun ++!11030 (List!42402 List!42402) List!42402)

(assert (=> b!3965238 (= res!1605077 (not (= call!285484 (tuple2!41577 (++!11030 lt!1388620 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2455902 () Bool)

(assert (=> b!3965238 (=> (not res!1605077) (not e!2455902))))

(assert (=> b!3965238 e!2455902))

(declare-fun b!3965239 () Bool)

(declare-fun Unit!60913 () Unit!60908)

(assert (=> b!3965239 (= e!2455889 Unit!60913)))

(declare-fun b!3965240 () Bool)

(declare-fun res!1605076 () Bool)

(declare-fun e!2455886 () Bool)

(assert (=> b!3965240 (=> res!1605076 e!2455886)))

(declare-fun isEmpty!25296 (List!42399) Bool)

(assert (=> b!3965240 (= res!1605076 (isEmpty!25296 lt!1388621))))

(declare-fun b!3965241 () Bool)

(declare-fun e!2455885 () Bool)

(assert (=> b!3965241 (= e!2455894 e!2455885)))

(declare-fun res!1605093 () Bool)

(assert (=> b!3965241 (=> res!1605093 e!2455885)))

(assert (=> b!3965241 (= res!1605093 (not (= lt!1388612 (_2!23921 (v!39401 lt!1388603)))))))

(assert (=> b!3965241 (= (_2!23921 (v!39401 lt!1388603)) lt!1388612)))

(declare-fun lt!1388591 () Unit!60908)

(declare-fun lemmaSamePrefixThenSameSuffix!1934 (List!42399 List!42399 List!42399 List!42399 List!42399) Unit!60908)

(assert (=> b!3965241 (= lt!1388591 (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388612 lt!1388630))))

(declare-fun isPrefix!3725 (List!42399 List!42399) Bool)

(assert (=> b!3965241 (isPrefix!3725 lt!1388609 lt!1388627)))

(declare-fun lt!1388601 () Unit!60908)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2584 (List!42399 List!42399) Unit!60908)

(assert (=> b!3965241 (= lt!1388601 (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388609 lt!1388612))))

(declare-fun b!3965242 () Bool)

(declare-fun e!2455909 () Bool)

(assert (=> b!3965242 (= e!2455877 e!2455909)))

(declare-fun res!1605092 () Bool)

(assert (=> b!3965242 (=> res!1605092 e!2455909)))

(declare-fun lt!1388615 () Int)

(declare-fun lt!1388608 () Int)

(assert (=> b!3965242 (= res!1605092 (>= lt!1388615 lt!1388608))))

(declare-fun prefix!426 () List!42399)

(assert (=> b!3965242 (= lt!1388608 (size!31647 prefix!426))))

(assert (=> b!3965242 (isPrefix!3725 lt!1388609 prefix!426)))

(declare-fun lt!1388593 () Unit!60908)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!321 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> b!3965242 (= lt!1388593 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!321 prefix!426 lt!1388609 lt!1388630))))

(assert (=> b!3965242 (isPrefix!3725 prefix!426 lt!1388630)))

(declare-fun lt!1388625 () Unit!60908)

(assert (=> b!3965242 (= lt!1388625 (lemmaConcatTwoListThenFirstIsPrefix!2584 prefix!426 suffix!1176))))

(declare-fun b!3965243 () Bool)

(declare-fun Unit!60914 () Unit!60908)

(assert (=> b!3965243 (= e!2455891 Unit!60914)))

(declare-fun lt!1388583 () Unit!60908)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!630 (List!42399 List!42399 List!42399 List!42399) Unit!60908)

(assert (=> b!3965243 (= lt!1388583 (lemmaConcatSameAndSameSizesThenSameLists!630 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 (_2!23921 lt!1388585)))))

(assert (=> b!3965243 (= (_2!23921 (v!39401 lt!1388603)) (_2!23921 lt!1388585))))

(declare-fun lt!1388584 () Unit!60908)

(assert (=> b!3965243 (= lt!1388584 (lemmaLexWithSmallerInputCannotProduceSameResults!164 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91))))

(declare-fun res!1605073 () Bool)

(declare-fun lt!1388617 () tuple2!41576)

(assert (=> b!3965243 (= res!1605073 (not (= call!285484 lt!1388617)))))

(declare-fun e!2455897 () Bool)

(assert (=> b!3965243 (=> (not res!1605073) (not e!2455897))))

(assert (=> b!3965243 e!2455897))

(declare-fun b!3965244 () Bool)

(declare-fun e!2455887 () Bool)

(declare-fun e!2455913 () Bool)

(assert (=> b!3965244 (= e!2455887 e!2455913)))

(declare-fun res!1605080 () Bool)

(assert (=> b!3965244 (=> (not res!1605080) (not e!2455913))))

(declare-fun lt!1388588 () List!42402)

(declare-fun lt!1388596 () tuple2!41576)

(assert (=> b!3965244 (= res!1605080 (= lt!1388596 (tuple2!41577 lt!1388588 suffixResult!91)))))

(declare-fun lexList!1993 (LexerInterface!6225 List!42401 List!42399) tuple2!41576)

(assert (=> b!3965244 (= lt!1388596 (lexList!1993 thiss!20629 rules!2768 lt!1388630))))

(declare-fun prefixTokens!80 () List!42402)

(assert (=> b!3965244 (= lt!1388588 (++!11030 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3965244 (= lt!1388630 (++!11029 prefix!426 suffix!1176))))

(declare-fun res!1605072 () Bool)

(assert (=> start!373044 (=> (not res!1605072) (not e!2455887))))

(get-info :version)

(assert (=> start!373044 (= res!1605072 ((_ is Lexer!6223) thiss!20629))))

(assert (=> start!373044 e!2455887))

(declare-fun e!2455910 () Bool)

(assert (=> start!373044 e!2455910))

(assert (=> start!373044 true))

(declare-fun e!2455883 () Bool)

(assert (=> start!373044 e!2455883))

(declare-fun e!2455898 () Bool)

(assert (=> start!373044 e!2455898))

(declare-fun e!2455878 () Bool)

(assert (=> start!373044 e!2455878))

(declare-fun e!2455904 () Bool)

(assert (=> start!373044 e!2455904))

(declare-fun e!2455908 () Bool)

(assert (=> start!373044 e!2455908))

(declare-fun b!3965245 () Bool)

(declare-fun tp!1208630 () Bool)

(declare-fun e!2455912 () Bool)

(declare-fun e!2455906 () Bool)

(declare-fun inv!21 (TokenValue!6866) Bool)

(assert (=> b!3965245 (= e!2455906 (and (inv!21 (value!209760 (h!47698 suffixTokens!72))) e!2455912 tp!1208630))))

(declare-fun b!3965246 () Bool)

(declare-fun tp!1208637 () Bool)

(declare-fun e!2455882 () Bool)

(declare-fun inv!56502 (Token!12410) Bool)

(assert (=> b!3965246 (= e!2455878 (and (inv!56502 (h!47698 prefixTokens!80)) e!2455882 tp!1208637))))

(declare-fun b!3965247 () Bool)

(declare-fun e!2455875 () Bool)

(assert (=> b!3965247 (= e!2455885 e!2455875)))

(declare-fun res!1605094 () Bool)

(assert (=> b!3965247 (=> res!1605094 e!2455875)))

(declare-fun lt!1388624 () tuple2!41576)

(declare-fun lt!1388594 () tuple2!41576)

(assert (=> b!3965247 (= res!1605094 (not (= lt!1388624 lt!1388594)))))

(declare-fun lt!1388616 () List!42402)

(assert (=> b!3965247 (= lt!1388594 (tuple2!41577 lt!1388616 suffixResult!91))))

(declare-fun lt!1388633 () List!42402)

(assert (=> b!3965247 (= lt!1388616 (++!11030 lt!1388633 suffixTokens!72))))

(declare-fun tail!6181 (List!42402) List!42402)

(assert (=> b!3965247 (= lt!1388633 (tail!6181 prefixTokens!80))))

(assert (=> b!3965247 (isPrefix!3725 lt!1388621 lt!1388612)))

(declare-fun lt!1388626 () Unit!60908)

(assert (=> b!3965247 (= lt!1388626 (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388621 suffix!1176))))

(declare-fun tp!1208626 () Bool)

(declare-fun e!2455905 () Bool)

(declare-fun b!3965248 () Bool)

(declare-fun e!2455900 () Bool)

(declare-fun inv!56499 (String!48048) Bool)

(declare-fun inv!56503 (TokenValueInjection!13160) Bool)

(assert (=> b!3965248 (= e!2455900 (and tp!1208626 (inv!56499 (tag!7496 (h!47697 rules!2768))) (inv!56503 (transformation!6636 (h!47697 rules!2768))) e!2455905))))

(declare-fun b!3965249 () Bool)

(declare-fun tp!1208632 () Bool)

(assert (=> b!3965249 (= e!2455898 (and e!2455900 tp!1208632))))

(declare-fun b!3965250 () Bool)

(declare-fun e!2455911 () Bool)

(assert (=> b!3965250 (= e!2455913 e!2455911)))

(declare-fun res!1605089 () Bool)

(assert (=> b!3965250 (=> (not res!1605089) (not e!2455911))))

(assert (=> b!3965250 (= res!1605089 (= (lexList!1993 thiss!20629 rules!2768 suffix!1176) lt!1388617))))

(assert (=> b!3965250 (= lt!1388617 (tuple2!41577 suffixTokens!72 suffixResult!91))))

(assert (=> b!3965251 (= e!2455905 (and tp!1208636 tp!1208622))))

(declare-fun b!3965252 () Bool)

(declare-fun res!1605085 () Bool)

(assert (=> b!3965252 (=> res!1605085 e!2455899)))

(assert (=> b!3965252 (= res!1605085 (or (not (= lt!1388624 (tuple2!41577 (_1!23922 lt!1388624) (_2!23922 lt!1388624)))) (= (_2!23921 (v!39401 lt!1388603)) suffix!1176)))))

(declare-fun b!3965253 () Bool)

(assert (=> b!3965253 (= e!2455875 e!2455886)))

(declare-fun res!1605074 () Bool)

(assert (=> b!3965253 (=> res!1605074 e!2455886)))

(declare-fun lt!1388587 () List!42402)

(assert (=> b!3965253 (= res!1605074 (not (= lt!1388587 lt!1388588)))))

(declare-fun lt!1388619 () List!42402)

(assert (=> b!3965253 (= lt!1388587 (++!11030 lt!1388619 lt!1388616))))

(assert (=> b!3965253 (= lt!1388587 (++!11030 (++!11030 lt!1388619 lt!1388633) suffixTokens!72))))

(declare-fun lt!1388597 () Unit!60908)

(declare-fun lemmaConcatAssociativity!2376 (List!42402 List!42402 List!42402) Unit!60908)

(assert (=> b!3965253 (= lt!1388597 (lemmaConcatAssociativity!2376 lt!1388619 lt!1388633 suffixTokens!72))))

(declare-fun lt!1388613 () Unit!60908)

(assert (=> b!3965253 (= lt!1388613 e!2455903)))

(declare-fun c!687920 () Bool)

(declare-fun lt!1388606 () Bool)

(assert (=> b!3965253 (= c!687920 lt!1388606)))

(declare-fun isEmpty!25297 (List!42402) Bool)

(assert (=> b!3965253 (= lt!1388606 (isEmpty!25297 lt!1388633))))

(declare-fun b!3965254 () Bool)

(declare-fun e!2455884 () Bool)

(assert (=> b!3965254 (= e!2455884 (= (size!31646 (_1!23921 (v!39401 lt!1388603))) (size!31647 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3965255 () Bool)

(declare-fun e!2455914 () Bool)

(assert (=> b!3965255 (= e!2455914 e!2455888)))

(declare-fun res!1605075 () Bool)

(assert (=> b!3965255 (=> res!1605075 e!2455888)))

(assert (=> b!3965255 (= res!1605075 (or (not (= lt!1388628 lt!1388630)) (not (= lt!1388628 lt!1388595))))))

(declare-fun lt!1388607 () List!42399)

(assert (=> b!3965255 (= lt!1388628 (++!11029 lt!1388607 suffix!1176))))

(declare-fun b!3965256 () Bool)

(declare-fun res!1605078 () Bool)

(assert (=> b!3965256 (=> (not res!1605078) (not e!2455887))))

(assert (=> b!3965256 (= res!1605078 (not (isEmpty!25296 prefix!426)))))

(declare-fun b!3965257 () Bool)

(declare-fun tp_is_empty!20053 () Bool)

(declare-fun tp!1208627 () Bool)

(assert (=> b!3965257 (= e!2455908 (and tp_is_empty!20053 tp!1208627))))

(declare-fun b!3965258 () Bool)

(declare-fun e!2455901 () Bool)

(assert (=> b!3965258 (= e!2455911 e!2455901)))

(declare-fun res!1605091 () Bool)

(assert (=> b!3965258 (=> (not res!1605091) (not e!2455901))))

(assert (=> b!3965258 (= res!1605091 ((_ is Some!9055) lt!1388603))))

(declare-fun maxPrefix!3529 (LexerInterface!6225 List!42401 List!42399) Option!9056)

(assert (=> b!3965258 (= lt!1388603 (maxPrefix!3529 thiss!20629 rules!2768 lt!1388630))))

(declare-fun tp!1208624 () Bool)

(declare-fun b!3965259 () Bool)

(assert (=> b!3965259 (= e!2455904 (and (inv!56502 (h!47698 suffixTokens!72)) e!2455906 tp!1208624))))

(declare-fun b!3965260 () Bool)

(declare-fun e!2455881 () Bool)

(assert (=> b!3965260 (= e!2455901 (not e!2455881))))

(declare-fun res!1605090 () Bool)

(assert (=> b!3965260 (=> res!1605090 e!2455881)))

(assert (=> b!3965260 (= res!1605090 (not (= lt!1388595 lt!1388630)))))

(assert (=> b!3965260 (= lt!1388624 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun lt!1388590 () TokenValue!6866)

(declare-fun lt!1388629 () List!42399)

(assert (=> b!3965260 (and (= (size!31646 (_1!23921 (v!39401 lt!1388603))) lt!1388615) (= (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))) lt!1388609) (= (v!39401 lt!1388603) (tuple2!41575 (Token!12411 lt!1388590 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388615 lt!1388609) lt!1388629)))))

(assert (=> b!3965260 (= lt!1388615 (size!31647 lt!1388609))))

(assert (=> b!3965260 e!2455884))

(declare-fun res!1605070 () Bool)

(assert (=> b!3965260 (=> (not res!1605070) (not e!2455884))))

(assert (=> b!3965260 (= res!1605070 (= (value!209760 (_1!23921 (v!39401 lt!1388603))) lt!1388590))))

(declare-fun apply!9867 (TokenValueInjection!13160 BalanceConc!25288) TokenValue!6866)

(declare-fun seqFromList!4895 (List!42399) BalanceConc!25288)

(assert (=> b!3965260 (= lt!1388590 (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 lt!1388609)))))

(assert (=> b!3965260 (= (_2!23921 (v!39401 lt!1388603)) lt!1388629)))

(declare-fun lt!1388618 () Unit!60908)

(assert (=> b!3965260 (= lt!1388618 (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388629 lt!1388630))))

(declare-fun getSuffix!2176 (List!42399 List!42399) List!42399)

(assert (=> b!3965260 (= lt!1388629 (getSuffix!2176 lt!1388630 lt!1388609))))

(assert (=> b!3965260 (isPrefix!3725 lt!1388609 lt!1388595)))

(assert (=> b!3965260 (= lt!1388595 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun lt!1388602 () Unit!60908)

(assert (=> b!3965260 (= lt!1388602 (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun list!15688 (BalanceConc!25288) List!42399)

(declare-fun charsOf!4454 (Token!12410) BalanceConc!25288)

(assert (=> b!3965260 (= lt!1388609 (list!15688 (charsOf!4454 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun ruleValid!2578 (LexerInterface!6225 Rule!13072) Bool)

(assert (=> b!3965260 (ruleValid!2578 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))

(declare-fun lt!1388610 () Unit!60908)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1654 (LexerInterface!6225 Rule!13072 List!42401) Unit!60908)

(assert (=> b!3965260 (= lt!1388610 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1654 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) rules!2768))))

(declare-fun lt!1388600 () Unit!60908)

(declare-fun lemmaCharactersSize!1289 (Token!12410) Unit!60908)

(assert (=> b!3965260 (= lt!1388600 (lemmaCharactersSize!1289 (_1!23921 (v!39401 lt!1388603))))))

(declare-fun b!3965261 () Bool)

(declare-fun res!1605084 () Bool)

(assert (=> b!3965261 (=> res!1605084 e!2455886)))

(assert (=> b!3965261 (= res!1605084 (not (= (lexList!1993 thiss!20629 rules!2768 lt!1388612) lt!1388594)))))

(declare-fun b!3965262 () Bool)

(declare-fun res!1605095 () Bool)

(assert (=> b!3965262 (=> (not res!1605095) (not e!2455887))))

(declare-fun rulesInvariant!5568 (LexerInterface!6225 List!42401) Bool)

(assert (=> b!3965262 (= res!1605095 (rulesInvariant!5568 thiss!20629 rules!2768))))

(declare-fun b!3965263 () Bool)

(assert (=> b!3965263 (= e!2455909 e!2455914)))

(declare-fun res!1605083 () Bool)

(assert (=> b!3965263 (=> res!1605083 e!2455914)))

(assert (=> b!3965263 (= res!1605083 (not (= lt!1388607 prefix!426)))))

(assert (=> b!3965263 (= lt!1388607 (++!11029 lt!1388609 lt!1388621))))

(assert (=> b!3965263 (= lt!1388621 (getSuffix!2176 prefix!426 lt!1388609))))

(declare-fun b!3965264 () Bool)

(declare-fun res!1605082 () Bool)

(assert (=> b!3965264 (=> res!1605082 e!2455877)))

(declare-fun head!8449 (List!42402) Token!12410)

(assert (=> b!3965264 (= res!1605082 (not (= (head!8449 prefixTokens!80) (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun e!2455890 () Bool)

(assert (=> b!3965265 (= e!2455890 (and tp!1208635 tp!1208633))))

(declare-fun bm!285479 () Bool)

(assert (=> bm!285479 (= call!285484 (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)))))

(declare-fun b!3965266 () Bool)

(declare-fun res!1605079 () Bool)

(assert (=> b!3965266 (=> res!1605079 e!2455886)))

(assert (=> b!3965266 (= res!1605079 lt!1388606)))

(declare-fun b!3965267 () Bool)

(declare-fun e!2455880 () Unit!60908)

(declare-fun Unit!60915 () Unit!60908)

(assert (=> b!3965267 (= e!2455880 Unit!60915)))

(declare-fun b!3965268 () Bool)

(assert (=> b!3965268 (= e!2455881 e!2455899)))

(declare-fun res!1605081 () Bool)

(assert (=> b!3965268 (=> res!1605081 e!2455899)))

(assert (=> b!3965268 (= res!1605081 (not (= lt!1388596 (tuple2!41577 (++!11030 lt!1388619 (_1!23922 lt!1388624)) (_2!23922 lt!1388624)))))))

(assert (=> b!3965268 (= lt!1388619 (Cons!42278 (_1!23921 (v!39401 lt!1388603)) Nil!42278))))

(declare-fun b!3965269 () Bool)

(assert (=> b!3965269 (= e!2455897 false)))

(declare-fun b!3965270 () Bool)

(declare-fun res!1605088 () Bool)

(assert (=> b!3965270 (=> (not res!1605088) (not e!2455887))))

(assert (=> b!3965270 (= res!1605088 (not (isEmpty!25297 prefixTokens!80)))))

(declare-fun b!3965271 () Bool)

(assert (=> b!3965271 (= e!2455886 (< (size!31647 lt!1388621) lt!1388608))))

(declare-fun b!3965272 () Bool)

(declare-fun Unit!60916 () Unit!60908)

(assert (=> b!3965272 (= e!2455903 Unit!60916)))

(declare-fun b!3965273 () Bool)

(declare-fun c!687921 () Bool)

(assert (=> b!3965273 (= c!687921 (isEmpty!25297 lt!1388620))))

(assert (=> b!3965273 (= lt!1388620 (tail!6181 prefixTokens!80))))

(assert (=> b!3965273 (= e!2455880 e!2455891)))

(declare-fun b!3965274 () Bool)

(declare-fun tp!1208629 () Bool)

(assert (=> b!3965274 (= e!2455883 (and tp_is_empty!20053 tp!1208629))))

(declare-fun b!3965275 () Bool)

(assert (=> b!3965275 (= e!2455902 false)))

(declare-fun b!3965276 () Bool)

(declare-fun tp!1208628 () Bool)

(declare-fun e!2455907 () Bool)

(assert (=> b!3965276 (= e!2455882 (and (inv!21 (value!209760 (h!47698 prefixTokens!80))) e!2455907 tp!1208628))))

(declare-fun tp!1208638 () Bool)

(declare-fun b!3965277 () Bool)

(declare-fun e!2455874 () Bool)

(assert (=> b!3965277 (= e!2455907 (and tp!1208638 (inv!56499 (tag!7496 (rule!9622 (h!47698 prefixTokens!80)))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) e!2455874))))

(declare-fun b!3965278 () Bool)

(declare-fun tp!1208625 () Bool)

(assert (=> b!3965278 (= e!2455910 (and tp_is_empty!20053 tp!1208625))))

(declare-fun b!3965279 () Bool)

(declare-fun tp!1208634 () Bool)

(assert (=> b!3965279 (= e!2455912 (and tp!1208634 (inv!56499 (tag!7496 (rule!9622 (h!47698 suffixTokens!72)))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) e!2455890))))

(assert (=> b!3965280 (= e!2455874 (and tp!1208631 tp!1208623))))

(declare-fun b!3965281 () Bool)

(declare-fun Unit!60917 () Unit!60908)

(assert (=> b!3965281 (= e!2455889 Unit!60917)))

(declare-fun lt!1388586 () Int)

(assert (=> b!3965281 (= lt!1388586 (size!31647 lt!1388630))))

(declare-fun lt!1388604 () Unit!60908)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1405 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42399 Rule!13072) Unit!60908)

(assert (=> b!3965281 (= lt!1388604 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1405 thiss!20629 rules!2768 lt!1388609 lt!1388630 (_2!23921 (v!39401 lt!1388603)) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun maxPrefixOneRule!2579 (LexerInterface!6225 Rule!13072 List!42399) Option!9056)

(assert (=> b!3965281 (= (maxPrefixOneRule!2579 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388630) (Some!9055 (tuple2!41575 (Token!12411 lt!1388590 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388615 lt!1388609) (_2!23921 (v!39401 lt!1388603)))))))

(declare-fun get!13944 (Option!9056) tuple2!41574)

(assert (=> b!3965281 (= lt!1388585 (get!13944 lt!1388603))))

(declare-fun c!687923 () Bool)

(assert (=> b!3965281 (= c!687923 (< (size!31647 (_2!23921 lt!1388585)) lt!1388611))))

(declare-fun lt!1388632 () Unit!60908)

(assert (=> b!3965281 (= lt!1388632 e!2455880)))

(assert (=> b!3965281 false))

(declare-fun b!3965282 () Bool)

(declare-fun Unit!60918 () Unit!60908)

(assert (=> b!3965282 (= e!2455896 Unit!60918)))

(declare-fun lt!1388589 () Unit!60908)

(assert (=> b!3965282 (= lt!1388589 (lemmaConcatTwoListThenFirstIsPrefix!2584 prefix!426 suffix!1176))))

(assert (=> b!3965282 (isPrefix!3725 prefix!426 lt!1388630)))

(declare-fun lt!1388622 () Unit!60908)

(declare-fun lemmaIsPrefixSameLengthThenSameList!847 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> b!3965282 (= lt!1388622 (lemmaIsPrefixSameLengthThenSameList!847 lt!1388609 prefix!426 lt!1388630))))

(assert (=> b!3965282 (= lt!1388609 prefix!426)))

(declare-fun lt!1388605 () Unit!60908)

(assert (=> b!3965282 (= lt!1388605 (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) prefix!426 suffix!1176 lt!1388630))))

(assert (=> b!3965282 false))

(declare-fun b!3965283 () Bool)

(declare-fun Unit!60919 () Unit!60908)

(assert (=> b!3965283 (= e!2455896 Unit!60919)))

(declare-fun b!3965284 () Bool)

(declare-fun res!1605087 () Bool)

(assert (=> b!3965284 (=> (not res!1605087) (not e!2455887))))

(declare-fun isEmpty!25298 (List!42401) Bool)

(assert (=> b!3965284 (= res!1605087 (not (isEmpty!25298 rules!2768)))))

(assert (= (and start!373044 res!1605072) b!3965284))

(assert (= (and b!3965284 res!1605087) b!3965262))

(assert (= (and b!3965262 res!1605095) b!3965270))

(assert (= (and b!3965270 res!1605088) b!3965256))

(assert (= (and b!3965256 res!1605078) b!3965244))

(assert (= (and b!3965244 res!1605080) b!3965250))

(assert (= (and b!3965250 res!1605089) b!3965258))

(assert (= (and b!3965258 res!1605091) b!3965260))

(assert (= (and b!3965260 res!1605070) b!3965254))

(assert (= (and b!3965260 (not res!1605090)) b!3965268))

(assert (= (and b!3965268 (not res!1605081)) b!3965252))

(assert (= (and b!3965252 (not res!1605085)) b!3965236))

(assert (= (and b!3965236 c!687919) b!3965281))

(assert (= (and b!3965236 (not c!687919)) b!3965239))

(assert (= (and b!3965281 c!687923) b!3965273))

(assert (= (and b!3965281 (not c!687923)) b!3965267))

(assert (= (and b!3965273 c!687921) b!3965243))

(assert (= (and b!3965273 (not c!687921)) b!3965238))

(assert (= (and b!3965243 res!1605073) b!3965269))

(assert (= (and b!3965238 res!1605077) b!3965275))

(assert (= (or b!3965243 b!3965238) bm!285479))

(assert (= (and b!3965236 c!687922) b!3965282))

(assert (= (and b!3965236 (not c!687922)) b!3965283))

(assert (= (and b!3965236 (not res!1605086)) b!3965264))

(assert (= (and b!3965264 (not res!1605082)) b!3965242))

(assert (= (and b!3965242 (not res!1605092)) b!3965263))

(assert (= (and b!3965263 (not res!1605083)) b!3965255))

(assert (= (and b!3965255 (not res!1605075)) b!3965237))

(assert (= (and b!3965237 (not res!1605071)) b!3965241))

(assert (= (and b!3965241 (not res!1605093)) b!3965247))

(assert (= (and b!3965247 (not res!1605094)) b!3965253))

(assert (= (and b!3965253 c!687920) b!3965235))

(assert (= (and b!3965253 (not c!687920)) b!3965272))

(assert (= (and b!3965253 (not res!1605074)) b!3965261))

(assert (= (and b!3965261 (not res!1605084)) b!3965266))

(assert (= (and b!3965266 (not res!1605079)) b!3965240))

(assert (= (and b!3965240 (not res!1605076)) b!3965271))

(assert (= (and start!373044 ((_ is Cons!42275) suffixResult!91)) b!3965278))

(assert (= (and start!373044 ((_ is Cons!42275) suffix!1176)) b!3965274))

(assert (= b!3965248 b!3965251))

(assert (= b!3965249 b!3965248))

(assert (= (and start!373044 ((_ is Cons!42277) rules!2768)) b!3965249))

(assert (= b!3965277 b!3965280))

(assert (= b!3965276 b!3965277))

(assert (= b!3965246 b!3965276))

(assert (= (and start!373044 ((_ is Cons!42278) prefixTokens!80)) b!3965246))

(assert (= b!3965279 b!3965265))

(assert (= b!3965245 b!3965279))

(assert (= b!3965259 b!3965245))

(assert (= (and start!373044 ((_ is Cons!42278) suffixTokens!72)) b!3965259))

(assert (= (and start!373044 ((_ is Cons!42275) prefix!426)) b!3965257))

(declare-fun m!4534841 () Bool)

(assert (=> b!3965268 m!4534841))

(declare-fun m!4534843 () Bool)

(assert (=> b!3965245 m!4534843))

(declare-fun m!4534845 () Bool)

(assert (=> b!3965282 m!4534845))

(declare-fun m!4534847 () Bool)

(assert (=> b!3965282 m!4534847))

(declare-fun m!4534849 () Bool)

(assert (=> b!3965282 m!4534849))

(declare-fun m!4534851 () Bool)

(assert (=> b!3965282 m!4534851))

(declare-fun m!4534853 () Bool)

(assert (=> b!3965277 m!4534853))

(declare-fun m!4534855 () Bool)

(assert (=> b!3965277 m!4534855))

(declare-fun m!4534857 () Bool)

(assert (=> b!3965258 m!4534857))

(declare-fun m!4534859 () Bool)

(assert (=> b!3965262 m!4534859))

(declare-fun m!4534861 () Bool)

(assert (=> b!3965235 m!4534861))

(declare-fun m!4534863 () Bool)

(assert (=> b!3965236 m!4534863))

(declare-fun m!4534865 () Bool)

(assert (=> b!3965236 m!4534865))

(declare-fun m!4534867 () Bool)

(assert (=> b!3965273 m!4534867))

(declare-fun m!4534869 () Bool)

(assert (=> b!3965273 m!4534869))

(declare-fun m!4534871 () Bool)

(assert (=> b!3965244 m!4534871))

(declare-fun m!4534873 () Bool)

(assert (=> b!3965244 m!4534873))

(declare-fun m!4534875 () Bool)

(assert (=> b!3965244 m!4534875))

(declare-fun m!4534877 () Bool)

(assert (=> b!3965260 m!4534877))

(declare-fun m!4534879 () Bool)

(assert (=> b!3965260 m!4534879))

(declare-fun m!4534881 () Bool)

(assert (=> b!3965260 m!4534881))

(declare-fun m!4534883 () Bool)

(assert (=> b!3965260 m!4534883))

(declare-fun m!4534885 () Bool)

(assert (=> b!3965260 m!4534885))

(declare-fun m!4534887 () Bool)

(assert (=> b!3965260 m!4534887))

(declare-fun m!4534889 () Bool)

(assert (=> b!3965260 m!4534889))

(declare-fun m!4534891 () Bool)

(assert (=> b!3965260 m!4534891))

(declare-fun m!4534893 () Bool)

(assert (=> b!3965260 m!4534893))

(assert (=> b!3965260 m!4534891))

(declare-fun m!4534895 () Bool)

(assert (=> b!3965260 m!4534895))

(assert (=> b!3965260 m!4534893))

(declare-fun m!4534897 () Bool)

(assert (=> b!3965260 m!4534897))

(declare-fun m!4534899 () Bool)

(assert (=> b!3965260 m!4534899))

(declare-fun m!4534901 () Bool)

(assert (=> b!3965260 m!4534901))

(declare-fun m!4534903 () Bool)

(assert (=> b!3965260 m!4534903))

(declare-fun m!4534905 () Bool)

(assert (=> b!3965253 m!4534905))

(declare-fun m!4534907 () Bool)

(assert (=> b!3965253 m!4534907))

(declare-fun m!4534909 () Bool)

(assert (=> b!3965253 m!4534909))

(declare-fun m!4534911 () Bool)

(assert (=> b!3965253 m!4534911))

(assert (=> b!3965253 m!4534911))

(declare-fun m!4534913 () Bool)

(assert (=> b!3965253 m!4534913))

(declare-fun m!4534915 () Bool)

(assert (=> b!3965259 m!4534915))

(declare-fun m!4534917 () Bool)

(assert (=> bm!285479 m!4534917))

(declare-fun m!4534919 () Bool)

(assert (=> b!3965276 m!4534919))

(declare-fun m!4534921 () Bool)

(assert (=> b!3965271 m!4534921))

(declare-fun m!4534923 () Bool)

(assert (=> b!3965243 m!4534923))

(declare-fun m!4534925 () Bool)

(assert (=> b!3965243 m!4534925))

(declare-fun m!4534927 () Bool)

(assert (=> b!3965284 m!4534927))

(declare-fun m!4534929 () Bool)

(assert (=> b!3965247 m!4534929))

(assert (=> b!3965247 m!4534869))

(declare-fun m!4534931 () Bool)

(assert (=> b!3965247 m!4534931))

(declare-fun m!4534933 () Bool)

(assert (=> b!3965247 m!4534933))

(declare-fun m!4534935 () Bool)

(assert (=> b!3965279 m!4534935))

(declare-fun m!4534937 () Bool)

(assert (=> b!3965279 m!4534937))

(declare-fun m!4534939 () Bool)

(assert (=> b!3965246 m!4534939))

(declare-fun m!4534941 () Bool)

(assert (=> b!3965238 m!4534941))

(declare-fun m!4534943 () Bool)

(assert (=> b!3965238 m!4534943))

(declare-fun m!4534945 () Bool)

(assert (=> b!3965264 m!4534945))

(declare-fun m!4534947 () Bool)

(assert (=> b!3965256 m!4534947))

(declare-fun m!4534949 () Bool)

(assert (=> b!3965248 m!4534949))

(declare-fun m!4534951 () Bool)

(assert (=> b!3965248 m!4534951))

(declare-fun m!4534953 () Bool)

(assert (=> b!3965270 m!4534953))

(declare-fun m!4534955 () Bool)

(assert (=> b!3965241 m!4534955))

(declare-fun m!4534957 () Bool)

(assert (=> b!3965241 m!4534957))

(declare-fun m!4534959 () Bool)

(assert (=> b!3965241 m!4534959))

(declare-fun m!4534961 () Bool)

(assert (=> b!3965240 m!4534961))

(declare-fun m!4534963 () Bool)

(assert (=> b!3965237 m!4534963))

(declare-fun m!4534965 () Bool)

(assert (=> b!3965237 m!4534965))

(declare-fun m!4534967 () Bool)

(assert (=> b!3965237 m!4534967))

(declare-fun m!4534969 () Bool)

(assert (=> b!3965250 m!4534969))

(declare-fun m!4534971 () Bool)

(assert (=> b!3965263 m!4534971))

(declare-fun m!4534973 () Bool)

(assert (=> b!3965263 m!4534973))

(declare-fun m!4534975 () Bool)

(assert (=> b!3965242 m!4534975))

(declare-fun m!4534977 () Bool)

(assert (=> b!3965242 m!4534977))

(assert (=> b!3965242 m!4534845))

(declare-fun m!4534979 () Bool)

(assert (=> b!3965242 m!4534979))

(assert (=> b!3965242 m!4534847))

(declare-fun m!4534981 () Bool)

(assert (=> b!3965281 m!4534981))

(declare-fun m!4534983 () Bool)

(assert (=> b!3965281 m!4534983))

(declare-fun m!4534985 () Bool)

(assert (=> b!3965281 m!4534985))

(declare-fun m!4534987 () Bool)

(assert (=> b!3965281 m!4534987))

(declare-fun m!4534989 () Bool)

(assert (=> b!3965281 m!4534989))

(declare-fun m!4534991 () Bool)

(assert (=> b!3965255 m!4534991))

(declare-fun m!4534993 () Bool)

(assert (=> b!3965261 m!4534993))

(declare-fun m!4534995 () Bool)

(assert (=> b!3965254 m!4534995))

(check-sat (not b!3965277) (not b!3965243) b_and!304557 (not b!3965257) (not b!3965240) (not b!3965276) (not b_next!110339) (not b!3965278) (not b!3965248) (not b!3965264) (not b!3965261) (not b!3965279) (not b!3965258) (not b!3965254) (not b!3965270) (not b!3965256) (not b!3965245) (not b!3965274) (not b!3965253) (not b!3965246) (not b!3965237) (not b_next!110333) b_and!304559 tp_is_empty!20053 (not b!3965249) (not b!3965241) (not b!3965263) (not b!3965242) (not b_next!110337) (not b!3965271) b_and!304563 (not b!3965255) b_and!304565 (not b!3965235) b_and!304555 (not b!3965244) (not bm!285479) (not b!3965273) (not b!3965238) (not b_next!110343) (not b!3965284) (not b_next!110335) (not b!3965236) (not b!3965259) (not b!3965247) b_and!304561 (not b!3965262) (not b!3965282) (not b_next!110341) (not b!3965268) (not b!3965281) (not b!3965260) (not b!3965250))
(check-sat (not b_next!110339) (not b_next!110333) b_and!304559 (not b_next!110337) b_and!304563 b_and!304557 (not b_next!110343) (not b_next!110335) b_and!304561 (not b_next!110341) b_and!304565 b_and!304555)
(get-model)

(declare-fun b!3965295 () Bool)

(declare-fun e!2455922 () Bool)

(declare-fun lt!1388641 () tuple2!41576)

(assert (=> b!3965295 (= e!2455922 (not (isEmpty!25297 (_1!23922 lt!1388641))))))

(declare-fun b!3965296 () Bool)

(declare-fun e!2455921 () tuple2!41576)

(assert (=> b!3965296 (= e!2455921 (tuple2!41577 Nil!42278 lt!1388630))))

(declare-fun b!3965297 () Bool)

(declare-fun lt!1388640 () Option!9056)

(declare-fun lt!1388642 () tuple2!41576)

(assert (=> b!3965297 (= e!2455921 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388640)) (_1!23922 lt!1388642)) (_2!23922 lt!1388642)))))

(assert (=> b!3965297 (= lt!1388642 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388640))))))

(declare-fun b!3965299 () Bool)

(declare-fun e!2455923 () Bool)

(assert (=> b!3965299 (= e!2455923 e!2455922)))

(declare-fun res!1605102 () Bool)

(assert (=> b!3965299 (= res!1605102 (< (size!31647 (_2!23922 lt!1388641)) (size!31647 lt!1388630)))))

(assert (=> b!3965299 (=> (not res!1605102) (not e!2455922))))

(declare-fun b!3965298 () Bool)

(assert (=> b!3965298 (= e!2455923 (= (_2!23922 lt!1388641) lt!1388630))))

(declare-fun d!1174557 () Bool)

(assert (=> d!1174557 e!2455923))

(declare-fun c!687931 () Bool)

(declare-fun size!31648 (List!42402) Int)

(assert (=> d!1174557 (= c!687931 (> (size!31648 (_1!23922 lt!1388641)) 0))))

(assert (=> d!1174557 (= lt!1388641 e!2455921)))

(declare-fun c!687930 () Bool)

(assert (=> d!1174557 (= c!687930 ((_ is Some!9055) lt!1388640))))

(assert (=> d!1174557 (= lt!1388640 (maxPrefix!3529 thiss!20629 rules!2768 lt!1388630))))

(assert (=> d!1174557 (= (lexList!1993 thiss!20629 rules!2768 lt!1388630) lt!1388641)))

(assert (= (and d!1174557 c!687930) b!3965297))

(assert (= (and d!1174557 (not c!687930)) b!3965296))

(assert (= (and d!1174557 c!687931) b!3965299))

(assert (= (and d!1174557 (not c!687931)) b!3965298))

(assert (= (and b!3965299 res!1605102) b!3965295))

(declare-fun m!4534997 () Bool)

(assert (=> b!3965295 m!4534997))

(declare-fun m!4534999 () Bool)

(assert (=> b!3965297 m!4534999))

(declare-fun m!4535001 () Bool)

(assert (=> b!3965299 m!4535001))

(assert (=> b!3965299 m!4534981))

(declare-fun m!4535003 () Bool)

(assert (=> d!1174557 m!4535003))

(assert (=> d!1174557 m!4534857))

(assert (=> b!3965244 d!1174557))

(declare-fun b!3965308 () Bool)

(declare-fun e!2455929 () List!42402)

(assert (=> b!3965308 (= e!2455929 suffixTokens!72)))

(declare-fun b!3965309 () Bool)

(assert (=> b!3965309 (= e!2455929 (Cons!42278 (h!47698 prefixTokens!80) (++!11030 (t!330257 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3965310 () Bool)

(declare-fun res!1605108 () Bool)

(declare-fun e!2455928 () Bool)

(assert (=> b!3965310 (=> (not res!1605108) (not e!2455928))))

(declare-fun lt!1388645 () List!42402)

(assert (=> b!3965310 (= res!1605108 (= (size!31648 lt!1388645) (+ (size!31648 prefixTokens!80) (size!31648 suffixTokens!72))))))

(declare-fun b!3965311 () Bool)

(assert (=> b!3965311 (= e!2455928 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388645 prefixTokens!80)))))

(declare-fun d!1174559 () Bool)

(assert (=> d!1174559 e!2455928))

(declare-fun res!1605107 () Bool)

(assert (=> d!1174559 (=> (not res!1605107) (not e!2455928))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6420 (List!42402) (InoxSet Token!12410))

(assert (=> d!1174559 (= res!1605107 (= (content!6420 lt!1388645) ((_ map or) (content!6420 prefixTokens!80) (content!6420 suffixTokens!72))))))

(assert (=> d!1174559 (= lt!1388645 e!2455929)))

(declare-fun c!687934 () Bool)

(assert (=> d!1174559 (= c!687934 ((_ is Nil!42278) prefixTokens!80))))

(assert (=> d!1174559 (= (++!11030 prefixTokens!80 suffixTokens!72) lt!1388645)))

(assert (= (and d!1174559 c!687934) b!3965308))

(assert (= (and d!1174559 (not c!687934)) b!3965309))

(assert (= (and d!1174559 res!1605107) b!3965310))

(assert (= (and b!3965310 res!1605108) b!3965311))

(declare-fun m!4535005 () Bool)

(assert (=> b!3965309 m!4535005))

(declare-fun m!4535007 () Bool)

(assert (=> b!3965310 m!4535007))

(declare-fun m!4535009 () Bool)

(assert (=> b!3965310 m!4535009))

(declare-fun m!4535011 () Bool)

(assert (=> b!3965310 m!4535011))

(declare-fun m!4535013 () Bool)

(assert (=> d!1174559 m!4535013))

(declare-fun m!4535015 () Bool)

(assert (=> d!1174559 m!4535015))

(declare-fun m!4535017 () Bool)

(assert (=> d!1174559 m!4535017))

(assert (=> b!3965244 d!1174559))

(declare-fun b!3965322 () Bool)

(declare-fun res!1605113 () Bool)

(declare-fun e!2455935 () Bool)

(assert (=> b!3965322 (=> (not res!1605113) (not e!2455935))))

(declare-fun lt!1388648 () List!42399)

(assert (=> b!3965322 (= res!1605113 (= (size!31647 lt!1388648) (+ (size!31647 prefix!426) (size!31647 suffix!1176))))))

(declare-fun b!3965323 () Bool)

(assert (=> b!3965323 (= e!2455935 (or (not (= suffix!1176 Nil!42275)) (= lt!1388648 prefix!426)))))

(declare-fun b!3965320 () Bool)

(declare-fun e!2455934 () List!42399)

(assert (=> b!3965320 (= e!2455934 suffix!1176)))

(declare-fun d!1174561 () Bool)

(assert (=> d!1174561 e!2455935))

(declare-fun res!1605114 () Bool)

(assert (=> d!1174561 (=> (not res!1605114) (not e!2455935))))

(declare-fun content!6421 (List!42399) (InoxSet C!23268))

(assert (=> d!1174561 (= res!1605114 (= (content!6421 lt!1388648) ((_ map or) (content!6421 prefix!426) (content!6421 suffix!1176))))))

(assert (=> d!1174561 (= lt!1388648 e!2455934)))

(declare-fun c!687937 () Bool)

(assert (=> d!1174561 (= c!687937 ((_ is Nil!42275) prefix!426))))

(assert (=> d!1174561 (= (++!11029 prefix!426 suffix!1176) lt!1388648)))

(declare-fun b!3965321 () Bool)

(assert (=> b!3965321 (= e!2455934 (Cons!42275 (h!47695 prefix!426) (++!11029 (t!330254 prefix!426) suffix!1176)))))

(assert (= (and d!1174561 c!687937) b!3965320))

(assert (= (and d!1174561 (not c!687937)) b!3965321))

(assert (= (and d!1174561 res!1605114) b!3965322))

(assert (= (and b!3965322 res!1605113) b!3965323))

(declare-fun m!4535019 () Bool)

(assert (=> b!3965322 m!4535019))

(assert (=> b!3965322 m!4534977))

(assert (=> b!3965322 m!4534863))

(declare-fun m!4535021 () Bool)

(assert (=> d!1174561 m!4535021))

(declare-fun m!4535023 () Bool)

(assert (=> d!1174561 m!4535023))

(declare-fun m!4535025 () Bool)

(assert (=> d!1174561 m!4535025))

(declare-fun m!4535027 () Bool)

(assert (=> b!3965321 m!4535027))

(assert (=> b!3965244 d!1174561))

(declare-fun b!3965334 () Bool)

(declare-fun e!2455944 () Bool)

(declare-fun inv!15 (TokenValue!6866) Bool)

(assert (=> b!3965334 (= e!2455944 (inv!15 (value!209760 (h!47698 suffixTokens!72))))))

(declare-fun b!3965335 () Bool)

(declare-fun e!2455943 () Bool)

(declare-fun inv!16 (TokenValue!6866) Bool)

(assert (=> b!3965335 (= e!2455943 (inv!16 (value!209760 (h!47698 suffixTokens!72))))))

(declare-fun b!3965336 () Bool)

(declare-fun e!2455942 () Bool)

(assert (=> b!3965336 (= e!2455943 e!2455942)))

(declare-fun c!687942 () Bool)

(assert (=> b!3965336 (= c!687942 ((_ is IntegerValue!20599) (value!209760 (h!47698 suffixTokens!72))))))

(declare-fun b!3965337 () Bool)

(declare-fun inv!17 (TokenValue!6866) Bool)

(assert (=> b!3965337 (= e!2455942 (inv!17 (value!209760 (h!47698 suffixTokens!72))))))

(declare-fun d!1174563 () Bool)

(declare-fun c!687943 () Bool)

(assert (=> d!1174563 (= c!687943 ((_ is IntegerValue!20598) (value!209760 (h!47698 suffixTokens!72))))))

(assert (=> d!1174563 (= (inv!21 (value!209760 (h!47698 suffixTokens!72))) e!2455943)))

(declare-fun b!3965338 () Bool)

(declare-fun res!1605117 () Bool)

(assert (=> b!3965338 (=> res!1605117 e!2455944)))

(assert (=> b!3965338 (= res!1605117 (not ((_ is IntegerValue!20600) (value!209760 (h!47698 suffixTokens!72)))))))

(assert (=> b!3965338 (= e!2455942 e!2455944)))

(assert (= (and d!1174563 c!687943) b!3965335))

(assert (= (and d!1174563 (not c!687943)) b!3965336))

(assert (= (and b!3965336 c!687942) b!3965337))

(assert (= (and b!3965336 (not c!687942)) b!3965338))

(assert (= (and b!3965338 (not res!1605117)) b!3965334))

(declare-fun m!4535029 () Bool)

(assert (=> b!3965334 m!4535029))

(declare-fun m!4535031 () Bool)

(assert (=> b!3965335 m!4535031))

(declare-fun m!4535033 () Bool)

(assert (=> b!3965337 m!4535033))

(assert (=> b!3965245 d!1174563))

(declare-fun b!3965339 () Bool)

(declare-fun e!2455946 () Bool)

(declare-fun lt!1388650 () tuple2!41576)

(assert (=> b!3965339 (= e!2455946 (not (isEmpty!25297 (_1!23922 lt!1388650))))))

(declare-fun b!3965340 () Bool)

(declare-fun e!2455945 () tuple2!41576)

(assert (=> b!3965340 (= e!2455945 (tuple2!41577 Nil!42278 (_2!23921 lt!1388585)))))

(declare-fun b!3965341 () Bool)

(declare-fun lt!1388649 () Option!9056)

(declare-fun lt!1388651 () tuple2!41576)

(assert (=> b!3965341 (= e!2455945 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388649)) (_1!23922 lt!1388651)) (_2!23922 lt!1388651)))))

(assert (=> b!3965341 (= lt!1388651 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388649))))))

(declare-fun b!3965343 () Bool)

(declare-fun e!2455947 () Bool)

(assert (=> b!3965343 (= e!2455947 e!2455946)))

(declare-fun res!1605118 () Bool)

(assert (=> b!3965343 (= res!1605118 (< (size!31647 (_2!23922 lt!1388650)) (size!31647 (_2!23921 lt!1388585))))))

(assert (=> b!3965343 (=> (not res!1605118) (not e!2455946))))

(declare-fun b!3965342 () Bool)

(assert (=> b!3965342 (= e!2455947 (= (_2!23922 lt!1388650) (_2!23921 lt!1388585)))))

(declare-fun d!1174565 () Bool)

(assert (=> d!1174565 e!2455947))

(declare-fun c!687945 () Bool)

(assert (=> d!1174565 (= c!687945 (> (size!31648 (_1!23922 lt!1388650)) 0))))

(assert (=> d!1174565 (= lt!1388650 e!2455945)))

(declare-fun c!687944 () Bool)

(assert (=> d!1174565 (= c!687944 ((_ is Some!9055) lt!1388649))))

(assert (=> d!1174565 (= lt!1388649 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 lt!1388585)))))

(assert (=> d!1174565 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)) lt!1388650)))

(assert (= (and d!1174565 c!687944) b!3965341))

(assert (= (and d!1174565 (not c!687944)) b!3965340))

(assert (= (and d!1174565 c!687945) b!3965343))

(assert (= (and d!1174565 (not c!687945)) b!3965342))

(assert (= (and b!3965343 res!1605118) b!3965339))

(declare-fun m!4535035 () Bool)

(assert (=> b!3965339 m!4535035))

(declare-fun m!4535037 () Bool)

(assert (=> b!3965341 m!4535037))

(declare-fun m!4535039 () Bool)

(assert (=> b!3965343 m!4535039))

(assert (=> b!3965343 m!4534987))

(declare-fun m!4535041 () Bool)

(assert (=> d!1174565 m!4535041))

(declare-fun m!4535043 () Bool)

(assert (=> d!1174565 m!4535043))

(assert (=> bm!285479 d!1174565))

(declare-fun d!1174567 () Bool)

(assert (=> d!1174567 (and (= lt!1388609 lt!1388609) (= (_2!23921 (v!39401 lt!1388603)) (_2!23921 lt!1388585)))))

(declare-fun lt!1388654 () Unit!60908)

(declare-fun choose!23718 (List!42399 List!42399 List!42399 List!42399) Unit!60908)

(assert (=> d!1174567 (= lt!1388654 (choose!23718 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 (_2!23921 lt!1388585)))))

(assert (=> d!1174567 (= (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))) (++!11029 lt!1388609 (_2!23921 lt!1388585)))))

(assert (=> d!1174567 (= (lemmaConcatSameAndSameSizesThenSameLists!630 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 (_2!23921 lt!1388585)) lt!1388654)))

(declare-fun bs!587389 () Bool)

(assert (= bs!587389 d!1174567))

(declare-fun m!4535045 () Bool)

(assert (=> bs!587389 m!4535045))

(assert (=> bs!587389 m!4534883))

(declare-fun m!4535047 () Bool)

(assert (=> bs!587389 m!4535047))

(assert (=> b!3965243 d!1174567))

(declare-fun d!1174569 () Bool)

(assert (=> d!1174569 (not (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)) (tuple2!41577 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1388657 () Unit!60908)

(declare-fun choose!23719 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42402 List!42399) Unit!60908)

(assert (=> d!1174569 (= lt!1388657 (choose!23719 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91))))

(assert (=> d!1174569 (not (isEmpty!25298 rules!2768))))

(assert (=> d!1174569 (= (lemmaLexWithSmallerInputCannotProduceSameResults!164 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91) lt!1388657)))

(declare-fun bs!587390 () Bool)

(assert (= bs!587390 d!1174569))

(assert (=> bs!587390 m!4534917))

(declare-fun m!4535049 () Bool)

(assert (=> bs!587390 m!4535049))

(assert (=> bs!587390 m!4534927))

(assert (=> b!3965243 d!1174569))

(declare-fun d!1174571 () Bool)

(assert (=> d!1174571 (= (head!8449 prefixTokens!80) (h!47698 prefixTokens!80))))

(assert (=> b!3965264 d!1174571))

(declare-fun b!3965344 () Bool)

(declare-fun e!2455949 () List!42402)

(assert (=> b!3965344 (= e!2455949 suffixTokens!72)))

(declare-fun b!3965345 () Bool)

(assert (=> b!3965345 (= e!2455949 (Cons!42278 (h!47698 lt!1388633) (++!11030 (t!330257 lt!1388633) suffixTokens!72)))))

(declare-fun b!3965346 () Bool)

(declare-fun res!1605120 () Bool)

(declare-fun e!2455948 () Bool)

(assert (=> b!3965346 (=> (not res!1605120) (not e!2455948))))

(declare-fun lt!1388658 () List!42402)

(assert (=> b!3965346 (= res!1605120 (= (size!31648 lt!1388658) (+ (size!31648 lt!1388633) (size!31648 suffixTokens!72))))))

(declare-fun b!3965347 () Bool)

(assert (=> b!3965347 (= e!2455948 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388658 lt!1388633)))))

(declare-fun d!1174573 () Bool)

(assert (=> d!1174573 e!2455948))

(declare-fun res!1605119 () Bool)

(assert (=> d!1174573 (=> (not res!1605119) (not e!2455948))))

(assert (=> d!1174573 (= res!1605119 (= (content!6420 lt!1388658) ((_ map or) (content!6420 lt!1388633) (content!6420 suffixTokens!72))))))

(assert (=> d!1174573 (= lt!1388658 e!2455949)))

(declare-fun c!687946 () Bool)

(assert (=> d!1174573 (= c!687946 ((_ is Nil!42278) lt!1388633))))

(assert (=> d!1174573 (= (++!11030 lt!1388633 suffixTokens!72) lt!1388658)))

(assert (= (and d!1174573 c!687946) b!3965344))

(assert (= (and d!1174573 (not c!687946)) b!3965345))

(assert (= (and d!1174573 res!1605119) b!3965346))

(assert (= (and b!3965346 res!1605120) b!3965347))

(declare-fun m!4535051 () Bool)

(assert (=> b!3965345 m!4535051))

(declare-fun m!4535053 () Bool)

(assert (=> b!3965346 m!4535053))

(declare-fun m!4535055 () Bool)

(assert (=> b!3965346 m!4535055))

(assert (=> b!3965346 m!4535011))

(declare-fun m!4535057 () Bool)

(assert (=> d!1174573 m!4535057))

(declare-fun m!4535059 () Bool)

(assert (=> d!1174573 m!4535059))

(assert (=> d!1174573 m!4535017))

(assert (=> b!3965247 d!1174573))

(declare-fun d!1174575 () Bool)

(assert (=> d!1174575 (= (tail!6181 prefixTokens!80) (t!330257 prefixTokens!80))))

(assert (=> b!3965247 d!1174575))

(declare-fun b!3965356 () Bool)

(declare-fun e!2455958 () Bool)

(declare-fun e!2455956 () Bool)

(assert (=> b!3965356 (= e!2455958 e!2455956)))

(declare-fun res!1605131 () Bool)

(assert (=> b!3965356 (=> (not res!1605131) (not e!2455956))))

(assert (=> b!3965356 (= res!1605131 (not ((_ is Nil!42275) lt!1388612)))))

(declare-fun b!3965358 () Bool)

(declare-fun tail!6182 (List!42399) List!42399)

(assert (=> b!3965358 (= e!2455956 (isPrefix!3725 (tail!6182 lt!1388621) (tail!6182 lt!1388612)))))

(declare-fun d!1174577 () Bool)

(declare-fun e!2455957 () Bool)

(assert (=> d!1174577 e!2455957))

(declare-fun res!1605132 () Bool)

(assert (=> d!1174577 (=> res!1605132 e!2455957)))

(declare-fun lt!1388661 () Bool)

(assert (=> d!1174577 (= res!1605132 (not lt!1388661))))

(assert (=> d!1174577 (= lt!1388661 e!2455958)))

(declare-fun res!1605130 () Bool)

(assert (=> d!1174577 (=> res!1605130 e!2455958)))

(assert (=> d!1174577 (= res!1605130 ((_ is Nil!42275) lt!1388621))))

(assert (=> d!1174577 (= (isPrefix!3725 lt!1388621 lt!1388612) lt!1388661)))

(declare-fun b!3965359 () Bool)

(assert (=> b!3965359 (= e!2455957 (>= (size!31647 lt!1388612) (size!31647 lt!1388621)))))

(declare-fun b!3965357 () Bool)

(declare-fun res!1605129 () Bool)

(assert (=> b!3965357 (=> (not res!1605129) (not e!2455956))))

(declare-fun head!8450 (List!42399) C!23268)

(assert (=> b!3965357 (= res!1605129 (= (head!8450 lt!1388621) (head!8450 lt!1388612)))))

(assert (= (and d!1174577 (not res!1605130)) b!3965356))

(assert (= (and b!3965356 res!1605131) b!3965357))

(assert (= (and b!3965357 res!1605129) b!3965358))

(assert (= (and d!1174577 (not res!1605132)) b!3965359))

(declare-fun m!4535061 () Bool)

(assert (=> b!3965358 m!4535061))

(declare-fun m!4535063 () Bool)

(assert (=> b!3965358 m!4535063))

(assert (=> b!3965358 m!4535061))

(assert (=> b!3965358 m!4535063))

(declare-fun m!4535065 () Bool)

(assert (=> b!3965358 m!4535065))

(declare-fun m!4535067 () Bool)

(assert (=> b!3965359 m!4535067))

(assert (=> b!3965359 m!4534921))

(declare-fun m!4535069 () Bool)

(assert (=> b!3965357 m!4535069))

(declare-fun m!4535071 () Bool)

(assert (=> b!3965357 m!4535071))

(assert (=> b!3965247 d!1174577))

(declare-fun d!1174579 () Bool)

(assert (=> d!1174579 (isPrefix!3725 lt!1388621 (++!11029 lt!1388621 suffix!1176))))

(declare-fun lt!1388664 () Unit!60908)

(declare-fun choose!23720 (List!42399 List!42399) Unit!60908)

(assert (=> d!1174579 (= lt!1388664 (choose!23720 lt!1388621 suffix!1176))))

(assert (=> d!1174579 (= (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388621 suffix!1176) lt!1388664)))

(declare-fun bs!587391 () Bool)

(assert (= bs!587391 d!1174579))

(assert (=> bs!587391 m!4534965))

(assert (=> bs!587391 m!4534965))

(declare-fun m!4535073 () Bool)

(assert (=> bs!587391 m!4535073))

(declare-fun m!4535075 () Bool)

(assert (=> bs!587391 m!4535075))

(assert (=> b!3965247 d!1174579))

(declare-fun b!3965360 () Bool)

(declare-fun e!2455960 () List!42402)

(assert (=> b!3965360 (= e!2455960 (_1!23922 lt!1388624))))

(declare-fun b!3965361 () Bool)

(assert (=> b!3965361 (= e!2455960 (Cons!42278 (h!47698 lt!1388619) (++!11030 (t!330257 lt!1388619) (_1!23922 lt!1388624))))))

(declare-fun b!3965362 () Bool)

(declare-fun res!1605134 () Bool)

(declare-fun e!2455959 () Bool)

(assert (=> b!3965362 (=> (not res!1605134) (not e!2455959))))

(declare-fun lt!1388665 () List!42402)

(assert (=> b!3965362 (= res!1605134 (= (size!31648 lt!1388665) (+ (size!31648 lt!1388619) (size!31648 (_1!23922 lt!1388624)))))))

(declare-fun b!3965363 () Bool)

(assert (=> b!3965363 (= e!2455959 (or (not (= (_1!23922 lt!1388624) Nil!42278)) (= lt!1388665 lt!1388619)))))

(declare-fun d!1174581 () Bool)

(assert (=> d!1174581 e!2455959))

(declare-fun res!1605133 () Bool)

(assert (=> d!1174581 (=> (not res!1605133) (not e!2455959))))

(assert (=> d!1174581 (= res!1605133 (= (content!6420 lt!1388665) ((_ map or) (content!6420 lt!1388619) (content!6420 (_1!23922 lt!1388624)))))))

(assert (=> d!1174581 (= lt!1388665 e!2455960)))

(declare-fun c!687947 () Bool)

(assert (=> d!1174581 (= c!687947 ((_ is Nil!42278) lt!1388619))))

(assert (=> d!1174581 (= (++!11030 lt!1388619 (_1!23922 lt!1388624)) lt!1388665)))

(assert (= (and d!1174581 c!687947) b!3965360))

(assert (= (and d!1174581 (not c!687947)) b!3965361))

(assert (= (and d!1174581 res!1605133) b!3965362))

(assert (= (and b!3965362 res!1605134) b!3965363))

(declare-fun m!4535077 () Bool)

(assert (=> b!3965361 m!4535077))

(declare-fun m!4535079 () Bool)

(assert (=> b!3965362 m!4535079))

(declare-fun m!4535081 () Bool)

(assert (=> b!3965362 m!4535081))

(declare-fun m!4535083 () Bool)

(assert (=> b!3965362 m!4535083))

(declare-fun m!4535085 () Bool)

(assert (=> d!1174581 m!4535085))

(declare-fun m!4535087 () Bool)

(assert (=> d!1174581 m!4535087))

(declare-fun m!4535089 () Bool)

(assert (=> d!1174581 m!4535089))

(assert (=> b!3965268 d!1174581))

(declare-fun d!1174583 () Bool)

(declare-fun res!1605139 () Bool)

(declare-fun e!2455963 () Bool)

(assert (=> d!1174583 (=> (not res!1605139) (not e!2455963))))

(assert (=> d!1174583 (= res!1605139 (not (isEmpty!25296 (originalCharacters!7236 (h!47698 prefixTokens!80)))))))

(assert (=> d!1174583 (= (inv!56502 (h!47698 prefixTokens!80)) e!2455963)))

(declare-fun b!3965368 () Bool)

(declare-fun res!1605140 () Bool)

(assert (=> b!3965368 (=> (not res!1605140) (not e!2455963))))

(declare-fun dynLambda!18042 (Int TokenValue!6866) BalanceConc!25288)

(assert (=> b!3965368 (= res!1605140 (= (originalCharacters!7236 (h!47698 prefixTokens!80)) (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(declare-fun b!3965369 () Bool)

(assert (=> b!3965369 (= e!2455963 (= (size!31646 (h!47698 prefixTokens!80)) (size!31647 (originalCharacters!7236 (h!47698 prefixTokens!80)))))))

(assert (= (and d!1174583 res!1605139) b!3965368))

(assert (= (and b!3965368 res!1605140) b!3965369))

(declare-fun b_lambda!115931 () Bool)

(assert (=> (not b_lambda!115931) (not b!3965368)))

(declare-fun t!330259 () Bool)

(declare-fun tb!239121 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330259) tb!239121))

(declare-fun b!3965374 () Bool)

(declare-fun e!2455966 () Bool)

(declare-fun tp!1208641 () Bool)

(declare-fun inv!56504 (Conc!12847) Bool)

(assert (=> b!3965374 (= e!2455966 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))) tp!1208641))))

(declare-fun result!289578 () Bool)

(declare-fun inv!56505 (BalanceConc!25288) Bool)

(assert (=> tb!239121 (= result!289578 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))) e!2455966))))

(assert (= tb!239121 b!3965374))

(declare-fun m!4535091 () Bool)

(assert (=> b!3965374 m!4535091))

(declare-fun m!4535093 () Bool)

(assert (=> tb!239121 m!4535093))

(assert (=> b!3965368 t!330259))

(declare-fun b_and!304567 () Bool)

(assert (= b_and!304557 (and (=> t!330259 result!289578) b_and!304567)))

(declare-fun t!330261 () Bool)

(declare-fun tb!239123 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330261) tb!239123))

(declare-fun result!289582 () Bool)

(assert (= result!289582 result!289578))

(assert (=> b!3965368 t!330261))

(declare-fun b_and!304569 () Bool)

(assert (= b_and!304561 (and (=> t!330261 result!289582) b_and!304569)))

(declare-fun t!330263 () Bool)

(declare-fun tb!239125 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330263) tb!239125))

(declare-fun result!289584 () Bool)

(assert (= result!289584 result!289578))

(assert (=> b!3965368 t!330263))

(declare-fun b_and!304571 () Bool)

(assert (= b_and!304565 (and (=> t!330263 result!289584) b_and!304571)))

(declare-fun m!4535095 () Bool)

(assert (=> d!1174583 m!4535095))

(declare-fun m!4535097 () Bool)

(assert (=> b!3965368 m!4535097))

(assert (=> b!3965368 m!4535097))

(declare-fun m!4535099 () Bool)

(assert (=> b!3965368 m!4535099))

(declare-fun m!4535101 () Bool)

(assert (=> b!3965369 m!4535101))

(assert (=> b!3965246 d!1174583))

(declare-fun d!1174585 () Bool)

(assert (=> d!1174585 (= (_2!23921 (v!39401 lt!1388603)) lt!1388629)))

(declare-fun lt!1388668 () Unit!60908)

(declare-fun choose!23721 (List!42399 List!42399 List!42399 List!42399 List!42399) Unit!60908)

(assert (=> d!1174585 (= lt!1388668 (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388629 lt!1388630))))

(assert (=> d!1174585 (isPrefix!3725 lt!1388609 lt!1388630)))

(assert (=> d!1174585 (= (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388629 lt!1388630) lt!1388668)))

(declare-fun bs!587392 () Bool)

(assert (= bs!587392 d!1174585))

(declare-fun m!4535103 () Bool)

(assert (=> bs!587392 m!4535103))

(declare-fun m!4535105 () Bool)

(assert (=> bs!587392 m!4535105))

(assert (=> b!3965260 d!1174585))

(declare-fun b!3965375 () Bool)

(declare-fun e!2455968 () Bool)

(declare-fun lt!1388670 () tuple2!41576)

(assert (=> b!3965375 (= e!2455968 (not (isEmpty!25297 (_1!23922 lt!1388670))))))

(declare-fun b!3965376 () Bool)

(declare-fun e!2455967 () tuple2!41576)

(assert (=> b!3965376 (= e!2455967 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun b!3965377 () Bool)

(declare-fun lt!1388669 () Option!9056)

(declare-fun lt!1388671 () tuple2!41576)

(assert (=> b!3965377 (= e!2455967 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388669)) (_1!23922 lt!1388671)) (_2!23922 lt!1388671)))))

(assert (=> b!3965377 (= lt!1388671 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388669))))))

(declare-fun b!3965379 () Bool)

(declare-fun e!2455969 () Bool)

(assert (=> b!3965379 (= e!2455969 e!2455968)))

(declare-fun res!1605141 () Bool)

(assert (=> b!3965379 (= res!1605141 (< (size!31647 (_2!23922 lt!1388670)) (size!31647 (_2!23921 (v!39401 lt!1388603)))))))

(assert (=> b!3965379 (=> (not res!1605141) (not e!2455968))))

(declare-fun b!3965378 () Bool)

(assert (=> b!3965378 (= e!2455969 (= (_2!23922 lt!1388670) (_2!23921 (v!39401 lt!1388603))))))

(declare-fun d!1174587 () Bool)

(assert (=> d!1174587 e!2455969))

(declare-fun c!687949 () Bool)

(assert (=> d!1174587 (= c!687949 (> (size!31648 (_1!23922 lt!1388670)) 0))))

(assert (=> d!1174587 (= lt!1388670 e!2455967)))

(declare-fun c!687948 () Bool)

(assert (=> d!1174587 (= c!687948 ((_ is Some!9055) lt!1388669))))

(assert (=> d!1174587 (= lt!1388669 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174587 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603))) lt!1388670)))

(assert (= (and d!1174587 c!687948) b!3965377))

(assert (= (and d!1174587 (not c!687948)) b!3965376))

(assert (= (and d!1174587 c!687949) b!3965379))

(assert (= (and d!1174587 (not c!687949)) b!3965378))

(assert (= (and b!3965379 res!1605141) b!3965375))

(declare-fun m!4535107 () Bool)

(assert (=> b!3965375 m!4535107))

(declare-fun m!4535109 () Bool)

(assert (=> b!3965377 m!4535109))

(declare-fun m!4535111 () Bool)

(assert (=> b!3965379 m!4535111))

(assert (=> b!3965379 m!4534865))

(declare-fun m!4535113 () Bool)

(assert (=> d!1174587 m!4535113))

(declare-fun m!4535115 () Bool)

(assert (=> d!1174587 m!4535115))

(assert (=> b!3965260 d!1174587))

(declare-fun d!1174589 () Bool)

(assert (=> d!1174589 (= (size!31646 (_1!23921 (v!39401 lt!1388603))) (size!31647 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun Unit!60920 () Unit!60908)

(assert (=> d!1174589 (= (lemmaCharactersSize!1289 (_1!23921 (v!39401 lt!1388603))) Unit!60920)))

(declare-fun bs!587393 () Bool)

(assert (= bs!587393 d!1174589))

(assert (=> bs!587393 m!4534995))

(assert (=> b!3965260 d!1174589))

(declare-fun d!1174591 () Bool)

(declare-fun lt!1388674 () List!42399)

(assert (=> d!1174591 (= (++!11029 lt!1388609 lt!1388674) lt!1388630)))

(declare-fun e!2455972 () List!42399)

(assert (=> d!1174591 (= lt!1388674 e!2455972)))

(declare-fun c!687952 () Bool)

(assert (=> d!1174591 (= c!687952 ((_ is Cons!42275) lt!1388609))))

(assert (=> d!1174591 (>= (size!31647 lt!1388630) (size!31647 lt!1388609))))

(assert (=> d!1174591 (= (getSuffix!2176 lt!1388630 lt!1388609) lt!1388674)))

(declare-fun b!3965384 () Bool)

(assert (=> b!3965384 (= e!2455972 (getSuffix!2176 (tail!6182 lt!1388630) (t!330254 lt!1388609)))))

(declare-fun b!3965385 () Bool)

(assert (=> b!3965385 (= e!2455972 lt!1388630)))

(assert (= (and d!1174591 c!687952) b!3965384))

(assert (= (and d!1174591 (not c!687952)) b!3965385))

(declare-fun m!4535117 () Bool)

(assert (=> d!1174591 m!4535117))

(assert (=> d!1174591 m!4534981))

(assert (=> d!1174591 m!4534889))

(declare-fun m!4535119 () Bool)

(assert (=> b!3965384 m!4535119))

(assert (=> b!3965384 m!4535119))

(declare-fun m!4535121 () Bool)

(assert (=> b!3965384 m!4535121))

(assert (=> b!3965260 d!1174591))

(declare-fun b!3965388 () Bool)

(declare-fun res!1605142 () Bool)

(declare-fun e!2455974 () Bool)

(assert (=> b!3965388 (=> (not res!1605142) (not e!2455974))))

(declare-fun lt!1388675 () List!42399)

(assert (=> b!3965388 (= res!1605142 (= (size!31647 lt!1388675) (+ (size!31647 lt!1388609) (size!31647 (_2!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3965389 () Bool)

(assert (=> b!3965389 (= e!2455974 (or (not (= (_2!23921 (v!39401 lt!1388603)) Nil!42275)) (= lt!1388675 lt!1388609)))))

(declare-fun b!3965386 () Bool)

(declare-fun e!2455973 () List!42399)

(assert (=> b!3965386 (= e!2455973 (_2!23921 (v!39401 lt!1388603)))))

(declare-fun d!1174593 () Bool)

(assert (=> d!1174593 e!2455974))

(declare-fun res!1605143 () Bool)

(assert (=> d!1174593 (=> (not res!1605143) (not e!2455974))))

(assert (=> d!1174593 (= res!1605143 (= (content!6421 lt!1388675) ((_ map or) (content!6421 lt!1388609) (content!6421 (_2!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1174593 (= lt!1388675 e!2455973)))

(declare-fun c!687953 () Bool)

(assert (=> d!1174593 (= c!687953 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174593 (= (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))) lt!1388675)))

(declare-fun b!3965387 () Bool)

(assert (=> b!3965387 (= e!2455973 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) (_2!23921 (v!39401 lt!1388603)))))))

(assert (= (and d!1174593 c!687953) b!3965386))

(assert (= (and d!1174593 (not c!687953)) b!3965387))

(assert (= (and d!1174593 res!1605143) b!3965388))

(assert (= (and b!3965388 res!1605142) b!3965389))

(declare-fun m!4535123 () Bool)

(assert (=> b!3965388 m!4535123))

(assert (=> b!3965388 m!4534889))

(assert (=> b!3965388 m!4534865))

(declare-fun m!4535125 () Bool)

(assert (=> d!1174593 m!4535125))

(declare-fun m!4535127 () Bool)

(assert (=> d!1174593 m!4535127))

(declare-fun m!4535129 () Bool)

(assert (=> d!1174593 m!4535129))

(declare-fun m!4535131 () Bool)

(assert (=> b!3965387 m!4535131))

(assert (=> b!3965260 d!1174593))

(declare-fun d!1174595 () Bool)

(assert (=> d!1174595 (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))

(declare-fun lt!1388676 () Unit!60908)

(assert (=> d!1174595 (= lt!1388676 (choose!23720 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174595 (= (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388609 (_2!23921 (v!39401 lt!1388603))) lt!1388676)))

(declare-fun bs!587394 () Bool)

(assert (= bs!587394 d!1174595))

(assert (=> bs!587394 m!4534883))

(assert (=> bs!587394 m!4534883))

(declare-fun m!4535133 () Bool)

(assert (=> bs!587394 m!4535133))

(declare-fun m!4535135 () Bool)

(assert (=> bs!587394 m!4535135))

(assert (=> b!3965260 d!1174595))

(declare-fun d!1174597 () Bool)

(declare-fun list!15689 (Conc!12847) List!42399)

(assert (=> d!1174597 (= (list!15688 (charsOf!4454 (_1!23921 (v!39401 lt!1388603)))) (list!15689 (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun bs!587395 () Bool)

(assert (= bs!587395 d!1174597))

(declare-fun m!4535137 () Bool)

(assert (=> bs!587395 m!4535137))

(assert (=> b!3965260 d!1174597))

(declare-fun d!1174599 () Bool)

(declare-fun lt!1388679 () BalanceConc!25288)

(assert (=> d!1174599 (= (list!15688 lt!1388679) (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174599 (= lt!1388679 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1174599 (= (charsOf!4454 (_1!23921 (v!39401 lt!1388603))) lt!1388679)))

(declare-fun b_lambda!115933 () Bool)

(assert (=> (not b_lambda!115933) (not d!1174599)))

(declare-fun t!330265 () Bool)

(declare-fun tb!239127 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330265) tb!239127))

(declare-fun b!3965390 () Bool)

(declare-fun e!2455975 () Bool)

(declare-fun tp!1208642 () Bool)

(assert (=> b!3965390 (= e!2455975 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))) tp!1208642))))

(declare-fun result!289586 () Bool)

(assert (=> tb!239127 (= result!289586 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))) e!2455975))))

(assert (= tb!239127 b!3965390))

(declare-fun m!4535139 () Bool)

(assert (=> b!3965390 m!4535139))

(declare-fun m!4535141 () Bool)

(assert (=> tb!239127 m!4535141))

(assert (=> d!1174599 t!330265))

(declare-fun b_and!304573 () Bool)

(assert (= b_and!304567 (and (=> t!330265 result!289586) b_and!304573)))

(declare-fun t!330267 () Bool)

(declare-fun tb!239129 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330267) tb!239129))

(declare-fun result!289588 () Bool)

(assert (= result!289588 result!289586))

(assert (=> d!1174599 t!330267))

(declare-fun b_and!304575 () Bool)

(assert (= b_and!304569 (and (=> t!330267 result!289588) b_and!304575)))

(declare-fun t!330269 () Bool)

(declare-fun tb!239131 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330269) tb!239131))

(declare-fun result!289590 () Bool)

(assert (= result!289590 result!289586))

(assert (=> d!1174599 t!330269))

(declare-fun b_and!304577 () Bool)

(assert (= b_and!304571 (and (=> t!330269 result!289590) b_and!304577)))

(declare-fun m!4535143 () Bool)

(assert (=> d!1174599 m!4535143))

(declare-fun m!4535145 () Bool)

(assert (=> d!1174599 m!4535145))

(assert (=> b!3965260 d!1174599))

(declare-fun d!1174601 () Bool)

(declare-fun dynLambda!18043 (Int BalanceConc!25288) TokenValue!6866)

(assert (=> d!1174601 (= (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 lt!1388609)) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609)))))

(declare-fun b_lambda!115935 () Bool)

(assert (=> (not b_lambda!115935) (not d!1174601)))

(declare-fun tb!239133 () Bool)

(declare-fun t!330271 () Bool)

(assert (=> (and b!3965265 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330271) tb!239133))

(declare-fun result!289592 () Bool)

(assert (=> tb!239133 (= result!289592 (inv!21 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(declare-fun m!4535147 () Bool)

(assert (=> tb!239133 m!4535147))

(assert (=> d!1174601 t!330271))

(declare-fun b_and!304579 () Bool)

(assert (= b_and!304555 (and (=> t!330271 result!289592) b_and!304579)))

(declare-fun t!330273 () Bool)

(declare-fun tb!239135 () Bool)

(assert (=> (and b!3965251 (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330273) tb!239135))

(declare-fun result!289596 () Bool)

(assert (= result!289596 result!289592))

(assert (=> d!1174601 t!330273))

(declare-fun b_and!304581 () Bool)

(assert (= b_and!304559 (and (=> t!330273 result!289596) b_and!304581)))

(declare-fun t!330275 () Bool)

(declare-fun tb!239137 () Bool)

(assert (=> (and b!3965280 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330275) tb!239137))

(declare-fun result!289598 () Bool)

(assert (= result!289598 result!289592))

(assert (=> d!1174601 t!330275))

(declare-fun b_and!304583 () Bool)

(assert (= b_and!304563 (and (=> t!330275 result!289598) b_and!304583)))

(assert (=> d!1174601 m!4534893))

(declare-fun m!4535149 () Bool)

(assert (=> d!1174601 m!4535149))

(assert (=> b!3965260 d!1174601))

(declare-fun b!3965393 () Bool)

(declare-fun e!2455981 () Bool)

(declare-fun e!2455979 () Bool)

(assert (=> b!3965393 (= e!2455981 e!2455979)))

(declare-fun res!1605146 () Bool)

(assert (=> b!3965393 (=> (not res!1605146) (not e!2455979))))

(assert (=> b!3965393 (= res!1605146 (not ((_ is Nil!42275) lt!1388595)))))

(declare-fun b!3965395 () Bool)

(assert (=> b!3965395 (= e!2455979 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 lt!1388595)))))

(declare-fun d!1174603 () Bool)

(declare-fun e!2455980 () Bool)

(assert (=> d!1174603 e!2455980))

(declare-fun res!1605147 () Bool)

(assert (=> d!1174603 (=> res!1605147 e!2455980)))

(declare-fun lt!1388680 () Bool)

(assert (=> d!1174603 (= res!1605147 (not lt!1388680))))

(assert (=> d!1174603 (= lt!1388680 e!2455981)))

(declare-fun res!1605145 () Bool)

(assert (=> d!1174603 (=> res!1605145 e!2455981)))

(assert (=> d!1174603 (= res!1605145 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174603 (= (isPrefix!3725 lt!1388609 lt!1388595) lt!1388680)))

(declare-fun b!3965396 () Bool)

(assert (=> b!3965396 (= e!2455980 (>= (size!31647 lt!1388595) (size!31647 lt!1388609)))))

(declare-fun b!3965394 () Bool)

(declare-fun res!1605144 () Bool)

(assert (=> b!3965394 (=> (not res!1605144) (not e!2455979))))

(assert (=> b!3965394 (= res!1605144 (= (head!8450 lt!1388609) (head!8450 lt!1388595)))))

(assert (= (and d!1174603 (not res!1605145)) b!3965393))

(assert (= (and b!3965393 res!1605146) b!3965394))

(assert (= (and b!3965394 res!1605144) b!3965395))

(assert (= (and d!1174603 (not res!1605147)) b!3965396))

(declare-fun m!4535151 () Bool)

(assert (=> b!3965395 m!4535151))

(declare-fun m!4535153 () Bool)

(assert (=> b!3965395 m!4535153))

(assert (=> b!3965395 m!4535151))

(assert (=> b!3965395 m!4535153))

(declare-fun m!4535155 () Bool)

(assert (=> b!3965395 m!4535155))

(declare-fun m!4535157 () Bool)

(assert (=> b!3965396 m!4535157))

(assert (=> b!3965396 m!4534889))

(declare-fun m!4535159 () Bool)

(assert (=> b!3965394 m!4535159))

(declare-fun m!4535161 () Bool)

(assert (=> b!3965394 m!4535161))

(assert (=> b!3965260 d!1174603))

(declare-fun d!1174605 () Bool)

(declare-fun lt!1388683 () Int)

(assert (=> d!1174605 (>= lt!1388683 0)))

(declare-fun e!2455984 () Int)

(assert (=> d!1174605 (= lt!1388683 e!2455984)))

(declare-fun c!687956 () Bool)

(assert (=> d!1174605 (= c!687956 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174605 (= (size!31647 lt!1388609) lt!1388683)))

(declare-fun b!3965401 () Bool)

(assert (=> b!3965401 (= e!2455984 0)))

(declare-fun b!3965402 () Bool)

(assert (=> b!3965402 (= e!2455984 (+ 1 (size!31647 (t!330254 lt!1388609))))))

(assert (= (and d!1174605 c!687956) b!3965401))

(assert (= (and d!1174605 (not c!687956)) b!3965402))

(declare-fun m!4535163 () Bool)

(assert (=> b!3965402 m!4535163))

(assert (=> b!3965260 d!1174605))

(declare-fun d!1174607 () Bool)

(assert (=> d!1174607 (ruleValid!2578 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))

(declare-fun lt!1388686 () Unit!60908)

(declare-fun choose!23722 (LexerInterface!6225 Rule!13072 List!42401) Unit!60908)

(assert (=> d!1174607 (= lt!1388686 (choose!23722 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) rules!2768))))

(declare-fun contains!8435 (List!42401 Rule!13072) Bool)

(assert (=> d!1174607 (contains!8435 rules!2768 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174607 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1654 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) rules!2768) lt!1388686)))

(declare-fun bs!587396 () Bool)

(assert (= bs!587396 d!1174607))

(assert (=> bs!587396 m!4534899))

(declare-fun m!4535165 () Bool)

(assert (=> bs!587396 m!4535165))

(declare-fun m!4535167 () Bool)

(assert (=> bs!587396 m!4535167))

(assert (=> b!3965260 d!1174607))

(declare-fun d!1174609 () Bool)

(declare-fun fromListB!2259 (List!42399) BalanceConc!25288)

(assert (=> d!1174609 (= (seqFromList!4895 lt!1388609) (fromListB!2259 lt!1388609))))

(declare-fun bs!587397 () Bool)

(assert (= bs!587397 d!1174609))

(declare-fun m!4535169 () Bool)

(assert (=> bs!587397 m!4535169))

(assert (=> b!3965260 d!1174609))

(declare-fun d!1174611 () Bool)

(declare-fun res!1605152 () Bool)

(declare-fun e!2455987 () Bool)

(assert (=> d!1174611 (=> (not res!1605152) (not e!2455987))))

(declare-fun validRegex!5253 (Regex!11541) Bool)

(assert (=> d!1174611 (= res!1605152 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1174611 (= (ruleValid!2578 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) e!2455987)))

(declare-fun b!3965407 () Bool)

(declare-fun res!1605153 () Bool)

(assert (=> b!3965407 (=> (not res!1605153) (not e!2455987))))

(declare-fun nullable!4054 (Regex!11541) Bool)

(assert (=> b!3965407 (= res!1605153 (not (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun b!3965408 () Bool)

(assert (=> b!3965408 (= e!2455987 (not (= (tag!7496 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (String!48049 ""))))))

(assert (= (and d!1174611 res!1605152) b!3965407))

(assert (= (and b!3965407 res!1605153) b!3965408))

(declare-fun m!4535171 () Bool)

(assert (=> d!1174611 m!4535171))

(declare-fun m!4535173 () Bool)

(assert (=> b!3965407 m!4535173))

(assert (=> b!3965260 d!1174611))

(declare-fun b!3965409 () Bool)

(declare-fun e!2455989 () Bool)

(declare-fun lt!1388688 () tuple2!41576)

(assert (=> b!3965409 (= e!2455989 (not (isEmpty!25297 (_1!23922 lt!1388688))))))

(declare-fun b!3965410 () Bool)

(declare-fun e!2455988 () tuple2!41576)

(assert (=> b!3965410 (= e!2455988 (tuple2!41577 Nil!42278 lt!1388612))))

(declare-fun b!3965411 () Bool)

(declare-fun lt!1388687 () Option!9056)

(declare-fun lt!1388689 () tuple2!41576)

(assert (=> b!3965411 (= e!2455988 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388687)) (_1!23922 lt!1388689)) (_2!23922 lt!1388689)))))

(assert (=> b!3965411 (= lt!1388689 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388687))))))

(declare-fun b!3965413 () Bool)

(declare-fun e!2455990 () Bool)

(assert (=> b!3965413 (= e!2455990 e!2455989)))

(declare-fun res!1605154 () Bool)

(assert (=> b!3965413 (= res!1605154 (< (size!31647 (_2!23922 lt!1388688)) (size!31647 lt!1388612)))))

(assert (=> b!3965413 (=> (not res!1605154) (not e!2455989))))

(declare-fun b!3965412 () Bool)

(assert (=> b!3965412 (= e!2455990 (= (_2!23922 lt!1388688) lt!1388612))))

(declare-fun d!1174613 () Bool)

(assert (=> d!1174613 e!2455990))

(declare-fun c!687958 () Bool)

(assert (=> d!1174613 (= c!687958 (> (size!31648 (_1!23922 lt!1388688)) 0))))

(assert (=> d!1174613 (= lt!1388688 e!2455988)))

(declare-fun c!687957 () Bool)

(assert (=> d!1174613 (= c!687957 ((_ is Some!9055) lt!1388687))))

(assert (=> d!1174613 (= lt!1388687 (maxPrefix!3529 thiss!20629 rules!2768 lt!1388612))))

(assert (=> d!1174613 (= (lexList!1993 thiss!20629 rules!2768 lt!1388612) lt!1388688)))

(assert (= (and d!1174613 c!687957) b!3965411))

(assert (= (and d!1174613 (not c!687957)) b!3965410))

(assert (= (and d!1174613 c!687958) b!3965413))

(assert (= (and d!1174613 (not c!687958)) b!3965412))

(assert (= (and b!3965413 res!1605154) b!3965409))

(declare-fun m!4535175 () Bool)

(assert (=> b!3965409 m!4535175))

(declare-fun m!4535177 () Bool)

(assert (=> b!3965411 m!4535177))

(declare-fun m!4535179 () Bool)

(assert (=> b!3965413 m!4535179))

(assert (=> b!3965413 m!4535067))

(declare-fun m!4535181 () Bool)

(assert (=> d!1174613 m!4535181))

(declare-fun m!4535183 () Bool)

(assert (=> d!1174613 m!4535183))

(assert (=> b!3965261 d!1174613))

(declare-fun b!3965473 () Bool)

(declare-fun e!2456026 () Bool)

(declare-fun e!2456025 () Bool)

(assert (=> b!3965473 (= e!2456026 e!2456025)))

(declare-fun res!1605196 () Bool)

(assert (=> b!3965473 (=> (not res!1605196) (not e!2456025))))

(declare-fun lt!1388712 () Option!9056)

(declare-fun matchR!5545 (Regex!11541 List!42399) Bool)

(assert (=> b!3965473 (= res!1605196 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))

(declare-fun b!3965475 () Bool)

(declare-fun res!1605198 () Bool)

(assert (=> b!3965475 (=> (not res!1605198) (not e!2456025))))

(assert (=> b!3965475 (= res!1605198 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))) (_2!23921 (get!13944 lt!1388712))) lt!1388630))))

(declare-fun b!3965476 () Bool)

(declare-fun res!1605197 () Bool)

(assert (=> b!3965476 (=> (not res!1605197) (not e!2456025))))

(assert (=> b!3965476 (= res!1605197 (= (rule!9622 (_1!23921 (get!13944 lt!1388712))) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun b!3965477 () Bool)

(declare-fun e!2456023 () Option!9056)

(declare-datatypes ((tuple2!41578 0))(
  ( (tuple2!41579 (_1!23923 List!42399) (_2!23923 List!42399)) )
))
(declare-fun lt!1388715 () tuple2!41578)

(declare-fun size!31649 (BalanceConc!25288) Int)

(assert (=> b!3965477 (= e!2456023 (Some!9055 (tuple2!41575 (Token!12411 (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 (_1!23923 lt!1388715))) (rule!9622 (_1!23921 (v!39401 lt!1388603))) (size!31649 (seqFromList!4895 (_1!23923 lt!1388715))) (_1!23923 lt!1388715)) (_2!23923 lt!1388715))))))

(declare-fun lt!1388714 () Unit!60908)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1274 (Regex!11541 List!42399) Unit!60908)

(assert (=> b!3965477 (= lt!1388714 (longestMatchIsAcceptedByMatchOrIsEmpty!1274 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388630))))

(declare-fun res!1605202 () Bool)

(declare-fun findLongestMatchInner!1301 (Regex!11541 List!42399 Int List!42399 List!42399 Int) tuple2!41578)

(assert (=> b!3965477 (= res!1605202 (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun e!2456024 () Bool)

(assert (=> b!3965477 (=> res!1605202 e!2456024)))

(assert (=> b!3965477 e!2456024))

(declare-fun lt!1388716 () Unit!60908)

(assert (=> b!3965477 (= lt!1388716 lt!1388714)))

(declare-fun lt!1388713 () Unit!60908)

(declare-fun lemmaSemiInverse!1809 (TokenValueInjection!13160 BalanceConc!25288) Unit!60908)

(assert (=> b!3965477 (= lt!1388713 (lemmaSemiInverse!1809 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 (_1!23923 lt!1388715))))))

(declare-fun b!3965478 () Bool)

(assert (=> b!3965478 (= e!2456023 None!9055)))

(declare-fun b!3965479 () Bool)

(declare-fun res!1605201 () Bool)

(assert (=> b!3965479 (=> (not res!1605201) (not e!2456025))))

(assert (=> b!3965479 (= res!1605201 (= (value!209760 (_1!23921 (get!13944 lt!1388712))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))))))))

(declare-fun b!3965474 () Bool)

(assert (=> b!3965474 (= e!2456024 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun d!1174615 () Bool)

(assert (=> d!1174615 e!2456026))

(declare-fun res!1605199 () Bool)

(assert (=> d!1174615 (=> res!1605199 e!2456026)))

(declare-fun isEmpty!25299 (Option!9056) Bool)

(assert (=> d!1174615 (= res!1605199 (isEmpty!25299 lt!1388712))))

(assert (=> d!1174615 (= lt!1388712 e!2456023)))

(declare-fun c!687967 () Bool)

(assert (=> d!1174615 (= c!687967 (isEmpty!25296 (_1!23923 lt!1388715)))))

(declare-fun findLongestMatch!1214 (Regex!11541 List!42399) tuple2!41578)

(assert (=> d!1174615 (= lt!1388715 (findLongestMatch!1214 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388630))))

(assert (=> d!1174615 (ruleValid!2578 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174615 (= (maxPrefixOneRule!2579 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388630) lt!1388712)))

(declare-fun b!3965480 () Bool)

(declare-fun res!1605200 () Bool)

(assert (=> b!3965480 (=> (not res!1605200) (not e!2456025))))

(assert (=> b!3965480 (= res!1605200 (< (size!31647 (_2!23921 (get!13944 lt!1388712))) (size!31647 lt!1388630)))))

(declare-fun b!3965481 () Bool)

(assert (=> b!3965481 (= e!2456025 (= (size!31646 (_1!23921 (get!13944 lt!1388712))) (size!31647 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712))))))))

(assert (= (and d!1174615 c!687967) b!3965478))

(assert (= (and d!1174615 (not c!687967)) b!3965477))

(assert (= (and b!3965477 (not res!1605202)) b!3965474))

(assert (= (and d!1174615 (not res!1605199)) b!3965473))

(assert (= (and b!3965473 res!1605196) b!3965475))

(assert (= (and b!3965475 res!1605198) b!3965480))

(assert (= (and b!3965480 res!1605200) b!3965476))

(assert (= (and b!3965476 res!1605197) b!3965479))

(assert (= (and b!3965479 res!1605201) b!3965481))

(declare-fun m!4535229 () Bool)

(assert (=> b!3965479 m!4535229))

(declare-fun m!4535231 () Bool)

(assert (=> b!3965479 m!4535231))

(assert (=> b!3965479 m!4535231))

(declare-fun m!4535233 () Bool)

(assert (=> b!3965479 m!4535233))

(declare-fun m!4535235 () Bool)

(assert (=> d!1174615 m!4535235))

(declare-fun m!4535237 () Bool)

(assert (=> d!1174615 m!4535237))

(declare-fun m!4535239 () Bool)

(assert (=> d!1174615 m!4535239))

(assert (=> d!1174615 m!4534899))

(declare-fun m!4535241 () Bool)

(assert (=> b!3965474 m!4535241))

(assert (=> b!3965474 m!4534981))

(assert (=> b!3965474 m!4535241))

(assert (=> b!3965474 m!4534981))

(declare-fun m!4535243 () Bool)

(assert (=> b!3965474 m!4535243))

(declare-fun m!4535245 () Bool)

(assert (=> b!3965474 m!4535245))

(assert (=> b!3965481 m!4535229))

(declare-fun m!4535247 () Bool)

(assert (=> b!3965481 m!4535247))

(assert (=> b!3965476 m!4535229))

(assert (=> b!3965480 m!4535229))

(declare-fun m!4535249 () Bool)

(assert (=> b!3965480 m!4535249))

(assert (=> b!3965480 m!4534981))

(assert (=> b!3965477 m!4534981))

(declare-fun m!4535251 () Bool)

(assert (=> b!3965477 m!4535251))

(declare-fun m!4535253 () Bool)

(assert (=> b!3965477 m!4535253))

(assert (=> b!3965477 m!4535241))

(assert (=> b!3965477 m!4535251))

(assert (=> b!3965477 m!4535251))

(declare-fun m!4535255 () Bool)

(assert (=> b!3965477 m!4535255))

(assert (=> b!3965477 m!4535241))

(assert (=> b!3965477 m!4534981))

(assert (=> b!3965477 m!4535243))

(assert (=> b!3965477 m!4535251))

(declare-fun m!4535257 () Bool)

(assert (=> b!3965477 m!4535257))

(declare-fun m!4535261 () Bool)

(assert (=> b!3965477 m!4535261))

(declare-fun m!4535263 () Bool)

(assert (=> b!3965477 m!4535263))

(assert (=> b!3965473 m!4535229))

(declare-fun m!4535265 () Bool)

(assert (=> b!3965473 m!4535265))

(assert (=> b!3965473 m!4535265))

(declare-fun m!4535267 () Bool)

(assert (=> b!3965473 m!4535267))

(assert (=> b!3965473 m!4535267))

(declare-fun m!4535269 () Bool)

(assert (=> b!3965473 m!4535269))

(assert (=> b!3965475 m!4535229))

(assert (=> b!3965475 m!4535265))

(assert (=> b!3965475 m!4535265))

(assert (=> b!3965475 m!4535267))

(assert (=> b!3965475 m!4535267))

(declare-fun m!4535271 () Bool)

(assert (=> b!3965475 m!4535271))

(assert (=> b!3965281 d!1174615))

(declare-fun d!1174633 () Bool)

(assert (=> d!1174633 (= (get!13944 lt!1388603) (v!39401 lt!1388603))))

(assert (=> b!3965281 d!1174633))

(declare-fun d!1174637 () Bool)

(declare-fun lt!1388724 () Int)

(assert (=> d!1174637 (>= lt!1388724 0)))

(declare-fun e!2456029 () Int)

(assert (=> d!1174637 (= lt!1388724 e!2456029)))

(declare-fun c!687969 () Bool)

(assert (=> d!1174637 (= c!687969 ((_ is Nil!42275) lt!1388630))))

(assert (=> d!1174637 (= (size!31647 lt!1388630) lt!1388724)))

(declare-fun b!3965486 () Bool)

(assert (=> b!3965486 (= e!2456029 0)))

(declare-fun b!3965487 () Bool)

(assert (=> b!3965487 (= e!2456029 (+ 1 (size!31647 (t!330254 lt!1388630))))))

(assert (= (and d!1174637 c!687969) b!3965486))

(assert (= (and d!1174637 (not c!687969)) b!3965487))

(declare-fun m!4535285 () Bool)

(assert (=> b!3965487 m!4535285))

(assert (=> b!3965281 d!1174637))

(declare-fun d!1174639 () Bool)

(declare-fun lt!1388725 () Int)

(assert (=> d!1174639 (>= lt!1388725 0)))

(declare-fun e!2456030 () Int)

(assert (=> d!1174639 (= lt!1388725 e!2456030)))

(declare-fun c!687970 () Bool)

(assert (=> d!1174639 (= c!687970 ((_ is Nil!42275) (_2!23921 lt!1388585)))))

(assert (=> d!1174639 (= (size!31647 (_2!23921 lt!1388585)) lt!1388725)))

(declare-fun b!3965488 () Bool)

(assert (=> b!3965488 (= e!2456030 0)))

(declare-fun b!3965489 () Bool)

(assert (=> b!3965489 (= e!2456030 (+ 1 (size!31647 (t!330254 (_2!23921 lt!1388585)))))))

(assert (= (and d!1174639 c!687970) b!3965488))

(assert (= (and d!1174639 (not c!687970)) b!3965489))

(declare-fun m!4535287 () Bool)

(assert (=> b!3965489 m!4535287))

(assert (=> b!3965281 d!1174639))

(declare-fun d!1174641 () Bool)

(assert (=> d!1174641 (= (maxPrefixOneRule!2579 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388630) (Some!9055 (tuple2!41575 (Token!12411 (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 lt!1388609)) (rule!9622 (_1!23921 (v!39401 lt!1388603))) (size!31647 lt!1388609) lt!1388609) (_2!23921 (v!39401 lt!1388603)))))))

(declare-fun lt!1388735 () Unit!60908)

(declare-fun choose!23726 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42399 Rule!13072) Unit!60908)

(assert (=> d!1174641 (= lt!1388735 (choose!23726 thiss!20629 rules!2768 lt!1388609 lt!1388630 (_2!23921 (v!39401 lt!1388603)) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1174641 (not (isEmpty!25298 rules!2768))))

(assert (=> d!1174641 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1405 thiss!20629 rules!2768 lt!1388609 lt!1388630 (_2!23921 (v!39401 lt!1388603)) (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388735)))

(declare-fun bs!587404 () Bool)

(assert (= bs!587404 d!1174641))

(assert (=> bs!587404 m!4534893))

(assert (=> bs!587404 m!4534893))

(assert (=> bs!587404 m!4534897))

(assert (=> bs!587404 m!4534889))

(declare-fun m!4535319 () Bool)

(assert (=> bs!587404 m!4535319))

(assert (=> bs!587404 m!4534927))

(assert (=> bs!587404 m!4534985))

(assert (=> b!3965281 d!1174641))

(declare-fun d!1174659 () Bool)

(declare-fun res!1605217 () Bool)

(declare-fun e!2456046 () Bool)

(assert (=> d!1174659 (=> (not res!1605217) (not e!2456046))))

(assert (=> d!1174659 (= res!1605217 (not (isEmpty!25296 (originalCharacters!7236 (h!47698 suffixTokens!72)))))))

(assert (=> d!1174659 (= (inv!56502 (h!47698 suffixTokens!72)) e!2456046)))

(declare-fun b!3965513 () Bool)

(declare-fun res!1605218 () Bool)

(assert (=> b!3965513 (=> (not res!1605218) (not e!2456046))))

(assert (=> b!3965513 (= res!1605218 (= (originalCharacters!7236 (h!47698 suffixTokens!72)) (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(declare-fun b!3965514 () Bool)

(assert (=> b!3965514 (= e!2456046 (= (size!31646 (h!47698 suffixTokens!72)) (size!31647 (originalCharacters!7236 (h!47698 suffixTokens!72)))))))

(assert (= (and d!1174659 res!1605217) b!3965513))

(assert (= (and b!3965513 res!1605218) b!3965514))

(declare-fun b_lambda!115943 () Bool)

(assert (=> (not b_lambda!115943) (not b!3965513)))

(declare-fun t!330295 () Bool)

(declare-fun tb!239157 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330295) tb!239157))

(declare-fun b!3965515 () Bool)

(declare-fun e!2456047 () Bool)

(declare-fun tp!1208647 () Bool)

(assert (=> b!3965515 (= e!2456047 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))) tp!1208647))))

(declare-fun result!289622 () Bool)

(assert (=> tb!239157 (= result!289622 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))) e!2456047))))

(assert (= tb!239157 b!3965515))

(declare-fun m!4535337 () Bool)

(assert (=> b!3965515 m!4535337))

(declare-fun m!4535341 () Bool)

(assert (=> tb!239157 m!4535341))

(assert (=> b!3965513 t!330295))

(declare-fun b_and!304603 () Bool)

(assert (= b_and!304573 (and (=> t!330295 result!289622) b_and!304603)))

(declare-fun tb!239159 () Bool)

(declare-fun t!330297 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330297) tb!239159))

(declare-fun result!289624 () Bool)

(assert (= result!289624 result!289622))

(assert (=> b!3965513 t!330297))

(declare-fun b_and!304605 () Bool)

(assert (= b_and!304575 (and (=> t!330297 result!289624) b_and!304605)))

(declare-fun tb!239161 () Bool)

(declare-fun t!330299 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330299) tb!239161))

(declare-fun result!289626 () Bool)

(assert (= result!289626 result!289622))

(assert (=> b!3965513 t!330299))

(declare-fun b_and!304607 () Bool)

(assert (= b_and!304577 (and (=> t!330299 result!289626) b_and!304607)))

(declare-fun m!4535343 () Bool)

(assert (=> d!1174659 m!4535343))

(declare-fun m!4535345 () Bool)

(assert (=> b!3965513 m!4535345))

(assert (=> b!3965513 m!4535345))

(declare-fun m!4535349 () Bool)

(assert (=> b!3965513 m!4535349))

(declare-fun m!4535353 () Bool)

(assert (=> b!3965514 m!4535353))

(assert (=> b!3965259 d!1174659))

(declare-fun d!1174669 () Bool)

(assert (=> d!1174669 (= (inv!56499 (tag!7496 (rule!9622 (h!47698 suffixTokens!72)))) (= (mod (str.len (value!209759 (tag!7496 (rule!9622 (h!47698 suffixTokens!72))))) 2) 0))))

(assert (=> b!3965279 d!1174669))

(declare-fun d!1174671 () Bool)

(declare-fun res!1605221 () Bool)

(declare-fun e!2456051 () Bool)

(assert (=> d!1174671 (=> (not res!1605221) (not e!2456051))))

(declare-fun semiInverseModEq!2858 (Int Int) Bool)

(assert (=> d!1174671 (= res!1605221 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))))))

(assert (=> d!1174671 (= (inv!56503 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) e!2456051)))

(declare-fun b!3965520 () Bool)

(declare-fun equivClasses!2757 (Int Int) Bool)

(assert (=> b!3965520 (= e!2456051 (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))))))

(assert (= (and d!1174671 res!1605221) b!3965520))

(declare-fun m!4535359 () Bool)

(assert (=> d!1174671 m!4535359))

(declare-fun m!4535361 () Bool)

(assert (=> b!3965520 m!4535361))

(assert (=> b!3965279 d!1174671))

(declare-fun d!1174675 () Bool)

(assert (=> d!1174675 (not (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)) (tuple2!41577 (++!11030 lt!1388620 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1388751 () Unit!60908)

(declare-fun choose!23727 (LexerInterface!6225 List!42401 List!42399 List!42399 List!42402 List!42399 List!42402) Unit!60908)

(assert (=> d!1174675 (= lt!1388751 (choose!23727 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91 lt!1388620))))

(assert (=> d!1174675 (not (isEmpty!25298 rules!2768))))

(assert (=> d!1174675 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!164 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91 lt!1388620) lt!1388751)))

(declare-fun bs!587408 () Bool)

(assert (= bs!587408 d!1174675))

(assert (=> bs!587408 m!4534917))

(assert (=> bs!587408 m!4534943))

(declare-fun m!4535363 () Bool)

(assert (=> bs!587408 m!4535363))

(assert (=> bs!587408 m!4534927))

(assert (=> b!3965238 d!1174675))

(declare-fun b!3965531 () Bool)

(declare-fun e!2456059 () List!42402)

(assert (=> b!3965531 (= e!2456059 suffixTokens!72)))

(declare-fun b!3965532 () Bool)

(assert (=> b!3965532 (= e!2456059 (Cons!42278 (h!47698 lt!1388620) (++!11030 (t!330257 lt!1388620) suffixTokens!72)))))

(declare-fun b!3965533 () Bool)

(declare-fun res!1605225 () Bool)

(declare-fun e!2456058 () Bool)

(assert (=> b!3965533 (=> (not res!1605225) (not e!2456058))))

(declare-fun lt!1388752 () List!42402)

(assert (=> b!3965533 (= res!1605225 (= (size!31648 lt!1388752) (+ (size!31648 lt!1388620) (size!31648 suffixTokens!72))))))

(declare-fun b!3965534 () Bool)

(assert (=> b!3965534 (= e!2456058 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388752 lt!1388620)))))

(declare-fun d!1174677 () Bool)

(assert (=> d!1174677 e!2456058))

(declare-fun res!1605224 () Bool)

(assert (=> d!1174677 (=> (not res!1605224) (not e!2456058))))

(assert (=> d!1174677 (= res!1605224 (= (content!6420 lt!1388752) ((_ map or) (content!6420 lt!1388620) (content!6420 suffixTokens!72))))))

(assert (=> d!1174677 (= lt!1388752 e!2456059)))

(declare-fun c!687980 () Bool)

(assert (=> d!1174677 (= c!687980 ((_ is Nil!42278) lt!1388620))))

(assert (=> d!1174677 (= (++!11030 lt!1388620 suffixTokens!72) lt!1388752)))

(assert (= (and d!1174677 c!687980) b!3965531))

(assert (= (and d!1174677 (not c!687980)) b!3965532))

(assert (= (and d!1174677 res!1605224) b!3965533))

(assert (= (and b!3965533 res!1605225) b!3965534))

(declare-fun m!4535365 () Bool)

(assert (=> b!3965532 m!4535365))

(declare-fun m!4535367 () Bool)

(assert (=> b!3965533 m!4535367))

(declare-fun m!4535369 () Bool)

(assert (=> b!3965533 m!4535369))

(assert (=> b!3965533 m!4535011))

(declare-fun m!4535371 () Bool)

(assert (=> d!1174677 m!4535371))

(declare-fun m!4535373 () Bool)

(assert (=> d!1174677 m!4535373))

(assert (=> d!1174677 m!4535017))

(assert (=> b!3965238 d!1174677))

(declare-fun b!3965537 () Bool)

(declare-fun res!1605226 () Bool)

(declare-fun e!2456061 () Bool)

(assert (=> b!3965537 (=> (not res!1605226) (not e!2456061))))

(declare-fun lt!1388753 () List!42399)

(assert (=> b!3965537 (= res!1605226 (= (size!31647 lt!1388753) (+ (size!31647 lt!1388609) (size!31647 lt!1388621))))))

(declare-fun b!3965538 () Bool)

(assert (=> b!3965538 (= e!2456061 (or (not (= lt!1388621 Nil!42275)) (= lt!1388753 lt!1388609)))))

(declare-fun b!3965535 () Bool)

(declare-fun e!2456060 () List!42399)

(assert (=> b!3965535 (= e!2456060 lt!1388621)))

(declare-fun d!1174679 () Bool)

(assert (=> d!1174679 e!2456061))

(declare-fun res!1605227 () Bool)

(assert (=> d!1174679 (=> (not res!1605227) (not e!2456061))))

(assert (=> d!1174679 (= res!1605227 (= (content!6421 lt!1388753) ((_ map or) (content!6421 lt!1388609) (content!6421 lt!1388621))))))

(assert (=> d!1174679 (= lt!1388753 e!2456060)))

(declare-fun c!687981 () Bool)

(assert (=> d!1174679 (= c!687981 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174679 (= (++!11029 lt!1388609 lt!1388621) lt!1388753)))

(declare-fun b!3965536 () Bool)

(assert (=> b!3965536 (= e!2456060 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) lt!1388621)))))

(assert (= (and d!1174679 c!687981) b!3965535))

(assert (= (and d!1174679 (not c!687981)) b!3965536))

(assert (= (and d!1174679 res!1605227) b!3965537))

(assert (= (and b!3965537 res!1605226) b!3965538))

(declare-fun m!4535375 () Bool)

(assert (=> b!3965537 m!4535375))

(assert (=> b!3965537 m!4534889))

(assert (=> b!3965537 m!4534921))

(declare-fun m!4535377 () Bool)

(assert (=> d!1174679 m!4535377))

(assert (=> d!1174679 m!4535127))

(declare-fun m!4535379 () Bool)

(assert (=> d!1174679 m!4535379))

(declare-fun m!4535381 () Bool)

(assert (=> b!3965536 m!4535381))

(assert (=> b!3965263 d!1174679))

(declare-fun d!1174681 () Bool)

(declare-fun lt!1388754 () List!42399)

(assert (=> d!1174681 (= (++!11029 lt!1388609 lt!1388754) prefix!426)))

(declare-fun e!2456062 () List!42399)

(assert (=> d!1174681 (= lt!1388754 e!2456062)))

(declare-fun c!687982 () Bool)

(assert (=> d!1174681 (= c!687982 ((_ is Cons!42275) lt!1388609))))

(assert (=> d!1174681 (>= (size!31647 prefix!426) (size!31647 lt!1388609))))

(assert (=> d!1174681 (= (getSuffix!2176 prefix!426 lt!1388609) lt!1388754)))

(declare-fun b!3965539 () Bool)

(assert (=> b!3965539 (= e!2456062 (getSuffix!2176 (tail!6182 prefix!426) (t!330254 lt!1388609)))))

(declare-fun b!3965540 () Bool)

(assert (=> b!3965540 (= e!2456062 prefix!426)))

(assert (= (and d!1174681 c!687982) b!3965539))

(assert (= (and d!1174681 (not c!687982)) b!3965540))

(declare-fun m!4535383 () Bool)

(assert (=> d!1174681 m!4535383))

(assert (=> d!1174681 m!4534977))

(assert (=> d!1174681 m!4534889))

(declare-fun m!4535385 () Bool)

(assert (=> b!3965539 m!4535385))

(assert (=> b!3965539 m!4535385))

(declare-fun m!4535387 () Bool)

(assert (=> b!3965539 m!4535387))

(assert (=> b!3965263 d!1174681))

(declare-fun d!1174683 () Bool)

(assert (=> d!1174683 (= (isEmpty!25298 rules!2768) ((_ is Nil!42277) rules!2768))))

(assert (=> b!3965284 d!1174683))

(declare-fun b!3965541 () Bool)

(declare-fun e!2456065 () Bool)

(declare-fun e!2456063 () Bool)

(assert (=> b!3965541 (= e!2456065 e!2456063)))

(declare-fun res!1605230 () Bool)

(assert (=> b!3965541 (=> (not res!1605230) (not e!2456063))))

(assert (=> b!3965541 (= res!1605230 (not ((_ is Nil!42275) prefix!426)))))

(declare-fun b!3965543 () Bool)

(assert (=> b!3965543 (= e!2456063 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 prefix!426)))))

(declare-fun d!1174685 () Bool)

(declare-fun e!2456064 () Bool)

(assert (=> d!1174685 e!2456064))

(declare-fun res!1605231 () Bool)

(assert (=> d!1174685 (=> res!1605231 e!2456064)))

(declare-fun lt!1388755 () Bool)

(assert (=> d!1174685 (= res!1605231 (not lt!1388755))))

(assert (=> d!1174685 (= lt!1388755 e!2456065)))

(declare-fun res!1605229 () Bool)

(assert (=> d!1174685 (=> res!1605229 e!2456065)))

(assert (=> d!1174685 (= res!1605229 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174685 (= (isPrefix!3725 lt!1388609 prefix!426) lt!1388755)))

(declare-fun b!3965544 () Bool)

(assert (=> b!3965544 (= e!2456064 (>= (size!31647 prefix!426) (size!31647 lt!1388609)))))

(declare-fun b!3965542 () Bool)

(declare-fun res!1605228 () Bool)

(assert (=> b!3965542 (=> (not res!1605228) (not e!2456063))))

(assert (=> b!3965542 (= res!1605228 (= (head!8450 lt!1388609) (head!8450 prefix!426)))))

(assert (= (and d!1174685 (not res!1605229)) b!3965541))

(assert (= (and b!3965541 res!1605230) b!3965542))

(assert (= (and b!3965542 res!1605228) b!3965543))

(assert (= (and d!1174685 (not res!1605231)) b!3965544))

(assert (=> b!3965543 m!4535151))

(assert (=> b!3965543 m!4535385))

(assert (=> b!3965543 m!4535151))

(assert (=> b!3965543 m!4535385))

(declare-fun m!4535389 () Bool)

(assert (=> b!3965543 m!4535389))

(assert (=> b!3965544 m!4534977))

(assert (=> b!3965544 m!4534889))

(assert (=> b!3965542 m!4535159))

(declare-fun m!4535391 () Bool)

(assert (=> b!3965542 m!4535391))

(assert (=> b!3965242 d!1174685))

(declare-fun b!3965550 () Bool)

(declare-fun e!2456071 () Bool)

(declare-fun e!2456069 () Bool)

(assert (=> b!3965550 (= e!2456071 e!2456069)))

(declare-fun res!1605235 () Bool)

(assert (=> b!3965550 (=> (not res!1605235) (not e!2456069))))

(assert (=> b!3965550 (= res!1605235 (not ((_ is Nil!42275) lt!1388630)))))

(declare-fun b!3965552 () Bool)

(assert (=> b!3965552 (= e!2456069 (isPrefix!3725 (tail!6182 prefix!426) (tail!6182 lt!1388630)))))

(declare-fun d!1174687 () Bool)

(declare-fun e!2456070 () Bool)

(assert (=> d!1174687 e!2456070))

(declare-fun res!1605236 () Bool)

(assert (=> d!1174687 (=> res!1605236 e!2456070)))

(declare-fun lt!1388759 () Bool)

(assert (=> d!1174687 (= res!1605236 (not lt!1388759))))

(assert (=> d!1174687 (= lt!1388759 e!2456071)))

(declare-fun res!1605234 () Bool)

(assert (=> d!1174687 (=> res!1605234 e!2456071)))

(assert (=> d!1174687 (= res!1605234 ((_ is Nil!42275) prefix!426))))

(assert (=> d!1174687 (= (isPrefix!3725 prefix!426 lt!1388630) lt!1388759)))

(declare-fun b!3965553 () Bool)

(assert (=> b!3965553 (= e!2456070 (>= (size!31647 lt!1388630) (size!31647 prefix!426)))))

(declare-fun b!3965551 () Bool)

(declare-fun res!1605233 () Bool)

(assert (=> b!3965551 (=> (not res!1605233) (not e!2456069))))

(assert (=> b!3965551 (= res!1605233 (= (head!8450 prefix!426) (head!8450 lt!1388630)))))

(assert (= (and d!1174687 (not res!1605234)) b!3965550))

(assert (= (and b!3965550 res!1605235) b!3965551))

(assert (= (and b!3965551 res!1605233) b!3965552))

(assert (= (and d!1174687 (not res!1605236)) b!3965553))

(assert (=> b!3965552 m!4535385))

(assert (=> b!3965552 m!4535119))

(assert (=> b!3965552 m!4535385))

(assert (=> b!3965552 m!4535119))

(declare-fun m!4535403 () Bool)

(assert (=> b!3965552 m!4535403))

(assert (=> b!3965553 m!4534981))

(assert (=> b!3965553 m!4534977))

(assert (=> b!3965551 m!4535391))

(declare-fun m!4535405 () Bool)

(assert (=> b!3965551 m!4535405))

(assert (=> b!3965242 d!1174687))

(declare-fun d!1174691 () Bool)

(assert (=> d!1174691 (isPrefix!3725 prefix!426 (++!11029 prefix!426 suffix!1176))))

(declare-fun lt!1388763 () Unit!60908)

(assert (=> d!1174691 (= lt!1388763 (choose!23720 prefix!426 suffix!1176))))

(assert (=> d!1174691 (= (lemmaConcatTwoListThenFirstIsPrefix!2584 prefix!426 suffix!1176) lt!1388763)))

(declare-fun bs!587409 () Bool)

(assert (= bs!587409 d!1174691))

(assert (=> bs!587409 m!4534875))

(assert (=> bs!587409 m!4534875))

(declare-fun m!4535407 () Bool)

(assert (=> bs!587409 m!4535407))

(declare-fun m!4535409 () Bool)

(assert (=> bs!587409 m!4535409))

(assert (=> b!3965242 d!1174691))

(declare-fun d!1174693 () Bool)

(declare-fun lt!1388764 () Int)

(assert (=> d!1174693 (>= lt!1388764 0)))

(declare-fun e!2456075 () Int)

(assert (=> d!1174693 (= lt!1388764 e!2456075)))

(declare-fun c!687987 () Bool)

(assert (=> d!1174693 (= c!687987 ((_ is Nil!42275) prefix!426))))

(assert (=> d!1174693 (= (size!31647 prefix!426) lt!1388764)))

(declare-fun b!3965559 () Bool)

(assert (=> b!3965559 (= e!2456075 0)))

(declare-fun b!3965560 () Bool)

(assert (=> b!3965560 (= e!2456075 (+ 1 (size!31647 (t!330254 prefix!426))))))

(assert (= (and d!1174693 c!687987) b!3965559))

(assert (= (and d!1174693 (not c!687987)) b!3965560))

(declare-fun m!4535413 () Bool)

(assert (=> b!3965560 m!4535413))

(assert (=> b!3965242 d!1174693))

(declare-fun d!1174695 () Bool)

(assert (=> d!1174695 (isPrefix!3725 lt!1388609 prefix!426)))

(declare-fun lt!1388770 () Unit!60908)

(declare-fun choose!23728 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> d!1174695 (= lt!1388770 (choose!23728 prefix!426 lt!1388609 lt!1388630))))

(assert (=> d!1174695 (isPrefix!3725 prefix!426 lt!1388630)))

(assert (=> d!1174695 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!321 prefix!426 lt!1388609 lt!1388630) lt!1388770)))

(declare-fun bs!587410 () Bool)

(assert (= bs!587410 d!1174695))

(assert (=> bs!587410 m!4534979))

(declare-fun m!4535441 () Bool)

(assert (=> bs!587410 m!4535441))

(assert (=> bs!587410 m!4534847))

(assert (=> b!3965242 d!1174695))

(assert (=> b!3965282 d!1174691))

(assert (=> b!3965282 d!1174687))

(declare-fun d!1174707 () Bool)

(assert (=> d!1174707 (= lt!1388609 prefix!426)))

(declare-fun lt!1388773 () Unit!60908)

(declare-fun choose!23729 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> d!1174707 (= lt!1388773 (choose!23729 lt!1388609 prefix!426 lt!1388630))))

(assert (=> d!1174707 (isPrefix!3725 lt!1388609 lt!1388630)))

(assert (=> d!1174707 (= (lemmaIsPrefixSameLengthThenSameList!847 lt!1388609 prefix!426 lt!1388630) lt!1388773)))

(declare-fun bs!587411 () Bool)

(assert (= bs!587411 d!1174707))

(declare-fun m!4535443 () Bool)

(assert (=> bs!587411 m!4535443))

(assert (=> bs!587411 m!4535105))

(assert (=> b!3965282 d!1174707))

(declare-fun d!1174713 () Bool)

(assert (=> d!1174713 (= (_2!23921 (v!39401 lt!1388603)) suffix!1176)))

(declare-fun lt!1388774 () Unit!60908)

(assert (=> d!1174713 (= lt!1388774 (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) prefix!426 suffix!1176 lt!1388630))))

(assert (=> d!1174713 (isPrefix!3725 lt!1388609 lt!1388630)))

(assert (=> d!1174713 (= (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) prefix!426 suffix!1176 lt!1388630) lt!1388774)))

(declare-fun bs!587412 () Bool)

(assert (= bs!587412 d!1174713))

(declare-fun m!4535445 () Bool)

(assert (=> bs!587412 m!4535445))

(assert (=> bs!587412 m!4535105))

(assert (=> b!3965282 d!1174713))

(declare-fun d!1174715 () Bool)

(assert (=> d!1174715 (= (isEmpty!25296 lt!1388621) ((_ is Nil!42275) lt!1388621))))

(assert (=> b!3965240 d!1174715))

(declare-fun d!1174717 () Bool)

(assert (=> d!1174717 (= (_2!23921 (v!39401 lt!1388603)) lt!1388612)))

(declare-fun lt!1388775 () Unit!60908)

(assert (=> d!1174717 (= lt!1388775 (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388612 lt!1388630))))

(assert (=> d!1174717 (isPrefix!3725 lt!1388609 lt!1388630)))

(assert (=> d!1174717 (= (lemmaSamePrefixThenSameSuffix!1934 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388612 lt!1388630) lt!1388775)))

(declare-fun bs!587413 () Bool)

(assert (= bs!587413 d!1174717))

(declare-fun m!4535447 () Bool)

(assert (=> bs!587413 m!4535447))

(assert (=> bs!587413 m!4535105))

(assert (=> b!3965241 d!1174717))

(declare-fun b!3965572 () Bool)

(declare-fun e!2456085 () Bool)

(declare-fun e!2456083 () Bool)

(assert (=> b!3965572 (= e!2456085 e!2456083)))

(declare-fun res!1605244 () Bool)

(assert (=> b!3965572 (=> (not res!1605244) (not e!2456083))))

(assert (=> b!3965572 (= res!1605244 (not ((_ is Nil!42275) lt!1388627)))))

(declare-fun b!3965574 () Bool)

(assert (=> b!3965574 (= e!2456083 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 lt!1388627)))))

(declare-fun d!1174719 () Bool)

(declare-fun e!2456084 () Bool)

(assert (=> d!1174719 e!2456084))

(declare-fun res!1605245 () Bool)

(assert (=> d!1174719 (=> res!1605245 e!2456084)))

(declare-fun lt!1388776 () Bool)

(assert (=> d!1174719 (= res!1605245 (not lt!1388776))))

(assert (=> d!1174719 (= lt!1388776 e!2456085)))

(declare-fun res!1605243 () Bool)

(assert (=> d!1174719 (=> res!1605243 e!2456085)))

(assert (=> d!1174719 (= res!1605243 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174719 (= (isPrefix!3725 lt!1388609 lt!1388627) lt!1388776)))

(declare-fun b!3965575 () Bool)

(assert (=> b!3965575 (= e!2456084 (>= (size!31647 lt!1388627) (size!31647 lt!1388609)))))

(declare-fun b!3965573 () Bool)

(declare-fun res!1605242 () Bool)

(assert (=> b!3965573 (=> (not res!1605242) (not e!2456083))))

(assert (=> b!3965573 (= res!1605242 (= (head!8450 lt!1388609) (head!8450 lt!1388627)))))

(assert (= (and d!1174719 (not res!1605243)) b!3965572))

(assert (= (and b!3965572 res!1605244) b!3965573))

(assert (= (and b!3965573 res!1605242) b!3965574))

(assert (= (and d!1174719 (not res!1605245)) b!3965575))

(assert (=> b!3965574 m!4535151))

(declare-fun m!4535449 () Bool)

(assert (=> b!3965574 m!4535449))

(assert (=> b!3965574 m!4535151))

(assert (=> b!3965574 m!4535449))

(declare-fun m!4535451 () Bool)

(assert (=> b!3965574 m!4535451))

(declare-fun m!4535453 () Bool)

(assert (=> b!3965575 m!4535453))

(assert (=> b!3965575 m!4534889))

(assert (=> b!3965573 m!4535159))

(declare-fun m!4535455 () Bool)

(assert (=> b!3965573 m!4535455))

(assert (=> b!3965241 d!1174719))

(declare-fun d!1174721 () Bool)

(assert (=> d!1174721 (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 lt!1388612))))

(declare-fun lt!1388777 () Unit!60908)

(assert (=> d!1174721 (= lt!1388777 (choose!23720 lt!1388609 lt!1388612))))

(assert (=> d!1174721 (= (lemmaConcatTwoListThenFirstIsPrefix!2584 lt!1388609 lt!1388612) lt!1388777)))

(declare-fun bs!587414 () Bool)

(assert (= bs!587414 d!1174721))

(assert (=> bs!587414 m!4534963))

(assert (=> bs!587414 m!4534963))

(declare-fun m!4535457 () Bool)

(assert (=> bs!587414 m!4535457))

(declare-fun m!4535459 () Bool)

(assert (=> bs!587414 m!4535459))

(assert (=> b!3965241 d!1174721))

(declare-fun d!1174723 () Bool)

(declare-fun res!1605249 () Bool)

(declare-fun e!2456089 () Bool)

(assert (=> d!1174723 (=> (not res!1605249) (not e!2456089))))

(declare-fun rulesValid!2592 (LexerInterface!6225 List!42401) Bool)

(assert (=> d!1174723 (= res!1605249 (rulesValid!2592 thiss!20629 rules!2768))))

(assert (=> d!1174723 (= (rulesInvariant!5568 thiss!20629 rules!2768) e!2456089)))

(declare-fun b!3965579 () Bool)

(declare-datatypes ((List!42403 0))(
  ( (Nil!42279) (Cons!42279 (h!47699 String!48048) (t!330354 List!42403)) )
))
(declare-fun noDuplicateTag!2593 (LexerInterface!6225 List!42401 List!42403) Bool)

(assert (=> b!3965579 (= e!2456089 (noDuplicateTag!2593 thiss!20629 rules!2768 Nil!42279))))

(assert (= (and d!1174723 res!1605249) b!3965579))

(declare-fun m!4535465 () Bool)

(assert (=> d!1174723 m!4535465))

(declare-fun m!4535467 () Bool)

(assert (=> b!3965579 m!4535467))

(assert (=> b!3965262 d!1174723))

(declare-fun b!3965582 () Bool)

(declare-fun res!1605250 () Bool)

(declare-fun e!2456091 () Bool)

(assert (=> b!3965582 (=> (not res!1605250) (not e!2456091))))

(declare-fun lt!1388780 () List!42399)

(assert (=> b!3965582 (= res!1605250 (= (size!31647 lt!1388780) (+ (size!31647 lt!1388607) (size!31647 suffix!1176))))))

(declare-fun b!3965583 () Bool)

(assert (=> b!3965583 (= e!2456091 (or (not (= suffix!1176 Nil!42275)) (= lt!1388780 lt!1388607)))))

(declare-fun b!3965580 () Bool)

(declare-fun e!2456090 () List!42399)

(assert (=> b!3965580 (= e!2456090 suffix!1176)))

(declare-fun d!1174727 () Bool)

(assert (=> d!1174727 e!2456091))

(declare-fun res!1605251 () Bool)

(assert (=> d!1174727 (=> (not res!1605251) (not e!2456091))))

(assert (=> d!1174727 (= res!1605251 (= (content!6421 lt!1388780) ((_ map or) (content!6421 lt!1388607) (content!6421 suffix!1176))))))

(assert (=> d!1174727 (= lt!1388780 e!2456090)))

(declare-fun c!687991 () Bool)

(assert (=> d!1174727 (= c!687991 ((_ is Nil!42275) lt!1388607))))

(assert (=> d!1174727 (= (++!11029 lt!1388607 suffix!1176) lt!1388780)))

(declare-fun b!3965581 () Bool)

(assert (=> b!3965581 (= e!2456090 (Cons!42275 (h!47695 lt!1388607) (++!11029 (t!330254 lt!1388607) suffix!1176)))))

(assert (= (and d!1174727 c!687991) b!3965580))

(assert (= (and d!1174727 (not c!687991)) b!3965581))

(assert (= (and d!1174727 res!1605251) b!3965582))

(assert (= (and b!3965582 res!1605250) b!3965583))

(declare-fun m!4535469 () Bool)

(assert (=> b!3965582 m!4535469))

(declare-fun m!4535471 () Bool)

(assert (=> b!3965582 m!4535471))

(assert (=> b!3965582 m!4534863))

(declare-fun m!4535473 () Bool)

(assert (=> d!1174727 m!4535473))

(declare-fun m!4535475 () Bool)

(assert (=> d!1174727 m!4535475))

(assert (=> d!1174727 m!4535025))

(declare-fun m!4535477 () Bool)

(assert (=> b!3965581 m!4535477))

(assert (=> b!3965255 d!1174727))

(declare-fun b!3965584 () Bool)

(declare-fun e!2456094 () Bool)

(assert (=> b!3965584 (= e!2456094 (inv!15 (value!209760 (h!47698 prefixTokens!80))))))

(declare-fun b!3965585 () Bool)

(declare-fun e!2456093 () Bool)

(assert (=> b!3965585 (= e!2456093 (inv!16 (value!209760 (h!47698 prefixTokens!80))))))

(declare-fun b!3965586 () Bool)

(declare-fun e!2456092 () Bool)

(assert (=> b!3965586 (= e!2456093 e!2456092)))

(declare-fun c!687992 () Bool)

(assert (=> b!3965586 (= c!687992 ((_ is IntegerValue!20599) (value!209760 (h!47698 prefixTokens!80))))))

(declare-fun b!3965587 () Bool)

(assert (=> b!3965587 (= e!2456092 (inv!17 (value!209760 (h!47698 prefixTokens!80))))))

(declare-fun d!1174729 () Bool)

(declare-fun c!687993 () Bool)

(assert (=> d!1174729 (= c!687993 ((_ is IntegerValue!20598) (value!209760 (h!47698 prefixTokens!80))))))

(assert (=> d!1174729 (= (inv!21 (value!209760 (h!47698 prefixTokens!80))) e!2456093)))

(declare-fun b!3965588 () Bool)

(declare-fun res!1605252 () Bool)

(assert (=> b!3965588 (=> res!1605252 e!2456094)))

(assert (=> b!3965588 (= res!1605252 (not ((_ is IntegerValue!20600) (value!209760 (h!47698 prefixTokens!80)))))))

(assert (=> b!3965588 (= e!2456092 e!2456094)))

(assert (= (and d!1174729 c!687993) b!3965585))

(assert (= (and d!1174729 (not c!687993)) b!3965586))

(assert (= (and b!3965586 c!687992) b!3965587))

(assert (= (and b!3965586 (not c!687992)) b!3965588))

(assert (= (and b!3965588 (not res!1605252)) b!3965584))

(declare-fun m!4535483 () Bool)

(assert (=> b!3965584 m!4535483))

(declare-fun m!4535485 () Bool)

(assert (=> b!3965585 m!4535485))

(declare-fun m!4535487 () Bool)

(assert (=> b!3965587 m!4535487))

(assert (=> b!3965276 d!1174729))

(declare-fun d!1174733 () Bool)

(declare-fun lt!1388782 () Int)

(assert (=> d!1174733 (>= lt!1388782 0)))

(declare-fun e!2456095 () Int)

(assert (=> d!1174733 (= lt!1388782 e!2456095)))

(declare-fun c!687994 () Bool)

(assert (=> d!1174733 (= c!687994 ((_ is Nil!42275) (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1174733 (= (size!31647 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603)))) lt!1388782)))

(declare-fun b!3965589 () Bool)

(assert (=> b!3965589 (= e!2456095 0)))

(declare-fun b!3965590 () Bool)

(assert (=> b!3965590 (= e!2456095 (+ 1 (size!31647 (t!330254 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (= (and d!1174733 c!687994) b!3965589))

(assert (= (and d!1174733 (not c!687994)) b!3965590))

(declare-fun m!4535489 () Bool)

(assert (=> b!3965590 m!4535489))

(assert (=> b!3965254 d!1174733))

(declare-fun d!1174735 () Bool)

(declare-fun lt!1388783 () Int)

(assert (=> d!1174735 (>= lt!1388783 0)))

(declare-fun e!2456096 () Int)

(assert (=> d!1174735 (= lt!1388783 e!2456096)))

(declare-fun c!687995 () Bool)

(assert (=> d!1174735 (= c!687995 ((_ is Nil!42275) suffix!1176))))

(assert (=> d!1174735 (= (size!31647 suffix!1176) lt!1388783)))

(declare-fun b!3965591 () Bool)

(assert (=> b!3965591 (= e!2456096 0)))

(declare-fun b!3965592 () Bool)

(assert (=> b!3965592 (= e!2456096 (+ 1 (size!31647 (t!330254 suffix!1176))))))

(assert (= (and d!1174735 c!687995) b!3965591))

(assert (= (and d!1174735 (not c!687995)) b!3965592))

(declare-fun m!4535491 () Bool)

(assert (=> b!3965592 m!4535491))

(assert (=> b!3965236 d!1174735))

(declare-fun d!1174737 () Bool)

(declare-fun lt!1388784 () Int)

(assert (=> d!1174737 (>= lt!1388784 0)))

(declare-fun e!2456097 () Int)

(assert (=> d!1174737 (= lt!1388784 e!2456097)))

(declare-fun c!687996 () Bool)

(assert (=> d!1174737 (= c!687996 ((_ is Nil!42275) (_2!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174737 (= (size!31647 (_2!23921 (v!39401 lt!1388603))) lt!1388784)))

(declare-fun b!3965593 () Bool)

(assert (=> b!3965593 (= e!2456097 0)))

(declare-fun b!3965594 () Bool)

(assert (=> b!3965594 (= e!2456097 (+ 1 (size!31647 (t!330254 (_2!23921 (v!39401 lt!1388603))))))))

(assert (= (and d!1174737 c!687996) b!3965593))

(assert (= (and d!1174737 (not c!687996)) b!3965594))

(declare-fun m!4535493 () Bool)

(assert (=> b!3965594 m!4535493))

(assert (=> b!3965236 d!1174737))

(declare-fun b!3965597 () Bool)

(declare-fun res!1605253 () Bool)

(declare-fun e!2456099 () Bool)

(assert (=> b!3965597 (=> (not res!1605253) (not e!2456099))))

(declare-fun lt!1388785 () List!42399)

(assert (=> b!3965597 (= res!1605253 (= (size!31647 lt!1388785) (+ (size!31647 lt!1388609) (size!31647 lt!1388612))))))

(declare-fun b!3965598 () Bool)

(assert (=> b!3965598 (= e!2456099 (or (not (= lt!1388612 Nil!42275)) (= lt!1388785 lt!1388609)))))

(declare-fun b!3965595 () Bool)

(declare-fun e!2456098 () List!42399)

(assert (=> b!3965595 (= e!2456098 lt!1388612)))

(declare-fun d!1174739 () Bool)

(assert (=> d!1174739 e!2456099))

(declare-fun res!1605254 () Bool)

(assert (=> d!1174739 (=> (not res!1605254) (not e!2456099))))

(assert (=> d!1174739 (= res!1605254 (= (content!6421 lt!1388785) ((_ map or) (content!6421 lt!1388609) (content!6421 lt!1388612))))))

(assert (=> d!1174739 (= lt!1388785 e!2456098)))

(declare-fun c!687997 () Bool)

(assert (=> d!1174739 (= c!687997 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1174739 (= (++!11029 lt!1388609 lt!1388612) lt!1388785)))

(declare-fun b!3965596 () Bool)

(assert (=> b!3965596 (= e!2456098 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) lt!1388612)))))

(assert (= (and d!1174739 c!687997) b!3965595))

(assert (= (and d!1174739 (not c!687997)) b!3965596))

(assert (= (and d!1174739 res!1605254) b!3965597))

(assert (= (and b!3965597 res!1605253) b!3965598))

(declare-fun m!4535495 () Bool)

(assert (=> b!3965597 m!4535495))

(assert (=> b!3965597 m!4534889))

(assert (=> b!3965597 m!4535067))

(declare-fun m!4535497 () Bool)

(assert (=> d!1174739 m!4535497))

(assert (=> d!1174739 m!4535127))

(declare-fun m!4535499 () Bool)

(assert (=> d!1174739 m!4535499))

(declare-fun m!4535501 () Bool)

(assert (=> b!3965596 m!4535501))

(assert (=> b!3965237 d!1174739))

(declare-fun b!3965601 () Bool)

(declare-fun res!1605255 () Bool)

(declare-fun e!2456101 () Bool)

(assert (=> b!3965601 (=> (not res!1605255) (not e!2456101))))

(declare-fun lt!1388786 () List!42399)

(assert (=> b!3965601 (= res!1605255 (= (size!31647 lt!1388786) (+ (size!31647 lt!1388621) (size!31647 suffix!1176))))))

(declare-fun b!3965602 () Bool)

(assert (=> b!3965602 (= e!2456101 (or (not (= suffix!1176 Nil!42275)) (= lt!1388786 lt!1388621)))))

(declare-fun b!3965599 () Bool)

(declare-fun e!2456100 () List!42399)

(assert (=> b!3965599 (= e!2456100 suffix!1176)))

(declare-fun d!1174741 () Bool)

(assert (=> d!1174741 e!2456101))

(declare-fun res!1605256 () Bool)

(assert (=> d!1174741 (=> (not res!1605256) (not e!2456101))))

(assert (=> d!1174741 (= res!1605256 (= (content!6421 lt!1388786) ((_ map or) (content!6421 lt!1388621) (content!6421 suffix!1176))))))

(assert (=> d!1174741 (= lt!1388786 e!2456100)))

(declare-fun c!687998 () Bool)

(assert (=> d!1174741 (= c!687998 ((_ is Nil!42275) lt!1388621))))

(assert (=> d!1174741 (= (++!11029 lt!1388621 suffix!1176) lt!1388786)))

(declare-fun b!3965600 () Bool)

(assert (=> b!3965600 (= e!2456100 (Cons!42275 (h!47695 lt!1388621) (++!11029 (t!330254 lt!1388621) suffix!1176)))))

(assert (= (and d!1174741 c!687998) b!3965599))

(assert (= (and d!1174741 (not c!687998)) b!3965600))

(assert (= (and d!1174741 res!1605256) b!3965601))

(assert (= (and b!3965601 res!1605255) b!3965602))

(declare-fun m!4535503 () Bool)

(assert (=> b!3965601 m!4535503))

(assert (=> b!3965601 m!4534921))

(assert (=> b!3965601 m!4534863))

(declare-fun m!4535505 () Bool)

(assert (=> d!1174741 m!4535505))

(assert (=> d!1174741 m!4535379))

(assert (=> d!1174741 m!4535025))

(declare-fun m!4535507 () Bool)

(assert (=> b!3965600 m!4535507))

(assert (=> b!3965237 d!1174741))

(declare-fun d!1174743 () Bool)

(assert (=> d!1174743 (= (++!11029 (++!11029 lt!1388609 lt!1388621) suffix!1176) (++!11029 lt!1388609 (++!11029 lt!1388621 suffix!1176)))))

(declare-fun lt!1388789 () Unit!60908)

(declare-fun choose!23733 (List!42399 List!42399 List!42399) Unit!60908)

(assert (=> d!1174743 (= lt!1388789 (choose!23733 lt!1388609 lt!1388621 suffix!1176))))

(assert (=> d!1174743 (= (lemmaConcatAssociativity!2375 lt!1388609 lt!1388621 suffix!1176) lt!1388789)))

(declare-fun bs!587416 () Bool)

(assert (= bs!587416 d!1174743))

(assert (=> bs!587416 m!4534971))

(declare-fun m!4535509 () Bool)

(assert (=> bs!587416 m!4535509))

(assert (=> bs!587416 m!4534965))

(declare-fun m!4535511 () Bool)

(assert (=> bs!587416 m!4535511))

(assert (=> bs!587416 m!4534971))

(assert (=> bs!587416 m!4534965))

(declare-fun m!4535513 () Bool)

(assert (=> bs!587416 m!4535513))

(assert (=> b!3965237 d!1174743))

(declare-fun b!3965635 () Bool)

(declare-fun res!1605282 () Bool)

(declare-fun e!2456117 () Bool)

(assert (=> b!3965635 (=> (not res!1605282) (not e!2456117))))

(declare-fun lt!1388815 () Option!9056)

(assert (=> b!3965635 (= res!1605282 (< (size!31647 (_2!23921 (get!13944 lt!1388815))) (size!31647 lt!1388630)))))

(declare-fun b!3965636 () Bool)

(declare-fun res!1605283 () Bool)

(assert (=> b!3965636 (=> (not res!1605283) (not e!2456117))))

(assert (=> b!3965636 (= res!1605283 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun b!3965637 () Bool)

(declare-fun e!2456118 () Option!9056)

(declare-fun lt!1388817 () Option!9056)

(declare-fun lt!1388816 () Option!9056)

(assert (=> b!3965637 (= e!2456118 (ite (and ((_ is None!9055) lt!1388817) ((_ is None!9055) lt!1388816)) None!9055 (ite ((_ is None!9055) lt!1388816) lt!1388817 (ite ((_ is None!9055) lt!1388817) lt!1388816 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1388817))) (size!31646 (_1!23921 (v!39401 lt!1388816)))) lt!1388817 lt!1388816)))))))

(declare-fun call!285487 () Option!9056)

(assert (=> b!3965637 (= lt!1388817 call!285487)))

(assert (=> b!3965637 (= lt!1388816 (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) lt!1388630))))

(declare-fun d!1174745 () Bool)

(declare-fun e!2456119 () Bool)

(assert (=> d!1174745 e!2456119))

(declare-fun res!1605277 () Bool)

(assert (=> d!1174745 (=> res!1605277 e!2456119)))

(assert (=> d!1174745 (= res!1605277 (isEmpty!25299 lt!1388815))))

(assert (=> d!1174745 (= lt!1388815 e!2456118)))

(declare-fun c!688005 () Bool)

(assert (=> d!1174745 (= c!688005 (and ((_ is Cons!42277) rules!2768) ((_ is Nil!42277) (t!330256 rules!2768))))))

(declare-fun lt!1388814 () Unit!60908)

(declare-fun lt!1388818 () Unit!60908)

(assert (=> d!1174745 (= lt!1388814 lt!1388818)))

(assert (=> d!1174745 (isPrefix!3725 lt!1388630 lt!1388630)))

(declare-fun lemmaIsPrefixRefl!2347 (List!42399 List!42399) Unit!60908)

(assert (=> d!1174745 (= lt!1388818 (lemmaIsPrefixRefl!2347 lt!1388630 lt!1388630))))

(declare-fun rulesValidInductive!2405 (LexerInterface!6225 List!42401) Bool)

(assert (=> d!1174745 (rulesValidInductive!2405 thiss!20629 rules!2768)))

(assert (=> d!1174745 (= (maxPrefix!3529 thiss!20629 rules!2768 lt!1388630) lt!1388815)))

(declare-fun b!3965638 () Bool)

(assert (=> b!3965638 (= e!2456117 (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))

(declare-fun b!3965639 () Bool)

(declare-fun res!1605279 () Bool)

(assert (=> b!3965639 (=> (not res!1605279) (not e!2456117))))

(assert (=> b!3965639 (= res!1605279 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815)))))))

(declare-fun bm!285482 () Bool)

(assert (=> bm!285482 (= call!285487 (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) lt!1388630))))

(declare-fun b!3965640 () Bool)

(declare-fun res!1605280 () Bool)

(assert (=> b!3965640 (=> (not res!1605280) (not e!2456117))))

(assert (=> b!3965640 (= res!1605280 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))) (_2!23921 (get!13944 lt!1388815))) lt!1388630))))

(declare-fun b!3965641 () Bool)

(declare-fun res!1605278 () Bool)

(assert (=> b!3965641 (=> (not res!1605278) (not e!2456117))))

(assert (=> b!3965641 (= res!1605278 (= (value!209760 (_1!23921 (get!13944 lt!1388815))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815)))))))))

(declare-fun b!3965642 () Bool)

(assert (=> b!3965642 (= e!2456118 call!285487)))

(declare-fun b!3965643 () Bool)

(assert (=> b!3965643 (= e!2456119 e!2456117)))

(declare-fun res!1605281 () Bool)

(assert (=> b!3965643 (=> (not res!1605281) (not e!2456117))))

(declare-fun isDefined!7006 (Option!9056) Bool)

(assert (=> b!3965643 (= res!1605281 (isDefined!7006 lt!1388815))))

(assert (= (and d!1174745 c!688005) b!3965642))

(assert (= (and d!1174745 (not c!688005)) b!3965637))

(assert (= (or b!3965642 b!3965637) bm!285482))

(assert (= (and d!1174745 (not res!1605277)) b!3965643))

(assert (= (and b!3965643 res!1605281) b!3965639))

(assert (= (and b!3965639 res!1605279) b!3965635))

(assert (= (and b!3965635 res!1605282) b!3965640))

(assert (= (and b!3965640 res!1605280) b!3965641))

(assert (= (and b!3965641 res!1605278) b!3965636))

(assert (= (and b!3965636 res!1605283) b!3965638))

(declare-fun m!4535551 () Bool)

(assert (=> b!3965639 m!4535551))

(declare-fun m!4535553 () Bool)

(assert (=> b!3965639 m!4535553))

(assert (=> b!3965639 m!4535553))

(declare-fun m!4535555 () Bool)

(assert (=> b!3965639 m!4535555))

(assert (=> b!3965635 m!4535551))

(declare-fun m!4535557 () Bool)

(assert (=> b!3965635 m!4535557))

(assert (=> b!3965635 m!4534981))

(declare-fun m!4535559 () Bool)

(assert (=> b!3965637 m!4535559))

(declare-fun m!4535561 () Bool)

(assert (=> b!3965643 m!4535561))

(assert (=> b!3965640 m!4535551))

(assert (=> b!3965640 m!4535553))

(assert (=> b!3965640 m!4535553))

(assert (=> b!3965640 m!4535555))

(assert (=> b!3965640 m!4535555))

(declare-fun m!4535563 () Bool)

(assert (=> b!3965640 m!4535563))

(assert (=> b!3965638 m!4535551))

(declare-fun m!4535565 () Bool)

(assert (=> b!3965638 m!4535565))

(assert (=> b!3965636 m!4535551))

(assert (=> b!3965636 m!4535553))

(assert (=> b!3965636 m!4535553))

(assert (=> b!3965636 m!4535555))

(assert (=> b!3965636 m!4535555))

(declare-fun m!4535567 () Bool)

(assert (=> b!3965636 m!4535567))

(assert (=> b!3965641 m!4535551))

(declare-fun m!4535569 () Bool)

(assert (=> b!3965641 m!4535569))

(assert (=> b!3965641 m!4535569))

(declare-fun m!4535571 () Bool)

(assert (=> b!3965641 m!4535571))

(declare-fun m!4535573 () Bool)

(assert (=> bm!285482 m!4535573))

(declare-fun m!4535575 () Bool)

(assert (=> d!1174745 m!4535575))

(declare-fun m!4535577 () Bool)

(assert (=> d!1174745 m!4535577))

(declare-fun m!4535579 () Bool)

(assert (=> d!1174745 m!4535579))

(declare-fun m!4535581 () Bool)

(assert (=> d!1174745 m!4535581))

(assert (=> b!3965258 d!1174745))

(declare-fun d!1174771 () Bool)

(assert (=> d!1174771 (not (= (lexList!1993 thiss!20629 rules!2768 suffix!1176) (tuple2!41577 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1388819 () Unit!60908)

(assert (=> d!1174771 (= lt!1388819 (choose!23719 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1174771 (not (isEmpty!25298 rules!2768))))

(assert (=> d!1174771 (= (lemmaLexWithSmallerInputCannotProduceSameResults!164 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1388819)))

(declare-fun bs!587421 () Bool)

(assert (= bs!587421 d!1174771))

(assert (=> bs!587421 m!4534969))

(declare-fun m!4535583 () Bool)

(assert (=> bs!587421 m!4535583))

(assert (=> bs!587421 m!4534927))

(assert (=> b!3965235 d!1174771))

(declare-fun d!1174773 () Bool)

(assert (=> d!1174773 (= (isEmpty!25296 prefix!426) ((_ is Nil!42275) prefix!426))))

(assert (=> b!3965256 d!1174773))

(declare-fun d!1174775 () Bool)

(assert (=> d!1174775 (= (inv!56499 (tag!7496 (rule!9622 (h!47698 prefixTokens!80)))) (= (mod (str.len (value!209759 (tag!7496 (rule!9622 (h!47698 prefixTokens!80))))) 2) 0))))

(assert (=> b!3965277 d!1174775))

(declare-fun d!1174777 () Bool)

(declare-fun res!1605284 () Bool)

(declare-fun e!2456120 () Bool)

(assert (=> d!1174777 (=> (not res!1605284) (not e!2456120))))

(assert (=> d!1174777 (= res!1605284 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))))))

(assert (=> d!1174777 (= (inv!56503 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) e!2456120)))

(declare-fun b!3965644 () Bool)

(assert (=> b!3965644 (= e!2456120 (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))))))

(assert (= (and d!1174777 res!1605284) b!3965644))

(declare-fun m!4535585 () Bool)

(assert (=> d!1174777 m!4535585))

(declare-fun m!4535587 () Bool)

(assert (=> b!3965644 m!4535587))

(assert (=> b!3965277 d!1174777))

(declare-fun d!1174779 () Bool)

(assert (=> d!1174779 (= (isEmpty!25297 prefixTokens!80) ((_ is Nil!42278) prefixTokens!80))))

(assert (=> b!3965270 d!1174779))

(declare-fun b!3965645 () Bool)

(declare-fun e!2456122 () Bool)

(declare-fun lt!1388821 () tuple2!41576)

(assert (=> b!3965645 (= e!2456122 (not (isEmpty!25297 (_1!23922 lt!1388821))))))

(declare-fun b!3965646 () Bool)

(declare-fun e!2456121 () tuple2!41576)

(assert (=> b!3965646 (= e!2456121 (tuple2!41577 Nil!42278 suffix!1176))))

(declare-fun b!3965647 () Bool)

(declare-fun lt!1388820 () Option!9056)

(declare-fun lt!1388822 () tuple2!41576)

(assert (=> b!3965647 (= e!2456121 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388820)) (_1!23922 lt!1388822)) (_2!23922 lt!1388822)))))

(assert (=> b!3965647 (= lt!1388822 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388820))))))

(declare-fun b!3965649 () Bool)

(declare-fun e!2456123 () Bool)

(assert (=> b!3965649 (= e!2456123 e!2456122)))

(declare-fun res!1605285 () Bool)

(assert (=> b!3965649 (= res!1605285 (< (size!31647 (_2!23922 lt!1388821)) (size!31647 suffix!1176)))))

(assert (=> b!3965649 (=> (not res!1605285) (not e!2456122))))

(declare-fun b!3965648 () Bool)

(assert (=> b!3965648 (= e!2456123 (= (_2!23922 lt!1388821) suffix!1176))))

(declare-fun d!1174781 () Bool)

(assert (=> d!1174781 e!2456123))

(declare-fun c!688007 () Bool)

(assert (=> d!1174781 (= c!688007 (> (size!31648 (_1!23922 lt!1388821)) 0))))

(assert (=> d!1174781 (= lt!1388821 e!2456121)))

(declare-fun c!688006 () Bool)

(assert (=> d!1174781 (= c!688006 ((_ is Some!9055) lt!1388820))))

(assert (=> d!1174781 (= lt!1388820 (maxPrefix!3529 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1174781 (= (lexList!1993 thiss!20629 rules!2768 suffix!1176) lt!1388821)))

(assert (= (and d!1174781 c!688006) b!3965647))

(assert (= (and d!1174781 (not c!688006)) b!3965646))

(assert (= (and d!1174781 c!688007) b!3965649))

(assert (= (and d!1174781 (not c!688007)) b!3965648))

(assert (= (and b!3965649 res!1605285) b!3965645))

(declare-fun m!4535589 () Bool)

(assert (=> b!3965645 m!4535589))

(declare-fun m!4535591 () Bool)

(assert (=> b!3965647 m!4535591))

(declare-fun m!4535593 () Bool)

(assert (=> b!3965649 m!4535593))

(assert (=> b!3965649 m!4534863))

(declare-fun m!4535595 () Bool)

(assert (=> d!1174781 m!4535595))

(declare-fun m!4535597 () Bool)

(assert (=> d!1174781 m!4535597))

(assert (=> b!3965250 d!1174781))

(declare-fun d!1174783 () Bool)

(assert (=> d!1174783 (= (inv!56499 (tag!7496 (h!47697 rules!2768))) (= (mod (str.len (value!209759 (tag!7496 (h!47697 rules!2768)))) 2) 0))))

(assert (=> b!3965248 d!1174783))

(declare-fun d!1174785 () Bool)

(declare-fun res!1605286 () Bool)

(declare-fun e!2456124 () Bool)

(assert (=> d!1174785 (=> (not res!1605286) (not e!2456124))))

(assert (=> d!1174785 (= res!1605286 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (h!47697 rules!2768)))))))

(assert (=> d!1174785 (= (inv!56503 (transformation!6636 (h!47697 rules!2768))) e!2456124)))

(declare-fun b!3965650 () Bool)

(assert (=> b!3965650 (= e!2456124 (equivClasses!2757 (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (h!47697 rules!2768)))))))

(assert (= (and d!1174785 res!1605286) b!3965650))

(declare-fun m!4535599 () Bool)

(assert (=> d!1174785 m!4535599))

(declare-fun m!4535601 () Bool)

(assert (=> b!3965650 m!4535601))

(assert (=> b!3965248 d!1174785))

(declare-fun b!3965651 () Bool)

(declare-fun e!2456126 () List!42402)

(assert (=> b!3965651 (= e!2456126 lt!1388633)))

(declare-fun b!3965652 () Bool)

(assert (=> b!3965652 (= e!2456126 (Cons!42278 (h!47698 lt!1388619) (++!11030 (t!330257 lt!1388619) lt!1388633)))))

(declare-fun b!3965653 () Bool)

(declare-fun res!1605288 () Bool)

(declare-fun e!2456125 () Bool)

(assert (=> b!3965653 (=> (not res!1605288) (not e!2456125))))

(declare-fun lt!1388823 () List!42402)

(assert (=> b!3965653 (= res!1605288 (= (size!31648 lt!1388823) (+ (size!31648 lt!1388619) (size!31648 lt!1388633))))))

(declare-fun b!3965654 () Bool)

(assert (=> b!3965654 (= e!2456125 (or (not (= lt!1388633 Nil!42278)) (= lt!1388823 lt!1388619)))))

(declare-fun d!1174787 () Bool)

(assert (=> d!1174787 e!2456125))

(declare-fun res!1605287 () Bool)

(assert (=> d!1174787 (=> (not res!1605287) (not e!2456125))))

(assert (=> d!1174787 (= res!1605287 (= (content!6420 lt!1388823) ((_ map or) (content!6420 lt!1388619) (content!6420 lt!1388633))))))

(assert (=> d!1174787 (= lt!1388823 e!2456126)))

(declare-fun c!688008 () Bool)

(assert (=> d!1174787 (= c!688008 ((_ is Nil!42278) lt!1388619))))

(assert (=> d!1174787 (= (++!11030 lt!1388619 lt!1388633) lt!1388823)))

(assert (= (and d!1174787 c!688008) b!3965651))

(assert (= (and d!1174787 (not c!688008)) b!3965652))

(assert (= (and d!1174787 res!1605287) b!3965653))

(assert (= (and b!3965653 res!1605288) b!3965654))

(declare-fun m!4535603 () Bool)

(assert (=> b!3965652 m!4535603))

(declare-fun m!4535605 () Bool)

(assert (=> b!3965653 m!4535605))

(assert (=> b!3965653 m!4535081))

(assert (=> b!3965653 m!4535055))

(declare-fun m!4535607 () Bool)

(assert (=> d!1174787 m!4535607))

(assert (=> d!1174787 m!4535087))

(assert (=> d!1174787 m!4535059))

(assert (=> b!3965253 d!1174787))

(declare-fun b!3965655 () Bool)

(declare-fun e!2456128 () List!42402)

(assert (=> b!3965655 (= e!2456128 lt!1388616)))

(declare-fun b!3965656 () Bool)

(assert (=> b!3965656 (= e!2456128 (Cons!42278 (h!47698 lt!1388619) (++!11030 (t!330257 lt!1388619) lt!1388616)))))

(declare-fun b!3965657 () Bool)

(declare-fun res!1605290 () Bool)

(declare-fun e!2456127 () Bool)

(assert (=> b!3965657 (=> (not res!1605290) (not e!2456127))))

(declare-fun lt!1388824 () List!42402)

(assert (=> b!3965657 (= res!1605290 (= (size!31648 lt!1388824) (+ (size!31648 lt!1388619) (size!31648 lt!1388616))))))

(declare-fun b!3965658 () Bool)

(assert (=> b!3965658 (= e!2456127 (or (not (= lt!1388616 Nil!42278)) (= lt!1388824 lt!1388619)))))

(declare-fun d!1174789 () Bool)

(assert (=> d!1174789 e!2456127))

(declare-fun res!1605289 () Bool)

(assert (=> d!1174789 (=> (not res!1605289) (not e!2456127))))

(assert (=> d!1174789 (= res!1605289 (= (content!6420 lt!1388824) ((_ map or) (content!6420 lt!1388619) (content!6420 lt!1388616))))))

(assert (=> d!1174789 (= lt!1388824 e!2456128)))

(declare-fun c!688009 () Bool)

(assert (=> d!1174789 (= c!688009 ((_ is Nil!42278) lt!1388619))))

(assert (=> d!1174789 (= (++!11030 lt!1388619 lt!1388616) lt!1388824)))

(assert (= (and d!1174789 c!688009) b!3965655))

(assert (= (and d!1174789 (not c!688009)) b!3965656))

(assert (= (and d!1174789 res!1605289) b!3965657))

(assert (= (and b!3965657 res!1605290) b!3965658))

(declare-fun m!4535609 () Bool)

(assert (=> b!3965656 m!4535609))

(declare-fun m!4535611 () Bool)

(assert (=> b!3965657 m!4535611))

(assert (=> b!3965657 m!4535081))

(declare-fun m!4535613 () Bool)

(assert (=> b!3965657 m!4535613))

(declare-fun m!4535615 () Bool)

(assert (=> d!1174789 m!4535615))

(assert (=> d!1174789 m!4535087))

(declare-fun m!4535617 () Bool)

(assert (=> d!1174789 m!4535617))

(assert (=> b!3965253 d!1174789))

(declare-fun d!1174791 () Bool)

(assert (=> d!1174791 (= (isEmpty!25297 lt!1388633) ((_ is Nil!42278) lt!1388633))))

(assert (=> b!3965253 d!1174791))

(declare-fun b!3965659 () Bool)

(declare-fun e!2456130 () List!42402)

(assert (=> b!3965659 (= e!2456130 suffixTokens!72)))

(declare-fun b!3965660 () Bool)

(assert (=> b!3965660 (= e!2456130 (Cons!42278 (h!47698 (++!11030 lt!1388619 lt!1388633)) (++!11030 (t!330257 (++!11030 lt!1388619 lt!1388633)) suffixTokens!72)))))

(declare-fun b!3965661 () Bool)

(declare-fun res!1605292 () Bool)

(declare-fun e!2456129 () Bool)

(assert (=> b!3965661 (=> (not res!1605292) (not e!2456129))))

(declare-fun lt!1388825 () List!42402)

(assert (=> b!3965661 (= res!1605292 (= (size!31648 lt!1388825) (+ (size!31648 (++!11030 lt!1388619 lt!1388633)) (size!31648 suffixTokens!72))))))

(declare-fun b!3965662 () Bool)

(assert (=> b!3965662 (= e!2456129 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388825 (++!11030 lt!1388619 lt!1388633))))))

(declare-fun d!1174793 () Bool)

(assert (=> d!1174793 e!2456129))

(declare-fun res!1605291 () Bool)

(assert (=> d!1174793 (=> (not res!1605291) (not e!2456129))))

(assert (=> d!1174793 (= res!1605291 (= (content!6420 lt!1388825) ((_ map or) (content!6420 (++!11030 lt!1388619 lt!1388633)) (content!6420 suffixTokens!72))))))

(assert (=> d!1174793 (= lt!1388825 e!2456130)))

(declare-fun c!688010 () Bool)

(assert (=> d!1174793 (= c!688010 ((_ is Nil!42278) (++!11030 lt!1388619 lt!1388633)))))

(assert (=> d!1174793 (= (++!11030 (++!11030 lt!1388619 lt!1388633) suffixTokens!72) lt!1388825)))

(assert (= (and d!1174793 c!688010) b!3965659))

(assert (= (and d!1174793 (not c!688010)) b!3965660))

(assert (= (and d!1174793 res!1605291) b!3965661))

(assert (= (and b!3965661 res!1605292) b!3965662))

(declare-fun m!4535619 () Bool)

(assert (=> b!3965660 m!4535619))

(declare-fun m!4535621 () Bool)

(assert (=> b!3965661 m!4535621))

(assert (=> b!3965661 m!4534911))

(declare-fun m!4535623 () Bool)

(assert (=> b!3965661 m!4535623))

(assert (=> b!3965661 m!4535011))

(declare-fun m!4535625 () Bool)

(assert (=> d!1174793 m!4535625))

(assert (=> d!1174793 m!4534911))

(declare-fun m!4535627 () Bool)

(assert (=> d!1174793 m!4535627))

(assert (=> d!1174793 m!4535017))

(assert (=> b!3965253 d!1174793))

(declare-fun d!1174795 () Bool)

(assert (=> d!1174795 (= (++!11030 (++!11030 lt!1388619 lt!1388633) suffixTokens!72) (++!11030 lt!1388619 (++!11030 lt!1388633 suffixTokens!72)))))

(declare-fun lt!1388828 () Unit!60908)

(declare-fun choose!23735 (List!42402 List!42402 List!42402) Unit!60908)

(assert (=> d!1174795 (= lt!1388828 (choose!23735 lt!1388619 lt!1388633 suffixTokens!72))))

(assert (=> d!1174795 (= (lemmaConcatAssociativity!2376 lt!1388619 lt!1388633 suffixTokens!72) lt!1388828)))

(declare-fun bs!587422 () Bool)

(assert (= bs!587422 d!1174795))

(assert (=> bs!587422 m!4534911))

(assert (=> bs!587422 m!4534911))

(assert (=> bs!587422 m!4534913))

(declare-fun m!4535629 () Bool)

(assert (=> bs!587422 m!4535629))

(assert (=> bs!587422 m!4534929))

(assert (=> bs!587422 m!4534929))

(declare-fun m!4535631 () Bool)

(assert (=> bs!587422 m!4535631))

(assert (=> b!3965253 d!1174795))

(declare-fun d!1174797 () Bool)

(assert (=> d!1174797 (= (isEmpty!25297 lt!1388620) ((_ is Nil!42278) lt!1388620))))

(assert (=> b!3965273 d!1174797))

(assert (=> b!3965273 d!1174575))

(declare-fun d!1174799 () Bool)

(declare-fun lt!1388829 () Int)

(assert (=> d!1174799 (>= lt!1388829 0)))

(declare-fun e!2456131 () Int)

(assert (=> d!1174799 (= lt!1388829 e!2456131)))

(declare-fun c!688011 () Bool)

(assert (=> d!1174799 (= c!688011 ((_ is Nil!42275) lt!1388621))))

(assert (=> d!1174799 (= (size!31647 lt!1388621) lt!1388829)))

(declare-fun b!3965663 () Bool)

(assert (=> b!3965663 (= e!2456131 0)))

(declare-fun b!3965664 () Bool)

(assert (=> b!3965664 (= e!2456131 (+ 1 (size!31647 (t!330254 lt!1388621))))))

(assert (= (and d!1174799 c!688011) b!3965663))

(assert (= (and d!1174799 (not c!688011)) b!3965664))

(declare-fun m!4535633 () Bool)

(assert (=> b!3965664 m!4535633))

(assert (=> b!3965271 d!1174799))

(declare-fun b!3965669 () Bool)

(declare-fun e!2456134 () Bool)

(declare-fun tp!1208651 () Bool)

(assert (=> b!3965669 (= e!2456134 (and tp_is_empty!20053 tp!1208651))))

(assert (=> b!3965276 (= tp!1208628 e!2456134)))

(assert (= (and b!3965276 ((_ is Cons!42275) (originalCharacters!7236 (h!47698 prefixTokens!80)))) b!3965669))

(declare-fun b!3965670 () Bool)

(declare-fun e!2456135 () Bool)

(declare-fun tp!1208652 () Bool)

(assert (=> b!3965670 (= e!2456135 (and tp_is_empty!20053 tp!1208652))))

(assert (=> b!3965245 (= tp!1208630 e!2456135)))

(assert (= (and b!3965245 ((_ is Cons!42275) (originalCharacters!7236 (h!47698 suffixTokens!72)))) b!3965670))

(declare-fun b!3965671 () Bool)

(declare-fun e!2456136 () Bool)

(declare-fun tp!1208653 () Bool)

(assert (=> b!3965671 (= e!2456136 (and tp_is_empty!20053 tp!1208653))))

(assert (=> b!3965274 (= tp!1208629 e!2456136)))

(assert (= (and b!3965274 ((_ is Cons!42275) (t!330254 suffix!1176))) b!3965671))

(declare-fun b!3965672 () Bool)

(declare-fun e!2456137 () Bool)

(declare-fun tp!1208654 () Bool)

(assert (=> b!3965672 (= e!2456137 (and tp_is_empty!20053 tp!1208654))))

(assert (=> b!3965278 (= tp!1208625 e!2456137)))

(assert (= (and b!3965278 ((_ is Cons!42275) (t!330254 suffixResult!91))) b!3965672))

(declare-fun b!3965673 () Bool)

(declare-fun e!2456138 () Bool)

(declare-fun tp!1208655 () Bool)

(assert (=> b!3965673 (= e!2456138 (and tp_is_empty!20053 tp!1208655))))

(assert (=> b!3965257 (= tp!1208627 e!2456138)))

(assert (= (and b!3965257 ((_ is Cons!42275) (t!330254 prefix!426))) b!3965673))

(declare-fun e!2456141 () Bool)

(assert (=> b!3965277 (= tp!1208638 e!2456141)))

(declare-fun b!3965687 () Bool)

(declare-fun tp!1208668 () Bool)

(declare-fun tp!1208669 () Bool)

(assert (=> b!3965687 (= e!2456141 (and tp!1208668 tp!1208669))))

(declare-fun b!3965684 () Bool)

(assert (=> b!3965684 (= e!2456141 tp_is_empty!20053)))

(declare-fun b!3965686 () Bool)

(declare-fun tp!1208670 () Bool)

(assert (=> b!3965686 (= e!2456141 tp!1208670)))

(declare-fun b!3965685 () Bool)

(declare-fun tp!1208667 () Bool)

(declare-fun tp!1208666 () Bool)

(assert (=> b!3965685 (= e!2456141 (and tp!1208667 tp!1208666))))

(assert (= (and b!3965277 ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (h!47698 prefixTokens!80))))) b!3965684))

(assert (= (and b!3965277 ((_ is Concat!18408) (regex!6636 (rule!9622 (h!47698 prefixTokens!80))))) b!3965685))

(assert (= (and b!3965277 ((_ is Star!11541) (regex!6636 (rule!9622 (h!47698 prefixTokens!80))))) b!3965686))

(assert (= (and b!3965277 ((_ is Union!11541) (regex!6636 (rule!9622 (h!47698 prefixTokens!80))))) b!3965687))

(declare-fun b!3965701 () Bool)

(declare-fun b_free!109641 () Bool)

(declare-fun b_next!110345 () Bool)

(assert (=> b!3965701 (= b_free!109641 (not b_next!110345))))

(declare-fun tb!239169 () Bool)

(declare-fun t!330307 () Bool)

(assert (=> (and b!3965701 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330307) tb!239169))

(declare-fun result!289640 () Bool)

(assert (= result!289640 result!289592))

(assert (=> d!1174601 t!330307))

(declare-fun b_and!304615 () Bool)

(declare-fun tp!1208685 () Bool)

(assert (=> b!3965701 (= tp!1208685 (and (=> t!330307 result!289640) b_and!304615))))

(declare-fun b_free!109643 () Bool)

(declare-fun b_next!110347 () Bool)

(assert (=> b!3965701 (= b_free!109643 (not b_next!110347))))

(declare-fun t!330309 () Bool)

(declare-fun tb!239171 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330309) tb!239171))

(declare-fun result!289642 () Bool)

(assert (= result!289642 result!289578))

(assert (=> b!3965368 t!330309))

(declare-fun t!330311 () Bool)

(declare-fun tb!239173 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330311) tb!239173))

(declare-fun result!289644 () Bool)

(assert (= result!289644 result!289586))

(assert (=> d!1174599 t!330311))

(declare-fun tb!239175 () Bool)

(declare-fun t!330313 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330313) tb!239175))

(declare-fun result!289646 () Bool)

(assert (= result!289646 result!289622))

(assert (=> b!3965513 t!330313))

(declare-fun tp!1208681 () Bool)

(declare-fun b_and!304617 () Bool)

(assert (=> b!3965701 (= tp!1208681 (and (=> t!330309 result!289642) (=> t!330311 result!289644) (=> t!330313 result!289646) b_and!304617))))

(declare-fun e!2456158 () Bool)

(declare-fun tp!1208682 () Bool)

(declare-fun e!2456159 () Bool)

(declare-fun b!3965700 () Bool)

(assert (=> b!3965700 (= e!2456158 (and tp!1208682 (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) e!2456159))))

(declare-fun tp!1208683 () Bool)

(declare-fun b!3965699 () Bool)

(declare-fun e!2456157 () Bool)

(assert (=> b!3965699 (= e!2456157 (and (inv!21 (value!209760 (h!47698 (t!330257 prefixTokens!80)))) e!2456158 tp!1208683))))

(declare-fun e!2456155 () Bool)

(assert (=> b!3965246 (= tp!1208637 e!2456155)))

(assert (=> b!3965701 (= e!2456159 (and tp!1208685 tp!1208681))))

(declare-fun b!3965698 () Bool)

(declare-fun tp!1208684 () Bool)

(assert (=> b!3965698 (= e!2456155 (and (inv!56502 (h!47698 (t!330257 prefixTokens!80))) e!2456157 tp!1208684))))

(assert (= b!3965700 b!3965701))

(assert (= b!3965699 b!3965700))

(assert (= b!3965698 b!3965699))

(assert (= (and b!3965246 ((_ is Cons!42278) (t!330257 prefixTokens!80))) b!3965698))

(declare-fun m!4535635 () Bool)

(assert (=> b!3965700 m!4535635))

(declare-fun m!4535637 () Bool)

(assert (=> b!3965700 m!4535637))

(declare-fun m!4535639 () Bool)

(assert (=> b!3965699 m!4535639))

(declare-fun m!4535641 () Bool)

(assert (=> b!3965698 m!4535641))

(declare-fun b!3965705 () Bool)

(declare-fun b_free!109645 () Bool)

(declare-fun b_next!110349 () Bool)

(assert (=> b!3965705 (= b_free!109645 (not b_next!110349))))

(declare-fun t!330315 () Bool)

(declare-fun tb!239177 () Bool)

(assert (=> (and b!3965705 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330315) tb!239177))

(declare-fun result!289648 () Bool)

(assert (= result!289648 result!289592))

(assert (=> d!1174601 t!330315))

(declare-fun b_and!304619 () Bool)

(declare-fun tp!1208690 () Bool)

(assert (=> b!3965705 (= tp!1208690 (and (=> t!330315 result!289648) b_and!304619))))

(declare-fun b_free!109647 () Bool)

(declare-fun b_next!110351 () Bool)

(assert (=> b!3965705 (= b_free!109647 (not b_next!110351))))

(declare-fun tb!239179 () Bool)

(declare-fun t!330317 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330317) tb!239179))

(declare-fun result!289650 () Bool)

(assert (= result!289650 result!289578))

(assert (=> b!3965368 t!330317))

(declare-fun tb!239181 () Bool)

(declare-fun t!330319 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330319) tb!239181))

(declare-fun result!289652 () Bool)

(assert (= result!289652 result!289586))

(assert (=> d!1174599 t!330319))

(declare-fun t!330321 () Bool)

(declare-fun tb!239183 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330321) tb!239183))

(declare-fun result!289654 () Bool)

(assert (= result!289654 result!289622))

(assert (=> b!3965513 t!330321))

(declare-fun tp!1208686 () Bool)

(declare-fun b_and!304621 () Bool)

(assert (=> b!3965705 (= tp!1208686 (and (=> t!330317 result!289650) (=> t!330319 result!289652) (=> t!330321 result!289654) b_and!304621))))

(declare-fun b!3965704 () Bool)

(declare-fun tp!1208687 () Bool)

(declare-fun e!2456165 () Bool)

(declare-fun e!2456164 () Bool)

(assert (=> b!3965704 (= e!2456164 (and tp!1208687 (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) e!2456165))))

(declare-fun e!2456163 () Bool)

(declare-fun b!3965703 () Bool)

(declare-fun tp!1208688 () Bool)

(assert (=> b!3965703 (= e!2456163 (and (inv!21 (value!209760 (h!47698 (t!330257 suffixTokens!72)))) e!2456164 tp!1208688))))

(declare-fun e!2456161 () Bool)

(assert (=> b!3965259 (= tp!1208624 e!2456161)))

(assert (=> b!3965705 (= e!2456165 (and tp!1208690 tp!1208686))))

(declare-fun tp!1208689 () Bool)

(declare-fun b!3965702 () Bool)

(assert (=> b!3965702 (= e!2456161 (and (inv!56502 (h!47698 (t!330257 suffixTokens!72))) e!2456163 tp!1208689))))

(assert (= b!3965704 b!3965705))

(assert (= b!3965703 b!3965704))

(assert (= b!3965702 b!3965703))

(assert (= (and b!3965259 ((_ is Cons!42278) (t!330257 suffixTokens!72))) b!3965702))

(declare-fun m!4535643 () Bool)

(assert (=> b!3965704 m!4535643))

(declare-fun m!4535645 () Bool)

(assert (=> b!3965704 m!4535645))

(declare-fun m!4535647 () Bool)

(assert (=> b!3965703 m!4535647))

(declare-fun m!4535649 () Bool)

(assert (=> b!3965702 m!4535649))

(declare-fun e!2456166 () Bool)

(assert (=> b!3965279 (= tp!1208634 e!2456166)))

(declare-fun b!3965709 () Bool)

(declare-fun tp!1208693 () Bool)

(declare-fun tp!1208694 () Bool)

(assert (=> b!3965709 (= e!2456166 (and tp!1208693 tp!1208694))))

(declare-fun b!3965706 () Bool)

(assert (=> b!3965706 (= e!2456166 tp_is_empty!20053)))

(declare-fun b!3965708 () Bool)

(declare-fun tp!1208695 () Bool)

(assert (=> b!3965708 (= e!2456166 tp!1208695)))

(declare-fun b!3965707 () Bool)

(declare-fun tp!1208692 () Bool)

(declare-fun tp!1208691 () Bool)

(assert (=> b!3965707 (= e!2456166 (and tp!1208692 tp!1208691))))

(assert (= (and b!3965279 ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (h!47698 suffixTokens!72))))) b!3965706))

(assert (= (and b!3965279 ((_ is Concat!18408) (regex!6636 (rule!9622 (h!47698 suffixTokens!72))))) b!3965707))

(assert (= (and b!3965279 ((_ is Star!11541) (regex!6636 (rule!9622 (h!47698 suffixTokens!72))))) b!3965708))

(assert (= (and b!3965279 ((_ is Union!11541) (regex!6636 (rule!9622 (h!47698 suffixTokens!72))))) b!3965709))

(declare-fun e!2456167 () Bool)

(assert (=> b!3965248 (= tp!1208626 e!2456167)))

(declare-fun b!3965713 () Bool)

(declare-fun tp!1208698 () Bool)

(declare-fun tp!1208699 () Bool)

(assert (=> b!3965713 (= e!2456167 (and tp!1208698 tp!1208699))))

(declare-fun b!3965710 () Bool)

(assert (=> b!3965710 (= e!2456167 tp_is_empty!20053)))

(declare-fun b!3965712 () Bool)

(declare-fun tp!1208700 () Bool)

(assert (=> b!3965712 (= e!2456167 tp!1208700)))

(declare-fun b!3965711 () Bool)

(declare-fun tp!1208697 () Bool)

(declare-fun tp!1208696 () Bool)

(assert (=> b!3965711 (= e!2456167 (and tp!1208697 tp!1208696))))

(assert (= (and b!3965248 ((_ is ElementMatch!11541) (regex!6636 (h!47697 rules!2768)))) b!3965710))

(assert (= (and b!3965248 ((_ is Concat!18408) (regex!6636 (h!47697 rules!2768)))) b!3965711))

(assert (= (and b!3965248 ((_ is Star!11541) (regex!6636 (h!47697 rules!2768)))) b!3965712))

(assert (= (and b!3965248 ((_ is Union!11541) (regex!6636 (h!47697 rules!2768)))) b!3965713))

(declare-fun b!3965724 () Bool)

(declare-fun b_free!109649 () Bool)

(declare-fun b_next!110353 () Bool)

(assert (=> b!3965724 (= b_free!109649 (not b_next!110353))))

(declare-fun tb!239185 () Bool)

(declare-fun t!330323 () Bool)

(assert (=> (and b!3965724 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330323) tb!239185))

(declare-fun result!289658 () Bool)

(assert (= result!289658 result!289592))

(assert (=> d!1174601 t!330323))

(declare-fun tp!1208711 () Bool)

(declare-fun b_and!304623 () Bool)

(assert (=> b!3965724 (= tp!1208711 (and (=> t!330323 result!289658) b_and!304623))))

(declare-fun b_free!109651 () Bool)

(declare-fun b_next!110355 () Bool)

(assert (=> b!3965724 (= b_free!109651 (not b_next!110355))))

(declare-fun tb!239187 () Bool)

(declare-fun t!330325 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330325) tb!239187))

(declare-fun result!289660 () Bool)

(assert (= result!289660 result!289578))

(assert (=> b!3965368 t!330325))

(declare-fun t!330327 () Bool)

(declare-fun tb!239189 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330327) tb!239189))

(declare-fun result!289662 () Bool)

(assert (= result!289662 result!289586))

(assert (=> d!1174599 t!330327))

(declare-fun t!330329 () Bool)

(declare-fun tb!239191 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330329) tb!239191))

(declare-fun result!289664 () Bool)

(assert (= result!289664 result!289622))

(assert (=> b!3965513 t!330329))

(declare-fun b_and!304625 () Bool)

(declare-fun tp!1208710 () Bool)

(assert (=> b!3965724 (= tp!1208710 (and (=> t!330325 result!289660) (=> t!330327 result!289662) (=> t!330329 result!289664) b_and!304625))))

(declare-fun e!2456177 () Bool)

(assert (=> b!3965724 (= e!2456177 (and tp!1208711 tp!1208710))))

(declare-fun tp!1208709 () Bool)

(declare-fun e!2456179 () Bool)

(declare-fun b!3965723 () Bool)

(assert (=> b!3965723 (= e!2456179 (and tp!1208709 (inv!56499 (tag!7496 (h!47697 (t!330256 rules!2768)))) (inv!56503 (transformation!6636 (h!47697 (t!330256 rules!2768)))) e!2456177))))

(declare-fun b!3965722 () Bool)

(declare-fun e!2456176 () Bool)

(declare-fun tp!1208712 () Bool)

(assert (=> b!3965722 (= e!2456176 (and e!2456179 tp!1208712))))

(assert (=> b!3965249 (= tp!1208632 e!2456176)))

(assert (= b!3965723 b!3965724))

(assert (= b!3965722 b!3965723))

(assert (= (and b!3965249 ((_ is Cons!42277) (t!330256 rules!2768))) b!3965722))

(declare-fun m!4535651 () Bool)

(assert (=> b!3965723 m!4535651))

(declare-fun m!4535653 () Bool)

(assert (=> b!3965723 m!4535653))

(declare-fun b_lambda!115947 () Bool)

(assert (= b_lambda!115931 (or (and b!3965724 b_free!109651 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (and b!3965280 b_free!109639) (and b!3965265 b_free!109631 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (and b!3965701 b_free!109643 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (and b!3965705 b_free!109647 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (and b!3965251 b_free!109635 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b_lambda!115947)))

(declare-fun b_lambda!115949 () Bool)

(assert (= b_lambda!115943 (or (and b!3965265 b_free!109631) (and b!3965251 b_free!109635 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))))) (and b!3965701 b_free!109643 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))))) (and b!3965705 b_free!109647 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))))) (and b!3965280 b_free!109639 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))))) (and b!3965724 b_free!109651 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b_lambda!115949)))

(check-sat (not d!1174771) (not b!3965637) (not b!3965536) (not b!3965584) (not b!3965374) (not b_next!110339) (not b!3965672) (not d!1174613) (not b_next!110345) (not b!3965712) (not b!3965597) b_and!304583 (not b!3965297) (not b!3965647) (not b!3965377) (not b!3965520) (not b!3965687) (not b!3965368) (not b!3965477) b_and!304605 (not d!1174573) (not b!3965573) (not b!3965394) b_and!304625 (not b_lambda!115949) (not b!3965664) b_and!304619 (not b!3965660) (not b!3965600) (not b!3965379) (not d!1174615) (not b!3965585) (not d!1174785) b_and!304615 (not tb!239127) (not b!3965357) (not b!3965481) (not b!3965722) (not b!3965544) (not d!1174707) (not b!3965321) (not d!1174795) (not b!3965638) (not b!3965489) (not d!1174581) (not tb!239133) (not d!1174595) (not d!1174641) (not b!3965384) (not b!3965537) (not b!3965582) (not b!3965339) (not d!1174585) (not b!3965590) (not b_next!110333) (not d!1174679) (not d!1174611) (not b!3965699) (not b!3965635) (not d!1174777) tp_is_empty!20053 (not d!1174565) (not b!3965700) (not b!3965670) (not d!1174713) (not b!3965649) (not d!1174675) (not b!3965341) (not b!3965686) (not d!1174723) (not b!3965551) (not b!3965474) (not b!3965661) (not b!3965402) (not d!1174691) (not b!3965476) (not b!3965388) (not b!3965359) (not d!1174677) (not b!3965640) (not d!1174569) b_and!304617 (not b_next!110337) (not d!1174793) (not d!1174739) (not d!1174721) (not d!1174745) b_and!304603 (not d!1174741) (not d!1174727) (not b!3965723) (not b!3965592) (not d!1174681) (not b!3965487) b_and!304579 (not b!3965532) (not b!3965390) (not b!3965656) (not b_lambda!115947) (not b!3965335) (not d!1174567) (not d!1174789) (not b!3965322) (not b!3965375) (not d!1174607) (not d!1174609) (not b!3965533) (not b!3965513) b_and!304607 (not b!3965657) (not b!3965652) (not d!1174659) (not d!1174557) (not b!3965514) (not b!3965581) (not b_next!110355) (not b!3965711) (not b!3965387) (not b!3965309) (not b!3965639) (not b!3965480) (not b!3965337) (not d!1174599) (not d!1174597) (not d!1174717) (not b!3965395) (not d!1174743) (not d!1174593) (not d!1174583) (not b_next!110353) (not b!3965334) (not b!3965713) (not b!3965650) (not b!3965596) (not b!3965310) (not b!3965346) (not d!1174671) (not b!3965396) (not b!3965636) (not b!3965709) (not b!3965707) (not d!1174781) (not b!3965703) (not b!3965673) (not b!3965645) (not b!3965361) (not b!3965475) (not d!1174695) (not d!1174589) (not d!1174561) (not b!3965574) (not b!3965295) b_and!304621 (not b_lambda!115933) (not tb!239121) (not b!3965543) b_and!304581 (not b!3965343) (not d!1174559) b_and!304623 (not d!1174787) (not b!3965411) (not b!3965579) (not b!3965643) (not b!3965644) (not b!3965702) (not b!3965653) (not b!3965704) (not b!3965473) (not b_next!110343) (not d!1174591) (not b!3965407) (not b!3965369) (not b!3965542) (not b_next!110335) (not d!1174587) (not b!3965594) (not b!3965671) (not b!3965409) (not b!3965552) (not b!3965553) (not b!3965479) (not bm!285482) (not b!3965601) (not b_next!110349) (not tb!239157) (not b!3965685) (not b!3965698) (not b!3965539) (not b!3965641) (not b!3965299) (not b!3965575) (not b_next!110341) (not b!3965560) (not b!3965345) (not b_next!110351) (not b_lambda!115935) (not b!3965413) (not b!3965708) (not d!1174579) (not b!3965362) (not b!3965587) (not b!3965669) (not b_next!110347) (not b!3965515) (not b!3965358))
(check-sat b_and!304583 b_and!304605 b_and!304615 (not b_next!110333) b_and!304603 b_and!304579 b_and!304607 (not b_next!110355) (not b_next!110353) b_and!304621 (not b_next!110343) (not b_next!110335) (not b_next!110349) (not b_next!110341) (not b_next!110351) (not b_next!110347) (not b_next!110339) (not b_next!110345) b_and!304625 b_and!304619 b_and!304617 (not b_next!110337) b_and!304623 b_and!304581)
(get-model)

(declare-fun d!1174869 () Bool)

(declare-fun lt!1388896 () Int)

(assert (=> d!1174869 (>= lt!1388896 0)))

(declare-fun e!2456303 () Int)

(assert (=> d!1174869 (= lt!1388896 e!2456303)))

(declare-fun c!688044 () Bool)

(assert (=> d!1174869 (= c!688044 ((_ is Nil!42275) lt!1388648))))

(assert (=> d!1174869 (= (size!31647 lt!1388648) lt!1388896)))

(declare-fun b!3965933 () Bool)

(assert (=> b!3965933 (= e!2456303 0)))

(declare-fun b!3965934 () Bool)

(assert (=> b!3965934 (= e!2456303 (+ 1 (size!31647 (t!330254 lt!1388648))))))

(assert (= (and d!1174869 c!688044) b!3965933))

(assert (= (and d!1174869 (not c!688044)) b!3965934))

(declare-fun m!4535921 () Bool)

(assert (=> b!3965934 m!4535921))

(assert (=> b!3965322 d!1174869))

(assert (=> b!3965322 d!1174693))

(assert (=> b!3965322 d!1174735))

(declare-fun d!1174871 () Bool)

(assert (=> d!1174871 (= (isEmpty!25297 (_1!23922 lt!1388650)) ((_ is Nil!42278) (_1!23922 lt!1388650)))))

(assert (=> b!3965339 d!1174871))

(declare-fun d!1174873 () Bool)

(declare-fun charsToInt!0 (List!42400) (_ BitVec 32))

(assert (=> d!1174873 (= (inv!16 (value!209760 (h!47698 suffixTokens!72))) (= (charsToInt!0 (text!48509 (value!209760 (h!47698 suffixTokens!72)))) (value!209751 (value!209760 (h!47698 suffixTokens!72)))))))

(declare-fun bs!587429 () Bool)

(assert (= bs!587429 d!1174873))

(declare-fun m!4535923 () Bool)

(assert (=> bs!587429 m!4535923))

(assert (=> b!3965335 d!1174873))

(declare-fun d!1174875 () Bool)

(assert (=> d!1174875 (= (list!15688 lt!1388679) (list!15689 (c!687924 lt!1388679)))))

(declare-fun bs!587430 () Bool)

(assert (= bs!587430 d!1174875))

(declare-fun m!4535925 () Bool)

(assert (=> bs!587430 m!4535925))

(assert (=> d!1174599 d!1174875))

(declare-fun d!1174877 () Bool)

(declare-fun charsToBigInt!1 (List!42400) Int)

(assert (=> d!1174877 (= (inv!17 (value!209760 (h!47698 prefixTokens!80))) (= (charsToBigInt!1 (text!48510 (value!209760 (h!47698 prefixTokens!80)))) (value!209752 (value!209760 (h!47698 prefixTokens!80)))))))

(declare-fun bs!587431 () Bool)

(assert (= bs!587431 d!1174877))

(declare-fun m!4535927 () Bool)

(assert (=> bs!587431 m!4535927))

(assert (=> b!3965587 d!1174877))

(declare-fun b!3965935 () Bool)

(declare-fun e!2456307 () Bool)

(declare-fun e!2456306 () Bool)

(assert (=> b!3965935 (= e!2456307 e!2456306)))

(declare-fun res!1605377 () Bool)

(assert (=> b!3965935 (=> (not res!1605377) (not e!2456306))))

(declare-fun lt!1388897 () Option!9056)

(assert (=> b!3965935 (= res!1605377 (matchR!5545 (regex!6636 (h!47697 rules!2768)) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388897))))))))

(declare-fun b!3965937 () Bool)

(declare-fun res!1605379 () Bool)

(assert (=> b!3965937 (=> (not res!1605379) (not e!2456306))))

(assert (=> b!3965937 (= res!1605379 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388897)))) (_2!23921 (get!13944 lt!1388897))) lt!1388630))))

(declare-fun b!3965938 () Bool)

(declare-fun res!1605378 () Bool)

(assert (=> b!3965938 (=> (not res!1605378) (not e!2456306))))

(assert (=> b!3965938 (= res!1605378 (= (rule!9622 (_1!23921 (get!13944 lt!1388897))) (h!47697 rules!2768)))))

(declare-fun b!3965939 () Bool)

(declare-fun e!2456304 () Option!9056)

(declare-fun lt!1388900 () tuple2!41578)

(assert (=> b!3965939 (= e!2456304 (Some!9055 (tuple2!41575 (Token!12411 (apply!9867 (transformation!6636 (h!47697 rules!2768)) (seqFromList!4895 (_1!23923 lt!1388900))) (h!47697 rules!2768) (size!31649 (seqFromList!4895 (_1!23923 lt!1388900))) (_1!23923 lt!1388900)) (_2!23923 lt!1388900))))))

(declare-fun lt!1388899 () Unit!60908)

(assert (=> b!3965939 (= lt!1388899 (longestMatchIsAcceptedByMatchOrIsEmpty!1274 (regex!6636 (h!47697 rules!2768)) lt!1388630))))

(declare-fun res!1605383 () Bool)

(assert (=> b!3965939 (= res!1605383 (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (h!47697 rules!2768)) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun e!2456305 () Bool)

(assert (=> b!3965939 (=> res!1605383 e!2456305)))

(assert (=> b!3965939 e!2456305))

(declare-fun lt!1388901 () Unit!60908)

(assert (=> b!3965939 (= lt!1388901 lt!1388899)))

(declare-fun lt!1388898 () Unit!60908)

(assert (=> b!3965939 (= lt!1388898 (lemmaSemiInverse!1809 (transformation!6636 (h!47697 rules!2768)) (seqFromList!4895 (_1!23923 lt!1388900))))))

(declare-fun b!3965940 () Bool)

(assert (=> b!3965940 (= e!2456304 None!9055)))

(declare-fun b!3965941 () Bool)

(declare-fun res!1605382 () Bool)

(assert (=> b!3965941 (=> (not res!1605382) (not e!2456306))))

(assert (=> b!3965941 (= res!1605382 (= (value!209760 (_1!23921 (get!13944 lt!1388897))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388897)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388897)))))))))

(declare-fun b!3965936 () Bool)

(assert (=> b!3965936 (= e!2456305 (matchR!5545 (regex!6636 (h!47697 rules!2768)) (_1!23923 (findLongestMatchInner!1301 (regex!6636 (h!47697 rules!2768)) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun d!1174879 () Bool)

(assert (=> d!1174879 e!2456307))

(declare-fun res!1605380 () Bool)

(assert (=> d!1174879 (=> res!1605380 e!2456307)))

(assert (=> d!1174879 (= res!1605380 (isEmpty!25299 lt!1388897))))

(assert (=> d!1174879 (= lt!1388897 e!2456304)))

(declare-fun c!688045 () Bool)

(assert (=> d!1174879 (= c!688045 (isEmpty!25296 (_1!23923 lt!1388900)))))

(assert (=> d!1174879 (= lt!1388900 (findLongestMatch!1214 (regex!6636 (h!47697 rules!2768)) lt!1388630))))

(assert (=> d!1174879 (ruleValid!2578 thiss!20629 (h!47697 rules!2768))))

(assert (=> d!1174879 (= (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) lt!1388630) lt!1388897)))

(declare-fun b!3965942 () Bool)

(declare-fun res!1605381 () Bool)

(assert (=> b!3965942 (=> (not res!1605381) (not e!2456306))))

(assert (=> b!3965942 (= res!1605381 (< (size!31647 (_2!23921 (get!13944 lt!1388897))) (size!31647 lt!1388630)))))

(declare-fun b!3965943 () Bool)

(assert (=> b!3965943 (= e!2456306 (= (size!31646 (_1!23921 (get!13944 lt!1388897))) (size!31647 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388897))))))))

(assert (= (and d!1174879 c!688045) b!3965940))

(assert (= (and d!1174879 (not c!688045)) b!3965939))

(assert (= (and b!3965939 (not res!1605383)) b!3965936))

(assert (= (and d!1174879 (not res!1605380)) b!3965935))

(assert (= (and b!3965935 res!1605377) b!3965937))

(assert (= (and b!3965937 res!1605379) b!3965942))

(assert (= (and b!3965942 res!1605381) b!3965938))

(assert (= (and b!3965938 res!1605378) b!3965941))

(assert (= (and b!3965941 res!1605382) b!3965943))

(declare-fun m!4535929 () Bool)

(assert (=> b!3965941 m!4535929))

(declare-fun m!4535931 () Bool)

(assert (=> b!3965941 m!4535931))

(assert (=> b!3965941 m!4535931))

(declare-fun m!4535933 () Bool)

(assert (=> b!3965941 m!4535933))

(declare-fun m!4535935 () Bool)

(assert (=> d!1174879 m!4535935))

(declare-fun m!4535937 () Bool)

(assert (=> d!1174879 m!4535937))

(declare-fun m!4535939 () Bool)

(assert (=> d!1174879 m!4535939))

(declare-fun m!4535941 () Bool)

(assert (=> d!1174879 m!4535941))

(assert (=> b!3965936 m!4535241))

(assert (=> b!3965936 m!4534981))

(assert (=> b!3965936 m!4535241))

(assert (=> b!3965936 m!4534981))

(declare-fun m!4535943 () Bool)

(assert (=> b!3965936 m!4535943))

(declare-fun m!4535945 () Bool)

(assert (=> b!3965936 m!4535945))

(assert (=> b!3965943 m!4535929))

(declare-fun m!4535947 () Bool)

(assert (=> b!3965943 m!4535947))

(assert (=> b!3965938 m!4535929))

(assert (=> b!3965942 m!4535929))

(declare-fun m!4535949 () Bool)

(assert (=> b!3965942 m!4535949))

(assert (=> b!3965942 m!4534981))

(assert (=> b!3965939 m!4534981))

(declare-fun m!4535951 () Bool)

(assert (=> b!3965939 m!4535951))

(declare-fun m!4535953 () Bool)

(assert (=> b!3965939 m!4535953))

(assert (=> b!3965939 m!4535241))

(assert (=> b!3965939 m!4535951))

(assert (=> b!3965939 m!4535951))

(declare-fun m!4535955 () Bool)

(assert (=> b!3965939 m!4535955))

(assert (=> b!3965939 m!4535241))

(assert (=> b!3965939 m!4534981))

(assert (=> b!3965939 m!4535943))

(assert (=> b!3965939 m!4535951))

(declare-fun m!4535957 () Bool)

(assert (=> b!3965939 m!4535957))

(declare-fun m!4535959 () Bool)

(assert (=> b!3965939 m!4535959))

(declare-fun m!4535961 () Bool)

(assert (=> b!3965939 m!4535961))

(assert (=> b!3965935 m!4535929))

(declare-fun m!4535963 () Bool)

(assert (=> b!3965935 m!4535963))

(assert (=> b!3965935 m!4535963))

(declare-fun m!4535965 () Bool)

(assert (=> b!3965935 m!4535965))

(assert (=> b!3965935 m!4535965))

(declare-fun m!4535967 () Bool)

(assert (=> b!3965935 m!4535967))

(assert (=> b!3965937 m!4535929))

(assert (=> b!3965937 m!4535963))

(assert (=> b!3965937 m!4535963))

(assert (=> b!3965937 m!4535965))

(assert (=> b!3965937 m!4535965))

(declare-fun m!4535969 () Bool)

(assert (=> b!3965937 m!4535969))

(assert (=> bm!285482 d!1174879))

(declare-fun d!1174881 () Bool)

(declare-fun res!1605384 () Bool)

(declare-fun e!2456308 () Bool)

(assert (=> d!1174881 (=> (not res!1605384) (not e!2456308))))

(assert (=> d!1174881 (= res!1605384 (not (isEmpty!25296 (originalCharacters!7236 (h!47698 (t!330257 prefixTokens!80))))))))

(assert (=> d!1174881 (= (inv!56502 (h!47698 (t!330257 prefixTokens!80))) e!2456308)))

(declare-fun b!3965944 () Bool)

(declare-fun res!1605385 () Bool)

(assert (=> b!3965944 (=> (not res!1605385) (not e!2456308))))

(assert (=> b!3965944 (= res!1605385 (= (originalCharacters!7236 (h!47698 (t!330257 prefixTokens!80))) (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))))

(declare-fun b!3965945 () Bool)

(assert (=> b!3965945 (= e!2456308 (= (size!31646 (h!47698 (t!330257 prefixTokens!80))) (size!31647 (originalCharacters!7236 (h!47698 (t!330257 prefixTokens!80))))))))

(assert (= (and d!1174881 res!1605384) b!3965944))

(assert (= (and b!3965944 res!1605385) b!3965945))

(declare-fun b_lambda!115955 () Bool)

(assert (=> (not b_lambda!115955) (not b!3965944)))

(declare-fun t!330357 () Bool)

(declare-fun tb!239217 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330357) tb!239217))

(declare-fun b!3965946 () Bool)

(declare-fun e!2456309 () Bool)

(declare-fun tp!1208777 () Bool)

(assert (=> b!3965946 (= e!2456309 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (value!209760 (h!47698 (t!330257 prefixTokens!80)))))) tp!1208777))))

(declare-fun result!289698 () Bool)

(assert (=> tb!239217 (= result!289698 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (value!209760 (h!47698 (t!330257 prefixTokens!80))))) e!2456309))))

(assert (= tb!239217 b!3965946))

(declare-fun m!4535971 () Bool)

(assert (=> b!3965946 m!4535971))

(declare-fun m!4535973 () Bool)

(assert (=> tb!239217 m!4535973))

(assert (=> b!3965944 t!330357))

(declare-fun b_and!304639 () Bool)

(assert (= b_and!304607 (and (=> t!330357 result!289698) b_and!304639)))

(declare-fun t!330359 () Bool)

(declare-fun tb!239219 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330359) tb!239219))

(declare-fun result!289700 () Bool)

(assert (= result!289700 result!289698))

(assert (=> b!3965944 t!330359))

(declare-fun b_and!304641 () Bool)

(assert (= b_and!304617 (and (=> t!330359 result!289700) b_and!304641)))

(declare-fun tb!239221 () Bool)

(declare-fun t!330361 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330361) tb!239221))

(declare-fun result!289702 () Bool)

(assert (= result!289702 result!289698))

(assert (=> b!3965944 t!330361))

(declare-fun b_and!304643 () Bool)

(assert (= b_and!304621 (and (=> t!330361 result!289702) b_and!304643)))

(declare-fun tb!239223 () Bool)

(declare-fun t!330363 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330363) tb!239223))

(declare-fun result!289704 () Bool)

(assert (= result!289704 result!289698))

(assert (=> b!3965944 t!330363))

(declare-fun b_and!304645 () Bool)

(assert (= b_and!304605 (and (=> t!330363 result!289704) b_and!304645)))

(declare-fun t!330365 () Bool)

(declare-fun tb!239225 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330365) tb!239225))

(declare-fun result!289706 () Bool)

(assert (= result!289706 result!289698))

(assert (=> b!3965944 t!330365))

(declare-fun b_and!304647 () Bool)

(assert (= b_and!304603 (and (=> t!330365 result!289706) b_and!304647)))

(declare-fun tb!239227 () Bool)

(declare-fun t!330367 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330367) tb!239227))

(declare-fun result!289708 () Bool)

(assert (= result!289708 result!289698))

(assert (=> b!3965944 t!330367))

(declare-fun b_and!304649 () Bool)

(assert (= b_and!304625 (and (=> t!330367 result!289708) b_and!304649)))

(declare-fun m!4535975 () Bool)

(assert (=> d!1174881 m!4535975))

(declare-fun m!4535977 () Bool)

(assert (=> b!3965944 m!4535977))

(assert (=> b!3965944 m!4535977))

(declare-fun m!4535979 () Bool)

(assert (=> b!3965944 m!4535979))

(declare-fun m!4535981 () Bool)

(assert (=> b!3965945 m!4535981))

(assert (=> b!3965698 d!1174881))

(declare-fun b!3965947 () Bool)

(declare-fun e!2456312 () Bool)

(declare-fun e!2456310 () Bool)

(assert (=> b!3965947 (= e!2456312 e!2456310)))

(declare-fun res!1605388 () Bool)

(assert (=> b!3965947 (=> (not res!1605388) (not e!2456310))))

(assert (=> b!3965947 (= res!1605388 (not ((_ is Nil!42275) (tail!6182 lt!1388595))))))

(declare-fun b!3965949 () Bool)

(assert (=> b!3965949 (= e!2456310 (isPrefix!3725 (tail!6182 (tail!6182 lt!1388609)) (tail!6182 (tail!6182 lt!1388595))))))

(declare-fun d!1174883 () Bool)

(declare-fun e!2456311 () Bool)

(assert (=> d!1174883 e!2456311))

(declare-fun res!1605389 () Bool)

(assert (=> d!1174883 (=> res!1605389 e!2456311)))

(declare-fun lt!1388902 () Bool)

(assert (=> d!1174883 (= res!1605389 (not lt!1388902))))

(assert (=> d!1174883 (= lt!1388902 e!2456312)))

(declare-fun res!1605387 () Bool)

(assert (=> d!1174883 (=> res!1605387 e!2456312)))

(assert (=> d!1174883 (= res!1605387 ((_ is Nil!42275) (tail!6182 lt!1388609)))))

(assert (=> d!1174883 (= (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 lt!1388595)) lt!1388902)))

(declare-fun b!3965950 () Bool)

(assert (=> b!3965950 (= e!2456311 (>= (size!31647 (tail!6182 lt!1388595)) (size!31647 (tail!6182 lt!1388609))))))

(declare-fun b!3965948 () Bool)

(declare-fun res!1605386 () Bool)

(assert (=> b!3965948 (=> (not res!1605386) (not e!2456310))))

(assert (=> b!3965948 (= res!1605386 (= (head!8450 (tail!6182 lt!1388609)) (head!8450 (tail!6182 lt!1388595))))))

(assert (= (and d!1174883 (not res!1605387)) b!3965947))

(assert (= (and b!3965947 res!1605388) b!3965948))

(assert (= (and b!3965948 res!1605386) b!3965949))

(assert (= (and d!1174883 (not res!1605389)) b!3965950))

(assert (=> b!3965949 m!4535151))

(declare-fun m!4535983 () Bool)

(assert (=> b!3965949 m!4535983))

(assert (=> b!3965949 m!4535153))

(declare-fun m!4535985 () Bool)

(assert (=> b!3965949 m!4535985))

(assert (=> b!3965949 m!4535983))

(assert (=> b!3965949 m!4535985))

(declare-fun m!4535987 () Bool)

(assert (=> b!3965949 m!4535987))

(assert (=> b!3965950 m!4535153))

(declare-fun m!4535989 () Bool)

(assert (=> b!3965950 m!4535989))

(assert (=> b!3965950 m!4535151))

(declare-fun m!4535991 () Bool)

(assert (=> b!3965950 m!4535991))

(assert (=> b!3965948 m!4535151))

(declare-fun m!4535993 () Bool)

(assert (=> b!3965948 m!4535993))

(assert (=> b!3965948 m!4535153))

(declare-fun m!4535995 () Bool)

(assert (=> b!3965948 m!4535995))

(assert (=> b!3965395 d!1174883))

(declare-fun d!1174885 () Bool)

(assert (=> d!1174885 (= (tail!6182 lt!1388609) (t!330254 lt!1388609))))

(assert (=> b!3965395 d!1174885))

(declare-fun d!1174887 () Bool)

(assert (=> d!1174887 (= (tail!6182 lt!1388595) (t!330254 lt!1388595))))

(assert (=> b!3965395 d!1174887))

(declare-fun b!3965960 () Bool)

(declare-fun e!2456317 () List!42399)

(declare-fun e!2456318 () List!42399)

(assert (=> b!3965960 (= e!2456317 e!2456318)))

(declare-fun c!688051 () Bool)

(assert (=> b!3965960 (= c!688051 ((_ is Leaf!19872) (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun d!1174889 () Bool)

(declare-fun c!688050 () Bool)

(assert (=> d!1174889 (= c!688050 ((_ is Empty!12847) (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1174889 (= (list!15689 (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603))))) e!2456317)))

(declare-fun b!3965959 () Bool)

(assert (=> b!3965959 (= e!2456317 Nil!42275)))

(declare-fun b!3965962 () Bool)

(assert (=> b!3965962 (= e!2456318 (++!11029 (list!15689 (left!32047 (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603)))))) (list!15689 (right!32377 (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603))))))))))

(declare-fun b!3965961 () Bool)

(declare-fun list!15691 (IArray!25699) List!42399)

(assert (=> b!3965961 (= e!2456318 (list!15691 (xs!16153 (c!687924 (charsOf!4454 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (= (and d!1174889 c!688050) b!3965959))

(assert (= (and d!1174889 (not c!688050)) b!3965960))

(assert (= (and b!3965960 c!688051) b!3965961))

(assert (= (and b!3965960 (not c!688051)) b!3965962))

(declare-fun m!4535997 () Bool)

(assert (=> b!3965962 m!4535997))

(declare-fun m!4535999 () Bool)

(assert (=> b!3965962 m!4535999))

(assert (=> b!3965962 m!4535997))

(assert (=> b!3965962 m!4535999))

(declare-fun m!4536001 () Bool)

(assert (=> b!3965962 m!4536001))

(declare-fun m!4536003 () Bool)

(assert (=> b!3965961 m!4536003))

(assert (=> d!1174597 d!1174889))

(declare-fun d!1174891 () Bool)

(declare-fun lt!1388903 () Int)

(assert (=> d!1174891 (>= lt!1388903 0)))

(declare-fun e!2456319 () Int)

(assert (=> d!1174891 (= lt!1388903 e!2456319)))

(declare-fun c!688052 () Bool)

(assert (=> d!1174891 (= c!688052 ((_ is Nil!42275) lt!1388675))))

(assert (=> d!1174891 (= (size!31647 lt!1388675) lt!1388903)))

(declare-fun b!3965963 () Bool)

(assert (=> b!3965963 (= e!2456319 0)))

(declare-fun b!3965964 () Bool)

(assert (=> b!3965964 (= e!2456319 (+ 1 (size!31647 (t!330254 lt!1388675))))))

(assert (= (and d!1174891 c!688052) b!3965963))

(assert (= (and d!1174891 (not c!688052)) b!3965964))

(declare-fun m!4536005 () Bool)

(assert (=> b!3965964 m!4536005))

(assert (=> b!3965388 d!1174891))

(assert (=> b!3965388 d!1174605))

(assert (=> b!3965388 d!1174737))

(assert (=> d!1174589 d!1174733))

(declare-fun d!1174893 () Bool)

(assert (=> d!1174893 true))

(declare-fun lt!1388928 () Bool)

(assert (=> d!1174893 (= lt!1388928 (rulesValidInductive!2405 thiss!20629 rules!2768))))

(declare-fun lambda!126804 () Int)

(declare-fun forall!8328 (List!42401 Int) Bool)

(assert (=> d!1174893 (= lt!1388928 (forall!8328 rules!2768 lambda!126804))))

(assert (=> d!1174893 (= (rulesValid!2592 thiss!20629 rules!2768) lt!1388928)))

(declare-fun bs!587435 () Bool)

(assert (= bs!587435 d!1174893))

(assert (=> bs!587435 m!4535581))

(declare-fun m!4536109 () Bool)

(assert (=> bs!587435 m!4536109))

(assert (=> d!1174723 d!1174893))

(declare-fun d!1174945 () Bool)

(assert (=> d!1174945 (= (isDefined!7006 lt!1388815) (not (isEmpty!25299 lt!1388815)))))

(declare-fun bs!587436 () Bool)

(assert (= bs!587436 d!1174945))

(assert (=> bs!587436 m!4535575))

(assert (=> b!3965643 d!1174945))

(assert (=> d!1174675 d!1174565))

(assert (=> d!1174675 d!1174677))

(declare-fun d!1174947 () Bool)

(assert (=> d!1174947 (not (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)) (tuple2!41577 (++!11030 lt!1388620 suffixTokens!72) suffixResult!91)))))

(assert (=> d!1174947 true))

(declare-fun _$43!94 () Unit!60908)

(assert (=> d!1174947 (= (choose!23727 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91 lt!1388620) _$43!94)))

(declare-fun bs!587437 () Bool)

(assert (= bs!587437 d!1174947))

(assert (=> bs!587437 m!4534917))

(assert (=> bs!587437 m!4534943))

(assert (=> d!1174675 d!1174947))

(assert (=> d!1174675 d!1174683))

(declare-fun d!1174949 () Bool)

(declare-fun c!688083 () Bool)

(assert (=> d!1174949 (= c!688083 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun e!2456382 () Bool)

(assert (=> d!1174949 (= (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))) e!2456382)))

(declare-fun b!3966073 () Bool)

(declare-fun inv!56508 (Conc!12847) Bool)

(assert (=> b!3966073 (= e!2456382 (inv!56508 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun b!3966074 () Bool)

(declare-fun e!2456383 () Bool)

(assert (=> b!3966074 (= e!2456382 e!2456383)))

(declare-fun res!1605435 () Bool)

(assert (=> b!3966074 (= res!1605435 (not ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))))))

(assert (=> b!3966074 (=> res!1605435 e!2456383)))

(declare-fun b!3966075 () Bool)

(declare-fun inv!56509 (Conc!12847) Bool)

(assert (=> b!3966075 (= e!2456383 (inv!56509 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (= (and d!1174949 c!688083) b!3966073))

(assert (= (and d!1174949 (not c!688083)) b!3966074))

(assert (= (and b!3966074 (not res!1605435)) b!3966075))

(declare-fun m!4536111 () Bool)

(assert (=> b!3966073 m!4536111))

(declare-fun m!4536113 () Bool)

(assert (=> b!3966075 m!4536113))

(assert (=> b!3965390 d!1174949))

(declare-fun d!1174951 () Bool)

(declare-fun lt!1388931 () Int)

(assert (=> d!1174951 (>= lt!1388931 0)))

(declare-fun e!2456386 () Int)

(assert (=> d!1174951 (= lt!1388931 e!2456386)))

(declare-fun c!688086 () Bool)

(assert (=> d!1174951 (= c!688086 ((_ is Nil!42278) (_1!23922 lt!1388670)))))

(assert (=> d!1174951 (= (size!31648 (_1!23922 lt!1388670)) lt!1388931)))

(declare-fun b!3966080 () Bool)

(assert (=> b!3966080 (= e!2456386 0)))

(declare-fun b!3966081 () Bool)

(assert (=> b!3966081 (= e!2456386 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388670)))))))

(assert (= (and d!1174951 c!688086) b!3966080))

(assert (= (and d!1174951 (not c!688086)) b!3966081))

(declare-fun m!4536115 () Bool)

(assert (=> b!3966081 m!4536115))

(assert (=> d!1174587 d!1174951))

(declare-fun b!3966082 () Bool)

(declare-fun res!1605441 () Bool)

(declare-fun e!2456387 () Bool)

(assert (=> b!3966082 (=> (not res!1605441) (not e!2456387))))

(declare-fun lt!1388933 () Option!9056)

(assert (=> b!3966082 (= res!1605441 (< (size!31647 (_2!23921 (get!13944 lt!1388933))) (size!31647 (_2!23921 (v!39401 lt!1388603)))))))

(declare-fun b!3966083 () Bool)

(declare-fun res!1605442 () Bool)

(assert (=> b!3966083 (=> (not res!1605442) (not e!2456387))))

(assert (=> b!3966083 (= res!1605442 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388933)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388933))))))))

(declare-fun b!3966084 () Bool)

(declare-fun e!2456388 () Option!9056)

(declare-fun lt!1388935 () Option!9056)

(declare-fun lt!1388934 () Option!9056)

(assert (=> b!3966084 (= e!2456388 (ite (and ((_ is None!9055) lt!1388935) ((_ is None!9055) lt!1388934)) None!9055 (ite ((_ is None!9055) lt!1388934) lt!1388935 (ite ((_ is None!9055) lt!1388935) lt!1388934 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1388935))) (size!31646 (_1!23921 (v!39401 lt!1388934)))) lt!1388935 lt!1388934)))))))

(declare-fun call!285494 () Option!9056)

(assert (=> b!3966084 (= lt!1388935 call!285494)))

(assert (=> b!3966084 (= lt!1388934 (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) (_2!23921 (v!39401 lt!1388603))))))

(declare-fun d!1174953 () Bool)

(declare-fun e!2456389 () Bool)

(assert (=> d!1174953 e!2456389))

(declare-fun res!1605436 () Bool)

(assert (=> d!1174953 (=> res!1605436 e!2456389)))

(assert (=> d!1174953 (= res!1605436 (isEmpty!25299 lt!1388933))))

(assert (=> d!1174953 (= lt!1388933 e!2456388)))

(declare-fun c!688087 () Bool)

(assert (=> d!1174953 (= c!688087 (and ((_ is Cons!42277) rules!2768) ((_ is Nil!42277) (t!330256 rules!2768))))))

(declare-fun lt!1388932 () Unit!60908)

(declare-fun lt!1388936 () Unit!60908)

(assert (=> d!1174953 (= lt!1388932 lt!1388936)))

(assert (=> d!1174953 (isPrefix!3725 (_2!23921 (v!39401 lt!1388603)) (_2!23921 (v!39401 lt!1388603)))))

(assert (=> d!1174953 (= lt!1388936 (lemmaIsPrefixRefl!2347 (_2!23921 (v!39401 lt!1388603)) (_2!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174953 (rulesValidInductive!2405 thiss!20629 rules!2768)))

(assert (=> d!1174953 (= (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603))) lt!1388933)))

(declare-fun b!3966085 () Bool)

(assert (=> b!3966085 (= e!2456387 (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1388933)))))))

(declare-fun b!3966086 () Bool)

(declare-fun res!1605438 () Bool)

(assert (=> b!3966086 (=> (not res!1605438) (not e!2456387))))

(assert (=> b!3966086 (= res!1605438 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388933)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388933)))))))

(declare-fun bm!285489 () Bool)

(assert (=> bm!285489 (= call!285494 (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) (_2!23921 (v!39401 lt!1388603))))))

(declare-fun b!3966087 () Bool)

(declare-fun res!1605439 () Bool)

(assert (=> b!3966087 (=> (not res!1605439) (not e!2456387))))

(assert (=> b!3966087 (= res!1605439 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388933)))) (_2!23921 (get!13944 lt!1388933))) (_2!23921 (v!39401 lt!1388603))))))

(declare-fun b!3966088 () Bool)

(declare-fun res!1605437 () Bool)

(assert (=> b!3966088 (=> (not res!1605437) (not e!2456387))))

(assert (=> b!3966088 (= res!1605437 (= (value!209760 (_1!23921 (get!13944 lt!1388933))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388933)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388933)))))))))

(declare-fun b!3966089 () Bool)

(assert (=> b!3966089 (= e!2456388 call!285494)))

(declare-fun b!3966090 () Bool)

(assert (=> b!3966090 (= e!2456389 e!2456387)))

(declare-fun res!1605440 () Bool)

(assert (=> b!3966090 (=> (not res!1605440) (not e!2456387))))

(assert (=> b!3966090 (= res!1605440 (isDefined!7006 lt!1388933))))

(assert (= (and d!1174953 c!688087) b!3966089))

(assert (= (and d!1174953 (not c!688087)) b!3966084))

(assert (= (or b!3966089 b!3966084) bm!285489))

(assert (= (and d!1174953 (not res!1605436)) b!3966090))

(assert (= (and b!3966090 res!1605440) b!3966086))

(assert (= (and b!3966086 res!1605438) b!3966082))

(assert (= (and b!3966082 res!1605441) b!3966087))

(assert (= (and b!3966087 res!1605439) b!3966088))

(assert (= (and b!3966088 res!1605437) b!3966083))

(assert (= (and b!3966083 res!1605442) b!3966085))

(declare-fun m!4536117 () Bool)

(assert (=> b!3966086 m!4536117))

(declare-fun m!4536119 () Bool)

(assert (=> b!3966086 m!4536119))

(assert (=> b!3966086 m!4536119))

(declare-fun m!4536121 () Bool)

(assert (=> b!3966086 m!4536121))

(assert (=> b!3966082 m!4536117))

(declare-fun m!4536123 () Bool)

(assert (=> b!3966082 m!4536123))

(assert (=> b!3966082 m!4534865))

(declare-fun m!4536125 () Bool)

(assert (=> b!3966084 m!4536125))

(declare-fun m!4536127 () Bool)

(assert (=> b!3966090 m!4536127))

(assert (=> b!3966087 m!4536117))

(assert (=> b!3966087 m!4536119))

(assert (=> b!3966087 m!4536119))

(assert (=> b!3966087 m!4536121))

(assert (=> b!3966087 m!4536121))

(declare-fun m!4536129 () Bool)

(assert (=> b!3966087 m!4536129))

(assert (=> b!3966085 m!4536117))

(declare-fun m!4536131 () Bool)

(assert (=> b!3966085 m!4536131))

(assert (=> b!3966083 m!4536117))

(assert (=> b!3966083 m!4536119))

(assert (=> b!3966083 m!4536119))

(assert (=> b!3966083 m!4536121))

(assert (=> b!3966083 m!4536121))

(declare-fun m!4536133 () Bool)

(assert (=> b!3966083 m!4536133))

(assert (=> b!3966088 m!4536117))

(declare-fun m!4536135 () Bool)

(assert (=> b!3966088 m!4536135))

(assert (=> b!3966088 m!4536135))

(declare-fun m!4536137 () Bool)

(assert (=> b!3966088 m!4536137))

(declare-fun m!4536139 () Bool)

(assert (=> bm!285489 m!4536139))

(declare-fun m!4536141 () Bool)

(assert (=> d!1174953 m!4536141))

(declare-fun m!4536143 () Bool)

(assert (=> d!1174953 m!4536143))

(declare-fun m!4536145 () Bool)

(assert (=> d!1174953 m!4536145))

(assert (=> d!1174953 m!4535581))

(assert (=> d!1174587 d!1174953))

(declare-fun d!1174955 () Bool)

(declare-fun lt!1388937 () Int)

(assert (=> d!1174955 (>= lt!1388937 0)))

(declare-fun e!2456390 () Int)

(assert (=> d!1174955 (= lt!1388937 e!2456390)))

(declare-fun c!688088 () Bool)

(assert (=> d!1174955 (= c!688088 ((_ is Nil!42275) (_2!23921 (get!13944 lt!1388815))))))

(assert (=> d!1174955 (= (size!31647 (_2!23921 (get!13944 lt!1388815))) lt!1388937)))

(declare-fun b!3966091 () Bool)

(assert (=> b!3966091 (= e!2456390 0)))

(declare-fun b!3966092 () Bool)

(assert (=> b!3966092 (= e!2456390 (+ 1 (size!31647 (t!330254 (_2!23921 (get!13944 lt!1388815))))))))

(assert (= (and d!1174955 c!688088) b!3966091))

(assert (= (and d!1174955 (not c!688088)) b!3966092))

(declare-fun m!4536147 () Bool)

(assert (=> b!3966092 m!4536147))

(assert (=> b!3965635 d!1174955))

(declare-fun d!1174957 () Bool)

(assert (=> d!1174957 (= (get!13944 lt!1388815) (v!39401 lt!1388815))))

(assert (=> b!3965635 d!1174957))

(assert (=> b!3965635 d!1174637))

(declare-fun d!1174959 () Bool)

(declare-fun lt!1388938 () Int)

(assert (=> d!1174959 (>= lt!1388938 0)))

(declare-fun e!2456391 () Int)

(assert (=> d!1174959 (= lt!1388938 e!2456391)))

(declare-fun c!688089 () Bool)

(assert (=> d!1174959 (= c!688089 ((_ is Nil!42275) lt!1388785))))

(assert (=> d!1174959 (= (size!31647 lt!1388785) lt!1388938)))

(declare-fun b!3966093 () Bool)

(assert (=> b!3966093 (= e!2456391 0)))

(declare-fun b!3966094 () Bool)

(assert (=> b!3966094 (= e!2456391 (+ 1 (size!31647 (t!330254 lt!1388785))))))

(assert (= (and d!1174959 c!688089) b!3966093))

(assert (= (and d!1174959 (not c!688089)) b!3966094))

(declare-fun m!4536149 () Bool)

(assert (=> b!3966094 m!4536149))

(assert (=> b!3965597 d!1174959))

(assert (=> b!3965597 d!1174605))

(declare-fun d!1174961 () Bool)

(declare-fun lt!1388939 () Int)

(assert (=> d!1174961 (>= lt!1388939 0)))

(declare-fun e!2456392 () Int)

(assert (=> d!1174961 (= lt!1388939 e!2456392)))

(declare-fun c!688090 () Bool)

(assert (=> d!1174961 (= c!688090 ((_ is Nil!42275) lt!1388612))))

(assert (=> d!1174961 (= (size!31647 lt!1388612) lt!1388939)))

(declare-fun b!3966095 () Bool)

(assert (=> b!3966095 (= e!2456392 0)))

(declare-fun b!3966096 () Bool)

(assert (=> b!3966096 (= e!2456392 (+ 1 (size!31647 (t!330254 lt!1388612))))))

(assert (= (and d!1174961 c!688090) b!3966095))

(assert (= (and d!1174961 (not c!688090)) b!3966096))

(declare-fun m!4536151 () Bool)

(assert (=> b!3966096 m!4536151))

(assert (=> b!3965597 d!1174961))

(assert (=> d!1174607 d!1174611))

(declare-fun d!1174963 () Bool)

(assert (=> d!1174963 (ruleValid!2578 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))

(assert (=> d!1174963 true))

(declare-fun _$65!1413 () Unit!60908)

(assert (=> d!1174963 (= (choose!23722 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) rules!2768) _$65!1413)))

(declare-fun bs!587438 () Bool)

(assert (= bs!587438 d!1174963))

(assert (=> bs!587438 m!4534899))

(assert (=> d!1174607 d!1174963))

(declare-fun d!1174965 () Bool)

(declare-fun lt!1388942 () Bool)

(declare-fun content!6424 (List!42401) (InoxSet Rule!13072))

(assert (=> d!1174965 (= lt!1388942 (select (content!6424 rules!2768) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun e!2456397 () Bool)

(assert (=> d!1174965 (= lt!1388942 e!2456397)))

(declare-fun res!1605448 () Bool)

(assert (=> d!1174965 (=> (not res!1605448) (not e!2456397))))

(assert (=> d!1174965 (= res!1605448 ((_ is Cons!42277) rules!2768))))

(assert (=> d!1174965 (= (contains!8435 rules!2768 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388942)))

(declare-fun b!3966101 () Bool)

(declare-fun e!2456398 () Bool)

(assert (=> b!3966101 (= e!2456397 e!2456398)))

(declare-fun res!1605447 () Bool)

(assert (=> b!3966101 (=> res!1605447 e!2456398)))

(assert (=> b!3966101 (= res!1605447 (= (h!47697 rules!2768) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(declare-fun b!3966102 () Bool)

(assert (=> b!3966102 (= e!2456398 (contains!8435 (t!330256 rules!2768) (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (= (and d!1174965 res!1605448) b!3966101))

(assert (= (and b!3966101 (not res!1605447)) b!3966102))

(declare-fun m!4536153 () Bool)

(assert (=> d!1174965 m!4536153))

(declare-fun m!4536155 () Bool)

(assert (=> d!1174965 m!4536155))

(declare-fun m!4536157 () Bool)

(assert (=> b!3966102 m!4536157))

(assert (=> d!1174607 d!1174965))

(declare-fun d!1174967 () Bool)

(assert (=> d!1174967 (= (get!13944 lt!1388712) (v!39401 lt!1388712))))

(assert (=> b!3965476 d!1174967))

(declare-fun d!1174969 () Bool)

(assert (=> d!1174969 (= (isEmpty!25297 (_1!23922 lt!1388641)) ((_ is Nil!42278) (_1!23922 lt!1388641)))))

(assert (=> b!3965295 d!1174969))

(declare-fun d!1174971 () Bool)

(declare-fun isBalanced!3652 (Conc!12847) Bool)

(assert (=> d!1174971 (= (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))) (isBalanced!3652 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun bs!587439 () Bool)

(assert (= bs!587439 d!1174971))

(declare-fun m!4536159 () Bool)

(assert (=> bs!587439 m!4536159))

(assert (=> tb!239127 d!1174971))

(declare-fun d!1174973 () Bool)

(declare-fun lt!1388943 () Int)

(assert (=> d!1174973 (>= lt!1388943 0)))

(declare-fun e!2456399 () Int)

(assert (=> d!1174973 (= lt!1388943 e!2456399)))

(declare-fun c!688091 () Bool)

(assert (=> d!1174973 (= c!688091 ((_ is Nil!42275) (_2!23922 lt!1388641)))))

(assert (=> d!1174973 (= (size!31647 (_2!23922 lt!1388641)) lt!1388943)))

(declare-fun b!3966103 () Bool)

(assert (=> b!3966103 (= e!2456399 0)))

(declare-fun b!3966104 () Bool)

(assert (=> b!3966104 (= e!2456399 (+ 1 (size!31647 (t!330254 (_2!23922 lt!1388641)))))))

(assert (= (and d!1174973 c!688091) b!3966103))

(assert (= (and d!1174973 (not c!688091)) b!3966104))

(declare-fun m!4536161 () Bool)

(assert (=> b!3966104 m!4536161))

(assert (=> b!3965299 d!1174973))

(assert (=> b!3965299 d!1174637))

(declare-fun b!3966107 () Bool)

(declare-fun res!1605449 () Bool)

(declare-fun e!2456401 () Bool)

(assert (=> b!3966107 (=> (not res!1605449) (not e!2456401))))

(declare-fun lt!1388944 () List!42399)

(assert (=> b!3966107 (= res!1605449 (= (size!31647 lt!1388944) (+ (size!31647 (t!330254 lt!1388609)) (size!31647 (_2!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966108 () Bool)

(assert (=> b!3966108 (= e!2456401 (or (not (= (_2!23921 (v!39401 lt!1388603)) Nil!42275)) (= lt!1388944 (t!330254 lt!1388609))))))

(declare-fun b!3966105 () Bool)

(declare-fun e!2456400 () List!42399)

(assert (=> b!3966105 (= e!2456400 (_2!23921 (v!39401 lt!1388603)))))

(declare-fun d!1174975 () Bool)

(assert (=> d!1174975 e!2456401))

(declare-fun res!1605450 () Bool)

(assert (=> d!1174975 (=> (not res!1605450) (not e!2456401))))

(assert (=> d!1174975 (= res!1605450 (= (content!6421 lt!1388944) ((_ map or) (content!6421 (t!330254 lt!1388609)) (content!6421 (_2!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1174975 (= lt!1388944 e!2456400)))

(declare-fun c!688092 () Bool)

(assert (=> d!1174975 (= c!688092 ((_ is Nil!42275) (t!330254 lt!1388609)))))

(assert (=> d!1174975 (= (++!11029 (t!330254 lt!1388609) (_2!23921 (v!39401 lt!1388603))) lt!1388944)))

(declare-fun b!3966106 () Bool)

(assert (=> b!3966106 (= e!2456400 (Cons!42275 (h!47695 (t!330254 lt!1388609)) (++!11029 (t!330254 (t!330254 lt!1388609)) (_2!23921 (v!39401 lt!1388603)))))))

(assert (= (and d!1174975 c!688092) b!3966105))

(assert (= (and d!1174975 (not c!688092)) b!3966106))

(assert (= (and d!1174975 res!1605450) b!3966107))

(assert (= (and b!3966107 res!1605449) b!3966108))

(declare-fun m!4536163 () Bool)

(assert (=> b!3966107 m!4536163))

(assert (=> b!3966107 m!4535163))

(assert (=> b!3966107 m!4534865))

(declare-fun m!4536165 () Bool)

(assert (=> d!1174975 m!4536165))

(declare-fun m!4536167 () Bool)

(assert (=> d!1174975 m!4536167))

(assert (=> d!1174975 m!4535129))

(declare-fun m!4536169 () Bool)

(assert (=> b!3966106 m!4536169))

(assert (=> b!3965387 d!1174975))

(declare-fun b!3966109 () Bool)

(declare-fun e!2456404 () Bool)

(declare-fun e!2456402 () Bool)

(assert (=> b!3966109 (= e!2456404 e!2456402)))

(declare-fun res!1605453 () Bool)

(assert (=> b!3966109 (=> (not res!1605453) (not e!2456402))))

(assert (=> b!3966109 (= res!1605453 (not ((_ is Nil!42275) (tail!6182 prefix!426))))))

(declare-fun b!3966111 () Bool)

(assert (=> b!3966111 (= e!2456402 (isPrefix!3725 (tail!6182 (tail!6182 lt!1388609)) (tail!6182 (tail!6182 prefix!426))))))

(declare-fun d!1174977 () Bool)

(declare-fun e!2456403 () Bool)

(assert (=> d!1174977 e!2456403))

(declare-fun res!1605454 () Bool)

(assert (=> d!1174977 (=> res!1605454 e!2456403)))

(declare-fun lt!1388945 () Bool)

(assert (=> d!1174977 (= res!1605454 (not lt!1388945))))

(assert (=> d!1174977 (= lt!1388945 e!2456404)))

(declare-fun res!1605452 () Bool)

(assert (=> d!1174977 (=> res!1605452 e!2456404)))

(assert (=> d!1174977 (= res!1605452 ((_ is Nil!42275) (tail!6182 lt!1388609)))))

(assert (=> d!1174977 (= (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 prefix!426)) lt!1388945)))

(declare-fun b!3966112 () Bool)

(assert (=> b!3966112 (= e!2456403 (>= (size!31647 (tail!6182 prefix!426)) (size!31647 (tail!6182 lt!1388609))))))

(declare-fun b!3966110 () Bool)

(declare-fun res!1605451 () Bool)

(assert (=> b!3966110 (=> (not res!1605451) (not e!2456402))))

(assert (=> b!3966110 (= res!1605451 (= (head!8450 (tail!6182 lt!1388609)) (head!8450 (tail!6182 prefix!426))))))

(assert (= (and d!1174977 (not res!1605452)) b!3966109))

(assert (= (and b!3966109 res!1605453) b!3966110))

(assert (= (and b!3966110 res!1605451) b!3966111))

(assert (= (and d!1174977 (not res!1605454)) b!3966112))

(assert (=> b!3966111 m!4535151))

(assert (=> b!3966111 m!4535983))

(assert (=> b!3966111 m!4535385))

(declare-fun m!4536171 () Bool)

(assert (=> b!3966111 m!4536171))

(assert (=> b!3966111 m!4535983))

(assert (=> b!3966111 m!4536171))

(declare-fun m!4536173 () Bool)

(assert (=> b!3966111 m!4536173))

(assert (=> b!3966112 m!4535385))

(declare-fun m!4536175 () Bool)

(assert (=> b!3966112 m!4536175))

(assert (=> b!3966112 m!4535151))

(assert (=> b!3966112 m!4535991))

(assert (=> b!3966110 m!4535151))

(assert (=> b!3966110 m!4535993))

(assert (=> b!3966110 m!4535385))

(declare-fun m!4536177 () Bool)

(assert (=> b!3966110 m!4536177))

(assert (=> b!3965543 d!1174977))

(assert (=> b!3965543 d!1174885))

(declare-fun d!1174979 () Bool)

(assert (=> d!1174979 (= (tail!6182 prefix!426) (t!330254 prefix!426))))

(assert (=> b!3965543 d!1174979))

(declare-fun b!3966113 () Bool)

(declare-fun e!2456406 () List!42402)

(assert (=> b!3966113 (= e!2456406 lt!1388616)))

(declare-fun b!3966114 () Bool)

(assert (=> b!3966114 (= e!2456406 (Cons!42278 (h!47698 (t!330257 lt!1388619)) (++!11030 (t!330257 (t!330257 lt!1388619)) lt!1388616)))))

(declare-fun b!3966115 () Bool)

(declare-fun res!1605456 () Bool)

(declare-fun e!2456405 () Bool)

(assert (=> b!3966115 (=> (not res!1605456) (not e!2456405))))

(declare-fun lt!1388946 () List!42402)

(assert (=> b!3966115 (= res!1605456 (= (size!31648 lt!1388946) (+ (size!31648 (t!330257 lt!1388619)) (size!31648 lt!1388616))))))

(declare-fun b!3966116 () Bool)

(assert (=> b!3966116 (= e!2456405 (or (not (= lt!1388616 Nil!42278)) (= lt!1388946 (t!330257 lt!1388619))))))

(declare-fun d!1174981 () Bool)

(assert (=> d!1174981 e!2456405))

(declare-fun res!1605455 () Bool)

(assert (=> d!1174981 (=> (not res!1605455) (not e!2456405))))

(assert (=> d!1174981 (= res!1605455 (= (content!6420 lt!1388946) ((_ map or) (content!6420 (t!330257 lt!1388619)) (content!6420 lt!1388616))))))

(assert (=> d!1174981 (= lt!1388946 e!2456406)))

(declare-fun c!688093 () Bool)

(assert (=> d!1174981 (= c!688093 ((_ is Nil!42278) (t!330257 lt!1388619)))))

(assert (=> d!1174981 (= (++!11030 (t!330257 lt!1388619) lt!1388616) lt!1388946)))

(assert (= (and d!1174981 c!688093) b!3966113))

(assert (= (and d!1174981 (not c!688093)) b!3966114))

(assert (= (and d!1174981 res!1605455) b!3966115))

(assert (= (and b!3966115 res!1605456) b!3966116))

(declare-fun m!4536179 () Bool)

(assert (=> b!3966114 m!4536179))

(declare-fun m!4536181 () Bool)

(assert (=> b!3966115 m!4536181))

(declare-fun m!4536183 () Bool)

(assert (=> b!3966115 m!4536183))

(assert (=> b!3966115 m!4535613))

(declare-fun m!4536185 () Bool)

(assert (=> d!1174981 m!4536185))

(declare-fun m!4536187 () Bool)

(assert (=> d!1174981 m!4536187))

(assert (=> d!1174981 m!4535617))

(assert (=> b!3965656 d!1174981))

(declare-fun d!1174983 () Bool)

(assert (=> d!1174983 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))) (list!15689 (c!687924 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun bs!587440 () Bool)

(assert (= bs!587440 d!1174983))

(declare-fun m!4536189 () Bool)

(assert (=> bs!587440 m!4536189))

(assert (=> b!3965639 d!1174983))

(declare-fun d!1174985 () Bool)

(declare-fun lt!1388947 () BalanceConc!25288)

(assert (=> d!1174985 (= (list!15688 lt!1388947) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815))))))

(assert (=> d!1174985 (= lt!1388947 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))) (value!209760 (_1!23921 (get!13944 lt!1388815)))))))

(assert (=> d!1174985 (= (charsOf!4454 (_1!23921 (get!13944 lt!1388815))) lt!1388947)))

(declare-fun b_lambda!115959 () Bool)

(assert (=> (not b_lambda!115959) (not d!1174985)))

(declare-fun tb!239241 () Bool)

(declare-fun t!330382 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330382) tb!239241))

(declare-fun b!3966117 () Bool)

(declare-fun e!2456407 () Bool)

(declare-fun tp!1208779 () Bool)

(assert (=> b!3966117 (= e!2456407 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))) (value!209760 (_1!23921 (get!13944 lt!1388815)))))) tp!1208779))))

(declare-fun result!289722 () Bool)

(assert (=> tb!239241 (= result!289722 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))) (value!209760 (_1!23921 (get!13944 lt!1388815))))) e!2456407))))

(assert (= tb!239241 b!3966117))

(declare-fun m!4536191 () Bool)

(assert (=> b!3966117 m!4536191))

(declare-fun m!4536193 () Bool)

(assert (=> tb!239241 m!4536193))

(assert (=> d!1174985 t!330382))

(declare-fun b_and!304663 () Bool)

(assert (= b_and!304645 (and (=> t!330382 result!289722) b_and!304663)))

(declare-fun t!330384 () Bool)

(declare-fun tb!239243 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330384) tb!239243))

(declare-fun result!289724 () Bool)

(assert (= result!289724 result!289722))

(assert (=> d!1174985 t!330384))

(declare-fun b_and!304665 () Bool)

(assert (= b_and!304643 (and (=> t!330384 result!289724) b_and!304665)))

(declare-fun tb!239245 () Bool)

(declare-fun t!330386 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330386) tb!239245))

(declare-fun result!289726 () Bool)

(assert (= result!289726 result!289722))

(assert (=> d!1174985 t!330386))

(declare-fun b_and!304667 () Bool)

(assert (= b_and!304641 (and (=> t!330386 result!289726) b_and!304667)))

(declare-fun t!330388 () Bool)

(declare-fun tb!239247 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330388) tb!239247))

(declare-fun result!289728 () Bool)

(assert (= result!289728 result!289722))

(assert (=> d!1174985 t!330388))

(declare-fun b_and!304669 () Bool)

(assert (= b_and!304647 (and (=> t!330388 result!289728) b_and!304669)))

(declare-fun t!330390 () Bool)

(declare-fun tb!239249 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330390) tb!239249))

(declare-fun result!289730 () Bool)

(assert (= result!289730 result!289722))

(assert (=> d!1174985 t!330390))

(declare-fun b_and!304671 () Bool)

(assert (= b_and!304649 (and (=> t!330390 result!289730) b_and!304671)))

(declare-fun t!330392 () Bool)

(declare-fun tb!239251 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330392) tb!239251))

(declare-fun result!289732 () Bool)

(assert (= result!289732 result!289722))

(assert (=> d!1174985 t!330392))

(declare-fun b_and!304673 () Bool)

(assert (= b_and!304639 (and (=> t!330392 result!289732) b_and!304673)))

(declare-fun m!4536195 () Bool)

(assert (=> d!1174985 m!4536195))

(declare-fun m!4536197 () Bool)

(assert (=> d!1174985 m!4536197))

(assert (=> b!3965639 d!1174985))

(assert (=> b!3965639 d!1174957))

(declare-fun d!1174987 () Bool)

(declare-fun lt!1388948 () Int)

(assert (=> d!1174987 (>= lt!1388948 0)))

(declare-fun e!2456408 () Int)

(assert (=> d!1174987 (= lt!1388948 e!2456408)))

(declare-fun c!688094 () Bool)

(assert (=> d!1174987 (= c!688094 ((_ is Nil!42278) (_1!23922 lt!1388821)))))

(assert (=> d!1174987 (= (size!31648 (_1!23922 lt!1388821)) lt!1388948)))

(declare-fun b!3966118 () Bool)

(assert (=> b!3966118 (= e!2456408 0)))

(declare-fun b!3966119 () Bool)

(assert (=> b!3966119 (= e!2456408 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388821)))))))

(assert (= (and d!1174987 c!688094) b!3966118))

(assert (= (and d!1174987 (not c!688094)) b!3966119))

(declare-fun m!4536199 () Bool)

(assert (=> b!3966119 m!4536199))

(assert (=> d!1174781 d!1174987))

(declare-fun b!3966120 () Bool)

(declare-fun res!1605462 () Bool)

(declare-fun e!2456409 () Bool)

(assert (=> b!3966120 (=> (not res!1605462) (not e!2456409))))

(declare-fun lt!1388950 () Option!9056)

(assert (=> b!3966120 (= res!1605462 (< (size!31647 (_2!23921 (get!13944 lt!1388950))) (size!31647 suffix!1176)))))

(declare-fun b!3966121 () Bool)

(declare-fun res!1605463 () Bool)

(assert (=> b!3966121 (=> (not res!1605463) (not e!2456409))))

(assert (=> b!3966121 (= res!1605463 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388950)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388950))))))))

(declare-fun b!3966122 () Bool)

(declare-fun e!2456410 () Option!9056)

(declare-fun lt!1388952 () Option!9056)

(declare-fun lt!1388951 () Option!9056)

(assert (=> b!3966122 (= e!2456410 (ite (and ((_ is None!9055) lt!1388952) ((_ is None!9055) lt!1388951)) None!9055 (ite ((_ is None!9055) lt!1388951) lt!1388952 (ite ((_ is None!9055) lt!1388952) lt!1388951 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1388952))) (size!31646 (_1!23921 (v!39401 lt!1388951)))) lt!1388952 lt!1388951)))))))

(declare-fun call!285495 () Option!9056)

(assert (=> b!3966122 (= lt!1388952 call!285495)))

(assert (=> b!3966122 (= lt!1388951 (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) suffix!1176))))

(declare-fun d!1174989 () Bool)

(declare-fun e!2456411 () Bool)

(assert (=> d!1174989 e!2456411))

(declare-fun res!1605457 () Bool)

(assert (=> d!1174989 (=> res!1605457 e!2456411)))

(assert (=> d!1174989 (= res!1605457 (isEmpty!25299 lt!1388950))))

(assert (=> d!1174989 (= lt!1388950 e!2456410)))

(declare-fun c!688095 () Bool)

(assert (=> d!1174989 (= c!688095 (and ((_ is Cons!42277) rules!2768) ((_ is Nil!42277) (t!330256 rules!2768))))))

(declare-fun lt!1388949 () Unit!60908)

(declare-fun lt!1388953 () Unit!60908)

(assert (=> d!1174989 (= lt!1388949 lt!1388953)))

(assert (=> d!1174989 (isPrefix!3725 suffix!1176 suffix!1176)))

(assert (=> d!1174989 (= lt!1388953 (lemmaIsPrefixRefl!2347 suffix!1176 suffix!1176))))

(assert (=> d!1174989 (rulesValidInductive!2405 thiss!20629 rules!2768)))

(assert (=> d!1174989 (= (maxPrefix!3529 thiss!20629 rules!2768 suffix!1176) lt!1388950)))

(declare-fun b!3966123 () Bool)

(assert (=> b!3966123 (= e!2456409 (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1388950)))))))

(declare-fun b!3966124 () Bool)

(declare-fun res!1605459 () Bool)

(assert (=> b!3966124 (=> (not res!1605459) (not e!2456409))))

(assert (=> b!3966124 (= res!1605459 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388950)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388950)))))))

(declare-fun bm!285490 () Bool)

(assert (=> bm!285490 (= call!285495 (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) suffix!1176))))

(declare-fun b!3966125 () Bool)

(declare-fun res!1605460 () Bool)

(assert (=> b!3966125 (=> (not res!1605460) (not e!2456409))))

(assert (=> b!3966125 (= res!1605460 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388950)))) (_2!23921 (get!13944 lt!1388950))) suffix!1176))))

(declare-fun b!3966126 () Bool)

(declare-fun res!1605458 () Bool)

(assert (=> b!3966126 (=> (not res!1605458) (not e!2456409))))

(assert (=> b!3966126 (= res!1605458 (= (value!209760 (_1!23921 (get!13944 lt!1388950))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388950)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388950)))))))))

(declare-fun b!3966127 () Bool)

(assert (=> b!3966127 (= e!2456410 call!285495)))

(declare-fun b!3966128 () Bool)

(assert (=> b!3966128 (= e!2456411 e!2456409)))

(declare-fun res!1605461 () Bool)

(assert (=> b!3966128 (=> (not res!1605461) (not e!2456409))))

(assert (=> b!3966128 (= res!1605461 (isDefined!7006 lt!1388950))))

(assert (= (and d!1174989 c!688095) b!3966127))

(assert (= (and d!1174989 (not c!688095)) b!3966122))

(assert (= (or b!3966127 b!3966122) bm!285490))

(assert (= (and d!1174989 (not res!1605457)) b!3966128))

(assert (= (and b!3966128 res!1605461) b!3966124))

(assert (= (and b!3966124 res!1605459) b!3966120))

(assert (= (and b!3966120 res!1605462) b!3966125))

(assert (= (and b!3966125 res!1605460) b!3966126))

(assert (= (and b!3966126 res!1605458) b!3966121))

(assert (= (and b!3966121 res!1605463) b!3966123))

(declare-fun m!4536201 () Bool)

(assert (=> b!3966124 m!4536201))

(declare-fun m!4536203 () Bool)

(assert (=> b!3966124 m!4536203))

(assert (=> b!3966124 m!4536203))

(declare-fun m!4536205 () Bool)

(assert (=> b!3966124 m!4536205))

(assert (=> b!3966120 m!4536201))

(declare-fun m!4536207 () Bool)

(assert (=> b!3966120 m!4536207))

(assert (=> b!3966120 m!4534863))

(declare-fun m!4536209 () Bool)

(assert (=> b!3966122 m!4536209))

(declare-fun m!4536211 () Bool)

(assert (=> b!3966128 m!4536211))

(assert (=> b!3966125 m!4536201))

(assert (=> b!3966125 m!4536203))

(assert (=> b!3966125 m!4536203))

(assert (=> b!3966125 m!4536205))

(assert (=> b!3966125 m!4536205))

(declare-fun m!4536213 () Bool)

(assert (=> b!3966125 m!4536213))

(assert (=> b!3966123 m!4536201))

(declare-fun m!4536215 () Bool)

(assert (=> b!3966123 m!4536215))

(assert (=> b!3966121 m!4536201))

(assert (=> b!3966121 m!4536203))

(assert (=> b!3966121 m!4536203))

(assert (=> b!3966121 m!4536205))

(assert (=> b!3966121 m!4536205))

(declare-fun m!4536217 () Bool)

(assert (=> b!3966121 m!4536217))

(assert (=> b!3966126 m!4536201))

(declare-fun m!4536219 () Bool)

(assert (=> b!3966126 m!4536219))

(assert (=> b!3966126 m!4536219))

(declare-fun m!4536221 () Bool)

(assert (=> b!3966126 m!4536221))

(declare-fun m!4536223 () Bool)

(assert (=> bm!285490 m!4536223))

(declare-fun m!4536225 () Bool)

(assert (=> d!1174989 m!4536225))

(declare-fun m!4536227 () Bool)

(assert (=> d!1174989 m!4536227))

(declare-fun m!4536229 () Bool)

(assert (=> d!1174989 m!4536229))

(assert (=> d!1174989 m!4535581))

(assert (=> d!1174781 d!1174989))

(declare-fun b!3966129 () Bool)

(declare-fun e!2456413 () List!42402)

(assert (=> b!3966129 (= e!2456413 suffixTokens!72)))

(declare-fun b!3966130 () Bool)

(assert (=> b!3966130 (= e!2456413 (Cons!42278 (h!47698 (t!330257 prefixTokens!80)) (++!11030 (t!330257 (t!330257 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3966131 () Bool)

(declare-fun res!1605465 () Bool)

(declare-fun e!2456412 () Bool)

(assert (=> b!3966131 (=> (not res!1605465) (not e!2456412))))

(declare-fun lt!1388954 () List!42402)

(assert (=> b!3966131 (= res!1605465 (= (size!31648 lt!1388954) (+ (size!31648 (t!330257 prefixTokens!80)) (size!31648 suffixTokens!72))))))

(declare-fun b!3966132 () Bool)

(assert (=> b!3966132 (= e!2456412 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388954 (t!330257 prefixTokens!80))))))

(declare-fun d!1174991 () Bool)

(assert (=> d!1174991 e!2456412))

(declare-fun res!1605464 () Bool)

(assert (=> d!1174991 (=> (not res!1605464) (not e!2456412))))

(assert (=> d!1174991 (= res!1605464 (= (content!6420 lt!1388954) ((_ map or) (content!6420 (t!330257 prefixTokens!80)) (content!6420 suffixTokens!72))))))

(assert (=> d!1174991 (= lt!1388954 e!2456413)))

(declare-fun c!688096 () Bool)

(assert (=> d!1174991 (= c!688096 ((_ is Nil!42278) (t!330257 prefixTokens!80)))))

(assert (=> d!1174991 (= (++!11030 (t!330257 prefixTokens!80) suffixTokens!72) lt!1388954)))

(assert (= (and d!1174991 c!688096) b!3966129))

(assert (= (and d!1174991 (not c!688096)) b!3966130))

(assert (= (and d!1174991 res!1605464) b!3966131))

(assert (= (and b!3966131 res!1605465) b!3966132))

(declare-fun m!4536231 () Bool)

(assert (=> b!3966130 m!4536231))

(declare-fun m!4536233 () Bool)

(assert (=> b!3966131 m!4536233))

(declare-fun m!4536235 () Bool)

(assert (=> b!3966131 m!4536235))

(assert (=> b!3966131 m!4535011))

(declare-fun m!4536237 () Bool)

(assert (=> d!1174991 m!4536237))

(declare-fun m!4536239 () Bool)

(assert (=> d!1174991 m!4536239))

(assert (=> d!1174991 m!4535017))

(assert (=> b!3965309 d!1174991))

(declare-fun d!1174993 () Bool)

(declare-fun lt!1388955 () Int)

(assert (=> d!1174993 (>= lt!1388955 0)))

(declare-fun e!2456414 () Int)

(assert (=> d!1174993 (= lt!1388955 e!2456414)))

(declare-fun c!688097 () Bool)

(assert (=> d!1174993 (= c!688097 ((_ is Nil!42275) (_2!23921 (get!13944 lt!1388712))))))

(assert (=> d!1174993 (= (size!31647 (_2!23921 (get!13944 lt!1388712))) lt!1388955)))

(declare-fun b!3966133 () Bool)

(assert (=> b!3966133 (= e!2456414 0)))

(declare-fun b!3966134 () Bool)

(assert (=> b!3966134 (= e!2456414 (+ 1 (size!31647 (t!330254 (_2!23921 (get!13944 lt!1388712))))))))

(assert (= (and d!1174993 c!688097) b!3966133))

(assert (= (and d!1174993 (not c!688097)) b!3966134))

(declare-fun m!4536241 () Bool)

(assert (=> b!3966134 m!4536241))

(assert (=> b!3965480 d!1174993))

(assert (=> b!3965480 d!1174967))

(assert (=> b!3965480 d!1174637))

(declare-fun b!3966135 () Bool)

(declare-fun e!2456416 () List!42402)

(assert (=> b!3966135 (= e!2456416 suffixTokens!72)))

(declare-fun b!3966136 () Bool)

(assert (=> b!3966136 (= e!2456416 (Cons!42278 (h!47698 (t!330257 lt!1388620)) (++!11030 (t!330257 (t!330257 lt!1388620)) suffixTokens!72)))))

(declare-fun b!3966137 () Bool)

(declare-fun res!1605467 () Bool)

(declare-fun e!2456415 () Bool)

(assert (=> b!3966137 (=> (not res!1605467) (not e!2456415))))

(declare-fun lt!1388956 () List!42402)

(assert (=> b!3966137 (= res!1605467 (= (size!31648 lt!1388956) (+ (size!31648 (t!330257 lt!1388620)) (size!31648 suffixTokens!72))))))

(declare-fun b!3966138 () Bool)

(assert (=> b!3966138 (= e!2456415 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1388956 (t!330257 lt!1388620))))))

(declare-fun d!1174995 () Bool)

(assert (=> d!1174995 e!2456415))

(declare-fun res!1605466 () Bool)

(assert (=> d!1174995 (=> (not res!1605466) (not e!2456415))))

(assert (=> d!1174995 (= res!1605466 (= (content!6420 lt!1388956) ((_ map or) (content!6420 (t!330257 lt!1388620)) (content!6420 suffixTokens!72))))))

(assert (=> d!1174995 (= lt!1388956 e!2456416)))

(declare-fun c!688098 () Bool)

(assert (=> d!1174995 (= c!688098 ((_ is Nil!42278) (t!330257 lt!1388620)))))

(assert (=> d!1174995 (= (++!11030 (t!330257 lt!1388620) suffixTokens!72) lt!1388956)))

(assert (= (and d!1174995 c!688098) b!3966135))

(assert (= (and d!1174995 (not c!688098)) b!3966136))

(assert (= (and d!1174995 res!1605466) b!3966137))

(assert (= (and b!3966137 res!1605467) b!3966138))

(declare-fun m!4536243 () Bool)

(assert (=> b!3966136 m!4536243))

(declare-fun m!4536245 () Bool)

(assert (=> b!3966137 m!4536245))

(declare-fun m!4536247 () Bool)

(assert (=> b!3966137 m!4536247))

(assert (=> b!3966137 m!4535011))

(declare-fun m!4536249 () Bool)

(assert (=> d!1174995 m!4536249))

(declare-fun m!4536251 () Bool)

(assert (=> d!1174995 m!4536251))

(assert (=> d!1174995 m!4535017))

(assert (=> b!3965532 d!1174995))

(declare-fun d!1174997 () Bool)

(assert (=> d!1174997 (= (isEmpty!25299 lt!1388815) (not ((_ is Some!9055) lt!1388815)))))

(assert (=> d!1174745 d!1174997))

(declare-fun b!3966139 () Bool)

(declare-fun e!2456419 () Bool)

(declare-fun e!2456417 () Bool)

(assert (=> b!3966139 (= e!2456419 e!2456417)))

(declare-fun res!1605470 () Bool)

(assert (=> b!3966139 (=> (not res!1605470) (not e!2456417))))

(assert (=> b!3966139 (= res!1605470 (not ((_ is Nil!42275) lt!1388630)))))

(declare-fun b!3966141 () Bool)

(assert (=> b!3966141 (= e!2456417 (isPrefix!3725 (tail!6182 lt!1388630) (tail!6182 lt!1388630)))))

(declare-fun d!1174999 () Bool)

(declare-fun e!2456418 () Bool)

(assert (=> d!1174999 e!2456418))

(declare-fun res!1605471 () Bool)

(assert (=> d!1174999 (=> res!1605471 e!2456418)))

(declare-fun lt!1388957 () Bool)

(assert (=> d!1174999 (= res!1605471 (not lt!1388957))))

(assert (=> d!1174999 (= lt!1388957 e!2456419)))

(declare-fun res!1605469 () Bool)

(assert (=> d!1174999 (=> res!1605469 e!2456419)))

(assert (=> d!1174999 (= res!1605469 ((_ is Nil!42275) lt!1388630))))

(assert (=> d!1174999 (= (isPrefix!3725 lt!1388630 lt!1388630) lt!1388957)))

(declare-fun b!3966142 () Bool)

(assert (=> b!3966142 (= e!2456418 (>= (size!31647 lt!1388630) (size!31647 lt!1388630)))))

(declare-fun b!3966140 () Bool)

(declare-fun res!1605468 () Bool)

(assert (=> b!3966140 (=> (not res!1605468) (not e!2456417))))

(assert (=> b!3966140 (= res!1605468 (= (head!8450 lt!1388630) (head!8450 lt!1388630)))))

(assert (= (and d!1174999 (not res!1605469)) b!3966139))

(assert (= (and b!3966139 res!1605470) b!3966140))

(assert (= (and b!3966140 res!1605468) b!3966141))

(assert (= (and d!1174999 (not res!1605471)) b!3966142))

(assert (=> b!3966141 m!4535119))

(assert (=> b!3966141 m!4535119))

(assert (=> b!3966141 m!4535119))

(assert (=> b!3966141 m!4535119))

(declare-fun m!4536253 () Bool)

(assert (=> b!3966141 m!4536253))

(assert (=> b!3966142 m!4534981))

(assert (=> b!3966142 m!4534981))

(assert (=> b!3966140 m!4535405))

(assert (=> b!3966140 m!4535405))

(assert (=> d!1174745 d!1174999))

(declare-fun d!1175001 () Bool)

(assert (=> d!1175001 (isPrefix!3725 lt!1388630 lt!1388630)))

(declare-fun lt!1388960 () Unit!60908)

(declare-fun choose!23740 (List!42399 List!42399) Unit!60908)

(assert (=> d!1175001 (= lt!1388960 (choose!23740 lt!1388630 lt!1388630))))

(assert (=> d!1175001 (= (lemmaIsPrefixRefl!2347 lt!1388630 lt!1388630) lt!1388960)))

(declare-fun bs!587441 () Bool)

(assert (= bs!587441 d!1175001))

(assert (=> bs!587441 m!4535577))

(declare-fun m!4536255 () Bool)

(assert (=> bs!587441 m!4536255))

(assert (=> d!1174745 d!1175001))

(declare-fun bs!587442 () Bool)

(declare-fun d!1175003 () Bool)

(assert (= bs!587442 (and d!1175003 d!1174893)))

(declare-fun lambda!126807 () Int)

(assert (=> bs!587442 (= lambda!126807 lambda!126804)))

(assert (=> d!1175003 true))

(declare-fun lt!1388963 () Bool)

(assert (=> d!1175003 (= lt!1388963 (forall!8328 rules!2768 lambda!126807))))

(declare-fun e!2456425 () Bool)

(assert (=> d!1175003 (= lt!1388963 e!2456425)))

(declare-fun res!1605477 () Bool)

(assert (=> d!1175003 (=> res!1605477 e!2456425)))

(assert (=> d!1175003 (= res!1605477 (not ((_ is Cons!42277) rules!2768)))))

(assert (=> d!1175003 (= (rulesValidInductive!2405 thiss!20629 rules!2768) lt!1388963)))

(declare-fun b!3966147 () Bool)

(declare-fun e!2456424 () Bool)

(assert (=> b!3966147 (= e!2456425 e!2456424)))

(declare-fun res!1605476 () Bool)

(assert (=> b!3966147 (=> (not res!1605476) (not e!2456424))))

(assert (=> b!3966147 (= res!1605476 (ruleValid!2578 thiss!20629 (h!47697 rules!2768)))))

(declare-fun b!3966148 () Bool)

(assert (=> b!3966148 (= e!2456424 (rulesValidInductive!2405 thiss!20629 (t!330256 rules!2768)))))

(assert (= (and d!1175003 (not res!1605477)) b!3966147))

(assert (= (and b!3966147 res!1605476) b!3966148))

(declare-fun m!4536257 () Bool)

(assert (=> d!1175003 m!4536257))

(assert (=> b!3966147 m!4535941))

(declare-fun m!4536259 () Bool)

(assert (=> b!3966148 m!4536259))

(assert (=> d!1174745 d!1175003))

(declare-fun b!3966151 () Bool)

(declare-fun res!1605478 () Bool)

(declare-fun e!2456427 () Bool)

(assert (=> b!3966151 (=> (not res!1605478) (not e!2456427))))

(declare-fun lt!1388964 () List!42399)

(assert (=> b!3966151 (= res!1605478 (= (size!31647 lt!1388964) (+ (size!31647 lt!1388609) (size!31647 lt!1388754))))))

(declare-fun b!3966152 () Bool)

(assert (=> b!3966152 (= e!2456427 (or (not (= lt!1388754 Nil!42275)) (= lt!1388964 lt!1388609)))))

(declare-fun b!3966149 () Bool)

(declare-fun e!2456426 () List!42399)

(assert (=> b!3966149 (= e!2456426 lt!1388754)))

(declare-fun d!1175005 () Bool)

(assert (=> d!1175005 e!2456427))

(declare-fun res!1605479 () Bool)

(assert (=> d!1175005 (=> (not res!1605479) (not e!2456427))))

(assert (=> d!1175005 (= res!1605479 (= (content!6421 lt!1388964) ((_ map or) (content!6421 lt!1388609) (content!6421 lt!1388754))))))

(assert (=> d!1175005 (= lt!1388964 e!2456426)))

(declare-fun c!688099 () Bool)

(assert (=> d!1175005 (= c!688099 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175005 (= (++!11029 lt!1388609 lt!1388754) lt!1388964)))

(declare-fun b!3966150 () Bool)

(assert (=> b!3966150 (= e!2456426 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) lt!1388754)))))

(assert (= (and d!1175005 c!688099) b!3966149))

(assert (= (and d!1175005 (not c!688099)) b!3966150))

(assert (= (and d!1175005 res!1605479) b!3966151))

(assert (= (and b!3966151 res!1605478) b!3966152))

(declare-fun m!4536261 () Bool)

(assert (=> b!3966151 m!4536261))

(assert (=> b!3966151 m!4534889))

(declare-fun m!4536263 () Bool)

(assert (=> b!3966151 m!4536263))

(declare-fun m!4536265 () Bool)

(assert (=> d!1175005 m!4536265))

(assert (=> d!1175005 m!4535127))

(declare-fun m!4536267 () Bool)

(assert (=> d!1175005 m!4536267))

(declare-fun m!4536269 () Bool)

(assert (=> b!3966150 m!4536269))

(assert (=> d!1174681 d!1175005))

(assert (=> d!1174681 d!1174693))

(assert (=> d!1174681 d!1174605))

(declare-fun d!1175007 () Bool)

(declare-fun c!688102 () Bool)

(assert (=> d!1175007 (= c!688102 ((_ is Nil!42275) lt!1388675))))

(declare-fun e!2456430 () (InoxSet C!23268))

(assert (=> d!1175007 (= (content!6421 lt!1388675) e!2456430)))

(declare-fun b!3966157 () Bool)

(assert (=> b!3966157 (= e!2456430 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966158 () Bool)

(assert (=> b!3966158 (= e!2456430 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388675) true) (content!6421 (t!330254 lt!1388675))))))

(assert (= (and d!1175007 c!688102) b!3966157))

(assert (= (and d!1175007 (not c!688102)) b!3966158))

(declare-fun m!4536271 () Bool)

(assert (=> b!3966158 m!4536271))

(declare-fun m!4536273 () Bool)

(assert (=> b!3966158 m!4536273))

(assert (=> d!1174593 d!1175007))

(declare-fun d!1175009 () Bool)

(declare-fun c!688103 () Bool)

(assert (=> d!1175009 (= c!688103 ((_ is Nil!42275) lt!1388609))))

(declare-fun e!2456431 () (InoxSet C!23268))

(assert (=> d!1175009 (= (content!6421 lt!1388609) e!2456431)))

(declare-fun b!3966159 () Bool)

(assert (=> b!3966159 (= e!2456431 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966160 () Bool)

(assert (=> b!3966160 (= e!2456431 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388609) true) (content!6421 (t!330254 lt!1388609))))))

(assert (= (and d!1175009 c!688103) b!3966159))

(assert (= (and d!1175009 (not c!688103)) b!3966160))

(declare-fun m!4536275 () Bool)

(assert (=> b!3966160 m!4536275))

(assert (=> b!3966160 m!4536167))

(assert (=> d!1174593 d!1175009))

(declare-fun d!1175011 () Bool)

(declare-fun c!688104 () Bool)

(assert (=> d!1175011 (= c!688104 ((_ is Nil!42275) (_2!23921 (v!39401 lt!1388603))))))

(declare-fun e!2456432 () (InoxSet C!23268))

(assert (=> d!1175011 (= (content!6421 (_2!23921 (v!39401 lt!1388603))) e!2456432)))

(declare-fun b!3966161 () Bool)

(assert (=> b!3966161 (= e!2456432 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966162 () Bool)

(assert (=> b!3966162 (= e!2456432 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 (_2!23921 (v!39401 lt!1388603))) true) (content!6421 (t!330254 (_2!23921 (v!39401 lt!1388603))))))))

(assert (= (and d!1175011 c!688104) b!3966161))

(assert (= (and d!1175011 (not c!688104)) b!3966162))

(declare-fun m!4536277 () Bool)

(assert (=> b!3966162 m!4536277))

(declare-fun m!4536279 () Bool)

(assert (=> b!3966162 m!4536279))

(assert (=> d!1174593 d!1175011))

(declare-fun d!1175013 () Bool)

(declare-fun c!688107 () Bool)

(assert (=> d!1175013 (= c!688107 ((_ is Nil!42278) lt!1388824))))

(declare-fun e!2456435 () (InoxSet Token!12410))

(assert (=> d!1175013 (= (content!6420 lt!1388824) e!2456435)))

(declare-fun b!3966167 () Bool)

(assert (=> b!3966167 (= e!2456435 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966168 () Bool)

(assert (=> b!3966168 (= e!2456435 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388824) true) (content!6420 (t!330257 lt!1388824))))))

(assert (= (and d!1175013 c!688107) b!3966167))

(assert (= (and d!1175013 (not c!688107)) b!3966168))

(declare-fun m!4536281 () Bool)

(assert (=> b!3966168 m!4536281))

(declare-fun m!4536283 () Bool)

(assert (=> b!3966168 m!4536283))

(assert (=> d!1174789 d!1175013))

(declare-fun d!1175015 () Bool)

(declare-fun c!688108 () Bool)

(assert (=> d!1175015 (= c!688108 ((_ is Nil!42278) lt!1388619))))

(declare-fun e!2456436 () (InoxSet Token!12410))

(assert (=> d!1175015 (= (content!6420 lt!1388619) e!2456436)))

(declare-fun b!3966169 () Bool)

(assert (=> b!3966169 (= e!2456436 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966170 () Bool)

(assert (=> b!3966170 (= e!2456436 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388619) true) (content!6420 (t!330257 lt!1388619))))))

(assert (= (and d!1175015 c!688108) b!3966169))

(assert (= (and d!1175015 (not c!688108)) b!3966170))

(declare-fun m!4536285 () Bool)

(assert (=> b!3966170 m!4536285))

(assert (=> b!3966170 m!4536187))

(assert (=> d!1174789 d!1175015))

(declare-fun d!1175017 () Bool)

(declare-fun c!688109 () Bool)

(assert (=> d!1175017 (= c!688109 ((_ is Nil!42278) lt!1388616))))

(declare-fun e!2456437 () (InoxSet Token!12410))

(assert (=> d!1175017 (= (content!6420 lt!1388616) e!2456437)))

(declare-fun b!3966171 () Bool)

(assert (=> b!3966171 (= e!2456437 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966172 () Bool)

(assert (=> b!3966172 (= e!2456437 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388616) true) (content!6420 (t!330257 lt!1388616))))))

(assert (= (and d!1175017 c!688109) b!3966171))

(assert (= (and d!1175017 (not c!688109)) b!3966172))

(declare-fun m!4536287 () Bool)

(assert (=> b!3966172 m!4536287))

(declare-fun m!4536289 () Bool)

(assert (=> b!3966172 m!4536289))

(assert (=> d!1174789 d!1175017))

(declare-fun d!1175019 () Bool)

(declare-fun c!688110 () Bool)

(assert (=> d!1175019 (= c!688110 ((_ is Nil!42278) lt!1388752))))

(declare-fun e!2456438 () (InoxSet Token!12410))

(assert (=> d!1175019 (= (content!6420 lt!1388752) e!2456438)))

(declare-fun b!3966173 () Bool)

(assert (=> b!3966173 (= e!2456438 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966174 () Bool)

(assert (=> b!3966174 (= e!2456438 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388752) true) (content!6420 (t!330257 lt!1388752))))))

(assert (= (and d!1175019 c!688110) b!3966173))

(assert (= (and d!1175019 (not c!688110)) b!3966174))

(declare-fun m!4536291 () Bool)

(assert (=> b!3966174 m!4536291))

(declare-fun m!4536293 () Bool)

(assert (=> b!3966174 m!4536293))

(assert (=> d!1174677 d!1175019))

(declare-fun d!1175021 () Bool)

(declare-fun c!688111 () Bool)

(assert (=> d!1175021 (= c!688111 ((_ is Nil!42278) lt!1388620))))

(declare-fun e!2456439 () (InoxSet Token!12410))

(assert (=> d!1175021 (= (content!6420 lt!1388620) e!2456439)))

(declare-fun b!3966175 () Bool)

(assert (=> b!3966175 (= e!2456439 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966176 () Bool)

(assert (=> b!3966176 (= e!2456439 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388620) true) (content!6420 (t!330257 lt!1388620))))))

(assert (= (and d!1175021 c!688111) b!3966175))

(assert (= (and d!1175021 (not c!688111)) b!3966176))

(declare-fun m!4536295 () Bool)

(assert (=> b!3966176 m!4536295))

(assert (=> b!3966176 m!4536251))

(assert (=> d!1174677 d!1175021))

(declare-fun d!1175023 () Bool)

(declare-fun c!688112 () Bool)

(assert (=> d!1175023 (= c!688112 ((_ is Nil!42278) suffixTokens!72))))

(declare-fun e!2456440 () (InoxSet Token!12410))

(assert (=> d!1175023 (= (content!6420 suffixTokens!72) e!2456440)))

(declare-fun b!3966177 () Bool)

(assert (=> b!3966177 (= e!2456440 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966178 () Bool)

(assert (=> b!3966178 (= e!2456440 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 suffixTokens!72) true) (content!6420 (t!330257 suffixTokens!72))))))

(assert (= (and d!1175023 c!688112) b!3966177))

(assert (= (and d!1175023 (not c!688112)) b!3966178))

(declare-fun m!4536297 () Bool)

(assert (=> b!3966178 m!4536297))

(declare-fun m!4536299 () Bool)

(assert (=> b!3966178 m!4536299))

(assert (=> d!1174677 d!1175023))

(declare-fun d!1175025 () Bool)

(declare-fun lt!1388965 () Int)

(assert (=> d!1175025 (>= lt!1388965 0)))

(declare-fun e!2456441 () Int)

(assert (=> d!1175025 (= lt!1388965 e!2456441)))

(declare-fun c!688113 () Bool)

(assert (=> d!1175025 (= c!688113 ((_ is Nil!42275) (t!330254 (_2!23921 lt!1388585))))))

(assert (=> d!1175025 (= (size!31647 (t!330254 (_2!23921 lt!1388585))) lt!1388965)))

(declare-fun b!3966179 () Bool)

(assert (=> b!3966179 (= e!2456441 0)))

(declare-fun b!3966180 () Bool)

(assert (=> b!3966180 (= e!2456441 (+ 1 (size!31647 (t!330254 (t!330254 (_2!23921 lt!1388585))))))))

(assert (= (and d!1175025 c!688113) b!3966179))

(assert (= (and d!1175025 (not c!688113)) b!3966180))

(declare-fun m!4536301 () Bool)

(assert (=> b!3966180 m!4536301))

(assert (=> b!3965489 d!1175025))

(assert (=> d!1174795 d!1174787))

(assert (=> d!1174795 d!1174793))

(declare-fun b!3966181 () Bool)

(declare-fun e!2456443 () List!42402)

(assert (=> b!3966181 (= e!2456443 (++!11030 lt!1388633 suffixTokens!72))))

(declare-fun b!3966182 () Bool)

(assert (=> b!3966182 (= e!2456443 (Cons!42278 (h!47698 lt!1388619) (++!11030 (t!330257 lt!1388619) (++!11030 lt!1388633 suffixTokens!72))))))

(declare-fun b!3966183 () Bool)

(declare-fun res!1605481 () Bool)

(declare-fun e!2456442 () Bool)

(assert (=> b!3966183 (=> (not res!1605481) (not e!2456442))))

(declare-fun lt!1388966 () List!42402)

(assert (=> b!3966183 (= res!1605481 (= (size!31648 lt!1388966) (+ (size!31648 lt!1388619) (size!31648 (++!11030 lt!1388633 suffixTokens!72)))))))

(declare-fun b!3966184 () Bool)

(assert (=> b!3966184 (= e!2456442 (or (not (= (++!11030 lt!1388633 suffixTokens!72) Nil!42278)) (= lt!1388966 lt!1388619)))))

(declare-fun d!1175027 () Bool)

(assert (=> d!1175027 e!2456442))

(declare-fun res!1605480 () Bool)

(assert (=> d!1175027 (=> (not res!1605480) (not e!2456442))))

(assert (=> d!1175027 (= res!1605480 (= (content!6420 lt!1388966) ((_ map or) (content!6420 lt!1388619) (content!6420 (++!11030 lt!1388633 suffixTokens!72)))))))

(assert (=> d!1175027 (= lt!1388966 e!2456443)))

(declare-fun c!688114 () Bool)

(assert (=> d!1175027 (= c!688114 ((_ is Nil!42278) lt!1388619))))

(assert (=> d!1175027 (= (++!11030 lt!1388619 (++!11030 lt!1388633 suffixTokens!72)) lt!1388966)))

(assert (= (and d!1175027 c!688114) b!3966181))

(assert (= (and d!1175027 (not c!688114)) b!3966182))

(assert (= (and d!1175027 res!1605480) b!3966183))

(assert (= (and b!3966183 res!1605481) b!3966184))

(assert (=> b!3966182 m!4534929))

(declare-fun m!4536303 () Bool)

(assert (=> b!3966182 m!4536303))

(declare-fun m!4536305 () Bool)

(assert (=> b!3966183 m!4536305))

(assert (=> b!3966183 m!4535081))

(assert (=> b!3966183 m!4534929))

(declare-fun m!4536307 () Bool)

(assert (=> b!3966183 m!4536307))

(declare-fun m!4536309 () Bool)

(assert (=> d!1175027 m!4536309))

(assert (=> d!1175027 m!4535087))

(assert (=> d!1175027 m!4534929))

(declare-fun m!4536311 () Bool)

(assert (=> d!1175027 m!4536311))

(assert (=> d!1174795 d!1175027))

(assert (=> d!1174795 d!1174573))

(declare-fun d!1175029 () Bool)

(assert (=> d!1175029 (= (++!11030 (++!11030 lt!1388619 lt!1388633) suffixTokens!72) (++!11030 lt!1388619 (++!11030 lt!1388633 suffixTokens!72)))))

(assert (=> d!1175029 true))

(declare-fun _$52!2231 () Unit!60908)

(assert (=> d!1175029 (= (choose!23735 lt!1388619 lt!1388633 suffixTokens!72) _$52!2231)))

(declare-fun bs!587443 () Bool)

(assert (= bs!587443 d!1175029))

(assert (=> bs!587443 m!4534911))

(assert (=> bs!587443 m!4534911))

(assert (=> bs!587443 m!4534913))

(assert (=> bs!587443 m!4534929))

(assert (=> bs!587443 m!4534929))

(assert (=> bs!587443 m!4535631))

(assert (=> d!1174795 d!1175029))

(declare-fun b!3966185 () Bool)

(declare-fun e!2456446 () Bool)

(declare-fun e!2456444 () Bool)

(assert (=> b!3966185 (= e!2456446 e!2456444)))

(declare-fun res!1605484 () Bool)

(assert (=> b!3966185 (=> (not res!1605484) (not e!2456444))))

(assert (=> b!3966185 (= res!1605484 (not ((_ is Nil!42275) (++!11029 lt!1388621 suffix!1176))))))

(declare-fun b!3966187 () Bool)

(assert (=> b!3966187 (= e!2456444 (isPrefix!3725 (tail!6182 lt!1388621) (tail!6182 (++!11029 lt!1388621 suffix!1176))))))

(declare-fun d!1175031 () Bool)

(declare-fun e!2456445 () Bool)

(assert (=> d!1175031 e!2456445))

(declare-fun res!1605485 () Bool)

(assert (=> d!1175031 (=> res!1605485 e!2456445)))

(declare-fun lt!1388967 () Bool)

(assert (=> d!1175031 (= res!1605485 (not lt!1388967))))

(assert (=> d!1175031 (= lt!1388967 e!2456446)))

(declare-fun res!1605483 () Bool)

(assert (=> d!1175031 (=> res!1605483 e!2456446)))

(assert (=> d!1175031 (= res!1605483 ((_ is Nil!42275) lt!1388621))))

(assert (=> d!1175031 (= (isPrefix!3725 lt!1388621 (++!11029 lt!1388621 suffix!1176)) lt!1388967)))

(declare-fun b!3966188 () Bool)

(assert (=> b!3966188 (= e!2456445 (>= (size!31647 (++!11029 lt!1388621 suffix!1176)) (size!31647 lt!1388621)))))

(declare-fun b!3966186 () Bool)

(declare-fun res!1605482 () Bool)

(assert (=> b!3966186 (=> (not res!1605482) (not e!2456444))))

(assert (=> b!3966186 (= res!1605482 (= (head!8450 lt!1388621) (head!8450 (++!11029 lt!1388621 suffix!1176))))))

(assert (= (and d!1175031 (not res!1605483)) b!3966185))

(assert (= (and b!3966185 res!1605484) b!3966186))

(assert (= (and b!3966186 res!1605482) b!3966187))

(assert (= (and d!1175031 (not res!1605485)) b!3966188))

(assert (=> b!3966187 m!4535061))

(assert (=> b!3966187 m!4534965))

(declare-fun m!4536313 () Bool)

(assert (=> b!3966187 m!4536313))

(assert (=> b!3966187 m!4535061))

(assert (=> b!3966187 m!4536313))

(declare-fun m!4536315 () Bool)

(assert (=> b!3966187 m!4536315))

(assert (=> b!3966188 m!4534965))

(declare-fun m!4536317 () Bool)

(assert (=> b!3966188 m!4536317))

(assert (=> b!3966188 m!4534921))

(assert (=> b!3966186 m!4535069))

(assert (=> b!3966186 m!4534965))

(declare-fun m!4536319 () Bool)

(assert (=> b!3966186 m!4536319))

(assert (=> d!1174579 d!1175031))

(assert (=> d!1174579 d!1174741))

(declare-fun d!1175033 () Bool)

(assert (=> d!1175033 (isPrefix!3725 lt!1388621 (++!11029 lt!1388621 suffix!1176))))

(assert (=> d!1175033 true))

(declare-fun _$46!1615 () Unit!60908)

(assert (=> d!1175033 (= (choose!23720 lt!1388621 suffix!1176) _$46!1615)))

(declare-fun bs!587444 () Bool)

(assert (= bs!587444 d!1175033))

(assert (=> bs!587444 m!4534965))

(assert (=> bs!587444 m!4534965))

(assert (=> bs!587444 m!4535073))

(assert (=> d!1174579 d!1175033))

(declare-fun d!1175035 () Bool)

(declare-fun lt!1388968 () Int)

(assert (=> d!1175035 (>= lt!1388968 0)))

(declare-fun e!2456447 () Int)

(assert (=> d!1175035 (= lt!1388968 e!2456447)))

(declare-fun c!688115 () Bool)

(assert (=> d!1175035 (= c!688115 ((_ is Nil!42275) (_2!23922 lt!1388650)))))

(assert (=> d!1175035 (= (size!31647 (_2!23922 lt!1388650)) lt!1388968)))

(declare-fun b!3966189 () Bool)

(assert (=> b!3966189 (= e!2456447 0)))

(declare-fun b!3966190 () Bool)

(assert (=> b!3966190 (= e!2456447 (+ 1 (size!31647 (t!330254 (_2!23922 lt!1388650)))))))

(assert (= (and d!1175035 c!688115) b!3966189))

(assert (= (and d!1175035 (not c!688115)) b!3966190))

(declare-fun m!4536321 () Bool)

(assert (=> b!3966190 m!4536321))

(assert (=> b!3965343 d!1175035))

(assert (=> b!3965343 d!1174639))

(declare-fun d!1175037 () Bool)

(declare-fun lt!1388969 () List!42399)

(assert (=> d!1175037 (= (++!11029 (t!330254 lt!1388609) lt!1388969) (tail!6182 prefix!426))))

(declare-fun e!2456448 () List!42399)

(assert (=> d!1175037 (= lt!1388969 e!2456448)))

(declare-fun c!688116 () Bool)

(assert (=> d!1175037 (= c!688116 ((_ is Cons!42275) (t!330254 lt!1388609)))))

(assert (=> d!1175037 (>= (size!31647 (tail!6182 prefix!426)) (size!31647 (t!330254 lt!1388609)))))

(assert (=> d!1175037 (= (getSuffix!2176 (tail!6182 prefix!426) (t!330254 lt!1388609)) lt!1388969)))

(declare-fun b!3966191 () Bool)

(assert (=> b!3966191 (= e!2456448 (getSuffix!2176 (tail!6182 (tail!6182 prefix!426)) (t!330254 (t!330254 lt!1388609))))))

(declare-fun b!3966192 () Bool)

(assert (=> b!3966192 (= e!2456448 (tail!6182 prefix!426))))

(assert (= (and d!1175037 c!688116) b!3966191))

(assert (= (and d!1175037 (not c!688116)) b!3966192))

(declare-fun m!4536323 () Bool)

(assert (=> d!1175037 m!4536323))

(assert (=> d!1175037 m!4535385))

(assert (=> d!1175037 m!4536175))

(assert (=> d!1175037 m!4535163))

(assert (=> b!3966191 m!4535385))

(assert (=> b!3966191 m!4536171))

(assert (=> b!3966191 m!4536171))

(declare-fun m!4536325 () Bool)

(assert (=> b!3966191 m!4536325))

(assert (=> b!3965539 d!1175037))

(assert (=> b!3965539 d!1174979))

(declare-fun d!1175039 () Bool)

(declare-fun lt!1388970 () Int)

(assert (=> d!1175039 (>= lt!1388970 0)))

(declare-fun e!2456449 () Int)

(assert (=> d!1175039 (= lt!1388970 e!2456449)))

(declare-fun c!688117 () Bool)

(assert (=> d!1175039 (= c!688117 ((_ is Nil!42275) (t!330254 lt!1388609)))))

(assert (=> d!1175039 (= (size!31647 (t!330254 lt!1388609)) lt!1388970)))

(declare-fun b!3966193 () Bool)

(assert (=> b!3966193 (= e!2456449 0)))

(declare-fun b!3966194 () Bool)

(assert (=> b!3966194 (= e!2456449 (+ 1 (size!31647 (t!330254 (t!330254 lt!1388609)))))))

(assert (= (and d!1175039 c!688117) b!3966193))

(assert (= (and d!1175039 (not c!688117)) b!3966194))

(declare-fun m!4536327 () Bool)

(assert (=> b!3966194 m!4536327))

(assert (=> b!3965402 d!1175039))

(declare-fun d!1175041 () Bool)

(declare-fun lt!1388971 () Int)

(assert (=> d!1175041 (>= lt!1388971 0)))

(declare-fun e!2456450 () Int)

(assert (=> d!1175041 (= lt!1388971 e!2456450)))

(declare-fun c!688118 () Bool)

(assert (=> d!1175041 (= c!688118 ((_ is Nil!42275) lt!1388627))))

(assert (=> d!1175041 (= (size!31647 lt!1388627) lt!1388971)))

(declare-fun b!3966195 () Bool)

(assert (=> b!3966195 (= e!2456450 0)))

(declare-fun b!3966196 () Bool)

(assert (=> b!3966196 (= e!2456450 (+ 1 (size!31647 (t!330254 lt!1388627))))))

(assert (= (and d!1175041 c!688118) b!3966195))

(assert (= (and d!1175041 (not c!688118)) b!3966196))

(declare-fun m!4536329 () Bool)

(assert (=> b!3966196 m!4536329))

(assert (=> b!3965575 d!1175041))

(assert (=> b!3965575 d!1174605))

(declare-fun d!1175043 () Bool)

(declare-fun lt!1388972 () Int)

(assert (=> d!1175043 (>= lt!1388972 0)))

(declare-fun e!2456451 () Int)

(assert (=> d!1175043 (= lt!1388972 e!2456451)))

(declare-fun c!688119 () Bool)

(assert (=> d!1175043 (= c!688119 ((_ is Nil!42278) lt!1388658))))

(assert (=> d!1175043 (= (size!31648 lt!1388658) lt!1388972)))

(declare-fun b!3966197 () Bool)

(assert (=> b!3966197 (= e!2456451 0)))

(declare-fun b!3966198 () Bool)

(assert (=> b!3966198 (= e!2456451 (+ 1 (size!31648 (t!330257 lt!1388658))))))

(assert (= (and d!1175043 c!688119) b!3966197))

(assert (= (and d!1175043 (not c!688119)) b!3966198))

(declare-fun m!4536331 () Bool)

(assert (=> b!3966198 m!4536331))

(assert (=> b!3965346 d!1175043))

(declare-fun d!1175045 () Bool)

(declare-fun lt!1388973 () Int)

(assert (=> d!1175045 (>= lt!1388973 0)))

(declare-fun e!2456452 () Int)

(assert (=> d!1175045 (= lt!1388973 e!2456452)))

(declare-fun c!688120 () Bool)

(assert (=> d!1175045 (= c!688120 ((_ is Nil!42278) lt!1388633))))

(assert (=> d!1175045 (= (size!31648 lt!1388633) lt!1388973)))

(declare-fun b!3966199 () Bool)

(assert (=> b!3966199 (= e!2456452 0)))

(declare-fun b!3966200 () Bool)

(assert (=> b!3966200 (= e!2456452 (+ 1 (size!31648 (t!330257 lt!1388633))))))

(assert (= (and d!1175045 c!688120) b!3966199))

(assert (= (and d!1175045 (not c!688120)) b!3966200))

(declare-fun m!4536333 () Bool)

(assert (=> b!3966200 m!4536333))

(assert (=> b!3965346 d!1175045))

(declare-fun d!1175047 () Bool)

(declare-fun lt!1388974 () Int)

(assert (=> d!1175047 (>= lt!1388974 0)))

(declare-fun e!2456453 () Int)

(assert (=> d!1175047 (= lt!1388974 e!2456453)))

(declare-fun c!688121 () Bool)

(assert (=> d!1175047 (= c!688121 ((_ is Nil!42278) suffixTokens!72))))

(assert (=> d!1175047 (= (size!31648 suffixTokens!72) lt!1388974)))

(declare-fun b!3966201 () Bool)

(assert (=> b!3966201 (= e!2456453 0)))

(declare-fun b!3966202 () Bool)

(assert (=> b!3966202 (= e!2456453 (+ 1 (size!31648 (t!330257 suffixTokens!72))))))

(assert (= (and d!1175047 c!688121) b!3966201))

(assert (= (and d!1175047 (not c!688121)) b!3966202))

(declare-fun m!4536335 () Bool)

(assert (=> b!3966202 m!4536335))

(assert (=> b!3965346 d!1175047))

(declare-fun b!3966205 () Bool)

(declare-fun res!1605486 () Bool)

(declare-fun e!2456455 () Bool)

(assert (=> b!3966205 (=> (not res!1605486) (not e!2456455))))

(declare-fun lt!1388975 () List!42399)

(assert (=> b!3966205 (= res!1605486 (= (size!31647 lt!1388975) (+ (size!31647 (t!330254 prefix!426)) (size!31647 suffix!1176))))))

(declare-fun b!3966206 () Bool)

(assert (=> b!3966206 (= e!2456455 (or (not (= suffix!1176 Nil!42275)) (= lt!1388975 (t!330254 prefix!426))))))

(declare-fun b!3966203 () Bool)

(declare-fun e!2456454 () List!42399)

(assert (=> b!3966203 (= e!2456454 suffix!1176)))

(declare-fun d!1175049 () Bool)

(assert (=> d!1175049 e!2456455))

(declare-fun res!1605487 () Bool)

(assert (=> d!1175049 (=> (not res!1605487) (not e!2456455))))

(assert (=> d!1175049 (= res!1605487 (= (content!6421 lt!1388975) ((_ map or) (content!6421 (t!330254 prefix!426)) (content!6421 suffix!1176))))))

(assert (=> d!1175049 (= lt!1388975 e!2456454)))

(declare-fun c!688122 () Bool)

(assert (=> d!1175049 (= c!688122 ((_ is Nil!42275) (t!330254 prefix!426)))))

(assert (=> d!1175049 (= (++!11029 (t!330254 prefix!426) suffix!1176) lt!1388975)))

(declare-fun b!3966204 () Bool)

(assert (=> b!3966204 (= e!2456454 (Cons!42275 (h!47695 (t!330254 prefix!426)) (++!11029 (t!330254 (t!330254 prefix!426)) suffix!1176)))))

(assert (= (and d!1175049 c!688122) b!3966203))

(assert (= (and d!1175049 (not c!688122)) b!3966204))

(assert (= (and d!1175049 res!1605487) b!3966205))

(assert (= (and b!3966205 res!1605486) b!3966206))

(declare-fun m!4536337 () Bool)

(assert (=> b!3966205 m!4536337))

(assert (=> b!3966205 m!4535413))

(assert (=> b!3966205 m!4534863))

(declare-fun m!4536339 () Bool)

(assert (=> d!1175049 m!4536339))

(declare-fun m!4536341 () Bool)

(assert (=> d!1175049 m!4536341))

(assert (=> d!1175049 m!4535025))

(declare-fun m!4536343 () Bool)

(assert (=> b!3966204 m!4536343))

(assert (=> b!3965321 d!1175049))

(declare-fun d!1175051 () Bool)

(declare-fun lt!1388976 () Int)

(assert (=> d!1175051 (>= lt!1388976 0)))

(declare-fun e!2456456 () Int)

(assert (=> d!1175051 (= lt!1388976 e!2456456)))

(declare-fun c!688123 () Bool)

(assert (=> d!1175051 (= c!688123 ((_ is Nil!42275) (originalCharacters!7236 (h!47698 prefixTokens!80))))))

(assert (=> d!1175051 (= (size!31647 (originalCharacters!7236 (h!47698 prefixTokens!80))) lt!1388976)))

(declare-fun b!3966207 () Bool)

(assert (=> b!3966207 (= e!2456456 0)))

(declare-fun b!3966208 () Bool)

(assert (=> b!3966208 (= e!2456456 (+ 1 (size!31647 (t!330254 (originalCharacters!7236 (h!47698 prefixTokens!80))))))))

(assert (= (and d!1175051 c!688123) b!3966207))

(assert (= (and d!1175051 (not c!688123)) b!3966208))

(declare-fun m!4536345 () Bool)

(assert (=> b!3966208 m!4536345))

(assert (=> b!3965369 d!1175051))

(declare-fun d!1175053 () Bool)

(declare-fun c!688124 () Bool)

(assert (=> d!1175053 (= c!688124 ((_ is Nil!42275) lt!1388785))))

(declare-fun e!2456457 () (InoxSet C!23268))

(assert (=> d!1175053 (= (content!6421 lt!1388785) e!2456457)))

(declare-fun b!3966209 () Bool)

(assert (=> b!3966209 (= e!2456457 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966210 () Bool)

(assert (=> b!3966210 (= e!2456457 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388785) true) (content!6421 (t!330254 lt!1388785))))))

(assert (= (and d!1175053 c!688124) b!3966209))

(assert (= (and d!1175053 (not c!688124)) b!3966210))

(declare-fun m!4536347 () Bool)

(assert (=> b!3966210 m!4536347))

(declare-fun m!4536349 () Bool)

(assert (=> b!3966210 m!4536349))

(assert (=> d!1174739 d!1175053))

(assert (=> d!1174739 d!1175009))

(declare-fun d!1175055 () Bool)

(declare-fun c!688125 () Bool)

(assert (=> d!1175055 (= c!688125 ((_ is Nil!42275) lt!1388612))))

(declare-fun e!2456458 () (InoxSet C!23268))

(assert (=> d!1175055 (= (content!6421 lt!1388612) e!2456458)))

(declare-fun b!3966211 () Bool)

(assert (=> b!3966211 (= e!2456458 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966212 () Bool)

(assert (=> b!3966212 (= e!2456458 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388612) true) (content!6421 (t!330254 lt!1388612))))))

(assert (= (and d!1175055 c!688125) b!3966211))

(assert (= (and d!1175055 (not c!688125)) b!3966212))

(declare-fun m!4536351 () Bool)

(assert (=> b!3966212 m!4536351))

(declare-fun m!4536353 () Bool)

(assert (=> b!3966212 m!4536353))

(assert (=> d!1174739 d!1175055))

(declare-fun b!3966213 () Bool)

(declare-fun e!2456460 () Bool)

(declare-fun lt!1388978 () tuple2!41576)

(assert (=> b!3966213 (= e!2456460 (not (isEmpty!25297 (_1!23922 lt!1388978))))))

(declare-fun b!3966214 () Bool)

(declare-fun e!2456459 () tuple2!41576)

(assert (=> b!3966214 (= e!2456459 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388669))))))

(declare-fun b!3966215 () Bool)

(declare-fun lt!1388977 () Option!9056)

(declare-fun lt!1388979 () tuple2!41576)

(assert (=> b!3966215 (= e!2456459 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1388977)) (_1!23922 lt!1388979)) (_2!23922 lt!1388979)))))

(assert (=> b!3966215 (= lt!1388979 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388977))))))

(declare-fun b!3966217 () Bool)

(declare-fun e!2456461 () Bool)

(assert (=> b!3966217 (= e!2456461 e!2456460)))

(declare-fun res!1605488 () Bool)

(assert (=> b!3966217 (= res!1605488 (< (size!31647 (_2!23922 lt!1388978)) (size!31647 (_2!23921 (v!39401 lt!1388669)))))))

(assert (=> b!3966217 (=> (not res!1605488) (not e!2456460))))

(declare-fun b!3966216 () Bool)

(assert (=> b!3966216 (= e!2456461 (= (_2!23922 lt!1388978) (_2!23921 (v!39401 lt!1388669))))))

(declare-fun d!1175057 () Bool)

(assert (=> d!1175057 e!2456461))

(declare-fun c!688127 () Bool)

(assert (=> d!1175057 (= c!688127 (> (size!31648 (_1!23922 lt!1388978)) 0))))

(assert (=> d!1175057 (= lt!1388978 e!2456459)))

(declare-fun c!688126 () Bool)

(assert (=> d!1175057 (= c!688126 ((_ is Some!9055) lt!1388977))))

(assert (=> d!1175057 (= lt!1388977 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388669))))))

(assert (=> d!1175057 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388669))) lt!1388978)))

(assert (= (and d!1175057 c!688126) b!3966215))

(assert (= (and d!1175057 (not c!688126)) b!3966214))

(assert (= (and d!1175057 c!688127) b!3966217))

(assert (= (and d!1175057 (not c!688127)) b!3966216))

(assert (= (and b!3966217 res!1605488) b!3966213))

(declare-fun m!4536355 () Bool)

(assert (=> b!3966213 m!4536355))

(declare-fun m!4536357 () Bool)

(assert (=> b!3966215 m!4536357))

(declare-fun m!4536359 () Bool)

(assert (=> b!3966217 m!4536359))

(declare-fun m!4536361 () Bool)

(assert (=> b!3966217 m!4536361))

(declare-fun m!4536363 () Bool)

(assert (=> d!1175057 m!4536363))

(declare-fun m!4536365 () Bool)

(assert (=> d!1175057 m!4536365))

(assert (=> b!3965377 d!1175057))

(declare-fun d!1175059 () Bool)

(declare-fun charsToBigInt!0 (List!42400 Int) Int)

(assert (=> d!1175059 (= (inv!15 (value!209760 (h!47698 suffixTokens!72))) (= (charsToBigInt!0 (text!48511 (value!209760 (h!47698 suffixTokens!72))) 0) (value!209755 (value!209760 (h!47698 suffixTokens!72)))))))

(declare-fun bs!587445 () Bool)

(assert (= bs!587445 d!1175059))

(declare-fun m!4536367 () Bool)

(assert (=> bs!587445 m!4536367))

(assert (=> b!3965334 d!1175059))

(assert (=> b!3965553 d!1174637))

(assert (=> b!3965553 d!1174693))

(declare-fun d!1175061 () Bool)

(assert (=> d!1175061 (= (head!8450 lt!1388609) (h!47695 lt!1388609))))

(assert (=> b!3965394 d!1175061))

(declare-fun d!1175063 () Bool)

(assert (=> d!1175063 (= (head!8450 lt!1388595) (h!47695 lt!1388595))))

(assert (=> b!3965394 d!1175063))

(declare-fun d!1175065 () Bool)

(declare-fun lt!1388980 () Int)

(assert (=> d!1175065 (>= lt!1388980 0)))

(declare-fun e!2456462 () Int)

(assert (=> d!1175065 (= lt!1388980 e!2456462)))

(declare-fun c!688128 () Bool)

(assert (=> d!1175065 (= c!688128 ((_ is Nil!42278) lt!1388823))))

(assert (=> d!1175065 (= (size!31648 lt!1388823) lt!1388980)))

(declare-fun b!3966218 () Bool)

(assert (=> b!3966218 (= e!2456462 0)))

(declare-fun b!3966219 () Bool)

(assert (=> b!3966219 (= e!2456462 (+ 1 (size!31648 (t!330257 lt!1388823))))))

(assert (= (and d!1175065 c!688128) b!3966218))

(assert (= (and d!1175065 (not c!688128)) b!3966219))

(declare-fun m!4536369 () Bool)

(assert (=> b!3966219 m!4536369))

(assert (=> b!3965653 d!1175065))

(declare-fun d!1175067 () Bool)

(declare-fun lt!1388981 () Int)

(assert (=> d!1175067 (>= lt!1388981 0)))

(declare-fun e!2456463 () Int)

(assert (=> d!1175067 (= lt!1388981 e!2456463)))

(declare-fun c!688129 () Bool)

(assert (=> d!1175067 (= c!688129 ((_ is Nil!42278) lt!1388619))))

(assert (=> d!1175067 (= (size!31648 lt!1388619) lt!1388981)))

(declare-fun b!3966220 () Bool)

(assert (=> b!3966220 (= e!2456463 0)))

(declare-fun b!3966221 () Bool)

(assert (=> b!3966221 (= e!2456463 (+ 1 (size!31648 (t!330257 lt!1388619))))))

(assert (= (and d!1175067 c!688129) b!3966220))

(assert (= (and d!1175067 (not c!688129)) b!3966221))

(assert (=> b!3966221 m!4536183))

(assert (=> b!3965653 d!1175067))

(assert (=> b!3965653 d!1175045))

(declare-fun d!1175069 () Bool)

(assert (=> d!1175069 (= (_2!23921 (v!39401 lt!1388603)) lt!1388629)))

(assert (=> d!1175069 true))

(declare-fun _$63!1018 () Unit!60908)

(assert (=> d!1175069 (= (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388629 lt!1388630) _$63!1018)))

(assert (=> d!1174585 d!1175069))

(declare-fun b!3966222 () Bool)

(declare-fun e!2456466 () Bool)

(declare-fun e!2456464 () Bool)

(assert (=> b!3966222 (= e!2456466 e!2456464)))

(declare-fun res!1605491 () Bool)

(assert (=> b!3966222 (=> (not res!1605491) (not e!2456464))))

(assert (=> b!3966222 (= res!1605491 (not ((_ is Nil!42275) lt!1388630)))))

(declare-fun b!3966224 () Bool)

(assert (=> b!3966224 (= e!2456464 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 lt!1388630)))))

(declare-fun d!1175071 () Bool)

(declare-fun e!2456465 () Bool)

(assert (=> d!1175071 e!2456465))

(declare-fun res!1605492 () Bool)

(assert (=> d!1175071 (=> res!1605492 e!2456465)))

(declare-fun lt!1388982 () Bool)

(assert (=> d!1175071 (= res!1605492 (not lt!1388982))))

(assert (=> d!1175071 (= lt!1388982 e!2456466)))

(declare-fun res!1605490 () Bool)

(assert (=> d!1175071 (=> res!1605490 e!2456466)))

(assert (=> d!1175071 (= res!1605490 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175071 (= (isPrefix!3725 lt!1388609 lt!1388630) lt!1388982)))

(declare-fun b!3966225 () Bool)

(assert (=> b!3966225 (= e!2456465 (>= (size!31647 lt!1388630) (size!31647 lt!1388609)))))

(declare-fun b!3966223 () Bool)

(declare-fun res!1605489 () Bool)

(assert (=> b!3966223 (=> (not res!1605489) (not e!2456464))))

(assert (=> b!3966223 (= res!1605489 (= (head!8450 lt!1388609) (head!8450 lt!1388630)))))

(assert (= (and d!1175071 (not res!1605490)) b!3966222))

(assert (= (and b!3966222 res!1605491) b!3966223))

(assert (= (and b!3966223 res!1605489) b!3966224))

(assert (= (and d!1175071 (not res!1605492)) b!3966225))

(assert (=> b!3966224 m!4535151))

(assert (=> b!3966224 m!4535119))

(assert (=> b!3966224 m!4535151))

(assert (=> b!3966224 m!4535119))

(declare-fun m!4536371 () Bool)

(assert (=> b!3966224 m!4536371))

(assert (=> b!3966225 m!4534981))

(assert (=> b!3966225 m!4534889))

(assert (=> b!3966223 m!4535159))

(assert (=> b!3966223 m!4535405))

(assert (=> d!1174585 d!1175071))

(declare-fun d!1175073 () Bool)

(assert (=> d!1175073 (= (isEmpty!25296 (originalCharacters!7236 (h!47698 suffixTokens!72))) ((_ is Nil!42275) (originalCharacters!7236 (h!47698 suffixTokens!72))))))

(assert (=> d!1174659 d!1175073))

(declare-fun d!1175075 () Bool)

(declare-fun lt!1388983 () Int)

(assert (=> d!1175075 (>= lt!1388983 0)))

(declare-fun e!2456467 () Int)

(assert (=> d!1175075 (= lt!1388983 e!2456467)))

(declare-fun c!688130 () Bool)

(assert (=> d!1175075 (= c!688130 ((_ is Nil!42278) lt!1388825))))

(assert (=> d!1175075 (= (size!31648 lt!1388825) lt!1388983)))

(declare-fun b!3966226 () Bool)

(assert (=> b!3966226 (= e!2456467 0)))

(declare-fun b!3966227 () Bool)

(assert (=> b!3966227 (= e!2456467 (+ 1 (size!31648 (t!330257 lt!1388825))))))

(assert (= (and d!1175075 c!688130) b!3966226))

(assert (= (and d!1175075 (not c!688130)) b!3966227))

(declare-fun m!4536373 () Bool)

(assert (=> b!3966227 m!4536373))

(assert (=> b!3965661 d!1175075))

(declare-fun d!1175077 () Bool)

(declare-fun lt!1388984 () Int)

(assert (=> d!1175077 (>= lt!1388984 0)))

(declare-fun e!2456468 () Int)

(assert (=> d!1175077 (= lt!1388984 e!2456468)))

(declare-fun c!688131 () Bool)

(assert (=> d!1175077 (= c!688131 ((_ is Nil!42278) (++!11030 lt!1388619 lt!1388633)))))

(assert (=> d!1175077 (= (size!31648 (++!11030 lt!1388619 lt!1388633)) lt!1388984)))

(declare-fun b!3966228 () Bool)

(assert (=> b!3966228 (= e!2456468 0)))

(declare-fun b!3966229 () Bool)

(assert (=> b!3966229 (= e!2456468 (+ 1 (size!31648 (t!330257 (++!11030 lt!1388619 lt!1388633)))))))

(assert (= (and d!1175077 c!688131) b!3966228))

(assert (= (and d!1175077 (not c!688131)) b!3966229))

(declare-fun m!4536375 () Bool)

(assert (=> b!3966229 m!4536375))

(assert (=> b!3965661 d!1175077))

(assert (=> b!3965661 d!1175047))

(declare-fun b!3966232 () Bool)

(declare-fun res!1605493 () Bool)

(declare-fun e!2456470 () Bool)

(assert (=> b!3966232 (=> (not res!1605493) (not e!2456470))))

(declare-fun lt!1388985 () List!42399)

(assert (=> b!3966232 (= res!1605493 (= (size!31647 lt!1388985) (+ (size!31647 lt!1388609) (size!31647 (++!11029 lt!1388621 suffix!1176)))))))

(declare-fun b!3966233 () Bool)

(assert (=> b!3966233 (= e!2456470 (or (not (= (++!11029 lt!1388621 suffix!1176) Nil!42275)) (= lt!1388985 lt!1388609)))))

(declare-fun b!3966230 () Bool)

(declare-fun e!2456469 () List!42399)

(assert (=> b!3966230 (= e!2456469 (++!11029 lt!1388621 suffix!1176))))

(declare-fun d!1175079 () Bool)

(assert (=> d!1175079 e!2456470))

(declare-fun res!1605494 () Bool)

(assert (=> d!1175079 (=> (not res!1605494) (not e!2456470))))

(assert (=> d!1175079 (= res!1605494 (= (content!6421 lt!1388985) ((_ map or) (content!6421 lt!1388609) (content!6421 (++!11029 lt!1388621 suffix!1176)))))))

(assert (=> d!1175079 (= lt!1388985 e!2456469)))

(declare-fun c!688132 () Bool)

(assert (=> d!1175079 (= c!688132 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175079 (= (++!11029 lt!1388609 (++!11029 lt!1388621 suffix!1176)) lt!1388985)))

(declare-fun b!3966231 () Bool)

(assert (=> b!3966231 (= e!2456469 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) (++!11029 lt!1388621 suffix!1176))))))

(assert (= (and d!1175079 c!688132) b!3966230))

(assert (= (and d!1175079 (not c!688132)) b!3966231))

(assert (= (and d!1175079 res!1605494) b!3966232))

(assert (= (and b!3966232 res!1605493) b!3966233))

(declare-fun m!4536377 () Bool)

(assert (=> b!3966232 m!4536377))

(assert (=> b!3966232 m!4534889))

(assert (=> b!3966232 m!4534965))

(assert (=> b!3966232 m!4536317))

(declare-fun m!4536379 () Bool)

(assert (=> d!1175079 m!4536379))

(assert (=> d!1175079 m!4535127))

(assert (=> d!1175079 m!4534965))

(declare-fun m!4536381 () Bool)

(assert (=> d!1175079 m!4536381))

(assert (=> b!3966231 m!4534965))

(declare-fun m!4536383 () Bool)

(assert (=> b!3966231 m!4536383))

(assert (=> d!1174743 d!1175079))

(assert (=> d!1174743 d!1174741))

(declare-fun d!1175081 () Bool)

(assert (=> d!1175081 (= (++!11029 (++!11029 lt!1388609 lt!1388621) suffix!1176) (++!11029 lt!1388609 (++!11029 lt!1388621 suffix!1176)))))

(assert (=> d!1175081 true))

(declare-fun _$52!2234 () Unit!60908)

(assert (=> d!1175081 (= (choose!23733 lt!1388609 lt!1388621 suffix!1176) _$52!2234)))

(declare-fun bs!587446 () Bool)

(assert (= bs!587446 d!1175081))

(assert (=> bs!587446 m!4534971))

(assert (=> bs!587446 m!4534971))

(assert (=> bs!587446 m!4535509))

(assert (=> bs!587446 m!4534965))

(assert (=> bs!587446 m!4534965))

(assert (=> bs!587446 m!4535513))

(assert (=> d!1174743 d!1175081))

(declare-fun b!3966236 () Bool)

(declare-fun res!1605495 () Bool)

(declare-fun e!2456472 () Bool)

(assert (=> b!3966236 (=> (not res!1605495) (not e!2456472))))

(declare-fun lt!1388986 () List!42399)

(assert (=> b!3966236 (= res!1605495 (= (size!31647 lt!1388986) (+ (size!31647 (++!11029 lt!1388609 lt!1388621)) (size!31647 suffix!1176))))))

(declare-fun b!3966237 () Bool)

(assert (=> b!3966237 (= e!2456472 (or (not (= suffix!1176 Nil!42275)) (= lt!1388986 (++!11029 lt!1388609 lt!1388621))))))

(declare-fun b!3966234 () Bool)

(declare-fun e!2456471 () List!42399)

(assert (=> b!3966234 (= e!2456471 suffix!1176)))

(declare-fun d!1175083 () Bool)

(assert (=> d!1175083 e!2456472))

(declare-fun res!1605496 () Bool)

(assert (=> d!1175083 (=> (not res!1605496) (not e!2456472))))

(assert (=> d!1175083 (= res!1605496 (= (content!6421 lt!1388986) ((_ map or) (content!6421 (++!11029 lt!1388609 lt!1388621)) (content!6421 suffix!1176))))))

(assert (=> d!1175083 (= lt!1388986 e!2456471)))

(declare-fun c!688133 () Bool)

(assert (=> d!1175083 (= c!688133 ((_ is Nil!42275) (++!11029 lt!1388609 lt!1388621)))))

(assert (=> d!1175083 (= (++!11029 (++!11029 lt!1388609 lt!1388621) suffix!1176) lt!1388986)))

(declare-fun b!3966235 () Bool)

(assert (=> b!3966235 (= e!2456471 (Cons!42275 (h!47695 (++!11029 lt!1388609 lt!1388621)) (++!11029 (t!330254 (++!11029 lt!1388609 lt!1388621)) suffix!1176)))))

(assert (= (and d!1175083 c!688133) b!3966234))

(assert (= (and d!1175083 (not c!688133)) b!3966235))

(assert (= (and d!1175083 res!1605496) b!3966236))

(assert (= (and b!3966236 res!1605495) b!3966237))

(declare-fun m!4536385 () Bool)

(assert (=> b!3966236 m!4536385))

(assert (=> b!3966236 m!4534971))

(declare-fun m!4536387 () Bool)

(assert (=> b!3966236 m!4536387))

(assert (=> b!3966236 m!4534863))

(declare-fun m!4536389 () Bool)

(assert (=> d!1175083 m!4536389))

(assert (=> d!1175083 m!4534971))

(declare-fun m!4536391 () Bool)

(assert (=> d!1175083 m!4536391))

(assert (=> d!1175083 m!4535025))

(declare-fun m!4536393 () Bool)

(assert (=> b!3966235 m!4536393))

(assert (=> d!1174743 d!1175083))

(assert (=> d!1174743 d!1174679))

(declare-fun d!1175085 () Bool)

(assert (=> d!1175085 (and (= lt!1388609 lt!1388609) (= (_2!23921 (v!39401 lt!1388603)) (_2!23921 lt!1388585)))))

(assert (=> d!1175085 true))

(declare-fun _$50!379 () Unit!60908)

(assert (=> d!1175085 (= (choose!23718 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 (_2!23921 lt!1388585)) _$50!379)))

(assert (=> d!1174567 d!1175085))

(assert (=> d!1174567 d!1174593))

(declare-fun b!3966240 () Bool)

(declare-fun res!1605497 () Bool)

(declare-fun e!2456474 () Bool)

(assert (=> b!3966240 (=> (not res!1605497) (not e!2456474))))

(declare-fun lt!1388987 () List!42399)

(assert (=> b!3966240 (= res!1605497 (= (size!31647 lt!1388987) (+ (size!31647 lt!1388609) (size!31647 (_2!23921 lt!1388585)))))))

(declare-fun b!3966241 () Bool)

(assert (=> b!3966241 (= e!2456474 (or (not (= (_2!23921 lt!1388585) Nil!42275)) (= lt!1388987 lt!1388609)))))

(declare-fun b!3966238 () Bool)

(declare-fun e!2456473 () List!42399)

(assert (=> b!3966238 (= e!2456473 (_2!23921 lt!1388585))))

(declare-fun d!1175087 () Bool)

(assert (=> d!1175087 e!2456474))

(declare-fun res!1605498 () Bool)

(assert (=> d!1175087 (=> (not res!1605498) (not e!2456474))))

(assert (=> d!1175087 (= res!1605498 (= (content!6421 lt!1388987) ((_ map or) (content!6421 lt!1388609) (content!6421 (_2!23921 lt!1388585)))))))

(assert (=> d!1175087 (= lt!1388987 e!2456473)))

(declare-fun c!688134 () Bool)

(assert (=> d!1175087 (= c!688134 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175087 (= (++!11029 lt!1388609 (_2!23921 lt!1388585)) lt!1388987)))

(declare-fun b!3966239 () Bool)

(assert (=> b!3966239 (= e!2456473 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) (_2!23921 lt!1388585))))))

(assert (= (and d!1175087 c!688134) b!3966238))

(assert (= (and d!1175087 (not c!688134)) b!3966239))

(assert (= (and d!1175087 res!1605498) b!3966240))

(assert (= (and b!3966240 res!1605497) b!3966241))

(declare-fun m!4536395 () Bool)

(assert (=> b!3966240 m!4536395))

(assert (=> b!3966240 m!4534889))

(assert (=> b!3966240 m!4534987))

(declare-fun m!4536397 () Bool)

(assert (=> d!1175087 m!4536397))

(assert (=> d!1175087 m!4535127))

(declare-fun m!4536399 () Bool)

(assert (=> d!1175087 m!4536399))

(declare-fun m!4536401 () Bool)

(assert (=> b!3966239 m!4536401))

(assert (=> d!1174567 d!1175087))

(declare-fun d!1175089 () Bool)

(declare-fun lt!1388988 () Int)

(assert (=> d!1175089 (>= lt!1388988 0)))

(declare-fun e!2456475 () Int)

(assert (=> d!1175089 (= lt!1388988 e!2456475)))

(declare-fun c!688135 () Bool)

(assert (=> d!1175089 (= c!688135 ((_ is Nil!42275) (t!330254 lt!1388630)))))

(assert (=> d!1175089 (= (size!31647 (t!330254 lt!1388630)) lt!1388988)))

(declare-fun b!3966242 () Bool)

(assert (=> b!3966242 (= e!2456475 0)))

(declare-fun b!3966243 () Bool)

(assert (=> b!3966243 (= e!2456475 (+ 1 (size!31647 (t!330254 (t!330254 lt!1388630)))))))

(assert (= (and d!1175089 c!688135) b!3966242))

(assert (= (and d!1175089 (not c!688135)) b!3966243))

(declare-fun m!4536403 () Bool)

(assert (=> b!3966243 m!4536403))

(assert (=> b!3965487 d!1175089))

(declare-fun d!1175091 () Bool)

(declare-fun lt!1388989 () Int)

(assert (=> d!1175091 (>= lt!1388989 0)))

(declare-fun e!2456476 () Int)

(assert (=> d!1175091 (= lt!1388989 e!2456476)))

(declare-fun c!688136 () Bool)

(assert (=> d!1175091 (= c!688136 ((_ is Nil!42275) lt!1388780))))

(assert (=> d!1175091 (= (size!31647 lt!1388780) lt!1388989)))

(declare-fun b!3966244 () Bool)

(assert (=> b!3966244 (= e!2456476 0)))

(declare-fun b!3966245 () Bool)

(assert (=> b!3966245 (= e!2456476 (+ 1 (size!31647 (t!330254 lt!1388780))))))

(assert (= (and d!1175091 c!688136) b!3966244))

(assert (= (and d!1175091 (not c!688136)) b!3966245))

(declare-fun m!4536405 () Bool)

(assert (=> b!3966245 m!4536405))

(assert (=> b!3965582 d!1175091))

(declare-fun d!1175093 () Bool)

(declare-fun lt!1388990 () Int)

(assert (=> d!1175093 (>= lt!1388990 0)))

(declare-fun e!2456477 () Int)

(assert (=> d!1175093 (= lt!1388990 e!2456477)))

(declare-fun c!688137 () Bool)

(assert (=> d!1175093 (= c!688137 ((_ is Nil!42275) lt!1388607))))

(assert (=> d!1175093 (= (size!31647 lt!1388607) lt!1388990)))

(declare-fun b!3966246 () Bool)

(assert (=> b!3966246 (= e!2456477 0)))

(declare-fun b!3966247 () Bool)

(assert (=> b!3966247 (= e!2456477 (+ 1 (size!31647 (t!330254 lt!1388607))))))

(assert (= (and d!1175093 c!688137) b!3966246))

(assert (= (and d!1175093 (not c!688137)) b!3966247))

(declare-fun m!4536407 () Bool)

(assert (=> b!3966247 m!4536407))

(assert (=> b!3965582 d!1175093))

(assert (=> b!3965582 d!1174735))

(declare-fun d!1175095 () Bool)

(declare-fun lt!1388991 () Int)

(assert (=> d!1175095 (>= lt!1388991 0)))

(declare-fun e!2456478 () Int)

(assert (=> d!1175095 (= lt!1388991 e!2456478)))

(declare-fun c!688138 () Bool)

(assert (=> d!1175095 (= c!688138 ((_ is Nil!42275) (t!330254 (_2!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175095 (= (size!31647 (t!330254 (_2!23921 (v!39401 lt!1388603)))) lt!1388991)))

(declare-fun b!3966248 () Bool)

(assert (=> b!3966248 (= e!2456478 0)))

(declare-fun b!3966249 () Bool)

(assert (=> b!3966249 (= e!2456478 (+ 1 (size!31647 (t!330254 (t!330254 (_2!23921 (v!39401 lt!1388603)))))))))

(assert (= (and d!1175095 c!688138) b!3966248))

(assert (= (and d!1175095 (not c!688138)) b!3966249))

(declare-fun m!4536409 () Bool)

(assert (=> b!3966249 m!4536409))

(assert (=> b!3965594 d!1175095))

(declare-fun d!1175097 () Bool)

(declare-fun lt!1388992 () List!42399)

(assert (=> d!1175097 (= (++!11029 (t!330254 lt!1388609) lt!1388992) (tail!6182 lt!1388630))))

(declare-fun e!2456479 () List!42399)

(assert (=> d!1175097 (= lt!1388992 e!2456479)))

(declare-fun c!688139 () Bool)

(assert (=> d!1175097 (= c!688139 ((_ is Cons!42275) (t!330254 lt!1388609)))))

(assert (=> d!1175097 (>= (size!31647 (tail!6182 lt!1388630)) (size!31647 (t!330254 lt!1388609)))))

(assert (=> d!1175097 (= (getSuffix!2176 (tail!6182 lt!1388630) (t!330254 lt!1388609)) lt!1388992)))

(declare-fun b!3966250 () Bool)

(assert (=> b!3966250 (= e!2456479 (getSuffix!2176 (tail!6182 (tail!6182 lt!1388630)) (t!330254 (t!330254 lt!1388609))))))

(declare-fun b!3966251 () Bool)

(assert (=> b!3966251 (= e!2456479 (tail!6182 lt!1388630))))

(assert (= (and d!1175097 c!688139) b!3966250))

(assert (= (and d!1175097 (not c!688139)) b!3966251))

(declare-fun m!4536411 () Bool)

(assert (=> d!1175097 m!4536411))

(assert (=> d!1175097 m!4535119))

(declare-fun m!4536413 () Bool)

(assert (=> d!1175097 m!4536413))

(assert (=> d!1175097 m!4535163))

(assert (=> b!3966250 m!4535119))

(declare-fun m!4536415 () Bool)

(assert (=> b!3966250 m!4536415))

(assert (=> b!3966250 m!4536415))

(declare-fun m!4536417 () Bool)

(assert (=> b!3966250 m!4536417))

(assert (=> b!3965384 d!1175097))

(declare-fun d!1175099 () Bool)

(assert (=> d!1175099 (= (tail!6182 lt!1388630) (t!330254 lt!1388630))))

(assert (=> b!3965384 d!1175099))

(declare-fun b!3966254 () Bool)

(declare-fun res!1605499 () Bool)

(declare-fun e!2456481 () Bool)

(assert (=> b!3966254 (=> (not res!1605499) (not e!2456481))))

(declare-fun lt!1388993 () List!42399)

(assert (=> b!3966254 (= res!1605499 (= (size!31647 lt!1388993) (+ (size!31647 (t!330254 lt!1388609)) (size!31647 lt!1388612))))))

(declare-fun b!3966255 () Bool)

(assert (=> b!3966255 (= e!2456481 (or (not (= lt!1388612 Nil!42275)) (= lt!1388993 (t!330254 lt!1388609))))))

(declare-fun b!3966252 () Bool)

(declare-fun e!2456480 () List!42399)

(assert (=> b!3966252 (= e!2456480 lt!1388612)))

(declare-fun d!1175101 () Bool)

(assert (=> d!1175101 e!2456481))

(declare-fun res!1605500 () Bool)

(assert (=> d!1175101 (=> (not res!1605500) (not e!2456481))))

(assert (=> d!1175101 (= res!1605500 (= (content!6421 lt!1388993) ((_ map or) (content!6421 (t!330254 lt!1388609)) (content!6421 lt!1388612))))))

(assert (=> d!1175101 (= lt!1388993 e!2456480)))

(declare-fun c!688140 () Bool)

(assert (=> d!1175101 (= c!688140 ((_ is Nil!42275) (t!330254 lt!1388609)))))

(assert (=> d!1175101 (= (++!11029 (t!330254 lt!1388609) lt!1388612) lt!1388993)))

(declare-fun b!3966253 () Bool)

(assert (=> b!3966253 (= e!2456480 (Cons!42275 (h!47695 (t!330254 lt!1388609)) (++!11029 (t!330254 (t!330254 lt!1388609)) lt!1388612)))))

(assert (= (and d!1175101 c!688140) b!3966252))

(assert (= (and d!1175101 (not c!688140)) b!3966253))

(assert (= (and d!1175101 res!1605500) b!3966254))

(assert (= (and b!3966254 res!1605499) b!3966255))

(declare-fun m!4536419 () Bool)

(assert (=> b!3966254 m!4536419))

(assert (=> b!3966254 m!4535163))

(assert (=> b!3966254 m!4535067))

(declare-fun m!4536421 () Bool)

(assert (=> d!1175101 m!4536421))

(assert (=> d!1175101 m!4536167))

(assert (=> d!1175101 m!4535499))

(declare-fun m!4536423 () Bool)

(assert (=> b!3966253 m!4536423))

(assert (=> b!3965596 d!1175101))

(declare-fun d!1175103 () Bool)

(declare-fun lt!1388994 () Int)

(assert (=> d!1175103 (>= lt!1388994 0)))

(declare-fun e!2456482 () Int)

(assert (=> d!1175103 (= lt!1388994 e!2456482)))

(declare-fun c!688141 () Bool)

(assert (=> d!1175103 (= c!688141 ((_ is Nil!42275) (t!330254 suffix!1176)))))

(assert (=> d!1175103 (= (size!31647 (t!330254 suffix!1176)) lt!1388994)))

(declare-fun b!3966256 () Bool)

(assert (=> b!3966256 (= e!2456482 0)))

(declare-fun b!3966257 () Bool)

(assert (=> b!3966257 (= e!2456482 (+ 1 (size!31647 (t!330254 (t!330254 suffix!1176)))))))

(assert (= (and d!1175103 c!688141) b!3966256))

(assert (= (and d!1175103 (not c!688141)) b!3966257))

(declare-fun m!4536425 () Bool)

(assert (=> b!3966257 m!4536425))

(assert (=> b!3965592 d!1175103))

(declare-fun d!1175105 () Bool)

(declare-fun lt!1388995 () Int)

(assert (=> d!1175105 (>= lt!1388995 0)))

(declare-fun e!2456483 () Int)

(assert (=> d!1175105 (= lt!1388995 e!2456483)))

(declare-fun c!688142 () Bool)

(assert (=> d!1175105 (= c!688142 ((_ is Nil!42278) (_1!23922 lt!1388641)))))

(assert (=> d!1175105 (= (size!31648 (_1!23922 lt!1388641)) lt!1388995)))

(declare-fun b!3966258 () Bool)

(assert (=> b!3966258 (= e!2456483 0)))

(declare-fun b!3966259 () Bool)

(assert (=> b!3966259 (= e!2456483 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388641)))))))

(assert (= (and d!1175105 c!688142) b!3966258))

(assert (= (and d!1175105 (not c!688142)) b!3966259))

(declare-fun m!4536427 () Bool)

(assert (=> b!3966259 m!4536427))

(assert (=> d!1174557 d!1175105))

(assert (=> d!1174557 d!1174745))

(declare-fun d!1175107 () Bool)

(declare-fun lt!1388996 () Int)

(assert (=> d!1175107 (>= lt!1388996 0)))

(declare-fun e!2456484 () Int)

(assert (=> d!1175107 (= lt!1388996 e!2456484)))

(declare-fun c!688143 () Bool)

(assert (=> d!1175107 (= c!688143 ((_ is Nil!42275) (_2!23922 lt!1388688)))))

(assert (=> d!1175107 (= (size!31647 (_2!23922 lt!1388688)) lt!1388996)))

(declare-fun b!3966260 () Bool)

(assert (=> b!3966260 (= e!2456484 0)))

(declare-fun b!3966261 () Bool)

(assert (=> b!3966261 (= e!2456484 (+ 1 (size!31647 (t!330254 (_2!23922 lt!1388688)))))))

(assert (= (and d!1175107 c!688143) b!3966260))

(assert (= (and d!1175107 (not c!688143)) b!3966261))

(declare-fun m!4536429 () Bool)

(assert (=> b!3966261 m!4536429))

(assert (=> b!3965413 d!1175107))

(assert (=> b!3965413 d!1174961))

(declare-fun d!1175109 () Bool)

(declare-fun nullableFct!1140 (Regex!11541) Bool)

(assert (=> d!1175109 (= (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (nullableFct!1140 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun bs!587447 () Bool)

(assert (= bs!587447 d!1175109))

(declare-fun m!4536431 () Bool)

(assert (=> bs!587447 m!4536431))

(assert (=> b!3965407 d!1175109))

(assert (=> b!3965542 d!1175061))

(declare-fun d!1175111 () Bool)

(assert (=> d!1175111 (= (head!8450 prefix!426) (h!47695 prefix!426))))

(assert (=> b!3965542 d!1175111))

(declare-fun d!1175113 () Bool)

(assert (=> d!1175113 (= (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (= (mod (str.len (value!209759 (tag!7496 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3965704 d!1175113))

(declare-fun d!1175115 () Bool)

(declare-fun res!1605501 () Bool)

(declare-fun e!2456485 () Bool)

(assert (=> d!1175115 (=> (not res!1605501) (not e!2456485))))

(assert (=> d!1175115 (= res!1605501 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))))))

(assert (=> d!1175115 (= (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) e!2456485)))

(declare-fun b!3966262 () Bool)

(assert (=> b!3966262 (= e!2456485 (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))))))

(assert (= (and d!1175115 res!1605501) b!3966262))

(declare-fun m!4536433 () Bool)

(assert (=> d!1175115 m!4536433))

(declare-fun m!4536435 () Bool)

(assert (=> b!3966262 m!4536435))

(assert (=> b!3965704 d!1175115))

(declare-fun d!1175117 () Bool)

(declare-fun c!688144 () Bool)

(assert (=> d!1175117 (= c!688144 ((_ is Nil!42275) lt!1388780))))

(declare-fun e!2456486 () (InoxSet C!23268))

(assert (=> d!1175117 (= (content!6421 lt!1388780) e!2456486)))

(declare-fun b!3966263 () Bool)

(assert (=> b!3966263 (= e!2456486 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966264 () Bool)

(assert (=> b!3966264 (= e!2456486 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388780) true) (content!6421 (t!330254 lt!1388780))))))

(assert (= (and d!1175117 c!688144) b!3966263))

(assert (= (and d!1175117 (not c!688144)) b!3966264))

(declare-fun m!4536437 () Bool)

(assert (=> b!3966264 m!4536437))

(declare-fun m!4536439 () Bool)

(assert (=> b!3966264 m!4536439))

(assert (=> d!1174727 d!1175117))

(declare-fun d!1175119 () Bool)

(declare-fun c!688145 () Bool)

(assert (=> d!1175119 (= c!688145 ((_ is Nil!42275) lt!1388607))))

(declare-fun e!2456487 () (InoxSet C!23268))

(assert (=> d!1175119 (= (content!6421 lt!1388607) e!2456487)))

(declare-fun b!3966265 () Bool)

(assert (=> b!3966265 (= e!2456487 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966266 () Bool)

(assert (=> b!3966266 (= e!2456487 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388607) true) (content!6421 (t!330254 lt!1388607))))))

(assert (= (and d!1175119 c!688145) b!3966265))

(assert (= (and d!1175119 (not c!688145)) b!3966266))

(declare-fun m!4536441 () Bool)

(assert (=> b!3966266 m!4536441))

(declare-fun m!4536443 () Bool)

(assert (=> b!3966266 m!4536443))

(assert (=> d!1174727 d!1175119))

(declare-fun d!1175121 () Bool)

(declare-fun c!688146 () Bool)

(assert (=> d!1175121 (= c!688146 ((_ is Nil!42275) suffix!1176))))

(declare-fun e!2456488 () (InoxSet C!23268))

(assert (=> d!1175121 (= (content!6421 suffix!1176) e!2456488)))

(declare-fun b!3966267 () Bool)

(assert (=> b!3966267 (= e!2456488 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966268 () Bool)

(assert (=> b!3966268 (= e!2456488 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 suffix!1176) true) (content!6421 (t!330254 suffix!1176))))))

(assert (= (and d!1175121 c!688146) b!3966267))

(assert (= (and d!1175121 (not c!688146)) b!3966268))

(declare-fun m!4536445 () Bool)

(assert (=> b!3966268 m!4536445))

(declare-fun m!4536447 () Bool)

(assert (=> b!3966268 m!4536447))

(assert (=> d!1174727 d!1175121))

(declare-fun d!1175123 () Bool)

(declare-fun c!688147 () Bool)

(assert (=> d!1175123 (= c!688147 ((_ is Nil!42278) lt!1388658))))

(declare-fun e!2456489 () (InoxSet Token!12410))

(assert (=> d!1175123 (= (content!6420 lt!1388658) e!2456489)))

(declare-fun b!3966269 () Bool)

(assert (=> b!3966269 (= e!2456489 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966270 () Bool)

(assert (=> b!3966270 (= e!2456489 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388658) true) (content!6420 (t!330257 lt!1388658))))))

(assert (= (and d!1175123 c!688147) b!3966269))

(assert (= (and d!1175123 (not c!688147)) b!3966270))

(declare-fun m!4536449 () Bool)

(assert (=> b!3966270 m!4536449))

(declare-fun m!4536451 () Bool)

(assert (=> b!3966270 m!4536451))

(assert (=> d!1174573 d!1175123))

(declare-fun d!1175125 () Bool)

(declare-fun c!688148 () Bool)

(assert (=> d!1175125 (= c!688148 ((_ is Nil!42278) lt!1388633))))

(declare-fun e!2456490 () (InoxSet Token!12410))

(assert (=> d!1175125 (= (content!6420 lt!1388633) e!2456490)))

(declare-fun b!3966271 () Bool)

(assert (=> b!3966271 (= e!2456490 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966272 () Bool)

(assert (=> b!3966272 (= e!2456490 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388633) true) (content!6420 (t!330257 lt!1388633))))))

(assert (= (and d!1175125 c!688148) b!3966271))

(assert (= (and d!1175125 (not c!688148)) b!3966272))

(declare-fun m!4536453 () Bool)

(assert (=> b!3966272 m!4536453))

(declare-fun m!4536455 () Bool)

(assert (=> b!3966272 m!4536455))

(assert (=> d!1174573 d!1175125))

(assert (=> d!1174573 d!1175023))

(assert (=> d!1174569 d!1174565))

(declare-fun d!1175127 () Bool)

(assert (=> d!1175127 (not (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 lt!1388585)) (tuple2!41577 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1175127 true))

(declare-fun _$44!1339 () Unit!60908)

(assert (=> d!1175127 (= (choose!23719 thiss!20629 rules!2768 suffix!1176 (_2!23921 lt!1388585) suffixTokens!72 suffixResult!91) _$44!1339)))

(declare-fun bs!587448 () Bool)

(assert (= bs!587448 d!1175127))

(assert (=> bs!587448 m!4534917))

(assert (=> d!1174569 d!1175127))

(assert (=> d!1174569 d!1174683))

(assert (=> b!3965479 d!1174967))

(declare-fun d!1175129 () Bool)

(assert (=> d!1175129 (= (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712))))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712))))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712))))))))

(declare-fun b_lambda!115961 () Bool)

(assert (=> (not b_lambda!115961) (not d!1175129)))

(declare-fun t!330394 () Bool)

(declare-fun tb!239253 () Bool)

(assert (=> (and b!3965251 (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330394) tb!239253))

(declare-fun result!289734 () Bool)

(assert (=> tb!239253 (= result!289734 (inv!21 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712))))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))))))))

(declare-fun m!4536457 () Bool)

(assert (=> tb!239253 m!4536457))

(assert (=> d!1175129 t!330394))

(declare-fun b_and!304675 () Bool)

(assert (= b_and!304581 (and (=> t!330394 result!289734) b_and!304675)))

(declare-fun tb!239255 () Bool)

(declare-fun t!330396 () Bool)

(assert (=> (and b!3965265 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330396) tb!239255))

(declare-fun result!289736 () Bool)

(assert (= result!289736 result!289734))

(assert (=> d!1175129 t!330396))

(declare-fun b_and!304677 () Bool)

(assert (= b_and!304579 (and (=> t!330396 result!289736) b_and!304677)))

(declare-fun tb!239257 () Bool)

(declare-fun t!330398 () Bool)

(assert (=> (and b!3965701 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330398) tb!239257))

(declare-fun result!289738 () Bool)

(assert (= result!289738 result!289734))

(assert (=> d!1175129 t!330398))

(declare-fun b_and!304679 () Bool)

(assert (= b_and!304615 (and (=> t!330398 result!289738) b_and!304679)))

(declare-fun tb!239259 () Bool)

(declare-fun t!330400 () Bool)

(assert (=> (and b!3965280 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330400) tb!239259))

(declare-fun result!289740 () Bool)

(assert (= result!289740 result!289734))

(assert (=> d!1175129 t!330400))

(declare-fun b_and!304681 () Bool)

(assert (= b_and!304583 (and (=> t!330400 result!289740) b_and!304681)))

(declare-fun t!330402 () Bool)

(declare-fun tb!239261 () Bool)

(assert (=> (and b!3965705 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330402) tb!239261))

(declare-fun result!289742 () Bool)

(assert (= result!289742 result!289734))

(assert (=> d!1175129 t!330402))

(declare-fun b_and!304683 () Bool)

(assert (= b_and!304619 (and (=> t!330402 result!289742) b_and!304683)))

(declare-fun tb!239263 () Bool)

(declare-fun t!330404 () Bool)

(assert (=> (and b!3965724 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330404) tb!239263))

(declare-fun result!289744 () Bool)

(assert (= result!289744 result!289734))

(assert (=> d!1175129 t!330404))

(declare-fun b_and!304685 () Bool)

(assert (= b_and!304623 (and (=> t!330404 result!289744) b_and!304685)))

(assert (=> d!1175129 m!4535231))

(declare-fun m!4536459 () Bool)

(assert (=> d!1175129 m!4536459))

(assert (=> b!3965479 d!1175129))

(declare-fun d!1175131 () Bool)

(assert (=> d!1175131 (= (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))) (fromListB!2259 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))))))

(declare-fun bs!587449 () Bool)

(assert (= bs!587449 d!1175131))

(declare-fun m!4536461 () Bool)

(assert (=> bs!587449 m!4536461))

(assert (=> b!3965479 d!1175131))

(declare-fun d!1175133 () Bool)

(declare-fun lt!1388997 () Int)

(assert (=> d!1175133 (>= lt!1388997 0)))

(declare-fun e!2456492 () Int)

(assert (=> d!1175133 (= lt!1388997 e!2456492)))

(declare-fun c!688149 () Bool)

(assert (=> d!1175133 (= c!688149 ((_ is Nil!42278) (_1!23922 lt!1388650)))))

(assert (=> d!1175133 (= (size!31648 (_1!23922 lt!1388650)) lt!1388997)))

(declare-fun b!3966273 () Bool)

(assert (=> b!3966273 (= e!2456492 0)))

(declare-fun b!3966274 () Bool)

(assert (=> b!3966274 (= e!2456492 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388650)))))))

(assert (= (and d!1175133 c!688149) b!3966273))

(assert (= (and d!1175133 (not c!688149)) b!3966274))

(declare-fun m!4536463 () Bool)

(assert (=> b!3966274 m!4536463))

(assert (=> d!1174565 d!1175133))

(declare-fun b!3966275 () Bool)

(declare-fun res!1605507 () Bool)

(declare-fun e!2456493 () Bool)

(assert (=> b!3966275 (=> (not res!1605507) (not e!2456493))))

(declare-fun lt!1388999 () Option!9056)

(assert (=> b!3966275 (= res!1605507 (< (size!31647 (_2!23921 (get!13944 lt!1388999))) (size!31647 (_2!23921 lt!1388585))))))

(declare-fun b!3966276 () Bool)

(declare-fun res!1605508 () Bool)

(assert (=> b!3966276 (=> (not res!1605508) (not e!2456493))))

(assert (=> b!3966276 (= res!1605508 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388999)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388999))))))))

(declare-fun b!3966277 () Bool)

(declare-fun e!2456494 () Option!9056)

(declare-fun lt!1389001 () Option!9056)

(declare-fun lt!1389000 () Option!9056)

(assert (=> b!3966277 (= e!2456494 (ite (and ((_ is None!9055) lt!1389001) ((_ is None!9055) lt!1389000)) None!9055 (ite ((_ is None!9055) lt!1389000) lt!1389001 (ite ((_ is None!9055) lt!1389001) lt!1389000 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1389001))) (size!31646 (_1!23921 (v!39401 lt!1389000)))) lt!1389001 lt!1389000)))))))

(declare-fun call!285496 () Option!9056)

(assert (=> b!3966277 (= lt!1389001 call!285496)))

(assert (=> b!3966277 (= lt!1389000 (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) (_2!23921 lt!1388585)))))

(declare-fun d!1175135 () Bool)

(declare-fun e!2456495 () Bool)

(assert (=> d!1175135 e!2456495))

(declare-fun res!1605502 () Bool)

(assert (=> d!1175135 (=> res!1605502 e!2456495)))

(assert (=> d!1175135 (= res!1605502 (isEmpty!25299 lt!1388999))))

(assert (=> d!1175135 (= lt!1388999 e!2456494)))

(declare-fun c!688150 () Bool)

(assert (=> d!1175135 (= c!688150 (and ((_ is Cons!42277) rules!2768) ((_ is Nil!42277) (t!330256 rules!2768))))))

(declare-fun lt!1388998 () Unit!60908)

(declare-fun lt!1389002 () Unit!60908)

(assert (=> d!1175135 (= lt!1388998 lt!1389002)))

(assert (=> d!1175135 (isPrefix!3725 (_2!23921 lt!1388585) (_2!23921 lt!1388585))))

(assert (=> d!1175135 (= lt!1389002 (lemmaIsPrefixRefl!2347 (_2!23921 lt!1388585) (_2!23921 lt!1388585)))))

(assert (=> d!1175135 (rulesValidInductive!2405 thiss!20629 rules!2768)))

(assert (=> d!1175135 (= (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 lt!1388585)) lt!1388999)))

(declare-fun b!3966278 () Bool)

(assert (=> b!3966278 (= e!2456493 (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1388999)))))))

(declare-fun b!3966279 () Bool)

(declare-fun res!1605504 () Bool)

(assert (=> b!3966279 (=> (not res!1605504) (not e!2456493))))

(assert (=> b!3966279 (= res!1605504 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388999)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388999)))))))

(declare-fun bm!285491 () Bool)

(assert (=> bm!285491 (= call!285496 (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) (_2!23921 lt!1388585)))))

(declare-fun b!3966280 () Bool)

(declare-fun res!1605505 () Bool)

(assert (=> b!3966280 (=> (not res!1605505) (not e!2456493))))

(assert (=> b!3966280 (= res!1605505 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388999)))) (_2!23921 (get!13944 lt!1388999))) (_2!23921 lt!1388585)))))

(declare-fun b!3966281 () Bool)

(declare-fun res!1605503 () Bool)

(assert (=> b!3966281 (=> (not res!1605503) (not e!2456493))))

(assert (=> b!3966281 (= res!1605503 (= (value!209760 (_1!23921 (get!13944 lt!1388999))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388999)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388999)))))))))

(declare-fun b!3966282 () Bool)

(assert (=> b!3966282 (= e!2456494 call!285496)))

(declare-fun b!3966283 () Bool)

(assert (=> b!3966283 (= e!2456495 e!2456493)))

(declare-fun res!1605506 () Bool)

(assert (=> b!3966283 (=> (not res!1605506) (not e!2456493))))

(assert (=> b!3966283 (= res!1605506 (isDefined!7006 lt!1388999))))

(assert (= (and d!1175135 c!688150) b!3966282))

(assert (= (and d!1175135 (not c!688150)) b!3966277))

(assert (= (or b!3966282 b!3966277) bm!285491))

(assert (= (and d!1175135 (not res!1605502)) b!3966283))

(assert (= (and b!3966283 res!1605506) b!3966279))

(assert (= (and b!3966279 res!1605504) b!3966275))

(assert (= (and b!3966275 res!1605507) b!3966280))

(assert (= (and b!3966280 res!1605505) b!3966281))

(assert (= (and b!3966281 res!1605503) b!3966276))

(assert (= (and b!3966276 res!1605508) b!3966278))

(declare-fun m!4536465 () Bool)

(assert (=> b!3966279 m!4536465))

(declare-fun m!4536467 () Bool)

(assert (=> b!3966279 m!4536467))

(assert (=> b!3966279 m!4536467))

(declare-fun m!4536469 () Bool)

(assert (=> b!3966279 m!4536469))

(assert (=> b!3966275 m!4536465))

(declare-fun m!4536471 () Bool)

(assert (=> b!3966275 m!4536471))

(assert (=> b!3966275 m!4534987))

(declare-fun m!4536473 () Bool)

(assert (=> b!3966277 m!4536473))

(declare-fun m!4536475 () Bool)

(assert (=> b!3966283 m!4536475))

(assert (=> b!3966280 m!4536465))

(assert (=> b!3966280 m!4536467))

(assert (=> b!3966280 m!4536467))

(assert (=> b!3966280 m!4536469))

(assert (=> b!3966280 m!4536469))

(declare-fun m!4536477 () Bool)

(assert (=> b!3966280 m!4536477))

(assert (=> b!3966278 m!4536465))

(declare-fun m!4536479 () Bool)

(assert (=> b!3966278 m!4536479))

(assert (=> b!3966276 m!4536465))

(assert (=> b!3966276 m!4536467))

(assert (=> b!3966276 m!4536467))

(assert (=> b!3966276 m!4536469))

(assert (=> b!3966276 m!4536469))

(declare-fun m!4536481 () Bool)

(assert (=> b!3966276 m!4536481))

(assert (=> b!3966281 m!4536465))

(declare-fun m!4536483 () Bool)

(assert (=> b!3966281 m!4536483))

(assert (=> b!3966281 m!4536483))

(declare-fun m!4536485 () Bool)

(assert (=> b!3966281 m!4536485))

(declare-fun m!4536487 () Bool)

(assert (=> bm!285491 m!4536487))

(declare-fun m!4536489 () Bool)

(assert (=> d!1175135 m!4536489))

(declare-fun m!4536491 () Bool)

(assert (=> d!1175135 m!4536491))

(declare-fun m!4536493 () Bool)

(assert (=> d!1175135 m!4536493))

(assert (=> d!1175135 m!4535581))

(assert (=> d!1174565 d!1175135))

(declare-fun d!1175137 () Bool)

(declare-fun lt!1389003 () Bool)

(assert (=> d!1175137 (= lt!1389003 (select (content!6424 rules!2768) (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))

(declare-fun e!2456496 () Bool)

(assert (=> d!1175137 (= lt!1389003 e!2456496)))

(declare-fun res!1605510 () Bool)

(assert (=> d!1175137 (=> (not res!1605510) (not e!2456496))))

(assert (=> d!1175137 (= res!1605510 ((_ is Cons!42277) rules!2768))))

(assert (=> d!1175137 (= (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) lt!1389003)))

(declare-fun b!3966284 () Bool)

(declare-fun e!2456497 () Bool)

(assert (=> b!3966284 (= e!2456496 e!2456497)))

(declare-fun res!1605509 () Bool)

(assert (=> b!3966284 (=> res!1605509 e!2456497)))

(assert (=> b!3966284 (= res!1605509 (= (h!47697 rules!2768) (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))

(declare-fun b!3966285 () Bool)

(assert (=> b!3966285 (= e!2456497 (contains!8435 (t!330256 rules!2768) (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))

(assert (= (and d!1175137 res!1605510) b!3966284))

(assert (= (and b!3966284 (not res!1605509)) b!3966285))

(assert (=> d!1175137 m!4536153))

(declare-fun m!4536495 () Bool)

(assert (=> d!1175137 m!4536495))

(declare-fun m!4536497 () Bool)

(assert (=> b!3966285 m!4536497))

(assert (=> b!3965638 d!1175137))

(assert (=> b!3965638 d!1174957))

(declare-fun d!1175139 () Bool)

(assert (=> d!1175139 true))

(declare-fun lambda!126810 () Int)

(declare-fun order!22399 () Int)

(declare-fun order!22401 () Int)

(declare-fun dynLambda!18048 (Int Int) Int)

(declare-fun dynLambda!18049 (Int Int) Int)

(assert (=> d!1175139 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (dynLambda!18049 order!22401 lambda!126810))))

(declare-fun Forall2!1061 (Int) Bool)

(assert (=> d!1175139 (= (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (Forall2!1061 lambda!126810))))

(declare-fun bs!587450 () Bool)

(assert (= bs!587450 d!1175139))

(declare-fun m!4536499 () Bool)

(assert (=> bs!587450 m!4536499))

(assert (=> b!3965520 d!1175139))

(declare-fun d!1175141 () Bool)

(assert (=> d!1175141 (= (isEmpty!25297 (_1!23922 lt!1388688)) ((_ is Nil!42278) (_1!23922 lt!1388688)))))

(assert (=> b!3965409 d!1175141))

(declare-fun b!3966290 () Bool)

(declare-fun e!2456501 () Bool)

(declare-fun lt!1389005 () tuple2!41576)

(assert (=> b!3966290 (= e!2456501 (not (isEmpty!25297 (_1!23922 lt!1389005))))))

(declare-fun b!3966291 () Bool)

(declare-fun e!2456500 () tuple2!41576)

(assert (=> b!3966291 (= e!2456500 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388820))))))

(declare-fun b!3966292 () Bool)

(declare-fun lt!1389004 () Option!9056)

(declare-fun lt!1389006 () tuple2!41576)

(assert (=> b!3966292 (= e!2456500 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1389004)) (_1!23922 lt!1389006)) (_2!23922 lt!1389006)))))

(assert (=> b!3966292 (= lt!1389006 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1389004))))))

(declare-fun b!3966294 () Bool)

(declare-fun e!2456502 () Bool)

(assert (=> b!3966294 (= e!2456502 e!2456501)))

(declare-fun res!1605513 () Bool)

(assert (=> b!3966294 (= res!1605513 (< (size!31647 (_2!23922 lt!1389005)) (size!31647 (_2!23921 (v!39401 lt!1388820)))))))

(assert (=> b!3966294 (=> (not res!1605513) (not e!2456501))))

(declare-fun b!3966293 () Bool)

(assert (=> b!3966293 (= e!2456502 (= (_2!23922 lt!1389005) (_2!23921 (v!39401 lt!1388820))))))

(declare-fun d!1175143 () Bool)

(assert (=> d!1175143 e!2456502))

(declare-fun c!688152 () Bool)

(assert (=> d!1175143 (= c!688152 (> (size!31648 (_1!23922 lt!1389005)) 0))))

(assert (=> d!1175143 (= lt!1389005 e!2456500)))

(declare-fun c!688151 () Bool)

(assert (=> d!1175143 (= c!688151 ((_ is Some!9055) lt!1389004))))

(assert (=> d!1175143 (= lt!1389004 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388820))))))

(assert (=> d!1175143 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388820))) lt!1389005)))

(assert (= (and d!1175143 c!688151) b!3966292))

(assert (= (and d!1175143 (not c!688151)) b!3966291))

(assert (= (and d!1175143 c!688152) b!3966294))

(assert (= (and d!1175143 (not c!688152)) b!3966293))

(assert (= (and b!3966294 res!1605513) b!3966290))

(declare-fun m!4536501 () Bool)

(assert (=> b!3966290 m!4536501))

(declare-fun m!4536503 () Bool)

(assert (=> b!3966292 m!4536503))

(declare-fun m!4536505 () Bool)

(assert (=> b!3966294 m!4536505))

(declare-fun m!4536507 () Bool)

(assert (=> b!3966294 m!4536507))

(declare-fun m!4536509 () Bool)

(assert (=> d!1175143 m!4536509))

(declare-fun m!4536511 () Bool)

(assert (=> d!1175143 m!4536511))

(assert (=> b!3965647 d!1175143))

(declare-fun d!1175145 () Bool)

(assert (=> d!1175145 (= (_2!23921 (v!39401 lt!1388603)) suffix!1176)))

(assert (=> d!1175145 true))

(declare-fun _$63!1019 () Unit!60908)

(assert (=> d!1175145 (= (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) prefix!426 suffix!1176 lt!1388630) _$63!1019)))

(assert (=> d!1174713 d!1175145))

(assert (=> d!1174713 d!1175071))

(declare-fun d!1175147 () Bool)

(declare-fun c!688153 () Bool)

(assert (=> d!1175147 (= c!688153 ((_ is Nil!42278) lt!1388823))))

(declare-fun e!2456503 () (InoxSet Token!12410))

(assert (=> d!1175147 (= (content!6420 lt!1388823) e!2456503)))

(declare-fun b!3966295 () Bool)

(assert (=> b!3966295 (= e!2456503 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966296 () Bool)

(assert (=> b!3966296 (= e!2456503 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388823) true) (content!6420 (t!330257 lt!1388823))))))

(assert (= (and d!1175147 c!688153) b!3966295))

(assert (= (and d!1175147 (not c!688153)) b!3966296))

(declare-fun m!4536513 () Bool)

(assert (=> b!3966296 m!4536513))

(declare-fun m!4536515 () Bool)

(assert (=> b!3966296 m!4536515))

(assert (=> d!1174787 d!1175147))

(assert (=> d!1174787 d!1175015))

(assert (=> d!1174787 d!1175125))

(declare-fun d!1175149 () Bool)

(declare-fun c!688154 () Bool)

(assert (=> d!1175149 (= c!688154 ((_ is Nil!42278) lt!1388825))))

(declare-fun e!2456504 () (InoxSet Token!12410))

(assert (=> d!1175149 (= (content!6420 lt!1388825) e!2456504)))

(declare-fun b!3966297 () Bool)

(assert (=> b!3966297 (= e!2456504 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966298 () Bool)

(assert (=> b!3966298 (= e!2456504 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388825) true) (content!6420 (t!330257 lt!1388825))))))

(assert (= (and d!1175149 c!688154) b!3966297))

(assert (= (and d!1175149 (not c!688154)) b!3966298))

(declare-fun m!4536517 () Bool)

(assert (=> b!3966298 m!4536517))

(declare-fun m!4536519 () Bool)

(assert (=> b!3966298 m!4536519))

(assert (=> d!1174793 d!1175149))

(declare-fun d!1175151 () Bool)

(declare-fun c!688155 () Bool)

(assert (=> d!1175151 (= c!688155 ((_ is Nil!42278) (++!11030 lt!1388619 lt!1388633)))))

(declare-fun e!2456505 () (InoxSet Token!12410))

(assert (=> d!1175151 (= (content!6420 (++!11030 lt!1388619 lt!1388633)) e!2456505)))

(declare-fun b!3966299 () Bool)

(assert (=> b!3966299 (= e!2456505 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966300 () Bool)

(assert (=> b!3966300 (= e!2456505 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 (++!11030 lt!1388619 lt!1388633)) true) (content!6420 (t!330257 (++!11030 lt!1388619 lt!1388633)))))))

(assert (= (and d!1175151 c!688155) b!3966299))

(assert (= (and d!1175151 (not c!688155)) b!3966300))

(declare-fun m!4536521 () Bool)

(assert (=> b!3966300 m!4536521))

(declare-fun m!4536523 () Bool)

(assert (=> b!3966300 m!4536523))

(assert (=> d!1174793 d!1175151))

(assert (=> d!1174793 d!1175023))

(declare-fun d!1175153 () Bool)

(declare-fun lt!1389007 () Int)

(assert (=> d!1175153 (>= lt!1389007 0)))

(declare-fun e!2456506 () Int)

(assert (=> d!1175153 (= lt!1389007 e!2456506)))

(declare-fun c!688156 () Bool)

(assert (=> d!1175153 (= c!688156 ((_ is Nil!42275) lt!1388786))))

(assert (=> d!1175153 (= (size!31647 lt!1388786) lt!1389007)))

(declare-fun b!3966301 () Bool)

(assert (=> b!3966301 (= e!2456506 0)))

(declare-fun b!3966302 () Bool)

(assert (=> b!3966302 (= e!2456506 (+ 1 (size!31647 (t!330254 lt!1388786))))))

(assert (= (and d!1175153 c!688156) b!3966301))

(assert (= (and d!1175153 (not c!688156)) b!3966302))

(declare-fun m!4536525 () Bool)

(assert (=> b!3966302 m!4536525))

(assert (=> b!3965601 d!1175153))

(assert (=> b!3965601 d!1174799))

(assert (=> b!3965601 d!1174735))

(declare-fun b!3966305 () Bool)

(declare-fun res!1605514 () Bool)

(declare-fun e!2456508 () Bool)

(assert (=> b!3966305 (=> (not res!1605514) (not e!2456508))))

(declare-fun lt!1389008 () List!42399)

(assert (=> b!3966305 (= res!1605514 (= (size!31647 lt!1389008) (+ (size!31647 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (size!31647 (_2!23921 (get!13944 lt!1388712))))))))

(declare-fun b!3966306 () Bool)

(assert (=> b!3966306 (= e!2456508 (or (not (= (_2!23921 (get!13944 lt!1388712)) Nil!42275)) (= lt!1389008 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))))))))

(declare-fun b!3966303 () Bool)

(declare-fun e!2456507 () List!42399)

(assert (=> b!3966303 (= e!2456507 (_2!23921 (get!13944 lt!1388712)))))

(declare-fun d!1175155 () Bool)

(assert (=> d!1175155 e!2456508))

(declare-fun res!1605515 () Bool)

(assert (=> d!1175155 (=> (not res!1605515) (not e!2456508))))

(assert (=> d!1175155 (= res!1605515 (= (content!6421 lt!1389008) ((_ map or) (content!6421 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (content!6421 (_2!23921 (get!13944 lt!1388712))))))))

(assert (=> d!1175155 (= lt!1389008 e!2456507)))

(declare-fun c!688157 () Bool)

(assert (=> d!1175155 (= c!688157 ((_ is Nil!42275) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))

(assert (=> d!1175155 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))) (_2!23921 (get!13944 lt!1388712))) lt!1389008)))

(declare-fun b!3966304 () Bool)

(assert (=> b!3966304 (= e!2456507 (Cons!42275 (h!47695 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (++!11029 (t!330254 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (_2!23921 (get!13944 lt!1388712)))))))

(assert (= (and d!1175155 c!688157) b!3966303))

(assert (= (and d!1175155 (not c!688157)) b!3966304))

(assert (= (and d!1175155 res!1605515) b!3966305))

(assert (= (and b!3966305 res!1605514) b!3966306))

(declare-fun m!4536527 () Bool)

(assert (=> b!3966305 m!4536527))

(assert (=> b!3966305 m!4535267))

(declare-fun m!4536529 () Bool)

(assert (=> b!3966305 m!4536529))

(assert (=> b!3966305 m!4535249))

(declare-fun m!4536531 () Bool)

(assert (=> d!1175155 m!4536531))

(assert (=> d!1175155 m!4535267))

(declare-fun m!4536533 () Bool)

(assert (=> d!1175155 m!4536533))

(declare-fun m!4536535 () Bool)

(assert (=> d!1175155 m!4536535))

(declare-fun m!4536537 () Bool)

(assert (=> b!3966304 m!4536537))

(assert (=> b!3965475 d!1175155))

(declare-fun d!1175157 () Bool)

(assert (=> d!1175157 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))) (list!15689 (c!687924 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))

(declare-fun bs!587451 () Bool)

(assert (= bs!587451 d!1175157))

(declare-fun m!4536539 () Bool)

(assert (=> bs!587451 m!4536539))

(assert (=> b!3965475 d!1175157))

(declare-fun d!1175159 () Bool)

(declare-fun lt!1389009 () BalanceConc!25288)

(assert (=> d!1175159 (= (list!15688 lt!1389009) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712))))))

(assert (=> d!1175159 (= lt!1389009 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712))))) (value!209760 (_1!23921 (get!13944 lt!1388712)))))))

(assert (=> d!1175159 (= (charsOf!4454 (_1!23921 (get!13944 lt!1388712))) lt!1389009)))

(declare-fun b_lambda!115963 () Bool)

(assert (=> (not b_lambda!115963) (not d!1175159)))

(declare-fun t!330406 () Bool)

(declare-fun tb!239265 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330406) tb!239265))

(declare-fun b!3966307 () Bool)

(declare-fun e!2456509 () Bool)

(declare-fun tp!1208780 () Bool)

(assert (=> b!3966307 (= e!2456509 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712))))) (value!209760 (_1!23921 (get!13944 lt!1388712)))))) tp!1208780))))

(declare-fun result!289746 () Bool)

(assert (=> tb!239265 (= result!289746 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712))))) (value!209760 (_1!23921 (get!13944 lt!1388712))))) e!2456509))))

(assert (= tb!239265 b!3966307))

(declare-fun m!4536541 () Bool)

(assert (=> b!3966307 m!4536541))

(declare-fun m!4536543 () Bool)

(assert (=> tb!239265 m!4536543))

(assert (=> d!1175159 t!330406))

(declare-fun b_and!304687 () Bool)

(assert (= b_and!304667 (and (=> t!330406 result!289746) b_and!304687)))

(declare-fun t!330408 () Bool)

(declare-fun tb!239267 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330408) tb!239267))

(declare-fun result!289748 () Bool)

(assert (= result!289748 result!289746))

(assert (=> d!1175159 t!330408))

(declare-fun b_and!304689 () Bool)

(assert (= b_and!304663 (and (=> t!330408 result!289748) b_and!304689)))

(declare-fun tb!239269 () Bool)

(declare-fun t!330410 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330410) tb!239269))

(declare-fun result!289750 () Bool)

(assert (= result!289750 result!289746))

(assert (=> d!1175159 t!330410))

(declare-fun b_and!304691 () Bool)

(assert (= b_and!304665 (and (=> t!330410 result!289750) b_and!304691)))

(declare-fun tb!239271 () Bool)

(declare-fun t!330412 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330412) tb!239271))

(declare-fun result!289752 () Bool)

(assert (= result!289752 result!289746))

(assert (=> d!1175159 t!330412))

(declare-fun b_and!304693 () Bool)

(assert (= b_and!304671 (and (=> t!330412 result!289752) b_and!304693)))

(declare-fun tb!239273 () Bool)

(declare-fun t!330414 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330414) tb!239273))

(declare-fun result!289754 () Bool)

(assert (= result!289754 result!289746))

(assert (=> d!1175159 t!330414))

(declare-fun b_and!304695 () Bool)

(assert (= b_and!304669 (and (=> t!330414 result!289754) b_and!304695)))

(declare-fun t!330416 () Bool)

(declare-fun tb!239275 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330416) tb!239275))

(declare-fun result!289756 () Bool)

(assert (= result!289756 result!289746))

(assert (=> d!1175159 t!330416))

(declare-fun b_and!304697 () Bool)

(assert (= b_and!304673 (and (=> t!330416 result!289756) b_and!304697)))

(declare-fun m!4536545 () Bool)

(assert (=> d!1175159 m!4536545))

(declare-fun m!4536547 () Bool)

(assert (=> d!1175159 m!4536547))

(assert (=> b!3965475 d!1175159))

(assert (=> b!3965475 d!1174967))

(declare-fun d!1175161 () Bool)

(assert (=> d!1175161 (= (isEmpty!25299 lt!1388712) (not ((_ is Some!9055) lt!1388712)))))

(assert (=> d!1174615 d!1175161))

(declare-fun d!1175163 () Bool)

(assert (=> d!1175163 (= (isEmpty!25296 (_1!23923 lt!1388715)) ((_ is Nil!42275) (_1!23923 lt!1388715)))))

(assert (=> d!1174615 d!1175163))

(declare-fun d!1175165 () Bool)

(declare-fun lt!1389033 () tuple2!41578)

(assert (=> d!1175165 (= (++!11029 (_1!23923 lt!1389033) (_2!23923 lt!1389033)) lt!1388630)))

(declare-fun sizeTr!253 (List!42399 Int) Int)

(assert (=> d!1175165 (= lt!1389033 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 0 lt!1388630 lt!1388630 (sizeTr!253 lt!1388630 0)))))

(declare-fun lt!1389027 () Unit!60908)

(declare-fun lt!1389029 () Unit!60908)

(assert (=> d!1175165 (= lt!1389027 lt!1389029)))

(declare-fun lt!1389028 () List!42399)

(declare-fun lt!1389026 () Int)

(assert (=> d!1175165 (= (sizeTr!253 lt!1389028 lt!1389026) (+ (size!31647 lt!1389028) lt!1389026))))

(declare-fun lemmaSizeTrEqualsSize!252 (List!42399 Int) Unit!60908)

(assert (=> d!1175165 (= lt!1389029 (lemmaSizeTrEqualsSize!252 lt!1389028 lt!1389026))))

(assert (=> d!1175165 (= lt!1389026 0)))

(assert (=> d!1175165 (= lt!1389028 Nil!42275)))

(declare-fun lt!1389030 () Unit!60908)

(declare-fun lt!1389032 () Unit!60908)

(assert (=> d!1175165 (= lt!1389030 lt!1389032)))

(declare-fun lt!1389031 () Int)

(assert (=> d!1175165 (= (sizeTr!253 lt!1388630 lt!1389031) (+ (size!31647 lt!1388630) lt!1389031))))

(assert (=> d!1175165 (= lt!1389032 (lemmaSizeTrEqualsSize!252 lt!1388630 lt!1389031))))

(assert (=> d!1175165 (= lt!1389031 0)))

(assert (=> d!1175165 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175165 (= (findLongestMatch!1214 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388630) lt!1389033)))

(declare-fun bs!587452 () Bool)

(assert (= bs!587452 d!1175165))

(declare-fun m!4536549 () Bool)

(assert (=> bs!587452 m!4536549))

(assert (=> bs!587452 m!4534981))

(declare-fun m!4536551 () Bool)

(assert (=> bs!587452 m!4536551))

(declare-fun m!4536553 () Bool)

(assert (=> bs!587452 m!4536553))

(declare-fun m!4536555 () Bool)

(assert (=> bs!587452 m!4536555))

(declare-fun m!4536557 () Bool)

(assert (=> bs!587452 m!4536557))

(assert (=> bs!587452 m!4536551))

(declare-fun m!4536559 () Bool)

(assert (=> bs!587452 m!4536559))

(declare-fun m!4536561 () Bool)

(assert (=> bs!587452 m!4536561))

(declare-fun m!4536563 () Bool)

(assert (=> bs!587452 m!4536563))

(assert (=> bs!587452 m!4535171))

(assert (=> d!1174615 d!1175165))

(assert (=> d!1174615 d!1174611))

(declare-fun b!3966308 () Bool)

(declare-fun e!2456511 () List!42402)

(assert (=> b!3966308 (= e!2456511 suffixTokens!72)))

(declare-fun b!3966309 () Bool)

(assert (=> b!3966309 (= e!2456511 (Cons!42278 (h!47698 (t!330257 lt!1388633)) (++!11030 (t!330257 (t!330257 lt!1388633)) suffixTokens!72)))))

(declare-fun b!3966310 () Bool)

(declare-fun res!1605517 () Bool)

(declare-fun e!2456510 () Bool)

(assert (=> b!3966310 (=> (not res!1605517) (not e!2456510))))

(declare-fun lt!1389034 () List!42402)

(assert (=> b!3966310 (= res!1605517 (= (size!31648 lt!1389034) (+ (size!31648 (t!330257 lt!1388633)) (size!31648 suffixTokens!72))))))

(declare-fun b!3966311 () Bool)

(assert (=> b!3966311 (= e!2456510 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1389034 (t!330257 lt!1388633))))))

(declare-fun d!1175167 () Bool)

(assert (=> d!1175167 e!2456510))

(declare-fun res!1605516 () Bool)

(assert (=> d!1175167 (=> (not res!1605516) (not e!2456510))))

(assert (=> d!1175167 (= res!1605516 (= (content!6420 lt!1389034) ((_ map or) (content!6420 (t!330257 lt!1388633)) (content!6420 suffixTokens!72))))))

(assert (=> d!1175167 (= lt!1389034 e!2456511)))

(declare-fun c!688158 () Bool)

(assert (=> d!1175167 (= c!688158 ((_ is Nil!42278) (t!330257 lt!1388633)))))

(assert (=> d!1175167 (= (++!11030 (t!330257 lt!1388633) suffixTokens!72) lt!1389034)))

(assert (= (and d!1175167 c!688158) b!3966308))

(assert (= (and d!1175167 (not c!688158)) b!3966309))

(assert (= (and d!1175167 res!1605516) b!3966310))

(assert (= (and b!3966310 res!1605517) b!3966311))

(declare-fun m!4536565 () Bool)

(assert (=> b!3966309 m!4536565))

(declare-fun m!4536567 () Bool)

(assert (=> b!3966310 m!4536567))

(assert (=> b!3966310 m!4536333))

(assert (=> b!3966310 m!4535011))

(declare-fun m!4536569 () Bool)

(assert (=> d!1175167 m!4536569))

(assert (=> d!1175167 m!4536455))

(assert (=> d!1175167 m!4535017))

(assert (=> b!3965345 d!1175167))

(declare-fun d!1175169 () Bool)

(assert (=> d!1175169 true))

(declare-fun order!22405 () Int)

(declare-fun order!22403 () Int)

(declare-fun lambda!126813 () Int)

(declare-fun dynLambda!18050 (Int Int) Int)

(declare-fun dynLambda!18051 (Int Int) Int)

(assert (=> d!1175169 (< (dynLambda!18050 order!22403 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (dynLambda!18051 order!22405 lambda!126813))))

(assert (=> d!1175169 true))

(assert (=> d!1175169 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (dynLambda!18051 order!22405 lambda!126813))))

(declare-fun Forall!1461 (Int) Bool)

(assert (=> d!1175169 (= (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (Forall!1461 lambda!126813))))

(declare-fun bs!587453 () Bool)

(assert (= bs!587453 d!1175169))

(declare-fun m!4536571 () Bool)

(assert (=> bs!587453 m!4536571))

(assert (=> d!1174777 d!1175169))

(declare-fun b!3966318 () Bool)

(declare-fun res!1605518 () Bool)

(declare-fun e!2456513 () Bool)

(assert (=> b!3966318 (=> (not res!1605518) (not e!2456513))))

(declare-fun lt!1389035 () List!42399)

(assert (=> b!3966318 (= res!1605518 (= (size!31647 lt!1389035) (+ (size!31647 lt!1388609) (size!31647 lt!1388674))))))

(declare-fun b!3966319 () Bool)

(assert (=> b!3966319 (= e!2456513 (or (not (= lt!1388674 Nil!42275)) (= lt!1389035 lt!1388609)))))

(declare-fun b!3966316 () Bool)

(declare-fun e!2456512 () List!42399)

(assert (=> b!3966316 (= e!2456512 lt!1388674)))

(declare-fun d!1175171 () Bool)

(assert (=> d!1175171 e!2456513))

(declare-fun res!1605519 () Bool)

(assert (=> d!1175171 (=> (not res!1605519) (not e!2456513))))

(assert (=> d!1175171 (= res!1605519 (= (content!6421 lt!1389035) ((_ map or) (content!6421 lt!1388609) (content!6421 lt!1388674))))))

(assert (=> d!1175171 (= lt!1389035 e!2456512)))

(declare-fun c!688159 () Bool)

(assert (=> d!1175171 (= c!688159 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175171 (= (++!11029 lt!1388609 lt!1388674) lt!1389035)))

(declare-fun b!3966317 () Bool)

(assert (=> b!3966317 (= e!2456512 (Cons!42275 (h!47695 lt!1388609) (++!11029 (t!330254 lt!1388609) lt!1388674)))))

(assert (= (and d!1175171 c!688159) b!3966316))

(assert (= (and d!1175171 (not c!688159)) b!3966317))

(assert (= (and d!1175171 res!1605519) b!3966318))

(assert (= (and b!3966318 res!1605518) b!3966319))

(declare-fun m!4536573 () Bool)

(assert (=> b!3966318 m!4536573))

(assert (=> b!3966318 m!4534889))

(declare-fun m!4536575 () Bool)

(assert (=> b!3966318 m!4536575))

(declare-fun m!4536577 () Bool)

(assert (=> d!1175171 m!4536577))

(assert (=> d!1175171 m!4535127))

(declare-fun m!4536579 () Bool)

(assert (=> d!1175171 m!4536579))

(declare-fun m!4536581 () Bool)

(assert (=> b!3966317 m!4536581))

(assert (=> d!1174591 d!1175171))

(assert (=> d!1174591 d!1174637))

(assert (=> d!1174591 d!1174605))

(declare-fun bs!587454 () Bool)

(declare-fun d!1175173 () Bool)

(assert (= bs!587454 (and d!1175173 d!1175169)))

(declare-fun lambda!126814 () Int)

(assert (=> bs!587454 (= (and (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (= lambda!126814 lambda!126813))))

(assert (=> d!1175173 true))

(assert (=> d!1175173 (< (dynLambda!18050 order!22403 (toChars!8975 (transformation!6636 (h!47697 rules!2768)))) (dynLambda!18051 order!22405 lambda!126814))))

(assert (=> d!1175173 true))

(assert (=> d!1175173 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (h!47697 rules!2768)))) (dynLambda!18051 order!22405 lambda!126814))))

(assert (=> d!1175173 (= (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (h!47697 rules!2768)))) (Forall!1461 lambda!126814))))

(declare-fun bs!587455 () Bool)

(assert (= bs!587455 d!1175173))

(declare-fun m!4536583 () Bool)

(assert (=> bs!587455 m!4536583))

(assert (=> d!1174785 d!1175173))

(declare-fun d!1175175 () Bool)

(declare-fun lt!1389036 () Int)

(assert (=> d!1175175 (>= lt!1389036 0)))

(declare-fun e!2456514 () Int)

(assert (=> d!1175175 (= lt!1389036 e!2456514)))

(declare-fun c!688160 () Bool)

(assert (=> d!1175175 (= c!688160 ((_ is Nil!42275) (t!330254 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1175175 (= (size!31647 (t!330254 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))))) lt!1389036)))

(declare-fun b!3966320 () Bool)

(assert (=> b!3966320 (= e!2456514 0)))

(declare-fun b!3966321 () Bool)

(assert (=> b!3966321 (= e!2456514 (+ 1 (size!31647 (t!330254 (t!330254 (originalCharacters!7236 (_1!23921 (v!39401 lt!1388603))))))))))

(assert (= (and d!1175175 c!688160) b!3966320))

(assert (= (and d!1175175 (not c!688160)) b!3966321))

(declare-fun m!4536585 () Bool)

(assert (=> b!3966321 m!4536585))

(assert (=> b!3965590 d!1175175))

(declare-fun d!1175177 () Bool)

(assert (=> d!1175177 (= (inv!16 (value!209760 (h!47698 prefixTokens!80))) (= (charsToInt!0 (text!48509 (value!209760 (h!47698 prefixTokens!80)))) (value!209751 (value!209760 (h!47698 prefixTokens!80)))))))

(declare-fun bs!587456 () Bool)

(assert (= bs!587456 d!1175177))

(declare-fun m!4536587 () Bool)

(assert (=> bs!587456 m!4536587))

(assert (=> b!3965585 d!1175177))

(declare-fun d!1175179 () Bool)

(declare-fun c!688161 () Bool)

(assert (=> d!1175179 (= c!688161 ((_ is Nil!42275) lt!1388786))))

(declare-fun e!2456515 () (InoxSet C!23268))

(assert (=> d!1175179 (= (content!6421 lt!1388786) e!2456515)))

(declare-fun b!3966322 () Bool)

(assert (=> b!3966322 (= e!2456515 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966323 () Bool)

(assert (=> b!3966323 (= e!2456515 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388786) true) (content!6421 (t!330254 lt!1388786))))))

(assert (= (and d!1175179 c!688161) b!3966322))

(assert (= (and d!1175179 (not c!688161)) b!3966323))

(declare-fun m!4536589 () Bool)

(assert (=> b!3966323 m!4536589))

(declare-fun m!4536591 () Bool)

(assert (=> b!3966323 m!4536591))

(assert (=> d!1174741 d!1175179))

(declare-fun d!1175181 () Bool)

(declare-fun c!688162 () Bool)

(assert (=> d!1175181 (= c!688162 ((_ is Nil!42275) lt!1388621))))

(declare-fun e!2456516 () (InoxSet C!23268))

(assert (=> d!1175181 (= (content!6421 lt!1388621) e!2456516)))

(declare-fun b!3966324 () Bool)

(assert (=> b!3966324 (= e!2456516 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966325 () Bool)

(assert (=> b!3966325 (= e!2456516 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388621) true) (content!6421 (t!330254 lt!1388621))))))

(assert (= (and d!1175181 c!688162) b!3966324))

(assert (= (and d!1175181 (not c!688162)) b!3966325))

(declare-fun m!4536593 () Bool)

(assert (=> b!3966325 m!4536593))

(declare-fun m!4536595 () Bool)

(assert (=> b!3966325 m!4536595))

(assert (=> d!1174741 d!1175181))

(assert (=> d!1174741 d!1175121))

(declare-fun b!3966326 () Bool)

(declare-fun e!2456519 () Bool)

(declare-fun e!2456517 () Bool)

(assert (=> b!3966326 (= e!2456519 e!2456517)))

(declare-fun res!1605522 () Bool)

(assert (=> b!3966326 (=> (not res!1605522) (not e!2456517))))

(assert (=> b!3966326 (= res!1605522 (not ((_ is Nil!42275) (tail!6182 lt!1388630))))))

(declare-fun b!3966328 () Bool)

(assert (=> b!3966328 (= e!2456517 (isPrefix!3725 (tail!6182 (tail!6182 prefix!426)) (tail!6182 (tail!6182 lt!1388630))))))

(declare-fun d!1175183 () Bool)

(declare-fun e!2456518 () Bool)

(assert (=> d!1175183 e!2456518))

(declare-fun res!1605523 () Bool)

(assert (=> d!1175183 (=> res!1605523 e!2456518)))

(declare-fun lt!1389037 () Bool)

(assert (=> d!1175183 (= res!1605523 (not lt!1389037))))

(assert (=> d!1175183 (= lt!1389037 e!2456519)))

(declare-fun res!1605521 () Bool)

(assert (=> d!1175183 (=> res!1605521 e!2456519)))

(assert (=> d!1175183 (= res!1605521 ((_ is Nil!42275) (tail!6182 prefix!426)))))

(assert (=> d!1175183 (= (isPrefix!3725 (tail!6182 prefix!426) (tail!6182 lt!1388630)) lt!1389037)))

(declare-fun b!3966329 () Bool)

(assert (=> b!3966329 (= e!2456518 (>= (size!31647 (tail!6182 lt!1388630)) (size!31647 (tail!6182 prefix!426))))))

(declare-fun b!3966327 () Bool)

(declare-fun res!1605520 () Bool)

(assert (=> b!3966327 (=> (not res!1605520) (not e!2456517))))

(assert (=> b!3966327 (= res!1605520 (= (head!8450 (tail!6182 prefix!426)) (head!8450 (tail!6182 lt!1388630))))))

(assert (= (and d!1175183 (not res!1605521)) b!3966326))

(assert (= (and b!3966326 res!1605522) b!3966327))

(assert (= (and b!3966327 res!1605520) b!3966328))

(assert (= (and d!1175183 (not res!1605523)) b!3966329))

(assert (=> b!3966328 m!4535385))

(assert (=> b!3966328 m!4536171))

(assert (=> b!3966328 m!4535119))

(assert (=> b!3966328 m!4536415))

(assert (=> b!3966328 m!4536171))

(assert (=> b!3966328 m!4536415))

(declare-fun m!4536597 () Bool)

(assert (=> b!3966328 m!4536597))

(assert (=> b!3966329 m!4535119))

(assert (=> b!3966329 m!4536413))

(assert (=> b!3966329 m!4535385))

(assert (=> b!3966329 m!4536175))

(assert (=> b!3966327 m!4535385))

(assert (=> b!3966327 m!4536177))

(assert (=> b!3966327 m!4535119))

(declare-fun m!4536599 () Bool)

(assert (=> b!3966327 m!4536599))

(assert (=> b!3965552 d!1175183))

(assert (=> b!3965552 d!1174979))

(assert (=> b!3965552 d!1175099))

(declare-fun d!1175185 () Bool)

(declare-fun res!1605530 () Bool)

(declare-fun e!2456526 () Bool)

(assert (=> d!1175185 (=> res!1605530 e!2456526)))

(assert (=> d!1175185 (= res!1605530 ((_ is Nil!42277) rules!2768))))

(assert (=> d!1175185 (= (noDuplicateTag!2593 thiss!20629 rules!2768 Nil!42279) e!2456526)))

(declare-fun b!3966336 () Bool)

(declare-fun e!2456527 () Bool)

(assert (=> b!3966336 (= e!2456526 e!2456527)))

(declare-fun res!1605531 () Bool)

(assert (=> b!3966336 (=> (not res!1605531) (not e!2456527))))

(declare-fun contains!8437 (List!42403 String!48048) Bool)

(assert (=> b!3966336 (= res!1605531 (not (contains!8437 Nil!42279 (tag!7496 (h!47697 rules!2768)))))))

(declare-fun b!3966337 () Bool)

(assert (=> b!3966337 (= e!2456527 (noDuplicateTag!2593 thiss!20629 (t!330256 rules!2768) (Cons!42279 (tag!7496 (h!47697 rules!2768)) Nil!42279)))))

(assert (= (and d!1175185 (not res!1605530)) b!3966336))

(assert (= (and b!3966336 res!1605531) b!3966337))

(declare-fun m!4536601 () Bool)

(assert (=> b!3966336 m!4536601))

(declare-fun m!4536603 () Bool)

(assert (=> b!3966337 m!4536603))

(assert (=> b!3965579 d!1175185))

(declare-fun d!1175187 () Bool)

(assert (=> d!1175187 (= (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))) (list!15689 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(declare-fun bs!587457 () Bool)

(assert (= bs!587457 d!1175187))

(declare-fun m!4536605 () Bool)

(assert (=> bs!587457 m!4536605))

(assert (=> b!3965368 d!1175187))

(assert (=> b!3965359 d!1174961))

(assert (=> b!3965359 d!1174799))

(declare-fun b!3966340 () Bool)

(declare-fun e!2456529 () List!42402)

(assert (=> b!3966340 (= e!2456529 lt!1388633)))

(declare-fun b!3966341 () Bool)

(assert (=> b!3966341 (= e!2456529 (Cons!42278 (h!47698 (t!330257 lt!1388619)) (++!11030 (t!330257 (t!330257 lt!1388619)) lt!1388633)))))

(declare-fun b!3966342 () Bool)

(declare-fun res!1605533 () Bool)

(declare-fun e!2456528 () Bool)

(assert (=> b!3966342 (=> (not res!1605533) (not e!2456528))))

(declare-fun lt!1389038 () List!42402)

(assert (=> b!3966342 (= res!1605533 (= (size!31648 lt!1389038) (+ (size!31648 (t!330257 lt!1388619)) (size!31648 lt!1388633))))))

(declare-fun b!3966343 () Bool)

(assert (=> b!3966343 (= e!2456528 (or (not (= lt!1388633 Nil!42278)) (= lt!1389038 (t!330257 lt!1388619))))))

(declare-fun d!1175189 () Bool)

(assert (=> d!1175189 e!2456528))

(declare-fun res!1605532 () Bool)

(assert (=> d!1175189 (=> (not res!1605532) (not e!2456528))))

(assert (=> d!1175189 (= res!1605532 (= (content!6420 lt!1389038) ((_ map or) (content!6420 (t!330257 lt!1388619)) (content!6420 lt!1388633))))))

(assert (=> d!1175189 (= lt!1389038 e!2456529)))

(declare-fun c!688163 () Bool)

(assert (=> d!1175189 (= c!688163 ((_ is Nil!42278) (t!330257 lt!1388619)))))

(assert (=> d!1175189 (= (++!11030 (t!330257 lt!1388619) lt!1388633) lt!1389038)))

(assert (= (and d!1175189 c!688163) b!3966340))

(assert (= (and d!1175189 (not c!688163)) b!3966341))

(assert (= (and d!1175189 res!1605532) b!3966342))

(assert (= (and b!3966342 res!1605533) b!3966343))

(declare-fun m!4536609 () Bool)

(assert (=> b!3966341 m!4536609))

(declare-fun m!4536611 () Bool)

(assert (=> b!3966342 m!4536611))

(assert (=> b!3966342 m!4536183))

(assert (=> b!3966342 m!4535055))

(declare-fun m!4536613 () Bool)

(assert (=> d!1175189 m!4536613))

(assert (=> d!1175189 m!4536187))

(assert (=> d!1175189 m!4535059))

(assert (=> b!3965652 d!1175189))

(declare-fun b!3966346 () Bool)

(declare-fun e!2456532 () List!42402)

(assert (=> b!3966346 (= e!2456532 suffixTokens!72)))

(declare-fun b!3966347 () Bool)

(assert (=> b!3966347 (= e!2456532 (Cons!42278 (h!47698 (t!330257 (++!11030 lt!1388619 lt!1388633))) (++!11030 (t!330257 (t!330257 (++!11030 lt!1388619 lt!1388633))) suffixTokens!72)))))

(declare-fun b!3966348 () Bool)

(declare-fun res!1605535 () Bool)

(declare-fun e!2456531 () Bool)

(assert (=> b!3966348 (=> (not res!1605535) (not e!2456531))))

(declare-fun lt!1389040 () List!42402)

(assert (=> b!3966348 (= res!1605535 (= (size!31648 lt!1389040) (+ (size!31648 (t!330257 (++!11030 lt!1388619 lt!1388633))) (size!31648 suffixTokens!72))))))

(declare-fun b!3966349 () Bool)

(assert (=> b!3966349 (= e!2456531 (or (not (= suffixTokens!72 Nil!42278)) (= lt!1389040 (t!330257 (++!11030 lt!1388619 lt!1388633)))))))

(declare-fun d!1175193 () Bool)

(assert (=> d!1175193 e!2456531))

(declare-fun res!1605534 () Bool)

(assert (=> d!1175193 (=> (not res!1605534) (not e!2456531))))

(assert (=> d!1175193 (= res!1605534 (= (content!6420 lt!1389040) ((_ map or) (content!6420 (t!330257 (++!11030 lt!1388619 lt!1388633))) (content!6420 suffixTokens!72))))))

(assert (=> d!1175193 (= lt!1389040 e!2456532)))

(declare-fun c!688165 () Bool)

(assert (=> d!1175193 (= c!688165 ((_ is Nil!42278) (t!330257 (++!11030 lt!1388619 lt!1388633))))))

(assert (=> d!1175193 (= (++!11030 (t!330257 (++!11030 lt!1388619 lt!1388633)) suffixTokens!72) lt!1389040)))

(assert (= (and d!1175193 c!688165) b!3966346))

(assert (= (and d!1175193 (not c!688165)) b!3966347))

(assert (= (and d!1175193 res!1605534) b!3966348))

(assert (= (and b!3966348 res!1605535) b!3966349))

(declare-fun m!4536617 () Bool)

(assert (=> b!3966347 m!4536617))

(declare-fun m!4536619 () Bool)

(assert (=> b!3966348 m!4536619))

(assert (=> b!3966348 m!4536375))

(assert (=> b!3966348 m!4535011))

(declare-fun m!4536621 () Bool)

(assert (=> d!1175193 m!4536621))

(assert (=> d!1175193 m!4536523))

(assert (=> d!1175193 m!4535017))

(assert (=> b!3965660 d!1175193))

(declare-fun d!1175197 () Bool)

(assert (=> d!1175197 (= (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (= (mod (str.len (value!209759 (tag!7496 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3965700 d!1175197))

(declare-fun d!1175199 () Bool)

(declare-fun res!1605536 () Bool)

(declare-fun e!2456533 () Bool)

(assert (=> d!1175199 (=> (not res!1605536) (not e!2456533))))

(assert (=> d!1175199 (= res!1605536 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))))))

(assert (=> d!1175199 (= (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) e!2456533)))

(declare-fun b!3966350 () Bool)

(assert (=> b!3966350 (= e!2456533 (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))))))

(assert (= (and d!1175199 res!1605536) b!3966350))

(declare-fun m!4536623 () Bool)

(assert (=> d!1175199 m!4536623))

(declare-fun m!4536625 () Bool)

(assert (=> b!3966350 m!4536625))

(assert (=> b!3965700 d!1175199))

(assert (=> b!3965641 d!1174957))

(declare-fun d!1175201 () Bool)

(assert (=> d!1175201 (= (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815))))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun b_lambda!115965 () Bool)

(assert (=> (not b_lambda!115965) (not d!1175201)))

(declare-fun t!330418 () Bool)

(declare-fun tb!239277 () Bool)

(assert (=> (and b!3965251 (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330418) tb!239277))

(declare-fun result!289758 () Bool)

(assert (=> tb!239277 (= result!289758 (inv!21 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815)))))))))

(declare-fun m!4536627 () Bool)

(assert (=> tb!239277 m!4536627))

(assert (=> d!1175201 t!330418))

(declare-fun b_and!304699 () Bool)

(assert (= b_and!304675 (and (=> t!330418 result!289758) b_and!304699)))

(declare-fun t!330420 () Bool)

(declare-fun tb!239279 () Bool)

(assert (=> (and b!3965265 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330420) tb!239279))

(declare-fun result!289760 () Bool)

(assert (= result!289760 result!289758))

(assert (=> d!1175201 t!330420))

(declare-fun b_and!304701 () Bool)

(assert (= b_and!304677 (and (=> t!330420 result!289760) b_and!304701)))

(declare-fun tb!239281 () Bool)

(declare-fun t!330422 () Bool)

(assert (=> (and b!3965280 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330422) tb!239281))

(declare-fun result!289762 () Bool)

(assert (= result!289762 result!289758))

(assert (=> d!1175201 t!330422))

(declare-fun b_and!304703 () Bool)

(assert (= b_and!304681 (and (=> t!330422 result!289762) b_and!304703)))

(declare-fun t!330424 () Bool)

(declare-fun tb!239283 () Bool)

(assert (=> (and b!3965724 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330424) tb!239283))

(declare-fun result!289764 () Bool)

(assert (= result!289764 result!289758))

(assert (=> d!1175201 t!330424))

(declare-fun b_and!304705 () Bool)

(assert (= b_and!304685 (and (=> t!330424 result!289764) b_and!304705)))

(declare-fun t!330426 () Bool)

(declare-fun tb!239285 () Bool)

(assert (=> (and b!3965701 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330426) tb!239285))

(declare-fun result!289766 () Bool)

(assert (= result!289766 result!289758))

(assert (=> d!1175201 t!330426))

(declare-fun b_and!304707 () Bool)

(assert (= b_and!304679 (and (=> t!330426 result!289766) b_and!304707)))

(declare-fun tb!239287 () Bool)

(declare-fun t!330428 () Bool)

(assert (=> (and b!3965705 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330428) tb!239287))

(declare-fun result!289768 () Bool)

(assert (= result!289768 result!289758))

(assert (=> d!1175201 t!330428))

(declare-fun b_and!304709 () Bool)

(assert (= b_and!304683 (and (=> t!330428 result!289768) b_and!304709)))

(assert (=> d!1175201 m!4535569))

(declare-fun m!4536635 () Bool)

(assert (=> d!1175201 m!4536635))

(assert (=> b!3965641 d!1175201))

(declare-fun d!1175215 () Bool)

(assert (=> d!1175215 (= (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815)))) (fromListB!2259 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388815)))))))

(declare-fun bs!587460 () Bool)

(assert (= bs!587460 d!1175215))

(declare-fun m!4536637 () Bool)

(assert (=> bs!587460 m!4536637))

(assert (=> b!3965641 d!1175215))

(declare-fun b!3966361 () Bool)

(declare-fun e!2456542 () Bool)

(declare-fun e!2456540 () Bool)

(assert (=> b!3966361 (= e!2456542 e!2456540)))

(declare-fun res!1605541 () Bool)

(assert (=> b!3966361 (=> (not res!1605541) (not e!2456540))))

(assert (=> b!3966361 (= res!1605541 (not ((_ is Nil!42275) (tail!6182 lt!1388627))))))

(declare-fun b!3966363 () Bool)

(assert (=> b!3966363 (= e!2456540 (isPrefix!3725 (tail!6182 (tail!6182 lt!1388609)) (tail!6182 (tail!6182 lt!1388627))))))

(declare-fun d!1175217 () Bool)

(declare-fun e!2456541 () Bool)

(assert (=> d!1175217 e!2456541))

(declare-fun res!1605542 () Bool)

(assert (=> d!1175217 (=> res!1605542 e!2456541)))

(declare-fun lt!1389045 () Bool)

(assert (=> d!1175217 (= res!1605542 (not lt!1389045))))

(assert (=> d!1175217 (= lt!1389045 e!2456542)))

(declare-fun res!1605540 () Bool)

(assert (=> d!1175217 (=> res!1605540 e!2456542)))

(assert (=> d!1175217 (= res!1605540 ((_ is Nil!42275) (tail!6182 lt!1388609)))))

(assert (=> d!1175217 (= (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 lt!1388627)) lt!1389045)))

(declare-fun b!3966364 () Bool)

(assert (=> b!3966364 (= e!2456541 (>= (size!31647 (tail!6182 lt!1388627)) (size!31647 (tail!6182 lt!1388609))))))

(declare-fun b!3966362 () Bool)

(declare-fun res!1605539 () Bool)

(assert (=> b!3966362 (=> (not res!1605539) (not e!2456540))))

(assert (=> b!3966362 (= res!1605539 (= (head!8450 (tail!6182 lt!1388609)) (head!8450 (tail!6182 lt!1388627))))))

(assert (= (and d!1175217 (not res!1605540)) b!3966361))

(assert (= (and b!3966361 res!1605541) b!3966362))

(assert (= (and b!3966362 res!1605539) b!3966363))

(assert (= (and d!1175217 (not res!1605542)) b!3966364))

(assert (=> b!3966363 m!4535151))

(assert (=> b!3966363 m!4535983))

(assert (=> b!3966363 m!4535449))

(declare-fun m!4536649 () Bool)

(assert (=> b!3966363 m!4536649))

(assert (=> b!3966363 m!4535983))

(assert (=> b!3966363 m!4536649))

(declare-fun m!4536651 () Bool)

(assert (=> b!3966363 m!4536651))

(assert (=> b!3966364 m!4535449))

(declare-fun m!4536653 () Bool)

(assert (=> b!3966364 m!4536653))

(assert (=> b!3966364 m!4535151))

(assert (=> b!3966364 m!4535991))

(assert (=> b!3966362 m!4535151))

(assert (=> b!3966362 m!4535993))

(assert (=> b!3966362 m!4535449))

(declare-fun m!4536655 () Bool)

(assert (=> b!3966362 m!4536655))

(assert (=> b!3965574 d!1175217))

(assert (=> b!3965574 d!1174885))

(declare-fun d!1175221 () Bool)

(assert (=> d!1175221 (= (tail!6182 lt!1388627) (t!330254 lt!1388627))))

(assert (=> b!3965574 d!1175221))

(declare-fun b!3966367 () Bool)

(declare-fun res!1605543 () Bool)

(declare-fun e!2456544 () Bool)

(assert (=> b!3966367 (=> (not res!1605543) (not e!2456544))))

(declare-fun lt!1389046 () List!42399)

(assert (=> b!3966367 (= res!1605543 (= (size!31647 lt!1389046) (+ (size!31647 (t!330254 lt!1388607)) (size!31647 suffix!1176))))))

(declare-fun b!3966368 () Bool)

(assert (=> b!3966368 (= e!2456544 (or (not (= suffix!1176 Nil!42275)) (= lt!1389046 (t!330254 lt!1388607))))))

(declare-fun b!3966365 () Bool)

(declare-fun e!2456543 () List!42399)

(assert (=> b!3966365 (= e!2456543 suffix!1176)))

(declare-fun d!1175223 () Bool)

(assert (=> d!1175223 e!2456544))

(declare-fun res!1605544 () Bool)

(assert (=> d!1175223 (=> (not res!1605544) (not e!2456544))))

(assert (=> d!1175223 (= res!1605544 (= (content!6421 lt!1389046) ((_ map or) (content!6421 (t!330254 lt!1388607)) (content!6421 suffix!1176))))))

(assert (=> d!1175223 (= lt!1389046 e!2456543)))

(declare-fun c!688170 () Bool)

(assert (=> d!1175223 (= c!688170 ((_ is Nil!42275) (t!330254 lt!1388607)))))

(assert (=> d!1175223 (= (++!11029 (t!330254 lt!1388607) suffix!1176) lt!1389046)))

(declare-fun b!3966366 () Bool)

(assert (=> b!3966366 (= e!2456543 (Cons!42275 (h!47695 (t!330254 lt!1388607)) (++!11029 (t!330254 (t!330254 lt!1388607)) suffix!1176)))))

(assert (= (and d!1175223 c!688170) b!3966365))

(assert (= (and d!1175223 (not c!688170)) b!3966366))

(assert (= (and d!1175223 res!1605544) b!3966367))

(assert (= (and b!3966367 res!1605543) b!3966368))

(declare-fun m!4536657 () Bool)

(assert (=> b!3966367 m!4536657))

(assert (=> b!3966367 m!4536407))

(assert (=> b!3966367 m!4534863))

(declare-fun m!4536659 () Bool)

(assert (=> d!1175223 m!4536659))

(assert (=> d!1175223 m!4536443))

(assert (=> d!1175223 m!4535025))

(declare-fun m!4536661 () Bool)

(assert (=> b!3966366 m!4536661))

(assert (=> b!3965581 d!1175223))

(declare-fun d!1175227 () Bool)

(declare-fun lt!1389048 () Int)

(assert (=> d!1175227 (>= lt!1389048 0)))

(declare-fun e!2456548 () Int)

(assert (=> d!1175227 (= lt!1389048 e!2456548)))

(declare-fun c!688171 () Bool)

(assert (=> d!1175227 (= c!688171 ((_ is Nil!42278) lt!1388665))))

(assert (=> d!1175227 (= (size!31648 lt!1388665) lt!1389048)))

(declare-fun b!3966373 () Bool)

(assert (=> b!3966373 (= e!2456548 0)))

(declare-fun b!3966374 () Bool)

(assert (=> b!3966374 (= e!2456548 (+ 1 (size!31648 (t!330257 lt!1388665))))))

(assert (= (and d!1175227 c!688171) b!3966373))

(assert (= (and d!1175227 (not c!688171)) b!3966374))

(declare-fun m!4536663 () Bool)

(assert (=> b!3966374 m!4536663))

(assert (=> b!3965362 d!1175227))

(assert (=> b!3965362 d!1175067))

(declare-fun d!1175229 () Bool)

(declare-fun lt!1389049 () Int)

(assert (=> d!1175229 (>= lt!1389049 0)))

(declare-fun e!2456549 () Int)

(assert (=> d!1175229 (= lt!1389049 e!2456549)))

(declare-fun c!688172 () Bool)

(assert (=> d!1175229 (= c!688172 ((_ is Nil!42278) (_1!23922 lt!1388624)))))

(assert (=> d!1175229 (= (size!31648 (_1!23922 lt!1388624)) lt!1389049)))

(declare-fun b!3966375 () Bool)

(assert (=> b!3966375 (= e!2456549 0)))

(declare-fun b!3966376 () Bool)

(assert (=> b!3966376 (= e!2456549 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388624)))))))

(assert (= (and d!1175229 c!688172) b!3966375))

(assert (= (and d!1175229 (not c!688172)) b!3966376))

(declare-fun m!4536667 () Bool)

(assert (=> b!3966376 m!4536667))

(assert (=> b!3965362 d!1175229))

(declare-fun b!3966377 () Bool)

(declare-fun e!2456551 () Bool)

(declare-fun lt!1389051 () tuple2!41576)

(assert (=> b!3966377 (= e!2456551 (not (isEmpty!25297 (_1!23922 lt!1389051))))))

(declare-fun b!3966378 () Bool)

(declare-fun e!2456550 () tuple2!41576)

(assert (=> b!3966378 (= e!2456550 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388640))))))

(declare-fun b!3966379 () Bool)

(declare-fun lt!1389050 () Option!9056)

(declare-fun lt!1389052 () tuple2!41576)

(assert (=> b!3966379 (= e!2456550 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1389050)) (_1!23922 lt!1389052)) (_2!23922 lt!1389052)))))

(assert (=> b!3966379 (= lt!1389052 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1389050))))))

(declare-fun b!3966381 () Bool)

(declare-fun e!2456552 () Bool)

(assert (=> b!3966381 (= e!2456552 e!2456551)))

(declare-fun res!1605549 () Bool)

(assert (=> b!3966381 (= res!1605549 (< (size!31647 (_2!23922 lt!1389051)) (size!31647 (_2!23921 (v!39401 lt!1388640)))))))

(assert (=> b!3966381 (=> (not res!1605549) (not e!2456551))))

(declare-fun b!3966380 () Bool)

(assert (=> b!3966380 (= e!2456552 (= (_2!23922 lt!1389051) (_2!23921 (v!39401 lt!1388640))))))

(declare-fun d!1175233 () Bool)

(assert (=> d!1175233 e!2456552))

(declare-fun c!688174 () Bool)

(assert (=> d!1175233 (= c!688174 (> (size!31648 (_1!23922 lt!1389051)) 0))))

(assert (=> d!1175233 (= lt!1389051 e!2456550)))

(declare-fun c!688173 () Bool)

(assert (=> d!1175233 (= c!688173 ((_ is Some!9055) lt!1389050))))

(assert (=> d!1175233 (= lt!1389050 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388640))))))

(assert (=> d!1175233 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388640))) lt!1389051)))

(assert (= (and d!1175233 c!688173) b!3966379))

(assert (= (and d!1175233 (not c!688173)) b!3966378))

(assert (= (and d!1175233 c!688174) b!3966381))

(assert (= (and d!1175233 (not c!688174)) b!3966380))

(assert (= (and b!3966381 res!1605549) b!3966377))

(declare-fun m!4536669 () Bool)

(assert (=> b!3966377 m!4536669))

(declare-fun m!4536671 () Bool)

(assert (=> b!3966379 m!4536671))

(declare-fun m!4536673 () Bool)

(assert (=> b!3966381 m!4536673))

(declare-fun m!4536675 () Bool)

(assert (=> b!3966381 m!4536675))

(declare-fun m!4536677 () Bool)

(assert (=> d!1175233 m!4536677))

(declare-fun m!4536679 () Bool)

(assert (=> d!1175233 m!4536679))

(assert (=> b!3965297 d!1175233))

(declare-fun b!3966382 () Bool)

(declare-fun e!2456555 () Bool)

(assert (=> b!3966382 (= e!2456555 (inv!15 (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))

(declare-fun b!3966383 () Bool)

(declare-fun e!2456554 () Bool)

(assert (=> b!3966383 (= e!2456554 (inv!16 (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))

(declare-fun b!3966384 () Bool)

(declare-fun e!2456553 () Bool)

(assert (=> b!3966384 (= e!2456554 e!2456553)))

(declare-fun c!688175 () Bool)

(assert (=> b!3966384 (= c!688175 ((_ is IntegerValue!20599) (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))

(declare-fun b!3966385 () Bool)

(assert (=> b!3966385 (= e!2456553 (inv!17 (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))

(declare-fun d!1175235 () Bool)

(declare-fun c!688176 () Bool)

(assert (=> d!1175235 (= c!688176 ((_ is IntegerValue!20598) (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))

(assert (=> d!1175235 (= (inv!21 (value!209760 (h!47698 (t!330257 suffixTokens!72)))) e!2456554)))

(declare-fun b!3966386 () Bool)

(declare-fun res!1605550 () Bool)

(assert (=> b!3966386 (=> res!1605550 e!2456555)))

(assert (=> b!3966386 (= res!1605550 (not ((_ is IntegerValue!20600) (value!209760 (h!47698 (t!330257 suffixTokens!72))))))))

(assert (=> b!3966386 (= e!2456553 e!2456555)))

(assert (= (and d!1175235 c!688176) b!3966383))

(assert (= (and d!1175235 (not c!688176)) b!3966384))

(assert (= (and b!3966384 c!688175) b!3966385))

(assert (= (and b!3966384 (not c!688175)) b!3966386))

(assert (= (and b!3966386 (not res!1605550)) b!3966382))

(declare-fun m!4536683 () Bool)

(assert (=> b!3966382 m!4536683))

(declare-fun m!4536685 () Bool)

(assert (=> b!3966383 m!4536685))

(declare-fun m!4536687 () Bool)

(assert (=> b!3966385 m!4536687))

(assert (=> b!3965703 d!1175235))

(assert (=> d!1174695 d!1174685))

(declare-fun d!1175239 () Bool)

(assert (=> d!1175239 (isPrefix!3725 lt!1388609 prefix!426)))

(assert (=> d!1175239 true))

(declare-fun _$69!220 () Unit!60908)

(assert (=> d!1175239 (= (choose!23728 prefix!426 lt!1388609 lt!1388630) _$69!220)))

(declare-fun bs!587463 () Bool)

(assert (= bs!587463 d!1175239))

(assert (=> bs!587463 m!4534979))

(assert (=> d!1174695 d!1175239))

(assert (=> d!1174695 d!1174687))

(declare-fun b!3966391 () Bool)

(declare-fun res!1605556 () Bool)

(declare-fun e!2456558 () Bool)

(assert (=> b!3966391 (=> (not res!1605556) (not e!2456558))))

(declare-fun lt!1389054 () Option!9056)

(assert (=> b!3966391 (= res!1605556 (< (size!31647 (_2!23921 (get!13944 lt!1389054))) (size!31647 lt!1388630)))))

(declare-fun b!3966392 () Bool)

(declare-fun res!1605557 () Bool)

(assert (=> b!3966392 (=> (not res!1605557) (not e!2456558))))

(assert (=> b!3966392 (= res!1605557 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1389054)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389054))))))))

(declare-fun b!3966393 () Bool)

(declare-fun e!2456559 () Option!9056)

(declare-fun lt!1389056 () Option!9056)

(declare-fun lt!1389055 () Option!9056)

(assert (=> b!3966393 (= e!2456559 (ite (and ((_ is None!9055) lt!1389056) ((_ is None!9055) lt!1389055)) None!9055 (ite ((_ is None!9055) lt!1389055) lt!1389056 (ite ((_ is None!9055) lt!1389056) lt!1389055 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1389056))) (size!31646 (_1!23921 (v!39401 lt!1389055)))) lt!1389056 lt!1389055)))))))

(declare-fun call!285497 () Option!9056)

(assert (=> b!3966393 (= lt!1389056 call!285497)))

(assert (=> b!3966393 (= lt!1389055 (maxPrefix!3529 thiss!20629 (t!330256 (t!330256 rules!2768)) lt!1388630))))

(declare-fun d!1175241 () Bool)

(declare-fun e!2456560 () Bool)

(assert (=> d!1175241 e!2456560))

(declare-fun res!1605551 () Bool)

(assert (=> d!1175241 (=> res!1605551 e!2456560)))

(assert (=> d!1175241 (= res!1605551 (isEmpty!25299 lt!1389054))))

(assert (=> d!1175241 (= lt!1389054 e!2456559)))

(declare-fun c!688179 () Bool)

(assert (=> d!1175241 (= c!688179 (and ((_ is Cons!42277) (t!330256 rules!2768)) ((_ is Nil!42277) (t!330256 (t!330256 rules!2768)))))))

(declare-fun lt!1389053 () Unit!60908)

(declare-fun lt!1389057 () Unit!60908)

(assert (=> d!1175241 (= lt!1389053 lt!1389057)))

(assert (=> d!1175241 (isPrefix!3725 lt!1388630 lt!1388630)))

(assert (=> d!1175241 (= lt!1389057 (lemmaIsPrefixRefl!2347 lt!1388630 lt!1388630))))

(assert (=> d!1175241 (rulesValidInductive!2405 thiss!20629 (t!330256 rules!2768))))

(assert (=> d!1175241 (= (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) lt!1388630) lt!1389054)))

(declare-fun b!3966394 () Bool)

(assert (=> b!3966394 (= e!2456558 (contains!8435 (t!330256 rules!2768) (rule!9622 (_1!23921 (get!13944 lt!1389054)))))))

(declare-fun b!3966395 () Bool)

(declare-fun res!1605553 () Bool)

(assert (=> b!3966395 (=> (not res!1605553) (not e!2456558))))

(assert (=> b!3966395 (= res!1605553 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389054)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1389054)))))))

(declare-fun bm!285492 () Bool)

(assert (=> bm!285492 (= call!285497 (maxPrefixOneRule!2579 thiss!20629 (h!47697 (t!330256 rules!2768)) lt!1388630))))

(declare-fun b!3966396 () Bool)

(declare-fun res!1605554 () Bool)

(assert (=> b!3966396 (=> (not res!1605554) (not e!2456558))))

(assert (=> b!3966396 (= res!1605554 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389054)))) (_2!23921 (get!13944 lt!1389054))) lt!1388630))))

(declare-fun b!3966397 () Bool)

(declare-fun res!1605552 () Bool)

(assert (=> b!3966397 (=> (not res!1605552) (not e!2456558))))

(assert (=> b!3966397 (= res!1605552 (= (value!209760 (_1!23921 (get!13944 lt!1389054))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1389054)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1389054)))))))))

(declare-fun b!3966398 () Bool)

(assert (=> b!3966398 (= e!2456559 call!285497)))

(declare-fun b!3966399 () Bool)

(assert (=> b!3966399 (= e!2456560 e!2456558)))

(declare-fun res!1605555 () Bool)

(assert (=> b!3966399 (=> (not res!1605555) (not e!2456558))))

(assert (=> b!3966399 (= res!1605555 (isDefined!7006 lt!1389054))))

(assert (= (and d!1175241 c!688179) b!3966398))

(assert (= (and d!1175241 (not c!688179)) b!3966393))

(assert (= (or b!3966398 b!3966393) bm!285492))

(assert (= (and d!1175241 (not res!1605551)) b!3966399))

(assert (= (and b!3966399 res!1605555) b!3966395))

(assert (= (and b!3966395 res!1605553) b!3966391))

(assert (= (and b!3966391 res!1605556) b!3966396))

(assert (= (and b!3966396 res!1605554) b!3966397))

(assert (= (and b!3966397 res!1605552) b!3966392))

(assert (= (and b!3966392 res!1605557) b!3966394))

(declare-fun m!4536703 () Bool)

(assert (=> b!3966395 m!4536703))

(declare-fun m!4536705 () Bool)

(assert (=> b!3966395 m!4536705))

(assert (=> b!3966395 m!4536705))

(declare-fun m!4536707 () Bool)

(assert (=> b!3966395 m!4536707))

(assert (=> b!3966391 m!4536703))

(declare-fun m!4536709 () Bool)

(assert (=> b!3966391 m!4536709))

(assert (=> b!3966391 m!4534981))

(declare-fun m!4536711 () Bool)

(assert (=> b!3966393 m!4536711))

(declare-fun m!4536713 () Bool)

(assert (=> b!3966399 m!4536713))

(assert (=> b!3966396 m!4536703))

(assert (=> b!3966396 m!4536705))

(assert (=> b!3966396 m!4536705))

(assert (=> b!3966396 m!4536707))

(assert (=> b!3966396 m!4536707))

(declare-fun m!4536715 () Bool)

(assert (=> b!3966396 m!4536715))

(assert (=> b!3966394 m!4536703))

(declare-fun m!4536717 () Bool)

(assert (=> b!3966394 m!4536717))

(assert (=> b!3966392 m!4536703))

(assert (=> b!3966392 m!4536705))

(assert (=> b!3966392 m!4536705))

(assert (=> b!3966392 m!4536707))

(assert (=> b!3966392 m!4536707))

(declare-fun m!4536719 () Bool)

(assert (=> b!3966392 m!4536719))

(assert (=> b!3966397 m!4536703))

(declare-fun m!4536721 () Bool)

(assert (=> b!3966397 m!4536721))

(assert (=> b!3966397 m!4536721))

(declare-fun m!4536723 () Bool)

(assert (=> b!3966397 m!4536723))

(declare-fun m!4536725 () Bool)

(assert (=> bm!285492 m!4536725))

(declare-fun m!4536727 () Bool)

(assert (=> d!1175241 m!4536727))

(assert (=> d!1175241 m!4535577))

(assert (=> d!1175241 m!4535579))

(assert (=> d!1175241 m!4536259))

(assert (=> b!3965637 d!1175241))

(declare-fun d!1175251 () Bool)

(declare-fun lt!1389058 () Int)

(assert (=> d!1175251 (>= lt!1389058 0)))

(declare-fun e!2456567 () Int)

(assert (=> d!1175251 (= lt!1389058 e!2456567)))

(declare-fun c!688186 () Bool)

(assert (=> d!1175251 (= c!688186 ((_ is Nil!42275) (originalCharacters!7236 (h!47698 suffixTokens!72))))))

(assert (=> d!1175251 (= (size!31647 (originalCharacters!7236 (h!47698 suffixTokens!72))) lt!1389058)))

(declare-fun b!3966412 () Bool)

(assert (=> b!3966412 (= e!2456567 0)))

(declare-fun b!3966413 () Bool)

(assert (=> b!3966413 (= e!2456567 (+ 1 (size!31647 (t!330254 (originalCharacters!7236 (h!47698 suffixTokens!72))))))))

(assert (= (and d!1175251 c!688186) b!3966412))

(assert (= (and d!1175251 (not c!688186)) b!3966413))

(declare-fun m!4536735 () Bool)

(assert (=> b!3966413 m!4536735))

(assert (=> b!3965514 d!1175251))

(declare-fun d!1175255 () Bool)

(declare-fun res!1605581 () Bool)

(declare-fun e!2456610 () Bool)

(assert (=> d!1175255 (=> res!1605581 e!2456610)))

(assert (=> d!1175255 (= res!1605581 ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(assert (=> d!1175255 (= (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) e!2456610)))

(declare-fun b!3966468 () Bool)

(declare-fun e!2456608 () Bool)

(declare-fun call!285512 () Bool)

(assert (=> b!3966468 (= e!2456608 call!285512)))

(declare-fun c!688204 () Bool)

(declare-fun bm!285505 () Bool)

(declare-fun call!285511 () Bool)

(declare-fun c!688205 () Bool)

(assert (=> bm!285505 (= call!285511 (validRegex!5253 (ite c!688205 (reg!11870 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (ite c!688204 (regOne!23595 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (regTwo!23594 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))))

(declare-fun bm!285506 () Bool)

(declare-fun call!285510 () Bool)

(assert (=> bm!285506 (= call!285510 call!285511)))

(declare-fun b!3966469 () Bool)

(declare-fun e!2456611 () Bool)

(declare-fun e!2456605 () Bool)

(assert (=> b!3966469 (= e!2456611 e!2456605)))

(declare-fun res!1605579 () Bool)

(assert (=> b!3966469 (=> (not res!1605579) (not e!2456605))))

(assert (=> b!3966469 (= res!1605579 call!285512)))

(declare-fun b!3966470 () Bool)

(assert (=> b!3966470 (= e!2456605 call!285510)))

(declare-fun b!3966471 () Bool)

(declare-fun e!2456607 () Bool)

(declare-fun e!2456606 () Bool)

(assert (=> b!3966471 (= e!2456607 e!2456606)))

(declare-fun res!1605578 () Bool)

(assert (=> b!3966471 (= res!1605578 (not (nullable!4054 (reg!11870 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))))

(assert (=> b!3966471 (=> (not res!1605578) (not e!2456606))))

(declare-fun b!3966472 () Bool)

(declare-fun res!1605582 () Bool)

(assert (=> b!3966472 (=> (not res!1605582) (not e!2456608))))

(assert (=> b!3966472 (= res!1605582 call!285510)))

(declare-fun e!2456609 () Bool)

(assert (=> b!3966472 (= e!2456609 e!2456608)))

(declare-fun b!3966473 () Bool)

(assert (=> b!3966473 (= e!2456607 e!2456609)))

(assert (=> b!3966473 (= c!688204 ((_ is Union!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966474 () Bool)

(declare-fun res!1605580 () Bool)

(assert (=> b!3966474 (=> res!1605580 e!2456611)))

(assert (=> b!3966474 (= res!1605580 (not ((_ is Concat!18408) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (=> b!3966474 (= e!2456609 e!2456611)))

(declare-fun b!3966475 () Bool)

(assert (=> b!3966475 (= e!2456606 call!285511)))

(declare-fun b!3966476 () Bool)

(assert (=> b!3966476 (= e!2456610 e!2456607)))

(assert (=> b!3966476 (= c!688205 ((_ is Star!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun bm!285507 () Bool)

(assert (=> bm!285507 (= call!285512 (validRegex!5253 (ite c!688204 (regTwo!23595 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (regOne!23594 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))))

(assert (= (and d!1175255 (not res!1605581)) b!3966476))

(assert (= (and b!3966476 c!688205) b!3966471))

(assert (= (and b!3966476 (not c!688205)) b!3966473))

(assert (= (and b!3966471 res!1605578) b!3966475))

(assert (= (and b!3966473 c!688204) b!3966472))

(assert (= (and b!3966473 (not c!688204)) b!3966474))

(assert (= (and b!3966472 res!1605582) b!3966468))

(assert (= (and b!3966474 (not res!1605580)) b!3966469))

(assert (= (and b!3966469 res!1605579) b!3966470))

(assert (= (or b!3966468 b!3966469) bm!285507))

(assert (= (or b!3966472 b!3966470) bm!285506))

(assert (= (or b!3966475 bm!285506) bm!285505))

(declare-fun m!4536769 () Bool)

(assert (=> bm!285505 m!4536769))

(declare-fun m!4536771 () Bool)

(assert (=> b!3966471 m!4536771))

(declare-fun m!4536773 () Bool)

(assert (=> bm!285507 m!4536773))

(assert (=> d!1174611 d!1175255))

(declare-fun b!3966477 () Bool)

(declare-fun e!2456614 () Bool)

(declare-fun e!2456612 () Bool)

(assert (=> b!3966477 (= e!2456614 e!2456612)))

(declare-fun res!1605585 () Bool)

(assert (=> b!3966477 (=> (not res!1605585) (not e!2456612))))

(assert (=> b!3966477 (= res!1605585 (not ((_ is Nil!42275) (++!11029 prefix!426 suffix!1176))))))

(declare-fun b!3966479 () Bool)

(assert (=> b!3966479 (= e!2456612 (isPrefix!3725 (tail!6182 prefix!426) (tail!6182 (++!11029 prefix!426 suffix!1176))))))

(declare-fun d!1175275 () Bool)

(declare-fun e!2456613 () Bool)

(assert (=> d!1175275 e!2456613))

(declare-fun res!1605586 () Bool)

(assert (=> d!1175275 (=> res!1605586 e!2456613)))

(declare-fun lt!1389060 () Bool)

(assert (=> d!1175275 (= res!1605586 (not lt!1389060))))

(assert (=> d!1175275 (= lt!1389060 e!2456614)))

(declare-fun res!1605584 () Bool)

(assert (=> d!1175275 (=> res!1605584 e!2456614)))

(assert (=> d!1175275 (= res!1605584 ((_ is Nil!42275) prefix!426))))

(assert (=> d!1175275 (= (isPrefix!3725 prefix!426 (++!11029 prefix!426 suffix!1176)) lt!1389060)))

(declare-fun b!3966480 () Bool)

(assert (=> b!3966480 (= e!2456613 (>= (size!31647 (++!11029 prefix!426 suffix!1176)) (size!31647 prefix!426)))))

(declare-fun b!3966478 () Bool)

(declare-fun res!1605583 () Bool)

(assert (=> b!3966478 (=> (not res!1605583) (not e!2456612))))

(assert (=> b!3966478 (= res!1605583 (= (head!8450 prefix!426) (head!8450 (++!11029 prefix!426 suffix!1176))))))

(assert (= (and d!1175275 (not res!1605584)) b!3966477))

(assert (= (and b!3966477 res!1605585) b!3966478))

(assert (= (and b!3966478 res!1605583) b!3966479))

(assert (= (and d!1175275 (not res!1605586)) b!3966480))

(assert (=> b!3966479 m!4535385))

(assert (=> b!3966479 m!4534875))

(declare-fun m!4536775 () Bool)

(assert (=> b!3966479 m!4536775))

(assert (=> b!3966479 m!4535385))

(assert (=> b!3966479 m!4536775))

(declare-fun m!4536777 () Bool)

(assert (=> b!3966479 m!4536777))

(assert (=> b!3966480 m!4534875))

(declare-fun m!4536779 () Bool)

(assert (=> b!3966480 m!4536779))

(assert (=> b!3966480 m!4534977))

(assert (=> b!3966478 m!4535391))

(assert (=> b!3966478 m!4534875))

(declare-fun m!4536781 () Bool)

(assert (=> b!3966478 m!4536781))

(assert (=> d!1174691 d!1175275))

(assert (=> d!1174691 d!1174561))

(declare-fun d!1175277 () Bool)

(assert (=> d!1175277 (isPrefix!3725 prefix!426 (++!11029 prefix!426 suffix!1176))))

(assert (=> d!1175277 true))

(declare-fun _$46!1616 () Unit!60908)

(assert (=> d!1175277 (= (choose!23720 prefix!426 suffix!1176) _$46!1616)))

(declare-fun bs!587465 () Bool)

(assert (= bs!587465 d!1175277))

(assert (=> bs!587465 m!4534875))

(assert (=> bs!587465 m!4534875))

(assert (=> bs!587465 m!4535407))

(assert (=> d!1174691 d!1175277))

(declare-fun d!1175279 () Bool)

(assert (=> d!1175279 (= (inv!17 (value!209760 (h!47698 suffixTokens!72))) (= (charsToBigInt!1 (text!48510 (value!209760 (h!47698 suffixTokens!72)))) (value!209752 (value!209760 (h!47698 suffixTokens!72)))))))

(declare-fun bs!587466 () Bool)

(assert (= bs!587466 d!1175279))

(declare-fun m!4536783 () Bool)

(assert (=> bs!587466 m!4536783))

(assert (=> b!3965337 d!1175279))

(declare-fun d!1175281 () Bool)

(declare-fun lt!1389061 () Int)

(assert (=> d!1175281 (>= lt!1389061 0)))

(declare-fun e!2456622 () Int)

(assert (=> d!1175281 (= lt!1389061 e!2456622)))

(declare-fun c!688208 () Bool)

(assert (=> d!1175281 (= c!688208 ((_ is Nil!42275) (t!330254 prefix!426)))))

(assert (=> d!1175281 (= (size!31647 (t!330254 prefix!426)) lt!1389061)))

(declare-fun b!3966490 () Bool)

(assert (=> b!3966490 (= e!2456622 0)))

(declare-fun b!3966491 () Bool)

(assert (=> b!3966491 (= e!2456622 (+ 1 (size!31647 (t!330254 (t!330254 prefix!426)))))))

(assert (= (and d!1175281 c!688208) b!3966490))

(assert (= (and d!1175281 (not c!688208)) b!3966491))

(declare-fun m!4536785 () Bool)

(assert (=> b!3966491 m!4536785))

(assert (=> b!3965560 d!1175281))

(declare-fun d!1175283 () Bool)

(assert (=> d!1175283 (= (isEmpty!25296 (originalCharacters!7236 (h!47698 prefixTokens!80))) ((_ is Nil!42275) (originalCharacters!7236 (h!47698 prefixTokens!80))))))

(assert (=> d!1174583 d!1175283))

(declare-fun b!3966492 () Bool)

(declare-fun e!2456624 () Bool)

(declare-fun lt!1389063 () tuple2!41576)

(assert (=> b!3966492 (= e!2456624 (not (isEmpty!25297 (_1!23922 lt!1389063))))))

(declare-fun b!3966493 () Bool)

(declare-fun e!2456623 () tuple2!41576)

(assert (=> b!3966493 (= e!2456623 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388649))))))

(declare-fun b!3966494 () Bool)

(declare-fun lt!1389062 () Option!9056)

(declare-fun lt!1389064 () tuple2!41576)

(assert (=> b!3966494 (= e!2456623 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1389062)) (_1!23922 lt!1389064)) (_2!23922 lt!1389064)))))

(assert (=> b!3966494 (= lt!1389064 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1389062))))))

(declare-fun b!3966496 () Bool)

(declare-fun e!2456625 () Bool)

(assert (=> b!3966496 (= e!2456625 e!2456624)))

(declare-fun res!1605592 () Bool)

(assert (=> b!3966496 (= res!1605592 (< (size!31647 (_2!23922 lt!1389063)) (size!31647 (_2!23921 (v!39401 lt!1388649)))))))

(assert (=> b!3966496 (=> (not res!1605592) (not e!2456624))))

(declare-fun b!3966495 () Bool)

(assert (=> b!3966495 (= e!2456625 (= (_2!23922 lt!1389063) (_2!23921 (v!39401 lt!1388649))))))

(declare-fun d!1175285 () Bool)

(assert (=> d!1175285 e!2456625))

(declare-fun c!688210 () Bool)

(assert (=> d!1175285 (= c!688210 (> (size!31648 (_1!23922 lt!1389063)) 0))))

(assert (=> d!1175285 (= lt!1389063 e!2456623)))

(declare-fun c!688209 () Bool)

(assert (=> d!1175285 (= c!688209 ((_ is Some!9055) lt!1389062))))

(assert (=> d!1175285 (= lt!1389062 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388649))))))

(assert (=> d!1175285 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388649))) lt!1389063)))

(assert (= (and d!1175285 c!688209) b!3966494))

(assert (= (and d!1175285 (not c!688209)) b!3966493))

(assert (= (and d!1175285 c!688210) b!3966496))

(assert (= (and d!1175285 (not c!688210)) b!3966495))

(assert (= (and b!3966496 res!1605592) b!3966492))

(declare-fun m!4536793 () Bool)

(assert (=> b!3966492 m!4536793))

(declare-fun m!4536795 () Bool)

(assert (=> b!3966494 m!4536795))

(declare-fun m!4536797 () Bool)

(assert (=> b!3966496 m!4536797))

(declare-fun m!4536799 () Bool)

(assert (=> b!3966496 m!4536799))

(declare-fun m!4536801 () Bool)

(assert (=> d!1175285 m!4536801))

(declare-fun m!4536803 () Bool)

(assert (=> d!1175285 m!4536803))

(assert (=> b!3965341 d!1175285))

(declare-fun d!1175291 () Bool)

(declare-fun e!2456634 () Bool)

(assert (=> d!1175291 e!2456634))

(declare-fun res!1605597 () Bool)

(assert (=> d!1175291 (=> (not res!1605597) (not e!2456634))))

(declare-fun lt!1389071 () BalanceConc!25288)

(assert (=> d!1175291 (= res!1605597 (= (list!15688 lt!1389071) lt!1388609))))

(declare-fun fromList!836 (List!42399) Conc!12847)

(assert (=> d!1175291 (= lt!1389071 (BalanceConc!25289 (fromList!836 lt!1388609)))))

(assert (=> d!1175291 (= (fromListB!2259 lt!1388609) lt!1389071)))

(declare-fun b!3966510 () Bool)

(assert (=> b!3966510 (= e!2456634 (isBalanced!3652 (fromList!836 lt!1388609)))))

(assert (= (and d!1175291 res!1605597) b!3966510))

(declare-fun m!4536825 () Bool)

(assert (=> d!1175291 m!4536825))

(declare-fun m!4536827 () Bool)

(assert (=> d!1175291 m!4536827))

(assert (=> b!3966510 m!4536827))

(assert (=> b!3966510 m!4536827))

(declare-fun m!4536829 () Bool)

(assert (=> b!3966510 m!4536829))

(assert (=> d!1174609 d!1175291))

(declare-fun b!3966581 () Bool)

(declare-fun e!2456670 () Bool)

(declare-fun lt!1389086 () Bool)

(assert (=> b!3966581 (= e!2456670 (not lt!1389086))))

(declare-fun b!3966582 () Bool)

(declare-fun e!2456671 () Bool)

(assert (=> b!3966582 (= e!2456671 (= (head!8450 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun b!3966583 () Bool)

(declare-fun e!2456673 () Bool)

(declare-fun e!2456672 () Bool)

(assert (=> b!3966583 (= e!2456673 e!2456672)))

(declare-fun res!1605634 () Bool)

(assert (=> b!3966583 (=> (not res!1605634) (not e!2456672))))

(assert (=> b!3966583 (= res!1605634 (not lt!1389086))))

(declare-fun b!3966584 () Bool)

(declare-fun e!2456675 () Bool)

(assert (=> b!3966584 (= e!2456675 (not (= (head!8450 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))))

(declare-fun b!3966585 () Bool)

(declare-fun e!2456669 () Bool)

(declare-fun call!285519 () Bool)

(assert (=> b!3966585 (= e!2456669 (= lt!1389086 call!285519))))

(declare-fun d!1175307 () Bool)

(assert (=> d!1175307 e!2456669))

(declare-fun c!688236 () Bool)

(assert (=> d!1175307 (= c!688236 ((_ is EmptyExpr!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun e!2456674 () Bool)

(assert (=> d!1175307 (= lt!1389086 e!2456674)))

(declare-fun c!688237 () Bool)

(assert (=> d!1175307 (= c!688237 (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(assert (=> d!1175307 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175307 (= (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))) lt!1389086)))

(declare-fun b!3966586 () Bool)

(assert (=> b!3966586 (= e!2456669 e!2456670)))

(declare-fun c!688235 () Bool)

(assert (=> b!3966586 (= c!688235 ((_ is EmptyLang!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966587 () Bool)

(declare-fun res!1605636 () Bool)

(assert (=> b!3966587 (=> (not res!1605636) (not e!2456671))))

(assert (=> b!3966587 (= res!1605636 (isEmpty!25296 (tail!6182 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630))))))))

(declare-fun bm!285514 () Bool)

(assert (=> bm!285514 (= call!285519 (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun b!3966588 () Bool)

(declare-fun res!1605630 () Bool)

(assert (=> b!3966588 (=> res!1605630 e!2456675)))

(assert (=> b!3966588 (= res!1605630 (not (isEmpty!25296 (tail!6182 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))))

(declare-fun b!3966589 () Bool)

(declare-fun res!1605629 () Bool)

(assert (=> b!3966589 (=> res!1605629 e!2456673)))

(assert (=> b!3966589 (= res!1605629 (not ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (=> b!3966589 (= e!2456670 e!2456673)))

(declare-fun b!3966590 () Bool)

(assert (=> b!3966590 (= e!2456674 (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966591 () Bool)

(declare-fun res!1605635 () Bool)

(assert (=> b!3966591 (=> res!1605635 e!2456673)))

(assert (=> b!3966591 (= res!1605635 e!2456671)))

(declare-fun res!1605631 () Bool)

(assert (=> b!3966591 (=> (not res!1605631) (not e!2456671))))

(assert (=> b!3966591 (= res!1605631 lt!1389086)))

(declare-fun b!3966592 () Bool)

(assert (=> b!3966592 (= e!2456672 e!2456675)))

(declare-fun res!1605633 () Bool)

(assert (=> b!3966592 (=> res!1605633 e!2456675)))

(assert (=> b!3966592 (= res!1605633 call!285519)))

(declare-fun b!3966593 () Bool)

(declare-fun res!1605632 () Bool)

(assert (=> b!3966593 (=> (not res!1605632) (not e!2456671))))

(assert (=> b!3966593 (= res!1605632 (not call!285519))))

(declare-fun b!3966594 () Bool)

(declare-fun derivativeStep!3471 (Regex!11541 C!23268) Regex!11541)

(assert (=> b!3966594 (= e!2456674 (matchR!5545 (derivativeStep!3471 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (head!8450 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630))))) (tail!6182 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630))))))))

(assert (= (and d!1175307 c!688237) b!3966590))

(assert (= (and d!1175307 (not c!688237)) b!3966594))

(assert (= (and d!1175307 c!688236) b!3966585))

(assert (= (and d!1175307 (not c!688236)) b!3966586))

(assert (= (and b!3966586 c!688235) b!3966581))

(assert (= (and b!3966586 (not c!688235)) b!3966589))

(assert (= (and b!3966589 (not res!1605629)) b!3966591))

(assert (= (and b!3966591 res!1605631) b!3966593))

(assert (= (and b!3966593 res!1605632) b!3966587))

(assert (= (and b!3966587 res!1605636) b!3966582))

(assert (= (and b!3966591 (not res!1605635)) b!3966583))

(assert (= (and b!3966583 res!1605634) b!3966592))

(assert (= (and b!3966592 (not res!1605633)) b!3966588))

(assert (= (and b!3966588 (not res!1605630)) b!3966584))

(assert (= (or b!3966585 b!3966593 b!3966592) bm!285514))

(declare-fun m!4536927 () Bool)

(assert (=> b!3966587 m!4536927))

(assert (=> b!3966587 m!4536927))

(declare-fun m!4536929 () Bool)

(assert (=> b!3966587 m!4536929))

(declare-fun m!4536931 () Bool)

(assert (=> b!3966582 m!4536931))

(assert (=> d!1175307 m!4535261))

(assert (=> d!1175307 m!4535171))

(assert (=> b!3966594 m!4536931))

(assert (=> b!3966594 m!4536931))

(declare-fun m!4536933 () Bool)

(assert (=> b!3966594 m!4536933))

(assert (=> b!3966594 m!4536927))

(assert (=> b!3966594 m!4536933))

(assert (=> b!3966594 m!4536927))

(declare-fun m!4536935 () Bool)

(assert (=> b!3966594 m!4536935))

(assert (=> b!3966588 m!4536927))

(assert (=> b!3966588 m!4536927))

(assert (=> b!3966588 m!4536929))

(assert (=> b!3966590 m!4535173))

(assert (=> b!3966584 m!4536931))

(assert (=> bm!285514 m!4535261))

(assert (=> b!3965474 d!1175307))

(declare-fun b!3966704 () Bool)

(declare-fun e!2456736 () tuple2!41578)

(declare-fun lt!1389215 () tuple2!41578)

(assert (=> b!3966704 (= e!2456736 lt!1389215)))

(declare-fun bm!285533 () Bool)

(declare-fun call!285539 () tuple2!41578)

(declare-fun call!285543 () Regex!11541)

(declare-fun call!285542 () List!42399)

(declare-fun lt!1389216 () List!42399)

(assert (=> bm!285533 (= call!285539 (findLongestMatchInner!1301 call!285543 lt!1389216 (+ (size!31647 Nil!42275) 1) call!285542 lt!1388630 (size!31647 lt!1388630)))))

(declare-fun bm!285534 () Bool)

(assert (=> bm!285534 (= call!285542 (tail!6182 lt!1388630))))

(declare-fun b!3966705 () Bool)

(declare-fun e!2456735 () Unit!60908)

(declare-fun Unit!60925 () Unit!60908)

(assert (=> b!3966705 (= e!2456735 Unit!60925)))

(declare-fun lt!1389204 () Unit!60908)

(declare-fun call!285545 () Unit!60908)

(assert (=> b!3966705 (= lt!1389204 call!285545)))

(declare-fun call!285540 () Bool)

(assert (=> b!3966705 call!285540))

(declare-fun lt!1389219 () Unit!60908)

(assert (=> b!3966705 (= lt!1389219 lt!1389204)))

(declare-fun lt!1389201 () Unit!60908)

(declare-fun call!285544 () Unit!60908)

(assert (=> b!3966705 (= lt!1389201 call!285544)))

(assert (=> b!3966705 (= lt!1388630 Nil!42275)))

(declare-fun lt!1389220 () Unit!60908)

(assert (=> b!3966705 (= lt!1389220 lt!1389201)))

(assert (=> b!3966705 false))

(declare-fun b!3966706 () Bool)

(declare-fun e!2456739 () tuple2!41578)

(assert (=> b!3966706 (= e!2456739 (tuple2!41579 Nil!42275 lt!1388630))))

(declare-fun b!3966707 () Bool)

(declare-fun e!2456738 () tuple2!41578)

(assert (=> b!3966707 (= e!2456738 call!285539)))

(declare-fun bm!285536 () Bool)

(assert (=> bm!285536 (= call!285545 (lemmaIsPrefixRefl!2347 lt!1388630 lt!1388630))))

(declare-fun b!3966708 () Bool)

(declare-fun e!2456733 () tuple2!41578)

(assert (=> b!3966708 (= e!2456733 (tuple2!41579 Nil!42275 Nil!42275))))

(declare-fun bm!285537 () Bool)

(declare-fun call!285541 () Bool)

(assert (=> bm!285537 (= call!285541 (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966709 () Bool)

(declare-fun c!688270 () Bool)

(assert (=> b!3966709 (= c!688270 call!285541)))

(declare-fun lt!1389200 () Unit!60908)

(declare-fun lt!1389194 () Unit!60908)

(assert (=> b!3966709 (= lt!1389200 lt!1389194)))

(declare-fun lt!1389196 () C!23268)

(declare-fun lt!1389211 () List!42399)

(assert (=> b!3966709 (= (++!11029 (++!11029 Nil!42275 (Cons!42275 lt!1389196 Nil!42275)) lt!1389211) lt!1388630)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1235 (List!42399 C!23268 List!42399 List!42399) Unit!60908)

(assert (=> b!3966709 (= lt!1389194 (lemmaMoveElementToOtherListKeepsConcatEq!1235 Nil!42275 lt!1389196 lt!1389211 lt!1388630))))

(assert (=> b!3966709 (= lt!1389211 (tail!6182 lt!1388630))))

(assert (=> b!3966709 (= lt!1389196 (head!8450 lt!1388630))))

(declare-fun lt!1389205 () Unit!60908)

(declare-fun lt!1389212 () Unit!60908)

(assert (=> b!3966709 (= lt!1389205 lt!1389212)))

(assert (=> b!3966709 (isPrefix!3725 (++!11029 Nil!42275 (Cons!42275 (head!8450 (getSuffix!2176 lt!1388630 Nil!42275)) Nil!42275)) lt!1388630)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!617 (List!42399 List!42399) Unit!60908)

(assert (=> b!3966709 (= lt!1389212 (lemmaAddHeadSuffixToPrefixStillPrefix!617 Nil!42275 lt!1388630))))

(declare-fun lt!1389214 () Unit!60908)

(declare-fun lt!1389202 () Unit!60908)

(assert (=> b!3966709 (= lt!1389214 lt!1389202)))

(assert (=> b!3966709 (= lt!1389202 (lemmaAddHeadSuffixToPrefixStillPrefix!617 Nil!42275 lt!1388630))))

(assert (=> b!3966709 (= lt!1389216 (++!11029 Nil!42275 (Cons!42275 (head!8450 lt!1388630) Nil!42275)))))

(declare-fun lt!1389203 () Unit!60908)

(assert (=> b!3966709 (= lt!1389203 e!2456735)))

(declare-fun c!688272 () Bool)

(assert (=> b!3966709 (= c!688272 (= (size!31647 Nil!42275) (size!31647 lt!1388630)))))

(declare-fun lt!1389195 () Unit!60908)

(declare-fun lt!1389213 () Unit!60908)

(assert (=> b!3966709 (= lt!1389195 lt!1389213)))

(assert (=> b!3966709 (<= (size!31647 Nil!42275) (size!31647 lt!1388630))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!425 (List!42399 List!42399) Unit!60908)

(assert (=> b!3966709 (= lt!1389213 (lemmaIsPrefixThenSmallerEqSize!425 Nil!42275 lt!1388630))))

(declare-fun e!2456734 () tuple2!41578)

(assert (=> b!3966709 (= e!2456734 e!2456738)))

(declare-fun b!3966710 () Bool)

(declare-fun Unit!60926 () Unit!60908)

(assert (=> b!3966710 (= e!2456735 Unit!60926)))

(declare-fun b!3966711 () Bool)

(declare-fun c!688271 () Bool)

(assert (=> b!3966711 (= c!688271 call!285541)))

(declare-fun lt!1389210 () Unit!60908)

(declare-fun lt!1389199 () Unit!60908)

(assert (=> b!3966711 (= lt!1389210 lt!1389199)))

(assert (=> b!3966711 (= lt!1388630 Nil!42275)))

(assert (=> b!3966711 (= lt!1389199 call!285544)))

(declare-fun lt!1389208 () Unit!60908)

(declare-fun lt!1389218 () Unit!60908)

(assert (=> b!3966711 (= lt!1389208 lt!1389218)))

(assert (=> b!3966711 call!285540))

(assert (=> b!3966711 (= lt!1389218 call!285545)))

(assert (=> b!3966711 (= e!2456734 e!2456733)))

(declare-fun d!1175339 () Bool)

(declare-fun e!2456740 () Bool)

(assert (=> d!1175339 e!2456740))

(declare-fun res!1605681 () Bool)

(assert (=> d!1175339 (=> (not res!1605681) (not e!2456740))))

(declare-fun lt!1389206 () tuple2!41578)

(assert (=> d!1175339 (= res!1605681 (= (++!11029 (_1!23923 lt!1389206) (_2!23923 lt!1389206)) lt!1388630))))

(assert (=> d!1175339 (= lt!1389206 e!2456739)))

(declare-fun c!688269 () Bool)

(declare-fun lostCause!991 (Regex!11541) Bool)

(assert (=> d!1175339 (= c!688269 (lostCause!991 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun lt!1389207 () Unit!60908)

(declare-fun Unit!60927 () Unit!60908)

(assert (=> d!1175339 (= lt!1389207 Unit!60927)))

(assert (=> d!1175339 (= (getSuffix!2176 lt!1388630 Nil!42275) lt!1388630)))

(declare-fun lt!1389209 () Unit!60908)

(declare-fun lt!1389217 () Unit!60908)

(assert (=> d!1175339 (= lt!1389209 lt!1389217)))

(declare-fun lt!1389198 () List!42399)

(assert (=> d!1175339 (= lt!1388630 lt!1389198)))

(assert (=> d!1175339 (= lt!1389217 (lemmaSamePrefixThenSameSuffix!1934 Nil!42275 lt!1388630 Nil!42275 lt!1389198 lt!1388630))))

(assert (=> d!1175339 (= lt!1389198 (getSuffix!2176 lt!1388630 Nil!42275))))

(declare-fun lt!1389221 () Unit!60908)

(declare-fun lt!1389197 () Unit!60908)

(assert (=> d!1175339 (= lt!1389221 lt!1389197)))

(assert (=> d!1175339 (isPrefix!3725 Nil!42275 (++!11029 Nil!42275 lt!1388630))))

(assert (=> d!1175339 (= lt!1389197 (lemmaConcatTwoListThenFirstIsPrefix!2584 Nil!42275 lt!1388630))))

(assert (=> d!1175339 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175339 (= (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)) lt!1389206)))

(declare-fun bm!285535 () Bool)

(assert (=> bm!285535 (= call!285540 (isPrefix!3725 lt!1388630 lt!1388630))))

(declare-fun b!3966712 () Bool)

(assert (=> b!3966712 (= e!2456738 e!2456736)))

(assert (=> b!3966712 (= lt!1389215 call!285539)))

(declare-fun c!688268 () Bool)

(assert (=> b!3966712 (= c!688268 (isEmpty!25296 (_1!23923 lt!1389215)))))

(declare-fun b!3966713 () Bool)

(assert (=> b!3966713 (= e!2456736 (tuple2!41579 Nil!42275 lt!1388630))))

(declare-fun bm!285538 () Bool)

(declare-fun call!285538 () C!23268)

(assert (=> bm!285538 (= call!285543 (derivativeStep!3471 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) call!285538))))

(declare-fun b!3966714 () Bool)

(declare-fun e!2456737 () Bool)

(assert (=> b!3966714 (= e!2456737 (>= (size!31647 (_1!23923 lt!1389206)) (size!31647 Nil!42275)))))

(declare-fun b!3966715 () Bool)

(assert (=> b!3966715 (= e!2456739 e!2456734)))

(declare-fun c!688273 () Bool)

(assert (=> b!3966715 (= c!688273 (= (size!31647 Nil!42275) (size!31647 lt!1388630)))))

(declare-fun b!3966716 () Bool)

(assert (=> b!3966716 (= e!2456733 (tuple2!41579 Nil!42275 lt!1388630))))

(declare-fun bm!285539 () Bool)

(assert (=> bm!285539 (= call!285544 (lemmaIsPrefixSameLengthThenSameList!847 lt!1388630 Nil!42275 lt!1388630))))

(declare-fun bm!285540 () Bool)

(assert (=> bm!285540 (= call!285538 (head!8450 lt!1388630))))

(declare-fun b!3966717 () Bool)

(assert (=> b!3966717 (= e!2456740 e!2456737)))

(declare-fun res!1605682 () Bool)

(assert (=> b!3966717 (=> res!1605682 e!2456737)))

(assert (=> b!3966717 (= res!1605682 (isEmpty!25296 (_1!23923 lt!1389206)))))

(assert (= (and d!1175339 c!688269) b!3966706))

(assert (= (and d!1175339 (not c!688269)) b!3966715))

(assert (= (and b!3966715 c!688273) b!3966711))

(assert (= (and b!3966715 (not c!688273)) b!3966709))

(assert (= (and b!3966711 c!688271) b!3966708))

(assert (= (and b!3966711 (not c!688271)) b!3966716))

(assert (= (and b!3966709 c!688272) b!3966705))

(assert (= (and b!3966709 (not c!688272)) b!3966710))

(assert (= (and b!3966709 c!688270) b!3966712))

(assert (= (and b!3966709 (not c!688270)) b!3966707))

(assert (= (and b!3966712 c!688268) b!3966713))

(assert (= (and b!3966712 (not c!688268)) b!3966704))

(assert (= (or b!3966712 b!3966707) bm!285540))

(assert (= (or b!3966712 b!3966707) bm!285534))

(assert (= (or b!3966712 b!3966707) bm!285538))

(assert (= (or b!3966712 b!3966707) bm!285533))

(assert (= (or b!3966711 b!3966705) bm!285539))

(assert (= (or b!3966711 b!3966709) bm!285537))

(assert (= (or b!3966711 b!3966705) bm!285535))

(assert (= (or b!3966711 b!3966705) bm!285536))

(assert (= (and d!1175339 res!1605681) b!3966717))

(assert (= (and b!3966717 (not res!1605682)) b!3966714))

(assert (=> bm!285535 m!4535577))

(assert (=> bm!285533 m!4534981))

(declare-fun m!4537117 () Bool)

(assert (=> bm!285533 m!4537117))

(assert (=> bm!285540 m!4535405))

(declare-fun m!4537119 () Bool)

(assert (=> bm!285539 m!4537119))

(assert (=> bm!285534 m!4535119))

(assert (=> d!1175339 m!4535171))

(declare-fun m!4537121 () Bool)

(assert (=> d!1175339 m!4537121))

(declare-fun m!4537123 () Bool)

(assert (=> d!1175339 m!4537123))

(declare-fun m!4537125 () Bool)

(assert (=> d!1175339 m!4537125))

(assert (=> d!1175339 m!4537125))

(declare-fun m!4537127 () Bool)

(assert (=> d!1175339 m!4537127))

(declare-fun m!4537129 () Bool)

(assert (=> d!1175339 m!4537129))

(declare-fun m!4537131 () Bool)

(assert (=> d!1175339 m!4537131))

(declare-fun m!4537133 () Bool)

(assert (=> d!1175339 m!4537133))

(declare-fun m!4537135 () Bool)

(assert (=> b!3966712 m!4537135))

(assert (=> bm!285537 m!4535173))

(declare-fun m!4537137 () Bool)

(assert (=> b!3966709 m!4537137))

(declare-fun m!4537139 () Bool)

(assert (=> b!3966709 m!4537139))

(declare-fun m!4537141 () Bool)

(assert (=> b!3966709 m!4537141))

(declare-fun m!4537143 () Bool)

(assert (=> b!3966709 m!4537143))

(assert (=> b!3966709 m!4535241))

(assert (=> b!3966709 m!4537131))

(declare-fun m!4537145 () Bool)

(assert (=> b!3966709 m!4537145))

(declare-fun m!4537147 () Bool)

(assert (=> b!3966709 m!4537147))

(assert (=> b!3966709 m!4534981))

(declare-fun m!4537149 () Bool)

(assert (=> b!3966709 m!4537149))

(assert (=> b!3966709 m!4535119))

(assert (=> b!3966709 m!4537131))

(assert (=> b!3966709 m!4537137))

(assert (=> b!3966709 m!4535405))

(declare-fun m!4537151 () Bool)

(assert (=> b!3966709 m!4537151))

(declare-fun m!4537153 () Bool)

(assert (=> b!3966709 m!4537153))

(assert (=> b!3966709 m!4537141))

(assert (=> bm!285536 m!4535579))

(declare-fun m!4537155 () Bool)

(assert (=> bm!285538 m!4537155))

(declare-fun m!4537157 () Bool)

(assert (=> b!3966714 m!4537157))

(assert (=> b!3966714 m!4535241))

(declare-fun m!4537159 () Bool)

(assert (=> b!3966717 m!4537159))

(assert (=> b!3965474 d!1175339))

(declare-fun d!1175407 () Bool)

(declare-fun lt!1389222 () Int)

(assert (=> d!1175407 (>= lt!1389222 0)))

(declare-fun e!2456741 () Int)

(assert (=> d!1175407 (= lt!1389222 e!2456741)))

(declare-fun c!688274 () Bool)

(assert (=> d!1175407 (= c!688274 ((_ is Nil!42275) Nil!42275))))

(assert (=> d!1175407 (= (size!31647 Nil!42275) lt!1389222)))

(declare-fun b!3966718 () Bool)

(assert (=> b!3966718 (= e!2456741 0)))

(declare-fun b!3966719 () Bool)

(assert (=> b!3966719 (= e!2456741 (+ 1 (size!31647 (t!330254 Nil!42275))))))

(assert (= (and d!1175407 c!688274) b!3966718))

(assert (= (and d!1175407 (not c!688274)) b!3966719))

(declare-fun m!4537161 () Bool)

(assert (=> b!3966719 m!4537161))

(assert (=> b!3965474 d!1175407))

(assert (=> b!3965474 d!1174637))

(declare-fun b!3966722 () Bool)

(declare-fun res!1605683 () Bool)

(declare-fun e!2456743 () Bool)

(assert (=> b!3966722 (=> (not res!1605683) (not e!2456743))))

(declare-fun lt!1389223 () List!42399)

(assert (=> b!3966722 (= res!1605683 (= (size!31647 lt!1389223) (+ (size!31647 (t!330254 lt!1388621)) (size!31647 suffix!1176))))))

(declare-fun b!3966723 () Bool)

(assert (=> b!3966723 (= e!2456743 (or (not (= suffix!1176 Nil!42275)) (= lt!1389223 (t!330254 lt!1388621))))))

(declare-fun b!3966720 () Bool)

(declare-fun e!2456742 () List!42399)

(assert (=> b!3966720 (= e!2456742 suffix!1176)))

(declare-fun d!1175409 () Bool)

(assert (=> d!1175409 e!2456743))

(declare-fun res!1605684 () Bool)

(assert (=> d!1175409 (=> (not res!1605684) (not e!2456743))))

(assert (=> d!1175409 (= res!1605684 (= (content!6421 lt!1389223) ((_ map or) (content!6421 (t!330254 lt!1388621)) (content!6421 suffix!1176))))))

(assert (=> d!1175409 (= lt!1389223 e!2456742)))

(declare-fun c!688275 () Bool)

(assert (=> d!1175409 (= c!688275 ((_ is Nil!42275) (t!330254 lt!1388621)))))

(assert (=> d!1175409 (= (++!11029 (t!330254 lt!1388621) suffix!1176) lt!1389223)))

(declare-fun b!3966721 () Bool)

(assert (=> b!3966721 (= e!2456742 (Cons!42275 (h!47695 (t!330254 lt!1388621)) (++!11029 (t!330254 (t!330254 lt!1388621)) suffix!1176)))))

(assert (= (and d!1175409 c!688275) b!3966720))

(assert (= (and d!1175409 (not c!688275)) b!3966721))

(assert (= (and d!1175409 res!1605684) b!3966722))

(assert (= (and b!3966722 res!1605683) b!3966723))

(declare-fun m!4537163 () Bool)

(assert (=> b!3966722 m!4537163))

(assert (=> b!3966722 m!4535633))

(assert (=> b!3966722 m!4534863))

(declare-fun m!4537165 () Bool)

(assert (=> d!1175409 m!4537165))

(assert (=> d!1175409 m!4536595))

(assert (=> d!1175409 m!4535025))

(declare-fun m!4537167 () Bool)

(assert (=> b!3966721 m!4537167))

(assert (=> b!3965600 d!1175409))

(assert (=> b!3965551 d!1175111))

(declare-fun d!1175411 () Bool)

(assert (=> d!1175411 (= (head!8450 lt!1388630) (h!47695 lt!1388630))))

(assert (=> b!3965551 d!1175411))

(declare-fun d!1175413 () Bool)

(assert (=> d!1175413 (= (inv!15 (value!209760 (h!47698 prefixTokens!80))) (= (charsToBigInt!0 (text!48511 (value!209760 (h!47698 prefixTokens!80))) 0) (value!209755 (value!209760 (h!47698 prefixTokens!80)))))))

(declare-fun bs!587478 () Bool)

(assert (= bs!587478 d!1175413))

(declare-fun m!4537169 () Bool)

(assert (=> bs!587478 m!4537169))

(assert (=> b!3965584 d!1175413))

(declare-fun d!1175415 () Bool)

(assert (=> d!1175415 (= (isEmpty!25297 (_1!23922 lt!1388670)) ((_ is Nil!42278) (_1!23922 lt!1388670)))))

(assert (=> b!3965375 d!1175415))

(declare-fun d!1175417 () Bool)

(assert (=> d!1175417 (= lt!1388609 prefix!426)))

(assert (=> d!1175417 true))

(declare-fun _$60!813 () Unit!60908)

(assert (=> d!1175417 (= (choose!23729 lt!1388609 prefix!426 lt!1388630) _$60!813)))

(assert (=> d!1174707 d!1175417))

(assert (=> d!1174707 d!1175071))

(declare-fun d!1175419 () Bool)

(assert (=> d!1175419 (= (isEmpty!25297 (_1!23922 lt!1388821)) ((_ is Nil!42278) (_1!23922 lt!1388821)))))

(assert (=> b!3965645 d!1175419))

(declare-fun bs!587479 () Bool)

(declare-fun d!1175421 () Bool)

(assert (= bs!587479 (and d!1175421 d!1175139)))

(declare-fun lambda!126823 () Int)

(assert (=> bs!587479 (= (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (= lambda!126823 lambda!126810))))

(assert (=> d!1175421 true))

(assert (=> d!1175421 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (dynLambda!18049 order!22401 lambda!126823))))

(assert (=> d!1175421 (= (equivClasses!2757 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (Forall2!1061 lambda!126823))))

(declare-fun bs!587480 () Bool)

(assert (= bs!587480 d!1175421))

(declare-fun m!4537171 () Bool)

(assert (=> bs!587480 m!4537171))

(assert (=> b!3965644 d!1175421))

(declare-fun d!1175423 () Bool)

(declare-fun lt!1389224 () Int)

(assert (=> d!1175423 (>= lt!1389224 0)))

(declare-fun e!2456744 () Int)

(assert (=> d!1175423 (= lt!1389224 e!2456744)))

(declare-fun c!688276 () Bool)

(assert (=> d!1175423 (= c!688276 ((_ is Nil!42275) (_2!23922 lt!1388670)))))

(assert (=> d!1175423 (= (size!31647 (_2!23922 lt!1388670)) lt!1389224)))

(declare-fun b!3966724 () Bool)

(assert (=> b!3966724 (= e!2456744 0)))

(declare-fun b!3966725 () Bool)

(assert (=> b!3966725 (= e!2456744 (+ 1 (size!31647 (t!330254 (_2!23922 lt!1388670)))))))

(assert (= (and d!1175423 c!688276) b!3966724))

(assert (= (and d!1175423 (not c!688276)) b!3966725))

(declare-fun m!4537173 () Bool)

(assert (=> b!3966725 m!4537173))

(assert (=> b!3965379 d!1175423))

(assert (=> b!3965379 d!1174737))

(declare-fun bs!587481 () Bool)

(declare-fun d!1175425 () Bool)

(assert (= bs!587481 (and d!1175425 d!1175139)))

(declare-fun lambda!126824 () Int)

(assert (=> bs!587481 (= (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (= lambda!126824 lambda!126810))))

(declare-fun bs!587482 () Bool)

(assert (= bs!587482 (and d!1175425 d!1175421)))

(assert (=> bs!587482 (= (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (= lambda!126824 lambda!126823))))

(assert (=> d!1175425 true))

(assert (=> d!1175425 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (h!47697 rules!2768)))) (dynLambda!18049 order!22401 lambda!126824))))

(assert (=> d!1175425 (= (equivClasses!2757 (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (h!47697 rules!2768)))) (Forall2!1061 lambda!126824))))

(declare-fun bs!587483 () Bool)

(assert (= bs!587483 d!1175425))

(declare-fun m!4537175 () Bool)

(assert (=> bs!587483 m!4537175))

(assert (=> b!3965650 d!1175425))

(declare-fun d!1175427 () Bool)

(declare-fun c!688277 () Bool)

(assert (=> d!1175427 (= c!688277 ((_ is Nil!42278) lt!1388665))))

(declare-fun e!2456745 () (InoxSet Token!12410))

(assert (=> d!1175427 (= (content!6420 lt!1388665) e!2456745)))

(declare-fun b!3966726 () Bool)

(assert (=> b!3966726 (= e!2456745 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966727 () Bool)

(assert (=> b!3966727 (= e!2456745 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388665) true) (content!6420 (t!330257 lt!1388665))))))

(assert (= (and d!1175427 c!688277) b!3966726))

(assert (= (and d!1175427 (not c!688277)) b!3966727))

(declare-fun m!4537177 () Bool)

(assert (=> b!3966727 m!4537177))

(declare-fun m!4537179 () Bool)

(assert (=> b!3966727 m!4537179))

(assert (=> d!1174581 d!1175427))

(assert (=> d!1174581 d!1175015))

(declare-fun d!1175429 () Bool)

(declare-fun c!688278 () Bool)

(assert (=> d!1175429 (= c!688278 ((_ is Nil!42278) (_1!23922 lt!1388624)))))

(declare-fun e!2456746 () (InoxSet Token!12410))

(assert (=> d!1175429 (= (content!6420 (_1!23922 lt!1388624)) e!2456746)))

(declare-fun b!3966728 () Bool)

(assert (=> b!3966728 (= e!2456746 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966729 () Bool)

(assert (=> b!3966729 (= e!2456746 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 (_1!23922 lt!1388624)) true) (content!6420 (t!330257 (_1!23922 lt!1388624)))))))

(assert (= (and d!1175429 c!688278) b!3966728))

(assert (= (and d!1175429 (not c!688278)) b!3966729))

(declare-fun m!4537181 () Bool)

(assert (=> b!3966729 m!4537181))

(declare-fun m!4537183 () Bool)

(assert (=> b!3966729 m!4537183))

(assert (=> d!1174581 d!1175429))

(declare-fun d!1175431 () Bool)

(declare-fun c!688279 () Bool)

(assert (=> d!1175431 (= c!688279 ((_ is Nil!42278) lt!1388645))))

(declare-fun e!2456747 () (InoxSet Token!12410))

(assert (=> d!1175431 (= (content!6420 lt!1388645) e!2456747)))

(declare-fun b!3966730 () Bool)

(assert (=> b!3966730 (= e!2456747 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966731 () Bool)

(assert (=> b!3966731 (= e!2456747 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 lt!1388645) true) (content!6420 (t!330257 lt!1388645))))))

(assert (= (and d!1175431 c!688279) b!3966730))

(assert (= (and d!1175431 (not c!688279)) b!3966731))

(declare-fun m!4537185 () Bool)

(assert (=> b!3966731 m!4537185))

(declare-fun m!4537187 () Bool)

(assert (=> b!3966731 m!4537187))

(assert (=> d!1174559 d!1175431))

(declare-fun d!1175433 () Bool)

(declare-fun c!688280 () Bool)

(assert (=> d!1175433 (= c!688280 ((_ is Nil!42278) prefixTokens!80))))

(declare-fun e!2456748 () (InoxSet Token!12410))

(assert (=> d!1175433 (= (content!6420 prefixTokens!80) e!2456748)))

(declare-fun b!3966732 () Bool)

(assert (=> b!3966732 (= e!2456748 ((as const (Array Token!12410 Bool)) false))))

(declare-fun b!3966733 () Bool)

(assert (=> b!3966733 (= e!2456748 ((_ map or) (store ((as const (Array Token!12410 Bool)) false) (h!47698 prefixTokens!80) true) (content!6420 (t!330257 prefixTokens!80))))))

(assert (= (and d!1175433 c!688280) b!3966732))

(assert (= (and d!1175433 (not c!688280)) b!3966733))

(declare-fun m!4537189 () Bool)

(assert (=> b!3966733 m!4537189))

(assert (=> b!3966733 m!4536239))

(assert (=> d!1174559 d!1175433))

(assert (=> d!1174559 d!1175023))

(declare-fun b!3966734 () Bool)

(declare-fun e!2456751 () Bool)

(assert (=> b!3966734 (= e!2456751 (inv!15 (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))

(declare-fun b!3966735 () Bool)

(declare-fun e!2456750 () Bool)

(assert (=> b!3966735 (= e!2456750 (inv!16 (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))

(declare-fun b!3966736 () Bool)

(declare-fun e!2456749 () Bool)

(assert (=> b!3966736 (= e!2456750 e!2456749)))

(declare-fun c!688281 () Bool)

(assert (=> b!3966736 (= c!688281 ((_ is IntegerValue!20599) (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))

(declare-fun b!3966737 () Bool)

(assert (=> b!3966737 (= e!2456749 (inv!17 (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))

(declare-fun d!1175435 () Bool)

(declare-fun c!688282 () Bool)

(assert (=> d!1175435 (= c!688282 ((_ is IntegerValue!20598) (value!209760 (h!47698 (t!330257 prefixTokens!80)))))))

(assert (=> d!1175435 (= (inv!21 (value!209760 (h!47698 (t!330257 prefixTokens!80)))) e!2456750)))

(declare-fun b!3966738 () Bool)

(declare-fun res!1605685 () Bool)

(assert (=> b!3966738 (=> res!1605685 e!2456751)))

(assert (=> b!3966738 (= res!1605685 (not ((_ is IntegerValue!20600) (value!209760 (h!47698 (t!330257 prefixTokens!80))))))))

(assert (=> b!3966738 (= e!2456749 e!2456751)))

(assert (= (and d!1175435 c!688282) b!3966735))

(assert (= (and d!1175435 (not c!688282)) b!3966736))

(assert (= (and b!3966736 c!688281) b!3966737))

(assert (= (and b!3966736 (not c!688281)) b!3966738))

(assert (= (and b!3966738 (not res!1605685)) b!3966734))

(declare-fun m!4537191 () Bool)

(assert (=> b!3966734 m!4537191))

(declare-fun m!4537193 () Bool)

(assert (=> b!3966735 m!4537193))

(declare-fun m!4537195 () Bool)

(assert (=> b!3966737 m!4537195))

(assert (=> b!3965699 d!1175435))

(declare-fun d!1175437 () Bool)

(declare-fun lt!1389225 () Int)

(assert (=> d!1175437 (>= lt!1389225 0)))

(declare-fun e!2456752 () Int)

(assert (=> d!1175437 (= lt!1389225 e!2456752)))

(declare-fun c!688283 () Bool)

(assert (=> d!1175437 (= c!688283 ((_ is Nil!42278) (_1!23922 lt!1388688)))))

(assert (=> d!1175437 (= (size!31648 (_1!23922 lt!1388688)) lt!1389225)))

(declare-fun b!3966739 () Bool)

(assert (=> b!3966739 (= e!2456752 0)))

(declare-fun b!3966740 () Bool)

(assert (=> b!3966740 (= e!2456752 (+ 1 (size!31648 (t!330257 (_1!23922 lt!1388688)))))))

(assert (= (and d!1175437 c!688283) b!3966739))

(assert (= (and d!1175437 (not c!688283)) b!3966740))

(declare-fun m!4537197 () Bool)

(assert (=> b!3966740 m!4537197))

(assert (=> d!1174613 d!1175437))

(declare-fun b!3966741 () Bool)

(declare-fun res!1605691 () Bool)

(declare-fun e!2456753 () Bool)

(assert (=> b!3966741 (=> (not res!1605691) (not e!2456753))))

(declare-fun lt!1389227 () Option!9056)

(assert (=> b!3966741 (= res!1605691 (< (size!31647 (_2!23921 (get!13944 lt!1389227))) (size!31647 lt!1388612)))))

(declare-fun b!3966742 () Bool)

(declare-fun res!1605692 () Bool)

(assert (=> b!3966742 (=> (not res!1605692) (not e!2456753))))

(assert (=> b!3966742 (= res!1605692 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1389227)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389227))))))))

(declare-fun b!3966743 () Bool)

(declare-fun e!2456754 () Option!9056)

(declare-fun lt!1389229 () Option!9056)

(declare-fun lt!1389228 () Option!9056)

(assert (=> b!3966743 (= e!2456754 (ite (and ((_ is None!9055) lt!1389229) ((_ is None!9055) lt!1389228)) None!9055 (ite ((_ is None!9055) lt!1389228) lt!1389229 (ite ((_ is None!9055) lt!1389229) lt!1389228 (ite (>= (size!31646 (_1!23921 (v!39401 lt!1389229))) (size!31646 (_1!23921 (v!39401 lt!1389228)))) lt!1389229 lt!1389228)))))))

(declare-fun call!285546 () Option!9056)

(assert (=> b!3966743 (= lt!1389229 call!285546)))

(assert (=> b!3966743 (= lt!1389228 (maxPrefix!3529 thiss!20629 (t!330256 rules!2768) lt!1388612))))

(declare-fun d!1175439 () Bool)

(declare-fun e!2456755 () Bool)

(assert (=> d!1175439 e!2456755))

(declare-fun res!1605686 () Bool)

(assert (=> d!1175439 (=> res!1605686 e!2456755)))

(assert (=> d!1175439 (= res!1605686 (isEmpty!25299 lt!1389227))))

(assert (=> d!1175439 (= lt!1389227 e!2456754)))

(declare-fun c!688284 () Bool)

(assert (=> d!1175439 (= c!688284 (and ((_ is Cons!42277) rules!2768) ((_ is Nil!42277) (t!330256 rules!2768))))))

(declare-fun lt!1389226 () Unit!60908)

(declare-fun lt!1389230 () Unit!60908)

(assert (=> d!1175439 (= lt!1389226 lt!1389230)))

(assert (=> d!1175439 (isPrefix!3725 lt!1388612 lt!1388612)))

(assert (=> d!1175439 (= lt!1389230 (lemmaIsPrefixRefl!2347 lt!1388612 lt!1388612))))

(assert (=> d!1175439 (rulesValidInductive!2405 thiss!20629 rules!2768)))

(assert (=> d!1175439 (= (maxPrefix!3529 thiss!20629 rules!2768 lt!1388612) lt!1389227)))

(declare-fun b!3966744 () Bool)

(assert (=> b!3966744 (= e!2456753 (contains!8435 rules!2768 (rule!9622 (_1!23921 (get!13944 lt!1389227)))))))

(declare-fun b!3966745 () Bool)

(declare-fun res!1605688 () Bool)

(assert (=> b!3966745 (=> (not res!1605688) (not e!2456753))))

(assert (=> b!3966745 (= res!1605688 (= (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389227)))) (originalCharacters!7236 (_1!23921 (get!13944 lt!1389227)))))))

(declare-fun bm!285541 () Bool)

(assert (=> bm!285541 (= call!285546 (maxPrefixOneRule!2579 thiss!20629 (h!47697 rules!2768) lt!1388612))))

(declare-fun b!3966746 () Bool)

(declare-fun res!1605689 () Bool)

(assert (=> b!3966746 (=> (not res!1605689) (not e!2456753))))

(assert (=> b!3966746 (= res!1605689 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1389227)))) (_2!23921 (get!13944 lt!1389227))) lt!1388612))))

(declare-fun b!3966747 () Bool)

(declare-fun res!1605687 () Bool)

(assert (=> b!3966747 (=> (not res!1605687) (not e!2456753))))

(assert (=> b!3966747 (= res!1605687 (= (value!209760 (_1!23921 (get!13944 lt!1389227))) (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1389227)))) (seqFromList!4895 (originalCharacters!7236 (_1!23921 (get!13944 lt!1389227)))))))))

(declare-fun b!3966748 () Bool)

(assert (=> b!3966748 (= e!2456754 call!285546)))

(declare-fun b!3966749 () Bool)

(assert (=> b!3966749 (= e!2456755 e!2456753)))

(declare-fun res!1605690 () Bool)

(assert (=> b!3966749 (=> (not res!1605690) (not e!2456753))))

(assert (=> b!3966749 (= res!1605690 (isDefined!7006 lt!1389227))))

(assert (= (and d!1175439 c!688284) b!3966748))

(assert (= (and d!1175439 (not c!688284)) b!3966743))

(assert (= (or b!3966748 b!3966743) bm!285541))

(assert (= (and d!1175439 (not res!1605686)) b!3966749))

(assert (= (and b!3966749 res!1605690) b!3966745))

(assert (= (and b!3966745 res!1605688) b!3966741))

(assert (= (and b!3966741 res!1605691) b!3966746))

(assert (= (and b!3966746 res!1605689) b!3966747))

(assert (= (and b!3966747 res!1605687) b!3966742))

(assert (= (and b!3966742 res!1605692) b!3966744))

(declare-fun m!4537199 () Bool)

(assert (=> b!3966745 m!4537199))

(declare-fun m!4537201 () Bool)

(assert (=> b!3966745 m!4537201))

(assert (=> b!3966745 m!4537201))

(declare-fun m!4537203 () Bool)

(assert (=> b!3966745 m!4537203))

(assert (=> b!3966741 m!4537199))

(declare-fun m!4537205 () Bool)

(assert (=> b!3966741 m!4537205))

(assert (=> b!3966741 m!4535067))

(declare-fun m!4537207 () Bool)

(assert (=> b!3966743 m!4537207))

(declare-fun m!4537209 () Bool)

(assert (=> b!3966749 m!4537209))

(assert (=> b!3966746 m!4537199))

(assert (=> b!3966746 m!4537201))

(assert (=> b!3966746 m!4537201))

(assert (=> b!3966746 m!4537203))

(assert (=> b!3966746 m!4537203))

(declare-fun m!4537211 () Bool)

(assert (=> b!3966746 m!4537211))

(assert (=> b!3966744 m!4537199))

(declare-fun m!4537213 () Bool)

(assert (=> b!3966744 m!4537213))

(assert (=> b!3966742 m!4537199))

(assert (=> b!3966742 m!4537201))

(assert (=> b!3966742 m!4537201))

(assert (=> b!3966742 m!4537203))

(assert (=> b!3966742 m!4537203))

(declare-fun m!4537215 () Bool)

(assert (=> b!3966742 m!4537215))

(assert (=> b!3966747 m!4537199))

(declare-fun m!4537217 () Bool)

(assert (=> b!3966747 m!4537217))

(assert (=> b!3966747 m!4537217))

(declare-fun m!4537219 () Bool)

(assert (=> b!3966747 m!4537219))

(declare-fun m!4537221 () Bool)

(assert (=> bm!285541 m!4537221))

(declare-fun m!4537223 () Bool)

(assert (=> d!1175439 m!4537223))

(declare-fun m!4537225 () Bool)

(assert (=> d!1175439 m!4537225))

(declare-fun m!4537227 () Bool)

(assert (=> d!1175439 m!4537227))

(assert (=> d!1175439 m!4535581))

(assert (=> d!1174613 d!1175439))

(declare-fun d!1175441 () Bool)

(declare-fun lt!1389231 () Int)

(assert (=> d!1175441 (>= lt!1389231 0)))

(declare-fun e!2456756 () Int)

(assert (=> d!1175441 (= lt!1389231 e!2456756)))

(declare-fun c!688285 () Bool)

(assert (=> d!1175441 (= c!688285 ((_ is Nil!42275) lt!1388753))))

(assert (=> d!1175441 (= (size!31647 lt!1388753) lt!1389231)))

(declare-fun b!3966750 () Bool)

(assert (=> b!3966750 (= e!2456756 0)))

(declare-fun b!3966751 () Bool)

(assert (=> b!3966751 (= e!2456756 (+ 1 (size!31647 (t!330254 lt!1388753))))))

(assert (= (and d!1175441 c!688285) b!3966750))

(assert (= (and d!1175441 (not c!688285)) b!3966751))

(declare-fun m!4537229 () Bool)

(assert (=> b!3966751 m!4537229))

(assert (=> b!3965537 d!1175441))

(assert (=> b!3965537 d!1174605))

(assert (=> b!3965537 d!1174799))

(declare-fun d!1175443 () Bool)

(assert (=> d!1175443 (= (_2!23921 (v!39401 lt!1388603)) lt!1388612)))

(assert (=> d!1175443 true))

(declare-fun _$63!1020 () Unit!60908)

(assert (=> d!1175443 (= (choose!23721 lt!1388609 (_2!23921 (v!39401 lt!1388603)) lt!1388609 lt!1388612 lt!1388630) _$63!1020)))

(assert (=> d!1174717 d!1175443))

(assert (=> d!1174717 d!1175071))

(declare-fun b!3966752 () Bool)

(declare-fun e!2456759 () Bool)

(declare-fun e!2456757 () Bool)

(assert (=> b!3966752 (= e!2456759 e!2456757)))

(declare-fun res!1605695 () Bool)

(assert (=> b!3966752 (=> (not res!1605695) (not e!2456757))))

(assert (=> b!3966752 (= res!1605695 (not ((_ is Nil!42275) (tail!6182 lt!1388612))))))

(declare-fun b!3966754 () Bool)

(assert (=> b!3966754 (= e!2456757 (isPrefix!3725 (tail!6182 (tail!6182 lt!1388621)) (tail!6182 (tail!6182 lt!1388612))))))

(declare-fun d!1175445 () Bool)

(declare-fun e!2456758 () Bool)

(assert (=> d!1175445 e!2456758))

(declare-fun res!1605696 () Bool)

(assert (=> d!1175445 (=> res!1605696 e!2456758)))

(declare-fun lt!1389232 () Bool)

(assert (=> d!1175445 (= res!1605696 (not lt!1389232))))

(assert (=> d!1175445 (= lt!1389232 e!2456759)))

(declare-fun res!1605694 () Bool)

(assert (=> d!1175445 (=> res!1605694 e!2456759)))

(assert (=> d!1175445 (= res!1605694 ((_ is Nil!42275) (tail!6182 lt!1388621)))))

(assert (=> d!1175445 (= (isPrefix!3725 (tail!6182 lt!1388621) (tail!6182 lt!1388612)) lt!1389232)))

(declare-fun b!3966755 () Bool)

(assert (=> b!3966755 (= e!2456758 (>= (size!31647 (tail!6182 lt!1388612)) (size!31647 (tail!6182 lt!1388621))))))

(declare-fun b!3966753 () Bool)

(declare-fun res!1605693 () Bool)

(assert (=> b!3966753 (=> (not res!1605693) (not e!2456757))))

(assert (=> b!3966753 (= res!1605693 (= (head!8450 (tail!6182 lt!1388621)) (head!8450 (tail!6182 lt!1388612))))))

(assert (= (and d!1175445 (not res!1605694)) b!3966752))

(assert (= (and b!3966752 res!1605695) b!3966753))

(assert (= (and b!3966753 res!1605693) b!3966754))

(assert (= (and d!1175445 (not res!1605696)) b!3966755))

(assert (=> b!3966754 m!4535061))

(declare-fun m!4537231 () Bool)

(assert (=> b!3966754 m!4537231))

(assert (=> b!3966754 m!4535063))

(declare-fun m!4537233 () Bool)

(assert (=> b!3966754 m!4537233))

(assert (=> b!3966754 m!4537231))

(assert (=> b!3966754 m!4537233))

(declare-fun m!4537235 () Bool)

(assert (=> b!3966754 m!4537235))

(assert (=> b!3966755 m!4535063))

(declare-fun m!4537237 () Bool)

(assert (=> b!3966755 m!4537237))

(assert (=> b!3966755 m!4535061))

(declare-fun m!4537239 () Bool)

(assert (=> b!3966755 m!4537239))

(assert (=> b!3966753 m!4535061))

(declare-fun m!4537241 () Bool)

(assert (=> b!3966753 m!4537241))

(assert (=> b!3966753 m!4535063))

(declare-fun m!4537243 () Bool)

(assert (=> b!3966753 m!4537243))

(assert (=> b!3965358 d!1175445))

(declare-fun d!1175447 () Bool)

(assert (=> d!1175447 (= (tail!6182 lt!1388621) (t!330254 lt!1388621))))

(assert (=> b!3965358 d!1175447))

(declare-fun d!1175449 () Bool)

(assert (=> d!1175449 (= (tail!6182 lt!1388612) (t!330254 lt!1388612))))

(assert (=> b!3965358 d!1175449))

(declare-fun b!3966758 () Bool)

(declare-fun res!1605697 () Bool)

(declare-fun e!2456761 () Bool)

(assert (=> b!3966758 (=> (not res!1605697) (not e!2456761))))

(declare-fun lt!1389233 () List!42399)

(assert (=> b!3966758 (= res!1605697 (= (size!31647 lt!1389233) (+ (size!31647 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (size!31647 (_2!23921 (get!13944 lt!1388815))))))))

(declare-fun b!3966759 () Bool)

(assert (=> b!3966759 (= e!2456761 (or (not (= (_2!23921 (get!13944 lt!1388815)) Nil!42275)) (= lt!1389233 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))))))))

(declare-fun b!3966756 () Bool)

(declare-fun e!2456760 () List!42399)

(assert (=> b!3966756 (= e!2456760 (_2!23921 (get!13944 lt!1388815)))))

(declare-fun d!1175451 () Bool)

(assert (=> d!1175451 e!2456761))

(declare-fun res!1605698 () Bool)

(assert (=> d!1175451 (=> (not res!1605698) (not e!2456761))))

(assert (=> d!1175451 (= res!1605698 (= (content!6421 lt!1389233) ((_ map or) (content!6421 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (content!6421 (_2!23921 (get!13944 lt!1388815))))))))

(assert (=> d!1175451 (= lt!1389233 e!2456760)))

(declare-fun c!688286 () Bool)

(assert (=> d!1175451 (= c!688286 ((_ is Nil!42275) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))

(assert (=> d!1175451 (= (++!11029 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))) (_2!23921 (get!13944 lt!1388815))) lt!1389233)))

(declare-fun b!3966757 () Bool)

(assert (=> b!3966757 (= e!2456760 (Cons!42275 (h!47695 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (++!11029 (t!330254 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (_2!23921 (get!13944 lt!1388815)))))))

(assert (= (and d!1175451 c!688286) b!3966756))

(assert (= (and d!1175451 (not c!688286)) b!3966757))

(assert (= (and d!1175451 res!1605698) b!3966758))

(assert (= (and b!3966758 res!1605697) b!3966759))

(declare-fun m!4537245 () Bool)

(assert (=> b!3966758 m!4537245))

(assert (=> b!3966758 m!4535555))

(declare-fun m!4537247 () Bool)

(assert (=> b!3966758 m!4537247))

(assert (=> b!3966758 m!4535557))

(declare-fun m!4537249 () Bool)

(assert (=> d!1175451 m!4537249))

(assert (=> d!1175451 m!4535555))

(declare-fun m!4537251 () Bool)

(assert (=> d!1175451 m!4537251))

(declare-fun m!4537253 () Bool)

(assert (=> d!1175451 m!4537253))

(declare-fun m!4537255 () Bool)

(assert (=> b!3966757 m!4537255))

(assert (=> b!3965640 d!1175451))

(assert (=> b!3965640 d!1174983))

(assert (=> b!3965640 d!1174985))

(assert (=> b!3965640 d!1174957))

(declare-fun d!1175453 () Bool)

(declare-fun c!688287 () Bool)

(assert (=> d!1175453 (= c!688287 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(declare-fun e!2456762 () Bool)

(assert (=> d!1175453 (= (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))) e!2456762)))

(declare-fun b!3966760 () Bool)

(assert (=> b!3966760 (= e!2456762 (inv!56508 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(declare-fun b!3966761 () Bool)

(declare-fun e!2456763 () Bool)

(assert (=> b!3966761 (= e!2456762 e!2456763)))

(declare-fun res!1605699 () Bool)

(assert (=> b!3966761 (= res!1605699 (not ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))))))

(assert (=> b!3966761 (=> res!1605699 e!2456763)))

(declare-fun b!3966762 () Bool)

(assert (=> b!3966762 (= e!2456763 (inv!56509 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(assert (= (and d!1175453 c!688287) b!3966760))

(assert (= (and d!1175453 (not c!688287)) b!3966761))

(assert (= (and b!3966761 (not res!1605699)) b!3966762))

(declare-fun m!4537257 () Bool)

(assert (=> b!3966760 m!4537257))

(declare-fun m!4537259 () Bool)

(assert (=> b!3966762 m!4537259))

(assert (=> b!3965515 d!1175453))

(assert (=> d!1174641 d!1174601))

(declare-fun d!1175455 () Bool)

(assert (=> d!1175455 (= (maxPrefixOneRule!2579 thiss!20629 (rule!9622 (_1!23921 (v!39401 lt!1388603))) lt!1388630) (Some!9055 (tuple2!41575 (Token!12411 (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 lt!1388609)) (rule!9622 (_1!23921 (v!39401 lt!1388603))) (size!31647 lt!1388609) lt!1388609) (_2!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175455 true))

(declare-fun _$59!626 () Unit!60908)

(assert (=> d!1175455 (= (choose!23726 thiss!20629 rules!2768 lt!1388609 lt!1388630 (_2!23921 (v!39401 lt!1388603)) (rule!9622 (_1!23921 (v!39401 lt!1388603)))) _$59!626)))

(declare-fun bs!587484 () Bool)

(assert (= bs!587484 d!1175455))

(assert (=> bs!587484 m!4534985))

(assert (=> bs!587484 m!4534893))

(assert (=> bs!587484 m!4534893))

(assert (=> bs!587484 m!4534897))

(assert (=> bs!587484 m!4534889))

(assert (=> d!1174641 d!1175455))

(assert (=> d!1174641 d!1174615))

(assert (=> d!1174641 d!1174683))

(assert (=> d!1174641 d!1174605))

(assert (=> d!1174641 d!1174609))

(declare-fun d!1175457 () Bool)

(declare-fun lt!1389234 () Int)

(assert (=> d!1175457 (>= lt!1389234 0)))

(declare-fun e!2456764 () Int)

(assert (=> d!1175457 (= lt!1389234 e!2456764)))

(declare-fun c!688288 () Bool)

(assert (=> d!1175457 (= c!688288 ((_ is Nil!42275) lt!1388595))))

(assert (=> d!1175457 (= (size!31647 lt!1388595) lt!1389234)))

(declare-fun b!3966763 () Bool)

(assert (=> b!3966763 (= e!2456764 0)))

(declare-fun b!3966764 () Bool)

(assert (=> b!3966764 (= e!2456764 (+ 1 (size!31647 (t!330254 lt!1388595))))))

(assert (= (and d!1175457 c!688288) b!3966763))

(assert (= (and d!1175457 (not c!688288)) b!3966764))

(declare-fun m!4537261 () Bool)

(assert (=> b!3966764 m!4537261))

(assert (=> b!3965396 d!1175457))

(assert (=> b!3965396 d!1174605))

(assert (=> b!3965573 d!1175061))

(declare-fun d!1175459 () Bool)

(assert (=> d!1175459 (= (head!8450 lt!1388627) (h!47695 lt!1388627))))

(assert (=> b!3965573 d!1175459))

(declare-fun d!1175461 () Bool)

(declare-fun e!2456779 () Bool)

(assert (=> d!1175461 e!2456779))

(declare-fun res!1605702 () Bool)

(assert (=> d!1175461 (=> res!1605702 e!2456779)))

(assert (=> d!1175461 (= res!1605702 (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(declare-fun lt!1389293 () Unit!60908)

(declare-fun choose!23742 (Regex!11541 List!42399) Unit!60908)

(assert (=> d!1175461 (= lt!1389293 (choose!23742 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388630))))

(assert (=> d!1175461 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175461 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1274 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) lt!1388630) lt!1389293)))

(declare-fun b!3966791 () Bool)

(assert (=> b!3966791 (= e!2456779 (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(assert (= (and d!1175461 (not res!1605702)) b!3966791))

(assert (=> d!1175461 m!4535171))

(declare-fun m!4537263 () Bool)

(assert (=> d!1175461 m!4537263))

(assert (=> d!1175461 m!4535241))

(assert (=> d!1175461 m!4534981))

(assert (=> d!1175461 m!4535243))

(assert (=> d!1175461 m!4535241))

(assert (=> d!1175461 m!4535261))

(assert (=> d!1175461 m!4534981))

(assert (=> b!3966791 m!4535241))

(assert (=> b!3966791 m!4534981))

(assert (=> b!3966791 m!4535241))

(assert (=> b!3966791 m!4534981))

(assert (=> b!3966791 m!4535243))

(assert (=> b!3966791 m!4535245))

(assert (=> b!3965477 d!1175461))

(declare-fun d!1175463 () Bool)

(assert (=> d!1175463 (= (apply!9867 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 (_1!23923 lt!1388715))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 (_1!23923 lt!1388715))))))

(declare-fun b_lambda!115973 () Bool)

(assert (=> (not b_lambda!115973) (not d!1175463)))

(declare-fun t!330467 () Bool)

(declare-fun tb!239325 () Bool)

(assert (=> (and b!3965705 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330467) tb!239325))

(declare-fun result!289806 () Bool)

(assert (=> tb!239325 (= result!289806 (inv!21 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 (_1!23923 lt!1388715)))))))

(declare-fun m!4537265 () Bool)

(assert (=> tb!239325 m!4537265))

(assert (=> d!1175463 t!330467))

(declare-fun b_and!304747 () Bool)

(assert (= b_and!304709 (and (=> t!330467 result!289806) b_and!304747)))

(declare-fun t!330469 () Bool)

(declare-fun tb!239327 () Bool)

(assert (=> (and b!3965701 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330469) tb!239327))

(declare-fun result!289808 () Bool)

(assert (= result!289808 result!289806))

(assert (=> d!1175463 t!330469))

(declare-fun b_and!304749 () Bool)

(assert (= b_and!304707 (and (=> t!330469 result!289808) b_and!304749)))

(declare-fun t!330471 () Bool)

(declare-fun tb!239329 () Bool)

(assert (=> (and b!3965265 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330471) tb!239329))

(declare-fun result!289810 () Bool)

(assert (= result!289810 result!289806))

(assert (=> d!1175463 t!330471))

(declare-fun b_and!304751 () Bool)

(assert (= b_and!304701 (and (=> t!330471 result!289810) b_and!304751)))

(declare-fun t!330473 () Bool)

(declare-fun tb!239331 () Bool)

(assert (=> (and b!3965280 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330473) tb!239331))

(declare-fun result!289812 () Bool)

(assert (= result!289812 result!289806))

(assert (=> d!1175463 t!330473))

(declare-fun b_and!304753 () Bool)

(assert (= b_and!304703 (and (=> t!330473 result!289812) b_and!304753)))

(declare-fun tb!239333 () Bool)

(declare-fun t!330475 () Bool)

(assert (=> (and b!3965724 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330475) tb!239333))

(declare-fun result!289814 () Bool)

(assert (= result!289814 result!289806))

(assert (=> d!1175463 t!330475))

(declare-fun b_and!304755 () Bool)

(assert (= b_and!304705 (and (=> t!330475 result!289814) b_and!304755)))

(declare-fun tb!239335 () Bool)

(declare-fun t!330477 () Bool)

(assert (=> (and b!3965251 (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330477) tb!239335))

(declare-fun result!289816 () Bool)

(assert (= result!289816 result!289806))

(assert (=> d!1175463 t!330477))

(declare-fun b_and!304757 () Bool)

(assert (= b_and!304699 (and (=> t!330477 result!289816) b_and!304757)))

(assert (=> d!1175463 m!4535251))

(declare-fun m!4537267 () Bool)

(assert (=> d!1175463 m!4537267))

(assert (=> b!3965477 d!1175463))

(assert (=> b!3965477 d!1175407))

(declare-fun d!1175465 () Bool)

(assert (=> d!1175465 (= (seqFromList!4895 (_1!23923 lt!1388715)) (fromListB!2259 (_1!23923 lt!1388715)))))

(declare-fun bs!587485 () Bool)

(assert (= bs!587485 d!1175465))

(declare-fun m!4537269 () Bool)

(assert (=> bs!587485 m!4537269))

(assert (=> b!3965477 d!1175465))

(assert (=> b!3965477 d!1174637))

(declare-fun d!1175467 () Bool)

(declare-fun lt!1389296 () Int)

(assert (=> d!1175467 (= lt!1389296 (size!31647 (list!15688 (seqFromList!4895 (_1!23923 lt!1388715)))))))

(declare-fun size!31653 (Conc!12847) Int)

(assert (=> d!1175467 (= lt!1389296 (size!31653 (c!687924 (seqFromList!4895 (_1!23923 lt!1388715)))))))

(assert (=> d!1175467 (= (size!31649 (seqFromList!4895 (_1!23923 lt!1388715))) lt!1389296)))

(declare-fun bs!587486 () Bool)

(assert (= bs!587486 d!1175467))

(assert (=> bs!587486 m!4535251))

(declare-fun m!4537271 () Bool)

(assert (=> bs!587486 m!4537271))

(assert (=> bs!587486 m!4537271))

(declare-fun m!4537273 () Bool)

(assert (=> bs!587486 m!4537273))

(declare-fun m!4537275 () Bool)

(assert (=> bs!587486 m!4537275))

(assert (=> b!3965477 d!1175467))

(declare-fun d!1175469 () Bool)

(assert (=> d!1175469 (= (isEmpty!25296 (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))) ((_ is Nil!42275) (_1!23923 (findLongestMatchInner!1301 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) Nil!42275 (size!31647 Nil!42275) lt!1388630 lt!1388630 (size!31647 lt!1388630)))))))

(assert (=> b!3965477 d!1175469))

(assert (=> b!3965477 d!1175339))

(declare-fun bs!587487 () Bool)

(declare-fun d!1175471 () Bool)

(assert (= bs!587487 (and d!1175471 d!1175169)))

(declare-fun lambda!126827 () Int)

(assert (=> bs!587487 (= (and (= (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (= (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (= lambda!126827 lambda!126813))))

(declare-fun bs!587488 () Bool)

(assert (= bs!587488 (and d!1175471 d!1175173)))

(assert (=> bs!587488 (= (and (= (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (toChars!8975 (transformation!6636 (h!47697 rules!2768)))) (= (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (toValue!9116 (transformation!6636 (h!47697 rules!2768))))) (= lambda!126827 lambda!126814))))

(declare-fun b!3966814 () Bool)

(declare-fun e!2456795 () Bool)

(assert (=> b!3966814 (= e!2456795 true)))

(assert (=> d!1175471 e!2456795))

(assert (= d!1175471 b!3966814))

(assert (=> b!3966814 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) (dynLambda!18051 order!22405 lambda!126827))))

(assert (=> b!3966814 (< (dynLambda!18050 order!22403 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) (dynLambda!18051 order!22405 lambda!126827))))

(assert (=> d!1175471 (= (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 (_1!23923 lt!1388715))))) (list!15688 (seqFromList!4895 (_1!23923 lt!1388715))))))

(declare-fun lt!1389299 () Unit!60908)

(declare-fun ForallOf!801 (Int BalanceConc!25288) Unit!60908)

(assert (=> d!1175471 (= lt!1389299 (ForallOf!801 lambda!126827 (seqFromList!4895 (_1!23923 lt!1388715))))))

(assert (=> d!1175471 (= (lemmaSemiInverse!1809 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (seqFromList!4895 (_1!23923 lt!1388715))) lt!1389299)))

(declare-fun b_lambda!115975 () Bool)

(assert (=> (not b_lambda!115975) (not d!1175471)))

(declare-fun t!330479 () Bool)

(declare-fun tb!239337 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330479) tb!239337))

(declare-fun b!3966815 () Bool)

(declare-fun e!2456796 () Bool)

(declare-fun tp!1208784 () Bool)

(assert (=> b!3966815 (= e!2456796 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 (_1!23923 lt!1388715)))))) tp!1208784))))

(declare-fun result!289818 () Bool)

(assert (=> tb!239337 (= result!289818 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 (_1!23923 lt!1388715))))) e!2456796))))

(assert (= tb!239337 b!3966815))

(declare-fun m!4537277 () Bool)

(assert (=> b!3966815 m!4537277))

(declare-fun m!4537279 () Bool)

(assert (=> tb!239337 m!4537279))

(assert (=> d!1175471 t!330479))

(declare-fun b_and!304759 () Bool)

(assert (= b_and!304693 (and (=> t!330479 result!289818) b_and!304759)))

(declare-fun tb!239339 () Bool)

(declare-fun t!330481 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330481) tb!239339))

(declare-fun result!289820 () Bool)

(assert (= result!289820 result!289818))

(assert (=> d!1175471 t!330481))

(declare-fun b_and!304761 () Bool)

(assert (= b_and!304687 (and (=> t!330481 result!289820) b_and!304761)))

(declare-fun t!330483 () Bool)

(declare-fun tb!239341 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330483) tb!239341))

(declare-fun result!289822 () Bool)

(assert (= result!289822 result!289818))

(assert (=> d!1175471 t!330483))

(declare-fun b_and!304763 () Bool)

(assert (= b_and!304695 (and (=> t!330483 result!289822) b_and!304763)))

(declare-fun t!330485 () Bool)

(declare-fun tb!239343 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330485) tb!239343))

(declare-fun result!289824 () Bool)

(assert (= result!289824 result!289818))

(assert (=> d!1175471 t!330485))

(declare-fun b_and!304765 () Bool)

(assert (= b_and!304689 (and (=> t!330485 result!289824) b_and!304765)))

(declare-fun t!330487 () Bool)

(declare-fun tb!239345 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330487) tb!239345))

(declare-fun result!289826 () Bool)

(assert (= result!289826 result!289818))

(assert (=> d!1175471 t!330487))

(declare-fun b_and!304767 () Bool)

(assert (= b_and!304691 (and (=> t!330487 result!289826) b_and!304767)))

(declare-fun tb!239347 () Bool)

(declare-fun t!330489 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330489) tb!239347))

(declare-fun result!289828 () Bool)

(assert (= result!289828 result!289818))

(assert (=> d!1175471 t!330489))

(declare-fun b_and!304769 () Bool)

(assert (= b_and!304697 (and (=> t!330489 result!289828) b_and!304769)))

(declare-fun b_lambda!115977 () Bool)

(assert (=> (not b_lambda!115977) (not d!1175471)))

(assert (=> d!1175471 t!330469))

(declare-fun b_and!304771 () Bool)

(assert (= b_and!304749 (and (=> t!330469 result!289808) b_and!304771)))

(assert (=> d!1175471 t!330471))

(declare-fun b_and!304773 () Bool)

(assert (= b_and!304751 (and (=> t!330471 result!289810) b_and!304773)))

(assert (=> d!1175471 t!330475))

(declare-fun b_and!304775 () Bool)

(assert (= b_and!304755 (and (=> t!330475 result!289814) b_and!304775)))

(assert (=> d!1175471 t!330477))

(declare-fun b_and!304777 () Bool)

(assert (= b_and!304757 (and (=> t!330477 result!289816) b_and!304777)))

(assert (=> d!1175471 t!330467))

(declare-fun b_and!304779 () Bool)

(assert (= b_and!304747 (and (=> t!330467 result!289806) b_and!304779)))

(assert (=> d!1175471 t!330473))

(declare-fun b_and!304781 () Bool)

(assert (= b_and!304753 (and (=> t!330473 result!289812) b_and!304781)))

(assert (=> d!1175471 m!4537267))

(declare-fun m!4537325 () Bool)

(assert (=> d!1175471 m!4537325))

(assert (=> d!1175471 m!4535251))

(assert (=> d!1175471 m!4537267))

(assert (=> d!1175471 m!4535251))

(declare-fun m!4537327 () Bool)

(assert (=> d!1175471 m!4537327))

(assert (=> d!1175471 m!4537325))

(declare-fun m!4537329 () Bool)

(assert (=> d!1175471 m!4537329))

(assert (=> d!1175471 m!4535251))

(assert (=> d!1175471 m!4537271))

(assert (=> b!3965477 d!1175471))

(declare-fun b!3966816 () Bool)

(declare-fun e!2456799 () Bool)

(declare-fun e!2456797 () Bool)

(assert (=> b!3966816 (= e!2456799 e!2456797)))

(declare-fun res!1605711 () Bool)

(assert (=> b!3966816 (=> (not res!1605711) (not e!2456797))))

(assert (=> b!3966816 (= res!1605711 (not ((_ is Nil!42275) (++!11029 lt!1388609 lt!1388612))))))

(declare-fun b!3966818 () Bool)

(assert (=> b!3966818 (= e!2456797 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 (++!11029 lt!1388609 lt!1388612))))))

(declare-fun d!1175475 () Bool)

(declare-fun e!2456798 () Bool)

(assert (=> d!1175475 e!2456798))

(declare-fun res!1605712 () Bool)

(assert (=> d!1175475 (=> res!1605712 e!2456798)))

(declare-fun lt!1389328 () Bool)

(assert (=> d!1175475 (= res!1605712 (not lt!1389328))))

(assert (=> d!1175475 (= lt!1389328 e!2456799)))

(declare-fun res!1605710 () Bool)

(assert (=> d!1175475 (=> res!1605710 e!2456799)))

(assert (=> d!1175475 (= res!1605710 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175475 (= (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 lt!1388612)) lt!1389328)))

(declare-fun b!3966819 () Bool)

(assert (=> b!3966819 (= e!2456798 (>= (size!31647 (++!11029 lt!1388609 lt!1388612)) (size!31647 lt!1388609)))))

(declare-fun b!3966817 () Bool)

(declare-fun res!1605709 () Bool)

(assert (=> b!3966817 (=> (not res!1605709) (not e!2456797))))

(assert (=> b!3966817 (= res!1605709 (= (head!8450 lt!1388609) (head!8450 (++!11029 lt!1388609 lt!1388612))))))

(assert (= (and d!1175475 (not res!1605710)) b!3966816))

(assert (= (and b!3966816 res!1605711) b!3966817))

(assert (= (and b!3966817 res!1605709) b!3966818))

(assert (= (and d!1175475 (not res!1605712)) b!3966819))

(assert (=> b!3966818 m!4535151))

(assert (=> b!3966818 m!4534963))

(declare-fun m!4537331 () Bool)

(assert (=> b!3966818 m!4537331))

(assert (=> b!3966818 m!4535151))

(assert (=> b!3966818 m!4537331))

(declare-fun m!4537333 () Bool)

(assert (=> b!3966818 m!4537333))

(assert (=> b!3966819 m!4534963))

(declare-fun m!4537335 () Bool)

(assert (=> b!3966819 m!4537335))

(assert (=> b!3966819 m!4534889))

(assert (=> b!3966817 m!4535159))

(assert (=> b!3966817 m!4534963))

(declare-fun m!4537337 () Bool)

(assert (=> b!3966817 m!4537337))

(assert (=> d!1174721 d!1175475))

(assert (=> d!1174721 d!1174739))

(declare-fun d!1175477 () Bool)

(assert (=> d!1175477 (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 lt!1388612))))

(assert (=> d!1175477 true))

(declare-fun _$46!1618 () Unit!60908)

(assert (=> d!1175477 (= (choose!23720 lt!1388609 lt!1388612) _$46!1618)))

(declare-fun bs!587489 () Bool)

(assert (= bs!587489 d!1175477))

(assert (=> bs!587489 m!4534963))

(assert (=> bs!587489 m!4534963))

(assert (=> bs!587489 m!4535457))

(assert (=> d!1174721 d!1175477))

(declare-fun d!1175479 () Bool)

(declare-fun res!1605713 () Bool)

(declare-fun e!2456800 () Bool)

(assert (=> d!1175479 (=> (not res!1605713) (not e!2456800))))

(assert (=> d!1175479 (= res!1605713 (not (isEmpty!25296 (originalCharacters!7236 (h!47698 (t!330257 suffixTokens!72))))))))

(assert (=> d!1175479 (= (inv!56502 (h!47698 (t!330257 suffixTokens!72))) e!2456800)))

(declare-fun b!3966820 () Bool)

(declare-fun res!1605714 () Bool)

(assert (=> b!3966820 (=> (not res!1605714) (not e!2456800))))

(assert (=> b!3966820 (= res!1605714 (= (originalCharacters!7236 (h!47698 (t!330257 suffixTokens!72))) (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (value!209760 (h!47698 (t!330257 suffixTokens!72)))))))))

(declare-fun b!3966821 () Bool)

(assert (=> b!3966821 (= e!2456800 (= (size!31646 (h!47698 (t!330257 suffixTokens!72))) (size!31647 (originalCharacters!7236 (h!47698 (t!330257 suffixTokens!72))))))))

(assert (= (and d!1175479 res!1605713) b!3966820))

(assert (= (and b!3966820 res!1605714) b!3966821))

(declare-fun b_lambda!115979 () Bool)

(assert (=> (not b_lambda!115979) (not b!3966820)))

(declare-fun t!330491 () Bool)

(declare-fun tb!239349 () Bool)

(assert (=> (and b!3965705 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330491) tb!239349))

(declare-fun b!3966822 () Bool)

(declare-fun e!2456801 () Bool)

(declare-fun tp!1208785 () Bool)

(assert (=> b!3966822 (= e!2456801 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (value!209760 (h!47698 (t!330257 suffixTokens!72)))))) tp!1208785))))

(declare-fun result!289830 () Bool)

(assert (=> tb!239349 (= result!289830 (and (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (value!209760 (h!47698 (t!330257 suffixTokens!72))))) e!2456801))))

(assert (= tb!239349 b!3966822))

(declare-fun m!4537339 () Bool)

(assert (=> b!3966822 m!4537339))

(declare-fun m!4537341 () Bool)

(assert (=> tb!239349 m!4537341))

(assert (=> b!3966820 t!330491))

(declare-fun b_and!304783 () Bool)

(assert (= b_and!304767 (and (=> t!330491 result!289830) b_and!304783)))

(declare-fun t!330493 () Bool)

(declare-fun tb!239351 () Bool)

(assert (=> (and b!3965265 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330493) tb!239351))

(declare-fun result!289832 () Bool)

(assert (= result!289832 result!289830))

(assert (=> b!3966820 t!330493))

(declare-fun b_and!304785 () Bool)

(assert (= b_and!304763 (and (=> t!330493 result!289832) b_and!304785)))

(declare-fun tb!239353 () Bool)

(declare-fun t!330495 () Bool)

(assert (=> (and b!3965701 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330495) tb!239353))

(declare-fun result!289834 () Bool)

(assert (= result!289834 result!289830))

(assert (=> b!3966820 t!330495))

(declare-fun b_and!304787 () Bool)

(assert (= b_and!304761 (and (=> t!330495 result!289834) b_and!304787)))

(declare-fun t!330497 () Bool)

(declare-fun tb!239355 () Bool)

(assert (=> (and b!3965280 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330497) tb!239355))

(declare-fun result!289836 () Bool)

(assert (= result!289836 result!289830))

(assert (=> b!3966820 t!330497))

(declare-fun b_and!304789 () Bool)

(assert (= b_and!304769 (and (=> t!330497 result!289836) b_and!304789)))

(declare-fun tb!239357 () Bool)

(declare-fun t!330499 () Bool)

(assert (=> (and b!3965251 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330499) tb!239357))

(declare-fun result!289838 () Bool)

(assert (= result!289838 result!289830))

(assert (=> b!3966820 t!330499))

(declare-fun b_and!304791 () Bool)

(assert (= b_and!304765 (and (=> t!330499 result!289838) b_and!304791)))

(declare-fun tb!239359 () Bool)

(declare-fun t!330501 () Bool)

(assert (=> (and b!3965724 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330501) tb!239359))

(declare-fun result!289840 () Bool)

(assert (= result!289840 result!289830))

(assert (=> b!3966820 t!330501))

(declare-fun b_and!304793 () Bool)

(assert (= b_and!304759 (and (=> t!330501 result!289840) b_and!304793)))

(declare-fun m!4537349 () Bool)

(assert (=> d!1175479 m!4537349))

(declare-fun m!4537351 () Bool)

(assert (=> b!3966820 m!4537351))

(assert (=> b!3966820 m!4537351))

(declare-fun m!4537353 () Bool)

(assert (=> b!3966820 m!4537353))

(declare-fun m!4537355 () Bool)

(assert (=> b!3966821 m!4537355))

(assert (=> b!3965702 d!1175479))

(declare-fun b!3966823 () Bool)

(declare-fun e!2456803 () Bool)

(declare-fun lt!1389332 () Bool)

(assert (=> b!3966823 (= e!2456803 (not lt!1389332))))

(declare-fun b!3966824 () Bool)

(declare-fun e!2456804 () Bool)

(assert (=> b!3966824 (= e!2456804 (= (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))))

(declare-fun b!3966825 () Bool)

(declare-fun e!2456806 () Bool)

(declare-fun e!2456805 () Bool)

(assert (=> b!3966825 (= e!2456806 e!2456805)))

(declare-fun res!1605720 () Bool)

(assert (=> b!3966825 (=> (not res!1605720) (not e!2456805))))

(assert (=> b!3966825 (= res!1605720 (not lt!1389332))))

(declare-fun b!3966826 () Bool)

(declare-fun e!2456808 () Bool)

(assert (=> b!3966826 (= e!2456808 (not (= (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))))))))

(declare-fun b!3966827 () Bool)

(declare-fun e!2456802 () Bool)

(declare-fun call!285571 () Bool)

(assert (=> b!3966827 (= e!2456802 (= lt!1389332 call!285571))))

(declare-fun d!1175483 () Bool)

(assert (=> d!1175483 e!2456802))

(declare-fun c!688309 () Bool)

(assert (=> d!1175483 (= c!688309 ((_ is EmptyExpr!11541) (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun e!2456807 () Bool)

(assert (=> d!1175483 (= lt!1389332 e!2456807)))

(declare-fun c!688310 () Bool)

(assert (=> d!1175483 (= c!688310 (isEmpty!25296 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))

(assert (=> d!1175483 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))

(assert (=> d!1175483 (= (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))) lt!1389332)))

(declare-fun b!3966828 () Bool)

(assert (=> b!3966828 (= e!2456802 e!2456803)))

(declare-fun c!688308 () Bool)

(assert (=> b!3966828 (= c!688308 ((_ is EmptyLang!11541) (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun b!3966829 () Bool)

(declare-fun res!1605722 () Bool)

(assert (=> b!3966829 (=> (not res!1605722) (not e!2456804))))

(assert (=> b!3966829 (= res!1605722 (isEmpty!25296 (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))))))))

(declare-fun bm!285566 () Bool)

(assert (=> bm!285566 (= call!285571 (isEmpty!25296 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun b!3966830 () Bool)

(declare-fun res!1605716 () Bool)

(assert (=> b!3966830 (=> res!1605716 e!2456808)))

(assert (=> b!3966830 (= res!1605716 (not (isEmpty!25296 (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815))))))))))

(declare-fun b!3966831 () Bool)

(declare-fun res!1605715 () Bool)

(assert (=> b!3966831 (=> res!1605715 e!2456806)))

(assert (=> b!3966831 (= res!1605715 (not ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))))))

(assert (=> b!3966831 (= e!2456803 e!2456806)))

(declare-fun b!3966832 () Bool)

(assert (=> b!3966832 (= e!2456807 (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815))))))))

(declare-fun b!3966833 () Bool)

(declare-fun res!1605721 () Bool)

(assert (=> b!3966833 (=> res!1605721 e!2456806)))

(assert (=> b!3966833 (= res!1605721 e!2456804)))

(declare-fun res!1605717 () Bool)

(assert (=> b!3966833 (=> (not res!1605717) (not e!2456804))))

(assert (=> b!3966833 (= res!1605717 lt!1389332)))

(declare-fun b!3966834 () Bool)

(assert (=> b!3966834 (= e!2456805 e!2456808)))

(declare-fun res!1605719 () Bool)

(assert (=> b!3966834 (=> res!1605719 e!2456808)))

(assert (=> b!3966834 (= res!1605719 call!285571)))

(declare-fun b!3966835 () Bool)

(declare-fun res!1605718 () Bool)

(assert (=> b!3966835 (=> (not res!1605718) (not e!2456804))))

(assert (=> b!3966835 (= res!1605718 (not call!285571))))

(declare-fun b!3966836 () Bool)

(assert (=> b!3966836 (= e!2456807 (matchR!5545 (derivativeStep!3471 (regex!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))) (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))))) (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388815)))))))))

(assert (= (and d!1175483 c!688310) b!3966832))

(assert (= (and d!1175483 (not c!688310)) b!3966836))

(assert (= (and d!1175483 c!688309) b!3966827))

(assert (= (and d!1175483 (not c!688309)) b!3966828))

(assert (= (and b!3966828 c!688308) b!3966823))

(assert (= (and b!3966828 (not c!688308)) b!3966831))

(assert (= (and b!3966831 (not res!1605715)) b!3966833))

(assert (= (and b!3966833 res!1605717) b!3966835))

(assert (= (and b!3966835 res!1605718) b!3966829))

(assert (= (and b!3966829 res!1605722) b!3966824))

(assert (= (and b!3966833 (not res!1605721)) b!3966825))

(assert (= (and b!3966825 res!1605720) b!3966834))

(assert (= (and b!3966834 (not res!1605719)) b!3966830))

(assert (= (and b!3966830 (not res!1605716)) b!3966826))

(assert (= (or b!3966827 b!3966835 b!3966834) bm!285566))

(assert (=> b!3966829 m!4535555))

(declare-fun m!4537359 () Bool)

(assert (=> b!3966829 m!4537359))

(assert (=> b!3966829 m!4537359))

(declare-fun m!4537361 () Bool)

(assert (=> b!3966829 m!4537361))

(assert (=> b!3966824 m!4535555))

(declare-fun m!4537363 () Bool)

(assert (=> b!3966824 m!4537363))

(assert (=> d!1175483 m!4535555))

(declare-fun m!4537365 () Bool)

(assert (=> d!1175483 m!4537365))

(declare-fun m!4537369 () Bool)

(assert (=> d!1175483 m!4537369))

(assert (=> b!3966836 m!4535555))

(assert (=> b!3966836 m!4537363))

(assert (=> b!3966836 m!4537363))

(declare-fun m!4537371 () Bool)

(assert (=> b!3966836 m!4537371))

(assert (=> b!3966836 m!4535555))

(assert (=> b!3966836 m!4537359))

(assert (=> b!3966836 m!4537371))

(assert (=> b!3966836 m!4537359))

(declare-fun m!4537375 () Bool)

(assert (=> b!3966836 m!4537375))

(assert (=> b!3966830 m!4535555))

(assert (=> b!3966830 m!4537359))

(assert (=> b!3966830 m!4537359))

(assert (=> b!3966830 m!4537361))

(declare-fun m!4537377 () Bool)

(assert (=> b!3966832 m!4537377))

(assert (=> b!3966826 m!4535555))

(assert (=> b!3966826 m!4537363))

(assert (=> bm!285566 m!4535555))

(assert (=> bm!285566 m!4537365))

(assert (=> b!3965636 d!1175483))

(assert (=> b!3965636 d!1174957))

(assert (=> b!3965636 d!1174983))

(assert (=> b!3965636 d!1174985))

(declare-fun d!1175489 () Bool)

(declare-fun c!688311 () Bool)

(assert (=> d!1175489 (= c!688311 ((_ is Nil!42275) lt!1388648))))

(declare-fun e!2456810 () (InoxSet C!23268))

(assert (=> d!1175489 (= (content!6421 lt!1388648) e!2456810)))

(declare-fun b!3966837 () Bool)

(assert (=> b!3966837 (= e!2456810 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966838 () Bool)

(assert (=> b!3966838 (= e!2456810 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388648) true) (content!6421 (t!330254 lt!1388648))))))

(assert (= (and d!1175489 c!688311) b!3966837))

(assert (= (and d!1175489 (not c!688311)) b!3966838))

(declare-fun m!4537379 () Bool)

(assert (=> b!3966838 m!4537379))

(declare-fun m!4537381 () Bool)

(assert (=> b!3966838 m!4537381))

(assert (=> d!1174561 d!1175489))

(declare-fun d!1175491 () Bool)

(declare-fun c!688312 () Bool)

(assert (=> d!1175491 (= c!688312 ((_ is Nil!42275) prefix!426))))

(declare-fun e!2456811 () (InoxSet C!23268))

(assert (=> d!1175491 (= (content!6421 prefix!426) e!2456811)))

(declare-fun b!3966839 () Bool)

(assert (=> b!3966839 (= e!2456811 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966840 () Bool)

(assert (=> b!3966840 (= e!2456811 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 prefix!426) true) (content!6421 (t!330254 prefix!426))))))

(assert (= (and d!1175491 c!688312) b!3966839))

(assert (= (and d!1175491 (not c!688312)) b!3966840))

(declare-fun m!4537383 () Bool)

(assert (=> b!3966840 m!4537383))

(assert (=> b!3966840 m!4536341))

(assert (=> d!1174561 d!1175491))

(assert (=> d!1174561 d!1175121))

(declare-fun b!3966841 () Bool)

(declare-fun e!2456813 () List!42402)

(assert (=> b!3966841 (= e!2456813 (_1!23922 lt!1388624))))

(declare-fun b!3966842 () Bool)

(assert (=> b!3966842 (= e!2456813 (Cons!42278 (h!47698 (t!330257 lt!1388619)) (++!11030 (t!330257 (t!330257 lt!1388619)) (_1!23922 lt!1388624))))))

(declare-fun b!3966843 () Bool)

(declare-fun res!1605724 () Bool)

(declare-fun e!2456812 () Bool)

(assert (=> b!3966843 (=> (not res!1605724) (not e!2456812))))

(declare-fun lt!1389333 () List!42402)

(assert (=> b!3966843 (= res!1605724 (= (size!31648 lt!1389333) (+ (size!31648 (t!330257 lt!1388619)) (size!31648 (_1!23922 lt!1388624)))))))

(declare-fun b!3966844 () Bool)

(assert (=> b!3966844 (= e!2456812 (or (not (= (_1!23922 lt!1388624) Nil!42278)) (= lt!1389333 (t!330257 lt!1388619))))))

(declare-fun d!1175493 () Bool)

(assert (=> d!1175493 e!2456812))

(declare-fun res!1605723 () Bool)

(assert (=> d!1175493 (=> (not res!1605723) (not e!2456812))))

(assert (=> d!1175493 (= res!1605723 (= (content!6420 lt!1389333) ((_ map or) (content!6420 (t!330257 lt!1388619)) (content!6420 (_1!23922 lt!1388624)))))))

(assert (=> d!1175493 (= lt!1389333 e!2456813)))

(declare-fun c!688313 () Bool)

(assert (=> d!1175493 (= c!688313 ((_ is Nil!42278) (t!330257 lt!1388619)))))

(assert (=> d!1175493 (= (++!11030 (t!330257 lt!1388619) (_1!23922 lt!1388624)) lt!1389333)))

(assert (= (and d!1175493 c!688313) b!3966841))

(assert (= (and d!1175493 (not c!688313)) b!3966842))

(assert (= (and d!1175493 res!1605723) b!3966843))

(assert (= (and b!3966843 res!1605724) b!3966844))

(declare-fun m!4537385 () Bool)

(assert (=> b!3966842 m!4537385))

(declare-fun m!4537387 () Bool)

(assert (=> b!3966843 m!4537387))

(assert (=> b!3966843 m!4536183))

(assert (=> b!3966843 m!4535083))

(declare-fun m!4537389 () Bool)

(assert (=> d!1175493 m!4537389))

(assert (=> d!1175493 m!4536187))

(assert (=> d!1175493 m!4535089))

(assert (=> b!3965361 d!1175493))

(assert (=> d!1174771 d!1174781))

(declare-fun d!1175495 () Bool)

(assert (=> d!1175495 (not (= (lexList!1993 thiss!20629 rules!2768 suffix!1176) (tuple2!41577 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1175495 true))

(declare-fun _$44!1340 () Unit!60908)

(assert (=> d!1175495 (= (choose!23719 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388603)) suffix!1176 suffixTokens!72 suffixResult!91) _$44!1340)))

(declare-fun bs!587492 () Bool)

(assert (= bs!587492 d!1175495))

(assert (=> bs!587492 m!4534969))

(assert (=> d!1174771 d!1175495))

(assert (=> d!1174771 d!1174683))

(declare-fun d!1175497 () Bool)

(assert (=> d!1175497 (= (list!15688 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))) (list!15689 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(declare-fun bs!587493 () Bool)

(assert (= bs!587493 d!1175497))

(declare-fun m!4537391 () Bool)

(assert (=> bs!587493 m!4537391))

(assert (=> b!3965513 d!1175497))

(declare-fun b!3966845 () Bool)

(declare-fun e!2456816 () Bool)

(assert (=> b!3966845 (= e!2456816 (inv!15 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(declare-fun b!3966846 () Bool)

(declare-fun e!2456815 () Bool)

(assert (=> b!3966846 (= e!2456815 (inv!16 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(declare-fun b!3966847 () Bool)

(declare-fun e!2456814 () Bool)

(assert (=> b!3966847 (= e!2456815 e!2456814)))

(declare-fun c!688315 () Bool)

(assert (=> b!3966847 (= c!688315 ((_ is IntegerValue!20599) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(declare-fun b!3966848 () Bool)

(assert (=> b!3966848 (= e!2456814 (inv!17 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(declare-fun d!1175499 () Bool)

(declare-fun c!688316 () Bool)

(assert (=> d!1175499 (= c!688316 ((_ is IntegerValue!20598) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))))))

(assert (=> d!1175499 (= (inv!21 (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609))) e!2456815)))

(declare-fun b!3966849 () Bool)

(declare-fun res!1605725 () Bool)

(assert (=> b!3966849 (=> res!1605725 e!2456816)))

(assert (=> b!3966849 (= res!1605725 (not ((_ is IntegerValue!20600) (dynLambda!18043 (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (seqFromList!4895 lt!1388609)))))))

(assert (=> b!3966849 (= e!2456814 e!2456816)))

(assert (= (and d!1175499 c!688316) b!3966846))

(assert (= (and d!1175499 (not c!688316)) b!3966847))

(assert (= (and b!3966847 c!688315) b!3966848))

(assert (= (and b!3966847 (not c!688315)) b!3966849))

(assert (= (and b!3966849 (not res!1605725)) b!3966845))

(declare-fun m!4537393 () Bool)

(assert (=> b!3966845 m!4537393))

(declare-fun m!4537395 () Bool)

(assert (=> b!3966846 m!4537395))

(declare-fun m!4537397 () Bool)

(assert (=> b!3966848 m!4537397))

(assert (=> tb!239133 d!1175499))

(declare-fun d!1175501 () Bool)

(declare-fun lt!1389336 () Int)

(assert (=> d!1175501 (>= lt!1389336 0)))

(declare-fun e!2456817 () Int)

(assert (=> d!1175501 (= lt!1389336 e!2456817)))

(declare-fun c!688317 () Bool)

(assert (=> d!1175501 (= c!688317 ((_ is Nil!42278) lt!1388645))))

(assert (=> d!1175501 (= (size!31648 lt!1388645) lt!1389336)))

(declare-fun b!3966850 () Bool)

(assert (=> b!3966850 (= e!2456817 0)))

(declare-fun b!3966851 () Bool)

(assert (=> b!3966851 (= e!2456817 (+ 1 (size!31648 (t!330257 lt!1388645))))))

(assert (= (and d!1175501 c!688317) b!3966850))

(assert (= (and d!1175501 (not c!688317)) b!3966851))

(declare-fun m!4537399 () Bool)

(assert (=> b!3966851 m!4537399))

(assert (=> b!3965310 d!1175501))

(declare-fun d!1175503 () Bool)

(declare-fun lt!1389337 () Int)

(assert (=> d!1175503 (>= lt!1389337 0)))

(declare-fun e!2456818 () Int)

(assert (=> d!1175503 (= lt!1389337 e!2456818)))

(declare-fun c!688318 () Bool)

(assert (=> d!1175503 (= c!688318 ((_ is Nil!42278) prefixTokens!80))))

(assert (=> d!1175503 (= (size!31648 prefixTokens!80) lt!1389337)))

(declare-fun b!3966852 () Bool)

(assert (=> b!3966852 (= e!2456818 0)))

(declare-fun b!3966853 () Bool)

(assert (=> b!3966853 (= e!2456818 (+ 1 (size!31648 (t!330257 prefixTokens!80))))))

(assert (= (and d!1175503 c!688318) b!3966852))

(assert (= (and d!1175503 (not c!688318)) b!3966853))

(assert (=> b!3966853 m!4536235))

(assert (=> b!3965310 d!1175503))

(assert (=> b!3965310 d!1175047))

(declare-fun d!1175505 () Bool)

(assert (=> d!1175505 (= (head!8450 lt!1388621) (h!47695 lt!1388621))))

(assert (=> b!3965357 d!1175505))

(declare-fun d!1175507 () Bool)

(assert (=> d!1175507 (= (head!8450 lt!1388612) (h!47695 lt!1388612))))

(assert (=> b!3965357 d!1175507))

(assert (=> b!3965481 d!1174967))

(declare-fun d!1175509 () Bool)

(declare-fun lt!1389338 () Int)

(assert (=> d!1175509 (>= lt!1389338 0)))

(declare-fun e!2456819 () Int)

(assert (=> d!1175509 (= lt!1389338 e!2456819)))

(declare-fun c!688319 () Bool)

(assert (=> d!1175509 (= c!688319 ((_ is Nil!42275) (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))))))

(assert (=> d!1175509 (= (size!31647 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))) lt!1389338)))

(declare-fun b!3966854 () Bool)

(assert (=> b!3966854 (= e!2456819 0)))

(declare-fun b!3966855 () Bool)

(assert (=> b!3966855 (= e!2456819 (+ 1 (size!31647 (t!330254 (originalCharacters!7236 (_1!23921 (get!13944 lt!1388712)))))))))

(assert (= (and d!1175509 c!688319) b!3966854))

(assert (= (and d!1175509 (not c!688319)) b!3966855))

(declare-fun m!4537401 () Bool)

(assert (=> b!3966855 m!4537401))

(assert (=> b!3965481 d!1175509))

(declare-fun d!1175511 () Bool)

(declare-fun lt!1389339 () Int)

(assert (=> d!1175511 (>= lt!1389339 0)))

(declare-fun e!2456820 () Int)

(assert (=> d!1175511 (= lt!1389339 e!2456820)))

(declare-fun c!688320 () Bool)

(assert (=> d!1175511 (= c!688320 ((_ is Nil!42278) lt!1388752))))

(assert (=> d!1175511 (= (size!31648 lt!1388752) lt!1389339)))

(declare-fun b!3966856 () Bool)

(assert (=> b!3966856 (= e!2456820 0)))

(declare-fun b!3966857 () Bool)

(assert (=> b!3966857 (= e!2456820 (+ 1 (size!31648 (t!330257 lt!1388752))))))

(assert (= (and d!1175511 c!688320) b!3966856))

(assert (= (and d!1175511 (not c!688320)) b!3966857))

(declare-fun m!4537403 () Bool)

(assert (=> b!3966857 m!4537403))

(assert (=> b!3965533 d!1175511))

(declare-fun d!1175513 () Bool)

(declare-fun lt!1389340 () Int)

(assert (=> d!1175513 (>= lt!1389340 0)))

(declare-fun e!2456821 () Int)

(assert (=> d!1175513 (= lt!1389340 e!2456821)))

(declare-fun c!688321 () Bool)

(assert (=> d!1175513 (= c!688321 ((_ is Nil!42278) lt!1388620))))

(assert (=> d!1175513 (= (size!31648 lt!1388620) lt!1389340)))

(declare-fun b!3966858 () Bool)

(assert (=> b!3966858 (= e!2456821 0)))

(declare-fun b!3966859 () Bool)

(assert (=> b!3966859 (= e!2456821 (+ 1 (size!31648 (t!330257 lt!1388620))))))

(assert (= (and d!1175513 c!688321) b!3966858))

(assert (= (and d!1175513 (not c!688321)) b!3966859))

(assert (=> b!3966859 m!4536247))

(assert (=> b!3965533 d!1175513))

(assert (=> b!3965533 d!1175047))

(declare-fun b!3966862 () Bool)

(declare-fun res!1605726 () Bool)

(declare-fun e!2456823 () Bool)

(assert (=> b!3966862 (=> (not res!1605726) (not e!2456823))))

(declare-fun lt!1389341 () List!42399)

(assert (=> b!3966862 (= res!1605726 (= (size!31647 lt!1389341) (+ (size!31647 (t!330254 lt!1388609)) (size!31647 lt!1388621))))))

(declare-fun b!3966863 () Bool)

(assert (=> b!3966863 (= e!2456823 (or (not (= lt!1388621 Nil!42275)) (= lt!1389341 (t!330254 lt!1388609))))))

(declare-fun b!3966860 () Bool)

(declare-fun e!2456822 () List!42399)

(assert (=> b!3966860 (= e!2456822 lt!1388621)))

(declare-fun d!1175515 () Bool)

(assert (=> d!1175515 e!2456823))

(declare-fun res!1605727 () Bool)

(assert (=> d!1175515 (=> (not res!1605727) (not e!2456823))))

(assert (=> d!1175515 (= res!1605727 (= (content!6421 lt!1389341) ((_ map or) (content!6421 (t!330254 lt!1388609)) (content!6421 lt!1388621))))))

(assert (=> d!1175515 (= lt!1389341 e!2456822)))

(declare-fun c!688322 () Bool)

(assert (=> d!1175515 (= c!688322 ((_ is Nil!42275) (t!330254 lt!1388609)))))

(assert (=> d!1175515 (= (++!11029 (t!330254 lt!1388609) lt!1388621) lt!1389341)))

(declare-fun b!3966861 () Bool)

(assert (=> b!3966861 (= e!2456822 (Cons!42275 (h!47695 (t!330254 lt!1388609)) (++!11029 (t!330254 (t!330254 lt!1388609)) lt!1388621)))))

(assert (= (and d!1175515 c!688322) b!3966860))

(assert (= (and d!1175515 (not c!688322)) b!3966861))

(assert (= (and d!1175515 res!1605727) b!3966862))

(assert (= (and b!3966862 res!1605726) b!3966863))

(declare-fun m!4537405 () Bool)

(assert (=> b!3966862 m!4537405))

(assert (=> b!3966862 m!4535163))

(assert (=> b!3966862 m!4534921))

(declare-fun m!4537407 () Bool)

(assert (=> d!1175515 m!4537407))

(assert (=> d!1175515 m!4536167))

(assert (=> d!1175515 m!4535379))

(declare-fun m!4537409 () Bool)

(assert (=> b!3966861 m!4537409))

(assert (=> b!3965536 d!1175515))

(declare-fun d!1175517 () Bool)

(declare-fun lt!1389343 () Int)

(assert (=> d!1175517 (>= lt!1389343 0)))

(declare-fun e!2456824 () Int)

(assert (=> d!1175517 (= lt!1389343 e!2456824)))

(declare-fun c!688323 () Bool)

(assert (=> d!1175517 (= c!688323 ((_ is Nil!42278) lt!1388824))))

(assert (=> d!1175517 (= (size!31648 lt!1388824) lt!1389343)))

(declare-fun b!3966864 () Bool)

(assert (=> b!3966864 (= e!2456824 0)))

(declare-fun b!3966865 () Bool)

(assert (=> b!3966865 (= e!2456824 (+ 1 (size!31648 (t!330257 lt!1388824))))))

(assert (= (and d!1175517 c!688323) b!3966864))

(assert (= (and d!1175517 (not c!688323)) b!3966865))

(declare-fun m!4537411 () Bool)

(assert (=> b!3966865 m!4537411))

(assert (=> b!3965657 d!1175517))

(assert (=> b!3965657 d!1175067))

(declare-fun d!1175519 () Bool)

(declare-fun lt!1389344 () Int)

(assert (=> d!1175519 (>= lt!1389344 0)))

(declare-fun e!2456825 () Int)

(assert (=> d!1175519 (= lt!1389344 e!2456825)))

(declare-fun c!688324 () Bool)

(assert (=> d!1175519 (= c!688324 ((_ is Nil!42278) lt!1388616))))

(assert (=> d!1175519 (= (size!31648 lt!1388616) lt!1389344)))

(declare-fun b!3966868 () Bool)

(assert (=> b!3966868 (= e!2456825 0)))

(declare-fun b!3966869 () Bool)

(assert (=> b!3966869 (= e!2456825 (+ 1 (size!31648 (t!330257 lt!1388616))))))

(assert (= (and d!1175519 c!688324) b!3966868))

(assert (= (and d!1175519 (not c!688324)) b!3966869))

(declare-fun m!4537413 () Bool)

(assert (=> b!3966869 m!4537413))

(assert (=> b!3965657 d!1175519))

(assert (=> b!3965544 d!1174693))

(assert (=> b!3965544 d!1174605))

(declare-fun b!3966872 () Bool)

(declare-fun e!2456829 () Bool)

(declare-fun lt!1389345 () Bool)

(assert (=> b!3966872 (= e!2456829 (not lt!1389345))))

(declare-fun b!3966873 () Bool)

(declare-fun e!2456830 () Bool)

(assert (=> b!3966873 (= e!2456830 (= (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(declare-fun b!3966874 () Bool)

(declare-fun e!2456832 () Bool)

(declare-fun e!2456831 () Bool)

(assert (=> b!3966874 (= e!2456832 e!2456831)))

(declare-fun res!1605733 () Bool)

(assert (=> b!3966874 (=> (not res!1605733) (not e!2456831))))

(assert (=> b!3966874 (= res!1605733 (not lt!1389345))))

(declare-fun b!3966875 () Bool)

(declare-fun e!2456834 () Bool)

(assert (=> b!3966875 (= e!2456834 (not (= (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) (c!687925 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))))

(declare-fun b!3966876 () Bool)

(declare-fun e!2456828 () Bool)

(declare-fun call!285572 () Bool)

(assert (=> b!3966876 (= e!2456828 (= lt!1389345 call!285572))))

(declare-fun d!1175521 () Bool)

(assert (=> d!1175521 e!2456828))

(declare-fun c!688326 () Bool)

(assert (=> d!1175521 (= c!688326 ((_ is EmptyExpr!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun e!2456833 () Bool)

(assert (=> d!1175521 (= lt!1389345 e!2456833)))

(declare-fun c!688327 () Bool)

(assert (=> d!1175521 (= c!688327 (isEmpty!25296 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))

(assert (=> d!1175521 (validRegex!5253 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))

(assert (=> d!1175521 (= (matchR!5545 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))) lt!1389345)))

(declare-fun b!3966877 () Bool)

(assert (=> b!3966877 (= e!2456828 e!2456829)))

(declare-fun c!688325 () Bool)

(assert (=> b!3966877 (= c!688325 ((_ is EmptyLang!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966878 () Bool)

(declare-fun res!1605735 () Bool)

(assert (=> b!3966878 (=> (not res!1605735) (not e!2456830))))

(assert (=> b!3966878 (= res!1605735 (isEmpty!25296 (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))))))))

(declare-fun bm!285567 () Bool)

(assert (=> bm!285567 (= call!285572 (isEmpty!25296 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))

(declare-fun b!3966879 () Bool)

(declare-fun res!1605729 () Bool)

(assert (=> b!3966879 (=> res!1605729 e!2456834)))

(assert (=> b!3966879 (= res!1605729 (not (isEmpty!25296 (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712))))))))))

(declare-fun b!3966880 () Bool)

(declare-fun res!1605728 () Bool)

(assert (=> b!3966880 (=> res!1605728 e!2456832)))

(assert (=> b!3966880 (= res!1605728 (not ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))))))

(assert (=> b!3966880 (= e!2456829 e!2456832)))

(declare-fun b!3966881 () Bool)

(assert (=> b!3966881 (= e!2456833 (nullable!4054 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966882 () Bool)

(declare-fun res!1605734 () Bool)

(assert (=> b!3966882 (=> res!1605734 e!2456832)))

(assert (=> b!3966882 (= res!1605734 e!2456830)))

(declare-fun res!1605730 () Bool)

(assert (=> b!3966882 (=> (not res!1605730) (not e!2456830))))

(assert (=> b!3966882 (= res!1605730 lt!1389345)))

(declare-fun b!3966883 () Bool)

(assert (=> b!3966883 (= e!2456831 e!2456834)))

(declare-fun res!1605732 () Bool)

(assert (=> b!3966883 (=> res!1605732 e!2456834)))

(assert (=> b!3966883 (= res!1605732 call!285572)))

(declare-fun b!3966884 () Bool)

(declare-fun res!1605731 () Bool)

(assert (=> b!3966884 (=> (not res!1605731) (not e!2456830))))

(assert (=> b!3966884 (= res!1605731 (not call!285572))))

(declare-fun b!3966885 () Bool)

(assert (=> b!3966885 (= e!2456833 (matchR!5545 (derivativeStep!3471 (regex!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))) (head!8450 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))))) (tail!6182 (list!15688 (charsOf!4454 (_1!23921 (get!13944 lt!1388712)))))))))

(assert (= (and d!1175521 c!688327) b!3966881))

(assert (= (and d!1175521 (not c!688327)) b!3966885))

(assert (= (and d!1175521 c!688326) b!3966876))

(assert (= (and d!1175521 (not c!688326)) b!3966877))

(assert (= (and b!3966877 c!688325) b!3966872))

(assert (= (and b!3966877 (not c!688325)) b!3966880))

(assert (= (and b!3966880 (not res!1605728)) b!3966882))

(assert (= (and b!3966882 res!1605730) b!3966884))

(assert (= (and b!3966884 res!1605731) b!3966878))

(assert (= (and b!3966878 res!1605735) b!3966873))

(assert (= (and b!3966882 (not res!1605734)) b!3966874))

(assert (= (and b!3966874 res!1605733) b!3966883))

(assert (= (and b!3966883 (not res!1605732)) b!3966879))

(assert (= (and b!3966879 (not res!1605729)) b!3966875))

(assert (= (or b!3966876 b!3966884 b!3966883) bm!285567))

(assert (=> b!3966878 m!4535267))

(declare-fun m!4537415 () Bool)

(assert (=> b!3966878 m!4537415))

(assert (=> b!3966878 m!4537415))

(declare-fun m!4537417 () Bool)

(assert (=> b!3966878 m!4537417))

(assert (=> b!3966873 m!4535267))

(declare-fun m!4537419 () Bool)

(assert (=> b!3966873 m!4537419))

(assert (=> d!1175521 m!4535267))

(declare-fun m!4537421 () Bool)

(assert (=> d!1175521 m!4537421))

(assert (=> d!1175521 m!4535171))

(assert (=> b!3966885 m!4535267))

(assert (=> b!3966885 m!4537419))

(assert (=> b!3966885 m!4537419))

(declare-fun m!4537423 () Bool)

(assert (=> b!3966885 m!4537423))

(assert (=> b!3966885 m!4535267))

(assert (=> b!3966885 m!4537415))

(assert (=> b!3966885 m!4537423))

(assert (=> b!3966885 m!4537415))

(declare-fun m!4537425 () Bool)

(assert (=> b!3966885 m!4537425))

(assert (=> b!3966879 m!4535267))

(assert (=> b!3966879 m!4537415))

(assert (=> b!3966879 m!4537415))

(assert (=> b!3966879 m!4537417))

(assert (=> b!3966881 m!4535173))

(assert (=> b!3966875 m!4535267))

(assert (=> b!3966875 m!4537419))

(assert (=> bm!285567 m!4535267))

(assert (=> bm!285567 m!4537421))

(assert (=> b!3965473 d!1175521))

(assert (=> b!3965473 d!1175157))

(assert (=> b!3965473 d!1175159))

(assert (=> b!3965473 d!1174967))

(declare-fun d!1175523 () Bool)

(declare-fun lt!1389346 () Int)

(assert (=> d!1175523 (>= lt!1389346 0)))

(declare-fun e!2456837 () Int)

(assert (=> d!1175523 (= lt!1389346 e!2456837)))

(declare-fun c!688328 () Bool)

(assert (=> d!1175523 (= c!688328 ((_ is Nil!42275) (_2!23922 lt!1388821)))))

(assert (=> d!1175523 (= (size!31647 (_2!23922 lt!1388821)) lt!1389346)))

(declare-fun b!3966888 () Bool)

(assert (=> b!3966888 (= e!2456837 0)))

(declare-fun b!3966889 () Bool)

(assert (=> b!3966889 (= e!2456837 (+ 1 (size!31647 (t!330254 (_2!23922 lt!1388821)))))))

(assert (= (and d!1175523 c!688328) b!3966888))

(assert (= (and d!1175523 (not c!688328)) b!3966889))

(declare-fun m!4537431 () Bool)

(assert (=> b!3966889 m!4537431))

(assert (=> b!3965649 d!1175523))

(assert (=> b!3965649 d!1174735))

(declare-fun d!1175525 () Bool)

(declare-fun c!688329 () Bool)

(assert (=> d!1175525 (= c!688329 ((_ is Nil!42275) lt!1388753))))

(declare-fun e!2456838 () (InoxSet C!23268))

(assert (=> d!1175525 (= (content!6421 lt!1388753) e!2456838)))

(declare-fun b!3966890 () Bool)

(assert (=> b!3966890 (= e!2456838 ((as const (Array C!23268 Bool)) false))))

(declare-fun b!3966891 () Bool)

(assert (=> b!3966891 (= e!2456838 ((_ map or) (store ((as const (Array C!23268 Bool)) false) (h!47695 lt!1388753) true) (content!6421 (t!330254 lt!1388753))))))

(assert (= (and d!1175525 c!688329) b!3966890))

(assert (= (and d!1175525 (not c!688329)) b!3966891))

(declare-fun m!4537433 () Bool)

(assert (=> b!3966891 m!4537433))

(declare-fun m!4537435 () Bool)

(assert (=> b!3966891 m!4537435))

(assert (=> d!1174679 d!1175525))

(assert (=> d!1174679 d!1175009))

(assert (=> d!1174679 d!1175181))

(declare-fun d!1175527 () Bool)

(declare-fun c!688330 () Bool)

(assert (=> d!1175527 (= c!688330 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(declare-fun e!2456839 () Bool)

(assert (=> d!1175527 (= (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))) e!2456839)))

(declare-fun b!3966892 () Bool)

(assert (=> b!3966892 (= e!2456839 (inv!56508 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(declare-fun b!3966893 () Bool)

(declare-fun e!2456840 () Bool)

(assert (=> b!3966893 (= e!2456839 e!2456840)))

(declare-fun res!1605736 () Bool)

(assert (=> b!3966893 (= res!1605736 (not ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))))))

(assert (=> b!3966893 (=> res!1605736 e!2456840)))

(declare-fun b!3966894 () Bool)

(assert (=> b!3966894 (= e!2456840 (inv!56509 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(assert (= (and d!1175527 c!688330) b!3966892))

(assert (= (and d!1175527 (not c!688330)) b!3966893))

(assert (= (and b!3966893 (not res!1605736)) b!3966894))

(declare-fun m!4537437 () Bool)

(assert (=> b!3966892 m!4537437))

(declare-fun m!4537439 () Bool)

(assert (=> b!3966894 m!4537439))

(assert (=> b!3965374 d!1175527))

(declare-fun bs!587495 () Bool)

(declare-fun d!1175529 () Bool)

(assert (= bs!587495 (and d!1175529 d!1175169)))

(declare-fun lambda!126831 () Int)

(assert (=> bs!587495 (= (and (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))))) (= lambda!126831 lambda!126813))))

(declare-fun bs!587496 () Bool)

(assert (= bs!587496 (and d!1175529 d!1175173)))

(assert (=> bs!587496 (= (and (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (h!47697 rules!2768)))) (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (h!47697 rules!2768))))) (= lambda!126831 lambda!126814))))

(declare-fun bs!587497 () Bool)

(assert (= bs!587497 (and d!1175529 d!1175471)))

(assert (=> bs!587497 (= (and (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (= lambda!126831 lambda!126827))))

(assert (=> d!1175529 true))

(assert (=> d!1175529 (< (dynLambda!18050 order!22403 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (dynLambda!18051 order!22405 lambda!126831))))

(assert (=> d!1175529 true))

(assert (=> d!1175529 (< (dynLambda!18048 order!22399 (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (dynLambda!18051 order!22405 lambda!126831))))

(assert (=> d!1175529 (= (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) (Forall!1461 lambda!126831))))

(declare-fun bs!587498 () Bool)

(assert (= bs!587498 d!1175529))

(declare-fun m!4537455 () Bool)

(assert (=> bs!587498 m!4537455))

(assert (=> d!1174671 d!1175529))

(declare-fun d!1175537 () Bool)

(assert (=> d!1175537 (= (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))) (isBalanced!3652 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))))))

(declare-fun bs!587499 () Bool)

(assert (= bs!587499 d!1175537))

(declare-fun m!4537457 () Bool)

(assert (=> bs!587499 m!4537457))

(assert (=> tb!239121 d!1175537))

(declare-fun b!3966903 () Bool)

(declare-fun e!2456847 () Bool)

(declare-fun e!2456845 () Bool)

(assert (=> b!3966903 (= e!2456847 e!2456845)))

(declare-fun res!1605741 () Bool)

(assert (=> b!3966903 (=> (not res!1605741) (not e!2456845))))

(assert (=> b!3966903 (= res!1605741 (not ((_ is Nil!42275) (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))))

(declare-fun b!3966905 () Bool)

(assert (=> b!3966905 (= e!2456845 (isPrefix!3725 (tail!6182 lt!1388609) (tail!6182 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))))

(declare-fun d!1175539 () Bool)

(declare-fun e!2456846 () Bool)

(assert (=> d!1175539 e!2456846))

(declare-fun res!1605742 () Bool)

(assert (=> d!1175539 (=> res!1605742 e!2456846)))

(declare-fun lt!1389348 () Bool)

(assert (=> d!1175539 (= res!1605742 (not lt!1389348))))

(assert (=> d!1175539 (= lt!1389348 e!2456847)))

(declare-fun res!1605740 () Bool)

(assert (=> d!1175539 (=> res!1605740 e!2456847)))

(assert (=> d!1175539 (= res!1605740 ((_ is Nil!42275) lt!1388609))))

(assert (=> d!1175539 (= (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603)))) lt!1389348)))

(declare-fun b!3966906 () Bool)

(assert (=> b!3966906 (= e!2456846 (>= (size!31647 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603)))) (size!31647 lt!1388609)))))

(declare-fun b!3966904 () Bool)

(declare-fun res!1605739 () Bool)

(assert (=> b!3966904 (=> (not res!1605739) (not e!2456845))))

(assert (=> b!3966904 (= res!1605739 (= (head!8450 lt!1388609) (head!8450 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))))

(assert (= (and d!1175539 (not res!1605740)) b!3966903))

(assert (= (and b!3966903 res!1605741) b!3966904))

(assert (= (and b!3966904 res!1605739) b!3966905))

(assert (= (and d!1175539 (not res!1605742)) b!3966906))

(assert (=> b!3966905 m!4535151))

(assert (=> b!3966905 m!4534883))

(declare-fun m!4537465 () Bool)

(assert (=> b!3966905 m!4537465))

(assert (=> b!3966905 m!4535151))

(assert (=> b!3966905 m!4537465))

(declare-fun m!4537467 () Bool)

(assert (=> b!3966905 m!4537467))

(assert (=> b!3966906 m!4534883))

(declare-fun m!4537469 () Bool)

(assert (=> b!3966906 m!4537469))

(assert (=> b!3966906 m!4534889))

(assert (=> b!3966904 m!4535159))

(assert (=> b!3966904 m!4534883))

(declare-fun m!4537473 () Bool)

(assert (=> b!3966904 m!4537473))

(assert (=> d!1174595 d!1175539))

(assert (=> d!1174595 d!1174593))

(declare-fun d!1175543 () Bool)

(assert (=> d!1175543 (isPrefix!3725 lt!1388609 (++!11029 lt!1388609 (_2!23921 (v!39401 lt!1388603))))))

(assert (=> d!1175543 true))

(declare-fun _$46!1619 () Unit!60908)

(assert (=> d!1175543 (= (choose!23720 lt!1388609 (_2!23921 (v!39401 lt!1388603))) _$46!1619)))

(declare-fun bs!587500 () Bool)

(assert (= bs!587500 d!1175543))

(assert (=> bs!587500 m!4534883))

(assert (=> bs!587500 m!4534883))

(assert (=> bs!587500 m!4535133))

(assert (=> d!1174595 d!1175543))

(declare-fun d!1175547 () Bool)

(assert (=> d!1175547 (= (inv!56505 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))) (isBalanced!3652 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))))))

(declare-fun bs!587501 () Bool)

(assert (= bs!587501 d!1175547))

(declare-fun m!4537487 () Bool)

(assert (=> bs!587501 m!4537487))

(assert (=> tb!239157 d!1175547))

(declare-fun b!3966914 () Bool)

(declare-fun e!2456854 () Bool)

(declare-fun lt!1389351 () tuple2!41576)

(assert (=> b!3966914 (= e!2456854 (not (isEmpty!25297 (_1!23922 lt!1389351))))))

(declare-fun b!3966915 () Bool)

(declare-fun e!2456853 () tuple2!41576)

(assert (=> b!3966915 (= e!2456853 (tuple2!41577 Nil!42278 (_2!23921 (v!39401 lt!1388687))))))

(declare-fun b!3966916 () Bool)

(declare-fun lt!1389350 () Option!9056)

(declare-fun lt!1389352 () tuple2!41576)

(assert (=> b!3966916 (= e!2456853 (tuple2!41577 (Cons!42278 (_1!23921 (v!39401 lt!1389350)) (_1!23922 lt!1389352)) (_2!23922 lt!1389352)))))

(assert (=> b!3966916 (= lt!1389352 (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1389350))))))

(declare-fun b!3966918 () Bool)

(declare-fun e!2456855 () Bool)

(assert (=> b!3966918 (= e!2456855 e!2456854)))

(declare-fun res!1605748 () Bool)

(assert (=> b!3966918 (= res!1605748 (< (size!31647 (_2!23922 lt!1389351)) (size!31647 (_2!23921 (v!39401 lt!1388687)))))))

(assert (=> b!3966918 (=> (not res!1605748) (not e!2456854))))

(declare-fun b!3966917 () Bool)

(assert (=> b!3966917 (= e!2456855 (= (_2!23922 lt!1389351) (_2!23921 (v!39401 lt!1388687))))))

(declare-fun d!1175553 () Bool)

(assert (=> d!1175553 e!2456855))

(declare-fun c!688336 () Bool)

(assert (=> d!1175553 (= c!688336 (> (size!31648 (_1!23922 lt!1389351)) 0))))

(assert (=> d!1175553 (= lt!1389351 e!2456853)))

(declare-fun c!688335 () Bool)

(assert (=> d!1175553 (= c!688335 ((_ is Some!9055) lt!1389350))))

(assert (=> d!1175553 (= lt!1389350 (maxPrefix!3529 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388687))))))

(assert (=> d!1175553 (= (lexList!1993 thiss!20629 rules!2768 (_2!23921 (v!39401 lt!1388687))) lt!1389351)))

(assert (= (and d!1175553 c!688335) b!3966916))

(assert (= (and d!1175553 (not c!688335)) b!3966915))

(assert (= (and d!1175553 c!688336) b!3966918))

(assert (= (and d!1175553 (not c!688336)) b!3966917))

(assert (= (and b!3966918 res!1605748) b!3966914))

(declare-fun m!4537495 () Bool)

(assert (=> b!3966914 m!4537495))

(declare-fun m!4537497 () Bool)

(assert (=> b!3966916 m!4537497))

(declare-fun m!4537499 () Bool)

(assert (=> b!3966918 m!4537499))

(declare-fun m!4537503 () Bool)

(assert (=> b!3966918 m!4537503))

(declare-fun m!4537505 () Bool)

(assert (=> d!1175553 m!4537505))

(declare-fun m!4537507 () Bool)

(assert (=> d!1175553 m!4537507))

(assert (=> b!3965411 d!1175553))

(declare-fun d!1175561 () Bool)

(assert (=> d!1175561 (= (inv!56499 (tag!7496 (h!47697 (t!330256 rules!2768)))) (= (mod (str.len (value!209759 (tag!7496 (h!47697 (t!330256 rules!2768))))) 2) 0))))

(assert (=> b!3965723 d!1175561))

(declare-fun d!1175563 () Bool)

(declare-fun res!1605749 () Bool)

(declare-fun e!2456859 () Bool)

(assert (=> d!1175563 (=> (not res!1605749) (not e!2456859))))

(assert (=> d!1175563 (= res!1605749 (semiInverseModEq!2858 (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768))))))))

(assert (=> d!1175563 (= (inv!56503 (transformation!6636 (h!47697 (t!330256 rules!2768)))) e!2456859)))

(declare-fun b!3966925 () Bool)

(assert (=> b!3966925 (= e!2456859 (equivClasses!2757 (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768))))))))

(assert (= (and d!1175563 res!1605749) b!3966925))

(declare-fun m!4537515 () Bool)

(assert (=> d!1175563 m!4537515))

(declare-fun m!4537517 () Bool)

(assert (=> b!3966925 m!4537517))

(assert (=> b!3965723 d!1175563))

(declare-fun d!1175569 () Bool)

(declare-fun lt!1389355 () Int)

(assert (=> d!1175569 (>= lt!1389355 0)))

(declare-fun e!2456861 () Int)

(assert (=> d!1175569 (= lt!1389355 e!2456861)))

(declare-fun c!688341 () Bool)

(assert (=> d!1175569 (= c!688341 ((_ is Nil!42275) (t!330254 lt!1388621)))))

(assert (=> d!1175569 (= (size!31647 (t!330254 lt!1388621)) lt!1389355)))

(declare-fun b!3966928 () Bool)

(assert (=> b!3966928 (= e!2456861 0)))

(declare-fun b!3966929 () Bool)

(assert (=> b!3966929 (= e!2456861 (+ 1 (size!31647 (t!330254 (t!330254 lt!1388621)))))))

(assert (= (and d!1175569 c!688341) b!3966928))

(assert (= (and d!1175569 (not c!688341)) b!3966929))

(declare-fun m!4537519 () Bool)

(assert (=> b!3966929 m!4537519))

(assert (=> b!3965664 d!1175569))

(declare-fun e!2456862 () Bool)

(assert (=> b!3965707 (= tp!1208692 e!2456862)))

(declare-fun b!3966933 () Bool)

(declare-fun tp!1208789 () Bool)

(declare-fun tp!1208790 () Bool)

(assert (=> b!3966933 (= e!2456862 (and tp!1208789 tp!1208790))))

(declare-fun b!3966930 () Bool)

(assert (=> b!3966930 (= e!2456862 tp_is_empty!20053)))

(declare-fun b!3966932 () Bool)

(declare-fun tp!1208791 () Bool)

(assert (=> b!3966932 (= e!2456862 tp!1208791)))

(declare-fun b!3966931 () Bool)

(declare-fun tp!1208788 () Bool)

(declare-fun tp!1208787 () Bool)

(assert (=> b!3966931 (= e!2456862 (and tp!1208788 tp!1208787))))

(assert (= (and b!3965707 ((_ is ElementMatch!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966930))

(assert (= (and b!3965707 ((_ is Concat!18408) (regOne!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966931))

(assert (= (and b!3965707 ((_ is Star!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966932))

(assert (= (and b!3965707 ((_ is Union!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966933))

(declare-fun e!2456863 () Bool)

(assert (=> b!3965707 (= tp!1208691 e!2456863)))

(declare-fun b!3966937 () Bool)

(declare-fun tp!1208794 () Bool)

(declare-fun tp!1208795 () Bool)

(assert (=> b!3966937 (= e!2456863 (and tp!1208794 tp!1208795))))

(declare-fun b!3966934 () Bool)

(assert (=> b!3966934 (= e!2456863 tp_is_empty!20053)))

(declare-fun b!3966936 () Bool)

(declare-fun tp!1208796 () Bool)

(assert (=> b!3966936 (= e!2456863 tp!1208796)))

(declare-fun b!3966935 () Bool)

(declare-fun tp!1208793 () Bool)

(declare-fun tp!1208792 () Bool)

(assert (=> b!3966935 (= e!2456863 (and tp!1208793 tp!1208792))))

(assert (= (and b!3965707 ((_ is ElementMatch!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966934))

(assert (= (and b!3965707 ((_ is Concat!18408) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966935))

(assert (= (and b!3965707 ((_ is Star!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966936))

(assert (= (and b!3965707 ((_ is Union!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966937))

(declare-fun e!2456864 () Bool)

(assert (=> b!3965708 (= tp!1208695 e!2456864)))

(declare-fun b!3966941 () Bool)

(declare-fun tp!1208799 () Bool)

(declare-fun tp!1208800 () Bool)

(assert (=> b!3966941 (= e!2456864 (and tp!1208799 tp!1208800))))

(declare-fun b!3966938 () Bool)

(assert (=> b!3966938 (= e!2456864 tp_is_empty!20053)))

(declare-fun b!3966940 () Bool)

(declare-fun tp!1208801 () Bool)

(assert (=> b!3966940 (= e!2456864 tp!1208801)))

(declare-fun b!3966939 () Bool)

(declare-fun tp!1208798 () Bool)

(declare-fun tp!1208797 () Bool)

(assert (=> b!3966939 (= e!2456864 (and tp!1208798 tp!1208797))))

(assert (= (and b!3965708 ((_ is ElementMatch!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966938))

(assert (= (and b!3965708 ((_ is Concat!18408) (reg!11870 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966939))

(assert (= (and b!3965708 ((_ is Star!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966940))

(assert (= (and b!3965708 ((_ is Union!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966941))

(declare-fun e!2456865 () Bool)

(assert (=> b!3965709 (= tp!1208693 e!2456865)))

(declare-fun b!3966945 () Bool)

(declare-fun tp!1208804 () Bool)

(declare-fun tp!1208805 () Bool)

(assert (=> b!3966945 (= e!2456865 (and tp!1208804 tp!1208805))))

(declare-fun b!3966942 () Bool)

(assert (=> b!3966942 (= e!2456865 tp_is_empty!20053)))

(declare-fun b!3966944 () Bool)

(declare-fun tp!1208806 () Bool)

(assert (=> b!3966944 (= e!2456865 tp!1208806)))

(declare-fun b!3966943 () Bool)

(declare-fun tp!1208803 () Bool)

(declare-fun tp!1208802 () Bool)

(assert (=> b!3966943 (= e!2456865 (and tp!1208803 tp!1208802))))

(assert (= (and b!3965709 ((_ is ElementMatch!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966942))

(assert (= (and b!3965709 ((_ is Concat!18408) (regOne!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966943))

(assert (= (and b!3965709 ((_ is Star!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966944))

(assert (= (and b!3965709 ((_ is Union!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966945))

(declare-fun e!2456866 () Bool)

(assert (=> b!3965709 (= tp!1208694 e!2456866)))

(declare-fun b!3966949 () Bool)

(declare-fun tp!1208809 () Bool)

(declare-fun tp!1208810 () Bool)

(assert (=> b!3966949 (= e!2456866 (and tp!1208809 tp!1208810))))

(declare-fun b!3966946 () Bool)

(assert (=> b!3966946 (= e!2456866 tp_is_empty!20053)))

(declare-fun b!3966948 () Bool)

(declare-fun tp!1208811 () Bool)

(assert (=> b!3966948 (= e!2456866 tp!1208811)))

(declare-fun b!3966947 () Bool)

(declare-fun tp!1208808 () Bool)

(declare-fun tp!1208807 () Bool)

(assert (=> b!3966947 (= e!2456866 (and tp!1208808 tp!1208807))))

(assert (= (and b!3965709 ((_ is ElementMatch!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966946))

(assert (= (and b!3965709 ((_ is Concat!18408) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966947))

(assert (= (and b!3965709 ((_ is Star!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966948))

(assert (= (and b!3965709 ((_ is Union!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 suffixTokens!72)))))) b!3966949))

(declare-fun b!3966950 () Bool)

(declare-fun e!2456867 () Bool)

(declare-fun tp!1208812 () Bool)

(assert (=> b!3966950 (= e!2456867 (and tp_is_empty!20053 tp!1208812))))

(assert (=> b!3965699 (= tp!1208683 e!2456867)))

(assert (= (and b!3965699 ((_ is Cons!42275) (originalCharacters!7236 (h!47698 (t!330257 prefixTokens!80))))) b!3966950))

(declare-fun b!3966954 () Bool)

(declare-fun b_free!109665 () Bool)

(declare-fun b_next!110369 () Bool)

(assert (=> b!3966954 (= b_free!109665 (not b_next!110369))))

(declare-fun t!330527 () Bool)

(declare-fun tb!239385 () Bool)

(assert (=> (and b!3966954 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330527) tb!239385))

(declare-fun result!289866 () Bool)

(assert (= result!289866 result!289734))

(assert (=> d!1175129 t!330527))

(declare-fun tb!239387 () Bool)

(declare-fun t!330529 () Bool)

(assert (=> (and b!3966954 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330529) tb!239387))

(declare-fun result!289868 () Bool)

(assert (= result!289868 result!289592))

(assert (=> d!1174601 t!330529))

(declare-fun t!330531 () Bool)

(declare-fun tb!239389 () Bool)

(assert (=> (and b!3966954 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330531) tb!239389))

(declare-fun result!289870 () Bool)

(assert (= result!289870 result!289806))

(assert (=> d!1175471 t!330531))

(assert (=> d!1175463 t!330531))

(declare-fun tb!239391 () Bool)

(declare-fun t!330533 () Bool)

(assert (=> (and b!3966954 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330533) tb!239391))

(declare-fun result!289872 () Bool)

(assert (= result!289872 result!289758))

(assert (=> d!1175201 t!330533))

(declare-fun b_and!304831 () Bool)

(declare-fun tp!1208817 () Bool)

(assert (=> b!3966954 (= tp!1208817 (and (=> t!330531 result!289870) (=> t!330533 result!289872) (=> t!330527 result!289866) (=> t!330529 result!289868) b_and!304831))))

(declare-fun b_free!109667 () Bool)

(declare-fun b_next!110371 () Bool)

(assert (=> b!3966954 (= b_free!109667 (not b_next!110371))))

(declare-fun tb!239393 () Bool)

(declare-fun t!330535 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330535) tb!239393))

(declare-fun result!289874 () Bool)

(assert (= result!289874 result!289622))

(assert (=> b!3965513 t!330535))

(declare-fun t!330537 () Bool)

(declare-fun tb!239395 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330537) tb!239395))

(declare-fun result!289876 () Bool)

(assert (= result!289876 result!289586))

(assert (=> d!1174599 t!330537))

(declare-fun t!330539 () Bool)

(declare-fun tb!239397 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330539) tb!239397))

(declare-fun result!289878 () Bool)

(assert (= result!289878 result!289698))

(assert (=> b!3965944 t!330539))

(declare-fun tb!239399 () Bool)

(declare-fun t!330541 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330541) tb!239399))

(declare-fun result!289880 () Bool)

(assert (= result!289880 result!289746))

(assert (=> d!1175159 t!330541))

(declare-fun t!330543 () Bool)

(declare-fun tb!239401 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330543) tb!239401))

(declare-fun result!289882 () Bool)

(assert (= result!289882 result!289578))

(assert (=> b!3965368 t!330543))

(declare-fun t!330545 () Bool)

(declare-fun tb!239403 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330545) tb!239403))

(declare-fun result!289884 () Bool)

(assert (= result!289884 result!289818))

(assert (=> d!1175471 t!330545))

(declare-fun tb!239405 () Bool)

(declare-fun t!330547 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330547) tb!239405))

(declare-fun result!289886 () Bool)

(assert (= result!289886 result!289830))

(assert (=> b!3966820 t!330547))

(declare-fun tb!239407 () Bool)

(declare-fun t!330549 () Bool)

(assert (=> (and b!3966954 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330549) tb!239407))

(declare-fun result!289888 () Bool)

(assert (= result!289888 result!289722))

(assert (=> d!1174985 t!330549))

(declare-fun tp!1208813 () Bool)

(declare-fun b_and!304833 () Bool)

(assert (=> b!3966954 (= tp!1208813 (and (=> t!330549 result!289888) (=> t!330541 result!289880) (=> t!330535 result!289874) (=> t!330547 result!289886) (=> t!330537 result!289876) (=> t!330539 result!289878) (=> t!330545 result!289884) (=> t!330543 result!289882) b_and!304833))))

(declare-fun tp!1208814 () Bool)

(declare-fun e!2456872 () Bool)

(declare-fun b!3966953 () Bool)

(declare-fun e!2456873 () Bool)

(assert (=> b!3966953 (= e!2456872 (and tp!1208814 (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) e!2456873))))

(declare-fun tp!1208815 () Bool)

(declare-fun b!3966952 () Bool)

(declare-fun e!2456871 () Bool)

(assert (=> b!3966952 (= e!2456871 (and (inv!21 (value!209760 (h!47698 (t!330257 (t!330257 prefixTokens!80))))) e!2456872 tp!1208815))))

(declare-fun e!2456869 () Bool)

(assert (=> b!3965698 (= tp!1208684 e!2456869)))

(assert (=> b!3966954 (= e!2456873 (and tp!1208817 tp!1208813))))

(declare-fun b!3966951 () Bool)

(declare-fun tp!1208816 () Bool)

(assert (=> b!3966951 (= e!2456869 (and (inv!56502 (h!47698 (t!330257 (t!330257 prefixTokens!80)))) e!2456871 tp!1208816))))

(assert (= b!3966953 b!3966954))

(assert (= b!3966952 b!3966953))

(assert (= b!3966951 b!3966952))

(assert (= (and b!3965698 ((_ is Cons!42278) (t!330257 (t!330257 prefixTokens!80)))) b!3966951))

(declare-fun m!4537525 () Bool)

(assert (=> b!3966953 m!4537525))

(declare-fun m!4537527 () Bool)

(assert (=> b!3966953 m!4537527))

(declare-fun m!4537529 () Bool)

(assert (=> b!3966952 m!4537529))

(declare-fun m!4537531 () Bool)

(assert (=> b!3966951 m!4537531))

(declare-fun e!2456887 () Bool)

(assert (=> b!3965700 (= tp!1208682 e!2456887)))

(declare-fun b!3966978 () Bool)

(declare-fun tp!1208820 () Bool)

(declare-fun tp!1208821 () Bool)

(assert (=> b!3966978 (= e!2456887 (and tp!1208820 tp!1208821))))

(declare-fun b!3966975 () Bool)

(assert (=> b!3966975 (= e!2456887 tp_is_empty!20053)))

(declare-fun b!3966977 () Bool)

(declare-fun tp!1208822 () Bool)

(assert (=> b!3966977 (= e!2456887 tp!1208822)))

(declare-fun b!3966976 () Bool)

(declare-fun tp!1208819 () Bool)

(declare-fun tp!1208818 () Bool)

(assert (=> b!3966976 (= e!2456887 (and tp!1208819 tp!1208818))))

(assert (= (and b!3965700 ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) b!3966975))

(assert (= (and b!3965700 ((_ is Concat!18408) (regex!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) b!3966976))

(assert (= (and b!3965700 ((_ is Star!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) b!3966977))

(assert (= (and b!3965700 ((_ is Union!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) b!3966978))

(declare-fun b!3966979 () Bool)

(declare-fun e!2456888 () Bool)

(declare-fun tp!1208823 () Bool)

(assert (=> b!3966979 (= e!2456888 (and tp_is_empty!20053 tp!1208823))))

(assert (=> b!3965673 (= tp!1208655 e!2456888)))

(assert (= (and b!3965673 ((_ is Cons!42275) (t!330254 (t!330254 prefix!426)))) b!3966979))

(declare-fun e!2456894 () Bool)

(declare-fun tp!1208830 () Bool)

(declare-fun b!3966990 () Bool)

(declare-fun tp!1208831 () Bool)

(assert (=> b!3966990 (= e!2456894 (and (inv!56504 (left!32047 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))) tp!1208831 (inv!56504 (right!32377 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))) tp!1208830))))

(declare-fun b!3966992 () Bool)

(declare-fun e!2456895 () Bool)

(declare-fun tp!1208832 () Bool)

(assert (=> b!3966992 (= e!2456895 tp!1208832)))

(declare-fun b!3966991 () Bool)

(declare-fun inv!56512 (IArray!25699) Bool)

(assert (=> b!3966991 (= e!2456894 (and (inv!56512 (xs!16153 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))) e!2456895))))

(assert (=> b!3965515 (= tp!1208647 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72))))) e!2456894))))

(assert (= (and b!3965515 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))) b!3966990))

(assert (= b!3966991 b!3966992))

(assert (= (and b!3965515 ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (value!209760 (h!47698 suffixTokens!72)))))) b!3966991))

(declare-fun m!4537545 () Bool)

(assert (=> b!3966990 m!4537545))

(declare-fun m!4537547 () Bool)

(assert (=> b!3966990 m!4537547))

(declare-fun m!4537549 () Bool)

(assert (=> b!3966991 m!4537549))

(assert (=> b!3965515 m!4535337))

(declare-fun tp!1208834 () Bool)

(declare-fun tp!1208833 () Bool)

(declare-fun e!2456899 () Bool)

(declare-fun b!3967002 () Bool)

(assert (=> b!3967002 (= e!2456899 (and (inv!56504 (left!32047 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))) tp!1208834 (inv!56504 (right!32377 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))) tp!1208833))))

(declare-fun b!3967004 () Bool)

(declare-fun e!2456900 () Bool)

(declare-fun tp!1208835 () Bool)

(assert (=> b!3967004 (= e!2456900 tp!1208835)))

(declare-fun b!3967003 () Bool)

(assert (=> b!3967003 (= e!2456899 (and (inv!56512 (xs!16153 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))) e!2456900))))

(assert (=> b!3965390 (= tp!1208642 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603)))))) e!2456899))))

(assert (= (and b!3965390 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))) b!3967002))

(assert (= b!3967003 b!3967004))

(assert (= (and b!3965390 ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))) (value!209760 (_1!23921 (v!39401 lt!1388603))))))) b!3967003))

(declare-fun m!4537551 () Bool)

(assert (=> b!3967002 m!4537551))

(declare-fun m!4537553 () Bool)

(assert (=> b!3967002 m!4537553))

(declare-fun m!4537555 () Bool)

(assert (=> b!3967003 m!4537555))

(assert (=> b!3965390 m!4535139))

(declare-fun b!3967005 () Bool)

(declare-fun e!2456901 () Bool)

(declare-fun tp!1208836 () Bool)

(assert (=> b!3967005 (= e!2456901 (and tp_is_empty!20053 tp!1208836))))

(assert (=> b!3965671 (= tp!1208653 e!2456901)))

(assert (= (and b!3965671 ((_ is Cons!42275) (t!330254 (t!330254 suffix!1176)))) b!3967005))

(declare-fun e!2456902 () Bool)

(assert (=> b!3965687 (= tp!1208668 e!2456902)))

(declare-fun b!3967009 () Bool)

(declare-fun tp!1208839 () Bool)

(declare-fun tp!1208840 () Bool)

(assert (=> b!3967009 (= e!2456902 (and tp!1208839 tp!1208840))))

(declare-fun b!3967006 () Bool)

(assert (=> b!3967006 (= e!2456902 tp_is_empty!20053)))

(declare-fun b!3967008 () Bool)

(declare-fun tp!1208841 () Bool)

(assert (=> b!3967008 (= e!2456902 tp!1208841)))

(declare-fun b!3967007 () Bool)

(declare-fun tp!1208838 () Bool)

(declare-fun tp!1208837 () Bool)

(assert (=> b!3967007 (= e!2456902 (and tp!1208838 tp!1208837))))

(assert (= (and b!3965687 ((_ is ElementMatch!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967006))

(assert (= (and b!3965687 ((_ is Concat!18408) (regOne!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967007))

(assert (= (and b!3965687 ((_ is Star!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967008))

(assert (= (and b!3965687 ((_ is Union!11541) (regOne!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967009))

(declare-fun e!2456903 () Bool)

(assert (=> b!3965687 (= tp!1208669 e!2456903)))

(declare-fun b!3967013 () Bool)

(declare-fun tp!1208844 () Bool)

(declare-fun tp!1208845 () Bool)

(assert (=> b!3967013 (= e!2456903 (and tp!1208844 tp!1208845))))

(declare-fun b!3967010 () Bool)

(assert (=> b!3967010 (= e!2456903 tp_is_empty!20053)))

(declare-fun b!3967012 () Bool)

(declare-fun tp!1208846 () Bool)

(assert (=> b!3967012 (= e!2456903 tp!1208846)))

(declare-fun b!3967011 () Bool)

(declare-fun tp!1208843 () Bool)

(declare-fun tp!1208842 () Bool)

(assert (=> b!3967011 (= e!2456903 (and tp!1208843 tp!1208842))))

(assert (= (and b!3965687 ((_ is ElementMatch!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967010))

(assert (= (and b!3965687 ((_ is Concat!18408) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967011))

(assert (= (and b!3965687 ((_ is Star!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967012))

(assert (= (and b!3965687 ((_ is Union!11541) (regTwo!23595 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967013))

(declare-fun b!3967017 () Bool)

(declare-fun b_free!109669 () Bool)

(declare-fun b_next!110373 () Bool)

(assert (=> b!3967017 (= b_free!109669 (not b_next!110373))))

(declare-fun tb!239409 () Bool)

(declare-fun t!330551 () Bool)

(assert (=> (and b!3967017 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330551) tb!239409))

(declare-fun result!289892 () Bool)

(assert (= result!289892 result!289734))

(assert (=> d!1175129 t!330551))

(declare-fun t!330553 () Bool)

(declare-fun tb!239411 () Bool)

(assert (=> (and b!3967017 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330553) tb!239411))

(declare-fun result!289894 () Bool)

(assert (= result!289894 result!289592))

(assert (=> d!1174601 t!330553))

(declare-fun t!330555 () Bool)

(declare-fun tb!239413 () Bool)

(assert (=> (and b!3967017 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330555) tb!239413))

(declare-fun result!289896 () Bool)

(assert (= result!289896 result!289806))

(assert (=> d!1175471 t!330555))

(assert (=> d!1175463 t!330555))

(declare-fun tb!239415 () Bool)

(declare-fun t!330557 () Bool)

(assert (=> (and b!3967017 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330557) tb!239415))

(declare-fun result!289898 () Bool)

(assert (= result!289898 result!289758))

(assert (=> d!1175201 t!330557))

(declare-fun b_and!304835 () Bool)

(declare-fun tp!1208851 () Bool)

(assert (=> b!3967017 (= tp!1208851 (and (=> t!330557 result!289898) (=> t!330553 result!289894) (=> t!330555 result!289896) (=> t!330551 result!289892) b_and!304835))))

(declare-fun b_free!109671 () Bool)

(declare-fun b_next!110375 () Bool)

(assert (=> b!3967017 (= b_free!109671 (not b_next!110375))))

(declare-fun t!330559 () Bool)

(declare-fun tb!239417 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330559) tb!239417))

(declare-fun result!289900 () Bool)

(assert (= result!289900 result!289622))

(assert (=> b!3965513 t!330559))

(declare-fun t!330561 () Bool)

(declare-fun tb!239419 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330561) tb!239419))

(declare-fun result!289902 () Bool)

(assert (= result!289902 result!289586))

(assert (=> d!1174599 t!330561))

(declare-fun t!330563 () Bool)

(declare-fun tb!239421 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330563) tb!239421))

(declare-fun result!289904 () Bool)

(assert (= result!289904 result!289698))

(assert (=> b!3965944 t!330563))

(declare-fun tb!239423 () Bool)

(declare-fun t!330565 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330565) tb!239423))

(declare-fun result!289906 () Bool)

(assert (= result!289906 result!289746))

(assert (=> d!1175159 t!330565))

(declare-fun t!330567 () Bool)

(declare-fun tb!239425 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330567) tb!239425))

(declare-fun result!289908 () Bool)

(assert (= result!289908 result!289578))

(assert (=> b!3965368 t!330567))

(declare-fun tb!239427 () Bool)

(declare-fun t!330569 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330569) tb!239427))

(declare-fun result!289910 () Bool)

(assert (= result!289910 result!289818))

(assert (=> d!1175471 t!330569))

(declare-fun t!330571 () Bool)

(declare-fun tb!239429 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330571) tb!239429))

(declare-fun result!289912 () Bool)

(assert (= result!289912 result!289830))

(assert (=> b!3966820 t!330571))

(declare-fun tb!239431 () Bool)

(declare-fun t!330573 () Bool)

(assert (=> (and b!3967017 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330573) tb!239431))

(declare-fun result!289914 () Bool)

(assert (= result!289914 result!289722))

(assert (=> d!1174985 t!330573))

(declare-fun tp!1208847 () Bool)

(declare-fun b_and!304837 () Bool)

(assert (=> b!3967017 (= tp!1208847 (and (=> t!330569 result!289910) (=> t!330565 result!289906) (=> t!330561 result!289902) (=> t!330567 result!289908) (=> t!330559 result!289900) (=> t!330571 result!289912) (=> t!330573 result!289914) (=> t!330563 result!289904) b_and!304837))))

(declare-fun e!2456908 () Bool)

(declare-fun e!2456909 () Bool)

(declare-fun tp!1208848 () Bool)

(declare-fun b!3967016 () Bool)

(assert (=> b!3967016 (= e!2456908 (and tp!1208848 (inv!56499 (tag!7496 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (inv!56503 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) e!2456909))))

(declare-fun tp!1208849 () Bool)

(declare-fun e!2456907 () Bool)

(declare-fun b!3967015 () Bool)

(assert (=> b!3967015 (= e!2456907 (and (inv!21 (value!209760 (h!47698 (t!330257 (t!330257 suffixTokens!72))))) e!2456908 tp!1208849))))

(declare-fun e!2456905 () Bool)

(assert (=> b!3965702 (= tp!1208689 e!2456905)))

(assert (=> b!3967017 (= e!2456909 (and tp!1208851 tp!1208847))))

(declare-fun b!3967014 () Bool)

(declare-fun tp!1208850 () Bool)

(assert (=> b!3967014 (= e!2456905 (and (inv!56502 (h!47698 (t!330257 (t!330257 suffixTokens!72)))) e!2456907 tp!1208850))))

(assert (= b!3967016 b!3967017))

(assert (= b!3967015 b!3967016))

(assert (= b!3967014 b!3967015))

(assert (= (and b!3965702 ((_ is Cons!42278) (t!330257 (t!330257 suffixTokens!72)))) b!3967014))

(declare-fun m!4537587 () Bool)

(assert (=> b!3967016 m!4537587))

(declare-fun m!4537589 () Bool)

(assert (=> b!3967016 m!4537589))

(declare-fun m!4537591 () Bool)

(assert (=> b!3967015 m!4537591))

(declare-fun m!4537593 () Bool)

(assert (=> b!3967014 m!4537593))

(declare-fun e!2456910 () Bool)

(assert (=> b!3965704 (= tp!1208687 e!2456910)))

(declare-fun b!3967021 () Bool)

(declare-fun tp!1208854 () Bool)

(declare-fun tp!1208855 () Bool)

(assert (=> b!3967021 (= e!2456910 (and tp!1208854 tp!1208855))))

(declare-fun b!3967018 () Bool)

(assert (=> b!3967018 (= e!2456910 tp_is_empty!20053)))

(declare-fun b!3967020 () Bool)

(declare-fun tp!1208856 () Bool)

(assert (=> b!3967020 (= e!2456910 tp!1208856)))

(declare-fun b!3967019 () Bool)

(declare-fun tp!1208853 () Bool)

(declare-fun tp!1208852 () Bool)

(assert (=> b!3967019 (= e!2456910 (and tp!1208853 tp!1208852))))

(assert (= (and b!3965704 ((_ is ElementMatch!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) b!3967018))

(assert (= (and b!3965704 ((_ is Concat!18408) (regex!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) b!3967019))

(assert (= (and b!3965704 ((_ is Star!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) b!3967020))

(assert (= (and b!3965704 ((_ is Union!11541) (regex!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) b!3967021))

(declare-fun e!2456911 () Bool)

(assert (=> b!3965712 (= tp!1208700 e!2456911)))

(declare-fun b!3967025 () Bool)

(declare-fun tp!1208859 () Bool)

(declare-fun tp!1208860 () Bool)

(assert (=> b!3967025 (= e!2456911 (and tp!1208859 tp!1208860))))

(declare-fun b!3967022 () Bool)

(assert (=> b!3967022 (= e!2456911 tp_is_empty!20053)))

(declare-fun b!3967024 () Bool)

(declare-fun tp!1208861 () Bool)

(assert (=> b!3967024 (= e!2456911 tp!1208861)))

(declare-fun b!3967023 () Bool)

(declare-fun tp!1208858 () Bool)

(declare-fun tp!1208857 () Bool)

(assert (=> b!3967023 (= e!2456911 (and tp!1208858 tp!1208857))))

(assert (= (and b!3965712 ((_ is ElementMatch!11541) (reg!11870 (regex!6636 (h!47697 rules!2768))))) b!3967022))

(assert (= (and b!3965712 ((_ is Concat!18408) (reg!11870 (regex!6636 (h!47697 rules!2768))))) b!3967023))

(assert (= (and b!3965712 ((_ is Star!11541) (reg!11870 (regex!6636 (h!47697 rules!2768))))) b!3967024))

(assert (= (and b!3965712 ((_ is Union!11541) (reg!11870 (regex!6636 (h!47697 rules!2768))))) b!3967025))

(declare-fun e!2456912 () Bool)

(assert (=> b!3965711 (= tp!1208697 e!2456912)))

(declare-fun b!3967029 () Bool)

(declare-fun tp!1208864 () Bool)

(declare-fun tp!1208865 () Bool)

(assert (=> b!3967029 (= e!2456912 (and tp!1208864 tp!1208865))))

(declare-fun b!3967026 () Bool)

(assert (=> b!3967026 (= e!2456912 tp_is_empty!20053)))

(declare-fun b!3967028 () Bool)

(declare-fun tp!1208866 () Bool)

(assert (=> b!3967028 (= e!2456912 tp!1208866)))

(declare-fun b!3967027 () Bool)

(declare-fun tp!1208863 () Bool)

(declare-fun tp!1208862 () Bool)

(assert (=> b!3967027 (= e!2456912 (and tp!1208863 tp!1208862))))

(assert (= (and b!3965711 ((_ is ElementMatch!11541) (regOne!23594 (regex!6636 (h!47697 rules!2768))))) b!3967026))

(assert (= (and b!3965711 ((_ is Concat!18408) (regOne!23594 (regex!6636 (h!47697 rules!2768))))) b!3967027))

(assert (= (and b!3965711 ((_ is Star!11541) (regOne!23594 (regex!6636 (h!47697 rules!2768))))) b!3967028))

(assert (= (and b!3965711 ((_ is Union!11541) (regOne!23594 (regex!6636 (h!47697 rules!2768))))) b!3967029))

(declare-fun e!2456913 () Bool)

(assert (=> b!3965711 (= tp!1208696 e!2456913)))

(declare-fun b!3967033 () Bool)

(declare-fun tp!1208869 () Bool)

(declare-fun tp!1208870 () Bool)

(assert (=> b!3967033 (= e!2456913 (and tp!1208869 tp!1208870))))

(declare-fun b!3967030 () Bool)

(assert (=> b!3967030 (= e!2456913 tp_is_empty!20053)))

(declare-fun b!3967032 () Bool)

(declare-fun tp!1208871 () Bool)

(assert (=> b!3967032 (= e!2456913 tp!1208871)))

(declare-fun b!3967031 () Bool)

(declare-fun tp!1208868 () Bool)

(declare-fun tp!1208867 () Bool)

(assert (=> b!3967031 (= e!2456913 (and tp!1208868 tp!1208867))))

(assert (= (and b!3965711 ((_ is ElementMatch!11541) (regTwo!23594 (regex!6636 (h!47697 rules!2768))))) b!3967030))

(assert (= (and b!3965711 ((_ is Concat!18408) (regTwo!23594 (regex!6636 (h!47697 rules!2768))))) b!3967031))

(assert (= (and b!3965711 ((_ is Star!11541) (regTwo!23594 (regex!6636 (h!47697 rules!2768))))) b!3967032))

(assert (= (and b!3965711 ((_ is Union!11541) (regTwo!23594 (regex!6636 (h!47697 rules!2768))))) b!3967033))

(declare-fun b!3967034 () Bool)

(declare-fun e!2456914 () Bool)

(declare-fun tp!1208872 () Bool)

(assert (=> b!3967034 (= e!2456914 (and tp_is_empty!20053 tp!1208872))))

(assert (=> b!3965703 (= tp!1208688 e!2456914)))

(assert (= (and b!3965703 ((_ is Cons!42275) (originalCharacters!7236 (h!47698 (t!330257 suffixTokens!72))))) b!3967034))

(declare-fun e!2456915 () Bool)

(assert (=> b!3965713 (= tp!1208698 e!2456915)))

(declare-fun b!3967038 () Bool)

(declare-fun tp!1208875 () Bool)

(declare-fun tp!1208876 () Bool)

(assert (=> b!3967038 (= e!2456915 (and tp!1208875 tp!1208876))))

(declare-fun b!3967035 () Bool)

(assert (=> b!3967035 (= e!2456915 tp_is_empty!20053)))

(declare-fun b!3967037 () Bool)

(declare-fun tp!1208877 () Bool)

(assert (=> b!3967037 (= e!2456915 tp!1208877)))

(declare-fun b!3967036 () Bool)

(declare-fun tp!1208874 () Bool)

(declare-fun tp!1208873 () Bool)

(assert (=> b!3967036 (= e!2456915 (and tp!1208874 tp!1208873))))

(assert (= (and b!3965713 ((_ is ElementMatch!11541) (regOne!23595 (regex!6636 (h!47697 rules!2768))))) b!3967035))

(assert (= (and b!3965713 ((_ is Concat!18408) (regOne!23595 (regex!6636 (h!47697 rules!2768))))) b!3967036))

(assert (= (and b!3965713 ((_ is Star!11541) (regOne!23595 (regex!6636 (h!47697 rules!2768))))) b!3967037))

(assert (= (and b!3965713 ((_ is Union!11541) (regOne!23595 (regex!6636 (h!47697 rules!2768))))) b!3967038))

(declare-fun e!2456916 () Bool)

(assert (=> b!3965713 (= tp!1208699 e!2456916)))

(declare-fun b!3967042 () Bool)

(declare-fun tp!1208880 () Bool)

(declare-fun tp!1208881 () Bool)

(assert (=> b!3967042 (= e!2456916 (and tp!1208880 tp!1208881))))

(declare-fun b!3967039 () Bool)

(assert (=> b!3967039 (= e!2456916 tp_is_empty!20053)))

(declare-fun b!3967041 () Bool)

(declare-fun tp!1208882 () Bool)

(assert (=> b!3967041 (= e!2456916 tp!1208882)))

(declare-fun b!3967040 () Bool)

(declare-fun tp!1208879 () Bool)

(declare-fun tp!1208878 () Bool)

(assert (=> b!3967040 (= e!2456916 (and tp!1208879 tp!1208878))))

(assert (= (and b!3965713 ((_ is ElementMatch!11541) (regTwo!23595 (regex!6636 (h!47697 rules!2768))))) b!3967039))

(assert (= (and b!3965713 ((_ is Concat!18408) (regTwo!23595 (regex!6636 (h!47697 rules!2768))))) b!3967040))

(assert (= (and b!3965713 ((_ is Star!11541) (regTwo!23595 (regex!6636 (h!47697 rules!2768))))) b!3967041))

(assert (= (and b!3965713 ((_ is Union!11541) (regTwo!23595 (regex!6636 (h!47697 rules!2768))))) b!3967042))

(declare-fun b!3967043 () Bool)

(declare-fun e!2456917 () Bool)

(declare-fun tp!1208883 () Bool)

(assert (=> b!3967043 (= e!2456917 (and tp_is_empty!20053 tp!1208883))))

(assert (=> b!3965672 (= tp!1208654 e!2456917)))

(assert (= (and b!3965672 ((_ is Cons!42275) (t!330254 (t!330254 suffixResult!91)))) b!3967043))

(declare-fun b!3967044 () Bool)

(declare-fun e!2456918 () Bool)

(declare-fun tp!1208884 () Bool)

(assert (=> b!3967044 (= e!2456918 (and tp_is_empty!20053 tp!1208884))))

(assert (=> b!3965669 (= tp!1208651 e!2456918)))

(assert (= (and b!3965669 ((_ is Cons!42275) (t!330254 (originalCharacters!7236 (h!47698 prefixTokens!80))))) b!3967044))

(declare-fun tp!1208885 () Bool)

(declare-fun tp!1208886 () Bool)

(declare-fun b!3967045 () Bool)

(declare-fun e!2456919 () Bool)

(assert (=> b!3967045 (= e!2456919 (and (inv!56504 (left!32047 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))) tp!1208886 (inv!56504 (right!32377 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))) tp!1208885))))

(declare-fun b!3967047 () Bool)

(declare-fun e!2456920 () Bool)

(declare-fun tp!1208887 () Bool)

(assert (=> b!3967047 (= e!2456920 tp!1208887)))

(declare-fun b!3967046 () Bool)

(assert (=> b!3967046 (= e!2456919 (and (inv!56512 (xs!16153 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))) e!2456920))))

(assert (=> b!3965374 (= tp!1208641 (and (inv!56504 (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80))))) e!2456919))))

(assert (= (and b!3965374 ((_ is Node!12847) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))) b!3967045))

(assert (= b!3967046 b!3967047))

(assert (= (and b!3965374 ((_ is Leaf!19872) (c!687924 (dynLambda!18042 (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (value!209760 (h!47698 prefixTokens!80)))))) b!3967046))

(declare-fun m!4537597 () Bool)

(assert (=> b!3967045 m!4537597))

(declare-fun m!4537599 () Bool)

(assert (=> b!3967045 m!4537599))

(declare-fun m!4537601 () Bool)

(assert (=> b!3967046 m!4537601))

(assert (=> b!3965374 m!4535091))

(declare-fun e!2456921 () Bool)

(assert (=> b!3965685 (= tp!1208667 e!2456921)))

(declare-fun b!3967053 () Bool)

(declare-fun tp!1208890 () Bool)

(declare-fun tp!1208891 () Bool)

(assert (=> b!3967053 (= e!2456921 (and tp!1208890 tp!1208891))))

(declare-fun b!3967048 () Bool)

(assert (=> b!3967048 (= e!2456921 tp_is_empty!20053)))

(declare-fun b!3967052 () Bool)

(declare-fun tp!1208892 () Bool)

(assert (=> b!3967052 (= e!2456921 tp!1208892)))

(declare-fun b!3967050 () Bool)

(declare-fun tp!1208889 () Bool)

(declare-fun tp!1208888 () Bool)

(assert (=> b!3967050 (= e!2456921 (and tp!1208889 tp!1208888))))

(assert (= (and b!3965685 ((_ is ElementMatch!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967048))

(assert (= (and b!3965685 ((_ is Concat!18408) (regOne!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967050))

(assert (= (and b!3965685 ((_ is Star!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967052))

(assert (= (and b!3965685 ((_ is Union!11541) (regOne!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967053))

(declare-fun e!2456924 () Bool)

(assert (=> b!3965685 (= tp!1208666 e!2456924)))

(declare-fun b!3967057 () Bool)

(declare-fun tp!1208895 () Bool)

(declare-fun tp!1208896 () Bool)

(assert (=> b!3967057 (= e!2456924 (and tp!1208895 tp!1208896))))

(declare-fun b!3967054 () Bool)

(assert (=> b!3967054 (= e!2456924 tp_is_empty!20053)))

(declare-fun b!3967056 () Bool)

(declare-fun tp!1208897 () Bool)

(assert (=> b!3967056 (= e!2456924 tp!1208897)))

(declare-fun b!3967055 () Bool)

(declare-fun tp!1208894 () Bool)

(declare-fun tp!1208893 () Bool)

(assert (=> b!3967055 (= e!2456924 (and tp!1208894 tp!1208893))))

(assert (= (and b!3965685 ((_ is ElementMatch!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967054))

(assert (= (and b!3965685 ((_ is Concat!18408) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967055))

(assert (= (and b!3965685 ((_ is Star!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967056))

(assert (= (and b!3965685 ((_ is Union!11541) (regTwo!23594 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967057))

(declare-fun b!3967060 () Bool)

(declare-fun b_free!109673 () Bool)

(declare-fun b_next!110377 () Bool)

(assert (=> b!3967060 (= b_free!109673 (not b_next!110377))))

(declare-fun t!330575 () Bool)

(declare-fun tb!239433 () Bool)

(assert (=> (and b!3967060 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330575) tb!239433))

(declare-fun result!289916 () Bool)

(assert (= result!289916 result!289734))

(assert (=> d!1175129 t!330575))

(declare-fun tb!239435 () Bool)

(declare-fun t!330577 () Bool)

(assert (=> (and b!3967060 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330577) tb!239435))

(declare-fun result!289918 () Bool)

(assert (= result!289918 result!289592))

(assert (=> d!1174601 t!330577))

(declare-fun t!330579 () Bool)

(declare-fun tb!239437 () Bool)

(assert (=> (and b!3967060 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330579) tb!239437))

(declare-fun result!289920 () Bool)

(assert (= result!289920 result!289806))

(assert (=> d!1175471 t!330579))

(assert (=> d!1175463 t!330579))

(declare-fun t!330581 () Bool)

(declare-fun tb!239439 () Bool)

(assert (=> (and b!3967060 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330581) tb!239439))

(declare-fun result!289922 () Bool)

(assert (= result!289922 result!289758))

(assert (=> d!1175201 t!330581))

(declare-fun tp!1208900 () Bool)

(declare-fun b_and!304839 () Bool)

(assert (=> b!3967060 (= tp!1208900 (and (=> t!330581 result!289922) (=> t!330579 result!289920) (=> t!330577 result!289918) (=> t!330575 result!289916) b_and!304839))))

(declare-fun b_free!109675 () Bool)

(declare-fun b_next!110379 () Bool)

(assert (=> b!3967060 (= b_free!109675 (not b_next!110379))))

(declare-fun t!330583 () Bool)

(declare-fun tb!239441 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72))))) t!330583) tb!239441))

(declare-fun result!289924 () Bool)

(assert (= result!289924 result!289622))

(assert (=> b!3965513 t!330583))

(declare-fun tb!239443 () Bool)

(declare-fun t!330585 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330585) tb!239443))

(declare-fun result!289926 () Bool)

(assert (= result!289926 result!289586))

(assert (=> d!1174599 t!330585))

(declare-fun tb!239445 () Bool)

(declare-fun t!330587 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80)))))) t!330587) tb!239445))

(declare-fun result!289928 () Bool)

(assert (= result!289928 result!289698))

(assert (=> b!3965944 t!330587))

(declare-fun t!330589 () Bool)

(declare-fun tb!239447 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388712)))))) t!330589) tb!239447))

(declare-fun result!289930 () Bool)

(assert (= result!289930 result!289746))

(assert (=> d!1175159 t!330589))

(declare-fun t!330591 () Bool)

(declare-fun tb!239449 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80))))) t!330591) tb!239449))

(declare-fun result!289932 () Bool)

(assert (= result!289932 result!289578))

(assert (=> b!3965368 t!330591))

(declare-fun t!330593 () Bool)

(declare-fun tb!239451 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603)))))) t!330593) tb!239451))

(declare-fun result!289934 () Bool)

(assert (= result!289934 result!289818))

(assert (=> d!1175471 t!330593))

(declare-fun tb!239453 () Bool)

(declare-fun t!330595 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72)))))) t!330595) tb!239453))

(declare-fun result!289936 () Bool)

(assert (= result!289936 result!289830))

(assert (=> b!3966820 t!330595))

(declare-fun tb!239455 () Bool)

(declare-fun t!330597 () Bool)

(assert (=> (and b!3967060 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (get!13944 lt!1388815)))))) t!330597) tb!239455))

(declare-fun result!289938 () Bool)

(assert (= result!289938 result!289722))

(assert (=> d!1174985 t!330597))

(declare-fun tp!1208899 () Bool)

(declare-fun b_and!304841 () Bool)

(assert (=> b!3967060 (= tp!1208899 (and (=> t!330593 result!289934) (=> t!330583 result!289924) (=> t!330591 result!289932) (=> t!330597 result!289938) (=> t!330595 result!289936) (=> t!330585 result!289926) (=> t!330587 result!289928) (=> t!330589 result!289930) b_and!304841))))

(declare-fun e!2456926 () Bool)

(assert (=> b!3967060 (= e!2456926 (and tp!1208900 tp!1208899))))

(declare-fun e!2456928 () Bool)

(declare-fun b!3967059 () Bool)

(declare-fun tp!1208898 () Bool)

(assert (=> b!3967059 (= e!2456928 (and tp!1208898 (inv!56499 (tag!7496 (h!47697 (t!330256 (t!330256 rules!2768))))) (inv!56503 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) e!2456926))))

(declare-fun b!3967058 () Bool)

(declare-fun e!2456925 () Bool)

(declare-fun tp!1208901 () Bool)

(assert (=> b!3967058 (= e!2456925 (and e!2456928 tp!1208901))))

(assert (=> b!3965722 (= tp!1208712 e!2456925)))

(assert (= b!3967059 b!3967060))

(assert (= b!3967058 b!3967059))

(assert (= (and b!3965722 ((_ is Cons!42277) (t!330256 (t!330256 rules!2768)))) b!3967058))

(declare-fun m!4537615 () Bool)

(assert (=> b!3967059 m!4537615))

(declare-fun m!4537617 () Bool)

(assert (=> b!3967059 m!4537617))

(declare-fun b!3967063 () Bool)

(declare-fun e!2456930 () Bool)

(declare-fun tp!1208902 () Bool)

(assert (=> b!3967063 (= e!2456930 (and tp_is_empty!20053 tp!1208902))))

(assert (=> b!3965670 (= tp!1208652 e!2456930)))

(assert (= (and b!3965670 ((_ is Cons!42275) (t!330254 (originalCharacters!7236 (h!47698 suffixTokens!72))))) b!3967063))

(declare-fun e!2456931 () Bool)

(assert (=> b!3965723 (= tp!1208709 e!2456931)))

(declare-fun b!3967067 () Bool)

(declare-fun tp!1208905 () Bool)

(declare-fun tp!1208906 () Bool)

(assert (=> b!3967067 (= e!2456931 (and tp!1208905 tp!1208906))))

(declare-fun b!3967064 () Bool)

(assert (=> b!3967064 (= e!2456931 tp_is_empty!20053)))

(declare-fun b!3967066 () Bool)

(declare-fun tp!1208907 () Bool)

(assert (=> b!3967066 (= e!2456931 tp!1208907)))

(declare-fun b!3967065 () Bool)

(declare-fun tp!1208904 () Bool)

(declare-fun tp!1208903 () Bool)

(assert (=> b!3967065 (= e!2456931 (and tp!1208904 tp!1208903))))

(assert (= (and b!3965723 ((_ is ElementMatch!11541) (regex!6636 (h!47697 (t!330256 rules!2768))))) b!3967064))

(assert (= (and b!3965723 ((_ is Concat!18408) (regex!6636 (h!47697 (t!330256 rules!2768))))) b!3967065))

(assert (= (and b!3965723 ((_ is Star!11541) (regex!6636 (h!47697 (t!330256 rules!2768))))) b!3967066))

(assert (= (and b!3965723 ((_ is Union!11541) (regex!6636 (h!47697 (t!330256 rules!2768))))) b!3967067))

(declare-fun e!2456932 () Bool)

(assert (=> b!3965686 (= tp!1208670 e!2456932)))

(declare-fun b!3967071 () Bool)

(declare-fun tp!1208910 () Bool)

(declare-fun tp!1208911 () Bool)

(assert (=> b!3967071 (= e!2456932 (and tp!1208910 tp!1208911))))

(declare-fun b!3967068 () Bool)

(assert (=> b!3967068 (= e!2456932 tp_is_empty!20053)))

(declare-fun b!3967070 () Bool)

(declare-fun tp!1208912 () Bool)

(assert (=> b!3967070 (= e!2456932 tp!1208912)))

(declare-fun b!3967069 () Bool)

(declare-fun tp!1208909 () Bool)

(declare-fun tp!1208908 () Bool)

(assert (=> b!3967069 (= e!2456932 (and tp!1208909 tp!1208908))))

(assert (= (and b!3965686 ((_ is ElementMatch!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967068))

(assert (= (and b!3965686 ((_ is Concat!18408) (reg!11870 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967069))

(assert (= (and b!3965686 ((_ is Star!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967070))

(assert (= (and b!3965686 ((_ is Union!11541) (reg!11870 (regex!6636 (rule!9622 (h!47698 prefixTokens!80)))))) b!3967071))

(declare-fun b_lambda!115989 () Bool)

(assert (= b_lambda!115955 (or (and b!3965724 b_free!109651 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3965705 b_free!109647 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3965251 b_free!109635 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3967017 b_free!109671 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3965701 b_free!109643) (and b!3965280 b_free!109639 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3966954 b_free!109667 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3965265 b_free!109631 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) (and b!3967060 b_free!109675 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))))) b_lambda!115989)))

(declare-fun b_lambda!115991 () Bool)

(assert (= b_lambda!115935 (or (and b!3965705 b_free!109645 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965724 b_free!109649 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965265 b_free!109629 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965251 b_free!109633 (= (toValue!9116 (transformation!6636 (h!47697 rules!2768))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965701 b_free!109641 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965280 b_free!109637 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3966954 b_free!109665 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3967060 b_free!109673 (= (toValue!9116 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3967017 b_free!109669 (= (toValue!9116 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toValue!9116 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) b_lambda!115991)))

(declare-fun b_lambda!115993 () Bool)

(assert (= b_lambda!115933 (or (and b!3967060 b_free!109675 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965265 b_free!109631 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965705 b_free!109647 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965251 b_free!109635 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3967017 b_free!109671 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3966954 b_free!109667 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965701 b_free!109643 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965280 b_free!109639 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) (and b!3965724 b_free!109651 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (_1!23921 (v!39401 lt!1388603))))))) b_lambda!115993)))

(declare-fun b_lambda!115995 () Bool)

(assert (= b_lambda!115979 (or (and b!3965280 b_free!109639 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 prefixTokens!80)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3965701 b_free!109643 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 prefixTokens!80))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3965265 b_free!109631 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 suffixTokens!72)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3965251 b_free!109635 (= (toChars!8975 (transformation!6636 (h!47697 rules!2768))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3967017 b_free!109671 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 suffixTokens!72)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3965724 b_free!109651 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 rules!2768)))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3966954 b_free!109667 (= (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 (t!330257 prefixTokens!80)))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) (and b!3965705 b_free!109647) (and b!3967060 b_free!109675 (= (toChars!8975 (transformation!6636 (h!47697 (t!330256 (t!330256 rules!2768))))) (toChars!8975 (transformation!6636 (rule!9622 (h!47698 (t!330257 suffixTokens!72))))))) b_lambda!115995)))

(check-sat (not b!3966952) (not b!3966186) (not b!3966112) (not b!3966277) (not b!3966751) (not b!3966829) (not tb!239325) (not b!3966168) (not b!3966137) (not b!3967011) (not b!3966250) (not b!3966362) (not b!3966272) (not b!3966094) (not b!3967059) b_and!304835 (not b!3967037) (not b!3967038) (not b!3967071) (not b!3966278) (not d!1175339) (not b!3967045) (not d!1175467) (not b!3966348) (not b!3966075) (not b!3966191) (not b_next!110339) (not b!3966302) (not b!3965374) (not d!1175135) (not b!3966130) (not b_next!110345) (not b!3966249) (not b!3966307) (not b!3967066) (not b!3966873) (not b!3967012) (not b!3966247) (not b!3966081) (not b!3967021) (not b!3966396) (not b!3966758) (not b_lambda!115963) (not b!3966510) (not b!3965961) (not b!3966092) (not bm!285536) (not b!3966925) (not b!3966196) (not b!3966245) (not b!3966325) (not d!1175425) (not b!3966243) (not b!3966225) (not b!3966107) (not bm!285537) (not b!3966276) (not b!3966202) (not bm!285514) (not b!3966904) (not b!3966819) (not b!3966257) (not d!1175199) (not b!3966084) (not b!3966845) (not b!3966492) (not b!3966979) (not b!3966096) (not d!1174879) (not b!3966817) (not b!3966933) (not b!3965944) (not tb!239241) (not b_lambda!115949) (not d!1174965) (not d!1175421) (not b_lambda!115973) (not b!3966587) (not b!3966128) (not b!3966180) (not b!3966936) (not d!1175097) (not b!3966106) (not b!3965950) (not b!3966073) (not d!1174995) (not b!3966170) (not b_lambda!115975) (not d!1175059) b_and!304771 (not b!3966742) b_and!304791 (not b!3966582) (not d!1175137) b_and!304787 (not d!1175127) (not b!3967025) (not b!3966746) (not b!3966391) (not b!3966820) (not d!1174989) (not b!3966270) (not d!1175139) (not b!3966951) (not b!3966941) (not b_lambda!115989) (not b!3966208) (not b!3966104) (not b!3966830) (not b!3966188) (not b!3966187) (not b!3966274) (not b_next!110379) (not b!3966740) (not b!3966231) (not b!3966172) (not b!3966590) (not d!1175057) (not b!3966394) (not b!3966894) (not b!3966254) (not b!3967047) (not b!3966364) (not b!3966940) (not b!3967008) b_and!304785 (not b!3966337) (not b!3966290) (not b!3966943) (not d!1175167) (not d!1175083) (not b!3965934) (not b!3967070) (not b!3966931) (not b!3966292) b_and!304779 (not b!3966126) (not d!1175187) (not b!3967041) (not b!3966162) (not d!1175005) (not b!3966990) (not bm!285489) (not d!1175563) (not d!1175279) (not b!3966240) (not b_next!110333) (not b!3967019) (not b!3966945) (not d!1175553) (not d!1174893) (not b!3966950) (not d!1175155) (not b!3965962) (not d!1174963) (not b!3966949) (not b!3965937) (not b!3966851) tp_is_empty!20053 (not b!3966719) (not b!3966210) (not b!3966229) (not b!3966083) (not b!3966374) (not b!3966764) (not b!3966328) (not d!1175223) (not b!3966413) (not b!3966120) (not b!3966110) (not b!3967036) (not b!3966236) (not b!3966918) (not b!3966734) (not b!3966832) (not b!3966262) (not b!3966122) (not d!1175171) b_and!304775 (not b!3967034) (not b!3966712) (not b!3966992) (not b!3966183) (not b!3966123) (not b!3966281) (not b!3966336) (not b!3966125) (not b!3966762) (not b!3966729) (not b!3966124) (not b_next!110373) (not b!3966737) (not b!3967027) (not d!1175529) (not b!3967052) (not d!1174991) (not d!1175101) (not d!1174875) (not b!3966235) (not b!3967014) (not b!3966869) (not b!3966855) (not d!1175177) (not b!3966838) (not b_next!110337) (not b!3966296) (not b!3966932) (not b!3967053) (not b!3966977) (not b!3966822) (not b!3967024) (not d!1175547) (not b!3966117) (not b!3966194) (not b!3966397) (not b!3966717) (not b!3967058) (not b!3966709) (not bm!285539) (not bm!285505) (not b!3966134) b_and!304783 (not d!1174975) (not d!1174953) (not b!3967029) (not b!3966088) (not b_lambda!115947) (not d!1175037) (not b_lambda!115993) (not b!3966733) (not d!1175233) (not b!3966178) (not b!3965390) (not bm!285541) (not b!3966366) (not b!3967005) (not b!3966791) (not d!1175049) (not b!3966298) (not b!3966310) (not d!1175495) (not b!3965935) (not bm!285507) (not b!3966815) (not b!3966119) (not b!3966239) (not b!3966223) (not b!3966471) (not b_lambda!115991) (not b!3966329) (not b!3966937) (not b!3966200) (not b!3966131) (not b!3966826) (not b!3966385) (not b!3966111) (not b!3966232) (not d!1175477) (not d!1175455) (not tb!239253) (not b!3967003) (not b!3966114) (not b!3966136) (not b!3966722) (not b!3966747) (not b!3966383) (not b!3967042) (not b!3965938) (not d!1175239) (not d!1175277) (not b!3966115) (not b!3966853) (not b!3966190) (not b!3967009) (not b_next!110355) (not b!3966102) (not b!3966846) (not d!1175461) (not b!3967046) (not d!1175159) (not b!3966861) (not b!3967063) (not b!3966268) (not b!3965939) (not d!1174947) (not b!3967069) (not b!3967043) (not b!3966342) (not b!3966395) (not bm!285535) b_and!304831 (not d!1175157) (not b!3965948) (not b!3966824) (not b!3966264) (not b!3966836) (not b!3966219) (not b!3966160) b_and!304837 (not b!3966341) (not b!3966840) (not d!1175439) (not d!1175483) (not b!3966350) (not b!3966253) (not b!3966953) (not b_next!110353) b_and!304841 (not b!3967065) (not b!3966478) (not b!3966259) (not d!1175409) b_and!304777 (not b!3966862) (not b!3966205) (not d!1175081) (not d!1175291) (not b!3966878) (not b!3966174) (not b!3966182) b_and!304793 (not b!3965941) (not b!3966916) (not b!3966261) (not b!3966367) (not b!3966978) (not b!3966881) (not b!3967013) (not b!3966221) (not b!3966121) (not b!3967056) (not b!3966318) (not b!3966317) (not b!3966379) (not d!1175451) (not bm!285491) (not b!3966754) (not d!1175029) (not b!3966347) (not b_next!110375) (not d!1175193) (not b!3966148) (not b!3966304) (not d!1175307) (not b!3966741) (not b!3966818) (not b!3966142) (not b!3966377) (not bm!285490) (not b!3966944) (not d!1175087) (not b!3966141) (not b!3966743) (not b!3966147) (not tb!239217) (not b!3966151) (not bm!285540) (not b!3965946) (not b!3966725) (not b!3966393) (not d!1175131) (not b!3966935) (not b!3966891) (not b!3965943) (not b!3967007) (not b!3967015) (not d!1175033) (not b!3967050) b_and!304839 (not b!3966158) (not b!3966215) (not d!1175079) (not bm!285566) (not b!3965964) (not tb!239265) (not b!3966392) (not b!3965936) b_and!304773 (not b!3966327) (not d!1174985) (not b!3967040) (not d!1175413) (not bm!285534) (not b!3966086) (not b!3966300) (not b!3966588) (not b!3966283) (not b!3966735) (not b!3966879) (not b!3966087) (not b!3966224) (not b!3966857) (not b!3966491) (not b!3966496) (not b!3967055) (not b!3966745) (not b!3966176) (not b!3966939) (not d!1174983) (not b!3966382) (not b_next!110377) (not b!3966323) (not bm!285538) (not b!3966227) (not b!3966889) (not d!1174945) (not b!3966494) (not b!3966843) (not b!3966892) (not b!3966848) (not d!1175027) (not b!3966885) (not b!3966727) (not b!3967044) (not b!3966859) (not d!1175521) (not b!3966213) (not d!1174873) (not b!3966217) (not d!1175165) (not d!1175493) (not b!3966321) (not b_next!110343) (not b!3966755) (not b_next!110335) (not b!3966480) (not b!3967057) (not b!3967023) (not b!3966721) (not b!3966991) (not b!3966266) (not b!3967067) (not b!3966744) (not b!3966714) (not b!3966584) (not d!1175471) (not b!3966865) (not b!3966085) (not b!3966381) (not d!1175465) (not bm!285567) (not b!3967031) (not bm!285492) (not d!1175215) (not b!3966275) (not b!3966479) (not b!3966842) (not b!3966594) b_and!304781 (not b!3966294) (not b!3966757) (not b!3966947) (not b!3966363) b_and!304833 (not b!3966749) (not d!1174877) (not b!3966753) (not b_next!110349) (not b_lambda!115959) (not d!1174971) (not b!3966279) (not d!1175189) (not d!1175285) (not b!3966309) (not b!3966948) (not b!3967020) (not d!1175241) (not d!1175143) (not b!3966082) (not b!3966090) (not b!3966906) (not b!3967033) (not b_lambda!115995) (not d!1175173) (not b!3967002) (not b_next!110369) (not b!3966198) (not b_next!110341) (not d!1175479) (not b!3966875) (not b!3966399) (not b!3966204) b_and!304789 (not b!3966285) (not b!3966914) (not d!1175169) (not bm!285533) (not b!3966821) (not b_lambda!115977) (not b_lambda!115965) (not d!1175497) (not b_next!110351) (not d!1174881) (not d!1175537) (not b!3965949) (not d!1175515) (not b!3966280) (not b!3967004) (not b!3965942) (not b!3966976) (not b!3966305) (not tb!239277) (not b!3966731) (not b!3966140) (not tb!239349) (not d!1175115) (not b!3966212) (not b!3967028) (not b!3966905) (not b!3967032) (not tb!239337) (not d!1175003) (not b!3966760) (not b!3966929) (not b!3965945) (not b_lambda!115961) (not b!3966376) (not b_next!110371) (not b_next!110347) (not d!1175543) (not d!1175109) (not b!3967016) (not b!3965515) (not d!1175001) (not d!1174981) (not b!3966150))
(check-sat b_and!304835 b_and!304779 (not b_next!110333) b_and!304775 b_and!304783 (not b_next!110355) b_and!304831 b_and!304793 (not b_next!110375) b_and!304839 b_and!304773 (not b_next!110377) (not b_next!110343) (not b_next!110335) (not b_next!110339) (not b_next!110345) b_and!304771 b_and!304791 b_and!304787 (not b_next!110379) b_and!304785 (not b_next!110373) (not b_next!110337) b_and!304837 b_and!304777 (not b_next!110353) b_and!304841 (not b_next!110349) b_and!304781 b_and!304833 (not b_next!110369) (not b_next!110341) b_and!304789 (not b_next!110351) (not b_next!110371) (not b_next!110347))
