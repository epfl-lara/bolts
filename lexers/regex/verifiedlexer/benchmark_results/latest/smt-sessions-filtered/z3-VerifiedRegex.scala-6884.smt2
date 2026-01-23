; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362616 () Bool)

(assert start!362616)

(declare-fun b!3865628 () Bool)

(declare-fun b_free!104149 () Bool)

(declare-fun b_next!104853 () Bool)

(assert (=> b!3865628 (= b_free!104149 (not b_next!104853))))

(declare-fun tp!1171971 () Bool)

(declare-fun b_and!289563 () Bool)

(assert (=> b!3865628 (= tp!1171971 b_and!289563)))

(declare-fun b_free!104151 () Bool)

(declare-fun b_next!104855 () Bool)

(assert (=> b!3865628 (= b_free!104151 (not b_next!104855))))

(declare-fun tp!1171976 () Bool)

(declare-fun b_and!289565 () Bool)

(assert (=> b!3865628 (= tp!1171976 b_and!289565)))

(declare-fun b!3865604 () Bool)

(declare-fun b_free!104153 () Bool)

(declare-fun b_next!104857 () Bool)

(assert (=> b!3865604 (= b_free!104153 (not b_next!104857))))

(declare-fun tp!1171980 () Bool)

(declare-fun b_and!289567 () Bool)

(assert (=> b!3865604 (= tp!1171980 b_and!289567)))

(declare-fun b_free!104155 () Bool)

(declare-fun b_next!104859 () Bool)

(assert (=> b!3865604 (= b_free!104155 (not b_next!104859))))

(declare-fun tp!1171986 () Bool)

(declare-fun b_and!289569 () Bool)

(assert (=> b!3865604 (= tp!1171986 b_and!289569)))

(declare-fun b!3865619 () Bool)

(declare-fun b_free!104157 () Bool)

(declare-fun b_next!104861 () Bool)

(assert (=> b!3865619 (= b_free!104157 (not b_next!104861))))

(declare-fun tp!1171975 () Bool)

(declare-fun b_and!289571 () Bool)

(assert (=> b!3865619 (= tp!1171975 b_and!289571)))

(declare-fun b_free!104159 () Bool)

(declare-fun b_next!104863 () Bool)

(assert (=> b!3865619 (= b_free!104159 (not b_next!104863))))

(declare-fun tp!1171978 () Bool)

(declare-fun b_and!289573 () Bool)

(assert (=> b!3865619 (= tp!1171978 b_and!289573)))

(declare-fun e!2390344 () Bool)

(declare-fun tp!1171983 () Bool)

(declare-datatypes ((List!41148 0))(
  ( (Nil!41024) (Cons!41024 (h!46444 (_ BitVec 16)) (t!313927 List!41148)) )
))
(declare-datatypes ((TokenValue!6586 0))(
  ( (FloatLiteralValue!13172 (text!46547 List!41148)) (TokenValueExt!6585 (__x!25389 Int)) (Broken!32930 (value!201754 List!41148)) (Object!6709) (End!6586) (Def!6586) (Underscore!6586) (Match!6586) (Else!6586) (Error!6586) (Case!6586) (If!6586) (Extends!6586) (Abstract!6586) (Class!6586) (Val!6586) (DelimiterValue!13172 (del!6646 List!41148)) (KeywordValue!6592 (value!201755 List!41148)) (CommentValue!13172 (value!201756 List!41148)) (WhitespaceValue!13172 (value!201757 List!41148)) (IndentationValue!6586 (value!201758 List!41148)) (String!46647) (Int32!6586) (Broken!32931 (value!201759 List!41148)) (Boolean!6587) (Unit!58718) (OperatorValue!6589 (op!6646 List!41148)) (IdentifierValue!13172 (value!201760 List!41148)) (IdentifierValue!13173 (value!201761 List!41148)) (WhitespaceValue!13173 (value!201762 List!41148)) (True!13172) (False!13172) (Broken!32932 (value!201763 List!41148)) (Broken!32933 (value!201764 List!41148)) (True!13173) (RightBrace!6586) (RightBracket!6586) (Colon!6586) (Null!6586) (Comma!6586) (LeftBracket!6586) (False!13173) (LeftBrace!6586) (ImaginaryLiteralValue!6586 (text!46548 List!41148)) (StringLiteralValue!19758 (value!201765 List!41148)) (EOFValue!6586 (value!201766 List!41148)) (IdentValue!6586 (value!201767 List!41148)) (DelimiterValue!13173 (value!201768 List!41148)) (DedentValue!6586 (value!201769 List!41148)) (NewLineValue!6586 (value!201770 List!41148)) (IntegerValue!19758 (value!201771 (_ BitVec 32)) (text!46549 List!41148)) (IntegerValue!19759 (value!201772 Int) (text!46550 List!41148)) (Times!6586) (Or!6586) (Equal!6586) (Minus!6586) (Broken!32934 (value!201773 List!41148)) (And!6586) (Div!6586) (LessEqual!6586) (Mod!6586) (Concat!17847) (Not!6586) (Plus!6586) (SpaceValue!6586 (value!201774 List!41148)) (IntegerValue!19760 (value!201775 Int) (text!46551 List!41148)) (StringLiteralValue!19759 (text!46552 List!41148)) (FloatLiteralValue!13173 (text!46553 List!41148)) (BytesLiteralValue!6586 (value!201776 List!41148)) (CommentValue!13173 (value!201777 List!41148)) (StringLiteralValue!19760 (value!201778 List!41148)) (ErrorTokenValue!6586 (msg!6647 List!41148)) )
))
(declare-datatypes ((C!22708 0))(
  ( (C!22709 (val!13448 Int)) )
))
(declare-datatypes ((Regex!11261 0))(
  ( (ElementMatch!11261 (c!672822 C!22708)) (Concat!17848 (regOne!23034 Regex!11261) (regTwo!23034 Regex!11261)) (EmptyExpr!11261) (Star!11261 (reg!11590 Regex!11261)) (EmptyLang!11261) (Union!11261 (regOne!23035 Regex!11261) (regTwo!23035 Regex!11261)) )
))
(declare-datatypes ((String!46648 0))(
  ( (String!46649 (value!201779 String)) )
))
(declare-datatypes ((List!41149 0))(
  ( (Nil!41025) (Cons!41025 (h!46445 C!22708) (t!313928 List!41149)) )
))
(declare-datatypes ((IArray!25139 0))(
  ( (IArray!25140 (innerList!12627 List!41149)) )
))
(declare-datatypes ((Conc!12567 0))(
  ( (Node!12567 (left!31563 Conc!12567) (right!31893 Conc!12567) (csize!25364 Int) (cheight!12778 Int)) (Leaf!19452 (xs!15873 IArray!25139) (csize!25365 Int)) (Empty!12567) )
))
(declare-datatypes ((BalanceConc!24728 0))(
  ( (BalanceConc!24729 (c!672823 Conc!12567)) )
))
(declare-datatypes ((TokenValueInjection!12600 0))(
  ( (TokenValueInjection!12601 (toValue!8784 Int) (toChars!8643 Int)) )
))
(declare-datatypes ((Rule!12512 0))(
  ( (Rule!12513 (regex!6356 Regex!11261) (tag!7216 String!46648) (isSeparator!6356 Bool) (transformation!6356 TokenValueInjection!12600)) )
))
(declare-datatypes ((Token!11850 0))(
  ( (Token!11851 (value!201780 TokenValue!6586) (rule!9234 Rule!12512) (size!30845 Int) (originalCharacters!6956 List!41149)) )
))
(declare-datatypes ((List!41150 0))(
  ( (Nil!41026) (Cons!41026 (h!46446 Token!11850) (t!313929 List!41150)) )
))
(declare-fun suffixTokens!72 () List!41150)

(declare-fun b!3865597 () Bool)

(declare-fun e!2390334 () Bool)

(declare-fun inv!55186 (Token!11850) Bool)

(assert (=> b!3865597 (= e!2390334 (and (inv!55186 (h!46446 suffixTokens!72)) e!2390344 tp!1171983))))

(declare-fun b!3865598 () Bool)

(declare-fun e!2390352 () Bool)

(declare-fun tp_is_empty!19493 () Bool)

(declare-fun tp!1171970 () Bool)

(assert (=> b!3865598 (= e!2390352 (and tp_is_empty!19493 tp!1171970))))

(declare-fun b!3865599 () Bool)

(declare-datatypes ((Unit!58719 0))(
  ( (Unit!58720) )
))
(declare-fun e!2390362 () Unit!58719)

(declare-fun Unit!58721 () Unit!58719)

(assert (=> b!3865599 (= e!2390362 Unit!58721)))

(declare-fun lt!1343926 () Unit!58719)

(declare-fun prefix!426 () List!41149)

(declare-fun suffix!1176 () List!41149)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2318 (List!41149 List!41149) Unit!58719)

(assert (=> b!3865599 (= lt!1343926 (lemmaConcatTwoListThenFirstIsPrefix!2318 prefix!426 suffix!1176))))

(declare-fun lt!1343914 () List!41149)

(declare-fun isPrefix!3455 (List!41149 List!41149) Bool)

(assert (=> b!3865599 (isPrefix!3455 prefix!426 lt!1343914)))

(declare-fun lt!1343923 () List!41149)

(declare-fun lt!1343922 () Unit!58719)

(declare-fun lemmaIsPrefixSameLengthThenSameList!707 (List!41149 List!41149 List!41149) Unit!58719)

(assert (=> b!3865599 (= lt!1343922 (lemmaIsPrefixSameLengthThenSameList!707 lt!1343923 prefix!426 lt!1343914))))

(assert (=> b!3865599 (= lt!1343923 prefix!426)))

(declare-datatypes ((tuple2!40238 0))(
  ( (tuple2!40239 (_1!23253 Token!11850) (_2!23253 List!41149)) )
))
(declare-datatypes ((Option!8774 0))(
  ( (None!8773) (Some!8773 (v!39071 tuple2!40238)) )
))
(declare-fun lt!1343918 () Option!8774)

(declare-fun lt!1343921 () Unit!58719)

(declare-fun lemmaSamePrefixThenSameSuffix!1676 (List!41149 List!41149 List!41149 List!41149 List!41149) Unit!58719)

(assert (=> b!3865599 (= lt!1343921 (lemmaSamePrefixThenSameSuffix!1676 lt!1343923 (_2!23253 (v!39071 lt!1343918)) prefix!426 suffix!1176 lt!1343914))))

(assert (=> b!3865599 false))

(declare-fun b!3865600 () Bool)

(declare-fun res!1565495 () Bool)

(declare-fun e!2390360 () Bool)

(assert (=> b!3865600 (=> (not res!1565495) (not e!2390360))))

(declare-fun isEmpty!24320 (List!41149) Bool)

(assert (=> b!3865600 (= res!1565495 (not (isEmpty!24320 prefix!426)))))

(declare-fun b!3865601 () Bool)

(declare-fun e!2390359 () Unit!58719)

(declare-fun Unit!58722 () Unit!58719)

(assert (=> b!3865601 (= e!2390359 Unit!58722)))

(declare-fun b!3865602 () Bool)

(declare-fun e!2390333 () Bool)

(assert (=> b!3865602 (= e!2390333 false)))

(declare-fun e!2390347 () Bool)

(declare-fun tp!1171974 () Bool)

(declare-fun prefixTokens!80 () List!41150)

(declare-fun b!3865603 () Bool)

(declare-fun e!2390358 () Bool)

(assert (=> b!3865603 (= e!2390358 (and (inv!55186 (h!46446 prefixTokens!80)) e!2390347 tp!1171974))))

(declare-fun e!2390349 () Bool)

(assert (=> b!3865604 (= e!2390349 (and tp!1171980 tp!1171986))))

(declare-fun b!3865605 () Bool)

(declare-fun e!2390357 () Bool)

(assert (=> b!3865605 (= e!2390360 e!2390357)))

(declare-fun res!1565485 () Bool)

(assert (=> b!3865605 (=> (not res!1565485) (not e!2390357))))

(declare-datatypes ((tuple2!40240 0))(
  ( (tuple2!40241 (_1!23254 List!41150) (_2!23254 List!41149)) )
))
(declare-fun lt!1343919 () tuple2!40240)

(declare-fun suffixResult!91 () List!41149)

(declare-fun lt!1343937 () List!41150)

(assert (=> b!3865605 (= res!1565485 (= lt!1343919 (tuple2!40241 lt!1343937 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5945 0))(
  ( (LexerInterfaceExt!5942 (__x!25390 Int)) (Lexer!5943) )
))
(declare-fun thiss!20629 () LexerInterface!5945)

(declare-datatypes ((List!41151 0))(
  ( (Nil!41027) (Cons!41027 (h!46447 Rule!12512) (t!313930 List!41151)) )
))
(declare-fun rules!2768 () List!41151)

(declare-fun lexList!1713 (LexerInterface!5945 List!41151 List!41149) tuple2!40240)

(assert (=> b!3865605 (= lt!1343919 (lexList!1713 thiss!20629 rules!2768 lt!1343914))))

(declare-fun ++!10469 (List!41150 List!41150) List!41150)

(assert (=> b!3865605 (= lt!1343937 (++!10469 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10470 (List!41149 List!41149) List!41149)

(assert (=> b!3865605 (= lt!1343914 (++!10470 prefix!426 suffix!1176))))

(declare-fun b!3865606 () Bool)

(declare-fun e!2390361 () Bool)

(assert (=> b!3865606 (= e!2390357 e!2390361)))

(declare-fun res!1565487 () Bool)

(assert (=> b!3865606 (=> (not res!1565487) (not e!2390361))))

(declare-fun lt!1343935 () tuple2!40240)

(assert (=> b!3865606 (= res!1565487 (= (lexList!1713 thiss!20629 rules!2768 suffix!1176) lt!1343935))))

(assert (=> b!3865606 (= lt!1343935 (tuple2!40241 suffixTokens!72 suffixResult!91))))

(declare-fun b!3865607 () Bool)

(declare-fun res!1565498 () Bool)

(declare-fun e!2390339 () Bool)

(assert (=> b!3865607 (=> res!1565498 e!2390339)))

(declare-fun lt!1343915 () tuple2!40240)

(assert (=> b!3865607 (= res!1565498 (or (not (= lt!1343915 (tuple2!40241 (_1!23254 lt!1343915) (_2!23254 lt!1343915)))) (= (_2!23253 (v!39071 lt!1343918)) suffix!1176)))))

(declare-fun b!3865608 () Bool)

(declare-fun res!1565494 () Bool)

(assert (=> b!3865608 (=> (not res!1565494) (not e!2390360))))

(declare-fun isEmpty!24321 (List!41151) Bool)

(assert (=> b!3865608 (= res!1565494 (not (isEmpty!24321 rules!2768)))))

(declare-fun e!2390342 () Bool)

(declare-fun b!3865609 () Bool)

(declare-fun e!2390335 () Bool)

(declare-fun tp!1171977 () Bool)

(declare-fun inv!55183 (String!46648) Bool)

(declare-fun inv!55187 (TokenValueInjection!12600) Bool)

(assert (=> b!3865609 (= e!2390335 (and tp!1171977 (inv!55183 (tag!7216 (h!46447 rules!2768))) (inv!55187 (transformation!6356 (h!46447 rules!2768))) e!2390342))))

(declare-fun b!3865610 () Bool)

(declare-fun e!2390354 () Bool)

(declare-fun tp!1171984 () Bool)

(assert (=> b!3865610 (= e!2390354 (and tp_is_empty!19493 tp!1171984))))

(declare-fun lt!1343931 () Int)

(declare-fun lt!1343932 () Int)

(declare-fun b!3865611 () Bool)

(assert (=> b!3865611 (= e!2390339 (or (<= lt!1343931 lt!1343932) (not (= prefixTokens!80 Nil!41026))))))

(declare-fun lt!1343924 () Unit!58719)

(assert (=> b!3865611 (= lt!1343924 e!2390362)))

(declare-fun c!672818 () Bool)

(assert (=> b!3865611 (= c!672818 (= lt!1343931 lt!1343932))))

(declare-fun lt!1343927 () Unit!58719)

(declare-fun e!2390332 () Unit!58719)

(assert (=> b!3865611 (= lt!1343927 e!2390332)))

(declare-fun c!672821 () Bool)

(assert (=> b!3865611 (= c!672821 (< lt!1343931 lt!1343932))))

(declare-fun size!30846 (List!41149) Int)

(assert (=> b!3865611 (= lt!1343932 (size!30846 suffix!1176))))

(assert (=> b!3865611 (= lt!1343931 (size!30846 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun b!3865612 () Bool)

(declare-fun c!672820 () Bool)

(declare-fun lt!1343920 () List!41150)

(declare-fun isEmpty!24322 (List!41150) Bool)

(assert (=> b!3865612 (= c!672820 (isEmpty!24322 lt!1343920))))

(declare-fun tail!5881 (List!41150) List!41150)

(assert (=> b!3865612 (= lt!1343920 (tail!5881 prefixTokens!80))))

(declare-fun e!2390348 () Unit!58719)

(assert (=> b!3865612 (= e!2390359 e!2390348)))

(declare-fun b!3865613 () Bool)

(declare-fun tp!1171982 () Bool)

(declare-fun e!2390337 () Bool)

(declare-fun inv!21 (TokenValue!6586) Bool)

(assert (=> b!3865613 (= e!2390347 (and (inv!21 (value!201780 (h!46446 prefixTokens!80))) e!2390337 tp!1171982))))

(declare-fun b!3865614 () Bool)

(declare-fun res!1565488 () Bool)

(assert (=> b!3865614 (=> (not res!1565488) (not e!2390360))))

(assert (=> b!3865614 (= res!1565488 (not (isEmpty!24322 prefixTokens!80)))))

(declare-fun b!3865615 () Bool)

(declare-fun Unit!58723 () Unit!58719)

(assert (=> b!3865615 (= e!2390332 Unit!58723)))

(declare-fun lt!1343925 () Int)

(assert (=> b!3865615 (= lt!1343925 (size!30846 lt!1343914))))

(declare-fun lt!1343929 () Unit!58719)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1229 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41149 Rule!12512) Unit!58719)

(assert (=> b!3865615 (= lt!1343929 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1229 thiss!20629 rules!2768 lt!1343923 lt!1343914 (_2!23253 (v!39071 lt!1343918)) (rule!9234 (_1!23253 (v!39071 lt!1343918)))))))

(declare-fun lt!1343917 () TokenValue!6586)

(declare-fun lt!1343930 () Int)

(declare-fun maxPrefixOneRule!2331 (LexerInterface!5945 Rule!12512 List!41149) Option!8774)

(assert (=> b!3865615 (= (maxPrefixOneRule!2331 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) lt!1343914) (Some!8773 (tuple2!40239 (Token!11851 lt!1343917 (rule!9234 (_1!23253 (v!39071 lt!1343918))) lt!1343930 lt!1343923) (_2!23253 (v!39071 lt!1343918)))))))

(declare-fun lt!1343933 () tuple2!40238)

(declare-fun get!13574 (Option!8774) tuple2!40238)

(assert (=> b!3865615 (= lt!1343933 (get!13574 lt!1343918))))

(declare-fun c!672819 () Bool)

(assert (=> b!3865615 (= c!672819 (< (size!30846 (_2!23253 lt!1343933)) lt!1343932))))

(declare-fun lt!1343936 () Unit!58719)

(assert (=> b!3865615 (= lt!1343936 e!2390359)))

(assert (=> b!3865615 false))

(declare-fun b!3865616 () Bool)

(declare-fun e!2390350 () Bool)

(declare-fun tp!1171981 () Bool)

(assert (=> b!3865616 (= e!2390350 (and e!2390335 tp!1171981))))

(declare-fun res!1565492 () Bool)

(assert (=> start!362616 (=> (not res!1565492) (not e!2390360))))

(get-info :version)

(assert (=> start!362616 (= res!1565492 ((_ is Lexer!5943) thiss!20629))))

(assert (=> start!362616 e!2390360))

(assert (=> start!362616 e!2390354))

(assert (=> start!362616 true))

(assert (=> start!362616 e!2390352))

(assert (=> start!362616 e!2390350))

(assert (=> start!362616 e!2390358))

(assert (=> start!362616 e!2390334))

(declare-fun e!2390356 () Bool)

(assert (=> start!362616 e!2390356))

(declare-fun tp!1171973 () Bool)

(declare-fun e!2390340 () Bool)

(declare-fun b!3865617 () Bool)

(assert (=> b!3865617 (= e!2390337 (and tp!1171973 (inv!55183 (tag!7216 (rule!9234 (h!46446 prefixTokens!80)))) (inv!55187 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) e!2390340))))

(declare-fun b!3865618 () Bool)

(declare-fun e!2390341 () Bool)

(assert (=> b!3865618 (= e!2390341 (= (size!30845 (_1!23253 (v!39071 lt!1343918))) (size!30846 (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918))))))))

(assert (=> b!3865619 (= e!2390342 (and tp!1171975 tp!1171978))))

(declare-fun b!3865620 () Bool)

(declare-fun Unit!58724 () Unit!58719)

(assert (=> b!3865620 (= e!2390332 Unit!58724)))

(declare-fun b!3865621 () Bool)

(declare-fun res!1565497 () Bool)

(assert (=> b!3865621 (=> res!1565497 e!2390339)))

(assert (=> b!3865621 (= res!1565497 (not (= lt!1343919 (tuple2!40241 (++!10469 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026) (_1!23254 lt!1343915)) (_2!23254 lt!1343915)))))))

(declare-fun b!3865622 () Bool)

(declare-fun res!1565489 () Bool)

(assert (=> b!3865622 (=> (not res!1565489) (not e!2390360))))

(declare-fun rulesInvariant!5288 (LexerInterface!5945 List!41151) Bool)

(assert (=> b!3865622 (= res!1565489 (rulesInvariant!5288 thiss!20629 rules!2768))))

(declare-fun b!3865623 () Bool)

(declare-fun e!2390338 () Bool)

(assert (=> b!3865623 (= e!2390338 (not e!2390339))))

(declare-fun res!1565493 () Bool)

(assert (=> b!3865623 (=> res!1565493 e!2390339)))

(declare-fun lt!1343942 () List!41149)

(assert (=> b!3865623 (= res!1565493 (not (= lt!1343942 lt!1343914)))))

(assert (=> b!3865623 (= lt!1343915 (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun lt!1343916 () List!41149)

(assert (=> b!3865623 (and (= (size!30845 (_1!23253 (v!39071 lt!1343918))) lt!1343930) (= (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918))) lt!1343923) (= (v!39071 lt!1343918) (tuple2!40239 (Token!11851 lt!1343917 (rule!9234 (_1!23253 (v!39071 lt!1343918))) lt!1343930 lt!1343923) lt!1343916)))))

(assert (=> b!3865623 (= lt!1343930 (size!30846 lt!1343923))))

(assert (=> b!3865623 e!2390341))

(declare-fun res!1565486 () Bool)

(assert (=> b!3865623 (=> (not res!1565486) (not e!2390341))))

(assert (=> b!3865623 (= res!1565486 (= (value!201780 (_1!23253 (v!39071 lt!1343918))) lt!1343917))))

(declare-fun apply!9599 (TokenValueInjection!12600 BalanceConc!24728) TokenValue!6586)

(declare-fun seqFromList!4627 (List!41149) BalanceConc!24728)

(assert (=> b!3865623 (= lt!1343917 (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (seqFromList!4627 lt!1343923)))))

(assert (=> b!3865623 (= (_2!23253 (v!39071 lt!1343918)) lt!1343916)))

(declare-fun lt!1343938 () Unit!58719)

(assert (=> b!3865623 (= lt!1343938 (lemmaSamePrefixThenSameSuffix!1676 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 lt!1343916 lt!1343914))))

(declare-fun getSuffix!1910 (List!41149 List!41149) List!41149)

(assert (=> b!3865623 (= lt!1343916 (getSuffix!1910 lt!1343914 lt!1343923))))

(assert (=> b!3865623 (isPrefix!3455 lt!1343923 lt!1343942)))

(assert (=> b!3865623 (= lt!1343942 (++!10470 lt!1343923 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun lt!1343940 () Unit!58719)

(assert (=> b!3865623 (= lt!1343940 (lemmaConcatTwoListThenFirstIsPrefix!2318 lt!1343923 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun list!15266 (BalanceConc!24728) List!41149)

(declare-fun charsOf!4184 (Token!11850) BalanceConc!24728)

(assert (=> b!3865623 (= lt!1343923 (list!15266 (charsOf!4184 (_1!23253 (v!39071 lt!1343918)))))))

(declare-fun ruleValid!2308 (LexerInterface!5945 Rule!12512) Bool)

(assert (=> b!3865623 (ruleValid!2308 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))))))

(declare-fun lt!1343943 () Unit!58719)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1388 (LexerInterface!5945 Rule!12512 List!41151) Unit!58719)

(assert (=> b!3865623 (= lt!1343943 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1388 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) rules!2768))))

(declare-fun lt!1343939 () Unit!58719)

(declare-fun lemmaCharactersSize!1017 (Token!11850) Unit!58719)

(assert (=> b!3865623 (= lt!1343939 (lemmaCharactersSize!1017 (_1!23253 (v!39071 lt!1343918))))))

(declare-fun b!3865624 () Bool)

(declare-fun tp!1171979 () Bool)

(declare-fun e!2390346 () Bool)

(assert (=> b!3865624 (= e!2390344 (and (inv!21 (value!201780 (h!46446 suffixTokens!72))) e!2390346 tp!1171979))))

(declare-fun b!3865625 () Bool)

(assert (=> b!3865625 (= e!2390361 e!2390338)))

(declare-fun res!1565491 () Bool)

(assert (=> b!3865625 (=> (not res!1565491) (not e!2390338))))

(assert (=> b!3865625 (= res!1565491 ((_ is Some!8773) lt!1343918))))

(declare-fun maxPrefix!3249 (LexerInterface!5945 List!41151 List!41149) Option!8774)

(assert (=> b!3865625 (= lt!1343918 (maxPrefix!3249 thiss!20629 rules!2768 lt!1343914))))

(declare-fun b!3865626 () Bool)

(declare-fun Unit!58725 () Unit!58719)

(assert (=> b!3865626 (= e!2390348 Unit!58725)))

(declare-fun lt!1343928 () Unit!58719)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!16 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41150 List!41149 List!41150) Unit!58719)

(assert (=> b!3865626 (= lt!1343928 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!16 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91 lt!1343920))))

(declare-fun res!1565496 () Bool)

(declare-fun call!282636 () tuple2!40240)

(assert (=> b!3865626 (= res!1565496 (not (= call!282636 (tuple2!40241 (++!10469 lt!1343920 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2390336 () Bool)

(assert (=> b!3865626 (=> (not res!1565496) (not e!2390336))))

(assert (=> b!3865626 e!2390336))

(declare-fun b!3865627 () Bool)

(declare-fun Unit!58726 () Unit!58719)

(assert (=> b!3865627 (= e!2390348 Unit!58726)))

(declare-fun lt!1343934 () Unit!58719)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!440 (List!41149 List!41149 List!41149 List!41149) Unit!58719)

(assert (=> b!3865627 (= lt!1343934 (lemmaConcatSameAndSameSizesThenSameLists!440 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 (_2!23253 lt!1343933)))))

(assert (=> b!3865627 (= (_2!23253 (v!39071 lt!1343918)) (_2!23253 lt!1343933))))

(declare-fun lt!1343941 () Unit!58719)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!16 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41150 List!41149) Unit!58719)

(assert (=> b!3865627 (= lt!1343941 (lemmaLexWithSmallerInputCannotProduceSameResults!16 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91))))

(declare-fun res!1565490 () Bool)

(assert (=> b!3865627 (= res!1565490 (not (= call!282636 lt!1343935)))))

(assert (=> b!3865627 (=> (not res!1565490) (not e!2390333))))

(assert (=> b!3865627 e!2390333))

(assert (=> b!3865628 (= e!2390340 (and tp!1171971 tp!1171976))))

(declare-fun bm!282631 () Bool)

(assert (=> bm!282631 (= call!282636 (lexList!1713 thiss!20629 rules!2768 (_2!23253 lt!1343933)))))

(declare-fun b!3865629 () Bool)

(declare-fun Unit!58727 () Unit!58719)

(assert (=> b!3865629 (= e!2390362 Unit!58727)))

(declare-fun b!3865630 () Bool)

(assert (=> b!3865630 (= e!2390336 false)))

(declare-fun b!3865631 () Bool)

(declare-fun tp!1171985 () Bool)

(assert (=> b!3865631 (= e!2390356 (and tp_is_empty!19493 tp!1171985))))

(declare-fun b!3865632 () Bool)

(declare-fun tp!1171972 () Bool)

(assert (=> b!3865632 (= e!2390346 (and tp!1171972 (inv!55183 (tag!7216 (rule!9234 (h!46446 suffixTokens!72)))) (inv!55187 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) e!2390349))))

(assert (= (and start!362616 res!1565492) b!3865608))

(assert (= (and b!3865608 res!1565494) b!3865622))

(assert (= (and b!3865622 res!1565489) b!3865614))

(assert (= (and b!3865614 res!1565488) b!3865600))

(assert (= (and b!3865600 res!1565495) b!3865605))

(assert (= (and b!3865605 res!1565485) b!3865606))

(assert (= (and b!3865606 res!1565487) b!3865625))

(assert (= (and b!3865625 res!1565491) b!3865623))

(assert (= (and b!3865623 res!1565486) b!3865618))

(assert (= (and b!3865623 (not res!1565493)) b!3865621))

(assert (= (and b!3865621 (not res!1565497)) b!3865607))

(assert (= (and b!3865607 (not res!1565498)) b!3865611))

(assert (= (and b!3865611 c!672821) b!3865615))

(assert (= (and b!3865611 (not c!672821)) b!3865620))

(assert (= (and b!3865615 c!672819) b!3865612))

(assert (= (and b!3865615 (not c!672819)) b!3865601))

(assert (= (and b!3865612 c!672820) b!3865627))

(assert (= (and b!3865612 (not c!672820)) b!3865626))

(assert (= (and b!3865627 res!1565490) b!3865602))

(assert (= (and b!3865626 res!1565496) b!3865630))

(assert (= (or b!3865627 b!3865626) bm!282631))

(assert (= (and b!3865611 c!672818) b!3865599))

(assert (= (and b!3865611 (not c!672818)) b!3865629))

(assert (= (and start!362616 ((_ is Cons!41025) suffixResult!91)) b!3865610))

(assert (= (and start!362616 ((_ is Cons!41025) suffix!1176)) b!3865598))

(assert (= b!3865609 b!3865619))

(assert (= b!3865616 b!3865609))

(assert (= (and start!362616 ((_ is Cons!41027) rules!2768)) b!3865616))

(assert (= b!3865617 b!3865628))

(assert (= b!3865613 b!3865617))

(assert (= b!3865603 b!3865613))

(assert (= (and start!362616 ((_ is Cons!41026) prefixTokens!80)) b!3865603))

(assert (= b!3865632 b!3865604))

(assert (= b!3865624 b!3865632))

(assert (= b!3865597 b!3865624))

(assert (= (and start!362616 ((_ is Cons!41026) suffixTokens!72)) b!3865597))

(assert (= (and start!362616 ((_ is Cons!41025) prefix!426)) b!3865631))

(declare-fun m!4421059 () Bool)

(assert (=> b!3865597 m!4421059))

(declare-fun m!4421061 () Bool)

(assert (=> b!3865599 m!4421061))

(declare-fun m!4421063 () Bool)

(assert (=> b!3865599 m!4421063))

(declare-fun m!4421065 () Bool)

(assert (=> b!3865599 m!4421065))

(declare-fun m!4421067 () Bool)

(assert (=> b!3865599 m!4421067))

(declare-fun m!4421069 () Bool)

(assert (=> b!3865612 m!4421069))

(declare-fun m!4421071 () Bool)

(assert (=> b!3865612 m!4421071))

(declare-fun m!4421073 () Bool)

(assert (=> b!3865614 m!4421073))

(declare-fun m!4421075 () Bool)

(assert (=> b!3865603 m!4421075))

(declare-fun m!4421077 () Bool)

(assert (=> b!3865615 m!4421077))

(declare-fun m!4421079 () Bool)

(assert (=> b!3865615 m!4421079))

(declare-fun m!4421081 () Bool)

(assert (=> b!3865615 m!4421081))

(declare-fun m!4421083 () Bool)

(assert (=> b!3865615 m!4421083))

(declare-fun m!4421085 () Bool)

(assert (=> b!3865615 m!4421085))

(declare-fun m!4421087 () Bool)

(assert (=> b!3865626 m!4421087))

(declare-fun m!4421089 () Bool)

(assert (=> b!3865626 m!4421089))

(declare-fun m!4421091 () Bool)

(assert (=> b!3865608 m!4421091))

(declare-fun m!4421093 () Bool)

(assert (=> b!3865611 m!4421093))

(declare-fun m!4421095 () Bool)

(assert (=> b!3865611 m!4421095))

(declare-fun m!4421097 () Bool)

(assert (=> b!3865606 m!4421097))

(declare-fun m!4421099 () Bool)

(assert (=> b!3865625 m!4421099))

(declare-fun m!4421101 () Bool)

(assert (=> bm!282631 m!4421101))

(declare-fun m!4421103 () Bool)

(assert (=> b!3865613 m!4421103))

(declare-fun m!4421105 () Bool)

(assert (=> b!3865627 m!4421105))

(declare-fun m!4421107 () Bool)

(assert (=> b!3865627 m!4421107))

(declare-fun m!4421109 () Bool)

(assert (=> b!3865622 m!4421109))

(declare-fun m!4421111 () Bool)

(assert (=> b!3865609 m!4421111))

(declare-fun m!4421113 () Bool)

(assert (=> b!3865609 m!4421113))

(declare-fun m!4421115 () Bool)

(assert (=> b!3865621 m!4421115))

(declare-fun m!4421117 () Bool)

(assert (=> b!3865624 m!4421117))

(declare-fun m!4421119 () Bool)

(assert (=> b!3865623 m!4421119))

(declare-fun m!4421121 () Bool)

(assert (=> b!3865623 m!4421121))

(declare-fun m!4421123 () Bool)

(assert (=> b!3865623 m!4421123))

(declare-fun m!4421125 () Bool)

(assert (=> b!3865623 m!4421125))

(declare-fun m!4421127 () Bool)

(assert (=> b!3865623 m!4421127))

(declare-fun m!4421129 () Bool)

(assert (=> b!3865623 m!4421129))

(declare-fun m!4421131 () Bool)

(assert (=> b!3865623 m!4421131))

(declare-fun m!4421133 () Bool)

(assert (=> b!3865623 m!4421133))

(declare-fun m!4421135 () Bool)

(assert (=> b!3865623 m!4421135))

(declare-fun m!4421137 () Bool)

(assert (=> b!3865623 m!4421137))

(declare-fun m!4421139 () Bool)

(assert (=> b!3865623 m!4421139))

(assert (=> b!3865623 m!4421131))

(declare-fun m!4421141 () Bool)

(assert (=> b!3865623 m!4421141))

(declare-fun m!4421143 () Bool)

(assert (=> b!3865623 m!4421143))

(assert (=> b!3865623 m!4421137))

(declare-fun m!4421145 () Bool)

(assert (=> b!3865623 m!4421145))

(declare-fun m!4421147 () Bool)

(assert (=> b!3865618 m!4421147))

(declare-fun m!4421149 () Bool)

(assert (=> b!3865600 m!4421149))

(declare-fun m!4421151 () Bool)

(assert (=> b!3865632 m!4421151))

(declare-fun m!4421153 () Bool)

(assert (=> b!3865632 m!4421153))

(declare-fun m!4421155 () Bool)

(assert (=> b!3865617 m!4421155))

(declare-fun m!4421157 () Bool)

(assert (=> b!3865617 m!4421157))

(declare-fun m!4421159 () Bool)

(assert (=> b!3865605 m!4421159))

(declare-fun m!4421161 () Bool)

(assert (=> b!3865605 m!4421161))

(declare-fun m!4421163 () Bool)

(assert (=> b!3865605 m!4421163))

(check-sat (not b!3865625) (not b!3865621) (not b!3865622) (not b!3865608) (not b_next!104855) (not b!3865614) (not b_next!104863) (not b!3865627) (not b!3865632) (not b!3865616) (not b!3865611) (not b!3865631) (not b_next!104861) (not b!3865600) (not bm!282631) (not b!3865603) (not b_next!104853) (not b!3865623) (not b!3865597) b_and!289563 (not b!3865610) (not b!3865598) b_and!289569 (not b!3865624) b_and!289567 b_and!289573 (not b!3865613) (not b!3865605) b_and!289565 (not b!3865612) (not b!3865615) (not b!3865609) (not b!3865618) (not b!3865626) tp_is_empty!19493 (not b_next!104857) (not b_next!104859) b_and!289571 (not b!3865617) (not b!3865606) (not b!3865599))
(check-sat (not b_next!104861) (not b_next!104855) (not b_next!104853) b_and!289563 (not b_next!104863) b_and!289569 b_and!289565 (not b_next!104857) b_and!289567 b_and!289573 (not b_next!104859) b_and!289571)
(get-model)

(declare-fun d!1145271 () Bool)

(declare-fun lt!1343963 () Int)

(assert (=> d!1145271 (>= lt!1343963 0)))

(declare-fun e!2390388 () Int)

(assert (=> d!1145271 (= lt!1343963 e!2390388)))

(declare-fun c!672840 () Bool)

(assert (=> d!1145271 (= c!672840 ((_ is Nil!41025) suffix!1176))))

(assert (=> d!1145271 (= (size!30846 suffix!1176) lt!1343963)))

(declare-fun b!3865677 () Bool)

(assert (=> b!3865677 (= e!2390388 0)))

(declare-fun b!3865678 () Bool)

(assert (=> b!3865678 (= e!2390388 (+ 1 (size!30846 (t!313928 suffix!1176))))))

(assert (= (and d!1145271 c!672840) b!3865677))

(assert (= (and d!1145271 (not c!672840)) b!3865678))

(declare-fun m!4421199 () Bool)

(assert (=> b!3865678 m!4421199))

(assert (=> b!3865611 d!1145271))

(declare-fun d!1145273 () Bool)

(declare-fun lt!1343964 () Int)

(assert (=> d!1145273 (>= lt!1343964 0)))

(declare-fun e!2390389 () Int)

(assert (=> d!1145273 (= lt!1343964 e!2390389)))

(declare-fun c!672841 () Bool)

(assert (=> d!1145273 (= c!672841 ((_ is Nil!41025) (_2!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145273 (= (size!30846 (_2!23253 (v!39071 lt!1343918))) lt!1343964)))

(declare-fun b!3865679 () Bool)

(assert (=> b!3865679 (= e!2390389 0)))

(declare-fun b!3865680 () Bool)

(assert (=> b!3865680 (= e!2390389 (+ 1 (size!30846 (t!313928 (_2!23253 (v!39071 lt!1343918))))))))

(assert (= (and d!1145273 c!672841) b!3865679))

(assert (= (and d!1145273 (not c!672841)) b!3865680))

(declare-fun m!4421201 () Bool)

(assert (=> b!3865680 m!4421201))

(assert (=> b!3865611 d!1145273))

(declare-fun d!1145275 () Bool)

(assert (=> d!1145275 (= (inv!55183 (tag!7216 (h!46447 rules!2768))) (= (mod (str.len (value!201779 (tag!7216 (h!46447 rules!2768)))) 2) 0))))

(assert (=> b!3865609 d!1145275))

(declare-fun d!1145277 () Bool)

(declare-fun res!1565520 () Bool)

(declare-fun e!2390392 () Bool)

(assert (=> d!1145277 (=> (not res!1565520) (not e!2390392))))

(declare-fun semiInverseModEq!2727 (Int Int) Bool)

(assert (=> d!1145277 (= res!1565520 (semiInverseModEq!2727 (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toValue!8784 (transformation!6356 (h!46447 rules!2768)))))))

(assert (=> d!1145277 (= (inv!55187 (transformation!6356 (h!46447 rules!2768))) e!2390392)))

(declare-fun b!3865683 () Bool)

(declare-fun equivClasses!2626 (Int Int) Bool)

(assert (=> b!3865683 (= e!2390392 (equivClasses!2626 (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toValue!8784 (transformation!6356 (h!46447 rules!2768)))))))

(assert (= (and d!1145277 res!1565520) b!3865683))

(declare-fun m!4421203 () Bool)

(assert (=> d!1145277 m!4421203))

(declare-fun m!4421205 () Bool)

(assert (=> b!3865683 m!4421205))

(assert (=> b!3865609 d!1145277))

(declare-fun d!1145279 () Bool)

(assert (=> d!1145279 (= (isEmpty!24321 rules!2768) ((_ is Nil!41027) rules!2768))))

(assert (=> b!3865608 d!1145279))

(declare-fun b!3865753 () Bool)

(declare-fun e!2390430 () tuple2!40240)

(assert (=> b!3865753 (= e!2390430 (tuple2!40241 Nil!41026 (_2!23253 lt!1343933)))))

(declare-fun b!3865754 () Bool)

(declare-fun lt!1344009 () Option!8774)

(declare-fun lt!1344008 () tuple2!40240)

(assert (=> b!3865754 (= e!2390430 (tuple2!40241 (Cons!41026 (_1!23253 (v!39071 lt!1344009)) (_1!23254 lt!1344008)) (_2!23254 lt!1344008)))))

(assert (=> b!3865754 (= lt!1344008 (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1344009))))))

(declare-fun b!3865755 () Bool)

(declare-fun e!2390432 () Bool)

(declare-fun lt!1344007 () tuple2!40240)

(assert (=> b!3865755 (= e!2390432 (not (isEmpty!24322 (_1!23254 lt!1344007))))))

(declare-fun b!3865757 () Bool)

(declare-fun e!2390431 () Bool)

(assert (=> b!3865757 (= e!2390431 (= (_2!23254 lt!1344007) (_2!23253 lt!1343933)))))

(declare-fun b!3865756 () Bool)

(assert (=> b!3865756 (= e!2390431 e!2390432)))

(declare-fun res!1565567 () Bool)

(assert (=> b!3865756 (= res!1565567 (< (size!30846 (_2!23254 lt!1344007)) (size!30846 (_2!23253 lt!1343933))))))

(assert (=> b!3865756 (=> (not res!1565567) (not e!2390432))))

(declare-fun d!1145281 () Bool)

(assert (=> d!1145281 e!2390431))

(declare-fun c!672851 () Bool)

(declare-fun size!30848 (List!41150) Int)

(assert (=> d!1145281 (= c!672851 (> (size!30848 (_1!23254 lt!1344007)) 0))))

(assert (=> d!1145281 (= lt!1344007 e!2390430)))

(declare-fun c!672852 () Bool)

(assert (=> d!1145281 (= c!672852 ((_ is Some!8773) lt!1344009))))

(assert (=> d!1145281 (= lt!1344009 (maxPrefix!3249 thiss!20629 rules!2768 (_2!23253 lt!1343933)))))

(assert (=> d!1145281 (= (lexList!1713 thiss!20629 rules!2768 (_2!23253 lt!1343933)) lt!1344007)))

(assert (= (and d!1145281 c!672852) b!3865754))

(assert (= (and d!1145281 (not c!672852)) b!3865753))

(assert (= (and d!1145281 c!672851) b!3865756))

(assert (= (and d!1145281 (not c!672851)) b!3865757))

(assert (= (and b!3865756 res!1565567) b!3865755))

(declare-fun m!4421309 () Bool)

(assert (=> b!3865754 m!4421309))

(declare-fun m!4421311 () Bool)

(assert (=> b!3865755 m!4421311))

(declare-fun m!4421313 () Bool)

(assert (=> b!3865756 m!4421313))

(assert (=> b!3865756 m!4421079))

(declare-fun m!4421315 () Bool)

(assert (=> d!1145281 m!4421315))

(declare-fun m!4421317 () Bool)

(assert (=> d!1145281 m!4421317))

(assert (=> bm!282631 d!1145281))

(declare-fun b!3865762 () Bool)

(declare-fun e!2390435 () tuple2!40240)

(assert (=> b!3865762 (= e!2390435 (tuple2!40241 Nil!41026 suffix!1176))))

(declare-fun b!3865763 () Bool)

(declare-fun lt!1344013 () Option!8774)

(declare-fun lt!1344012 () tuple2!40240)

(assert (=> b!3865763 (= e!2390435 (tuple2!40241 (Cons!41026 (_1!23253 (v!39071 lt!1344013)) (_1!23254 lt!1344012)) (_2!23254 lt!1344012)))))

(assert (=> b!3865763 (= lt!1344012 (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1344013))))))

(declare-fun b!3865764 () Bool)

(declare-fun e!2390437 () Bool)

(declare-fun lt!1344011 () tuple2!40240)

(assert (=> b!3865764 (= e!2390437 (not (isEmpty!24322 (_1!23254 lt!1344011))))))

(declare-fun b!3865766 () Bool)

(declare-fun e!2390436 () Bool)

(assert (=> b!3865766 (= e!2390436 (= (_2!23254 lt!1344011) suffix!1176))))

(declare-fun b!3865765 () Bool)

(assert (=> b!3865765 (= e!2390436 e!2390437)))

(declare-fun res!1565570 () Bool)

(assert (=> b!3865765 (= res!1565570 (< (size!30846 (_2!23254 lt!1344011)) (size!30846 suffix!1176)))))

(assert (=> b!3865765 (=> (not res!1565570) (not e!2390437))))

(declare-fun d!1145319 () Bool)

(assert (=> d!1145319 e!2390436))

(declare-fun c!672854 () Bool)

(assert (=> d!1145319 (= c!672854 (> (size!30848 (_1!23254 lt!1344011)) 0))))

(assert (=> d!1145319 (= lt!1344011 e!2390435)))

(declare-fun c!672855 () Bool)

(assert (=> d!1145319 (= c!672855 ((_ is Some!8773) lt!1344013))))

(assert (=> d!1145319 (= lt!1344013 (maxPrefix!3249 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1145319 (= (lexList!1713 thiss!20629 rules!2768 suffix!1176) lt!1344011)))

(assert (= (and d!1145319 c!672855) b!3865763))

(assert (= (and d!1145319 (not c!672855)) b!3865762))

(assert (= (and d!1145319 c!672854) b!3865765))

(assert (= (and d!1145319 (not c!672854)) b!3865766))

(assert (= (and b!3865765 res!1565570) b!3865764))

(declare-fun m!4421319 () Bool)

(assert (=> b!3865763 m!4421319))

(declare-fun m!4421321 () Bool)

(assert (=> b!3865764 m!4421321))

(declare-fun m!4421323 () Bool)

(assert (=> b!3865765 m!4421323))

(assert (=> b!3865765 m!4421093))

(declare-fun m!4421325 () Bool)

(assert (=> d!1145319 m!4421325))

(declare-fun m!4421327 () Bool)

(assert (=> d!1145319 m!4421327))

(assert (=> b!3865606 d!1145319))

(declare-fun d!1145321 () Bool)

(assert (=> d!1145321 (and (= lt!1343923 lt!1343923) (= (_2!23253 (v!39071 lt!1343918)) (_2!23253 lt!1343933)))))

(declare-fun lt!1344020 () Unit!58719)

(declare-fun choose!22792 (List!41149 List!41149 List!41149 List!41149) Unit!58719)

(assert (=> d!1145321 (= lt!1344020 (choose!22792 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 (_2!23253 lt!1343933)))))

(assert (=> d!1145321 (= (++!10470 lt!1343923 (_2!23253 (v!39071 lt!1343918))) (++!10470 lt!1343923 (_2!23253 lt!1343933)))))

(assert (=> d!1145321 (= (lemmaConcatSameAndSameSizesThenSameLists!440 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 (_2!23253 lt!1343933)) lt!1344020)))

(declare-fun bs!583286 () Bool)

(assert (= bs!583286 d!1145321))

(declare-fun m!4421351 () Bool)

(assert (=> bs!583286 m!4421351))

(assert (=> bs!583286 m!4421119))

(declare-fun m!4421353 () Bool)

(assert (=> bs!583286 m!4421353))

(assert (=> b!3865627 d!1145321))

(declare-fun d!1145333 () Bool)

(assert (=> d!1145333 (not (= (lexList!1713 thiss!20629 rules!2768 (_2!23253 lt!1343933)) (tuple2!40241 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1344043 () Unit!58719)

(declare-fun choose!22793 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41150 List!41149) Unit!58719)

(assert (=> d!1145333 (= lt!1344043 (choose!22793 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91))))

(assert (=> d!1145333 (not (isEmpty!24321 rules!2768))))

(assert (=> d!1145333 (= (lemmaLexWithSmallerInputCannotProduceSameResults!16 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91) lt!1344043)))

(declare-fun bs!583294 () Bool)

(assert (= bs!583294 d!1145333))

(assert (=> bs!583294 m!4421101))

(declare-fun m!4421451 () Bool)

(assert (=> bs!583294 m!4421451))

(assert (=> bs!583294 m!4421091))

(assert (=> b!3865627 d!1145333))

(declare-fun d!1145371 () Bool)

(assert (=> d!1145371 (not (= (lexList!1713 thiss!20629 rules!2768 (_2!23253 lt!1343933)) (tuple2!40241 (++!10469 lt!1343920 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1344051 () Unit!58719)

(declare-fun choose!22794 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41150 List!41149 List!41150) Unit!58719)

(assert (=> d!1145371 (= lt!1344051 (choose!22794 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91 lt!1343920))))

(assert (=> d!1145371 (not (isEmpty!24321 rules!2768))))

(assert (=> d!1145371 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!16 thiss!20629 rules!2768 suffix!1176 (_2!23253 lt!1343933) suffixTokens!72 suffixResult!91 lt!1343920) lt!1344051)))

(declare-fun bs!583296 () Bool)

(assert (= bs!583296 d!1145371))

(assert (=> bs!583296 m!4421101))

(assert (=> bs!583296 m!4421089))

(declare-fun m!4421459 () Bool)

(assert (=> bs!583296 m!4421459))

(assert (=> bs!583296 m!4421091))

(assert (=> b!3865626 d!1145371))

(declare-fun d!1145379 () Bool)

(declare-fun e!2390487 () Bool)

(assert (=> d!1145379 e!2390487))

(declare-fun res!1565603 () Bool)

(assert (=> d!1145379 (=> (not res!1565603) (not e!2390487))))

(declare-fun lt!1344054 () List!41150)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6124 (List!41150) (InoxSet Token!11850))

(assert (=> d!1145379 (= res!1565603 (= (content!6124 lt!1344054) ((_ map or) (content!6124 lt!1343920) (content!6124 suffixTokens!72))))))

(declare-fun e!2390486 () List!41150)

(assert (=> d!1145379 (= lt!1344054 e!2390486)))

(declare-fun c!672879 () Bool)

(assert (=> d!1145379 (= c!672879 ((_ is Nil!41026) lt!1343920))))

(assert (=> d!1145379 (= (++!10469 lt!1343920 suffixTokens!72) lt!1344054)))

(declare-fun b!3865852 () Bool)

(assert (=> b!3865852 (= e!2390487 (or (not (= suffixTokens!72 Nil!41026)) (= lt!1344054 lt!1343920)))))

(declare-fun b!3865849 () Bool)

(assert (=> b!3865849 (= e!2390486 suffixTokens!72)))

(declare-fun b!3865851 () Bool)

(declare-fun res!1565604 () Bool)

(assert (=> b!3865851 (=> (not res!1565604) (not e!2390487))))

(assert (=> b!3865851 (= res!1565604 (= (size!30848 lt!1344054) (+ (size!30848 lt!1343920) (size!30848 suffixTokens!72))))))

(declare-fun b!3865850 () Bool)

(assert (=> b!3865850 (= e!2390486 (Cons!41026 (h!46446 lt!1343920) (++!10469 (t!313929 lt!1343920) suffixTokens!72)))))

(assert (= (and d!1145379 c!672879) b!3865849))

(assert (= (and d!1145379 (not c!672879)) b!3865850))

(assert (= (and d!1145379 res!1565603) b!3865851))

(assert (= (and b!3865851 res!1565604) b!3865852))

(declare-fun m!4421461 () Bool)

(assert (=> d!1145379 m!4421461))

(declare-fun m!4421463 () Bool)

(assert (=> d!1145379 m!4421463))

(declare-fun m!4421465 () Bool)

(assert (=> d!1145379 m!4421465))

(declare-fun m!4421467 () Bool)

(assert (=> b!3865851 m!4421467))

(declare-fun m!4421469 () Bool)

(assert (=> b!3865851 m!4421469))

(declare-fun m!4421471 () Bool)

(assert (=> b!3865851 m!4421471))

(declare-fun m!4421473 () Bool)

(assert (=> b!3865850 m!4421473))

(assert (=> b!3865626 d!1145379))

(declare-fun b!3865853 () Bool)

(declare-fun e!2390488 () tuple2!40240)

(assert (=> b!3865853 (= e!2390488 (tuple2!40241 Nil!41026 lt!1343914))))

(declare-fun b!3865854 () Bool)

(declare-fun lt!1344057 () Option!8774)

(declare-fun lt!1344056 () tuple2!40240)

(assert (=> b!3865854 (= e!2390488 (tuple2!40241 (Cons!41026 (_1!23253 (v!39071 lt!1344057)) (_1!23254 lt!1344056)) (_2!23254 lt!1344056)))))

(assert (=> b!3865854 (= lt!1344056 (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1344057))))))

(declare-fun b!3865855 () Bool)

(declare-fun e!2390490 () Bool)

(declare-fun lt!1344055 () tuple2!40240)

(assert (=> b!3865855 (= e!2390490 (not (isEmpty!24322 (_1!23254 lt!1344055))))))

(declare-fun b!3865857 () Bool)

(declare-fun e!2390489 () Bool)

(assert (=> b!3865857 (= e!2390489 (= (_2!23254 lt!1344055) lt!1343914))))

(declare-fun b!3865856 () Bool)

(assert (=> b!3865856 (= e!2390489 e!2390490)))

(declare-fun res!1565605 () Bool)

(assert (=> b!3865856 (= res!1565605 (< (size!30846 (_2!23254 lt!1344055)) (size!30846 lt!1343914)))))

(assert (=> b!3865856 (=> (not res!1565605) (not e!2390490))))

(declare-fun d!1145381 () Bool)

(assert (=> d!1145381 e!2390489))

(declare-fun c!672880 () Bool)

(assert (=> d!1145381 (= c!672880 (> (size!30848 (_1!23254 lt!1344055)) 0))))

(assert (=> d!1145381 (= lt!1344055 e!2390488)))

(declare-fun c!672881 () Bool)

(assert (=> d!1145381 (= c!672881 ((_ is Some!8773) lt!1344057))))

(assert (=> d!1145381 (= lt!1344057 (maxPrefix!3249 thiss!20629 rules!2768 lt!1343914))))

(assert (=> d!1145381 (= (lexList!1713 thiss!20629 rules!2768 lt!1343914) lt!1344055)))

(assert (= (and d!1145381 c!672881) b!3865854))

(assert (= (and d!1145381 (not c!672881)) b!3865853))

(assert (= (and d!1145381 c!672880) b!3865856))

(assert (= (and d!1145381 (not c!672880)) b!3865857))

(assert (= (and b!3865856 res!1565605) b!3865855))

(declare-fun m!4421475 () Bool)

(assert (=> b!3865854 m!4421475))

(declare-fun m!4421477 () Bool)

(assert (=> b!3865855 m!4421477))

(declare-fun m!4421479 () Bool)

(assert (=> b!3865856 m!4421479))

(assert (=> b!3865856 m!4421085))

(declare-fun m!4421481 () Bool)

(assert (=> d!1145381 m!4421481))

(assert (=> d!1145381 m!4421099))

(assert (=> b!3865605 d!1145381))

(declare-fun d!1145383 () Bool)

(declare-fun e!2390492 () Bool)

(assert (=> d!1145383 e!2390492))

(declare-fun res!1565606 () Bool)

(assert (=> d!1145383 (=> (not res!1565606) (not e!2390492))))

(declare-fun lt!1344058 () List!41150)

(assert (=> d!1145383 (= res!1565606 (= (content!6124 lt!1344058) ((_ map or) (content!6124 prefixTokens!80) (content!6124 suffixTokens!72))))))

(declare-fun e!2390491 () List!41150)

(assert (=> d!1145383 (= lt!1344058 e!2390491)))

(declare-fun c!672882 () Bool)

(assert (=> d!1145383 (= c!672882 ((_ is Nil!41026) prefixTokens!80))))

(assert (=> d!1145383 (= (++!10469 prefixTokens!80 suffixTokens!72) lt!1344058)))

(declare-fun b!3865861 () Bool)

(assert (=> b!3865861 (= e!2390492 (or (not (= suffixTokens!72 Nil!41026)) (= lt!1344058 prefixTokens!80)))))

(declare-fun b!3865858 () Bool)

(assert (=> b!3865858 (= e!2390491 suffixTokens!72)))

(declare-fun b!3865860 () Bool)

(declare-fun res!1565607 () Bool)

(assert (=> b!3865860 (=> (not res!1565607) (not e!2390492))))

(assert (=> b!3865860 (= res!1565607 (= (size!30848 lt!1344058) (+ (size!30848 prefixTokens!80) (size!30848 suffixTokens!72))))))

(declare-fun b!3865859 () Bool)

(assert (=> b!3865859 (= e!2390491 (Cons!41026 (h!46446 prefixTokens!80) (++!10469 (t!313929 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1145383 c!672882) b!3865858))

(assert (= (and d!1145383 (not c!672882)) b!3865859))

(assert (= (and d!1145383 res!1565606) b!3865860))

(assert (= (and b!3865860 res!1565607) b!3865861))

(declare-fun m!4421483 () Bool)

(assert (=> d!1145383 m!4421483))

(declare-fun m!4421485 () Bool)

(assert (=> d!1145383 m!4421485))

(assert (=> d!1145383 m!4421465))

(declare-fun m!4421487 () Bool)

(assert (=> b!3865860 m!4421487))

(declare-fun m!4421489 () Bool)

(assert (=> b!3865860 m!4421489))

(assert (=> b!3865860 m!4421471))

(declare-fun m!4421491 () Bool)

(assert (=> b!3865859 m!4421491))

(assert (=> b!3865605 d!1145383))

(declare-fun d!1145385 () Bool)

(declare-fun e!2390497 () Bool)

(assert (=> d!1145385 e!2390497))

(declare-fun res!1565612 () Bool)

(assert (=> d!1145385 (=> (not res!1565612) (not e!2390497))))

(declare-fun lt!1344061 () List!41149)

(declare-fun content!6125 (List!41149) (InoxSet C!22708))

(assert (=> d!1145385 (= res!1565612 (= (content!6125 lt!1344061) ((_ map or) (content!6125 prefix!426) (content!6125 suffix!1176))))))

(declare-fun e!2390498 () List!41149)

(assert (=> d!1145385 (= lt!1344061 e!2390498)))

(declare-fun c!672885 () Bool)

(assert (=> d!1145385 (= c!672885 ((_ is Nil!41025) prefix!426))))

(assert (=> d!1145385 (= (++!10470 prefix!426 suffix!1176) lt!1344061)))

(declare-fun b!3865872 () Bool)

(declare-fun res!1565613 () Bool)

(assert (=> b!3865872 (=> (not res!1565613) (not e!2390497))))

(assert (=> b!3865872 (= res!1565613 (= (size!30846 lt!1344061) (+ (size!30846 prefix!426) (size!30846 suffix!1176))))))

(declare-fun b!3865870 () Bool)

(assert (=> b!3865870 (= e!2390498 suffix!1176)))

(declare-fun b!3865871 () Bool)

(assert (=> b!3865871 (= e!2390498 (Cons!41025 (h!46445 prefix!426) (++!10470 (t!313928 prefix!426) suffix!1176)))))

(declare-fun b!3865873 () Bool)

(assert (=> b!3865873 (= e!2390497 (or (not (= suffix!1176 Nil!41025)) (= lt!1344061 prefix!426)))))

(assert (= (and d!1145385 c!672885) b!3865870))

(assert (= (and d!1145385 (not c!672885)) b!3865871))

(assert (= (and d!1145385 res!1565612) b!3865872))

(assert (= (and b!3865872 res!1565613) b!3865873))

(declare-fun m!4421493 () Bool)

(assert (=> d!1145385 m!4421493))

(declare-fun m!4421495 () Bool)

(assert (=> d!1145385 m!4421495))

(declare-fun m!4421497 () Bool)

(assert (=> d!1145385 m!4421497))

(declare-fun m!4421499 () Bool)

(assert (=> b!3865872 m!4421499))

(declare-fun m!4421501 () Bool)

(assert (=> b!3865872 m!4421501))

(assert (=> b!3865872 m!4421093))

(declare-fun m!4421503 () Bool)

(assert (=> b!3865871 m!4421503))

(assert (=> b!3865605 d!1145385))

(declare-fun b!3865984 () Bool)

(declare-fun e!2390569 () Bool)

(declare-fun lt!1344090 () Option!8774)

(declare-fun contains!8279 (List!41151 Rule!12512) Bool)

(assert (=> b!3865984 (= e!2390569 (contains!8279 rules!2768 (rule!9234 (_1!23253 (get!13574 lt!1344090)))))))

(declare-fun d!1145387 () Bool)

(declare-fun e!2390570 () Bool)

(assert (=> d!1145387 e!2390570))

(declare-fun res!1565655 () Bool)

(assert (=> d!1145387 (=> res!1565655 e!2390570)))

(declare-fun isEmpty!24324 (Option!8774) Bool)

(assert (=> d!1145387 (= res!1565655 (isEmpty!24324 lt!1344090))))

(declare-fun e!2390568 () Option!8774)

(assert (=> d!1145387 (= lt!1344090 e!2390568)))

(declare-fun c!672893 () Bool)

(assert (=> d!1145387 (= c!672893 (and ((_ is Cons!41027) rules!2768) ((_ is Nil!41027) (t!313930 rules!2768))))))

(declare-fun lt!1344092 () Unit!58719)

(declare-fun lt!1344093 () Unit!58719)

(assert (=> d!1145387 (= lt!1344092 lt!1344093)))

(assert (=> d!1145387 (isPrefix!3455 lt!1343914 lt!1343914)))

(declare-fun lemmaIsPrefixRefl!2198 (List!41149 List!41149) Unit!58719)

(assert (=> d!1145387 (= lt!1344093 (lemmaIsPrefixRefl!2198 lt!1343914 lt!1343914))))

(declare-fun rulesValidInductive!2272 (LexerInterface!5945 List!41151) Bool)

(assert (=> d!1145387 (rulesValidInductive!2272 thiss!20629 rules!2768)))

(assert (=> d!1145387 (= (maxPrefix!3249 thiss!20629 rules!2768 lt!1343914) lt!1344090)))

(declare-fun b!3865985 () Bool)

(declare-fun res!1565656 () Bool)

(assert (=> b!3865985 (=> (not res!1565656) (not e!2390569))))

(assert (=> b!3865985 (= res!1565656 (= (list!15266 (charsOf!4184 (_1!23253 (get!13574 lt!1344090)))) (originalCharacters!6956 (_1!23253 (get!13574 lt!1344090)))))))

(declare-fun b!3865986 () Bool)

(assert (=> b!3865986 (= e!2390570 e!2390569)))

(declare-fun res!1565652 () Bool)

(assert (=> b!3865986 (=> (not res!1565652) (not e!2390569))))

(declare-fun isDefined!6875 (Option!8774) Bool)

(assert (=> b!3865986 (= res!1565652 (isDefined!6875 lt!1344090))))

(declare-fun b!3865987 () Bool)

(declare-fun call!282642 () Option!8774)

(assert (=> b!3865987 (= e!2390568 call!282642)))

(declare-fun b!3865988 () Bool)

(declare-fun res!1565653 () Bool)

(assert (=> b!3865988 (=> (not res!1565653) (not e!2390569))))

(assert (=> b!3865988 (= res!1565653 (= (value!201780 (_1!23253 (get!13574 lt!1344090))) (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (get!13574 lt!1344090)))) (seqFromList!4627 (originalCharacters!6956 (_1!23253 (get!13574 lt!1344090)))))))))

(declare-fun b!3865989 () Bool)

(declare-fun res!1565651 () Bool)

(assert (=> b!3865989 (=> (not res!1565651) (not e!2390569))))

(declare-fun matchR!5404 (Regex!11261 List!41149) Bool)

(assert (=> b!3865989 (= res!1565651 (matchR!5404 (regex!6356 (rule!9234 (_1!23253 (get!13574 lt!1344090)))) (list!15266 (charsOf!4184 (_1!23253 (get!13574 lt!1344090))))))))

(declare-fun b!3865990 () Bool)

(declare-fun res!1565654 () Bool)

(assert (=> b!3865990 (=> (not res!1565654) (not e!2390569))))

(assert (=> b!3865990 (= res!1565654 (< (size!30846 (_2!23253 (get!13574 lt!1344090))) (size!30846 lt!1343914)))))

(declare-fun bm!282637 () Bool)

(assert (=> bm!282637 (= call!282642 (maxPrefixOneRule!2331 thiss!20629 (h!46447 rules!2768) lt!1343914))))

(declare-fun b!3865991 () Bool)

(declare-fun res!1565650 () Bool)

(assert (=> b!3865991 (=> (not res!1565650) (not e!2390569))))

(assert (=> b!3865991 (= res!1565650 (= (++!10470 (list!15266 (charsOf!4184 (_1!23253 (get!13574 lt!1344090)))) (_2!23253 (get!13574 lt!1344090))) lt!1343914))))

(declare-fun b!3865992 () Bool)

(declare-fun lt!1344091 () Option!8774)

(declare-fun lt!1344094 () Option!8774)

(assert (=> b!3865992 (= e!2390568 (ite (and ((_ is None!8773) lt!1344091) ((_ is None!8773) lt!1344094)) None!8773 (ite ((_ is None!8773) lt!1344094) lt!1344091 (ite ((_ is None!8773) lt!1344091) lt!1344094 (ite (>= (size!30845 (_1!23253 (v!39071 lt!1344091))) (size!30845 (_1!23253 (v!39071 lt!1344094)))) lt!1344091 lt!1344094)))))))

(assert (=> b!3865992 (= lt!1344091 call!282642)))

(assert (=> b!3865992 (= lt!1344094 (maxPrefix!3249 thiss!20629 (t!313930 rules!2768) lt!1343914))))

(assert (= (and d!1145387 c!672893) b!3865987))

(assert (= (and d!1145387 (not c!672893)) b!3865992))

(assert (= (or b!3865987 b!3865992) bm!282637))

(assert (= (and d!1145387 (not res!1565655)) b!3865986))

(assert (= (and b!3865986 res!1565652) b!3865985))

(assert (= (and b!3865985 res!1565656) b!3865990))

(assert (= (and b!3865990 res!1565654) b!3865991))

(assert (= (and b!3865991 res!1565650) b!3865988))

(assert (= (and b!3865988 res!1565653) b!3865989))

(assert (= (and b!3865989 res!1565651) b!3865984))

(declare-fun m!4421577 () Bool)

(assert (=> bm!282637 m!4421577))

(declare-fun m!4421579 () Bool)

(assert (=> b!3865991 m!4421579))

(declare-fun m!4421581 () Bool)

(assert (=> b!3865991 m!4421581))

(assert (=> b!3865991 m!4421581))

(declare-fun m!4421583 () Bool)

(assert (=> b!3865991 m!4421583))

(assert (=> b!3865991 m!4421583))

(declare-fun m!4421585 () Bool)

(assert (=> b!3865991 m!4421585))

(assert (=> b!3865988 m!4421579))

(declare-fun m!4421587 () Bool)

(assert (=> b!3865988 m!4421587))

(assert (=> b!3865988 m!4421587))

(declare-fun m!4421589 () Bool)

(assert (=> b!3865988 m!4421589))

(assert (=> b!3865989 m!4421579))

(assert (=> b!3865989 m!4421581))

(assert (=> b!3865989 m!4421581))

(assert (=> b!3865989 m!4421583))

(assert (=> b!3865989 m!4421583))

(declare-fun m!4421591 () Bool)

(assert (=> b!3865989 m!4421591))

(assert (=> b!3865990 m!4421579))

(declare-fun m!4421593 () Bool)

(assert (=> b!3865990 m!4421593))

(assert (=> b!3865990 m!4421085))

(declare-fun m!4421595 () Bool)

(assert (=> b!3865992 m!4421595))

(assert (=> b!3865984 m!4421579))

(declare-fun m!4421597 () Bool)

(assert (=> b!3865984 m!4421597))

(declare-fun m!4421599 () Bool)

(assert (=> d!1145387 m!4421599))

(declare-fun m!4421601 () Bool)

(assert (=> d!1145387 m!4421601))

(declare-fun m!4421603 () Bool)

(assert (=> d!1145387 m!4421603))

(declare-fun m!4421605 () Bool)

(assert (=> d!1145387 m!4421605))

(assert (=> b!3865985 m!4421579))

(assert (=> b!3865985 m!4421581))

(assert (=> b!3865985 m!4421581))

(assert (=> b!3865985 m!4421583))

(declare-fun m!4421607 () Bool)

(assert (=> b!3865986 m!4421607))

(assert (=> b!3865625 d!1145387))

(declare-fun b!3866004 () Bool)

(declare-fun e!2390578 () Bool)

(declare-fun inv!15 (TokenValue!6586) Bool)

(assert (=> b!3866004 (= e!2390578 (inv!15 (value!201780 (h!46446 suffixTokens!72))))))

(declare-fun b!3866005 () Bool)

(declare-fun res!1565659 () Bool)

(assert (=> b!3866005 (=> res!1565659 e!2390578)))

(assert (=> b!3866005 (= res!1565659 (not ((_ is IntegerValue!19760) (value!201780 (h!46446 suffixTokens!72)))))))

(declare-fun e!2390577 () Bool)

(assert (=> b!3866005 (= e!2390577 e!2390578)))

(declare-fun b!3866006 () Bool)

(declare-fun inv!17 (TokenValue!6586) Bool)

(assert (=> b!3866006 (= e!2390577 (inv!17 (value!201780 (h!46446 suffixTokens!72))))))

(declare-fun b!3866007 () Bool)

(declare-fun e!2390579 () Bool)

(assert (=> b!3866007 (= e!2390579 e!2390577)))

(declare-fun c!672899 () Bool)

(assert (=> b!3866007 (= c!672899 ((_ is IntegerValue!19759) (value!201780 (h!46446 suffixTokens!72))))))

(declare-fun d!1145393 () Bool)

(declare-fun c!672898 () Bool)

(assert (=> d!1145393 (= c!672898 ((_ is IntegerValue!19758) (value!201780 (h!46446 suffixTokens!72))))))

(assert (=> d!1145393 (= (inv!21 (value!201780 (h!46446 suffixTokens!72))) e!2390579)))

(declare-fun b!3866003 () Bool)

(declare-fun inv!16 (TokenValue!6586) Bool)

(assert (=> b!3866003 (= e!2390579 (inv!16 (value!201780 (h!46446 suffixTokens!72))))))

(assert (= (and d!1145393 c!672898) b!3866003))

(assert (= (and d!1145393 (not c!672898)) b!3866007))

(assert (= (and b!3866007 c!672899) b!3866006))

(assert (= (and b!3866007 (not c!672899)) b!3866005))

(assert (= (and b!3866005 (not res!1565659)) b!3866004))

(declare-fun m!4421609 () Bool)

(assert (=> b!3866004 m!4421609))

(declare-fun m!4421611 () Bool)

(assert (=> b!3866006 m!4421611))

(declare-fun m!4421613 () Bool)

(assert (=> b!3866003 m!4421613))

(assert (=> b!3865624 d!1145393))

(declare-fun d!1145395 () Bool)

(declare-fun res!1565664 () Bool)

(declare-fun e!2390582 () Bool)

(assert (=> d!1145395 (=> (not res!1565664) (not e!2390582))))

(assert (=> d!1145395 (= res!1565664 (not (isEmpty!24320 (originalCharacters!6956 (h!46446 prefixTokens!80)))))))

(assert (=> d!1145395 (= (inv!55186 (h!46446 prefixTokens!80)) e!2390582)))

(declare-fun b!3866012 () Bool)

(declare-fun res!1565665 () Bool)

(assert (=> b!3866012 (=> (not res!1565665) (not e!2390582))))

(declare-fun dynLambda!17677 (Int TokenValue!6586) BalanceConc!24728)

(assert (=> b!3866012 (= res!1565665 (= (originalCharacters!6956 (h!46446 prefixTokens!80)) (list!15266 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (value!201780 (h!46446 prefixTokens!80))))))))

(declare-fun b!3866013 () Bool)

(assert (=> b!3866013 (= e!2390582 (= (size!30845 (h!46446 prefixTokens!80)) (size!30846 (originalCharacters!6956 (h!46446 prefixTokens!80)))))))

(assert (= (and d!1145395 res!1565664) b!3866012))

(assert (= (and b!3866012 res!1565665) b!3866013))

(declare-fun b_lambda!112971 () Bool)

(assert (=> (not b_lambda!112971) (not b!3866012)))

(declare-fun t!313980 () Bool)

(declare-fun tb!224129 () Bool)

(assert (=> (and b!3865628 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!313980) tb!224129))

(declare-fun b!3866018 () Bool)

(declare-fun e!2390585 () Bool)

(declare-fun tp!1172058 () Bool)

(declare-fun inv!55190 (Conc!12567) Bool)

(assert (=> b!3866018 (= e!2390585 (and (inv!55190 (c!672823 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (value!201780 (h!46446 prefixTokens!80))))) tp!1172058))))

(declare-fun result!272974 () Bool)

(declare-fun inv!55191 (BalanceConc!24728) Bool)

(assert (=> tb!224129 (= result!272974 (and (inv!55191 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (value!201780 (h!46446 prefixTokens!80)))) e!2390585))))

(assert (= tb!224129 b!3866018))

(declare-fun m!4421615 () Bool)

(assert (=> b!3866018 m!4421615))

(declare-fun m!4421617 () Bool)

(assert (=> tb!224129 m!4421617))

(assert (=> b!3866012 t!313980))

(declare-fun b_and!289611 () Bool)

(assert (= b_and!289565 (and (=> t!313980 result!272974) b_and!289611)))

(declare-fun t!313982 () Bool)

(declare-fun tb!224131 () Bool)

(assert (=> (and b!3865604 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!313982) tb!224131))

(declare-fun result!272978 () Bool)

(assert (= result!272978 result!272974))

(assert (=> b!3866012 t!313982))

(declare-fun b_and!289613 () Bool)

(assert (= b_and!289569 (and (=> t!313982 result!272978) b_and!289613)))

(declare-fun tb!224133 () Bool)

(declare-fun t!313984 () Bool)

(assert (=> (and b!3865619 (= (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!313984) tb!224133))

(declare-fun result!272980 () Bool)

(assert (= result!272980 result!272974))

(assert (=> b!3866012 t!313984))

(declare-fun b_and!289615 () Bool)

(assert (= b_and!289573 (and (=> t!313984 result!272980) b_and!289615)))

(declare-fun m!4421619 () Bool)

(assert (=> d!1145395 m!4421619))

(declare-fun m!4421621 () Bool)

(assert (=> b!3866012 m!4421621))

(assert (=> b!3866012 m!4421621))

(declare-fun m!4421623 () Bool)

(assert (=> b!3866012 m!4421623))

(declare-fun m!4421625 () Bool)

(assert (=> b!3866013 m!4421625))

(assert (=> b!3865603 d!1145395))

(declare-fun d!1145397 () Bool)

(assert (=> d!1145397 (isPrefix!3455 lt!1343923 (++!10470 lt!1343923 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun lt!1344097 () Unit!58719)

(declare-fun choose!22798 (List!41149 List!41149) Unit!58719)

(assert (=> d!1145397 (= lt!1344097 (choose!22798 lt!1343923 (_2!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145397 (= (lemmaConcatTwoListThenFirstIsPrefix!2318 lt!1343923 (_2!23253 (v!39071 lt!1343918))) lt!1344097)))

(declare-fun bs!583297 () Bool)

(assert (= bs!583297 d!1145397))

(assert (=> bs!583297 m!4421119))

(assert (=> bs!583297 m!4421119))

(declare-fun m!4421627 () Bool)

(assert (=> bs!583297 m!4421627))

(declare-fun m!4421629 () Bool)

(assert (=> bs!583297 m!4421629))

(assert (=> b!3865623 d!1145397))

(declare-fun d!1145399 () Bool)

(declare-fun e!2390586 () Bool)

(assert (=> d!1145399 e!2390586))

(declare-fun res!1565666 () Bool)

(assert (=> d!1145399 (=> (not res!1565666) (not e!2390586))))

(declare-fun lt!1344098 () List!41149)

(assert (=> d!1145399 (= res!1565666 (= (content!6125 lt!1344098) ((_ map or) (content!6125 lt!1343923) (content!6125 (_2!23253 (v!39071 lt!1343918))))))))

(declare-fun e!2390587 () List!41149)

(assert (=> d!1145399 (= lt!1344098 e!2390587)))

(declare-fun c!672900 () Bool)

(assert (=> d!1145399 (= c!672900 ((_ is Nil!41025) lt!1343923))))

(assert (=> d!1145399 (= (++!10470 lt!1343923 (_2!23253 (v!39071 lt!1343918))) lt!1344098)))

(declare-fun b!3866021 () Bool)

(declare-fun res!1565667 () Bool)

(assert (=> b!3866021 (=> (not res!1565667) (not e!2390586))))

(assert (=> b!3866021 (= res!1565667 (= (size!30846 lt!1344098) (+ (size!30846 lt!1343923) (size!30846 (_2!23253 (v!39071 lt!1343918))))))))

(declare-fun b!3866019 () Bool)

(assert (=> b!3866019 (= e!2390587 (_2!23253 (v!39071 lt!1343918)))))

(declare-fun b!3866020 () Bool)

(assert (=> b!3866020 (= e!2390587 (Cons!41025 (h!46445 lt!1343923) (++!10470 (t!313928 lt!1343923) (_2!23253 (v!39071 lt!1343918)))))))

(declare-fun b!3866022 () Bool)

(assert (=> b!3866022 (= e!2390586 (or (not (= (_2!23253 (v!39071 lt!1343918)) Nil!41025)) (= lt!1344098 lt!1343923)))))

(assert (= (and d!1145399 c!672900) b!3866019))

(assert (= (and d!1145399 (not c!672900)) b!3866020))

(assert (= (and d!1145399 res!1565666) b!3866021))

(assert (= (and b!3866021 res!1565667) b!3866022))

(declare-fun m!4421631 () Bool)

(assert (=> d!1145399 m!4421631))

(declare-fun m!4421633 () Bool)

(assert (=> d!1145399 m!4421633))

(declare-fun m!4421635 () Bool)

(assert (=> d!1145399 m!4421635))

(declare-fun m!4421637 () Bool)

(assert (=> b!3866021 m!4421637))

(assert (=> b!3866021 m!4421143))

(assert (=> b!3866021 m!4421095))

(declare-fun m!4421639 () Bool)

(assert (=> b!3866020 m!4421639))

(assert (=> b!3865623 d!1145399))

(declare-fun d!1145401 () Bool)

(assert (=> d!1145401 (= (size!30845 (_1!23253 (v!39071 lt!1343918))) (size!30846 (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918)))))))

(declare-fun Unit!58729 () Unit!58719)

(assert (=> d!1145401 (= (lemmaCharactersSize!1017 (_1!23253 (v!39071 lt!1343918))) Unit!58729)))

(declare-fun bs!583298 () Bool)

(assert (= bs!583298 d!1145401))

(assert (=> bs!583298 m!4421147))

(assert (=> b!3865623 d!1145401))

(declare-fun d!1145403 () Bool)

(assert (=> d!1145403 (= (_2!23253 (v!39071 lt!1343918)) lt!1343916)))

(declare-fun lt!1344101 () Unit!58719)

(declare-fun choose!22799 (List!41149 List!41149 List!41149 List!41149 List!41149) Unit!58719)

(assert (=> d!1145403 (= lt!1344101 (choose!22799 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 lt!1343916 lt!1343914))))

(assert (=> d!1145403 (isPrefix!3455 lt!1343923 lt!1343914)))

(assert (=> d!1145403 (= (lemmaSamePrefixThenSameSuffix!1676 lt!1343923 (_2!23253 (v!39071 lt!1343918)) lt!1343923 lt!1343916 lt!1343914) lt!1344101)))

(declare-fun bs!583299 () Bool)

(assert (= bs!583299 d!1145403))

(declare-fun m!4421641 () Bool)

(assert (=> bs!583299 m!4421641))

(declare-fun m!4421643 () Bool)

(assert (=> bs!583299 m!4421643))

(assert (=> b!3865623 d!1145403))

(declare-fun b!3866031 () Bool)

(declare-fun e!2390594 () Bool)

(declare-fun e!2390596 () Bool)

(assert (=> b!3866031 (= e!2390594 e!2390596)))

(declare-fun res!1565679 () Bool)

(assert (=> b!3866031 (=> (not res!1565679) (not e!2390596))))

(assert (=> b!3866031 (= res!1565679 (not ((_ is Nil!41025) lt!1343942)))))

(declare-fun b!3866033 () Bool)

(declare-fun tail!5883 (List!41149) List!41149)

(assert (=> b!3866033 (= e!2390596 (isPrefix!3455 (tail!5883 lt!1343923) (tail!5883 lt!1343942)))))

(declare-fun b!3866032 () Bool)

(declare-fun res!1565677 () Bool)

(assert (=> b!3866032 (=> (not res!1565677) (not e!2390596))))

(declare-fun head!8166 (List!41149) C!22708)

(assert (=> b!3866032 (= res!1565677 (= (head!8166 lt!1343923) (head!8166 lt!1343942)))))

(declare-fun b!3866034 () Bool)

(declare-fun e!2390595 () Bool)

(assert (=> b!3866034 (= e!2390595 (>= (size!30846 lt!1343942) (size!30846 lt!1343923)))))

(declare-fun d!1145405 () Bool)

(assert (=> d!1145405 e!2390595))

(declare-fun res!1565676 () Bool)

(assert (=> d!1145405 (=> res!1565676 e!2390595)))

(declare-fun lt!1344104 () Bool)

(assert (=> d!1145405 (= res!1565676 (not lt!1344104))))

(assert (=> d!1145405 (= lt!1344104 e!2390594)))

(declare-fun res!1565678 () Bool)

(assert (=> d!1145405 (=> res!1565678 e!2390594)))

(assert (=> d!1145405 (= res!1565678 ((_ is Nil!41025) lt!1343923))))

(assert (=> d!1145405 (= (isPrefix!3455 lt!1343923 lt!1343942) lt!1344104)))

(assert (= (and d!1145405 (not res!1565678)) b!3866031))

(assert (= (and b!3866031 res!1565679) b!3866032))

(assert (= (and b!3866032 res!1565677) b!3866033))

(assert (= (and d!1145405 (not res!1565676)) b!3866034))

(declare-fun m!4421645 () Bool)

(assert (=> b!3866033 m!4421645))

(declare-fun m!4421647 () Bool)

(assert (=> b!3866033 m!4421647))

(assert (=> b!3866033 m!4421645))

(assert (=> b!3866033 m!4421647))

(declare-fun m!4421649 () Bool)

(assert (=> b!3866033 m!4421649))

(declare-fun m!4421651 () Bool)

(assert (=> b!3866032 m!4421651))

(declare-fun m!4421653 () Bool)

(assert (=> b!3866032 m!4421653))

(declare-fun m!4421655 () Bool)

(assert (=> b!3866034 m!4421655))

(assert (=> b!3866034 m!4421143))

(assert (=> b!3865623 d!1145405))

(declare-fun d!1145407 () Bool)

(declare-fun lt!1344107 () List!41149)

(assert (=> d!1145407 (= (++!10470 lt!1343923 lt!1344107) lt!1343914)))

(declare-fun e!2390599 () List!41149)

(assert (=> d!1145407 (= lt!1344107 e!2390599)))

(declare-fun c!672903 () Bool)

(assert (=> d!1145407 (= c!672903 ((_ is Cons!41025) lt!1343923))))

(assert (=> d!1145407 (>= (size!30846 lt!1343914) (size!30846 lt!1343923))))

(assert (=> d!1145407 (= (getSuffix!1910 lt!1343914 lt!1343923) lt!1344107)))

(declare-fun b!3866039 () Bool)

(assert (=> b!3866039 (= e!2390599 (getSuffix!1910 (tail!5883 lt!1343914) (t!313928 lt!1343923)))))

(declare-fun b!3866040 () Bool)

(assert (=> b!3866040 (= e!2390599 lt!1343914)))

(assert (= (and d!1145407 c!672903) b!3866039))

(assert (= (and d!1145407 (not c!672903)) b!3866040))

(declare-fun m!4421657 () Bool)

(assert (=> d!1145407 m!4421657))

(assert (=> d!1145407 m!4421085))

(assert (=> d!1145407 m!4421143))

(declare-fun m!4421659 () Bool)

(assert (=> b!3866039 m!4421659))

(assert (=> b!3866039 m!4421659))

(declare-fun m!4421661 () Bool)

(assert (=> b!3866039 m!4421661))

(assert (=> b!3865623 d!1145407))

(declare-fun d!1145409 () Bool)

(declare-fun dynLambda!17678 (Int BalanceConc!24728) TokenValue!6586)

(assert (=> d!1145409 (= (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (seqFromList!4627 lt!1343923)) (dynLambda!17678 (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))) (seqFromList!4627 lt!1343923)))))

(declare-fun b_lambda!112973 () Bool)

(assert (=> (not b_lambda!112973) (not d!1145409)))

(declare-fun tb!224135 () Bool)

(declare-fun t!313987 () Bool)

(assert (=> (and b!3865628 (= (toValue!8784 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313987) tb!224135))

(declare-fun result!272982 () Bool)

(assert (=> tb!224135 (= result!272982 (inv!21 (dynLambda!17678 (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))) (seqFromList!4627 lt!1343923))))))

(declare-fun m!4421663 () Bool)

(assert (=> tb!224135 m!4421663))

(assert (=> d!1145409 t!313987))

(declare-fun b_and!289617 () Bool)

(assert (= b_and!289563 (and (=> t!313987 result!272982) b_and!289617)))

(declare-fun tb!224137 () Bool)

(declare-fun t!313989 () Bool)

(assert (=> (and b!3865604 (= (toValue!8784 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313989) tb!224137))

(declare-fun result!272986 () Bool)

(assert (= result!272986 result!272982))

(assert (=> d!1145409 t!313989))

(declare-fun b_and!289619 () Bool)

(assert (= b_and!289567 (and (=> t!313989 result!272986) b_and!289619)))

(declare-fun t!313991 () Bool)

(declare-fun tb!224139 () Bool)

(assert (=> (and b!3865619 (= (toValue!8784 (transformation!6356 (h!46447 rules!2768))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313991) tb!224139))

(declare-fun result!272988 () Bool)

(assert (= result!272988 result!272982))

(assert (=> d!1145409 t!313991))

(declare-fun b_and!289621 () Bool)

(assert (= b_and!289571 (and (=> t!313991 result!272988) b_and!289621)))

(assert (=> d!1145409 m!4421137))

(declare-fun m!4421665 () Bool)

(assert (=> d!1145409 m!4421665))

(assert (=> b!3865623 d!1145409))

(declare-fun d!1145411 () Bool)

(declare-fun fromListB!2137 (List!41149) BalanceConc!24728)

(assert (=> d!1145411 (= (seqFromList!4627 lt!1343923) (fromListB!2137 lt!1343923))))

(declare-fun bs!583300 () Bool)

(assert (= bs!583300 d!1145411))

(declare-fun m!4421667 () Bool)

(assert (=> bs!583300 m!4421667))

(assert (=> b!3865623 d!1145411))

(declare-fun d!1145413 () Bool)

(assert (=> d!1145413 (ruleValid!2308 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))))))

(declare-fun lt!1344110 () Unit!58719)

(declare-fun choose!22800 (LexerInterface!5945 Rule!12512 List!41151) Unit!58719)

(assert (=> d!1145413 (= lt!1344110 (choose!22800 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) rules!2768))))

(assert (=> d!1145413 (contains!8279 rules!2768 (rule!9234 (_1!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145413 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1388 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) rules!2768) lt!1344110)))

(declare-fun bs!583301 () Bool)

(assert (= bs!583301 d!1145413))

(assert (=> bs!583301 m!4421135))

(declare-fun m!4421669 () Bool)

(assert (=> bs!583301 m!4421669))

(declare-fun m!4421671 () Bool)

(assert (=> bs!583301 m!4421671))

(assert (=> b!3865623 d!1145413))

(declare-fun b!3866043 () Bool)

(declare-fun e!2390603 () tuple2!40240)

(assert (=> b!3866043 (= e!2390603 (tuple2!40241 Nil!41026 (_2!23253 (v!39071 lt!1343918))))))

(declare-fun b!3866044 () Bool)

(declare-fun lt!1344113 () Option!8774)

(declare-fun lt!1344112 () tuple2!40240)

(assert (=> b!3866044 (= e!2390603 (tuple2!40241 (Cons!41026 (_1!23253 (v!39071 lt!1344113)) (_1!23254 lt!1344112)) (_2!23254 lt!1344112)))))

(assert (=> b!3866044 (= lt!1344112 (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1344113))))))

(declare-fun b!3866045 () Bool)

(declare-fun e!2390605 () Bool)

(declare-fun lt!1344111 () tuple2!40240)

(assert (=> b!3866045 (= e!2390605 (not (isEmpty!24322 (_1!23254 lt!1344111))))))

(declare-fun b!3866047 () Bool)

(declare-fun e!2390604 () Bool)

(assert (=> b!3866047 (= e!2390604 (= (_2!23254 lt!1344111) (_2!23253 (v!39071 lt!1343918))))))

(declare-fun b!3866046 () Bool)

(assert (=> b!3866046 (= e!2390604 e!2390605)))

(declare-fun res!1565680 () Bool)

(assert (=> b!3866046 (= res!1565680 (< (size!30846 (_2!23254 lt!1344111)) (size!30846 (_2!23253 (v!39071 lt!1343918)))))))

(assert (=> b!3866046 (=> (not res!1565680) (not e!2390605))))

(declare-fun d!1145415 () Bool)

(assert (=> d!1145415 e!2390604))

(declare-fun c!672904 () Bool)

(assert (=> d!1145415 (= c!672904 (> (size!30848 (_1!23254 lt!1344111)) 0))))

(assert (=> d!1145415 (= lt!1344111 e!2390603)))

(declare-fun c!672905 () Bool)

(assert (=> d!1145415 (= c!672905 ((_ is Some!8773) lt!1344113))))

(assert (=> d!1145415 (= lt!1344113 (maxPrefix!3249 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145415 (= (lexList!1713 thiss!20629 rules!2768 (_2!23253 (v!39071 lt!1343918))) lt!1344111)))

(assert (= (and d!1145415 c!672905) b!3866044))

(assert (= (and d!1145415 (not c!672905)) b!3866043))

(assert (= (and d!1145415 c!672904) b!3866046))

(assert (= (and d!1145415 (not c!672904)) b!3866047))

(assert (= (and b!3866046 res!1565680) b!3866045))

(declare-fun m!4421673 () Bool)

(assert (=> b!3866044 m!4421673))

(declare-fun m!4421675 () Bool)

(assert (=> b!3866045 m!4421675))

(declare-fun m!4421677 () Bool)

(assert (=> b!3866046 m!4421677))

(assert (=> b!3866046 m!4421095))

(declare-fun m!4421679 () Bool)

(assert (=> d!1145415 m!4421679))

(declare-fun m!4421681 () Bool)

(assert (=> d!1145415 m!4421681))

(assert (=> b!3865623 d!1145415))

(declare-fun d!1145417 () Bool)

(declare-fun lt!1344116 () BalanceConc!24728)

(assert (=> d!1145417 (= (list!15266 lt!1344116) (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145417 (= lt!1344116 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))) (value!201780 (_1!23253 (v!39071 lt!1343918)))))))

(assert (=> d!1145417 (= (charsOf!4184 (_1!23253 (v!39071 lt!1343918))) lt!1344116)))

(declare-fun b_lambda!112975 () Bool)

(assert (=> (not b_lambda!112975) (not d!1145417)))

(declare-fun t!313993 () Bool)

(declare-fun tb!224141 () Bool)

(assert (=> (and b!3865628 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313993) tb!224141))

(declare-fun b!3866048 () Bool)

(declare-fun e!2390606 () Bool)

(declare-fun tp!1172059 () Bool)

(assert (=> b!3866048 (= e!2390606 (and (inv!55190 (c!672823 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))) (value!201780 (_1!23253 (v!39071 lt!1343918)))))) tp!1172059))))

(declare-fun result!272990 () Bool)

(assert (=> tb!224141 (= result!272990 (and (inv!55191 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))) (value!201780 (_1!23253 (v!39071 lt!1343918))))) e!2390606))))

(assert (= tb!224141 b!3866048))

(declare-fun m!4421683 () Bool)

(assert (=> b!3866048 m!4421683))

(declare-fun m!4421685 () Bool)

(assert (=> tb!224141 m!4421685))

(assert (=> d!1145417 t!313993))

(declare-fun b_and!289623 () Bool)

(assert (= b_and!289611 (and (=> t!313993 result!272990) b_and!289623)))

(declare-fun tb!224143 () Bool)

(declare-fun t!313995 () Bool)

(assert (=> (and b!3865604 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313995) tb!224143))

(declare-fun result!272992 () Bool)

(assert (= result!272992 result!272990))

(assert (=> d!1145417 t!313995))

(declare-fun b_and!289625 () Bool)

(assert (= b_and!289613 (and (=> t!313995 result!272992) b_and!289625)))

(declare-fun t!313997 () Bool)

(declare-fun tb!224145 () Bool)

(assert (=> (and b!3865619 (= (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!313997) tb!224145))

(declare-fun result!272994 () Bool)

(assert (= result!272994 result!272990))

(assert (=> d!1145417 t!313997))

(declare-fun b_and!289627 () Bool)

(assert (= b_and!289615 (and (=> t!313997 result!272994) b_and!289627)))

(declare-fun m!4421687 () Bool)

(assert (=> d!1145417 m!4421687))

(declare-fun m!4421689 () Bool)

(assert (=> d!1145417 m!4421689))

(assert (=> b!3865623 d!1145417))

(declare-fun d!1145419 () Bool)

(declare-fun res!1565685 () Bool)

(declare-fun e!2390609 () Bool)

(assert (=> d!1145419 (=> (not res!1565685) (not e!2390609))))

(declare-fun validRegex!5126 (Regex!11261) Bool)

(assert (=> d!1145419 (= res!1565685 (validRegex!5126 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918))))))))

(assert (=> d!1145419 (= (ruleValid!2308 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) e!2390609)))

(declare-fun b!3866053 () Bool)

(declare-fun res!1565686 () Bool)

(assert (=> b!3866053 (=> (not res!1565686) (not e!2390609))))

(declare-fun nullable!3927 (Regex!11261) Bool)

(assert (=> b!3866053 (= res!1565686 (not (nullable!3927 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))))))

(declare-fun b!3866054 () Bool)

(assert (=> b!3866054 (= e!2390609 (not (= (tag!7216 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (String!46649 ""))))))

(assert (= (and d!1145419 res!1565685) b!3866053))

(assert (= (and b!3866053 res!1565686) b!3866054))

(declare-fun m!4421691 () Bool)

(assert (=> d!1145419 m!4421691))

(declare-fun m!4421693 () Bool)

(assert (=> b!3866053 m!4421693))

(assert (=> b!3865623 d!1145419))

(declare-fun d!1145421 () Bool)

(declare-fun lt!1344117 () Int)

(assert (=> d!1145421 (>= lt!1344117 0)))

(declare-fun e!2390610 () Int)

(assert (=> d!1145421 (= lt!1344117 e!2390610)))

(declare-fun c!672906 () Bool)

(assert (=> d!1145421 (= c!672906 ((_ is Nil!41025) lt!1343923))))

(assert (=> d!1145421 (= (size!30846 lt!1343923) lt!1344117)))

(declare-fun b!3866055 () Bool)

(assert (=> b!3866055 (= e!2390610 0)))

(declare-fun b!3866056 () Bool)

(assert (=> b!3866056 (= e!2390610 (+ 1 (size!30846 (t!313928 lt!1343923))))))

(assert (= (and d!1145421 c!672906) b!3866055))

(assert (= (and d!1145421 (not c!672906)) b!3866056))

(declare-fun m!4421695 () Bool)

(assert (=> b!3866056 m!4421695))

(assert (=> b!3865623 d!1145421))

(declare-fun d!1145423 () Bool)

(declare-fun list!15268 (Conc!12567) List!41149)

(assert (=> d!1145423 (= (list!15266 (charsOf!4184 (_1!23253 (v!39071 lt!1343918)))) (list!15268 (c!672823 (charsOf!4184 (_1!23253 (v!39071 lt!1343918))))))))

(declare-fun bs!583302 () Bool)

(assert (= bs!583302 d!1145423))

(declare-fun m!4421697 () Bool)

(assert (=> bs!583302 m!4421697))

(assert (=> b!3865623 d!1145423))

(declare-fun d!1145425 () Bool)

(declare-fun res!1565689 () Bool)

(declare-fun e!2390613 () Bool)

(assert (=> d!1145425 (=> (not res!1565689) (not e!2390613))))

(declare-fun rulesValid!2462 (LexerInterface!5945 List!41151) Bool)

(assert (=> d!1145425 (= res!1565689 (rulesValid!2462 thiss!20629 rules!2768))))

(assert (=> d!1145425 (= (rulesInvariant!5288 thiss!20629 rules!2768) e!2390613)))

(declare-fun b!3866059 () Bool)

(declare-datatypes ((List!41153 0))(
  ( (Nil!41029) (Cons!41029 (h!46449 String!46648) (t!314028 List!41153)) )
))
(declare-fun noDuplicateTag!2463 (LexerInterface!5945 List!41151 List!41153) Bool)

(assert (=> b!3866059 (= e!2390613 (noDuplicateTag!2463 thiss!20629 rules!2768 Nil!41029))))

(assert (= (and d!1145425 res!1565689) b!3866059))

(declare-fun m!4421699 () Bool)

(assert (=> d!1145425 m!4421699))

(declare-fun m!4421701 () Bool)

(assert (=> b!3866059 m!4421701))

(assert (=> b!3865622 d!1145425))

(declare-fun d!1145427 () Bool)

(assert (=> d!1145427 (= (isEmpty!24320 prefix!426) ((_ is Nil!41025) prefix!426))))

(assert (=> b!3865600 d!1145427))

(declare-fun d!1145429 () Bool)

(declare-fun e!2390615 () Bool)

(assert (=> d!1145429 e!2390615))

(declare-fun res!1565690 () Bool)

(assert (=> d!1145429 (=> (not res!1565690) (not e!2390615))))

(declare-fun lt!1344118 () List!41150)

(assert (=> d!1145429 (= res!1565690 (= (content!6124 lt!1344118) ((_ map or) (content!6124 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026)) (content!6124 (_1!23254 lt!1343915)))))))

(declare-fun e!2390614 () List!41150)

(assert (=> d!1145429 (= lt!1344118 e!2390614)))

(declare-fun c!672907 () Bool)

(assert (=> d!1145429 (= c!672907 ((_ is Nil!41026) (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026)))))

(assert (=> d!1145429 (= (++!10469 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026) (_1!23254 lt!1343915)) lt!1344118)))

(declare-fun b!3866063 () Bool)

(assert (=> b!3866063 (= e!2390615 (or (not (= (_1!23254 lt!1343915) Nil!41026)) (= lt!1344118 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026))))))

(declare-fun b!3866060 () Bool)

(assert (=> b!3866060 (= e!2390614 (_1!23254 lt!1343915))))

(declare-fun b!3866062 () Bool)

(declare-fun res!1565691 () Bool)

(assert (=> b!3866062 (=> (not res!1565691) (not e!2390615))))

(assert (=> b!3866062 (= res!1565691 (= (size!30848 lt!1344118) (+ (size!30848 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026)) (size!30848 (_1!23254 lt!1343915)))))))

(declare-fun b!3866061 () Bool)

(assert (=> b!3866061 (= e!2390614 (Cons!41026 (h!46446 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026)) (++!10469 (t!313929 (Cons!41026 (_1!23253 (v!39071 lt!1343918)) Nil!41026)) (_1!23254 lt!1343915))))))

(assert (= (and d!1145429 c!672907) b!3866060))

(assert (= (and d!1145429 (not c!672907)) b!3866061))

(assert (= (and d!1145429 res!1565690) b!3866062))

(assert (= (and b!3866062 res!1565691) b!3866063))

(declare-fun m!4421703 () Bool)

(assert (=> d!1145429 m!4421703))

(declare-fun m!4421705 () Bool)

(assert (=> d!1145429 m!4421705))

(declare-fun m!4421707 () Bool)

(assert (=> d!1145429 m!4421707))

(declare-fun m!4421709 () Bool)

(assert (=> b!3866062 m!4421709))

(declare-fun m!4421711 () Bool)

(assert (=> b!3866062 m!4421711))

(declare-fun m!4421713 () Bool)

(assert (=> b!3866062 m!4421713))

(declare-fun m!4421715 () Bool)

(assert (=> b!3866061 m!4421715))

(assert (=> b!3865621 d!1145429))

(declare-fun d!1145431 () Bool)

(assert (=> d!1145431 (isPrefix!3455 prefix!426 (++!10470 prefix!426 suffix!1176))))

(declare-fun lt!1344119 () Unit!58719)

(assert (=> d!1145431 (= lt!1344119 (choose!22798 prefix!426 suffix!1176))))

(assert (=> d!1145431 (= (lemmaConcatTwoListThenFirstIsPrefix!2318 prefix!426 suffix!1176) lt!1344119)))

(declare-fun bs!583303 () Bool)

(assert (= bs!583303 d!1145431))

(assert (=> bs!583303 m!4421163))

(assert (=> bs!583303 m!4421163))

(declare-fun m!4421717 () Bool)

(assert (=> bs!583303 m!4421717))

(declare-fun m!4421719 () Bool)

(assert (=> bs!583303 m!4421719))

(assert (=> b!3865599 d!1145431))

(declare-fun b!3866064 () Bool)

(declare-fun e!2390616 () Bool)

(declare-fun e!2390618 () Bool)

(assert (=> b!3866064 (= e!2390616 e!2390618)))

(declare-fun res!1565695 () Bool)

(assert (=> b!3866064 (=> (not res!1565695) (not e!2390618))))

(assert (=> b!3866064 (= res!1565695 (not ((_ is Nil!41025) lt!1343914)))))

(declare-fun b!3866066 () Bool)

(assert (=> b!3866066 (= e!2390618 (isPrefix!3455 (tail!5883 prefix!426) (tail!5883 lt!1343914)))))

(declare-fun b!3866065 () Bool)

(declare-fun res!1565693 () Bool)

(assert (=> b!3866065 (=> (not res!1565693) (not e!2390618))))

(assert (=> b!3866065 (= res!1565693 (= (head!8166 prefix!426) (head!8166 lt!1343914)))))

(declare-fun b!3866067 () Bool)

(declare-fun e!2390617 () Bool)

(assert (=> b!3866067 (= e!2390617 (>= (size!30846 lt!1343914) (size!30846 prefix!426)))))

(declare-fun d!1145433 () Bool)

(assert (=> d!1145433 e!2390617))

(declare-fun res!1565692 () Bool)

(assert (=> d!1145433 (=> res!1565692 e!2390617)))

(declare-fun lt!1344120 () Bool)

(assert (=> d!1145433 (= res!1565692 (not lt!1344120))))

(assert (=> d!1145433 (= lt!1344120 e!2390616)))

(declare-fun res!1565694 () Bool)

(assert (=> d!1145433 (=> res!1565694 e!2390616)))

(assert (=> d!1145433 (= res!1565694 ((_ is Nil!41025) prefix!426))))

(assert (=> d!1145433 (= (isPrefix!3455 prefix!426 lt!1343914) lt!1344120)))

(assert (= (and d!1145433 (not res!1565694)) b!3866064))

(assert (= (and b!3866064 res!1565695) b!3866065))

(assert (= (and b!3866065 res!1565693) b!3866066))

(assert (= (and d!1145433 (not res!1565692)) b!3866067))

(declare-fun m!4421721 () Bool)

(assert (=> b!3866066 m!4421721))

(assert (=> b!3866066 m!4421659))

(assert (=> b!3866066 m!4421721))

(assert (=> b!3866066 m!4421659))

(declare-fun m!4421723 () Bool)

(assert (=> b!3866066 m!4421723))

(declare-fun m!4421725 () Bool)

(assert (=> b!3866065 m!4421725))

(declare-fun m!4421727 () Bool)

(assert (=> b!3866065 m!4421727))

(assert (=> b!3866067 m!4421085))

(assert (=> b!3866067 m!4421501))

(assert (=> b!3865599 d!1145433))

(declare-fun d!1145435 () Bool)

(assert (=> d!1145435 (= lt!1343923 prefix!426)))

(declare-fun lt!1344123 () Unit!58719)

(declare-fun choose!22801 (List!41149 List!41149 List!41149) Unit!58719)

(assert (=> d!1145435 (= lt!1344123 (choose!22801 lt!1343923 prefix!426 lt!1343914))))

(assert (=> d!1145435 (isPrefix!3455 lt!1343923 lt!1343914)))

(assert (=> d!1145435 (= (lemmaIsPrefixSameLengthThenSameList!707 lt!1343923 prefix!426 lt!1343914) lt!1344123)))

(declare-fun bs!583304 () Bool)

(assert (= bs!583304 d!1145435))

(declare-fun m!4421729 () Bool)

(assert (=> bs!583304 m!4421729))

(assert (=> bs!583304 m!4421643))

(assert (=> b!3865599 d!1145435))

(declare-fun d!1145437 () Bool)

(assert (=> d!1145437 (= (_2!23253 (v!39071 lt!1343918)) suffix!1176)))

(declare-fun lt!1344124 () Unit!58719)

(assert (=> d!1145437 (= lt!1344124 (choose!22799 lt!1343923 (_2!23253 (v!39071 lt!1343918)) prefix!426 suffix!1176 lt!1343914))))

(assert (=> d!1145437 (isPrefix!3455 lt!1343923 lt!1343914)))

(assert (=> d!1145437 (= (lemmaSamePrefixThenSameSuffix!1676 lt!1343923 (_2!23253 (v!39071 lt!1343918)) prefix!426 suffix!1176 lt!1343914) lt!1344124)))

(declare-fun bs!583305 () Bool)

(assert (= bs!583305 d!1145437))

(declare-fun m!4421731 () Bool)

(assert (=> bs!583305 m!4421731))

(assert (=> bs!583305 m!4421643))

(assert (=> b!3865599 d!1145437))

(declare-fun d!1145439 () Bool)

(declare-fun lt!1344125 () Int)

(assert (=> d!1145439 (>= lt!1344125 0)))

(declare-fun e!2390619 () Int)

(assert (=> d!1145439 (= lt!1344125 e!2390619)))

(declare-fun c!672908 () Bool)

(assert (=> d!1145439 (= c!672908 ((_ is Nil!41025) (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918)))))))

(assert (=> d!1145439 (= (size!30846 (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918)))) lt!1344125)))

(declare-fun b!3866068 () Bool)

(assert (=> b!3866068 (= e!2390619 0)))

(declare-fun b!3866069 () Bool)

(assert (=> b!3866069 (= e!2390619 (+ 1 (size!30846 (t!313928 (originalCharacters!6956 (_1!23253 (v!39071 lt!1343918)))))))))

(assert (= (and d!1145439 c!672908) b!3866068))

(assert (= (and d!1145439 (not c!672908)) b!3866069))

(declare-fun m!4421733 () Bool)

(assert (=> b!3866069 m!4421733))

(assert (=> b!3865618 d!1145439))

(declare-fun d!1145441 () Bool)

(declare-fun res!1565696 () Bool)

(declare-fun e!2390620 () Bool)

(assert (=> d!1145441 (=> (not res!1565696) (not e!2390620))))

(assert (=> d!1145441 (= res!1565696 (not (isEmpty!24320 (originalCharacters!6956 (h!46446 suffixTokens!72)))))))

(assert (=> d!1145441 (= (inv!55186 (h!46446 suffixTokens!72)) e!2390620)))

(declare-fun b!3866070 () Bool)

(declare-fun res!1565697 () Bool)

(assert (=> b!3866070 (=> (not res!1565697) (not e!2390620))))

(assert (=> b!3866070 (= res!1565697 (= (originalCharacters!6956 (h!46446 suffixTokens!72)) (list!15266 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (value!201780 (h!46446 suffixTokens!72))))))))

(declare-fun b!3866071 () Bool)

(assert (=> b!3866071 (= e!2390620 (= (size!30845 (h!46446 suffixTokens!72)) (size!30846 (originalCharacters!6956 (h!46446 suffixTokens!72)))))))

(assert (= (and d!1145441 res!1565696) b!3866070))

(assert (= (and b!3866070 res!1565697) b!3866071))

(declare-fun b_lambda!112977 () Bool)

(assert (=> (not b_lambda!112977) (not b!3866070)))

(declare-fun tb!224147 () Bool)

(declare-fun t!313999 () Bool)

(assert (=> (and b!3865628 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!313999) tb!224147))

(declare-fun b!3866072 () Bool)

(declare-fun e!2390621 () Bool)

(declare-fun tp!1172060 () Bool)

(assert (=> b!3866072 (= e!2390621 (and (inv!55190 (c!672823 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (value!201780 (h!46446 suffixTokens!72))))) tp!1172060))))

(declare-fun result!272996 () Bool)

(assert (=> tb!224147 (= result!272996 (and (inv!55191 (dynLambda!17677 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (value!201780 (h!46446 suffixTokens!72)))) e!2390621))))

(assert (= tb!224147 b!3866072))

(declare-fun m!4421735 () Bool)

(assert (=> b!3866072 m!4421735))

(declare-fun m!4421737 () Bool)

(assert (=> tb!224147 m!4421737))

(assert (=> b!3866070 t!313999))

(declare-fun b_and!289629 () Bool)

(assert (= b_and!289623 (and (=> t!313999 result!272996) b_and!289629)))

(declare-fun t!314001 () Bool)

(declare-fun tb!224149 () Bool)

(assert (=> (and b!3865604 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!314001) tb!224149))

(declare-fun result!272998 () Bool)

(assert (= result!272998 result!272996))

(assert (=> b!3866070 t!314001))

(declare-fun b_and!289631 () Bool)

(assert (= b_and!289625 (and (=> t!314001 result!272998) b_and!289631)))

(declare-fun t!314003 () Bool)

(declare-fun tb!224151 () Bool)

(assert (=> (and b!3865619 (= (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!314003) tb!224151))

(declare-fun result!273000 () Bool)

(assert (= result!273000 result!272996))

(assert (=> b!3866070 t!314003))

(declare-fun b_and!289633 () Bool)

(assert (= b_and!289627 (and (=> t!314003 result!273000) b_and!289633)))

(declare-fun m!4421739 () Bool)

(assert (=> d!1145441 m!4421739))

(declare-fun m!4421741 () Bool)

(assert (=> b!3866070 m!4421741))

(assert (=> b!3866070 m!4421741))

(declare-fun m!4421743 () Bool)

(assert (=> b!3866070 m!4421743))

(declare-fun m!4421745 () Bool)

(assert (=> b!3866071 m!4421745))

(assert (=> b!3865597 d!1145441))

(declare-fun d!1145443 () Bool)

(assert (=> d!1145443 (= (inv!55183 (tag!7216 (rule!9234 (h!46446 prefixTokens!80)))) (= (mod (str.len (value!201779 (tag!7216 (rule!9234 (h!46446 prefixTokens!80))))) 2) 0))))

(assert (=> b!3865617 d!1145443))

(declare-fun d!1145445 () Bool)

(declare-fun res!1565698 () Bool)

(declare-fun e!2390622 () Bool)

(assert (=> d!1145445 (=> (not res!1565698) (not e!2390622))))

(assert (=> d!1145445 (= res!1565698 (semiInverseModEq!2727 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toValue!8784 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))))))

(assert (=> d!1145445 (= (inv!55187 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) e!2390622)))

(declare-fun b!3866073 () Bool)

(assert (=> b!3866073 (= e!2390622 (equivClasses!2626 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toValue!8784 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))))))

(assert (= (and d!1145445 res!1565698) b!3866073))

(declare-fun m!4421747 () Bool)

(assert (=> d!1145445 m!4421747))

(declare-fun m!4421749 () Bool)

(assert (=> b!3866073 m!4421749))

(assert (=> b!3865617 d!1145445))

(declare-fun d!1145447 () Bool)

(assert (=> d!1145447 (= (get!13574 lt!1343918) (v!39071 lt!1343918))))

(assert (=> b!3865615 d!1145447))

(declare-fun d!1145449 () Bool)

(declare-fun lt!1344126 () Int)

(assert (=> d!1145449 (>= lt!1344126 0)))

(declare-fun e!2390623 () Int)

(assert (=> d!1145449 (= lt!1344126 e!2390623)))

(declare-fun c!672909 () Bool)

(assert (=> d!1145449 (= c!672909 ((_ is Nil!41025) (_2!23253 lt!1343933)))))

(assert (=> d!1145449 (= (size!30846 (_2!23253 lt!1343933)) lt!1344126)))

(declare-fun b!3866074 () Bool)

(assert (=> b!3866074 (= e!2390623 0)))

(declare-fun b!3866075 () Bool)

(assert (=> b!3866075 (= e!2390623 (+ 1 (size!30846 (t!313928 (_2!23253 lt!1343933)))))))

(assert (= (and d!1145449 c!672909) b!3866074))

(assert (= (and d!1145449 (not c!672909)) b!3866075))

(declare-fun m!4421751 () Bool)

(assert (=> b!3866075 m!4421751))

(assert (=> b!3865615 d!1145449))

(declare-fun b!3866094 () Bool)

(declare-fun res!1565715 () Bool)

(declare-fun e!2390635 () Bool)

(assert (=> b!3866094 (=> (not res!1565715) (not e!2390635))))

(declare-fun lt!1344140 () Option!8774)

(assert (=> b!3866094 (= res!1565715 (= (++!10470 (list!15266 (charsOf!4184 (_1!23253 (get!13574 lt!1344140)))) (_2!23253 (get!13574 lt!1344140))) lt!1343914))))

(declare-fun b!3866095 () Bool)

(declare-fun res!1565716 () Bool)

(assert (=> b!3866095 (=> (not res!1565716) (not e!2390635))))

(assert (=> b!3866095 (= res!1565716 (= (value!201780 (_1!23253 (get!13574 lt!1344140))) (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (get!13574 lt!1344140)))) (seqFromList!4627 (originalCharacters!6956 (_1!23253 (get!13574 lt!1344140)))))))))

(declare-fun b!3866096 () Bool)

(declare-fun e!2390633 () Option!8774)

(declare-datatypes ((tuple2!40244 0))(
  ( (tuple2!40245 (_1!23256 List!41149) (_2!23256 List!41149)) )
))
(declare-fun lt!1344139 () tuple2!40244)

(declare-fun size!30850 (BalanceConc!24728) Int)

(assert (=> b!3866096 (= e!2390633 (Some!8773 (tuple2!40239 (Token!11851 (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (seqFromList!4627 (_1!23256 lt!1344139))) (rule!9234 (_1!23253 (v!39071 lt!1343918))) (size!30850 (seqFromList!4627 (_1!23256 lt!1344139))) (_1!23256 lt!1344139)) (_2!23256 lt!1344139))))))

(declare-fun lt!1344137 () Unit!58719)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1167 (Regex!11261 List!41149) Unit!58719)

(assert (=> b!3866096 (= lt!1344137 (longestMatchIsAcceptedByMatchOrIsEmpty!1167 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) lt!1343914))))

(declare-fun res!1565713 () Bool)

(declare-fun findLongestMatchInner!1194 (Regex!11261 List!41149 Int List!41149 List!41149 Int) tuple2!40244)

(assert (=> b!3866096 (= res!1565713 (isEmpty!24320 (_1!23256 (findLongestMatchInner!1194 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) Nil!41025 (size!30846 Nil!41025) lt!1343914 lt!1343914 (size!30846 lt!1343914)))))))

(declare-fun e!2390632 () Bool)

(assert (=> b!3866096 (=> res!1565713 e!2390632)))

(assert (=> b!3866096 e!2390632))

(declare-fun lt!1344141 () Unit!58719)

(assert (=> b!3866096 (= lt!1344141 lt!1344137)))

(declare-fun lt!1344138 () Unit!58719)

(declare-fun lemmaSemiInverse!1700 (TokenValueInjection!12600 BalanceConc!24728) Unit!58719)

(assert (=> b!3866096 (= lt!1344138 (lemmaSemiInverse!1700 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (seqFromList!4627 (_1!23256 lt!1344139))))))

(declare-fun b!3866097 () Bool)

(declare-fun res!1565719 () Bool)

(assert (=> b!3866097 (=> (not res!1565719) (not e!2390635))))

(assert (=> b!3866097 (= res!1565719 (< (size!30846 (_2!23253 (get!13574 lt!1344140))) (size!30846 lt!1343914)))))

(declare-fun b!3866098 () Bool)

(assert (=> b!3866098 (= e!2390635 (= (size!30845 (_1!23253 (get!13574 lt!1344140))) (size!30846 (originalCharacters!6956 (_1!23253 (get!13574 lt!1344140))))))))

(declare-fun d!1145451 () Bool)

(declare-fun e!2390634 () Bool)

(assert (=> d!1145451 e!2390634))

(declare-fun res!1565717 () Bool)

(assert (=> d!1145451 (=> res!1565717 e!2390634)))

(assert (=> d!1145451 (= res!1565717 (isEmpty!24324 lt!1344140))))

(assert (=> d!1145451 (= lt!1344140 e!2390633)))

(declare-fun c!672912 () Bool)

(assert (=> d!1145451 (= c!672912 (isEmpty!24320 (_1!23256 lt!1344139)))))

(declare-fun findLongestMatch!1107 (Regex!11261 List!41149) tuple2!40244)

(assert (=> d!1145451 (= lt!1344139 (findLongestMatch!1107 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) lt!1343914))))

(assert (=> d!1145451 (ruleValid!2308 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))))))

(assert (=> d!1145451 (= (maxPrefixOneRule!2331 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) lt!1343914) lt!1344140)))

(declare-fun b!3866099 () Bool)

(assert (=> b!3866099 (= e!2390633 None!8773)))

(declare-fun b!3866100 () Bool)

(declare-fun res!1565714 () Bool)

(assert (=> b!3866100 (=> (not res!1565714) (not e!2390635))))

(assert (=> b!3866100 (= res!1565714 (= (rule!9234 (_1!23253 (get!13574 lt!1344140))) (rule!9234 (_1!23253 (v!39071 lt!1343918)))))))

(declare-fun b!3866101 () Bool)

(assert (=> b!3866101 (= e!2390634 e!2390635)))

(declare-fun res!1565718 () Bool)

(assert (=> b!3866101 (=> (not res!1565718) (not e!2390635))))

(assert (=> b!3866101 (= res!1565718 (matchR!5404 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (list!15266 (charsOf!4184 (_1!23253 (get!13574 lt!1344140))))))))

(declare-fun b!3866102 () Bool)

(assert (=> b!3866102 (= e!2390632 (matchR!5404 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (_1!23256 (findLongestMatchInner!1194 (regex!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) Nil!41025 (size!30846 Nil!41025) lt!1343914 lt!1343914 (size!30846 lt!1343914)))))))

(assert (= (and d!1145451 c!672912) b!3866099))

(assert (= (and d!1145451 (not c!672912)) b!3866096))

(assert (= (and b!3866096 (not res!1565713)) b!3866102))

(assert (= (and d!1145451 (not res!1565717)) b!3866101))

(assert (= (and b!3866101 res!1565718) b!3866094))

(assert (= (and b!3866094 res!1565715) b!3866097))

(assert (= (and b!3866097 res!1565719) b!3866100))

(assert (= (and b!3866100 res!1565714) b!3866095))

(assert (= (and b!3866095 res!1565716) b!3866098))

(declare-fun m!4421753 () Bool)

(assert (=> d!1145451 m!4421753))

(declare-fun m!4421755 () Bool)

(assert (=> d!1145451 m!4421755))

(declare-fun m!4421757 () Bool)

(assert (=> d!1145451 m!4421757))

(assert (=> d!1145451 m!4421135))

(declare-fun m!4421759 () Bool)

(assert (=> b!3866100 m!4421759))

(assert (=> b!3866095 m!4421759))

(declare-fun m!4421761 () Bool)

(assert (=> b!3866095 m!4421761))

(assert (=> b!3866095 m!4421761))

(declare-fun m!4421763 () Bool)

(assert (=> b!3866095 m!4421763))

(assert (=> b!3866097 m!4421759))

(declare-fun m!4421765 () Bool)

(assert (=> b!3866097 m!4421765))

(assert (=> b!3866097 m!4421085))

(declare-fun m!4421767 () Bool)

(assert (=> b!3866102 m!4421767))

(assert (=> b!3866102 m!4421085))

(assert (=> b!3866102 m!4421767))

(assert (=> b!3866102 m!4421085))

(declare-fun m!4421769 () Bool)

(assert (=> b!3866102 m!4421769))

(declare-fun m!4421771 () Bool)

(assert (=> b!3866102 m!4421771))

(declare-fun m!4421773 () Bool)

(assert (=> b!3866096 m!4421773))

(declare-fun m!4421775 () Bool)

(assert (=> b!3866096 m!4421775))

(assert (=> b!3866096 m!4421767))

(assert (=> b!3866096 m!4421773))

(declare-fun m!4421777 () Bool)

(assert (=> b!3866096 m!4421777))

(assert (=> b!3866096 m!4421085))

(declare-fun m!4421779 () Bool)

(assert (=> b!3866096 m!4421779))

(assert (=> b!3866096 m!4421767))

(assert (=> b!3866096 m!4421085))

(assert (=> b!3866096 m!4421769))

(declare-fun m!4421781 () Bool)

(assert (=> b!3866096 m!4421781))

(assert (=> b!3866096 m!4421773))

(declare-fun m!4421783 () Bool)

(assert (=> b!3866096 m!4421783))

(assert (=> b!3866096 m!4421773))

(assert (=> b!3866094 m!4421759))

(declare-fun m!4421785 () Bool)

(assert (=> b!3866094 m!4421785))

(assert (=> b!3866094 m!4421785))

(declare-fun m!4421787 () Bool)

(assert (=> b!3866094 m!4421787))

(assert (=> b!3866094 m!4421787))

(declare-fun m!4421789 () Bool)

(assert (=> b!3866094 m!4421789))

(assert (=> b!3866101 m!4421759))

(assert (=> b!3866101 m!4421785))

(assert (=> b!3866101 m!4421785))

(assert (=> b!3866101 m!4421787))

(assert (=> b!3866101 m!4421787))

(declare-fun m!4421791 () Bool)

(assert (=> b!3866101 m!4421791))

(assert (=> b!3866098 m!4421759))

(declare-fun m!4421793 () Bool)

(assert (=> b!3866098 m!4421793))

(assert (=> b!3865615 d!1145451))

(declare-fun d!1145453 () Bool)

(assert (=> d!1145453 (= (maxPrefixOneRule!2331 thiss!20629 (rule!9234 (_1!23253 (v!39071 lt!1343918))) lt!1343914) (Some!8773 (tuple2!40239 (Token!11851 (apply!9599 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))) (seqFromList!4627 lt!1343923)) (rule!9234 (_1!23253 (v!39071 lt!1343918))) (size!30846 lt!1343923) lt!1343923) (_2!23253 (v!39071 lt!1343918)))))))

(declare-fun lt!1344144 () Unit!58719)

(declare-fun choose!22802 (LexerInterface!5945 List!41151 List!41149 List!41149 List!41149 Rule!12512) Unit!58719)

(assert (=> d!1145453 (= lt!1344144 (choose!22802 thiss!20629 rules!2768 lt!1343923 lt!1343914 (_2!23253 (v!39071 lt!1343918)) (rule!9234 (_1!23253 (v!39071 lt!1343918)))))))

(assert (=> d!1145453 (not (isEmpty!24321 rules!2768))))

(assert (=> d!1145453 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1229 thiss!20629 rules!2768 lt!1343923 lt!1343914 (_2!23253 (v!39071 lt!1343918)) (rule!9234 (_1!23253 (v!39071 lt!1343918)))) lt!1344144)))

(declare-fun bs!583306 () Bool)

(assert (= bs!583306 d!1145453))

(assert (=> bs!583306 m!4421143))

(assert (=> bs!583306 m!4421091))

(assert (=> bs!583306 m!4421081))

(assert (=> bs!583306 m!4421137))

(assert (=> bs!583306 m!4421139))

(assert (=> bs!583306 m!4421137))

(declare-fun m!4421795 () Bool)

(assert (=> bs!583306 m!4421795))

(assert (=> b!3865615 d!1145453))

(declare-fun d!1145455 () Bool)

(declare-fun lt!1344145 () Int)

(assert (=> d!1145455 (>= lt!1344145 0)))

(declare-fun e!2390636 () Int)

(assert (=> d!1145455 (= lt!1344145 e!2390636)))

(declare-fun c!672913 () Bool)

(assert (=> d!1145455 (= c!672913 ((_ is Nil!41025) lt!1343914))))

(assert (=> d!1145455 (= (size!30846 lt!1343914) lt!1344145)))

(declare-fun b!3866103 () Bool)

(assert (=> b!3866103 (= e!2390636 0)))

(declare-fun b!3866104 () Bool)

(assert (=> b!3866104 (= e!2390636 (+ 1 (size!30846 (t!313928 lt!1343914))))))

(assert (= (and d!1145455 c!672913) b!3866103))

(assert (= (and d!1145455 (not c!672913)) b!3866104))

(declare-fun m!4421797 () Bool)

(assert (=> b!3866104 m!4421797))

(assert (=> b!3865615 d!1145455))

(declare-fun d!1145457 () Bool)

(assert (=> d!1145457 (= (isEmpty!24322 prefixTokens!80) ((_ is Nil!41026) prefixTokens!80))))

(assert (=> b!3865614 d!1145457))

(declare-fun b!3866106 () Bool)

(declare-fun e!2390638 () Bool)

(assert (=> b!3866106 (= e!2390638 (inv!15 (value!201780 (h!46446 prefixTokens!80))))))

(declare-fun b!3866107 () Bool)

(declare-fun res!1565720 () Bool)

(assert (=> b!3866107 (=> res!1565720 e!2390638)))

(assert (=> b!3866107 (= res!1565720 (not ((_ is IntegerValue!19760) (value!201780 (h!46446 prefixTokens!80)))))))

(declare-fun e!2390637 () Bool)

(assert (=> b!3866107 (= e!2390637 e!2390638)))

(declare-fun b!3866108 () Bool)

(assert (=> b!3866108 (= e!2390637 (inv!17 (value!201780 (h!46446 prefixTokens!80))))))

(declare-fun b!3866109 () Bool)

(declare-fun e!2390639 () Bool)

(assert (=> b!3866109 (= e!2390639 e!2390637)))

(declare-fun c!672915 () Bool)

(assert (=> b!3866109 (= c!672915 ((_ is IntegerValue!19759) (value!201780 (h!46446 prefixTokens!80))))))

(declare-fun d!1145459 () Bool)

(declare-fun c!672914 () Bool)

(assert (=> d!1145459 (= c!672914 ((_ is IntegerValue!19758) (value!201780 (h!46446 prefixTokens!80))))))

(assert (=> d!1145459 (= (inv!21 (value!201780 (h!46446 prefixTokens!80))) e!2390639)))

(declare-fun b!3866105 () Bool)

(assert (=> b!3866105 (= e!2390639 (inv!16 (value!201780 (h!46446 prefixTokens!80))))))

(assert (= (and d!1145459 c!672914) b!3866105))

(assert (= (and d!1145459 (not c!672914)) b!3866109))

(assert (= (and b!3866109 c!672915) b!3866108))

(assert (= (and b!3866109 (not c!672915)) b!3866107))

(assert (= (and b!3866107 (not res!1565720)) b!3866106))

(declare-fun m!4421799 () Bool)

(assert (=> b!3866106 m!4421799))

(declare-fun m!4421801 () Bool)

(assert (=> b!3866108 m!4421801))

(declare-fun m!4421803 () Bool)

(assert (=> b!3866105 m!4421803))

(assert (=> b!3865613 d!1145459))

(declare-fun d!1145461 () Bool)

(assert (=> d!1145461 (= (isEmpty!24322 lt!1343920) ((_ is Nil!41026) lt!1343920))))

(assert (=> b!3865612 d!1145461))

(declare-fun d!1145463 () Bool)

(assert (=> d!1145463 (= (tail!5881 prefixTokens!80) (t!313929 prefixTokens!80))))

(assert (=> b!3865612 d!1145463))

(declare-fun d!1145465 () Bool)

(assert (=> d!1145465 (= (inv!55183 (tag!7216 (rule!9234 (h!46446 suffixTokens!72)))) (= (mod (str.len (value!201779 (tag!7216 (rule!9234 (h!46446 suffixTokens!72))))) 2) 0))))

(assert (=> b!3865632 d!1145465))

(declare-fun d!1145467 () Bool)

(declare-fun res!1565721 () Bool)

(declare-fun e!2390640 () Bool)

(assert (=> d!1145467 (=> (not res!1565721) (not e!2390640))))

(assert (=> d!1145467 (= res!1565721 (semiInverseModEq!2727 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toValue!8784 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))))))

(assert (=> d!1145467 (= (inv!55187 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) e!2390640)))

(declare-fun b!3866110 () Bool)

(assert (=> b!3866110 (= e!2390640 (equivClasses!2626 (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toValue!8784 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))))))

(assert (= (and d!1145467 res!1565721) b!3866110))

(declare-fun m!4421805 () Bool)

(assert (=> d!1145467 m!4421805))

(declare-fun m!4421807 () Bool)

(assert (=> b!3866110 m!4421807))

(assert (=> b!3865632 d!1145467))

(declare-fun b!3866115 () Bool)

(declare-fun e!2390643 () Bool)

(declare-fun tp!1172063 () Bool)

(assert (=> b!3866115 (= e!2390643 (and tp_is_empty!19493 tp!1172063))))

(assert (=> b!3865631 (= tp!1171985 e!2390643)))

(assert (= (and b!3865631 ((_ is Cons!41025) (t!313928 prefix!426))) b!3866115))

(declare-fun b!3866116 () Bool)

(declare-fun e!2390644 () Bool)

(declare-fun tp!1172064 () Bool)

(assert (=> b!3866116 (= e!2390644 (and tp_is_empty!19493 tp!1172064))))

(assert (=> b!3865610 (= tp!1171984 e!2390644)))

(assert (= (and b!3865610 ((_ is Cons!41025) (t!313928 suffixResult!91))) b!3866116))

(declare-fun b!3866117 () Bool)

(declare-fun e!2390645 () Bool)

(declare-fun tp!1172065 () Bool)

(assert (=> b!3866117 (= e!2390645 (and tp_is_empty!19493 tp!1172065))))

(assert (=> b!3865598 (= tp!1171970 e!2390645)))

(assert (= (and b!3865598 ((_ is Cons!41025) (t!313928 suffix!1176))) b!3866117))

(declare-fun b!3866128 () Bool)

(declare-fun e!2390648 () Bool)

(assert (=> b!3866128 (= e!2390648 tp_is_empty!19493)))

(assert (=> b!3865609 (= tp!1171977 e!2390648)))

(declare-fun b!3866129 () Bool)

(declare-fun tp!1172076 () Bool)

(declare-fun tp!1172078 () Bool)

(assert (=> b!3866129 (= e!2390648 (and tp!1172076 tp!1172078))))

(declare-fun b!3866131 () Bool)

(declare-fun tp!1172077 () Bool)

(declare-fun tp!1172079 () Bool)

(assert (=> b!3866131 (= e!2390648 (and tp!1172077 tp!1172079))))

(declare-fun b!3866130 () Bool)

(declare-fun tp!1172080 () Bool)

(assert (=> b!3866130 (= e!2390648 tp!1172080)))

(assert (= (and b!3865609 ((_ is ElementMatch!11261) (regex!6356 (h!46447 rules!2768)))) b!3866128))

(assert (= (and b!3865609 ((_ is Concat!17848) (regex!6356 (h!46447 rules!2768)))) b!3866129))

(assert (= (and b!3865609 ((_ is Star!11261) (regex!6356 (h!46447 rules!2768)))) b!3866130))

(assert (= (and b!3865609 ((_ is Union!11261) (regex!6356 (h!46447 rules!2768)))) b!3866131))

(declare-fun b!3866145 () Bool)

(declare-fun b_free!104173 () Bool)

(declare-fun b_next!104877 () Bool)

(assert (=> b!3866145 (= b_free!104173 (not b_next!104877))))

(declare-fun t!314005 () Bool)

(declare-fun tb!224153 () Bool)

(assert (=> (and b!3866145 (= (toValue!8784 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314005) tb!224153))

(declare-fun result!273008 () Bool)

(assert (= result!273008 result!272982))

(assert (=> d!1145409 t!314005))

(declare-fun b_and!289635 () Bool)

(declare-fun tp!1172092 () Bool)

(assert (=> b!3866145 (= tp!1172092 (and (=> t!314005 result!273008) b_and!289635))))

(declare-fun b_free!104175 () Bool)

(declare-fun b_next!104879 () Bool)

(assert (=> b!3866145 (= b_free!104175 (not b_next!104879))))

(declare-fun tb!224155 () Bool)

(declare-fun t!314007 () Bool)

(assert (=> (and b!3866145 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!314007) tb!224155))

(declare-fun result!273010 () Bool)

(assert (= result!273010 result!272974))

(assert (=> b!3866012 t!314007))

(declare-fun tb!224157 () Bool)

(declare-fun t!314009 () Bool)

(assert (=> (and b!3866145 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314009) tb!224157))

(declare-fun result!273012 () Bool)

(assert (= result!273012 result!272990))

(assert (=> d!1145417 t!314009))

(declare-fun t!314011 () Bool)

(declare-fun tb!224159 () Bool)

(assert (=> (and b!3866145 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!314011) tb!224159))

(declare-fun result!273014 () Bool)

(assert (= result!273014 result!272996))

(assert (=> b!3866070 t!314011))

(declare-fun tp!1172093 () Bool)

(declare-fun b_and!289637 () Bool)

(assert (=> b!3866145 (= tp!1172093 (and (=> t!314007 result!273010) (=> t!314009 result!273012) (=> t!314011 result!273014) b_and!289637))))

(declare-fun b!3866144 () Bool)

(declare-fun e!2390666 () Bool)

(declare-fun e!2390665 () Bool)

(declare-fun tp!1172094 () Bool)

(assert (=> b!3866144 (= e!2390665 (and tp!1172094 (inv!55183 (tag!7216 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (inv!55187 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) e!2390666))))

(assert (=> b!3866145 (= e!2390666 (and tp!1172092 tp!1172093))))

(declare-fun tp!1172095 () Bool)

(declare-fun e!2390664 () Bool)

(declare-fun b!3866143 () Bool)

(assert (=> b!3866143 (= e!2390664 (and (inv!21 (value!201780 (h!46446 (t!313929 suffixTokens!72)))) e!2390665 tp!1172095))))

(declare-fun e!2390662 () Bool)

(assert (=> b!3865597 (= tp!1171983 e!2390662)))

(declare-fun tp!1172091 () Bool)

(declare-fun b!3866142 () Bool)

(assert (=> b!3866142 (= e!2390662 (and (inv!55186 (h!46446 (t!313929 suffixTokens!72))) e!2390664 tp!1172091))))

(assert (= b!3866144 b!3866145))

(assert (= b!3866143 b!3866144))

(assert (= b!3866142 b!3866143))

(assert (= (and b!3865597 ((_ is Cons!41026) (t!313929 suffixTokens!72))) b!3866142))

(declare-fun m!4421809 () Bool)

(assert (=> b!3866144 m!4421809))

(declare-fun m!4421811 () Bool)

(assert (=> b!3866144 m!4421811))

(declare-fun m!4421813 () Bool)

(assert (=> b!3866143 m!4421813))

(declare-fun m!4421815 () Bool)

(assert (=> b!3866142 m!4421815))

(declare-fun b!3866146 () Bool)

(declare-fun e!2390667 () Bool)

(assert (=> b!3866146 (= e!2390667 tp_is_empty!19493)))

(assert (=> b!3865617 (= tp!1171973 e!2390667)))

(declare-fun b!3866147 () Bool)

(declare-fun tp!1172096 () Bool)

(declare-fun tp!1172098 () Bool)

(assert (=> b!3866147 (= e!2390667 (and tp!1172096 tp!1172098))))

(declare-fun b!3866149 () Bool)

(declare-fun tp!1172097 () Bool)

(declare-fun tp!1172099 () Bool)

(assert (=> b!3866149 (= e!2390667 (and tp!1172097 tp!1172099))))

(declare-fun b!3866148 () Bool)

(declare-fun tp!1172100 () Bool)

(assert (=> b!3866148 (= e!2390667 tp!1172100)))

(assert (= (and b!3865617 ((_ is ElementMatch!11261) (regex!6356 (rule!9234 (h!46446 prefixTokens!80))))) b!3866146))

(assert (= (and b!3865617 ((_ is Concat!17848) (regex!6356 (rule!9234 (h!46446 prefixTokens!80))))) b!3866147))

(assert (= (and b!3865617 ((_ is Star!11261) (regex!6356 (rule!9234 (h!46446 prefixTokens!80))))) b!3866148))

(assert (= (and b!3865617 ((_ is Union!11261) (regex!6356 (rule!9234 (h!46446 prefixTokens!80))))) b!3866149))

(declare-fun b!3866160 () Bool)

(declare-fun b_free!104177 () Bool)

(declare-fun b_next!104881 () Bool)

(assert (=> b!3866160 (= b_free!104177 (not b_next!104881))))

(declare-fun tb!224161 () Bool)

(declare-fun t!314013 () Bool)

(assert (=> (and b!3866160 (= (toValue!8784 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314013) tb!224161))

(declare-fun result!273018 () Bool)

(assert (= result!273018 result!272982))

(assert (=> d!1145409 t!314013))

(declare-fun tp!1172110 () Bool)

(declare-fun b_and!289639 () Bool)

(assert (=> b!3866160 (= tp!1172110 (and (=> t!314013 result!273018) b_and!289639))))

(declare-fun b_free!104179 () Bool)

(declare-fun b_next!104883 () Bool)

(assert (=> b!3866160 (= b_free!104179 (not b_next!104883))))

(declare-fun tb!224163 () Bool)

(declare-fun t!314015 () Bool)

(assert (=> (and b!3866160 (= (toChars!8643 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!314015) tb!224163))

(declare-fun result!273020 () Bool)

(assert (= result!273020 result!272974))

(assert (=> b!3866012 t!314015))

(declare-fun t!314017 () Bool)

(declare-fun tb!224165 () Bool)

(assert (=> (and b!3866160 (= (toChars!8643 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314017) tb!224165))

(declare-fun result!273022 () Bool)

(assert (= result!273022 result!272990))

(assert (=> d!1145417 t!314017))

(declare-fun t!314019 () Bool)

(declare-fun tb!224167 () Bool)

(assert (=> (and b!3866160 (= (toChars!8643 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!314019) tb!224167))

(declare-fun result!273024 () Bool)

(assert (= result!273024 result!272996))

(assert (=> b!3866070 t!314019))

(declare-fun tp!1172111 () Bool)

(declare-fun b_and!289641 () Bool)

(assert (=> b!3866160 (= tp!1172111 (and (=> t!314015 result!273020) (=> t!314017 result!273022) (=> t!314019 result!273024) b_and!289641))))

(declare-fun e!2390679 () Bool)

(assert (=> b!3866160 (= e!2390679 (and tp!1172110 tp!1172111))))

(declare-fun tp!1172109 () Bool)

(declare-fun b!3866159 () Bool)

(declare-fun e!2390677 () Bool)

(assert (=> b!3866159 (= e!2390677 (and tp!1172109 (inv!55183 (tag!7216 (h!46447 (t!313930 rules!2768)))) (inv!55187 (transformation!6356 (h!46447 (t!313930 rules!2768)))) e!2390679))))

(declare-fun b!3866158 () Bool)

(declare-fun e!2390678 () Bool)

(declare-fun tp!1172112 () Bool)

(assert (=> b!3866158 (= e!2390678 (and e!2390677 tp!1172112))))

(assert (=> b!3865616 (= tp!1171981 e!2390678)))

(assert (= b!3866159 b!3866160))

(assert (= b!3866158 b!3866159))

(assert (= (and b!3865616 ((_ is Cons!41027) (t!313930 rules!2768))) b!3866158))

(declare-fun m!4421817 () Bool)

(assert (=> b!3866159 m!4421817))

(declare-fun m!4421819 () Bool)

(assert (=> b!3866159 m!4421819))

(declare-fun b!3866161 () Bool)

(declare-fun e!2390680 () Bool)

(declare-fun tp!1172113 () Bool)

(assert (=> b!3866161 (= e!2390680 (and tp_is_empty!19493 tp!1172113))))

(assert (=> b!3865624 (= tp!1171979 e!2390680)))

(assert (= (and b!3865624 ((_ is Cons!41025) (originalCharacters!6956 (h!46446 suffixTokens!72)))) b!3866161))

(declare-fun b!3866165 () Bool)

(declare-fun b_free!104181 () Bool)

(declare-fun b_next!104885 () Bool)

(assert (=> b!3866165 (= b_free!104181 (not b_next!104885))))

(declare-fun tb!224169 () Bool)

(declare-fun t!314021 () Bool)

(assert (=> (and b!3866165 (= (toValue!8784 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toValue!8784 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314021) tb!224169))

(declare-fun result!273026 () Bool)

(assert (= result!273026 result!272982))

(assert (=> d!1145409 t!314021))

(declare-fun b_and!289643 () Bool)

(declare-fun tp!1172115 () Bool)

(assert (=> b!3866165 (= tp!1172115 (and (=> t!314021 result!273026) b_and!289643))))

(declare-fun b_free!104183 () Bool)

(declare-fun b_next!104887 () Bool)

(assert (=> b!3866165 (= b_free!104183 (not b_next!104887))))

(declare-fun t!314023 () Bool)

(declare-fun tb!224171 () Bool)

(assert (=> (and b!3866165 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80))))) t!314023) tb!224171))

(declare-fun result!273028 () Bool)

(assert (= result!273028 result!272974))

(assert (=> b!3866012 t!314023))

(declare-fun tb!224173 () Bool)

(declare-fun t!314025 () Bool)

(assert (=> (and b!3866165 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toChars!8643 (transformation!6356 (rule!9234 (_1!23253 (v!39071 lt!1343918)))))) t!314025) tb!224173))

(declare-fun result!273030 () Bool)

(assert (= result!273030 result!272990))

(assert (=> d!1145417 t!314025))

(declare-fun t!314027 () Bool)

(declare-fun tb!224175 () Bool)

(assert (=> (and b!3866165 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72))))) t!314027) tb!224175))

(declare-fun result!273032 () Bool)

(assert (= result!273032 result!272996))

(assert (=> b!3866070 t!314027))

(declare-fun b_and!289645 () Bool)

(declare-fun tp!1172116 () Bool)

(assert (=> b!3866165 (= tp!1172116 (and (=> t!314023 result!273028) (=> t!314025 result!273030) (=> t!314027 result!273032) b_and!289645))))

(declare-fun tp!1172117 () Bool)

(declare-fun b!3866164 () Bool)

(declare-fun e!2390686 () Bool)

(declare-fun e!2390685 () Bool)

(assert (=> b!3866164 (= e!2390685 (and tp!1172117 (inv!55183 (tag!7216 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (inv!55187 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) e!2390686))))

(assert (=> b!3866165 (= e!2390686 (and tp!1172115 tp!1172116))))

(declare-fun tp!1172118 () Bool)

(declare-fun b!3866163 () Bool)

(declare-fun e!2390684 () Bool)

(assert (=> b!3866163 (= e!2390684 (and (inv!21 (value!201780 (h!46446 (t!313929 prefixTokens!80)))) e!2390685 tp!1172118))))

(declare-fun e!2390682 () Bool)

(assert (=> b!3865603 (= tp!1171974 e!2390682)))

(declare-fun b!3866162 () Bool)

(declare-fun tp!1172114 () Bool)

(assert (=> b!3866162 (= e!2390682 (and (inv!55186 (h!46446 (t!313929 prefixTokens!80))) e!2390684 tp!1172114))))

(assert (= b!3866164 b!3866165))

(assert (= b!3866163 b!3866164))

(assert (= b!3866162 b!3866163))

(assert (= (and b!3865603 ((_ is Cons!41026) (t!313929 prefixTokens!80))) b!3866162))

(declare-fun m!4421821 () Bool)

(assert (=> b!3866164 m!4421821))

(declare-fun m!4421823 () Bool)

(assert (=> b!3866164 m!4421823))

(declare-fun m!4421825 () Bool)

(assert (=> b!3866163 m!4421825))

(declare-fun m!4421827 () Bool)

(assert (=> b!3866162 m!4421827))

(declare-fun b!3866166 () Bool)

(declare-fun e!2390687 () Bool)

(declare-fun tp!1172119 () Bool)

(assert (=> b!3866166 (= e!2390687 (and tp_is_empty!19493 tp!1172119))))

(assert (=> b!3865613 (= tp!1171982 e!2390687)))

(assert (= (and b!3865613 ((_ is Cons!41025) (originalCharacters!6956 (h!46446 prefixTokens!80)))) b!3866166))

(declare-fun b!3866167 () Bool)

(declare-fun e!2390688 () Bool)

(assert (=> b!3866167 (= e!2390688 tp_is_empty!19493)))

(assert (=> b!3865632 (= tp!1171972 e!2390688)))

(declare-fun b!3866168 () Bool)

(declare-fun tp!1172120 () Bool)

(declare-fun tp!1172122 () Bool)

(assert (=> b!3866168 (= e!2390688 (and tp!1172120 tp!1172122))))

(declare-fun b!3866170 () Bool)

(declare-fun tp!1172121 () Bool)

(declare-fun tp!1172123 () Bool)

(assert (=> b!3866170 (= e!2390688 (and tp!1172121 tp!1172123))))

(declare-fun b!3866169 () Bool)

(declare-fun tp!1172124 () Bool)

(assert (=> b!3866169 (= e!2390688 tp!1172124)))

(assert (= (and b!3865632 ((_ is ElementMatch!11261) (regex!6356 (rule!9234 (h!46446 suffixTokens!72))))) b!3866167))

(assert (= (and b!3865632 ((_ is Concat!17848) (regex!6356 (rule!9234 (h!46446 suffixTokens!72))))) b!3866168))

(assert (= (and b!3865632 ((_ is Star!11261) (regex!6356 (rule!9234 (h!46446 suffixTokens!72))))) b!3866169))

(assert (= (and b!3865632 ((_ is Union!11261) (regex!6356 (rule!9234 (h!46446 suffixTokens!72))))) b!3866170))

(declare-fun b_lambda!112979 () Bool)

(assert (= b_lambda!112971 (or (and b!3866160 b_free!104179 (= (toChars!8643 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))))) (and b!3866145 b_free!104175 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))))) (and b!3865628 b_free!104151) (and b!3865604 b_free!104155 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))))) (and b!3865619 b_free!104159 (= (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))))) (and b!3866165 b_free!104183 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))))) b_lambda!112979)))

(declare-fun b_lambda!112981 () Bool)

(assert (= b_lambda!112977 (or (and b!3866165 b_free!104183 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 prefixTokens!80))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))))) (and b!3866160 b_free!104179 (= (toChars!8643 (transformation!6356 (h!46447 (t!313930 rules!2768)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))))) (and b!3865619 b_free!104159 (= (toChars!8643 (transformation!6356 (h!46447 rules!2768))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))))) (and b!3865604 b_free!104155) (and b!3866145 b_free!104175 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 (t!313929 suffixTokens!72))))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))))) (and b!3865628 b_free!104151 (= (toChars!8643 (transformation!6356 (rule!9234 (h!46446 prefixTokens!80)))) (toChars!8643 (transformation!6356 (rule!9234 (h!46446 suffixTokens!72)))))) b_lambda!112981)))

(check-sat (not b!3866065) (not d!1145385) (not b!3866034) (not b!3866046) (not d!1145429) (not b!3866013) (not b!3866102) (not b!3865764) (not d!1145379) (not tb!224141) (not d!1145395) (not b!3865755) (not b!3866148) (not b!3865986) (not b!3865856) (not bm!282637) (not b_next!104883) (not b!3866039) (not b!3866147) (not b!3866070) (not d!1145423) (not b!3865990) (not b!3866006) (not b!3866066) (not d!1145425) (not b!3866129) (not b!3866108) (not b!3866163) (not d!1145381) (not b!3865992) (not b!3866168) (not b_next!104887) (not b!3866116) (not d!1145399) (not b_next!104861) (not b!3866104) (not d!1145441) (not b!3866048) (not b!3866101) (not b_next!104881) (not b!3865991) (not b!3865860) (not b!3866032) (not b!3866073) (not b!3866159) (not b_lambda!112973) (not b!3866166) (not d!1145387) (not b!3866142) (not b!3866021) (not d!1145383) (not b!3866004) (not b!3866045) (not b!3866117) b_and!289643 (not d!1145451) (not b!3866072) (not b_next!104855) (not b!3865765) (not b!3866056) (not b!3865851) (not b!3865871) (not b_next!104853) (not b!3866071) (not b!3866105) b_and!289635 (not b_lambda!112981) b_and!289645 (not b!3866067) (not d!1145333) (not d!1145401) (not d!1145419) (not b!3866106) (not b!3866144) (not b!3866059) (not b!3866053) (not b!3866033) (not b!3865850) (not b!3866149) (not b!3866069) (not b!3865859) (not b!3866075) (not b!3866100) (not b!3866062) (not b!3865985) (not d!1145413) (not b!3866158) (not b_next!104863) (not b!3865763) b_and!289633 (not b!3865754) (not d!1145277) (not d!1145321) (not b!3866020) (not tb!224135) (not b!3866061) b_and!289637 (not d!1145415) (not d!1145371) (not d!1145397) (not b!3865680) b_and!289639 (not b!3866130) (not b!3866161) (not b_next!104879) (not d!1145467) (not b_next!104877) (not d!1145445) (not d!1145411) (not b!3866169) (not tb!224129) (not b!3865988) (not b!3865984) (not b_lambda!112975) (not b_next!104885) b_and!289619 (not d!1145403) (not d!1145417) (not b!3866164) b_and!289617 (not d!1145453) (not b!3866003) (not b!3865678) (not b!3866018) (not b!3866170) (not d!1145407) (not d!1145319) (not b!3866095) (not b!3865854) tp_is_empty!19493 (not b!3866162) (not d!1145431) (not b!3866044) (not b_next!104857) (not b!3866131) b_and!289631 (not b!3866096) (not b!3866143) (not b_next!104859) (not b!3866110) (not b!3865855) (not d!1145435) (not b!3866098) (not b!3866094) (not b!3865989) (not b!3866097) (not b!3866012) b_and!289629 b_and!289641 (not tb!224147) (not b!3865872) (not d!1145281) (not b!3865683) (not b!3865756) (not b_lambda!112979) (not b!3866115) (not d!1145437) b_and!289621)
(check-sat (not b_next!104883) (not b_next!104887) b_and!289643 (not b_next!104855) b_and!289645 b_and!289637 b_and!289639 (not b_next!104885) (not b_next!104859) b_and!289621 (not b_next!104861) (not b_next!104881) (not b_next!104853) b_and!289635 (not b_next!104863) b_and!289633 (not b_next!104879) (not b_next!104877) b_and!289619 b_and!289617 b_and!289631 (not b_next!104857) b_and!289629 b_and!289641)
